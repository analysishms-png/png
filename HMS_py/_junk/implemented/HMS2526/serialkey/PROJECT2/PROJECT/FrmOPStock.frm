VERSION 5.00
Begin VB.Form FrmOPStock
  Caption = "Opening Stock Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 13155
  ClientHeight = 5730
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13155
    Height = 450
    TabIndex = 16
  End
  Begin DataGrid DGDepart
    Left = 9105
    Top = 1485
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2775
    Top = 1425
    Width = 1260
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HC0C0C0&
    Left = 6570
    Top = 45
    Width = 2820
    Height = 255
    TabIndex = 10
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
  Begin DataGrid DGItem
    Left = 9165
    Top = 885
    Width = 3900
    Height = 2400
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2775
    Top = 1110
    Width = 3510
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 11070
    Top = 4965
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 240
      Top = 195
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 8
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 750
    Top = 3015
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 510
    Top = 1725
    Width = 6900
    Height = 6450
    TabIndex = 2
  End
  Begin MSFlexGrid FGPoint
    Left = 9195
    Top = 5055
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 12
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5205
    Top = 8580
    Width = 2790
    Height = 285
    TabIndex = 15
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
    Left = 1830
    Top = 8580
    Width = 2880
    Height = 255
    TabIndex = 14
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 13
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
    Caption = "Opening Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 1185
    Top = 1425
    Width = 1305
    Height = 240
    TabIndex = 11
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
  Begin Label lbltotal
    Caption = "."
    ForeColor = &HC0&
    Left = 4320
    Top = 1425
    Width = 870
    Height = 240
    TabIndex = 9
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
  Begin Label LblName
    Caption = "Department "
    Index = 0
    ForeColor = &HC00000&
    Left = 1185
    Top = 1110
    Width = 1170
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

Attribute VB_Name = "FrmOPStock"

