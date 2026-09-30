-- ============================================================================
-- 07_Inventory -- extracted VB6 SQL
-- Source: HMS_REVERSE_ENGINEERING\EXTRAS.text  (line numbers in -- comments)
-- Form:   as emitted by the VB6 client. Strings are CONCATENATED, never
--         parameterised. Placeholders '<...>' are the VB6 expressions.
-- NEVER execute against the live DB.  [VERIFIED-VB6]
--
-- 1 224 inventory SQL lines were extracted to %TEMP%\opencode\sql_inv.txt.
-- The statements below are the write-path statements (the ones a port must
-- reproduce); read/lookup statements are summarised in sql_notes.md.
-- ============================================================================


-- ----------------------------------------------------------------------------
-- A. pPBill  -- Purchase Bill  (object L70625-L80458)
-- ----------------------------------------------------------------------------

-- A1  Delete cascade for a purchase bill (order matters, no transaction seen)
-- L72488, L72489, L72490, L72493, L72497, L72501
DELETE FROM Purch2  WHERE docid = '<SearchCode>';
DELETE FROM Purch1  WHERE docid = '<SearchCode>';
DELETE FROM Sale2   WHERE docid = '<SearchCode>';
DELETE FROM SunTran WHERE docid = '<var_B8>';
DELETE FROM Stock   WHERE DocID = '<var_B8>';
DELETE FROM Ledger  WHERE DocID = '<var_B8>';

-- A2  Header insert (full column list as emitted)
-- L73560
INSERT INTO Purch1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,Party,Total,
       DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,CGST,SGST,IGST,
       AddAmt,DedAmt,RoundOff,NetAmt,U_Name,U_EntDt,U_AE,DelFlag,PartyBillNo,
       PartyBillDt,CashParty,LogSite_Code,TinNo,Remark,InvoiceType,InvoiceNo,
       Payable,BillImagePath)
VALUES ('<Docid>','<VNo>','<VDate>','<VType>','<VPrefix>','<Site_Code>', …);

-- A3  Line insert (two emitters, identical column set)
-- L73641 and L73728
INSERT INTO Purch2(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,GodCode,
       RoomNo,PartyCode,Item,DiscApp,RoundOff,UNIT, …)
VALUES ('<DocId>','<SNo>', …);

-- A4  Stock receipt lines (two emitters)
-- L73827 and L73888
INSERT INTO Stock(DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code,PartyCode,
       GodownCode,Item,ChalQty,RecdQty,RejQty, …)
VALUES ('<DocId>','<SNo>', …);

-- A5  Land value recalculation
-- L73910
UPDATE Stock SET LandVal = <val>
 WHERE DocId = '<FGrid.TextMatrix>' AND SNo = <sno>;

-- A6  Item master last-purchase stamp
-- L73775
UPDATE ItemMast SET LPurDate = <var_1B4> WHERE Code = '<Item>';

-- A7  Sale / sundry lines
-- L73948, L73997
INSERT INTO Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,
       TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LogSite_Code)
VALUES ('<DocId>', …);
INSERT INTO SunTran(DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,
       CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,
       RevCode,RestCode,DelFlag,SiteCode,LogSite_Code)
VALUES ('<DocId>', …);

-- A8  Voucher serial bump + per-user last-voucher cache
-- L74026, L74043, L74050, L74051, L74052
UPDATE Voucher_Prefix SET Start_Srl_No = <n>
 WHERE (SITE_CODE='<MemVar_1F81070>' AND LOGSITE_CODE='<MemVar_1F81078>');
UPDATE LASTVOU SET DOCID='<…>' WHERE UNAME='<user>' AND LogSite_Code='<site>';
INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code)
VALUES ('<user>','<ename>','<docid>','<site>','<dt>','<ae>','<logsite>');


-- ----------------------------------------------------------------------------
-- B. pMREntry  -- Material Receipt  (object L214603-L219214)
--     writes GIN + Stock + Voucher_Prefix
-- ----------------------------------------------------------------------------

-- B1  Delete cascade
-- L216082, L216090, L216503, L216507
DELETE FROM Stock WHERE Docid = '<SearchCode>';
DELETE FROM GIN   WHERE Docid = '<SearchCode>';
DELETE FROM Stock WHERE DocID = '<var_FC>';
DELETE FROM GIN   WHERE DocID = '<var_FC>';

