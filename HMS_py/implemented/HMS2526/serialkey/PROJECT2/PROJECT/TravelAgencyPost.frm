VERSION 5.00
Begin VB.Form TravelAgencyPost
  Caption = "Travel Agency Posting"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11670
  ClientHeight = 7185
  LockControls = -1  'True
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin CommandButton CmdFill
    Caption = "&Fill"
    Left = 7140
    Top = 630
    Width = 1125
    Height = 780
    TabIndex = 6
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGTravel
    Left = 5985
    Top = 2775
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 0
    Left = 6540
    Top = 645
    Width = 420
    Height = 255
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 21
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
    Left = 1560
    Top = 630
    Width = 1155
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 8
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 2865
    Top = 4545
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    Left = 1560
    Top = 900
    Width = 3990
    Height = 240
    TabIndex = 3
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
    Index = 5
    Left = 4260
    Top = 1155
    Width = 1290
    Height = 240
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 11
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
    Left = 4305
    Top = 645
    Width = 1245
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 4
    Left = 1560
    Top = 1155
    Width = 1290
    Height = 240
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11670
    Height = 375
    TabIndex = 0
  End
  Begin MSHFlexGrid FGrid
    Left = -45
    Top = 1635
    Width = 11700
    Height = 4830
    TabIndex = 10
  End
  Begin Label Label1
    Caption = "DOC ID"
    Index = 7
    ForeColor = &H0&
    Left = 5775
    Top = 660
    Width = 615
    Height = 240
    Visible = 0   'False
    TabIndex = 17
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
    Caption = "Sr.No"
    Index = 1
    ForeColor = &H0&
    Left = 285
    Top = 630
    Width = 480
    Height = 240
    TabIndex = 16
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 2775
    Top = 630
    Width = 690
    Height = 240
    TabIndex = 15
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Date"
    Index = 2
    ForeColor = &H0&
    Left = 3540
    Top = 630
    Width = 390
    Height = 240
    TabIndex = 14
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
    Caption = "Travel Agency"
    Index = 5
    ForeColor = &H0&
    Left = 285
    Top = 900
    Width = 1215
    Height = 240
    TabIndex = 13
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
    Caption = "To Date"
    Index = 4
    ForeColor = &H0&
    Left = 3540
    Top = 1200
    Width = 675
    Height = 240
    TabIndex = 12
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
    Caption = "From Date"
    Index = 1
    ForeColor = &H0&
    Left = 285
    Top = 1185
    Width = 900
    Height = 240
    TabIndex = 11
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
End

Attribute VB_Name = "TravelAgencyPost"

Private global_64 As Integer
Private global_72 As Integer
Private global_74 As Integer

