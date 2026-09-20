# ==========================================================
# Module: SmartCardLostReIssue
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: MemberFamily
-- Uses table: SmartCardRegistration
-- Uses table: Subgroup
-- --------------------------------------------
SELECT R.Code As SearchCode,R.*,MF.PicPath,MF.SigPath,S.Name MemberName From SmartCardRegistration R
    Left Join MemberFamily MF On R.Code=MF.CardRegId
    Left Join Subgroup S On R.MemberCode=S.SubCode
    where R.Site_Code='<Site_Code>' And (R.LOGSITE_CODE='<LogSiteCode>' or R.LOGSITE_CODE='HO')
    Order By R.IssDate,R.Code;

-- --------------------------------------------
-- Query 2
-- Uses table: MemberFamily
-- Uses table: SmartCardReIssueDetail
-- Uses table: SmartCardRegistration
-- Uses table: Subgroup
-- --------------------------------------------
SELECT SCL.Trans_Id As Searchcode,SCL.Trans_Id,SCL.CardRegId,Convert(Varchar(11),SCL.IssDate,103) VDate,SCL.Remark,SCL.U_Name,SCL.U_EntDt,SCR.CurrBal,SCR.SecurBal,SCL.IssDate,SCR.CardType,SCR.Name,SCR.CardNo,SCR.Addr,SCR.Phone,SCL.ValidUpto,SCR.BlockedYN,SCL.HW_Id,SCL.OldHW_Id,SCL.OldIssDate,SCL.OldValidUpto,SCR.MemberCode,MF.PicPath,MF.SigPath,S.Name MemberName From SmartCardReIssueDetail SCL
    Inner Join SmartCardRegistration SCR On SCL.CardRegId=SCR.Code
    Left Join MemberFamily MF On SCR.Code=MF.CardRegId
    Left Join Subgroup S On SCR.MemberCode=S.SubCode And SCL.LogSite_Code='<LogSiteCode>'
    Order By SCL.Trans_Id;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [MemberFamily]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardReIssueDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardRegistration]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
