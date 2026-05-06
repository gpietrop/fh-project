import re
from pathlib import Path

import pandas as pd

# function to read the csv files with the correct encoding and separator
def read_export_csv(path):
    return pd.read_csv(
        path,
        encoding="latin1",
        sep=";"
    )

# find export columns for one dictionary variable name, e.g. "RFICDAT" -> ["RFICDAT_D", "RFICDAT_M", "RFICDAT_Y", "RFICDAT"]
def find_export_columns(var_name, columns):
    var_name = str(var_name)
    return [
        col for col in columns
        if col == var_name or col.startswith(var_name + "_")
    ]


def create_dictionary_export_map(dictionary_df, export_tables):
    result = dictionary_df.copy()

    for table_name, table_df in export_tables.items():
        col_name = f"{table_name}_export_cols"
        result[col_name] = result["Référence"].apply(
            lambda v: find_export_columns(v, table_df.columns)
        )

    export_col_fields = [f"{name}_export_cols" for name in export_tables]

    result["n_export_matches"] = result[export_col_fields].apply(
        lambda row: sum(len(x) for x in row),
        axis=1
    )

    result["has_export_match"] = result["n_export_matches"] > 0

    return result


def summarize_dictionary_export_map(mapped_df):
    export_col_fields = [
        c for c in mapped_df.columns
        if c.endswith("_export_cols")
    ]

    summary = mapped_df.groupby("Type")["has_export_match"].agg(
        total="count",
        matched="sum"
    )

    summary["unmatched"] = summary["total"] - summary["matched"]

    mismatched = mapped_df[
        (mapped_df["has_export_match"] == False)
    ][
        ["Id", "Référence", "Type", "Intitulé"]
    ].copy()

    return summary, mismatched

def classify_variable_type(var_type):
    if pd.isna(var_type):
        return "unknown"

    var_type = str(var_type).strip().lower()

    if var_type == "date":
        return "date"
    elif var_type in ["entier", "réel"]:
        return "numeric"
    elif var_type == "cases à cocher":
        return "checkbox"
    elif var_type in ["radio buttons", "combo box"]:
        return "categorical"
    elif var_type == "texte":
        return "text"
    elif var_type == "label":
        return "label"
    elif var_type == "tableau":
        return "table"
    else:
        return "unknown"
    
def parse_code_labels(format_text):
    if pd.isna(format_text):
        return {}

    pairs = re.findall(r"(\d+)\s*=\s*([^\n]+)", str(format_text))

    return {
        int(code): label.strip()
        for code, label in pairs
    }

def parse_sas_labels(sas_path):
    text = Path(sas_path).read_text(encoding="latin1")

    matches = re.findall(
        r'\s*([A-Za-z0-9_]+)\s*=\s*"([^"]*)"',
        text
    )

    return dict(matches)


def parse_all_sas_labels(export_folder):
    export_folder = Path(export_folder)

    all_labels = {}

    for sas_path in export_folder.glob("*.sas"):
        table_name = sas_path.stem.replace("_ANSI", "")
        all_labels[table_name] = parse_sas_labels(sas_path)

    return all_labels

def parse_sas_informats(sas_path):
    text = Path(sas_path).read_text(encoding="latin1")

    matches = re.findall(
        r"informat\s+([A-Za-z0-9_]+)\s+([^;]+);",
        text,
        flags=re.IGNORECASE
    )

    return {
        col: informat.strip()
        for col, informat in matches
    }

def create_export_column_catalog(export_tables, sas_labels):
    rows = []

    for table_name, table_df in export_tables.items():
        labels = sas_labels.get(table_name, {})

        for col in table_df.columns:
            rows.append({
                "table": table_name,
                "column": col,
                "sas_label": labels.get(col)
            })

    return pd.DataFrame(rows)


def create_export_column_catalog(export_tables, sas_labels, sas_informats):
    rows = []

    for table_name, table_df in export_tables.items():
        labels = sas_labels.get(table_name, {})
        informats = sas_informats.get(table_name, {})

        for col in table_df.columns:
            rows.append({
                "table": table_name,
                "column": col,
                "sas_label": labels.get(col),
                "sas_informat": informats.get(col)
            })

    return pd.DataFrame(rows)


def parse_all_sas_informats(export_folder):
    export_folder = Path(export_folder)
    all_informats = {}

    for sas_path in export_folder.glob("*.sas"):
        table_name = sas_path.stem.replace("_ANSI", "")
        all_informats[table_name] = parse_sas_informats(sas_path)

    return all_informats

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

    result = result.merge(
        dictionary_df[
            ["Référence", "Id", "Saisie", "Type",
             "Format", "Intitulé"]
        ],
        on="Référence",
        how="left"
    )

    return result