Private Sub TopCtrl1_UnknownEvent_11 'EB1CC0
  'Data Table: 47CDE4
  Dim var_94 As TextBox
  loc_EB1C2C: On Error Goto loc_EB1CB8
  loc_EB1C52: Call Proc_78_41_E79D9C(Proc_5_1_100EC1C("ADD", Me))
  loc_EB1C5D: Call Proc_78_39_F1CE8C(global_52)
  loc_EB1C75: Set var_8C = Me.Txt
  loc_EB1C7B: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_94)
  loc_EB1C83: var_94.Text = CStr(MemVar_1F950EC)
  loc_EB1C9D: Set var_8C = Me.Txt
  loc_EB1CA3: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2))
  loc_EB1CAB: var_94.SetFocus
  loc_EB1CB7: Exit Sub
  loc_EB1CB8: ' Referenced from: EB1C2C
  loc_EB1CB8: Proc_6_60_E63754(var_94)
  loc_EB1CBD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E819C4
  'Data Table: 47CDE4
  loc_E81968: On Error Goto loc_E8197E
  loc_E81979: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_E8197C:   Exit Sub
  loc_E8197D: End If
  loc_E8197D: Exit Sub
  loc_E8197E: ' Referenced from: E81968
  loc_E81986: Set var_88 = Err()
  loc_E8198C: Call 0.Method_arg_2C (var_8C)
  loc_E819AD: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_DC, var_FC)
  loc_E819C0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '125265C
  'Data Table: 47CDE4
  Dim var_96 As Integer
  Dim unk_47CDF6 As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_130 As String
  Dim var_B8 As Variant
  loc_125212C: On Error Goto loc_1252602
  loc_125213D: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_1252140:   Exit Sub
  loc_1252141: End If
  loc_1252178: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_1252189:   unk_47CDF6.BeginTrans var_11C
  loc_125219F:   var_94 = Me.Bookmark 'Variant
  loc_12521C1:   Set var_120 = Me.Txt
  loc_12521C7:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124, var_128, "Delete From Travel1 Where DocID='")
  loc_12521CF:   var_B8 = var_124.Text
  loc_12521D8:   var_12C = -1 & var_128
  loc_12521E8:   unk_47CDF6.Execute var_12C & "'", var_134, &HFF
  loc_1252210:   Set var_120 = Me.Txt
  loc_1252216:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124)
  loc_1252228:   var_168 = 0
  loc_125223B:   var_160 = 0
  loc_1252246:   var_15C = 0
  loc_1252277:   var_148 = 0
  loc_12522B6:   var_128 = "Travel1"
  loc_12522BF:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "DocID", &HC8, var_124.Text, 0, 0, 0)
  loc_1252302:   Set var_120 = Me.Txt
  loc_1252308:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124, var_128, "Delete From Travel2 Where DocID='", var_B8, -1, var_134)
  loc_1252310:   var_148 = var_124.Text
  loc_1252320:   var_130 = 0 & var_128 & "'"
  loc_1252329:   unk_47CDF6.Execute var_130, 0, 0
  loc_1252351:   Set var_120 = Me.Txt
  loc_1252357:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124, var_130)
  loc_125235F:   0 = var_124.Text
  loc_1252369:   var_168 = 0
  loc_125237C:   var_160 = 0
  loc_1252387:   var_15C = 0
  loc_12523B8:   var_148 = 0
  loc_12523F7:   var_128 = "Travel2"
  loc_1252400:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "DocID", &HC8, var_130, 0, 0, 0)
  loc_1252443:   Set var_120 = Me.Txt
  loc_1252449:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124, var_128, "Delete From Ledger Where DocID='", var_B8, -1, var_134)
  loc_1252451:   var_148 = var_124.Text
  loc_1252461:   var_130 = 0 & var_128 & "'"
  loc_125246A:   unk_47CDF6.Execute var_130, 0, 0
  loc_1252492:   Set var_120 = Me.Txt
  loc_1252498:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124, var_130)
  loc_12524A0:   0 = var_124.Text
  loc_12524AA:   var_168 = 0
  loc_12524BD:   var_160 = 0
  loc_12524C8:   var_15C = 0
  loc_12524DB:   var_154 = 0
  loc_12524E6:   var_150 = 0
  loc_12524F9:   var_148 = 0
  loc_1252538:   var_128 = "Ledger"
  loc_1252541:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "DocID", &HC8, var_130, 0, 0, 0)
  loc_125256C:   unk_47CDF6.CommitTrans
  loc_1252573:   var_96 = 0
  loc_1252581:   Me.Requery -1
  loc_12525A1:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12525AE:     Me.Bookmark = var_94
  loc_12525B6:   Else
  loc_12525CA:     If (Me.EOF = 0) Then
  loc_12525D3:       Me.MoveLast
  loc_12525D8:     End If
  loc_12525D8:   End If
  loc_12525D8:   Call Proc_78_40_137E428(var_96, var_148, 0, var_150, var_154)
  loc_12525F9:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_1252601: End If
  loc_1252601: Exit Sub
  loc_1252602: ' Referenced from: 125212C
  loc_1252608: If (var_96 = &HFF) Then
  loc_1252611:   unk_47CDF6.RollbackTrans
  loc_1252616: End If
  loc_125261E: Set var_120 = Err()
  loc_1252624: Call 0.Method_arg_2C (var_128, 0, var_15C)
  loc_1252645: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_1252658: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E18A24
  'Data Table: 47CDE4
  loc_E18A19: Me.Global.Unload Me
  loc_E18A21: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E35EE8
  'Data Table: 47CDE4
  loc_E35ED8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35EE0: Call Proc_78_40_137E428(global_52)
  loc_E35EE5: Exit Sub
  loc_E35EE6: Set arg_6C00 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E35DC8
  'Data Table: 47CDE4
  loc_E35DB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35DC0: Call Proc_78_40_137E428(global_52)
  loc_E35DC5: Exit Sub
  loc_E35DC6: Set arg_6C00 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E35E28
  'Data Table: 47CDE4
  loc_E35E18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35E20: Call Proc_78_40_137E428(global_52)
  loc_E35E25: Exit Sub
  loc_E35E26: Set arg_6C00 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E35E88
  'Data Table: 47CDE4
  loc_E35E78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35E80: Call Proc_78_40_137E428(global_52)
  loc_E35E85: Exit Sub
  loc_E35E86: Set arg_6C00 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '15CBE60
  'Data Table: 47CDE4
  Dim var_86 As Integer
  Dim unk_47CDF6 As Connection15
  Dim var_A0 As Double
  Dim var_A8 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_D0 As Variant
  Dim var_100 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_14C As String
  Dim var_AC As Variant
  Dim var_174 As String
  Dim var_16C As Variant
  Dim var_178 As String
  Dim var_17C As String
  Dim var_120 As Variant
  Dim var_E0 As Variant
  Dim var_140 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1BC As Variant
  Dim var_110 As Variant
  Dim var_234 As Variant
  Dim var_23C As Variant
  Dim var_260 As Variant
  Dim var_2B0 As Variant
  Dim var_2C0 As Variant
  Dim var_320 As Variant
  Dim var_350 As Variant
  Dim var_380 As Variant
  Dim var_390 As Variant
  Dim var_6D8 As Double
  Dim var_168 As Variant
  Dim var_180 As TextBox
  Dim var_6E0 As Double
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_3D0 As Variant
  Dim var_1F0 As MSHFlexGrid
  Dim var_214 As Variant
  Dim var_414 As Variant
  Dim var_434 As Variant
  Dim var_1F4 As Variant
  Dim var_478 As Variant
  Dim var_498 As Variant
  Dim var_238 As MSHFlexGrid
  Dim var_700 As Double
  Dim var_708 As Double
  Dim var_3B8 As String
  Dim var_300 As Variant
  Dim var_240 As String
  Dim var_8C As Recordset15
  loc_15CAC3C: On Error Goto loc_15CBE44
  loc_15CAC4A: Set var_A4 = Me.Txt
  loc_15CAC50: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2))
  loc_15CAC79: If (Proc_6_27_EA61EC(var_A8, "Date") = 0) Then
  loc_15CAC7C:   Exit Sub
  loc_15CAC7D: End If
  loc_15CAC88: Set var_A4 = Me.Txt
  loc_15CAC8E: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A8)
  loc_15CAC96: var_B0 = "Vr No"
  loc_15CAC9F: Set var_AC = var_A8
  loc_15CACB7: If (Proc_6_27_EA61EC(var_AC, var_B0) = 0) Then
  loc_15CACBA:   Exit Sub
  loc_15CACBB: End If
  loc_15CACBE: Call Proc_78_44_10A6828(var_B2)
  loc_15CACC9: If (var_B2 = 0) Then
  loc_15CACCC:   Exit Sub
  loc_15CACCD: End If
  loc_15CACDB: unk_47CDF6.BeginTrans var_B8
  loc_15CAD04: Set var_A4 = Me.Txt
  loc_15CAD0A: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_B0, "Delete From Travel1 Where DocID='", var_E0)
  loc_15CAD12: -1 = var_A8.Text
  loc_15CAD2B: unk_47CDF6.Execute var_AC & var_B0 & "'", CDbl(0), &HFF
  loc_15CAD63: Set var_A4 = Me.Txt
  loc_15CAD69: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_B0, "Delete From Travel2 Where DocID='")
  loc_15CAD71: var_E0 = var_A8.Text
  loc_15CAD7A: var_BC = -1 & var_B0
  loc_15CAD8A: unk_47CDF6.Execute var_AC & var_B0 & "'", var_AC, var_A8
  loc_15CADC2: Set var_A4 = Me.Txt
  loc_15CADC8: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_B0, "Delete From Ledger Where DocID='")
  loc_15CADD0: var_E0 = var_A8.Text
  loc_15CADD9: var_BC = -1 & var_B0
  loc_15CADE9: unk_47CDF6.Execute var_AC & var_B0 & "'", var_AC, 
  loc_15CAE20: Proc_6_17_EAAE40(var_E0, MemVar_1F95078, "Select CommissionAc From Enviro Where CommissionAc IS NOT NULL AND CommissionAc<>'' AND LOGSITE_CODE=")
  loc_15CAE36: unk_47CDF6.Execute CStr(var_120 & var_E0), -1, var_A4
  loc_15CAE47: Set global_80 = var_A4
  loc_15CAE75: If (Me.RecordCount > 0) Then
  loc_15CAE95:   var_A8 = Me.Fields.Item("CommissionAc")
  loc_15CAEAC:   global_76 = CStr(var_A8.Value)
  loc_15CAEBD: End If
  loc_15CAEC8: If (global_76 = vbNullString) Then
  loc_15CAED6:   var_100 = "Information"
  loc_15CAEEC:   MsgBox("Please Set CommissionAC in Enviro", &H40, var_100, var_120, var_140)
  loc_15CAEFC:   Exit Sub
  loc_15CAEFD: End If
  loc_15CAF0B: var_BC = "Insert Into Travel1(DocID,VType,VPrefix,Site_Code,VNo,VDate," & "FromDate,ToDate,TravelAgency," & "U_Name,U_EntDt,U_AE,LogSite_Code) "
  loc_15CAF23: Set var_A4 = Me.Txt
  loc_15CAF29: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8)
  loc_15CAF31: var_C0 = var_A8.Text
  loc_15CAF91: Set var_168 = Me.Txt
  loc_15CAF97: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_16C)
  loc_15CAFB2: var_17C = var_BC & " Values('" & var_C0 & "','" & global_60 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "'," & CStr(Val(var_16C.Text))
  loc_15CAFC7: Set var_180 = Me.Txt
  loc_15CAFCD: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_184)
  loc_15CAFD5: var_E0 = CVar(var_184) 'Address
  loc_15CAFDC: Proc_6_7_F26918(var_100, var_E0)
  loc_15CB005: Set var_1A8 = Me.Txt
  loc_15CB00B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_1AC)
  loc_15CB01A: Proc_6_7_F26918(var_1CC, CVar(var_1AC))
  loc_15CB03A: Set var_1F0 = Me.Txt
  loc_15CB040: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_1F4)
  loc_15CB04F: Proc_6_7_F26918(var_214, CVar(var_1F4))
  loc_15CB072: Set var_238 = Me.Txt
  loc_15CB078: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_23C)
  loc_15CB080: var_240 = var_23C.Tag
  loc_15CB0A7: var_2C0 = CVar(var_17C & ",") & var_100 & "," & vbNullString & var_1CC & "," & var_214 & ",'" & CVar(var_240) & "'," & "'" & CVar(MemVar_1F950C8) 
  loc_15CB0C2: Proc_6_7_F26918(var_300, Date)
  loc_15CB18B: unk_47CDF6.Execute CStr(var_2C0 & "'," & var_300 & ",'" & "A" & "','" & CVar(MemVar_1F95078) & "')"), var_E0, -1
  loc_15CB1BB: For var_3B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_96 = var_3B4 'Integer
  loc_15CB1C5:   var_D0 = CVar(CLng(var_96)) 'Long
  loc_15CB1CD:   var_110 = CVar(CLng(2)) 'Long
  loc_15CB1ED:   var_120 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_15CB214:   Set var_A8 = Me.FGrid
  loc_15CB24E:   If CBool(CVar(CLng(8)) And (CStr(var_A8.TextMatrix)) = "Y")) Then
  loc_15CB25F:     Set var_A4 = Me.Txt
  loc_15CB265:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_C0, CVar(CLng(var_96)), (var_120 <> vbNullString))
  loc_15CB26D:     var_110 = var_A8.Text
  loc_15CB276:     var_D0 = CVar(CLng(var_96)) 'Long
  loc_15CB2A0:     var_6D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15CB2AA:     Set var_168 = Me.LblVPrefix
  loc_15CB2C3:     Set var_16C = Me.Txt
  loc_15CB2C9:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_180, var_240, var_6D8, CVar(CLng(0)))
  loc_15CB2DE:     var_6E0 = Val(var_240)
  loc_15CB2EC:     Set var_184 = Me.Txt
  loc_15CB2F2:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_1A8, var_6E0)
  loc_15CB2FA:     var_100 = CVar(var_1A8) 'Address
  loc_15CB301:     Proc_6_7_F26918(var_120, var_100, var_180.Text)
  loc_15CB30A:     var_2B0 = CVar(CLng(var_96)) 'Long
  loc_15CB312:     var_320 = CVar(CLng(1)) 'Long
  loc_15CB31B:     Set var_1AC = Me.FGrid
  loc_15CB331:     var_380 = CVar(CLng(var_96)) 'Long
  loc_15CB339:     var_3D0 = CVar(CLng(3)) 'Long
  loc_15CB348:     var_214 = Me.FGrid.TextMatrix)
  loc_15CB362:     var_414 = CVar(CLng(var_96)) 'Long
  loc_15CB36A:     var_434 = CVar(CLng(4)) 'Long
  loc_15CB373:     Set var_1F4 = Me.FGrid
  loc_15CB393:     var_478 = CVar(CLng(var_96)) 'Long
  loc_15CB39B:     var_498 = CVar(CLng(5)) 'Long
  loc_15CB3EE:     var_700 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15CB41F:     var_708 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15CB430:     Proc_6_7_F26918(var_5F8, Date, var_708, CVar(CLng(6)), CVar(CLng(var_96)), var_700, CVar(CLng(7)), CVar(CLng(var_96)))
  loc_15CB450:     var_BC = "Insert Into Travel2(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate," & "Guest,NoDays,RoomRate,Total,Commission,CommPer," & "U_Name,U_EntDt,U_AE,LogSite_Code) Values ("
  loc_15CB4A5:     var_3B8 = var_BC & "'" & var_C0 & "'," & CStr(var_6D8) & ",'" & global_60 & "','" & var_168.Caption & "','" & MemVar_1F95070 & "',"
  loc_15CB4D0:     var_1BC = CVar(var_3B8 & CStr(var_6E0) & ",") & var_120 & "," & "'" 
  loc_15CB503:     var_260 = var_1BC & CVar(CStr(var_1AC.TextMatrix))) & "'," & CVar(Val(CStr(var_214))) & "," & CVar(Val(CStr(var_1F4.TextMatrix)))) 
  loc_15CB52B:     var_300 = var_260 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_700) 
  loc_15CB551:     var_390 = var_300 & "," & CVar(var_708) & "," & "'" 
  loc_15CB5A7:     unk_47CDF6.Execute CStr(var_390 & CVar(MemVar_1F950C8) & "'," & var_5F8 & ",'" & "A" & "','" & CVar(MemVar_1F95078) & "')"), var_6CC, -1
  loc_15CB655:     var_D0 = CVar(CLng(var_96)) 'Long
  loc_15CB65D:     var_110 = CVar(CLng(7)) 'Long
  loc_15CB689:     var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_15CB695:   End If
  loc_15CB698: Next var_3B4 'Integer
  loc_15CB6AB: Set var_A4 = Me.Txt
  loc_15CB6B1: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8)
  loc_15CB6B9: var_B0 = var_A8.Text
  loc_15CB6CC: Set var_AC = Me.Txt
  loc_15CB6D2: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_168)
  loc_15CB707: Set var_180 = Me.Txt
  loc_15CB70D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_184)
  loc_15CB71C: Proc_6_7_F26918(var_100, CVar(var_184))
  loc_15CB72F: Set var_1A8 = Me.Txt
  loc_15CB735: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_1AC)
  loc_15CB73D: var_178 = var_1AC.Tag
  loc_15CB745: var_1A4 = CVar(var_178) 'String
  loc_15CB74B: Proc_6_17_EAAE40(var_1BC, var_1A4)
  loc_15CB75E: Proc_6_17_EAAE40(var_214, global_76)
  loc_15CB771: Set var_1F0 = Me.Txt
  loc_15CB777: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_1F4)
  loc_15CB787: Proc_6_104_ED68A8(var_300)
  loc_15CB7A0: var_BC = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,LogSite_COde) " & " VALUES ('"
  loc_15CB7E7: var_174 = var_BC & var_B0 & "',1,'" & global_60 & "'," & CStr(Val(var_168.Text)) & ",'" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070
  loc_15CB831: var_234 = CVar(var_174 & "',") & var_100 & "," & var_1BC & "," & CVar(CDbl(0)) & ",0," & var_214 & ",'Travel Agency Posting From Date " 
  loc_15CB884: var_350 = var_234 & CVar(var_1F4.Text) & " To Date " & 5 & "','" & CVar(MemVar_1F950C8) & "'," & var_300 & ",'A','" & CVar(MemVar_1F95078) 
  loc_15CB89B: unk_47CDF6.Execute CStr(var_350 & "')"), var_390, -1
  loc_15CB921: Set var_A4 = Me.Txt
  loc_15CB927: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_B0)
  loc_15CB942: Set var_AC = Me.Txt
  loc_15CB948: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_168)
  loc_15CB950: var_14C = var_168.Text
  loc_15CB95D: var_6D8 = Val(var_14C)
  loc_15CB97D: Set var_180 = Me.Txt
  loc_15CB983: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_184)
  loc_15CB992: Proc_6_7_F26918(var_100, CVar(var_184))
  loc_15CB9A5: Proc_6_17_EAAE40(var_1A4, global_76)
  loc_15CB9B8: Set var_1A8 = Me.Txt
  loc_15CB9BE: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_1AC, var_178)
  loc_15CB9C6: var_6D8 = var_1AC.Tag
  loc_15CB9D4: Proc_6_17_EAAE40(var_214, CVar(var_178))
  loc_15CB9E7: Set var_1F0 = Me.Txt
  loc_15CB9ED: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_1F4)
  loc_15CB9FD: Proc_6_104_ED68A8(var_300)
  loc_15CBA16: var_BC = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,LogSIte_Code) " & " VALUES ('"
  loc_15CBA64: var_120 = CVar(var_BC & var_B0 & "',2,'" & global_60 & "'," & CStr(var_6D8) & ",'" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "',") 'String
  loc_15CBAB1: var_260 = var_120 & var_100 & "," & var_1A4 & ",0," & CVar(CDbl(0)) & "," & var_214 & ",'Travel Agency Posting From Date " & CVar(var_1F4.Text) 
  loc_15CBB11: unk_47CDF6.Execute CStr(var_260 & " To Date " & 5 & "','" & CVar(MemVar_1F950C8) & "'," & var_300 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_390, -1
  loc_15CBB8D: Set var_A4 = Me.TopCtrl1
  loc_15CBB93: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_A8.Text)
  loc_15CBBA8: If (var_6D8 = "Add") Then
  loc_15CBBBF:   var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_15CBBE5:   var_120 = CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_15CBBF6:   Set var_A4 = Me.Txt
  loc_15CBBFC:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_A8, var_14C, var_120)
  loc_15CBC04:   var_1A4 = var_A8.Text
  loc_15CBC12:   Proc_6_7_F26918(var_100, CVar(var_14C))
  loc_15CBC1A:   var_140 = -1 & var_100 
  loc_15CBC23:   var_194 = var_120 & var_100 & " Order By VP.Date_From DESC" 
  loc_15CBC31:   unk_47CDF6.Execute CStr(var_194), var_AC, 
  loc_15CBC3C:   Set var_8C = var_AC
  loc_15CBC7A:   If (var_8C.RecordCount > 0) Then
  loc_15CBC8B:     Set var_A4 = Me.Txt
  loc_15CBC91:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A8)
  loc_15CBC99:     var_B0 = var_A8.Text
  loc_15CBCA6:     var_6D8 = Val(var_B0)
  loc_15CBCAC:     var_D0 = "Date_From"
  loc_15CBCCF:     Proc_6_7_F26918(var_100, CVar(var_8C.Fields.Item(var_D0)))
  loc_15CBD02:     var_14C = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_6D8) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_15CBD35:     unk_47CDF6.Execute CStr(CVar(var_14C & MemVar_1F95078 & "') and V_Type='" & global_60 & "' and Date_From=") & var_100), var_194, -1
  loc_15CBD69:   End If
  loc_15CBD69: End If
  loc_15CBD6F: unk_47CDF6.CommitTrans
  loc_15CBD82: Set var_A4 = Me.Txt
  loc_15CBD88: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_B0)
  loc_15CBD90: var_16C = var_A8.Text
  loc_15CBDA4: var_86 = 0
  loc_15CBDB2: Me.Requery -1
  loc_15CBDDC: Me.Find "SearchCode ='" & "SearchCode ='" & var_B0 & "'", 0, 1
  loc_15CBDEC: Set var_A4 = Me.TopCtrl1
  loc_15CBDF2: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_D0)
  loc_15CBE07: If (var_86 = "Add") Then
  loc_15CBE0A:   Call TopCtrl1_UnknownEvent_11()
  loc_15CBE0F:   Exit Sub
  loc_15CBE10: End If
  loc_15CBE33: Call Proc_78_41_E79D9C(Proc_5_1_100EC1C("INI", Me), global_52)
  loc_15CBE3E: Call Proc_78_40_137E428(var_6D8)
  loc_15CBE43: Exit Sub
  loc_15CBE44: ' Referenced from: 15CAC3C
  loc_15CBE4A: If (var_86 = &HFF) Then
  loc_15CBE53:   unk_47CDF6.RollbackTrans
  loc_15CBE58: End If
  loc_15CBE58: Proc_6_60_E63754()
  loc_15CBE5D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'E9B558
  'Data Table: 47CDE4
  loc_E9B4E0: On Error Goto loc_E9B551
  loc_E9B51A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9B540:   Call Proc_78_41_E79D9C(Proc_5_1_100EC1C("INI", Me))
  loc_E9B54B:   Call Proc_78_40_137E428(global_52)
  loc_E9B550: End If
  loc_E9B550: Exit Sub
  loc_E9B551: ' Referenced from: E9B4E0
  loc_E9B551: Proc_6_60_E63754()
  loc_E9B556: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EC856C
  'Data Table: 47CDE4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EC84CC: On Error Goto loc_EC8564
  loc_EC84E6: If (Me.RecordCount <= 0) Then
  loc_EC84EF:   var_B8 = "Information"
  loc_EC850A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC851A:   Exit Sub
  loc_EC851B: End If
  loc_EC8522: var_10C = "Select DocID as SearchCode,VNo,VDate,SG.NAME AS TRAVELAGENCY,FromDate,ToDate From Travel1 T1 Inner Join SubGroup SG ON T1.TRAVELAGENCY=SG.SUBCODE Where (T1.LOGSITE_CODE='" & MemVar_1F95078
  loc_EC8529: MemVar_1F950E4 = var_10C & "' or T1.LOGSITE_CODE='HO') Order by DocID,VNo"
  loc_EC8539: Proc_6_126_F1C850("1000,1200,3500,1500,1500,1500,1500")
  loc_EC8547: MemVar_1F95120 = Me
  loc_EC855E: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC8563: Exit Sub
  loc_EC8564: ' Referenced from: EC84CC
  loc_EC8564: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC8569: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E22964
  'Data Table: 47CDE4
  Dim Me As Recordset15
  loc_E2294B: Me.Requery -1
  loc_E2295B: Me.Requery -1
  loc_E22960: Exit Sub
