
DATA ML_ANSI ;
    infile 'ML_ANSI.csv' delimiter = ';' MISSOVER DSD lrecl=32767 firstobs=2 ;
    informat  STUDY_ID   $8. ;
    informat  COUNTRY_ID   $4. ;
    informat  EXTRACTION_DATE   $19. ;
    informat  SITE_ID   $4. ;
    informat  SUBJECT_ID   $4. ;
    informat  SUBJECT_REF   $9. ;
    informat  REF_SITEID   $4. ;
    informat  REF_NUMBER   $4. ;
    informat  MODULE_ML   $4. ;
    informat  CD1TXT   $12. ;
    informat  CD2LS   $4. ;
    informat  CD3NUM   $4. ;
    informat  CD3NUM_V   best32. ;
    informat  CD4NUM   $7. ;
    informat  CD4NUM_V   best32. ;
    informat  CD5NUM   $4. ;
    informat  CD5NUM_V   best32. ;
    informat  CD6NUM   $4. ;
    informat  CD6NUM_V   best32. ;
    informat  CD7NUM   $4. ;
    informat  CD7NUM_V   best32. ;
    informat  CD8YN   $4. ;
    informat  CD8AYN   $4. ;
    informat  MH1YN   $4. ;
    informat  MH1ANUM   $4. ;
    informat  MH1ANUM_V   best32. ;
    informat  MH2YN   $4. ;
    informat  MH2ANUM   $4. ;
    informat  MH2ANUM_V   best32. ;
    informat  MH23NUM   $4. ;
    informat  MH23NUM_V   best32. ;
    informat  MH2BLS   $4. ;
    informat  MH3YN   $4. ;
    informat  MH3ANUM   $4. ;
    informat  MH3ANUM_V   best32. ;
    informat  MH4YN   $4. ;
    informat  MH4ANUM   $4. ;
    informat  MH4ANUM_V   best32. ;
    informat  MH5YN   $4. ;
    informat  MH5AYN   $4. ;
    informat  MH5A1NUM   $4. ;
    informat  MH5A1NUM_V   best32. ;
    informat  MH5BYN   $4. ;
    informat  MH5B1NUM   $4. ;
    informat  MH5B1NUM_V   best32. ;
    informat  MH5CYN   $4. ;
    informat  MH5C1NUM   $4. ;
    informat  MH5C1NUM_V   best32. ;
    informat  MH5DYN   $4. ;
    informat  MH5D1NUM   $4. ;
    informat  MH5D1NUM_V   best32. ;
    informat  MH5EYN   $4. ;
    informat  MH5E1NUM   $4. ;
    informat  MH5E1NUM_V   best32. ;
    informat  MH5FYN   $4. ;
    informat  MH5F1NUM   $4. ;
    informat  MH5F1NUM_V   best32. ;
    informat  MH5GYN   $4. ;
    informat  MH5HYN   $4. ;
    informat  MH16H1NUM   $4. ;
    informat  MH16H1NUM_V   best32. ;
    informat  MH16IYN   $4. ;
    informat  MH16I1NUM   $4. ;
    informat  MH16I1NUM_V   best32. ;
    informat  MH16JYN   $4. ;
    informat  MH16J1NUM   $4. ;
    informat  MH16J1NUM_V   best32. ;
    informat  MH16KYN   $4. ;
    informat  MH16K1NUM   $4. ;
    informat  MH16K1NUM_V   best32. ;
    informat  MH16LYN   $4. ;
    informat  MH16L1NUM   $4. ;
    informat  MH16L1NUM_V   best32. ;
    informat  FH1NUM   $4. ;
    informat  FH1NUM_V   best32. ;
    informat  FH2DT_D   $4. ;
    informat  FH2DT_M   $4. ;
    informat  FH2DT_Y   $4. ;
    informat  FH2DT   DDMMYY10. ;
    informat  FH3YN   $4. ;
    informat  FH4YN   $4. ;
    informat  FH5YN   $4. ;
    informat  FH6YN   $4. ;
    informat  FH7YN   $4. ;
    informat  FH7ALS_C1   $4. ;
    informat  FH7ALS_C2   $4. ;
    informat  FH7ALS_C3   $4. ;
    informat  FH7ALS_C4   $4. ;
    informat  FH7ALS_C5   $4. ;
    informat  FH7ALS_C6   $4. ;
    informat  FH7ALS_C7   $4. ;
    informat  FH7ALS_C8   $4. ;
    informat  FH7ALS_C9   $4. ;
    informat  FH7ALS_C10   $4. ;
    informat  FH7ALS_C11   $4. ;
    informat  FH7ALS_C12   $4. ;
    informat  FH7ALS_C13   $4. ;
    informat  FH7ALS_C14   $4. ;
    informat  FH8YN   $4. ;
    informat  FH9YN   $4. ;
    informat  FH10NUM   $4. ;
    informat  FH10NUM_V   best32. ;
    informat  BS1YN   $4. ;
    informat  BS1ALS_C1   $4. ;
    informat  BS1ALS_C2   $4. ;
    informat  BS1ALS_C3   $4. ;
    informat  BS1ALS_C4   $4. ;
    informat  BS1A1TXT   $21. ;
    informat  BS3NUM   $5. ;
    informat  BS3NUM_V   best32. ;
    informat  BS3UNIT   $4. ;
    informat  BS4NUM   $5. ;
    informat  BS4NUM_V   best32. ;
    informat  BS4UNIT   $4. ;
    informat  BS5NUM   $5. ;
    informat  BS5NUM_V   best32. ;
    informat  BS5UNIT   $4. ;
    informat  BS6NUM   $5. ;
    informat  BS6NUM_V   best32. ;
    informat  BS6UNIT   $4. ;
    informat  BS7NUM   $4. ;
    informat  BS7NUM_V   best32. ;
    informat  BS7UNIT   $4. ;
    informat  BS8NUM   $4. ;
    informat  BS8NUM_V   best32. ;
    informat  BS8UNIT   $4. ;
    informat  BS9NUM   $4. ;
    informat  BS9NUM_V   best32. ;
    informat  BS10LS   $4. ;
    informat  BS8YN   $4. ;
    informat  BS8ADT_D   $4. ;
    informat  BS8ADT_M   $4. ;
    informat  BS8ADT_Y   $4. ;
    informat  BS8ADT   DDMMYY10. ;
    informat  BS11NUM   $5. ;
    informat  BS11NUM_V   best32. ;
    informat  BS11UNIT   $4. ;
    informat  BS12NUM   $5. ;
    informat  BS12NUM_V   best32. ;
    informat  BS12UNIT   $4. ;
    informat  BS13NUM   $5. ;
    informat  BS13NUM_V   best32. ;
    informat  BS13UNIT   $4. ;
    informat  BS14NUM   $5. ;
    informat  BS14NUM_V   best32. ;
    informat  BS14UNIT   $4. ;
    informat  BS15NUM   $4. ;
    informat  BS15NUM_V   best32. ;
    informat  BS15UNIT   $4. ;
    informat  BS16NUM   $4. ;
    informat  BS16NUM_V   best32. ;
    informat  BS16UNIT   $4. ;
    informat  BS17NUM   $4. ;
    informat  BS17NUM_V   best32. ;
    informat  BS18LS   $4. ;
    informat  BS39LS_C0   $4. ;
    informat  BS39LS_C1   $4. ;
    informat  BS39LS_C2   $4. ;
    informat  BS39LS_C3   $4. ;
    informat  BS39LS_C4   $4. ;
    informat  BS39LS_C5   $4. ;
    informat  BS39LS_C6   $4. ;
    informat  BS39LS_C7   $4. ;
    informat  BS39LS_C8   $4. ;
    informat  BS39LS_C9   $4. ;
    informat  BS39ALS   $4. ;
    informat  BS19NUM   $6. ;
    informat  BS19NUM_V   best32. ;
    informat  BS20NUM   $4. ;
    informat  BS20NUM_V   best32. ;
    informat  BS21NUM   $4. ;
    informat  BS21NUM_V   best32. ;
    informat  BS22NUM   $4. ;
    informat  BS22NUM_V   best32. ;
    informat  BS23NUM   $4. ;
    informat  BS23NUM_V   best32. ;
    informat  BS24NUM   $4. ;
    informat  BS24NUM_V   best32. ;
    informat  BS25NUM   $4. ;
    informat  BS25NUM_V   best32. ;
    informat  BS26NUM   $4. ;
    informat  BS26NUM_V   best32. ;
    informat  BS27NUM   $4. ;
    informat  BS27NUM_V   best32. ;
    informat  BS28NUM   $4. ;
    informat  BS28NUM_V   best32. ;
    informat  BS29NUM   $4. ;
    informat  BS29NUM_V   best32. ;
    informat  BS30YN   $4. ;
    informat  BS30ADT_D   $4. ;
    informat  BS30ADT_M   $4. ;
    informat  BS30ADT_Y   $4. ;
    informat  BS30ADT   DDMMYY10. ;
    informat  BS30BLS_C1   $4. ;
    informat  BS30BLS_C2   $4. ;
    informat  BS30BLS_C3   $4. ;
    informat  BS30BLS_C4   $4. ;
    informat  BS30BLS_C5   $4. ;
    informat  BS30BLS_C6   $4. ;
    informat  BS30BLS_C7   $4. ;
    informat  BS30BLS_C8   $4. ;
    informat  BS30BLS_C9   $4. ;
    informat  BS30BLS_C10   $4. ;
    informat  BS30CLS   $4. ;
    informat  BS34YN   $4. ;
    informat  BS34ALS   $4. ;
    informat  BS34A1TXT   $4. ;
    informat  BS34CNUM   $4. ;
    informat  BS34CNUM_V   best32. ;
    informat  BS34BNUM   $5. ;
    informat  BS34BNUM_V   best32. ;
    informat  BS35YN   $4. ;
    informat  BS35A1TXT   $49. ;
    informat  BS36YN   $4. ;
    informat  BS36ADT_D   $4. ;
    informat  BS36ADT_M   $4. ;
    informat  BS36ADT_Y   $4. ;
    informat  BS36ADT   DDMMYY10. ;
    informat  BS36BNUM   $6. ;
    informat  BS36BNUM_V   best32. ;
    informat  BS36CNUM   $4. ;
    informat  BS36CNUM_V   best32. ;
    informat  BS37YN   $4. ;
    informat  BS37ADT_D   $4. ;
    informat  BS37ADT_M   $4. ;
    informat  BS37ADT_Y   $4. ;
    informat  BS37ADT   DDMMYY10. ;
    informat  BS37BLS   $4. ;
    informat  BS37CNUM   $4. ;
    informat  BS37CNUM_V   best32. ;
    informat  BS37DNUM   $4. ;
    informat  BS37DNUM_V   best32. ;
    informat  BS38YN   $4. ;
    informat  BS38ADT_D   $4. ;
    informat  BS38ADT_M   $4. ;
    informat  BS38ADT_Y   $4. ;
    informat  BS38ADT   DDMMYY10. ;
    informat  BS38BLS   $4. ;
    informat  BS38CNUM   $7. ;
    informat  BS38CNUM_V   best32. ;
    informat  BS38DNUM   $7. ;
    informat  BS38DNUM_V   best32. ;
    informat  BS38ENUM   $4. ;
    informat  BS38ENUM_V   best32. ;
    informat  BS38FNUM   $4. ;
    informat  BS38FNUM_V   best32. ;
    informat  TTT1YN   $4. ;
    informat  TTT2YN   $4. ;
    informat  TTT2ALS   $4. ;
    informat  TTT2BLS   $4. ;
    informat  TTT2CNUM   $4. ;
    informat  TTT2CNUM_V   best32. ;
    informat  TTT2DLS   $4. ;
    informat  TTT3LS_C1   $4. ;
    informat  TTT3LS_C2   $4. ;
    informat  TTT3LS_C3   $4. ;
    informat  TTT3LS_C4   $4. ;
    informat  TTT3LS_C5   $4. ;
    informat  TTT3LS_C6   $4. ;
    informat  TTT3LS_C7   $4. ;
    informat  TTT3LS_C8   $4. ;
    informat  TTT3LS_C9   $4. ;
    informat  TTT4LS_C1   $4. ;
    informat  TTT4LS_C2   $4. ;
    informat  TTT4LS_C3   $4. ;
    informat  TTT4LS_C4   $4. ;
    informat  TTT4LS_C5   $4. ;
    informat  TTT4LS_C6   $4. ;
    informat  TTT4LS_C7   $4. ;
    informat  VS1YN   $4. ;
    informat  VS1ALS   $4. ;
    informat  VS1BTXT   $4. ;

    format  STUDY_ID   $8. ;
    format  COUNTRY_ID   $4. ;
    format  EXTRACTION_DATE   $19. ;
    format  SITE_ID   $4. ;
    format  SUBJECT_ID   $4. ;
    format  SUBJECT_REF   $9. ;
    format  REF_SITEID   $4. ;
    format  REF_NUMBER   $4. ;
    format  MODULE_ML   $4. ;
    format  CD1TXT   $12. ;
    format  CD2LS   $4. ;
    format  CD3NUM   $4. ;
    format  CD3NUM_V   best12. ;
    format  CD4NUM   $7. ;
    format  CD4NUM_V   best12. ;
    format  CD5NUM   $4. ;
    format  CD5NUM_V   best12. ;
    format  CD6NUM   $4. ;
    format  CD6NUM_V   best12. ;
    format  CD7NUM   $4. ;
    format  CD7NUM_V   best12. ;
    format  CD8YN   $4. ;
    format  CD8AYN   $4. ;
    format  MH1YN   $4. ;
    format  MH1ANUM   $4. ;
    format  MH1ANUM_V   best12. ;
    format  MH2YN   $4. ;
    format  MH2ANUM   $4. ;
    format  MH2ANUM_V   best12. ;
    format  MH23NUM   $4. ;
    format  MH23NUM_V   best12. ;
    format  MH2BLS   $4. ;
    format  MH3YN   $4. ;
    format  MH3ANUM   $4. ;
    format  MH3ANUM_V   best12. ;
    format  MH4YN   $4. ;
    format  MH4ANUM   $4. ;
    format  MH4ANUM_V   best12. ;
    format  MH5YN   $4. ;
    format  MH5AYN   $4. ;
    format  MH5A1NUM   $4. ;
    format  MH5A1NUM_V   best12. ;
    format  MH5BYN   $4. ;
    format  MH5B1NUM   $4. ;
    format  MH5B1NUM_V   best12. ;
    format  MH5CYN   $4. ;
    format  MH5C1NUM   $4. ;
    format  MH5C1NUM_V   best12. ;
    format  MH5DYN   $4. ;
    format  MH5D1NUM   $4. ;
    format  MH5D1NUM_V   best12. ;
    format  MH5EYN   $4. ;
    format  MH5E1NUM   $4. ;
    format  MH5E1NUM_V   best12. ;
    format  MH5FYN   $4. ;
    format  MH5F1NUM   $4. ;
    format  MH5F1NUM_V   best12. ;
    format  MH5GYN   $4. ;
    format  MH5HYN   $4. ;
    format  MH16H1NUM   $4. ;
    format  MH16H1NUM_V   best12. ;
    format  MH16IYN   $4. ;
    format  MH16I1NUM   $4. ;
    format  MH16I1NUM_V   best12. ;
    format  MH16JYN   $4. ;
    format  MH16J1NUM   $4. ;
    format  MH16J1NUM_V   best12. ;
    format  MH16KYN   $4. ;
    format  MH16K1NUM   $4. ;
    format  MH16K1NUM_V   best12. ;
    format  MH16LYN   $4. ;
    format  MH16L1NUM   $4. ;
    format  MH16L1NUM_V   best12. ;
    format  FH1NUM   $4. ;
    format  FH1NUM_V   best12. ;
    format  FH2DT_D   $4. ;
    format  FH2DT_M   $4. ;
    format  FH2DT_Y   $4. ;
    format  FH2DT   DDMMYY10. ;
    format  FH3YN   $4. ;
    format  FH4YN   $4. ;
    format  FH5YN   $4. ;
    format  FH6YN   $4. ;
    format  FH7YN   $4. ;
    format  FH7ALS_C1   $4. ;
    format  FH7ALS_C2   $4. ;
    format  FH7ALS_C3   $4. ;
    format  FH7ALS_C4   $4. ;
    format  FH7ALS_C5   $4. ;
    format  FH7ALS_C6   $4. ;
    format  FH7ALS_C7   $4. ;
    format  FH7ALS_C8   $4. ;
    format  FH7ALS_C9   $4. ;
    format  FH7ALS_C10   $4. ;
    format  FH7ALS_C11   $4. ;
    format  FH7ALS_C12   $4. ;
    format  FH7ALS_C13   $4. ;
    format  FH7ALS_C14   $4. ;
    format  FH8YN   $4. ;
    format  FH9YN   $4. ;
    format  FH10NUM   $4. ;
    format  FH10NUM_V   best12. ;
    format  BS1YN   $4. ;
    format  BS1ALS_C1   $4. ;
    format  BS1ALS_C2   $4. ;
    format  BS1ALS_C3   $4. ;
    format  BS1ALS_C4   $4. ;
    format  BS1A1TXT   $21. ;
    format  BS3NUM   $5. ;
    format  BS3NUM_V   best12. ;
    format  BS3UNIT   $4. ;
    format  BS4NUM   $5. ;
    format  BS4NUM_V   best12. ;
    format  BS4UNIT   $4. ;
    format  BS5NUM   $5. ;
    format  BS5NUM_V   best12. ;
    format  BS5UNIT   $4. ;
    format  BS6NUM   $5. ;
    format  BS6NUM_V   best12. ;
    format  BS6UNIT   $4. ;
    format  BS7NUM   $4. ;
    format  BS7NUM_V   best12. ;
    format  BS7UNIT   $4. ;
    format  BS8NUM   $4. ;
    format  BS8NUM_V   best12. ;
    format  BS8UNIT   $4. ;
    format  BS9NUM   $4. ;
    format  BS9NUM_V   best12. ;
    format  BS10LS   $4. ;
    format  BS8YN   $4. ;
    format  BS8ADT_D   $4. ;
    format  BS8ADT_M   $4. ;
    format  BS8ADT_Y   $4. ;
    format  BS8ADT   DDMMYY10. ;
    format  BS11NUM   $5. ;
    format  BS11NUM_V   best12. ;
    format  BS11UNIT   $4. ;
    format  BS12NUM   $5. ;
    format  BS12NUM_V   best12. ;
    format  BS12UNIT   $4. ;
    format  BS13NUM   $5. ;
    format  BS13NUM_V   best12. ;
    format  BS13UNIT   $4. ;
    format  BS14NUM   $5. ;
    format  BS14NUM_V   best12. ;
    format  BS14UNIT   $4. ;
    format  BS15NUM   $4. ;
    format  BS15NUM_V   best12. ;
    format  BS15UNIT   $4. ;
    format  BS16NUM   $4. ;
    format  BS16NUM_V   best12. ;
    format  BS16UNIT   $4. ;
    format  BS17NUM   $4. ;
    format  BS17NUM_V   best12. ;
    format  BS18LS   $4. ;
    format  BS39LS_C0   $4. ;
    format  BS39LS_C1   $4. ;
    format  BS39LS_C2   $4. ;
    format  BS39LS_C3   $4. ;
    format  BS39LS_C4   $4. ;
    format  BS39LS_C5   $4. ;
    format  BS39LS_C6   $4. ;
    format  BS39LS_C7   $4. ;
    format  BS39LS_C8   $4. ;
    format  BS39LS_C9   $4. ;
    format  BS39ALS   $4. ;
    format  BS19NUM   $6. ;
    format  BS19NUM_V   best12. ;
    format  BS20NUM   $4. ;
    format  BS20NUM_V   best12. ;
    format  BS21NUM   $4. ;
    format  BS21NUM_V   best12. ;
    format  BS22NUM   $4. ;
    format  BS22NUM_V   best12. ;
    format  BS23NUM   $4. ;
    format  BS23NUM_V   best12. ;
    format  BS24NUM   $4. ;
    format  BS24NUM_V   best12. ;
    format  BS25NUM   $4. ;
    format  BS25NUM_V   best12. ;
    format  BS26NUM   $4. ;
    format  BS26NUM_V   best12. ;
    format  BS27NUM   $4. ;
    format  BS27NUM_V   best12. ;
    format  BS28NUM   $4. ;
    format  BS28NUM_V   best12. ;
    format  BS29NUM   $4. ;
    format  BS29NUM_V   best12. ;
    format  BS30YN   $4. ;
    format  BS30ADT_D   $4. ;
    format  BS30ADT_M   $4. ;
    format  BS30ADT_Y   $4. ;
    format  BS30ADT   DDMMYY10. ;
    format  BS30BLS_C1   $4. ;
    format  BS30BLS_C2   $4. ;
    format  BS30BLS_C3   $4. ;
    format  BS30BLS_C4   $4. ;
    format  BS30BLS_C5   $4. ;
    format  BS30BLS_C6   $4. ;
    format  BS30BLS_C7   $4. ;
    format  BS30BLS_C8   $4. ;
    format  BS30BLS_C9   $4. ;
    format  BS30BLS_C10   $4. ;
    format  BS30CLS   $4. ;
    format  BS34YN   $4. ;
    format  BS34ALS   $4. ;
    format  BS34A1TXT   $4. ;
    format  BS34CNUM   $4. ;
    format  BS34CNUM_V   best12. ;
    format  BS34BNUM   $5. ;
    format  BS34BNUM_V   best12. ;
    format  BS35YN   $4. ;
    format  BS35A1TXT   $49. ;
    format  BS36YN   $4. ;
    format  BS36ADT_D   $4. ;
    format  BS36ADT_M   $4. ;
    format  BS36ADT_Y   $4. ;
    format  BS36ADT   DDMMYY10. ;
    format  BS36BNUM   $6. ;
    format  BS36BNUM_V   best12. ;
    format  BS36CNUM   $4. ;
    format  BS36CNUM_V   best12. ;
    format  BS37YN   $4. ;
    format  BS37ADT_D   $4. ;
    format  BS37ADT_M   $4. ;
    format  BS37ADT_Y   $4. ;
    format  BS37ADT   DDMMYY10. ;
    format  BS37BLS   $4. ;
    format  BS37CNUM   $4. ;
    format  BS37CNUM_V   best12. ;
    format  BS37DNUM   $4. ;
    format  BS37DNUM_V   best12. ;
    format  BS38YN   $4. ;
    format  BS38ADT_D   $4. ;
    format  BS38ADT_M   $4. ;
    format  BS38ADT_Y   $4. ;
    format  BS38ADT   DDMMYY10. ;
    format  BS38BLS   $4. ;
    format  BS38CNUM   $7. ;
    format  BS38CNUM_V   best12. ;
    format  BS38DNUM   $7. ;
    format  BS38DNUM_V   best12. ;
    format  BS38ENUM   $4. ;
    format  BS38ENUM_V   best12. ;
    format  BS38FNUM   $4. ;
    format  BS38FNUM_V   best12. ;
    format  TTT1YN   $4. ;
    format  TTT2YN   $4. ;
    format  TTT2ALS   $4. ;
    format  TTT2BLS   $4. ;
    format  TTT2CNUM   $4. ;
    format  TTT2CNUM_V   best12. ;
    format  TTT2DLS   $4. ;
    format  TTT3LS_C1   $4. ;
    format  TTT3LS_C2   $4. ;
    format  TTT3LS_C3   $4. ;
    format  TTT3LS_C4   $4. ;
    format  TTT3LS_C5   $4. ;
    format  TTT3LS_C6   $4. ;
    format  TTT3LS_C7   $4. ;
    format  TTT3LS_C8   $4. ;
    format  TTT3LS_C9   $4. ;
    format  TTT4LS_C1   $4. ;
    format  TTT4LS_C2   $4. ;
    format  TTT4LS_C3   $4. ;
    format  TTT4LS_C4   $4. ;
    format  TTT4LS_C5   $4. ;
    format  TTT4LS_C6   $4. ;
    format  TTT4LS_C7   $4. ;
    format  VS1YN   $4. ;
    format  VS1ALS   $4. ;
    format  VS1BTXT   $4. ;

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
        CD1TXT $
        CD2LS $
        CD3NUM $
        CD3NUM_V
        CD4NUM $
        CD4NUM_V
        CD5NUM $
        CD5NUM_V
        CD6NUM $
        CD6NUM_V
        CD7NUM $
        CD7NUM_V
        CD8YN $
        CD8AYN $
        MH1YN $
        MH1ANUM $
        MH1ANUM_V
        MH2YN $
        MH2ANUM $
        MH2ANUM_V
        MH23NUM $
        MH23NUM_V
        MH2BLS $
        MH3YN $
        MH3ANUM $
        MH3ANUM_V
        MH4YN $
        MH4ANUM $
        MH4ANUM_V
        MH5YN $
        MH5AYN $
        MH5A1NUM $
        MH5A1NUM_V
        MH5BYN $
        MH5B1NUM $
        MH5B1NUM_V
        MH5CYN $
        MH5C1NUM $
        MH5C1NUM_V
        MH5DYN $
        MH5D1NUM $
        MH5D1NUM_V
        MH5EYN $
        MH5E1NUM $
        MH5E1NUM_V
        MH5FYN $
        MH5F1NUM $
        MH5F1NUM_V
        MH5GYN $
        MH5HYN $
        MH16H1NUM $
        MH16H1NUM_V
        MH16IYN $
        MH16I1NUM $
        MH16I1NUM_V
        MH16JYN $
        MH16J1NUM $
        MH16J1NUM_V
        MH16KYN $
        MH16K1NUM $
        MH16K1NUM_V
        MH16LYN $
        MH16L1NUM $
        MH16L1NUM_V
        FH1NUM $
        FH1NUM_V
        FH2DT_D $
        FH2DT_M $
        FH2DT_Y $
        FH2DT
        FH3YN $
        FH4YN $
        FH5YN $
        FH6YN $
        FH7YN $
        FH7ALS_C1 $
        FH7ALS_C2 $
        FH7ALS_C3 $
        FH7ALS_C4 $
        FH7ALS_C5 $
        FH7ALS_C6 $
        FH7ALS_C7 $
        FH7ALS_C8 $
        FH7ALS_C9 $
        FH7ALS_C10 $
        FH7ALS_C11 $
        FH7ALS_C12 $
        FH7ALS_C13 $
        FH7ALS_C14 $
        FH8YN $
        FH9YN $
        FH10NUM $
        FH10NUM_V
        BS1YN $
        BS1ALS_C1 $
        BS1ALS_C2 $
        BS1ALS_C3 $
        BS1ALS_C4 $
        BS1A1TXT $
        BS3NUM $
        BS3NUM_V
        BS3UNIT $
        BS4NUM $
        BS4NUM_V
        BS4UNIT $
        BS5NUM $
        BS5NUM_V
        BS5UNIT $
        BS6NUM $
        BS6NUM_V
        BS6UNIT $
        BS7NUM $
        BS7NUM_V
        BS7UNIT $
        BS8NUM $
        BS8NUM_V
        BS8UNIT $
        BS9NUM $
        BS9NUM_V
        BS10LS $
        BS8YN $
        BS8ADT_D $
        BS8ADT_M $
        BS8ADT_Y $
        BS8ADT
        BS11NUM $
        BS11NUM_V
        BS11UNIT $
        BS12NUM $
        BS12NUM_V
        BS12UNIT $
        BS13NUM $
        BS13NUM_V
        BS13UNIT $
        BS14NUM $
        BS14NUM_V
        BS14UNIT $
        BS15NUM $
        BS15NUM_V
        BS15UNIT $
        BS16NUM $
        BS16NUM_V
        BS16UNIT $
        BS17NUM $
        BS17NUM_V
        BS18LS $
        BS39LS_C0 $
        BS39LS_C1 $
        BS39LS_C2 $
        BS39LS_C3 $
        BS39LS_C4 $
        BS39LS_C5 $
        BS39LS_C6 $
        BS39LS_C7 $
        BS39LS_C8 $
        BS39LS_C9 $
        BS39ALS $
        BS19NUM $
        BS19NUM_V
        BS20NUM $
        BS20NUM_V
        BS21NUM $
        BS21NUM_V
        BS22NUM $
        BS22NUM_V
        BS23NUM $
        BS23NUM_V
        BS24NUM $
        BS24NUM_V
        BS25NUM $
        BS25NUM_V
        BS26NUM $
        BS26NUM_V
        BS27NUM $
        BS27NUM_V
        BS28NUM $
        BS28NUM_V
        BS29NUM $
        BS29NUM_V
        BS30YN $
        BS30ADT_D $
        BS30ADT_M $
        BS30ADT_Y $
        BS30ADT
        BS30BLS_C1 $
        BS30BLS_C2 $
        BS30BLS_C3 $
        BS30BLS_C4 $
        BS30BLS_C5 $
        BS30BLS_C6 $
        BS30BLS_C7 $
        BS30BLS_C8 $
        BS30BLS_C9 $
        BS30BLS_C10 $
        BS30CLS $
        BS34YN $
        BS34ALS $
        BS34A1TXT $
        BS34CNUM $
        BS34CNUM_V
        BS34BNUM $
        BS34BNUM_V
        BS35YN $
        BS35A1TXT $
        BS36YN $
        BS36ADT_D $
        BS36ADT_M $
        BS36ADT_Y $
        BS36ADT
        BS36BNUM $
        BS36BNUM_V
        BS36CNUM $
        BS36CNUM_V
        BS37YN $
        BS37ADT_D $
        BS37ADT_M $
        BS37ADT_Y $
        BS37ADT
        BS37BLS $
        BS37CNUM $
        BS37CNUM_V
        BS37DNUM $
        BS37DNUM_V
        BS38YN $
        BS38ADT_D $
        BS38ADT_M $
        BS38ADT_Y $
        BS38ADT
        BS38BLS $
        BS38CNUM $
        BS38CNUM_V
        BS38DNUM $
        BS38DNUM_V
        BS38ENUM $
        BS38ENUM_V
        BS38FNUM $
        BS38FNUM_V
        TTT1YN $
        TTT2YN $
        TTT2ALS $
        TTT2BLS $
        TTT2CNUM $
        TTT2CNUM_V
        TTT2DLS $
        TTT3LS_C1 $
        TTT3LS_C2 $
        TTT3LS_C3 $
        TTT3LS_C4 $
        TTT3LS_C5 $
        TTT3LS_C6 $
        TTT3LS_C7 $
        TTT3LS_C8 $
        TTT3LS_C9 $
        TTT4LS_C1 $
        TTT4LS_C2 $
        TTT4LS_C3 $
        TTT4LS_C4 $
        TTT4LS_C5 $
        TTT4LS_C6 $
        TTT4LS_C7 $
        VS1YN $
        VS1ALS $
        VS1BTXT $
    ;
