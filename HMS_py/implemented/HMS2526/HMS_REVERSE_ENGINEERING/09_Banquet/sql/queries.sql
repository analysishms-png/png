-- ============================================================================
-- 09_Banquet — static SQL extraction
--
-- EVIDENCE: [VERIFIED-SQL]  = literal recovered from EXTRAS.text / HMS.bas
--           [VERIFIED-SQL]  = schema facts read from 18_Database\*
--           [INFERRED]      = shape reasoned from surrounding code
--           [UNKNOWN]       = noted in-line
--
-- RULES OBSERVED:
--   * Every statement is an EXTRACT. Nothing here has been executed.
--   * No credential / GUI-password / UserPermission *value* is reproduced.
--   * SQL is quoted exactly as the VB6 code builds it; concatenated UI variables
--     are written as <placeholders> with the VB6 line number.
--   * Database = MOONData2627  [VERIFIED-SQL]
--   * foreign_keys.txt is EMPTY -> 0 foreign keys declared in this schema.
-- ============================================================================


-- ---------------------------------------------------------------------------
-- 0. SCHEMA FACTS (read from 18_Database, not executed)
-- ---------------------------------------------------------------------------
-- HallBook         PK (DocId)                       74 cols   147 rows
-- HallBook1        PK (DocId,Sno)                   37 cols     0 rows
-- HallSale1        PK (DocId)                       46 cols    38 rows
-- HallSale1Est     PK (DocId)                       42 cols     0 rows
-- HallSale2        PK (DocId,Sno,SNo1)              18 cols     0 rows
-- HallStock        PK (DocId,Sno)                   35 cols     0 rows
-- HallStockEst     ...                                                  0 rows
-- HallPreCosting   PK (Docid,Sno)                   27 cols     0 rows
-- SunTran / SunTranH            (shared with POS)  24 / ...  98 025 rows
-- SunTranEst / SunTranHEst                                           0 rows
-- PayChargeH       PK (DocId,SNo)                   46 cols  (settled advances)
-- BookingInquiry   PK (Code)                        30 cols     0 rows
-- BookingDetail    PK (Code,VenueCode)              10 cols     0 rows
-- VenueMast        PK (Code)                        15 cols    10 rows
-- VenueOCC         PK (FPDocid,VenuCode)           (occupancy) 216 rows
-- VenueCapacity    PK (VenueCode,Capacity,Site_Code)           32 rows
-- VenueFeatures                                                  0 rows
-- CatalogMast      PK (Code,ItemCode)               11 cols     0 rows
-- GuestComments    PK (Code,LogSite_Code)           22 cols     0 rows
-- FeatureMast                                                   0 rows
-- FunctionType                                                  8 rows
-- GroupCatalog                                                  4 rows
-- SMSEnviro                                                     1 row
-- foreign_keys.txt      -> 0 declared foreign keys
--                          [VERIFIED-SQL] tables_rowcounts.txt / indexes_pks.txt
--                          [VERIFIED-SQL] columns_dictionary.txt / foreign_keys.txt


-- ---------------------------------------------------------------------------
-- 1. FrmVenueMast — Venue Master setup            [object 631225]
-- ---------------------------------------------------------------------------
-- cascade delete on save
DELETE FROM VenueMast      WHERE Code='<SearchCode>';            -- EXTRAS.text L631516
DELETE FROM VenueFeatures  WHERE VenueCode='<SearchCode>';       -- EXTRAS.text L631524
-- cascade delete on master delete
DELETE FROM VenueMast      WHERE Code='<global_56>';             -- EXTRAS.text L631815
DELETE FROM VenueFeatures  WHERE VenueCode='<global_56>';        -- EXTRAS.text L631816
DELETE FROM GodownMast     WHERE Code='<global_56>';             -- EXTRAS.text L631817
-- usage guard before delete
SELECT Count(*) FROM VenueCapacity WHERE VenueCode='<global_56>'; -- EXTRAS.text L631845
DELETE FROM VenueCapacity  WHERE VenueCode='<global_56>';        -- EXTRAS.text L631850
-- reads
SELECT * FROM VenueMast WHERE (LOGSITE_CODE='<MemVar_1F81078>' OR LOGSITE_CODE='HO')
  ORDER BY Name;                                                 -- EXTRAS.text L631676
