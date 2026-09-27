# ==========================================================
# Module: Inbox
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Messaging
-- --------------------------------------------
Update Messaging
    Set Cleared='Y',ClearedDate=<ClearedDate>,ClearedTime='<ClearedTime>'
    Where VType=<VType> And VNo=<VNo>;

-- --------------------------------------------
-- Query 2
-- Uses table: Messaging
-- --------------------------------------------
Update Messaging
    Set Cleared='N',ReadYN='Y',ReadDate=<ReadDate>,ReadTime='<ReadTime>'
    Where VType=<VType> And VNo=<VNo>;

-- --------------------------------------------
-- Query 3
-- Uses table: Messaging
-- --------------------------------------------
Update Messaging
    Set Cleared='N',ReadYN='N',ReadDate= Null ,ReadTime=Null
    Where VType=Update Messaging
    Set Cleared='N',ReadYN='Y',ReadDate=<ReadDate>,ReadTime=' And VNo=<VNo>;

-- --------------------------------------------
-- Query 4
-- Uses table: Messaging
-- --------------------------------------------
Update Messaging
    Set Cleared='N',ReadYN='F'
    Where VType=Update Messaging
    Set Cleared='N',ReadYN='Y',ReadDate=<ReadDate>,ReadTime=' And VNo=<VNo>;

-- --------------------------------------------
-- Query 5
-- Uses table: Messaging
-- --------------------------------------------
Update Messaging
    Set ReadYN='Y',ReadDate=<ReadDate>,ReadTime='<ReadTime>'
    Where VType='<VType>' And VNo=<VNo><Param>;

-- --------------------------------------------
-- Query 6
-- Uses table: Messaging
-- --------------------------------------------
SELECT * FROM Messaging
    Where Receiver='<UserName>' And (Cleared is Null Or Cleared='' Or Cleared='N')
    Order By VDATE DESC,VType DESC,VNo DESC,Sender;

-- --------------------------------------------
-- Query 7
-- Uses table: Messaging
-- --------------------------------------------
Select * From Messaging
    Where VType='<VType><Param>;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Messaging]  NOT present in visahl.sql dump (schema unknown)
