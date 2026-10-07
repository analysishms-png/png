# ==========================================================
# Module: FacilitySundry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Enviro
-- --------------------------------------------
Select SundryPassword from Enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: Depart
-- Uses table: RevMast
-- Uses table: SundryMast
-- Uses table: Voucher_type
-- --------------------------------------------
Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName,D.Name As Department From ((((SundryType SP
    Left Join Voucher_type VT On SP.V_Type=VT.V_Type)
    Left Join Depart D On VT.RestCode=D.Code)
    Left Join SundryMast SM On SP.SundryCode=SM.Code)
    Left Join RevMast RM On SP.RevCode=RM.Code)
    Where SP.V_Type+Space(6-len(SP.V_Type))+'**'+Format(SP.AppDate,'dd/mm/yyyy')='<Param>'
    Order By SP.SNo;

-- --------------------------------------------
-- Query 3
-- Uses table: Depart
-- Uses table: RevMast
-- Uses table: SundryMast
-- Uses table: Voucher_type
-- --------------------------------------------
Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName,D.Name As Department From ((((SundryType SP
    Left Join Voucher_type VT On SP.V_Type=VT.V_Type)
    Left Join Depart D On VT.RestCode=D.Code)
    Left Join SundryMast SM On SP.SundryCode=SM.Code)
    Left Join RevMast RM On SP.RevCode=RM.Code)
    Where SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)='<Param>'
    Order By SP.SNo;

-- --------------------------------------------
-- Query 4
-- Uses table: SundryMast
-- Uses table: SundryTypeFix
-- --------------------------------------------
SELECT SF.*,SM.Name as SundryName FROM SundryTypeFix SF
    inner JOIN SundryMast SM ON (SF.SundryCode = SM.Code and SF.LogSite_Code=Sm.LogSite_Code)
    where (SF.LOGSITE_CODE='<LogSiteCode>')
    Order By SNo;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryTypeFix]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_type]  NOT present in visahl.sql dump (schema unknown)
