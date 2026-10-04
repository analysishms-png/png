"""Structure Update / Schema Upgrade - admin-gated port of the SAFE SUBSET of
VB6 frmCompany `btnStruUpdNew` (VB6 chain runs DDL only; nothing runs here at
import - the statement list is built and audited, never executed).

VB6 chain (evidence):
  frmCompany.frm:2735-2837  Private Sub btnStruUpdNew_UnknownEvent_9
      frmCompany.frm:2773-2831  22 Execute DDLs ("Chain-A"), &-continued
                                 strings reassembled verbatim (2773 drop_pk,
                                 2776/2793 view drops, 2791/2796 view creates,
                                 2809/2816 eInvoiceBill1/2, 2817-2831 the 15
                                 conditional ADD COLUMNs)
      frmCompany.frm:2774  hop -> Hotlib.bas:40649-41388
                                 Public Sub Proc_96_94_1F2C2C8 (740 lines)
      frmCompany.frm:2764-2832 per-company loop (VB6 re-runs the whole set on
                                 every company DB; this port runs it once on
                                 ONE connection - the connected database)
      frmCompany.frm:2833-2834 MsgBox "All Company database updated" + `End`
      Hotlib.bas:40649-41388   573x Proc_6_144_10122FC (ensure column)
                               18x  Proc_6_145_E6B860  (create table)
                               17x  Proc_6_146_113D68C  (create PK)
      MainLib.bas:6314-6358    Proc_6_144_10122FC - "Error in Adding Field "
                               <col> " in Table " <tbl>  (ensure-table first,
                               then column-missing test, then ADD builder)
      MainLib.bas:6360-6371    Proc_6_145_E6B860  - table-exists test
                               (Proc_6_149 = &HFF) else New + Name + append
      MainLib.bas:6373-6429    Proc_6_146_113D68C - index-exists test
                               (Proc_6_151), "Error in Creating Index " ...
                               builds [col],[col] list then executes

INCLUDED - 630 idempotent statements (22 Chain-A + 608 hop), every one guarded
by `IF [NOT] EXISTS (...)`:
  Chain-A  1 drop_pk (RoomDiscount PK_RoomDiscount, guarded), 2 drop_view
           (RoomOccDet, SunTransaction, both `if exists(...)` guarded),
           2 create_view, 2 create_table (eInvoiceBill1/2 create-if-absent),
           15 conditional ADD COLUMNs (Ledger/LedgerM/LedgerMerge/
           LedgerMMerge.SeqNo, Enviro.DisplayRackRow/Col/FontSize/
           PrintSeperateItemInPOSBill, Depart.EditRemarkYN, Sale1/SplitSale1/
           Sale1Log.EditRemark, FacilityBill1.LocationCode, FacilityBill2.SNo,
           Voucher_Type.Alias)
  Hop      573 ensure-column (Proc_6_144), 18 create_table (Proc_6_145),
           17 create-PK (Proc_6_146)

EXCLUDED (hard rules - these strings must never enter the catalog):
  - the one-time irreversible block: `Alter Table FaEnviro Drop Column kdate`,
    `Update Company Set SerialKeyNo=''`, `Alter Table FaEnviro Drop CONSTRAINT
    DF_FaEnviro_KDate`, `Alter table Company Add Comp_Id`
  - the 47 unguarded login-normalisation writes (DML)
  - the VB6 `End` app-kill after the "All Company database updated" MsgBox
  - ANY auto-run at login/startup (no side effect at import; `run()` must be
    called explicitly with CONFIRM_TOKEN by the admin-gated UI)

SAFETY ASSERTION (runs at import): `_audit()` scans the whole statement list
and raises AssertionError when a statement lacks a guard keyword
(`if exists` / `if not exists`), when its body starts with anything other than
ALTER/CREATE/DROP, when it carries `;` (chained second statement), or when it
drops something outside `ALLOWED_DROPS` - i.e. exactly the three VB6 guarded
DROPs may appear:
    frmCompany:2773  RoomDiscount PK_RoomDiscount    (`if exists (sys.key_constraints ...)`)
    frmCompany:2776  drop view [dbo].[RoomOccDet]     (`if exists (dbo.sysobjects ... IsView)`)
    frmCompany:2793  drop view [dbo].[SunTransaction] (`if exists (dbo.sysobjects ... IsView)`)
No unguarded DROP/DELETE/TRUNCATE/UPDATE exists anywhere in this module.

TRANSLATION NOTES - MainLib.bas:6314-6427 -> idempotent T-SQL
  Proc_6_144_10122FC (ensure column; args: conn, table, column, type, size,
  flag, default, flag):
    -> `If Not exists (select * from information_schema.columns where
        table_name='T' And column_name='C') Alter Table T Add C <type> ...
        With Values` - the same shape frmCompany.frm:2817-2831 uses verbatim.
    - arg5 flag (&HFF / 0) read as ADOX AllowNulls: 0 -> NOT NULL (32 hop
      columns, every PK component), &HFF -> NULL (MainLib.bas:6320-6331
      threads the flags into the builder).
    - arg6 default: VB6 `""""""` = empty string -> `default ''` for varchar;
      numeric types -> `default ((0))`; datetime/smalldatetime/image get no
      DEFAULT (T-SQL cannot bind VB6's `""` to them) and `With Values` is only
      emitted together with a DEFAULT clause.
    - size is an ADOX byte size, emitted only for varchar (&H32 -> 50);
      datetime/int/float/smallint/bit/image ignore it (datetime(8) is not
      T-SQL).
  Proc_6_145_E6B860 (create table; call sites pass the table name plus four
  `0`s = the decompiler's default optional args):
    -> `if Not exists (select * from dbo.sysobjects where id=object_id(...)
        and OBJECTPROPERTY(id,'IsTable')=1) CREATE TABLE [dbo].[T] (...)`
        (guard shape copied from frmCompany.frm:2797/2810 eInvoiceBill1/2).
    - VB6 creates through ADOX (`Set var_88 = New ...` + Name + catalog
      append), i.e. a create-if-absent whose column list the decompiler
      dropped; a T-SQL table needs >= 1 column, so the CREATE body embeds that
      table's OWN Proc_6_144 column set (source order, de-duplicated). The 573
      follow-up ensure-column statements then self-skip -> identical state.
  Proc_6_146_113D68C (create PK; args: index name, table, 1, &HFF, &HFF,
  then up to 8 column names - the decompiler's trailing `0` is an empty
  optional slot):
    -> `if not exists (select * from sys.indexes where object_id=object_id(...)
        and (name=N'PK_X' or is_primary_key=1)) ALTER TABLE [dbo].[T] ADD
        CONSTRAINT [PK_X] PRIMARY KEY CLUSTERED ([c1], [c2])`.
    - all 17 calls are PK_* names with arg3 = 1 -> PRIMARY KEY CLUSTERED.
    - the `is_primary_key` half is the Python safety net for VB6's
      `On Error Resume Next` (MainLib.bas:6376): a live table that already has
      a PK under a different name is skipped instead of erroring.
    - PK_Help is requested twice on Help (Hotlib.bas:41352 FName, 41360
      CtrlIndex); by-name idempotency keeps the first - same as VB6.

  Chain-A create_view (frmCompany.frm:2791/2796): VB6 executes the bare
    `CREATE VIEW ...` right after the guarded DROP; the port wraps it in the
    same `if not exists (... OBJECTPROPERTY(id,'IsView') = 1)` guard so the
    import-time audit sees a guard keyword on all 630 statements and a failed
    DROP cannot raise a duplicate-object error. The CREATE body is verbatim
    (reassembled &-continued strings).

API:
  plan()            -> list[dict] (id, kind, sql, guarded) - read-only
  guard_audit()     -> dict with counts + violations - read-only
  run(CONFIRM_TOKEN)-> dict, executes everything on ONE connection with
                       per-statement try/except (status ok/skip/error) and a
                       commit at the end.
  The admin gate lives in HMS_py.ui.schema_upgrade_ui (role_of: SA /
  Supervisor only).
"""

from __future__ import annotations

from HMS_py.core import db

#: run() must be handed this exact token (UI big-confirm path only).
CONFIRM_TOKEN = "RUN-SCHEMA-UPGRADE"

#: statement ids whose DROP body was explicitly allow-listed (docstring).
ALLOWED_DROPS: frozenset[str] = frozenset({
    "frmCompany:2773",   # RoomDiscount PK_RoomDiscount
    "frmCompany:2776",   # drop view [dbo].[RoomOccDet]
    "frmCompany:2793",   # drop view [dbo].[SunTransaction]
})

GUARD_KEYWORDS: tuple[str, ...] = ("if not exists", "if exists")

