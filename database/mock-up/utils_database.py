import re
from pathlib import Path

import pandas as pd

# small helper to read export csv files with the expected encoding and separator
def read_export_csv(path):
    return pd.read_csv(path, encoding="latin1", sep=";")


# find all export columns linked to one dictionary variable
def find_export_columns(var_name, columns):
    var_name = str(var_name)
    return [col for col in columns if col == var_name or col.startswith(var_name + "_")]


# build a map between the dictionary and matching export columns
def create_dictionary_export_map(dictionary_df, export_tables):
    result = dictionary_df.copy()

    for table_name, table_df in export_tables.items():
        col_name = f"{table_name}_export_cols"
        result[col_name] = result["Référence"].apply(lambda v: find_export_columns(v, table_df.columns))

    export_col_fields = [f"{name}_export_cols" for name in export_tables]

    result["all_export_matches"] = result[export_col_fields].apply(lambda row: [col for matches in row for col in matches], axis=1)

    result["n_export_matches"] = result["all_export_matches"].apply(len)
    result["has_export_match"] = result["n_export_matches"] > 0

    return result


# summarize matched and missing dictionary fields in the exports
def summarize_dictionary_export_map(mapped_df):
    export_col_fields = [c for c in mapped_df.columns if c.endswith("_export_cols")]

    summary = mapped_df.groupby("Type")["has_export_match"].agg(total="count", matched="sum")

    summary["unmatched"] = summary["total"] - summary["matched"]

    mismatched = mapped_df[~mapped_df["has_export_match"]][["Id", "Référence", "Type", "Intitulé"]].copy()

    return summary, mismatched


# translate the original dictionary type into a more useful analysis category
def classify_variable_type(var_type):
    if pd.isna(var_type):
        return "unknown"

    var_type = str(var_type).strip().lower()

    if var_type == "date":
        return "date"
    if var_type in ["entier", "réel"]:
        return "numeric"
    if var_type == "cases à cocher":
        return "checkbox"
    if var_type in ["radio buttons", "combo box"]:
        return "categorical"
    if var_type == "texte":
        return "text"
    if var_type == "label":
        return "label"
    if var_type == "tableau":
        return "table"
    return "unknown"


# extract code label pairs from a raw format text field
def parse_code_labels(format_text):
    if pd.isna(format_text):
        return {}

    pairs = re.findall(r"(\d+)\s*=\s*([^\n]+)", str(format_text))

    return {int(code): label.strip() for code, label in pairs}


# read one sas file and extract variable labels
def parse_sas_labels(sas_path):
    text = Path(sas_path).read_text(encoding="latin1")

    matches = re.findall(r'\s*([A-Za-z0-9_]+)\s*=\s*"([^"]*)"', text)

    return dict(matches)


# collect sas labels for every table found in the export folder
def parse_all_sas_labels(export_folder):
    export_folder = Path(export_folder)
    all_labels = {}

    for sas_path in export_folder.glob("*.sas"):
        table_name = sas_path.stem.replace("_ANSI", "")
        all_labels[table_name] = parse_sas_labels(sas_path)

    return all_labels


# extract sas informats to keep track of expected input formats
def parse_sas_informats(sas_path):
    text = Path(sas_path).read_text(encoding="latin1")

    matches = re.findall(r"informat\s+([A-Za-z0-9_]+)\s+([^;]+);", text, flags=re.IGNORECASE)

    return {col: informat.strip() for col, informat in matches}

# create one export column catalog with sas labels and informats
def create_export_column_catalog(export_tables, sas_labels, sas_informats):
    rows = []

    for table_name, table_df in export_tables.items():
        labels = sas_labels.get(table_name, {})
        informats = sas_informats.get(table_name, {})

        for col in table_df.columns:
            rows.append({"table": table_name, "column": col, "sas_label": labels.get(col), "sas_informat": informats.get(col)})

    return pd.DataFrame(rows)


# collect sas informats for all sas files in the export folder
def parse_all_sas_informats(export_folder):
    export_folder = Path(export_folder)
    all_informats = {}

    for sas_path in export_folder.glob("*.sas"):
        table_name = sas_path.stem.replace("_ANSI", "")
        all_informats[table_name] = parse_sas_informats(sas_path)

    return all_informats


