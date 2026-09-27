# ==========================================================
# Module: Outbox
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Messaging
-- --------------------------------------------
Select max(VNo) From Messaging
    Where VType='INBOX';

-- --------------------------------------------
-- Query 2
-- Uses table: Messaging
-- --------------------------------------------
SELECT * FROM Messaging
    Where Sender='<UserName>' And (ReadYN is Null Or ReadYN='' Or ReadYN='N')
    Order By VDATE DESC,VType DESC,VNo DESC,Sender;

-- --------------------------------------------
-- Query 3
-- Uses table: Messaging
-- --------------------------------------------
Select * From Messaging
    Where VType='<VType><Param>;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Messaging]  NOT present in visahl.sql dump (schema unknown)