#: Chain-A: (VB6 line, kind, verbatim SQL) - frmCompany.frm:2773-2831
_CHAIN_A: tuple[tuple[int, str, str], ...] = (
    (2773, 'drop_pk', "if exists (SELECT * FROM sys.key_constraints WHERE type = 'PK' AND OBJECT_NAME(parent_object_id) = N'RoomDiscount' And name='PK_RoomDiscount') ALTER TABLE RoomDiscount DROP CONSTRAINT PK_RoomDiscount"),
    (2776, 'drop_view', "if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[RoomOccDet]') and OBJECTPROPERTY(id, N'IsView') = 1)  drop view [dbo].[RoomOccDet]"),
    (2791, 'create_view', 'CREATE VIEW dbo.RoomOccDet AS SELECT  RO.DocId, RO.SNo, RO.FolioNo, RO.Vtype, RO.Site_Code, RO.Vprefix, RO.GuestProf, RO.RoomCat, RO.RoomType, RO.RoomNo, RO.RateCode, RO.RoomRate, RO.ChkInDate, RO.ChkInTime, RO.Adult, RO.Children, RO.DepDate, RO.DepTime, RO.ChkOutDate, RO.ChkOutTime, RO.Type, RO.U_Name, RO.U_EntDt, RO.U_AE, RO.UserchkoutDate, RO.ChkoutUser, RO.NewRoomNo, RO.Reason, RO.PlanCode, RO.PlanAmt, RO.IncInRate, RO.LogSite_Code, RO.PlanDisc, RO.PlanDiscAmt, RO.PlanDiscAppon, RO.RRTaxInc, RO.RRServiceChrg, RO.ChngDate, RO.ExtraBed, RO.RoomTarrif, RO.RoomTaxStru, RO1.ChkInDT, RO1.ChkInTm, RO1.ChkOutDT, RO1.ChkOutTm, GF.RODisc AS RoomDisc, GF.GuestProf AS GuestProfile, GF.MFolioNo, GF.MFolioNoDocid FROM (SELECT dbo.RoomOcc.DocId, dbo.RoomOcc.SNo, dbo.RoomOcc.FolioNo, dbo.RoomOcc.Vtype, dbo.RoomOcc.Site_Code, dbo.RoomOcc.Vprefix, dbo.RoomOcc.GuestProf, dbo.RoomOcc.RoomCat, dbo.RoomOcc.RoomType, dbo.RoomOcc.RoomNo, dbo.RoomOcc.RateCode, dbo.RoomOcc.RoomRate, dbo.RoomOcc.ChkInDate, dbo.RoomOcc.ChkInTime, dbo.RoomOcc.Adult, dbo.RoomOcc.Children, dbo.RoomOcc.DepDate, dbo.RoomOcc.DepTime, dbo.RoomOcc.ChkOutDate, dbo.RoomOcc.ChkOutTime, dbo.RoomOcc.Type, dbo.RoomOcc.U_Name, dbo.RoomOcc.U_EntDt, dbo.RoomOcc.U_AE, dbo.RoomOcc.UserchkoutDate, dbo.RoomOcc.ChkoutUser, dbo.RoomOcc.NewRoomNo, dbo.RoomOcc.Reason, dbo.RoomOcc.PlanCode, dbo.RoomOcc.PlanAmt, dbo.RoomOcc.IncInRate, dbo.RoomOcc.LogSite_Code, dbo.RoomOcc.PlanDisc, dbo.RoomOcc.PlanDiscAmt, dbo.RoomOcc.PlanDiscAppon , dbo.RoomOcc.RRTaxInc, dbo.RoomOcc.RRServiceChrg, dbo.RoomOcc.ChngDate, dbo.RoomOcc.ExtraBed, dbo.RoomOcc.RoomTarrif, dbo.RoomOcc.RoomTaxStru FROM dbo.RoomOcc INNER JOIN (SELECT     MAX(SNo) AS SNo, MAX(DocId) AS Docid FROM dbo.RoomOcc AS RoomOcc_5 GROUP BY DocId, ChngDate) AS R1 ON dbo.RoomOcc.DocId = R1.Docid AND dbo.RoomOcc.SNo = R1.SNo) AS RO INNER JOIN (SELECT RoomOcc_4.DocId AS TDocId, R3.ChkInDate AS ChkInDT, RoomOcc_4.ChkInTime AS ChkInTm, R3.ChkOutDate AS ChkOutDT, R3.ChkOutTime AS ChkOutTm FROM dbo.RoomOcc AS RoomOcc_4 INNER JOIN (SELECT     MAX(R1.DocId2) AS DocId3, MIN(RoomOcc_3.ChkInDate) AS ChkInDate, MAX(R1.ChkOutDate) AS ChkOutDate, MAX(R1.ChkOutTime) AS ChkOutTime FROM dbo.RoomOcc AS RoomOcc_3 INNER JOIN (SELECT RoomOcc_2.ChkOutDate, RoomOcc_2.ChkOutTime, RoomOcc_2.DocId AS DocId2 FROM dbo.RoomOcc AS RoomOcc_2 INNER JOIN (SELECT     MAX(DocId) AS DocId1, MAX(SNo) AS Sno1 FROM dbo.RoomOcc AS RoomOcc_1 GROUP BY DocId) AS R ON RoomOcc_2.DocId = R.DocId1 AND RoomOcc_2.SNo = R.Sno1) AS R1 ON RoomOcc_3.DocID = r1.DocId2 GROUP BY RoomOcc_3.DocId) AS R3 ON RoomOcc_4.DocId = R3.DocId3 WHERE (RoomOcc_4.SNo = 1)) AS RO1 ON RO.DocId = RO1.TDocId INNER JOIN dbo.GuestFolio AS GF ON GF.DocId = RO.DocId'),
    (2793, 'drop_view', "if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SunTransaction]') and OBJECTPROPERTY(id, N'IsView') = 1)  drop view [dbo].[SunTransaction]"),
    (2796, 'create_view', 'CREATE VIEW [SunTransaction] AS SELECT SUM(SunTran.Amount) + SUM(SunTranH.Amount) AS Amt,MAX(SunTranH.SValue) SValue,MAX(SunTranH.DispName) DispName,SunTranH.DocId,SunTranH.Sno,SunTranH.Vtype,SunTranH.VNo, SunTranH.Vdate,SunTranH.PartyCode,SunTranH.SunCode,SunTranH.ROff,SunTran.RestCode,SunTran.SunAppDate,SunTran.RevCode FROM SunTran INNER JOIN SunTranH ON SunTran.Sno = SunTranH.Sno AND SunTran.DocId = SunTranH.DocId GROUP BY SunTranH.DocId,SunTranH.Sno,SunTranH.Vtype,SunTranH.VNo,SunTranH.Vdate,SunTranH.PartyCode,SunTranH.SunCode,SunTranH.ROff,SunTran.RestCode,SunTran.SunAppDate,SunTran.RevCode'),
    (2809, 'create_table', "if Not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[eInvoiceBill1]') and OBJECTPROPERTY(id, N'IsTable') = 1) CREATE TABLE [dbo].[eInvoiceBill1]([UserGSTIN] [varchar](15) NOT NULL,[DocId] [varchar](21) NOT NULL,[TranDtls_TaxSch] [varchar](5) NULL,[TranDtls_SupTyp] [varchar](5) NULL,[TranDtls_RegRev] [varchar](2) NULL,[TranDtls_EcmGstin] [varchar](15) NULL,[TranDtls_IgstOnIntra] [varchar](2) NULL,[DocDtls_Typ] [varchar](11) NOT NULL,[DocDtls_No] [varchar](16) NOT NULL,[DocDtls_Dt] [smalldatetime] NULL,[SellerDtls_Gstin] [varchar](15) NULL,[SellerDtls_LglNm] [varchar](100) NULL,[SellerDtls_TrdNm] [varchar](100) NULL,[SellerDtls_Addr1] [varchar](100) NULL,[SellerDtls_Addr2] [varchar](100) NULL,[SellerDtls_Loc] [varchar](100) NULL,[SellerDtls_Pin] [varchar](6) NULL,[SellerDtls_Stcd] [varchar](2) NULL,[SellerDtls_Ph] [varchar](12) NULL,[SellerDtls_Em] [varchar](100) NULL,[BuyerDtls_Gstin] [varchar](15) NULL,[BuyerDtls_LglNm] [varchar](100) NULL,[BuyerDtls_TrdNm] [varchar](100) NULL,[BuyerDtls_Pos] [varchar](2) NULL,[BuyerDtls_Addr1] [varchar](100) NULL,[BuyerDtls_Addr2] [varchar](100) NULL,[BuyerDtls_Loc] [varchar](100) NULL,[BuyerDtls_Pin] [varchar](6) NULL,[BuyerDtls_Stcd] [varchar](2) NULL,[BuyerDtls_Ph] [varchar](12) NULL,[BuyerDtls_Em] [varchar](100) NULL,[DispDtls_Nm] [varchar](60) NULL,[DispDtls_Addr1] [varchar](100) NULL,[DispDtls_Addr2] [varchar](100) NULL,[DispDtls_Loc] [varchar](100) NULL,[DispDtls_Pin] [varchar](6) NULL,[DispDtls_Stcd] [varchar](2) NULL,[ShipDtls_Gstin] [varchar](15) NULL,[ShipDtls_LglNm] [varchar](100) NULL,[ShipDtls_TrdNm] [varchar](100) NULL,[ShipDtls_Addr1] [varchar](100) NULL,[ShipDtls_Addr2] [varchar](100) NULL,[ShipDtls_Loc] [varchar](100) NULL,[ShipDtls_Pin] [varchar](6) NULL,[ShipDtls_Stcd] [varchar](2) NULL,[ShipDtls_Ph] [varchar](10) NULL,[ShipDtls_Em] [varchar](100) NULL,[ValDtls_AssVal] [float] NULL,[ValDtls_Cgstval] [float] NULL,[ValDtls_Sgstval] [float] NULL,[ValDtls_Igstval] [float] NULL,[ValDtls_Cesval] [float] NULL,[ValDtls_StCesVal] [float] NULL,[ValDtls_Discount] [float] NULL,[ValDtls_OthChrg] [float] NULL,[ValDtls_RndOffAmt] [float] NULL,[ValDtls_TotInvVal] [float] NULL,[ValDtls_TotInvValFc] [float] NULL,[PayDtls_Nm] [varchar](100) NULL,[PayDtls_AccDet] [varchar](18) NULL,[PayDtls_Mode] [varchar](18) NULL,[PayDtls_Fininsbr] [varchar](11) NULL,[PayDtls_PayTerm] [varchar](100) NULL,[PayDtls_PayInstr] [varchar](100) NULL,[PayDtls_CrTrn] [varchar](100) NULL,[PayDtls_DirDr] [varchar](100) NULL,[PayDtls_CrDay] [int] NULL,[PayDtls_PaidAmt] [float] NULL,[PayDtls_Paymtdue] [float] NULL,[RefDtls_InvRm] [varchar](100) NULL,[RefDtls_DocPerdDtls_InvStDt] [smalldatetime] NULL,[RefDtls_DocPerdDtls_InvEndDt] [smalldatetime] NULL,[RefDtls_PrecDocDtls_InvNo] [varchar](20) NULL,[RefDtls_PrecDocDtls_InvDt] [smalldatetime] NULL,[RefDtls_PrecDocDtls_OthRefNo] [varchar](20) NULL,[RefDtls_ContrDtls_RecAdvRefr] [varchar](20) NULL,[RefDtls_ContrDtls_RecAdvDt] [smalldatetime] NULL,[RefDtls_ContrDtls_TendRefr] [varchar](20) NULL,[RefDtls_ContrDtls_Contrrefr] [varchar](20) NULL,[RefDtls_ContrDtls_Extrefr] [varchar](20) NULL,[RefDtls_ContrDtls_Projrefr] [varchar](20) NULL,[RefDtls_ContrDtls_Porefr] [varchar](20) NULL,[RefDtls_ContrDtls_PoRefDt] [smalldatetime] NULL,[AddlDocDtls_Url] [varchar](100) NULL,[AddlDocDtls_Docs] [varchar](20) NULL,[AddlDocDtls_Info] [varchar](20) NULL,[ExpDtls_ShipBNo] [varchar](20) NULL,[ExpDtls_ShipBDt] [smalldatetime] NULL,[ExpDtls_Port] [varchar](10) NULL,[ExpDtls_RefClm] [varchar](1) NULL,[ExpDtls_ForCur] [varchar](16) NULL,[ExpDtls_CntCode] [varchar](2) NULL,[ExpDtls_InvForCur] [float] NULL,[EwbDtls_TransId] [varchar](15) NULL,[EwbDtls_TransName] [varchar](100) NULL,[EwbDtls_Distance] [int] NULL,[EwbDtls_TransDocNo] [varchar](15) NULL,[EwbDtls_TransDocDt] [smalldatetime] NULL,[EwbDtls_VehNo] [varchar](20) NULL,[EwbDtls_VehType] [varchar](1) NULL,[EwbDtls_TransMode] [varchar](1) NULL,[JsonResponse] [varchar](max) NULL,[AckNo] [varchar](15) NULL,[AckDt] [smalldatetime] NULL,[IRN] [varchar](64) NULL,[SignedInvoice] [varchar](max) NULL,[SignedQRCode] [varchar](max) NULL,[QrCodeImage] [varchar](max) NULL,[Status] [varchar](5) NULL,[EwayBillNo] [varchar](15) NULL,[EwayBillDate] [smalldatetime] NULL,[EwayBillvalidUpto] [smalldatetime] NULL,[Remarks] [varchar](max) NULL,[InvCancel_IRN] [varchar](64) NULL,[Inv_CancelDate] [smalldatetime] NULL,[supplyType] [varchar](3) NULL,[subSupplyType] [float] NULL,[Eway_DocType] [varchar](3) NULL,[Eway_CancelDate] [smalldatetime] NULL,[WthPay] [varchar](1) NULL,[Mainhsncode] [varchar](8) NULL,[OrgInvNo] [varchar](16) NULL,CONSTRAINT [PK_eInvoiceBill1] PRIMARY KEY CLUSTERED ([DocId] ASC,[DocDtls_No] ASC,[DocDtls_Typ] ASC)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]"),
    (2816, 'create_table', "if Not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[eInvoiceBill2]') and OBJECTPROPERTY(id, N'IsTable') = 1) CREATE TABLE [dbo].[eInvoiceBill2]([DocId] [varchar](21) NOT NULL,[SlNo] [varchar](6) NOT NULL,[PrdDesc] [varchar](100) NULL,[IsServc] [varchar](1) NULL,[HsnCd] [varchar](8) NULL,[Barcde] [varchar](30) NULL,[Qty] [float] NULL,[FreeQty] [float] NULL,[Unit] [varchar](6) NULL,[UnitPrice] [float] NULL,[TotAmt] [float] NULL,[Discount] [float] NULL,[PreTaxVal] [float] NULL,[AssAmt] [float] NULL,[GstRt] [float] NULL,[IgstAmt] [float] NULL,[CgstAmt] [float] NULL,[SgstAmt] [float] NULL,[CesRt] [float] NULL,[CesAmt] [float] NULL,[CesNonAdvlAmt] [float] NULL,[StateCesRt] [float] NULL,[StateCesAmt] [float] NULL,[StateCesNonAdvlAmt] [float] NULL,[OthChrg] [float] NULL,[TotItemVal] [float] NULL,[OrdLineRef] [varchar](100) NULL,[OrgCntry] [varchar](2) NULL,[PrdSlNo] [varchar](20) NULL,[BchDtls_Nm] [varchar](20) NULL,[BchDtls_ExpDt] [smalldatetime] NULL,[BchDtls_WrDt] [smalldatetime] NULL,[AttribDtls_NM] [varchar](100) NULL,[AttribDtls_Val] [varchar](100) NULL,[ItemNo] [float] NULL,[PrdNm] [varchar](100) NULL,[IgstRt] [float] NULL,[CgstRt] [float] NULL,[SgstRt] [float] NULL,[cessrate] [float] NULL,CONSTRAINT [PK_eInvoiceBill2] PRIMARY KEY CLUSTERED ([DocId] ASC,[SlNo] ASC)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]) ON [PRIMARY]"),
    (2817, 'add_column', "If Not exists (select * from information_schema.columns where table_name = 'Ledger' And column_name='SeqNo') Alter Table Ledger Add SeqNo Smallint default ((0)) With Values"),
    (2818, 'add_column', "If Not exists (select * from information_schema.columns where table_name = 'LedgerM' And column_name='SeqNo') Alter Table LedgerM Add SeqNo Smallint default ((0)) With Values"),
    (2819, 'add_column', "If Not exists (select * from information_schema.columns where table_name = 'LedgerMerge' And column_name='SeqNo') Alter Table LedgerMerge Add SeqNo Smallint default ((0)) With Values"),
    (2820, 'add_column', "If Not exists (select * from information_schema.columns where table_name = 'LedgerMMerge' And column_name='SeqNo') Alter Table LedgerMMerge Add SeqNo Smallint default ((0)) With Values"),
    (2821, 'add_column', "If Not exists (select * from information_schema.columns where table_name = 'Enviro' And column_name='DisplayRackRow') Alter Table Enviro Add DisplayRackRow Smallint default ((0)) With Values"),
    (2822, 'add_column', "If Not exists (select * from information_schema.columns where table_name = 'Enviro' And column_name='DisplayRackCol') Alter Table Enviro Add DisplayRackCol Smallint default ((0)) With Values"),
    (2823, 'add_column', "If Not exists (select * from information_schema.columns where table_name = 'Enviro' And column_name='DisplayRackFontSize') Alter Table Enviro Add DisplayRackFontSize Smallint default ((0)) With Values"),
    (2824, 'add_column', "If Not exists (select * from information_schema.columns where table_name = 'Depart' And column_name='EditRemarkYN') Alter Table Depart Add EditRemarkYN Varchar(3) default '' With Values"),
    (2825, 'add_column', "If Not exists (select * from information_schema.columns where table_name = 'Sale1' And column_name='EditRemark') Alter Table Sale1 Add EditRemark Varchar(75) default '' With Values"),
    (2826, 'add_column', "If Not exists (select * from information_schema.columns where table_name = 'SplitSale1' And column_name='EditRemark') Alter Table SplitSale1 Add EditRemark Varchar(75) default '' With Values"),
    (2827, 'add_column', "If Not exists (select * from information_schema.columns where table_name = 'Sale1Log' And column_name='EditRemark') Alter Table Sale1Log Add EditRemark Varchar(75) default '' With Values"),
    (2828, 'add_column', "If Not exists (select * from information_schema.columns where table_name = 'FacilityBill1' And column_name='LocationCode') Alter Table FacilityBill1 Add LocationCode Varchar(6) default '' With Values"),
    (2829, 'add_column', "If Not exists (select * from information_schema.columns where table_name = 'FacilityBill2' And column_name='SNo') Alter Table FacilityBill2 Add SNo Smallint default ((1)) With Values"),
    (2830, 'add_column', "If Not exists (select * from information_schema.columns where table_name = 'Enviro' And column_name='PrintSeperateItemInPOSBill') Alter Table Enviro Add PrintSeperateItemInPOSBill Varchar(3) default 'No' With Values"),
    (2831, 'add_column', "If Not exists (select * from information_schema.columns where table_name = 'Voucher_Type' And column_name='Alias') Alter Table Voucher_Type Add Alias Varchar(6) default '' With Values"),
)

