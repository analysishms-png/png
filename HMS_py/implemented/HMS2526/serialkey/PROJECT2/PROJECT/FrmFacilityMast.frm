VERSION 5.00
Begin VB.Form FrmFacilityMast
  Caption = "Form1"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11895
  ClientHeight = 9090
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 1365
    Width = 1815
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 10
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11895
    Height = 420
    TabIndex = 33
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 3525
    Width = 720
    Height = 255
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 3
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 3255
    Width = 720
    Height = 255
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 3
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 5175
    Top = 2985
    Width = 1155
    Height = 255
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 15
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 1095
    Width = 1005
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 5
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 1635
    Width = 1815
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 15
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 1905
    Width = 1815
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 15
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 2715
    Width = 3990
    Height = 255
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 2445
    Width = 3990
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 50
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 825
    Width = 3990
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 2985
    Width = 720
    Height = 255
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 3
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 2235
    Top = 3840
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 13
    End
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 2175
    Width = 1815
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 15
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGLedgerAc
    Left = 6510
    Top = 4515
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGHelp
    Left = 6510
    Top = 3975
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin MSFlexGrid FGPoint
    Left = 150
    Top = 4830
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 16
  End
  Begin DataGrid DGTaxStru
    Left = 6510
    Top = 3420
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin Label LblName
    Caption = "SAC Code"
    Index = 11
    ForeColor = &HFF0000&
    Left = 720
    Top = 1365
    Width = 855
    Height = 240
    TabIndex = 36
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 495
    Top = 7020
    Width = 3375
    Height = 285
    TabIndex = 35
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 495
    Top = 7305
    Width = 3330
    Height = 255
    TabIndex = 34
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "(Yes/No)"
    Index = 2
    ForeColor = &HC0&
    Left = 3105
    Top = 3540
    Width = 795
    Height = 210
    TabIndex = 32
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "ActiveYN"
    Index = 10
    ForeColor = &HFF0000&
    Left = 720
    Top = 3525
    Width = 735
    Height = 240
    TabIndex = 31
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "(Yes/No)"
    Index = 1
    ForeColor = &HC0&
    Left = 3105
    Top = 3000
    Width = 795
    Height = 210
    TabIndex = 30
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Round Off"
    Index = 9
    ForeColor = &HFF0000&
    Left = 720
    Top = 2985
    Width = 855
    Height = 240
    TabIndex = 29
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "ROff Type"
    Index = 8
    ForeColor = &HFF0000&
    Left = 4215
    Top = 3000
    Width = 855
    Height = 240
    TabIndex = 28
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Caption = "(VoucherType)"
    ForeColor = &HC0&
    Left = 3360
    Top = 1095
    Width = 1335
    Height = 210
    TabIndex = 27
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Meter Reading"
    Index = 7
    ForeColor = &HFF0000&
    Left = 720
    Top = 3255
    Width = 1245
    Height = 240
    TabIndex = 26
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Tax Structure"
    Index = 6
    ForeColor = &HFF0000&
    Left = 720
    Top = 2730
    Width = 1170
    Height = 240
    TabIndex = 25
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "A/C Name"
    Index = 5
    ForeColor = &HFF0000&
    Left = 720
    Top = 2475
    Width = 870
    Height = 240
    TabIndex = 24
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Unit Rate"
    Index = 4
    ForeColor = &HFF0000&
    Left = 720
    Top = 2205
    Width = 780
    Height = 240
    TabIndex = 23
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Charge Unit"
    Index = 3
    ForeColor = &HFF0000&
    Left = 720
    Top = 1935
    Width = 1005
    Height = 240
    TabIndex = 22
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Charge Type"
    Index = 2
    ForeColor = &HFF0000&
    Left = 720
    Top = 1650
    Width = 1095
    Height = 240
    TabIndex = 21
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Short Name"
    Index = 1
    ForeColor = &HFF0000&
    Left = 720
    Top = 1095
    Width = 1020
    Height = 240
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Facility Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 720
    Top = 825
    Width = 1140
    Height = 240
    TabIndex = 19
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "(Yes/No)"
    Index = 0
    ForeColor = &HC0&
    Left = 3105
    Top = 3270
    Width = 795
    Height = 210
    TabIndex = 18
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmFacilityMast"


Private Sub Form_Load() '10A717C
  'Data Table: 4A0CD0
  Dim var_8C As Label
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_4A0CE4 As Connection15
  Dim var_B8 As Variant
  loc_10A6EB4: On Error Goto loc_10A7137
  loc_10A6ECF: Proc_6_23_DFC5B8(Me, 5535)
  loc_10A6ED7: Call Proc_324_38_100A810(7215)
  loc_10A6EE3: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10A6EF7: Me.LblUser.Left = CDbl(13500)
  loc_10A6F0E: Me.LblUser.Top = CDbl(7800)
  loc_10A6F25: Me.LblLDt.Top = CDbl(8160)
  loc_10A6F36: Set var_8C = Me.LblLDt
  loc_10A6F3C: var_8C.Left = CDbl(13500)
  loc_10A6F68: unk_4A0CE4.Execute "SELECT Code,Name FROM FacilityMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')", var_B8, -1
  loc_10A6F97: CVarUnk
  loc_10A6F9C: VerifyVarObj
  loc_10A6FA8: LateIdStAd
  loc_10A6FD1: var_98 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_10A6FDA: unk_4A0CE4.Execute var_98, var_B8, -1
  loc_10A7009: CVarUnk
  loc_10A700E: VerifyVarObj
  loc_10A701A: LateIdStAd
  loc_10A704C: unk_4A0CE4.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B8, -1
  loc_10A707B: CVarUnk
  loc_10A7080: VerifyVarObj
  loc_10A708C: LateIdStAd
  loc_10A70AE: var_94 = "SELECT distinct F.*,F.Code as SearchCode,S.SubCode as LedgerCode ,S.Name as LedgerName,T.Code as TaxCode,T.Name as TaxName FROM ((FacilityMast F Left Join TaxStru T on T.Code=F.TaxStru) Left join Subgroup S on S.SubCode=F.ACCode) where (F.LOGSITE_CODE='" & MemVar_1F95078
  loc_10A70BE: unk_4A0CE4.Execute var_94 & "' or F.LOGSITE_CODE='HO')", var_B8, -1
  loc_10A70F0: Set var_8C = Me
  loc_10A70F9: var_94 = "INI"
  loc_10A7107: Call Proc_324_32_E7824C(Proc_5_1_100EC1C(var_94, var_8C, Me.DGTaxStru, var_8C, var_8C, Me.DGLedgerAc, var_8C), var_8C, Me.DGHelp, var_8C)
  loc_10A711B: Call 0.Method_arg_160 (var_8C, var_8C)
  loc_10A7129: Call 0.Method_arg_164 (var_8C, var_8C)
  loc_10A7131: Call Proc_324_34_13C92C0(var_8C)
  loc_10A7136: Exit Sub
  loc_10A7137: ' Referenced from: 10A6EB4
  loc_10A713F: Set var_8C = Err()
  loc_10A7145: Call 0.Method_arg_2C (var_94)
  loc_10A7166: MsgBox(CVar(var_94), &H40, "Information", var_EC, var_10C)
  loc_10A7179: Exit Sub
  loc_10A717A: Exit Sub
End Sub

Private Sub Form_Resize() 'DFBE34
  'Data Table: 4A0CD0
  loc_DFBE30: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5F648
  'Data Table: 4A0CD0
  loc_E5F607: Set global_52 = Nothing
  loc_E5F619: Set global_56 = Nothing
  loc_E5F62B: Set global_60 = Nothing
  loc_E5F63D: Set global_64 = Nothing
  loc_E5F644: Exit Sub
  loc_E5F645: ThisVCallR8
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A088
  'Data Table: 4A0CD0
  loc_E2A060: On Error Goto loc_E2A07F
  loc_E2A077: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2A07F: ' Referenced from: E2A060
  loc_E2A07F: Proc_6_60_E63754(Shift)
  loc_E2A084: Exit Sub
  loc_E2A085: 0 = arg_1903
End Sub

