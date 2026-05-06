
DATA TAB_BS_ANSI ;
    infile 'TAB_BS_ANSI.csv' delimiter = ';' MISSOVER DSD lrecl=32767 firstobs=2 ;
    informat  STUDY_ID   $8. ;
    informat  COUNTRY_ID   $4. ;
    informat  EXTRACTION_DATE   $19. ;
    informat  SITE_ID   $4. ;
    informat  SUBJECT_ID   $4. ;
    informat  SUBJECT_REF   $9. ;
    informat  REF_SITEID   $4. ;
    informat  REF_NUMBER   $4. ;
    informat  MODULE_ML   $4. ;
    informat  FORM_BS   $4. ;
    informat  FORM_TAB_BS   $8. ;
    informat  TABBS1LS   $4. ;
    informat  TABBS2TXT   $45. ;
    informat  TABBS3TXT   $50. ;
    informat  TABBS5TXT   $244. ;
    informat  TABBS6DT_D   $4. ;
    informat  TABBS6DT_M   $4. ;
    informat  TABBS6DT_Y   $4. ;
    informat  TABBS6DT   DDMMYY10. ;
    informat  TABBS4LS   $4. ;

    format  STUDY_ID   $8. ;
    format  COUNTRY_ID   $4. ;
    format  EXTRACTION_DATE   $19. ;
    format  SITE_ID   $4. ;
    format  SUBJECT_ID   $4. ;
    format  SUBJECT_REF   $9. ;
    format  REF_SITEID   $4. ;
    format  REF_NUMBER   $4. ;
    format  MODULE_ML   $4. ;
    format  FORM_BS   $4. ;
    format  FORM_TAB_BS   $8. ;
    format  TABBS1LS   $4. ;
    format  TABBS2TXT   $45. ;
    format  TABBS3TXT   $50. ;
    format  TABBS5TXT   $244. ;
    format  TABBS6DT_D   $4. ;
    format  TABBS6DT_M   $4. ;
    format  TABBS6DT_Y   $4. ;
    format  TABBS6DT   DDMMYY10. ;
    format  TABBS4LS   $4. ;

    input
        STUDY_ID $
        COUNTRY_ID $
        EXTRACTION_DATE $
        SITE_ID $
        SUBJECT_ID $
        SUBJECT_REF $
        REF_SITEID $
        REF_NUMBER $
        MODULE_ML $
        FORM_BS $
        FORM_TAB_BS $
        TABBS1LS $
        TABBS2TXT $
        TABBS3TXT $
        TABBS5TXT $
        TABBS6DT_D $
        TABBS6DT_M $
        TABBS6DT_Y $
        TABBS6DT
        TABBS4LS $
    ;
run;

proc FORMAT ;
    value $CODE_17_LIST 
        '1' = 'LDLR NM_000527.5' 
        '2' = 'APOB NM_000384.3' 
        '3' = 'APOE NM_000041.4' 
        '4' = 'PCSK9 NM_174936.4' 
        '5' = 'ABCG5 NM_022436.3' 
        '6' = 'ABCG8 NM_022437.3' 
        '7' = 'LDLRAP1 NM_015627.3' 
        '8' = 'LIPA NM_000235.4' 
    ;
    value $CODE_18_LIST 
        '1' = 'Benign' 
        '2' = 'Likely Benign' 
        '3' = 'VUS' 
        '4' = 'Likely pathogenic' 
        '5' = 'Pathogenic' 
    ;
run;

DATA TAB_BS_ANSI ;
set TAB_BS_ANSI ;
    format
        TABBS1LS   $CODE_17_LIST.
        TABBS6DT   DDMMYY10.
        TABBS4LS   $CODE_18_LIST.
    ;
    Label
        STUDY_ID = "Identification étude"
        COUNTRY_ID = "Identifiant pays"
        EXTRACTION_DATE = "Date extraction"
        SITE_ID = "Centre"
        SUBJECT_ID = "Identifiant unique"
        SUBJECT_REF = "Référence"
        REF_SITEID = "Référence / SITEID"
        REF_NUMBER = "Référence / NUMBER"
        MODULE_ML = "Module ML"
        FORM_BS = "Form BS"
        FORM_TAB_BS = "Form TAB_BS"
        TABBS1LS = "Variants identified (Gene refseq)"
        TABBS2TXT = "cDNA"
        TABBS3TXT = "Protein"
        TABBS5TXT = "Guidelines used for the classification"
        TABBS6DT_D = "Date of variant classification/ Jour"
        TABBS6DT_M = "Date of variant classification/ Mois"
        TABBS6DT_Y = "Date of variant classification/ Année"
        TABBS6DT = "Date of variant classification"
        TABBS4LS = "ACMG classification"
    ;
run;