#: Hop catalog in source order - Hotlib.bas:40652-41385
#: (VB6 line, kind, spec) with spec =
#:   ensure_column -> (table, column, type, size, flag, default)
#:   create_table  -> (table,)
#:   create_pk     -> (index_name, table, (columns...))
_HOP: tuple[tuple[int, str, tuple], ...] = (
    (40652, 'ensure_column', ('Subgroup', 'ValidateUpto', 'datetime', 8, None, None)),
    (40653, 'ensure_column', ('Subgroup', 'CardIssDate', 'datetime', 8, 255, '')),
    (40654, 'ensure_column', ('Subgroup', 'AppNo', 'varchar', 50, 255, '')),
    (40655, 'ensure_column', ('Subgroup', 'CardNo', 'varchar', 50, 255, '')),
    (40656, 'ensure_column', ('Subgroup', 'SubCorresYN', 'varchar', 1, 255, '')),
    (40657, 'ensure_column', ('Subgroup', 'AddName', 'varchar', 30, 255, '')),
    (40658, 'ensure_column', ('Enviro', 'SmartPurchaseOrder', 'varchar', 3, 255, '')),
    (40659, 'ensure_column', ('Enviro', 'MemberShipModule', 'varchar', 3, 255, '')),
    (40660, 'ensure_column', ('Enviro', 'FomBillCopies', 'int', 4, 255, 0)),
    (40661, 'ensure_column', ('Enviro', 'MobileNo', 'varchar', 35, 255, '')),
    (40662, 'ensure_column', ('Enviro', 'SMSOption', 'varchar', 35, 255, '')),
    (40663, 'ensure_column', ('Enviro', 'MobileSet', 'varchar', 35, 255, '')),
    (40664, 'ensure_column', ('Enviro', 'SMSMessage', 'varchar', 255, 255, '')),
    (40665, 'ensure_column', ('Enviro', 'AdvanceRRoomRent', 'varchar', 8, 255, '')),
    (40666, 'ensure_column', ('Enviro', 'HTWCurDateEdit', 'varchar', 3, 255, '')),
    (40667, 'ensure_column', ('RoomOcc', 'ExtraBed', 'float', 3, 255, '')),
    (40668, 'ensure_column', ('Depart', 'DisPrint', 'varchar', 1, 255, '')),
    (40669, 'create_table', ('DepartPay',)),
    (40670, 'ensure_column', ('DepartPay', 'RestCode', 'varchar', 6, 255, '')),
    (40671, 'ensure_column', ('DepartPay', 'PayCode', 'varchar', 6, 255, '')),
    (40672, 'ensure_column', ('DepartPay', 'Site_Code', 'varchar', 2, 255, '')),
    (40674, 'ensure_column', ('DepartPay', 'U_Name', 'varchar', 10, 255, '')),
    (40675, 'ensure_column', ('DepartPay', 'U_EntDt', 'datetime', 8, 255, '')),
    (40676, 'ensure_column', ('DepartPay', 'U_AE', 'varchar', 1, 255, '')),
    (40678, 'ensure_column', ('DepartPay', 'LogSite_Code', 'varchar', 2, 255, '')),
    (40686, 'create_pk', ('PK_DepartPay', 'DepartPay', ('RestCode', 'PayCode',))),
    (40687, 'ensure_column', ('SubGroup', 'ValidFrom', 'datetime', 8, 255, '')),
    (40688, 'ensure_column', ('SubGroup', 'WebPassword', 'varchar', 15, 255, '')),
    (40689, 'ensure_column', ('SubGroup', 'BloodGroup', 'varchar', 15, 255, '')),
    (40690, 'ensure_column', ('PlanMast', 'Tariff', 'varchar', 25, 0, '')),
    (40691, 'ensure_column', ('RoomCat', 'OverBooking', 'int', 4, 0, 0)),
    (40692, 'ensure_column', ('Depart', 'PartyName', 'varchar', 1, 255, '')),
    (40693, 'create_table', ('CompanyProfile',)),
    (40694, 'ensure_column', ('CompanyProfile', 'FieldName', 'varchar', 21, 0, '')),
    (40695, 'ensure_column', ('CompanyProfile', 'FieldValue', 'varchar', 1, 255, '')),
    (40696, 'ensure_column', ('CompanyProfile', 'Site_Code', 'varchar', 2, 255, '')),
    (40698, 'ensure_column', ('CompanyProfile', 'U_Name', 'varchar', 10, 255, '')),
    (40699, 'ensure_column', ('CompanyProfile', 'U_EntDt', 'datetime', 8, 255, '')),
    (40700, 'ensure_column', ('CompanyProfile', 'U_AE', 'varchar', 1, 255, '')),
    (40701, 'ensure_column', ('CompanyProfile', 'LogSite_Code', 'varchar', 2, 255, '')),
    (40702, 'ensure_column', ('CompanyProfile', 'Hotel', 'image', 0, 255, '')),
    (40710, 'create_pk', ('PK_CompanyProfile', 'CompanyProfile', ('FieldName', 'LogSite_Code',))),
    (40711, 'ensure_column', ('Booking', 'RRTaxInc', 'varchar', 3, 255, '')),
    (40712, 'ensure_column', ('Booking', 'RDisc', 'float', 8, 255, 0)),
    (40713, 'ensure_column', ('Booking', 'RSDisc', 'float', 8, 255, 0)),
    (40714, 'create_table', ('TempPosDel',)),
    (40715, 'ensure_column', ('TempPosDel', 'OldDocId', 'varchar', 21, 255, '')),
    (40716, 'ensure_column', ('TempPosDel', 'OldVno', 'int', 4, 255, '')),
    (40717, 'ensure_column', ('TempPosDel', 'NewDocId', 'varchar', 21, 255, '')),
    (40718, 'ensure_column', ('TempPosDel', 'NewVno', 'int', 4, 255, '')),
    (40719, 'create_table', ('BookingLog',)),
    (40720, 'ensure_column', ('BookingLog', 'Id', 'int', 4, 255, 0)),
    (40721, 'ensure_column', ('BookingLog', 'BookingDocid', 'varchar', 21, 0, '')),
    (40722, 'ensure_column', ('BookingLog', 'Flag', 'varchar', 1, 255, '')),
    (40723, 'ensure_column', ('BookingLog', 'Site_Code', 'varchar', 2, 255, '')),
    (40725, 'ensure_column', ('BookingLog', 'U_Name', 'varchar', 10, 255, '')),
    (40726, 'ensure_column', ('BookingLog', 'U_EntDt', 'datetime', 8, 255, '')),
    (40727, 'ensure_column', ('BookingLog', 'U_AE', 'varchar', 1, 255, '')),
    (40728, 'ensure_column', ('BookingLog', 'LogSite_Code', 'varchar', 2, 255, '')),
    (40736, 'create_pk', ('PK_BookingLog', 'BookingLog', ('Id', 'LogSite_Code',))),
    (40737, 'ensure_column', ('GrpBookingDetails', 'RoomCat', 'varchar', 5, 255, '')),
    (40738, 'ensure_column', ('Depart', 'SplitBill', 'varchar', 1, 255, '')),
    (40739, 'ensure_column', ('KOT', 'FreeSno', 'int', 4, 255, 0)),
    (40740, 'ensure_column', ('KOTLog', 'FreeSno', 'int', 4, 255, 0)),
    (40741, 'ensure_column', ('Enviro', 'PrintRcpt', 'varchar', 3, 255, '')),
    (40742, 'ensure_column', ('Enviro', 'RcptPrinting', 'varchar', 1, 255, '')),
    (40743, 'ensure_column', ('Enviro', 'BillAmendMode', 'varchar', 10, 255, '')),
    (40744, 'ensure_column', ('Enviro', 'AmendRevenue', 'varchar', 6, 255, '')),
    (40745, 'ensure_column', ('UnitMast', 'Status', 'varchar', 10, 255, '')),
    (40746, 'ensure_column', ('KOT', 'Printed', 'varchar', 1, 255, '')),
    (40747, 'ensure_column', ('Enviro', 'IncCashPurchInFOCC', 'varchar', 3, 255, '')),
    (40748, 'ensure_column', ('GrpBookingDetails', 'Plan_Package', 'varchar', 5, 255, '')),
    (40750, 'ensure_column', ('GrpBookingDetails', 'Remarks', 'varchar', 255, 255, '')),
    (40751, 'ensure_column', ('Booking', 'AdvDueDate', 'datetime', 8, 255, '')),
    (40752, 'ensure_column', ('PackingOrder', 'DiscPer', 'Float', 8, 255, 0)),
    (40753, 'ensure_column', ('PackingOrder', 'TaxPer', 'Float', 8, 255, 0)),
    (40754, 'ensure_column', ('PackingOrder', 'PhoneNo', 'varchar', 20, 255, '')),
    (40755, 'ensure_column', ('PackingOrder', 'Addr1', 'varchar', 50, 255, '')),
    (40756, 'ensure_column', ('PackingOrder', 'Addr2', 'varchar', 50, 255, '')),
    (40757, 'create_table', ('OrderPersonDetails',)),
    (40758, 'ensure_column', ('OrderPersonDetails', 'PhoneNo', 'varchar', 20, 255, '')),
    (40759, 'ensure_column', ('OrderPersonDetails', 'CustName', 'varchar', 50, 255, '')),
    (40760, 'ensure_column', ('OrderPersonDetails', 'Addr1', 'varchar', 50, 255, '')),
    (40761, 'ensure_column', ('OrderPersonDetails', 'Addr2', 'varchar', 50, 255, '')),
    (40762, 'ensure_column', ('Depart', 'CustInfo', 'varchar', 1, 255, '')),
    (40763, 'ensure_column', ('Depart', 'CstNo', 'varchar', 20, 255, '')),
    (40764, 'ensure_column', ('Depart', 'CKOTPrintYN', 'varchar', 1, 255, '')),
    (40765, 'ensure_column', ('Depart', 'CKOTPrintPath', 'varchar', 75, 255, '')),
    (40766, 'ensure_column', ('Purch1', 'TinNo', 'varchar', 25, 255, '')),
    (40767, 'ensure_column', ('HallBook', 'Remark', 'Varchar', 50, 255, '')),
    (40768, 'ensure_column', ('Depart', 'CurTokenNo', 'int', 4, 255, 0)),
    (40769, 'ensure_column', ('PackingOrder', 'TokenNo', 'int', 4, 255, 0)),
    (40770, 'ensure_column', ('Sale1', 'DeliveredYN', 'varchar', 1, 255, '')),
    (40771, 'ensure_column', ('Sale1', 'PhoneNo', 'varchar', 20, 255, '')),
    (40772, 'ensure_column', ('Sale1', 'CustName', 'varchar', 50, 255, '')),
    (40773, 'ensure_column', ('Sale1', 'Addr1', 'varchar', 50, 255, '')),
    (40774, 'ensure_column', ('Sale1', 'Addr2', 'varchar', 50, 255, '')),
    (40775, 'ensure_column', ('Sale1Log', 'DeliveredYN', 'varchar', 1, 255, '')),
    (40776, 'ensure_column', ('Sale1Log', 'PhoneNo', 'varchar', 20, 255, '')),
    (40777, 'ensure_column', ('Sale1Log', 'CustName', 'varchar', 50, 255, '')),
    (40778, 'ensure_column', ('Sale1Log', 'Addr1', 'varchar', 50, 255, '')),
    (40779, 'ensure_column', ('Sale1Log', 'Addr2', 'varchar', 50, 255, '')),
    (40780, 'create_table', ('SchemeMast',)),
    (40781, 'ensure_column', ('SchemeMast', 'Code', 'varchar', 6, 0, '')),
    (40783, 'ensure_column', ('SchemeMast', 'Name', 'varchar', 50, 255, '')),
    (40784, 'ensure_column', ('SchemeMast', 'Startdate', 'datetime', 8, 255, '')),
    (40785, 'ensure_column', ('SchemeMast', 'Enddate', 'datetime', 8, 255, '')),
    (40786, 'ensure_column', ('SchemeMast', 'FromTime', 'varchar', 5, 255, '')),
    (40787, 'ensure_column', ('SchemeMast', 'ToTime', 'varchar', 5, 255, '')),
    (40788, 'ensure_column', ('SchemeMast', 'Site_Code', 'varchar', 2, 255, '')),
    (40790, 'ensure_column', ('SchemeMast', 'U_Name', 'varchar', 10, 255, '')),
    (40791, 'ensure_column', ('SchemeMast', 'U_EntDt', 'datetime', 8, 255, '')),
    (40792, 'ensure_column', ('SchemeMast', 'U_AE', 'varchar', 1, 255, '')),
    (40793, 'ensure_column', ('SchemeMast', 'LogSite_Code', 'varchar', 2, 255, '')),
    (40794, 'ensure_column', ('SchemeMast', 'Days', 'int', 4, 255, 0)),
    (40795, 'ensure_column', ('SchemeMast', 'Active', 'varchar', 1, 255, '')),
    (40799, 'create_pk', ('PK_SchemeMast', 'SchemeMast', ('Code',))),
    (40800, 'create_table', ('SchemeItemDetail',)),
    (40801, 'ensure_column', ('SchemeItemDetail', 'Code', 'varchar', 6, 0, '')),
    (40802, 'ensure_column', ('SchemeItemDetail', 'SNo', 'smallint', 2, 0, 0)),
    (40804, 'ensure_column', ('SchemeItemDetail', 'SchemeCode', 'varchar', 6, 255, '')),
    (40805, 'ensure_column', ('SchemeItemDetail', 'Appdate', 'datetime', 8, 255, '')),
    (40806, 'ensure_column', ('SchemeItemDetail', 'Enddate', 'datetime', 8, 255, '')),
    (40807, 'ensure_column', ('SchemeItemDetail', 'FromTime', 'varchar', 5, 255, '')),
    (40808, 'ensure_column', ('SchemeItemDetail', 'ToTime', 'varchar', 5, 255, '')),
    (40809, 'ensure_column', ('SchemeItemDetail', 'RestCode', 'varchar', 6, 255, '')),
    (40810, 'ensure_column', ('SchemeItemDetail', 'ItemCode', 'varchar', 8, 255, '')),
    (40811, 'ensure_column', ('SchemeItemDetail', 'Qty', 'float', 8, 255, 0)),
    (40812, 'ensure_column', ('SchemeItemDetail', 'Site_Code', 'varchar', 2, 255, '')),
    (40814, 'ensure_column', ('SchemeItemDetail', 'U_Name', 'varchar', 10, 255, '')),
    (40815, 'ensure_column', ('SchemeItemDetail', 'U_EntDt', 'datetime', 8, 255, '')),
    (40816, 'ensure_column', ('SchemeItemDetail', 'U_AE', 'varchar', 1, 255, '')),
    (40817, 'ensure_column', ('SchemeItemDetail', 'LogSite_Code', 'varchar', 2, 255, '')),
    (40818, 'ensure_column', ('SchemeItemDetail', 'Days', 'int', 4, 255, 0)),
    (40819, 'ensure_column', ('SchemeItemDetail', 'Active', 'varchar', 1, 255, '')),
    (40820, 'ensure_column', ('SchemeItemDetail', 'Rate', 'float', 8, 255, 0)),
    (40824, 'create_pk', ('PK_SchemeItemDetail', 'SchemeItemDetail', ('Code', 'SNo',))),
    (40825, 'create_table', ('FreeItemDetail',)),
    (40826, 'ensure_column', ('FreeItemDetail', 'Code', 'varchar', 6, 0, '')),
    (40827, 'ensure_column', ('FreeItemDetail', 'SNo', 'smallint', 2, 0, 0)),
    (40828, 'ensure_column', ('FreeItemDetail', 'SchemeCode', 'varchar', 6, 255, '')),
    (40829, 'ensure_column', ('FreeItemDetail', 'RestCode', 'varchar', 6, 255, '')),
    (40830, 'ensure_column', ('FreeItemDetail', 'FreeItem', 'varchar', 8, 255, '')),
    (40831, 'ensure_column', ('FreeItemDetail', 'FreeQty', 'float', 8, 255, 0)),
    (40832, 'ensure_column', ('FreeItemDetail', 'Site_Code', 'varchar', 2, 255, '')),
    (40834, 'ensure_column', ('FreeItemDetail', 'U_Name', 'varchar', 10, 255, '')),
    (40835, 'ensure_column', ('FreeItemDetail', 'U_EntDt', 'datetime', 8, 255, '')),
    (40836, 'ensure_column', ('FreeItemDetail', 'U_AE', 'varchar', 1, 255, '')),
    (40837, 'ensure_column', ('FreeItemDetail', 'LogSite_Code', 'varchar', 2, 255, '')),
    (40845, 'create_pk', ('PK_FreeItemDetail', 'FreeItemDetail', ('Code', 'Sno',))),
    (40846, 'ensure_column', ('GuestProfFor', 'SerialNo', 'int', 4, 255, 0)),
    (40847, 'ensure_column', ('Country', 'Nationality', 'varchar', 25, 255, '')),
    (40848, 'ensure_column', ('RoomOcc', 'RRServiceChrg', 'varchar', 3, 255, '')),
    (40849, 'ensure_column', ('Booking', 'RRServiceChrg', 'varchar', 3, 255, '')),
    (40850, 'ensure_column', ('GrpBookingDetails', 'ServiceChrg', 'varchar', 3, 255, '')),
    (40851, 'ensure_column', ('HallSale1', 'Narration1', 'varchar', 75, 255, '')),
    (40853, 'ensure_column', ('KOT', 'Description', 'varchar', 35, 255, '')),
    (40854, 'ensure_column', ('RoomOcc', 'ChngDate', 'DateTime', 8, 255, '')),
    (40855, 'ensure_column', ('PlanDetails', 'PlanAppDate', 'DateTime', 8, 255, '')),
    (40856, 'ensure_column', ('PayCharge', 'PlanCode', 'varchar', 5, 255, '')),
    (40857, 'ensure_column', ('PayChargeLog', 'PlanCode', 'varchar', 5, 255, '')),
    (40858, 'ensure_column', ('Enviro', 'RoomRentBefChkOut', 'varchar', 3, 255, '')),
    (40859, 'ensure_column', ('Enviro', 'RoomRentChkOutPost', 'varchar', 4, 255, '')),
    (40860, 'ensure_column', ('Enviro', 'POSBillAtNightAudit', 'varchar', 3, 255, '')),
    (40861, 'ensure_column', ('Enviro', 'NoShowAtNightAudit', 'varchar', 3, 255, '')),
    (40862, 'ensure_column', ('Enviro', 'DisplayPort', 'varchar', 35, 255, '')),
    (40863, 'ensure_column', ('Enviro', 'DisplayMode', 'varchar', 35, 255, '')),
    (40864, 'ensure_column', ('Depart', 'NoOfKot', 'int', 4, 255, 0)),
    (40865, 'ensure_column', ('Depart', 'NoOfBill', 'int', 4, 255, 0)),
    (40866, 'ensure_column', ('GuestProf', 'Age', 'int', 4, 255, 0)),
    (40867, 'ensure_column', ('Enviro', 'FreeItemInKOT', 'varchar', 3, 255, '')),
    (40868, 'ensure_column', ('Stock', 'FreeSno', 'int', 4, 255, 0)),
    (40869, 'ensure_column', ('SplitStock', 'FreeSno', 'int', 4, 255, 0)),
    (40870, 'ensure_column', ('StockLog', 'FreeSno', 'int', 4, 255, 0)),
    (40871, 'ensure_column', ('Stock', 'SchemeCode', 'varchar', 6, 255, '')),
    (40872, 'ensure_column', ('SplitStock', 'SchemeCode', 'varchar', 6, 255, '')),
    (40873, 'ensure_column', ('StockLog', 'SchemeCode', 'varchar', 6, 255, '')),
    (40874, 'ensure_column', ('KOT', 'SchemeCode', 'varchar', 6, 255, '')),
    (40875, 'ensure_column', ('KOTLog', 'SchemeCode', 'varchar', 6, 255, '')),
    (40876, 'ensure_column', ('Enviro', 'POSSaleBillModification', 'varchar', 3, 255, '')),
    (40877, 'ensure_column', ('Purch2', 'AcCode', 'varchar', 8, 255, '')),
    (40878, 'ensure_column', ('SubGroup', 'MeshAc', 'varchar', 8, 255, '')),
    (40879, 'ensure_column', ('Enviro', 'VariationBefore', 'varchar', 5, 255, '')),
    (40880, 'ensure_column', ('ItemMast', 'NType', 'varchar', 35, 255, '')),
    (40881, 'ensure_column', ('Enviro', 'BookingSlipFooter1', 'varchar', 75, 255, '')),
    (40882, 'ensure_column', ('Enviro', 'BookingSlipFooter2', 'varchar', 75, 255, '')),
    (40883, 'ensure_column', ('Sale1', 'CashRecd', 'Float', 8, 255, 0)),
    (40884, 'ensure_column', ('Sale1Log', 'CashRecd', 'Float', 8, 255, 0)),
    (40885, 'ensure_column', ('Enviro', 'CashCardDebitAc', 'varchar', 8, 255, '')),
    (40886, 'ensure_column', ('Enviro', 'CashCardCreditAc', 'varchar', 8, 255, '')),
    (40887, 'ensure_column', ('Enviro', 'CashCardSecurityAc', 'varchar', 8, 255, '')),
    (40888, 'ensure_column', ('Enviro', 'OrderBookingPrintType', 'varchar', 1, 255, '')),
    (40889, 'ensure_column', ('PackingOrder', 'NCBOOKING', 'Varchar', 1, 255, '')),
    (40890, 'ensure_column', ('PackingOrder', 'NCTYPE', 'Varchar', 25, 255, '')),
    (40891, 'ensure_column', ('KOT', 'Party', 'varchar', 8, 255, '')),
    (40892, 'ensure_column', ('KOTLog', 'Party', 'varchar', 8, 255, '')),
    (40893, 'ensure_column', ('Depart', 'TokenPrintAfter', 'varchar', 3, 255, '')),
    (40894, 'ensure_column', ('PackingOrder', 'PrintedYN', 'varchar', 1, 255, '')),
    (40895, 'ensure_column', ('Depart', 'OrderBookCom1', 'varchar', 50, 255, '')),
    (40896, 'ensure_column', ('Depart', 'OrderBookCom2', 'varchar', 50, 255, '')),
    (40897, 'ensure_column', ('Enviro', 'BillPrintingSummerised', 'varchar', 3, 255, '')),
    (40898, 'ensure_column', ('GuestProf', 'PicPath', 'varchar', 255, 255, '')),
    (40899, 'ensure_column', ('GrpBookingDetails', 'RoomNo', 'varchar', 5, 255, '')),
    (40900, 'ensure_column', ('GrpBookingDetails', 'RateCode', 'varchar', 1, 255, '')),
    (40901, 'ensure_column', ('GrpBookingDetails', 'ArrDate', 'DateTime', 8, 255, 0)),
    (40902, 'ensure_column', ('GrpBookingDetails', 'ArrTime', 'varchar', 5, 255, '')),
    (40903, 'ensure_column', ('GrpBookingDetails', 'NoDays', 'SmallInt', 2, 255, 0)),
    (40904, 'ensure_column', ('GrpBookingDetails', 'DepDate', 'DateTime', 8, 255, 0)),
    (40905, 'ensure_column', ('GrpBookingDetails', 'DepTime', 'varchar', 5, 255, '')),
    (40906, 'ensure_column', ('GrpBookingDetails', 'Cancel', 'varchar', 1, 255, '')),
    (40907, 'ensure_column', ('GrpBookingDetails', 'CancelDate', 'DateTime', 8, 255, 0)),
    (40908, 'ensure_column', ('GrpBookingDetails', 'Site_Code', 'varchar', 2, 255, '')),
    (40909, 'ensure_column', ('GrpBookingDetails', 'U_Name', 'varchar', 10, 255, '')),
    (40910, 'ensure_column', ('GuestFolio', 'BookingSno', 'SmallInt', 2, 255, 0)),
    (40911, 'ensure_column', ('Depart', 'PrintOnSave', 'varchar', 3, 255, '')),
    (40912, 'ensure_column', ('ItemMast', 'FinItem', 'varchar', 8, 255, '')),
    (40913, 'ensure_column', ('Enviro', 'PurchaseGodown', 'varchar', 6, 255, '')),
    (40914, 'ensure_column', ('Depart', 'BookOfBills', 'int', 4, 255, 0)),
    (40915, 'ensure_column', ('Sale1', 'BookNo', 'int', 4, 255, 0)),
    (40916, 'ensure_column', ('Sale1Log', 'BookNo', 'int', 4, 255, 0)),
    (40917, 'ensure_column', ('Depart', 'Header3', 'varchar', 50, 255, '')),
    (40918, 'ensure_column', ('Depart', 'Header4', 'varchar', 50, 255, '')),
    (40919, 'ensure_column', ('Enviro', 'RptCashierSettlementAllUser', 'varchar', 3, 255, '')),
    (40920, 'ensure_column', ('GuestProf', 'IdProof', 'varchar', 50, 255, '')),
    (40921, 'ensure_column', ('Enviro', 'GRCMandatory', 'varchar', 1, 255, '')),
    (40922, 'ensure_column', ('Enviro', 'NCKOTPercentage', 'SmallInt', 2, 255, 0)),
    (40923, 'ensure_column', ('Enviro', 'KOTHeader1', 'varchar', 50, 255, 0)),
    (40924, 'ensure_column', ('Enviro', 'KOTHeader2', 'varchar', 50, 255, 0)),
    (40925, 'ensure_column', ('Enviro', 'KOTHeader3', 'varchar', 50, 255, 0)),
    (40926, 'ensure_column', ('Enviro', 'KOTHeader4', 'varchar', 50, 255, 0)),
    (40927, 'ensure_column', ('BookingPlanDetails', 'DiscAmt', 'Float', 8, 255, 0)),
    (40928, 'ensure_column', ('BookingPlanDetails', 'NetAmt', 'Float', 8, 255, 0)),
    (40929, 'ensure_column', ('Depart', 'PrintTokenNo', 'varchar', 3, 255, '')),
    (40930, 'ensure_column', ('Depart', 'AutoSettlement', 'varchar', 3, 255, '')),
    (40931, 'ensure_column', ('Depart', 'BillEditing', 'varchar', 3, 255, '')),
    (40932, 'ensure_column', ('ItemGrp', 'CommodityCode', 'varchar', 20, 255, '')),
    (40933, 'ensure_column', ('Sale1', 'SeqNo', 'smallint', 2, 255, 0)),
    (40934, 'ensure_column', ('Sale1Log', 'SeqNo', 'smallint', 2, 255, 0)),
    (40935, 'ensure_column', ('Sale2', 'SeqNo', 'smallint', 2, 255, 0)),
    (40936, 'ensure_column', ('Sale2Log', 'SeqNo', 'smallint', 2, 255, 0)),
    (40937, 'ensure_column', ('Stock', 'SeqNo', 'smallint', 2, 255, 0)),
    (40938, 'ensure_column', ('StockLog', 'SeqNo', 'smallint', 2, 255, 0)),
    (40939, 'ensure_column', ('SunTran', 'SeqNo', 'smallint', 2, 255, 0)),
    (40940, 'ensure_column', ('SunTranLog', 'SeqNo', 'smallint', 2, 255, 0)),
    (40941, 'ensure_column', ('PayCharge', 'SeqNo', 'smallint', 2, 255, 0)),
    (40942, 'ensure_column', ('PayChargeLog', 'SeqNo', 'smallint', 2, 255, 0)),
    (40943, 'ensure_column', ('Enviro', 'GAppCompYear', 'smallint', 2, 255, 0)),
    (40944, 'ensure_column', ('Enviro', 'GMonthConsidered', 'smallint', 2, 255, 0)),
    (40945, 'ensure_column', ('Enviro', 'GWorkingDaysInAMonth', 'smallint', 2, 255, 0)),
    (40946, 'ensure_column', ('Enviro', 'GDaysSalary', 'smallint', 2, 255, 0)),
    (40947, 'ensure_column', ('Enviro', 'POSSaleBillEditLog', 'varchar', 3, 255, '')),
    (40948, 'ensure_column', ('Booking', 'ResStatus', 'varchar', 30, 255, '')),
    (40949, 'ensure_column', ('SubGroup', 'ConPersonMName', 'varchar', 30, 255, '')),
    (40950, 'ensure_column', ('SubGroup', 'ConPersonLName', 'varchar', 30, 255, '')),
    (40951, 'ensure_column', ('Enviro', 'ImportOptionInPurchase', 'varchar', 3, 255, '')),
    (40952, 'ensure_column', ('PackingOrder', 'Remark', 'varchar', 255, 255, '')),
    (40953, 'ensure_column', ('ItemMast', 'ItemType', 'varchar', 10, 255, '')),
    (40954, 'ensure_column', ('Sale1', 'CardNo', 'varchar', 15, 255, '')),
    (40955, 'ensure_column', ('Sale1Log', 'CardNo', 'varchar', 15, 255, '')),
    (40956, 'ensure_column', ('PackingOrderDetail', 'VoidYN', 'varchar', 1, 255, '')),
    (40957, 'ensure_column', ('TaxStru', 'Limit1', 'float', 8, 255, 0)),
    (40958, 'ensure_column', ('FacilityBill', 'Remark', 'varchar', 255, 255, '')),
    (40959, 'ensure_column', ('GuestProf', 'mProf', 'varchar', 8, 255, '')),
    (40960, 'ensure_column', ('Enviro', 'ReqCompWise', 'varchar', 3, 255, '')),
    (40961, 'ensure_column', ('Enviro', 'AcFieldAlterable', 'varchar', 3, 255, '')),
    (40962, 'ensure_column', ('Purch1', 'Remark', 'varchar', 100, 255, '')),
    (40963, 'ensure_column', ('Stock', 'Company', 'varchar', 8, 255, '')),
    (40964, 'ensure_column', ('StockLog', 'Company', 'varchar', 8, 255, '')),
    (40965, 'ensure_column', ('Indent', 'Company', 'varchar', 8, 255, '')),
    (40966, 'ensure_column', ('Depart', 'WScaleApp', 'varchar', 3, 255, '')),
    (40967, 'ensure_column', ('Enviro', 'CreditCardInfoMandatory', 'varchar', 1, 255, '')),
    (40968, 'ensure_column', ('Depart', 'SaleBillTokenHeader1', 'varchar', 50, 255, '')),
    (40969, 'ensure_column', ('EmpCategory', 'Type', 'varchar', 15, 255, '')),
    (40970, 'ensure_column', ('Salary', 'Adv_Bal', 'float', 8, 255, 0)),
    (40971, 'ensure_column', ('Stock', 'ExpDate', 'DateTime', 8, 255, 0)),
    (40972, 'ensure_column', ('StockLog', 'ExpDate', 'DateTime', 8, 255, 0)),
    (40973, 'ensure_column', ('Stock', 'MfdDate', 'DateTime', 8, 255, 0)),
    (40974, 'ensure_column', ('StockLog', 'MfdDate', 'DateTime', 8, 255, 0)),
    (40975, 'ensure_column', ('Enviro', 'ExpMfdDateInMR', 'varchar', 3, 255, '')),
    (40976, 'ensure_column', ('ItemCatMast', 'TaxStruType', 'varchar', 15, 255, '')),
    (40977, 'ensure_column', ('Purch1', 'InvoiceType', 'varchar', 15, 255, '')),
    (40978, 'ensure_column', ('Purch1', 'InvoiceNo', 'Int', 4, 255, 0)),
    (40979, 'ensure_column', ('SubGroup', 'ChequeType', 'varchar', 15, 255, '')),
    (40980, 'ensure_column', ('UnitMast', 'PriceType', 'SmallInt', 2, 255, 0)),
    (40981, 'ensure_column', ('Enviro', 'ExciseInvoiceTaxStru', 'varchar', 6, 255, '')),
    (40982, 'ensure_column', ('Enviro', 'AddModifyEntryInBackDate', 'varchar', 3, 255, '')),
    (40983, 'create_table', ('UserPermission',)),
    (40984, 'ensure_column', ('UserPermission', 'FOMDiscountAllowUpto', 'float', 8, 255, 0)),
    (40985, 'ensure_column', ('UserPermission', 'CancelReservation', 'varchar', 3, 255, '')),
    (40986, 'ensure_column', ('UserPermission', 'CompCode', 'varchar', 2, 0, '')),
    (40987, 'ensure_column', ('UserPermission', 'UserName', 'varchar', 10, 0, '')),
    (40988, 'ensure_column', ('UserPermission', 'LogSite_Code', 'varchar', 2, 0, '')),
    (40989, 'ensure_column', ('UserPermission', 'POSDiscountAllowUpto', 'float', 8, 255, 0)),
    (40990, 'ensure_column', ('UserPermission', 'FacilityBilling', 'varchar', 4, 0, '')),
    (40998, 'create_pk', ('PK_UserPermission', 'UserPermission', ('CompCode', 'UserName', 'LogSite_Code',))),
    (40999, 'ensure_column', ('Enviro', 'KOTAtNightAudit', 'varchar', 3, 255, '')),
    (41000, 'ensure_column', ('Enviro', 'ResInstruction1', 'varchar', 255, 255, '')),
    (41001, 'ensure_column', ('Enviro', 'ResInstruction2', 'varchar', 255, 255, '')),
    (41002, 'ensure_column', ('Enviro', 'ResInstruction3', 'varchar', 255, 255, '')),
    (41003, 'ensure_column', ('Enviro', 'ResInstruction4', 'varchar', 255, 255, '')),
    (41004, 'ensure_column', ('Enviro', 'ResInstruction5', 'varchar', 255, 255, '')),
    (41005, 'ensure_column', ('Enviro', 'ResInstruction6', 'varchar', 255, 255, '')),
    (41006, 'ensure_column', ('Enviro', 'ResInstruction7', 'varchar', 255, 255, '')),
    (41007, 'ensure_column', ('Enviro', 'ResInstruction8', 'varchar', 255, 255, '')),
    (41008, 'ensure_column', ('Enviro', 'ResInstruction9', 'varchar', 255, 255, '')),
    (41009, 'ensure_column', ('Enviro', 'ResInstruction10', 'varchar', 255, 255, '')),
    (41010, 'ensure_column', ('Enviro', 'ResInstruction11', 'varchar', 255, 255, '')),
    (41011, 'ensure_column', ('Enviro', 'ResInstruction12', 'varchar', 255, 255, '')),
    (41012, 'ensure_column', ('Enviro', 'FPInstruction1', 'varchar', 255, 255, '')),
    (41013, 'ensure_column', ('Enviro', 'FPInstruction2', 'varchar', 255, 255, '')),
    (41014, 'ensure_column', ('Enviro', 'FPInstruction3', 'varchar', 255, 255, '')),
    (41015, 'ensure_column', ('Enviro', 'FPInstruction4', 'varchar', 255, 255, '')),
    (41016, 'ensure_column', ('Enviro', 'FPInstruction5', 'varchar', 255, 255, '')),
    (41017, 'ensure_column', ('Enviro', 'FPInstruction6', 'varchar', 255, 255, '')),
    (41018, 'ensure_column', ('Enviro', 'FPInstruction7', 'varchar', 255, 255, '')),
    (41019, 'ensure_column', ('Enviro', 'FPInstruction8', 'varchar', 255, 255, '')),
    (41020, 'ensure_column', ('Enviro', 'FPInstruction9', 'varchar', 255, 255, '')),
    (41021, 'ensure_column', ('Enviro', 'FPInstruction10', 'varchar', 255, 255, '')),
    (41022, 'ensure_column', ('Enviro', 'FPInstruction11', 'varchar', 255, 255, '')),
    (41023, 'ensure_column', ('Enviro', 'FPInstruction12', 'varchar', 255, 255, '')),
    (41024, 'ensure_column', ('MemEnviro', 'MemberSaleBillDiscEditable', 'varchar', 3, 255, '')),
    (41025, 'ensure_column', ('Enviro', 'RateEditableInPO', 'varchar', 3, 255, '')),
    (41026, 'ensure_column', ('Enviro', 'RateEditableInStockIssue', 'varchar', 3, 255, '')),
    (41027, 'ensure_column', ('Enviro', 'RoomRateEditable', 'varchar', 1, 255, '')),
    (41028, 'ensure_column', ('Enviro', 'RoomIncTaxEditable', 'varchar', 1, 255, '')),
    (41029, 'ensure_column', ('Enviro', 'MobileInfoMandatory', 'varchar', 1, 255, '')),
    (41030, 'ensure_column', ('Enviro', 'CoversMandatory', 'varchar', 3, 255, '')),
    (41031, 'ensure_column', ('Enviro', 'MobileNoMandatory', 'varchar', 3, 255, '')),
    (41032, 'ensure_column', ('Enviro', 'RoomServiceChargeEditable', 'varchar', 1, 255, '')),
    (41033, 'ensure_column', ('Indent1', 'TaxStru', 'varchar', 6, 255, '')),
    (41034, 'ensure_column', ('Indent1', 'TaxAmt', 'Float', 8, 255, 0)),
    (41035, 'ensure_column', ('Indent1', 'Total', 'Float', 8, 255, 0)),
    (41036, 'ensure_column', ('POrder1', 'TaxStru', 'varchar', 6, 255, '')),
    (41037, 'ensure_column', ('POrder1', 'TaxAmt', 'Float', 8, 255, 0)),
    (41038, 'ensure_column', ('POrder1', 'Total', 'Float', 8, 255, 0)),
    (41039, 'ensure_column', ('Enviro', 'PostRoomDiscSeparately', 'varchar', 3, 255, '')),
    (41040, 'ensure_column', ('GuestProf', 'FatherName', 'varchar', 50, 255, '')),
    (41041, 'ensure_column', ('ItemMast', 'BarCode', 'varchar', 30, 255, '')),
    (41042, 'ensure_column', ('Enviro', 'BarCodeFeatureInPurchase', 'varchar', 3, 255, '')),
    (41043, 'ensure_column', ('Depart', 'BarCodeApp', 'varchar', 3, 255, '')),
    (41044, 'create_table', ('Item',)),
    (41045, 'ensure_column', ('Item', 'Code', 'varchar', 8, 0, '')),
    (41046, 'ensure_column', ('Item', 'Name', 'varchar', 35, 255, '')),
    (41047, 'ensure_column', ('Item', 'BarCode', 'varchar', 30, 255, '')),
    (41048, 'ensure_column', ('Item', 'Site_Code', 'varchar', 2, 255, '')),
    (41050, 'ensure_column', ('Item', 'U_Name', 'varchar', 10, 255, '')),
    (41051, 'ensure_column', ('Item', 'U_EntDt', 'datetime', 8, 255, '')),
    (41052, 'ensure_column', ('Item', 'U_AE', 'varchar', 1, 255, '')),
    (41053, 'ensure_column', ('Item', 'LogSite_Code', 'varchar', 2, 255, '')),
    (41061, 'create_pk', ('PK_Item', 'Item', ('Code',))),
    (41062, 'ensure_column', ('UserPermission', 'CancelGuestBill', 'varchar', 3, 0, '')),
    (41063, 'ensure_column', ('UserPermission', 'ChangeRoomDtl', 'varchar', 3, 0, '')),
    (41064, 'ensure_column', ('UserPermission', 'EditItemInKOT', 'varchar', 3, 255, '')),
    (41065, 'ensure_column', ('BOM', 'RestCode', 'Varchar', 6, 0, '')),
    (41066, 'create_table', ('TOKEN',)),
    (41067, 'ensure_column', ('TOKEN', 'DocId', 'varchar', 21, 0, '')),
    (41068, 'ensure_column', ('TOKEN', 'Sno', 'Smallint', 2, 0, 0)),
    (41069, 'ensure_column', ('TOKEN', 'Vtype', 'Varchar', 5, 255, '')),
    (41070, 'ensure_column', ('TOKEN', 'Vtime', 'Varchar', 5, 255, '')),
    (41071, 'ensure_column', ('TOKEN', 'VNo', 'int', 4, 255, 0)),
    (41072, 'ensure_column', ('TOKEN', 'Site_Code', 'Varchar', 2, 255, '')),
    (41074, 'ensure_column', ('TOKEN', 'Vprefix', 'Varchar', 5, 255, '')),
    (41075, 'ensure_column', ('TOKEN', 'Vdate', 'DateTime', 8, 255, '')),
    (41076, 'ensure_column', ('TOKEN', 'RestCode', 'Varchar', 6, 255, '')),
    (41077, 'ensure_column', ('TOKEN', 'RoomCat', 'Varchar', 5, 255, '')),
    (41078, 'ensure_column', ('TOKEN', 'RoomType', 'Varchar', 2, 255, '')),
    (41079, 'ensure_column', ('TOKEN', 'RoomNo', 'Varchar', 5, 255, '')),
    (41080, 'ensure_column', ('TOKEN', 'Item', 'Varchar', 8, 255, '')),
    (41081, 'ensure_column', ('TOKEN', 'Qty', 'Float', 8, 255, 0)),
    (41082, 'ensure_column', ('TOKEN', 'Rate', 'Float', 8, 255, 0)),
    (41083, 'ensure_column', ('TOKEN', 'Amount', 'Float', 8, 255, 0)),
    (41084, 'ensure_column', ('TOKEN', 'VoidYN', 'Varchar', 1, 255, '')),
    (41085, 'ensure_column', ('TOKEN', 'Waiter', 'Varchar', 8, 255, '')),
    (41086, 'ensure_column', ('TOKEN', 'Pending', 'Varchar', 1, 255, '')),
    (41087, 'ensure_column', ('TOKEN', 'TOKENType', 'Varchar', 1, 255, '')),
    (41088, 'ensure_column', ('TOKEN', 'TokenNo', 'int', 4, 255, 0)),
    (41090, 'ensure_column', ('TOKEN', 'U_Name', 'Varchar', 10, 255, '')),
    (41091, 'ensure_column', ('TOKEN', 'U_EntDt', 'DateTime', 8, 255, '')),
    (41092, 'ensure_column', ('TOKEN', 'U_AE', 'Varchar', 1, 255, '')),
    (41094, 'ensure_column', ('TOKEN', 'U_Name1', 'Varchar', 10, 255, '')),
    (41095, 'ensure_column', ('TOKEN', 'U_EntDt1', 'DateTime', 8, 255, '')),
    (41096, 'ensure_column', ('TOKEN', 'U_AE1', 'Varchar', 1, 255, '')),
    (41097, 'ensure_column', ('TOKEN', 'DelFlag', 'Varchar', 1, 255, '')),
    (41098, 'ensure_column', ('TOKEN', 'NCTOKEN', 'Varchar', 1, 255, '')),
    (41099, 'ensure_column', ('TOKEN', 'ContraDocId', 'varchar', 21, 255, '')),
    (41100, 'ensure_column', ('TOKEN', 'ContraSNo', 'Smallint', 2, 255, 0)),
    (41101, 'ensure_column', ('TOKEN', 'Reasons', 'varchar', 35, 255, '')),
    (41102, 'ensure_column', ('TOKEN', 'Remarks', 'varchar', 50, 255, '')),
    (41103, 'ensure_column', ('TOKEN', 'LogSite_Code', 'varchar', 2, 255, '')),
    (41104, 'ensure_column', ('TOKEN', 'NCTYPE', 'varchar', 25, 255, '')),
    (41105, 'ensure_column', ('TOKEN', 'FreeSno', 'Smallint', 2, 255, 0)),
    (41106, 'ensure_column', ('TOKEN', 'Printed', 'Varchar', 1, 255, '')),
    (41107, 'ensure_column', ('TOKEN', 'Description', 'varchar', 35, 255, '')),
    (41108, 'ensure_column', ('TOKEN', 'SchemeCode', 'Varchar', 6, 255, '')),
    (41109, 'ensure_column', ('TOKEN', 'Party', 'Varchar', 8, 255, '')),
    (41110, 'ensure_column', ('TOKEN', 'ItemRestCode', 'varchar', 6, 255, '')),
    (41111, 'ensure_column', ('TOKEN', 'CancelYN', 'Varchar', 1, 255, '')),
    (41119, 'create_pk', ('PK_TOKEN', 'TOKEN', ('DocId', 'Sno',))),
    (41120, 'ensure_column', ('Salary', 'Emp_Basic', 'float', 8, 255, 0)),
    (41121, 'ensure_column', ('PackingOrderDetail', 'ItemRestCode', 'varchar', 6, 255, '')),
    (41122, 'ensure_column', ('KOT', 'ItemRestCode', 'varchar', 6, 255, '')),
    (41123, 'ensure_column', ('KOTLog', 'ItemRestCode', 'varchar', 6, 255, '')),
    (41124, 'ensure_column', ('Stock', 'ItemRestCode', 'varchar', 6, 255, '')),
    (41125, 'ensure_column', ('StockLog', 'ItemRestCode', 'varchar', 6, 255, '')),
    (41126, 'ensure_column', ('SplitStock', 'ItemRestCode', 'varchar', 6, 255, '')),
    (41127, 'ensure_column', ('PayCharge', 'RelatedFolionoDocId', 'varchar', 21, 255, '')),
    (41128, 'ensure_column', ('PayChargeLog', 'RelatedFolionoDocId', 'varchar', 21, 255, '')),
    (41129, 'ensure_column', ('PayCharge', 'RefDocId', 'varchar', 21, 255, '')),
    (41130, 'ensure_column', ('PayChargeLog', 'RefDocId', 'varchar', 21, 255, '')),
    (41131, 'ensure_column', ('Enviro', 'SMSFeatureYN', 'varchar', 3, 255, '')),
    (41132, 'create_table', ('SMSEnviro',)),
    (41133, 'ensure_column', ('SMSEnviro', 'SmsCenterUserName', 'varchar', 50, 255, '')),
    (41134, 'ensure_column', ('SMSEnviro', 'SmsCenterPassword', 'Varchar', 30, 255, '')),
    (41135, 'ensure_column', ('SMSEnviro', 'SmsDisplayName', 'Varchar', 50, 255, '')),
    (41136, 'ensure_column', ('SMSEnviro', 'SmsPhoneNoPrefix', 'Varchar', 30, 255, '')),
    (41137, 'ensure_column', ('SMSEnviro', 'SmsURL', 'Varchar', 100, 255, '')),
    (41138, 'ensure_column', ('SMSEnviro', 'SmsPurchase', 'Varchar', 50, 255, '')),
    (41139, 'ensure_column', ('SMSEnviro', 'SmsSend', 'Varchar', 50, 255, '')),
    (41140, 'ensure_column', ('SMSEnviro', 'SmsBal', 'Varchar', 50, 255, '')),
    (41141, 'ensure_column', ('SMSEnviro', 'TUser', 'Varchar', 30, 255, '')),
    (41142, 'ensure_column', ('SMSEnviro', 'TPassword', 'Varchar', 30, 255, '')),
    (41143, 'ensure_column', ('SMSEnviro', 'TFromSend', 'Varchar', 30, 255, '')),
    (41144, 'ensure_column', ('SMSEnviro', 'TPhNo', 'Varchar', 30, 255, '')),
    (41145, 'ensure_column', ('SMSEnviro', 'TMessage', 'Varchar', 30, 255, '')),
    (41146, 'ensure_column', ('SMSEnviro', 'TExtra', 'Varchar', 50, 255, '')),
    (41147, 'ensure_column', ('SMSEnviro', 'LogSite_Code', 'varchar', 2, 0, '')),
    (41148, 'ensure_column', ('SMSEnviro', 'Site_Code', 'varchar', 2, 255, '')),
    (41149, 'ensure_column', ('SMSEnviro', 'CheckInMsg', 'Varchar', 255, 255, '')),
    (41150, 'ensure_column', ('SMSEnviro', 'CheckOutMsg', 'Varchar', 255, 255, '')),
    (41151, 'ensure_column', ('SMSEnviro', 'ReservationMsg', 'Varchar', 255, 255, '')),
    (41152, 'ensure_column', ('SMSEnviro', 'SendingMessageText', 'varchar', 4, 255, '')),
    (41153, 'ensure_column', ('SMSEnviro', 'ReservationCancelMsg', 'varchar', 255, 255, '')),
    (41154, 'ensure_column', ('SMSEnviro', 'OutStandingMsg', 'varchar', 255, 255, '')),
    (41155, 'ensure_column', ('SMSEnviro', 'CashReceiptMsg', 'varchar', 255, 255, '')),
    (41156, 'ensure_column', ('SMSEnviro', 'BankReceiptMsg', 'varchar', 255, 255, '')),
    (41157, 'ensure_column', ('SMSEnviro', 'MemberBillMsg', 'varchar', 255, 255, '')),
    (41158, 'ensure_column', ('SMSEnviro', 'BanqBookingMsg', 'Varchar', 255, 255, '')),
    (41159, 'ensure_column', ('SMSEnviro', 'BanqBookingCancelMsg', 'Varchar', 255, 255, '')),
    (41160, 'ensure_column', ('SMSEnviro', 'GuestRegistrationMsg', 'varchar', 255, 255, '')),
    (41161, 'ensure_column', ('SMSEnviro', 'RewardPointMsg', 'Varchar', 255, 255, '')),
    (41162, 'ensure_column', ('SMSEnviro', 'RedeemPointMsg', 'Varchar', 255, 255, '')),
    (41163, 'ensure_column', ('SMSEnviro', 'POSBillMsg', 'Varchar', 255, 255, '')),
    (41164, 'ensure_column', ('SMSEnviro', 'AssignDeliveryMsg', 'Varchar', 255, 255, '')),
    (41168, 'create_pk', ('PK_SMSEnviro', 'SMSEnviro', ('LogSite_Code',))),
    (41169, 'create_table', ('DBSendSMS',)),
    (41170, 'ensure_column', ('DBSendSMS', 'DocId', 'varchar', 21, 0, '')),
    (41172, 'ensure_column', ('DBSendSMS', 'Vtype', 'varchar', 5, 255, '')),
    (41173, 'ensure_column', ('DBSendSMS', 'Vdate', 'smalldatetime', 4, 255, '')),
    (41174, 'ensure_column', ('DBSendSMS', 'VNo', 'int', 4, 255, 0)),
    (41175, 'ensure_column', ('DBSendSMS', 'SNo', 'smallint', 2, 0, 0)),
    (41176, 'ensure_column', ('DBSendSMS', 'SubCode', 'Varchar', 8, 255, '')),
    (41177, 'ensure_column', ('DBSendSMS', 'Mobile1', 'Varchar', 255, 255, '')),
    (41178, 'ensure_column', ('DBSendSMS', 'Mobile2', 'Varchar', 255, 255, '')),
    (41180, 'ensure_column', ('DBSendSMS', 'TxtMsg', 'Varchar', 1000, 255, '')),
    (41181, 'ensure_column', ('DBSendSMS', 'SMSDt', 'smalldatetime', 4, 255, '')),
    (41183, 'ensure_column', ('DBSendSMS', 'SMSTm', 'Varchar', 5, 255, '')),
    (41184, 'ensure_column', ('DBSendSMS', 'DelvDt', 'smalldatetime', 4, 255, '')),
    (41185, 'ensure_column', ('DBSendSMS', 'DelvTm', 'Varchar', 5, 255, '')),
    (41186, 'ensure_column', ('DBSendSMS', 'SenderName', 'Varchar', 75, 255, '')),
    (41187, 'ensure_column', ('DBSendSMS', 'PartyName', 'Varchar', 100, 255, '')),
    (41188, 'ensure_column', ('DBSendSMS', 'U_AE', 'Varchar', 1, 255, '')),
    (41190, 'ensure_column', ('DBSendSMS', 'U_Name', 'Varchar', 10, 255, '')),
    (41191, 'ensure_column', ('DBSendSMS', 'U_EntDt', 'DateTime', 8, 255, '')),
    (41192, 'ensure_column', ('DBSendSMS', 'Site_Code', 'Varchar', 2, 255, '')),
    (41193, 'ensure_column', ('DBSendSMS', 'LogSite_Code', 'varchar', 2, 255, '')),
    (41194, 'ensure_column', ('DBSendSMS', 'RoomNo', 'Varchar', 5, 255, '')),
    (41195, 'ensure_column', ('DBSendSMS', 'BillAmount', 'float', 8, 255, 0)),
    (41196, 'ensure_column', ('DBSendSMS', 'SendTF', 'Varchar', 5, 255, '')),
    (41197, 'ensure_column', ('DBSendSMS', 'Comp_Code', 'Varchar', 2, 255, '')),
    (41198, 'ensure_column', ('DBSendSMS', 'MsgType', 'Varchar', 20, 255, '')),
    (41202, 'create_pk', ('PK_DBSendSMS', 'DBSendSMS', ('DocId', 'SNo', 'MsgType',))),
    (41203, 'create_table', ('JobSchedule',)),
    (41204, 'ensure_column', ('JobSchedule', 'Schedule_Id', 'varchar', 11, 0, '')),
    (41205, 'ensure_column', ('JobSchedule', 'ScheduleName', 'varchar', 75, 255, '')),
    (41206, 'ensure_column', ('JobSchedule', 'ScheduleType', 'varchar', 10, 255, '')),
    (41208, 'ensure_column', ('JobSchedule', 'ScheduleEnabled', 'bit', 0, 255, '')),
    (41209, 'ensure_column', ('JobSchedule', 'ScheduleStartDate', 'datetime', 8, 255, '')),
    (41210, 'ensure_column', ('JobSchedule', 'ScheduleEndDate', 'datetime', 8, 255, '')),
    (41211, 'ensure_column', ('JobSchedule', 'OneTimeOccur', 'datetime', 8, 255, '')),
    (41212, 'ensure_column', ('JobSchedule', 'FreqOccurs', 'varchar', 10, 255, '')),
    (41213, 'ensure_column', ('JobSchedule', 'FreqRecurs', 'SmallInt', 2, 255, 0)),
    (41214, 'ensure_column', ('JobSchedule', 'FreqWeekdays', 'int', 4, 255, 0)),
    (41215, 'ensure_column', ('JobSchedule', 'FreqMonth', 'SmallInt', 2, 255, 0)),
    (41216, 'ensure_column', ('JobSchedule', 'FreqMonthDay', 'SmallInt', 2, 255, 0)),
    (41217, 'ensure_column', ('JobSchedule', 'FreqMonthDayOfEveryMonth', 'SmallInt', 2, 255, 0)),
    (41218, 'ensure_column', ('JobSchedule', 'FreqMonthThe', 'varchar', 10, 255, '')),
    (41219, 'ensure_column', ('JobSchedule', 'FreqMonthTheDay', 'varchar', 15, 255, '')),
    (41220, 'ensure_column', ('JobSchedule', 'FreqMonthTheDayOfEveryMonth', 'SmallInt', 2, 255, 0)),
    (41222, 'ensure_column', ('JobSchedule', 'DFreq', 'SmallInt', 2, 255, '')),
    (41223, 'ensure_column', ('JobSchedule', 'DFreqOccursOnce', 'datetime', 8, 255, '')),
    (41224, 'ensure_column', ('JobSchedule', 'DFreqOccursEvery', 'SmallInt', 2, 255, 0)),
    (41226, 'ensure_column', ('JobSchedule', 'DFreqOccursType', 'varchar', 10, 255, '')),
    (41227, 'ensure_column', ('JobSchedule', 'DFreqOccursStartTime', 'datetime', 8, 255, '')),
    (41228, 'ensure_column', ('JobSchedule', 'DFreqOccursEndTime', 'datetime', 8, 255, '')),
    (41229, 'ensure_column', ('JobSchedule', 'Site_Code', 'varchar', 2, 255, '')),
    (41231, 'ensure_column', ('JobSchedule', 'U_Name', 'varchar', 10, 255, '')),
    (41232, 'ensure_column', ('JobSchedule', 'U_EntDt', 'datetime', 8, 255, '')),
    (41233, 'ensure_column', ('JobSchedule', 'U_AE', 'varchar', 1, 255, '')),
    (41234, 'ensure_column', ('JobSchedule', 'LogSite_Code', 'varchar', 2, 255, '')),
    (41238, 'create_pk', ('PK_JobSchedule', 'JobSchedule', ('Schedule_Id',))),
    (41239, 'create_table', ('JobScheduledDetail',)),
    (41240, 'ensure_column', ('JobScheduledDetail', 'Job_Id', 'varchar', 11, 0, '')),
    (41241, 'ensure_column', ('JobScheduledDetail', 'JobName', 'varchar', 75, 255, '')),
    (41242, 'ensure_column', ('JobScheduledDetail', 'Schedule_Id', 'varchar', 11, 255, '')),
    (41243, 'ensure_column', ('JobScheduledDetail', 'Event', 'varchar', 500, 255, '')),
    (41244, 'ensure_column', ('JobScheduledDetail', 'ScheduledJob', 'varchar', 500, 255, '')),
    (41245, 'ensure_column', ('JobScheduledDetail', 'MobileNo', 'varchar', 500, 255, '')),
    (41247, 'ensure_column', ('JobScheduledDetail', 'JobEnabled', 'bit', 0, 255, '')),
    (41248, 'ensure_column', ('JobScheduledDetail', 'JobScheduledOn', 'datetime', 8, 255, '')),
    (41249, 'ensure_column', ('JobScheduledDetail', 'Mark', 'varchar', 1, 255, '')),
    (41250, 'ensure_column', ('JobScheduledDetail', 'Site_Code', 'varchar', 2, 255, '')),
    (41252, 'ensure_column', ('JobScheduledDetail', 'U_Name', 'varchar', 10, 255, '')),
    (41253, 'ensure_column', ('JobScheduledDetail', 'U_EntDt', 'datetime', 8, 255, '')),
    (41254, 'ensure_column', ('JobScheduledDetail', 'U_AE', 'varchar', 1, 255, '')),
    (41255, 'ensure_column', ('JobScheduledDetail', 'LogSite_Code', 'varchar', 2, 255, '')),
    (41263, 'create_pk', ('PK_JobScheduledDetail', 'JobScheduledDetail', ('Schedule_Id',))),
    (41264, 'ensure_column', ('PackingOrder', 'OrderType', 'varchar', 15, 255, '')),
    (41265, 'ensure_column', ('GuestProf', 'IdProofNo', 'varchar', 75, 255, '')),
    (41266, 'ensure_column', ('ItemMast', 'CommodityCode', 'varchar', 20, 255, '')),
    (41267, 'create_table', ('ShiftMast',)),
    (41268, 'ensure_column', ('ShiftMast', 'Code', 'varchar', 5, 0, '')),
    (41269, 'ensure_column', ('ShiftMast', 'Name', 'varchar', 35, 255, '')),
    (41270, 'ensure_column', ('ShiftMast', 'FromTime', 'Float', 8, 255, 0)),
    (41271, 'ensure_column', ('ShiftMast', 'ToTime', 'Float', 8, 255, 0)),
    (41272, 'ensure_column', ('ShiftMast', 'Site_Code', 'varchar', 2, 255, '')),
    (41274, 'ensure_column', ('ShiftMast', 'U_Name', 'varchar', 10, 255, '')),
    (41275, 'ensure_column', ('ShiftMast', 'U_EntDt', 'datetime', 8, 255, '')),
    (41276, 'ensure_column', ('ShiftMast', 'U_AE', 'varchar', 1, 255, '')),
    (41277, 'ensure_column', ('ShiftMast', 'LogSite_Code', 'varchar', 2, 255, '')),
    (41285, 'create_pk', ('PK_ShiftMast', 'ShiftMast', ('Code',))),
    (41286, 'ensure_column', ('Stock', 'ShiftCode', 'varchar', 5, 255, '')),
    (41287, 'ensure_column', ('StockLog', 'ShiftCode', 'varchar', 5, 255, '')),
    (41288, 'ensure_column', ('mCurStk', 'ShiftCode', 'varchar', 5, 255, '')),
    (41289, 'ensure_column', ('RawConsumption', 'ShiftCode', 'varchar', 5, 255, '')),
    (41290, 'ensure_column', ('Sale1', 'ServiceTax', 'Float', 8, 255, 0)),
    (41291, 'ensure_column', ('Sale1Log', 'ServiceTax', 'Float', 8, 255, 0)),
    (41292, 'ensure_column', ('Sale1', 'FolionoDocid', 'varchar', 21, 255, '')),
    (41293, 'ensure_column', ('Sale1Log', 'FolionoDocid', 'varchar', 21, 255, '')),
    (41294, 'ensure_column', ('PackingOrderDetail', 'ItemRestCode', 'varchar', 6, 255, '')),
    (41295, 'ensure_column', ('PackingOrderDetail1', 'ItemRestCode', 'varchar', 6, 255, '')),
    (41296, 'ensure_column', ('PackingOrderDetail2', 'AssociatedRestCode', 'varchar', 6, 255, '')),
    (41297, 'ensure_column', ('Enviro', 'ESIBasic', 'varchar', 1, 255, '')),
    (41298, 'ensure_column', ('Enviro', 'ESIDA', 'varchar', 1, 255, '')),
    (41299, 'ensure_column', ('Enviro', 'ESIHRA', 'varchar', 1, 255, '')),
    (41300, 'ensure_column', ('Enviro', 'ESIConvey', 'varchar', 1, 255, '')),
    (41301, 'ensure_column', ('Enviro', 'ESIOther', 'varchar', 1, 255, '')),
    (41302, 'ensure_column', ('Enviro', 'ESILTA', 'varchar', 1, 255, '')),
    (41303, 'create_table', ('OrderAdvanceDetail',)),
    (41304, 'ensure_column', ('OrderAdvanceDetail', 'Docid', 'varchar', 21, 0, '')),
    (41305, 'ensure_column', ('OrderAdvanceDetail', 'Sno', 'smallint', 2, 0, 0)),
    (41306, 'ensure_column', ('OrderAdvanceDetail', 'AssociatedRestCode', 'varchar', 6, 0, '')),
    (41308, 'ensure_column', ('OrderAdvanceDetail', 'VType', 'varchar', 5, 255, '')),
    (41309, 'ensure_column', ('OrderAdvanceDetail', 'Vdate', 'datetime', 8, 255, '')),
    (41310, 'ensure_column', ('OrderAdvanceDetail', 'Vtime', 'Varchar', 5, 255, '')),
    (41311, 'ensure_column', ('OrderAdvanceDetail', 'Vno', 'int', 4, 255, 0)),
    (41312, 'ensure_column', ('OrderAdvanceDetail', 'Vprefix', 'varchar', 5, 255, '')),
    (41313, 'ensure_column', ('OrderAdvanceDetail', 'RestCode', 'varchar', 6, 255, '')),
    (41314, 'ensure_column', ('OrderAdvanceDetail', 'Comments', 'varchar', 250, 255, '')),
    (41315, 'ensure_column', ('OrderAdvanceDetail', 'PayCode', 'varchar', 6, 255, '')),
    (41316, 'ensure_column', ('OrderAdvanceDetail', 'PayType', 'varchar', 15, 255, '')),
    (41317, 'ensure_column', ('OrderAdvanceDetail', 'AmtCr', 'float', 8, 255, 0)),
    (41318, 'ensure_column', ('OrderAdvanceDetail', 'AmtDr', 'float', 8, 255, 0)),
    (41319, 'ensure_column', ('OrderAdvanceDetail', 'TipAmt', 'float', 8, 255, 0)),
    (41320, 'ensure_column', ('OrderAdvanceDetail', 'EmpCode', 'varchar', 8, 255, '')),
    (41321, 'ensure_column', ('OrderAdvanceDetail', 'CompCode', 'varchar', 8, 255, '')),
    (41322, 'ensure_column', ('OrderAdvanceDetail', 'CardNo', 'varchar', 20, 255, '')),
    (41323, 'ensure_column', ('OrderAdvanceDetail', 'CardHolder', 'varchar', 35, 255, '')),
    (41325, 'ensure_column', ('OrderAdvanceDetail', 'ChqNo', 'varchar', 20, 255, '')),
    (41326, 'ensure_column', ('OrderAdvanceDetail', 'ChqDate', 'datetime', 8, 255, '')),
    (41327, 'ensure_column', ('OrderAdvanceDetail', 'ExpDate', 'datetime', 8, 255, '')),
    (41328, 'ensure_column', ('OrderAdvanceDetail', 'BatchNo', 'smallint', 2, 255, '')),
    (41329, 'ensure_column', ('OrderAdvanceDetail', 'ContraDocid', 'varchar', 21, 255, '')),
    (41330, 'ensure_column', ('OrderAdvanceDetail', 'BillAmount', 'float', 8, 255, 0)),
    (41331, 'ensure_column', ('OrderAdvanceDetail', 'U_AE', 'varchar', 1, 255, '')),
    (41333, 'ensure_column', ('OrderAdvanceDetail', 'U_Name', 'varchar', 10, 255, '')),
    (41334, 'ensure_column', ('OrderAdvanceDetail', 'U_EntDt', 'datetime', 8, 255, '')),
    (41335, 'ensure_column', ('OrderAdvanceDetail', 'Site_Code', 'varchar', 2, 255, '')),
    (41336, 'ensure_column', ('OrderAdvanceDetail', 'LogSite_Code', 'varchar', 2, 255, '')),
    (41340, 'create_pk', ('PK_OrderAdvanceDetail', 'OrderAdvanceDetail', ('Docid', 'Sno', 'AssociatedRestCode',))),
    (41341, 'create_table', ('Help',)),
    (41342, 'ensure_column', ('Help', 'FName', 'varchar', 10, 0, '')),
    (41343, 'ensure_column', ('Help', 'CtrlIndex', 'smallint', 2, 0, 0)),
    (41344, 'ensure_column', ('Help', 'HelpDesc', 'varchar', 455, 255, 0)),
    (41352, 'create_pk', ('PK_Help', 'Help', ('FName',))),
    (41360, 'create_pk', ('PK_Help', 'Help', ('CtrlIndex',))),
    (41361, 'ensure_column', ('FunctionType', 'Status', 'varchar', 10, 255, '')),
    (41362, 'ensure_column', ('FeatureMast', 'Status', 'varchar', 10, 255, '')),
    (41363, 'ensure_column', ('ItemMast', 'Status', 'varchar', 10, 255, '')),
    (41364, 'ensure_column', ('ItemCatMast', 'Status', 'varchar', 10, 255, '')),
    (41365, 'ensure_column', ('ItemGrp', 'Status', 'varchar', 10, 255, '')),
    (41366, 'ensure_column', ('MembershipRevMast', 'Status', 'varchar', 10, 255, '')),
    (41367, 'ensure_column', ('Enviro', 'KitchenStockReport', 'varchar', 10, 255, '')),
    (41368, 'ensure_column', ('Enviro', 'ItemRateInMRBasedOn', 'varchar', 25, 255, '')),
    (41369, 'ensure_column', ('Enviro', 'ItemRateInPurchaseBillBasedOn', 'varchar', 25, 255, '')),
    (41370, 'ensure_column', ('Enviro', 'ReprintingOnSaleBillYN', 'varchar', 3, 255, '')),
    (41371, 'ensure_column', ('Depart', 'TokenAmount', 'float', 8, 255, 0)),
    (41372, 'ensure_column', ('BookingInquiry', 'Remark', 'varchar', 255, 255, '')),
    (41373, 'ensure_column', ('OverTime', 'Amount', 'float', 8, 255, 0)),
    (41374, 'ensure_column', ('OverTime', 'Remark', 'varchar', 255, 255, '')),
    (41375, 'ensure_column', ('Enviro', 'PurchaseBillPrinting', 'varchar', 10, 255, '')),
    (41376, 'ensure_column', ('UserPermission', 'DeleteGuestCharges', 'varchar', 3, 0, '')),
    (41377, 'ensure_column', ('Enviro', 'DTCPETakeEffectHeadToSite', 'varchar', 3, 255, '')),
    (41379, 'ensure_column', ('Employee', 'ActiveYN', 'smallint', 2, 255, '')),
    (41380, 'ensure_column', ('Subgroup', 'ApplDate', 'DateTime', 8, 255, '')),
    (41381, 'ensure_column', ('Enviro', 'PostPOSDiscSeparately', 'varchar', 3, 255, '')),
    (41382, 'ensure_column', ('Enviro', 'HideSettledBillsOnSaleBillYN', 'varchar', 3, 255, '')),
    (41383, 'ensure_column', ('SMSEnviro', 'Site_Code', 'varchar', 2, 0, '')),
    (41385, 'ensure_column', ('MemCatMast', 'Status', 'varchar', 10, 255, '')),
)