-- B2  Header insert
-- L216548
INSERT INTO GIN(Docid,VNo,VDate,VType,VPrefix,Site_Code, …)
VALUES ('<Docid>','<VNo>', …);

-- B3  Stock receipt lines
-- L216615
INSERT INTO Stock(DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code,PartyCode,
       GodownCode,Item,ChalQty,RecdQty,RejQty, …)
VALUES ('<DocId>','<SNo>', …);

-- B4  Voucher serial bump
-- L216661
UPDATE Voucher_Prefix SET Start_Srl_No = <n>
 WHERE (SITE_CODE='<MemVar_1F81070>' AND LOGSITE_CODE='<MemVar_1F81078>');


-- ----------------------------------------------------------------------------
-- C. PIndent  -- Indent  (object L207648-L210585)
-- ----------------------------------------------------------------------------

-- C1  Delete cascade (client-side; 0 declared FKs)
-- L208031, L208040, L208414, L208415
DELETE FROM Indent1 WHERE DocID = '<SearchCode>';
DELETE FROM Indent  WHERE DocID = '<SearchCode>';
DELETE FROM Indent1 WHERE DocID = '<global_108>';
DELETE FROM Indent  WHERE DocID = '<global_108>';

-- C2  Header insert
-- L208436
INSERT INTO Indent(DocID,Vprefix,Site_Code,VType,VNo,Vdate,VTime,Remarks,
       U_Name,U_EntDt,U_AE,Department,LogSite_Code)
VALUES ('<DocID>','<Vprefix>','<Site_Code>','<VType>','<VNo>','<Vdate>','<VTime>',
        '<Remarks>','<U_Name>','<U_EntDt>','<U_AE>','<Department>','<LogSite_Code>');

-- C3  Line insert
-- L208486
INSERT INTO Indent1(DocID,Sno,VPrefix,Site_Code,VType,VNO,VDate,Item,Qty,Unit,
       Rate,Amount,Total,Specification, …)
VALUES ('<DocID>','<Sno>', …);

-- C4  Voucher serial bump
-- L208518
UPDATE Voucher_Prefix SET Start_Srl_No = <n>
 WHERE (SITE_CODE='<MemVar_1F81070>' AND LOGSITE_CODE='<MemVar_1F81078>');


-- ----------------------------------------------------------------------------
-- D. pReqSlip  -- Requisition Slip  (object L833098-L835728)
-- ----------------------------------------------------------------------------

-- D1  Delete cascade
-- L833870, L833871, L834199, L834204
DELETE FROM Indent  WHERE Docid = '<SearchCode>';
DELETE FROM Indent1 WHERE Docid = '<SearchCode>';
DELETE FROM INDENT  WHERE DocID = '<…>';
DELETE FROM INDENT1 WHERE DocID = '<…>';

-- D2  Header insert (note: same two tables as Indent, different column set)
-- L834236
INSERT INTO INDENT(Docid,VNo,VDate,VType,VPrefix,Site_Code,Department,Godown,
       vtime,Remarks,Company,RefDocId,U_Name,U_EntDt,U_AE,LogSite_Code)
VALUES ('<Docid>','<VNo>', …);

-- D3  Line insert
-- L834277
INSERT INTO INDENT1(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,Item,Qty,Unit,
       Rate,Amount,U_Name,U_EntDt,U_AE,ConvFactor,WtQty,WtUnit,LogSite_Code)
VALUES ('<DocId>','<SNo>', …);

-- D4  Voucher serial bump
-- L834309
UPDATE Voucher_Prefix SET Start_Srl_No = <n>
 WHERE (SITE_CODE='<MemVar_1F81070>' AND LOGSITE_CODE='<MemVar_1F81078>');


-- ----------------------------------------------------------------------------
-- E. pPOrder  -- Purchase Order  (object L210586-L214602)
-- ----------------------------------------------------------------------------

-- E1  Delete cascade
-- L212015, L212027, L212442, L212446
DELETE FROM POrder1 WHERE DocID = '<…>';
DELETE FROM POrder  WHERE DocID = '<…>';

-- E2  Header insert
-- L212494
INSERT INTO POrder(DocID,VType,VPrefix,Site_Code,VNo,VDate,PartyCode, …)
VALUES ('<DocID>','<VType>', …);

-- E3  Line insert (carries the originating indent reference)
-- L212636
INSERT INTO POrder1(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,PartyCode,
       ItemCode,Qty,Rate,Unit,IndentDocId,IndentSno, …)