Private Sub DGLedgerAc_UnknownEvent_9 'F36534
  'Data Table: 4A0CD0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3642B: Me.DGLedgerAc.Visible = False
  loc_F3644A: If (Me.RecordCount > 0) Then
  loc_F36489:   Set var_B4 = Me.Txt
  loc_F3648F:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(5), var_B8)
  loc_F36497:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F364CA:   var_B0 = Me.Fields.Item("Name")
  loc_F364E9:   Set var_B4 = Me.Txt
  loc_F364EF:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(5), var_B8)
  loc_F364F7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3650D: End If
  loc_F36518: Set var_A8 = Me.Txt
  loc_F3651E: Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(5))
  loc_F36526: var_B0.SetFocus
  loc_F36532: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_1F 'EA6B1C
  'Data Table: 4A0CD0
  Dim var_A8 As Variant
  loc_EA6A9C: Set var_88 = Me.DGLedgerAc
  loc_EA6AC6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6ACE: Set var_BC = Me.DGLedgerAc
  loc_EA6B0A: Proc_6_138_106E830(Me.DGLedgerAc, global_60, CInt(5), Me.FGPoint)
  loc_EA6B18: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E85548
  'Data Table: 4A0CD0
  loc_E854F4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E854F7:   Call DGHelp_UnknownEvent_9()
  loc_E854FC: End If
  loc_E85518: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_E8551B:   Call DGTaxStru_UnknownEvent_9()
  loc_E85520: End If
  loc_E8553C: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_E8553F:   Call DGLedgerAc_UnknownEvent_9()
  loc_E85544: End If
  loc_E85544: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F4EFD4
  'Data Table: 4A0CD0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4EECB: Me.DGHelp.Visible = False
  loc_F4EEEA: If (Me.RecordCount > 0) Then
  loc_F4EF29:   Set var_B4 = Me.Txt
  loc_F4EF2F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4EF37:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4EF6A:   var_B0 = Me.Fields.Item("Name")
  loc_F4EF89:   Set var_B4 = Me.Txt
  loc_F4EF8F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4EF97:   var_B8.Text = CStr(var_B0.Value)
  loc_F4EFAD: End If
  loc_F4EFB8: Set var_A8 = Me.Txt
  loc_F4EFBE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F4EFC6: var_B0.SetFocus
  loc_F4EFD2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA68D0
  'Data Table: 4A0CD0
  Dim var_A8 As Variant
  loc_EA6850: Set var_88 = Me.DGHelp
  loc_EA687A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6882: Set var_BC = Me.DGHelp
  loc_EA68BE: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_EA68CC: Exit Sub
  loc_EA68CD: DGHelp.DispID_1B = var_A8
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EF8040
  'Data Table: 4A0CD0
  Dim var_94 As TextBox
  loc_EF7F78: On Error Goto loc_EF7FFC
  loc_EF7F7B: Call Proc_324_33_E782E4()
  loc_EF7F95: var_88 = "ADD"
  loc_EF7FA3: Call Proc_324_32_E7824C(Proc_5_1_100EC1C(var_88, Me))
  loc_EF7FBC: Set var_8C = Me.Txt
  loc_EF7FC2: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_94)
  loc_EF7FCA: var_94.Text = "Yes"
  loc_EF7FE1: Set var_8C = Me.Txt
  loc_EF7FE7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EF7FEF: var_94.SetFocus
  loc_EF7FFB: Exit Sub
  loc_EF7FFC: ' Referenced from: EF7F78
  loc_EF8004: Set var_8C = Err()
  loc_EF800A: Call 0.Method_arg_2C (var_88)
  loc_EF802B: MsgBox(CVar(var_88), &H40, "Information", var_E4, var_104)
  loc_EF803E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBDE4C
  'Data Table: 4A0CD0
  loc_EBDDB8: On Error Goto loc_EBDE43
  loc_EBDDF2: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBDE01:   Set var_110 = Me
  loc_EBDE18:   Call Proc_324_32_E7824C(Proc_5_1_100EC1C("INI", var_110))
  loc_EBDE23:   Call Proc_324_34_13C92C0(global_52)
  loc_EBDE2B: Else
  loc_EBDE31:   Call 0.Method_arg_1E8 (var_110)
  loc_EBDE39:   Call var_110.SetFocus
  loc_EBDE42: End If
  loc_EBDE42: Exit Sub
  loc_EBDE43: ' Referenced from: EBDDB8
  loc_EBDE43: Proc_6_60_E63754()
  loc_EBDE48: Exit Sub
  loc_EBDE49: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12BBB04
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_4A0CE4 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_12BB4E4: On Error Goto loc_12BBAAD
  loc_12BB4F5: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_12BB4F8:   Exit Sub
  loc_12BB4F9: End If
  loc_12BB52B: var_D4 = "Location Facilities"
  loc_12BB573: If (Proc_6_108_101061C(MemVar_1F95044, "LocationFacility", "FcCode", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_12BB576:   Exit Sub
  loc_12BB577: End If
  loc_12BB5AE: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_12BB5B3:   var_96 = 0
  loc_12BB5BF:   unk_4A0CE4.BeginTrans var_D0
  loc_12BB5C6:   var_96 = &HFF
  loc_12BB5DA:   var_94 = Me.Bookmark 'Variant
  loc_12BB634:   unk_4A0CE4.Execute CStr("Delete From FacilityMast Where Code='" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_12BB67F:   var_168 = 0
  loc_12BB692:   var_160 = 0
  loc_12BB69D:   var_15C = 0
  loc_12BB6B0:   var_154 = 0
  loc_12BB6BB:   var_150 = 0
  loc_12BB6CE:   var_148 = 0
  loc_12BB717:   Proc_154_5_10E3BD4(MemVar_1F95044, "FacilityMast", "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_12BB795:   unk_4A0CE4.Execute CStr("Delete From Voucher_Type Where V_Type='" & Me.Fields.Item("ShortName").Value & "'"), var_138, -1
  loc_12BB7E0:   var_168 = 0
  loc_12BB7F3:   var_160 = 0
  loc_12BB7FE:   var_15C = 0
  loc_12BB811:   var_154 = 0
  loc_12BB81C:   var_150 = 0
  loc_12BB82F:   var_148 = 0
  loc_12BB878:   Proc_154_5_10E3BD4(MemVar_1F95044, "Voucher_Type", "V_Type", &HC8, CStr(Me.Fields.Item("ShortName").Value), 0, 0, 0)
  loc_12BB8E8:   var_118 = "Delete From Voucher_Prefix Where V_Type='" & Me.Fields.Item("ShortName").Value & "'" 
  loc_12BB8F6:   unk_4A0CE4.Execute CStr(var_118), var_138, -1
  loc_12BB941:   var_168 = 0
  loc_12BB954:   var_160 = 0
  loc_12BB95F:   var_15C = 0
  loc_12BB972:   var_154 = 0
  loc_12BB97D:   var_150 = 0
  loc_12BB990:   var_148 = 0
  loc_12BB9D0:   var_B4 = "Voucher_Prefix"
  loc_12BB9D9:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B4, "V_Type", &HC8, CStr(Me.Fields.Item("ShortName").Value), 0, 0, 0)
  loc_12BBA07:   unk_4A0CE4.CommitTrans
  loc_12BBA0E:   var_96 = 0
  loc_12BBA1C:   Me.Requery -1
  loc_12BBA2C:   Me.Requery -1
  loc_12BBA4C:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12BBA59:     Me.Bookmark = var_94
  loc_12BBA61:   Else
  loc_12BBA75:     If (Me.EOF = 0) Then
  loc_12BBA7E:       Me.MoveLast
  loc_12BBA83:     End If
  loc_12BBA83:   End If
  loc_12BBA83:   Call Proc_324_34_13C92C0(var_96, var_148, 0, var_150, var_154)
  loc_12BBAA4:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_12BBAAC: End If
  loc_12BBAAC: Exit Sub
  loc_12BBAAD: ' Referenced from: 12BB4E4
  loc_12BBAB3: If (var_96 = &HFF) Then
  loc_12BBABC:   unk_4A0CE4.RollbackTrans
  loc_12BBAC1: End If
  loc_12BBAC9: Set var_9C = Err()
  loc_12BBACF: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_12BBAF0: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_12BBB03: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F6279C
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F62678: On Error Goto loc_F62756
  loc_F62689: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F6268C:   Exit Sub
  loc_F6268D: End If
  loc_F626A4: If (Me.RecordCount > 0) Then
  loc_F626BC:   var_8C = "EDIT"
  loc_F626CA:   Call Proc_324_32_E7824C(Proc_5_1_100EC1C(var_8C, Me))
  loc_F626E2:   Set var_90 = Me.Txt
  loc_F626E8:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_F626F0:   var_98.Enabled = False
  loc_F62707:   Set var_90 = Me.Txt
  loc_F6270D:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F62715:   var_98.SetFocus
  loc_F62724: Else
  loc_F62745:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F62755: End If
  loc_F62755: Exit Sub
  loc_F62756: ' Referenced from: F62678
  loc_F6275E: Set var_90 = Err()
  loc_F62764: Call 0.Method_arg_2C (var_8C)
  loc_F62785: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F62798: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16210
  'Data Table: 4A0CD0
  loc_E16205: Me.Global.Unload Me
  loc_E1620D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F23ED8
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F23DD8: On Error Goto loc_F23E70
  loc_F23DE4: var_88 = Me.RecordCount
  loc_F23DF2: If (var_88 <= 0) Then
  loc_F23DFB:   var_B8 = "Information"
  loc_F23E16:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F23E26:   Exit Sub
  loc_F23E27: End If
  loc_F23E35: MemVar_1F950E4 = "Select F.Code As SearchCode,F.Name,F.ChargeType,F.UnitRate FROM FacilityMast F WHERE (F.LOGSITE_CODE='" & MemVar_1F95078 & "' or F.LOGSITE_CODE='HO') Order by F.Name"
  loc_F23E3F: var_10C = "3000,1500,1500"
  loc_F23E45: Proc_6_126_F1C850(var_10C)
  loc_F23E53: MemVar_1F95120 = Me
  loc_F23E6A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F23E6F: Exit Sub
  loc_F23E70: ' Referenced from: F23DD8
  loc_F23E78: Set var_110 = Err()
  loc_F23E7E: Call 0.Method_arg_1C (var_88)
  loc_F23E8F: If (var_88 <> 0) Then
  loc_F23E9A:   Set var_110 = Err()
  loc_F23EA0:   Call 0.Method_arg_2C (var_10C)
  loc_F23EC1:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F23ED4: End If
  loc_F23ED4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E31508
  'Data Table: 4A0CD0
  loc_E314F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31500: Call Proc_324_34_13C92C0(global_52)
  loc_E31505: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E31268
  'Data Table: 4A0CD0
  loc_E31258: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31260: Call Proc_324_34_13C92C0(global_52)
  loc_E31265: Exit Sub
  loc_E31266: Result 4 End Sub 'Currency
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E312C8
  'Data Table: 4A0CD0
  loc_E312B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E312C0: Call Proc_324_34_13C92C0(global_52)
  loc_E312C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E31448
  'Data Table: 4A0CD0
  loc_E31438: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31440: Call Proc_324_34_13C92C0(global_52)
  loc_E31445: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '107D690
  'Data Table: 4A0CD0
  Dim var_A0 As String
  Dim unk_4A0CE4 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_136 As Integer
  Dim var_CC As Variant
  loc_107D408: On Error Goto loc_107D666
  loc_107D41F: var_A0 = "SELECT distinct F.*,F.Code as SearchCode,S.SubCode as LedgerCode ,S.Name as LedgerName,T.Code as TaxCode,T.Name as TaxName FROM ((FacilityMast F Left Join TaxStru T on T.Code=F.TaxStru) Left join Subgroup S on S.SubCode=F.ACCode) where (F.LOGSITE_CODE='" & MemVar_1F95078
  loc_107D43D: unk_4A0CE4.Execute var_A0 & "' or F.LOGSITE_CODE='" & MemVar_1F95070 & "') Order by F.Name", var_CC, -1
  loc_107D448: Set var_88 = var_D0
  loc_107D462: var_D4 = var_88.RecordCount
  loc_107D470: If (var_D4 = 0) Then
  loc_107D48C:   MsgBox("No Record Present For Printing", 0, var_F4, var_114, var_134)
  loc_107D49C:   Exit Sub
  loc_107D49D: End If
  loc_107D4B3: Set var_D0 = var_88 
  loc_107D4BF: var_136 = CreateFieldDefFile(var_D0, MemVar_1F950B4 & "\FacilityMast.ttx")
  loc_107D4C9: Set var_88 = var_D0
  loc_107D4CF: var_BC = CVar(var_136) 'Integer
  loc_107D4D2: var_98 = var_BC 'Variant
  loc_107D4EE: var_A0 = MemVar_1F950B4 & "\FacilityMast.RPT"
  loc_107D4F7: Call 0.Method_arg_1C (var_A0, var_BC, var_D0)
  loc_107D502: MemVar_1F951E8 = var_D0
  loc_107D51D: Call 0.Method_arg_90 (var_D0, var_D4, var_9A, 1)
  loc_107D525: Call 0.Method_arg_24 (var_136, &HFF)
  loc_107D531: For var_13A =  To CInt(var_D4): var_D0 = var_13A 'Integer
  loc_107D54A:   Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_107D552:   Call 0.Method_arg_20 (var_140)
  loc_107D55A:   Call 0.Method_arg_30 (var_A0)
  loc_107D5A0:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_107D5B6:     Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_107D5BE:     Call 0.Method_arg_20 (var_140)
  loc_107D5C6:     Call 0.Method_arg_38 ("'Facility Master'")
  loc_107D5D2:   End If
  loc_107D5D5: Next var_13A 'Integer
  loc_107D5F3: Call 0.Method_arg_64 (var_D0, CVar(var_88))
  loc_107D5FB: Call 0.Method_arg_2C (var_E4)
  loc_107D609: Call 0.Method_arg_150 (var_104)
  loc_107D614: Call 0.Method_arg_50 (var_A0)
  loc_107D61E: Set var_140 = Nothing
  loc_107D638: Set var_D0 = MemVar_1F951E8 
  loc_107D644: Proc_6_99_1484404(var_D0, 0, var_A0)
  loc_107D64F: MemVar_1F951E8 = var_D0
  loc_107D662: Set var_88 = Nothing
  loc_107D665: Exit Sub
  loc_107D666: ' Referenced from: 107D408
  loc_107D66C: Call 0.Method_arg_50 (var_A0, &HFF)
  loc_107D681: Proc_183_57_104B0BC(var_A0, "TopCtrl1_ePrn")
  loc_107D68D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E42B80
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  loc_E42B57: Me.Requery -1
  loc_E42B67: Me.Requery -1
  loc_E42B77: Me.Requery -1
  loc_E42B7C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1602134
  'Data Table: 4A0CD0
  Dim var_A0 As String
  Dim var_98 As Variant
  Dim var_E8 As Variant
  Dim var_B8 As String
  Dim unk_4A0CE4 As Connection15
  Dim var_94 As Variant
  Dim var_9C As Field20
  Dim var_108 As Variant
  Dim var_D8 As Variant
  Dim var_118 As Variant
  Dim Me As Recordset15
  Dim var_11C As TextBox
  Dim var_12C As TextBox
  Dim var_140 As TextBox
  Dim var_154 As TextBox
  Dim var_168 As TextBox
  Dim var_4B0 As Double
  Dim var_180 As TextBox
  Dim var_194 As TextBox
  Dim var_1A8 As TextBox
  Dim var_1F4 As TextBox
  Dim var_240 As TextBox
  Dim var_2DC As TextBox
  Dim var_3C0 As Variant
  Dim var_138 As String
  Dim var_178 As String
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_218 As Variant
  Dim var_390 As Variant
  Dim var_3E0 As Variant
  Dim var_440 As Variant
  Dim var_B4 As Variant
  Dim var_310 As Variant
  Dim var_330 As Variant
  Dim var_340 As Variant
  Dim var_3D0 As Variant
  Dim var_4A4 As Variant
  Dim var_4D0 As Variant
  Dim var_500 As Variant
  Dim var_C8 As String
  loc_1600E14: On Error Goto loc_16020E1
  loc_1600E1B: var_86 = CByte(0) 'Byte
  loc_1600E2A: Set var_94 = Me.Txt
  loc_1600E30: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1600E59: If (Proc_183_19_E8E68C(var_98, "Name") = 0) Then
  loc_1600E63:   Call Txt_GotFocus()
  loc_1600E68:   Exit Sub
  loc_1600E69: End If
  loc_1600E74: Set var_94 = Me.Txt
  loc_1600E7A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_1600EA3: If (Proc_183_19_E8E68C(var_98, "Short Name") = 0) Then
  loc_1600EAD:   Call Txt_GotFocus()
  loc_1600EB2:   Exit Sub
  loc_1600EB3: End If
  loc_1600EB7: Set var_94 = Me.TopCtrl1
  loc_1600EBD: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CInt(1))
  loc_1600ED6: If (CStr(CInt(0)) = "Add") Then
  loc_1600EE7:   Set var_94 = Me.Txt
  loc_1600EED:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_1600F02:   var_C8 = "Voucher_Type (Short Name)"
  loc_1600F46:   If (Proc_6_108_101061C(MemVar_1F95044, "Voucher_Type", "V_Type", var_98.Text) = 0) Then
  loc_1600F49:     Exit Sub
  loc_1600F4A:   End If
  loc_1600F4A: End If
  loc_1600F55: Set var_94 = Me.Txt
  loc_1600F5B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, 0)
  loc_1600F63: var_A0 = "Charge Type"
  loc_1600F84: If (Proc_183_19_E8E68C(var_98, var_A0, var_C8) = 0) Then
  loc_1600F8E:   Call Txt_GotFocus()
  loc_1600F93:   Exit Sub
  loc_1600F94: End If
  loc_1600FA2: Set var_94 = Me.Txt
  loc_1600FA8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, var_A0)
  loc_1600FB0: CInt(2) = var_98.Text
  loc_1600FC7: If (var_A0 <> "Fixed Charge") Then
  loc_1600FD5:   Set var_94 = Me.Txt
  loc_1600FDB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98)
  loc_1601004:   If (Proc_183_19_E8E68C(var_98, "Charge Unit") = 0) Then
  loc_160100E:     Call Txt_GotFocus()
  loc_1601013:     Exit Sub
  loc_1601014:   End If
  loc_1601017: Else
  loc_1601025:   Set var_94 = Me.Txt
  loc_160102B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98, vbNullString)
  loc_1601033:   var_98.Text = CInt(3)
  loc_160103F: End If
  loc_160104A: Set var_94 = Me.Txt
  loc_1601050: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_1601079: If (Proc_183_19_E8E68C(var_98, "Unit Rate") = 0) Then
  loc_1601083:   Call Txt_GotFocus()
  loc_1601088:   Exit Sub
  loc_1601089: End If
  loc_1601094: Set var_94 = Me.Txt
  loc_160109A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98, CInt(4))
  loc_16010C3: If (Proc_183_19_E8E68C(var_98, "A/C Name") = 0) Then
  loc_16010CD:   Call Txt_GotFocus()
  loc_16010D2:   Exit Sub
  loc_16010D3: End If
  loc_16010DE: Set var_94 = Me.Txt
  loc_16010E4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_98, CInt(5))
  loc_160110D: If (Proc_183_19_E8E68C(var_98, "Tax Sructure") = 0) Then
  loc_1601117:   Call Txt_GotFocus()
  loc_160111C:   Exit Sub
  loc_160111D: End If
  loc_1601128: Set var_94 = Me.Txt
  loc_160112E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_98, CInt(6))
  loc_1601136: var_A0 = "RoundOff"
  loc_1601157: If (Proc_183_19_E8E68C(var_98, var_A0) = 0) Then
  loc_1601161:   Call Txt_GotFocus()
  loc_1601166:   Exit Sub
  loc_1601167: End If
  loc_1601175: Set var_94 = Me.Txt
  loc_160117B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_98, var_A0)
  loc_1601183: CInt(7) = var_98.Text
  loc_160119A: If (var_A0 = "Yes") Then
  loc_16011A8:   Set var_94 = Me.Txt
  loc_16011AE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_98)
  loc_16011D7:   If (Proc_183_19_E8E68C(var_98, "ROff Type") = 0) Then
  loc_16011E1:     Call Txt_GotFocus()
  loc_16011E6:     Exit Sub
  loc_16011E7:   End If
  loc_16011EA: Else
  loc_16011F8:   Set var_94 = Me.Txt
  loc_16011FE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_98, vbNullString)
  loc_1601206:   var_98.Text = CInt(8)
  loc_1601212: End If
  loc_160121D: Set var_94 = Me.Txt
  loc_1601223: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_98)
  loc_160124C: If (Proc_183_19_E8E68C(var_98, "Meter Reading") = 0) Then
  loc_1601256:   Call Txt_GotFocus()
  loc_160125B:   Exit Sub
  loc_160125C: End If
  loc_1601267: Set var_94 = Me.Txt
  loc_160126D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98, CInt(9))
  loc_1601296: If (Proc_183_19_E8E68C(var_98, "ActiveYN") = 0) Then
  loc_16012A0:   Call Txt_GotFocus()
  loc_16012A5:   Exit Sub
  loc_16012A6: End If
  loc_16012AA: Set var_94 = Me.TopCtrl1
  loc_16012B0: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CInt(&HA))
  loc_16012C9: If (CStr(1) = "Add") Then
  loc_16012D4:   If (MemVar_1F953B0 = "A") Then
  loc_16012DD:     var_E8 = 0
  loc_16012FA:     var_A0 = "Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From FacilityMast Where SITE_CODE='" & MemVar_1F95070
  loc_160130A:     unk_4A0CE4.Execute CStr(1) & "'", var_B4, -1
  loc_1601312:     var_94 = var_94.Fields
  loc_160131A:     var_E8 = var_98.Item(var_98)
  loc_1601322:     var_9C = var_9C.Value
  loc_1601331:     global_72 = CStr(var_F8)
  loc_1601351:   Else
  loc_1601359:     If (MemVar_1F953B0 = "S") Then
  loc_1601362:       var_E8 = 0
  loc_160137F:       var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From FacilityMast Where SITE_CODE='" & MemVar_1F95070
  loc_1601386:       var_B8 = CStr(1) & "'"
  loc_160138F:       unk_4A0CE4.Execute var_B8, var_B4, -1
  loc_1601397:       var_94 = var_94.Fields
  loc_160139F:       var_E8 = var_98.Item(var_98)
  loc_16013A7:       var_9C = var_9C.Value
  loc_16013B6:       global_72 = CStr(var_F8)
  loc_16013D3:     End If
  loc_16013D3:   End If
  loc_16013E0:   var_108 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2, var_F8)) 'String
  loc_160140E:   var_118 = (1 + Format(global_72, "0000"))
  loc_1601419:   global_72 = CStr(var_118)
  loc_160142E: Else
  loc_160144B:   var_98 = Me.Fields.Item("Code")
  loc_1601462:   global_72 = CStr(var_98.Value)
  loc_1601473: End If
  loc_160147C: unk_4A0CE4.BeginTrans var_C4
  loc_1601485: var_86 = CByte(1) 'Byte
  loc_160148D: Set var_94 = Me.TopCtrl1
  loc_1601493: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_16014AC: If (CStr(var_108) = "Add") Then
  loc_16014BD:   Set var_94 = Me.Txt
  loc_16014C3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_B8)
  loc_16014CB:   var_F8 = var_98.Text
  loc_16014DE:   Set var_9C = Me.Txt
  loc_16014E4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_11C)
  loc_16014FF:   Set var_128 = Me.Txt
  loc_1601505:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_12C)
  loc_1601520:   Set var_13C = Me.Txt
  loc_1601526:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_140)
  loc_1601541:   Set var_150 = Me.Txt
  loc_1601547:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_154)
  loc_1601562:   Set var_164 = Me.Txt
  loc_1601568:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_168)
  loc_160157D:   var_4B0 = Val(var_168.Text)
  loc_1601594:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_180, var_184)
  loc_16015AF:   Set var_190 = Me.Txt
  loc_16015B5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_194)
  loc_16015D0:   Set var_1A4 = Me.Txt
  loc_16015D6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1A8)
  loc_160161B:   Set var_1F0 = Me.Txt
  loc_1601621:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1F4)
  loc_160163C:   Set var_23C = Me.Txt
  loc_1601642:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_240)
  loc_1601687:   Set var_2D8 = Me.Txt
  loc_160168D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_2DC)
  loc_16016C9:   var_3C0 = CVar(Proc_6_14_EF402C(var_98)) 'String
  loc_16016CF:   Proc_6_8_EB1974(var_3D0)
  loc_16016EB:   var_A0 = "Insert Into FacilityMast(Code,Name,ShortName,SACCode,ChargeType,ChargeUnit,UnitRate,AcCode,TaxStru,RoundOff,ROffType,MeterReading,ActiveYN,U_AE,U_Name,U_EntDt,Site_Code,logSite_Code) Values('" & global_72
  loc_1601744:   var_178 = var_A0 & "','" & var_B8 & "','" & var_11C.Text & "','" & var_12C.Text & "','" & var_140.Text & "','" & var_154.Text & "'," & CStr(var_180.Tag)
  loc_1601780:   var_218 = CVar(var_178 & ",'" & var_184 & "','" & var_194.Tag & "','") & IIf((var_1A8.Text = "Yes"), "Y", "N") & "','" & CVar(var_1F4.Text) 
  loc_16017B3:   var_390 = var_218 & "','" & IIf((var_240.Text = "Yes"), "Y", "N") & "','" & IIf((var_2DC.Text = "Yes"), "Y", "N") & "','A','" & CVar(MemVar_1F950C8) 
  loc_16017DF:   var_440 = var_390 & "'," & var_3D0 & ",'" & CVar(MemVar_1F95078) & "','" 
  loc_1601800:   unk_4A0CE4.Execute CStr(var_440 & CVar(MemVar_1F95078) & "')"), var_4A4, -1
  loc_16018CB:   var_D8 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('"
  loc_16018DB:   Set var_94 = Me.Txt
  loc_16018E1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_D8, var_550)
  loc_16018F8:   var_108 = -1 & Trim(CVar(var_98)) 
  loc_1601916:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_11C, IIf((var_1A8.Text = "Yes"), "Y", "N") & "','")
  loc_160191E:   var_1CC = CVar(var_11C) 'Address
  loc_1601936:   var_218 = Me.Txt & Trim(var_1CC) & "','" 
  loc_1601945:   Set var_128 = Me.Txt
  loc_160194B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_12C, var_218)
  loc_160197A:   Set var_13C = Me.Txt
  loc_1601980:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_140)
  loc_160199C:   var_310 = (Trim(CVar(var_140)) + " Bill")
  loc_16019A9:   var_340 = var_4A8 & Trim(CVar(var_12C)) & "','','" & "Y" & "','" 
  loc_16019B8:   Set var_150 = Me.Txt
  loc_16019BE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_154)
  loc_16019DA:   var_390 = (Trim(CVar(var_154)) + " Bill")
  loc_16019E7:   var_3C0 = var_340 & var_390 & "','" 
  loc_16019F6:   Set var_164 = Me.Txt
  loc_16019FC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168)
  loc_1601A23:   Proc_6_104_ED68A8(var_440, var_3C0 & Trim(CVar(var_168)) & "','','','Automatic',")
  loc_1601A56:   Proc_6_8_EB1974(var_4E0)
  loc_1601A67:   var_500 = CVar(Proc_6_14_EF402C(var_3C0 & var_440 & ",'','','','','','','','','','','" & CVar(MemVar_1F950C8) & "',")) & var_4E0 & ",'','','','',0,'','" 
  loc_1601A9B:   unk_4A0CE4.Execute CStr(var_500 & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1601B14:   var_D8 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('"
  loc_1601B24:   Set var_94 = Me.Txt
  loc_1601B2A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_D8)
  loc_1601B39:   var_F8 = Trim(CVar(var_98))
  loc_1601B59:   Proc_6_7_F26918(var_1CC, MemVar_1F950F4, var_3C0 & var_F8 & "',")
  loc_1601B61:   var_1EC = -1 & var_1CC 
  loc_1601B79:   Proc_6_7_F26918(var_218, MemVar_1F950FC)
  loc_1601BC6:   var_330 = CVar(Proc_6_14_EF402C(Trim(var_1CC) & "," & var_218 & ",'" & Year(MemVar_1F950F4) & "',0,'" & CVar(MemVar_1F95070) & "',")) 'String
  loc_1601BCC:   Proc_6_8_EB1974(var_340, var_330)
  loc_1601BFE:   unk_4A0CE4.Execute CStr(Me.Txt & var_340 & ",'" & CVar(MemVar_1F95078) & "' )"), , 
  loc_1601C3F: Else
  loc_1601C4D:   Set var_94 = Me.Txt
  loc_1601C53:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_1601C6E:   Set var_9C = Me.Txt
  loc_1601C74:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_11C)
  loc_1601C8F:   Set var_128 = Me.Txt
  loc_1601C95:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_1601CB0:   Set var_13C = Me.Txt
  loc_1601CB6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_1601CD1:   Set var_150 = Me.Txt
  loc_1601CD7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_154)
  loc_1601CF3:   Proc_6_39_E7D3A0(var_F8)
  loc_1601D06:   Set var_164 = Me.Txt
  loc_1601D0C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_168)
  loc_1601D27:   Set var_17C = Me.Txt
  loc_1601D2D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_180)
  loc_1601D48:   Set var_190 = Me.Txt
  loc_1601D4E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_194)
  loc_1601D93:   Set var_1A4 = Me.Txt
  loc_1601D99:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1A8)
  loc_1601DB4:   Set var_1F0 = Me.Txt
  loc_1601DBA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1F4)
  loc_1601DFF:   Set var_23C = Me.Txt
  loc_1601E05:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_240)
  loc_1601E41:   var_4D0 = CVar(Proc_6_14_EF402C(CVar(Val(var_154.Text)))) 'String
  loc_1601E47:   Proc_6_8_EB1974(var_4E0)
  loc_1601E83:   var_138 = "UPDATE FacilityMast SET Name='" & var_98.Text & "',SACCode='" & var_11C.Text & "',ChargeType='" & var_12C.Text & "',ChargeUnit='"
  loc_1601E91:   var_108 = CVar(var_138 & var_140.Text & "',UnitRate=") 'String
  loc_1601E97:   var_118 = var_108 & var_F8 
  loc_1601ECD:   var_310 = var_118 & ",ACCode='" & CVar(var_168.Tag) & "',TaxStru='" & CVar(var_180.Tag) & "',RoundOff='" & IIf((var_194.Text = "Yes"), "Y", "N") 
  loc_1601EF9:   var_3E0 = var_310 & "',ROffType='" & CVar(var_1A8.Text) & "',MeterReading='" & IIf((var_1F4.Text = "Yes"), "Y", "N") & "',ActiveYN='" 
  loc_1601F2C:   var_500 = var_3E0 & IIf((var_240.Text = "Yes"), "Y", "N") & "',U_AE='E',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_4E0 & ",Site_Code='" 
  loc_1601F63:   unk_4A0CE4.Execute CStr(var_500 & CVar(MemVar_1F95070) & "' WHERE Code='" & CVar(global_72) & "'"), var_550, -1
  loc_1602015: End If
  loc_160201B: unk_4A0CE4.CommitTrans
  loc_1602024: var_86 = CByte(0) 'Byte
  loc_1602028: Call Proc_324_37_F200C4(var_2D8)
  loc_1602038: Me.Requery -1
  loc_1602048: Me.Requery -1
  loc_1602075: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_1602085: Set var_94 = Me.TopCtrl1
  loc_160208B: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_D8)
  loc_16020A4: If (CStr(var_4D0) = "Add") Then
  loc_16020A7:   Call TopCtrl1_UnknownEvent_A()
  loc_16020AC:   Exit Sub
  loc_16020AD: End If
  loc_16020C2: var_A0 = "INI"
  loc_16020D0: Call Proc_324_32_E7824C(Proc_5_1_100EC1C(var_A0, Me))
  loc_16020DB: Call Proc_324_34_13C92C0(global_52)
  loc_16020E0: Exit Sub
  loc_16020E1: ' Referenced from: 1600E14
  loc_16020EA: If (CInt(var_86) = 1) Then
  loc_16020F3:   unk_4A0CE4.RollbackTrans
  loc_16020F8: End If
  loc_1602100: Set var_94 = Err()
  loc_1602106: Call 0.Method_arg_2C (var_A0)
  loc_160211F: MsgBox(CVar(var_A0), &H10, var_F8, var_108, var_118)
  loc_1602132: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F2EFEC
  'Data Table: 4A0CD0
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F2EF22: If (Me.ListView.ListItems.Count > 0) Then
  loc_F2EF52:   Set var_A8 = Me.ListView
  loc_F2EF69:   Set var_C0 = Me.Txt
  loc_F2EF6F:   Call 0.Method_ListView_UnknownEvent_130 (CInt(CStr(var_A8.Tag)), var_C4)
  loc_F2EF77:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F2EF97: End If
  loc_F2EFA3: Me.FrmList.Visible = False
  loc_F2EFC9: Set var_9C = Me.Txt
  loc_F2EFCF: Call 0.Method_ListView_UnknownEvent_130 (CInt(CStr(Me.ListView.Tag)))
  loc_F2EFD7: var_A8.SetFocus
  loc_F2EFEB: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F39D94
  'Data Table: 4A0CD0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F39C8B: Me.DGTaxStru.Visible = False
  loc_F39CAA: If (Me.RecordCount > 0) Then
  loc_F39CE9:   Set var_B4 = Me.Txt
  loc_F39CEF:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(6), var_B8)
  loc_F39CF7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F39D2A:   var_B0 = Me.Fields.Item("Name")
  loc_F39D49:   Set var_B4 = Me.Txt
  loc_F39D4F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(6), var_B8)
  loc_F39D57:   var_B8.Text = CStr(var_B0.Value)
  loc_F39D6D: End If
  loc_F39D78: Set var_A8 = Me.Txt
  loc_F39D7E: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(6))
  loc_F39D86: var_B0.SetFocus
  loc_F39D92: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'EA6BE0
  'Data Table: 4A0CD0
  Dim var_A8 As Variant
  loc_EA6B60: Set var_88 = Me.DGTaxStru
  loc_EA6B8A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6B92: Set var_BC = Me.DGTaxStru
  loc_EA6BCE: Proc_6_138_106E830(Me.DGTaxStru, global_64, CInt(6), Me.FGPoint)
  loc_EA6BDC: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1307878
  'Data Table: 4A0CD0
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_1307176: Set var_88 = Me.Txt
  loc_130717C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_130718A: Proc_6_74_E23240(var_8C)
  loc_1307196: Call Proc_324_37_F200C4(var_8C)
  loc_130719B: On Error Goto loc_1307831
  loc_13071A1: var_92 = Index
  loc_13071AC: If (var_92 = CInt(0)) Then
  loc_13071C6:   If (Me.RecordCount > 0) Then
  loc_13071D4:     Set var_8C = Me.FGPoint
  loc_13071EC:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_13071FA:   End If
  loc_13071FD: Else
  loc_1307205:   If (var_92 = CInt(5)) Then
  loc_130721F:     If (Me.RecordCount > 0) Then
  loc_130722D:       Set var_8C = Me.FGPoint
  loc_1307245:       Proc_6_137_1192FDC(Me.DGLedgerAc, global_60, Index)
  loc_1307253:     End If
  loc_13072A1:     Set var_88 = Me.Txt
  loc_13072A7:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_13072AF:     var_8C = var_8C.Text
  loc_13072C7:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_13072CA:       Exit Sub
  loc_13072CB:     End If
  loc_13072D8:     Set var_88 = Me.Txt
  loc_13072DE:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13072E6:     var_A0 = var_8C.Text
  loc_13072F8:     var_B0 = "Name"
  loc_1307333:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_130733C:       Me.MoveFirst
  loc_130735F:       Set var_88 = Me.Txt
  loc_1307365:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_130736D:       0 = var_8C.Text
  loc_1307386:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_130739B:     End If
  loc_130739E:   Else
  loc_13073A6:     If (var_92 = CInt(6)) Then
  loc_13073C0:       If (Me.RecordCount > 0) Then
  loc_13073CE:         Set var_8C = Me.FGPoint
  loc_13073E6:         Proc_6_137_1192FDC(Me.DGTaxStru, global_64)
  loc_13073F4:       End If
  loc_1307442:       Set var_88 = Me.Txt
  loc_1307448:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1307450:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1307468:       If (Index Or (var_A0 = vbNullString)) Then
  loc_130746B:         Exit Sub
  loc_130746C:       End If
  loc_1307479:       Set var_88 = Me.Txt
  loc_130747F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1307487:       var_A0 = var_8C.Text
  loc_1307499:       var_B0 = "Name"
  loc_13074D4:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_13074DD:         Me.MoveFirst
  loc_1307500:         Set var_88 = Me.Txt
  loc_1307506:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_130750E:         0 = var_8C.Text
  loc_1307527:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_130753C:       End If
  loc_130753F:     Else
  loc_1307547:       If (var_92 = CInt(2)) Then
  loc_1307557:         ReDim var_F0(0 To 1)
  loc_130756E:         var_F0(0) = "Calculated"
  loc_130757D:         var_F0(1) = "Fixed Charge"
  loc_1307594:         global_76 = Array(var_F0)
  loc_130759F:         Set var_B4 = Me.ListView
  loc_13075BA:         Set var_8C = Me.Txt
  loc_13075D4:         Set global_92 = Proc_6_66_F0048C(var_B4, var_8C, Index)
  loc_13075F2:         Set var_88 = Me.Txt
  loc_13075F8:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1307600:         global_76 = var_8C.Text
  loc_1307612:         Set var_90 = Me.Txt
  loc_1307618:         Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_1307620:         var_B4.Tag = 2
  loc_1307636:       Else
  loc_130763E:         If (var_92 = CInt(3)) Then
  loc_130764E:           ReDim var_F0(0 To 1)
  loc_1307665:           var_F0(0) = "Sq Feet"
  loc_1307674:           var_F0(1) = "Per Unit"
  loc_130768B:           global_76 = Array(var_F0)
  loc_1307696:           Set var_B4 = Me.ListView
  loc_13076B1:           Set var_8C = Me.Txt
  loc_13076CB:           Set global_92 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_76)
  loc_13076E9:           Set var_88 = Me.Txt
  loc_13076EF:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13076F7:           2 = var_8C.Text
  loc_1307709:           Set var_90 = Me.Txt
  loc_130770F:           Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_1307717:           var_B4.Tag = global_76
  loc_130772D:         Else
  loc_1307735:           If (var_92 = CInt(8)) Then
  loc_1307745:             ReDim var_F0(0 To 2)
  loc_130775C:             var_F0(0) = "Lower"
  loc_130776B:             var_F0(1) = "Upper"
  loc_130777A:             var_F0(2) = "Standard"
  loc_1307791:             global_76 = Array(var_F0)
  loc_130779C:             Set var_B4 = Me.ListView
  loc_13077B7:             Set var_8C = Me.Txt
  loc_13077D1:             Set global_92 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_76)
  loc_13077EF:             Set var_88 = Me.Txt
  loc_13077F5:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13077FD:             3 = var_8C.Text
  loc_130780F:             Set var_90 = Me.Txt
  loc_1307815:             Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_130781D:             var_B4.Tag = global_76
  loc_1307830:           End If
  loc_1307830:         End If
  loc_1307830:       End If
  loc_1307830:     End If
  loc_1307830:   End If
  loc_1307830: End If
  loc_1307830: Exit Sub
  loc_1307831: ' Referenced from: 130719B
  loc_1307839: Set var_88 = Err()
  loc_130783F: Call 0.Method_arg_2C (var_A0)
  loc_1307860: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_124)
  loc_1307873: Exit Sub
  loc_1307874: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13AD1C0
  'Data Table: 4A0CD0
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_110 As Variant
  loc_13AC8B2: If (CLng(Shift) = &H1B) Then
  loc_13AC8B5:   Call Proc_324_37_F200C4()
  loc_13AC8BA:   Exit Sub
  loc_13AC8BB: End If
  loc_13AC8BE: var_86 = KeyCode
  loc_13AC8C9: If (var_86 = CInt(0)) Then
  loc_13AC8E9:   Set var_98 = Me.FGPoint
  loc_13AC917:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift)
  loc_13AC984:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13AC9AA:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_13AC9B8:   End If
  loc_13AC9BB: Else
  loc_13AC9C3:   If (var_86 = CInt(5)) Then
  loc_13AC9EE:     Set var_98 = Nothing
  loc_13ACA20:     Proc_6_69_134A630(Me.DGLedgerAc, Me.Txt, CInt(5), global_60, Shift, 0, 1)
  loc_13ACA8F:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13ACA96:       Set var_98 = Me.DGLedgerAc
  loc_13ACAB5:       Proc_6_138_106E830(var_98, global_60, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_13ACAC3:     End If
  loc_13ACAC6:   Else
  loc_13ACACE:     If (var_86 = CInt(6)) Then
  loc_13ACADC:       Set var_A8 = Me.Txt
  loc_13ACAEE:       Set var_A0 = Me.FGPoint
  loc_13ACB2B:       Proc_6_69_134A630(Me.DGTaxStru, var_A8, CInt(6), global_64, Shift, 0, 1, Nothing)
  loc_13ACB4A:       var_AC = Me.RecordCount
  loc_13ACB9A:       If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13ACBA8:         Set var_90 = Me.FGPoint
  loc_13ACBC0:         Proc_6_138_106E830(Me.DGTaxStru, global_64, KeyCode, var_90, var_A0, 0)
  loc_13ACBCE:       End If
  loc_13ACBD1:     Else
  loc_13ACBD9:       If (var_86 = CInt(2)) Then
  loc_13ACBFE:         Set var_8C = Me.Txt
  loc_13ACC04:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_13ACC0C:         1 = var_90.Left
  loc_13ACC1E:         Set var_98 = Me.Txt
  loc_13ACC24:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_13ACC2C:         var_98 = var_A0.Top
  loc_13ACC3E:         Set var_A4 = Me.Txt
  loc_13ACC44:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_BC)
  loc_13ACC4C:         0 = var_A8.Height
  loc_13ACC5E:         Set var_B4 = Me.Txt
  loc_13ACC64:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_13ACCB4:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13ACCE5:         Set var_8C = Me.Txt
  loc_13ACCEB:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E0, CInt(var_AC))
  loc_13ACCF3:         CInt((var_B8 + var_BC)) = var_90.Text
  loc_13ACD0A:         If (var_E0 = "Fixed Charge") Then
  loc_13ACD1A:           Set var_8C = Me.Txt
  loc_13ACD20:           Call 0.Method_Txt_KeyDown0 (CInt(3), var_90, 0)
  loc_13ACD28:           var_90.Enabled = CInt(var_C0.Width)
  loc_13ACD42:           Set var_8C = Me.Txt
  loc_13ACD48:           Call 0.Method_Txt_KeyDown0 (CInt(9), var_90, "No")
  loc_13ACD50:           var_90.Text = 520
  loc_13ACD69:           Set var_8C = Me.Txt
  loc_13ACD6F:           Call 0.Method_Txt_KeyDown0 (CInt(9), var_90)
  loc_13ACD77:           var_90.Enabled = False
  loc_13ACD86:         Else
  loc_13ACD93:           Set var_8C = Me.Txt
  loc_13ACD99:           Call 0.Method_Txt_KeyDown0 (CInt(3), var_90)
  loc_13ACDA1:           var_90.Enabled = True
  loc_13ACDBB:           Set var_8C = Me.Txt
  loc_13ACDC1:           Call 0.Method_Txt_KeyDown0 (CInt(9), var_90)
  loc_13ACDC9:           var_90.Text = vbNullString
  loc_13ACDE2:           Set var_8C = Me.Txt
  loc_13ACDE8:           Call 0.Method_Txt_KeyDown0 (CInt(9), var_90)
  loc_13ACDF0:           var_90.Enabled = True
  loc_13ACDFC:         End If
  loc_13ACDFF:       Else
  loc_13ACE07:         If (var_86 = CInt(7)) Then
  loc_13ACE17:           Set var_8C = Me.Txt
  loc_13ACE1D:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_13ACE3C:           If (var_90.Text = "Yes") Then
  loc_13ACE4C:             Set var_8C = Me.Txt
  loc_13ACE52:             Call 0.Method_Txt_KeyDown0 (CInt(8), var_90)
  loc_13ACE5A:             var_90.Enabled = True
  loc_13ACE69:           Else
  loc_13ACE76:             Set var_8C = Me.Txt
  loc_13ACE7C:             Call 0.Method_Txt_KeyDown0 (CInt(8), var_90)
  loc_13ACE84:             var_90.Enabled = False
  loc_13ACE90:           End If
  loc_13ACE93:         Else
  loc_13ACE9B:           If (var_86 = CInt(3)) Then
  loc_13ACEC0:             Set var_8C = Me.Txt
  loc_13ACEC6:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_13ACECE:             var_AC = var_90.Left
  loc_13ACEE0:             Set var_98 = Me.Txt
  loc_13ACEE6:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0)
  loc_13ACEEE:             var_B8 = var_A0.Top
  loc_13ACF00:             Set var_A4 = Me.Txt
  loc_13ACF06:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_13ACF0E:             var_BC = var_A8.Height
  loc_13ACF20:             Set var_B4 = Me.Txt
  loc_13ACF26:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_13ACF2E:             var_C4 = var_C0.Width
  loc_13ACF76:             Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13ACF9D:           Else
  loc_13ACFA5:             If (var_86 = CInt(8)) Then
  loc_13ACFCA:               Set var_8C = Me.Txt
  loc_13ACFD0:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_13ACFD8:               CInt((var_B8 + var_BC)) = var_90.Left
  loc_13ACFEA:               Set var_98 = Me.Txt
  loc_13ACFF0:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_13ACFF8:               CInt(var_C4) = var_A0.Top
  loc_13AD00A:               Set var_A4 = Me.Txt
  loc_13AD010:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_BC)
  loc_13AD018:               520 = var_A8.Height
  loc_13AD02A:               Set var_B4 = Me.Txt
  loc_13AD030:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_13AD038:               var_C4 = var_C0.Width
  loc_13AD080:               Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13AD0A4:             End If
  loc_13AD0A4:           End If
  loc_13AD0A4:         End If
  loc_13AD0A4:       End If
  loc_13AD0A4:     End If
  loc_13AD0A4:   End If
  loc_13AD0A4: End If
  loc_13AD0DB: var_110 = Me.DGTaxStru.Visible
  loc_13AD115: If ((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGLedgerAc.Visible) = 0)) And (CBool(var_110) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_13AD136:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HA))) Then
  loc_13AD170:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_160) = 6) Then
  loc_13AD173:       Call TopCtrl1_UnknownEvent_16()
  loc_13AD178:     End If
  loc_13AD178:     Exit Sub
  loc_13AD179:   End If
  loc_13AD18E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13AD197:     Proc_6_75_E5335C(Shift, arg_14, CInt(var_AC), CInt((var_B8 + var_BC)))
  loc_13AD19C:   End If
  loc_13AD1AF:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_13AD1B8:     Proc_6_76_E533C8(Shift, arg_14, CInt(var_C4))
  loc_13AD1BD:   End If
  loc_13AD1BD: End If
  loc_13AD1BD: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1052C84
  'Data Table: 4A0CD0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_1052A22: Proc_6_133_E7FB08(var_94)
  loc_1052A2B: arg_10 = CInt(var_94)
  loc_1052A34: Proc_6_58_E06050(arg_10, arg_10)
  loc_1052A3C: var_96 = KeyAscii
  loc_1052A47: If (var_96 = CInt(5)) Then
  loc_1052A66:   If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_1052A78:     var_A0 = "Name"
  loc_1052A93:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10)
  loc_1052AC5:     Proc_6_138_106E830(Me.DGLedgerAc, global_60, KeyAscii, Me.FGPoint)
  loc_1052AD3:   End If
  loc_1052AD6: Else
  loc_1052ADE:   If (var_96 = CInt(6)) Then
  loc_1052AFD:     If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_1052B0F:       var_A0 = "Name"
  loc_1052B2A:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, var_A0)
  loc_1052B44:       Set var_A8 = Me.FGPoint
  loc_1052B5C:       Proc_6_138_106E830(Me.DGTaxStru, global_64, KeyAscii, var_A8, 0)
  loc_1052B6A:     End If
  loc_1052B6D:   Else
  loc_1052B75:     If (var_96 = CInt(4)) Then
  loc_1052B82:       Set var_9C = Me.Txt
  loc_1052B88:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_1052BA3:       Proc_6_42_129B55C(var_A8, arg_10, 8, 2)
  loc_1052BB2:     Else
  loc_1052BBA:       If Not (var_96 = CInt(7)) Then
  loc_1052BC5:         If Not (var_96 = CInt(9)) Then
  loc_1052BD0:           If (var_96 = CInt(&HA)) Then
  loc_1052BD3:           End If
  loc_1052BD3:         End If
  loc_1052BFC:         If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1052C0C:           Set var_9C = Me.Txt
  loc_1052C12:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_1052C1A:           var_A8.Text = 0
  loc_1052C29:         Else
  loc_1052C52:           If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1052C62:             Set var_9C = Me.Txt
  loc_1052C68:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_1052C70:             var_A8.Text = var_96
  loc_1052C7C:           End If
  loc_1052C7C:         End If
  loc_1052C7E:         arg_10 = 0
  loc_1052C81:       End If
  loc_1052C81:     End If
  loc_1052C81:   End If
  loc_1052C81: End If
  loc_1052C81: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F33830
  'Data Table: 4A0CD0
  Dim var_86 As Integer
  loc_F3371F: var_86 = KeyCode
  loc_F3372A: If (var_86 = CInt(0)) Then
  loc_F33749:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F33756:     var_A0 = "Name"
  loc_F33771:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_56)
  loc_F337A3:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_F337B1:   End If
  loc_F337B4: Else
  loc_F337BC:   If Not (var_86 = CInt(2)) Then
  loc_F337C7:     If Not (var_86 = CInt(3)) Then
  loc_F337D2:       If (var_86 = CInt(8)) Then
  loc_F337D5:       End If
  loc_F337D5:     End If
  loc_F337F0:     If (Me.FrmList.Visible = &HFF) Then
  loc_F3381F:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F3382F:     End If
  loc_F3382F:   End If
  loc_F3382F: End If
  loc_F3382F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E506C4
  'Data Table: 4A0CD0
  loc_E506A2: Set var_88 = Me.Txt
  loc_E506A8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E506B6: Proc_6_73_E23294(var_8C)
  loc_E506C2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '123C670
  'Data Table: 4A0CD0
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_123C13C: On Error Goto loc_123C62C
  loc_123C142: var_86 = Cancel
  loc_123C14D: If (var_86 = CInt(0)) Then
  loc_123C153:   Call Proc_324_35_108638C(var_88)
  loc_123C15E:   If (var_88 = &HFF) Then
  loc_123C163:     arg_10 = &HFF
  loc_123C166:     Exit Sub
  loc_123C167:   End If
  loc_123C16A: Else
  loc_123C172:   If (var_86 = CInt(1)) Then
  loc_123C178:     Call Proc_324_36_10B1C80(var_88, arg_10)
  loc_123C183:     If (var_88 = &HFF) Then
  loc_123C188:       arg_10 = &HFF
  loc_123C18B:       Exit Sub
  loc_123C18C:     End If
  loc_123C18F:   Else
  loc_123C197:     If (var_86 = CInt(5)) Then
  loc_123C1E8:       Set var_94 = Me.Txt
  loc_123C1EE:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_123C1F6:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_123C20E:       If (arg_10 Or (var_9C = vbNullString)) Then
  loc_123C211:         Exit Sub
  loc_123C212:       End If
  loc_123C24D:       Set var_B0 = Me.Txt
  loc_123C253:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_123C25B:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_123C28E:       var_98 = Me.Fields.Item("Code")
  loc_123C29F:       var_9C = CStr(var_98.Value)
  loc_123C2AC:       Set var_B0 = Me.Txt
  loc_123C2B2:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_123C2BA:       var_B4.Tag = var_9C
  loc_123C2D3:     Else
  loc_123C2DB:       If (var_86 = CInt(6)) Then
  loc_123C32C:         Set var_94 = Me.Txt
  loc_123C332:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_123C33A:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_123C352:         If (var_86 Or (var_9C = vbNullString)) Then
  loc_123C362:           Set var_94 = Me.Txt
  loc_123C368:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_123C370:           var_98.Tag = vbNullString
  loc_123C37C:           Exit Sub
  loc_123C37D:         End If
  loc_123C3B8:         Set var_B0 = Me.Txt
  loc_123C3BE:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_123C3C6:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_123C3F9:         var_98 = Me.Fields.Item("Code")
  loc_123C417:         Set var_B0 = Me.Txt
  loc_123C41D:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_123C425:         var_B4.Tag = CStr(var_98.Value)
  loc_123C43E:       Else
  loc_123C446:         If (var_86 = CInt(4)) Then
  loc_123C453:           Set var_94 = Me.Txt
  loc_123C459:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_123C485:           var_9C = CStr(Format(CVar(var_98), "0.00"))
  loc_123C493:           Set var_B0 = Me.Txt
  loc_123C499:           Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_9C)
  loc_123C4A1:           var_B4.Text = 1
  loc_123C4BE:         Else
  loc_123C4C6:           If Not (var_86 = CInt(2)) Then
  loc_123C4D1:             If Not (var_86 = CInt(3)) Then
  loc_123C4DC:               If (var_86 = CInt(8)) Then
  loc_123C4DF:               End If
  loc_123C4DF:             End If
  loc_123C4EC:             Set var_94 = Me.Txt
  loc_123C4F2:             Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_123C4FA:             1 = var_98.Text
  loc_123C511:             If (var_9C <> vbNullString) Then
  loc_123C52C:               Set var_98 = Me.ListView.SelectedItem
  loc_123C532:               var_9C = var_98.Text
  loc_123C544:               Set var_B0 = Me.Txt
  loc_123C54A:               Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_123C552:               var_B4.Text = var_9C
  loc_123C568:             End If
  loc_123C56B:           Else
  loc_123C573:             If Not (var_86 = CInt(&HA)) Then
  loc_123C57E:               If Not (var_86 = CInt(7)) Then
  loc_123C589:                 If (var_86 = CInt(9)) Then
  loc_123C58C:                 End If
  loc_123C58C:               End If
  loc_123C596:               Set var_94 = Me.Txt
  loc_123C59C:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_123C5BB:               var_E4 = Ucase(Left(CVar(var_98), 1))
  loc_123C5D7:               If (var_E4 = "Y") Then
  loc_123C5E7:                 Set var_94 = Me.Txt
  loc_123C5ED:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_123C5F5:                 var_98.Text = "Yes"
  loc_123C604:               Else
  loc_123C611:                 Set var_94 = Me.Txt
  loc_123C617:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_123C61F:                 var_98.Text = "No"
  loc_123C62B:               End If
  loc_123C62B:             End If
  loc_123C62B:           End If
  loc_123C62B:         End If
  loc_123C62B:       End If
  loc_123C62B:     End If
  loc_123C62B:   End If
  loc_123C62B: End If
  loc_123C62B: Exit Sub
  loc_123C62C: ' Referenced from: 123C13C
  loc_123C634: Set var_94 = Err()
  loc_123C63A: Call 0.Method_arg_2C (var_9C)
  loc_123C65B: MsgBox(CVar(var_9C), &H40, "Information", var_E4, var_F4)
  loc_123C66E: Exit Sub
  loc_123C66F: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC6214
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC618A: On Error Goto loc_EC61CF
  loc_EC6193: Me.MoveFirst
  loc_EC61AD: var_8C = "code='" & MyValue
  loc_EC61BD: Me.Find var_8C & "'", 0, 1
  loc_EC61C9: Call Proc_324_34_13C92C0(var_A0)
  loc_EC61CE: Exit Sub
  loc_EC61CF: ' Referenced from: EC618A
  loc_EC61D7: Set var_A4 = Err()
  loc_EC61DD: Call 0.Method_arg_2C (var_8C)
  loc_EC61FE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC6211: Exit Sub
  loc_EC6212: Exit Sub