#: table -> [(column, type, size, flag, default), ...] folded into that
#: table's Proc_6_145 CREATE TABLE body (see docstring, translation note).
#: Filled by _build() before any statement is rendered.
_CREATE_TABLE_SPECS: dict[str, list[tuple]] = {}

_TYPES_WITH_SIZE: frozenset[str] = frozenset({"varchar"})
_NUMERIC_TYPES: frozenset[str] = frozenset({"int", "smallint", "float", "bit"})
_NO_DEFAULT_TYPES: frozenset[str] = frozenset(
    {"datetime", "smalldatetime", "image"})
_SQL_VERBS: frozenset[str] = frozenset({"ALTER", "CREATE", "DROP"})


def _type_sql(typ: str, size) -> str:
    """ADOX type + byte size -> T-SQL type (size only where T-SQL takes one)."""
    t = str(typ).strip().lower()
    if t in _TYPES_WITH_SIZE and size is not None:
        return f"{t}({int(size)})"
    return t


def _default_sql(typ: str, default) -> str | None:
    """VB6 default arg -> `default ...` fragment (None = no DEFAULT clause)."""
    t = str(typ).strip().lower()
    if default is None or t in _NO_DEFAULT_TYPES:
        return None
    if t in _NUMERIC_TYPES:
        n = default if isinstance(default, int) else 0
        return f"default (({n}))"
    if t == "varchar":
        return f"default '{default}'"
    return None


