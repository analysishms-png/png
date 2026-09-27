# ==========================================================
# Module: rInventRepView
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
-- Uses table: FAEnviro
-- --------------------------------------------
Select * From FAEnviro;

-- --------------------------------------------
-- Query 3
-- Uses table: Subgroup
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT P.VType,P.VNo,P.VDate,P.CashParty AS PartyName,Subgroup.TINNO,P.Total,(P.AddAmt) As Addition ,(P.DiscAmt),P.DedAmt As Deduction,P.Tax as TaxAmt,P.ServiceCharge as SerAmt,P.NetAmt,P.RoundOff,VT.NCAT,VT.Description FROM (Purch1 P
    Inner Join Voucher_Type VT On (P.VType=VT.V_Type and P.LogSite_Code=VT.LogSite_Code))
    inner join Subgroup on P.Party=Subgroup.subcode <Param>
    Order By P.VDATE, P.VType,P.VNo;

-- --------------------------------------------
-- Query 4
-- Uses table: ITEMGRP
-- Uses table: ItemMast
-- Uses table: Purch2
-- Uses table: SubGroup
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT P.Docid,P.VType,P.VNo,CASE WHEN P.VTYPE IN ('PBPC','EXPC') THEN P.TINNO ELSE ISNULL(SG.GSTIN,'') END AS TINNO,P.VDate,SG.Name AS PartyName,P.Total,(P.AddAmt) As Addition,(P.DedAmt) As Deduction ,(P.DiscAmt) As DiscAmt,P2.TaxAmt as TaxAmt,0 As IGST,0 As CGST,0 As SGST,P.ServiceCharge as SurAmt,P.NetAmt,P.PartyBillNo,I.Name As Item,IG.Name As ItemGroup,SG1.Name As AcName,P2.SNo,P2.RecdQty,P2.IssQty,P2.RecdUnit,P2.IssueUnit,P2.ItemRate as Rate,P2.Amount,VT.NCAT FROM ((((((Purch1 P
    Inner Join Voucher_Type VT On (P.VType=VT.V_Type and P.LogSite_Code=VT.LogSite_Code))
    Inner Join SubGroup SG ON P.Party=SG.Subcode)
    Inner Join Purch2 P2 On P.DocId=P2.DocId)
    Inner Join ItemMast I On P2.Item=I.Code And I.ItemType='Store')
    INNER JOIN ITEMGRP IG ON I.ITEMGROUP=IG.CODE)
    left Join SubGroup SG1 On SG1.SubCode=P2.AcCode)<Param>
    Order By P.VDATE, P.DocId;

-- --------------------------------------------
-- Query 5
-- Uses table: ITEMGRP
-- Uses table: ItemMast
-- Uses table: Purch2
-- Uses table: SubGroup
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT P.Docid,P.VType,P.VNo,CASE WHEN P.VTYPE IN ('PBPC','EXPC') THEN P.TINNO ELSE ISNULL(SG.GSTIN,'') END AS TINNO,P.VDate,SG.Name AS PartyName,P.Total,(P.AddAmt) As Addition,(P.DedAmt) As Deduction ,(P.DiscAmt) As DiscAmt,P.Tax as TaxAmt,P.IGST,P.CGST,P.SGST,P.ServiceCharge as SurAmt,P.NetAmt,P.PartyBillNo,I.Name As Item,IG.Name As ItemGroup,SG1.Name As AcName,P2.SNo,P2.RecdQty,P2.IssQty,P2.RecdUnit,P2.IssueUnit,P2.ItemRate as Rate,P2.Amount,VT.NCAT FROM ((((((Purch1 P
    Inner Join Voucher_Type VT On (P.VType=VT.V_Type and P.LogSite_Code=VT.LogSite_Code))
    Inner Join SubGroup SG ON P.Party=SG.Subcode)
    Inner Join Purch2 P2 On P.DocId=P2.DocId)
    Inner Join ItemMast I On P2.Item=I.Code And I.ItemType='Store')
    INNER JOIN ITEMGRP IG ON I.ITEMGROUP=IG.CODE)
    left Join SubGroup SG1 On SG1.SubCode=P2.AcCode)<Param>
    Order By P.VDATE, P.DocId;

