-- =====================================================================================
-- 08_POS :: extracted / reconstructed SQL
-- =====================================================================================
-- Evidence rules for this file:
--   [VERIFIED-VB6]  = SQL text lifted verbatim (or re-assembled from adjacent concatenation
--                     fragments) out of the decompiled VB6 source EXTRAS.text. The line
--                     number in the comment is the EXTRAS.text line where the literal starts.
--   [VERIFIED-SQL]  = schema / index / row-count fact taken from the 18_Database extracts.
--   [INFERRED]      = column list completed from the table definition in
--                     18_Database\columns_dictionary.txt because the VB6 literal was split
--                     across many concatenation lines or elided by the decompiler.
--   [UNKNOWN]       = placeholder, what was searched is named inline.
--
-- NOTHING IN THIS FILE HAS BEEN EXECUTED. These are static extractions from source code
-- and from metadata dumps only.
--
-- Safety: no credentials, passwords or GUI-secret values are reproduced anywhere below.
-- =====================================================================================


-- =====================================================================================
-- KOT :: RsKOTEntry  (object 'Object: RsKOTEntry, EXTRAS.text L59416)
-- =====================================================================================

-- [VERIFIED-VB6] EXTRAS.text L62660 (statement text) executed at L62675
Insert Into KOT(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,
  Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,Remarks,
  ContraDocID,ContraSno,Logsite_Code,NCType,Printed,FreeSno,SchemeCode,Description,Party,
  ItemRestCode,TokenNo,GuarAtt)
Values ('<DocId>', <VNo>, '<VDate>', '<VType>', '<VPrefix>', '<Site_Code>', '<RestCode>',
        '<RoomCat>', '<RoomType>', '<RoomNo>', 'N', <Sno>, '<VTime>', '<Item>', <Qty>,
        '<VoidYN>', '<Waiter>', '<U_Name>', '<U_EntDt>', '<U_AE>', <NCKOT>, <Rate>, <Amount>,
        '<Reasons>', '<Remarks>', '<ContraDocID>', <ContraSno>, '<Logsite_Code>', '<NCType>',
        <Printed>, '<FreeSno>', '<SchemeCode>', '<Description>', '<Party>', '<ItemRestCode>',
        '<TokenNo>', <GuarAtt>);

-- Pending flag on the KOT header is 'N' at insert time; the literal "'N'" is
-- hard-coded in the concatenation (EXTRAS.text L62659-region, loc_1B18AB6).

-- [VERIFIED-VB6] EXTRAS.text L61894 - audit copy of every KOT row
Insert Into KOTLog (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,
  Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,Rate,Amount,Reasons,
  DELFLAG,LogSite_Code)
Values (<same as KOT>);

-- [VERIFIED-VB6] EXTRAS.text L62437, L62452 - sequence maintenance on the log
Update KOTLog Set SeqNo = (Select IsNull(Max(SeqNo),0) + 1 From KOTLog) Where ...;

-- [VERIFIED-VB6] EXTRAS.text L62574 - non-chargeable KOT flag
Update KOT Set NCKOT = <NCKOT> Where DocId = '<DocId>' And Sno = <Sno>;

-- [VERIFIED-VB6] EXTRAS.text L60604, L61761 - outstanding (pending) KOT guard
Select Max(GuarAtt) ... From KOT Where Pending = 'Y' And RestCode = '<RestCode>' ...;

-- [VERIFIED-VB6] EXTRAS.text L67378, L67384 - mark printed after KOT print
Update KOT Set PRINTED = 'Y' Where DocId = '<DocId>';

-- [VERIFIED-VB6] EXTRAS.text L614295 (RsTokenEntry) - print config for the outlet
Select CKOTPrintYN, NoOfKot From Depart Where Code = '<RestCode>';

-- [VERIFIED-VB6] EXTRAS.text L614351 (RsTokenEntry) - printer routing
Select distinct(Depart.ShortName), Depart.Name, Depart.Code, Depart.Printer, Depart.PrintType
From Depart Where Depart.Code = '<Code>';


-- =====================================================================================
-- Table Change :: RsTbChange (object 'Object: RsTbChange, EXTRAS.text L609682)
-- =====================================================================================

-- [VERIFIED-VB6] EXTRAS.text L609811, L609898 - move an open KOT to another table/room
Update Kot Set ROOMNO = '<NewRoomNo>',
               U_Name1 = '<User>',
               U_EntDt1 = <Now>,
               U_AE1   = 'E'
Where DocId = '<DocId>';

-- [VERIFIED-VB6] EXTRAS.text L609990 / L610012 / L610032
-- Tables are RoomMast rows typed 'TB' - there is NO TableMast table. [VERIFIED-SQL]
Select Name from roommast
Where (LOGSITE_CODE = '<Site>') and TYPE = 'TB' AND code = '<Code>';

-- [VERIFIED-VB6] EXTRAS.text L610165
Select Kotyn from Depart where Code = '<RestCode>';

-- [VERIFIED-VB6] EXTRAS.text L610174 / L610183 - occupied tables for the outlet
Select T.Code as Code, T.Name, AA.WAITERNAME, T.RestCode
From RoomMast T
Left Join (
    Select Distinct ROOMNO, KOT.DOCID, WAITER, WAITER.NAME AS WAITERNAME
    From KOT Left Join WAITER On (WAITER.CODE = KOT.WAITER)
    Where KOT.RestCode = '<RestCode>'
) AA On AA.ROOMNO = T.Code
Where T.TYPE = 'TB';


-- =====================================================================================
-- Sale Bill :: RSSaleBill (object 'Object: RSSaleBill, EXTRAS.text L320025)
-- =====================================================================================

-- [VERIFIED-VB6] EXTRAS.text L324095 - clear previous log for this document
Delete From Sale1Log Where DocId = '<DocId>';

-- [VERIFIED-VB6] EXTRAS.text L324253 - re-save wipes the header first
Delete From Sale1 Where DocId = '<DocId>';

-- [VERIFIED-VB6] EXTRAS.text L324352 - header, cash/customer variant
Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,FolioNo,FolioNoDocId,
  RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,
  ServiceTax,CGST,SGST,IGST,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,TokenNo,U_Name,U_EntDt,U_AE,
  VTime,Waiter,DelFlag,LOGSITE_CODE,Remark,DiscRemark,EditRemark,PhoneNo,CustName,Addr1,Addr2,
  CashRecd,BookNo,CardNo,AU_Name,AU_EntDt)
Values ( ... );

-- [VERIFIED-VB6] EXTRAS.text L324430 - header, party/credit variant (adds Party, Advance, Redemption)
Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,
  Party,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,ServiceTax,CGST,SGST,
  IGST,AddAmt,Advance,Redemption,DedAmt,RoundOff,NetAmt,KOTNO,TokenNo,U_Name,U_EntDt,U_AE,VTime,
  Waiter,DelFlag,LOGSITE_CODE,Remark,DiscRemark,EditRemark,PhoneNo,CustName,Addr1,Addr2,CashRecd,
  BookNo,CardNo,AU_Name,AU_EntDt)
Values ( ... );

-- [VERIFIED-VB6] EXTRAS.text L324754 - tax lines (one row per TaxCode)
Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,
  TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE)