Private global_128 As Integer
Private global_104 As Integer
Private MasterFormExit As Integer
Private global_136 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '10F9674
  'Data Table: 4C0558
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_10F9358: Call Proc_131_55_EBC200()
  loc_10F9370: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10F938B: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F9394: Set var_BC = Me.FGrid
  loc_10F93CA: Set var_104 = Me.TxtGrid
  loc_10F93D0: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_10F93D8: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_10F9409: var_110 = CLng(Me.FGrid.Col)
  loc_10F9419: If (var_110 = CLng(3)) Then
  loc_10F942B:   Set var_A8 = Me.TxtGrid
  loc_10F9431:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H23)
  loc_10F9439:   var_BC.MaxLength = var_110
  loc_10F945C:   If (Me.RecordCount > 0) Then
  loc_10F946A:     Set var_BC = Me.FGPoint
  loc_10F9482:     Proc_6_137_1192FDC(Me.DGItem, global_72, Index)
  loc_10F9490:   End If
  loc_10F94D1:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10F94D4:     Exit Sub
  loc_10F94D5:   End If
  loc_10F94E8:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F94F0:   var_DC = CVar(CLng(3)) 'Long
  loc_10F9523:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_10F952C:     Me.MoveFirst
  loc_10F9544:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F954C:     var_DC = CVar(CLng(1)) 'Long
  loc_10F9555:     Set var_BC = Me.FGrid
  loc_10F955B:     var_CC = var_BC.TextMatrix)
  loc_10F9590:     Me.Find "Code ='" & CStr(var_CC) & "'", 0, 1
  loc_10F95C0:     If (Me.EOF = &HFF) Then
  loc_10F95C9:       Me.MoveFirst
  loc_10F95CE:     End If
  loc_10F95CE:   End If
  loc_10F95D1: Else
  loc_10F95D8:   If (var_110 = CLng(4)) Then
  loc_10F95EA:     Set var_A8 = Me.TxtGrid
  loc_10F95F0:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H19, var_130, var_CC, var_DC)
  loc_10F95F8:     var_BC.MaxLength = var_94
  loc_10F9607:   Else
  loc_10F960E:     If (var_110 = CLng(9)) Then
  loc_10F9620:       Set var_A8 = Me.TxtGrid
  loc_10F9626:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HD, var_DC)
  loc_10F962E:       var_BC.MaxLength = var_94
  loc_10F963D:     Else
  loc_10F9644:       If (var_110 = CLng(&HA)) Then
  loc_10F9656:         Set var_A8 = Me.TxtGrid
  loc_10F965C:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB)
  loc_10F9664:         var_BC.MaxLength = var_BC
  loc_10F9670:       End If
  loc_10F9670:     End If
  loc_10F9670:   End If
  loc_10F9670: End If
  loc_10F9670: Exit Sub
  loc_10F9671: ThisVCallI2
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12912BC
  'Data Table: 4C0558
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C0 As Variant
  Dim var_94 As DataGrid
  Dim Me As Recordset15
  loc_1290CD8: On Error Goto loc_12912B5
  loc_1290CE5: If (CLng(Shift) = &H1B) Then
  loc_1290CF5:   Set var_88 = Me.TxtGrid
  loc_1290CFB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1290D15:   Set var_94 = Me.TxtGrid
  loc_1290D1B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_1290D23:   var_98.Text = var_8C.Tag
  loc_1290D3F:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1290D44:   Call Proc_131_55_EBC200(arg_14)
  loc_1290D4D:   Set var_88 = Me.FGrid
  loc_1290D6A:   Set var_88 = Me.TxtGrid
  loc_1290D70:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1290D78:   var_8C.Visible = False
  loc_1290D84:   Exit Sub
  loc_1290D85: End If
  loc_1290DA8: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_1290DB7:   Set var_88 = Me.TxtGrid
  loc_1290DBD:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B0)
  loc_1290DC5:   var_AC = var_8C.Left
  loc_1290DDC:   Me.DGItem.Left = CVar(var_B0)
  loc_1290DF6:   Set var_94 = Me.TxtGrid
  loc_1290DFC:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_1290E15:   Set var_88 = Me.TxtGrid
  loc_1290E1B:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_1290E2F:   var_C0 = CVar((var_8C.Top + var_98.Height)) 'Single
  loc_1290E3E:   Me.DGItem.Top = CVar(var_8C.Top)
  loc_1290E6D:   Set var_98 = Me.FGPoint
  loc_1290E78:   Set var_94 = Nothing
  loc_1290EA6:   Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_72, Shift, &HFF)
  loc_1290F15:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1290F1C:     Set var_94 = Me.DGItem
  loc_1290F3B:     Proc_6_138_106E830(var_94, global_72, KeyCode, Me.FGPoint, 1)
  loc_1290F49:   End If
  loc_1290F53:   If (CLng(Shift) = &HD) Then
  loc_1290F5C:     Call Proc_131_51_14526E0(KeyCode, var_DA, var_94)
  loc_1290F67:     If (var_DA = &HFF) Then
  loc_1290FAD:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_104, &HA)
  loc_1290FBD:     End If
  loc_1290FBD:   End If
  loc_1290FC0: Else
  loc_1290FC7:   If (var_AC = CLng(2)) Then
  loc_1290FD4:     If (CLng(Shift) = &HD) Then
  loc_1290FDD:       Call Proc_131_51_14526E0(KeyCode, var_DA, 0, 5)
  loc_1290FE8:       If (var_DA = &HFF) Then
  loc_129102E:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_104, &HA, 0)
  loc_129103E:       End If
  loc_129103E:     End If
  loc_1291041:   Else
  loc_1291048:     If (var_AC = CLng(9)) Then
  loc_1291055:       If (CLng(Shift) = &HD) Then
  loc_129105E:         Call Proc_131_51_14526E0(KeyCode, var_DA, 3, 0)
  loc_1291069:         If (var_DA = &HFF) Then
  loc_12910B6:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_104, CByte((CInt(&HA) + 1)), 0)
  loc_12910C6:         End If
  loc_12910C6:       End If
  loc_12910C9:     Else
  loc_12910D0:       If (var_AC = CLng(&HA)) Then
  loc_12910DD:         If (CLng(Shift) = &HD) Then
  loc_12910E6:           Call Proc_131_51_14526E0(KeyCode, var_DA, 0, 0)
  loc_12910F1:           If (var_DA = &HFF) Then
  loc_1291137:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_104, &HA, 0)
  loc_1291147:           End If
  loc_1291147:         End If
  loc_129114A:       Else
  loc_1291151:         If (var_AC = CLng(5)) Then
  loc_1291194:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_104 = &HFF))) Then
  loc_129119D:             Call Proc_131_51_14526E0(KeyCode, var_DA, 0, 0)
  loc_12911A8:             If (var_DA = &HFF) Then
  loc_12911EE:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_104, &HA, 0)
  loc_12911FE:             End If
  loc_12911FE:           End If
  loc_1291201:         Else
  loc_1291208:           If (var_AC = CLng(6)) Then
  loc_129124B:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_104 = &HFF))) Then
  loc_1291254:               Call Proc_131_51_14526E0(KeyCode, var_DA, 0, 0)
  loc_129125F:               If (var_DA = &HFF) Then
  loc_12912A5:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_104, &HA, 0)
  loc_12912B5:               End If
  loc_12912B5:             End If
  loc_12912B5:           End If
  loc_12912B5:         End If
  loc_12912B5:       End If
  loc_12912B5:       ' Referenced from: 1290CD8
  loc_12912B5:     End If
  loc_12912B5:   End If
  loc_12912B5: End If
  loc_12912B5: Proc_6_60_E63754(9, 0, 0)
  loc_12912BA: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'FB3620
  'Data Table: 4C0558
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_FB3483: Proc_6_58_E06050(arg_10)
  loc_FB3494: If (KeyAscii = 0) Then
  loc_FB34AA:   var_A0 = CLng(Me.FGrid.Col)
  loc_FB34BA:   If (var_A0 = CLng(3)) Then
  loc_FB34D9:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_FB34EB:       var_A4 = "Name"
  loc_FB3506:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_72, arg_10)
  loc_FB3520:       Set var_AC = Me.FGPoint
  loc_FB3538:       Proc_6_138_106E830(Me.DGItem, global_72, KeyAscii, var_AC)
  loc_FB3546:     End If
  loc_FB3549:   Else
  loc_FB3550:     If (var_A0 = CLng(9)) Then
  loc_FB355D:       Set var_8C = Me.TxtGrid
  loc_FB3563:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_FB357E:       Proc_6_42_129B55C(var_AC, arg_10, 7, 5)
  loc_FB358D:     Else
  loc_FB3594:       If (var_A0 = CLng(&HA)) Then
  loc_FB35A1:         Set var_8C = Me.TxtGrid
  loc_FB35A7:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_FB35C2:         Proc_6_42_129B55C(var_AC, arg_10, 7)
  loc_FB35D1:       Else
  loc_FB35D8:         If Not (var_A0 = CLng(5)) Then
  loc_FB35E2:           If (var_A0 = CLng(6)) Then
  loc_FB35E5:           End If
  loc_FB35EF:           Set var_8C = Me.TxtGrid
  loc_FB35F5:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 2)
  loc_FB3610:           Proc_6_42_129B55C(var_AC, arg_10, 8)
  loc_FB361C:         End If
  loc_FB361C:       End If
  loc_FB361C:     End If
  loc_FB361C:   End If
  loc_FB361C: End If
  loc_FB361C: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1054208
  'Data Table: 4C0558
  Dim var_88 As Variant
  Dim var_9C As Long
  Dim var_A8 As Variant
  Dim var_17C As Double
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_174 As MSHFlexGrid
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_B8 As Variant
  Dim var_A4 As String
  loc_1053FBC: On Error Goto loc_1054202
  loc_1053FD2: var_9C = CLng(Me.FGrid.Col)
  loc_1053FE2: If (var_9C = CLng(3)) Then
  loc_1054008:   If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_1054016:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_105401F:     Set var_A8 = Me.TxtGrid
  loc_105402A:     var_A4 = "Name"
  loc_1054045:     Proc_6_89_1470B00(var_A8, KeyCode, global_72, Shift)
  loc_1054054:   End If
  loc_1054057: Else
  loc_105405E:   If Not (var_9C = CLng(5)) Then
  loc_1054068:     If (var_9C = CLng(6)) Then
  loc_105406B:     End If
  loc_1054078:     Set var_88 = Me.TxtGrid
  loc_105407E:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A8, var_A4, var_A4)
  loc_1054086:     &HFF = var_A8.Text
  loc_10540A9:     var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10540C1:     var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10540EE:     var_160 = CVar(CStr(Format(CVar(Val(var_A4)), "0.000"))) 'String
  loc_10540F6:     Set var_174 = Me.FGrid
  loc_10540FC:     LateIdCallSt
  loc_1054136:     var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105413E:     var_170 = CVar(CLng(6)) 'Long
  loc_1054160:     var_17C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1054176:     var_1A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105417E:     var_1C0 = CVar(CLng(7)) 'Long
  loc_1054196:     var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105419E:     var_120 = CVar(CLng(5)) 'Long
  loc_10541C6:     var_160 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_17C))) 'String
  loc_10541CE:     Set var_1E4 = Me.FGrid
  loc_10541D4:     LateIdCallSt
  loc_1054201:   End If
  loc_1054201: End If
  loc_1054201: Exit Sub
  loc_1054202: ' Referenced from: 1053FBC
  loc_1054202: Proc_6_60_E63754(var_1E4, var_160, var_120, var_B8, var_1C0, var_1A0, var_17C, var_170)
  loc_1054207: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E217AC
  'Data Table: 4C0558
  Dim arg_10 As Integer
  loc_E21794: If (Cancel = 0) Then
  loc_E2179D:   Call Proc_131_51_14526E0(Cancel, var_88)
  loc_E217A6:   arg_10 = Not(var_88)
  loc_E217A9: End If
  loc_E217A9: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 'FC3968
  'Data Table: 4C0558
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FC37D3: Me.DGItem.Visible = False
  loc_FC37F2: If (Me.RecordCount > 0) Then
  loc_FC382F:   Set var_B4 = Me.TxtGrid
  loc_FC3835:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_FC383D:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FC3866:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC386E:   var_EC = CVar(CLng(1)) 'Long
  loc_FC38A1:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_FC38A9:   Set var_B8 = Me.FGrid
  loc_FC38AF:   LateIdCallSt
  loc_FC38DE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC38E6:   var_EC = CVar(CLng(2)) 'Long
  loc_FC3908:   var_B0 = Me.Fields.Item("Name")
  loc_FC3919:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FC3921:   Set var_B8 = Me.FGrid
  loc_FC3927:   LateIdCallSt
  loc_FC3943: End If
  loc_FC394C: Set var_A8 = Me.TxtGrid
  loc_FC3952: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8, var_11C, var_EC)
  loc_FC395A: var_B0.SetFocus
  loc_FC3966: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E73C94
  'Data Table: 4C0558
  loc_E73C52: Proc_6_153_E91D24(Me.DGItem, arg_14)
  loc_E73C69: Set var_8C = Me.FGPoint
  loc_E73C83: Proc_6_138_106E830(Me.DGItem, global_72, 0)
  loc_E73C91: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FEDD60
  'Data Table: 4C0558
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_FEDB96: Set var_88 = Me.Txt
  loc_FEDB9C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FEDBAA: Proc_6_74_E23240(var_8C)
  loc_FEDBB6: Call Proc_131_55_EBC200(var_8C)
  loc_FEDBBE: var_92 = Index
  loc_FEDBC9: If (var_92 = CInt(0)) Then
  loc_FEDBE3:   If (Me.RecordCount > 0) Then
  loc_FEDBF1:     Set var_8C = Me.FGPoint
  loc_FEDC09:     Proc_6_137_1192FDC(Me.DGDepart, global_76, Index)
  loc_FEDC17:   End If
  loc_FEDC65:   Set var_88 = Me.Txt
  loc_FEDC6B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FEDC73:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FEDC8B:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FEDC8E:     Exit Sub
  loc_FEDC8F:   End If
  loc_FEDC9C:   Set var_88 = Me.Txt
  loc_FEDCA2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FEDCAA:   var_A0 = var_8C.Text
  loc_FEDCBC:   var_B0 = "Name"
  loc_FEDCF7:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FEDD00:     Me.MoveFirst
  loc_FEDD23:     Set var_88 = Me.Txt
  loc_FEDD29:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FEDD31:     0 = var_8C.Text
  loc_FEDD4A:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FEDD5F:   End If
  loc_FEDD5F: End If
  loc_FEDD5F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FD0C28
  'Data Table: 4C0558
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  loc_FD0A76: If (CLng(Shift) = &H1B) Then
  loc_FD0A79:   Call Proc_131_55_EBC200()
  loc_FD0A7E:   Exit Sub
  loc_FD0A7F: End If
  loc_FD0A8D: If (KeyCode = CInt(0)) Then
  loc_FD0AA8:   Set var_9C = Nothing
  loc_FD0AB3:   Set var_98 = Nothing
  loc_FD0AE1:   Proc_6_69_134A630(Me.DGDepart, Me.Txt, KeyCode, global_76, Shift, 0)
  loc_FD0B4E:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FD0B55:     Set var_98 = Me.DGDepart
  loc_FD0B74:     Proc_6_138_106E830(var_98, global_76, KeyCode, Me.FGPoint, 1)
  loc_FD0B82:   End If
  loc_FD0B82: End If
  loc_FD0B9E: If (CBool(Me.DGDepart.Visible) = 0) Then
  loc_FD0BB6:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FD0BB9:   End If
  loc_FD0BCE:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FD0BD7:     Proc_6_75_E5335C(Shift, arg_14, var_98)
  loc_FD0BDC:   End If
  loc_FD0BE6:   If (CLng(Shift) = &H26) Then
  loc_FD0BED:     Set var_8C = Me.TopCtrl1
  loc_FD0BF3:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_FD0C0C:     If (CStr(0) = "Add") Then
  loc_FD0C17:       If (KeyCode <> CInt(0)) Then
  loc_FD0C20:         Proc_6_76_E533C8(Shift, arg_14)
  loc_FD0C25:       End If
  loc_FD0C25:     End If
  loc_FD0C25:   End If
  loc_FD0C25: End If
  loc_FD0C25: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EAAD80
  'Data Table: 4C0558
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EAACFE: Proc_6_133_E7FB08(var_94)
  loc_EAAD07: arg_10 = CInt(var_94)
  loc_EAAD10: Proc_6_58_E06050(arg_10, arg_10)
  loc_EAAD23: If (KeyAscii = CInt(0)) Then
  loc_EAAD42:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EAAD54:     var_A0 = "Name"
  loc_EAAD6F:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10)
  loc_EAAD7E:   End If
  loc_EAAD7E: End If
  loc_EAAD7E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EDC81C
  'Data Table: 4C0558
  loc_EDC77E: If (KeyCode = CInt(0)) Then
  loc_EDC79D:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EDC7B1:     var_A4 = "Name"
  loc_EDC7D5:     Proc_183_33_12A1B50(Me.DGDepart, Me.Txt, KeyCode, global_76)
  loc_EDC80B:     Proc_6_138_106E830(Me.DGDepart, global_76, KeyCode, Me.FGPoint)
  loc_EDC819:   End If
  loc_EDC819: End If
  loc_EDC819: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47FE4
  'Data Table: 4C0558
  loc_E47FC2: Set var_88 = Me.Txt
  loc_E47FC8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47FD6: Proc_6_73_E23294(var_8C)
  loc_E47FE2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F08D78
  'Data Table: 4C0558
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim Me As Recordset15
  Dim var_B4 As TextBox
  loc_F08C9F: var_86 = Cancel
  loc_F08CAA: If (var_86 = CInt(0)) Then
  loc_F08CCC:   Set var_8C = Me.Txt
  loc_F08CD2:   Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_94, "Name='")
  loc_F08CDA:   0 = var_90.Text
  loc_F08CF3:   Me.Find 1 & var_94 & "'", var_AC, var_86
  loc_F08D0B: Else
  loc_F08D13:   If (var_86 = CInt(2)) Then
  loc_F08D23:     Set var_8C = Me.Txt
  loc_F08D29:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F08D4F:     Set var_B0 = Me.Txt
  loc_F08D55:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_F08D5D:     var_B4.Text = Proc_6_34_14EEAAC(var_90.Text)
  loc_F08D74:   End If
  loc_F08D74: End If
  loc_F08D74: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E62F44
  'Data Table: 4C0558
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E62F0F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E62F22: Set var_A8 = Me.TxtGrid
  loc_E62F28: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E62F30: var_AC.Visible = False
  loc_E62F3C: Call Proc_131_55_EBC200()
  loc_E62F41: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66CC0
  'Data Table: 4C0558
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E66C7C: Set var_88 = Me.TxtGrid
  loc_E66C82: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E66C9C: If (var_8C.Visible = 0) Then
  loc_E66CB5:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E66CBD: End If
  loc_E66CBD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1F450
  'Data Table: 4C0558
  loc_E1F447: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F44F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF1A4
  'Data Table: 4C0558
  loc_DFF19C: Call Proc_131_50_E402D4()
  loc_DFF1A1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1136440
  'Data Table: 4C0558
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_11360C8: Set var_88 = Me.TopCtrl1
  loc_11360CE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1136113: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_113611C:   Call Form_KeyDown(Cancel, arg_10)
  loc_1136121: End If
  loc_1136125: Set var_88 = Me.TopCtrl1
  loc_113612B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1136144: If (CStr() = "Browse") Then
  loc_1136147:   Exit Sub
  loc_1136148: End If
  loc_1136165: var_C4 = Me.FGrid.Rows
  loc_11361BC: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_11361D2:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11361E2:   var_9C = "+{Tab}"
  loc_11361E8:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_11361F2:   Cancel = 0
  loc_11361F8: Else
  loc_113624F:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_1136265:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11362A4:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_11362A7:       Call TopCtrl1_UnknownEvent_16()
  loc_11362AC:     End If
  loc_11362AC:   End If
  loc_11362AC: End If
  loc_11362B2: global_128 = Cancel
  loc_11362D8: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11362FC: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1136312:   var_11C = CLng(Me.FGrid.Col)
  loc_1136322:   If (var_11C = CLng(3)) Then
  loc_1136338:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1136350:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1136355:     var_12C = vbNullString
  loc_113635F:     Set var_B4 = Me.FGrid
  loc_1136365:     LateIdCallSt
  loc_1136390:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1136398:     var_F8 = CVar(CLng(1)) 'Long
  loc_113639D:     var_12C = vbNullString
  loc_11363A7:     Set var_A0 = Me.FGrid
  loc_11363AD:     LateIdCallSt
  loc_11363C2:   Else
  loc_11363C9:     If Not (var_11C = CLng(2)) Then
  loc_11363D3:       If Not (var_11C = CLng(1)) Then
  loc_11363DD:         If (var_11C = CLng(4)) Then
  loc_11363E0:         End If
  loc_11363E0:       End If
  loc_11363F3:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113640B:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1136410:       var_12C = vbNullString
  loc_113641A:       Set var_B4 = Me.FGrid
  loc_1136420:       LateIdCallSt
  loc_1136438:     End If
  loc_1136438:   End If
  loc_1136438: End If
  loc_113643A: Cancel = 0
  loc_113643D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10768
  'Data Table: 4C0558
  loc_E10759: Call FGrid_UnknownEvent_C()
  loc_E10763: global_104 = 0
  loc_E10766: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '123E21C
  'Data Table: 4C0558
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_123DCE8: Set var_88 = Me.TopCtrl1
  loc_123DCEE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_123DD07: If (CStr() = "Browse") Then
  loc_123DD0A:   Exit Sub
  loc_123DD0B: End If
  loc_123DD1E: var_A0 = CLng(Me.FGrid.Col)
  loc_123DD2E: If (var_A0 = CLng(3)) Then
  loc_123DD35:   Set var_C4 = Me.FGrid
  loc_123DD59:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_123DD86:   Set var_B4 = var_C4
  loc_123DD98:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_123DDC0:   Set var_88 = Me.TxtGrid
  loc_123DDC6:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_123DDCE:   0 = var_B4.Text
  loc_123DDE7:   If (Len(var_9C) <= 1) Then
  loc_123DDF6:     Set var_88 = Me.TxtGrid
  loc_123DDFC:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_123DE04:     var_CA = var_B4.Text
  loc_123DE15:     Set var_B8 = Me.TxtGrid
  loc_123DE1B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_123DE23:     var_C4.Text = var_9C
  loc_123DE36:   End If
  loc_123DE42:   Set var_88 = Me.TxtGrid
  loc_123DE48:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_123DE62:   Set var_B8 = Me.TxtGrid
  loc_123DE68:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_123DE70:   var_C4.SelStart = Len(var_B4.Text)
  loc_123DE86: Else
  loc_123DE8D:   If (var_A0 = CLng(2)) Then
  loc_123DE94:     Set var_C4 = Me.FGrid
  loc_123DEB8:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_123DEE5:     Set var_B4 = var_C4
  loc_123DEF7:     Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_123DF1F:     Set var_88 = Me.TxtGrid
  loc_123DF25:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_123DF2D:     0 = var_B4.Text
  loc_123DF46:     If (Len(var_9C) <= 1) Then
  loc_123DF55:       Set var_88 = Me.TxtGrid
  loc_123DF5B:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_123DF63:       var_CA = var_B4.Text
  loc_123DF74:       Set var_B8 = Me.TxtGrid
  loc_123DF7A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_123DF82:       var_C4.Text = var_9C
  loc_123DF95:     End If
  loc_123DFA1:     Set var_88 = Me.TxtGrid
  loc_123DFA7:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_123DFC1:     Set var_B8 = Me.TxtGrid
  loc_123DFC7:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_123DFCF:     var_C4.SelStart = Len(var_B4.Text)
  loc_123DFE5:   Else
  loc_123DFEC:     If Not (var_A0 = CLng(9)) Then
  loc_123DFF6:       If (var_A0 = CLng(&HA)) Then
  loc_123DFF9:       End If
  loc_123DFFD:       Set var_C4 = Me.FGrid
  loc_123E021:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_123E04E:       Set var_B4 = var_C4
  loc_123E060:       Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_123E088:       Set var_88 = Me.TxtGrid
  loc_123E08E:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_123E096:       0 = var_B4.Text
  loc_123E0AF:       If (Len(var_9C) <= 1) Then
  loc_123E0BE:         Set var_88 = Me.TxtGrid
  loc_123E0C4:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_123E0CC:         var_CA = var_B4.Text
  loc_123E0DD:         Set var_B8 = Me.TxtGrid
  loc_123E0E3:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_123E0EB:         var_C4.Text = var_9C
  loc_123E0FE:       End If
  loc_123E10A:       Set var_88 = Me.TxtGrid
  loc_123E110:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_123E12A:       Set var_B8 = Me.TxtGrid
  loc_123E130:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_123E138:       var_C4.SelStart = Len(var_B4.Text)
  loc_123E14E:     Else
  loc_123E155:       If (var_A0 = CLng(5)) Then
  loc_123E196:         Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_123E1AB:       Else
  loc_123E1B2:         If (var_A0 = CLng(6)) Then
  loc_123E1F3:           Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel)
  loc_123E205:         End If
  loc_123E205:       End If
  loc_123E205:     End If
  loc_123E205:   End If
  loc_123E205: End If
  loc_123E20F: If (CLng(Cancel) <> &HD) Then
  loc_123E217:   global_104 = &HFF
  loc_123E21A: End If
  loc_123E21A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '102F6BC
  'Data Table: 4C0558
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  loc_102F488: Set var_90 = Me.TopCtrl1
  loc_102F48E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_102F4A7: If (CStr() = "Browse") Then
  loc_102F4AA:   Exit Sub
  loc_102F4AB: End If
  loc_102F4C8: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_102F4CB:   Exit Sub
  loc_102F4CC: End If
  loc_102F4DD: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_102F4FF:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_102F539:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_102F55B:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_102F571:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102F57A:         Set var_118 = Me.FGrid
  loc_102F595:       Else
  loc_102F5A8:         Me.FGrid.Rows = 1
  loc_102F5C5:         var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_102F5CD:         Set var_118 = Me.FGrid
  loc_102F5FC:         Me.FGrid.FixedRows = 1
  loc_102F604:       End If
  loc_102F629:       For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_102F633:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_102F63B:         var_E4 = CVar(CLng(0)) 'Long
  loc_102F645:         var_A0 = CVar(CStr(var_86)) 'String
  loc_102F64D:         Set var_90 = Me.FGrid
  loc_102F653:         LateIdCallSt
  loc_102F664:       Next var_11C 'Integer
  loc_102F669:     End If
  loc_102F66C:   Else
  loc_102F68D:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_102F69D:   End If
  loc_102F6A1:   Set var_90 = Me.FGrid
  loc_102F6B2: End If
  loc_102F6B7: Set var_8C = Nothing
  loc_102F6BA: Exit Sub
  loc_102F6BB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1D970
  'Data Table: 4C0558
  loc_E1D967: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1D96F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1EEB0
  'Data Table: 4C0558
  loc_E1EEA7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EEAF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40210
  'Data Table: 4C0558
  Dim var_8C As TextBox
  loc_E401E4: Call Proc_131_55_EBC200()
  loc_E401F4: Set var_88 = Me.TxtGrid
  loc_E401FA: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E40202: var_8C.Visible = False
  loc_E4020E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F09EE0
  'Data Table: 4C0558
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F09DF4: On Error Goto loc_F09ED7
  loc_F09E0C: var_88 = "ADD"
  loc_F09E1A: Call Proc_131_54_E9D068(Proc_5_1_100EC1C(var_88, Me))
  loc_F09E25: Call Proc_131_52_F33428(global_68)
  loc_F09E37: Set var_8C = Me.Txt
  loc_F09E3D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_F09E45: var_94.Enabled = True
  loc_F09E5C: Set var_8C = Me.Txt
  loc_F09E62: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_F09E6A: var_94.SetFocus
  loc_F09E7C: Call Proc_131_59_109D524(MemVar_1F95044, var_88)
  loc_F09E8F: Set var_8C = Me.Txt
  loc_F09E95: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_F09E9D: var_94.Text = var_88
  loc_F09EB9: Me.LblUser.Caption = vbNullString
  loc_F09ECE: Me.LblLDt.Caption = vbNullString
  loc_F09ED6: Exit Sub
  loc_F09ED7: ' Referenced from: F09DF4
  loc_F09ED7: Proc_6_60_E63754(var_94)
  loc_F09EDC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9C458
  'Data Table: 4C0558
  loc_E9C3E0: On Error Goto loc_E9C451
  loc_E9C41A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9C440:   Call Proc_131_54_E9D068(Proc_5_1_100EC1C("INI", Me))
  loc_E9C44B:   Call Proc_131_53_1465E8C(global_68)
  loc_E9C450: End If
  loc_E9C450: Exit Sub
  loc_E9C451: ' Referenced from: E9C3E0
  loc_E9C451: Proc_6_60_E63754()
  loc_E9C456: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10D76CC
  'Data Table: 4C0558
  Dim var_96 As Integer
  Dim unk_4C0579 As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_B8 As Variant
  loc_10D73FC: On Error Goto loc_10D7675
  loc_10D740D: If (Proc_183_56_FE8B08(global_68) = &HFF) Then
  loc_10D7410:   Exit Sub
  loc_10D7411: End If
  loc_10D7448: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10D744D:   var_96 = 0
  loc_10D7459:   unk_4C0579.BeginTrans var_11C
  loc_10D746C:   var_B8 = Me.Bookmark
  loc_10D7474:   var_94 = var_B8 'Variant
  loc_10D7496:   Set var_120 = Me.Txt
  loc_10D749C:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_124, var_128, "Delete From Stock Where DocId='", var_B8)
  loc_10D74A4:   -1 = var_124.Text
  loc_10D74BD:   unk_4C0579.Execute var_134 & var_128 & "'", &HFF, &HFF
  loc_10D74E5:   Set var_120 = Me.Txt
  loc_10D74EB:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_124)
  loc_10D74FD:   var_168 = 0
  loc_10D7510:   var_160 = 0
  loc_10D751B:   var_15C = 0
  loc_10D752E:   var_154 = 0
  loc_10D7539:   var_150 = 0
  loc_10D754C:   var_148 = 0
  loc_10D758B:   var_128 = "Stock"
  loc_10D7594:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_10D75BF:   unk_4C0579.CommitTrans
  loc_10D75C6:   var_96 = 0
  loc_10D75D4:   Me.Requery -1
  loc_10D75E4:   Me.Requery -1
  loc_10D75F4:   Me.Requery -1
  loc_10D7614:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10D7621:     Me.Bookmark = var_94
  loc_10D7629:   Else
  loc_10D763D:     If (Me.EOF = 0) Then
  loc_10D7646:       Me.MoveLast
  loc_10D764B:     End If
  loc_10D764B:   End If
  loc_10D764B:   Call Proc_131_53_1465E8C(var_96, var_148, 0, var_150, var_154)
  loc_10D766C:   Proc_5_0_1107AD0(&HFF, Me, global_68, 0)
  loc_10D7674: End If
  loc_10D7674: Exit Sub
  loc_10D7675: ' Referenced from: 10D73FC
  loc_10D767B: If (var_96 = &HFF) Then
  loc_10D7684:   unk_4C0579.RollbackTrans
  loc_10D7689: End If
  loc_10D7691: Set var_120 = Err()
  loc_10D7697: Call 0.Method_arg_2C (var_128, 0, var_15C)
  loc_10D76B8: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10D76CB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F8FF08
  'Data Table: 4C0558
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F8FDAC: On Error Goto loc_F8FEC4
  loc_F8FDBD: If (Proc_183_55_FE8490(global_68) = &HFF) Then
  loc_F8FDC0:   Exit Sub
  loc_F8FDC1: End If
  loc_F8FDD8: If (Me.RecordCount > 0) Then
  loc_F8FDFE:   Call Proc_131_54_E9D068(Proc_5_1_100EC1C("EDIT", Me))
  loc_F8FE17:   Set var_90 = Me.Txt
  loc_F8FE1D:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F8FE25:   var_8C = var_98.Tag
  loc_F8FE30:   global_80 = var_8C
  loc_F8FE4B:   Set var_90 = Me.Txt
  loc_F8FE51:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F8FE59:   var_98.Enabled = False
  loc_F8FE68: Else
  loc_F8FE89:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F8FE99: End If
  loc_F8FEA6: Me.LblUser.Caption = vbNullString
  loc_F8FEBB: Me.LblLDt.Caption = vbNullString
  loc_F8FEC3: Exit Sub
  loc_F8FEC4: ' Referenced from: F8FDAC
  loc_F8FECC: Set var_90 = Err()
  loc_F8FED2: Call 0.Method_arg_2C (var_8C)
  loc_F8FEF3: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F8FF06: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18188
  'Data Table: 4C0558
  loc_E1817D: Me.Global.Unload Me
  loc_E18185: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB4784
  'Data Table: 4C0558
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB46F4: On Error Goto loc_EB477E
  loc_EB470E: If (Me.RecordCount <= 0) Then
  loc_EB4717:   var_B8 = "Information"
  loc_EB4732:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB4742:   Exit Sub
  loc_EB4743: End If
  loc_EB4746: MemVar_1F950E4 = "SELECT distinct Stock.DocId AS SearchCode,Stock.Vno,CAST(Vdate AS VarChar(11)) as OpeningDate,ItemMast.name as ItemName ,Stock.QtyRec,Depart.Name as Department FROM (Stock INNER JOIN ItemMast ON Stock.Item = ItemMast.Code And ItemMast.ItemType='Store') INNER JOIN Depart ON Stock.DepartCode = Depart.Code WHERE (((Stock.Vtype)='STOP')) Order by Depart.Name"
  loc_EB4750: MemVar_1F95120 = Me
  loc_EB475D: Proc_6_126_F1C850("500,1200,2500,1000,2000")
  loc_EB4778: Call 0.Method_arg_2B0 (1)
  loc_EB477D: Exit Sub
  loc_EB477E: ' Referenced from: EB46F4
  loc_EB477E: Proc_6_60_E63754(var_B8)
  loc_EB4783: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3DD48
  'Data Table: 4C0558
  loc_E3DD38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3DD40: Call Proc_131_53_1465E8C(global_68)
  loc_E3DD45: Exit Sub
  loc_E3DD46: Set var_2000 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3B888
  'Data Table: 4C0558
  loc_E3B878: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B880: Call Proc_131_53_1465E8C(global_68)
  loc_E3B885: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3DB68
  'Data Table: 4C0558
  loc_E3DB58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3DB60: Call Proc_131_53_1465E8C(global_68)
  loc_E3DB65: Exit Sub
  loc_E3DB66: Set var_2000 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3DAA8
  'Data Table: 4C0558
  loc_E3DA98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3DAA0: Call Proc_131_53_1465E8C(global_68)
  loc_E3DAA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10A6B38
  'Data Table: 4C0558
  Dim var_D4 As String
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_B4 As Field20
  Dim var_E4 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_4C0579 As Connection15
  Dim var_88 As Recordset15
  Dim var_136 As Integer
  loc_10A6888: On Error Goto loc_10A6B10
  loc_10A6898: var_D4 = "SELECT Stock.Vdate,Stock.Sno,Stock.Item,Stock.QtyRec Qty,Stock.Unit WtUnit,Stock.Rate,Stock.Amount,Stock.DepartCode,Stock.GodownCode,Stock.RecdQty WtQty,Stock.ConvRatio,ItemMast.Name as ItemName,ItemMast.IssueUnit Unit, GodownMast.Name as GodownName ,Stock.GodownCode FROM (Stock INNER JOIN ItemMast ON Stock.Item = ItemMast.Code And ItemMast.ItemType='Store') INNER JOIN GodownMast ON Stock.GodownCode = GodownMast.Code where Stock.Docid='"
  loc_10A68BA: var_B4 = Me.Fields.Item("SearchCode")
  loc_10A68CA: var_E4 = var_D4 & var_B4.Value 
  loc_10A68CE: var_F4 = "' ORDER BY ItemMast.Name"
  loc_10A68D3: var_104 = var_E4 & var_F4 
  loc_10A68E1: unk_4C0579.Execute CStr(var_104), var_128, -1
  loc_10A68EC: Set var_88 = var_12C
  loc_10A690C: var_130 = var_88.RecordCount
  loc_10A691A: If (var_130 = 0) Then
  loc_10A6936:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_128)
  loc_10A6946:   Exit Sub
  loc_10A6947: End If
  loc_10A695D: Set var_A0 = var_88 
  loc_10A6969: var_136 = CreateFieldDefFile(var_A0, MemVar_1F950B4 & "\OpenningStock.ttx")
  loc_10A6973: Set var_88 = var_A0
  loc_10A6979: var_B0 = CVar(var_136) 'Integer
  loc_10A697C: var_98 = var_B0 'Variant
  loc_10A6998: var_108 = MemVar_1F950B4 & "\OpenningStock.RPT"
  loc_10A69A1: Call 0.Method_arg_1C (var_108, var_B0, var_A0)
  loc_10A69AC: MemVar_1F951E8 = var_A0
  loc_10A69C7: Call 0.Method_arg_90 (var_A0, var_130, var_9A, 1)
  loc_10A69CF: Call 0.Method_arg_24 (var_136, &HFF)
  loc_10A69DB: For var_13A =  To CInt(var_130): var_12C = var_13A 'Integer
  loc_10A69F4:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_10A69FC:   Call 0.Method_arg_20 (var_B4)
  loc_10A6A04:   Call 0.Method_arg_30 (var_108)
  loc_10A6A4A:   If (Ucase(CVar(var_108)) = Ucase("Title")) Then
  loc_10A6A60:     Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_10A6A68:     Call 0.Method_arg_20 (var_B4)
  loc_10A6A70:     Call 0.Method_arg_38 ("'Openning Stock'")
  loc_10A6A7C:   End If
  loc_10A6A7F: Next var_13A 'Integer
  loc_10A6A9D: Call 0.Method_arg_64 (var_A0, CVar(var_88))
  loc_10A6AA5: Call 0.Method_arg_2C (var_D4)
  loc_10A6AB3: Call 0.Method_arg_150 (var_F4)
  loc_10A6ABE: Call 0.Method_arg_50 (var_108)
  loc_10A6AC8: Set var_B4 = Nothing
  loc_10A6AE2: Set var_A0 = MemVar_1F951E8 
  loc_10A6AEE: Proc_6_99_1484404(var_A0, 0, var_108)
  loc_10A6AF9: MemVar_1F951E8 = var_A0
  loc_10A6B0C: Set var_88 = Nothing
  loc_10A6B0F: Exit Sub
  loc_10A6B10: ' Referenced from: 10A6888
  loc_10A6B16: Call 0.Method_arg_50 (var_108, &HFF)
  loc_10A6B2B: Proc_183_57_104B0BC(var_108, "TopCtrl1_ePrn")
  loc_10A6B37: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E21758
  'Data Table: 4C0558
  Dim Me As Recordset15
  loc_E2173F: Me.Requery -1
  loc_E2174F: Me.Requery -1
  loc_E21754: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14B5D14
  'Data Table: 4C0558
  Dim var_F8 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_138 As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim unk_4C0579 As Connection15
  Dim var_B4 As String
  Dim var_AC As Variant
  Dim var_194 As String
  Dim var_198 As String
  Dim var_AA0 As Double
  Dim var_278 As TextBox
  Dim var_2EC As Variant
  Dim var_310 As Variant
  Dim var_358 As TextBox
  Dim var_4D4 As Variant
  Dim var_4F4 As Variant
  Dim var_56C As Variant
  Dim var_58C As Variant
  Dim var_604 As Variant
  Dim var_624 As Variant
  Dim var_69C As Variant
  Dim var_6BC As Variant
  Dim var_730 As Variant
  Dim var_750 As Variant
  Dim var_7C4 As Variant
  Dim var_7E4 As Variant
  Dim var_85C As Variant
  Dim var_87C As Variant
  Dim var_8F4 As Variant
  Dim var_914 As Variant
  Dim var_9A8 As Variant
  Dim var_9C8 As Variant
  Dim var_1C0 As String
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_29C As Variant
  Dim var_4A4 As Variant
  Dim var_5F4 As Variant
  Dim var_794 As Variant
  Dim var_958 As Variant
  Dim var_A4 As Recordset15
  Dim Me As Recordset15
  loc_14B51B4: On Error Goto loc_14B5CC0
  loc_14B51BB: var_86 = CByte(0) 'Byte
  loc_14B51CA: Set var_A8 = Me.Txt
  loc_14B51D0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_14B51E1: Set var_B0 = var_AC
  loc_14B51F9: If (Proc_183_19_E8E68C(var_B0, "Department") = 0) Then
  loc_14B5203:   Call Txt_GotFocus(CInt(0))
  loc_14B5208:   Exit Sub
  loc_14B5209: End If
  loc_14B522A: var_E8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14B5234: For var_118 = 1 To var_E8: var_9C = var_118 'Variant
  loc_14B523F:   var_D8 = CVar(CLng(var_9C)) 'Long
  loc_14B5247:   var_F8 = CVar(CLng(2)) 'Long
  loc_14B5283:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_14B52AB:     For var_16C = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9E = var_16C 'Integer
  loc_14B52B9:       var_17C = (var_9E = CInt(3))
  loc_14B52C2:       var_D8 = CVar(CLng(var_9C)) 'Long
  loc_14B52E5:       var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14B52EB:       var_148 = Trim(var_138)
  loc_14B5311:       If CBool(CVar(CLng(var_9E)) And (var_148 = vbNullString)) Then
  loc_14B531C:         If (var_9E = CInt(3)) Then
  loc_14B5338:           MsgBox("Item Name is required", 0, var_138, var_148, var_168)
  loc_14B5348:         End If
  loc_14B535C:         Me.FGrid.Row = CVar(CLng(var_9C))
  loc_14B5377:         Me.FGrid.Col = CVar(CLng(var_9E))
  loc_14B5383:         Set var_A8 = Me.FGrid
  loc_14B53A7:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_14B53AF:         Exit Sub
  loc_14B53B0:       End If
  loc_14B53B3:     Next var_16C 'Integer
  loc_14B53B8:   End If
  loc_14B53BB: Next var_118 'Variant
  loc_14B53CA: unk_4C0579.BeginTrans var_190
  loc_14B53D3: var_86 = CByte(1) 'Byte
  loc_14B53DB: Set var_A8 = Me.TopCtrl1
  loc_14B53E1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14B53E9: var_B4 = CStr()
  loc_14B53FA: If (var_B4 = "Edit") Then
  loc_14B541B:   Set var_A8 = Me.Txt
  loc_14B5421:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_B4, "Delete From Stock Where Docid='")
  loc_14B5429:   var_C8 = var_AC.Text
  loc_14B5432:   var_194 = -1 & var_B4
  loc_14B5439:   var_198 = var_194 & "'"
  loc_14B5442:   unk_4C0579.Execute var_198, var_B0, 
  loc_14B545C: End If
  loc_14B547D: var_E8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14B5487: For var_1B8 = 1 To var_E8: var_9C = var_1B8 'Variant
  loc_14B5492:   var_D8 = CVar(CLng(var_9C)) 'Long
  loc_14B549A:   var_F8 = CVar(CLng(1)) 'Long
  loc_14B54B4:   var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14B54D6:   If CBool(Trim(var_138) <> vbNullString) Then
  loc_14B54E7:     Set var_A8 = Me.Txt
  loc_14B54ED:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_198)
  loc_14B5506:     var_AA0 = Val(CStr(var_9C))
  loc_14B5514:     Set var_B0 = Me.Txt
  loc_14B551A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E0, var_AA0)
  loc_14B5522:     var_C8 = CVar(var_1E0) 'Address
  loc_14B5529:     Proc_6_7_F26918(var_138, var_C8)
  loc_14B553C:     Set var_274 = Me.Txt
  loc_14B5542:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_278, var_27C)
  loc_14B554A:     var_D8 = var_278.Tag
  loc_14B555C:     var_2EC = CVar(CLng(1)) 'Long
  loc_14B556B:     var_310 = Me.FGrid.TextMatrix)
  loc_14B5585:     Set var_354 = Me.Txt
  loc_14B558B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_358, var_35C, var_310)
  loc_14B5593:     var_2EC = var_358.Tag
  loc_14B559B:     Proc_6_104_ED68A8(var_3EC, CVar(CLng(var_9C)))
  loc_14B55A4:     Set var_420 = Me.TopCtrl1
  loc_14B55AA:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC.Text)
  loc_14B55E6:     var_4D4 = CVar(CLng(var_9C)) 'Long
  loc_14B55EE:     var_4F4 = CVar(CLng(5)) 'Long
  loc_14B5618:     var_56C = CVar(CLng(var_9C)) 'Long
  loc_14B5620:     var_58C = CVar(CLng(5)) 'Long
  loc_14B564A:     var_604 = CVar(CLng(var_9C)) 'Long
  loc_14B5652:     var_624 = CVar(CLng(5)) 'Long
  loc_14B567C:     var_69C = CVar(CLng(var_9C)) 'Long
  loc_14B5684:     var_6BC = CVar(CLng(8)) 'Long
  loc_14B56A4:     var_730 = CVar(CLng(var_9C)) 'Long
  loc_14B56AC:     var_750 = CVar(CLng(6)) 'Long
  loc_14B56CC:     var_7C4 = CVar(CLng(var_9C)) 'Long
  loc_14B56D4:     var_7E4 = CVar(CLng(7)) 'Long
  loc_14B56FE:     var_85C = CVar(CLng(var_9C)) 'Long
  loc_14B5706:     var_87C = CVar(CLng(9)) 'Long
  loc_14B5730:     var_8F4 = CVar(CLng(var_9C)) 'Long
  loc_14B5738:     var_914 = CVar(CLng(4)) 'Long
  loc_14B5758:     var_9A8 = CVar(CLng(var_9C)) 'Long
  loc_14B5760:     var_9C8 = CVar(CLng(&HA)) 'Long
  loc_14B5799:     var_B4 = "Insert Into Stock (DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code,GodownCode,Item,DepartCode,U_Name,U_EntDt,U_AE,Specification," & "ChalQty,RecdQty,RejQty,AccQty,Unit,ConvRatio,QtyRec,Rate,RecdUnit,Amount,Logsite_Code) "
  loc_14B57ED:     var_18C = CVar(var_B4 & "Values(" & "'" & var_198 & "'," & CStr(var_AA0) & "," & CStr(global_136) & ",") & var_138 & ",'" 
  loc_14B583F:     var_29C = var_18C & CVar(global_140) & "','" & CVar(global_132) & "','" & CVar(MemVar_1F95070) & "'," & "'" & CVar(var_27C) 
  loc_14B5899:     var_4A4 = var_29C & "','" & CVar(CStr(var_310)) & "','" & CVar(var_35C) & "','" & CVar(MemVar_1F950C8) & "'," & var_3EC & ",'" & IIf((CStr(var_430) = "Add"), "A", "E") 
  loc_14B58CA:     var_5F4 = var_4A4 & "','Opening Stock'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",0," 
  loc_14B58FD:     var_794 = var_5F4 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14B5939:     var_958 = var_794 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14B5980:     unk_4C0579.Execute CStr(var_958 & "'," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(MemVar_1F95078) & "')"), var_A94, -1
  loc_14B5A64:   End If
  loc_14B5A67: Next var_1B8 'Variant
  loc_14B5A71: Set var_A8 = Me.TopCtrl1
  loc_14B5A77: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14B5A90: If (CStr() = "Add") Then
  loc_14B5AA7:   var_B4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_14B5ACD:   var_138 = CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_140 & "' And VP.Date_From<=") 'String
  loc_14B5ADB:   Proc_6_7_F26918(var_C8, MemVar_1F950EC, var_138)
  loc_14B5AFA:   unk_4C0579.Execute CStr(var_18C & var_C8 & " Order By VP.Date_From DESC"), -1, var_A8
  loc_14B5B05:   Set var_A4 = var_A8
  loc_14B5B3B:   If (var_A4.RecordCount > 0) Then
  loc_14B5B6F:     var_1C0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(global_136) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_14B5B8E:     var_148 = CVar(var_1C0 & MemVar_1F95078 & "') and V_Type='" & global_140 & "' and Date_From=") 'String
  loc_14B5BB7:     Proc_6_7_F26918(var_138, CVar(var_A4.Fields.Item("Date_From")), var_148)
  loc_14B5BBF:     var_168 = var_18C & var_138 
  loc_14B5BCD:     unk_4C0579.Execute CStr(var_168), -1, var_B0
  loc_14B5BFB:   End If
  loc_14B5BFB: End If
  loc_14B5C01: unk_4C0579.CommitTrans
  loc_14B5C0A: var_86 = CByte(0) 'Byte
  loc_14B5C19: Me.Requery -1
  loc_14B5C29: Me.Requery -1
  loc_14B5C32: Set var_A8 = Me.DGItem
  loc_14B5C47: Set var_A8 = Me.DGDepart
  loc_14B5C5C: Set var_A8 = Me.TopCtrl1
  loc_14B5C62: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(DGDepart.DispID_FFFF)
  loc_14B5C7B: If (CStr(DGItem.DispID_FFFF) = "Add") Then
  loc_14B5C7E:   Call TopCtrl1_UnknownEvent_A()
  loc_14B5C83:   Exit Sub
  loc_14B5C84: End If
  loc_14B5C99: var_B4 = "INI"
  loc_14B5CA7: Call Proc_131_54_E9D068(Proc_5_1_100EC1C(var_B4, Me))
  loc_14B5CB2: Call Proc_131_53_1465E8C(global_68)
  loc_14B5CBC: Set var_A4 = Nothing
  loc_14B5CBF: Exit Sub
  loc_14B5CC0: ' Referenced from: 14B51B4
  loc_14B5CC9: If (CInt(var_86) = 1) Then
  loc_14B5CD2:   unk_4C0579.RollbackTrans
  loc_14B5CD7: End If
  loc_14B5CDF: Set var_A8 = Err()
  loc_14B5CE5: Call 0.Method_arg_2C (var_B4)
  loc_14B5CFE: MsgBox(CVar(var_B4), &H10, var_138, var_148, var_168)
  loc_14B5D11: Exit Sub