VALUES ('<DocId>','<SNo>', …);

-- E4  Voucher serial bump
-- L212680
UPDATE Voucher_Prefix SET Start_Srl_No = <n>
 WHERE (SITE_CODE='<MemVar_1F81070>' AND LOGSITE_CODE='<MemVar_1F81078>');


-- ----------------------------------------------------------------------------
-- F. pGIss  -- Stock Issue on Requisition  (object L108102-L110808)
-- ----------------------------------------------------------------------------

-- F1  Delete cascade + reopen the indent
-- L109259, L109262, L109666, L109669
UPDATE Indent SET ClearYN=''
 WHERE DocId IN (SELECT DISTINCT Contradocid FROM Stock WHERE DocID='<SearchCode>');
DELETE FROM Stock WHERE DocID = '<SearchCode>';
DELETE FROM STOCK  WHERE DocID = '<global_92>';
DELETE FROM STOCK  WHERE DocID = '<var_1AC>';

-- F2  Receipt branch (QtyRec)
-- L109730
INSERT INTO STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,ContraDocid,
       ContraSNo,Item,GodownCode,DepartCode,Remarks,Company,RefDocId,Vtime,Rate,
       QtyRec,Unit,Amount,U_Name,U_EntDt,U_AE,TOTAL,CONVRATIO,RECDQTY,ACCQTY,
       RECDUNIT,LogSite_Code)
VALUES ('<global_92>', …);

-- F3  Mark the indent consumed
-- L109742
UPDATE Indent SET ClearYN = 'Y' WHERE Docid = '<FGrid.TextMatrix>';

-- F4  Issue branch (QtyIss)
-- L109789
INSERT INTO STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,ContraDocid,
       ContraSNo,Item,GodownCode,DepartCode,Remarks,Vtime,Rate,QtyIss,Unit,
       Amount,U_Name,U_EntDt,U_AE,TOTAL,CONVRATIO,ISSQTY,ISSUEUNIT,LogSite_Code)
VALUES ('<global_92>', …);

-- F5  Voucher serial bump
-- L109819
UPDATE Voucher_Prefix SET Start_Srl_No = Start_Srl_No + 1
 WHERE (SITE_CODE='<MemVar_1F81070>' AND LOGSITE_CODE='<MemVar_1F81078>');


-- ----------------------------------------------------------------------------
-- G. kClStk  -- Kitchen Closing Stock  (object L110809-L112651)
-- ----------------------------------------------------------------------------

-- G1  Delete cascade
-- L110866, L110867, L110868, L110869, L111146
DELETE FROM Ledger WHERE Docid = '<SearchCode>';
DELETE FROM Purch1 WHERE Docid = '<SearchCode>';
DELETE FROM Stock  WHERE Docid = '<SearchCode>';
DELETE FROM KClStk WHERE Docid = '<SearchCode>';
DELETE FROM KClStk WHERE DocID = '<var_114>';

-- G2  Line insert
-- L111182
INSERT INTO KClStk (DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,DepartCode,
       Item,Qty,Unit,U_Name,U_EntDt,U_AE,logSite_Code)
VALUES ('<DocId>','<SNo>','<VType>','<VPrefix>','<Site_Code>','<VNo>','<VDate>',
        '<DepartCode>','<Item>','<Qty>','<Unit>','<U_Name>','<U_EntDt>','<U_AE>',
        '<logSite_Code>');

-- G3  Voucher serial bump
-- L111212
UPDATE Voucher_Prefix SET Start_Srl_No = <n>
 WHERE (SITE_CODE='<MemVar_1F81070>' AND LOGSITE_CODE='<MemVar_1F81078>');


-- ----------------------------------------------------------------------------
-- H. FrmStockTransfer  -- Stock Transfer  (object L452276-L454520)
--     NOTE: this form is NOT opened by the "Stock Transfer" menu item
--     (that dispatch opens RsKitchenStk, EXTRAS.text L478664).
-- ----------------------------------------------------------------------------

-- H1  Delete cascade (two doc ids = source + destination)
-- L452441, L452455, L452603, L452604
DELETE FROM Stock WHERE DocID = '<var_B4>';
DELETE FROM Stock WHERE DocID = '<global_80>';
DELETE FROM Stock WHERE DocID = '<global_76>';
DELETE FROM Stock WHERE DocID = '<global_80>';

