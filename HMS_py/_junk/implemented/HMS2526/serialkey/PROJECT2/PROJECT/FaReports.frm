VERSION 5.00
Begin VB.Form FaReports
  Caption = "ReprtForm"
  ForeColor = &HE0E0E0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaReports.frx":0
  LinkTopic = "Form3"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 165
  ClientTop = 345
  ClientWidth = 11820
  ClientHeight = 8595
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin BtnEnh BtnParam
    Left = 0
    Top = 0
    Width = 1530
    Height = 405
    Visible = 0   'False
    TabIndex = 66
  End
  Begin BtnEnh BTNPRINT
    Index = 0
    Left = 4860
    Top = 6045
    Width = 1395
    Height = 480
    TabIndex = 65
  End
  Begin BtnEnh BTNEXIT
    Left = 6255
    Top = 6045
    Width = 1395
    Height = 480
    TabIndex = 64
  End
  Begin BtnEnh BTNPRINT
    Index = 1
    Left = 3450
    Top = 6045
    Width = 1410
    Height = 480
    Visible = 0   'False
    TabIndex = 63
  End
  Begin CommandButton BTNPRINTz
    Caption = "&Dos Print"
    Index = 1
    BackColor = &HC0C0C0&
    Left = 45
    Top = 9900
    Width = 1620
    Height = 375
    Visible = 0   'False
    TabIndex = 53
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Print Report"
  End
  Begin CommandButton BTNEXITz
    Caption = "E&xit"
    BackColor = &HC0C0C0&
    Left = 10560
    Top = 10110
    Width = 1620
    Height = 375
    Visible = 0   'False
    TabIndex = 6
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DownPicture = "FaReports.frx":442
    ToolTipText = "Exit Form"
  End
  Begin CommandButton BTNPRINTz
    Caption = "Windows &Print"
    Index = 0
    BackColor = &HC0C0C0&
    Left = 8985
    Top = 10080
    Width = 1620
    Height = 375
    Visible = 0   'False
    TabIndex = 5
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Print Report"
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 7800
    Width = 11820
    Height = 360
    Visible = 0   'False
    TabIndex = 62
  End
  Begin DataGrid DGSite
    Left = 6120
    Top = 2400
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 59
  End
End

Attribute VB_Name = "FaReports"

Private global_162 As Integer
Private global_180 As Integer
Private global_164 As Variant
Private global_130 As Integer
Private global_128 As Integer
Private global_142 As Integer
Private global_140 As Integer
Private global_144 As Variant
Private global_132 As Double

Private Sub FGrid_UnknownEvent_0 'E608C4
  'Data Table: 583348
  Dim var_AC As TextBox
  loc_E60889: Set var_A8 = (CVar(CLng("16777152")))
  loc_E608A2: Set var_A8 = var_AC(0)
  loc_E608A8: Call 0.Method_FGrid_UnknownEvent_00 (0)
  loc_E608B0: var_AC.Visible = Txt.DispID_26
  loc_E608BC: Call Proc_203_55_EB8A64()
  loc_E608C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1EAA0
  'Data Table: 583348
  loc_E1EA91: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1EA9F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '113D2E0
  'Data Table: 583348
  Dim var_88 As TextBox
  Dim var_9C As String
  Dim var_AC As Variant
  Dim KeyCode As Integer
  Dim var_D4 As TextBox
  Dim var_11C As Long
  Dim var_124 As Long
  loc_113CF68: On Error Goto loc_113D2B7
  loc_113CFA2: If ( And (CDbl(Val(CStr(((CLng(KeyCode) = &H26)).Tag))) = CDbl(global_142))) Then
  loc_113CFB2:   Set var_88 = (CVar(CLng("16777215")))
  loc_113CFC8:   var_9C = "+{Tab}"
  loc_113CFCE:   Proc_303_0_FBACC8(CStr(((CLng(KeyCode) = &H26)).Tag), 0)
  loc_113CFD8:   KeyCode = 0
  loc_113CFDE: Else
  loc_113D015:   If (Txt.DispID_26 And (CDbl(Val(CStr(KeyCode((CLng(KeyCode) = &H28)).Tag))) = CDbl(global_140))) Then
  loc_113D025:     Set var_88 = (CVar(CLng("16777215")))
  loc_113D03B:     var_9C = "	"
  loc_113D041:     Proc_303_0_FBACC8(var_9C, 0)
  loc_113D04B:     KeyCode = 0
  loc_113D04E:   End If
  loc_113D04E: End If
  loc_113D05B: Set var_88 = KeyCode(KeyCode)
  loc_113D07A: Txt.DispID_26(CVar(CStr(CLng(Txt.DispID_A)))).Tag = 
  loc_113D09E: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_113D0A5:   Set var_88 = ()
  loc_113D0BD:   Set var_D4 = (CVar(CLng(Txt.DispID_A)))
  loc_113D0E1:   LateIdCallSt
  loc_113D0FD:   Set var_88 = (CVar(CLng(Txt.DispID_B))(vbNullString))
  loc_113D10C:   var_AC = CVar(CLng(Txt.DispID_A)) 'Long
  loc_113D124:   Set var_D4 = 2(vbNullString)
  loc_113D12A:   LateIdCallSt
  loc_113D13C: End If
  loc_113D140: Set var_88 = var_AC(var_D4)
  loc_113D14F: var_11C = CLng(Txt.DispID_B)
  loc_113D15F: If (var_11C = CLng(4)) Then
  loc_113D168:   var_120 = GRepFormName
  loc_113D173:   If Not (var_120 = "CashBook") Then
  loc_113D17E:     If (var_120 = "BankBook") Then
  loc_113D181:     End If
  loc_113D185:     Set var_88 = (var_11C)
  loc_113D19D:     Set var_D4 = (CVar(CLng(Txt.DispID_A)))
  loc_113D1BB:     Set var_118 = CVar(CLng(Txt.DispID_B))(vbNullString)
  loc_113D1C1:     LateIdCallSt
  loc_113D1D9:   End If
  loc_113D1D9: End If
  loc_113D1E3: If (CLng(KeyCode) = &HD) Then
  loc_113D1EA:   Set var_88 = (var_118)
  loc_113D1F9:   var_124 = CLng(Txt.DispID_A)
  loc_113D209:   If Not (var_124 = CLng(0)) Then
  loc_113D213:     If Not (var_124 = CLng(1)) Then
  loc_113D21D:       If Not (var_124 = CLng(2)) Then
  loc_113D227:         If Not (var_124 = CLng(3)) Then
  loc_113D231:           If Not (var_124 = CLng(4)) Then
  loc_113D23B:             If Not (var_124 = CLng(5)) Then
  loc_113D245:               If Not (var_124 = CLng(6)) Then
  loc_113D24F:                 If Not (var_124 = CLng(7)) Then
  loc_113D259:                   If Not (var_124 = CLng(8)) Then
  loc_113D263:                     If (var_124 = CLng(9)) Then
  loc_113D266:                     End If
  loc_113D266:                   End If
  loc_113D266:                 End If
  loc_113D266:               End If
  loc_113D266:             End If
  loc_113D266:           End If
  loc_113D266:         End If
  loc_113D266:       End If
  loc_113D266:     End If
  loc_113D27C:     Set var_118 = ()
  loc_113D297:     Proc_183_24_1045ECC(Me, (var_124))
  loc_113D2AE:     global_162 = 0
  loc_113D2B1:   End If
  loc_113D2B1: End If
  loc_113D2B3: KeyCode = 0
  loc_113D2B6: Exit Sub
  loc_113D2B7: ' Referenced from: 113CF68
  loc_113D2BD: Call 0.Method_arg_50 (var_9C, KeyCode, global_162)
  loc_113D2D2: Proc_183_57_104B0BC(var_9C, "FGrid_KeyDown")
  loc_113D2DE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F2B3C4
  'Data Table: 583348
  Dim var_9C As Long
  loc_F2B2CC: On Error Goto loc_F2B39B
  loc_F2B2D3: Set var_88 = ()
  loc_F2B2E2: var_9C = CLng(Txt.DispID_A)
  loc_F2B2F2: If Not (var_9C = CLng(0)) Then
  loc_F2B2FC:   If Not (var_9C = CLng(1)) Then
  loc_F2B306:     If Not (var_9C = CLng(2)) Then
  loc_F2B310:       If Not (var_9C = CLng(3)) Then
  loc_F2B31A:         If Not (var_9C = CLng(4)) Then
  loc_F2B324:           If Not (var_9C = CLng(5)) Then
  loc_F2B32E:             If Not (var_9C = CLng(6)) Then
  loc_F2B338:               If Not (var_9C = CLng(7)) Then
  loc_F2B342:                 If Not (var_9C = CLng(8)) Then
  loc_F2B34C:                   If (var_9C = CLng(9)) Then
  loc_F2B34F:                   End If
  loc_F2B34F:                 End If
  loc_F2B34F:               End If
  loc_F2B34F:             End If
  loc_F2B34F:           End If
  loc_F2B34F:         End If
  loc_F2B34F:       End If
  loc_F2B34F:     End If
  loc_F2B34F:   End If
  loc_F2B365:   Set var_A4 = ()
  loc_F2B380:   Proc_183_24_1045ECC(Me, (var_9C))
  loc_F2B392: End If
  loc_F2B397: global_162 = 0
  loc_F2B39A: Exit Sub
  loc_F2B39B: ' Referenced from: F2B2CC
  loc_F2B3A1: Call 0.Method_arg_50 (var_B4, global_162)
  loc_F2B3B6: Proc_183_57_104B0BC(var_B4, "FGrid_DblClick")
  loc_F2B3C2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1238F50
  'Data Table: 583348
  Dim var_A0 As Long
  Dim var_CC As String
  Dim var_A4 As TextBox
  Dim var_B0 As TextBox
  loc_1238A30: On Error Goto loc_1238F25
  loc_1238A37: Set var_8C = ()
  loc_1238A46: var_A0 = CLng(Txt.DispID_A)
  loc_1238A56: If Not (var_A0 = CLng(6)) Then
  loc_1238A60:   If Not (var_A0 = CLng(7)) Then
  loc_1238A6A:     If Not (var_A0 = CLng(8)) Then
  loc_1238A74:       If (var_A0 = CLng(9)) Then
  loc_1238A77:       End If
  loc_1238A77:     End If
  loc_1238A77:   End If
  loc_1238AB0:   Proc_183_26_11578C8(Me, (var_A0), ())
  loc_1238AC5: Else
  loc_1238ACC:   If Not (var_A0 = CLng(0)) Then
  loc_1238AD6:     If (var_A0 = CLng(1)) Then
  loc_1238AD9:     End If
  loc_1238B12:     Proc_183_26_11578C8(Me, &HFF(0), (KeyCode))
  loc_1238B27:   Else
  loc_1238B2E:     If (var_A0 = CLng(2)) Then
  loc_1238B6A:       Proc_183_26_11578C8(Me, 0(0), (KeyCode))
  loc_1238B7F:     Else
  loc_1238B86:       If (var_A0 = CLng(3)) Then
  loc_1238BC2:         Proc_183_26_11578C8(Me, 0(0), (KeyCode))
  loc_1238BD7:       Else
  loc_1238BDE:         If Not (var_A0 = CLng(4)) Then
  loc_1238BE8:           If (var_A0 = CLng(5)) Then
  loc_1238BEB:           End If
  loc_1238C24:           Proc_183_26_11578C8(Me, 0(0), (KeyCode))
  loc_1238C3C:           var_B8 = GRepFormName
  loc_1238C47:           If Not (var_B8 = "CashBook") Then
  loc_1238C52:             If (var_B8 = "BankBook") Then
  loc_1238C55:             End If
  loc_1238C59:             Set var_B0 = 0(0)
  loc_1238C7D:             var_CC = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1238C9F:             Set var_A4 = var_B0
  loc_1238CB1:             Proc_183_26_11578C8(Me, var_A4, (KeyCode))
  loc_1238CD9:             Set var_8C = var_A4(0)
  loc_1238CDF:             Call 0.Method_FGrid_UnknownEvent_C0 (var_CC, 0)
  loc_1238CE7:             0 = var_A4.Text
  loc_1238D00:             If (Len(var_CC) <= 1) Then
  loc_1238D0F:               Set var_8C = var_A4(0)
  loc_1238D15:               Call 0.Method_FGrid_UnknownEvent_C0 (var_CC)
  loc_1238D1D:               Asc(var_CC) = var_A4.Text
  loc_1238D2E:               Set var_A8 = var_B0(0)
  loc_1238D34:               Call 0.Method_FGrid_UnknownEvent_C0 (var_CC)
  loc_1238D3C:               var_B0.Text = 
  loc_1238D4F:             End If
  loc_1238D5B:             Set var_8C = var_A4(0)
  loc_1238D61:             Call 0.Method_FGrid_UnknownEvent_C0 (var_CC)
  loc_1238D69:              = var_A4.Text
  loc_1238D7B:             Set var_A8 = var_B0(0)
  loc_1238D81:             Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_CC))
  loc_1238D89:             var_B0.SelStart = 
  loc_1238D9C:           End If
  loc_1238D9F:         Else
  loc_1238DA6:           If (var_A0 = CLng(0)) Then
  loc_1238DAF:             var_D4 = GRepFormName
  loc_1238DBA:             If Not (var_D4 = "BudgetVariance") Then
  loc_1238DC5:               If (var_D4 = "Budget") Then
  loc_1238DC8:               End If
  loc_1238DCC:               Set var_B0 = ()
  loc_1238DF0:               var_CC = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1238E12:               Set var_A4 = var_B0
  loc_1238E24:               Proc_183_26_11578C8(Me, var_A4, ())
  loc_1238E4C:               Set var_8C = var_A4(0)
  loc_1238E52:               Call 0.Method_FGrid_UnknownEvent_C0 (var_CC, 0)
  loc_1238E5A:               0 = var_A4.Text
  loc_1238E73:               If (Len(var_CC) <= 1) Then
  loc_1238E82:                 Set var_8C = var_A4(0)
  loc_1238E88:                 Call 0.Method_FGrid_UnknownEvent_C0 (var_CC)
  loc_1238E90:                 Asc(var_CC) = var_A4.Text
  loc_1238EA1:                 Set var_A8 = var_B0(0)
  loc_1238EA7:                 Call 0.Method_FGrid_UnknownEvent_C0 (var_CC)
  loc_1238EAF:                 var_B0.Text = 
  loc_1238EC2:               End If
  loc_1238ECE:               Set var_8C = var_A4(0)
  loc_1238ED4:               Call 0.Method_FGrid_UnknownEvent_C0 (var_CC)
  loc_1238EDC:                = var_A4.Text
  loc_1238EEE:               Set var_A8 = var_B0(0)
  loc_1238EF4:               Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_CC))
  loc_1238EFC:               var_B0.SelStart = 
  loc_1238F0F:             End If
  loc_1238F0F:           End If
  loc_1238F0F:         End If
  loc_1238F0F:       End If
  loc_1238F0F:     End If
  loc_1238F0F:   End If
  loc_1238F0F: End If
  loc_1238F19: If (CLng(KeyCode) <> &HD) Then
  loc_1238F21:   global_162 = &HFF
  loc_1238F24: End If
  loc_1238F24: Exit Sub
  loc_1238F25: ' Referenced from: 1238A30
  loc_1238F2B: Call 0.Method_arg_50 (var_CC)
  loc_1238F40: Proc_183_57_104B0BC(var_CC, "FGrid_KeyPress")
  loc_1238F4C: Exit Sub
  loc_1238F4D: If global_162 Then Exit Sub
  loc_1238F4D: End If
End Sub

Private Sub FGrid_UnknownEvent_13 'E1E6E0
  'Data Table: 583348
  loc_E1E6D1: Set var_A8 = (CVar(CLng("16777152")))
  loc_E1E6DF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1EAF0
  'Data Table: 583348
  loc_E1EAE1: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1EAEF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E458C8
  'Data Table: 583348
  Dim var_8C As TextBox
  loc_E458A7: Set var_88 = var_8C(0)
  loc_E458AD: Call 0.Method_FGrid_UnknownEvent_150 (0)
  loc_E458B5: var_8C.Visible = 
  loc_E458C1: Call Proc_203_55_EB8A64()
  loc_E458C6: Exit Sub
End Sub

Private Sub DGGroup_UnknownEvent_9 'FD41A4
  'Data Table: 583348
  Dim Me As Recordset15
  Dim var_B4 As TextBox
  Dim var_C8 As String
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  loc_FD3FEC: On Error Goto loc_FD4179
  loc_FD3FFE: (False).Visible = 
  loc_FD401D: If (Me.RecordCount > 0) Then
  loc_FD403A:   var_EC = Val(CStr(().Tag))
  loc_FD4079:   Set var_CC = var_D0(CInt(var_EC))
  loc_FD407F:   Call 0.Method_DGGroup_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_FD4087:   var_D0.Tag = var_EC
  loc_FD40AB:   Set var_B4 = ()
  loc_FD40C1:   var_EC = Val(CStr(var_B4.Tag))
  loc_FD4100:   Set var_CC = var_D0(CInt(var_EC))
  loc_FD4106:   Call 0.Method_DGGroup_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_FD410E:   var_D0.Text = var_EC
  loc_FD412E: End If
  loc_FD4140: var_C8 = CStr(().Tag)
  loc_FD4148: var_EC = Val(var_C8)
  loc_FD4156: Set var_B0 = var_B4(CInt(var_EC))
  loc_FD415C: Call 0.Method_DGGroup_UnknownEvent_90 (var_EC)
  loc_FD4164: var_B4.SetFocus
  loc_FD4178: Exit Sub
  loc_FD4179: ' Referenced from: FD3FEC
  loc_FD417F: Call 0.Method_arg_50 (var_C8)
  loc_FD4187: var_F0 = "DGGroup_Click"
  loc_FD4194: Proc_183_57_104B0BC(var_C8)
  loc_FD41A0: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E47BD8
  'Data Table: 583348
  loc_E47BBB: Set var_88 = var_8C(KeyCode)
  loc_E47BC1: Call 0.Method_GridSel_UnknownEvent_00 (CVar(CLng("16777152")))
  loc_E47BD5: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_8 'E471B0
  'Data Table: 583348
  loc_E47193: Set var_88 = var_8C(KeyCode)
  loc_E47199: Call 0.Method_GridSel_UnknownEvent_80 (CVar(CLng("15595518")))
  loc_E471AD: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_9 'FB2320
  'Data Table: 583348
  Dim var_F8 As String
  Dim var_170 As String
  loc_FB21B4: On Error Goto loc_FB22F6
  loc_FB21BD: If (KeyCode = 1) Then
  loc_FB2207:   If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_FB2213:     Set var_88 = var_8C(1)
  loc_FB2219:     Call 0.Method_GridSel_UnknownEvent_90 ()
  loc_FB2241:     Set var_A0 = var_A4(1)
  loc_FB2247:     Call 0.Method_GridSel_UnknownEvent_90 (3)
  loc_FB225A:     var_F8 = CStr(Txt.DispID_41)
  loc_FB226D:     Set var_FC = var_100(1)
  loc_FB2273:     Call 0.Method_GridSel_UnknownEvent_90 (var_F8 & vbCrLf)
  loc_FB229B:     Set var_114 = var_118(1)
  loc_FB22A1:     Call 0.Method_GridSel_UnknownEvent_90 (4, CVar(CLng(Txt.DispID_A)))
  loc_FB22C5:     (CVar(CLng(Txt.DispID_A)) & CStr(Txt.DispID_41)).Text = 
  loc_FB22F5:   End If
  loc_FB22F5: End If
  loc_FB22F5: Exit Sub
  loc_FB22F6: ' Referenced from: FB21B4
  loc_FB22FC: Call 0.Method_arg_50 (var_F8)
  loc_FB2304: var_170 = "GridSel_Click"
  loc_FB2311: Proc_183_57_104B0BC(var_F8)
  loc_FB231D: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A '1228500
  'Data Table: 583348
  Dim var_190 As Variant
  Dim var_8C As String
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  Dim var_1E4 As Integer
  Dim var_1EC As String
  loc_1228028: On Error Goto loc_12284D8
  loc_1228031: If (Shift = &HD) Then
  loc_1228042:   Proc_303_0_FBACC8("	")
  loc_122804A: End If
  loc_1228054: Set var_94 = var_98(KeyCode)
  loc_122805A: Call 0.Method_GridSel_UnknownEvent_A0 (0)
  loc_122807B: If (CLng(Txt.DispID_4) < 1) Then
  loc_122807E:   Exit Sub
  loc_122807F: End If
  loc_1228093: Set var_94 = var_98(KeyCode)
  loc_1228099: Call 0.Method_GridSel_UnknownEvent_A0 ((CLng(Shift) = &H20))
  loc_12280BB: If ( And (CLng(Txt.DispID_B) = 0)) Then
  loc_12280CE:   Set var_94 = var_98(KeyCode)
  loc_12280D4:   Call 0.Method_GridSel_UnknownEvent_A0 ("WINGDINGS")
  loc_12280FA:   Set var_94 = var_98(KeyCode)
  loc_1228100:   Call 0.Method_GridSel_UnknownEvent_A0 (CVar(CDbl(&HE)))
  loc_122811E:   Set var_94 = var_98(KeyCode)
  loc_1228124:   Call 0.Method_GridSel_UnknownEvent_A0 (Txt.DispID_4E)
  loc_122814D:   Set var_CC = var_D0(KeyCode)
  loc_1228153:   Call 0.Method_GridSel_UnknownEvent_A0 (0, CVar(CLng(Txt.DispID_A)))
  loc_1228171:   Set var_164 = var_168(KeyCode)
  loc_1228177:   Call 0.Method_GridSel_UnknownEvent_A0 (Txt.DispID_41)
  loc_1228188:   var_190 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_12281D6:   Set var_17C = var_180(KeyCode)
  loc_12281DC:   Call 0.Method_GridSel_UnknownEvent_A0 (CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_12281E4:   LateIdCallSt
  loc_1228218:   var_1E2 = KeyCode
  loc_1228221:   If (var_1E2 = 1) Then
  loc_1228235:     var_86 = CInt((UBound(global_96, 1) + 1))
  loc_1228247:     ReDim Preserve global_96(0 To CLng(var_86))
  loc_122825B:     Set var_94 = var_98(KeyCode)
  loc_1228261:     Call 0.Method_GridSel_UnknownEvent_A0 (var_86, var_1E2, var_180)
  loc_122827D:     global_96(CLng(var_86)) = CInt(CLng(Txt.DispID_A))
  loc_122828B:   Else
  loc_1228291:     If (var_1E2 = 2) Then
  loc_12282A5:       var_86 = CInt((UBound(global_100, 1) + 1))
  loc_12282B7:       ReDim Preserve global_100(0 To CLng(var_86))
  loc_12282CB:       Set var_94 = var_98(KeyCode)
  loc_12282D1:       Call 0.Method_GridSel_UnknownEvent_A0 (var_86, var_190)
  loc_12282ED:       global_100(CLng(var_86)) = CInt(CLng(Txt.DispID_A))
  loc_12282FB:     Else
  loc_1228301:       If (var_1E2 = 3) Then
  loc_1228315:         var_86 = CInt((UBound(global_104, 1) + 1))
  loc_1228327:         ReDim Preserve global_104(0 To CLng(var_86))
  loc_122833B:         Set var_94 = var_98(KeyCode)
  loc_1228341:         Call 0.Method_GridSel_UnknownEvent_A0 (var_86)
  loc_122835D:         global_104(CLng(var_86)) = CInt(CLng(Txt.DispID_A))
  loc_1228368:       End If
  loc_1228368:     End If
  loc_1228368:   End If
  loc_1228368: End If
  loc_122836B: var_1E4 = Shift
  loc_1228378: If Not (var_1E4 = CInt(&H26)) Then
  loc_1228385:   If Not (var_1E4 = CInt(&H28)) Then
  loc_1228392:     If Not (var_1E4 = CInt(&H22)) Then
  loc_122839F:       If (var_1E4 = CInt(&H21)) Then
  loc_12283A2:       End If
  loc_12283A2:     End If
  loc_12283A2:   End If
  loc_12283E9:   If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_12283F5:     Set var_94 = var_98(1)
  loc_12283FB:     Call 0.Method_GridSel_UnknownEvent_A0 (var_1E4)
  loc_1228423:     Set var_CC = var_D0(1)
  loc_1228429:     Call 0.Method_GridSel_UnknownEvent_A0 (3, CVar(CLng(Txt.DispID_A)))
  loc_122843C:     var_8C = CStr(Txt.DispID_41)
  loc_122844F:     Set var_164 = var_168(1)
  loc_1228455:     Call 0.Method_GridSel_UnknownEvent_A0 (var_8C & vbCrLf)
  loc_122847D:     Set var_17C = var_180(1)
  loc_1228483:     Call 0.Method_GridSel_UnknownEvent_A0 (4, CVar(CLng(Txt.DispID_A)))
  loc_12284A7:     (Txt.DispID_4D & CStr(Txt.DispID_41)).Text = 
  loc_12284D7:   End If
  loc_12284D7: End If
  loc_12284D7: Exit Sub
  loc_12284D8: ' Referenced from: 1228028
  loc_12284DE: Call 0.Method_arg_50 (var_8C)
  loc_12284E6: var_1EC = "GridSel_KeyDown"
  loc_12284F3: Proc_183_57_104B0BC(var_8C)
  loc_12284FF: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_C '11E7F90
  'Data Table: 583348
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_BC As Fields15
  Dim var_D0 As Field20
  Dim Shift As Integer
  Dim var_D4 As String
  Dim var_E4 As String
  Dim var_E8 As String
  Dim var_88 As TextBox
  loc_11E7B2C: On Error Goto loc_11E7F66
  loc_11E7B39: Set var_88 = var_8C(KeyCode)
  loc_11E7B3F: Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11E7B60: Set var_A0 = var_A4(KeyCode)
  loc_11E7B66: Call 0.Method_GridSel_UnknownEvent_C0 ((CLng(Txt.DispID_B) = 0))
  loc_11E7B90: If ( Or (CLng(Txt.DispID_A) = 0)) Then
  loc_11E7B93:   Exit Sub
  loc_11E7B94: End If
  loc_11E7B97: var_B6 = KeyCode
  loc_11E7BA0: If (var_B6 = 1) Then
  loc_11E7BB4:   Set var_88 = var_8C(KeyCode)
  loc_11E7BBA:   Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11E7BC9:   Set var_A0 = var_A4(KeyCode)
  loc_11E7BCF:   Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11E7C01:   var_D0 = Me.Fields.Item(CVar(CLng(var_9C)))
  loc_11E7C33:   Set var_DC = var_8C
  loc_11E7C42:   Proc_183_11_113DA88((var_B6), var_DC, global_56, Shift)
  loc_11E7C68:   Shift = 0
  loc_11E7CB2:   If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_11E7CBE:     Set var_88 = var_8C(1)
  loc_11E7CC4:     Call 0.Method_GridSel_UnknownEvent_C0 (Shift, var_D0.Name, "16777152")
  loc_11E7CEC:     Set var_A0 = var_A4(1)
  loc_11E7CF2:     Call 0.Method_GridSel_UnknownEvent_C0 (3, CVar(CLng(Txt.DispID_A)))
  loc_11E7D18:     Set var_BC = var_D0(1)
  loc_11E7D1E:     Call 0.Method_GridSel_UnknownEvent_C0 (CStr(Txt.DispID_41) & vbCrLf, "15595518")
  loc_11E7D46:     Set var_D8 = var_DC(1)
  loc_11E7D4C:     Call 0.Method_GridSel_UnknownEvent_C0 (4, CVar(CLng(Txt.DispID_A)))
  loc_11E7D70:     (Txt.DispID_B & CStr(Txt.DispID_41)).Text = 
  loc_11E7DA0:   End If
  loc_11E7DA3: Else
  loc_11E7DA9:   If (var_B6 = 2) Then
  loc_11E7DBD:     Set var_88 = var_8C(KeyCode)
  loc_11E7DC3:     Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11E7DD2:     Set var_A0 = var_A4(KeyCode)
  loc_11E7DD8:     Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11E7E12:     var_D4 = Me.Fields.Item(CVar(CLng(var_9C))).Name
  loc_11E7E1A:     var_E8 = "15595518"
  loc_11E7E23:     var_E4 = "16777152"
  loc_11E7E4B:     Proc_183_11_113DA88((), var_8C, global_60, Shift)
  loc_11E7E71:     Shift = 0
  loc_11E7E77:   Else
  loc_11E7E7D:     If (var_B6 = 3) Then
  loc_11E7E91:       Set var_88 = var_8C(KeyCode)
  loc_11E7E97:       Call 0.Method_GridSel_UnknownEvent_C0 (var_E4, var_E8)
  loc_11E7EA6:       Set var_A0 = var_A4(KeyCode)
  loc_11E7EAC:       Call 0.Method_GridSel_UnknownEvent_C0 (Txt.DispID_B)
  loc_11E7EE6:       var_D4 = Me.Fields.Item(CVar(CLng(var_9C))).Name
  loc_11E7EEE:       var_E8 = "15595518"
  loc_11E7EF7:       var_E4 = "16777152"
  loc_11E7F1F:       Proc_183_11_113DA88(var_D4(Shift), var_8C, global_64, Shift)
  loc_11E7F45:       Shift = 0
  loc_11E7F48:     End If
  loc_11E7F48:   End If
  loc_11E7F48: End If
  loc_11E7F4D: var_D4 = CStr(KeyCode)
  loc_11E7F5A: Shift(var_D4).Tag = var_D4
  loc_11E7F65: Exit Sub
  loc_11E7F66: ' Referenced from: 11E7B2C
  loc_11E7F6C: Call 0.Method_arg_50 (var_D4, var_E4)
  loc_11E7F81: Proc_183_57_104B0BC(var_D4, "GridSel_KeyPress")
  loc_11E7F8D: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E81554
  'Data Table: 583348
  loc_E814F6: Set var_88 = var_8C(KeyCode)
  loc_E814FC: Call 0.Method_GridSel_UnknownEvent_E0 ()
  loc_E8151D: If (CLng(Txt.DispID_B) <> 0) Then
  loc_E81520:   Exit Sub
  loc_E81521: End If
  loc_E8152B: Set var_88 = var_8C(KeyCode)
  loc_E81531: Call 0.Method_GridSel_UnknownEvent_E0 ()
  loc_E81546: global_180 = CInt(CLng(Txt.DispID_A))
  loc_E81553: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1145D80
  'Data Table: 583348
  Dim var_E8 As String
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_1145A00: On Error Goto loc_1145D58
  loc_1145A0D: Set var_8C = var_90(KeyCode)
  loc_1145A13: Call 0.Method_GridSel_UnknownEvent_100 ()
  loc_1145A3E: If ((CLng(Txt.DispID_B) <> 0) Or (global_180 = 0)) Then
  loc_1145A41:   Exit Sub
  loc_1145A42: End If
  loc_1145A4C: Set var_8C = var_90(KeyCode)
  loc_1145A52: Call 0.Method_GridSel_UnknownEvent_100 ()
  loc_1145A83: For var_A4 = global_180 To CInt(CLng(Txt.DispID_C)): var_88 = var_A4 'Integer
  loc_1145A9C:   Set var_8C = var_90(KeyCode)
  loc_1145AA2:   Call 0.Method_GridSel_UnknownEvent_100 (CVar(CLng(var_88)), global_180)
  loc_1145AC9:   Set var_8C = var_90(KeyCode)
  loc_1145ACF:   Call 0.Method_GridSel_UnknownEvent_100 (0, Txt.DispID_A)
  loc_1145AF3:   Set var_8C = var_90(KeyCode)
  loc_1145AF9:   Call 0.Method_GridSel_UnknownEvent_100 ("WINGDINGS", Txt.DispID_B)
  loc_1145B1F:   Set var_8C = var_90(KeyCode)
  loc_1145B25:   Call 0.Method_GridSel_UnknownEvent_100 (CVar(CDbl(&HE)), Txt.DispID_4D)
  loc_1145B55:   Set var_8C = var_90(KeyCode)
  loc_1145B5B:   Call 0.Method_GridSel_UnknownEvent_100 (0, CVar(CLng(var_88)))
  loc_1145B9B:   var_E8 = CStr(var_A0)
  loc_1145BC1:   Set var_14C = var_150(KeyCode)
  loc_1145BC7:   Call 0.Method_GridSel_UnknownEvent_100 (CVar(CStr(IIf((var_E8 = "ü"), " ", "ü"))), 0, CVar(CLng(var_88)))
  loc_1145BCF:   LateIdCallSt
  loc_1145BF7:   var_1B2 = KeyCode
  loc_1145C00:   If (var_1B2 = 1) Then
  loc_1145C14:     var_86 = CInt((UBound(global_96, 1) + 1))
  loc_1145C26:     ReDim Preserve global_96(0 To CLng(var_86))
  loc_1145C3A:     Set var_8C = var_90(KeyCode)
  loc_1145C40:     Call 0.Method_GridSel_UnknownEvent_100 (var_86, var_1B2, var_150)
  loc_1145C5C:     global_96(CLng(var_86)) = CInt(CLng(Txt.DispID_A))
  loc_1145C6A:   Else
  loc_1145C70:     If (var_1B2 = 2) Then
  loc_1145C84:       var_86 = CInt((UBound(global_100, 1) + 1))
  loc_1145C96:       ReDim Preserve global_100(0 To CLng(var_86))
  loc_1145CAA:       Set var_8C = var_90(KeyCode)
  loc_1145CB0:       Call 0.Method_GridSel_UnknownEvent_100 (var_86, Txt.DispID_41)
  loc_1145CCC:       global_100(CLng(var_86)) = CInt(CLng(Txt.DispID_A))
  loc_1145CDA:     Else
  loc_1145CE0:       If (var_1B2 = 3) Then
  loc_1145CF4:         var_86 = CInt((UBound(global_104, 1) + 1))
  loc_1145D06:         ReDim Preserve global_104(0 To CLng(var_86))
  loc_1145D1A:         Set var_8C = var_90(KeyCode)
  loc_1145D20:         Call 0.Method_GridSel_UnknownEvent_100 (var_86, Txt.DispID_4E)
  loc_1145D3C:         global_104(CLng(var_86)) = CInt(CLng(Txt.DispID_A))
  loc_1145D47:       End If
  loc_1145D47:     End If
  loc_1145D47:   End If
  loc_1145D4A: Next var_A4 'Integer
  loc_1145D54: global_180 = 0
  loc_1145D57: Exit Sub
  loc_1145D58: ' Referenced from: 1145A00
  loc_1145D5E: Call 0.Method_arg_50 (var_E8)
  loc_1145D73: Proc_183_57_104B0BC(var_E8, "GridSel_MouseUp")
  loc_1145D7F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_12 'F98020
  'Data Table: 583348
  loc_F97EE6: If (KeyCode = 1) Then
  loc_F97F30:   If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_F97F3C:     Set var_88 = var_8C(1)
  loc_F97F42:     Call 0.Method_GridSel_UnknownEvent_120 ()
  loc_F97F6A:     Set var_A0 = var_A4(1)
  loc_F97F70:     Call 0.Method_GridSel_UnknownEvent_120 (3)
  loc_F97F96:     Set var_FC = var_100(1)
  loc_F97F9C:     Call 0.Method_GridSel_UnknownEvent_120 (CStr(Txt.DispID_41) & vbCrLf)
  loc_F97FC4:     Set var_114 = var_118(1)
  loc_F97FCA:     Call 0.Method_GridSel_UnknownEvent_120 (4, CVar(CLng(Txt.DispID_A)))
  loc_F97FEE:     (CVar(CLng(Txt.DispID_A)) & CStr(Txt.DispID_41)).Text = 
  loc_F9801E:   End If
  loc_F9801E: End If
  loc_F9801E: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_13 'E47CA8
  'Data Table: 583348
  loc_E47C8B: Set var_88 = var_8C(KeyCode)
  loc_E47C91: Call 0.Method_GridSel_UnknownEvent_130 (CVar(CLng("16777152")))
  loc_E47CA5: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E47280
  'Data Table: 583348
  loc_E47263: Set var_88 = var_8C(KeyCode)
  loc_E47269: Call 0.Method_GridSel_UnknownEvent_140 (CVar(CLng("15595518")))
  loc_E4727D: Exit Sub
End Sub

Private Sub Form_Load() '12BADF8
  'Data Table: 583348
  Dim var_A8 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_C4 As Variant
  Dim var_D0 As TextBox
  loc_12BA7B0: On Error Goto loc_12BADD0
  loc_12BA7C0: Set var_A8 = (CVar(CLng(MemVar_1F951B8)))
  loc_12BA7C6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_12()
  loc_12BA7D5: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_12BA7EC: Set var_A8 = var_AC(1)
  loc_12BA7F2: Call 0.Method_Form_Load0 (CVar(CLng(MemVar_1F951B8)))
  loc_12BA7FA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_12()
  loc_12BA818: Set var_A8 = var_AC(2)
  loc_12BA81E: Call 0.Method_Form_Load0 (CVar(CLng(MemVar_1F951B8)))
  loc_12BA826: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_12()
  loc_12BA844: Set var_A8 = var_AC(3)
  loc_12BA84A: Call 0.Method_Form_Load0 (CVar(CLng(MemVar_1F951B8)))
  loc_12BA852: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_12()
  loc_12BA86C: (CLng(MemVar_1F951B4)).BackColor = 
  loc_12BA882: (CLng(MemVar_1F951B4)).BackColor = 
  loc_12BA891: Call 0.Method_arg_74 (CDbl(0))
  loc_12BA89D: Call 0.Method_arg_7C (CDbl(0))
  loc_12BA8AA: Call 0.Method_Me4 (CDbl(11900))
  loc_12BA8B7: Call 0.Method_MeC (CDbl(7085))
  loc_12BA8BC: Call Proc_203_54_17A3C14()
  loc_12BA8CB: Set var_A8 = Me.TopCtrl1
  loc_12BA8D1: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005("Add")
  loc_12BA8E5: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_12BA8F6: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_12BA907: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_12BA918: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_12BA929: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_12BA93A: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_12BA94B: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_12BA95C: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_12BA96D: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_12BA97E: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_12BA998: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_12BA9A6: Set var_A8 = MemVar_1F95044
  loc_12BA9B5: Call 0.Method_Form_Load8 (var_A8)
  loc_12BA9CB: Me.TopCtrl1.Clone
  loc_12BA9E5: Call 0.Method_arg_50 (var_A8, -1)
  loc_12BAA15: Me.Connection15.Execute "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_C4, -1
  loc_12BAA26: Set global_68 = var_A8
  loc_12BAA52: If (Me.RecordCount > 0) Then
  loc_12BAA67:   var_A8 = Me.Fields
  loc_12BAA8C:   Set var_CC = var_D0(0)
  loc_12BAA92:   Call 0.Method_Form_Load0 (Proc_183_2_E5AE94(CVar(var_A8.Item("TagadaHeader1")), var_A8))
  loc_12BAA9A:   var_D0.Text = var_A8
  loc_12BAAE5:   Set var_CC = var_D0(1)
  loc_12BAAEB:   Call 0.Method_Form_Load0 (Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaHeader2"))))
  loc_12BAAF3:   var_D0.Text = 
  loc_12BAB3E:   Set var_CC = var_D0(2)
  loc_12BAB44:   Call 0.Method_Form_Load0 (Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaHeader3"))))
  loc_12BAB4C:   var_D0.Text = 
  loc_12BAB97:   Set var_CC = var_D0(3)
  loc_12BAB9D:   Call 0.Method_Form_Load0 (Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaHeader4"))))
  loc_12BABA5:   var_D0.Text = 
  loc_12BABF0:   Set var_CC = var_D0(4)
  loc_12BABF6:   Call 0.Method_Form_Load0 (Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaHeader5"))))
  loc_12BABFE:   var_D0.Text = 
  loc_12BAC49:   Set var_CC = var_D0(0)
  loc_12BAC4F:   Call 0.Method_Form_Load0 (Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaFooter1"))))
  loc_12BAC57:   var_D0.Text = 
  loc_12BACA2:   Set var_CC = var_D0(1)
  loc_12BACA8:   Call 0.Method_Form_Load0 (Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaFooter2"))))
  loc_12BACB0:   var_D0.Text = 
  loc_12BACFB:   Set var_CC = var_D0(2)
  loc_12BAD01:   Call 0.Method_Form_Load0 (Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaFooter3"))))
  loc_12BAD09:   var_D0.Text = 
  loc_12BAD54:   Set var_CC = var_D0(3)
  loc_12BAD5A:   Call 0.Method_Form_Load0 (Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaFooter4"))))
  loc_12BAD62:   var_D0.Text = 
  loc_12BADA1:   var_B0 = Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaFooter5")))
  loc_12BADAD:   Set var_CC = var_D0(4)
  loc_12BADB3:   Call 0.Method_Form_Load0 (var_B0)
  loc_12BADBB:   var_D0.Text = 
  loc_12BADCF: End If
  loc_12BADCF: Exit Sub
  loc_12BADD0: ' Referenced from: 12BA7B0
  loc_12BADD6: Call 0.Method_arg_50 (var_B0)
  loc_12BADDE: var_D4 = "Form_Load"
  loc_12BADEB: Proc_183_57_104B0BC(var_B0)
  loc_12BADF7: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EB28F8
  'Data Table: 583348
  loc_EB2867: Set global_56 = Nothing
  loc_EB2879: Set global_60 = Nothing
  loc_EB288B: Set global_184 = Nothing
  loc_EB289D: Set global_68 = Nothing
  loc_EB28AF: Set global_72 = Nothing
  loc_EB28C1: Set global_76 = Nothing
  loc_EB28D3: Set global_80 = Nothing
  loc_EB28DF: MemVar_1F951E8 = Nothing
  loc_EB28EE: Set global_188 = Nothing
  loc_EB28F5: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E690D8
  'Data Table: 583348
  loc_E69090: On Error Goto loc_E690AE
  loc_E690A5: Proc_183_40_F3169C(Me, KeyCode)
  loc_E690AD: Exit Sub
  loc_E690AE: ' Referenced from: E69090
  loc_E690B4: Call 0.Method_arg_50 (var_8C)
  loc_E690C9: Proc_183_57_104B0BC(var_8C, "Form_KeyDown")
  loc_E690D5: Exit Sub
End Sub

Private Sub TEXT_GotFocus(Index As Integer) '10F57F4
  'Data Table: 583348
  Dim var_8A As Integer
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_108 As TextBox
  Dim var_134 As Variant
  loc_10F54E8: On Error Goto loc_10F57C9
  loc_10F54EE: var_8A = Index
  loc_10F54F9: If Not (var_8A = CInt(&HA)) Then
  loc_10F5504:   If Not (var_8A = CInt(9)) Then
  loc_10F550F:     If (var_8A = CInt(8)) Then
  loc_10F5512:     End If
  loc_10F5512:   End If
  loc_10F551F:   ReDim var_90(0 To 5)
  loc_10F5536:   var_90(0) = "="
  loc_10F5545:   var_90(1) = "<"
  loc_10F5554:   var_90(2) = "<="
  loc_10F5563:   var_90(3) = ">"
  loc_10F5572:   var_90(4) = ">="
  loc_10F5581:   var_90(5) = "<>"
  loc_10F5598:   global_164 = Array(var_90)
  loc_10F55BE:   Set var_108 = ()
  loc_10F55D8:   Set global_184 = Proc_183_37_EFEF78(var_8A(global_164), var_108, Index)
  loc_10F55EC: Else
  loc_10F55F4:   If (var_8A = CInt(&HC)) Then
  loc_10F5613:     Me.Recordset15.CursorLocation = 3
  loc_10F562A:     var_B0 = CVar(MemVar_1F951E0) 'Address
  loc_10F563B:     Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", var_B0, 0
  loc_10F5649:     CVarUnk
  loc_10F564E:     VerifyVarObj
  loc_10F5654:     Set var_104 = Me.DGSite
  loc_10F565A:     LateIdStAd
  loc_10F56BC:     Call 0.Method_TEXT_GotFocus0 (var_124, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_108(Index), New)
  loc_10F56C4:     1 = var_108.Text
  loc_10F56DC:     If (-1 Or (var_124 = vbNullString)) Then
  loc_10F56DF:       Exit Sub
  loc_10F56E0:     End If
  loc_10F56ED:     Set var_104 = var_108(Index)
  loc_10F56F3:     Call 0.Method_TEXT_GotFocus0 (var_124, global_164)
  loc_10F56FB:     6 = var_108.Text
  loc_10F5703:     var_134 = CVar(var_124) 'String
  loc_10F5748:     If CBool(var_134 <> Me.Fields.Item("Name").Value) Then
  loc_10F5751:       Me.MoveFirst
  loc_10F5776:       Set var_104 = var_108(Index)
  loc_10F577C:       Call 0.Method_TEXT_GotFocus0 (var_124, "Name =", 0)
  loc_10F5784:       1 = var_108.Text
  loc_10F5792:       Proc_183_9_EAB2F0(var_134, CVar(var_124))
  loc_10F57A8:       Me.Find CStr(var_B0 & var_134), , 
  loc_10F57C0:     End If
  loc_10F57C0:   End If
  loc_10F57C0: End If
  loc_10F57C5: Set var_88 = Nothing
  loc_10F57C8: Exit Sub
  loc_10F57C9: ' Referenced from: 10F54E8
  loc_10F57CF: Call 0.Method_arg_50 (var_124)
  loc_10F57D7: var_14C = "Text_GotFocus"
  loc_10F57E4: Proc_183_57_104B0BC(var_124)
  loc_10F57F0: Exit Sub
End Sub

Private Sub TEXT_KeyDown(KeyCode As Integer, Shift As Integer) '10A1524
  'Data Table: 583348
  Dim var_8C As Integer
  Dim var_90 As Frame
  Dim var_98 As TextBox
  Dim var_A8 As Frame
  Dim var_B4 As TextBox
  Dim var_C0 As TextBox
  Dim var_CC As TextBox
  loc_10A1294: On Error Goto loc_10A14F9
  loc_10A129D: If (Shift = &HD) Then
  loc_10A12A8:   var_88 = "	"
  loc_10A12AE:   Proc_303_0_FBACC8(var_88)
  loc_10A12B6: End If
  loc_10A12B9: var_8C = KeyCode
  loc_10A12C2: If Not (var_8C = 0) Then
  loc_10A12CB:   If Not (var_8C = 1) Then
  loc_10A12D4:     If (var_8C = 2) Then
  loc_10A12D7:     End If
  loc_10A12D7:   End If
  loc_10A12E1:   Set var_90 = var_94(KeyCode)
  loc_10A12E7:   Call 0.Method_TEXT_KeyDown0 (var_8C)
  loc_10A1302:   Proc_183_21_FA21CC(var_94, Shift, &HA)
  loc_10A1311: Else
  loc_10A1317:   If (var_8C = 5) Then
  loc_10A1324:     Set var_90 = var_94(KeyCode)
  loc_10A132A:     Call 0.Method_TEXT_KeyDown0 (2)
  loc_10A133F:     Set var_98 = var_94
  loc_10A1345:     Proc_183_21_FA21CC(var_98, Shift, 3)
  loc_10A1354:   Else
  loc_10A135C:     If Not (var_8C = CInt(&HA)) Then
  loc_10A1367:       If Not (var_8C = CInt(9)) Then
  loc_10A1372:         If (var_8C = CInt(8)) Then
  loc_10A1375:         End If
  loc_10A1375:       End If
  loc_10A1397:        = (var_A0).Left
  loc_10A13A9:       Set var_94 = var_98(KeyCode)
  loc_10A13AF:       Call 0.Method_TEXT_KeyDown0 (var_A4)
  loc_10A13B7:        = var_98.Left
  loc_10A13C9:        = (var_AC).Top
  loc_10A13DB:       Set var_B0 = var_B4(KeyCode)
  loc_10A13E1:       Call 0.Method_TEXT_KeyDown0 (var_B8)
  loc_10A13E9:        = var_B4.Top
  loc_10A13FB:       Set var_BC = var_C0(KeyCode)
  loc_10A1401:       Call 0.Method_TEXT_KeyDown0 (var_C4)
  loc_10A1409:        = var_C0.Height
  loc_10A141B:       Set var_C8 = var_CC(KeyCode)
  loc_10A1421:       Call 0.Method_TEXT_KeyDown0 (var_D0)
  loc_10A1429:        = var_CC.Width
  loc_10A147C:       Proc_183_23_11A2C00(0(2), (), (), KeyCode, Shift)
  loc_10A14A7:     Else
  loc_10A14AF:       If (var_8C = CInt(&HC)) Then
  loc_10A14BD:         Set var_A8 = CInt((var_A0 + var_A4))(arg_14)
  loc_10A14E8:         Proc_183_34_1307118(Me.DGSite, (var_AC), KeyCode, global_80, Shift)
  loc_10A14F8:       End If
  loc_10A14F8:     End If
  loc_10A14F8:   End If
  loc_10A14F8: End If
  loc_10A14F8: Exit Sub
  loc_10A14F9: ' Referenced from: 10A1294
  loc_10A14FF: Call 0.Method_arg_50 (var_88, &HFF, 1)
  loc_10A1514: Proc_183_57_104B0BC(var_88, "Text_KeyDown", CInt((((var_AC + var_B8) + var_C4) + CDbl(&H19))))
  loc_10A1520: Exit Sub
End Sub

Private Sub TEXT_KeyPress(KeyAscii As Integer) 'FE9A28
  'Data Table: 583348
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_8C As DataGrid
  loc_FE984C: On Error Goto loc_FE99FF
  loc_FE9852: var_86 = KeyAscii
  loc_FE985B: If Not (var_86 = 0) Then
  loc_FE9864:   If Not (var_86 = 1) Then
  loc_FE986D:     If (var_86 = 2) Then
  loc_FE9870:     End If
  loc_FE9870:   End If
  loc_FE987A:   Set var_8C = var_90(KeyAscii)
  loc_FE9880:   Call 0.Method_TEXT_KeyPress0 (var_86)
  loc_FE989B:   Proc_183_22_129BBAC(var_90, arg_10)
  loc_FE98AA: Else
  loc_FE98B0:   If (var_86 = 5) Then
  loc_FE98BD:     Set var_8C = var_90(KeyAscii)
  loc_FE98C3:     Call 0.Method_TEXT_KeyPress0 (&HA)
  loc_FE98DE:     Proc_183_22_129BBAC(var_90, arg_10, 3)
  loc_FE98ED:   Else
  loc_FE98F3:     If Not (var_86 = 6) Then
  loc_FE98FC:       If Not (var_86 = 7) Then
  loc_FE9907:         If Not (var_86 = CInt(&HB)) Then
  loc_FE9912:           If (var_86 = CInt(&HD)) Then
  loc_FE9915:           End If
  loc_FE9915:         End If
  loc_FE9915:       End If
  loc_FE9922:       If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_FE9932:         Set var_8C = var_90(KeyAscii)
  loc_FE9938:         Call 0.Method_TEXT_KeyPress0 ("No", 2)
  loc_FE9940:         var_90.Text = 2
  loc_FE994E:         arg_10 = 0
  loc_FE9954:       Else
  loc_FE9961:         If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_FE9971:           Set var_8C = var_90(KeyAscii)
  loc_FE9977:           Call 0.Method_TEXT_KeyPress0 ("Yes")
  loc_FE997F:           var_90.Text = arg_10
  loc_FE998D:           arg_10 = 0
  loc_FE9993:         Else
  loc_FE9995:           arg_10 = 0
  loc_FE9998:         End If
  loc_FE9998:       End If
  loc_FE999B:     Else
  loc_FE99A3:       If (var_86 = CInt(&HC)) Then
  loc_FE99C2:         If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_FE99D4:           var_AC = "Name"
  loc_FE99EF:           Proc_183_41_145A968(arg_10(arg_10), KeyAscii, global_80)
  loc_FE99FE:         End If
  loc_FE99FE:       End If
  loc_FE99FE:     End If
  loc_FE99FE:   End If
  loc_FE99FE: End If
  loc_FE99FE: Exit Sub
  loc_FE99FF: ' Referenced from: FE984C
  loc_FE9A05: Call 0.Method_arg_50 (var_AC, arg_10)
  loc_FE9A1A: Proc_183_57_104B0BC(var_AC, "TEXT_KeyPress")
  loc_FE9A26: Exit Sub
End Sub

Private Sub TEXT_KeyUp(KeyCode As Integer, Shift As Integer) 'F82EE4
  'Data Table: 583348
  Dim var_86 As Integer
  loc_F82D9C: On Error Goto loc_F82EBB
  loc_F82DA2: var_86 = KeyCode
  loc_F82DAD: If Not (var_86 = CInt(8)) Then
  loc_F82DB8:   If Not (var_86 = CInt(9)) Then
  loc_F82DC3:     If (var_86 = CInt(&HA)) Then
  loc_F82DC6:     End If
  loc_F82DC6:   End If
  loc_F82DD9:   var_86 = (Shift <> &HD)(var_8E).Visible
  loc_F82DE8:   If ( And (var_8E = 0)) Then
  loc_F82DF9:     Call TEXT_KeyDown(KeyCode, global_160)
  loc_F82DFE:   End If
  loc_F82E2A:   Proc_183_35_F2A594((0), (), KeyCode)
  loc_F82E3D: Else
  loc_F82E45:   If (var_86 = CInt(&HC)) Then
  loc_F82E6B:     If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_F82E7C:       Call TEXT_KeyDown(KeyCode, global_160)
  loc_F82E90:       var_B0 = "Name"
  loc_F82EAB:       Proc_183_41_145A968(Shift(0), KeyCode, global_80, Shift)
  loc_F82EBA:     End If
  loc_F82EBA:   End If
  loc_F82EBA: End If
  loc_F82EBA: Exit Sub
  loc_F82EBB: ' Referenced from: F82D9C
  loc_F82EC1: Call 0.Method_arg_50 (var_B0, var_B0)
  loc_F82ED6: Proc_183_57_104B0BC(var_B0, "TExt_KeyUp")
  loc_F82EE2: Exit Sub
End Sub

Private Sub TEXT_LostFocus(Index As Integer) 'E8A0D4
  'Data Table: 583348
  loc_E8A068: On Error Goto loc_E8A0AB
  loc_E8A073: Call TEXT_Validate(Index)
  loc_E8A085:  = 0(var_86).Visible
  loc_E8A093: If (var_86 = &HFF) Then
  loc_E8A0A2:   (0).Visible = 
  loc_E8A0AA: End If
  loc_E8A0AA: Exit Sub
  loc_E8A0AB: ' Referenced from: E8A068
  loc_E8A0B1: Call 0.Method_arg_50 (var_90)
  loc_E8A0B9: var_98 = "TEXT_LostFocus"
  loc_E8A0C6: Proc_183_57_104B0BC(var_90)
  loc_E8A0D2: Exit Sub
End Sub

Private Sub TEXT_Validate(Cancel As Boolean) '10CD888
  'Data Table: 583348
  Dim var_86 As Integer
  Dim var_104 As Double
  Dim var_FC As String
  Dim var_F8 As TextBox
  Dim var_8C As Variant
  Dim var_90 As Variant
  Dim Me As Recordset15
  loc_10CD59C: On Error Goto loc_10CD85D
  loc_10CD5A2: var_86 = Cancel
  loc_10CD5AB: If Not (var_86 = 0) Then
  loc_10CD5B4:   If Not (var_86 = 1) Then
  loc_10CD5BD:     If Not (var_86 = 2) Then
  loc_10CD5C6:       If (var_86 = 5) Then
  loc_10CD5C9:       End If
  loc_10CD5C9:     End If
  loc_10CD5C9:   End If
  loc_10CD5D3:   Set var_8C = var_90(Cancel)
  loc_10CD5D9:   Call 0.Method_TEXT_Validate0 (var_86)
  loc_10CD5E5:   Proc_183_6_EA3B94(CVar(var_90))
  loc_10CD5EA:   var_104 = 
  loc_10CD614:   var_FC = CStr(Format(CVar(var_104), "0.00"))
  loc_10CD622:   Set var_F4 = var_F8(Cancel)
  loc_10CD628:   Call 0.Method_TEXT_Validate0 (var_FC, 1)
  loc_10CD630:   var_F8.Text = 1
  loc_10CD64F: Else
  loc_10CD657:   If Not (var_86 = CInt(&HA)) Then
  loc_10CD662:     If Not (var_86 = CInt(9)) Then
  loc_10CD66D:       If (var_86 = CInt(8)) Then
  loc_10CD670:       End If
  loc_10CD670:     End If
  loc_10CD67D:     var_104(var_FC).RandomDataFill
  loc_10CD688:     Set var_90 = 
  loc_10CD68E:      = var_90.Text
  loc_10CD6A0:     Set var_F4 = var_F8(Cancel)
  loc_10CD6A6:     Call 0.Method_TEXT_Validate0 (var_FC)
  loc_10CD6AE:     var_F8.Text = 
  loc_10CD6C7:   Else
  loc_10CD6CF:     If (var_86 = CInt(&HC)) Then
  loc_10CD720:       Set var_8C = var_90(Cancel)
  loc_10CD726:       Call 0.Method_TEXT_Validate0 (var_FC)
  loc_10CD72E:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10CD746:       If ( Or (var_FC = vbNullString)) Then
  loc_10CD757:         Set var_8C = var_90(CInt(&HC))
  loc_10CD75D:         Call 0.Method_TEXT_Validate0 (vbNullString)
  loc_10CD765:         var_90.Tag = 
  loc_10CD77F:         Set var_8C = var_90(CInt(&HC))
  loc_10CD785:         Call 0.Method_TEXT_Validate0 (vbNullString)
  loc_10CD78D:         var_90.Text = 
  loc_10CD79C:       Else
  loc_10CD7D8:         Set var_F4 = var_F8(CInt(&HC))
  loc_10CD7DE:         Call 0.Method_TEXT_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_10CD7E6:         var_F8.Text = 
  loc_10CD82A:         var_FC = CStr(Me.Fields.Item("Code").Value)
  loc_10CD838:         Set var_F4 = var_F8(CInt(&HC))
  loc_10CD83E:         Call 0.Method_TEXT_Validate0 (var_FC)
  loc_10CD846:         var_F8.Tag = 
  loc_10CD85C:       End If
  loc_10CD85C:     End If
  loc_10CD85C:   End If
  loc_10CD85C: End If
  loc_10CD85C: Exit Sub
  loc_10CD85D: ' Referenced from: 10CD59C
  loc_10CD863: Call 0.Method_arg_50 (var_FC)
  loc_10CD86B: var_114 = "TEXT_Validate"
  loc_10CD878: Proc_183_57_104B0BC(var_FC)
  loc_10CD884: Exit Sub
  loc_10CD885: StAryRecMove
End Sub

Private Sub Check1_Click(Index As Integer) '10256A8
  'Data Table: 583348
  Dim var_8C As Variant
  Dim var_A0 As Variant
  loc_1025480: On Error Goto loc_102567F
  loc_1025490: Set var_88 = var_8C(Index)
  loc_1025496: Call 0.Method_Check1_Click0 (var_8E)
  loc_102549E:  = var_8C.Value
  loc_10254B4: If (CLng(var_8E) = 0) Then
  loc_10254C5:   Set var_88 = var_8C(Index)
  loc_10254CB:   Call 0.Method_Check1_Click0 (True)
  loc_10254D3:   var_8C.Enabled = 
  loc_10254E9:   Set var_88 = var_8C(Index)
  loc_10254EF:   Call 0.Method_Check1_Click0 ()
  loc_1025510:   If (CLng(var_8C.RowCount) > 1) Then
  loc_1025526:     Set var_88 = var_8C(Index)
  loc_102552C:     Call 0.Method_Check1_Click0 (1)
  loc_1025553:     Set var_88 = var_8C(Index)
  loc_1025559:     Call 0.Method_Check1_Click0 (1)
  loc_102556D:   End If
  loc_1025570: Else
  loc_102557F:   Set var_88 = var_8C(Index)
  loc_1025585:   Call 0.Method_Check1_Click0 (False, DGSite.DispID_B)
  loc_102558D:   var_8C.Enabled = DGSite.DispID_A
  loc_10255A3:   Set var_88 = var_8C(Index)
  loc_10255A9:   Call 0.Method_Check1_Click0 ()
  loc_10255CA:   If (CLng(var_8C.RowCount) > 1) Then
  loc_10255E0:     Set var_88 = var_8C(Index)
  loc_10255E6:     Call 0.Method_Check1_Click0 (0)
  loc_102560D:     Set var_88 = var_8C(Index)
  loc_1025613:     Call 0.Method_Check1_Click0 (0)
  loc_1025631:     Set var_88 = var_8C(Index)
  loc_1025637:     Call 0.Method_Check1_Click0 (DGSite.DispID_B)
  loc_102564E:     var_A0 = CVar((CLng(var_8C.RowCount) - 1)) 'Long
  loc_102565D:     Set var_C4 = var_C8(Index)
  loc_1025663:     Call 0.Method_Check1_Click0 (0)
  loc_102567E:   End If
  loc_102567E: End If
  loc_102567E: Exit Sub
  loc_102567F: ' Referenced from: 1025480
  loc_1025685: Call 0.Method_arg_50 (var_CC, DGSite.DispID_C)
  loc_102569A: Proc_183_57_104B0BC(var_CC, "Check1_Click")
  loc_10256A6: Exit Sub
End Sub

Private Sub Check1_GotFocus(Index As Integer) 'E4434C
  'Data Table: 583348
  Dim var_8C As CheckBox
  loc_E4432F: Set var_88 = var_8C(Index)
  loc_E44335: Call 0.Method_Check1_GotFocus0 (&HFF)
  loc_E4433D: var_8C.BackColor = 
  loc_E44349: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E245EC
  'Data Table: 583348
  loc_E245D2: If (Shift = &HD) Then
  loc_E245E3:   Proc_303_0_FBACC8("	")
  loc_E245EB: End If
  loc_E245EB: Exit Sub
End Sub

Private Sub Check1_Validate(Cancel As Boolean) 'E44220
  'Data Table: 583348
  Dim var_8C As CheckBox
  loc_E44203: Set var_88 = var_8C(Cancel)
  loc_E44209: Call 0.Method_Check1_Validate0 (&H800000)
  loc_E44211: var_8C.BackColor = 
  loc_E4421D: Exit Sub
End Sub

Private Sub BtnClose_UnknownEvent_9 '1170734
  'Data Table: 583348
  Dim var_88 As Frame
  Dim var_CC As Variant
  Dim var_3E8 As String
  Dim unk_583395 As Connection15
  Dim var_3000 As Variant
  loc_117044C: On Error Goto loc_117070A
  loc_117045B: (0).Visible = 
  loc_117047A: If ((GRepFormName = "LedDeb") Or (GRepFormName = "MemLed")) Then
  loc_117049D:   Set var_88 = var_8C(0)
  loc_11704A3:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar("UPDATE FAENVIRO SET " & "TagadaHeader1="), var_408)
  loc_11704B2:   Proc_183_9_EAB2F0(var_AC, CVar(var_8C))
  loc_11704BA:   var_CC = -1 & var_AC 
  loc_11704D0:   Set var_F0 = var_F4(1)
  loc_11704D6:   Call 0.Method_BtnClose_UnknownEvent_90 (var_CC & ",TagadaHeader2= ")
  loc_11704E5:   Proc_183_9_EAB2F0(var_114, CVar(var_F4))
  loc_1170503:   Set var_148 = var_14C(2)
  loc_1170509:   Call 0.Method_BtnClose_UnknownEvent_90 (var_40C & var_114 & ",TagadaHeader3= ")
  loc_1170518:   Proc_183_9_EAB2F0(var_16C)
  loc_1170536:   Set var_1A0 = var_1A4(3)
  loc_117053C:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar(var_14C) & var_16C & ",TagadaHeader4= ")
  loc_117054B:   Proc_183_9_EAB2F0(var_1C4)
  loc_1170569:   Set var_1F8 = var_1FC(4)
  loc_117056F:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar(var_1A4) & var_1C4 & ",TagadaHeader5= ")
  loc_117057E:   Proc_183_9_EAB2F0(var_21C)
  loc_117059C:   Set var_250 = var_254(0)
  loc_11705A2:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar(var_1FC) & var_21C & ",TagadaFooter1= ")
  loc_11705B1:   Proc_183_9_EAB2F0(var_274)
  loc_11705CF:   Set var_2A8 = var_2AC(1)
  loc_11705D5:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar(var_254) & var_274 & ",TagadaFooter2= ")
  loc_11705E4:   Proc_183_9_EAB2F0(var_2CC)
  loc_1170602:   Set var_300 = var_304(2)
  loc_1170608:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar(var_2AC) & var_2CC & ",TagadaFooter3= ")
  loc_1170617:   Proc_183_9_EAB2F0(var_324)
  loc_1170635:   Set var_358 = var_35C(3)
  loc_117063B:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar(var_304) & var_324 & ",TagadaFooter4= ")
  loc_117064A:   Proc_183_9_EAB2F0(var_37C)
  loc_1170668:   Set var_3B0 = var_3B4(4)
  loc_117066E:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar(var_35C) & var_37C & ",TagadaFooter5= ")
  loc_117067D:   Proc_183_9_EAB2F0(var_3D4)
  loc_1170689:   var_3E8 = CStr(CVar(var_3B4) & var_3D4)
  loc_1170693:   unk_583395.Execute var_3E8, , 
  loc_1170709: End If
  loc_1170709: Exit Sub
  loc_117070A: ' Referenced from: 117044C
  loc_1170710: Call 0.Method_arg_50 (var_3E8)
  loc_1170725: Proc_183_57_104B0BC(var_3E8)
  loc_1170731: Exit Sub
  loc_1170732: var_3000 = "BTNCLOSE_Click"
End Sub

Private Sub btnExit_UnknownEvent_9 'E1A1E4
  'Data Table: 583348
  loc_E1A1D9: Me.Global.Unload Me
  loc_E1A1E1: Exit Sub
End Sub

Private Sub BTNPRINT_UnknownEvent_9 '11AF94C
  'Data Table: 583348
  loc_11AF524: On Error Goto loc_11AF903
  loc_11AF52C: global_130 = &HFF
  loc_11AF535: var_88 = GRepFormName
  loc_11AF540: If (var_88 = "DayBook") Then
  loc_11AF546:   Call Proc_203_73_161F3AC(Cancel)
  loc_11AF54E: Else
  loc_11AF556:   If (var_88 = "Led") Then
  loc_11AF565:     Call Proc_203_75_1EE0518(Cancel, "Led")
  loc_11AF570:   Else
  loc_11AF578:     If (var_88 = "LedInt") Then
  loc_11AF587:       Call Proc_203_75_1EE0518(Cancel, "LedInt")
  loc_11AF592:     Else
  loc_11AF59A:       If (var_88 = "CashBook") Then
  loc_11AF5A0:         Call Proc_203_72_193271C(Cancel)
  loc_11AF5A8:       Else
  loc_11AF5B0:         If (var_88 = "BankBook") Then
  loc_11AF5B6:           Call Proc_203_72_193271C(Cancel)
  loc_11AF5BE:         Else
  loc_11AF5C6:           If (var_88 = "JournalBook") Then
  loc_11AF5CC:             Call Proc_203_70_1509B10(Cancel)
  loc_11AF5D4:           Else
  loc_11AF5DC:             If (var_88 = "Annexure") Then
  loc_11AF5E2:               Call Proc_203_63_17B7C18(Cancel)
  loc_11AF5EA:             Else
  loc_11AF5F2:               If (var_88 = "AgingDr") Then
  loc_11AF601:                 Call Proc_203_64_17B1C38(Cancel, "Dr")
  loc_11AF60C:               Else
  loc_11AF614:                 If (var_88 = "AgingCr") Then
  loc_11AF623:                   Call Proc_203_64_17B1C38(Cancel, "Cr")
  loc_11AF62E:                 Else
  loc_11AF636:                   If (var_88 = "BankReg") Then
  loc_11AF63C:                     Call Proc_203_65_127DF94(Cancel)
  loc_11AF644:                   Else
  loc_11AF64C:                     If (var_88 = "Clg") Then
  loc_11AF652:                       Call Proc_203_67_1273DB4(Cancel)
  loc_11AF65A:                     Else
  loc_11AF662:                       If (var_88 = "ClgNot") Then
  loc_11AF668:                         Call Proc_203_68_11F8818(Cancel)
  loc_11AF670:                       Else
  loc_11AF678:                         If (var_88 = "LedDeb") Then
  loc_11AF687:                           Call Proc_203_75_1EE0518(Cancel, "LedDeb")
  loc_11AF692:                         Else
  loc_11AF69A:                           If (var_88 = "MemLed") Then
  loc_11AF6A9:                             Call Proc_203_75_1EE0518(Cancel, "MemLed")
  loc_11AF6B4:                           Else
  loc_11AF6BC:                             If (var_88 = "LedCred") Then
  loc_11AF6CB:                               Call Proc_203_75_1EE0518(Cancel, "LedCred")
  loc_11AF6D6:                             Else
  loc_11AF6DE:                               If (var_88 = "DailySumm") Then
  loc_11AF6E4:                                 Call Proc_203_69_13B2878(Cancel)
  loc_11AF6EC:                               Else
  loc_11AF6F4:                                 If (var_88 = "NonTrans") Then
  loc_11AF6FA:                                   Call Proc_203_66_14C290C(Cancel)
  loc_11AF702:                                 Else
  loc_11AF70A:                                   If (var_88 = "DetailedTrial") Then
  loc_11AF710:                                     Call Proc_203_74_15A6EA4(Cancel)
  loc_11AF718:                                   Else
  loc_11AF720:                                     If (var_88 = "RefReport") Then
  loc_11AF72B:                                       Call Proc_203_62_1540134(Cancel)
  loc_11AF733:                                     Else
  loc_11AF73B:                                       If (var_88 = "AcCheckList") Then
  loc_11AF74A:                                         Call Proc_203_75_1EE0518(Cancel, "AcCheckList")
  loc_11AF755:                                       Else
  loc_11AF75D:                                         If (var_88 = "DUELIST") Then
  loc_11AF760:                                           Call Proc_203_76_177AA1C(global_130)
  loc_11AF768:                                         Else
  loc_11AF770:                                           If (var_88 = "CONTROLLED") Then
  loc_11AF776:                                             Call Proc_203_77_14804D4(Cancel)
  loc_11AF77E:                                           Else
  loc_11AF786:                                             If (var_88 = "RozNamcha") Then
  loc_11AF78C:                                               Call Proc_203_80_191C1C4(Cancel)
  loc_11AF794:                                             Else
  loc_11AF79C:                                               If (var_88 = "BudgetVariance") Then
  loc_11AF7A2:                                                 Call Proc_203_81_19710B4(Cancel)
  loc_11AF7AA:                                               Else
  loc_11AF7B2:                                                 If (var_88 = "Budget") Then
  loc_11AF7B8:                                                   Call Proc_203_82_17DF0D4(Cancel)
  loc_11AF7C0:                                                 Else
  loc_11AF7C8:                                                   If (var_88 = "AgingRepDr") Then
  loc_11AF7CE:                                                     var_8C = "Dr"
  loc_11AF7D7:                                                     Call Proc_203_85_17F2480(Cancel)
  loc_11AF7E2:                                                   Else
  loc_11AF7EA:                                                     If (var_88 = "AgingRepCr") Then
  loc_11AF7F0:                                                       var_8C = "Cr"
  loc_11AF7F9:                                                       Call Proc_203_85_17F2480(Cancel, var_8C)
  loc_11AF804:                                                     Else
  loc_11AF80C:                                                       If (var_88 = "JournalBookLog") Then
  loc_11AF812:                                                         Call Proc_203_71_1529E68(Cancel)
  loc_11AF817:                                                       End If
  loc_11AF817:                                                     End If
  loc_11AF817:                                                   End If
  loc_11AF817:                                                 End If
  loc_11AF817:                                               End If
  loc_11AF817:                                             End If
  loc_11AF817:                                           End If
  loc_11AF817:                                         End If
  loc_11AF817:                                       End If
  loc_11AF817:                                     End If
  loc_11AF817:                                   End If
  loc_11AF817:                                 End If
  loc_11AF817:                               End If
  loc_11AF817:                             End If
  loc_11AF817:                           End If
  loc_11AF817:                         End If
  loc_11AF817:                       End If
  loc_11AF817:                     End If
  loc_11AF817:                   End If
  loc_11AF817:                 End If
  loc_11AF817:               End If
  loc_11AF817:             End If
  loc_11AF817:           End If
  loc_11AF817:         End If
  loc_11AF817:       End If
  loc_11AF817:     End If
  loc_11AF817:   End If
  loc_11AF817: End If
  loc_11AF820: If (global_130 = 0) Then
  loc_11AF823:   Exit Sub
  loc_11AF824: End If
  loc_11AF82A: If (Cancel = 1) Then
  loc_11AF833:   var_A0 = GRepFormName
  loc_11AF83E:   If Not (var_A0 = "BudgetVariance") Then
  loc_11AF849:     If (var_A0 = "Budget") Then
  loc_11AF84C:     End If
  loc_11AF84C:     Call Proc_203_60_1754AC0(var_8C)
  loc_11AF851:   End If
  loc_11AF857:   Call 0.Method_arg_150 ()
  loc_11AF86D:   Proc_183_10_1499E94(MemVar_1F951E8, Cancel)
  loc_11AF875: Else
  loc_11AF87B:   var_A8 = GRepFormName
  loc_11AF886:   If Not (var_A8 = "AgingDr") Then
  loc_11AF891:     If Not (var_A8 = "AgingCr") Then
  loc_11AF89C:       If Not (var_A8 = "AgingRepDr") Then
  loc_11AF8A7:         If (var_A8 = "AgingRepCr") Then
  loc_11AF8AA:         End If
  loc_11AF8AA:       End If
  loc_11AF8AA:     End If
  loc_11AF8AD:   Else
  loc_11AF8B5:     If Not (var_A8 = "BudgetVariance") Then
  loc_11AF8C0:       If (var_A8 = "Budget") Then
  loc_11AF8C3:       End If
  loc_11AF8C3:       Call Proc_203_60_1754AC0(global_120)
  loc_11AF8CB:     Else
  loc_11AF8CB:       Call Proc_203_60_1754AC0(&HFF)
  loc_11AF8D0:     End If
  loc_11AF8D0:   End If
  loc_11AF8D6:   Call 0.Method_arg_150 ()
  loc_11AF8EC:   Proc_183_10_1499E94(MemVar_1F951E8, Cancel)
  loc_11AF8F1: End If
  loc_11AF8F6: global_128 = 0
  loc_11AF8FE: MemVar_1F951E8 = Nothing
  loc_11AF902: Exit Sub
  loc_11AF903: ' Referenced from: 11AF524
  loc_11AF90B: Set var_AC = Err()
  loc_11AF911: Call 0.Method_arg_2C (var_8C, global_128)
  loc_11AF91C: Call 0.Method_arg_50 (var_B0, global_120)
  loc_11AF938: MsgBox(CVar(var_8C), &H10, CVar(var_B0), var_E0, var_100)
  loc_11AF94B: Exit Sub
End Sub

Private Sub DGSite_UnknownEvent_9 '10D1DAC
  'Data Table: 583348
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_EC As Double
  Dim var_B0 As Variant
  Dim var_D0 As TextBox
  Dim var_CC As TextBox
  loc_10D1AB8: On Error Goto loc_10D1D84
  loc_10D1ADE: If (((GRepFormName = "DayBook") Or (GRepFormName = "JournalBook")) Or (GRepFormName = "JournalBookLog")) Then
  loc_10D1AF0:   Me.DGSite.Visible = False
  loc_10D1B0F:   If (Me.RecordCount > 0) Then
  loc_10D1B2C:     var_EC = Val(CStr(Me.DGSite.Tag))
  loc_10D1B6B:     Set var_CC = var_D0(CInt(var_EC))
  loc_10D1B71:     Call 0.Method_DGSite_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_10D1B79:     var_D0.Tag = var_EC
  loc_10D1B9D:     Set var_B4 = Me.DGSite
  loc_10D1BB3:     var_EC = Val(CStr(var_B4.Tag))
  loc_10D1BF2:     Set var_CC = var_D0(CInt(var_EC))
  loc_10D1BF8:     Call 0.Method_DGSite_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_10D1C00:     var_D0.Text = var_EC
  loc_10D1C20:   End If
  loc_10D1C3A:   var_EC = Val(CStr(Me.DGSite.Tag))
  loc_10D1C48:   Set var_B0 = var_B4(CInt(var_EC))
  loc_10D1C4E:   Call 0.Method_DGSite_UnknownEvent_90 (var_EC)
  loc_10D1C56:   var_B4.SetFocus
  loc_10D1C6D: Else
  loc_10D1C7C:   Me.DGSite.Visible = False
  loc_10D1C9B:   If (Me.RecordCount > 0) Then
  loc_10D1CDA:     Set var_B4 = var_CC(CInt(&HC))
  loc_10D1CE0:     Call 0.Method_DGSite_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_10D1CE8:     var_CC.Tag = 
  loc_10D1D1B:     var_B0 = Me.Fields.Item("Name")
  loc_10D1D2C:     var_C8 = CStr(var_B0.Value)
  loc_10D1D3A:     Set var_B4 = var_CC(CInt(&HC))
  loc_10D1D40:     Call 0.Method_DGSite_UnknownEvent_90 (var_C8)
  loc_10D1D48:     var_CC.Text = 
  loc_10D1D5E:   End If
  loc_10D1D69:   Set var_A8 = var_B0(CInt(&HC))
  loc_10D1D6F:   Call 0.Method_DGSite_UnknownEvent_90 ()
  loc_10D1D77:   var_B0.SetFocus
  loc_10D1D83: End If
  loc_10D1D83: Exit Sub
  loc_10D1D84: ' Referenced from: 10D1AB8
  loc_10D1D8A: Call 0.Method_arg_50 (var_C8)
  loc_10D1D92: var_F0 = "DGSite_Click"
  loc_10D1D9F: Proc_183_57_104B0BC(var_C8)
  loc_10D1DAB: Exit Sub
End Sub

Private Sub BtnParam_UnknownEvent_9 '1047134
  'Data Table: 583348
  Dim var_88 As Variant
  Dim var_90 As Variant
  Dim var_98 As TextBox
  Dim var_AC As Variant
  Dim var_C0 As DataGrid
  Dim var_C4 As TextBox
  loc_1046EEC: On Error Goto loc_104710C
  loc_1046EFB: (&HFF).Visible = 
  loc_1046F11: (CDbl(&H64)).Left = 
  loc_1046F28: (CDbl(900)).Top = 
  loc_1046F36: var_8C = GRepFormName
  loc_1046F41: If Not (var_8C = "Led") Then
  loc_1046F4C:   If Not (var_8C = "LedInt") Then
  loc_1046F57:     If Not (var_8C = "LedDeb") Then
  loc_1046F62:       If Not (var_8C = "MemLed") Then
  loc_1046F6D:         If Not (var_8C = "LedCred") Then
  loc_1046F78:           If (var_8C = "AcCheckList") Then
  loc_1046F7B:           End If
  loc_1046F7B:         End If
  loc_1046F7B:       End If
  loc_1046F7B:     End If
  loc_1046F7B:   End If
  loc_1046F86:   Set var_88 = var_90(7)
  loc_1046F8C:   Call 0.Method_BtnParam_UnknownEvent_90 (&HFF)
  loc_1046F94:   var_90.Visible = 
  loc_1046FAD:   Set var_88 = var_90(CInt(&HD))
  loc_1046FB3:   Call 0.Method_BtnParam_UnknownEvent_90 (&HFF)
  loc_1046FBB:   var_90.Visible = 
  loc_1046FC7: End If
  loc_1046FD2: Set var_88 = var_90(6)
  loc_1046FD8: Call 0.Method_BtnParam_UnknownEvent_90 (&HFF)
  loc_1046FE0: var_90.Visible = 
  loc_1046FF9: Set var_88 = var_90(CInt(&HC))
  loc_1046FFF: Call 0.Method_BtnParam_UnknownEvent_90 (&HFF)
  loc_1047007: var_90.Visible = 
  loc_1047021: Set var_90 = var_98(CInt(&HC))
  loc_1047027: Call 0.Method_BtnParam_UnknownEvent_90 (var_9C)
  loc_104702F:  = var_98.Left
  loc_1047041:  = (var_94).Left
  loc_104704D: var_AC = CVar((var_94 + var_9C)) 'Single
  loc_104705C: Me.DGSite.Left = var_AC
  loc_104707A: Set var_90 = var_98(CInt(&HC))
  loc_1047080: Call 0.Method_BtnParam_UnknownEvent_90 (var_9C)
  loc_1047088:  = var_98.Top
  loc_104709B: Set var_C0 = var_C4(CInt(&HC))
  loc_10470A1: Call 0.Method_BtnParam_UnknownEvent_90 (var_C8)
  loc_10470A9:  = var_C4.Height
  loc_10470BB:  = (var_94).Top
  loc_10470CB: var_AC = CVar(((var_94 + var_9C) + var_C8)) 'Single
  loc_10470DA: Me.DGSite.Top = var_AC
  loc_1047100: Me.DGSite.Tag = CVar(CStr(&HC))
  loc_104710B: Exit Sub
  loc_104710C: ' Referenced from: 1046EEC
  loc_1047112: Call 0.Method_arg_50 (var_E0)
  loc_104711A: var_E8 = "BtnParam_Click"
  loc_1047127: Proc_183_57_104B0BC(var_E0)
  loc_1047133: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) '1075D18
  'Data Table: 583348
  Dim var_88 As TextBox
  Dim var_9C As Double
  Dim var_90 As DataGrid
  Dim var_8C As String
  Dim var_108 As DataGrid
  Dim var_178 As String
  loc_1075AB0: On Error Goto loc_1075CED
  loc_1075ABE: If (Proc_183_12_E7AF74(KeyCode) = &HFF) Then
  loc_1075ACE:    = (var_8C).Tag
  loc_1075ADB:   var_9C = Val(var_8C)
  loc_1075AE9:   Set var_90 = var_94(CInt(var_9C))
  loc_1075AEF:   Call 0.Method_TxtSearch_KeyDown0 (var_9C)
  loc_1075B17:   DGSite.DispID_8001(0).Visible = 
  loc_1075B1F: End If
  loc_1075B29: If (CLng(KeyCode) = &H2E) Then
  loc_1075B39:   (vbNullString).Text = 
  loc_1075B41: End If
  loc_1075B56: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_1075B66:    = (var_8C).Tag
  loc_1075B73:   var_9C = Val(var_8C)
  loc_1075B81:   Set var_90 = var_94(CInt(var_9C))
  loc_1075B87:   Call 0.Method_TxtSearch_KeyDown0 (var_9C)
  loc_1075BAF:   DGSite.DispID_8001(0).Visible = 
  loc_1075BB7: End If
  loc_1075BFE: If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_1075C0A:   Set var_88 = var_90(1)
  loc_1075C10:   Call 0.Method_TxtSearch_KeyDown0 ()
  loc_1075C18:   var_90.InsertRows , 
  loc_1075C38:   Set var_94 = var_B0(1)
  loc_1075C3E:   Call 0.Method_TxtSearch_KeyDown0 (3)
  loc_1075C51:   var_8C = CStr(DGSite.DispID_41)
  loc_1075C64:   Set var_104 = var_108(1)
  loc_1075C6A:   Call 0.Method_TxtSearch_KeyDown0 (var_8C & vbCrLf)
  loc_1075C72:   var_108.InsertRows CVar(CLng()), 
  loc_1075C92:   Set var_11C = var_120(1)
  loc_1075C98:   Call 0.Method_TxtSearch_KeyDown0 (4)
  loc_1075CBC:   (CVar(CLng()) & CStr(DGSite.DispID_41)).Text = 
  loc_1075CEC: End If
  loc_1075CEC: Exit Sub
  loc_1075CED: ' Referenced from: 1075AB0
  loc_1075CF3: Call 0.Method_arg_50 (var_8C)
  loc_1075CFB: var_178 = "TxtSearch_KeyDown"
  loc_1075D08: Proc_183_57_104B0BC(var_8C)
  loc_1075D14: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'E52B54
  'Data Table: 583348
  Dim var_98 As Double
  loc_E52B2D:  = (var_8C).Tag
  loc_E52B3A: var_98 = Val(var_8C)
  loc_E52B47: Call GridSel_UnknownEvent_C()
  loc_E52B52: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E2CAC8
  'Data Table: 583348
  loc_E2CAA9: (vbNullString).Text = 
  loc_E2CABD: (0).Visible = 
  loc_E2CAC5: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'ECA3C8
  'Data Table: 583348
  Dim var_9C As Double
  loc_ECA328: On Error Goto loc_ECA39F
  loc_ECA338: (vbNullString).Text = 
  loc_ECA34D:  = (var_8C).Tag
  loc_ECA35A: var_9C = Val(var_8C)
  loc_ECA368: Set var_90 = var_94(CInt(var_9C))
  loc_ECA36E: Call 0.Method_TxtSearch_Click0 (var_9C)
  loc_ECA396: DGSite.DispID_8001(0).Visible = 
  loc_ECA39E: Exit Sub
  loc_ECA39F: ' Referenced from: ECA328
  loc_ECA3A5: Call 0.Method_arg_50 (var_8C)
  loc_ECA3AD: var_A4 = "TxtSearch_Click"
  loc_ECA3BA: Proc_183_57_104B0BC(var_8C)
  loc_ECA3C6: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '16B294C
  'Data Table: 583348
  Dim var_98 As Variant
  Dim var_AC As DataGrid
  Dim var_C0 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim Me As Variant
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_A8 As String
  loc_16B0FD4: On Error Goto loc_16B2924
  loc_16B0FE4: Set var_AC = (CVar(CLng("16777215")))
  loc_16B0FFC: (DGSite.DispID_26).InsertRows , 
  loc_16B100E: Set var_C0 = (CVar(CLng()))
  loc_16B1014: var_C0.DeleteRowLabels , 
  loc_16B1026: Set var_F4 = (CVar(CLng()))
  loc_16B1037: var_110 = CStr(DGSite.DispID_41)
  loc_16B1043: Set var_108 = var_10C(0)
  loc_16B1049: Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B1051: var_10C.Tag = 
  loc_16B1079: ().InsertRows , 
  loc_16B1092: If (CLng() = CLng(0)) Then
  loc_16B109B:   var_118 = GRepFormName
  loc_16B10A6:   If Not (var_118 = "BudgetVariance") Then
  loc_16B10B1:     If (var_118 = "Budget") Then
  loc_16B10B4:     End If
  loc_16B10BD:     var_11C = Me.RecordCount
  loc_16B1102:     Set var_AC = var_C0(Index)
  loc_16B1108:     Call 0.Method_TxtGrid_GotFocus0 (var_110, ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_16B1110:     var_114 = var_C0.Text
  loc_16B1128:     If ( Or (var_110 = vbNullString)) Then
  loc_16B112B:       Exit Sub
  loc_16B112C:     End If
  loc_16B1139:     Set var_AC = var_C0(Index)
  loc_16B113F:     Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B1147:      = var_C0.Text
  loc_16B114F:     var_D0 = CVar(var_110) 'String
  loc_16B1170:     var_108 = Me.Fields.Item("Name")
  loc_16B1194:     If CBool(var_D0 <> var_108.Value) Then
  loc_16B119D:       Me.MoveFirst
  loc_16B11C2:       Set var_AC = var_C0(Index)
  loc_16B11C8:       Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B11D0:       1 = var_C0.Text
  loc_16B11DE:       Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16B11F4:       Me.Find CStr(var_A8 & var_D0), , 
  loc_16B120C:     End If
  loc_16B1219:     Set var_F4 = var_108(Index)
  loc_16B121F:     Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B1227:      = var_108.Height
  loc_16B1239:     Set var_AC = var_C0(Index)
  loc_16B123F:     Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B1247:      = var_C0.Top
  loc_16B1253:     var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B1262:     ("Name =").Top = 
  loc_16B1287:     (CVar(CStr(Index))).Tag = 
  loc_16B129F:     Set var_AC = var_C0(Index)
  loc_16B12A5:     Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B12AD:      = var_C0.Left
  loc_16B12C4:     (CVar(var_11C)).Left = 
  loc_16B12D2:   End If
  loc_16B12D5: Else
  loc_16B12DC:   If (var_114 = CLng(2)) Then
  loc_16B12E5:     var_12C = GRepFormName
  loc_16B12F0:     If (var_12C = "BankReg") Then
  loc_16B1300:       ReDim var_130(0 To 2)
  loc_16B1317:       var_130(0) = "All"
  loc_16B1326:       var_130(1) = "Debit"
  loc_16B1335:       var_130(2) = "Credit"
  loc_16B138C:       Set global_184 = Proc_183_37_EFEF78((Array(var_130)), (), Index)
  loc_16B13A0:     Else
  loc_16B13A8:       If (var_12C = "DUELIST") Then
  loc_16B13B8:         ReDim var_130(0 To 1)
  loc_16B13CF:         var_130(0) = "All"
  loc_16B13DE:         var_130(1) = "Pending"
  loc_16B1435:         Set global_184 = Proc_183_37_EFEF78(Array(var_130)(Array(var_130)), (3), Index)
  loc_16B1449:       Else
  loc_16B1451:         If Not (var_12C = "Led") Then
  loc_16B145C:           If Not (var_12C = "LedInt") Then
  loc_16B1467:             If Not (var_12C = "LedDeb") Then
  loc_16B1472:               If Not (var_12C = "MemLed") Then
  loc_16B147D:                 If Not (var_12C = "LedCred") Then
  loc_16B1488:                   If (var_12C = "AcCheckList") Then
  loc_16B148B:                   End If
  loc_16B148B:                 End If
  loc_16B148B:               End If
  loc_16B148B:             End If
  loc_16B148B:           End If
  loc_16B1498:           ReDim var_130(0 To 4)
  loc_16B14AF:           var_130(0) = "Selected"
  loc_16B14BE:           var_130(1) = "Merge"
  loc_16B14CD:           var_130(2) = "Group(Selected)"
  loc_16B14DC:           var_130(3) = "Group(Range)"
  loc_16B14EB:           var_130(4) = "City Wise"
  loc_16B1542:           Set global_184 = Proc_183_37_EFEF78(Array(var_130)(Array(var_130)), (2), Index)
  loc_16B1556:         Else
  loc_16B155E:           If Not (var_12C = "CashBook") Then
  loc_16B1569:             If Not (var_12C = "BankBook") Then
  loc_16B1574:               If Not (var_12C = "DayBook") Then
  loc_16B157F:                 If Not (var_12C = "RozNamcha") Then
  loc_16B158A:                   If (var_12C = "DetailedTrial") Then
  loc_16B158D:                   End If
  loc_16B158D:                 End If
  loc_16B158D:               End If
  loc_16B158D:             End If
  loc_16B159A:             ReDim var_130(0 To 1)
  loc_16B15B1:             var_130(0) = "Yes"
  loc_16B15B3:             var_A8 = "No"
  loc_16B15C0:             var_130(1) = var_A8
  loc_16B15FD:             Set var_C0 = (5)
  loc_16B1617:             Set global_184 = Proc_183_37_EFEF78(Array(var_130)(Array(var_130)), var_C0, Index)
  loc_16B162B:           Else
  loc_16B1633:             If Not (var_12C = "JournalBook") Then
  loc_16B163E:               If Not (var_12C = "Annexure") Then
  loc_16B1649:                 If (var_12C = "JournalBookLog") Then
  loc_16B164C:                 End If
  loc_16B164C:               End If
  loc_16B1655:               var_11C = Me.RecordCount
  loc_16B169A:               Set var_AC = var_C0(Index)
  loc_16B16A0:               Call 0.Method_TxtGrid_GotFocus0 (var_110, ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_16B16A8:               global_164 = var_C0.Text
  loc_16B16C0:               If (2 Or (var_110 = vbNullString)) Then
  loc_16B16C3:                 Exit Sub
  loc_16B16C4:               End If
  loc_16B16D1:               Set var_AC = var_C0(Index)
  loc_16B16D7:               Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B16DF:                = var_C0.Text
  loc_16B16E7:               var_D0 = CVar(var_110) 'String
  loc_16B1708:               var_108 = Me.Fields.Item("Name")
  loc_16B172C:               If CBool(var_D0 <> var_108.Value) Then
  loc_16B1735:                 Me.MoveFirst
  loc_16B175A:                 Set var_AC = var_C0(Index)
  loc_16B1760:                 Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B1768:                 1 = var_C0.Text
  loc_16B1776:                 Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16B178C:                 Me.Find CStr(var_A8 & var_D0), , 
  loc_16B17A4:               End If
  loc_16B17B1:               Set var_AC = var_C0(Index)
  loc_16B17B7:               Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B17BF:                = var_C0.Left
  loc_16B17D6:               (CVar(var_11C)).Left = 
  loc_16B17F1:               Set var_F4 = var_108(Index)
  loc_16B17F7:               Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B17FF:                = var_108.Height
  loc_16B1811:               Set var_AC = var_C0(Index)
  loc_16B1817:               Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B181F:                = var_C0.Top
  loc_16B182B:               var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B183A:               (CVar(var_11C)).Top = 
  loc_16B185F:               (CVar(CStr(Index))).Tag = 
  loc_16B186D:             Else
  loc_16B1875:               If Not (var_12C = "DailySumm") Then
  loc_16B1880:                 If Not (var_12C = "AgingDr") Then
  loc_16B188B:                   If Not (var_12C = "AgingCr") Then
  loc_16B1896:                     If Not (var_12C = "Clg") Then
  loc_16B18A1:                       If Not (var_12C = "ClgNot") Then
  loc_16B18AC:                         If Not (var_12C = "AgingRepDr") Then
  loc_16B18B7:                           If (var_12C = "AgingRepCr") Then
  loc_16B18BA:                           End If
  loc_16B18BA:                         End If
  loc_16B18BA:                       End If
  loc_16B18BA:                     End If
  loc_16B18BA:                   End If
  loc_16B18BA:                 End If
  loc_16B18C3:                 var_11C = Me.RecordCount
  loc_16B1908:                 Set var_AC = var_C0(Index)
  loc_16B190E:                 Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B1916:                 ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_16B192E:                 If ( Or (var_110 = vbNullString)) Then
  loc_16B1931:                   Exit Sub
  loc_16B1932:                 End If
  loc_16B193F:                 Set var_AC = var_C0(Index)
  loc_16B1945:                 Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B194D:                  = var_C0.Text
  loc_16B1955:                 var_D0 = CVar(var_110) 'String
  loc_16B1976:                 var_108 = Me.Fields.Item("Name")
  loc_16B199A:                 If CBool(var_D0 <> var_108.Value) Then
  loc_16B19A3:                   Me.MoveFirst
  loc_16B19C8:                   Set var_AC = var_C0(Index)
  loc_16B19CE:                   Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B19D6:                   1 = var_C0.Text
  loc_16B19E4:                   Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16B19FA:                   Me.Find CStr(var_A8 & var_D0), , 
  loc_16B1A12:                 End If
  loc_16B1A24:                 (CVar(CDbl(0))).Left = 
  loc_16B1A39:                 Set var_F4 = var_108(Index)
  loc_16B1A3F:                 Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B1A47:                  = var_108.Height
  loc_16B1A59:                 Set var_AC = var_C0(Index)
  loc_16B1A5F:                 Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B1A67:                  = var_C0.Top
  loc_16B1A73:                 var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B1A82:                 (CVar(CDbl(0))).Top = 
  loc_16B1AA7:                 (CVar(CStr(Index))).Tag = 
  loc_16B1AB2:               End If
  loc_16B1AB2:             End If
  loc_16B1AB2:           End If
  loc_16B1AB2:         End If
  loc_16B1AB2:       End If
  loc_16B1AB2:     End If
  loc_16B1AB5:   Else
  loc_16B1ABC:     If (var_114 = CLng(3)) Then
  loc_16B1AC5:       var_144 = GRepFormName
  loc_16B1AD0:       If Not (var_144 = "Annexure") Then
  loc_16B1ADB:         If Not (var_144 = "RefReport") Then
  loc_16B1AE6:           If Not (var_144 = "JournalBook") Then
  loc_16B1AF1:             If Not (var_144 = "DetailedTrial") Then
  loc_16B1AFC:               If (var_144 = "JournalBookLog") Then
  loc_16B1AFF:               End If
  loc_16B1AFF:             End If
  loc_16B1AFF:           End If
  loc_16B1AFF:         End If
  loc_16B1B0C:         ReDim var_130(0 To 1)
  loc_16B1B23:         var_130(0) = "Yes"
  loc_16B1B25:         var_A8 = "No"
  loc_16B1B32:         var_130(1) = var_A8
  loc_16B1B6F:         Set var_C0 = ()
  loc_16B1B89:         Set global_184 = Proc_183_37_EFEF78((Array(var_130)), var_C0, Index)
  loc_16B1B9D:       Else
  loc_16B1BA5:         If (var_144 = "DayBook") Then
  loc_16B1BB1:           var_11C = Me.RecordCount
  loc_16B1BF6:           Set var_AC = var_C0(Index)
  loc_16B1BFC:           Call 0.Method_TxtGrid_GotFocus0 (var_110, ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_16B1C04:           global_164 = var_C0.Text
  loc_16B1C1C:           If (2 Or (var_110 = vbNullString)) Then
  loc_16B1C1F:             Exit Sub
  loc_16B1C20:           End If
  loc_16B1C2D:           Set var_AC = var_C0(Index)
  loc_16B1C33:           Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B1C3B:            = var_C0.Text
  loc_16B1C43:           var_D0 = CVar(var_110) 'String
  loc_16B1C64:           var_108 = Me.Fields.Item("Name")
  loc_16B1C88:           If CBool(var_D0 <> var_108.Value) Then
  loc_16B1C91:             Me.MoveFirst
  loc_16B1CB6:             Set var_AC = var_C0(Index)
  loc_16B1CBC:             Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B1CC4:             1 = var_C0.Text
  loc_16B1CD2:             Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16B1CE8:             Me.Find CStr(var_A8 & var_D0), , 
  loc_16B1D00:           End If
  loc_16B1D12:           (CVar(CDbl(0))).Left = 
  loc_16B1D27:           Set var_F4 = var_108(Index)
  loc_16B1D2D:           Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B1D35:            = var_108.Height
  loc_16B1D47:           Set var_AC = var_C0(Index)
  loc_16B1D4D:           Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B1D55:            = var_C0.Top
  loc_16B1D61:           var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B1D70:           (CVar(CDbl(0))).Top = 
  loc_16B1D95:           (CVar(CStr(Index))).Tag = 
  loc_16B1DA3:         Else
  loc_16B1DAB:           If Not (var_144 = "Led") Then
  loc_16B1DB6:             If Not (var_144 = "LedInt") Then
  loc_16B1DC1:               If Not (var_144 = "LedDeb") Then
  loc_16B1DCC:                 If Not (var_144 = "MemLed") Then
  loc_16B1DD7:                   If Not (var_144 = "LedCred") Then
  loc_16B1DE2:                     If (var_144 = "AcCheckList") Then
  loc_16B1DE5:                     End If
  loc_16B1DE5:                   End If
  loc_16B1DE5:                 End If
  loc_16B1DE5:               End If
  loc_16B1DE5:             End If
  loc_16B1DFA:             Set var_AC = CVar(CLng(2))(1)
  loc_16B1E2D:             If (Ucase(CVar(CStr(DGSite.DispID_41))) = "GROUP(RANGE)") Then
  loc_16B1E39:               var_11C = Me.RecordCount
  loc_16B1E7E:               Set var_AC = var_C0(Index)
  loc_16B1E84:               Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B1E8C:               ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_16B1EA4:               If ( Or (var_110 = vbNullString)) Then
  loc_16B1EA7:                 Exit Sub
  loc_16B1EA8:               End If
  loc_16B1EB5:               Set var_AC = var_C0(Index)
  loc_16B1EBB:               Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B1EC3:                = var_C0.Text
  loc_16B1ECB:               var_D0 = CVar(var_110) 'String
  loc_16B1EEC:               var_108 = Me.Fields.Item("Name")
  loc_16B1F10:               If CBool(var_D0 <> var_108.Value) Then
  loc_16B1F19:                 Me.MoveFirst
  loc_16B1F3E:                 Set var_AC = var_C0(Index)
  loc_16B1F44:                 Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B1F4C:                 1 = var_C0.Text
  loc_16B1F5A:                 Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16B1F70:                 Me.Find CStr(var_A8 & var_D0), , 
  loc_16B1F88:               End If
  loc_16B1F95:               Set var_AC = var_C0(Index)
  loc_16B1F9B:               Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B1FA3:                = var_C0.Left
  loc_16B1FBA:               (CVar(var_11C)).Left = 
  loc_16B1FD5:               Set var_F4 = var_108(Index)
  loc_16B1FDB:               Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B1FE3:                = var_108.Height
  loc_16B1FF5:               Set var_AC = var_C0(Index)
  loc_16B1FFB:               Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B2003:                = var_C0.Top
  loc_16B200F:               var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B201E:               (CVar(var_11C)).Top = 
  loc_16B2043:               (CVar(CStr(Index))).Tag = 
  loc_16B2051:             Else
  loc_16B205A:               var_11C = Me.RecordCount
  loc_16B209F:               Set var_AC = var_C0(Index)
  loc_16B20A5:               Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B20AD:               ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_16B20C5:               If ( Or (var_110 = vbNullString)) Then
  loc_16B20C8:                 Exit Sub
  loc_16B20C9:               End If
  loc_16B20D6:               Set var_AC = var_C0(Index)
  loc_16B20DC:               Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B20E4:                = var_C0.Text
  loc_16B20EC:               var_D0 = CVar(var_110) 'String
  loc_16B210D:               var_108 = Me.Fields.Item("Name")
  loc_16B2131:               If CBool(var_D0 <> var_108.Value) Then
  loc_16B213A:                 Me.MoveFirst
  loc_16B215F:                 Set var_AC = var_C0(Index)
  loc_16B2165:                 Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B216D:                 1 = var_C0.Text
  loc_16B217B:                 Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16B2191:                 Me.Find CStr(var_A8 & var_D0), , 
  loc_16B21A9:               End If
  loc_16B21BB:               (CVar(CDbl(0))).Left = 
  loc_16B21D0:               Set var_F4 = var_108(Index)
  loc_16B21D6:               Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B21DE:                = var_108.Height
  loc_16B21F0:               Set var_AC = var_C0(Index)
  loc_16B21F6:               Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B21FE:                = var_C0.Top
  loc_16B220A:               var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B2219:               (CVar(CDbl(0))).Top = 
  loc_16B223E:               (CVar(CStr(Index))).Tag = 
  loc_16B2249:             End If
  loc_16B2249:           End If
  loc_16B2249:         End If
  loc_16B2249:       End If
  loc_16B224C:     Else
  loc_16B2253:       If (var_114 = CLng(4)) Then
  loc_16B225C:         var_158 = GRepFormName
  loc_16B2267:         If Not (var_158 = "CashBook") Then
  loc_16B2272:           If Not (var_158 = "BankBook") Then
  loc_16B227D:             If Not (var_158 = "Led") Then
  loc_16B2288:               If Not (var_158 = "LedInt") Then
  loc_16B2293:                 If Not (var_158 = "AcCheckList") Then
  loc_16B229E:                   If Not (var_158 = "LedDeb") Then
  loc_16B22A9:                     If Not (var_158 = "MemLed") Then
  loc_16B22B4:                       If Not (var_158 = "LedCred") Then
  loc_16B22BF:                         If (var_158 = "RozNamcha") Then
  loc_16B22C2:                         End If
  loc_16B22C2:                       End If
  loc_16B22C2:                     End If
  loc_16B22C2:                   End If
  loc_16B22C2:                 End If
  loc_16B22C2:               End If
  loc_16B22C2:             End If
  loc_16B22C2:           End If
  loc_16B22CB:           var_11C = Me.RecordCount
  loc_16B2310:           Set var_AC = var_C0(Index)
  loc_16B2316:           Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B231E:           ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_16B2336:           If ( Or (var_110 = vbNullString)) Then
  loc_16B2339:             Exit Sub
  loc_16B233A:           End If
  loc_16B2347:           Set var_AC = var_C0(Index)
  loc_16B234D:           Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B2355:            = var_C0.Text
  loc_16B235D:           var_D0 = CVar(var_110) 'String
  loc_16B237E:           var_108 = Me.Fields.Item("Name")
  loc_16B23A2:           If CBool(var_D0 <> var_108.Value) Then
  loc_16B23AB:             Me.MoveFirst
  loc_16B23D0:             Set var_AC = var_C0(Index)
  loc_16B23D6:             Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B23DE:             1 = var_C0.Text
  loc_16B23EC:             Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16B2402:             Me.Find CStr(var_A8 & var_D0), , 
  loc_16B241A:           End If
  loc_16B242C:           (CVar(CDbl(0))).Left = 
  loc_16B2441:           Set var_F4 = var_108(Index)
  loc_16B2447:           Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B244F:            = var_108.Height
  loc_16B2461:           Set var_AC = var_C0(Index)
  loc_16B2467:           Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B246F:            = var_C0.Top
  loc_16B247B:           var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B248A:           (CVar(CDbl(0))).Top = 
  loc_16B24AF:           (CVar(CStr(Index))).Tag = 
  loc_16B24BD:         Else
  loc_16B24C5:           If Not (var_158 = "JournalBook") Then
  loc_16B24D0:             If (var_158 = "JournalBookLog") Then
  loc_16B24D3:             End If
  loc_16B24DC:             var_11C = Me.RecordCount
  loc_16B2521:             Set var_AC = var_C0(Index)
  loc_16B2527:             Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B252F:             ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_16B2547:             If ( Or (var_110 = vbNullString)) Then
  loc_16B254A:               Exit Sub
  loc_16B254B:             End If
  loc_16B2558:             Set var_AC = var_C0(Index)
  loc_16B255E:             Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B2566:              = var_C0.Text
  loc_16B256E:             var_D0 = CVar(var_110) 'String
  loc_16B258F:             var_108 = Me.Fields.Item("Name")
  loc_16B25B3:             If CBool(var_D0 <> var_108.Value) Then
  loc_16B25BC:               Me.MoveFirst
  loc_16B25E1:               Set var_AC = var_C0(Index)
  loc_16B25E7:               Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B25EF:               1 = var_C0.Text
  loc_16B25FD:               Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16B2613:               Me.Find CStr(var_A8 & var_D0), , 
  loc_16B262B:             End If
  loc_16B263D:             (CVar(CDbl(0))).Left = 
  loc_16B2652:             Set var_F4 = var_108(Index)
  loc_16B2658:             Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B2660:              = var_108.Height
  loc_16B2672:             Set var_AC = var_C0(Index)
  loc_16B2678:             Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B2680:              = var_C0.Top
  loc_16B268C:             var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B269B:             (CVar(CDbl(0))).Top = 
  loc_16B26C0:             (CVar(CStr(Index))).Tag = 
  loc_16B26CB:           End If
  loc_16B26CB:         End If
  loc_16B26CE:       Else
  loc_16B26D5:         If (var_114 = CLng(5)) Then
  loc_16B26DE:           var_15C = GRepFormName
  loc_16B26E9:           If Not (var_15C = "Led") Then
  loc_16B26F4:             If Not (var_15C = "LedInt") Then
  loc_16B26FF:               If Not (var_15C = "LedDeb") Then
  loc_16B270A:                 If Not (var_15C = "MemLed") Then
  loc_16B2715:                   If Not (var_15C = "LedCred") Then
  loc_16B2720:                     If (var_15C = "AcCheckList") Then
  loc_16B2723:                     End If
  loc_16B2723:                   End If
  loc_16B2723:                 End If
  loc_16B2723:               End If
  loc_16B2723:             End If
  loc_16B272C:             var_11C = Me.RecordCount
  loc_16B2771:             Set var_AC = var_C0(Index)
  loc_16B2777:             Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B277F:             ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_16B2797:             If ( Or (var_110 = vbNullString)) Then
  loc_16B279A:               Exit Sub
  loc_16B279B:             End If
  loc_16B27A8:             Set var_AC = var_C0(Index)
  loc_16B27AE:             Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B27B6:              = var_C0.Text
  loc_16B27BE:             var_D0 = CVar(var_110) 'String
  loc_16B27DF:             var_108 = Me.Fields.Item("Name")
  loc_16B2803:             If CBool(var_D0 <> var_108.Value) Then
  loc_16B280C:               Me.MoveFirst
  loc_16B2831:               Set var_AC = var_C0(Index)
  loc_16B2837:               Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B283F:               1 = var_C0.Text
  loc_16B284D:               Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16B2863:               Me.Find CStr(var_A8 & var_D0), , 
  loc_16B287B:             End If
  loc_16B288D:             (CVar(CDbl(0))).Left = 
  loc_16B28A2:             Set var_F4 = var_108(Index)
  loc_16B28A8:             Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B28B0:              = var_108.Height
  loc_16B28C2:             Set var_AC = var_C0(Index)
  loc_16B28C8:             Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B28D0:              = var_C0.Top
  loc_16B28DC:             var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B28EB:             (CVar(CDbl(0))).Top = 
  loc_16B2910:             (CVar(CStr(Index))).Tag = 
  loc_16B291B:           End If
  loc_16B291B:         End If
  loc_16B291B:       End If
  loc_16B291B:     End If
  loc_16B291B:   End If
  loc_16B291B: End If
  loc_16B2920: Set var_88 = Nothing
  loc_16B2923: Exit Sub
  loc_16B2924: ' Referenced from: 16B0FD4
  loc_16B292A: Call 0.Method_arg_50 (var_110)
  loc_16B2932: var_160 = "TxtGrid_GotFocus"
  loc_16B293F: Proc_183_57_104B0BC(var_110)
  loc_16B294B: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '14C6D98
  'Data Table: 583348
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As DataGrid
  Dim var_B0 As Long
  Dim var_FC As TextBox
  Dim var_98 As ColumnHeader
  Dim var_108 As TextBox
  loc_14C6080: On Error Goto loc_14C6D70
  loc_14C608D: If (CLng(Shift) = &H1B) Then
  loc_14C609C:   Set var_8C = var_90(0)
  loc_14C60A2:   Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_14C60AA:    = var_90.Tag
  loc_14C60BB:   Set var_98 = var_9C(0)
  loc_14C60C1:   Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_14C60C9:   var_9C.Text = 
  loc_14C60E5:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_14C60EE:   Set var_8C = (arg_14)
  loc_14C610A:   Set var_8C = var_90(0)
  loc_14C6110:   Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_14C6118:   var_90.Visible = DGSite.DispID_8001
  loc_14C6124:   Call Proc_203_55_EB8A64()
  loc_14C6129:   Exit Sub
  loc_14C612A: End If
  loc_14C6134: ().InsertRows , 
  loc_14C613D: var_B0 = CLng()
  loc_14C614D: If (var_B0 = CLng(2)) Then
  loc_14C6156:   var_B4 = GRepFormName
  loc_14C6161:   If (var_B4 = "BankReg") Then
  loc_14C6171:     ReDim var_B8(0 To 2)
  loc_14C6188:     var_B8(0) = "All"
  loc_14C6197:     var_B8(1) = "Debit"
  loc_14C61A6:     var_B8(2) = "Credit"
  loc_14C61BD:     global_164 = Array(var_B8)
  loc_14C61C8:     Set var_9C = var_B0(global_164)
  loc_14C61E3:     Set var_90 = ()
  loc_14C61FD:     Set global_184 = Proc_183_37_EFEF78(var_9C, var_90, KeyCode)
  loc_14C622F:     Set var_8C = var_90(0)
  loc_14C6235:     Call 0.Method_TxtGrid_KeyDown0 (var_F4)
  loc_14C623D:      = var_90.Left
  loc_14C624E:     Set var_98 = var_9C(0)
  loc_14C6254:     Call 0.Method_TxtGrid_KeyDown0 (var_F8)
  loc_14C625C:      = var_9C.Top
  loc_14C626D:     Set var_F0 = var_FC(0)
  loc_14C6273:     Call 0.Method_TxtGrid_KeyDown0 (var_100)
  loc_14C627B:      = var_FC.Height
  loc_14C62C8:     Proc_183_23_11A2C00(3(global_164), (), (), 0, Shift)
  loc_14C62EB:   Else
  loc_14C62F3:     If (var_B4 = "DUELIST") Then
  loc_14C631E:       CDbl(1500) = var_98(1).ColumnLabelCount.ControlDefault
  loc_14C6326:       var_98.Width = arg_14
  loc_14C635C:       Set var_90 = var_98(2).ColumnLabelCount
  loc_14C6362:       CDbl(0) = var_90.ControlDefault
  loc_14C636A:       var_98.Width = CInt(var_F4)
  loc_14C6383:       Set var_118 = 1750(CInt(((var_F8 + var_100) + CDbl(&H19))))
  loc_14C63A0:       Set var_8C = var_90(0)
  loc_14C63A6:       Call 0.Method_TxtGrid_KeyDown0 (var_F4)
  loc_14C63AE:        = var_90.Left
  loc_14C63BF:       Set var_98 = var_9C(0)
  loc_14C63C5:       Call 0.Method_TxtGrid_KeyDown0 (var_F8)
  loc_14C63CD:        = var_9C.Top
  loc_14C63DE:       Set var_F0 = var_FC(0)
  loc_14C63E4:       Call 0.Method_TxtGrid_KeyDown0 (var_100)
  loc_14C63EC:        = var_FC.Height
  loc_14C642A:       Set var_108 = (800)
  loc_14C6439:       Proc_183_23_11A2C00(3(global_164), var_108, (), 0, Shift)
  loc_14C645C:     Else
  loc_14C6464:       If Not (var_B4 = "CashBook") Then
  loc_14C646F:         If Not (var_B4 = "BankBook") Then
  loc_14C647A:           If Not (var_B4 = "Led") Then
  loc_14C6485:             If Not (var_B4 = "LedInt") Then
  loc_14C6490:               If Not (var_B4 = "LedDeb") Then
  loc_14C649B:                 If Not (var_B4 = "MemLed") Then
  loc_14C64A6:                   If Not (var_B4 = "LedCred") Then
  loc_14C64B1:                     If Not (var_B4 = "AcCheckList") Then
  loc_14C64BC:                       If Not (var_B4 = "DayBook") Then
  loc_14C64C7:                         If Not (var_B4 = "RozNamcha") Then
  loc_14C64D2:                           If (var_B4 = "DetailedTrial") Then
  loc_14C64D5:                           End If
  loc_14C64D5:                         End If
  loc_14C64D5:                       End If
  loc_14C64D5:                     End If
  loc_14C64D5:                   End If
  loc_14C64D5:                 End If
  loc_14C64D5:               End If
  loc_14C64D5:             End If
  loc_14C64D5:           End If
  loc_14C64D5:         End If
  loc_14C64E0:         Set var_138 = 1750(CInt(((var_F8 + var_100) + CDbl(&H19))))
  loc_14C64F6:         Set var_8C = var_90(0)
  loc_14C64FC:         Call 0.Method_TxtGrid_KeyDown0 (var_F4)
  loc_14C6504:          = var_90.Left
  loc_14C6515:         Set var_98 = var_9C(0)
  loc_14C651B:         Call 0.Method_TxtGrid_KeyDown0 (var_F8)
  loc_14C6523:          = var_9C.Top
  loc_14C6534:         Set var_F0 = var_FC(0)
  loc_14C653A:         Call 0.Method_TxtGrid_KeyDown0 (var_100)
  loc_14C6542:          = var_FC.Height
  loc_14C6553:         Set var_104 = var_108(0)
  loc_14C6559:         Call 0.Method_TxtGrid_KeyDown0 (var_134)
  loc_14C6561:          = var_108.Width
  loc_14C65AE:         Proc_183_23_11A2C00(CInt(var_F4)(arg_14), var_138, (800), 0, Shift)
  loc_14C65D5:       Else
  loc_14C65DD:         If Not (var_B4 = "JournalBook") Then
  loc_14C65E8:           If Not (var_B4 = "Annexure") Then
  loc_14C65F3:             If (var_B4 = "JournalBookLog") Then
  loc_14C65F6:             End If
  loc_14C65F6:           End If
  loc_14C6601:           Set var_9C = CInt(var_134)(CInt(((var_F8 + var_100) + CDbl(&H19))))
  loc_14C662C:           Proc_183_34_1307118(CInt(var_F4)(arg_14), var_9C, KeyCode, global_72)
  loc_14C663F:         Else
  loc_14C6647:           If Not (var_B4 = "DailySumm") Then
  loc_14C6652:             If Not (var_B4 = "AgingDr") Then
  loc_14C665D:               If Not (var_B4 = "AgingCr") Then
  loc_14C6668:                 If Not (var_B4 = "Clg") Then
  loc_14C6673:                   If Not (var_B4 = "ClgNot") Then
  loc_14C667E:                     If Not (var_B4 = "AgingRepDr") Then
  loc_14C6689:                       If (var_B4 = "AgingRepCr") Then
  loc_14C668C:                       End If
  loc_14C668C:                     End If
  loc_14C668C:                   End If
  loc_14C668C:                 End If
  loc_14C668C:               End If
  loc_14C668C:             End If
  loc_14C6697:             Set var_9C = 0(1)
  loc_14C66B3:             Set var_90 = var_9C
  loc_14C66C2:             Proc_183_34_1307118(&HFF(Shift), var_90, KeyCode, global_76)
  loc_14C66D2:           End If
  loc_14C66D2:         End If
  loc_14C66D2:       End If
  loc_14C66D2:     End If
  loc_14C66D2:   End If
  loc_14C66DC:   If (CLng(Shift) = &HD) Then
  loc_14C66EC:     Call Proc_203_53_19CDCE4(0, 0, var_110)
  loc_14C66F7:     If (var_110 = &HFF) Then
  loc_14C66FA:       Call Proc_203_57_F303E0(Shift, &HFF)
  loc_14C66FF:     End If
  loc_14C66FF:   End If
  loc_14C6702: Else
  loc_14C6709:   If (var_B0 = CLng(3)) Then
  loc_14C6712:     var_140 = GRepFormName
  loc_14C671D:     If Not (var_140 = "Annexure") Then
  loc_14C6728:       If Not (var_140 = "RefReport") Then
  loc_14C6733:         If Not (var_140 = "JournalBook") Then
  loc_14C673E:           If Not (var_140 = "DetailedTrial") Then
  loc_14C6749:             If (var_140 = "JournalBookLog") Then
  loc_14C674C:             End If
  loc_14C674C:           End If
  loc_14C674C:         End If
  loc_14C674C:       End If
  loc_14C676D:       Set var_8C = var_90(0)
  loc_14C6773:       Call 0.Method_TxtGrid_KeyDown0 (var_F4)
  loc_14C677B:        = var_90.Left
  loc_14C678C:       Set var_98 = var_9C(0)
  loc_14C6792:       Call 0.Method_TxtGrid_KeyDown0 (var_F8)
  loc_14C679A:        = var_9C.Top
  loc_14C67AB:       Set var_F0 = var_FC(0)
  loc_14C67B1:       Call 0.Method_TxtGrid_KeyDown0 (var_100)
  loc_14C67B9:        = var_FC.Height
  loc_14C67CA:       Set var_104 = var_108(0)
  loc_14C67D0:       Call 0.Method_TxtGrid_KeyDown0 (var_134)
  loc_14C67D8:        = var_108.Width
  loc_14C6825:       Proc_183_23_11A2C00((1), (), (), 0, Shift)
  loc_14C684C:     Else
  loc_14C6854:       If (var_140 = "DayBook") Then
  loc_14C688D:         Proc_183_34_1307118(Me.DGSite, CInt(var_F4)(arg_14), KeyCode, global_80, Shift)
  loc_14C68A0:       Else
  loc_14C68A8:         If Not (var_140 = "Led") Then
  loc_14C68B3:           If Not (var_140 = "LedInt") Then
  loc_14C68BE:             If Not (var_140 = "LedDeb") Then
  loc_14C68C9:               If Not (var_140 = "MemLed") Then
  loc_14C68D4:                 If Not (var_140 = "LedCred") Then
  loc_14C68DF:                   If (var_140 = "AcCheckList") Then
  loc_14C68E2:                   End If
  loc_14C68E2:                 End If
  loc_14C68E2:               End If
  loc_14C68E2:             End If
  loc_14C68E2:           End If
  loc_14C68F7:           Set var_8C = CVar(CLng(2))(1)
  loc_14C692A:           If (Ucase(CVar(CStr(DGSite.DispID_41))) = "GROUP(RANGE)") Then
  loc_14C6938:             Set var_9C = CInt(var_134)(CInt(((var_F8 + var_100) + CDbl(&H19))))
  loc_14C6963:             Proc_183_34_1307118(1(&HFF), CInt(var_F4)(arg_14), KeyCode, global_72)
  loc_14C6976:           Else
  loc_14C69AC:             Proc_183_34_1307118(&HFF(Shift), 0(1), KeyCode, global_76)
  loc_14C69BC:           End If
  loc_14C69BC:         End If
  loc_14C69BC:       End If
  loc_14C69BC:     End If
  loc_14C69C6:     If (CLng(Shift) = &HD) Then
  loc_14C69D6:       Call Proc_203_53_19CDCE4(0, 0, var_110)
  loc_14C69E1:       If (var_110 = &HFF) Then
  loc_14C69E4:         Call Proc_203_57_F303E0(Shift, &HFF)
  loc_14C69E9:       End If
  loc_14C69E9:     End If
  loc_14C69EC:   Else
  loc_14C69F3:     If (var_B0 = CLng(4)) Then
  loc_14C69FC:       var_184 = GRepFormName
  loc_14C6A07:       If Not (var_184 = "CashBook") Then
  loc_14C6A12:         If Not (var_184 = "BankBook") Then
  loc_14C6A1D:           If Not (var_184 = "Led") Then
  loc_14C6A28:             If Not (var_184 = "LedInt") Then
  loc_14C6A33:               If Not (var_184 = "LedDeb") Then
  loc_14C6A3E:                 If Not (var_184 = "MemLed") Then
  loc_14C6A49:                   If Not (var_184 = "LedCred") Then
  loc_14C6A54:                     If Not (var_184 = "AcCheckList") Then
  loc_14C6A5F:                       If (var_184 = "RozNamcha") Then
  loc_14C6A62:                       End If
  loc_14C6A62:                     End If
  loc_14C6A62:                   End If
  loc_14C6A62:                 End If
  loc_14C6A62:               End If
  loc_14C6A62:             End If
  loc_14C6A62:           End If
  loc_14C6A62:         End If
  loc_14C6A98:         Proc_183_34_1307118((1), (), KeyCode, global_76)
  loc_14C6AAB:       Else
  loc_14C6AB3:         If Not (var_184 = "JournalBook") Then
  loc_14C6ABE:           If (var_184 = "JournalBookLog") Then
  loc_14C6AC1:           End If
  loc_14C6AF7:           Proc_183_34_1307118(Me.DGSite, &HFF(Shift), KeyCode, global_80)
  loc_14C6B07:         End If
  loc_14C6B07:       End If
  loc_14C6B11:       If (CLng(Shift) = &HD) Then
  loc_14C6B21:         Call Proc_203_53_19CDCE4(0, 0, var_110, Shift)
  loc_14C6B2C:         If (var_110 = &HFF) Then
  loc_14C6B2F:           Call Proc_203_57_F303E0(&HFF, 1)
  loc_14C6B34:         End If
  loc_14C6B34:       End If
  loc_14C6B37:     Else
  loc_14C6B3E:       If (var_B0 = CLng(5)) Then
  loc_14C6B47:         var_188 = GRepFormName
  loc_14C6B52:         If Not (var_188 = "Led") Then
  loc_14C6B5D:           If Not (var_188 = "LedInt") Then
  loc_14C6B68:             If Not (var_188 = "LedDeb") Then
  loc_14C6B73:               If Not (var_188 = "MemLed") Then
  loc_14C6B7E:                 If Not (var_188 = "LedCred") Then
  loc_14C6B89:                   If (var_188 = "AcCheckList") Then
  loc_14C6B8C:                   End If
  loc_14C6B8C:                 End If
  loc_14C6B8C:               End If
  loc_14C6B8C:             End If
  loc_14C6B8C:           End If
  loc_14C6BC2:           Proc_183_34_1307118((1), (), KeyCode, global_76)
  loc_14C6BD2:         End If
  loc_14C6BDC:         If (CLng(Shift) = &HD) Then
  loc_14C6BEC:           Call Proc_203_53_19CDCE4(0, 0, var_110)
  loc_14C6BF7:           If (var_110 = &HFF) Then
  loc_14C6BFA:             Call Proc_203_57_F303E0(Shift, &HFF)
  loc_14C6BFF:           End If
  loc_14C6BFF:         End If
  loc_14C6C02:       Else
  loc_14C6C09:         If (var_B0 = CLng(0)) Then
  loc_14C6C12:           var_18C = GRepFormName
  loc_14C6C1D:           If Not (var_18C = "BudgetVariance") Then
  loc_14C6C28:             If (var_18C = "Budget") Then
  loc_14C6C2B:             End If
  loc_14C6C61:             Proc_183_34_1307118((1), (), KeyCode, global_76)
  loc_14C6C74:           Else
  loc_14C6CB4:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_162 = &HFF))) Then
  loc_14C6CC4:               Call Proc_203_53_19CDCE4(0, 0, var_110)
  loc_14C6CCF:               If (var_110 = &HFF) Then
  loc_14C6CD2:                 Call Proc_203_57_F303E0(Shift, &HFF)
  loc_14C6CD7:               End If
  loc_14C6CD7:             End If
  loc_14C6CD7:           End If
  loc_14C6CDA:         Else
  loc_14C6CE1:           If Not (var_B0 = CLng(1)) Then
  loc_14C6CEB:             If Not (var_B0 = CLng(6)) Then
  loc_14C6CF5:               If Not (var_B0 = CLng(7)) Then
  loc_14C6CFF:                 If Not (var_B0 = CLng(8)) Then
  loc_14C6D09:                   If (var_B0 = CLng(9)) Then
  loc_14C6D0C:                   End If
  loc_14C6D0C:                 End If
  loc_14C6D0C:               End If
  loc_14C6D0C:             End If
  loc_14C6D4C:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_162 = &HFF))) Then
  loc_14C6D5C:               Call Proc_203_53_19CDCE4(0, 0)
  loc_14C6D67:               If (var_110 = &HFF) Then
  loc_14C6D6A:                 Call Proc_203_57_F303E0(var_110)
  loc_14C6D6F:               End If
  loc_14C6D6F:             End If
  loc_14C6D6F:           End If
  loc_14C6D6F:         End If
  loc_14C6D6F:       End If
  loc_14C6D6F:     End If
  loc_14C6D6F:   End If
  loc_14C6D6F: End If
  loc_14C6D6F: Exit Sub
  loc_14C6D70: ' Referenced from: 14C6080
  loc_14C6D76: Call 0.Method_arg_50 (var_94)
  loc_14C6D8B: Proc_183_57_104B0BC(var_94, "TxtGrid_KeyDown")
  loc_14C6D97: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '12B9A14
  'Data Table: 583348
  Dim var_88 As DataGrid
  Dim var_9C As Long
  loc_12B93E8: On Error Goto loc_12B99EA
  loc_12B93EE: Proc_183_46_E07C50(arg_10)
  loc_12B93FD: ().InsertRows , 
  loc_12B9406: var_9C = CLng()
  loc_12B9416: If (var_9C = CLng(0)) Then
  loc_12B941F:   var_A0 = GRepFormName
  loc_12B942A:   If Not (var_A0 = "BudgetVariance") Then
  loc_12B9435:     If (var_A0 = "Budget") Then
  loc_12B9438:     End If
  loc_12B9454:     If (CBool((var_9C).Visible) = &HFF) Then
  loc_12B9466:       var_A4 = "Name"
  loc_12B9481:       Proc_183_41_145A968((), KeyAscii, global_76)
  loc_12B9490:     End If
  loc_12B9490:   End If
  loc_12B9493: Else
  loc_12B949A:   If (var_9C = CLng(2)) Then
  loc_12B94A3:     var_B0 = GRepFormName
  loc_12B94AE:     If Not (var_B0 = "JournalBook") Then
  loc_12B94B9:       If Not (var_B0 = "Annexure") Then
  loc_12B94C4:         If (var_B0 = "JournalBookLog") Then
  loc_12B94C7:         End If
  loc_12B94C7:       End If
  loc_12B94E3:       If (CBool(var_A4(arg_10).Visible) = &HFF) Then
  loc_12B94F5:         var_A4 = "Name"
  loc_12B9510:         Proc_183_41_145A968((0), KeyAscii, global_72)
  loc_12B951F:       End If
  loc_12B9522:     Else
  loc_12B952A:       If Not (var_B0 = "DailySumm") Then
  loc_12B9535:         If Not (var_B0 = "AgingDr") Then
  loc_12B9540:           If Not (var_B0 = "AgingCr") Then
  loc_12B954B:             If Not (var_B0 = "Clg") Then
  loc_12B9556:               If Not (var_B0 = "ClgNot") Then
  loc_12B9561:                 If Not (var_B0 = "AgingRepDr") Then
  loc_12B956C:                   If (var_B0 = "AgingRepCr") Then
  loc_12B956F:                   End If
  loc_12B956F:                 End If
  loc_12B956F:               End If
  loc_12B956F:             End If
  loc_12B956F:           End If
  loc_12B956F:         End If
  loc_12B958B:         If (CBool(var_A4(arg_10).Visible) = &HFF) Then
  loc_12B9592:           Set var_AC = (0)
  loc_12B959D:           var_A4 = "Name"
  loc_12B95B8:           Proc_183_41_145A968(var_AC, KeyAscii, global_76)
  loc_12B95C7:         End If
  loc_12B95C7:       End If
  loc_12B95C7:     End If
  loc_12B95CA:   Else
  loc_12B95D1:     If (var_9C = CLng(3)) Then
  loc_12B95DA:       var_B4 = GRepFormName
  loc_12B95E5:       If (var_B4 = "DueListPeriod") Then
  loc_12B95F2:         Set var_88 = var_AC(KeyAscii)
  loc_12B95F8:         Call 0.Method_TxtGrid_KeyPress0 (arg_10, var_A4)
  loc_12B9613:         Proc_183_22_129BBAC(var_AC, arg_10, 3)
  loc_12B9622:       Else
  loc_12B962A:         If Not (var_B4 = "CashBook") Then
  loc_12B9635:           If Not (var_B4 = "BankBook") Then
  loc_12B9640:             If (var_B4 = "RozNamcha") Then
  loc_12B9643:             End If
  loc_12B9643:           End If
  loc_12B964D:           Set var_88 = var_AC(KeyAscii)
  loc_12B9653:           Call 0.Method_TxtGrid_KeyPress0 (0)
  loc_12B966E:           Proc_183_22_129BBAC(var_AC, arg_10, 4)
  loc_12B967D:         Else
  loc_12B9685:           If (var_B4 = "DayBook") Then
  loc_12B96A4:             If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_12B96B6:               var_A4 = "Name"
  loc_12B96D1:               Proc_183_41_145A968(0(0), KeyAscii, global_80)
  loc_12B96E0:             End If
  loc_12B96E3:           Else
  loc_12B96EB:             If Not (var_B4 = "Led") Then
  loc_12B96F6:               If (var_B4 = "LedInt") Then
  loc_12B96F9:               End If
  loc_12B970E:               Set var_88 = CVar(CLng(2))(1)
  loc_12B9741:               If (Ucase(CVar(CStr(DGSite.DispID_41))) = "GROUP(RANGE)") Then
  loc_12B9760:                 If (CBool(var_A4(arg_10).Visible) = &HFF) Then
  loc_12B9772:                   var_A4 = "Name"
  loc_12B978D:                   Proc_183_41_145A968((0), KeyAscii, global_72)
  loc_12B979C:                 End If
  loc_12B979F:               Else
  loc_12B97BB:                 If (CBool(var_A4(arg_10).Visible) = &HFF) Then
  loc_12B97CD:                   var_A4 = "Name"
  loc_12B97E8:                   Proc_183_41_145A968((0), KeyAscii, global_76)
  loc_12B97F7:                 End If
  loc_12B97F7:               End If
  loc_12B97F7:             End If
  loc_12B97F7:           End If
  loc_12B97F7:         End If
  loc_12B97F7:       End If
  loc_12B97FA:     Else
  loc_12B9801:       If (var_9C = CLng(4)) Then
  loc_12B980A:         var_140 = GRepFormName
  loc_12B9815:         If Not (var_140 = "CashBook") Then
  loc_12B9820:           If Not (var_140 = "BankBook") Then
  loc_12B982B:             If Not (var_140 = "Led") Then
  loc_12B9836:               If Not (var_140 = "LedInt") Then
  loc_12B9841:                 If Not (var_140 = "LedDeb") Then
  loc_12B984C:                   If Not (var_140 = "MemLed") Then
  loc_12B9857:                     If Not (var_140 = "LedCred") Then
  loc_12B9862:                       If Not (var_140 = "AcCheckList") Then
  loc_12B986D:                         If (var_140 = "RozNamcha") Then
  loc_12B9870:                         End If
  loc_12B9870:                       End If
  loc_12B9870:                     End If
  loc_12B9870:                   End If
  loc_12B9870:                 End If
  loc_12B9870:               End If
  loc_12B9870:             End If
  loc_12B9870:           End If
  loc_12B988C:           If (CBool(var_A4(arg_10).Visible) = &HFF) Then
  loc_12B989E:             var_A4 = "Name"
  loc_12B98B9:             Proc_183_41_145A968((0), KeyAscii, global_76)
  loc_12B98C8:           End If
  loc_12B98CB:         Else
  loc_12B98D3:           If Not (var_140 = "JournalBook") Then
  loc_12B98DE:             If (var_140 = "JournalBookLog") Then
  loc_12B98E1:             End If
  loc_12B98FD:             If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_12B990F:               var_A4 = "Name"
  loc_12B992A:               Proc_183_41_145A968(var_A4(arg_10), KeyAscii, global_80, arg_10)
  loc_12B9939:             End If
  loc_12B9939:           End If
  loc_12B9939:         End If
  loc_12B993C:       Else
  loc_12B9943:         If (var_9C = CLng(5)) Then
  loc_12B994C:           var_144 = GRepFormName
  loc_12B9957:           If Not (var_144 = "Led") Then
  loc_12B9962:             If Not (var_144 = "LedInt") Then
  loc_12B996D:               If Not (var_144 = "LedDeb") Then
  loc_12B9978:                 If Not (var_144 = "MemLed") Then
  loc_12B9983:                   If Not (var_144 = "LedCred") Then
  loc_12B998E:                     If (var_144 = "AcCheckList") Then
  loc_12B9991:                     End If
  loc_12B9991:                   End If
  loc_12B9991:                 End If
  loc_12B9991:               End If
  loc_12B9991:             End If
  loc_12B99AD:             If (CBool(0(var_A4).Visible) = &HFF) Then
  loc_12B99BF:               var_A4 = "Name"
  loc_12B99DA:               Proc_183_41_145A968((0), KeyAscii, global_76)
  loc_12B99E9:             End If
  loc_12B99E9:           End If
  loc_12B99E9:         End If
  loc_12B99E9:       End If
  loc_12B99E9:     End If
  loc_12B99E9:   End If
  loc_12B99E9: End If
  loc_12B99E9: Exit Sub
  loc_12B99EA: ' Referenced from: 12B93E8
  loc_12B99F0: Call 0.Method_arg_50 (var_A4, arg_10)
  loc_12B9A05: Proc_183_57_104B0BC(var_A4, "TxtGrid_KeyPress")
  loc_12B9A11: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1386BAC
  'Data Table: 583348
  Dim var_88 As Variant
  Dim var_9C As Long
  loc_1386304: On Error Goto loc_1386B84
  loc_1386311: ().InsertRows , 
  loc_138631A: var_9C = CLng()
  loc_138632A: If (var_9C = CLng(0)) Then
  loc_1386333:   var_A0 = GRepFormName
  loc_138633E:   If Not (var_A0 = "BudgetVariance") Then
  loc_1386349:     If (var_A0 = "Budget") Then
  loc_138634C:     End If
  loc_138636F:     If ( And (CBool(var_9C((Shift <> &HD)).Visible) = 0)) Then
  loc_1386380:       Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1386394:       var_A8 = "Name"
  loc_13863AF:       Proc_183_41_145A968((0), KeyCode, global_76)
  loc_13863BE:     End If
  loc_13863BE:   End If
  loc_13863C1: Else
  loc_13863C8:   If (var_9C = CLng(2)) Then
  loc_13863D1:     var_B0 = GRepFormName
  loc_13863DC:     If Not (var_B0 = "JournalBook") Then
  loc_13863E7:       If Not (var_B0 = "Annexure") Then
  loc_13863F2:         If (var_B0 = "JournalBookLog") Then
  loc_13863F5:         End If
  loc_13863F5:       End If
  loc_1386418:       If (var_A8 And (CBool(Shift((Shift <> &HD)).Visible) = 0)) Then
  loc_1386429:         Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_138643D:         var_A8 = "Name"
  loc_1386458:         Proc_183_41_145A968(&HFF(0), KeyCode, global_72)
  loc_1386467:       End If
  loc_138646A:     Else
  loc_1386472:       If Not (var_B0 = "DailySumm") Then
  loc_138647D:         If Not (var_B0 = "AgingDr") Then
  loc_1386488:           If Not (var_B0 = "AgingCr") Then
  loc_1386493:             If Not (var_B0 = "Clg") Then
  loc_138649E:               If Not (var_B0 = "ClgNot") Then
  loc_13864A9:                 If Not (var_B0 = "AgingRepDr") Then
  loc_13864B4:                   If (var_B0 = "AgingRepCr") Then
  loc_13864B7:                   End If
  loc_13864B7:                 End If
  loc_13864B7:               End If
  loc_13864B7:             End If
  loc_13864B7:           End If
  loc_13864B7:         End If
  loc_13864DA:         If (var_A8 And (CBool(Shift((Shift <> &HD)).Visible) = 0)) Then
  loc_13864EB:           Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_13864FF:           var_A8 = "Name"
  loc_138651A:           Proc_183_41_145A968(&HFF(0), KeyCode, global_76)
  loc_1386529:         End If
  loc_138652C:       Else
  loc_138653F:         Shift = (Shift <> &HD)(var_A2).Visible
  loc_138654E:         If (var_A8 And (var_A2 = 0)) Then
  loc_138655F:           Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1386564:         End If
  loc_1386592:         Proc_183_35_F2A594(&HFF(0), (), 0)
  loc_13865A2:       End If
  loc_13865A2:     End If
  loc_13865A5:   Else
  loc_13865AC:     If (var_9C = CLng(3)) Then
  loc_13865B5:       var_BC = GRepFormName
  loc_13865C0:       If Not (var_BC = "Annexure") Then
  loc_13865CB:         If Not (var_BC = "RefReport") Then
  loc_13865D6:           If Not (var_BC = "JournalBook") Then
  loc_13865E1:             If (var_BC = "JournalBookLog") Then
  loc_13865E4:             End If
  loc_13865E4:           End If
  loc_13865E4:         End If
  loc_13865F7:         Shift = (Shift <> &HD)(var_A2).Visible
  loc_1386606:         If (global_184 And (var_A2 = 0)) Then
  loc_1386617:           Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_138661C:         End If
  loc_138664A:         Proc_183_35_F2A594((0), (), 0)
  loc_138665D:       Else
  loc_1386665:         If (var_BC = "DayBook") Then
  loc_138668B:           If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_138669C:             Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_13866B0:             var_A8 = "Name"
  loc_13866CB:             Proc_183_41_145A968(Shift(0), KeyCode, global_80, Shift)
  loc_13866DA:           End If
  loc_13866DD:         Else
  loc_13866E5:           If Not (var_BC = "Led") Then
  loc_13866F0:             If Not (var_BC = "LedInt") Then
  loc_13866FB:               If Not (var_BC = "LedDeb") Then
  loc_1386706:                 If Not (var_BC = "MemLed") Then
  loc_1386711:                   If Not (var_BC = "LedCred") Then
  loc_138671C:                     If (var_BC = "AcCheckList") Then
  loc_138671F:                     End If
  loc_138671F:                   End If
  loc_138671F:                 End If
  loc_138671F:               End If
  loc_138671F:             End If
  loc_1386734:             Set var_88 = CVar(CLng(2))(1)
  loc_1386767:             If (Ucase(CVar(CStr(DGSite.DispID_41))) = "GROUP(RANGE)") Then
  loc_138678D:               If (&HFF And (CBool(var_A8((Shift <> &HD)).Visible) = 0)) Then
  loc_138679E:                 Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_13867B2:                 var_A8 = "Name"
  loc_13867CD:                 Proc_183_41_145A968(global_184(0), KeyCode, global_72)
  loc_13867DC:               End If
  loc_13867DF:             Else
  loc_1386802:               If (var_A8 And (CBool(Shift((Shift <> &HD)).Visible) = 0)) Then
  loc_1386813:                 Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1386827:                 var_A8 = "Name"
  loc_1386842:                 Proc_183_41_145A968(&HFF(0), KeyCode, global_76)
  loc_1386851:               End If
  loc_1386851:             End If
  loc_1386851:           End If
  loc_1386851:         End If
  loc_1386851:       End If
  loc_1386854:     Else
  loc_138685B:       If (var_9C = CLng(4)) Then
  loc_1386864:         var_140 = GRepFormName
  loc_138686F:         If Not (var_140 = "CashBook") Then
  loc_138687A:           If Not (var_140 = "BankBook") Then
  loc_1386885:             If Not (var_140 = "Led") Then
  loc_1386890:               If Not (var_140 = "LedInt") Then
  loc_138689B:                 If Not (var_140 = "LedDeb") Then
  loc_13868A6:                   If Not (var_140 = "MemLed") Then
  loc_13868B1:                     If Not (var_140 = "LedCred") Then
  loc_13868BC:                       If Not (var_140 = "AcCheckList") Then
  loc_13868C7:                         If (var_140 = "RozNamcha") Then
  loc_13868CA:                         End If
  loc_13868CA:                       End If
  loc_13868CA:                     End If
  loc_13868CA:                   End If
  loc_13868CA:                 End If
  loc_13868CA:               End If
  loc_13868CA:             End If
  loc_13868CA:           End If
  loc_13868ED:           If (var_A8 And (CBool(Shift((Shift <> &HD)).Visible) = 0)) Then
  loc_13868FE:             Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1386912:             var_A8 = "Name"
  loc_138692D:             Proc_183_41_145A968(&HFF(0), KeyCode, global_76)
  loc_138693C:           End If
  loc_138693F:         Else
  loc_1386947:           If Not (var_140 = "JournalBook") Then
  loc_1386952:             If (var_140 = "JournalBookLog") Then
  loc_1386955:             End If
  loc_1386978:             If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_1386989:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_138699D:               var_A8 = "Name"
  loc_13869B8:               Proc_183_41_145A968(Shift(0), KeyCode, global_80, Shift)
  loc_13869C7:             End If
  loc_13869CA:           Else
  loc_13869DD:             var_A8 = (Shift <> &HD)(var_A2).Visible
  loc_13869EC:             If (&HFF And (var_A2 = 0)) Then
  loc_13869FD:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1386A02:             End If
  loc_1386A30:             Proc_183_35_F2A594(var_A8(0), (&HFF), 0)
  loc_1386A40:           End If
  loc_1386A40:         End If
  loc_1386A43:       Else
  loc_1386A4A:         If (var_9C = CLng(5)) Then
  loc_1386A53:           var_144 = GRepFormName
  loc_1386A5E:           If Not (var_144 = "Led") Then
  loc_1386A69:             If Not (var_144 = "LedInt") Then
  loc_1386A74:               If Not (var_144 = "LedDeb") Then
  loc_1386A7F:                 If Not (var_144 = "MemLed") Then
  loc_1386A8A:                   If Not (var_144 = "LedCred") Then
  loc_1386A95:                     If (var_144 = "AcCheckList") Then
  loc_1386A98:                     End If
  loc_1386A98:                   End If
  loc_1386A98:                 End If
  loc_1386A98:               End If
  loc_1386A98:             End If
  loc_1386ABB:             If (global_184 And (CBool(Shift((Shift <> &HD)).Visible) = 0)) Then
  loc_1386ACC:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1386AE0:               var_A8 = "Name"
  loc_1386AFB:               Proc_183_41_145A968((0), KeyCode, global_76)
  loc_1386B0A:             End If
  loc_1386B0D:           Else
  loc_1386B20:             Shift = (Shift <> &HD)(var_A2).Visible
  loc_1386B2F:             If (var_A8 And (var_A2 = 0)) Then
  loc_1386B40:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1386B45:             End If
  loc_1386B73:             Proc_183_35_F2A594(&HFF(0), (), 0)
  loc_1386B83:           End If
  loc_1386B83:         End If
  loc_1386B83:       End If
  loc_1386B83:     End If
  loc_1386B83:   End If
  loc_1386B83: End If
  loc_1386B83: Exit Sub
  loc_1386B84: ' Referenced from: 1386304
  loc_1386B8A: Call 0.Method_arg_50 (var_A8, Shift)
  loc_1386B9F: Proc_183_57_104B0BC(var_A8, "TxtGrid_KeyUp")
  loc_1386BAB: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E60940
  'Data Table: 583348
  Dim arg_10 As Integer
  loc_E608FC: On Error Goto loc_E60917
  loc_E6090A: Call Proc_203_53_19CDCE4(Cancel, &HFF)
  loc_E60913: arg_10 = Not(var_88)
  loc_E60916: Exit Sub
  loc_E60917: ' Referenced from: E608FC
  loc_E6091D: Call 0.Method_arg_50 (var_8C, arg_10)
  loc_E60932: Proc_183_57_104B0BC(var_8C, "TxtGrid_Validate")
  loc_E6093E: Exit Sub
End Sub

Private Sub DGAccount_UnknownEvent_9 'FD20A4
  'Data Table: 583348
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  loc_FD1EEC: On Error Goto loc_FD2079
  loc_FD1EFE: (False).Visible = 
  loc_FD1F1D: If (Me.RecordCount > 0) Then
  loc_FD1F3A:   var_EC = Val(CStr(().Tag))
  loc_FD1F79:   Set var_CC = var_D0(CInt(var_EC))
  loc_FD1F7F:   Call 0.Method_DGAccount_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_FD1F87:   var_D0.Tag = var_EC
  loc_FD1FAB:   Set var_B4 = ()
  loc_FD1FC1:   var_EC = Val(CStr(var_B4.Tag))
  loc_FD2000:   Set var_CC = var_D0(CInt(var_EC))
  loc_FD2006:   Call 0.Method_DGAccount_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_FD200E:   var_D0.Text = var_EC
  loc_FD202E: End If
  loc_FD2040: var_C8 = CStr(().Tag)
  loc_FD2048: var_EC = Val(var_C8)
  loc_FD2056: Set var_B0 = var_B4(CInt(var_EC))
  loc_FD205C: Call 0.Method_DGAccount_UnknownEvent_90 (var_EC)
  loc_FD2064: var_B4.SetFocus
  loc_FD2078: Exit Sub
  loc_FD2079: ' Referenced from: FD1EEC
  loc_FD207F: Call 0.Method_arg_50 (var_C8)
  loc_FD2087: var_F0 = "DGAccount_Click"
  loc_FD2094: Proc_183_57_104B0BC(var_C8)
  loc_FD20A0: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 '100D488
  'Data Table: 583348
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_A0 As ListItem
  Dim var_C4 As TextBox
  Dim var_A4 As String
  loc_100D284: On Error Goto loc_100D45D
  loc_100D294:  = (var_8A).Visible
  loc_100D2A2: If (var_8A = &HFF) Then
  loc_100D2A9:   Set var_A8 = ()
  loc_100D2BF:   var_CC = Val(CStr(var_A8.Tag))
  loc_100D2CF:   var_CC(var_A4).RandomDataFill
  loc_100D2E0:    = .Text
  loc_100D2F3:   Set var_C0 = var_C4(CInt(var_CC))
  loc_100D2F9:   Call 0.Method_ListView_UnknownEvent_130 (var_A4)
  loc_100D301:   var_C4.Text = 
  loc_100D32D:   (0).Visible = 
  loc_100D347:   var_A4 = CStr(().Tag)
  loc_100D34F:   var_CC = Val(var_A4)
  loc_100D35D:   Set var_A0 = var_A8(CInt(var_CC))
  loc_100D363:   Call 0.Method_ListView_UnknownEvent_130 (var_CC)
  loc_100D36B:   var_A8.SetFocus
  loc_100D382: Else
  loc_100D386:   Set var_A8 = ()
  loc_100D39C:   var_CC = Val(CStr(var_A8.Tag))
  loc_100D3AC:   var_CC(var_A4).RandomDataFill
  loc_100D3BD:    = .Text
  loc_100D3D0:   Set var_C0 = var_C4(CInt(var_CC))
  loc_100D3D6:   Call 0.Method_ListView_UnknownEvent_130 (var_A4)
  loc_100D3DE:   var_C4.Text = 
  loc_100D40A:   (0).Visible = 
  loc_100D424:   var_A4 = CStr(().Tag)
  loc_100D42C:   var_CC = Val(var_A4)
  loc_100D43A:   Set var_A0 = var_A8(CInt(var_CC))
  loc_100D440:   Call 0.Method_ListView_UnknownEvent_130 (var_CC)
  loc_100D448:   var_A8.SetFocus
  loc_100D45C: End If
  loc_100D45C: Exit Sub
  loc_100D45D: ' Referenced from: 100D284
  loc_100D463: Call 0.Method_arg_50 (var_A4)
  loc_100D46B: var_D0 = "ListView_Click"
  loc_100D478: Proc_183_57_104B0BC(var_A4)
  loc_100D484: Exit Sub
  loc_100D485: CExtInstUnk
End Sub

Public Function GRepFormNameGet() '585A30
  GRepFormNameGet = GRepFormName
End Function

Public Sub GRepFormNamePut(Value) '585A3F
  GRepFormName = Value
End Sub

Public Function mFaJournalLog(Rst) '11C8F20
  'Data Table: 583348
  Dim var_8C As Recordset15
  loc_11C8AAD: Set var_8C = Rst 
  loc_11C8AD5: var_8C.Fields.Append "V_DATE", 7, 0
  loc_11C8B01: var_8C.Fields.Append "Credit", 5, 0
  loc_11C8B2D: var_8C.Fields.Append "Debit", 5, 0
  loc_11C8B59: var_8C.Fields.Append "V_TYPE", &HC8, 5
  loc_11C8B85: var_8C.Fields.Append "V_NO", 3, 0
  loc_11C8BB1: var_8C.Fields.Append "V_ADD", &HC8, 5
  loc_11C8BDD: var_8C.Fields.Append "CHQ_NO", &HC8, &H14
  loc_11C8C09: var_8C.Fields.Append "CHQ_DATE", 7, 0
  loc_11C8C35: var_8C.Fields.Append "NARR", &HC8, &HFF
  loc_11C8C61: var_8C.Fields.Append "NAME", &HC8, &H4B
  loc_11C8C8D: var_8C.Fields.Append "MNARR", &HC8, &HFF
  loc_11C8CB9: var_8C.Fields.Append "V_SNO", 3, 0
  loc_11C8CE5: var_8C.Fields.Append "SUBCODE", &HC8, &HA
  loc_11C8D11: var_8C.Fields.Append "VAL", &HC8, 2
  loc_11C8D3D: var_8C.Fields.Append "NAME1", &HC8, &H4B
  loc_11C8D69: var_8C.Fields.Append "ADDRESS1", &HC8, &H96
  loc_11C8D95: var_8C.Fields.Append "CITY_NAME", &HC8, &H4B
  loc_11C8DC1: var_8C.Fields.Append "GRNAME", &HC8, &H4B
  loc_11C8DED: var_8C.Fields.Append "GRCODE", &HC8, 4
  loc_11C8E19: var_8C.Fields.Append "DocNo", &HC8, &H15
  loc_11C8E45: var_8C.Fields.Append "DocId", &HC8, &H15
  loc_11C8E71: var_8C.Fields.Append "U_NAME", &HC8, &HA
  loc_11C8E9D: var_8C.Fields.Append "ENTDT", &HC8, &H10
  loc_11C8EC9: var_8C.Fields.Append "SEQNO", 3, 0
  loc_11C8ED9: var_8C.CursorType = 3
  loc_11C8EE6: var_8C.LockType = 3
  loc_11C8F05: var_8C.Open var_A0, var_B0, -1
  loc_11C8F0C: Set var_8C = Nothing 
  loc_11C8F13: Set var_88 = Rst 
  loc_11C8F17: mFaJournalLog = -1
End Function

Public Function mDetailTrial(Rst) '1045990
  'Data Table: 583348
  Dim var_8C As Recordset15
  loc_104572D: Set var_8C = Rst 
  loc_1045755: var_8C.Fields.Append "TT", 3, 0
  loc_1045781: var_8C.Fields.Append "GroupName", &HC8, &HFF
  loc_10457AD: var_8C.Fields.Append "GRCODE", &HC8, &HFF
  loc_10457D9: var_8C.Fields.Append "PARTYCODE", &HC8, &HFF
  loc_1045805: var_8C.Fields.Append "PARTYNAME", &HC8, &HFF
  loc_1045831: var_8C.Fields.Append "OP_CR", 5, 0
  loc_104585D: var_8C.Fields.Append "OP_dR", 5, 0
  loc_1045889: var_8C.Fields.Append "BALANCECR", 5, 0
  loc_10458B5: var_8C.Fields.Append "BALANCEDR", 5, 0
  loc_10458E1: var_8C.Fields.Append "Bal", 3, 0
  loc_104590D: var_8C.Fields.Append "mgrcode", &HC8, &HFF
  loc_1045939: var_8C.Fields.Append "GRName", &HC8, &HFF
  loc_1045949: var_8C.CursorType = 3
  loc_1045956: var_8C.LockType = 3
  loc_1045975: var_8C.Open var_A0, var_B0, -1
  loc_104597C: Set var_8C = Nothing 
  loc_1045983: Set var_88 = Rst 
  loc_1045987: mDetailTrial = -1
  loc_104598D: AssignRecord
End Function

Public Function mAgeingReport(Rst) '10456EC
  'Data Table: 583348
  Dim var_8C As Recordset15
  loc_1045489: Set var_8C = Rst 
  loc_10454B1: var_8C.Fields.Append "ACC_NAME", &HC8, &H23
  loc_10454DD: var_8C.Fields.Append "DEBIT1", 5, &H13
  loc_1045509: var_8C.Fields.Append "DEBIT2", 5, &H13
  loc_1045535: var_8C.Fields.Append "DEBIT3", 5, &H13
  loc_1045561: var_8C.Fields.Append "DEBIT4", 5, &H13
  loc_104558D: var_8C.Fields.Append "DEBIT5", 5, &H13
  loc_10455B9: var_8C.Fields.Append "DEBIT6", 5, &H13
  loc_10455E5: var_8C.Fields.Append "DEBIT", 5, &H13
  loc_1045611: var_8C.Fields.Append "TOTALDR", 5, &H13
  loc_104563D: var_8C.Fields.Append "CREDIT", 5, &H13
  loc_1045669: var_8C.Fields.Append "CON_PER", &HC8, &H32
  loc_1045695: var_8C.Fields.Append "ANAME", &HC8, &H23
  loc_10456A5: var_8C.CursorType = 3
  loc_10456B2: var_8C.LockType = 3
  loc_10456D1: var_8C.Open var_A0, var_B0, -1
  loc_10456D8: Set var_8C = Nothing 
  loc_10456DF: Set var_88 = Rst 
  loc_10456E3: mAgeingReport = -1
  loc_10456E9: AssignRecord
End Function

Public Sub Proc_203_53_19CDCE4(arg_C, arg_10) '19CDCE4
  'Data Table: 583348
  Dim var_9C As String
  Dim var_A0 As Variant
  Dim var_B4 As Long
  Dim Me As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_138 As DataGrid
  Dim var_F4 As Variant
  Dim var_13C As Variant
  Dim var_B0 As Variant
  Dim var_160 As DataGrid
  loc_19CABB8: On Error Goto loc_19CDCB5
  loc_19CABC9: var_8C = " Where (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_19CABDD: var_90 = " And (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_19CABF1: var_94 = " Where (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F95078 & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_19CABFE: var_9C = " And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F95078
  loc_19CAC05: var_98 = var_9C & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_19CAC15: ().InsertRows , 
  loc_19CAC1E: var_B4 = CLng()
  loc_19CAC2E: If Not (var_B4 = CLng(5)) Then
  loc_19CAC38:   If Not (var_B4 = CLng(6)) Then
  loc_19CAC42:     If Not (var_B4 = CLng(7)) Then
  loc_19CAC4C:       If Not (var_B4 = CLng(8)) Then
  loc_19CAC56:         If (var_B4 = CLng(9)) Then
  loc_19CAC59:         End If
  loc_19CAC59:       End If
  loc_19CAC59:     End If
  loc_19CAC59:   End If
  loc_19CAC5F:   var_B8 = GRepFormName
  loc_19CAC6A:   If Not (var_B8 = "Led") Then
  loc_19CAC75:     If Not (var_B8 = "LedInt") Then
  loc_19CAC80:       If Not (var_B8 = "LedDeb") Then
  loc_19CAC8B:         If Not (var_B8 = "MemLed") Then
  loc_19CAC96:           If Not (var_B8 = "LedCred") Then
  loc_19CACA1:             If (var_B8 = "AcCheckList") Then
  loc_19CACA4:             End If
  loc_19CACA4:           End If
  loc_19CACA4:         End If
  loc_19CACA4:       End If
  loc_19CACA4:     End If
  loc_19CACAE:     (var_B4).InsertRows , 
  loc_19CACC1:     If (CLng() = CLng(5)) Then
  loc_19CACCD:       var_BC = Me.RecordCount
  loc_19CAD12:       Set var_A0 = var_C4(arg_C)
  loc_19CAD18:       Call 0.Method_Proc_203_53_19CDCE40 (var_9C)
  loc_19CAD20:       ((var_BC = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_19CAD38:       If ( Or (var_9C = vbNullString)) Then
  loc_19CAD45:         ().InsertRows , 
  loc_19CAD5D:         (CVar(CLng())).DeleteRowLabels , 
  loc_19CAD7B:         LateIdCallSt
  loc_19CAD9D:         (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CADA6:         var_E4 = CVar(CLng()) 'Long
  loc_19CADBE:         Set var_C4 = 2(vbNullString)
  loc_19CADC4:         LateIdCallSt
  loc_19CADD9:       Else
  loc_19CADE3:         var_E4(var_C4).InsertRows , 
  loc_19CADFB:         (CVar(CLng())).DeleteRowLabels , 
  loc_19CAE45:         LateIdCallSt
  loc_19CAE6F:         (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CAE78:         var_F4 = CVar(CLng()) 'Long
  loc_19CAEA3:         var_C4 = Me.Fields.Item("Code")
  loc_19CAEBC:         Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19CAEC2:         LateIdCallSt
  loc_19CAEDE:       End If
  loc_19CAEDE:     End If
  loc_19CAEE1:   Else
  loc_19CAEEB:     var_F4(var_13C).InsertRows , 
  loc_19CAF03:     (CVar(CLng())).DeleteRowLabels , 
  loc_19CAF0C:     var_104 = CVar(CLng()) 'Long
  loc_19CAF1D:     Set var_A0 = var_C4(0)
  loc_19CAF23:     Call 0.Method_Proc_203_53_19CDCE40 (var_9C)
  loc_19CAF2B:     var_104 = var_C4.Text
  loc_19CAF3B:     Set var_160 = (CVar(var_9C))
  loc_19CAF41:     LateIdCallSt
  loc_19CAF5F:   End If
  loc_19CAF62: Else
  loc_19CAF69:   If (var_B4 = CLng(2)) Then
  loc_19CAF72:     var_164 = GRepFormName
  loc_19CAF7D:     If Not (var_164 = "DUELIST") Then
  loc_19CAF88:       If (var_164 = "BankReg") Then
  loc_19CAF8B:       End If
  loc_19CAF97:       Set var_A0 = var_C4(0)
  loc_19CAF9D:       Call 0.Method_Proc_203_53_19CDCE40 (var_9C)
  loc_19CAFA5:       var_160 = var_C4.Text
  loc_19CAFBC:       If (var_9C <> vbNullString) Then
  loc_19CAFC9:         ().InsertRows , 
  loc_19CAFE1:         (CVar(CLng())).DeleteRowLabels , 
  loc_19CAFFC:         CVar(CLng())(var_9C).RandomDataFill
  loc_19CB00D:          = .Text
  loc_19CB023:         LateIdCallSt
  loc_19CB04D:         ((CVar(var_9C))).InsertRows , 
  loc_19CB056:         var_E4 = CVar(CLng()) 'Long
  loc_19CB073:         var_9C(1).RandomDataFill
  loc_19CB07E:         Set var_C4 = 2
  loc_19CB084:         var_E4 = var_C4.SubItems
  loc_19CB094:         Set var_13C = (CVar(var_9C))
  loc_19CB09A:         LateIdCallSt
  loc_19CB0B6:       End If
  loc_19CB0B9:     Else
  loc_19CB0C1:       If Not (var_164 = "CashBook") Then
  loc_19CB0CC:         If Not (var_164 = "BankBook") Then
  loc_19CB0D7:           If Not (var_164 = "Led") Then
  loc_19CB0E2:             If Not (var_164 = "LedInt") Then
  loc_19CB0ED:               If Not (var_164 = "LedDeb") Then
  loc_19CB0F8:                 If Not (var_164 = "MemLed") Then
  loc_19CB103:                   If Not (var_164 = "LedCred") Then
  loc_19CB10E:                     If Not (var_164 = "AcCheckList") Then
  loc_19CB119:                       If Not (var_164 = "DayBook") Then
  loc_19CB124:                         If Not (var_164 = "RozNamcha") Then
  loc_19CB12F:                           If (var_164 = "DetailedTrial") Then
  loc_19CB132:                           End If
  loc_19CB132:                         End If
  loc_19CB132:                       End If
  loc_19CB132:                     End If
  loc_19CB132:                   End If
  loc_19CB132:                 End If
  loc_19CB132:               End If
  loc_19CB132:             End If
  loc_19CB132:           End If
  loc_19CB132:         End If
  loc_19CB13E:         Set var_A0 = var_C4(0)
  loc_19CB144:         Call 0.Method_Proc_203_53_19CDCE40 (var_9C)
  loc_19CB14C:         var_13C = var_C4.Text
  loc_19CB163:         If (var_9C <> vbNullString) Then
  loc_19CB170:           ().InsertRows , 
  loc_19CB182:           Set var_13C = (CVar(CLng()))
  loc_19CB188:           var_13C.DeleteRowLabels , 
  loc_19CB1A3:           CVar(CLng())(var_9C).RandomDataFill
  loc_19CB1B4:            = .Text
  loc_19CB1C4:           Set var_160 = (CVar(var_9C))
  loc_19CB1CA:           LateIdCallSt
  loc_19CB1EA:         End If
  loc_19CB1F0:         var_168 = GRepFormName
  loc_19CB1FB:         If Not (var_168 = "Led") Then
  loc_19CB206:           If Not (var_168 = "LedInt") Then
  loc_19CB211:             If Not (var_168 = "LedDeb") Then
  loc_19CB21C:               If Not (var_168 = "MemLed") Then
  loc_19CB227:                 If Not (var_168 = "LedCred") Then
  loc_19CB232:                   If (var_168 = "AcCheckList") Then
  loc_19CB235:                   End If
  loc_19CB235:                 End If
  loc_19CB235:               End If
  loc_19CB235:             End If
  loc_19CB235:           End If
  loc_19CB23F:           (var_160).InsertRows , 
  loc_19CB251:           Set var_C4 = (CVar(CLng()))
  loc_19CB257:           var_C4.DeleteRowLabels , 
  loc_19CB269:           Set var_138 = (CVar(CLng()))
  loc_19CB2A6:           If (Ucase(CVar(CStr(DGSite.DispID_41))) = "SELECTED") Then
  loc_19CB2B5:             (&HFF).Visible = 
  loc_19CB2CA:             Set var_A0 = var_C4(1)
  loc_19CB2D0:             Call 0.Method_Proc_203_53_19CDCE40 (True)
  loc_19CB2D8:             var_C4.Visible = 
  loc_19CB2EF:             Set var_A0 = var_C4(1)
  loc_19CB2F5:             Call 0.Method_Proc_203_53_19CDCE40 (&HFF)
  loc_19CB2FD:             var_C4.Visible = 
  loc_19CB317:             Set var_A0 = var_C4(2)
  loc_19CB31D:             Call 0.Method_Proc_203_53_19CDCE40 (False)
  loc_19CB325:             var_C4.Visible = 
  loc_19CB33C:             Set var_A0 = var_C4(2)
  loc_19CB342:             Call 0.Method_Proc_203_53_19CDCE40 (0)
  loc_19CB34A:             var_C4.Visible = 
  loc_19CB36B:             Set var_A0 = CVar(CLng(3))(0)
  loc_19CB371:             LateIdCallSt
  loc_19CB391:             Set var_A0 = CVar(CLng(4))(0)
  loc_19CB397:             LateIdCallSt
  loc_19CB3B7:             Set var_A0 = CVar(CLng(5))(0)
  loc_19CB3BD:             LateIdCallSt
  loc_19CB3E5:             CInt(2)(CVar(CDbl(930))).Height = CInt(2)(CVar(CDbl(930)))
  loc_19CB3ED:           End If
  loc_19CB3F7:           var_A0(var_A0).InsertRows , 
  loc_19CB409:           Set var_C4 = (CVar(CLng()))
  loc_19CB40F:           var_C4.DeleteRowLabels , 
  loc_19CB421:           Set var_138 = (CVar(CLng()))
  loc_19CB45E:           If (Ucase(CVar(CStr(DGSite.DispID_41))) = "MERGE") Then
  loc_19CB46D:             (0).Visible = 
  loc_19CB478:             var_E4 = CVar(CLng(3)) 'Long
  loc_19CB490:             Set var_A0 = 0("From Account        ")
  loc_19CB496:             LateIdCallSt
  loc_19CB4B6:             Set var_A0 = CVar(CLng(3))(&H10E)
  loc_19CB4BC:             LateIdCallSt
  loc_19CB4CA:             var_E4 = CVar(CLng(4)) 'Long
  loc_19CB4E2:             Set var_A0 = 0("To Account          ")
  loc_19CB4E8:             LateIdCallSt
  loc_19CB508:             Set var_A0 = CVar(CLng(4))(&H10E)
  loc_19CB50E:             LateIdCallSt
  loc_19CB52E:             Set var_A0 = CVar(CLng(3))(&H10E)
  loc_19CB534:             LateIdCallSt
  loc_19CB554:             Set var_A0 = CVar(CLng(4))(&H10E)
  loc_19CB55A:             LateIdCallSt
  loc_19CB57A:             Set var_A0 = CVar(CLng(5))(0)
  loc_19CB580:             LateIdCallSt
  loc_19CB5A8:             CInt(4)(CVar(CDbl(1550))).Height = CInt(4)(CVar(CDbl(1550)))
  loc_19CB5B0:             var_E4 = False
  loc_19CB5C4:             Call 0.Method_Proc_203_53_19CDCE40 (var_E4, var_C4(1), var_C4(1), var_C4(1), var_C4(1))
  loc_19CB5CC:             var_C4.Visible = var_E4
  loc_19CB5E3:             Set var_A0 = var_C4(1)
  loc_19CB5E9:             Call 0.Method_Proc_203_53_19CDCE40 (0, var_A0)
  loc_19CB5F1:             var_C4.Visible = var_A0
  loc_19CB5FD:             var_E4 = False
  loc_19CB60B:             Set var_A0 = var_C4(2)
  loc_19CB611:             Call 0.Method_Proc_203_53_19CDCE40 (var_E4)
  loc_19CB619:             var_C4.Visible = var_E4
  loc_19CB630:             Set var_A0 = var_C4(2)
  loc_19CB636:             Call 0.Method_Proc_203_53_19CDCE40 (0)
  loc_19CB63E:             var_C4.Visible = 
  loc_19CB64D:             var_F4 = CVar(CLng(3)) 'Long
  loc_19CB691:             Set var_138 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19CB697:             LateIdCallSt
  loc_19CB6B2:             var_F4 = CVar(CLng(3)) 'Long
  loc_19CB6F6:             Set var_138 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19CB6FC:             LateIdCallSt
  loc_19CB717:             var_F4 = CVar(CLng(4)) 'Long
  loc_19CB75B:             Set var_138 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19CB761:             LateIdCallSt
  loc_19CB788:             Me.Filter = 0
  loc_19CB790:             var_F4 = CVar(CLng(4)) 'Long
  loc_19CB7D4:             Set var_138 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19CB7DA:             LateIdCallSt
  loc_19CB7F2:           End If
  loc_19CB7FC:           var_F4(var_138).InsertRows var_138, var_F4
  loc_19CB80E:           Set var_C4 = var_F4(CVar(CLng(var_138)))
  loc_19CB814:           var_C4.DeleteRowLabels var_138, var_F4
  loc_19CB826:           Set var_138 = (CVar(CLng()))
  loc_19CB863:           If (Ucase(CVar(CStr(DGSite.DispID_41))) = "GROUP(SELECTED)") Then
  loc_19CB872:             (0).Visible = 
  loc_19CB888:             Call Proc_203_58_11EA690(2)
  loc_19CB89E:             Set var_A0 = var_C4(1)
  loc_19CB8A4:             Call 0.Method_Proc_203_53_19CDCE40 (False)
  loc_19CB8AC:             var_C4.Visible = "SELECT '' as O,GroupName,GroupCode as Code from AcGroup Order by GroupName"
  loc_19CB8C3:             Set var_A0 = var_C4(1)
  loc_19CB8C9:             Call 0.Method_Proc_203_53_19CDCE40 (0)
  loc_19CB8D1:             var_C4.Visible = 
  loc_19CB8EA:             Set var_A0 = var_C4(2)
  loc_19CB8F0:             Call 0.Method_Proc_203_53_19CDCE40 (True)
  loc_19CB8F8:             var_C4.Visible = 
  loc_19CB90F:             Set var_A0 = var_C4(2)
  loc_19CB915:             Call 0.Method_Proc_203_53_19CDCE40 (&HFF)
  loc_19CB91D:             var_C4.Visible = 
  loc_19CB932:             Set var_A0 = var_C4(1)
  loc_19CB938:             Call 0.Method_Proc_203_53_19CDCE40 ()
  loc_19CB957:             Set var_138 = var_13C(2)
  loc_19CB95D:             Call 0.Method_Proc_203_53_19CDCE40 (CVar(CDbl(var_C4.Height)))
  loc_19CB965:             var_13C.Height = 
  loc_19CB981:             Set var_A0 = var_C4(1)
  loc_19CB987:             Call 0.Method_Proc_203_53_19CDCE40 ()
  loc_19CB9A6:             Set var_138 = var_13C(2)
  loc_19CB9AC:             Call 0.Method_Proc_203_53_19CDCE40 (CVar(CDbl(var_C4.Left)))
  loc_19CB9B4:             var_13C.Left = 
  loc_19CB9D0:             Set var_A0 = var_C4(1)
  loc_19CB9D6:             Call 0.Method_Proc_203_53_19CDCE40 ()
  loc_19CB9F5:             Set var_138 = var_13C(2)
  loc_19CB9FB:             Call 0.Method_Proc_203_53_19CDCE40 (CVar(CDbl(var_C4.Width)))
  loc_19CBA03:             var_13C.Width = 
  loc_19CBA1F:             Set var_A0 = var_C4(1)
  loc_19CBA25:             Call 0.Method_Proc_203_53_19CDCE40 ()
  loc_19CBA44:             Set var_138 = var_13C(2)
  loc_19CBA4A:             Call 0.Method_Proc_203_53_19CDCE40 (CVar(CDbl(var_C4.Top)))
  loc_19CBA52:             var_13C.Top = 
  loc_19CBA71:             Set var_A0 = var_C4(1)
  loc_19CBA77:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CBA7F:              = var_C4.Height
  loc_19CBA90:             Set var_138 = var_13C(2)
  loc_19CBA96:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CBA9E:             var_13C.Height = 
  loc_19CBABA:             Set var_A0 = var_C4(1)
  loc_19CBAC0:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CBAC8:              = var_C4.Left
  loc_19CBAD9:             Set var_138 = var_13C(2)
  loc_19CBADF:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CBAE7:             var_13C.Left = 
  loc_19CBB03:             Set var_A0 = var_C4(1)
  loc_19CBB09:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CBB11:              = var_C4.Width
  loc_19CBB22:             Set var_138 = var_13C(2)
  loc_19CBB28:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CBB30:             var_13C.Width = 
  loc_19CBB4C:             Set var_A0 = var_C4(1)
  loc_19CBB52:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CBB5A:              = var_C4.Top
  loc_19CBB6B:             Set var_138 = var_13C(2)
  loc_19CBB71:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CBB79:             var_13C.Top = 
  loc_19CBB9E:             Set var_A0 = CVar(CLng(3))(0)
  loc_19CBBA4:             LateIdCallSt
  loc_19CBBC4:             Set var_A0 = CVar(CLng(4))(0)
  loc_19CBBCA:             LateIdCallSt
  loc_19CBBEA:             Set var_A0 = CVar(CLng(5))(0)
  loc_19CBBF0:             LateIdCallSt
  loc_19CBC18:             CInt(2)(CVar(CDbl(930))).Height = CInt(2)(CVar(CDbl(930)))
  loc_19CBC20:           End If
  loc_19CBC35:           Set var_A0 = CVar(CLng(2))(1)
  loc_19CBC68:           If (Ucase(CVar(CStr(DGSite.DispID_41))) = "GROUP(RANGE)") Then
  loc_19CBC77:             var_A0(0).Visible = var_A0(0)
  loc_19CBC82:             var_E4 = CVar(CLng(3)) 'Long
  loc_19CBC9A:             Set var_A0 = 0("For Group           ")
  loc_19CBCA0:             LateIdCallSt
  loc_19CBCC0:             Set var_A0 = CVar(CLng(3))(&H10E)
  loc_19CBCC6:             LateIdCallSt
  loc_19CBCD4:             var_E4 = CVar(CLng(4)) 'Long
  loc_19CBCEC:             Set var_A0 = 0("From Account        ")
  loc_19CBCF2:             LateIdCallSt
  loc_19CBD12:             Set var_A0 = CVar(CLng(4))(&H10E)
  loc_19CBD18:             LateIdCallSt
  loc_19CBD26:             var_E4 = CVar(CLng(5)) 'Long
  loc_19CBD3E:             Set var_A0 = 0("To Account          ")
  loc_19CBD44:             LateIdCallSt
  loc_19CBD64:             Set var_A0 = CVar(CLng(5))(&H10E)
  loc_19CBD6A:             LateIdCallSt
  loc_19CBD78:             var_F4 = CVar(CLng(3)) 'Long
  loc_19CBDBC:             Set var_138 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19CBDC2:             LateIdCallSt
  loc_19CBDDD:             var_F4 = CVar(CLng(3)) 'Long
  loc_19CBE21:             Set var_138 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19CBE27:             LateIdCallSt
  loc_19CBE4E:             Me.Filter = 0
  loc_19CBE53:             var_F4 = " GroupCode='"
  loc_19CBE75:             var_C4 = Me.Fields.Item("Code")
  loc_19CBE99:             Me.Filter = var_F4 & var_C4.Value & "'"
  loc_19CBEB1:             var_E4 = CVar(CLng(4)) 'Long
  loc_19CBEC9:             Set var_A0 = 1(vbNullString)
  loc_19CBECF:             LateIdCallSt
  loc_19CBEDD:             var_E4 = CVar(CLng(4)) 'Long
  loc_19CBEF5:             Set var_A0 = 2(vbNullString)
  loc_19CBEFB:             LateIdCallSt
  loc_19CBF09:             var_E4 = CVar(CLng(5)) 'Long
  loc_19CBF21:             Set var_A0 = 1(vbNullString)
  loc_19CBF27:             LateIdCallSt
  loc_19CBF35:             var_E4 = CVar(CLng(5)) 'Long
  loc_19CBF4D:             Set var_A0 = 2(vbNullString)
  loc_19CBF53:             LateIdCallSt
  loc_19CBF7B:             CInt(5)(CVar(CDbl(1860))).Height = CInt(5)(CVar(CDbl(1860)))
  loc_19CBF83:             var_E4 = False
  loc_19CBF91:             Set var_A0 = var_C4(1)
  loc_19CBF97:             Call 0.Method_Proc_203_53_19CDCE40 (var_E4, var_E4, var_A0, var_E4, var_A0, var_E4)
  loc_19CBF9F:             var_C4.Visible = var_A0
  loc_19CBFB6:             Set var_A0 = var_C4(1)
  loc_19CBFBC:             Call 0.Method_Proc_203_53_19CDCE40 (0, var_E4, var_138)
  loc_19CBFC4:             var_C4.Visible = var_F4
  loc_19CBFDE:             Set var_A0 = var_C4(2)
  loc_19CBFE4:             Call 0.Method_Proc_203_53_19CDCE40 (False, var_138)
  loc_19CBFEC:             var_C4.Visible = var_F4
  loc_19CC003:             Set var_A0 = var_C4(2)
  loc_19CC009:             Call 0.Method_Proc_203_53_19CDCE40 (0)
  loc_19CC011:             var_C4.Visible = 
  loc_19CC01D:           End If
  loc_19CC027:           ().InsertRows , 
  loc_19CC039:           Set var_C4 = (CVar(CLng()))
  loc_19CC03F:           var_C4.DeleteRowLabels , 
  loc_19CC051:           Set var_138 = (CVar(CLng()))
  loc_19CC08E:           If (Ucase(CVar(CStr(DGSite.DispID_41))) = "CITY WISE") Then
  loc_19CC09D:             (0).Visible = 
  loc_19CC0A8:             var_9C = "SELECT '' as O,CityName,CityCode as Code from City Order by CityName"
  loc_19CC0B3:             Call Proc_203_58_11EA690(2)
  loc_19CC0C8:             Set var_A0 = var_C4(2)
  loc_19CC0CE:             Call 0.Method_Proc_203_53_19CDCE40 (True)
  loc_19CC0D6:             var_C4.Visible = var_9C
  loc_19CC0ED:             Set var_A0 = var_C4(2)
  loc_19CC0F3:             Call 0.Method_Proc_203_53_19CDCE40 (&HFF)
  loc_19CC0FB:             var_C4.Visible = 
  loc_19CC115:             Set var_A0 = var_C4(1)
  loc_19CC11B:             Call 0.Method_Proc_203_53_19CDCE40 (False)
  loc_19CC123:             var_C4.Visible = 
  loc_19CC13A:             Set var_A0 = var_C4(1)
  loc_19CC140:             Call 0.Method_Proc_203_53_19CDCE40 (0)
  loc_19CC148:             var_C4.Visible = 
  loc_19CC15D:             Set var_A0 = var_C4(1)
  loc_19CC163:             Call 0.Method_Proc_203_53_19CDCE40 ()
  loc_19CC182:             Set var_138 = var_13C(2)
  loc_19CC188:             Call 0.Method_Proc_203_53_19CDCE40 (CVar(CDbl(var_C4.Height)))
  loc_19CC190:             var_13C.Height = 
  loc_19CC1AC:             Set var_A0 = var_C4(1)
  loc_19CC1B2:             Call 0.Method_Proc_203_53_19CDCE40 ()
  loc_19CC1D1:             Set var_138 = var_13C(2)
  loc_19CC1D7:             Call 0.Method_Proc_203_53_19CDCE40 (CVar(CDbl(var_C4.Left)))
  loc_19CC1DF:             var_13C.Left = 
  loc_19CC1FB:             Set var_A0 = var_C4(1)
  loc_19CC201:             Call 0.Method_Proc_203_53_19CDCE40 ()
  loc_19CC220:             Set var_138 = var_13C(2)
  loc_19CC226:             Call 0.Method_Proc_203_53_19CDCE40 (CVar(CDbl(var_C4.Width)))
  loc_19CC22E:             var_13C.Width = 
  loc_19CC24A:             Set var_A0 = var_C4(1)
  loc_19CC250:             Call 0.Method_Proc_203_53_19CDCE40 ()
  loc_19CC26F:             Set var_138 = var_13C(2)
  loc_19CC275:             Call 0.Method_Proc_203_53_19CDCE40 (CVar(CDbl(var_C4.Top)))
  loc_19CC27D:             var_13C.Top = 
  loc_19CC29C:             Set var_A0 = var_C4(1)
  loc_19CC2A2:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CC2AA:              = var_C4.Height
  loc_19CC2BB:             Set var_138 = var_13C(2)
  loc_19CC2C1:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CC2C9:             var_13C.Height = 
  loc_19CC2E5:             Set var_A0 = var_C4(1)
  loc_19CC2EB:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CC2F3:              = var_C4.Left
  loc_19CC304:             Set var_138 = var_13C(2)
  loc_19CC30A:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CC312:             var_13C.Left = 
  loc_19CC32E:             Set var_A0 = var_C4(1)
  loc_19CC334:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CC33C:              = var_C4.Width
  loc_19CC34D:             Set var_138 = var_13C(2)
  loc_19CC353:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CC35B:             var_13C.Width = 
  loc_19CC377:             Set var_A0 = var_C4(1)
  loc_19CC37D:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CC385:              = var_C4.Top
  loc_19CC396:             Set var_138 = var_13C(2)
  loc_19CC39C:             Call 0.Method_Proc_203_53_19CDCE40 (var_BC)
  loc_19CC3A4:             var_13C.Top = 
  loc_19CC3C9:             Set var_A0 = CVar(CLng(3))(0)
  loc_19CC3CF:             LateIdCallSt
  loc_19CC3EF:             Set var_A0 = CVar(CLng(4))(0)
  loc_19CC3F5:             LateIdCallSt
  loc_19CC415:             Set var_A0 = CVar(CLng(5))(0)
  loc_19CC41B:             LateIdCallSt
  loc_19CC443:             CInt(2)(CVar(CDbl(930))).Height = CInt(2)(CVar(CDbl(930)))
  loc_19CC44B:           End If
  loc_19CC44B:         End If
  loc_19CC44E:       Else
  loc_19CC456:         If Not (var_164 = "JournalBook") Then
  loc_19CC461:           If Not (var_164 = "Annexure") Then
  loc_19CC46C:             If (var_164 = "JournalBookLog") Then
  loc_19CC46F:             End If
  loc_19CC46F:           End If
  loc_19CC478:           var_BC = Me.RecordCount
  loc_19CC4BD:           Set var_A0 = var_C4(arg_C)
  loc_19CC4C3:           Call 0.Method_Proc_203_53_19CDCE40 (var_9C, ((var_BC = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_19CC4E3:           If (var_C4.Text Or (var_9C = vbNullString)) Then
  loc_19CC4F0:             ().InsertRows , 
  loc_19CC508:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CC526:             LateIdCallSt
  loc_19CC548:             (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CC551:             var_E4 = CVar(CLng()) 'Long
  loc_19CC569:             Set var_C4 = 2(vbNullString)
  loc_19CC56F:             LateIdCallSt
  loc_19CC584:           Else
  loc_19CC58E:             var_E4(var_C4).InsertRows , 
  loc_19CC5A6:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CC5F0:             LateIdCallSt
  loc_19CC61A:             (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CC623:             var_F4 = CVar(CLng()) 'Long
  loc_19CC667:             Set var_13C = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19CC66D:             LateIdCallSt
  loc_19CC689:           End If
  loc_19CC69A:           If (GRepFormName = "Annexure") Then
  loc_19CC6B5:             Set var_A0 = CVar(CLng(2))(2)
  loc_19CC6C6:             var_9C = CStr(DGSite.DispID_41)
  loc_19CC6E8:             Call Proc_203_58_11EA690(1, "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP where GROUPCODE='" & var_9C & "' " & var_90 & " Order by Name")
  loc_19CC70A:             var_B0 = var_F4(var_13C).Height
  loc_19CC71A:             Set var_C4 = var_B0(var_1A0)
  loc_19CC720:              = var_C4.Height
  loc_19CC72B:             Call 0.Method_Me8 (var_BC)
  loc_19CC742:             var_E4 = CVar((((var_BC - CDbl(var_B0)) - var_1A0) - CDbl(1200))) 'Single
  loc_19CC750:             Set var_138 = var_13C(1)
  loc_19CC756:             Call 0.Method_Proc_203_53_19CDCE40 (CVar(CLng(2)))
  loc_19CC75E:             var_13C.Height = 
  loc_19CC771:           End If
  loc_19CC774:         Else
  loc_19CC77C:           If Not (var_164 = "DailySumm") Then
  loc_19CC787:             If Not (var_164 = "AgingDr") Then
  loc_19CC792:               If Not (var_164 = "AgingCr") Then
  loc_19CC79D:                 If Not (var_164 = "Clg") Then
  loc_19CC7A8:                   If Not (var_164 = "ClgNot") Then
  loc_19CC7B3:                     If Not (var_164 = "AgingRepDr") Then
  loc_19CC7BE:                       If (var_164 = "AgingRepCr") Then
  loc_19CC7C1:                       End If
  loc_19CC7C1:                     End If
  loc_19CC7C1:                   End If
  loc_19CC7C1:                 End If
  loc_19CC7C1:               End If
  loc_19CC7C1:             End If
  loc_19CC80F:             Set var_A0 = var_C4(arg_C)
  loc_19CC815:             Call 0.Method_Proc_203_53_19CDCE40 (var_9C)
  loc_19CC81D:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_19CC835:             If ( Or (var_9C = vbNullString)) Then
  loc_19CC842:               ().InsertRows , 
  loc_19CC85A:               (CVar(CLng())).DeleteRowLabels , 
  loc_19CC878:               LateIdCallSt
  loc_19CC89A:               (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CC8A3:               var_E4 = CVar(CLng()) 'Long
  loc_19CC8BB:               Set var_C4 = 2(vbNullString)
  loc_19CC8C1:               LateIdCallSt
  loc_19CC8D6:             Else
  loc_19CC8E0:               var_E4(var_C4).InsertRows , 
  loc_19CC8F8:               (CVar(CLng())).DeleteRowLabels , 
  loc_19CC942:               LateIdCallSt
  loc_19CC96C:               (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CC975:               var_F4 = CVar(CLng()) 'Long
  loc_19CC9A0:               var_C4 = Me.Fields.Item("Code")
  loc_19CC9B9:               Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19CC9BF:               LateIdCallSt
  loc_19CC9DB:             End If
  loc_19CC9DB:           End If
  loc_19CC9DB:         End If
  loc_19CC9DB:       End If
  loc_19CC9DB:     End If
  loc_19CC9DE:   Else
  loc_19CC9E5:     If (var_B4 = CLng(3)) Then
  loc_19CC9EE:       var_1A4 = GRepFormName
  loc_19CC9F9:       If (var_1A4 = "DUELIST") Then
  loc_19CCA08:         Set var_A0 = var_C4(0)
  loc_19CCA0E:         Call 0.Method_Proc_203_53_19CDCE40 (var_9C, var_13C)
  loc_19CCA16:         var_F4 = var_C4.Text
  loc_19CCA2D:         If (var_9C <> vbNullString) Then
  loc_19CCA3A:           ().InsertRows , 
  loc_19CCA52:           (CVar(CLng())).DeleteRowLabels , 
  loc_19CCA5B:           var_104 = CVar(CLng()) 'Long
  loc_19CCA6C:           Set var_A0 = var_C4(0)
  loc_19CCA72:           Call 0.Method_Proc_203_53_19CDCE40 (var_9C)
  loc_19CCA7A:           var_104 = var_C4.Text
  loc_19CCA8A:           Set var_160 = (CVar(var_9C))
  loc_19CCA90:           LateIdCallSt
  loc_19CCAAE:         End If
  loc_19CCAB1:       Else
  loc_19CCAB9:         If Not (var_1A4 = "Annexure") Then
  loc_19CCAC4:           If Not (var_1A4 = "RefReport") Then
  loc_19CCACF:             If Not (var_1A4 = "JournalBook") Then
  loc_19CCADA:               If Not (var_1A4 = "DetailedTrial") Then
  loc_19CCAE5:                 If (var_1A4 = "JournalBookLog") Then
  loc_19CCAE8:                 End If
  loc_19CCAE8:               End If
  loc_19CCAE8:             End If
  loc_19CCAE8:           End If
  loc_19CCAF4:           Set var_A0 = var_C4(0)
  loc_19CCAFA:           Call 0.Method_Proc_203_53_19CDCE40 (var_9C)
  loc_19CCB02:           var_160 = var_C4.Text
  loc_19CCB19:           If (var_9C <> vbNullString) Then
  loc_19CCB26:             ().InsertRows , 
  loc_19CCB3E:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CCB59:             CVar(CLng())(var_9C).RandomDataFill
  loc_19CCB64:             Set var_C4 = 
  loc_19CCB6A:              = var_C4.Text
  loc_19CCB7A:             Set var_160 = (CVar(var_9C))
  loc_19CCB80:             LateIdCallSt
  loc_19CCBA0:           End If
  loc_19CCBA0:         End If
  loc_19CCBA0:       End If
  loc_19CCBA6:       var_1A8 = GRepFormName
  loc_19CCBB1:       If (var_1A8 = "DayBook") Then
  loc_19CCC02:         Set var_A0 = var_C4(arg_C)
  loc_19CCC08:         Call 0.Method_Proc_203_53_19CDCE40 (var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_19CCC10:         var_160 = var_C4.Text
  loc_19CCC28:         If ( Or (var_9C = vbNullString)) Then
  loc_19CCC35:           ().InsertRows , 
  loc_19CCC4D:           (CVar(CLng())).DeleteRowLabels , 
  loc_19CCC6B:           LateIdCallSt
  loc_19CCC8D:           (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CCC96:           var_E4 = CVar(CLng()) 'Long
  loc_19CCCAE:           Set var_C4 = 2(vbNullString)
  loc_19CCCB4:           LateIdCallSt
  loc_19CCCC9:         Else
  loc_19CCCD3:           var_E4(var_C4).InsertRows , 
  loc_19CCCEB:           (CVar(CLng())).DeleteRowLabels , 
  loc_19CCD35:           LateIdCallSt
  loc_19CCD5F:           (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CCD68:           var_F4 = CVar(CLng()) 'Long
  loc_19CCD93:           var_C4 = Me.Fields.Item("Code")
  loc_19CCDAC:           Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19CCDB2:           LateIdCallSt
  loc_19CCDCE:         End If
  loc_19CCDD1:       Else
  loc_19CCDD9:         If Not (var_1A8 = "CashBook") Then
  loc_19CCDE4:           If Not (var_1A8 = "BankBook") Then
  loc_19CCDEF:             If (var_1A8 = "RozNamcha") Then
  loc_19CCDF2:             End If
  loc_19CCDF2:           End If
  loc_19CCDFE:           Set var_A0 = var_C4(0)
  loc_19CCE04:           Call 0.Method_Proc_203_53_19CDCE40 (var_9C, var_13C)
  loc_19CCE0C:           var_F4 = var_C4.Text
  loc_19CCE23:           If (var_9C <> vbNullString) Then
  loc_19CCE30:             ().InsertRows , 
  loc_19CCE48:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CCE51:             var_104 = CVar(CLng()) 'Long
  loc_19CCE62:             Set var_A0 = var_C4(0)
  loc_19CCE68:             Call 0.Method_Proc_203_53_19CDCE40 (var_9C)
  loc_19CCE70:             var_104 = var_C4.Text
  loc_19CCE7B:             Proc_183_6_EA3B94(CVar(var_9C))
  loc_19CCE8A:             Set var_160 = (CVar(CStr()))
  loc_19CCE90:             LateIdCallSt
  loc_19CCEB0:           End If
  loc_19CCEB3:         Else
  loc_19CCEBB:           If Not (var_1A8 = "Led") Then
  loc_19CCEC6:             If Not (var_1A8 = "LedInt") Then
  loc_19CCED1:               If Not (var_1A8 = "LedDeb") Then
  loc_19CCEDC:                 If Not (var_1A8 = "MemLed") Then
  loc_19CCEE7:                   If Not (var_1A8 = "LedCred") Then
  loc_19CCEF2:                     If (var_1A8 = "AcCheckList") Then
  loc_19CCEF5:                     End If
  loc_19CCEF5:                   End If
  loc_19CCEF5:                 End If
  loc_19CCEF5:               End If
  loc_19CCEF5:             End If
  loc_19CCF0A:             Set var_A0 = CVar(CLng(2))(1)
  loc_19CCF3D:             If (Ucase(CVar(CStr(DGSite.DispID_41))) = "GROUP(RANGE)") Then
  loc_19CCF8E:               Set var_A0 = var_C4(arg_C)
  loc_19CCF94:               Call 0.Method_Proc_203_53_19CDCE40 (var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_19CCF9C:               var_160 = var_C4.Text
  loc_19CCFB4:               If ( Or (var_9C = vbNullString)) Then
  loc_19CCFC1:                 ().InsertRows , 
  loc_19CCFD9:                 (CVar(CLng())).DeleteRowLabels , 
  loc_19CCFF7:                 LateIdCallSt
  loc_19CD019:                 (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CD022:                 var_E4 = CVar(CLng()) 'Long
  loc_19CD03A:                 Set var_C4 = 2(vbNullString)
  loc_19CD040:                 LateIdCallSt
  loc_19CD055:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19CD06D:                 Set var_A0 = 1(vbNullString)
  loc_19CD073:                 LateIdCallSt
  loc_19CD081:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19CD099:                 Set var_A0 = 2(vbNullString)
  loc_19CD09F:                 LateIdCallSt
  loc_19CD0AD:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19CD0C5:                 Set var_A0 = 1(vbNullString)
  loc_19CD0CB:                 LateIdCallSt
  loc_19CD0D9:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19CD0F1:                 Set var_A0 = 2(vbNullString)
  loc_19CD0F7:                 LateIdCallSt
  loc_19CD105:               Else
  loc_19CD10F:                 var_E4(var_A0).InsertRows var_A0, var_E4
  loc_19CD127:                 var_E4(CVar(CLng(var_A0))).DeleteRowLabels var_A0, var_E4
  loc_19CD13B:                 var_E4 = "Name"
  loc_19CD171:                 LateIdCallSt
  loc_19CD19B:                 var_E4(CVar(CLng(Me.Fields.Item(var_E4)))(CVar(CStr(Me.Fields.Item(var_E4).Value)))).InsertRows , 
  loc_19CD1A4:                 var_F4 = CVar(CLng()) 'Long
  loc_19CD1E8:                 Set var_13C = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19CD1EE:                 LateIdCallSt
  loc_19CD20D:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19CD225:                 Set var_A0 = 1(vbNullString)
  loc_19CD22B:                 LateIdCallSt
  loc_19CD239:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19CD251:                 Set var_A0 = 2(vbNullString)
  loc_19CD257:                 LateIdCallSt
  loc_19CD265:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19CD27D:                 Set var_A0 = 1(vbNullString)
  loc_19CD283:                 LateIdCallSt
  loc_19CD291:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19CD2A9:                 Set var_A0 = 2(vbNullString)
  loc_19CD2AF:                 LateIdCallSt
  loc_19CD2C9:                 Me.Filter = 0
  loc_19CD2CE:                 var_F4 = " GroupCode='"
  loc_19CD2D9:                 var_E4 = "Code"
  loc_19CD2F0:                 var_C4 = Me.Fields.Item(var_E4)
  loc_19CD314:                 Me.Filter = var_F4 & var_C4.Value & "'"
  loc_19CD329:               End If
  loc_19CD32C:             Else
  loc_19CD380:               Call 0.Method_Proc_203_53_19CDCE40 (var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_C4(arg_C), var_E4, var_C4(arg_C), var_E4)
  loc_19CD388:               var_A0 = var_C4.Text
  loc_19CD3A0:               If (var_E4 Or (var_9C = vbNullString)) Then
  loc_19CD3AD:                 var_E4(var_A0).InsertRows var_13C, var_F4
  loc_19CD3C5:                 (CVar(CLng())).DeleteRowLabels , 
  loc_19CD3E3:                 LateIdCallSt
  loc_19CD405:                 (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CD40E:                 var_E4 = CVar(CLng()) 'Long
  loc_19CD426:                 Set var_C4 = 2(vbNullString)
  loc_19CD42C:                 LateIdCallSt
  loc_19CD441:               Else
  loc_19CD44B:                 var_E4(var_C4).InsertRows , 
  loc_19CD463:                 (CVar(CLng())).DeleteRowLabels , 
  loc_19CD4AD:                 LateIdCallSt
  loc_19CD4D7:                 (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CD4E0:                 var_F4 = CVar(CLng()) 'Long
  loc_19CD50B:                 var_C4 = Me.Fields.Item("Code")
  loc_19CD524:                 Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19CD52A:                 LateIdCallSt
  loc_19CD546:               End If
  loc_19CD546:             End If
  loc_19CD546:           End If
  loc_19CD546:         End If
  loc_19CD546:       End If
  loc_19CD549:     Else
  loc_19CD550:       If (var_B4 = CLng(4)) Then
  loc_19CD559:         var_1AC = GRepFormName
  loc_19CD564:         If Not (var_1AC = "CashBook") Then
  loc_19CD56F:           If Not (var_1AC = "BankBook") Then
  loc_19CD57A:             If Not (var_1AC = "Led") Then
  loc_19CD585:               If Not (var_1AC = "LedInt") Then
  loc_19CD590:                 If Not (var_1AC = "LedDeb") Then
  loc_19CD59B:                   If Not (var_1AC = "MemLed") Then
  loc_19CD5A6:                     If Not (var_1AC = "LedCred") Then
  loc_19CD5B1:                       If Not (var_1AC = "AcCheckList") Then
  loc_19CD5BC:                         If (var_1AC = "RozNamcha") Then
  loc_19CD5BF:                         End If
  loc_19CD5BF:                       End If
  loc_19CD5BF:                     End If
  loc_19CD5BF:                   End If
  loc_19CD5BF:                 End If
  loc_19CD5BF:               End If
  loc_19CD5BF:             End If
  loc_19CD5BF:           End If
  loc_19CD60D:           Set var_A0 = var_C4(arg_C)
  loc_19CD613:           Call 0.Method_Proc_203_53_19CDCE40 (var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_19CD61B:           var_13C = var_C4.Text
  loc_19CD633:           If (var_F4 Or (var_9C = vbNullString)) Then
  loc_19CD640:             ().InsertRows , 
  loc_19CD658:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CD676:             LateIdCallSt
  loc_19CD698:             (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CD6A1:             var_E4 = CVar(CLng()) 'Long
  loc_19CD6B9:             Set var_C4 = 2(vbNullString)
  loc_19CD6BF:             LateIdCallSt
  loc_19CD6D4:           Else
  loc_19CD6DE:             var_E4(var_C4).InsertRows , 
  loc_19CD6F6:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CD740:             LateIdCallSt
  loc_19CD76A:             (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CD773:             var_F4 = CVar(CLng()) 'Long
  loc_19CD79E:             var_C4 = Me.Fields.Item("Code")
  loc_19CD7B7:             Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19CD7BD:             LateIdCallSt
  loc_19CD7D9:           End If
  loc_19CD7DC:         Else
  loc_19CD7E4:           If Not (var_1AC = "JournalBook") Then
  loc_19CD7EF:             If (var_1AC = "JournalBookLog") Then
  loc_19CD7F2:             End If
  loc_19CD840:             Set var_A0 = var_C4(arg_C)
  loc_19CD846:             Call 0.Method_Proc_203_53_19CDCE40 (var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_19CD84E:             var_13C = var_C4.Text
  loc_19CD866:             If (var_F4 Or (var_9C = vbNullString)) Then
  loc_19CD873:               ().InsertRows , 
  loc_19CD88B:               (CVar(CLng())).DeleteRowLabels , 
  loc_19CD8A9:               LateIdCallSt
  loc_19CD8CB:               (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CD8D4:               var_E4 = CVar(CLng()) 'Long
  loc_19CD8EC:               Set var_C4 = 2(vbNullString)
  loc_19CD8F2:               LateIdCallSt
  loc_19CD907:             Else
  loc_19CD911:               var_E4(var_C4).InsertRows , 
  loc_19CD929:               (CVar(CLng())).DeleteRowLabels , 
  loc_19CD973:               LateIdCallSt
  loc_19CD99D:               (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CD9A6:               var_F4 = CVar(CLng()) 'Long
  loc_19CD9EA:               Set var_13C = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19CD9F0:               LateIdCallSt
  loc_19CDA0C:             End If
  loc_19CDA0C:           End If
  loc_19CDA0C:         End If
  loc_19CDA0F:       Else
  loc_19CDA16:         If (var_B4 = CLng(0)) Then
  loc_19CDA1F:           var_1B0 = GRepFormName
  loc_19CDA2A:           If Not (var_1B0 = "BudgetVariance") Then
  loc_19CDA35:             If (var_1B0 = "Budget") Then
  loc_19CDA38:             End If
  loc_19CDA42:             var_F4(var_13C).InsertRows , 
  loc_19CDA5A:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CDAA4:             LateIdCallSt
  loc_19CDACE:             (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CDAD7:             var_F4 = CVar(CLng()) 'Long
  loc_19CDB02:             var_C4 = Me.Fields.Item("Code")
  loc_19CDB1B:             Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19CDB21:             LateIdCallSt
  loc_19CDB40:           Else
  loc_19CDB49:             Set var_A0 = var_C4(0)
  loc_19CDB4F:             Call 0.Method_Proc_203_53_19CDCE40 (var_13C)
  loc_19CDB5E:             (var_F4).InsertRows , 
  loc_19CDB76:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CDB99:             Call 0.Method_arg_184 (var_C4, var_9C)
  loc_19CDBA9:             Set var_1B4 = CVar(CLng())(CVar(var_9C))
  loc_19CDBAF:             LateIdCallSt
  loc_19CDBCD:           End If
  loc_19CDBD0:         Else
  loc_19CDBD7:           If (var_B4 = CLng(1)) Then
  loc_19CDBE3:             Set var_A0 = var_C4(0)
  loc_19CDBE9:             Call 0.Method_Proc_203_53_19CDCE40 (var_1B4)
  loc_19CDBF8:             ().InsertRows , 
  loc_19CDC10:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CDC33:             Call 0.Method_arg_184 (var_C4, var_9C)
  loc_19CDC43:             Set var_1B4 = CVar(CLng())(CVar(var_9C))
  loc_19CDC49:             LateIdCallSt
  loc_19CDC67:           End If
  loc_19CDC67:         End If
  loc_19CDC67:       End If
  loc_19CDC67:     End If
  loc_19CDC67:   End If
  loc_19CDC67: End If
  loc_19CDC72: If (arg_10 = 0) Then
  loc_19CDC79:   Set var_A0 = var_1B4(&HFF)
  loc_19CDC95:   Set var_A0 = var_C4(0)
  loc_19CDC9B:   Call 0.Method_Proc_203_53_19CDCE40 (0)
  loc_19CDCA3:   var_C4.Visible = DGSite.DispID_8001
  loc_19CDCAF: End If
  loc_19CDCAF: Proc_203_53_19CDCE4 = 
  loc_19CDCB5: ' Referenced from: 19CABB8
  loc_19CDCBB: Call 0.Method_arg_50 (var_9C)
  loc_19CDCD0: Proc_183_57_104B0BC(var_9C)
  loc_19CDCDC: Proc_203_53_19CDCE4 = "TxtGridLeave"
End Sub

Public Sub Proc_203_54_17A3C14
  'Data Table: 583348
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim var_F4 As Variant
  Dim var_88 As Integer
  Dim var_B0 As Variant
  Dim var_9C As TextBox
  Dim var_B4 As TextBox
  loc_17A1CCC: On Error Goto loc_17A3BEC
  loc_17A1CDC:  = (var_94).Width
  loc_17A1CE7: Call 0.Method_arg_78 (var_8C)
  loc_17A1CFC: Set var_98 = (((var_8C - var_94) - CDbl(&HA)))
  loc_17A1D02: var_98.Top = 
  loc_17A1D17: Set var_98 = Me.BTNPRINT
  loc_17A1D1D: Call 0.Method_Proc_203_54_17A3C140 (1)
  loc_17A1D25: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_9C)
  loc_17A1D37: Set var_B0 = Me.BTNPRINT
  loc_17A1D3D: Call 0.Method_Proc_203_54_17A3C140 (0)
  loc_17A1D45: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_B4)
  loc_17A1D5D: Call 0.Method_Proc_203_54_17A3C140 (0)
  loc_17A1D65: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_CC)
  loc_17A1D7B:  = (var_8C).Width
  loc_17A1D99: var_F4 = CVar(((var_8C - ((CDbl(var_AC) + CDbl(var_C4)) + CDbl(var_DC))) / CDbl(2))) 'Single
  loc_17A1DA7: Set var_E0 = Me.BTNPRINT
  loc_17A1DAD: Call 0.Method_Proc_203_54_17A3C140 (1, var_E4)
  loc_17A1DB5: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_F4)
  loc_17A1DE5:  = (var_8C).Top
  loc_17A1DF1: var_F4 = CVar((var_8C + CDbl(&HA))) 'Single
  loc_17A1E05: Call 0.Method_Proc_203_54_17A3C140 (1, var_9C)
  loc_17A1E0D: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_F4)
  loc_17A1E2A: Call 0.Method_Proc_203_54_17A3C140 (1)
  loc_17A1E32: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_B0)
  loc_17A1E44: Set var_90 = Me.BTNPRINT
  loc_17A1E4A: Call 0.Method_Proc_203_54_17A3C140 (1)
  loc_17A1E52: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_80010003(Me.BTNPRINT)
  loc_17A1E61: var_F4 = CVar((CDbl() + CDbl(var_C4))) 'Single
  loc_17A1E6F: Set var_B4 = Me.BTNPRINT
  loc_17A1E75: Call 0.Method_Proc_203_54_17A3C140 (0, Me.BTNPRINT)
  loc_17A1E7D: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_F4)
  loc_17A1EA5:  = (var_8C).Top
  loc_17A1EB1: var_F4 = CVar((var_8C + CDbl(&HA))) 'Single
  loc_17A1EC5: Call 0.Method_Proc_203_54_17A3C140 (0, Me.BTNPRINT)
  loc_17A1ECD: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_F4)
  loc_17A1EE4: Set var_9C = Me.BTNPRINT
  loc_17A1EEA: Call 0.Method_Proc_203_54_17A3C140 (0)
  loc_17A1EF2: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_B0)
  loc_17A1F04: Set var_90 = Me.BTNPRINT
  loc_17A1F0A: Call 0.Method_Proc_203_54_17A3C140 (0)
  loc_17A1F12: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_80010003(Me.BTNPRINT)
  loc_17A1F21: var_F4 = CVar((CDbl() + CDbl(var_C4))) 'Single
  loc_17A1F2A: Set var_B4 = Me.BTNEXIT
  loc_17A1F30: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_F4)
  loc_17A1F56:  = (var_8C).Top
  loc_17A1F62: var_F4 = CVar((var_8C + CDbl(&HA))) 'Single
  loc_17A1F6B: Set var_98 = Me.BTNEXIT
  loc_17A1F71: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_F4)
  loc_17A1F89: Set var_90 = var_98(0)
  loc_17A1F8F: Call 0.Method_Proc_203_54_17A3C140 (vbNullString)
  loc_17A1F97: var_98.Text = 
  loc_17A1FA7: Set var_90 = ()
  loc_17A1FAD: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010005()
  loc_17A1FBC: Call 0.Method_Me0 (var_8C)
  loc_17A1FCE: var_F4 = CVar(((var_8C - CDbl(var_AC)) / CDbl(2))) 'Single
  loc_17A1FD7: Set var_98 = (var_F4)
  loc_17A1FDD: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_17A1FF8: Set var_90 = (CVar(CDbl(&H4B)))
  loc_17A1FFE: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A2013: Set var_90 = (&HA)
  loc_17A2019: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_4()
  loc_17A202E: Set var_90 = (3)
  loc_17A2034: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_5()
  loc_17A2049: Set var_90 = (1)
  loc_17A204F: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_7()
  loc_17A206D: Set var_90 = 0(&H898)
  loc_17A2073: LateIdCallSt
  loc_17A2094: Set var_90 = 1(&H7D0)
  loc_17A209A: LateIdCallSt
  loc_17A20BB: Set var_90 = 2(0)
  loc_17A20C1: LateIdCallSt
  loc_17A20E3: Set var_90 = 1(CVar(CInt(1)))
  loc_17A20E9: LateIdCallSt
  loc_17A2103: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_4(0(var_86))
  loc_17A2119: For var_128 = var_90 To CInt((CLng(var_90) - 1)): var_90 = var_128 'Integer
  loc_17A2135:   Set var_90 = CVar(CLng(var_86))(0)
  loc_17A213B:   LateIdCallSt
  loc_17A2149: Next var_128 'Integer
  loc_17A214E: Call Proc_203_61_195FD34()
  loc_17A215A: For var_12C = 1 To 2: var_86 = var_12C 'Integer
  loc_17A216A:   Set var_90 = var_98(var_86)
  loc_17A2170:   Call 0.Method_Proc_203_54_17A3C140 (1)
  loc_17A2178:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_17A218E:   If (CBool() = &HFF) Then
  loc_17A2197:     var_88 = (var_88 + 1)
  loc_17A219A:   End If
  loc_17A219D: Next var_12C 'Integer
  loc_17A21BD: var_F4 = CVar(CDbl(((((global_140 - global_142) + 1) * CInt(220)) + 500))) 'Single
  loc_17A21C6: Set var_90 = (CVar(CLng(var_86)))
  loc_17A21CC: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A21DA: var_13C = global_144 'Variant
  loc_17A21E9: If (var_13C = 0) Then
  loc_17A21F9:   Set var_90 = (CVar(CDbl(1000)))
  loc_17A21FF:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A220A: Else
  loc_17A2215:   If (var_13C = 1) Then
  loc_17A221E:     var_140 = GRepFormName
  loc_17A2229:     If Not (var_140 = "Led") Then
  loc_17A2234:       If Not (var_140 = "LedInt") Then
  loc_17A223F:         If Not (var_140 = "LedDeb") Then
  loc_17A224A:           If Not (var_140 = "MemLed") Then
  loc_17A2255:             If Not (var_140 = "LedCred") Then
  loc_17A2260:               If (var_140 = "AcCheckList") Then
  loc_17A2263:               End If
  loc_17A2263:             End If
  loc_17A2263:           End If
  loc_17A2263:         End If
  loc_17A2263:       End If
  loc_17A226E:       Set var_90 = var_98(0)
  loc_17A2274:       Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A227C:       var_98.Visible = 
  loc_17A2293:       Set var_90 = var_98(1)
  loc_17A2299:       Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A22A1:       var_98.Visible = 
  loc_17A22B8:       Set var_90 = var_98(3)
  loc_17A22BE:       Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A22C6:       var_98.Visible = 
  loc_17A22DD:       Set var_90 = var_98(4)
  loc_17A22E3:       Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A22EB:       var_98.Visible = 
  loc_17A2302:       Set var_90 = var_98(5)
  loc_17A2308:       Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A2310:       var_98.Visible = 
  loc_17A2329:       Set var_90 = var_98(CInt(0))
  loc_17A232F:       Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A2337:       var_98.Visible = 
  loc_17A2350:       Set var_90 = var_98(CInt(1))
  loc_17A2356:       Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A235E:       var_98.Visible = 
  loc_17A2377:       Set var_90 = var_98(CInt(8))
  loc_17A237D:       Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A2385:       var_98.Visible = 
  loc_17A239E:       Set var_90 = var_98(CInt(9))
  loc_17A23A4:       Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A23AC:       var_98.Visible = 
  loc_17A23C5:       Set var_90 = var_98(CInt(6))
  loc_17A23CB:       Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A23D3:       var_98.Visible = 
  loc_17A23EC:       Set var_90 = var_98(CInt(7))
  loc_17A23F2:       Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A23FA:       var_98.Visible = 
  loc_17A2413:       Set var_90 = var_98(CInt(&HB))
  loc_17A2419:       Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A2421:       var_98.Visible = 
  loc_17A243A:       Set var_90 = var_98(0)
  loc_17A2440:       Call 0.Method_Proc_203_54_17A3C140 (CDbl(&H78))
  loc_17A2448:       var_98.Left = 
  loc_17A2462:       Set var_90 = var_98(0)
  loc_17A2468:       Call 0.Method_Proc_203_54_17A3C140 (CDbl(150))
  loc_17A2470:       var_98.Top = 
  loc_17A2489:       Set var_90 = var_98(1)
  loc_17A248F:       Call 0.Method_Proc_203_54_17A3C140 (CDbl(&H78))
  loc_17A2497:       var_98.Left = 
  loc_17A24B1:       Set var_90 = var_98(1)
  loc_17A24B7:       Call 0.Method_Proc_203_54_17A3C140 (CDbl(450))
  loc_17A24BF:       var_98.Top = 
  loc_17A24DB:       Set var_90 = var_98(CInt(0))
  loc_17A24E1:       Call 0.Method_Proc_203_54_17A3C140 (CDbl(1725))
  loc_17A24E9:       var_98.Left = 
  loc_17A2504:       Set var_90 = var_98(CInt(0))
  loc_17A250A:       Call 0.Method_Proc_203_54_17A3C140 (CDbl(&H69))
  loc_17A2512:       var_98.Top = 
  loc_17A252C:       Set var_90 = var_98(CInt(8))
  loc_17A2532:       Call 0.Method_Proc_203_54_17A3C140 (var_8C)
  loc_17A253A:        = var_98.Width
  loc_17A2557:       Set var_9C = var_B0(CInt(8))
  loc_17A255D:       Call 0.Method_Proc_203_54_17A3C140 (((CDbl(1725) - var_8C) - CDbl(&H32)))
  loc_17A2565:       var_B0.Left = 
  loc_17A2584:       Set var_90 = var_98(CInt(8))
  loc_17A258A:       Call 0.Method_Proc_203_54_17A3C140 (CDbl(&H69))
  loc_17A2592:       var_98.Top = 
  loc_17A25AE:       Set var_90 = var_98(CInt(1))
  loc_17A25B4:       Call 0.Method_Proc_203_54_17A3C140 (CDbl(1725))
  loc_17A25BC:       var_98.Left = 
  loc_17A25D8:       Set var_90 = var_98(CInt(1))
  loc_17A25DE:       Call 0.Method_Proc_203_54_17A3C140 (CDbl(405))
  loc_17A25E6:       var_98.Top = 
  loc_17A2600:       Set var_90 = var_98(CInt(9))
  loc_17A2606:       Call 0.Method_Proc_203_54_17A3C140 (var_8C)
  loc_17A260E:        = var_98.Width
  loc_17A262B:       Set var_9C = var_B0(CInt(9))
  loc_17A2631:       Call 0.Method_Proc_203_54_17A3C140 (((CDbl(1725) - var_8C) - CDbl(&H32)))
  loc_17A2639:       var_B0.Left = 
  loc_17A2659:       Set var_90 = var_98(CInt(9))
  loc_17A265F:       Call 0.Method_Proc_203_54_17A3C140 (CDbl(405))
  loc_17A2667:       var_98.Top = 
  loc_17A268A:       If ((GRepFormName = "LedDeb") Or (GRepFormName = "MemLed")) Then
  loc_17A2695:         Set var_90 = (True)
  loc_17A269B:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_17A26A3:       End If
  loc_17A26A9:       var_144 = GRepFormName
  loc_17A26B4:       If Not (var_144 = "Led") Then
  loc_17A26BF:         If Not (var_144 = "LedDeb") Then
  loc_17A26CA:           If Not (var_144 = "MemLed") Then
  loc_17A26D5:             If (var_144 = "LedCred") Then
  loc_17A26D8:             End If
  loc_17A26D8:           End If
  loc_17A26D8:         End If
  loc_17A26E5:         Set var_90 = var_98(3)
  loc_17A26EB:         Call 0.Method_Proc_203_54_17A3C140 (CDbl(&H78))
  loc_17A26F3:         var_98.Left = 
  loc_17A270D:         Set var_90 = var_98(3)
  loc_17A2713:         Call 0.Method_Proc_203_54_17A3C140 (CDbl(750))
  loc_17A271B:         var_98.Top = 
  loc_17A2734:         Set var_90 = var_98(4)
  loc_17A273A:         Call 0.Method_Proc_203_54_17A3C140 (CDbl(&H78))
  loc_17A2742:         var_98.Left = 
  loc_17A275C:         Set var_90 = var_98(4)
  loc_17A2762:         Call 0.Method_Proc_203_54_17A3C140 (CDbl(1050))
  loc_17A276A:         var_98.Top = 
  loc_17A2786:         Set var_90 = var_98(CInt(6))
  loc_17A278C:         Call 0.Method_Proc_203_54_17A3C140 (CDbl(1725))
  loc_17A2794:         var_98.Left = 
  loc_17A27B0:         Set var_90 = var_98(CInt(6))
  loc_17A27B6:         Call 0.Method_Proc_203_54_17A3C140 (CDbl(705))
  loc_17A27BE:         var_98.Top = 
  loc_17A27DA:         Set var_90 = var_98(CInt(7))
  loc_17A27E0:         Call 0.Method_Proc_203_54_17A3C140 (CDbl(1725))
  loc_17A27E8:         var_98.Left = 
  loc_17A2804:         Set var_90 = var_98(CInt(7))
  loc_17A280A:         Call 0.Method_Proc_203_54_17A3C140 (CDbl(1005))
  loc_17A2812:         var_98.Top = 
  loc_17A2821:       Else
  loc_17A2829:         If (var_144 = "LedInt") Then
  loc_17A2838:           (&HFF).Visible = 
  loc_17A284D:           Set var_90 = var_98(CInt(5))
  loc_17A2853:           Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A285B:           var_98.Visible = 
  loc_17A2875:           (CDbl(&H78)).Left = 
  loc_17A288C:           (CDbl(750)).Top = 
  loc_17A28A1:           Set var_90 = var_98(3)
  loc_17A28A7:           Call 0.Method_Proc_203_54_17A3C140 (CDbl(&H78))
  loc_17A28AF:           var_98.Left = 
  loc_17A28C9:           Set var_90 = var_98(3)
  loc_17A28CF:           Call 0.Method_Proc_203_54_17A3C140 (CDbl(1050))
  loc_17A28D7:           var_98.Top = 
  loc_17A28F0:           Set var_90 = var_98(4)
  loc_17A28F6:           Call 0.Method_Proc_203_54_17A3C140 (CDbl(&H78))
  loc_17A28FE:           var_98.Left = 
  loc_17A2918:           Set var_90 = var_98(4)
  loc_17A291E:           Call 0.Method_Proc_203_54_17A3C140 (CDbl(1350))
  loc_17A2926:           var_98.Top = 
  loc_17A2942:           Set var_90 = var_98(CInt(5))
  loc_17A2948:           Call 0.Method_Proc_203_54_17A3C140 (CDbl(1725))
  loc_17A2950:           var_98.Left = 
  loc_17A296C:           Set var_90 = var_98(CInt(5))
  loc_17A2972:           Call 0.Method_Proc_203_54_17A3C140 (CDbl(705))
  loc_17A297A:           var_98.Top = 
  loc_17A2996:           Set var_90 = var_98(CInt(6))
  loc_17A299C:           Call 0.Method_Proc_203_54_17A3C140 (CDbl(1725))
  loc_17A29A4:           var_98.Left = 
  loc_17A29C0:           Set var_90 = var_98(CInt(6))
  loc_17A29C6:           Call 0.Method_Proc_203_54_17A3C140 (CDbl(1005))
  loc_17A29CE:           var_98.Top = 
  loc_17A29EA:           Set var_90 = var_98(CInt(7))
  loc_17A29F0:           Call 0.Method_Proc_203_54_17A3C140 (CDbl(1725))
  loc_17A29F8:           var_98.Left = 
  loc_17A2A14:           Set var_90 = var_98(CInt(7))
  loc_17A2A1A:           Call 0.Method_Proc_203_54_17A3C140 (CDbl(1305))
  loc_17A2A22:           var_98.Top = 
  loc_17A2A31:         Else
  loc_17A2A39:           If (var_144 = "AcCheckList") Then
  loc_17A2A47:             Set var_90 = var_98(2)
  loc_17A2A4D:             Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A2A55:             var_98.Visible = 
  loc_17A2A6E:             Set var_90 = var_98(CInt(2))
  loc_17A2A74:             Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A2A7C:             var_98.Visible = 
  loc_17A2A95:             Set var_90 = var_98(CInt(&HA))
  loc_17A2A9B:             Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A2AA3:             var_98.Visible = 
  loc_17A2ABB:             (&HFF).Visible = 
  loc_17A2AD0:             Set var_90 = var_98(CInt(3))
  loc_17A2AD6:             Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A2ADE:             var_98.Visible = 
  loc_17A2AF6:             (&HFF).Visible = 
  loc_17A2B0B:             Set var_90 = var_98(CInt(4))
  loc_17A2B11:             Call 0.Method_Proc_203_54_17A3C140 (&HFF)
  loc_17A2B19:             var_98.Visible = 
  loc_17A2B32:             Set var_90 = var_98(2)
  loc_17A2B38:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(&H78))
  loc_17A2B40:             var_98.Left = 
  loc_17A2B5A:             Set var_90 = var_98(2)
  loc_17A2B60:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(750))
  loc_17A2B68:             var_98.Top = 
  loc_17A2B84:             Set var_90 = var_98(CInt(2))
  loc_17A2B8A:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(1725))
  loc_17A2B92:             var_98.Left = 
  loc_17A2BAE:             Set var_90 = var_98(CInt(2))
  loc_17A2BB4:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(705))
  loc_17A2BBC:             var_98.Top = 
  loc_17A2BD6:             Set var_90 = var_98(CInt(&HA))
  loc_17A2BDC:             Call 0.Method_Proc_203_54_17A3C140 (var_8C)
  loc_17A2BE4:              = var_98.Width
  loc_17A2C01:             Set var_9C = var_B0(CInt(&HA))
  loc_17A2C07:             Call 0.Method_Proc_203_54_17A3C140 (((CDbl(1725) - var_8C) - CDbl(&H32)))
  loc_17A2C0F:             var_B0.Left = 
  loc_17A2C2F:             Set var_90 = var_98(CInt(&HA))
  loc_17A2C35:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(705))
  loc_17A2C3D:             var_98.Top = 
  loc_17A2C56:             Set var_90 = var_98(3)
  loc_17A2C5C:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(&H78))
  loc_17A2C64:             var_98.Left = 
  loc_17A2C7E:             Set var_90 = var_98(3)
  loc_17A2C84:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(1050))
  loc_17A2C8C:             var_98.Top = 
  loc_17A2CA5:             Set var_90 = var_98(4)
  loc_17A2CAB:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(&H78))
  loc_17A2CB3:             var_98.Left = 
  loc_17A2CCD:             Set var_90 = var_98(4)
  loc_17A2CD3:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(1350))
  loc_17A2CDB:             var_98.Top = 
  loc_17A2CF7:             Set var_90 = var_98(CInt(6))
  loc_17A2CFD:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(1725))
  loc_17A2D05:             var_98.Left = 
  loc_17A2D21:             Set var_90 = var_98(CInt(6))
  loc_17A2D27:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(1005))
  loc_17A2D2F:             var_98.Top = 
  loc_17A2D4B:             Set var_90 = var_98(CInt(7))
  loc_17A2D51:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(1725))
  loc_17A2D59:             var_98.Left = 
  loc_17A2D75:             Set var_90 = var_98(CInt(7))
  loc_17A2D7B:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(1305))
  loc_17A2D83:             var_98.Top = 
  loc_17A2D9D:             (CDbl(&H78)).Left = 
  loc_17A2DB4:             (CDbl(1650)).Top = 
  loc_17A2DCC:             Set var_90 = var_98(CInt(3))
  loc_17A2DD2:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(1725))
  loc_17A2DDA:             var_98.Left = 
  loc_17A2DF6:             Set var_90 = var_98(CInt(3))
  loc_17A2DFC:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(1605))
  loc_17A2E04:             var_98.Top = 
  loc_17A2E1E:             (CDbl(&H78)).Left = 
  loc_17A2E35:             (CDbl(1950)).Top = 
  loc_17A2E4D:             Set var_90 = var_98(CInt(4))
  loc_17A2E53:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(1725))
  loc_17A2E5B:             var_98.Left = 
  loc_17A2E77:             Set var_90 = var_98(CInt(4))
  loc_17A2E7D:             Call 0.Method_Proc_203_54_17A3C140 (CDbl(1905))
  loc_17A2E85:             var_98.Top = 
  loc_17A2E91:           End If
  loc_17A2E91:         End If
  loc_17A2E91:       End If
  loc_17A2E91:     End If
  loc_17A2E9C:     If (GRepFormName = "AcCheckList") Then
  loc_17A2EA8:       Set var_90 = var_98(1)
  loc_17A2EAE:       Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A2EB6:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010005()
  loc_17A2EC5:       Call 0.Method_Me0 (var_8C)
  loc_17A2EDB:       var_F4 = CVar((((var_8C / CDbl(2)) - CDbl(var_AC)) / CDbl(2))) 'Single
  loc_17A2EE9:       Set var_9C = var_B0(1)
  loc_17A2EEF:       Call 0.Method_Proc_203_54_17A3C140 (True)
  loc_17A2EF7:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_17A2F0E:       Set var_98 = ()
  loc_17A2F14:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A2F21:       Set var_90 = ()
  loc_17A2F27:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A2F3B:       var_F4 = CVar(((CDbl() + CDbl(var_C4)) + CDbl(700))) 'Single
  loc_17A2F49:       Set var_9C = var_B0(1)
  loc_17A2F4F:       Call 0.Method_Proc_203_54_17A3C140 (True)
  loc_17A2F57:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A2F72:       Set var_90 = ()
  loc_17A2F78:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A2F88:       Set var_98 = (var_94)
  loc_17A2F8E:        = var_98.Height
  loc_17A2F99:       Call 0.Method_Me8 (var_8C)
  loc_17A2FB0:       var_F4 = CVar((((var_8C - CDbl(var_AC)) - var_94) - CDbl(2200))) 'Single
  loc_17A2FBE:       Set var_9C = var_B0(1)
  loc_17A2FC4:       Call 0.Method_Proc_203_54_17A3C140 (True)
  loc_17A2FCC:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A2FE8:       Set var_90 = var_98(1)
  loc_17A2FEE:       Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A2FF6:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A300D:       Set var_9C = var_B0(1)
  loc_17A3013:       Call 0.Method_Proc_203_54_17A3C140 ((CDbl() + CDbl(&H14)))
  loc_17A301B:       var_B0.Top = 
  loc_17A3037:       Set var_90 = var_98(1)
  loc_17A303D:       Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A3045:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_17A305C:       Set var_9C = var_B0(1)
  loc_17A3062:       Call 0.Method_Proc_203_54_17A3C140 ((CDbl() + CDbl(&H28)))
  loc_17A306A:       var_B0.Left = 
  loc_17A3083:       Call 0.Method_Me0 (var_94)
  loc_17A3091:       Set var_90 = var_98(1)
  loc_17A3097:       Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A309F:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010005()
  loc_17A30AE:       Call 0.Method_Me0 (var_8C)
  loc_17A30CC:       var_F4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_AC)) / CDbl(2)))) 'Single
  loc_17A30DA:       Set var_9C = var_B0(3)
  loc_17A30E0:       Call 0.Method_Proc_203_54_17A3C140 (True)
  loc_17A30E8:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_17A30FF:       Set var_98 = ()
  loc_17A3105:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A3112:       Set var_90 = ()
  loc_17A3118:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A312C:       var_F4 = CVar(((CDbl() + CDbl(var_C4)) + CDbl(700))) 'Single
  loc_17A313A:       Set var_9C = var_B0(3)
  loc_17A3140:       Call 0.Method_Proc_203_54_17A3C140 (True)
  loc_17A3148:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A3163:       Set var_90 = ()
  loc_17A3169:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A3179:       Set var_98 = (var_94)
  loc_17A317F:        = var_98.Height
  loc_17A318A:       Call 0.Method_Me8 (var_8C)
  loc_17A31A1:       var_F4 = CVar((((var_8C - CDbl(var_AC)) - var_94) - CDbl(2200))) 'Single
  loc_17A31AF:       Set var_9C = var_B0(3)
  loc_17A31B5:       Call 0.Method_Proc_203_54_17A3C140 (True)
  loc_17A31BD:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A31D9:       Set var_90 = var_98(3)
  loc_17A31DF:       Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A31E7:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A31FE:       Set var_9C = var_B0(3)
  loc_17A3204:       Call 0.Method_Proc_203_54_17A3C140 ((CDbl() + CDbl(&H14)))
  loc_17A320C:       var_B0.Top = 
  loc_17A3228:       Set var_90 = var_98(3)
  loc_17A322E:       Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A3236:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_17A324D:       Set var_9C = var_B0(3)
  loc_17A3253:       Call 0.Method_Proc_203_54_17A3C140 ((CDbl() + CDbl(&H28)))
  loc_17A325B:       var_B0.Left = 
  loc_17A32B5:       If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_17A32C4:         (&HFF).Visible = 
  loc_17A32D5:         Set var_90 = var_98(1)
  loc_17A32DB:         Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A32E3:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_17A32F7:         (CDbl()).Left = 
  loc_17A3311:         Set var_90 = var_98(1)
  loc_17A3317:         Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A331F:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010005()
  loc_17A3333:         (CDbl()).Width = 
  loc_17A334D:         Set var_9C = var_B0(1)
  loc_17A3353:         Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A335B:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A336D:         Set var_90 = var_98(1)
  loc_17A3373:         Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A337B:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A338F:         Set var_B4 = ((CDbl() + CDbl(var_C4)))
  loc_17A3395:         var_B4.Top = 
  loc_17A33AE:       End If
  loc_17A33B1:     Else
  loc_17A33BA:       Set var_90 = var_98(1)
  loc_17A33C0:       Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A33C8:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010005()
  loc_17A33D7:       Call 0.Method_Me0 (var_8C)
  loc_17A33E9:       var_F4 = CVar(((var_8C - CDbl(var_AC)) / CDbl(2))) 'Single
  loc_17A33F7:       Set var_9C = var_B0(1)
  loc_17A33FD:       Call 0.Method_Proc_203_54_17A3C140 (True)
  loc_17A3405:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_17A341C:       Set var_98 = ()
  loc_17A3422:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A342F:       Set var_90 = ()
  loc_17A3435:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A3449:       var_F4 = CVar(((CDbl() + CDbl(var_C4)) + CDbl(700))) 'Single
  loc_17A3457:       Set var_9C = var_B0(1)
  loc_17A345D:       Call 0.Method_Proc_203_54_17A3C140 (True)
  loc_17A3465:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A3480:       Set var_90 = ()
  loc_17A3486:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A3496:       Set var_98 = (var_94)
  loc_17A349C:        = var_98.Height
  loc_17A34A7:       Call 0.Method_Me8 (var_8C)
  loc_17A34BE:       var_F4 = CVar((((var_8C - CDbl(var_AC)) - var_94) - CDbl(2200))) 'Single
  loc_17A34CC:       Set var_9C = var_B0(1)
  loc_17A34D2:       Call 0.Method_Proc_203_54_17A3C140 (True)
  loc_17A34DA:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A34F6:       Set var_90 = var_98(1)
  loc_17A34FC:       Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A3504:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A351B:       Set var_9C = var_B0(1)
  loc_17A3521:       Call 0.Method_Proc_203_54_17A3C140 ((CDbl() + CDbl(&H14)))
  loc_17A3529:       var_B0.Top = 
  loc_17A3545:       Set var_90 = var_98(1)
  loc_17A354B:       Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A3553:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_17A356A:       Set var_9C = var_B0(1)
  loc_17A3570:       Call 0.Method_Proc_203_54_17A3C140 ((CDbl() + CDbl(&H28)))
  loc_17A3578:       var_B0.Left = 
  loc_17A35D2:       If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_17A35E1:         (&HFF).Visible = 
  loc_17A35F2:         Set var_90 = var_98(1)
  loc_17A35F8:         Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A3600:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_17A3614:         (CDbl()).Left = 
  loc_17A362E:         Set var_90 = var_98(1)
  loc_17A3634:         Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A363C:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010005()
  loc_17A3650:         (CDbl()).Width = 
  loc_17A366A:         Set var_9C = var_B0(1)
  loc_17A3670:         Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A3678:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A368A:         Set var_90 = var_98(1)
  loc_17A3690:         Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A3698:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A36AC:         Set var_B4 = ((CDbl() + CDbl(var_C4)))
  loc_17A36B2:         var_B4.Top = 
  loc_17A36CB:       End If
  loc_17A36CB:     End If
  loc_17A36CE:   Else
  loc_17A36D9:     If (var_13C = 2) Then
  loc_17A36E5:       Set var_90 = var_98(1)
  loc_17A36EB:       Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A36F3:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010005()
  loc_17A3702:       Call 0.Method_Me0 (var_8C)
  loc_17A3718:       var_F4 = CVar((((var_8C / CDbl(2)) - CDbl(var_AC)) / CDbl(2))) 'Single
  loc_17A3726:       Set var_9C = var_B0(1)
  loc_17A372C:       Call 0.Method_Proc_203_54_17A3C140 (2)
  loc_17A3734:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_17A374B:       Set var_98 = ()
  loc_17A3751:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A375E:       Set var_90 = ()
  loc_17A3764:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A3778:       var_F4 = CVar(((CDbl() + CDbl(var_C4)) + CDbl(700))) 'Single
  loc_17A3786:       Set var_9C = var_B0(1)
  loc_17A378C:       Call 0.Method_Proc_203_54_17A3C140 (2)
  loc_17A3794:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A37AF:       Set var_90 = ()
  loc_17A37B5:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A37C5:       Set var_98 = (var_94)
  loc_17A37CB:        = var_98.Height
  loc_17A37D6:       Call 0.Method_Me8 (var_8C)
  loc_17A37ED:       var_F4 = CVar((((var_8C - CDbl(var_AC)) - var_94) - CDbl(2200))) 'Single
  loc_17A37FB:       Set var_9C = var_B0(1)
  loc_17A3801:       Call 0.Method_Proc_203_54_17A3C140 (2)
  loc_17A3809:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A3825:       Set var_90 = var_98(1)
  loc_17A382B:       Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A3833:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A384A:       Set var_9C = var_B0(1)
  loc_17A3850:       Call 0.Method_Proc_203_54_17A3C140 ((CDbl() + CDbl(&H14)))
  loc_17A3858:       var_B0.Top = 
  loc_17A3874:       Set var_90 = var_98(1)
  loc_17A387A:       Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A3882:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_17A3899:       Set var_9C = var_B0(1)
  loc_17A389F:       Call 0.Method_Proc_203_54_17A3C140 ((CDbl() + CDbl(&H28)))
  loc_17A38A7:       var_B0.Left = 
  loc_17A38C0:       Call 0.Method_Me0 (var_94)
  loc_17A38CE:       Set var_90 = var_98(1)
  loc_17A38D4:       Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A38DC:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010005()
  loc_17A38EB:       Call 0.Method_Me0 (var_8C)
  loc_17A3909:       var_F4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_AC)) / CDbl(2)))) 'Single
  loc_17A3917:       Set var_9C = var_B0(2)
  loc_17A391D:       Call 0.Method_Proc_203_54_17A3C140 (2)
  loc_17A3925:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_17A393C:       Set var_98 = ()
  loc_17A3942:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A394F:       Set var_90 = ()
  loc_17A3955:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A3969:       var_F4 = CVar(((CDbl() + CDbl(var_C4)) + CDbl(700))) 'Single
  loc_17A3977:       Set var_9C = var_B0(2)
  loc_17A397D:       Call 0.Method_Proc_203_54_17A3C140 (2)
  loc_17A3985:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A39A0:       Set var_90 = ()
  loc_17A39A6:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A39B6:       Set var_98 = (var_94)
  loc_17A39BC:        = var_98.Height
  loc_17A39C7:       Call 0.Method_Me8 (var_8C)
  loc_17A39DE:       var_F4 = CVar((((var_8C - CDbl(var_AC)) - var_94) - CDbl(2200))) 'Single
  loc_17A39EC:       Set var_9C = var_B0(2)
  loc_17A39F2:       Call 0.Method_Proc_203_54_17A3C140 (2)
  loc_17A39FA:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A3A16:       Set var_90 = var_98(2)
  loc_17A3A1C:       Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A3A24:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A3A3B:       Set var_9C = var_B0(2)
  loc_17A3A41:       Call 0.Method_Proc_203_54_17A3C140 ((CDbl() + CDbl(&H14)))
  loc_17A3A49:       var_B0.Top = 
  loc_17A3A65:       Set var_90 = var_98(2)
  loc_17A3A6B:       Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A3A73:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_17A3A8A:       Set var_9C = var_B0(2)
  loc_17A3A90:       Call 0.Method_Proc_203_54_17A3C140 ((CDbl() + CDbl(&H28)))
  loc_17A3A98:       var_B0.Left = 
  loc_17A3AF2:       If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_17A3B01:         (&HFF).Visible = 
  loc_17A3B12:         Set var_90 = var_98(1)
  loc_17A3B18:         Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A3B20:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_17A3B34:         (CDbl()).Left = 
  loc_17A3B4E:         Set var_90 = var_98(1)
  loc_17A3B54:         Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A3B5C:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010005()
  loc_17A3B70:         (CDbl()).Width = 
  loc_17A3B8A:         Set var_9C = var_B0(1)
  loc_17A3B90:         Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A3B98:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_17A3BAA:         Set var_90 = var_98(1)
  loc_17A3BB0:         Call 0.Method_Proc_203_54_17A3C140 ()
  loc_17A3BB8:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17A3BCC:         Set var_B4 = ((CDbl() + CDbl(var_C4)))
  loc_17A3BD2:         var_B4.Top = 
  loc_17A3BEB:       End If
  loc_17A3BEB:     End If
  loc_17A3BEB:   End If
  loc_17A3BEB: End If
  loc_17A3BEB: Exit Sub
  loc_17A3BEC: ' Referenced from: 17A1CCC
  loc_17A3BF2: Call 0.Method_arg_50 (var_148)
  loc_17A3BFA: var_150 = "Global_Grid"
  loc_17A3C07: Proc_183_57_104B0BC(var_148)
  loc_17A3C13: Exit Sub
End Sub

Public Sub Proc_203_55_EB8A64
  'Data Table: 583348
  Dim var_88 As Frame
  loc_EB89D1:  = (var_8A).Visible
  loc_EB89DF: If (var_8A = &HFF) Then
  loc_EB89EE:   (0).Visible = 
  loc_EB89F6: End If
  loc_EB89FA: Set var_88 = ()
  loc_EB8A00: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_EB8A12: If (CBool() = &HFF) Then
  loc_EB8A1E:   Set var_88 = (False)
  loc_EB8A24:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_EB8A2C: End If
  loc_EB8A30: Set var_88 = ()
  loc_EB8A36: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_EB8A48: If (CBool() = &HFF) Then
  loc_EB8A54:   Set var_88 = (False)
  loc_EB8A5A:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_EB8A62: End If
  loc_EB8A62: Exit Sub
End Sub

Public Sub Proc_203_56_127C1B4(arg_C, arg_10, arg_14) '127C1B4
  'Data Table: 583348
  Dim var_B8 As Integer
  Dim var_90 As Integer
  Dim var_A8 As Variant
  Dim var_104 As String
  Dim var_17C As Variant
  Dim var_16C As Variant
  Dim var_1AC As Variant
  Dim var_1C2 As Integer
  loc_127BC26: On Error Goto loc_127C17E
  loc_127BC2C: var_8C = vbNullString
  loc_127BC37: CRefVarAry
  loc_127BC3F: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_127BC60:   If (arg_C(var_8E) = 0) Then
  loc_127BC63:     GoTo loc_127BFFB
  loc_127BC66:   End If
  loc_127BC77:   var_90 = CInt(arg_C(var_8E))
  loc_127BC99:   Set var_DC = var_E0(arg_10)
  loc_127BC9F:   Call 0.Method_Proc_203_56_127C1B40 (0, CVar(CLng(var_90)))
  loc_127BCA7:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41(var_90)
  loc_127BCC7:   If (CStr(0) = "ü") Then
  loc_127BCD3:     If (CInt(arg_14) = 0) Then
  loc_127BCF2:       Set var_DC = var_E0(arg_10)
  loc_127BCF8:       Call 0.Method_Proc_203_56_127C1B40 (2)
  loc_127BD00:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41(CVar(CLng(var_90)))
  loc_127BD31:       Set var_108 = var_10C(arg_10)
  loc_127BD37:       Call 0.Method_Proc_203_56_127C1B40 (2, CVar(CLng(var_90)))
  loc_127BD3F:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41(",")
  loc_127BD6F:       var_1AC = ( + IIf((var_8C = vbNullString), CVar(CStr(var_C8)), CVar( & CStr(CVar(var_8C)))))
  loc_127BD74:       var_8C = CStr(var_1AC)
  loc_127BD99:     Else
  loc_127BDA2:       If (CInt(arg_14) = 1) Then
  loc_127BDC1:         Set var_DC = var_E0(arg_10)
  loc_127BDC7:         Call 0.Method_Proc_203_56_127C1B40 (2)
  loc_127BDCF:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41(CVar(CLng(var_90)))
  loc_127BE07:         Set var_108 = var_10C(arg_10)
  loc_127BE0D:         Call 0.Method_Proc_203_56_127C1B40 (2, CVar(CLng(var_90)))
  loc_127BE15:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41("," & "'")
  loc_127BE5A:         var_1AC = ( + IIf((var_8C = vbNullString), CVar("'" & CStr(var_C8) & "'"), CVar(CStr(CVar(var_8C)) & "'")))
  loc_127BE5F:         var_8C = CStr(var_1AC)
  loc_127BE8B:       End If
  loc_127BE8B:     End If
  loc_127BEAA:     Set var_DC = var_E0(arg_10)
  loc_127BEB0:     Call 0.Method_Proc_203_56_127C1B40 (1, CVar(CLng(var_90)))
  loc_127BEB8:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41(var_94)
  loc_127BEE2:     If (Len(CStr()) < &HFF) Then
  loc_127BF01:       Set var_DC = var_E0(arg_10)
  loc_127BF07:       Call 0.Method_Proc_203_56_127C1B40 (1)
  loc_127BF0F:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41(CVar(CLng(var_90)))
  loc_127BF40:       Set var_108 = var_10C(arg_10)
  loc_127BF46:       Call 0.Method_Proc_203_56_127C1B40 (1, CVar(CLng(var_90)))
  loc_127BF4E:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41(",")
  loc_127BF5D:       var_17C = CVar( & CStr(CVar(var_94))) 'String
  loc_127BF64:       var_16C = CVar(CStr(var_C8)) 'String
  loc_127BF76:       var_18C = IIf((var_94 = vbNullString), var_16C, var_17C)
  loc_127BF7E:       var_1AC = ( + var_18C)
  loc_127BF83:       var_94 = CStr(var_1AC)
  loc_127BFA5:     End If
  loc_127BFA9:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_127BFC7:     Set var_DC = var_E0(arg_10)
  loc_127BFCD:     Call 0.Method_Proc_203_56_127C1B40 (vbNullString, 0)
  loc_127BFD5:     LateIdCallSt
  loc_127BFE7:   Else
  loc_127BFEE:     var_B8 = 0
  loc_127BFF7:     VarIndexSt
  loc_127BFFB:   End If
  loc_127BFFB:   ' Referenced from: 127BC63
  loc_127BFFE: Next var_98 'Integer
  loc_127C00B: CRefVarAry
  loc_127C013: For var_1C0 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1C0 'Integer
  loc_127C04B:   If CBool(arg_C(var_8E) <> 0) Then
  loc_127C070:     Set var_DC = var_E0(arg_10)
  loc_127C076:     Call 0.Method_Proc_203_56_127C1B40 ("ü", 0, CVar(CLng(CInt(arg_C(var_8E)))))
  loc_127C07E:     LateIdCallSt
  loc_127C08D:   End If
  loc_127C090: Next var_1C0 'Integer
  loc_127C09D: If (var_8C = vbNullString) Then
  loc_127C0BC:   Set var_DC = var_E0(arg_10)
  loc_127C0C2:   Call 0.Method_Proc_203_56_127C1B40 (1)
  loc_127C0CA:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41(0)
  loc_127C0EB:   var_104 = CStr(var_C8)
  loc_127C0F2:   MsgBox(CVar("Select " & var_104), &H40, var_16C, var_17C, var_18C)
  loc_127C118:   Set var_DC = var_E0(arg_10)
  loc_127C11E:   Call 0.Method_Proc_203_56_127C1B40 ()
  loc_127C126:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_8001()
  loc_127C13D:   Proc_203_56_127C1B4 = 0
  loc_127C143: End If
  loc_127C146: var_88 = var_8C
  loc_127C14C: var_1C2 = arg_10
  loc_127C155: If (var_1C2 = 1) Then
  loc_127C15E:   global_108 = var_94
  loc_127C165: Else
  loc_127C16B:   If (var_1C2 = 2) Then
  loc_127C174:     global_112 = var_94
  loc_127C178:   End If
  loc_127C178: End If
  loc_127C178: Proc_203_56_127C1B4 = var_1C2
  loc_127C17E: ' Referenced from: 127BC26
  loc_127C18C: Call 0.Method_arg_50 (var_104)
  loc_127C1A1: Proc_183_57_104B0BC(var_104, "FillString")
  loc_127C1AD: Proc_203_56_127C1B4 = 0
End Sub

Public Sub Proc_203_57_F303E0
  'Data Table: 583348
  Dim var_CC As Variant
  loc_F302D8: On Error Goto loc_F303B6
  loc_F302DF: Set var_8C = ()
  loc_F302E5: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_A()
  loc_F302FC: If (CLng() = CLng(global_140)) Then
  loc_F30307:   var_A0 = "	"
  loc_F3030D:   Proc_303_0_FBACC8(var_A0)
  loc_F30315:   Exit Sub
  loc_F30316: End If
  loc_F3031A: Set var_8C = (0)
  loc_F30320: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_A()
  loc_F30331: Set var_A8 = CInt(CLng())(var_86)
  loc_F30337: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_4()
  loc_F30355: For var_BC =  To CInt((CLng() - 1)):  = var_BC 'Integer
  loc_F30362:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F3036B:   Set var_8C = (var_CC)
  loc_F30371:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_3A()
  loc_F30389:   If (CLng() <> 0) Then
  loc_F30393:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F3039C:     Set var_8C = (var_CC)
  loc_F303A2:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_A()
  loc_F303AA:     Exit For
  loc_F303AD:   End If
  loc_F303B0: Next var_BC 'Integer
  loc_F303B5: ' Referenced from: F303AA
  loc_F303B5: Exit Sub
  loc_F303B6: ' Referenced from: F302D8
  loc_F303BC: Call 0.Method_arg_50 (var_A0)
  loc_F303C4: var_E4 = "TxtKeyDown"
  loc_F303D1: Proc_183_57_104B0BC(var_A0)
  loc_F303DD: Exit Sub
End Sub

Public Sub Proc_203_58_11EA690(arg_C, arg_10) '11EA690
  'Data Table: 583348
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As CheckBox
  Dim var_E8 As CheckBox
  loc_11EA204: On Error Goto loc_11EA667
  loc_11EA20A: var_86 = arg_C
  loc_11EA210: var_88 = var_86
  loc_11EA219: If (var_88 = 1) Then
  loc_11EA238:   Me.Recordset15.CursorLocation = 3
  loc_11EA261:   Me.Open CVar(arg_10), CVar(MemVar_1F951E0), 3
  loc_11EA26F:   CVarUnk
  loc_11EA274:   VerifyVarObj
  loc_11EA280:   Set var_8C = var_B0(var_86)
  loc_11EA286:   Call 0.Method_Proc_203_58_11EA6900 (New, 1, -1)
  loc_11EA28E:   LateIdStAd
  loc_11EA2B0:   ReDim Preserve global_96(0 To 0)
  loc_11EA2C7:   global_96(0) = 0
  loc_11EA2CB: Else
  loc_11EA2D1:   If (var_88 = 2) Then
  loc_11EA2F0:     Me.Recordset15.CursorLocation = 3
  loc_11EA319:     Me.Open CVar(arg_10), CVar(MemVar_1F951E0), 3
  loc_11EA327:     CVarUnk
  loc_11EA32C:     VerifyVarObj
  loc_11EA338:     Set var_8C = var_B0(var_86)
  loc_11EA33E:     Call 0.Method_Proc_203_58_11EA6900 (New, 1, -1)
  loc_11EA346:     LateIdStAd
  loc_11EA368:     ReDim Preserve global_100(0 To 0)
  loc_11EA37F:     global_100(0) = 0
  loc_11EA383:   Else
  loc_11EA389:     If (var_88 = 3) Then
  loc_11EA3A8:       Me.Recordset15.CursorLocation = 3
  loc_11EA3D1:       Me.Open CVar(arg_10), CVar(MemVar_1F951E0), 3
  loc_11EA3DF:       CVarUnk
  loc_11EA3E4:       VerifyVarObj
  loc_11EA3F0:       Set var_8C = var_B0(var_86)
  loc_11EA3F6:       Call 0.Method_Proc_203_58_11EA6900 (New, 1, -1, var_B0)
  loc_11EA3FE:       LateIdStAd
  loc_11EA420:       ReDim Preserve global_104(0 To 0)
  loc_11EA437:       global_104(0) = 0
  loc_11EA438:     End If
  loc_11EA438:   End If
  loc_11EA438: End If
  loc_11EA44B: Set var_8C = var_B0(var_86)
  loc_11EA451: Call 0.Method_Proc_203_58_11EA6900 (CVar(CDbl(1700)), var_B0, var_B0)
  loc_11EA459: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_88)
  loc_11EA473: Set var_8C = var_B0(var_86)
  loc_11EA479: Call 0.Method_Proc_203_58_11EA6900 (True)
  loc_11EA481: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010007(var_86)
  loc_11EA49B: Set var_8C = var_B0(var_86)
  loc_11EA4A1: Call 0.Method_Proc_203_58_11EA6900 (True)
  loc_11EA4A9: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_8001000D()
  loc_11EA4C1: Set var_8C = var_B0(var_86)
  loc_11EA4C7: Call 0.Method_Proc_203_58_11EA6900 (&HFF)
  loc_11EA4CF: var_B0.Visible = 
  loc_11EA4EE: Set var_8C = var_B0(var_86)
  loc_11EA4F4: Call 0.Method_Proc_203_58_11EA6900 (CVar(CDbl(5200)))
  loc_11EA4FC: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010005()
  loc_11EA508: var_9C = 0
  loc_11EA524: Set var_8C = var_B0(var_86)
  loc_11EA52A: Call 0.Method_Proc_203_58_11EA6900 (&H258)
  loc_11EA532: LateIdCallSt
  loc_11EA55D: Set var_8C = var_B0(var_86)
  loc_11EA563: Call 0.Method_Proc_203_58_11EA6900 (0, 2)
  loc_11EA56B: LateIdCallSt
  loc_11EA596: Set var_8C = var_B0(var_86)
  loc_11EA59C: Call 0.Method_Proc_203_58_11EA6900 (&HFA0, 1, var_B0)
  loc_11EA5A4: LateIdCallSt
  loc_11EA5C2: Set var_8C = var_B0(var_86)
  loc_11EA5C8: Call 0.Method_Proc_203_58_11EA6900 (CDbl(580), var_B0)
  loc_11EA5D0: var_B0.Width = var_B0
  loc_11EA5DC: var_9C = 0
  loc_11EA5EF: Set var_8C = var_B0(var_86)
  loc_11EA5F5: Call 0.Method_Proc_203_58_11EA6900 (var_9C)
  loc_11EA5FD: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_3A(var_9C)
  loc_11EA61B: Set var_E4 = var_E8(var_86)
  loc_11EA621: Call 0.Method_Proc_203_58_11EA6900 (CDbl((CLng() + &H14)))
  loc_11EA629: var_E8.Height = 
  loc_11EA64C: Set var_8C = var_B0(var_86)
  loc_11EA652: Call 0.Method_Proc_203_58_11EA6900 (CInt(0))
  loc_11EA65A: var_B0.Value = 
  loc_11EA666: Exit Sub
  loc_11EA667: ' Referenced from: 11EA204
  loc_11EA66D: Call 0.Method_arg_50 (var_EC)
  loc_11EA675: var_F4 = "GridInitialise"
  loc_11EA682: Proc_183_57_104B0BC(var_EC)
  loc_11EA68E: Exit Sub
End Sub

Public Sub Proc_203_59_F525A0(arg_C, arg_10) 'F525A0
  'Data Table: 583348
  Dim var_E0 As String
  Dim var_86 As Integer
  loc_F52490: On Error Goto loc_F52570
  loc_F524A9: Set var_CC = CVar(CLng(arg_C))(1)
  loc_F524AF: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41()
  loc_F524BA: var_E0 = CStr()
  loc_F524CB: If (var_E0 = vbNullString) Then
  loc_F52500:   MsgBox(Trim(arg_10) & " Should not be Blank.", &H40, "Validation Check", var_110, var_130)
  loc_F52516:   Set var_CC = ()
  loc_F5251C:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_8001()
  loc_F52534:   Set var_CC = (CVar(CLng(arg_C)))
  loc_F5253A:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_A()
  loc_F5254F:   Set var_CC = (1)
  loc_F52555:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_B()
  loc_F5255F:   var_86 = 0
  loc_F52565: Else
  loc_F52567:   var_86 = &HFF
  loc_F5256A: End If
  loc_F5256A: Proc_203_59_F525A0 = var_86
  loc_F52570: ' Referenced from: F52490
  loc_F52576: Call 0.Method_arg_50 (var_E0)
  loc_F5258B: Proc_183_57_104B0BC(var_E0, "IsNotBlank")
  loc_F52597: Proc_203_59_F525A0 = var_86
End Sub

Public Sub Proc_203_60_1754AC0
  'Data Table: 583348
  Dim var_B4 As Variant
  Dim var_A4 As String
  Dim var_F0 As String
  Dim var_124 As String
  Dim var_C4 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_1B8 As Variant
  Dim var_1D8 As Variant
  Dim var_94 As Variant
  Dim var_188 As String
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim unk_583395 As Connection15
  Dim var_90 As Recordset15
  Dim var_130 As Fields15
  loc_1752D98: On Error Goto loc_1754A96
  loc_1752DAC: Call 0.Method_arg_90 (var_94, var_98)
  loc_1752DB4: Call 0.Method_arg_24 (var_86)
  loc_1752DC0: For var_9C =  To CInt(var_98): 1 = var_9C 'Integer
  loc_1752DD9:   Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_1752DE1:   Call 0.Method_arg_20 (var_A0)
  loc_1752DE9:   Call 0.Method_arg_30 (var_A4)
  loc_1752DFF:   var_D4 = Ucase(CVar(var_A4)) 'Variant
  loc_1752E2F:   If (var_D4 = Ucase("Title")) Then
  loc_1752E38:     var_EC = GRepFormName
  loc_1752E4B:     var_A4 = CStr((GRepFormName = "DUELIST"))
  loc_1752E53:     If (var_EC = var_A4) Then
  loc_1752E5F:       Call 0.Method_arg_50 (var_A4)
  loc_1752E87:       Set var_94 = CVar(CLng(3))(1)
  loc_1752E8D:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41("'" & var_A4 & " More Than ")
  loc_1752EB6:       Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_1752EBE:       Call 0.Method_arg_20 (var_130)
  loc_1752EC6:       Call 0.Method_arg_38 (CStr() & " Days""'")
  loc_1752EE9:     Else
  loc_1752EF1:       If (var_EC = "DayBook") Then
  loc_1752EFD:         Call 0.Method_arg_50 (var_A4)
  loc_1752F21:         Set var_94 = CVar(CLng(3))(1)
  loc_1752F27:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41(var_A4 & " (")
  loc_1752F5B:         Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_1752F63:         Call 0.Method_arg_20 (var_130)
  loc_1752F6B:         Call 0.Method_arg_38 (CStr("'") & ")" & "'")
  loc_1752F90:       Else
  loc_1752F98:         If Not (var_EC = "JournalBook") Then
  loc_1752FA3:           If (var_EC = "JournalBookLog") Then
  loc_1752FA6:           End If
  loc_1752FBB:           Set var_94 = CVar(CLng(4))(2)
  loc_1752FC1:           Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41()
  loc_1752FEE:           If CBool(Trim(CVar(CStr())) <> vbNullString) Then
  loc_175300B:             Set var_94 = CVar(CLng(2))(1)
  loc_1753011:             Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41("'")
  loc_175302F:             var_168 = (Trim(CVar(CStr())) + " (")
  loc_1753048:             Set var_A0 = CVar(CLng(4))(1)
  loc_175304E:             Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41(var_168)
  loc_1753067:             var_1E8 = ( + Trim(CVar(CStr())))
  loc_1753070:             var_208 = (var_1E8 + ")")
  loc_1753095:             Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_175309D:             Call 0.Method_arg_20 (var_24C)
  loc_17530A5:             Call 0.Method_arg_38 (CStr(var_208 & "'"))
  loc_17530D4:           Else
  loc_17530EE:             Set var_94 = CVar(CLng(2))(1)
  loc_17530F4:             Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41("'")
  loc_175311A:             var_A4 = CStr(Trim(CVar(CStr())) & "'")
  loc_175312E:             Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_1753136:             Call 0.Method_arg_20 (var_130)
  loc_175313E:             Call 0.Method_arg_38 (var_A4)
  loc_175315C:           End If
  loc_175315F:         Else
  loc_1753167:           If Not (var_EC = "Annexure") Then
  loc_1753172:             If Not (var_EC = "BankReg") Then
  loc_175317D:               If Not (var_EC = "CashBook") Then
  loc_1753188:                 If Not (var_EC = "BankBook") Then
  loc_1753193:                   If Not (var_EC = "Clg") Then
  loc_175319E:                     If Not (var_EC = "ClgNot") Then
  loc_17531A9:                       If Not (var_EC = "DailySumm") Then
  loc_17531B4:                         If Not (var_EC = "RozNamcha") Then
  loc_17531BF:                           If Not (var_EC = "CONTROLLED") Then
  loc_17531CA:                             If Not (var_EC = "DUELIST") Then
  loc_17531D5:                               If Not (var_EC = "RefReport") Then
  loc_17531E0:                                 If (var_EC = "NonTrans") Then
  loc_17531E3:                                 End If
  loc_17531E3:                               End If
  loc_17531E3:                             End If
  loc_17531E3:                           End If
  loc_17531E3:                         End If
  loc_17531E3:                       End If
  loc_17531E3:                     End If
  loc_17531E3:                   End If
  loc_17531E3:                 End If
  loc_17531E3:               End If
  loc_17531E3:             End If
  loc_17531EE:             Set var_94 = var_A0(CInt(&HC))
  loc_17531F4:             Call 0.Method_Proc_203_60_1754AC00 ()
  loc_175321D:             If CBool(Trim(CVar(var_A0)) <> vbNullString) Then
  loc_175322B:               Call 0.Method_arg_50 (var_A4)
  loc_1753245:               Set var_94 = var_A0(CInt(&HC))
  loc_175324B:               Call 0.Method_Proc_203_60_1754AC00 (CVar(var_A4 & " ("))
  loc_1753262:               var_168 = ("'" + Trim(CVar(var_A0)))
  loc_175326B:               var_1B8 = (Trim(CVar(CStr())) + ")")
  loc_1753274:               var_1C8 = (Trim(CVar(CStr())) & "'" + "'")
  loc_1753278:               var_1D8 = CVar(CStr()) 
  loc_1753290:               Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_1753298:               Call 0.Method_arg_20 (var_24C)
  loc_17532A0:               Call 0.Method_arg_38 (CStr(var_1D8))
  loc_17532C9:             Else
  loc_17532D2:               Call 0.Method_arg_50 (var_A4)
  loc_17532F5:               Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_17532FD:               Call 0.Method_arg_20 (var_A0)
  loc_1753305:               Call 0.Method_arg_38 ("'" & var_A4 & "'")
  loc_175331A:             End If
  loc_175331D:           Else
  loc_1753326:             Call 0.Method_arg_50 (var_A4)
  loc_1753349:             Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_1753351:             Call 0.Method_arg_20 (var_A0)
  loc_1753359:             Call 0.Method_arg_38 ("'" & var_A4 & "'")
  loc_175336E:           End If
  loc_175336E:         End If
  loc_175336E:       End If
  loc_175336E:     End If
  loc_1753371:   Else
  loc_1753379:     var_B4 = "FORDATE"
  loc_1753393:     If Not (var_D4 = Ucase(var_B4)) Then
  loc_17533B8:       If Not (var_D4 = Ucase("DATE")) Then
  loc_17533DD:         If (var_D4 = Ucase("FROMDATE")) Then
  loc_17533E0:         End If
  loc_17533E0:       End If
  loc_17533F1:       If (GRepFormName = "Annexure") Then
  loc_1753404:          = "'Upto Date :   "(var_A4).Text
  loc_1753427:         Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_175342F:         Call 0.Method_arg_20 (var_130)
  loc_1753437:         Call 0.Method_arg_38 (var_A4 & "'")
  loc_1753451:       Else
  loc_1753466:         Set var_94 = CVar(CLng(0))(1)
  loc_175346C:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41()
  loc_175348D:         Set var_A0 = CVar(CLng(1))(1)
  loc_1753493:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41()
  loc_175349F:         var_178 = "'From :'+ '"
  loc_17534CF:         var_188 = "' + ' To ' + '"
  loc_1753520:         Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C, CStr(1 & Format(CVar(CStr(var_1D8)), "dd/mmm/yyyy") & "'"))
  loc_1753528:         Call 0.Method_arg_20 (1, 1 & Format(CVar(CStr(var_B4)), "dd/mmm/yyyy") & var_188)
  loc_1753530:         Call 0.Method_arg_38 (1)
  loc_175355E:       End If
  loc_1753561:     Else
  loc_1753583:       If (var_D4 = Ucase("PageNo")) Then
  loc_17535D9:         Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_17535E1:         Call 0.Method_arg_20 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_17535E9:         Call 0.Method_arg_38 ("'")
  loc_1753608:       Else
  loc_175362A:         If (var_D4 = Ucase("DT")) Then
  loc_1753680:           Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_1753688:           Call 0.Method_arg_20 (var_24C)
  loc_1753690:           Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("daterfill").Value & "'"))
  loc_17536AF:         Else
  loc_17536D1:           If (var_D4 = Ucase("SepPage")) Then
  loc_17536F3:             var_A0 = Me.Fields.Item("CashBookPage")
  loc_175372B:             Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_1753733:             Call 0.Method_arg_20 (var_24C)
  loc_175373B:             Call 0.Method_arg_38 (CStr("'" & Ucase(CVar(var_A0)) & "'"))
  loc_175375A:           Else
  loc_175377C:             If (var_D4 = Ucase("PageNoIni")) Then
  loc_1753794:               Set var_94 = CVar(CLng(3))(1)
  loc_175379A:               Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41()
  loc_17537C2:               Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_17537CA:               Call 0.Method_arg_20 (var_130)
  loc_17537D2:               Call 0.Method_arg_38 (CStr(Val(CStr())))
  loc_17537ED:             Else
  loc_175380F:               If (var_D4 = Ucase("ACNAME")) Then
  loc_1753818:                 var_278 = GRepFormName
  loc_1753823:                 If Not (var_278 = "CashBook") Then
  loc_175382E:                   If (var_278 = "BankBook") Then
  loc_1753831:                   End If
  loc_1753849:                   Set var_94 = CVar(CLng(4))(1)
  loc_175384F:                   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41("'")
  loc_175385A:                   var_A4 = CStr()
  loc_1753878:                   Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_1753880:                   Call 0.Method_arg_20 (var_130)
  loc_1753888:                   Call 0.Method_arg_38 (var_A4 & "'")
  loc_17538A5:                 Else
  loc_17538B5:                    = "'From A/C :               "(var_A4).Text
  loc_17538D8:                   Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_17538E0:                   Call 0.Method_arg_20 (var_130)
  loc_17538E8:                   Call 0.Method_arg_38 (var_A4 & "'")
  loc_17538FF:                 End If
  loc_1753902:               Else
  loc_1753924:                 If Not (var_D4 = Ucase("PARTYNAME")) Then
  loc_1753949:                   If (var_D4 = Ucase("FORPARTY")) Then
  loc_175394C:                   End If
  loc_1753956:                   Set var_94 = "'For A/c :               "(var_A4)
  loc_175395C:                    = var_94.Text
  loc_175397F:                   Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_1753987:                   Call 0.Method_arg_20 (var_130)
  loc_175398F:                   Call 0.Method_arg_38 (var_A4 & "'")
  loc_17539A9:                 Else
  loc_17539CB:                   If (var_D4 = Ucase("MyOpBal")) Then
  loc_17539E9:                     Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_17539F1:                     Call 0.Method_arg_20 (var_A0)
  loc_17539F9:                     Call 0.Method_arg_38 (CStr(global_132))
  loc_1753A0B:                   Else
  loc_1753A2D:                     If (var_D4 = Ucase("VRTOT")) Then
  loc_1753A48:                       Set var_94 = CVar(CLng(3))(1)
  loc_1753A4E:                       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41("'")
  loc_1753A77:                       Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_1753A7F:                       Call 0.Method_arg_20 (var_130)
  loc_1753A87:                       Call 0.Method_arg_38 (CStr() & "'")
  loc_1753AA4:                     Else
  loc_1753AC6:                       If (var_D4 = Ucase("VRWISETOT")) Then
  loc_1753AE1:                         Set var_94 = CVar(CLng(2))(1)
  loc_1753AE7:                         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41("'")
  loc_1753B10:                         Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_1753B18:                         Call 0.Method_arg_20 (var_130)
  loc_1753B20:                         Call 0.Method_arg_38 (CStr() & "'")
  loc_1753B3D:                       Else
  loc_1753B45:                         var_B4 = "BetweenDate"
  loc_1753B5F:                         If (var_D4 = Ucase(var_B4)) Then
  loc_1753B77:                           Set var_94 = CVar(CLng(0))(1)
  loc_1753B7D:                           Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41()
  loc_1753B89:                           var_178 = "'Upto Date :'+ '"
  loc_1753BD6:                           Call 0.Method_arg_90 (var_A0, CLng(var_86), var_130)
  loc_1753BDE:                           Call 0.Method_arg_20 (CStr(1 & Format(CVar(CStr(var_B4)), "dd/mmm/yyyy") & "'"), 1)
  loc_1753BE6:                           Call 0.Method_arg_38 ("'")
  loc_1753C09:                         Else
  loc_1753C2B:                           If (var_D4 = Ucase("ForParty")) Then
  loc_1753C3A:                             Set var_94 = var_A0(1)
  loc_1753C40:                             Call 0.Method_Proc_203_60_1754AC00 (var_E6)
  loc_1753C48:                              = var_A0.Value
  loc_1753C5E:                             If (CLng(var_E6) = 0) Then
  loc_1753CA6:                               Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_1753CAE:                               Call 0.Method_arg_20 (var_A0)
  loc_1753CB6:                               Call 0.Method_arg_38 (CStr(Trim(Left(CVar("'For Party :" & global_108), &HFF)) & "'"))
  loc_1753CD3:                             Else
  loc_1753CE6:                               Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_1753CEE:                               Call 0.Method_arg_20 (var_A0)
  loc_1753CF6:                               Call 0.Method_arg_38 ("'For Party :                           All'")
  loc_1753D02:                             End If
  loc_1753D05:                           Else
  loc_1753D27:                             If (var_D4 = Ucase("ForDrCr")) Then
  loc_1753D42:                               Set var_94 = CVar(CLng(2))(1)
  loc_1753D48:                               Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41("'For Dr/Cr :'+ '")
  loc_1753D53:                               var_A4 = CStr()
  loc_1753D71:                               Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_1753D79:                               Call 0.Method_arg_20 (var_130)
  loc_1753D81:                               Call 0.Method_arg_38 (var_A4 & "'")
  loc_1753D9B:                             End If
  loc_1753D9B:                           End If
  loc_1753D9B:                         End If
  loc_1753D9B:                       End If
  loc_1753D9B:                     End If
  loc_1753D9B:                   End If
  loc_1753D9B:                 End If
  loc_1753D9B:               End If
  loc_1753D9B:             End If
  loc_1753D9B:           End If
  loc_1753D9B:         End If
  loc_1753D9B:       End If
  loc_1753D9B:     End If
  loc_1753D9B:   End If
  loc_1753D9E: Next var_9C 'Integer
  loc_1753DA9: var_27C = GRepFormName
  loc_1753DB4: If (var_27C = "BudgetVariance") Then
  loc_1753DC8:   Call 0.Method_arg_90 (var_94, var_98)
  loc_1753DD0:   Call 0.Method_arg_24 (var_86)
  loc_1753DDC:   For var_280 =  To CInt(var_98): 1 = var_280 'Integer
  loc_1753DF5:     Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_1753DFD:     Call 0.Method_arg_20 (var_A0)
  loc_1753E05:     Call 0.Method_arg_30 (var_A4)
  loc_1753E4B:     If (Ucase(CVar(var_A4)) = Ucase("ForBudget")) Then
  loc_1753E5A:       Set var_94 = var_A0(1)
  loc_1753E60:       Call 0.Method_Proc_203_60_1754AC00 (var_E6)
  loc_1753E68:        = var_A0.Value
  loc_1753E7E:       If (CLng(var_E6) = 0) Then
  loc_1753E90:         var_B4 = CVar("'For Budget: " & global_108) 'String
  loc_1753E96:         var_C4 = Left(var_B4, &HFF)
  loc_1753EC6:         Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_1753ECE:         Call 0.Method_arg_20 (var_A0)
  loc_1753ED6:         Call 0.Method_arg_38 (CStr(Trim(var_C4) & "'"))
  loc_1753EF3:       Else
  loc_1753F06:         Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_1753F0E:         Call 0.Method_arg_20 (var_A0)
  loc_1753F16:         Call 0.Method_arg_38 ("'For Budget:All'")
  loc_1753F22:       End If
  loc_1753F22:     End If
  loc_1753F25:   Next var_280 'Integer
  loc_1753F2D: Else
  loc_1753F35:   If (var_27C = "Budget") Then
  loc_1753F4D:     Set var_94 = CVar(CLng(0))(2)
  loc_1753F53:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_41()
  loc_1753F73:     var_A4 = CStr(var_B4)
  loc_1753F77:     var_F0 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where CStr(FromDate) +'-'+ CStr(ToDate) in ('" & var_A4
  loc_1753F87:     unk_583395.Execute var_A4 & "') Order By B.BudgetDrAmt,B.BudgetCrAmt", var_C4, -1
  loc_1753F92:     Set var_90 = var_A0
  loc_1753FB2:     var_98 = var_90.RecordCount
  loc_1753FC0:     If (var_98 > 0) Then
  loc_1753FD2:       var_94 = var_90.Fields
  loc_1753FEE:       var_130 = var_90.Fields
  loc_1753FF6:       var_24C = var_130.Item("ToDate")
  loc_1754023:       var_292 = CByte(DateDiff("m", CVar(var_94.Item("FromDate")), CVar(var_24C), 1, 1)) 'Byte
  loc_1754042:       var_292 = CByte((CInt(var_292) + 1)) 'Byte
  loc_1754057:       Call 0.Method_arg_90 (var_94, var_98, var_86)
  loc_175405F:       Call 0.Method_arg_24 (1)
  loc_175406B:       For var_296 =  To CInt(var_98):   var_A0 = var_296 'Integer
  loc_1754084:         Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_175408C:         Call 0.Method_arg_20 (var_94.Item("FromDate"))
  loc_1754094:         Call 0.Method_arg_30 (var_A4)
  loc_17540AA:         var_2A8 = Ucase(CVar(var_A4)) 'Variant
  loc_17540DA:         If (var_2A8 = Ucase("Year1")) Then
  loc_1754146:           Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_175414E:           Call 0.Method_arg_20 (CStr(1 & Format(CVar(var_90.Fields.Item("FromDate")), "MMM/yy") & "'"), 1)
  loc_1754156:           Call 0.Method_arg_38 ("'")
  loc_1754177:         Else
  loc_1754199:           If (var_2A8 = Ucase("Year2")) Then
  loc_1754217:             Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_175421F:             Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(1), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1754227:             Call 0.Method_arg_38 ("'")
  loc_175424A:           Else
  loc_175426C:             If (var_2A8 = Ucase("Year3")) Then
  loc_17542EA:               Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_17542F2:               Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(2), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_17542FA:               Call 0.Method_arg_38 ("'")
  loc_175431D:             Else
  loc_175433F:               If (var_2A8 = Ucase("Year4")) Then
  loc_17543BD:                 Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_17543C5:                 Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(3), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_17543CD:                 Call 0.Method_arg_38 ("'")
  loc_17543F0:               Else
  loc_1754412:                 If (var_2A8 = Ucase("Year5")) Then
  loc_1754490:                   Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1754498:                   Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(4), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_17544A0:                   Call 0.Method_arg_38 ("'")
  loc_17544C3:                 Else
  loc_17544E5:                   If (var_2A8 = Ucase("Year6")) Then
  loc_1754563:                     Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_175456B:                     Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(5), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1754573:                     Call 0.Method_arg_38 ("'")
  loc_1754596:                   Else
  loc_17545B8:                     If (var_2A8 = Ucase("Year7")) Then
  loc_1754636:                       Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_175463E:                       Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(6), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1754646:                       Call 0.Method_arg_38 ("'")
  loc_1754669:                     Else
  loc_175468B:                       If (var_2A8 = Ucase("Year8")) Then
  loc_1754709:                         Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1754711:                         Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(7), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1754719:                         Call 0.Method_arg_38 ("'")
  loc_175473C:                       Else
  loc_175475E:                         If (var_2A8 = Ucase("Year9")) Then
  loc_17547DC:                           Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_17547E4:                           Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(8), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_17547EC:                           Call 0.Method_arg_38 ("'")
  loc_175480F:                         Else
  loc_1754831:                           If (var_2A8 = Ucase("Year10")) Then
  loc_17548AF:                             Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_17548B7:                             Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(9), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_17548BF:                             Call 0.Method_arg_38 ("'")
  loc_17548E2:                           Else
  loc_1754904:                             If (var_2A8 = Ucase("Year11")) Then
  loc_1754982:                               Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_175498A:                               Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(&HA), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1754992:                               Call 0.Method_arg_38 ("'")
  loc_17549B5:                             Else
  loc_17549D7:                               If (var_2A8 = Ucase("Year12")) Then
  loc_1754A41:                                 var_A4 = CStr(1 & Format(DateAdd("m", CDbl(&HB), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'")
  loc_1754A55:                                 Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1754A5D:                                 Call 0.Method_arg_20 (var_A4, 1)
  loc_1754A65:                                 Call 0.Method_arg_38 ("'")
  loc_1754A85:                               End If
  loc_1754A85:                             End If
  loc_1754A85:                           End If
  loc_1754A85:                         End If
  loc_1754A85:                       End If
  loc_1754A85:                     End If
  loc_1754A85:                   End If
  loc_1754A85:                 End If
  loc_1754A85:               End If
  loc_1754A85:             End If
  loc_1754A85:           End If
  loc_1754A85:         End If
  loc_1754A88:       Next var_296 'Integer
  loc_1754A8D:     End If
  loc_1754A8D:   End If
  loc_1754A8D: End If
  loc_1754A92: Set var_90 = Nothing
  loc_1754A95: Exit Sub
  loc_1754A96: ' Referenced from: 1752D98
  loc_1754A9C: Call 0.Method_arg_50 (var_A4)
  loc_1754AA4: var_124 = "Formulas"
  loc_1754AB1: Proc_183_57_104B0BC(var_A4)
  loc_1754ABD: Exit Sub
End Sub

Public Sub Proc_203_61_195FD34
  'Data Table: 583348
  Dim var_A8 As String
  Dim var_AC As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Long
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_12C As Variant
  Dim var_140 As DataGrid
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_154 As String
  Dim var_158 As String
  loc_195D028: On Error Goto loc_195FD09
  loc_195D039: var_A0 = " Where (ACGROUP.LOGSITE_CODE='" & MemVar_1F95078 & "' OR ACGROUP.LOGSITE_CODE='HO')"
  loc_195D04D: var_A4 = " And (ACGROUP.LOGSITE_CODE='" & MemVar_1F95078 & "' OR ACGROUP.LOGSITE_CODE='HO')"
  loc_195D061: var_90 = " Where (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_195D075: var_94 = " And (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_195D089: var_98 = " Where (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F95078 & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_195D09D: var_9C = " And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F95078 & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_195D0AF: (0).Visible = 
  loc_195D0BD: var_B0 = GRepFormName
  loc_195D0C8: If Not (var_B0 = "Led") Then
  loc_195D0D3:   If Not (var_B0 = "LedInt") Then
  loc_195D0DE:     If Not (var_B0 = "LedDeb") Then
  loc_195D0E9:       If Not (var_B0 = "MemLed") Then
  loc_195D0F4:         If Not (var_B0 = "LedCred") Then
  loc_195D0FF:           If (var_B0 = "AcCheckList") Then
  loc_195D102:           End If
  loc_195D102:         End If
  loc_195D102:       End If
  loc_195D102:     End If
  loc_195D102:   End If
  loc_195D10E:   (&HFF).Visible = 
  loc_195D119:   var_88 = vbNullString
  loc_195D122:   var_B4 = GRepFormName
  loc_195D12D:   If Not (var_B4 = "LedDeb") Then
  loc_195D138:     If (var_B4 = "MemLed") Then
  loc_195D13B:     End If
  loc_195D142:     var_88 = " WHERE SubGroup.Nature='Customer' AND A.Nature='Customer'" & var_94
  loc_195D14C:     var_8C = " WHERE ViewSubgroup.Nature='Customer' " & var_9C
  loc_195D152:   Else
  loc_195D15A:     If (var_B4 = "LedCred") Then
  loc_195D164:       var_88 = " WHERE SubGroup.Nature='Supplier' AND A.Nature='Supplier'" & var_94
  loc_195D16E:       var_8C = " WHERE ViewSubgroup.Nature='Supplier' " & var_9C
  loc_195D174:     Else
  loc_195D177:       var_88 = var_90
  loc_195D17D:       var_8C = var_98
  loc_195D180:     End If
  loc_195D180:   End If
  loc_195D184:   Set var_B8 = ()
  loc_195D18A:   var_C8 = CVar(CLng(0)) 'Long
  loc_195D18F:   var_E8 = 0
  loc_195D198:   var_108 = "From Date           "
  loc_195D1A1:   LateIdCallSt
  loc_195D1AC:   var_C8 = CVar(CLng(0)) 'Long
  loc_195D1B1:   var_E8 = &H10E
  loc_195D1BD:   LateIdCallSt
  loc_195D1C8:   var_C8 = CVar(CLng(1)) 'Long
  loc_195D1CD:   var_E8 = 0
  loc_195D1D6:   var_108 = "To Date             "
  loc_195D1DF:   LateIdCallSt
  loc_195D1EA:   var_C8 = CVar(CLng(1)) 'Long
  loc_195D1EF:   var_E8 = &H10E
  loc_195D1FB:   LateIdCallSt
  loc_195D206:   var_C8 = CVar(CLng(2)) 'Long
  loc_195D20B:   var_E8 = 0
  loc_195D214:   var_108 = "Account Selection   "
  loc_195D21D:   LateIdCallSt
  loc_195D228:   var_C8 = CVar(CLng(2)) 'Long
  loc_195D22D:   var_E8 = &H10E
  loc_195D239:   LateIdCallSt
  loc_195D244:   var_C8 = CVar(CLng(3)) 'Long
  loc_195D249:   var_E8 = 0
  loc_195D252:   var_108 = "Form Account        "
  loc_195D25B:   LateIdCallSt
  loc_195D266:   var_C8 = CVar(CLng(3)) 'Long
  loc_195D26B:   var_E8 = 0
  loc_195D277:   LateIdCallSt
  loc_195D282:   var_C8 = CVar(CLng(4)) 'Long
  loc_195D287:   var_E8 = 0
  loc_195D290:   var_108 = "To Account          "
  loc_195D299:   LateIdCallSt
  loc_195D2A4:   var_C8 = CVar(CLng(4)) 'Long
  loc_195D2A9:   var_E8 = 0
  loc_195D2B5:   LateIdCallSt
  loc_195D2C0:   var_C8 = CVar(CLng(5)) 'Long
  loc_195D2C5:   var_E8 = 0
  loc_195D2CE:   var_108 = "To Account          "
  loc_195D2D7:   LateIdCallSt
  loc_195D2E2:   var_C8 = CVar(CLng(5)) 'Long
  loc_195D2E7:   var_E8 = 0
  loc_195D2F3:   LateIdCallSt
  loc_195D2FE:   var_C8 = CVar(CLng(0)) 'Long
  loc_195D303:   var_E8 = 1
  loc_195D311:   var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_195D318:   LateIdCallSt
  loc_195D326:   var_C8 = CVar(CLng(1)) 'Long
  loc_195D32B:   var_E8 = 1
  loc_195D339:   var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_195D340:   LateIdCallSt
  loc_195D34E:   var_C8 = CVar(CLng(2)) 'Long
  loc_195D353:   var_E8 = 1
  loc_195D365:   LateIdCallSt
  loc_195D36F:   Set var_B8 = Nothing 
  loc_195D37D:   Set var_AC = var_B8(10)
  loc_195D394:   DGSite.DispID_FFFFFE00.ColumnLabelCount = "Selected"
  loc_195D3AA:   global_142 = CInt(0)
  loc_195D3BD:   Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195D3F7:   Set var_AC = 0(&H7D0)
  loc_195D3FD:   LateIdCallSt
  loc_195D41E:   Set var_AC = 1(&H1388)
  loc_195D424:   LateIdCallSt
  loc_195D42F:   var_C8 = 0
  loc_195D44E:   var_E8 = 1
  loc_195D45B:   Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195D475:   var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195D484:   1("Selected").Width = CInt(2)
  loc_195D4A3:   var_128 = var_E8(DGSite.DispID_A).Width
  loc_195D4B2:   Call 0.Method_Me0 (var_144, var_128, var_C8, var_B8, var_128)
  loc_195D4C4:   var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195D4D3:   var_E8(var_C8).Left = var_C8
  loc_195D4EE:   Set var_AC = var_B8(CVar(CDbl(&H4B)))
  loc_195D4F4:   var_AC.Top = var_128
  loc_195D518:   Me.var_AC.CursorLocation = 3
  loc_195D53B:   var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE " & var_88
  loc_195D54C:   Me.Open CVar(" And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F95078 & " order by SubGroup.Name"), CVar(MemVar_1F951E0), 0
  loc_195D560:   CVarUnk
  loc_195D565:   VerifyVarObj
  loc_195D56B:   Set var_AC = 1(New)
  loc_195D571:   LateIdStAd
  loc_195D588:   var_144 = Me.RecordCount
  loc_195D596:   If (var_144 > 0) Then
  loc_195D59C:     var_D8 = CVar(CLng(3)) 'Long
  loc_195D5E0:     Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_195D5E6:     LateIdCallSt
  loc_195D601:     var_D8 = CVar(CLng(3)) 'Long
  loc_195D645:     Set var_140 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_195D64B:     LateIdCallSt
  loc_195D666:     var_D8 = CVar(CLng(4)) 'Long
  loc_195D6AA:     Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_195D6B0:     LateIdCallSt
  loc_195D6CB:     var_D8 = CVar(CLng(4)) 'Long
  loc_195D6F6:     var_12C = Me.Fields.Item("Code")
  loc_195D70F:     Set var_140 = 2(CVar(CStr(var_12C.Value)))
  loc_195D715:     LateIdCallSt
  loc_195D72D:   End If
  loc_195D749:   Me.CursorLocation = 3
  loc_195D760:   var_D8 = CVar(MemVar_1F951E0) 'Address
  loc_195D771:   Me.Open "Select GROUPCODE AS Code,GROUPNAME AS NAME From AcGroup WHERE AliasYN<> 'Y' order by GroupName", var_D8, 0
  loc_195D77F:   CVarUnk
  loc_195D784:   VerifyVarObj
  loc_195D78A:   Set var_AC = 1(New)
  loc_195D790:   LateIdStAd
  loc_195D7A5:   var_A8 = "SELECT '' as O,NAME as Account,SUBCODE as AccId,GNAME AS GroupName,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS Address From ViewSubgroup " & var_8C
  loc_195D7B5:   Call Proc_203_58_11EA690(1, " And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F95078 & " order by name")
  loc_195D7CF:   Call Proc_203_58_11EA690(2, "SELECT '' as O,GroupName,GroupCode as Code from AcGroup Order by GroupName")
  loc_195D7EA:   var_AC(CVar(CDbl(1500))).Height = -1
  loc_195D800:   Set var_AC = var_12C(2)
  loc_195D806:   Call 0.Method_Proc_203_61_195FD340 (False, var_140, var_D8, var_140, var_D8, var_140)
  loc_195D80E:   var_12C.Visible = var_D8
  loc_195D82B:   Call 0.Method_Proc_203_61_195FD340 (0, var_140, var_D8)
  loc_195D833:   var_12C.Visible = var_12C(2)
  loc_195D84A:   If (GRepFormName = "AcCheckList") Then
  loc_195D85B:     Call Proc_203_58_11EA690(3, "SELECT DISTINCT '' as O,Description AS VrType,V_TYPE as Code from Voucher_type Order by Description")
  loc_195D863:   End If
  loc_195D866: Else
  loc_195D86E:   If (var_B0 = "Annexure") Then
  loc_195D875:     Set var_150 = (-1)
  loc_195D87B:     var_C8 = CVar(CLng(0)) 'Long
  loc_195D880:     var_E8 = 0
  loc_195D889:     var_108 = "From Date        "
  loc_195D892:     LateIdCallSt
  loc_195D89D:     var_C8 = CVar(CLng(0)) 'Long
  loc_195D8A2:     var_E8 = &H10E
  loc_195D8AE:     LateIdCallSt
  loc_195D8B9:     var_C8 = CVar(CLng(1)) 'Long
  loc_195D8BE:     var_E8 = 0
  loc_195D8C7:     var_108 = "UpTo Date        "
  loc_195D8D0:     LateIdCallSt
  loc_195D8DB:     var_C8 = CVar(CLng(1)) 'Long
  loc_195D8E0:     var_E8 = &H10E
  loc_195D8EC:     LateIdCallSt
  loc_195D8F7:     var_C8 = CVar(CLng(2)) 'Long
  loc_195D8FC:     var_E8 = 0
  loc_195D905:     var_108 = "For Account      "
  loc_195D90E:     LateIdCallSt
  loc_195D919:     var_C8 = CVar(CLng(2)) 'Long
  loc_195D91E:     var_E8 = &H10E
  loc_195D92A:     LateIdCallSt
  loc_195D935:     var_C8 = CVar(CLng(3)) 'Long
  loc_195D93A:     var_E8 = 0
  loc_195D943:     var_108 = "Amount Slab Wise "
  loc_195D94C:     LateIdCallSt
  loc_195D957:     var_C8 = CVar(CLng(3)) 'Long
  loc_195D95C:     var_E8 = &H10E
  loc_195D968:     LateIdCallSt
  loc_195D973:     var_C8 = CVar(CLng(0)) 'Long
  loc_195D978:     var_E8 = 1
  loc_195D986:     var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_195D98D:     LateIdCallSt
  loc_195D99B:     var_C8 = CVar(CLng(1)) 'Long
  loc_195D9A0:     var_E8 = 1
  loc_195D9AE:     var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_195D9B5:     LateIdCallSt
  loc_195D9C3:     var_C8 = CVar(CLng(3)) 'Long
  loc_195D9C8:     var_E8 = 1
  loc_195D9D1:     var_108 = "No"
  loc_195D9DA:     LateIdCallSt
  loc_195D9E4:     Set var_150 = Nothing 
  loc_195D9EF:     global_142 = CInt(0)
  loc_195DA02:     Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195DA3C:     Set var_AC = 0(&H7D0)
  loc_195DA42:     LateIdCallSt
  loc_195DA63:     Set var_AC = 1(&HDAC)
  loc_195DA69:     LateIdCallSt
  loc_195DA74:     var_C8 = 0
  loc_195DA93:     var_E8 = 1
  loc_195DAA0:     Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195DABA:     var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195DAC9:     1(var_108).Width = CInt(3)
  loc_195DAE8:     var_128 = var_150(DGSite.DispID_A).Width
  loc_195DAF7:     Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_195DB09:     var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195DB18:     var_150(var_C8).Left = var_128
  loc_195DB2A:     var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_195DB33:     Set var_AC = var_E8(var_C8)
  loc_195DB39:     var_AC.Top = var_C8
  loc_195DB5D:     Me.var_AC.CursorLocation = 3
  loc_195DB87:     var_128 = CVar("Select GROUPCODE AS Code,GROUPNAME AS NAME From AcGroup WHERE AliasYN<> 'Y' " & var_A4 & " order by GroupName") 'String
  loc_195DB91:     Me.Open var_128, CVar(MemVar_1F951E0), 0
  loc_195DBA5:     CVarUnk
  loc_195DBAA:     VerifyVarObj
  loc_195DBB0:     Set var_AC = 1(New)
  loc_195DBB6:     LateIdStAd
  loc_195DBCD:     var_144 = Me.RecordCount
  loc_195DBDB:     If (var_144 > 0) Then
  loc_195DBE1:       var_D8 = CVar(CLng(2)) 'Long
  loc_195DC25:       Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_195DC2B:       LateIdCallSt
  loc_195DC46:       var_D8 = CVar(CLng(2)) 'Long
  loc_195DC8A:       Set var_140 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_195DC90:       LateIdCallSt
  loc_195DCC0:       Set var_AC = CVar(CLng(2))(2)
  loc_195DCE3:       var_158 = "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP where GROUPCODE='" & CStr(DGSite.DispID_41) & "' " & var_94
  loc_195DCF3:       Call Proc_203_58_11EA690(1, var_158 & " Order by Name")
  loc_195DD0B:     End If
  loc_195DD0E:   Else
  loc_195DD16:     If (var_B0 = "DetailedTrial") Then
  loc_195DD1D:       Set var_160 = var_D8(var_140)
  loc_195DD23:       var_C8 = CVar(CLng(0)) 'Long
  loc_195DD28:       var_E8 = 0
  loc_195DD31:       var_108 = "From Date      "
  loc_195DD3A:       LateIdCallSt
  loc_195DD45:       var_C8 = CVar(CLng(0)) 'Long
  loc_195DD4A:       var_E8 = &H10E
  loc_195DD56:       LateIdCallSt
  loc_195DD61:       var_C8 = CVar(CLng(1)) 'Long
  loc_195DD66:       var_E8 = 0
  loc_195DD6F:       var_108 = "UpTo Date      "
  loc_195DD78:       LateIdCallSt
  loc_195DD83:       var_C8 = CVar(CLng(1)) 'Long
  loc_195DD88:       var_E8 = &H10E
  loc_195DD94:       LateIdCallSt
  loc_195DD9F:       var_C8 = CVar(CLng(0)) 'Long
  loc_195DDA4:       var_E8 = 1
  loc_195DDB2:       var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_195DDB9:       LateIdCallSt
  loc_195DDC7:       var_C8 = CVar(CLng(1)) 'Long
  loc_195DDCC:       var_E8 = 1
  loc_195DDDA:       var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_195DDE1:       LateIdCallSt
  loc_195DDEF:       var_C8 = CVar(CLng(2)) 'Long
  loc_195DDF4:       var_E8 = 0
  loc_195DDFD:       var_108 = "With Op.Bal.   "
  loc_195DE06:       LateIdCallSt
  loc_195DE11:       var_C8 = CVar(CLng(2)) 'Long
  loc_195DE16:       var_E8 = &H10E
  loc_195DE22:       LateIdCallSt
  loc_195DE2D:       var_C8 = CVar(CLng(2)) 'Long
  loc_195DE32:       var_E8 = 1
  loc_195DE3B:       var_108 = "Yes"
  loc_195DE44:       LateIdCallSt
  loc_195DE4F:       var_C8 = CVar(CLng(3)) 'Long
  loc_195DE54:       var_E8 = 0
  loc_195DE5D:       var_108 = "Datailed       "
  loc_195DE66:       LateIdCallSt
  loc_195DE71:       var_C8 = CVar(CLng(3)) 'Long
  loc_195DE76:       var_E8 = &H10E
  loc_195DE82:       LateIdCallSt
  loc_195DE8D:       var_C8 = CVar(CLng(3)) 'Long
  loc_195DE92:       var_E8 = 1
  loc_195DE9B:       var_108 = "Yes"
  loc_195DEA4:       LateIdCallSt
  loc_195DEAE:       Set var_160 = Nothing 
  loc_195DEB9:       global_142 = CInt(0)
  loc_195DECC:       Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195DF06:       Set var_AC = 0(&H5DC)
  loc_195DF0C:       LateIdCallSt
  loc_195DF2D:       Set var_AC = 1(&H5DC)
  loc_195DF33:       LateIdCallSt
  loc_195DF3E:       var_C8 = 0
  loc_195DF5D:       var_E8 = 1
  loc_195DF6A:       Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195DF84:       var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195DF93:       0(var_108).Width = CInt(3)
  loc_195DFB2:       var_128 = var_160(DGSite.DispID_A).Width
  loc_195DFC1:       Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_195DFD3:       var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195DFE2:       var_160(var_C8).Left = var_E8
  loc_195E003:       CVar(CDbl(&H4B))(CVar(CDbl(&H4B))).Top = var_160
  loc_195E00E:     Else
  loc_195E016:       If (var_B0 = "DayBook") Then
  loc_195E01D:         Set var_164 = ()
  loc_195E023:         var_C8 = CVar(CLng(0)) 'Long
  loc_195E028:         var_E8 = 0
  loc_195E031:         var_108 = "From Date         "
  loc_195E03A:         LateIdCallSt
  loc_195E045:         var_C8 = CVar(CLng(0)) 'Long
  loc_195E04A:         var_E8 = &H10E
  loc_195E056:         LateIdCallSt
  loc_195E061:         var_C8 = CVar(CLng(1)) 'Long
  loc_195E066:         var_E8 = 0
  loc_195E06F:         var_108 = "UpTo Date         "
  loc_195E078:         LateIdCallSt
  loc_195E083:         var_C8 = CVar(CLng(1)) 'Long
  loc_195E088:         var_E8 = &H10E
  loc_195E094:         LateIdCallSt
  loc_195E09F:         var_C8 = CVar(CLng(2)) 'Long
  loc_195E0A4:         var_E8 = 0
  loc_195E0AD:         var_108 = "Voucher Wise Total"
  loc_195E0B6:         LateIdCallSt
  loc_195E0C1:         var_C8 = CVar(CLng(2)) 'Long
  loc_195E0C6:         var_E8 = &H10E
  loc_195E0D2:         LateIdCallSt
  loc_195E0DD:         var_C8 = CVar(CLng(0)) 'Long
  loc_195E0E2:         var_E8 = 1
  loc_195E0F0:         var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_195E0F7:         LateIdCallSt
  loc_195E105:         var_C8 = CVar(CLng(1)) 'Long
  loc_195E10A:         var_E8 = 1
  loc_195E118:         var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_195E11F:         LateIdCallSt
  loc_195E12D:         var_C8 = CVar(CLng(2)) 'Long
  loc_195E132:         var_E8 = 1
  loc_195E13B:         var_108 = "No"
  loc_195E144:         LateIdCallSt
  loc_195E14E:         Set var_164 = Nothing 
  loc_195E168:         Set var_AC = 0(&H9C4)
  loc_195E16E:         LateIdCallSt
  loc_195E18F:         Set var_AC = 1(&H5DC)
  loc_195E195:         LateIdCallSt
  loc_195E1A0:         var_C8 = 0
  loc_195E1BF:         var_E8 = 1
  loc_195E1CC:         Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195E1E6:         var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195E1F5:         var_164(var_108).Width = var_108
  loc_195E214:         var_128 = var_C8(var_E8).Width
  loc_195E223:         Call 0.Method_Me0 (var_144, var_128, var_164, var_128, var_E8)
  loc_195E235:         var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195E244:         var_C8(var_C8).Left = var_164
  loc_195E265:         var_128(CVar(CDbl(&H4B))).Top = var_E8
  loc_195E270:         var_C8 = CVar(CLng(3)) 'Long
  loc_195E288:         Set var_AC = 0("For Site")
  loc_195E28E:         LateIdCallSt
  loc_195E2AE:         Set var_AC = CVar(CLng(3))(&H10E)
  loc_195E2B4:         LateIdCallSt
  loc_195E2C2:         var_C8 = CVar(CLng(3)) 'Long
  loc_195E2DA:         Set var_AC = 1(vbNullString)
  loc_195E2E0:         LateIdCallSt
  loc_195E2F5:         Set global_80 = New 
  loc_195E307:         Me.Recordset15.CursorLocation = 3
  loc_195E32F:         Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F951E0), 0
  loc_195E33D:         CVarUnk
  loc_195E342:         VerifyVarObj
  loc_195E348:         Set var_AC = Me.DGSite
  loc_195E34E:         LateIdStAd
  loc_195E363:         global_142 = CInt(0)
  loc_195E376:         Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195E38B:         global_140 = CInt(3)
  loc_195E396:         global_144 = 0
  loc_195E39D:       Else
  loc_195E3A5:         If Not (var_B0 = "CashBook") Then
  loc_195E3B0:           If Not (var_B0 = "BankBook") Then
  loc_195E3BB:             If (var_B0 = "RozNamcha") Then
  loc_195E3BE:             End If
  loc_195E3BE:           End If
  loc_195E3C1:           var_88 = vbNullString
  loc_195E3CA:           var_168 = GRepFormName
  loc_195E3D5:           If Not (var_168 = "CashBook") Then
  loc_195E3E0:             If (var_168 = "RozNamcha") Then
  loc_195E3E3:             End If
  loc_195E3EA:             var_88 = " WHERE SubGroup.Nature='Cash' AND A.Nature='Cash'" & var_94
  loc_195E3F0:           Else
  loc_195E3F8:             If (var_168 = "BankBook") Then
  loc_195E402:               var_88 = " WHERE SubGroup.Nature='Bank' AND A.Nature='Bank'" & var_94
  loc_195E405:             End If
  loc_195E405:           End If
  loc_195E409:           Set var_16C = global_140(global_144)
  loc_195E40F:           var_C8 = CVar(CLng(0)) 'Long
  loc_195E414:           var_E8 = 0
  loc_195E41D:           var_108 = "From Date        "
  loc_195E426:           LateIdCallSt
  loc_195E431:           var_C8 = CVar(CLng(0)) 'Long
  loc_195E436:           var_E8 = &H10E
  loc_195E442:           LateIdCallSt
  loc_195E44D:           var_C8 = CVar(CLng(1)) 'Long
  loc_195E452:           var_E8 = 0
  loc_195E45B:           var_108 = "UpTo Date        "
  loc_195E464:           LateIdCallSt
  loc_195E46F:           var_C8 = CVar(CLng(1)) 'Long
  loc_195E474:           var_E8 = &H10E
  loc_195E480:           LateIdCallSt
  loc_195E48B:           var_C8 = CVar(CLng(2)) 'Long
  loc_195E490:           var_E8 = 0
  loc_195E499:           var_108 = "As Per Detail    "
  loc_195E4A2:           LateIdCallSt
  loc_195E4AD:           var_C8 = CVar(CLng(2)) 'Long
  loc_195E4B2:           var_E8 = &H10E
  loc_195E4BE:           LateIdCallSt
  loc_195E4C9:           var_C8 = CVar(CLng(3)) 'Long
  loc_195E4CE:           var_E8 = 0
  loc_195E4D7:           var_108 = "Starting Page No."
  loc_195E4E0:           LateIdCallSt
  loc_195E4EB:           var_C8 = CVar(CLng(3)) 'Long
  loc_195E4F0:           var_E8 = &H10E
  loc_195E4FC:           LateIdCallSt
  loc_195E507:           var_C8 = CVar(CLng(4)) 'Long
  loc_195E50C:           var_E8 = 0
  loc_195E515:           var_108 = "For Account      "
  loc_195E51E:           LateIdCallSt
  loc_195E529:           var_C8 = CVar(CLng(4)) 'Long
  loc_195E52E:           var_E8 = &H10E
  loc_195E53A:           LateIdCallSt
  loc_195E545:           var_C8 = CVar(CLng(0)) 'Long
  loc_195E54A:           var_E8 = 1
  loc_195E558:           var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_195E55F:           LateIdCallSt
  loc_195E56D:           var_C8 = CVar(CLng(1)) 'Long
  loc_195E572:           var_E8 = 1
  loc_195E580:           var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_195E587:           LateIdCallSt
  loc_195E595:           var_C8 = CVar(CLng(2)) 'Long
  loc_195E59A:           var_E8 = 1
  loc_195E5A3:           var_108 = "No"
  loc_195E5AC:           LateIdCallSt
  loc_195E5B7:           var_C8 = CVar(CLng(3)) 'Long
  loc_195E5BC:           var_E8 = 1
  loc_195E5C5:           var_108 = "1"
  loc_195E5CE:           LateIdCallSt
  loc_195E5D9:           var_C8 = CVar(CLng(4)) 'Long
  loc_195E5DE:           var_E8 = 1
  loc_195E5E7:           var_108 = vbNullString
  loc_195E5F0:           LateIdCallSt
  loc_195E5FA:           Set var_16C = Nothing 
  loc_195E605:           global_142 = CInt(0)
  loc_195E618:           Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195E652:           Set var_AC = 0(&H7D0)
  loc_195E658:           LateIdCallSt
  loc_195E679:           Set var_AC = 1(&HDAC)
  loc_195E67F:           LateIdCallSt
  loc_195E68A:           var_C8 = 0
  loc_195E6A9:           var_E8 = 1
  loc_195E6B6:           Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195E6D0:           var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195E6DF:           0(var_108).Width = CInt(4)
  loc_195E6FE:           var_128 = var_16C(DGSite.DispID_A).Width
  loc_195E70D:           Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_195E71F:           var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195E72E:           var_16C(var_C8).Left = var_108
  loc_195E740:           var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_195E749:           Set var_AC = var_E8(var_C8)
  loc_195E74F:           var_AC.Top = var_C8
  loc_195E773:           Me.var_AC.CursorLocation = 3
  loc_195E796:           var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE " & var_88
  loc_195E7A7:           Me.Open CVar(CStr(DGSite.DispID_41) & " order by SubGroup.Name"), CVar(MemVar_1F951E0), 0
  loc_195E7BB:           CVarUnk
  loc_195E7C0:           VerifyVarObj
  loc_195E7C6:           Set var_AC = 1(New)
  loc_195E7CC:           LateIdStAd
  loc_195E7DD:         Else
  loc_195E7E5:           If Not (var_B0 = "JournalBook") Then
  loc_195E7F0:             If Not (var_B0 = "DailySumm") Then
  loc_195E7FB:               If Not (var_B0 = "Clg") Then
  loc_195E806:                 If Not (var_B0 = "ClgNot") Then
  loc_195E811:                   If (var_B0 = "JournalBookLog") Then
  loc_195E814:                   End If
  loc_195E814:                 End If
  loc_195E814:               End If
  loc_195E814:             End If
  loc_195E818:             Set var_170 = -1(var_AC)
  loc_195E81E:             var_C8 = CVar(CLng(0)) 'Long
  loc_195E823:             var_E8 = 0
  loc_195E82C:             var_108 = "From Date   "
  loc_195E835:             LateIdCallSt
  loc_195E840:             var_C8 = CVar(CLng(0)) 'Long
  loc_195E845:             var_E8 = &H10E
  loc_195E851:             LateIdCallSt
  loc_195E85C:             var_C8 = CVar(CLng(1)) 'Long
  loc_195E861:             var_E8 = 0
  loc_195E86A:             var_108 = "UpTo Date   "
  loc_195E873:             LateIdCallSt
  loc_195E87E:             var_C8 = CVar(CLng(1)) 'Long
  loc_195E883:             var_E8 = &H10E
  loc_195E88F:             LateIdCallSt
  loc_195E89A:             var_C8 = CVar(CLng(0)) 'Long
  loc_195E89F:             var_E8 = 1
  loc_195E8AD:             var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_195E8B4:             LateIdCallSt
  loc_195E8C2:             var_C8 = CVar(CLng(1)) 'Long
  loc_195E8C7:             var_E8 = 1
  loc_195E8D5:             var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_195E8DC:             LateIdCallSt
  loc_195E8EA:             var_C8 = CVar(CLng(2)) 'Long
  loc_195E8EF:             var_E8 = 1
  loc_195E8F8:             var_108 = vbNullString
  loc_195E901:             LateIdCallSt
  loc_195E90B:             Set var_170 = Nothing 
  loc_195E916:             global_142 = CInt(0)
  loc_195E929:             Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195E963:             Set var_AC = 0(&H6A4)
  loc_195E969:             LateIdCallSt
  loc_195E98A:             Set var_AC = 1(&H9C4)
  loc_195E990:             LateIdCallSt
  loc_195E99B:             var_C8 = 0
  loc_195E9BA:             var_E8 = 1
  loc_195E9C7:             Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195E9E1:             var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195E9F0:             0(var_108).Width = CInt(2)
  loc_195EA0F:             var_128 = var_170(DGSite.DispID_A).Width
  loc_195EA1E:             Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_195EA30:             var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195EA3F:             var_170(var_C8).Left = var_128
  loc_195EA51:             var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_195EA60:             var_E8(var_C8).Top = var_C8
  loc_195EA6E:             var_174 = GRepFormName
  loc_195EA79:             If Not (var_174 = "JournalBook") Then
  loc_195EA84:               If (var_174 = "JournalBookLog") Then
  loc_195EA87:               End If
  loc_195EAA3:               Me.CursorLocation = 3
  loc_195EAAB:               var_C8 = CVar(CLng(2)) 'Long
  loc_195EAC3:               Set var_AC = 0("Voucher Type")
  loc_195EAC9:               LateIdCallSt
  loc_195EAE9:               Set var_AC = CVar(CLng(2))(&H10E)
  loc_195EAEF:               LateIdCallSt
  loc_195EAFD:               var_C8 = CVar(CLng(3)) 'Long
  loc_195EB15:               Set var_AC = 0("Day Total")
  loc_195EB1B:               LateIdCallSt
  loc_195EB3B:               Set var_AC = CVar(CLng(3))(&H10E)
  loc_195EB41:               LateIdCallSt
  loc_195EB4F:               var_C8 = CVar(CLng(3)) 'Long
  loc_195EB67:               Set var_AC = 1("No")
  loc_195EB6D:               LateIdCallSt
  loc_195EB7F:               global_142 = CInt(0)
  loc_195EB92:               Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195EBA7:               global_140 = CInt(3)
  loc_195EBB2:               global_144 = 0
  loc_195EBCD:               var_C8 = "Select DISTINCT V_TYPE AS Code,RTRIM(LTRIM(Description))+' Book' AS Name from Voucher_type WHERE Category='FA' AND V_TYPE<>'F_AO' order by RTRIM(LTRIM(Description))+' Book'"
  loc_195EBD9:               Me.Open 0, CVar(MemVar_1F951E0), 0
  loc_195EBE7:               CVarUnk
  loc_195EBEC:               VerifyVarObj
  loc_195EBF2:               Set var_AC = 1(New)
  loc_195EBF8:               LateIdStAd
  loc_195EC09:               var_C8 = CVar(CLng(4)) 'Long
  loc_195EC21:               Set var_AC = 0("For Site")
  loc_195EC27:               LateIdCallSt
  loc_195EC47:               Set var_AC = CVar(CLng(4))(&H10E)
  loc_195EC4D:               LateIdCallSt
  loc_195EC5B:               var_C8 = CVar(CLng(4)) 'Long
  loc_195EC73:               Set var_AC = 1(vbNullString)
  loc_195EC79:               LateIdCallSt
  loc_195EC8E:               Set global_80 = New 
  loc_195ECA0:               Me.Recordset15.CursorLocation = 3
  loc_195ECC8:               Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F951E0), 0
  loc_195ECD6:               CVarUnk
  loc_195ECDB:               VerifyVarObj
  loc_195ECE1:               Set var_AC = Me.DGSite
  loc_195ECE7:               LateIdStAd
  loc_195ECFC:               global_142 = CInt(0)
  loc_195ED0F:               Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195ED24:               global_140 = CInt(4)
  loc_195ED2F:               global_144 = 0
  loc_195ED36:             Else
  loc_195ED3E:               If (var_174 = "DailySumm") Then
  loc_195ED5D:                 Me.Recordset15.CursorLocation = 3
  loc_195ED65:                 var_C8 = CVar(CLng(2)) 'Long
  loc_195ED7D:                 Set var_AC = 0("For Account")
  loc_195ED83:                 LateIdCallSt
  loc_195EDA3:                 Set var_AC = CVar(CLng(2))(&H10E)
  loc_195EDA9:                 LateIdCallSt
  loc_195EDD2:                 var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE " & var_90
  loc_195EDE3:                 Me.Open CVar(CStr(DGSite.DispID_41) & " order by SubGroup.Name"), CVar(MemVar_1F951E0), 0
  loc_195EDF7:                 CVarUnk
  loc_195EDFC:                 VerifyVarObj
  loc_195EE02:                 Set var_AC = 1(New)
  loc_195EE08:                 LateIdStAd
  loc_195EE19:               Else
  loc_195EE21:                 If Not (var_174 = "Clg") Then
  loc_195EE2C:                   If (var_174 = "ClgNot") Then
  loc_195EE2F:                   End If
  loc_195EE4B:                   Me.CursorLocation = 3
  loc_195EE53:                   var_C8 = CVar(CLng(2)) 'Long
  loc_195EE6B:                   Set var_AC = 0("For Account")
  loc_195EE71:                   LateIdCallSt
  loc_195EE91:                   Set var_AC = CVar(CLng(2))(&H10E)
  loc_195EE97:                   LateIdCallSt
  loc_195EEC0:                   var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE Where SubGroup.nature='Bank' AND A.nature='Bank'  " & var_94
  loc_195EED1:                   Me.Open CVar(CStr(DGSite.DispID_41) & " order by SubGroup.Name"), CVar(MemVar_1F951E0), 0
  loc_195EEE5:                   CVarUnk
  loc_195EEEA:                   VerifyVarObj
  loc_195EEF0:                   Set var_AC = 1(New)
  loc_195EEF6:                   LateIdStAd
  loc_195EF04:                 End If
  loc_195EF04:               End If
  loc_195EF04:             End If
  loc_195EF07:           Else
  loc_195EF0F:             If (var_B0 = "BankReg") Then
  loc_195EF16:               Set var_178 = -1(var_AC)
  loc_195EF1C:               var_C8 = CVar(CLng(0)) 'Long
  loc_195EF21:               var_E8 = 0
  loc_195EF2A:               var_108 = "From Date"
  loc_195EF33:               LateIdCallSt
  loc_195EF3E:               var_C8 = CVar(CLng(0)) 'Long
  loc_195EF43:               var_E8 = &H10E
  loc_195EF4F:               LateIdCallSt
  loc_195EF5A:               var_C8 = CVar(CLng(1)) 'Long
  loc_195EF5F:               var_E8 = 0
  loc_195EF68:               var_108 = "To Date  "
  loc_195EF71:               LateIdCallSt
  loc_195EF7C:               var_C8 = CVar(CLng(1)) 'Long
  loc_195EF81:               var_E8 = &H10E
  loc_195EF8D:               LateIdCallSt
  loc_195EF98:               var_C8 = CVar(CLng(2)) 'Long
  loc_195EF9D:               var_E8 = 0
  loc_195EFA6:               var_108 = "For Dr/Cr"
  loc_195EFAF:               LateIdCallSt
  loc_195EFBA:               var_C8 = CVar(CLng(2)) 'Long
  loc_195EFBF:               var_E8 = &H10E
  loc_195EFCB:               LateIdCallSt
  loc_195EFD6:               var_C8 = CVar(CLng(0)) 'Long
  loc_195EFDB:               var_E8 = 1
  loc_195EFE9:               var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_195EFF0:               LateIdCallSt
  loc_195EFFE:               var_C8 = CVar(CLng(1)) 'Long
  loc_195F003:               var_E8 = 1
  loc_195F011:               var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_195F018:               LateIdCallSt
  loc_195F026:               var_C8 = CVar(CLng(2)) 'Long
  loc_195F02B:               var_E8 = 1
  loc_195F034:               var_108 = "All"
  loc_195F03D:               LateIdCallSt
  loc_195F047:               Set var_178 = Nothing 
  loc_195F052:               global_142 = CInt(0)
  loc_195F065:               Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195F09F:               Set var_AC = 0(&H4B0)
  loc_195F0A5:               LateIdCallSt
  loc_195F0C6:               Set var_AC = 1(&H5DC)
  loc_195F0CC:               LateIdCallSt
  loc_195F0D7:               var_C8 = 0
  loc_195F0F6:               var_E8 = 1
  loc_195F103:               Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195F11D:               var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195F12C:               1(var_108).Width = CInt(2)
  loc_195F14B:               var_128 = var_178(DGSite.DispID_A).Width
  loc_195F15A:               Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_195F16C:               var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195F17B:               var_178(var_C8).Left = var_128
  loc_195F18D:               var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_195F19C:               var_E8(var_C8).Top = var_C8
  loc_195F1BB:               Call Proc_203_58_11EA690(1, "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP where nature='Bank' " & var_94 & " order by name ")
  loc_195F1CA:             Else
  loc_195F1D2:               If Not (var_B0 = "NonTrans") Then
  loc_195F1DD:                 If (var_B0 = "CONTROLLED") Then
  loc_195F1E0:                 End If
  loc_195F1E4:                 Set var_17C = ()
  loc_195F1EA:                 var_C8 = CVar(CLng(0)) 'Long
  loc_195F1EF:                 var_E8 = 0
  loc_195F1F8:                 var_108 = "From Date"
  loc_195F201:                 LateIdCallSt
  loc_195F20C:                 var_C8 = CVar(CLng(0)) 'Long
  loc_195F211:                 var_E8 = &H10E
  loc_195F21D:                 LateIdCallSt
  loc_195F228:                 var_C8 = CVar(CLng(1)) 'Long
  loc_195F22D:                 var_E8 = 0
  loc_195F236:                 var_108 = "To Date  "
  loc_195F23F:                 LateIdCallSt
  loc_195F24A:                 var_C8 = CVar(CLng(1)) 'Long
  loc_195F24F:                 var_E8 = &H10E
  loc_195F25B:                 LateIdCallSt
  loc_195F266:                 var_C8 = CVar(CLng(0)) 'Long
  loc_195F26B:                 var_E8 = 1
  loc_195F279:                 var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_195F280:                 LateIdCallSt
  loc_195F28E:                 var_C8 = CVar(CLng(1)) 'Long
  loc_195F293:                 var_E8 = 1
  loc_195F2A1:                 var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_195F2A8:                 LateIdCallSt
  loc_195F2B5:                 Set var_17C = Nothing 
  loc_195F2C0:                 global_142 = CInt(0)
  loc_195F2D3:                 Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195F30D:                 Set var_AC = 0(&H4B0)
  loc_195F313:                 LateIdCallSt
  loc_195F334:                 Set var_AC = 1(&H5DC)
  loc_195F33A:                 LateIdCallSt
  loc_195F345:                 var_C8 = 0
  loc_195F364:                 var_E8 = 1
  loc_195F371:                 Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195F38B:                 var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195F39A:                 1(var_108).Width = CInt(1)
  loc_195F3B9:                 var_128 = var_17C(DGSite.DispID_A).Width
  loc_195F3C8:                 Call 0.Method_Me0 (var_144, var_128, var_128, var_E8, var_C8)
  loc_195F3DA:                 var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195F3E9:                 var_17C(var_C8).Left = var_128
  loc_195F3FB:                 var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_195F40A:                 var_E8(var_C8).Top = var_C8
  loc_195F419:                 var_A8 = "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup WHERE AliasYN<> 'Y' AND (LOGSITE_CODE='" & MemVar_1F95078
  loc_195F429:                 Call Proc_203_58_11EA690(1, var_A8 & "' OR LOGSITE_CODE='HO') order by GroupName")
  loc_195F438:               Else
  loc_195F440:                 If (var_B0 = "RefReport") Then
  loc_195F447:                   Set var_180 = ()
  loc_195F44D:                   var_C8 = CVar(CLng(3)) 'Long
  loc_195F452:                   var_E8 = 0
  loc_195F45B:                   var_108 = "Pending Only"
  loc_195F464:                   LateIdCallSt
  loc_195F46F:                   var_C8 = CVar(CLng(3)) 'Long
  loc_195F474:                   var_E8 = &H10E
  loc_195F480:                   LateIdCallSt
  loc_195F48B:                   var_C8 = CVar(CLng(3)) 'Long
  loc_195F490:                   var_E8 = 1
  loc_195F499:                   var_108 = "Yes"
  loc_195F4A2:                   LateIdCallSt
  loc_195F4AC:                   Set var_180 = Nothing 
  loc_195F4B7:                   global_142 = CInt(3)
  loc_195F4CA:                   Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195F4DF:                   global_140 = CInt(3)
  loc_195F4EA:                   global_144 = 1
  loc_195F505:                   Call Proc_203_58_11EA690(1, "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP  " & var_90 & " Order by Name")
  loc_195F514:                 Else
  loc_195F51C:                   If Not (var_B0 = "AgingDr") Then
  loc_195F527:                     If Not (var_B0 = "AgingCr") Then
  loc_195F532:                       If Not (var_B0 = "AgingRepDr") Then
  loc_195F53D:                         If (var_B0 = "AgingRepCr") Then
  loc_195F540:                         End If
  loc_195F540:                       End If
  loc_195F540:                     End If
  loc_195F544:                     Set var_184 = global_140(global_144)
  loc_195F54A:                     var_C8 = CVar(CLng(0)) 'Long
  loc_195F54F:                     var_E8 = 0
  loc_195F558:                     var_108 = "UpTo Date"
  loc_195F561:                     LateIdCallSt
  loc_195F56C:                     var_C8 = CVar(CLng(0)) 'Long
  loc_195F571:                     var_E8 = &H10E
  loc_195F57D:                     LateIdCallSt
  loc_195F588:                     var_C8 = CVar(CLng(0)) 'Long
  loc_195F58D:                     var_E8 = 1
  loc_195F59B:                     var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_195F5A2:                     LateIdCallSt
  loc_195F5AF:                     Set var_184 = Nothing 
  loc_195F5BA:                     global_142 = CInt(0)
  loc_195F5CD:                     Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195F607:                     Set var_AC = 0(&H4B0)
  loc_195F60D:                     LateIdCallSt
  loc_195F62E:                     Set var_AC = 1(&H5DC)
  loc_195F634:                     LateIdCallSt
  loc_195F63F:                     var_C8 = 0
  loc_195F65E:                     var_E8 = 1
  loc_195F66B:                     Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195F685:                     var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195F694:                     1(var_108).Width = CInt(0)
  loc_195F6B3:                     var_128 = var_184(DGSite.DispID_A).Width
  loc_195F6C2:                     Call 0.Method_Me0 (var_144, var_128, var_128, var_E8, var_C8)
  loc_195F6D4:                     var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195F6DD:                     Set var_12C = var_184(var_C8)
  loc_195F6E3:                     var_12C.Left = var_E8
  loc_195F704:                     CVar(CDbl(&H4B))(CVar(CDbl(&H4B))).Top = var_184
  loc_195F723:                     If ((GRepFormName = "AgingDr") Or (GRepFormName = "AgingRepDr")) Then
  loc_195F72D:                       var_A8 = "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' AND Nature='Customer' " & var_A4
  loc_195F73D:                       Call Proc_203_58_11EA690(1, var_A8 & " order by GroupName")
  loc_195F74C:                     Else
  loc_195F763:                       If ((GRepFormName = "AgingCr") Or (GRepFormName = "AgingRepCr")) Then
  loc_195F76D:                         var_A8 = "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' AND  Nature='Supplier' " & var_A4
  loc_195F77D:                         Call Proc_203_58_11EA690(1, var_A8 & " order by GroupName")
  loc_195F78C:                       Else
  loc_195F7A3:                         Call Proc_203_58_11EA690(1, "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4 & " Order By GroupName")
  loc_195F7AF:                       End If
  loc_195F7AF:                     End If
  loc_195F7B2:                   Else
  loc_195F7BA:                     If (var_B0 = "DUELIST") Then
  loc_195F7C1:                       Set var_188 = ()
  loc_195F7C7:                       var_C8 = CVar(CLng(0)) 'Long
  loc_195F7CC:                       var_E8 = 0
  loc_195F7D5:                       var_108 = "UpTo Date"
  loc_195F7DE:                       LateIdCallSt
  loc_195F7E9:                       var_C8 = CVar(CLng(0)) 'Long
  loc_195F7EE:                       var_E8 = &H10E
  loc_195F7FA:                       LateIdCallSt
  loc_195F805:                       var_C8 = CVar(CLng(0)) 'Long
  loc_195F80A:                       var_E8 = 1
  loc_195F818:                       var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_195F81F:                       LateIdCallSt
  loc_195F82D:                       var_C8 = CVar(CLng(2)) 'Long
  loc_195F832:                       var_E8 = 0
  loc_195F83B:                       var_108 = "All/Pending"
  loc_195F844:                       LateIdCallSt
  loc_195F84F:                       var_C8 = CVar(CLng(2)) 'Long
  loc_195F854:                       var_E8 = &H10E
  loc_195F860:                       LateIdCallSt
  loc_195F86B:                       var_C8 = CVar(CLng(2)) 'Long
  loc_195F870:                       var_E8 = 1
  loc_195F879:                       var_108 = "Pending"
  loc_195F882:                       LateIdCallSt
  loc_195F88D:                       var_C8 = CVar(CLng(3)) 'Long
  loc_195F892:                       var_E8 = 0
  loc_195F89B:                       var_108 = "More Than Days"
  loc_195F8A4:                       LateIdCallSt
  loc_195F8AF:                       var_C8 = CVar(CLng(3)) 'Long
  loc_195F8B4:                       var_E8 = &H10E
  loc_195F8C0:                       LateIdCallSt
  loc_195F8CB:                       var_C8 = CVar(CLng(3)) 'Long
  loc_195F8D0:                       var_E8 = 1
  loc_195F8D9:                       var_108 = "0"
  loc_195F8E2:                       LateIdCallSt
  loc_195F8EC:                       Set var_188 = Nothing 
  loc_195F8F7:                       global_142 = CInt(0)
  loc_195F90A:                       Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195F91F:                       global_140 = CInt(2)
  loc_195F93F:                       var_A8 = "Select '' as O,SubGroup.Name as PartyName,SubGroup.Subcode as Code,RTrim(IsNull(Add1,''))+','+RTrim(IsNull(Add2,''))+','+RTrim(IsNull(CityName,'')) AS NameWithADDR From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where SubGroup.Nature='Customer' " & var_94
  loc_195F94F:                       Call Proc_203_58_11EA690(1, "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4 & " Order by SubGroup.Name")
  loc_195F976:                       Set var_AC = var_12C(1)
  loc_195F97C:                       Call 0.Method_Proc_203_61_195FD340 (0, 3, CInt(3), 1, CInt(3), DGSite.DispID_A)
  loc_195F984:                       LateIdCallSt
  loc_195F996:                     Else
  loc_195F99E:                       If Not (var_B0 = "BudgetVariance") Then
  loc_195F9A9:                         If (var_B0 = "Budget") Then
  loc_195F9AC:                         End If
  loc_195F9B0:                         Set var_18C = var_188(var_12C)
  loc_195F9B6:                         var_C8 = CVar(CLng(0)) 'Long
  loc_195F9BB:                         var_E8 = 0
  loc_195F9C4:                         var_108 = "Budget Period"
  loc_195F9CD:                         LateIdCallSt
  loc_195F9D8:                         var_C8 = CVar(CLng(0)) 'Long
  loc_195F9DD:                         var_E8 = &H10E
  loc_195F9E9:                         LateIdCallSt
  loc_195F9F4:                         var_C8 = CVar(CLng(0)) 'Long
  loc_195F9F9:                         var_E8 = 1
  loc_195FA02:                         var_108 = vbNullString
  loc_195FA0B:                         LateIdCallSt
  loc_195FA15:                         Set var_18C = Nothing 
  loc_195FA20:                         global_142 = CInt(0)
  loc_195FA33:                         Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195FA48:                         global_140 = CInt(0)
  loc_195FA53:                         global_144 = 1
  loc_195FA73:                         Me.Recordset15.CursorLocation = 3
  loc_195FA8F:                         var_C8 = "Select Distinct CStr(FromDate) + '-' + CStr(ToDate) As Code,CStr(FromDate) + '-' + CStr(ToDate) as NAME From Budget ORDER BY CStr(FromDate) + '-' + CStr(ToDate)"
  loc_195FA9B:                         Me.Open 1, CVar(MemVar_1F951E0), 0
  loc_195FAA9:                         CVarUnk
  loc_195FAAE:                         VerifyVarObj
  loc_195FAB4:                         Set var_AC = 1(New)
  loc_195FABA:                         LateIdStAd
  loc_195FACB:                       Else
  loc_195FAD3:                         If (var_B0 = "TDSRep") Then
  loc_195FADA:                           Set var_190 = -1(var_AC)
  loc_195FAE0:                           var_C8 = CVar(CLng(0)) 'Long
  loc_195FAE5:                           var_E8 = 0
  loc_195FAEE:                           var_108 = "From Date   "
  loc_195FAF7:                           LateIdCallSt
  loc_195FB02:                           var_C8 = CVar(CLng(0)) 'Long
  loc_195FB07:                           var_E8 = &H10E
  loc_195FB13:                           LateIdCallSt
  loc_195FB1E:                           var_C8 = CVar(CLng(1)) 'Long
  loc_195FB23:                           var_E8 = 0
  loc_195FB2C:                           var_108 = "To Date   "
  loc_195FB35:                           LateIdCallSt
  loc_195FB40:                           var_C8 = CVar(CLng(1)) 'Long
  loc_195FB45:                           var_E8 = &H10E
  loc_195FB51:                           LateIdCallSt
  loc_195FB5C:                           var_C8 = CVar(CLng(0)) 'Long
  loc_195FB61:                           var_E8 = 1
  loc_195FB6F:                           var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_195FB76:                           LateIdCallSt
  loc_195FB84:                           var_C8 = CVar(CLng(1)) 'Long
  loc_195FB89:                           var_E8 = 1
  loc_195FB97:                           var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_195FB9E:                           LateIdCallSt
  loc_195FBAB:                           Set var_190 = Nothing 
  loc_195FBB6:                           global_142 = CInt(0)
  loc_195FBC9:                           Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195FC03:                           Set var_AC = 0(&H6A4)
  loc_195FC09:                           LateIdCallSt
  loc_195FC2A:                           Set var_AC = 1(&H9C4)
  loc_195FC30:                           LateIdCallSt
  loc_195FC3B:                           var_C8 = 0
  loc_195FC5A:                           var_E8 = 1
  loc_195FC67:                           Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195FC81:                           var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195FC90:                           0(var_108).Width = CInt(1)
  loc_195FCAF:                           var_128 = var_190(DGSite.DispID_A).Width
  loc_195FCBE:                           Call 0.Method_Me0 (var_144, var_128, var_128, var_E8, var_C8)
  loc_195FCD0:                           var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195FCDF:                           var_190(var_C8).Left = var_128
  loc_195FCF1:                           var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_195FD00:                           var_E8(var_C8).Top = var_C8
  loc_195FD08:                         End If
  loc_195FD08:                       End If
  loc_195FD08:                     End If
  loc_195FD08:                   End If
  loc_195FD08:                 End If
  loc_195FD08:               End If
  loc_195FD08:             End If
  loc_195FD08:           End If
  loc_195FD08:         End If
  loc_195FD08:       End If
  loc_195FD08:     End If
  loc_195FD08:   End If
  loc_195FD08: End If
  loc_195FD08: Exit Sub
  loc_195FD09: ' Referenced from: 195D028
  loc_195FD0F: Call 0.Method_arg_50 ("SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4)
  loc_195FD17: var_154 = "Ini_Grid"
  loc_195FD24: Proc_183_57_104B0BC("SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4)
  loc_195FD30: Exit Sub
End Sub

Public Sub Proc_203_62_1540134
  'Data Table: 583348
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_DC As String
  Dim var_EC As Variant
  Dim unk_583395 As Connection15
  Dim var_90 As Recordset15
  Dim var_FC As Variant
  Dim var_94 As Recordset15
  Dim var_98 As Recordset15
  Dim var_12C As Variant
  Dim var_BC As Fields15
  Dim var_13C As Variant
  Dim var_10C As Variant
  Dim var_16C As String
  Dim var_170 As Variant
  Dim var_14C As Variant
  Dim var_1B0 As Variant
  Dim var_9C As Recordset15
  Dim var_88 As Recordset15
  Dim var_C2 As Integer
  loc_153F188: On Error Goto loc_1540102
  loc_153F191: global_84 = vbNullString
  loc_153F198: var_8C = vbNullString
  loc_153F1A7: Set var_BC = var_C0(1)
  loc_153F1AD: Call 0.Method_Proc_203_62_15401340 (var_C2)
  loc_153F1B5:  = var_C0.Value
  loc_153F1CB: If (CLng(var_C2) = 0) Then
  loc_153F1E9:   Call Proc_203_56_127C1B4(global_96, 1, CByte(1))
  loc_153F1F4:   global_84 = var_DC
  loc_153F204:   If (global_130 = 0) Then
  loc_153F207:     Exit Sub
  loc_153F208:   End If
  loc_153F208: End If
  loc_153F213: If (global_84 <> vbNullString) Then
  loc_153F227:   var_8C = " Where SUBCODE IN (" & global_84 & ")"
  loc_153F22D: End If
  loc_153F238: If (global_84 <> vbNullString) Then
  loc_153F245:   var_DC = " Where Ledger.SUBCODE IN (" & global_84
  loc_153F24C:   var_A0 = var_DC & ")"
  loc_153F252: End If
  loc_153F25D: Set var_BC = var_C0(CInt(&HC))
  loc_153F263: Call 0.Method_Proc_203_62_15401340 (var_DC)
  loc_153F26B: var_EC = CVar(var_C0) 'Address
  loc_153F28C: If CBool(Trim(var_EC) <> vbNullString) Then
  loc_153F2A0:   Set var_BC = var_C0(CInt(&HC))
  loc_153F2A6:   Call 0.Method_Proc_203_62_15401340 (var_DC)
  loc_153F2AE:   " And LEDGER.Site_Code='" = var_C0.Tag
  loc_153F2BE:   var_B8 = var_DC & "'"
  loc_153F2D2: Else
  loc_153F2E0:   var_B8 = " And LEDGER.Site_Code='" & MemVar_1F95078 & "'"
  loc_153F2E6: End If
  loc_153F2F6: Set var_BC = New
  loc_153F305: Call 0.Method_arg_1A0 (var_BC)
  loc_153F310: Set var_88 = var_BC
  loc_153F319: Set var_88 = var_C0
  loc_153F347: Me.Connection15.Execute "SELECT SUBCODE,NAME FROM SUBGROUP  " & var_8C & " ORDER BY SUBCODE", var_EC, -1
  loc_153F352: Set var_90 = var_BC
  loc_153F376: var_DC = "SELECT Ledger.*,LEDGERREF.AGREFTYPE FROM Ledger LEFT JOIN ledgerRef ON (Ledger.V_SNo=ledgerRef.V_SNo) AND (Ledger.DocId = ledgerRef.DocId) " & var_A0
  loc_153F394: unk_583395.Execute var_DC & " " & var_B8 & " ORDER BY Ledger.SUBCODE,Ledger.V_DATE,Ledger.DOCId,Ledger.V_SNO", var_EC, -1
  loc_153F39F: Set var_94 = var_BC
  loc_153F3C7: var_DC = "SELECT LedgerRef.*  FROM LedgerRef " & var_8C
  loc_153F3D7: unk_583395.Execute var_DC & " ORDER BY SUBCode,V_DATE,DocId,V_SNO", var_EC, -1
  loc_153F3E2: Set var_98 = var_BC
  loc_153F406: If (var_90.RecordCount <= 0) Then
  loc_153F40F:   Call 0.Method_arg_50 (var_DC, var_BC, var_BC)
  loc_153F430:   MsgBox("** No Records Found to Print **", &H40, CVar(var_DC), var_10C, var_14C)
  loc_153F445:   global_130 = 0
  loc_153F448:   Exit Sub
  loc_153F449: End If
  loc_153F45D: If (var_94.RecordCount <= 0) Then
  loc_153F466:   Call 0.Method_arg_50 (var_DC, global_130)
  loc_153F487:   MsgBox("** No Records Found to Print **", &H40, CVar(var_DC), var_10C, var_14C)
  loc_153F49C:   global_130 = 0
  loc_153F49F:   Exit Sub
  loc_153F4A0:   ' Referenced from: 153FFE7
  loc_153F4A0: End If
  loc_153F4AF: If Not(var_90.EOF) Then
  loc_153F4C6:   If (var_98.RecordCount > 0) Then
  loc_153F4CC:     var_98.MoveFirst
  loc_153F522:     var_98.Find CStr("SubCode='" & var_90.Fields.Item("subcode").Value & "'"), 0, 1
  loc_153F54B:     If (var_98.EOF = 0) Then
  loc_153F54E:       ' Referenced from: 153FBDF
  loc_153F550:       If &HFF Then
  loc_153F568:         Set var_BC = CVar(CLng(3))(1)
  loc_153F59F:         var_170 = var_98.Fields.Item("AgRefType")
  loc_153F5D4:         If CBool((CStr(DGSite.DispID_41) = "Yes") And (var_170.Value <> "On Account")) Then
  loc_153F635:           var_16C = "SELECT AgRefNo,SUM(Cr)-SUM(Dr) AS BalanceAmt From ledgerRef "
  loc_153F643:           var_14C = (CVar(var_8C) + IIf((var_8C = vbNullString), " Where ", " AND "))
  loc_153F650:           var_1B0 = "AgRefType" & (CStr(DGSite.DispID_41) = "Yes") And (var_170.Value <> "On Account") & " AGREFTYPE IN ('Advance','New Ref','Ag.Ref.') AND AGREFNO='" 
  loc_153F66E:           unk_583395.Execute CStr(var_1B0 & var_98.Fields.Item("AgRefNo").Value & "' GROUP BY SubCode,AgRefNo"), var_210, -1
  loc_153F679:           Set var_9C = var_170
  loc_153F6B5:           If (var_9C.RecordCount > 0) Then
  loc_153F6BE:             var_D4 = "BalanceAmt"
  loc_153F6E2:             var_12C = 0
  loc_153F6F4:             If (var_9C.Fields.Item(var_D4).Value = var_12C) Then
  loc_153F6F7:               GoTo loc_153FB52
  loc_153F6FA:             End If
  loc_153F6FA:           End If
  loc_153F6FA:         End If
  loc_153F705:         var_88.AddNew var_D4, var_12C
  loc_153F729:         var_EC = CVar(var_98.Fields.Item("DocID")) 'Address
  loc_153F737:         var_88.Collect = "DocID"
  loc_153F761:         var_EC = CVar(var_98.Fields.Item("V_SNo")) 'Address
  loc_153F76F:         var_88.Collect = "V_SNo"
  loc_153F7AA:         var_10C = Mid(CVar(var_98.Fields.Item("DocID")), 4, 5)
  loc_153F7BC:         var_88.Collect = "V_Type"
  loc_153F7F8:         var_FC = Right(CVar(var_98.Fields.Item("DocID")), 8)
  loc_153F80A:         var_88.Collect = "V_NO"
  loc_153F838:         var_EC = CVar(var_98.Fields.Item("V_DATE")) 'Address
  loc_153F846:         var_88.Collect = "V_DATE"
  loc_153F870:         var_EC = CVar(var_98.Fields.Item("subcode")) 'Address
  loc_153F87E:         var_88.Collect = "subcode"
  loc_153F8A8:         var_EC = CVar(var_90.Fields.Item("Name")) 'Address
  loc_153F8B6:         var_88.Collect = "Name"
  loc_153F8E0:         var_EC = CVar(var_98.Fields.Item("cr")) 'Address
  loc_153F8EE:         var_88.Collect = "cr"
  loc_153F918:         var_EC = CVar(var_98.Fields.Item("dr")) 'Address
  loc_153F926:         var_88.Collect = "dr"
  loc_153F95B:         var_220 = var_98.Fields.Item("AgRefType").Value 'Variant
  loc_153F971:         If Not (var_220 = "Advance") Then
  loc_153F97F:           If (var_220 = "New Ref") Then
  loc_153F982:           End If
  loc_153F9A1:           var_EC = CVar(var_98.Fields.Item("AgRefType")) 'Address
  loc_153F9AF:           var_88.Collect = "AgRefType"
  loc_153F9E0:           var_FC = Trim(CVar(var_98.Fields.Item("AgRefNo")))
  loc_153F9F2:           var_88.Collect = "AgRefNo"
  loc_153FA01:           var_12C = "1"
  loc_153FA10:           var_88.Collect = "RefSort"
  loc_153FA15:           var_12C = "1"
  loc_153FA24:           var_88.Collect = "GRPSort"
  loc_153FA2C:         Else
  loc_153FA37:           If (var_220 = "Ag.Ref.") Then
  loc_153FA59:             var_EC = CVar(var_98.Fields.Item("AgRefType")) 'Address
  loc_153FA67:             var_88.Collect = "AgRefType"
  loc_153FA98:             var_FC = Trim(CVar(var_98.Fields.Item("AgRefNo")))
  loc_153FAAA:             var_88.Collect = "AgRefNo"
  loc_153FAB9:             var_12C = "1"
  loc_153FAC8:             var_88.Collect = "GRPSort"
  loc_153FACD:             var_12C = "2"
  loc_153FADC:             var_88.Collect = "RefSort"
  loc_153FAE4:           Else
  loc_153FAEF:             If (var_220 = "On Account") Then
  loc_153FAF2:               var_12C = "On Account"
  loc_153FB01:               var_88.Collect = "AgRefNo"
  loc_153FB06:               var_12C = vbNullString
  loc_153FB15:               var_88.Collect = "AgRefType"
  loc_153FB1A:               var_12C = "5"
  loc_153FB29:               var_88.Collect = "GRPSort"
  loc_153FB2E:               var_12C = "1"
  loc_153FB34:               var_D4 = "RefSort"
  loc_153FB3D:               var_88.Collect = var_D4
  loc_153FB42:             End If
  loc_153FB42:           End If
  loc_153FB42:         End If
  loc_153FB4D:         var_88.Update var_D4, var_12C
  loc_153FB52:         ' Referenced from: 153F6F7
  loc_153FB55:         var_98.MoveNext
  loc_153FB6B:         If (var_98.EOF = &HFF) Then
  loc_153FB6E:           GoTo loc_153FBE2
  loc_153FB71:         End If
  loc_153FBD9:         If CBool(var_90.Fields.Item("subcode").Value <> var_98.Fields.Item("subcode").Value) Then
  loc_153FBDC:           GoTo loc_153FBE2
  loc_153FBDF:         End If
  loc_153FBDF:         GoTo loc_153F54E
  loc_153FBE2:         ' Referenced from: 153FBDC
  loc_153FBE2:         ' Referenced from: 153FB6E
  loc_153FBE2:       End If
  loc_153FBE2:     End If
  loc_153FBE2:   End If
  loc_153FBE5:   var_94.MoveFirst
  loc_153FC30:   var_10C = "SubCode='" & var_90.Fields.Item("subcode").Value & "'" 
  loc_153FC34:   var_DC = CStr(var_10C)
  loc_153FC3B:   var_94.Find var_DC, 0, 1
  loc_153FC64:   If (var_94.EOF = 0) Then
  loc_153FC67:     ' Referenced from: 153FFDC
  loc_153FC69:     If &HFF Then
  loc_153FC6F:       var_D4 = "AgRefType"
  loc_153FC9E:       var_12C = "AgRefType"
  loc_153FCC2:       var_13C = vbNullString
  loc_153FCCC:       var_14C = IsNull(CVar(var_94.Fields.Item(var_D4))) Or (var_94.Fields.Item(var_12C).Value = var_13C)
  loc_153FCE4:       If CBool(var_14C) Then
  loc_153FCF2:         var_88.AddNew var_D4, var_12C
  loc_153FD16:         var_EC = CVar(var_94.Fields.Item("DocID")) 'Address
  loc_153FD24:         var_88.Collect = "DocID"
  loc_153FD4E:         var_EC = CVar(var_94.Fields.Item("V_SNo")) 'Address
  loc_153FD5C:         var_88.Collect = "V_SNo"
  loc_153FD86:         var_EC = CVar(var_94.Fields.Item("V_Type")) 'Address
  loc_153FD94:         var_88.Collect = "V_Type"
  loc_153FDBE:         var_EC = CVar(var_94.Fields.Item("V_NO")) 'Address
  loc_153FDCC:         var_88.Collect = "V_NO"
  loc_153FDF6:         var_EC = CVar(var_94.Fields.Item("V_DATE")) 'Address
  loc_153FE04:         var_88.Collect = "V_DATE"
  loc_153FE2E:         var_EC = CVar(var_94.Fields.Item("subcode")) 'Address
  loc_153FE3C:         var_88.Collect = "subcode"
  loc_153FE66:         var_EC = CVar(var_90.Fields.Item("Name")) 'Address
  loc_153FE74:         var_88.Collect = "Name"
  loc_153FE9E:         var_EC = CVar(var_94.Fields.Item("AmtCr")) 'Address
  loc_153FEAC:         var_88.Collect = "cr"
  loc_153FED6:         var_EC = CVar(var_94.Fields.Item("AmtDr")) 'Address
  loc_153FEE4:         var_88.Collect = "dr"
  loc_153FEEF:         var_12C = "On Account"
  loc_153FEFE:         var_88.Collect = "AgRefNo"
  loc_153FF03:         var_12C = vbNullString
  loc_153FF12:         var_88.Collect = "AgRefType"
  loc_153FF17:         var_12C = "5"
  loc_153FF26:         var_88.Collect = "GRPSort"
  loc_153FF31:         var_D4 = "RefSort"
  loc_153FF3A:         var_88.Collect = var_D4
  loc_153FF4A:         var_88.Update var_D4, "1"
  loc_153FF4F:       End If
  loc_153FF52:       var_94.MoveNext
  loc_153FF68:       If (var_94.EOF = &HFF) Then
  loc_153FF6B:         GoTo loc_153FFDF
  loc_153FF6E:       End If
  loc_153FF9E:       var_12C = "subcode"
  loc_153FFBA:       var_EC = var_94.Fields.Item(var_12C).Value
  loc_153FFD6:       If CBool(var_90.Fields.Item("subcode").Value <> var_EC) Then
  loc_153FFD9:         GoTo loc_153FFDF
  loc_153FFDC:       End If
  loc_153FFDC:       GoTo loc_153FC67
  loc_153FFDF:       ' Referenced from: 153FFD9
  loc_153FFDF:       ' Referenced from: 153FF6B
  loc_153FFDF:     End If
  loc_153FFDF:   End If
  loc_153FFE2:   var_90.MoveNext
  loc_153FFE7:   GoTo loc_153F4A0
  loc_153FFEA: End If
  loc_153FFFE: If (var_88.RecordCount <= 0) Then
  loc_1540007:   Call 0.Method_arg_50 (var_DC, var_12C, var_12C, var_12C, var_12C, var_EC)
  loc_1540022:   var_EC = "** No Records Found to Print **"
  loc_1540028:   MsgBox(var_EC, &H40, CVar(var_DC), var_10C, var_14C)
  loc_154003D:   global_130 = 0
  loc_1540040:   Exit Sub
  loc_1540041: End If
  loc_1540057: Set var_BC = var_88 
  loc_1540063: var_C2 = CreateFieldDefFile(var_BC, MemVar_1F953B4 & "\FaAgRefNo.ttx", &HFF, global_130, var_EC)
  loc_1540073: var_D4 = CVar(var_C2) 'Integer
  loc_1540076: var_B0 = var_D4 'Variant
  loc_1540092: var_DC = MemVar_1F953B4 & "\FaAgRefNo.RPT"
  loc_154009B: Call 0.Method_arg_1C (var_DC, var_D4, var_BC, var_C2)
  loc_15400A6: MemVar_1F951E8 = var_BC
  loc_15400C9: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_12C, var_13C)
  loc_15400D1: Call 0.Method_arg_2C (var_EC, var_EC)
  loc_15400DE: Set var_88 = Nothing
  loc_15400E6: Set var_90 = Nothing
  loc_15400EE: Set var_94 = Nothing
  loc_15400F6: Set var_98 = Nothing
  loc_15400FE: Set var_9C = Nothing
  loc_1540101: Exit Sub
  loc_1540102: ' Referenced from: 153F188
  loc_1540110: Call 0.Method_arg_50 (var_DC, 0)
  loc_1540125: Proc_183_57_104B0BC(var_DC, "RefReport")
  loc_1540131: Exit Sub
End Sub

Public Sub Proc_203_63_17B7C18(arg_C) '17B7C18
  'Data Table: 583348
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_190 As Variant
  Dim var_188 As String
  Dim var_180 As Variant
  Dim var_1B4 As String
  Dim var_1A0 As Variant
  Dim unk_583395 As Connection15
  Dim var_90 As Variant
  Dim var_170 As Fields15
  Dim var_1D0 As Variant
  Dim var_390 As Variant
  Dim var_840 As Variant
  Dim var_14C As Variant
  Dim var_1B0 As Variant
  Dim var_16C As String
  Dim var_200 As Variant
  Dim var_240 As Variant
  Dim var_260 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_2A0 As Variant
  Dim var_2C0 As Variant
  Dim var_2D0 As String
  Dim var_310 As Variant
  Dim var_330 As Variant
  Dim var_3B0 As Variant
  Dim var_420 As Variant
  Dim var_450 As Variant
  Dim var_470 As Variant
  Dim var_4A0 As String
  Dim var_520 As Variant
  Dim var_530 As Variant
  Dim var_5D0 As String
  Dim var_600 As Variant
  Dim var_630 As Variant
  Dim var_660 As Variant
  Dim var_690 As String
  Dim var_6B0 As Variant
  Dim var_6C0 As Variant
  Dim var_6F0 As String
  Dim var_770 As Variant
  Dim var_780 As String
  Dim var_790 As Variant
  Dim var_7D0 As String
  Dim var_810 As Variant
  Dim var_880 As Variant
  Dim var_930 As String
  Dim var_960 As Variant
  Dim var_730 As Variant
  Dim var_1E0 As Variant
  Dim var_300 As Variant
  Dim var_350 As Variant
  Dim var_3A0 As Variant
  Dim var_560 As Variant
  Dim var_5B0 As Variant
  Dim var_7B0 As Variant
  Dim var_800 As Variant
  Dim var_992 As Integer
  Dim var_92 As Integer
  Dim var_8C As Recordset15
  Dim var_88 As Recordset15
  Dim var_998 As Fields15
  Dim var_99C As Field20
  Dim var_9A0 As Fields15
  Dim var_9A4 As Field20
  Dim var_9AE As Integer
  loc_17B5DB0: On Error Goto loc_17B7BE7
  loc_17B5DC8: Set var_170 = CVar(CLng(0))(0)
  loc_17B5DEC: Call Proc_203_59_F525A0(CInt(0), CStr(var_180))
  loc_17B5E00: If (var_18A = 0) Then
  loc_17B5E08:   global_130 = 0
  loc_17B5E0B:   Exit Sub
  loc_17B5E0C: End If
  loc_17B5E21: Set var_170 = CVar(CLng(1))(0)
  loc_17B5E45: Call Proc_203_59_F525A0(CInt(1), CStr(var_180))
  loc_17B5E59: If (var_18A = 0) Then
  loc_17B5E61:   global_130 = 0
  loc_17B5E64:   Exit Sub
  loc_17B5E65: End If
  loc_17B5E7A: Set var_170 = CVar(CLng(2))(0)
  loc_17B5E9E: Call Proc_203_59_F525A0(CInt(2), CStr(var_180))
  loc_17B5EB2: If (var_18A = 0) Then
  loc_17B5EBA:   global_130 = 0
  loc_17B5EBD:   Exit Sub
  loc_17B5EBE: End If
  loc_17B5ED3: Set var_170 = CVar(CLng(3))(0)
  loc_17B5EF7: Call Proc_203_59_F525A0(CInt(3), CStr(var_180))
  loc_17B5F0B: If (var_18A = 0) Then
  loc_17B5F13:   global_130 = 0
  loc_17B5F16:   Exit Sub
  loc_17B5F17: End If
  loc_17B5F1D: global_84 = vbNullString
  loc_17B5F24: var_9C = vbNullString
  loc_17B5F2A: var_A0 = vbNullString
  loc_17B5F39: Set var_170 = var_190(1)
  loc_17B5F3F: Call 0.Method_Proc_203_63_17B7C180 (var_182, global_130, var_18A, DGSite.DispID_41, global_130, var_18A)
  loc_17B5F47: DGSite.DispID_41 = var_190.Value
  loc_17B5F5D: If (CLng(var_182) = 0) Then
  loc_17B5F7B:   Call Proc_203_56_127C1B4(global_96, 1, CByte(1))
  loc_17B5F86:   global_84 = var_188
  loc_17B5F96:   If (global_130 = 0) Then
  loc_17B5F99:     Exit Sub
  loc_17B5F9A:   End If
  loc_17B5F9A: End If
  loc_17B5FAF: Set var_170 = CVar(CLng(0))(1)
  loc_17B5FCD: CStr(DGSite.DispID_41)(CStr(DGSite.DispID_41)).Text = global_130
  loc_17B5FF4: Set var_170 = CVar(CLng(1))(1)
  loc_17B6005: var_188 = CStr(DGSite.DispID_41)
  loc_17B600C: Set var_190 = var_18A(var_188)
  loc_17B6012: var_190.Text = DGSite.DispID_41
  loc_17B603B: If (Proc_183_48_F06B28(Me, global_130) = 0) Then
  loc_17B6043:   global_130 = 0
  loc_17B6046:   Exit Sub
  loc_17B6047: End If
  loc_17B6052: Set var_170 = var_190(CInt(&HC))
  loc_17B6058: Call 0.Method_Proc_203_63_17B7C180 (global_130)
  loc_17B6060: var_180 = CVar(var_190) 'Address
  loc_17B6081: If CBool(Trim(var_180) <> vbNullString) Then
  loc_17B6095:   Set var_170 = var_190(CInt(&HC))
  loc_17B609B:   Call 0.Method_Proc_203_63_17B7C180 (var_188, " And LEDGER.LOGSite_Code='")
  loc_17B60A3:   var_18A = var_190.Tag
  loc_17B60B3:   var_128 = var_188 & "'"
  loc_17B60D5:   Set var_170 = var_190(CInt(&HC))
  loc_17B60DB:   Call 0.Method_Proc_203_63_17B7C180 (var_188)
  loc_17B60E3:   " And LEDGER.LOGSite_Code='" = var_190.Tag
  loc_17B60F3:   var_12C = var_188 & "'"
  loc_17B6107: Else
  loc_17B6115:   var_128 = " And LEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_17B6129:   var_12C = " And LEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_17B612F: End If
  loc_17B6144: Set var_170 = CVar(CLng(2))(1)
  loc_17B6171: (CStr(Trim(CVar(CStr(DGSite.DispID_41))))).Text = 
  loc_17B619E: Set var_170 = CVar(CLng(2))(2)
  loc_17B61BE: var_C4 = CStr(Trim(CVar(CStr(DGSite.DispID_41))))
  loc_17B61D8: If (global_84 <> vbNullString) Then
  loc_17B61EC:   var_9C = " AND VIEWLEDGER.PARTY IN (" & global_84 & ")"
  loc_17B61F2: End If
  loc_17B61FD: If (global_84 <> vbNullString) Then
  loc_17B620E:   var_1B4 = " AND (VIEWSUBGROUP.LOGSITE_CODE='" & MemVar_1F95078 & "' OR VIEWSUBGROUP.LOGSITE_CODE='HO') AND VIEWSUBGROUP.SUBCODE IN ("
  loc_17B621F:   var_A0 = var_1B4 & global_84 & ")"
  loc_17B622B: End If
  loc_17B624F: unk_583395.Execute "SELECT * FROM FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_180, -1
  loc_17B625A: Set var_88 = var_170
  loc_17B626D: var_120 = vbNullString
  loc_17B62A7: If (CStr(DGSite.DispID_41) = "No") Then
  loc_17B62BE:   var_188 = "SELECT MAINGRCODE,GroupNature FROM ACGROUP WHERE GROUPCODE='" & var_C4
  loc_17B62CE:   unk_583395.Execute var_188 & "' AND ALIASYN='N'", var_180, -1
  loc_17B62D9:   Set var_90 = CVar(CLng(3))(1)
  loc_17B62FD:   If (var_90.RecordCount > 0) Then
  loc_17B632B:     var_120 = CStr(var_90.Fields.Item("MainGrCode").Value)
  loc_17B634A:     var_170 = var_90.Fields
  loc_17B635A:     var_180 = var_170.Item("GroupNature").Value
  loc_17B6374:     Set var_90 = New 
  loc_17B637D:     Me.Recordset15.Sort = "PARTYNAME ASC,GrCode ASC,PARTYCODE ASC"
  loc_17B6385:     var_1C0 = CStr(var_180)
  loc_17B6390:     If Not (var_1C0 = "E") Then
  loc_17B639B:       If (var_1C0 = "R") Then
  loc_17B639E:       End If
  loc_17B63A9:       Proc_183_7_EB17D4(var_180, MemVar_1F950F4)
  loc_17B63B9:       Proc_183_7_EB17D4(var_1E0)
  loc_17B63C9:       Proc_183_7_EB17D4(var_300, MemVar_1F950F4)
  loc_17B63D9:       Proc_183_7_EB17D4(var_350)
  loc_17B63E9:       Proc_183_7_EB17D4(var_3A0)
  loc_17B63FE:       var_4E0 = "SUBSTRING"
  loc_17B6423:       Proc_183_7_EB17D4(var_560, MemVar_1F950F4)
  loc_17B6433:       Proc_183_7_EB17D4(var_5B0)
  loc_17B643D:       var_750 = "MID"
  loc_17B646D:       Proc_183_7_EB17D4(var_7B0, MemVar_1F950F4)
  loc_17B647D:       Proc_183_7_EB17D4(var_800)
  loc_17B6486:       var_840 = CVar((CVar((CVar((CVar((CVar((CVar(var_170(var_170)))))))))))) 'Address
  loc_17B648D:       Proc_183_7_EB17D4(var_850)
  loc_17B64A9:       var_14C = "SELECT 1 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0 AS BALANCECR,0 AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE>="
  loc_17B64B1:       var_1A0 = var_14C & var_180 
  loc_17B64F0:       var_280 = var_1A0 & " AND V_DATE<" & var_1E0 & " " & CVar(var_A0) & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) & "' AND ACGROUP.AliasYN='N'  " 
  loc_17B6503:       var_2C0 = var_280 & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " 
  loc_17B6507:       var_2D0 = "Union SELECT 2 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE>="
  loc_17B651C:       var_330 = var_2C0 & var_2D0 & var_300 & " AND V_DATE BETWEEN " 
  loc_17B6562:       var_450 = var_330 & var_350 & " AND " & var_3A0 & " " & CVar(var_A0) & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) & "' AND ACGROUP.AliasYN='N'  " 
  loc_17B6579:       var_4A0 = "Union  SELECT 3 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) As OP_DR,0 AS BALANCECR,0 AS BALANCEDR,0 AS Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B6585:       var_520 = var_450 & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " & var_4A0 & IIf((MemVar_1F953B0 = "S"), var_4E0, "MID") 
  loc_17B6589:       var_530 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE>="
  loc_17B65B8:       var_600 = var_520 & var_530 & var_560 & " AND V_DATE<" & var_5B0 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_120) 
  loc_17B65E2:       var_690 = "')+3  "
  loc_17B65F1:       var_6C0 = var_600 & "'))='" & CVar(var_120) & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & var_690 & CVar(var_128) 
  loc_17B65FE:       var_6F0 = "Union  SELECT 4 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B660A:       var_770 = var_6C0 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME " & var_6F0 & IIf((MemVar_1F953B0 = "S"), "SUBSTRING", var_750) 
  loc_17B660E:       var_780 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE>="
  loc_17B6643:       var_880 = var_770 & var_780 & var_7B0 & " AND V_DATE BETWEEN " & var_800 & " AND " & var_850 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" 
  loc_17B6677:       var_930 = "')+3  "
  loc_17B6686:       var_960 = var_880 & CVar(var_120) & "'))='" & CVar(var_120) & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & var_930 & CVar(var_128) 
  loc_17B6697:       var_90.Open var_960 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME", CVar(MemVar_1F951E0), 2
  loc_17B6740:     Else
  loc_17B6748:       If Not (var_1C0 = "A") Then
  loc_17B6753:         If (var_1C0 = "L") Then
  loc_17B6756:         End If
  loc_17B675A:         var_180 = CVar(-1(3)) 'Address
  loc_17B6761:         Proc_183_7_EB17D4(var_1A0, var_180)
  loc_17B676A:         var_2A0 = CVar((var_840)) 'Address
  loc_17B6771:         Proc_183_7_EB17D4(var_2C0)
  loc_17B677A:         var_310 = CVar((var_2A0)) 'Address
  loc_17B6781:         Proc_183_7_EB17D4(var_330)
  loc_17B67BB:         Proc_183_7_EB17D4(var_4E0)
  loc_17B67F5:         Proc_183_7_EB17D4(var_6C0)
  loc_17B67FE:         var_730 = CVar((CVar((CVar((var_310)))))) 'Address
  loc_17B6805:         Proc_183_7_EB17D4(var_750)
  loc_17B6821:         var_13C = "SELECT 1 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0 AS BALANCECR,0 AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE<"
  loc_17B6829:         var_1B0 = var_13C & var_1A0 
  loc_17B6832:         var_1D0 = var_1B0 & " " 
  loc_17B6839:         var_15C = CVar(var_A0) 'String
  loc_17B686B:         var_260 = var_1D0 & var_15C & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) & "' AND ACGROUP.AliasYN='N'  " & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " 
  loc_17B686F:         var_290 = "Union SELECT 2 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE BETWEEN "
  loc_17B68B1:         var_390 = var_260 & var_290 & var_2C0 & " AND " & var_330 & " " & CVar(var_A0) & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) 
  loc_17B68D1:         var_420 = "Union  SELECT 3 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,ISNULL(SUM(AMTCR),0) AS OP_CR,ISNULL(sum(AMTDR),0) As OP_DR,0 AS BALANCECR,0 AS BALANCEDR,0 AS Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B68DD:         var_470 = var_390 & "' AND ACGROUP.AliasYN='N'  " & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " & var_420 & IIf((MemVar_1F953B0 = "S"), "SUBSTRING", "MID") 
  loc_17B68E1:         var_4A0 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE<"
  loc_17B6913:         var_560 = var_470 & var_4A0 & var_4E0 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_120) & "'))='" & CVar(var_120) 
  loc_17B692A:         var_5D0 = "')+3  "
  loc_17B6939:         var_5B0 = var_560 & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_128) 
  loc_17B6946:         var_630 = "Union  SELECT 4 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B6952:         var_660 = var_5B0 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME " & var_630 & IIf((MemVar_1F953B0 = "S"), "SUBSTRING", "MID") 
  loc_17B6956:         var_6B0 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE BETWEEN "
  loc_17B6985:         var_790 = var_660 & var_6B0 & var_6C0 & " AND " & var_750 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_120) 
  loc_17B69AF:         var_7D0 = "')+3  "
  loc_17B69BE:         var_810 = var_790 & "'))='" & CVar(var_120) & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & " AND V_DATE BETWEEN " & CVar(var_128) 
  loc_17B69CF:         var_90.Open var_810 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME", CVar(MemVar_1F951E0), 2
  loc_17B6A5D:       End If
  loc_17B6A5D:     End If
  loc_17B6A5D:   End If
  loc_17B6A71:   If (var_90.RecordCount <= 0) Then
  loc_17B6A7A:     Call 0.Method_arg_50 (var_188, 3)
  loc_17B6A9B:     MsgBox("** No Records Found to Print **", &H40, CVar(var_188), var_1B0, var_1D0)
  loc_17B6AB0:     global_130 = 0
  loc_17B6AB3:     Exit Sub
  loc_17B6AB4:   End If
  loc_17B6AB7:   var_992 = arg_C
  loc_17B6AC0:   If (var_992 = 1) Then
  loc_17B6AC9:     var_14C = "Paper Setting"
  loc_17B6ACE:     var_1A0 = var_14C
  loc_17B6AE4:     MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, var_1A0, var_1B0, var_1D0)
  loc_17B6AFD:     Set var_190 = var_90
  loc_17B6B06:     Set var_170 = Me 
  loc_17B6B16:     Call 0.Method_arg_16C (var_170, var_190, var_182, var_992)
  loc_17B6B21:     Set var_90 = var_190
  loc_17B6B27:     var_92 = var_182
  loc_17B6B36:     global_130 = 0
  loc_17B6B39:     GoTo loc_17B7BCE
  loc_17B6B3F:   Else
  loc_17B6B4B:     Call 0.Method_arg_F0 (var_170, global_130, var_92)
  loc_17B6B56:     MemVar_1F951E8 = var_170
  loc_17B6B76:     Call 0.Method_arg_64 (var_170, CVar(var_90), var_14C, var_15C)
  loc_17B6B7E:     Call 0.Method_arg_2C (global_130, -1)
  loc_17B6B86:   End If
  loc_17B6B89: Else
  loc_17B6B99:   Set var_170 = New
  loc_17B6BA8:   Call 0.Method_arg_1B4 (var_170, var_190)
  loc_17B6BB3:   Set var_8C = var_170
  loc_17B6BBC:   Set var_8C = var_190
  loc_17B6BCA:   Set var_90 = New 
  loc_17B6BD3:   Me.Recordset15.Sort = "PARTYNAME ASC"
  loc_17B6BE3:   Proc_183_7_EB17D4(var_1A0)
  loc_17B6BF3:   Proc_183_7_EB17D4(var_2A0, MemVar_1F950F4)
  loc_17B6BFC:   var_300 = CVar((CVar((var_730)))) 'Address
  loc_17B6C03:   Proc_183_7_EB17D4(var_310)
  loc_17B6C1F:   var_13C = "SELECT MAX(ACGROUP.GROUPNAME)As GroupName,MAX(PARTY) AS PARTYCODE,MAX(PARTY_NAME) AS PARTYNAME,MAX(ADD1) AS ADDR1,MAX(ADD2) AS ADDR2,MAX(CITY_NAME) AS CITYNAME,sum(credit)-SUM(DEBIT) As Bal FROM (VIEWLEDGER LEFT JOIN PARTY_LIST ON PARTY_LIST.SUBCODE=VIEWLEDGER.PARTY) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=PARTY_LIST.GROUPCODE WHERE V_DATE<"
  loc_17B6C4D:   var_200 = CVar(var_90) & var_1A0 & " " & CVar(var_9C) & " AND PARTY_LIST.GroupNature in ('A','L') AND ALIASYN='N' AND CODE='" & CVar(var_C4) 
  loc_17B6C6D:   var_290 = " Union SELECT MAX(ACGROUP.GROUPNAME)As GroupName,MAX(PARTY) AS PARTYCODE,MAX(PARTY_NAME) AS PARTYNAME,MAX(ADD1) AS ADDR1,MAX(ADD2) AS ADDR2,MAX(CITY_NAME) AS CITYNAME,sum(credit)-SUM(DEBIT) As Bal FROM (VIEWLEDGER LEFT JOIN PARTY_LIST ON PARTY_LIST.SUBCODE=VIEWLEDGER.PARTY) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=PARTY_LIST.GROUPCODE WHERE V_DATE BETWEEN "
  loc_17B6C9C:   var_350 = var_200 & "'  " & CVar(var_12C) & " GROUP BY ACGROUP.GROUPNAME,PARTY " & var_290 & var_2A0 & " AND " & var_310 & " " & CVar(var_9C) 
  loc_17B6CCB:   var_3B0 = var_350 & " AND PARTY_LIST.GroupNature NOT in ('A','L') AND ALIASYN='N' AND CODE='" & CVar(var_C4) & "' " & CVar(var_12C) & " GROUP BY ACGROUP.GROUPNAME,PARTY" 
  loc_17B6CD3:   var_90.Open var_3B0, CVar(MemVar_1F951E0), 2
  loc_17B6D0B:   ' Referenced from:   17B746C
  loc_17B6D11:   var_182 = var_90.EOF
  loc_17B6D1A:   If Not(var_182) Then
  loc_17B6D23:     var_13C = "Bal"
  loc_17B6D47:     var_14C = 0
  loc_17B6D59:     If CBool(var_90.Fields.Item(var_13C).Value <> var_14C) Then
  loc_17B6D67:       var_8C.AddNew var_13C, var_14C
  loc_17B6D97:       var_1A0 = Left(CVar(var_90.Fields.Item("PartyName")), &H23)
  loc_17B6DA9:       var_8C.Collect = "ACC_NAME"
  loc_17B6DD7:       var_180 = CVar(var_90.Fields.Item("GroupName")) 'Address
  loc_17B6DE5:       var_8C.Collect = "AName"
  loc_17B6E5C:       If (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt1").Value) Then
  loc_17B6E7E:         var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B6E8C:         var_8C.Collect = "DEBIT1"
  loc_17B6E9A:       Else
  loc_17B6F52:         var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt1").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt2").Value)
  loc_17B6F76:         If CBool(var_240) Then
  loc_17B6F98:           var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B6FA6:           var_8C.Collect = "DEBIT2"
  loc_17B6FB4:         Else
  loc_17B706C:           var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt2").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt3").Value)
  loc_17B7090:           If CBool(var_240) Then
  loc_17B70B2:             var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B70C0:             var_8C.Collect = "DEBIT3"
  loc_17B70CE:           Else
  loc_17B7186:             var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt3").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt4").Value)
  loc_17B71AA:             If CBool(var_240) Then
  loc_17B71CC:               var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B71DA:               var_8C.Collect = "DEBIT4"
  loc_17B71E8:             Else
  loc_17B72A0:               var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt4").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt5").Value)
  loc_17B72C4:               If CBool(var_240) Then
  loc_17B72E6:                 var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B72F4:                 var_8C.Collect = "DEBIT5"
  loc_17B7302:               Else
  loc_17B7342:                 var_998 = var_88.Fields
  loc_17B734A:                 var_99C = var_998.Item("Amt5")
  loc_17B7352:                 var_1B0 = var_99C.Value
  loc_17B735A:                 var_1D0 = (Abs(var_90.Fields.Item("Bal").Value) > var_1B0)
  loc_17B7370:                 var_9A0 = var_90.Fields
  loc_17B7378:                 var_9A4 = var_9A0.Item("Bal")
  loc_17B73DE:                 If CBool(var_1D0 And (Abs(var_9A4.Value) <= var_88.Fields.Item("Amt6").Value)) Then
  loc_17B7400:                   var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B740E:                   var_8C.Collect = "DEBIT6"
  loc_17B741C:                 Else
  loc_17B741F:                   var_13C = "Bal"
  loc_17B743B:                   var_180 = CVar(var_90.Fields.Item(var_13C)) 'Address
  loc_17B7440:                   var_14C = "Debit"
  loc_17B7449:                   var_8C.Collect = var_14C
  loc_17B7454:                 End If
  loc_17B7454:               End If
  loc_17B7454:             End If
  loc_17B7454:           End If
  loc_17B7454:         End If
  loc_17B7454:       End If
  loc_17B745F:       var_8C.Update var_13C, var_14C
  loc_17B7464:     End If
  loc_17B7467:     var_90.MoveNext
  loc_17B746C:     GoTo loc_17B6D0B
  loc_17B746F:   End If
  loc_17B7475:   var_1BC = var_8C.RecordCount
  loc_17B7483:   If (var_1BC <= 0) Then
  loc_17B748C:     Call 0.Method_arg_50 (var_188, var_180, var_180, var_180, var_180, var_180)
  loc_17B74AD:     MsgBox("** No Records Found to Print **", &H40, CVar(var_188), var_1B0, var_1D0)
  loc_17B74C2:     global_130 = 0
  loc_17B74C5:     Exit Sub
  loc_17B74C6:   End If
  loc_17B74C9:   var_9AE = arg_C
  loc_17B74D2:   If (var_9AE = 1) Then
  loc_17B74E0:     var_1A0 = "Paper Setting"
  loc_17B74F0:     var_180 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_17B74F6:     MsgBox(var_180, &H40, var_1A0, var_1B0, var_1D0)
  loc_17B750F:     Set var_190 = var_8C
  loc_17B7518:     Set var_170 = Me 
  loc_17B7528:     Call 0.Method_arg_168 (var_170, var_190, var_182, var_9AE, global_130, var_180)
  loc_17B7533:     Set var_8C = var_190
  loc_17B7539:     var_92 = var_182
  loc_17B7548:     global_130 = 0
  loc_17B754B:     GoTo loc_17B7BCE
  loc_17B7551:   Else
  loc_17B755D:     Call 0.Method_arg_F4 (var_170, global_130, var_92, var_180)
  loc_17B7568:     MemVar_1F951E8 = var_170
  loc_17B7580:     Call 0.Method_arg_90 (var_170, var_1BC, var_BE, 1)
  loc_17B7588:     Call 0.Method_arg_24 (var_180, var_1A0)
  loc_17B7594:     For var_9B2 = -1 To CInt(var_1BC):     3 = var_9B2 'Integer
  loc_17B75AD:       Call 0.Method_arg_90 (var_170, CLng(var_BE), var_190)
  loc_17B75B5:       Call 0.Method_arg_20 (var_188)
  loc_17B75BD:       Call 0.Method_arg_30 (-1)
  loc_17B75D3:       var_9C4 = Ucase(CVar(var_188)) 'Variant
  loc_17B75EC:       If (var_9C4 = "P1") Then
  loc_17B75F4:         var_14C = "0 - "
  loc_17B7627:         var_1B0 = ("Paper Setting" + Str(CVar(var_88.Fields.Item("Amt1"))))
  loc_17B764C:         Call 0.Method_arg_90 (var_998, CLng(var_BE))
  loc_17B7654:         Call 0.Method_arg_20 (var_99C)
  loc_17B765C:         Call 0.Method_arg_38 (CStr("'" & var_1B0 & "'"))
  loc_17B767D:       Else
  loc_17B7688:         If (var_9C4 = "P2") Then
  loc_17B76BF:           var_1A0 = (var_88.Fields.Item("Amt1").Value + 1)
  loc_17B76D2:           var_16C = " - "
  loc_17B772A:           Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17B7732:           Call 0.Method_arg_20 (var_9A4)
  loc_17B773A:           Call 0.Method_arg_38 (CStr("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) & "'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17B7767:         Else
  loc_17B7772:           If (var_9C4 = "P3") Then
  loc_17B77A9:             var_1A0 = (var_88.Fields.Item("Amt2").Value + 1)
  loc_17B77B8:             var_15C = " - "
  loc_17B77BD:             var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17B77EF:             var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_88.Fields.Item("Amt3"))))
  loc_17B7814:             Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17B781C:             Call 0.Method_arg_20 (var_9A4)
  loc_17B7824:             Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17B7851:           Else
  loc_17B785C:             If (var_9C4 = "P4") Then
  loc_17B7893:               var_1A0 = (var_88.Fields.Item("Amt3").Value + 1)
  loc_17B78A2:               var_15C = " - "
  loc_17B78A7:               var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17B78D9:               var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_88.Fields.Item("Amt4"))))
  loc_17B78FE:               Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17B7906:               Call 0.Method_arg_20 (var_9A4)
  loc_17B790E:               Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17B793B:             Else
  loc_17B7946:               If (var_9C4 = "P5") Then
  loc_17B797D:                 var_1A0 = (var_88.Fields.Item("Amt4").Value + 1)
  loc_17B798C:                 var_15C = " - "
  loc_17B7991:                 var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17B79C3:                 var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_88.Fields.Item("Amt5"))))
  loc_17B79E8:                 Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17B79F0:                 Call 0.Method_arg_20 (var_9A4)
  loc_17B79F8:                 Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17B7A25:               Else
  loc_17B7A30:                 If (var_9C4 = "P6") Then
  loc_17B7A67:                   var_1A0 = (var_88.Fields.Item("Amt5").Value + 1)
  loc_17B7A76:                   var_15C = " - "
  loc_17B7A7B:                   var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17B7A8E:                   var_998 = var_88.Fields
  loc_17B7A96:                   var_99C = var_998.Item("Amt6")
  loc_17B7AAD:                   var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_99C)))
  loc_17B7AD2:                   Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17B7ADA:                   Call 0.Method_arg_20 (var_9A4)
  loc_17B7AE2:                   Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17B7B0F:                 Else
  loc_17B7B1A:                   If (var_9C4 = "P7") Then
  loc_17B7B1D:                     var_14C = "'Above "
  loc_17B7B31:                     var_170 = var_88.Fields
  loc_17B7B5D:                     var_188 = CStr(var_14C & Str(CVar(var_170.Item("Amt6"))) & "'")
  loc_17B7B71:                     Call 0.Method_arg_90 (var_998, CLng(var_BE))
  loc_17B7B79:                     Call 0.Method_arg_20 (var_99C)
  loc_17B7B81:                     Call 0.Method_arg_38 (var_188)
  loc_17B7B9D:                   End If
  loc_17B7B9D:                 End If
  loc_17B7B9D:               End If
  loc_17B7B9D:             End If
  loc_17B7B9D:           End If
  loc_17B7B9D:         End If
  loc_17B7B9D:       End If
  loc_17B7BA0:     Next var_9B2 'Integer
  loc_17B7BBE:     Call 0.Method_arg_64 (var_170, CVar(var_8C))
  loc_17B7BC6:     Call 0.Method_arg_2C (var_14C)
  loc_17B7BCE:   End If
  loc_17B7BCE:   ' Referenced from:   17B754B
  loc_17B7BCE: End If
  loc_17B7BCE: ' Referenced from: 17B6B39
  loc_17B7BD3: Set var_88 = Nothing
  loc_17B7BDB: Set var_8C = Nothing
  loc_17B7BE3: Set var_90 = Nothing
  loc_17B7BE6: Exit Sub
  loc_17B7BE7: ' Referenced from: 17B5DB0
  loc_17B7BF5: Call 0.Method_arg_50 (var_188, 0)
  loc_17B7C0A: Proc_183_57_104B0BC(var_188, "Annexure")
  loc_17B7C16: Exit Sub
End Sub

Public Sub Proc_203_64_17B1C38
  'Data Table: 583348
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1A4 As String
  Dim var_178 As String
  Dim var_160 As Variant
  Dim unk_583395 As Connection15
  Dim var_88 As Recordset15
  Dim var_190 As Variant
  Dim var_8C As Recordset15
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_B4 As Double
  Dim var_13C As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1E8 As Variant
  Dim var_15C As Variant
  Dim var_1F8 As Variant
  Dim var_94 As Recordset15
  Dim var_116 As Integer
  Dim var_25C As Fields15
  Dim var_260 As Field20
  Dim var_1D8 As Variant
  Dim var_BC As Double
  Dim var_264 As Recordset15
  Dim var_90 As Recordset15
  Dim Me As Recordset15
  loc_17AFCC0: On Error Goto loc_17B1C06
  loc_17AFCD8: Set var_160 = CVar(CLng(0))(0)
  loc_17AFCFC: Call Proc_203_59_F525A0(CInt(0), CStr(var_170))
  loc_17AFD10: If (var_17A = 0) Then
  loc_17AFD18:   global_130 = 0
  loc_17AFD1B:   Exit Sub
  loc_17AFD1C: End If
  loc_17AFD27: Set var_160 = var_180(CInt(&HC))
  loc_17AFD2D: Call 0.Method_Proc_203_64_17B1C380 (global_130, var_17A)
  loc_17AFD35: var_170 = CVar(var_180) 'Address
  loc_17AFD56: If CBool(Trim(var_170) <> vbNullString) Then
  loc_17AFD6A:   Set var_160 = var_180(CInt(&HC))
  loc_17AFD70:   Call 0.Method_Proc_203_64_17B1C380 (var_178, " And VIEWLEDGER.LOGSite_Code='")
  loc_17AFD78:   DGSite.DispID_41 = var_180.Tag
  loc_17AFD88:   var_11C = var_178 & "'"
  loc_17AFD9C: Else
  loc_17AFDA3:   var_178 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078
  loc_17AFDAA:   var_11C = var_178 & "'"
  loc_17AFDB0: End If
  loc_17AFDB6: global_84 = vbNullString
  loc_17AFDBD: var_A0 = vbNullString
  loc_17AFDCC: Set var_160 = var_180(1)
  loc_17AFDD2: Call 0.Method_Proc_203_64_17B1C380 (var_172)
  loc_17AFDDA:  = var_180.Value
  loc_17AFDF0: If (CLng(var_172) = 0) Then
  loc_17AFE0E:   Call Proc_203_56_127C1B4(global_96, 1, CByte(1))
  loc_17AFE19:   global_84 = var_178
  loc_17AFE29:   If (global_130 = 0) Then
  loc_17AFE2C:     Exit Sub
  loc_17AFE2D:   End If
  loc_17AFE2D: End If
  loc_17AFE38: If (global_84 <> vbNullString) Then
  loc_17AFE4C:   var_A0 = " AND ACGROUP.GROUPCODE IN (" & global_84 & ")"
  loc_17AFE52: End If
  loc_17AFE67: Set var_160 = CVar(CLng(0))(1)
  loc_17AFE78: var_178 = CStr(DGSite.DispID_41)
  loc_17AFE7F: Set var_180 = var_178(var_178)
  loc_17AFE85: var_180.Text = 
  loc_17AFE9E: Set var_160 = (var_178)
  loc_17AFEA4:  = var_160.Text
  loc_17AFEAC: var_1A4 = "Date Upto"
  loc_17AFECD: If (Proc_183_49_EF3D10(CDate(var_178)) = 0) Then
  loc_17AFED5:   global_130 = 0
  loc_17AFED8:   Exit Sub
  loc_17AFED9: End If
  loc_17AFEED: var_178 = "SELECT * FROM FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F95078
  loc_17AFEFD: unk_583395.Execute var_178 & "'", var_170, -1
  loc_17AFF08: Set var_88 = var_160
  loc_17AFF2C: If (var_88.RecordCount = 0) Then
  loc_17AFF35:   Call 0.Method_arg_50 (var_178, var_160)
  loc_17AFF50:   var_170 = " ** Please Set Ageing Parameters ** "
  loc_17AFF56:   MsgBox(var_170, &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17AFF66:   Exit Sub
  loc_17AFF67: End If
  loc_17AFF6F: If (arg_10 = "Dr") Then
  loc_17AFF79:   var_A0 = var_A0 & " AND AcGroup.Nature='Customer'"
  loc_17AFF7C: End If
  loc_17AFF84: If (arg_10 = "Cr") Then
  loc_17AFF8E:   var_A0 = var_A0 & " AND AcGroup.Nature='Supplier'"
  loc_17AFF91: End If
  loc_17AFFA5: var_178 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.GROUPCODE AS CODE,SUBGROUP.NAME,ACGROUP.GroupName FROM SUBGROUP LEFT JOIN ACGROUP ON SUBGROUP.GROUPCODE=ACGROUP.GROUPCODE WHERE ACGROUP.ALIASYN='N' AND (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078
  loc_17AFFC3: unk_583395.Execute var_178 & "' OR SUBGROUP.LOGSITE_CODE='HO') " & var_A0 & " ORDER BY SUBGROUP.NAME", var_170, -1
  loc_17AFFCE: Set var_8C = var_160
  loc_17AFFE5: var_A4 = vbNullString
  loc_17AFFF8: Set var_160 = New
  loc_17B0007: Call 0.Method_arg_1B4 (var_160, var_180, var_160)
  loc_17B0012: Set var_90 = var_160
  loc_17B001B: Set var_90 = var_180
  loc_17B002B: Me.Recordset15.Sort = "ACC_NAME ASC"
  loc_17B0030: ' Referenced from: 17B1079
  loc_17B003F: If Not(var_8C.EOF) Then
  loc_17B0045:   var_E4 = CDbl(0)
  loc_17B004B:   var_EC = CDbl(0)
  loc_17B0051:   var_F4 = CDbl(0)
  loc_17B0057:   var_FC = CDbl(0)
  loc_17B005D:   var_104 = CDbl(0)
  loc_17B0063:   var_10C = CDbl(0)
  loc_17B0069:   var_114 = CDbl(0)
  loc_17B0075:   var_B4 = CDbl(0)
  loc_17B00BD:   var_1A0 = "SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value & "'=VIEWLEDGER.PARTY AND V_DATE<=" 
  loc_17B00CC:   Proc_183_7_EB17D4(var_1D8, CVar(var_258(var_1A0)), -1, var_25C, var_B4, CDbl(0))
  loc_17B00F4:   var_178 = CStr(var_114 & var_1D8 & " " & CVar(var_11C) & vbNullString)
  loc_17B00FE:   unk_583395.Execute var_178, var_10C, var_104
  loc_17B0109:   Set var_94 = var_25C
  loc_17B012F:   ' Referenced from: 17B0CE6
  loc_17B013E:   If Not(var_94.EOF) Then
  loc_17B0149:     If (arg_10 = "Dr") Then
  loc_17B0188:       If (var_94.Fields.Item("Credit").Value > 0) Then
  loc_17B01BC:         var_190 = (var_94.Fields.Item("Credit").Value + CVar(var_B4))
  loc_17B01C1:         var_B4 = CSng("SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value)
  loc_17B01D5:       Else
  loc_17B021F:         var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(var_FC(var_B4)), 1, 1))
  loc_17B026F:         If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17B02A3:           var_190 = (CVar(var_E4) + var_94.Fields.Item("Debit").Value)
  loc_17B02A8:           var_E4 = CSng(CVar(var_FC(var_B4)))
  loc_17B02BC:         Else
  loc_17B033E:           If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17B0372:             var_190 = (CVar(var_EC) + var_94.Fields.Item("Debit").Value)
  loc_17B0377:             var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17B038B:           Else
  loc_17B040D:             If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17B0441:               var_190 = (CVar(var_F4) + var_94.Fields.Item("Debit").Value)
  loc_17B0446:               var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17B045A:             Else
  loc_17B04DC:               If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17B0510:                 var_190 = (CVar(var_FC) + var_94.Fields.Item("Debit").Value)
  loc_17B0515:                 var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17B0529:               Else
  loc_17B05AB:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17B05DF:                   var_190 = (CVar(var_104) + var_94.Fields.Item("Debit").Value)
  loc_17B05E4:                   var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17B05F8:                 Else
  loc_17B067A:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And (CVar(var_116) <= var_88.Fields.Item("Age6").Value)) Then
  loc_17B06AE:                     var_190 = (CVar(var_10C) + var_94.Fields.Item("Debit").Value)
  loc_17B06B3:                     var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B06C7:                   Else
  loc_17B06F8:                     var_190 = (CVar(var_114) + var_94.Fields.Item("Debit").Value)
  loc_17B06FD:                     var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B070E:                   End If
  loc_17B070E:                 End If
  loc_17B070E:               End If
  loc_17B070E:             End If
  loc_17B070E:           End If
  loc_17B070E:         End If
  loc_17B070E:       End If
  loc_17B0711:     Else
  loc_17B0719:       If (arg_10 = "Cr") Then
  loc_17B0758:         If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_17B078C:           var_190 = (var_94.Fields.Item("Debit").Value + CVar(var_B4))
  loc_17B0791:           var_B4 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B07A5:         Else
  loc_17B07EF:           var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(var_114(var_B4)), 1, 1))
  loc_17B083F:           If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17B0873:             var_190 = (CVar(var_E4) + var_94.Fields.Item("Credit").Value)
  loc_17B0878:             var_E4 = CSng(CVar(var_114(var_B4)))
  loc_17B088C:           Else
  loc_17B090E:             If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17B0942:               var_190 = (CVar(var_EC) + var_94.Fields.Item("Credit").Value)
  loc_17B0947:               var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17B095B:             Else
  loc_17B09DD:               If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17B0A11:                 var_190 = (CVar(var_F4) + var_94.Fields.Item("Credit").Value)
  loc_17B0A16:                 var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17B0A2A:               Else
  loc_17B0AAC:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17B0AE0:                   var_190 = (CVar(var_FC) + var_94.Fields.Item("Credit").Value)
  loc_17B0AE5:                   var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17B0AF9:                 Else
  loc_17B0B7B:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17B0BAF:                     var_190 = (CVar(var_104) + var_94.Fields.Item("Credit").Value)
  loc_17B0BB4:                     var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17B0BC8:                   Else
  loc_17B0C16:                     var_25C = var_88.Fields
  loc_17B0C1E:                     var_260 = var_25C.Item("Age6")
  loc_17B0C2E:                     var_1C0 = (CVar(var_116) <= var_260.Value)
  loc_17B0C4A:                     If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And var_1C0) Then
  loc_17B0C7E:                       var_190 = (CVar(var_10C) + var_94.Fields.Item("Credit").Value)
  loc_17B0C83:                       var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B0C97:                     Else
  loc_17B0CC8:                       var_190 = (CVar(var_114) + var_94.Fields.Item("Credit").Value)
  loc_17B0CCD:                       var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B0CDE:                     End If
  loc_17B0CDE:                   End If
  loc_17B0CDE:                 End If
  loc_17B0CDE:               End If
  loc_17B0CDE:             End If
  loc_17B0CDE:           End If
  loc_17B0CDE:         End If
  loc_17B0CDE:       End If
  loc_17B0CDE:     End If
  loc_17B0CE1:     var_94.MoveNext
  loc_17B0CE6:     GoTo loc_17B012F
  loc_17B0CE9:   End If
  loc_17B0CF4:   var_D8(0) = var_E4
  loc_17B0D00:   var_D8(1) = var_EC
  loc_17B0D0C:   var_D8(2) = var_F4
  loc_17B0D18:   var_D8(3) = var_FC
  loc_17B0D24:   var_D8(4) = var_104
  loc_17B0D30:   var_D8(5) = var_10C
  loc_17B0D3C:   var_D8(6) = var_114
  loc_17B0D40:   var_BC = CDbl(7)
  loc_17B0D43:   ' Referenced from: 17B0DD7
  loc_17B0D4A:   If (var_BC <> CDbl(0)) Then
  loc_17B0D5D:     If (var_D8(CLng((var_BC - CDbl(1)))) > CDbl(0)) Then
  loc_17B0D70:       If (var_B4 >= var_D8(CLng((var_BC - CDbl(1))))) Then
  loc_17B0D83:         var_B4 = (var_B4 - var_D8(CLng((var_BC - CDbl(1)))))
  loc_17B0D94:         var_D8(CLng((var_BC - CDbl(1)))) = CDbl(0)
  loc_17B0D98:       Else
  loc_17B0DA8:         If (var_D8(CLng((var_BC - CDbl(1)))) > var_B4) Then
  loc_17B0DC6:           var_D8(CLng((var_BC - CDbl(1)))) = (var_D8(CLng((var_BC - CDbl(1)))) - var_B4)
  loc_17B0DCA:           var_B4 = CDbl(0)
  loc_17B0DCD:         End If
  loc_17B0DCD:       End If
  loc_17B0DCD:     End If
  loc_17B0DD4:     var_BC = (var_BC - CDbl(1))
  loc_17B0DD7:     GoTo loc_17B0D43
  loc_17B0DDA:   End If
  loc_17B0E1F:   var_BC = ((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))
  loc_17B0E2A:   var_12C = var_BC
  loc_17B0E3A:   var_13C = 0
  loc_17B0E54:   var_1A0 = Round(var_B4, 2)
  loc_17B0E77:   If CBool(Not (Round(var_12C, 2) = var_13C) And (var_1A0 = 0)) Then
  loc_17B0E7D:     Set var_264 = var_90 
  loc_17B0E8C:     var_264.AddNew var_12C, var_13C
  loc_17B0E9A:     var_13C = CVar(var_D8(0)) 'Double
  loc_17B0EA8:     var_264.Collect = "DEBIT1"
  loc_17B0EB6:     var_13C = CVar(var_D8(1)) 'Double
  loc_17B0EC4:     var_264.Collect = "DEBIT2"
  loc_17B0ED2:     var_13C = CVar(var_D8(2)) 'Double
  loc_17B0EE0:     var_264.Collect = "DEBIT3"
  loc_17B0EEE:     var_13C = CVar(var_D8(3)) 'Double
  loc_17B0EFC:     var_264.Collect = "DEBIT4"
  loc_17B0F0A:     var_13C = CVar(var_D8(4)) 'Double
  loc_17B0F18:     var_264.Collect = "DEBIT5"
  loc_17B0F26:     var_13C = CVar(var_D8(5)) 'Double
  loc_17B0F34:     var_264.Collect = "DEBIT6"
  loc_17B0F42:     var_13C = CVar(var_D8(6)) 'Double
  loc_17B0F50:     var_264.Collect = "Debit"
  loc_17B0F9A:     var_13C = CVar(((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))) 'Double
  loc_17B0FA8:     var_264.Collect = "TOTALDR"
  loc_17B0FB0:     var_13C = CVar(var_B4) 'Double
  loc_17B0FBE:     var_264.Collect = "Credit"
  loc_17B0FEE:     var_190 = Left(CVar(var_8C.Fields.Item("Name")), &H23)
  loc_17B1000:     var_264.Collect = "ACC_NAME"
  loc_17B1012:     var_12C = "GroupName"
  loc_17B101E:     var_160 = var_8C.Fields
  loc_17B1026:     var_180 = var_160.Item(var_12C)
  loc_17B103A:     var_190 = Left(CVar(var_180), &H23)
  loc_17B1043:     var_13C = "AName"
  loc_17B104C:     var_264.Collect = var_13C
  loc_17B1066:     var_264.Update var_12C, var_13C
  loc_17B106D:     Set var_264 = Nothing 
  loc_17B1071:   End If
  loc_17B1074:   var_8C.MoveNext
  loc_17B1079:   GoTo loc_17B0030
  loc_17B107C: End If
  loc_17B1082: var_1B0 = var_90.RecordCount
  loc_17B1090: If (var_1B0 <= 0) Then
  loc_17B1099:   Call 0.Method_arg_50 (var_178, var_190, var_190, var_13C, var_13C, var_13C, var_13C)
  loc_17B10BA:   MsgBox("** No Records Found to Print **", &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17B10CF:   global_130 = 0
  loc_17B10D2:   Exit Sub
  loc_17B10D3: End If
  loc_17B10DF: Call 0.Method_arg_D0 (var_160, global_130, var_13C, var_13C, var_13C)
  loc_17B10EA: MemVar_1F951E8 = var_160
  loc_17B1102: Call 0.Method_arg_90 (var_160, var_1B0, var_BE, 1)
  loc_17B110A: Call 0.Method_arg_24 (var_13C, var_13C)
  loc_17B1116: For var_268 = var_BC To CInt(var_1B0): var_BC = var_268 'Integer
  loc_17B112F:   Call 0.Method_arg_90 (var_160, CLng(var_BE), var_180)
  loc_17B1137:   Call 0.Method_arg_20 (var_178)
  loc_17B113F:   Call 0.Method_arg_30 (var_BC)
  loc_17B1147:   var_26C = var_178
  loc_17B1159:   If (var_26C = "title") Then
  loc_17B116D:     Call 0.Method_Proc_203_64_17B1C380 ()
  loc_17B1196:     If (Trim(CVar(var_180)) = vbNullString) Then
  loc_17B11A2:       Call 0.Method_arg_50 (var_178)
  loc_17B11C5:       Call 0.Method_arg_90 (var_180(CInt(&HC)), CLng(var_BE))
  loc_17B11CD:       Call 0.Method_arg_20 (var_180)
  loc_17B11D5:       Call 0.Method_arg_38 ("'" & var_178 & "'")
  loc_17B11ED:     Else
  loc_17B11F6:       Call 0.Method_arg_50 (var_178)
  loc_17B1214:       Set var_160 = var_180(CInt(&HC))
  loc_17B121A:       Call 0.Method_Proc_203_64_17B1C380 (CVar("'" & var_178 & " ("))
  loc_17B1231:       var_1C0 = ( + Trim(CVar(var_180)))
  loc_17B123A:       var_1D8 = (var_1C0 + ")")
  loc_17B1243:       var_1E8 = ((Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0) + "'")
  loc_17B125B:       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B1263:       Call 0.Method_arg_20 (var_260)
  loc_17B126B:       Call 0.Method_arg_38 (CStr(Not (Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0)))
  loc_17B1291:     End If
  loc_17B1294:   Else
  loc_17B129C:     If (var_26C = "ACNAME") Then
  loc_17B12AF:        = "'For A/C  :   "(var_178).Text
  loc_17B12D2:       Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17B12DA:       Call 0.Method_arg_20 (var_25C)
  loc_17B12E2:       Call 0.Method_arg_38 (var_178 & "'")
  loc_17B12FC:     Else
  loc_17B1304:       If (var_26C = "DATE") Then
  loc_17B1317:          = "'Upto Date :     "(var_178).Text
  loc_17B133A:         Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17B1342:         Call 0.Method_arg_20 (var_25C)
  loc_17B134A:         Call 0.Method_arg_38 (var_178 & "'")
  loc_17B1364:       Else
  loc_17B136C:         If (var_26C = "P1") Then
  loc_17B1374:           var_13C = "0 - "
  loc_17B13A7:           var_1A0 = ("'" + Str(CVar(var_88.Fields.Item("Age1"))))
  loc_17B13CC:           Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B13D4:           Call 0.Method_arg_20 (var_260)
  loc_17B13DC:           Call 0.Method_arg_38 (CStr("'" & CVar("'" & var_178 & " (") & "'"))
  loc_17B13FD:         Else
  loc_17B1405:           If (var_26C = "P2") Then
  loc_17B143C:             var_190 = (var_88.Fields.Item("Age1").Value + 1)
  loc_17B144F:             var_15C = " - "
  loc_17B14A7:             Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B14AF:             Call 0.Method_arg_20 (var_274)
  loc_17B14B7:             Call 0.Method_arg_38 (CStr("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) & "'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B14E4:           Else
  loc_17B14EC:             If (var_26C = "P3") Then
  loc_17B1523:               var_190 = (var_88.Fields.Item("Age2").Value + 1)
  loc_17B1532:               var_14C = " - "
  loc_17B1537:               var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B1569:               var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_88.Fields.Item("Age3"))))
  loc_17B158E:               Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B1596:               Call 0.Method_arg_20 (var_274)
  loc_17B159E:               Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B15CB:             Else
  loc_17B15D3:               If (var_26C = "P4") Then
  loc_17B160A:                 var_190 = (var_88.Fields.Item("Age3").Value + 1)
  loc_17B1619:                 var_14C = " - "
  loc_17B161E:                 var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B1650:                 var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_88.Fields.Item("Age4"))))
  loc_17B1675:                 Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B167D:                 Call 0.Method_arg_20 (var_274)
  loc_17B1685:                 Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B16B2:               Else
  loc_17B16BA:                 If (var_26C = "P5") Then
  loc_17B16F1:                   var_190 = (var_88.Fields.Item("Age4").Value + 1)
  loc_17B1700:                   var_14C = " - "
  loc_17B1705:                   var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B1737:                   var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_88.Fields.Item("Age5"))))
  loc_17B175C:                   Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B1764:                   Call 0.Method_arg_20 (var_274)
  loc_17B176C:                   Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B1799:                 Else
  loc_17B17A1:                   If (var_26C = "P6") Then
  loc_17B17D8:                     var_190 = (var_88.Fields.Item("Age5").Value + 1)
  loc_17B17E7:                     var_14C = " - "
  loc_17B17EC:                     var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B17FF:                     var_25C = var_88.Fields
  loc_17B1807:                     var_260 = var_25C.Item("Age6")
  loc_17B181E:                     var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_260)))
  loc_17B1843:                     Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B184B:                     Call 0.Method_arg_20 (var_274)
  loc_17B1853:                     Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B1880:                   Else
  loc_17B1888:                     If (var_26C = "P7") Then
  loc_17B189F:                       var_160 = var_88.Fields
  loc_17B18A7:                       var_180 = var_160.Item("Age6")
  loc_17B18DF:                       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B18E7:                       Call 0.Method_arg_20 (var_260)
  loc_17B18EF:                       Call 0.Method_arg_38 (CStr("'Above " & Str(CVar(var_180)) & "'"))
  loc_17B190E:                     Else
  loc_17B1916:                       If (var_26C = "P8") Then
  loc_17B1921:                         If (arg_10 = "Dr") Then
  loc_17B1937:                           Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B193F:                           Call 0.Method_arg_20 (var_180)
  loc_17B1947:                           Call 0.Method_arg_38 ("'Total Debit'")
  loc_17B1956:                         Else
  loc_17B195E:                           If (arg_10 = "Cr") Then
  loc_17B1974:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B197C:                             Call 0.Method_arg_20 (var_180)
  loc_17B1984:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17B1990:                           End If
  loc_17B1990:                         End If
  loc_17B1993:                       Else
  loc_17B199B:                         If (var_26C = "P9") Then
  loc_17B19A6:                           If (arg_10 = "Dr") Then
  loc_17B19BC:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B19C4:                             Call 0.Method_arg_20 (var_180)
  loc_17B19CC:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17B19DB:                           Else
  loc_17B19E3:                             If (arg_10 = "Cr") Then
  loc_17B19F9:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B1A01:                               Call 0.Method_arg_20 (var_180)
  loc_17B1A09:                               Call 0.Method_arg_38 ("'Total Debit'")
  loc_17B1A15:                             End If
  loc_17B1A15:                           End If
  loc_17B1A18:                         Else
  loc_17B1A20:                           If (var_26C = "HEADI") Then
  loc_17B1A2B:                             If (arg_10 = "Dr") Then
  loc_17B1A41:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B1A49:                               Call 0.Method_arg_20 (var_180)
  loc_17B1A51:                               Call 0.Method_arg_38 ("'<----------------------------- AMOUNT DEBITED FROM DAYS ------------------------------>'")
  loc_17B1A60:                             Else
  loc_17B1A68:                               If (arg_10 = "Cr") Then
  loc_17B1A7E:                                 Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B1A86:                                 Call 0.Method_arg_20 (var_180)
  loc_17B1A8E:                                 Call 0.Method_arg_38 ("'<----------------------------- AMOUNT CREDITED FROM DAYS ------------------------------>'")
  loc_17B1A9A:                               End If
  loc_17B1A9A:                             End If
  loc_17B1A9D:                           Else
  loc_17B1AA5:                             If (var_26C = "PageNo") Then
  loc_17B1AFB:                               Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B1B03:                               Call 0.Method_arg_20 (var_260)
  loc_17B1B0B:                               Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_17B1B2A:                             Else
  loc_17B1B32:                               If (var_26C = "DT") Then
  loc_17B1B35:                                 var_13C = "'"
  loc_17B1B4F:                                 var_160 = Me.Fields
  loc_17B1B74:                                 var_178 = CStr(var_13C & var_160.Item("daterfill").Value & "'")
  loc_17B1B88:                                 Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B1B90:                                 Call 0.Method_arg_20 (var_260)
  loc_17B1B98:                                 Call 0.Method_arg_38 (var_178)
  loc_17B1BB4:                               End If
  loc_17B1BB4:                             End If
  loc_17B1BB4:                           End If
  loc_17B1BB4:                         End If
  loc_17B1BB4:                       End If
  loc_17B1BB4:                     End If
  loc_17B1BB4:                   End If
  loc_17B1BB4:                 End If
  loc_17B1BB4:               End If
  loc_17B1BB4:             End If
  loc_17B1BB4:           End If
  loc_17B1BB4:         End If
  loc_17B1BB4:       End If
  loc_17B1BB4:     End If
  loc_17B1BB4:   End If
  loc_17B1BB7: Next var_268 'Integer
  loc_17B1BD5: Call 0.Method_arg_64 (var_160, CVar(var_90))
  loc_17B1BDD: Call 0.Method_arg_2C (var_13C)
  loc_17B1BEA: Set var_88 = Nothing
  loc_17B1BF2: Set var_8C = Nothing
  loc_17B1BFA: Set var_90 = Nothing
  loc_17B1C02: Set var_94 = Nothing
  loc_17B1C05: Exit Sub
  loc_17B1C06: ' Referenced from: 17AFCC0
  loc_17B1C14: Call 0.Method_arg_50 (var_178, 0)
  loc_17B1C29: Proc_183_57_104B0BC(var_178, "Aging")
  loc_17B1C35: Exit Sub
End Sub

Public Sub Proc_203_65_127DF94
  'Data Table: 583348
  Dim var_C8 As Variant
  Dim var_FC As Variant
  Dim var_F4 As String
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_B8 As String
  Dim var_130 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As String
  Dim var_320 As Variant
  Dim unk_583395 As Connection15
  Dim var_88 As Recordset15
  Dim var_10C As Variant
  Dim Me00 As Variant
  loc_127DA4C: On Error Goto loc_127DF61
  loc_127DA64: Set var_DC = CVar(CLng(0))(0)
  loc_127DA88: Call Proc_203_59_F525A0(CInt(0), CStr(var_EC))
  loc_127DA9C: If (var_F6 = 0) Then
  loc_127DAA4:   global_130 = 0
  loc_127DAA7:   Exit Sub
  loc_127DAA8: End If
  loc_127DABD: Set var_DC = CVar(CLng(1))(0)
  loc_127DAE1: Call Proc_203_59_F525A0(CInt(1), CStr(var_EC))
  loc_127DAF5: If (var_F6 = 0) Then
  loc_127DAFD:   global_130 = 0
  loc_127DB00:   Exit Sub
  loc_127DB01: End If
  loc_127DB07: global_84 = vbNullString
  loc_127DB0E: var_90 = vbNullString
  loc_127DB1D: Set var_DC = var_FC(1)
  loc_127DB23: Call 0.Method_Proc_203_65_127DF940 (var_EE, global_130, var_F6, DGSite.DispID_41)
  loc_127DB41: If (CLng(var_EE) = 0) Then
  loc_127DB5F:   Call Proc_203_56_127C1B4(global_96, 1, CByte(1))
  loc_127DB6A:   global_84 = var_F4
  loc_127DB7A:   If (var_FC.Value = 0) Then
  loc_127DB7D:     Exit Sub
  loc_127DB7E:   End If
  loc_127DB7E: End If
  loc_127DB89: If (global_84 <> vbNullString) Then
  loc_127DB9D:   var_90 = " AND VIEWLEDGER.PARTY IN (" & global_84 & ")"
  loc_127DBA3: End If
  loc_127DBB8: Set var_DC = CVar(CLng(0))(1)
  loc_127DBD6: CStr(DGSite.DispID_41)(CStr(DGSite.DispID_41)).Text = var_F6
  loc_127DBFD: Set var_DC = CVar(CLng(1))(1)
  loc_127DC15: Set var_FC = DGSite.DispID_41(CStr(DGSite.DispID_41))
  loc_127DC1B: var_FC.Text = 
  loc_127DC44: If (Proc_183_48_F06B28(Me) = 0) Then
  loc_127DC4C:   global_130 = 0
  loc_127DC4F:   Exit Sub
  loc_127DC50: End If
  loc_127DC65: Set var_DC = CVar(CLng(2))(1)
  loc_127DC87: If (CStr(DGSite.DispID_41) = "Debit") Then
  loc_127DC8D:   var_98 = " AND VIEWLEDGER.DEBIT>0 "
  loc_127DC93: Else
  loc_127DCA8:   Set var_DC = CVar(CLng(2))(1)
  loc_127DCB9:   var_F4 = CStr(DGSite.DispID_41)
  loc_127DCCA:   If (var_F4 = "Credit") Then
  loc_127DCD0:     var_98 = " AND VIEWLEDGER.Credit>0 "
  loc_127DCD3:   End If
  loc_127DCD3: End If
  loc_127DCDE: Set var_DC = var_FC(CInt(&HC))
  loc_127DCE4: Call 0.Method_Proc_203_65_127DF940 (global_130)
  loc_127DCF3: var_10C = Trim(CVar(var_FC))
  loc_127DD0D: If CBool(var_10C <> vbNullString) Then
  loc_127DD21:   Set var_DC = var_FC(CInt(&HC))
  loc_127DD27:   Call 0.Method_Proc_203_65_127DF940 (var_F4)
  loc_127DD2F:   " And VIEWLEDGER.LOGSite_Code='" = var_FC.Tag
  loc_127DD3F:   var_94 = var_F4 & "'"
  loc_127DD53: Else
  loc_127DD61:   var_94 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_127DD67: End If
  loc_127DD84: Proc_183_7_EB17D4(var_10C, CVar(var_380("SELECT MAX(VIEWLEDGER.PARTY) AS PARTY_cODE,MAX(SUBGROUP.NAME) AS PARTY_NAME, ")))
  loc_127DD8C: var_11C = -1 & var_10C 
  loc_127DD90: var_B8 = " AS V_DATE,Sum(DEBIT) AS DR,Sum(CREDIT) AS CR,'' AS v_type, 0 AS v_no,'' AS v_add,'' AS CHQ_NO,'' AS CHQ_DATE,'' AS CLG_DATE,'' AS NARRATION,'Opening Balance' AS Name1 FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE = VIEWLEDGER.PARTY WHERE V_DATE<"
  loc_127DD95: var_130 = var_11C & var_B8 
  loc_127DDA4: Proc_183_7_EB17D4(var_150)
  loc_127DDB0: var_C8 = " "
  loc_127DDDB: var_1E0 = CVar(var_DC(var_130)) & var_150 & var_C8 & CVar(var_90) & " AND SUBGROUP.NATURE='Bank' " & CVar(var_94) & " GROUP BY PARTY " 
  loc_127DDDF: var_1F0 = "Union SELECT VIEWLEDGER.PARTY AS PARTY_CODE,SUBGROUP.NAME AS PARTY_NAME,V_DATE,DEBIT AS DR,CREDIT AS CR,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,CLG_DATE,NARR AS NARRATION,SUBGROUP1.NAME AS NAME1 FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE = VIEWLEDGER.PARTY) LEFT JOIN SUBGROUP SUBGROUP1 ON VIEWLEDGER.party1=SUBGROUP1.SUBCODE WHERE V_DATE BETWEEN "
  loc_127DDF3: Proc_183_7_EB17D4(var_220)
  loc_127DE13: Proc_183_7_EB17D4(var_270)
  loc_127DE4A: var_320 = CVar((CVar((var_1E0 & var_1F0)) & var_220 & " AND ")) & var_270 & " " & CVar(var_90) & " " & CVar(var_98) & " AND SUBGROUP.NATURE='Bank' " 
  loc_127DE61: var_F4 = CStr(var_320 & CVar(var_94) & vbNullString)
  loc_127DE6B: unk_583395.Execute var_F4, , 
  loc_127DE76: Set var_88 = var_DC
  loc_127DECE: If (var_88.RecordCount <= 0) Then
  loc_127DED7:   Call 0.Method_arg_50 (var_F4)
  loc_127DEF8:   MsgBox("** No Records Found to Print **", &H40, CVar(var_F4), var_11C, var_130)
  loc_127DF0D:   global_130 = 0
  loc_127DF10:   Exit Sub
  loc_127DF11: End If
  loc_127DF1D: Call 0.Method_arg_110 (var_DC)
  loc_127DF28: MemVar_1F951E8 = var_DC
  loc_127DF48: Call 0.Method_arg_64 (var_DC, CVar(var_88), var_B8)
  loc_127DF50: Call 0.Method_arg_2C (var_C8)
  loc_127DF5D: Set var_88 = Nothing
  loc_127DF60: Exit Sub
  loc_127DF61: ' Referenced from: 127DA4C
  loc_127DF66: global_130 = 0
  loc_127DF6F: Call 0.Method_arg_50 (var_F4, global_130)
  loc_127DF84: Proc_183_57_104B0BC(var_F4, "BankReg")
  loc_127DF90: Exit Sub
  loc_127DF91: Me00 = global_130
End Sub

Public Sub Proc_203_66_14C290C
  'Data Table: 583348
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_118 As Variant
  Dim var_110 As String
  Dim var_108 As Variant
  Dim var_140 As Variant
  Dim var_D4 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim unk_583395 As Connection15
  Dim var_88 As Recordset15
  Dim var_130 As Variant
  Dim var_F8 As Fields15
  Dim var_170 As Variant
  Dim var_90 As Recordset15
  Dim var_10A As Integer
  Dim var_1F8 As Fields15
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_1E0 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_26C As Variant
  Dim var_270 As Recordset15
  Dim var_8C As Recordset15
  loc_14C1C28: On Error Goto loc_14C28DC
  loc_14C1C40: Set var_F8 = CVar(CLng(0))(0)
  loc_14C1C64: Call Proc_203_59_F525A0(CInt(0), CStr(var_108))
  loc_14C1C78: If (var_112 = 0) Then
  loc_14C1C80:   global_130 = 0
  loc_14C1C83:   Exit Sub
  loc_14C1C84: End If
  loc_14C1C99: Set var_F8 = CVar(CLng(1))(0)
  loc_14C1CBD: Call Proc_203_59_F525A0(CInt(1), CStr(var_108))
  loc_14C1CD1: If (var_112 = 0) Then
  loc_14C1CD9:   global_130 = 0
  loc_14C1CDC:   Exit Sub
  loc_14C1CDD: End If
  loc_14C1CE3: global_84 = vbNullString
  loc_14C1CEA: var_A0 = vbNullString
  loc_14C1CF9: Set var_F8 = var_118(1)
  loc_14C1CFF: Call 0.Method_Proc_203_66_14C290C0 (var_10A, global_130, var_112, DGSite.DispID_41)
  loc_14C1D1D: If (CLng(var_10A) = 0) Then
  loc_14C1D3B:   Call Proc_203_56_127C1B4(global_96, 1, CByte(1))
  loc_14C1D46:   global_84 = var_110
  loc_14C1D56:   If (var_118.Value = 0) Then
  loc_14C1D59:     Exit Sub
  loc_14C1D5A:   End If
  loc_14C1D5A: End If
  loc_14C1D65: If (global_84 <> vbNullString) Then
  loc_14C1D8A:   var_A0 = " AND SUBGROUP.GROUPCODE IN (" & global_84 & ") AND ACGROUP.GROUPCODE IN (" & global_84 & ")"
  loc_14C1D96: End If
  loc_14C1DAB: Set var_F8 = CVar(CLng(0))(1)
  loc_14C1DC9: CStr(DGSite.DispID_41)(CStr(DGSite.DispID_41)).Text = var_112
  loc_14C1DF0: Set var_F8 = CVar(CLng(1))(1)
  loc_14C1E01: var_110 = CStr(DGSite.DispID_41)
  loc_14C1E08: Set var_118 = DGSite.DispID_41(var_110)
  loc_14C1E0E: var_118.Text = 
  loc_14C1E37: If (Proc_183_48_F06B28(Me) = 0) Then
  loc_14C1E3F:   global_130 = 0
  loc_14C1E42:   Exit Sub
  loc_14C1E43: End If
  loc_14C1E4E: Set var_F8 = var_118(CInt(&HC))
  loc_14C1E54: Call 0.Method_Proc_203_66_14C290C0 (global_130)
  loc_14C1E63: var_130 = Trim(CVar(var_118))
  loc_14C1E7D: If CBool(var_130 <> vbNullString) Then
  loc_14C1E91:   Set var_F8 = var_118(CInt(&HC))
  loc_14C1E97:   Call 0.Method_Proc_203_66_14C290C0 (var_110)
  loc_14C1E9F:   " And LEDGER.Site_Code='" = var_118.Tag
  loc_14C1EAF:   var_B4 = var_110 & "'"
  loc_14C1EC3: Else
  loc_14C1ED1:   var_B4 = " And LEDGER.Site_Code='" & MemVar_1F95078 & "'"
  loc_14C1ED7: End If
  loc_14C1EE4: var_C4 = "Select SUBGROUP.GroupCode,Name,SubCode,MAX(GroupName) AS GNAME From SubGroup LEFT JOIN AcGroup on AcGroup.GROUPCODE=SUBGROUP.GROUPCODE Where SubCode Not In (Select DISTINCT SubCode From Ledger Where V_Date Between "
  loc_14C1EF4: Proc_183_7_EB17D4(var_130, CVar(var_1E0(var_C4)))
  loc_14C1EFC: var_140 = -1 & var_130 
  loc_14C1F05: var_150 = var_140 & " And " 
  loc_14C1F0D: var_160 = CVar(var_F8(var_150)) 'Address
  loc_14C1F14: Proc_183_7_EB17D4(var_170)
  loc_14C1F38: var_1C0 = var_160 & var_170 & ") " & CVar(var_A0) & " GROUP BY SubGroup.GroupCode,SubGroup.Name,SubGroup.SubCode" 
  loc_14C1F3C: var_110 = CStr(var_1C0)
  loc_14C1F46: unk_583395.Execute var_110, , 
  loc_14C1F51: Set var_88 = var_F8
  loc_14C1F87: If (var_88.RecordCount <= 0) Then
  loc_14C1F90:   Call 0.Method_arg_50 (var_110)
  loc_14C1FB1:   MsgBox("** No Records Found to Print **", &H40, CVar(var_110), var_140, var_150)
  loc_14C1FC6:   global_130 = 0
  loc_14C1FC9:   Exit Sub
  loc_14C1FCA: End If
  loc_14C1FDA: Set var_F8 = New
  loc_14C1FE9: Call 0.Method_arg_1A8 (var_F8, var_118)
  loc_14C1FF4: Set var_8C = var_F8
  loc_14C1FFD: Set var_8C = var_118
  loc_14C2007: ' Referenced from: 14C2822
  loc_14C2016: If Not(Me.Recordset15.EOF) Then
  loc_14C201C:   var_98 = vbNullString
  loc_14C2022:   var_9C = vbNullString
  loc_14C2032:   var_D4 = "Select ISNULL(sum(AmtDr),0)-ISNULL(sum(AmtCr),0) As OpBal  From Ledger Where SubCode='"
  loc_14C2079:   Proc_183_7_EB17D4(var_160, CVar(var_1C0(" And " & var_88.Fields.Item("subcode").Value & "' And V_DATE<")), -1)
  loc_14C20AB:   unk_583395.Execute CStr(var_1F8 & var_160 & " " & CVar(var_B4) & vbNullString), global_130, 
  loc_14C20B6:   Set var_90 = var_1F8
  loc_14C20F0:   If (var_90.RecordCount > 0) Then
  loc_14C211B:     var_10A = IsNull(CVar(var_90.Fields.Item("OpBal")))
  loc_14C212D:     var_1F8 = var_90.Fields
  loc_14C2159:     var_A8 = CSng(IIf(var_10A, 0, CVar(var_1F8.Item("OpBal"))))
  loc_14C2170:   End If
  loc_14C217D:   var_D4 = "SELECT ISNULL(sum(AmtDr),0)-ISNULL(sum(AmtCr),0) AS ClBal FROM Ledger Where SubCode='"
  loc_14C21C4:   Proc_183_7_EB17D4(var_160, CVar(var_1C0("OpBal" & var_88.Fields.Item("subcode").Value & "' And V_Date<=")), -1)
  loc_14C21F6:   unk_583395.Execute CStr(var_1F8 & var_160 & " " & CVar(var_B4) & vbNullString), var_A8, var_10A
  loc_14C2201:   Set var_90 = var_1F8
  loc_14C223B:   If (var_90.RecordCount > 0) Then
  loc_14C2266:     var_10A = IsNull(CVar(var_90.Fields.Item("clbal")))
  loc_14C2278:     var_1F8 = var_90.Fields
  loc_14C22A4:     var_B0 = CSng(IIf(var_10A, 0, CVar(var_1F8.Item("clbal"))))
  loc_14C22BB:   End If
  loc_14C22C8:   var_D4 = "SELECT subgroup.Name,V_DATE,AMTCR,AMTDR,v_type,v_no FROM LEDGER LEFT JOIN subgroup ON LEDGER.CONTRASUB=subgroup.SubCode WHERE LEDGER.SUBCODE='"
  loc_14C230F:   Proc_183_7_EB17D4(var_160, CVar(var_1C0(var_D4 & var_88.Fields.Item("subcode").Value & "' AND V_DATE<")), -1)
  loc_14C2341:   unk_583395.Execute CStr(var_1F8 & var_160 & " AND AMTDR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC"), var_B0, var_10A
  loc_14C234C:   Set var_90 = var_1F8
  loc_14C2386:   If (var_90.RecordCount > 0) Then
  loc_14C23C8:     var_150 = (CVar(CStr(var_90.Fields.Item("V_DATE").Value)) + Space(1))
  loc_14C23DE:     var_1F8 = var_90.Fields
  loc_14C23EE:     var_160 = var_1F8.Item("V_Type").Value
  loc_14C23FB:     var_180 = (CVar(var_1C0("V_Type" & var_88.Fields.Item("subcode").Value & "' AND V_DATE<")) + CVar(CStr(var_160)))
  loc_14C240F:     var_1A0 = (var_1F8 & var_160 & " AND AMTDR>0 " + Space(1))
  loc_14C2435:     var_1C0 = var_90.Fields.Item("V_NO").Value
  loc_14C2442:     var_214 = (var_1F8 & var_160 & " AND AMTDR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC" + CVar(CStr(var_1C0)))
  loc_14C2456:     var_234 = (var_214 + Space(1))
  loc_14C2489:     var_26C = (var_234 + CVar(CStr(var_90.Fields.Item("AmtDr").Value)))
  loc_14C248E:     var_98 = CStr(var_26C)
  loc_14C24C9:   End If
  loc_14C24D6:   var_D4 = "SELECT subgroup.Name,V_DATE,AMTcr,AMTDR,v_type,v_no FROM LEDGER LEFT JOIN subgroup ON LEDGER.CONTRASUB=subgroup.SubCode WHERE LEDGER.SUBCODE='"
  loc_14C251D:   Proc_183_7_EB17D4(var_160, CVar(var_1C0(var_D4 & var_88.Fields.Item("subcode").Value & "' AND V_DATE<")))
  loc_14C2525:   var_170 = -1 & var_160 
  loc_14C2545:   var_110 = CStr(CVar(CStr(var_160)) & " AND AMTCR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC")
  loc_14C254F:   unk_583395.Execute var_110, var_1F8, 
  loc_14C255A:   Set var_90 = var_1F8
  loc_14C2594:   If (var_90.RecordCount > 0) Then
  loc_14C259D:     var_C4 = "V_DATE"
  loc_14C25C3:     var_140 = CVar(CStr(var_90.Fields.Item(var_C4).Value)) 'String
  loc_14C25D6:     var_150 = (var_140 + Space(1))
  loc_14C25E0:     var_D4 = "V_Type"
  loc_14C2609:     var_180 = (CVar(var_1C0(var_D4 & var_88.Fields.Item("subcode").Value & "' AND V_DATE<")) + CVar(CStr(var_90.Fields.Item(var_D4).Value)))
  loc_14C261D:     var_1A0 = (CVar(CStr(var_90.Fields.Item(var_D4).Value)) & " AND AMTCR>0 " + Space(1))
  loc_14C2650:     var_214 = (CVar(CStr(var_90.Fields.Item(var_D4).Value)) & " AND AMTCR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC" + CVar(CStr(var_90.Fields.Item("V_NO").Value)))
  loc_14C2664:     var_234 = (var_214 + Space(1))
  loc_14C2697:     var_26C = (var_234 + CVar(CStr(var_90.Fields.Item("AmtCr").Value)))
  loc_14C269C:     var_9C = CStr(var_26C)
  loc_14C26D7:   End If
  loc_14C26DA:   Set var_270 = var_8C 
  loc_14C26E9:   var_270.AddNew var_C4, var_D4
  loc_14C270D:   var_108 = CVar(var_88.Fields.Item("Name")) 'Address
  loc_14C271B:   var_270.Collect = "ACCNAME"
  loc_14C2746:   var_130 = Format(var_A8, "0.00")
  loc_14C2758:   var_270.Collect = "OpBal"
  loc_14C2784:   var_130 = Format(var_B0, "0.00")
  loc_14C278D:   var_E4 = "clbal"
  loc_14C2796:   var_270.Collect = var_E4
  loc_14C27A5:   var_D4 = CVar(var_98) 'String
  loc_14C27B2:   var_270.Collect = "LastDrVNo"
  loc_14C27BA:   var_D4 = CVar(var_9C) 'String
  loc_14C27C7:   var_270.Collect = "LastCrVNo"
  loc_14C27CF:   var_C4 = "GName"
  loc_14C27DB:   var_F8 = var_88.Fields
  loc_14C27EB:   var_108 = CVar(var_F8.Item(var_C4)) 'Address
  loc_14C27F0:   var_D4 = "GroupName"
  loc_14C27F9:   var_270.Collect = var_D4
  loc_14C280F:   var_270.Update var_C4, var_D4
  loc_14C2816:   Set var_270 = Nothing 
  loc_14C281D:   var_88.MoveNext
  loc_14C2822:   GoTo loc_14C2007
  loc_14C2825: End If
  loc_14C2839: If (var_8C.RecordCount <= 0) Then
  loc_14C2842:   Call 0.Method_arg_50 (var_110, var_108, var_D4, var_D4, var_130, 1)
  loc_14C2850:   var_130 = CVar(var_110) 'String
  loc_14C2863:   MsgBox("** No Records Found to Print **", &H40, var_130, var_140, CVar(var_90.Fields.Item("V_NO").Value(var_D4 & var_88.Fields.Item("subcode").Value & "' AND V_DATE<")))
  loc_14C2878:   global_130 = 0
  loc_14C287B:   Exit Sub
  loc_14C287C: End If
  loc_14C2888: Call 0.Method_arg_10C (var_F8, global_130, 1, var_130)
  loc_14C2893: MemVar_1F951E8 = var_F8
  loc_14C28B3: Call 0.Method_arg_64 (var_F8, CVar(var_8C), var_D4, var_E4)
  loc_14C28BB: Call 0.Method_arg_2C (1, 1)
  loc_14C28C8: Set var_88 = Nothing
  loc_14C28D0: Set var_8C = Nothing
  loc_14C28D8: Set var_90 = Nothing
  loc_14C28DB: Exit Sub
  loc_14C28DC: ' Referenced from: 14C1C28
  loc_14C28EA: Call 0.Method_arg_50 (var_110, 0)
  loc_14C28FF: Proc_183_57_104B0BC(var_110, "NonTrans")
  loc_14C290B: Exit Sub
End Sub

Public Sub Proc_203_67_1273DB4
  'Data Table: 583348
  Dim var_C8 As Variant
  Dim var_F4 As String
  Dim var_FC As TextBox
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_B8 As String
  Dim var_160 As Variant
  Dim var_1F0 As Variant
  Dim var_240 As String
  Dim var_270 As Variant
  Dim unk_583395 As Connection15
  Dim var_88 As Recordset15
  loc_127386C: On Error Goto loc_1273D81
  loc_1273884: Set var_DC = CVar(CLng(0))(0)
  loc_12738A8: Call Proc_203_59_F525A0(CInt(0), CStr(var_EC))
  loc_12738BC: If (var_F6 = 0) Then
  loc_12738C4:   global_130 = 0
  loc_12738C7:   Exit Sub
  loc_12738C8: End If
  loc_12738DD: Set var_DC = CVar(CLng(1))(0)
  loc_1273901: Call Proc_203_59_F525A0(CInt(1), CStr(var_EC))
  loc_1273915: If (var_F6 = 0) Then
  loc_127391D:   global_130 = 0
  loc_1273920:   Exit Sub
  loc_1273921: End If
  loc_1273936: Set var_DC = CVar(CLng(2))(0)
  loc_127395A: Call Proc_203_59_F525A0(CInt(2), CStr(var_EC))
  loc_127396E: If (var_F6 = 0) Then
  loc_1273976:   global_130 = 0
  loc_1273979:   Exit Sub
  loc_127397A: End If
  loc_127398F: Set var_DC = CVar(CLng(0))(1)
  loc_12739AD: global_130(CStr(DGSite.DispID_41)).Text = var_F6
  loc_12739D4: Set var_DC = CVar(CLng(1))(1)
  loc_12739E5: var_F4 = CStr(DGSite.DispID_41)
  loc_12739EC: Set var_FC = DGSite.DispID_41(var_F4)
  loc_12739F2: var_FC.Text = global_130
  loc_1273A1B: If (Proc_183_48_F06B28(Me, var_F6, DGSite.DispID_41) = 0) Then
  loc_1273A23:   global_130 = 0
  loc_1273A26:   Exit Sub
  loc_1273A27: End If
  loc_1273A32: Set var_DC = var_FC(CInt(&HC))
  loc_1273A38: Call 0.Method_Proc_203_67_1273DB40 (global_130, global_130)
  loc_1273A61: If CBool(Trim(CVar(var_FC)) <> vbNullString) Then
  loc_1273A75:   Set var_DC = var_FC(CInt(&HC))
  loc_1273A7B:   Call 0.Method_Proc_203_67_1273DB40 (var_F4, " And VIEWLEDGER.LOGSite_Code='")
  loc_1273A83:   var_F6 = var_FC.Tag
  loc_1273A93:   var_98 = DGSite.DispID_41 & var_F4 & "'"
  loc_1273AA7: Else
  loc_1273AB5:   var_98 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_1273ABB: End If
  loc_1273AD0: Set var_DC = CVar(CLng(2))(1)
  loc_1273AFD: (CStr(Trim(CVar(CStr(DGSite.DispID_41))))).Text = 
  loc_1273B2A: Set var_DC = CVar(CLng(2))(2)
  loc_1273B3B: var_10C = CVar(CStr(DGSite.DispID_41)) 'String
  loc_1273B4A: var_8C = CStr(Trim(var_10C))
  loc_1273B75: Proc_183_7_EB17D4(var_10C)
  loc_1273B8E: var_150 = CVar((CVar((CVar(" WHERE PARTY='" & var_8C & "' AND CLG_DATE BETWEEN "))) & var_10C & " AND ")) 'Address
  loc_1273B95: Proc_183_7_EB17D4(var_160)
  loc_1273BE3: Proc_183_7_EB17D4(var_10C, CVar(var_2F0("SELECT 1 AS TT,")))
  loc_1273BEB: var_11C = -1 & var_10C 
  loc_1273BEF: var_B8 = " AS V_DATE,SUM(credit) AS CR,SUM(debit) AS DR,'OP' AS v_type,0 AS v_no,'' AS v_add,'' AS CHQ_NO,NULL AS CHQ_DATE,"
  loc_1273BF4: var_130 = CVar(" WHERE PARTY='" & var_8C & "' AND CLG_DATE BETWEEN ") & var_B8 
  loc_1273C03: Proc_183_7_EB17D4(var_150)
  loc_1273C0F: var_C8 = " AS CLG_DATE,'' AS NARRATION,MAX(PARTY_NAME) AS PARTYNAME,MAX(PARTY_LIST.ADD1) AS ADDRESS1,MAX(PARTY_LIST.ADD2) AS ADDRESS2,MAX(CITY_NAME) AS CITYNAME,'Opening Balance' AS CONTRA_NAME FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party1=SUBGROUP.SUBCODE) LEFT JOIN PARTY_LIST ON VIEWLEDGER.party=PARTY_LIST.SUBCODE WHERE PARTY='"
  loc_1273C36: Proc_183_7_EB17D4(var_1C0)
  loc_1273C47: var_1F0 = CVar((CVar(var_DC(var_130)) & var_150 & var_C8 & CVar(var_8C) & "' AND CLG_DATE<")) & var_1C0 & " AND CLG_DATE IS NOT NULL " 
  loc_1273C5E: var_240 = "UNION SELECT 2 AS TT,V_DATE,credit AS CR,debit AS DR,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,CLG_DATE,MNARR+' '+NARR AS NARRATION,PARTY_NAME AS PARTYNAME,PARTY_LIST.ADD1 AS ADDRESS1,PARTY_LIST.ADD2 AS ADDRESS2,CITY_NAME AS CITYNAME,SUBGROUP.NAME AS CONTRA_NAME FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party1=SUBGROUP.SUBCODE) LEFT JOIN PARTY_LIST ON VIEWLEDGER.party=PARTY_LIST.SUBCODE "
  loc_1273C6D: var_270 = var_1F0 & CVar(var_98) & " GROUP BY VIEWLEDGER.PARTY " & var_240 & CVar(CStr(var_150 & CVar(var_DC(var_130)) & var_150 & " AND CLG_DATE IS NOT NULL")) 
  loc_1273C8D: var_F4 = CStr(var_270 & " " & CVar(var_98) & vbNullString)
  loc_1273C97: unk_583395.Execute var_F4, , 
  loc_1273CA2: Set var_88 = var_DC
  loc_1273CEE: If (var_88.RecordCount <= 0) Then
  loc_1273CF7:   Call 0.Method_arg_50 (var_F4)
  loc_1273D18:   MsgBox("** No Records Found to Print **", &H40, CVar(var_F4), CVar(" WHERE PARTY='" & var_8C & "' AND CLG_DATE BETWEEN "), var_130)
  loc_1273D2D:   global_130 = 0
  loc_1273D30:   Exit Sub
  loc_1273D31: End If
  loc_1273D3D: Call 0.Method_arg_118 (var_DC)
  loc_1273D48: MemVar_1F951E8 = var_DC
  loc_1273D68: Call 0.Method_arg_64 (var_DC, CVar(var_88), var_B8)
  loc_1273D70: Call 0.Method_arg_2C (var_C8)
  loc_1273D7D: Set var_88 = Nothing
  loc_1273D80: Exit Sub
  loc_1273D81: ' Referenced from: 127386C
  loc_1273D8F: Call 0.Method_arg_50 (var_F4, 0)
  loc_1273DA4: Proc_183_57_104B0BC(var_F4, "Clg")
  loc_1273DB0: Exit Sub
  loc_1273DB1: VCallFPR8
End Sub

Public Sub Proc_203_68_11F8818
  'Data Table: 583348
  Dim var_C8 As Long
  Dim var_F4 As String
  Dim var_FC As TextBox
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_130 As Variant
  Dim var_B8 As String
  Dim unk_583395 As Connection15
  Dim var_88 As Recordset15
  loc_11F839C: On Error Goto loc_11F87E5
  loc_11F83B4: Set var_DC = CVar(CLng(0))(0)
  loc_11F83D8: Call Proc_203_59_F525A0(CInt(0), CStr(var_EC))
  loc_11F83EC: If (var_F6 = 0) Then
  loc_11F83F4:   global_130 = 0
  loc_11F83F7:   Exit Sub
  loc_11F83F8: End If
  loc_11F840D: Set var_DC = CVar(CLng(1))(0)
  loc_11F8431: Call Proc_203_59_F525A0(CInt(1), CStr(var_EC))
  loc_11F8445: If (var_F6 = 0) Then
  loc_11F844D:   global_130 = 0
  loc_11F8450:   Exit Sub
  loc_11F8451: End If
  loc_11F8466: Set var_DC = CVar(CLng(2))(0)
  loc_11F848A: Call Proc_203_59_F525A0(CInt(2), CStr(var_EC))
  loc_11F849E: If (var_F6 = 0) Then
  loc_11F84A6:   global_130 = 0
  loc_11F84A9:   Exit Sub
  loc_11F84AA: End If
  loc_11F84BF: Set var_DC = CVar(CLng(0))(1)
  loc_11F84DD: global_130(CStr(DGSite.DispID_41)).Text = var_F6
  loc_11F8504: Set var_DC = CVar(CLng(1))(1)
  loc_11F8515: var_F4 = CStr(DGSite.DispID_41)
  loc_11F851C: Set var_FC = DGSite.DispID_41(var_F4)
  loc_11F8522: var_FC.Text = global_130
  loc_11F854B: If (Proc_183_48_F06B28(Me, var_F6, DGSite.DispID_41) = 0) Then
  loc_11F8553:   global_130 = 0
  loc_11F8556:   Exit Sub
  loc_11F8557: End If
  loc_11F8562: Set var_DC = var_FC(CInt(&HC))
  loc_11F8568: Call 0.Method_Proc_203_68_11F88180 (global_130, global_130)
  loc_11F8591: If CBool(Trim(CVar(var_FC)) <> vbNullString) Then
  loc_11F85A5:   Set var_DC = var_FC(CInt(&HC))
  loc_11F85AB:   Call 0.Method_Proc_203_68_11F88180 (var_F4, " And VIEWLEDGER.LOGSite_Code='")
  loc_11F85B3:   var_F6 = var_FC.Tag
  loc_11F85C3:   var_98 = DGSite.DispID_41 & var_F4 & "'"
  loc_11F85D7: Else
  loc_11F85E5:   var_98 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_11F85EB: End If
  loc_11F8600: Set var_DC = CVar(CLng(2))(1)
  loc_11F862D: (CStr(Trim(CVar(CStr(DGSite.DispID_41))))).Text = 
  loc_11F864D: var_C8 = 2
  loc_11F865A: Set var_DC = CVar(CLng(2))(var_C8)
  loc_11F866B: var_10C = CVar(CStr(DGSite.DispID_41)) 'String
  loc_11F8697: var_11C = CVar(" WHERE PARTY='" & CStr(Trim(var_10C)) & "' AND V_date BETWEEN ") 'String
  loc_11F869E: var_EC = CVar((var_11C)) 'Address
  loc_11F86A5: Proc_183_7_EB17D4(var_10C)
  loc_11F86AD: var_130 = var_EC & var_10C 
  loc_11F86C5: Proc_183_7_EB17D4(var_160)
  loc_11F86D1: var_B8 = " AND CHQ_NO<> '' AND CHQ_NO IS NOT NULL AND CLG_DATE IS NULL"
  loc_11F870A: var_F4 = "SELECT V_DATE,credit,debit,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,CLG_DATE,NARR AS NARRATION,PARTY_NAME,PARTY_LIST.ADD1,PARTY_LIST.ADD2,CITY_NAME,SUBGROUP.NAME AS CONTRA_NAME FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party1=SUBGROUP.SUBCODE) LEFT JOIN PARTY_LIST ON VIEWLEDGER.party=PARTY_LIST.SUBCODE " & CStr(CVar((var_130 & " AND ")) & var_160 & var_B8)
  loc_11F8721: unk_583395.Execute var_F4 & " " & var_98, var_EC, -1
  loc_11F872C: Set var_88 = var_DC
  loc_11F8752: If (var_88.RecordCount <= 0) Then
  loc_11F875B:   Call 0.Method_arg_50 (var_F4)
  loc_11F877C:   MsgBox("** No Records Found to Print **", &H40, CVar(var_F4), var_11C, var_130)
  loc_11F8791:   global_130 = 0
  loc_11F8794:   Exit Sub
  loc_11F8795: End If
  loc_11F87A1: Call 0.Method_arg_114 (var_DC, global_130)
  loc_11F87AC: MemVar_1F951E8 = var_DC
  loc_11F87CC: Call 0.Method_arg_64 (var_DC, CVar(var_88), var_B8)
  loc_11F87D4: Call 0.Method_arg_2C (var_C8)
  loc_11F87E1: Set var_88 = Nothing
  loc_11F87E4: Exit Sub
  loc_11F87E5: ' Referenced from: 11F839C
  loc_11F87F3: Call 0.Method_arg_50 (var_F4, 0)
  loc_11F8808: Proc_183_57_104B0BC(var_F4, "ClgNot")
  loc_11F8814: Exit Sub
End Sub

Public Sub Proc_203_69_13B2878(arg_C) '13B2878
  'Data Table: 583348
  Dim var_D4 As Variant
  Dim var_100 As String
  Dim var_108 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim unk_583395 As Connection15
  Dim var_88 As Recordset15
  Dim var_E8 As Fields15
  Dim var_C4 As Variant
  Dim var_158 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_8C As Recordset15
  Dim var_1DA As Integer
  Dim var_1D8 As Variant
  Dim var_9A As Integer
  loc_13B1F60: On Error Goto loc_13B2848
  loc_13B1F78: Set var_E8 = CVar(CLng(0))(0)
  loc_13B1F9C: Call Proc_203_59_F525A0(CInt(0), CStr(var_F8))
  loc_13B1FB0: If (var_102 = 0) Then
  loc_13B1FB8:   global_130 = 0
  loc_13B1FBB:   Exit Sub
  loc_13B1FBC: End If
  loc_13B1FD1: Set var_E8 = CVar(CLng(1))(0)
  loc_13B1FF5: Call Proc_203_59_F525A0(CInt(1), CStr(var_F8))
  loc_13B2009: If (var_102 = 0) Then
  loc_13B2011:   global_130 = 0
  loc_13B2014:   Exit Sub
  loc_13B2015: End If
  loc_13B202A: Set var_E8 = CVar(CLng(2))(0)
  loc_13B204E: Call Proc_203_59_F525A0(CInt(2), CStr(var_F8))
  loc_13B2062: If (var_102 = 0) Then
  loc_13B206A:   global_130 = 0
  loc_13B206D:   Exit Sub
  loc_13B206E: End If
  loc_13B2083: Set var_E8 = CVar(CLng(0))(1)
  loc_13B20A1: global_130(CStr(DGSite.DispID_41)).Text = var_102
  loc_13B20C8: Set var_E8 = CVar(CLng(1))(1)
  loc_13B20D9: var_100 = CStr(DGSite.DispID_41)
  loc_13B20E0: Set var_108 = DGSite.DispID_41(var_100)
  loc_13B20E6: var_108.Text = global_130
  loc_13B210F: If (Proc_183_48_F06B28(Me, var_102, DGSite.DispID_41) = 0) Then
  loc_13B2117:   global_130 = 0
  loc_13B211A:   Exit Sub
  loc_13B211B: End If
  loc_13B2126: Set var_E8 = var_108(CInt(&HC))
  loc_13B212C: Call 0.Method_Proc_203_69_13B28780 (global_130, global_130)
  loc_13B2155: If CBool(Trim(CVar(var_108)) <> vbNullString) Then
  loc_13B2169:   Set var_E8 = var_108(CInt(&HC))
  loc_13B216F:   Call 0.Method_Proc_203_69_13B28780 (var_100, " And VIEWLEDGER.LOGSite_Code='")
  loc_13B2177:   var_102 = var_108.Tag
  loc_13B2187:   var_A0 = DGSite.DispID_41 & var_100 & "'"
  loc_13B219B: Else
  loc_13B21A2:   var_100 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078
  loc_13B21A9:   var_A0 = var_100 & "'"
  loc_13B21AF: End If
  loc_13B21BA: Set var_E8 = var_108(CInt(&HC))
  loc_13B21C0: Call 0.Method_Proc_203_69_13B28780 ()
  loc_13B21C8: var_F8 = CVar(var_108) 'Address
  loc_13B21E9: If CBool(Trim(var_F8) <> vbNullString) Then
  loc_13B21FD:   Set var_E8 = var_108(CInt(&HC))
  loc_13B2203:   Call 0.Method_Proc_203_69_13B28780 (var_100)
  loc_13B220B:   " And LEDGER.LOGSite_Code='" = var_108.Tag
  loc_13B221B:   var_A4 = var_100 & "'"
  loc_13B222F: Else
  loc_13B223D:   var_A4 = " And LEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_13B2243: End If
  loc_13B2258: Set var_E8 = CVar(CLng(2))(1)
  loc_13B2285: (CStr(Trim(CVar(CStr(DGSite.DispID_41))))).Text = 
  loc_13B22C3: var_118 = CVar(CStr(DGSite.DispID_41)) 'String
  loc_13B22D2: var_90 = CStr(Trim(var_118))
  loc_13B2305: unk_583395.Execute "SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_90 & "'", var_F8, -1
  loc_13B2310: Set var_88 = CVar(CLng(2))(2)
  loc_13B2334: If (var_88.RecordCount > 0) Then
  loc_13B2349:   var_E8 = var_88.Fields
  loc_13B23B7:   If CBool((var_E8.Item("GroupNature").Value = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_13B23CE:     var_100 = "SELECT SUM(CREDIT)-SUM(DEBIT) AS OPBAL from VIEWLEDGER WHERE PARTY='" & var_90
  loc_13B23DC:     var_F8 = CVar(var_188(CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_90 & "' AND V_DATE<"))) 'Address
  loc_13B23E3:     Proc_183_7_EB17D4(var_118, var_F8, -1)
  loc_13B23FE:     var_168 = var_E8 & var_118 & " " & CVar(var_A0) 
  loc_13B2415:     unk_583395.Execute CStr(var_168 & vbNullString), var_E8, 
  loc_13B2420:     Set var_8C = var_E8
  loc_13B2443:   Else
  loc_13B2457:     var_100 = "SELECT SUM(CREDIT)-SUM(DEBIT) AS OPBAL from VIEWLEDGER WHERE PARTY='" & var_90
  loc_13B245E:     var_118 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_90 & "' AND V_dATE>=") 'String
  loc_13B246C:     Proc_183_7_EB17D4(var_F8, MemVar_1F950F4, var_118)
  loc_13B2485:     var_158 = CVar(-1(var_1D8 & var_F8 & " AND V_DATE<")) 'Address
  loc_13B248C:     Proc_183_7_EB17D4(var_168, var_E8 & var_118 & " ")
  loc_13B2494:     var_178 = var_E8 & var_168 
  loc_13B24BE:     unk_583395.Execute CStr(var_178 & " " & CVar(var_A0) & vbNullString), , 
  loc_13B24C9:     Set var_8C = var_E8
  loc_13B24EF:   End If
  loc_13B24EF: End If
  loc_13B2503: If (var_8C.RecordCount > 0) Then
  loc_13B2515:   var_E8 = var_8C.Fields
  loc_13B2525:   var_F8 = CVar(var_E8.Item("OpBal")) 'Address
  loc_13B252C:   Proc_183_3_E7DD58(var_118)
  loc_13B2538:   global_132 = CSng(var_118)
  loc_13B2548: Else
  loc_13B254E:   global_132 = CDbl(0)
  loc_13B2551: End If
  loc_13B2554: var_1DA = arg_C
  loc_13B255D: If (var_1DA = 1) Then
  loc_13B2574:   var_100 = "SELECT ISNULL(SUM(AMTDR),0) AS DEB,ISNULL(SUM(AMTCR),0) AS CRED,V_DATE from LEDGER WHERE SUBCODE='" & var_90
  loc_13B257B:   var_128 = CVar(var_100 & "' AND V_DATE BETWEEN ") 'String
  loc_13B2582:   var_F8 = CVar(var_1EC(var_128)) 'Address
  loc_13B2589:   Proc_183_7_EB17D4(var_118, var_F8, -1, var_E8)
  loc_13B2591:   var_148 = var_1DA & var_118 
  loc_13B25A9:   Proc_183_7_EB17D4(var_178, CVar(global_132(var_148 & " AND ")))
  loc_13B25DB:   unk_583395.Execute CStr(global_132 & var_178 & " " & CVar(var_A4) & " GROUP BY V_DATE ORDER BY V_DATE"), var_F8, 
  loc_13B25E6:   Set var_88 = var_E8
  loc_13B2622:   If (var_88.RecordCount <= 0) Then
  loc_13B262B:     Call 0.Method_arg_50 (var_100)
  loc_13B264C:     MsgBox("No Records To Print....", &H40, CVar(var_100), var_128, var_148)
  loc_13B2661:     global_130 = 0
  loc_13B2667:   Else
  loc_13B2672:     var_118 = "Paper Setting"
  loc_13B2688:     MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, var_118, var_128, var_148)
  loc_13B26A7:     Set var_108 = var_88
  loc_13B26B0:     Set var_E8 = Me 
  loc_13B26C0:     Call 0.Method_arg_170 (var_E8, var_108, global_132)
  loc_13B26CB:     Set var_88 = var_108
  loc_13B26D1:     var_9A = var_FA
  loc_13B26E0:     global_130 = 0
  loc_13B26E3:     GoTo loc_13B2837
  loc_13B26E9:   Else
  loc_13B26FD:     var_100 = "SELECT V_TYPE,V_NO,V_ADD,V_SNO,PARTY,0 AS OPBAL,DEBIT AS DEB,CREDIT AS CRED,V_DATE,GROUPNATURE from VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY WHERE PARTY='" & var_90
  loc_13B2704:     var_128 = CVar(var_100 & "' AND V_DATE BETWEEN ") 'String
  loc_13B2712:     Proc_183_7_EB17D4(var_118, CVar(var_1EC(var_128)), -1, var_E8)
  loc_13B271A:     var_148 = global_130 & var_118 
  loc_13B2732:     Proc_183_7_EB17D4(var_178, CVar(var_9A(var_148 & " AND ")))
  loc_13B273E:     var_C4 = " "
  loc_13B274A:     var_D4 = CVar(var_A0) 'String
  loc_13B2764:     unk_583395.Execute CStr(var_FA & var_178 & var_C4 & var_D4 & vbNullString), global_130, 
  loc_13B276F:     Set var_88 = var_E8
  loc_13B27AB:     If (var_88.RecordCount <= 0) Then
  loc_13B27B4:       Call 0.Method_arg_50 (var_100)
  loc_13B27D5:       MsgBox("** No Records Found to Print **", &H40, CVar(var_100), var_128, var_148)
  loc_13B27EA:       global_130 = 0
  loc_13B27F0:     Else
  loc_13B27FC:       Call 0.Method_arg_C0 (var_E8)
  loc_13B2807:       MemVar_1F951E8 = var_E8
  loc_13B2827:       Call 0.Method_arg_64 (var_E8, CVar(var_88), var_C4)
  loc_13B282F:       Call 0.Method_arg_2C (var_D4)
  loc_13B2837:     End If
  loc_13B2837:   End If
  loc_13B2837:   ' Referenced from:   13B26E3
  loc_13B2837: End If
  loc_13B283C: Set var_88 = Nothing
  loc_13B2844: Set var_8C = Nothing
  loc_13B2847: Exit Sub
  loc_13B2848: ' Referenced from: 13B1F60
  loc_13B2856: Call 0.Method_arg_50 (var_100, 0)
  loc_13B286B: Proc_183_57_104B0BC(var_100, "DailySumm")
  loc_13B2877: Exit Sub
End Sub

Public Sub Proc_203_70_1509B10(arg_C) '1509B10
  'Data Table: 583348
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_FC As String
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_F4 As Variant
  Dim var_124 As Variant
  Dim var_C0 As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_1E4 As Variant
  Dim unk_583395 As Connection15
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  Dim var_E4 As Fields15
  Dim var_210 As Fields15
  Dim var_254 As Variant
  Dim var_20C As Recordset15
  Dim var_8C As Recordset15
  Dim var_256 As Integer
  Dim var_9A As Integer
  Dim var_F6 As Integer
  loc_1508C94: On Error Goto loc_1509ADF
  loc_1508CAC: Set var_E4 = CVar(CLng(0))(0)
  loc_1508CD0: Call Proc_203_59_F525A0(CInt(0), CStr(var_F4))
  loc_1508CE4: If (var_FE = 0) Then
  loc_1508CEC:   global_130 = 0
  loc_1508CEF:   Exit Sub
  loc_1508CF0: End If
  loc_1508D05: Set var_E4 = CVar(CLng(1))(0)
  loc_1508D29: Call Proc_203_59_F525A0(CInt(1), CStr(var_F4))
  loc_1508D3D: If (var_FE = 0) Then
  loc_1508D45:   global_130 = 0
  loc_1508D48:   Exit Sub
  loc_1508D49: End If
  loc_1508D5E: Set var_E4 = CVar(CLng(2))(0)
  loc_1508D82: Call Proc_203_59_F525A0(CInt(2), CStr(var_F4))
  loc_1508D96: If (var_FE = 0) Then
  loc_1508D9E:   global_130 = 0
  loc_1508DA1:   Exit Sub
  loc_1508DA2: End If
  loc_1508DB7: Set var_E4 = CVar(CLng(0))(1)
  loc_1508DD5: global_130(CStr(DGSite.DispID_41)).Text = var_FE
  loc_1508DFC: Set var_E4 = CVar(CLng(1))(1)
  loc_1508E1A: DGSite.DispID_41(CStr(DGSite.DispID_41)).Text = global_130
  loc_1508E43: If (Proc_183_48_F06B28(Me, var_FE, DGSite.DispID_41) = 0) Then
  loc_1508E4B:   global_130 = 0
  loc_1508E4E:   Exit Sub
  loc_1508E4F: End If
  loc_1508E64: Set var_E4 = CVar(CLng(2))(1)
  loc_1508E8B: Set var_104 = global_130(CStr(Trim(CVar(CStr(DGSite.DispID_41)))))
  loc_1508E91: var_104.Text = global_130
  loc_1508EBE: Set var_E4 = CVar(CLng(2))(2)
  loc_1508EDE: var_90 = CStr(Trim(CVar(CStr(DGSite.DispID_41))))
  loc_1508F02: Set var_E4 = CVar(CLng(4))(2)
  loc_1508F35: If CBool(Trim(CVar(CStr(DGSite.DispID_41))) <> vbNullString) Then
  loc_1508F52:   Set var_E4 = CVar(CLng(4))(2)
  loc_1508F63:   var_114 = CVar(CStr(DGSite.DispID_41)) 'String
  loc_1508F7F:   var_A0 = CStr(" And VIEWLEDGER.Site_Code='" & Trim(var_114) & "'")
  loc_1508F95: Else
  loc_1508FA3:   var_A0 = " And VIEWLEDGER.Site_Code='" & MemVar_1F95078 & "'"
  loc_1508FA9: End If
  loc_1508FB6: var_B0 = "SELECT V_DATE,credit,debit,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,NARR,NAME,MNARR,V_SNO,DOCID,VIEWLEDGER.SITE_CODE FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party=SUBGROUP.SUBCODE where V_date BETWEEN "
  loc_1508FC6: Proc_183_7_EB17D4(var_114, CVar(var_204(var_B0)), -1)
  loc_1508FCE: var_124 = var_E4 & var_114 
  loc_1508FD7: var_144 = var_124 & " AND " 
  loc_1508FE6: Proc_183_7_EB17D4(var_174, CVar(var_FE(var_144)))
  loc_150901D: var_1E4 = DGSite.DispID_41 & var_174 & " AND V_TYPE='" & CVar(var_90) & "' " & CVar(var_A0) & " ORDER BY V_DATE,V_TYPE,V_NO,V_ADD,V_SNO" 
  loc_1509021: var_FC = CStr(var_1E4)
  loc_150902B: unk_583395.Execute var_FC, , 
  loc_1509036: Set var_88 = var_E4
  loc_1509070: If (var_88.RecordCount <= 0) Then
  loc_1509079:   Call 0.Method_arg_50 (var_FC)
  loc_150909A:   MsgBox("** No Records Found to Print **", &H40, CVar(var_FC), var_124, var_144)
  loc_15090AF:   global_130 = 0
  loc_15090B2:   Exit Sub
  loc_15090B3: End If
  loc_15090C3: Set var_E4 = New
  loc_15090D2: Call 0.Method_arg_1B0 (var_E4, var_104)
  loc_15090DD: Set var_8C = var_E4
  loc_15090E6: Set var_8C = var_104
  loc_15090F0: ' Referenced from: 1509960
  loc_15090F6: var_F6 = Me.Recordset15.EOF
  loc_15090FF: If Not(var_F6) Then
  loc_1509105:   Set var_20C = var_8C 
  loc_1509222:   var_254 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_88.Fields.Item("DocID")), 1), vbNullString) + IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_1509227:   var_94 = CStr(var_254)
  loc_15092E0:   var_144 = (CVar(var_94) + IIf((var_94 = vbNullString), vbNullString, "/"))
  loc_1509311:   var_1E4 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_88.Fields.Item("V_ADD"))), vbNullString))
  loc_1509316:   var_94 = CStr(Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)))
  loc_1509370:   var_144 = (CVar(var_94) + IIf((var_94 = vbNullString), vbNullString, "/"))
  loc_15093A2:   var_184 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(CVar(var_88.Fields.Item("V_Type"))))
  loc_15093A7:   var_94 = CStr(CVar(var_88.Fields.Item("V_ADD")))
  loc_15093D1:   var_C0 = vbNullString
  loc_15093E4:   var_B0 = (var_94 = vbNullString)
  loc_15093F3:   var_144 = (CVar(var_94) + IIf(var_B0, var_C0, "/"))
  loc_1509430:   var_194 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_88.Fields.Item("V_NO")))))
  loc_150945B:   var_20C.AddNew var_B0, var_C0
  loc_1509488:   var_114 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("V_ADD")))) 'String
  loc_1509495:   var_20C.Collect = "V_ADD"
  loc_15094C3:   var_F4 = CVar(var_88.Fields.Item("V_NO")) 'Address
  loc_15094D1:   var_20C.Collect = "V_NO"
  loc_15094EC:   var_20C.Collect = "DOCNO"
  loc_1509519:   var_114 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")), CVar(CStr(Trim(CVar(var_88.Fields.Item("V_ADD"))))), CVar(var_88.Fields.Item("Name")))) 'String
  loc_1509531:   var_20C.Collect = "Name"
  loc_1509581:   If (Me.Fields.Item("RepToBy").Value = "Yes") Then
  loc_15095AA:     Proc_183_3_E7DD58(var_114, CVar(var_88.Fields.Item("Credit")), Trim(var_114))
  loc_15095C4:     If (var_114 > 0) Then
  loc_150960A:       var_144 = Left(Trim(CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")), CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")), var_114))))), &H2F)
  loc_1509612:       var_164 = ("To " + var_144)
  loc_1509620:       var_20C.Collect = "Name"
  loc_1509638:     Else
  loc_150967B:       var_144 = Left(Trim(CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")), CVar(var_88.Fields.Item("V_NO"))))), &H2F)
  loc_1509683:       var_164 = ("By " + var_144)
  loc_1509691:       var_20C.Collect = "Name"
  loc_15096A6:     End If
  loc_15096A6:   End If
  loc_15096D1:   var_114 = "dd/MMM/yyyy"
  loc_15096F3:   var_20C.Collect = "V_DATE"
  loc_1509723:   var_F4 = CVar(var_88.Fields.Item("Credit")) 'Address
  loc_1509731:   var_20C.Collect = "Credit"
  loc_150975B:   var_F4 = CVar(var_88.Fields.Item("Debit")) 'Address
  loc_1509769:   var_20C.Collect = "Debit"
  loc_1509793:   var_F4 = CVar(var_88.Fields.Item("V_Type")) 'Address
  loc_15097A1:   var_20C.Collect = "V_Type"
  loc_15097D2:   Proc_183_3_E7DD58(var_114, CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")))
  loc_15097E4:   var_20C.Collect = "V_SNo"
  loc_1509812:   var_F4 = CVar(var_88.Fields.Item("mNarr")) 'Address
  loc_1509820:   var_20C.Collect = "mNarr"
  loc_150984A:   var_F4 = CVar(var_88.Fields.Item("NARR")) 'Address
  loc_1509858:   var_20C.Collect = "NARR"
  loc_150988B:   var_114 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Chq_No")), CVar(var_88.Fields.Item("Chq_No")), CVar(var_88.Fields.Item("Chq_No")), var_114, Format(CVar(var_88.Fields.Item("V_DATE")), var_114))) 'String
  loc_1509891:   var_124 = Trim(var_114)
  loc_15098AD:   If CBool(var_124 <> vbNullString) Then
  loc_15098CF:     var_F4 = CVar(var_88.Fields.Item("Chq_No")) 'Address
  loc_15098DD:     var_20C.Collect = "Chq_No"
  loc_15098E8:   End If
  loc_1509917:   If Not(IsNull(CVar(var_88.Fields.Item("Chq_Date")))) Then
  loc_1509939:     var_F4 = CVar(var_88.Fields.Item("Chq_Date")) 'Address
  loc_1509947:     var_20C.Collect = "Chq_Date"
  loc_1509952:   End If
  loc_1509954:   Set var_20C = Nothing 
  loc_150995B:   var_88.MoveNext
  loc_1509960:   GoTo loc_15090F0
  loc_1509963: End If
  loc_1509977: If (var_8C.RecordCount > 0) Then
  loc_150997D:   var_8C.MoveFirst
  loc_1509982: End If
  loc_1509985: var_256 = arg_C
  loc_150998E: If (var_256 = 1) Then
  loc_1509997:   var_C0 = "Paper Setting"
  loc_15099AC:   var_F4 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_15099B2:   MsgBox(var_F4, &H40, var_C0, var_124, var_144)
  loc_15099CA:   var_D0 = 1
  loc_15099D7:   Set var_E4 = CVar(CLng(3))(var_D0)
  loc_15099FA:   Set var_210 = var_8C
  loc_1509A13:   Call 0.Method_arg_15C (Me, var_210, CStr(var_F4), var_F6, DGSite.DispID_41, var_256)
  loc_1509A1E:   Set var_8C = var_210
  loc_1509A24:   var_9A = var_F6
  loc_1509A3B:   global_130 = 0
  loc_1509A3E:   GoTo loc_1509ACE
  loc_1509A44: Else
  loc_1509A4D:   var_FC = MemVar_1F953B4 & "\FaJRNL.ttx"
  loc_1509A5A:   Set var_E4 = var_8C 
  loc_1509A66:   var_F6 = CreateFieldDefFile(var_E4, var_FC, &HFF, global_130, var_9A, var_F4)
  loc_1509A79:   var_268 = CVar(var_F6) 'Variant
  loc_1509A93:   Call 0.Method_arg_C4 (var_E4, var_F6, var_F4, 1)
  loc_1509A9E:   MemVar_1F951E8 = var_E4
  loc_1509ABE:   Call 0.Method_arg_64 (var_E4, CVar(var_E4), var_C0, var_D0)
  loc_1509AC6:   Call 0.Method_arg_2C (1, CVar(var_88.Fields.Item("V_NO")))
  loc_1509ACE: End If
  loc_1509ACE: ' Referenced from: 1509A3E
  loc_1509AD3: Set var_88 = Nothing
  loc_1509ADB: Set var_8C = Nothing
  loc_1509ADE: Exit Sub
  loc_1509ADF: ' Referenced from: 1508C94
  loc_1509AED: Call 0.Method_arg_50 (var_FC, 0)
  loc_1509B02: Proc_183_57_104B0BC(var_FC, "JournalBook")
  loc_1509B0E: Exit Sub
End Sub

Public Sub Proc_203_71_1529E68(arg_C) '1529E68
  'Data Table: 583348
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_FC As String
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_F4 As Variant
  Dim var_124 As Variant
  Dim var_C0 As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_1E4 As Variant
  Dim unk_583395 As Connection15
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  Dim var_E4 As Fields15
  Dim var_210 As Fields15
  Dim var_254 As Variant
  Dim var_20C As Recordset15
  Dim var_8C As Recordset15
  Dim var_256 As Integer
  Dim var_9A As Integer
  Dim var_F6 As Integer
  loc_1528F34: On Error Goto loc_1529E36
  loc_1528F4C: Set var_E4 = CVar(CLng(0))(0)
  loc_1528F70: Call Proc_203_59_F525A0(CInt(0), CStr(var_F4))
  loc_1528F84: If (var_FE = 0) Then
  loc_1528F8C:   global_130 = 0
  loc_1528F8F:   Exit Sub
  loc_1528F90: End If
  loc_1528FA5: Set var_E4 = CVar(CLng(1))(0)
  loc_1528FC9: Call Proc_203_59_F525A0(CInt(1), CStr(var_F4))
  loc_1528FDD: If (var_FE = 0) Then
  loc_1528FE5:   global_130 = 0
  loc_1528FE8:   Exit Sub
  loc_1528FE9: End If
  loc_1528FFE: Set var_E4 = CVar(CLng(2))(0)
  loc_1529022: Call Proc_203_59_F525A0(CInt(2), CStr(var_F4))
  loc_1529036: If (var_FE = 0) Then
  loc_152903E:   global_130 = 0
  loc_1529041:   Exit Sub
  loc_1529042: End If
  loc_1529057: Set var_E4 = CVar(CLng(0))(1)
  loc_1529075: global_130(CStr(DGSite.DispID_41)).Text = var_FE
  loc_152909C: Set var_E4 = CVar(CLng(1))(1)
  loc_15290BA: DGSite.DispID_41(CStr(DGSite.DispID_41)).Text = global_130
  loc_15290E3: If (Proc_183_48_F06B28(Me, var_FE, DGSite.DispID_41) = 0) Then
  loc_15290EB:   global_130 = 0
  loc_15290EE:   Exit Sub
  loc_15290EF: End If
  loc_1529104: Set var_E4 = CVar(CLng(2))(1)
  loc_1529131: global_130(CStr(Trim(CVar(CStr(DGSite.DispID_41))))).Text = global_130
  loc_152915E: Set var_E4 = CVar(CLng(2))(2)
  loc_152917E: var_90 = CStr(Trim(CVar(CStr(DGSite.DispID_41))))
  loc_15291A2: Set var_E4 = CVar(CLng(4))(2)
  loc_15291D5: If CBool(Trim(CVar(CStr(DGSite.DispID_41))) <> vbNullString) Then
  loc_15291F2:   Set var_E4 = CVar(CLng(4))(2)
  loc_1529203:   var_114 = CVar(CStr(DGSite.DispID_41)) 'String
  loc_152921F:   var_A0 = CStr(" And VIEWLEDGERLOG.Site_Code='" & Trim(var_114) & "'")
  loc_1529235: Else
  loc_1529243:   var_A0 = " And VIEWLEDGERLOG.Site_Code='" & MemVar_1F95078 & "'"
  loc_1529249: End If
  loc_1529256: var_B0 = "SELECT V_DATE,credit,debit,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,NARR,NAME,MNARR,V_SNO,DOCID,VIEWLEDGERLOG.SITE_CODE,VIEWLEDGERLOG.U_Name,VIEWLEDGERLOG.U_EntDt,VIEWLEDGERLOG.SeqNo FROM VIEWLEDGERLOG LEFT JOIN SUBGROUP ON VIEWLEDGERLOG.party=SUBGROUP.SUBCODE where V_date BETWEEN "
  loc_1529266: Proc_183_7_EB17D4(var_114, CVar(var_204(var_B0)), -1)
  loc_152926E: var_124 = var_E4 & var_114 
  loc_1529277: var_144 = var_124 & " AND " 
  loc_1529286: Proc_183_7_EB17D4(var_174, CVar(var_FE(var_144)))
  loc_15292BD: var_1E4 = DGSite.DispID_41 & var_174 & " AND V_TYPE='" & CVar(var_90) & "' " & CVar(var_A0) & " ORDER BY V_DATE,V_TYPE,V_NO,V_ADD,V_SNO" 
  loc_15292C1: var_FC = CStr(var_1E4)
  loc_15292CB: unk_583395.Execute var_FC, , 
  loc_15292D6: Set var_88 = var_E4
  loc_1529310: If (var_88.RecordCount <= 0) Then
  loc_1529319:   Call 0.Method_arg_50 (var_FC)
  loc_152933A:   MsgBox("** No Records Found to Print **", &H40, CVar(var_FC), var_124, var_144)
  loc_152934F:   global_130 = 0
  loc_1529352:   Exit Sub
  loc_1529353: End If
  loc_1529368: Set var_8C = mFaJournalLog(New)
  loc_152936B: ' Referenced from: 1529CA9
  loc_1529371: var_F6 = var_88.EOF
  loc_152937A: If Not(var_F6) Then
  loc_1529380:   Set var_20C = var_8C 
  loc_152949D:   var_254 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_88.Fields.Item("DocID")), 1), vbNullString) + IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_15294A2:   var_94 = CStr(var_254)
  loc_152955B:   var_144 = (CVar(var_94) + IIf((var_94 = vbNullString), vbNullString, "/"))
  loc_152958C:   var_1E4 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_88.Fields.Item("V_ADD"))), vbNullString))
  loc_1529591:   var_94 = CStr(Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)))
  loc_15295EB:   var_144 = (CVar(var_94) + IIf((var_94 = vbNullString), vbNullString, "/"))
  loc_152961D:   var_184 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(CVar(var_88.Fields.Item("V_Type"))))
  loc_1529622:   var_94 = CStr(CVar(var_88.Fields.Item("V_ADD")))
  loc_152964C:   var_C0 = vbNullString
  loc_152965F:   var_B0 = (var_94 = vbNullString)
  loc_152966E:   var_144 = (CVar(var_94) + IIf(var_B0, var_C0, "/"))
  loc_15296AB:   var_194 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_88.Fields.Item("V_NO")))))
  loc_15296D6:   var_20C.AddNew var_B0, var_C0
  loc_1529703:   var_114 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("V_ADD")))) 'String
  loc_1529710:   var_20C.Collect = "V_ADD"
  loc_152973E:   var_F4 = CVar(var_88.Fields.Item("V_NO")) 'Address
  loc_152974C:   var_20C.Collect = "V_NO"
  loc_1529767:   var_20C.Collect = "DOCNO"
  loc_1529794:   var_114 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")), CVar(CStr(Trim(CVar(var_88.Fields.Item("V_ADD"))))), CVar(var_88.Fields.Item("Name")))) 'String
  loc_15297AC:   var_20C.Collect = "Name"
  loc_15297FC:   If (Me.Fields.Item("RepToBy").Value = "Yes") Then
  loc_1529825:     Proc_183_3_E7DD58(var_114, CVar(var_88.Fields.Item("Credit")), Trim(var_114))
  loc_152983F:     If (var_114 > 0) Then
  loc_1529885:       var_144 = Left(Trim(CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")), CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")), var_114))))), &H2F)
  loc_152988D:       var_164 = ("To " + var_144)
  loc_152989B:       var_20C.Collect = "Name"
  loc_15298B3:     Else
  loc_15298F6:       var_144 = Left(Trim(CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")), CVar(var_88.Fields.Item("V_NO"))))), &H2F)
  loc_15298FE:       var_164 = ("By " + var_144)
  loc_152990C:       var_20C.Collect = "Name"
  loc_1529921:     End If
  loc_1529921:   End If
  loc_152994C:   var_114 = "dd/MMM/yyyy"
  loc_152996E:   var_20C.Collect = "V_DATE"
  loc_152999E:   var_F4 = CVar(var_88.Fields.Item("Credit")) 'Address
  loc_15299AC:   var_20C.Collect = "Credit"
  loc_15299D6:   var_F4 = CVar(var_88.Fields.Item("Debit")) 'Address
  loc_15299E4:   var_20C.Collect = "Debit"
  loc_1529A0E:   var_F4 = CVar(var_88.Fields.Item("V_Type")) 'Address
  loc_1529A1C:   var_20C.Collect = "V_Type"
  loc_1529A4D:   Proc_183_3_E7DD58(var_114, CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")))
  loc_1529A5F:   var_20C.Collect = "V_SNo"
  loc_1529A8D:   var_F4 = CVar(var_88.Fields.Item("mNarr")) 'Address
  loc_1529A9B:   var_20C.Collect = "mNarr"
  loc_1529AC5:   var_F4 = CVar(var_88.Fields.Item("NARR")) 'Address
  loc_1529AD3:   var_20C.Collect = "NARR"
  loc_1529B06:   var_114 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Chq_No")), CVar(var_88.Fields.Item("Chq_No")), CVar(var_88.Fields.Item("Chq_No")), var_114, Format(CVar(var_88.Fields.Item("V_DATE")), var_114))) 'String
  loc_1529B28:   If CBool(Trim(var_114) <> vbNullString) Then
  loc_1529B4A:     var_F4 = CVar(var_88.Fields.Item("Chq_No")) 'Address
  loc_1529B58:     var_20C.Collect = "Chq_No"
  loc_1529B63:   End If
  loc_1529B92:   If Not(IsNull(CVar(var_88.Fields.Item("Chq_Date")))) Then
  loc_1529BB4:     var_F4 = CVar(var_88.Fields.Item("Chq_Date")) 'Address
  loc_1529BC2:     var_20C.Collect = "Chq_Date"
  loc_1529BCD:   End If
  loc_1529BEC:   var_F4 = CVar(var_88.Fields.Item("U_Name")) 'Address
  loc_1529BFA:   var_20C.Collect = "U_Name"
  loc_1529C40:   var_124 = Format(CVar(var_88.Fields.Item("U_EntDt")), "dd/mm/yyyy hh:nn")
  loc_1529C52:   var_20C.Collect = "EntDt"
  loc_1529C82:   var_F4 = CVar(var_88.Fields.Item("SeqNo")) 'Address
  loc_1529C90:   var_20C.Collect = "SeqNo"
  loc_1529C9D:   Set var_20C = Nothing 
  loc_1529CA4:   var_88.MoveNext
  loc_1529CA9:   GoTo loc_152936B
  loc_1529CAC: End If
  loc_1529CC0: If (var_8C.RecordCount > 0) Then
  loc_1529CC6:   var_8C.MoveFirst
  loc_1529CCB: End If
  loc_1529CCE: var_256 = arg_C
  loc_1529CD7: If (var_256 = 1) Then
  loc_1529CE0:   var_C0 = "Paper Setting"
  loc_1529CF5:   var_F4 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_1529CFB:   MsgBox(var_F4, &H40, var_C0, var_124, var_144)
  loc_1529D13:   var_D0 = 1
  loc_1529D20:   Set var_E4 = CVar(CLng(3))(var_D0)
  loc_1529D43:   Set var_210 = var_8C
  loc_1529D5C:   Call 0.Method_arg_15C (Me, var_210, CStr(var_F4), var_F6, DGSite.DispID_41, var_256, var_F4, var_124)
  loc_1529D67:   Set var_8C = var_210
  loc_1529D6D:   var_9A = var_F6
  loc_1529D84:   global_130 = 0
  loc_1529D87:   GoTo loc_1529E25
  loc_1529D8D: Else
  loc_1529DA3:   Set var_E4 = var_8C 
  loc_1529DAF:   var_F6 = CreateFieldDefFile(var_E4, MemVar_1F953B4 & "\FaJRNLLog.ttx", &HFF, global_130, var_9A, 1)
  loc_1529DBF:   var_B0 = CVar(var_F6) 'Integer
  loc_1529DC2:   var_268 = var_B0 'Variant
  loc_1529DDE:   var_FC = MemVar_1F953B4 & "\FaJRNLLog.RPT"
  loc_1529DE7:   Call 0.Method_arg_1C (var_FC, var_B0, var_E4, var_F6, 1)
  loc_1529DF2:   MemVar_1F951E8 = var_E4
  loc_1529E15:   Call 0.Method_arg_64 (var_E4, CVar(var_E4), var_C0, var_D0, var_F4)
  loc_1529E1D:   Call 0.Method_arg_2C (var_F4, var_F4)
  loc_1529E25: End If
  loc_1529E25: ' Referenced from: 1529D87
  loc_1529E2A: Set var_88 = Nothing
  loc_1529E32: Set var_8C = Nothing
  loc_1529E35: Exit Sub
  loc_1529E36: ' Referenced from: 1528F34
  loc_1529E44: Call 0.Method_arg_50 (var_FC, 0)
  loc_1529E59: Proc_183_57_104B0BC(var_FC, "JournalBookLog")
  loc_1529E65: Exit Sub
End Sub

Public Sub Proc_203_72_193271C(arg_C) '193271C
  'Data Table: 583348
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_14C As String
  Dim var_154 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_AC As Double
  Dim unk_583395 As Connection15
  Dim var_88 As Recordset15
  Dim var_134 As Variant
  Dim var_110 As Variant
  Dim var_180 As Variant
  Dim var_130 As Variant
  Dim var_1A4 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_214 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_8C As Recordset15
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_90 As Recordset15
  Dim var_DC As Double
  Dim var_94 As Recordset15
  Dim var_D4 As Double
  Dim var_E0 As Integer
  Dim var_E2 As Integer
  Dim var_E4 As Integer
  Dim var_E6 As Integer
  Dim var_E8 As Integer
  Dim var_EA As Integer
  Dim var_CC As Double
  Dim Me As Recordset15
  Dim var_238 As Fields15
  Dim var_2A4 As Variant
  Dim var_234 As Variant
  Dim var_98 As Recordset15
  Dim var_9C As Recordset15
  Dim var_2A6 As Integer
  Dim var_DE As Integer
  loc_192FB00: On Error Goto loc_19326EA
  loc_192FB18: Set var_134 = CVar(CLng(0))(0)
  loc_192FB3C: Call Proc_203_59_F525A0(CInt(0), CStr(var_144))
  loc_192FB50: If (var_14E = 0) Then
  loc_192FB58:   global_130 = 0
  loc_192FB5B:   Exit Sub
  loc_192FB5C: End If
  loc_192FB71: Set var_134 = CVar(CLng(1))(0)
  loc_192FB95: Call Proc_203_59_F525A0(CInt(1), CStr(var_144))
  loc_192FBA9: If (var_14E = 0) Then
  loc_192FBB1:   global_130 = 0
  loc_192FBB4:   Exit Sub
  loc_192FBB5: End If
  loc_192FBCA: Set var_134 = CVar(CLng(2))(0)
  loc_192FBEE: Call Proc_203_59_F525A0(CInt(2), CStr(var_144))
  loc_192FC02: If (var_14E = 0) Then
  loc_192FC0A:   global_130 = 0
  loc_192FC0D:   Exit Sub
  loc_192FC0E: End If
  loc_192FC23: Set var_134 = CVar(CLng(3))(0)
  loc_192FC47: Call Proc_203_59_F525A0(CInt(3), CStr(var_144))
  loc_192FC5B: If (var_14E = 0) Then
  loc_192FC63:   global_130 = 0
  loc_192FC66:   Exit Sub
  loc_192FC67: End If
  loc_192FC7C: Set var_134 = CVar(CLng(4))(0)
  loc_192FCA0: Call Proc_203_59_F525A0(CInt(4), CStr(var_144))
  loc_192FCB4: If (var_14E = 0) Then
  loc_192FCBC:   global_130 = 0
  loc_192FCBF:   Exit Sub
  loc_192FCC0: End If
  loc_192FCD5: Set var_134 = CVar(CLng(0))(1)
  loc_192FCF3: global_130(CStr(DGSite.DispID_41)).Text = var_14E
  loc_192FD1A: Set var_134 = CVar(CLng(1))(1)
  loc_192FD2B: var_14C = CStr(DGSite.DispID_41)
  loc_192FD32: Set var_154 = DGSite.DispID_41(var_14C)
  loc_192FD38: var_154.Text = global_130
  loc_192FD61: If (Proc_183_48_F06B28(Me, var_14E, DGSite.DispID_41, global_130, var_14E) = 0) Then
  loc_192FD69:   global_130 = 0
  loc_192FD6C:   Exit Sub
  loc_192FD6D: End If
  loc_192FD78: Set var_134 = var_154(CInt(&HC))
  loc_192FD7E: Call 0.Method_Proc_203_72_193271C0 (global_130, DGSite.DispID_41, global_130)
  loc_192FD86: var_144 = CVar(var_154) 'Address
  loc_192FDA7: If CBool(Trim(var_144) <> vbNullString) Then
  loc_192FDBB:   Set var_134 = var_154(CInt(&HC))
  loc_192FDC1:   Call 0.Method_Proc_203_72_193271C0 (var_14C, " And VIEWLEDGER.LOGSite_Code='")
  loc_192FDC9:   var_14E = var_154.Tag
  loc_192FDD9:   var_F0 = DGSite.DispID_41 & var_14C & "'"
  loc_192FDED: Else
  loc_192FDFB:   var_F0 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_192FE01: End If
  loc_192FE16: Set var_134 = CVar(CLng(4))(1)
  loc_192FE43: (CStr(Trim(CVar(CStr(DGSite.DispID_41))))).Text = 
  loc_192FE81: var_164 = CVar(CStr(DGSite.DispID_41)) 'String
  loc_192FE90: var_B0 = CStr(Trim(var_164))
  loc_192FEA2: var_A0 = vbNullString
  loc_192FEA8: var_A4 = vbNullString
  loc_192FEAE: var_AC = CDbl(0)
  loc_192FED5: unk_583395.Execute "SELECT RepToBy FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_144, -1
  loc_192FEE0: Set var_88 = CVar(CLng(4))(2)
  loc_192FF04: If (var_88.RecordCount > 0) Then
  loc_192FF16:   var_134 = var_88.Fields
  loc_192FF26:   var_144 = CVar(var_134.Item("RepToBy")) 'Address
  loc_192FF2F:   var_BC = Proc_183_2_E5AE94(var_144, var_134)
  loc_192FF38: End If
  loc_192FF5C: unk_583395.Execute "SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "'", var_144, -1
  loc_192FF67: Set var_88 = var_134
  loc_192FF8B: If (var_88.RecordCount <= 0) Then
  loc_192FF8E:   Exit Sub
  loc_192FF8F: End If
  loc_192FFA1: var_134 = var_88.Fields
  loc_192FFA9: var_154 = var_134.Item("GroupNature")
  loc_193000F: If CBool((var_154.Value = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_1930016:   var_144 = CVar(var_AC(var_134)) 'Address
  loc_193001D:   Proc_183_7_EB17D4(var_164)
  loc_1930028:   var_130 = 0
  loc_1930045:   var_14C = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_1930065:   var_1B4 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE<") & var_164 & " " & CVar(var_F0) 
  loc_1930073:   unk_583395.Execute CStr(var_1B4), var_1C4, -1
  loc_193007B:   var_134 = var_134.Fields
  loc_1930083:   var_130 = var_154.Item(var_154)
  loc_193008B:   var_180 = var_180.Value
  loc_1930094:   var_AC = CSng(var_1D4)
  loc_19300BD: Else
  loc_19300C0:   var_100 = MemVar_1F950F4
  loc_19300C8:   Proc_183_7_EB17D4(var_144, var_100, var_AC)
  loc_19300D1:   var_1A4 = CVar(var_144(var_1D4)) 'Address
  loc_19300D8:   Proc_183_7_EB17D4(var_1B4)
  loc_19300E3:   var_214 = 0
  loc_1930100:   var_14C = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_1930107:   var_164 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE>=") 'String
  loc_1930111:   var_110 = " AND V_DATE<"
  loc_193011D:   var_1C4 = var_164 & var_144 & var_110 & var_1B4 
  loc_193013E:   unk_583395.Execute CStr(var_1C4 & " " & CVar(var_F0)), var_204, -1
  loc_1930146:   var_134 = var_134.Fields
  loc_193014E:   var_214 = var_154.Item(var_154)
  loc_1930156:   var_180 = var_180.Value
  loc_193015F:   var_AC = CSng(var_224)
  loc_193018B: End If
  loc_193019B: Set var_134 = New
  loc_19301AA: Call 0.Method_arg_1B8 (var_134, var_154, var_AC)
  loc_19301B5: Set var_8C = var_134
  loc_19301BE: Set var_8C = var_154
  loc_19301CF: If (var_AC <> CDbl(0)) Then
  loc_19301DD:   Me.Recordset15.AddNew var_100, var_110
  loc_19301E6:   var_144 = CVar(var_1A4(var_224)) 'Address
  loc_19301F4:   var_8C.Collect = "V_DATE"
  loc_1930203:   If (var_AC < CDbl(0)) Then
  loc_1930206:     var_110 = "OPENING BALANCE"
  loc_1930215:     var_8C.Collect = "Name"
  loc_193021E:     var_110 = CVar(Abs(var_AC)) 'Double
  loc_193022C:     var_8C.Collect = "cr"
  loc_1930234:   Else
  loc_1930234:     var_110 = "OPENING BALANCE"
  loc_1930243:     var_8C.Collect = "Name1"
  loc_193024C:     var_110 = CVar(Abs(var_AC)) 'Double
  loc_1930251:     var_100 = "ADJAMT"
  loc_193025A:     var_8C.Collect = var_100
  loc_193025F:   End If
  loc_193026A:   var_8C.Update var_100, var_110
  loc_193026F: End If
  loc_1930283: var_14C = "SELECT VIEWLEDGER.V_ADD,DocID,VIEWLEDGER.Site_Code,VIEWLEDGER.V_NO,subgroup.NAME, VIEWLEDGER.V_DATE, VIEWLEDGER.CREDIT AS AMOUNT, VIEWLEDGER.V_TYPE,VIEWLEDGER.MNARR,VIEWLEDGER.NARR, VIEWLEDGER.V_SNO,VIEWLEDGER.CHQ_NO,CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103)AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY1=subgroup.SUBCODE WHERE VIEWLEDGER.PARTY='" & var_B0
  loc_1930291: var_144 = CVar(var_234(CVar(var_14C & "' AND VIEWLEDGER.V_DATE Between "))) 'Address
  loc_1930298: Proc_183_7_EB17D4(var_164, var_144, -1, var_134, var_110)
  loc_19302B8: Proc_183_7_EB17D4(var_1C4, CVar(var_110(var_110 & var_164 & " And ")))
  loc_19302EA: unk_583395.Execute CStr(" AND CREDIT>0  " & var_1C4 & " AND CREDIT>0  " & CVar(var_F0) & " ORDER BY V_DATE,V_TYPE,V_NO,v_add,V_SNO"), var_144, 
  loc_19302F5: Set var_90 = var_134
  loc_1930331: var_14C = "SELECT VIEWLEDGER.V_ADD,DocID,VIEWLEDGER.Site_Code,VIEWLEDGER.V_NO,subgroup.NAME, VIEWLEDGER.V_DATE, VIEWLEDGER.DEBIT AS AMOUNT, VIEWLEDGER.V_TYPE,VIEWLEDGER.MNARR,VIEWLEDGER.NARR, VIEWLEDGER.V_SNO,VIEWLEDGER.CHQ_NO,CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103) AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY1=subgroup.SUBCODE WHERE VIEWLEDGER.PARTY='" & var_B0
  loc_1930346: Proc_183_7_EB17D4(var_164, CVar(var_234(CVar(var_14C & "' AND VIEWLEDGER.V_DATE Between "))))
  loc_193034E: var_194 = -1 & var_164 
  loc_1930366: Proc_183_7_EB17D4(var_1C4)
  loc_1930372: var_110 = " AND DEBIT>0  "
  loc_193038A: var_224 = CVar(var_134(" AND CREDIT>0  " & var_164 & " And ")) & var_1C4 & var_110 & CVar(var_F0) & " ORDER BY V_DATE,V_TYPE,V_NO,v_add,V_SNO" 
  loc_1930398: unk_583395.Execute CStr(var_224), , 
  loc_19303A3: Set var_94 = var_134
  loc_19303DA: If Not(var_90.EOF) Then
  loc_1930409:   var_DC = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_1930416: End If
  loc_1930425: If Not(var_94.EOF) Then
  loc_193042E:   var_100 = "V_DATE"
  loc_1930454:   var_D4 = CDate(var_94.Fields.Item(var_100).Value)
  loc_1930461: End If
  loc_1930463: var_E0 = 0
  loc_1930468: var_E2 = 0
  loc_193046D: var_E4 = 0
  loc_1930472: var_E6 = 0
  loc_1930477: var_E8 = 0
  loc_193047C: var_EA = 0
  loc_1930482: var_C0 = vbNullString
  loc_1930488: var_C4 = vbNullString
  loc_1930498: var_E8 = var_EA(var_14C).Text
  loc_19304A2: var_CC = CDate(var_14C)
  loc_19304AB: ' Referenced from: 1932443
  loc_19304C9: If Not((var_90.EOF And var_94.EOF)) Then
  loc_19304DB:   If ((var_D4 = var_CC) Or (var_DC = var_CC)) Then
  loc_19304E9:     var_8C.AddNew var_100, var_110
  loc_19304F5:     If (var_D4 = var_CC) Then
  loc_1930517:       var_144 = CVar(var_94.Fields.Item("V_Type")) 'Address
  loc_1930525:       var_8C.Collect = "V_Type"
  loc_1930533:       var_110 = CDate(var_D4)
  loc_1930541:       var_8C.Collect = "V_DATE"
  loc_1930565:       var_144 = CVar(var_94.Fields.Item("V_NO")) 'Address
  loc_1930573:       var_8C.Collect = "V_NO"
  loc_193059D:       var_144 = CVar(var_94.Fields.Item("V_SNo")) 'Address
  loc_19305AB:       var_8C.Collect = "V_SNo"
  loc_1930625:       var_238 = Me.Fields
  loc_19306CF:       var_2A4 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_94.Fields.Item("DocID")), 1), vbNullString) + IIf((var_238.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_19306D4:       var_B4 = CStr(var_2A4)
  loc_193078D:       var_194 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_19307BE:       var_234 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_94.Fields.Item("V_ADD"))), vbNullString))
  loc_19307C3:       var_B4 = CStr(Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)))
  loc_193081D:       var_194 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_193084F:       var_1C4 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(CVar(var_94.Fields.Item("V_Type"))))
  loc_1930854:       var_B4 = CStr(CVar(var_94.Fields.Item("V_ADD")))
  loc_19308A0:       var_194 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_19308DD:       var_1D4 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_94.Fields.Item("V_NO")))))
  loc_193090D:       var_8C.Collect = "DOCNO"
  loc_1930926:       If (((var_E0 = 0) Or (var_E4 = 0)) Or (var_E8 = 0)) Then
  loc_193092B:         var_E0 = &HFF
  loc_1930953:         var_144 = CVar(var_94.Fields.Item("Chq_No")) 'Address
  loc_1930967:         var_14C = Proc_183_2_E5AE94(Trim(var_144), var_E0, CVar(CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))), var_144, var_144, CVar(CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))), var_144)
  loc_193097C:         If (var_14C <> vbNullString) Then
  loc_19309BF:           var_1A4 = (var_E4 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_CC, var_E6))))
  loc_19309C8:           var_1B4 = (CVar(var_94.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_19309F7:           var_130 = CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("ChqDate")), Str(CVar(var_94.Fields.Item("V_NO"))), var_E2)) 'String
  loc_19309FA:           var_1D4 = (var_E0 + var_130)
  loc_19309FF:           var_C0 = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_1930A1F:         End If
  loc_1930A5B:         var_194 = (var_D4 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("mNarr")), CVar(var_C0)))))
  loc_1930A87:         var_1B4 = CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("NARR")))) 'String
  loc_1930A8D:         var_1C4 = Trim(var_1B4)
  loc_1930A95:         var_1D4 = (CVar(vbNullString & "Ch.No:") + var_1C4)
  loc_1930A9A:         var_C0 = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_1930AF2:         If (Len(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Name")))) <> 0) Then
  loc_1930B1D:           var_164 = CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Name")))) 'String
  loc_1930B2A:           var_8C.Collect = "Name"
  loc_1930B86:           var_8C.Collect = "cr"
  loc_1930B9F:           If (var_BC = "Yes") Then
  loc_1930BCA:             var_164 = CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Name")), Format(CVar(var_94.Fields.Item("Amount")), "0.00"), 1)) 'String
  loc_1930BED:             var_1A4 = ("By " + Left(Trim(var_164), &H2F))
  loc_1930BFB:             var_8C.Collect = "Name"
  loc_1930C10:           End If
  loc_1930C2F:           var_120 = CVar(var_AC) 'Double
  loc_1930C5A:           var_194 = (1 - Format(CVar(var_94.Fields.Item("Amount")), "0.00"))
  loc_1930C5F:           var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_1930C70:           var_E8 = &HFF
  loc_1930C75:           var_E4 = &HFF
  loc_1930C7B:         Else
  loc_1930C9A:           Set var_134 = CVar(CLng(2))(1)
  loc_1930CD7:           If CBool((var_E4 = 0) And (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes")) Then
  loc_1930CE0:             If (var_E8 = 0) Then
  loc_1930D1E:               var_174 = Format(CVar(var_94.Fields.Item("Amount")), "0.00")
  loc_1930D30:               var_8C.Collect = "cr"
  loc_1930D60:               var_120 = CVar(var_AC) 'Double
  loc_1930D8B:               var_194 = (1 - Format(CVar(var_94.Fields.Item("Amount")), "0.00"))
  loc_1930D90:               var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_1930D9F:               var_110 = "As Per Detail"
  loc_1930DAE:               var_8C.Collect = "Name"
  loc_1930DB5:               var_E8 = &HFF
  loc_1930DCD:               Set var_134 = CVar(CLng(2))(1)
  loc_1930E00:               If (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes") Then
  loc_1930E10:                 var_110 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_1930E84:                 unk_583395.Execute CStr(var_110 & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value), var_1B4, -1
  loc_1930E8F:                 Set var_98 = var_238
  loc_1930EB1:               End If
  loc_1930EB4:             Else
  loc_1930EC3:               If Not(var_98.EOF) Then
  loc_1930EF0:                 var_110 = 0
  loc_1930F02:                 If (var_98.Fields.Item("Debit").Value > var_110) Then
  loc_1930F2F:                   var_120 = "Debit"
  loc_1930F52:                   Proc_183_4_EAC738(var_1C4, CVar(var_98.Fields.Item(var_120)), var_238, var_E8, var_110)
  loc_1930F7C:                   var_194 = (1 + CVar(Proc_183_15_EAD490(CStr(var_98.Fields.Item("Name").Value), &H14, Space(2), var_AC)))
  loc_1930F85:                   var_1A4 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_1930F9B:                   var_1D4 = CVar(Proc_183_16_EAF86C(CStr(var_1C4), &HC, " " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value)) 'String
  loc_1930F9E:                   var_1E4 = (var_120 + var_1D4)
  loc_1930FA7:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_1930FB5:                   var_8C.Collect = "Name"
  loc_1930FE4:                 Else
  loc_1931031:                   Proc_183_4_EAC738(var_1C4, CVar(var_98.Fields.Item("Credit")), vbNullString)
  loc_193105B:                   var_194 = (CVar(Proc_183_15_EAD490(CStr(var_98.Fields.Item("Name").Value), &H14, Space(2))) + CVar(Proc_183_15_EAD490(CStr(var_98.Fields.Item("Name").Value), &H14, Space(2))))
  loc_1931064:                   var_1A4 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_193107D:                   var_1E4 = (" " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value + CVar(Proc_183_16_EAF86C(CStr(var_1C4), &HC)))
  loc_1931086:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_1931094:                   var_8C.Collect = "Name"
  loc_19310C0:                 End If
  loc_19310C3:                 var_98.MoveNext
  loc_19310C8:               End If
  loc_19310D9:               If (var_98.EOF = &HFF) Then
  loc_19310DE:                 var_E4 = &HFF
  loc_19310E1:               End If
  loc_19310E1:             End If
  loc_19310E4:           Else
  loc_193111C:             var_1A4 = (Space(2) + Trim(Mid(var_C0, 1, 36)))
  loc_193112A:             var_8C.Collect = "Name"
  loc_1931177:             var_174 = Format(CVar(var_94.Fields.Item("Amount")), "0.00")
  loc_1931189:             var_8C.Collect = "cr"
  loc_19311B9:             var_120 = CVar(var_AC) 'Double
  loc_19311E4:             var_194 = (1 - Format(CVar(var_94.Fields.Item("Amount")), "0.00"))
  loc_19311E9:             var_AC = CSng(Trim(Mid(var_C0, 1, 36)))
  loc_1931221:             var_C0 = CStr(Trim(Mid(var_C0, &H25, 510)))
  loc_193122F:             var_E8 = &HFF
  loc_1931234:             var_E4 = &HFF
  loc_1931237:           End If
  loc_1931237:         End If
  loc_193124F:         If (((Len(var_C0) <= 0) And (var_E4 = &HFF)) And (var_E8 = &HFF)) Then
  loc_1931254:           var_E0 = 0
  loc_1931259:           var_E4 = 0
  loc_193125E:           var_E8 = 0
  loc_1931264:           var_94.MoveNext
  loc_1931278:           If Not(var_94.EOF) Then
  loc_19312A7:             var_D4 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_19312B7:           Else
  loc_19312D3:             var_D4 = CDate(DateAdd("D", CDbl(1), CVar(var_E8(var_D4))))
  loc_19312DD:           End If
  loc_19312DD:         End If
  loc_19312E0:       Else
  loc_19312F4:         var_C0 = CStr(Trim(var_C0))
  loc_1931332:         var_1A4 = (Space(2) + Trim(Mid(var_C0, 1, 36)))
  loc_1931340:         var_8C.Collect = "Name"
  loc_1931391:         If (Len(CStr(Trim(Mid(var_C0, &H25, 510)))) <= 0) Then
  loc_1931396:           var_E0 = 0
  loc_193139B:           var_E4 = 0
  loc_19313A0:           var_E8 = 0
  loc_19313A6:           var_94.MoveNext
  loc_19313BA:           If Not(var_94.EOF) Then
  loc_19313E9:             var_D4 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_19313F9:           Else
  loc_1931415:             var_D4 = CDate(DateAdd("D", CDbl(1), CVar(var_E8(var_D4))))
  loc_193141F:           End If
  loc_193141F:         End If
  loc_193141F:       End If
  loc_193141F:     End If
  loc_1931426:     If (var_DC = var_CC) Then
  loc_1931448:       var_144 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_1931456:       var_8C.Collect = "vType"
  loc_1931480:       var_144 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_193148E:       var_8C.Collect = "VNo"
  loc_193149C:       var_110 = CDate(var_DC)
  loc_19314AA:       var_8C.Collect = "V_DATE"
  loc_19314CE:       var_144 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_19314DC:       var_8C.Collect = "VSno"
  loc_1931556:       var_238 = Me.Fields
  loc_1931600:       var_2A4 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + IIf((var_238.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_1931605:       var_B8 = CStr(var_2A4)
  loc_19316BE:       var_194 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_19316EF:       var_234 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_19316F4:       var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_193174E:       var_194 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1931780:       var_1C4 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_1931785:       var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_19317D1:       var_194 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_193180E:       var_1D4 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_193183E:       var_8C.Collect = "DocNo1"
  loc_1931857:       If (((var_E2 = 0) Or (var_E6 = 0)) Or (var_EA = 0)) Then
  loc_1931884:         var_144 = CVar(var_90.Fields.Item("Chq_No")) 'Address
  loc_1931898:         var_14C = Proc_183_2_E5AE94(Trim(var_144), &HFF, CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))), var_144, CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))), var_144, var_144)
  loc_19318AD:         If (var_14C <> vbNullString) Then
  loc_19318F0:           var_1A4 = (var_E0 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_D4, var_E4))))
  loc_19318F9:           var_1B4 = (CVar(var_90.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_1931925:           var_14C = Proc_183_2_E5AE94(CVar(var_90.Fields.Item("ChqDate")), Str(CVar(var_90.Fields.Item("V_NO"))), CVar(var_90.Fields.Item("V_NO")))
  loc_193192B:           var_1D4 = (var_D4 + CVar(var_14C))
  loc_1931930:           var_C4 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_1931950:         End If
  loc_193198C:         var_194 = (var_E4 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr")), CVar(var_C4)))))
  loc_19319B8:         var_1B4 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("NARR")))) 'String
  loc_19319BE:         var_1C4 = Trim(var_1B4)
  loc_19319C6:         var_1D4 = (CVar(vbNullString & "Ch.No:") + var_1C4)
  loc_19319CB:         var_C4 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_1931A23:         If (Len(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")))) <> 0) Then
  loc_1931A45:           var_144 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_1931A53:           var_8C.Collect = "Name1"
  loc_1931AAB:           var_8C.Collect = "ADJAMT"
  loc_1931AC4:           If (var_BC = "Yes") Then
  loc_1931AEF:             var_164 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), Format(CVar(var_90.Fields.Item("Amount")), "0.00"), 1)) 'String
  loc_1931B12:             var_1A4 = ("To " + Left(Trim(var_164), &H2F))
  loc_1931B20:             var_8C.Collect = "Name1"
  loc_1931B35:           End If
  loc_1931B54:           var_120 = CVar(var_AC) 'Double
  loc_1931B7F:           var_194 = (1 + Format(CVar(var_90.Fields.Item("Amount")), "0.00"))
  loc_1931B84:           var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_1931B97:           var_EA = &HFF
  loc_1931B9C:           var_E6 = &HFF
  loc_1931BA2:         Else
  loc_1931BC1:           Set var_134 = CVar(CLng(2))(1)
  loc_1931BFE:           If CBool((var_E6 = 0) And (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes")) Then
  loc_1931C07:             If (var_EA = 0) Then
  loc_1931C45:               var_174 = Format(CVar(var_90.Fields.Item("Amount")), "0.00")
  loc_1931C57:               var_8C.Collect = "ADJAMT"
  loc_1931C87:               var_120 = CVar(var_AC) 'Double
  loc_1931CB2:               var_194 = (1 + Format(CVar(var_90.Fields.Item("Amount")), "0.00"))
  loc_1931CB7:               var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_1931CC8:               var_110 = "As Per Detail"
  loc_1931CD7:               var_8C.Collect = "Name1"
  loc_1931CDE:               var_EA = &HFF
  loc_1931CF6:               Set var_134 = CVar(CLng(2))(1)
  loc_1931D29:               If (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes") Then
  loc_1931D39:                 var_110 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_1931DA3:                 var_14C = CStr(var_110 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)
  loc_1931DAD:                 unk_583395.Execute var_14C, var_1B4, -1
  loc_1931DB8:                 Set var_9C = var_238
  loc_1931DDA:               End If
  loc_1931DDD:             Else
  loc_1931DEC:               If Not(var_9C.EOF) Then
  loc_1931E19:                 var_110 = 0
  loc_1931E2B:                 If (var_9C.Fields.Item("Debit").Value > var_110) Then
  loc_1931E58:                   var_120 = "Debit"
  loc_1931E7B:                   Proc_183_4_EAC738(var_1C4, CVar(var_9C.Fields.Item(var_120)), var_238, var_EA, var_110)
  loc_1931EA5:                   var_194 = (1 + CVar(Proc_183_15_EAD490(CStr(var_9C.Fields.Item("Name").Value), &H14, Space(2), var_AC)))
  loc_1931EAE:                   var_1A4 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_1931EC4:                   var_1D4 = CVar(Proc_183_16_EAF86C(CStr(var_1C4), &HC, " " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)) 'String
  loc_1931EC7:                   var_1E4 = (var_120 + var_1D4)
  loc_1931ED0:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_1931EDE:                   var_8C.Collect = "Name1"
  loc_1931F0D:                 Else
  loc_1931F5A:                   Proc_183_4_EAC738(var_1C4, CVar(var_9C.Fields.Item("Credit")), vbNullString)
  loc_1931F84:                   var_194 = (CVar(Proc_183_15_EAD490(CStr(var_9C.Fields.Item("Name").Value), &H14, Space(2))) + CVar(Proc_183_15_EAD490(CStr(var_9C.Fields.Item("Name").Value), &H14, Space(2))))
  loc_1931F8D:                   var_1A4 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_1931FA6:                   var_1E4 = (" " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value + CVar(Proc_183_16_EAF86C(CStr(var_1C4), &HC)))
  loc_1931FAF:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_1931FBD:                   var_8C.Collect = "Name1"
  loc_1931FE9:                 End If
  loc_1931FEC:                 var_9C.MoveNext
  loc_1931FF1:               End If
  loc_1932002:               If (var_9C.EOF = &HFF) Then
  loc_1932007:                 var_E6 = &HFF
  loc_193200A:               End If
  loc_193200A:             End If
  loc_193200D:           Else
  loc_1932045:             var_1A4 = (Space(2) + Trim(Mid(var_C4, 1, 36)))
  loc_1932053:             var_8C.Collect = "Name1"
  loc_193208E:             var_C4 = CStr(Trim(Mid(var_C4, &H25, 510)))
  loc_19320D5:             var_174 = Format(CVar(var_90.Fields.Item("Amount")), "0.00")
  loc_19320E7:             var_8C.Collect = "ADJAMT"
  loc_1932117:             var_120 = CVar(var_AC) 'Double
  loc_1932125:             var_110 = "0.00"
  loc_1932142:             var_194 = (1 + Format(CVar(var_90.Fields.Item("Amount")), var_110))
  loc_1932147:             var_AC = CSng(Trim(Mid(var_C4, 1, 36)))
  loc_193215A:             var_EA = &HFF
  loc_193215F:             var_E6 = &HFF
  loc_1932162:           End If
  loc_1932162:         End If
  loc_193217A:         If (((Len(var_C4) <= 0) And (var_E6 = &HFF)) And (var_EA = &HFF)) Then
  loc_193217F:           var_E2 = 0
  loc_1932184:           var_E6 = 0
  loc_1932189:           var_EA = 0
  loc_193218F:           var_90.MoveNext
  loc_19321A3:           If Not(var_90.EOF) Then
  loc_19321D2:             var_DC = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_19321E2:           Else
  loc_19321FE:             var_DC = CDate(DateAdd("D", CDbl(1), CVar(var_EA(var_DC))))
  loc_1932208:           End If
  loc_1932208:         End If
  loc_193220B:       Else
  loc_193221F:         var_C4 = CStr(Trim(var_C4))
  loc_1932255:         var_194 = Trim(Mid(var_C4, 1, 36))
  loc_193225D:         var_1A4 = (Space(2) + var_194)
  loc_193226B:         var_8C.Collect = "Name1"
  loc_193229D:         var_174 = Trim(Mid(var_C4, &H25, 510))
  loc_19322BC:         If (Len(CStr(var_174)) <= 0) Then
  loc_19322C1:           var_E2 = 0
  loc_19322C6:           var_E6 = 0
  loc_19322CB:           var_EA = 0
  loc_19322D1:           var_90.MoveNext
  loc_19322DC:           var_146 = var_90.EOF
  loc_19322E5:           If Not(var_146) Then
  loc_19322EE:             var_100 = "V_DATE"
  loc_1932314:             var_DC = CDate(var_90.Fields.Item(var_100).Value)
  loc_1932324:           Else
  loc_1932340:             var_DC = CDate(DateAdd("D", CDbl(1), CVar(var_EA(var_DC))))
  loc_193234A:           End If
  loc_193234A:         End If
  loc_193234A:       End If
  loc_193234A:     End If
  loc_1932355:     var_8C.Update var_100, var_110
  loc_193235D:   Else
  loc_1932364:     If (var_D4 <= var_DC) Then
  loc_1932370:       If (var_D4 = CDate("12:00:00 AM")) Then
  loc_1932376:         var_CC = var_DC
  loc_193237C:       Else
  loc_193237F:         var_CC = var_D4
  loc_1932382:       End If
  loc_1932385:     Else
  loc_193238E:       If (var_DC = CDate("12:00:00 AM")) Then
  loc_1932394:         var_CC = var_D4
  loc_193239A:       Else
  loc_193239D:         var_CC = var_DC
  loc_19323A0:       End If
  loc_19323A0:     End If
  loc_19323A7:     If (var_AC <> CDbl(0)) Then
  loc_19323B5:       var_8C.AddNew var_100, var_110
  loc_19323BD:       var_110 = CDate(var_CC)
  loc_19323CB:       var_8C.Collect = "V_DATE"
  loc_19323D7:       If (var_AC < CDbl(0)) Then
  loc_19323DA:         var_110 = "OPENING BALANCE"
  loc_19323E9:         var_8C.Collect = "Name"
  loc_19323F2:         var_110 = CVar(Abs(var_AC)) 'Double
  loc_1932400:         var_8C.Collect = "cr"
  loc_1932408:       Else
  loc_1932408:         var_110 = "OPENING BALANCE"
  loc_1932417:         var_8C.Collect = "Name1"
  loc_1932420:         var_110 = CVar(Abs(var_AC)) 'Double
  loc_1932425:         var_100 = "ADJAMT"
  loc_193242E:         var_8C.Collect = var_100
  loc_1932433:       End If
  loc_193243E:       var_8C.Update var_100, var_110
  loc_1932443:     End If
  loc_1932443:   End If
  loc_1932443:   GoTo loc_19304AB
  loc_1932446: End If
  loc_193245A: If (var_8C.RecordCount > 0) Then
  loc_1932460:   var_8C.MoveFirst
  loc_1932465: End If
  loc_1932479: If (var_8C.RecordCount <= 0) Then
  loc_1932482:   Call 0.Method_arg_50 (var_14C, var_110, var_110, var_110, var_110, var_110, var_CC)
  loc_19324A3:   MsgBox("** No Records Found to Print **", &H40, CVar(var_14C), var_174, var_194)
  loc_19324B8:   global_130 = 0
  loc_19324BB:   Exit Sub
  loc_19324BC: End If
  loc_19324BF: var_2A6 = arg_C
  loc_19324C8: If (var_2A6 = 1) Then
  loc_19324EC:   MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, "Paper Setting", var_174, var_194)
  loc_1932511:   Set var_134 = CVar(CLng(3))(1)
  loc_1932522:   var_14C = CStr(DGSite.DispID_41)
  loc_193253D:   Set var_180 = var_8C
  loc_1932556:   Call 0.Method_arg_164 (Me, var_180, CLng(Val(var_14C)), var_146, Val(var_14C), var_2A6, global_130)
  loc_1932561:   Set var_8C = var_180
  loc_1932567:   var_DE = var_146
  loc_193257E:   global_130 = 0
  loc_1932581:   GoTo loc_19326B9
  loc_1932587: Else
  loc_193259C:   var_134 = Me.Fields
  loc_19325B4:   var_110 = "No"
  loc_19325C4:   var_120 = "LedSiteCode"
  loc_1932630:   var_1D4 = (var_134.Item("LedDivCode").Value = var_110) And (Me.Fields.Item(var_120).Value = "No") And (Me.Fields.Item("LedPrefix").Value = "No")
  loc_193264E:   If CBool(var_1D4) Then
  loc_193265D:     Call 0.Method_arg_E4 (var_134, global_130, var_DE, var_CC, var_CC)
  loc_1932668:     MemVar_1F951E8 = var_134
  loc_1932672:   Else
  loc_193267E:     Call 0.Method_arg_E0 (var_134, var_CC, var_DC)
  loc_1932689:     MemVar_1F951E8 = var_134
  loc_1932690:   End If
  loc_19326A9:   Call 0.Method_arg_64 (var_134, CVar(var_8C), var_110, var_120)
  loc_19326B1:   Call 0.Method_arg_2C (var_E6, var_E2)
  loc_19326B9: End If
  loc_19326B9: ' Referenced from: 1932581
  loc_19326BE: Set var_88 = Nothing
  loc_19326C6: Set var_90 = Nothing
  loc_19326CE: Set var_94 = Nothing
  loc_19326D6: Set var_98 = Nothing
  loc_19326DE: Set var_9C = Nothing
  loc_19326E6: Set var_8C = Nothing
  loc_19326E9: Exit Sub
  loc_19326EA: ' Referenced from: 192FB00
  loc_19326F8: Call 0.Method_arg_50 (var_14C, 0)
  loc_193270D: Proc_183_57_104B0BC(var_14C, "CashBook")
  loc_1932719: Exit Sub
End Sub

Public Sub Proc_203_73_161F3AC(arg_C) '161F3AC
  'Data Table: 583348
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_114 As String
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_D8 As Variant
  Dim var_15C As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim unk_583395 As Connection15
  Dim var_98 As Long
  Dim var_88 As Recordset15
  Dim var_FC As Fields15
  Dim var_B0 As Double
  Dim var_B8 As Long
  Dim var_1E4 As Recordset15
  Dim Me As Recordset15
  Dim var_1E8 As Fields15
  Dim var_26C As Variant
  Dim var_21C As Variant
  Dim var_270 As Recordset15
  Dim var_8C As Recordset15
  Dim var_274 As Recordset15
  Dim var_278 As Recordset15
  Dim var_27E As Integer
  Dim var_8E As Integer
  Dim var_10E As Integer
  loc_161DF0C: On Error Goto loc_161F37B
  loc_161DF24: Set var_FC = CVar(CLng(0))(0)
  loc_161DF48: Call Proc_203_59_F525A0(CInt(0), CStr(var_10C))
  loc_161DF5C: If (var_116 = 0) Then
  loc_161DF64:   global_130 = 0
  loc_161DF67:   Exit Sub
  loc_161DF68: End If
  loc_161DF7D: Set var_FC = CVar(CLng(1))(0)
  loc_161DFA1: Call Proc_203_59_F525A0(CInt(1), CStr(var_10C))
  loc_161DFB5: If (var_116 = 0) Then
  loc_161DFBD:   global_130 = 0
  loc_161DFC0:   Exit Sub
  loc_161DFC1: End If
  loc_161DFD6: Set var_FC = CVar(CLng(0))(1)
  loc_161DFF4: global_130(CStr(DGSite.DispID_41)).Text = var_116
  loc_161E01B: Set var_FC = CVar(CLng(1))(1)
  loc_161E033: Set var_11C = DGSite.DispID_41(CStr(DGSite.DispID_41))
  loc_161E039: var_11C.Text = global_130
  loc_161E062: If (Proc_183_48_F06B28(Me, var_116) = 0) Then
  loc_161E06A:   global_130 = 0
  loc_161E06D:   Exit Sub
  loc_161E06E: End If
  loc_161E083: Set var_FC = CVar(CLng(3))(2)
  loc_161E094: var_12C = CVar(CStr(DGSite.DispID_41)) 'String
  loc_161E0B6: If CBool(Trim(var_12C) <> vbNullString) Then
  loc_161E0D1:   Set var_FC = CVar(CLng(3))(2)
  loc_161E0ED:   var_94 = " And VIEWLEDGER.LOGSite_Code='" & CStr(DGSite.DispID_41) & "'"
  loc_161E100: Else
  loc_161E10E:   var_94 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_161E114: End If
  loc_161E121: var_C8 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE V_dATE BETWEEN "
  loc_161E131: Proc_183_7_EB17D4(var_12C, CVar(var_1E0(var_C8)), -1)
  loc_161E151: Proc_183_7_EB17D4(var_180, CVar(global_130(var_FC & var_12C & " AND ")))
  loc_161E183: unk_583395.Execute CStr(DGSite.DispID_41 & var_180 & " " & CVar(var_94) & " ORDER BY V_DATE,V_TYPE,V_NO,V_SNo"), , 
  loc_161E18E: Set var_88 = var_FC
  loc_161E1C0: Set var_FC = New
  loc_161E1CF: Call 0.Method_arg_1C0 (var_FC)
  loc_161E1DA: Set var_8C = var_FC
  loc_161E1E3: Set var_8C = var_11C
  loc_161E1F2: var_98 = 0
  loc_161E1F5: ' Referenced from: 161F1B5
  loc_161E204: If Not(Me.Recordset15.EOF) Then
  loc_161E210:   If (var_98 = 0) Then
  loc_161E23F:     var_98 = CLng(var_88.Fields.Item("V_NO").Value)
  loc_161E24C:   End If
  loc_161E255:   var_A0 = vbNullString
  loc_161E25B:   var_A4 = vbNullString
  loc_161E261:   var_A8 = vbNullString
  loc_161E29D:   If (Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Chq_No")), var_98) <> vbNullString) Then
  loc_161E2E0:     var_170 = (var_98 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_161E2E5:     var_9C = CStr(CVar(global_130(var_88.Fields & CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:"))) & " AND ")))
  loc_161E2F8:   End If
  loc_161E327:   If Not(IsNull(CVar(var_88.Fields.Item("Chq_Date")))) Then
  loc_161E34D:     var_114 = var_9C & " Dt: "
  loc_161E37D:     var_9C = 1 & CStr(Format(CVar(var_88.Fields.Item("Chq_Date")), "dd/MM/yy"))
  loc_161E395:   End If
  loc_161E3BD:   var_A0 = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("NARR")), 1)
  loc_161E3EE:   var_A4 = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("mNarr")), var_114)
  loc_161E41D:   var_D8 = "dd/MMM/yyyy"
  loc_161E43C:   var_B0 = CDate(Format(CVar(var_88.Fields.Item("V_DATE")), var_D8))
  loc_161E476:   var_B4 = CStr(var_88.Fields.Item("DocID").Value)
  loc_161E489:   var_C8 = "V_SNo"
  loc_161E4AF:   var_B8 = CLng(var_88.Fields.Item(var_C8).Value)
  loc_161E4BF:   Set var_1E4 = var_8C 
  loc_161E4CE:   var_1E4.AddNew var_C8, var_D8
  loc_161E4F2:   var_10C = CVar(var_88.Fields.Item("V_DATE")) 'Address
  loc_161E500:   var_1E4.Collect = "PDate"
  loc_161E52A:   var_10C = CVar(var_88.Fields.Item("V_DATE")) 'Address
  loc_161E538:   var_1E4.Collect = "V_DATE"
  loc_161E562:   var_10C = CVar(var_88.Fields.Item("V_Type")) 'Address
  loc_161E570:   var_1E4.Collect = "V_Type"
  loc_161E59A:   var_10C = CVar(var_88.Fields.Item("V_NO")) 'Address
  loc_161E5A8:   var_1E4.Collect = "V_NO"
  loc_161E5D2:   var_10C = CVar(var_88.Fields.Item("V_SNo")) 'Address
  loc_161E5E0:   var_1E4.Collect = "V_SNo"
  loc_161E613:   var_12C = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")))) 'String
  loc_161E620:   var_1E4.Collect = "subcode"
  loc_161E657:   var_12C = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")), var_12C, var_B8, var_B0)) 'String
  loc_161E664:   var_1E4.Collect = "Name"
  loc_161E6AE:   var_13C = Format(CVar(var_88.Fields.Item("Credit")), "0.00")
  loc_161E6C0:   var_1E4.Collect = "cr"
  loc_161E70C:   var_13C = Format(CVar(var_88.Fields.Item("Debit")), "0.00")
  loc_161E71E:   var_1E4.Collect = "dr"
  loc_161E848:   var_26C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_88.Fields.Item("DocID")), 1), vbNullString) + IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_161E84D:   var_A8 = CStr(var_26C)
  loc_161E906:   var_15C = (CVar(var_A8) + IIf((var_A8 = vbNullString), vbNullString, "/"))
  loc_161E937:   var_21C = (Left(CVar(var_88.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_88.Fields.Item("V_ADD"))), vbNullString))
  loc_161E93C:   var_A8 = CStr(Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)))
  loc_161E996:   var_15C = (CVar(var_A8) + IIf((var_A8 = vbNullString), vbNullString, "/"))
  loc_161E9C8:   var_190 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(CVar(var_88.Fields.Item("V_Type"))))
  loc_161E9CD:   var_A8 = CStr(CVar(var_88.Fields.Item("V_ADD")))
  loc_161EA19:   var_15C = (CVar(var_A8) + IIf((var_A8 = vbNullString), vbNullString, "/"))
  loc_161EA56:   var_1A0 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_88.Fields.Item("V_NO")))))
  loc_161EA5B:   var_A8 = CStr(Trim(CVar(var_88.Fields.Item("V_ADD"))))
  loc_161EA7D:   var_C8 = "DOCNO"
  loc_161EA86:   var_1E4.Collect = var_C8
  loc_161EA96:   var_1E4.Update var_C8, CVar(var_A8)
  loc_161EA9D:   Set var_1E4 = Nothing 
  loc_161EABF:   If CBool(Trim(var_A0) <> vbNullString) Then
  loc_161EAC2:     ' Referenced from: 161ED95
  loc_161EACC:     If (Len(var_A0) > 0) Then
  loc_161EAD2:       Set var_270 = var_8C 
  loc_161EAD9:       var_270.MoveLast
  loc_161EAE1:       var_C8 = "Name"
  loc_161EB0C:       var_D8 = vbNullString
  loc_161EB1E:       If CBool(Trim(CVar(var_8C.Fields.Item(var_C8))) <> var_D8) Then
  loc_161EB2C:         var_270.AddNew var_C8, var_D8
  loc_161EB31:       End If
  loc_161EB69:       var_270.Fields.Item("Name").Value = Left(var_A0, &H32)
  loc_161EBBB:       var_270.Fields.Item("DocId").Value = CVar(var_88.Fields.Item("DocID"))
  loc_161EC0F:       var_270.Fields.Item("PDate").Value = CVar(var_88.Fields.Item("V_DATE"))
  loc_161EC23:       var_D8 = CVar(var_B8) 'Long
  loc_161EC31:       var_270.Collect = "V_SNo"
  loc_161EC39:       var_D8 = CVar(var_A8) 'String
  loc_161EC46:       var_270.Collect = "DOCNO"
  loc_161EC87:       If (var_88.Fields.Item("V_Type").Value = "OP") Then
  loc_161ECAF:         var_270.Fields.Item("Val").Value = "1"
  loc_161ECBE:       Else
  loc_161ECC4:         var_C8 = "Credit"
  loc_161ECF5:         var_15C = "2"
  loc_161ECFE:         var_D8 = 0
  loc_161ED08:         var_13C = (var_88.Fields.Item(var_C8).Value > var_D8) 'Variant
  loc_161ED3A:         var_270.Fields.Item("Val").Value = IIf(var_13C, var_15C, "3")
  loc_161ED57:       End If
  loc_161ED62:       var_270.Update var_C8, var_D8
  loc_161ED69:       Set var_270 = Nothing 
  loc_161ED8B:       var_A0 = CStr(Mid(var_A0, &H33, 300))
  loc_161ED95:       GoTo loc_161EAC2
  loc_161ED98:     End If
  loc_161ED98:   End If
  loc_161ED9B:   var_88.MoveNext
  loc_161EDA6:   var_10E = var_88.EOF
  loc_161EDB1:   If (var_10E = &HFF) Then
  loc_161EDB4:     ' Referenced from: 161F1B2
  loc_161EDD2:     If CBool(Trim(var_A0) <> vbNullString) Then
  loc_161EDD5:       ' Referenced from: 161EF8A
  loc_161EDDF:       If (Len(var_A0) > 0) Then
  loc_161EDE5:         Set var_274 = var_8C 
  loc_161EDEC:         var_274.MoveLast
  loc_161EDF4:         var_C8 = "Name"
  loc_161EE1F:         var_D8 = vbNullString
  loc_161EE31:         If CBool(Trim(CVar(var_8C.Fields.Item(var_C8))) <> var_D8) Then
  loc_161EE3F:           var_274.AddNew var_C8, var_D8
  loc_161EE44:         End If
  loc_161EE7C:         var_274.Fields.Item("Name").Value = Left(var_A0, &H32)
  loc_161EEB1:         var_274.Fields.Item("DocId").Value = CVar(var_B4)
  loc_161EEE4:         var_274.Fields.Item("PDate").Value = CDate(var_B0)
  loc_161EEF3:         var_D8 = CVar(var_B8) 'Long
  loc_161EF01:         var_274.Collect = "V_SNo"
  loc_161EF09:         var_D8 = CVar(var_A8) 'String
  loc_161EF16:         var_274.Collect = "DOCNO"
  loc_161EF1B:         var_D8 = "4"
  loc_161EF24:         var_C8 = "Val"
  loc_161EF40:         var_274.Fields.Item(var_C8).Value = var_D8
  loc_161EF57:         var_274.Update var_C8, var_D8
  loc_161EF5E:         Set var_274 = Nothing 
  loc_161EF80:         var_A0 = CStr(Mid(var_A0, &H33, 300))
  loc_161EF8A:         GoTo loc_161EDD5
  loc_161EF8D:       End If
  loc_161EF8D:     End If
  loc_161EFAB:     If CBool(Trim(var_A4) <> vbNullString) Then
  loc_161EFAE:       ' Referenced from: 161F163
  loc_161EFB8:       If (Len(var_A4) > 0) Then
  loc_161EFBE:         Set var_278 = var_8C 
  loc_161EFC5:         var_278.MoveLast
  loc_161EFCD:         var_C8 = "Name"
  loc_161EFF8:         var_D8 = vbNullString
  loc_161F00A:         If CBool(Trim(CVar(var_8C.Fields.Item(var_C8))) <> var_D8) Then
  loc_161F018:           var_278.AddNew var_C8, var_D8
  loc_161F01D:         End If
  loc_161F055:         var_278.Fields.Item("Name").Value = Left(var_A4, &H32)
  loc_161F08A:         var_278.Fields.Item("DocId").Value = CVar(var_B4)
  loc_161F0BD:         var_278.Fields.Item("PDate").Value = CDate(var_B0)
  loc_161F0CC:         var_D8 = CVar(var_B8) 'Long
  loc_161F0DA:         var_278.Collect = "V_SNo"
  loc_161F0E2:         var_D8 = CVar(var_A8) 'String
  loc_161F0EF:         var_278.Collect = "DOCNO"
  loc_161F0F4:         var_D8 = "5"
  loc_161F0FD:         var_C8 = "Val"
  loc_161F119:         var_278.Fields.Item(var_C8).Value = var_D8
  loc_161F130:         var_278.Update var_C8, var_D8
  loc_161F137:         Set var_278 = Nothing 
  loc_161F159:         var_A4 = CStr(Mid(var_A4, &H33, 300))
  loc_161F163:         GoTo loc_161EFAE
  loc_161F166:       End If
  loc_161F166:     End If
  loc_161F169:   Else
  loc_161F16C:     var_D8 = CVar(var_98) 'Long
  loc_161F1A7:     If CBool(var_D8 <> var_88.Fields.Item("V_NO").Value) Then
  loc_161F1AF:       var_98 = 0
  loc_161F1B2:       GoTo loc_161EDB4
  loc_161F1B5:     End If
  loc_161F1B5:   End If
  loc_161F1B5:   GoTo loc_161E1F5
  loc_161F1B8: End If
  loc_161F1CC: If (var_88.RecordCount <= 0) Then
  loc_161F1D5:   Call 0.Method_arg_50 (var_114, var_98, var_D8, var_D8, var_D8, var_D8)
  loc_161F1F6:   MsgBox("** No Records Found to Print **", &H40, CVar(var_114), var_13C, var_15C)
  loc_161F20B:   global_130 = 0
  loc_161F20E:   Exit Sub
  loc_161F20F: End If
  loc_161F215: global_124 = "DayBook"
  loc_161F21C: var_27E = arg_C
  loc_161F225: If (var_27E = 1) Then
  loc_161F22E:   var_D8 = "Paper Setting"
  loc_161F243:   var_10C = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_161F249:   MsgBox(var_10C, &H40, var_D8, var_13C, var_15C)
  loc_161F261:   var_E8 = 1
  loc_161F26E:   Set var_FC = CVar(CLng(2))(var_E8)
  loc_161F291:   Set var_1E8 = var_8C
  loc_161F2AA:   Call 0.Method_arg_174 (Me, var_1E8, CStr(var_10C), var_10E, DGSite.DispID_41, var_27E, global_130)
  loc_161F2B5:   Set var_8C = var_1E8
  loc_161F2BB:   var_8E = var_10E
  loc_161F2D2:   global_130 = 0
  loc_161F2D5:   GoTo loc_161F36A
  loc_161F2DB: Else
  loc_161F2E1:   If (var_27E = 0) Then
  loc_161F2ED:     var_114 = MemVar_1F953B4 & "\FaDayBook.ttx"
  loc_161F2FA:     Set var_FC = var_8C 
  loc_161F306:     var_10E = CreateFieldDefFile(var_FC, var_114, &HFF, global_130, var_8E, var_D8)
  loc_161F32F:     Call 0.Method_arg_FC (var_FC, var_10E, var_10E, var_D8)
  loc_161F33A:     MemVar_1F951E8 = var_FC
  loc_161F35A:     Call 0.Method_arg_64 (var_FC, CVar(var_FC), var_D8, var_E8)
  loc_161F362:     Call 0.Method_arg_2C (var_D8, var_13C)
  loc_161F36A:   End If
  loc_161F36A:   ' Referenced from: 161F2D5
  loc_161F36A: End If
  loc_161F36F: Set var_88 = Nothing
  loc_161F377: Set var_8C = Nothing
  loc_161F37A: Exit Sub
  loc_161F37B: ' Referenced from: 161DF0C
  loc_161F389: Call 0.Method_arg_50 (var_114, 0)
  loc_161F39E: Proc_183_57_104B0BC(var_114, "DayBook")
  loc_161F3AA: Exit Sub
End Sub

Public Sub Proc_203_74_15A6EA4(arg_C) '15A6EA4
  'Data Table: 583348
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_100 As String
  Dim var_108 As Variant
  Dim var_C4 As String
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_E4 As String
  Dim var_168 As Variant
  Dim var_1A8 As String
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_248 As String
  Dim var_25C As String
  Dim var_260 As String
  Dim var_F8 As Variant
  Dim var_98 As Recordset15
  Dim var_268 As String
  Dim unk_583395 As Connection15
  Dim var_26C As Recordset15
  Dim var_9C As Recordset15
  Dim var_E8 As Fields15
  Dim var_278 As Recordset15
  Dim var_27E As Integer
  Dim var_A2 As Integer
  Dim var_FA As Integer
  loc_15A5CE0: On Error Goto loc_15A6E73
  loc_15A5CF8: Set var_E8 = CVar(CLng(0))(0)
  loc_15A5D1C: Call Proc_203_59_F525A0(CInt(0), CStr(var_F8))
  loc_15A5D30: If (var_102 = 0) Then
  loc_15A5D38:   global_130 = 0
  loc_15A5D3B:   Exit Sub
  loc_15A5D3C: End If
  loc_15A5D51: Set var_E8 = CVar(CLng(1))(0)
  loc_15A5D75: Call Proc_203_59_F525A0(CInt(1), CStr(var_F8))
  loc_15A5D89: If (var_102 = 0) Then
  loc_15A5D91:   global_130 = 0
  loc_15A5D94:   Exit Sub
  loc_15A5D95: End If
  loc_15A5DAA: Set var_E8 = CVar(CLng(0))(1)
  loc_15A5DC8: global_130(CStr(DGSite.DispID_41)).Text = var_102
  loc_15A5DEF: Set var_E8 = CVar(CLng(1))(1)
  loc_15A5E0D: DGSite.DispID_41(CStr(DGSite.DispID_41)).Text = global_130
  loc_15A5E36: If (Proc_183_48_F06B28(Me, var_102) = 0) Then
  loc_15A5E3E:   global_130 = 0
  loc_15A5E41:   Exit Sub
  loc_15A5E42: End If
  loc_15A5E57: Set var_E8 = CVar(CLng(3))(1)
  loc_15A5E79: If (CStr(DGSite.DispID_41) = "Yes") Then
  loc_15A5E8C:   Proc_183_7_EB17D4(var_F8, MemVar_1F950F4, " Where ((V_DATE>=")
  loc_15A5EAC:   Proc_183_7_EB17D4(var_148)
  loc_15A5EBD:   var_168 = CVar(DGSite.DispID_41(global_130 & var_F8 & " AND V_DATE<")) & var_148 & " AND VIEWSUBGROUP.GroupNature IN ('E','R')) OR (V_DATE<" 
  loc_15A5ECC:   Proc_183_7_EB17D4(var_188)
  loc_15A5F0E:   Proc_183_7_EB17D4(var_F8, MemVar_1F950F4)
  loc_15A5F2E:   Proc_183_7_EB17D4(var_148)
  loc_15A5F4E:   Proc_183_7_EB17D4(var_188)
  loc_15A5F5F:   var_1B8 = CVar((CVar((" Where ((V_DATE>=" & var_F8 & " AND V_DATE BETWEEN ")) & var_148 & " AND ")) & var_188 & " AND VIEWSUBGROUP.GroupNature IN ('E','R')) OR (V_DATE BETWEEN " 
  loc_15A5F6E:   Proc_183_7_EB17D4(var_1D8)
  loc_15A5F8E:   Proc_183_7_EB17D4(var_228)
  loc_15A5FA4:   var_88 = CStr(CVar((CVar((var_1B8)) & var_1D8 & " AND ")) & var_228 & " AND VIEWSUBGROUP.GroupNature NOT IN ('E','R')))")
  loc_15A5FD4:   Set var_98 = New 
  loc_15A5FEC:   Set var_E8 = CVar(CLng(2))(1)
  loc_15A600E:   If (CStr(DGSite.DispID_41) = "Yes") Then
  loc_15A602F:     var_100 = "SELECT 1 AS TT,MAX(ViewSubgroup.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0 AS BALANCECR,0 AS BALANCEDR,0 As Bal,MAX(ViewSubgroup.MAINGRCODES) AS mgrcode,Max(AA.GROUPNAME) AS GRName ,Max(AA.GROUPNATURE) AS GRNATURE FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE ) LEFT JOIN ACGROUP  AA ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,3) " & CStr(CVar((CVar((" Where ((V_DATE>=" & var_F8 & " AND V_DATE BETWEEN ")) & var_148 & " AND ")) & var_188 & " AND VIEWSUBGROUP.GroupNature NOT IN ('E','R')))")
  loc_15A603D:     var_260 = var_100 & " AND GAliasYN='N' AND aa.AliasYN='N' GROUP BY VIEWSUBGROUP.GROUPNAME,LEDGER.SUBCODE Union " & "SELECT 2 AS TT,MAX(ViewSubgroup.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(ViewSubgroup.MAINGRCODES) AS mgrcode,Max(AA.GROUPNAME) AS GRName ,Max(AA.GROUPNATURE) AS GRNATURE FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE ) LEFT JOIN ACGROUP  AA ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,3) "
  loc_15A6052:     Me.Recordset15.Open CVar(var_260 & var_88 & " AND GAliasYN='N' AND aa.AliasYN='N' GROUP BY VIEWSUBGROUP.GROUPNAME,LEDGER.SUBCODE "), CVar(MemVar_1F951E0), 2
  loc_15A6068:   Else
  loc_15A6086:     var_100 = "SELECT 2 AS TT,MAX(ViewSubgroup.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(ViewSubgroup.MAINGRCODES) AS mgrcode,Max(AA.GROUPNAME) AS GRName ,Max(AA.GROUPNATURE) AS GRNATURE FROM LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE " & var_88
  loc_15A608D:     var_F8 = CVar(var_100 & " AND GAliasYN='N' AND aa.AliasYN='N' GROUP BY VIEWSUBGROUP.GROUPNAME,LEDGER.SUBCODE ") 'String
  loc_15A6094:     var_98.Open var_F8, CVar(MemVar_1F951E0), 2
  loc_15A609F:   End If
  loc_15A60A2: Else
  loc_15A60B2:   Proc_183_7_EB17D4(var_F8, MemVar_1F950F4, " Where (((V_DATE>=", 3)
  loc_15A60BA:   var_118 = -1 & var_F8 
  loc_15A60D2:   Proc_183_7_EB17D4(var_148, CVar(3(" Where ((V_DATE>=" & var_F8 & " AND V_DATE<")))
  loc_15A60DA:   var_158 = -1 & var_148 
  loc_15A60DE:   var_E4 = " AND AA.GroupNature IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE<"
  loc_15A60F2:   Proc_183_7_EB17D4(var_188)
  loc_15A60FE:   var_1A8 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A6134:   Proc_183_7_EB17D4(var_F8, MemVar_1F950F4)
  loc_15A6154:   Proc_183_7_EB17D4(var_148)
  loc_15A6160:   var_E4 = " AND AA.GroupNature IN ('E','R')  AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE<"
  loc_15A6174:   Proc_183_7_EB17D4(var_188)
  loc_15A6180:   var_1A8 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A618A:   var_94 = CStr(CVar((CVar((" Where (((V_DATE>=" & var_F8 & " AND V_DATE<")) & var_148 & var_E4)) & var_188 & var_1A8)
  loc_15A61B6:   Proc_183_7_EB17D4(var_F8, MemVar_1F950F4)
  loc_15A61D6:   Proc_183_7_EB17D4(var_148)
  loc_15A61F6:   Proc_183_7_EB17D4(var_188)
  loc_15A6202:   var_1A8 = " AND AA.GroupNature IN ('E','R') AND AA.ALIASYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE BETWEEN "
  loc_15A620F:   var_1C8 = CVar((CVar((CVar(("  Where (((V_DATE>=" & var_F8 & " AND V_DATE BETWEEN ")) & var_148 & " AND ")) & var_188 & var_1A8)) 'Address
  loc_15A6216:   Proc_183_7_EB17D4(var_1D8)
  loc_15A6236:   Proc_183_7_EB17D4(var_228)
  loc_15A6242:   var_248 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A624C:   var_88 = CStr(CVar((var_1C8 & var_1D8 & " AND ")) & var_228 & var_248)
  loc_15A6278:   var_C4 = " Where (((V_DATE>="
  loc_15A6288:   Proc_183_7_EB17D4(var_F8, MemVar_1F950F4)
  loc_15A6299:   var_128 = var_C4 & var_F8 & " AND V_DATE BETWEEN " 
  loc_15A62A1:   var_138 = CVar((var_128)) 'Address
  loc_15A62A8:   Proc_183_7_EB17D4(var_148)
  loc_15A62C8:   Proc_183_7_EB17D4(var_188)
  loc_15A62D4:   var_1A8 = " AND AA.GroupNature IN ('E','R') AND AA.ALIASYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE BETWEEN "
  loc_15A62E8:   Proc_183_7_EB17D4(var_1D8)
  loc_15A6308:   Proc_183_7_EB17D4(var_228)
  loc_15A6314:   var_248 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A631E:   var_8C = CStr(CVar((CVar((CVar((var_138 & var_148 & " AND ")) & var_188 & var_1A8)) & var_1D8 & " AND ")) & var_228 & var_248)
  loc_15A634D:   var_B4 = CVar(CLng(2)) 'Long
  loc_15A635F:   Set var_E8 = var_B4(1)
  loc_15A6381:   If (CStr(DGSite.DispID_41) = "Yes") Then
  loc_15A6398:     var_100 = "SELECT 1 AS TT,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0                    AS BALANCECR,0                    AS BALANCEDR,0 As Bal,MAX(BB.MAINGRCODE) AS mgrcode,MAX(BB.GROUPNAME) AS GRName,MAX(BB.GroupCode) As GRCode,MAX(AA.MAINGRCODE)   AS mgrcodeSUB,MAX(AA.GROUPNAME) AS GRNameSUB ,MAX(AA.GROUPCODE)  AS GRCodeSUB FROM ((ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE) LEFT JOIN ACGROUP BB ON BB.MAINGRCODE=LEFT(AA.MAINGRCODE ,3) " & CStr(CVar((CVar((" Where ((V_DATE>=" & var_F8 & " AND V_DATE BETWEEN ")) & var_148 & " AND ")) & var_188 & var_1A8)
  loc_15A63A6:     var_260 = var_100 & "   AND BB.AliasYN='N'   GROUP BY AA.MAINGRCODE,AA.GROUPCODE HAVING LEN(AA.MAINGRCODE)=6 UNION " & "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(BB.MAINGRCODE) AS mgrcode,MAX(BB.GROUPNAME) AS GRName,MAX(BB.GroupCode) As GRCode,MAX(AA.MAINGRCODE)   AS mgrcodeSUB,MAX(AA.GROUPNAME) AS GRNameSUB ,MAX(AA.GROUPCODE)  AS GRCodeSUB FROM ((ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE) LEFT JOIN ACGROUP BB ON BB.MAINGRCODE=LEFT(AA.MAINGRCODE ,3) "
  loc_15A63BD:     unk_583395.Execute var_260 & var_88 & "  AND BB.AliasYN='N' GROUP BY AA.MAINGRCODE,AA.GROUPCODE HAVING LEN(AA.MAINGRCODE)=6 ", var_F8, -1
  loc_15A63C8:     Set var_9C = var_E8
  loc_15A63E1:   Else
  loc_15A63F5:     var_100 = "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(BB.MAINGRCODE) AS mgrcode,MAX(BB.GROUPNAME) AS GRName,MAX(BB.GroupCode) As GRCode,MAX(AA.MAINGRCODE)   AS mgrcodeSUB,MAX(AA.GROUPNAME) AS GRNameSUB ,MAX(AA.GROUPCODE)  AS GRCodeSUB FROM ((ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE) LEFT JOIN ACGROUP BB ON BB.MAINGRCODE=LEFT(AA.MAINGRCODE ,3) " & var_88
  loc_15A6405:     unk_583395.Execute var_100 & "  AND BB.AliasYN='N' GROUP BY AA.MAINGRCODE,AA.GROUPCODE HAVING LEN(AA.MAINGRCODE)=6 ", var_F8, -1
  loc_15A6410:     Set var_9C = var_E8
  loc_15A6420:   End If
  loc_15A6435:   Set var_98 = mDetailTrial(New)
  loc_15A6438:   ' Referenced from:   15A6829
  loc_15A6447:   If Not(Me.Recordset15.EOF) Then
  loc_15A644D:     Set var_26C = var_98 
  loc_15A645C:     var_26C.AddNew var_B4, var_C4
  loc_15A64A4:     var_26C.Fields.Item("TT").Value = CVar(var_9C.Fields.Item("TT"))
  loc_15A64DA:     var_26C.Fields.Item("GroupName").Value = vbNullString
  loc_15A650B:     var_26C.Fields.Item("GRCODE").Value = vbNullString
  loc_15A655A:     var_26C.Fields.Item("PARTYCODE").Value = CVar(var_9C.Fields.Item("mgrcodeSUB"))
  loc_15A65AE:     var_26C.Fields.Item("PARTYNAME").Value = CVar(var_9C.Fields.Item("GRNameSUB"))
  loc_15A6602:     var_26C.Fields.Item("OP_CR").Value = CVar(var_9C.Fields.Item("OP_CR"))
  loc_15A6656:     var_26C.Fields.Item("OP_dR").Value = CVar(var_9C.Fields.Item("OP_DR"))
  loc_15A66AA:     var_26C.Fields.Item("BALANCECR").Value = CVar(var_9C.Fields.Item("BALANCECR"))
  loc_15A66FE:     var_26C.Fields.Item("BALANCEDR").Value = CVar(var_9C.Fields.Item("BALANCEDR"))
  loc_15A6752:     var_26C.Fields.Item("Bal").Value = CVar(var_9C.Fields.Item("Bal"))
  loc_15A67A6:     var_26C.Fields.Item("mgrcode").Value = CVar(var_9C.Fields.Item("mgrcode"))
  loc_15A67BA:     var_B4 = "GRName"
  loc_15A67D6:     var_F8 = CVar(var_9C.Fields.Item(var_B4)) 'Address
  loc_15A67DE:     var_C4 = "GRName"
  loc_15A67FA:     var_26C.Fields.Item(var_C4).Value = var_F8
  loc_15A6816:     var_26C.Update var_B4, var_C4
  loc_15A681D:     Set var_26C = Nothing 
  loc_15A6824:     var_9C.MoveNext
  loc_15A6829:     GoTo loc_15A6438
  loc_15A682C:   End If
  loc_15A682F:   var_B4 = CVar(CLng(2)) 'Long
  loc_15A6834:   var_D4 = 1
  loc_15A6841:   Set var_E8 = var_B4(var_D4)
  loc_15A6863:   If (CStr(DGSite.DispID_41) = "Yes") Then
  loc_15A687A:     var_100 = "SELECT 1 AS TT,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0                    AS BALANCECR,0                    AS BALANCEDR,0 As Bal,AA.MAINGRCODE AS mgrcode,MAX(AA.GROUPNAME) AS GRName,MAX(aa.GroupCode) As GRCode,MAX(VIEWSUBGROUP.MAINGRCODES)   AS mgrcodeSUB,MAX(VIEWSUBGROUP.NAME) AS GRNameSUB ,MAX(VIEWSUBGROUP.SUBCODE)  AS GRCodeSUB FROM (ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE " & var_94
  loc_15A6881:     var_25C = var_100 & "    GROUP BY AA.GROUPCODE,AA.MAINGRCODE,VIEWSUBGROUP.GROUPCODE,VIEWSUBGROUP.SUBCODE HAVING LEN(MAX(VIEWSUBGROUP.MAINGRCODES))=3 UNION "
  loc_15A6888:     var_260 = var_25C & "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,AA.MAINGRCODE AS mgrcode,MAX(AA.GROUPNAME) AS GRName,MAX(aa.GroupCode) As GRCode,MAX(VIEWSUBGROUP.MAINGRCODES)   AS mgrcodeSUB,MAX(VIEWSUBGROUP.NAME) AS GRNameSUB ,MAX(VIEWSUBGROUP.SUBCODE)  AS GRCodeSUB FROM (ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE "
  loc_15A6896:     var_268 = var_260 & var_8C & " GROUP BY AA.GROUPCODE,AA.MAINGRCODE,VIEWSUBGROUP.GROUPCODE,VIEWSUBGROUP.SUBCODE HAVING LEN(MAX(VIEWSUBGROUP.MAINGRCODES))=3"
  loc_15A689F:     unk_583395.Execute var_268, var_F8, -1
  loc_15A68AA:     Set var_9C = var_E8
  loc_15A68C3:   Else
  loc_15A68D7:     var_100 = "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,AA.MAINGRCODE AS mgrcode,MAX(AA.GROUPNAME) AS GRName,MAX(aa.GroupCode) As GRCode,MAX(VIEWSUBGROUP.MAINGRCODES)   AS mgrcodeSUB,MAX(VIEWSUBGROUP.NAME) AS GRNameSUB ,MAX(VIEWSUBGROUP.SUBCODE)  AS GRCodeSUB FROM (ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE " & var_8C
  loc_15A68DE:     var_25C = var_100 & " GROUP BY AA.GROUPCODE,AA.MAINGRCODE,VIEWSUBGROUP.GROUPCODE,VIEWSUBGROUP.SUBCODE HAVING LEN(MAX(VIEWSUBGROUP.MAINGRCODES))=3"
  loc_15A68E7:     unk_583395.Execute var_25C, var_F8, -1
  loc_15A68F2:     Set var_9C = var_E8
  loc_15A6902:     ' Referenced from:     15A6CF3
  loc_15A6902:   End If
  loc_15A6908:   var_FA = var_9C.EOF
  loc_15A6911:   If Not(var_FA) Then
  loc_15A6917:     Set var_278 = var_98 
  loc_15A6926:     var_278.AddNew var_B4, var_C4
  loc_15A696E:     var_278.Fields.Item("TT").Value = CVar(var_9C.Fields.Item("TT"))
  loc_15A69A4:     var_278.Fields.Item("GroupName").Value = vbNullString
  loc_15A69D5:     var_278.Fields.Item("GRCODE").Value = vbNullString
  loc_15A6A24:     var_278.Fields.Item("PARTYCODE").Value = CVar(var_9C.Fields.Item("mgrcodeSUB"))
  loc_15A6A78:     var_278.Fields.Item("PARTYNAME").Value = CVar(var_9C.Fields.Item("GRNameSUB"))
  loc_15A6ACC:     var_278.Fields.Item("OP_CR").Value = CVar(var_9C.Fields.Item("OP_CR"))
  loc_15A6B20:     var_278.Fields.Item("OP_dR").Value = CVar(var_9C.Fields.Item("OP_DR"))
  loc_15A6B74:     var_278.Fields.Item("BALANCECR").Value = CVar(var_9C.Fields.Item("BALANCECR"))
  loc_15A6BC8:     var_278.Fields.Item("BALANCEDR").Value = CVar(var_9C.Fields.Item("BALANCEDR"))
  loc_15A6C1C:     var_278.Fields.Item("Bal").Value = CVar(var_9C.Fields.Item("Bal"))
  loc_15A6C70:     var_278.Fields.Item("mgrcode").Value = CVar(var_9C.Fields.Item("mgrcode"))
  loc_15A6C84:     var_B4 = "GRName"
  loc_15A6C90:     var_E8 = var_9C.Fields
  loc_15A6CA8:     var_C4 = "GRName"
  loc_15A6CC4:     var_278.Fields.Item(var_C4).Value = CVar(var_E8.Item(var_B4))
  loc_15A6CE0:     var_278.Update var_B4, var_C4
  loc_15A6CE7:     Set var_278 = Nothing 
  loc_15A6CEE:     var_9C.MoveNext
  loc_15A6CF3:     GoTo loc_15A6902
  loc_15A6CF6:   End If
  loc_15A6CF6: End If
  loc_15A6D0A: If (var_98.RecordCount <= 0) Then
  loc_15A6D13:   Call 0.Method_arg_50 (var_100, var_E8, var_E8)
  loc_15A6D34:   MsgBox("** No Records Found to Print **", &H40, CVar(var_100), var_128, var_138)
  loc_15A6D49:   global_130 = 0
  loc_15A6D4C:   Exit Sub
  loc_15A6D4D: End If
  loc_15A6D50: var_27E = arg_C
  loc_15A6D59: If (var_27E = 1) Then
  loc_15A6D62:   var_C4 = "Paper Setting"
  loc_15A6D7D:   MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, var_C4, var_128, var_138)
  loc_15A6D96:   Set var_108 = var_98
  loc_15A6DAF:   Call 0.Method_arg_148 (Me, var_108, var_FA, var_27E)
  loc_15A6DBA:   Set var_98 = var_108
  loc_15A6DC0:   var_A2 = var_FA
  loc_15A6DCA:   GoTo loc_15A6E5A
  loc_15A6DD0: Else
  loc_15A6DD9:   var_100 = MemVar_1F953B4 & "\FaDetTrial.ttx"
  loc_15A6DE6:   Set var_E8 = var_98 
  loc_15A6DF2:   var_FA = CreateFieldDefFile(var_E8, var_100, &HFF, var_A2)
  loc_15A6E05:   var_290 = CVar(var_FA) 'Variant
  loc_15A6E1F:   Call 0.Method_arg_F8 (var_E8, var_FA, global_130)
  loc_15A6E2A:   MemVar_1F951E8 = var_E8
  loc_15A6E4A:   Call 0.Method_arg_64 (var_E8, CVar(var_E8), var_C4)
  loc_15A6E52:   Call 0.Method_arg_2C (var_D4, var_E8)
  loc_15A6E5A: End If
  loc_15A6E5A: ' Referenced from: 15A6DCA
  loc_15A6E5F: Set var_9C = Nothing
  loc_15A6E67: Set var_98 = Nothing
  loc_15A6E6F: Set var_A0 = Nothing
  loc_15A6E72: Exit Sub
  loc_15A6E73: ' Referenced from: 15A5CE0
  loc_15A6E81: Call 0.Method_arg_50 (var_100, 0)
  loc_15A6E96: Proc_183_57_104B0BC(var_100, "DetailedTrial")
  loc_15A6EA2: Exit Sub
End Sub

Public Sub Proc_203_75_1EE0518(arg_C, arg_10) '1EE0518
  'Data Table: 583348
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_160 As String
  Dim var_168 As Variant
  Dim var_158 As Variant
  Dim var_18C As String
  Dim unk_583395 As Connection15
  Dim var_88 As Recordset15
  Dim var_148 As Variant
  Dim var_188 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1B8 As Variant
  Dim var_124 As Variant
  Dim var_1C8 As Variant
  Dim var_144 As Variant
  Dim var_178 As Variant
  Dim var_1E8 As String
  Dim var_1F0 As String
  Dim var_194 As Variant
  Dim var_210 As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_260 As Variant
  Dim Me As Variant
  Dim var_2A4 As Variant
  Dim var_100 As Recordset15
  Dim var_EC As Double
  Dim var_2DC As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_32C As Variant
  Dim var_330 As Recordset15
  Dim var_15A As Integer
  Dim var_162 As Integer
  Dim var_338 As Fields15
  Dim var_33C As Field20
  Dim var_2B4 As Variant
  Dim var_90 As Recordset15
  Dim var_334 As Field20
  Dim var_340 As Recordset15
  Dim var_344 As Recordset15
  Dim var_94 As Recordset15
  Dim var_348 As Recordset15
  Dim var_34C As Recordset15
  Dim var_350 As Recordset15
  Dim var_354 As Recordset15
  Dim var_8C As Recordset15
  Dim var_358 As Recordset15
  Dim var_35C As Recordset15
  Dim var_360 As Recordset15
  Dim var_364 As Recordset15
  Dim var_394 As Variant
  Dim var_3A8 As Recordset15
  Dim var_3AC As Recordset15
  Dim var_3B0 As Recordset15
  Dim var_3B4 As Recordset15
  Dim var_3B8 As Recordset15
  Dim var_3BC As Recordset15
  Dim var_3C0 As Recordset15
  Dim var_3C4 As Recordset15
  Dim var_3C8 As Recordset15
  Dim var_F4 As Double
  Dim var_3CC As Recordset15
  Dim var_3D0 As Recordset15
  Dim var_3D4 As Recordset15
  Dim var_3D8 As Recordset15
  Dim var_3DC As Recordset15
  Dim var_3E0 As Recordset15
  Dim var_3E4 As Recordset15
  Dim var_3E8 As Recordset15
  Dim var_3EC As Recordset15
  Dim var_30C As Variant
  Dim var_3A4 As Variant
  Dim var_562 As Integer
  Dim var_1E4 As String
  loc_1ED3BB8: On Error Goto loc_1ED04F0
  loc_1ED3BD0: Set var_148 = CVar(CLng(0))(0)
  loc_1ED3BF4: Call Proc_203_59_F525A0(CInt(0), CStr(var_158))
  loc_1ED3C08: If (var_162 = 0) Then
  loc_1ED3C0B:   GoTo loc_1ED0484
  loc_1ED3C0E: End If
  loc_1ED3C23: Set var_148 = CVar(CLng(1))(0)
  loc_1ED3C47: Call Proc_203_59_F525A0(CInt(1), CStr(var_158))
  loc_1ED3C5B: If (var_162 = 0) Then
  loc_1ED3C5E:   GoTo loc_1ED0484
  loc_1ED3C61: End If
  loc_1ED3C76: Set var_148 = CVar(CLng(2))(0)
  loc_1ED3C9A: Call Proc_203_59_F525A0(CInt(2), CStr(var_158))
  loc_1ED3CAE: If (var_162 = 0) Then
  loc_1ED3CB1:   GoTo loc_1ED0484
  loc_1ED3CB4: End If
  loc_1ED3CC9: Set var_148 = CVar(CLng(0))(1)
  loc_1ED3CE7: var_162(CStr(DGSite.DispID_41)).Text = DGSite.DispID_41
  loc_1ED3D0E: Set var_148 = CVar(CLng(1))(1)
  loc_1ED3D1F: var_160 = CStr(DGSite.DispID_41)
  loc_1ED3D26: Set var_168 = var_162(var_160)
  loc_1ED3D2C: var_168.Text = DGSite.DispID_41
  loc_1ED3D49: Set var_148 = var_168(CInt(&HC))
  loc_1ED3D4F: Call 0.Method_Proc_203_75_1EE05180 (var_162)
  loc_1ED3D57: var_158 = CVar(var_168) 'Address
  loc_1ED3D78: If CBool(Trim(var_158) <> vbNullString) Then
  loc_1ED3D8C:   Set var_148 = var_168(CInt(&HC))
  loc_1ED3D92:   Call 0.Method_Proc_203_75_1EE05180 (var_160, " And VIEWLEDGER.LOGSite_Code='")
  loc_1ED3D9A:   DGSite.DispID_41 = var_168.Tag
  loc_1ED3DAA:   var_E4 = var_160 & "'"
  loc_1ED3DBE: Else
  loc_1ED3DCC:   var_E4 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_1ED3DD2: End If
  loc_1ED3DF6: unk_583395.Execute "SELECT RepToBy FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_158, -1
  loc_1ED3E01: Set var_88 = var_148
  loc_1ED3E25: If (var_88.RecordCount > 0) Then
  loc_1ED3E3F:   var_168 = var_88.Fields.Item("RepToBy")
  loc_1ED3E50:   var_FC = Proc_183_2_E5AE94(CVar(var_168))
  loc_1ED3E59: End If
  loc_1ED3E61: If (arg_10 = "LedInt") Then
  loc_1ED3E75:   Call 0.Method_Proc_203_75_1EE05180 (var_168(CInt(5)))
  loc_1ED3E7D:   var_160 = "Enter Interest Rate"
  loc_1ED3E9E:   If (Proc_183_19_E8E68C(var_168) = 0) Then
  loc_1ED3EA1:     GoTo loc_1ED0484
  loc_1ED3EA4:   End If
  loc_1ED3EA4: End If
  loc_1ED3EB9: Set var_148 = CVar(CLng(2))(1)
  loc_1ED3ECA: var_98 = CStr(DGSite.DispID_41)
  loc_1ED3EDB: If (arg_10 = "AcCheckList") Then
  loc_1ED3EE1:   var_E0 = vbNullString
  loc_1ED3EEA:   global_92 = vbNullString
  loc_1ED3EFA:   Set var_148 = var_168(3)
  loc_1ED3F00:   Call 0.Method_Proc_203_75_1EE05180 (var_15A)
  loc_1ED3F1E:   If (CLng(var_15A) = 0) Then
  loc_1ED3F3C:     Call Proc_203_56_127C1B4(global_104, 3, CByte(1))
  loc_1ED3F47:     global_92 = var_168.Value
  loc_1ED3F57:     If (global_130 = 0) Then
  loc_1ED3F5A:       GoTo loc_1ED0484
  loc_1ED3F5D:     End If
  loc_1ED3F5D:   End If
  loc_1ED3F68:   If (global_92 <> vbNullString) Then
  loc_1ED3F75:     var_160 = " AND V_TYPE IN (" & global_92
  loc_1ED3F7C:     var_E0 = var_160 & ") "
  loc_1ED3F82:   End If
  loc_1ED3F90:   Set var_148 = var_168(CInt(2))
  loc_1ED3F96:   Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED3F9E:   var_160 = var_168.Text
  loc_1ED3FBA:   If (CDbl(Val(var_160)) > CDbl(0)) Then
  loc_1ED3FC4:     var_188 = CVar(var_E0 & " AND VIEWLEDGER.DEBIT+VIEWLEDGER.CREDIT") 'String
  loc_1ED3FD0:     Set var_148 = var_168(&HA)
  loc_1ED3FD6:     Call 0.Method_Proc_203_75_1EE05180 (var_188)
  loc_1ED3FF6:     var_1B4 = Trim(CVar(var_168)) & " " 
  loc_1ED4008:     Set var_194 = var_1B8(CInt(2))
  loc_1ED400E:     Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED4016:     var_1B4 = var_1B8.Text
  loc_1ED402C:     var_E0 = CStr(CVar(Val(var_160)))
  loc_1ED404A:   End If
  loc_1ED4055:   Set var_148 = var_168(CInt(3))
  loc_1ED405B:   Call 0.Method_Proc_203_75_1EE05180 ()
  loc_1ED4084:   If CBool(Trim(CVar(var_168)) <> vbNullString) Then
  loc_1ED409C:     Set var_148 = var_168(CInt(3))
  loc_1ED40A2:     Call 0.Method_Proc_203_75_1EE05180 (CVar(var_E0 & " AND VIEWLEDGER.NARR LIKE ') 'String)
  loc_1ED40C7:     var_E0 = CStr(Trim(CVar(var_168)) & "%'")
  loc_1ED40DA:   End If
  loc_1ED40E5:   Set var_148 = var_168(CInt(4))
  loc_1ED40EB:   Call 0.Method_Proc_203_75_1EE05180 ()
  loc_1ED4114:   If CBool(Trim(CVar(var_168)) <> vbNullString) Then
  loc_1ED412C:     Set var_148 = var_168(CInt(4))
  loc_1ED4132:     Call 0.Method_Proc_203_75_1EE05180 (CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String)
  loc_1ED4157:     var_E0 = CStr(Trim(CVar(var_168)) & "%'")
  loc_1ED416A:   End If
  loc_1ED416A: End If
  loc_1ED416D: var_1CC = var_98
  loc_1ED4178: If (var_1CC = "Selected") Then
  loc_1ED4181:   global_84 = vbNullString
  loc_1ED4188:   var_9C = vbNullString
  loc_1ED4197:   Set var_148 = var_168(1)
  loc_1ED419D:   Call 0.Method_Proc_203_75_1EE05180 (var_15A)
  loc_1ED41A5:    = var_168.Value
  loc_1ED41BB:   If (CLng(var_15A) = 0) Then
  loc_1ED41D9:     Call Proc_203_56_127C1B4(global_96, 1, CByte(1))
  loc_1ED41E4:     global_84 = var_160
  loc_1ED41F4:     If (global_130 = 0) Then
  loc_1ED41F7:       GoTo loc_1ED0484
  loc_1ED41FA:     End If
  loc_1ED41FA:   End If
  loc_1ED4205:   If (global_84 <> vbNullString) Then
  loc_1ED4219:     var_9C = " WHERE SUBCODE IN (" & global_84 & ") "
  loc_1ED421F:   End If
  loc_1ED4222:   var_1D0 = arg_10
  loc_1ED422D:   If Not (var_1D0 = "LedDeb") Then
  loc_1ED4238:     If (var_1D0 = "MemLed") Then
  loc_1ED423B:     End If
  loc_1ED426E:     var_1A4 = (CVar(var_9C) + IIf((var_9C = vbNullString), " Where", " AND"))
  loc_1ED4277:     var_1B4 = (Trim(CVar(var_168)) + " Nature='Customer'")
  loc_1ED427C:     var_9C = CStr(Trim(CVar(var_168)) & "%'")
  loc_1ED4291:   Else
  loc_1ED4299:     If (var_1D0 = "LedCred") Then
  loc_1ED42B2:       var_158 = " Where"
  loc_1ED42C7:       var_188 = IIf((var_9C = vbNullString), var_158, " AND")
  loc_1ED42CF:       var_1A4 = (CVar(var_9C) + var_188)
  loc_1ED42D8:       var_1B4 = (Trim(CVar(var_168)) + " Nature='Supplier'")
  loc_1ED42DD:       var_9C = CStr(Trim(CVar(var_168)) & "%'")
  loc_1ED42EF:     End If
  loc_1ED42EF:   End If
  loc_1ED430A:   var_18C = "SELECT GROUPNATURE,groupCode as CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST " & var_9C & " ORDER BY NAME"
  loc_1ED4313:   unk_583395.Execute var_18C, var_158, -1
  loc_1ED431E:   Set var_88 = var_148
  loc_1ED4331: Else
  loc_1ED4339:   If (var_1CC = "Merge") Then
  loc_1ED4351:     Set var_148 = CVar(CLng(3))(0)
  loc_1ED4375:     Call Proc_203_59_F525A0(CInt(3), CStr(var_158))
  loc_1ED4389:     If (var_162 = 0) Then
  loc_1ED438C:       GoTo loc_1ED0484
  loc_1ED438F:     End If
  loc_1ED43A4:     Set var_148 = CVar(CLng(4))(0)
  loc_1ED43C8:     Call Proc_203_59_F525A0(CInt(4), CStr(var_158))
  loc_1ED43DC:     If (var_162 = 0) Then
  loc_1ED43DF:       GoTo loc_1ED0484
  loc_1ED43E2:     End If
  loc_1ED43F7:     Set var_148 = CVar(CLng(3))(1)
  loc_1ED4415:     var_162(CStr(DGSite.DispID_41)).Text = DGSite.DispID_41
  loc_1ED443C:     Set var_148 = CVar(CLng(3))(2)
  loc_1ED445A:     var_162(CStr(DGSite.DispID_41)).Tag = DGSite.DispID_41
  loc_1ED4492:     var_160 = CStr(DGSite.DispID_41)
  loc_1ED449F:     CVar(CLng(4))(1)(var_160).Text = var_160
  loc_1ED44C6:     Set var_148 = CVar(CLng(4))(2)
  loc_1ED44D7:     var_160 = CStr(DGSite.DispID_41)
  loc_1ED44E4:     (var_160).Tag = 
  loc_1ED4503:      = (var_18C).Text
  loc_1ED4518:      = var_18C(var_160).Text
  loc_1ED4530:     If ( = var_160) Then
  loc_1ED4539:       Call 0.Method_arg_50 (var_160)
  loc_1ED4547:       var_178 = CVar(var_160) 'String
  loc_1ED455A:       MsgBox(" ** Both A/C are Same** ", &H10, var_178, var_188, Trim(CVar((var_18C))))
  loc_1ED456A:       GoTo loc_1ED0484
  loc_1ED456D:     End If
  loc_1ED458A:     var_158 = "SELECT GROUPNATURE,CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST WHERE SUBCODE IN ('"(var_160).Tag
  loc_1ED4593:     var_18C = -1 & var_160
  loc_1ED45A4:     Set var_168 = var_18C & "','"(var_1E4)
  loc_1ED45BA:     var_1F0 = var_1E4 & "') ORDER BY NAME"
  loc_1ED45C3:     unk_583395.Execute var_1F0, , 
  loc_1ED45CE:     Set var_88 = var_168.Tag
  loc_1ED45EF:   Else
  loc_1ED45F7:     If (var_1CC = "Group(Selected)") Then
  loc_1ED4600:       global_88 = vbNullString
  loc_1ED4607:       var_9C = vbNullString
  loc_1ED4616:       Set var_148 = var_168(2)
  loc_1ED461C:       Call 0.Method_Proc_203_75_1EE05180 (var_15A)
  loc_1ED4624:        = var_168.Value
  loc_1ED463A:       If (CLng(var_15A) = 0) Then
  loc_1ED4658:         Call Proc_203_56_127C1B4(global_100, 2, CByte(1))
  loc_1ED4663:         global_88 = var_160
  loc_1ED4673:         If (global_130 = 0) Then
  loc_1ED4676:           GoTo loc_1ED0484
  loc_1ED4679:         End If
  loc_1ED4679:       End If
  loc_1ED4684:       If (global_88 <> vbNullString) Then
  loc_1ED4698:         var_9C = " WHERE CODE IN (" & global_88 & ") "
  loc_1ED469E:       End If
  loc_1ED46C2:       unk_583395.Execute "SELECT GROUPNATURE,groupCode as CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST " & var_9C & " ORDER BY NAME", var_158, -1
  loc_1ED46CD:       Set var_88 = var_148
  loc_1ED46E0:     Else
  loc_1ED46E8:       If (var_1CC = "Group(Range)") Then
  loc_1ED4700:         Set var_148 = CVar(CLng(3))(0)
  loc_1ED4724:         Call Proc_203_59_F525A0(CInt(3), CStr(var_158))
  loc_1ED4738:         If (var_162 = 0) Then
  loc_1ED473B:           GoTo loc_1ED0484
  loc_1ED473E:         End If
  loc_1ED4753:         Set var_148 = CVar(CLng(4))(0)
  loc_1ED4777:         Call Proc_203_59_F525A0(CInt(4), CStr(var_158))
  loc_1ED478B:         If (var_162 = 0) Then
  loc_1ED478E:           GoTo loc_1ED0484
  loc_1ED4791:         End If
  loc_1ED47A6:         Set var_148 = CVar(CLng(5))(0)
  loc_1ED47CA:         Call Proc_203_59_F525A0(CInt(5), CStr(var_158))
  loc_1ED47DE:         If (var_162 = 0) Then
  loc_1ED47E1:           GoTo loc_1ED0484
  loc_1ED47E4:         End If
  loc_1ED47F9:         Set var_148 = CVar(CLng(4))(1)
  loc_1ED4817:         var_162(CStr(DGSite.DispID_41)).Text = DGSite.DispID_41
  loc_1ED483E:         Set var_148 = CVar(CLng(4))(2)
  loc_1ED485C:         var_162(CStr(DGSite.DispID_41)).Tag = DGSite.DispID_41
  loc_1ED4883:         Set var_148 = CVar(CLng(5))(1)
  loc_1ED48A1:         var_162(CStr(DGSite.DispID_41)).Text = DGSite.DispID_41
  loc_1ED48D9:         var_160 = CStr(DGSite.DispID_41)
  loc_1ED48E6:         CVar(CLng(5))(2)(var_160).Tag = var_160
  loc_1ED490D:         Set var_148 = CVar(CLng(3))(2)
  loc_1ED4926:         Set var_168 = DGSite.DispID_41(var_1E4)
  loc_1ED492C:          = var_168.Text
  loc_1ED4938:         Set var_194 = (var_1F0)
  loc_1ED493E:          = var_194.Text
  loc_1ED4957:         var_160 = CStr(var_158)
  loc_1ED4962:         var_1E8 = "SELECT GROUPNATURE,CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST WHERE CODE='" & var_160 & "' AND NAME BETWEEN '"
  loc_1ED4987:         unk_583395.Execute var_1E8 & var_1E4 & "' AND '" & var_1F0 & "' ORDER BY NAME", var_178, -1
  loc_1ED4992:         Set var_88 = var_1B8
  loc_1ED49BF:       Else
  loc_1ED49C7:         If (var_1CC = "City Wise") Then
  loc_1ED49D0:           global_88 = vbNullString
  loc_1ED49D7:           var_9C = vbNullString
  loc_1ED49E6:           Set var_148 = var_168(2)
  loc_1ED49EC:           Call 0.Method_Proc_203_75_1EE05180 (var_15A)
  loc_1ED49F4:           var_1B8 = var_168.Value
  loc_1ED4A0A:           If (CLng(var_15A) = 0) Then
  loc_1ED4A28:             Call Proc_203_56_127C1B4(global_100, 2, CByte(1))
  loc_1ED4A33:             global_88 = var_160
  loc_1ED4A43:             If (global_130 = 0) Then
  loc_1ED4A46:               GoTo loc_1ED0484
  loc_1ED4A49:             End If
  loc_1ED4A49:           End If
  loc_1ED4A54:           If (global_88 <> vbNullString) Then
  loc_1ED4A68:             var_9C = " WHERE CITYCODE IN (" & global_88 & ") "
  loc_1ED4A6E:           End If
  loc_1ED4A71:           var_200 = arg_10
  loc_1ED4A7C:           If Not (var_200 = "LedDeb") Then
  loc_1ED4A87:             If (var_200 = "MemLed") Then
  loc_1ED4A8A:             End If
  loc_1ED4ABD:             var_1A4 = (CVar(var_9C) + IIf((var_9C = vbNullString), " Where", " AND"))
  loc_1ED4AC6:             var_1B4 = (Trim(CVar(var_168)) + " Nature='Customer'")
  loc_1ED4ACB:             var_9C = CStr(Trim(CVar(var_168)) & "%'")
  loc_1ED4AE0:           Else
  loc_1ED4AE8:             If (var_200 = "LedCred") Then
  loc_1ED4AF6:               var_178 = " AND"
  loc_1ED4B01:               var_158 = " Where"
  loc_1ED4B16:               var_188 = IIf((var_9C = vbNullString), var_158, var_178)
  loc_1ED4B1E:               var_1A4 = (CVar(var_9C) + var_188)
  loc_1ED4B27:               var_1B4 = (Trim(CVar(var_168)) + " Nature='Supplier'")
  loc_1ED4B2C:               var_9C = CStr(Trim(CVar(var_168)) & "%'")
  loc_1ED4B3E:             End If
  loc_1ED4B3E:           End If
  loc_1ED4B59:           var_18C = "SELECT GROUPNATURE,groupCode as CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST " & var_9C & " ORDER BY NAME"
  loc_1ED4B62:           unk_583395.Execute var_18C, var_158, -1
  loc_1ED4B6D:           Set var_88 = var_148
  loc_1ED4B7D:         End If
  loc_1ED4B7D:       End If
  loc_1ED4B7D:     End If
  loc_1ED4B7D:   End If
  loc_1ED4B7D: End If
  loc_1ED4B91: If (var_88.RecordCount <= 0) Then
  loc_1ED4BAD:   MsgBox("No A/c to Print", 0, var_178, var_188, Trim(CVar(var_168)))
  loc_1ED4BBD:   GoTo loc_1ED0484
  loc_1ED4BC0: End If
  loc_1ED4BD0: Set var_148 = New
  loc_1ED4BDF: Call 0.Method_arg_1AC (var_148, var_168)
  loc_1ED4BEA: Set var_8C = var_148
  loc_1ED4BF3: Set var_8C = var_168
  loc_1ED4C00: var_A0 = vbNullString
  loc_1ED4C06: var_A4 = vbNullString
  loc_1ED4C09: ' Referenced from: 1ED4D73
  loc_1ED4C18: If Not(Me.Recordset15.EOF) Then
  loc_1ED4C66:   var_210 = (CVar(var_A0) + IIf((Trim(var_A0) = vbNullString), vbNullString, ","))
  loc_1ED4C6F:   var_230 = (var_210 + "'")
  loc_1ED4CA1:   var_270 = (var_230 + Trim(CVar(var_88.Fields.Item("subcode"))))
  loc_1ED4CAA:   var_290 = (var_270 + "'")
  loc_1ED4CAF:   var_A0 = CStr(var_290)
  loc_1ED4D19:   var_210 = (CVar(var_A4) + IIf((Trim(var_A4) = vbNullString), vbNullString, ","))
  loc_1ED4D4B:   var_260 = (var_210 + Trim(CVar(var_88.Fields.Item("Name"))))
  loc_1ED4D50:   var_A4 = CStr(Trim(CVar(var_88.Fields.Item("subcode"))))
  loc_1ED4D6E:   var_88.MoveNext
  loc_1ED4D73:   GoTo loc_1ED4C09
  loc_1ED4D76: End If
  loc_1ED4D7C: var_294 = GRepFormName
  loc_1ED4D87: If Not (var_294 = "Led") Then
  loc_1ED4D92:   If Not (var_294 = "LedInt") Then
  loc_1ED4D9D:     If (var_294 = "AcCheckList") Then
  loc_1ED4DA0:     End If
  loc_1ED4DA0:   End If
  loc_1ED4DB5:   var_148 = Me.Fields
  loc_1ED4DBD:   var_168 = var_148.Item("ShowCityName")
  loc_1ED4DDF:   If (var_168.Value = "Yes") Then
  loc_1ED4DF6:     var_160 = "SELECT VIEWLEDGER.*,NameWithCity AS NAME FROM VIEWLEDGER LEFT JOIN ViewSubgroup ON VIEWLEDGER.PARTY1=ViewSubgroup.SUBCODE WHERE VIEWLEDGER.PARTY IN (" & var_A0
  loc_1ED4E0B:     Proc_183_7_EB17D4(var_178, CVar(var_2B4(CVar(var_160 & ") AND VIEWLEDGER.V_DATE Between "))), -1)
  loc_1ED4E2B:     Proc_183_7_EB17D4(var_210, CVar(var_148(var_148 & var_178 & " And ")))
  loc_1ED4E62:     var_2A4 = var_160 & var_210 & " " & CVar(var_E0) & "  " & CVar(var_E4) & " ORDER BY PARTY,V_DATE,CASE WHEN CREDIT>0 THEN 3 WHEN DEBIT>0 THEN 2 ELSE 1 END,DOCID,V_SNo" 
  loc_1ED4E70:     unk_583395.Execute CStr(var_2A4), , 
  loc_1ED4E7B:     Set var_90 = var_148
  loc_1ED4EAA:   Else
  loc_1ED4EBE:     var_160 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY1=subgroup.SUBCODE WHERE VIEWLEDGER.PARTY IN (" & var_A0
  loc_1ED4ED3:     Proc_183_7_EB17D4(var_178, CVar(var_2B4(CVar(var_160 & ") AND VIEWLEDGER.V_DATE Between "))))
  loc_1ED4EDB:     var_1A4 = -1 & var_178 
  loc_1ED4EEC:     var_1C8 = CVar(var_148(var_148 & var_178 & " And ")) 'Address
  loc_1ED4EF3:     Proc_183_7_EB17D4(var_210)
  loc_1ED4EFB:     var_230 = var_1C8 & var_210 
  loc_1ED4F17:     var_270 = var_230 & " " & CVar(var_E0) & "  " 
  loc_1ED4F21:     var_290 = var_270 & CVar(var_E4) 
  loc_1ED4F38:     unk_583395.Execute CStr(var_290 & " ORDER BY PARTY,V_DATE,CASE WHEN CREDIT>0 THEN 3 WHEN DEBIT>0 THEN 2 ELSE 1 END,DOCID,V_SNo"), , 
  loc_1ED4F43:     Set var_90 = var_148
  loc_1ED4F6F:   End If
  loc_1ED4F6F: End If
  loc_1ED4F83: If (var_88.RecordCount > 0) Then
  loc_1ED4F89:   var_88.MoveFirst
  loc_1ED4F8E:   ' Referenced from: 1EDF32A
  loc_1ED4F8E: End If
  loc_1ED4F9D: Loop Until Not(var_88.EOF) 'do at: 1ECF32D
  loc_1ED4FAE: Set var_148 = var_168(CInt(0))
  loc_1ED4FB4: Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED4FBC:  = var_168.Text
  loc_1ED4FD8: If (CDbl(Val(var_160)) > CDbl(0)) Then
  loc_1ED4FE8:   var_124 = "SELECT ISNULL(SUM(DEBIT),0)-ISNULL(SUM(CREDIT),0) AS BALANCE FROM VIEWLEDGER WHERE PARTY="
  loc_1ED5004:   var_168 = var_88.Fields.Item("subcode")
  loc_1ED5013:   Proc_183_9_EAB2F0(var_178, CVar(var_168), " ")
  loc_1ED502C:   var_1B4 = CVar(-1(var_230 & var_178 & " AND V_DATE<=")) 'Address
  loc_1ED5033:   Proc_183_7_EB17D4(var_1C8, var_88.Fields & var_178 & " And ")
  loc_1ED503F:   var_160 = CStr(var_194 & var_1C8)
  loc_1ED5049:   unk_583395.Execute var_160, , 
  loc_1ED5054:   Set var_100 = var_194
  loc_1ED5088:   If (var_100.RecordCount > 0) Then
  loc_1ED5094:     Set var_148 = var_168(8)
  loc_1ED509A:     Call 0.Method_Proc_203_75_1EE05180 ()
  loc_1ED50A9:     var_178 = Trim(CVar(var_168))
  loc_1ED50B1:     var_2C4 = var_178 'Variant
  loc_1ED50C6:     If (var_2C4 = "=") Then
  loc_1ED50EB:       var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED5101:       Set var_194 = var_1B8(CInt(0))
  loc_1ED5107:       Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED510F:       var_158 = var_1B8.Text
  loc_1ED5134:       If CBool( <> CVar(Val(var_160))) Then
  loc_1ED5137:         GoTo loc_1ECF322
  loc_1ED513A:       End If
  loc_1ED513D:     Else
  loc_1ED5148:       If (var_2C4 = "<") Then
  loc_1ED516D:         var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED5183:         Set var_194 = var_1B8(CInt(0))
  loc_1ED5189:         Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED5191:         var_158 = var_1B8.Text
  loc_1ED51B6:         If ( >= CVar(Val(var_160))) Then
  loc_1ED51B9:           GoTo loc_1ECF322
  loc_1ED51BC:         End If
  loc_1ED51BF:       Else
  loc_1ED51CA:         If (var_2C4 = "<=") Then
  loc_1ED51EF:           var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED5205:           Set var_194 = var_1B8(CInt(0))
  loc_1ED520B:           Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED5213:           var_158 = var_1B8.Text
  loc_1ED5238:           If ( > CVar(Val(var_160))) Then
  loc_1ED523B:             GoTo loc_1ECF322
  loc_1ED523E:           End If
  loc_1ED5241:         Else
  loc_1ED524C:           If (var_2C4 = ">") Then
  loc_1ED5271:             var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED5287:             Set var_194 = var_1B8(CInt(0))
  loc_1ED528D:             Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED5295:             var_158 = var_1B8.Text
  loc_1ED52BA:             If ( <= CVar(Val(var_160))) Then
  loc_1ED52BD:               GoTo loc_1ECF322
  loc_1ED52C0:             End If
  loc_1ED52C3:           Else
  loc_1ED52CE:             If (var_2C4 = ">=") Then
  loc_1ED52F3:               var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED5309:               Set var_194 = var_1B8(CInt(0))
  loc_1ED530F:               Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED5317:               var_158 = var_1B8.Text
  loc_1ED533C:               If ( < CVar(Val(var_160))) Then
  loc_1ED533F:                 GoTo loc_1ECF322
  loc_1ED5342:               End If
  loc_1ED5345:             Else
  loc_1ED5350:               If (var_2C4 = "<>") Then
  loc_1ED536D:                 var_168 = var_100.Fields.Item("Balance")
  loc_1ED5375:                 var_158 = var_168.Value
  loc_1ED538B:                 Set var_194 = var_1B8(CInt(0))
  loc_1ED5391:                 Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED5399:                 var_158 = var_1B8.Text
  loc_1ED53BE:                 If ( = CVar(Val(var_160))) Then
  loc_1ED53C1:                   GoTo loc_1ECF322
  loc_1ED53C4:                 End If
  loc_1ED53C4:               End If
  loc_1ED53C4:             End If
  loc_1ED53C4:           End If
  loc_1ED53C4:         End If
  loc_1ED53C4:       End If
  loc_1ED53C4:     End If
  loc_1ED53C4:   End If
  loc_1ED53C4: End If
  loc_1ED53D2: Set var_148 = var_168(CInt(1))
  loc_1ED53D8: Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED53E0:  = var_168.Text
  loc_1ED53FC: If (CDbl(Val(var_160)) > CDbl(0)) Then
  loc_1ED540C:   var_124 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) AS BALANCE FROM VIEWLEDGER WHERE PARTY="
  loc_1ED5428:   var_168 = var_88.Fields.Item("subcode")
  loc_1ED5437:   Proc_183_9_EAB2F0(var_178, CVar(var_168), CVar(Val(var_160)))
  loc_1ED5450:   var_1B4 = CVar(-1(var_230 & var_178 & " AND V_DATE<=")) 'Address
  loc_1ED5457:   Proc_183_7_EB17D4(var_1C8, var_88.Fields & var_178 & " And ")
  loc_1ED5463:   var_160 = CStr(var_194 & var_1C8)
  loc_1ED546D:   unk_583395.Execute var_160, , 
  loc_1ED5478:   Set var_100 = var_194
  loc_1ED54AC:   If (var_100.RecordCount > 0) Then
  loc_1ED54B8:     Set var_148 = var_168(9)
  loc_1ED54BE:     Call 0.Method_Proc_203_75_1EE05180 ()
  loc_1ED54D5:     var_2D4 = Trim(CVar(var_168)) 'Variant
  loc_1ED54EA:     If (var_2D4 = "=") Then
  loc_1ED550F:       var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED5525:       Set var_194 = var_1B8(CInt(1))
  loc_1ED552B:       Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED5533:       var_158 = var_1B8.Text
  loc_1ED5558:       If CBool( <> CVar(Val(var_160))) Then
  loc_1ED555B:         GoTo loc_1ECF322
  loc_1ED555E:       End If
  loc_1ED5561:     Else
  loc_1ED556C:       If (var_2D4 = "<") Then
  loc_1ED5591:         var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED55A7:         Set var_194 = var_1B8(CInt(1))
  loc_1ED55AD:         Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED55B5:         var_158 = var_1B8.Text
  loc_1ED55DA:         If ( >= CVar(Val(var_160))) Then
  loc_1ED55DD:           GoTo loc_1ECF322
  loc_1ED55E0:         End If
  loc_1ED55E3:       Else
  loc_1ED55EE:         If (var_2D4 = "<=") Then
  loc_1ED5613:           var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED5629:           Set var_194 = var_1B8(CInt(1))
  loc_1ED562F:           Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED5637:           var_158 = var_1B8.Text
  loc_1ED565C:           If ( > CVar(Val(var_160))) Then
  loc_1ED565F:             GoTo loc_1ECF322
  loc_1ED5662:           End If
  loc_1ED5665:         Else
  loc_1ED5670:           If (var_2D4 = ">") Then
  loc_1ED5695:             var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED56AB:             Set var_194 = var_1B8(CInt(1))
  loc_1ED56B1:             Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED56B9:             var_158 = var_1B8.Text
  loc_1ED56DE:             If ( <= CVar(Val(var_160))) Then
  loc_1ED56E1:               GoTo loc_1ECF322
  loc_1ED56E4:             End If
  loc_1ED56E7:           Else
  loc_1ED56F2:             If (var_2D4 = ">=") Then
  loc_1ED5717:               var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED572D:               Set var_194 = var_1B8(CInt(1))
  loc_1ED5733:               Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED573B:               var_158 = var_1B8.Text
  loc_1ED5760:               If ( < CVar(Val(var_160))) Then
  loc_1ED5763:                 GoTo loc_1ECF322
  loc_1ED5766:               End If
  loc_1ED5769:             Else
  loc_1ED5774:               If (var_2D4 = "<>") Then
  loc_1ED5799:                 var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED57AF:                 Set var_194 = var_1B8(CInt(1))
  loc_1ED57B5:                 Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED57BD:                 var_158 = var_1B8.Text
  loc_1ED57E2:                 If ( = CVar(Val(var_160))) Then
  loc_1ED57E5:                   GoTo loc_1ECF322
  loc_1ED57E8:                 End If
  loc_1ED57E8:               End If
  loc_1ED57E8:             End If
  loc_1ED57E8:           End If
  loc_1ED57E8:         End If
  loc_1ED57E8:       End If
  loc_1ED57E8:     End If
  loc_1ED57E8:   End If
  loc_1ED57E8: End If
  loc_1ED57EB: var_EC = CDbl(0)
  loc_1ED582E: var_A8 = CStr(IIf((var_98 = "Merge"), 0, CVar(var_88.Fields.Item("subcode"))))
  loc_1ED5847: If (var_98 <> "Merge") Then
  loc_1ED5870:   var_178 = Trim(CVar(var_88.Fields.Item("Name")))
  loc_1ED5879:   var_A4 = CStr(var_178)
  loc_1ED5886: End If
  loc_1ED589F: var_A4 = CStr(Left(var_A4, &H32))
  loc_1ED58A8: var_2D8 = arg_10
  loc_1ED58B3: If Not (var_2D8 = "LedDeb") Then
  loc_1ED58BE:   If (var_2D8 = "MemLed") Then
  loc_1ED58C1:   End If
  loc_1ED590F:   var_1B8 = var_88.Fields.Item("GroupNature")
  loc_1ED5941:   If CBool((var_88.Fields.Item("GroupNature").Value <> "E") And (var_1B8.Value <> "R")) Then
  loc_1ED596A:     Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")))
  loc_1ED5973:     var_1B4 = CVar((var_EC)) 'Address
  loc_1ED597A:     Proc_183_7_EB17D4(var_1C8)
  loc_1ED5985:     var_280 = 0
  loc_1ED59C6:     var_250 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE <=" & var_1C8 & " AND CREDIT >0 " & CVar(var_E4) 
  loc_1ED59DD:     unk_583395.Execute CStr(var_250 & vbNullString), var_270, -1
  loc_1ED59E5:     var_194 = var_194.Fields
  loc_1ED59ED:     var_280 = var_1B8.Item(var_1B8)
  loc_1ED59F5:     var_2DC = var_2DC.Value
  loc_1ED59FE:     var_EC = CSng(var_290)
  loc_1ED5A50:     Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1ED5A59:     var_1B4 = CVar(var_1B4(var_290)) 'Address
  loc_1ED5A60:     Proc_183_7_EB17D4(var_1C8)
  loc_1ED5A68:     var_2EC = CVar(var_EC) 'Double
  loc_1ED5A72:     var_280 = 0
  loc_1ED5AB3:     var_250 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE<" & var_1C8 & " AND DEBIT>0 " & CVar(var_E4) 
  loc_1ED5ACA:     unk_583395.Execute CStr(var_250 & vbNullString), var_270, -1
  loc_1ED5AD2:     var_194 = var_194.Fields
  loc_1ED5ADA:     var_280 = var_1B8.Item(var_1B8)
  loc_1ED5AE2:     var_2DC = var_2DC.Value
  loc_1ED5AEA:     var_2A4 = (var_290 - var_290)
  loc_1ED5AEF:     var_EC = CSng(var_290 & " ORDER BY PARTY,V_DATE,CASE WHEN CREDIT>0 THEN 3 WHEN DEBIT>0 THEN 2 ELSE 1 END,DOCID,V_SNo")
  loc_1ED5B1E:   Else
  loc_1ED5B44:     Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1ED5B54:     Proc_183_7_EB17D4(var_1B4, MemVar_1F950F4)
  loc_1ED5B5D:     var_230 = CVar(var_1B4(var_2EC)) 'Address
  loc_1ED5B64:     Proc_183_7_EB17D4(var_250)
  loc_1ED5B6F:     var_2FC = 0
  loc_1ED5BAD:     var_260 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 
  loc_1ED5BD7:     unk_583395.Execute CStr(var_260 & " AND CREDIT >0 " & CVar(var_E4) & vbNullString), var_2B4, -1
  loc_1ED5BDF:     var_194 = var_194.Fields
  loc_1ED5BE7:     var_2FC = var_1B8.Item(var_1B8)
  loc_1ED5BEF:     var_2DC = var_2DC.Value
  loc_1ED5BF8:     var_EC = CSng(var_30C)
  loc_1ED5C2D:     var_114 = "subcode"
  loc_1ED5C50:     Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item(var_114)), var_EC)
  loc_1ED5C60:     Proc_183_7_EB17D4(var_1B4, MemVar_1F950F4)
  loc_1ED5C69:     var_230 = CVar(var_230(var_30C)) 'Address
  loc_1ED5C70:     Proc_183_7_EB17D4(var_250)
  loc_1ED5C78:     var_31C = CVar(var_EC) 'Double
  loc_1ED5C82:     var_2FC = 0
  loc_1ED5C98:     var_124 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ED5CDC:     var_2A4 = var_124 & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 & " AND DEBIT>0 " & CVar(var_E4) & vbNullString 
  loc_1ED5CEA:     unk_583395.Execute CStr(var_2A4), var_2B4, -1
  loc_1ED5CF2:     var_194 = var_194.Fields
  loc_1ED5CFA:     var_2FC = var_1B8.Item(var_1B8)
  loc_1ED5D02:     var_2DC = var_2DC.Value
  loc_1ED5D0A:     var_32C = (var_30C - var_30C)
  loc_1ED5D0F:     var_EC = CSng(var_32C)
  loc_1ED5D41:   End If
  loc_1ED5D48:   If (var_EC < CDbl(0)) Then
  loc_1ED5D4E:     Set var_330 = var_8C 
  loc_1ED5D5D:     var_330.AddNew var_114, var_124
  loc_1ED5D62:     var_124 = vbNullString
  loc_1ED5D71:     var_330.Collect = "V_Type"
  loc_1ED5D76:     var_124 = 0
  loc_1ED5D85:     var_330.Collect = "V_NO"
  loc_1ED5D8A:     var_124 = vbNullString
  loc_1ED5D99:     var_330.Collect = "V_ADD"
  loc_1ED5D9E:     var_124 = 0
  loc_1ED5DAD:     var_330.Collect = "V_SNo"
  loc_1ED5DC1:     var_330.Collect = "Name"
  loc_1ED5DFE:     var_330.Collect = "V_DATE"
  loc_1ED5E47:     var_330.Collect = "PDate"
  loc_1ED5E5C:     var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ED5E6A:     var_330.Collect = "cr"
  loc_1ED5E73:     var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ED5E81:     var_330.Collect = "ADJQTY"
  loc_1ED5E86:     var_124 = "0"
  loc_1ED5E95:     var_330.Collect = "Val"
  loc_1ED5E9D:     var_124 = CVar(var_A4) 'String
  loc_1ED5EAA:     var_330.Collect = "Name1"
  loc_1ED5EBF:     var_330.Collect = "subcode"
  loc_1ED5EEC:     var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_A8), CVar(var_A8), CVar(var_A8), CVar(var_A8), CVar(var_A8), Format(CVar(1(Format(CVar("Opening Balance"("Opening Balance")), "dd/MMM/yyyy"))), "dd/MMM/yyyy"))) 'String
  loc_1ED5EF9:     var_330.Collect = "CITY_NAME"
  loc_1ED5F0B:     var_114 = "Add1"
  loc_1ED5F30:     var_15A = IsNull(CVar(var_88.Fields.Item(var_114)))
  loc_1ED5F5B:     var_162 = IsNull(CVar(var_88.Fields.Item("Add2")))
  loc_1ED5F61:     var_124 = "Add1"
  loc_1ED5F6D:     var_194 = var_88.Fields
  loc_1ED5F86:     var_178 = vbNullString
  loc_1ED5FC5:     var_1C8 = var_88.Fields.Item("Add2").Value
  loc_1ED5FCD:     var_210 = (", " + var_1C8)
  loc_1ED5FF1:     var_260 = Trim(IIf(var_162, vbNullString, var_124 & var_178 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<"))
  loc_1ED5FF9:     var_270 = (IIf(var_15A, var_178, CVar(var_194.Item(var_124))) + var_260)
  loc_1ED6000:     var_290 = Trim(var_124 & var_178 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<" & IIf(var_162, vbNullString, var_124 & var_178 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<") & " AND DEBIT>0 ")
  loc_1ED6012:     var_330.Collect = "Address1"
  loc_1ED604E:     var_330.Update var_114, var_124
  loc_1ED6055:     Set var_330 = Nothing 
  loc_1ED605C:     var_EC = CDbl(0)
  loc_1ED605F:   End If
  loc_1ED606C:   var_124 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY1 WHERE VIEWLEDGER.PARTY="
  loc_1ED6097:   Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_124, var_30C, -1, var_194, var_EC)
  loc_1ED60B7:   Proc_183_7_EB17D4(var_1C8, CVar(var_162(var_290 & var_178 & " AND VIEWLEDGER.V_DATE BETWEEN ")), var_15A, var_178)
  loc_1ED60D7:   Proc_183_7_EB17D4(var_260, CVar(1(1 & var_1C8 & " AND ")))
  loc_1ED6109:   unk_583395.Execute CStr(1 & var_260 & " AND VIEWLEDGER.DEBIT>0  " & CVar(var_E4) & " ORDER BY V_DATE,V_TYPE,V_NO"), , 
  loc_1ED6114:   Set var_90 = var_194
  loc_1ED6142:   ' Referenced from: 1ED88CF
  loc_1ED6151:   If Not(var_90.EOF) Then
  loc_1ED6192:     If (CVar(var_EC) >= var_90.Fields.Item("Debit").Value) Then
  loc_1ED61C6:       var_178 = (CVar(var_EC) - var_90.Fields.Item("Debit").Value)
  loc_1ED61CB:       var_EC = CSng(var_178)
  loc_1ED61DB:     Else
  loc_1ED61E4:       var_B0 = vbNullString
  loc_1ED61EA:       var_B4 = vbNullString
  loc_1ED61F0:       var_B8 = vbNullString
  loc_1ED623D:       If CBool(Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No"))))) <> vbNullString) Then
  loc_1ED6280:         var_1B4 = (var_EC + Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1ED6285:         var_AC = CStr(CVar(var_162(1 & var_260 & " AND VIEWLEDGER.DEBIT>0  " & CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:"))) & " AND VIEWLEDGER.V_DATE BETWEEN ")))
  loc_1ED6298:       End If
  loc_1ED62C7:       If Not(IsNull(CVar(var_90.Fields.Item("Chq_Date")))) Then
  loc_1ED62ED:         var_160 = var_AC & " Dt:   "
  loc_1ED631D:         var_AC = 1 & CStr(Format(CVar(var_90.Fields.Item("Chq_Date")), "dd/MMM/yyyy"))
  loc_1ED6335:       End If
  loc_1ED63EB:       var_290 = IIf((Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr")), 1))) <> vbNullString), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr"))))), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("NARR"))))))
  loc_1ED63F4:       var_B0 = CStr(var_290)
  loc_1ED649C:       var_250 = IIf((Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr"))))) <> vbNullString), Trim(CVar(var_90.Fields.Item("NARR"))), vbNullString)
  loc_1ED64A5:       var_B4 = CStr(var_250)
  loc_1ED65B3:       var_2B4 = vbNullString
  loc_1ED65D3:       var_30C = IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), var_2B4)
  loc_1ED65DB:       var_32C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + var_30C)
  loc_1ED65E0:       var_B8 = CStr(var_32C)
  loc_1ED6699:       var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ED66CA:       var_290 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1ED66CF:       var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1ED6729:       var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ED675B:       var_210 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_1ED6760:       var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_1ED678A:       var_124 = vbNullString
  loc_1ED679D:       var_114 = (var_B8 = vbNullString)
  loc_1ED67AC:       var_1A4 = (CVar(var_B8) + IIf(var_114, var_124, "/"))
  loc_1ED67E9:       var_230 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_1ED680C:       Set var_340 = var_8C 
  loc_1ED681B:       var_340.AddNew var_114, var_124
  loc_1ED6848:       var_178 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("V_ADD")))) 'String
  loc_1ED6855:       var_340.Collect = "V_ADD"
  loc_1ED6883:       var_158 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_1ED6891:       var_340.Collect = "V_NO"
  loc_1ED68C2:       var_340.Fields.Item("DocNo").Value = CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD")))))
  loc_1ED68FC:       var_188 = Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")))))
  loc_1ED690E:       var_340.Collect = "Name"
  loc_1ED695A:       var_188 = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED696C:       var_340.Collect = "V_DATE"
  loc_1ED699C:       var_158 = CVar(var_90.Fields.Item("Debit")) 'Address
  loc_1ED69AA:       var_340.Collect = "cr"
  loc_1ED69E6:       var_178 = (var_90.Fields.Item("Debit").Value - CVar(var_EC))
  loc_1ED69F4:       var_340.Collect = "ADJQTY"
  loc_1ED6A22:       var_158 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_1ED6A30:       var_340.Collect = "V_Type"
  loc_1ED6A5A:       var_158 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_1ED6A68:       var_340.Collect = "V_SNo"
  loc_1ED6A76:       var_124 = CVar(var_A4) 'String
  loc_1ED6A83:       var_340.Collect = "Name1"
  loc_1ED6A98:       var_340.Collect = "subcode"
  loc_1ED6AC5:       var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_A8), CVar(var_A8), CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_88.Fields.Item("CITY_NAME")), var_178, CVar(var_88.Fields.Item("CITY_NAME")))) 'String
  loc_1ED6AD2:       var_340.Collect = "CITY_NAME"
  loc_1ED6B09:       var_15A = IsNull(CVar(var_88.Fields.Item("Add1")))
  loc_1ED6B1B:       var_2DC = var_88.Fields
  loc_1ED6B34:       var_162 = IsNull(CVar(var_2DC.Item("Add2")))
  loc_1ED6BA6:       var_210 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ED6BD2:       var_270 = (IIf(var_15A, vbNullString, CVar(var_88.Fields.Item("Add1"))) + Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO")))))))
  loc_1ED6BD9:       var_290 = Trim(IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1ED6BEB:       var_340.Collect = "Address1"
  loc_1ED6C5F:       var_340.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED6CD3:       var_340.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED6D26:       If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED6D29:         var_124 = "1"
  loc_1ED6D38:         var_340.Collect = "Val"
  loc_1ED6D40:       Else
  loc_1ED6DA6:         var_340.Collect = "Val"
  loc_1ED6DC7:         If (var_FC = "Yes") Then
  loc_1ED6DF4:           var_124 = 0
  loc_1ED6E06:           If (var_90.Fields.Item("Credit").Value > var_124) Then
  loc_1ED6E31:             var_178 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2"), var_124, 1, 1, var_290)) 'String
  loc_1ED6E54:             var_1B4 = ("By " + Left(Trim(var_178), &H2F))
  loc_1ED6E62:             var_340.Collect = "Name"
  loc_1ED6E7A:           Else
  loc_1ED6E7D:             var_114 = "Name"
  loc_1ED6E91:             var_168 = var_90.Fields.Item(var_114)
  loc_1ED6EA2:             var_178 = CVar(Proc_183_2_E5AE94(CVar(var_168), "2", var_162, var_15A)) 'String
  loc_1ED6EAD:             var_124 = "To "
  loc_1ED6EC5:             var_1B4 = (var_124 + Left(Trim(var_178), &H2F))
  loc_1ED6ED3:             var_340.Collect = "Name"
  loc_1ED6EE8:           End If
  loc_1ED6EE8:         End If
  loc_1ED6EE8:       End If
  loc_1ED6EF3:       var_340.Update var_114, var_124
  loc_1ED6EFA:       Set var_340 = Nothing 
  loc_1ED6F0C:       Set var_148 = var_168(CInt(6))
  loc_1ED6F12:       Call 0.Method_Proc_203_75_1EE05180 (var_160, "2", var_178)
  loc_1ED6F1A:       var_188 = var_168.Text
  loc_1ED6F7E:       If CBool((var_160 = "Yes") And (Len(var_90.Fields.Item("Party1").Value) = 0)) Then
  loc_1ED6F84:         Set var_344 = var_8C 
  loc_1ED6F8B:         var_344.MoveLast
  loc_1ED6FB5:         var_344.Fields.Item("Name").Value = "As Per Detail"
  loc_1ED7004:         var_344.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED703B:         var_344.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED706D:         var_344.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED707C:         var_114 = "V_DATE"
  loc_1ED709F:         var_124 = "dd/MMM/yyyy"
  loc_1ED70A4:         var_178 = var_124
  loc_1ED70DC:         var_344.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item(var_114)), var_178)
  loc_1ED70FE:         var_344.Update var_114, var_124
  loc_1ED7105:         Set var_344 = Nothing 
  loc_1ED7116:         var_124 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.NAME,VIEWLEDGER.* FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE DOCID="
  loc_1ED7141:         Proc_183_9_EAB2F0(var_178, CVar(var_90.Fields.Item("DocID")), var_124, Trim(Str(CVar(var_90.Fields.Item("V_NO")))), -1)
  loc_1ED718E:         unk_583395.Execute CStr(var_2DC & var_178 & " AND V_SNo<>" & var_90.Fields.Item("V_SNo").Value), 1, 1
  loc_1ED7199:         Set var_94 = var_2DC
  loc_1ED71BB:         ' Referenced from:   1ED7E6E
  loc_1ED71CA:         If Not(var_94.EOF) Then
  loc_1ED71D6:           var_D8 = vbNullString
  loc_1ED71DC:           var_DC = vbNullString
  loc_1ED7218:           If (Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), 1) <> vbNullString) Then
  loc_1ED725B:             var_1B4 = (1 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1ED7260:             var_D4 = CStr(var_90.Fields.Item("V_SNo").Value)
  loc_1ED7273:           End If
  loc_1ED72A2:           If Not(IsNull(CVar(var_94.Fields.Item("Chq_Date")))) Then
  loc_1ED72C8:             var_160 = var_D4 & " Dt:   "
  loc_1ED72D5:             var_124 = "dd/MM/yy"
  loc_1ED72F8:             var_D4 = 1 & CStr(Format(CVar(var_94.Fields.Item("Chq_Date")), var_124))
  loc_1ED7310:           End If
  loc_1ED7313:           var_114 = "NARR"
  loc_1ED7347:           var_DC = CStr(Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item(var_114)), 1))))
  loc_1ED7359:           Set var_348 = var_8C 
  loc_1ED7368:           var_348.AddNew var_114, var_124
  loc_1ED73A9:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED73AC:             var_124 = "1"
  loc_1ED73BB:             var_348.Collect = "Val"
  loc_1ED73C3:           Else
  loc_1ED7417:             var_1C8 = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1ED7429:             var_348.Collect = "Val"
  loc_1ED7442:           End If
  loc_1ED74A5:           var_348.Fields.Item("PDate").Value = Format(CVar(var_94.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED74E2:           var_348.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED7531:           var_348.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ED757E:           If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_1ED75A6:             var_348.Fields.Item("Sub").Value = "*"
  loc_1ED75F8:             var_1C8 = CVar(var_94.Fields.Item("Debit")) 'Address
  loc_1ED75FF:             Proc_183_4_EAC738(Trim(Str(CVar(var_90.Fields.Item("V_NO")))), var_1C8, 1, 1)
  loc_1ED7629:             var_1A4 = (var_1C8 + CVar(Proc_183_15_EAD490(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2))))
  loc_1ED762D:             var_124 = " "
  loc_1ED7632:             var_1B4 = ("3" + var_124)
  loc_1ED764B:             var_250 = (var_124 + CVar(Proc_183_16_EAF86C(CStr(Trim(Str(CVar(var_90.Fields.Item("V_NO"))))), &HC, "2")))
  loc_1ED7654:             var_260 = (IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))) + " Dr")
  loc_1ED7678:             var_348.Fields.Item("Name").Value = Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))))
  loc_1ED76AB:           Else
  loc_1ED76D0:             var_348.Fields.Item("Sub").Value = "*"
  loc_1ED76E2:             var_114 = "Name"
  loc_1ED76F6:             var_168 = var_94.Fields.Item(var_114)
  loc_1ED7729:             Proc_183_4_EAC738(Trim(Str(CVar(var_90.Fields.Item("V_NO")))), CVar(var_94.Fields.Item("Credit")))
  loc_1ED7753:             var_1A4 = (Space(2) + CVar(Proc_183_15_EAD490(CStr(var_168.Value), &H14)))
  loc_1ED7757:             var_124 = " "
  loc_1ED775C:             var_1B4 = ("3" + var_124)
  loc_1ED7775:             var_250 = ("2" + CVar(Proc_183_16_EAF86C(CStr(Trim(Str(CVar(var_90.Fields.Item("V_NO"))))), &HC)))
  loc_1ED777E:             var_260 = (IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))) + " Cr")
  loc_1ED77A2:             var_348.Fields.Item("Name").Value = Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))))
  loc_1ED77D2:           End If
  loc_1ED77DD:           var_348.Update var_114, var_124
  loc_1ED77E4:           Set var_348 = Nothing 
  loc_1ED77F6:           Set var_148 = var_168(CInt(7))
  loc_1ED77FC:           Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1ED781B:           If (var_168.Text = "Yes") Then
  loc_1ED7821:             var_114 = var_D4
  loc_1ED7831:             var_124 = vbNullString
  loc_1ED783C:             If CBool(Trim(var_114) <> var_124) Then
  loc_1ED783F:               ' Referenced from:   1ED7B3F
  loc_1ED7849:               If (Len(var_D4) > 0) Then
  loc_1ED784F:                 Set var_34C = var_8C 
  loc_1ED785E:                 var_34C.AddNew var_114, var_124
  loc_1ED788B:                 var_188 = (Space(2) + Left(var_D4, &H23))
  loc_1ED78AF:                 var_34C.Fields.Item("Name").Value = CVar(Proc_183_15_EAD490(CStr(var_34C.Fields.Item("Name").Value), &H14))
  loc_1ED7907:                 var_34C.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ED793E:                 var_34C.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED796F:                 var_34C.Fields.Item("Sub").Value = "*"
  loc_1ED79DE:                 var_34C.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED7A31:                 If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED7A59:                   var_34C.Fields.Item("Val").Value = "1"
  loc_1ED7A68:                 Else
  loc_1ED7A6E:                   var_114 = "Credit"
  loc_1ED7AA8:                   var_124 = 0
  loc_1ED7AE4:                   var_34C.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED7B01:                 End If
  loc_1ED7B0C:                 var_34C.Update var_114, var_124
  loc_1ED7B13:                 Set var_34C = Nothing 
  loc_1ED7B35:                 var_D4 = CStr(Mid(var_D4, &H24, 300))
  loc_1ED7B3F:                 GoTo loc_1ED783F
  loc_1ED7B42:               End If
  loc_1ED7B42:             End If
  loc_1ED7B45:             var_114 = var_DC
  loc_1ED7B55:             var_124 = vbNullString
  loc_1ED7B60:             If CBool(Trim(var_114) <> var_124) Then
  loc_1ED7B63:               ' Referenced from:   1ED7E63
  loc_1ED7B6D:               If (Len(var_DC) > 0) Then
  loc_1ED7B73:                 Set var_350 = var_8C 
  loc_1ED7B82:                 var_350.AddNew var_114, var_124
  loc_1ED7BAF:                 var_188 = (Space(2) + Left(var_DC, &H23))
  loc_1ED7BD3:                 var_350.Fields.Item("Name").Value = (var_90.Fields.Item(var_DC).Value > "Name")
  loc_1ED7C2B:                 var_350.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ED7C62:                 var_350.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED7C93:                 var_350.Fields.Item("Sub").Value = "*"
  loc_1ED7D02:                 var_350.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED7D55:                 If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED7D7D:                   var_350.Fields.Item("Val").Value = "1"
  loc_1ED7D8C:                 Else
  loc_1ED7D92:                   var_114 = "Credit"
  loc_1ED7DCC:                   var_124 = 0
  loc_1ED7E08:                   var_350.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED7E25:                 End If
  loc_1ED7E30:                 var_350.Update var_114, var_124
  loc_1ED7E37:                 Set var_350 = Nothing 
  loc_1ED7E59:                 var_DC = CStr(Mid(var_DC, &H24, 300))
  loc_1ED7E63:                 GoTo loc_1ED7B63
  loc_1ED7E66:               End If
  loc_1ED7E66:             End If
  loc_1ED7E66:           End If
  loc_1ED7E69:           var_94.MoveNext
  loc_1ED7E6E:           GoTo loc_1ED71BB
  loc_1ED7E71:         End If
  loc_1ED7E71:       End If
  loc_1ED7E8F:       If CBool(Trim(var_AC) <> vbNullString) Then
  loc_1ED7E92:         ' Referenced from:   1ED81DE
  loc_1ED7E9C:         If (Len(var_AC) > 0) Then
  loc_1ED7EA2:           Set var_354 = var_8C 
  loc_1ED7EA9:           var_354.MoveLast
  loc_1ED7EB1:           var_114 = "Name"
  loc_1ED7EDC:           var_124 = vbNullString
  loc_1ED7EEE:           If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ED7EFC:             var_354.AddNew var_114, var_124
  loc_1ED7F01:           End If
  loc_1ED7F29:           var_188 = (Space(2) + Left(var_AC, &H30))
  loc_1ED7F4D:           var_354.Fields.Item("Name").Value = (var_90.Fields.Item(var_AC).Value > "Name")
  loc_1ED7FA5:           var_354.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED7FDC:           var_354.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED800E:           var_354.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED807D:           var_354.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED80D0:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED80F8:             var_354.Fields.Item("Val").Value = "1"
  loc_1ED8107:           Else
  loc_1ED810D:             var_114 = "Credit"
  loc_1ED8147:             var_124 = 0
  loc_1ED8183:             var_354.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED81A0:           End If
  loc_1ED81AB:           var_354.Update var_114, var_124
  loc_1ED81B2:           Set var_354 = Nothing 
  loc_1ED81D4:           var_AC = CStr(Mid(var_AC, &H31, 300))
  loc_1ED81DE:           GoTo loc_1ED7E92
  loc_1ED81E1:         End If
  loc_1ED81E1:       End If
  loc_1ED81FF:       If CBool(Trim(var_B0) <> vbNullString) Then
  loc_1ED8202:         ' Referenced from:   1ED854E
  loc_1ED820C:         If (Len(var_B0) > 0) Then
  loc_1ED8212:           Set var_358 = var_8C 
  loc_1ED8219:           var_358.MoveLast
  loc_1ED8221:           var_114 = "Name"
  loc_1ED824C:           var_124 = vbNullString
  loc_1ED825E:           If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ED826C:             var_358.AddNew var_114, var_124
  loc_1ED8271:           End If
  loc_1ED8299:           var_188 = (Space(2) + Left(var_B0, &H30))
  loc_1ED82BD:           var_358.Fields.Item("Name").Value = (var_90.Fields.Item(var_B0).Value > "Name")
  loc_1ED82F8:           var_358.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED832A:           var_358.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED8399:           var_358.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED83EC:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED8414:             var_358.Fields.Item("Val").Value = "1"
  loc_1ED8423:           Else
  loc_1ED849F:             var_358.Fields.Item("Val").Value = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1ED84BC:           End If
  loc_1ED84BF:           var_114 = "DocID"
  loc_1ED84E3:           var_124 = "DocId"
  loc_1ED84FF:           var_358.Fields.Item(var_124).Value = CVar(var_90.Fields.Item(var_114))
  loc_1ED851B:           var_358.Update var_114, var_124
  loc_1ED8522:           Set var_358 = Nothing 
  loc_1ED8544:           var_B0 = CStr(Mid(var_B0, &H31, 300))
  loc_1ED854E:           GoTo loc_1ED8202
  loc_1ED8551:         End If
  loc_1ED8551:       End If
  loc_1ED856F:       If CBool(Trim(var_B4) <> vbNullString) Then
  loc_1ED8572:         ' Referenced from:   1ED88BE
  loc_1ED857C:         If (Len(var_B4) > 0) Then
  loc_1ED8582:           Set var_35C = var_8C 
  loc_1ED8589:           var_35C.MoveLast
  loc_1ED8591:           var_114 = "Name"
  loc_1ED85BC:           var_124 = vbNullString
  loc_1ED85CE:           If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ED85DC:             var_35C.AddNew var_114, var_124
  loc_1ED85E1:           End If
  loc_1ED8609:           var_188 = (Space(2) + Left(var_B4, &H30))
  loc_1ED862D:           var_35C.Fields.Item("Name").Value = (var_90.Fields.Item("Credit").Value > 0)
  loc_1ED8685:           var_35C.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED86BC:           var_35C.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED86EE:           var_35C.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED875D:           var_35C.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED87B0:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED87D8:             var_35C.Fields.Item("Val").Value = "1"
  loc_1ED87E7:           Else
  loc_1ED87ED:             var_114 = "Credit"
  loc_1ED8827:             var_124 = 0
  loc_1ED8863:             var_35C.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED8880:           End If
  loc_1ED888B:           var_35C.Update var_114, var_124
  loc_1ED8892:           Set var_35C = Nothing 
  loc_1ED88A3:           var_114 = var_B4
  loc_1ED88B4:           var_B4 = CStr(Mid(var_114, &H31, 300))
  loc_1ED88BE:           GoTo loc_1ED8572
  loc_1ED88C1:         End If
  loc_1ED88C1:       End If
  loc_1ED88C4:       var_EC = CDbl(0)
  loc_1ED88C7:     End If
  loc_1ED88CA:     var_90.MoveNext
  loc_1ED88CF:     GoTo loc_1ED6142
  loc_1ED88D2:   End If
  loc_1ED88D9:   If (var_EC > CDbl(0)) Then
  loc_1ED88DF:     Set var_360 = var_8C 
  loc_1ED88EE:     var_360.AddNew var_114, var_124
  loc_1ED88F3:     var_124 = vbNullString
  loc_1ED8902:     var_360.Collect = "V_Type"
  loc_1ED8907:     var_124 = 0
  loc_1ED8916:     var_360.Collect = "V_NO"
  loc_1ED891B:     var_124 = vbNullString
  loc_1ED892A:     var_360.Collect = "V_ADD"
  loc_1ED892F:     var_124 = 0
  loc_1ED893E:     var_360.Collect = "V_SNo"
  loc_1ED8952:     var_360.Collect = "Name"
  loc_1ED895B:     var_158 = CVar("Excess Credit"("Excess Credit")) 'Address
  loc_1ED8969:     var_360.Collect = "V_DATE"
  loc_1ED8975:     var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ED8983:     var_360.Collect = "ADJAMT"
  loc_1ED898B:     var_124 = CVar(var_A4) 'String
  loc_1ED8998:     var_360.Collect = "Name1"
  loc_1ED89A0:     var_124 = CVar(var_A8) 'String
  loc_1ED89AD:     var_360.Collect = "subcode"
  loc_1ED89DA:     var_15A = IsNull(CVar(var_88.Fields.Item("Add1")))
  loc_1ED8A05:     var_162 = IsNull(CVar(var_88.Fields.Item("Add2")))
  loc_1ED8A0B:     var_124 = "Add1"
  loc_1ED8A6F:     var_1C8 = var_88.Fields.Item("Add2").Value
  loc_1ED8A77:     var_210 = (", " + var_1C8)
  loc_1ED8AA3:     var_270 = (IIf(var_15A, vbNullString, CVar(var_88.Fields.Item(var_124))) + Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO")))))))
  loc_1ED8AAA:     var_290 = Trim(IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1ED8ABC:     var_360.Collect = "Address1"
  loc_1ED8AF0:     var_114 = "CITY_NAME"
  loc_1ED8B15:     var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item(var_114)), var_290, var_162, var_15A, var_124, var_124)) 'String
  loc_1ED8B19:     var_124 = "CITY_NAME"
  loc_1ED8B22:     var_360.Collect = var_124
  loc_1ED8B3C:     var_360.Update var_114, var_124
  loc_1ED8B43:     Set var_360 = Nothing 
  loc_1ED8B47:   End If
  loc_1ED8B47:   GoTo loc_1ECF322
  loc_1ED8B4A: End If
  loc_1ED8B52: Loop Until (var_2D8 = "LedCred") 'do at: 1ECBE60
  loc_1ED8B7F: var_124 = "E"
  loc_1ED8BA3: var_1B8 = var_88.Fields.Item("GroupNature")
  loc_1ED8BD5: If CBool((var_88.Fields.Item("GroupNature").Value <> var_124) And (var_1B8.Value <> "R")) Then
  loc_1ED8BF7:   var_158 = CVar(var_88.Fields.Item("subcode")) 'Address
  loc_1ED8BFE:   Proc_183_9_EAB2F0(var_178, var_158, var_178, var_124)
  loc_1ED8C0E:   Proc_183_7_EB17D4(var_1C8, CVar(var_124(var_158)))
  loc_1ED8C19:   var_280 = 0
  loc_1ED8C2F:   var_124 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ED8C71:   unk_583395.Execute CStr(var_124 & var_178 & " AND V_DATE <=" & var_1C8 & " AND DEBIT >0 " & CVar(var_E4) & vbNullString), IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString), -1
  loc_1ED8C79:   var_194 = var_194.Fields
  loc_1ED8C81:   var_280 = var_1B8.Item(var_1B8)
  loc_1ED8C89:   var_2DC = var_2DC.Value
  loc_1ED8C92:   var_EC = CSng(var_290)
  loc_1ED8CE4:   Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1ED8CED:   var_1B4 = CVar(var_124(var_290)) 'Address
  loc_1ED8CF4:   Proc_183_7_EB17D4(var_1C8, var_1B4)
  loc_1ED8CFC:   var_2EC = CVar(var_EC) 'Double
  loc_1ED8D06:   var_280 = 0
  loc_1ED8D1C:   var_124 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ED8D47:   var_250 = var_124 & var_178 & " AND V_DATE<" & var_1C8 & " AND CREDIT>0 " & CVar(var_E4) 
  loc_1ED8D5E:   unk_583395.Execute CStr(var_250 & vbNullString), IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString), -1
  loc_1ED8D66:   var_194 = var_194.Fields
  loc_1ED8D6E:   var_280 = var_1B8.Item(var_1B8)
  loc_1ED8D76:   var_2DC = var_2DC.Value
  loc_1ED8D7E:   var_2A4 = (var_290 - var_290)
  loc_1ED8D83:   var_EC = CSng((Me.Fields.Item("LedSiteCode").Value = "Yes"))
  loc_1ED8DB2: Else
  loc_1ED8DD8:   Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1ED8DE8:   Proc_183_7_EB17D4(var_1B4, MemVar_1F950F4)
  loc_1ED8DF1:   var_230 = CVar(var_124(var_2EC)) 'Address
  loc_1ED8DF8:   Proc_183_7_EB17D4(var_250)
  loc_1ED8E03:   var_2FC = 0
  loc_1ED8E41:   var_260 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE BETWEEN " & var_1B4 & " AND " & var_250 
  loc_1ED8E6B:   unk_583395.Execute CStr(var_260 & " AND DEBIT >0 " & CVar(var_E4) & vbNullString), var_2B4, -1
  loc_1ED8E73:   var_194 = var_194.Fields
  loc_1ED8E7B:   var_2FC = var_1B8.Item(var_1B8)
  loc_1ED8E83:   var_2DC = var_2DC.Value
  loc_1ED8E8C:   var_EC = CSng(var_30C)
  loc_1ED8EC1:   var_114 = "subcode"
  loc_1ED8EE4:   Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item(var_114)), var_EC)
  loc_1ED8EF4:   Proc_183_7_EB17D4(var_1B4, MemVar_1F950F4)
  loc_1ED8EFD:   var_230 = CVar(var_230(var_30C)) 'Address
  loc_1ED8F04:   Proc_183_7_EB17D4(var_250)
  loc_1ED8F0C:   var_31C = CVar(var_EC) 'Double
  loc_1ED8F16:   var_2FC = 0
  loc_1ED8F2C:   var_124 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ED8F74:   var_160 = CStr(var_124 & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 & " AND CREDIT>0 " & CVar(var_E4) & vbNullString)
  loc_1ED8F7E:   unk_583395.Execute var_160, var_2B4, -1
  loc_1ED8F86:   var_194 = var_194.Fields
  loc_1ED8F8E:   var_2FC = var_1B8.Item(var_1B8)
  loc_1ED8F96:   var_2DC = var_2DC.Value
  loc_1ED8F9E:   var_32C = (var_30C - var_30C)
  loc_1ED8FA3:   var_EC = CSng(var_32C)
  loc_1ED8FD5: End If
  loc_1ED8FDC: If (var_EC < CDbl(0)) Then
  loc_1ED8FE2:   Set var_364 = var_8C 
  loc_1ED8FF1:   var_364.AddNew var_114, var_124
  loc_1ED8FF6:   var_124 = vbNullString
  loc_1ED9005:   var_364.Collect = "V_Type"
  loc_1ED900A:   var_124 = 0
  loc_1ED9019:   var_364.Collect = "V_NO"
  loc_1ED901E:   var_124 = vbNullString
  loc_1ED902D:   var_364.Collect = "V_ADD"
  loc_1ED9032:   var_124 = 0
  loc_1ED9041:   var_364.Collect = "V_SNo"
  loc_1ED9055:   var_364.Collect = "Name"
  loc_1ED9092:   var_364.Collect = "V_DATE"
  loc_1ED90A7:   var_158 = CVar(1(Format(CVar("Opening Balance"("Opening Balance")), "dd/MMM/yyyy"))) 'Address
  loc_1ED90B5:   var_364.Collect = "PDate"
  loc_1ED90C1:   var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ED90CF:   var_364.Collect = "cr"
  loc_1ED90D8:   var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ED90E6:   var_364.Collect = "ADJQTY"
  loc_1ED90EB:   var_124 = "0"
  loc_1ED90FA:   var_364.Collect = "Val"
  loc_1ED9102:   var_124 = CVar(var_A4) 'String
  loc_1ED910F:   var_364.Collect = "Name1"
  loc_1ED9117:   var_124 = CVar(var_A8) 'String
  loc_1ED9124:   var_364.Collect = "subcode"
  loc_1ED9151:   var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Add1")), var_124, var_124, var_124, var_124, var_124, CVar(var_88.Fields.Item("Add1")))) 'String
  loc_1ED9184:   var_260 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Add2")), 1, var_124, var_124)) 'String
  loc_1ED919E:   var_194 = var_88.Fields
  loc_1ED91B7:   var_1C8 = vbNullString
  loc_1ED91C0:   var_124 = vbNullString
  loc_1ED920B:   var_2B4 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ED9227:   var_30C = (Trim(var_260) = vbNullString) 'Variant
  loc_1ED9244:   var_394 = (IIf((Trim(var_178) = var_124), var_1C8, CVar(var_194.Item("Add1"))) + Trim(IIf(var_30C, vbNullString, var_2B4)))
  loc_1ED925D:   var_364.Collect = "Address1"
  loc_1ED9299:   var_114 = "CITY_NAME"
  loc_1ED92BE:   var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item(var_114)), Trim(var_394), var_124)) 'String
  loc_1ED92C2:   var_124 = "CITY_NAME"
  loc_1ED92CB:   var_364.Collect = var_124
  loc_1ED92E5:   var_364.Update var_114, var_124
  loc_1ED92EC:   Set var_364 = Nothing 
  loc_1ED92F3:   var_EC = CDbl(0)
  loc_1ED92F6: End If
  loc_1ED9303: var_124 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY1 WHERE VIEWLEDGER.PARTY="
  loc_1ED932E: Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_124, var_30C, -1)
  loc_1ED934E: Proc_183_7_EB17D4(var_1C8, CVar(var_EC(var_194 & var_178 & " AND VIEWLEDGER.V_DATE BETWEEN ")), var_178)
  loc_1ED936E: Proc_183_7_EB17D4(var_260)
  loc_1ED9392: var_2B4 = CVar(var_31C(var_EC & var_1C8 & " AND ")) & var_260 & " AND VIEWLEDGER.CREDIT>0  " & CVar(var_E4) & " ORDER BY V_DATE,V_TYPE,V_NO" 
  loc_1ED93A0: unk_583395.Execute CStr(var_2B4), , 
  loc_1ED93AB: Set var_90 = var_194
  loc_1ED93D9: ' Referenced from: 1EDBB84
  loc_1ED93E8: If Not(var_90.EOF) Then
  loc_1ED9429:   If (CVar(var_EC) >= var_90.Fields.Item("Credit").Value) Then
  loc_1ED945D:     var_178 = (CVar(var_EC) - var_90.Fields.Item("Credit").Value)
  loc_1ED9462:     var_EC = CSng(var_178)
  loc_1ED9472:   Else
  loc_1ED947B:     var_B0 = vbNullString
  loc_1ED9481:     var_B4 = vbNullString
  loc_1ED9487:     var_B8 = vbNullString
  loc_1ED94C3:     If (Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No"))) <> vbNullString) Then
  loc_1ED9506:       var_1B4 = (var_EC + Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1ED950B:       var_AC = CStr(CVar(var_EC(var_194 & CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:"))) & " AND VIEWLEDGER.V_DATE BETWEEN ")))
  loc_1ED951E:     End If
  loc_1ED954D:     If Not(IsNull(CVar(var_90.Fields.Item("Chq_Date")))) Then
  loc_1ED9573:       var_160 = var_AC & " Dt:   "
  loc_1ED95A3:       var_AC = 1 & CStr(Format(CVar(var_90.Fields.Item("Chq_Date")), "dd/MM/yy"))
  loc_1ED95BB:     End If
  loc_1ED9664:     var_230 = IIf((Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr")), 1) <> vbNullString), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr"))))), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("NARR"))))))
  loc_1ED966D:     var_B0 = CStr(var_230)
  loc_1ED96FC:     var_160 = Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr")))
  loc_1ED9714:     var_B4 = CStr(IIf((var_160 <> vbNullString), Trim(CVar(var_90.Fields.Item("NARR"))), vbNullString))
  loc_1ED9845:     var_30C = IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString)
  loc_1ED984D:     var_32C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + var_30C)
  loc_1ED9852:     var_B8 = CStr(vbNullString)
  loc_1ED990B:     var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ED993C:     var_290 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1ED9941:     var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1ED999B:     var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ED99CD:     var_210 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_1ED99D2:     var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_1ED99FC:     var_124 = vbNullString
  loc_1ED9A0F:     var_114 = (var_B8 = vbNullString)
  loc_1ED9A1E:     var_1A4 = (CVar(var_B8) + IIf(var_114, var_124, "/"))
  loc_1ED9A5B:     var_230 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_1ED9A7E:     Set var_3A8 = var_8C 
  loc_1ED9A8D:     var_3A8.AddNew var_114, var_124
  loc_1ED9ABA:     var_178 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("V_ADD")))) 'String
  loc_1ED9AC7:     var_3A8.Collect = "V_ADD"
  loc_1ED9AF5:     var_158 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_1ED9B03:     var_3A8.Collect = "V_NO"
  loc_1ED9B34:     var_3A8.Fields.Item("DocNo").Value = CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD")))))
  loc_1ED9B6E:     var_188 = Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")))))
  loc_1ED9B80:     var_3A8.Collect = "Name"
  loc_1ED9BDE:     var_3A8.Collect = "V_DATE"
  loc_1ED9C0E:     var_158 = CVar(var_90.Fields.Item("Credit")) 'Address
  loc_1ED9C1C:     var_3A8.Collect = "cr"
  loc_1ED9C58:     var_178 = (var_90.Fields.Item("Credit").Value - CVar(var_EC))
  loc_1ED9C66:     var_3A8.Collect = "ADJQTY"
  loc_1ED9C94:     var_158 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_1ED9CA2:     var_3A8.Collect = "V_Type"
  loc_1ED9CCC:     var_158 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_1ED9CDA:     var_3A8.Collect = "V_SNo"
  loc_1ED9CE8:     var_124 = CVar(var_A4) 'String
  loc_1ED9CF5:     var_3A8.Collect = "Name1"
  loc_1ED9D0A:     var_3A8.Collect = "subcode"
  loc_1ED9D37:     var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_A8), CVar(var_A8), CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_88.Fields.Item("CITY_NAME")), var_178, CVar(var_88.Fields.Item("CITY_NAME")))) 'String
  loc_1ED9D44:     var_3A8.Collect = "CITY_NAME"
  loc_1ED9D7B:     var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Add1")), var_178, Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy"), 1)) 'String
  loc_1ED9D81:     var_188 = Trim(var_178)
  loc_1ED9D95:     var_2DC = var_88.Fields
  loc_1ED9DD8:     var_210 = CVar(var_88.Fields.Item("Add1")) 'Address
  loc_1ED9E35:     var_2B4 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ED9E66:     var_384 = Trim(IIf((Trim(CVar(Proc_183_2_E5AE94(CVar(var_2DC.Item("Add2")), 1, var_188))) = vbNullString), vbNullString, vbNullString))
  loc_1ED9E6E:     var_394 = (IIf((var_188 = vbNullString), vbNullString, var_210) + var_384)
  loc_1ED9E75:     var_3A4 = Trim(var_394)
  loc_1ED9E87:     var_3A8.Collect = "Address1"
  loc_1ED9F03:     var_3A8.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED9F77:     var_3A8.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED9FCA:     If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED9FCD:       var_124 = "0"
  loc_1ED9FDC:       var_3A8.Collect = "Val"
  loc_1ED9FE4:     Else
  loc_1EDA04A:       var_3A8.Collect = "Val"
  loc_1EDA06B:       If (var_FC = "Yes") Then
  loc_1EDA098:         var_124 = 0
  loc_1EDA0AA:         If (var_90.Fields.Item("Credit").Value > var_124) Then
  loc_1EDA0D5:           var_178 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2"), var_124, 1)) 'String
  loc_1EDA0F8:           var_1B4 = ("By " + Left(Trim(var_178), &H2F))
  loc_1EDA106:           var_3A8.Collect = "Name"
  loc_1EDA11E:         Else
  loc_1EDA121:           var_114 = "Name"
  loc_1EDA135:           var_168 = var_90.Fields.Item(var_114)
  loc_1EDA151:           var_124 = "To "
  loc_1EDA169:           var_1B4 = (var_124 + Left(Trim(CVar(Proc_183_2_E5AE94(CVar(var_168), "2", 1))), &H2F))
  loc_1EDA177:           var_3A8.Collect = "Name"
  loc_1EDA18C:         End If
  loc_1EDA18C:       End If
  loc_1EDA18C:     End If
  loc_1EDA197:     var_3A8.Update var_114, var_124
  loc_1EDA19E:     Set var_3A8 = Nothing 
  loc_1EDA1B0:     Set var_148 = var_168(CInt(6))
  loc_1EDA1B6:     Call 0.Method_Proc_203_75_1EE05180 (var_160, "2", var_3A4)
  loc_1EDA1BE:     var_178 = var_168.Text
  loc_1EDA222:     If CBool((var_160 = "Yes") And (Len(var_90.Fields.Item("Party1").Value) = 0)) Then
  loc_1EDA228:       Set var_3AC = var_8C 
  loc_1EDA22F:       var_3AC.MoveLast
  loc_1EDA259:       var_3AC.Fields.Item("Name").Value = "As Per Detail"
  loc_1EDA2A8:       var_3AC.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EDA2DF:       var_3AC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDA311:       var_3AC.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EDA320:       var_114 = "V_DATE"
  loc_1EDA343:       var_124 = "dd/MMM/yyyy"
  loc_1EDA348:       var_178 = var_124
  loc_1EDA380:       var_3AC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item(var_114)), var_178)
  loc_1EDA3A2:       var_3AC.Update var_114, var_124
  loc_1EDA3A9:       Set var_3AC = Nothing 
  loc_1EDA3BA:       var_124 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.NAME,VIEWLEDGER.* FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE DOCID="
  loc_1EDA3E5:       Proc_183_9_EAB2F0(var_178, CVar(var_90.Fields.Item("DocID")), var_124, var_210, -1)
  loc_1EDA428:       var_160 = CStr(var_2DC & var_178 & " AND V_SNo<>" & var_90.Fields.Item("V_SNo").Value)
  loc_1EDA432:       unk_583395.Execute var_160, 1, 1
  loc_1EDA43D:       Set var_94 = var_2DC
  loc_1EDA45F:       ' Referenced from:   1EDB123
  loc_1EDA46E:       If Not(var_94.EOF) Then
  loc_1EDA47A:         var_D8 = vbNullString
  loc_1EDA480:         var_DC = vbNullString
  loc_1EDA4CD:         If CBool(Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No"))))) <> vbNullString) Then
  loc_1EDA510:           var_1B4 = (var_160 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1EDA515:           var_D4 = CStr(var_90.Fields.Item("V_SNo").Value)
  loc_1EDA528:         End If
  loc_1EDA557:         If Not(IsNull(CVar(var_94.Fields.Item("Chq_Date")))) Then
  loc_1EDA57D:           var_160 = var_D4 & " Dt:   "
  loc_1EDA58A:           var_124 = "dd/MM/yy"
  loc_1EDA5AD:           var_D4 = 1 & CStr(Format(CVar(var_94.Fields.Item("Chq_Date")), var_124))
  loc_1EDA5C5:         End If
  loc_1EDA5C8:         var_114 = "NARR"
  loc_1EDA5FC:         var_DC = CStr(Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item(var_114)), 1))))
  loc_1EDA60E:         Set var_3B0 = var_8C 
  loc_1EDA61D:         var_3B0.AddNew var_114, var_124
  loc_1EDA65E:         If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1EDA661:           var_124 = "1"
  loc_1EDA670:           var_3B0.Collect = "Val"
  loc_1EDA678:         Else
  loc_1EDA6CC:           var_1C8 = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1EDA6DE:           var_3B0.Collect = "Val"
  loc_1EDA6F7:         End If
  loc_1EDA75A:         var_3B0.Fields.Item("PDate").Value = Format(CVar(var_94.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDA797:         var_3B0.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDA7E6:         var_3B0.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1EDA833:         If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_1EDA85B:           var_3B0.Fields.Item("Sub").Value = "*"
  loc_1EDA8AD:           var_1C8 = CVar(var_94.Fields.Item("Debit")) 'Address
  loc_1EDA8B4:           Proc_183_4_EAC738(var_210, var_1C8, 1, 1)
  loc_1EDA8DE:           var_1A4 = (var_1C8 + CVar(Proc_183_15_EAD490(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2))))
  loc_1EDA8E2:           var_124 = " "
  loc_1EDA8E7:           var_1B4 = ("3" + var_124)
  loc_1EDA900:           var_250 = (var_124 + CVar(Proc_183_16_EAF86C(CStr(var_210), &HC, "2")))
  loc_1EDA909:           var_260 = (CVar(var_2DC.Item("Add2")) + " Dr")
  loc_1EDA92D:           var_3B0.Fields.Item("Name").Value = CVar(Proc_183_2_E5AE94(CVar(var_3B0.Fields.Item("Add2")), 1, CVar(Proc_183_15_EAD490(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2)))))
  loc_1EDA960:         Else
  loc_1EDA985:           var_3B0.Fields.Item("Sub").Value = "*"
  loc_1EDA997:           var_114 = "Name"
  loc_1EDA9AB:           var_168 = var_94.Fields.Item(var_114)
  loc_1EDA9DE:           Proc_183_4_EAC738(var_210, CVar(var_94.Fields.Item("Credit")))
  loc_1EDAA08:           var_1A4 = (Space(2) + CVar(Proc_183_15_EAD490(CStr(var_168.Value), &H14)))
  loc_1EDAA0C:           var_124 = " "
  loc_1EDAA11:           var_1B4 = ("3" + var_124)
  loc_1EDAA2A:           var_250 = ("2" + CVar(Proc_183_16_EAF86C(CStr(var_210), &HC)))
  loc_1EDAA33:           var_260 = (CVar(var_3B0.Fields.Item("Add2")) + " Cr")
  loc_1EDAA57:           var_3B0.Fields.Item("Name").Value = CVar(Proc_183_2_E5AE94(CVar(var_3B0.Fields.Item("Add2")), 1, CVar(Proc_183_15_EAD490(CStr(var_168.Value), &H14))))
  loc_1EDAA87:         End If
  loc_1EDAA92:         var_3B0.Update var_114, var_124
  loc_1EDAA99:         Set var_3B0 = Nothing 
  loc_1EDAAAB:         Set var_148 = var_168(CInt(7))
  loc_1EDAAB1:         Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1EDAAD0:         If (var_168.Text = "Yes") Then
  loc_1EDAAD6:           var_114 = var_D4
  loc_1EDAAE6:           var_124 = vbNullString
  loc_1EDAAF1:           If CBool(Trim(var_114) <> var_124) Then
  loc_1EDAAF4:             ' Referenced from:   1EDADF4
  loc_1EDAAFE:             If (Len(var_D4) > 0) Then
  loc_1EDAB04:               Set var_3B4 = var_8C 
  loc_1EDAB13:               var_3B4.AddNew var_114, var_124
  loc_1EDAB40:               var_188 = (Space(2) + Left(var_D4, &H23))
  loc_1EDAB64:               var_3B4.Fields.Item("Name").Value = CVar(Proc_183_15_EAD490(CStr(var_3B4.Fields.Item("Name").Value), &H14))
  loc_1EDABBC:               var_3B4.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1EDABF3:               var_3B4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDAC24:               var_3B4.Fields.Item("Sub").Value = "*"
  loc_1EDAC93:               var_3B4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDACE6:               If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1EDAD0E:                 var_3B4.Fields.Item("Val").Value = "1"
  loc_1EDAD1D:               Else
  loc_1EDAD23:                 var_114 = "Credit"
  loc_1EDAD5D:                 var_124 = 0
  loc_1EDAD99:                 var_3B4.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1EDADB6:               End If
  loc_1EDADC1:               var_3B4.Update var_114, var_124
  loc_1EDADC8:               Set var_3B4 = Nothing 
  loc_1EDADEA:               var_D4 = CStr(Mid(var_D4, &H24, 300))
  loc_1EDADF4:               GoTo loc_1EDAAF4
  loc_1EDADF7:             End If
  loc_1EDADF7:           End If
  loc_1EDADFA:           var_114 = var_DC
  loc_1EDAE0A:           var_124 = vbNullString
  loc_1EDAE15:           If CBool(Trim(var_114) <> var_124) Then
  loc_1EDAE18:             ' Referenced from:   1EDB118
  loc_1EDAE22:             If (Len(var_DC) > 0) Then
  loc_1EDAE28:               Set var_3B8 = var_8C 
  loc_1EDAE37:               var_3B8.AddNew var_114, var_124
  loc_1EDAE64:               var_188 = (Space(2) + Left(var_DC, &H23))
  loc_1EDAE88:               var_3B8.Fields.Item("Name").Value = (var_90.Fields.Item(var_DC).Value > "Name")
  loc_1EDAEE0:               var_3B8.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1EDAF17:               var_3B8.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDAF48:               var_3B8.Fields.Item("Sub").Value = "*"
  loc_1EDAFB7:               var_3B8.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDB00A:               If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1EDB032:                 var_3B8.Fields.Item("Val").Value = "1"
  loc_1EDB041:               Else
  loc_1EDB047:                 var_114 = "Credit"
  loc_1EDB081:                 var_124 = 0
  loc_1EDB0BD:                 var_3B8.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1EDB0DA:               End If
  loc_1EDB0E5:               var_3B8.Update var_114, var_124
  loc_1EDB0EC:               Set var_3B8 = Nothing 
  loc_1EDB10E:               var_DC = CStr(Mid(var_DC, &H24, 300))
  loc_1EDB118:               GoTo loc_1EDAE18
  loc_1EDB11B:             End If
  loc_1EDB11B:           End If
  loc_1EDB11B:         End If
  loc_1EDB11E:         var_94.MoveNext
  loc_1EDB123:         GoTo loc_1EDA45F
  loc_1EDB126:       End If
  loc_1EDB126:     End If
  loc_1EDB144:     If CBool(Trim(var_AC) <> vbNullString) Then
  loc_1EDB147:       ' Referenced from:   1EDB493
  loc_1EDB151:       If (Len(var_AC) > 0) Then
  loc_1EDB157:         Set var_3BC = var_8C 
  loc_1EDB15E:         var_3BC.MoveLast
  loc_1EDB166:         var_114 = "Name"
  loc_1EDB191:         var_124 = vbNullString
  loc_1EDB1A3:         If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1EDB1B1:           var_3BC.AddNew var_114, var_124
  loc_1EDB1B6:         End If
  loc_1EDB1DE:         var_188 = (Space(2) + Left(var_AC, &H30))
  loc_1EDB202:         var_3BC.Fields.Item("Name").Value = (var_90.Fields.Item(var_AC).Value > "Name")
  loc_1EDB25A:         var_3BC.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EDB291:         var_3BC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDB2C3:         var_3BC.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EDB332:         var_3BC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDB385:         If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1EDB3AD:           var_3BC.Fields.Item("Val").Value = "1"
  loc_1EDB3BC:         Else
  loc_1EDB3C2:           var_114 = "Credit"
  loc_1EDB3FC:           var_124 = 0
  loc_1EDB438:           var_3BC.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1EDB455:         End If
  loc_1EDB460:         var_3BC.Update var_114, var_124
  loc_1EDB467:         Set var_3BC = Nothing 
  loc_1EDB489:         var_AC = CStr(Mid(var_AC, &H31, 300))
  loc_1EDB493:         GoTo loc_1EDB147
  loc_1EDB496:       End If
  loc_1EDB496:     End If
  loc_1EDB4B4:     If CBool(Trim(var_B0) <> vbNullString) Then
  loc_1EDB4B7:       ' Referenced from:   1EDB803
  loc_1EDB4C1:       If (Len(var_B0) > 0) Then
  loc_1EDB4C7:         Set var_3C0 = var_8C 
  loc_1EDB4CE:         var_3C0.MoveLast
  loc_1EDB4D6:         var_114 = "Name"
  loc_1EDB501:         var_124 = vbNullString
  loc_1EDB513:         If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1EDB521:           var_3C0.AddNew var_114, var_124
  loc_1EDB526:         End If
  loc_1EDB54E:         var_188 = (Space(2) + Left(var_B0, &H30))
  loc_1EDB572:         var_3C0.Fields.Item("Name").Value = (var_90.Fields.Item(var_B0).Value > "Name")
  loc_1EDB5CA:         var_3C0.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EDB601:         var_3C0.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDB633:         var_3C0.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EDB6A2:         var_3C0.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDB6F5:         If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1EDB71D:           var_3C0.Fields.Item("Val").Value = "1"
  loc_1EDB72C:         Else
  loc_1EDB732:           var_114 = "Credit"
  loc_1EDB76C:           var_124 = 0
  loc_1EDB7A8:           var_3C0.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1EDB7C5:         End If
  loc_1EDB7D0:         var_3C0.Update var_114, var_124
  loc_1EDB7D7:         Set var_3C0 = Nothing 
  loc_1EDB7F9:         var_B0 = CStr(Mid(var_B0, &H31, 300))
  loc_1EDB803:         GoTo loc_1EDB4B7
  loc_1EDB806:       End If
  loc_1EDB806:     End If
  loc_1EDB824:     If CBool(Trim(var_B4) <> vbNullString) Then
  loc_1EDB827:       ' Referenced from:   1EDBB73
  loc_1EDB831:       If (Len(var_B4) > 0) Then
  loc_1EDB837:         Set var_3C4 = var_8C 
  loc_1EDB83E:         var_3C4.MoveLast
  loc_1EDB846:         var_114 = "Name"
  loc_1EDB871:         var_124 = vbNullString
  loc_1EDB883:         If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1EDB891:           var_3C4.AddNew var_114, var_124
  loc_1EDB896:         End If
  loc_1EDB8BE:         var_188 = (Space(2) + Left(var_B4, &H30))
  loc_1EDB8E2:         var_3C4.Fields.Item("Name").Value = (var_90.Fields.Item(var_B4).Value > "Name")
  loc_1EDB93A:         var_3C4.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EDB971:         var_3C4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDB9A3:         var_3C4.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EDBA12:         var_3C4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDBA65:         If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1EDBA8D:           var_3C4.Fields.Item("Val").Value = "1"
  loc_1EDBA9C:         Else
  loc_1EDBAA2:           var_114 = "Credit"
  loc_1EDBADC:           var_124 = 0
  loc_1EDBB18:           var_3C4.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1EDBB35:         End If
  loc_1EDBB40:         var_3C4.Update var_114, var_124
  loc_1EDBB47:         Set var_3C4 = Nothing 
  loc_1EDBB58:         var_114 = var_B4
  loc_1EDBB69:         var_B4 = CStr(Mid(var_114, &H31, 300))
  loc_1EDBB73:         GoTo loc_1EDB827
  loc_1EDBB76:       End If
  loc_1EDBB76:     End If
  loc_1EDBB79:     var_EC = CDbl(0)
  loc_1EDBB7C:   End If
  loc_1EDBB7F:   var_90.MoveNext
  loc_1EDBB84:   GoTo loc_1ED93D9
  loc_1EDBB87: End If
  loc_1EDBB8E: Loop Until (var_EC > CDbl(0)) 'do at: 1ECBE5D
  loc_1EDBB94: Set var_3C8 = var_8C 
  loc_1EDBBA3: var_3C8.AddNew var_114, var_124
  loc_1EDBBA8: var_124 = vbNullString
  loc_1EDBBB7: var_3C8.Collect = "V_Type"
  loc_1EDBBBC: var_124 = 0
  loc_1EDBBCB: var_3C8.Collect = "V_NO"
  loc_1EDBBD0: var_124 = vbNullString
  loc_1EDBBDF: var_3C8.Collect = "V_ADD"
  loc_1EDBBE4: var_124 = 0
  loc_1EDBBF3: var_3C8.Collect = "V_SNo"
  loc_1EDBC07: var_3C8.Collect = "Name"
  loc_1EDBC44: var_3C8.Collect = "V_DATE"
  loc_1EDBC59: var_124 = CVar(Abs(var_EC)) 'Double
  loc_1EDBC67: var_3C8.Collect = "ADJAMT"
  loc_1EDBC6F: var_124 = CVar(var_A4) 'String
  loc_1EDBC7C: var_3C8.Collect = "Name1"
  loc_1EDBC84: var_124 = CVar(var_A8) 'String
  loc_1EDBC91: var_3C8.Collect = "subcode"
  loc_1EDBCBE: var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Add1")), var_124, var_124, var_124, Format(CVar("Excess Debit"("Excess Debit")), "dd/MMM/yyyy"), 1, 1)) 'String
  loc_1EDBCF7: var_270 = Trim(CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Add2")), var_124, var_124, var_124)))
  loc_1EDBD24: var_1C8 = vbNullString
  loc_1EDBD78: var_2B4 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1EDBD94: var_30C = (var_270 = vbNullString) 'Variant
  loc_1EDBDB1: var_394 = (IIf((Trim(var_178) = vbNullString), var_1C8, CVar(var_88.Fields.Item("Add1"))) + Trim(IIf(var_30C, vbNullString, vbNullString)))
  loc_1EDBDCA: var_3C8.Collect = "Address1"
  loc_1EDBE06: var_114 = "CITY_NAME"
  loc_1EDBE2B: var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item(var_114)), Trim(var_394), var_EC)) 'String
  loc_1EDBE2F: var_124 = "CITY_NAME"
  loc_1EDBE38: var_3C8.Collect = var_124
  loc_1EDBE52: var_3C8.Update var_114, var_124
  loc_1EDBE59: Set var_3C8 = Nothing 
  loc_1EDBE5D: GoTo loc_1ECF322
  loc_1EDBE68: Loop Until (arg_10 <> "AcCheckList") 'do at: 1ECC819
  loc_1EDBEB9: var_1B8 = var_88.Fields.Item("GroupNature")
  loc_1EDBEEB: Loop Until CBool((var_88.Fields.Item("GroupNature").Value <> "E") And (var_1B8.Value <> "R")) 'do at: 1ECBFE4
  loc_1EDBF14: Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_178)
  loc_1EDBF1D: var_1B4 = CVar(1(1)) 'Address
  loc_1EDBF24: Proc_183_7_EB17D4(var_1C8)
  loc_1EDBF36: var_280 = 0
  loc_1EDBF4C: var_124 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1EDBF77: var_250 = "E" & var_178 & " AND V_DATE<" & var_1C8 & "  " & CVar(var_E4) 
  loc_1EDBF8E: unk_583395.Execute CStr(var_250 & vbNullString), var_270, -1
  loc_1EDBF96: var_194 = var_194.Fields
  loc_1EDBF9E: var_280 = var_1B8.Item(var_1B8)
  loc_1EDBFA6: var_2DC = var_2DC.Value
  loc_1EDBFAE: var_2A4 = (Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)) + Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1EDBFB3: var_EC = CSng(var_88.Fields.Item("Add2").Value)
  loc_1EDBFE1: GoTo loc_1ECC0FD
  loc_1EDC00A: Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1EDC012: var_144 = MemVar_1F950F4
  loc_1EDC01A: Proc_183_7_EB17D4(var_1B4, var_144)
  loc_1EDC023: var_230 = CVar(var_1B4(CVar(var_EC))) 'Address
  loc_1EDC02A: Proc_183_7_EB17D4(var_250)
  loc_1EDC032: var_31C = CVar(var_EC) 'Double
  loc_1EDC03C: var_2FC = 0
  loc_1EDC052: var_124 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1EDC0A4: unk_583395.Execute CStr("E" & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 & "  " & CVar(var_E4) & vbNullString), vbNullString, -1
  loc_1EDC0AC: var_194 = var_194.Fields
  loc_1EDC0B4: var_2FC = var_1B8.Item(var_1B8)
  loc_1EDC0BC: var_2DC = var_2DC.Value
  loc_1EDC0C4: var_32C = (var_30C + var_30C)
  loc_1EDC105: Loop Until (arg_10 = "LedInt") 'do at: 1ECC433
  loc_1EDC11C: Loop Until (var_90.RecordCount > 0) 'do at: 1ECC3D0
  loc_1EDC122: var_90.MoveFirst
  loc_1EDC171: var_160 = CStr("Party='" & var_88.Fields.Item("subcode").Value & "'")
  loc_1EDC178: var_90.Find var_160, 0, 1
  loc_1EDC1A1: Loop Until (var_90.EOF = 0) 'do at: 1ECC36A
  loc_1EDC1AB: Loop Until (CSng(vbNullString) = CDbl(0)) 'do at: 1ECC1B6
  loc_1EDC1B1: var_90.MoveNext
  loc_1EDC1C7: Loop Until (var_90.EOF = &HFF) 'do at: 1ECC230
  loc_1EDC1D7: var_EC = var_144(var_160).Text
  loc_1EDC219: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(var_160))), "dd/MMM/yyyy"))
  loc_1EDC22D: GoTo loc_1ECC355
  loc_1EDC298: Loop Until (var_90.Fields.Item("Party").Value = var_88.Fields.Item("subcode").Value) 'do at: 1ECC2F2
  loc_1EDC29E: var_114 = "V_DATE"
  loc_1EDC2EF: GoTo loc_1ECC355
  loc_1EDC2FF: 1 = CDate(Format(CVar(var_90.Fields.Item(var_114)), "dd/MMM/yyyy"))(var_160).Text
  loc_1EDC35C: Loop Until (var_EC = CDbl(0)) 'do at: 1ECC367
  loc_1EDC362: var_90.MovePrevious
  loc_1EDC367: GoTo loc_1ECC3CD
  loc_1EDC377: 1 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(var_160))), "dd/MMM/yyyy"))(var_160).Text
  loc_1EDC3CD: GoTo loc_1ECC433
  loc_1EDC3DD: 1 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(var_160))), "dd/MMM/yyyy"))(var_160).Text
  loc_1EDC404: var_124 = "dd/MMM/yyyy"
  loc_1EDC43A: Loop Until (var_EC <> CDbl(0)) 'do at: 1ECC819
  loc_1EDC440: Set var_3CC = var_8C 
  loc_1EDC44F: var_3CC.AddNew var_114, var_124
  loc_1EDC454: var_124 = vbNullString
  loc_1EDC463: var_3CC.Collect = "V_Type"
  loc_1EDC468: var_124 = 0
  loc_1EDC477: var_3CC.Collect = "V_NO"
  loc_1EDC47C: var_124 = vbNullString
  loc_1EDC48B: var_3CC.Collect = "V_ADD"
  loc_1EDC490: var_124 = 0
  loc_1EDC49F: var_3CC.Collect = "V_SNo"
  loc_1EDC4B3: var_3CC.Collect = "Name"
  loc_1EDC4DE: var_188 = Format(CVar("OPENING BALANCE"("OPENING BALANCE")), "dd/MMM/yyyy")
  loc_1EDC4F0: var_3CC.Collect = "V_DATE"
  loc_1EDC51C: var_188 = IIf((var_EC > CDbl(0)), CVar(Abs(var_EC)), 0)
  loc_1EDC52E: var_3CC.Collect = "cr"
  loc_1EDC559: var_188 = IIf((var_EC < CDbl(0)), CVar(Abs(var_EC)), 0)
  loc_1EDC56B: var_3CC.Collect = "ADJAMT"
  loc_1EDC57B: var_124 = "1"
  loc_1EDC58A: var_3CC.Collect = "Val"
  loc_1EDC592: var_124 = CVar(var_A4) 'String
  loc_1EDC59F: var_3CC.Collect = "Name1"
  loc_1EDC5CC: var_15A = IsNull(CVar(var_88.Fields.Item("Add1")))
  loc_1EDC5F7: var_162 = IsNull(CVar(var_88.Fields.Item("Add2")))
  loc_1EDC5FD: var_124 = "Add1"
  loc_1EDC61D: var_144 = " "
  loc_1EDC669: var_210 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1EDC695: var_270 = (IIf(var_15A, var_144, CVar(var_88.Fields.Item(var_124))) + Trim(IIf(var_162, " ", "E" & var_144 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<")))
  loc_1EDC69C: var_290 = Trim("E" & var_144 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<" & IIf(var_162, " ", "E" & var_144 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<") & "  ")
  loc_1EDC6AE: var_3CC.Collect = "Address1"
  loc_1EDC714: var_3CC.Collect = "CITY_NAME"
  loc_1EDC733: var_3CC.Collect = "subcode"
  loc_1EDC73C: Set var_194 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("CITY_NAME")), var_290, var_162, var_15A, CVar(var_A8), CVar(var_A8)))(CVar(var_A8))
  loc_1EDC786: var_3CC.Fields.Item("PDate").Value = Format(CVar(var_194), "dd/MMM/yyyy")
  loc_1EDC7A5: Loop Until (arg_10 = "LedInt") 'do at: 1ECC803
  loc_1EDC7B2: var_124 = "dd/MMM/yyyy"
  loc_1EDC7C0: var_114 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(var_160))), var_124))
  loc_1EDC7C8: var_178 = Format(var_114, var_124)
  loc_1EDC7F0: var_3CC.Fields.Item("NextDate").Value = var_178
  loc_1EDC80E: var_3CC.Update var_114, var_124
  loc_1EDC815: Set var_3CC = Nothing 
  loc_1EDC82D: Loop Until (var_90.RecordCount > 0) 'do at: 1ECF322
  loc_1EDC833: var_90.MoveFirst
  loc_1EDC882: var_160 = CStr("Party='" & var_88.Fields.Item("subcode").Value & "'")
  loc_1EDC889: var_90.Find var_160, 0, 1
  loc_1EDC8B2: Loop Until (var_90.EOF = 0) 'do at: 1ECF322
  loc_1EDC8B7: Loop Until &HFF 'do at: 1ECF322
  loc_1EDC938: Loop Until CBool((arg_10 = "LedInt") And (var_88.Fields.Item("subcode").Value = var_90.Fields.Item("Party").Value)) 'do at: 1ECCB01
  loc_1EDC94F: Loop Until (var_90.RecordCount > 0) 'do at: 1ECCB01
  loc_1EDC955: var_90.MoveNext
  loc_1EDC96B: Loop Until (var_90.EOF = &HFF) 'do at: 1ECC9D4
  loc_1EDC97B: 1 = var_144(var_160).Text
  loc_1EDC9BD: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(var_160))), "dd/MMM/yyyy"))
  loc_1EDC9D1: GoTo loc_1ECCAF9
  loc_1EDCA3C: Loop Until (var_90.Fields.Item("Party").Value = var_88.Fields.Item("subcode").Value) 'do at: 1ECCA96
  loc_1EDCA42: var_114 = "V_DATE"
  loc_1EDCA93: GoTo loc_1ECCAF9
  loc_1EDCAA3: 1 = CDate(Format(CVar(var_90.Fields.Item(var_114)), "dd/MMM/yyyy"))(var_160).Text
  loc_1EDCACA: var_124 = "dd/MMM/yyyy"
  loc_1EDCAE5: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(var_160))), var_124))
  loc_1EDCAFC: var_90.MovePrevious
  loc_1EDCB04: Set var_3D0 = var_8C 
  loc_1EDCB13: var_3D0.AddNew var_114, var_124
  loc_1EDCB40: var_178 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("V_ADD")), var_F4, 1, 1, 1, var_F4, 1)) 'String
  loc_1EDCB4D: var_3D0.Collect = "V_ADD"
  loc_1EDCB7B: var_158 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_1EDCB89: var_3D0.Collect = "V_NO"
  loc_1EDCB9D: var_B0 = vbNullString
  loc_1EDCBA3: var_B4 = vbNullString
  loc_1EDCBA9: var_B8 = vbNullString
  loc_1EDCBF6: Loop Until CBool(Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(var_90.Fields.Item("Chq_No")), CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(var_90.Fields.Item("Chq_No")), var_178, 1, 1)), 1, 1))) <> vbNullString) 'do at: 1ECCC51
  loc_1EDCC39: var_1B4 = (1 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:"), 1))))
  loc_1EDCC80: Loop Until Not(IsNull(CVar(var_90.Fields.Item("Chq_Date")))) 'do at: 1ECCCEE
  loc_1EDCCD6: var_AC = 1 & CStr(Format(CVar(var_90.Fields.Item("Chq_Date")), "dd/MM/yy"))
  loc_1EDCD97: var_230 = IIf((Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr")), 1, CStr(CVar(var_88.Fields.Item("Add2"))) & " Dt: ") <> vbNullString), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr")), CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr")), var_188))))), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("NARR"))))))
  loc_1EDCDA0: var_B0 = CStr(var_230)
  loc_1EDCE37: var_160 = Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr")))
  loc_1EDCE4F: var_B4 = CStr(IIf((var_160 <> vbNullString), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("NARR"))))), vbNullString))
  loc_1EDCF8A: var_32C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_1EDCF8F: var_B8 = CStr(vbNullString)
  loc_1EDD048: var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1EDD079: var_290 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1EDD07E: var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1EDD0D8: var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1EDD10A: var_210 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_1EDD10F: var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_1EDD15B: var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1EDD198: var_230 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_1EDD1DE: var_3D0.Fields.Item("DocNo").Value = CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD")))))
  loc_1EDD218: var_188 = Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")))))
  loc_1EDD22A: var_3D0.Collect = "Name"
  loc_1EDD276: var_188 = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDD288: var_3D0.Collect = "V_DATE"
  loc_1EDD2B8: var_158 = CVar(var_90.Fields.Item("Credit")) 'Address
  loc_1EDD2C6: var_3D0.Collect = "cr"
  loc_1EDD2F0: var_158 = CVar(var_90.Fields.Item("Debit")) 'Address
  loc_1EDD2FE: var_3D0.Collect = "ADJAMT"
  loc_1EDD328: var_158 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_1EDD336: var_3D0.Collect = "V_Type"
  loc_1EDD360: var_158 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_1EDD36E: var_3D0.Collect = "V_SNo"
  loc_1EDD3B5: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1ECD3CF
  loc_1EDD3B8: var_124 = "1"
  loc_1EDD3C7: var_3D0.Collect = "Val"
  loc_1EDD3CC: GoTo loc_1ECD577
  loc_1EDD435: var_3D0.Collect = "Val"
  loc_1EDD456: Loop Until (var_FC = "Yes") 'do at: 1ECD577
  loc_1EDD483: var_124 = 0
  loc_1EDD495: Loop Until (var_90.Fields.Item("Credit").Value > var_124) 'do at: 1ECD509
  loc_1EDD4C0: var_178 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2"), var_124, CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")))) 'String
  loc_1EDD4C6: var_188 = Trim(var_178)
  loc_1EDD4E3: var_1B4 = ("By " + Left(var_188, &H2F))
  loc_1EDD4F1: var_3D0.Collect = "Name"
  loc_1EDD506: GoTo loc_1ECD577
  loc_1EDD554: var_1B4 = ("To " + Left(Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), "2", CVar(var_90.Fields.Item("Name")), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), "2", CVar(var_90.Fields.Item("Name")), var_188)))))), &H2F))
  loc_1EDD562: var_3D0.Collect = "Name"
  loc_1EDD57A: var_124 = CVar(var_A4) 'String
  loc_1EDD587: var_3D0.Collect = "Name1"
  loc_1EDD59C: var_3D0.Collect = "subcode"
  loc_1EDD5E3: var_2DC = var_88.Fields
  loc_1EDD626: var_210 = CVar(var_88.Fields.Item("Add1")) 'Address
  loc_1EDD64C: var_230 = IIf((Trim(CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Add1")), CVar(var_A8), CVar(var_A8), "2"))) = vbNullString), vbNullString, var_210)
  loc_1EDD673: var_33C = var_88.Fields.Item("Add2")
  loc_1EDD683: var_2B4 = (", " + var_33C.Value)
  loc_1EDD6B4: var_384 = Trim(IIf((Trim(CVar(Proc_183_2_E5AE94(CVar(var_2DC.Item("Add2")), 1, 1))) = vbNullString), vbNullString, vbNullString))
  loc_1EDD6BC: var_394 = (var_230 + var_384)
  loc_1EDD6D5: var_3D0.Collect = "Address1"
  loc_1EDD736: var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("CITY_NAME")), Trim(var_394))) 'String
  loc_1EDD743: var_3D0.Collect = "CITY_NAME"
  loc_1EDD795: var_3D0.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EDD809: var_3D0.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDD828: Loop Until (arg_10 = "LedInt") 'do at: 1ECD886
  loc_1EDD835: var_124 = "dd/MMM/yyyy"
  loc_1EDD843: var_114 = var_F4
  loc_1EDD84B: var_178 = Format(var_114, var_124)
  loc_1EDD86B: var_168 = var_3D0.Fields.Item("NextDate")
  loc_1EDD873: var_168.Value = var_178
  loc_1EDD891: var_3D0.Update var_114, var_124
  loc_1EDD898: Set var_3D0 = Nothing 
  loc_1EDD8AA: Set var_148 = var_168(CInt(6))
  loc_1EDD8B0: Call 0.Method_Proc_203_75_1EE05180 (var_160, 1, 1, 1)
  loc_1EDD8B8: 1 = var_168.Text
  loc_1EDD91C: Loop Until CBool((var_160 = "Yes") And (Len(var_90.Fields.Item("Party1").Value) = 0)) 'do at: 1ECE80F
  loc_1EDD922: Set var_3D4 = var_8C 
  loc_1EDD929: var_3D4.MoveLast
  loc_1EDD953: var_3D4.Fields.Item("Name").Value = "As Per Detail"
  loc_1EDD9A2: var_3D4.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EDD9D9: var_3D4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDDA0B: var_3D4.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EDDA1A: var_114 = "V_DATE"
  loc_1EDDA3D: var_124 = "dd/MMM/yyyy"
  loc_1EDDA42: var_178 = var_124
  loc_1EDDA7A: var_3D4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item(var_114)), var_178)
  loc_1EDDA9C: var_3D4.Update var_114, var_124
  loc_1EDDAA3: Set var_3D4 = Nothing 
  loc_1EDDAB4: var_124 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.NAME,VIEWLEDGER.* FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE DOCID="
  loc_1EDDADF: Proc_183_9_EAB2F0(var_178, CVar(var_90.Fields.Item("DocID")), var_124, var_210, -1, var_2DC)
  loc_1EDDAE7: var_188 = 1 & var_178 
  loc_1EDDB2C: unk_583395.Execute CStr(var_188 & " AND V_SNo<>" & var_90.Fields.Item("V_SNo").Value), 1, var_178
  loc_1EDDB37: Set var_94 = var_2DC
  loc_1EDDB68: Loop Until Not(var_94.EOF) 'do at: 1ECE80F
  loc_1EDDB74: var_D8 = vbNullString
  loc_1EDDB7A: var_DC = vbNullString
  loc_1EDDBB6: Loop Until (Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), var_188) <> vbNullString) 'do at: 1ECDC11
  loc_1EDDBF9: var_1B4 = (Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))) + Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1EDDC40: Loop Until Not(IsNull(CVar(var_94.Fields.Item("Chq_Date")))) 'do at: 1ECDCAE
  loc_1EDDC73: var_124 = "dd/MM/yy"
  loc_1EDDC96: var_D4 = 1 & CStr(Format(CVar(var_94.Fields.Item("Chq_Date")), var_124))
  loc_1EDDCB1: var_114 = "NARR"
  loc_1EDDCE5: var_DC = CStr(Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item(var_114)), 1))))
  loc_1EDDCF7: Set var_3D8 = var_8C 
  loc_1EDDD06: var_3D8.AddNew var_114, var_124
  loc_1EDDD47: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1ECDD61
  loc_1EDDD4A: var_124 = "1"
  loc_1EDDD59: var_3D8.Collect = "Val"
  loc_1EDDD5E: GoTo loc_1ECDDE0
  loc_1EDDDB5: var_1C8 = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1EDDDC7: var_3D8.Collect = "Val"
  loc_1EDDE43: var_3D8.Fields.Item("PDate").Value = Format(CVar(var_94.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDDE80: var_3D8.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDDECF: var_3D8.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1EDDF1C: Loop Until (var_94.Fields.Item("Debit").Value > 0) 'do at: 1ECE049
  loc_1EDDF44: var_3D8.Fields.Item("Sub").Value = "*"
  loc_1EDDF96: var_1C8 = CVar(var_94.Fields.Item("Debit")) 'Address
  loc_1EDDF9D: Proc_183_4_EAC738(var_210, var_1C8, 1, 1)
  loc_1EDDFC7: var_1A4 = (var_1C8 + CVar(Proc_183_15_EAD490(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2))))
  loc_1EDDFCB: var_124 = " "
  loc_1EDDFD0: var_1B4 = ("3" + var_124)
  loc_1EDDFE9: var_250 = (var_124 + CVar(Proc_183_16_EAF86C(CStr(var_210), &HC, "2")))
  loc_1EDDFF2: var_260 = (CVar(var_2DC.Item("Add2")) + " Dr")
  loc_1EDE016: var_3D8.Fields.Item("Name").Value = CVar(Proc_183_2_E5AE94(CVar(var_3D8.Fields.Item("Add2")), 1, 1))
  loc_1EDE046: GoTo loc_1ECE170
  loc_1EDE06E: var_3D8.Fields.Item("Sub").Value = "*"
  loc_1EDE080: var_114 = "Name"
  loc_1EDE094: var_168 = var_94.Fields.Item(var_114)
  loc_1EDE0C7: Proc_183_4_EAC738(var_210, CVar(var_94.Fields.Item("Credit")))
  loc_1EDE0F1: var_1A4 = (Space(2) + CVar(Proc_183_15_EAD490(CStr(var_168.Value), &H14)))
  loc_1EDE0F5: var_124 = " "
  loc_1EDE0FA: var_1B4 = ("3" + var_124)
  loc_1EDE113: var_250 = ("2" + CVar(Proc_183_16_EAF86C(CStr(var_210), &HC)))
  loc_1EDE11C: var_260 = (CVar(var_3D8.Fields.Item("Add2")) + " Cr")
  loc_1EDE138: var_334 = var_3D8.Fields.Item("Name")
  loc_1EDE140: var_334.Value = CVar(Proc_183_2_E5AE94(CVar(var_3D8.Fields.Item("Add2")), 1, 1))
  loc_1EDE17B: var_3D8.Update var_114, var_124
  loc_1EDE182: Set var_3D8 = Nothing 
  loc_1EDE194: Set var_148 = var_168(CInt(7))
  loc_1EDE19A: Call 0.Method_Proc_203_75_1EE05180 (CStr(var_90.Fields.Item("V_SNo").Value) & " Dt: ")
  loc_1EDE1A2: var_160 = var_168.Text
  loc_1EDE1B9: Loop Until (var_160 = "Yes") 'do at: 1ECE804
  loc_1EDE1BF: var_114 = var_D4
  loc_1EDE1CF: var_124 = vbNullString
  loc_1EDE1DA: Loop Until CBool(Trim(var_114) <> var_124) 'do at: 1ECE4E0
  loc_1EDE1E7: Loop Until (Len(var_D4) > 0) 'do at: 1ECE4E0
  loc_1EDE1ED: Set var_3DC = var_8C 
  loc_1EDE1FC: var_3DC.AddNew var_114, var_124
  loc_1EDE229: var_188 = (Space(2) + Left(var_D4, &H23))
  loc_1EDE24D: var_3DC.Fields.Item("Name").Value = CVar(Proc_183_15_EAD490(CStr(var_3DC.Fields.Item("Name").Value), &H14))
  loc_1EDE2A5: var_3DC.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1EDE2DC: var_3DC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDE30D: var_3DC.Fields.Item("Sub").Value = "*"
  loc_1EDE37C: var_3DC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDE3CF: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1ECE406
  loc_1EDE3F7: var_3DC.Fields.Item("Val").Value = "1"
  loc_1EDE403: GoTo loc_1ECE49F
  loc_1EDE40C: var_114 = "Credit"
  loc_1EDE446: var_124 = 0
  loc_1EDE482: var_3DC.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1EDE4AA: var_3DC.Update var_114, var_124
  loc_1EDE4B1: Set var_3DC = Nothing 
  loc_1EDE4D3: var_D4 = CStr(Mid(var_D4, &H24, 300))
  loc_1EDE4DD: GoTo loc_1ECE1DD
  loc_1EDE4E3: var_114 = var_DC
  loc_1EDE4F3: var_124 = vbNullString
  loc_1EDE4FE: Loop Until CBool(Trim(var_114) <> var_124) 'do at: 1ECE804
  loc_1EDE50B: Loop Until (Len(var_DC) > 0) 'do at: 1ECE804
  loc_1EDE511: Set var_3E0 = var_8C 
  loc_1EDE520: var_3E0.AddNew var_114, var_124
  loc_1EDE54D: var_188 = (Space(2) + Left(var_DC, &H23))
  loc_1EDE571: var_3E0.Fields.Item("Name").Value = (var_90.Fields.Item(var_DC).Value > "Name")
  loc_1EDE5C9: var_3E0.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1EDE600: var_3E0.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDE631: var_3E0.Fields.Item("Sub").Value = "*"
  loc_1EDE6A0: var_3E0.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDE6F3: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1ECE72A
  loc_1EDE71B: var_3E0.Fields.Item("Val").Value = "1"
  loc_1EDE727: GoTo loc_1ECE7C3
  loc_1EDE730: var_114 = "Credit"
  loc_1EDE744: var_168 = var_90.Fields.Item(var_114)
  loc_1EDE76A: var_124 = 0
  loc_1EDE7A6: var_3E0.Fields.Item("Val").Value = IIf((var_168.Value > var_124), "3", "2")
  loc_1EDE7CE: var_3E0.Update var_114, var_124
  loc_1EDE7D5: Set var_3E0 = Nothing 
  loc_1EDE7F7: var_DC = CStr(Mid(var_DC, &H24, 300))
  loc_1EDE801: GoTo loc_1ECE501
  loc_1EDE807: var_94.MoveNext
  loc_1EDE80C: GoTo loc_1ECDB59
  loc_1EDE81D: Set var_148 = var_168(CInt(&HB))
  loc_1EDE823: Call 0.Method_Proc_203_75_1EE05180 (var_160, 1, 1)
  loc_1EDE82B: 1 = var_168.Text
  loc_1EDE842: Loop Until (var_160 = "Yes") 'do at: 1ECF295
  loc_1EDE863: Loop Until CBool(Trim(var_AC) <> vbNullString) 'do at: 1ECEBB5
  loc_1EDE870: Loop Until (Len(var_AC) > 0) 'do at: 1ECEBB5
  loc_1EDE876: Set var_3E4 = var_8C 
  loc_1EDE87D: var_3E4.MoveLast
  loc_1EDE885: var_114 = "Name"
  loc_1EDE8B0: var_124 = vbNullString
  loc_1EDE8C2: Loop Until CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) 'do at: 1ECE8D5
  loc_1EDE8D0: var_3E4.AddNew var_114, var_124
  loc_1EDE8FD: var_188 = (Space(2) + Left(var_AC, &H30))
  loc_1EDE921: var_3E4.Fields.Item("Name").Value = (var_3E4.Fields.Item("Name").Value > "Name")
  loc_1EDE979: var_3E4.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EDE9B0: var_3E4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDE9E2: var_3E4.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EDEA51: var_3E4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDEAA4: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1ECEADB
  loc_1EDEACC: var_3E4.Fields.Item("Val").Value = "1"
  loc_1EDEAD8: GoTo loc_1ECEB74
  loc_1EDEAE1: var_114 = "Credit"
  loc_1EDEB1B: var_124 = 0
  loc_1EDEB57: var_3E4.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1EDEB7F: var_3E4.Update var_114, var_124
  loc_1EDEB86: Set var_3E4 = Nothing 
  loc_1EDEBA8: var_AC = CStr(Mid(var_AC, &H31, 300))
  loc_1EDEBB2: GoTo loc_1ECE866
  loc_1EDEBD3: Loop Until CBool(Trim(var_B0) <> vbNullString) 'do at: 1ECEF25
  loc_1EDEBE0: Loop Until (Len(var_B0) > 0) 'do at: 1ECEF25
  loc_1EDEBE6: Set var_3E8 = var_8C 
  loc_1EDEBED: var_3E8.MoveLast
  loc_1EDEBF5: var_114 = "Name"
  loc_1EDEC20: var_124 = vbNullString
  loc_1EDEC32: Loop Until CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) 'do at: 1ECEC45
  loc_1EDEC40: var_3E8.AddNew var_114, var_124
  loc_1EDEC6D: var_188 = (Space(2) + Left(var_B0, &H30))
  loc_1EDEC91: var_3E8.Fields.Item("Name").Value = (var_90.Fields.Item(var_B0).Value > "Name")
  loc_1EDECE9: var_3E8.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EDED20: var_3E8.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDED52: var_3E8.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EDEDC1: var_3E8.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDEE14: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1ECEE4B
  loc_1EDEE3C: var_3E8.Fields.Item("Val").Value = "1"
  loc_1EDEE48: GoTo loc_1ECEEE4
  loc_1EDEE51: var_114 = "Credit"
  loc_1EDEE8B: var_124 = 0
  loc_1EDEEC7: var_3E8.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1EDEEEF: var_3E8.Update var_114, var_124
  loc_1EDEEF6: Set var_3E8 = Nothing 
  loc_1EDEF18: var_B0 = CStr(Mid(var_B0, &H31, 300))
  loc_1EDEF22: GoTo loc_1ECEBD6
  loc_1EDEF43: Loop Until CBool(Trim(var_B4) <> vbNullString) 'do at: 1ECF295
  loc_1EDEF50: Loop Until (Len(var_B4) > 0) 'do at: 1ECF295
  loc_1EDEF56: Set var_3EC = var_8C 
  loc_1EDEF5D: var_3EC.MoveLast
  loc_1EDEF65: var_114 = "Name"
  loc_1EDEF90: var_124 = vbNullString
  loc_1EDEFA2: Loop Until CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) 'do at: 1ECEFB5
  loc_1EDEFB0: var_3EC.AddNew var_114, var_124
  loc_1EDEFDD: var_188 = (Space(2) + Left(var_B4, &H30))
  loc_1EDF001: var_3EC.Fields.Item("Name").Value = (var_90.Fields.Item(var_B4).Value > "Name")
  loc_1EDF059: var_3EC.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EDF090: var_3EC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDF0C2: var_3EC.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EDF131: var_3EC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDF184: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1ECF1BB
  loc_1EDF1AC: var_3EC.Fields.Item("Val").Value = "1"
  loc_1EDF1B8: GoTo loc_1ECF254
  loc_1EDF1C1: var_114 = "Credit"
  loc_1EDF1F2: var_1A4 = "3"
  loc_1EDF1FB: var_124 = 0
  loc_1EDF205: var_188 = (var_90.Fields.Item(var_114).Value > var_124) 'Variant
  loc_1EDF20F: var_1C8 = IIf(var_188, var_1A4, "2")
  loc_1EDF237: var_3EC.Fields.Item("Val").Value = var_1C8
  loc_1EDF25F: var_3EC.Update var_114, var_124
  loc_1EDF266: Set var_3EC = Nothing 
  loc_1EDF288: var_B4 = CStr(Mid(var_B4, &H31, 300))
  loc_1EDF292: GoTo loc_1ECEF46
  loc_1EDF298: var_90.MoveNext
  loc_1EDF2AB: Loop Until var_90.EOF 'do at: 1ECF2B1
  loc_1EDF2AE: GoTo loc_1ECF322
  loc_1EDF2CB: var_168 = var_90.Fields.Item("Party")
  loc_1EDF2F5: var_1B8 = var_88.Fields.Item("subcode")
  loc_1EDF319: Loop Until CBool(var_168.Value <> var_1B8.Value) 'do at: 1ECF31F
  loc_1EDF31C: GoTo loc_1ECF322
  loc_1EDF31F: GoTo loc_1ECC8B5
  loc_1EDF325: var_88.MoveNext
  loc_1EDF32A: GoTo loc_1ED4F8E
  loc_1EDF339: 1(0).Visible = True
  loc_1EDF347: var_190 = var_8C.RecordCount
  loc_1EDF355: Loop Until (var_190 <= 0) 'do at: 1ECF392
  loc_1EDF35E: Call 0.Method_arg_50 (var_160, 1, 1)
  loc_1EDF36C: var_178 = CVar(var_160) 'String
  loc_1EDF37F: MsgBox("** No Records Found to Print **", &H40, var_178, var_188, var_1A4)
  loc_1EDF38F: GoTo loc_1ED0484
  loc_1EDF3A8: Set var_148 = var_8C 
  loc_1EDF3B4: var_15A = CreateFieldDefFile(var_148, MemVar_1F953B4 & "\FaLEDGER.ttx", &HFF)
  loc_1EDF3C4: var_114 = CVar(var_15A) 'Integer
  loc_1EDF3C7: var_C8 = var_114 'Variant
  loc_1EDF3ED: Loop Until (((arg_10 = "LedDeb") Or (arg_10 = "MemLed")) And (arg_C = 1)) 'do at: 1ECF6A4
  loc_1EDF407: Call 0.Method_arg_1C (MemVar_1F953B4 & "\FaTAGADALET.RPT", var_114, var_148, var_15A)
  loc_1EDF412: MemVar_1F951E8 = var_148
  loc_1EDF437: Set var_148 = var_168(0)
  loc_1EDF43D: Call 0.Method_Proc_203_75_1EE05180 ("UPDATE FaEnviro SET TagadaHeader1=", var_55C, -1, var_560)
  loc_1EDF44C: Proc_183_9_EAB2F0(var_178, CVar(var_168), 1)
  loc_1EDF454: var_188 = 1 & var_178 
  loc_1EDF45D: var_1A4 = var_188 & ",TagadaHeader2=" 
  loc_1EDF46A: Set var_194 = var_1B8(1)
  loc_1EDF470: Call 0.Method_Proc_203_75_1EE05180 (var_1A4)
  loc_1EDF47F: Proc_183_9_EAB2F0(var_1C8, CVar(var_1B8))
  loc_1EDF49D: Set var_2DC = var_334(2)
  loc_1EDF4A3: Call 0.Method_Proc_203_75_1EE05180 (1 & var_1C8 & ",TagadaHeader3=")
  loc_1EDF4B2: Proc_183_9_EAB2F0(CVar(Proc_183_2_E5AE94(CVar(var_2DC.Item("Add2")), 1, 1)))
  loc_1EDF4D0: Set var_338 = var_33C(3)
  loc_1EDF4D6: Call 0.Method_Proc_203_75_1EE05180 (CVar(var_334) & CVar(Proc_183_2_E5AE94(CVar(var_2DC.Item("Add2")), 1, 1)) & ",TagadaHeader4=")
  loc_1EDF4E5: Proc_183_9_EAB2F0(vbNullString)
  loc_1EDF503: Set var_3F0 = var_3F4(4)
  loc_1EDF509: Call 0.Method_Proc_203_75_1EE05180 (CVar(var_33C) & vbNullString & ",TagadaHeader5=")
  loc_1EDF518: Proc_183_9_EAB2F0(var_384)
  loc_1EDF536: Set var_3F8 = var_3FC(0)
  loc_1EDF53C: Call 0.Method_Proc_203_75_1EE05180 (CVar(var_3F4) & var_384 & ",TagadaFooter1=")
  loc_1EDF54B: Proc_183_9_EAB2F0(var_41C)
  loc_1EDF569: Set var_440 = var_444(1)
  loc_1EDF56F: Call 0.Method_Proc_203_75_1EE05180 (CVar(var_3FC) & var_41C & ",TagadaFooter2=")
  loc_1EDF57E: Proc_183_9_EAB2F0(var_464)
  loc_1EDF59C: Set var_488 = var_48C(2)
  loc_1EDF5A2: Call 0.Method_Proc_203_75_1EE05180 (CVar(var_444) & var_464 & ",TagadaFooter3=")
  loc_1EDF5B1: Proc_183_9_EAB2F0(var_4AC)
  loc_1EDF5CF: Set var_4D0 = var_4D4(3)
  loc_1EDF5D5: Call 0.Method_Proc_203_75_1EE05180 (CVar(var_48C) & var_4AC & ",TagadaFooter4=")
  loc_1EDF5E4: Proc_183_9_EAB2F0(var_4F4)
  loc_1EDF602: Set var_518 = var_51C(4)
  loc_1EDF608: Call 0.Method_Proc_203_75_1EE05180 (CVar(var_4D4) & var_4F4 & ",TagadaFooter5=")
  loc_1EDF617: Proc_183_9_EAB2F0(var_53C)
  loc_1EDF623: var_160 = CStr(CVar(var_51C) & var_53C)
  loc_1EDF62D: unk_583395.Execute var_160, , 
  loc_1EDF6A1: GoTo loc_1ECF9B2
  loc_1EDF6AA: Call 0.Method_arg_50 (var_160)
  loc_1EDF6E1: Loop Until (MsgBox("Do You Want Each A/C on Separate Page", &H124, CVar(var_160), var_188, var_1A4) = 6) 'do at: 1ECF6ED
  loc_1EDF6E7: var_D0 = "Y"
  loc_1EDF6EA: GoTo loc_1ECF6F3
  loc_1EDF6F0: var_D0 = "N"
  loc_1EDF6FF: Loop Until (arg_C = 1) 'do at: 1ECF841
  loc_1EDF705: var_568 = arg_10
  loc_1EDF710: Loop Until Not (var_568 = "Led") 'do at: 1ECF71E
  loc_1EDF71B: Loop Until (var_568 = "AcCheckList") 'do at: 1ECF7C5
  loc_1EDF734: var_114 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_1EDF73F: MsgBox(var_114, &H40, "Paper Setting", var_188, var_1A4)
  loc_1EDF75D: Set var_148 = var_168(CInt(&HD))
  loc_1EDF763: Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1EDF76B: var_562 = var_168.Text
  loc_1EDF783: Set var_1B8 = var_148
  loc_1EDF78C: Set var_194 = Me 
  loc_1EDF79C: Call 0.Method_arg_154 (var_194, var_1B8, var_D0)
  loc_1EDF7BE: GoTo loc_1ED0484
  loc_1EDF7C1: Exit Sub
  loc_1EDF7C2: GoTo loc_1ECF83E
  loc_1EDF7CD: Loop Until (var_568 = "LedInt") 'do at: 1ECF7F1
  loc_1EDF7DC: Call 0.Method_arg_CC (var_148, var_15A)
  loc_1EDF7E7: MemVar_1F951E8 = var_148
  loc_1EDF7EE: GoTo loc_1ECF83E
  loc_1EDF7F9: Loop Until Not (var_568 = "LedDeb") 'do at: 1ECF812
  loc_1EDF804: Loop Until Not (var_568 = "MemLed") 'do at: 1ECF812
  loc_1EDF80F: Loop Until (var_568 = "LedCred") 'do at: 1ECF83E
  loc_1EDF829: Call 0.Method_arg_1C (MemVar_1F953B4 & "\FaTAGADADR.RPT", var_114, var_148)
  loc_1EDF834: MemVar_1F951E8 = var_148
  loc_1EDF83E: GoTo loc_1ECF9B2
  loc_1EDF844: var_56C = arg_10
  loc_1EDF84F: Loop Until Not (var_56C = "Led") 'do at: 1ECF85D
  loc_1EDF85A: Loop Until (var_56C = "AcCheckList") 'do at: 1ECF8C1
  loc_1EDF873: Set var_148 = var_1B8 
  loc_1EDF87F: var_15A = CreateFieldDefFile(var_148, MemVar_1F953B4 & "\FaLedger.ttx", &HFF)
  loc_1EDF892: var_C8 = CVar(var_15A) 'Variant
  loc_1EDF8AC: Call 0.Method_arg_C8 (var_148, var_15A)
  loc_1EDF8B7: MemVar_1F951E8 = var_148
  loc_1EDF8BE: GoTo loc_1ECF9B2
  loc_1EDF8C9: Loop Until (var_56C = "LedInt") 'do at: 1ECF930
  loc_1EDF8E2: Set var_148 = var_148 
  loc_1EDF8EE: var_15A = CreateFieldDefFile(var_148, MemVar_1F953B4 & "\FaINTEREST.ttx", &HFF)
  loc_1EDF901: var_C8 = CVar(var_15A) 'Variant
  loc_1EDF91B: Call 0.Method_arg_CC (var_148, var_15A)
  loc_1EDF926: MemVar_1F951E8 = var_148
  loc_1EDF92D: GoTo loc_1ECF9B2
  loc_1EDF938: Loop Until Not (var_56C = "LedDeb") 'do at: 1ECF951
  loc_1EDF943: Loop Until Not (var_56C = "MemLed") 'do at: 1ECF951
  loc_1EDF94E: Loop Until (var_56C = "LedCred") 'do at: 1ECF9B2
  loc_1EDF95A: var_160 = MemVar_1F953B4 & "\FaTAGADADR.ttx"
  loc_1EDF960: var_18C = var_160
  loc_1EDF967: Set var_148 = var_148 
  loc_1EDF973: var_15A = CreateFieldDefFile(var_148, var_18C, &HFF)
  loc_1EDF97D: Set var_8C = var_148
  loc_1EDF986: var_C8 = CVar(var_15A) 'Variant
  loc_1EDF9A0: Call 0.Method_arg_120 (var_148, var_15A)
  loc_1EDF9AB: MemVar_1F951E8 = var_148
  loc_1EDF9C3: Call 0.Method_arg_90 (var_148, var_190, var_F6)
  loc_1EDF9CB: Call 0.Method_arg_24 (1, var_160)
  loc_1EDF9D7: For var_570 =  To CInt(var_190): var_15A = var_570 'Integer
  loc_1EDF9F0:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1EDF9F8:   Call 0.Method_arg_20 (var_168)
  loc_1EDFA00:   Call 0.Method_arg_30 (var_160)
  loc_1EDFA08:   var_574 = var_160
  loc_1EDFA1A:   Loop Until (var_574 = "TITLE") 'do at: 1ECFB44
  loc_1EDFA28:   Set var_148 = var_168(CInt(&HC))
  loc_1EDFA2E:   Call 0.Method_Proc_203_75_1EE05180 ()
  loc_1EDFA57:   Loop Until CBool(Trim(CVar(var_168)) <> vbNullString) 'do at: 1ECFAF0
  loc_1EDFA63:   Call 0.Method_arg_50 (var_160)
  loc_1EDFA86:   Call 0.Method_Proc_203_75_1EE05180 (var_18C, var_160 & " (")
  loc_1EDFA8E:   "'" = Me.TextBox.Text
  loc_1EDFABC:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1EDFAC4:   Call 0.Method_arg_20 (var_1B8)
  loc_1EDFACC:   Call 0.Method_arg_38 (var_18C & ")" & "'")
  loc_1EDFAED:   GoTo loc_1ECFB41
  loc_1EDFAF9:   Call 0.Method_arg_50 (var_160)
  loc_1EDFB09:   var_1E4 = "'" & var_160 & "'"
  loc_1EDFB1C:   Call 0.Method_arg_90 (var_168(CInt(&HC)), CLng(var_F6))
  loc_1EDFB24:   Call 0.Method_arg_20 (var_168)
  loc_1EDFB2C:   Call 0.Method_arg_38 (var_1E4)
  loc_1EDFB41:   GoTo loc_1ED03E8
  loc_1EDFB4C:   Loop Until (var_574 = "DT") 'do at: 1ECFBD4
  loc_1EDFB5F:    = "'From : "(var_160).Text
  loc_1EDFB79:   Set var_168 = var_160 & " To : "(var_1E4)
  loc_1EDFB7F:    = var_168.Text
  loc_1EDFBA2:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1EDFBAA:   Call 0.Method_arg_20 (var_1B8)
  loc_1EDFBB2:   Call 0.Method_arg_38 (var_1E4 & "'")
  loc_1EDFBD1:   GoTo loc_1ED03E8
  loc_1EDFBDC:   Loop Until (var_574 = "INT_RATE") 'do at: 1ECFC64
  loc_1EDFBE7:   Loop Until (arg_10 = "LedInt") 'do at: 1ECFC61
  loc_1EDFBFB:   Set var_148 = var_168(CInt(5))
  loc_1EDFC01:   Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1EDFC09:   vbNullString = var_168.Text
  loc_1EDFC36:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1EDFC3E:   Call 0.Method_arg_20 (var_1B8)
  loc_1EDFC46:   Call 0.Method_arg_38 (CStr(Val(var_160)) & vbNullString)
  loc_1EDFC61:   GoTo loc_1ED03E8
  loc_1EDFC6C:   Loop Until (var_574 = "END_DATE") 'do at: 1ECFD10
  loc_1EDFC77:   Loop Until (arg_10 = "LedInt") 'do at: 1ECFD0D
  loc_1EDFC81:   Set var_148 = (var_160)
  loc_1EDFC87:    = var_148.Text
  loc_1EDFCA0:   var_178 = "YYYY,MM,DD"
  loc_1EDFCDB:   Call 0.Method_arg_90 (var_168, CLng(var_F6), var_194)
  loc_1EDFCE3:   Call 0.Method_arg_20 (CStr(1 & Format(CDate(CDate(var_160)), var_178) & "#)"), 1)
  loc_1EDFCEB:   Call 0.Method_arg_38 ("DATE(#")
  loc_1EDFD0D:   GoTo loc_1ED03E8
  loc_1EDFD18:   Loop Until (var_574 = "SEPRATEPAGE") 'do at: 1ECFD62
  loc_1EDFD22:   var_160 = "'" & var_D0
  loc_1EDFD3C:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1EDFD44:   Call 0.Method_arg_20 (var_168)
  loc_1EDFD4C:   Call 0.Method_arg_38 (var_160 & "'")
  loc_1EDFD5F:   GoTo loc_1ED03E8
  loc_1EDFD6A:   Loop Until (var_574 = "PrintVrNo") 'do at: 1ECFDDB
  loc_1EDFD7E:   Set var_148 = var_168(CInt(&HD))
  loc_1EDFD84:   Call 0.Method_Proc_203_75_1EE05180 (var_160)
  loc_1EDFD8C:   "'" = var_168.Text
  loc_1EDFDAF:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1EDFDB7:   Call 0.Method_arg_20 (var_1B8)
  loc_1EDFDBF:   Call 0.Method_arg_38 (var_160 & "'")
  loc_1EDFDD8:   GoTo loc_1ED03E8
  loc_1EDFDE3:   Loop Until (var_574 = "DRCRTYPE") 'do at: 1ECFE71
  loc_1EDFDE9:   var_578 = arg_10
  loc_1EDFDF4:   Loop Until Not (var_578 = "LedDeb") 'do at: 1ECFE02
  loc_1EDFDFF:   Loop Until (var_578 = "MemLed") 'do at: 1ECFE34
  loc_1EDFE15:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1EDFE1D:   Call 0.Method_arg_20 (var_168)
  loc_1EDFE25:   Call 0.Method_arg_38 ("'DR'")
  loc_1EDFE31:   GoTo loc_1ECFE6E
  loc_1EDFE3C:   Loop Until (var_578 = "LedCred") 'do at: 1ECFE6E
  loc_1EDFE52:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1EDFE5A:   Call 0.Method_arg_20 (var_168)
  loc_1EDFE62:   Call 0.Method_arg_38 ("'CR'")
  loc_1EDFE6E:   GoTo loc_1ED03E8
  loc_1EDFE79:   Loop Until (var_574 = "TagadaHeader1") 'do at: 1ECFEE1
  loc_1EDFE85:   Set var_148 = var_168(0)
  loc_1EDFE8B:   Call 0.Method_Proc_203_75_1EE05180 ()
  loc_1EDFE9A:   Proc_183_9_EAB2F0(var_178)
  loc_1EDFEB6:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EDFEBE:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EDFEC6:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EDFEDE:   GoTo loc_1ED03E8
  loc_1EDFEE9:   Loop Until (var_574 = "TagadaHeader2") 'do at: 1ECFF51
  loc_1EDFEF5:   Set var_148 = var_168(1)
  loc_1EDFEFB:   Call 0.Method_Proc_203_75_1EE05180 ()
  loc_1EDFF0A:   Proc_183_9_EAB2F0(var_178)
  loc_1EDFF26:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EDFF2E:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EDFF36:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EDFF4E:   GoTo loc_1ED03E8
  loc_1EDFF59:   Loop Until (var_574 = "TagadaHeader3") 'do at: 1ECFFC1
  loc_1EDFF65:   Set var_148 = var_168(2)
  loc_1EDFF6B:   Call 0.Method_Proc_203_75_1EE05180 ()
  loc_1EDFF7A:   Proc_183_9_EAB2F0(var_178)
  loc_1EDFF96:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EDFF9E:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EDFFA6:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EDFFBE:   GoTo loc_1ED03E8
  loc_1EDFFC9:   Loop Until (var_574 = "TagadaHeader4") 'do at: 1ED0031
  loc_1EDFFD5:   Set var_148 = var_168(3)
  loc_1EDFFDB:   Call 0.Method_Proc_203_75_1EE05180 ()
  loc_1EDFFEA:   Proc_183_9_EAB2F0(var_178)
  loc_1EE0006:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EE000E:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EE0016:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EE002E:   GoTo loc_1ED03E8
  loc_1EE0039:   Loop Until (var_574 = "TagadaHeader5") 'do at: 1ED00A1
  loc_1EE0045:   Set var_148 = var_168(4)
  loc_1EE004B:   Call 0.Method_Proc_203_75_1EE05180 ()
  loc_1EE005A:   Proc_183_9_EAB2F0(var_178)
  loc_1EE0076:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EE007E:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EE0086:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EE009E:   GoTo loc_1ED03E8
  loc_1EE00A9:   Loop Until (var_574 = "TagadaFooter1") 'do at: 1ED0111
  loc_1EE00B5:   Set var_148 = var_168(0)
  loc_1EE00BB:   Call 0.Method_Proc_203_75_1EE05180 ()
  loc_1EE00CA:   Proc_183_9_EAB2F0(var_178)
  loc_1EE00E6:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EE00EE:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EE00F6:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EE010E:   GoTo loc_1ED03E8
  loc_1EE0119:   Loop Until (var_574 = "TagadaFooter2") 'do at: 1ED0181
  loc_1EE0125:   Set var_148 = var_168(1)
  loc_1EE012B:   Call 0.Method_Proc_203_75_1EE05180 ()
  loc_1EE013A:   Proc_183_9_EAB2F0(var_178)
  loc_1EE0156:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EE015E:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EE0166:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EE017E:   GoTo loc_1ED03E8
  loc_1EE0189:   Loop Until (var_574 = "TagadaFooter3") 'do at: 1ED01F1
  loc_1EE0195:   Set var_148 = var_168(2)
  loc_1EE019B:   Call 0.Method_Proc_203_75_1EE05180 ()
  loc_1EE01AA:   Proc_183_9_EAB2F0(var_178)
  loc_1EE01C6:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EE01CE:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EE01D6:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EE01EE:   GoTo loc_1ED03E8
  loc_1EE01F9:   Loop Until (var_574 = "TagadaFooter4") 'do at: 1ED0261
  loc_1EE0205:   Set var_148 = var_168(3)
  loc_1EE020B:   Call 0.Method_Proc_203_75_1EE05180 ()
  loc_1EE021A:   Proc_183_9_EAB2F0(var_178)
  loc_1EE0236:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EE023E:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EE0246:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EE025E:   GoTo loc_1ED03E8
  loc_1EE0269:   Loop Until (var_574 = "TagadaFooter5") 'do at: 1ED02D1
  loc_1EE0275:   Set var_148 = var_168(4)
  loc_1EE027B:   Call 0.Method_Proc_203_75_1EE05180 ()
  loc_1EE028A:   Proc_183_9_EAB2F0(var_178)
  loc_1EE02A6:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EE02AE:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EE02B6:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EE02CE:   GoTo loc_1ED03E8
  loc_1EE02D9:   Loop Until (var_574 = "PageNo") 'do at: 1ED035E
  loc_1EE032F:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1EE0337:   Call 0.Method_arg_20 (var_1B8)
  loc_1EE033F:   Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_1EE035B:   GoTo loc_1ED03E8
  loc_1EE0366:   Loop Until (var_574 = "Date1") 'do at: 1ED03E8
  loc_1EE0369:   var_124 = "'"
  loc_1EE0383:   var_148 = Me.Fields
  loc_1EE039F:   var_134 = "'"
  loc_1EE03A8:   var_160 = CStr(var_124 & var_148.Item("daterfill").Value & var_134)
  loc_1EE03BC:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1EE03C4:   Call 0.Method_arg_20 (var_1B8)
  loc_1EE03CC:   Call 0.Method_arg_38 (var_160)
  loc_1EE03EB: Next var_570 'Integer
  loc_1EE0409: Call 0.Method_arg_64 (var_148, CVar(var_8C))
  loc_1EE0411: Call 0.Method_arg_2C (var_124)
  loc_1EE041F: Call 0.Method_arg_150 (var_134)
  loc_1EE0432: Loop Until (arg_10 = "Led") 'do at: 1ED045D
  loc_1EE043B: Call 0.Method_arg_50 (var_160)
  loc_1EE0452: Proc_183_10_1499E94(MemVar_1F951E8, arg_C)
  loc_1EE045A: GoTo loc_1ED0484
  loc_1EE0463: Call 0.Method_arg_50 (var_160, var_160)
  loc_1EE047C: Proc_183_10_1499E94(MemVar_1F951E8, 0, var_160)
  loc_1EE0489: Set var_88 = Nothing
  loc_1EE0491: Set var_90 = Nothing
  loc_1EE0499: Set var_8C = Nothing
  loc_1EE04A1: Set var_94 = Nothing
  loc_1EE04A9: Set var_100 = Nothing
  loc_1EE04B1: Set var_104 = Nothing
  loc_1EE04C1: &HFF(vbNullString).Text = &HFF
  loc_1EE04D6: (vbNullString).Text = 
  loc_1EE04E3: MemVar_1F951E8 = Nothing
  loc_1EE04EC: global_130 = 0
  loc_1EE04EF: Exit Sub
  loc_1EE04F6: Call 0.Method_arg_50 (var_160)
  loc_1EE050B: Proc_183_57_104B0BC(var_160, "Led")
  loc_1EE0517: Exit Sub
End Sub

Public Sub Proc_203_76_177AA1C
  'Data Table: 583348
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_16C As String
  Dim var_130 As Variant
  Dim var_1F8 As Variant
  Dim var_228 As Variant
  Dim var_150 As Variant
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_258 As Variant
  Dim var_268 As Variant
  Dim unk_583395 As Connection15
  Dim var_218 As Variant
  Dim var_2C8 As Variant
  Dim var_2E8 As Variant
  Dim var_A0 As Recordset15
  Dim var_154 As Fields15
  Dim var_166 As Integer
  Dim var_30C As Fields15
  Dim var_194 As Variant
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_108 As Double
  Dim var_110 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_A8 As Recordset15
  Dim var_184 As Variant
  Dim var_318 As Variant
  Dim var_238 As Variant
  Dim var_320 As Recordset15
  Dim var_16E As Integer
  Dim var_A4 As Recordset15
  Dim var_334 As Recordset15
  Dim var_FC As Double
  Dim var_8C As Recordset15
  loc_1778C20: On Error Goto loc_177A9E9
  loc_1778C38: Set var_154 = CVar(CLng(0))(0)
  loc_1778C5C: Call Proc_203_59_F525A0(CInt(0), CStr(var_164))
  loc_1778C70: If (var_16E = 0) Then
  loc_1778C78:   global_130 = 0
  loc_1778C7B:   Exit Sub
  loc_1778C7C: End If
  loc_1778C87: Set var_154 = var_174(CInt(&HC))
  loc_1778C8D: Call 0.Method_Proc_203_76_177AA1C0 (global_130, var_16E)
  loc_1778C9C: var_184 = Trim(CVar(var_174))
  loc_1778CB6: If CBool(var_184 <> vbNullString) Then
  loc_1778CCA:   Set var_154 = var_174(CInt(&HC))
  loc_1778CD0:   Call 0.Method_Proc_203_76_177AA1C0 (var_16C, " And VIEWLEDGER.Site_Code='")
  loc_1778CD8:   DGSite.DispID_41 = var_174.Tag
  loc_1778CE8:   var_100 = var_16C & "'"
  loc_1778CFC: Else
  loc_1778D03:   var_16C = " And VIEWLEDGER.Site_Code='" & MemVar_1F95078
  loc_1778D0A:   var_100 = var_16C & "'"
  loc_1778D10: End If
  loc_1778D1C: Set var_154 = var_174(1)
  loc_1778D22: Call 0.Method_Proc_203_76_177AA1C0 (var_166)
  loc_1778D2A:  = var_174.Value
  loc_1778D40: If (CLng(var_166) = 0) Then
  loc_1778D5E:   Call Proc_203_56_127C1B4(global_96, 1, CByte(1))
  loc_1778D69:   global_84 = var_16C
  loc_1778D79:   If (global_130 = 0) Then
  loc_1778D7C:     Exit Sub
  loc_1778D7D:   End If
  loc_1778D7D: End If
  loc_1778D92: Set var_154 = CVar(CLng(3))(1)
  loc_1778DB4: If (CStr(DGSite.DispID_41) = vbNullString) Then
  loc_1778DD0:   MsgBox("Specify More Than Days", 0, var_184, var_194, var_1A8)
  loc_1778DE5:   global_130 = 0
  loc_1778DE8:   Exit Sub
  loc_1778DE9: End If
  loc_1778DF6: Call Proc_203_78_11ECDA0(New, var_154)
  loc_1778DFE: Set var_8C = var_154
  loc_1778E0C: If (global_84 = vbNullString) Then
  loc_1778E1F:   var_164 = "Supplier"
  loc_1778E51:   Set var_154 = CVar(CLng(0))(1)
  loc_1778E68:   Proc_183_7_EB17D4(var_238, CVar(CStr(DGSite.DispID_41)))
  loc_1778E7A:   var_150 = "Select SG.SubCode,SG.Name,SG.Add1,SG.Add2,C.CityName,SG.ConPerson,SG.PIN,SG.EMail,SG.PhoneO,VIEWLEDGER.* From (SubGroup SG Left Join City C on SG.CityCode=C.CityCode) LEFT JOIN VIEWLEDGER ON VIEWLEDGER.PARTY=SG.SUBCODE Where SG.Nature='"
  loc_1778E9B:   var_268 = var_150 & IIf((GRepFormName = "DueListCreditorOverLay"), var_164, "Customer") & "' AND VIEWLEDGER.V_DATE<=" & var_238 & "  " 
  loc_1778EBC:   unk_583395.Execute CStr(var_268 & CVar(var_100) & " Order By Name,SG.SUBCODE,VIEWLEDGER.V_DATE,VIEWLEDGER.DOCID"), var_2C8, -1
  loc_1778EC7:   Set var_A0 = var_174
  loc_1778F09:   unk_583395.Execute "Select SubCode+'-'+DocId1+'-'+ LTRIM(RTRIM(V_SNo1)) AS SCODE,SUBCODE,DocId1,V_SNo1,SUM(CR) AS ADJCr  FROM LEDGERADJ GROUP BY SUBCODE,DocId1,V_SNo1", var_164, -1
  loc_1778F14:   Set var_A4 = var_154
  loc_1778F33:   unk_583395.Execute "Select SubCode+'-'+DocId2+'-'+ LTRIM(RTRIM(V_SNo2)) AS SCODE,SUBCODE,DocId2,V_SNo2,SUM(CR) AS ADJDr  FROM LEDGERADJ GROUP BY SUBCODE,DocId2,V_SNo2", var_164, -1
  loc_1778F3E:   Set var_A8 = var_154
  loc_1778F4A: Else
  loc_1778F5A:   var_164 = "Supplier"
  loc_1778F7A:   var_1F8 = CVar(CLng(0)) 'Long
  loc_1778F8C:   Set var_154 = var_1F8(1)
  loc_1778FA3:   Proc_183_7_EB17D4(var_268, CVar(CStr(DGSite.DispID_41)), var_154, var_154)
  loc_1778FB5:   var_150 = "Select SG.SubCode,SG.Name,SG.Add1,SG.Add2,C.CityName,SG.ConPerson,SG.PIN,SG.EMail,SG.PhoneO,VIEWLEDGER.* From (SubGroup SG Left Join City C on SG.CityCode=C.CityCode) LEFT JOIN VIEWLEDGER ON VIEWLEDGER.PARTY=SG.SUBCODE Where SG.Nature='"
  loc_1778FD3:   var_218 = var_150 & IIf((GRepFormName = "DueListCreditorOverLay"), var_164, "Customer") & "' AND SG.SUBCODE IN (" & CVar(global_84) 
  loc_1778FFF:   var_2E8 = var_218 & ") AND VIEWLEDGER.V_DATE<=" & var_268 & " " & CVar(var_100) & " Order By Name,SG.SUBCODE,VIEWLEDGER.V_DATE,VIEWLEDGER.DOCID" 
  loc_177900D:   unk_583395.Execute CStr(var_2E8), var_308, -1
  loc_1779018:   Set var_A0 = var_174
  loc_177905F:   var_16C = "Select SubCode+'-'+DocId1+'-'+ LTRIM(RTRIM(V_SNo1)) AS SCODE,SUBCODE,DocId1,V_SNo1,SUM(CR) AS ADJCr  FROM LEDGERADJ WHERE SUBCODE IN (" & global_84
  loc_177906F:   unk_583395.Execute CStr(var_2E8) & ") GROUP BY SUBCODE,DocId1,V_SNo1", var_164, -1
  loc_177907A:   Set var_A4 = var_154
  loc_17790A1:   var_16C = "Select SubCode+'-'+DocId2+'-'+ LTRIM(RTRIM(V_SNo2)) AS SCODE,SUBCODE,DocId2,V_SNo2,SUM(CR) AS ADJDr  FROM LEDGERADJ WHERE SUBCODE IN (" & global_84
  loc_17790B1:   unk_583395.Execute CStr(var_2E8) & ") GROUP BY SUBCODE,DocId2,V_SNo2", var_164, -1
  loc_17790BC:   Set var_A8 = var_154
  loc_17790CC:   ' Referenced from:   177A619
  loc_17790CC: End If
  loc_17790DB: If Not(var_A0.EOF) Then
  loc_1779131:   var_184 = vbNullString
  loc_1779155:   var_BC = CStr(Trim(IIf(IsNull(CVar(var_A0.Fields.Item("Name"))), var_184, CVar(var_A0.Fields.Item("Name")))))
  loc_1779199:   var_C0 = CStr(var_A0.Fields.Item("Party").Value)
  loc_17791A9:   var_D8 = CDbl(0)
  loc_17791AF:   var_E0 = CDbl(0)
  loc_17791B5:   var_108 = CDbl(0)
  loc_17791BB:   var_110 = CDbl(0)
  loc_17791BE:   ' Referenced from: 177A616
  loc_17791FB:   If (var_A0.Fields.Item("Party").Value = CVar(var_C0)) Then
  loc_1779230:     Proc_183_3_E7DD58(var_184, CVar(var_A0.Fields.Item("Debit")), CDbl(0), CDbl(0), var_110, var_108, var_E0)
  loc_177924A:     If (var_184 > 0) Then
  loc_1779261:       If (var_A8.RecordCount > 0) Then
  loc_1779267:         var_A8.MoveFirst
  loc_177926C:       End If
  loc_17792A9:       var_130 = "-"
  loc_17792AE:       var_184 = (var_A0.Fields.Item("subcode").Value + 0)
  loc_17792DC:       var_1A8 = (var_184 + var_A0.Fields.Item("DocID").Value)
  loc_17792E0:       var_150 = "-"
  loc_17792E5:       var_1C8 = (IIf(IsNull(CVar(var_A0.Fields.Item("Name"))), var_184, CVar(var_A0.Fields.Item("Name"))) + vbNullString)
  loc_1779317:       var_238 = (Trim(IIf(IsNull(CVar(var_A0.Fields.Item("Name"))), var_184, CVar(var_A0.Fields.Item("Name")))) + Trim(CVar(var_A0.Fields.Item("V_SNo"))))
  loc_177932F:       var_A8.Find CStr("SCODE='" & var_238 & "'"), 0, 1
  loc_1779361:       var_166 = var_A8.EOF
  loc_177936C:       If (var_166 = 0) Then
  loc_1779395:         Proc_183_3_E7DD58(var_184, CVar(var_A8.Fields.Item("ADJDR")), var_1F8, var_D8, var_166)
  loc_177939E:         var_C8 = CSng(var_184)
  loc_17793AB:       End If
  loc_17793CA:       var_120 = CVar(CLng(2)) 'Long
  loc_17793DC:       Set var_154 = var_120(1)
  loc_17793F5:       var_258 = (CStr(DGSite.DispID_41) = "Pending")
  loc_1779418:       var_1A8 = Format(CVar(var_A0.Fields.Item("Debit")), "0.00")
  loc_1779448:       var_228 = (1 - Format(var_C8, "0.00"))
  loc_1779477:       If CBool(1 And (Trim(CVar(var_A0.Fields.Item("V_SNo"))) = 0)) Then
  loc_177947A:         GoTo loc_177A5F7
  loc_177947D:       End If
  loc_1779480:       Set var_320 = var_8C 
  loc_177948F:       var_320.AddNew var_120, 0
  loc_17794D7:       var_320.Fields.Item("VDATE1").Value = CVar(var_A0.Fields.Item("V_DATE"))
  loc_177952B:       var_320.Fields.Item("VNO1").Value = CVar(var_A0.Fields.Item("V_NO"))
  loc_177957F:       var_320.Fields.Item("VTYPE1").Value = CVar(var_A0.Fields.Item("V_Type"))
  loc_17795D3:       var_320.Fields.Item("VSNO1").Value = CVar(var_A0.Fields.Item("V_SNo"))
  loc_1779627:       var_320.Fields.Item("VADD1").Value = CVar(var_A0.Fields.Item("V_ADD"))
  loc_177967B:       var_320.Fields.Item("Dr").Value = CVar(var_A0.Fields.Item("Debit"))
  loc_17796AE:       var_164 = var_A0.Fields.Item("Debit").Value
  loc_17796BD:       var_184 = (var_164 - CVar(var_C8))
  loc_17796E1:       var_320.Fields.Item("PendDr").Value = CVar(var_A0.Fields.Item("Debit"))
  loc_1779725:       Set var_30C = CVar(CLng(0))(1)
  loc_1779783:       var_320.Fields.Item("AgeDr").Value = DateDiff("D", CVar(var_A0.Fields.Item("V_DATE")), CDate(CDate(CStr(var_164))), 1, 1)
  loc_17797E4:       var_320.Fields.Item("SUBCODE").Value = CVar(var_A0.Fields.Item("Party"))
  loc_1779848:       var_320.Fields.Item("NAME").Value = Left(CVar(var_A0.Fields.Item("Name")), &H4B)
  loc_17798B0:       var_16E = IsNull(CVar(var_A0.Fields.Item("Add2")))
  loc_17798F8:       var_1C8 = (IIf(IsNull(CVar(var_A0.Fields.Item("Add1"))), vbNullString, CVar(var_A0.Fields.Item("Add1"))) + ",")
  loc_177992D:       var_1F8 = var_16E
  loc_177993C:       var_268 = ("0.00" + IIf(var_1F8, vbNullString, CVar(var_A0.Fields.Item("Add2"))))
  loc_1779960:       var_320.Fields.Item("ADDRESS").Value = "SCODE='" & CVar(var_A0.Fields.Item("Add2")) & "'"
  loc_1779A1A:       var_320.Fields.Item("CITY_NAME").Value = IIf(IsNull(CVar(var_A0.Fields.Item("CityName"))), vbNullString, CVar(var_A0.Fields.Item("CityName")))
  loc_1779AC2:       var_320.Fields.Item("ConPerson").Value = IIf(IsNull(CVar(var_A0.Fields.Item("ConPerson"))), vbNullString, CVar(var_A0.Fields.Item("ConPerson")))
  loc_1779B6A:       var_320.Fields.Item("PIN").Value = IIf(IsNull(CVar(var_A0.Fields.Item("Pin"))), vbNullString, CVar(var_A0.Fields.Item("Pin")))
  loc_1779BAF:       var_166 = IsNull(CVar(var_A0.Fields.Item("Email")))
  loc_1779BEA:       var_1A8 = IIf(var_166, vbNullString, CVar(var_A0.Fields.Item("Email")))
  loc_1779C12:       var_320.Fields.Item("EMail").Value = var_1A8
  loc_1779C7A:       var_320.Fields.Item("NARRATION1").Value = CVar(Proc_183_2_E5AE94(CVar(var_A0.Fields.Item("mNarr")), var_166, var_166, var_166, var_166, var_16E))
  loc_1779C92:       var_120 = "NARR"
  loc_1779CB7:       var_184 = CVar(Proc_183_2_E5AE94(CVar(var_A0.Fields.Item(var_120)), var_166, DGSite.DispID_41, var_1A8)) 'String
  loc_1779CBE:       var_130 = "NARRATION2"
  loc_1779CDA:       var_320.Fields.Item(var_130).Value = var_184
  loc_1779CFA:       var_320.Update var_120, var_130
  loc_1779D01:       Set var_320 = Nothing 
  loc_1779D08:     Else
  loc_1779D2E:       Proc_183_3_E7DD58(var_184, CVar(var_A0.Fields.Item("Credit")), 1)
  loc_1779D48:       If (var_184 > 0) Then
  loc_1779D5F:         If (var_A4.RecordCount > 0) Then
  loc_1779D65:           var_A4.MoveFirst
  loc_1779D6A:         End If
  loc_1779DA7:         var_130 = "-"
  loc_1779DAC:         var_184 = (var_A0.Fields.Item("subcode").Value + 0)
  loc_1779DDA:         var_1A8 = (var_184 + var_A0.Fields.Item("DocID").Value)
  loc_1779DDE:         var_150 = "-"
  loc_1779DE3:         var_1C8 = (var_1A8 + vbNullString)
  loc_1779E15:         var_238 = ("0.00" + Trim(CVar(var_A0.Fields.Item("V_SNo"))))
  loc_1779E2D:         var_A4.Find CStr("SCODE='" & CVar(var_A0.Fields.Item("Add2")) & "'"), 0, 1
  loc_1779E6A:         If (var_A4.EOF = 0) Then
  loc_1779E93:           Proc_183_3_E7DD58(var_184, CVar(var_A4.Fields.Item("ADJCR")), var_1F8)
  loc_1779E9C:           var_D0 = CSng(var_184)
  loc_1779EA9:         End If
  loc_1779EC8:         var_120 = CVar(CLng(2)) 'Long
  loc_1779EDA:         Set var_154 = var_120(1)
  loc_1779EF3:         var_258 = (CStr(DGSite.DispID_41) = "Pending")
  loc_1779F16:         var_1A8 = Format(CVar(var_A0.Fields.Item("Credit")), "0.00")
  loc_1779F46:         var_228 = (1 - Format(var_D0, "0.00"))
  loc_1779F75:         If CBool(1 And (Trim(CVar(var_A0.Fields.Item("V_SNo"))) = 0)) Then
  loc_1779F78:           GoTo loc_177A5F7
  loc_1779F7B:         End If
  loc_1779F7E:         Set var_334 = var_8C 
  loc_1779F8D:         var_334.AddNew var_120, 0
  loc_1779FD5:         var_334.Fields.Item("VDATE2").Value = CVar(var_A0.Fields.Item("V_DATE"))
  loc_177A029:         var_334.Fields.Item("VNO2").Value = CVar(var_A0.Fields.Item("V_NO"))
  loc_177A07D:         var_334.Fields.Item("VTYPE2").Value = CVar(var_A0.Fields.Item("V_Type"))
  loc_177A0D1:         var_334.Fields.Item("VSNO2").Value = CVar(var_A0.Fields.Item("V_SNo"))
  loc_177A125:         var_334.Fields.Item("VADD2").Value = CVar(var_A0.Fields.Item("V_ADD"))
  loc_177A179:         var_334.Fields.Item("Cr").Value = CVar(var_A0.Fields.Item("Credit"))
  loc_177A1AC:         var_164 = var_A0.Fields.Item("Credit").Value
  loc_177A1BB:         var_184 = (var_164 - CVar(var_D0))
  loc_177A1DF:         var_334.Fields.Item("PendCr").Value = CVar(var_A0.Fields.Item("Credit"))
  loc_177A223:         Set var_30C = CVar(CLng(0))(1)
  loc_177A281:         var_334.Fields.Item("AgeCr").Value = DateDiff("D", CVar(var_A0.Fields.Item("V_DATE")), CDate(CDate(CStr(var_164))), 1, 1)
  loc_177A2E2:         var_334.Fields.Item("SUBCODE").Value = CVar(var_A0.Fields.Item("Party"))
  loc_177A336:         var_334.Fields.Item("NAME").Value = CVar(var_A0.Fields.Item("Name"))
  loc_177A39A:         var_16E = IsNull(CVar(var_A0.Fields.Item("Add2")))
  loc_177A3E2:         var_1C8 = (IIf(IsNull(CVar(var_A0.Fields.Item("Add1"))), vbNullString, CVar(var_A0.Fields.Item("Add1"))) + ",")
  loc_177A426:         var_268 = ("0.00" + IIf(var_16E, vbNullString, CVar(var_A0.Fields.Item("Add2"))))
  loc_177A42E:         var_258 = "ADDRESS"
  loc_177A44A:         var_334.Fields.Item(var_258).Value = "SCODE='" & CVar(var_A0.Fields.Item("Add2")) & "'"
  loc_177A4A1:         var_166 = IsNull(CVar(var_A0.Fields.Item("CityName")))
  loc_177A4C3:         var_194 = CVar(var_A0.Fields.Item("CityName")) 'Address
  loc_177A4DC:         var_1A8 = IIf(var_166, vbNullString, var_194)
  loc_177A504:         var_334.Fields.Item("CITY_NAME").Value = var_1A8
  loc_177A549:         var_184 = CVar(Proc_183_2_E5AE94(CVar(var_A0.Fields.Item("mNarr")), var_166, var_16E, var_166, DGSite.DispID_41, var_1A8)) 'String
  loc_177A56C:         var_334.Fields.Item("NARRATION1").Value = var_184
  loc_177A584:         var_120 = "NARR"
  loc_177A5B0:         var_130 = "NARRATION2"
  loc_177A5CC:         var_334.Fields.Item(var_130).Value = CVar(Proc_183_2_E5AE94(CVar(var_A0.Fields.Item(var_120)), 1, 1, var_258))
  loc_177A5EC:         var_334.Update var_120, var_130
  loc_177A5F3:         Set var_334 = Nothing 
  loc_177A5F7:         ' Referenced from:   1779F78
  loc_177A5F7:       End If
  loc_177A5F7:       ' Referenced from: 177947A
  loc_177A5F7:     End If
  loc_177A5FA:     var_A0.MoveNext
  loc_177A610:     If (var_A0.EOF = &HFF) Then
  loc_177A613:       GoTo loc_177A619
  loc_177A616:     End If
  loc_177A616:     GoTo loc_17791BE
  loc_177A619:     ' Referenced from: 177A613
  loc_177A619:   End If
  loc_177A619:   GoTo loc_17790CC
  loc_177A61C: End If
  loc_177A630: If (var_A0.RecordCount > 0) Then
  loc_177A636:   var_A0.MoveFirst
  loc_177A63B:   ' Referenced from: 177A885
  loc_177A63B: End If
  loc_177A64A: If Not(var_A0.EOF) Then
  loc_177A678:   var_F4 = CStr(var_A0.Fields.Item("Party").Value)
  loc_177A688:   var_FC = CDbl(0)
  loc_177A697:   var_8C.Filter = 0
  loc_177A6B0:   If (var_8C.RecordCount > 0) Then
  loc_177A6B6:     var_8C.MoveFirst
  loc_177A6BB:     ' Referenced from: 177A7AA
  loc_177A6BB:   End If
  loc_177A6CA:   If Not(var_8C.EOF) Then
  loc_177A708:     var_140 = "AgeDr"
  loc_177A724:     var_1A8 = var_8C.Fields.Item(var_140).Value
  loc_177A741:     Set var_318 = CVar(CLng(3))(1)
  loc_177A782:     If CBool((var_8C.Fields.Item("subcode").Value = CVar(var_F4)) And (var_1A8 >= CVar(Val(CStr(DGSite.DispID_41))))) Then
  loc_177A78C:       var_FC = (var_FC + CDbl(1))
  loc_177A796:       If (var_FC > CDbl(0)) Then
  loc_177A799:         GoTo loc_177A87D
  loc_177A79F:       Else
  loc_177A7A2:       Else
  loc_177A7A2:       End If
  loc_177A7A5:       var_8C.MoveNext
  loc_177A7AA:       GoTo loc_177A6BB
  loc_177A7AD:     End If
  loc_177A7B4:     If (var_FC = CDbl(0)) Then
  loc_177A7B7:       GoTo loc_177A7C0
  loc_177A7BD:     Else
  loc_177A7C0:     Else
  loc_177A7C0:       ' Referenced from:     177A7B7
  loc_177A7C0:     End If
  loc_177A7C3:     var_130 = CVar(var_F4) 'String
  loc_177A7FD:     If (var_130 = var_A0.Fields.Item("Party").Value) Then
  loc_177A814:       If (var_8C.RecordCount > 0) Then
  loc_177A81A:         var_8C.MoveFirst
  loc_177A81F:       End If
  loc_177A826:       var_16C = "SubCode='" & var_F4
  loc_177A834:       var_8C.Filter = CVar(var_16C & "'")
  loc_177A850:       If (var_8C.EOF = 0) Then
  loc_177A853:         ' Referenced from:   177A87A
  loc_177A862:         If Not(var_8C.EOF) Then
  loc_177A86D:           var_8C.Delete
  loc_177A875:           var_8C.MoveNext
  loc_177A87A:           GoTo loc_177A853
  loc_177A87D:         End If
  loc_177A87D:         ' Referenced from: 177A799
  loc_177A87D:       End If
  loc_177A87D:     End If
  loc_177A87D:   End If
  loc_177A880:   var_A0.MoveNext
  loc_177A885:   GoTo loc_177A63B
  loc_177A888: End If
  loc_177A894: var_8C.Filter = 0
  loc_177A89E: Set var_A0 = Nothing
  loc_177A8A6: Set var_A4 = Nothing
  loc_177A8AE: Set var_A8 = Nothing
  loc_177A8B6: Set var_AC = Nothing
  loc_177A8BE: Set var_B0 = Nothing
  loc_177A8D5: If (var_8C.RecordCount <= 0) Then
  loc_177A8DE:   Call 0.Method_arg_50 (var_16C, 1, var_FC, var_FC)
  loc_177A8FF:   MsgBox("** No Records Found to Print **", &H40, CVar(var_16C), var_194, var_1A8)
  loc_177A914:   global_130 = 0
  loc_177A917: End If
  loc_177A91D: Call 0.Method_arg_50 (var_16C, global_130, var_D0)
  loc_177A93A: global_120 = CStr(Ucase(CVar(var_16C)))
  loc_177A95E: Set var_154 = var_8C 
  loc_177A96A: var_166 = CreateFieldDefFile(var_154, MemVar_1F953B4 & "\FaDueList.ttx", &HFF)
  loc_177A97A: var_120 = CVar(var_166) 'Integer
  loc_177A97D: var_9C = var_120 'Variant
  loc_177A999: var_16C = MemVar_1F953B4 & "\FaDueList.RPT"
  loc_177A9A2: Call 0.Method_arg_1C (var_16C, var_120, var_154)
  loc_177A9AD: MemVar_1F951E8 = var_154
  loc_177A9D0: Call 0.Method_arg_64 (var_154, CVar(var_154), var_130, var_140)
  loc_177A9D8: Call 0.Method_arg_2C (var_166, 1)
  loc_177A9E5: Set var_8C = Nothing
  loc_177A9E8: Exit Sub
  loc_177A9E9: ' Referenced from: 1778C20
  loc_177A9F7: Call 0.Method_arg_50 (var_16C, 0)
  loc_177AA0C: Proc_183_57_104B0BC(var_16C, "DUELIST")
  loc_177AA18: Exit Sub
End Sub

Public Sub Proc_203_77_14804D4(arg_C) '14804D4
  'Data Table: 583348
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_118 As String
  Dim var_120 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_DC As Variant
  Dim var_154 As Variant
  Dim var_FC As Variant
  Dim var_174 As Variant
  Dim unk_583395 As Connection15
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_94 As Recordset15
  Dim var_100 As Fields15
  Dim var_22C As Recordset15
  Dim var_130 As Variant
  Dim var_88 As Recordset15
  Dim var_90 As Recordset15
  Dim var_230 As Recordset15
  Dim var_8C As Recordset15
  Dim var_232 As Integer
  Dim var_A2 As Integer
  Dim var_112 As Integer
  loc_147F8E4: On Error Goto loc_14804A3
  loc_147F8FC: Set var_100 = CVar(CLng(0))(0)
  loc_147F920: Call Proc_203_59_F525A0(CInt(0), CStr(var_110))
  loc_147F934: If (var_11A = 0) Then
  loc_147F93C:   global_130 = 0
  loc_147F93F:   Exit Sub
  loc_147F940: End If
  loc_147F955: Set var_100 = CVar(CLng(1))(0)
  loc_147F979: Call Proc_203_59_F525A0(CInt(1), CStr(var_110))
  loc_147F98D: If (var_11A = 0) Then
  loc_147F995:   global_130 = 0
  loc_147F998:   Exit Sub
  loc_147F999: End If
  loc_147F9AE: Set var_100 = CVar(CLng(0))(1)
  loc_147F9CC: global_130(CStr(DGSite.DispID_41)).Text = var_11A
  loc_147F9F3: Set var_100 = CVar(CLng(1))(1)
  loc_147FA04: var_118 = CStr(DGSite.DispID_41)
  loc_147FA0B: Set var_120 = DGSite.DispID_41(var_118)
  loc_147FA11: var_120.Text = global_130
  loc_147FA3A: If (Proc_183_48_F06B28(Me, var_11A) = 0) Then
  loc_147FA42:   global_130 = 0
  loc_147FA45:   Exit Sub
  loc_147FA46: End If
  loc_147FA51: Set var_100 = var_120(CInt(&HC))
  loc_147FA57: Call 0.Method_Proc_203_77_14804D40 (global_130)
  loc_147FA66: var_130 = Trim(CVar(var_120))
  loc_147FA80: If CBool(var_130 <> vbNullString) Then
  loc_147FA94:   Set var_100 = var_120(CInt(&HC))
  loc_147FA9A:   Call 0.Method_Proc_203_77_14804D40 (var_118, " And VIEWLEDGER.LOGSite_Code='")
  loc_147FAA2:   DGSite.DispID_41 = var_120.Tag
  loc_147FAB2:   var_BC = var_118 & "'"
  loc_147FAC6: Else
  loc_147FACD:   var_118 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078
  loc_147FAD4:   var_BC = var_118 & "'"
  loc_147FADA: End If
  loc_147FAE6: Set var_100 = var_120(1)
  loc_147FAEC: Call 0.Method_Proc_203_77_14804D40 (var_112)
  loc_147FAF4:  = var_120.Value
  loc_147FB0A: If (CLng(var_112) = 0) Then
  loc_147FB28:   Call Proc_203_56_127C1B4(global_96, 1, CByte(1))
  loc_147FB33:   global_84 = var_118
  loc_147FB43:   If (global_130 = 0) Then
  loc_147FB46:     GoTo loc_1480482
  loc_147FB49:   End If
  loc_147FB49: End If
  loc_147FB54: If (global_84 <> vbNullString) Then
  loc_147FB68:   var_A8 = " AND GROUPCODE IN (" & global_84 & ") "
  loc_147FB6E: End If
  loc_147FB7B: Call Proc_203_79_10242FC(New, var_100)
  loc_147FB83: Set var_8C = var_100
  loc_147FB93: var_CC = "SELECT SUM(CREDIT)-SUM(DEBIT) AS BALANCE FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party=SUBGROUP.SUBCODE where V_date<"
  loc_147FBA3: Proc_183_7_EB17D4(var_130, CVar(var_1D4(global_96)), -1)
  loc_147FBC7: var_174 = var_100 & var_130 & " " & CVar(var_A8) & " " 
  loc_147FBE8: unk_583395.Execute CStr(var_174 & CVar(var_BC) & vbNullString), CStr(var_174 & CVar(var_BC) & vbNullString), 
  loc_147FBF3: Set var_94 = var_100
  loc_147FC1E: var_CC = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY WHERE V_dATE BETWEEN "
  loc_147FC2E: Proc_183_7_EB17D4(var_130, CVar(var_1F4(var_CC)))
  loc_147FC36: var_140 = -1 & var_130 
  loc_147FC4E: Proc_183_7_EB17D4(var_174)
  loc_147FC80: unk_583395.Execute CStr(CVar(var_100(var_100 & var_130 & " AND ")) & var_174 & " " & CVar(var_BC) & " ORDER BY DOCID"), , 
  loc_147FC8B: Set var_90 = var_100
  loc_147FCC3: var_110 = CVar(var_224("SELECT DISTINCT DOCID FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party=SUBGROUP.SUBCODE where V_date BETWEEN ")) 'Address
  loc_147FCCA: Proc_183_7_EB17D4(var_130, var_110)
  loc_147FCD2: var_140 = -1 & var_130 
  loc_147FCDB: var_154 = var_100 & var_130 & " AND " 
  loc_147FCEA: Proc_183_7_EB17D4(var_174)
  loc_147FD02: var_FC = CVar(var_A8) 'String
  loc_147FD2F: unk_583395.Execute CStr(CVar(var_100(var_154)) & var_174 & " " & var_FC & " " & CVar(var_BC) & " ORDER BY DOCID"), , 
  loc_147FD3A: Set var_88 = var_100
  loc_147FD74: If (var_94.RecordCount > 0) Then
  loc_147FD7D:   var_CC = "Balance"
  loc_147FDA1:   var_DC = 0
  loc_147FDB3:   If CBool(var_94.Fields.Item(var_CC).Value <> var_DC) Then
  loc_147FDB9:     Set var_22C = var_8C 
  loc_147FDC8:     var_22C.AddNew var_CC, var_DC
  loc_147FDD1:     var_110 = CVar(()) 'Address
  loc_147FDDF:     var_22C.Collect = "V_DATE"
  loc_147FE23:     If (var_94.Fields.Item("Balance").Value > 0) Then
  loc_147FE50:       var_130 = Abs(var_94.Fields.Item("Balance").Value)
  loc_147FE5E:       var_22C.Collect = "Credit"
  loc_147FE6D:       var_DC = 0
  loc_147FE7C:       var_22C.Collect = "Debit"
  loc_147FE84:     Else
  loc_147FE84:       var_DC = 0
  loc_147FE93:       var_22C.Collect = "Credit"
  loc_147FEC2:       var_130 = Abs(var_94.Fields.Item("Balance").Value)
  loc_147FED0:       var_22C.Collect = "Debit"
  loc_147FEDF:     End If
  loc_147FEDF:     var_DC = "OP"
  loc_147FEEE:     var_22C.Collect = "V_Type"
  loc_147FEF3:     var_DC = 0
  loc_147FF02:     var_22C.Collect = "V_NO"
  loc_147FF07:     var_DC = vbNullString
  loc_147FF16:     var_22C.Collect = "V_ADD"
  loc_147FF21:     var_CC = "Chq_No"
  loc_147FF2A:     var_22C.Collect = var_CC
  loc_147FF3A:     var_22C.Update var_CC, vbNullString
  loc_147FF41:     Set var_22C = Nothing 
  loc_147FF45:     ' Referenced from: 1480313
  loc_147FF45:   End If
  loc_147FF45: End If
  loc_147FF54: If Not(var_88.EOF) Then
  loc_147FF5A:   var_90.MoveFirst
  loc_147FFA0:   var_EC = "'"
  loc_147FFA5:   var_140 = "DocId='" & var_88.Fields.Item("DocID").Value & var_EC 
  loc_147FFA9:   var_118 = CStr(var_140)
  loc_147FFB0:   var_90.Find var_118, 0, 1
  loc_147FFF3:   var_A0 = CStr(var_88.Fields.Item("DocID").Value)
  loc_1480011:   If (var_90.EOF = 0) Then
  loc_1480014:     ' Referenced from: 1480308
  loc_1480017:     var_DC = CVar(var_A0) 'String
  loc_1480021:     var_CC = "DocID"
  loc_1480051:     If (var_DC = var_90.Fields.Item(var_CC).Value) Then
  loc_1480057:       Set var_230 = var_8C 
  loc_1480066:       var_230.AddNew var_CC, var_DC
  loc_148008A:       var_110 = CVar(var_90.Fields.Item("V_DATE")) 'Address
  loc_1480098:       var_230.Collect = "V_DATE"
  loc_14800C2:       var_110 = CVar(var_90.Fields.Item("Credit")) 'Address
  loc_14800D0:       var_230.Collect = "Credit"
  loc_14800FA:       var_110 = CVar(var_90.Fields.Item("Debit")) 'Address
  loc_1480108:       var_230.Collect = "Debit"
  loc_1480132:       var_110 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_1480140:       var_230.Collect = "V_Type"
  loc_148016A:       var_110 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_1480178:       var_230.Collect = "V_NO"
  loc_14801A2:       var_110 = CVar(var_90.Fields.Item("V_ADD")) 'Address
  loc_14801B0:       var_230.Collect = "V_ADD"
  loc_14801DA:       var_110 = CVar(var_90.Fields.Item("Chq_No")) 'Address
  loc_14801E8:       var_230.Collect = "Chq_No"
  loc_1480212:       var_110 = CVar(var_90.Fields.Item("Chq_Date")) 'Address
  loc_1480220:       var_230.Collect = "Chq_Date"
  loc_148024A:       var_110 = CVar(var_90.Fields.Item("NARR")) 'Address
  loc_1480258:       var_230.Collect = "NARR"
  loc_1480282:       var_110 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_1480290:       var_230.Collect = "Name"
  loc_148029E:       var_CC = "mNarr"
  loc_14802BA:       var_110 = CVar(var_90.Fields.Item(var_CC)) 'Address
  loc_14802BF:       var_DC = "mNarr"
  loc_14802C8:       var_230.Collect = var_DC
  loc_14802DE:       var_230.Update var_CC, var_DC
  loc_14802E5:       Set var_230 = Nothing 
  loc_14802EC:       var_90.MoveNext
  loc_14802F7:       var_112 = var_90.EOF
  loc_1480302:       If (var_112 = &HFF) Then
  loc_1480305:         GoTo loc_148030B
  loc_1480308:       End If
  loc_1480308:       GoTo loc_1480014
  loc_148030B:       ' Referenced from: 1480305
  loc_148030B:     End If
  loc_148030B:   End If
  loc_148030E:   var_88.MoveNext
  loc_1480313:   GoTo loc_147FF45
  loc_1480316: End If
  loc_148032A: If (var_8C.RecordCount <= 0) Then
  loc_1480333:   Call 0.Method_arg_50 (var_118, var_110, var_110, var_110, var_110, var_110, var_110)
  loc_1480354:   MsgBox("** No Records Found to Print **", &H40, CVar(var_118), var_140, var_154)
  loc_1480369:   global_130 = 0
  loc_148036C:   Exit Sub
  loc_148036D: End If
  loc_1480370: var_232 = arg_C
  loc_1480379: If (var_232 = 1) Then
  loc_1480382:   var_DC = "Paper Setting"
  loc_1480397:   var_110 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_148039D:   MsgBox(var_110, &H40, var_DC, var_140, var_154)
  loc_14803B6:   Set var_120 = var_8C
  loc_14803CF:   Call 0.Method_arg_160 (Me, var_120, var_112, var_232, global_130, var_110)
  loc_14803DA:   Set var_8C = var_120
  loc_14803E0:   var_A2 = var_112
  loc_14803EF:   global_130 = 0
  loc_14803F2:   GoTo loc_1480482
  loc_14803F8: Else
  loc_1480401:   var_118 = MemVar_1F953B4 & "\FaControlLed.ttx"
  loc_148040E:   Set var_100 = var_8C 
  loc_148041A:   var_112 = CreateFieldDefFile(var_100, var_118, &HFF, global_130, var_A2, var_110)
  loc_148042D:   var_B8 = CVar(var_112) 'Variant
  loc_1480447:   Call 0.Method_arg_11C (var_100, var_112, var_110, var_110)
  loc_1480452:   MemVar_1F951E8 = var_100
  loc_1480472:   Call 0.Method_arg_64 (var_100, CVar(var_100), var_DC, var_EC)
  loc_148047A:   Call 0.Method_arg_2C (var_110, var_FC)
  loc_1480482: End If
  loc_1480482: ' Referenced from: 14803F2
  loc_1480482: ' Referenced from: 147FB46
  loc_1480487: Set var_88 = Nothing
  loc_148048F: Set var_8C = Nothing
  loc_1480497: Set var_90 = Nothing
  loc_148049F: Set var_94 = Nothing
  loc_14804A2: Exit Sub
  loc_14804A3: ' Referenced from: 147F8E4
  loc_14804B1: Call 0.Method_arg_50 (var_118, 0)
  loc_14804C6: Proc_183_57_104B0BC(var_118, "ControlLed")
  loc_14804D2: Exit Sub
End Sub

Public Sub Proc_203_78_11ECDA0(arg_C) '11ECDA0
  'Data Table: 583348
  Dim var_8C As Recordset15
  loc_11EC901: Set var_8C = arg_C 
  loc_11EC929: var_8C.Fields.Append "VDATE1", 7, 0
  loc_11EC955: var_8C.Fields.Append "VNO1", 3, 0
  loc_11EC981: var_8C.Fields.Append "VTYPE1", &HC8, 5
  loc_11EC9AD: var_8C.Fields.Append "VSNO1", 3, 0
  loc_11EC9D9: var_8C.Fields.Append "VADD1", &HC8, 5
  loc_11ECA05: var_8C.Fields.Append "VDATE2", 7, 0
  loc_11ECA31: var_8C.Fields.Append "VNO2", 3, 0
  loc_11ECA5D: var_8C.Fields.Append "VTYPE2", &HC8, 5
  loc_11ECA89: var_8C.Fields.Append "VSNO2", 3, 0
  loc_11ECAB5: var_8C.Fields.Append "VADD2", &HC8, 5
  loc_11ECAE1: var_8C.Fields.Append "Cr", 5, 0
  loc_11ECB0D: var_8C.Fields.Append "Dr", 5, 0
  loc_11ECB39: var_8C.Fields.Append "PendCr", 5, 0
  loc_11ECB65: var_8C.Fields.Append "PendDr", 5, 0
  loc_11ECB91: var_8C.Fields.Append "AgeCr", 3, 0
  loc_11ECBBD: var_8C.Fields.Append "AgeDr", 3, 0
  loc_11ECBE9: var_8C.Fields.Append "SUBCODE", &HC8, &HA
  loc_11ECC15: var_8C.Fields.Append "NAME", &HC8, &H4B
  loc_11ECC41: var_8C.Fields.Append "ADDRESS", &HC8, &H96
  loc_11ECC6D: var_8C.Fields.Append "CITY_NAME", &HC8, &H32
  loc_11ECC99: var_8C.Fields.Append "ConPerson", &HC8, &H32
  loc_11ECCC5: var_8C.Fields.Append "PIN", &HC8, 6
  loc_11ECCF1: var_8C.Fields.Append "EMail", &HC8, &H32
  loc_11ECD1D: var_8C.Fields.Append "NARRATION1", &HC8, &HFF
  loc_11ECD49: var_8C.Fields.Append "NARRATION2", &HC8, &HFF
  loc_11ECD59: var_8C.CursorType = 3
  loc_11ECD66: var_8C.LockType = 3
  loc_11ECD85: var_8C.Open var_A0, var_B0, -1
  loc_11ECD8C: Set var_8C = Nothing 
  loc_11ECD93: Set var_88 = arg_C 
  loc_11ECD97: Proc_203_78_11ECDA0 = -1
End Sub

Public Sub Proc_203_79_10242FC(arg_C) '10242FC
  'Data Table: 583348
  Dim var_8C As Recordset15
  loc_10240C5: Set var_8C = arg_C 
  loc_10240ED: var_8C.Fields.Append "V_DATE", 7, 0
  loc_1024119: var_8C.Fields.Append "credit", 5, 0
  loc_1024145: var_8C.Fields.Append "debit", 5, 0
  loc_1024171: var_8C.Fields.Append "v_type", &HC8, 5
  loc_102419D: var_8C.Fields.Append "v_no", 3, 0
  loc_10241C9: var_8C.Fields.Append "v_add", &HC8, 5
  loc_10241F5: var_8C.Fields.Append "Chq_No", &HC8, &H14
  loc_1024221: var_8C.Fields.Append "CHQ_DATE", 7, 0
  loc_102424D: var_8C.Fields.Append "NARR", &HC8, &HFF
  loc_1024279: var_8C.Fields.Append "NAME", &HC8, &H32
  loc_10242A5: var_8C.Fields.Append "MNARR", &HC8, &HFF
  loc_10242B5: var_8C.CursorType = 3
  loc_10242C2: var_8C.LockType = 3
  loc_10242E1: var_8C.Open var_A0, var_B0, -1
  loc_10242E8: Set var_8C = Nothing 
  loc_10242EF: Set var_88 = arg_C 
  loc_10242F3: Proc_203_79_10242FC = -1
End Sub

Public Sub Proc_203_80_191C1C4(arg_C) '191C1C4
  'Data Table: 583348
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_150 As String
  Dim var_158 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_AC As Double
  Dim unk_583395 As Connection15
  Dim var_88 As Recordset15
  Dim var_138 As Variant
  Dim var_114 As Variant
  Dim var_184 As Variant
  Dim var_1A8 As Variant
  Dim var_1E8 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_238 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_208 As Variant
  Dim var_8C As Recordset15
  Dim var_218 As Variant
  Dim var_228 As Variant
  Dim var_248 As Variant
  Dim var_90 As Recordset15
  Dim var_D8 As Double
  Dim var_94 As Recordset15
  Dim var_D0 As Double
  Dim var_DC As Integer
  Dim var_DE As Integer
  Dim var_E0 As Integer
  Dim var_E2 As Integer
  Dim var_E4 As Integer
  Dim var_E6 As Integer
  Dim var_C8 As Double
  Dim Me As Recordset15
  Dim var_26C As Fields15
  Dim var_258 As Variant
  Dim var_2A8 As Variant
  Dim var_98 As Recordset15
  Dim var_9C As Recordset15
  Dim var_2AA As Integer
  Dim var_DA As Integer
  Dim var_14A As Integer
  loc_1919698: On Error Goto loc_191C192
  loc_19196B0: Set var_138 = CVar(CLng(0))(0)
  loc_19196D4: Call Proc_203_59_F525A0(CInt(0), CStr(var_148))
  loc_19196E8: If (var_152 = 0) Then
  loc_19196F0:   global_130 = 0
  loc_19196F3:   Exit Sub
  loc_19196F4: End If
  loc_1919709: Set var_138 = CVar(CLng(1))(0)
  loc_191972D: Call Proc_203_59_F525A0(CInt(1), CStr(var_148))
  loc_1919741: If (var_152 = 0) Then
  loc_1919749:   global_130 = 0
  loc_191974C:   Exit Sub
  loc_191974D: End If
  loc_1919762: Set var_138 = CVar(CLng(2))(0)
  loc_1919786: Call Proc_203_59_F525A0(CInt(2), CStr(var_148))
  loc_191979A: If (var_152 = 0) Then
  loc_19197A2:   global_130 = 0
  loc_19197A5:   Exit Sub
  loc_19197A6: End If
  loc_19197BB: Set var_138 = CVar(CLng(3))(0)
  loc_19197DF: Call Proc_203_59_F525A0(CInt(3), CStr(var_148))
  loc_19197F3: If (var_152 = 0) Then
  loc_19197FB:   global_130 = 0
  loc_19197FE:   Exit Sub
  loc_19197FF: End If
  loc_1919814: Set var_138 = CVar(CLng(4))(0)
  loc_1919838: Call Proc_203_59_F525A0(CInt(4), CStr(var_148))
  loc_191984C: If (var_152 = 0) Then
  loc_1919854:   global_130 = 0
  loc_1919857:   Exit Sub
  loc_1919858: End If
  loc_191986D: Set var_138 = CVar(CLng(0))(1)
  loc_191988B: global_130(CStr(DGSite.DispID_41)).Text = var_152
  loc_19198B2: Set var_138 = CVar(CLng(1))(1)
  loc_19198C3: var_150 = CStr(DGSite.DispID_41)
  loc_19198CA: Set var_158 = DGSite.DispID_41(var_150)
  loc_19198D0: var_158.Text = global_130
  loc_19198F9: If (Proc_183_48_F06B28(Me, var_152, DGSite.DispID_41, global_130, var_152) = 0) Then
  loc_1919901:   global_130 = 0
  loc_1919904:   Exit Sub
  loc_1919905: End If
  loc_1919910: Set var_138 = var_158(CInt(&HC))
  loc_1919916: Call 0.Method_Proc_203_80_191C1C40 (global_130, DGSite.DispID_41, global_130)
  loc_191991E: var_148 = CVar(var_158) 'Address
  loc_191993F: If CBool(Trim(var_148) <> vbNullString) Then
  loc_1919953:   Set var_138 = var_158(CInt(&HC))
  loc_1919959:   Call 0.Method_Proc_203_80_191C1C40 (var_150, " And VIEWLEDGER.Site_Code='")
  loc_1919961:   var_152 = var_158.Tag
  loc_1919971:   var_EC = DGSite.DispID_41 & var_150 & "'"
  loc_1919985: Else
  loc_1919993:   var_EC = " And VIEWLEDGER.Site_Code='" & MemVar_1F95078 & "'"
  loc_1919999: End If
  loc_19199AE: Set var_138 = CVar(CLng(4))(1)
  loc_19199DB: (CStr(Trim(CVar(CStr(DGSite.DispID_41))))).Text = 
  loc_1919A19: var_168 = CVar(CStr(DGSite.DispID_41)) 'String
  loc_1919A28: var_B0 = CStr(Trim(var_168))
  loc_1919A3A: var_A0 = vbNullString
  loc_1919A40: var_A4 = vbNullString
  loc_1919A46: var_AC = CDbl(0)
  loc_1919A6D: unk_583395.Execute "SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "'", var_148, -1
  loc_1919A78: Set var_88 = CVar(CLng(4))(2)
  loc_1919A9C: If (var_88.RecordCount <= 0) Then
  loc_1919A9F:   Exit Sub
  loc_1919AA0: End If
  loc_1919AB2: var_138 = var_88.Fields
  loc_1919ABA: var_158 = var_138.Item("GroupNature")
  loc_1919B20: If CBool((var_158.Value = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_1919B27:   var_148 = CVar(var_AC(var_138)) 'Address
  loc_1919B2E:   Proc_183_7_EB17D4(var_168)
  loc_1919B39:   var_1E8 = 0
  loc_1919B56:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_1919B76:   var_1B8 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE<") & var_168 & " " & CVar(var_EC) 
  loc_1919B8D:   unk_583395.Execute CStr(var_1B8 & vbNullString), var_1D8, -1
  loc_1919B95:   var_138 = var_138.Fields
  loc_1919B9D:   var_1E8 = var_158.Item(var_158)
  loc_1919BA5:   var_184 = var_184.Value
  loc_1919BAE:   var_AC = CSng(var_1F8)
  loc_1919BD9: Else
  loc_1919BDC:   var_104 = MemVar_1F950F4
  loc_1919BE4:   Proc_183_7_EB17D4(var_148, var_104, var_AC)
  loc_1919BED:   var_1A8 = CVar(var_148(var_1F8)) 'Address
  loc_1919BF4:   Proc_183_7_EB17D4(var_1B8)
  loc_1919BFF:   var_238 = 0
  loc_1919C1C:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_1919C23:   var_168 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE>=") 'String
  loc_1919C2D:   var_114 = " AND V_DATE<"
  loc_1919C63:   unk_583395.Execute CStr(var_168 & var_148 & var_114 & var_1B8 & " " & CVar(var_EC) & vbNullString), var_228, -1
  loc_1919C6B:   var_138 = var_138.Fields
  loc_1919C73:   var_238 = var_158.Item(var_158)
  loc_1919C7B:   var_184 = var_184.Value
  loc_1919C84:   var_AC = CSng(var_248)
  loc_1919CB2: End If
  loc_1919CC2: Set var_138 = New
  loc_1919CD1: Call 0.Method_arg_1B8 (var_138, var_158, var_AC)
  loc_1919CDC: Set var_8C = var_138
  loc_1919CE5: Set var_8C = var_158
  loc_1919CF6: If (var_AC <> CDbl(0)) Then
  loc_1919D04:   Me.Recordset15.AddNew var_104, var_114
  loc_1919D0D:   var_148 = CVar(var_1A8(var_248)) 'Address
  loc_1919D1B:   var_8C.Collect = "V_DATE"
  loc_1919D2A:   If (var_AC < CDbl(0)) Then
  loc_1919D2D:     var_114 = "OPENING BALANCE"
  loc_1919D3C:     var_8C.Collect = "Name"
  loc_1919D45:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_1919D53:     var_8C.Collect = "cr"
  loc_1919D5B:   Else
  loc_1919D5B:     var_114 = "OPENING BALANCE"
  loc_1919D6A:     var_8C.Collect = "Name1"
  loc_1919D73:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_1919D78:     var_104 = "ADJAMT"
  loc_1919D81:     var_8C.Collect = var_104
  loc_1919D86:   End If
  loc_1919D91:   var_8C.Update var_104, var_114
  loc_1919D96: End If
  loc_1919DA3: var_104 = "SELECT VIEWLEDGER.V_Date,subgroup.NAME,Max(VIEWLEDGER.V_Type) V_Type,Max(VIEWLEDGER.V_No) V_No,Max(VIEWLEDGER.V_Sno) V_Sno,Max(VIEWLEDGER.DocID) DocID ,Max(VIEWLEDGER.Site_Code) Site_Code,Max(VIEWLEDGER.V_ADD) V_ADD,Max(VIEWLEDGER.Chq_No) Chq_No,Sum(VIEWLEDGER.Credit) Credit,Max(CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103)) AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE V_DATE Between "
  loc_1919DAC: var_148 = CVar(var_268(var_104)) 'Address
  loc_1919DB3: Proc_183_7_EB17D4(var_168, var_148, -1, var_138, var_114)
  loc_1919DBF: var_114 = " And "
  loc_1919DD3: Proc_183_7_EB17D4(var_1B8, CVar(var_114(var_114 & var_168 & var_114)))
  loc_1919E18: unk_583395.Execute CStr(var_114 & var_1B8 & " AND CREDIT>0 AND PARTY<>'" & CVar(var_B0) & "' " & CVar(var_EC) & " GROUP BY V_DATE,Name"), var_148, 
  loc_1919E23: Set var_94 = var_138
  loc_1919E56: var_104 = "SELECT VIEWLEDGER.V_Date,subgroup.NAME,Max(VIEWLEDGER.V_Type) V_Type,Max(VIEWLEDGER.V_No) V_No,Max(VIEWLEDGER.V_Sno) V_Sno,Max(VIEWLEDGER.DocID) DocID ,Max(VIEWLEDGER.Site_Code) Site_Code,Max(VIEWLEDGER.V_ADD) V_ADD,Max(VIEWLEDGER.Chq_No) Chq_No,Sum(VIEWLEDGER.Debit) Debit,Max(CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103)) AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE V_DATE Between "
  loc_1919E66: Proc_183_7_EB17D4(var_168, CVar(var_268(var_104)))
  loc_1919E6E: var_178 = -1 & var_168 
  loc_1919E72: var_114 = " And "
  loc_1919E86: Proc_183_7_EB17D4(var_1B8)
  loc_1919EBD: var_248 = CVar(var_138(var_114 & var_168 & var_114)) & var_1B8 & " AND DEBIT>0 AND PARTY<>'" & CVar(var_B0) & "' " & CVar(var_EC) & " GROUP BY V_DATE,Name" 
  loc_1919EC1: var_150 = CStr(var_248)
  loc_1919ECB: unk_583395.Execute var_150, , 
  loc_1919ED6: Set var_90 = var_138
  loc_1919F0B: If Not(var_90.EOF) Then
  loc_1919F3A:   var_D8 = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_1919F47: End If
  loc_1919F56: If Not(var_94.EOF) Then
  loc_1919F5F:   var_104 = "V_DATE"
  loc_1919F85:   var_D0 = CDate(var_94.Fields.Item(var_104).Value)
  loc_1919F92: End If
  loc_1919F94: var_DC = 0
  loc_1919F99: var_DE = 0
  loc_1919F9E: var_E0 = 0
  loc_1919FA3: var_E2 = 0
  loc_1919FA8: var_E4 = 0
  loc_1919FAD: var_E6 = 0
  loc_1919FB3: var_BC = vbNullString
  loc_1919FB9: var_C0 = vbNullString
  loc_1919FC9: var_E4 = var_E6(var_150).Text
  loc_1919FD3: var_C8 = CDate(var_150)
  loc_1919FDC: ' Referenced from: 191BBF7
  loc_1919FFA: If Not((var_90.EOF And var_94.EOF)) Then
  loc_191A00C:   If ((var_D0 = var_C8) Or (var_D8 = var_C8)) Then
  loc_191A01A:     var_8C.AddNew var_104, var_114
  loc_191A026:     If (var_D0 = var_C8) Then
  loc_191A048:       var_148 = CVar(var_94.Fields.Item("V_Type")) 'Address
  loc_191A056:       var_8C.Collect = "V_Type"
  loc_191A064:       var_114 = CDate(var_D0)
  loc_191A072:       var_8C.Collect = "V_DATE"
  loc_191A096:       var_148 = CVar(var_94.Fields.Item("V_NO")) 'Address
  loc_191A0A4:       var_8C.Collect = "V_NO"
  loc_191A0CE:       var_148 = CVar(var_94.Fields.Item("V_SNo")) 'Address
  loc_191A0DC:       var_8C.Collect = "V_SNo"
  loc_191A156:       var_26C = Me.Fields
  loc_191A200:       var_2A8 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_94.Fields.Item("DocID")), 1), vbNullString) + IIf((var_26C.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_191A205:       var_B4 = CStr(var_2A8)
  loc_191A2BE:       var_198 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_191A2EF:       var_248 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_94.Fields.Item("V_ADD"))), vbNullString))
  loc_191A2F4:       var_B4 = CStr(Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)))
  loc_191A34E:       var_198 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_191A380:       var_1C8 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(CVar(var_94.Fields.Item("V_Type"))))
  loc_191A385:       var_B4 = CStr(CVar(var_94.Fields.Item("V_ADD")))
  loc_191A3AF:       var_114 = vbNullString
  loc_191A3D1:       var_198 = (CVar(var_B4) + IIf((var_B4 = vbNullString), var_114, "/"))
  loc_191A40E:       var_1D8 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_94.Fields.Item("V_NO")))))
  loc_191A413:       var_B4 = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_191A442:       If (((var_DC = 0) Or (var_E0 = 0)) Or (var_E4 = 0)) Then
  loc_191A447:         var_DC = &HFF
  loc_191A46F:         var_148 = CVar(var_94.Fields.Item("Chq_No")) 'Address
  loc_191A498:         If (Proc_183_2_E5AE94(Trim(var_148), var_DC, var_148, var_148, var_114, var_148, var_C8) <> vbNullString) Then
  loc_191A4DB:           var_1A8 = (var_DE + Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_E2, var_E0))))
  loc_191A4E4:           var_1B8 = (CVar(var_94.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_191A507:           var_1C8 = CVar(var_94.Fields.Item("ChqDate")) 'Address
  loc_191A516:           var_1D8 = (var_D0 + CVar(Proc_183_2_E5AE94(var_1C8, Str(CVar(var_94.Fields.Item("V_NO"))), var_DC)))
  loc_191A51B:           var_BC = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_191A53B:         End If
  loc_191A576:         If (Len(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Name")))) <> 0) Then
  loc_191A5A1:           var_168 = CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Name")))) 'String
  loc_191A5AE:           var_8C.Collect = "Name"
  loc_191A5F8:           var_178 = Format(CVar(var_94.Fields.Item("Credit")), "0.00")
  loc_191A60A:           var_8C.Collect = "cr"
  loc_191A61D:           var_E4 = &HFF
  loc_191A622:           var_E0 = &HFF
  loc_191A628:         Else
  loc_191A647:           Set var_138 = CVar(CLng(2))(1)
  loc_191A684:           If CBool((var_E0 = 0) And (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes")) Then
  loc_191A68D:             If (var_E4 = 0) Then
  loc_191A6CB:               var_178 = Format(CVar(var_94.Fields.Item("Credit")), "0.00")
  loc_191A6DD:               var_8C.Collect = "cr"
  loc_191A6EE:               var_114 = "As Per Detail"
  loc_191A6FD:               var_8C.Collect = "Name"
  loc_191A704:               var_E4 = &HFF
  loc_191A71C:               Set var_138 = CVar(CLng(2))(1)
  loc_191A74F:               If (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes") Then
  loc_191A75F:                 var_114 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_191A7D3:                 unk_583395.Execute CStr(var_114 & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value), Str(CVar(var_94.Fields.Item("V_NO"))), -1
  loc_191A7DE:                 Set var_98 = var_26C
  loc_191A800:               End If
  loc_191A803:             Else
  loc_191A812:               If Not(var_98.EOF) Then
  loc_191A83F:                 var_114 = 0
  loc_191A851:                 If (var_98.Fields.Item("Debit").Value > var_114) Then
  loc_191A8A1:                   Proc_183_4_EAC738(var_1C8, CVar(var_98.Fields.Item("Debit")), var_26C, var_E4, var_114)
  loc_191A8CB:                   var_198 = (1 + CVar(Proc_183_15_EAD490(CStr(var_98.Fields.Item("Name").Value), &H16, Space(2), var_178)))
  loc_191A8D4:                   var_1A8 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_191A8EA:                   var_1D8 = CVar(Proc_183_16_EAF86C(CStr(var_1C8), &HC, " " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value)) 'String
  loc_191A8ED:                   var_1F8 = (1 + var_1D8)
  loc_191A8F6:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_191A904:                   var_8C.Collect = "Name"
  loc_191A933:                 Else
  loc_191A980:                   Proc_183_4_EAC738(var_1C8, CVar(var_98.Fields.Item("Credit")), vbNullString)
  loc_191A9AA:                   var_198 = (var_E0 + CVar(Proc_183_15_EAD490(CStr(var_98.Fields.Item("Name").Value), &H16, Space(2))))
  loc_191A9B3:                   var_1A8 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_191A9CC:                   var_1F8 = (" " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value + CVar(Proc_183_16_EAF86C(CStr(var_1C8), &HC)))
  loc_191A9D5:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_191A9E3:                   var_8C.Collect = "Name"
  loc_191AA0F:                 End If
  loc_191AA12:                 var_98.MoveNext
  loc_191AA17:               End If
  loc_191AA28:               If (var_98.EOF = &HFF) Then
  loc_191AA2D:                 var_E0 = &HFF
  loc_191AA30:               End If
  loc_191AA30:             End If
  loc_191AA33:           Else
  loc_191AA6E:             var_178 = Format(CVar(var_94.Fields.Item("Credit")), "0.00")
  loc_191AA80:             var_8C.Collect = "cr"
  loc_191AABA:             var_BC = CStr(Trim(Mid(var_BC, &H25, 510)))
  loc_191AAC8:             var_E4 = &HFF
  loc_191AACD:             var_E0 = &HFF
  loc_191AAD0:           End If
  loc_191AAD0:         End If
  loc_191AAE8:         If (((Len(var_BC) <= 0) And (var_E0 = &HFF)) And (var_E4 = &HFF)) Then
  loc_191AAED:           var_DC = 0
  loc_191AAF3:           var_94.MoveNext
  loc_191AB07:           If Not(var_94.EOF) Then
  loc_191AB36:             var_D0 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_191AB46:           Else
  loc_191AB62:             var_D0 = CDate(DateAdd("D", CDbl(1), CVar(var_DC(var_D0))))
  loc_191AB6C:           End If
  loc_191AB6C:         End If
  loc_191AB6F:       Else
  loc_191ABAE:         If (Len(CStr(Trim(Mid(var_BC, &H25, 510)))) <= 0) Then
  loc_191ABB3:           var_DC = 0
  loc_191ABB8:           var_E0 = 0
  loc_191ABBD:           var_E4 = 0
  loc_191ABC3:           var_94.MoveNext
  loc_191ABD7:           If Not(var_94.EOF) Then
  loc_191AC06:             var_D0 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_191AC16:           Else
  loc_191AC32:             var_D0 = CDate(DateAdd("D", CDbl(1), CVar(var_E4(var_D0))))
  loc_191AC3C:           End If
  loc_191AC3C:         End If
  loc_191AC3C:       End If
  loc_191AC3C:     End If
  loc_191AC43:     If (var_D8 = var_C8) Then
  loc_191AC65:       var_148 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_191AC73:       var_8C.Collect = "vType"
  loc_191AC9D:       var_148 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_191ACAB:       var_8C.Collect = "VNo"
  loc_191ACB9:       var_114 = CDate(var_D8)
  loc_191ACC7:       var_8C.Collect = "V_DATE"
  loc_191ACEB:       var_148 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_191ACF9:       var_8C.Collect = "VSno"
  loc_191AD73:       var_26C = Me.Fields
  loc_191AE1D:       var_2A8 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + IIf((var_26C.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_191AE22:       var_B8 = CStr(var_2A8)
  loc_191AEDB:       var_198 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_191AF04:       var_228 = IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString)
  loc_191AF0C:       var_248 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + var_228)
  loc_191AF11:       var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_191AF6B:       var_198 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_191AF9D:       var_1C8 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_191AFA2:       var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_191AFCC:       var_114 = vbNullString
  loc_191AFEE:       var_198 = (CVar(var_B8) + IIf((var_B8 = vbNullString), var_114, "/"))
  loc_191B02B:       var_1D8 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_191B030:       var_B8 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_191B05F:       If (((var_DE = 0) Or (var_E2 = 0)) Or (var_E6 = 0)) Then
  loc_191B08C:         var_148 = CVar(var_90.Fields.Item("Chq_No")) 'Address
  loc_191B0B5:         If (Proc_183_2_E5AE94(Trim(var_148), &HFF, var_148, var_114, var_148, var_148, var_D0) <> vbNullString) Then
  loc_191B0F8:           var_1A8 = (var_D0 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_E0, var_DC))))
  loc_191B101:           var_1B8 = (CVar(var_90.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_191B124:           var_1C8 = CVar(var_90.Fields.Item("ChqDate")) 'Address
  loc_191B133:           var_1D8 = (var_E4 + CVar(Proc_183_2_E5AE94(var_1C8, Str(CVar(var_90.Fields.Item("V_NO"))), var_E0)))
  loc_191B138:           var_C0 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_191B158:         End If
  loc_191B193:         If (Len(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")))) <> 0) Then
  loc_191B1B5:           var_148 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_191B1C3:           var_8C.Collect = "Name1"
  loc_191B209:           var_178 = Format(CVar(var_90.Fields.Item("Debit")), "0.00")
  loc_191B21B:           var_8C.Collect = "ADJAMT"
  loc_191B22E:           var_E6 = &HFF
  loc_191B233:           var_E2 = &HFF
  loc_191B239:         Else
  loc_191B258:           Set var_138 = CVar(CLng(2))(1)
  loc_191B295:           If CBool((var_E2 = 0) And (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes")) Then
  loc_191B29E:             If (var_E6 = 0) Then
  loc_191B2DC:               var_178 = Format(CVar(var_90.Fields.Item("Debit")), "0.00")
  loc_191B2EE:               var_8C.Collect = "ADJAMT"
  loc_191B2FF:               var_114 = "As Per Detail"
  loc_191B30E:               var_8C.Collect = "Name1"
  loc_191B315:               var_E6 = &HFF
  loc_191B32D:               Set var_138 = CVar(CLng(2))(1)
  loc_191B360:               If (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes") Then
  loc_191B370:                 var_114 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_191B3E4:                 unk_583395.Execute CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value), Str(CVar(var_90.Fields.Item("V_NO"))), -1
  loc_191B3EF:                 Set var_9C = var_26C
  loc_191B411:               End If
  loc_191B414:             Else
  loc_191B423:               If Not(var_9C.EOF) Then
  loc_191B450:                 var_114 = 0
  loc_191B462:                 If (var_9C.Fields.Item("Debit").Value > var_114) Then
  loc_191B4B2:                   Proc_183_4_EAC738(var_1C8, CVar(var_9C.Fields.Item("Debit")), var_26C, var_E6, var_114)
  loc_191B4DC:                   var_198 = (1 + CVar(Proc_183_15_EAD490(CStr(var_9C.Fields.Item("Name").Value), &H16, Space(2), var_178)))
  loc_191B4E5:                   var_1A8 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_191B4FB:                   var_1D8 = CVar(Proc_183_16_EAF86C(CStr(var_1C8), &HC, " " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)) 'String
  loc_191B4FE:                   var_1F8 = (1 + var_1D8)
  loc_191B507:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_191B515:                   var_8C.Collect = "Name1"
  loc_191B544:                 Else
  loc_191B591:                   Proc_183_4_EAC738(var_1C8, CVar(var_9C.Fields.Item("Credit")), vbNullString)
  loc_191B5BB:                   var_198 = (var_E2 + CVar(Proc_183_15_EAD490(CStr(var_9C.Fields.Item("Name").Value), &H16, Space(2))))
  loc_191B5C4:                   var_1A8 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_191B5DA:                   var_1D8 = CVar(Proc_183_16_EAF86C(CStr(var_1C8), &HC)) 'String
  loc_191B5DD:                   var_1F8 = (" " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value + var_1D8)
  loc_191B5E6:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_191B5F4:                   var_8C.Collect = "Name1"
  loc_191B620:                 End If
  loc_191B623:                 var_9C.MoveNext
  loc_191B628:               End If
  loc_191B639:               If (var_9C.EOF = &HFF) Then
  loc_191B63E:                 var_E2 = &HFF
  loc_191B641:               End If
  loc_191B641:             End If
  loc_191B644:           Else
  loc_191B66D:             var_C0 = CStr(Trim(Mid(var_C0, &H25, 510)))
  loc_191B69F:             var_114 = "0.00"
  loc_191B6B4:             var_178 = Format(CVar(var_90.Fields.Item("Debit")), var_114)
  loc_191B6C6:             var_8C.Collect = "ADJAMT"
  loc_191B6D9:             var_E6 = &HFF
  loc_191B6DE:             var_E2 = &HFF
  loc_191B6E1:           End If
  loc_191B6E1:         End If
  loc_191B6F9:         If (((Len(var_C0) <= 0) And (var_E2 = &HFF)) And (var_E6 = &HFF)) Then
  loc_191B6FE:           var_DE = 0
  loc_191B704:           var_90.MoveNext
  loc_191B718:           If Not(var_90.EOF) Then
  loc_191B747:             var_D8 = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_191B757:           Else
  loc_191B773:             var_D8 = CDate(DateAdd("D", CDbl(1), CVar(var_DE(var_D8))))
  loc_191B77D:           End If
  loc_191B77D:         End If
  loc_191B780:       Else
  loc_191B7BF:         If (Len(CStr(Trim(Mid(var_C0, &H25, 510)))) <= 0) Then
  loc_191B7C4:           var_DE = 0
  loc_191B7C9:           var_E2 = 0
  loc_191B7CE:           var_E6 = 0
  loc_191B7D4:           var_90.MoveNext
  loc_191B7DF:           var_14A = var_90.EOF
  loc_191B7E8:           If Not(var_14A) Then
  loc_191B7F1:             var_104 = "V_DATE"
  loc_191B817:             var_D8 = CDate(var_90.Fields.Item(var_104).Value)
  loc_191B827:           Else
  loc_191B843:             var_D8 = CDate(DateAdd("D", CDbl(1), CVar(var_E6(var_D8))))
  loc_191B84D:           End If
  loc_191B84D:         End If
  loc_191B84D:       End If
  loc_191B84D:     End If
  loc_191B858:     var_8C.Update var_104, var_114
  loc_191B860:   Else
  loc_191B87A:     var_158 = var_88.Fields.Item("GroupNature")
  loc_191B882:     var_148 = var_158.Value
  loc_191B8E0:     If CBool((var_148 = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_191B8EE:       Proc_183_7_EB17D4(var_148, var_C8, var_D8, var_E2, var_DE, var_D8)
  loc_191B8F9:       var_218 = 0
  loc_191B916:       var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191B91D:       var_168 = CVar(CStr("A" & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE<=") 'String
  loc_191B923:       var_178 = var_168 & var_148 
  loc_191B936:       var_1A8 = var_178 & " " & CVar(var_EC) 
  loc_191B94D:       unk_583395.Execute CStr(var_1A8 & vbNullString), var_1C8, -1
  loc_191B955:       var_138 = var_138.Fields
  loc_191B95D:       var_218 = var_158.Item(var_158)
  loc_191B965:       var_184 = var_184.Value
  loc_191B96E:       var_AC = CSng(var_1D8)
  loc_191B997:     Else
  loc_191B99A:       var_104 = MemVar_1F950F4
  loc_191B9A2:       Proc_183_7_EB17D4(var_148, var_104, var_AC, var_1D8, var_E2)
  loc_191B9B2:       Proc_183_7_EB17D4(var_1A8, var_C8, var_E6, var_178)
  loc_191B9BD:       var_258 = 0
  loc_191B9DA:       var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191B9E1:       var_168 = CVar(CStr(" " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE>=") 'String
  loc_191B9EB:       var_114 = " AND V_DATE<="
  loc_191BA00:       var_1C8 = var_168 & var_148 & var_114 & var_1A8 & " " 
  loc_191BA0A:       var_1D8 = var_1C8 & CVar(var_EC) 
  loc_191BA21:       unk_583395.Execute CStr(var_1D8 & vbNullString), vbNullString, -1
  loc_191BA29:       var_138 = var_138.Fields
  loc_191BA31:       var_258 = var_158.Item(var_158)
  loc_191BA39:       var_184 = var_184.Value
  loc_191BA42:       var_AC = CSng(var_228)
  loc_191BA6E:     End If
  loc_191BA75:     If (var_AC <> CDbl(0)) Then
  loc_191BA83:       var_8C.AddNew var_104, var_114
  loc_191BA8B:       var_114 = CDate(var_C8)
  loc_191BA99:       var_8C.Collect = "V_DATE"
  loc_191BAA5:       If (var_AC > CDbl(0)) Then
  loc_191BAA8:         var_114 = "CLOSING BALANCE"
  loc_191BAB7:         var_8C.Collect = "Name"
  loc_191BAC0:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191BACE:         var_8C.Collect = "cr"
  loc_191BAD6:       Else
  loc_191BAD6:         var_114 = "CLOSING BALANCE"
  loc_191BAE5:         var_8C.Collect = "Name1"
  loc_191BAEE:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191BAF3:         var_104 = "ADJAMT"
  loc_191BAFC:         var_8C.Collect = var_104
  loc_191BB01:       End If
  loc_191BB0C:       var_8C.Update var_104, var_114
  loc_191BB11:     End If
  loc_191BB18:     If (var_D0 <= var_D8) Then
  loc_191BB24:       If (var_D0 = CDate("12:00:00 AM")) Then
  loc_191BB2A:         var_C8 = var_D8
  loc_191BB30:       Else
  loc_191BB33:         var_C8 = var_D0
  loc_191BB36:       End If
  loc_191BB39:     Else
  loc_191BB42:       If (var_D8 = CDate("12:00:00 AM")) Then
  loc_191BB48:         var_C8 = var_D0
  loc_191BB4E:       Else
  loc_191BB51:         var_C8 = var_D8
  loc_191BB54:       End If
  loc_191BB54:     End If
  loc_191BB5B:     If (var_AC <> CDbl(0)) Then
  loc_191BB69:       var_8C.AddNew var_104, var_114
  loc_191BB71:       var_114 = CDate(var_C8)
  loc_191BB7F:       var_8C.Collect = "V_DATE"
  loc_191BB8B:       If (var_AC < CDbl(0)) Then
  loc_191BB8E:         var_114 = "OPENING BALANCE"
  loc_191BB9D:         var_8C.Collect = "Name"
  loc_191BBA6:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191BBB4:         var_8C.Collect = "cr"
  loc_191BBBC:       Else
  loc_191BBBC:         var_114 = "OPENING BALANCE"
  loc_191BBCB:         var_8C.Collect = "Name1"
  loc_191BBD4:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191BBD9:         var_104 = "ADJAMT"
  loc_191BBE2:         var_8C.Collect = var_104
  loc_191BBE7:       End If
  loc_191BBF2:       var_8C.Update var_104, var_114
  loc_191BBF7:     End If
  loc_191BBF7:   End If
  loc_191BBF7:   GoTo loc_1919FDC
  loc_191BBFA: End If
  loc_191BC14: var_158 = var_88.Fields.Item("GroupNature")
  loc_191BC1C: var_148 = var_158.Value
  loc_191BC24: var_114 = "A"
  loc_191BC7A: If CBool((var_148 = var_114) Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_191BC88:   Proc_183_7_EB17D4(var_148, var_C8, var_114, var_114, var_114, var_114)
  loc_191BC93:   var_218 = 0
  loc_191BCB0:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191BCB7:   var_168 = CVar(CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE<=") 'String
  loc_191BCC1:   var_114 = " "
  loc_191BCD0:   var_1A8 = var_168 & var_148 & var_114 & CVar(var_EC) 
  loc_191BCE7:   unk_583395.Execute CStr(var_1A8 & vbNullString), var_1C8, -1
  loc_191BCEF:   var_138 = var_138.Fields
  loc_191BCF7:   var_218 = var_158.Item(var_158)
  loc_191BCFF:   var_184 = var_184.Value
  loc_191BD08:   var_AC = CSng(var_1D8)
  loc_191BD31: Else
  loc_191BD34:   var_104 = MemVar_1F950F4
  loc_191BD3C:   Proc_183_7_EB17D4(var_148, var_104, var_AC, var_1D8, var_114)
  loc_191BD4C:   Proc_183_7_EB17D4(var_1A8, var_C8, var_C8, var_C8)
  loc_191BD57:   var_258 = 0
  loc_191BD74:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191BD7B:   var_168 = CVar(CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE>=") 'String
  loc_191BD81:   var_178 = var_168 & var_148 
  loc_191BD85:   var_114 = " AND V_DATE<="
  loc_191BD8A:   var_198 = var_178 & var_114 
  loc_191BDBB:   unk_583395.Execute CStr(var_198 & var_1A8 & " " & CVar(var_EC) & vbNullString), vbNullString, -1
  loc_191BDC3:   var_138 = var_138.Fields
  loc_191BDCB:   var_258 = var_158.Item(var_158)
  loc_191BDD3:   var_184 = var_184.Value
  loc_191BDDC:   var_AC = CSng(var_228)
  loc_191BE08: End If
  loc_191BE0F: If (var_AC <> CDbl(0)) Then
  loc_191BE1D:   var_8C.AddNew var_104, var_114
  loc_191BE25:   var_114 = CDate(var_C8)
  loc_191BE33:   var_8C.Collect = "V_DATE"
  loc_191BE3F:   If (var_AC > CDbl(0)) Then
  loc_191BE42:     var_114 = "CLOSING BALANCE"
  loc_191BE51:     var_8C.Collect = "Name"
  loc_191BE5A:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_191BE68:     var_8C.Collect = "cr"
  loc_191BE70:   Else
  loc_191BE70:     var_114 = "CLOSING BALANCE"
  loc_191BE7F:     var_8C.Collect = "Name1"
  loc_191BE88:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_191BE8D:     var_104 = "ADJAMT"
  loc_191BE96:     var_8C.Collect = var_104
  loc_191BE9B:   End If
  loc_191BEA6:   var_8C.Update var_104, var_114
  loc_191BEAB: End If
  loc_191BEBF: If (var_8C.RecordCount > 0) Then
  loc_191BEC5:   var_8C.MoveFirst
  loc_191BECA: End If
  loc_191BEDE: If (var_8C.RecordCount <= 0) Then
  loc_191BEE7:   Call 0.Method_arg_50 (CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value), var_114, var_114, var_114, var_114, var_114)
  loc_191BF08:   MsgBox("** No Records Found to Print **", &H40, CVar(CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)), var_178, var_198)
  loc_191BF1D:   global_130 = 0
  loc_191BF20:   Exit Sub
  loc_191BF21: End If
  loc_191BF24: var_2AA = arg_C
  loc_191BF2D: If (var_2AA = 1) Then
  loc_191BF51:   MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, "Paper Setting", var_178, var_198)
  loc_191BF76:   Set var_138 = CVar(CLng(3))(1)
  loc_191BFA2:   Set var_184 = var_8C
  loc_191BFBB:   Call 0.Method_arg_1E4 (Me, var_184, CLng(Val(CStr(DGSite.DispID_41))), var_14A, Val(CStr(DGSite.DispID_41)), var_2AA)
  loc_191BFC6:   Set var_8C = var_184
  loc_191BFCC:   var_DA = var_14A
  loc_191BFE3:   global_130 = 0
  loc_191BFE6:   GoTo loc_191C161
  loc_191BFEC: Else
  loc_191BFF5:   var_150 = MemVar_1F953B4 & "\FaRozNamch.ttx"
  loc_191C002:   Set var_138 = var_8C 
  loc_191C00E:   var_14A = CreateFieldDefFile(var_138, var_150, &HFF, global_130, var_DA, global_130)
  loc_191C018:   Set var_8C = var_138
  loc_191C021:   var_2C4 = CVar(var_14A) 'Variant
  loc_191C044:   var_138 = Me.Fields
  loc_191C05C:   var_114 = "No"
  loc_191C06C:   var_124 = "LedSiteCode"
  loc_191C0D8:   var_1D8 = (var_138.Item("LedDivCode").Value = var_114) And (Me.Fields.Item(var_124).Value = "No") And (Me.Fields.Item("LedPrefix").Value = "No")
  loc_191C0F6:   If CBool(var_1D8) Then
  loc_191C105:     Call 0.Method_arg_EC (var_138, var_14A, var_AC, var_228)
  loc_191C110:     MemVar_1F951E8 = var_138
  loc_191C11A:   Else
  loc_191C126:     Call 0.Method_arg_E8 (var_138, var_C8)
  loc_191C131:     MemVar_1F951E8 = var_138
  loc_191C138:   End If
  loc_191C151:   Call 0.Method_arg_64 (var_138, CVar(var_8C), var_114)
  loc_191C159:   Call 0.Method_arg_2C (var_124, var_C8)
  loc_191C161: End If
  loc_191C161: ' Referenced from: 191BFE6
  loc_191C166: Set var_88 = Nothing
  loc_191C16E: Set var_90 = Nothing
  loc_191C176: Set var_94 = Nothing
  loc_191C17E: Set var_98 = Nothing
  loc_191C186: Set var_9C = Nothing
  loc_191C18E: Set var_8C = Nothing
  loc_191C191: Exit Sub
  loc_191C192: ' Referenced from: 1919698
  loc_191C1A0: Call 0.Method_arg_50 (var_150, 0)
  loc_191C1B5: Proc_183_57_104B0BC(var_150, "RozNamcha")
  loc_191C1C1: Exit Sub
End Sub

Public Sub Proc_203_81_19710B4
  'Data Table: 583348
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_124 As String
  Dim var_12C As String
  Dim var_BC As Recordset15
  Dim var_10C As Fields15
  Dim var_11C As Variant
  Dim var_E8 As Variant
  Dim var_B8 As Recordset15
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1C4 As Variant
  Dim var_16C As Recordset15
  Dim var_144 As Variant
  Dim var_C4 As Double
  Dim var_154 As Variant
  Dim var_1A4 As Variant
  Dim var_21C As Variant
  Dim unk_583395 As Connection15
  Dim var_C8 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_244 As Recordset15
  loc_196E374: On Error Goto loc_1971081
  loc_196E38C: Set var_10C = CVar(CLng(0))(0)
  loc_196E3B0: Call Proc_203_59_F525A0(CInt(0), CStr(var_11C))
  loc_196E3C4: If (var_126 = 0) Then
  loc_196E3CC:   global_130 = 0
  loc_196E3CF:   Exit Sub
  loc_196E3D0: End If
  loc_196E3D7: var_124 = var_8C & " Where Convert(Varchar(11),FromDate,103) +'-'+ Convert(Varchar(11),ToDate,103) in ('"
  loc_196E3EF: Set var_10C = CVar(CLng(0))(2)
  loc_196E42A: Call Proc_203_83_11614C4(New, var_10C, global_130)
  loc_196E432: Set var_B8 = var_10C
  loc_196E43C: var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) " & var_124 & CStr(DGSite.DispID_41) & "') "
  loc_196E45F: Me.Connection15.Execute var_124 & " Order By B.BudgetCrAmt,B.BudgetDrAmt", var_11C, -1
  loc_196E46A: Set var_BC = var_10C
  loc_196E4C9: var_AC = CStr(Format(DateAdd("YYYY", CDbl(&HFF), CVar(var_BC.Fields.Item("FromDate"))), "DD/MM/YYYY"))
  loc_196E530: var_B0 = CStr(Format(DateAdd("YYYY", CDbl(&HFF), CVar(var_BC.Fields.Item("ToDate"))), "DD/MM/YYYY"))
  loc_196E555: If (var_BC.RecordCount > 0) Then
  loc_196E558:   ' Referenced from: 1970F0F
  loc_196E567:   If Not(var_BC.EOF) Then
  loc_196E570:     var_D8 = "BudgetCRAmt"
  loc_196E594:     var_E8 = 0
  loc_196E5A6:     If (var_BC.Fields.Item(var_D8).Value > var_E8) Then
  loc_196E5AC:       Set var_16C = var_B8 
  loc_196E5BB:       var_B8.AddNew var_D8, var_E8
  loc_196E61F:       var_F8 = "-"
  loc_196E624:       var_164 = (Format(CVar(var_BC.Fields.Item("FromDate")), "DD/MM/YYYY") + 2)
  loc_196E640:       var_184 = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_196E64F:       var_1C4 = (1 + Format(var_184, "DD/MM/YYYY"))
  loc_196E65D:       var_16C.Collect = "BudgetPeriod"
  loc_196E69B:       var_11C = CVar(var_BC.Fields.Item("FromDate")) 'Address
  loc_196E6A9:       var_16C.Collect = "FromDate"
  loc_196E6D3:       var_11C = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_196E6E1:       var_16C.Collect = "ToDate"
  loc_196E714:       var_124 = Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), var_1C4, 1, Format(DateAdd("YYYY", CDbl(&HFF), CVar(var_BC.Fields.Item("ToDate"))), "DD/MM/YYYY"), 1)
  loc_196E725:       If (var_124 <> vbNullString) Then
  loc_196E747:         var_11C = CVar(var_BC.Fields.Item("AcCode")) 'Address
  loc_196E755:         var_16C.Collect = "AcCode"
  loc_196E788:         var_144 = CVar(Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcName")), CVar(var_BC.Fields.Item("AcName")), 1, 1)) 'String
  loc_196E795:         var_16C.Collect = "AcName"
  loc_196E7A7:       Else
  loc_196E7E0:         If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_144, 1) <> vbNullString) Then
  loc_196E802:           var_11C = CVar(var_BC.Fields.Item("AcGroupCode")) 'Address
  loc_196E810:           var_16C.Collect = "AcGroupCode"
  loc_196E843:           var_144 = CVar(Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupName")), CVar(var_BC.Fields.Item("AcGroupName")), 1)) 'String
  loc_196E850:           var_16C.Collect = "AcGroupName"
  loc_196E85F:         End If
  loc_196E85F:       End If
  loc_196E87E:       var_11C = CVar(var_BC.Fields.Item("BudgetCRAmt")) 'Address
  loc_196E88C:       var_16C.Collect = "BudgetedAmt"
  loc_196E8A6:       var_16C.Collect = "BudgetCrDr"
  loc_196E8EA:       If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), CDbl(0), "Cr", CVar(var_BC.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_196E8FA:         var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196E911:         var_10C = var_BC.Fields
  loc_196E929:         var_144 = "Cr" & var_10C.Item("AcCode").Value 
  loc_196E95C:         Proc_183_7_EB17D4(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_23C, -1)
  loc_196E997:         Proc_183_7_EB17D4(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196E9B6:         unk_583395.Execute CStr(var_144 & var_1EC & "'"), 1, var_10C
  loc_196E9C1:         Set var_C8 = var_240
  loc_196EA03:         If (var_C8.RecordCount > 0) Then
  loc_196EA25:           var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196EA2C:           Proc_183_3_E7DD58(var_144)
  loc_196EA35:           var_C4 = CSng(var_144)
  loc_196EA42:         End If
  loc_196EA45:       Else
  loc_196EA7E:         If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196EA8E:           var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196EAB5:           var_11C = var_BC.Fields.Item("AcGroupCode").Value
  loc_196EABD:           var_144 = "Cr" & var_11C 
  loc_196EAF0:           Proc_183_7_EB17D4(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_23C)
  loc_196EAF8:           var_1A4 = -1 & var_184 
  loc_196EB2B:           Proc_183_7_EB17D4(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196EB3C:           var_21C = var_240 & var_1EC & vbNullString 
  loc_196EB4A:           unk_583395.Execute CStr(var_21C), var_11C, 
  loc_196EB55:           Set var_C8 = var_240
  loc_196EB97:           If (var_C8.RecordCount > 0) Then
  loc_196EBB9:             var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196EBC0:             Proc_183_3_E7DD58(var_144)
  loc_196EBC9:             var_C4 = CSng(var_144)
  loc_196EBD6:           End If
  loc_196EBD6:         End If
  loc_196EBD6:       End If
  loc_196EBDA:       var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196EBE8:       var_16C.Collect = "ActualAmt"
  loc_196EC29:       If (var_16C.Fields.Item("ActualAmt").Value > 0) Then
  loc_196EC50:         var_154 = IIf((var_C4 > CDbl(0)), "Cr", "Dr")
  loc_196EC62:         var_16C.Collect = "ActualCrDr"
  loc_196ECC6:         var_154 = (var_16C.Fields.Item("ActualAmt").Value - var_16C.Fields.Item("BudgetedAmt").Value)
  loc_196ECD4:         var_16C.Collect = "Varience"
  loc_196ED3F:         var_154 = (var_16C.Fields.Item("ActualAmt").Value - var_16C.Fields.Item("BudgetedAmt").Value)
  loc_196ED6D:         var_184 = (var_154 / var_16C.Fields.Item("BudgetedAmt").Value)
  loc_196ED76:         var_1A4 = (var_184 * 100)
  loc_196ED84:         var_16C.Collect = "VariencePer"
  loc_196EDA1:       End If
  loc_196EDB0:       var_16C.Collect = "GroupType"
  loc_196EDEE:       If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), "CrGroup", var_1A4, var_154) <> vbNullString) Then
  loc_196EDF8:         var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_196EDFF:         var_12C = Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), "CrGroup", var_1A4, var_154) & "-"
  loc_196EE3A:         var_154 = CVar(CStr(DGSite.DispID_41) & var_B0 & "') And B.AcCode='") & var_BC.Fields.Item("AcCode").Value 
  loc_196EE3E:         var_E8 = "' Order By B.BudgetCrAmt"
  loc_196EE48:         var_88 = CStr(var_154 & var_E8)
  loc_196EE69:       Else
  loc_196EEA2:         If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) <> vbNullString) Then
  loc_196EEAC:           var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_196EEB3:           var_12C = Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) & "-"
  loc_196EED6:           var_10C = var_BC.Fields
  loc_196EEE6:           var_11C = var_10C.Item("AcGroupCode").Value
  loc_196EEFC:           var_88 = CStr(CVar(CStr(DGSite.DispID_41) & var_B0 & "') And B.AcGroupCode='") & var_11C & "' Order By B.BudgetCrAmt")
  loc_196EF1A:         End If
  loc_196EF1A:       End If
  loc_196EF30:       unk_583395.Execute var_88, var_11C, -1
  loc_196EF3B:       Set var_B4 = var_10C
  loc_196EF58:       If (var_B4.RecordCount > 0) Then
  loc_196EF97:         If (var_B4.Fields.Item("BudgetCRAmt").Value > 0) Then
  loc_196EFB9:           var_11C = CVar(var_B4.Fields.Item("BudgetCRAmt")) 'Address
  loc_196EFC7:           var_16C.Collect = "PreBudgetedAmt"
  loc_196EFE1:           var_16C.Collect = "PreBudgetCrDr"
  loc_196EFE9:           var_C4 = CDbl(0)
  loc_196F025:           If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Cr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_196F035:             var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196F04C:             var_10C = var_B4.Fields
  loc_196F05C:             var_11C = var_10C.Item("AcCode").Value
  loc_196F064:             var_144 = "Cr" & var_11C 
  loc_196F097:             Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_21C, -1)
  loc_196F0D2:             Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196F0E8:             unk_583395.Execute CStr(var_10C & var_1EC), var_C4, var_11C
  loc_196F0F3:             Set var_C8 = var_240
  loc_196F133:             If (var_C8.RecordCount > 0) Then
  loc_196F155:               var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196F15C:               Proc_183_3_E7DD58(var_144)
  loc_196F165:               var_C4 = CSng(var_144)
  loc_196F172:             End If
  loc_196F175:           Else
  loc_196F1AE:             If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196F1BE:               var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196F1E5:               var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_196F1ED:               var_144 = "Cr" & var_11C 
  loc_196F220:               Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_196F228:               var_1A4 = -1 & var_184 
  loc_196F25B:               Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196F271:               unk_583395.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_196F27C:               Set var_C8 = var_240
  loc_196F2BC:               If (var_C8.RecordCount > 0) Then
  loc_196F2DE:                 var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196F2E5:                 Proc_183_3_E7DD58(var_144)
  loc_196F2EE:                 var_C4 = CSng(var_144)
  loc_196F2FB:               End If
  loc_196F2FB:             End If
  loc_196F2FB:           End If
  loc_196F2FF:           var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196F30D:           var_16C.Collect = "PreActualAmt"
  loc_196F34E:           If (var_16C.Fields.Item("PreActualAmt").Value > 0) Then
  loc_196F375:             var_154 = IIf((var_C4 > CDbl(0)), "Cr", "Dr")
  loc_196F387:             var_16C.Collect = "PreActualCrDr"
  loc_196F3EB:             var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_196F3F9:             var_16C.Collect = "PreVarience"
  loc_196F464:             var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_196F492:             var_184 = (var_154 / var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_196F49B:             var_1A4 = (var_184 * 100)
  loc_196F4A9:             var_16C.Collect = "PreVariencePer"
  loc_196F4C6:           End If
  loc_196F4C9:         Else
  loc_196F505:           If (var_B4.Fields.Item("BudgetDrAmt").Value > 0) Then
  loc_196F527:             var_11C = CVar(var_B4.Fields.Item("BudgetDrAmt")) 'Address
  loc_196F535:             var_16C.Collect = "PreBudgetedAmt"
  loc_196F54F:             var_16C.Collect = "PreBudgetCrDr"
  loc_196F557:             var_C4 = CDbl(0)
  loc_196F593:             If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Dr", CVar(var_B4.Fields.Item("AcCode")), var_1A4) <> vbNullString) Then
  loc_196F5A3:               var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196F5CA:               var_11C = var_B4.Fields.Item("AcCode").Value
  loc_196F5D2:               var_144 = "Dr" & var_11C 
  loc_196F5DB:               var_154 = var_144 & "' And L.V_Date Between " 
  loc_196F605:               Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_154, var_21C, -1, var_240)
  loc_196F640:               Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_154 & var_184 & " And ", var_154)
  loc_196F656:               unk_583395.Execute CStr("Dr" & var_1EC), var_C4, var_11C
  loc_196F661:               Set var_C8 = var_240
  loc_196F6A1:               If (var_C8.RecordCount > 0) Then
  loc_196F6C3:                 var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196F6CA:                 Proc_183_3_E7DD58(var_144)
  loc_196F6D3:                 var_C4 = CSng(var_144)
  loc_196F6E0:               End If
  loc_196F6E3:             Else
  loc_196F71C:               If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196F72C:                 var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196F753:                 var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_196F75B:                 var_144 = "Dr" & var_11C 
  loc_196F78E:                 Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_196F796:                 var_1A4 = -1 & var_184 
  loc_196F7C9:                 Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_144 & "') And L.V_Date Between " & var_184 & " And ")
  loc_196F7DF:                 unk_583395.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_196F7EA:                 Set var_C8 = var_240
  loc_196F82A:                 If (var_C8.RecordCount > 0) Then
  loc_196F84C:                   var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196F853:                   Proc_183_3_E7DD58(var_144)
  loc_196F85C:                   var_C4 = CSng(var_144)
  loc_196F869:                 End If
  loc_196F869:               End If
  loc_196F869:             End If
  loc_196F86D:             var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196F87B:             var_16C.Collect = "PreActualAmt"
  loc_196F8BC:             If (var_16C.Fields.Item("PreActualAmt").Value > 0) Then
  loc_196F8E3:               var_154 = IIf((var_C4 > CDbl(0)), "Dr", "Cr")
  loc_196F8F5:               var_16C.Collect = "PreActualCrDr"
  loc_196F959:               var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_196F967:               var_16C.Collect = "PreVarience"
  loc_196F9D2:               var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_196FA09:               var_1A4 = ((var_154 / var_16C.Fields.Item("PreBudgetedAmt").Value) * 100)
  loc_196FA17:               var_16C.Collect = "PreVariencePer"
  loc_196FA34:             End If
  loc_196FA34:           End If
  loc_196FA34:         End If
  loc_196FA34:       End If
  loc_196FA36:       Set var_16C = Nothing 
  loc_196FA3D:     Else
  loc_196FA43:       var_D8 = "BudgetDrAmt"
  loc_196FA67:       var_E8 = 0
  loc_196FA79:       If (var_BC.Fields.Item(var_D8).Value > var_E8) Then
  loc_196FA7F:         Set var_244 = var_B8 
  loc_196FA8E:         var_B8.AddNew var_D8, var_E8
  loc_196FAEA:         var_154 = Format(CVar(var_BC.Fields.Item("FromDate")), "DD/MM/YYYY")
  loc_196FAF2:         var_F8 = "-"
  loc_196FAF7:         var_164 = (var_154 + "PreBudgetedAmt")
  loc_196FB0A:         var_1A4 = "DD/MM/YYYY"
  loc_196FB13:         var_184 = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_196FB22:         var_1C4 = (1 + Format(var_184, var_1A4))
  loc_196FB30:         var_244.Collect = "BudgetPeriod"
  loc_196FB6E:         var_11C = CVar(var_BC.Fields.Item("FromDate")) 'Address
  loc_196FB7C:         var_244.Collect = "FromDate"
  loc_196FBA6:         var_11C = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_196FBB4:         var_244.Collect = "ToDate"
  loc_196FBE7:         var_124 = Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("ToDate")), 1, var_16C.Fields.Item("PreBudgetedAmt").Value, 1)
  loc_196FBF8:         If (var_124 <> vbNullString) Then
  loc_196FC1A:           var_11C = CVar(var_BC.Fields.Item("AcCode")) 'Address
  loc_196FC28:           var_244.Collect = "AcCode"
  loc_196FC5B:           var_144 = CVar(Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcName")), CVar(var_BC.Fields.Item("AcName")), 1, var_1A4)) 'String
  loc_196FC68:           var_244.Collect = "AcName"
  loc_196FC7A:         Else
  loc_196FCB3:           If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_144, var_154) <> vbNullString) Then
  loc_196FCD5:             var_11C = CVar(var_BC.Fields.Item("AcGroupCode")) 'Address
  loc_196FCE3:             var_244.Collect = "AcGroupCode"
  loc_196FD16:             var_144 = CVar(Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupName")), CVar(var_BC.Fields.Item("AcGroupName")), var_154)) 'String
  loc_196FD23:             var_244.Collect = "AcGroupName"
  loc_196FD32:           End If
  loc_196FD32:         End If
  loc_196FD51:         var_11C = CVar(var_BC.Fields.Item("BudgetDrAmt")) 'Address
  loc_196FD5F:         var_244.Collect = "BudgetedAmt"
  loc_196FD79:         var_244.Collect = "BudgetCrDr"
  loc_196FD81:         var_C4 = CDbl(0)
  loc_196FDBD:         If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), var_C4, "Dr", CVar(var_BC.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_196FDCD:           var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196FDFC:           var_144 = "Dr" & var_BC.Fields.Item("AcCode").Value 
  loc_196FE2F:           Proc_183_7_EB17D4(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_21C, -1)
  loc_196FE6A:           Proc_183_7_EB17D4(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196FE80:           unk_583395.Execute CStr(var_144 & var_1EC), "Dr", var_C4
  loc_196FE8B:           Set var_C8 = var_240
  loc_196FECB:           If (var_C8.RecordCount > 0) Then
  loc_196FEED:             var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196FEF4:             Proc_183_3_E7DD58(var_144)
  loc_196FEFD:             var_C4 = CSng(var_144)
  loc_196FF0A:           End If
  loc_196FF0D:         Else
  loc_196FF46:           If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196FF56:             var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196FF7D:             var_11C = var_BC.Fields.Item("AcGroupCode").Value
  loc_196FF85:             var_144 = "Dr" & var_11C 
  loc_196FFB8:             Proc_183_7_EB17D4(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_196FFC0:             var_1A4 = -1 & var_184 
  loc_196FFF3:             Proc_183_7_EB17D4(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_1970009:             unk_583395.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_1970014:             Set var_C8 = var_240
  loc_1970054:             If (var_C8.RecordCount > 0) Then
  loc_1970076:               var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_197007D:               Proc_183_3_E7DD58(var_144)
  loc_1970086:               var_C4 = CSng(var_144)
  loc_1970093:             End If
  loc_1970093:           End If
  loc_1970093:         End If
  loc_1970097:         var_E8 = CVar(Abs(var_C4)) 'Double
  loc_19700A5:         var_244.Collect = "ActualAmt"
  loc_19700E6:         If (var_244.Fields.Item("ActualAmt").Value > 0) Then
  loc_197010D:           var_154 = IIf((var_C4 > CDbl(0)), "Dr", "Cr")
  loc_197011F:           var_244.Collect = "ActualCrDr"
  loc_1970183:           var_154 = (var_244.Fields.Item("ActualAmt").Value - var_244.Fields.Item("BudgetedAmt").Value)
  loc_1970191:           var_244.Collect = "Varience"
  loc_19701FC:           var_154 = (var_244.Fields.Item("ActualAmt").Value - var_244.Fields.Item("BudgetedAmt").Value)
  loc_197022A:           var_184 = (var_154 / var_244.Fields.Item("BudgetedAmt").Value)
  loc_1970233:           var_1A4 = (var_184 * 100)
  loc_1970241:           var_244.Collect = "VariencePer"
  loc_197025E:         End If
  loc_197026D:         var_244.Collect = "GroupType"
  loc_19702AB:         If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), "DrGroup", var_1A4, var_154) <> vbNullString) Then
  loc_19702B5:           var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_19702BC:           var_12C = Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), "DrGroup", var_1A4, var_154) & "-"
  loc_19702F7:           var_154 = CVar(CStr(DGSite.DispID_41) & var_B0 & "') And B.AcCode='") & var_BC.Fields.Item("AcCode").Value 
  loc_19702FB:           var_E8 = "'"
  loc_1970305:           var_88 = CStr(var_154 & var_E8)
  loc_1970326:         Else
  loc_197035F:           If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) <> vbNullString) Then
  loc_1970369:             var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_1970370:             var_12C = Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) & "-"
  loc_1970393:             var_10C = var_BC.Fields
  loc_19703A3:             var_11C = var_10C.Item("AcGroupCode").Value
  loc_19703B9:             var_88 = CStr(CVar(CStr(DGSite.DispID_41) & var_B0 & "') And B.AcGroupCode='") & var_11C & "'")
  loc_19703D7:           End If
  loc_19703D7:         End If
  loc_19703ED:         unk_583395.Execute var_88, var_11C, -1
  loc_19703F8:         Set var_B4 = var_10C
  loc_1970415:         If (var_B4.RecordCount > 0) Then
  loc_1970454:           If (var_B4.Fields.Item("BudgetDrAmt").Value > 0) Then
  loc_1970476:             var_11C = CVar(var_B4.Fields.Item("BudgetDrAmt")) 'Address
  loc_1970484:             var_244.Collect = "PreBudgetedAmt"
  loc_197049E:             var_244.Collect = "PreBudgetCrDr"
  loc_19704A6:             var_C4 = CDbl(0)
  loc_19704E2:             If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Dr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_19704F2:               var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode='"
  loc_1970509:               var_10C = var_B4.Fields
  loc_1970519:               var_11C = var_10C.Item("AcCode").Value
  loc_1970521:               var_144 = "Dr" & var_11C 
  loc_1970554:               Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_21C, -1)
  loc_197058F:               Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_19705A5:               unk_583395.Execute CStr(var_10C & var_1EC), var_C4, var_11C
  loc_19705B0:               Set var_C8 = var_240
  loc_19705F0:               If (var_C8.RecordCount > 0) Then
  loc_1970612:                 var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_1970619:                 Proc_183_3_E7DD58(var_144)
  loc_1970622:                 var_C4 = CSng(var_144)
  loc_197062F:               End If
  loc_1970632:             Else
  loc_197066B:               If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_197067B:                 var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_19706A2:                 var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_19706AA:                 var_144 = "Dr" & var_11C 
  loc_19706DD:                 Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_19706E5:                 var_1A4 = -1 & var_184 
  loc_1970718:                 Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_197072E:                 unk_583395.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_1970739:                 Set var_C8 = var_240
  loc_1970779:                 If (var_C8.RecordCount > 0) Then
  loc_197079B:                   var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_19707A2:                   Proc_183_3_E7DD58(var_144)
  loc_19707AB:                   var_C4 = CSng(var_144)
  loc_19707B8:                 End If
  loc_19707B8:               End If
  loc_19707B8:             End If
  loc_19707BC:             var_E8 = CVar(Abs(var_C4)) 'Double
  loc_19707CA:             var_244.Collect = "PreActualAmt"
  loc_197080B:             If (var_244.Fields.Item("PreActualAmt").Value > 0) Then
  loc_1970832:               var_154 = IIf((var_C4 > CDbl(0)), "Dr", "Cr")
  loc_1970844:               var_244.Collect = "PreActualCrDr"
  loc_19708A8:               var_154 = (var_244.Fields.Item("PreActualAmt").Value - var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_19708B6:               var_244.Collect = "PreVarience"
  loc_1970921:               var_154 = (var_244.Fields.Item("PreActualAmt").Value - var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_197094F:               var_184 = (var_154 / var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_1970958:               var_1A4 = (var_184 * 100)
  loc_1970966:               var_244.Collect = "PreVariencePer"
  loc_1970983:             End If
  loc_1970986:           Else
  loc_19709C2:             If (var_B4.Fields.Item("BudgetCRAmt").Value > 0) Then
  loc_19709E4:               var_11C = CVar(var_B4.Fields.Item("BudgetCRAmt")) 'Address
  loc_19709F2:               var_244.Collect = "PreBudgetedAmt"
  loc_1970A0C:               var_244.Collect = "PreBudgetCrDr"
  loc_1970A14:               var_C4 = CDbl(0)
  loc_1970A3F:               var_124 = Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Cr", CVar(var_B4.Fields.Item("AcCode")), var_1A4)
  loc_1970A50:               If (var_124 <> vbNullString) Then
  loc_1970A60:                 var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode='"
  loc_1970A87:                 var_11C = var_B4.Fields.Item("AcCode").Value
  loc_1970A8F:                 var_144 = "Cr" & var_11C 
  loc_1970A98:                 var_154 = var_144 & "' And L.V_Date Between " 
  loc_1970AC2:                 Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_154, var_21C, -1, var_240)
  loc_1970AFD:                 Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_154 & var_184 & " And ", var_154)
  loc_1970B13:                 unk_583395.Execute CStr("Cr" & var_1EC), var_C4, var_11C
  loc_1970B1E:                 Set var_C8 = var_240
  loc_1970B5E:                 If (var_C8.RecordCount > 0) Then
  loc_1970B80:                   var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_1970B87:                   Proc_183_3_E7DD58(var_144)
  loc_1970B90:                   var_C4 = CSng(var_144)
  loc_1970B9D:                 End If
  loc_1970BA0:               Else
  loc_1970BD9:                 If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_1970BE9:                   var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_1970C10:                   var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_1970C18:                   var_144 = "Cr" & var_11C 
  loc_1970C4B:                   Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_1970C53:                   var_1A4 = -1 & var_184 
  loc_1970C86:                   Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_144 & "') And L.V_Date Between " & var_184 & " And ")
  loc_1970C92:                   var_124 = CStr(var_240 & var_1EC)
  loc_1970C9C:                   unk_583395.Execute var_124, var_11C, 
  loc_1970CA7:                   Set var_C8 = var_240
  loc_1970CE7:                   If (var_C8.RecordCount > 0) Then
  loc_1970D09:                     var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_1970D10:                     Proc_183_3_E7DD58(var_144)
  loc_1970D19:                     var_C4 = CSng(var_144)
  loc_1970D26:                   End If
  loc_1970D26:                 End If
  loc_1970D26:               End If
  loc_1970D2A:               var_E8 = CVar(Abs(var_C4)) 'Double
  loc_1970D38:               var_244.Collect = "PreActualAmt"
  loc_1970D79:               If (var_244.Fields.Item("PreActualAmt").Value > 0) Then
  loc_1970DA0:                 var_154 = IIf((var_C4 > CDbl(0)), "Cr", "Dr")
  loc_1970DB2:                 var_244.Collect = "PreActualCrDr"
  loc_1970E16:                 var_154 = (var_244.Fields.Item("PreActualAmt").Value - var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_1970E24:                 var_244.Collect = "PreVarience"
  loc_1970E41:                 var_D8 = "PreActualAmt"
  loc_1970E6B:                 var_E8 = "PreBudgetedAmt"
  loc_1970E8F:                 var_154 = (var_244.Fields.Item(var_D8).Value - var_244.Fields.Item(var_E8).Value)
  loc_1970E99:                 var_F8 = "PreBudgetedAmt"
  loc_1970EB5:                 var_164 = var_244.Fields.Item(var_F8).Value
  loc_1970EC6:                 var_1A4 = ((var_154 / var_164) * 100)
  loc_1970ED4:                 var_244.Collect = "PreVariencePer"
  loc_1970EF1:               End If
  loc_1970EF1:             End If
  loc_1970EF1:           End If
  loc_1970EF1:         End If
  loc_1970EF3:         Set var_244 = Nothing 
  loc_1970EF7:       End If
  loc_1970EF7:     End If
  loc_1970EFA:     var_BC.MoveNext
  loc_1970F0A:     var_B8.Update var_D8, var_E8
  loc_1970F0F:     GoTo loc_196E558
  loc_1970F12:   End If
  loc_1970F12: End If
  loc_1970F26: If (var_B8.RecordCount <= 0) Then
  loc_1970F2F:   Call 0.Method_arg_50 (var_124, var_1A4, var_154, var_154)
  loc_1970F45:   var_D8 = "** No Records Found to Print **"
  loc_1970F50:   MsgBox(var_D8, &H40, CVar(var_124), var_154, var_164)
  loc_1970F65:   global_130 = 0
  loc_1970F68:   Exit Sub
  loc_1970F69: End If
  loc_1970F6F: global_124 = "FABudgetVarience"
  loc_1970F79: Call 0.Method_arg_50 (var_124, global_130, var_E8)
  loc_1970F96: global_120 = CStr(Ucase(CVar(var_124)))
  loc_1970FAD: If (global_130 = 0) Then
  loc_1970FB0:   Exit Sub
  loc_1970FB1: End If
  loc_1970FD8: Set var_10C = var_B8 
  loc_1970FDF: CreateFieldDefFile(var_10C, MemVar_1F953B4 & "\" & global_124 & ".ttx", &HFF)
  loc_197100A: var_124 = MemVar_1F953B4 & "\"
  loc_1971024: Call 0.Method_arg_1C (var_124 & global_124 & ".RPT", var_D8, var_10C)
  loc_197102F: MemVar_1F951E8 = var_10C
  loc_1971058: Call 0.Method_arg_64 (var_10C, CVar(var_10C), var_E8)
  loc_1971060: Call 0.Method_arg_2C (var_F8, var_C4)
  loc_197106D: Set var_B4 = Nothing
  loc_1971075: Set var_B8 = Nothing
  loc_197107D: Set var_BC = Nothing
  loc_1971080: Exit Sub
  loc_1971081: ' Referenced from: 196E374
  loc_197108F: Call 0.Method_arg_50 (var_124, 0)
  loc_19710A4: Proc_183_57_104B0BC(var_124, "FaBudgetVariance")
  loc_19710B0: Exit Sub
End Sub

Public Sub Proc_203_82_17DF0D4
  'Data Table: 583348
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_120 As Variant
  Dim var_118 As String
  Dim unk_583395 As Connection15
  Dim var_B4 As Recordset15
  Dim var_100 As Variant
  Dim var_DC As Variant
  Dim var_9E As Integer
  Dim var_AA As Integer
  Dim var_B0 As Recordset15
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_160 As Variant
  Dim var_178 As Variant
  Dim var_1B8 As Variant
  Dim var_140 As Recordset15
  Dim var_13C As Variant
  Dim var_150 As Variant
  Dim var_198 As Variant
  Dim var_1F0 As Variant
  Dim var_B8 As Recordset15
  Dim var_A8 As Double
  Dim var_230 As Variant
  Dim var_2BC As Recordset15
  loc_17DCFAC: On Error Goto loc_17DF0A4
  loc_17DCFC4: Set var_100 = CVar(CLng(0))(0)
  loc_17DCFE8: Call Proc_203_59_F525A0(CInt(0), CStr(var_110))
  loc_17DCFFC: If (var_11A = 0) Then
  loc_17DD004:   global_130 = 0
  loc_17DD007:   Exit Sub
  loc_17DD008: End If
  loc_17DD014: Set var_100 = var_120(1)
  loc_17DD01A: Call 0.Method_Proc_203_82_17DF0D40 (var_112, global_130)
  loc_17DD022: var_11A = var_120.Value
  loc_17DD038: If (CLng(var_112) = 0) Then
  loc_17DD042:   var_118 = var_8C & " Where CStr(FromDate) +'-'+ CStr(ToDate) in ('"
  loc_17DD05A:   Set var_100 = CVar(CLng(0))(2)
  loc_17DD076:   var_8C = var_118 & CStr(DGSite.DispID_41) & "') "
  loc_17DD088: End If
  loc_17DD095: Call Proc_203_84_1272628(New, var_100)
  loc_17DD09D: Set var_B0 = var_100
  loc_17DD0B4: var_118 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) " & var_8C
  loc_17DD0C4: unk_583395.Execute var_118 & " Order By B.BudgetDrAmt,B.BudgetCrAmt", var_110, -1
  loc_17DD0CF: Set var_B4 = var_100
  loc_17DD0F3: If (var_B4.RecordCount > 0) Then
  loc_17DD0F6:   ' Referenced from: 17DEF5B
  loc_17DD105:   If Not(var_B4.EOF) Then
  loc_17DD10E:     var_CC = "BudgetCRAmt"
  loc_17DD132:     var_DC = 0
  loc_17DD144:     If (var_B4.Fields.Item(var_CC).Value > var_DC) Then
  loc_17DD149:       var_9E = 0
  loc_17DD14E:       var_AA = 0
  loc_17DD154:       Set var_140 = var_B0 
  loc_17DD163:       var_B0.AddNew var_CC, var_DC
  loc_17DD1C7:       var_EC = "-"
  loc_17DD1CC:       var_160 = (Format(CVar(var_B4.Fields.Item("FromDate")), "DD/MM/YYYY") + 2)
  loc_17DD1E8:       var_178 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DD1F7:       var_1B8 = (1 + Format(var_178, "DD/MM/YYYY"))
  loc_17DD205:       var_140.Collect = "BudgetPeriod"
  loc_17DD243:       var_110 = CVar(var_B4.Fields.Item("FromDate")) 'Address
  loc_17DD251:       var_140.Collect = "FromDate"
  loc_17DD27B:       var_110 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DD289:       var_140.Collect = "ToDate"
  loc_17DD2BC:       var_118 = Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), var_1B8, 1, var_160)
  loc_17DD2CD:       If (var_118 <> vbNullString) Then
  loc_17DD2EF:         var_110 = CVar(var_B4.Fields.Item("AcCode")) 'Address
  loc_17DD2FD:         var_140.Collect = "AcCode"
  loc_17DD330:         var_13C = CVar(Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcName")), CVar(var_B4.Fields.Item("AcName")), 1, 1)) 'String
  loc_17DD33D:         var_140.Collect = "AcName"
  loc_17DD34F:       Else
  loc_17DD388:         If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_13C, var_AA) <> vbNullString) Then
  loc_17DD3AA:           var_110 = CVar(var_B4.Fields.Item("AcGroupCode")) 'Address
  loc_17DD3B8:           var_140.Collect = "AcGroupCode"
  loc_17DD3EB:           var_13C = CVar(Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupName")), CVar(var_B4.Fields.Item("AcGroupName")), var_9E)) 'String
  loc_17DD3F8:           var_140.Collect = "AcGroupName"
  loc_17DD407:         End If
  loc_17DD407:       End If
  loc_17DD426:       var_110 = CVar(var_B4.Fields.Item("BudgetCRAmt")) 'Address
  loc_17DD434:       var_140.Collect = "BudgetedAmt"
  loc_17DD44E:       var_140.Collect = "BudgetCrDr"
  loc_17DD48C:       If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), "Cr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_17DD49C:         var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where SubCode='"
  loc_17DD4B3:         var_100 = var_B4.Fields
  loc_17DD4CB:         var_13C = "Cr" & var_100.Item("AcCode").Value 
  loc_17DD4FE:         Proc_183_7_EB17D4(var_178, CVar(var_B4.Fields.Item("FromDate")), var_13C & "' And L.V_Date Between ", var_230, -1)
  loc_17DD539:         Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DD558:         unk_583395.Execute CStr(var_13C & var_1E0 & vbNullString), var_100, DGSite.DispID_41
  loc_17DD563:         Set var_B8 = var_234
  loc_17DD5A5:         If (var_B8.RecordCount > 0) Then
  loc_17DD5D3:           var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DD5E3:         Else
  loc_17DD5E6:           var_A8 = CDbl(0)
  loc_17DD5E9:         End If
  loc_17DD5EC:       Else
  loc_17DD625:         If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DD635:           var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where GroupCode ='"
  loc_17DD697:           Proc_183_7_EB17D4(var_178, CVar(var_B4.Fields.Item("FromDate")), "Cr" & var_B4.Fields.Item("AcGroupCode").Value & "' And L.V_Date Between ", var_230)
  loc_17DD69F:           var_198 = -1 & var_178 
  loc_17DD6D2:           Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DD6F1:           unk_583395.Execute CStr(var_234 & var_1E0 & vbNullString), var_A8, 
  loc_17DD6FC:           Set var_B8 = var_234
  loc_17DD73E:           If (var_B8.RecordCount > 0) Then
  loc_17DD76C:             var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DD77C:           Else
  loc_17DD77F:             var_A8 = CDbl(0)
  loc_17DD782:           End If
  loc_17DD782:         End If
  loc_17DD782:       End If
  loc_17DD786:       var_DC = CVar(Abs(var_A8)) 'Double
  loc_17DD794:       var_140.Collect = "ActualAmt"
  loc_17DD7D5:       If (var_140.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DD7FC:         var_150 = IIf((var_A8 > CDbl(0)), "Cr", "Dr")
  loc_17DD80E:         var_140.Collect = "ActualCrDr"
  loc_17DD81E:       End If
  loc_17DD85A:       If (var_140.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DD8B1:         var_150 = (var_140.Fields.Item("ActualAmt").Value - var_140.Fields.Item("BudgetedAmt").Value)
  loc_17DD8E8:         var_198 = ((var_150 / var_140.Fields.Item("BudgetedAmt").Value) * 100)
  loc_17DD8F6:         var_140.Collect = "VariencePer"
  loc_17DD913:       End If
  loc_17DD913:       var_DC = "CrGroup"
  loc_17DD922:       var_140.Collect = "Flag"
  loc_17DD95C:       var_9E = CInt(Trim(CVar(var_B4.Fields.Item("FrMth"))))
  loc_17DD998:       var_AA = CInt(Trim(CVar(var_B4.Fields.Item("FrYear"))))
  loc_17DD9D7:       For var_238 = &HD To CInt((var_B0.Fields.Count - 1)) Step 2: var_A0 = var_238 'Integer
  loc_17DDAA1:         If (Ucase(Format(DateAdd("m", CDbl(CByte(0)), CVar(var_B4.Fields.Item("FromDate"))), "MMM/yy")) = Ucase(Trim(CVar(var_B0.Fields.Item(CVar(var_A0)).Name)))) Then
  loc_17DDADD:           If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), 1, 1, &HD, var_AA, var_9E) <> vbNullString) Then
  loc_17DDAED:             var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where SubCode='"
  loc_17DDB25:             var_150 = "MMM/yy" & var_B4.Fields.Item("AcCode").Value & "' And MONTH(L.V_Date)=" 
  loc_17DDB42:             var_198 = var_150 & CVar(var_9E) & " And Year(L.V_Date)=" & CVar(var_AA) 
  loc_17DDB75:             Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_198 & " And L.V_Date Between ", var_2B8, -1, var_234)
  loc_17DDBB0:             Proc_183_7_EB17D4(var_268, CVar(var_B4.Fields.Item("ToDate")), CDbl(0) & var_1E0 & " And ", "MMM/yy")
  loc_17DDBCF:             unk_583395.Execute CStr(var_198 & var_268 & vbNullString), var_150, "MMM/yy"
  loc_17DDBDA:             Set var_B8 = var_234
  loc_17DDC24:             If (var_B8.RecordCount > 0) Then
  loc_17DDC52:               var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DDC62:             Else
  loc_17DDC65:               var_A8 = CDbl(0)
  loc_17DDC68:             End If
  loc_17DDC91:             var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DDCDA:             If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DDD13:               var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DDD2D:               var_B0.Fields.Item(CVar(var_9E)).Value = IIf((var_A8 > CDbl(0)), "Cr", "Dr")
  loc_17DDD44:             End If
  loc_17DDD47:           Else
  loc_17DDD80:             If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DDD90:               var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where GroupCode ='"
  loc_17DDDDB:               var_178 = "Cr" & var_B4.Fields.Item("AcGroupCode").Value & "' And MONTH(L.V_Date)=" & CVar(var_9E) & " And Year(L.V_Date)=" 
  loc_17DDE18:               Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_178 & CVar(var_AA) & " And L.V_Date Between ", var_2B8)
  loc_17DDE20:               var_1F0 = -1 & var_1E0 
  loc_17DDE4C:               var_230 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DDE53:               Proc_183_7_EB17D4(var_268, var_230, CDbl(0) & var_1E0 & " And ")
  loc_17DDE72:               unk_583395.Execute CStr(var_234 & var_268 & vbNullString), var_A8, 
  loc_17DDE7D:               Set var_B8 = var_234
  loc_17DDEC7:               If (var_B8.RecordCount > 0) Then
  loc_17DDEF5:                 var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DDF05:               Else
  loc_17DDF08:                 var_A8 = CDbl(0)
  loc_17DDF0B:               End If
  loc_17DDF34:               var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DDF7D:               If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DDFB6:                 var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DDFD0:                 var_B0.Fields.Item(CVar(var_9E)).Value = IIf((var_A8 > CDbl(0)), "Cr", "Dr")
  loc_17DDFE7:               End If
  loc_17DDFE7:             End If
  loc_17DDFE7:           End If
  loc_17DDFED:           If (var_9E = &HC) Then
  loc_17DDFF2:             var_9E = 0
  loc_17DDFFB:             var_AA = (var_AA + 1)
  loc_17DDFFE:           End If
  loc_17DE004:           var_9E = (var_9E + 1)
  loc_17DE007:         End If
  loc_17DE012:         var_BA = CByte((CInt(var_BA) + 1)) 'Byte
  loc_17DE019:       Next var_238 'Integer
  loc_17DE020:       Set var_140 = Nothing 
  loc_17DE027:     Else
  loc_17DE02D:       var_CC = "BudgetDrAmt"
  loc_17DE051:       var_DC = 0
  loc_17DE063:       If (var_B4.Fields.Item(var_CC).Value > var_DC) Then
  loc_17DE068:         var_9E = 0
  loc_17DE06D:         var_AA = 0
  loc_17DE073:         Set var_2BC = var_B0 
  loc_17DE082:         var_B0.AddNew var_CC, var_DC
  loc_17DE0E6:         var_EC = "-"
  loc_17DE0EB:         var_160 = (Format(CVar(var_B4.Fields.Item("FromDate")), "DD/MM/YYYY") + "Dr")
  loc_17DE107:         var_178 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DE116:         var_1B8 = (1 + Format(var_178, "DD/MM/YYYY"))
  loc_17DE124:         var_2BC.Collect = "BudgetPeriod"
  loc_17DE162:         var_110 = CVar(var_B4.Fields.Item("FromDate")) 'Address
  loc_17DE170:         var_2BC.Collect = "FromDate"
  loc_17DE19A:         var_110 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DE1A8:         var_2BC.Collect = "ToDate"
  loc_17DE1DB:         var_118 = Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("FromDate")), 1)
  loc_17DE1EC:         If (var_118 <> vbNullString) Then
  loc_17DE20E:           var_110 = CVar(var_B4.Fields.Item("AcCode")) 'Address
  loc_17DE21C:           var_2BC.Collect = "AcCode"
  loc_17DE24F:           var_13C = CVar(Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcName")), CVar(var_B4.Fields.Item("AcName")), "Cr" & var_B4.Fields.Item("AcGroupCode").Value & "' And MONTH(L.V_Date)=" & CVar(var_9E), 1)) 'String
  loc_17DE25C:           var_2BC.Collect = "AcName"
  loc_17DE26E:         Else
  loc_17DE2A7:           If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_13C, 1) <> vbNullString) Then
  loc_17DE2C9:             var_110 = CVar(var_B4.Fields.Item("AcGroupCode")) 'Address
  loc_17DE2D7:             var_2BC.Collect = "AcGroupCode"
  loc_17DE30A:             var_13C = CVar(Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupName")), CVar(var_B4.Fields.Item("AcGroupName")))) 'String
  loc_17DE317:             var_2BC.Collect = "AcGroupName"
  loc_17DE326:           End If
  loc_17DE326:         End If
  loc_17DE345:         var_110 = CVar(var_B4.Fields.Item("BudgetDrAmt")) 'Address
  loc_17DE353:         var_2BC.Collect = "BudgetedAmt"
  loc_17DE36D:         var_2BC.Collect = "BudgetCrDr"
  loc_17DE3AB:         If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), "Dr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_17DE3BB:           var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as AmtDr From Ledger L Where SubCode='"
  loc_17DE3EA:           var_13C = "Dr" & var_B4.Fields.Item("AcCode").Value 
  loc_17DE41D:           Proc_183_7_EB17D4(var_178, CVar(var_B4.Fields.Item("FromDate")), var_13C & "' And L.V_Date Between ", var_230, -1)
  loc_17DE458:           Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DE477:           unk_583395.Execute CStr(var_13C & var_1E0 & vbNullString), var_AA, var_9E
  loc_17DE482:           Set var_B8 = var_234
  loc_17DE4C4:           If (var_B8.RecordCount > 0) Then
  loc_17DE4F2:             var_A8 = CSng(var_B8.Fields.Item("AmtDr").Value)
  loc_17DE502:           Else
  loc_17DE505:             var_A8 = CDbl(0)
  loc_17DE508:           End If
  loc_17DE50B:         Else
  loc_17DE544:           If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DE554:             var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as AmtDr From Ledger L Where L.GroupCode ='"
  loc_17DE5B6:             Proc_183_7_EB17D4(var_178, CVar(var_B4.Fields.Item("FromDate")), "Dr" & var_B4.Fields.Item("AcGroupCode").Value & "' And L.V_Date Between ", var_230)
  loc_17DE5BE:             var_198 = -1 & var_178 
  loc_17DE5F1:             Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DE610:             unk_583395.Execute CStr(var_234 & var_1E0 & vbNullString), var_A8, 
  loc_17DE61B:             Set var_B8 = var_234
  loc_17DE65D:             If (var_B8.RecordCount > 0) Then
  loc_17DE68B:               var_A8 = CSng(var_B8.Fields.Item("AmtDr").Value)
  loc_17DE69B:             Else
  loc_17DE69E:               var_A8 = CDbl(0)
  loc_17DE6A1:             End If
  loc_17DE6A1:           End If
  loc_17DE6A1:         End If
  loc_17DE6A5:         var_DC = CVar(Abs(var_A8)) 'Double
  loc_17DE6B3:         var_2BC.Collect = "ActualAmt"
  loc_17DE6F4:         If (var_2BC.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DE71B:           var_150 = IIf((var_A8 > CDbl(0)), "Dr", "Cr")
  loc_17DE72D:           var_2BC.Collect = "ActualCrDr"
  loc_17DE73D:         End If
  loc_17DE779:         If (var_2BC.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DE7D0:           var_150 = (var_2BC.Fields.Item("ActualAmt").Value - var_2BC.Fields.Item("BudgetedAmt").Value)
  loc_17DE807:           var_198 = ((var_150 / var_2BC.Fields.Item("BudgetedAmt").Value) * 100)
  loc_17DE815:           var_2BC.Collect = "VariencePer"
  loc_17DE832:         End If
  loc_17DE832:         var_DC = "DrGroup"
  loc_17DE841:         var_2BC.Collect = "Flag"
  loc_17DE87B:         var_9E = CInt(Trim(CVar(var_B4.Fields.Item("FrMth"))))
  loc_17DE8B7:         var_AA = CInt(Trim(CVar(var_B4.Fields.Item("FrYear"))))
  loc_17DE8F6:         For var_2C0 = &HD To CInt((var_B0.Fields.Count - 1)) Step 2:   var_A0 = var_2C0 'Integer
  loc_17DE9C0:           If (Ucase(Format(DateAdd("m", CDbl(CByte(0)), CVar(var_B4.Fields.Item("FromDate"))), "MMM/yy")) = Ucase(Trim(CVar(var_B0.Fields.Item(CVar(var_A0)).Name)))) Then
  loc_17DE9FC:             If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), 1, 1, &HD, var_AA, var_9E) <> vbNullString) Then
  loc_17DEA0C:               var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as LedAmt From Ledger L Where SubCode='"
  loc_17DEA44:               var_150 = "MMM/yy" & var_B4.Fields.Item("AcCode").Value & "' And MONTH(L.V_Date)=" 
  loc_17DEA61:               var_198 = var_150 & CVar(var_9E) & " And Year(L.V_Date)=" & CVar(var_AA) 
  loc_17DEA94:               Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_198 & " And L.V_Date Between ", var_2B8, -1, var_234)
  loc_17DEACF:               Proc_183_7_EB17D4(var_268, CVar(var_B4.Fields.Item("ToDate")), CDbl(0) & var_1E0 & " And ", "MMM/yy")
  loc_17DEAEE:               unk_583395.Execute CStr(var_198 & var_268 & vbNullString), var_150, "MMM/yy"
  loc_17DEAF9:               Set var_B8 = var_234
  loc_17DEB43:               If (var_B8.RecordCount > 0) Then
  loc_17DEB71:                 var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DEB81:               Else
  loc_17DEB84:                 var_A8 = CDbl(0)
  loc_17DEB87:               End If
  loc_17DEBB0:               var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DEBF9:               If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DEC32:                 var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DEC4C:                 var_B0.Fields.Item(CVar(var_9E)).Value = IIf((var_A8 > CDbl(0)), "Dr", "Cr")
  loc_17DEC63:               End If
  loc_17DEC66:             Else
  loc_17DEC9F:               If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DECAF:                 var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as LedAmt From Ledger L Where GroupCode ='"
  loc_17DECF1:                 var_160 = "Dr" & var_B4.Fields.Item("AcGroupCode").Value & "' And MONTH(L.V_Date)=" & CVar(var_9E) 
  loc_17DED37:                 Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_160 & " And Year(L.V_Date)=" & CVar(var_AA) & " And L.V_Date Between ", var_2B8)
  loc_17DED3F:                 var_1F0 = -1 & var_1E0 
  loc_17DED72:                 Proc_183_7_EB17D4(var_268, CVar(var_B4.Fields.Item("ToDate")), CDbl(0) & var_1E0 & " And ")
  loc_17DED87:                 var_118 = CStr(var_234 & var_268 & vbNullString)
  loc_17DED91:                 unk_583395.Execute var_118, var_A8, 
  loc_17DED9C:                 Set var_B8 = var_234
  loc_17DEDE6:                 If (var_B8.RecordCount > 0) Then
  loc_17DEE14:                   var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DEE24:                 Else
  loc_17DEE27:                   var_A8 = CDbl(0)
  loc_17DEE2A:                 End If
  loc_17DEE53:                 var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DEE9C:                 If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DEE9F:                   var_EC = "Cr"
  loc_17DEEAA:                   var_DC = "Dr"
  loc_17DEEBC:                   var_CC = (var_A8 > CDbl(0))
  loc_17DEEC3:                   var_150 = IIf(var_CC, var_DC, var_EC)
  loc_17DEED5:                   var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DEEEF:                   var_B0.Fields.Item(CVar(var_9E)).Value = var_150
  loc_17DEF06:                 End If
  loc_17DEF06:               End If
  loc_17DEF06:             End If
  loc_17DEF0C:             If (var_9E = &HC) Then
  loc_17DEF11:               var_9E = 0
  loc_17DEF1A:               var_AA = (var_AA + 1)
  loc_17DEF1D:             End If
  loc_17DEF23:             var_9E = (var_9E + 1)
  loc_17DEF26:           End If
  loc_17DEF31:           var_BA = CByte((CInt(var_BA) + 1)) 'Byte
  loc_17DEF38:         Next var_2C0 'Integer
  loc_17DEF3F:         Set var_2BC = Nothing 
  loc_17DEF43:       End If
  loc_17DEF43:     End If
  loc_17DEF46:     var_B4.MoveNext
  loc_17DEF56:     var_B0.Update var_CC, var_DC
  loc_17DEF5B:     GoTo loc_17DD0F6
  loc_17DEF5E:   End If
  loc_17DEF5E: End If
  loc_17DEF72: If (var_B0.RecordCount <= 0) Then
  loc_17DEF7B:   Call 0.Method_arg_50 (var_118)
  loc_17DEF91:   var_CC = "** No Records Found to Print **"
  loc_17DEF9C:   MsgBox(var_CC, &H40, CVar(var_118), var_150, var_160)
  loc_17DEFB1:   global_130 = 0
  loc_17DEFB4:   Exit Sub
  loc_17DEFB5: End If
  loc_17DEFBB: global_124 = "FABudgetRep"
  loc_17DEFC8: If (global_130 = 0) Then
  loc_17DEFCB:   Exit Sub
  loc_17DEFCC: End If
  loc_17DEFF3: Set var_100 = var_B0 
  loc_17DEFFA: CreateFieldDefFile(var_100, MemVar_1F953B4 & "\" & global_124 & ".ttx")
  loc_17DF025: var_118 = MemVar_1F953B4 & "\"
  loc_17DF03F: Call 0.Method_arg_1C (var_118 & global_124 & ".RPT", var_CC, var_100)
  loc_17DF04A: MemVar_1F951E8 = var_100
  loc_17DF073: Call 0.Method_arg_64 (var_100, CVar(var_100), var_DC)
  loc_17DF07B: Call 0.Method_arg_2C (var_EC, &HFF)
  loc_17DF088: Set var_B0 = Nothing
  loc_17DF090: Set var_B4 = Nothing
  loc_17DF098: Set var_B8 = Nothing
  loc_17DF0A0: Set var_B4 = Nothing
  loc_17DF0A3: Exit Sub
  loc_17DF0A4: ' Referenced from: 17DCFAC
  loc_17DF0B2: Call 0.Method_arg_50 (var_118, 0)
  loc_17DF0C7: Proc_183_57_104B0BC(var_118, "FaBudget")
  loc_17DF0D3: Exit Sub
End Sub

Public Sub Proc_203_83_11614C4(arg_C) '11614C4
  'Data Table: 583348
  Dim var_8C As Recordset15
  loc_1161101: Set var_8C = arg_C 
  loc_1161129: var_8C.Fields.Append "BudgetPeriod", &HC8, &H19
  loc_1161155: var_8C.Fields.Append "FromDate", &H85, 0
  loc_1161181: var_8C.Fields.Append "ToDate", &H85, 0
  loc_11611AD: var_8C.Fields.Append "AcGroupCode", &HC8, 8
  loc_11611D9: var_8C.Fields.Append "AcGroupName", &HC8, &H32
  loc_1161205: var_8C.Fields.Append "AcCode", &HC8, 8
  loc_1161231: var_8C.Fields.Append "AcName", &HC8, &H32
  loc_116125D: var_8C.Fields.Append "BudgetedAmt", 5, 0
  loc_1161289: var_8C.Fields.Append "BudgetCrDr", &HC8, 2
  loc_11612B5: var_8C.Fields.Append "ActualAmt", 5, 0
  loc_11612E1: var_8C.Fields.Append "ActualCrDr", &HC8, 2
  loc_116130D: var_8C.Fields.Append "Varience", 5, 0
  loc_1161339: var_8C.Fields.Append "VariencePer", 5, 0
  loc_1161365: var_8C.Fields.Append "PreBudgetedAmt", 5, 0
  loc_1161391: var_8C.Fields.Append "PreBudgetCrDr", &HC8, 2
  loc_11613BD: var_8C.Fields.Append "PreActualAmt", 5, 0
  loc_11613E9: var_8C.Fields.Append "PreActualCrDr", &HC8, 2
  loc_1161415: var_8C.Fields.Append "PreVarience", 5, 0
  loc_1161441: var_8C.Fields.Append "PreVariencePer", 5, 0
  loc_116146D: var_8C.Fields.Append "GroupType", &HC8, 7
  loc_116147D: var_8C.CursorType = 3
  loc_116148A: var_8C.LockType = 3
  loc_11614A9: var_8C.Open var_A0, var_B0, -1
  loc_11614B0: Set var_8C = Nothing 
  loc_11614B7: Set var_88 = arg_C 
  loc_11614BB: Proc_203_83_11614C4 = -1
  loc_11614C1: ThisVCallR4
End Sub

Public Sub Proc_203_84_1272628(arg_C) '1272628
  'Data Table: 583348
  Dim var_94 As Recordset15
  Dim var_98 As Fields
  Dim var_A8 As Variant
  Dim var_F4 As String
  Dim unk_583395 As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As String
  Dim var_EC As Variant
  loc_12720A1: Set var_94 = arg_C 
  loc_12720C9: var_94.Fields.Append "BudgetPeriod", &HC8, &H19
  loc_12720F5: var_94.Fields.Append "FromDate", &H85, 0
  loc_1272121: var_94.Fields.Append "ToDate", &H85, 0
  loc_127214D: var_94.Fields.Append "AcGroupCode", &HC8, 8
  loc_1272179: var_94.Fields.Append "AcGroupName", &HC8, &H32
  loc_12721A5: var_94.Fields.Append "AcCode", &HC8, 8
  loc_12721D1: var_94.Fields.Append "AcName", &HC8, &H32
  loc_12721FD: var_94.Fields.Append "BudgetedAmt", 5, 0
  loc_1272229: var_94.Fields.Append "BudgetCrDr", &HC8, 2
  loc_1272255: var_94.Fields.Append "ActualAmt", 5, 0
  loc_1272281: var_94.Fields.Append "ActualCrDr", &HC8, 2
  loc_12722AD: var_94.Fields.Append "VariencePer", 5, 0
  loc_12722D9: var_94.Fields.Append "Flag", &HC8, 7
  loc_12722F6: Set var_98 = CVar(CLng(0))(2)
  loc_1272320: var_F4 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where CStr(FromDate) +'-'+ CStr(ToDate) in ('" & CStr(var_EC)
  loc_1272330: unk_583395.Execute var_F4 & "') Order By B.BudgetDrAmt,B.BudgetCrAmt", var_118, -1
  loc_127233B: Set var_90 = var_11C
  loc_1272369: If (var_90.RecordCount > 0) Then
  loc_1272373:   For var_124 = 1 To &HC: var_8A = var_124 'Integer
  loc_127237F:     If (var_8A = 1) Then
  loc_12723EA:       var_94.Fields.Append CStr(Format(CVar(var_90.Fields.Item("FromDate")), "MMM/yy")), 5, 0
  loc_1272473:       var_94.Fields.Append CStr("mCrDr" & Format(CVar(var_90.Fields.Item("FromDate")), "MMM/yy")), &HC8, 2
  loc_1272490:     Else
  loc_12724C1:       var_118 = DateAdd("m", CDbl((var_8A - 1)), CVar(var_90.Fields.Item("FromDate")))
  loc_127250E:       var_94.Fields.Append CStr(Format("MMM/yy", "MMM/yy")), 5, 0
  loc_127252B:       var_A8 = "FromDate"
  loc_1272559:       var_118 = DateAdd("m", CDbl((var_8A - 1)), CVar(var_90.Fields.Item(var_A8)))
  loc_1272568:       var_BC = "MMM/yy"
  loc_12725AF:       var_94.Fields.Append CStr("mCrDr" & Format("MMM/yy", var_BC)), &HC8, 2
  loc_12725CB:     End If
  loc_12725CE:   Next var_124 'Integer
  loc_12725D3: End If
  loc_12725DB: var_94.CursorType = 3
  loc_12725E8: var_94.LockType = 3
  loc_1272607: var_94.Open var_A8, var_BC, -1
  loc_127260E: Set var_94 = Nothing 
  loc_1272615: Set var_88 = arg_C 
  loc_127261E: Set var_90 = Nothing
  loc_1272621: Proc_203_84_1272628 = -1
End Sub

Public Sub Proc_203_85_17F2480
  'Data Table: 583348
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1A4 As String
  Dim var_178 As String
  Dim var_160 As Variant
  Dim unk_583395 As Connection15
  Dim var_88 As Recordset15
  Dim var_190 As Variant
  Dim var_8C As Recordset15
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_B4 As Double
  Dim var_13C As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1E8 As Variant
  Dim var_15C As Variant
  Dim var_1F8 As Variant
  Dim var_94 As Recordset15
  Dim var_116 As Integer
  Dim var_25C As Fields15
  Dim var_260 As Field20
  Dim var_1D8 As Variant
  Dim var_BC As Double
  Dim var_264 As Recordset15
  Dim var_90 As Recordset15
  Dim var_172 As Integer
  Dim Me As Recordset15
  loc_17F02F8: On Error Goto loc_17F244E
  loc_17F0310: Set var_160 = CVar(CLng(0))(0)
  loc_17F0334: Call Proc_203_59_F525A0(CInt(0), CStr(var_170))
  loc_17F0348: If (var_17A = 0) Then
  loc_17F0350:   global_130 = 0
  loc_17F0353:   Exit Sub
  loc_17F0354: End If
  loc_17F035F: Set var_160 = var_180(CInt(&HC))
  loc_17F0365: Call 0.Method_Proc_203_85_17F24800 (global_130, var_17A)
  loc_17F036D: var_170 = CVar(var_180) 'Address
  loc_17F038E: If CBool(Trim(var_170) <> vbNullString) Then
  loc_17F03A2:   Set var_160 = var_180(CInt(&HC))
  loc_17F03A8:   Call 0.Method_Proc_203_85_17F24800 (var_178, " And VIEWLEDGER.LOGSite_Code='")
  loc_17F03B0:   DGSite.DispID_41 = var_180.Tag
  loc_17F03C0:   var_11C = var_178 & "'"
  loc_17F03D4: Else
  loc_17F03DB:   var_178 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078
  loc_17F03E2:   var_11C = var_178 & "'"
  loc_17F03E8: End If
  loc_17F03EE: global_84 = vbNullString
  loc_17F03F5: var_A0 = vbNullString
  loc_17F0404: Set var_160 = var_180(1)
  loc_17F040A: Call 0.Method_Proc_203_85_17F24800 (var_172)
  loc_17F0412:  = var_180.Value
  loc_17F0428: If (CLng(var_172) = 0) Then
  loc_17F0446:   Call Proc_203_56_127C1B4(global_96, 1, CByte(1))
  loc_17F0451:   global_84 = var_178
  loc_17F0461:   If (global_130 = 0) Then
  loc_17F0464:     Exit Sub
  loc_17F0465:   End If
  loc_17F0465: End If
  loc_17F0470: If (global_84 <> vbNullString) Then
  loc_17F0484:   var_A0 = " AND ACGROUP.GROUPCODE IN (" & global_84 & ")"
  loc_17F048A: End If
  loc_17F049F: Set var_160 = CVar(CLng(0))(1)
  loc_17F04B0: var_178 = CStr(DGSite.DispID_41)
  loc_17F04BD: var_178(var_178).Text = 
  loc_17F04D6: Set var_160 = (var_178)
  loc_17F04DC:  = var_160.Text
  loc_17F04E4: var_1A4 = "Date Upto"
  loc_17F0505: If (Proc_183_49_EF3D10(CDate(var_178)) = 0) Then
  loc_17F050D:   global_130 = 0
  loc_17F0510:   Exit Sub
  loc_17F0511: End If
  loc_17F0525: var_178 = "SELECT * FROM FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F95078
  loc_17F0535: unk_583395.Execute var_178 & "'", var_170, -1
  loc_17F0540: Set var_88 = var_160
  loc_17F0564: If (var_88.RecordCount = 0) Then
  loc_17F056D:   Call 0.Method_arg_50 (var_178, var_160)
  loc_17F0588:   var_170 = " ** Please Set Ageing Parameters ** "
  loc_17F058E:   MsgBox(var_170, &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17F059E:   Exit Sub
  loc_17F059F: End If
  loc_17F05A7: If (arg_10 = "Dr") Then
  loc_17F05B1:   var_A0 = var_A0 & " AND AcGroup.Nature='Customer'"
  loc_17F05B4: End If
  loc_17F05BC: If (arg_10 = "Cr") Then
  loc_17F05C6:   var_A0 = var_A0 & " AND AcGroup.Nature='Supplier'"
  loc_17F05C9: End If
  loc_17F05DD: var_178 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.GROUPCODE AS CODE,SUBGROUP.NAME,SUBGROUP.CONPERSON,ACGROUP.GroupName FROM SUBGROUP LEFT JOIN ACGROUP ON SUBGROUP.GROUPCODE=ACGROUP.GROUPCODE WHERE ACGROUP.ALIASYN='N' AND (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078
  loc_17F05FB: unk_583395.Execute var_178 & "' OR SUBGROUP.LOGSITE_CODE='HO') " & var_A0 & " ORDER BY SUBGROUP.NAME", var_170, -1
  loc_17F0606: Set var_8C = var_160
  loc_17F061D: var_A4 = vbNullString
  loc_17F0635: Set var_90 = mAgeingReport(New)
  loc_17F063E: Me.Recordset15.Sort = "ACC_NAME ASC"
  loc_17F0643: ' Referenced from: 17F16D8
  loc_17F0652: If Not(var_8C.EOF) Then
  loc_17F0658:   var_E4 = CDbl(0)
  loc_17F065E:   var_EC = CDbl(0)
  loc_17F0664:   var_F4 = CDbl(0)
  loc_17F066A:   var_FC = CDbl(0)
  loc_17F0670:   var_104 = CDbl(0)
  loc_17F0676:   var_10C = CDbl(0)
  loc_17F067C:   var_114 = CDbl(0)
  loc_17F0688:   var_B4 = CDbl(0)
  loc_17F06D0:   var_1A0 = "SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value & "'=VIEWLEDGER.PARTY AND V_DATE<=" 
  loc_17F06DF:   Proc_183_7_EB17D4(var_1D8, CVar(var_258(var_1A0)), -1, var_25C, var_B4, CDbl(0))
  loc_17F0707:   var_178 = CStr(var_114 & var_1D8 & " " & CVar(var_11C) & vbNullString)
  loc_17F0711:   unk_583395.Execute var_178, var_10C, var_104
  loc_17F071C:   Set var_94 = var_25C
  loc_17F0742:   ' Referenced from: 17F12F9
  loc_17F0751:   If Not(var_94.EOF) Then
  loc_17F075C:     If (arg_10 = "Dr") Then
  loc_17F079B:       If (var_94.Fields.Item("Credit").Value > 0) Then
  loc_17F07CF:         var_190 = (var_94.Fields.Item("Credit").Value + CVar(var_B4))
  loc_17F07D4:         var_B4 = CSng("SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value)
  loc_17F07E8:       Else
  loc_17F0832:         var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(var_FC(var_B4)), 1, 1))
  loc_17F0882:         If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17F08B6:           var_190 = (CVar(var_E4) + var_94.Fields.Item("Debit").Value)
  loc_17F08BB:           var_E4 = CSng(CVar(var_FC(var_B4)))
  loc_17F08CF:         Else
  loc_17F0951:           If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17F0985:             var_190 = (CVar(var_EC) + var_94.Fields.Item("Debit").Value)
  loc_17F098A:             var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17F099E:           Else
  loc_17F0A20:             If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17F0A54:               var_190 = (CVar(var_F4) + var_94.Fields.Item("Debit").Value)
  loc_17F0A59:               var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17F0A6D:             Else
  loc_17F0AEF:               If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17F0B23:                 var_190 = (CVar(var_FC) + var_94.Fields.Item("Debit").Value)
  loc_17F0B28:                 var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17F0B3C:               Else
  loc_17F0BBE:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17F0BF2:                   var_190 = (CVar(var_104) + var_94.Fields.Item("Debit").Value)
  loc_17F0BF7:                   var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17F0C0B:                 Else
  loc_17F0C8D:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And (CVar(var_116) <= var_88.Fields.Item("Age6").Value)) Then
  loc_17F0CC1:                     var_190 = (CVar(var_10C) + var_94.Fields.Item("Debit").Value)
  loc_17F0CC6:                     var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17F0CDA:                   Else
  loc_17F0D0B:                     var_190 = (CVar(var_114) + var_94.Fields.Item("Debit").Value)
  loc_17F0D10:                     var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17F0D21:                   End If
  loc_17F0D21:                 End If
  loc_17F0D21:               End If
  loc_17F0D21:             End If
  loc_17F0D21:           End If
  loc_17F0D21:         End If
  loc_17F0D21:       End If
  loc_17F0D24:     Else
  loc_17F0D2C:       If (arg_10 = "Cr") Then
  loc_17F0D6B:         If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_17F0D9F:           var_190 = (var_94.Fields.Item("Debit").Value + CVar(var_B4))
  loc_17F0DA4:           var_B4 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17F0DB8:         Else
  loc_17F0E02:           var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(var_114(var_B4)), 1, 1))
  loc_17F0E52:           If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17F0E86:             var_190 = (CVar(var_E4) + var_94.Fields.Item("Credit").Value)
  loc_17F0E8B:             var_E4 = CSng(CVar(var_114(var_B4)))
  loc_17F0E9F:           Else
  loc_17F0F21:             If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17F0F55:               var_190 = (CVar(var_EC) + var_94.Fields.Item("Credit").Value)
  loc_17F0F5A:               var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17F0F6E:             Else
  loc_17F0FF0:               If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17F1024:                 var_190 = (CVar(var_F4) + var_94.Fields.Item("Credit").Value)
  loc_17F1029:                 var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17F103D:               Else
  loc_17F10BF:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17F10F3:                   var_190 = (CVar(var_FC) + var_94.Fields.Item("Credit").Value)
  loc_17F10F8:                   var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17F110C:                 Else
  loc_17F118E:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17F11C2:                     var_190 = (CVar(var_104) + var_94.Fields.Item("Credit").Value)
  loc_17F11C7:                     var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17F11DB:                   Else
  loc_17F1229:                     var_25C = var_88.Fields
  loc_17F1231:                     var_260 = var_25C.Item("Age6")
  loc_17F1241:                     var_1C0 = (CVar(var_116) <= var_260.Value)
  loc_17F125D:                     If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And var_1C0) Then
  loc_17F1291:                       var_190 = (CVar(var_10C) + var_94.Fields.Item("Credit").Value)
  loc_17F1296:                       var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17F12AA:                     Else
  loc_17F12DB:                       var_190 = (CVar(var_114) + var_94.Fields.Item("Credit").Value)
  loc_17F12E0:                       var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17F12F1:                     End If
  loc_17F12F1:                   End If
  loc_17F12F1:                 End If
  loc_17F12F1:               End If
  loc_17F12F1:             End If
  loc_17F12F1:           End If
  loc_17F12F1:         End If
  loc_17F12F1:       End If
  loc_17F12F1:     End If
  loc_17F12F4:     var_94.MoveNext
  loc_17F12F9:     GoTo loc_17F0742
  loc_17F12FC:   End If
  loc_17F1307:   var_D8(0) = var_E4
  loc_17F1313:   var_D8(1) = var_EC
  loc_17F131F:   var_D8(2) = var_F4
  loc_17F132B:   var_D8(3) = var_FC
  loc_17F1337:   var_D8(4) = var_104
  loc_17F1343:   var_D8(5) = var_10C
  loc_17F134F:   var_D8(6) = var_114
  loc_17F1353:   var_BC = CDbl(7)
  loc_17F1356:   ' Referenced from: 17F13EA
  loc_17F135D:   If (var_BC <> CDbl(0)) Then
  loc_17F1370:     If (var_D8(CLng((var_BC - CDbl(1)))) > CDbl(0)) Then
  loc_17F1383:       If (var_B4 >= var_D8(CLng((var_BC - CDbl(1))))) Then
  loc_17F1396:         var_B4 = (var_B4 - var_D8(CLng((var_BC - CDbl(1)))))
  loc_17F13A7:         var_D8(CLng((var_BC - CDbl(1)))) = CDbl(0)
  loc_17F13AB:       Else
  loc_17F13BB:         If (var_D8(CLng((var_BC - CDbl(1)))) > var_B4) Then
  loc_17F13D9:           var_D8(CLng((var_BC - CDbl(1)))) = (var_D8(CLng((var_BC - CDbl(1)))) - var_B4)
  loc_17F13DD:           var_B4 = CDbl(0)
  loc_17F13E0:         End If
  loc_17F13E0:       End If
  loc_17F13E0:     End If
  loc_17F13E7:     var_BC = (var_BC - CDbl(1))
  loc_17F13EA:     GoTo loc_17F1356
  loc_17F13ED:   End If
  loc_17F1432:   var_BC = ((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))
  loc_17F143D:   var_12C = var_BC
  loc_17F144D:   var_13C = 0
  loc_17F1467:   var_1A0 = Round(var_B4, 2)
  loc_17F148A:   If CBool(Not (Round(var_12C, 2) = var_13C) And (var_1A0 = 0)) Then
  loc_17F1490:     Set var_264 = var_90 
  loc_17F149F:     var_264.AddNew var_12C, var_13C
  loc_17F14AD:     var_13C = CVar(var_D8(0)) 'Double
  loc_17F14BB:     var_264.Collect = "DEBIT1"
  loc_17F14C9:     var_13C = CVar(var_D8(1)) 'Double
  loc_17F14D7:     var_264.Collect = "DEBIT2"
  loc_17F14E5:     var_13C = CVar(var_D8(2)) 'Double
  loc_17F14F3:     var_264.Collect = "DEBIT3"
  loc_17F1501:     var_13C = CVar(var_D8(3)) 'Double
  loc_17F150F:     var_264.Collect = "DEBIT4"
  loc_17F151D:     var_13C = CVar(var_D8(4)) 'Double
  loc_17F152B:     var_264.Collect = "DEBIT5"
  loc_17F1539:     var_13C = CVar(var_D8(5)) 'Double
  loc_17F1547:     var_264.Collect = "DEBIT6"
  loc_17F1555:     var_13C = CVar(var_D8(6)) 'Double
  loc_17F1563:     var_264.Collect = "Debit"
  loc_17F15AD:     var_13C = CVar(((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))) 'Double
  loc_17F15BB:     var_264.Collect = "TOTALDR"
  loc_17F15C3:     var_13C = CVar(var_B4) 'Double
  loc_17F15D1:     var_264.Collect = "Credit"
  loc_17F1601:     var_190 = Left(CVar(var_8C.Fields.Item("Name")), &H23)
  loc_17F1613:     var_264.Collect = "ACC_NAME"
  loc_17F164D:     var_190 = Left(CVar(var_8C.Fields.Item("ConPerson")), &H32)
  loc_17F165F:     var_264.Collect = "CON_PER"
  loc_17F1671:     var_12C = "GroupName"
  loc_17F1685:     var_180 = var_8C.Fields.Item(var_12C)
  loc_17F1699:     var_190 = Left(CVar(var_180), &H23)
  loc_17F16A2:     var_13C = "AName"
  loc_17F16AB:     var_264.Collect = var_13C
  loc_17F16C5:     var_264.Update var_12C, var_13C
  loc_17F16CC:     Set var_264 = Nothing 
  loc_17F16D0:   End If
  loc_17F16D3:   var_8C.MoveNext
  loc_17F16D8:   GoTo loc_17F0643
  loc_17F16DB: End If
  loc_17F16E1: var_1B0 = var_90.RecordCount
  loc_17F16EF: If (var_1B0 <= 0) Then
  loc_17F16F8:   Call 0.Method_arg_50 (var_178, var_190, var_190, var_190, var_13C, var_13C, var_13C)
  loc_17F1719:   MsgBox("** No Records Found to Print **", &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17F172E:   global_130 = 0
  loc_17F1731:   Exit Sub
  loc_17F1732: End If
  loc_17F1748: Set var_160 = var_90 
  loc_17F1754: var_172 = CreateFieldDefFile(var_160, MemVar_1F953B4 & "\AGEINGREPORT.ttx", &HFF, global_130, var_13C, var_13C)
  loc_17F175E: Set var_90 = var_160
  loc_17F1764: var_12C = CVar(var_172) 'Integer
  loc_17F1767: var_274 = var_12C 'Variant
  loc_17F1783: var_178 = MemVar_1F953B4 & "\AGEINGREPORT.RPT"
  loc_17F178C: Call 0.Method_arg_1C (var_178, var_12C, var_160, var_172, var_13C)
  loc_17F1797: MemVar_1F951E8 = var_160
  loc_17F17B2: Call 0.Method_arg_90 (var_160, var_1B0, var_BE, 1)
  loc_17F17BA: Call 0.Method_arg_24 (var_13C, var_13C)
  loc_17F17C6: For var_278 = var_BC To CInt(var_1B0): var_13C = var_278 'Integer
  loc_17F17DF:   Call 0.Method_arg_90 (var_160, CLng(var_BE), var_180)
  loc_17F17E7:   Call 0.Method_arg_20 (var_178)
  loc_17F17EF:   Call 0.Method_arg_30 (var_BC)
  loc_17F1805:   var_288 = Ucase(CVar(var_178)) 'Variant
  loc_17F1835:   If (var_288 = Ucase("title")) Then
  loc_17F1849:     Call 0.Method_Proc_203_85_17F24800 ()
  loc_17F1872:     If (Trim(CVar(var_180)) = vbNullString) Then
  loc_17F187E:       Call 0.Method_arg_50 (var_178)
  loc_17F18A1:       Call 0.Method_arg_90 (var_180(CInt(&HC)), CLng(var_BE))
  loc_17F18A9:       Call 0.Method_arg_20 (var_180)
  loc_17F18B1:       Call 0.Method_arg_38 ("'" & var_178 & "'")
  loc_17F18C9:     Else
  loc_17F18D2:       Call 0.Method_arg_50 (var_178)
  loc_17F18F0:       Set var_160 = var_180(CInt(&HC))
  loc_17F18F6:       Call 0.Method_Proc_203_85_17F24800 (CVar("'" & var_178 & " ("))
  loc_17F190D:       var_1C0 = ( + Trim(CVar(var_180)))
  loc_17F1916:       var_1D8 = (var_1C0 + ")")
  loc_17F191F:       var_1E8 = ((Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0) + "'")
  loc_17F1937:       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F193F:       Call 0.Method_arg_20 (var_260)
  loc_17F1947:       Call 0.Method_arg_38 (CStr(Not (Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0)))
  loc_17F196D:     End If
  loc_17F1970:   Else
  loc_17F1992:     If (var_288 = Ucase("ACNAME")) Then
  loc_17F19A5:        = "'For A/C  :   "(var_178).Text
  loc_17F19C8:       Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17F19D0:       Call 0.Method_arg_20 (var_25C)
  loc_17F19D8:       Call 0.Method_arg_38 (var_178 & "'")
  loc_17F19F2:     Else
  loc_17F1A14:       If (var_288 = Ucase("DATE")) Then
  loc_17F1A27:          = "'Upto Date :     "(var_178).Text
  loc_17F1A4A:         Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17F1A52:         Call 0.Method_arg_20 (var_25C)
  loc_17F1A5A:         Call 0.Method_arg_38 (var_178 & "'")
  loc_17F1A74:       Else
  loc_17F1A96:         If (var_288 = Ucase("P1")) Then
  loc_17F1A9E:           var_13C = "0 - "
  loc_17F1AD1:           var_1A0 = ("'" + Str(CVar(var_88.Fields.Item("Age1"))))
  loc_17F1AF6:           Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F1AFE:           Call 0.Method_arg_20 (var_260)
  loc_17F1B06:           Call 0.Method_arg_38 (CStr("'" & CVar("'" & var_178 & " (") & "'"))
  loc_17F1B27:         Else
  loc_17F1B49:           If (var_288 = Ucase("P2")) Then
  loc_17F1B80:             var_190 = (var_88.Fields.Item("Age1").Value + 1)
  loc_17F1B93:             var_15C = " - "
  loc_17F1BEB:             Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17F1BF3:             Call 0.Method_arg_20 (var_290)
  loc_17F1BFB:             Call 0.Method_arg_38 (CStr("'" & Str(Ucase("P2")) & "'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17F1C28:           Else
  loc_17F1C4A:             If (var_288 = Ucase("P3")) Then
  loc_17F1C81:               var_190 = (var_88.Fields.Item("Age2").Value + 1)
  loc_17F1C90:               var_14C = " - "
  loc_17F1C95:               var_1C0 = (Str(Ucase("P3")) + "'")
  loc_17F1CC7:               var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_88.Fields.Item("Age3"))))
  loc_17F1CEC:               Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17F1CF4:               Call 0.Method_arg_20 (var_290)
  loc_17F1CFC:               Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17F1D29:             Else
  loc_17F1D4B:               If (var_288 = Ucase("P4")) Then
  loc_17F1D82:                 var_190 = (var_88.Fields.Item("Age3").Value + 1)
  loc_17F1D91:                 var_14C = " - "
  loc_17F1D96:                 var_1C0 = (Str(Ucase("P4")) + "'")
  loc_17F1DC8:                 var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_88.Fields.Item("Age4"))))
  loc_17F1DED:                 Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17F1DF5:                 Call 0.Method_arg_20 (var_290)
  loc_17F1DFD:                 Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17F1E2A:               Else
  loc_17F1E4C:                 If (var_288 = Ucase("P5")) Then
  loc_17F1E83:                   var_190 = (var_88.Fields.Item("Age4").Value + 1)
  loc_17F1E92:                   var_14C = " - "
  loc_17F1E97:                   var_1C0 = (Str(Ucase("P5")) + "'")
  loc_17F1EC9:                   var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_88.Fields.Item("Age5"))))
  loc_17F1EEE:                   Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17F1EF6:                   Call 0.Method_arg_20 (var_290)
  loc_17F1EFE:                   Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17F1F2B:                 Else
  loc_17F1F4D:                   If (var_288 = Ucase("P6")) Then
  loc_17F1F84:                     var_190 = (var_88.Fields.Item("Age5").Value + 1)
  loc_17F1F93:                     var_14C = " - "
  loc_17F1F98:                     var_1C0 = (Str(Ucase("P6")) + "'")
  loc_17F1FAB:                     var_25C = var_88.Fields
  loc_17F1FB3:                     var_260 = var_25C.Item("Age6")
  loc_17F1FCA:                     var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_260)))
  loc_17F1FEF:                     Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17F1FF7:                     Call 0.Method_arg_20 (var_290)
  loc_17F1FFF:                     Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17F202C:                   Else
  loc_17F204E:                     If (var_288 = Ucase("P7")) Then
  loc_17F2065:                       var_160 = var_88.Fields
  loc_17F206D:                       var_180 = var_160.Item("Age6")
  loc_17F20A5:                       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F20AD:                       Call 0.Method_arg_20 (var_260)
  loc_17F20B5:                       Call 0.Method_arg_38 (CStr("'Above " & Str(CVar(var_180)) & "'"))
  loc_17F20D4:                     Else
  loc_17F20F6:                       If (var_288 = Ucase("P8")) Then
  loc_17F2101:                         If (arg_10 = "Dr") Then
  loc_17F2117:                           Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F211F:                           Call 0.Method_arg_20 (var_180)
  loc_17F2127:                           Call 0.Method_arg_38 ("'Total Debit'")
  loc_17F2136:                         Else
  loc_17F213E:                           If (arg_10 = "Cr") Then
  loc_17F2154:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F215C:                             Call 0.Method_arg_20 (var_180)
  loc_17F2164:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17F2170:                           End If
  loc_17F2170:                         End If
  loc_17F2173:                       Else
  loc_17F2195:                         If (var_288 = Ucase("P9")) Then
  loc_17F21A0:                           If (arg_10 = "Dr") Then
  loc_17F21B6:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F21BE:                             Call 0.Method_arg_20 (var_180)
  loc_17F21C6:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17F21D5:                           Else
  loc_17F21DD:                             If (arg_10 = "Cr") Then
  loc_17F21F3:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F21FB:                               Call 0.Method_arg_20 (var_180)
  loc_17F2203:                               Call 0.Method_arg_38 ("'Total Debit'")
  loc_17F220F:                             End If
  loc_17F220F:                           End If
  loc_17F2212:                         Else
  loc_17F2234:                           If (var_288 = Ucase("HEADI")) Then
  loc_17F223F:                             If (arg_10 = "Dr") Then
  loc_17F2255:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F225D:                               Call 0.Method_arg_20 (var_180)
  loc_17F2265:                               Call 0.Method_arg_38 ("'<----------------------------- AMOUNT DEBITED FROM DAYS ------------------------------>'")
  loc_17F2274:                             Else
  loc_17F227C:                               If (arg_10 = "Cr") Then
  loc_17F2292:                                 Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F229A:                                 Call 0.Method_arg_20 (var_180)
  loc_17F22A2:                                 Call 0.Method_arg_38 ("'<----------------------------- AMOUNT CREDITED FROM DAYS ------------------------------>'")
  loc_17F22AE:                               End If
  loc_17F22AE:                             End If
  loc_17F22B1:                           Else
  loc_17F22D3:                             If (var_288 = Ucase("PageNo")) Then
  loc_17F2329:                               Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F2331:                               Call 0.Method_arg_20 (var_260)
  loc_17F2339:                               Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_17F2358:                             Else
  loc_17F237A:                               If (var_288 = Ucase("DT")) Then
  loc_17F237D:                                 var_13C = "'"
  loc_17F2397:                                 var_160 = Me.Fields
  loc_17F23BC:                                 var_178 = CStr(var_13C & var_160.Item("daterfill").Value & "'")
  loc_17F23D0:                                 Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F23D8:                                 Call 0.Method_arg_20 (var_260)
  loc_17F23E0:                                 Call 0.Method_arg_38 (var_178)
  loc_17F23FC:                               End If
  loc_17F23FC:                             End If
  loc_17F23FC:                           End If
  loc_17F23FC:                         End If
  loc_17F23FC:                       End If
  loc_17F23FC:                     End If
  loc_17F23FC:                   End If
  loc_17F23FC:                 End If
  loc_17F23FC:               End If
  loc_17F23FC:             End If
  loc_17F23FC:           End If
  loc_17F23FC:         End If
  loc_17F23FC:       End If
  loc_17F23FC:     End If
  loc_17F23FC:   End If
  loc_17F23FF: Next var_278 'Integer
  loc_17F241D: Call 0.Method_arg_64 (var_160, CVar(var_90))
  loc_17F2425: Call 0.Method_arg_2C (var_13C)
  loc_17F2432: Set var_88 = Nothing
  loc_17F243A: Set var_8C = Nothing
  loc_17F2442: Set var_90 = Nothing
  loc_17F244A: Set var_94 = Nothing
  loc_17F244D: Exit Sub
  loc_17F244E: ' Referenced from: 17F02F8
  loc_17F245C: Call 0.Method_arg_50 (var_178, 0)
  loc_17F2471: Proc_183_57_104B0BC(var_178, "AgeingReport")
  loc_17F247D: Exit Sub
End Sub
