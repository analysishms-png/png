-- ============================================================================
-- 02_Main_Setup - extracted SQL (read-only record, NEVER executed from this folder)
-- Source: decompiled VB6 in ../../EXTRAS.text; row counts / columns from
--         ../../18_Database/*.txt  (MOONData2627)
-- Tags:   [VERIFIED-VB6]   statement seen verbatim in decompiled source
--         [VERIFIED-SQL]   table/row/column fact from 18_Database extracts
--         [INFERRED]       reconstructed from fragments
--         [UNKNOWN]        not located
-- `<site>`  = MemVar_1F81078 (LogSite_Code)   `<siteid>` = MemVar_1F81070 (Site_Code)
-- `<user>`  = MemVar_1F810C8 (UserName)       `<comp>`   = MemVar_1F81128 (CompCode)
-- String concatenation is shown as `& ..` fragments exactly as decompiled.
-- ============================================================================


-- ---------------------------------------------------------------------------
-- A. MENU / DISPATCH LAYER  (how Main Setup items become clickable)
-- ---------------------------------------------------------------------------

-- A1. module tabs on the main form  [VERIFIED-VB6] (EXTRAS.text L8279-L8280)
SELECT [Option] Name, OPT1
FROM MenuHelp
WHERE Flag <> 'V' AND OPT1 <> 0 AND OPT2 = 0 AND OPT3 = 0 AND OPT4 = 0
  AND UserName = '<user>' AND CompCode = '<comp>'
ORDER BY Code;

-- A2. sub-menu items for a group  [VERIFIED-VB6] (EXTRAS.text L8386-L8393)
SELECT [Option] Name, Cast(Code As Varchar) CODE
FROM MenuHelp
WHERE Flag <> 'V'
  AND OPT1 = <opt1> AND OPT2 = <opt2> AND OPT3 = <opt3> AND OPT4 <> <opt4>
  AND UserName = '<user>' AND CompCode = '<comp>';

-- A3. click: read the row behind a menu button  [VERIFIED-VB6] (EXTRAS.text L4644-L4647)
SELECT OPT1, OPT2, OPT3, OPT4, FLAG, CODE
FROM MenuHelp
WHERE Code = <code> AND UserName = '<user>' AND CompCode = '<comp>';

-- A4. dispatch key resolution (Proc_165_3_EEA710)  [VERIFIED-VB6] (EXTRAS.text L480844)
SELECT [Option]
FROM MenuHelp
WHERE Code = <code> AND UserName = '<user>' AND CompCode = '<comp>';

-- A5. per-item privilege + outlet context read by the dispatcher  [VERIFIED-VB6] (EXTRAS.text L477046-L477047)
SELECT Param_Str AS UPrivilege, Module_Name, OutletCode
FROM menuHelp
WHERE UserName = '<user>' AND CompCode = '<comp>' AND Code = <code>;

-- A6. restaurant code handed to hall/banquet forms (Proc_165_4_1028884)  [VERIFIED-VB6]
--     call sites EXTRAS.text L477831, L477858, L477864, L477932 with varying arity;
--     the helper body is [UNKNOWN] (EXTRAS.text L480853-region).


-- ---------------------------------------------------------------------------
-- B. Dispatcher bootstrap / global configuration
-- ---------------------------------------------------------------------------

-- B1. read once on EVERY menu click  [VERIFIED-VB6] (EXTRAS.text L477023, L477025)
SELECT *
FROM Enviro;

-- B2. Plan Master routing value  [VERIFIED-VB6] (EXTRAS.text L477234)
SELECT PlanMastType
FROM Enviro
WHERE logsite_code = '<site>';

-- B3. POS Recycle / Data Transfer supervisor gate  [INFERRED]
--     MemVar_1F810B8 is produced by the B1 read; tested at EXTRAS.text L478050 and
--     L480433. The exact Enviro column it is assigned from is [UNKNOWN].

-- ---------------------------------------------------------------------------
-- General Setup
-- ---------------------------------------------------------------------------

-- ### FrmTaxMast  (16 statement(s))
-- [VERIFIED-VB6] (FrmTaxMast)
loc_109DA67: var_94 = "SELECT Code,Name FROM REVMAST WHERE FIELDTYPE='T' AND (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name";

-- [VERIFIED-VB6] (FrmTaxMast)
loc_109DAD9: var_94 = "SELECT S.SubCode as Code,S.Name FROM SubGroup S WHERE S.ActiveYN=1 And (S.LOGSITE_CODE='" & MemVar_1F81078 & "' or S.LOGSITE_CODE='HO') ORDER BY S.Name";

-- [VERIFIED-VB6] (FrmTaxMast)
loc_109DB54: unk_493F39.Execute "SELECT Code,Name FROM SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1;

-- [VERIFIED-VB6] (FrmTaxMast)
loc_109DBB6: var_90 = "SELECT R.*,R.Code as SearchCode,R.ACCode as LedgerCode,S.Name as LedgerName,R.PayableAc as PayableAcCode,SP.Name as PayableAcName,R.UnregisteredAc as UnregisteredAcCode,SU.Name as UnregisteredAcName,SundryMast.Code as SundryCode,SundryMast.Name as SundryName FROM RevMast R Left join Subgroup S on S.SubCode=R.ACCode Left Join SubGroup SP On SP.SubCode=R.PayableAc Left Join SubGroup SU On SU.SubCode=R.UnregisteredAc Left Join SundryMast on SundryMast.Code=R.Sundry WHERE FIELDTYPE='T'  AND (R.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmTaxMast)
loc_11D67BE: var_FC = "select SysYN From REVMAST Where Code='" & Me.Fields.Item("Code").Value;

-- [VERIFIED-VB6] (FrmTaxMast)
loc_11D6925:   var_11C = "Delete From RevMast Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmTaxMast)
loc_F1BCB1: MemVar_1F810E4 = "Select RevMast.Code As SearchCode,RevMast.Name FROM RevMast where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and FieldType='T' Order by RevMast.Name";

-- [VERIFIED-VB6] (FrmTaxMast)
loc_1082ADB: var_A0 = "SELECT R.*,S.SubCode as LedgerCode,S.Name as LedgerName,SM.Name as SundryName FROM RevMast R Left Join SundryMast SM On R.Sundry=SM.Code Left join Subgroup S on S.SubCode=R.ACCode where (R.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmTaxMast)
loc_13642E0:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),0)+1 AS MyCode From RevMast WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmTaxMast)
loc_1364427:   var_9C = "Insert Into RevMast(Code,Name,ShortName,ACCode,PayableAc,UnregisteredAc,Site_Code,SysYN,[Type],RoundOff,FieldType,U_Name,U_EntDt,U_AE,Sundry,LogSite_Code) Values('" & global_72;

-- [VERIFIED-VB6] (FrmTaxMast)
loc_136463B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE RevMast SET Type='Cr',Name='");

-- [VERIFIED-VB6] (FrmTaxMast)
loc_136E9F1: unk_493F39.Execute CStr("Select U_Name,U_AE,U_EntDt From revmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (FrmTaxMast)
loc_10637EF:   Call 0.Method_Proc_15_34_10639EC0 (CInt(0), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_9C, -1);

-- [VERIFIED-VB6] (FrmTaxMast)
loc_1063901:   Call 0.Method_Proc_15_34_10639EC0 (CInt(0), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_9C, -1);

-- [VERIFIED-VB6] (FrmTaxMast)
loc_1065163:   Call 0.Method_Proc_15_35_10653600 (CInt(2), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and ShortName='", var_9C, -1);

-- [VERIFIED-VB6] (FrmTaxMast)
loc_1065275:   Call 0.Method_Proc_15_35_10653600 (CInt(2), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and ShortName='", var_9C, -1);


-- ### FrmTaxStruMast  (13 statement(s))
-- [VERIFIED-VB6] (FrmTaxStruMast)
loc_109943B: var_BC = CVar("Select distinct Code As Code,Name From TaxStru  WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (FrmTaxStruMast)
loc_10994BE: var_BC = CVar("Select Code,Name From RevMast WHERE FIELDTYPE='T' AND (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (FrmTaxStruMast)
loc_1099541: var_BC = CVar("Select distinct Code as SearchCode,Name,LOGSITE_CODE,SITE_CODE From TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (FrmTaxStruMast)
loc_11DD81E:   var_118 = "Delete From TaxStru Where Code='" & Me.Fields.Item("SearchCode").Value & "'";

-- [VERIFIED-VB6] (FrmTaxStruMast)
loc_EC1511: MemVar_1F810E4 = "Select distinct Code As SearchCode,Name FROM TaxStru where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name";

-- [VERIFIED-VB6] (FrmTaxStruMast)
loc_1083F87: var_A0 = "Select TaxStru.*,RevMast.Code as TaxCode, RevMast.Name as TaxName From TaxStru Left Join RevMast on RevMast.Code=TaxStru.TaxCode  where (RevMast.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmTaxStruMast)
loc_1452639:   var_B0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS NUMERIC)),1)+1 AS MyCode From TaxStru WHERE ISNumeric(substring(Code,3,4))=1 AND SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmTaxStruMast)
loc_145275A: unk_4B53E7.Execute "Delete From TaxStru Where Code='" & global_60 & "'", var_C4, -1;

-- [VERIFIED-VB6] (FrmTaxStruMast)
loc_1452ACA:     var_B0 = "Insert Into TaxStru(Code,Name,Sno,TaxCode,Rate,Limit,Limit1,Site_Code,U_Name,U_EntDt,U_AE,Nature,CondApp,LogSite_Code,CompOperator,TaxBeforeDisc) Values ('" & global_60;

-- [VERIFIED-VB6] (FrmTaxStruMast)
loc_108BCF8:   Call 0.Method_Proc_19_51_108BEF40 (CInt(0), var_B8, var_BC, "Select Count(*) From TaxStru Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1);

-- [VERIFIED-VB6] (FrmTaxStruMast)
loc_108BE0A:   Call 0.Method_Proc_19_51_108BEF40 (CInt(0), var_B8, var_BC, "Select Count(*) From TaxStru Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1);

-- [VERIFIED-VB6] (FrmTaxStruMast)
loc_136F2A7:   var_D8 = "Select TaxStru.*,RevMast.Code as TaxCode, RevMast.Name as TaxName From TaxStru Left Join RevMast on RevMast.Code=TaxStru.TaxCode  where RevMast.FieldType='T' and TaxStru.Code='";

-- [VERIFIED-VB6] (FrmTaxStruMast)
loc_136F368:   unk_4B53E7.Execute CStr("Select U_Name,U_AE,U_EntDt From Taxstru where Code='" & var_8C.Fields.Item("Code").Value & "'  "), var_12C, -1;


-- ### FrmPayTypeMast  (28 statement(s))
-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_12871E0: var_E4 = "select SysYN From REVMAST Where Code='" & Me.Fields.Item("Code").Value;

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_12873D7:   unk_512882.Execute CStr("Delete From REVMAST Where Code='" & Me.Fields.Item("Code").Value & "'"), var_128, -1;

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_128752A:   var_104 = "Delete From DepartPay Where PayCode='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_F1D131: MemVar_1F810E4 = "Select REVMAST.Code As SearchCode,REVMAST.Name FROM REVMAST WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and PayType<>'' AND PayType IS NOT NULL Order by REVMAST.Name";

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_10824F3: var_A0 = "SELECT P.*,P.Code as SearchCode,S.SubCode as LedgerCode,S.Name as LedgerName FROM REVMAST P Left join Subgroup S on S.SubCode=P.ACCode WHERE (P.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_153BEF7:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From REVMAST WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_153C1D1:   var_A0 = "Insert Into REVMAST (Code,Name,ShortName,ACCode,PayType,Site_Code,SysYN,FieldType,U_Name,U_EntDt,U_AE,TYPE,BankCommPer,BankCommAc,ACPosting,LogSite_Code) Values ('" & global_100;

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_153C4E1:   var_108 = "UPDATE REVMAST SET Name=" & var_F8;

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_153C65F: unk_512882.Execute "Delete from CreditCardhistory where RevCode='" & global_100 & "'", var_C8, -1;

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_153C976:     var_238 = "Insert into CreditCardhistory (AppDate,RevCode,TaxStru,CommAc,CommPer,Limit,CompOperator,Limit1,U_EntDt,U_AE,U_Name,Site_Code,LogSite_Code) values(";

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_1143E1E: var_B8 = "SELECT Code,Name FROM REVMAST WHERE PayType<>'' AND PayType IS NOT NULL AND (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  ORDER BY Name";

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_1143E90: var_B8 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name";

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_1143F02: var_B8 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name";

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_1143F7D: unk_512882.Execute "SELECT Distinct Code,Name FROM taxstru WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_C8, -1;

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_1143FDF: var_B4 = "SELECT P.*,P.Code as SearchCode,S.SubCode as LedgerCode,S.Name as LedgerName,PayType AS CCARD FROM REVMAST P Left join Subgroup S on S.SubCode=P.ACCode WHERE PayType<>'' AND PayType IS NOT NULL AND (P.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_1144059: unk_512882.Execute "Select [Option] Name,Flag,module_name from MenuHelp Where [Option] ='Banquet' and Flag='N'", var_C8, -1;

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_120AFAF: Call 0.Method_Proc_17_49_120B3AC0 (var_C8, "Select D.Name,D.Code,Case When IsNull(DP.PayCode,'')<>'' Then 1 Else 0 End Value from Depart D Left Join (Select RestCode,PayCode,LogSite_Code From DepartPay Where PayCode='", var_E8);

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_120B2ED: Call 0.Method_Proc_17_49_120B3AC0 (var_C8, "select Restcode,Paycode,Case When IsNull(PayCode,'')<>'' Then 1 Else 0 End Value from DepartPay where restcode='banq'and PayCode='", var_E8);

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_10565F6: unk_512882.Execute "Delete From DepartPay Where PayCode='" & arg_C & "' And LogSite_Code='" & MemVar_1F81078 & "'", var_B8, -1;

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_105667F:     Call 0.Method_Proc_17_50_10568040 (var_86, var_C8, "Insert Into DepartPay(RestCode,PayCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('");

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_10566BD:     var_D8 = var_190 & "Delete From DepartPay Where PayCode='" & arg_C & "','" & arg_C & "','" & MemVar_1F81070 & "','" & MemVar_1F810C8;

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_1056784:   var_94 = "Insert Into DepartPay(RestCode,PayCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('BANQ','" & arg_C & "','" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_149C68A:   unk_512882.Execute CStr("Select U_Name,U_AE,U_EntDt From revmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_11C, -1;

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_149CD65:   var_C8 = "Select SubGroup.Name,TaxStru.Name as Tstru,TaxStru,CommAc,CommPer,AppDate,CreditCardHistory.Limit,CreditCardHistory.CompOperator,CreditCardHistory.Limit1 from (CreditCardHistory inner join SubGroup on SubGroup.SubCode=CreditCardHistory.CommAc) inner join TaxStru on Taxstru.Code=CreditCardHistory.TaxStru  where Sno=1 and Revcode='";

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_1065F81:   Call 0.Method_Proc_17_54_106618C0 (var_A0, "Select Count(*) From RevMast Where ShortName='", var_9C, -1, var_C0);

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_1066081:   Call 0.Method_Proc_17_54_106618C0 (var_A0, "Select Count(*) From RevMast Where ShortName='", var_9C, -1, var_D8);

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_10B1CC7:   Call 0.Method_Proc_17_55_10B1EE40 (var_AC, "Select Count(*) From REVMAST Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1, var_CC);

-- [VERIFIED-VB6] (FrmPayTypeMast)
loc_10B1DC2:   var_114 = CVar("Select Count(*) From REVMAST Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name=") 'String;


-- ### frmEnviro  (58 statement(s))
-- [VERIFIED-VB6] (frmEnviro)
loc_1CA7338:     var_94 = "Insert Into Enviro(AdvanceAc,Loan_Ac,Salary_Ac,PF_Limit,PF_Employee,PF_Employer,ESI_Limit,ESI_Employee,CashPurchAc,variation,VariationBefore,RoomChrgDueAc,RoomTaxDueAc,Rate1,Rate2,Rate3,Rate4,Rate5,DefCompGroup,ArrDateTimeEdit,CashPayType,RoomPayType,OutletDiscAc,OutletRoundAc,CommissionAc,CalcMethod,CHeckout,checkoutvar,SITECODE,Bill_Footer,Bill_Header,CancellationAC,HallRoundOff,HallDiscAC,OutDoorCatering,CatalogLimit,OutDoorSaleAC,IndoorSaleAC," & "OutDoorpartyAC,IndoorPartyAC,TaxSummary,KOTPrinting,KOTPrintEdited,TokenPrint,KOTOutletSelection,DummyTravelAc,LogSite_Code,BookingPartyAc,RoomChrgPostingType,PlanMastType,PostComplimentaryBills,PostRoomDiscSeparately,POSSaleRevenueBifercation,PostPOSDiscSeparately,AllowRoomSettlement,SplitYN,AutoSplitYN,SmartPurchaseOrder,SMSOption,MobileNo,MobileSet,SMSMessage,AdvanceRRoomRent,BillAmendMode,AmendRevenue,RoomRentBefChkOut,RoomRentChkOutPost,PlanSelectionBasedOn,FomBillCopies,PlanCalc,PrintRcpt,RoomCheckOutClearanceYN,RcptPrinting,POSBillAtNightAudit,KOTAtNightAudit,NoShowAtNightAudit,BookingSlipFooter1,BookingSlipFooter2,CashCardDebitAc,CashCardCreditAc,CashCardSecurityAc,OrderBookingPrintType,";

-- [VERIFIED-VB6] (frmEnviro)
loc_1CAA006:     var_98 = "Update Enviro Set AdvanceAc='" & var_94;

-- [VERIFIED-VB6] (frmEnviro)
loc_1CAB3DB:       unk_55432A.Execute CStr(CVar("Update Revmast Set SplitSeqNo=" & CStr(Val(CStr(DGRevenue.DispID_41))) & " Where Code=") & var_214), var_280, -1;

-- [VERIFIED-VB6] (frmEnviro)
loc_FE2919:   var_F4 = "Delete From RoundOffSetting Where ModuleName='" & Trim(CVar(Me.Recordset15.Fields.Item("ModuleName")));

-- [VERIFIED-VB6] (frmEnviro)
loc_11A6DEA: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A0, "DELETE FROM RoundOffSetting WHERE ModuleName='", var_B0);

-- [VERIFIED-VB6] (frmEnviro)
loc_11A6E5B: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A0, "Insert Into RoundOffSetting(ModuleName,RoundOffType,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code) Values('", var_188);

-- [VERIFIED-VB6] (frmEnviro)
loc_14AEB8B: var_BC = CVar("Select SubCode as Code,Name From SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AED45: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F810C8 & "' AND CompCode='" & MemVar_1F81128;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AEDE4: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F810C8 & "' AND CompCode='" & MemVar_1F81128;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AEE83: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F810C8 & "' AND CompCode='" & MemVar_1F81128;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AEF22: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F810C8 & "' AND CompCode='" & MemVar_1F81128;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AEFC1: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F810C8 & "' AND CompCode='" & MemVar_1F81128;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AF060: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F810C8 & "' AND CompCode='" & MemVar_1F81128;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AF0FF: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F810C8 & "' AND CompCode='" & MemVar_1F81128;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AF19E: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F810C8 & "' AND CompCode='" & MemVar_1F81128;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AF23D: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F810C8 & "' AND CompCode='" & MemVar_1F81128;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AF2DC: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F810C8 & "' AND CompCode='" & MemVar_1F81128;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AF3B5: var_BC = CVar("Select I.Code,I.Name From ItemMast I Where (I.LOGSITE_CODE='" & MemVar_1F81078 & "' or I.LOGSITE_CODE='HO') and (I.DirectSale='Y' OR I.Type='Consumables') And (I.GravyItem<>'Yes' or I.GravyItem is NULL) And I.DispCode <>9999 And I.ActiveYN<>'No' Order by I.Name") 'String;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AF441: var_BC = CVar("Select GroupCode AS Code,GroupName as Name From Acgroup where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by GroupName") 'String;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AF4CD: var_BC = CVar("Select Code,Name From Godownmast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AF566: Me.Recordset15.Open CVar("Select * From RoundOffSetting where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')"), CVar(MemVar_1F81044), 2;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AF5BA: var_BC = CVar("Select Code,Name From RevMast Where  FieldType='T' and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AF646: var_BC = CVar("Select Distinct Code,Name From TaxStru Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AF6D2: var_BC = CVar("Select Code,Name From RevMast Where  FieldType='C' and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AF75E: var_BC = CVar("Select Code,Name From RevMast Where PayType in ('Cash','Room') and FieldType='P' and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (frmEnviro)
loc_14AF7F7: Me.Recordset15.Open CVar("Select * From Enviro WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "')"), CVar(MemVar_1F81044), 2;

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCB221:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From Itemmast Where Code='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCB414:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select GroupName From Acgroup Where GroupCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCB605:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From Godownmast Where Code='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCB7F6:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select MAx(Name) As Name From TaxStru Where Code='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCB9E4:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select MAx(Name) As Name From RevMast Where FieldType='T' and Code='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCBBD0:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select MAx(Name) As Name From RevMast Where FieldType='T' and Code='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCBEE4:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCC0D5:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCC2C6:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCC4B7:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCC6A8:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCC899:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCCA8A:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCCC7B:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCCE6C:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCD05D:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCD24E:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCD43F:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCD630:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCD821:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From RevMAst Where Code='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCDA12:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From RevMAst Where Code='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCDC03:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From RevMAst Where Code='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCDDF4:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCDFE5:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCE1D6:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCE3C7:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCE5B8:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where Subcode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCE759:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCE94A:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCEB3B:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_1DCED2C:   Call 0.Method_Proc_56_53_1DD3E240 (var_130, "Select Name From SubGroup Where SubCode='", var_BC);

-- [VERIFIED-VB6] (frmEnviro)
loc_10D3FEA: var_94 = "Select Code,Name,SplitSeqNo From RevMast where Code Not In ('" & MemVar_1F81078 & "ROFF') And (PayType<>'Hold'  OR PayType is NULL) and (LOGSITE_CODE='";


-- ### frmRevGroup  (2 statement(s))
-- [VERIFIED-VB6] (frmRevGroup)
loc_F7DAB6:   unk_426CD2.Execute "Update Revmast set GroupSrNo=" & var_A8 & " where code='" & CStr(Me.FGrid.TextMatrix)) & "'", var_11C, -1;

-- [VERIFIED-VB6] (frmRevGroup)
loc_EA80EB: Me.Connection15.Execute "Select GroupSrNo as Sno,Name as Revenue,code as RevCode,FlagAMR from revmast Order by GroupSrNo", var_AC, -1;


-- ### frmPrintModule  (16 statement(s))
-- [VERIFIED-VB6] (frmPrintModule)
loc_111B96D: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_A4, var_A8, "Select Code From PrintMast Where SITE_CODE='" & MemVar_1F81078 & "' AND Code='");

-- [VERIFIED-VB6] (frmPrintModule)
loc_111BA14:   var_FC = CVar("Select Count(*) from PrinterSetup Where SITE_CODE='" & MemVar_1F81078 & "' AND ModCode='") & var_98.Fields.Item(0).Value;

-- [VERIFIED-VB6] (frmPrintModule)
loc_111BB6C:   var_FC = "Delete From PrintMast Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (frmPrintModule)
loc_1262088:   unk_44D8BC.Execute "Select iif(IsNull(Max(val(Code))),1,Max(val(Code))+1)AS MyCode From Printmast", var_C0, -1;

-- [VERIFIED-VB6] (frmPrintModule)
loc_126215E:   var_AC = "Insert Into PrintMast(Code,MOduleDescription,RestCode,ModType,Site_Code,U_EntDt,U_AE)" & " Values('";

-- [VERIFIED-VB6] (frmPrintModule)
loc_12622C7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_AC, "UPDATE PrintMast SET RestCode='");

-- [VERIFIED-VB6] (frmPrintModule)
loc_121D369:       Call 0.Method_Txt_Validate0 (CInt(2), var_98, "SELECT ModuleName as Code, ModuleDescription as Name FROM PrintFormats WHERE MOduleName='", var_164);

-- [VERIFIED-VB6] (frmPrintModule)
loc_10F8514: unk_44D8BC.Execute "SELECT ModuleName as Code, ModuleDescription as Name FROM  PrintFormats WHERE SITE_CODE='" & MemVar_1F81078 & "'", var_D4, -1;

-- [VERIFIED-VB6] (frmPrintModule)
loc_10F8582: var_D8 = "Select Code,Name,ShortName From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND RestType in ('FOM','Outlet','Room Service') Order by Name";

-- [VERIFIED-VB6] (frmPrintModule)
loc_11D58CC: Me.Connection15.Execute "SELECT * From PrintMast WHERE SITE_CODE='" & MemVar_1F81078 & "'", var_B4, -1;

-- [VERIFIED-VB6] (frmPrintModule)
loc_11D5C14:   var_90 = Proc_6_37_E618F4(CVar(var_8C.Item(var_A4)), "Select Max(Name) From Depart Where Code='", var_E8, -1, var_D4, var_D8);

-- [VERIFIED-VB6] (frmPrintModule)
loc_11D5C36:   unk_44D8C4.Execute 0 & "SELECT * From PrintMast WHERE SITE_CODE='" & MemVar_1F81078 & "' And LogSite_Code='" & MemVar_1F81078 & "'", var_118, var_F8;

-- [VERIFIED-VB6] (frmPrintModule)
loc_11D5CB5:   var_BC.Update var_A4, var_CC;

-- [VERIFIED-VB6] (frmPrintModule)
loc_10C9389:   Call 0.Method_Proc_99_32_10C95E00 (CInt(1), var_A8, var_A4, "Select Count(*) From PrintMast Where restcode='", var_A0, -1);

-- [VERIFIED-VB6] (frmPrintModule)
loc_10C94C2:   Call 0.Method_Proc_99_32_10C95E00 (CInt(1), var_A8, var_A4, "Select Count(*) From PrintMast Where restcode='", var_A0, -1);

-- [VERIFIED-VB6] (frmPrintModule)
loc_F4B0D7: var_B8 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From RevMast WHERE SUBSTRING(Code,2,1) ='";


-- ### frmMod_Print  (29 statement(s))
-- [VERIFIED-VB6] (frmMod_Print)
loc_12CF94A: unk_492E68.Execute "DELETE FROM PRINTERSETUP WHERE SITE_CODE='" & MemVar_1F81078 & "'", var_B4, -1;

-- [VERIFIED-VB6] (frmMod_Print)
loc_12CFB43:     var_94 = "Insert into PrinterSetup (ModType,ModDescription,ModCode,Printer,AutoPrint,RestCode,Site_Code,U_EntDt,U_AE) values('" & CStr(Me.FGrid.TextMatrix));

-- [VERIFIED-VB6] (frmMod_Print)
loc_12CFE1A:     var_94 = "Insert into PrinterSetup (ModType,ModDescription,ModCode,Printer,AutoPrint,RestCode,Site_Code,U_EntDt,U_AE) values('" & CStr(Me.FGrid1.TextMatrix));

-- [VERIFIED-VB6] (frmMod_Print)
loc_139AD1E: unk_492E68.Execute "SELECT printersetup.* FROM PrinterSetup WHERE PrinterSetup.SITE_CODE='" & MemVar_1F81078 & "'", var_C4, -1;

-- [VERIFIED-VB6] (frmMod_Print)
loc_139B0AE:       var_B4 = "Select Max(Name) From Depart Where Code='" & Proc_6_37_E618F4(CVar(Me.Fields.Item("RestCode")), var_118, var_E8, var_E8);

-- [VERIFIED-VB6] (frmMod_Print)
loc_139B3DD:       unk_492E8C.Execute "Select Max(Name) From Depart Where Code='" & var_B0 & "' And LogSite_Code='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (frmMod_Print)
loc_10E2958: Me.Connection15.Execute "Select Distinct ModType,PrintMast.RestCode from PrintMast where SITE_CODE='" & MemVar_1F81078 & "'", var_B8, -1;

-- [VERIFIED-VB6] (frmMod_Print)
loc_10E29CC:   var_94 = Proc_6_37_E618F4(CVar(var_88.Fields.Item(var_A8)), "Select Max(Name) From Depart Where Code='", var_EC, -1, var_F0, var_F4);

-- [VERIFIED-VB6] (frmMod_Print)
loc_10E29DE:   var_C8 = 0 & "Select Distinct ModType,PrintMast.RestCode from PrintMast where SITE_CODE='" & MemVar_1F81078 & "' And LogSite_Code='" & MemVar_1F81078;

-- [VERIFIED-VB6] (frmMod_Print)
loc_10E2BB9:     var_11C.Update var_A8, var_DC;

-- [VERIFIED-VB6] (frmMod_Print)
loc_1106340: Me.Connection15.Execute "Select Distinct Code as ModCode,ModuleDescription,ModType,RestCode from PrintMast where SITE_CODE='" & MemVar_1F81078 & "'", var_B8, -1;

-- [VERIFIED-VB6] (frmMod_Print)
loc_11063B4:   var_94 = Proc_6_37_E618F4(CVar(var_88.Fields.Item(var_A8)), "Select Max(Name) From Depart Where Code='", var_EC, -1, var_F0, var_F4);

-- [VERIFIED-VB6] (frmMod_Print)
loc_11063BF:   var_C4 = 0 & "Select Distinct Code as ModCode,ModuleDescription,ModType,RestCode from PrintMast where SITE_CODE='" & MemVar_1F81078 & "' And LogSite_Code='";

-- [VERIFIED-VB6] (frmMod_Print)
loc_11065CF:     var_11C.Update var_A8, var_DC;

-- [VERIFIED-VB6] (frmMod_Print)
loc_12A01F3: var_98 = "Select Distinct Max(Code) as ModCode,RestCode from PrintMast where SITE_CODE='" & MemVar_1F81078 & "' And ModType='POS' Group By RestCode";

-- [VERIFIED-VB6] (frmMod_Print)
loc_12A0261:   var_94 = Proc_6_37_E618F4(CVar(var_90.Item("RestCode")), "Select Code RestCode,IsNull(Name,'') Department, IsNull(KOTYN,'') KOTYN, IsNull(Order_Booking,'') ORDYN From Depart Where Code='", var_EC, -1);

-- [VERIFIED-VB6] (frmMod_Print)
loc_12A026C:   var_C4 = var_F0 & "Select Distinct Max(Code) as ModCode,RestCode from PrintMast where SITE_CODE='" & MemVar_1F81078 & "' And LogSite_Code='";

-- [VERIFIED-VB6] (frmMod_Print)
loc_12A0482:         var_F8.Update var_A8, var_DC;

-- [VERIFIED-VB6] (frmMod_Print)
loc_12A0613:           var_100.Update var_A8, var_DC;

-- [VERIFIED-VB6] (frmMod_Print)
loc_12A0765:         var_104.Update var_A8, var_DC;

-- [VERIFIED-VB6] (frmMod_Print)
loc_141BCDB: var_98 = "Select Distinct Max(Code) as ModCode,'KOT' As ModType,RestCode from PrintMast where SITE_CODE='" & MemVar_1F81078 & "' And ModType='POS' Group By RestCode";

-- [VERIFIED-VB6] (frmMod_Print)
loc_141BD58:   var_94 = Proc_6_37_E618F4(CVar(var_88.Fields.Item(var_A8)), "Select Max(Name) From Depart Where Code='", var_EC, -1, var_F0, var_F4);

-- [VERIFIED-VB6] (frmMod_Print)
loc_141BD63:   var_C4 = 0 & "Select Distinct Max(Code) as ModCode,'KOT' As ModType,RestCode from PrintMast where SITE_CODE='" & MemVar_1F81078 & "' And LogSite_Code='";

-- [VERIFIED-VB6] (frmMod_Print)
loc_141BF44:     var_11C.Update var_A8, var_DC;

-- [VERIFIED-VB6] (frmMod_Print)
loc_141C0C5:     var_120.Update var_A8, var_DC;

-- [VERIFIED-VB6] (frmMod_Print)
loc_141C246:     var_124.Update var_A8, var_DC;

-- [VERIFIED-VB6] (frmMod_Print)
loc_141C3C7:     var_128.Update var_A8, var_DC;

-- [VERIFIED-VB6] (frmMod_Print)
loc_141C548:     var_12C.Update var_A8, var_DC;

-- [VERIFIED-VB6] (frmMod_Print)
loc_141C6C9:     var_130.Update var_A8, var_DC;


-- ### FrmRevenueWiseBudget  (11 statement(s))
-- [VERIFIED-VB6] (FrmRevenueWiseBudget)
loc_F13AEB: unk_43325B.Execute "SELECT B.Month_Year As SearchCode FROM BUDGETDETAILS B ORDER BY MONTH_YEAR,SNO", var_A8, -1;

-- [VERIFIED-VB6] (FrmRevenueWiseBudget)
loc_11D53E9: Call 0.Method_CmdSave_Click0 (CInt(0), var_98, "Delete from BudgetDetails WHERE Month_Year='", var_15C);

-- [VERIFIED-VB6] (FrmRevenueWiseBudget)
loc_11D55D8:     var_14C = "Insert into BudgetDetails(SNo,Month_Year,RevCode,Detail,Budget,Header,U_Name,U_EntDt,U_AE,Site_Code,lOGSITE_CODE) values (";

-- [VERIFIED-VB6] (FrmRevenueWiseBudget)
loc_122F9B8:   var_E8 = "Select * from BudgetDetails where Month_year='" & Me.Fields.Item("SearchCode").Value;

-- [VERIFIED-VB6] (FrmRevenueWiseBudget)
loc_13CF02A: var_FC = "SELECT Name,Code From RevMast WHERE (FlagType = 'FOM') AND (FieldType = 'C') AND (FlagAMR <> 'Header') AND (Type = 'Cr') AND (Code IN ('" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmRevenueWiseBudget)
loc_13CF031: var_100 = var_FC & "RMCH')) AND (Code NOT IN (SELECT DISTINCT RevCode From FixedCharge WHERE ChgCategory = 'Meal Charges')) AND LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmRevenueWiseBudget)
loc_13CF221: var_FC = "SELECT Name,Code From RevMast WHERE (FlagAMR = 'Header') AND (FlagType = 'POS') AND (Type = 'Cr') AND LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmRevenueWiseBudget)
loc_13CF39B: var_FC = "SELECT Name,Code From RevMast WHERE (FlagType = 'FOM') AND (FieldType = 'C') AND (FlagAMR <> 'Header') AND (Type = 'Cr') AND (Code NOT IN ('" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmRevenueWiseBudget)
loc_13CF3B0: var_108 = var_FC & "TOUT','" & MemVar_1F81078 & "ROFF')) AND (Code IN (SELECT DISTINCT RevCode From FixedCharge WHERE ChgCategory = 'Meal Charges')) AND LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmRevenueWiseBudget)
loc_13CF5A4: var_FC = "SELECT Name,Code From RevMast WHERE (FlagType = 'FOM') AND (FieldType = 'C') AND (FlagAMR <> 'Header') AND (Type = 'Cr') AND (Code NOT IN ('" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmRevenueWiseBudget)
loc_13CF5C7: var_188 = var_FC & "TOUT','" & MemVar_1F81078 & "RMCH','" & MemVar_1F81078 & "ROFF')) AND (Code NOT IN (SELECT DISTINCT RevCode From FixedCharge WHERE ChgCategory = 'Meal Charges')) AND LOGSITE_CODE='";


-- ---------------------------------------------------------------------------
-- Front Office Setup
-- ---------------------------------------------------------------------------

-- ### FaCountryMast  (13 statement(s))
-- [VERIFIED-VB6] (FaCountryMast)
loc_1179E4F:   unk_452571.Execute CStr("Delete From Country Where Code='" & Me.Fields.Item("Code").Value & "'"), var_134, -1;

-- [VERIFIED-VB6] (FaCountryMast)
loc_EE7BD2: var_10C = "Select Country.Code As SearchCode,Country.Name,Country.ShortName,Country.Type,Country.Nationality FROM Country WHERE (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaCountryMast)
loc_104226B: unk_452571.Execute "select * FROM Country WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') order by Name", var_C4, -1;

-- [VERIFIED-VB6] (FaCountryMast)
loc_12F8ACC:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From Country WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FaCountryMast)
loc_12F8C13:   var_9C = "Insert Into Country(Code,Name,ShortName,Type,Nationality,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_80;

-- [VERIFIED-VB6] (FaCountryMast)
loc_12F8DB0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE Country SET Name='");

-- [VERIFIED-VB6] (FaCountryMast)
loc_1064CAC: unk_452571.Execute "SELECT Code,Name FROM Country WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1;

-- [VERIFIED-VB6] (FaCountryMast)
loc_1064D1E: unk_452571.Execute "SELECT * FROM Country WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1;

-- [VERIFIED-VB6] (FaCountryMast)
loc_1251438: unk_45258A.Execute CStr("Select U_Name,U_AE,U_EntDt From country where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (FaCountryMast)
loc_1086678:   Call 0.Method_Proc_196_31_108688C0 (CInt(0), var_A8, var_A4, "Select Count(*) From Country Where Name='", var_A0, -1);

-- [VERIFIED-VB6] (FaCountryMast)
loc_1086778:   Call 0.Method_Proc_196_31_108688C0 (CInt(0), var_A8, var_A4, "Select Count(*) From Country Where Name='", var_A0, -1);

-- [VERIFIED-VB6] (FaCountryMast)
loc_1066AE4:   Call 0.Method_Proc_196_32_1066CF80 (CInt(1), var_A4, var_A0, "Select Count(*) From Country Where ShortName='", var_9C, -1);

-- [VERIFIED-VB6] (FaCountryMast)
loc_1066BE4:   Call 0.Method_Proc_196_32_1066CF80 (CInt(1), var_A4, var_A0, "Select Count(*) From Country Where ShortName='", var_9C, -1);


-- ### FaStateMast  (14 statement(s))
-- [VERIFIED-VB6] (FaStateMast)
loc_1121F1B:   unk_45B6C3.Execute CStr("Delete From State Where Code='" & Me.Fields.Item("SCode").Value & "'"), var_134, -1;

-- [VERIFIED-VB6] (FaStateMast)
loc_EE8326: var_10C = "Select State.Code As SearchCode,State.Name,State.ShortName,Country.Name as CountryName FROM State LEFT JOIN Country ON State.Country=Country.Code WHERE (STATE.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaStateMast)
loc_10447C3: var_A0 = "SELECT State.Code as SCode, State.Name as SName, State.ShortName as SShortName,Country.Name AS CCountry FROM State LEFT JOIN Country ON State.Country=Country.Code WHERE (STATE.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaStateMast)
loc_12C5A28:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From State WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FaStateMast)
loc_12C5B6F:   var_9C = "Insert Into State(Code,Name,ShortName,Country,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_64;

-- [VERIFIED-VB6] (FaStateMast)
loc_12C5CD3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE State SET Name='");

-- [VERIFIED-VB6] (FaStateMast)
loc_115FE45: unk_45B6C3.Execute "SELECT Code,Name FROM State WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1;

-- [VERIFIED-VB6] (FaStateMast)
loc_115FEB7: unk_45B6C3.Execute "Select Code,Name from Country WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') order by Name", var_DC, -1;

-- [VERIFIED-VB6] (FaStateMast)
loc_115FF19: var_C8 = "SELECT State.Code as SCode,State.Name as SName,State.ShortName as SShortName,State.Site_Code as SSite_Code,State.U_Name as SU_Name,State.U_EntDt as SU_EntDt,State.U_AE as SU_AE,Country.Name AS CCountry,STATE.LOGSITE_CODE,STATE.SITE_CODE FROM State LEFT JOIN Country ON State.Country=Country.Code WHERE (STATE.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaStateMast)
loc_124A1E0: unk_45B6D9.Execute CStr("Select U_Name,U_AE,U_EntDt From state where Code='" & Me.Fields.Item("SCode").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (FaStateMast)
loc_10857A0:   Call 0.Method_Proc_197_32_10859B40 (CInt(0), var_A8, var_A4, "Select Count(*) From State Where Name='", var_A0, -1);

-- [VERIFIED-VB6] (FaStateMast)
loc_10858A0:   Call 0.Method_Proc_197_32_10859B40 (CInt(0), var_A8, var_A4, "Select Count(*) From State Where Name='", var_A0, -1);

-- [VERIFIED-VB6] (FaStateMast)
loc_106791C:   Call 0.Method_Proc_197_33_1067B300 (CInt(1), var_A4, var_A0, "Select Count(*) From State Where ShortName='", var_9C, -1);

-- [VERIFIED-VB6] (FaStateMast)
loc_1067A1C:   Call 0.Method_Proc_197_33_1067B300 (CInt(1), var_A4, var_A0, "Select Count(*) From State Where ShortName='", var_9C, -1);


-- ### FaCityMast  (19 statement(s))
-- [VERIFIED-VB6] (FaCityMast)
loc_115F221: unk_482AB7.Execute "SELECT CityCode,CityName FROM City WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') ORDER BY CityName", var_DC, -1;

-- [VERIFIED-VB6] (FaCityMast)
loc_115F293: unk_482AB7.Execute "Select Code,Name from State WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') order by Name", var_DC, -1;

-- [VERIFIED-VB6] (FaCityMast)
loc_115F2F5: var_C8 = "SELECT City.CityCode AS CCode,City.CityName AS CName,City.ShortName AS CShortName,City.STDCode AS CSTDCode,City.ZipCode AS CZipCode,City.State as CityState,City.Country as CityCntry,City.Site_Code AS CSite_Code,City.U_Name AS CU_Name,City.U_EntDt AS CU_EntDt,City.U_AE AS CU_AE,State.Name AS CState,Country.Name AS CCountry,City.Site_Code,City.LogSite_Code FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE (CITY.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaCityMast)
loc_10F7A6B:         Call 0.Method_Txt_KeyDown0 (CInt(4), var_94, var_C8, "Select Code,Name from Country where Code in(select Country from State where Name='", var_B4);

-- [VERIFIED-VB6] (FaCityMast)
loc_110CA1F:   var_B4 = CStr("Delete From City Where CityCode='" & Me.Fields.Item("cCode").Value & "'");

-- [VERIFIED-VB6] (FaCityMast)
loc_EE896E: var_10C = "Select City.CityCode As SearchCode,City.CityName as CityName, City.ShortName as ShortName, City.STDCode as STDCode, City.ZipCode as ZipCode,State.Name as StateName, Country.Name as CountryName FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE (CITY.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaCityMast)
loc_1032055: unk_482AB7.Execute "SELECT City.CityCode AS CCode, City.CityName AS CName, City.ShortName AS CShortName, City.STDCode AS CSTDCode, City.ZipCode AS CZipCode, City.Site_Code AS CSite_Code, City.U_Name AS CU_Name, City.U_EntDt AS CU_EntDt, City.U_AE AS CU_AE, State.Name AS CState, Country.Name AS CCountry FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code ORDER BY City.CityName", var_BC, -1;

-- [VERIFIED-VB6] (FaCityMast)
loc_139A510:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(CityCode,3,4) AS INT)),1)+1 AS MyCode From City WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FaCityMast)
loc_139A697:   var_A4 = "Insert Into City(CityCode,CityName,ShortName,STDCode,ZipCode,State,Country,CityHelp,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_64;

-- [VERIFIED-VB6] (FaCityMast)
loc_139A8B8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A4, "UPDATE City SET CityName='");

-- [VERIFIED-VB6] (FaCityMast)
loc_12DFFD0: unk_482AD1.Execute CStr("Select U_Name,U_AE,U_EntDt From city where cityCode='" & Me.Fields.Item("cCode").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (FaCityMast)
loc_10854A8:   Call 0.Method_Proc_195_32_10856BC0 (CInt(0), var_A8, var_A4, "Select Count(*) From City Where CityName='", var_A0, -1);

-- [VERIFIED-VB6] (FaCityMast)
loc_10855A8:   Call 0.Method_Proc_195_32_10856BC0 (CInt(0), var_A8, var_A4, "Select Count(*) From City Where CityName='", var_A0, -1);

-- [VERIFIED-VB6] (FaCityMast)
loc_1067BF4:   Call 0.Method_Proc_195_33_1067E080 (CInt(1), var_A4, var_A0, "Select Count(*) From City Where ShortName='", var_9C, -1);

-- [VERIFIED-VB6] (FaCityMast)
loc_1067CF4:   Call 0.Method_Proc_195_33_1067E080 (CInt(1), var_A4, var_A0, "Select Count(*) From City Where ShortName='", var_9C, -1);

-- [VERIFIED-VB6] (FaCityMast)
loc_10B3C96:   Call 0.Method_Proc_195_34_10B3EA80 (CInt(2), var_90, var_94, "Select Count(*) From City Where STDCode='", var_A4, -1);

-- [VERIFIED-VB6] (FaCityMast)
loc_10B3D96:   Call 0.Method_Proc_195_34_10B3EA80 (CInt(2), var_90, var_94, "Select Count(*) From City Where STDCode='", var_A4, -1);

-- [VERIFIED-VB6] (FaCityMast)
loc_10B396A:   Call 0.Method_Proc_195_35_10B3B7C0 (CInt(3), var_90, var_94, "Select Count(*) From City Where ZipCode='", var_A4, -1);

-- [VERIFIED-VB6] (FaCityMast)
loc_10B3A6A:   Call 0.Method_Proc_195_35_10B3B7C0 (CInt(3), var_90, var_94, "Select Count(*) From City Where ZipCode='", var_A4, -1);


-- ### FrmMarketSeg  (11 statement(s))
-- [VERIFIED-VB6] (FrmMarketSeg)
loc_10766BD: unk_453F9E.Execute "SELECT Code,Name FROM MarketSeg WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1;

-- [VERIFIED-VB6] (FrmMarketSeg)
loc_107672F: unk_453F9E.Execute "SELECT * FROM MarketSeg WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1;

-- [VERIFIED-VB6] (FrmMarketSeg)
loc_118602A:   var_114 = "Delete From MarketSeg Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmMarketSeg)
loc_F20C21: MemVar_1F810E4 = "Select MarketSeg.Code As SearchCode,MarketSeg.Name,MarketSeg.Active FROM MarketSeg Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by MarketSeg.Name";

-- [VERIFIED-VB6] (FrmMarketSeg)
loc_107C977: unk_453F9E.Execute "select * FROM MarketSeg Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1;

-- [VERIFIED-VB6] (FrmMarketSeg)
loc_1258DE2:   unk_453F9E.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From MarketSeg", var_B0, -1;

-- [VERIFIED-VB6] (FrmMarketSeg)
loc_1258F13:   var_9C = "Insert Into MarketSeg(Code,Name,Active,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_60;

-- [VERIFIED-VB6] (FrmMarketSeg)
loc_125904E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE MarketSeg SET Name='");

-- [VERIFIED-VB6] (FrmMarketSeg)
loc_1205D24: unk_453F9E.Execute CStr("Select U_Name,U_AE,U_EntDt From MarketSeg where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (FrmMarketSeg)
loc_107CFBF:   Call 0.Method_Proc_14_30_107D1BC0 (CInt(0), var_A8, var_AC, "Select Count(*) From MarketSeg Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmMarketSeg)
loc_107D0D1:   Call 0.Method_Proc_14_30_107D1BC0 (CInt(0), var_A8, var_AC, "Select Count(*) From MarketSeg Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);


-- ### FrmBusinessSrc  (11 statement(s))
-- [VERIFIED-VB6] (FrmBusinessSrc)
loc_1076C95: unk_45671B.Execute "SELECT Code,Name FROM BussSource WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1;

-- [VERIFIED-VB6] (FrmBusinessSrc)
loc_1076D07: unk_45671B.Execute "SELECT * FROM BussSource WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1;

-- [VERIFIED-VB6] (FrmBusinessSrc)
loc_118FA78:   var_118 = "Delete From BussSource Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmBusinessSrc)
loc_F1BF3A: var_10C = "Select BussSource.Code As SearchCode,BussSource.Name,BussSource.Active FROM BussSource where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmBusinessSrc)
loc_1080193: unk_45671B.Execute "select * FROM BussSource where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1;

-- [VERIFIED-VB6] (FrmBusinessSrc)
loc_12608A0:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From BussSource WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmBusinessSrc)
loc_12609E7:   var_9C = "Insert Into BussSource(Code,Name,Active,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_60;

-- [VERIFIED-VB6] (FrmBusinessSrc)
loc_1260B22:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE BussSource SET Name='");

-- [VERIFIED-VB6] (FrmBusinessSrc)
loc_1206764: unk_45671B.Execute CStr("Select U_Name,U_AE,U_EntDt From BussSource where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (FrmBusinessSrc)
loc_1081C87:   Call 0.Method_Proc_12_30_1081E840 (CInt(0), var_A8, var_AC, "Select Count(*) From BussSource Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmBusinessSrc)
loc_1081D99:   Call 0.Method_Proc_12_30_1081E840 (CInt(0), var_A8, var_AC, "Select Count(*) From BussSource Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);


-- ### FrmGuestStat  (11 statement(s))
-- [VERIFIED-VB6] (FrmGuestStat)
loc_113AAAA:   var_118 = "Delete From GuestStat Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmGuestStat)
loc_F1B649: MemVar_1F810E4 = "Select GuestStat.Code As SearchCode,GuestStat.Name FROM GuestStat Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by GuestStat.Name";

-- [VERIFIED-VB6] (FrmGuestStat)
loc_1080487: unk_442DC1.Execute "select * FROM GuestStat Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1;

-- [VERIFIED-VB6] (FrmGuestStat)
loc_12111D8:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From GuestStat WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmGuestStat)
loc_121131F:   var_9C = "Insert Into GuestStat(Code,Name,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code) Values('" & global_60;

-- [VERIFIED-VB6] (FrmGuestStat)
loc_1211411:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE GuestStat SET Name='");

-- [VERIFIED-VB6] (FrmGuestStat)
loc_1041E2A: unk_442DC1.Execute "SELECT Code,Name FROM GuestStat WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1;

-- [VERIFIED-VB6] (FrmGuestStat)
loc_1041E9C: unk_442DC1.Execute "SELECT * FROM GuestStat WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1;

-- [VERIFIED-VB6] (FrmGuestStat)
loc_11CF450: unk_442DC1.Execute CStr("Select U_Name,U_AE,U_EntDt From gueststat where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (FrmGuestStat)
loc_10810B7:   Call 0.Method_Proc_13_30_10812B40 (CInt(0), var_A8, var_AC, "Select Count(*) From GuestStat Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmGuestStat)
loc_10811C9:   Call 0.Method_Proc_13_30_10812B40 (CInt(0), var_A8, var_AC, "Select Count(*) From GuestStat Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);


-- ### FrmChargeMast  (21 statement(s))
-- [VERIFIED-VB6] (FrmChargeMast)
loc_108697F: var_94 = "SELECT Code,Name FROM RevMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  AND FlagAMR='Detail' and FLAGTYPE='FOM' ORDER BY Name";

-- [VERIFIED-VB6] (FrmChargeMast)
loc_10869F1: var_94 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name";

-- [VERIFIED-VB6] (FrmChargeMast)
loc_1086A6C: unk_4CE543.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1;

-- [VERIFIED-VB6] (FrmChargeMast)
loc_1086ACE: var_90 = "SELECT distinct R.*,R.Code as SearchCode,S.SubCode as LedgerCode ,S.Name as LedgerName,T.Code as TaxCode,T.Name as TaxName FROM ((RevMast R Left Join TaxStru T on T.Code=R.TaxStru) Left join Subgroup S on S.SubCode=R.ACCode) where (R.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmChargeMast)
loc_1220B48: var_FC = "select SysYN From RevMast Where Code='" & Me.Fields.Item("Code").Value;

-- [VERIFIED-VB6] (FrmChargeMast)
loc_1220CB3:   var_11C = "Delete From RevMast Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmChargeMast)
loc_F1E31A: var_10C = "Select RevMast.Code As SearchCode,RevMast.HSNCode,RevMast.Name FROM RevMast WHERE FlagAMR='Detail' and FLAGTYPE='FOM' And (RevMast.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmChargeMast)
loc_10CAA3D: unk_4CE543.Execute "Select RevMast.Code As SearchCode,RevMast.Name FROM RevMast WHERE FlagAMR='Detail' and FLAGTYPE='FOM' Order by RevMast.Name", var_BC, -1;

-- [VERIFIED-VB6] (FrmChargeMast)
loc_10CAA65: var_C4 = "Select RevMast.Name,RevMast.ShortName,cast(RevMast.Cost as Varchar(11)) as Cost,cast(RevMast.SaleRate as varchar(11)) as SaleRate,S.Name as AccName,T.Name as TaxName " & "FROM (RevMast";

-- [VERIFIED-VB6] (FrmChargeMast)
loc_14A738E:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From RevMast Where SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmChargeMast)
loc_14A76A9:   var_A0 = "Insert Into RevMast(Code,Name,ShortName,ACCode,TaxStru,SaleRate,Cost,Site_Code,SysYN,Type,AppMode,FlagType,FlagAMR,DeskCode,U_Name,U_EntDt,U_AE,FIELDTYPE,logSite_Code,ACPosting,Nature,Active,TaxInc,HSNCode) Values('" & global_72;

-- [VERIFIED-VB6] (FrmChargeMast)
loc_14A7A8A:   var_C8 = "UPDATE RevMast SET Active=";

-- [VERIFIED-VB6] (FrmChargeMast)
loc_13F3525: unk_4CE543.Execute CStr("Select U_Name,U_AE,U_EntDt From revmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (FrmChargeMast)
loc_1083427:   Call 0.Method_Proc_71_35_10836240 (CInt(0), var_A8, var_AC, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmChargeMast)
loc_1083539:   Call 0.Method_Proc_71_35_10836240 (CInt(0), var_A8, var_AC, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmChargeMast)
loc_10AAE5B:   Call 0.Method_Proc_71_36_10AB07C0 (CInt(1), var_A8, var_AC, "Select Count(*) From RevMast Where LogSite_Code='" & MemVar_1F81078 & "' and ShortName='", var_A0, -1);

-- [VERIFIED-VB6] (FrmChargeMast)
loc_10AAF6D:   Call 0.Method_Proc_71_36_10AB07C0 (CInt(1), var_A8, var_AC, "Select Count(*) From RevMast Where LogSite_Code='" & MemVar_1F81078 & "' and ShortName='", var_A0, -1);

-- [VERIFIED-VB6] (FrmChargeMast)
loc_108ECA8: unk_4CE543.Execute CStr("Select taxcode from taxstru where code='" & Trim(arg_14) & "'"), var_114, -1;

-- [VERIFIED-VB6] (FrmChargeMast)
loc_108ED3E:   var_150 = "Select Code from taxstru where taxcode='" & var_88.Fields.Item("TaxCode").Value & "' and Code not in ('" & Trim(arg_14) & "')";

-- [VERIFIED-VB6] (FrmChargeMast)
loc_108EDF0:     var_130 = "Select Count(*) from RevMast where TaxStru='" & var_90.Fields.Item("Code").Value & "' and DeskCode='" & CVar(arg_10) & "'";

-- [VERIFIED-VB6] (FrmChargeMast)
loc_108EECB:   unk_4CE543.Execute CStr("Delete From RevMast Where TaxCode='" & var_88.Fields.Item("TaxCode").Value & "' and DeskCode='" & Trim(arg_10) & "'"), var_170, -1;


-- ### frmFixedChargeMast  (20 statement(s))
-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_1087860: unk_4C69B3.Execute "SELECT Code,Name FROM FixedCharge WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1;

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_10878C2: var_90 = "SELECT  distinct Revmast.Code as Code,RevMast.Name as Name,RevMast.taxstru as TaxCode,TaxStru.name as Taxname FROM RevMast left join TaxStru on  Taxstru.Code=Revmast.Taxstru where (Revmast.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_1087944: unk_4C69B3.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1;

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_10879A6: var_90 = "SELECT distinct R.*,R.Code as SearchCode,S.Code as RevCode ,S.Name as RevName,T.Code as TaxCode,T.Name as TaxName FROM ((FixedCharge R Left Join TaxStru T on T.Code=R.TaxStru) Left join RevMast S on S.Code=R.RevCode) WHERE (R.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_10E0454:   var_FC = "Delete From FixedCharge Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_F1F281: MemVar_1F810E4 = "Select FixedCharge.Code As SearchCode,FixedCharge.Name FROM FixedCharge where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by FixedCharge.Name";

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_108D783: var_A0 = "SELECT FixedCharge.Name, FixedCharge.SName, FixedCharge.Adult, FixedCharge.FlatRate, S.Name AS AccName FROM (FixedCharge INNER JOIN RevMast ON FixedCharge.Revcode = RevMast.Code) INNER JOIN SubGroup AS S ON RevMast.ACCode = S.SubCode" & " where (FixedCharge.LOGSITE_CODE='";

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_15CAC84:   unk_4C69B3.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From FixedCharge ", var_B4, -1;

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_15CAFD9:   var_A0 = "Insert Into FixedCharge(Code,Name,SName,ChgCategory,RevCode,TaxInc,TaxStru,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild,Site_Code,PrintOption,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_72;

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_15CB45C:   var_144 = "UPDATE FixedCharge SET Name='" & var_A0 & "',Sname='" & var_110 & "',ChgCategory='" & var_12C.Text & "',RevCode='" & var_140.Tag;

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_15CB839:   var_F4 = CVar("UPDATE PLAN1 SET RevCode='" & var_A0 & "',TaxStru='" & var_118.Tag & "',FlatRate=") 'String;

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_1404A54: unk_4C69B3.Execute CStr("Select U_Name,U_AE,U_EntDt From FixedCharge where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_108226F:   Call 0.Method_Proc_140_36_108246C0 (CInt(0), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_1082381:   Call 0.Method_Proc_140_36_108246C0 (CInt(0), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_10A8263:   Call 0.Method_Proc_140_37_10A84840 (CInt(1), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and SName='", var_A0, -1);

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_10A8375:   Call 0.Method_Proc_140_37_10A84840 (CInt(1), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and SName='", var_A0, -1);

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_108BFA8: unk_4C69B3.Execute CStr("Select taxcode from taxstru where code='" & Trim(arg_14) & "'"), var_114, -1;

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_108C03E:   var_150 = "Select Code from taxstru where taxcode='" & var_88.Fields.Item("TaxCode").Value & "' and Code not in ('" & Trim(arg_14) & "')";

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_108C0E7:     var_114 = "Select Count(*) from FixedCharge where TaxStru='" & var_90.Fields.Item("Code").Value & "' and DeskCode='" & CVar(arg_10);

-- [VERIFIED-VB6] (frmFixedChargeMast)
loc_108C1C1:   var_F4 = CStr("Delete From FixedCharge Where TaxCode='" & var_88.Fields.Item("TaxCode").Value & "' and DeskCode='" & Trim(arg_10) & "'");


-- ### FrmPackageMast  (28 statement(s))
-- [VERIFIED-VB6] (FrmPackageMast)
loc_1318ECF: var_140 = "Select *,Code as SearchCode From PlanMast where Plan_Package = '" & IIf((global_56 = "Plan"), "Plan", "Package") & "' AND (LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmPackageMast)
loc_1318F44: var_194 = "Select Code,Name,Sname,Revcode,TaxInc,Taxstru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild From FixedCharge WHERE (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmPackageMast)
loc_1318FC7: var_194 = "Select Code,Name,Sname,Revcode,TaxInc,Taxstru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild From FixedCharge WHERE (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmPackageMast)
loc_1319051: var_D0 = CVar("Select Code,Name From RoomCat WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (FrmPackageMast)
loc_13190E4: unk_50648C.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D0, -1;

-- [VERIFIED-VB6] (FrmPackageMast)
loc_1319197: var_140 = "Select Code,Name From PlanMast where Plan_Package='" & IIf((global_56 = "Plan"), "Plan", "Package") & " ' AND (LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmPackageMast)
loc_11BE209:   unk_50648C.Execute CStr("Delete From PlanMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1;

-- [VERIFIED-VB6] (FrmPackageMast)
loc_11BE35C:   var_100 = "Delete from Plan1 where Code='" & Me.Fields.Item("SearchCode").Value & "'";

-- [VERIFIED-VB6] (FrmPackageMast)
loc_EE62CC:   var_10C = "Select P.Code As SearchCode,P.Name,R.Name Category,P.Adults,P.RRIncTax TaxInc,P.PackageAmount Amount,P.Tariff from PlanMast P Left Join RoomCat R On R.Code=P.RoomCat where P.Plan_Package in ('Plan') AND (P.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmPackageMast)
loc_EE62E4:   var_10C = "Select P.Code As SearchCode,P.Name,R.Name Category,P.Adults,P.RRIncTax TaxInc,P.PackageAmount Amount,P.Tariff from PlanMast P Left Join RoomCat R On R.Code=P.RoomCat where P.Plan_Package in ('Package') AND (P.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmPackageMast)
loc_173D380:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From PlanMast WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmPackageMast)
loc_173D754:   var_A4 = "Insert Into PlanMast (Code,Name,Total,Site_Code,U_Name,U_EntDt,U_AE,App_Date,Plan_Package,ActiveYn,RoomPer,LogSite_Code,PercentApp,RoomRate,PackageAmount,DiscAppYN,DiscAppOn,Nights,Adults,Childs,RRIncTax,RoomCat,RoomTaxStru,Tariff,MapCode) Values ('" & CStr(var_134);

-- [VERIFIED-VB6] (FrmPackageMast)
loc_173DD83:   var_158 = "Update PlanMast Set Name='" & var_A4 & "',Total=" & var_B8.Text & ",Site_Code='" & MemVar_1F81070 & "',U_Name='" & MemVar_1F810C8;

-- [VERIFIED-VB6] (FrmPackageMast)
loc_173E041: unk_50648C.Execute "Select Count(*) From Plan1 Where Code='" & global_96 & "'", var_B4, -1;

-- [VERIFIED-VB6] (FrmPackageMast)
loc_173E0A6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C, "DELETE FROM Plan1 WHERE APP_DATE=", var_1B8);

-- [VERIFIED-VB6] (FrmPackageMast)
loc_173E51C:     var_A4 = "INSERT INTO Plan1 (Code,ChrgCode,RevCode,TaxInc,FixRate,TaxStru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,child,ExtraAdult,ExtraChild,NoOfDays,Site_Code,U_Name,U_EntDT,U_AE,PlanPer,App_Date,LogSite_Code,PerDayAmount,NetAmount)VALUES ('" & global_96;

-- [VERIFIED-VB6] (FrmPackageMast)
loc_173E80A: unk_50648C.Execute "Select Count(*) From PlanTokenDetails Where PlanCode='" & global_96 & "'", var_B4, -1;

-- [VERIFIED-VB6] (FrmPackageMast)
loc_173E86F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C, "DELETE FROM PlanTokenDetails WHERE APP_DATE=", var_1B8);

-- [VERIFIED-VB6] (FrmPackageMast)
loc_173EA68:     var_BC = "INSERT INTO PlanTokenDetails (Sno,PlanCode,ChrgCode,Rate,Remarks,App_Date,Site_Code,U_Name,U_EntDT,U_AE,LogSite_Code) VALUES (" & CStr(var_92);

-- [VERIFIED-VB6] (FrmPackageMast)
loc_13E7082:           Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C, "Select Count(*) From PlanMast Where Name='", var_12C, -1);

-- [VERIFIED-VB6] (FrmPackageMast)
loc_13E71C2:           Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C, "Select Count(*) From PlanMast Where Name='", var_178, -1, var_130);

-- [VERIFIED-VB6] (FrmPackageMast)
loc_13E7428:             Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C, "Select Count(*) From PlanMast Where Name='", var_12C, -1);

-- [VERIFIED-VB6] (FrmPackageMast)
loc_13E7568:             Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C, "Select Count(*) From PlanMast Where Name='", var_C4, -1, var_B0);

-- [VERIFIED-VB6] (FrmPackageMast)
loc_16B692E:   var_C8 = "Select PLANMAST.*,ROOMCAT.NAME AS ROOMCATNAME,TaxStru.Name as TaxStruName From PlanMast LEFT JOIN ROOMCAT ON (ROOMCAT.CODE=PLANMAST.ROOMCAT) Left Join TaxStru on TaxStru.Code=PlanMast.RoomTaxStru Where PLANMAST.Code='";

-- [VERIFIED-VB6] (FrmPackageMast)
loc_16B75E2:     var_C8 = "SELECT Plan1.*,FixedCharge.Name as RevName FROM Plan1 Left Join FixedCharge on Plan1.ChrgCode=FixedCharge.Code WHERE Plan1.Code='";

-- [VERIFIED-VB6] (FrmPackageMast)
loc_16B7EDB:     var_C8 = "SELECT PlanTokenDetails.*,FixedCharge.Name as RevName FROM PlanTokenDetails Left Join FixedCharge on PlanTokenDetails.ChrgCode=FixedCharge.Code WHERE PlanTokenDetails.PlanCode='";

-- [VERIFIED-VB6] (FrmPackageMast)
loc_13C43EE: var_154 = "SELECT * FROM REVMAST WHERE CODE='" & Trim(CVar(CStr(Me.FGrid.TextMatrix))));

-- [VERIFIED-VB6] (FrmPackageMast)
loc_13C4450:   var_E0 = "Select taxstru.*,RevMAst.Name AS TaxName,REVMAST.RoundOff from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and taxstru.Code='";


-- ### FrmPlanPackMast  (19 statement(s))
-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_11BDD59:   unk_48DBFF.Execute CStr("Delete From PlanMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1;

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_11BDEAC:   var_100 = "Delete from Plan1 where Code='" & Me.Fields.Item("SearchCode").Value & "'";

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_EBFFB1: MemVar_1F810E4 = "Select Code As SearchCode,Name ,Total from PlanMast where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order By Name";

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_1541185:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From PlanMast WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_1541321:   var_A4 = "Insert Into PlanMast (Code,Name,Total,Site_Code,U_Name,U_EntDt,U_AE,App_Date,Plan_Package,ActiveYN,PercentApp,RoomPer,LogSite_Code) Values ('" & CStr(var_108);

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_1541593:   var_16C = CVar("Update PlanMast Set Name='" & var_A4 & "',Total=" & var_140.Text & ",PercentApp='") & IIf((Me.Check1.Value = 1), var_B8, var_C8);

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_15416D8: unk_48DBFF.Execute "Select Count(*) From Plan1 Where Code='" & global_80 & "'", var_B8, -1;

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_154173D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C, "DELETE FROM Plan1 WHERE aPP_DATE=", var_194);

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_1541B10:     var_A4 = "INSERT INTO Plan1 (Code,ChrgCode,RevCode,TaxInc,TaxStru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,child,ExtraAdult,ExtraChild,NoOfDays,Site_Code,U_Name,U_EntDT,U_AE,PlanPer,App_Date,LogSite_Code)VALUES ('" & global_80;

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_10BDA25: var_BC = CVar("Select *,Code as SearchCode From PlanMast WHERE Plan_Package='Plan' and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_10BDA79: var_AC = "Select Code,Name,Sname,Revcode,TaxInc,Taxstru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild From FixedCharge where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_10BDB03: var_BC = CVar("Select Code,Name From PlanMast WHERE Plan_Package='Plan' and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_10BDB0D: ar("Select Code,Name From PlanMast WHERE Plan_Package='Plan' and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F81044), 3 var_BC, CVar(MemVar_1F81044), 3;

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_12CCFAB:       Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98, "Select Count(*) From PlanMast Where Name='", var_128, -1);

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_12CD0EB:       Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98, "Select Count(*) From PlanMast Where Name='", var_174, -1, var_12C);

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_12CD351:         Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98, "Select Count(*) From PlanMast Where Name='", var_128, -1);

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_12CD491:         Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98, "Select Count(*) From PlanMast Where Name='", var_A8, -1, var_B0);

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_144B888:   var_D8 = "Select * From PlanMast Where Code='" & Me.Fields.Item("SearchCode").Value;

-- [VERIFIED-VB6] (FrmPlanPackMast)
loc_144BC77:     var_C8 = "SELECT Plan1.*,FixedCharge.Name as RevName FROM Plan1 Left Join FixedCharge on Plan1.ChrgCode=FixedCharge.Code WHERE Plan1.Code='";


-- ### frmSeasonMast  (15 statement(s))
-- [VERIFIED-VB6] (frmSeasonMast)
loc_10791D2:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_120, var_124, "Delete From SeasonMast Where Year(Fromdate) = '");

-- [VERIFIED-VB6] (frmSeasonMast)
loc_14E9348:       var_104 = "Insert Into SeasonMast(FromDate,ToDate,RateCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values(" & var_B0;

-- [VERIFIED-VB6] (frmSeasonMast)
loc_14E9435:   unk_469411.Execute "Delete from SeasonMast1 WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')", var_B0, -1;

-- [VERIFIED-VB6] (frmSeasonMast)
loc_14E945B:   var_108 = "Insert Into SeasonMast1(Weekend,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & var_90;

-- [VERIFIED-VB6] (frmSeasonMast)
loc_14E9512:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_F4, var_108, "Delete From SeasonMast Where year(Fromdate) = '");

-- [VERIFIED-VB6] (frmSeasonMast)
loc_14E9822:       var_104 = "Insert Into SeasonMast(FromDate,ToDate,RateCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values(" & var_B0;

-- [VERIFIED-VB6] (frmSeasonMast)
loc_14E990F:   unk_469411.Execute "Delete from SeasonMast1 WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')", var_B0, -1;

-- [VERIFIED-VB6] (frmSeasonMast)
loc_14E994A:   var_348 = "Insert Into SeasonMast1(Weekend,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & var_90 & "','" & MemVar_1F81070 & "','";

-- [VERIFIED-VB6] (frmSeasonMast)
loc_F0A49E: var_10C = "Select CONVERT(VARCHAR(11), FromDate,103) As SearchCode,CONVERT(VARCHAR(11), FromDate,103) AS FromDate,CONVERT(VARCHAR(11), TODATE,103) AS ToDate,RateCode from SeasonMast where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (frmSeasonMast)
loc_F6D177: var_E4 = "SELECT Distinct(year(FromDate)) as SYear,SITE_CODE,LOGSITE_CODE FROM SeasonMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY year(FromDate) desc";

-- [VERIFIED-VB6] (frmSeasonMast)
loc_12435FE: var_98 = "SELECT Weekend FROM SeasonMast1 WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'";

-- [VERIFIED-VB6] (frmSeasonMast)
loc_12437D2:   var_114 = "Select FromDate,ToDate,RateCode from SeasonMast where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Year(FromDate)='";

-- [VERIFIED-VB6] (frmSeasonMast)
loc_1243A23: var_94 = "Select FromDate,ToDate,RateCode from SeasonMast where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (frmSeasonMast)
loc_F7FC5B:   Call 0.Method_Proc_20_35_F7FD300 (CInt(0), var_C4, var_C8, "Select Count(*) From SeasonMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and year(fromdate)='", var_AC, -1);

-- [VERIFIED-VB6] (frmSeasonMast)
loc_1218853:             MsgBox("Select Valid Rate Code", &H40, var_128, var_13C, var_14C);


-- ### FrmRoomFeatureMast  (11 statement(s))
-- [VERIFIED-VB6] (FrmRoomFeatureMast)
loc_1124FDC:   var_114 = "Delete From RoomFeature Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmRoomFeatureMast)
loc_F213D1: MemVar_1F810E4 = "Select Code As SearchCode,Name FROM RoomFeature where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name";

-- [VERIFIED-VB6] (FrmRoomFeatureMast)
loc_107D547: unk_4475E2.Execute "SELECT * from RoomFeature where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1;

-- [VERIFIED-VB6] (FrmRoomFeatureMast)
loc_120583E:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From RoomFeature WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmRoomFeatureMast)
loc_1205985:   var_9C = "Insert Into RoomFeature(Code,Name,Site_Code,U_Name,U_EntDt,U_AE,Logsite_Code) Values('" & global_64;

-- [VERIFIED-VB6] (FrmRoomFeatureMast)
loc_1205A77:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE RoomFeature SET Name='");

-- [VERIFIED-VB6] (FrmRoomFeatureMast)
loc_FBAE2C: unk_4475E2.Execute "SELECT Code,Name FROM RoomFeature WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1;

-- [VERIFIED-VB6] (FrmRoomFeatureMast)
loc_FBAE9E: unk_4475E2.Execute "SELECT * FROM RoomFeature WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name", var_B4, -1;

-- [VERIFIED-VB6] (FrmRoomFeatureMast)
loc_11CBFE8: unk_4475E2.Execute CStr("Select U_Name,U_AE,U_EntDt From RoomFeature where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (FrmRoomFeatureMast)
loc_107BB13:   Call 0.Method_Proc_18_30_107BD100 (CInt(0), var_A8, var_AC, "Select Count(*) From RoomFeature Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmRoomFeatureMast)
loc_107BC25:   Call 0.Method_Proc_18_30_107BD100 (CInt(0), var_A8, var_AC, "Select Count(*) From RoomFeature Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);


-- ### FrmRoomCatMast  (31 statement(s))
-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_162B53D: Call 0.Method_CmdRate_Click0 (CInt(0), var_180, var_A4, "Select * from RateList where Roomcat=");

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_161EEF6: Call 0.Method_CmdSave_Click0 (CInt(0), var_94, var_98, "Delete From RateList Where RoomCat='");

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_161F294:   var_104 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('";

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_161F76F:   var_104 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('";

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_161FC4A:   var_104 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('";

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_1620125:   var_104 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('";

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_13C268B: Proc_6_16_EA44E0(var_C0, MemVar_1F81078, "Select * from enviro WHERE LogSite_Code=");

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_13C2CFE: var_128 = "Select distinct Code,Name,TaxStru From RevMast WHERE DESKCODE='" & Trim(CVar(Me.Recordset15.Fields.Item("Rate5"))) & "' AND (LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_13C2E53: var_C0 = CVar("Select distinct Code As Code,Name From RoomCat WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_13C2ED6: var_C0 = CVar("Select distinct Code as SearchCode,* From RoomCat WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_1223686:   unk_4D2412.Execute CStr("Delete From RoomCat Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_12237D9:   var_118 = "Delete From RateList Where RoomCat='" & Me.Fields.Item("SearchCode").Value & "'";

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_EBFCFE: var_10C = "Select distinct Code As SearchCode,Name as RoomCategory,ShortName,CAST(RetChg AS VARCHAR(11)) AS RetChg,CAST(CancelChg AS vARcHAR(11)) AS CancelChg,CAST(NoRooms as VARCHAR(5)) AS NoRooms,cast(MinAdv as VarChar(11)) as MinAdv FROM RoomCat where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_148C15D: var_B0 = "SELECT R.ShortName, R.Name AS RoomName, R.MaxPerson,R.RetChg,R.CancelChg,R.MinAdv,R.NoRooms,R.MultPer,R.InclCount,RevMast.Name as RevCharge FROM (RoomCat AS R LEFT JOIN RevMast ON R.RevCode = RevMast.Code)" & "where (R.LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_148C1D3: var_B0 = "SELECT RT.Rate1, RT.Rate2, RT.Rate3, RT.Rate4, RT.Rate5, RT.OccType, RT.RateW, RT.RateM FROM RateList AS RT " & "where (RT.LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_148C26F:   var_B0 = "SELECT 0 AS Rate1, 0 AS Rate2, 0 AS Rate3, 0 AS Rate4, 0 AS Rate5, '' AS OccType, 0 AS RateW, 0 AS RateM FROM RateList where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_148C929:       var_FC.Update var_DC, var_10C;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_1746778:   var_B4 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From RoomCat WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_17468A9: unk_4D2412.Execute "Delete From RateList Where RoomCat='" & global_56 & "' and RoomNo='*****' AND Code='*'", var_C8, -1;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_1746AB7:   var_CC = "Insert Into RoomCat(Type,Code,Name,ShortName,RevCode,RetChg,CancelChg,MinAdv,NoRooms,MultPer,InclCount,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,MapCode) Values('" & var_B4;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_1746E70:   var_CC = "Update RoomCat Set Name='" & var_B4;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_174730C:   var_B4 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_COde) Values ('" & global_56;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_174776D:   var_B4 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & global_56;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_1747BCE:   var_B4 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & global_56;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_174802F:   var_B4 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & global_56;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_108AB07:   Call 0.Method_Proc_23_37_108AD040 (CInt(0), var_B8, var_BC, "Select Count(*) From RoomCat Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1);

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_108AC19:   Call 0.Method_Proc_23_37_108AD040 (CInt(0), var_B8, var_BC, "Select Count(*) From RoomCat Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1);

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_1708AE9: unk_4D2412.Execute CStr("Select U_Name,U_AE,U_EntDt From RoomCat where Code='" & Me.Fields.Item("Code").Value & "'  "), var_120, -1;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_1708DC3:   unk_4D2412.Execute CStr("Select RoomCat.* From RoomCat where RoomCat.Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_17091DD:         var_DC = "Select Name from RevMast where Code=(select revcode from roomcat where code='" & Me.Fields.Item("SearchCode").Value;

-- [VERIFIED-VB6] (FrmRoomCatMast)
loc_170960C:   var_DC = "Select RateList.* From RateList Left Join RoomCat on RateList.RoomCat=RoomCat.Code where RateList.RoomCat='" & Me.Fields.Item("SearchCode").Value;


-- ### FrmRoomMast  (46 statement(s))
-- [VERIFIED-VB6] (FrmRoomMast)
loc_140B6CB: Proc_6_16_EA44E0(var_BC, MemVar_1F81078, "Select * from enviro WHERE logSITE_CODE=");

-- [VERIFIED-VB6] (FrmRoomMast)
loc_140BE2A: var_BC = CVar("Select distinct Code As Code,Name,TaxStru From RevMast where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (FrmRoomMast)
loc_140BEAD: var_BC = CVar("Select distinct Code As Code,Name From Depart where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and RestType='House Keeping' Order by Name") 'String;

-- [VERIFIED-VB6] (FrmRoomMast)
loc_140BFDB: var_BC = CVar("Select distinct Code As Code,Name,Type From RoomCat where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (FrmRoomMast)
loc_140C05E: var_BC = CVar("Select Code as SearchCode,* From RoomMast where type in ('RO','CO')  and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Code") 'String;

-- [VERIFIED-VB6] (FrmRoomMast)
loc_1359BF2: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&H21), var_A4, var_A8, "Select Count(*) from PayCharge where (LOGSITE_CODE='" & MemVar_1F81078 & "') and RoomNo='", var_D4, -1);

-- [VERIFIED-VB6] (FrmRoomMast)
loc_1359CCA: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&H21), var_A4, var_A8, "Select Count(*) from RoomOcc where  (LOGSITE_CODE='" & MemVar_1F81078 & "') and RoomNo='", var_D4, -1);

-- [VERIFIED-VB6] (FrmRoomMast)
loc_1359DA2: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&H21), var_A4, var_A8, "Select Count(*) from Booking where (LOGSITE_CODE='" & MemVar_1F81078 & "') and RoomNo='", var_D4, -1);

-- [VERIFIED-VB6] (FrmRoomMast)
loc_1359EF6:   unk_4FAB65.Execute CStr("Delete From RoomMast Where Code='" & Me.Fields.Item("SearchCode").Value & "' AND TYPE='RO'"), var_140, -1;

-- [VERIFIED-VB6] (FrmRoomMast)
loc_135A053:   unk_4FAB65.Execute CStr("Delete From RoomMast1 Where RoomCode='" & Me.Fields.Item("SearchCode").Value & "'"), var_140, -1;

-- [VERIFIED-VB6] (FrmRoomMast)
loc_135A1A6:   var_120 = "Delete From RateList Where RoomNo='" & Me.Fields.Item("SearchCode").Value & "'";

-- [VERIFIED-VB6] (FrmRoomMast)
loc_EC1FBA: var_10C = "Select RoomMast.Code as SearchCode,RoomMast.Code, RoomMast.Name,RoomCat.Name Category,Depart.Name as [Maid Station],RoomMast.MultPer [Max Person],RoomMast.InclCount [Incl. Room Count],RoomMast.DoorLockID FROM RoomMast Left Join RoomCat On RoomCat.Code=RoomMast.RoomCat Left Join Depart ON RoomMast.MaidStation = Depart.Code where (RoomMast.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmRoomMast)
loc_14ADDB1: var_B4 = "SELECT R.Code AS RoomCode, R.Name AS RoomName, R.Extension, R.MultPer, R.MaidStation, R.InclCount, roomcat.Name AS Roomcategory FROM (RoomMast AS R LEFT JOIN roomcat ON R.RoomCat = roomcat.Code)" & "where (R.LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmRoomMast)
loc_14ADE27: var_B4 = "SELECT RT.Rate1, RT.Rate2, RT.Rate3, RT.Rate4, RT.Rate5, RT.OccType, RT.RateW, RT.RateM FROM RateList AS RT LEFT JOIN roomcat ON (RT.RoomCat = Roomcat.Code) " & "where (RT.LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmRoomMast)
loc_14ADEC3:   var_B4 = "SELECT roomcat.Name AS Roomcategory, RT.Rate1, RT.Rate2, RT.Rate3, RT.Rate4, RT.Rate5, RT.OccType, RT.RateW, RT.RateM FROM RateList AS RT LEFT JOIN roomcat ON (RT.RoomCat = Roomcat.Code)" & "where (RT.LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmRoomMast)
loc_14AE4EE:       var_100.Update var_E0, var_110;

-- [VERIFIED-VB6] (FrmRoomMast)
loc_14AE528: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H21), var_C0, var_B4, "Select ROOMFEATURE.Name as RoomFeature From RoomMast1 R1 left join ROOMFEATURE on R1.RoomFeat=ROOMFEATURE.code where R1.RoomCode='", var_F0, -1, var_F4);

-- [VERIFIED-VB6] (FrmRoomMast)
loc_14AE5FC:     var_9C.Update var_E0, var_110;

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17EA357: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_B8, var_CC, "Delete From RateList Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and RoomNO='");

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17EA3C5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_B8, CVar("Delete From ROOMMast1 Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and RoomCode='"));

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17EA444: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_B8, CVar("Delete From ROOMMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  and Code='"));

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17EA77F: var_CC = "Insert Into RoomMast(Type,Code,Name,RoomCat,MultPer,RevCode,MaidStation,InclCount,RestCode,TaxStru,ConRoom1,ConRoom2,ConRoom3,ConRoom4,Site_Code,U_Name,U_EntDt,U_AE,Extension,PicPath,LogSite_Code,DoorLockID)Values('" & var_B8.Tag;

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17EAA21:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_C0, "Select Count(*) from RoomMast where RoomCat='", var_F8, -1);

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17EAAC1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_D0, "Update Roomcat set NoRooms=" & var_C0 & " Where Code='", var_F8);

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17EAB35:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_C0, "Select Count(*) from RoomMast where RoomCat='", var_F8);

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17EABD5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_D0, "Update Roomcat set NoRooms=" & CStr(var_AE) & " Where Code='", var_F8);

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17EAF2B:   var_E8 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('";

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17EB40A:   var_E8 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('";

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17EB8E9:   var_E8 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('";

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17EBDC8:   var_E8 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('";

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17EC114:     var_E8 = "Insert Into RoomMast1(RoomCode,Sno,RoomFeat,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code)Values('";

-- [VERIFIED-VB6] (FrmRoomMast)
loc_15A6342: Call 0.Method_CmdRate_Click0 (CInt(1), var_180, var_170, "Select * from RateList where Roomcat=");

-- [VERIFIED-VB6] (FrmRoomMast)
loc_16431FE: Call 0.Method_CmdSave_Click0 (CInt(&H21), var_94, var_98, "Delete From RateList Where RoomNO='");

-- [VERIFIED-VB6] (FrmRoomMast)
loc_16435B2:   var_108 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('";

-- [VERIFIED-VB6] (FrmRoomMast)
loc_1643ACB:   var_108 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('";

-- [VERIFIED-VB6] (FrmRoomMast)
loc_1643FE4:   var_108 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('";

-- [VERIFIED-VB6] (FrmRoomMast)
loc_16444FD:   var_108 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('";

-- [VERIFIED-VB6] (FrmRoomMast)
loc_106C09B:   Call 0.Method_Proc_26_40_106C2980 (CInt(&H21), var_B4, var_B8, "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and type='RO' AND Code='", var_AC, -1);

-- [VERIFIED-VB6] (FrmRoomMast)
loc_106C1AD:   Call 0.Method_Proc_26_40_106C2980 (CInt(&H22), var_B4, var_B8, "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  and Type='", var_AC, -1);

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17BBAC6: unk_4FAB65.Execute CStr("Select U_Name,U_AE,U_EntDt From roommast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_128, -1;

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17BBD52:   var_D4 = "SELECT RoomMast.*, Depart.Name as Department FROM RoomMast LEFT JOIN Depart ON RoomMast.MaidStation = Depart.Code where ROOMMAST.TYPE='RO' AND RoomMast.Code='";

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17BC353:       Proc_6_16_EA44E0(var_E4, CVar(var_A0.Item("RoomCat")), "Select Name From roomcat where code=", var_128);

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17BC6FE:         Proc_6_16_EA44E0(var_E4, var_C4, "Select Name,TaxStru From RevMast where code=", var_128);

-- [VERIFIED-VB6] (FrmRoomMast)
loc_17BCA16:   var_108 = "Select RateList.* From RateList Left Join RoomMAst on RateList.RoomNO=Roommast.Code where (RoomMast.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmRoomMast)
loc_126143D: unk_4FAB65.Execute "SELECT * FROM ROOMFEATURE where (LOGSITE_CODE='" & MemVar_1F81078 & "') ORDER BY NAME", var_C8, -1;

-- [VERIFIED-VB6] (FrmRoomMast)
loc_12616B3:         Proc_6_16_EA44E0(var_128, var_C8, CVar("SELECT * FROM ROOMMAST1 WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "') and ROOMCODE="), var_1A8, -1, var_1AC);


-- ### CompMast  (65 statement(s))
-- [VERIFIED-VB6] (CompMast)
loc_15DC0FF:     Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select AcCode From SubGroup Where AcCode='", var_D0);

-- [VERIFIED-VB6] (CompMast)
loc_15DC2EF:       var_F4 = "Select ID,GroupCode,GroupName,Nature,AliasYN,GroupNature From AcGroup Where GroupCode='" & Me.Fields.Item("Code").Value;

-- [VERIFIED-VB6] (CompMast)
loc_FC5A0D:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_90, var_94, "SELECT COUNT(*) From Ledger Where SubCode= '", var_BC, -1);

-- [VERIFIED-VB6] (CompMast)
loc_124EC90:   Proc_6_16_EA44E0(var_C8, MemVar_1F81078, "Select DefCompGroup from enviro WHERE LOGSITE_CODE=", var_F8, -1);

-- [VERIFIED-VB6] (CompMast)
loc_124ED14:     Proc_6_16_EA44E0(var_C8, MemVar_1F81078, "Select DefCompGroup from enviro WHERE LOGSITE_CODE=", var_F8, -1);

-- [VERIFIED-VB6] (CompMast)
loc_124EDBC:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_B8, var_B0, "Select GroupName From Acgroup Where GroupCode='", var_C8, -1);

-- [VERIFIED-VB6] (CompMast)
loc_F1DF42: var_10C = "Select SubCode As SearchCode,SubCode As Code,Name,Case ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' End As Active,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,GSTIN,LegalName,TradeName,CreditLimit,CreditDays,Remark From ((SubGroup S Left Join AcGroup G on (S.GroupCode=G.GroupCode)) Left Join City C on (S.CityCode=C.CityCode))  Where S.Companytype in ('Corporate','Travel Agency','Mesh') AND  (S.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (CompMast)
loc_10B7EEE: var_A8 = "Select SubCode,Name,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,CreditLimit,CreditDays,Remark,GSTIN,LegalName,TradeName From (SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode " & var_A0 & " Where G.Nature='Customer'and S.CompanyType in ('Corporate','Travel Agency','Mesh')";

-- [VERIFIED-VB6] (CompMast)
loc_13157E2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='");

-- [VERIFIED-VB6] (CompMast)
loc_13158EF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='");

-- [VERIFIED-VB6] (CompMast)
loc_12BA49D: var_C8 = CVar("Select SubCode As Code,Name,NameHelp,GroupCode From SubGroup WHERE NATURE='Customer' and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String;

-- [VERIFIED-VB6] (CompMast)
loc_12BA519: var_B4 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup Where NATURE='Customer' AND (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (CompMast)
loc_12BA5A3: var_C8 = CVar("Select CityCode As Code,CityName As Name,CityHelp From City WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  Order by CityName") 'String;

-- [VERIFIED-VB6] (CompMast)
loc_12BA626: var_C8 = CVar("Select  Code, Name From Employee WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String;

-- [VERIFIED-VB6] (CompMast)
loc_12BA6B8: var_B4 = "Select SubCode As SearchCode,SubCode,Site_Code,Name From SubGroup Where CompanyType in ('Corporate','Travel Agency','Mesh') and (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (CompMast)
loc_1418613: unk_5468F7.Execute "SELECT Code,Name as CatName FROM Roomcat where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')", var_D0, -1;

-- [VERIFIED-VB6] (CompMast)
loc_141886D: var_14C = CVar("Select count(*) FROM RoomDiscount WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  and Code='") 'String;

-- [VERIFIED-VB6] (CompMast)
loc_1418AA8:         var_14C = CVar("Select Max(Discount) FROM RoomDiscount WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  and Code='") 'String;

-- [VERIFIED-VB6] (CompMast)
loc_1418C7C:           var_14C = CVar("Select Max(Discount) FROM RoomDiscount WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  and Code='") 'String;

-- [VERIFIED-VB6] (CompMast)
loc_1418DFF:           var_D4 = "Select Max(Discount) FROM RoomDiscount WHERE (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (CompMast)
loc_1042A5E: unk_5468F7.Execute "Select * from PlanMast where Plan_Package='Plan'", var_AC, -1;

-- [VERIFIED-VB6] (CompMast)
loc_10B9B94: var_90 = "Select PlanMast.*,ROOMCAT.NAME AS ROOMCATNAME from PlanMast INNER JOIN ROOMCAT ON PLANMAST.ROOMCAT=ROOMCAT.CODE where Plan_Package='Plan' and (planmast.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (CompMast)
loc_10B4C0D: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (CompMast)
loc_1816DF9: unk_5468F7.Execute CStr("Select U_Name,U_AE,U_EntDt From SubGroup where SubCode='" & Me.Fields.Item("subcode").Value & "'  "), var_140, -1;

-- [VERIFIED-VB6] (CompMast)
loc_18170E5:   var_EC = "Select S.*,G.GroupNature AS GNature,G.GroupName,G.MainGrCode,C.CityName,T.CATEGORY_Desc,TDSCAT.NAME AS TDSNAME From (((SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode) Left Join CATEGORY T on S.CatEGORY=T.CatEGORY) LEFT JOIN TDSCAT ON TDSCAT.CODE=S.TDS_Catg Where  S.SubCode='";

-- [VERIFIED-VB6] (CompMast)
loc_18175D0:     unk_5468F5.Execute "Select isnull(Sum(AmtCr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_DC, -1;

-- [VERIFIED-VB6] (CompMast)
loc_1817677:     unk_5468F5.Execute "Select isnull(Sum(AmtDr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_DC, -1;

-- [VERIFIED-VB6] (CompMast)
loc_1817812:       Call 0.Method_Proc_22_91_18191600 (CInt(0), var_CC, var_120, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='");

-- [VERIFIED-VB6] (CompMast)
loc_181787D:       Call 0.Method_Proc_22_91_18191600 (CInt(0), var_CC, var_120, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='");

-- [VERIFIED-VB6] (CompMast)
loc_18179AC:       var_218 = "Select * from Comp_PlanDet where CompanyCode='" & var_CC.Text & "' and RoomCat='" & var_200 & "' and PlanCode='" & CStr(var_FC);

-- [VERIFIED-VB6] (CompMast)
loc_1818BC3:       var_120 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (CompMast)
loc_1818C07:       var_214 = "Select * from Comp_PlanDet where CompanyCode='" & var_CC.Text & "' and RoomCat='" & var_200 & "' and PlanCode='" & "' Order by V_SNo";

-- [VERIFIED-VB6] (CompMast)
loc_1818C52:       var_120 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (CompMast)
loc_159823F: Call 0.Method_Proc_22_92_15991D40 (CInt(2), var_98, var_9C, "SELECT * From AcGroup Where GroupCode='");

-- [VERIFIED-VB6] (CompMast)
loc_159835B:   var_A0 = "Insert Into " & arg_10 & " (Site_Code,SubCode,Name,NameHelp,GroupCode,GroupNature,Nature,ConPrefix,ConPerson,Add1,Add2,Add3,CityCode,Phone,Mobile,Fax,EMail,CSTNo,LSTNo,PIN,PANNo,GSTIN,LegalName,TradeName,Remark,U_Name,U_EntDt,U_AE,CompanyType,LOGSITE_CODE,DiscountType,ACTIVEYN,WebPassword,MapCode,AllowCredit) Values ('";

-- [VERIFIED-VB6] (CompMast)
loc_159914C:     Call 0.Method_Proc_22_92_15991D40 (CInt(2), var_98, var_9C, "UPDATE LEDGER SET LEDGER.GROUPCODE='");

-- [VERIFIED-VB6] (CompMast)
loc_15B82AE:   unk_5468F5.Execute "Select IsNull(Max(CAST(SUBSTRING(SubCode,3,6) AS INT)),0)+1 AS MyCode From SubGroup Where IsNumeric(substring(SubCode,3,6))=1", var_CC, -1;

-- [VERIFIED-VB6] (CompMast)
loc_15B8589:     var_160 = "INSERT INTO RoomDiscount (Code,RoomCat,Adult,Discount,DiscType,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_D0 & "','";

-- [VERIFIED-VB6] (CompMast)
loc_15B879A:     var_15C = "INSERT INTO Comp_PlanDet (CompanyCode,RoomCat,PLanCode,PlanAmt,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_D0;

-- [VERIFIED-VB6] (CompMast)
loc_15B89A4:     var_12C = CVar("INSERT INTO Comp_Inclusive (CompanyCode,Inclusive,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_D0 & "','") 'String;

-- [VERIFIED-VB6] (CompMast)
loc_15B8CFB:     var_D0 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (CompMast)
loc_15B8D9D:     Call 0.Method_Proc_22_93_15B94900 (CInt(2), var_E4, CStr(Me.FGrid.TextMatrix)), "SELECT GROUPCODE,GROUPNATURE FROM ACGROUP WHERE GROUPCODE='", var_248, -1, var_F8);

-- [VERIFIED-VB6] (CompMast)
loc_15B91C4:       var_15C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A4 & ",NARRATION,U_Name,U_EntDt,U_AE,v_Prefix,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('";

-- [VERIFIED-VB6] (CompMast)
loc_1681A0E: Call 0.Method_Proc_22_94_16831440 (CInt(2), var_B8, var_BC, "Select MainGrCode From AcGroup Where GroupCode='", var_E4, -1);

-- [VERIFIED-VB6] (CompMast)
loc_1681AB5: Call 0.Method_Proc_22_94_16831440 (CInt(0), var_B8, var_C0, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '");

-- [VERIFIED-VB6] (CompMast)
loc_1681C5C: Call 0.Method_Proc_22_94_16831440 (CInt(0), var_B8, "Delete From RoomDiscount WHERE Code='", var_1CC, -1);

-- [VERIFIED-VB6] (CompMast)
loc_1681CE0: Call 0.Method_Proc_22_94_16831440 (CInt(0), var_B8, "Delete From Comp_PlanDet WHERE CompanyCode='", var_1CC);

-- [VERIFIED-VB6] (CompMast)
loc_1681D64: Call 0.Method_Proc_22_94_16831440 (CInt(0), var_B8, "Delete From Comp_Inclusive WHERE CompanyCode='");

-- [VERIFIED-VB6] (CompMast)
loc_1681DE4:   var_BC = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (CompMast)
loc_1681E73:   var_BC = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (CompMast)
loc_1682017: var_C4 = "Delete From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '";

-- [VERIFIED-VB6] (CompMast)
loc_1682194:     var_D4 = "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='";

-- [VERIFIED-VB6] (CompMast)
loc_16823AF:         var_BC = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (CompMast)
loc_16827D8:         var_C0 = "Insert Into Ledger (DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A8 & ",NARRATION,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('";

-- [VERIFIED-VB6] (CompMast)
loc_1682B4F:         var_C0 = "INSERT INTO RoomDiscount (Code,RoomCat,Adult,Discount,DiscType,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_BC;

-- [VERIFIED-VB6] (CompMast)
loc_1682D6F:         var_C0 = "INSERT INTO Comp_PlanDet (CompanyCode,RoomCat,PLanCode,PlanAmt,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_BC;

-- [VERIFIED-VB6] (CompMast)
loc_1682F80:         var_194 = CVar("INSERT INTO Comp_Inclusive (CompanyCode,Inclusive,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_BC & "','") 'String;

-- [VERIFIED-VB6] (CompMast)
loc_127B2E3:   Call 0.Method_Proc_22_95_127B7980 (CInt(0), var_12C, var_130, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '");

-- [VERIFIED-VB6] (CompMast)
loc_127B47B:   var_124 = "Delete From Ledger Where V_Type='" & "F_AO";

-- [VERIFIED-VB6] (CompMast)
loc_127B4FC:   Call 0.Method_Proc_22_95_127B7980 (CInt(0), var_12C, var_124, "Delete From SubGroup Where SUBCode='");

-- [VERIFIED-VB6] (CompMast)
loc_127B55A:   Call 0.Method_Proc_22_95_127B7980 (CInt(0), var_12C, "Delete From RoomDiscount WHERE Code='");

-- [VERIFIED-VB6] (CompMast)
loc_127B5DE:   Call 0.Method_Proc_22_95_127B7980 (CInt(0), var_12C, "Delete From Comp_PlanDet WHERE CompanyCode='");

-- [VERIFIED-VB6] (CompMast)
loc_127B662:   Call 0.Method_Proc_22_95_127B7980 (CInt(0), var_12C, "Delete From Comp_Inclusive WHERE CompanyCode='");

-- [VERIFIED-VB6] (CompMast)
loc_10D2F7B: var_C4 = "SELECT RoomCat.Code,RoomCat.Name as CatName,PlanMast.Code as PLanCode,PLanMast.Name as PlanName,PlanMast.Total as PlanAmt FROM Roomcat inner Join PLanMast on PLanMast.RoomCat=RoomCat.Code where (RoomCat.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (CompMast)
loc_10084CE:   var_100 = "SELECT Count(*) FROM Comp_Inclusive where Inclusive='" & CStr(var_9C) & "' And CompanyCode='" & var_F4 & "' And (LOGSITE_CODE='";


-- ### FrmForeignExMast  (12 statement(s))
-- [VERIFIED-VB6] (FrmForeignExMast)
loc_10D6570:   var_F8 = "Delete From ForEx Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmForeignExMast)
loc_F5D2FC:   MemVar_1F810E4 = "Select Code As SearchCode,Name,Rate FROM ForEx WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name";

-- [VERIFIED-VB6] (FrmForeignExMast)
loc_F5D31F:     MemVar_1F810E4 = "Select Code As SearchCode,Name,cast(Rate as Varchar(11)) as Rate FROM ForEx WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name";

-- [VERIFIED-VB6] (FrmForeignExMast)
loc_107D83B: unk_4469CA.Execute "Select * from ForEx WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1;

-- [VERIFIED-VB6] (FrmForeignExMast)
loc_12D244F:     var_9C = "Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From ForEx WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmForeignExMast)
loc_12D24D4:       var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From ForEx WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmForeignExMast)
loc_12D269F:   var_9C = "Insert Into ForEx(Code,Name,Rate,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_64;

-- [VERIFIED-VB6] (FrmForeignExMast)
loc_12D2810:   var_108 = CVar("UPDATE ForEx SET Name='" & var_9C & "',SITE_CODE='" & MemVar_1F81070 & "',Rate=") 'String;

-- [VERIFIED-VB6] (FrmForeignExMast)
loc_FB6200: unk_4469CA.Execute "SELECT Code,Name FROM ForEx WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1;

-- [VERIFIED-VB6] (FrmForeignExMast)
loc_FB6269: var_94 = "SELECT E.*,E.Code as SearchCode FROM ForEx E WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') order by Name";

-- [VERIFIED-VB6] (FrmForeignExMast)
loc_10E7157:   Call 0.Method_Proc_321_30_10E73B00 (CInt(0), var_A8, var_AC, "Select Count(*) From ForEx Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmForeignExMast)
loc_10E727B:   Call 0.Method_Proc_321_30_10E73B00 (CInt(0), var_A8, var_AC, "Select Count(*) From ForEx Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_17C, -1);


-- ### GuestProfile  (83 statement(s))
-- [VERIFIED-VB6] (GuestProfile)
loc_19ABBF5:           var_DC = "SELECT City.CityName,CITY.ZIPCODE,Country.Name AS CountryName,State.Name AS StateName,Country.Type as CountryType FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE (City.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (GuestProfile)
loc_19AC0AD:             unk_5A190F.Execute "Select IsNull(Max(CAST(SUBSTRING(CityCode,3,3) AS INT)),1)+1 AS MyCode From City", var_EC, -1;

-- [VERIFIED-VB6] (GuestProfile)
loc_19AC40B:             unk_5A190F.Execute "Select IsNull(Max(CAST(SUBSTRING(CityCode,3,3) AS INT)),1)+1 AS MyCode From City", var_EC, -1;

-- [VERIFIED-VB6] (GuestProfile)
loc_19AC849:             var_DC = "SELECT COUNTRY.CODE AS CountryCode,Country.Name AS CountryName,State.Name AS StateName,Country.Type as CountryType FROM State LEFT JOIN Country ON STATE.Country=Country.Code WHERE (State.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (GuestProfile)
loc_19ACA8A:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98, "sELECT COUNT(*) FROM STATE WHERE UPPER(NAME)='", var_150, -1, var_100);

-- [VERIFIED-VB6] (GuestProfile)
loc_19ACB4B:                 unk_5A190F.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From State", var_EC, -1;

-- [VERIFIED-VB6] (GuestProfile)
loc_19ACCA3:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98, "sELECT COUNT(*) FROM STATE WHERE UPPER(NAME)='", var_150, -1, var_100);

-- [VERIFIED-VB6] (GuestProfile)
loc_19ACD64:                 unk_5A190F.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From State", var_EC, -1;

-- [VERIFIED-VB6] (GuestProfile)
loc_19AD042:                 var_130 = "SELECT Country.Name AS CountryName,Country.Type as CountryType FROM Country WHERE Upper(CODE)='" & Ucase(CVar(Me.Fields.Item("Code")));

-- [VERIFIED-VB6] (GuestProfile)
loc_19AD1EA:                   Call 0.Method_Txt_Validate0 (CInt(&H13), var_98, "SELECT COUNT(*) FROM COUNTRY WHERE UPPER(NAME)='", var_150, -1, var_100);

-- [VERIFIED-VB6] (GuestProfile)
loc_19AD2AB:                       unk_5A190F.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From Country", var_EC, -1;

-- [VERIFIED-VB6] (GuestProfile)
loc_19AD3B3:               Call 0.Method_Txt_Validate0 (CInt(&H13), var_98, "SELECT COUNT(*) FROM COUNTRY WHERE UPPER(NAME)='", var_150, -1, var_100);

-- [VERIFIED-VB6] (GuestProfile)
loc_19AD474:                   unk_5A190F.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From Country", var_EC, -1;

-- [VERIFIED-VB6] (GuestProfile)
loc_19ADCD8:                         var_DC = "SELECT City.CityName,CITY.ZIPCODE,City.CityCode,Country.Name AS CountryName,State.Name AS StateName,Country.Type as CountryType FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE (City.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (GuestProfile)
loc_170FFA3: Proc_6_16_EA44E0(var_DC, MemVar_1F81078, "Select SMSPhoneNoPrefix from SMSEnviro WHERE logSITE_CODE=", var_110);

-- [VERIFIED-VB6] (GuestProfile)
loc_1710045: Proc_6_16_EA44E0(var_DC, MemVar_1F81078, "Select * from enviro WHERE logSITE_CODE=");

-- [VERIFIED-VB6] (GuestProfile)
loc_1710110: var_DC = CVar("Select CITYCODE AS Code,CITYNAME AS Name From CITY where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by CITYName") 'String;

-- [VERIFIED-VB6] (GuestProfile)
loc_1710193: var_DC = CVar("Select Code,Name From COUNTRY where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (GuestProfile)
loc_1710220: Me.Open CVar("Select Code,Name From STATE Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F81044), 2;

-- [VERIFIED-VB6] (GuestProfile)
loc_1710292: var_F0 = "Select convert(varchar(25),ZipCode) As Code,convert(varchar(25),ZipCode) As Name From City Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (GuestProfile)
loc_171047A: var_DC = CVar("Select Code ,Name From GuestStat Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (GuestProfile)
loc_17104FD: var_DC = CVar("Select Code,Name From Country Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (GuestProfile)
loc_171057A: var_EC = CVar("SELECT GUESTPROF As CODE,FOLIONO As NAME FROM GuestFolio where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') And Vdate>=") 'String;

-- [VERIFIED-VB6] (GuestProfile)
loc_17105E8: Proc_6_91_EF1950("SELECT CODE,NAME FROM GuestProf where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY NAME", Me.TXT_GNAME, "NAME", "CODE");

-- [VERIFIED-VB6] (GuestProfile)
loc_1710633: Proc_6_91_EF1950("SELECT CODE,NAME FROM STATE where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY NAME", Me.TXT_STATE, "NAME", "CODE");

-- [VERIFIED-VB6] (GuestProfile)
loc_171067E: Proc_6_91_EF1950("SELECT CITYCODE,CITYNAME FROM CITY WHere (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY CITYNAME", Me.TXT_CITY, "CITYNAME", "CITYCODE");

-- [VERIFIED-VB6] (GuestProfile)
loc_17106C9: Proc_6_91_EF1950("SELECT CODE,NAME FROM COUNTRY Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY NAME", Me.TXT_NATION, "NAME", "CODE");

-- [VERIFIED-VB6] (GuestProfile)
loc_1710714: Proc_6_91_EF1950("SELECT CODE,NAME FROM COUNTRY Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY NAME", Me.TXT_COUNTRY, "NAME", "CODE");

-- [VERIFIED-VB6] (GuestProfile)
loc_171075F: Proc_6_91_EF1950("SELECT DISTINCT TYPE AS CODE,TYPE AS NAME FROM COUNTRY where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY TYPE", Me.TXT_TYPE, "NAME", "CODE");

-- [VERIFIED-VB6] (GuestProfile)
loc_17107B5: var_F0 = "SELECT GF.CODE AS SearchCode,GF.Name As GuestName,GF.Add1 As GuestAdd1,GF.Add2 As GuestAdd2,GF.*,NA.Name As Nationality,GS.NAME AS GuestStatus,GPF.Name As GuestForName,GPF.Add1 As GuestForAdd1,NAF.Name As ForNationality,GPF.Add2 As GuestForAdd2,GPF.*,GF.Site_Code as Site_Code,gf.LogSite_Code as LogSite_Code FROM ((((GuestProf GF Left Join Country NA ON GF.Nationality=NA.CODE) Left Join GuestStat GS ON GF.GuestStatus=GS.Code) Left Join GuestProfFor GPF ON GF.CODE=GPF.CODE) Left Join Country NAF ON GPF.Nationality=NAF.CODE) Where (GF.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (GuestProfile)
loc_171094E:   var_124 = "Select GPdt.GuestProf, GPDt.mProf, GP.Name, GP.Add1, GP.Add2, Nat.Name as Nationality from GuestFolioProfDetail GPDt Left Join Guestprof GP On GPDt.GuestProf=GP.Code Left Join Country Nat On GP.Nationality=Nat.Code where GPDt.Docid='" & GuestFolio;

-- [VERIFIED-VB6] (GuestProfile)
loc_1710E58:     var_124 = "Select GPdt.GuestProf, GPdt.GuestProf mProf, GP.Name, GP.Add1, GP.Add2, Nat.Name as Nationality from GuestFolio GPDt Left Join Guestprof GP On GPDt.GuestProf=GP.Code Left Join Country Nat On GP.Nationality=Nat.Code where GPDt.Docid='" & GuestFolio;

-- [VERIFIED-VB6] (GuestProfile)
loc_1711349:     var_124 = "Select B.GuestProf, B.GuestProf mProf, GP.Name, GP.Add1, GP.Add2, Nat.Name as Nationality from Booking B Left Join Guestprof GP On B.GuestProf=GP.Code Left Join Country Nat On GP.Nationality=Nat.Code where B.GuestProf='" & GuestCode;

-- [VERIFIED-VB6] (GuestProfile)
loc_147DB7B: Proc_6_16_EA44E0(var_C4, var_A4, "Select Count(*) From GuestProf Where Code=", var_110, -1, var_100);

-- [VERIFIED-VB6] (GuestProfile)
loc_147DC50:       Proc_6_16_EA44E0(var_A4, var_94, "Select Count(*) From GuestFolio Where DocId=", var_E4, -1, var_100);

-- [VERIFIED-VB6] (GuestProfile)
loc_147DCE3:         unk_5A190F.Execute "Delete From GuestFolioProfDetail where Docid='" & GuestFolio & "'", var_94, -1;

-- [VERIFIED-VB6] (GuestProfile)
loc_147DE25:             var_1E4 = "Delete From GuestFolioProfDetail Where IsNull(Docid,'')='' And GuestProf='" & var_1EC & "' And mProf='" & Me.lblmProf.Caption;

-- [VERIFIED-VB6] (GuestProfile)
loc_147DECF:             var_EC = "Insert Into GuestFolioProfDetail (Docid, GuestProf, mProf, U_AE, U_EntDt, U_Name, Site_Code, LogSite_Code) Values ('" & GuestFolio;

-- [VERIFIED-VB6] (GuestProfile)
loc_147DFB4:         Proc_6_16_EA44E0(var_A4, CVar(Me.lblmProf), "Select * from GuestProf Where Code=");

-- [VERIFIED-VB6] (GuestProfile)
loc_147E05C:           var_1E4 = -1 & Proc_6_37_E618F4(CVar(var_128), "Update GuestFolio Set GuestProf='" & Me.lblmProf.Caption & "',Name='", var_264);

-- [VERIFIED-VB6] (GuestProfile)
loc_147E063:           var_1E8 = "Update GuestFolio Set GuestProf='" & Me.lblmProf.Caption & "','" & Proc_6_37_E618F4(var_A4, CVar(CLng(5)), "Name", var_128, CVar(CLng(5))) & "',city='";

-- [VERIFIED-VB6] (GuestProfile)
loc_147E214:           var_94 = CVar(Proc_6_14_EEE8DC(CVar("Update RoomOcc  Set GuestProf='" & Me.lblmProf.Caption & "',U_EntDt="), var_1DC)) 'String;

-- [VERIFIED-VB6] (GuestProfile)
loc_147E2CA:           unk_5A190F.Execute "Update PayCharge  Set GuestProf='" & Me.lblmProf.Caption & "' where FolioNoDocid='" & GuestFolio & "'", var_94, -1;

-- [VERIFIED-VB6] (GuestProfile)
loc_147E437:             var_1E4 = "Delete From GuestFolioProfDetail Where IsNull(Docid,'')='' And GuestProf='" & var_1EC & "' And mProf='" & Me.lblmProf.Caption;

-- [VERIFIED-VB6] (GuestProfile)
loc_147E4E1:             var_EC = "Insert Into GuestFolioProfDetail (Docid, GuestProf, mProf, U_AE, U_EntDt, U_Name, Site_Code, LogSite_Code) Values ('" & GuestFolio;

-- [VERIFIED-VB6] (GuestProfile)
loc_11A75D6:     var_104 = var_88 & " And (GUESTPROF.Code='" & CStr(Me.TXT_FOLIONO.BoundText) & "' Or GUESTPROF.Code In (Select GuestProf From GuestFolioProfDetail Where mProf='";

-- [VERIFIED-VB6] (GuestProfile)
loc_11A7857: var_90 = "Select Code As SearchCode,GUESTPROF.Name As Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GuestProf Left Join City on City.CityCode=GuestProf.City Where (GuestProf.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (GuestProfile)
loc_10EE2E7: Me.Recordset15.Open "Select docid, guestprof from guestfolio where docid not in (select docid from GuestFolioProfDetail)", CVar(MemVar_1F81044), 3;

-- [VERIFIED-VB6] (GuestProfile)
loc_10EE33A:   var_D8 = "Insert Into GuestFolioProfDetail (Docid,GuestProf,mProf,U_AE,U_EntDt,U_Name,Site_Code,LogSite_Code) values ('" & var_8C.Fields.Item("DocID").Value;

-- [VERIFIED-VB6] (GuestProfile)
loc_F2A2A8: var_90 = "Select Code As SearchCode,GUESTPROF.Name As Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GuestProf Left Join City on City.CityCode=GuestProf.City Where GuestProf.Code Not In (Select Distinct GuestProf From (Select GuestProf From Booking Union All Select GuestProf From GuestFolio Union All Select GuestProf From GuestFolioProfDetail Union All Select GuestProf From Paycharge) Q) And (GuestProf.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (GuestProfile)
loc_F41D57: var_90 = "Select Code As SearchCode,GUESTPROF.Name As Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GuestProf Left Join City on City.CityCode=GuestProf.City Where GuestProf.Code Not In (Select Distinct GuestProf From (Select GuestProf From Booking Union All Select GuestProf From GuestFolio Union All Select GuestProf From GuestFolioProfDetail Union All Select GuestProf From Paycharge) Q) And (GuestProf.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (GuestProfile)
loc_13274C2:   unk_5A190F.Execute CStr("Delete From GUESTPROF    Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1;

-- [VERIFIED-VB6] (GuestProfile)
loc_1327623:   unk_5A190F.Execute CStr("Delete From GuestProfFor Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1;

-- [VERIFIED-VB6] (GuestProfile)
loc_1327776:   var_F8 = "Delete From GuestProfVeh Where Code='" & Me.Fields.Item("SearchCode").Value & "'";

-- [VERIFIED-VB6] (GuestProfile)
loc_1068FB1: unk_5A190F.Execute "SELECT G.Name, G.Add1 AS Address1, G.Add2 AS Address2, G.CityName + '  ' +G.ZipCode AS City, G.CountryName AS Country, G.PhoneNo AS PhoneNo, G.MobileNo AS MobileNo, G.Gender AS Gender, G.MaritalStatus AS MaritalStatus, G.PanNo AS PanNo, G.GuestStatus AS Status From GuestProf G order by G.Name", var_BC, -1;

-- [VERIFIED-VB6] (GuestProfile)
loc_1C2533C: Proc_6_16_EA44E0(var_D4, MemVar_1F81078, "Select * from enviro WHERE logSITE_CODE=");

-- [VERIFIED-VB6] (GuestProfile)
loc_1C25AF8:   var_F8 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From GUESTPROF WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (GuestProfile)
loc_1C25D8D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_120, var_F8, "SELECT COUNT(*) FROM COUNTRY WHERE CODE='", var_D4, -1);

-- [VERIFIED-VB6] (GuestProfile)
loc_1C25EC2:       var_1AC = "Insert Into Country(Code,Name,ShortName,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & var_F8 & "','" & var_12C.Text;

-- [VERIFIED-VB6] (GuestProfile)
loc_1C25FFD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_120, var_F8, "SELECT COUNT(*) FROM STATE WHERE CODE='", var_D4, -1);

-- [VERIFIED-VB6] (GuestProfile)
loc_1C26132:       var_1AC = "Insert Into State(Code,Name,ShortName,Country,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & var_F8 & "','" & var_12C.Text;

-- [VERIFIED-VB6] (GuestProfile)
loc_1C2626D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_120, var_F8, "SELECT COUNT(*) FROM CITY WHERE CITYCODE='", var_D4, -1);

-- [VERIFIED-VB6] (GuestProfile)
loc_1C263F7:       var_194 = "Insert Into City(CityCode,CityName,ShortName,STDCode,ZipCode,State,Country,CityHelp,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & var_120.Tag;

-- [VERIFIED-VB6] (GuestProfile)
loc_1C2657E: unk_5A190F.Execute "Delete From GuestProfFor Where Code='" & global_60 & "'", var_D4, -1;

-- [VERIFIED-VB6] (GuestProfile)
loc_1C265A7: var_F8 = "Delete From GuestProfVeh Where Code='" & global_60;

-- [VERIFIED-VB6] (GuestProfile)
loc_1C26FCB:     var_F8 = "Insert Into GuestProf (Code,Name,Add1,Add2,City,Type,PhoneNo,FaxNo,MobileNo,EmailId,Nationality,Age,BirthDate,Anniversary,GuestStatus,SplInstr,Comments1,Comments2,Comments3,ConName,T1Field1,T1Field2,T1Field3,T1Field4,T1Field5,T1Field6,T1Field7,T1Field8,T2Field1,T2Field2,T2Field3,T2Field4,T2Field5,T2Field6,T2Field7,T2Field8,CityName,StateName,CountryName,MaritalStatus,Gender,ZipCode,FOM,Site_Code,U_Name,U_EntDt,U_AE,PanNO,DiplomatYN,IdNo,ConPrefix,LogSite_Code,PicPath,IdPicPath,SignPicPath,IdProof,IdProofNo,mProf,FatherName) Values ('" & global_60;

-- [VERIFIED-VB6] (GuestProfile)
loc_1C27E6F:       var_F8 = "Insert Into GuestProf (Code,Name,Add1,Add2,City,Type,PhoneNo,FaxNo,MobileNo,EmailId,Nationality,Age,BirthDate,Anniversary,GuestStatus,SplInstr,Comments1,Comments2,Comments3,ConName,T1Field1,T1Field2,T1Field3,T1Field4,T1Field5,T1Field6,T1Field7,T1Field8,T2Field1,T2Field2,T2Field3,T2Field4,T2Field5,T2Field6,T2Field7,T2Field8,CityName,StateName,CountryName,MaritalStatus,Gender,ZipCode,FOM,Site_Code,U_Name,U_EntDt,U_AE,PanNO,DiplomatYN,IdNo,ConPrefix,LogSite_Code,PicPath,IdPicPath,SignPicPath,IdProof,IdProofNo,mProf,FatherName) Values ('" & global_60;

-- [VERIFIED-VB6] (GuestProfile)
loc_1C28CE1:   var_C4 = "Update GuestProf Set Name=";

-- [VERIFIED-VB6] (GuestProfile)
loc_1C29A00:       var_F8 = "Insert Into GuestProfFor (Code,Sno,SerialNo,Nationality,Name,Add1,Add2,Occu,ArrFrom,Dest,PurVisit,ModeTravel,DateArr,ArrPlace,AddIndia,PassNo,IssDate,IssPlace,Age,PropStay,ModeTravelUsed,VisaType,VisaNo,VisaIssDate,VisaIssPlace,ExpDate,WorkPermit,PassExpDate,VisaIssAuth,Extension,VisaDuration,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & global_60;

-- [VERIFIED-VB6] (GuestProfile)
loc_1C29E35:       var_F8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (GuestProfile)
loc_1C29F41:         var_1B0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_1528) & " Where (SITE_CODE='" & MemVar_1F81070 & "' AND LOGSITE_CODE='";

-- [VERIFIED-VB6] (GuestProfile)
loc_1C2A8F3:   var_C4 = "Select * from GuestFolio Where Docid=";

-- [VERIFIED-VB6] (GuestProfile)
loc_1C2A996:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_124, "Update GuestFolio Set GuestProf='" & Me.lblmProf.Caption & "',Name='", var_180, -1, var_2E0);

-- [VERIFIED-VB6] (GuestProfile)
loc_1C2AB35:     var_118 = CVar("Update RoomOcc  Set GuestProf='" & Me.lblmProf.Caption & "',U_EntDt=") 'String;

-- [VERIFIED-VB6] (GuestProfile)
loc_1C2ABF3:     unk_5A190F.Execute "Update PayCharge  Set GuestProf='" & Me.lblmProf.Caption & "' where FolioNoDocid='" & GuestFolio & "'", var_D4, -1;

-- [VERIFIED-VB6] (GuestProfile)
loc_17E5DD3:   var_CC = "SELECT GuestProf.*,Country.Name As NationalName FROM GuestProf Left Join Country On GuestProf.Nationality=Country.Code WHERE GuestProf.Code='";

-- [VERIFIED-VB6] (GuestProfile)
loc_17E718B:     var_FC = "SELECT GuestImage,IdImage,SignImage FROM ProfileImages WHERE ProfileCode='" & Me.Fields.Item("SearchCode").Value & "'";

-- [VERIFIED-VB6] (GuestProfile)
loc_17E7C78:   var_CC = "SELECT City.CityName,CITY.ZIPCODE,Country.Name AS CountryName,State.Name AS StateName FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE CITYCODE='";

-- [VERIFIED-VB6] (GuestProfile)
loc_17E7E29:   Call 0.Method_MoveRec0 (CInt(7), var_AC, var_100, "SELECT GuestStat.Name AS GuestStatusName FROM GuestStat WHERE Code='");

-- [VERIFIED-VB6] (GuestProfile)
loc_149435B: unk_5A190F.Execute CStr("SELECT * FROM GUESTPROFFOR WHERE CODE='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1;

-- [VERIFIED-VB6] (GuestProfile)
loc_149442B:     unk_5A190F.Execute CStr("SELECT Code,Name FROM Country WHERE CODE='" & var_88.Fields.Item("Nationality").Value & "'"), var_11C, -1;

-- [VERIFIED-VB6] (GuestProfile)
loc_100E33A: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (GuestProfile)
loc_16BD2C3: var_D8 = "Select GF.Name As GuestName,GF.Add1,GF.Add2,GF.Nationality,GF.MaritalStatus,GFor.Age,City.CityName AS CityName,GF.ZipCode AS Zip,State.Name AS StateName,GF.Gender,GFor.AddIndia,GFor.PurVisit,GFor.DateArr,GFor.ArrPlace,GFor.ArrFrom,GFor.PropStay,GFor.VisaIssAuth,GFor.Extension,Country.Name As CountryName,GFor.PassNo,GFor.IssDate,GFor.IssPlace,GFor.PassExpDate,GFor.VisaNo,GFor.VisaIssDate,GFor.VisaIssPlace,GFor.ExpDate AS VisaExpDate,GFor.VisaDuration,RO.ChkInDate,RO.DepDate From (((((RoomOcc RO Left Join GuestProf GF ON RO.GuestProf=GF.Code) Left Join GuestProfFor GFor ON GF.Code=GFor.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) LEFT JOIN Country ON City.Country = Country.Code) Where GF.Type='Foreign' And RO.FolioNo IN (Select FolioNo From GuestFolio Where GuestProf='";


-- ---------------------------------------------------------------------------
-- Point of Sale Setup
-- ---------------------------------------------------------------------------

-- ### FrmItemMast  (15 statement(s))
-- [VERIFIED-VB6] (FrmItemMast)
loc_106FDF8: var_D8 = "SELECT Q.Code,Q.Name FROM (SELECT Code,Name,LogSite_Code FROM Item)Q WHERE (Q.LOGSITE_CODE='" & MemVar_1F81078 & "' or Q.LOGSITE_CODE='HO') ORDER BY Q.Name";

-- [VERIFIED-VB6] (FrmItemMast)
loc_106FE63: var_C4 = "SELECT I.Code,I.Name Item,IsNull(I.CommodityCode,'') CommodityCode,I.BarCode,I.SITE_CODE,I.LOGSITE_CODE FROM Item I WHERE (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemMast)
loc_113445F:     var_A0 = "Select Q.Code,Q.BarCode From (SELECT BarCode as COde,BarCode,LogSite_Code FROM Item)Q  Where (Q.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemMast)
loc_1123944:   var_114 = "Delete From Item Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmItemMast)
loc_F10CAE: MemVar_1F810E4 = "SELECT I.Code AS SEARCHCODE,I.Name,I.CommodityCode HSNCode,I.BarCode From Item I ORDER BY I.Name";

-- [VERIFIED-VB6] (FrmItemMast)
loc_1067E89: unk_47439B.Execute "select I.Code,I.Name,I.U_Name,I.U_AE,I.U_Entdt,IsNull(I.BarCode,'') BarCode,IsNull(I.CommodityCode,'') HSNCode FROM Item I ORDER BY I.Name", var_BC, -1;

-- [VERIFIED-VB6] (FrmItemMast)
loc_134CE44:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Q.Code,3,6) AS INT)),1)+1 AS MyCode From (Select Code,Site_Code From Item Union Select Code,Site_Code From Itemmast)Q WHERE Q.SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmItemMast)
loc_134CFFA:   var_F8 = CVar("Insert Into Item(Code,Name,BarCode,CommodityCode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_68 & "','") 'String;

-- [VERIFIED-VB6] (FrmItemMast)
loc_134D196:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, "UPDATE Item SET Name='");

-- [VERIFIED-VB6] (FrmItemMast)
loc_134D2DE:   var_C4 = "UPDATE ItemMast SET Name='";

-- [VERIFIED-VB6] (FrmItemMast)
loc_1242B17:   unk_47439B.Execute CStr("Select U_Name,U_AE,U_EntDt From Item where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1;

-- [VERIFIED-VB6] (FrmItemMast)
loc_125B094:   var_B0 = "Select Count(*) From (SELECT Code,Name,LogSite_Code FROM Item)Q Where (Q.LOGSITE_CODE='" & MemVar_1F81078 & "' or Q.LOGSITE_CODE='HO') and Q.Name='";

-- [VERIFIED-VB6] (FrmItemMast)
loc_125B1E0:     var_114 = CVar("Select Count(*) From (SELECT BarCode as Code,BarCode,LogSite_Code FROM Item)Q Where (Q.LOGSITE_CODE='" & MemVar_1F81078 & "' or Q.LOGSITE_CODE='HO') and Q.BarCode='") 'String;

-- [VERIFIED-VB6] (FrmItemMast)
loc_125B2FE:   var_B0 = "Select Count(*) From (SELECT Code,Name,LogSite_Code FROM Item)Q Where (Q.LOGSITE_CODE='" & MemVar_1F81078 & "' or Q.LOGSITE_CODE='HO') and (Q.Name='";

-- [VERIFIED-VB6] (FrmItemMast)
loc_125B45F:     var_114 = CVar("Select Count(*) From (SELECT BarCode as COde,BarCode,LogSite_Code FROM Item)Q Where (Q.LOGSITE_CODE='" & MemVar_1F81078 & "' or Q.LOGSITE_CODE='HO') and Q.BarCode='") 'String;


-- ### SchemeMast  (14 statement(s))
-- [VERIFIED-VB6] (SchemeMast)
loc_11B3E6C: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C, var_A0, "Select Count(*) From Stock WHERE IsNull(DelFlag,'') Not In ('D','Y') And IsNull(FreeSno,0)<>0 And IsNull(SchemeCode,'') ='", var_D0, -1);

-- [VERIFIED-VB6] (SchemeMast)
loc_11B3F68: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C, var_A0, "Select Count(*) From SchemeItemDetail WHERE IsNull(SchemeCode,'') ='", var_D0, -1);

-- [VERIFIED-VB6] (SchemeMast)
loc_11B4078: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C, var_A0, "Delete from SchemeMast WHERE Code ='");

-- [VERIFIED-VB6] (SchemeMast)
loc_F205B2: var_10C = "SELECT Code As SearchCode, Name as SchemeName ,Convert(Varchar(11),StartDate,103) As StartDate,Convert(Varchar(11),EndDate,103) As EndDate, FromTime , ToTime  , Days As Days, Active FROM SchemeMast WHERE (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (SchemeMast)
loc_150ECD4:   var_138 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From SchemeMast Where SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (SchemeMast)
loc_150EFCD:   var_138 = "Insert into Schememast(Code,Name,Startdate,EndDate,FromTime,ToTime,Active, " & "Days,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('";

-- [VERIFIED-VB6] (SchemeMast)
loc_150F353:   var_234 = "UpDate Schememast Set Name='" & var_E4 & "',Startdate=" & var_16C & ",EndDate=" & var_1B8 & ",FromTime='" & Format(CVar(var_1F4 & var_1FC.Text), "HH:nn");

-- [VERIFIED-VB6] (SchemeMast)
loc_150F606:   var_1D8 = "Update SchemeItemDetail Set AppDate=" & var_E4 & ",EndDate=" & var_16C & ",FromTime='" & Format(CVar(var_1A4.Text & ":" & var_1F0.Text), "HH:nn");

-- [VERIFIED-VB6] (SchemeMast)
loc_150F806:   var_B4 = "Update SchemeOutletDiscount Set AppDate=";

-- [VERIFIED-VB6] (SchemeMast)
loc_1099A56: var_C0 = CVar("SELECT Code, Name  FROM SchemeMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order By Name") 'String;

-- [VERIFIED-VB6] (SchemeMast)
loc_1099B56: var_B0 = "SELECT Code, Name as SchemeName ,StartDate,EndDate, FromTime , ToTime  , Days As DayCode, Active , Site_Code, LOGSITE_CODE  FROM SchemeMast WHERE (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (SchemeMast)
loc_136BD95: unk_463FCE.Execute CStr("Select U_Name,U_AE,U_EntDt From schememast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_11C, -1;

-- [VERIFIED-VB6] (SchemeMast)
loc_107A07F:   Call 0.Method_Proc_215_29_107A27C0 (CInt(0), var_A8, var_AC, "Select Count(*) From SchemeMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND Name='", var_A0, -1);

-- [VERIFIED-VB6] (SchemeMast)
loc_107A191:   Call 0.Method_Proc_215_29_107A27C0 (CInt(0), var_A8, var_AC, "Select Count(*) From SchemeMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND Code='", var_A0, -1);


-- ### FrmWaiterMast  (12 statement(s))
-- [VERIFIED-VB6] (FrmWaiterMast)
loc_FD9074: unk_45ED0A.Execute "SELECT Code,Name FROM Waiter where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B8, -1;

-- [VERIFIED-VB6] (FrmWaiterMast)
loc_FD90DD: var_98 = "Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' And RestType in('Outlet','Room Service','Production') Order by Name";

-- [VERIFIED-VB6] (FrmWaiterMast)
loc_FD914F: var_98 = "SELECT W.*,D.Name As RestName FROM Waiter W Left Join Depart D ON W.RestCode=D.Code WHere (W.LOGSITE_CODE='" & MemVar_1F81078 & "' or W.LOGSITE_CODE='HO') Order by D.Name,W.Name";

-- [VERIFIED-VB6] (FrmWaiterMast)
loc_10D8708:   var_F8 = "Delete From Waiter Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmWaiterMast)
loc_F1BDF2: var_10C = "Select W.Code As SearchCode,D.Name As RestName,W.Name,W.ActiveYN FROM Waiter W Left Join Depart D ON W.RestCode=D.Code Where (W.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmWaiterMast)
loc_108456F: var_A0 = "SELECT D.Name As RestName,W.* from Waiter W Left Join Depart D ON W.RestCode=D.Code Where (W.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmWaiterMast)
loc_12C3E19:     var_9C = "Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From Waiter WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmWaiterMast)
loc_12C3E9E:       var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From Waiter WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmWaiterMast)
loc_12C3FE5:   var_9C = "Insert Into Waiter(Code,Name,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,RestCode,ActiveYN) Values('" & global_68;

-- [VERIFIED-VB6] (FrmWaiterMast)
loc_12C4150:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE Waiter SET RestCode='");

-- [VERIFIED-VB6] (FrmWaiterMast)
loc_112D37F:   Call 0.Method_Proc_16_32_112D6280 (CInt(1), var_A8, var_AC, "Select Count(*) From Waiter Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmWaiterMast)
loc_112D4CA:   Call 0.Method_Proc_16_32_112D6280 (CInt(1), var_A8, var_AC, "Select Count(*) From Waiter Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and (Name='", var_188, -1);


-- ### OutLetMast  (84 statement(s))
-- [VERIFIED-VB6] (OutLetMast)
loc_11F0AC7: unk_51DA92.Execute "Select Count(*) from Depart where OutletYN='Y'", var_AC, -1;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E70CB: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "B", "Select Count(*) From Stock Where VType='", var_D0, -1);

-- [VERIFIED-VB6] (OutLetMast)
loc_14E7169:   "Select V_Type,V_No From Stock Where VType='" = var_B8.Text;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E7296: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_E8, var_C0, "K", "Select Count(*) From Stock Where VType='", var_D0, -1);

-- [VERIFIED-VB6] (OutLetMast)
loc_14E7344:   "Select V_Type,V_No From Stock Where VType='" = var_B8.Text;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E7444: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "B", "Select Count(*) From SundryType Where V_Type='", var_D0);

-- [VERIFIED-VB6] (OutLetMast)
loc_14E75FD:     unk_51DA92.Execute CStr("Delete From Depart Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_13C, -1;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E766F:     unk_51DA92.Execute CStr("Delete From RevMast Where Code='" & var_D0 & "'"), var_13C, -1;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E769F:     var_BC = "Delete From RevMast Where NAme='BAN - ROUND-OFF" & "'";

-- [VERIFIED-VB6] (OutLetMast)
loc_14E76A8:     unk_51DA92.Execute CStr("Delete From RevMast Where Code='" & var_D0 & "'"), var_D0, -1;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E76CA:     var_BC = "Delete From RevMast Where NAme='BAN - DISCOUNT" & "'";

-- [VERIFIED-VB6] (OutLetMast)
loc_14E76D3:     unk_51DA92.Execute CStr("Delete From RevMast Where Code='" & var_D0 & "'"), var_D0, -1;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E76F7:     unk_51DA92.Execute "Delete From Voucher_Type Where V_Type='KBAN'", var_D0, -1;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E7718:     unk_51DA92.Execute "Delete From Voucher_Prefix Where V_Type='KBAN'", var_D0, -1;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E7739:     unk_51DA92.Execute "Delete From Voucher_Type Where V_Type='NBAN'", var_D0, -1;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E775A:     unk_51DA92.Execute "Delete From Voucher_Prefix Where V_Type='NBAN'", var_D0, -1;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E777B:     unk_51DA92.Execute "Delete From Voucher_Type Where V_Type='BBAN'", var_D0, -1;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E779C:     unk_51DA92.Execute "Delete From Voucher_Prefix Where V_Type='BBAN'", var_D0, -1;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E7800:     unk_51DA92.Execute CStr("Delete From Depart Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_13C, -1;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E7868:     var_BC = CStr("Delete From RevMast Where Code='" & var_D0 & "'");

-- [VERIFIED-VB6] (OutLetMast)
loc_14E78B2:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "Delete From RevMast Where NAme='", var_D0, -1, var_E4);

-- [VERIFIED-VB6] (OutLetMast)
loc_14E791A:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "Delete From RevMast Where NAme='", var_D0);

-- [VERIFIED-VB6] (OutLetMast)
loc_14E7985:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "K", "Delete From Voucher_Type Where V_Type='");

-- [VERIFIED-VB6] (OutLetMast)
loc_14E79F5:     "Delete From Voucher_Prefix Where V_Type='" = var_B8.Text;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E7A5D:     "Delete From Voucher_Type Where V_Type='" = var_B8.Text;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E7AC5:     "Delete From Voucher_Prefix Where V_Type='" = var_B8.Text;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E7B2D:     "Delete From Voucher_Type Where V_Type='" = var_B8.Text;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E7B95:     "Delete From Voucher_Prefix Where V_Type='" = var_B8.Text;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E7C24:     unk_51DA92.Execute CStr("Delete from MenuHelp where OutletCode='" & Me.Fields.Item("SearchCode").Value & "'"), var_13C, -1;

-- [VERIFIED-VB6] (OutLetMast)
loc_14E7C88:     var_12C = "Delete from UserModule where OutletCode='" & Me.Fields.Item("SearchCode").Value & "'";

-- [VERIFIED-VB6] (OutLetMast)
loc_EE335C:   var_10C = "SELECT R.Code AS SEARCHCODE,R.Name,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncl=CASE R.RateInclTax WHEN 'Y' THEN 'Yes' ELSE 'No' END,DiscApp=CASE R.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,Roff=CASE R.Roff WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.U_Name From Depart R Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (OutLetMast)
loc_EE3374:   var_10C = "SELECT R.Code AS SEARCHCODE,R.Name,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Header1,R.Header2,R.Header3,R.Header4,R.Phone,R.Slogan1,R.Slogan2,R.LstNo,Comp1=CASE R.CompanyTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END,D1=CASE R.POS WHEN 'Y' THEN 'Yes' ELSE 'No' END,LinkRoom=CASE R.LinkToRoom WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncl=CASE R.RateInclTax WHEN 'Y' THEN 'Yes' ELSE 'No' END,DiscApp=CASE R.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,Roff=CASE R.Roff WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.U_Name,Order_Booking=CASE R.Order_Booking when 'Y' then 'yes' else 'No' END From Depart R Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (OutLetMast)
loc_1024EE9: var_A8 = "SELECT R.Code AS SEARCHCODE,R.Name,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Header1,R.Header2,R.Header3,R.Header4,R.Phone,R.Slogan1,R.Slogan2,R.LstNo,Comp1=CASE R.CompanyTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END,D1=CASE R.POS WHEN 'Y' THEN 'Yes' ELSE 'No' END,LinkRoom=CASE R.LinkToRoom WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncl=CASE R.RateInclTax WHEN 'Y' THEN 'Yes' ELSE 'No' END,DiscApp=CASE R.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,Roff=CASE R.Roff WHEN 'Y' THEN 'Yes' ELSE 'No' END,Order_Booking=case R.Order_Booking when 'Y' THEN 'yes' ELSE 'NO' END,R.U_Name From Depart R Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CCFABE:   Proc_6_16_EA44E0(var_F8, MemVar_1F81078, "Select HallDiscAC from enviro WHERE logSITE_CODE=", var_138);

-- [VERIFIED-VB6] (OutLetMast)
loc_1CCFB93:   Proc_6_16_EA44E0(var_F8, MemVar_1F81078, "Select HallRoundOff from enviro WHERE logSITE_CODE=");

-- [VERIFIED-VB6] (OutLetMast)
loc_1CCFC6B:   Proc_6_16_EA44E0(var_F8, MemVar_1F81078, "Select OutletDiscAc from enviro WHERE LOGSITE_CODE=");

-- [VERIFIED-VB6] (OutLetMast)
loc_1CCFD40:   Proc_6_16_EA44E0(var_F8, MemVar_1F81078, "Select OutletRoundAc from enviro WHERE LOGSITE_CODE=");

-- [VERIFIED-VB6] (OutLetMast)
loc_1CCFEA4:   var_D4 = "Select ISNULL(Max(cAST(SUBSTRING(Code,4,Len(Code)-3) AS INT)),0) As tCode From Depart Where SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD085D:   var_160 = "Insert Into Depart(Code,Name,KotYn,Header1,Header2,Header3,Header4,Phone,Slogan1,Slogan2,LstNo,CompanyTitle,OutletTitle,POS,RestType,BackColor,ShortName,OutletYN,LinkToRoom,PartyName,SplitBill,RateInclTax,DiscApp,Roff,MemberInfo,DisPrint,LabelPrinting,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,TokenPrint,TokenPrintAfter,PrintTokenNo,Order_Booking,CustInfo,CstNo,CKOTPrintYN,PrintType,BarCodePartitionAppOn,CKOTPrintPath,CurTokenNo,CurTokenNoKOT,NoOfKOt,NoOfBill,OrderBookCom1,OrderBookCom2,SaleBillTokenHeader1,PrintOnSave,AutoSettlement,WScaleApp,BarCodeApp,AutoResetToken,FreeItemApp,CoverMandatory,MobileNoMandatory,DirectBilling,BookOfBills,GrpDiscApp) " & " Values ('";

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD0EE6:   var_D4 = "Insert Into RevMast(Code,DeskCode,Name,ShortName,SysYN,Type,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_AC;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD17D0:   var_E8 = "Update Depart Set TokenPrint='";

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD1DF1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, var_160, "Select Count(*) from RevMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_F8, -1, var_D0);

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD1EFC:   var_D4 = "Insert Into RevMast(Code,DeskCode,Name,ShortName,SysYN,Type,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,AcCode,FieldType,LogSite_Code) Values ('" & var_AC;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD209A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, var_160, "Select Count(*) from RevMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_F8, -1);

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD21A5:   var_D4 = "Insert Into RevMast(Code,DeskCode,Name,ShortName,SysYN,Type,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,AcCode,FieldType,LogSite_Code) Values ('" & CStr("000" & ",'A','" & CVar(var_B8));

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD23B4:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HSBILL','HSBIL','" & var_98;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD2570:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD2679:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HSBOOK','HSBK','" & var_A8;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD280D:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_A8;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD2916:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HSBOOK','HSBK','" & var_B0;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD2AAA:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_B0;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD2BEB:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('RSKOT','RSKOT','" & var_A8;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD2D95:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_A8;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD2E9E:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('RSBILL','RSBIL','" & var_98;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD305A:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD3198:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('RSTKN','RSTKN','" & var_A8;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD3342:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_A8;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD34B6:       var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('RSKOT','RSKOT','" & var_B0;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD3660:       var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_B0;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD37A2:         var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('RSTKN','RSTKN','" & var_B0;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD394C:         var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_B0;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD3A96:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('ORDER','ORDER','" & var_A0;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD3C40:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_A0;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD3D8A:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('POSAdvance','PADV','" & var_A4;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD3F34:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_A4;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD407E:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('POSPayment','PPMT','" & var_B4;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD4228:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_B4;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD5A85: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4, "Delete From SchemeOutletDiscount Where RestCode='", var_F8, -1);

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD5B74:     unk_51DA92.Execute "Select * From SchemeMast Where Code='" & var_D4 & "'", var_118, -1;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD5D7D:     var_160 = "Insert into SchemeOutletDiscount(RestCode,Appdate,EndDate,FromTime,ToTime,SchemeCode,DiscPer,Active,Days,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_D4;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD5F21: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4, "Delete From OutletBarCodePartDetail Where RestCode='");

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD609C:     var_160 = "Insert into OutletBarCodePartDetail(RestCode,BarCodePart,BarCodeStartFrom,BarCodeLength,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_D4;

-- [VERIFIED-VB6] (OutLetMast)
loc_1CD6247:   If (MsgBox(CVar("Reload Application to update menu settings" & vbCrLf & "Want to Reload Application ?"), 4, var_118, var_138, var_15C) = 6) Then;

-- [VERIFIED-VB6] (OutLetMast)
loc_12B5F50:     var_C4 = CVar("Select Code,Name From SchemeMast Where ISNULL(Active,'')='Y' And (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order By Name") 'String;

-- [VERIFIED-VB6] (OutLetMast)
loc_1161AF8:   var_C4 = CVar("Select Code,Name,RestType  From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and RestType in ('Banquet')  Order by Name") 'String;

-- [VERIFIED-VB6] (OutLetMast)
loc_1161B35:   var_C4 = CVar("Select Code,Name,RestType  From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and RestType not in ('House Keeping','Kitchen','Banquet') AND RestType IN ('Outlet','Room Service') Order by Name") 'String;

-- [VERIFIED-VB6] (OutLetMast)
loc_1161BB1: var_B4 = "SELECT SplitBill,R.Code AS SEARCHCODE,P_Name=CASE R.PartyName WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Name,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Header1,R.Header2,R.Header3,R.Header4,R.Phone,R.Slogan1,R.Slogan2,R.LstNo,Comp1=CASE R.CompanyTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END,Outl=CASE R.OutletTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END," & "MemberInfo=CASE R.MemberInfo WHEN 'Y' THEN 'Yes' ELSE 'No' END,D1=CASE R.POS WHEN 'Y' THEN 'Yes' ELSE 'No' END,LinkRoom=CASE R.LinkToRoom WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncl=CASE R.RateInclTax WHEN 'Y' THEN 'Yes' ELSE 'No' END,DiscApp=CASE R.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,Roff=CASE R.Roff WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.U_Name,R.RestType,R.BackColor,R.ShortName,R.SITE_CODE,R.LOGSITE_CODE,TokenPrint,TokenPrintAfter,PrintTokenNo,Order_Booking=CASE R.Order_Booking WHEN 'Y' THEN 'Yes' ELSE 'No' END,CustInfo=CASE R.CustInfo WHEN 'Y' THEN 'Yes' ELSE 'No' END,DisPrint=CASE R.DisPrint WHEN 'Y' THEN 'Yes' ELSE 'No' END,LabelPrinting=CASE R.LabelPrinting WHEN 'Y' THEN 'Yes' ELSE 'No' END,CstNo,";

-- [VERIFIED-VB6] (OutLetMast)
loc_1307ED7:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_BC, "Select Count(*) From Depart Where ShortName='", var_A0, -1);

-- [VERIFIED-VB6] (OutLetMast)
loc_1082840:   var_B0 = "Select Count(*) From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' AND Name='";

-- [VERIFIED-VB6] (OutLetMast)
loc_1082952:   var_B0 = "Select Count(*) From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' AND Code='";

-- [VERIFIED-VB6] (OutLetMast)
loc_1777E7B:   unk_51DA92.Execute CStr("Select U_Name,U_AE,U_EntDt From Depart where Code='" & Me.Fields.Item("SearchCode").Value & "'  "), var_120, -1;

-- [VERIFIED-VB6] (OutLetMast)
loc_177967C:   var_100 = "Select SD.SchemeCode, SM.Name, SD.DiscPer, SD.RestCode from SchemeOutletDiscount SD Inner Join SchemeMast SM On SD.SchemeCode = SM.Code where (SD.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (OutLetMast)
loc_1779980:   var_100 = "Select BD.BarCodePart, BD.BarCodeStartFrom, BD.BarCodeLength, BD.RestCode from OutletBarCodePartDetail BD where (BD.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (OutLetMast)
loc_F55967: var_D8 = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast WHERE SUBSTRING(Code,1,3) ='";


-- ### RsTableMast  (12 statement(s))
-- [VERIFIED-VB6] (RsTableMast)
loc_FF9447:   var_120 = "Delete From RoomMast Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (RsTableMast)
loc_F1C6F1: MemVar_1F810E4 = "Select RoomMast.Code As SearchCode,RoomMast.code,RoomMast.Name FROM RoomMast where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Type='TB' Order by RoomMast.Name";

-- [VERIFIED-VB6] (RsTableMast)
loc_109E023: var_A0 = "select ROOMMAST.*,DEPART.NAME AS RestName FROM (RoomMast LEFT JOIN DEPART ON DEPART.CODE=ROOMMAST.RESTCODE) Where (RoomMast.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (RsTableMast)
loc_123213B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "Insert Into RoomMast(Type,Code,Name,RoomCat,InclCount,RestCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('TB','");

-- [VERIFIED-VB6] (RsTableMast)
loc_123227D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_9C, "UPDATE RoomMast SET Name='");

-- [VERIFIED-VB6] (RsTableMast)
loc_10438D2: var_C8 = "SELECT RoomMast.Code,RoomMast.Name,RestCode,D.Name as RestName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (RsTableMast)
loc_1043923: var_CC = "Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' aND RestType not in ('Room Service','Banquet') Order by Name";

-- [VERIFIED-VB6] (RsTableMast)
loc_123AAB7:   unk_44B347.Execute CStr("Select U_Name,U_AE,U_EntDt From roommast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1;

-- [VERIFIED-VB6] (RsTableMast)
loc_10D4D7C:   var_AC = "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Type='TB' And Restcode='";

-- [VERIFIED-VB6] (RsTableMast)
loc_10D4EC7:   var_AC = "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Type='TB' And Restcode='";

-- [VERIFIED-VB6] (RsTableMast)
loc_10D3CC4:   var_AC = "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Type='TB' And Restcode='";

-- [VERIFIED-VB6] (RsTableMast)
loc_10D3E0F:   var_AC = "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Type='TB' And Restcode='";


-- ### FrmItemGroupMast  (19 statement(s))
-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_129E38E:   var_C4 = "SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code WHERE (Itemgrp.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_129E400:   var_C4 = "SELECT IG.Code,IG.Name As ItemGroup,IG.Type,D.Name As RestName FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE (IG.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_129E462:   var_C4 = "SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code WHERE (ITEMGRP.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_129E4D4:   var_C4 = "SELECT IG.Code,IG.Name As ItemGroup,IG.Type,D.Name As RestName,IG.SITE_CODE,IG.LOGSITE_CODE FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE (IG.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_129E587:     var_D8 = "Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' And RestType in('Banquet') Order by Name";

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_129E605:     var_D8 = "Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' And RestType in('Outlet','Room Service','Production') Order by Name";

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_129E683:   var_D8 = "Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND OutletYN='N' Order by Name";

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_11262B0:   var_114 = "Delete From ItemGrp Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_F8320C:   var_10C = "Select IG.Code As SearchCode,IG.Name,D.Name As DepartName FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE IG.LOGSITE_CODE IN ('HO','" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_F8323B:   var_10C = "Select IG.Code As SearchCode,IG.Name,D.Name As DepartName FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE IG.LOGSITE_CODE IN ('HO','" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_108076E: var_A0 = "select IG.Code,IG.Name As ItemGroup,IG.Type,D.Name As RestName FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE IG.TYPE " & global_52;

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_12AE75E:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemGrp Where ISNUmeric(substring(Code,3,4))=1 and SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_12AE8A5:   var_9C = "Insert Into ItemGrp(Code,Name,Type,RestCode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_72;

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_12AEA09:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, var_9C, "UPDATE ItemGrp SET Name='");

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_111B38B:       unk_491DD9.Execute "SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code WHERE ItemGrp.Code<>'MISC'  AND ItemGrp.Type='Finish' and Depart.RestType='Banquet' ORDER BY ItemGrp.Name", var_C4, -1;

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_111B3E2:       var_D4 = "SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code WHERE ItemGrp.Code<>'MISC'  AND ItemGrp.Type='Finish' and Depart.RestType in ('Outlet','Room Service','Production')  AND RestCode='";

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_123FE4F:   unk_491DD9.Execute CStr("Select U_Name,U_AE,U_EntDt From itemgrp where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1;

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_10EFF07:   Call 0.Method_Proc_25_37_10F01740 (CInt(2), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmItemGroupMast)
loc_10F0052:   Call 0.Method_Proc_25_37_10F01740 (CInt(2), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and (Name='", var_A0, -1);


-- ### FrmItemCatMast  (29 statement(s))
-- [VERIFIED-VB6] (FrmItemCatMast)
loc_1319E8F:   var_D8 = "SELECT ItemCatMast.Code, ItemCatMast.Name FROM ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  AND ItemCatMast.RestCode='";

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_1319F0F:   var_C4 = "SELECT ItemCatMast.Code, ItemCatMast.Name, Depart.Name as DepartmentName FROM ItemCatMast LEFT JOIN Depart ON ItemCatMast.RestCode = Depart.Code WHERE (ItemcatMast.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_1319F8F:   var_C4 = "SELECT distinct IC.Code,IC.Name AS ItemCat,ShortName,IC.RoundOff,IC.AcName,IC.TaxStru As TaxStruCode,IC.Flag,IC.CatType,IC.RestCode,IC.TaxStru,IC.U_Name As IUName,VS.Name As SaleAc,TaxStru.Name As TaxStructure,D.Name As RestName,IC.Drcr,IC.SITE_CODE,IC.LOGSITE_CODE FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code Where (IC.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_1319FDC:   var_C4 = "SELECT distinct IC.Code,IC.Name AS ItemCat,ShortName,IC.RoundOff,IC.AcName,IC.TaxStru As TaxStruCode,IC.Flag,IC.CatType,IC.RestCode,IC.TaxStru,IC.U_Name As IUName,VS.Name As SaleAc,TaxStru.Name As TaxStructure,D.Name As RestName,IC.Drcr,IC.SITE_CODE,IC.LOGSITE_CODE FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code Where (IC.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_131A02D: var_D8 = "Select SubCode As Code,Name From ViewSubGroup Where ActiveYN=1 and  (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Left(MainGrCodeS,3) IN ('230','240','250','260','270','280') Order by Name";

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_131A09F: var_D8 = "Select distinct Code As Code,Name From TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name";

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_131A11F:   var_D8 = "Select Code,Name,ShortName From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND Depart.RestType='Banquet' and OutletYN='Y' Order by Name";

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_131A194:   var_D8 = "Select Code,Name,ShortName From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  AND RestType<>'Banquet' and OutletYN='Y' Order by Name";

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_12821CC: unk_4E2BD2.Execute "Select Code From RevMast Where Name='" & global_76 & "'", var_C8, -1;

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_1282243:   var_118 = "Select Count(*) from PayCharge Where PayType='" & var_98.Fields.Item(0).Value & "'";

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_128238C:   var_118 = "Delete From ItemCatMast Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_12824CC:   unk_4E2BD2.Execute "Delete From RevMast Where Name='" & global_76 & "'", var_C8, -1;

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_F58400:   var_10C = "SELECT distinct IC.Code AS SearchCode,'Banquet' As Outlet,IC.Name AS ItemCategory,IC.CatType As Type,IC.RoundOff,IC.Flag,VS.Name As SaleAc,TaxStru.Name As TaxStructure FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Where IC.RestCode='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_F58418:   var_10C = "SELECT distinct IC.Code AS SearchCode,D.Name As Outlet,IC.Name AS ItemCategory,IC.CatType As Type,IC.RoundOff,IC.Flag,VS.Name As SaleAc,TaxStru.Name As TaxStructure FROM ((ItemCatMast IC Inner Join ViewSubGroup VS On IC.AcName=VS.SubCode) Inner Join TaxStru On IC.TaxStru=TaxStru.Code) Inner Join Depart D On IC.RestCode=D.Code Where (IC.LogSite_Code='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_1069DFD: unk_4E2BD2.Execute "SELECT IC.Code,IC.Name AS ItemCat,IC.RoundOff,IC.Flag,IC.CatType As Type,D.Name As Outlet,VS.Name As SaleAc,TaxStru.Name As TaxStructure,D.Name as OutLetName  FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode)Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code ORDER BY IC.Name", var_BC, -1;

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_157BF56:   var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemCatMast WHERE isnumeric(SUBSTRING(Code,3,4) )=1 and SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_157C0DA:   var_AC = "Insert Into ItemCatMast(Code,Name,RestCode,RoundOff,AcName,TaxStru,Flag,CatType,OutletYN," & " U_Name,U_EntDt,U_AE,Drcr,RevCode,SITE_CODE,LOGSITE_CODE)";

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_157C3B4:   var_AC = "Insert Into RevMast(Code,Name,ShortName,SysYN,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,FieldType,DeskCode,TaxStru,Type,AcCode,LOGSITE_CODE) Values ('" & var_9C;

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_157C5C7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, "UPDATE ItemCatMast SET Name=");

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_157C841:   var_AC = "Select Count(*) From RevMast Where Name='" & global_76;

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_157C8EE:     var_C4 = "Update ItemCatMast SET RevCode='" & var_9C & "' Where Code='";

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_157C932:     var_AC = "Insert Into RevMast(Code,Name,ShortName,SysYN,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,FieldType,DeskCode,TaxStru,Type,AcCode,LOGSITE_CODE) Values ('" & var_9C;

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_157CB58:     "Update RevMast Set Name='" = var_A4.Text;

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_1314E3B:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C, "SELECT ItemCatMast.Code, ItemCatMast.Name, Depart.Name as DepartmentName FROM ItemCatMast LEFT JOIN Depart ON ItemCatMast.RestCode = Depart.Code WHERE DEPART.CODE='");

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_13F6A42:   unk_4E2BD2.Execute CStr("Select U_Name,U_AE,U_EntDt From itemcatmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_11C, -1;

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_13F71BF:   var_FC = "Select Code from Revmast where Name ='" & Proc_6_37_E618F4(CVar(var_124)) & var_A8.Text;

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_10EF127:   Call 0.Method_Proc_51_39_10EF3940 (CInt(1), var_A8, var_AC, "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1);

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_10EF272:   Call 0.Method_Proc_51_39_10EF3940 (CInt(1), var_A8, var_AC, "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1);

-- [VERIFIED-VB6] (FrmItemCatMast)
loc_F6BF0A: var_8C = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast WHERE Site_Code='" & MemVar_1F81070;


-- ### RsMenuItemEntry  (41 statement(s))
-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_1415B2D: var_D0 = CVar("SELECT Distinct I.Code,I.Name,I.Unit,I.ItemGroup,I.DISPCODE,IG.Type,ItemRate.Rate as SaleRate, IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,T.Name TaxStru,Convert(Varchar(11),ItemRate.AppDate,106) As AppDate,I.NType,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END, " & " REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncTax=CASE I.RateIncTax WHEN 'Y' THEN 'Yes' ELSE 'No' END, K.Name as KitchenName,I.ActiveYN,I.BarCode,I.LabelName,I.LabelQty,I.LabelRemark1,I.LabelRemark2,I.LabelRemark3,I.LabelRemark4,I.LabelRemark5 FROM ((ItemMast I  Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Left Join ItemRate on I.Code=ItemRate.ItemCode And I.RestCode=ItemRate.RestCode And IsNull(ItemRate.Party,'')='' left Join TaxStru T On IC.TaxStru=T.Code Left Join Depart K on K.Code=I.Kitchen Inner Join (Select ItemCode,RestCode,Max(AppDate) As MaxDate from itemrate Where AppDate<=") 'String;

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_141611B:   var_198.Update var_98, var_C0;

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_16E1E4E:                         Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C, var_A0, "SELECT DispCode as COde,DispCode FROM ItemMast Where Type IN ('Finish','Semi Finish')  And DispCode<>9999 and RestCode ='");

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_16621BE:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, "Select Max(Unit) From ItemMast Where Code='", var_C0, -1);

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_1662ADD:                   var_D0 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where Type IN ('Finish','Semi Finish') AND RESTCODE='";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_1662BBB:                   var_E0 = "SELECT Code,Name,RestCode FROM ItemCatMast where (cattype is not NULL and cattype<>'')  AND RESTCODE='" & Me.Fields.Item("Code").Value;

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_132D3BC: Call 0.Method_CmdSaveConsumption_UnknownEvent_90 (CInt(&H12), var_90, var_94, "Select * From BOM Where FinItem='");

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_132D46C:     var_10C = "Insert Into BOM (Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,U_Name,U_EntDt,U_AE,Waste,Cost,Total,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode) Values(";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_1274CB3:     var_E4 = CVar("SELECT Distinct I.Code,I.Name,I.Unit,I.ItemGroup,I.DISPCODE,IG.Type,ItemRate.Rate as SaleRate ,IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,T.Name TaxStru,Convert(Varchar(11),ItemRate.AppDate,106) As AppDate,I.NType,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END, " & " REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncTax=CASE I.RateIncTax WHEN 'Y' THEN 'Yes' ELSE 'No' END, K.Name as KitchenName,I.ActiveYN,I.BarCode,ItemRate.MRP,IsNull(I.CommodityCode,'') HSNCode FROM ((ItemMast I  Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Left Join ItemRate on I.Code=ItemRate.ItemCode And I.RestCode=ItemRate.RestCode And IsNull(itemrate.Party,'')='' left Join TaxStru T On IC.TaxStru=T.Code Left Join Depart K on K.Code=I.Kitchen Inner Join (Select Max(ItemCode) As mItem,Max(AppDate) As MaxDate from itemrate Where AppDate<=") 'String;

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_1274D2F:     var_BC = "SELECT Distinct I.Code,I.Name,I.Unit,I.ItemGroup,I.DISPCODE,IG.Type,ItemRate.Rate as SaleRate ,IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,T.Name TaxStru,Convert(Varchar(11),ItemRate.AppDate,106) As AppDate,I.NType,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END, " & " REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncTax=CASE I.RateIncTax WHEN 'Y' THEN 'Yes' ELSE 'No' END, K.Name as KitchenName,I.ActiveYN,I.BarCode,ItemRate.MRP,IsNull(I.CommodityCode,'') HSNCode FROM ((ItemMast I  Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Left Join ItemRate on I.Code=ItemRate.ItemCode And I.RestCode=ItemRate.RestCode And IsNull(itemrate.Party,'')='' left Join TaxStru T On IC.TaxStru=T.Code Left Join Depart K on K.Code=I.Kitchen Where IG.Type IN ('Finish','Semi Finish') ";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_1184B37:   var_E8 = "Delete From ItemMast Where Code+RestCode='";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_1184BA9:   var_E8 = "Delete From ItemRate Where ItemCode+RestCode='";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_F9F740:   var_10C = "SELECT I.Code as SearchCode,I.Name,I.Unit,convert(varchar(8),I.Dispcode,103),convert(varchar(50),I.SaleRate,103),Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END FROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Where I.LOGSITE_CODE IN ('HO','" & MemVar_1F81078;

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_F9F765:   var_B8 = "SELECT I.Code+I.RestCode as SearchCode,I.Name,I.CommodityCode HSNCode,I.Unit,IG.Name as ItemGrpName,IC.Name As ItemCategory,convert(varchar(8),I.Dispcode,103) as Disp,Depart.Name as Restaurant,Rate=convert(varchar(50),R.Rate,103),Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,Active=I.ActiveYN,Kitchen=D.Name,Type=I.NType FROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code)  left join depart on I.restcode=depart.code left join depart D on I.Kitchen=D.code left join (Select itemcode,RestCode,Rate from itemrate inner join (Select ItemCode Itemcode1,RestCode RestCode1,Max(Appdate) as Appdate1 From ItemRate Where AppDate<=";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_16E27B7: Proc_6_6_F208E4(var_EC, MemVar_1F810EC, "Select Rate,MRP,Appdate From ItemRate Where AppDate<=");

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_16E2CF4:   var_AC = "Insert Into ItemMast (Code,Name,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,DiscApp,RateEdit,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,SaleRate,MRP,SChrgApp,RateIncTax,LOGSITE_CODE,ActiveYN,NType,BarCode,CommodityCode,LabelName,LabelQty,LabelRemark1,LabelRemark2,LabelRemark3,LabelRemark4,LabelRemark5) " & " Values ('";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_16E310D:     var_AC = "Insert Into Itemrate(ItemCode,RestCode,Rate,MRP,AppDate,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_16E3540:   var_1D4 = "UPDATE ItemMast SET Name='" & var_AC & "',RestCode='";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_16E3915:   var_1EC = "Update ItemRate Set Rate=" & CStr(var_B4.Text) & ",MRP=" & CStr(var_C0.Tag) & ",Site_Code='" & MemVar_1F81070 & "',U_name='";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_16E3A00: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_AC, "Select Count(*) From UnitMast Where Name='", var_EC, -1, var_A8);

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_16E3A7D:   var_11C = CVar("Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,lOGSITE_CODE)" & " Values('") 'String;

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_105CD03: Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_94, var_98, "Select Top 1 BOM.FinItem+BOM.RestCode+Convert(Varchar(11),BOM.AppDate,103) as SearchCode From BOM Where FinItem='");

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_12B3080: var_D4 = "SELECT Code,Name,BarCode,CommodityCode FROM Item Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_12B3100:   var_D4 = "SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  AND ((OutletYN='Y' and RestType='Banquet') OR RestType='Kitchen') ORDER BY Name";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_12B3175:   var_D4 = "SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_12B31F0: unk_53B892.Execute "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_AC, -1;

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_12B3252: var_D0 = "SELECT I.Code,I.Name,I.Unit,D.Name As Outlet,I.RestCode FROM ItemMast I Left Join Depart D On I.RestCode=D.Code Where I.Code In (Select Distinct FinItem From BOM) And (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_12B32C4: var_D0 = "SELECT Distinct Convert(Varchar(11),AppDate,104) as Code,Convert(Varchar(11),AppDate,104) As Name,RestCode,AppDate FROM ItemRate WHERE (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_12B333D: var_D4 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND Type IN ('Finish') ORDER BY Name";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_12B33AF: var_D4 = "SELECT Code,Name,RestCode FROM ItemCatMast where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  AND (cattype is not NULL and cattype<>'') ORDER BY Name";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_12B3428:   var_D0 = "SELECT I.Code,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SchrgApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,I.TYPE,DispCode,I.RestCode,I.kitchen,K.Name as KitchenName,I.DiscApp,I.SITE_CODE,I.LOGSITE_CODE FROM ((((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code))Left Join Depart K on K.Code=I.Kitchen) Where (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_12B3487:   var_D0 = "SELECT I.Code+I.RestCode Code,I.Code ItemCode,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,I.TYPE,DispCode,R.Name as RestName,I.RestCode,I.kitchen,K.Name as KitchenName,R.DiscApp,I.RateIncTax,I.SITE_CODE,I.LOGSITE_CODE,I.ActiveYN,I.NType,I.BarCode,I.CommodityCode,I.LabelName,I.LabelQty,I.LabelRemark1,I.LabelRemark2,I.LabelRemark3,I.LabelRemark4,I.LabelRemark5 FROM ((((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code))Left Join Depart R on R.Code=I.RestCode)Left Join Depart K on K.Code=I.Kitchen Where (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_FACAE0: Call 0.Method_Form_Activate0 (CInt(0), var_90, var_94, "Select Count(*) From BOM Where FinItem='", var_D0, -1);

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_15FD89A:   var_CC = "Select U_Name,U_AE,U_EntDt From ItemMast where Code+RestCode='";

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_15FE7E1:   Proc_6_6_F208E4(var_BC, MemVar_1F810EC, "Select Rate,MRP,Appdate From ItemRate Where AppDate<=", var_1D4);

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_15FEABF: Call 0.Method_Proc_44_52_15FECE80 (CInt(0), var_AC, var_100, "Select Count(*) From BOM Where FinItem='", var_BC, -1);

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_15FEC29:   var_DC = "Select LabelPrinting From Depart Where Code='" & Me.Fields.Item("RestCode").Value;

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_12E7323:   Call 0.Method_Proc_44_53_12E79540 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1);

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_12E74A1:     Call 0.Method_Proc_44_53_12E79540 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1);

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_12E75EC:   Call 0.Method_Proc_44_53_12E79540 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Code='", var_A0, -1);

-- [VERIFIED-VB6] (RsMenuItemEntry)
loc_12E777F:     Call 0.Method_Proc_44_53_12E79540 (CInt(&HA), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and DispCode=", var_A0, -1);


-- ### OutLetSundry  (22 statement(s))
-- [VERIFIED-VB6] (OutLetSundry)
loc_F637B2: unk_4F5E9F.Execute "Delete From SundryType Where V_Type='XXX'", var_A4, -1;

-- [VERIFIED-VB6] (OutLetSundry)
loc_F637DA: Proc_6_6_F208E4(var_A4, MemVar_1F810F4, "INSERT INTO SundryType SELECT 'XXX' AS V_Type, SundryCode, SNo, ", var_1BC);

-- [VERIFIED-VB6] (OutLetSundry)
loc_1244FE7:     var_E8 = " SELECT DISTINCT RM.Code as Code,RM.Name as NAme,RM.Type FROM RevMast AS RM WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and RM.FieldType='T'";

-- [VERIFIED-VB6] (OutLetSundry)
loc_1244FFC:     var_F4 = var_E8 & " Union " & " Select Distinct RM.Code as Code,RM.Name as NAme,RM.Type From RevMast RM Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (OutLetSundry)
loc_11B8991:   var_AC = "Select 'B'+ShortName as Code,Name,Code as DCOde,RestType From Depart Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (OutLetSundry)
loc_11B8A17:   var_AC = "Select VT.V_Type as Code,VT.V_Type,D.Name,D.Code as DCOde,D.RestType From Depart D Inner Join Voucher_Type VT On D.Code=VT.RestCode And D.Site_Code=VT.Site_Code And D.LogSite_Code=VT.LogSite_Code And VT.Category='RSBILL' Where (D.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (OutLetSundry)
loc_11B8AA1: var_BC = CVar("Select Code,Name,Nature,SysYN From SundryMast where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order By Name") 'String;

-- [VERIFIED-VB6] (OutLetSundry)
loc_11B8B24: var_BC = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and (FlagType ='POS' or FlagType  Is Null) and FlagAMR is NULL Order By Name") 'String;

-- [VERIFIED-VB6] (OutLetSundry)
loc_11B8BAE:   var_AC = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From SundryType SP Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (OutLetSundry)
loc_11B8BB5:   var_BC = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  and V_Type in (Select 'B'+ShortName From Depart Where OutletYN='Y' and RestType='Banquet') Order By (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))") 'String;

-- [VERIFIED-VB6] (OutLetSundry)
loc_11B8BEB:   var_AC = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,SITECODE AS sITE_cODE,LOGSITE_CODE From SundryType SP Where SP.Logsite_Code='" & MemVar_1F81078;

-- [VERIFIED-VB6] (OutLetSundry)
loc_11B8BF2:   var_C0 = "Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' and V_Type In (Select VT.V_Type From Depart D Inner Join Voucher_Type VT On D.Code=VT.RestCode And D.Site_Code=VT.Site_Code And D.LogSite_Code=VT.LogSite_Code And VT.Category='RSBILL' Where (D.LOGSITE_CODE='";

-- [VERIFIED-VB6] (OutLetSundry)
loc_FC39D0: unk_4F5E9F.Execute "Select SundryPassword from Enviro where LogSite_Code='" & MemVar_1F81078 & "'", var_B0, -1;

-- [VERIFIED-VB6] (OutLetSundry)
loc_100451E: Call 0.Method_CmdChange_Click0 (CInt(2), var_90, var_11C, "Update Enviro set SundryPassword='");

-- [VERIFIED-VB6] (OutLetSundry)
loc_EC0502: var_10C = "Select Distinct (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))  AS SearchCode,VT.Description,SP.V_Type,Convert(Varchar(11),SP.AppDate,103) As [App.Date] From (((SundryType SP Inner Join Voucher_type VT On SP.V_Type=VT.V_Type) Inner Join SundryMast SM On SP.SundryCode=SM.Code) Inner Join RevMast RM On SP.RevCode=RM.Code) WHERE (SP.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (OutLetSundry)
loc_EC0509: MemVar_1F810E4 = var_10C & "' or SP.LOGSITE_CODE='HO') and SP.V_Type in (Select 'B'+ShortName From Depart Where OutletYN='Y' and RestType<>'Banquet') Order by VT.Description,SP.V_Type,[App.Date] Desc";

-- [VERIFIED-VB6] (OutLetSundry)
loc_1632D38:       var_9C = "Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName," & "CalcFormula,PerOrAmt,RoundOff,SValue,Limit,";

-- [VERIFIED-VB6] (OutLetSundry)
loc_16332FB:       var_9C = "Update SundryType " & " Set DispName='";

-- [VERIFIED-VB6] (OutLetSundry)
loc_FBF881: Call 0.Method_Proc_109_60_FBF99C0 (CInt(0), var_98, var_9C, "Select Count(*) From SundryType Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and (V_Type='", var_130, -1);

-- [VERIFIED-VB6] (OutLetSundry)
loc_1484D6A:   var_94 = "Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName,D.Name As Department From ((((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type ) Left Join Depart D On VT.RestCode=D.Code) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Where Sp.LogSite_Code='" & MemVar_1F81078;

-- [VERIFIED-VB6] (OutLetSundry)
loc_12C976A: var_B8 = "SELECT SF.*,SM.Name as SundryName" & " FROM SundryTypeFix SF INNER JOIN SundryMast SM ON SF.SundryCode = SM.Code" & " where (SF.LOGSITE_CODE='";

-- [VERIFIED-VB6] (OutLetSundry)
loc_1379427: var_90 = "Select SP.*,SM.Name As SundryName,RM.Name As RevName,'B'+D.ShortName V_Type1 From SundryType SP Left Join SundryMast SM On SP.SundryCode=SM.Code Left Join RevMast RM On SP.RevCode=RM.Code Left Join Depart D On RM.DeskCode=D.Code Where SP.LogSite_Code='" & MemVar_1F81078;


-- ### FrmMenuRate  (17 statement(s))
-- [VERIFIED-VB6] (FrmMenuRate)
loc_12E67E5: var_AC = "Select I.Code,I.Name as Name,I.DispCode,I.RestCode OutletCode From ItemMast I Where I.Type='Finish' And I.ItemType<>'Store' And I.DispCode <>9999 and I.ActiveYN<>'No' Order by I.Name";

-- [VERIFIED-VB6] (FrmMenuRate)
loc_12E6864: var_DC = CVar("Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' Order By Name") 'String;

-- [VERIFIED-VB6] (FrmMenuRate)
loc_12E68F1: Me.Open CVar("Select Code,Name,RestCode From ItemCatMast where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')"), CVar(MemVar_1F81044), 2;

-- [VERIFIED-VB6] (FrmMenuRate)
loc_12E696A: var_DC = CVar("Select Code,Name,RestCode From ItemGrp where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (FrmMenuRate)
loc_12E69ED: var_DC = CVar("Select SubCode as Code,Name,Discount,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate') Order By Name") 'String;

-- [VERIFIED-VB6] (FrmMenuRate)
loc_12E6A69: var_E0 = "Select Distinct IR.RestCode+Convert(varchar(11),AppDate,103)+IsNull(IR.Party,'') SearchCode,D.Name As Department,Convert(varchar(11),AppDate,106) Appdate,IsNull(S.Name,'') Party From ItemRate IR Inner Join Depart D On D.Code=IR.RestCode Left Join SubGroup S On S.SubCode=IR.Party Inner Join ItemMast I On I.Code=IR.ItemCode And I.RestCode=IR.RestCode Where (IR.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmMenuRate)
loc_12E6A70: var_DC = CVar("Select SubCode as Code,Name,Discount,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F81078 & "' or IR.LOGSITE_CODE='HO')") 'String;

-- [VERIFIED-VB6] (FrmMenuRate)
loc_F1EEA2: var_10C = "Select Distinct IR.RestCode+Convert(varchar(11),AppDate,103)+IsNull(IR.Party,'') SearchCode,D.Name As Department,Convert(varchar(11),AppDate,106) Appdate,IsNull(S.Name,'') Party From ItemRate IR Inner Join Depart D On D.Code=IR.RestCode Left Join SubGroup S On S.SubCode=IR.Party Where (IR.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmMenuRate)
loc_1346111:   var_118 = "Select count(*) From ItemRate Where ItemCode='" & CStr(var_B0) & "' And RestCode='" & var_FC & "' And Party='" & var_110;

-- [VERIFIED-VB6] (FrmMenuRate)
loc_134628F:     var_100 = "Update ItemRate Set Rate=" & CStr(var_31C) & ",Site_Code='";

-- [VERIFIED-VB6] (FrmMenuRate)
loc_134645E:     var_FC = "Insert Into Itemrate(ItemCode,RestCode,Party,Rate,AppDate,Site_Code,U_Name,U_EntDt,U_AE,lOGSITE_CODE)" & " Values('" & var_F8;

-- [VERIFIED-VB6] (FrmMenuRate)
loc_FEB726: var_98 = "Select Top 1 IR.RestCode+Convert(varchar(11),AppDate,103)+IsNull(IR.Party,'') SearchCode,D.Name As Department,Convert(varchar(11),AppDate,106) Appdate,IsNull(S.Name,'') Party From ItemRate IR Inner Join Depart D On D.Code=IR.RestCode Left Join SubGroup S On S.SubCode=IR.Party Where (IR.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmMenuRate)
loc_146E0C3: var_B4 = "Select DispCode,Code As ItemCode,Name As ItemName,ItemCatCode,ItemGroup From ItemMast " & var_A0;

-- [VERIFIED-VB6] (FrmMenuRate)
loc_146E124: Call 0.Method_CmdFillDetail_Click0 (CInt(0), var_AC, var_B4, "Select ItemCode,Rate,AppDate From ItemRate Where RestCode='");

-- [VERIFIED-VB6] (FrmMenuRate)
loc_12130AA:   var_94 = "Select D.Name As OutletName,IsNull(S.Name,'') PartyName,IR.RestCode,IR.Party,IR.ItemCode,I.Name ItemName,I.DispCode,IR.Rate,IR.Appdate From ItemRate IR Inner Join Depart D On D.Code=IR.RestCode Left Join SubGroup S On S.SubCode=IR.Party Inner Join ItemMast I On I.Code=IR.ItemCode And I.RestCode=IR.RestCode Where (IR.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmMenuRate)
loc_FEC685: Proc_6_6_F208E4(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="));

-- [VERIFIED-VB6] (FrmMenuRate)
loc_FEC772:   Proc_6_6_F208E4(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="), var_154);


-- ### frmSessionMast  (11 statement(s))
-- [VERIFIED-VB6] (frmSessionMast)
loc_10D6F84:   var_F8 = "Delete From SESSIONMAST Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (frmSessionMast)
loc_F0E33E: MemVar_1F810E4 = "Select Code As SearchCode,Name,CAST(FROMTIME AS VARCHAR) AS FrTime,CAST(TOTIME AS VARCHAR) AS TTime FROM SESSIONMAST ORDER BY Name";

-- [VERIFIED-VB6] (frmSessionMast)
loc_106C605: unk_449A7B.Execute "SELECT * FROM SESSIONMAST ORDER BY Name", var_BC, -1;

-- [VERIFIED-VB6] (frmSessionMast)
loc_12EF6A0:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From SESSIONMAST WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (frmSessionMast)
loc_12EF8AE:   var_E8 = "Insert Into SessionMast(Code,Name,FromTime,ToTime,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) Values ('" & global_60 & "','";

-- [VERIFIED-VB6] (frmSessionMast)
loc_12EFA59:   var_C4 = "UPDATE SESSIONMAST SET Name='";

-- [VERIFIED-VB6] (frmSessionMast)
loc_10430DE: unk_449A7B.Execute "SELECT Code,Name FROM SESSIONMAST WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1;

-- [VERIFIED-VB6] (frmSessionMast)
loc_1043150: unk_449A7B.Execute "SELECT * FROM SESSIONMAST WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1;

-- [VERIFIED-VB6] (frmSessionMast)
loc_126CC89: unk_449A7B.Execute CStr("Select U_Name,U_AE,U_EntDt From sessionMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (frmSessionMast)
loc_107E177:   Call 0.Method_Proc_80_34_107E3740 (CInt(0), var_A8, var_AC, "Select Count(*) From sessionmast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND Name='", var_A0, -1);

-- [VERIFIED-VB6] (frmSessionMast)
loc_107E289:   Call 0.Method_Proc_80_34_107E3740 (CInt(0), var_A8, var_AC, "Select Count(*) From sessionmast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND Name='", var_A0, -1);


-- ### FrmConsumMast9999  (12 statement(s))
-- [VERIFIED-VB6] (FrmConsumMast9999)
loc_11494C0:   var_F8 = "Delete From BOM Where FinItem='" & Me.Fields.Item("FinItem").Value & "' And RestCode='";

-- [VERIFIED-VB6] (FrmConsumMast9999)
loc_EEB031: var_110 = "Select Distinct BOM.FinItem+BOM.RestCode As SearchCode,ItemMast.Name,FinQty,Case When BOM.RestCode='" & MemVar_1F81078 & "BANQ";

-- [VERIFIED-VB6] (FrmConsumMast9999)
loc_14A33B8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_B8, "Delete From BOM Where FinItem='");

-- [VERIFIED-VB6] (FrmConsumMast9999)
loc_14A3748:     var_B8 = "Insert Into BOM(Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,Cost,Waste,Total,U_Name,U_EntDt,U_AE,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode) Values ('" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmConsumMast9999)
loc_14A39A7: var_44C = "Update ItemMast Set IssueUnit=Unit,convRatio=1,PurchRate=" & var_B8 & ",LPurRate=" & CStr(var_A8) & " where Code='" & var_B0.Tag;

-- [VERIFIED-VB6] (FrmConsumMast9999)
loc_10D07D4: var_B0 = "SELECT ItemMast.Code, ItemMast.Name, ItemMast.Unit, Depart.Name as Department,Case When Itemmast.RestCode='" & MemVar_1F81078 & "BANQ";

-- [VERIFIED-VB6] (FrmConsumMast9999)
loc_10D0863: var_AC = "Select Code,Name,IssueUnit as Unit,CASE WHEN ISNULL(LPurRate,0)=0 THEN ISNULL(PURCHRATE,0) ELSE ISNULL(LPurRate,0) END AS LPurRate,ConvRatio From ItemMast where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmConsumMast9999)
loc_10D0878: var_B8 = var_AC & "' or LOGSITE_CODE='HO') and DispCode<>9999 and Code=ConsumptionItem And ActiveYN<>'No'" & " Union " & "Select Code,Name,Unit as Unit,CASE WHEN ISNULL(LPurRate,0)=0 THEN ISNULL(PURCHRATE,0) ELSE ISNULL(LPurRate,0) END AS LPurRate,ConvRatio From ItemMast Where (LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmConsumMast9999)
loc_10D092B: var_B0 = "Select Distinct BOM.FinItem+BOM.RestCode as SearchCode,BOM.FinItem,ItemMast.Name,BOM.FinQty,BOM.AppDAte,ItemMast.Unit,BOM.Site_Code,Bom.LogSite_Code,BOM.RestCode,Case When BOM.RestCode='" & MemVar_1F81078 & "BANQ";

-- [VERIFIED-VB6] (FrmConsumMast9999)
loc_FDF731:   Call 0.Method_Proc_132_46_FDF8740 (CInt(0), var_A8, var_A4, "Select Count(*) From BOM Where FinItem='", var_A0, -1);

-- [VERIFIED-VB6] (FrmConsumMast9999)
loc_140C3BD:   var_E4 = "Select BOM.*,ItemMast.Name as Name,ItemMast.Unit,ItemMast.LPurRate,ItemMast.IssueUnit From BOM Left Join ItemMast on ItemMast.Code=BOM.RawItem And (ItemMast.ItemType='Store' Or GravyItem='Yes') where BOM.FinItem+BOM.RestCode='";

-- [VERIFIED-VB6] (FrmConsumMast9999)
loc_140C438:   var_E4 = "Select BOM.U_name,bom.U_EntDt,BOm.U_AE From BOM Left Join ItemMast on ItemMast.Code=BOM.RawItem where BOM.FinItem+BOM.RestCode='";


-- ### pHappyHours  (23 statement(s))
-- [VERIFIED-VB6] (pHappyHours)
loc_15D875D:   var_F4 = "Select HappyHours.* From HappyHours Where ItemCode In (Select Code From ItemMast " & var_9C & " AND (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (pHappyHours)
loc_15D8A09:       var_F4 = "Select ItemCode From HappyHours Where ItemCode In (Select Code From ItemMast " & var_9C & " AND (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (pHappyHours)
loc_15D8B8F:       var_F0 = "Select DispCode,Code As ItemCode,Name As ItemName,ItemCatCode,ItemGroup From ItemMast " & var_9C & " And Code Not In (";

-- [VERIFIED-VB6] (pHappyHours)
loc_15D8C05:   var_EC = "Select DispCode,Code As ItemCode,Name As ItemName,ItemCatCode,ItemGroup From ItemMast " & var_9C;

-- [VERIFIED-VB6] (pHappyHours)
loc_15D8C71:   Call 0.Method_Cmd_Click0 (CInt(0), var_E4, var_EC, "Select ItemCode,Rate,AppDate From ItemRate Where RestCode='", var_D0);

-- [VERIFIED-VB6] (pHappyHours)
loc_110E94C:   var_114 = "Delete From HappyHours Where schemeCode = '" & Me.Fields.Item("Code").Value & "' AND   (LOGSITE_CODE='" & CVar(MemVar_1F81078);

-- [VERIFIED-VB6] (pHappyHours)
loc_110E9CB:   var_F4 = "Delete from HappyHoursHead WHERE schemeCode ='" & Me.Fields.Item("Code").Value & "' AND (LOGSITE_CODE='";

-- [VERIFIED-VB6] (pHappyHours)
loc_F12C5E: MemVar_1F810E4 = "SELECT HP.SchemeCode as SearchCode, Convert(Varchar(11),HP.AppDate,103) As StartDate, Convert(Varchar(11),HP.EndDate,103) As EndDate,  Depart.Name as DeptName, ItemCatMast.Name as CatName , ItemGrp.Name as GrpName, HP.DiscountType AS DiscountType , HP.DiscountValue AS DiscountValue  , HP.FromTime AS FromTime ,HP.ToTime AS ToTime FROM HappyHoursHead HP LEFT JOIN Depart on HP.RestCode = Depart.Code LEFT JOIN ItemCatMast on HP.ItemCat = ItemCatMast.Code LEFT JOIN ItemGrp on HP.ItemGroup = ItemGrp.Code ";

-- [VERIFIED-VB6] (pHappyHours)
loc_1233E9F: var_B0 = CVar("Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' Order By Name") 'String;

-- [VERIFIED-VB6] (pHappyHours)
loc_1233F2C: Me.Open CVar("Select Code,Name,RestCode From ItemCatMast where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')"), CVar(MemVar_1F81044), 2;

-- [VERIFIED-VB6] (pHappyHours)
loc_1233FA5: var_B0 = CVar("Select Code,Name,RestCode From ItemGrp where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (pHappyHours)
loc_123401A: var_98 = "SELECT HP.SchemeCode as Code,Depart.Code As DeptCode, Depart.Name as DeptName, ItemCatMast.Code as CatCode , ItemCatMast.Name as CatName , ItemGrp.Code as GrpCode, ItemGrp.Name as GrpName, HP.AppDate As AppDate, HP.EndDate As EndDate, HP.DiscountType AS DiscountType , HP.DiscountValue AS DiscountValue  , HP.FromTime AS FromTime ,HP.ToTime AS ToTime, HP.Site_Code , HP.LogSite_Code FROM HappyHoursHead HP LEFT JOIN Depart on HP.RestCode = Depart.Code LEFT JOIN ItemCatMast on HP.ItemCat = ItemCatMast.Code LEFT JOIN ItemGrp on HP.ItemGroup = ItemGrp.Code ";

-- [VERIFIED-VB6] (pHappyHours)
loc_15B3B08:   var_E4 = "Select IM.DispCode,IM.Code As ItemCode,IM.Name As ItemName, IM.ItemCatCode , IM.ItemGroup, HP.DiscountType,HP.DiscountValue,HP.Active From ItemMast IM Left outer join HappyHours HP on IM.Code = HP.ItemCode And IM.RestCode=HP.RestCode WHERE HP.SchemeCode='";

-- [VERIFIED-VB6] (pHappyHours)
loc_15B3BDE:   var_104 = "Select ItemCode,Rate,AppDate From ItemRate Where RestCode='" & Me.Fields.Item("DeptCode").Value & "' AND (LOGSITE_CODE='";

-- [VERIFIED-VB6] (pHappyHours)
loc_178978C:     var_C8 = "Select IsNull(Max(CAST(SUBSTRING(SchemeCode,3,4) AS INT)),1)+1 AS MyCode From HappyHours Where SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (pHappyHours)
loc_1789A71:     var_C8 = "Insert into HappyHoursHead(SchemeCode,ItemCat,ItemGroup,RestCode,AppDate,EndDate,FromTime,ToTime,U_Name,U_AE,Site_Code,LogSite_Code,DiscountType,DiscountValue,U_EntDt) " & " Values ('";

-- [VERIFIED-VB6] (pHappyHours)
loc_1789E12:       var_10C = "UPDATE HappyHoursHead SET ItemCat ='" & var_D0.Tag & "', ItemGroup='";

-- [VERIFIED-VB6] (pHappyHours)
loc_178A296:           var_110 = "Update HappyHours Set DiscountValue=" & CStr(var_48C) & ",DiscountType='";

-- [VERIFIED-VB6] (pHappyHours)
loc_178A615:           var_E8 = "Update HappyHours Set DiscountValue=" & CStr(var_48C);

-- [VERIFIED-VB6] (pHappyHours)
loc_178A8E5:       var_108 = CVar("Select count(*) From HappyHours Where ItemCode='" & CStr(var_B4) & "' And RestCode='" & var_E8 & "' And AppDate=") 'String;

-- [VERIFIED-VB6] (pHappyHours)
loc_178AC16:             var_114 = "Update HappyHours Set DiscountValue=" & CStr(var_118.Text) & ",DiscountType='" & var_10C;

-- [VERIFIED-VB6] (pHappyHours)
loc_178AF4F:             var_188 = CVar("Update HappyHours Set DiscountValue=" & CStr(var_12C.Text) & ", Active='") & var_108 & "', Site_Code='" & CVar(MemVar_1F81070);

-- [VERIFIED-VB6] (pHappyHours)
loc_178B257:         var_C8 = "Insert Into HappyHours(SchemeCode,ItemCode,RestCode,DiscountValue,AppDate,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE,DiscountType,FromTime,ToTime,Active)" & " Values('";


-- ### NewHappyHours  (22 statement(s))
-- [VERIFIED-VB6] (NewHappyHours)
loc_136A7C0:         var_94 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (NewHappyHours)
loc_12B7351:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (NewHappyHours)
loc_12B764E:       var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (NewHappyHours)
loc_11F9CDE: var_C0 = CVar("Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' Order By Name") 'String;

-- [VERIFIED-VB6] (NewHappyHours)
loc_11F9E09: var_B0 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (NewHappyHours)
loc_11F9E93: var_C0 = CVar("Select Code,Name From SchemeMast Where ISNULL(Active,'')='Y' And (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order By Name") 'String;

-- [VERIFIED-VB6] (NewHappyHours)
loc_11F9F93: var_B0 = "SELECT NH.Code, NH.RestCode, D.Name as RestName, NH.AppDate, NH.EndDate, NH.Active, NH.FromTime, Nh.ToTime, SM.Name As SchemeName, NH.SchemeCode, NH.Days As DayCode, NH.Site_Code,NH.LOGSITE_CODE  FROM (((SchemeItemDetail NH Left Join ItemMast IM on NH.ItemCode = IM.code And NH.RestCode = IM.Restcode) Left join Depart D On D.Code=NH.RestCode) Left Join SchemeMast SM On SM.Code=NH.SchemeCode) WHERE NH.SNo=1 And (NH.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (NewHappyHours)
loc_118E7F2: var_120 = "Delete From SchemeItemDetail Where Code = '" & Me.Fields.Item("Code").Value & "' AND (LOGSITE_CODE='" & CVar(MemVar_1F81078);

-- [VERIFIED-VB6] (NewHappyHours)
loc_118E871: var_100 = "Delete from FreeItemDetail WHERE Code ='" & Me.Fields.Item("Code").Value & "' AND (LOGSITE_CODE='";

-- [VERIFIED-VB6] (NewHappyHours)
loc_F20D62: var_10C = "SELECT SD.Code as SearchCode ,IM.Name As ItemName, D.Name as RestName ,Cast(SD.AppDate as Varchar(11)) as StartDate,Cast(SD.EndDate as Varchar(11)) as EndDate , SD.Active , SD.FromTime , SD.ToTime , SM.Name As SchemeName FROM (((SchemeItemDetail SD Left Join ItemMast IM on SD.ItemCode = IM.code And SD.RestCode = IM.RestCode) Left Join SchemeMast SM On SM.Code=SD.SchemeCode) Left Join Depart D On D.Code=SD.RestCode)  WHERE (SD.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (NewHappyHours)
loc_164D6CE:   var_FC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From SchemeItemDetail Where SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (NewHappyHours)
loc_164DA73:       var_FC = "Insert into SchemeItemDetail(Code,Sno,restCode,Appdate,EndDate,FromTime,ToTime,SchemeCode,ItemCode,Qty,Active, " & "Days,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('";

-- [VERIFIED-VB6] (NewHappyHours)
loc_164DDE8:       var_FC = "Insert Into FreeItemDetail (Code,Sno,restcode,schemecode,FreeItem,FreeQty,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_84;

-- [VERIFIED-VB6] (NewHappyHours)
loc_164DF29:   var_160 = "Delete From SchemeItemDetail Where Code = '" & global_84 & "' AND (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')";

-- [VERIFIED-VB6] (NewHappyHours)
loc_164DF74:   var_160 = "Delete from FreeItemDetail WHERE Code ='" & global_84 & "' AND (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ";

-- [VERIFIED-VB6] (NewHappyHours)
loc_164E21E:       var_FC = "Insert into SchemeItemDetail(Code,Sno,restCode,Appdate,EndDate,FromTime,ToTime,SchemeCode,ItemCode,Qty,Active, " & "Days,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('";

-- [VERIFIED-VB6] (NewHappyHours)
loc_164E593:       var_FC = "Insert Into FreeItemDetail (Code,Sno,restcode,schemecode,FreeItem,FreeQty,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_84;

-- [VERIFIED-VB6] (NewHappyHours)
loc_1295C1A: unk_4EE46F.Execute "Select * From SchemeMast Where Code='" & arg_C & "'", var_C4, -1;

-- [VERIFIED-VB6] (NewHappyHours)
loc_152DA1D:   var_C8 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (NewHappyHours)
loc_152DED6:   unk_4EE46F.Execute CStr("Select U_Name,U_AE,U_EntDt From SchemeItemDetail where Code='" & Me.Fields.Item("Code").Value & "'  "), var_124, -1;

-- [VERIFIED-VB6] (NewHappyHours)
loc_152E26A:   var_C8 = "Select Sno,ItemCode, IM.Name As ItemName, Qty  from SchemeItemDetail SD Join ItemMast IM On SD.ItemCode = IM.Code And SD.RestCode = IM.RestCode where (SD.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (NewHappyHours)
loc_152E541:   var_C8 = "Select Sno, FreeItem, IM.Name As ItemName, FreeQty  from FreeItemDetail FD Join ItemMast IM On  FD.FreeItem = IM.Code And FD.RestCode = IM.RestCode where (FD.LOGSITE_CODE='" & MemVar_1F81078;


-- ### frmComboMast  (37 statement(s))
-- [VERIFIED-VB6] (frmComboMast)
loc_11CF0D8:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (frmComboMast)
loc_11BAE2C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_94, var_98, "Select Max(DispCode) From ItemMast Where ItemType='Combo' And LogSite_Code='" & MemVar_1F81078 & "' And RestCode='", var_C4, -1);

-- [VERIFIED-VB6] (frmComboMast)
loc_11CA090:   unk_507FDE.Execute CStr("Delete From ItemMast Where Code='" & Me.Fields.Item("Code").Value & "'"), var_138, -1;

-- [VERIFIED-VB6] (frmComboMast)
loc_11CA102:   unk_507FDE.Execute CStr("Delete From ItemRate Where ItemCode='" & Me.Fields.Item("Code").Value & "'"), var_138, -1;

-- [VERIFIED-VB6] (frmComboMast)
loc_11CA166:   var_118 = "Delete From ComboPackDetail Where ComboCode='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (frmComboMast)
loc_F95AE4:   var_10C = "SELECT I.Code as SearchCode,I.Name,I.Unit,convert(varchar(8),I.Dispcode,103),convert(varchar(50),I.SaleRate,103),Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END FROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Where I.LOGSITE_CODE IN ('HO','" & MemVar_1F81078;

-- [VERIFIED-VB6] (frmComboMast)
loc_F95B09:   var_B8 = "SELECT I.Code as SearchCode,I.Name,I.Unit,IG.Name as ItemGrpName,IC.Name As ItemCategory,convert(varchar(8),I.Dispcode,103) as DispCode,Depart.Name as Restaurant,SaleRate=convert(varchar(50),R.Rate,103),Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,Active=I.ActiveYN,Kitchen=D.Name,Type=I.NType FROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code)  left join depart on I.restcode=depart.code left join depart D on I.Kitchen=D.code left join (Select itemcode,Rate from itemrate inner join (Select Max(ItemCode) as Itemcode1,Max(Appdate) as Appdate1 From ItemRate Where AppDate<=";

-- [VERIFIED-VB6] (frmComboMast)
loc_1658FCC:   var_A8 = "Select IsNull(Max(CAST(SUBSTRING(Q.Code,3,6) AS INT)),1)+1 AS MyCode From (Select Code,Site_Code From Item Union Select Code,Site_Code From Itemmast)Q WHERE Q.SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (frmComboMast)
loc_16590F3: Proc_6_6_F208E4(var_BC, MemVar_1F810EC, "Select Rate,Appdate From ItemRate Where AppDate<=", var_1B8, -1);

-- [VERIFIED-VB6] (frmComboMast)
loc_165944C:   var_A8 = "Insert Into ItemMast (Code,Name,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,DiscApp,RateEdit,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,SaleRate,SChrgApp,RateIncTax,LOGSITE_CODE,ActiveYN,NType,ItemType) " & " Values ('";

-- [VERIFIED-VB6] (frmComboMast)
loc_1659731:     var_A8 = "Insert Into Itemrate(ItemCode,RestCode,Rate,AppDate,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('";

-- [VERIFIED-VB6] (frmComboMast)
loc_1659A57:   var_1D0 = "UPDATE ItemMast SET Name='" & var_A8 & "',RestCode='" & var_F4 & "',DispCode=" & var_1D8.Text;

-- [VERIFIED-VB6] (frmComboMast)
loc_1659D18:   var_104 = CVar("Update ItemRate Set Rate=" & CStr(var_1C4.Tag) & ",Site_Code='" & MemVar_1F81070 & "',U_name='" & MemVar_1F810C8 & "',U_EntDt=") 'String;

-- [VERIFIED-VB6] (frmComboMast)
loc_1659DDE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0, var_A8, "Select Count(*) From UnitMast Where Name='", var_BC, -1, var_A4);

-- [VERIFIED-VB6] (frmComboMast)
loc_1659E6F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0, CVar("Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,lOGSITE_CODE)" & " Values('"));

-- [VERIFIED-VB6] (frmComboMast)
loc_1659F60: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A0, var_C0, "Delete from ComboPackDetail WHERE comboCode ='" & global_132 & "' AND restcode='");

-- [VERIFIED-VB6] (frmComboMast)
loc_1659F86: var_1CC = "Update ItemRate Set Rate=" & CStr(var_A0.Text.Tag) & ",Site_Code='" & "' AND  (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ";

-- [VERIFIED-VB6] (frmComboMast)
loc_165A0FA:     var_A8 = "Insert Into ComboPackDetail (ComboCode,restcode,itemcode,qty,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_132;

-- [VERIFIED-VB6] (frmComboMast)
loc_122B2C8: var_B0 = "SELECT Code,Name,ItemGroup,RestCode FROM ItemMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND ItemType<>'Store' And DispCode<>9999 ORDER BY Name";

-- [VERIFIED-VB6] (frmComboMast)
loc_122B348:   var_B0 = "SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  AND ((OutletYN='Y' and RestType='Banquet') OR RestType='Kitchen') ORDER BY Name";

-- [VERIFIED-VB6] (frmComboMast)
loc_122B3BD:   var_B0 = "SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name";

-- [VERIFIED-VB6] (frmComboMast)
loc_122B438: unk_507FDE.Execute "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_C0, -1;

-- [VERIFIED-VB6] (frmComboMast)
loc_122B49A: var_AC = "SELECT Distinct Convert(Varchar(11),AppDate,104) as Code,Convert(Varchar(11),AppDate,104) As Name,RestCode,AppDate FROM ItemRate WHERE (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (frmComboMast)
loc_122B513: var_B0 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND Type IN ('Finish') ORDER BY Name";

-- [VERIFIED-VB6] (frmComboMast)
loc_122B585: var_B0 = "SELECT Code,Name,RestCode FROM ItemCatMast where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  AND (cattype is not NULL and cattype<>'') ORDER BY Name";

-- [VERIFIED-VB6] (frmComboMast)
loc_122B5FE:   var_AC = "SELECT I.Code,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SchrgApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,I.TYPE,DispCode,I.RestCode,I.kitchen,K.Name as KitchenName,I.DiscApp,I.SITE_CODE,I.LOGSITE_CODE FROM ((((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code))Left Join Depart K on K.Code=I.Kitchen) Where (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (frmComboMast)
loc_122B65D:   var_AC = "SELECT I.Code,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,I.TYPE,DispCode,R.Name as RestName,I.RestCode,I.kitchen,K.Name as KitchenName,R.DiscApp,I.RateIncTax,I.SITE_CODE,I.LOGSITE_CODE,I.ActiveYN,I.NType FROM ((((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code))Left Join Depart R on R.Code=I.RestCode)Left Join Depart K on K.Code=I.Kitchen Where (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (frmComboMast)
loc_158DAC0:                     Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C, var_A8, "SELECT DispCode as COde,DispCode FROM ItemMast Where ItemType<>'Store' And DispCode<>9999 and RestCode ='");

-- [VERIFIED-VB6] (frmComboMast)
loc_1505978:                 var_E0 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where Type IN ('Finish','Semi Finish') AND RESTCODE='" & Me.Fields.Item("Code").Value;

-- [VERIFIED-VB6] (frmComboMast)
loc_1505A24:                 var_E0 = "SELECT Code,Name,RestCode FROM ItemCatMast where (cattype is not NULL and cattype<>'')  AND RESTCODE='" & Me.Fields.Item("Code").Value;

-- [VERIFIED-VB6] (frmComboMast)
loc_153B4E0:   Proc_6_6_F208E4(var_BC, MemVar_1F810EC, "Select Rate,Appdate From ItemRate Where AppDate<=");

-- [VERIFIED-VB6] (frmComboMast)
loc_153B5FE:   unk_507FDE.Execute CStr("Select U_Name,U_AE,U_EntDt From itemmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_13C, -1;

-- [VERIFIED-VB6] (frmComboMast)
loc_153B9B8:   var_C0 = "Select ComboCode, ItemCode , IM.Name As ItemName , Qty  from ComboPackDetail Inner Join ItemMast IM On  ComboPackDetail.ItemCode = IM.Code And ComboPackDetail.RestCode = IM.RestCode where (ComboPackDetail.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (frmComboMast)
loc_12E6BE3:   Call 0.Method_Proc_188_56_12E72140 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1);

-- [VERIFIED-VB6] (frmComboMast)
loc_12E6D61:     Call 0.Method_Proc_188_56_12E72140 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1);

-- [VERIFIED-VB6] (frmComboMast)
loc_12E6EAC:   Call 0.Method_Proc_188_56_12E72140 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (frmComboMast)
loc_12E703F:     Call 0.Method_Proc_188_56_12E72140 (CInt(&HA), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and DispCode=", var_A0, -1);


-- ### FrmNCType  (9 statement(s))
-- [VERIFIED-VB6] (FrmNCType)
loc_10BFA58: var_D8 = "SELECT NCType As Code,NCType As Name,NCPer as Per,SITE_CODE,LogSite_Code FROM NCTypeMast WHERE SITE_CODE='" & MemVar_1F81070 & "' And (LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmNCType)
loc_10BFAD5: var_C4 = "SELECT NCType As Code,NCType,NCPer as Per,SITE_CODE,LOGSITE_CODE,U_AE,U_EntDt,U_Name FROM NCTypeMast WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmNCType)
loc_118B0B4:   var_114 = "Delete From NCTypeMast Where NCType='" & Me.Fields.Item("NCType").Value & "' And Site_Code='";

-- [VERIFIED-VB6] (FrmNCType)
loc_F4A745: var_110 = "Select NCType As SEARCHCODE,NCType,NCPer FROM NCTypeMast WHERE SITE_CODE='" & MemVar_1F81070 & "' And LOGSITE_CODE IN ('HO','";

-- [VERIFIED-VB6] (FrmNCType)
loc_106AF25: unk_458181.Execute "Select Nctype,NCPer,U_Name,U_AE,U_Entdt FROM NCTypeMast ORDER BY NCType", var_BC, -1;

-- [VERIFIED-VB6] (FrmNCType)
loc_123D2DC:   var_9C = "Insert Into NCTypeMast(NCType,NCPer,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_60;

-- [VERIFIED-VB6] (FrmNCType)
loc_123D423:   var_188 = "UPDATE NCTypeMast SET NCType='" & Trim(CVar(var_94)) & "',NCPer=" & var_154 & ",LOGSITE_CODE='" & CVar(MemVar_1F81078) & "',U_name='";

-- [VERIFIED-VB6] (FrmNCType)
loc_1079A97:   Call 0.Method_Proc_297_30_1079C940 (CInt(1), var_A8, var_AC, "Select Count(*) From NCTypeMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and NCTYPE='", var_A0, -1);

-- [VERIFIED-VB6] (FrmNCType)
loc_1079BA9:   Call 0.Method_Proc_297_30_1079C940 (CInt(1), var_A8, var_AC, "Select Count(*) From NCTypeMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and (NCType='", var_A0, -1);


-- ### FrmGuestInfo
--     no SQL extracted from this object  [UNKNOWN]

-- ---------------------------------------------------------------------------
-- Banquet / Indoor Catering
-- ---------------------------------------------------------------------------

-- ### FrmEventMast  (11 statement(s))
-- [VERIFIED-VB6] (FrmEventMast)
loc_1074699: unk_457441.Execute "SELECT Code,Name FROM FunctionType where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1;

-- [VERIFIED-VB6] (FrmEventMast)
loc_107470B: unk_457441.Execute "SELECT * FROM FunctionType WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1;

-- [VERIFIED-VB6] (FrmEventMast)
loc_11925E8:   var_118 = "Delete From FunctionType Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmEventMast)
loc_F1BA21: MemVar_1F810E4 = "Select FunctionType.Code As SearchCode,FunctionType.Name,Status FROM FunctionType WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by FunctionType.Name";

-- [VERIFIED-VB6] (FrmEventMast)
loc_107C38F: unk_457441.Execute "select * FROM FunctionType WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1;

-- [VERIFIED-VB6] (FrmEventMast)
loc_12485BC:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From FunctionType Where Site_Code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmEventMast)
loc_1248703:   var_9C = "Insert Into FunctionType(Code,Name,Status,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_64;

-- [VERIFIED-VB6] (FrmEventMast)
loc_1248829:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE FunctionType SET Name='");

-- [VERIFIED-VB6] (FrmEventMast)
loc_12048CE:   unk_457441.Execute CStr("Select U_Name,U_AE,U_EntDt From FunctionType where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1;

-- [VERIFIED-VB6] (FrmEventMast)
loc_1080ACF:   Call 0.Method_Proc_115_32_1080CCC0 (CInt(0), var_A8, var_AC, "Select Count(*) From FunctionType Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmEventMast)
loc_1080BE1:   Call 0.Method_Proc_115_32_1080CCC0 (CInt(0), var_A8, var_AC, "Select Count(*) From FunctionType Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);


-- ### FrmVenueFeat  (11 statement(s))
-- [VERIFIED-VB6] (FrmVenueFeat)
loc_113AE86:   var_118 = "Delete From FeatureMast Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmVenueFeat)
loc_F1CC0A: var_10C = "Select FeatureMast.Code As SearchCode,FeatureMast.Name,FeatureMast.Status FROM FeatureMast Where LogSite_Code in ('" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmVenueFeat)
loc_107DE23: unk_44E53C.Execute "select * FROM FeatureMast Where LogSite_Code in ('" & MemVar_1F81078 & "','HO')order by Name", var_C4, -1;

-- [VERIFIED-VB6] (FrmVenueFeat)
loc_124201E:   unk_44E53C.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From FeatureMast", var_B0, -1;

-- [VERIFIED-VB6] (FrmVenueFeat)
loc_124214F:   var_9C = "Insert Into FeatureMast(Code,Name,Status,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_60;

-- [VERIFIED-VB6] (FrmVenueFeat)
loc_1242275:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE FeatureMast SET Name='");

-- [VERIFIED-VB6] (FrmVenueFeat)
loc_1075535: unk_44E53C.Execute "SELECT Code,Name FROM FeatureMast where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1;

-- [VERIFIED-VB6] (FrmVenueFeat)
loc_10755A7: unk_44E53C.Execute "SELECT * FROM FeatureMast where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1;

-- [VERIFIED-VB6] (FrmVenueFeat)
loc_12043B2:   unk_44E53C.Execute CStr("Select U_Name,U_AE,U_EntDt From FeatureMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1;

-- [VERIFIED-VB6] (FrmVenueFeat)
loc_107E75F:   Call 0.Method_Proc_238_32_107E95C0 (CInt(0), var_A8, var_AC, "Select Count(*) From FeatureMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmVenueFeat)
loc_107E871:   Call 0.Method_Proc_238_32_107E95C0 (CInt(0), var_A8, var_AC, "Select Count(*) From FeatureMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);


-- ### FrmVenueMast  (33 statement(s))
-- [VERIFIED-VB6] (FrmVenueMast)
loc_107871C: var_CC = "Select Code,Name From VenueMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and DepartCode ='" & global_52;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_10787AC: var_C8 = "Select V.*,V.Code as SearchCode From VenueMast V WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and DepartCode ='";

-- [VERIFIED-VB6] (FrmVenueMast)
loc_12D9D7E:   unk_4B7A94.Execute CStr("Delete From VenueMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_12D9EDF:   unk_4B7A94.Execute CStr("Delete From VenueFeatures Where VenueCode='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_12DA032:   var_118 = "Delete From GodownMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'";

-- [VERIFIED-VB6] (FrmVenueMast)
loc_EE10BE: var_10C = "Select Code as SearchCode,Name As VenueName,ShortName,Capacity,cast(Seating as Varchar(15)) as Seating,cast(Floating as varchar(15)) as Floating,Dimension,Status FROM VenueMast WHERE (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_1080D63: unk_4B7A94.Execute "select * FROM VenueMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_15AFC30:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From VenueMast where Site_Code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_15AFD61: unk_4B7A94.Execute "Delete From VenueMast Where Code='" & global_56 & "'", var_B0, -1;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_15AFD9A: unk_4B7A94.Execute "Delete From VenueFeatures Where VenueCode='" & global_56 & "'", var_B0, -1;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_15AFDD3: unk_4B7A94.Execute "Delete From GodownMast Where Code='" & global_56 & "'", var_B0, -1;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_15AFEEB: var_B4 = "Insert Into VenueMast(Code,Name,ShortName," & " Status,Dimension,DepartCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) " & " Values('";

-- [VERIFIED-VB6] (FrmVenueMast)
loc_15B0079: unk_4B7A94.Execute "SELECT Count(*) FROM VenueCapacity WHERE VenueCode='" & global_56 & "'", var_E4, -1;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_15B00F1:   unk_4B7A94.Execute "Delete From VenueCapacity Where VenueCode='" & global_56 & "'", var_B0, -1;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_15B0230:       var_B4 = "Insert Into VenueCapacity(VenueCode,Capacity,Seating,Floating,Site_Code,U_EntDt,U_AE,logSite_Code) " & " Values('" & global_56;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_15B0403:       var_330 = "SELECT Count(*) FROM VenueCapacity WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "' AND " & "Capacity='" & CStr(var_E4);

-- [VERIFIED-VB6] (FrmVenueMast)
loc_15B0525:         var_B4 = "Insert Into VenueCapacity(VenueCode,Capacity,Seating,Floating,Site_Code,U_EntDt,U_AE,logSite_Code) " & " Values('" & global_56;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_15B06D4:         var_430 = "UPDATE VenueCapacity SET " & "Seating=" & CStr(Val(CStr(Me.FGrid2.TextMatrix)))) & ",Site_Code='" & MemVar_1F81070 & "',Floating=";

-- [VERIFIED-VB6] (FrmVenueMast)
loc_15B07FA:       var_430 = "Delete From VenueCapacity " & " WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "'" & " AND " & "Capacity='" & CStr(var_94.TextMatrix));

-- [VERIFIED-VB6] (FrmVenueMast)
loc_15B08F3: var_B4 = "Insert Into GodownMast(Code,Name,ShortName,DepartCode,SysYn,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) " & " Values('" & global_56;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_15B0B25:     var_B4 = "Insert Into VenueFeatures(VenueCode,Feature,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) " & " Values('" & global_56;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_128FC6F:     var_138 = CVar("SELECT PicPath FROM VenueCapacity WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "' AND Capacity='" & CStr(var_118) & "'") 'String;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_128FE9F:   var_138 = CVar("SELECT PicPath FROM VenueCapacity WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "' AND Capacity='" & CStr(var_118) & "'") 'String;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_11F4479: var_12C = CVar("SELECT * FROM VenueCapacity WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "' AND Capacity='" & CStr(var_10C) & "'") 'String;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_1206261:     Call 0.Method_Proc_237_44_12066900 (CInt(0), var_A8, var_AC, "Select Count(*) From VenueMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmVenueMast)
loc_1206370:     Call 0.Method_Proc_237_44_12066900 (CInt(1), var_A8, var_AC, "Select Count(*) From VenueMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and shortName='", var_A0, -1);

-- [VERIFIED-VB6] (FrmVenueMast)
loc_1206482:     Call 0.Method_Proc_237_44_12066900 (CInt(0), var_A8, var_AC, "Select Count(*) From VenueMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmVenueMast)
loc_12065A6:     Call 0.Method_Proc_237_44_12066900 (CInt(1), var_A8, var_AC, "Select Count(*) From VenueMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and shortName='", var_A0, -1);

-- [VERIFIED-VB6] (FrmVenueMast)
loc_14EF51D:   unk_4B7A94.Execute CStr("SELECT * FROM VenueMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_14EFC7E:   var_104 = "Select F.Name As FeatureName,V.Feature From VenueFeatures V Inner Join FeatureMast F ON V.Feature=F.Code Where V.LogSite_Code in ('" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_14EFEB2:   unk_4B7A94.Execute CStr("Select * FROM VenueCapacity Where VenueCode='" & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_117A99C: unk_4B7A94.Execute "SELECT * FROM FEATUREMAST Where Status='Active' and LogSite_Code IN ('" & MemVar_1F81078 & "','HO') ORDER BY NAME", var_C8, -1;

-- [VERIFIED-VB6] (FrmVenueMast)
loc_117ABAF: unk_4B7A94.Execute "SELECT DISTINCT([Capacity]) FROM VenueCapacity", var_C8, -1;


-- ### HallMenuCatalog  (34 statement(s))
-- [VERIFIED-VB6] (HallMenuCatalog)
loc_12B9126:       Call 0.Method_Txt_Validate0 (CInt(0), var_9C, var_A0, "SELECT count(*) FROM CatalogMast Where Name='", var_C8, -1, var_B4);

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_12B9221:       Call 0.Method_Txt_Validate0 (CInt(0), var_9C, var_A0, "SELECT Count(*) FROM CatalogMast Where Name='", var_C8, -1, var_B4);

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_F9CDBE: unk_4CFA0A.Execute "Select * from Enviro where LogSite_Code='" & MemVar_1F81078 & "'", var_B8, -1;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_113803D:   var_118 = "Delete From CatalogMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'";

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_F8BB9F: unk_4CFA0A.Execute "Select * from Enviro where LogSite_Code='" & MemVar_1F81078 & "'", var_AC, -1;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_F8BC24:     MemVar_1F810E4 = "Select Distinct CA.Code As SearchCode,CA.Name As CatalogName FROM CatalogMast CA WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND CA.Category ='Y' Order by CA.Name";

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_F8BC3C:     MemVar_1F810E4 = "Select Distinct CA.Code As SearchCode,CA.Name As CatalogName FROM CatalogMast CA WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND CA.Category <>'Y' OR IsNull(CA.Category) Order by CA.Name";

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_14AA802:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_B0, var_B4, "SELECT CatalogMast.Name as CatlogName, ItemGrp.Name as ItemGroup, ItemMast.Name as ItemName,CatalogMast.Category AS Category FROM (CatalogMast INNER JOIN ItemGrp ON CatalogMast.ItemCatCode = ItemGrp.Code) iNNER JOIN ItemMast ON CatalogMast.ItemCode = ItemMast.Code where catalogmast.Code='");

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_14AA878:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_B0, var_B4, "SELECT CatalogMast.Name as CatlogName, ItemGrp.Name as ItemGroup, ItemMast.Name as ItemName,CatalogMast.Category AS Category FROM (CatalogMast INNER JOIN ItemGrp ON CatalogMast.ItemCatCode = ItemGrp.Code) iNNER JOIN ItemMast ON CatalogMast.ItemCode = ItemMast.Code where catalogmast.Code='");

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_14AA91F:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_B0, var_B4, "SELECT CatalogMast.Name as CatlogName, ItemGrp.Name as ItemGroup, ItemMast.Name as ItemName,CatalogMast.Category AS Category, GroupCatalog.Limit AS MaxLimit,ItemMast.Specification AS Specification FROM ((CatalogMast INNER JOIN ItemGrp ON CatalogMast.ItemCatCode = ItemGrp.Code) INNER JOIN GroupCatalog ON CatalogMast.Code=GroupCatalog.CatCode AND CatalogMast.ItemCatCode=GroupCatalog.ItemCatCode) INNER JOIN ItemMast ON CatalogMast.ItemCode = ItemMast.Code where catalogmast.Code='");

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_14AAB74:         var_104.Update var_CC, var_F0;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_14AACC5:       var_104.Update var_CC, var_F0;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_14AAF04:             var_104.Update var_CC, var_F0;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_14AB044:           var_104.Update var_CC, var_F0;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_1524880:     var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From CatalogMast wHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_15249FD:   unk_4CFA0A.Execute "Delete From CatalogMast Where Code='" & global_84 & "'", var_A4, -1;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_1524A2D:   var_B4 = "Delete From GroupCatalog Where CatCode='" & global_84 & "'";

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_1524BA3:       var_AC = "Insert Into CatalogMast(Code,Name,RestCode,ItemCatCode,ItemCode,Site_Code,U_Name,U_EntDt,U_AE,Category,Logsite_Code) Values('" & global_84;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_1524F4F:       var_AC = "Insert Into GroupCatalog(CatCode,ItemcatCode,Limit,U_Name,Site_Code,U_EntDt,U_AE,LogSite_Code) Values('" & global_84;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_1525195:     var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From CatalogMast WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_1525309:   var_B4 = "Delete From CatalogMast Where Code='" & global_84 & "'";

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_152547F:       var_AC = "Insert Into CatalogMast(Code,Name,RestCode,ItemCatCode,ItemCode,Site_Code,U_Name,U_EntDt,U_AE,lOGsITE_cODE) Values('" & global_84;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_12847BF: unk_4CFA0A.Execute "Select * from Enviro where LOGSite_Code='" & MemVar_1F81078 & "'", var_C0, -1;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_1284872:     var_DC = "SELECT DISTINCT CA.Code As SearchCode,lOGSITE_CODE,SITE_CODE FROM CatalogMast CA WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND CA.Category ='Y' ORDER BY Code";

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_12848C6:     var_F0 = "SELECT distinct Code,Name FROM CatalogMast WHERE Logsite_Code in ('" & MemVar_1F81078 & "','HO') AND RestCode='" & global_56;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_1284945:     var_DC = "SELECT DISTINCT CA.Code As SearchCode,LOGSITE_CODE,SITE_CODE FROM CatalogMast CA WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND RestCode='";

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_12849AE:     var_F0 = "SELECT distinct Code,Name FROM CatalogMast WHERE Logsite_Code in ('" & MemVar_1F81078 & "','HO') AND RestCode='" & global_56;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_1284AB2: var_DC = "SELECT Distinct Code,Name From ItemGrp where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND Type= 'Finish' and RestCode='";

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_1139A0F: var_90 = "SELECT ItemMast.Code as ItemCode, ItemMast.Name as ItemName, ItemGrp.Name as ItemGrpName,ItemGrp.Code as ItemGrpCode FROM ItemMast LEFT JOIN ItemGrp ON ItemGrp.Code = ItemMast.ItemGroup WHERE ItemMast.RestCode='" & global_56;

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_13D7499:   var_CC = "SELECT CA.*, CA.U_AE,CA.U_Name,CA.U_EntDt,I.Name AS ItemName, IC.Name AS ItemCatName, Depart.Name as RestName,CA.RestCode as RestCode, CA.Category AS Category FROM ((CatalogMast AS CA LEFT JOIN ItemMast AS I ON CA.ItemCode = I.Code) LEFT JOIN ItemGrp AS IC ON I.ItemGroup = IC.Code) LEFT JOIN Depart ON CA.RestCode = Depart.Code Where CA.Code='";

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_13D77AA:       var_CC = "SELECT IG.Code AS Code, IG.Name AS GroupName, GC.Limit AS Limit FROM ItemGrp IG INNER JOIN GroupCatalog  GC ON IG.Code = GC.ItemCatCode WHERE GC.CatCode='";

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_1058D21:   Call 0.Method_Proc_121_66_1058F080 (CInt(0), var_A8, var_A4, "Select Count(*) From CatalogMast Where Name='", var_A0, -1);

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_1058E21:   Call 0.Method_Proc_121_66_1058F080 (CInt(0), var_A8, var_A4, "Select Count(*) From CatalogMast Where Name='", var_A0, -1);

-- [VERIFIED-VB6] (HallMenuCatalog)
loc_119CBD2:   var_C8 = "SELECT ItemMast.Code as ItemCode, ItemMast.Name as ItemName, ItemGrp.Name as ItemGrpName,ItemGrp.Code as ItemGrpCode FROM ItemMast LEFT JOIN ItemGrp ON ItemGrp.Code = ItemMast.ItemGroup WHERE ItemMast.RestCode='" & global_56;


-- ### HallSundry  (9 statement(s))
-- [VERIFIED-VB6] (HallSundry)
loc_EAAF22: MemVar_1F810E4 = "Select (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,VT.Description,Convert(Varchar(11),SP.AppDate,103) As AppDate,SP.SNo,SM.Name As SundryName,SP.DispName,SP.CalcFormula,RM.Name As Revenue From (((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) where SP.V_Type='IDC' Order by SP.AppDate,VT.Description";

-- [VERIFIED-VB6] (HallSundry)
loc_14FFE14:     var_9C = "Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName," & "CalcFormula,PerOrAmt,RoundOff,SValue,Limit,";

-- [VERIFIED-VB6] (HallSundry)
loc_1168C3F: var_C0 = CVar("Select Code,Name,Nature,SysYN From SundryMast Where LogSite_Code in ('" & MemVar_1F81078 & "','HO') Order By Name") 'String;

-- [VERIFIED-VB6] (HallSundry)
loc_1168CC2: var_C0 = CVar("Select Code,Name,DeskCode,Type From RevMast Where LogSite_Code in ('" & MemVar_1F81078 & "','HO') And (FlagType ='POS' or FlagType  Is Null or FlagType='')  Order By Name") 'String;

-- [VERIFIED-VB6] (HallSundry)
loc_1168D2B: var_CC = "Select V_Type From Voucher_Type Where LogSite_Code in ('" & MemVar_1F81078 & "','HO') And RestCode='" & global_60 & "' And NCat IN ('BBILL')";

-- [VERIFIED-VB6] (HallSundry)
loc_1168DF3: var_B0 = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode From SundryType SP Where SP.LogSite_Code in ('" & MemVar_1F81078;

-- [VERIFIED-VB6] (HallSundry)
loc_F89B98: var_94 = "Select Count(*) From SundryType Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and (V_Type='" & global_92;

-- [VERIFIED-VB6] (HallSundry)
loc_143954E:   var_94 = "Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName From (((SundryType SP Inner Join Voucher_type VT On (SP.V_Type=VT.V_Type And SP.LogSite_Code=VT.LogSite_Code)) Inner Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Where SP.Logsite_Code='" & MemVar_1F81078;

-- [VERIFIED-VB6] (HallSundry)
loc_12C74BA: var_B8 = "SELECT SF.*,SM.Name as SundryName" & " FROM SundryTypeFix SF Inner JOIN SundryMast SM ON SF.SundryCode = SM.Code" & " Where SF.LogSite_Code='";


-- ### HallMenuItemEntry
--     no SQL extracted from this object  [UNKNOWN]

-- ### HallItemGroupMast
--     no SQL extracted from this object  [UNKNOWN]

-- ### FrmHallItemCatMast
--     no SQL extracted from this object  [UNKNOWN]

-- ---------------------------------------------------------------------------
-- Members Mgmt Setup
-- ---------------------------------------------------------------------------

-- ### MemCatMast  (11 statement(s))
-- [VERIFIED-VB6] (MemCatMast)
loc_10AFAFC: var_D8 = "SELECT MemCatMast.Code, MemCatMast.Name FROM MemCatMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY MemCatMast.Name";

-- [VERIFIED-VB6] (MemCatMast)
loc_10AFB77: unk_4677D0.Execute "SELECT * FROM MEmCatMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D4, -1;

-- [VERIFIED-VB6] (MemCatMast)
loc_1182BE7: var_E0 = "SELECT Count(*) FROM SubGroup WHERE CompanyType='" & Me.Fields.Item("Code").Value;

-- [VERIFIED-VB6] (MemCatMast)
loc_1182D17:     var_100 = "Delete From MemCatMast Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (MemCatMast)
loc_F4B3C2: var_10C = "SELECT  Code as SearchCode, Name , Subscription, Surcharge , FBilling,Status FROM MemCatMast  Where Site_Code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (MemCatMast)
loc_107FBAB: unk_4677D0.Execute "select * FROM MemCatMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1;

-- [VERIFIED-VB6] (MemCatMast)
loc_1338788:   var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From MemCatMast WHERE  SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (MemCatMast)
loc_13388B0: var_C4 = "Delete From MemCatMast Where Code='" & global_72 & "'";

-- [VERIFIED-VB6] (MemCatMast)
loc_1338AEE: var_AC = "Insert Into MemCatMast(Code,Name,ShortName,Subscription,Surcharge,Corporate,ChildAgeLmt,FBilling,Status,Site_code,U_Name,U_EntDt,U_AE, LOGSITE_CODE) Values ('" & global_72;

-- [VERIFIED-VB6] (MemCatMast)
loc_10F05F7:   Call 0.Method_Proc_264_29_10F08640 (CInt(0), var_A8, var_AC, "Select Count(*) From MemCatMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and code='", var_A0, -1);

-- [VERIFIED-VB6] (MemCatMast)
loc_10F0742:   Call 0.Method_Proc_264_29_10F08640 (CInt(0), var_A8, var_AC, "Select Count(*) From MemCatMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and code='", var_A0, -1);


-- ### MembershipMast  (157 statement(s))
-- [VERIFIED-VB6] (MembershipMast)
loc_107B832: unk_5AD372.Execute "Select IsNull(Max(CAST(SUBSTRING(SubCode,3,6) AS INT)),0)+1 AS MyCode From SubGroup Where IsNumeric(substring(SubCode,3,6))=1", var_A4, -1;

-- [VERIFIED-VB6] (MembershipMast)
loc_10B88D6:     Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(0), var_118, var_114, "Delete From MemAddRWA where SubCode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_10B8975:     Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(0), var_118, var_114, "Delete From MemAddRWA where SubCode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1023365:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_90, var_94, "SELECT COUNT(*) From Ledger Where SubCode= '", var_BC, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_116D207:   Proc_6_16_EA44E0(var_B8, MemVar_1F81078, "Select DefCompGroup from enviro WHERE LOGSITE_CODE=", var_F8, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_116D28B:     Proc_6_16_EA44E0(var_B8, MemVar_1F81078, "Select DefCompGroup from enviro WHERE LOGSITE_CODE=", var_F8, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_116D333:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98, var_90, "Select GroupName From Acgroup Where GroupCode='", var_B8, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_F1ED5A: var_10C = "Select SubCode As SearchCode,AppNo As ApplicationNo,Name,CardNo,G.GroupName As UnderGroup,ConPrefix,RTrim(ConPerson+' '+ConPersonMName+' '+ConPersonLName) ConPerson,FatherName,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,a.areaname,Phone,Mobile,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,GSTIN,Case ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' End As Active,CreditLimit,CreditDays,Remark From (((SubGroup S Left Join AcGroup G on (S.GroupCode=G.GroupCode)) Left Join City C on (S.CityCode=C.CityCode)) Left Join AreaMast a on (s.areacode=a.areacode)) Where S.Companytype in (SELECT Code FROM MemCatMast WHERE Corporate='N') AND  (S.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (MembershipMast)
loc_1506363:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_A0, "Select Count(*) from memAddRWA where Name='Residential Address'  And Subcode='", var_104, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_150646F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_A0, "Select Count(*) from memAddRWA where Name='Residential Address'  And Subcode='", var_104, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_150656A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1506677:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1506BEA:       var_190 = "Select Count(*) From MemberFamily Where LogSite_Code='" & MemVar_1F81078 & "' And Relationship='" & CStr(var_B0) & "' And SubCode='";

-- [VERIFIED-VB6] (MembershipMast)
loc_1361F21: unk_5AD372.Execute "Delete From MemAddRWA where  Mark='*'", var_B4, -1;

-- [VERIFIED-VB6] (MembershipMast)
loc_13621C2: var_B4 = CVar("Select SubCode As Code,Name,NameHelp,GroupCode From SubGroup WHERE NATURE='Customer' and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String;

-- [VERIFIED-VB6] (MembershipMast)
loc_136223E: var_C8 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup Where NATURE='Customer' AND (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (MembershipMast)
loc_13622C8: var_B4 = CVar("Select SubCode As Code,Name From SubGroup Where CompanyType in ('Mesh') And ActiveYN=1 And (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') order by Name") 'String;

-- [VERIFIED-VB6] (MembershipMast)
loc_1362344: var_C8 = "Select CityCode As Code,CityName As Name,CityHelp,S.Name As SName,S.Code As SCode,C.Name As CName,C.Code As CCode From ((City Inner Join State S On S.Code=City.State) Inner Join Country C On C.Code=City.Country)  WHERE (City.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (MembershipMast)
loc_13623CE: var_B4 = CVar("Select  Code, Name, Corporate From MemCatMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String;

-- [VERIFIED-VB6] (MembershipMast)
loc_136244A: var_C8 = "Select M.SubCode as PMemCode,M.Name,M.CardNo,M.ConPrefix,M.Gender,M.Mobile,M.Email,M.Desig,M.PicPath,M.SigPath,M.Label From MemberFamily M Inner Join SubGroup S On M.SubCode=S.SubCode And M. RelationShip='Member' Where M.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (MembershipMast)
loc_13624A2: var_C8 = "SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (MembershipMast)
loc_1362524: unk_5AD334.Execute "Select * From MemEnviro Where LogSite_Code='" & MemVar_1F81078 & "'", var_B4, -1;

-- [VERIFIED-VB6] (MembershipMast)
loc_1362612: var_C8 = "Select SubCode As SearchCode,SubCode,Site_Code,Name From SubGroup Where CompanyType in (SELECT Code FROM MemCatMast WHERE Corporate='N') and (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (MembershipMast)
loc_FE0D24:   Call 0.Method_Form_Unload0 (CInt(0), var_A0, var_9C, "Delete From MemAddRWA where SubCode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_FE0DC3:   Call 0.Method_Form_Unload0 (CInt(0), var_A0, var_9C, "Delete From MemAddRWA where SubCode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1116264:       var_170 = "Select Count(*) From MemberFamily Where HW_ID<>'' And Subcode='" & CStr(Me.FAGrid.TextMatrix)) & "' And SNo=" & CStr(Val(CStr(var_110)));

-- [VERIFIED-VB6] (MembershipMast)
loc_1A88AB2:   var_FC = "Select MemAddRWA.*,City.CityName As CityN,State.Name As StateN,Country.Name As CountryN From MemAddRWA Left join City On MemAddRWA.City=City.CityCode Left Join State On MemAddRWA.State=State.Code Left Join Country On MemAddRWA.Country=Country.Code where MemAddRWA.Subcode='";

-- [VERIFIED-VB6] (MembershipMast)
loc_1A88B5A:   var_FC = "Select MemAddRWA.*,City.CityName As CityN,State.Name As StateN,Country.Name As CountryN From MemAddRWA Left join City On MemAddRWA.City=City.CityCode Left Join State On MemAddRWA.State=State.Code Left Join Country On MemAddRWA.Country=Country.Code where MemAddRWA.Subcode='";

-- [VERIFIED-VB6] (MembershipMast)
loc_1A88C19:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A88C81:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A88CE9:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A88D51:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, "Select MemAddRWA.*,City.CityName As CityN,State.Name As StateN,Country.Name As CountryN From MemAddRWA Left join City On MemAddRWA.City=City.CityCode Left Join State On MemAddRWA.State=State.Code Left Join Country On MemAddRWA.Country=Country.Code where MemAddRWA.subcode ='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A8B522:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, "Select CorresYN,Name from memAddRWA where SubCode='", var_150);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A8B65F:                 Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C, "Update MemAddRWA set CorresYN='N' Where Name ='" & var_DC.Value & "' And SubCode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A8B77F:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, "Select CorresYN,Name from MemAddRWA where subcode ='", var_374);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A8BA4A:                 Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C, "Update MemAddRWA set CorresYN='N' Where Name ='" & var_B0.Fields.Item("Name").Value & "' And SubCode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A8BB8F:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_154, "Delete From MemAddRWA Where Name ='" & Trim(CVar(Me.LblAddType.Caption)) & "' And SubCode='", var_1B4, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A8BDDF:           var_130 = "Insert Into MemAddRWA(SubCode,Name,SNo,Add1,Add2,Add3,PinCode,City,State,Country,PAN,Phone,Mobile,Mobile1,Email, " & "CorresYN,Mark,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE) Values ('";

-- [VERIFIED-VB6] (MembershipMast)
loc_1A8C09F:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, "Select Max(SNo) As SNo From MemAddRWA Where Name='" & Trim(CVar(Me.LblAddType)) & "' And Subcode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A8C321:             var_130 = "Insert Into MemAddRWA(SubCode,Name,SNo,Add1,Add2,Add3,PinCode,City,State,Country,PAN,Phone,Mobile,Mobile1,Email, " & "CorresYN,Mark,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE) Values ('";

-- [VERIFIED-VB6] (MembershipMast)
loc_18F9CEF:     var_A0 = "CompanyType in (SELECT Code FROM MemCatMast WHERE Corporate='N')";

-- [VERIFIED-VB6] (MembershipMast)
loc_18FA0AF:     var_CC = "Select MF.Subcode,MF.SNo,MF.RelationShip,MF.ConPrefix+' '+MF.Name As Name,MF.Gender,MF.MaritalStatus,MF.DOB As Birthday,MF.POB,MF.WedDate As Anniversary," & "MF.Phone,MF.Mobile,MF.Mobile1,MF.Fax,MF.EMail,MF.Nationality,MF.Religion,MF.BloodGroup,MF.ProOcc,MF.EdQuali,MF.TBusiness,MF.TurnOver,MF.Desig,MF.PostedAt,MF.Passport,MF.PAN,";

-- [VERIFIED-VB6] (MembershipMast)
loc_18FA0D2:     var_1B0 = var_1AC & "Left Join (Select RWA.Subcode,RWA.CorresYN,RWA.Name AddType,Add1,Add2,Add3,C.CityName As City,ST.Name As State,CO.Name As Country,PinCode As PinCode ";

-- [VERIFIED-VB6] (MembershipMast)
loc_18FA0E0:     var_1B8 = var_1B4 & "Left Join (SELECT SUBCODE,ABS(ISNULL(SUM(CURR_BAL),0)) AS CurrBal,CASE WHEN ISNULL(SUM(CURR_BAL),0)>0 THEN 'Cr' WHEN ISNULL(SUM(CURR_BAL),0)<0 THEN 'Dr' Else '' END CurBalType ";

-- [VERIFIED-VB6] (MembershipMast)
loc_18FBBFA:       var_1D0.Update var_C8, var_150;

-- [VERIFIED-VB6] (MembershipMast)
loc_18FC00B:     var_CC = "Select MF.ConPrefix+' '+MF.Name As Name, S.Name As AcName,MF.CardNo, MCat.Name as CompanyType,MF.DOB As Birthday,MF.WedDate As Anniversary,S.Phone,S.Mobile,(Substring(LTrim(IsNull(S.AddName,'')),1,4)+'.- '+IsNull(S.Add1,'')+IsNull(S.Add2,'')+IsNull(S.Add3,'')) as Address,C.CityName As City,CO.Name As Country,ST.Name As State,S.Pin As PinCode, S.EMail,IsNull((Select Top 1 ConPrefix+Name from MemberFamily Where RelationShip='Father' And SubCode=S.SubCode),'') Father,IsNull((Select Top 1 ConPrefix+Name from MemberFamily Where RelationShip='Mother' And SubCode=S.SubCode),'') Mother,SCR.CurrBal,SCR.CurBalType,MF.SNo,MF.PicPath,S.GSTIN " & "From (((((Subgroup S Inner Join MemberFamily MF On S.SubCode=MF.Subcode)Inner Join MemCatMast Mcat On S.CompanyType=Mcat.code) Left Join City C On S.CityCode=C.CityCode) Left Join Country CO On C.Country=CO.Code) Left Join State ST On C.State=ST.Code) Left Join (SELECT SUBCODE,ABS(ISNULL(SUM(CURR_BAL),0)) AS CurrBal,CASE WHEN ISNULL(SUM(CURR_BAL),0)>0 THEN 'Cr' WHEN ISNULL(SUM(CURR_BAL),0)<0 THEN 'Dr' Else '' END CurBalType FROM SUBGROUPCURRBAL GROUP BY SUBCODE) SCR On SCR.SubCode=S.SubCode where ActiveYN=1 And ";

-- [VERIFIED-VB6] (MembershipMast)
loc_18FC65C:       MemVar_1F810E4 = "Select S.Mobile,S.SUBCODE,(S.ConPrefix+S.ConPerson + Case When IsNull(S.ConPersonMName,'')<>'' Then ' '+S.ConPersonMName Else '' End + Case When IsNull(S.ConPersonLName,'')<>'' Then ' '+S.ConPersonLName Else '' End) As Name,Mcat.Name AS CompanyType,MF.DOB As Birthday,MF.WedDate As AnniversaryDay,S.Phone,S.Mobile,S.AddName,(S.Add1+S.Add2+S.Add3) as Address,S.EMail From ((Subgroup S Left Join MemberFamily MF On S.SubCode=MF.Subcode And )Inner Join MemCat MCat On S.companytype=Mcat.Code)  where ActiveYN=1 AND COMPANYTYPE IN (SELECT Code FROM MemCatMast WHERE Corporate='N' ) Order by S.ConPerson";

-- [VERIFIED-VB6] (MembershipMast)
loc_156EE75:       Call 0.Method_Txt_Validate0 (Cancel, var_A4, "Select Count(*) from SubGroup where AppNo='", var_134, -1, var_A8);

-- [VERIFIED-VB6] (MembershipMast)
loc_156F03E:           var_D4 = "Select ID,GroupCode,GroupName,Nature,AliasYN,GroupNature From AcGroup Where GroupCode='" & Me.Fields.Item("Code").Value;

-- [VERIFIED-VB6] (MembershipMast)
loc_153FF78: unk_5AD334.Execute "Select * From MemEnviro Where LogSite_Code='" & MemVar_1F81078 & "'", var_D4, -1;

-- [VERIFIED-VB6] (MembershipMast)
loc_154011E:       var_F0 = "Select ConPrefix + ' ' + Name As mName,AllowCredit From SubGroup Where Subcode='";

-- [VERIFIED-VB6] (MembershipMast)
loc_1540210:         var_F0 = "Select ConPrefix + ' ' + Name As mName,CardNo,TinNo From MemSpouseGen Where Subcode='";

-- [VERIFIED-VB6] (MembershipMast)
loc_154027E:           var_F0 = "Select ConPrefix + ' ' + Name As mName,CardNo,TinNo From MemChildrenGenPic Where Subcode='";

-- [VERIFIED-VB6] (MembershipMast)
loc_15402F8:             var_F0 = "Select ConPrefix + ' ' + Name As mName,CardNo,TinNo From memFamily Where Subcode='";

-- [VERIFIED-VB6] (MembershipMast)
loc_1540367:             var_F0 = "Select ConPrefix + ' ' + Name As mName,CardNo,TinNo From SubGroup Where Subcode='";

-- [VERIFIED-VB6] (MembershipMast)
loc_1540935:         var_120 = "Select Validateupto From SubGroup Where validateupto Is Not Null And Subcode='" & Left(var_9C, 8) & "'";

-- [VERIFIED-VB6] (MembershipMast)
loc_1540A77:       unk_5AD334.Execute CStr("Select * From SmartCardRegistration Where code='" & Left(var_9C, 8) & "'"), var_140, -1;

-- [VERIFIED-VB6] (MembershipMast)
loc_100ECCE: var_88 = "Select '' as [All],Name As MemberType,Code From MemCatMast Where (Corporate='N') AND Logsite_Code='" & MemVar_1F81078 & "' Order By Name";

-- [VERIFIED-VB6] (MembershipMast)
loc_10EF49F:   Call 0.Method_Proc_265_97_10EF70C0 (CInt(1), var_A8, var_AC, "Select Count(*) From Subgroup  Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and subcode='", var_A0, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_10EF5EA:   Call 0.Method_Proc_265_97_10EF70C0 (CInt(1), var_A8, var_AC, "Select Count(*) From SubGroup Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and subcode='", var_A0, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_107A373:   Call 0.Method_Proc_265_98_107A5700 (CInt(6), var_A8, var_AC, "Select Count(*) From Subgroup  Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and CardNo='", var_A0, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_107A485:   Call 0.Method_Proc_265_98_107A5700 (CInt(6), var_A8, var_AC, "Select Count(*) From SubGroup Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and CardNo='", var_A0, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_11F86BA:   MsgBox(CVar("Select " & CStr(var_C4)), &H40, var_160, var_170, var_180);

-- [VERIFIED-VB6] (MembershipMast)
loc_10B4289: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (MembershipMast)
loc_1B325DB:   var_F0 = "Select S.Name,S.ConPrefix,S.ConPerson,S.ConPersonMName,S.ConPersonLName,S.FatherName,S.MotherName,S.PanNo,S.GSTIN,S.GroupCode,S.ApplDate,S.ValidFrom,S.ValidateUpto,S.Discount," & "S.meshAc,S.U_AE,S.U_Name,S.U_EntDt,S.AddName,S.Add1,S.Add2,S.Add3,S.CITYCODE,S.Pin,S.Phone,S.Mobile,S.Mobile1,S.Email,S.AppNo,S.CardNo,S.IdProof,S.IdProofNo,S.Remark,S.subcorresYN,";

-- [VERIFIED-VB6] (MembershipMast)
loc_1B32C8A:     unk_5AD372.Execute "Select isnull(Sum(AmtCr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_F4 & "'", var_EC, -1;

-- [VERIFIED-VB6] (MembershipMast)
loc_1B32D33:     unk_5AD372.Execute "Select isnull(Sum(AmtDr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_F4 & "'", var_EC, -1;

-- [VERIFIED-VB6] (MembershipMast)
loc_1B32ED8:       Call 0.Method_Proc_265_112_1B371780 (CInt(0), var_D4, var_F0, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1B32F47:       Call 0.Method_Proc_265_112_1B371780 (CInt(0), var_D4, var_F0, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1B3414D:     var_124 = "select code,Name,Corporate from MemcatMast where code='" & var_88.Fields.Item("CompanyType").Value;

-- [VERIFIED-VB6] (MembershipMast)
loc_1B35488:     Call 0.Method_Proc_265_112_1B371780 (CInt(0), var_D4, var_F4, "Select * From MemberFamily Where LOGSITE_CODE='" & MemVar_1F81078 & "' And SubCode='", var_EC, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_1B361B9:     var_F0 = "Select *,MPF.Mark From (Select * From MemberFamily Where RelationShip='Member') MF Inner Join MemProposedMemInf MPF On MF.SubCode=MPF.PMemCode Where MPF.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (MembershipMast)
loc_1B3681C:     var_F0 = "Select NARRATION,DocID,V_SNo,V_Type,V_No,V_Date,Site_Code,SubCode,AmtCr,AmtDr,Chq_No,Chq_Date From Ledger Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (MembershipMast)
loc_1B36D13:   var_F0 = "Select MembershipRevMast.Code As RevCode,MembershipRevMast.Description, MR.AppDate , MR.Amount , MR.Nature, MR.ActiveYN From (MemRevWise MR Left Join MembershipRevMast ON MR.RevCode = MembershipRevMast.Code) Where MR.Site_Code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (MembershipMast)
loc_1A37CBF: Call 0.Method_Proc_265_113_1A3B0EC0 (CInt(2), var_D4, var_D8, "SELECT * From AcGroup Where GroupCode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A37DAF: Call 0.Method_Proc_265_113_1A3B0EC0 (CInt(0), var_D4, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A37E17: Call 0.Method_Proc_265_113_1A3B0EC0 (CInt(0), var_D4, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A37E7F: Call 0.Method_Proc_265_113_1A3B0EC0 (CInt(0), var_D4, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A37EE7: Call 0.Method_Proc_265_113_1A3B0EC0 (CInt(0), var_D4, var_D8, "Select * from MemAddRWA where subcode ='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A38657:   var_D8 = "Insert Into " & arg_10;

-- [VERIFIED-VB6] (MembershipMast)
loc_1A38F79:   var_D8 = "Insert Into MemberFamily (Subcode,SNo,ConPrefix,Name,CardNo,Relationship,Gender,MaritalStatus,DOB,POB,WedDate,Phone," & "Mobile,Mobile1,Email,Nationality,Religion,BloodGroup,ProOcc,EdQuali,TBusiness,TurnOver,Desig,PostedAt,PassPort,PAN,InTax,SpInterest,PicPath,";

-- [VERIFIED-VB6] (MembershipMast)
loc_1A39638:     var_DC = -1 & Proc_6_37_E618F4(arg_14, "Insert into SubgroupLog Select * from Subgroup Where SUBCODE='", var_100);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A3963F:     var_E0 = Proc_6_37_E618F4(arg_14, "Insert into SubgroupLog Select * from Subgroup Where SUBCODE='", var_100) & "SigPath,Label,Site_code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "'";

-- [VERIFIED-VB6] (MembershipMast)
loc_1A39688:     var_D8 = Proc_6_37_E618F4(arg_14, "Select Max(SeqNo) From SubgroupLog  Where SUBCODE='", var_100, -1, var_D0);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A3969C:     unk_5AD334.Execute var_D4 & Proc_6_37_E618F4(arg_14, "Insert into SubgroupLog Select * from Subgroup Where SUBCODE='", var_100) & "'", 0, var_104;

-- [VERIFIED-VB6] (MembershipMast)
loc_1A39702:     var_DC = "Update SubgroupLog Set SeqNo=" & Proc_6_37_E618F4(arg_14, "Insert into SubgroupLog Select * from Subgroup Where SUBCODE='", var_100);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A3971D:     var_390 = var_D0 & Proc_6_37_E618F4(arg_14, "Insert into SubgroupLog Select * from Subgroup Where SUBCODE='", var_100) & "SigPath,Label,Site_code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "Values ('" & arg_14;

-- [VERIFIED-VB6] (MembershipMast)
loc_1A3A9D3:     Call 0.Method_Proc_265_113_1A3B0EC0 (CInt(3), var_D4, var_D8, "Update MemberFamily Set ConPrefix='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A3B04A:     Call 0.Method_Proc_265_113_1A3B0EC0 (CInt(2), var_D4, var_D8, "UPDATE LEDGER SET LEDGER.GROUPCODE='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1766EB4:       var_CC = "Insert Into MemberFamily (Subcode,SNo,ConPrefix,Name,CardNo,Relationship,Gender,MaritalStatus,DOB,POB,WedDate,Phone," & "Mobile,Fax,Email,Nationality,Religion,BloodGroup,ProOcc,EdQuali,TBusiness,TurnOver,Desig,PassPort,PAN,InTax,SpInterest,PicPath,  ";

-- [VERIFIED-VB6] (MembershipMast)
loc_17672ED:   Call 0.Method_Proc_265_114_17684880 (CInt(0), var_D4, var_CC, "SELECT IsNull(Max(SNo),0)+1 From MemberFamily Where SubCode= '", var_C8, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_1767373:   Call 0.Method_Proc_265_114_17684880 (CInt(0), var_D4, var_CC, "SELECT SubCode,SNo From MemberFamily Where SubCode= '");

-- [VERIFIED-VB6] (MembershipMast)
loc_1767418:     var_EC = -1 & Proc_6_37_E618F4(var_C8, "Update MemberFamily Set SNo=" & var_CC & " where Subcode='", var_32C);

-- [VERIFIED-VB6] (MembershipMast)
loc_176741F:     var_26C = CVar(Proc_6_37_E618F4(var_C8, "Update MemberFamily Set SNo=" & var_CC & " where Subcode='", var_32C) & "Update MemberFamily Set SNo=" & var_CC & " where Subcode='" & "' And SNo=") 'String;

-- [VERIFIED-VB6] (MembershipMast)
loc_17674C7:   Call 0.Method_Proc_265_114_17684880 (CInt(0), var_D4, var_CC, "SELECT SubCode,SNo From MemberFamily Where SubCode= '", var_C8);

-- [VERIFIED-VB6] (MembershipMast)
loc_176756C:     var_EC = -1 & Proc_6_37_E618F4(CVar(var_D4), "Update MemberFamily Set SNo=" & CStr(var_B4) & " where Subcode='", var_32C);

-- [VERIFIED-VB6] (MembershipMast)
loc_1767573:     var_26C = CVar(Proc_6_37_E618F4(CVar(var_D4), "Update MemberFamily Set SNo=" & CStr(var_B4) & " where Subcode='", var_32C) & "Update MemberFamily Set SNo=" & CStr(var_B4) & " where Subcode='" & "' And SNo=") 'String;

-- [VERIFIED-VB6] (MembershipMast)
loc_1767719:       var_E0 = "Insert into MemProposedMemInf(Subcode,SNo,PMemCode,MemberType,Mark,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "Values ('";

-- [VERIFIED-VB6] (MembershipMast)
loc_1767853:   Call 0.Method_Proc_265_114_17684880 (CInt(0), var_D4, var_CC, "SELECT IsNull(Max(SNo),0)+1 From MemProposedMemInf Where SubCode= '", var_C8, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_17678D9:   Call 0.Method_Proc_265_114_17684880 (CInt(0), var_D4, var_CC, "SELECT SubCode,SNo From MemProposedMemInf Where SubCode= '");

-- [VERIFIED-VB6] (MembershipMast)
loc_176797E:     var_EC = -1 & Proc_6_37_E618F4(var_C8, "Update MemProposedMemInf Set SNo=" & var_CC & " where Subcode='", var_32C);

-- [VERIFIED-VB6] (MembershipMast)
loc_1767A2D:   Call 0.Method_Proc_265_114_17684880 (CInt(0), var_D4, var_CC, "SELECT SubCode,SNo From MemProposedMemInf Where SubCode= '", var_C8);

-- [VERIFIED-VB6] (MembershipMast)
loc_1767AD2:     var_EC = -1 & Proc_6_37_E618F4(CVar(var_D4), "Update MemProposedMemInf Set SNo=" & var_CC & " where Subcode='", var_32C);

-- [VERIFIED-VB6] (MembershipMast)
loc_1767B8E:   Call 0.Method_Proc_265_114_17684880 (CInt(0), var_D4, var_CC, "Update memAddRWA set Mark='' where Subcode='", var_2CC);

-- [VERIFIED-VB6] (MembershipMast)
loc_1768235:       var_CC = "Insert into MemRevWise (MemCode,AppDate,RevCode,Amount,Nature," & "ActiveYN,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) ";

-- [VERIFIED-VB6] (MembershipMast)
loc_1A668DA: Call 0.Method_Proc_265_115_1A6A0D00 (CInt(2), var_C0, var_C4, "Select MainGrCode From AcGroup Where GroupCode='", var_EC, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A6696A: var_CC = "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '";

-- [VERIFIED-VB6] (MembershipMast)
loc_1A66BB1: Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, var_C4, "UPdate MemAddRWA  Set Mark='' Where SubCode= '");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A66C10: Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, var_C4, "UPdate MemAddRWA  Set Mark='*' Where SubCode= '");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A66D5D:     Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, var_C4, "Delete From MemberFamily Where Subcode='", var_EC, -1, var_F0);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A66DEA:   Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, var_C4, "Delete From MemberFamily Where Subcode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A66F25:     unk_5AD372.Execute "Select Count(*) From MemberFamily where Subcode='" & var_C4 & "' And SNo=" & CStr(var_174), var_118, -1;

-- [VERIFIED-VB6] (MembershipMast)
loc_1A67440:       var_C4 = "Insert Into MemberFamily (Subcode,SNo,ConPrefix,Name,CardNo,Relationship,Gender,MaritalStatus,DOB,POB,WedDate,Phone," & "Mobile,Fax,Email,Nationality,Religion,BloodGroup,ProOcc,EdQuali,TBusiness,TurnOver,Desig,PassPort,PAN,InTax,SpInterest,PicPath,";

-- [VERIFIED-VB6] (MembershipMast)
loc_1A67D3F:       var_CC = "Update MemberFamily Set SNo=" & var_C4 & ",ConPrefix='";

-- [VERIFIED-VB6] (MembershipMast)
loc_1A68153: Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, var_C4, "SELECT IsNull(Max(SNo),0)+1 From MemberFamily Where SubCode= '", var_EC, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A681D9: Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, var_C4, "SELECT SubCode,SNo From MemberFamily Where SubCode= '");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A6827E:   var_124 = -1 & Proc_6_37_E618F4(var_EC, "Update MemberFamily Set SNo=" & var_C4 & " where Subcode='", var_350);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A682C4:   unk_5AD372.Execute CStr(CVar("Update MemberFamily Set SNo=" & var_C4 & " where Subcode='" & CStr(var_EC) & "' And SNo=") & var_184), var_108,;

-- [VERIFIED-VB6] (MembershipMast)
loc_1A6832D: Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, var_C4, "SELECT SubCode,SNo From MemberFamily Where SubCode= '", var_EC);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A683D2:   var_124 = -1 & Proc_6_37_E618F4(CVar(var_C0), "Update MemberFamily Set SNo=" & var_C4 & " where Subcode='", var_350);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A6840A:   var_1AC = CVar("Update MemberFamily Set SNo=" & var_C4 & " where Subcode='" & CStr(CVar(var_C0)) & "' And SNo=") & var_184;

-- [VERIFIED-VB6] (MembershipMast)
loc_1A6847C: Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, var_C4, "Delete From MemProposedMemInf Where subcode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A6849D: unk_5AD372.Execute "Update MemberFamily Set SNo=" & var_C4 & "'", var_F0, var_B2;

-- [VERIFIED-VB6] (MembershipMast)
loc_1A685E5:     var_C8 = "Insert into MemProposedMemInf(Subcode,SNo,PMemCode,MemberType,Mark,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "Values ('";

-- [VERIFIED-VB6] (MembershipMast)
loc_1A68720: Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, var_C4, "SELECT IsNull(Max(SNo),0)+1 From MemProposedMemInf Where SubCode= '", var_EC, -1);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A687A6: Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, var_C4, "SELECT SubCode,SNo From MemProposedMemInf Where SubCode= '");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A6884B:   var_124 = -1 & Proc_6_37_E618F4(var_EC, "Update MemProposedMemInf Set SNo=" & var_C4 & " where Subcode='", var_350);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A688FA: Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, var_C4, "SELECT SubCode,SNo From MemProposedMemInf Where SubCode= '", var_EC);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A6899F:   var_124 = -1 & Proc_6_37_E618F4(CVar(var_C0), "Update MemProposedMemInf Set SNo=" & var_C4 & " where Subcode='", var_350);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A68A49: Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, var_C4, "SELECT SubCode,CardRegId,ConPrefix + ' ' + Name As Name,CardNo From MemberFamily Where SubCode= '");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A68A6A: unk_5AD372.Execute "Update MemProposedMemInf Set SNo=" & var_C4 & "' And IsNull(HW_Id,'')<>'' And IsNull(CardRegId,'')<>'' Order By SNo", var_F0, var_B2;

-- [VERIFIED-VB6] (MembershipMast)
loc_1A68ADB:   var_C8 = -1 & Proc_6_37_E618F4(CVar(var_C0), "Update SmartCardRegistration Set Name='", var_1AC);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A68AE2:   var_CC = "Update MemProposedMemInf Set SNo=" & Proc_6_37_E618F4(CVar(var_C0), "Update SmartCardRegistration Set Name='", var_1AC) & "',CardNo='";

-- [VERIFIED-VB6] (MembershipMast)
loc_1A68C05: Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, "Select max(SNo) As SNo From MemAddRWA Where SubCode='", var_1AC);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A68CD5:     var_C8 = "Update MemAddRWA Set SNo=" & CStr(CVar(var_94.Fields.Item("subcode")) & "' And Name ='Residential Address' And Mark ='*'");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A68D65:     Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, "Update MemAddRWA Set SNo=1 , Mark='' Where Subcode='", var_360);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A68DE9:     Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, "Delete From MemAddRWA Where Subcode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A68E63: Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, "Select max(SNo) As SNo From MemAddRWA Where SubCode='", var_1AC);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A68F35:     var_184 = CVar("Update MemAddRWA Set SNo=" & CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name ='WorkPlace Address' And Mark ='*'") & " , Mark='*' Where Subcode='") 'String;

-- [VERIFIED-VB6] (MembershipMast)
loc_1A68FBE:     Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, "Update MemAddRWA Set SNo=1 , Mark='' Where Subcode='", var_360);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A69042:     Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, "Delete From MemAddRWA Where Subcode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A690BC: Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, "Select max(SNo) As SNo From MemAddRWA Where SubCode='", var_1AC);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A6918E:     var_184 = CVar("Update MemAddRWA Set SNo=" & CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name ='Abroad Address' And Mark ='*'") & " , Mark='*' Where Subcode='") 'String;

-- [VERIFIED-VB6] (MembershipMast)
loc_1A69217:     Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, "Update MemAddRWA Set SNo=1 , Mark='' Where Subcode='", var_360);

-- [VERIFIED-VB6] (MembershipMast)
loc_1A6929B:     Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, "Delete From MemAddRWA Where Subcode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A698AF: Call 0.Method_Proc_265_115_1A6A0D00 (CInt(0), var_C0, var_C4, "Delete From MemRevWise Where MemCode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1A698C7: var_CC = "Update MemAddRWA Set SNo=" & CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name ='Abroad Address' And Mark ='*'") & "' And RevCode Not In('";

-- [VERIFIED-VB6] (MembershipMast)
loc_1A699DD:     var_C8 = "Select * from MemRevWise where MemCode='" & var_C4;

-- [VERIFIED-VB6] (MembershipMast)
loc_1A69BAD:       var_C4 = "Insert into MemRevWise (MemCode,AppDate,RevCode,Amount,Nature," & "ActiveYN,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) ";

-- [VERIFIED-VB6] (MembershipMast)
loc_1A69E8C:       var_404 = "Update MemRevWise Set Appdate=" & var_184 & ",RevCode='" & CVar(CStr(var_350)) & "',Amount=" & CVar(var_174) & ",Nature='";

-- [VERIFIED-VB6] (MembershipMast)
loc_129484B:   Call 0.Method_Proc_265_116_1294D440 (CInt(0), var_12C, var_130, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '");

-- [VERIFIED-VB6] (MembershipMast)
loc_12949EA:   var_FC = CVar("Delete From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '") 'String;

-- [VERIFIED-VB6] (MembershipMast)
loc_1294A71:   Call 0.Method_Proc_265_116_1294D440 (CInt(0), var_12C, "Delete From SubGroup Where SUBCode='", var_190);

-- [VERIFIED-VB6] (MembershipMast)
loc_1294ADE:   Call 0.Method_Proc_265_116_1294D440 (CInt(0), var_12C, "Delete From MemberFamily Where subcode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1294B4B:   Call 0.Method_Proc_265_116_1294D440 (CInt(0), var_12C, "Delete From MemProposedMemInf Where subcode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1294BB8:   Call 0.Method_Proc_265_116_1294D440 (CInt(0), var_12C, "Delete From MemAddRWA Where subcode='");

-- [VERIFIED-VB6] (MembershipMast)
loc_1294C25:   Call 0.Method_Proc_265_116_1294D440 (CInt(0), var_12C, "Delete From MemRevWise Where Memcode='");


-- ### MemberShipRevenueMast  (12 statement(s))
-- [VERIFIED-VB6] (MemberShipRevenueMast)
loc_10E0E8C:   var_FC = "Delete From MembershipRevMast Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (MemberShipRevenueMast)
loc_F1F3C9: MemVar_1F810E4 = "SELECT Code as SearchCode,Description FROM MembershipRevMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Description";

-- [VERIFIED-VB6] (MemberShipRevenueMast)
loc_107973A: var_A4 = "SELECT Description,SubsDetails,RefundableYN,SubsChargeYN FROM MembershipRevMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Description";

-- [VERIFIED-VB6] (MemberShipRevenueMast)
loc_14CC391:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),0)+1 AS MyCode From MembershipRevMast Where SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (MemberShipRevenueMast)
loc_14CC6B3:   var_A0 = "Insert Into MembershipRevMast(Code,Description,SubsDetails,RefundableYN,SubsChargeYN,AcountYN,AcCode,ACPosting,TaxStru,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code,Status) Values('" & global_72;

-- [VERIFIED-VB6] (MemberShipRevenueMast)
loc_14CCA4D:   var_17C = CVar("UPDATE MembershipRevMast SET Description='" & var_A0 & "',SubsDetails='" & var_118.Text & "',RefundableYN='") 'String;

-- [VERIFIED-VB6] (MemberShipRevenueMast)
loc_1086097: var_94 = "SELECT Code,Description as Name FROM MembershipRevMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name";

-- [VERIFIED-VB6] (MemberShipRevenueMast)
loc_1086109: var_94 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name";

-- [VERIFIED-VB6] (MemberShipRevenueMast)
loc_1086184: unk_49D868.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1;

-- [VERIFIED-VB6] (MemberShipRevenueMast)
loc_10861E6: var_90 = "SELECT Distinct M.Code as SearchCode,M.*,S.Name As LedgerName,T.Name As TaxStruName FROM (MembershipRevMast M Left Join SubGroup S on M.AcCode=S.SubCode) Left Join TaxStru T on T.Code=M.TaxStru WHERE (M.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (MemberShipRevenueMast)
loc_107AF2C:   var_B0 = "Select Count(*) From MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Description='";

-- [VERIFIED-VB6] (MemberShipRevenueMast)
loc_107B03E:   var_B0 = "Select Count(*) From MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Description='";


-- ### memFacilityMast  (14 statement(s))
-- [VERIFIED-VB6] (memFacilityMast)
loc_10D4A98:   var_FC = "Delete From MemFacilityMast Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (memFacilityMast)
loc_F1FA31: MemVar_1F810E4 = "Select MemFacilityMast.Code As SearchCode,MemFacilityMast.Name FROM MemFacilityMast where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by MemFacilityMast.Name";

-- [VERIFIED-VB6] (memFacilityMast)
loc_107ECD7: var_A0 = "SELECT DISTINCT MF.Code, MF.Name , MF.SName , MF.ChargeType , MF.FixedRate , MF.PrimaryMember , MF.Spouse, MF.Child,MF.AddAdult,MF.AddChild,TS.Code As TCode , TS.Name As TName , SB.SubCode As ACode , SB.Name as AName  , CASE MF.ActiveYN WHEN 'Y' then 'Yes' ELSE 'No' END, MF.LOGSITE_CODE , MF.Site_Code FROM MemFacilityMast MF LEFT join TaxStru TS On MF.TaxStru = TS.Code LEFT join SubGroup SB on MF.ACCode = SB.SubCode WHERE (MF.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (memFacilityMast)
loc_1558434:   unk_4C4117.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From MemFacilityMast ", var_B4, -1;

-- [VERIFIED-VB6] (memFacilityMast)
loc_155876D:   var_A0 = "Insert Into MemFacilityMast(Code,Name,SName,ChargeType,FixedRate,PrimaryMember,Spouse,Child,AddAdult,AddChild,TaxStru,ACCode,ActiveYN,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_72;

-- [VERIFIED-VB6] (memFacilityMast)
loc_1558BB0:   var_138 = "UPDATE MemFacilityMast SET Name='" & var_A0 & "',Sname='" & var_118.Text & "',ChargeType='" & var_12C.Text & "',FixedRate=";

-- [VERIFIED-VB6] (memFacilityMast)
loc_1087B58: unk_4C4117.Execute "SELECT SubCode AS Code,Name FROM SubGroup WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1;

-- [VERIFIED-VB6] (memFacilityMast)
loc_1087BBA: var_90 = "SELECT  distinct Revmast.Code as Code,RevMast.Name as Name,RevMast.taxstru as TaxCode,TaxStru.name as Taxname FROM RevMast left join TaxStru on  Taxstru.Code=Revmast.Taxstru where (Revmast.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (memFacilityMast)
loc_1087C3C: unk_4C4117.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1;

-- [VERIFIED-VB6] (memFacilityMast)
loc_1087C9E: var_90 = "SELECT DISTINCT MF.Code,MF.Name,MF.SName,MF.U_AE,MF.U_Name,MF.U_EntDt,MF.ChargeType,MF.FixedRate,MF.PrimaryMember,MF.Spouse, MF.Child,MF.AddAdult,MF.AddChild,TS.Code As TCode , TS.Name As TName , SB.SubCode As ACode , SB.Name as AName  , MF.ActiveYN, MF.LOGSITE_CODE , MF.Site_Code FROM MemFacilityMast MF LEFT join TaxStru TS On MF.TaxStru = TS.Code LEFT join SubGroup SB on MF.ACCode = SB.SubCode WHERE (MF.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (memFacilityMast)
loc_107F32F:   Call 0.Method_Proc_267_33_107F52C0 (CInt(1), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (memFacilityMast)
loc_107F441:   Call 0.Method_Proc_267_33_107F52C0 (CInt(1), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (memFacilityMast)
loc_1090DE3:   Call 0.Method_Proc_267_34_10910040 (CInt(0), var_A4, var_A8, "Select Count(*) From MemFacilityMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and SName='", var_9C, -1);

-- [VERIFIED-VB6] (memFacilityMast)
loc_1090EF5:   Call 0.Method_Proc_267_34_10910040 (CInt(0), var_A4, var_A8, "Select Count(*) From MemFacilityMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and SName='", var_9C, -1);


-- ### memCatRevMast  (8 statement(s))
-- [VERIFIED-VB6] (memCatRevMast)
loc_1088790: var_C0 = "SELECT MemCatMast.Code, MemCatMast.Name FROM MemCatMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY MemCatMast.Name";

-- [VERIFIED-VB6] (memCatRevMast)
loc_10887FB: var_AC = "SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (memCatRevMast)
loc_1088877: var_AC = "Select DISTINCT (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From MemCatRevWise MR Where (MR.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (memCatRevMast)
loc_EC4B35: var_10C = "Select DISTINCT (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103)) AS Code,MC.Name as Category,Convert(Varchar(11),MR.AppDate,106) As AppDate FROM (MemCatRevWise MR Left Join MemCatMast MC On MR.MemCat=MC.Code) Where (MR.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (memCatRevMast)
loc_13A2441:     var_98 = "Insert Into MemCatRevWise (MemCat,AppDate,RevCode,Amount,Nature," & "AppMonth,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) ";

-- [VERIFIED-VB6] (memCatRevMast)
loc_1319353:   unk_49FACA.Execute "Select * from MemCatRevWise", var_B4, -1;

-- [VERIFIED-VB6] (memCatRevMast)
loc_13195D2:   var_C0 = "Select MemCatMast.Code AS CatCode,MemCatMast.Name AS CatName,MembershipRevMast.Code As RevCode,MembershipRevMast.Description, MR.AppDate , MR.Amount , MR.Nature, MR.AppMonth From ((MemCatRevWise MR Left Join MemCatMast On MR.MemCat = MemCatMast.Code) LEFT JOIN MembershipRevMast ON MR.RevCode = MembershipRevMast.Code) Where MR.Site_Code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (memCatRevMast)
loc_FC0A5D: Call 0.Method_Proc_268_44_FC0B780 (CInt(0), var_98, var_9C, "Select Count(*) From MemCatRevWise Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and (MemCat='", var_130, -1);


-- ### memCategoryFacilities  (8 statement(s))
-- [VERIFIED-VB6] (memCategoryFacilities)
loc_100B6B3: var_BC = CVar("Select Code,Name From MemCatMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (memCategoryFacilities)
loc_100B72F: var_AC = "Select DISTINCT (CF.MemCatCode+Space(6-len(CF.MemCatCode))+'**'+Convert(Varchar(11),CF.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From MemCatFacility CF Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (memCategoryFacilities)
loc_100B736: var_BC = CVar("Select Code,Name From MemCatMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order By (CF.MemCatCode+Space(6-len(CF.MemCatCode))+'**'+Convert(Varchar(11),CF.AppDate,103))") 'String;

-- [VERIFIED-VB6] (memCategoryFacilities)
loc_EC15EE: var_10C = "Select DISTINCT (CF.MemCatCode+Space(6-len(CF.MemCatCode))+'**'+Convert(Varchar(11),CF.AppDate,103)) AS Code,M.Name As MemberCategory,Convert(Varchar(11),CF.AppDate,106)  As AppDate From (MemCatFacility CF Left Join MemCatMast M On CF.MemCatCode=M.Code) Where (CF.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (memCategoryFacilities)
loc_144EE7A:     var_1BC = "Insert Into MemCatFacility (MemCatCode,AppDate,FcCode,ChrgType,FixedRate,PMember,Spouse,Child,ExtraAdult,ExtraChild,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('";

-- [VERIFIED-VB6] (memCategoryFacilities)
loc_125F67A: var_90 = "Select Code,Name,FixedRate,ChargeType,PrimaryMember,Spouse,Child,AddAdult,AddChild From MemFacilityMast where ActiveYN='Y' And (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (memCategoryFacilities)
loc_FC3011: Call 0.Method_Proc_269_55_FC312C0 (CInt(0), var_98, var_9C, "Select Count(*) From MemCatFacility Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and (MemCatCode='", var_130, -1);

-- [VERIFIED-VB6] (memCategoryFacilities)
loc_139F8DE:   var_94 = "Select MF.*,M.Name As MemCatName,FM.Name As FacilityName From ((memCatFacility MF Left Join MemCatMast M On MF.MemCatCode=M.Code) Left Join memFacilityMast FM On MF.FcCode=FM.Code) Where MF.LogSite_Code='" & MemVar_1F81078;


-- ### MemberEnviro  (3 statement(s))
-- [VERIFIED-VB6] (MemberEnviro)
loc_1381EF5:   var_C4 = "Insert Into MemEnviro(Bill_Header,Bill_Footer,Bill_PrintType,LogSite_Code,NoOfCopy,Interface,AgeParameter,MemberFacilityBilling,BillMessage,BillPayDueDate,MemberVarification,MemberVarificationInKOT,AutoMemberBilling,MemberSaleBillDiscEditable) Values (";

-- [VERIFIED-VB6] (MemberEnviro)
loc_13822CA:   var_1B4 = "Update MemEnviro Set Bill_Header=" & var_B4 & ",Bill_Footer=" & var_11C & ",Bill_PrintType=" & var_174 & ",NoOfCopy=" & CVar(Val(var_210));

-- [VERIFIED-VB6] (MemberEnviro)
loc_EA8EBD: Me.Recordset15.Open CVar("Select * From MemEnviro WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "')"), CVar(MemVar_1F81044), 2;


-- ### memAgeRevMast  (7 statement(s))
-- [VERIFIED-VB6] (memAgeRevMast)
loc_EC4055: var_10C = "Select DISTINCT (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103)) AS Code,MC.Name as Category,Convert(Varchar(11),MR.AppDate,106) As AppDate FROM (MemAgeRevWise MR Left Join MemCatMast MC On MR.MemCat=MC.Code) Where (MR.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (memAgeRevMast)
loc_143ECD6:     var_98 = "Insert Into MemAgeRevWise (MemCat,AppDate,RevCode,SValue,PerOrAmt," & "FrAge,ToAge,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) ";

-- [VERIFIED-VB6] (memAgeRevMast)
loc_1139EF6: var_C0 = "SELECT MemCatMast.Code, MemCatMast.Name FROM MemCatMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY MemCatMast.Name";

-- [VERIFIED-VB6] (memAgeRevMast)
loc_1139F61: var_AC = "SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (memAgeRevMast)
loc_1139FDD: var_AC = "Select DISTINCT (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From MemAgeRevWise MR Where (MR.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (memAgeRevMast)
loc_131F275:   var_94 = "Select MemCatMast.Code AS CatCode , MemCatMast.Name AS CatName , MR.U_Name,MR.U_EntDt, MR.U_AE,MembershipRevMast.Code As RevCode, MembershipRevMast.Description, MR.AppDate , MR.SValue , MR.PerOrAmt, MR.FrAge, MR.ToAge From ((MemAgeRevWise MR Left Join MemCatMast On MR.MemCat = MemCatMast.Code) LEFT JOIN MembershipRevMast ON MR.RevCode = MembershipRevMast.Code) Where MR.Site_Code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (memAgeRevMast)
loc_FC0E55: Call 0.Method_Proc_271_44_FC0F700 (CInt(0), var_98, var_9C, "Select Count(*) From MemAgeRevWise Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and (MemCat='", var_130, -1);


-- ### MemSelectCategory  (10 statement(s))
-- [VERIFIED-VB6] (MemSelectCategory)
loc_EEA3A1: MemVar_1F810E4 = "Select Type As SearchCode,Type From MemSelectCategory where LogSite_Code='" & MemVar_1F81078 & "' Group By Type";

-- [VERIFIED-VB6] (MemSelectCategory)
loc_F9ADDB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_90, var_98, "Delete From MemSelectCategory Where Type='", var_CC);

-- [VERIFIED-VB6] (MemSelectCategory)
loc_F5EE5C: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where Code<>'" & MemVar_1F81078 & "RS' And (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name";

-- [VERIFIED-VB6] (MemSelectCategory)
loc_F5EEDB: unk_484A7E.Execute "Select Distinct Type From MemSelectCategory where LogSite_Code='" & MemVar_1F81078 & "'", var_B4, -1;

-- [VERIFIED-VB6] (MemSelectCategory)
loc_115C3F5:   var_C8 = "Select Code,Name From MemCatMast WHERE (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (MemSelectCategory)
loc_115C447:   Call 0.Method_Proc_340_28_115C7280 (CInt(2), var_D0, var_C8, "Select M.Code,M.Name,IsNull(MS.Type,'') Type From MemCatMast M Left Join (Select MemCode,Type  From MemSelectCategory Where Type='");

-- [VERIFIED-VB6] (MemSelectCategory)
loc_F413C6: Call 0.Method_Proc_340_29_F414740 (CInt(2), var_90, var_94, "Insert Into MemSelectCategory(MemCode,Type,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & arg_C & "','");

-- [VERIFIED-VB6] (MemSelectCategory)
loc_10E7A49:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_164, var_174, var_184);

-- [VERIFIED-VB6] (MemSelectCategory)
loc_11DC7D0:   var_F8 = "Select Distinct Type,U_AE,U_EntDt From MemSelectCategory where Type='" & Me.Fields.Item("Type").Value & "' And LogSite_Code='";

-- [VERIFIED-VB6] (MemSelectCategory)
loc_11DC874:   var_D8 = "Select M.Code,M.Name,MS.Type From MemCatMast M Inner Join MemSelectCategory MS On M.Code=MS.MemCode where MS.Type='" & Me.Fields.Item("Type").Value;


-- ### FrmFacilityMast
--     no SQL extracted from this object  [UNKNOWN]

-- ---------------------------------------------------------------------------
-- Material Mgmt Setup
-- ---------------------------------------------------------------------------

-- ### FrmParty  (40 statement(s))
-- [VERIFIED-VB6] (FrmParty)
loc_13B4375:     Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select AcCode From SubGroup Where AcCode='", var_D0);

-- [VERIFIED-VB6] (FrmParty)
loc_13B4565:       var_F4 = "Select ID,GroupCode,GroupName,Nature,AliasYN,GroupNature From AcGroup Where GroupCode='" & Me.Fields.Item("Code").Value;

-- [VERIFIED-VB6] (FrmParty)
loc_1240C14: var_C8 = CVar("Select SubCode As Code,Name,NameHelp,GroupCode From SubGroup WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (FrmParty)
loc_1240C90: var_B4 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmParty)
loc_1240D1A: var_C8 = CVar("Select CityCode As Code,CityName As Name,CityHelp From City Where (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') Order by CityName") 'String;

-- [VERIFIED-VB6] (FrmParty)
loc_1240D24: ar("Select CityCode As Code,CityName As Name,CityHelp From City Where (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO')  and NATURE='Supplier' Order by GroupName"), CVar(MemVar_1F811DC), 2 var_C8, CVar(MemVar_1F811DC), 2;

-- [VERIFIED-VB6] (FrmParty)
loc_1240DB3: var_B8 = "Select SubCode As SearchCode,SubCode,Site_Code,Name,LogSite_Code From SubGroup Where (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO')  and NATURE='Supplier'  order by Name";

-- [VERIFIED-VB6] (FrmParty)
loc_1240EF1:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_90, var_94, "SELECT COUNT(*) From Ledger Where SubCode= '", var_BC, -1);

-- [VERIFIED-VB6] (FrmParty)
loc_1240FBF:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_90, var_94, "SELECT COUNT(*) From Ledger Where ContraSub= '", var_BC, -1);

-- [VERIFIED-VB6] (FrmParty)
loc_F1E6F2: var_10C = "Select SubCode As SearchCode,Name,G.GroupName As UnderGroup,ConPerson,Add1 As Address1,C.CityName,Phone,Mobile,FAX,EMail,PANNo As PAN,GSTIN,Active=Case When ActiveYN=0 then 'No' else 'Yes' end  ,Remark From ((SubGroup S Left Join AcGroup G on (S.GroupCode=G.GroupCode)) Left Join City C on (S.CityCode=C.CityCode)) Where S.NATURE='Supplier' AND G.AliasYN<>'Y' AND (S.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmParty)
loc_10AD0B8: var_A8 = "Select SubCode,Name,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,Active=CASE ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' END,CreditLimit,CreditDays,Remark,GSTIN From (SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode " & vbNullString;

-- [VERIFIED-VB6] (FrmParty)
loc_12BEE47:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='");

-- [VERIFIED-VB6] (FrmParty)
loc_12BEF54:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='");

-- [VERIFIED-VB6] (FrmParty)
loc_10B35D9: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmParty)
loc_16DED96:   var_F4 = "Select S.*,G.GroupNature AS GNature,G.GroupName,G.MainGrCode,C.CityName,T.CATEGORY_Desc,TDSCAT.NAME AS TDSNAME From (((SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode) Left Join CATEGORY T on S.CatEGORY=T.CatEGORY) LEFT JOIN TDSCAT ON TDSCAT.CODE=S.TDS_Catg Where  S.SubCode='";

-- [VERIFIED-VB6] (FrmParty)
loc_16DEE5A:   unk_4F4595.Execute CStr("Select U_Name,U_AE,U_EntDt From Subgroup where SubCode='" & Me.Fields.Item("subcode").Value & "'  "), var_144, -1;

-- [VERIFIED-VB6] (FrmParty)
loc_16DF402:     unk_4F4593.Execute "Select isnull(Sum(AmtCr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_E0, -1;

-- [VERIFIED-VB6] (FrmParty)
loc_16DF4A9:     unk_4F4593.Execute "Select isnull(Sum(AmtDr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_E0, -1;

-- [VERIFIED-VB6] (FrmParty)
loc_16DF644:       Call 0.Method_Proc_11_57_16E07800 (CInt(0), var_C8, var_E4, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='");

-- [VERIFIED-VB6] (FrmParty)
loc_16DF6AF:       Call 0.Method_Proc_11_57_16E07800 (CInt(0), var_C8, var_E4, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='");

-- [VERIFIED-VB6] (FrmParty)
loc_16E01EA:       var_E4 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmParty)
loc_16E0279:       var_E4 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmParty)
loc_14F124F: Call 0.Method_Proc_11_58_14F1ED80 (CInt(2), var_98, var_9C, "SELECT * From AcGroup Where GroupCode='");

-- [VERIFIED-VB6] (FrmParty)
loc_14F1355:   var_A0 = "Insert Into " & arg_10 & " (Site_Code,SubCode,Name,NameHelp,GroupCode,GroupNature,Nature,ConPrefix,ConPerson,Add1,Add2,Add3,CityCode,Phone,Mobile,Fax,EMail,CSTNo,LSTNo,PANNo,Remark,U_Name,U_EntDt,U_AE,LOGSITE_CODE,TINNo,GSTIN,DealerType,ActiveYN) Values ('";

-- [VERIFIED-VB6] (FrmParty)
loc_14F1E50:     Call 0.Method_Proc_11_58_14F1ED80 (CInt(2), var_98, var_9C, "UPDATE LEDGER SET LEDGER.GROUPCODE='");

-- [VERIFIED-VB6] (FrmParty)
loc_14B14A4:     Call 0.Method_Proc_11_59_14B1FC80 (CInt(0), var_124, var_CC, "Select COUNT(*) From SubGroup Where SubCode='", var_C8, -1);

-- [VERIFIED-VB6] (FrmParty)
loc_14B1832:     var_CC = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmParty)
loc_14B18D4:     Call 0.Method_Proc_11_59_14B1FC80 (CInt(2), var_124, CStr(Me.FGrid.TextMatrix)), "SELECT GROUPCODE,GROUPNATURE FROM ACGROUP WHERE GROUPCODE='", var_1E0, -1, var_128);

-- [VERIFIED-VB6] (FrmParty)
loc_14B1CFB:       var_130 = "Insert Into Ledger(DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A4 & ",NARRATION,U_Name,U_EntDt,U_AE,v_Prefix,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('";

-- [VERIFIED-VB6] (FrmParty)
loc_15462E2: Call 0.Method_Proc_11_60_15472000 (CInt(2), var_B4, var_B8, "Select MainGrCode From AcGroup Where GroupCode='", var_E0, -1);

-- [VERIFIED-VB6] (FrmParty)
loc_1546389: Call 0.Method_Proc_11_60_15472000 (CInt(0), var_B4, var_BC, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '");

-- [VERIFIED-VB6] (FrmParty)
loc_154652C:   var_B8 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmParty)
loc_15465BB:   var_B8 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmParty)
loc_154675F: var_C0 = "Delete From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '";

-- [VERIFIED-VB6] (FrmParty)
loc_15468DC:     var_D0 = "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='";

-- [VERIFIED-VB6] (FrmParty)
loc_1546AF7:       var_B8 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmParty)
loc_1546F20:       var_BC = "Insert Into Ledger (DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A8 & ",NARRATION,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('";

-- [VERIFIED-VB6] (FrmParty)
loc_11AD09B:   Call 0.Method_Proc_11_61_11AD3C40 (CInt(0), var_12C, var_130, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '");

-- [VERIFIED-VB6] (FrmParty)
loc_11AD233:   var_124 = "Delete From Ledger Where V_Type='" & "F_AO";

-- [VERIFIED-VB6] (FrmParty)
loc_11AD2B4:   Call 0.Method_Proc_11_61_11AD3C40 (CInt(0), var_12C, var_124, "Delete From SubGroup Where SUBCode='");


-- ### DepartMast  (25 statement(s))
-- [VERIFIED-VB6] (DepartMast)
loc_10682EB: var_C0 = CVar("Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND OutletYN='N' And RestType Not In ('FOM') Order by Name") 'String;

-- [VERIFIED-VB6] (DepartMast)
loc_1068367: var_B0 = "SELECT R.Code AS SEARCHCODE,R.Name,R.StoreType,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Header1,R.Header2,R.Phone,R.Slogan1,R.Slogan2,R.LstNo,Comp1=CASE R.CompanyTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END,D1=CASE R.POS WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.U_Name,R.RestType,R.BackColor,R.ShortName,R.Printer,R.SITE_CODE,R.LOGSITE_CODE,R.PrintType From Depart R Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (DepartMast)
loc_127C08A:   unk_4AE300.Execute CStr("Delete From Depart Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_13C, -1;

-- [VERIFIED-VB6] (DepartMast)
loc_127C0EE:   var_11C = "Delete From RevMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'";

-- [VERIFIED-VB6] (DepartMast)
loc_EC041E: var_10C = "SELECT R.Code AS SEARCHCODE,Name as Department,RestType as Nature,ShortName From Depart R Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (DepartMast)
loc_1018AA1: var_A8 = "SELECT R.Code AS SEARCHCODE,R.Name,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Header1,R.Header2,R.Phone,R.Slogan1,R.Slogan2,R.LstNo,Comp1=CASE R.CompanyTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END,D1=CASE R.POS WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.U_Name From Depart R Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (DepartMast)
loc_1673ECB:   var_F0 = CVar("Select IsNull(Max(CAST(SUBSTRING(Code,4,Len(Code)-3) AS INT)),0) AS tCode From (Select Code From GodownMast Union Select Code From Depart) as bb Where IsNumeric(substring(Code,4,Len(Code)-3))=1 AND Left(Code,3)='" & MemVar_1F81070) 'String;

-- [VERIFIED-VB6] (DepartMast)
loc_1674080:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Insert Into Depart(Code,Name,RestType,BackColor,ShortName,OutletYN,Site_Code,U_Name,U_EntDt,U_AE,Printer,StoreType,LOGSITE_cODE,PrintType) Values ('", var_2E4);

-- [VERIFIED-VB6] (DepartMast)
loc_16742F1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Insert Into GodownMast(Code,Name,ShortName,U_Name,U_EntDt,U_AE,SYSYN,SITE_CODE,LOGSITE_CODE) Values ('");

-- [VERIFIED-VB6] (DepartMast)
loc_1674465:   var_B0 = "Insert Into RevMast(Code,DeskCode,Name,ShortName,SysYN,Type,AppMode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values ('" & var_164;

-- [VERIFIED-VB6] (DepartMast)
loc_16745C9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Update Depart Set Name='");

-- [VERIFIED-VB6] (DepartMast)
loc_16747CB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Update GodownMast Set Name='");

-- [VERIFIED-VB6] (DepartMast)
loc_167496F:     var_B0 = "Insert Into Voucher_type (NCat,Category,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HKISS','HKIR','" & var_98;

-- [VERIFIED-VB6] (DepartMast)
loc_1674A9F:     var_B0 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98;

-- [VERIFIED-VB6] (DepartMast)
loc_1674BE9:     var_B0 = "Insert Into Voucher_type (NCat,Category,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HKIR','HKIR','" & var_98;

-- [VERIFIED-VB6] (DepartMast)
loc_1674D19:     var_B0 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98;

-- [VERIFIED-VB6] (DepartMast)
loc_1674E63:     var_B0 = "Insert Into Voucher_type (NCat,Category,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HKROP','HKROP','" & var_98;

-- [VERIFIED-VB6] (DepartMast)
loc_1674F93:     var_B0 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98;

-- [VERIFIED-VB6] (DepartMast)
loc_16750DD:     var_B0 = "Insert Into Voucher_type (NCat,Category,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HKOP','HKOP','" & var_98;

-- [VERIFIED-VB6] (DepartMast)
loc_167520D:     var_B0 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98;

-- [VERIFIED-VB6] (DepartMast)
loc_118324D:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_BC, "Select Count(*) From Depart Where OutletYN='N' AND ShortName='", var_A0, -1);

-- [VERIFIED-VB6] (DepartMast)
loc_10839F8:   var_B0 = "Select Count(*) From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND OutletYN='N' AND Name='";

-- [VERIFIED-VB6] (DepartMast)
loc_1083B0A:   var_B0 = "Select Count(*) From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND OutletYN='N' AND Name='";

-- [VERIFIED-VB6] (DepartMast)
loc_136D831: unk_4AE300.Execute CStr("Select U_Name,U_AE,U_EntDt From Depart where Code='" & Me.Fields.Item("SearchCode").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (DepartMast)
loc_F51CEF: var_D8 = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast WHERE SUBSTRING(Code,1,3) ='";


-- ### FrmItemCatRaw  (22 statement(s))
-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_12FD013: Proc_6_16_EA44E0(var_D4, MemVar_1F81078, "Select ShowAllAcInPurcahseCategoryYN From Enviro WHERE LOGSITE_CODE=");

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_12FD0B4:     var_10C = "Select SubCode As Code,Name From ViewSubGroup Where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND Left(MainGrCodeS,3) IN ('230','240','250','260','270','280','040') Order by Name";

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_12FD101:     var_10C = "Select SubCode As Code,Name From ViewSubGroup Where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND Left(MainGrCodeS,3) IN ('230','240','280','040') Order by Name";

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_12FD17A: var_110 = "SELECT Code,Name FROM ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND RestCode='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_12FD1F0: var_C4 = "SELECT distinct IC.Code,IC.Name AS ItemCat,ShortName,IC.RoundOff,IC.AcName,IC.TaxStru As TaxStruCode,IC.Flag,IC.CatType,IC.RestCode,IC.TaxStru,IC.TaxStruType,IC.U_Name As IUName,VS.Name As SaleAc,TaxStru.Name As TaxStructure,D.Name As RestName,IC.Drcr,IC.SITE_CODE,IC.LOGSITE_CODE FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code where (IC.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_12FD241: var_10C = "Select distinct Code As Code,Name From TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name";

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_12FD2B3: var_10C = "Select Code,Name,ShortName From Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and RestType='Store' Order by Name";

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_128090C: unk_4DBBA0.Execute "Select Code From RevMast Where Name='" & global_72 & "'", var_C8, -1;

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_1280983:   var_118 = "Select Count(*) from PayCharge Where PayType='" & var_98.Fields.Item(0).Value & "'";

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_1280ACC:   var_118 = "Delete From ItemCatMast Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_1280C0C:   unk_4DBBA0.Execute "Delete From RevMast Where Name='" & global_72 & "'", var_C8, -1;

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_F20322: var_10C = "SELECT distinct IC.Code AS SearchCode,IC.Name AS ItemCategory,IC.Flag,IC.CatType As Type,VS.Name As PurchaseAc,TaxStru.Name As TaxStructure,IC.TaxStruType As Type FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code Where (IC.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_109594F: var_A0 = "SELECT IC.Code,IC.Name AS ItemCat,IC.RoundOff,IC.Flag,IC.CatType As Type,D.Name As Outlet,VS.Name As SaleAc,TaxStru.Name As TaxStructure,D.Name as OutLetName  FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode)Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code WHERE (IC.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_1507188:   var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemCatMast WHERE isnumeric(SUBSTRING(Code,3,4))=1 and U_Name<>'Analysis' and SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_15072CC:   var_AC = "Insert Into ItemCatMast(Code,Name,RestCode,RoundOff,AcName,TaxStru,TaxStruType,Flag,CatType,OutletYN," & " U_Name,U_EntDt,U_AE,Drcr,SITE_CODE,LOGSITE_CODE)";

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_150760E:   var_AC = "Insert Into RevMast(Code,Name,ShortName,SysYN,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,FieldType,DeskCode,TaxStru,Type,AcCode,LOGSITE_CODE) Values ('" & var_F8;

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_1507814:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, "UPDATE ItemCatMast SET Name=");

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_1507AC9:   "Update RevMast Set Name='" = var_A4.Text;

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_13C8040: unk_4DBBA0.Execute CStr("Select U_Name,U_AE,U_EntDt From ItemCatMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_107B52B:   Call 0.Method_Proc_86_37_107B7280 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_107B63D:   Call 0.Method_Proc_86_37_107B7280 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmItemCatRaw)
loc_F5D442: var_8C = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),1)+1 AS MyCode From RevMast WHERE SITE_CODE='" & MemVar_1F81070;


-- ### FrmItemMastRaw  (27 statement(s))
-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_1215077: var_94 = "SELECT Code,Name,BarCode,CommodityCode FROM Item Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name";

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_12150E9: var_94 = "SELECT Code,Name,Unit FROM ItemMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') And ItemType='Store' ORDER BY Name";

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_1215154: var_90 = "SELECT I.Code,I.Name,I.Unit,D.Name As Outlet FROM ItemMast I Left Join Depart D On I.RestCode=D.Code Where (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_12151D6: unk_5274A6.Execute "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1;

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_1215246: var_BC = "SELECT Code,Name FROM ItemCatMast where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND Restcode='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_12152C3: var_94 = "SELECT distinct Code,Name,Type FROM ItemGrp Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') And Restcode='";

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_1215350: unk_5274A6.Execute "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1;

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_12153B2: var_90 = "SELECT I.Code+I.RestCode as SearchCode,I.Code,I.Name,I.CommodityCode,DispCode,I.Unit,I.ItemGroup,I.Type,I.PurchRate,I.MinStock,I.MaxStock,I.ReStock,I.U_Name,IG.Name as ItemGrpName,I.ItemCatCode,itemCatMast.Name as Category,I.ConvRatio as ConvRatio,I.IssueUnit as IssueUnit,I.ConsumptionItem,I.SITE_CODE,I.LOGSITE_CODE,I.FinItem,I.ActiveYN,I.RestCode,I.BarCode,I.LabelName,I.LabelQty,I.LabelRemark1,I.LabelRemark2,I.LabelRemark3,I.LabelRemark4,I.LabelRemark5 FROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup)left join itemCatMast on itemCatMast.code=i.ItemCatCode) Where (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_12153B9: var_94 = "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' ORDER BY I.Name";

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_1290382: var_11C = "Select Count(*) From Stock Where ITEM='" & Me.Fields.Item("Code").Value & "' And (RestCode='";

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_12904D6:   var_11C = "Delete From ItemMast Where Code='" & Me.Fields.Item("Code").Value & "' And RestCode='";

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_F1F8E2: var_10C = "SELECT I.Code+I.RestCode as SearchCode,I.Name,I.CommodityCode HSNCode,I.Unit,CAST(I.ConvRatio AS vARcHAR(5)) AS ConvRatio ,I.IssueUnit,IG.Name as ItemGrpName ,IG.Type,cast(I.PurchRate as Varchar(13)) as PurchRate,cast(I.MinStock as VarChar(13)) as MinStock,Cast(I.MaxStock as VarChar(13)) as MaxStock,Cast(I.ReStock as VarChar(13)) as ReStock,itemCatMast.Name AS Category fROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup)left join itemCatMast on itemCatMast.code=i.ItemCatCode) Where (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_107CC5B: var_A0 = "SELECT I.Code as SearchCode,I.Name,I.Unit,IG.Name as ItemGrpName ,IG.Type,I.PurchRate,I.MinStock,I.MaxStock,I.ReStock,I.ItemCatCode,itemCatMast.Name AS Category,IsNull(I.BarCode,'') BarCode,IsNull(I.CommodityCode,'') HSNCode fROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup)left join itemCatMast on itemCatMast.code=i.ItemCatCode) Where (I.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_16DD581:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_98, var_A0, "Select Count(*) From sTOCK Where DocID='", var_B4, -1);

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_16DDB46:   var_A0 = "Insert Into ItemMast (Code,Name,CommodityCode,Unit,ItemGroup,Type,PurchRate,MinStock,MaxStock,ReStock,ItemCatCode,LPURRATE,Site_Code,U_Name,U_EntDt,U_AE,DispCode,ConvRatio,IssueUnit,DiscApp,RestCode,ConsumptionItem,LPurDate,LOGSITE_CODE,FinItem,ActiveYN,ItemType,BarCode,LabelName,LabelQty,LabelRemark1,LabelRemark2,LabelRemark3,LabelRemark4,LabelRemark5) " & "Values ('";

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_16DE304:   var_18C = CVar("UPDATE ItemMast SET Name='" & var_A0 & "',CommodityCode='") & var_C4 & "',ConsumptionItem='" & IIf((var_158.Tag = vbNullString), global_108, CVar(var_194.Tag));

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_16DE640: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_A0, "Select Count(*) From UnitMast Where Name='", var_B4, -1, var_9C);

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_16DE6D4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_A0, "Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('");

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_16DE7B2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_98, var_A0, "Select Count(*) From UnitMast Where Name='", var_B4, -1);

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_16DE846:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_98, var_A0, "Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('");

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_156C728: unk_5274A6.Execute CStr("Select U_Name,U_AE,U_EntDt From Itemmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_156CD77:     unk_5274A6.Execute CStr("Select Max(Name) from Itemmast where Code='" & var_A0.Value & "'And ItemType='Store'"), var_114, -1;

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_156D2D4:     unk_5274A6.Execute CStr("Select Max(Name) from Itemmast where Code='" & var_A0.Value & "'"), var_114, -1;

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_107EA53:   Call 0.Method_Proc_50_49_107EC500 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemMast Where (restcode='" & MemVar_1F81078 & "PURC' ) and Code='", var_A0, -1);

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_107EB65:   Call 0.Method_Proc_50_49_107EC500 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_1040FBD: Me.Connection15.Execute "Select MAX(vno)AS VNO From STOCK s Where s.VType='" & var_90 & "' ", var_B8, -1;

-- [VERIFIED-VB6] (FrmItemMastRaw)
loc_1124094:     unk_5274A6.Execute CStr("Select LPURRATE From iTEMMAST I Where I.CODE='" & var_A4.Value & "' And I.ItemType='Store'"), var_120, -1;


-- ### FrmConsumMast  (15 statement(s))
-- [VERIFIED-VB6] (FrmConsumMast)
loc_1115318: var_B0 = "SELECT ItemMast.Code, ItemMast.Name, ItemMast.Unit, Depart.Name as Department,Case When Itemmast.RestCode='" & MemVar_1F81078 & "BANQ";

-- [VERIFIED-VB6] (FrmConsumMast)
loc_11153A7: var_AC = "Select Code,Name,IssueUnit as Unit,CASE WHEN ISNULL(LPurRate,0)=0 THEN ISNULL(PURCHRATE,0) ELSE ISNULL(LPurRate,0) END AS LPurRate,ConvRatio From ItemMast where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmConsumMast)
loc_11153BC: var_B8 = var_AC & "' or LOGSITE_CODE='HO') and DispCode<>9999 and Code=ConsumptionItem And ActiveYN<>'No'" & " Union " & "Select Code,Name,Unit as Unit,CASE WHEN ISNULL(LPurRate,0)=0 THEN ISNULL(PURCHRATE,0) ELSE ISNULL(LPurRate,0) END AS LPurRate,ConvRatio From ItemMast Where (LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmConsumMast)
loc_1115444: var_B0 = "SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name";

-- [VERIFIED-VB6] (FrmConsumMast)
loc_11154E1: var_B0 = "Select Distinct BOM.FinItem+BOM.RestCode+Convert(Varchar(11),BOM.AppDate,103) as SearchCode,BOM.FinItem,ItemMast.Name,BOM.FinQty,BOM.AppDAte,ItemMast.Unit,BOM.Site_Code,Bom.LogSite_Code,BOM.RestCode,Case When BOM.RestCode='" & MemVar_1F81078 & "BANQ";

-- [VERIFIED-VB6] (FrmConsumMast)
loc_1132B29:   var_C8 = "Delete From BOM Where BOM.FinItem+BOM.RestCode+Convert(Varchar(11),BOM.AppDate,103)='";

-- [VERIFIED-VB6] (FrmConsumMast)
loc_EE8869: var_110 = "Select Distinct BOM.FinItem+BOM.RestCode+Convert(Varchar(11),BOM.AppDate,103) As SearchCode,ItemMast.Name,Convert(Varchar(11),AppDate,106) AppDate,FinQty,Case When BOM.RestCode='" & MemVar_1F81078 & "BANQ";

-- [VERIFIED-VB6] (FrmConsumMast)
loc_14F9D55:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_B8, "Select Count(*) From BOM Where FinItem='", var_1C0, -1);

-- [VERIFIED-VB6] (FrmConsumMast)
loc_14F9EAA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_B8, "Delete From BOM Where FinItem='");

-- [VERIFIED-VB6] (FrmConsumMast)
loc_14FA276:     var_B8 = "Insert Into BOM(Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,Cost,Waste,Total,U_Name,U_EntDt,U_AE,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode) Values ('" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmConsumMast)
loc_14FA4D5: var_44C = "Update ItemMast Set IssueUnit=Unit,convRatio=1,PurchRate=" & var_B8 & ",LPurRate=" & CStr(var_A8) & " where Code='" & var_B0.Tag;

-- [VERIFIED-VB6] (FrmConsumMast)
loc_1178414:   var_AC = "Select D.Name as Depart,BOM.*,ItemMast1.Name as Name,ItemMast1.Unit as WtUnit,ItemMast1.LPurRate,ItemMast1.IssueUnit,Itemmast2.Name as FinItemName,ItemMast2.Unit,(ItemMast1.LPurRate*BOM.RawQty) as ItemTotal, cast('1' as numeric) as DtlCnt From BOM Left Join ItemMast ItemMast1 on ItemMast1.Code=BOM.RawItem And ItemMast1.ItemType='Store' Left Join ItemMast ItemMast2 on ItemMast2.Code=BOM.FinItem And ItemMast2.RestCode=BOM.RestCode Left Join Depart D on Itemmast2.RestCode=D.Code Where BOM.LogSite_Code='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmConsumMast)
loc_106FFF6:   Call 0.Method_Proc_28_52_10701C80 (CInt(0), var_A8, var_A4, "Select Count(*) From BOM Where FinItem='", var_118, -1);

-- [VERIFIED-VB6] (FrmConsumMast)
loc_140D6E4: var_C0 = "Select U_Name,U_AE,U_EntDt From Bom where FinItem+RestCode+Convert(Varchar(11),AppDate,103)='";

-- [VERIFIED-VB6] (FrmConsumMast)
loc_140DC40:   var_C0 = "Select BOM.*,ItemMast.Name as Name,ItemMast.Unit,ItemMast.LPurRate,ItemMast.IssueUnit From BOM Left Join ItemMast on ItemMast.Code=BOM.RawItem And (ItemMast.ItemType='Store' Or GravyItem='Yes') where BOM.FinItem+BOM.RestCode+Convert(Varchar(11),BOM.AppDate,103)='";


-- ### DepartSundry  (13 statement(s))
-- [VERIFIED-VB6] (DepartSundry)
loc_EAC4AA: MemVar_1F810E4 = "Select (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,VT.Description,Convert(Varchar(11),SP.AppDate,103) As AppDate,SP.SNo,SM.Name As SundryName,SP.DispName,SP.CalcFormula,RM.Name As Revenue,PostYN From (((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Order by VT.Description,SP.AppDate,SP.SNo";

-- [VERIFIED-VB6] (DepartSundry)
loc_151C1E8:     var_9C = "Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName," & "CalcFormula,PerOrAmt,RoundOff,SValue,Limit,";

-- [VERIFIED-VB6] (DepartSundry)
loc_FC8598:   var_A4 = " SELECT DISTINCT RM.Code as Code,RM.Name as NAme,RM.Type FROM RevMast AS RM WHERE  (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and RM.FieldType='T'";

-- [VERIFIED-VB6] (DepartSundry)
loc_FC85AD:   var_B0 = var_A4 & " Union " & " Select Distinct RM.Code as Code,RM.Name as NAme,RM.Type From RevMast RM Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (DepartSundry)
loc_10F146F: var_BC = CVar("Select Code,Name,Nature,SysYN From SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order By Name") 'String;

-- [VERIFIED-VB6] (DepartSundry)
loc_10F14F2: var_BC = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND (FlagType ='PUR' or FlagType  Is Null) and FlagAMR is NULL Order By Name") 'String;

-- [VERIFIED-VB6] (DepartSundry)
loc_10F156E: var_AC = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,SITEcODE AS SITE_CODE,LOGSITE_CODE From SundryType SP Where V_Type ='" & MemVar_1F81078;

-- [VERIFIED-VB6] (DepartSundry)
loc_10F1575: var_BC = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "PURC' Order By (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))") 'String;

-- [VERIFIED-VB6] (DepartSundry)
loc_F92834: unk_4EFC55.Execute "Select SundryPassword from Enviro where LogSite_Code='" & MemVar_1F81078 & "'", var_B4, -1;

-- [VERIFIED-VB6] (DepartSundry)
loc_10026A6: Call 0.Method_CmdChange_Click0 (CInt(2), var_90, var_11C, "Update Enviro set SundryPassword='");

-- [VERIFIED-VB6] (DepartSundry)
loc_F8FBBC: var_98 = "Select Count(*) From SundryType Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and (V_Type='" & MemVar_1F81078 & "PURC";

-- [VERIFIED-VB6] (DepartSundry)
loc_145E5D7:   var_C8 = "Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName,D.Name As Department From ((((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join Depart D On VT.RestCode=D.Code) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Where SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)='";

-- [VERIFIED-VB6] (DepartSundry)
loc_12D3FD3: var_B4 = "SELECT SF.*,SM.Name as SundryName" & " FROM SundryTypeFix SF inner JOIN SundryMast SM ON (SF.SundryCode = SM.Code and SF.LogSite_Code=Sm.LogSite_Code) where (SF.LOGSITE_CODE='";


-- ### FrmOPStock  (13 statement(s))
-- [VERIFIED-VB6] (FrmOPStock)
loc_10CDFC4:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_124, var_128, "Delete From Stock Where DocId='", var_B8);

-- [VERIFIED-VB6] (FrmOPStock)
loc_EAB83E: MemVar_1F810E4 = "SELECT distinct Stock.DocId AS SearchCode,Stock.Vno,CAST(Vdate AS VarChar(11)) as OpeningDate,ItemMast.name as ItemName ,Stock.QtyRec,Depart.Name as Department FROM (Stock INNER JOIN ItemMast ON Stock.Item = ItemMast.Code And ItemMast.ItemType='Store') INNER JOIN Depart ON Stock.DepartCode = Depart.Code WHERE (((Stock.Vtype)='STOP')) Order by Depart.Name";

-- [VERIFIED-VB6] (FrmOPStock)
loc_109D0B0: var_D4 = "SELECT Stock.Vdate,Stock.Sno,Stock.Item,Stock.QtyRec Qty,Stock.Unit WtUnit,Stock.Rate,Stock.Amount,Stock.DepartCode,Stock.GodownCode,Stock.RecdQty WtQty,Stock.ConvRatio,ItemMast.Name as ItemName,ItemMast.IssueUnit Unit, GodownMast.Name as GodownName ,Stock.GodownCode FROM (Stock INNER JOIN ItemMast ON Stock.Item = ItemMast.Code And ItemMast.ItemType='Store') INNER JOIN GodownMast ON Stock.GodownCode = GodownMast.Code where Stock.Docid='";

-- [VERIFIED-VB6] (FrmOPStock)
loc_14A8F79:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_B4, "Delete From Stock Where Docid='");

-- [VERIFIED-VB6] (FrmOPStock)
loc_14A92F1:     var_B4 = "Insert Into Stock (DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code,GodownCode,Item,DepartCode,U_Name,U_EntDt,U_AE,Specification," & "ChalQty,RecdQty,RejQty,AccQty,Unit,ConvRatio,QtyRec,Rate,RecdUnit,Amount,Logsite_Code) ";

-- [VERIFIED-VB6] (FrmOPStock)
loc_14A95FF:   var_B4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmOPStock)
loc_14A96C7:     var_1C0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(global_136) & " Where (SITE_CODE='" & MemVar_1F81070 & "' AND LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmOPStock)
loc_109A384: var_AC = "SELECT ItemMast.Code, ItemMast.Name, ItemMast.Unit,Itemmast.IssueUnit,ItemMAst.ConvRatio,ItemMast.PurchRate FROM ItemMast Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmOPStock)
loc_109A40E: var_BC = CVar("Select Code,Name From GodownMast where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (FrmOPStock)
loc_109A48A: var_AC = "Select Distinct DocId as SearchCode,VType,Vno,vPrefix,Site_Code,LogSite_Code From Stock  where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmOPStock)
loc_1459DCB:   var_E0 = "SELECT Stock.Vdate,Stock.Sno,Stock.U_Name,Stock.U_AE,Stock.U_EntDt,Stock.Item,Stock.QtyRec,Stock.Unit,Stock.Rate,Stock.Amount,Stock.DepartCode,Stock.GodownCode,Stock.RecdQty,Stock.AccQty,Stock.RecdUnit,Stock.ConvRatio,ItemMast.Name as ItemName,ItemMast.IssueUnit, GodownMast.Name as GodownName ,Stock.GodownCode FROM (Stock INNER JOIN ItemMast ON Stock.Item = ItemMast.Code And ItemMast.ItemType='Store') INNER JOIN GodownMast ON Stock.GodownCode = GodownMast.Code where Stock.Docid='";

-- [VERIFIED-VB6] (FrmOPStock)
loc_1040514: var_98 = "Select * From Stock Where VType='STOP' And LogSite_Code='" & MemVar_1F81078 & "' And Item='";

-- [VERIFIED-VB6] (FrmOPStock)
loc_1093AEC: var_94 = "Select VT.Number_Method,VP.V_Type,Vt.Description,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F81070;


-- ### FrmItemGroupMastRaw  (13 statement(s))
-- [VERIFIED-VB6] (FrmItemGroupMastRaw)
loc_11B5C2B: var_C4 = "SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code WHERE (ItemGrp.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemGroupMastRaw)
loc_11B5CAF: var_C4 = "SELECT IG.Code,IG.Name As ItemGroup,IG.Type,D.Name As RestName,IG.Site_Code,IG.LogSite_Code,IG.CatType,IG.CommodityCode FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE (IG.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemGroupMastRaw)
loc_11B5D43: var_D8 = "Select Code,Name From Depart Where (Depart.LOGSITE_CODE='" & MemVar_1F81078 & "' or Depart.LOGSITE_CODE='HO') and OutletYN='N' Order by Name";

-- [VERIFIED-VB6] (FrmItemGroupMastRaw)
loc_1126A38:   var_114 = "Delete From ItemGrp Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FrmItemGroupMastRaw)
loc_F6F62C:   var_10C = "Select IG.Code As SearchCode,IG.Name,IG.CommodityCode,D.Name As DepartName FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE (IG.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemGroupMastRaw)
loc_F6F644:   var_10C = "Select IG.Code As SearchCode,IG.Name,IG.Type,IG.CatType FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE (IG.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmItemGroupMastRaw)
loc_107C092: var_A4 = "select IG.Code,IG.Name As ItemGroup,IG.Type,IG.CommodityCode FROM ItemGrp as IG WHERE (IG.LOGSITE_CODE='" & MemVar_1F81078 & "' or IG.LOGSITE_CODE='HO') and IG.TYPE <>'Finish'  ORDER BY IG.Name";

-- [VERIFIED-VB6] (FrmItemGroupMastRaw)
loc_12F31B6:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemGrp Where Site_Code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmItemGroupMastRaw)
loc_12F32FD:   var_9C = "Insert Into ItemGrp(Code,Name,Type,RestCode,CatType,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,CommodityCode) Values('" & global_68;

-- [VERIFIED-VB6] (FrmItemGroupMastRaw)
loc_12F34BC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, var_9C, "UPDATE ItemGrp SET Name='");

-- [VERIFIED-VB6] (FrmItemGroupMastRaw)
loc_1284CA4: unk_483A84.Execute CStr("Select U_Name,U_AE,U_EntDt From ItemGrp where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (FrmItemGroupMastRaw)
loc_10ED8DF:   Call 0.Method_Proc_114_35_10EDB4C0 (CInt(2), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (FrmItemGroupMastRaw)
loc_10EDA2A:   Call 0.Method_Proc_114_35_10EDB4C0 (CInt(2), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and (Name='", var_A0, -1);


-- ### frmPurEnviro  (9 statement(s))
-- [VERIFIED-VB6] (frmPurEnviro)
loc_10010CD: var_9C = CVar("Select SubCode as Code,Name From SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (frmPurEnviro)
loc_1001159: var_9C = CVar("Select Code,Name From Godownmast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (frmPurEnviro)
loc_10011F2: Me.Recordset15.Open CVar("Select * From Enviro WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "')"), CVar(MemVar_1F81044), 2;

-- [VERIFIED-VB6] (frmPurEnviro)
loc_1001246: var_9C = CVar("Select Code,Name From RevMast Where  FieldType='T' and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (frmPurEnviro)
loc_12479EB: Call 0.Method_CmdSave_Click0 (CInt(1), var_94, var_98, "Update Enviro Set  CashPurchAc='");

-- [VERIFIED-VB6] (frmPurEnviro)
loc_15004B8:   Call 0.Method_Proc_294_19_15012C80 (CInt(1), var_A0, var_BC, "Select Name From SubGroup Where SubCode='");

-- [VERIFIED-VB6] (frmPurEnviro)
loc_15006A9:   Call 0.Method_Proc_294_19_15012C80 (CInt(2), var_A0, var_BC, "Select Name From Godownmast Where Code='");

-- [VERIFIED-VB6] (frmPurEnviro)
loc_150089A:   Call 0.Method_Proc_294_19_15012C80 (CInt(&HD), var_A0, var_BC, "Select Name From Godownmast Where Code='");

-- [VERIFIED-VB6] (frmPurEnviro)
loc_1500A85:   Call 0.Method_Proc_294_19_15012C80 (7, var_A0, var_BC, "Select MAx(Name) As Name From RevMast Where FieldType='T' and Code='");


-- ---------------------------------------------------------------------------
-- PayRoll Setup
-- ---------------------------------------------------------------------------

-- ### PrDesigMast  (11 statement(s))
-- [VERIFIED-VB6] (PrDesigMast)
loc_FB5260: unk_4559EF.Execute "SELECT Code,Name FROM Desig where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1;

-- [VERIFIED-VB6] (PrDesigMast)
loc_FB52C9: var_94 = "SELECT D.*,D.Code as SearchCode FROM Desig D where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Name";

-- [VERIFIED-VB6] (PrDesigMast)
loc_105E475:   var_118 = "Delete From Desig Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (PrDesigMast)
loc_F102EE: MemVar_1F810E4 = "Select Code As SearchCode,Name FROM Desig Order by Name";

-- [VERIFIED-VB6] (PrDesigMast)
loc_1090A91: unk_4559EF.Execute "SELECT * from Desig order by Name", var_BC, -1;

-- [VERIFIED-VB6] (PrDesigMast)
loc_1248005:     var_9C = "Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From Desig where Site_Code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (PrDesigMast)
loc_124808A:       var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From Desig where site_code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (PrDesigMast)
loc_12481D1:   var_9C = "Insert Into Desig(Code,Name,Site_Code,U_Name,U_EntDt,U_AE,Logsite_Code) Values('" & global_64;

-- [VERIFIED-VB6] (PrDesigMast)
loc_12482C0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE Desig SET Name='");

-- [VERIFIED-VB6] (PrDesigMast)
loc_1082E3F:   Call 0.Method_Proc_314_30_108303C0 (CInt(0), var_A8, var_AC, "Select Count(*) From Desig Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (PrDesigMast)
loc_1082F51:   Call 0.Method_Proc_314_30_108303C0 (CInt(0), var_A8, var_AC, "Select Count(*) From Desig Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);


-- ### prHoliday  (17 statement(s))
-- [VERIFIED-VB6] (prHoliday)
loc_143731B: var_110 = "Select count(*) from salary where mth_year='" & var_F0;

-- [VERIFIED-VB6] (prHoliday)
loc_1437426:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B0, "Select * from employee where joining_date<=", var_1B4, -1);

-- [VERIFIED-VB6] (prHoliday)
loc_1437556:     var_180 = "Select * from attendence where Emp_Code='" & Me.Recordset15.Fields.Item("Code").Value & "' and mth_Year='" & Format(CVar(var_15C), "MMMyyyy");

-- [VERIFIED-VB6] (prHoliday)
loc_1437AF8:       var_154 = CVar("Update Attendence set Attn_Str='" & var_A0 & "' Where mth_Year='") & Format(CVar(var_B0), var_E0) & "' And Emp_Code='";

-- [VERIFIED-VB6] (prHoliday)
loc_1437B67:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B0, "Delete From Attend Where V_Date=", var_1A0, -1, var_170, var_170);

-- [VERIFIED-VB6] (prHoliday)
loc_1437C39:   var_F0 = "Delete From Holiday Where VDate=" & var_E0;

-- [VERIFIED-VB6] (prHoliday)
loc_EEE221:   var_10C = "Select VDate as SearchCode,Convert(Varchar(11),vdate,103) as Holiday, convert(varchar(50),Remarks,103) as Remarks From Holiday where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (prHoliday)
loc_EEE24B:     MemVar_1F810E4 = "Select VDate as SearchCode,vdate as Holiday, Remarks From Holiday where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by VDate";

-- [VERIFIED-VB6] (prHoliday)
loc_10020E5: var_88 = "Select H.*, H.VDate as SearchCode From Holiday H Order by VDate";

-- [VERIFIED-VB6] (prHoliday)
loc_14874A9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, "Select * from employee where joining_date<=");

-- [VERIFIED-VB6] (prHoliday)
loc_14875D9:     var_150 = "Select * from attendence where Emp_Code='" & Me.Recordset15.Fields.Item("Code").Value & "' and mth_Year='" & Format(CVar(var_120), "MMMyyyy");

-- [VERIFIED-VB6] (prHoliday)
loc_1487B8D:       var_140 = CVar("Update Attendence set Attn_Str='" & var_A4 & "' Where mth_Year='") & Format(CVar(var_AC), var_DC) & "' And Emp_Code='";

-- [VERIFIED-VB6] (prHoliday)
loc_1487BFC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, "Delete From Attend Where V_Date=", var_170, -1, var_194, var_194);

-- [VERIFIED-VB6] (prHoliday)
loc_1487C9F:   var_B4 = "Insert Into Holiday(" & "VDate,Remarks,sITE_cODE,U_Name,U_EntDt,U_AE,LogSite_Code) ";

-- [VERIFIED-VB6] (prHoliday)
loc_1487DE5:   "Update Holiday Set Remarks='" = var_AC.Text;

-- [VERIFIED-VB6] (prHoliday)
loc_F13411: var_A0 = CVar("Select H.*, H.VDate as SearchCode From Holiday H where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') Order by Vdate") 'String;

-- [VERIFIED-VB6] (prHoliday)
loc_F82D0C:   var_C4 = CVar("Select Count(*) From Holiday Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and VDate=") 'String;


-- ### PrEmployee  (32 statement(s))
-- [VERIFIED-VB6] (PrEmployee)
loc_12497D2:     unk_523678.Execute "Delete From Salary Where Site_code='" & MemVar_1F81070 & "' And Emp_Code='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1;

-- [VERIFIED-VB6] (PrEmployee)
loc_1249832:     unk_523678.Execute "Delete From Attend Where Site_code='" & MemVar_1F81070 & "' And Emp_Code='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1;

-- [VERIFIED-VB6] (PrEmployee)
loc_1249892:     unk_523678.Execute "Delete From Attendence Where Site_code='" & MemVar_1F81070 & "' And Emp_Code='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1;

-- [VERIFIED-VB6] (PrEmployee)
loc_12498F2:     unk_523678.Execute "Delete From Loan Where Site_code='" & MemVar_1F81070 & "' And Emp_Code='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1;

-- [VERIFIED-VB6] (PrEmployee)
loc_1249952:     unk_523678.Execute "Delete From Leave_Ench Where Site_code='" & MemVar_1F81070 & "' And Emp_Code='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1;

-- [VERIFIED-VB6] (PrEmployee)
loc_12499B2:     unk_523678.Execute "Delete From OverTime Where Site_code='" & MemVar_1F81070 & "' And EmpCode='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1;

-- [VERIFIED-VB6] (PrEmployee)
loc_12499E2:     var_9C = "DELETE FROM EMPLOYEE WHERE SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (PrEmployee)
loc_113462B: var_90 = "SELECT Employee.code as searchcode,employee.*,EC.Name as CatName,Desig.Name as DesigName,SG.Name as AcName,EC.Code as CatCode,Desig.Code as DesigCode,SG.SubCode as AcCode,SG1.SubCode as LoanCode,SG1.Name as LoanName,D.Code As DepartCode,D.Name As DepartName FROM ((((Employee Left Join EmpCategory EC on EC.Code=Employee.Category) Left Join Desig on Desig.Code=Employee.Designation) Left Join SubGroup SG on SG.SubCode=Employee.AC_Code) left join Subgroup SG1 on SG1.Subcode=Employee.loanAc) Left Join Depart D On D.Code=Employee.Department where (Employee.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (PrEmployee)
loc_1134690: var_B4 = "Select G.Code,G.Name From GodownMast G iNNER join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F81078 & "')  Order by G.Name";

-- [VERIFIED-VB6] (PrEmployee)
loc_113470B: unk_523678.Execute "SELECT Code, Name FROM Desig where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_A0, -1;

-- [VERIFIED-VB6] (PrEmployee)
loc_1134774: var_B4 = "SELECT SubCode as Code, Name FROM SubGroup where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Nature='Employee' ORDER BY Name";

-- [VERIFIED-VB6] (PrEmployee)
loc_11347EF: unk_523678.Execute "SELECT SubCode as Code, Name FROM SubGroup where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_A0, -1;

-- [VERIFIED-VB6] (PrEmployee)
loc_1134864: unk_523678.Execute "SELECT Code, Name FROM EmpCategory where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_A0, -1;

-- [VERIFIED-VB6] (PrEmployee)
loc_F6F011:   var_BC = "SELECT Employee.code as searchcode,employee.*,EC.Name as CatName,Desig.Name as DesigName,SG.Name as AcName,EC.Code as CatCode,Desig.Code as DesigCode,SG.SubCode as AcCode FROM (((Employee Left Join EmpCategory EC on EC.Code=Employee.Category) Left Join Desig on Desig.Code=Employee.Designation) Left Join SubGroup SG on SG.SubCode=Employee.AC_Code) ORDER BY Employee." & var_B8;

-- [VERIFIED-VB6] (PrEmployee)
loc_130554E:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From Salary Where site_code='" & MemVar_1F81070 & "' and Emp_Code='");

-- [VERIFIED-VB6] (PrEmployee)
loc_1305620:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From Attend Where site_code='" & MemVar_1F81070 & "' and Emp_Code='");

-- [VERIFIED-VB6] (PrEmployee)
loc_13056F2:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From Attendence Where site_code='" & MemVar_1F81070 & "' and Emp_Code='");

-- [VERIFIED-VB6] (PrEmployee)
loc_13057C4:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From Loan Where site_code='" & MemVar_1F81070 & "' and Emp_Code='");

-- [VERIFIED-VB6] (PrEmployee)
loc_1305896:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From Leave_Ench Where site_code='" & MemVar_1F81070 & "' and Emp_Code='");

-- [VERIFIED-VB6] (PrEmployee)
loc_1305968:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From OverTime Where site_code='" & MemVar_1F81070 & "' and EmpCode='");

-- [VERIFIED-VB6] (PrEmployee)
loc_1305A93:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, "DELETE FROM EMPLOYEE WHERE CODE=");

-- [VERIFIED-VB6] (PrEmployee)
loc_EADB0D: var_10C = "SELECT Employee.Code as SearchCode, Employee.Name, Employee.Sex, Employee.F_Name, cast(Employee.Birth_Date as varchar(11)) as BirthDate, Employee.Add1, Employee.Add2, Employee.Marital, cast(Employee.Joining_Date as varchar(11)) as JoiningDate, cast(Employee.Resign_Date as varchar(11)) as ResignDate,Case ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' End As Active FROM Employee where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (PrEmployee)
loc_F8CF90: var_88 = "SELECT EMPCATEGORY.Name as Cat_Desc,DESIG.Name as Desg_Desc, Employee.Code, Employee.Name, Employee.Sex, Employee.F_Name, Employee.Birth_Date, Employee.Add1, Employee.Add2, Employee.Marital, Employee.Spouse, Employee.Qualification, Employee.Joining_Date, Employee.ESI_Code, Employee.PF_Code, Employee.Basic, Employee.DA, Employee.HRA ,Employee.Income_Tax, Employee.Other_Allow, Employee.Other_Deduc, Employee.Medical, Employee.Conveyance, Employee.LTA, Employee.PF, Employee.ESI, Employee.IdProof, Employee.IdProofNo FROM (Employee LEFT JOIN Desig ON Employee.Designation = Desig.Code) LEFT JOIN EmpCategory ON Employee.Category = EmpCategory.Code";

-- [VERIFIED-VB6] (PrEmployee)
loc_19EDDE8:   var_B8 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From Employee where Site_Code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (PrEmployee)
loc_19EE028:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B0, "SELECT COUNT(*) FROM EMPLOYEE WHERE ESI_Code=", (var_B0.Text = "Yes") And (var_DC = vbNullString), -1, var_B4);

-- [VERIFIED-VB6] (PrEmployee)
loc_19EE15B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B0, "SELECT COUNT(*) FROM EMPLOYEE WHERE PF_Code=", (var_B0.Text = "Yes") And (var_DC = vbNullString), -1);

-- [VERIFIED-VB6] (PrEmployee)
loc_19EE2A1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B0, "SELECT COUNT(*) FROM EMPLOYEE WHERE ESI_Code=", (var_B0.Text = "Yes") And (var_DC = vbNullString), -1, var_B4);

-- [VERIFIED-VB6] (PrEmployee)
loc_19EE3D4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B0, "SELECT COUNT(*) FROM EMPLOYEE WHERE PF_Code=", (var_B0.Text = "Yes") And (var_DC = vbNullString), -1);

-- [VERIFIED-VB6] (PrEmployee)
loc_19EE4F4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, "SELECT COUNT(*) FROM Employee WHERE code = ", (var_B0.Text = "Yes") And (var_DC = vbNullString), -1);

-- [VERIFIED-VB6] (PrEmployee)
loc_19EF01D:   var_B8 = "INSERT INTO EMPLOYEE (Code,Name,F_Name,Add1,Add2,Spouse,Qualification,ESI_Code, PF_Code,Basic,DA,HRA,Income_Tax,Other_Allow,Other_Deduc,Conveyance,Medical,LTA,Curr_PF_Balance, OP_PF_Balance,OP_Loan,OP_Inst,OP_Advance,Tot_CL_Allow,Tot_EL_Allow,OP_Earned,OP_Casual, Curr_Earned,Curr_Casual,Department,Designation,Category,AC_CODE,Birth_Date,Joining_Date,Resign_Date,Sex,Marital, PF_YN, ESI_YN,Phone,PAN,increment,sunday,TOT_DL_ALLOW,TOT_VL_ALLOW,CURR_VL,CURR_DL,BankAcNo,IncrMth,OTRate,Offday,LOanAc,Site_Code,U_EntDt,U_AE,U_Name,LOGSITE_CODE,ActiveYN,PicPath,IdPicPath,IdProof,IdProofNo) VALUES ('" & global_72;

-- [VERIFIED-VB6] (PrEmployee)
loc_19EFFD3:   var_FC = "UPDATE EMPLOYEE SET Name=";

-- [VERIFIED-VB6] (PrEmployee)
loc_E9D331: MemVar_1F810E4 = "SELECT  code as searchcode, code as Emp_Code, Name As Emp_Name, Sex, Basic, Add1 As Address , Phone AS Phone_No, PAN As PAN_No , str(Joining_Date) as JoiningDate, str(Resign_Date) as ResignDate, cat_desc as Category,desg_desc as Designation FROM  ( Employee  left join category_emp ON EMPLOYEE.CATEGORY=CATEGORY_EMP.CAT_CODE) LEFT JOIN DESIG ON EMPLOYEE.DESIGNATION=DESIG.DESG_CODE ORDER BY  Code, Name";


-- ### PrCategoryMast
--     no SQL extracted from this object  [UNKNOWN]

-- ---------------------------------------------------------------------------
-- EPABX Setup
-- ---------------------------------------------------------------------------

-- ### TelCallType
--     no SQL extracted from this object  [UNKNOWN]

-- ### TelExtension
--     no SQL extracted from this object  [UNKNOWN]

-- ### TelCallCode
--     no SQL extracted from this object  [UNKNOWN]

-- ---------------------------------------------------------------------------
-- Financial Setup
-- ---------------------------------------------------------------------------

-- ### FaGrEnt  (36 statement(s))
-- [VERIFIED-VB6] (FaGrEnt)
loc_EE9D59: MemVar_1F810E4 = "Select GROUPCODE As SearchCode,GroupName,GroupNature,Nature FROM AcGroup Where (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') AND AliasYN<>'Y' Order by GroupName";

-- [VERIFIED-VB6] (FaGrEnt)
loc_10898AF: var_A0 = "select SYSGROUP,GroupName,Nature,GNature= CASE GroupNature WHEN 'A' THEN 'A S S E T S' WHEN 'E' THEN 'E X P E N D I T U R E' WHEN 'L' THEN 'L I A B I L I T Y' WHEN 'R' THEN 'R E V E N U E' ELSE 'Others' END,MainGrCode from acgroup WHERE (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaGrEnt)
loc_13B6C02: var_B0 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup Where MainGrCode<>'999' AND (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaGrEnt)
loc_13B6CF6: var_C0 = CVar("Select ID,GroupCode,GroupName,GroupHelp,Nature From AcGroup Where MainGrCode<>'999' AND (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') Order by GroupHelp") 'String;

-- [VERIFIED-VB6] (FaGrEnt)
loc_13B6D00: ar("Select ID,GroupCode,GroupName,GroupHelp,Nature From AcGroup Where MainGrCode<>'999' AND (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') Order by GroupName"), CVar(MemVar_1F811DC), 2 var_C0, CVar(MemVar_1F811DC), 2;

-- [VERIFIED-VB6] (FaGrEnt)
loc_13B72B6: var_B0 = "Select GROUPCODE as SearchCode,ID,Site_Code,GroupCode,GroupName,GroupNameBiLang,GroupNature,MainGrCode,CurrentBalance,SubLedYN,BlOrd,AliasYN,GroupHelp,Nature,SysGroup,TRADINGYN,LogSite_Code From AcGroup Where (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaGrEnt)
loc_131C457:           Call 0.Method_Txt_KeyDown0 (CInt(2), var_9C, var_BC, "Select GroupHelp From AcGroup Where GroupHelp='");

-- [VERIFIED-VB6] (FaGrEnt)
loc_131C69A:             unk_4B40A5.Execute "Select GroupCode,GroupName,MainGrCode,Nature,AliasYN From AcGroup Where GroupCode='" & CStr(var_B8) & "'", var_B8, -1;

-- [VERIFIED-VB6] (FaGrEnt)
loc_147C14C:     Call 0.Method_Txt_Validate0 (CInt(0), var_9C, var_A0, "Select GroupHelp From AcGroup Where GroupHelp='");

-- [VERIFIED-VB6] (FaGrEnt)
loc_147C225:     var_A0 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup Where MainGrCode<>'999' AND (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaGrEnt)
loc_147C2D0:       Call 0.Method_Txt_Validate0 (CInt(0), var_9C, var_A0, "Select GroupHelp From AcGroup Where GroupHelp='", var_B0);

-- [VERIFIED-VB6] (FaGrEnt)
loc_147C4E3:       Call 0.Method_Txt_Validate0 (CInt(2), var_9C, var_A0, "Select GroupHelp From AcGroup Where GroupHelp='");

-- [VERIFIED-VB6] (FaGrEnt)
loc_147C6B4:         Call 0.Method_Txt_Validate0 (CInt(2), var_9C, var_A0, "Select GroupHelp From AcGroup Where GroupHelp='");

-- [VERIFIED-VB6] (FaGrEnt)
loc_147C8C0:         var_A0 = "Select GroupCode,GroupName,MainGrCode,Nature,AliasYN,TRADINGYN,GroupNature From AcGroup Where GroupCode='" & CStr(var_B0);

-- [VERIFIED-VB6] (FaGrEnt)
loc_14C501D: unk_4B40ED.Execute CStr("Select U_Name,U_AE,U_EntDt From Acgroup where groupCode='" & Me.Fields.Item("GroupCode").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (FaGrEnt)
loc_14C5740:   Call 0.Method_Proc_201_31_14C5D280 (CInt(0), var_A0, var_F4, "Select ID,GroupCode,GroupName,GroupNameBiLang,MainGrCode,Nature,SubLedYN,AliasYN,GroupHelp From AcGroup Where GroupCode='");

-- [VERIFIED-VB6] (FaGrEnt)
loc_14C58CE:       var_170 = "Select GroupName From AcGroup Where MainGrCode='" & Left(CVar(var_88.Fields.Item("MainGrCode")), CLng((var_88.Fields.Item("MainGrCode").Value = "Y")));

-- [VERIFIED-VB6] (FaGrEnt)
loc_14C59E7:       var_F4 = CStr("Select GroupCode From AcGroup Where MainGrCode='" & Left(CVar(var_A0), CLng((var_A0.Value = "Y"))) & "'");

-- [VERIFIED-VB6] (FaGrEnt)
loc_1226BA5: var_C8 = "SELECT COUNT(*) from ACGROUP WHERE LEFT(MAINGRCODE,LEN(MAINGRCODE)-3) ='";

-- [VERIFIED-VB6] (FaGrEnt)
loc_1226CAE: var_D8 = "SELECT COUNT(*) from SUBGROUP WHERE GROUPCODE='" & Me.Fields.Item("GroupCode").Value;

-- [VERIFIED-VB6] (FaGrEnt)
loc_1226D85: var_D8 = "SELECT COUNT(*) from LEDGER WHERE GROUPCODE='" & Me.Fields.Item("GroupCode").Value;

-- [VERIFIED-VB6] (FaGrEnt)
loc_1226ED6:     var_F8 = "Delete From AcGroup Where GroupCode='" & Me.Fields.Item("GroupCode").Value & "'";

-- [VERIFIED-VB6] (FaGrEnt)
loc_15B5BC8: var_CC = "Select * FROM ACGROUP WHERE GROUPCODE='" & global_76;

-- [VERIFIED-VB6] (FaGrEnt)
loc_15B5E04:     Call 0.Method_Proc_201_34_15B6DAC0 (CInt(4), var_104, var_CC, "Select * FROM ACGROUP WHERE GROUPCODE='", var_F8);

-- [VERIFIED-VB6] (FaGrEnt)
loc_15B601D:         var_CC = "Select COUNT(*) from AcGroup Where MAINGRCODE='" & CStr(1 & var_114);

-- [VERIFIED-VB6] (FaGrEnt)
loc_15B61DB: unk_4B40A5.Execute "SELECT * FROM ACGROUP WHERE LEFT(MAINGRCODE,LEN('" & var_C4 & "'))='" & var_C4 & "'", var_F8, -1;

-- [VERIFIED-VB6] (FaGrEnt)
loc_15B62BA:     var_CC = "UPDATE ACGROUP SET SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FaGrEnt)
loc_15B63BE: Call 0.Method_Proc_201_34_15B6DAC0 (CInt(0), var_104, var_CC, "Update AcGroup Set GroupName='", var_33C, -1);

-- [VERIFIED-VB6] (FaGrEnt)
loc_15B6619: Call 0.Method_Proc_201_34_15B6DAC0 (CInt(5), var_104, var_D0, "Update AcGroup Set GroupNature='" & var_9C & "',Nature='");

-- [VERIFIED-VB6] (FaGrEnt)
loc_15B670C: Call 0.Method_Proc_201_34_15B6DAC0 (CInt(5), var_104, var_D0, "Update SubGroup Set SubGroup.GroupNature='" & var_9C & "',SubGroup.Nature='");

-- [VERIFIED-VB6] (FaGrEnt)
loc_15B67C8: unk_4B40A5.Execute "UPDATE LEDGER SET GROUPNATURE='" & var_9C & "' Where GROUPCODE='" & global_76 & "'", var_F8, -1;

-- [VERIFIED-VB6] (FaGrEnt)
loc_15B680A: Proc_183_9_EA21B8(var_F8, MemVar_1F81070, CVar("Select ID From AcGroup Where GroupName='" & global_56 & "' AND Site_Code="), var_16C);

-- [VERIFIED-VB6] (FaGrEnt)
loc_15B6895:   Proc_183_9_EA21B8(var_F8, MemVar_1F81070, CVar("Select ID From AcGroup Where GroupName='" & global_56 & "' AND Site_Code="), var_16C, -1);

-- [VERIFIED-VB6] (FaGrEnt)
loc_15B691A:   Proc_183_9_EA21B8(var_F8, MemVar_1F81070, CVar("Delete From AcGroup Where ID=" & CStr(var_94) & " AND Site_Code="), var_16C);

-- [VERIFIED-VB6] (FaGrEnt)
loc_15B69B5:   Proc_183_9_EA21B8(var_F8, MemVar_1F81070, "Select isnull(max(ID),0) From AcGroup WHERE Site_Code=", var_FC & var_F8, -1, var_FC);

-- [VERIFIED-VB6] (FaGrEnt)
loc_15B6A2A:   var_D0 = "Insert Into AcGroup (ID,Site_Code,GroupCode,GroupName,GroupNameBiLang,GroupNature,MainGrCode,Nature,AliasYN,GroupHelp,U_Name,U_EntDt,U_AE,BlOrd,SysGroup,TradingYN,LOGSITE_CODE,MAINGRLEN) Values (" & CStr(var_94);


-- ### FaSubGroup  (44 statement(s))
-- [VERIFIED-VB6] (FaSubGroup)
loc_126B720: var_C4 = CVar("Select SubCode As Code,Name,NameHelp,GroupCode From SubGroup WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (FaSubGroup)
loc_126B79C: var_B4 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup WHERE (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaSubGroup)
loc_126B826: var_C4 = CVar("Select CityCode As Code,CityName As Name,CityHelp From City WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') Order by CityName") 'String;

-- [VERIFIED-VB6] (FaSubGroup)
loc_126B8A9: var_C4 = CVar("Select Code,Name From TDSCAT WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (FaSubGroup)
loc_126B942: var_C8 = "Select SubCode As SearchCode,SubCode,Site_Code,Name,LOGSITE_CODE From SubGroup Where (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') order by Name";

-- [VERIFIED-VB6] (FaSubGroup)
loc_112C4EC: var_C4 = "Select SubCode,Name,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,Active=CASE ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' END,CreditLimit,CreditDays,Remark,GSTIN From (SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode " & CStr(CVar(var_A0) & var_17C & CVar(MemVar_1F81078) & "' OR S.LOGSITE_CODE='HO')");

-- [VERIFIED-VB6] (FaSubGroup)
loc_E79FCF:   Proc_183_43_EF0924(" Select GroupCode,GroupName,maingrcode From AcGroup Where (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') AND MainGrCode<>'999' Order by GroupName", Me.DCGroup, "GroupName");

-- [VERIFIED-VB6] (FaSubGroup)
loc_FC8B0E:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_90, var_94, "SELECT COUNT(*) From Ledger Where (SubCode= '", var_D0, -1);

-- [VERIFIED-VB6] (FaSubGroup)
loc_EE7EF6: var_10C = "Select SubCode As SearchCode,SubCode as Code,Name,Case ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' End As Active,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,GSTIN,CreditLimit,CreditDays,Remark From ((SubGroup S Left Join AcGroup G on (S.GroupCode=G.GroupCode)) Left Join City C on (S.CityCode=C.CityCode)) Where G.AliasYN<>'Y' AND (S.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaSubGroup)
loc_130955B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='");

-- [VERIFIED-VB6] (FaSubGroup)
loc_1309668:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='");

-- [VERIFIED-VB6] (FaSubGroup)
loc_1554D88:     Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select AcCode From SubGroup Where AcCode='", var_D0);

-- [VERIFIED-VB6] (FaSubGroup)
loc_1554F0C:       Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0, "Select NameHelp From SubGroup Where NameHelp='");

-- [VERIFIED-VB6] (FaSubGroup)
loc_155501E:         Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0, "Select NameHelp From SubGroup Where NameHelp='");

-- [VERIFIED-VB6] (FaSubGroup)
loc_155521D:         var_F4 = "Select ID,GroupCode,GroupName,Nature,AliasYN,GroupNature From AcGroup Where GroupCode='" & Me.Fields.Item("Code").Value;

-- [VERIFIED-VB6] (FaSubGroup)
loc_10B68A9: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FaSubGroup)
loc_18AFA72:   var_F4 = "Select S.*,G.GroupNature AS GNature,G.GroupName,G.MainGrCode,C.CityName,T.CATEGORY_Desc,TDSCAT.NAME AS TDSNAME From (((SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode) Left Join CATEGORY T on S.CatEGORY=T.CatEGORY)  LEFT JOIN TDSCAT ON TDSCAT.CODE=S.TDS_Catg Where  S.SubCode='";

-- [VERIFIED-VB6] (FaSubGroup)
loc_18AFB36:   unk_52D372.Execute CStr("Select U_Name,U_AE,U_EntDt From Subgroup where SubCode='" & Me.Fields.Item("subcode").Value & "'  "), var_144, -1;

-- [VERIFIED-VB6] (FaSubGroup)
loc_18B01FB:       unk_52D370.Execute "Select isnull(Sum(AmtCr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_E0, -1;

-- [VERIFIED-VB6] (FaSubGroup)
loc_18B02A2:       unk_52D370.Execute "Select isnull(Sum(AmtDr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_E0, -1;

-- [VERIFIED-VB6] (FaSubGroup)
loc_18B0343:       var_204 = "Select isnull(Sum(AmtCr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "' AND LOGSITE_CODE='";

-- [VERIFIED-VB6] (FaSubGroup)
loc_18B03FC:       var_204 = "Select isnull(Sum(AmtDr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "' AND LOGSITE_CODE='";

-- [VERIFIED-VB6] (FaSubGroup)
loc_18B05B2:       Call 0.Method_Proc_184_58_18B21780 (CInt(0), var_C8, var_E4, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='");

-- [VERIFIED-VB6] (FaSubGroup)
loc_18B061D:       Call 0.Method_Proc_184_58_18B21780 (CInt(0), var_C8, var_E4, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='");

-- [VERIFIED-VB6] (FaSubGroup)
loc_18B1B93:       var_E4 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaSubGroup)
loc_18B1C22:       var_E4 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaSubGroup)
loc_15D6FAF: Call 0.Method_Proc_184_59_15D80780 (CInt(3), var_98, var_9C, "SELECT * From AcGroup Where GroupCode='");

-- [VERIFIED-VB6] (FaSubGroup)
loc_15D70AE:   var_9C = "Insert Into " & arg_10;

-- [VERIFIED-VB6] (FaSubGroup)
loc_15D7FED:     Call 0.Method_Proc_184_59_15D80780 (CInt(3), var_98, var_9C, "UPDATE LEDGER SET LEDGER.GROUPCODE='");

-- [VERIFIED-VB6] (FaSubGroup)
loc_149D38E:   unk_52D370.Execute "Select IsNull(Max(CAST(SUBSTRING(SubCode,3,6) AS INT)),0)+1 AS MyCode From SubGroup Where IsNumeric(substring(SubCode,3,6))=1", var_C8, -1;

-- [VERIFIED-VB6] (FaSubGroup)
loc_149D799:     var_CC = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FaSubGroup)
loc_149D83B:     Call 0.Method_Proc_184_60_149DF300 (CInt(3), var_E0, CStr(Me.FGrid.TextMatrix)), "SELECT GROUPCODE,GROUPNATURE FROM ACGROUP WHERE GROUPCODE='", var_1DC, -1, var_F4);

-- [VERIFIED-VB6] (FaSubGroup)
loc_149DC62:       var_134 = "Insert Into Ledger(DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A4 & ",NARRATION,U_Name,U_EntDt,U_AE,v_Prefix,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('";

-- [VERIFIED-VB6] (FaSubGroup)
loc_1550966: Call 0.Method_Proc_184_61_155189C0 (CInt(3), var_B4, var_B8, "Select MainGrCode From AcGroup Where GroupCode='", var_E0, -1);

-- [VERIFIED-VB6] (FaSubGroup)
loc_1550A0D: Call 0.Method_Proc_184_61_155189C0 (CInt(0), var_B4, var_BC, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '");

-- [VERIFIED-VB6] (FaSubGroup)
loc_1550BB0:   var_B8 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaSubGroup)
loc_1550C3F:   var_B8 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaSubGroup)
loc_1550DEA: var_C0 = "Delete From Ledger Where LOGSITE_CODE='" & MemVar_1F81078 & "' AND V_Type='" & "F_AO";

-- [VERIFIED-VB6] (FaSubGroup)
loc_1550F72:     var_D0 = "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='";

-- [VERIFIED-VB6] (FaSubGroup)
loc_155118D:       var_B8 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FaSubGroup)
loc_15515B9:       var_BC = "Insert Into Ledger (DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A8 & ",NARRATION,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('";

-- [VERIFIED-VB6] (FaSubGroup)
loc_1237EB7:   Call 0.Method_Proc_184_62_12382C80 (CInt(0), var_12C, var_130, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '");

-- [VERIFIED-VB6] (FaSubGroup)
loc_123804F:   var_124 = "Delete From Ledger Where V_Type='" & "F_AO";

-- [VERIFIED-VB6] (FaSubGroup)
loc_12380D0:   Call 0.Method_Proc_184_62_12382C80 (CInt(0), var_12C, var_124, "Delete From SubGroup Where SUBCode='");


-- ### FaNarrMast  (13 statement(s))
-- [VERIFIED-VB6] (FaNarrMast)
loc_10C2A9C:   unk_448E47.Execute CStr("Delete From NarrMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1;

-- [VERIFIED-VB6] (FaNarrMast)
loc_EEA189: MemVar_1F810E4 = "Select N.Code as SearchCode,N.Name FROM NarrMast N WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') Order by N.Name";

-- [VERIFIED-VB6] (FaNarrMast)
loc_FE658E: var_A4 = "Select * FROM NarrMast WHERE (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaNarrMast)
loc_1397E29:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, "Select Count(*) From NarrMast Where Name='", var_B4, -1);

-- [VERIFIED-VB6] (FaNarrMast)
loc_1397F1F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, "Select Count(*) From NarrMast Where Name='", var_B4, -1);

-- [VERIFIED-VB6] (FaNarrMast)
loc_1398044:   var_A0 = "Select Max(SubString(Code,3,Len(Code)-2)) As tCode From NarrMast Where Left(Code,2)='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FaNarrMast)
loc_13982CF:   var_158 = "Insert Into NarrMast (Code,Name,U_Name,U_EntDt,U_AE,Site_COde,LogSite_Code) Values ('" & var_A0 & "','" & var_204 & "','" & MemVar_1F810C8;

-- [VERIFIED-VB6] (FaNarrMast)
loc_1398434:   var_144 = "Update NarrMast Set Name='" & CStr(CVar(var_158 & "',") & var_114 & ",'A','" & CVar(MemVar_1F81070) & "','" & CVar(MemVar_1F81078) & "')");

-- [VERIFIED-VB6] (FaNarrMast)
loc_10702D4:     Call 0.Method_Txt_Validate0 (CInt(0), var_A8, var_A4, "Select Count(*) From NarrMast Where Name='", var_A0, -1);

-- [VERIFIED-VB6] (FaNarrMast)
loc_10703CA:     Call 0.Method_Txt_Validate0 (CInt(0), var_A8, var_A4, "Select Count(*) From NarrMast Where Name='", var_A0, -1);

-- [VERIFIED-VB6] (FaNarrMast)
loc_118DD4E: var_C0 = CVar("Select Code,Name From NarrMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String;

-- [VERIFIED-VB6] (FaNarrMast)
loc_118DDD1: var_C0 = CVar("Select N.*,N.Code as SearchCode From NarrMast N WHERE (LOGSITE_CODE='" & MemVar_1F81070 & "' OR LOGSITE_CODE='HO') Order by N.Name") 'String;

-- [VERIFIED-VB6] (FaNarrMast)
loc_1190EC9: unk_448E49.Execute CStr("Select U_Name,U_AE,U_EntDt From NarrMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1;


-- ### FaTDSCat  (11 statement(s))
-- [VERIFIED-VB6] (FaTDSCat)
loc_FE1A0B:     var_EC = "Delete From TDSCAT Where code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (FaTDSCat)
loc_EE7DF1: MemVar_1F810E4 = "Select code As SearchCode,Name FROM TDSCAT WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') Order by Name";

-- [VERIFIED-VB6] (FaTDSCat)
loc_10064FF: var_A0 = "select * FROM TDSCAT WHERE (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FaTDSCat)
loc_12FE414:   var_A8 = "Select Max(SubString(Code,3,Len(Code)-2)) As tCode From TDSCAT Where SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FaTDSCat)
loc_12FE62F:   var_A8 = "Insert Into TDSCAT (code,name,TDSLimit,TDSPercentage,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) Values('" & var_90;

-- [VERIFIED-VB6] (FaTDSCat)
loc_12FE7DB:   var_148 = "UPDATE TDSCAT SET name='" & var_A8 & "',TDSLimit=" & CStr(var_138.Text) & ",TDSPercentage=" & CStr(var_208) & ",U_name='" & MemVar_1F810C8;

-- [VERIFIED-VB6] (FaTDSCat)
loc_110852E: Me.Connection15.Execute "SELECT * FROM TDSCAT WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_C0, -1;

-- [VERIFIED-VB6] (FaTDSCat)
loc_110856F: var_C8 = "SELECT Code,name,TDSLimit,TDSPercentage FROM TDSCAT WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' OR LOGSITE_CODE='HO') ORDER BY Name";

-- [VERIFIED-VB6] (FaTDSCat)
loc_10539DA:     Call 0.Method_Txt_Validate0 (var_94, "Select COUNT(*) From TDSCAT Where name='", var_BC, -1, var_C0);

-- [VERIFIED-VB6] (FaTDSCat)
loc_1053ABF:       Call 0.Method_Txt_Validate0 (var_94, "Select COUNT(*) From TDSCAT Where name='", var_138, -1, var_D8);

-- [VERIFIED-VB6] (FaTDSCat)
loc_11D3C0D: unk_43E82B.Execute CStr("Select U_Name,U_AE,U_EntDt From TDSCAT where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1;


-- ### FaCurrBalUpdate
--     no SQL extracted from this object  [UNKNOWN]

-- ### AccountMerg  (3 statement(s))
-- [VERIFIED-VB6] (AccountMerg)
loc_FEFF10:     var_B0 = "Re-Select Old Account";

-- [VERIFIED-VB6] (AccountMerg)
loc_FEFF85:     var_B0 = "Re-Select New Account";

-- [VERIFIED-VB6] (AccountMerg)
loc_EFE8D2: Me.Open "Select SubCode As Code,Name,SubCode,C.CityName From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode order by Name", CVar(MemVar_1F81044), 3;


-- ### FrmSerialiseVr  (14 statement(s))
-- [VERIFIED-VB6] (FrmSerialiseVr)
loc_EE37BE: Proc_6_91_EF1950("select V_Type,Description from Voucher_Type where Category='FA' And Site_Code='" & MemVar_1F81070 & "'", Me.TxtVrType);

-- [VERIFIED-VB6] (FrmSerialiseVr)
loc_16204F2: unk_43841F.Execute "delete from LedgerMerge", var_F4, -1;

-- [VERIFIED-VB6] (FrmSerialiseVr)
loc_1620513: unk_43841F.Execute "delete from LedgerMMerge", var_F4, -1;

-- [VERIFIED-VB6] (FrmSerialiseVr)
loc_16205AC: var_104 = "Select DISTINCT v_Prefix from LEDGERM WHERE V_Type='" & var_9C & "' And V_Prefix='" & MemVar_1F8112C & "' And Site_Code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmSerialiseVr)
loc_1620642:   var_13C = CVar("UPDATE Voucher_Prefix SET Start_Srl_No=0 WHERE V_Type='" & var_9C & "' AND PREFIX='") & var_F4 & "' And Site_Code='";

-- [VERIFIED-VB6] (FrmSerialiseVr)
loc_16206CB: var_108 = "select * from LedgerM where V_Type='" & var_9C & "' And V_Prefix='" & MemVar_1F8112C & "' And Site_Code='" & MemVar_1F81070 & "' order by V_Date";

-- [VERIFIED-VB6] (FrmSerialiseVr)
loc_1620720: var_100 = "select docId as searchcode,Ledger.* from Ledger where V_Type='" & var_9C & "' And V_Prefix='" & MemVar_1F8112C & "' And Site_Code='";

-- [VERIFIED-VB6] (FrmSerialiseVr)
loc_16208F1:     var_1BC = "UPDATE VOUCHER_Prefix SET Start_Srl_No=" & Me.lblVNo.Text & " WHERE V_Type='" & var_9C & "' and Prefix='" & Me.LblVPrefix.Text;

-- [VERIFIED-VB6] (FrmSerialiseVr)
loc_1620AE5:     var_C0 = "Insert into LedgerMMerge (DocId,Site_Code,V_Type,v_prefix,V_No,V_Date,Narration,U_Name,U_EntDt,U_AE,Trf_Date,LogSite_Code) Values ('" & var_A8;

-- [VERIFIED-VB6] (FrmSerialiseVr)
loc_1621186:         var_F8 = "Insert Into LedgerMerge (V_PREFIX,DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode,AmtDr,AmtCr,ContraSub,Chq_No,Chq_Date,Clg_Date,Narration,U_Name,U_EntDt,U_AE,SQty,PQty,AgRefNo,VTime,Mth_Year,Emp_Code,GroupCode,GroupNature,LogSite_Code) Values ('" & Me.LblVPrefix.Text;

-- [VERIFIED-VB6] (FrmSerialiseVr)
loc_1621521:   var_104 = "Delete from LedgerM where V_Type in ('" & var_9C & "') And V_Prefix='" & MemVar_1F8112C & "' And Site_Code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmSerialiseVr)
loc_1621574:   var_100 = "insert into LedgerM select * from LedgerMMerge where V_Type in ('" & var_9C & "') And V_Prefix='" & MemVar_1F8112C & "' And Site_Code='";

-- [VERIFIED-VB6] (FrmSerialiseVr)
loc_16215D5:   var_104 = "Delete from Ledger where V_Type in ('" & var_9C & "') And V_Prefix='" & MemVar_1F8112C & "' And Site_Code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmSerialiseVr)
loc_1621613:   var_C0 = "insert into Ledger select * from LedgerMerge where V_Type in ('" & var_9C;


-- ### EmptyInbox
--     no SQL extracted from this object  [UNKNOWN]

-- ### frmYearEnd
--     no SQL extracted from this object  [UNKNOWN]

-- ---------------------------------------------------------------------------
-- Utility
-- ---------------------------------------------------------------------------

-- ### UserMast  (19 statement(s))
-- [VERIFIED-VB6] (UserMast)
loc_1148189:       Call 0.Method_Txt_Validate0 (0, var_90, "select count(*) FROM userMAST WHERE USER_NAME = ", var_EC, -1);

-- [VERIFIED-VB6] (UserMast)
loc_10CFA54:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (0, var_120, var_124, "delete from user1 where user_name='");

-- [VERIFIED-VB6] (UserMast)
loc_10CFAB1:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (0, var_120, var_124, "delete from user2 where user_name='");

-- [VERIFIED-VB6] (UserMast)
loc_10CFB0E:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (0, var_120, var_124, "delete from menuhelp1 where username='");

-- [VERIFIED-VB6] (UserMast)
loc_10CFB6B:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (0, var_120, var_124, "delete from userMAST where user_name='");

-- [VERIFIED-VB6] (UserMast)
loc_F4D6DF:   MemVar_1F810E4 = "select user_name as searchcode,User_Name+SPACE(20-LEN(User_Name)) AS UserName,Label FROM USERMAST ORDER BY USER_NAME";

-- [VERIFIED-VB6] (UserMast)
loc_F4D6F2:     MemVar_1F810E4 = "select user_name as searchcode,User_Name+SPACE(20-LEN(User_Name)) AS UserName,Label FROM USERMAST where User_name <>'SA'ORDER BY USER_NAME";

-- [VERIFIED-VB6] (UserMast)
loc_F4D709:       var_10C = "select user_name as searchcode,User_Name+SPACE(20-LEN(User_Name)) AS UserName,Label FROM USERMAST where User_name='" & MemVar_1F810C8;

-- [VERIFIED-VB6] (UserMast)
loc_106BD71: unk_436489.Execute "SELECT *,User_Name as Name,Label as Label,ActiveYN as Active FROM UserMast ", var_BC, -1;

-- [VERIFIED-VB6] (UserMast)
loc_142ED8C:   var_214 = "INSERT INTO USERMAST (user_name,PASSWD,Label,shortname,ActiveYN,backcolor) VALUES (" & var_E8 & "," & var_16C & "," & var_204;

-- [VERIFIED-VB6] (UserMast)
loc_142EE60:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, "Insert into userpermission (username,CompCode,Site_Code,LogSite_Code) values (", var_204);

-- [VERIFIED-VB6] (UserMast)
loc_142F100:     var_28C = "UPDATE USERMAST SET user_name=" & var_E8 & ",PASSWD=" & var_16C & ",Label=" & var_204 & ",shortname=" & var_25C & ",BackColor=";

-- [VERIFIED-VB6] (UserMast)
loc_142F1D8: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, "DELETE FROM User2 WHERE User_Name=", var_15C);

-- [VERIFIED-VB6] (UserMast)
loc_142F246: var_C8 = "INSERT INTO User2 (User_Name,Comp_Code,Param_Str) VALUES (";

-- [VERIFIED-VB6] (UserMast)
loc_11397AE:   Me.Connection15.Execute "select user_name as searchcode,User_Name,PASSWD,SHORTNAME,Label,ActiveYN,backcolor FROM USERMAST ORDER BY USER_NAME", var_B0, -1;

-- [VERIFIED-VB6] (UserMast)
loc_11397E4:   var_D4 = "select user_name as searchcode,User_Name,PASSWD,SHORTNAME,Label,ActiveYN,backcolor FROM USERMAST where user_name='" & MemVar_1F810C8;

-- [VERIFIED-VB6] (UserMast)
loc_EE45D5: Proc_183_9_EA21B8(var_A8, MemVar_1F810C8, "select name as form_name,user1.* from user1 left join USER_module on USER_module.srno=user1.srno where user_name=");

-- [VERIFIED-VB6] (UserMast)
loc_ECA561: unk_436489.Execute "select * FROM USERMAST where user_name ='" & MyValue & "' ORDER BY USER_NAME", var_B0, -1;

-- [VERIFIED-VB6] (UserMast)
loc_129D9FA:   var_D4 = "SHAPE {select ID,MAX(Module_Name) AS MainMenu from USER_MODULE GROUP BY ID} APPEND ({select ID,NAME,USER_module.srno,'Allow' = CASE WHEN right(param_str,1) = 'P' THEN ' ' else ''  END , 'Ins' = CASE WHEN left(param_str,1) = 'A' THEN ' ' else ''  END ,'Edit' = CASE WHEN substring(param_str,2,1) = 'E' THEN ' ' else ''  END,'Del' = CASE WHEN substring(param_str,3,1) = 'D' THEN ' ' else ''  END,flag,CODE,NAME from USER_MODULE left join user1 on user1.srno=USER_module.srno where user_name='";


-- ### UserPermission  (37 statement(s))
-- [VERIFIED-VB6] (UserPermission)
loc_E93B28: var_A0 = "Select Distinct UserName as Name ,UserName as Code From MenuHelp Left Join UserMast On MenuHelp.UserName=UserMast.User_Name Where UserMast.ActiveYN='Y' And UserMast.User_Name<>'SA' And CompCODE='" & CStr(Me.DCFirm.BoundText);

-- [VERIFIED-VB6] (UserPermission)
loc_E93EF3: Proc_6_138_EF12D8("Select CYear as Name ,Comp_Code as Code From Company Where Comp_CODE='" & CStr(Me.DCFirm.BoundText) & "'", Me.DCYear, "Name");

-- [VERIFIED-VB6] (UserPermission)
loc_E938E8: var_A0 = "Select User_Name as Name ,User_Name as Code From UserMast Where ActiveYN='Y' And User_Name<>'SA' And User_Name<>'" & CStr(Me.DSUserName.BoundText);

-- [VERIFIED-VB6] (UserPermission)
loc_18EA033:             var_170 = "SELECT Comp_Code FROM Company WHERE Cast(Comp_Code As Integer)=" & CStr(Val(CStr(Me.dYear.BoundText))) & vbNullString;

-- [VERIFIED-VB6] (UserPermission)
loc_18EA0EA:             var_188 = "Delete From MenuHelp Where Opt1=" & CStr(Me.dSection.BoundText) & " And (UserName='" & CStr(var_134) & "' And Cast(CompCode As Integer)=";

-- [VERIFIED-VB6] (UserPermission)
loc_18EA1B0:               var_168 = "SELECT [Option],Menu_Index,OutletCode,Module_Name FROM MenuHelp WHERE UserName='SA' And Cast(CompCode As Integer)=" & CStr(var_180);

-- [VERIFIED-VB6] (UserPermission)
loc_18EA661:                 var_164 = "insert into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],PARAM_STR,Flag,OutletCode,Module_Name) Values ('" & var_8C;

-- [VERIFIED-VB6] (UserPermission)
loc_18EA88B:                   var_16C = "Select Count(*) From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix)) & " And Opt2=0 And Opt3=0 And Opt4=0  And UserName='";

-- [VERIFIED-VB6] (UserPermission)
loc_18EA95E:                     var_168 = "Select OPT1,OPT2,OPT3,OPT4,Code,[Option],Flag,OutletCode,Module_Name From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix));

-- [VERIFIED-VB6] (UserPermission)
loc_18EA9DB:                       var_164 = "Insert Into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],PARAM_STR,Flag,OutletCode,Module_Name) Values ('" & var_8C;

-- [VERIFIED-VB6] (UserPermission)
loc_18EAD6C:                   var_184 = "Select Count(*) From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix)) & " And Opt2=" & CStr(Me.FGrid.TextMatrix));

-- [VERIFIED-VB6] (UserPermission)
loc_18EAE78:                     var_168 = "Select OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],Flag,OutletCode,Module_Name From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix));

-- [VERIFIED-VB6] (UserPermission)
loc_18EAF11:                       var_164 = "Insert Into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],PARAM_STR,flag,OutletCode,Module_Name) Values ('" & var_8C;

-- [VERIFIED-VB6] (UserPermission)
loc_18EB30B:                   var_184 = "Select Count(*) From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix)) & " And Opt2=" & CStr(Me.FGrid.TextMatrix));

-- [VERIFIED-VB6] (UserPermission)
loc_18EB45B:                     var_168 = "Select OPT1,OPT2,OPT3,OPT4,Code,[Option],Flag,OutletCode,Module_Name From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix));

-- [VERIFIED-VB6] (UserPermission)
loc_18EB510:                       var_164 = "Insert Into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],PARAM_STR,flag,OutletCode,Module_Name) Values ('" & var_8C;

-- [VERIFIED-VB6] (UserPermission)
loc_18EB876:               Proc_6_16_EA44E0(var_B8, MemVar_1F81078, "Select Count(*) From UserPermission  WHERE LogSITE_CODE=", var_36C, -1, var_120);

-- [VERIFIED-VB6] (UserPermission)
loc_18EBB09:                 var_DC = "Insert Into UserPermission(CompCode,UserName,Site_Code,LogSite_Code,POSDiscountAllowUpto,CancelGuestBill,ChangeRoomDtl,DeleteGuestCharges,ChangeGuestCharges,POSSettlementYN,EditItemInKOT,FreeItemAllow,RefundCashCardAmt,FacilityBilling) Values (";

-- [VERIFIED-VB6] (UserPermission)
loc_18EBE88:                 var_1CC = CVar("Update UserPermission Set POSDiscountAllowUpto=" & CStr(var_180) & ",CancelGuestBill=") & var_134 & ",ChangeRoomDtl=";

-- [VERIFIED-VB6] (UserPermission)
loc_10515DB: var_A4 = "Select UserName,[OPTION],[ADD]=Case When SubString(IsNull(Param_Str,''),1,1)='A' Then 'A' ELSE '' END,[EDIT]=Case When SubString(IsNull(Param_Str,''),2,1)='E' Then 'E' ELSE '' END,[DELETE]=Case When SubString(IsNull(Param_Str,''),3,1)='D' Then 'D' ELSE '' END,[PRINT]=Case When SubString(IsNull(Param_Str,''),4,1)='P' Then 'P' ELSE '' END,UserMast.ActiveYN,OPT1,OPT2,OPT3,OPT4,Menu_Index From MenuHelp Inner Join UserMast On MenuHelp.UserName=UserMast.User_Name Where Cast(CompCode As Int)=" & CStr(Val(MemVar_1F81128));

-- [VERIFIED-VB6] (UserPermission)
loc_ECD1BF: Proc_6_138_EF12D8("Select CYear as Name ,Comp_Code as Code From Company Where Comp_cODE='" & CStr(Me.dFirm.BoundText) & "'", Me.dYear, "Name");

-- [VERIFIED-VB6] (UserPermission)
loc_F0EC1F:   var_90 = "Select Distinct Comp_Name+CYear as Name ,cOMP_cODE as Code From Company";

-- [VERIFIED-VB6] (UserPermission)
loc_13CB3EE: var_CC = "Select Count(*) From MenuHelp Where UserName='" & CStr(Me.DDUserName.BoundText) & "' And Cast(CompCode As Integer)=" & CStr(Val(CStr(Me.DCYear.BoundText)));

-- [VERIFIED-VB6] (UserPermission)
loc_13CB5A6: var_CC = "Delete From MenuHelp Where UserName='" & CStr(Me.DDUserName.BoundText) & "' And Cast(CompCode As Integer)=" & CStr(Val(CStr(Me.DCYear.BoundText)));

-- [VERIFIED-VB6] (UserPermission)
loc_13CB630: var_CC = "Select * From MenuHelp Where UserName='" & CStr(Me.DSUserName.BoundText) & "' And Cast(CompCode As Integer)=" & CStr(var_140);

-- [VERIFIED-VB6] (UserPermission)
loc_13CB687:   var_104 = "Insert Into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],PARAM_STR,flag,OutletCode,Module_Name) Values ('";

-- [VERIFIED-VB6] (UserPermission)
loc_F5764A: Me.Recordset15.Open CVar("Select * From UserPermission WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' And Compcode=") & var_BC & ")", CVar(MemVar_1F81044), 2;

-- [VERIFIED-VB6] (UserPermission)
loc_105131B: var_A4 = "Select UserName,[OPTION],[ADD]=Case When SubString(IsNull(Param_Str,''),1,1)='A' Then 'A' ELSE '' END,[EDIT]=Case When SubString(IsNull(Param_Str,''),2,1)='E' Then 'E' ELSE '' END,[DELETE]=Case When SubString(IsNull(Param_Str,''),3,1)='D' Then 'D' ELSE '' END,[PRINT]=Case When SubString(IsNull(Param_Str,''),4,1)='P' Then 'P' ELSE '' END,UserMast.ActiveYN,OPT1,OPT2,OPT3,OPT4,Menu_Index From MenuHelp Inner Join UserMast On MenuHelp.UserName=UserMast.User_Name Where Cast(CompCode As Int)=" & CStr(Val(MemVar_1F81128));

-- [VERIFIED-VB6] (UserPermission)
loc_13CD236:   var_C4 = "Select distinct U.Opt1,U.Opt2,U.Opt3,U.Opt4,U.[option] as [Module Name],U.Code,Case right(M.param_str,1) When 'P' Then ' ' Else 'o' End as Allow,Case U.Flag When 'E' then Case left(M.param_str,1) When 'A' Then ' ' Else 'o' End Else '' End as Ins,Case U.Flag When 'E' Then Case SubString(M.param_str,2,1) When 'E' Then ' ' else 'o' End Else '' End as Edit,Case U.Flag When 'E' Then Case SubString(M.param_str,3,1) When 'D' Then ' ' Else 'o' End Else '' End as Del,U.Flag,U.OutletCode From UserModule U Left Join MenuHelp M on M.Code=U.Code Where U.Opt1=" & CStr(Me.dSection.BoundText);

-- [VERIFIED-VB6] (UserPermission)
loc_13CD270:   var_114 = var_100 & CStr(Val(CStr(var_D8))) & " or CompCode is Null)) " & " Union " & " Select distinct U.Opt1,U.Opt2,U.Opt3,U.Opt4,U.[option] as [Module Name],U.Code,'o' as Allow,Case U.Flag When 'E' Then 'o' Else '' End as Ins,Case U.Flag When 'E' Then 'o' Else '' End as Edit,Case U.Flag When 'E' Then 'o' Else '' End as Del,U.Flag,U.OutletCode From UserModule U Inner Join MenuHelp M on M.Code=U.Code Where M.UserName='";

-- [VERIFIED-VB6] (UserPermission)
loc_13CD290:   var_13C = var_114 & MemVar_1F810C8 & "' And U.Flag<>'V' AND U.Opt1=" & CStr(Me.dSection.BoundText) & " AND U.Opt2>0 AND IsNull(U.flag,'')<>'' And U.Code Not In(Select U.Code From UserModule U Left Join MenuHelp M on M.Code=U.Code Where U.Opt1=";

-- [VERIFIED-VB6] (UserPermission)
loc_13CD635:   var_278 = "SELECT Menu_Index,Flag FROM MenuHelp WHERE [Option]=" & var_D8 & " AND Code=" & CVar(CStr(Me.FGrid.TextMatrix))) & " AND UserName='SA'";

-- [VERIFIED-VB6] (UserPermission)
loc_110AB23: Proc_6_138_EF12D8("Select User_Name as Name ,User_Name as Code From UserMast WHERE ActiveYN='Y' And User_Name <>'SA' Order By User_Name", Me.dUserName);

-- [VERIFIED-VB6] (UserPermission)
loc_110AB5D: var_88 = "Select Distinct Comp_Name+' ' +cyEAR as Name ,Comp_CODE as Code From Company";

-- [VERIFIED-VB6] (UserPermission)
loc_110AB63: Proc_6_138_EF12D8("Select User_Name as Name ,User_Name as Code From UserMast WHERE ActiveYN='Y' And User_Name <>'SA' Order By User_Name", Me.dFirm, "Name");

-- [VERIFIED-VB6] (UserPermission)
loc_110ABC3: Proc_6_138_EF12D8("Select CYear as Name ,Comp_Code as Code From Company Where Comp_CODE='" & CStr(Me.dFirm.BoundText) & "'", Me.dYear, "Name", "Code");

-- [VERIFIED-VB6] (UserPermission)
loc_110AC06: var_88 = "Select DISTINCT replace([option],'&','') as Name ,Opt1 as Code From UserModule Where FLAG<>'V' AND Opt2=0 and Opt3=0 and Opt4=0 and [Option]<>'-' AND [Option] NOT IN ('-','Exit') ORDER BY OPT1";


-- ### SundryMast  (11 statement(s))
-- [VERIFIED-VB6] (SundryMast)
loc_104137A: unk_451873.Execute "SELECT Code,Name FROM SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO')  ORDER BY Name", var_DC, -1;

-- [VERIFIED-VB6] (SundryMast)
loc_10413EC: unk_451873.Execute "SELECT * FROM SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1;

-- [VERIFIED-VB6] (SundryMast)
loc_1163289:   var_F8 = "Delete From SundryMast Where Code='" & Me.Fields.Item("Code").Value & "'";

-- [VERIFIED-VB6] (SundryMast)
loc_F1F50A: var_10C = "Select SundryMast.Code As SearchCode,SundryMast.Name,SundryMast.Nature,SundryMast.CalcSign,SYSYN=CASE SundryMast.SysYN WHEN 'Y' THEN 'System Defined' ELSE 'User Defined' END FROM SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (SundryMast)
loc_1079D2B: unk_451873.Execute "select * FROM SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1;

-- [VERIFIED-VB6] (SundryMast)
loc_124AD94:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From SundryMast Where SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (SundryMast)
loc_124AEBC: var_B4 = "Delete From SundryMast Where Code='" & global_84 & "'";

-- [VERIFIED-VB6] (SundryMast)
loc_124AFA5: var_9C = "Insert Into SundryMast(Code,Name,Nature,CalcSign,SysYN,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values ('" & global_84;

-- [VERIFIED-VB6] (SundryMast)
loc_128D600: unk_451873.Execute CStr("Select U_Name,U_AE,U_EntDt From Sundrymast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1;

-- [VERIFIED-VB6] (SundryMast)
loc_107F623:   Call 0.Method_Proc_77_28_107F8200 (CInt(0), var_A8, var_AC, "Select Count(*) From SundryMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND Name='", var_A0, -1);

-- [VERIFIED-VB6] (SundryMast)
loc_107F735:   Call 0.Method_Proc_77_28_107F8200 (CInt(0), var_A8, var_AC, "Select Count(*) From SundryMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND Name='", var_A0, -1);


-- ### FrmInc  (159 statement(s))
-- [VERIFIED-VB6] (FrmInc)
loc_126DE3F: var_88 = "Delete From SundryTypeFix Where LogSite_Code='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmInc)
loc_1D256DD: unk_5749CB.Execute "select * from depart where outletYN='Y'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D25782:   var_98 = "SELECT COUNT(*) FROM Voucher_Type WHERE V_Type='" & var_10C & "' AND SITE_CODE='" & MemVar_1F81070 & "' AND LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmInc)
loc_1D257F7:     var_8C = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values " & "('POSPayment','PPMT','";

-- [VERIFIED-VB6] (FrmInc)
loc_1D259B9:     var_8C = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_10C;

-- [VERIFIED-VB6] (FrmInc)
loc_1D25ADD: unk_5749CB.Execute "SELECT * FROM FAENVIRO where LogSite_Code='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D25B41:   unk_5749CB.Execute "INSERT INTO FAENVIRO (AGE1,LogSite_Code,Site_Code) VALUES (0,'" & MemVar_1F81078 & "','" & MemVar_1F81070 & "')", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D25BBD:   unk_5749CB.Execute "UPDATE FAENVIRO SET Age1=0", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D25C21:   unk_5749CB.Execute "UPDATE FAENVIRO SET Age2=15", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D25C85:   unk_5749CB.Execute "UPDATE FAENVIRO SET Age3=30", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D25CE9:   unk_5749CB.Execute "UPDATE FAENVIRO SET Age4=45", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D25D4D:   unk_5749CB.Execute "UPDATE FAENVIRO SET Age5=60", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D25DB1:   unk_5749CB.Execute "UPDATE FAENVIRO SET Age6=90", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D25E15:   unk_5749CB.Execute "UPDATE FAENVIRO SET Amt1=1000", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D25E79:   unk_5749CB.Execute "UPDATE FAENVIRO SET Amt2=2000", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D25EDD:   unk_5749CB.Execute "UPDATE FAENVIRO SET Amt3=3000", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D25F41:   unk_5749CB.Execute "UPDATE FAENVIRO SET Amt4=4000", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D25FA5:   unk_5749CB.Execute "UPDATE FAENVIRO SET Amt5=5000", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26009:   unk_5749CB.Execute "UPDATE FAENVIRO SET Amt6=6000", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26066:   unk_5749CB.Execute "UPDATE FAENVIRO SET TagadaHeader1='Dear Sirs,'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D260C3:   unk_5749CB.Execute "UPDATE FAENVIRO SET TagadaHeader2='                 SUB : Outstanding Letter'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26120:   unk_5749CB.Execute "UPDATE FAENVIRO SET TagadaHeader3=''", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D2617D:   unk_5749CB.Execute "UPDATE FAENVIRO SET TagadaHeader4='We Wish to draw your immediate attention towards our bills.details of which'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D261DA:   unk_5749CB.Execute "UPDATE FAENVIRO SET TagadaHeader5='are given below for your ready reference.'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26237:   unk_5749CB.Execute "UPDATE FAENVIRO SET TagadaFooter1='The payment of the bills have become late and as such, we request you to'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26294:   unk_5749CB.Execute "UPDATE FAENVIRO SET TagadaFooter2='send payment of the same at earliest,preferably vide draft drawn at kanpur.'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D262F1:   unk_5749CB.Execute "UPDATE FAENVIRO SET TagadaFooter3='Thanking you                                           Yours Faithfully'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D2634E:   unk_5749CB.Execute "UPDATE FAENVIRO SET TagadaFooter4=''", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D263AB:   unk_5749CB.Execute "UPDATE FAENVIRO SET TagadaFooter5='                                                       For ABC & Company'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26408:   unk_5749CB.Execute "UPDATE FAENVIRO SET CreditLimit='Yes'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26465:   unk_5749CB.Execute "UPDATE FAENVIRO SET DebitLimit='Yes'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D264C2:   unk_5749CB.Execute "UPDATE FAENVIRO SET NegativeCashBalancE='Yes'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D2651F:   unk_5749CB.Execute "UPDATE FAENVIRO SET ShowGroup='No'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D2657C:   unk_5749CB.Execute "UPDATE FAENVIRO SET DonotShowGroup='No'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D265D9:   unk_5749CB.Execute "UPDATE FAENVIRO SET ShowCurrentBalance='Yes'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26636:   unk_5749CB.Execute "UPDATE FAENVIRO SET VerticleBalanceSheet='No'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26693:   unk_5749CB.Execute "UPDATE FAENVIRO SET ShowQty='No'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D266F0:   unk_5749CB.Execute "UPDATE FAENVIRO SET ShowCityName='No'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D2674D:   unk_5749CB.Execute "UPDATE FAENVIRO SET LedDivCode='No'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D267AA:   unk_5749CB.Execute "UPDATE FAENVIRO SET LedDivCode='No'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26807:   unk_5749CB.Execute "UPDATE FAENVIRO SET LedPrefix='No'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26864:   unk_5749CB.Execute "UPDATE FAENVIRO SET daterfill='Y'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D268C1:   unk_5749CB.Execute "UPDATE FAENVIRO SET titlerfill='M'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D2691E:   unk_5749CB.Execute "UPDATE FAENVIRO SET pagenofill='Y'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D2697B:   unk_5749CB.Execute "UPDATE FAENVIRO SET RunPIF='Y'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D269D8:   unk_5749CB.Execute "UPDATE FAENVIRO SET FilterAC='No'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26A35:   unk_5749CB.Execute "UPDATE FAENVIRO SET AddressHelp='Yes'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26A92:   unk_5749CB.Execute "UPDATE FAENVIRO SET DateLock='Y'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26AEF:   unk_5749CB.Execute "UPDATE FAENVIRO SET CashBookBalance='Yes'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26B4C:   unk_5749CB.Execute "UPDATE FAENVIRO SET MonthTotal='Yes'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26BA9:   unk_5749CB.Execute "UPDATE FAENVIRO SET OnLineAdjustment='Yes'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26C06:   unk_5749CB.Execute "UPDATE FAENVIRO SET linefiller='-'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26C63:   unk_5749CB.Execute "UPDATE FAENVIRO SET CashBookPage='Yes'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26C92: unk_5749CB.Execute "SELECT * FROM ENVIRO where LogSite_Code='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26D18:   var_190 = "INSERT INTO ENVIRO (Cash_Ac,SiteCode,LogSite_Code) VALUES ('" & var_108 & "','" & CVar(MemVar_1F81078) & "','" & CVar(MemVar_1F81078);

-- [VERIFIED-VB6] (FrmInc)
loc_1D26DF0:   unk_5749CB.Execute CStr("UPDATE ENVIRO SET Cash_Ac='" & var_108 & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F81078) & "'"), var_190, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26E73:   unk_5749CB.Execute "UPDATE ENVIRO SET PF_LIMIT=5000  WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26EEC:   unk_5749CB.Execute "UPDATE ENVIRO SET PF_EMPLOYEE=12 WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26F65:   unk_5749CB.Execute "UPDATE ENVIRO SET PF_EMPLOYER=8 WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D26FDE:   unk_5749CB.Execute "UPDATE ENVIRO SET ESI_LIMIT=6000 WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D27057:   unk_5749CB.Execute "UPDATE ENVIRO SET esi_employee=8 WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D2715B:   unk_5749CB.Execute CStr("UPDATE ENVIRO SET SALARY_AC='" & var_108 & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F81078) & "'"), var_190, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D27269:   unk_5749CB.Execute CStr("UPDATE ENVIRO SET Loan_AC='" & var_108 & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F81078) & "'"), var_190, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D27356:   var_14C = "UPDATE ENVIRO SET AdvanceAc='" & var_108 & "' WHERE LOGSITE_CODE='";

-- [VERIFIED-VB6] (FrmInc)
loc_1D2740B:   unk_5749CB.Execute CStr("UPDATE ENVIRO SET SiteCode='" & Trim(MemVar_1F81078) & "'"), var_14C, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D2746F:   Proc_6_6_F208E4(var_E8, MemVar_1F810F4, "UPDATE ENVIRO SET NCUR=", var_16C, -1);

-- [VERIFIED-VB6] (FrmInc)
loc_1D2751B:   unk_5749CB.Execute "UPDATE ENVIRO SET calcMethod='A' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D2758D:   unk_5749CB.Execute "UPDATE ENVIRO SET Checkout='Other' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D275FF:   unk_5749CB.Execute "UPDATE ENVIRO SET Variation='01:00' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D27671:   unk_5749CB.Execute "UPDATE ENVIRO SET CheckoutVar='10:00' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D276E3:   unk_5749CB.Execute "UPDATE ENVIRO SET PurchaseAdd1='Addition1' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D27755:   unk_5749CB.Execute "UPDATE ENVIRO SET PurchaseDed1='Deduction1' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D277C7:   unk_5749CB.Execute "UPDATE ENVIRO SET PurchaseAdd2='Addition2' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D27839:   unk_5749CB.Execute "UPDATE ENVIRO SET PurchaseDed2='Deduction2' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D278AB:   unk_5749CB.Execute "UPDATE ENVIRO SET Rate1='High Rate' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D2791D:   unk_5749CB.Execute "UPDATE ENVIRO SET Rate2='Rack Rate' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D2798F:   unk_5749CB.Execute "UPDATE ENVIRO SET Rate3='Disc1 Rate' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D27A01:   unk_5749CB.Execute "UPDATE ENVIRO SET Rate4='Disc2 Rate' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D27A73:   unk_5749CB.Execute "UPDATE ENVIRO SET Rate5='Disc3 Rate' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D27AE5:   unk_5749CB.Execute "UPDATE ENVIRO SET DefCompGroup='0020' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D27B57:   unk_5749CB.Execute "UPDATE ENVIRO SET ReservationPrinting='W' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D27BC9:   unk_5749CB.Execute "UPDATE ENVIRO SET ArrDateTimeEdit='N' WHERE LOGSITE_CODE='" & MemVar_1F81078 & "'", var_E8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1D27C61:   var_16C = "UPDATE ENVIRO SET CashPayType='" & var_110 & Trim(MemVar_1F81078) & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F81078) & "'";

-- [VERIFIED-VB6] (FrmInc)
loc_1D27D11:   var_16C = "UPDATE ENVIRO SET RoomPayType='" & var_110 & Trim(MemVar_1F81078) & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F81078) & "'";

-- [VERIFIED-VB6] (FrmInc)
loc_1D27E1F:   var_16C = "UPDATE ENVIRO SET RoomChrgDueAc='" & var_110 & Trim(MemVar_1F81078) & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F81078) & "'";

-- [VERIFIED-VB6] (FrmInc)
loc_1D27FE9:   var_16C = "UPDATE ENVIRO SET OutletDiscAc='" & var_110 & Trim(MemVar_1F81078) & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F81078) & "'";

-- [VERIFIED-VB6] (FrmInc)
loc_1D28099:   var_16C = "UPDATE ENVIRO SET OutletRoundAc='" & var_110 & Trim(MemVar_1F81078) & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F81078) & "'";

-- [VERIFIED-VB6] (FrmInc)
loc_1D2812D:   var_128 = "UPDATE ENVIRO SET CommissionAc='" & var_110 & Trim(MemVar_1F81078);

-- [VERIFIED-VB6] (FrmInc)
loc_1456D53: Me.Connection15.Execute "UPDATE PayCharge SET AMTDR=0 WHERE AMTDR IS NULL", var_C0, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1456D74: unk_5749CB.Execute "UPDATE PayCharge SET AMTCR=0 WHERE AMTCR IS NULL", var_C0, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1456D95: unk_5749CB.Execute "UPDATE PayCharge SET COMMENTS='' WHERE COMMENTS IS NULL", var_C0, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1456DCB: unk_5749CB.Execute "SELECT * From PayCharge WHERE PayType IS NOT NULL AND PAYTYPE<>'' AND (PAYCODE IS NULL OR PAYCODE='')", var_C0, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1456F32: unk_5749CB.Execute "SELECT * FROM PAYCHARGE WHERE SETTLEDATE IS NOT NULL AND (BILL_NO IS NULL OR BILL_NO='') AND MODESET<>'S' AND vTYPE Not In ('ARRES','ADRES')", var_C0, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_14570C3: unk_5749CB.Execute "SELECT * FROM PAYCHARGE WHERE (FOLIONODOCID IS NOT NULL AND FOLIONODOCID<>'') AND SETTLEDATE IS NULL AND (BILL_NO IS NOT NULL AND BILL_NO<>'') AND MODESET<>'S' AND vTYPE Not In ('ARRES','ADRES')", var_C0, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_145722A: unk_5749CB.Execute "SELECT FolionoDocId,Sum(AmtDr) As AmtDr,Sum(AmtCr) As AmtCr,Sum(AmtDr)-Sum(AmtCr) As Diff,Max(Bill_No) As Bill_No FROM PAYCHARGE Group By FOLIONODOCID Having Round((Sum(AmtDr)-Sum(AmtCr)),2)<>0 Order By FolionoDocId", var_C0, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_14574CC: unk_5749CB.Execute "SELECT * FROM PAYCHARGE WHERE PAYCODE NOT IN (SELECT CODE FROM REVMAST)", var_C0, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1457648: unk_5749CB.Execute "SELECT * FROM PAYCHARGE WHERE Docid is NUll or Docid=''", var_C0, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1457689:   unk_5749CB.Execute "Delete from paycharge where Docid is NULL or Docid=''", var_C0, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_14576AA: unk_5749CB.Execute "SELECT * FROM GuestFolio WHERE Docid is NUll or Docid=''", var_C0, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_14576EB:   unk_5749CB.Execute "Delete from GuestFolio where Docid is NULL or Docid=''", var_C0, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_145770C: unk_5749CB.Execute "Update PayCharge set GuestProf=GF.GuestProf from GuestFolio GF Where FolioNoDocid=GF.Docid And ISNULL(PayCharge.FolioNoDocid,'')<>''", var_C0, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_10104FA: unk_5749CB.Execute "UPDATE INDENT1 INNER JOIN ITEMMAST ON [itemmast].[CODE]=[INDENT1].[ITEM] SET INDENT1.CONVFACTOR = [ITEMMAST].[CONVRATIO], INDENT1.WTUNIT = [ITEMMAST].[ISSUEUNIT],INDENT1.WTQTY=[INDENT1].[qTY]*[ITEMMAST].[cONVRATIO] WHERE VTYPE='PIND'", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_101051B: unk_5749CB.Execute "UPDATE INDENT1 SET WTQTY=QTY,WTUNIT=UNIT WHERE VtYPE='RQ'", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_101053C: unk_5749CB.Execute "UPDATE INDENT1 INNER JOIN ITEMMAST ON [itemmast].[CODE]=[INDENT1].[ITEM] SET INDENT1.CONVFACTOR = [ITEMMAST].[CONVRATIO], INDENT1.UNIT = [ITEMMAST].[UNIT], INDENT1.QTY = [INDENT1].[WTQTY]/[ITEMMAST].[cONVRATIO] WHERE VTYPE='RQ'", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_101055D: unk_5749CB.Execute "update Indent set clearyn='Y' where indent.Vtype='RQ' and docid in (select Contradocid from stock where vtype='RQI')", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_101057E: unk_5749CB.Execute "UPDATE PORDER1 INNER JOIN ITEMMAST ON [itemmast].[CODE]=[PORDER1].[ITEMCODE] SET PORDER1.CONVRATIO = [ITEMMAST].[CONVRATIO], PORDER1.WTUNIT = [ITEMMAST].[ISSUEUNIT], PORDER1.WTQTY = [PORDER1].[QTY]*[ITEMMAST].[cONVRATIO] WHERE VTYPE='PORD'", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_101059F: unk_5749CB.Execute "UPDATE STOCK LEFT JOIN ITEMMAST ON STOCK.ITEM=ITEMMAST.CODE SET STOCK.CONVRATIO=ITEMMAST.CONVRATIO,STOCK.RECDUNIT=ITEMMAST.UNIT,STOCK.RECDQTY=STOCK.QTYREC/ITEMMAST.CONVRATIO, STOCK.ACCQTY = STOCK.QTYREC / ITEMMAST.ConvRatio WHERE VTYPE='RQI'", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_10105C0: unk_5749CB.Execute "UPDATE STOCK LEFT JOIN ITEMMAST ON STOCK.ITEM=ITEMMAST.CODE SET STOCK.CONVRATIO=ITEMMAST.CONVRATIO,STOCK.ISSUEUNIT=ITEMMAST.UNIT,STOCK.ISSQTY=STOCK.QTYISS/ITEMMAST.CONVRATIO WHERE VTYPE='RQR'", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_10105E1: unk_5749CB.Execute "update stock set ISSQTY=QTYISS,ISSUEUNIT=UNIT WHERE VTYPE IN ('KSISS','KMISS')", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1010602: unk_5749CB.Execute "update stock set ACCQTY=QTYREC,RECDQTY=QTYREC,RECDUNIT=UNIT WHERE VTYPE IN ('KSREC','KMREC')", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1010623: unk_5749CB.Execute "UPDATE STOCK INNER JOIN ITEMMAST ON [itemmast].[CODE]=[STOCK].[ITEM] SET STOCK.UNIT = [ITEMMAST].[ISSUEUNIT],STOCK.QTYISS=STOCK.CONVRATIO*STOCK.ISSQTY,STOCK.QTYREC=STOCK.CONVRATIO*STOCK.RECDQTY WHERE VTYPE IN ('KSISS','KSREC','KMREC','KMISS')", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1010644: unk_5749CB.Execute "update stock Set IssQty=Recdqty,Accqty=0,ChalQty=0,IssueUnit=RECDUNIT where vtype='PRPB'", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1010665: unk_5749CB.Execute "Update STOCK Inner Join ITEMMAST on (ITEMMAST.cODE=STOCK.ITEM) Set STOCK.RECDQTY=0,STOCK.ISSUEUNIT=ITEMMAST.UNIT,STOCK.ISSQTY=STOCK.QTYISS/STOCK.CONVRATIO WHERE VTYPE IN ('PRPB','PRPC')", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1010686: unk_5749CB.Execute "Update purch2 Inner Join Stock on (Stock.Docid=Purch2.ContraDocid And Stock.Sno=Purch2.ContraSno) Set Purch2.ChalQty=Stock.ChalQty,Purch2.AccQty=Stock.AccQty,Purch2.RecdQty=Stock.RecdQty,Purch2.RejQty=Stock.RejQty,purch2.ConvRatio=Stock.ConvRatio", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_10106A7: unk_5749CB.Execute "Update purch2 Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno) Set Purch2.ChalQty=Stock.ChalQty,Purch2.AccQty=Stock.AccQty,Purch2.RecdUnit=Stock.RecdUnit,Purch2.RecdQty=Stock.RecdQty,Purch2.RejQty=Stock.RejQty,purch2.ConvRatio=Stock.ConvRatio Where Purch2.QtyIss=0", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_10106C8: unk_5749CB.Execute "Update purch2 Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno) Set Purch2.iSSQty=Stock.iSSQty,Purch2.ISSUEUNIT=Stock.ISSUEUNIT Where Purch2.QtyIss<>0", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_10106E9: unk_5749CB.Execute "Update purch2 Inner Join Stock on (Stock.Docid=Purch2.ContraDocid And Stock.Sno=Purch2.ContraSno) Set Purch2.QtyIss=Stock.QtyIss,Purch2.RecdUnit=Stock.RecdUnit,Purch2.QtyRec=Stock.QtyRec,Purch2.UNIT=Stock.UNIT", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_101070A: unk_5749CB.Execute "Update purch2 Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno) Set Purch2.QtyIss=Stock.QtyIss,Purch2.QtyRec=Stock.QtyRec,Purch2.UNIT=Stock.UNIT ", var_A4, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_10E3F63: Call 0.Method_arg_1DC ("Depart", "Select * from " & MemVar_1F81108 & ".Depart", var_AC, var_C2);

-- [VERIFIED-VB6] (FrmInc)
loc_10E3FB8: Call 0.Method_arg_1DC ("Voucher_Type", "Select * from " & MemVar_1F81108 & ".Voucher_Type", var_AC, var_C2, var_C2);

-- [VERIFIED-VB6] (FrmInc)
loc_10E400D: Call 0.Method_arg_1DC ("Voucher_Prefix", "Select * from " & MemVar_1F81108 & ".Voucher_Prefix", var_AC, var_C2, var_C2);

-- [VERIFIED-VB6] (FrmInc)
loc_10E4062: Call 0.Method_arg_1DC ("ItemMast", "Select * from " & MemVar_1F81108 & ".ItemMast", var_AC, var_C2, var_C2);

-- [VERIFIED-VB6] (FrmInc)
loc_12C6DC6: unk_5749CB.Execute "Select * from Depart Where Site_Code='" & MemVar_1F81078 & "' and LogSite_Code='" & MemVar_1F81078 & "'", var_B8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_12C6E31:   var_D4 = CVar("SELECT COUNT(*) FROM GodownMast WHERE Logsite_Code='" & MemVar_1F81078 & "' and Site_Code='" & MemVar_1F81078 & "' and Code='") 'String;

-- [VERIFIED-VB6] (FrmInc)
loc_12C6F6E:     var_D4 = "Insert Into GodownMast (Code,Name,U_Name,U_EntDt,U_AE,ShortName,SysYN,Site_Code,LogSite_Code) VALUES ('" & var_88.Fields.Item("Code").Value;

-- [VERIFIED-VB6] (FrmInc)
loc_10F1A65: var_98 = "SELECT COUNT(*) FROM SUBGROUP WHERE Upper(NAME)='" & arg_10;

-- [VERIFIED-VB6] (FrmInc)
loc_10F1B96:   var_98 = "Insert Into SUBGROUP (Site_Code,SubCode,Name,NameHelp,GroupCode,GroupNature,Nature,ConPrefix,ConPerson,Add1,Add2,Add3,CityCode,areacode,Phone,Mobile,Fax,EMail,Religion,CreditLimit,CreditDays,ActiveYN,CSTNo,LSTNo,PANNo,ITWard_No,Remark,FName,U_Name,U_EntDt,U_AE,TDS_Catg,LogSite_Code) Values ('" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmInc)
loc_1171FD6: var_D4 = "SELECT COUNT(*) FROM RevMast WHERE UPPER(NAME)='" & var_B4;

-- [VERIFIED-VB6] (FrmInc)
loc_11720D6:   var_184 = "Insert Into RevMast (Code,Name,ShortName,ACCode,TaxStru,Site_Code,SysYN,Type,AppMode,FlagAMR,FlagType,DeskCode,PAYTYPE,FieldType,Sundry,RoundOff,BankCommAC,BankCommPer,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES ('" & arg_C;

-- [VERIFIED-VB6] (FrmInc)
loc_1086C1A: var_D4 = "SELECT COUNT(*) FROM TelCallType WHERE UPPER(CallType)='" & var_B4;

-- [VERIFIED-VB6] (FrmInc)
loc_1086D07:   var_184 = "Insert Into TelCallType (Code,CallType,ShortName,ACCode,TaxStru,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & arg_C;

-- [VERIFIED-VB6] (FrmInc)
loc_1225074:   var_A8 = "SELECT COUNT(*) FROM GodownMast WHERE Code='" & arg_C & "' and Site_Code='" & MemVar_1F81078 & "' and LogSite_Code='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmInc)
loc_12250E2:     Me.Text1.Text = "SELECT COUNT(*) FROM GodownMast WHERE Code='" & arg_C;

-- [VERIFIED-VB6] (FrmInc)
loc_1225121:     var_A0 = "Insert Into GodownMast (Code,Name,U_Name,U_EntDt,U_AE,ShortName,SysYN,Site_Code,LogSite_Code) VALUES ('" & arg_C & "','" & arg_10;

-- [VERIFIED-VB6] (FrmInc)
loc_12251D7: var_F8 = "SELECT COUNT(*) FROM Depart WHERE UPPER(NAME)='" & var_CC;

-- [VERIFIED-VB6] (FrmInc)
loc_1225293:   Me.Text1.Text = "Insert Into GodownMast (Code,Name,U_Name,U_EntDt,U_AE,ShortName,SysYN,Site_Code,LogSite_Code) VALUES ('" & arg_C;

-- [VERIFIED-VB6] (FrmInc)
loc_12252C4:   var_98 = "Insert Into Depart (Code,Name,Site_Code,KotYn,POS,U_Name,U_EntDt,U_AE,RestType,OutletYN,ShortName,LinkToRoom,RateInclTax,DiscApp,Roff,BackColor,LogSite_Code,TokenPrint) VALUES ('" & arg_C;

-- [VERIFIED-VB6] (FrmInc)
loc_119F7BA: var_D8 = "SELECT COUNT(*) FROM ACGROUP WHERE UPPER(GROUPNAME)='" & var_B8;

-- [VERIFIED-VB6] (FrmInc)
loc_119F84A:   unk_5749CB.Execute "SELECT MAX(ID) AS MAXID FROM ACGROUP", var_B8, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_119F912:   var_10C = "Insert Into ACGROUP (ID,GroupCode,GroupName,GroupNameBiLang,Site_Code,GroupNature,Nature,MainGrCode,SubLedYN,BlOrd,AliasYN,SysGroup,GroupHelp,TradingYN,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES (" & var_108;

-- [VERIFIED-VB6] (FrmInc)
loc_1367F90: unk_5749CB.Execute "SELECT COUNT(*) FROM VoucherCat WHERE Category='" & arg_C & "' And NCat='" & arg_10 & "'", var_BC, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_1368008:   unk_5749CB.Execute "Insert Into VoucherCat (Category,NCat,Site_Code,LogSite_Code) VALUES ('" & arg_C & "','" & arg_10 & "','HO','HO')", var_BC, -1;

-- [VERIFIED-VB6] (FrmInc)
loc_136805D: var_10C = "SELECT COUNT(*) FROM Voucher_Type WHERE V_Type='" & arg_14 & "' AND SITE_CODE='" & MemVar_1F81070 & "' AND LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmInc)
loc_13680CB:   Me.Text1.Text = "SELECT COUNT(*) FROM Voucher_Type WHERE V_Type='" & arg_14;

-- [VERIFIED-VB6] (FrmInc)
loc_136810F:   var_90 = "Insert Into Voucher_Type (Category,NCat,V_Type,Site_Code,Contratype,Description,Description_Help,Short_Name,Number_Method,RestCode,Separate_Narr,Common_Narr,ChqNo,ChqDt,ClgDt,DefaultCrAc,DefaultDrAc,FirstDrCr,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES ('" & arg_C;

-- [VERIFIED-VB6] (FrmInc)
loc_1368327:   var_9C = "SELECT COUNT(*) FROM Voucher_Prefix WHERE V_Type='" & arg_14 & "' AND SITE_CODE='" & MemVar_1F81070 & "' AND logSITE_CODE='";

-- [VERIFIED-VB6] (FrmInc)
loc_13683E9:     var_98 = "Insert Into Voucher_PREFIX (V_Type,Site_Code,DATE_FROM,DATE_TO,PREFIX,U_EntDt,LogSite_Code) VALUES ('" & arg_14 & "','" & MemVar_1F81070;

-- [VERIFIED-VB6] (FrmInc)
loc_1368516:   var_9C = "SELECT COUNT(*) FROM Voucher_Prefix WHERE V_Type='" & arg_14 & "' AND SITE_CODE='" & MemVar_1F81070 & "' AND logSITE_CODE='";

-- [VERIFIED-VB6] (FrmInc)
loc_13685BF:     var_90 = "Insert Into Voucher_PREFIX (V_Type,Site_Code,DATE_FROM,DATE_TO,PREFIX,U_EntDt,LogSite_Code) VALUES ('" & arg_14;

-- [VERIFIED-VB6] (FrmInc)
loc_110CBB6: var_D4 = "SELECT COUNT(*) FROM ItemCatMast WHERE UPPER(NAME)='" & var_B4;

-- [VERIFIED-VB6] (FrmInc)
loc_110CC8C:   var_144 = "Insert Into ItemCatMast (Code,Name,RoundOff,AcName,OutletYN,U_Name,U_EntDt,U_AE,Flag,CatType,RestCode,DrCr,RevCode,TaxStru,sITE_cODE,LOGSITE_CODE) VALUES ('" & arg_C;

-- [VERIFIED-VB6] (FrmInc)
loc_10E115E: var_D4 = "SELECT COUNT(*) FROM TaxStru WHERE CODE='" & var_B4;

-- [VERIFIED-VB6] (FrmInc)
loc_10E125E:   var_184 = "Insert Into TaxStru (Code,Name,Sno,TaxCode,Nature,U_Name,U_EntDt,U_AE,Rate,Limit,Site_Code,CondApp,LogSite_Code) VALUES ('" & arg_C;

-- [VERIFIED-VB6] (FrmInc)
loc_100E5B6: var_D4 = "SELECT COUNT(*) FROM UnitMast WHERE UPPER(NAME)='" & var_B4;

-- [VERIFIED-VB6] (FrmInc)
loc_100E675:   var_104 = "Insert Into UnitMast (Name,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) VALUES ('" & arg_C;

-- [VERIFIED-VB6] (FrmInc)
loc_108FB9A: var_D4 = "SELECT COUNT(*) FROM SundryMast WHERE UPPER(NAME)='" & var_B4;

-- [VERIFIED-VB6] (FrmInc)
loc_108FC87:   var_184 = "Insert Into SundryMast (Code,Name,Nature,CalcSign,SysYN,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) VALUES ('" & arg_C;

-- [VERIFIED-VB6] (FrmInc)
loc_10FADD2: var_D4 = "SELECT COUNT(*) FROM SundryTypeFix WHERE UPPER(SundryCode)='" & var_B4;

-- [VERIFIED-VB6] (FrmInc)
loc_10FAEBF:   var_184 = "Insert Into SundryTypeFix (SundryCode,SNo,DispName,CalcFormula,PerOrAmt,RoundOff,Nature,CalcSign,SysYN,Grp,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & arg_C;


-- ### Transfer  (43 statement(s))
-- [VERIFIED-VB6] (Transfer)
loc_1351A93: unk_4D0FAB.Execute "DELETE FROM Table_SearchField", var_C8, -1;

-- [VERIFIED-VB6] (Transfer)
loc_1351DB7:   Call 0.Method_arg_30 ("IF EXISTS (SELECT * FROM sysobjects WHERE name ='Tr_", var_CC, var_118, "IF EXISTS (SELECT * FROM sysobjects WHERE name ='Tr_");

-- [VERIFIED-VB6] (Transfer)
loc_1351E77:     For var_122 =  To CInt(var_A8): "IF EXISTS (SELECT * FROM sysobjects WHERE name ='Tr_" = var_122 'Integer;

-- [VERIFIED-VB6] (Transfer)
loc_1352128:     var_F8 = CVar(Proc_6_14_EEE8DC(var_164, "Insert InTo Table_SearchField(TABLE_NAME,SEARCH_FIELD,SiteCode,LogSiteCode,TransactionYn,LineItemYn,UpLoadDate,UniqueField) Values('", var_250)) 'String;

-- [VERIFIED-VB6] (Transfer)
loc_13E834A: Call 0.Method_CmdTransOut_Click0 (CInt(2), var_8C, var_94, "Delete from Transout where SiteCode='");

-- [VERIFIED-VB6] (Transfer)
loc_13E8592:       unk_4D0FAB.Execute var_120 & var_120 & "','LogSite_Code','V_DATE','')", "insert into TransOut(SiteCode,Type,TableName,FieldName,Udate,MainDB)values('" & var_11C & "','0','", var_D4;

-- [VERIFIED-VB6] (Transfer)
loc_13E8679:         unk_4D0FAB.Execute var_120 & var_120 & "','LogSite_Code','CALL_START_DATE','')", "insert into TransOut(SiteCode,Type,TableName,FieldName,Udate,MainDB)values('" & var_11C & "','0','", var_D4;

-- [VERIFIED-VB6] (Transfer)
loc_13E8A67:           unk_4D0FAB.Execute var_120 & var_120 & "','LogSite_Code','UEntDt','')", "insert into TransOut(SiteCode,Type,TableName,FieldName,Udate,MainDB)values('" & var_11C & "','0','", var_D4;

-- [VERIFIED-VB6] (Transfer)
loc_13E8AF6:           unk_4D0FAB.Execute var_120 & var_120 & "','LogSite_Code','U_EntDt','')", "insert into TransOut(SiteCode,Type,TableName,FieldName,Udate,MainDB)values('" & var_11C & "','0','", var_D4;

-- [VERIFIED-VB6] (Transfer)
loc_15BBE1A: Call 0.Method_CmdTransIn_Click0 (CInt(2), var_8C, var_94, "Delete from TransIn where SiteCode='");

-- [VERIFIED-VB6] (Transfer)
loc_15BC7A4:       var_958 = "insert into TransIn(SiteCode,Type,TableName,FieldName,Udate,MainDB,PK1,PK2,PK3,PK4,PK5,PK6,PK7)values('" & var_11C & "','0','";

-- [VERIFIED-VB6] (Transfer)
loc_15BC89D:         var_958 = "insert into TransIn(SiteCode,Type,TableName,FieldName,Udate,MainDB,PK1,PK2,PK3,PK4,PK5,PK6,PK7)values('" & var_11C & "','0','";

-- [VERIFIED-VB6] (Transfer)
loc_15BCD44:         var_958 = "insert into TransIn(SiteCode,Type,TableName,FieldName,Udate,MainDB,PK1,PK2,PK3,PK4,PK5,PK6,PK7)values('" & var_11C & "','0','";

-- [VERIFIED-VB6] (Transfer)
loc_132826E:   unk_4D0FAB.Execute "Select DTCPETakeEffectHeadToSite from Enviro where LOGSite_code='" & MemVar_1F81078 & "'", var_BC, -1;

-- [VERIFIED-VB6] (Transfer)
loc_13283AA:     Me.Open "Select Site_Code as Code,Site_Desc as Name From Site Order by Name", CVar(MemVar_1F81044), 3;

-- [VERIFIED-VB6] (Transfer)
loc_13283D7:     var_BC = CVar("Select Site_Code as Code,Site_Desc as Name From Site Where Site_Code<>'" & MemVar_1F81070 & "' Order by Name") 'String;

-- [VERIFIED-VB6] (Transfer)
loc_13284BB:   unk_4D0FAB.Execute "Select Comp_Name,Comp_Code,SName,CYear from company order by STart_dt Desc", var_BC, -1;

-- [VERIFIED-VB6] (Transfer)
loc_132868C:   unk_4D0FAB.Execute "Select HeadOffice From Company", var_BC, -1;

-- [VERIFIED-VB6] (Transfer)
loc_196D24F:       Call 0.Method_arg_30 ("Delete From ", var_14C);

-- [VERIFIED-VB6] (Transfer)
loc_196D2A4:   var_13C = "Select * From TransOut Where SiteCode ='" & arg_C & "'";

-- [VERIFIED-VB6] (Transfer)
loc_196D355:       Me.Execute CStr("Delete From " & var_90.Fields.Item("TableName").Value), var_178, -1;

-- [VERIFIED-VB6] (Transfer)
loc_196D444:     var_98.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value, CVar(global_56), 1;

-- [VERIFIED-VB6] (Transfer)
loc_196DACC:       var_178 = "Select * From " & var_90.Fields.Item("TableName").Value & " Where ";

-- [VERIFIED-VB6] (Transfer)
loc_196DDEE:         Me.Connection15.Execute CStr("Select * From " & var_90.Fields.Item("TableName").Value), var_178, -1;

-- [VERIFIED-VB6] (Transfer)
loc_196DE21:         var_118 = "Select * From ";

-- [VERIFIED-VB6] (Transfer)
loc_196E0B9:         var_98.Update var_108, var_118;

-- [VERIFIED-VB6] (Transfer)
loc_196E12F:       Me.Connection15.Execute "Select * From TransIn Where SiteCode ='" & arg_C & "'" & var_A0 & " Order By TableName", var_14C, -1;

-- [VERIFIED-VB6] (Transfer)
loc_196E840:         var_EC.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value, CVar(arg_10), 3;

-- [VERIFIED-VB6] (Transfer)
loc_196EF5B:           New.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value, CVar(global_56), 3;

-- [VERIFIED-VB6] (Transfer)
loc_196F053:             New.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value & " Where site_code='HO'", CVar(global_56), 3;

-- [VERIFIED-VB6] (Transfer)
loc_196F0D7:             var_19C = "Select * From " & var_90.Fields.Item("TableName").Value & " Where Logsite_code='" & CVar(MemVar_1F81070) & "'";

-- [VERIFIED-VB6] (Transfer)
loc_196F14D:         var_94.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value, CVar(arg_10), 1;

-- [VERIFIED-VB6] (Transfer)
loc_196F26E:             var_158 = Proc_154_4_F2B680(var_D4, CVar(var_98.Fields.Item(CVar(var_B8))), 1 & "Select * From TransIn Where SiteCode ='" & arg_C & "'" & " And " & var_B8 & "=");

-- [VERIFIED-VB6] (Transfer)
loc_196F688:           var_118 = "Select * From ";

-- [VERIFIED-VB6] (Transfer)
loc_196FB35:             var_94.Update var_108, var_118;

-- [VERIFIED-VB6] (Transfer)
loc_196FB65:       var_108 = "Delete from TransDel where UEntdt=";

-- [VERIFIED-VB6] (Transfer)
loc_1684BA9: var_88.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value, CVar(arg_10), 3;

-- [VERIFIED-VB6] (Transfer)
loc_16852F2:   var_8C.Open "Select * From " & var_E4.Value & " ", CVar(global_56), 3;

-- [VERIFIED-VB6] (Transfer)
loc_16853E5:     var_8C.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value & " Where Site_Code='HO'", CVar(global_56), 3;

-- [VERIFIED-VB6] (Transfer)
loc_1685466:     var_174 = "Select * From " & Me.Recordset15.Fields.Item("TableName").Value & " Where LogSite_Code='" & Trim(MemVar_1F81070);

-- [VERIFIED-VB6] (Transfer)
loc_1685A07:   Me.Connection15.Execute CStr("Select * From " & Me.Recordset15.Fields.Item("TableName").Value & " Where " & CVar(var_94)), var_174, -1;

-- [VERIFIED-VB6] (Transfer)
loc_1685DB3: var_8C.Open "Select * From TransDel Where TableName='" & Me.Recordset15.Fields.Item("TableName").Value & "'", CVar(global_56), 3;

-- [VERIFIED-VB6] (Transfer)
loc_EFDFAD:   MsgBox("Please Select At Least One Company", &H40, CVar(var_E8), var_108, var_118);


-- ### frmMenuItemCopy  (25 statement(s))
-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C415A:     var_1D4 = "select Count(*) from ItemMast where Name='" & Trim(CVar(CStr(var_C8))) & "' And RestCode= '" & Trim(CVar(var_AC)) & "' And ItemType Not In ('Combo','Store') And DispCode<>9999 And GravyItem<>'Yes'";

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C43B0:       unk_4960DD.Execute CStr("select Code,Name from ItemGrp where Name='" & Trim(var_E8) & "' And RestCode= '" & Trim(CVar(var_AC)) & "'"), var_1E4, -1;

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C4421:         var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemGrp Where Site_Code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C456C:         var_AC = "Insert Into ItemGrp(Code,Name,Type,RestCode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & CStr("select Code,Name from ItemGrp where Name='" & Trim(Format(CStr(var_E8), "0000")));

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C471C:       unk_4960DD.Execute CStr("select Code,Name  from ItemCatMast where Name='" & Trim(var_E8) & "' And RestCode= '" & Trim(CVar(var_AC)) & "'"), var_1E4, -1;

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C478D:         var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemCatMast WHERE isnumeric(SUBSTRING(Code,3,4) )=1 and SITE_CODE='" & MemVar_1F81070;

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C4821:         var_AC = CStr("select Code,Name  from ItemCatMast where Name='" & Trim(Format(CStr(var_E8), "0000")));

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C48EA:         var_1E4 = "Select * from ItemCatMast where  Name='" & var_108 & "' And Code='" & Trim(CVar(CStr(Txt.DispID_41))) & "'  And RestCode= '";

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C4B82:           var_AC = "Insert Into ItemCatMast(Code,Name,RestCode,RoundOff,AcName,TaxStru,Flag,CatType,OutletYN," & " U_Name,U_EntDt,U_AE,Drcr,RevCode,SITE_CODE,LOGSITE_CODE)";

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C4E78:           var_AC = "Insert Into RevMast(Code,Name,ShortName,SysYN,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,FieldType,DeskCode,TaxStru,Type,AcCode,LOGSITE_CODE) Values ('" & var_94;

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C5055:       unk_4960DD.Execute "select Count(*) from Item where Code='" & global_100 & "'", var_C8, -1;

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C50F3:         var_390 = "Insert Into Item(Code,Name,BarCode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_100 & "','" & CStr(var_C8);

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C5413:       var_AC = "Insert Into ItemMast (Code,Name,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,DiscApp,RateEdit,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,SaleRate,SChrgApp,RateIncTax,IssueUnit,ConvRatio,PurchRate,LPurRate,LOGSITE_CODE,ActiveYN,NType,FinItem,ItemType,BarCode,CommodityCode) " & " Values ('";

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C575F:       var_B8 = "Insert Into Itemrate(ItemCode,RestCode,Rate,AppDate,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('" & global_100;

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C58D6:       var_390 = "Select * From BOM Where FinItem='" & CStr(var_C8) & "' And RestCode='";

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C58FD:       var_5B4 = var_390 & var_24C & "' And AppDate=(Select Max(AppDate) From BOM Where FinItem='" & CStr(var_E8) & "' And RestCode='" & var_5AC;

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_17C5972:         var_AC = "Insert Into BOM(Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,Cost,Waste,Total,U_Name,U_EntDt,U_AE,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode) Values ('" & MemVar_1F81070;

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_11D0E8C: var_EC = "SELECT Code,Name,RestType,ShortName FROM Depart Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND (OutletYN='Y' and RestType<>'Banquet') ";

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_11D0EA8: var_FC = var_EC & "Union All Select '" & MemVar_1F81078 & "BANQ' Code,'BANQUET' Name,'Banquet' RestType,'BANQ' ShortName " & "Union All Select '";

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_11D0F34: var_EC = "select IG.code ,IG.name,IG.restcode as Depart from itemgrp IG WHERE (IG.LOGSITE_CODE='" & MemVar_1F81078 & "' OR IG.LOGSITE_CODE='HO') order by IG.Name";

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_11D0F9F: var_E8 = "Select IC.Code,IC.Name,IC.RestCode as Depart From ItemCatMast IC WHERE (IC.LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_F6C08E: var_8C = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast WHERE Site_Code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_160D874: var_B4 = "SELECT ItemMast.RestCode,ItemMast.Code as ItemCode,ItemMast.Name as ItemName,Unit, ItemGrp.Code AS GroupCode,ItemGrp.Name AS GroupName,ItemCatMast.Code AS ItemCatCode,ItemCatMast.Name AS ItemCatName,ItemMast.DiscApp,ItemMast.RateEdit,ItemMast.Type,ItemMast.Kitchen,ItemMast.SaleRate,ItemMast.SChrgApp,ItemMast.RateIncTax,ItemMast.IssueUnit,ItemMast.ConvRatio,ItemMast.PurchRate,ItemMast.LPurRate,ItemMast.NType,ItemMast.FinItem,ItemMast.ItemType,ItemMast.BarCode,ItemMast.CommodityCode,ItemMast.DispCode FROM ItemMast " & "LEFT JOIN ItemCatMast ON ItemMast.ItemCatCode = ItemCatMast.Code LEFT JOIN ItemGrp ON ItemMast.ItemGroup = ItemGrp.Code LEFT JOIN Depart ON ItemMast.RestCode = Depart.Code  WHERE ItemMast.RestCode='";

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_160D8B1: var_138 = FGrid1.DispID_10000 & var_A8 & "' And (ItemMast.LOGSITE_CODE='" & MemVar_1F81078 & "' OR ItemMast.LOGSITE_CODE='HO') And ItemMast.Code Not In (Select Code From ItemMast Where RestCode='";

-- [VERIFIED-VB6] (frmMenuItemCopy)
loc_160E3B7:     var_A8 = Proc_6_37_E618F4(var_C4, "Select Rate From ItemRate Where ItemCode='", var_1C8, -1, var_1CC, CDbl(0), var_158);


-- ### FrmPOSBillDeletion  (44 statement(s))
-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_115EC6B: Call 0.Method_CmdDelete_UnknownEvent_90 (CInt(2), var_B0, var_B4, "SELECT SHORTNAME FROM DEPART WHERE CODE='", var_D4, -1);

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_115ED1B: unk_4993DF.Execute "Delete from TempPosDel", var_D4, -1;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_115ED7D: Call 0.Method_CmdDelete_UnknownEvent_90 (CInt(0), var_B0, "Insert into TempPosDel(OldDocId,OldVno) Select DocId,Vno from Sale1 Where VDate>= ", var_210);

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_115EE83: Call 0.Method_CmdDelete_UnknownEvent_90 (CInt(1), var_B0, CVar("UPDATE VOUCHER_PREFIX SET START_SRL_NO=" & CStr(global_84) & " WHERE "));

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_F8B345: var_B4 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where  (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name";

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_F8B3B7: var_B4 = "SELECT Code,Name,PayType FROM RevMast Where PayType In('Cash','Member','Complementary') And (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND FieldType='P' ORDER BY Name";

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_12B6C61: Call 0.Method_CmdSerialize_Click0 (CInt(2), var_94, var_9C, "SELECT SHORTNAME FROM DEPART WHERE CODE='", var_BC, -1, var_98);

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_12B6D14: Proc_6_6_F208E4(var_BC, MemVar_1F810F4, "Select max(Vno) From Sale1 Where VDate Between ", var_24C, -1);

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_12B6E88: Proc_6_6_F208E4(var_BC, MemVar_1F810F4, "Insert into TempPosDel(OldDocId,OldVno,OldVdate) Select DocId,Vno,Vdate from Sale1 Where VDate Between ", var_24C, -1, var_98);

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_12B6FC7: Proc_6_6_F208E4(var_BC, MemVar_1F810F4, "Insert into TempPosDel(OldDocId,OldVno,OldVdate) Select DocId,Vno,Vdate from Sale1 Where VDate Between ", var_24C, -1);

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_130EEDC: Proc_6_6_F208E4(var_A8, MemVar_1F810F4, "Select max(Vno) From Sale1 Where VDate>=", var_1F0, -1);

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_130EFEA: var_98 = "Select Distinct S.DocId,S.Vno From (Sale1 S Left Join PayCharge P on P.DocId=S.DocId) Where IsNull(P.PayType,'') Not In('PPOS','IPOS') And S.VDate Between ";

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_130F1C2:   unk_4993DF.Execute CStr("Select Vno,Vdate,NetAmt as BillAmount,DocId From Sale1 Where DocId='" & Me.Fields.Item(0).Value & "'"), var_100, -1;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_130F50E:     unk_4993DF.Execute CStr("Select Case When IsNull(Sum(AmtCr),0)=" & var_C8 & var_D8 & Me.Fields.Item(0).Value & "'"), var_15C, -1;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_FBD2DC: unk_4993DF.Execute "Update Kot Set ContraDocID='Deleted' Where ContraDocID='" & arg_C & "'", var_B0, -1;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_FBD312: unk_4993DF.Execute "Delete From Sale1 Where DocID='" & arg_C & "'", var_B0, -1;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_FBD348: unk_4993DF.Execute "Delete From Sale2 Where DocID='" & arg_C & "'", var_B0, -1;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_FBD37E: unk_4993DF.Execute "Delete From SunTran Where DocID='" & arg_C & "'", var_B0, -1;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_FBD3B4: unk_4993DF.Execute "Delete From Stock Where DocID='" & arg_C & "'", var_B0, -1;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_FBD3EA: unk_4993DF.Execute "Delete From Paycharge Where DocID='" & arg_C & "'", var_B0, -1;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_FBD420: unk_4993DF.Execute "Delete From GuestReward Where DocID='" & arg_C & "'", var_B0, -1;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_FBD456: unk_4993DF.Execute "Delete From AssignDelivery Where DocID='" & arg_C & "'", var_B0, -1;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_13BF42E: unk_4993DF.Execute "Select * from TempPosDel Order By OldVno", var_A8, -1;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_13BF4FA:     Proc_6_38_E75F08(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Sale1 Set DocId='" & var_AC.Item("NewDocId").Value & "',Vno=", var_214);

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_13BF625:     Proc_6_38_E75F08(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Sale2 Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=");

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_13BF750:     Proc_6_38_E75F08(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update SunTran Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=");

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_13BF87B:     Proc_6_38_E75F08(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Stock Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=");

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_13BF9A6:     Proc_6_38_E75F08(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update PayCharge Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=");

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_13BFAD1:     Proc_6_38_E75F08(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update GuestReward Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',BillNo=");

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_13BFBFC:     Proc_6_38_E75F08(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update AssignDelivery Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=");

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_13BFD2B:     var_130 = "Update Kot Set ContraDocId='" & var_88.Fields.Item("NewDocId").Value & "' Where ContraDocId='" & var_88.Fields.Item("OldDocid").Value;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_10730CA: unk_4993DF.Execute "Select * from TempPosDel Order By OldVno", var_AC, -1;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_107325B:     var_234 = "Update TempPosDel Set NewDocId='" & var_16C & "',NewVno=" & Trim(var_1BC) & " Where OldDocId='" & var_88.Fields.Item("OldDocid").Value;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_119FFB0:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_16C, var_17C, var_18C);

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_1124738: var_8C = "Update TempPosDel Set NewDocId=SubString(OldDocid,1,13)+Space(8 - Len(Cast(" & CStr(global_80);

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_11247C3: unk_4993DF.Execute "Select IsNull(Max(AutoId),0) from TempPosDel", var_C8, -1;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_1124826: var_F4 = "Update Sale1 Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T Where DocId=T.OldDocId and Vprefix=Year('" & Year(MemVar_1F810F4);

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_1124881: var_114 = "Update Sale2 Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T Where DocId=T.OldDocId  and Vprefix=Year('" & var_C8 & "')";

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_11248BB: unk_4993DF.Execute "Update SunTran Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T Where DocId=T.OldDocId ", var_C8, -1;

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_11248EB: var_F4 = "Update Stock Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T Where DocId=T.OldDocId  and Vprefix=Year('" & Year(MemVar_1F810F4);

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_112493D: var_F4 = "Update PayCharge Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T Where DocId=T.OldDocId  and Vprefix=Year('" & Year(MemVar_1F810F4);

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_112499C: var_88 = CStr("Update Kot Set ContraDocId=T.NewDocId From TempPosDel T Where ContraDocId=T.OldDocId and Vprefix=Year('" & var_C8 & "')");

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_11249D4: var_88 = CStr(CLng("Update Kot Set ContraDocId=T.NewDocId From TempPosDel T Where ContraDocId=T.OldDocId and Vprefix=Year('" & var_C8 & "')"));

-- [VERIFIED-VB6] (FrmPOSBillDeletion)
loc_11249ED: Proc_6_6_F208E4(var_C8, MemVar_1F810EC, CVar("UPDATE VOUCHER_PREFIX SET START_SRL_NO=" & var_88 & " WHERE "), var_1B4, -1, var_CC, var_CC, var_CC);


-- ### FrmPOSSaleDataTransfer  (12 statement(s))
-- [VERIFIED-VB6] (FrmPOSSaleDataTransfer)
loc_F68274: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where Code<>'" & MemVar_1F81078 & "RS' And (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name";

-- [VERIFIED-VB6] (FrmPOSSaleDataTransfer)
loc_F682EA: var_8C = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency') Order By Name";

-- [VERIFIED-VB6] (FrmPOSSaleDataTransfer)
loc_122915C: var_8C = "Select S.Vno,S.Vdate,S.NetAmt as BillAmount,S.DocId From (PayCharge P Inner Join Sale1 S on P.DocId=S.DocId) Where P.PayType In ('Company') And P.PayType Not In('PPOS','IPOS') And P.PayCode Not In('" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmPOSSaleDataTransfer)
loc_1071C93: unk_486A28.Execute "Select * From " & arg_C & " Where DocId='" & arg_10 & "'", var_C4, -1;

-- [VERIFIED-VB6] (FrmPOSSaleDataTransfer)
loc_1071CE1: Me.Recordset15.Open CVar("Select * From " & arg_C), var_B4, 1;

-- [VERIFIED-VB6] (FrmPOSSaleDataTransfer)
loc_1071EC4:   var_90.Update var_B4, var_DC;

-- [VERIFIED-VB6] (FrmPOSSaleDataTransfer)
loc_11BB655:   MsgBox(CVar("Select " & CStr(var_A4)), &H40, var_164, var_174, var_184);

-- [VERIFIED-VB6] (FrmPOSSaleDataTransfer)
loc_118C745: Me.Execute "Delete From Sale1", var_BC, -1;

-- [VERIFIED-VB6] (FrmPOSSaleDataTransfer)
loc_118C766: Me.Execute "Delete From Sale2", var_BC, -1;

-- [VERIFIED-VB6] (FrmPOSSaleDataTransfer)
loc_118C787: Me.Execute "Delete From Stock", var_BC, -1;

-- [VERIFIED-VB6] (FrmPOSSaleDataTransfer)
loc_118C7A8: Me.Execute "Delete From SunTran", var_BC, -1;

-- [VERIFIED-VB6] (FrmPOSSaleDataTransfer)
loc_118C7C9: Me.Execute "Delete From PayCharge", var_BC, -1;


-- ### rPOSRepView
--     no SQL extracted from this object  [UNKNOWN]

-- ### FrmPOSRecycleData  (17 statement(s))
-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_11054B2: var_94 = "SELECT Code,Name,RestType,LOGSITE_CODE FROM Depart Where Code<>'" & MemVar_1F81078 & "RS' And (LOGSITE_CODE='" & MemVar_1F81078;

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_13BA539: unk_436EEF.Execute "SELECT SHORTNAME FROM DEPART WHERE CODE='" & arg_C & "'And Logsite_Code='" & arg_10 & "'", var_B8, -1;

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_13BA5C1: var_E4 = CVar("Delete From KOT Where VType In('" & "K" & var_88 & "','" & "N" & var_88 & "') And LogSite_Code='" & arg_10 & "' And VDate Between ") 'String;

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_13BA66F: Proc_6_6_F208E4(var_B8, MemVar_1F810F4, CVar("Delete From Sale1 Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between "));

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_13BA709: Proc_6_6_F208E4(var_B8, MemVar_1F810F4, CVar("Delete From Sale2 Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between "));

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_13BA7A3: Proc_6_6_F208E4(var_B8, MemVar_1F810F4, CVar("Delete From Stock Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between "));

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_13BA83D: Proc_6_6_F208E4(var_B8, MemVar_1F810F4, CVar("Delete From SunTran Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between "));

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_13BA8D7: Proc_6_6_F208E4(var_B8, MemVar_1F810F4, CVar("Delete From Paycharge Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between "));

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_13BA95C: var_98 = "Delete From POS_SBill Where DocID In (Select DocId From SplitSale1 Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10;

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_13BAA08: var_E4 = CVar("Delete From SplitSale1 Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between ") 'String;

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_13BAAA2: var_E4 = CVar("Delete From SplitSale2 Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between ") 'String;

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_13BAB3C: var_E4 = CVar("Delete From SplitStock Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between ") 'String;

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_13BABD6: var_E4 = CVar("Delete From SplitedSunTran Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between ") 'String;

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_13BAC5D: Proc_6_6_F208E4(var_B8, MemVar_1F810F4, "UPDATE VOUCHER_PREFIX SET START_SRL_NO=0 WHERE DATE_FROM=");

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_13BAD09: Proc_6_6_F208E4(var_B8, MemVar_1F810F4, "UPDATE VOUCHER_PREFIX SET START_SRL_NO=0 WHERE DATE_FROM=");

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_13BADB5: Proc_6_6_F208E4(var_B8, MemVar_1F810F4, "UPDATE VOUCHER_PREFIX SET START_SRL_NO=0 WHERE DATE_FROM=");

-- [VERIFIED-VB6] (FrmPOSRecycleData)
loc_11E9337:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_16C, var_17C, var_18C);


-- ### frmUnitMast  (10 statement(s))
-- [VERIFIED-VB6] (frmUnitMast)
loc_1084C72: var_C4 = "SELECT Name as Unit, Status as Active,Site_code,LOGSITE_CODE,U_AE,U_Name,U_EntDt from UnitMast WHERE (Site_code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (frmUnitMast)
loc_1084CF6: var_C4 = "SELECT Name as Unit, Status as Active,Site_code,LOGSITE_CODE,U_AE,U_Name,U_EntDt from UnitMast WHERE (Site_code='" & MemVar_1F81070;

-- [VERIFIED-VB6] (frmUnitMast)
loc_11CA9F8:   var_114 = "Delete From UnitMast Where Name='" & Me.Fields.Item("Unit").Value & "'";

-- [VERIFIED-VB6] (frmUnitMast)
loc_F117A6: MemVar_1F810E4 = "SELECT Name AS SEARCHCODE,Name,Status From UnitMast ORDER BY Name";

-- [VERIFIED-VB6] (frmUnitMast)
loc_106CE99: unk_4716A4.Execute "select Name,Status,U_Name,U_AE,U_Entdt FROM UnitMast  ORDER BY Name", var_BC, -1;

-- [VERIFIED-VB6] (frmUnitMast)
loc_11EB735:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_9C, "Insert Into UnitMast(Name,Status,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('");

-- [VERIFIED-VB6] (frmUnitMast)
loc_11EB869:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, "UPDATE UnitMast SET Name='");

-- [VERIFIED-VB6] (frmUnitMast)
loc_11E06D3:   unk_4716A4.Execute CStr("Select Name,Status U_Name,U_AE,U_EntDt From UnitMast where Name='" & Me.Fields.Item("Unit").Value & "'  "), var_118, -1;

-- [VERIFIED-VB6] (frmUnitMast)
loc_10842EB:   Call 0.Method_Proc_298_30_10844E80 (CInt(1), var_A8, var_AC, "Select Count(*) From UnitMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1);

-- [VERIFIED-VB6] (frmUnitMast)
loc_10843FD:   Call 0.Method_Proc_298_30_10844E80 (CInt(1), var_A8, var_AC, "Select Count(*) From UnitMast Where (LOGSITE_CODE='" & MemVar_1F81078 & "' or LOGSITE_CODE='HO') and (NAme='", var_A0, -1);


-- ### FrmBdayLookup  (2 statement(s))
-- [VERIFIED-VB6] (FrmBdayLookup)
loc_11B2C00: var_BC = "Select '',AA.Name As GuestName,AA.Type As GuestType,AA.Add1 As Address1,AA.Add2 As Address2, AA.Bday As BirthDay,AA.Aday as Anniversary," & "AA.MobileNo,AA.PhoneNo,AA.EmailId,AA.FaxNo,AA.CityName As City,AA.StateName As State,AA.CountryName As Nation from (Select Bday= case when dateadd(yy,datediff(yy,guestprof.Birthdate,getdate()),guestprof.Birthdate)< getdate() then ";

-- [VERIFIED-VB6] (FrmBdayLookup)
loc_11122C7: var_8C = "Select '',AA.Name As GuestName,AA.Type As GuestType,AA.Add1 As Address1,AA.Add2 As Address2, AA.Bday As BirthDay,AA.Aday as Anniversary," & "AA.MobileNo,AA.PhoneNo,AA.EmailId,AA.FaxNo,AA.CityName As City,AA.StateName As State,AA.CountryName As Nation from (Select Bday= case when dateadd(yy,datediff(yy,guestprof.Birthdate,getdate()),guestprof.Birthdate)< getdate() then ";


-- ### FrmJobScheduler
--     no SQL extracted from this object  [UNKNOWN]