End Sub

Public Sub Proc_324_32_E7824C(arg_C) 'E7824C
  'Data Table: 4A0CD0
  Dim var_98 As TextBox
  loc_E781FA: Set var_8C = Me.Txt
  loc_E78200: Call 0.Method_Proc_324_32_E7824CC (var_8E, var_86)
  loc_E78210: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78226:   Set var_8C = Me.Txt
  loc_E7822C:   Call 0.Method_Proc_324_32_E7824C0 (CInt(var_86), var_98)
  loc_E78234:   var_98.Enabled = arg_C
  loc_E78243: Next var_92 'Byte
  loc_E78249: Exit Sub
End Sub

Public Sub Proc_324_33_E782E4
  'Data Table: 4A0CD0
  Dim var_98 As TextBox
  loc_E78292: Set var_8C = Me.Txt
  loc_E78298: Call 0.Method_Proc_324_33_E782E4C (var_8E, var_86)
  loc_E782A8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E782BE:   Set var_8C = Me.Txt
  loc_E782C4:   Call 0.Method_Proc_324_33_E782E40 (CInt(var_86), var_98)
  loc_E782CC:   var_98.Text = vbNullString
  loc_E782DB: Next var_92 'Byte
  loc_E782E1: Exit Sub
End Sub

Public Sub Proc_324_34_13C92C0
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_BC As TextBox
  Dim var_B8 As Fields15
  Dim var_1C8 As Variant
  loc_13C8960: On Error Goto loc_13C927B
  loc_13C8969: Proc_183_45_E5CCA8(global_52)
  loc_13C8985: If (Me.RecordCount <= 0) Then
  loc_13C8988:   Call Proc_324_33_E782E4()
  loc_13C8990: Else
  loc_13C89C4:   global_72 = CStr(Me.Fields.Item("Name").Value)
  loc_13C8A11:   Set var_B8 = Me.Txt
  loc_13C8A17:   Call 0.Method_Proc_324_34_13C92C00 (CInt(0), var_BC)
  loc_13C8A1F:   var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C8A71:   Set var_B8 = Me.Txt
  loc_13C8A77:   Call 0.Method_Proc_324_34_13C92C00 (CInt(0), var_BC)
  loc_13C8A7F:   var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_13C8AD1:   Set var_B8 = Me.Txt
  loc_13C8AD7:   Call 0.Method_Proc_324_34_13C92C00 (CInt(1), var_BC)
  loc_13C8ADF:   var_BC.Text = CStr(Me.Fields.Item("ShortName").Value)
  loc_13C8B2E:   Set var_B8 = Me.Txt
  loc_13C8B34:   Call 0.Method_Proc_324_34_13C92C00 (CInt(&HB), var_BC)
  loc_13C8B3C:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("SACCode")))
  loc_13C8B8C:   Set var_B8 = Me.Txt
  loc_13C8B92:   Call 0.Method_Proc_324_34_13C92C00 (CInt(2), var_BC)
  loc_13C8B9A:   var_BC.Text = CStr(Me.Fields.Item("ChargeType").Value)
  loc_13C8BEC:   Set var_B8 = Me.Txt
  loc_13C8BF2:   Call 0.Method_Proc_324_34_13C92C00 (CInt(3), var_BC)
  loc_13C8BFA:   var_BC.Text = CStr(Me.Fields.Item("ChargeUnit").Value)
  loc_13C8C65:   Set var_B8 = Me.Txt
  loc_13C8C6B:   Call 0.Method_Proc_324_34_13C92C00 (CInt(4), var_BC, CStr(Format(CVar(Me.Fields.Item("UnitRate")), "0.00")))
  loc_13C8C73:   var_BC.Text = 1
  loc_13C8CC6:   Set var_B8 = Me.Txt
  loc_13C8CCC:   Call 0.Method_Proc_324_34_13C92C00 (CInt(5), var_BC)
  loc_13C8CD4:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LedgerName")))
  loc_13C8D21:   Set var_B8 = Me.Txt
  loc_13C8D27:   Call 0.Method_Proc_324_34_13C92C00 (CInt(5), var_BC)
  loc_13C8D2F:   var_BC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("LedgerCode")))
  loc_13C8D7C:   Set var_B8 = Me.Txt
  loc_13C8D82:   Call 0.Method_Proc_324_34_13C92C00 (CInt(6), var_BC)
  loc_13C8D8A:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxName")))
  loc_13C8DD7:   Set var_B8 = Me.Txt
  loc_13C8DDD:   Call 0.Method_Proc_324_34_13C92C00 (CInt(6), var_BC)
  loc_13C8DE5:   var_BC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxCode")))
  loc_13C8E67:   Set var_B8 = Me.Txt
  loc_13C8E6D:   Call 0.Method_Proc_324_34_13C92C00 (CInt(7), var_BC)
  loc_13C8E75:   var_BC.Text = CStr(IIf((Me.Fields.Item("RoundOff").Value = "Y"), "Yes", "No"))
  loc_13C8ECE:   Set var_B8 = Me.Txt
  loc_13C8ED4:   Call 0.Method_Proc_324_34_13C92C00 (CInt(8), var_BC)
  loc_13C8EDC:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ROffType")))
  loc_13C8F5E:   Set var_B8 = Me.Txt
  loc_13C8F64:   Call 0.Method_Proc_324_34_13C92C00 (CInt(9), var_BC)
  loc_13C8F6C:   var_BC.Text = CStr(IIf((Me.Fields.Item("MeterReading").Value = "Y"), "Yes", "No"))
  loc_13C8FFA:   Set var_B8 = Me.Txt
  loc_13C9000:   Call 0.Method_Proc_324_34_13C92C00 (CInt(&HA), var_BC)
  loc_13C9008:   var_BC.Text = CStr(IIf((Me.Fields.Item("ActiveYN").Value = "Y"), "Yes", "No"))
  loc_13C90D1:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_13C9119:   Me.LblUser.Caption = CStr(1 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_Name")), var_180)))
  loc_13C91B2:   var_10C = "entdt :   "
  loc_13C91BD:   var_EC = "Last Update :   "
  loc_13C91EB:   var_B4 = Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE")))
  loc_13C9230:   var_1C8 = IIf((var_B4 = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), var_EC, var_10C)) & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_EntDt")))) 
  loc_13C9242:   Me.LblLDt.Caption = CStr(var_1C8)
  loc_13C927A: End If
  loc_13C927A: Exit Sub
  loc_13C927B: ' Referenced from: 13C8960
  loc_13C9283: Set var_8C = Err()
  loc_13C9289: Call 0.Method_arg_2C (var_B4)
  loc_13C92AA: MsgBox(CVar(var_B4), &H40, "Information", var_EC, var_10C)
  loc_13C92BD: Exit Sub