End Sub

Private Sub Form_Load() '10A30F4
  'Data Table: 4C0558
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  loc_10A2E20: On Error Goto loc_10A30EB
  loc_10A2E32: Me.LblUser.Left = CDbl(13500)
  loc_10A2E49: Me.LblUser.Top = CDbl(7800)
  loc_10A2E60: Me.LblLDt.Top = CDbl(8160)
  loc_10A2E77: Me.LblLDt.Left = CDbl(13500)
  loc_10A2E86: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10A2E9E: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_10A2EB0: Set var_88 = Me.TopCtrl1
  loc_10A2EB6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10A2EC4: Call 0.Method_arg_50 (var_AC)
  loc_10A2ED4: Set var_88 = Me.TopCtrl1
  loc_10A2EDA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_10A2F01: Me.TopCtrl1.CursorLocation = 3
  loc_10A2F24: var_AC = "SELECT ItemMast.Code, ItemMast.Name, ItemMast.Unit,Itemmast.IssueUnit,ItemMAst.ConvRatio,ItemMast.PurchRate FROM ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_10A2F35: Me.Open CVar(var_AC & "' or LOGSITE_CODE='HO') and ItemType IN ('Store') And ItemMast.ActiveYN<>'No' Order by ItemMast.Name"), CVar(MemVar_1F95044), 2
  loc_10A2F49: CVarUnk
  loc_10A2F4E: VerifyVarObj
  loc_10A2F54: Set var_88 = Me.DGItem
  loc_10A2F5A: LateIdStAd
  loc_10A2F84: Me.DGItem.CursorLocation = 3
  loc_10A2FAE: var_BC = CVar("Select Code,Name From GodownMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10A2FCC: CVarUnk
  loc_10A2FD1: VerifyVarObj
  loc_10A2FD7: Set var_88 = Me.DGDepart
  loc_10A2FDD: LateIdStAd
  loc_10A3007: Me.DGDepart.CursorLocation = 3
  loc_10A302A: var_AC = "Select Distinct DocId as SearchCode,VType,Vno,vPrefix,Site_Code,LogSite_Code From Stock  where (LOGSITE_CODE='" & MemVar_1F95078
  loc_10A303B: r_BC, CVar(MemVar_1F95044), 2 CVar(var_AC & "' or LOGSITE_CODE='HO') and VType='STOP' Order by VNO"), CVar(MemVar_1F95044), 2
  loc_10A3069: Call Proc_131_54_E9D068(Proc_5_1_100EC1C("INI", Me, New, 3, -1, Me, New), 3, -1, Me)
  loc_10A3074: Call Proc_131_49_127D3F4(New, 3)
  loc_10A3079: Call Proc_131_53_1465E8C(-1)
  loc_10A3091: Me.FGrid.Left = CVar(CDbl(500))
  loc_10A30AC: Me.FGrid.Width = CVar(CDbl(12000))
  loc_10A30C7: Me.FGrid.Top = CVar(CDbl(1850))
  loc_10A30E2: Me.FGrid.Height = CVar(CDbl(6320))
  loc_10A30EA: Exit Sub
  loc_10A30EB: ' Referenced from: 10A2E20
  loc_10A30EB: Proc_6_60_E63754()
  loc_10A30F0: Exit Sub
End Sub

Private Sub Form_Resize() 'ED6F48
  'Data Table: 4C0558
  Dim var_8C As Label
  loc_ED6EA6: Call 0.Method_arg_50 (var_88)
  loc_ED6EB8: Me.LblFormCaption.Caption = var_88
  loc_ED6ED1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED6EDD: Set var_A0 = Me.TopCtrl1
  loc_ED6EE3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED6EF0: Set var_8C = Me.TopCtrl1
  loc_ED6EF6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED6F10: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED6F2B: Call 0.Method_arg_100 (var_B8)
  loc_ED6F3D: Me.LblFormCaption.Width = var_B8
  loc_ED6F45: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5746C
  'Data Table: 4C0558
  loc_E57437: Set global_76 = Nothing
  loc_E57449: Set global_68 = Nothing
  loc_E5745B: Set global_72 = Nothing
  loc_E57467: MasterFormExit = 0
  loc_E5746A: Exit Sub
End Sub

Private Sub Form_Activate() 'E47898
  'Data Table: 4C0558
  loc_E47868: On Error Goto loc_E47892
  loc_E4786F: Set var_88 = Me.TopCtrl1
  loc_E47875: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4788A: If (CLng(CInt()) = &H2D) Then
  loc_E4788D:   Call TopCtrl1_UnknownEvent_15()
  loc_E47892:   ' Referenced from: E47868
  loc_E47892: End If
  loc_E47892: Proc_6_60_E63754()
  loc_E47897: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E275CC
  'Data Table: 4C0558
  Dim var_1F01 As Double
  loc_E275B1: If (MasterFormExit = &HFF) Then
  loc_E275C1:   Me.Global.Unload Me
  loc_E275C9: End If
  loc_E275C9: Exit Sub
  loc_E275CA: var_1F01 = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B674
  'Data Table: 4C0558
  loc_E2B64C: On Error Goto loc_E2B66C
  loc_E2B663: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B66B: Exit Sub
  loc_E2B66C: ' Referenced from: E2B64C
  loc_E2B66C: Proc_6_60_E63754(Shift)
  loc_E2B671: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F4D454
  'Data Table: 4C0558
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4D34B: Me.DGDepart.Visible = False
  loc_F4D36A: If (Me.RecordCount > 0) Then
  loc_F4D3A9:   Set var_B4 = Me.Txt
  loc_F4D3AF:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4D3B7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4D3EA:   var_B0 = Me.Fields.Item("Code")
  loc_F4D409:   Set var_B4 = Me.Txt
  loc_F4D40F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4D417:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4D42D: End If
  loc_F4D438: Set var_A8 = Me.Txt
  loc_F4D43E: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(0))
  loc_F4D446: var_B0.SetFocus
  loc_F4D452: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_1F 'E741C8
  'Data Table: 4C0558
  loc_E74186: Proc_6_153_E91D24(Me.DGDepart, arg_14)
  loc_E7419D: Set var_8C = Me.FGPoint
  loc_E741B9: Proc_6_138_106E830(Me.DGDepart, global_76, CInt(0))
  loc_E741C7: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63E0C
  'Data Table: 4C0558
  loc_E63DDC: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_E63DDF:   Call DGDepart_UnknownEvent_9()
  loc_E63DE4: End If
  loc_E63E00: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E63E03:   Call DGItem_UnknownEvent_9()
  loc_E63E08: End If
  loc_E63E08: Exit Sub
  loc_E63E09: VCallFPR8