SELECT * FROM VenueMast WHERE Code='<SearchCode>';                -- EXTRAS.text L632667
SELECT * FROM VenueCapacity WHERE VenueCode='<SearchCode>';       -- EXTRAS.text L632762
SELECT * FROM FEATUREMAST WHERE Status='Active'
  AND LogSite_Code IN ('<MemVar_1F81078>','HO') ORDER BY NAME;    -- EXTRAS.text L632879
SELECT DISTINCT([Capacity]) FROM VenueCapacity;                   -- EXTRAS.text L632912
-- insert
INSERT INTO VenueMast(Code,Name,ShortName,Status,Dimension,DepartCode,
                      Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code)
  VALUES('<global_56>',<Name>,<ShortName>,<Status>,<Dimension>,<DepartCode>,...); -- L631835
INSERT INTO VenueCapacity(VenueCode,Capacity,Seating,Floating,
                      Site_Code,U_EntDt,U_AE,logSite_Code)
  VALUES('<global_56>',...);                                      -- L631860 / L631887
INSERT INTO VenueFeatures(VenueCode,Feature,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code)
  VALUES('<global_56>',...);                                      -- EXTRAS.text L631940


-- ---------------------------------------------------------------------------
-- 2. FrmVenueFeat — Venue Features master          [object 633079]
-- ---------------------------------------------------------------------------
SELECT * FROM FeatureMast WHERE LogSite_Code IN ('<MemVar_1F81078>','HO')
  ORDER BY Name;                                                  -- EXTRAS.text L633278
SELECT Code,Name FROM FeatureMast WHERE (LOGSITE_CODE='<MemVar_1F81078>'
  OR LOGSITE_CODE='HO') ORDER BY Name;                            -- EXTRAS.text L633469
SELECT * FROM FeatureMast WHERE (LOGSITE_CODE='<MemVar_1F81078>'
  OR LOGSITE_CODE='HO') ORDER BY Name;                            -- EXTRAS.text L633473
-- surrogate code generator (VB6 concatenates '<site>' + MyCode)
SELECT IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode
  FROM FeatureMast;                                               -- EXTRAS.text L633367
-- audit columns on save
SELECT U_Name,U_AE,U_EntDt FROM FeatureMast WHERE Code='<Code>';  -- EXTRAS.text L633753
INSERT INTO FeatureMast(Code,Name,Status,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code)
  VALUES('<global_60>',...);                                      -- EXTRAS.text L633384


-- ---------------------------------------------------------------------------
-- 3. FrmEventMast — Events master                 [object 378923]
-- ---------------------------------------------------------------------------
SELECT Code,Name FROM FunctionType WHERE (LOGSITE_CODE='<MemVar_1F81078>'
  OR LOGSITE_CODE='HO') ORDER BY Name;                            -- EXTRAS.text L379110
SELECT * FROM FunctionType WHERE (LOGSITE_CODE='<MemVar_1F81078>'
  OR LOGSITE_CODE='HO') ORDER BY Name;                            -- EXTRAS.text L379114
select * FROM FunctionType WHERE (LOGSITE_CODE='<MemVar_1F81078>'
  OR LOGSITE_CODE='HO') order by Name;                            -- EXTRAS.text L379367
SELECT U_Name,U_AE,U_EntDt FROM FunctionType WHERE Code='<Code>'; -- EXTRAS.text L379609


-- ---------------------------------------------------------------------------
-- 4. HallMenuCatalog — Catalog Master             [object 389222]
-- ---------------------------------------------------------------------------
SELECT * from Enviro where LogSite_Code='<MemVar_1F81078>';       -- EXTRAS.text L389967
SELECT * from Enviro where LogSite_Code='<MemVar_1F81078>';       -- EXTRAS.text L390115
SELECT * from Enviro where LOGSite_Code='<MemVar_1F81078>';       -- EXTRAS.text L390659
DELETE FROM CatalogMast WHERE Code='<global_84>';                 -- EXTRAS.text L390465
INSERT INTO CatalogMast(Code,Name,RestCode,ItemCatCode,ItemCode,
                        Site_Code,U_Name,U_EntDt,U_AE,Category,Logsite_Code)
  VALUES('<global_84>',...);                                      -- EXTRAS.text L390479
INSERT INTO CatalogMast(Code,Name,RestCode,ItemCatCode,ItemCode,
                        Site_Code,U_Name,U_EntDt,U_AE,lOGsITE_cODE)
  VALUES('<global_84>',...);                                      -- EXTRAS.text L390586
SELECT NCUR FROM enviro WHERE LOGSITE_CODE='<MemVar_1F81078>';    -- EXTRAS.text L391990