End Sub

Private Sub CmdFill_Click() 'E54010
  'Data Table: 47CDE4
  loc_E53FD4: Call Proc_78_36_14432DC()
  loc_E53FEC: Me.FGrid.Row = 1
  loc_E54006: Me.FGrid.Col = CVar(CLng(6))
  loc_E5400E: Exit Sub
End Sub

Private Sub Form_Load() '1135508
  'Data Table: 47CDE4
  Dim var_98 As TextBox
  Dim var_AC As Variant
  Dim var_C0 As DataGrid
  Dim var_C4 As TextBox
  Dim var_CC As DataGrid
  Dim var_E0 As Variant
  Dim Me As Recordset15
  Dim unk_47CDF6 As Connection15
  loc_1135194: On Error Goto loc_11354FF
  loc_11351A3: Set var_8C = Me.Txt
  loc_11351A9: Call 0.Method_Form_LoadC (var_8E, var_86)
  loc_11351B7: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_11351CC:   Set var_8C = Me.Txt
  loc_11351D2:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_11351DA:   var_98.BackColor = -2147483643
  loc_11351F5:   Set var_8C = Me.Txt
  loc_11351FB:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_1135203:   var_98.ForeColor = &HC00000
  loc_113521E:   Set var_8C = Me.Txt
  loc_1135224:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_113522C:   var_98.BackColor = -2147483643
  loc_1135247:   Set var_8C = Me.Txt
  loc_113524D:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_1135255:   var_98.ForeColor = &HC00000
  loc_1135264: Next var_92 'Integer
  loc_1135277: Set var_8C = Me.Txt
  loc_113527D: Call 0.Method_Form_Load0 (CInt(3), var_98)
  loc_113529C: Me.DGTravel.Left = CVar(var_98.Left)
  loc_11352B8: Set var_C0 = Me.Txt
  loc_11352BE: Call 0.Method_Form_Load0 (CInt(3), var_C4)
  loc_11352D9: Set var_8C = Me.Txt
  loc_11352DF: Call 0.Method_Form_Load0 (CInt(3), var_98)
  loc_11352F7: var_AC = CVar(((var_98.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_1135300: Set var_CC = Me.DGTravel
  loc_1135306: var_CC.Top = CVar(var_98.Left)
  loc_1135322: Set global_56 = New 
  loc_1135334: Me.var_CC.CursorLocation = 3
  loc_113535E: var_E0 = CVar("Select SubCode As Code,Name From Subgroup where ActiveYN=1 And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and CompanyType like ('Travel Agency') Order by Name") 'String
  loc_113537C: CVarUnk
  loc_1135381: VerifyVarObj
  loc_1135387: Set var_8C = Me.DGTravel
  loc_113538D: LateIdStAd
  loc_11353A5: Set global_52 = New 
  loc_11353B7: Me.DGTravel.CursorLocation = 3
  loc_11353E1: var_E0 = CVar("Select DocID as SearchCode,DocID,Site_Code,LogSite_Code From Travel1 Where LOGSITE_CODE='" & MemVar_1F95078 & "' Order by DocID") 'String
  loc_11353EB: r_E0, CVar(MemVar_1F95044), 2 var_E0, CVar(MemVar_1F95044), 2
  loc_11353FC: global_60 = "PRAP"
  loc_113541D: Proc_6_17_EAAE40(var_E0, MemVar_1F95078, "Select CommissionAc From Enviro Where CommissionAc IS NOT NULL AND CommissionAc<>'' AND LOGSITE_CODE=", var_110, -1, var_8C)
  loc_1135433: unk_47CDF6.Execute CStr(3 & var_E0), -1, var_8C
  loc_1135444: Set global_80 = var_8C
  loc_1135472: If (Me.RecordCount <= 0) Then
  loc_1135496:   MsgBox("Please Set CommissionAC in Enviro", &H40, "Information", var_110, var_130)
  loc_11354A6: End If
  loc_11354C9: Call Proc_78_41_E79D9C(Proc_5_1_100EC1C("INI", Me, global_52), global_56)
  loc_11354EC: Proc_6_23_DFC5B8(Me, 7590, 9200)
  loc_11354F4: Call Proc_78_43_1168584(3)
  loc_11354F9: Call Proc_78_40_137E428(-1)
  loc_11354FE: Exit Sub
  loc_11354FF: ' Referenced from: 1135194
  loc_11354FF: Proc_6_60_E63754()
  loc_1135504: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E57228
  'Data Table: 47CDE4
  loc_E571F3: Set global_56 = Nothing
  loc_E57205: Set global_80 = Nothing
  loc_E57217: Set global_52 = Nothing
  loc_E57223: global_64 = 0
  loc_E57226: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2ABAC
  'Data Table: 47CDE4
  loc_E2AB84: On Error Goto loc_E2ABA4
  loc_E2AB9B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2ABA3: Exit Sub
  loc_E2ABA4: ' Referenced from: E2AB84
  loc_E2ABA4: Proc_6_60_E63754(Shift)
  loc_E2ABA9: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FF11F0
  'Data Table: 47CDE4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D8 As Variant
  loc_FF101A: Set var_88 = Me.Txt
  loc_FF1020: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FF102E: Proc_6_74_E23240(var_8C)
  loc_FF103A: Call Proc_78_42_E5462C(var_8C)
  loc_FF1042: var_92 = Index
  loc_FF104D: If Not (var_92 = CInt(1)) Then
  loc_FF1058:   If Not (var_92 = CInt(2)) Then
  loc_FF1063:     If Not (var_92 = CInt(4)) Then
  loc_FF106E:       If (var_92 = CInt(5)) Then
  loc_FF1071:       End If
  loc_FF1071:     End If
  loc_FF1071:   End If
  loc_FF1079:   var_98 = "{Home}+{End}"
  loc_FF107F:   Proc_303_0_FBACC8(var_98, 0)
  loc_FF108A: Else
  loc_FF1092:   If (var_92 = CInt(3)) Then
  loc_FF10E3:     Set var_88 = Me.Txt
  loc_FF10E9:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_FF10F1:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FF1109:     If (var_92 Or (var_98 = vbNullString)) Then
  loc_FF110C:       Exit Sub
  loc_FF110D:     End If
  loc_FF111A:     Set var_88 = Me.Txt
  loc_FF1120:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FF1128:     var_98 = var_8C.Text
  loc_FF1130:     var_D8 = CVar(var_98) 'String
  loc_FF1175:     If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_FF117E:       Me.MoveFirst
  loc_FF11A3:       Set var_88 = Me.Txt
  loc_FF11A9:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name =")
  loc_FF11B1:       0 = var_8C.Text
  loc_FF11BF:       Proc_6_17_EAAE40(var_D8, CVar(var_98))
  loc_FF11D5:       Me.Find CStr(1 & var_D8), var_FC, 
  loc_FF11ED:     End If
  loc_FF11ED:   End If
  loc_FF11ED: End If
  loc_FF11ED: Exit Sub
  loc_FF11EE: CExtInstUnk
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F7F2A0
  'Data Table: 47CDE4
  Dim var_8C As DataGrid
  loc_F7F16E: If (CLng(Shift) = &H1B) Then
  loc_F7F171:   Call Proc_78_42_E5462C()
  loc_F7F176:   Exit Sub
  loc_F7F177: End If
  loc_F7F185: If (KeyCode = CInt(3)) Then
  loc_F7F1A0:   Set var_9C = Nothing
  loc_F7F1AB:   Set var_98 = Nothing
  loc_F7F1D9:   Proc_6_69_134A630(Me.DGTravel, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_F7F1ED: End If
  loc_F7F209: If (CBool(Me.DGTravel.Visible) = 0) Then
  loc_F7F221:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F7F22A:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_F7F22F:   End If
  loc_F7F233:   Set var_8C = Me.TopCtrl1
  loc_F7F239:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_9C)
  loc_F7F278:   If CBool((0 = "Add") And (KeyCode <> CInt(1)) And (KeyCode <> CInt(2))) Then
  loc_F7F290:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F7F299:       Proc_6_76_E533C8(Shift, arg_14)
  loc_F7F29E:     End If
  loc_F7F29E:   End If
  loc_F7F29E: End If
  loc_F7F29E: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE2874
  'Data Table: 47CDE4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_EE27BF: Proc_6_58_E06050(arg_10)
  loc_EE27C7: var_86 = KeyAscii
  loc_EE27D2: If (var_86 = CInt(1)) Then
  loc_EE27DF:   Set var_8C = Me.Txt
  loc_EE27E5:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_EE2800:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_EE280F: Else
  loc_EE2817:   If (var_86 = CInt(3)) Then
  loc_EE2836:     If (CBool(Me.DGTravel.Visible) = &HFF) Then
  loc_EE2848:       var_AC = "Name"
  loc_EE2863:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, arg_10)
  loc_EE2872:     End If
  loc_EE2872:   End If
  loc_EE2872: End If
  loc_EE2872: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E5072C
  'Data Table: 47CDE4
  loc_E5070A: Set var_88 = Me.Txt
  loc_E50710: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E5071E: Proc_6_73_E23294(var_8C)
  loc_E5072A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13634F8
  'Data Table: 47CDE4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim unk_47CDF6 As Connection15
  Dim var_94 As Recordset15
  Dim var_124 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_98 As String
  Dim Me As Recordset15
  Dim var_8C As Fields15
  loc_1362CB3: var_86 = Cancel
  loc_1362CBE: If (var_86 = CInt(1)) Then
  loc_1362CCC:   Set var_8C = Me.Txt
  loc_1362CD2:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_1362CDA:   var_98 = "Vr No"
  loc_1362CFB:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_1362D09:     Set var_8C = Me.Txt
  loc_1362D0F:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_1362D17:     var_90.SetFocus
  loc_1362D25:     arg_10 = &HFF
  loc_1362D28:     Exit Sub
  loc_1362D29:   End If
  loc_1362D37:   Set var_8C = Me.Txt
  loc_1362D3D:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_1362D45:   arg_10 = var_90.Text
  loc_1362D5D:   If (CDbl(var_98) = CDbl(0)) Then
  loc_1362D73:     var_B8 = "Vr. No. Can Not Be 0"
  loc_1362D79:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_1362D93:     Set var_8C = Me.Txt
  loc_1362D99:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1362DA1:     var_90.SetFocus
  loc_1362DAF:     arg_10 = &HFF
  loc_1362DB2:     Exit Sub
  loc_1362DB3:   End If
  loc_1362DB7:   Set var_8C = Me.TopCtrl1
  loc_1362DBD:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(arg_10)
  loc_1362DD2:   If (var_86 = "Add") Then
  loc_1362DDB:     Call Proc_78_45_115E048(MemVar_1F95044)
  loc_1362DEE:     Set var_8C = Me.Txt
  loc_1362DF4:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1362DFC:     var_90.Text = var_98
  loc_1362E0B:   End If
  loc_1362E0F:   Set var_8C = Me.TopCtrl1
  loc_1362E15:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_98)
  loc_1362E2A:   If ( = "Add") Then
  loc_1362E5A:     Set var_8C = Me.Txt
  loc_1362E60:     Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98, "Select Count(*) From Travel1 Where DocID='", var_B8, -1)
  loc_1362E81:     unk_47CDF6.Execute var_124 & var_98 & "'", 0, var_128
  loc_1362E91:      = var_124.Item()
  loc_1362E99:      = var_128.Value
  loc_1362EC6:     If (var_90.Text.Fields > 0) Then
  loc_1362ECF:       Call 0.Method_arg_50 (var_98)
  loc_1362EF0:       MsgBox("Duplicate Vr. No.", &H40, CVar(var_98), var_F8, var_118)
  loc_1362F06:       Call Proc_78_45_115E048(MemVar_1F95044)
  loc_1362F16:       If (var_98 = vbNullString) Then
  loc_1362F23:         Set var_8C = Me.Txt
  loc_1362F29:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1362F31:         var_90.SetFocus
  loc_1362F3F:         arg_10 = &HFF
  loc_1362F42:         Exit Sub
  loc_1362F43:       End If
  loc_1362F49:       Call Proc_78_45_115E048(MemVar_1F95044, var_98)
  loc_1362F5C:       Set var_8C = Me.Txt
  loc_1362F62:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1362F6A:       var_90.Text = arg_10
  loc_1362F7B:       arg_10 = &HFF
  loc_1362F7E:       Exit Sub
  loc_1362F7F:     End If
  loc_1362F7F:   End If
  loc_1362F82: Else
  loc_1362F8A:   If (var_86 = CInt(2)) Then
  loc_1362F9B:     Set var_8C = Me.Txt
  loc_1362FA1:     Call 0.Method_Txt_Validate0 (CInt(2), var_90, var_98)
  loc_1362FA9:     arg_10 = var_90.Text
  loc_1362FBF:     var_F8 = Len(Trim(CVar(var_98)))
  loc_1362FD9:     If (var_F8 = 0) Then
  loc_1362FEF:       Set var_8C = Me.Txt
  loc_1362FF5:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1362FFD:       var_90.Text = CStr(MemVar_1F950EC)
  loc_136300F:     Else
  loc_1363019:       Set var_8C = Me.Txt
  loc_136301F:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363032:       var_98 = Proc_6_33_15125B8(var_90)
  loc_136303F:       Set var_124 = Me.Txt
  loc_1363045:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_136304D:       var_128.Text = var_98
  loc_1363060:     End If
  loc_1363064:     Set var_8C = Me.TopCtrl1
  loc_136306A:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_98)
  loc_136307F:     If ( = "Add") Then
  loc_1363088:       Call Proc_78_45_115E048(MemVar_1F95044)
  loc_1363098:       If (var_98 = vbNullString) Then
  loc_13630A5:         Set var_8C = Me.Txt
  loc_13630AB:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13630B3:         var_90.SetFocus
  loc_13630C1:         arg_10 = &HFF
  loc_13630C4:         Exit Sub
  loc_13630C5:       End If
  loc_13630CB:       Call Proc_78_45_115E048(MemVar_1F95044, var_98)
  loc_13630DE:       Set var_8C = Me.Txt
  loc_13630E4:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_13630EC:       var_90.Text = arg_10
  loc_13630FB:     End If
  loc_13630FE:   Else
  loc_1363106:     If (var_86 = CInt(4)) Then
  loc_1363116:       Set var_8C = Me.Txt
  loc_136311C:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_136313B:       If (var_90.Text <> vbNullString) Then
  loc_1363148:         Set var_8C = Me.Txt
  loc_136314E:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_136316E:         Set var_124 = Me.Txt
  loc_1363174:         Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_136317C:         var_128.Text = Proc_6_33_15125B8(var_90)
  loc_1363192:       Else
  loc_13631A4:         Set var_8C = Me.Txt
  loc_13631AA:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13631B2:         var_90.Text = CStr(MemVar_1F950EC)
  loc_13631C1:       End If
  loc_13631C4:     Else
  loc_13631CC:       If (var_86 = CInt(3)) Then
  loc_13631DA:         Set var_8C = Me.Txt
  loc_13631E0:         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_13631E8:         var_98 = "Travel Agency"
  loc_1363209:         If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_136320E:           arg_10 = &HFF
  loc_1363211:           Exit Sub
  loc_1363212:         End If
  loc_1363260:         Set var_8C = Me.Txt
  loc_1363266:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_136326E:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1363286:         If (arg_10 Or (var_98 = vbNullString)) Then
  loc_1363296:           Set var_8C = Me.Txt
  loc_136329C:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13632A4:           var_90.Text = vbNullString
  loc_13632BD:           Set var_8C = Me.Txt
  loc_13632C3:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13632CB:           var_90.Tag = vbNullString
  loc_13632DA:         Else
  loc_1363315:           Set var_94 = Me.Txt
  loc_136331B:           Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_1363323:           var_124.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1363356:           var_90 = Me.Fields.Item("Code")
  loc_1363374:           Set var_94 = Me.Txt
  loc_136337A:           Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_1363382:           var_124.Tag = CStr(var_90.Value)
  loc_1363398:         End If
  loc_136339B:       Else
  loc_13633A3:         If (var_86 = CInt(5)) Then
  loc_13633B3:           Set var_8C = Me.Txt
  loc_13633B9:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13633D8:           If (var_90.Text <> vbNullString) Then
  loc_13633E5:             Set var_8C = Me.Txt
  loc_13633EB:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_136340B:             Set var_124 = Me.Txt
  loc_1363411:             Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1363419:             var_128.Text = Proc_6_33_15125B8(var_90)
  loc_136342F:           Else
  loc_1363441:             Set var_8C = Me.Txt
  loc_1363447:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_136344F:             var_90.Text = CStr(MemVar_1F950EC)
  loc_136345E:           End If
  loc_136346C:           Set var_94 = Me.Txt
  loc_1363472:           Call 0.Method_Txt_Validate0 (CInt(4), var_124)
  loc_136348D:           Set var_8C = Me.Txt
  loc_1363493:           Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_13634BD:           If (CDate(var_90.Text) < CDate(var_124.Text)) Then
  loc_13634E1:             MsgBox("From Date can not be greater than To Date", &H40, "Information", var_F8, var_118)
  loc_13634F3:             arg_10 = &HFF
  loc_13634F6:             Exit Sub
  loc_13634F7:           End If
  loc_13634F7:         End If
  loc_13634F7:       End If
  loc_13634F7:     End If
  loc_13634F7:   End If
  loc_13634F7: End If
  loc_13634F7: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F08B20
  'Data Table: 47CDE4
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F08A4C: Call Proc_78_42_E5462C()
  loc_F08A64: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F08A6D: Set var_9C = Me.FGrid
  loc_F08AA3: Set var_104 = Me.TxtGrid
  loc_F08AA9: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F08AB1: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_F08AE2: var_110 = CLng(Me.FGrid.Col)
  loc_F08AF2: If (var_110 = CLng(6)) Then
  loc_F08B04:   Set var_88 = Me.TxtGrid
  loc_F08B0A:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C, 5)
  loc_F08B12:   var_9C.MaxLength = var_110
  loc_F08B1E: End If
  loc_F08B1E: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FA6EC8
  'Data Table: 47CDE4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  loc_FA6D44: On Error Goto loc_FA6EC1
  loc_FA6D51: If (CLng(Shift) = &H1B) Then
  loc_FA6D61:   Set var_88 = Me.TxtGrid
  loc_FA6D67:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FA6D81:   Set var_94 = Me.TxtGrid
  loc_FA6D87:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_FA6D8F:   var_98.Text = var_8C.Tag
  loc_FA6DAB:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_FA6DB0:   Call Proc_78_42_E5462C(arg_14)
  loc_FA6DB9:   Set var_88 = Me.FGrid
  loc_FA6DD6:   Set var_88 = Me.TxtGrid
  loc_FA6DDC:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FA6DE4:   var_8C.Visible = False
  loc_FA6DF0:   Exit Sub
  loc_FA6DF1: End If
  loc_FA6E14: If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_FA6E57:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_FA6E60:     Call Proc_78_38_FFCB0C(KeyCode, var_AE)
  loc_FA6E6B:     If (var_AE = &HFF) Then
  loc_FA6EB1:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, 8)
  loc_FA6EC1:       ' Referenced from: FA6D44
  loc_FA6EC1:     End If
  loc_FA6EC1:   End If
  loc_FA6EC1: End If
  loc_FA6EC1: Proc_6_60_E63754(0, 0, 0)
  loc_FA6EC6: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E97590
  'Data Table: 47CDE4
  Dim var_8C As MSHFlexGrid
  loc_E9751B: Proc_6_58_E06050(arg_10)
  loc_E9752C: If (KeyAscii = 0) Then
  loc_E97552:   If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_E9755F:     Set var_8C = Me.TxtGrid
  loc_E97565:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_E97580:     Proc_6_42_129B55C(var_A4, arg_10, 2)
  loc_E9758C:   End If
  loc_E9758C: End If
  loc_E9758C: Exit Sub
  loc_E9758D: Set var_88 = 2
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E35944
  'Data Table: 47CDE4
  Dim var_9C As Long
  loc_E3591C: On Error Goto loc_E3593C
  loc_E35932: var_9C = CLng(Me.FGrid.Col)
  loc_E3593B: Exit Sub
  loc_E3593C: ' Referenced from: E3591C
  loc_E3593C: Proc_6_60_E63754(var_9C)
  loc_E35941: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22AB4
  'Data Table: 47CDE4
  Dim arg_10 As Integer
  loc_E22A9C: If (Cancel = 0) Then
  loc_E22AA5:   Call Proc_78_38_FFCB0C(Cancel, var_88)
  loc_E22AAE:   arg_10 = Not(var_88)
  loc_E22AB1: End If
  loc_E22AB1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E781B4
  'Data Table: 47CDE4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E7815F: Set var_88 = Me.TxtGrid
  loc_E78165: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E7816D: var_8C.Visible = False
  loc_E78179: Call Proc_78_42_E5462C()
  loc_E78191: Me.FGrid.Row = 1
  loc_E781AB: Me.FGrid.Col = CVar(CLng(6))
  loc_E781B3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFEC2C
  'Data Table: 47CDE4
  loc_DFEC24: Call Proc_78_37_DFE020()
  loc_DFEC29: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10E6878
  'Data Table: 47CDE4
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_9C As String
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  Dim var_150 As Variant
  loc_10E65DC: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10E65E7:   var_9C = "+{Tab}"
  loc_10E65ED:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_10E65F7:   Cancel = 0
  loc_10E65FD: Else
  loc_10E6607:   var_B0 = Me.FGrid.Rows
  loc_10E6654:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_10E665C:     Call Proc_78_46_F0D82C(0, var_B0, Cancel)
  loc_10E6661:   End If
  loc_10E6661: End If
  loc_10E6667: global_72 = Cancel
  loc_10E668D: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10E66B1: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10E66C7:   var_DC = CLng(Me.FGrid.Col)
  loc_10E66D7:   If (var_DC = CLng(6)) Then
  loc_10E66ED:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E6705:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10E670A:     var_11C = vbNullString
  loc_10E6714:     Set var_B4 = Me.FGrid
  loc_10E671A:     LateIdCallSt
  loc_10E6735:   Else
  loc_10E673C:     If (var_DC = CLng(8)) Then
  loc_10E6752:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E676A:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10E676F:       var_11C = vbNullString
  loc_10E6779:       Set var_B4 = Me.FGrid
  loc_10E677F:       LateIdCallSt
  loc_10E6797:     End If
  loc_10E6797:   End If
  loc_10E6797: End If
  loc_10E67C0: If (Ucase(Chr(CLng(Cancel))) = "Y") Then
  loc_10E67E6:   If (CLng(Me.FGrid.Col) = CLng(8)) Then
  loc_10E67FC:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E6814:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10E6834:     var_150 = CVar(CStr(Ucase(Chr(CLng(Cancel))))) 'String
  loc_10E683C:     Set var_B4 = Me.FGrid
  loc_10E6842:     LateIdCallSt
  loc_10E6860:   End If
  loc_10E6860: End If
  loc_10E6866: If (Cancel = &HD) Then
  loc_10E686E:   global_74 = 0
  loc_10E6871: End If
  loc_10E6873: Cancel = 0
  loc_10E6876: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0EDD0
  'Data Table: 47CDE4
  loc_E0EDC1: Call FGrid_UnknownEvent_C()
  loc_E0EDCB: global_74 = 0
  loc_E0EDCE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F8FBB8
  'Data Table: 47CDE4
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As TextBox
  Dim var_B0 As TextBox
  loc_F8FA7F: If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_F8FA86:   Set var_B0 = Me.FGrid
  loc_F8FAAE:   Set var_A0 = var_B0
  loc_F8FAC0:   Proc_6_63_110B734(Me, var_A0, Me.TxtGrid, 0)
  loc_F8FADE:   Set var_88 = Me.TxtGrid
  loc_F8FAE4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_B8, &HFF)
  loc_F8FAEC:   Cancel = var_A0.Text
  loc_F8FB05:   If (Len(var_B8) <= 1) Then
  loc_F8FB14:     Set var_88 = Me.TxtGrid
  loc_F8FB1A:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_B8)
  loc_F8FB22:     0 = var_A0.Text
  loc_F8FB33:     Set var_A4 = Me.TxtGrid
  loc_F8FB39:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B0)
  loc_F8FB41:     var_B0.Text = var_B8
  loc_F8FB54:   End If
  loc_F8FB60:   Set var_88 = Me.TxtGrid
  loc_F8FB66:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0)
  loc_F8FB80:   Set var_A4 = Me.TxtGrid
  loc_F8FB86:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B0)
  loc_F8FB8E:   var_B0.SelStart = Len(var_A0.Text)
  loc_F8FBA1: End If
  loc_F8FBAB: If (CLng(Cancel) <> &HD) Then
  loc_F8FBB3:   global_74 = &HFF
  loc_F8FBB6: End If
  loc_F8FBB6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'E2ACBC
  'Data Table: 47CDE4
  loc_E2ACB5: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_E2ACB8:   Exit Sub
  loc_E2ACB9: End If
  loc_E2ACB9: Exit Sub
  loc_E2ACBA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9CBD0
  'Data Table: 47CDE4
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9CB73: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9CB8B: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9CBB3: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9CBCE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'DFE6EC
  'Data Table: 47CDE4
  loc_DFE6E4: Call Proc_78_42_E5462C()
  loc_DFE6E9: Exit Sub
