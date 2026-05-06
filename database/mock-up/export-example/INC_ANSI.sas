
DATA INC_ANSI ;
    infile 'INC_ANSI.csv' delimiter = ';' MISSOVER DSD lrecl=32767 firstobs=2 ;
    informat  STUDY_ID   $8. ;
    informat  COUNTRY_ID   $4. ;
    informat  EXTRACTION_DATE   $19. ;
    informat  SITE_ID   $4. ;
    informat  SUBJECT_ID   $4. ;
    informat  SUBJECT_REF   $9. ;
    informat  REF_SITEID   $4. ;
    informat  REF_NUMBER   $4. ;
    informat  MODULE_INC   $4. ;
    informat  SEX   $4. ;
    informat  BRTHDAT_D   $4. ;
    informat  BRTHDAT_M   $4. ;
    informat  BRTHDAT_Y   $4. ;
    informat  BRTHDAT   DDMMYY10. ;
    informat  AGE   $4. ;
    informat  AGE_V   best32. ;
    informat  INVNAME   $63. ;
    informat  SITEID   $4. ;
    informat  SUBJECT_REF_CL1   $9. ;
    informat  RFICDAT_D   $4. ;
    informat  RFICDAT_M   $4. ;
    informat  RFICDAT_Y   $4. ;
    informat  RFICDAT   DDMMYY10. ;
    informat  INF1YN   $4. ;
    informat  INF1AYN   $4. ;
    informat  INF1BYN   $4. ;
    informat  INF1B1LS   $4. ;
    informat  INF1B2DT_D   $4. ;
    informat  INF1B2DT_M   $4. ;
    informat  INF1B2DT_Y   $4. ;
    informat  INF1B2DT   DDMMYY10. ;
    informat  INF1B5DT_D   $4. ;
    informat  INF1B5DT_M   $4. ;
    informat  INF1B5DT_Y   $4. ;
    informat  INF1B5DT   DDMMYY10. ;
    informat  INF1B3DT_D   $4. ;
    informat  INF1B3DT_M   $4. ;
    informat  INF1B3DT_Y   $4. ;
    informat  INF1B3DT   DDMMYY10. ;
    informat  INF1B4DT_D   $4. ;
    informat  INF1B4DT_M   $4. ;
    informat  INF1B4DT_Y   $4. ;
    informat  INF1B4DT   DDMMYY10. ;
    informat  INF1B5NUM   $4. ;
    informat  INF1B5NUM_V   best32. ;
    informat  CBCZ1AYN   $4. ;
    informat  CBCZ1YN   $4. ;
    informat  CB1YN   $4. ;
    informat  CB2DT_D   $4. ;
    informat  CB2DT_M   $4. ;
    informat  CB2DT_Y   $4. ;
    informat  CB2DT   DDMMYY10. ;
    informat  CB3DT_D   $4. ;
    informat  CB3DT_M   $4. ;
    informat  CB3DT_Y   $4. ;
    informat  CB3DT   DDMMYY10. ;
    informat  CB4YN   $4. ;
    informat  CB5YN   $4. ;
    informat  CSTPT1DT_D   $4. ;
    informat  CSTPT1DT_M   $4. ;
    informat  CSTPT1DT_Y   $4. ;
    informat  CSTPT1DT   DDMMYY10. ;
    informat  CSTTR1YN   $4. ;
    informat  CSTTR1AYN   $4. ;
    informat  CICZ1YN   $4. ;
    informat  CIFR1YN   $4. ;
    informat  CIFR2YN   $4. ;
    informat  CIFR3YN   $4. ;
    informat  CNIFR1YN   $4. ;
    informat  CIPT1YN   $4. ;
    informat  CIPT2YN   $4. ;
    informat  CITR1YN   $4. ;
    informat  CITR2YN   $4. ;

    format  STUDY_ID   $8. ;
    format  COUNTRY_ID   $4. ;
    format  EXTRACTION_DATE   $19. ;
    format  SITE_ID   $4. ;
    format  SUBJECT_ID   $4. ;
    format  SUBJECT_REF   $9. ;
    format  REF_SITEID   $4. ;
    format  REF_NUMBER   $4. ;
    format  MODULE_INC   $4. ;
    format  SEX   $4. ;
    format  BRTHDAT_D   $4. ;
    format  BRTHDAT_M   $4. ;
    format  BRTHDAT_Y   $4. ;
    format  BRTHDAT   DDMMYY10. ;
    format  AGE   $4. ;
    format  AGE_V   best12. ;
    format  INVNAME   $63. ;
    format  SITEID   $4. ;
    format  SUBJECT_REF_CL1   $9. ;
    format  RFICDAT_D   $4. ;
    format  RFICDAT_M   $4. ;
    format  RFICDAT_Y   $4. ;
    format  RFICDAT   DDMMYY10. ;
    format  INF1YN   $4. ;
    format  INF1AYN   $4. ;
    format  INF1BYN   $4. ;
    format  INF1B1LS   $4. ;
    format  INF1B2DT_D   $4. ;
    format  INF1B2DT_M   $4. ;
    format  INF1B2DT_Y   $4. ;
    format  INF1B2DT   DDMMYY10. ;
    format  INF1B5DT_D   $4. ;
    format  INF1B5DT_M   $4. ;
    format  INF1B5DT_Y   $4. ;
    format  INF1B5DT   DDMMYY10. ;
    format  INF1B3DT_D   $4. ;
    format  INF1B3DT_M   $4. ;
    format  INF1B3DT_Y   $4. ;
    format  INF1B3DT   DDMMYY10. ;
    format  INF1B4DT_D   $4. ;
    format  INF1B4DT_M   $4. ;
    format  INF1B4DT_Y   $4. ;
    format  INF1B4DT   DDMMYY10. ;
    format  INF1B5NUM   $4. ;
    format  INF1B5NUM_V   best12. ;
    format  CBCZ1AYN   $4. ;
    format  CBCZ1YN   $4. ;
    format  CB1YN   $4. ;
    format  CB2DT_D   $4. ;
    format  CB2DT_M   $4. ;
    format  CB2DT_Y   $4. ;
    format  CB2DT   DDMMYY10. ;
    format  CB3DT_D   $4. ;
    format  CB3DT_M   $4. ;
    format  CB3DT_Y   $4. ;
    format  CB3DT   DDMMYY10. ;
    format  CB4YN   $4. ;
    format  CB5YN   $4. ;
    format  CSTPT1DT_D   $4. ;
    format  CSTPT1DT_M   $4. ;
    format  CSTPT1DT_Y   $4. ;
    format  CSTPT1DT   DDMMYY10. ;
    format  CSTTR1YN   $4. ;
    format  CSTTR1AYN   $4. ;
    format  CICZ1YN   $4. ;
    format  CIFR1YN   $4. ;
    format  CIFR2YN   $4. ;
    format  CIFR3YN   $4. ;
    format  CNIFR1YN   $4. ;
    format  CIPT1YN   $4. ;
    format  CIPT2YN   $4. ;
    format  CITR1YN   $4. ;
    format  CITR2YN   $4. ;

    input
        STUDY_ID $
        COUNTRY_ID $
        EXTRACTION_DATE $
        SITE_ID $
        SUBJECT_ID $
        SUBJECT_REF $
        REF_SITEID $
        REF_NUMBER $
        MODULE_INC $
        SEX $
        BRTHDAT_D $
        BRTHDAT_M $
        BRTHDAT_Y $
        BRTHDAT
        AGE $
        AGE_V
        INVNAME $
        SITEID $
        SUBJECT_REF_CL1 $
        RFICDAT_D $
        RFICDAT_M $
        RFICDAT_Y $
        RFICDAT
        INF1YN $
        INF1AYN $
        INF1BYN $
        INF1B1LS $
        INF1B2DT_D $
        INF1B2DT_M $
        INF1B2DT_Y $
        INF1B2DT
        INF1B5DT_D $
        INF1B5DT_M $
        INF1B5DT_Y $
        INF1B5DT
        INF1B3DT_D $
        INF1B3DT_M $
        INF1B3DT_Y $
        INF1B3DT
        INF1B4DT_D $
        INF1B4DT_M $
        INF1B4DT_Y $
        INF1B4DT
        INF1B5NUM $
        INF1B5NUM_V
        CBCZ1AYN $
        CBCZ1YN $
        CB1YN $
        CB2DT_D $
        CB2DT_M $
        CB2DT_Y $
        CB2DT
        CB3DT_D $
        CB3DT_M $
        CB3DT_Y $
        CB3DT
        CB4YN $
        CB5YN $
        CSTPT1DT_D $
        CSTPT1DT_M $
        CSTPT1DT_Y $
        CSTPT1DT
        CSTTR1YN $
        CSTTR1AYN $
        CICZ1YN $
        CIFR1YN $
        CIFR2YN $
        CIFR3YN $
        CNIFR1YN $
        CIPT1YN $
        CIPT2YN $
        CITR1YN $
        CITR2YN $
    ;