Values ( ... );

-- [VERIFIED-VB6] EXTRAS.text L324811 - bill-sundry / charge lines
Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,PartyCode,SunCode,Limit,DispName,ROff,CalcFormula,
  SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,
  LOGSITE_CODE)
Values ( ... );

-- [VERIFIED-VB6] EXTRAS.text L324830 (also L359182, L431898, L431913)
-- closing the bill releases the KOT set
Update KOT Set Pending = 'N',
               U_Name1  = '<User>',
               U_EntDt1 = <Now>,
               U_AE1    = 'E'
Where docid = '<DocId>';

-- [VERIFIED-VB6] EXTRAS.text L323023
Update Sale1 set DelFlag = 'D' Where DocId = '<DocId>';

-- [VERIFIED-VB6] EXTRAS.text L329344, L329374 - housekeeping sweep
Delete From Sale1 Where IsNull(DelFlag,'') In ('D','Y') And Vdate = <Date>;


-- =====================================================================================
-- pPBill (room-service / alternate bill path)  object 'Object: pPBill, EXTRAS.text L70625
-- =====================================================================================

-- [VERIFIED-VB6] EXTRAS.text L73948
Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,
  TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LogSite_Code)
Values ( ... );

-- [VERIFIED-VB6] EXTRAS.text L73997
Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,
  Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LogSite_Code)