run;

proc FORMAT ;
    value $CODE_11_LIST 
        '1' = 'mmol/L' 
        '2' = 'mg/dL' 
    ;
    value $CODE_21_LIST 
        '0' = 'No' 
        '1' = 'Normal' 
        '2' = 'Atheromatosis without stenosis' 
        '3' = 'ND' 
    ;
    value $CODE_22_LIST 
        '1' = 'narrowing-insufficiency' 
        '2' = 'regurgitation' 
        '3' = 'Systolic LV Dysfunction' 
        '4' = 'Not Defined' 
        '5' = 'Normal' 
    ;
    value $CODE_2_LIST 
        '0' = 'No' 
        '1' = 'Yes' 
    ;
    value $CODE_6_LIST 
        '1' = 'Maternal' 
        '2' = 'Paternal' 
        '3' = 'Unknown' 
    ;
    value $CODE_15_LIST 
        '10' = '10' 
        '20' = '20' 
        '4' = '4' 
        '40' = '40' 
        '5' = '5' 
        '80' = '80' 
    ;
    value $CODE_12_LIST 
        '1' = 'mg/dL' 
        '2' = 'g/L' 
    ;
    value $CODE_5_LIST 
        '1' = 'Regular (1cig/day/past 12 M)' 
        '2' = 'Former smoker >100 cig lifetime smoke-free since > 12 M' 
        '3' = 'Non-smoker <100 cig lifetime smoke-free since > 12 M' 
    ;
    value $CODE_20_LIST 
        '1' = 'G6 (Talmud)' 
        '2' = 'G12 (Talmud)' 
        '3' = 'Other' 
    ;
    value $CODE_23_LIST 
        '1' = 'Simvastatin' 
        '2' = 'Atorvastatin' 
        '3' = 'Pravastatin' 
        '4' = 'Fluvastatin' 
        '5' = 'Rosuvastatin' 
        '6' = 'Pitavastatin' 
    ;
    value $CODE_19_LIST 
        '1' = 'Targeted panel' 
        '2' = 'exome' 
        '3' = 'genome' 
    ;
    value $CODE_13_LIST 
        '1' = 'nmol/L' 
        '2' = 'mg/dL' 
    ;
    value $CODE_27_LIST 
        '1' = 'MI' 
        '2' = 'stroke' 
        '3' = 'heart failure' 
        '4' = 'other cardiac-related cause' 
        '5' = 'malignancy' 
        '6' = 'accident' 
        '7' = 'other cause' 
    ;
    value $CODE_24_LIST 
        '1' = 'ND' 
        '2' = 'muscle intolerance' 
        '3' = 'pregnancy' 
        '4' = 'patient refusal' 
        '5' = 'non-compliance' 
        '6' = 'liver enzymes>3ULN' 
        '7' = 'liver enzymes < 3ULN' 
        '8' = 'doctor refusal' 
        '9' = 'no indication' 
    ;
    value $CODE_4_LIST 
        '1' = 'Index case' 
        '2' = 'Relative' 
    ;