-- --------------------------------------------
-- Query 6
-- Uses table: Depart
-- Uses table: Indent1
-- Uses table: ItemMast
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT I.VNo, I.VDate, I.Remarks, D.Name as Department, IM.Name as ItemName, I1.Specification, I1.Qty, I1.Unit, I1.Rate, I1.Amount FROM ((Indent AS I
    Inner JOIN Indent1 AS I1 ON I.DocId = I1.DocId)
    Inner JOIN Depart AS D ON I.Department =D.Code)
    Inner JOIN ItemMast AS IM ON I1.Item = IM.Code And IM.ItemType='Store' <Param> AND I.VType in (select V_Type from Voucher_Type
    where NCAT='PIND');

-- --------------------------------------------
-- Query 7
-- Uses table: ItemMast
-- Uses table: POrder1
-- Uses table: SubGroup
-- --------------------------------------------
SELECT PO.VNo, PO.VDate, I.Name as ItemName, PO1.Specification, PO1.Unit, PO1.Qty, PO1.Rate, PO1.Amount, S.Name as PartyName FROM ((POrder AS PO
    INNER JOIN POrder1 AS PO1 ON PO.Docid = PO1.Docid)
    INNER JOIN ItemMast AS I ON PO1.ItemCode = I.Code And I.ItemType='Store')
    INNER JOIN SubGroup AS S ON PO.PartyCode = S.SubCode <Param>;

