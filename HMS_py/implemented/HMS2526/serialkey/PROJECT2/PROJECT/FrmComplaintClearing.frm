VERSION 5.00
Begin VB.Form FrmComplaintClearing
  Caption = "Complaint Clearance"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmComplaintClearing.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 14100
  ClientHeight = 8145
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 14100
    Height = 450
    Visible = 0   'False
    TabIndex = 7
  End
  Begin CommandButton CmdRefressz
    Caption = "Re&fresh"
    Left = 12465
    Top = 8280
    Width = 1605
    Height = 330
    Visible = 0   'False
    TabIndex = 1
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
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HC0E0FF&
    ForeColor = &H80000012&
    Left = 915
    Top = 2235
    Width = 990
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSFlexGrid FGPoint
    Left = 10695
    Top = 1755
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1650
    Top = 1515
    Width = 2895
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGCategory
    Left = 10680
    Top = 1110
    Width = 4230
    Height = 3060
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSHFlexGrid FGrid1
    Left = 210
    Top = 1830
    Width = 12225
    Height = 5055
    Visible = 0   'False
    TabIndex = 2
  End
  Begin BtnEnh Exit
    Left = 1410
    Top = 7230
    Width = 1215
    Height = 660
    TabIndex = 9
  End
  Begin BtnEnh CmdRefress
    Left = 165
    Top = 7245
    Width = 1215
    Height = 660
    TabIndex = 10
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 420
    Width = 180
    Height = 540
    TabIndex = 8
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
  Begin Label LblName
    Caption = "For Category"
    Index = 3
    ForeColor = &HFF0000&
    Left = 300
    Top = 1500
    Width = 1230
    Height = 240
    TabIndex = 4
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

Attribute VB_Name = "FrmComplaintClearing"

Private global_60 As Integer