-- H2  Receipt leg
-- L452641
INSERT INTO STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,COntraDocId,
       ContraSno,DepartCode,GodownCode,Rate,RecdQty,AccQty,RecdUnit,Amount,
       ConvRatio,U_Name,U_EntDt,U_AE,QtyRec,Unit,LogSite_Code)
VALUES ('<DocID>', …);

-- H3  Issue leg
-- L452680
INSERT INTO STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,ContraDocId,
       ContraSno,DepartCode,GodownCode,Rate,IssQty,IssueUnit,Amount,ConvRatio,
       U_Name,U_EntDt,U_AE,QtyIss,Unit,LogSite_Code)
VALUES ('<DocID>', …);

-- H4  Voucher serial bumps (one per leg)
-- L452711, L452731
UPDATE Voucher_Prefix SET Start_Srl_No = <n>
 WHERE (SITE_CODE='<MemVar_1F81070>' AND LOGSITE_CODE='<MemVar_1F81078>');


-- ----------------------------------------------------------------------------
-- I. RsStoreRecEntry  -- Finish Material Receive Entry  (L587256-L589534)
--     RsKitchenStk -- kitchen stock transfer            (L589535-L592562)
--     RsKitchenMaterial -- Excise Invoice Cum Gate Pass (L605914-L609681)
-- ----------------------------------------------------------------------------

-- I1  Delete cascades
-- L587985, L588274, L590728, L590731, L591140, L591141,
-- L606542, L606545, L606547, L606552, L607035-L607038
DELETE FROM Stock          WHERE DocID = '<…>';
DELETE FROM TranTaxDetail  WHERE DocID = '<…>';
DELETE FROM TranSunDetail  WHERE DocID = '<…>';

-- I2  Receipt insert (adds ItemRestCode / ShiftCode vs. the pPBill variant)
-- L588328, L591196, L607086
INSERT INTO STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,COntraDocId,
       ContraSno,DepartCode,GodownCode,Rate,RecdQty,AccQty,RecdUnit,Amount,
       ConvRatio,U_Name,U_EntDt,U_AE,QtyRec,Unit,LogSite_Code,ItemRestCode,
       ShiftCode[, Remarks])
VALUES ('<DocID>', …);

-- I3  Issue insert
-- L591249, L607132
INSERT INTO STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,ContraDocId,
       ContraSno,DepartCode,GodownCode,Rate,IssQty,IssueUnit,Amount,ConvRatio,
       U_Name,U_EntDt,U_AE,QtyIss,Unit,LogSite_Code,ItemRestCode[, ShiftCode,
       Remarks])
VALUES ('<DocID>', …);

-- I4  Tax / sundry lines (Excise Invoice Cum Gate Pass only)
-- L607181, L607206
INSERT INTO TranTaxDetail(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,
       DepartCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,
       LOGSITE_CODE) VALUES ('<DocId>', …);
INSERT INTO TranSunDetail(DocId,Sno,vDate,Vno,Vprefix,VType,SunCode,SunAmt,
       U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) VALUES ('<DocId>', …);

-- I5  Voucher serial bumps
-- L588363, L591282, L591303, L607231, L607252
UPDATE Voucher_Prefix SET Start_Srl_No = <n>
 WHERE (SITE_CODE='<MemVar_1F81070>' AND LOGSITE_CODE='<MemVar_1F81078>');


-- ----------------------------------------------------------------------------
-- J. FrmOPStock  -- Opening Stock  (object L424548-L426551)
-- ----------------------------------------------------------------------------

-- J1  Delete then re-insert
-- L425367, L425652
DELETE FROM Stock WHERE DocId = '<var_B8>';
DELETE FROM Stock WHERE Docid = '<…>';

-- J2  Insert (has DepartCode + Specification + AccQty + ConvRatio)
-- L425700
INSERT INTO Stock (DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code,GodownCode,Item,
       DepartCode,U_Name,U_EntDt,U_AE,Specification,ChalQty,RecdQty,RejQty,
       AccQty,Unit,ConvRatio,QtyRec,Rate,RecdUnit,Amount,Logsite_Code)
VALUES ('<DocId>', …);

-- J3  Voucher serial bump
-- L425719
UPDATE Voucher_Prefix SET Start_Srl_No = <n>
 WHERE (SITE_CODE='<MemVar_1F81070>' AND LOGSITE_CODE='<MemVar_1F81078>');