Values ( ... );


-- =====================================================================================
-- Split Sale Bill :: RsSaleBillSplit (object 'Object: RsSaleBillSplit, EXTRAS.text L465230)
-- =====================================================================================

-- [VERIFIED-VB6] EXTRAS.text L468372 / L468414
Insert Into Sale1(Docid,VNo,VDate,VTime,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,
  GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,AddAmt,DedAmt,RoundOff,NetAmt,
  KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag)
Values ( ... );

-- [VERIFIED-VB6] EXTRAS.text L468557
Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,
  TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag)
Values ( ... );

-- [VERIFIED-VB6] EXTRAS.text L468610
Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,
  Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode)
Values ( ... );


-- =====================================================================================
-- Settlement / Payment Receive :: RsPaymentReceice (object 'Object: RsPaymentReceice,
-- EXTRAS.text L982220)
-- =====================================================================================

-- [VERIFIED-VB6] EXTRAS.text L983400, L983777 - re-save wipe
Delete From PayCharge Where DocId = '<DocId>' And ...;

-- [VERIFIED-VB6] EXTRAS.text L983860, L983926 - tender lines
Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTime,GuestProf,EmpCode,
  CompCode,Comments,PayCode,PayType,AmtCr,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,
  CardHolder,ChqNo,ChqDate,ExpDate,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,BillAmount,
  ContraDocID,DbtChkIn,TaxPer,OnAmt,Split,Bill_No,MarkEntry,ModeSet,SettleDate,BatchNo,
  OldBill_No,PlanCharge,FixedChargeCode,RelatedFolioNo,FolioNoDocid,LogSite_Code,RefNo,PlanCode,
  SeqNo,RelatedFolionoDocId,RefDocId,Remarks,AU_Name,AU_EntDt,TaxCondAmt,TaxStru,AgAc,TxnNo)
Values ( ... );
-- column list above is completed from 18_Database\columns_dictionary.txt (PayCharge = 61 cols) [INFERRED]

-- [VERIFIED-VB6] EXTRAS.text L983800
Insert Into LEDGERADJ (...) Values ( ... );

-- [VERIFIED-VB6] EXTRAS.text L984012 - advance the voucher serial for this prefix
Update Voucher_Prefix Set Start_Srl_No = <NextSrl> Where ...;

-- [VERIFIED-VB6] EXTRAS.text L479937-region (ModuleAdd) and L698-region (MDI toolbar)
-- voucher class for settlement is derived from the outlet short name:
Select 'B' + ShortName as Adv_Type From Depart Where Code = '<RestCode>';
-- -> used as PayCharge.Vtype / Voucher_Type.V_Type for the settlement document.

-- [VERIFIED-VB6] EXTRAS.text L698-region (loc_142C14A / loc_142C1B5)
-- settlement is blocked for production outlets
Select Count(*) From Depart Where Code = '<RestCode>' And RestType = 'Production';
-- if > 0  ->  MsgBox "Operation is not allowed for Perticular Department"  and Exit Sub


-- =====================================================================================
-- Bill deletion utility :: FrmPOSBillDeletion (object 'Object: FrmPOSBillDeletion,
-- EXTRAS.text L513954)
-- =====================================================================================

-- [VERIFIED-VB6] EXTRAS.text L513982
Delete from TempPosDel;

-- [VERIFIED-VB6] EXTRAS.text L513984, L514387, L514398
Insert into TempPosDel(DocId, Vno, Vdate)
Select DocId, Vno, Vdate from Sale1 Where ...;

-- [VERIFIED-VB6] EXTRAS.text L514244 - outlet picker (note: the OR binds loosely here)
Select ... From Depart
Where OutletYN = 'Y' and RestType <> 'Banquet' OR RestType = 'Kitchen';