End Sub

Private Sub DGTravel_UnknownEvent_9 'F42C94
  'Data Table: 47CDE4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F42B8B: Me.DGTravel.Visible = False
  loc_F42BAA: If (Me.RecordCount > 0) Then
  loc_F42BE9:   Set var_B4 = Me.Txt
  loc_F42BEF:   Call 0.Method_DGTravel_UnknownEvent_90 (CInt(3), var_B8)
  loc_F42BF7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F42C2A:   var_B0 = Me.Fields.Item("Name")
  loc_F42C49:   Set var_B4 = Me.Txt
  loc_F42C4F:   Call 0.Method_DGTravel_UnknownEvent_90 (CInt(3), var_B8)
  loc_F42C57:   var_B8.Text = CStr(var_B0.Value)
  loc_F42C6D: End If
  loc_F42C78: Set var_A8 = Me.Txt
  loc_F42C7E: Call 0.Method_DGTravel_UnknownEvent_90 (CInt(3))
  loc_F42C86: var_B0.SetFocus
  loc_F42C92: Exit Sub
  loc_F42C93: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E962E0
  'Data Table: 47CDE4
  Dim Me As Recordset15
  loc_E9626E: On Error Goto loc_E962D7
  loc_E96277: Me.MoveFirst
  loc_E962A1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E962C9: Proc_5_0_1107AD0(&HFF, Me, global_52)
  loc_E962D1: Call Proc_78_40_137E428(0)
  loc_E962D6: Exit Sub
  loc_E962D7: ' Referenced from: E9626E
  loc_E962D7: Proc_6_60_E63754(var_A0)
  loc_E962DC: Exit Sub