Private Sub TopCtrl1_UnknownEvent_A 'E7DC2C
  'Data Table: 470868
  Dim var_94 As TextBox
  loc_E7DBCC: On Error Goto loc_E7DC23
  loc_E7DBF2: Call Proc_143_35_E79BD4(Proc_5_1_100EC1C("ADD", Me))
  loc_E7DC08: Set var_8C = Me.Txt
  loc_E7DC0E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_E7DC16: var_94.SetFocus
  loc_E7DC22: Exit Sub
  loc_E7DC23: ' Referenced from: E7DBCC
  loc_E7DC23: Proc_6_60_E63754(global_56)
  loc_E7DC28: Exit Sub
  loc_E7DC29: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EEB354
  'Data Table: 470868
  loc_EEB290: On Error Goto loc_EEB34D
  loc_EEB2CA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EEB2D6:   Set var_10C = Me.TopCtrl1
  loc_EEB2DC:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030019(False)
  loc_EEB2EC:   Set var_10C = Me.TopCtrl1
  loc_EEB2F2:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030016(True)
  loc_EEB303:   Set var_10C = Me.TopCtrl1
  loc_EEB309:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030017(False)
  loc_EEB31A:   Set var_10C = Me.TopCtrl1
  loc_EEB320:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_6803000F(False)
  loc_EEB328:   Call Proc_143_38_E87DF8()
  loc_EEB32D:   Call Proc_143_37_109B3F8()
  loc_EEB335: Else
  loc_EEB33B:   Call 0.Method_arg_1E8 (var_10C)
  loc_EEB343:   Call var_10C.SetFocus
  loc_EEB34C: End If
  loc_EEB34C: Exit Sub
  loc_EEB34D: ' Referenced from: EEB290
  loc_EEB34D: Proc_6_60_E63754()
  loc_EEB352: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10D3B34
  'Data Table: 470868
  Dim var_96 As Integer
  Dim unk_47087C As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10D3864: On Error Goto loc_10D3ADB
  loc_10D389E: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10D38A3:   var_96 = 0
  loc_10D38AF:   unk_47087C.BeginTrans var_11C
  loc_10D38B6:   var_96 = &HFF
  loc_10D38CA:   var_94 = Me.Bookmark 'Variant
  loc_10D3916:   var_F8 = "Delete From ComplaintDetail Where Code='" & Me.Fields.Item("SCode").Value & "'" 
  loc_10D3924:   unk_47087C.Execute CStr(var_F8), var_118, -1
  loc_10D396F:   var_164 = 0
  loc_10D3982:   var_15C = 0
  loc_10D398D:   var_158 = 0
  loc_10D39A0:   var_150 = 0
  loc_10D39AB:   var_14C = 0
  loc_10D39BE:   var_144 = 0
  loc_10D39FE:   var_128 = "ComplaintDetail"
  loc_10D3A07:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "Code", &HC8, CStr(Me.Fields.Item("SCode").Value), 0, 0, 0)
  loc_10D3A35:   unk_47087C.CommitTrans
  loc_10D3A3C:   var_96 = 0
  loc_10D3A4A:   Me.Requery -1
  loc_10D3A5A:   Me.Requery -1
  loc_10D3A7A:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10D3A87:     Me.Bookmark = var_94
  loc_10D3A8F:   Else
  loc_10D3AA3:     If (Me.EOF = 0) Then
  loc_10D3AAC:       Me.MoveLast
  loc_10D3AB1:     End If
  loc_10D3AB1:   End If
  loc_10D3AB1:   Call Proc_143_37_109B3F8(var_96, var_144, 0, var_14C, var_150)
  loc_10D3AD2:   Proc_5_0_1107AD0(&HFF, Me, global_56, 0)
  loc_10D3ADA: End If
  loc_10D3ADA: Exit Sub
  loc_10D3ADB: ' Referenced from: 10D3864
  loc_10D3AE1: If (var_96 = &HFF) Then
  loc_10D3AEA:   unk_47087C.RollbackTrans
  loc_10D3AEF: End If
  loc_10D3AF7: Set var_120 = Err()
  loc_10D3AFD: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10D3B1E: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10D3B31: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EC7E54
  'Data Table: 470868
  Dim var_B4 As TextBox
  Dim var_8C As MSHFlexGrid
  loc_EC7DAC: On Error Goto loc_EC7E4D
  loc_EC7DB9: If (global_56 Is Nothing) Then
  loc_EC7DBC:   Exit Sub
  loc_EC7DBD: End If
  loc_EC7DE0: Call Proc_143_35_E79BD4(Proc_5_1_100EC1C("EDIT", Me))
  loc_EC7DF3: Set var_8C = Me.TopCtrl1
  loc_EC7DF9: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_6803000D(True)
  loc_EC7E0F: Set var_8C = Me.Txt
  loc_EC7E15: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_B4)
  loc_EC7E28: global_68 = var_B4.Text
  loc_EC7E44: Me.FGrid1.Enabled = True
  loc_EC7E4C: Exit Sub
  loc_EC7E4D: ' Referenced from: EC7DAC
  loc_EC7E4D: Proc_6_60_E63754(global_56)
  loc_EC7E52: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E188F4
  'Data Table: 470868
  loc_E188E9: Me.Global.Unload Me
  loc_E188F1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F1A220
  'Data Table: 470868
  Dim Me As Recordset15
  loc_F1A130: On Error Goto loc_F1A1BA
  loc_F1A13C: var_88 = Me.RecordCount
  loc_F1A14A: If (var_88 <= 0) Then
  loc_F1A16E:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F1A17E:   Exit Sub
  loc_F1A17F: End If
  loc_F1A182: MemVar_1F950E4 = "SELECT  Code AS Scode,Category FROM ComplaintCategory"
  loc_F1A18C: MemVar_1F95120 = Me
  loc_F1A193: var_10C = "3500,800,1500"
  loc_F1A199: Proc_6_126_F1C850(var_10C)
  loc_F1A1B4: Call 0.Method_arg_2B0 (1)
  loc_F1A1B9: Exit Sub
  loc_F1A1BA: ' Referenced from: F1A130
  loc_F1A1C2: Set var_110 = Err()
  loc_F1A1C8: Call 0.Method_arg_1C (var_88)
  loc_F1A1D9: If (var_88 <> 0) Then
  loc_F1A1E4:   Set var_110 = Err()
  loc_F1A1EA:   Call 0.Method_arg_2C (var_10C)
  loc_F1A20B:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F1A21E: End If
  loc_F1A21E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E35708
  'Data Table: 470868
  loc_E356F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35700: Call Proc_143_37_109B3F8(global_52)
  loc_E35705: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E35888
  'Data Table: 470868
  loc_E35878: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35880: Call Proc_143_37_109B3F8(global_52)
  loc_E35885: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E35828
  'Data Table: 470868
  loc_E35818: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35820: Call Proc_143_37_109B3F8(global_52)
  loc_E35825: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E35768
  'Data Table: 470868
  loc_E35758: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35760: Call Proc_143_37_109B3F8(global_52)
  loc_E35765: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1071E48
  'Data Table: 470868
  Dim unk_47087C As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_1071BC8: On Error Goto loc_1071DFF
  loc_1071BE1: unk_47087C.Execute "SELECT State.Code as SCode, State.Name as SName, State.ShortName as SShortName,Country.Name AS CCountry FROM State LEFT JOIN Country ON State.Country = Country.Code ORDER BY State.Name", var_BC, -1
  loc_1071BEC: Set var_88 = var_C0
  loc_1071BFB: var_C4 = var_88.RecordCount
  loc_1071C09: If (var_C4 = 0) Then
  loc_1071C25:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1071C35:   Exit Sub
  loc_1071C36: End If
  loc_1071C45: var_12C = MemVar_1F950B4 & "\State.ttx"
  loc_1071C4C: Set var_C0 = var_88 
  loc_1071C58: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_1071C62: Set var_88 = var_C0
  loc_1071C68: var_AC = CVar(var_12E) 'Integer
  loc_1071C6B: var_98 = var_AC 'Variant
  loc_1071C87: var_128 = MemVar_1F950B4 & "\State.RPT"
  loc_1071C90: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_1071C9B: MemVar_1F951E8 = var_C0
  loc_1071CB6: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_1071CBE: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1071CCA: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_1071CE3:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1071CEB:   Call 0.Method_arg_20 (var_138)
  loc_1071CF3:   Call 0.Method_arg_30 (var_128)
  loc_1071D39:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_1071D4F:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1071D57:     Call 0.Method_arg_20 (var_138)
  loc_1071D5F:     Call 0.Method_arg_38 ("'State Master'")
  loc_1071D6B:   End If
  loc_1071D6E: Next var_132 'Integer
  loc_1071D8C: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1071D94: Call 0.Method_arg_2C (var_D4)
  loc_1071DA2: Call 0.Method_arg_150 (var_F4)
  loc_1071DAD: Call 0.Method_arg_50 (var_128)
  loc_1071DB7: Set var_138 = Nothing
  loc_1071DD1: Set var_C0 = MemVar_1F951E8 
  loc_1071DDD: Proc_6_99_1484404(var_C0, 0, var_128)
  loc_1071DE8: MemVar_1F951E8 = var_C0
  loc_1071DFB: Set var_88 = Nothing
  loc_1071DFE: Exit Sub
  loc_1071DFF: ' Referenced from: 1071BC8
  loc_1071E07: Set var_C0 = Err()
  loc_1071E0D: Call 0.Method_arg_2C (var_128, &HFF)
  loc_1071E18: Call 0.Method_arg_50 (var_12C)
  loc_1071E34: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1071E47: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E22A0C
  'Data Table: 470868
  Dim Me As Recordset15
  loc_E229F3: Me.Requery -1
  loc_E22A03: Me.Requery -1
  loc_E22A08: Exit Sub
End Sub

Private Sub Exit_UnknownEvent_9 'E186E0
  'Data Table: 470868
  loc_E186D5: Me.Global.Unload Me
  loc_E186DD: Exit Sub
End Sub