-- ----------------------------------------------------------------------------
-- K. RsGravyItemEntry  -- Gravy Item Entry  (L428231-L430168)
-- ----------------------------------------------------------------------------

-- K1  Delete cascade: item master, its rates, and every stock line for it
-- L429318, L429326, L429334
DELETE FROM ItemMast WHERE Code = '<Code>';
DELETE FROM ItemRate WHERE ItemCode = '<Code>';
DELETE FROM STOCK     WHERE ITEM = '<Code>';

-- K2  Item insert (store/finish flavour, includes GravyItem flag)
-- L429598
INSERT INTO ItemMast (Code,Name,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,
       DiscApp,RateEdit,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,SaleRate,
       GravyItem,LogSite_Code)
VALUES ('<Code>','<Name>', …);

-- K3  Auto-create the unit of measure if missing
-- L429642
INSERT INTO UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code)
VALUES ('<Name>','<Site_Code>', …);

-- K4  BOM maintenance used by the same screen family
-- L427280, L427525, L427577, L427590
DELETE FROM BOM WHERE FinItem = '<FinItem>' AND RestCode = '<RestCode>';
INSERT INTO BOM(Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,Cost,Waste,Total,
       U_Name,U_EntDt,U_AE,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode)
VALUES ('<Site_Code>', …);
UPDATE ItemMast SET IssueUnit = Unit, convRatio = 1, PurchRate = <rate>,
       LPurRate = <rate> WHERE Code = '<Code>';


-- ----------------------------------------------------------------------------
-- L. Material Mgmt Setup masters (hex &HC)
-- ----------------------------------------------------------------------------

-- L1  Party Master  -- FrmParty  (L19849-L22995)
-- L22391 (table name is itself a parameter: "Insert Into " & arg_10)
INSERT INTO <SubGroup|Ledger-table>(Site_Code,SubCode,Name,NameHelp,GroupCode,
       GroupNature,Nature,ConPrefix,ConPerson,Add1,Add2,Add3,CityCode,Phone,
       Mobile,Fax,EMail,CSTNo,LSTNo,PANNo,Remark,U_Name,U_EntDt,U_AE,
       LOGSITE_CODE,TINNo,GSTIN,DealerType,ActiveYN) VALUES ('<Site_Code>', …);
-- L22652 / L22877
INSERT INTO Ledger(DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode, …, NARRATION,
       U_Name,U_EntDt,U_AE,v_Prefix,GROUPCODE,GROUPNATURE,LOGSITE_CODE)
VALUES ('<DocId>', …);
-- L22793 / L22953 / L22959
DELETE FROM Ledger   WHERE V_Type = 'F_AO' AND SubCode = '<SubCode>';
DELETE FROM SubGroup WHERE SUBCode = '<SubCode>';
-- L22605 / L22835
UPDATE Voucher_Prefix SET Start_Srl_No = Start_Srl_No + 1
 WHERE SITE_CODE = '<MemVar_1F81070>';

-- L2  Department  -- DepartMast  (L179642-L181005)
-- L179844, L179845, L180129, L180153, L180170
DELETE FROM Depart    WHERE Code = '<SearchCode>';
DELETE FROM RevMast   WHERE Code = '<SearchCode>';
INSERT INTO Depart(Code,Name,RestType,BackColor,ShortName,OutletYN,Site_Code,
       U_Name,U_EntDt,U_AE,Printer,StoreType,LOGSITE_cODE,PrintType)
VALUES ('<Code>','<Name>', …);
INSERT INTO GodownMast(Code,Name,ShortName,U_Name,U_EntDt,U_AE,SYSYN,SITE_CODE,
       LOGSITE_CODE) VALUES ('<Code>','<Name>', …);
INSERT INTO RevMast(Code,DeskCode,Name,ShortName,SysYN,Type,AppMode,Site_Code,
       U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('<Code>', …);
-- L180234-L180317  DepartMast also seeds voucher types + prefixes for
-- 'HKISS','HKIR','HKROP','HKOP' (House Keeping issue/receipt/opening vouchers)
INSERT INTO Voucher_type (NCat,Category,V_Type,Contratype,Description, … ,RestCode,
       Site_Code,LogSite_Code) VALUES ('HKISS','HKIR', …);
INSERT INTO Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,
       U_EntDt,LogSite_Code) VALUES ('<V_Type>', …);