End Sub

Public Sub Proc_78_36_14432DC
  'Data Table: 47CDE4
  Dim var_A0 As Variant
  Dim var_AC As String
  Dim var_E0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_158 As Variant
  Dim unk_47CDF6 As Connection15
  Dim var_88 As Variant
  Dim var_96 As Integer
  Dim var_94 As Recordset15
  Dim var_17C As Variant
  Dim var_1A8 As Variant
  Dim var_D0 As Variant
  Dim var_A4 As Fields15
  Dim var_B0 As Field20
  Dim var_114 As Fields15
  Dim var_118 As Field20
  Dim var_1B8 As Variant
  Dim var_1EC As Variant
  Dim var_190 As Fields15
  Dim var_20C As Variant
  Dim var_198 As MSHFlexGrid
  Dim var_A8 As String
  Dim var_138 As Variant
  loc_14427F8: Set var_88 = Err()
  loc_14427FE: Call 0.Method_arg_1C (var_8C)
  loc_144280A: OnGoto
  loc_144281B: Set var_88 = Me.Txt
  loc_1442821: Call 0.Method_Proc_78_36_14432DC0 (arg_14FC)
  loc_144284A: If (Proc_6_27_EA61EC(var_A0, "From Date") = 0) Then
  loc_144284D:   Exit Sub
  loc_144284E: End If
  loc_1442859: Set var_88 = Me.Txt
  loc_144285F: Call 0.Method_Proc_78_36_14432DC0 (CInt(5), var_A0)
  loc_1442888: If (Proc_6_27_EA61EC(var_A0, "To Date") = 0) Then
  loc_144288B:   Exit Sub
  loc_144288C: End If
  loc_1442897: Set var_88 = Me.Txt
  loc_144289D: Call 0.Method_Proc_78_36_14432DC0 (CInt(3), var_A0)
  loc_14428C6: If (Proc_6_27_EA61EC(var_A0, "Travel Agency") = 0) Then
  loc_14428C9:   Exit Sub
  loc_14428CA: End If
  loc_14428D5: Set var_88 = Me.Txt
  loc_14428DB: Call 0.Method_Proc_78_36_14432DC0 (CInt(1), var_A0)
  loc_1442904: If (Proc_6_27_EA61EC(var_A0, "Sr. No.") = 0) Then
  loc_1442907:   Exit Sub
  loc_1442908: End If
  loc_1442913: Set var_88 = Me.Txt
  loc_1442919: Call 0.Method_Proc_78_36_14432DC0 (CInt(2), var_A0)
  loc_1442921: var_A8 = "Vr. Date"
  loc_1442942: If (Proc_6_27_EA61EC(var_A0, var_A8) = 0) Then
  loc_1442945:   Exit Sub
  loc_1442946: End If
  loc_1442953: Call Proc_78_47_FD90A0(New, var_88)
  loc_144295B: Set var_9C = var_88
  loc_144297C: Set var_88 = Me.Txt
  loc_1442982: Call 0.Method_Proc_78_36_14432DC0 (CInt(3), var_A0, var_A8, "SELECT SG.Commission, B.TravelAgent, B.NoDays, RoomOcc.RoomRate , B.GuestProf, GF.Name AS GuestName, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime,RoomOcc.Type  FROM ((GuestFolio AS B LEFT JOIN GuestProf AS GF ON B.GuestProf = GF.Code) LEFT JOIN SubGroup AS SG ON B.TravelAgent = SG.SubCode) RIGHT JOIN RoomOcc ON B.DocId = RoomOcc.DocId WHERE B.TravelAgent='")
  loc_144298A: var_18C = var_A0.Tag
  loc_1442993: var_AC = -1 & var_A8
  loc_14429A8: Set var_A4 = Me.Txt
  loc_14429AE: Call 0.Method_Proc_78_36_14432DC0 (CInt(4), var_B0, CVar(var_AC & "' AND B.VDate>="))
  loc_14429BD: Proc_6_7_F26918(var_D0, CVar(var_B0))
  loc_14429DD: Set var_114 = Me.Txt
  loc_14429E3: Call 0.Method_Proc_78_36_14432DC0 (CInt(5), var_118)
  loc_14429F2: Proc_6_7_F26918(var_138, CVar(var_118))
  loc_1442A11: unk_47CDF6.Execute CStr(var_190 & var_D0 & " AND B.VDate<=" & var_138 & vbNullString), CInt(var_8C), 
  loc_1442A1C: Set var_94 = var_190
  loc_1442A5F: Me.FGrid.Rows = 1
  loc_1442A69: var_96 = 1
  loc_1442A80: If (var_94.RecordCount > 0) Then
  loc_1442A83:   ' Referenced from: 144317F
  loc_1442A92:   If Not(var_94.EOF) Then
  loc_1442A95:     var_100 = vbNullString
  loc_1442A9F:     Set var_88 = Me.FGrid
  loc_1442AB4:     Set var_198 = Me.FGrid
  loc_1442ABB:     var_100 = CVar(CLng(var_96)) 'Long
  loc_1442AC3:     var_17C = CVar(CLng(0)) 'Long
  loc_1442ACD:     var_C0 = CVar(CStr(var_96)) 'String
  loc_1442AD4:     LateIdCallSt
  loc_1442AE3:     var_158 = CVar(CLng(var_96)) 'Long
  loc_1442AEB:     var_1A8 = CVar(CLng(1)) 'Long
  loc_1442B1B:     var_D0 = CVar(CStr(var_94.Fields.Item("GuestProf").Value)) 'String
  loc_1442B22:     LateIdCallSt
  loc_1442B3C:     var_158 = CVar(CLng(var_96)) 'Long
  loc_1442B44:     var_1A8 = CVar(CLng(2)) 'Long
  loc_1442B74:     var_D0 = CVar(CStr(var_94.Fields.Item("GuestName").Value)) 'String
  loc_1442B7B:     LateIdCallSt
  loc_1442BCD:     If (var_94.Fields.Item("Type").Value = "O") Then
  loc_1442C5C:       var_1A8 = "ChkOutTime"
  loc_1442C9F:       Proc_6_122_14E8498(CDate(var_94.Fields.Item("ChkInDate").Value), CStr(var_94.Fields.Item("ChkInTime").Value), CDate(var_94.Fields.Item("ChkOutDate").Value), CStr(var_94.Fields.Item(var_1A8).Value), CVar(CLng(3)), CVar(CLng(var_96)), var_198, var_94.Fields.Item("ChkInTime").Value)
  loc_1442CA6:       var_110 = CVar(CStr(var_1A8)) 'String
  loc_1442CAD:       LateIdCallSt
  loc_1442CDF:     Else
  loc_1442D1B:       If (var_94.Fields.Item("Type").Value = "C") Then
  loc_1442DED:         Proc_6_122_14E8498(CDate(var_94.Fields.Item("ChkInDate").Value), CStr(var_94.Fields.Item("ChkInTime").Value), CDate(var_94.Fields.Item("ChkOutDate").Value), CStr(var_94.Fields.Item("ChkOutTime").Value), CVar(CLng(3)), CVar(CLng(var_96)), var_198)
  loc_1442DF8:         var_110 = CVar(CStr((var_110 - CDbl(1)))) 'String
  loc_1442DFF:         LateIdCallSt
  loc_1442E31:       Else
  loc_1442F00:         Proc_6_122_14E8498(CDate(var_94.Fields.Item("ChkInDate").Value), CStr(var_94.Fields.Item("ChkInTime").Value), CDate(var_94.Fields.Item("DepDate").Value), CStr(var_94.Fields.Item("DepTime").Value), CVar(CLng(3)), CVar(CLng(var_96)), var_198)
  loc_1442F07:         var_110 = CVar(CStr(var_110)) 'String
  loc_1442F0E:         LateIdCallSt
  loc_1442F3D:       End If
  loc_1442F3D:     End If
  loc_1442F41:     var_158 = CVar(CLng(var_96)) 'Long
  loc_1442F49:     var_1A8 = CVar(CLng(4)) 'Long
  loc_1442F79:     var_D0 = CVar(CStr(var_94.Fields.Item("RoomRate").Value)) 'String
  loc_1442F80:     LateIdCallSt
  loc_1442F9A:     var_1EC = CVar(CLng(var_96)) 'Long
  loc_1442FA2:     var_20C = CVar(CLng(5)) 'Long
  loc_1442FAB:     var_100 = CVar(CLng(var_96)) 'Long
  loc_1442FB3:     var_17C = CVar(CLng(3)) 'Long
  loc_1443001:     var_F0 = CVar(CStr((CVar(Val(CStr(var_198.TextMatrix)))) * var_94.Fields.Item("RoomRate").Value))) 'String
  loc_1443008:     LateIdCallSt
  loc_1443027:     var_158 = CVar(CLng(var_96)) 'Long
  loc_144302F:     var_1A8 = CVar(CLng(6)) 'Long
  loc_144305F:     var_D0 = CVar(CStr(var_94.Fields.Item("Commission").Value)) 'String
  loc_1443066:     LateIdCallSt
  loc_1443080:     var_1B8 = CVar(CLng(var_96)) 'Long
  loc_1443088:     var_1EC = CVar(CLng(7)) 'Long
  loc_14430E1:     var_E0 = (var_94.Fields.Item("NoDays").Value * var_94.Fields.Item("RoomRate").Value)
  loc_1443107:     var_F0 = var_94.Fields.Item("Commission").Value
  loc_144311D:     var_138 = CVar(CStr((var_E0 * (var_F0 / 100)))) 'String
  loc_1443124:     LateIdCallSt
  loc_144314A:     var_100 = CVar(CLng(var_96)) 'Long
  loc_1443152:     var_17C = CVar(CLng(8)) 'Long
  loc_1443157:     var_1B8 = vbNullString
  loc_1443160:     LateIdCallSt
  loc_144316A:     Set var_198 = Nothing 
  loc_1443174:     var_96 = (var_96 + 1)
  loc_144317A:     var_94.MoveNext
  loc_144317F:     GoTo loc_1442A83
  loc_1443182:   End If
  loc_1443182: End If
  loc_1443188: var_8C = var_94.RecordCount
  loc_1443196: If (var_8C > 0) Then
  loc_14431AC:   Me.FGrid.FixedRows = 1
  loc_14431B4: End If
  loc_14431BA: If (var_96 = 1) Then
  loc_14431D0:   Me.FGrid.Rows = 1
  loc_14431ED:   var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_14431F5:   Set var_A0 = Me.FGrid
  loc_1443224:   Me.FGrid.FixedRows = 1
  loc_144323A:   var_100 = "* Nothig To Examine *"
  loc_1443245:   MsgBox(var_100, 0, var_D0, var_E0, var_F0)
  loc_1443255: End If
  loc_144325A: Set var_94 = Nothing
  loc_1443262: Set var_9C = Nothing
  loc_1443265: Exit Sub
  loc_144326E: Set var_88 = Err()
  loc_1443274: Call 0.Method_arg_1C (var_8C, FGrid.DispID_10000, var_D0, var_96, var_198, var_1B8)
  loc_1443281: Set var_A0 = Err()
  loc_1443287: Call 0.Method_arg_2C (var_AC, var_17C, var_100, var_198)
  loc_14432B8: MsgBox(CVar(CStr(var_8C) & " : " & var_AC), &H10, "Message ", var_E0, var_F0)
  loc_14432D8: Exit Sub