-- ---------------------------------------------------------------------------
-- 5. FrmBookingInquiry — Booking Inquiry          [object 386324]
-- ---------------------------------------------------------------------------
SELECT Code,Name From VenueMast
  Where LogSite_Code in ('<MemVar_1F81078>','HO') Order by Name;  -- EXTRAS.text L386503
SELECT Code,Name From MarketSeg
  Where LogSite_Code in ('<MemVar_1F81078>','HO') Order by Name;  -- EXTRAS.text L386508
SELECT Code,Name From BussSource
  Where LogSite_Code in ('<MemVar_1F81078>','HO') Order by Name;  -- EXTRAS.text L386513
SELECT Code,Name From FunctionType Where Status='Active'
  And LogSite_Code in ('<MemVar_1F81078>','HO') Order by Name;    -- EXTRAS.text L386534
SELECT * FROM VenueCapacity WHERE VenueCode='<FGrid.TextMatrix>'; -- EXTRAS.text L387354
-- venue double-booking guard (also in HallBooking)
SELECT COunt(*) From VenueOCC S WHERE <dateRange> VenuCode='<VenuCode>'; -- L388643/L388666
-- teardown (delete inquiry + its venue detail rows)
DELETE FROM BookingInquiry WHERE Code='<var_8C>';                 -- EXTRAS.text L388069
DELETE FROM BookingDetail  WHERE Code='<var_8C>';                 -- EXTRAS.text L388070
-- audit columns
SELECT U_Name,U_AE,U_EntDt FROM BookingInquiry WHERE Code='<Code>'; -- EXTRAS.text L388883
-- insert
INSERT INTO BookingInquiry(Code,CatType,PartyName,Add1,Add2,City,PhoneR,PhoneO,MobileNo,
                           FaxNo,ConPerson,BookedBy,FuncType,HandledBy,BussSource,Status,...)
  VALUES(...);                                                    -- EXTRAS.text L388129