def _column_sql(column, typ, size, flag, default) -> str:
    """`<col> <type> [NOT NULL] [default ...]` - VB6 flag 0 = NOT NULL."""
    parts = [str(column), _type_sql(typ, size)]
    if flag == 0:
        parts.append("NOT NULL")
    dflt = _default_sql(typ, default)
    if dflt is not None:
        parts.append(dflt)
    return " ".join(parts)


def _ensure_column_sql(spec: tuple) -> str:
    """Proc_6_144 -> guarded ALTER (frmCompany.frm:2817 shape, verbatim)."""
    table, column, typ, size, flag, default = spec
    col = _column_sql(column, typ, size, flag, default)
    sql = (f"If Not exists (select * from information_schema.columns "
           f"where table_name = '{table}' And column_name='{column}') "
           f"Alter Table {table} Add {col}")
    if _default_sql(typ, default) is not None:
        sql += " With Values"
    return sql


def _create_table_sql(table: str) -> str:
    """Proc_6_145 -> guarded CREATE TABLE (frmCompany.frm:2797 guard shape)."""
    cols, seen = [], set()
    for spec in _CREATE_TABLE_SPECS.get(table, ()):
        if str(spec[0]).lower() in seen:   # Hotlib.bas:41147/41383 dup col
            continue
        seen.add(str(spec[0]).lower())
        cols.append(_column_sql(*spec))
    if not cols:  # pragma: no cover - every Proc_6_145 table has columns
        cols = ["Id int NOT NULL default ((0))"]
    return (f"if Not exists (select * from dbo.sysobjects where "
            f"id = object_id(N'[dbo].[{table}]') and OBJECTPROPERTY(id, "
            f"N'IsTable') = 1) CREATE TABLE [dbo].[{table}] "
            f"({', '.join(cols)})")