-- --------------------------------------------
-- Query 8
-- Uses table: Itemrate
-- --------------------------------------------
Select IsNull(Max(Rate),0) From (Select Top 1 Rate from Itemrate
    Where AppDate<=<Param> And ItemCode='<ItemCode>'
    Order By AppDate desc<Param>;

-- --------------------------------------------
-- Query 9
-- Uses table: ItemMast
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT S.Item,Max(IM.ItemGroup) As ItemGroup FROM (STOCK S
    Inner Join ItemMast IM on IM.COde=S.Item And IM.ItemType='Store')
    Inner Join Voucher_Type VT ON (VT.V_Type=S.VType And VT.LogSite_Code=S.LogSite_Code) <Param><Param>'<Param><Param> And VT.NCat IN ('RQR','KSISS','KMISS')
    GROUP BY S.Item
    Order By S.Item;

-- --------------------------------------------
-- Query 10
-- Uses table: ItemMast
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT S.Item,Max(IM.Name) As ItemName,SUM(QTYISS) AS Qty,Max(IM.LPurRate) AS LPurRate,SUM(QTYISS)*Max(IM.LPurRate) As TotCost FROM (STOCK S
    Inner Join ItemMast IM on IM.COde=S.Item And IM.ItemType='Store')
    Inner Join Voucher_Type VT ON (VT.V_Type=S.VType And VT.LogSite_Code=S.LogSite_Code) <Param><Param>'<Param> And VT.NCat IN ('RQR','KSISS','KMISS')
    GROUP BY S.Item
    Order By TotCost Desc;

-- --------------------------------------------
-- Query 11
-- Uses table: ItemMast
-- Uses table: Voucher_Type
-- --------------------------------------------
Select Sum(TotCost) from (SELECT SUM(QTYISS)*Max(IM.LPurRate) As TotCost FROM (STOCK S
    Inner Join ItemMast IM on IM.COde=S.Item And IM.ItemType='Store')
    Inner Join Voucher_Type VT ON (VT.V_Type=S.VType And VT.LogSite_Code=S.LogSite_Code) <Param><Param>'<Param> And VT.NCat IN ('RQR','KSISS','KMISS')
    GROUP BY S.Item) Q;

-- --------------------------------------------
-- Query 12
-- Uses table: ItemMast
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT S.VDate,S.Item,MAX(IM.Name) As ItemName,SUM(S.QtyIss) As IssQty,SUM(S.Amount) AS AMOUNT FROM (Stock S
    Inner Join ItemMast IM on IM.COde=S.Item And IM.ItemType='Store')
    Inner Join Voucher_Type VT ON (VT.V_Type=S.VType And Vt.LogSite_Code=S.LogSite_Code) <Param> And VT.NCat IN ('RQR','KSISS','KMISS')
    Group By VDate,S.Item
    Order By MAX(IM.Name),VDate;

-- --------------------------------------------
-- Query 13
-- Uses table: ItemMast
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT S.Item,SUM(QTYISS) AS TOTQTY,SUM(S.Amount) AS TOTAMT FROM (STOCK S
    Inner Join ItemMast IM on IM.COde=S.Item And IM.ItemType='Store')
    Inner Join Voucher_Type VT ON (VT.V_Type=S.VType And VT.LogSite_Code=S.LogSite_Code) <Param> And VT.NCat IN ('RQR','KSISS','KMISS')
    GROUP BY MONTH(VDate),S.Item;

-- --------------------------------------------
-- Query 14
-- Uses table: ItemMast
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT S.Item,MAX(IM.Name) As ItemName,SUM(QTYISS) AS QTY,SUM(S.Amount) AS AMT FROM ((STOCK S
    Left Join ItemMast IM on IM.COde=S.Item)
    Left Join Voucher_Type VT ON VT.V_Type=S.VType) <Param> And VT.NCat IN ('RQI')
    GROUP BY S.Item;

-- --------------------------------------------
-- Query 15
-- Uses table: Purch1
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT P.VDate,CashAmt=CASE VT.NCAT WHEN 'PBC' THEN Sum(P.NetAmt) ELSE 0 END,CashRetAmt=CASE VT.NCAT WHEN 'PRC' THEN Sum(P.NetAmt) ELSE 0 END,CreditAmt=CASE VT.NCAT WHEN 'PBR' THEN Sum(P.NetAmt) ELSE 0 END,CreditRetAmt=CASE VT.NCAT WHEN 'PRR' THEN Sum(P.NetAmt) ELSE 0 END FROM Purch1 P
    Inner Join Voucher_Type VT On (P.VType=VT.V_Type and P.LogSite_Code=VT.LogSite_Code) <Param>
    Group By P.VDate,VT.NCAT
    order By VDate;

-- --------------------------------------------
-- Query 16
-- Uses table: Depart
-- --------------------------------------------
Select Max(RestType) from Depart
    Where LogSite_Code='<LogSite_Code>' And Code IN (<Param>);

-- --------------------------------------------
-- Query 17
-- Uses table: ItemGrp
-- --------------------------------------------
Select '' As O,Name,Code From ItemGrp
    Where Logsite_Code='<Logsite_Code>' and Type ='<Type><Param>' And Restcode='<Restcode>PURC'
    Order By Name;

-- --------------------------------------------
-- Query 18
-- Uses table: ItemGrp
-- --------------------------------------------
Select '' As O,Name,Code From ItemGrp
    Where Logsite_Code='<Logsite_Code>' And Restcode='<Restcode>PURC'
    Order By Name;

-- --------------------------------------------
-- Query 19
-- Uses table: ShiftMast
-- --------------------------------------------
Select '' As O,Name,Code From ShiftMast
    Where Logsite_Code='<Logsite_Code>'
    Order By Name;

-- --------------------------------------------
-- Query 20
-- Uses table: RevMast
-- --------------------------------------------
SELECT DISTINCT RevMast.Name, RevMast.code,P.TaxPer FROM (Sale2 AS P
    INNER JOIN RevMast ON P.TaxCode = RevMast.Code)
    where P.DELFLAG<>'D'<Param><Param> And <Param>
    Order by P.TaxPer;

-- --------------------------------------------
-- Query 21
-- Uses table: RevMast
-- --------------------------------------------
SELECT DISTINCT RevMast.Name, RevMast.code,S.TaxPer FROM (Sale2 AS S
    INNER JOIN RevMast ON S.TaxCode = RevMast.Code)
    where S.DELFLAG<>'D' <Param><Param>)
    Order by S.TaxPer Desc;