End Sub

Public Function MasterFormExitGet() '4C1448
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4C1457
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E97E30
  'Data Table: 4C0558
  Dim Me As Recordset15
  loc_E97DBE: On Error Goto loc_E97E27
  loc_E97DC7: Me.MoveFirst
  loc_E97DF1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97E19: Proc_5_0_1107AD0(&HFF, Me, global_68)
  loc_E97E21: Call Proc_131_53_1465E8C(0)
  loc_E97E26: Exit Sub
  loc_E97E27: ' Referenced from: E97DBE
  loc_E97E27: Proc_6_60_E63754(var_A0)
  loc_E97E2C: Exit Sub
End Sub

Public Sub Proc_131_49_127D3F4
  'Data Table: 4C0558
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_127CE3C: On Error Goto loc_127D3EE
  loc_127CE4D: Set var_88 = Me.Txt
  loc_127CE53: Call 0.Method_Proc_131_49_127D3F40 (CInt(0), var_8C)
  loc_127CE72: Me.DGDepart.Left = CVar(var_8C.Left)
  loc_127CE8E: Set var_B4 = Me.Txt
  loc_127CE94: Call 0.Method_Proc_131_49_127D3F40 (CInt(0), var_B8)
  loc_127CEAF: Set var_88 = Me.Txt
  loc_127CEB5: Call 0.Method_Proc_131_49_127D3F40 (CInt(0), var_8C)
  loc_127CEBD: var_90 = var_8C.Top
  loc_127CECD: var_A0 = CVar(((var_90 + var_B8.Height) + CDbl(&H19))) 'Single
  loc_127CEDC: Me.DGDepart.Top = CVar(var_8C.Left)
  loc_127CEF4: Call 0.Method_Me8 (var_90)
  loc_127CF00: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_127CF0F: Me.FGrid.Height = CVar(var_8C.Left)
  loc_127CF23: Set var_88 = Me.TxtGrid
  loc_127CF29: Call 0.Method_Proc_131_49_127D3F40 (0, var_8C)
  loc_127CF48: Me.DGItem.Left = CVar(var_8C.Left)
  loc_127CF62: Set var_B4 = Me.TxtGrid
  loc_127CF68: Call 0.Method_Proc_131_49_127D3F40 (0, var_B8)
  loc_127CF81: Set var_88 = Me.TxtGrid
  loc_127CF87: Call 0.Method_Proc_131_49_127D3F40 (0, var_8C)
  loc_127CF9B: var_A0 = CVar((var_8C.Top + var_B8.Height)) 'Single
  loc_127CFAA: Me.DGItem.Top = CVar(var_8C.Left)
  loc_127CFC0: Set var_C4 = Me.FGrid
  loc_127CFCF: var_C4.Cols = &HB
  loc_127CFE0: var_C4.Rows = 1
  loc_127CFF9: global_56 = CStr(CLng(var_C4.BackColor))
  loc_127D006: var_A0 = CVar(CLng(0)) 'Long
  loc_127D00B: var_E8 = &H226
  loc_127D017: LateIdCallSt
  loc_127D01F: var_A0 = 0
  loc_127D02B: var_E8 = CVar(CLng(0)) 'Long
  loc_127D030: var_108 = "S.No"
  loc_127D039: LateIdCallSt
  loc_127D044: var_A0 = CVar(CLng(1)) 'Long
  loc_127D049: var_E8 = 0
  loc_127D055: LateIdCallSt
  loc_127D060: var_A0 = CVar(CLng(2)) 'Long
  loc_127D065: var_E8 = 0
  loc_127D071: LateIdCallSt
  loc_127D079: var_A0 = 0
  loc_127D085: var_E8 = CVar(CLng(2)) 'Long
  loc_127D08A: var_108 = "Date"
  loc_127D093: LateIdCallSt
  loc_127D09E: var_A0 = CVar(CLng(2)) 'Long
  loc_127D0A9: var_E8 = CVar(CInt(1)) 'Integer
  loc_127D0B0: LateIdCallSt
  loc_127D0BB: var_A0 = CVar(CLng(3)) 'Long
  loc_127D0C0: var_E8 = &HE10
  loc_127D0CC: LateIdCallSt
  loc_127D0D7: var_A0 = CVar(CLng(3)) 'Long
  loc_127D0E2: var_E8 = CVar(CInt(1)) 'Integer
  loc_127D0E9: LateIdCallSt
  loc_127D0F1: var_A0 = 0
  loc_127D0FD: var_E8 = CVar(CLng(3)) 'Long
  loc_127D102: var_108 = "Item Name"
  loc_127D10B: LateIdCallSt
  loc_127D116: var_A0 = CVar(CLng(4)) 'Long
  loc_127D11B: var_E8 = &H3B6
  loc_127D127: LateIdCallSt
  loc_127D12F: var_A0 = 0
  loc_127D13B: var_E8 = CVar(CLng(4)) 'Long
  loc_127D140: var_108 = "Unit"
  loc_127D149: LateIdCallSt
  loc_127D154: var_A0 = CVar(CLng(4)) 'Long
  loc_127D15F: var_E8 = CVar(CInt(1)) 'Integer
  loc_127D166: LateIdCallSt
  loc_127D171: var_A0 = CVar(CLng(9)) 'Long
  loc_127D176: var_E8 = &H3E8
  loc_127D182: LateIdCallSt
  loc_127D18A: var_A0 = 0
  loc_127D196: var_E8 = CVar(CLng(9)) 'Long
  loc_127D19B: var_108 = "Rate"
  loc_127D1A4: LateIdCallSt
  loc_127D1AF: var_A0 = CVar(CLng(9)) 'Long
  loc_127D1BA: var_E8 = CVar(CInt(7)) 'Integer
  loc_127D1C1: LateIdCallSt
  loc_127D1C9: var_A0 = 0
  loc_127D1D5: var_E8 = CVar(CLng(5)) 'Long
  loc_127D1DA: var_108 = "Qty"
  loc_127D1E3: LateIdCallSt
  loc_127D1EE: var_A0 = CVar(CLng(5)) 'Long
  loc_127D1F9: var_E8 = CVar(CInt(7)) 'Integer
  loc_127D200: LateIdCallSt
  loc_127D20B: var_A0 = CVar(CLng(5)) 'Long
  loc_127D216: var_E8 = CVar(CInt(7)) 'Integer
  loc_127D21D: LateIdCallSt
  loc_127D228: var_A0 = CVar(CLng(5)) 'Long
  loc_127D22D: var_E8 = &H3B6
  loc_127D239: LateIdCallSt
  loc_127D241: var_A0 = 0
  loc_127D24D: var_E8 = CVar(CLng(6)) 'Long
  loc_127D252: var_108 = "Con.Ratio"
  loc_127D25B: LateIdCallSt
  loc_127D266: var_A0 = CVar(CLng(6)) 'Long
  loc_127D271: var_E8 = CVar(CInt(7)) 'Integer
  loc_127D278: LateIdCallSt
  loc_127D283: var_A0 = CVar(CLng(6)) 'Long
  loc_127D28E: var_E8 = CVar(CInt(7)) 'Integer
  loc_127D295: LateIdCallSt
  loc_127D2A0: var_A0 = CVar(CLng(6)) 'Long
  loc_127D2A5: var_E8 = &H47E
  loc_127D2B1: LateIdCallSt
  loc_127D2B9: var_A0 = 0
  loc_127D2C5: var_E8 = CVar(CLng(7)) 'Long
  loc_127D2CA: var_108 = "Wt Qty"
  loc_127D2D3: LateIdCallSt
  loc_127D2DE: var_A0 = CVar(CLng(7)) 'Long
  loc_127D2E9: var_E8 = CVar(CInt(7)) 'Integer
  loc_127D2F0: LateIdCallSt
  loc_127D2FB: var_A0 = CVar(CLng(7)) 'Long
  loc_127D306: var_E8 = CVar(CInt(7)) 'Integer
  loc_127D30D: LateIdCallSt
  loc_127D318: var_A0 = CVar(CLng(7)) 'Long
  loc_127D31D: var_E8 = &H3B6
  loc_127D329: LateIdCallSt
  loc_127D331: var_A0 = 0
  loc_127D33D: var_E8 = CVar(CLng(8)) 'Long
  loc_127D342: var_108 = "Wt.Unit"
  loc_127D34B: LateIdCallSt
  loc_127D356: var_A0 = CVar(CLng(8)) 'Long
  loc_127D361: var_E8 = CVar(CInt(1)) 'Integer
  loc_127D368: LateIdCallSt
  loc_127D373: var_A0 = CVar(CLng(8)) 'Long
  loc_127D378: var_E8 = &H3B6
  loc_127D384: LateIdCallSt
  loc_127D38F: var_A0 = CVar(CLng(&HA)) 'Long
  loc_127D394: var_E8 = &H5C3
  loc_127D3A0: LateIdCallSt
  loc_127D3A8: var_A0 = 0
  loc_127D3B4: var_E8 = CVar(CLng(&HA)) 'Long
  loc_127D3B9: var_108 = "Stock Value"
  loc_127D3C2: LateIdCallSt
  loc_127D3CD: var_A0 = CVar(CLng(&HA)) 'Long
  loc_127D3D8: var_E8 = CVar(CInt(7)) 'Integer
  loc_127D3DF: LateIdCallSt
  loc_127D3E9: Set var_C4 = Nothing 
  loc_127D3ED: Exit Sub
  loc_127D3EE: ' Referenced from: 127CE3C
  loc_127D3EE: Proc_6_60_E63754(var_C4, var_E8, var_A0, var_C4, var_108, var_E8, var_A0, var_C4)
  loc_127D3F3: Exit Sub