INSERT INTO BookingDetail(Code,VenueCode,FuncDate,FuncTime,ToDate,ToTime,
                          Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES(...); -- L388153


-- ---------------------------------------------------------------------------
-- 6. HallBooking — Banquet Booking                [object 393015]
-- ---------------------------------------------------------------------------
-- reference lookups
SELECT Code,Name From MarketSeg Where Active<>'No'
  And LogSite_Code in ('<MemVar_1F81078>') Order by Name;         -- EXTRAS.text L393460
SELECT Code,Name From VenueMast
  Where LogSite_Code in ('<MemVar_1F81078>') Order by Name;       -- EXTRAS.text L393465
SELECT Code,Name From BussSource Where Active<>'No'
  And LogSite_Code in ('<MemVar_1F81078>') Order by Name;         -- EXTRAS.text L393485
SELECT Code,Name From FunctionType
  Where LogSite_Code in ('<MemVar_1F81078>') Order by Name;       -- EXTRAS.text L393490
SELECT S.DocId AS DocId FROM HAllBook1 S WHERE S.DocId='<...>';   -- EXTRAS.text L393308
-- save: wipe then insert
DELETE FROM HallBook  WHERE Docid='<SearchCode>';                 -- EXTRAS.text L394978
DELETE FROM HallBook1 WHERE Docid='<SearchCode>';                 -- EXTRAS.text L394986
DELETE FROM VenueOCC  WHERE FPDocID='<SearchCode>';               -- EXTRAS.text L394994
-- HallBook1 rows are written through a generic helper, not a literal INSERT
Proc_154_5_10DBE9C(<conn>, "HallBook1", "DocId", &HC8,
                   "<SearchCode>", 0, 0, 0);                      -- EXTRAS.text L394993
INSERT INTO HallBook(Docid,VNo,VDate,VType,VPrefix,VTime,Site_Code,...)
  VALUES(...);                                                    -- EXTRAS.text L395970
INSERT INTO VenueOCC(FPDocid,VenuCode,FromDate,ToDate,FromTime,ToTime,
                     Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES(...); -- L396053
-- an inquiry may be converted to exactly one booking
SELECT Code,PartyName as Name FROM BookingInquiry
  WHERE code NOT IN (SELECT InquiryCode FROM HallBook) AND Status='Active'
  ORDER BY PartyName;                                             -- EXTRAS.text L395019 / L395025
SELECT Code,PartyName as Name FROM BookingInquiry
  WHERE code NOT IN (SELECT InquiryCode FROM HallBook) AND Status='Active'
  ORDER BY PartyName;                                             -- EXTRAS.text L396124
SELECT DISTINCT DocId,V_Type,V_No FROM HallBook WHERE DocID='<arg_10>'; -- L397158
SELECT NAME FROM FunctionType WHERE Code='<FuncType>';             -- EXTRAS.text L397495
SELECT NAME FROM BussSource  WHERE Code='<BussSource>';            -- EXTRAS.text L397510
-- advance received against this booking
SELECT ISNULL(Sum(AmtCr),0) FROM PayChargeH
  WHERE VType='AD' AND ContraDocId='<arg_C>';                      -- EXTRAS.text L397711
-- SMS templates
SELECT BanqBookingMsg,BanqBookingCancelMsg,SendingMessageText FROM SMSEnviro
  WHERE LOGSITE_CODE='<MemVar_1F81078>';                           -- EXTRAS.text L397738
-- booking report join
SELECT ... FROM ((HallBook HB INNER JOIN HallBook1 HB1 ON HB.DocID=HB1.DocID)
        INNER JOIN ItemMast I ON HB1.Item=I.Code AND HB1.RestCode=I.RestCode)
        INNER JOIN ItemGrp ON ItemGrp.Code=I.ItemGroup;            -- EXTRAS.text L395243


-- ---------------------------------------------------------------------------
-- 7. HallBill — Banquet Billing                  [object 397814]
-- ---------------------------------------------------------------------------
SELECT Description,V_Type FROM Voucher_Type
  WHERE NCat='BBILL' AND rESTCODE='<global_56>';                   -- EXTRAS.text L400311
SELECT Count(*) FROM eInvoiceBill1 WHERE DocId='<DocID>' AND Isnull(IRN,'')=''; -- L399171
DELETE FROM eInvoiceBill1 WHERE DocId='<DocID>';                   -- EXTRAS.text L399176
SELECT * FROM Depart WHERE Code='<global_56>';                     -- EXTRAS.text L401675
SELECT Count(*) FROM SundryType WHERE V_Type='<global_132>';       -- EXTRAS.text L401812
SELECT DeskCode AS RestCode FROM Revmast WHERE taxstru='<arg_C>'
  AND DeskCode='<global_56>';                                      -- EXTRAS.text L404816
SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Banquet Bill'
  AND LogSite_Code='<MemVar_1F81078>';                             -- EXTRAS.text L404241 / L404482
SELECT * FROM PrinterSetup WHERE RestCode='<MemVar_1F81070>FOM';   -- EXTRAS.text L405798
SELECT * FROM FAEnviro;                                            -- EXTRAS.text L406071
SELECT * FROM ENVIRO WHERE LOGSITE_CODE='<MemVar_1F81078>';        -- EXTRAS.text L405260
-- re-save wipe (delete-then-insert)
DELETE FROM SunTran  WHERE DocID='<SearchCode>';                   -- EXTRAS.text L400388
DELETE FROM SunTranH WHERE DocID='<SearchCode>';                   -- EXTRAS.text L400396
DELETE FROM HallStock WHERE Docid='<SearchCode>';                  -- EXTRAS.text L400404
DELETE FROM HallSale1 WHERE Docid='<SearchCode>';                  -- EXTRAS.text L400412
-- same wipe re-issued through the generic helper (captures HallSale2 too)
Delete From SunTran  Where DocID='<...>';                          -- EXTRAS.text L401165
Delete From SunTranH Where DocID='<...>';                          -- EXTRAS.text L401169
Delete From HallStock Where DocID='<...>';                         -- EXTRAS.text L401174
Delete From HallSale1 Where DocID='<...>';                         -- EXTRAS.text L401179
Delete From HallSale2 Where DocID='<...>';                         -- EXTRAS.text L401184
-- inserts
INSERT INTO HallSale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,BookDocId,Party,RestCode,
  Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,CGST,SGST,IGST,ServiceCharge,RoundOff,
  AddAmt,DEDAMT,NetAmt,FrBookDate,FrBookTime,ToBookDate,ToBookTime,...)
  VALUES(...);                                                     -- EXTRAS.text L401269
INSERT INTO HallStock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,Party,Item,
  DiscApp,SChrgApp,RoundOff,UNIT,QtyIss,Rate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,
  Total,Remarks,...) VALUES(...);                                 -- EXTRAS.text L401361
INSERT INTO HallSale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,
  BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) VALUES(...); -- L401409