End Sub

Public Sub Proc_324_35_108638C
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4A0CE4 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108611F: If (Me.RecordCount = 0) Then
  loc_1086122:   Proc_324_35_108638C = 
  loc_1086128: End If
  loc_108612C: Set var_90 = Me.TopCtrl1
  loc_1086132: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_108614B: If (CStr() = "Add") Then
  loc_1086189:   Set var_90 = Me.Txt
  loc_108618F:   Call 0.Method_Proc_324_35_108638C0 (CInt(0), var_A8, var_AC, "Select Count(*) From FacilityMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10861B0:   unk_4A0CE4.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_10861C0:    = var_D0.Item()
  loc_10861C8:    = var_E4.Value
  loc_10861F9:   If (var_A8.Text.Fields > 0) Then
  loc_1086217:     var_A0 = "Duplicate Name"
  loc_108621D:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1086238:     Set var_90 = Me.Txt
  loc_108623E:     Call 0.Method_Proc_324_35_108638C0 (CInt(0))
  loc_1086246:     var_A8.SetFocus
  loc_1086257:     Proc_324_35_108638C = &HFF
  loc_108625D:   End If
  loc_1086260: Else
  loc_108629B:   Set var_90 = Me.Txt
  loc_10862A1:   Call 0.Method_Proc_324_35_108638C0 (CInt(0), var_A8, var_AC, "Select Count(*) From FacilityMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10862D3:   unk_4A0CE4.Execute var_D0 & var_AC & "' And Name<>'" & global_72 & "'", 0, var_E4
  loc_10862E3:    = var_D0.Item(var_A8)
  loc_10862EB:    = var_E4.Value
  loc_1086320:   If (var_A8.Text.Fields > 0) Then
  loc_1086344:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108635F:     Set var_90 = Me.Txt
  loc_1086365:     Call 0.Method_Proc_324_35_108638C0 (CInt(0))
  loc_108636D:     var_A8.SetFocus
  loc_108637E:     Proc_324_35_108638C = &HFF
  loc_1086384:   End If
  loc_1086384: End If
  loc_1086384: Proc_324_35_108638C = var_A8
End Sub

Public Sub Proc_324_36_10B1C80
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_A8 As TextBox
  Dim var_B8 As String
  Dim unk_4A0CE4 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_144 As Fields15
  Dim var_148 As Field20
  loc_10B19EF: If (Me.RecordCount = 0) Then
  loc_10B19F2:   Proc_324_36_10B1C80 = 
  loc_10B19F8: End If
  loc_10B19FC: Set var_90 = Me.TopCtrl1
  loc_10B1A02: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10B1A1B: If (CStr() = "Add") Then
  loc_10B1A59:   Set var_90 = Me.Txt
  loc_10B1A5F:   Call 0.Method_Proc_324_36_10B1C800 (CInt(1), var_A8, var_AC, "Select Count(*) From FacilityMast Where LogSite_Code='" & MemVar_1F95078 & "' and ShortName='", var_A0, -1)
  loc_10B1A77:   var_B8 = var_D0 & var_AC & "'"
  loc_10B1A80:   unk_4A0CE4.Execute var_B8, 0, var_E4
  loc_10B1A90:    = var_D0.Item()
  loc_10B1A98:    = var_E4.Value
  loc_10B1AC9:   If (var_A8.Text.Fields > 0) Then
  loc_10B1AD7:     var_F4 = "Information"
  loc_10B1AE7:     var_A0 = "Duplicate Short Name"
  loc_10B1AED:     MsgBox(var_A0, &H40, var_F4, var_114, var_134)
  loc_10B1B08:     Set var_90 = Me.Txt
  loc_10B1B0E:     Call 0.Method_Proc_324_36_10B1C800 (CInt(1))
  loc_10B1B16:     var_A8.SetFocus
  loc_10B1B27:     Proc_324_36_10B1C80 = &HFF
  loc_10B1B2D:   End If
  loc_10B1B30: Else
  loc_10B1B36:   var_E0 = 0
  loc_10B1B6B:   Set var_90 = Me.Txt
  loc_10B1B71:   Call 0.Method_Proc_324_36_10B1C800 (CInt(1), var_A8, var_AC, "Select Count(*) From FacilityMast Where LogSite_Code='" & MemVar_1F95078 & "' and ShortName='", var_A0, -1)
  loc_10B1B9A:   Set var_CC = Me.Txt
  loc_10B1BA0:   Call 0.Method_Proc_324_36_10B1C800 (CInt(0), var_D0, var_B8, var_144 & var_AC & "' And Code<>'")
  loc_10B1BA8:   var_E0 = var_D0.Tag
  loc_10B1BC1:   unk_4A0CE4.Execute var_148 & var_B8 & "'", var_F4, var_A8
  loc_10B1BC9:    = var_A8.Text.Fields
  loc_10B1BD1:    = var_144.Item()
  loc_10B1BD9:    = var_148.Value
  loc_10B1C14:   If (var_F4 > 0) Then
  loc_10B1C38:     MsgBox("Duplicate Short Name", &H40, "Information", var_114, var_134)
  loc_10B1C53:     Set var_90 = Me.Txt
  loc_10B1C59:     Call 0.Method_Proc_324_36_10B1C800 (CInt(1))
  loc_10B1C61:     var_A8.SetFocus
  loc_10B1C72:     Proc_324_36_10B1C80 = &HFF
  loc_10B1C78:   End If
  loc_10B1C78: End If
  loc_10B1C78: Proc_324_36_10B1C80 = var_A8
End Sub

Public Sub Proc_324_37_F200C4
  'Data Table: 4A0CD0
  loc_F1FFD4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F1FFE6:   Me.DGHelp.Visible = False
  loc_F1FFEE: End If
  loc_F2000A: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_F2001C:   Me.DGLedgerAc.Visible = False
  loc_F20024: End If
  loc_F20040: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F20052:   Me.DGTaxStru.Visible = False
  loc_F2005A: End If
  loc_F20075: If (Me.FrmList.Visible = &HFF) Then
  loc_F20084:   Me.FrmList.Visible = False
  loc_F2008C: End If
  loc_F200A8: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F200BA:   Me.FGPoint.Visible = False
  loc_F200C2: End If
  loc_F200C2: Exit Sub
End Sub

Public Sub Proc_324_38_100A810
  'Data Table: 4A0CD0
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_100A60E: Set var_88 = Me.Txt
  loc_100A614: Call 0.Method_Proc_324_38_100A8100 (CInt(0), var_8C)
  loc_100A633: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_100A64F: Set var_B4 = Me.Txt
  loc_100A655: Call 0.Method_Proc_324_38_100A8100 (CInt(0), var_B8)
  loc_100A670: Set var_88 = Me.Txt
  loc_100A676: Call 0.Method_Proc_324_38_100A8100 (CInt(0), var_8C)
  loc_100A68E: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_100A69D: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_100A6BD: Set var_88 = Me.Txt
  loc_100A6C3: Call 0.Method_Proc_324_38_100A8100 (CInt(5), var_8C)
  loc_100A6E2: Me.DGLedgerAc.Left = CVar(var_8C.Left)
  loc_100A6FE: Set var_B4 = Me.Txt
  loc_100A704: Call 0.Method_Proc_324_38_100A8100 (CInt(5), var_B8)
  loc_100A71F: Set var_88 = Me.Txt
  loc_100A725: Call 0.Method_Proc_324_38_100A8100 (CInt(5), var_8C)
  loc_100A73D: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_100A74C: Me.DGLedgerAc.Top = CVar(var_8C.Left)
  loc_100A76C: Set var_88 = Me.Txt
  loc_100A772: Call 0.Method_Proc_324_38_100A8100 (CInt(6), var_8C)
  loc_100A791: Me.DGTaxStru.Left = CVar(var_8C.Left)
  loc_100A7AD: Set var_B4 = Me.Txt
  loc_100A7B3: Call 0.Method_Proc_324_38_100A8100 (CInt(6), var_B8)
  loc_100A7CE: Set var_88 = Me.Txt
  loc_100A7D4: Call 0.Method_Proc_324_38_100A8100 (CInt(6), var_8C)
  loc_100A7EC: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_100A7FB: Me.DGTaxStru.Top = CVar(var_8C.Left)
  loc_100A80D: Exit Sub
  loc_100A80E: CopyBytes 22783
End Sub
