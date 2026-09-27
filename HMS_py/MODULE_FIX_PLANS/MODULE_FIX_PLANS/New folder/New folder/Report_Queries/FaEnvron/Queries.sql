# ==========================================================
# Module: FaEnvron
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: FaEnviro
-- --------------------------------------------
SELECT COUNT(*) FROM FaEnviro
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: FaEnviro
-- --------------------------------------------
select * from FaEnviro
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: LEDGER
-- --------------------------------------------
SELECT * FROM LEDGER
    WHERE SUBCODE IS NULL OR SUBCODE='';

-- --------------------------------------------
-- Query 4
-- Uses table: LEDGER
-- --------------------------------------------
UPDATE LEDGER
    SET AMTDR=0
    WHERE AMTDR IS NULL;

-- --------------------------------------------
-- Query 5
-- Uses table: LEDGER
-- --------------------------------------------
UPDATE LEDGER
    SET AMTCR=0
    WHERE AMTCR IS NULL;

-- --------------------------------------------
-- Query 6
-- Uses table: LEDGER
-- --------------------------------------------
UPDATE LEDGER
    SET NARRATION=''
    WHERE NARRATION IS NULL;

-- --------------------------------------------
-- Query 7
-- Uses table: LEDGERM
-- --------------------------------------------
UPDATE LEDGERM
    SET NARRATION=''
    WHERE NARRATION IS NULL;

-- --------------------------------------------
-- Query 8
-- Uses table: LEDGER
-- Uses table: SUBGROUP
-- --------------------------------------------
UPDATE LEDGER
    SET LEDGER.GROUPCODE=SUBGROUP.GROUPCODE,LEDGER.GROUPNATURE=SUBGROUP.GROUPNATURE FROM LEDGER
    LEFT JOIN SUBGROUP ON LEDGER.SUBCODE=SUBGROUP.SUBCODE;

-- --------------------------------------------
-- Query 9
-- Uses table: LEDGER
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT LEDGER.*,SUBGROUP.NAME FROM LEDGER
    LEFT JOIN SUBGROUP ON LEDGER.SUBCODE=SUBGROUP.SUBCODE
    WHERE SUBGROUP.NAME IS NULL;

-- --------------------------------------------
-- Query 10
-- Uses table: ACGROUP
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT * FROM SUBGROUP
    WHERE GROUPCODE NOT IN (SELECT GROUPCODE FROM ACGROUP);

-- --------------------------------------------
-- Query 11
-- Uses table: ACGROUP
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT SUBGROUP.*,ACGROUP.GROUPNATURE AS GRNAT FROM SUBGROUP
    LEFT JOIN ACGROUP ON SUBGROUP.GROUPCODE=ACGROUP.GROUPCODE
    WHERE SUBGROUP.GROUPNATURE<>ACGROUP.GROUPNATURE;

-- --------------------------------------------
-- Query 12
-- Uses table: SUBGROUP
-- --------------------------------------------
UPDATE SUBGROUP
    SET GROUPNATURE='<GROUPNATURE>'
    WHERE SUBCODE='<SUBCODE>';

-- --------------------------------------------
-- Query 13
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT * FROM SUBGROUP
    WHERE GROUPNATURE IS NULL OR GROUPNATURE='';

-- --------------------------------------------
-- Query 14
-- Uses table: ACGROUP
-- --------------------------------------------
SELECT * FROM ACGROUP
    WHERE GROUPNATURE IS NULL OR GROUPNATURE='';

-- --------------------------------------------
-- Query 15
-- Uses table: ACGROUP
-- --------------------------------------------
UPDATE ACGROUP
    SET TRADINGYN='N'
    WHERE GROUPNATURE IN ('A','L');

-- --------------------------------------------
-- Query 16
-- Uses table: ACGROUP
-- --------------------------------------------
UPDATE ACGROUP
    SET TRADINGYN='Y'
    WHERE GROUPNAME='Income (Direct)';

-- --------------------------------------------
-- Query 17
-- Uses table: ACGROUP
-- --------------------------------------------
UPDATE ACGROUP
    SET TRADINGYN='Y'
    WHERE GROUPNAME='Expense (Direct)';

-- --------------------------------------------
-- Query 18
-- Uses table: ACGROUP
-- --------------------------------------------
UPDATE ACGROUP
    SET TRADINGYN='N'
    WHERE GROUPNAME='Income (Indirect)';

-- --------------------------------------------
-- Query 19
-- Uses table: ACGROUP
-- --------------------------------------------
UPDATE ACGROUP
    SET TRADINGYN='N'
    WHERE GROUPNAME='Expense (Indirect)';

-- --------------------------------------------
-- Query 20
-- Uses table: ACGROUP
-- --------------------------------------------
UPDATE ACGROUP
    SET MainGrLen=Len(MainGrCode);

-- --------------------------------------------
-- Query 21
-- Uses table: ACGROUP
-- --------------------------------------------
SELECT * FROM ACGROUP
    WHERE TRADINGYN IS NULL OR TRADINGYN='';