-- reads
SELECT S.* FROM HallSale1 S WHERE S.Docid='<DocID>';               -- EXTRAS.text L402430
SELECT DISTINCT DocId,V_Type,V_No FROM HallSale1 WHERE DocID='<arg_10>'; -- L403213
SELECT S.* FROM SunTran  S WHERE S.DocId='<arg_C>' ORDER BY SNo;   -- EXTRAS.text L406823
SELECT S.* FROM SunTranH S WHERE S.DocId='<arg_C>' ORDER BY SNo;   -- EXTRAS.text L406860


-- ---------------------------------------------------------------------------
-- 8. HallAdvanceDepDialog — Settlement / Booking Advance   [object 406929]
-- ---------------------------------------------------------------------------
SELECT * FROM Enviro WHERE LogSite_Code='<MemVar_1F81078>';        -- EXTRAS.text L406997
SELECT Code,Name FROM Employee WHERE (LogSite_Code='<MemVar_1F81078>'
  OR LogSite_Code='HO') ORDER BY Name;                             -- EXTRAS.text L407008
SELECT DISTINCT Code,Name FROM TaxStru WHERE (LOGSITE_CODE='<MemVar_1F81078>'
  OR LOGSITE_CODE='HO') ORDER BY Name;                             -- EXTRAS.text L407029
-- advance settlement pair
SELECT ContraDocId FROM PayChargeH WHERE VType='AD' AND Docid='<var_12C>'; -- L407400
DELETE FROM PayChargeH WHERE VType='AD' AND Docid='<SearchCode>';  -- EXTRAS.text L407405
-- advance denormalised onto the bill header
UPDATE HallSale1 SET Advance=<var_CC> WHERE BookDocId='<var_16C>'; -- L407730 / L407883
SELECT * FROM REVMAST WHERE CODE='<MemVar_1F81078>TOUT';           -- L407778 / L407931
UPDATE hallbook SET rectno=<n>, RectDate=<d> ... ORDER BY VP.Date_From DESC; -- L408005
DELETE FROM Ledger WHERE Docid='<var_104>' AND V_Type='<AdvType>'; -- EXTRAS.text L410586
SELECT * FROM Depart WHERE Code='<Recordset15.RestCode>';          -- L410671 / L411048 / L411137
SELECT * FROM Enviro WHERE LogSite_code='<MemVar_1F81078>';        -- EXTRAS.text L410560


-- ---------------------------------------------------------------------------
-- 9. HallEstimate / HallBillEstimate — estimate bills   [objects 411351 / 579496]
-- ---------------------------------------------------------------------------
SELECT Description,V_Type FROM Voucher_Type
  WHERE NCat='EBILL' AND rESTCODE='<global_56>';                   -- EXTRAS.text L411748
SELECT Description,V_Type FROM Voucher_Type
  WHERE NCat='ESBIL' AND rESTCODE='<global_56>';                   -- EXTRAS.text L579793
DELETE FROM SunTran     WHERE DocID='<SearchCode>';                -- EXTRAS.text L411821 / L579854
DELETE FROM SunTranH    WHERE DocID='<SearchCode>';                -- EXTRAS.text L411829
DELETE FROM HallStock   WHERE Docid='<SearchCode>';                -- EXTRAS.text L411837
DELETE FROM SunTranEst  WHERE DocID='<SearchCode>';                -- EXTRAS.text L579854
DELETE FROM SunTranHEst WHERE DocID='<SearchCode>';                -- EXTRAS.text L579862
DELETE FROM HallStockEst WHERE Docid='<SearchCode>';               -- EXTRAS.text L579870
INSERT INTO HallSale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,BookDocId,Party,RestCode,
  Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,RoundOff,AddAmt,DEDAMT,NetAmt,
  FrBookDate,FrBookTime,ToBookDate,ToBookTime,...) VALUES(...);    -- EXTRAS.text L412344
INSERT INTO HallStock(...) VALUES(...);                            -- EXTRAS.text L412431
INSERT INTO HallSale1Est(Docid,VNo,VDate,VType,VPrefix,Site_Code,BookDocId,Party,RestCode,
  Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,RoundOff,AddAmt,DEDAMT,NetAmt,
  FrBookDate,FrBookTime,ToBookDate,ToBookTime,...) VALUES(...);    -- EXTRAS.text L580610
INSERT INTO HallStockEst(...) VALUES(...);                         -- EXTRAS.text L580699
INSERT INTO SunTranEst(DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,
  SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,
  SiteCode,LogSite_Code) VALUES(...);                              -- EXTRAS.text L580753