run;

DATA ML_ANSI ;
set ML_ANSI ;
    format
        CD2LS   $CODE_4_LIST.
        CD8YN   $CODE_2_LIST.
        CD8AYN   $CODE_2_LIST.
        MH1YN   $CODE_2_LIST.
        MH2YN   $CODE_2_LIST.
        MH2BLS   $CODE_5_LIST.
        MH3YN   $CODE_2_LIST.
        MH4YN   $CODE_2_LIST.
        MH5YN   $CODE_2_LIST.
        MH5AYN   $CODE_2_LIST.
        MH5BYN   $CODE_2_LIST.
        MH5CYN   $CODE_2_LIST.
        MH5DYN   $CODE_2_LIST.
        MH5EYN   $CODE_2_LIST.
        MH5FYN   $CODE_2_LIST.
        MH5GYN   $CODE_2_LIST.
        MH5HYN   $CODE_2_LIST.
        MH16IYN   $CODE_2_LIST.
        MH16JYN   $CODE_2_LIST.
        MH16KYN   $CODE_2_LIST.
        MH16LYN   $CODE_2_LIST.
        FH2DT   DDMMYY10.
        FH3YN   $CODE_6_LIST.
        FH4YN   $CODE_2_LIST.
        FH5YN   $CODE_2_LIST.
        FH6YN   $CODE_2_LIST.
        FH7YN   $CODE_2_LIST.
        FH8YN   $CODE_2_LIST.
        FH9YN   $CODE_2_LIST.
        BS1YN   $CODE_2_LIST.
        BS3UNIT   $CODE_11_LIST.
        BS4UNIT   $CODE_11_LIST.
        BS5UNIT   $CODE_11_LIST.
        BS6UNIT   $CODE_11_LIST.
        BS7UNIT   $CODE_12_LIST.
        BS8UNIT   $CODE_12_LIST.
        BS10LS   $CODE_13_LIST.
        BS8YN   $CODE_2_LIST.
        BS8ADT   DDMMYY10.
        BS11UNIT   $CODE_11_LIST.
        BS12UNIT   $CODE_11_LIST.
        BS13UNIT   $CODE_11_LIST.
        BS14UNIT   $CODE_11_LIST.
        BS15UNIT   $CODE_12_LIST.
        BS16UNIT   $CODE_12_LIST.
        BS18LS   $CODE_13_LIST.
        BS39ALS   $CODE_15_LIST.
        BS30YN   $CODE_2_LIST.
        BS30ADT   DDMMYY10.
        BS30CLS   $CODE_19_LIST.
        BS34YN   $CODE_2_LIST.
        BS34ALS   $CODE_20_LIST.
        BS35YN   $CODE_2_LIST.
        BS36YN   $CODE_2_LIST.
        BS36ADT   DDMMYY10.
        BS37YN   $CODE_2_LIST.
        BS37ADT   DDMMYY10.
        BS37BLS   $CODE_21_LIST.
        BS38YN   $CODE_2_LIST.
        BS38ADT   DDMMYY10.
        BS38BLS   $CODE_22_LIST.
        TTT1YN   $CODE_2_LIST.
        TTT2YN   $CODE_2_LIST.
        TTT2ALS   $CODE_23_LIST.
        TTT2BLS   $CODE_15_LIST.
        TTT2DLS   $CODE_24_LIST.
        VS1YN   $CODE_2_LIST.
        VS1ALS   $CODE_27_LIST.
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
        CD1TXT = "Family number"
        CD2LS = "Index case/Relative"
        CD3NUM = "Weight/ Valeur au format texte"
        CD3NUM_V = "Weight/ Valeur entière ou réelle"
        CD4NUM = "Height/ Valeur au format texte"
        CD4NUM_V = "Height/ Valeur entière ou réelle"
        CD5NUM = "BMI/ Valeur au format texte"
        CD5NUM_V = "BMI/ Valeur entière ou réelle"
        CD6NUM = "Systolic pressure/ Valeur au format texte"
        CD6NUM_V = "Systolic pressure/ Valeur entière ou réelle"
        CD7NUM = "Diastolic pressure/ Valeur au format texte"
        CD7NUM_V = "Diastolic pressure/ Valeur entière ou réelle"
        CD8YN = "Hypertension"
        CD8AYN = "Blood pressure treatment"
        MH1YN = "Diabetes"
        MH1ANUM = "Diabetes age/ Valeur au format texte"
        MH1ANUM_V = "Diabetes age/ Valeur entière ou réelle"
        MH2YN = "Smoking"
        MH2ANUM = "Packets-year/ Valeur au format texte"
        MH2ANUM_V = "Packets-year/ Valeur entière ou réelle"
        MH23NUM = "Cigarettes per day/ Valeur au format texte"
        MH23NUM_V = "Cigarettes per day/ Valeur entière ou réelle"
        MH2BLS = "Smoking status*"
        MH3YN = "Alcohol use*"
        MH3ANUM = "Alcool glasses/Week*/ Valeur au format texte"
        MH3ANUM_V = "Alcool glasses/Week*/ Valeur entière ou réelle"
        MH4YN = "Exercising*"
        MH4ANUM = "Exr_NrT/Week*/ Valeur au format texte"
        MH4ANUM_V = "Exr_NrT/Week*/ Valeur entière ou réelle"
        MH5YN = "Cardiovascular disease"
        MH5AYN = "MI / ACS"
        MH5A1NUM = "MI_Age/ Valeur au format texte"
        MH5A1NUM_V = "MI_Age/ Valeur entière ou réelle"
        MH5BYN = "PTCA"
        MH5B1NUM = "PTCA Age/ Valeur au format texte"
        MH5B1NUM_V = "PTCA Age/ Valeur entière ou réelle"
        MH5CYN = "CABG"
        MH5C1NUM = "CABG Age/ Valeur au format texte"
        MH5C1NUM_V = "CABG Age/ Valeur entière ou réelle"
        MH5DYN = "Stroke/TIA"
        MH5D1NUM = "Stroke/TIA Age/ Valeur au format texte"
        MH5D1NUM_V = "Stroke/TIA Age/ Valeur entière ou réelle"
        MH5EYN = "Ischemic stroke*"
        MH5E1NUM = "Ischemic stroke age*/ Valeur au format texte"
        MH5E1NUM_V = "Ischemic stroke age*/ Valeur entière ou réelle"
        MH5FYN = "Hemorragic stroke*"
        MH5F1NUM = "Hemorragic stroke age*/ Valeur au format texte"
        MH5F1NUM_V = "Hemorragic stroke age*/ Valeur entière ou réelle"
        MH5GYN = "other revascularization*"
        MH5HYN = "Ischemic disease of the lower limbs*"
        MH16H1NUM = "Ischemic disease of the lower limbs age*/ Valeur au format texte"
        MH16H1NUM_V = "Ischemic disease of the lower limbs age*/ Valeur entière ou réelle"
        MH16IYN = "Peripheral arterial bypass*"
        MH16I1NUM = "Peripheral arterial bypass age*/ Valeur au format texte"
        MH16I1NUM_V = "Peripheral arterial bypass age*/ Valeur entière ou réelle"
        MH16JYN = "Carotid endarterectomy*"
        MH16J1NUM = "Carotid endarterectomy age*/ Valeur au format texte"
        MH16J1NUM_V = "Carotid endarterectomy age*/ Valeur entière ou réelle"
        MH16KYN = "Ascending aorta intervention*"
        MH16K1NUM = "Ascending aorta intervention age*/ Valeur au format texte"
        MH16K1NUM_V = "Ascending aorta intervention age*/ Valeur entière ou réelle"
        MH16LYN = "Aortic valve replacement*"
        MH16L1NUM = "Aortic valve replacement age*/ Valeur au format texte"
        MH16L1NUM_V = "Aortic valve replacement age*/ Valeur entière ou réelle"
        FH1NUM = "Age at diagnosis of FH/ Valeur au format texte"
        FH1NUM_V = "Age at diagnosis of FH/ Valeur entière ou réelle"
        FH2DT_D = "Year of first statin initiation/ Jour"
        FH2DT_M = "Year of first statin initiation/ Mois"
        FH2DT_Y = "Year of first statin initiation/ Année"
        FH2DT = "Year of first statin initiation"
        FH3YN = "Maternal / Parternal inheritance"
        FH4YN = "Tendon xanthoma"
        FH5YN = "Xanthelasma"
        FH6YN = "Corneal arcus"
        FH7YN = "Family history of hypercholesterolemia"
        FH7ALS_C1 = "If yes: specify  / Mother"
        FH7ALS_C2 = "If yes: specify  / Father"
        FH7ALS_C3 = "If yes: specify  / child"
        FH7ALS_C4 = "If yes: specify  / sibling"
        FH7ALS_C5 = "If yes: specify  / paternal grand-parent"
        FH7ALS_C6 = "If yes: specify  / maternal grand-parent"
        FH7ALS_C7 = "If yes: specify  / grand child"
        FH7ALS_C8 = "If yes: specify  / paternal great grandparent"
        FH7ALS_C9 = "If yes: specify  / maternal great grandparent"
        FH7ALS_C10 = "If yes: specify  / uncle"
        FH7ALS_C11 = "If yes: specify  / aunt"
        FH7ALS_C12 = "If yes: specify  / cousin"
        FH7ALS_C13 = "If yes: specify  / niece"
        FH7ALS_C14 = "If yes: specify  / nephew"
        FH8YN = "Family history of xanthoma"
        FH9YN = "Family history of CVD"
        FH10NUM = "DLNC score/ Valeur au format texte"
        FH10NUM_V = "DLNC score/ Valeur entière ou réelle"
        BS1YN = "Other biocollection available excluding DNA"
        BS1ALS_C1 = "If yes, type of biocollection  / proteomics"
        BS1ALS_C2 = "If yes, type of biocollection  / lipidomics"
        BS1ALS_C3 = "If yes, type of biocollection  / RNA"
        BS1ALS_C4 = "If yes, type of biocollection  / etc"
        BS1A1TXT = "If etc., specify"
        BS3NUM = "TCHOL1/ Valeur au format texte"
        BS3NUM_V = "TCHOL1/ Valeur entière ou réelle"
        BS3UNIT = "TCHOL1 unit"
        BS4NUM = "TAG1/ Valeur au format texte"
        BS4NUM_V = "TAG1/ Valeur entière ou réelle"
        BS4UNIT = "TAG1 unit"
        BS5NUM = "HDLC1/ Valeur au format texte"
        BS5NUM_V = "HDLC1/ Valeur entière ou réelle"
        BS5UNIT = "HDLC1 Unit"
        BS6NUM = "LDLC1/ Valeur au format texte"
        BS6NUM_V = "LDLC1/ Valeur entière ou réelle"
        BS6UNIT = "LDLC1 unit"
        BS7NUM = "APOA1/ Valeur au format texte"
        BS7NUM_V = "APOA1/ Valeur entière ou réelle"
        BS7UNIT = "APOA1 unit"
        BS8NUM = "APOB/ Valeur au format texte"
        BS8NUM_V = "APOB/ Valeur entière ou réelle"
        BS8UNIT = "APOB unit"
        BS9NUM = "LP(a)1/ Valeur au format texte"
        BS9NUM_V = "LP(a)1/ Valeur entière ou réelle"
        BS10LS = "Lp(a)1 unit"
        BS8YN = "Lipid values under treatment available"
        BS8ADT_D = "Date/ Jour"
        BS8ADT_M = "Date/ Mois"
        BS8ADT_Y = "Date/ Année"
        BS8ADT = "Date"
        BS11NUM = "TCHOL3/ Valeur au format texte"
        BS11NUM_V = "TCHOL3/ Valeur entière ou réelle"
        BS11UNIT = "TCHOL3 unit"
        BS12NUM = "TAG3/ Valeur au format texte"
        BS12NUM_V = "TAG3/ Valeur entière ou réelle"
        BS12UNIT = "TAG3 unit"
        BS13NUM = "HDLC3/ Valeur au format texte"
        BS13NUM_V = "HDLC3/ Valeur entière ou réelle"
        BS13UNIT = "HDLC3 unit"
        BS14NUM = "LDLC3/ Valeur au format texte"
        BS14NUM_V = "LDLC3/ Valeur entière ou réelle"
        BS14UNIT = "LDLC3 unit"
        BS15NUM = "APOA1/ Valeur au format texte"
        BS15NUM_V = "APOA1/ Valeur entière ou réelle"
        BS15UNIT = "APOA1 unit"
        BS16NUM = "APOB/ Valeur au format texte"
        BS16NUM_V = "APOB/ Valeur entière ou réelle"
        BS16UNIT = "APOB unit"
        BS17NUM = "LP(a)3/ Valeur au format texte"
        BS17NUM_V = "LP(a)3/ Valeur entière ou réelle"
        BS18LS = "Lp(a)3 unit"
        BS39LS_C0 = "Treatment at the time of analysis  / Statin"
        BS39LS_C1 = "Treatment at the time of analysis  / ezetimibe"
        BS39LS_C2 = "Treatment at the time of analysis  / cholestyramine"
        BS39LS_C3 = "Treatment at the time of analysis  / niacin"
        BS39LS_C4 = "Treatment at the time of analysis  / PCSK9-inhibitor"
        BS39LS_C5 = "Treatment at the time of analysis  / Lomitapide"
        BS39LS_C6 = "Treatment at the time of analysis  / Evinacumab"
        BS39LS_C7 = "Treatment at the time of analysis  / LDL apheresis"
        BS39LS_C8 = "Treatment at the time of analysis  / phytosterols"
        BS39LS_C9 = "Treatment at the time of analysis  / red yeast rice"
        BS39ALS = "If Statin, daily dose (mg)"
        BS19NUM = "Uric acid*/ Valeur au format texte"
        BS19NUM_V = "Uric acid*/ Valeur entière ou réelle"
        BS20NUM = "Fasting plasma glucose*/ Valeur au format texte"
        BS20NUM_V = "Fasting plasma glucose*/ Valeur entière ou réelle"
        BS21NUM = "HbA1c*/ Valeur au format texte"
        BS21NUM_V = "HbA1c*/ Valeur entière ou réelle"
        BS22NUM = "Creatinin*/ Valeur au format texte"
        BS22NUM_V = "Creatinin*/ Valeur entière ou réelle"
        BS23NUM = "Glomerular filtration rate*/ Valeur au format texte"
        BS23NUM_V = "Glomerular filtration rate*/ Valeur entière ou réelle"
        BS24NUM = "GOT*/ Valeur au format texte"
        BS24NUM_V = "GOT*/ Valeur entière ou réelle"
        BS25NUM = "GPT*/ Valeur au format texte"
        BS25NUM_V = "GPT*/ Valeur entière ou réelle"
        BS26NUM = "GGT*/ Valeur au format texte"
        BS26NUM_V = "GGT*/ Valeur entière ou réelle"
        BS27NUM = "ALP*/ Valeur au format texte"
        BS27NUM_V = "ALP*/ Valeur entière ou réelle"
        BS28NUM = "Total bilirubin*/ Valeur au format texte"
        BS28NUM_V = "Total bilirubin*/ Valeur entière ou réelle"
        BS29NUM = "CPK*/ Valeur au format texte"
        BS29NUM_V = "CPK*/ Valeur entière ou réelle"
        BS30YN = "Molecular diagnosis"
        BS30ADT_D = "Molecular diagnosis (date)/ Jour"
        BS30ADT_M = "Molecular diagnosis (date)/ Mois"
        BS30ADT_Y = "Molecular diagnosis (date)/ Année"
        BS30ADT = "Molecular diagnosis (date)"
        BS30BLS_C1 = "Genes analysed  / LDLR"
        BS30BLS_C2 = "Genes analysed  / whole APOB"
        BS30BLS_C3 = "Genes analysed  / APOB  3527  containing region"
        BS30BLS_C4 = "Genes analysed  / PCSK9"
        BS30BLS_C5 = "Genes analysed  / whole APOE"
        BS30BLS_C6 = "Genes analysed  / APOE genotypes"
        BS30BLS_C7 = "Genes analysed  / ABCG5"
        BS30BLS_C8 = "Genes analysed  / ABCG8"
        BS30BLS_C9 = "Genes analysed  / LIPA"
        BS30BLS_C10 = "Genes analysed  / LDLRAP1"
        BS30CLS = "Method"
        BS34YN = "Gene score calculation"
        BS34ALS = "If yes: type of gene score"
        BS34A1TXT = "If Other, describe"
        BS34CNUM = "Hypercholesterolemia Polygenic index calculation/ Valeur au format texte"
        BS34CNUM_V = "Hypercholesterolemia Polygenic index calculation/ Valeur entière ou réelle"
        BS34BNUM = "If yes: value/ Valeur au format texte"
        BS34BNUM_V = "If yes: value/ Valeur entière ou réelle"
        BS35YN = "Other molecular test (mRNAseq)*"
        BS35A1TXT = "If yes: cell type*"
        BS36YN = "Coronary Artery Calcium Score*"
        BS36ADT_D = "Coronary Artery Calcium Score (date)*/ Jour"
        BS36ADT_M = "Coronary Artery Calcium Score (date)*/ Mois"
        BS36ADT_Y = "Coronary Artery Calcium Score (date)*/ Année"
        BS36ADT = "Coronary Artery Calcium Score (date)*"
        BS36BNUM = "Coronary Artery Calcium Score*/ Valeur au format texte"
        BS36BNUM_V = "Coronary Artery Calcium Score*/ Valeur entière ou réelle"
        BS36CNUM = "Coronary artery calcium score Number of affected artery/ies*/ Valeur au format texte"
        BS36CNUM_V = "Coronary artery calcium score Number of affected artery/ies*/ Valeur entière ou réelle"
        BS37YN = "Computed Coronary Tomography Angiography*"
        BS37ADT_D = "Computed Coronary Tomography Angiography (date)*/ Jour"
        BS37ADT_M = "Computed Coronary Tomography Angiography (date)*/ Mois"
        BS37ADT_Y = "Computed Coronary Tomography Angiography (date)*/ Année"
        BS37ADT = "Computed Coronary Tomography Angiography (date)*"
        BS37BLS = "Computed Coronary Tomography Angiography*"
        BS37CNUM = "Computed Coronary Tomography Angiography (arterial stenosis Max % of stenosis)*/ Valeur au format texte"
        BS37CNUM_V = "Computed Coronary Tomography Angiography (arterial stenosis Max % of stenosis)*/ Valeur entière ou réelle"
        BS37DNUM = "Computed Coronary Tomography Angiography Number of affected artery/ies*/ Valeur au format texte"
        BS37DNUM_V = "Computed Coronary Tomography Angiography Number of affected artery/ies*/ Valeur entière ou réelle"
        BS38YN = "Cardiac Ultrasound*"
        BS38ADT_D = "Cardiac ultrasound (date)*/ Jour"
        BS38ADT_M = "Cardiac ultrasound (date)*/ Mois"
        BS38ADT_Y = "Cardiac ultrasound (date)*/ Année"
        BS38ADT = "Cardiac ultrasound (date)*"
        BS38BLS = "Cardiac ultrasound (Normal; Mitral valve)*"
        BS38CNUM = "CIMT (Carotid Intima Media Thickness) Right (mm)*/ Valeur au format texte"
        BS38CNUM_V = "CIMT (Carotid Intima Media Thickness) Right (mm)*/ Valeur entière ou réelle"
        BS38DNUM = "CIMT (Carotid Intima Media Thickness) Left (mm)*/ Valeur au format texte"
        BS38DNUM_V = "CIMT (Carotid Intima Media Thickness) Left (mm)*/ Valeur entière ou réelle"
        BS38ENUM = "Carotid Stenosi*/ Valeur au format texte"
        BS38ENUM_V = "Carotid Stenosi*/ Valeur entière ou réelle"
        BS38FNUM = "Peripheral Artery Stenosis*/ Valeur au format texte"
        BS38FNUM_V = "Peripheral Artery Stenosis*/ Valeur entière ou réelle"
        TTT1YN = "Lipid-lowering treatment"
        TTT2YN = "Statin"
        TTT2ALS = "If yes: Molecule"
        TTT2BLS = "Daily dose (mg)"
        TTT2CNUM = "Age at start of statin (n)/ Valeur au format texte"
        TTT2CNUM_V = "Age at start of statin (n)/ Valeur entière ou réelle"
        TTT2DLS = "If no Statin: reason for not taking statin*"
        TTT3LS_C1 = "Other lipid-lowering drugs  / ezetimibe"
        TTT3LS_C2 = "Other lipid-lowering drugs  / cholestyramine"
        TTT3LS_C3 = "Other lipid-lowering drugs  / niacin"
        TTT3LS_C4 = "Other lipid-lowering drugs  / PCSK9-inhibitor"
        TTT3LS_C5 = "Other lipid-lowering drugs  / Lomitapide"
        TTT3LS_C6 = "Other lipid-lowering drugs  / Evinacumab"
        TTT3LS_C7 = "Other lipid-lowering drugs  / LDL apheresis"
        TTT3LS_C8 = "Other lipid-lowering drugs  / phytosterols"
        TTT3LS_C9 = "Other lipid-lowering drugs  / red yeast rice"
        TTT4LS_C1 = "Other treatments*  / antiplatelet"
        TTT4LS_C2 = "Other treatments*  / nitrates"
        TTT4LS_C3 = "Other treatments*  / anticoagulant"
        TTT4LS_C4 = "Other treatments*  / beta-blocker"
        TTT4LS_C5 = "Other treatments*  / diuretic"
        TTT4LS_C6 = "Other treatments*  / caclium channel blocker"
        TTT4LS_C7 = "Other treatments*  / ACE-I/ARB"
        VS1YN = "Death*"
        VS1ALS = "Cause of death:*"
        VS1BTXT = "If Other cause, describe*"
    ;
run;