Private Sub Form_Load() '1039F60
  'Data Table: 470868
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_B0 As TextBox
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim unk_47087C As Connection15
  Dim var_D4 As Variant
  loc_1039D20: On Error Goto loc_1039F1C
  loc_1039D2C: Set var_AC = Me.TopCtrl1
  loc_1039D32: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010007(False)
  loc_1039D48: Me.FGrid1.Visible = True
  loc_1039D57: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1039D6F: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1039D85: Set var_AC = Me.Txt
  loc_1039D8B: Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_1039DAA: Me.DGCategory.Left = CVar(var_B0.Left)
  loc_1039DC6: Set var_B8 = Me.Txt
  loc_1039DCC: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_1039DED: Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_1039E05: var_98 = CVar(((var_B0.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_1039E14: Me.DGCategory.Top = CVar(var_B0.Left)
  loc_1039E3C: unk_47087C.Execute "SELECT  Code AS Scode,Category FROM ComplaintCategory Order BY Category", var_D4, -1
  loc_1039E4D: Set global_52 = Me.Txt
  loc_1039E64: CVarUnk
  loc_1039E69: VerifyVarObj
  loc_1039E6F: Set var_AC = Me.DGCategory
  loc_1039E75: LateIdStAd
  loc_1039E98: var_D8 = "INI"
  loc_1039EA6: Call Proc_143_35_E79BD4(Proc_5_1_100EC1C(var_D8, Me, global_52), Me)
  loc_1039EBA: Set var_AC = Me.TopCtrl1
  loc_1039EC0: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030019(False)
  loc_1039ED0: Set var_AC = Me.TopCtrl1
  loc_1039ED6: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030016(True)
  loc_1039EE7: Set var_AC = Me.TopCtrl1
  loc_1039EED: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030017(False)
  loc_1039F04: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_6803000F(False)
  loc_1039F0C: Call Proc_143_39_1103B3C(global_52)
  loc_1039F11: Call Proc_143_37_109B3F8(Me.TopCtrl1)
  loc_1039F16: Call TopCtrl1_UnknownEvent_D()
  loc_1039F1B: Exit Sub
  loc_1039F1C: ' Referenced from: 1039D20
  loc_1039F24: Set var_AC = Err()
  loc_1039F2A: Call 0.Method_arg_2C (var_D8)
  loc_1039F4B: MsgBox(CVar(var_D8), &H40, "Information", var_FC, var_11C)
  loc_1039F5E: Exit Sub
  loc_1039F5F: Exit Sub
End Sub

Private Sub Form_Resize() 'E85D28
  'Data Table: 470868
  loc_E85CBE: Call 0.Method_arg_50 (var_88)
  loc_E85CD0: Me.LblFormCaption.Caption = var_88
  loc_E85CE9: Me.LblFormCaption.Left = CDbl(0)
  loc_E85CFF: Me.LblFormCaption.Top = CDbl(0)
  loc_E85D0D: Call 0.Method_arg_100 (var_90)
  loc_E85D1F: Me.LblFormCaption.Width = var_90
  loc_E85D27: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E53578
  'Data Table: 470868
  loc_E5354B: Set global_52 = Nothing
  loc_E5355D: Set global_52 = Nothing
  loc_E5356F: Set global_52 = Nothing
  loc_E53576: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8AC38
  'Data Table: 470868
  loc_E8ABD4: On Error Goto loc_E8ABF4
  loc_E8ABEB: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8ABF3: Exit Sub
  loc_E8ABF4: ' Referenced from: E8ABD4
  loc_E8ABFC: Set var_88 = Err()
  loc_E8AC02: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8AC23: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8AC36: Exit Sub
  loc_E8AC37: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63D04
  'Data Table: 470868
  loc_E63CD4: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_E63CD7:   Call DGCategory_UnknownEvent_9()
  loc_E63CDC: End If
  loc_E63CF8: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_E63CFB:   Call DGCategory_UnknownEvent_9()
  loc_E63D00: End If
  loc_E63D00: Exit Sub
  loc_E63D01: StAryRecMove
End Sub

Private Sub Fgrid1_UnknownEvent_9 '1308E4C
  'Data Table: 470868
  Dim var_150 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_110 As Variant
  Dim var_130 As String
  Dim var_1E4 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_27C As Variant
  Dim var_340 As Variant
  Dim var_360 As Variant
  Dim var_3E8 As Variant
  Dim var_4B0 As Variant
  Dim var_4D0 As Variant
  Dim var_120 As Variant
  Dim var_2DC As Variant
  Dim var_524 As Variant
  Dim unk_47087C As Connection15
  loc_13087EF: var_150 = (CLng(Me.FGrid1.ColSel) = CLng(8))
  loc_1308806: var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_130885E: If CBool(CVar(CLng(1)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_1308874:   var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_130887C:   var_DC = CVar(CLng(8)) 'Long
  loc_130889C:   var_110 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_13088A4:   var_130 = vbNullString
  loc_13088C1:   var_150 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_130891F:   If CBool(CVar(CLng(7)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_1308935:     var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_130893D:     var_DC = CVar(CLng(8)) 'Long
  loc_130894C:     Set var_9C = Me.FGrid1
  loc_1308952:     LateIdCallSt
  loc_1308988:     Set var_9C = Me.FGrid1
  loc_130899F:     Proc_6_7_F26918(var_110, CVar(CStr(var_9C.TextMatrix))), CVar(CLng(6)), CVar(CLng(Me.FGrid1.Row)), var_9C, "ü", CVar(CLng(6)))
  loc_13089B7:     var_170 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13089BF:     var_190 = CVar(CLng(7)) 'Long
  loc_1308A6E:     var_3E8 = Me.FGrid1.Row
  loc_1308A9F:     Proc_6_7_F26918(var_45C, CVar(CStr(Me.FGrid1.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_3E8)), CVar(CLng(0)), CVar(CLng(Me.FGrid1.Row)), CVar(CLng(4)), CVar(CLng(Me.FGrid1.Row)))
  loc_1308AB7:     var_4B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1308ABF:     var_4D0 = CVar(CLng(3)) 'Long
  loc_1308B09:     var_1E4 = "UPDATE ComplaintDetail SET Status='Solved', ClearingDate=" & var_110 & ", ClearingPerson='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_1308B2C:     var_2DC = var_1E4 & "',Description='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "', UName2='" & CVar(MemVar_1F950C8) 
  loc_1308B65:     var_524 = var_2DC & "' " & "WHERE Code='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "' AND CDate=" & var_45C & " AND CTime='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_1308B7C:     unk_47087C.Execute CStr(var_524 & "'"), var_568, -1
  loc_1308BF7:   Else
  loc_1308C0A:     var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_1308C12:     var_DC = CVar(CLng(8)) 'Long
  loc_1308C17:     var_130 = vbNullString
  loc_1308C21:     Set var_9C = Me.FGrid1
  loc_1308C27:     LateIdCallSt
  loc_1308C4C:     var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_1308C54:     var_DC = CVar(CLng(7)) 'Long
  loc_1308C59:     var_130 = vbNullString
  loc_1308C63:     Set var_9C = Me.FGrid1
  loc_1308C69:     LateIdCallSt
  loc_1308D36:     Proc_6_7_F26918(var_2DC, CVar(CStr(Me.FGrid1.TextMatrix))), CVar(CLng(2)), CVar(CLng(Me.FGrid1.Row)), CVar(CLng(0)), CVar(CLng(Me.FGrid1.Row)), CVar(CLng(4)), CVar(CLng(Me.FGrid1.Row)))
  loc_1308D4E:     var_340 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1308D56:     var_360 = CVar(CLng(3)) 'Long
  loc_1308D90:     var_120 = "UPDATE ComplaintDetail SET Status='UnSolved', ClearingDate=NULL, ClearingPerson='',Description='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_1308DC5:     var_27C = var_120 & "', UName2='" & CVar(MemVar_1F950C8) & "' " & "WHERE Code='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "' AND CDate=" 
  loc_1308DF3:     unk_47087C.Execute CStr(var_27C & var_2DC & " AND CTime='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "'"), var_3E8, -1
  loc_1308E4B:   End If
  loc_1308E4B: End If
  loc_1308E4B: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '10819F4
  'Data Table: 470868
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1081754: Set var_88 = Me.TopCtrl1
  loc_108175A: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_108179F: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_10817A8:   Call Form_KeyDown(KeyCode, Shift)
  loc_10817AD: End If
  loc_1081821: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_108182C:   var_9C = "+{Tab}"
  loc_1081832:   Proc_303_0_FBACC8(CStr(Me.FGrid1.Tag), 0)
  loc_108183C:   KeyCode = 0
  loc_1081842: Else
  loc_1081899:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - 1)))) Then
  loc_108189C:   End If
  loc_108189C: End If
  loc_10818CB: If ((KeyCode = &HD) Or ((CLng(KeyCode) = &H20) And (CLng(Me.FGrid1.Col) = CLng(8)))) Then
  loc_10818CE:   Call Fgrid1_UnknownEvent_9()
  loc_10818D3: End If
  loc_10818F6: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_108191A: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_1081940:   If (CLng(Me.FGrid1.Col) = CLng(7)) Then
  loc_1081956:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_108196E:     var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1081973:     var_11C = vbNullString
  loc_108197D:     Set var_B4 = Me.FGrid1
  loc_1081983:     LateIdCallSt
  loc_10819AE:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10819B6:     var_FC = CVar(CLng(8)) 'Long
  loc_10819BB:     var_11C = vbNullString
  loc_10819C5:     Set var_A0 = Me.FGrid1
  loc_10819CB:     LateIdCallSt
  loc_10819DD:   End If
  loc_10819DD: End If
  loc_10819E3: If (KeyCode = &HD) Then
  loc_10819EB:   global_60 = 0
  loc_10819EE: End If
  loc_10819F0: KeyCode = 0
  loc_10819F3: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'FCFBC8
  'Data Table: 470868
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_FCFA14: Set var_88 = Me.TopCtrl1
  loc_FCFA1A: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_FCFA33: If (CStr() = "Browse") Then
  loc_FCFA36:   Exit Sub
  loc_FCFA37: End If
  loc_FCFA5A: If (CLng(Me.FGrid1.Col) = CLng(7)) Then
  loc_FCFA61:   Set var_C4 = Me.FGrid1
  loc_FCFA85:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_FCFAB2:   Set var_B4 = var_C4
  loc_FCFAC4:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 1, 0)
  loc_FCFAEC:   Set var_88 = Me.TxtGrid
  loc_FCFAF2:   Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_B4, var_9C, Asc(var_9C))
  loc_FCFAFA:   0 = var_B4.Text
  loc_FCFB13:   If (Len(var_9C) <= 1) Then
  loc_FCFB22:     Set var_88 = Me.TxtGrid
  loc_FCFB28:     Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_B4, var_9C)
  loc_FCFB30:     var_CA = var_B4.Text
  loc_FCFB41:     Set var_B8 = Me.TxtGrid
  loc_FCFB47:     Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_C4)
  loc_FCFB4F:     var_C4.Text = var_9C
  loc_FCFB62:   End If
  loc_FCFB6E:   Set var_88 = Me.TxtGrid
  loc_FCFB74:   Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_B4)
  loc_FCFB8E:   Set var_B8 = Me.TxtGrid
  loc_FCFB94:   Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_C4)
  loc_FCFB9C:   var_C4.SelStart = Len(var_B4.Text)
  loc_FCFBAF: End If
  loc_FCFBB9: If (CLng(KeyCode) <> &HD) Then
  loc_FCFBC1:   global_60 = &HFF
  loc_FCFBC4: End If
  loc_FCFBC4: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E401AC
  'Data Table: 470868
  Dim var_8C As TextBox
  loc_E40180: Call Proc_143_38_E87DF8()
  loc_E40190: Set var_88 = Me.TxtGrid
  loc_E40196: Call 0.Method_Fgrid1_UnknownEvent_150 (1, var_8C)
  loc_E4019E: var_8C.Visible = False
  loc_E401AA: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FEC7A8
  'Data Table: 470868
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_FEC5DE: Set var_88 = Me.Txt
  loc_FEC5E4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FEC5F2: Proc_6_74_E23240(var_8C)
  loc_FEC5FE: Call Proc_143_38_E87DF8(var_8C)
  loc_FEC606: var_92 = Index
  loc_FEC611: If (var_92 = CInt(0)) Then
  loc_FEC62B:   If (Me.RecordCount > 0) Then
  loc_FEC639:     Set var_8C = Me.FGPoint
  loc_FEC651:     Proc_6_137_1192FDC(Me.DGCategory, global_52, Index)
  loc_FEC65F:   End If
  loc_FEC6AD:   Set var_88 = Me.Txt
  loc_FEC6B3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FEC6BB:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FEC6D3:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FEC6D6:     Exit Sub
  loc_FEC6D7:   End If
  loc_FEC6E4:   Set var_88 = Me.Txt
  loc_FEC6EA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FEC6F2:   var_A0 = var_8C.Text
  loc_FEC704:   var_B0 = "Category"
  loc_FEC73F:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FEC748:     Me.MoveFirst
  loc_FEC76B:     Set var_88 = Me.Txt
  loc_FEC771:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Category ='")
  loc_FEC779:     0 = var_8C.Text
  loc_FEC792:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FEC7A7:   End If
  loc_FEC7A7: End If
  loc_FEC7A7: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FB63AC
  'Data Table: 470868
  Dim Me As Recordset15
  Dim var_8C As Variant
  loc_FB621E: If (CLng(Shift) = &H1B) Then
  loc_FB6221:   Call Proc_143_38_E87DF8()
  loc_FB6226:   Exit Sub
  loc_FB6227: End If
  loc_FB6235: If (KeyCode = CInt(0)) Then
  loc_FB6255:   Set var_9C = Me.FGPoint
  loc_FB6260:   Set var_98 = Nothing
  loc_FB628E:   Proc_6_69_134A630(Me.DGCategory, Me.Txt, KeyCode, global_52, Shift, 0)
  loc_FB62FD:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FB6323:     Proc_6_138_106E830(Me.DGCategory, global_52, KeyCode, Me.FGPoint, 1)
  loc_FB6331:   End If
  loc_FB6331: End If
  loc_FB6356: If ((CBool(Me.DGCategory.Visible) = 0) And (KeyCode = CInt(0))) Then
  loc_FB6379:   If (((CLng(Shift) = &H26) Or (CLng(Shift) = &H28)) Or (CLng(Shift) = &HD)) Then
  loc_FB638E:     Me.FGrid1.Col = CVar(CLng(7))
  loc_FB639A:     Set var_8C = Me.FGrid1
  loc_FB63AB:   End If
  loc_FB63AB: End If
  loc_FB63AB: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EC3BA0
  'Data Table: 470868
  Dim arg_10 As Integer
  loc_EC3B0A: Proc_6_133_E7FB08(var_94)
  loc_EC3B13: arg_10 = CInt(var_94)
  loc_EC3B1C: Proc_6_58_E06050(arg_10, arg_10)
  loc_EC3B2F: If (KeyAscii = CInt(0)) Then
  loc_EC3B41:   var_A0 = "Category"
  loc_EC3B5C:   Proc_6_89_1470B00(Me.Txt, KeyAscii, global_52, arg_10)
  loc_EC3B8E:   Proc_6_138_106E830(Me.DGCategory, global_52, KeyAscii, Me.FGPoint)
  loc_EC3B9C: End If
  loc_EC3B9C: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FCD978
  'Data Table: 470868
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim var_A8 As String
  Dim var_B0 As TextBox
  loc_FCD7C3: var_86 = KeyCode
  loc_FCD7CE: If (var_86 = CInt(0)) Then
  loc_FCD7ED:   If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_FCD7FB:     Set var_B0 = Me.Txt
  loc_FCD801:     var_A8 = "Category"
  loc_FCD81A:     Set var_A0 = var_B0
  loc_FCD829:     Proc_6_68_12A2818(Me.DGCategory, var_A0, CInt(0), global_52)
  loc_FCD83C:   End If
  loc_FCD88A:   Set var_8C = Me.Txt
  loc_FCD890:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_A0, var_A8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_FCD898:   Shift = var_A0.Text
  loc_FCD8B0:   If (var_A8 Or (var_A8 = vbNullString)) Then
  loc_FCD8B3:     Exit Sub
  loc_FCD8B4:   End If
  loc_FCD8EF:   Set var_AC = Me.Txt
  loc_FCD8F5:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_B0)
  loc_FCD8FD:   var_B0.Text = CStr(Me.Fields.Item("Category").Value)
  loc_FCD94E:   Set var_AC = Me.Txt
  loc_FCD954:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_B0)
  loc_FCD95C:   var_B0.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_FCD972:   Call Proc_143_37_109B3F8(var_86)
  loc_FCD977: End If
  loc_FCD977: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E5101C
  'Data Table: 470868
  loc_E50FFA: Set var_88 = Me.Txt
  loc_E51000: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E5100E: Proc_6_73_E23294(var_8C)
  loc_E5101A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F8420C
  'Data Table: 470868
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_F840BF: var_86 = Cancel
  loc_F840CA: If (var_86 = CInt(0)) Then
  loc_F8411B:   Set var_94 = Me.Txt
  loc_F84121:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_F84129:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_F84141:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_F84144:     Exit Sub
  loc_F84145:   End If
  loc_F84180:   Set var_B0 = Me.Txt
  loc_F84186:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_F8418E:   var_B4.Text = CStr(Me.Fields.Item("Category").Value)
  loc_F841DF:   Set var_B0 = Me.Txt
  loc_F841E5:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_F841ED:   var_B4.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_F84203:   Call Proc_143_37_109B3F8()
  loc_F84208: End If
  loc_F84208: Exit Sub