End Sub

Public Sub Proc_78_37_DFE020
  'Data Table: 47CDE4
  loc_DFE01C: Exit Sub
End Sub

Public Sub Proc_78_38_FFCB0C
  'Data Table: 47CDE4
  Dim var_8C As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_154 As Variant
  Dim var_124 As MSHFlexGrid
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_A8 As String
  Dim var_1DC As Variant
  loc_FFC95B: If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_FFC96A:   Set var_8C = Me.TxtGrid
  loc_FFC970:   Call 0.Method_Proc_78_38_FFCB0C0 (0, var_A4)
  loc_FFC978:   var_A8 = var_A4.Text
  loc_FFC98F:   If (var_A8 <> vbNullString) Then
  loc_FFC9A5:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFC9BD:     var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FFC9CE:     Set var_8C = Me.TxtGrid
  loc_FFC9D4:     Call 0.Method_Proc_78_38_FFCB0C0 (0, var_A4, var_A8)
  loc_FFC9DC:     var_F0 = var_A4.Text
  loc_FFC9E4:     var_110 = CVar(var_A8) 'String
  loc_FFC9EC:     Set var_124 = Me.FGrid
  loc_FFC9F2:     LateIdCallSt
  loc_FFCA23:     var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFCA3B:     var_154 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FFCA69:     var_19C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFCA71:     var_1BC = CVar(CLng(7)) 'Long
  loc_FFCA89:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFCA91:     var_F0 = CVar(CLng(5)) 'Long
  loc_FFCAC0:     var_1DC = CVar(CStr(((CDbl(CStr(Me.FGrid.TextMatrix))) * CDbl(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64)))) 'String
  loc_FFCAC8:     Set var_1F0 = Me.FGrid
  loc_FFCACE:     LateIdCallSt
  loc_FFCAFF:   End If
  loc_FFCAFF: End If
  loc_FFCB04: Proc_78_38_FFCB0C = &HFF
End Sub

