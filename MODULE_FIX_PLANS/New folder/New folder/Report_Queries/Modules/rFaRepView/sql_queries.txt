# ==========================================================
# Module: rFaRepView
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Site
-- --------------------------------------------
Select Site_Code AS Code,Site_Desc AS NAME From Site
    Order by Site_Desc;

-- --------------------------------------------
-- Query 2
-- Uses table: FAENVIRO
-- --------------------------------------------
SELECT * FROM FAENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: AcGroup
-- --------------------------------------------
Select GROUPCODE AS Code,GROUPNAME AS NAME From AcGroup
    WHERE AliasYN<> 'Y'
    order by GroupName;

-- --------------------------------------------
-- Query 4
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT SUBCODE,NAME FROM SUBGROUP
    Where SUBCODE IN (<Param>)
    ORDER BY SUBCODE;

-- --------------------------------------------
-- Query 5
-- Uses table: Ledger
-- Uses table: ledgerRef
-- --------------------------------------------
SELECT Ledger.*,LEDGERREF.AGREFTYPE FROM Ledger
    LEFT JOIN ledgerRef ON (Ledger.V_SNo=ledgerRef.V_SNo) AND (Ledger.DocId = ledgerRef.DocId) <Param> And LEDGER.Site_Code='<LogSiteCode>'
    ORDER BY Ledger.SUBCODE,Ledger.V_DATE,Ledger.DOCId,Ledger.V_SNO;

-- --------------------------------------------
-- Query 6
-- Uses table: LedgerRef
-- --------------------------------------------
SELECT LedgerRef.* FROM LedgerRef
    Where SUBCODE IN (<Param>)
    ORDER BY SUBCode,V_DATE,DocId,V_SNO;

-- --------------------------------------------
-- Query 7
-- Uses table: FaEnviro
-- --------------------------------------------
SELECT * FROM FaEnviro
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 8
-- Uses table: ACGROUP
-- --------------------------------------------
SELECT MAINGRCODE,GroupNature FROM ACGROUP
    WHERE GROUPCODE='<GROUPCODE>' AND ALIASYN='N';

-- --------------------------------------------
-- Query 9
-- Uses table: ACGROUP
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT SUBGROUP.SUBCODE,SUBGROUP.GROUPCODE AS CODE,SUBGROUP.NAME,ACGROUP.GroupName FROM SUBGROUP
    LEFT JOIN ACGROUP ON SUBGROUP.GROUPCODE=ACGROUP.GROUPCODE
    WHERE ACGROUP.ALIASYN='N' AND (SUBGROUP.LOGSITE_CODE='<LogSiteCode>' OR SUBGROUP.LOGSITE_CODE='HO') AND ACGROUP.GROUPCODE IN (<Param>)
    ORDER BY SUBGROUP.NAME;

-- --------------------------------------------
-- Query 10
-- Uses table: PARTY_LIST
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT V_DATE,credit,debit,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,CLG_DATE,NARR AS NARRATION,PARTY_NAME,PARTY_LIST.ADD1,PARTY_LIST.ADD2,CITY_NAME,SUBGROUP.NAME AS CONTRA_NAME FROM (VIEWLEDGER
    LEFT JOIN SUBGROUP ON VIEWLEDGER.party1=SUBGROUP.SUBCODE)
    LEFT JOIN PARTY_LIST ON VIEWLEDGER.party=PARTY_LIST.SUBCODE <Param> AND <Param> AND CHQ_NO<> '' AND CHQ_NO IS NOT NULL AND CLG_DATE IS NULL And VIEWLEDGER.LOGSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 11
-- Uses table: PARTY_LIST
-- --------------------------------------------
SELECT GROUPNATURE FROM PARTY_LIST
    WHERE SUBCODE='<SUBCODE>';

-- --------------------------------------------
-- Query 12
-- Uses table: FAENVIRO
-- --------------------------------------------
SELECT RepToBy FROM FAENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 13
-- Uses table: VIEWLEDGER
-- Uses table: subgroup
-- --------------------------------------------
SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER
    LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE
    WHERE VIEWLEDGER.DOCID='<DOCID>' AND V_SNO<><Param>;