End Sub

Private Sub CmdRefress_UnknownEvent_9 'DFE75C
  'Data Table: 470868
  loc_DFE754: Call Proc_143_37_109B3F8()
  loc_DFE759: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_9 'F46A74
  'Data Table: 470868
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4696B: Me.DGCategory.Visible = False
  loc_F4698A: If (Me.RecordCount > 0) Then
  loc_F469C9:   Set var_B4 = Me.Txt
  loc_F469CF:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0), var_B8)
  loc_F469D7:   var_B8.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_F46A0A:   var_B0 = Me.Fields.Item("Category")
  loc_F46A29:   Set var_B4 = Me.Txt
  loc_F46A2F:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0), var_B8)
  loc_F46A37:   var_B8.Text = CStr(var_B0.Value)
  loc_F46A4D: End If
  loc_F46A58: Set var_A8 = Me.Txt
  loc_F46A5E: Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0))
  loc_F46A66: var_B0.SetFocus
  loc_F46A72: Exit Sub
  loc_F46A73: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_1F 'EA5B08
  'Data Table: 470868
  Dim var_A8 As Variant
  loc_EA5A88: Set var_88 = Me.DGCategory
  loc_EA5AB2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA5ABA: Set var_BC = Me.DGCategory
  loc_EA5AF6: Proc_6_138_106E830(Me.DGCategory, global_52, CInt(0), Me.FGPoint)
  loc_EA5B04: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FAFFAC
  'Data Table: 470868
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  loc_FAFE20: If (KeyCode = 1) Then
  loc_FAFE2D:   If (CLng(Shift) = &H1B) Then
  loc_FAFE3D:     Set var_8C = Me.TxtGrid
  loc_FAFE43:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_FAFE5D:     Set var_98 = Me.TxtGrid
  loc_FAFE63:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_FAFE6B:     var_9C.Text = var_90.Tag
  loc_FAFE82:     Set var_8C = Me.FGrid1
  loc_FAFE9F:     Set var_8C = Me.TxtGrid
  loc_FAFEA5:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_FAFEAD:     var_90.Visible = FGrid1.DispID_8001
  loc_FAFEB9:     Exit Sub
  loc_FAFEBA:   End If
  loc_FAFEDD:   If (CLng(Me.FGrid1.Col) = CLng(7)) Then
  loc_FAFEEA:     If (CLng(Shift) = &HD) Then
  loc_FAFEF3:       Call Proc_143_34_EF7684(KeyCode, var_B2)
  loc_FAFEFE:       If (var_B2 = &HFF) Then
  loc_FAFF35:         Set var_90 = Me.TxtGrid
  loc_FAFF44:         Proc_6_62_1254E68(Me.FGrid1, var_90, KeyCode, Shift, global_60, 7)
  loc_FAFF60:         Set var_8C = Me.TxtGrid
  loc_FAFF66:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0, 0)
  loc_FAFF6E:         var_90.Visible = True
  loc_FAFF8C:         Me.FGrid1.Col = CVar(CLng(8))
  loc_FAFF98:         Set var_8C = Me.FGrid1
  loc_FAFFA9:       End If
  loc_FAFFA9:     End If
  loc_FAFFA9:   End If
  loc_FAFFA9: End If
  loc_FAFFA9: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E0C2A8
  'Data Table: 470868
  Dim arg_10 As Integer
  loc_E0C29A: Call Proc_143_34_EF7684(Cancel)
  loc_E0C2A3: arg_10 = Not(var_86)
  loc_E0C2A6: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC3574
  'Data Table: 470868
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC34EA: On Error Goto loc_EC352F
  loc_EC34F3: Me.MoveFirst
  loc_EC350D: var_8C = "SCode='" & MyValue
  loc_EC351D: Me.Find var_8C & "'", 0, 1
  loc_EC3529: Call Proc_143_37_109B3F8(var_A0)
  loc_EC352E: Exit Sub
  loc_EC352F: ' Referenced from: EC34EA
  loc_EC3537: Set var_A4 = Err()
  loc_EC353D: Call 0.Method_arg_2C (var_8C)
  loc_EC355E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC3571: Exit Sub
  loc_EC3572: Exit Sub