INSERT INTO SunTranHEst(...) VALUES(...);                          -- EXTRAS.text L580800
SELECT BookDocId FROM HallSale1;                                   -- EXTRAS.text L412760
SELECT S.* FROM HallSale1    S WHERE S.Docid='<DocID>';            -- EXTRAS.text L415337
SELECT S.* FROM HallSale1Est S WHERE S.Docid='<DocID>';            -- EXTRAS.text L583193
SELECT S.* FROM SunTran     S WHERE S.DocId='<SearchCode>' ORDER BY SNo;  -- L415476
SELECT S.* FROM SunTranH    S WHERE S.DocId='<SearchCode>' ORDER BY SNo;  -- L415513
SELECT S.* FROM SunTranEst  S WHERE S.DocId='<SearchCode>' ORDER BY SNo;  -- L583343
SELECT S.* FROM SunTranHEst S WHERE S.DocId='<SearchCode>' ORDER BY SNo;  -- L583380
DELETE FROM Stock WHERE DocID='<global_76>';                       -- EXTRAS.text L588274
DELETE FROM Stock WHERE DocID='<global_80>' / '<global_84>';       -- EXTRAS.text L591140 / L591141
SELECT RATE FROM ITEMRATE WHERE ITEMCODE='<item>' AND RestCode='<rest>'; -- EXTRAS.text L589078


-- ---------------------------------------------------------------------------
-- 10. BanqAvailability — Venue Availability        [object 418142]
-- ---------------------------------------------------------------------------
SELECT * FROM FAEnviro;                                            -- EXTRAS.text L418498
SELECT * FROM VenueMast WHERE DepartCode='<global_52>' ORDER BY name; -- EXTRAS.text L419176
-- [INFERRED] occupancy is evaluated against VenueOCC using the same date predicate
-- used in HallBooking (L397327 / L397351):
SELECT COunt(*) FROM VenueOCC S WHERE LogSite_Code='<MemVar_1F81078>'
  AND <dateRange> AND VenuCode='<VenuCode>';                       -- [INFERRED] shape


-- ---------------------------------------------------------------------------
-- 11. HallChefPreCosting — Chef Pre-Costing        [object 419544]
-- ---------------------------------------------------------------------------
-- item pool for the costing grid (4-way left join)
SELECT I.Code, I.Name as Name, I.Unit, IG.Name as ItemGroup, IC.CatType,
       IR.Rate as IRate, IC.RoundOff as Roundoff1, I.Kitchen as DepartCode
  FROM (((ItemMast I
    LEFT JOIN ItemGrp     IG ON I.ItemGroup = IG.Code)
    LEFT JOIN ItemCatMast IC ON IC.Code     = I.ItemCatCode)
    LEFT JOIN ItemRate    IR ON IR.ItemCode = I.Code AND IR.RestCode = I.RestCode)
  WHERE IR.RestCode = '<global_56>';                               -- EXTRAS.text L420006
-- working table
DELETE FROM HallPreCosting WHERE Docid='<SearchCode>';             -- EXTRAS.text L420476
DELETE FROM HallPreCosting WHERE DocID='<...>';                    -- EXTRAS.text L420882
INSERT INTO HallPreCosting(DocId,SNo,VType,VTIME,VPrefix,Site_Code,VNo,VDate,RestCode,
  Item,Qty,Rate,Amount,VoidYN,...) VALUES(...);                    -- EXTRAS.text L420928
-- search list: booking -> voucher type -> pre-costing
SELECT Distinct HC.Docid as SearchCode, S.VNo as FPNo, S.VDate as V_Date, PartyName,
       S.fRbOOKDATE, S.TOBOOKDATE
  FROM ((HallBook S
    INNER JOIN Voucher_Type V ON (S.VType = V.V_Type AND S.LogSite_Code = V.LogSite_Code))
    INNER JOIN HallPreCosting HC ON S.Docid = HC.Contradocid) ...;  -- EXTRAS.text L420545
-- bookings with no pre-costing yet
... '<site>' and VType='IBOOK' AND DocId NOT IN
    (SELECT DISTINCT CONTRADOCID FROM HallPreCosting) ORDER BY VNO; -- EXTRAS.text L421169
... '<site>' and VType='OBOOK' AND DocId NOT IN
    (SELECT DISTINCT CONTRADOCID FROM HallPreCosting) ORDER BY VNO; -- EXTRAS.text L421173