-- --------------------------------------------
-- Query 14
-- Uses table: ACGROUP
-- Uses table: LEDGER
-- Uses table: VIEWSUBGROUP
-- --------------------------------------------
SELECT 2 AS TT,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(BB.MAINGRCODE) AS mgrcode,MAX(BB.GROUPNAME) AS GRName,MAX(BB.GroupCode) As GRCode,MAX(AA.MAINGRCODE) AS mgrcodeSUB,MAX(AA.GROUPNAME) AS GRNameSUB ,MAX(AA.GROUPCODE) AS GRCodeSUB FROM ((ACGROUP AA
    INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE)))
    LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE)
    LEFT JOIN ACGROUP BB ON BB.MAINGRCODE=LEFT(AA.MAINGRCODE ,3)
    Where ((V_DATE>=<Param> AND V_DATE BETWEEN <Param> AND <Param> AND VIEWSUBGROUP.GroupNature IN ('E','R')) OR (V_DATE BETWEEN <Param> AND <Param> AND VIEWSUBGROUP.GroupNature NOT IN ('E','R')<Param> AND BB.AliasYN='N'
    GROUP BY AA.MAINGRCODE,AA.GROUPCODE
    HAVING LEN(AA.MAINGRCODE)=6;

-- --------------------------------------------
-- Query 15
-- Uses table: PARTY_LIST
-- --------------------------------------------
SELECT GROUPNATURE,groupCode as CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST <Param><Param>
    ORDER BY NAME;

-- --------------------------------------------
-- Query 16
-- Uses table: PARTY_LIST
-- --------------------------------------------
SELECT GROUPNATURE,CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST
    WHERE SUBCODE IN (' AND V_TYPE IN (<Param>','<Param>')
    ORDER BY NAME;

-- --------------------------------------------
-- Query 17
-- Uses table: PARTY_LIST
-- --------------------------------------------
SELECT GROUPNATURE,groupCode as CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST
    WHERE CODE IN (<Param>)
    ORDER BY NAME;

-- --------------------------------------------
-- Query 18
-- Uses table: PARTY_LIST
-- --------------------------------------------
SELECT GROUPNATURE,CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST
    WHERE CODE=' AND V_TYPE IN (<Param>' AND NAME BETWEEN '<Param>' AND '<Param>'
    ORDER BY NAME;

-- --------------------------------------------
-- Query 19
-- Uses table: VIEWLEDGER
-- Uses table: subgroup
-- --------------------------------------------
SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER
    LEFT JOIN subgroup ON VIEWLEDGER.PARTY1=subgroup.SUBCODE
    WHERE VIEWLEDGER.PARTY IN (<Param>;

-- --------------------------------------------
-- Query 20
-- Uses table: VIEWLEDGER
-- --------------------------------------------
SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER
    WHERE PARTY= AND AND V_DATE <=<Param> AND CREDIT >0 <Param><Param>;

-- --------------------------------------------
-- Query 21
-- Uses table: VIEWLEDGER
-- --------------------------------------------
SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER
    WHERE PARTY= AND AND V_DATE<<Param> AND DEBIT>0 <Param><Param>;

-- --------------------------------------------
-- Query 22
-- Uses table: VIEWLEDGER
-- --------------------------------------------
SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER
    WHERE PARTY= AND AND V_DATE>=<Param> AND V_DATE<SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER
    WHERE PARTY= AND AND V_DATE<<Param> AND DEBIT>0 <Param> AND CREDIT >0 <Param><Param>;

-- --------------------------------------------
-- Query 23
-- Uses table: VIEWLEDGER
-- --------------------------------------------
SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER
    WHERE PARTY= AND AND V_DATE <=<Param> AND DEBIT >0 <Param><Param>;

-- --------------------------------------------
-- Query 24
-- Uses table: VIEWLEDGER
-- --------------------------------------------
SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER
    WHERE PARTY= AND AND V_DATE<<Param> AND CREDIT>0 <Param><Param>;

-- --------------------------------------------
-- Query 25
-- Uses table: VIEWLEDGER
-- --------------------------------------------
SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER
    WHERE PARTY= AND AND V_DATE BETWEEN <Param> AND SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER
    WHERE PARTY= AND AND V_DATE<<Param> AND CREDIT>0 <Param> AND DEBIT >0 <Param><Param>;

-- --------------------------------------------
-- Query 26
-- Uses table: VIEWLEDGER
-- --------------------------------------------
SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER
    WHERE PARTY= AND AND V_DATE>=<Param> AND V_DATE<SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER
    WHERE PARTY= AND AND V_DATE<<Param> AND CREDIT>0 <Param> AND CREDIT>0 <Param><Param>;

-- --------------------------------------------
-- Query 27
-- Uses table: SUBGROUP
-- Uses table: VIEWLEDGER
-- --------------------------------------------
SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER
    LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY1
    WHERE VIEWLEDGER.PARTY=SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER
    WHERE PARTY= AND AND V_DATE BETWEEN <Param> AND SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER
    WHERE PARTY= AND AND V_DATE<<Param> AND CREDIT>0 <Param> AND VIEWLEDGER.CREDIT>0 <Param>
    ORDER BY V_DATE,V_TYPE,V_NO;

-- --------------------------------------------
-- Query 28
-- Uses table: LEDGERADJ
-- --------------------------------------------
Select SubCode+'-'+DocId1+'-'+ LTRIM(RTRIM(V_SNo1)) AS SCODE,SUBCODE,DocId1,V_SNo1,SUM(CR) AS ADJCr FROM LEDGERADJ
    GROUP BY SUBCODE,DocId1,V_SNo1;

-- --------------------------------------------
-- Query 29
-- Uses table: LEDGERADJ
-- --------------------------------------------
Select SubCode+'-'+DocId2+'-'+ LTRIM(RTRIM(V_SNo2)) AS SCODE,SUBCODE,DocId2,V_SNo2,SUM(CR) AS ADJDr FROM LEDGERADJ
    GROUP BY SUBCODE,DocId2,V_SNo2;

-- --------------------------------------------
-- Query 30
-- Uses table: AcGroup
-- Uses table: SubGroup
-- --------------------------------------------
Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B
    Left Join SubGroup SG ON B.AcCode=SG.SubCode)
    Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B
    Left Join SubGroup SG ON B.AcCode=SG.SubCode)
    Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B
    Left Join SubGroup SG ON B.AcCode=SG.SubCode)
    Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B
    Left Join SubGroup SG ON B.AcCode=SG.SubCode)
    Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B
    Left Join SubGroup SG ON B.AcCode=SG.SubCode)
    Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B
    Left Join SubGroup SG ON B.AcCode=SG.SubCode)
    Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B
    Left Join SubGroup SG ON B.AcCode=SG.SubCode)
    Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) <Param><Param>') <Param>') <Param>') <Param>') <Param>') <Param>') <Param>')
    Order By B.BudgetCrAmt,B.BudgetDrAmt;