# attach dictionary metadata to the export column catalog
def create_master_column_catalog(column_catalog, dictionary_df):
    result = column_catalog.copy()

    def infer_reference(column):
        column = str(column)

        for suffix in ["_D", "_M", "_Y", "_V"]:
            if column.endswith(suffix):
                return column[:-len(suffix)]

        match = re.match(r"(.+)_C\d+$", column)
        if match:
            return match.group(1)

        return column

    result["Référence"] = result["column"].apply(infer_reference)

    result = result.merge(dictionary_df[["Référence", "Id", "Saisie", "Type", "Format", "Intitulé"]], on="Référence", how="left")

    return result


# keep only the useful columns for a ready to use table dataset
def create_table_dataset(table_df, table_name, master_catalog):
    catalog = master_catalog[master_catalog["table"] == table_name].copy()
    usable_types = ["numeric", "categorical", "checkbox", "date", "text"]

    keep_cols = catalog[catalog["Type_english"].isin(usable_types)]["column"].tolist()

    id_cols = [c for c in ["STUDY_ID", "COUNTRY_ID", "SITE_ID", "SUBJECT_ID", "SUBJECT_REF"] if c in table_df.columns]

    final_cols = id_cols + [c for c in keep_cols if c not in id_cols]

    return table_df[final_cols].copy()


# select numeric columns and prefer the _v version when available
def get_numeric_cols(master_catalog, table_name):
    catalog = master_catalog[master_catalog["table"] == table_name].copy()
    numeric_catalog = catalog[catalog["Type_english"] == "numeric"]
    preferred_cols = []

    for ref in numeric_catalog["Référence"].unique():
        ref_rows = numeric_catalog[numeric_catalog["Référence"] == ref]

        v_cols = [c for c in ref_rows["column"] if c.endswith("_V")]

        if len(v_cols) > 0:
            preferred_cols.extend(v_cols)
        else:
            base_cols = [c for c in ref_rows["column"] if not c.endswith("_V")]
            preferred_cols.extend(base_cols)

    return preferred_cols


# return categorical columns for the selected table
def get_categorical_cols(master_catalog, table_name):
    catalog = master_catalog[master_catalog["table"] == table_name].copy()
    return catalog[catalog["Type_english"] == "categorical"]["column"].tolist()


# return checkbox columns exactly as listed in the catalog
def get_checkbox_cols(master_catalog, table_name):
    catalog = master_catalog[master_catalog["table"] == table_name].copy()
    return catalog[catalog["Type_english"] == "checkbox"]["column"].tolist()


# keep only complete date columns and skip split day month year parts
def get_date_cols(master_catalog, table_name):
    catalog = master_catalog[master_catalog["table"] == table_name].copy()
    date_cols = catalog[catalog["Type_english"] == "date"]["column"].tolist()
    return [c for c in date_cols if not c.endswith(("_D", "_M", "_Y"))]


# return text columns without any extra transformation
def get_text_cols(master_catalog, table_name):
    catalog = master_catalog[master_catalog["table"] == table_name].copy()
    return catalog[catalog["Type_english"] == "text"]["column"].tolist()


# group features by type to make ml dataset building easier
def summarize_table_features(master_catalog, table_name):
    return {
        "numeric": get_numeric_cols(master_catalog, table_name),
        "categorical": get_categorical_cols(master_catalog, table_name),
        "checkbox": get_checkbox_cols(master_catalog, table_name),
        "date": get_date_cols(master_catalog, table_name),
        "text": get_text_cols(master_catalog, table_name),
    }


# prepare a cleaner table view for downstream models and analysis
def create_ml_table_dataset(table_df, master_catalog, table_name):
    features = summarize_table_features(master_catalog, table_name)

    id_cols = [c for c in ["STUDY_ID", "COUNTRY_ID", "SITE_ID", "SUBJECT_ID", "SUBJECT_REF"] if c in table_df.columns]

    feature_cols = features["numeric"] + features["categorical"] + features["checkbox"] + features["date"] + features["text"]
    final_cols = id_cols + [c for c in feature_cols if c in table_df.columns and c not in id_cols]

    return table_df[final_cols].copy()