SELECT Distinct S.DocId as SearchCode, S.DocID, S.ContraDocid, S.LogSite_Code, S.Site_Code
  FROM HallPreCosting S WHERE S.LogSite_Code='<MemVar_1F81078>';    -- EXTRAS.text L421195
-- booking / venue / advance context
SELECT S.* FROM HallBook S WHERE S.Docid='<ContraDocId>';          -- EXTRAS.text L422172
SELECT DISTINCT DocId,V_Type,V_No FROM HallBook WHERE DocID='<arg_10>'; -- EXTRAS.text L422691
SELECT VC.*, D.Name as VenuName FROM VenueOcc VC
  LEFT JOIN VenueMast D ON VC.VenuCode = D.Code
  WHERE VC.FPDocId = '<ContraDocId>';                              -- EXTRAS.text L420620
SELECT VC.*, D.Name as VenuName FROM VenueOCC VC
  LEFT JOIN VenueMast D ON VC.VenuCode = D.Code
  WHERE VC.FPDocId = '<ContraDocId>';                              -- EXTRAS.text L420651
SELECT AmtCr, PayType, VNo, VDate FROM PayChargeH
  WHERE VType='AD' AND ContraDocId='<ContraDocId>';                -- EXTRAS.text L420623
SELECT HB.*, HB1.SNo, HB1.Item, HB1.QtyIss, HB1.Rate,
       HB1.Amount AS LineAmt, HB1.Unit, HB1.TaxPer AS LineTaxPer, HB1.TaxAmt,
       HB1.DiscPer AS LineDiscP, HB1.DiscAmt AS LineDiscA, HB1.Remarks,
       HB1.Total AS LineTotal, I.name AS IName
  FROM HallBook ... VenueOCC ... HallBook1 ... ItemMast I ...;     -- EXTRAS.text L420616
SELECT S.*, I.Name as ItemName FROM HallPreCosting S
  LEFT JOIN ItemMast I ON S.Item = I.Code AND S.RestCode = I.RestCode
  WHERE S.DocId = '<DocId>';                                       -- EXTRAS.text L422326


-- ---------------------------------------------------------------------------
-- 12. frmGuestComments — Guest Comments           [object 454521]
-- ---------------------------------------------------------------------------
-- [UNKNOWN] -- no literal SELECT/INSERT isolated in 454521..456080 for GuestComments;
-- the table is 22 cols / 0 rows and PK (Code,LogSite_Code).  [VERIFIED-SQL]


-- ---------------------------------------------------------------------------
-- 13. CateringBooking — Catalog Selection         [object 372637]
-- ---------------------------------------------------------------------------
SELECT * FROM Enviro WHERE lOGSite_Code='<MemVar_1F81078>';        -- EXTRAS.text L372699
SELECT VC.*, D.Name as VenuName FROM VenueOCC VC
  LEFT JOIN VenueMast D ON VC.VenuCode = D.Code
  WHERE VC.FPDocId = '<FPDocId>';                                  -- EXTRAS.text L373790 / L374613
INSERT INTO HallBook1(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,
  RoomType,RoomNo,PartyName,Item,...) VALUES(...);                 -- L374182 / L374242
SELECT S.* FROM HallBook S WHERE S.Docid='<DocID>';                -- EXTRAS.text L376748
SELECT DISTINCT DocId,V_Type,V_No FROM HallBook WHERE DocID='<arg_10>'; -- EXTRAS.text L377734


-- ---------------------------------------------------------------------------
-- 14. Report extracts used by rHallRepView          [object 777000]
-- ---------------------------------------------------------------------------
-- [INFERRED] the viewer receives only GRepFormName; the per-report SELECT lives in
-- the Crystal .rpt / .ttx, which are NOT present under 17_Reports (only
-- REPORTS_ANALYSIS.md).  REPORTS_TXT\<GRepFormName>.txt descriptors do exist for
-- all 14 banquet report names.  [UNKNOWN] -- report-internal SQL not extractable
-- from this tree.
--
-- Confirmed GRepFormName values (all present in REPORTS_TXT\):
--   SalesRegister          PartyOutStanding        PartyWiseOutStanding
--   CashierCollection      BookingDetail           SettleRepHall
--   DailyFuncSheet         ItemWiseSaleHall        CompanyWiseSaleHall
--   FunctionWiseItemDetail CoverAnalysis           TaxReportHall
--   TaxSummaryHall         TaxwiseDetailReportHall
--
-- Shared-with-POS captions that fork to the hall viewer when var_AC is BANQ/ODC:
--   Tax Report      -> TaxReportHall   (else TaxReport)        EXTRAS.text L479455
--   Tax Summary     -> TaxSummaryHall  (else TaxSumm)          EXTRAS.text L479692
--   Cover Analysis  -> CoverAnalysis   (both branches)         EXTRAS.text L479588
--   Collection Summary -> CashierCollection (both branches)    EXTRAS.text L479650