-- L3  Item Group  -- FrmItemGroupMast / FrmItemGroupMastRaw / HallItemGroupMast
-- L51167, L51434, L51453, L51949, L51970
DELETE FROM ItemGrp WHERE Code = '<Code>';
INSERT INTO ItemGrp(Code,Name,Type,RestCode,Site_Code,U_Name,U_EntDt,U_AE,
       LOGSITE_CODE) VALUES ('<Code>','<Name>','<Type>','<RestCode>', …);
UPDATE ItemGrp SET Name = '<Name>' WHERE Code = '<Code>';
-- duplicate-name guard, two variants:
SELECT Count(*) FROM ItemGrp
 WHERE (LOGSITE_CODE='<site>' OR LOGSITE_CODE='HO') AND Name = '<Name>';
SELECT Count(*) FROM ItemGrp
 WHERE (LOGSITE_CODE='<site>' OR LOGSITE_CODE='HO') AND (Name = '<Name>' …);

-- L4  Item Category  -- FrmItemCatRaw / FrmItemCatMast
-- L129943, L129953, L130245, L130272, L130332
DELETE FROM ItemCatMast WHERE Code = '<Code>';
DELETE FROM RevMast      WHERE Name  = '<Name>';
INSERT INTO ItemCatMast(Code,Name,RestCode,RoundOff,AcName,TaxStru,Flag,CatType,
       OutletYN,U_Name,U_EntDt,U_AE,Drcr,RevCode,SITE_CODE,LOGSITE_CODE)
VALUES ('<Code>','<Name>', …);
INSERT INTO RevMast(Code,Name,ShortName,SysYN,AppMode,FlagAMR,FlagType,Site_Code,
       U_Name,U_EntDt,U_AE,FieldType,DeskCode,TaxStru,Type,AcCode,LOGSITE_CODE)
VALUES ('<Code>', …);

-- L5  Item Entry  -- FrmItemMastRaw  (L127293-L129628)
-- L128457, L128888, L128987, L129004
DELETE FROM ItemMast WHERE Code = '<Code>' AND RestCode = '<RestCode>';
INSERT INTO ItemMast (Code,Name,CommodityCode,Unit,ItemGroup,Type,PurchRate,
       MinStock,MaxStock,ReStock,ItemCatCode,LPURRATE,Site_Code,U_Name,U_EntDt,
       U_AE,DispCode,ConvRatio,IssueUnit,DiscApp,RestCode,ConsumptionItem,
       LPurDate,LOGSITE_CODE,FinItem,ActiveYN,ItemType,BarCode,LabelName,
       LabelQty,LabelRemark1,LabelRemark2,LabelRemark3,LabelRemark4,LabelRemark5)
VALUES ('<Code>','<Name>', …);
INSERT INTO UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)
VALUES ('<Name>','<Site_Code>', …);

-- L6  Item List  -- FrmItemMast  (L612894-L613795)
-- L613261, L613510
DELETE FROM Item WHERE Code = '<Code>';
INSERT INTO Item(Code,Name,BarCode,CommodityCode,Site_Code,U_Name,U_EntDt,U_AE,
       LOGSITE_CODE) VALUES ('<Code>','<Name>','<BarCode>','<CommodityCode>', …);

-- L7  Consumption Master  -- FrmConsumMast  (L56138-L58097)
-- L56876, L57158, L57212
DELETE FROM BOM WHERE BOM.FinItem + BOM.RestCode + CONVERT(VARCHAR(11),BOM.AppDate,103)
       = '<key>';
DELETE FROM BOM WHERE FinItem = '<FinItem>';
INSERT INTO BOM(Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,Cost,Waste,Total,
       U_Name,U_EntDt,U_AE,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode)
VALUES ('<Site_Code>', …);

-- L8  Location Master  -- Godown  (L206837-L207647)
-- L206928, L207115   (dispatch key "Location Master" has NO menu row -- see IN-7)
DELETE FROM GodownMast WHERE Code = '<SearchCode>';
INSERT INTO Godownmast(Code,Name,ShortName,U_Name,U_EntDt,U_AE,site_code,
       logsite_code,SysYN) VALUES ('<Code>','<Name>','<ShortName>', …);


-- ----------------------------------------------------------------------------
-- M. Read / lookup statements (representative -- 1 224 lines total)
-- ----------------------------------------------------------------------------