End Sub

Public Sub Proc_143_34_EF7684(arg_C) 'EF7684
  'Data Table: 470868
  Dim var_8C As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_A4 As TextBox
  Dim var_110 As Variant
  loc_EF75D0: If (arg_C = 1) Then
  loc_EF75F6:   If (CLng(Me.FGrid1.Col) = CLng(7)) Then
  loc_EF760C:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_EF7636:     Set var_8C = Me.TxtGrid
  loc_EF763C:     Call 0.Method_Proc_143_34_EF76840 (arg_C, var_A4, var_A8, CVar(CLng(Me.FGrid1.Col)))
  loc_EF7644:     var_D0 = var_A4.Text
  loc_EF764C:     var_110 = CVar(var_A8) 'String
  loc_EF7654:     Set var_124 = Me.FGrid1
  loc_EF765A:     LateIdCallSt
  loc_EF7678:   End If
  loc_EF7678: End If
  loc_EF767D: Proc_143_34_EF7684 = &HFF
End Sub

Public Sub Proc_143_35_E79BD4(arg_C) 'E79BD4
  'Data Table: 470868
  Dim var_98 As TextBox
  loc_E79B82: Set var_8C = Me.Txt
  loc_E79B88: Call 0.Method_Proc_143_35_E79BD4C (var_8E, var_86)
  loc_E79B98: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79BAE:   Set var_8C = Me.Txt
  loc_E79BB4:   Call 0.Method_Proc_143_35_E79BD40 (CInt(var_86), var_98)
  loc_E79BBC:   var_98.Enabled = arg_C
  loc_E79BCB: Next var_92 'Byte
  loc_E79BD1: Exit Sub