-- ---------------------------------------------------------------------------
-- 15. Cross-database copy utility                  [object mdlDataTransfer 463991]
-- ---------------------------------------------------------------------------
INSERT INTO HallBook  SELECT * FROM <sourceDb>.dbo.HallBook
  WHERE DocId IN (SELECT DISTINCT FPDocID FROM <sourceDb>.dbo.VenueOcc
                  WHERE FromDate >= <date>);                       -- EXTRAS.text L552837
INSERT INTO HallBook1 SELECT * FROM <sourceDb>.dbo.HallBook1
  WHERE DocId IN (SELECT DISTINCT FPDocID FROM <sourceDb>.dbo.VenueOcc
                  WHERE FromDate >= <date>);                       -- EXTRAS.text L552840
INSERT INTO HallBook1 SELECT * FROM <sourceDb>.dbo.HallBook1
  WHERE DocId IN (SELECT DISTINCT FPDocID FROM ...                 -- EXTRAS.text L552847
DELETE FROM LedgerMerge;                                           -- EXTRAS.text L586427
DELETE FROM LedgerMMerge;                                          -- EXTRAS.text L586428


-- ---------------------------------------------------------------------------
-- 16. Banquet business-rule predicates seen in VB6  (not executed)
-- ---------------------------------------------------------------------------
-- [VERIFIED-VB6] all line numbers below are MsgBox-caption sites; the SQL behind
-- each rule is cited with it.
--
-- BR-B01  Vr.No <> 0                         "Vr. No Can Not Be 0"            L398236 / L413107
-- BR-B02  unique voucher no                   "Duplicate Voucher No."         L394234 / L398281 / L413152
-- BR-B03  Vdate within fin. year              "V.Date Not Between Current Fin. Year" L394281 / L413193 / L419894
-- BR-B04  ExpectedPax / GurrPax mandatory     "Can't leave blank the Expected Pax." L393895 / L395711
-- BR-B05  GurrPax <= ExpectedPax              "Gurrented Pax must be equal or less then Expected Pax." L395733
-- BR-B06  Expected >= Guaranteed attendance   "Expected Attendence can't be Less Than Guaranteed Attendence" L394493
-- BR-B07  venue mandatory                     "Please select Venue name." / "Fill Venue Name" L395744 / L395760
-- BR-B08  From/To date+time mandatory         "Fill From Date" "Fill Start Time" "Fill To Date" L395767..L395781
-- BR-B09  To >= From                          "To Date and Time Must be Greater than From Date and Time" L396673
-- BR-B10  function date sanity                "Please check Function Date."   L396658
-- BR-B11  duplicate venue in booking          "Duplicate Venue Not Allowed"   L397210
-- BR-B12  mobile / PAN 10 digits              "Please fill 10 Digit Mobile No." L395685
-- BR-B13  bill date >= booking date           "Bill Date can't be before Booking Date" L398390
-- BR-B14  settle before delete                "First Delete Settlement."      L400382
-- BR-B15  settled bill immutable              "Entry Can't be Modified,Bill Already Settled" L400482
-- BR-B16  item line mandatory                 "Item Detail Required "         L400842 / L412085
-- BR-B17  sundry type per voucher             "Voucher wise Sundry not defined" L401817 / L413749
-- BR-B18  unique bill no                      "Duplicate Bill No."            L402868 / L415717 / L422468
-- BR-B19  duplicate item in bill              "Do U Want To Add A Duplicate Item." L403266
-- BR-B20  settlement tender required          "Please Fill Payment Details Before Saving.." L407640
-- BR-B21  revenue account defined             "System Defined Revenue is not defined" L407788 / L407941
-- BR-B22  e-invoice not already issued        "eInvoice already generated."   L406923
-- BR-B23  pre-costing duplicate item          "Duplicate Item Not Allowed"    L422742
-- BR-B24  inquiry venue required              "Please Select Venue."          L387984
-- BR-B25  guest comment save/del prompts      "Save Record ?" / "Delete Record ?" L409756 / L407392