def _create_pk_sql(index: str, table: str, columns) -> str:
    """Proc_6_146 -> guarded ADD CONSTRAINT PRIMARY KEY CLUSTERED."""
    cols = ", ".join(f"[{c}]" for c in columns)
    return (f"if not exists (select * from sys.indexes where "
            f"object_id = object_id(N'[dbo].[{table}]') and "
            f"(name = N'{index}' or is_primary_key = 1)) "
            f"ALTER TABLE [dbo].[{table}] ADD CONSTRAINT [{index}] "
            f"PRIMARY KEY CLUSTERED ({cols})")


def _guard_create_view(sql: str) -> str:
    """Wrap the Chain-A `CREATE VIEW ...` (frmCompany.frm:2791/2796) in an
    `if not exists (... IsView)` guard.

    VB6 relies on the guarded DROP two statements earlier; the audit rule
    ("every statement carries a guard keyword") cannot honour an unguarded
    CREATE, and a failed DROP would otherwise turn the CREATE into a
    duplicate-object error. The CREATE body itself stays verbatim.
    """
    prefix, sep, rest = sql.partition(" AS ")
    if not sep:
        raise AssertionError(f"not a CREATE VIEW: {sql[:60]!r}")
    name = prefix.replace("CREATE VIEW", "").strip().split(".")[-1].strip("[]")
    return (f"if not exists (select * from dbo.sysobjects where "
            f"id = object_id(N'[dbo].[{name}]') "
            f"and OBJECTPROPERTY(id, N'IsView') = 1) {prefix}{sep}{rest}")