End Sub

Public Sub Proc_143_36_EB648C
  'Data Table: 470868
  Dim var_98 As TextBox
  loc_EB63F6: global_68 = vbNullString
  loc_EB6400: global_72 = vbNullString
  loc_EB6412: Set var_8C = Me.Txt
  loc_EB6418: Call 0.Method_Proc_143_36_EB648CC (var_8E, var_86)
  loc_EB6428: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB643E:   Set var_8C = Me.Txt
  loc_EB6444:   Call 0.Method_Proc_143_36_EB648C0 (CInt(var_86), var_98)
  loc_EB644C:   var_98.Text = vbNullString
  loc_EB6468:   Set var_8C = Me.Txt
  loc_EB646E:   Call 0.Method_Proc_143_36_EB648C0 (CInt(var_86), var_98)
  loc_EB6476:   var_98.Tag = vbNullString
  loc_EB6485: Next var_92 'Byte
  loc_EB648B: Exit Sub
End Sub

Public Sub Proc_143_37_109B3F8
  'Data Table: 470868
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_8C As Variant
  Dim var_B4 As String
  Dim var_BC As TextBox
  Dim var_CC As String
  Dim var_EC As String
  Dim var_FC As Variant
  Dim unk_47087C As Connection15
  Dim var_B0 As Variant
  loc_109B154: On Error Goto loc_109B3B3
  loc_109B15D: Proc_183_45_E5CCA8(global_52)
  loc_109B179: If (Me.RecordCount <= 0) Then
  loc_109B17C:   Call Proc_143_36_EB648C()
  loc_109B184: Else
  loc_109B1B8:   global_64 = CStr(Me.Fields.Item("SCode").Value)
  loc_109B205:   Set var_B8 = Me.Txt
  loc_109B20B:   Call 0.Method_Proc_143_37_109B3F80 (CInt(0), var_BC)
  loc_109B213:   var_BC.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_109B24E:   var_B0 = Me.Fields.Item("Category").Value
  loc_109B265:   Set var_B8 = Me.Txt
  loc_109B26B:   Call 0.Method_Proc_143_37_109B3F80 (CInt(0), var_BC)
  loc_109B273:   var_BC.Text = CStr(var_B0)
  loc_109B296:   var_CC = "SELECT CD.Code AS Scode,CD.Category,CD.CDate AS CDate,CD.CTime AS CTime,CD.Description AS Description,Depart.Name AS Depart,IsNull(CD.ClearingDate,"
  loc_109B2A6:   Proc_6_7_F26918(var_B0, MemVar_1F950EC, var_CC)
  loc_109B2B2:   var_EC = ") AS CLDate,CD.ClearingPerson AS CPerson,Status = CASE WHEN CD.Status='UnSolved' THEN ' ' ELSE 'ü' END FROM ComplaintDetail CD INNER JOIN Depart ON CD.Depart=Depart.Code WHERE CD.Category='"
  loc_109B2B7:   var_FC = var_16C & var_B0 & var_EC 
  loc_109B2E0:   var_11C = Me.Fields.Item("SCode").Value
  loc_109B2F5:   var_B4 = CStr(var_FC & var_11C & "' AND CD.Status='UnSolved' ORDER BY CD.Code")
  loc_109B2FF:   unk_47087C.Execute var_B4, -1, var_B8
  loc_109B310:   Set global_56 = var_B8
  loc_109B333: End If
  loc_109B34A: If (Me.RecordCount > 0) Then
  loc_109B356:   Call Proc_143_40_119D88C(global_56)
  loc_109B361: Else
  loc_109B374:   Me.FGrid1.Rows = 1
  loc_109B37C:   var_9C = vbNullString
  loc_109B386:   Set var_8C = Me.FGrid1
  loc_109B3AA:   Me.FGrid1.FixedRows = 1
  loc_109B3B2: End If
  loc_109B3B2: Exit Sub
  loc_109B3B3: ' Referenced from: 109B154
  loc_109B3BB: Set var_8C = Err()
  loc_109B3C1: Call 0.Method_arg_2C (var_B4, FGrid1.DispID_10000)
  loc_109B3E2: MsgBox(CVar(var_B4), &H40, "Information", var_FC, var_11C)
  loc_109B3F5: Exit Sub