Public Sub Proc_78_39_F1CE8C
  'Data Table: 47CDE4
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_F1CD9A: Set var_8C = Me.Txt
  loc_F1CDA0: Call 0.Method_Proc_78_39_F1CE8CC (var_8E, var_86)
  loc_F1CDB0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1CDC6:   Set var_8C = Me.Txt
  loc_F1CDCC:   Call 0.Method_Proc_78_39_F1CE8C0 (CInt(var_86), var_98)
  loc_F1CDD4:   var_98.Text = vbNullString
  loc_F1CDF0:   Set var_8C = Me.Txt
  loc_F1CDF6:   Call 0.Method_Proc_78_39_F1CE8C0 (CInt(var_86), var_98)
  loc_F1CDFE:   var_98.Tag = vbNullString
  loc_F1CE0D: Next var_92 'Byte
  loc_F1CE26: Me.FGrid.Rows = 1
  loc_F1CE4C: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_F1CE54: Set var_98 = Me.FGrid
  loc_F1CE81: Me.FGrid.FixedRows = 1
  loc_F1CE89: Exit Sub
End Sub

Public Sub Proc_78_40_137E428
  'Data Table: 47CDE4
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_47CDF6 As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As TextBox
  Dim var_124 As Label
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  Dim var_110 As Variant
  Dim var_144 As Variant
  Dim var_120 As Variant
  Dim var_174 As Variant
  loc_137DB9C: On Error Goto loc_137E420
  loc_137DBB6: If (Me.RecordCount > 0) Then
  loc_137DBF8:   var_DC = "SELECT T1.*,SG.Name AS TravelAgencyName FROM Travel1 T1 LEFT JOIN SUBGROUP SG ON T1.TravelAgency=SG.SUBCode Where DocID='" & Me.Fields.Item("DocID").Value 
  loc_137DC0F:   unk_47CDF6.Execute CStr(var_DC & "'"), var_120, -1
  loc_137DC37:   Set var_128 = var_124 
  loc_137DC74:   Set var_124 = Me.Txt
  loc_137DC7A:   Call 0.Method_Proc_78_40_137E4280 (CInt(0), var_12C)
  loc_137DC82:   var_12C.Text = CStr(var_128.Fields.Item("DocID").Value)
  loc_137DCD0:   Me.LblVPrefix.Caption = CStr(var_128.Fields.Item("vPrefix").Value)
  loc_137DD36:   Set var_124 = Me.Txt
  loc_137DD3C:   Call 0.Method_Proc_78_40_137E4280 (CInt(2), var_12C, CStr(Format(CVar(var_128.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_137DD44:   var_12C.Text = 1
  loc_137DD97:   Set var_124 = Me.Txt
  loc_137DD9D:   Call 0.Method_Proc_78_40_137E4280 (CInt(1), var_12C, CStr(var_128.Fields.Item("VNo").Value))
  loc_137DDA5:   var_12C.Text = 1
  loc_137DDF4:   Set var_124 = Me.Txt
  loc_137DDFA:   Call 0.Method_Proc_78_40_137E4280 (CInt(3), var_12C)
  loc_137DE02:   var_12C.Tag = CStr(var_128.Fields.Item("TravelAgency").Value)
  loc_137DE51:   Set var_124 = Me.Txt
  loc_137DE57:   Call 0.Method_Proc_78_40_137E4280 (CInt(3), var_12C)
  loc_137DE5F:   var_12C.Text = CStr(var_128.Fields.Item("TravelAgencyName").Value)
  loc_137DEC7:   Set var_124 = Me.Txt
  loc_137DECD:   Call 0.Method_Proc_78_40_137E4280 (CInt(4), var_12C, CStr(Format(CVar(var_128.Fields.Item("FromDate")), "DD/MMM/YYY")))
  loc_137DED5:   var_12C.Text = 1
  loc_137DF47:   Call 0.Method_Proc_78_40_137E4280 (CInt(5), var_12C, CStr(Format(CVar(var_128.Fields.Item("ToDate")), "DD/MMM/YYYY")), 1)
  loc_137DF4F:   var_12C.Text = 1
  loc_137DF6B:   Set var_128 = Nothing 
  loc_137DFAE:   var_DC = "Select T2.*,GF.Name As GuestName From Travel2 T2 Left Join GuestProf GF ON T2.Guest=GF.Code where T2.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_137DFC5:   unk_47CDF6.Execute CStr(var_DC & "'"), var_120, -1
  loc_137DFD0:   Set var_8C = Me.Txt
  loc_137DFFE:   If (var_8C.RecordCount > 0) Then
  loc_137E003:     var_8E = 1
  loc_137E019:     Me.FGrid.Rows = 1
  loc_137E021:     ' Referenced from: 137E3CC
  loc_137E030:     If Not(var_8C.EOF) Then
  loc_137E033:       var_A8 = vbNullString
  loc_137E03D:       Set var_98 = Me.FGrid
  loc_137E052:       Set var_134 = Me.FGrid
  loc_137E059:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_137E061:       var_110 = CVar(CLng(0)) 'Long
  loc_137E091:       var_DC = CVar(CStr(var_8C.Fields.Item("SNo").Value)) 'String
  loc_137E098:       LateIdCallSt
  loc_137E0E7:       var_DC = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Guest")), CVar(CLng(1)), CVar(CLng(var_8E)), var_134, var_DC, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_137E0EE:       LateIdCallSt
  loc_137E139:       var_DC = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("GuestName")), CVar(CLng(2)), CVar(CLng(var_8E)), var_134, var_DC, FGrid.DispID_10000)) 'String
  loc_137E140:       LateIdCallSt
  loc_137E18B:       var_DC = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("NoDays")), CVar(CLng(3)), CVar(CLng(var_8E)), var_134, var_DC)) 'String
  loc_137E192:       LateIdCallSt
  loc_137E1C4:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_137E1E0:       var_DC = "0.00"
  loc_137E200:       LateIdCallSt
  loc_137E23C:       Proc_6_39_E7D3A0(var_DC, CVar(var_8C.Fields.Item("Total")), var_134, CVar(CStr(Format(CVar(var_8C.Fields.Item("RoomRate")), var_DC))), 1, 1, CVar(CLng(4)))
  loc_137E245:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_137E27D:       LateIdCallSt
  loc_137E2BB:       Proc_6_39_E7D3A0(var_DC, CVar(var_8C.Fields.Item("CommPer")), var_134, CVar(CStr(Format(var_DC, "0.00"))), 1, 1, CVar(CLng(5)))
  loc_137E2C4:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_137E2FC:       LateIdCallSt
  loc_137E33A:       Proc_6_39_E7D3A0(var_DC, CVar(var_8C.Fields.Item("Commission")), var_134, CVar(CStr(Format(var_DC, "0.00"))), 1, 1, CVar(CLng(6)))
  loc_137E343:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_137E34B:       var_144 = CVar(CLng(7)) 'Long
  loc_137E374:       var_174 = CVar(CStr(Format(var_DC, "0.00"))) 'String
  loc_137E37B:       LateIdCallSt
  loc_137E397:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_137E39F:       var_EC = CVar(CLng(8)) 'Long
  loc_137E3A4:       var_144 = "Y"
  loc_137E3AD:       LateIdCallSt
  loc_137E3B7:       Set var_134 = Nothing 
  loc_137E3C1:       var_8E = (var_8E + 1)
  loc_137E3C7:       var_8C.MoveNext
  loc_137E3CC:       GoTo loc_137E021
  loc_137E3CF:     End If
  loc_137E3CF:   End If
  loc_137E3CF:   var_A8 = 0
  loc_137E3D9:   Set var_98 = Me.FGrid
  loc_137E3E7:   var_A8 = 1
  loc_137E3FA:   Me.FGrid.FixedRows = var_A8
  loc_137E405: Else
  loc_137E405:   Call Proc_78_39_F1CE8C(FGrid.DispID_2E, var_A8, var_8E, var_134, var_144, var_EC, var_A8)
  loc_137E40A: End If
  loc_137E40A: Call Proc_78_42_E5462C(var_134, var_174, 1)
  loc_137E414: Set var_88 = Nothing
  loc_137E41C: Set var_8C = Nothing
  loc_137E41F: Exit Sub
  loc_137E420: ' Referenced from: 137DB9C
  loc_137E420: Proc_6_60_E63754(1, var_144)
  loc_137E425: Exit Sub
End Sub

Public Sub Proc_78_41_E79D9C(arg_C) 'E79D9C
  'Data Table: 47CDE4
  Dim var_98 As TextBox
  loc_E79D4A: Set var_8C = Me.Txt
  loc_E79D50: Call 0.Method_Proc_78_41_E79D9CC (var_8E, var_86)
  loc_E79D60: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79D76:   Set var_8C = Me.Txt
  loc_E79D7C:   Call 0.Method_Proc_78_41_E79D9C0 (CInt(var_86), var_98)
  loc_E79D84:   var_98.Enabled = arg_C
  loc_E79D93: Next var_92 'Byte
  loc_E79D99: Exit Sub
End Sub

Public Sub Proc_78_42_E5462C
  'Data Table: 47CDE4
  loc_E54610: If (CBool(Me.DGTravel.Visible) = &HFF) Then
  loc_E54622:   Me.DGTravel.Visible = False
  loc_E5462A: End If
  loc_E5462A: Exit Sub
End Sub