def _split_guard(sql: str) -> tuple[str, bool, str]:
    """Split `IF [NOT] EXISTS (<cond>) <action>` -> (cond, want, action).

    want = True  -> the action runs when <cond> IS true (`if exists`)
    want = False -> the action runs when <cond> is false (`If Not exists`)
    Raises AssertionError when the statement carries no guard keyword - that
    is the import-time safety net the docstring promises.
    """
    head = sql.lstrip()
    low = head[:40].lower()
    if low.startswith("if not exists ("):
        want, rest = False, head[len("if not exists ("):]
    elif low.startswith("if exists ("):
        want, rest = True, head[len("if exists ("):]
    else:
        raise AssertionError(f"statement has no guard keyword: {head[:80]!r}")
    depth, end = 1, None
    for i, ch in enumerate(rest):
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
            if depth == 0:
                end = i
                break
    if end is None:
        raise AssertionError(f"unbalanced guard condition: {head[:80]!r}")
    cond, action = rest[:end].strip(), rest[end + 1:].strip()
    if not cond or not action:
        raise AssertionError(f"empty guard condition/action: {head[:80]!r}")
    return cond, want, action


def _precheck_sql(cond: str) -> str:
    """Read-only probe for run()'s skip detection (no DDL)."""
    return f"SELECT CASE WHEN EXISTS ({cond}) THEN 1 ELSE 0 END"


