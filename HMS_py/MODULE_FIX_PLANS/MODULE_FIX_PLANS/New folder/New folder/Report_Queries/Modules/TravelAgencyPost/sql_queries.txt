# ==========================================================
# Module: TravelAgencyPost
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SUBGROUP
-- Uses table: Travel1
-- --------------------------------------------
SELECT T1.*,SG.Name AS TravelAgencyName FROM Travel1 T1
    LEFT JOIN SUBGROUP SG ON T1.TravelAgency=SG.SUBCode
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 2
-- Uses table: GuestProf
-- Uses table: Travel2
-- --------------------------------------------
Select T2.*,GF.Name As GuestName From Travel2 T2
    Left Join GuestProf GF ON T2.Guest=GF.Code
    where T2.DocId='<DocId>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [Travel1]  NOT present in visahl.sql dump (schema unknown)
-- Table [Travel2]  NOT present in visahl.sql dump (schema unknown)