End Sub

Public Sub Proc_131_50_E402D4
  'Data Table: 4C0558
  loc_E402B0: Set var_88 = Me.TopCtrl1
  loc_E402B6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E402CF: If (CStr() = "Browse") Then
  loc_E402D2:   Exit Sub
  loc_E402D3: End If
  loc_E402D3: Exit Sub
End Sub

Public Sub Proc_131_51_14526E0(arg_C) '14526E0
  'Data Table: 4C0558
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_B0 As String
  Dim var_124 As Variant
  Dim var_188 As Double
  Dim var_138 As MSHFlexGrid
  Dim var_16C As Variant
  Dim var_180 As MSHFlexGrid
  Dim var_258 As Double
  loc_1451BA7: var_A0 = CLng(Me.FGrid.Col)
  loc_1451BB7: If (var_A0 = CLng(3)) Then
  loc_1451BDA:   var_A6 = Me.EOF
  loc_1451C08:   Set var_8C = Me.TxtGrid
  loc_1451C0E:   Call 0.Method_Proc_131_51_14526E00 (arg_C, var_AC, var_B0)
  loc_1451C16:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_1451C2E:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_1451C44:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1451C4C:     var_E0 = CVar(CLng(2)) 'Long
  loc_1451C51:     var_100 = vbNullString
  loc_1451C5B:     Set var_AC = Me.FGrid
  loc_1451C61:     LateIdCallSt
  loc_1451C86:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1451C8E:     var_E0 = CVar(CLng(1)) 'Long
  loc_1451C93:     var_100 = vbNullString
  loc_1451C9D:     Set var_AC = Me.FGrid
  loc_1451CA3:     LateIdCallSt
  loc_1451CC8:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1451CD0:     var_E0 = CVar(CLng(9)) 'Long
  loc_1451CD5:     var_100 = vbNullString
  loc_1451CDF:     Set var_AC = Me.FGrid
  loc_1451CE5:     LateIdCallSt
  loc_1451CFA:   Else
  loc_1451D04:     Set var_8C = Me.TxtGrid
  loc_1451D0A:     Call 0.Method_Proc_131_51_14526E00 (arg_C, var_AC, var_AC, var_100, var_E0, var_C0, var_AC)
  loc_1451D33:     If (Proc_6_27_EA61EC(var_AC, "Name", var_100, var_E0, var_C0) = 0) Then
  loc_1451D40:       Set var_8C = Me.TxtGrid
  loc_1451D46:       Call 0.Method_Proc_131_51_14526E00 (arg_C, var_AC, var_AC)
  loc_1451D4E:       var_AC.SetFocus
  loc_1451D5F:       Proc_131_51_14526E0 = 0
  loc_1451D65:     End If
  loc_1451D82:     var_AC = Me.Fields.Item("Code")
  loc_1451DB5:     Call Proc_131_58_1048B80(CStr(var_AC.Value), CLng(Me.FGrid.Row), var_A6, Me.FGrid.Row)
  loc_1451DD3:     If (var_A6 = 0) Then
  loc_1451DE0:       Set var_8C = Me.TxtGrid
  loc_1451DE6:       Call 0.Method_Proc_131_51_14526E00 (arg_C, var_AC, var_100)
  loc_1451DEE:       var_AC.SetFocus
  loc_1451DFF:       Proc_131_51_14526E0 = 0
  loc_1451E05:     End If
  loc_1451E4A:     var_124 = Me.Fields.Item("Name").Value
  loc_1451E61:     LateIdCallSt
  loc_1451EB1:     global_64 = CStr(Me.Fields.Item("Unit").Value)
  loc_1451EEB:     Proc_6_39_E7D3A0(var_124, CVar(Me.Fields.Item("PurchRate")), Me.FGrid, CVar(CStr(var_124)))
  loc_1451EF7:     global_108 = CSng(var_124)
  loc_1451F2F:     var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IssueUnit")), global_108, CVar(CLng(3)))) 'String
  loc_1451F44:     global_116 = CStr(Trim(var_124))
  loc_1451F80:     Proc_6_39_E7D3A0(var_124, CVar(Me.Fields.Item("ConvRatio")), CVar(CLng(Me.FGrid.Row)))
  loc_1451FAC:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1451FB4:     var_F0 = CVar(CLng(1)) 'Long
  loc_1451FE7:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1451FEF:     Set var_138 = Me.FGrid
  loc_1451FF5:     LateIdCallSt
  loc_1452024:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145202C:     var_E0 = CVar(CLng(4)) 'Long
  loc_145203F:     Set var_AC = Me.FGrid
  loc_1452045:     LateIdCallSt
  loc_145206A:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1452072:     var_E0 = CVar(CLng(6)) 'Long
  loc_145207F:     var_124 = CVar(CStr(CSng(var_124))) 'String
  loc_1452087:     Set var_AC = Me.FGrid
  loc_145208D:     LateIdCallSt
  loc_14520B6:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14520BE:     var_E0 = CVar(CLng(8)) 'Long
  loc_14520D1:     Set var_AC = Me.FGrid
  loc_14520D7:     LateIdCallSt
  loc_14520FC:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1452104:     var_E0 = CVar(CLng(9)) 'Long
  loc_1452111:     var_124 = CVar(CStr(global_108)) 'String
  loc_1452119:     Set var_AC = Me.FGrid
  loc_145211F:     LateIdCallSt
  loc_1452135:   End If
  loc_145214E:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1452153:   var_E0 = 1
  loc_1452171:   var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_145218A:   If (var_B0 <> vbNullString) Then
  loc_14521A2:     var_124 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_14521AA:     Set var_AC = Me.FGrid
  loc_14521C6:   End If
  loc_14521C9: Else
  loc_14521D0:   If (var_A0 = CLng(2)) Then
  loc_14521E6:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14521FF:     Set var_8C = Me.TxtGrid
  loc_1452205:     Call 0.Method_Proc_131_51_14526E00 (0, var_AC, var_B0, CVar(CLng(2)), var_C0, FGrid.DispID_10000, var_124)
  loc_145220D:     var_E0 = var_AC.Text
  loc_145221E:     var_124 = CVar(Proc_6_34_14EEAAC(var_B0, var_C0, var_AC, var_124)) 'String
  loc_1452226:     Set var_138 = Me.FGrid
  loc_145222C:     LateIdCallSt
  loc_145224C:   Else
  loc_1452253:     If (var_A0 = CLng(9)) Then
  loc_1452260:       Set var_8C = Me.TxtGrid
  loc_1452266:       Call 0.Method_Proc_131_51_14526E00 (arg_C, var_AC, var_138, var_124)
  loc_145227E:       If Not(IsNumeric(CVar(var_AC))) Then
  loc_1452285:         var_B0 = CStr(0)
  loc_1452292:         Set var_8C = Me.TxtGrid
  loc_1452298:         Call 0.Method_Proc_131_51_14526E00 (arg_C, var_AC, var_B0)
  loc_14522A0:         var_AC.Text = var_E0
  loc_14522AF:       End If
  loc_14522BC:       Set var_8C = Me.TxtGrid
  loc_14522C2:       Call 0.Method_Proc_131_51_14526E00 (arg_C, var_AC, var_B0)
  loc_14522CA:       var_C0 = var_AC.Text
  loc_14522ED:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1452305:       var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1452340:       LateIdCallSt
  loc_1452367:       Call Proc_131_57_1141BC4(Me.FGrid, CVar(CStr(Format(CVar(Val(var_B0)), "0.00000"))), 1, 1)
  loc_145236F:     Else
  loc_1452376:       If (var_A0 = CLng(&HA)) Then
  loc_1452383:         Set var_8C = Me.TxtGrid
  loc_1452389:         Call 0.Method_Proc_131_51_14526E00 (arg_C, var_AC, var_100)
  loc_14523A1:         If Not(IsNumeric(CVar(var_AC))) Then
  loc_14523A8:           var_B0 = CStr(0)
  loc_14523B5:           Set var_8C = Me.TxtGrid
  loc_14523BB:           Call 0.Method_Proc_131_51_14526E00 (arg_C, var_AC, var_B0)
  loc_14523C3:           var_AC.Text = var_E0
  loc_14523D2:         End If
  loc_14523DF:         Set var_8C = Me.TxtGrid
  loc_14523E5:         Call 0.Method_Proc_131_51_14526E00 (arg_C, var_AC, var_B0)
  loc_14523ED:         var_188 = var_AC.Text
  loc_1452410:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1452428:         var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1452455:         var_16C = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_145245D:         Set var_180 = Me.FGrid
  loc_1452463:         LateIdCallSt
  loc_145249D:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14524A6:         Set var_AC = Me.FGrid
  loc_14524B5:         var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_14524D7:         var_188 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14524ED:         var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14524FE:         Set var_180 = Me.FGrid
  loc_1452517:         var_258 = Val(CStr(var_180.TextMatrix)))
  loc_1452574:         LateIdCallSt
  loc_14525AB:         Call Proc_131_57_1141BC4(Me.FGrid, CVar(CStr(Format(CVar((var_188 / var_258)), "0.00000"))), 1, 1, CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_258, CVar(CLng(5)))
  loc_14525B3:       Else
  loc_14525BA:         If Not (var_A0 = CLng(5)) Then
  loc_14525C4:           If (var_A0 = CLng(6)) Then
  loc_14525C7:           End If
  loc_14525D1:           Set var_8C = Me.TxtGrid
  loc_14525D7:           Call 0.Method_Proc_131_51_14526E00 (arg_C, var_AC, var_100, var_188, var_E0)
  loc_14525EF:           If Not(IsNumeric(CVar(var_AC))) Then
  loc_14525F6:             var_B0 = CStr(0)
  loc_1452603:             Set var_8C = Me.TxtGrid
  loc_1452609:             Call 0.Method_Proc_131_51_14526E00 (arg_C, var_AC, var_B0, var_C0)
  loc_1452611:             var_AC.Text = var_180
  loc_1452620:           End If
  loc_145262C:           Set var_8C = Me.TxtGrid
  loc_1452632:           Call 0.Method_Proc_131_51_14526E00 (0, var_AC, var_B0)
  loc_145263A:           var_16C = var_AC.Text
  loc_1452652:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145266A:           var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_14526A4:           LateIdCallSt
  loc_14526C8:           Call Proc_131_57_1141BC4(Me.FGrid, CVar(CStr(Format(CVar(var_B0), "0.000"))), 1, 1)
  loc_14526CD:         End If
  loc_14526CD:       End If
  loc_14526CD:     End If
  loc_14526CD:   End If
  loc_14526CD: End If
  loc_14526CD: Call Proc_131_57_1141BC4(var_F0, var_D0)
  loc_14526D7: Proc_131_51_14526E0 = &HFF