-- --------------------------------------------
-- Query 22
-- Uses table: ACGROUP
-- --------------------------------------------
UPDATE ACGROUP
    SET ALIASYN='N'
    WHERE ALIASYN IS NULL OR ALIASYN='';

-- --------------------------------------------
-- Query 23
-- Uses table: ACGROUP
-- --------------------------------------------
SELECT * FROM ACGROUP
    WHERE ALIASYN IS NULL OR ALIASYN='';

-- --------------------------------------------
-- Query 24
-- Uses table: FAENVIRO
-- --------------------------------------------
SELECT * FROM FAENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 25
-- Uses table: FAENVIRO
-- --------------------------------------------
INSERT INTO FAENVIRO (AGE1) VALUES (0);

-- --------------------------------------------
-- Query 26
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Age1=0;

-- --------------------------------------------
-- Query 27
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Age2=15;

-- --------------------------------------------
-- Query 28
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Age3=30;

-- --------------------------------------------
-- Query 29
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Age4=45;

-- --------------------------------------------
-- Query 30
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Age5=60;

-- --------------------------------------------
-- Query 31
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Age6=90;

-- --------------------------------------------
-- Query 32
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Amt1=1000;

-- --------------------------------------------
-- Query 33
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Amt2=2000;

-- --------------------------------------------
-- Query 34
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Amt3=3000;

-- --------------------------------------------
-- Query 35
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Amt4=4000;

-- --------------------------------------------
-- Query 36
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Amt5=5000;

-- --------------------------------------------
-- Query 37
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Amt6=6000;

-- --------------------------------------------
-- Query 38
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaHeader1='Dear Sirs,';

-- --------------------------------------------
-- Query 39
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaHeader2=' SUB : Outstanding Letter';

-- --------------------------------------------
-- Query 40
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaHeader3='';

-- --------------------------------------------
-- Query 41
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaHeader4='We Wish to draw your immediate attention towards our bills.details of which';

-- --------------------------------------------
-- Query 42
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaHeader5='are given below for your ready reference.';

-- --------------------------------------------
-- Query 43
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaFooter1='The payment of the bills have become late and as such, we request you to';

-- --------------------------------------------
-- Query 44
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaFooter2='send payment of the same at earliest,preferably vide draft drawn at kanpur.';

-- --------------------------------------------
-- Query 45
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaFooter4='';

-- --------------------------------------------
-- Query 46
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaFooter5=' For ABC & Company';

-- --------------------------------------------
-- Query 47
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET CreditLimit='Yes';

-- --------------------------------------------
-- Query 48
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET DebitLimit='Yes';

-- --------------------------------------------
-- Query 49
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET NegativeCashBalancE='Yes';

-- --------------------------------------------
-- Query 50
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET ShowGroup='No';

-- --------------------------------------------
-- Query 51
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET DonotShowGroup='No';

-- --------------------------------------------
-- Query 52
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET ShowCurrentBalance='Yes';

-- --------------------------------------------
-- Query 53
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET VerticleBalanceSheet='No';

-- --------------------------------------------
-- Query 54
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET ShowQty='No';

-- --------------------------------------------
-- Query 55
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET ShowCityName='No';

-- --------------------------------------------
-- Query 56
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET LedDivCode='No';

-- --------------------------------------------
-- Query 57
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET LedPrefix='No';

-- --------------------------------------------
-- Query 58
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET daterfill='Y';

-- --------------------------------------------
-- Query 59
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET titlerfill='M';

-- --------------------------------------------
-- Query 60
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET pagenofill='Y';

-- --------------------------------------------
-- Query 61
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET RunPIF='Y';

-- --------------------------------------------
-- Query 62
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET FilterAC='No';

-- --------------------------------------------
-- Query 63
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET AddressHelp='Yes';

-- --------------------------------------------
-- Query 64
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET DateLock='Y';

-- --------------------------------------------
-- Query 65
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET CashBookBalance='Yes';

-- --------------------------------------------
-- Query 66
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET MonthTotal='Yes';

-- --------------------------------------------
-- Query 67
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET OnLineAdjustment='Yes';

-- --------------------------------------------
-- Query 68
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET linefiller='-';

-- --------------------------------------------
-- Query 69
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET CashBookPage='Yes';

-- --------------------------------------------
-- Query 70
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET CityNameDisp='No';

-- --------------------------------------------
-- Query 71
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET ToBy='No';

-- --------------------------------------------
-- Query 72
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET RepToBy='No';

-- --------------------------------------------
-- Query 73
-- Uses table: ACGROUP
-- --------------------------------------------
SELECT COUNT(*) FROM ACGROUP
    WHERE <Param>='<Param>';

-- --------------------------------------------
-- Query 74
-- Uses table: ACGROUP
-- --------------------------------------------
SELECT MAX(ID) AS MAXID FROM ACGROUP;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ACGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [FAENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [FaEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [LEDGER]  NOT present in visahl.sql dump (schema unknown)
-- Table [LEDGERM]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUP]  NOT present in visahl.sql dump (schema unknown)