-- --------------------------------------------
-- Query 31
-- Uses table: AcGroup
-- Uses table: SubGroup
-- --------------------------------------------
Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B
    Left Join SubGroup SG ON B.AcCode=SG.SubCode)
    Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode)
    Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('<Param>;

-- --------------------------------------------
-- Query 32
-- Uses table: AcGroup
-- Uses table: SubGroup
-- --------------------------------------------
Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B
    Left Join SubGroup SG ON B.AcCode=SG.SubCode)
    Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) <Param>
    Order By B.BudgetDrAmt,B.BudgetCrAmt;

-- --------------------------------------------
-- Query 33
-- Uses table: AcGroup
-- Uses table: SubGroup
-- --------------------------------------------
Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B
    Left Join SubGroup SG ON B.AcCode=SG.SubCode)
    Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) <Param>;

-- --------------------------------------------
-- Query 34
-- Uses table: AcGroup
-- Uses table: SubGroup
-- --------------------------------------------
Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B
    Left Join SubGroup SG ON B.AcCode=SG.SubCode)
    Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode)
    Where CStr(FromDate) +'-'+ CStr(ToDate) in ('<Param>')
    Order By B.BudgetDrAmt,B.BudgetCrAmt;

-- --------------------------------------------
-- Query 35
-- Uses table: ACGROUP
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT SUBGROUP.SUBCODE,SUBGROUP.GROUPCODE AS CODE,SUBGROUP.NAME,SUBGROUP.CONPERSON,ACGROUP.GroupName FROM SUBGROUP
    LEFT JOIN ACGROUP ON SUBGROUP.GROUPCODE=ACGROUP.GROUPCODE
    WHERE ACGROUP.ALIASYN='N' AND (SUBGROUP.LOGSITE_CODE='<LogSiteCode>' OR SUBGROUP.LOGSITE_CODE='HO') AND ACGROUP.GROUPCODE IN (<Param>)
    ORDER BY SUBGROUP.NAME;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ACGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [AcGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [FAENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [FaEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [LEDGER]  NOT present in visahl.sql dump (schema unknown)
-- Table [LEDGERADJ]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [LedgerRef]  NOT present in visahl.sql dump (schema unknown)
-- Table [PARTY_LIST]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [Site]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [VIEWLEDGER]  NOT present in visahl.sql dump (schema unknown)
-- Table [VIEWSUBGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [ledgerRef]  NOT present in visahl.sql dump (schema unknown)
-- Table [subgroup]  NOT present in visahl.sql dump (schema unknown)
