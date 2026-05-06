
DATA TAB_FH_ANSI ;
    infile 'TAB_FH_ANSI.csv' delimiter = ';' MISSOVER DSD lrecl=32767 firstobs=2 ;
    informat  STUDY_ID   $8. ;
    informat  COUNTRY_ID   $4. ;
    informat  EXTRACTION_DATE   $19. ;
    informat  SITE_ID   $4. ;
    informat  SUBJECT_ID   $4. ;
    informat  SUBJECT_REF   $9. ;
    informat  REF_SITEID   $4. ;
    informat  REF_NUMBER   $4. ;
    informat  MODULE_ML   $4. ;
    informat  FORM_FH   $4. ;
    informat  FORM_TAB_FH   $8. ;
    informat  TABFH1LS   $4. ;
    informat  TABFH1ATXT   $4. ;
    informat  TABFH2LS   $4. ;
    informat  TABFH3NUM   $4. ;
    informat  TABFH3NUM_V   best32. ;

    format  STUDY_ID   $8. ;
    format  COUNTRY_ID   $4. ;
    format  EXTRACTION_DATE   $19. ;
    format  SITE_ID   $4. ;
    format  SUBJECT_ID   $4. ;
    format  SUBJECT_REF   $9. ;
    format  REF_SITEID   $4. ;
    format  REF_NUMBER   $4. ;
    format  MODULE_ML   $4. ;
    format  FORM_FH   $4. ;
    format  FORM_TAB_FH   $8. ;
    format  TABFH1LS   $4. ;
    format  TABFH1ATXT   $4. ;
    format  TABFH2LS   $4. ;
    format  TABFH3NUM   $4. ;
    format  TABFH3NUM_V   best12. ;

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
        FORM_FH $
        FORM_TAB_FH $
        TABFH1LS $
        TABFH1ATXT $
        TABFH2LS $
        TABFH3NUM $
        TABFH3NUM_V
    ;
run;

proc FORMAT ;
    value $CODE_9_LIST 
        '1' = 'MI' 
        '2' = 'angina' 
        '3' = 'stroke' 
        '4' = 'sudden death' 
        '5' = 'valvular sclerosis' 
        '6' = 'ND' 
    ;
    value $CODE_8_LIST 
        '1' = 'Mother' 
        '10' = 'uncle' 
        '11' = 'aunt' 
        '12' = 'cousin' 
        '13' = 'niece' 
        '14' = 'nephew' 
        '15' = 'Other' 
        '2' = 'Father' 
        '3' = 'child' 
        '4' = 'sibling' 
        '5' = 'paternal grand-parent' 
        '6' = 'maternal grand-parent' 
        '7' = 'grand child' 
        '8' = 'paternal great grandparent' 
        '9' = 'maternal great grandparent' 
    ;
run;

DATA TAB_FH_ANSI ;
set TAB_FH_ANSI ;
    format
        TABFH1LS   $CODE_8_LIST.
        TABFH2LS   $CODE_9_LIST.
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
        FORM_FH = "Form FH"
        FORM_TAB_FH = "Form TAB_FH"
        TABFH1LS = "Relationship"
        TABFH1ATXT = "Specify"
        TABFH2LS = "Type of event"
        TABFH3NUM = "Age/ Valeur au format texte"
        TABFH3NUM_V = "Age/ Valeur entière ou réelle"
    ;
run;