-- [VERIFIED-VB6] EXTRAS.text L514898 - bills that have no POS settlement rows
Select ... From Sale1 S
Left Join PayCharge P On P.DocId = S.DocId
Where ... Not In ('PPOS','IPOS');


-- =====================================================================================
-- Denomination :: FrmDenomination (object 'Object: FrmDenomination, EXTRAS.text L602545)
-- =====================================================================================

-- [VERIFIED-VB6] EXTRAS.text L602595
Update DenominationDetail Set Delflag = 'Y', Reason = '<Reason>' Where Sno = <Sno>;

-- [VERIFIED-VB6] EXTRAS.text L602893
Select IsNull(Max(Sno),0)+1 from DenominationDetail WHERE LOGSITE_CODE = '<Site>';

-- [VERIFIED-VB6] EXTRAS.text L602939
Delete From DenominationDetail WHERE Sno = <SerialNo> And LOGSITE_CODE = '<Site>';

-- [VERIFIED-VB6] EXTRAS.text L603819
Select * from DenominationDetail where Sno = '<SearchCode>' Order by SNO1;


-- =====================================================================================
-- POS Status :: RsStatusScreen (object 'Object: RsStatusScreen, EXTRAS.text L611306)
-- =====================================================================================

-- [VERIFIED-VB6] EXTRAS.text L611554 / L611557
Select Code, Name, RestType
From Depart
Where (LOGSITE_CODE = '<Site>' or LOGSITE_CODE = 'HO')
  And Resttype IN ('Outlet','Room Service')
Order By RestType, Name;

-- [VERIFIED-VB6] EXTRAS.text L612350 / L612351 / L612376 / L612377 - live outlet totals
-- (reassembled from the concatenation fragments; FULL OUTER JOIN joins bill totals to running KOT)
Select Q.*, D.Name Outlet, Q.RoomNo Room
From (
    Select S1.GuarAtt, S1.Total, S1.Taxable, S1.NonTaxable, S1.NetAmt, S1.Tax, S1.ServiceCharge,
           S1.ServiceTax, S1.DiscAmt, K.Amount RunKOTAmt,
           Case When IsNull(S1.RoomNo,'') = '' Then K.RoomNo Else S1.RoomNo End RoomNo,
           Case When IsNull(S1.RestCode,'') = '' Then K.RestCode Else S1.RestCode End RestCode
    From (
        Select RestCode, '' RoomNo, Sum(GuarAtt) GuarAtt, Sum(Total) Total, Sum(Taxable) Taxable,
               Sum(NonTaxable) NonTaxable, Sum(NetAmt) NetAmt, Sum(Tax) Tax,
               Sum(ServiceCharge) ServiceCharge, Sum(ServiceTax) ServiceTax, Sum(DiscAmt) DiscAmt
        From Sale1
        Where (LOGSITE_CODE = '<Site>') AND (DELFLAG='N' or isnull(DELFLAG,'') = '')
        Group By RestCode
    ) S1
    Full Outer Join (
        Select RestCode, '' RoomNo, Sum(Amount) Amount
        From KOT
        Where (LOGSITE_CODE = '<Site>') AND (Pending = 'Y')
        Group By RestCode
    ) K On K.RestCode = S1.RestCode
) Q
Left Join Depart D On D.Code = Q.RestCode;

-- [VERIFIED-VB6] EXTRAS.text L612355 / L612381 - grand total wrapper
Select Sum(Tax) Tax, Sum(DiscAmt) DiscAmt, Sum(NetAmt) NetAmt, Sum(RunKotAmt) RunKotAmt,
       Sum(ServiceCharge) ServiceCharge, Sum(ServiceTax) ServiceTax, Sum(Total) Total
From ( <the query above> ) Z;
--
-- Reconstruction notes for the block above:
--   * The Sale1 half (Where LOGSITE_CODE=..., DELFLAG='N' or isnull(DELFLAG,'')='', Group By RestCode)
--     is verbatim from EXTRAS.text L612350/L612351.  [VERIFIED-VB6]
--   * The KOT half is verbatim up to "From KOT Where (LOGSITE_CODE='" (EXTRAS.text L612351/L612377);
--     the remaining predicate and the FULL OUTER JOIN ON condition were truncated by the decompiler
--     and are reconstructed as "Pending = 'Y'" / "On K.RestCode = S1.RestCode".  [INFERRED]
--   * Case-expr RoomNo/RestCode coalescing is verbatim (EXTRAS.text L612350/L612376).  [VERIFIED-VB6]


-- =====================================================================================
-- Token Entry :: RsTokenEntry (object 'Object: RsTokenEntry, EXTRAS.text L613796)
-- =====================================================================================

-- [VERIFIED-VB6] EXTRAS.text L613846 - current service session
Select Name From SessionMast
WHERE (LOGSITE_CODE = '<Site>' or LOGSITE_CODE = 'HO')
  AND <CurrentTime> BETWEEN FromTime AND ToTime;

-- [VERIFIED-VB6] EXTRAS.text L613991 / L613997 / L614110
Select count(*) from Stock Where KOTDocId = '<KOTDocId>' and <Flag> <> 'N';
Select VNo   from Stock Where KOTDocId = '<KOTDocId>';

-- [VERIFIED-VB6] EXTRAS.text L614044
Insert Into KOTLog (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,
  Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,Rate,Amount,Reasons,
  DELFLAG,LogSite_Code)
Values ( ... );

-- [VERIFIED-VB6] EXTRAS.text L614055
Update TOKEN Set DelFlag = 'Y', U_Name1 = '<User>', U_EntDt1 = <Now> Where DocId = '<DocId>';

-- [VERIFIED-VB6] EXTRAS.text L614102
Select count(*) from TOKEN Where DocId = '<DocId>' And IsNull(ContraDocId,'') <> '';

-- [VERIFIED-VB6] EXTRAS.text L614176 - token search list
Select Distinct K.DocId as SearchCode, K.VNo as [No],
       CAST(K.VDate AS VARCHAR(11)) as [Date], K.VTime as [Time],
       K.ROOMNO AS TableNo, H.Name as Restaurant, W.Name as Waiter
From (((TOKEN K
    Inner Join Voucher_Type V On (K.VType = V.V_Type And K.Logsite_Code = V.LogSite_Code))
    Inner Join Depart H On K.RESTCODE = H.Code)
    Inner Join Waiter W On W.COde = K.Waiter)
WHERE (K.LOGSITE_CODE = '<Site>') ...;

-- [VERIFIED-VB6] EXTRAS.text L614187 - token voucher prefix = 'N' + outlet short name
Select 'N' + ShortName From Depart Where Code = '<RestCode>';

-- [VERIFIED-VB6] EXTRAS.text L614295
Select CKOTPrintYN, NoOfKot From Depart Where Code = '<RestCode>';

-- [VERIFIED-VB6] EXTRAS.text L614316 - token header for printing
Select DISTINCT k.Vtime, k.VNo, k.VDate, W.name as WaiterName, k.RoomNo as TableNo,
       k.NCTOKEN, k.Remarks, k.TokenNo, k.U_Name, k.ContraDocId, D.ShortName
From ((TOKEN K Left Join Waiter W on K.Waiter = W.Code)
      Left Join Depart D on D.Code = K.RestCode)
Where K.DocID = '<DocId>';

-- [VERIFIED-VB6] EXTRAS.text L614318 - token lines for printing
Select K.Sno, I.Name as ItemName, K.Qty, Depart.ShortName
From (TOKEN K Left Join ItemMast I on K.Item = I.Code And K.ItemRestCode = I.RestCode)
     LEFT JOIN Depart ON I.Kitchen = Depart.Code
Where K.DocID = '<DocId>';


-- =====================================================================================
-- Bill Lookup :: RSSaleBillDisplay (object 'Object: RSSaleBillDisplay, EXTRAS.text L508415)
-- SELECT only - 0 INSERT/UPDATE/DELETE in L508415-L513953.
-- =====================================================================================

-- [VERIFIED-VB6] EXTRAS.text L509102
Select * from PrinterSetup where SITE_CODE = '<Site>' AND RestCode = '<RestCode>';

-- [VERIFIED-VB6] EXTRAS.text L509130
Select RateInclTax from depart where code = '<RestCode>';

-- [VERIFIED-VB6] EXTRAS.text L509139 / L509153
Select KOtYn from depart where Code = '<RestCode>';

-- [VERIFIED-VB6] EXTRAS.text L509157 - bill search
Select S.DocId as SearchCode, S.DocID, S.SITE_CODE, S.LOGSITE_CODE
From Sale1 S
INNER JOIN VOUCHER_TYPE V ON (S.VTYPE = V.V_TYPE AND S.LOGSITE_CODE = V.LOGSITE_CODE)
WHERE S.LOGSITE_CODE = '<Site>' ...;

-- [VERIFIED-VB6] EXTRAS.text L509234
Select V_Type As Code, Description As Name, NCat From Voucher_Type WHERE V_Type = '<VType>';


-- =====================================================================================
-- Order Booking / Advance voucher classes  (ModuleAdd dispatch, EXTRAS.text L479361-L479387)
-- =====================================================================================

-- [VERIFIED-VB6] EXTRAS.text L479387-region (loc_1E36387) and L698-region (loc_142C3CE)
Select V_Type from Voucher_Type Where Ncat = 'ORDER' and RestCode = '<RestCode>';

-- [VERIFIED-VB6] EXTRAS.text L479363-region (loc_1E36531) and L698-region (loc_142C52A)
Select V_Type from Voucher_Type Where Ncat = 'PADV' And RestCode = '<RestCode>';


-- =====================================================================================
-- POS masters (module "C" group "Point of Sale Setup")
-- =====================================================================================

-- [VERIFIED-VB6] EXTRAS.text L477840-region - FrmItemGroupMast is launched with the filter property
--   var_90.RestType = "='Finish'"
-- (property assignment in ModuleAdd, not a SQL literal; FrmItemGroupMast itself applies it)
-- [INFERRED] the underlying statement is therefore equivalent to
Select * From ItemGrp Where RestType = 'Finish' ...;

-- [VERIFIED-VB6] EXTRAS.text L477862-region - Menu Category routes to a banquet master for BANQ/ODC
--   If (var_AC = "BANQ") Or (var_AC = "ODC")  ->  New FrmHallItemCatMast
--   Else                                       ->  New FrmItemCatMast
--   var_AC carries Depart.RestType (same flag used by the report branches, EXTRAS.text L479455).


-- =====================================================================================
-- Schema facts used above  [VERIFIED-SQL]  (18_Database\columns_dictionary.txt)
-- =====================================================================================
-- KOT            44 cols, PK (DocId,Sno)                indexes_pks.txt L102, 28101 rows
-- KOTLog         40 cols                                 1420 rows
-- Sale1          81 cols, PK (DocId)                     indexes_pks.txt L173, 12686 rows
-- Sale2          19 cols, PK (DocId,Sno,SNo1)            indexes_pks.txt L175, 66055 rows
-- SunTran        24 cols, PK (DocId,Sno)                 indexes_pks.txt L210, 98025 rows
-- PayCharge      61 cols                                 (row count not tracked in extract)
-- TOKEN          PK present (indexes_pks.txt L224)       0 rows
-- POS_SBill      8 cols, PK (DocId,OutletDocId)          indexes_pks.txt L154, 0 rows
-- SplitSale1     74 cols, PK                             indexes_pks.txt L193, 0 rows
-- SplitSale2     PK                                      indexes_pks.txt L194, 0 rows
-- SplitSunTran   PK                                      indexes_pks.txt L197, 0 rows
-- TempPosDel     staging                                 0 rows
-- DenominationDetail 18 cols                             0 rows
-- Voucher_Prefix 10 cols
-- Depart         74 cols (KotYn, OutletYN, RestType, ShortName, Printer, PrintType, AutoSettlement,
--                          SplitBill, MultiBill, OpenItemYN, PlaceOfSupplyYN, ...)  73 rows
-- Waiter         9 cols (Code, Name, Site_Code, ..., ActiveYN, RestCode)           58 rows
-- RoomMast       86 rows  (tables live here with TYPE='TB')
-- foreign_keys.txt is EMPTY - the database declares 0 foreign keys. [VERIFIED-SQL]