End Sub

Public Sub Proc_131_52_F33428
  'Data Table: 4C0558
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F33316: global_80 = vbNullString
  loc_F33328: Set var_8C = Me.Txt
  loc_F3332E: Call 0.Method_Proc_131_52_F33428C (var_8E, var_86)
  loc_F3333E: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F33354:   Set var_8C = Me.Txt
  loc_F3335A:   Call 0.Method_Proc_131_52_F334280 (CInt(var_86), var_98)
  loc_F33362:   var_98.Text = vbNullString
  loc_F3337E:   Set var_8C = Me.Txt
  loc_F33384:   Call 0.Method_Proc_131_52_F334280 (CInt(var_86), var_98)
  loc_F3338C:   var_98.Tag = vbNullString
  loc_F3339B: Next var_92 'Byte
  loc_F333AE: Me.lbltotal.Caption = vbNullString
  loc_F333C9: Me.FGrid.Rows = 1
  loc_F333E6: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F333EE: Set var_98 = Me.FGrid
  loc_F3341D: Me.FGrid.FixedRows = 1
  loc_F33425: Exit Sub
End Sub

Public Sub Proc_131_53_1465E8C
  'Data Table: 4C0558
  Dim Me As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim var_D0 As TextBox
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim unk_4C0579 As Connection15
  Dim var_88 As Recordset15
  Dim var_CC As Fields15
  Dim var_144 As Variant
  Dim var_120 As Variant
  Dim var_8C As Integer
  Dim var_154 As Variant
  Dim var_130 As Variant
  loc_14652F4: On Error Goto loc_1465E84
  loc_146530E: If (Me.RecordCount > 0) Then
  loc_1465311:   Call Proc_131_52_F33428()
  loc_146534A:   global_140 = CStr(Me.Fields.Item("vType").Value)
  loc_14653CD:   global_132 = CStr(Me.Fields.Item("vPrefix").Value)
  loc_1465420:   Call 0.Method_Proc_131_53_1465E8C0 (CInt(1), var_D0)
  loc_1465428:   var_D0.Text = CStr(Me.Fields.Item("SearchCode").Value)
  loc_146544B:   var_E0 = "SELECT Stock.Vdate,Stock.Sno,Stock.U_Name,Stock.U_AE,Stock.U_EntDt,Stock.Item,Stock.QtyRec,Stock.Unit,Stock.Rate,Stock.Amount,Stock.DepartCode,Stock.GodownCode,Stock.RecdQty,Stock.AccQty,Stock.RecdUnit,Stock.ConvRatio,ItemMast.Name as ItemName,ItemMast.IssueUnit, GodownMast.Name as GodownName ,Stock.GodownCode FROM (Stock INNER JOIN ItemMast ON Stock.Item = ItemMast.Code And ItemMast.ItemType='Store') INNER JOIN GodownMast ON Stock.GodownCode = GodownMast.Code where Stock.Docid='"
  loc_146547D:   var_F0 = var_E0 & Me.Fields.Item("SearchCode").Value 
  loc_1465494:   unk_4C0579.Execute CStr(var_F0 & "' ORDER BY ItemMast.Name"), var_130, -1
  loc_146549F:   Set var_88 = Me.Txt
  loc_14654F8:   Call 0.Method_Proc_131_53_1465E8C0 (CInt(0), var_D0, CStr(var_88.Fields.Item("Godowncode").Value))
  loc_1465500:   var_D0.Tag = Me.Txt
  loc_146554C:   Set var_CC = Me.Txt
  loc_1465552:   Call 0.Method_Proc_131_53_1465E8C0 (CInt(0), var_D0)
  loc_146555A:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("GodownName")))
  loc_14655A7:   Set var_CC = Me.Txt
  loc_14655AD:   Call 0.Method_Proc_131_53_1465E8C0 (CInt(2), var_D0)
  loc_14655B5:   var_D0.Text = CStr(var_88.Fields.Item("VDate").Value)
  loc_14655F9:   global_64 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RecdUnit")))
  loc_1465634:   global_116 = Proc_6_38_E69628(CVar(var_88.Fields.Item("IssueUnit")))
  loc_1465667:   Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("ConvRatio")))
  loc_1465723:   var_194 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), CSng(CVar(var_88.Fields.Item("U_AE")))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1465768:   Me.LblUser.Caption = CStr(CInt(Me.Fields.Item("VNo").Value) & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_194)))
  loc_1465843:   var_194 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_1465888:   Me.LblLDt.Caption = CStr(var_194 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_14658D4:   If (var_88.RecordCount > 0) Then
  loc_14658D9:     var_8C = 1
  loc_14658EF:     Me.FGrid.Rows = 1
  loc_14658F7:     ' Referenced from: 1465DDB
  loc_1465906:     If Not(var_88.EOF) Then
  loc_1465909:       var_B0 = vbNullString
  loc_1465913:       Set var_A0 = Me.FGrid
  loc_1465928:       Set var_1F4 = Me.FGrid
  loc_146592F:       var_E0 = CVar(CLng(var_8C)) 'Long
  loc_1465937:       var_120 = CVar(CLng(0)) 'Long
  loc_1465967:       var_F0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_146596E:       LateIdCallSt
  loc_14659BD:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Item")), CVar(CLng(1)), CVar(CLng(var_8C)), var_1F4, var_F0)) 'String
  loc_14659C4:       LateIdCallSt
  loc_1465A0F:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VDate")), CVar(CLng(2)), CVar(CLng(var_8C)), var_1F4, var_F0)) 'String
  loc_1465A16:       LateIdCallSt
  loc_1465A61:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("IssueUnit")), CVar(CLng(4)), CVar(CLng(var_8C)), var_1F4, var_F0)) 'String
  loc_1465A68:       LateIdCallSt
  loc_1465A86:       var_120 = CVar(CLng(3)) 'Long
  loc_1465AB3:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), var_120, CVar(CLng(var_8C)), var_1F4, var_F0)) 'String
  loc_1465ABA:       LateIdCallSt
  loc_1465AF2:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("Amount")), var_1F4, var_F0, var_120)
  loc_1465AFB:       var_100 = CVar(CLng(var_8C)) 'Long
  loc_1465B03:       var_144 = CVar(CLng(&HA)) 'Long
  loc_1465B33:       LateIdCallSt
  loc_1465B71:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("Rate")), var_1F4, CVar(CStr(Format(var_F0, "0.00"))), 1, 1)
  loc_1465B7A:       var_100 = CVar(CLng(var_8C)) 'Long
  loc_1465B82:       var_144 = CVar(CLng(9)) 'Long
  loc_1465BAB:       var_154 = CVar(CStr(Format(var_F0, "0.00000"))) 'String
  loc_1465BB2:       LateIdCallSt
  loc_1465BEA:       var_100 = CVar(CLng(var_8C)) 'Long
  loc_1465BF2:       var_144 = CVar(CLng(6)) 'Long
  loc_1465C1F:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("ConvRatio")), "0.000"))) 'String
  loc_1465C26:       LateIdCallSt
  loc_1465C5C:       var_100 = CVar(CLng(var_8C)) 'Long
  loc_1465C64:       var_144 = CVar(CLng(7)) 'Long
  loc_1465C91:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyRec")), "0.000"))) 'String
  loc_1465C98:       LateIdCallSt
  loc_1465CCE:       var_100 = CVar(CLng(var_8C)) 'Long
  loc_1465D03:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("RecdQty")), "0.000"))) 'String
  loc_1465D0A:       LateIdCallSt
  loc_1465D59:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8C)), var_1F4, var_130, 1, 1)) 'String
  loc_1465D60:       LateIdCallSt
  loc_1465DAB:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RecdUnit")), CVar(CLng(4)), CVar(CLng(var_8C)), var_1F4, var_F0, CVar(CLng(5)))) 'String
  loc_1465DB2:       LateIdCallSt
  loc_1465DC6:       Set var_1F4 = Nothing 
  loc_1465DD0:       var_8C = (var_8C + 1)
  loc_1465DD6:       var_88.MoveNext
  loc_1465DDB:       GoTo loc_14658F7
  loc_1465DDE:     End If
  loc_1465DDE:   End If
  loc_1465DDE:   var_B0 = 0
  loc_1465DE8:   Set var_A0 = Me.FGrid
  loc_1465E15:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1465E18:     var_B0 = "1"
  loc_1465E22:     Set var_A0 = Me.FGrid
  loc_1465E33:   End If
  loc_1465E33:   var_B0 = 1
  loc_1465E46:   Me.FGrid.FixedRows = var_B0
  loc_1465E4E:   Call Proc_131_57_1141BC4(FGrid.DispID_10000, var_B0, FGrid.DispID_2E, var_B0, var_8C, var_1F4)
  loc_1465E56: Else
  loc_1465E56:   Call Proc_131_52_F33428(var_F0, var_100, var_1F4)
  loc_1465E5B: End If
  loc_1465E6E: Me.FGrid.Col = 1
  loc_1465E76: Call Proc_131_55_EBC200(var_130, 1)
  loc_1465E80: Set var_88 = Nothing
  loc_1465E83: Exit Sub
  loc_1465E84: ' Referenced from: 14652F4
  loc_1465E84: Proc_6_60_E63754(1)
  loc_1465E89: Exit Sub
