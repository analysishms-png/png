# ==========================================================
# Module: SundryVType
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Depart
-- Uses table: Voucher_Type
-- --------------------------------------------
Select VT.V_Type As Code,VT.Description As Name,D.Name As Department From Voucher_Type VT
    Left Join Depart D On VT.RestCode=D.Code
    Where VT.NCat IN ('RSBIL','PBR','PBC','PRR','PRC','HSBIL')
    Order by Description;

-- --------------------------------------------
-- Query 2
-- Uses table: SundryMast
-- --------------------------------------------
Select Code,Name,Nature,CalcSign,SysYN From SundryMast
    Order By Name;

-- --------------------------------------------
-- Query 3
-- Uses table: Depart
-- Uses table: SundryMast
-- Uses table: ViewSubGroup
-- Uses table: Voucher_type
-- --------------------------------------------
Select VT.Description,SP.*,SM.Name As SundryName,SG.Name As PostAcName,D.Name As Department From ((((SundryType SP
    Left Join Voucher_type VT On SP.V_Type=VT.V_Type)
    Left Join Depart D On VT.RestCode=D.Code)
    Left Join SundryMast SM On SP.SundryCode=SM.Code)
    Left Join ViewSubGroup SG On SP.PostAc=SG.SubCode)
    Where SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)='<Param>'
    Order By SNo;

-- --------------------------------------------
-- Query 4
-- Uses table: SundryMast
-- Uses table: ViewSubGroup
-- --------------------------------------------
SELECT SF.*,SM.Name as SundryName,SG.Name As PostAcName FROM ((SundryTypeFix SF
    LEFT JOIN SundryMast SM ON SF.SundryCode = SM.Code)
    LEFT JOIN ViewSubGroup SG On SF.PostAc=SG.SubCode)
    Order By SNo;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ViewSubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_type]  NOT present in visahl.sql dump (schema unknown)
