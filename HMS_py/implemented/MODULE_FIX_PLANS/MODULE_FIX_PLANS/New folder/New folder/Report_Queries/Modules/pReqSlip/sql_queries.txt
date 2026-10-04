# ==========================================================
# Module: pReqSlip
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Enviro
-- --------------------------------------------
Select ReqCompWise,BanquetKitchen from Enviro
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 2
-- Uses table: Voucher_Type
-- --------------------------------------------
Select Description,V_Type From Voucher_Type
    Where NCat='RQS';

-- --------------------------------------------
-- Query 3
-- Uses table: Enviro
-- Uses table: GodownMast
-- --------------------------------------------
Select E.PurchaseGodown,G.Name as GodownName From Enviro E
    Left Join GodownMast G on E.PurchaseGodown=G.Code
    Where E.Logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: Indent
-- --------------------------------------------
Delete From Indent
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 5
-- Uses table: HallBook
-- Uses table: HallSale1
-- --------------------------------------------
Select DocId As Code, Cast(VNo as varchar) Name,PartyName Party,Vdate From HallBook
    Where Docid not in (Select BookDocId from HallSale1)
    Order by VNo;

-- --------------------------------------------
-- Query 6
-- Uses table: GodownMast
-- Uses table: Indent
-- Uses table: Subgroup
-- --------------------------------------------
Select DISTINCT I1.vtime,I1.DOCID,I1.VDATE,I1.Remarks, G.Name as DepartName,G.Code as DepartCode, G1.Name as Godown,G1.Code as GodownCode,I1.Vno,I1.Vtype,I1.VPrefix,I1.Company,Sub.Name as Compname,I1.RefDocId From Indent I1
    left join GodownMast G on G.Code=I1.Department
    left join GodownMast G1 on G1.Code=I1.Godown
    left join Subgroup Sub on I1.Company=Sub.SubCode
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 7
-- Uses table: HallBook
-- --------------------------------------------
Select DocId As Code, Cast(VNo as varchar) Name,PartyName Party,Vdate From HallBook
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 8
-- Uses table: Indent1
-- Uses table: ItemMast
-- --------------------------------------------
Select I1.*,I.Name as ItemName From Indent1 I1
    Left Join ItemMast I On I1.Item=I.Code And I.ItemType='Store'
    Where I1.Docid='<Docid>';

-- --------------------------------------------
-- Query 9
-- Uses table: DateLock
-- --------------------------------------------
Select Name, Srno,IsNull(SDate,'') as SDate,IsNull(EDate,'') as EDate From DateLock
    Where Name='Purchase Bill Entry';

-- --------------------------------------------
-- Query 10
-- Uses table: Depart
-- --------------------------------------------
Select Code,D.Name as Name From Depart D
    Order by Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DateLock]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [GodownMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallBook]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [Indent]  NOT present in visahl.sql dump (schema unknown)
-- Table [Indent1]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