End Sub

Public Sub Proc_143_38_E87DF8
  'Data Table: 470868
  loc_E87DA4: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_E87DB6:   Me.DGCategory.Visible = False
  loc_E87DBE: End If
  loc_E87DDA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E87DEC:   Me.FGPoint.Visible = False
  loc_E87DF4: End If
  loc_E87DF4: Exit Sub
End Sub

Public Sub Proc_143_39_1103B3C
  'Data Table: 470868
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_2CC As Variant
  loc_11037EC: Set var_88 = Me.FGrid1
  loc_11037FB: var_88.Cols = &HA
  loc_110380C: var_88.Rows = 2
  loc_1103814: var_98 = CVar(CLng(0)) 'Long
  loc_1103819: var_B8 = 0
  loc_1103825: LateIdCallSt
  loc_110382D: var_98 = 0
  loc_1103839: var_B8 = CVar(CLng(1)) 'Long
  loc_110383E: var_D8 = "SNo."
  loc_1103847: LateIdCallSt
  loc_1103852: var_98 = CVar(CLng(1)) 'Long
  loc_110385D: var_B8 = CVar(CInt(7)) 'Integer
  loc_1103864: LateIdCallSt
  loc_110386F: var_98 = CVar(CLng(1)) 'Long
  loc_1103874: var_B8 = &H1F4
  loc_1103880: LateIdCallSt
  loc_1103888: var_98 = 0
  loc_1103894: var_B8 = CVar(CLng(2)) 'Long
  loc_1103899: var_D8 = "Date"
  loc_11038A2: LateIdCallSt
  loc_11038AD: var_98 = CVar(CLng(2)) 'Long
  loc_11038B8: var_B8 = CVar(CInt(1)) 'Integer
  loc_11038BF: LateIdCallSt
  loc_11038CA: var_98 = CVar(CLng(2)) 'Long
  loc_11038CF: var_B8 = &H4B0
  loc_11038DB: LateIdCallSt
  loc_11038E3: var_98 = 0
  loc_11038EF: var_B8 = CVar(CLng(3)) 'Long
  loc_11038F4: var_D8 = "Time"
  loc_11038FD: LateIdCallSt
  loc_1103908: var_98 = CVar(CLng(3)) 'Long
  loc_1103913: var_B8 = CVar(CInt(1)) 'Integer
  loc_110391A: LateIdCallSt
  loc_1103925: var_98 = CVar(CLng(3)) 'Long
  loc_110392A: var_B8 = &H2BC
  loc_1103936: LateIdCallSt
  loc_110393E: var_98 = 0
  loc_110394A: var_B8 = CVar(CLng(4)) 'Long
  loc_110394F: var_D8 = "Complaint Description"
  loc_1103958: LateIdCallSt
  loc_1103963: var_98 = CVar(CLng(4)) 'Long
  loc_110396E: var_B8 = CVar(CInt(1)) 'Integer
  loc_1103975: LateIdCallSt
  loc_1103980: var_98 = CVar(CLng(4)) 'Long
  loc_1103985: var_B8 = &HFA0
  loc_1103991: LateIdCallSt
  loc_1103999: var_98 = 0
  loc_11039A5: var_B8 = CVar(CLng(5)) 'Long
  loc_11039AA: var_D8 = "Department"
  loc_11039B3: LateIdCallSt
  loc_11039BE: var_98 = CVar(CLng(5)) 'Long
  loc_11039C9: var_B8 = CVar(CInt(1)) 'Integer
  loc_11039D0: LateIdCallSt
  loc_11039DB: var_98 = CVar(CLng(5)) 'Long
  loc_11039E0: var_B8 = &H708
  loc_11039EC: LateIdCallSt
  loc_11039F4: var_98 = 0
  loc_1103A00: var_B8 = CVar(CLng(6)) 'Long
  loc_1103A05: var_D8 = "Solved Date"
  loc_1103A0E: LateIdCallSt
  loc_1103A19: var_98 = CVar(CLng(6)) 'Long
  loc_1103A24: var_B8 = CVar(CInt(1)) 'Integer
  loc_1103A2B: LateIdCallSt
  loc_1103A36: var_98 = CVar(CLng(6)) 'Long
  loc_1103A3B: var_B8 = &H4B0
  loc_1103A47: LateIdCallSt
  loc_1103A4F: var_98 = 0
  loc_1103A5B: var_B8 = CVar(CLng(7)) 'Long
  loc_1103A60: var_D8 = "Resolved By"
  loc_1103A69: LateIdCallSt
  loc_1103A74: var_98 = CVar(CLng(7)) 'Long
  loc_1103A7F: var_B8 = CVar(CInt(1)) 'Integer
  loc_1103A86: LateIdCallSt
  loc_1103A91: var_98 = CVar(CLng(7)) 'Long
  loc_1103A96: var_B8 = &H640
  loc_1103AA2: LateIdCallSt
  loc_1103AAA: var_98 = 0
  loc_1103AB6: var_B8 = CVar(CLng(8)) 'Long
  loc_1103ABB: var_D8 = "Mark"
  loc_1103AC4: LateIdCallSt
  loc_1103ACF: var_98 = CVar(CLng(8)) 'Long
  loc_1103ADA: var_B8 = CVar(CInt(4)) 'Integer
  loc_1103AE1: LateIdCallSt
  loc_1103AEC: var_98 = CVar(CLng(8)) 'Long
  loc_1103AF1: var_B8 = &H320
  loc_1103AFD: LateIdCallSt
  loc_1103B08: var_98 = CVar(CLng(9)) 'Long
  loc_1103B0D: var_B8 = 0
  loc_1103B19: LateIdCallSt
  loc_1103B2D: var_88.FixedRows = 1
  loc_1103B38: Exit Sub
  loc_1103B39: var_2CC = CVar(Nothing) 'String
