VERSION 5.00
Begin VB.Form FrmSerialiseVr
  Caption = "Voucher Serialisation"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmSerialiseVr.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8700
  ClientHeight = 4935
  LockControls = -1  'True
  Begin TextBox LblSiteCode
    ForeColor = &HC00000&
    Left = 8175
    Top = 2055
    Width = 420
    Height = 285
    TabIndex = 9
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataCombo TxtVrType
    Left = 4305
    Top = 2490
    Width = 4290
    Height = 360
    TabIndex = 6
  End
  Begin TextBox lblVNo
    ForeColor = &HC00000&
    Left = 4305
    Top = 2055
    Width = 1215
    Height = 285
    TabIndex = 1
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox LblVPrefix
    ForeColor = &HC00000&
    Left = 6435
    Top = 2055
    Width = 660
    Height = 285
    TabIndex = 0
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin BtnEnh CmdExit
    Left = 6330
    Top = 5115
    Width = 1500
    Height = 765
    TabIndex = 11
  End
  Begin BtnEnh Command1
    Index = 1
    Left = 4770
    Top = 5115
    Width = 1500
    Height = 765
    TabIndex = 12
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 10
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "System"
      Size = 19.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblSrNo
    Caption = "Sr.No."
    ForeColor = &H800000&
    Left = 3645
    Top = 2085
    Width = 585
    Height = 240
    TabIndex = 8
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblSite
    Caption = "SiteCode"
    ForeColor = &H800000&
    Left = 7215
    Top = 2085
    Width = 870
    Height = 240
    TabIndex = 7
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LBLStatus
    ForeColor = &HFFFF&
    Left = 3435
    Top = 2970
    Width = 5100
    Height = 240
    TabIndex = 5
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Please make sure that you have A Backup of 'Database'"
    BackColor = &HFFC0C0&
    ForeColor = &HC0&
    Left = 3840
    Top = 3465
    Width = 5040
    Height = 840
    TabIndex = 4
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lblPrefix
    Caption = "VPrefix"
    ForeColor = &H800000&
    Left = 5625
    Top = 2085
    Width = 705
    Height = 240
    TabIndex = 3
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Caption = "Vr.Type"
    ForeColor = &H800000&
    Left = 3405
    Top = 2535
    Width = 735
    Height = 240
    TabIndex = 2
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmSerialiseVr"

Private global_52 As Integer

Private Sub Form_Load() 'EEBC98
  'Data Table: 43840C
  Dim MemVar_0 As Integer
  loc_EEBBE5: Me.LblVPrefix.Text = MemVar_1F9512C
  loc_EEBBFA: Me.LblSiteCode.Text = MemVar_1F95070
  loc_EEBC0E: Me.lblVNo.Enabled = False
  loc_EEBC22: Me.LblVPrefix.Enabled = False
  loc_EEBC36: Me.LblSiteCode.Enabled = False
  loc_EEBC45: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_EEBC54: var_98 = "V_TYPE"
  loc_EEBC7E: Proc_6_92_EF7BF4("select V_Type,Description from Voucher_Type where Category='FA' And Site_Code='" & MemVar_1F95070 & "'", Me.TxtVrType)
  loc_EEBC95: Exit Sub
  loc_EEBC96: MemVar_0 = "Description"
End Sub

Private Sub Form_Resize() 'E74A78
  'Data Table: 43840C
  loc_E74A22: Call 0.Method_arg_50 (var_88)
  loc_E74A34: Me.LblFormCaption.Caption = var_88
  loc_E74A4D: Me.LblFormCaption.Left = CDbl(0)
  loc_E74A5B: Call 0.Method_arg_100 (var_90)
  loc_E74A6D: Me.LblFormCaption.Width = var_90
  loc_E74A75: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1A3F8
  'Data Table: 43840C
  loc_E1A3ED: Me.Global.Unload Me
  loc_E1A3F5: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 'E4D058
  'Data Table: 43840C
  loc_E4D036: Set var_88 = Me.Command1
  loc_E4D03C: Call 0.Method_Command1_UnknownEvent_90 (1, var_8C)
  loc_E4D044: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_E4D050: Call Proc_211_4_162DFC4()
  loc_E4D055: Exit Sub