def _stmt(stmt_id: str, kind: str, sql: str) -> dict:
    cond, want, _action = _split_guard(sql)
    return {"id": stmt_id, "kind": kind, "sql": sql, "guarded": True,
            "precheck": _precheck_sql(cond), "want_exists": want}


def _chain_a_stmt(line: int, kind: str, sql: str) -> dict:
    """Chain-A statement; create_view is the only one VB6 leaves unguarded."""
    if kind == "create_view":
        sql = _guard_create_view(sql)
    return _stmt(f"frmCompany:{line}", kind, sql)


def _build() -> list[dict]:
    """Catalog in VB6 execution order: Chain-A:2773, whole hop, Chain-A rest."""
    for _line, kind, spec in _HOP:          # pass 1: collect CREATE bodies
        if kind == "ensure_column":
            _CREATE_TABLE_SPECS.setdefault(spec[0], []).append(spec[1:])
    out: list[dict] = []
    for line, kind, sql in _CHAIN_A[:1]:     # frmCompany.frm:2773 first
        out.append(_chain_a_stmt(line, kind, sql))
    for line, kind, spec in _HOP:            # Hotlib.bas hop
        if kind == "ensure_column":
            sql = _ensure_column_sql(spec)
        elif kind == "create_table":
            sql = _create_table_sql(spec[0])
        elif kind == "create_pk":
            sql = _create_pk_sql(spec[0], spec[1], spec[2])
        else:
            raise AssertionError(f"unknown hop kind {kind!r}")
        out.append(_stmt(f"Hotlib:{line}", kind, sql))
    for line, kind, sql in _CHAIN_A[1:]:     # frmCompany.frm:2775-2831
        out.append(_chain_a_stmt(line, kind, sql))
    return out


def _audit(stmts: list[dict]) -> list[str]:
    """Guard audit - raises AssertionError on the first violation found."""
    violations: list[str] = []
    for s in stmts:
        sid, sql = s["id"], s["sql"]
        if not sql.lstrip().lower().startswith(GUARD_KEYWORDS):
            violations.append(f"{sid}: no guard keyword")
            continue
        _cond, _want, action = _split_guard(sql)
        low_action = action.lower()
        if ";" in sql:
            violations.append(f"{sid}: chained statement (';')")
        verb = action.split(None, 1)[0].upper()
        if verb not in _SQL_VERBS:
            violations.append(f"{sid}: action verb {verb!r} not allowed")
        if ("drop " in low_action or "delete " in low_action
                or "truncate " in low_action):
            if sid not in ALLOWED_DROPS:
                violations.append(f"{sid}: DROP outside ALLOWED_DROPS")
    if violations:
        raise AssertionError(
            "schema_upgrade guard audit failed: "
            + "; ".join(violations[:5]))
    return violations


_STATEMENTS: list[dict] = _build()
_AUDIT_VIOLATIONS: list[str] = _audit(_STATEMENTS)


def plan() -> list[dict]:
    """Read-only statement plan: [{id, kind, sql, guarded}, ...] in the order
    run() would execute them. No DB access, no side effects."""
    return [{"id": s["id"], "kind": s["kind"], "sql": s["sql"],
             "guarded": s["guarded"]} for s in _STATEMENTS]


def guard_audit() -> dict:
    """Read-only audit report (the import-time assertion, re-runnable)."""
    kinds: dict[str, int] = {}
    for s in _STATEMENTS:
        kinds[s["kind"]] = kinds.get(s["kind"], 0) + 1
    return {
        "statements": len(_STATEMENTS),
        "guarded": sum(1 for s in _STATEMENTS if s["guarded"]),
        "guard_keywords": list(GUARD_KEYWORDS),
        "guarded_drops": sorted(ALLOWED_DROPS),
        "kinds": kinds,
        "violations": list(_AUDIT_VIOLATIONS),
    }


def _already_applied(cur, precheck: str, want_exists: bool) -> bool:
    """True when the guard says the statement is a no-op (-> status 'skip')."""
    cur.execute(precheck)
    row = cur.fetchone()
    exists = bool(row[0]) if row else False
    return exists == want_exists


def run(confirm_token: str) -> dict:
    """Execute all statements on ONE connection, per-statement try/except.

    status: 'ok' (executed) / 'skip' (guard already satisfied) / 'error'
    (statement failed - recorded, execution continues). Commit at the end.
    Raises ValueError on a wrong confirm_token; nothing runs then.
    """
    if confirm_token != CONFIRM_TOKEN:
        raise ValueError("confirm_token mismatch - schema upgrade not run")
    stmts = _STATEMENTS
    _audit(stmts)  # belt + braces before any DDL leaves the process
    cn = db.connect()
    results: list[dict] = []
    try:
        cur = cn.cursor()
        for s in stmts:
            status, err = "ok", ""
            try:
                if _already_applied(cur, s["precheck"], s["want_exists"]):
                    status = "skip"
                else:
                    cur.execute(s["sql"])
            except Exception as exc:
                # per-statement isolation: one bad statement must not stop
                # the rest of the upgrade (VB6 swallowed these too).
                status, err = "error", str(exc).splitlines()[0][:250]
            results.append({"id": s["id"], "kind": s["kind"],
                            "status": status, "error": err})
        cn.commit()
    except Exception:
        try:
            cn.rollback()
        except Exception:  # pragma: no cover - connection already broken
            pass
        raise
    finally:
        try:
            cn.close()
        except Exception:  # pragma: no cover
            pass
    counts = {"ok": 0, "skip": 0, "error": 0}
    for r in results:
        counts[r["status"]] += 1
    return {"total": len(results), "ok": counts["ok"],
            "skip": counts["skip"], "error": counts["error"],
            "results": results}