End Sub

Public Sub Proc_143_40_119D88C
  'Data Table: 470868
  Dim var_A4 As Variant
  Dim var_BC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_B4 As Variant
  Dim var_100 As Variant
  loc_119D491: Me.FGrid1.Rows = 2
  loc_119D49D: Set var_BC = Me.FGrid1
  loc_119D4A0: ' Referenced from: 119D86B
  loc_119D4AF: If Not(Me.FGrid1.EOF) Then
  loc_119D4C4:   var_A4 = CVar((CLng(var_BC.Rows) - 1)) 'Long
  loc_119D4CC:   var_BC.Row = 2
  loc_119D4E0:   var_A4 = CVar(CLng(var_BC.Row)) 'Long
  loc_119D4E8:   var_F0 = CVar(CLng(1)) 'Long
  loc_119D4FB:   var_110 = CVar(CStr(CLng(var_BC.Row))) 'String
  loc_119D502:   LateIdCallSt
  loc_119D516:   var_D0 = var_BC.Row
  loc_119D51F:   var_B4 = CVar(CLng(var_D0)) 'Long
  loc_119D527:   var_100 = CVar(CLng(0)) 'Long
  loc_119D557:   var_110 = CVar(CStr(Me.var_D0.Fields.Item("SCode").Value)) 'String
  loc_119D55E:   LateIdCallSt
  loc_119D579:   var_D0 = var_BC.Row
  loc_119D582:   var_B4 = CVar(CLng(var_D0)) 'Long
  loc_119D58A:   var_100 = CVar(CLng(2)) 'Long
  loc_119D5BA:   var_110 = CVar(CStr(Me.var_D0.Fields.Item("CDate").Value)) 'String
  loc_119D5C1:   LateIdCallSt
  loc_119D5DC:   var_D0 = var_BC.Row
  loc_119D5E5:   var_B4 = CVar(CLng(var_D0)) 'Long
  loc_119D5ED:   var_100 = CVar(CLng(3)) 'Long
  loc_119D61D:   var_110 = CVar(CStr(Me.var_D0.Fields.Item("CTime").Value)) 'String
  loc_119D624:   LateIdCallSt
  loc_119D63F:   var_D0 = var_BC.Row
  loc_119D648:   var_B4 = CVar(CLng(var_D0)) 'Long
  loc_119D650:   var_100 = CVar(CLng(4)) 'Long
  loc_119D680:   var_110 = CVar(CStr(Me.var_D0.Fields.Item("Description").Value)) 'String
  loc_119D687:   LateIdCallSt
  loc_119D6A2:   var_D0 = var_BC.Row
  loc_119D6AB:   var_B4 = CVar(CLng(var_D0)) 'Long
  loc_119D6B3:   var_100 = CVar(CLng(5)) 'Long
  loc_119D6E3:   var_110 = CVar(CStr(Me.var_D0.Fields.Item("Depart").Value)) 'String
  loc_119D6EA:   LateIdCallSt
  loc_119D705:   var_D0 = var_BC.Row
  loc_119D70E:   var_B4 = CVar(CLng(var_D0)) 'Long
  loc_119D716:   var_100 = CVar(CLng(6)) 'Long
  loc_119D746:   var_110 = CVar(CStr(Me.var_D0.Fields.Item("CLDate").Value)) 'String
  loc_119D74D:   LateIdCallSt
  loc_119D768:   var_E0 = var_BC.Row
  loc_119D7A6:   var_110 = CVar(Proc_6_38_E69628(CVar(Me.var_E0.Fields.Item("CPerson")), CVar(CLng(7)), CVar(CLng(var_E0)), var_BC, var_110, CVar(CLng(7)), CVar(CLng(var_E0)))) 'String
  loc_119D7AD:   LateIdCallSt
  loc_119D7CC:   var_BC.Col = CVar(CLng(8))
  loc_119D7DA:   var_BC.CellFontName = "WINGDINGS"
  loc_119D7EA:   var_BC.CellFontSize = CVar(CDbl(&HE))
  loc_119D7F2:   var_D0 = var_BC.Row
  loc_119D7FB:   var_B4 = CVar(CLng(var_D0)) 'Long
  loc_119D803:   var_100 = CVar(CLng(8)) 'Long
  loc_119D833:   var_110 = CVar(CStr(Me.var_D0.Fields.Item("Status").Value)) 'String
  loc_119D83A:   LateIdCallSt
  loc_119D852:   var_A4 = vbNullString
  loc_119D866:   Me.Recordset15.MoveNext
  loc_119D86B:   GoTo loc_119D4A0
  loc_119D86E: End If
  loc_119D879: var_BC.Col = CVar(CLng(7))
  loc_119D880: Set var_BC = Nothing 
  loc_119D884: Proc_143_40_119D88C = FGrid1.DispID_10000
End Sub