Public Sub Proc_78_43_1168584
  'Data Table: 47CDE4
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_11681C2: Me.FGrid.Left = CVar(CDbl(&H23))
  loc_11681DD: Me.FGrid.Top = CVar(CDbl(1900))
  loc_11681F8: Me.FGrid.Width = CVar(CDbl(8800))
  loc_1168213: Me.FGrid.Cols = 9
  loc_116821B: var_94 = CVar(CLng(0)) 'Long
  loc_1168220: var_BC = &H190
  loc_116822C: LateIdCallSt
  loc_1168237: var_94 = CVar(CLng(1)) 'Long
  loc_116823C: var_BC = 0
  loc_1168248: LateIdCallSt
  loc_1168250: var_94 = 0
  loc_116825C: var_BC = CVar(CLng(2)) 'Long
  loc_1168261: var_DC = "Name"
  loc_116826A: LateIdCallSt
  loc_1168275: var_94 = CVar(CLng(2)) 'Long
  loc_1168280: var_BC = CVar(CInt(1)) 'Integer
  loc_1168287: LateIdCallSt
  loc_1168292: var_94 = CVar(CLng(2)) 'Long
  loc_1168297: var_BC = &H9C4
  loc_11682A3: LateIdCallSt
  loc_11682AB: var_94 = 0
  loc_11682B7: var_BC = CVar(CLng(3)) 'Long
  loc_11682BC: var_DC = "No.Days"
  loc_11682C5: LateIdCallSt
  loc_11682D0: var_94 = CVar(CLng(3)) 'Long
  loc_11682DB: var_BC = CVar(CInt(1)) 'Integer
  loc_11682E2: LateIdCallSt
  loc_11682ED: var_94 = CVar(CLng(3)) 'Long
  loc_11682F8: var_BC = CVar(CInt(1)) 'Integer
  loc_11682FF: LateIdCallSt
  loc_116830A: var_94 = CVar(CLng(3)) 'Long
  loc_116830F: var_BC = &H384
  loc_116831B: LateIdCallSt
  loc_1168323: var_94 = 0
  loc_116832F: var_BC = CVar(CLng(4)) 'Long
  loc_1168334: var_DC = "Room Rate"
  loc_116833D: LateIdCallSt
  loc_1168348: var_94 = CVar(CLng(4)) 'Long
  loc_1168353: var_BC = CVar(CInt(7)) 'Integer
  loc_116835A: LateIdCallSt
  loc_1168365: var_94 = CVar(CLng(4)) 'Long
  loc_1168370: var_BC = CVar(CInt(7)) 'Integer
  loc_1168377: LateIdCallSt
  loc_1168382: var_94 = CVar(CLng(4)) 'Long
  loc_1168387: var_BC = &H44C
  loc_1168393: LateIdCallSt
  loc_116839B: var_94 = 0
  loc_11683A7: var_BC = CVar(CLng(5)) 'Long
  loc_11683AC: var_DC = "Total"
  loc_11683B5: LateIdCallSt
  loc_11683C0: var_94 = CVar(CLng(5)) 'Long
  loc_11683CB: var_BC = CVar(CInt(7)) 'Integer
  loc_11683D2: LateIdCallSt
  loc_11683DD: var_94 = CVar(CLng(5)) 'Long
  loc_11683E8: var_BC = CVar(CInt(7)) 'Integer
  loc_11683EF: LateIdCallSt
  loc_11683FA: var_94 = CVar(CLng(5)) 'Long
  loc_11683FF: var_BC = &H3E8
  loc_116840B: LateIdCallSt
  loc_1168413: var_94 = 0
  loc_116841F: var_BC = CVar(CLng(6)) 'Long
  loc_1168424: var_DC = "Comm.%"
  loc_116842D: LateIdCallSt
  loc_1168438: var_94 = CVar(CLng(6)) 'Long
  loc_1168443: var_BC = CVar(CInt(7)) 'Integer
  loc_116844A: LateIdCallSt
  loc_1168455: var_94 = CVar(CLng(6)) 'Long
  loc_1168460: var_BC = CVar(CInt(7)) 'Integer
  loc_1168467: LateIdCallSt
  loc_1168472: var_94 = CVar(CLng(6)) 'Long
  loc_1168477: var_BC = &H3E8
  loc_1168483: LateIdCallSt
  loc_116848B: var_94 = 0
  loc_1168497: var_BC = CVar(CLng(7)) 'Long
  loc_116849C: var_DC = "Commission"
  loc_11684A5: LateIdCallSt
  loc_11684B0: var_94 = CVar(CLng(7)) 'Long
  loc_11684BB: var_BC = CVar(CInt(7)) 'Integer
  loc_11684C2: LateIdCallSt
  loc_11684CD: var_94 = CVar(CLng(7)) 'Long
  loc_11684D8: var_BC = CVar(CInt(7)) 'Integer
  loc_11684DF: LateIdCallSt
  loc_11684EA: var_94 = CVar(CLng(7)) 'Long
  loc_11684EF: var_BC = &H3E8
  loc_11684FB: LateIdCallSt
  loc_1168503: var_94 = 0
  loc_116850F: var_BC = CVar(CLng(8)) 'Long
  loc_1168514: var_DC = "Post"
  loc_116851D: LateIdCallSt
  loc_1168528: var_94 = CVar(CLng(8)) 'Long
  loc_1168533: var_BC = CVar(CInt(1)) 'Integer
  loc_116853A: LateIdCallSt
  loc_1168545: var_94 = CVar(CLng(8)) 'Long
  loc_1168550: var_BC = CVar(CInt(1)) 'Integer
  loc_1168557: LateIdCallSt
  loc_1168562: var_94 = CVar(CLng(8)) 'Long
  loc_1168567: var_BC = &H320
  loc_1168573: LateIdCallSt
  loc_116857D: Set var_AC = Nothing 
  loc_1168581: Exit Sub
End Sub

Public Sub Proc_78_44_10A6828
  'Data Table: 47CDE4
  Dim var_A0 As Variant
  Dim var_C4 As TextBox
  Dim unk_47CDF6 As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  Dim var_FC As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_C8 As String
  Dim var_8A As Integer
  loc_10A657D: Set var_90 = Me.TopCtrl1
  loc_10A6583: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(&HFF)
  loc_10A6598: If ( = "Add") Then
  loc_10A65C8:   Set var_90 = Me.Txt
  loc_10A65CE:   Call 0.Method_Proc_78_44_10A68280 (CInt(0), var_C4, var_C8, "Select Count(*) From Travel1 Where DocID='", var_B0, -1)
  loc_10A65EF:   unk_47CDF6.Execute var_D8 & var_C8 & "'", 0, var_EC
  loc_10A65FF:    = var_D8.Item()
  loc_10A6607:    = var_EC.Value
  loc_10A6634:   If (var_C4.Text.Fields > 0) Then
  loc_10A663D:     Call 0.Method_arg_50 (var_C8)
  loc_10A665E:     MsgBox("Duplicate Serial No.", &H40, CVar(var_C8), var_10C, var_11C)
  loc_10A6674:     Call Proc_78_45_115E048(MemVar_1F95044)
  loc_10A6687:     Set var_90 = Me.Txt
  loc_10A668D:     Call 0.Method_Proc_78_44_10A68280 (CInt(0), var_C4)
  loc_10A6695:     var_C4.Text = var_C8
  loc_10A66A9:     Proc_78_44_10A6828 = 0
  loc_10A66AF:   End If
  loc_10A66D4:   For var_120 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_120 'Integer
  loc_10A66DE:     var_A0 = CVar(CLng(var_88)) 'Long
  loc_10A66E6:     var_FC = CVar(CLng(8)) 'Long
  loc_10A6711:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_10A6716:       var_8A = 1
  loc_10A673F:       var_C8 = CStr(Me.FGrid.TextMatrix))
  loc_10A6755:       If (CDbl(Val(var_C8)) = CDbl(0)) Then
  loc_10A675E:         Call 0.Method_arg_50 (var_C8, CVar(CLng(6)), CVar(CLng(var_88)), var_8A)
  loc_10A677F:         MsgBox("Commission% is Zero", &H40, CVar(var_C8), var_10C, var_11C)
  loc_10A67A2:         Me.FGrid.Row = CVar(CLng(var_88))
  loc_10A67BC:         Me.FGrid.Col = CVar(CLng(6))
  loc_10A67C9:         Proc_78_44_10A6828 = 0
  loc_10A67CF:       End If
  loc_10A67CF:     End If
  loc_10A67D2:   Next var_120 'Integer
  loc_10A67DD:   If (var_8A = 0) Then
  loc_10A67E6:     Call 0.Method_arg_50 (var_C8)
  loc_10A6807:     MsgBox("No Posting to Save.", &H40, CVar(var_C8), var_10C, var_11C)
  loc_10A681C:     Proc_78_44_10A6828 = 0
  loc_10A6822:   End If
  loc_10A6822: End If
  loc_10A6822: Proc_78_44_10A6828 = 
End Sub

Public Sub Proc_78_45_115E048
  'Data Table: 47CDE4
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_115DCE0: var_90 = global_60
  loc_115DCF7: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_115DD1A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115DD28: Set var_B4 = Me.Txt
  loc_115DD2E: Call 0.Method_Proc_78_45_115E0480 (CInt(2), var_B8, var_E8)
  loc_115DD3D: Proc_6_7_F26918(var_D8, CVar(var_B8), var_13C)
  loc_115DD45: var_F8 = -1 & var_D8 
  loc_115DD59: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115DD64: Set var_8C = var_140
  loc_115DDA0: If (var_8C.RecordCount <= 0) Then
  loc_115DDBC:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115DDCF:   var_88 = vbNullString
  loc_115DDD2:   Proc_78_45_115E048 = 
  loc_115DDD8: End If
  loc_115DDEC: If (var_8C.RecordCount > 0) Then
  loc_115DE2B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115DE48:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115DE59:     var_9C = CStr(var_B8.Value)
  loc_115DE74:     Set var_B4 = Me.Txt
  loc_115DE7A:     Call 0.Method_Proc_78_45_115E0480 (CInt(1), var_B8)
  loc_115DE90:     var_94 = CLng(Val(var_B8.Text))
  loc_115DEA0:   Else
  loc_115DECB:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115DEF2:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115DF07:     var_D8 = (var_B8.Value + 1)
  loc_115DF0D:     var_94 = CLng(var_D8)
  loc_115DF1E:   End If
  loc_115DF1E: End If
  loc_115DF49: var_C8 = Space((5 - Len(var_90)))
  loc_115DF51: var_E8 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_B8.Value)
  loc_115DF5B: var_F8 = (var_E8 + CVar(var_9C))
  loc_115DF6C: var_118 = Space((5 - Len(var_9C)))
  loc_115DF74: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115DF8A: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115DF92: var_188 = (var_13C + var_178)
  loc_115DF9E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115DFA3: var_98 = CStr(var_1A8)
  loc_115DFD3: Me.LblVPrefix.Caption = var_9C
  loc_115DFE9: Set var_B4 = Me.Txt
  loc_115DFEF: Call 0.Method_Proc_78_45_115E0480 (CInt(0), var_B8)
  loc_115DFF7: var_B8.Text = var_98
  loc_115E016: Set var_B4 = Me.Txt
  loc_115E01C: Call 0.Method_Proc_78_45_115E0480 (CInt(1), var_B8)
  loc_115E024: var_B8.Text = CStr(var_94)
  loc_115E036: var_88 = var_98
  loc_115E03E: Set var_8C = Nothing
  loc_115E041: Proc_78_45_115E048 = var_94
End Sub

Public Sub Proc_78_46_F0D82C
  'Data Table: 47CDE4
  loc_F0D750: Call Proc_78_42_E5462C()
  loc_F0D760: Set var_88 = Me.Txt
  loc_F0D766: Call 0.Method_Proc_78_46_F0D82C0 (CInt(2))
  loc_F0D78F: If (Proc_6_27_EA61EC(var_8C, "Vr. Date") = 0) Then
  loc_F0D792:   Exit Sub
  loc_F0D793: End If
  loc_F0D79E: Set var_88 = Me.Txt
  loc_F0D7A4: Call 0.Method_Proc_78_46_F0D82C0 (CInt(1), var_8C)
  loc_F0D7CD: If (Proc_6_27_EA61EC(var_8C, "Sr. No.") = 0) Then
  loc_F0D7D0:   Exit Sub
  loc_F0D7D1: End If
  loc_F0D808: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0D80B:   Call TopCtrl1_UnknownEvent_19()
  loc_F0D813: Else
  loc_F0D817:   Call 0.Method_arg_1E8 (var_88)
  loc_F0D81F:   Call var_88.SetFocus
  loc_F0D828: End If
  loc_F0D828: Exit Sub
End Sub

Public Sub Proc_78_47_FD90A0(arg_C) 'FD90A0
  'Data Table: 47CDE4
  Dim var_8C As Recordset15
  loc_FD8EC9: Set var_8C = arg_C 
  loc_FD8EF1: var_8C.Fields.Append "Sno", 3, 4
  loc_FD8F1D: var_8C.Fields.Append "GuestCode", &H81, &HA
  loc_FD8F49: var_8C.Fields.Append "GuestName", &H81, &H32
  loc_FD8F75: var_8C.Fields.Append "Nodays", 3, 3
  loc_FD8FA1: var_8C.Fields.Append "RoomRate", 5, &H13
  loc_FD8FCD: var_8C.Fields.Append "Total", 5, &H13
  loc_FD8FF9: var_8C.Fields.Append "CommPer", 5, &H13
  loc_FD9025: var_8C.Fields.Append "CommAmt", 5, &H13
  loc_FD9051: var_8C.Fields.Append "Post", &H81, 3
  loc_FD9061: var_8C.CursorType = 3
  loc_FD906E: var_8C.LockType = 3
  loc_FD908D: var_8C.Open var_A0, var_B0, -1
  loc_FD9094: Set var_8C = Nothing 
  loc_FD9098: Proc_78_47_FD90A0 = -1
End Sub