End Sub

Public Sub Proc_131_54_E9D068(arg_C) 'E9D068
  'Data Table: 4C0558
  Dim var_98 As TextBox
  loc_E9CFEE: Set var_8C = Me.Txt
  loc_E9CFF4: Call 0.Method_Proc_131_54_E9D068C (var_8E, var_86)
  loc_E9D004: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9D01A:   Set var_8C = Me.Txt
  loc_E9D020:   Call 0.Method_Proc_131_54_E9D0680 (CInt(var_86), var_98)
  loc_E9D028:   var_98.Enabled = arg_C
  loc_E9D037: Next var_92 'Byte
  loc_E9D04A: Set var_8C = Me.Txt
  loc_E9D050: Call 0.Method_Proc_131_54_E9D0680 (CInt(1), var_98)
  loc_E9D058: var_98.Enabled = False
  loc_E9D064: Exit Sub
  loc_E9D065: ArrayRebase1Var
End Sub

Public Sub Proc_131_55_EBC200
  'Data Table: 4C0558
  loc_EBC178: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EBC18A:   Me.DGItem.Visible = False
  loc_EBC192: End If
  loc_EBC1AE: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EBC1C0:   Me.DGDepart.Visible = False
  loc_EBC1C8: End If
  loc_EBC1E4: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBC1F6:   Me.FGPoint.Visible = False
  loc_EBC1FE: End If
  loc_EBC1FE: Exit Sub