-- --------------------------------------------
-- Query 22
-- Uses table: Enviro
-- --------------------------------------------
Select PurchaseTaxVat,SaleTaxVat From Enviro
    Where LogSite_Code='<LogSite_Code>';

-- --------------------------------------------
-- Query 23
-- Uses table: RevMast
-- --------------------------------------------
SELECT DISTINCT RevMast.Name, RevMast.code,P.TaxPer FROM (Sale2 AS P
    INNER JOIN RevMast ON P.TaxCode = RevMast.Code)
    where P.DELFLAG<>'D'<Param><Param> And <Param> And P.TaxCode In ('<Param>')
    Order by P.TaxPer;

-- --------------------------------------------
-- Query 24
-- Uses table: RevMast
-- --------------------------------------------
SELECT DISTINCT RevMast.Name, RevMast.code,P.TaxPer FROM (Sale2 AS P
    INNER JOIN RevMast ON P.TaxCode = RevMast.Code)
    where P.DELFLAG<>'D'<Param><Param> And <Param> And P.TaxCode Not In ('<Param>')
    Order by P.TaxPer;

-- --------------------------------------------
-- Query 25
-- Uses table: RevMast
-- --------------------------------------------
SELECT DISTINCT RevMast.Name, RevMast.code,S.TaxPer FROM (Sale2 AS S
    INNER JOIN RevMast ON S.TaxCode = RevMast.Code)
    where S.DELFLAG<>'D' Define Purchase Tax (VAT) In Purchase Parameter Settings.<Param>) And S.TaxCode='<TaxCode>'
    Order by S.TaxPer Desc;

-- --------------------------------------------
-- Query 26
-- Uses table: RevMast
-- --------------------------------------------
SELECT DISTINCT RevMast.Name, RevMast.code,S.TaxPer FROM (Sale2 AS S
    INNER JOIN RevMast ON S.TaxCode = RevMast.Code)
    where S.DELFLAG<>'D' Define Purchase Tax (VAT) In Purchase Parameter Settings.<Param>)
    Order by S.TaxPer Desc;

-- --------------------------------------------
-- Query 27
-- Uses table: RevMast
-- --------------------------------------------
SELECT DISTINCT RevMast.Name, RevMast.code,S.TaxPer FROM (Sale2 AS S
    INNER JOIN RevMast ON S.TaxCode = RevMast.Code)
    where S.DELFLAG<>'D' Define Purchase Tax (VAT) In Purchase Parameter Settings.<Param>) And S.TaxCode Not In ('<Param>')
    Order by S.TaxPer Desc;

-- --------------------------------------------
-- Query 28
-- Uses table: RevMast
-- --------------------------------------------
SELECT DISTINCT RevMast.Name, RevMast.code FROM (Sale2 AS P
    INNER JOIN RevMast ON P.TaxCode = RevMast.Code)
    where P.DELFLAG<>'D'<Param><Param> And <Param>
    Order by RevMast.Name;

-- --------------------------------------------
-- Query 29
-- Uses table: ItemMast
-- --------------------------------------------
SELECT MAX(I.Name) As FinishItem,S.FinItem,S.FinQty,MAX(IR.Name) As RItemName,S.RawItem,MAX(IR.Type) AS Type,SUM(S.RawQty) AS SemiQty FROM ((BOM S
    Left Join ItemMast I On S.FinItem=I.Code And S.RestCode=I.RestCode)
    Left Join ItemMast IR On S.RawItem=IR.Code)
    Where FinItem='<FinItem>'
    GROUP BY S.FinItem,S.FinQty,S.RawItem
    Order By Max(I.Name);



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [FAEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [ITEMGRP]  NOT present in visahl.sql dump (schema unknown)
-- Table [Indent1]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Itemrate]  NOT present in visahl.sql dump (schema unknown)
-- Table [POrder1]  NOT present in visahl.sql dump (schema unknown)
-- Table [Purch1]  NOT present in visahl.sql dump (schema unknown)
-- Table [Purch2]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ShiftMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Site]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