-- M1  Supplier picker (Party Master) -- L20444, L21375
SELECT SubCode As SearchCode, SubCode, Site_Code, Name, LogSite_Code
  FROM SubGroup
 WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO')
   AND NATURE = 'Supplier'
 ORDER BY Name;

SELECT SubCode As SearchCode, Name, G.GroupName As UnderGroup, ConPerson,
       Add1 As Address1, C.CityName, Phone, Mobile, FAX, EMail, PANNo As PAN,
       GSTIN, Active = CASE WHEN ActiveYN = 0 THEN 'No' ELSE 'Yes' END, Remark
  FROM ((SubGroup S LEFT JOIN AcGroup G ON (S.GroupCode = G.GroupCode))
        LEFT JOIN City C ON (S.CityCode = C.CityCode))
 WHERE S.NATURE = 'Supplier' AND G.AliasYN <> 'Y'
   AND (S.LOGSITE_CODE = '<site>' OR S.LOGSITE_CODE = 'HO');

-- M2  Voucher prefix / number method -- L21932
SELECT VT.Number_Method, VP.V_Type, VP.Date_From, VP.Prefix, VP.Start_Srl_No
  FROM Voucher_Type VT
  LEFT JOIN Voucher_Prefix VP ON VT.V_Type = VP.V_Type
 WHERE VT.SITE_CODE = '<MemVar_1F81070>';

-- M3  Item group picker with department join -- L50927, L50935, L51308
SELECT ItemGrp.Code, ItemGrp.Name, Depart.Name as BanquetNaME
  FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code
 WHERE (Itemgrp.LOGSITE_CODE = '<site>' OR Itemgrp.LOGSITE_CODE = 'HO');

SELECT IG.Code, IG.Name As ItemGroup, IG.Type, D.Name As RestName
  FROM ItemGrp IG LEFT JOIN Depart D ON IG.RestCode = D.Code
 WHERE (IG.LOGSITE_CODE = '<site>' OR IG.LOGSITE_CODE = 'HO');

-- M4  Department filters used by the inventory pickers -- L50959, L50966, L50975
SELECT Code, Name FROM Depart
 WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO')
   AND OutletYN = 'Y' AND RestType IN ('Banquet') ORDER BY Name;

SELECT Code, Name FROM Depart
 WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO')
   AND OutletYN = 'Y' AND RestType IN ('Outlet','Room Service','Production')
 ORDER BY Name;

SELECT Code, Name FROM Depart
 WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO') AND OutletYN = 'N';

-- M5  Item group code allocation (MAX + SUBSTRING) -- L51415
SELECT IsNull(MAX(CAST(SUBSTRING(Code,3,4) AS INT)),1) + 1 AS MyCode
  FROM ItemGrp
 WHERE ISNUMERIC(SUBSTRING(Code,3,4)) = 1 AND SITE_CODE = '<site>';

-- M6  Item group duplicate-name guard -- L51949, L51970
SELECT Count(*) FROM ItemGrp
 WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO') AND Name = '<Name>';

-- M7  Party audit fields -- L22088
SELECT U_Name, U_AE, U_EntDt FROM Subgroup WHERE SubCode = '<SubCode>';

-- M8  Party outstanding -- L22131, L22140, L22157
SELECT ISNULL(SUM(AmtCr),0) FROM Ledger WHERE V_Type = 'F_AO' AND SubCode = '<…>';
SELECT ISNULL(SUM(AmtDr),0) FROM Ledger WHERE V_Type = 'F_AO' AND SubCode = '<…>';
SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode = '<…>';

-- M9  Ledger register -- L22258, L22267
SELECT Ledger.Narration, Ledger.DocId, Ledger.V_SNo, Ledger.V_Type, Ledger.V_No,
       Ledger.V_Date, Ledger.Site_Code, Ledger.SubCode, Ledger.AmtCr, Ledger.AmtDr,
       Ledger.Chq_No, Ledger.Chq_Date, Site.Site_Desc
  FROM Ledger LEFT JOIN Site ON Ledger.LogSite_Code = Site.Site_Code
 WHERE LOGSITE_CODE = '<site>';


-- ============================================================================
-- Cross-references
--   sql_notes.md      table / column / PK / row-count inventory
--   reports.md        report key -> file mapping
--   notes.md          findings IN-1 .. IN-15
--   ../../18_Database columns_dictionary.txt, tables_rowcounts.txt,
--                     indexes_pks.txt, foreign_keys.txt (0 bytes -> 0 FKs)
-- ============================================================================