End Sub

Public Sub Proc_131_56_E90310(arg_C) 'E90310
  'Data Table: 4C0558
  Dim var_10C As TextBox
  loc_E902A4: Call Proc_131_55_EBC200()
  loc_E902E0: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E902E3:   Call TopCtrl1_UnknownEvent_16()
  loc_E902EB: Else
  loc_E902F5:   Set var_108 = Me.Txt
  loc_E902FB:   Call 0.Method_Proc_131_56_E903100 (arg_C)
  loc_E90303:   var_10C.SetFocus
  loc_E9030F: End If
  loc_E9030F: Exit Sub
End Sub

Public Sub Proc_131_57_1141BC4
  'Data Table: 4C0558
  Dim var_90 As Double
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_130 As MSHFlexGrid
  Dim var_140 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1E4 As Variant
  Dim var_1F8 As MSHFlexGrid
  Dim var_240 As Variant
  Dim MeD3 As Integer
  loc_1141869: Me.lbltotal.Caption = vbNullString
  loc_1141874: var_90 = CDbl(0)
  loc_114189C: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A8 'Integer
  loc_11418A6:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_11418AE:   var_D8 = CVar(CLng(5)) 'Long
  loc_11418D7:   var_FC = CVar(CLng(var_86)) 'Long
  loc_11418DF:   var_11C = CVar(CLng(9)) 'Long
  loc_1141908:   var_1A4 = CVar(CLng(var_86)) 'Long
  loc_1141910:   var_1C4 = CVar(CLng(&HA)) 'Long
  loc_1141941:   var_1E4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_1141949:   Set var_1F8 = Me.FGrid
  loc_114194F:   LateIdCallSt
  loc_1141989:   var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141991:   var_D8 = CVar(CLng(6)) 'Long
  loc_11419C9:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <= CDbl(0)) Then
  loc_11419DF:     var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11419E7:     var_D8 = CVar(CLng(6)) 'Long
  loc_11419F0:     var_140 = CVar(CStr(1)) 'String
  loc_11419F8:     Set var_130 = Me.FGrid
  loc_11419FE:     LateIdCallSt
  loc_1141A14:   End If
  loc_1141A27:   var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141A2F:   var_D8 = CVar(CLng(6)) 'Long
  loc_1141A67:   var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141A6F:   var_11C = CVar(CLng(5)) 'Long
  loc_1141AA7:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141AAF:   var_1C4 = CVar(CLng(7)) 'Long
  loc_1141AE0:   var_240 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.000"))) 'String
  loc_1141AE8:   Set var_244 = Me.FGrid
  loc_1141AEE:   LateIdCallSt
  loc_1141B25:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_1141B2D:   var_D8 = CVar(CLng(&HA)) 'Long
  loc_1141B59:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1141B68: Next var_A8 'Integer
  loc_1141B6D: var_D8 = "Total->"
  loc_1141BAC: Me.lbltotal.Caption = CStr(1 & Format(var_90, "0.00"))
  loc_1141BC0: Exit Sub
  loc_1141BC1: MeD3 = 1
End Sub

Public Sub Proc_131_58_1048B80(arg_C, arg_10) '1048B80
  'Data Table: 4C0558
  Dim var_94 As String
  Dim var_98 As String
  Dim var_A4 As TextBox
  Dim var_B0 As String
  Dim var_C0 As String
  Dim var_B8 As TextBox
  Dim unk_4C0579 As Connection15
  Dim var_8C As Recordset15
  Dim var_A0 As Variant
  Dim var_E8 As Variant
  Dim var_120 As Variant
  Dim var_110 As Variant
  Dim var_100 As Variant
  loc_1048980: var_98 = "Select * From Stock Where VType='STOP' And LogSite_Code='" & MemVar_1F95078 & "' And Item='"
  loc_104899F: Set var_A0 = Me.Txt
  loc_10489A5: Call 0.Method_Proc_131_58_1048B800 (CInt(0), var_A4, var_A8, var_98 & arg_C & "' And GoDownCode='")
  loc_10489AD: var_E8 = var_A4.Tag
  loc_10489B6: var_B0 = -1 & var_A8
  loc_10489BD: var_C0 = var_B0 & "' And DocId<>'"
  loc_10489CE: Set var_B4 = Me.Txt
  loc_10489D4: Call 0.Method_Proc_131_58_1048B800 (CInt(1), var_B8, var_BC)
  loc_10489DC: var_C0 = var_B8.Text
  loc_10489F5: unk_4C0579.Execute var_EC & var_BC & "'", &HFF, 
  loc_1048A00: Set var_8C = var_EC
  loc_1048A3E: If (var_8C.RecordCount > 0) Then
  loc_1048A60:   var_E8 = CVar(var_8C.Fields.Item("VNo")) 'Address
  loc_1048A67:   Proc_6_39_E7D3A0(var_100)
  loc_1048A72:   Call 0.Method_arg_50 (var_98)
  loc_1048A80:   var_120 = CVar(var_98) 'String
  loc_1048A94:   var_110 = CVar("Item Opening Already Present Agnst. Enrty No. " & CStr(var_100)) 'String
  loc_1048A97:   MsgBox(var_110, 0, var_120, var_140, var_160)
  loc_1048AB8:   Proc_131_58_1048B80 = 0
  loc_1048ABE: End If
  loc_1048AE3: For var_164 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8E = var_164 'Integer
  loc_1048AF1:   If (CLng(var_8E) <> arg_10) Then
  loc_1048B1A:     var_94 = CStr(Me.FGrid.TextMatrix))
  loc_1048B2B:     If (var_94 = arg_C) Then
  loc_1048B34:       Call 0.Method_arg_50 (var_94, CVar(CLng(1)), CVar(CLng(var_8E)))
  loc_1048B55:       MsgBox("Duplicate Item", &H40, CVar(var_94), var_110, var_120)
  loc_1048B6A:       Proc_131_58_1048B80 = 0
  loc_1048B70:     End If
  loc_1048B70:   End If
  loc_1048B73: Next var_164 'Integer
  loc_1048B78: Proc_131_58_1048B80 = 
End Sub

Public Sub Proc_131_59_109D524
  'Data Table: 4C0558
  Dim var_94 As String
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_8C As Recordset15
  Dim var_12C As Fields15
  Dim var_134 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  loc_109D2A5: var_90 = "STOP"
  loc_109D2BC: var_94 = "Select VT.Number_Method,VP.V_Type,Vt.Description,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_109D2ED: Proc_6_7_F26918(var_C4, MemVar_1F950EC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_109D309: Me.Connection15.Execute CStr(var_128 & var_C4 & " Order By VP.Date_From DESC"), -1, var_12C
  loc_109D314: Set var_8C = var_12C
  loc_109D34A: If (var_8C.RecordCount > 0) Then
  loc_109D389:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_109D38C:     GoTo loc_109D419
  loc_109D38F:   End If
  loc_109D3C0:   global_132 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_109D3EB:   var_134 = var_8C.Fields.Item("start_srl_no")
  loc_109D400:   var_D4 = (var_134.Value + 1)
  loc_109D408:   global_136 = CInt(CVar(CStr(var_8C.Fields.Item("Prefix").Value) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_109D419:   ' Referenced from: 109D38C
  loc_109D419: End If
  loc_109D444: var_C4 = Space((5 - Len(var_90)))
  loc_109D44C: var_E4 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_134.Value)
  loc_109D460: var_104 = Space((5 - Len(global_132)))
  loc_109D468: var_128 = (var_128 & var_134.Value + var_128 & var_134.Value & " Order By VP.Date_From DESC")
  loc_109D475: var_148 = (var_128 + CVar(global_132))
  loc_109D48E: var_158 = Space((8 - Len(CStr(global_136))))
  loc_109D496: var_168 = (var_148 + var_158)
  loc_109D4A5: var_188 = (var_168 + CVar(CStr(global_136)))
  loc_109D4B0: global_144 = CStr(var_188)
  loc_109D4E7: Set var_12C = Me.Txt
  loc_109D4ED: Call 0.Method_Proc_131_59_109D5240 (CInt(1), var_134)
  loc_109D4F5: var_134.Text = global_144
  loc_109D507: global_140 = var_90
  loc_109D511: var_88 = global_144
  loc_109D519: Set var_8C = Nothing
  loc_109D51C: Proc_131_59_109D524 = global_136
End Sub