run;

proc FORMAT ;
    value $CODE_2_LIST 
        '0' = 'No' 
        '1' = 'Yes' 
    ;
    value $CL.0001 
        '1' = 'Male' 
        '2' = 'Female' 
    ;
    value $CODE_3_LIST 
        '1' = 'Information provided during a consultation' 
        '2' = 'Sent by mail with the NINO' 
    ;
run;

DATA INC_ANSI ;
set INC_ANSI ;
    format
        SEX   $CL.0001.
        BRTHDAT   DDMMYY10.
        RFICDAT   DDMMYY10.
        INF1YN   $CODE_2_LIST.
        INF1AYN   $CODE_2_LIST.
        INF1BYN   $CODE_2_LIST.
        INF1B1LS   $CODE_3_LIST.
        INF1B2DT   DDMMYY10.
        INF1B5DT   DDMMYY10.
        INF1B3DT   DDMMYY10.
        INF1B4DT   DDMMYY10.
        CBCZ1AYN   $CODE_2_LIST.
        CBCZ1YN   $CODE_2_LIST.
        CB1YN   $CODE_2_LIST.
        CB2DT   DDMMYY10.
        CB3DT   DDMMYY10.
        CB4YN   $CODE_2_LIST.
        CB5YN   $CODE_2_LIST.
        CSTPT1DT   DDMMYY10.
        CSTTR1YN   $CODE_2_LIST.
        CSTTR1AYN   $CODE_2_LIST.
        CICZ1YN   $CODE_2_LIST.
        CIFR1YN   $CODE_2_LIST.
        CIFR2YN   $CODE_2_LIST.
        CIFR3YN   $CODE_2_LIST.
        CNIFR1YN   $CODE_2_LIST.
        CIPT1YN   $CODE_2_LIST.
        CIPT2YN   $CODE_2_LIST.
        CITR1YN   $CODE_2_LIST.
        CITR2YN   $CODE_2_LIST.
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
        MODULE_INC = "Module INC"
        SEX = "Gender"
        BRTHDAT_D = "Date of birth/ Jour"
        BRTHDAT_M = "Date of birth/ Mois"
        BRTHDAT_Y = "Date of birth/ Année"
        BRTHDAT = "Date of birth"
        AGE = "Age/ Valeur au format texte"
        AGE_V = "Age/ Valeur entière ou réelle"
        INVNAME = "Investigator"
        SITEID = "Centre"
        SUBJECT_REF_CL1 = "Patient ID"
        RFICDAT_D = "Date of inclusion/ Jour"
        RFICDAT_M = "Date of inclusion/ Mois"
        RFICDAT_Y = "Date of inclusion/ Année"
        RFICDAT = "Date of inclusion"
        INF1YN = "Patient deceased at the time of inclusion"
        INF1AYN = "If so, did you verify that there was no objection to