End Sub

Public Sub Proc_211_4_162DFC4
  'Data Table: 43840C
  Dim var_BC As Variant
  Dim unk_43841F As Connection15
  Dim var_F4 As Variant
  Dim var_C0 As String
  Dim var_F8 As String
  Dim var_100 As String
  Dim var_104 As String
  Dim var_108 As String
  Dim var_B8 As Recordset15
  Dim var_C4 As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_16C As String
  Dim var_1A8 As Recordset15
  Dim var_1A0 As Variant
  Dim var_1BC As String
  Dim var_4F8 As Double
  Dim var_19C As Variant
  Dim var_1E8 As Variant
  Dim var_218 As Variant
  Dim var_27C As Variant
  Dim var_33C As Variant
  Dim var_40C As Variant
  Dim var_474 As Variant
  Dim var_9E As Variant
  Dim var_4F0 As Fields15
  Dim var_444 As Variant
  Dim var_724 As Variant
  Dim var_9FC As Variant
  loc_162CCAC: On Error Goto loc_162DF29
  loc_162CCB3: Set var_C4 = Me.TxtVrType
  loc_162CCB9: var_C0 = "Vr.Type"
  loc_162CCDA: If (Proc_6_27_EA61EC(var_C4) = 0) Then
  loc_162CCEA:   Set var_BC = Me.Command1
  loc_162CCF0:   Call 0.Method_Proc_211_4_162DFC40 (1, var_C4)
  loc_162CCF8:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_162CD04:   Exit Sub
  loc_162CD05: End If
  loc_162CD14: Me.TxtVrType.Enabled = False
  loc_162CD32: unk_43841F.Execute "delete from LedgerMerge", var_F4, -1
  loc_162CD53: unk_43841F.Execute "delete from LedgerMMerge", var_F4, -1
  loc_162CD6B: Me.LBLStatus.Caption = "Ledger Serialisation"
  loc_162CD7D: Me.LBLStatus.Refresh
  loc_162CD8F: var_F4 = Me.TxtVrType.BoundText
  loc_162CD97: var_9C = CStr(var_F4)
  loc_162CDAB: Set var_BC = Me.lblVNo
  loc_162CDB1: var_BC.Text = CStr(1)
  loc_162CDEC: var_104 = "Select DISTINCT v_Prefix from LEDGERM WHERE V_Type='" & var_9C & "' And V_Prefix='" & MemVar_1F9512C & "' And Site_Code='" & MemVar_1F95070
  loc_162CDFC: unk_43841F.Execute var_104 & "'", var_F4, -1
  loc_162CE07: Set var_B8 = var_BC
  loc_162CE1F: ' Referenced from: 162CED1
  loc_162CE2E: If Not(var_B8.EOF) Then
  loc_162CE61:   var_BC = var_B8.Fields
  loc_162CE71:   var_F4 = var_BC.Item("v_Prefix").Value
  loc_162CE82:   var_13C = CVar("UPDATE Voucher_Prefix SET Start_Srl_No=0 WHERE V_Type='" & var_9C & "' AND PREFIX='") & var_F4 & "' And Site_Code='" 
  loc_162CEA3:   unk_43841F.Execute CStr(var_13C & CVar(MemVar_1F95070) & "'"), var_19C, -1
  loc_162CECC:   var_B8.MoveNext
  loc_162CED1:   GoTo loc_162CE1F
  loc_162CED4: End If
  loc_162CF0B: var_108 = "select * from LedgerM where V_Type='" & var_9C & "' And V_Prefix='" & MemVar_1F9512C & "' And Site_Code='" & MemVar_1F95070 & "' order by V_Date"
  loc_162CF14: unk_43841F.Execute var_108, var_F4, -1
  loc_162CF1F: Set var_90 = var_BC
  loc_162CF60: var_100 = "select docId as searchcode,Ledger.* from Ledger where V_Type='" & var_9C & "' And V_Prefix='" & MemVar_1F9512C & "' And Site_Code='"
  loc_162CF77: unk_43841F.Execute var_100 & MemVar_1F95070 & "' Order by V_Date,DocId,V_No", var_F4, -1
  loc_162CF82: Set var_8C = var_BC
  loc_162CFA3: var_1A4 = Me.Recordset15.RecordCount
  loc_162CFB1: If (var_1A4 > 0) Then
  loc_162CFBA:   Me.Recordset15.MoveFirst
  loc_162CFBF:   ' Referenced from: 162DD18
  loc_162CFD1:   If Not(Me.Recordset15.EOF) Then
  loc_162CFDA:     Set var_1A8 = var_90 
  loc_162D017:     Me.LBLStatus.Caption = CStr(var_1A8.Fields.Item("V_DATE").Value)
  loc_162D035:     Me.LBLStatus.Refresh
  loc_162D04F:     var_BC = var_1A8.Fields
  loc_162D05F:     var_F4 = var_BC.Item("V_Type").Value
  loc_162D0BB:     var_A8 = Proc_6_86_12EF348(CStr(var_F4), CStr(var_1A8.Fields.Item("V_DATE").Value), Me.lblVNo, MemVar_1F95074, Me.LblVPrefix, var_BC)
  loc_162D131:     var_1BC = "UPDATE VOUCHER_Prefix SET Start_Srl_No=" & Me.lblVNo.Text & " WHERE V_Type='" & var_9C & "' and Prefix='" & Me.LblVPrefix.Text
  loc_162D14F:     unk_43841F.Execute var_1BC & "' And Site_Code='" & MemVar_1F95070 & "'", var_F4, -1
  loc_162D189:     var_BC = var_1A8.Fields
  loc_162D1B0:     var_1A0 = var_1A8.Fields
  loc_162D1F1:     var_4F8 = Val(Me.lblVNo.Text)
  loc_162D21A:     Proc_6_7_F26918(var_26C, CVar(var_1A8.Fields.Item("V_DATE")), var_4F8, var_1A0, var_BC)
  loc_162D245:     Proc_6_17_EAAE40(var_2D4, CVar(var_1A8.Fields.Item("Narration")), var_1A0, var_BC)
  loc_162D2E5:     Proc_6_7_F26918(var_444, CVar(var_1A8.Fields.Item("Trf_Date")), var_BC)
  loc_162D325:     var_C0 = "Insert into LedgerMMerge (DocId,Site_Code,V_Type,v_prefix,V_No,V_Date,Narration,U_Name,U_EntDt,U_AE,Trf_Date,LogSite_Code) Values ('" & var_A8
  loc_162D346:     var_16C = "','"
  loc_162D355:     var_1E8 = CVar(var_C0 & "','") & var_BC.Item("Site_Code").Value & "','" & var_1A0.Item("V_Type").Value & var_16C & CVar(Me.LblVPrefix.Text) 
  loc_162D369:     var_218 = var_1E8 & "'," & CVar(var_4F8) 
  loc_162D399:     var_33C = var_218 & "," & var_26C & "," & var_2D4 & ",'" & var_1A8.Fields.Item("U_Name").Value 
  loc_162D3C2:     var_40C = var_33C & "','" & var_1A8.Fields.Item("U_EntDt").Value & "','" & var_1A8.Fields.Item("U_AE").Value & "'," 
  loc_162D3D2:     var_474 = var_40C & var_444 & ",'" 
  loc_162D3F0:     unk_43841F.Execute CStr(var_474 & var_1A8.Fields.Item("LogSite_Code").Value & "')"), var_4EC, -1
  loc_162D478:     Me.Recordset15.MoveFirst
  loc_162D4D1:     Me.Recordset15.Find CStr("SearchCode ='" & var_1A8.Fields.Item("DocID").Value & "'"), 0, 1
  loc_162D517:     var_A4 = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_162D526:     var_9E = 1
  loc_162D529:     ' Referenced from: 162DCC7
  loc_162D52B:     If &HFF Then
  loc_162D56E:       If (CVar(var_A4) = Me.Recordset15.Fields.Item("DocID").Value) Then
  loc_162D5A8:         var_F4 = Me.Recordset15.Fields.Item("V_Type").Value
  loc_162D5C7:         var_4F8 = Val(Me.lblVNo.Text)
  loc_162D61D:         Proc_6_7_F26918(var_218, CVar(Me.Recordset15.Fields.Item("V_DATE")), var_4F8, var_9E)
  loc_162D675:         Proc_6_39_E7D3A0(var_2D4, CVar(Me.Recordset15.Fields.Item("AmtDr")), var_16C)
  loc_162D6A3:         Proc_6_39_E7D3A0(var_33C, CVar(Me.Recordset15.Fields.Item("AmtCr")), var_4F0)
  loc_162D6FB:         Proc_6_17_EAAE40(var_40C, CVar(Me.Recordset15.Fields.Item("Chq_No")))
  loc_162D729:         Proc_6_7_F26918(var_474, CVar(Me.Recordset15.Fields.Item("Chq_Date")))
  loc_162D757:         Proc_6_7_F26918(var_4EC, CVar(Me.Recordset15.Fields.Item("clg_date")))
  loc_162D785:         Proc_6_17_EAAE40(var_554, CVar(Me.Recordset15.Fields.Item("Narration")))
  loc_162D7B3:         Proc_6_17_EAAE40(var_5BC, CVar(Me.Recordset15.Fields.Item("U_Name")))
  loc_162D7E1:         Proc_6_7_F26918(var_624, CVar(Me.Recordset15.Fields.Item("U_EntDt")))
  loc_162D80F:         Proc_6_17_EAAE40(var_68C, CVar(Me.Recordset15.Fields.Item("U_AE")))
  loc_162D83D:         Proc_6_39_E7D3A0(var_6F4, CVar(Me.Recordset15.Fields.Item("SQty")))
  loc_162D86B:         Proc_6_39_E7D3A0(var_75C, CVar(Me.Recordset15.Fields.Item("PQty")))
  loc_162D899:         Proc_6_17_EAAE40(var_7C4, CVar(Me.Recordset15.Fields.Item("AgRefNo")))
  loc_162D8C7:         Proc_6_7_F26918(var_82C, CVar(Me.Recordset15.Fields.Item("VTIME")))
  loc_162D8F5:         Proc_6_17_EAAE40(var_894, CVar(Me.Recordset15.Fields.Item("Mth_Year")))
  loc_162D923:         Proc_6_17_EAAE40(var_8FC, CVar(Me.Recordset15.Fields.Item("Emp_Code")))
  loc_162D951:         Proc_6_17_EAAE40(var_964, CVar(Me.Recordset15.Fields.Item("GroupCode")))
  loc_162D97F:         Proc_6_17_EAAE40(var_9CC, CVar(Me.Recordset15.Fields.Item("GroupNature")))
  loc_162D9AD:         Proc_6_17_EAAE40(var_A34, CVar(Me.Recordset15.Fields.Item("LogSite_Code")))
  loc_162D9C6:         var_F8 = "Insert Into LedgerMerge (V_PREFIX,DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode,AmtDr,AmtCr,ContraSub,Chq_No,Chq_Date,Clg_Date,Narration,U_Name,U_EntDt,U_AE,SQty,PQty,AgRefNo,VTime,Mth_Year,Emp_Code,GroupCode,GroupNature,LogSite_Code) Values ('" & Me.LblVPrefix.Text
  loc_162D9F4:         var_12C = CVar(var_F8 & "','" & var_A8 & "'," & CStr(var_9E) & ",'") & var_F4 
  loc_162D9FD:         var_13C = var_12C & "'," 
  loc_162DA38:         var_27C = var_13C & CVar(var_4F8) & ",'" & Me.Recordset15.Fields.Item("Site_Code").Value & "'," & var_218 & ",'" & Me.Recordset15.Fields.Item("subcode").Value 
  loc_162DA81:         var_444 = var_27C & "'," & var_2D4 & "," & var_33C & ",'" & Me.Recordset15.Fields.Item("contrasub").Value & "'," & var_40C & "," 
  loc_162DAF1:         var_724 = var_444 & var_474 & "," & var_4EC & "," & var_554 & "," & var_5BC & "," & var_624 & "," & var_68C & "," & var_6F4 & "," 
  loc_162DB61:         var_9FC = var_724 & var_75C & "," & var_7C4 & "," & var_82C & "," & var_894 & "," & var_8FC & "," & var_964 & "," & var_9CC & "," 
  loc_162DB7F:         unk_43841F.Execute CStr(var_9FC & var_A34 & ")"), var_A84, -1
  loc_162DC96:       Else
  loc_162DC99:       Else
  loc_162DC9F:         Me.Recordset15.MoveNext
  loc_162DCAA:         var_9E = (var_9E + 1)
  loc_162DCC1:         If (Me.Recordset15.EOF = &HFF) Then
  loc_162DCC4:           GoTo loc_162DCCA
  loc_162DCC7:         End If
  loc_162DCC7:         GoTo loc_162D529
  loc_162DCCA:         ' Referenced from:   162DCC4
  loc_162DCCA:       End If
  loc_162DCCA:     End If
  loc_162DCCC:     Set var_1A8 = Nothing 
  loc_162DCED:     var_F8 = CStr((CDbl(Me.lblVNo.Text) + CDbl(1)))
  loc_162DCF4:     Set var_C4 = Me.lblVNo
  loc_162DCFA:     var_C4.Text = var_F8
  loc_162DD13:     Me.Recordset15.MoveNext
  loc_162DD18:     GoTo loc_162CFBF
  loc_162DD1B:   End If
  loc_162DD24:   unk_43841F.BeginTrans var_1A4
  loc_162DD2E:   global_52 = 1
  loc_162DD61:   var_104 = "Delete from LedgerM where V_Type in ('" & var_9C & "') And V_Prefix='" & MemVar_1F9512C & "' And Site_Code='" & MemVar_1F95070
  loc_162DD71:   unk_43841F.Execute var_104 & "'", var_F4, -1
  loc_162DDB4:   var_100 = "insert into LedgerM select * from LedgerMMerge where V_Type in ('" & var_9C & "') And V_Prefix='" & MemVar_1F9512C & "' And Site_Code='"
  loc_162DDCB:   unk_43841F.Execute var_100 & MemVar_1F95070 & "'", var_F4, -1
  loc_162DE15:   var_104 = "Delete from Ledger where V_Type in ('" & var_9C & "') And V_Prefix='" & MemVar_1F9512C & "' And Site_Code='" & MemVar_1F95070
  loc_162DE25:   unk_43841F.Execute var_104 & "'", var_F4, -1
  loc_162DE53:   var_C0 = "insert into Ledger select * from LedgerMerge where V_Type in ('" & var_9C
  loc_162DE7F:   unk_43841F.Execute var_C0 & "') And V_Prefix='" & MemVar_1F9512C & "' And Site_Code='" & MemVar_1F95070 & "'", var_F4, -1
  loc_162DE9F:   unk_43841F.CommitTrans
  loc_162DEA9:   global_52 = 0
  loc_162DEAC: End If
  loc_162DEB9: Me.LBLStatus.Caption = "Serialization Completed"
  loc_162DECB: Me.LBLStatus.Refresh
  loc_162DEE0: Set var_BC = Me.Command1
  loc_162DEE6: Call 0.Method_Proc_211_4_162DFC40 (1, var_C4, True, global_52, var_BC, var_BC, var_BC)
  loc_162DEEE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(var_BC)
  loc_162DF08: Me.TxtVrType.Enabled = True
  loc_162DF15: Set var_8C = Nothing
  loc_162DF1D: Set var_98 = Nothing
  loc_162DF25: Set var_90 = Nothing
  loc_162DF28: Exit Sub
  loc_162DF29: ' Referenced from: 162CCAC
  loc_162DF36: Set var_BC = Me.Command1
  loc_162DF3C: Call 0.Method_Proc_211_4_162DFC40 (1, var_C4, True, global_52)
  loc_162DF44: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(var_9E)
  loc_162DF5E: Me.TxtVrType.Enabled = True
  loc_162DF6F: If (global_52 = 1) Then
  loc_162DF78:   unk_43841F.RollbackTrans
  loc_162DF7D: End If
  loc_162DF85: Set var_BC = Err()
  loc_162DF8B: Call 0.Method_arg_2C (var_C0, var_A88)
  loc_162DFAC: MsgBox(CVar(var_C0), &H40, "Information", var_12C, var_13C)
  loc_162DFBF: Exit Sub
  loc_162DFC0: Exit Sub
End Sub