the processing of personal data during his lifetime (ORBIS or other)?"
        INF1BYN = "If not, has the patient been seen in the department after January 1, 2021?"
        INF1B1LS = "Information procedures"
        INF1B2DT_D = "Date of information/ Jour"
        INF1B2DT_M = "Date of information/ Mois"
        INF1B2DT_Y = "Date of information/ Année"
        INF1B2DT = "Date of information"
        INF1B5DT_D = "Date of inclusion (i.e., date of collection of the non-objection)/ Jour"
        INF1B5DT_M = "Date of inclusion (i.e., date of collection of the non-objection)/ Mois"
        INF1B5DT_Y = "Date of inclusion (i.e., date of collection of the non-objection)/ Année"
        INF1B5DT = "Date of inclusion (i.e., date of collection of the non-objection)"
        INF1B3DT_D = "Date of sending of the NINO (note d information et non-opposition)/ Jour"
        INF1B3DT_M = "Date of sending of the NINO (note d information et non-opposition)/ Mois"
        INF1B3DT_Y = "Date of sending of the NINO (note d information et non-opposition)/ Année"
        INF1B3DT = "Date of sending of the NINO (note d information et non-opposition)"
        INF1B4DT_D = "Date of inclusion (i.e., one month after the date
 the NINO was sent and in the absence of opposition from the patient)/ Jour"
        INF1B4DT_M = "Date of inclusion (i.e., one month after the date
 the NINO was sent and in the absence of opposition from the patient)/ Mois"
        INF1B4DT_Y = "Date of inclusion (i.e., one month after the date
 the NINO was sent and in the absence of opposition from the patient)/ Année"
        INF1B4DT = "Date of inclusion (i.e., one month after the date
 the NINO was sent and in the absence of opposition from the patient)"
        INF1B5NUM = "Version of NINO sent/delivered/ Valeur au format texte"
        INF1B5NUM_V = "Version of NINO sent/delivered/ Valeur entière ou réelle"
        CBCZ1AYN = "Agreement for the re-use of the biocollection for constitutional
genetic analysis - retrospective patients"
        CBCZ1YN = "Agreement for both entry into the FH patient registry
and the anonymous use of data for research
purposes - retrospective patients"
        CB1YN = "« Consentement pour l examen
des caractéristiques génétiques à des fins médicales »
form collected during routine care signed ?"
        CB2DT_D = "Date of signature of consent/ Jour"
        CB2DT_M = "Date of signature of consent/ Mois"
        CB2DT_Y = "Date of signature of consent/ Année"
        CB2DT = "Date of signature of consent"
        CB3DT_D = "Date of consent signature - prospective patients/ Jour"
        CB3DT_M = "Date of consent signature - prospective patients/ Mois"
        CB3DT_Y = "Date of consent signature - prospective patients/ Année"
        CB3DT = "Date of consent signature - prospective patients"
        CB4YN = "Agreement for the re-use of the biocollection for
 constitutional genetic analysis - retrospective patients"
        CB5YN = "Agreement for both entry into the FH patient registry
 and the anonymous use of data for research
 purposes - retrospective patients"
        CSTPT1DT_D = "Date of consent signature/ Jour"
        CSTPT1DT_M = "Date of consent signature/ Mois"
        CSTPT1DT_Y = "Date of consent signature/ Année"
        CSTPT1DT = "Date of consent signature"
        CSTTR1YN = "Agreement for both entry into the FH patient registry
and the anonymous use of data for research
 purposes - retrospective patients"
        CSTTR1AYN = "Agreement for the re-use of the biocollection for
constitutional genetic analysis - retrospective patients"
        CICZ1YN = "Patient suspected or confirmed for FH"
        CIFR1YN = "1. Patients treated at the centre from 01/01/2015"
        CIFR2YN = "2. Patient suspected or confirmed for FH"
        CIFR3YN = "3.Consent obtained from the adult patient or 
legal guardian for adults under guardianship
or from one of the legal representatives of minor
patients, for the storage and reuse of the biobank,
including for constitutional genetic analyses
for the..."
        CNIFR1YN = "1. Objection to data collection expressed by adult patients
or the legal guardian for adults under guardianship
or the legal representatives of minor patients
(or for deceased patients: objection expressed to
the use of their data during their li..."
        CIPT1YN = "Patients included in the Portuguese FH Study"
        CIPT2YN = "Patient suspected or confirmed for FH."
        CITR1YN = "Patient suspected or confirmed for FH 
(Simon Broome Criteria used)"
        CITR2YN = "Ability to provide informed consent"
    ;
run;