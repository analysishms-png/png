VERSION 5.00
Begin VB.Form rRepPayRoll
  Caption = "ReprtForm"
  ForeColor = &HE0E0E0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form3"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 165
  ClientTop = 345
  ClientWidth = 14100
  ClientHeight = 7545
  LockControls = -1  'True
  Begin Frame FrmList
    Left = 1155
    Top = 5025
    Width = 2520
    Height = 1875
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 2325
      Height = 1830
      TabStop = 0   'False
      TabIndex = 10
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 510
    Top = 0
    Width = 690
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtSearch
    BackColor = &HE0E0E0&
    Left = 0
    Top = 1440
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin CheckBox Check1
    Caption = "All"
    Index = 4
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 5175
    Top = 3840
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CheckBox Check1
    Caption = "All"
    Index = 3
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 360
    Top = 3855
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CheckBox Check1
    Caption = "All"
    Index = 2
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 5145
    Top = 1800
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CheckBox Check1
    Caption = "All"
    Index = 1
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 375
    Top = 1830
    Width = 915
    Height = 195
    Visible = 0   'False
    TabIndex = 3
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin PictureBox Pic
    BackColor = &H808080&
    Left = 0
    Top = 7050
    Width = 14100
    Height = 500
    TabIndex = 1
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 2 'Align Bottom
    Begin CommandButton BTNEXIT
      Caption = "E&xit"
      Left = 7200
      Top = 75
      Width = 1620
      Height = 375
      TabIndex = 18
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DownPicture = "rRepPayRoll.frx":0
      ToolTipText = "Exit Form"
      MaskColor = &H8000000F&
    End
    Begin CommandButton BTNPRINT
      Caption = "Windows &Print"
      Index = 0
      Left = 5565
      Top = 75
      Width = 1620
      Height = 375
      TabIndex = 17
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DownPicture = "rRepPayRoll.frx":3132
      ToolTipText = "Print Report"
      MaskColor = &H8000000F&
    End
    Begin CommandButton BTNPRINT
      Caption = "&Dos Print"
      Index = 1
      Left = 3930
      Top = 75
      Width = 1620
      Height = 375
      Visible = 0   'False
      TabIndex = 16
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DownPicture = "rRepPayRoll.frx":6264
      ToolTipText = "Print Report"
      MaskColor = &H8000000F&
    End
    Begin Label LblTitle
      Caption = "."
      BackColor = &H0&
      ForeColor = &HFFFFFF&
      Left = 9420
      Top = 60
      Width = 4470
      Height = 495
      TabIndex = 0
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 15.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin TopCtrl TopCtrl1
    Left = 195
    Top = 270
    Width = 660
    Height = 375
    Visible = 0   'False
    TabIndex = 2
  End
  Begin MSHFlexGrid GridSel
    Index = 1
    Left = 315
    Top = 1755
    Width = 4695
    Height = 1650
    Visible = 0   'False
    TabIndex = 11
  End
  Begin MSHFlexGrid GridSel
    Index = 2
    Left = 5085
    Top = 1755
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 12
  End
  Begin MSHFlexGrid GridSel
    Index = 4
    Left = 5115
    Top = 3780
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 13
  End
  Begin MSHFlexGrid GridSel
    Index = 3
    Left = 300
    Top = 3795
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 14
  End
  Begin MSHFlexGrid FGrid
    Left = 1725
    Top = 45
    Width = 4455
    Height = 1560
    TabIndex = 15
  End
End

Attribute VB_Name = "rRepPayRoll"

Private global_96 As Integer
Private global_80 As Integer
Private global_98 As Integer
Private global_120 As Integer
Private global_122 As Integer
Private global_188 As Integer
Private global_190 As Integer
Private global_100 As Integer
Private global_104 As Variant

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'F24BB0
  'Data Table: 4C9354
  loc_F24AB3: If (Proc_6_113_E6DB0C(KeyCode) = &HFF) Then
  loc_F24ADE:   Set var_90 = Me.GridSel
  loc_F24AE4:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_F24B0C:   Me.TxtSearch.Visible = False
  loc_F24B14: End If
  loc_F24B1E: If (CLng(KeyCode) = &H2E) Then
  loc_F24B2E:   Me.TxtSearch.Text = vbNullString
  loc_F24B36: End If
  loc_F24B4B: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_F24B76:   Set var_90 = Me.GridSel
  loc_F24B7C:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94, Val(Me.TxtSearch.Tag))
  loc_F24BA4:   Me.TxtSearch.Visible = False
  loc_F24BAC: End If
  loc_F24BAC: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) '11D1340
  'Data Table: 4C9354
  Dim var_F4 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim Me As Recordset15
  loc_11D0F09: var_90 = Me.TxtSearch.Tag
  loc_11D0F1E: If (var_90 = CStr(1)) Then
  loc_11D0F74:   Set var_A0 = Me.GridSel
  loc_11D0F7A:   Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4)
  loc_11D0FF0:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(Val(Me.TxtSearch.Tag)), global_56, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11D101B: Else
  loc_11D102A:   If (var_90 = CStr(2)) Then
  loc_11D1055:     var_F4 = Val(Me.TxtSearch.Tag)
  loc_11D1080:     Set var_A0 = Me.GridSel
  loc_11D1086:     Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11D10FC:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_60, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11D1127:   Else
  loc_11D1136:     If (var_90 = CStr(3)) Then
  loc_11D1161:       var_F4 = Val(Me.TxtSearch.Tag)
  loc_11D118C:       Set var_A0 = Me.GridSel
  loc_11D1192:       Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11D119A:       var_B4 = var_A4.Col
  loc_11D1208:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_64, KeyAscii, Me.Fields.Item(CVar(CLng(var_B4))).Name, CLng("16777152"), CLng("15595518"))
  loc_11D1233:     Else
  loc_11D1242:       If (var_90 = CStr(4)) Then
  loc_11D126D:         var_F4 = Val(Me.TxtSearch.Tag)
  loc_11D1298:         Set var_A0 = Me.GridSel
  loc_11D129E:         Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4, var_B4)
  loc_11D1314:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_68, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11D133C:       End If
  loc_11D133C:     End If
  loc_11D133C:   End If
  loc_11D133C: End If
  loc_11D133C: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E903CC
  'Data Table: 4C9354
  loc_E90365: Me.TxtSearch.Text = vbNullString
  loc_E90395: Set var_90 = Me.GridSel
  loc_E9039B: Call 0.Method_TxtSearch_LostFocus0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E903C3: Me.TxtSearch.Visible = False
  loc_E903CB: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E8FE2C
  'Data Table: 4C9354
  loc_E8FDC5: Me.TxtSearch.Text = vbNullString
  loc_E8FDF5: Set var_90 = Me.GridSel
  loc_E8FDFB: Call 0.Method_TxtSearch_Click0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E8FE23: Me.TxtSearch.Visible = False
  loc_E8FE2B: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1146CF8
  'Data Table: 4C9354
  Dim var_98 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Variant
  loc_1146993: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11469AE: var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11469EC: Set var_108 = Me.TxtGrid
  loc_11469F2: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_11469FA: var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1146A2B: var_114 = CLng(Me.FGrid.Row)
  loc_1146A3B: If (var_114 = CLng(2)) Then
  loc_1146A44:   var_118 = global_52
  loc_1146A4F:   If Not (var_118 = "AttendanceRep") Then
  loc_1146A5A:     If Not (var_118 = "PaySlip") Then
  loc_1146A65:       If (var_118 = "PFStatement") Then
  loc_1146A68:       End If
  loc_1146A68:     End If
  loc_1146A7F:     If (Me.RecordCount > 0) Then
  loc_1146A88:       Me.MoveFirst
  loc_1146AB9:       var_F4 = ListView_Items_RecordSet_Local(Me.ListView, Me.TxtGrid, Index, global_84)
  loc_1146ACB:     End If
  loc_1146ACE:   Else
  loc_1146AD6:     If (var_118 = "PayrollReg") Then
  loc_1146AE6:       ReDim var_120(0 To 1)
  loc_1146AFD:       var_120(0) = "Yes"
  loc_1146B0C:       var_120(1) = "No"
  loc_1146B63:       Set global_192 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_120))
  loc_1146B77:     Else
  loc_1146B7F:       If (var_118 = "LoanReg") Then
  loc_1146B8F:         ReDim var_120(0 To 1)
  loc_1146BA6:         var_120(0) = "Advance"
  loc_1146BB5:         var_120(1) = "Loan"
  loc_1146C0C:         Set global_192 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_120), 2)
  loc_1146C20:       Else
  loc_1146C28:         If (var_118 = "LoanLedg") Then
  loc_1146C38:           ReDim var_120(0 To 2)
  loc_1146C4F:           var_120(0) = "All"
  loc_1146C5E:           var_120(1) = "Advance"
  loc_1146C6D:           var_120(2) = "Loan"
  loc_1146CC4:           Set global_192 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_120), 3, Array(var_120))
  loc_1146CD5:         End If
  loc_1146CD5:       End If
  loc_1146CD5:     End If
  loc_1146CD5:   End If
  loc_1146CD8: Else
  loc_1146CDF:   If (var_114 = CLng(3)) Then
  loc_1146CE2:     GoTo loc_1146CEF
  loc_1146CE5:   End If
  loc_1146CEC:   If (var_114 = CLng(4)) Then
  loc_1146CEF:     ' Referenced from:   1146CE2
  loc_1146CEF:   End If
  loc_1146CEF: End If
  loc_1146CF4: Set var_88 = Nothing
  loc_1146CF7: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '119D404
  'Data Table: 4C9354
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  loc_119D02A: If (CLng(Shift) = &H1B) Then
  loc_119D039:   Set var_8C = Me.TxtGrid
  loc_119D03F:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_119D058:   Set var_98 = Me.TxtGrid
  loc_119D05E:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_119D066:   var_9C.Text = var_90.Tag
  loc_119D082:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_119D08B:   Set var_8C = Me.FGrid
  loc_119D0A7:   Set var_8C = Me.TxtGrid
  loc_119D0AD:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_119D0B5:   var_90.Visible = FGrid.DispID_8001
  loc_119D0C1:   Call Proc_311_40_E49574(arg_14)
  loc_119D0C6:   Exit Sub
  loc_119D0C7: End If
  loc_119D0DA: var_B0 = CLng(Me.FGrid.Row)
  loc_119D0EA: If (var_B0 = CLng(2)) Then
  loc_119D0F3:   var_B4 = global_52
  loc_119D0FE:   If Not (var_B4 = "AttendanceRep") Then
  loc_119D109:     If Not (var_B4 = "PaySlip") Then
  loc_119D114:       If (var_B4 = "PFStatement") Then
  loc_119D117:       End If
  loc_119D117:     End If
  loc_119D12E:     If (Me.RecordCount > 0) Then
  loc_119D152:       Set var_8C = Me.TxtGrid
  loc_119D158:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_119D160:       var_B8 = var_90.Left
  loc_119D171:       Set var_98 = Me.TxtGrid
  loc_119D177:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_119D17F:       var_BC = var_9C.Top
  loc_119D190:       Set var_C0 = Me.TxtGrid
  loc_119D196:       Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_119D19E:       var_C8 = var_C4.Height
  loc_119D1DC:       Set var_D0 = Me.ListView
  loc_119D1EB:       Proc_6_114_11A421C(Me.FrmList, var_D0, Me.TxtGrid, 0, Shift, arg_14)
  loc_119D20B:     End If
  loc_119D20E:   Else
  loc_119D216:     If Not (var_B4 = "PayrollReg") Then
  loc_119D221:       If Not (var_B4 = "LoanReg") Then
  loc_119D22C:         If (var_B4 = "LoanLedg") Then
  loc_119D22F:         End If
  loc_119D22F:       End If
  loc_119D250:       Set var_8C = Me.TxtGrid
  loc_119D256:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8, CInt(var_B8))
  loc_119D25E:       CInt(((var_BC + var_C8) + CDbl(&H19))) = var_90.Left
  loc_119D26F:       Set var_98 = Me.TxtGrid
  loc_119D275:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_BC)
  loc_119D27D:       2200 = var_9C.Top
  loc_119D28E:       Set var_C0 = Me.TxtGrid
  loc_119D294:       Call 0.Method_TxtGrid_KeyDown0 (0, var_C4, var_C8)
  loc_119D29C:       2500 = var_C4.Height
  loc_119D2AD:       Set var_CC = Me.TxtGrid
  loc_119D2B3:       Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_119D2BB:       var_F0 = var_D0.Width
  loc_119D308:       Proc_6_114_11A421C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_119D32C:     End If
  loc_119D32C:   End If
  loc_119D336:   If (CLng(Shift) = &HD) Then
  loc_119D346:     Call Proc_311_38_12A61C4(0, 0, var_DA, CInt(var_B8))
  loc_119D351:     If (var_DA = &HFF) Then
  loc_119D354:       Call Proc_311_42_F04A3C(CInt(((var_BC + var_C8) + CDbl(&H19))), CInt(var_F0))
  loc_119D359:     End If
  loc_119D359:   End If
  loc_119D35C: Else
  loc_119D363:   If Not (var_B0 = CLng(3)) Then
  loc_119D36D:     If (var_B0 = CLng(4)) Then
  loc_119D370:     End If
  loc_119D373:   Else
  loc_119D37A:     If Not (var_B0 = CLng(0)) Then
  loc_119D384:       If (var_B0 = CLng(1)) Then
  loc_119D387:       End If
  loc_119D3C7:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_122 = &HFF))) Then
  loc_119D3D7:         Call Proc_311_38_12A61C4(0, 0, var_DA)
  loc_119D3E2:         If (var_DA = &HFF) Then
  loc_119D3E5:           Call Proc_311_42_F04A3C(0)
  loc_119D3EA:         End If
  loc_119D3EA:       End If
  loc_119D3ED:     Else
  loc_119D3F4:       If (var_B0 = CLng(5)) Then
  loc_119D3FD:         var_FC = global_52
  loc_119D400:       End If
  loc_119D400:     End If
  loc_119D400:   End If
  loc_119D400: End If
  loc_119D400: Exit Sub
  loc_119D401: ShiftFF = var_B0
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E5941C
  'Data Table: 4C9354
  loc_E593E7: Proc_6_58_E06050(arg_10)
  loc_E5940F: If (CLng(Me.FGrid.Row) = CLng(5)) Then
  loc_E59418:   var_A0 = global_52
  loc_E5941B: End If
  loc_E5941B: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDE214
  'Data Table: 4C9354
  Dim var_9C As Long
  loc_EDE173: var_9C = CLng(Me.FGrid.Row)
  loc_EDE183: If Not (var_9C = CLng(2)) Then
  loc_EDE18D:   If Not (var_9C = CLng(3)) Then
  loc_EDE197:     If (var_9C = CLng(4)) Then
  loc_EDE19A:     End If
  loc_EDE19A:   End If
  loc_EDE1BC:   If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_EDE1CD:     Call TxtGrid_KeyDown(KeyCode, global_120)
  loc_EDE1D2:   End If
  loc_EDE200:   Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, 0, Shift)
  loc_EDE210: End If
  loc_EDE210: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21AA0
  'Data Table: 4C9354
  Dim arg_10 As Integer
  loc_E21A7C: On Error Goto loc_E21A97
  loc_E21A8A: Call Proc_311_38_12A61C4(Cancel, &HFF)
  loc_E21A93: arg_10 = Not(var_88)
  loc_E21A96: Exit Sub
  loc_E21A97: ' Referenced from: E21A7C
  loc_E21A97: Proc_6_60_E63754(arg_10)
  loc_E21A9C: Exit Sub
End Sub

Private Sub Form_Load() 'FB5FEC
  'Data Table: 4C9354
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As Variant
  loc_FB5E44: On Error Goto loc_FB5FE4
  loc_FB5E47: Call Proc_311_39_15D3598()
  loc_FB5E53: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_FB5E6B: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_FB5E85: Set var_A8 = Me.GridSel
  loc_FB5E8B: Call 0.Method_Form_Load0 (1, var_AC)
  loc_FB5E93: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_FB5EB1: Set var_A8 = Me.GridSel
  loc_FB5EB7: Call 0.Method_Form_Load0 (2, var_AC)
  loc_FB5EBF: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_FB5EDD: Set var_A8 = Me.GridSel
  loc_FB5EE3: Call 0.Method_Form_Load0 (3, var_AC)
  loc_FB5EEB: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_FB5F09: Set var_A8 = Me.GridSel
  loc_FB5F0F: Call 0.Method_Form_Load0 (4, var_AC)
  loc_FB5F17: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_FB5F30: Set var_A8 = Me.Check1
  loc_FB5F36: Call 0.Method_Form_Load0 (1, var_AC)
  loc_FB5F3E: var_AC.BackColor = CLng(MemVar_1F951B4)
  loc_FB5F57: Set var_A8 = Me.Check1
  loc_FB5F5D: Call 0.Method_Form_Load0 (2, var_AC)
  loc_FB5F65: var_AC.BackColor = CLng(MemVar_1F951B4)
  loc_FB5F7E: Set var_A8 = Me.Check1
  loc_FB5F84: Call 0.Method_Form_Load0 (3, var_AC)
  loc_FB5F8C: var_AC.BackColor = CLng(MemVar_1F951B4)
  loc_FB5FA5: Set var_A8 = Me.Check1
  loc_FB5FAB: Call 0.Method_Form_Load0 (4, var_AC)
  loc_FB5FB3: var_AC.BackColor = CLng(MemVar_1F951B4)
  loc_FB5FC9: Set var_A8 = Me.TopCtrl1
  loc_FB5FCF: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_6803000E("Add")
  loc_FB5FD8: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_FB5FE3: Exit Sub
  loc_FB5FE4: ' Referenced from: FB5E44
  loc_FB5FE4: Proc_6_60_E63754()
  loc_FB5FE9: Exit Sub
End Sub

Private Sub Form_Resize() 'DFC480
  'Data Table: 4C9354
  loc_DFC47C: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EB1D98
  'Data Table: 4C9354
  loc_EB1D07: Set global_56 = Nothing
  loc_EB1D19: Set global_60 = Nothing
  loc_EB1D2B: Set global_64 = Nothing
  loc_EB1D3D: Set global_68 = Nothing
  loc_EB1D4F: Set global_88 = Nothing
  loc_EB1D61: Set global_192 = Nothing
  loc_EB1D6D: MemVar_1F951E8 = Nothing
  loc_EB1D7C: Set global_84 = Nothing
  loc_EB1D8E: Set global_92 = Nothing
  loc_EB1D95: Exit Sub
  loc_EB1D96: Exit Sub
End Sub

Private Sub Form_Activate() 'DFC620
  'Data Table: 4C9354
  loc_DFC61C: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'EB62D4
  'Data Table: 4C9354
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_EB6260: Set var_9C = Me.ListView.SelectedItem
  loc_EB6277: Set var_A4 = Me.TxtGrid
  loc_EB627D: Call 0.Method_ListView_UnknownEvent_130 (0, var_A8)
  loc_EB6285: var_A8.Text = var_9C.Text
  loc_EB62A7: Me.FrmList.Visible = False
  loc_EB62B8: Set var_88 = Me.TxtGrid
  loc_EB62BE: Call 0.Method_ListView_UnknownEvent_130 (0)
  loc_EB62C6: var_9C.SetFocus
  loc_EB62D2: Exit Sub
End Sub

Private Sub BTNPRINT_Click(Index As Integer) '100CD80
  'Data Table: 4C9354
  Dim var_AC As Variant
  loc_100CB74: On Error Goto loc_100CD78
  loc_100CB7C: global_96 = 0
  loc_100CB84: global_80 = &HFF
  loc_100CB8D: var_88 = global_52
  loc_100CB98: If (var_88 = "AttendanceRep") Then
  loc_100CB9B:   Call Proc_311_48_11D9D10(global_80)
  loc_100CBA3: Else
  loc_100CBAB:   If (var_88 = "LoanAdvSumm") Then
  loc_100CBAE:     Call Proc_311_49_15D9838(global_96)
  loc_100CBB6:   Else
  loc_100CBBE:     If (var_88 = "LoanReg") Then
  loc_100CBC1:       Call Proc_311_50_1684DCC()
  loc_100CBC9:     Else
  loc_100CBD1:       If (var_88 = "PFStatement") Then
  loc_100CBD4:         Call Proc_311_47_11670DC()
  loc_100CBDC:       Else
  loc_100CBE4:         If (var_88 = "PayrollReg") Then
  loc_100CBE7:           Call Proc_311_46_1242F50()
  loc_100CBEF:         Else
  loc_100CBF7:           If (var_88 = "PaySlip") Then
  loc_100CBFA:             Call Proc_311_54_11CF6A0()
  loc_100CC02:           Else
  loc_100CC0A:             If (var_88 = "LoanLedg") Then
  loc_100CC0D:               Call Proc_311_51_1621DB4()
  loc_100CC15:             Else
  loc_100CC1D:               If (var_88 = "FormC") Then
  loc_100CC20:                 Call Proc_311_53_14338F4()
  loc_100CC28:               Else
  loc_100CC30:                 If (var_88 = "GratuityReport") Then
  loc_100CC33:                   Call Proc_311_52_1485D6C()
  loc_100CC38:                 End If
  loc_100CC38:               End If
  loc_100CC38:             End If
  loc_100CC38:           End If
  loc_100CC38:         End If
  loc_100CC38:       End If
  loc_100CC38:     End If
  loc_100CC38:   End If
  loc_100CC38: End If
  loc_100CC41: If (global_80 = 0) Then
  loc_100CC44:   Exit Sub
  loc_100CC45: End If
  loc_100CC6F: Set var_94 = global_88 
  loc_100CC76: CreateFieldDefFile(var_94, MemVar_1F950B4 & "\" & global_76 & ".ttx")
  loc_100CCBF: Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & global_76 & ".RPT", var_AC)
  loc_100CCF6: Call 0.Method_arg_64 (var_94, CVar(var_94), var_BC)
  loc_100CCFE: Call 0.Method_arg_2C (var_CC, var_94)
  loc_100CD0C: Call 0.Method_arg_150 (&HFF)
  loc_100CD1C: Set global_88 = Nothing
  loc_100CD23: Call Proc_311_60_14F8C3C()
  loc_100CD2D: Set var_D4 = Nothing
  loc_100CD44: Set var_94 = var_94 
  loc_100CD50: Proc_6_99_1484404(var_94, Index, global_72)
  loc_100CD5B: MemVar_1F951E8 = var_94
  loc_100CD6B: global_98 = 0
  loc_100CD73: MemVar_1F951E8 = Nothing
  loc_100CD77: Exit Sub
  loc_100CD78: ' Referenced from: 100CB74
  loc_100CD78: Proc_6_60_E63754(global_98, &HFF)
  loc_100CD7D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E61544
  'Data Table: 4C9354
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6150F: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E61517: Call Proc_311_40_E49574()
  loc_E61527: Set var_A8 = Me.TxtGrid
  loc_E6152D: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E61535: var_AC.Visible = False
  loc_E61541: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1CD90
  'Data Table: 4C9354
  loc_E1CD87: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1CD8F: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '10A5BE8
  'Data Table: 4C9354
  Dim var_9C As String
  Dim var_AC As Variant
  Dim arg_C As Integer
  Dim var_D4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_11C As Long
  loc_10A595B: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_102))) Then
  loc_10A5971:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A5981:   var_9C = "+{Tab}"
  loc_10A5987:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag))
  loc_10A5991:   arg_C = 0
  loc_10A5997: Else
  loc_10A59CE:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_100))) Then
  loc_10A59E4:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A59FA:     Proc_303_0_FBACC8("	", 0)
  loc_10A5A04:     arg_C = 0
  loc_10A5A07:   End If
  loc_10A5A07: End If
  loc_10A5A0D: global_120 = arg_C
  loc_10A5A33: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10A5A57: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_10A5A6D:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A5A85:   var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10A5A8A:   var_104 = vbNullString
  loc_10A5A94:   Set var_118 = Me.FGrid
  loc_10A5A9A:   LateIdCallSt
  loc_10A5AC5:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A5ACA:   var_E4 = 2
  loc_10A5AD3:   var_104 = vbNullString
  loc_10A5ADD:   Set var_D4 = Me.FGrid
  loc_10A5AE3:   LateIdCallSt
  loc_10A5AF5: End If
  loc_10A5AFF: If (CLng(arg_C) = &HD) Then
  loc_10A5B15:   var_11C = CLng(Me.FGrid.Row)
  loc_10A5B25:   If Not (var_11C = CLng(0)) Then
  loc_10A5B2F:     If Not (var_11C = CLng(1)) Then
  loc_10A5B39:       If Not (var_11C = CLng(2)) Then
  loc_10A5B43:         If Not (var_11C = CLng(3)) Then
  loc_10A5B4D:           If Not (var_11C = CLng(4)) Then
  loc_10A5B57:             If Not (var_11C = CLng(5)) Then
  loc_10A5B61:               If Not (var_11C = CLng(6)) Then
  loc_10A5B6B:                 If Not (var_11C = CLng(7)) Then
  loc_10A5B75:                   If Not (var_11C = CLng(8)) Then
  loc_10A5B7F:                     If (var_11C = CLng(9)) Then
  loc_10A5B82:                     End If
  loc_10A5B82:                   End If
  loc_10A5B82:                 End If
  loc_10A5B82:               End If
  loc_10A5B82:             End If
  loc_10A5B82:           End If
  loc_10A5B82:         End If
  loc_10A5B82:       End If
  loc_10A5B82:     End If
  loc_10A5BC3:     Proc_6_61_1077158(Me, Me.FGrid, Me.TxtGrid, 0, 0, 0, var_11C, Me.FGrid)
  loc_10A5BDD:     global_122 = 0
  loc_10A5BE0:   End If
  loc_10A5BE0: End If
  loc_10A5BE2: arg_C = 0
  loc_10A5BE5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F0EFA0
  'Data Table: 4C9354
  Dim var_9C As Long
  loc_F0EED3: var_9C = CLng(Me.FGrid.Row)
  loc_F0EEE3: If Not (var_9C = CLng(0)) Then
  loc_F0EEED:   If Not (var_9C = CLng(1)) Then
  loc_F0EEF7:     If Not (var_9C = CLng(2)) Then
  loc_F0EF01:       If Not (var_9C = CLng(3)) Then
  loc_F0EF0B:         If Not (var_9C = CLng(4)) Then
  loc_F0EF15:           If Not (var_9C = CLng(5)) Then
  loc_F0EF1F:             If Not (var_9C = CLng(6)) Then
  loc_F0EF29:               If Not (var_9C = CLng(7)) Then
  loc_F0EF33:                 If Not (var_9C = CLng(8)) Then
  loc_F0EF3D:                   If (var_9C = CLng(9)) Then
  loc_F0EF40:                   End If
  loc_F0EF40:                 End If
  loc_F0EF40:               End If
  loc_F0EF40:             End If
  loc_F0EF40:           End If
  loc_F0EF40:         End If
  loc_F0EF40:       End If
  loc_F0EF40:     End If
  loc_F0EF40:   End If
  loc_F0EF58:   var_AC = 0
  loc_F0EF81:   Proc_6_61_1077158(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F0EF96: End If
  loc_F0EF9B: global_122 = 0
  loc_F0EF9E: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'F72FFC
  'Data Table: 4C9354
  Dim var_9C As Long
  loc_F72ED3: var_9C = CLng(Me.FGrid.Row)
  loc_F72EE3: If Not (var_9C = CLng(5)) Then
  loc_F72EED:   If Not (var_9C = CLng(6)) Then
  loc_F72EF7:     If Not (var_9C = CLng(7)) Then
  loc_F72F01:       If Not (var_9C = CLng(8)) Then
  loc_F72F0B:         If (var_9C = CLng(9)) Then
  loc_F72F0E:         End If
  loc_F72F0E:       End If
  loc_F72F0E:     End If
  loc_F72F0E:   End If
  loc_F72F4C:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F72F61: Else
  loc_F72F68:   If Not (var_9C = CLng(0)) Then
  loc_F72F72:     If Not (var_9C = CLng(1)) Then
  loc_F72F7C:       If Not (var_9C = CLng(2)) Then
  loc_F72F86:         If Not (var_9C = CLng(3)) Then
  loc_F72F90:           If (var_9C = CLng(4)) Then
  loc_F72F93:           End If
  loc_F72F93:         End If
  loc_F72F93:       End If
  loc_F72F93:     End If
  loc_F72FD1:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index)
  loc_F72FE3:   End If
  loc_F72FE3: End If
  loc_F72FED: If (CLng(Index) <> &HD) Then
  loc_F72FF5:   global_122 = &HFF
  loc_F72FF8: End If
  loc_F72FF8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1D600
  'Data Table: 4C9354
  loc_E1D5F7: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E1D5FF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1CF20
  'Data Table: 4C9354
  loc_E1CF17: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1CF1F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E42F60
  'Data Table: 4C9354
  Dim var_8C As TextBox
  loc_E42F3F: Set var_88 = Me.TxtGrid
  loc_E42F45: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E42F4D: var_8C.Visible = False
  loc_E42F59: Call Proc_311_40_E49574()
  loc_E42F5E: Exit Sub
End Sub

Private Sub btnExit_Click() 'E1C408
  'Data Table: 4C9354
  loc_E1C3FD: Me.Global.Unload Me
  loc_E1C405: Exit Sub
End Sub

Private Sub Check1_Click(Index As Integer) 'FF99A8
  'Data Table: 4C9354
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  loc_FF97B9: Set var_88 = Me.Check1
  loc_FF97BF: Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF97DD: If (CLng(var_8C.Value) = 0) Then
  loc_FF97EE:   Set var_88 = Me.GridSel
  loc_FF97F4:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF97FC:   var_8C.Enabled = True
  loc_FF9812:   Set var_88 = Me.GridSel
  loc_FF9818:   Call 0.Method_Check1_Click0 (Index)
  loc_FF9839:   If (CLng(var_8C.Rows) > 1) Then
  loc_FF984F:     Set var_88 = Me.GridSel
  loc_FF9855:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF985D:     var_8C.Row = 1
  loc_FF987C:     Set var_88 = Me.GridSel
  loc_FF9882:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF988A:     var_8C.Col = 0
  loc_FF9896:   End If
  loc_FF9899: Else
  loc_FF98A8:   Set var_88 = Me.GridSel
  loc_FF98AE:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF98B6:   var_8C.Enabled = False
  loc_FF98CC:   Set var_88 = Me.GridSel
  loc_FF98D2:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF98F3:   If (CLng(var_8C.Rows) > 1) Then
  loc_FF9909:     Set var_88 = Me.GridSel
  loc_FF990F:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9936:     Set var_88 = Me.GridSel
  loc_FF993C:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9944:     var_8C.Col = 0
  loc_FF995A:     Set var_88 = Me.GridSel
  loc_FF9960:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9977:     var_A0 = CVar((CLng(var_8C.Rows) - 1)) 'Long
  loc_FF9986:     Set var_C4 = Me.GridSel
  loc_FF998C:     Call 0.Method_Check1_Click0 (Index, var_C8)
  loc_FF9994:     var_C8.RowSel = 0
  loc_FF99A7:   End If
  loc_FF99A7: End If
  loc_FF99A7: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E218F8
  'Data Table: 4C9354
  loc_E218DE: If (Shift = &HD) Then
  loc_E218EF:   Proc_303_0_FBACC8("	")
  loc_E218F7: End If
  loc_E218F7: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E490F8
  'Data Table: 4C9354
  Dim var_8C As MSHFlexGrid
  loc_E490DB: Set var_88 = Me.GridSel
  loc_E490E1: Call 0.Method_GridSel_UnknownEvent_00 (KeyCode, var_8C)
  loc_E490E9: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E490F5: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_8 'E49640
  'Data Table: 4C9354
  Dim var_8C As MSHFlexGrid
  loc_E49623: Set var_88 = Me.GridSel
  loc_E49629: Call 0.Method_GridSel_UnknownEvent_80 (KeyCode, var_8C)
  loc_E49631: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E4963D: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A '1173958
  'Data Table: 4C9354
  Dim var_98 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_168 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  loc_11735AE: If (Shift = &HD) Then
  loc_11735BF:   Proc_303_0_FBACC8("	")
  loc_11735C7: End If
  loc_11735D1: Set var_94 = Me.GridSel
  loc_11735D7: Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_11735F8: If (CLng(var_98.Rows) < 1) Then
  loc_11735FB:   Exit Sub
  loc_11735FC: End If
  loc_1173610: Set var_94 = Me.GridSel
  loc_1173616: Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1173638: If ((CLng(Shift) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_117364B:   Set var_94 = Me.GridSel
  loc_1173651:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1173659:   var_98.CellFontName = "WINGDINGS"
  loc_1173677:   Set var_94 = Me.GridSel
  loc_117367D:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1173685:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_117369B:   Set var_94 = Me.GridSel
  loc_11736A1:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_11736B2:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_11736CA:   Set var_CC = Me.GridSel
  loc_11736D0:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_D0, 0)
  loc_11736D8:   var_100 = var_D0.TextMatrix)
  loc_11736EE:   Set var_164 = Me.GridSel
  loc_11736F4:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_168, var_100)
  loc_1173705:   var_190 = CVar(CLng(var_168.Row)) 'Long
  loc_1173753:   Set var_17C = Me.GridSel
  loc_1173759:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_180, CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_1173761:   LateIdCallSt
  loc_1173795:   var_1E2 = KeyCode
  loc_117379E:   If (var_1E2 = 1) Then
  loc_11737B2:     var_86 = CInt((UBound(global_156, 1) + 1))
  loc_11737C4:     ReDim Preserve global_156(0 To CLng(var_86))
  loc_11737D8:     Set var_94 = Me.GridSel
  loc_11737DE:     Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, var_86, var_1E2)
  loc_11737FA:     global_156(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1173808:   Else
  loc_117380E:     If (var_1E2 = 2) Then
  loc_1173822:       var_86 = CInt((UBound(global_160, 1) + 1))
  loc_1173834:       ReDim Preserve global_160(0 To CLng(var_86))
  loc_1173848:       Set var_94 = Me.GridSel
  loc_117384E:       Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, var_86, var_180)
  loc_117386A:       global_160(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1173878:     Else
  loc_117387E:       If (var_1E2 = 3) Then
  loc_1173892:         var_86 = CInt((UBound(global_164, 1) + 1))
  loc_11738A4:         ReDim Preserve global_164(0 To CLng(var_86))
  loc_11738B8:         Set var_94 = Me.GridSel
  loc_11738BE:         Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, var_86)
  loc_11738DA:         global_164(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_11738E8:       Else
  loc_11738EE:         If (var_1E2 = 4) Then
  loc_1173902:           var_86 = CInt((UBound(global_168, 1) + 1))
  loc_1173914:           ReDim Preserve global_168(0 To CLng(var_86))
  loc_1173928:           Set var_94 = Me.GridSel
  loc_117392E:           Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, var_86)
  loc_117394A:           global_168(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1173955:         End If
  loc_1173955:       End If
  loc_1173955:     End If
  loc_1173955:   End If
  loc_1173955: End If
  loc_1173955: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_C '1137EE0
  'Data Table: 4C9354
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_88 As TextBox
  loc_1137B7A: Set var_88 = Me.GridSel
  loc_1137B80: Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode)
  loc_1137BA1: Set var_A0 = Me.GridSel
  loc_1137BA7: Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_A4)
  loc_1137BD1: If ((CLng(var_8C.Col) = 0) Or (CLng(var_A4.Row) = 0)) Then
  loc_1137BD4:   Exit Sub
  loc_1137BD5: End If
  loc_1137BD8: var_B6 = KeyCode
  loc_1137BE1: If (var_B6 = 1) Then
  loc_1137BFC:   Set var_88 = Me.GridSel
  loc_1137C02:   Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_8C)
  loc_1137C0A:   var_9C = var_8C.Col
  loc_1137C74:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, KeyCode, global_56, Shift, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1137C95: Else
  loc_1137C9B:   If (var_B6 = 2) Then
  loc_1137CB6:     Set var_88 = Me.GridSel
  loc_1137CBC:     Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_8C, var_9C)
  loc_1137CC4:     var_9C = var_8C.Col
  loc_1137D2E:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, KeyCode, global_60, Shift, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1137D4F:   Else
  loc_1137D55:     If (var_B6 = 3) Then
  loc_1137D70:       Set var_88 = Me.GridSel
  loc_1137D76:       Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_8C, var_9C)
  loc_1137D7E:       var_9C = var_8C.Col
  loc_1137DE8:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, KeyCode, global_64, Shift, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1137E09:     Else
  loc_1137E0F:       If (var_B6 = 4) Then
  loc_1137E2A:         Set var_88 = Me.GridSel
  loc_1137E30:         Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_8C, var_9C)
  loc_1137EA2:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, KeyCode, global_68, Shift, Me.Fields.Item(CVar(CLng(var_8C.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_1137EC0:       End If
  loc_1137EC0:     End If
  loc_1137EC0:   End If
  loc_1137EC0: End If
  loc_1137ED2: Me.TxtSearch.Tag = CStr(KeyCode)
  loc_1137EDD: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E8169C
  'Data Table: 4C9354
  Dim var_8C As MSHFlexGrid
  loc_E8163E: Set var_88 = Me.GridSel
  loc_E81644: Call 0.Method_GridSel_UnknownEvent_E0 (KeyCode)
  loc_E81665: If (CLng(var_8C.Col) <> 0) Then
  loc_E81668:   Exit Sub
  loc_E81669: End If
  loc_E81673: Set var_88 = Me.GridSel
  loc_E81679: Call 0.Method_GridSel_UnknownEvent_E0 (KeyCode, var_8C)
  loc_E8168E: global_188 = CInt(CLng(var_8C.Row))
  loc_E8169B: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1175A70
  'Data Table: 4C9354
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_160 As Variant
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_11756B2: Set var_8C = Me.GridSel
  loc_11756B8: Call 0.Method_GridSel_UnknownEvent_100 (KeyCode)
  loc_11756E3: If ((CLng(var_90.Col) <> 0) Or (global_188 = 0)) Then
  loc_11756E6:   Exit Sub
  loc_11756E7: End If
  loc_11756F1: Set var_8C = Me.GridSel
  loc_11756F7: Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_117570C: global_190 = CInt(CLng(var_90.RowSel))
  loc_1175728: For var_A4 = global_188 To global_190: var_88 = var_A4 'Integer
  loc_1175741:   Set var_8C = Me.GridSel
  loc_1175747:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, CVar(CLng(var_88)))
  loc_117574F:   var_90.Row = global_188
  loc_117576E:   Set var_8C = Me.GridSel
  loc_1175774:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, 0)
  loc_117577C:   var_90.Col = global_190
  loc_1175798:   Set var_8C = Me.GridSel
  loc_117579E:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_11757A6:   var_90.CellFontName = "WINGDINGS"
  loc_11757C4:   Set var_8C = Me.GridSel
  loc_11757CA:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_11757D2:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_11757E2:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_11757FA:   Set var_8C = Me.GridSel
  loc_1175800:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, 0)
  loc_1175818:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1175866:   Set var_14C = Me.GridSel
  loc_117586C:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_150, CVar(CStr(IIf((CStr(var_90.TextMatrix)) = "ü"), " ", "ü"))), 0)
  loc_1175874:   LateIdCallSt
  loc_117589C:   var_1B2 = KeyCode
  loc_11758A5:   If (var_1B2 = 1) Then
  loc_11758B9:     var_86 = CInt((UBound(global_156, 1) + 1))
  loc_11758CB:     ReDim Preserve global_156(0 To CLng(var_86))
  loc_11758DF:     Set var_8C = Me.GridSel
  loc_11758E5:     Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, var_86, var_1B2, var_150)
  loc_1175901:     global_156(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_117590F:   Else
  loc_1175915:     If (var_1B2 = 2) Then
  loc_1175929:       var_86 = CInt((UBound(global_160, 1) + 1))
  loc_117593B:       ReDim Preserve global_160(0 To CLng(var_86))
  loc_117594F:       Set var_8C = Me.GridSel
  loc_1175955:       Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, var_86, var_160)
  loc_1175971:       global_160(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_117597F:     Else
  loc_1175985:       If (var_1B2 = 3) Then
  loc_1175999:         var_86 = CInt((UBound(global_164, 1) + 1))
  loc_11759AB:         ReDim Preserve global_164(0 To CLng(var_86))
  loc_11759BF:         Set var_8C = Me.GridSel
  loc_11759C5:         Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, var_86)
  loc_11759E1:         global_164(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11759EF:       Else
  loc_11759F5:         If (var_1B2 = 4) Then
  loc_1175A09:           var_86 = CInt((UBound(global_168, 1) + 1))
  loc_1175A1B:           ReDim Preserve global_168(0 To CLng(var_86))
  loc_1175A2F:           Set var_8C = Me.GridSel
  loc_1175A35:           Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, var_86)
  loc_1175A51:           global_168(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_1175A5C:         End If
  loc_1175A5C:       End If
  loc_1175A5C:     End If
  loc_1175A5C:   End If
  loc_1175A5F: Next var_A4 'Integer
  loc_1175A69: global_188 = 0
  loc_1175A6C: Exit Sub
  loc_1175A6D: global_188 = 
End Sub

Private Sub GridSel_UnknownEvent_13 'E49230
  'Data Table: 4C9354
  Dim var_8C As MSHFlexGrid
  loc_E49213: Set var_88 = Me.GridSel
  loc_E49219: Call 0.Method_GridSel_UnknownEvent_130 (KeyCode, var_8C)
  loc_E49221: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E4922D: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E49508
  'Data Table: 4C9354
  Dim var_8C As MSHFlexGrid
  loc_E494EB: Set var_88 = Me.GridSel
  loc_E494F1: Call 0.Method_GridSel_UnknownEvent_140 (KeyCode, var_8C)
  loc_E494F9: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E49505: Exit Sub
End Sub

Public Function global_52Get() '4CA2C0
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4CA2CF
  global_52 = Value
End Sub

Public Sub SelGridKeyPressLocal(Txt, SelGrid, index, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '11E0214
  'Data Table: 4C9354
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim KeyAscii As Integer
  Dim var_138 As Variant
  loc_11DFDD1: If (Me.GridSel.Text).rows < 1) Then
  loc_11DFDD4:   Exit Sub
  loc_11DFDD5: End If
  loc_11DFDE9: If (Me.RecordCount <= 0) Then
  loc_11DFDF5:   Me.TEXT = vbNullString
  loc_11DFDF9:   Exit Sub
  loc_11DFDFA: End If
  loc_11DFE0F: If ((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Then
  loc_11DFE12:   Exit Sub
  loc_11DFE13: End If
  loc_11DFE1D: If (CLng(KeyAscii) = 8) Then
  loc_11DFE37:   If (Len(Me.SelText) > 1) Then
  loc_11DFE4B:     var_DC = (Len(Me.SelText) - 1)
  loc_11DFE53:     Me.SelLength = var_DC
  loc_11DFE63:     var_88 = CStr(Me.SelText)
  loc_11DFE6C:   Else
  loc_11DFE75:     Me.TEXT = vbNullString
  loc_11DFE8F:     Call Me.GridSel.Text).SetFocus
  loc_11DFEA0:     Me.Visible = False
  loc_11DFEA4:     Exit Sub
  loc_11DFEA5:   End If
  loc_11DFEA8: Else
  loc_11DFEBF:   var_DC = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_11DFEC4:   var_88 = CStr(var_DC)
  loc_11DFED0: End If
  loc_11DFED3: Me.Recordset15.MoveFirst
  loc_11DFF10: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_11DFF53:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_11DFF68: Else
  loc_11DFF98:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_88 & "*'", 0, 1
  loc_11DFFA8: End If
  loc_11DFFAA: KeyAscii = 0
  loc_11DFFD6: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_11DFFDC:   var_BC = CVar(CellBackColLeave) 'Long
  loc_11DFFF5:   Me.GridSel.Text).CellBackColor = index
  loc_11E000A:   var_BC = CVar(Me.Recordset15.AbsolutePosition) 'Long
  loc_11E0023:   Me.GridSel.Text).Row = index
  loc_11E002D:   var_BC = CVar(CellBackColEnter) 'Long
  loc_11E0046:   Me.GridSel.Text).CellBackColor = index
  loc_11E007C:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_11E0096:   Me.SelLength = CVar(Len(var_88))
  loc_11E00AE:   var_DC = Me.GridSel.Text).CellLeft
  loc_11E00CE:   var_138 = (index + Me.GridSel.Text).left)
  loc_11E00D6:   Me.left = var_138
  loc_11E00FB:   var_DC = Me.GridSel.Text).CellTop
  loc_11E011B:   var_138 = (index + Me.GridSel.Text).top)
  loc_11E0123:   Me.top = var_138
  loc_11E0146:   If (Me.Visible = False) Then
  loc_11E0150:     Me.Visible = True
  loc_11E0154:     var_9C = 0
  loc_11E015D:     Call Me.ZOrder
  loc_11E0166:     Call Me.SetFocus
  loc_11E018A:     Me.BackColor = Me.GridSel.Text).CellBackColor
  loc_11E01B3:     Me.ForeColor = Me.GridSel.Text).CellForeColor
  loc_11E01DC:     Me.width = Me.GridSel.Text).CellWidth
  loc_11E0205:     Me.height = Me.GridSel.Text).CellHeight
  loc_11E0210:   End If
  loc_11E0210: End If
  loc_11E0210: Exit Sub
End Sub

Public Function ListView_Items_RecordSet_Local(LV, Txt, index, Rst) 'FF61A8
  'Data Table: 4C9354
  Dim var_104 As String
  Dim var_A0 As Variant
  Dim Me As Variant
  Dim var_134 As String
  Dim var_8C As ListItem
  Dim var_E4 As Integer
  loc_FF5FC8: Call Me.ListItems.Clear
  loc_FF5FE5: If (Me.Recordset15.RecordCount <= 0) Then
  loc_FF5FE8:   ListView_Items_RecordSet_Local = 
  loc_FF5FEE: End If
  loc_FF5FF9: If (global_52 <> "HundiPrint") Then
  loc_FF6004:   var_104 = "All"
  loc_FF600D:   var_A0 = Me.ListItems
  loc_FF601E:   Set var_8C = var_A0.add
  loc_FF6030:   var_A0.ListItem.SubItems = 1
  loc_FF6035:   ' Referenced from: FF6130
  loc_FF6035: End If
  loc_FF603B: var_116 = Me.EOF
  loc_FF6044: If Not(var_116) Then
  loc_FF6071:   var_A0 = Me.Recordset15.Fields.Item("Name").Value
  loc_FF60DB:   If Not(IsNull(Me.Recordset15.Fields.Item("Code").Value)) Then
  loc_FF610A:     var_134 = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_FF6112:     Me.ListItems.add.SubItems = 1
  loc_FF6128:   End If
  loc_FF612B:   Me.MoveNext
  loc_FF6130:   GoTo loc_FF6035
  loc_FF6133: End If
  loc_FF613D: var_A0 = Me.Text)
  loc_FF6148: var_E4 = 0
  loc_FF6167: Set var_8C = Me.FindItem
  loc_FF6178: If (var_8C Is Nothing) Then
  loc_FF617B:   ListView_Items_RecordSet_Local = 1
  loc_FF6184: Else
  loc_FF618A:   var_8C.EnsureVisible var_116
  loc_FF6194:   var_8C.Selected = True
  loc_FF6199: End If
  loc_FF619C: Set var_88 = var_8C 
  loc_FF61A0: ListView_Items_RecordSet_Local = var_104
End Function

Public Sub Proc_311_38_12A61C4
  'Data Table: 4C9354
  Dim var_9C As Variant
  Dim var_B0 As Long
  Dim var_B8 As Variant
  Dim Me As Recordset15
  Dim var_F8 As Variant
  Dim var_D8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_108 As Variant
  Dim var_15C As Variant
  Dim var_128 As Variant
  Dim var_16C As Variant
  Dim var_14C As MSHFlexGrid
  loc_12A5BE3: var_B0 = CLng(Me.FGrid.Row)
  loc_12A5BF3: If (var_B0 = CLng(2)) Then
  loc_12A5BFC:   var_B4 = global_52
  loc_12A5C07:   If Not (var_B4 = "AttendanceRep") Then
  loc_12A5C12:     If Not (var_B4 = "PaySlip") Then
  loc_12A5C1D:       If (var_B4 = "PFStatement") Then
  loc_12A5C20:       End If
  loc_12A5C20:     End If
  loc_12A5C2C:     Set var_9C = Me.TxtGrid
  loc_12A5C32:     Call 0.Method_Proc_311_38_12A61C40 (0, var_B8)
  loc_12A5C51:     If (var_B8.Text <> vbNullString) Then
  loc_12A5C6B:       If (Me.RecordCount > 0) Then
  loc_12A5C81:         var_F8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A5C99:         var_118 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12A5CBC:         var_BC = Me.ListView.SelectedItem.Text
  loc_12A5CC4:         var_138 = CVar(var_BC) 'String
  loc_12A5CCC:         Set var_14C = Me.FGrid
  loc_12A5CD2:         LateIdCallSt
  loc_12A5D05:         var_F8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A5D0A:         var_118 = 2
  loc_12A5D2D:         Set var_B8 = Me.ListView.SelectedItem
  loc_12A5D33:         1 = var_B8.SubItems
  loc_12A5D3B:         var_E8 = CVar(var_BC) 'String
  loc_12A5D43:         Set var_D8 = Me.FGrid
  loc_12A5D49:         LateIdCallSt
  loc_12A5D65:       End If
  loc_12A5D65:     End If
  loc_12A5D68:   Else
  loc_12A5D70:     If Not (var_B4 = "PayrollReg") Then
  loc_12A5D7B:       If Not (var_B4 = "LoanReg") Then
  loc_12A5D86:         If (var_B4 = "LoanLedg") Then
  loc_12A5D89:         End If
  loc_12A5D89:       End If
  loc_12A5D95:       Set var_9C = Me.TxtGrid
  loc_12A5D9B:       Call 0.Method_Proc_311_38_12A61C40 (0, var_B8, var_BC, var_D8, var_E8, var_BC, var_118)
  loc_12A5DA3:       var_F8 = var_B8.Text
  loc_12A5DBA:       If (var_BC <> vbNullString) Then
  loc_12A5DD0:         var_F8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A5DE8:         var_118 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12A5E05:         Set var_B8 = Me.ListView.SelectedItem
  loc_12A5E0B:         var_BC = var_B8.Text
  loc_12A5E13:         var_138 = CVar(var_BC) 'String
  loc_12A5E1B:         Set var_14C = Me.FGrid
  loc_12A5E21:         LateIdCallSt
  loc_12A5E41:       End If
  loc_12A5E44:     Else
  loc_12A5E4C:       If (var_B4 = "FormC") Then
  loc_12A5E5B:         Set var_9C = Me.TxtGrid
  loc_12A5E61:         Call 0.Method_Proc_311_38_12A61C40 (0, var_B8, var_BC, var_14C, var_138, var_118)
  loc_12A5E69:         var_F8 = var_B8.Text
  loc_12A5E78:         var_138 = Me.FGrid.Row
  loc_12A5E81:         var_108 = CVar(CLng(var_138)) 'Long
  loc_12A5E99:         var_128 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12A5EC5:         var_16C = CVar(CStr(Format(CVar(var_BC), "0.00"))) 'String
  loc_12A5ECD:         Set var_14C = Me.FGrid
  loc_12A5ED3:         LateIdCallSt
  loc_12A5EF7:       End If
  loc_12A5EF7:     End If
  loc_12A5EF7:   End If
  loc_12A5EFA: Else
  loc_12A5F01:   If Not (var_B0 = CLng(5)) Then
  loc_12A5F0B:     If Not (var_B0 = CLng(6)) Then
  loc_12A5F15:       If Not (var_B0 = CLng(7)) Then
  loc_12A5F1F:         If Not (var_B0 = CLng(8)) Then
  loc_12A5F29:           If (var_B0 = CLng(9)) Then
  loc_12A5F2C:           End If
  loc_12A5F2C:         End If
  loc_12A5F2C:       End If
  loc_12A5F2C:     End If
  loc_12A5F2F:   Else
  loc_12A5F36:     If (var_B0 = CLng(3)) Then
  loc_12A5F39:       GoTo loc_12A6175
  loc_12A5F3C:     End If
  loc_12A5F43:     If (var_B0 = CLng(4)) Then
  loc_12A5F46:       GoTo loc_12A6175
  loc_12A5F49:     End If
  loc_12A5F50:     If Not (var_B0 = CLng(0)) Then
  loc_12A5F5A:       If (var_B0 = CLng(1)) Then
  loc_12A5F5D:       End If
  loc_12A5F79:       Set var_14C = Me.FGrid
  loc_12A5F96:       Set var_9C = Me.TxtGrid
  loc_12A5F9C:       Call 0.Method_Proc_311_38_12A61C40 (0, var_B8, CVar(CLng(var_14C.Col)), CVar(CLng(Me.FGrid.Row)), var_14C, var_16C, 1)
  loc_12A5FBD:       LateIdCallSt
  loc_12A6016:       If (((((global_52 = "AttendanceRep") Or (global_52 = "LoanAdvSumm")) Or (global_52 = "PaySlip")) Or (global_52 = "PayrollReg")) Or (global_52 = "PFStatement")) Then
  loc_12A6022:         Set var_9C = Me.TxtGrid
  loc_12A6028:         Call 0.Method_Proc_311_38_12A61C40 (0, var_B8, Me.FGrid, CVar(Proc_6_33_15125B8(var_B8, 1, var_128, var_108)))
  loc_12A6051:         var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A6059:         var_128 = CVar(CLng(1)) 'Long
  loc_12A6085:         var_15C = CVar(CStr(Format(CVar(Proc_6_120_133AEC8(var_B8, var_14C, Me.FGrid.Row)), "MM/YYYY"))) 'String
  loc_12A608D:         Set var_14C = Me.FGrid
  loc_12A6093:         LateIdCallSt
  loc_12A60B6:       End If
  loc_12A60C1:       If (global_52 = "FormC") Then
  loc_12A60CD:         Set var_9C = Me.TxtGrid
  loc_12A60D3:         Call 0.Method_Proc_311_38_12A61C40 (0, var_B8, var_14C, var_15C, 1)
  loc_12A60FC:         var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A6114:         var_128 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12A6140:         var_16C = CVar(CStr(Format(CVar(Proc_6_120_133AEC8(var_B8, 1, var_128)), "MMM/YYYY"))) 'String
  loc_12A6148:         Set var_180 = Me.FGrid
  loc_12A614E:         LateIdCallSt
  loc_12A6175:         ' Referenced from:     12A5F46
  loc_12A6175:         ' Referenced from:     12A5F39
  loc_12A6175:       End If
  loc_12A6175:     End If
  loc_12A6175:   End If
  loc_12A6175: End If
  loc_12A6180: If (arg_10 = 0) Then
  loc_12A6187:   Set var_9C = Me.FGrid
  loc_12A61A3:   Set var_9C = Me.TxtGrid
  loc_12A61A9:   Call 0.Method_Proc_311_38_12A61C40 (0, var_B8, 0, FGrid.DispID_8001, &HFF, var_180, var_16C)
  loc_12A61B1:   var_B8.Visible = True
  loc_12A61BD: End If
  loc_12A61BD: Proc_311_38_12A61C4 = 1
End Sub

Public Sub Proc_311_39_15D3598
  'Data Table: 4C9354
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_88 As Integer
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_120 As MSHFlexGrid
  loc_15D2244: Call 0.Method_arg_78 (var_8C)
  loc_15D225F: Me.Pic.Top = ((var_8C - Me.Pic.Width) - CDbl(&HA))
  loc_15D2284: Call 0.Method_Me0 (var_8C)
  loc_15D2296: var_B8 = CVar(((var_8C - CDbl(Me.FGrid.Width)) / CDbl(2))) 'Single
  loc_15D229F: Set var_98 = Me.FGrid
  loc_15D22A5: var_98.Left = var_B8
  loc_15D22C6: Me.FGrid.Top = CVar(CDbl(&H4B))
  loc_15D22E1: Me.FGrid.Rows = &HA
  loc_15D22FC: Me.FGrid.Cols = 3
  loc_15D2317: Me.FGrid.FixedCols = 1
  loc_15D231F: var_B8 = 0
  loc_15D2328: var_D8 = &H898
  loc_15D2335: Set var_90 = Me.FGrid
  loc_15D233B: LateIdCallSt
  loc_15D2346: var_B8 = 1
  loc_15D234F: var_D8 = &H898
  loc_15D235C: Set var_90 = Me.FGrid
  loc_15D2362: LateIdCallSt
  loc_15D236D: var_B8 = 2
  loc_15D2376: var_D8 = 0
  loc_15D2383: Set var_90 = Me.FGrid
  loc_15D2389: LateIdCallSt
  loc_15D2394: var_B8 = 1
  loc_15D23A3: var_D8 = CVar(CInt(1)) 'Integer
  loc_15D23AB: Set var_90 = Me.FGrid
  loc_15D23B1: LateIdCallSt
  loc_15D23E1: For var_EC = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_EC 'Integer
  loc_15D23EB:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_15D23F0:   var_D8 = 0
  loc_15D23FD:   Set var_90 = Me.FGrid
  loc_15D2403:   LateIdCallSt
  loc_15D2411: Next var_EC 'Integer
  loc_15D2416: Call Proc_311_44_14EA208()
  loc_15D2422: For var_F0 = 1 To 4: var_86 = var_F0 'Integer
  loc_15D2432:   Set var_90 = Me.GridSel
  loc_15D2438:   Call 0.Method_Proc_311_39_15D35980 (var_86, var_98)
  loc_15D2456:   If (CBool(var_98.Visible) = &HFF) Then
  loc_15D245F:     var_88 = (var_88 + 1)
  loc_15D2462:   End If
  loc_15D2465: Next var_F0 'Integer
  loc_15D2485: var_B8 = CVar(CDbl(((((global_100 - global_102) + 1) * CInt(220)) + 500))) 'Single
  loc_15D2494: Me.FGrid.Height = var_B8
  loc_15D24A2: var_100 = global_104 'Variant
  loc_15D24B1: If (var_100 = 0) Then
  loc_15D24C7:   Me.FGrid.Top = CVar(CDbl(1000))
  loc_15D24D2: Else
  loc_15D24DD:   If (var_100 = 1) Then
  loc_15D24E9:     Set var_90 = Me.GridSel
  loc_15D24EF:     Call 0.Method_Proc_311_39_15D35980 (1)
  loc_15D24F7:     var_A8 = var_98.Width
  loc_15D2506:     Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D2518:     var_B8 = CVar(((var_8C - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_15D2526:     Set var_104 = Me.GridSel
  loc_15D252C:     Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D2534:     var_108.Left = 1
  loc_15D2551:     var_118 = Me.FGrid.Height
  loc_15D2578:     var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D2586:     Set var_104 = Me.GridSel
  loc_15D258C:     Call 0.Method_Proc_311_39_15D35980 (1, var_108, 1)
  loc_15D2594:     var_108.Top = var_118
  loc_15D25B5:     var_A8 = Me.FGrid.Height
  loc_15D25C5:     Set var_98 = Me.Pic
  loc_15D25D6:     Call 0.Method_Me8 (var_8C, var_A8)
  loc_15D25ED:     var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_98.Height) - CDbl(1200))) 'Single
  loc_15D25FB:     Set var_104 = Me.GridSel
  loc_15D2601:     Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D2609:     var_108.Height = 1
  loc_15D2625:     Set var_90 = Me.GridSel
  loc_15D262B:     Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D264A:     Set var_104 = Me.Check1
  loc_15D2650:     Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D2658:     var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D2674:     Set var_90 = Me.GridSel
  loc_15D267A:     Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D2699:     Set var_104 = Me.Check1
  loc_15D269F:     Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D26A7:     var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D26BD:   Else
  loc_15D26C8:     If (var_100 = 2) Then
  loc_15D26D4:       Set var_90 = Me.GridSel
  loc_15D26DA:       Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D26E2:       var_A8 = var_98.Width
  loc_15D26F1:       Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D2707:       var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_15D2715:       Set var_104 = Me.GridSel
  loc_15D271B:       Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D2723:       var_108.Left = 2
  loc_15D2740:       var_118 = Me.FGrid.Height
  loc_15D2767:       var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D2775:       Set var_104 = Me.GridSel
  loc_15D277B:       Call 0.Method_Proc_311_39_15D35980 (1, var_108, 2)
  loc_15D2783:       var_108.Top = var_118
  loc_15D27A4:       var_A8 = Me.FGrid.Height
  loc_15D27B4:       Set var_98 = Me.Pic
  loc_15D27BA:       var_94 = var_98.Height
  loc_15D27C5:       Call 0.Method_Me8 (var_8C, var_A8)
  loc_15D27DC:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_94) - CDbl(1200))) 'Single
  loc_15D27EA:       Set var_104 = Me.GridSel
  loc_15D27F0:       Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D27F8:       var_108.Height = 2
  loc_15D2814:       Set var_90 = Me.GridSel
  loc_15D281A:       Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D2839:       Set var_104 = Me.Check1
  loc_15D283F:       Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D2847:       var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D2863:       Set var_90 = Me.GridSel
  loc_15D2869:       Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D2888:       Set var_104 = Me.Check1
  loc_15D288E:       Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D2896:       var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D28AF:       Call 0.Method_Me0 (var_94)
  loc_15D28BD:       Set var_90 = Me.GridSel
  loc_15D28C3:       Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D28CB:       var_A8 = var_98.Width
  loc_15D28DA:       Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D28F8:       var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_15D2906:       Set var_104 = Me.GridSel
  loc_15D290C:       Call 0.Method_Proc_311_39_15D35980 (2, var_108)
  loc_15D2914:       var_108.Left = 2
  loc_15D2931:       var_118 = Me.FGrid.Height
  loc_15D2958:       var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D2966:       Set var_104 = Me.GridSel
  loc_15D296C:       Call 0.Method_Proc_311_39_15D35980 (2, var_108, 2)
  loc_15D2974:       var_108.Top = var_118
  loc_15D2995:       var_A8 = Me.FGrid.Height
  loc_15D29A5:       Set var_98 = Me.Pic
  loc_15D29AB:       var_94 = var_98.Height
  loc_15D29B6:       Call 0.Method_Me8 (var_8C, var_A8)
  loc_15D29CD:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_94) - CDbl(1200))) 'Single
  loc_15D29DB:       Set var_104 = Me.GridSel
  loc_15D29E1:       Call 0.Method_Proc_311_39_15D35980 (2, var_108)
  loc_15D29E9:       var_108.Height = 2
  loc_15D2A05:       Set var_90 = Me.GridSel
  loc_15D2A0B:       Call 0.Method_Proc_311_39_15D35980 (2, var_98)
  loc_15D2A2A:       Set var_104 = Me.Check1
  loc_15D2A30:       Call 0.Method_Proc_311_39_15D35980 (2, var_108)
  loc_15D2A38:       var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D2A54:       Set var_90 = Me.GridSel
  loc_15D2A5A:       Call 0.Method_Proc_311_39_15D35980 (2, var_98)
  loc_15D2A79:       Set var_104 = Me.Check1
  loc_15D2A7F:       Call 0.Method_Proc_311_39_15D35980 (2, var_108)
  loc_15D2A87:       var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D2A9D:     Else
  loc_15D2AA8:       If (var_100 = 3) Then
  loc_15D2AB4:         Set var_90 = Me.GridSel
  loc_15D2ABA:         Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D2AC2:         var_A8 = var_98.Width
  loc_15D2AD1:         Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D2AE7:         var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_15D2AF5:         Set var_104 = Me.GridSel
  loc_15D2AFB:         Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D2B03:         var_108.Left = 3
  loc_15D2B1A:         Set var_98 = Me.FGrid
  loc_15D2B20:         var_118 = var_98.Height
  loc_15D2B47:         var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D2B55:         Set var_104 = Me.GridSel
  loc_15D2B5B:         Call 0.Method_Proc_311_39_15D35980 (1, var_108, 3)
  loc_15D2B63:         var_108.Top = var_118
  loc_15D2B83:         Set var_90 = Me.GridSel
  loc_15D2B89:         Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D2BA8:         Set var_104 = Me.Check1
  loc_15D2BAE:         Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D2BB6:         var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D2BD2:         Set var_90 = Me.GridSel
  loc_15D2BD8:         Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D2BF7:         Set var_104 = Me.Check1
  loc_15D2BFD:         Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D2C05:         var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D2C21:         Set var_90 = Me.GridSel
  loc_15D2C27:         Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D2C46:         Set var_104 = Me.GridSel
  loc_15D2C4C:         Call 0.Method_Proc_311_39_15D35980 (3, var_108)
  loc_15D2C54:         var_108.Left = CVar(CDbl(var_98.Left))
  loc_15D2C70:         Set var_104 = Me.GridSel
  loc_15D2C76:         Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D2C7E:         var_118 = var_108.Height
  loc_15D2C90:         Set var_90 = Me.GridSel
  loc_15D2C96:         Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D2CB2:         var_B8 = CVar(((CDbl(var_98.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D2CC0:         Set var_11C = Me.GridSel
  loc_15D2CC6:         Call 0.Method_Proc_311_39_15D35980 (3, var_120, CVar(CDbl(var_98.Left)))
  loc_15D2CCE:         var_120.Top = var_118
  loc_15D2CF2:         Set var_90 = Me.GridSel
  loc_15D2CF8:         Call 0.Method_Proc_311_39_15D35980 (3, var_98)
  loc_15D2D17:         Set var_104 = Me.Check1
  loc_15D2D1D:         Call 0.Method_Proc_311_39_15D35980 (3, var_108)
  loc_15D2D25:         var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D2D41:         Set var_90 = Me.GridSel
  loc_15D2D47:         Call 0.Method_Proc_311_39_15D35980 (3, var_98)
  loc_15D2D66:         Set var_104 = Me.Check1
  loc_15D2D6C:         Call 0.Method_Proc_311_39_15D35980 (3, var_108)
  loc_15D2D74:         var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D2D8D:         Call 0.Method_Me0 (var_94)
  loc_15D2D9B:         Set var_90 = Me.GridSel
  loc_15D2DA1:         Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D2DA9:         var_A8 = var_98.Width
  loc_15D2DB8:         Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D2DD6:         var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_15D2DE4:         Set var_104 = Me.GridSel
  loc_15D2DEA:         Call 0.Method_Proc_311_39_15D35980 (2, var_108)
  loc_15D2DF2:         var_108.Left = CVar(CDbl(var_98.Left))
  loc_15D2E09:         Set var_98 = Me.FGrid
  loc_15D2E0F:         var_118 = var_98.Height
  loc_15D2E36:         var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D2E44:         Set var_104 = Me.GridSel
  loc_15D2E4A:         Call 0.Method_Proc_311_39_15D35980 (2, var_108, CVar(CDbl(var_98.Left)))
  loc_15D2E52:         var_108.Top = var_118
  loc_15D2E72:         Set var_104 = Me.GridSel
  loc_15D2E78:         Call 0.Method_Proc_311_39_15D35980 (2, var_108)
  loc_15D2E80:         var_118 = var_108.Height
  loc_15D2E92:         Set var_90 = Me.GridSel
  loc_15D2E98:         Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D2EB4:         var_B8 = CVar(((CDbl(var_98.Height) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D2EC2:         Set var_11C = Me.GridSel
  loc_15D2EC8:         Call 0.Method_Proc_311_39_15D35980 (2, var_120, CVar(CDbl(var_98.Left)))
  loc_15D2ED0:         var_120.Height = var_118
  loc_15D2EF4:         Set var_90 = Me.GridSel
  loc_15D2EFA:         Call 0.Method_Proc_311_39_15D35980 (2, var_98)
  loc_15D2F19:         Set var_104 = Me.Check1
  loc_15D2F1F:         Call 0.Method_Proc_311_39_15D35980 (2, var_108)
  loc_15D2F27:         var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D2F43:         Set var_90 = Me.GridSel
  loc_15D2F49:         Call 0.Method_Proc_311_39_15D35980 (2, var_98)
  loc_15D2F68:         Set var_104 = Me.Check1
  loc_15D2F6E:         Call 0.Method_Proc_311_39_15D35980 (2, var_108)
  loc_15D2F76:         var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D2F8C:       Else
  loc_15D2F97:         If (var_100 = 4) Then
  loc_15D2FA3:           Set var_90 = Me.GridSel
  loc_15D2FA9:           Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D2FB1:           var_A8 = var_98.Width
  loc_15D2FC0:           Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D2FD6:           var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_15D2FE4:           Set var_104 = Me.GridSel
  loc_15D2FEA:           Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D2FF2:           var_108.Left = 4
  loc_15D3009:           Set var_98 = Me.FGrid
  loc_15D300F:           var_118 = var_98.Height
  loc_15D3036:           var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D3044:           Set var_104 = Me.GridSel
  loc_15D304A:           Call 0.Method_Proc_311_39_15D35980 (1, var_108, 4)
  loc_15D3052:           var_108.Top = var_118
  loc_15D3072:           Set var_90 = Me.GridSel
  loc_15D3078:           Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D3097:           Set var_104 = Me.Check1
  loc_15D309D:           Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D30A5:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D30C1:           Set var_90 = Me.GridSel
  loc_15D30C7:           Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D30E6:           Set var_104 = Me.Check1
  loc_15D30EC:           Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D30F4:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D310D:           Call 0.Method_Me0 (var_94)
  loc_15D311B:           Set var_90 = Me.GridSel
  loc_15D3121:           Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D3129:           var_A8 = var_98.Width
  loc_15D3138:           Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D3156:           var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_15D3164:           Set var_104 = Me.GridSel
  loc_15D316A:           Call 0.Method_Proc_311_39_15D35980 (2, var_108)
  loc_15D3172:           var_108.Left = 4
  loc_15D3189:           Set var_98 = Me.FGrid
  loc_15D318F:           var_118 = var_98.Height
  loc_15D31B6:           var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D31C4:           Set var_104 = Me.GridSel
  loc_15D31CA:           Call 0.Method_Proc_311_39_15D35980 (2, var_108, 4)
  loc_15D31D2:           var_108.Top = var_118
  loc_15D31F2:           Set var_90 = Me.GridSel
  loc_15D31F8:           Call 0.Method_Proc_311_39_15D35980 (2, var_98)
  loc_15D3217:           Set var_104 = Me.Check1
  loc_15D321D:           Call 0.Method_Proc_311_39_15D35980 (2, var_108)
  loc_15D3225:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D3241:           Set var_90 = Me.GridSel
  loc_15D3247:           Call 0.Method_Proc_311_39_15D35980 (2, var_98)
  loc_15D3266:           Set var_104 = Me.Check1
  loc_15D326C:           Call 0.Method_Proc_311_39_15D35980 (2, var_108)
  loc_15D3274:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D3290:           Set var_90 = Me.GridSel
  loc_15D3296:           Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D32B5:           Set var_104 = Me.GridSel
  loc_15D32BB:           Call 0.Method_Proc_311_39_15D35980 (3, var_108)
  loc_15D32C3:           var_108.Left = CVar(CDbl(var_98.Left))
  loc_15D32DF:           Set var_104 = Me.GridSel
  loc_15D32E5:           Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D32ED:           var_118 = var_108.Height
  loc_15D32FF:           Set var_90 = Me.GridSel
  loc_15D3305:           Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D3321:           var_B8 = CVar(((CDbl(var_98.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D332F:           Set var_11C = Me.GridSel
  loc_15D3335:           Call 0.Method_Proc_311_39_15D35980 (3, var_120, CVar(CDbl(var_98.Left)))
  loc_15D333D:           var_120.Top = var_118
  loc_15D3361:           Set var_90 = Me.GridSel
  loc_15D3367:           Call 0.Method_Proc_311_39_15D35980 (3, var_98)
  loc_15D3386:           Set var_104 = Me.Check1
  loc_15D338C:           Call 0.Method_Proc_311_39_15D35980 (3, var_108)
  loc_15D3394:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D33B0:           Set var_90 = Me.GridSel
  loc_15D33B6:           Call 0.Method_Proc_311_39_15D35980 (3, var_98)
  loc_15D33D5:           Set var_104 = Me.Check1
  loc_15D33DB:           Call 0.Method_Proc_311_39_15D35980 (3, var_108)
  loc_15D33E3:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D33FC:           Call 0.Method_Me0 (var_94)
  loc_15D340A:           Set var_90 = Me.GridSel
  loc_15D3410:           Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D3418:           var_A8 = var_98.Width
  loc_15D3427:           Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D3445:           var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_15D3453:           Set var_104 = Me.GridSel
  loc_15D3459:           Call 0.Method_Proc_311_39_15D35980 (4, var_108)
  loc_15D3461:           var_108.Left = CVar(CDbl(var_98.Left))
  loc_15D347D:           Set var_104 = Me.GridSel
  loc_15D3483:           Call 0.Method_Proc_311_39_15D35980 (1, var_108)
  loc_15D348B:           var_118 = var_108.Height
  loc_15D349D:           Set var_90 = Me.GridSel
  loc_15D34A3:           Call 0.Method_Proc_311_39_15D35980 (1, var_98)
  loc_15D34BF:           var_B8 = CVar(((CDbl(var_98.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D34CD:           Set var_11C = Me.GridSel
  loc_15D34D3:           Call 0.Method_Proc_311_39_15D35980 (4, var_120, CVar(CDbl(var_98.Left)))
  loc_15D34DB:           var_120.Top = var_118
  loc_15D34FF:           Set var_90 = Me.GridSel
  loc_15D3505:           Call 0.Method_Proc_311_39_15D35980 (4, var_98)
  loc_15D3524:           Set var_104 = Me.Check1
  loc_15D352A:           Call 0.Method_Proc_311_39_15D35980 (4, var_108)
  loc_15D3532:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D354E:           Set var_90 = Me.GridSel
  loc_15D3554:           Call 0.Method_Proc_311_39_15D35980 (4, var_98)
  loc_15D3573:           Set var_104 = Me.Check1
  loc_15D3579:           Call 0.Method_Proc_311_39_15D35980 (4, var_108)
  loc_15D3581:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D3594:         End If
  loc_15D3594:       End If
  loc_15D3594:     End If
  loc_15D3594:   End If
  loc_15D3594: End If
  loc_15D3594: Exit Sub
End Sub

Public Sub Proc_311_40_E49574
  'Data Table: 4C9354
  loc_E4955B: If (Me.FrmList.Visible = &HFF) Then
  loc_E4956A:   Me.FrmList.Visible = False
  loc_E49572: End If
  loc_E49572: Exit Sub
End Sub

Public Sub Proc_311_41_1281064(arg_C, arg_10, arg_14) '1281064
  'Data Table: 4C9354
  Dim var_B8 As Integer
  Dim var_90 As Integer
  Dim var_A8 As Variant
  Dim var_F0 As Long
  Dim var_E0 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_10C As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_16C As Variant
  Dim var_1AC As Variant
  Dim var_1C2 As Integer
  loc_1280ACA: On Error Goto loc_128104E
  loc_1280AD0: var_8C = vbNullString
  loc_1280ADB: CRefVarAry
  loc_1280AE3: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_1280B04:   If (arg_C(var_8E) = 0) Then
  loc_1280B07:     GoTo loc_1280E9F
  loc_1280B0A:   End If
  loc_1280B1B:   var_90 = CInt(arg_C(var_8E))
  loc_1280B25:   var_A8 = CVar(CLng(var_90)) 'Long
  loc_1280B3D:   Set var_DC = Me.GridSel
  loc_1280B43:   Call 0.Method_Proc_311_41_12810640 (arg_10, var_E0, 0)
  loc_1280B6B:   If (CStr(var_E0.TextMatrix)) = "ü") Then
  loc_1280B77:     If (CInt(arg_14) = 0) Then
  loc_1280B96:       Set var_DC = Me.GridSel
  loc_1280B9C:       Call 0.Method_Proc_311_41_12810640 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_1280BA4:       var_C8 = var_E0.TextMatrix)
  loc_1280BD5:       Set var_108 = Me.GridSel
  loc_1280BDB:       Call 0.Method_Proc_311_41_12810640 (arg_10, var_10C, 2, CVar(CLng(var_90)), ",")
  loc_1280C13:       var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar(CStr(var_C8)), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)))))
  loc_1280C18:       var_8C = CStr(var_1AC)
  loc_1280C3D:     Else
  loc_1280C46:       If (CInt(arg_14) = 1) Then
  loc_1280C65:         Set var_DC = Me.GridSel
  loc_1280C6B:         Call 0.Method_Proc_311_41_12810640 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_1280C73:         var_C8 = var_E0.TextMatrix)
  loc_1280CAB:         Set var_108 = Me.GridSel
  loc_1280CB1:         Call 0.Method_Proc_311_41_12810640 (arg_10, var_10C, 2, CVar(CLng(var_90)), "," & "'")
  loc_1280CFE:         var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar("'" & CStr(var_C8) & "'"), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)) & "'")))
  loc_1280D03:         var_8C = CStr(var_1AC)
  loc_1280D2F:       End If
  loc_1280D2F:     End If
  loc_1280D4E:     Set var_DC = Me.GridSel
  loc_1280D54:     Call 0.Method_Proc_311_41_12810640 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_1280D86:     If (Len(var_94 & CStr(var_E0.TextMatrix))) < &HFF) Then
  loc_1280DA5:       Set var_DC = Me.GridSel
  loc_1280DAB:       Call 0.Method_Proc_311_41_12810640 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_1280DB3:       var_C8 = var_E0.TextMatrix)
  loc_1280DE4:       Set var_108 = Me.GridSel
  loc_1280DEA:       Call 0.Method_Proc_311_41_12810640 (arg_10, var_10C, 1, CVar(CLng(var_90)), ",")
  loc_1280E01:       var_17C = CVar(CVar(var_94) & CStr(var_10C.TextMatrix))) 'String
  loc_1280E08:       var_16C = CVar(CStr(var_C8)) 'String
  loc_1280E1A:       var_18C = IIf((var_94 = vbNullString), var_16C, var_17C)
  loc_1280E22:       var_1AC = (var_C8 + var_18C)
  loc_1280E27:       var_94 = CStr(var_1AC)
  loc_1280E49:     End If
  loc_1280E4D:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_1280E6B:     Set var_DC = Me.GridSel
  loc_1280E71:     Call 0.Method_Proc_311_41_12810640 (arg_10, var_E0, vbNullString, 0)
  loc_1280E79:     LateIdCallSt
  loc_1280E8B:   Else
  loc_1280E92:     var_B8 = 0
  loc_1280E9B:     VarIndexSt
  loc_1280E9F:   End If
  loc_1280E9F:   ' Referenced from: 1280B07
  loc_1280EA2: Next var_98 'Integer
  loc_1280EAF: CRefVarAry
  loc_1280EB7: For var_1C0 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1C0 'Integer
  loc_1280EEF:   If CBool(arg_C(var_8E) <> 0) Then
  loc_1280EF6:     var_A8 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_1280F14:     Set var_DC = Me.GridSel
  loc_1280F1A:     Call 0.Method_Proc_311_41_12810640 (arg_10, var_E0, "ü", 0)
  loc_1280F22:     LateIdCallSt
  loc_1280F31:   End If
  loc_1280F34: Next var_1C0 'Integer
  loc_1280F41: If (var_8C = vbNullString) Then
  loc_1280F44:   var_A8 = 0
  loc_1280F4D:   var_F0 = 1
  loc_1280F60:   Set var_DC = Me.GridSel
  loc_1280F66:   Call 0.Method_Proc_311_41_12810640 (arg_10, var_E0)
  loc_1280F6E:   var_C8 = var_E0.TextMatrix)
  loc_1280F96:   MsgBox(CVar("Select " & CStr(var_C8)), &H40, var_16C, var_17C, var_18C)
  loc_1280FBC:   Set var_DC = Me.GridSel
  loc_1280FC2:   Call 0.Method_Proc_311_41_12810640 (arg_10, var_E0, var_C8)
  loc_1280FE1:   Proc_311_41_1281064 = 0
  loc_1280FE7: End If
  loc_1280FEA: var_88 = var_8C
  loc_1280FF0: var_1C2 = arg_10
  loc_1280FF9: If (var_1C2 = 1) Then
  loc_1281002:   global_172 = var_94
  loc_1281009: Else
  loc_128100F:   If (var_1C2 = 2) Then
  loc_1281018:     global_176 = var_94
  loc_128101F:   Else
  loc_1281025:     If (var_1C2 = 3) Then
  loc_128102E:       global_180 = var_94
  loc_1281035:     Else
  loc_128103B:       If (var_1C2 = 4) Then
  loc_1281044:         global_184 = var_94
  loc_1281048:       End If
  loc_1281048:     End If
  loc_1281048:   End If
  loc_1281048: End If
  loc_1281048: Proc_311_41_1281064 = var_1C2
  loc_128104E: ' Referenced from: 1280ACA
  loc_1281056: Proc_6_60_E63754(0, GridSel.DispID_8001)
  loc_128105B: Proc_311_41_1281064 = var_F0
End Sub

Public Sub Proc_311_42_F04A3C
  'Data Table: 4C9354
  Dim var_CC As Variant
  loc_F04981: If (CLng(Me.FGrid.Row) = CLng(global_100)) Then
  loc_F04992:   Proc_303_0_FBACC8("	")
  loc_F0499A:   Exit Sub
  loc_F0499B: End If
  loc_F049DA: For var_BC = CInt(CLng(Me.FGrid.Row)) To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_F049E7:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F04A0E:   If (CLng(Me.FGrid.RowHeight)) <> 0) Then
  loc_F04A18:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F04A27:     Me.FGrid.Row = var_CC
  loc_F04A2F:     Exit For
  loc_F04A32:   End If
  loc_F04A35: Next var_BC 'Integer
  loc_F04A3A: ' Referenced from: F04A2F
  loc_F04A3A: Exit Sub
End Sub

Public Sub Proc_311_43_122355C(arg_C, arg_10) '122355C
  'Data Table: 4C9354
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E8 As CheckBox
  Dim var_2303 As Integer
  loc_1223053: var_86 = arg_C
  loc_122305C: If (var_86 = 1) Then
  loc_122307B:   Me.Recordset15.CursorLocation = 3
  loc_12230A4:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_12230B2:   CVarUnk
  loc_12230B7:   VerifyVarObj
  loc_12230C3:   Set var_8C = Me.GridSel
  loc_12230C9:   Call 0.Method_Proc_311_43_122355C0 (var_86, var_B0, New)
  loc_12230D1:   LateIdStAd
  loc_12230F3:   ReDim Preserve global_156(0 To 0)
  loc_122310A:   global_156(0) = 0
  loc_122310B: End If
  loc_1223111: If (var_86 = 2) Then
  loc_1223130:   Me.Recordset15.CursorLocation = 3
  loc_1223159:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_1223167:   CVarUnk
  loc_122316C:   VerifyVarObj
  loc_1223178:   Set var_8C = Me.GridSel
  loc_122317E:   Call 0.Method_Proc_311_43_122355C0 (var_86, var_B0, New, 1, -1)
  loc_1223186:   LateIdStAd
  loc_12231A8:   ReDim Preserve global_160(0 To 0)
  loc_12231BF:   global_160(0) = 0
  loc_12231C0: End If
  loc_12231C6: If (var_86 = 3) Then
  loc_12231E5:   Me.Recordset15.CursorLocation = 3
  loc_122320E:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_122321C:   CVarUnk
  loc_1223221:   VerifyVarObj
  loc_122322D:   Set var_8C = Me.GridSel
  loc_1223233:   Call 0.Method_Proc_311_43_122355C0 (var_86, var_B0, New, 1, -1)
  loc_122323B:   LateIdStAd
  loc_122325D:   ReDim Preserve global_164(0 To 0)
  loc_1223274:   global_164(0) = 0
  loc_1223275: End If
  loc_122327B: If (var_86 = 4) Then
  loc_122329A:   Me.Recordset15.CursorLocation = 3
  loc_12232C3:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_12232D1:   CVarUnk
  loc_12232D6:   VerifyVarObj
  loc_12232E2:   Set var_8C = Me.GridSel
  loc_12232E8:   Call 0.Method_Proc_311_43_122355C0 (var_86, var_B0, New, 1, -1, var_B0)
  loc_12232F0:   LateIdStAd
  loc_1223312:   ReDim Preserve global_168(0 To 0)
  loc_1223329:   global_168(0) = 0
  loc_122332A: End If
  loc_122333D: Set var_8C = Me.GridSel
  loc_1223343: Call 0.Method_Proc_311_43_122355C0 (var_86, var_B0, CVar(CDbl(1700)), var_B0, var_B0)
  loc_122334B: var_B0.Height = var_B0
  loc_1223365: Set var_8C = Me.GridSel
  loc_122336B: Call 0.Method_Proc_311_43_122355C0 (var_86, var_B0, True)
  loc_1223373: var_B0.Visible = 1
  loc_122338E: Set var_8C = Me.GridSel
  loc_1223394: Call 0.Method_Proc_311_43_122355C0 (var_86, var_B0, False)
  loc_122339C: var_B0.Enabled = -1
  loc_12233B4: Set var_8C = Me.Check1
  loc_12233BA: Call 0.Method_Proc_311_43_122355C0 (var_86, var_B0)
  loc_12233C2: var_B0.Visible = True
  loc_12233E1: Set var_8C = Me.GridSel
  loc_12233E7: Call 0.Method_Proc_311_43_122355C0 (var_86, var_B0)
  loc_12233EF: var_B0.Width = CVar(CDbl(5200))
  loc_12233FB: var_9C = 0
  loc_1223417: Set var_8C = Me.GridSel
  loc_122341D: Call 0.Method_Proc_311_43_122355C0 (var_86, var_B0, &H258)
  loc_1223425: LateIdCallSt
  loc_1223450: Set var_8C = Me.GridSel
  loc_1223456: Call 0.Method_Proc_311_43_122355C0 (var_86, var_B0, 0, 2)
  loc_122345E: LateIdCallSt
  loc_1223489: Set var_8C = Me.GridSel
  loc_122348F: Call 0.Method_Proc_311_43_122355C0 (var_86, var_B0, &HFA0, 1)
  loc_1223497: LateIdCallSt
  loc_12234B5: Set var_8C = Me.Check1
  loc_12234BB: Call 0.Method_Proc_311_43_122355C0 (var_86, var_B0, CDbl(580), var_B0)
  loc_12234C3: var_B0.Width = var_B0
  loc_12234CF: var_9C = 0
  loc_12234E2: Set var_8C = Me.GridSel
  loc_12234E8: Call 0.Method_Proc_311_43_122355C0 (var_86, var_B0, var_9C)
  loc_122350E: Set var_E4 = Me.Check1
  loc_1223514: Call 0.Method_Proc_311_43_122355C0 (var_86, var_E8, CDbl((CLng(var_B0.RowHeight)) + &H14)))
  loc_122351C: var_E8.Height = var_B0
  loc_122353F: Set var_8C = Me.Check1
  loc_1223545: Call 0.Method_Proc_311_43_122355C0 (var_86, var_B0, CInt(1))
  loc_122354D: var_B0.Value = var_9C
  loc_1223559: Exit Sub
  loc_122355A: var_2303 = var_86
End Sub

Public Sub Proc_311_44_14EA208
  'Data Table: 4C9354
  Dim unk_4C93A1 As Connection15
  Dim var_A8 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_134 As Variant
  Dim var_BC As MSHFlexGrid
  Dim var_148 As String
  Dim var_B8 As Variant
  loc_14E9416: var_98 = global_52
  loc_14E9421: If (var_98 = "AttendanceRep") Then
  loc_14E943A:   unk_4C93A1.Execute "Select '' As O,Name,Code From EmpCategory Order By Name", var_B8, -1
  loc_14E944B:   Set global_84 = var_BC
  loc_14E945D:   Set var_C4 = Me.FGrid
  loc_14E9463:   var_A8 = CVar(CLng(1)) 'Long
  loc_14E9468:   var_E4 = 0
  loc_14E9471:   var_104 = "Month/Year"
  loc_14E947A:   LateIdCallSt
  loc_14E9485:   var_A8 = CVar(CLng(1)) 'Long
  loc_14E948A:   var_E4 = &H10E
  loc_14E9496:   LateIdCallSt
  loc_14E94A1:   var_A8 = CVar(CLng(2)) 'Long
  loc_14E94A6:   var_E4 = 0
  loc_14E94AF:   var_104 = "For Category"
  loc_14E94B8:   LateIdCallSt
  loc_14E94C3:   var_A8 = CVar(CLng(2)) 'Long
  loc_14E94C8:   var_E4 = &H10E
  loc_14E94D4:   LateIdCallSt
  loc_14E94DF:   var_E4 = CVar(CLng(1)) 'Long
  loc_14E94E4:   var_104 = 1
  loc_14E94FC:   var_B8 = "MM/YYYY"
  loc_14E9516:   var_134 = CVar(CStr(Format(MemVar_1F950EC, var_B8))) 'String
  loc_14E951D:   LateIdCallSt
  loc_14E9531:   var_A8 = CVar(CLng(1)) 'Long
  loc_14E9536:   var_E4 = &H10E
  loc_14E9542:   LateIdCallSt
  loc_14E954D:   var_A8 = CVar(CLng(2)) 'Long
  loc_14E9552:   var_E4 = 1
  loc_14E955B:   var_104 = "All"
  loc_14E9564:   LateIdCallSt
  loc_14E956F:   var_A8 = CVar(CLng(2)) 'Long
  loc_14E9574:   var_E4 = &H10E
  loc_14E9580:   LateIdCallSt
  loc_14E958A:   Set var_C4 = Nothing 
  loc_14E95A8:   Set var_BC = Me.FGrid
  loc_14E95AE:   var_BC.Row = CVar(CLng(CInt(1)))
  loc_14E95BD:   global_100 = CInt(2)
  loc_14E95C8:   global_104 = 1
  loc_14E95D3:   var_148 = "Select Distinct '' as O,G.Name As Department,G.Code From GodownMast G iNNER join Employee E on E.Department=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_14E95E8:   Call Proc_311_43_122355C(1, var_148 & "')  Order by G.Name")
  loc_14E95F0: Else
  loc_14E95F8:   If (var_98 = "PFStatement") Then
  loc_14E9611:     unk_4C93A1.Execute "Select '' As O,Name,Code From EmpCategory Order By Name", var_B8, -1
  loc_14E9622:     Set global_84 = var_BC
  loc_14E9634:     Set var_150 = Me.FGrid
  loc_14E963A:     var_A8 = CVar(CLng(1)) 'Long
  loc_14E963F:     var_E4 = 0
  loc_14E9648:     var_104 = "Month/Year"
  loc_14E9651:     LateIdCallSt
  loc_14E965C:     var_A8 = CVar(CLng(1)) 'Long
  loc_14E9661:     var_E4 = &H10E
  loc_14E966D:     LateIdCallSt
  loc_14E9678:     var_A8 = CVar(CLng(2)) 'Long
  loc_14E967D:     var_E4 = 0
  loc_14E9686:     var_104 = "For Category"
  loc_14E968F:     LateIdCallSt
  loc_14E969A:     var_A8 = CVar(CLng(2)) 'Long
  loc_14E969F:     var_E4 = &H10E
  loc_14E96AB:     LateIdCallSt
  loc_14E96B6:     var_E4 = CVar(CLng(1)) 'Long
  loc_14E96BB:     var_104 = 1
  loc_14E96D3:     var_B8 = "MM/YYYY"
  loc_14E96ED:     var_134 = CVar(CStr(Format(MemVar_1F950EC, var_B8))) 'String
  loc_14E96F4:     LateIdCallSt
  loc_14E9708:     var_A8 = CVar(CLng(1)) 'Long
  loc_14E970D:     var_E4 = &H10E
  loc_14E9719:     LateIdCallSt
  loc_14E9724:     var_A8 = CVar(CLng(2)) 'Long
  loc_14E9729:     var_E4 = 1
  loc_14E9732:     var_104 = "All"
  loc_14E973B:     LateIdCallSt
  loc_14E9746:     var_A8 = CVar(CLng(2)) 'Long
  loc_14E974B:     var_E4 = &H10E
  loc_14E9757:     LateIdCallSt
  loc_14E9761:     Set var_150 = Nothing 
  loc_14E977F:     Set var_BC = Me.FGrid
  loc_14E9785:     var_BC.Row = CVar(CLng(CInt(1)))
  loc_14E9794:     global_100 = CInt(2)
  loc_14E979F:     global_104 = 0
  loc_14E97A6:   Else
  loc_14E97AE:     If (var_98 = "PaySlip") Then
  loc_14E97C7:       unk_4C93A1.Execute "Select '' As O,Name,Code From EmpCategory Order By Name", var_B8, -1
  loc_14E97D8:       Set global_84 = var_BC
  loc_14E97EA:       Set var_154 = Me.FGrid
  loc_14E97F0:       var_A8 = CVar(CLng(1)) 'Long
  loc_14E97F5:       var_E4 = 0
  loc_14E97FE:       var_104 = "For Month"
  loc_14E9807:       LateIdCallSt
  loc_14E9812:       var_A8 = CVar(CLng(1)) 'Long
  loc_14E9817:       var_E4 = &H10E
  loc_14E9823:       LateIdCallSt
  loc_14E982E:       var_A8 = CVar(CLng(2)) 'Long
  loc_14E9833:       var_E4 = 0
  loc_14E983C:       var_104 = "For Category"
  loc_14E9845:       LateIdCallSt
  loc_14E9850:       var_A8 = CVar(CLng(2)) 'Long
  loc_14E9855:       var_E4 = &H10E
  loc_14E9861:       LateIdCallSt
  loc_14E986C:       var_E4 = CVar(CLng(1)) 'Long
  loc_14E9871:       var_104 = 1
  loc_14E98A3:       var_134 = CVar(CStr(Format(MemVar_1F950EC, "MMM/YYYY"))) 'String
  loc_14E98AA:       LateIdCallSt
  loc_14E98BE:       var_A8 = CVar(CLng(2)) 'Long
  loc_14E98C3:       var_E4 = 1
  loc_14E98CC:       var_104 = "All"
  loc_14E98D5:       LateIdCallSt
  loc_14E98E0:       var_A8 = CVar(CLng(2)) 'Long
  loc_14E98E5:       var_E4 = &H10E
  loc_14E98F1:       LateIdCallSt
  loc_14E98FB:       Set var_154 = Nothing 
  loc_14E991F:       Me.FGrid.Row = CVar(CLng(CInt(1)))
  loc_14E992E:       global_100 = CInt(2)
  loc_14E9939:       global_104 = 1
  loc_14E994B:       Call Proc_311_43_122355C(1, "Select '' as O,Name As EmployeeName,Code From Employee Order by Name")
  loc_14E9953:     Else
  loc_14E995B:       If (var_98 = "PayrollReg") Then
  loc_14E9962:         Set var_158 = Me.FGrid
  loc_14E9968:         var_A8 = CVar(CLng(1)) 'Long
  loc_14E996D:         var_E4 = 0
  loc_14E9976:         var_104 = "For Month"
  loc_14E997F:         LateIdCallSt
  loc_14E998A:         var_A8 = CVar(CLng(1)) 'Long
  loc_14E998F:         var_E4 = &H10E
  loc_14E999B:         LateIdCallSt
  loc_14E99A6:         var_A8 = CVar(CLng(2)) 'Long
  loc_14E99AB:         var_E4 = 0
  loc_14E99B4:         var_104 = "Other Than bank"
  loc_14E99BD:         LateIdCallSt
  loc_14E99C8:         var_A8 = CVar(CLng(2)) 'Long
  loc_14E99CD:         var_E4 = &H10E
  loc_14E99D9:         LateIdCallSt
  loc_14E99E4:         var_E4 = CVar(CLng(1)) 'Long
  loc_14E99E9:         var_104 = 1
  loc_14E9A1B:         var_134 = CVar(CStr(Format(MemVar_1F950EC, "MMM/YYYY"))) 'String
  loc_14E9A22:         LateIdCallSt
  loc_14E9A36:         var_A8 = CVar(CLng(2)) 'Long
  loc_14E9A3B:         var_E4 = 1
  loc_14E9A44:         var_104 = "Yes"
  loc_14E9A4D:         LateIdCallSt
  loc_14E9A58:         var_A8 = CVar(CLng(2)) 'Long
  loc_14E9A5D:         var_E4 = &H10E
  loc_14E9A69:         LateIdCallSt
  loc_14E9A73:         Set var_158 = Nothing 
  loc_14E9A97:         Me.FGrid.Row = CVar(CLng(CInt(1)))
  loc_14E9AA6:         global_100 = CInt(2)
  loc_14E9AB1:         global_104 = 2
  loc_14E9AC2:         var_148 = "Select Distinct '' as O,G.Name As Department,G.Code From GodownMast G iNNER join Employee E on E.Department=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_14E9AD7:         Call Proc_311_43_122355C(1, "Select '' as O,Name As EmployeeName,Code From Employee Order by Name")
  loc_14E9AE4:         Call Proc_311_43_122355C(2, var_148 & "')  Order by G.Name")
  loc_14E9AEC:       Else
  loc_14E9AF4:         If (var_98 = "LoanAdvSumm") Then
  loc_14E9AFB:           Set var_15C = Me.FGrid
  loc_14E9B01:           var_A8 = CVar(CLng(1)) 'Long
  loc_14E9B06:           var_E4 = 0
  loc_14E9B0F:           var_104 = "Month/Year"
  loc_14E9B18:           LateIdCallSt
  loc_14E9B23:           var_A8 = CVar(CLng(1)) 'Long
  loc_14E9B28:           var_E4 = &H10E
  loc_14E9B34:           LateIdCallSt
  loc_14E9B3F:           var_E4 = CVar(CLng(1)) 'Long
  loc_14E9B44:           var_104 = 1
  loc_14E9B76:           var_134 = CVar(CStr(Format(MemVar_1F950EC, "MM/YYYY"))) 'String
  loc_14E9B7D:           LateIdCallSt
  loc_14E9B91:           var_A8 = CVar(CLng(1)) 'Long
  loc_14E9B96:           var_E4 = &H10E
  loc_14E9BA2:           LateIdCallSt
  loc_14E9BAC:           Set var_15C = Nothing 
  loc_14E9BD0:           Me.FGrid.Row = CVar(CLng(CInt(1)))
  loc_14E9BDF:           global_100 = CInt(1)
  loc_14E9BEA:           global_104 = 0
  loc_14E9BF1:         Else
  loc_14E9BF9:           If (var_98 = "LoanReg") Then
  loc_14E9C00:             Set var_160 = Me.FGrid
  loc_14E9C06:             var_A8 = CVar(CLng(0)) 'Long
  loc_14E9C0B:             var_E4 = 0
  loc_14E9C14:             var_104 = "From Date"
  loc_14E9C1D:             LateIdCallSt
  loc_14E9C28:             var_A8 = CVar(CLng(0)) 'Long
  loc_14E9C2D:             var_E4 = &H10E
  loc_14E9C39:             LateIdCallSt
  loc_14E9C44:             var_A8 = CVar(CLng(1)) 'Long
  loc_14E9C49:             var_E4 = 0
  loc_14E9C52:             var_104 = "To Date"
  loc_14E9C5B:             LateIdCallSt
  loc_14E9C66:             var_A8 = CVar(CLng(1)) 'Long
  loc_14E9C6B:             var_E4 = &H10E
  loc_14E9C77:             LateIdCallSt
  loc_14E9C82:             var_A8 = CVar(CLng(2)) 'Long
  loc_14E9C87:             var_E4 = 0
  loc_14E9C90:             var_104 = "Type"
  loc_14E9C99:             LateIdCallSt
  loc_14E9CA4:             var_A8 = CVar(CLng(2)) 'Long
  loc_14E9CA9:             var_E4 = &H10E
  loc_14E9CB5:             LateIdCallSt
  loc_14E9CC0:             var_A8 = CVar(CLng(0)) 'Long
  loc_14E9CC5:             var_E4 = 1
  loc_14E9CD3:             var_B8 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_14E9CDA:             LateIdCallSt
  loc_14E9CE8:             var_A8 = CVar(CLng(1)) 'Long
  loc_14E9CED:             var_E4 = 1
  loc_14E9CFB:             var_B8 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_14E9D02:             LateIdCallSt
  loc_14E9D10:             var_A8 = CVar(CLng(2)) 'Long
  loc_14E9D15:             var_E4 = 1
  loc_14E9D1E:             var_104 = "Loan"
  loc_14E9D27:             LateIdCallSt
  loc_14E9D31:             Set var_160 = Nothing 
  loc_14E9D55:             Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_14E9D64:             global_100 = CInt(2)
  loc_14E9D6F:             global_104 = 1
  loc_14E9D81:             Call Proc_311_43_122355C(1, "Select '' as O,Name As Employee,Code From Employee Order by Name")
  loc_14E9D89:           Else
  loc_14E9D91:             If (var_98 = "LoanLedg") Then
  loc_14E9D98:               Set var_164 = Me.FGrid
  loc_14E9D9E:               var_A8 = CVar(CLng(0)) 'Long
  loc_14E9DA3:               var_E4 = 0
  loc_14E9DAC:               var_104 = "From Date"
  loc_14E9DB5:               LateIdCallSt
  loc_14E9DC0:               var_A8 = CVar(CLng(0)) 'Long
  loc_14E9DC5:               var_E4 = &H10E
  loc_14E9DD1:               LateIdCallSt
  loc_14E9DDC:               var_A8 = CVar(CLng(1)) 'Long
  loc_14E9DE1:               var_E4 = 0
  loc_14E9DEA:               var_104 = "To Date"
  loc_14E9DF3:               LateIdCallSt
  loc_14E9DFE:               var_A8 = CVar(CLng(1)) 'Long
  loc_14E9E03:               var_E4 = &H10E
  loc_14E9E0F:               LateIdCallSt
  loc_14E9E1A:               var_A8 = CVar(CLng(2)) 'Long
  loc_14E9E1F:               var_E4 = 0
  loc_14E9E28:               var_104 = "Type"
  loc_14E9E31:               LateIdCallSt
  loc_14E9E3C:               var_A8 = CVar(CLng(2)) 'Long
  loc_14E9E41:               var_E4 = &H10E
  loc_14E9E4D:               LateIdCallSt
  loc_14E9E58:               var_A8 = CVar(CLng(0)) 'Long
  loc_14E9E5D:               var_E4 = 1
  loc_14E9E6B:               var_B8 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_14E9E72:               LateIdCallSt
  loc_14E9E80:               var_A8 = CVar(CLng(1)) 'Long
  loc_14E9E85:               var_E4 = 1
  loc_14E9E93:               var_B8 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_14E9E9A:               LateIdCallSt
  loc_14E9EA8:               var_A8 = CVar(CLng(2)) 'Long
  loc_14E9EAD:               var_E4 = 1
  loc_14E9EB6:               var_104 = "Loan"
  loc_14E9EBF:               LateIdCallSt
  loc_14E9EC9:               Set var_164 = Nothing 
  loc_14E9EED:               Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_14E9EFC:               global_100 = CInt(2)
  loc_14E9F07:               global_104 = 1
  loc_14E9F19:               Call Proc_311_43_122355C(1, "Select '' as O,Name As Employee,Code From Employee Order by Name")
  loc_14E9F21:             Else
  loc_14E9F29:               If (var_98 = "FormC") Then
  loc_14E9F30:                 Set var_168 = Me.FGrid
  loc_14E9F36:                 var_A8 = CVar(CLng(0)) 'Long
  loc_14E9F3B:                 var_E4 = 0
  loc_14E9F44:                 var_104 = "From Date"
  loc_14E9F4D:                 LateIdCallSt
  loc_14E9F58:                 var_A8 = CVar(CLng(0)) 'Long
  loc_14E9F5D:                 var_E4 = &H10E
  loc_14E9F69:                 LateIdCallSt
  loc_14E9F74:                 var_A8 = CVar(CLng(1)) 'Long
  loc_14E9F79:                 var_E4 = 0
  loc_14E9F82:                 var_104 = "To Date"
  loc_14E9F8B:                 LateIdCallSt
  loc_14E9F96:                 var_A8 = CVar(CLng(1)) 'Long
  loc_14E9F9B:                 var_E4 = &H10E
  loc_14E9FA7:                 LateIdCallSt
  loc_14E9FB2:                 var_A8 = CVar(CLng(2)) 'Long
  loc_14E9FB7:                 var_E4 = 0
  loc_14E9FC0:                 var_104 = "Type"
  loc_14E9FC9:                 LateIdCallSt
  loc_14E9FD4:                 var_A8 = CVar(CLng(2)) 'Long
  loc_14E9FD9:                 var_E4 = &H10E
  loc_14E9FE5:                 LateIdCallSt
  loc_14E9FF0:                 var_E4 = CVar(CLng(0)) 'Long
  loc_14E9FF5:                 var_104 = 1
  loc_14EA027:                 var_134 = CVar(CStr(Format(MemVar_1F950F4, "MMM/YYYY"))) 'String
  loc_14EA02E:                 LateIdCallSt
  loc_14EA042:                 var_E4 = CVar(CLng(1)) 'Long
  loc_14EA047:                 var_104 = 1
  loc_14EA079:                 var_134 = CVar(CStr(Format(MemVar_1F950EC, "MMM/YYYY"))) 'String
  loc_14EA080:                 LateIdCallSt
  loc_14EA094:                 var_A8 = CVar(CLng(2)) 'Long
  loc_14EA099:                 var_E4 = 1
  loc_14EA0A2:                 var_104 = "10.00"
  loc_14EA0AB:                 LateIdCallSt
  loc_14EA0B5:                 Set var_168 = Nothing 
  loc_14EA0D9:                 Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_14EA0E8:                 global_100 = CInt(2)
  loc_14EA0F3:                 global_104 = 1
  loc_14EA105:                 Call Proc_311_43_122355C(1, "Select '' as O,Name As Employee,Code From Employee Order by Name")
  loc_14EA10D:               Else
  loc_14EA115:                 If (var_98 = "GratuityReport") Then
  loc_14EA11C:                   Set var_16C = Me.FGrid
  loc_14EA122:                   var_A8 = CVar(CLng(0)) 'Long
  loc_14EA127:                   var_E4 = 0
  loc_14EA130:                   var_104 = "Up To Date"
  loc_14EA139:                   LateIdCallSt
  loc_14EA144:                   var_A8 = CVar(CLng(0)) 'Long
  loc_14EA149:                   var_E4 = &H10E
  loc_14EA155:                   LateIdCallSt
  loc_14EA160:                   var_E4 = CVar(CLng(0)) 'Long
  loc_14EA165:                   var_104 = 1
  loc_14EA197:                   var_134 = CVar(CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy"))) 'String
  loc_14EA19E:                   LateIdCallSt
  loc_14EA1B1:                   Set var_16C = Nothing 
  loc_14EA1D5:                   Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_14EA1E4:                   global_100 = CInt(0)
  loc_14EA1EF:                   global_104 = 1
  loc_14EA201:                   Call Proc_311_43_122355C(1, "Select '' as O,Name As Employee,Code From Employee Order by Name")
  loc_14EA206:                 End If
  loc_14EA206:               End If
  loc_14EA206:             End If
  loc_14EA206:           End If
  loc_14EA206:         End If
  loc_14EA206:       End If
  loc_14EA206:     End If
  loc_14EA206:   End If
  loc_14EA206: End If
  loc_14EA206: Exit Sub
End Sub

Public Sub Proc_311_45_1063470(arg_C, arg_10) '1063470
  'Data Table: 4C9354
  Dim var_98 As Variant
  Dim var_B8 As Long
  Dim var_CC As MSHFlexGrid
  Dim var_86 As Integer
  loc_10631F8: var_98 = CVar(CLng(arg_C)) 'Long
  loc_10631FD: var_B8 = 1
  loc_106322C: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_106324F:   MsgBox(CVar(arg_10 & " Should not be Blank."), &H40, "Validation Check", var_100, var_110)
  loc_1063263:   Set var_CC = Me.FGrid
  loc_1063287:   Me.FGrid.Row = CVar(CLng(arg_C))
  loc_10632A2:   Me.FGrid.Col = 1
  loc_10632AC:   var_86 = 0
  loc_10632B2: Else
  loc_10632BF:   If ((arg_C = 0) Or (arg_C = 1)) Then
  loc_10632C6:     var_98 = CVar(CLng(arg_C)) 'Long
  loc_10632CB:     var_B8 = 1
  loc_10632FB:     If (CDate(CStr(Me.FGrid.TextMatrix))) < MemVar_1F950F4) Then
  loc_1063329:       MsgBox(CVar(arg_10 & " Should not be less than ") & CDate(MemVar_1F950F4), &H40, "Validation Check", var_110, var_120)
  loc_106333F:       Set var_CC = Me.FGrid
  loc_1063363:       Me.FGrid.Row = CVar(CLng(arg_C))
  loc_106337E:       Me.FGrid.Col = 1
  loc_1063388:       var_86 = 0
  loc_106338E:     Else
  loc_1063392:       var_98 = CVar(CLng(arg_C)) 'Long
  loc_1063397:       var_B8 = 1
  loc_10633C7:       If (CDate(CStr(Me.FGrid.TextMatrix))) > MemVar_1F950FC) Then
  loc_10633F5:         MsgBox(CVar(arg_10 & " Should not be greater than ") & CDate(MemVar_1F950FC), &H40, "Validation Check", var_110, var_120)
  loc_106340B:         Set var_CC = Me.FGrid
  loc_106342F:         Me.FGrid.Row = CVar(CLng(arg_C))
  loc_106344A:         Me.FGrid.Col = 1
  loc_1063454:         var_86 = 0
  loc_106345A:       Else
  loc_106345C:         var_86 = &HFF
  loc_106345F:       End If
  loc_106345F:     End If
  loc_1063462:   Else
  loc_1063464:     var_86 = &HFF
  loc_1063467:   End If
  loc_1063467: End If
  loc_1063467: Proc_311_45_1063470 = var_86
  loc_106346D: StAryRecCopy
End Sub

Public Sub Proc_311_46_1242F50
  'Data Table: 4C9354
  Dim var_9C As Variant
  Dim var_BC As Long
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_140 As Variant
  Dim var_160 As Long
  Dim var_230 As Variant
  Dim var_250 As Long
  Dim var_274 As Variant
  Dim var_1D0 As Variant
  Dim var_E8 As String
  Dim unk_4C93A1 As Connection15
  Dim Me As Recordset15
  loc_1242A68: On Error Goto loc_1242F40
  loc_1242A6E: var_9C = CVar(CLng(1)) 'Long
  loc_1242A73: var_BC = 0
  loc_1242AA4: Call Proc_311_45_1063470(CInt(1), CStr(Me.FGrid.TextMatrix)))
  loc_1242AB8: If (var_EA = 0) Then
  loc_1242AC0:   global_80 = 0
  loc_1242AC3:   Exit Sub
  loc_1242AC4: End If
  loc_1242AD0: Set var_D0 = Me.Check1
  loc_1242AD6: Call 0.Method_Proc_311_46_1242F500 (1, var_F0, var_E2, global_80)
  loc_1242ADE: var_EA = var_F0.Value
  loc_1242AF4: If (CLng(var_E2) = 0) Then
  loc_1242B12:   Call Proc_311_41_1281064(global_156, 1, CByte(1))
  loc_1242B1D:   global_140 = var_E8
  loc_1242B2D:   If (global_80 = 0) Then
  loc_1242B30:     Exit Sub
  loc_1242B31:   End If
  loc_1242B31: End If
  loc_1242B3D: Set var_D0 = Me.Check1
  loc_1242B43: Call 0.Method_Proc_311_46_1242F500 (2, var_F0, var_E2, var_E8)
  loc_1242B4B: var_E0 = var_F0.Value
  loc_1242B61: If (CLng(var_E2) = 0) Then
  loc_1242B7F:   Call Proc_311_41_1281064(global_160, 2, CByte(1))
  loc_1242B8A:   global_144 = var_E8
  loc_1242B9A:   If (global_80 = 0) Then
  loc_1242B9D:     Exit Sub
  loc_1242B9E:   End If
  loc_1242B9E: End If
  loc_1242BA1: var_9C = CVar(CLng(1)) 'Long
  loc_1242BA6: var_BC = 1
  loc_1242BC8: var_140 = CVar(CLng(1)) 'Long
  loc_1242BCD: var_160 = 1
  loc_1242BDA: Set var_F0 = Me.FGrid
  loc_1242BEF: var_230 = CVar(CLng(1)) 'Long
  loc_1242BF4: var_250 = 1
  loc_1242C07: var_274 = Me.FGrid.TextMatrix)
  loc_1242C27: var_120 = "MMM"
  loc_1242C37: var_130 = Format(CVar(CStr(Me.FGrid.TextMatrix))), var_120)
  loc_1242C66: var_1D0 = (1 + Format(CVar(CStr(var_F0.TextMatrix))), "YYYY"))
  loc_1242CDF: Proc_6_7_F26918(var_324, DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & Format(CVar(CStr(var_274)), "mmm/yyyy"))))), 1, "01/", 1 & Ucase(var_1D0) & "' And E.Joining_Date<=", var_130, 1)
  loc_1242D35: Set var_D0 = Me.Check1
  loc_1242D3B: Call 0.Method_Proc_311_46_1242F500 (1, var_F0, var_E2, " WHERE S.Mth_year='", var_274)
  loc_1242D43: var_250 = var_F0.Value
  loc_1242D59: If (CLng(var_E2) = 0) Then
  loc_1242D74:   var_8C = CStr(1 & var_324) & " And E.Code in (" & global_140 & ") "
  loc_1242D7E: End If
  loc_1242D8A: Set var_D0 = Me.Check1
  loc_1242D90: Call 0.Method_Proc_311_46_1242F500 (2, var_F0, var_E2)
  loc_1242D98: var_230 = var_F0.Value
  loc_1242DAE: If (CLng(var_E2) = 0) Then
  loc_1242DC9:   var_8C = var_8C & " And E.DepartMent in (" & global_144 & ") "
  loc_1242DD3: End If
  loc_1242DDA: var_88 = " Select E.Name as EmployeeName, E.F_Name,E.Joining_Date,Case When IsNull(S.Emp_Basic,0)<>0 Then IsNull(S.Emp_Basic,0) Else E.Basic END Basic,E.BankAcNo,S.Work_Day,S.CL,S.Leave,S.Sunday,S.Holiday,S.Absent,S.Income_Tax,S.Medical,S.Loan,S.Loan_Bal,S.Adv_Bal,S.Basic as CalBasic, EMPCategory.Name As CatDesc,S.DA as CalDA,S.HRA,S.LTA,S.Other_Allow,S.Other_Deduc,S.Conveyance as CalConv,S.PF,S.ESI,S.Advance,S.Net_Salary as NetSalary,S.Medical,Desig.Name As Designation,S.OverTime,S.OverTimeAmt,G.Name Department From (((Employee E Right Join Salary S on E.Code = S.Emp_Code) Left Join EMPCategory ON E.Category = EMPCategory.Code) Left Join Desig ON E.Designation = Desig.Code Left Join GoDownMast G ON E.Department = G.Code) " & var_8C
  loc_1242DE0: var_9C = CVar(CLng(2)) 'Long
  loc_1242DE5: var_BC = 1
  loc_1242DF2: Set var_D0 = Me.FGrid
  loc_1242DF8: var_E0 = var_D0.TextMatrix)
  loc_1242E03: var_E8 = CStr(var_E0)
  loc_1242E14: If (var_E8 = "Yes") Then
  loc_1242E1E:   var_88 = var_88 & " And (IsNull(E.BankAcNo,'')='')"
  loc_1242E24: Else
  loc_1242E2B:   var_88 = var_88 & " And (IsNull(E.BankAcNo,'')<>'') "
  loc_1242E2E: End If
  loc_1242E44: unk_4C93A1.Execute var_88, var_E0, -1
  loc_1242E55: Set global_88 = var_D0
  loc_1242E7A: If (Me.RecordCount <= 0) Then
  loc_1242E83:   Call 0.Method_arg_50 (var_E8, var_D0, var_BC)
  loc_1242EA4:   MsgBox("** No Records Found to Print **", &H40, CVar(var_E8), var_120, var_130)
  loc_1242EB9:   global_80 = 0
  loc_1242EBC:   Exit Sub
  loc_1242EBD: End If
  loc_1242EC0: var_9C = CVar(CLng(2)) 'Long
  loc_1242EC5: var_BC = 1
  loc_1242EE3: var_E8 = CStr(Me.FGrid.TextMatrix))
  loc_1242EF4: If (var_E8 = "Yes") Then
  loc_1242EFD:   global_76 = "prPayRollRegOther"
  loc_1242F04: Else
  loc_1242F0A:   global_76 = "prPayRollReg"
  loc_1242F0E: End If
  loc_1242F14: Call 0.Method_arg_50 (var_E8, var_BC, var_9C, global_80)
  loc_1242F31: global_72 = CStr(Ucase(CVar(var_E8)))
  loc_1242F3F: Exit Sub
  loc_1242F40: ' Referenced from: 1242A68
  loc_1242F48: Proc_6_60_E63754(0, var_9C)
  loc_1242F4D: Exit Sub
End Sub

Public Sub Proc_311_47_11670DC
  'Data Table: 4C9354
  Dim var_A4 As Variant
  Dim var_C4 As Long
  Dim var_D8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_144 As Variant
  Dim var_164 As Long
  Dim var_238 As Variant
  Dim var_258 As Long
  Dim var_27C As Variant
  Dim var_1F8 As String
  Dim var_1D8 As Variant
  Dim var_F0 As String
  Dim unk_4C93A1 As Connection15
  Dim Me As Recordset15
  loc_1166D80: On Error Goto loc_11670CD
  loc_1166D86: var_A4 = CVar(CLng(1)) 'Long
  loc_1166D8B: var_C4 = 0
  loc_1166DBC: Call Proc_311_45_1063470(CInt(1), CStr(Me.FGrid.TextMatrix)))
  loc_1166DD0: If (var_F2 = 0) Then
  loc_1166DD8:   global_80 = 0
  loc_1166DDB:   Exit Sub
  loc_1166DDC: End If
  loc_1166DDF: var_A4 = CVar(CLng(1)) 'Long
  loc_1166DE4: var_C4 = 1
  loc_1166E06: var_144 = CVar(CLng(1)) 'Long
  loc_1166E0B: var_164 = 1
  loc_1166E2D: var_238 = CVar(CLng(1)) 'Long
  loc_1166E32: var_258 = 1
  loc_1166E45: var_27C = Me.FGrid.TextMatrix)
  loc_1166E51: var_1F8 = "WHERE S.Mth_year= '"
  loc_1166E65: var_124 = "MMM"
  loc_1166E75: var_134 = Format(CVar(CStr(Me.FGrid.TextMatrix))), var_124)
  loc_1166EA4: var_1D8 = (1 + Format(CVar(CStr(Me.FGrid.TextMatrix))), "YYYY"))
  loc_1166F1D: Proc_6_7_F26918(var_32C, DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & Format(CVar(CStr(var_27C)), "mmm/yyyy"))))), 1, "01/", 1 & Ucase(var_1D8) & "' And E.Joining_Date<=", var_134, 1)
  loc_1166F6A: var_A4 = CVar(CLng(2)) 'Long
  loc_1166F6F: var_C4 = 1
  loc_1166F9E: If (CStr(Me.FGrid.TextMatrix)) <> "All") Then
  loc_1166FA8:   var_F0 = CStr(1 & var_32C) & " And E.Category in ( '"
  loc_1166FAE:   var_A4 = CVar(CLng(2)) 'Long
  loc_1166FB3:   var_C4 = 2
  loc_1166FC0:   Set var_D8 = Me.FGrid
  loc_1166FC6:   var_E8 = var_D8.TextMatrix)
  loc_1166FDC:   var_94 = var_C4 & CStr(var_E8) & "') "
  loc_1166FEE: End If
  loc_1166FF5: var_F0 = " Select E.Name as EmployeeName, E.F_Name,E.Joining_Date,E.PF As EmpPF,E.PF_Code,S.Basic as CalBasic,Desig.Name As DesigDesc,S.DA as CalDA,S.PF As CalPF,S.Net_Salary as NetSalary From ((Employee E Left Join Salary S on E.Code = S.Emp_Code) Left Join Desig ON E.Designation = Desig.Code) " & var_94
  loc_1167018: unk_4C93A1.Execute var_F0 & " Order By E.Name ", var_E8, -1
  loc_1167029: Set global_88 = var_D8
  loc_116704E: If (Me.RecordCount <= 0) Then
  loc_1167057:   Call 0.Method_arg_50 (var_F0, var_D8, var_A4, var_F0, var_C4, var_A4)
  loc_1167078:   MsgBox("** No Records Found to Print **", &H40, CVar(var_F0), var_124, var_134)
  loc_116708D:   global_80 = 0
  loc_1167090:   Exit Sub
  loc_1167091: End If
  loc_1167097: global_76 = "prPFState"
  loc_11670A1: Call 0.Method_arg_50 (var_F0, global_80, var_1F8, var_27C)
  loc_11670BE: global_72 = CStr(Ucase(CVar(var_F0)))
  loc_11670CC: Exit Sub
  loc_11670CD: ' Referenced from: 1166D80
  loc_11670D5: Proc_6_60_E63754(0, var_258, var_238)
  loc_11670DA: Exit Sub
End Sub

Public Sub Proc_311_48_11D9D10
  'Data Table: 4C9354
  Dim var_9C As Variant
  Dim var_BC As Long
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_140 As Variant
  Dim var_160 As Long
  Dim var_230 As Variant
  Dim var_250 As Long
  Dim var_274 As Variant
  Dim var_1D0 As Variant
  Dim var_E8 As String
  Dim unk_4C93A1 As Connection15
  Dim Me As Recordset15
  loc_11D98F0: On Error Goto loc_11D9CFF
  loc_11D98F6: var_9C = CVar(CLng(1)) 'Long
  loc_11D98FB: var_BC = 0
  loc_11D992C: Call Proc_311_45_1063470(CInt(1), CStr(Me.FGrid.TextMatrix)))
  loc_11D9940: If (var_EA = 0) Then
  loc_11D9948:   global_80 = 0
  loc_11D994B:   Exit Sub
  loc_11D994C: End If
  loc_11D9958: Set var_D0 = Me.Check1
  loc_11D995E: Call 0.Method_Proc_311_48_11D9D100 (1, var_F0, var_E2, global_80)
  loc_11D9966: var_EA = var_F0.Value
  loc_11D997C: If (CLng(var_E2) = 0) Then
  loc_11D999A:   Call Proc_311_41_1281064(global_156, 1, CByte(1))
  loc_11D99A5:   global_140 = var_E8
  loc_11D99B5:   If (global_80 = 0) Then
  loc_11D99B8:     Exit Sub
  loc_11D99B9:   End If
  loc_11D99B9: End If
  loc_11D99BC: var_9C = CVar(CLng(1)) 'Long
  loc_11D99C1: var_BC = 1
  loc_11D99E3: var_140 = CVar(CLng(1)) 'Long
  loc_11D99E8: var_160 = 1
  loc_11D99F5: Set var_F0 = Me.FGrid
  loc_11D9A0A: var_230 = CVar(CLng(1)) 'Long
  loc_11D9A0F: var_250 = 1
  loc_11D9A22: var_274 = Me.FGrid.TextMatrix)
  loc_11D9A42: var_120 = "MMM"
  loc_11D9A52: var_130 = Format(CVar(CStr(Me.FGrid.TextMatrix))), var_120)
  loc_11D9A81: var_1D0 = (1 + Format(CVar(CStr(var_F0.TextMatrix))), "YYYY"))
  loc_11D9AFA: Proc_6_7_F26918(var_324, DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & Format(CVar(CStr(var_274)), "mmm/yyyy"))))), 1, "01/", 1 & Ucase(var_1D0) & "' And E.Joining_Date<=", var_130, 1)
  loc_11D9B50: Set var_D0 = Me.Check1
  loc_11D9B56: Call 0.Method_Proc_311_48_11D9D100 (1, var_F0, var_E2, "WHERE S.Mth_year= '", var_274)
  loc_11D9B5E: var_250 = var_F0.Value
  loc_11D9B74: If (CLng(var_E2) = 0) Then
  loc_11D9B8F:   var_8C = CStr(1 & var_324) & " And E.DepartMent in (" & global_140 & ") "
  loc_11D9B99: End If
  loc_11D9B9C: var_9C = CVar(CLng(2)) 'Long
  loc_11D9BA1: var_BC = 1
  loc_11D9BD0: If (CStr(Me.FGrid.TextMatrix)) <> "All") Then
  loc_11D9BDA:   var_E8 = var_8C & " And E.Category in ( '"
  loc_11D9BE0:   var_9C = CVar(CLng(2)) 'Long
  loc_11D9BE5:   var_BC = 2
  loc_11D9BF2:   Set var_D0 = Me.FGrid
  loc_11D9BF8:   var_E0 = var_D0.TextMatrix)
  loc_11D9C0E:   var_8C = var_BC & CStr(var_E0) & "') "
  loc_11D9C20: End If
  loc_11D9C27: var_E8 = "SELECT E.Code As EmpCode,E.Name As EmpName,E.F_Name,E.Joining_Date,EmpCategory.Name As CatDesc,S.Work_Day,S.CL,S.Leave,S.Sunday,S.Holiday,S.Absent,G.Name Department FROM ((Employee E LEFT JOIN EmpCategory ON E.Category=EmpCategory.Code) Left Join Salary S on E.Code = S.Emp_Code Left Join GoDownMast G ON E.Department = G.Code) " & var_8C
  loc_11D9C4A: unk_4C93A1.Execute var_E8 & " Order By EmpCategory.Code,E.Name", var_E0, -1
  loc_11D9C5B: Set global_88 = var_D0
  loc_11D9C80: If (Me.RecordCount <= 0) Then
  loc_11D9C89:   Call 0.Method_arg_50 (var_E8, var_D0, var_9C, var_E8, var_BC)
  loc_11D9C9F:   var_9C = "** No Records Found to Print **"
  loc_11D9CAA:   MsgBox(var_9C, &H40, CVar(var_E8), var_120, var_130)
  loc_11D9CBF:   global_80 = 0
  loc_11D9CC2:   Exit Sub
  loc_11D9CC3: End If
  loc_11D9CC9: global_76 = "prAttendanceRep"
  loc_11D9CD3: Call 0.Method_arg_50 (var_E8, global_80, var_9C)
  loc_11D9CF0: global_72 = CStr(Ucase(CVar(var_E8)))
  loc_11D9CFE: Exit Sub
  loc_11D9CFF: ' Referenced from: 11D98F0
  loc_11D9D07: Proc_6_60_E63754(0, var_230)
  loc_11D9D0C: Exit Sub
  loc_11D9D0D: StAryRecCopy
End Sub

Public Sub Proc_311_49_15D9838
  'Data Table: 4C9354
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_184 As Variant
  Dim var_144 As Variant
  Dim var_194 As Variant
  Dim var_B0 As Double
  Dim var_1B4 As Variant
  Dim var_B8 As Double
  Dim var_100 As Variant
  Dim var_164 As Variant
  Dim unk_4C93A1 As Connection15
  Dim var_90 As Recordset15
  Dim var_1A4 As Variant
  Dim var_1DC As String
  Dim var_1EC As Variant
  Dim var_1F0 As Variant
  Dim var_1F4 As Field20
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_234 As Variant
  Dim var_1D4 As Variant
  Dim var_204 As Variant
  Dim var_D0 As Double
  Dim var_A8 As Double
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_248 As Recordset15
  Dim var_174 As Variant
  Dim var_1C4 As Variant
  Dim var_224 As Variant
  Dim var_244 As Variant
  Dim Me As Recordset15
  loc_15D84F8: On Error Goto loc_15D9828
  loc_15D84FE: var_F0 = CVar(CLng(1)) 'Long
  loc_15D8503: var_110 = 1
  loc_15D8522: var_184 = "01/"
  loc_15D8554: var_B0 = CDate(1 & Format(CVar(CStr(Me.FGrid.TextMatrix))), "mm/yyyy"))
  loc_15D856C: var_F0 = CVar(CLng(1)) 'Long
  loc_15D8571: var_110 = 1
  loc_15D8590: var_184 = "01/"
  loc_15D85B4: var_174 = Format(CVar(CStr(Me.FGrid.TextMatrix))), "mm/yyyy")
  loc_15D85D0: var_1C4 = DateAdd("m", CDbl(1), CDate(CDate(1 & var_174)))
  loc_15D85E2: var_1D4 = DateAdd("d", CDbl(&HFF), var_1C4)
  loc_15D85EC: var_B8 = CDate(var_1D4)
  loc_15D860A: var_F0 = CVar(CLng(1)) 'Long
  loc_15D860F: var_110 = 0
  loc_15D861C: Set var_124 = Me.FGrid
  loc_15D8622: var_134 = var_124.TextMatrix)
  loc_15D8640: Call Proc_311_45_1063470(CInt(1), CStr(var_134))
  loc_15D8654: If (var_1DE = 0) Then
  loc_15D865C:   global_80 = 0
  loc_15D865F:   Exit Sub
  loc_15D8660: End If
  loc_15D867A: Call Proc_311_55_F84880(New, var_124, global_80, var_1DE, var_134, var_110, var_F0, var_B8)
  loc_15D8685: Set global_88 = var_124
  loc_15D869C: Proc_6_7_F26918(var_134, var_B8, "select code As EmpCode,name As EmpName,F_Name As FName,OP_Loan,OP_Advance from employee Where Joining_Date<=", 1, var_184, var_134)
  loc_15D86D4: unk_4C93A1.Execute CStr(vbNullString & var_134 & vbNullString), var_134, -1
  loc_15D86DF: Set var_90 = var_124
  loc_15D86FC: If (var_90.RecordCount > 0) Then
  loc_15D86FF:   ' Referenced from: 15D978F
  loc_15D870E:   If Not(var_90.EOF) Then
  loc_15D8719:     If (MemVar_1F953B0 = "A") Then
  loc_15D8722:       var_F0 = "EmpCode"
  loc_15D872E:       var_124 = var_90.Fields
  loc_15D874E:       Proc_6_7_F26918(var_174, var_B0, var_124, var_F0)
  loc_15D8759:       var_1A4 = 0
  loc_15D8780:       var_164 = "Select IIF(isnull(sum(amount)),0,sum(amount)) as loan From Loan Where Emp_Code='" & var_124.Item(var_F0).Value & "' and V_Type='LO' and V_Date<" 
  loc_15D879E:       unk_4C93A1.Execute CStr(var_164 & var_174 & vbNullString), var_1C4, -1
  loc_15D87A6:       var_1EC = var_1EC.Fields
  loc_15D87AE:       var_1A4 = var_1F0.Item(var_1F0)
  loc_15D87B6:       var_1F4 = var_1F4.Value
  loc_15D8817:       Proc_6_7_F26918(var_174, var_B0, CSng(var_1D4), var_1D4)
  loc_15D8822:       var_1A4 = 0
  loc_15D8840:       var_144 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as loanret FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_15D8867:       unk_4C93A1.Execute CStr(var_144 & "' and V_Type IN ('LR','LR1') and V_Date<" & var_174 & vbNullString), var_1C4, -1
  loc_15D886F:       var_1EC = var_1EC.Fields
  loc_15D8877:       var_1A4 = var_1F0.Item(var_1F0)
  loc_15D887F:       var_1F4 = var_1F4.Value
  loc_15D88E0:       Proc_6_7_F26918(var_174, var_B0, CSng(var_1D4), var_1D4)
  loc_15D88EB:       var_1A4 = 0
  loc_15D8909:       var_144 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as ADVA FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_15D8930:       unk_4C93A1.Execute CStr(var_144 & "' and V_Type='ADE' and V_Date<" & var_174 & vbNullString), var_1C4, -1
  loc_15D8938:       var_1EC = var_1EC.Fields
  loc_15D8940:       var_1A4 = var_1F0.Item(var_1F0)
  loc_15D8948:       var_1F4 = var_1F4.Value
  loc_15D89A9:       Proc_6_7_F26918(var_174, var_B0, CSng(var_1D4), var_1D4)
  loc_15D89B4:       var_1A4 = 0
  loc_15D89D2:       var_144 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as ARET FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_15D89F9:       unk_4C93A1.Execute CStr(var_144 & "' and V_Type IN ('AR1','AR2') and V_Date<" & var_174 & vbNullString), var_1C4, -1
  loc_15D8A01:       var_1EC = var_1EC.Fields
  loc_15D8A09:       var_1A4 = var_1F0.Item(var_1F0)
  loc_15D8A11:       var_1F4 = var_1F4.Value
  loc_15D8A72:       Proc_6_7_F26918(var_174, var_B0, CSng(var_1D4), var_1D4)
  loc_15D8A82:       Proc_6_7_F26918(var_1C4, var_B8, var_B0)
  loc_15D8A8D:       var_234 = 0
  loc_15D8AAB:       var_144 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as loan FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_15D8AE2:       unk_4C93A1.Execute CStr(var_144 & "' and V_Type='LO' and V_Date>=" & var_174 & " AND V_DATE<=" & var_1C4 & vbNullString), var_224, -1
  loc_15D8AEA:       var_1EC = var_1EC.Fields
  loc_15D8AF2:       var_234 = var_1F0.Item(var_1F0)
  loc_15D8AFA:       var_1F4 = var_1F4.Value
  loc_15D8B61:       Proc_6_7_F26918(var_174, var_B0, CSng(var_244))
  loc_15D8B71:       Proc_6_7_F26918(var_1C4, var_B8, var_244)
  loc_15D8B7C:       var_234 = 0
  loc_15D8B9A:       var_144 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as loanret FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_15D8BD1:       unk_4C93A1.Execute CStr(var_144 & "' and v_TYPE IN ('LR','LR1') and V_Date>=" & var_174 & " AND V_DATE<=" & var_1C4 & vbNullString), var_224, -1
  loc_15D8BD9:       var_1EC = var_1EC.Fields
  loc_15D8BE1:       var_234 = var_1F0.Item(var_1F0)
  loc_15D8BE9:       var_1F4 = var_1F4.Value
  loc_15D8C50:       Proc_6_7_F26918(var_174, var_B0, CSng(var_244))
  loc_15D8C60:       Proc_6_7_F26918(var_1C4, var_B8, var_244)
  loc_15D8C6B:       var_234 = 0
  loc_15D8C89:       var_144 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as ADVA FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_15D8CC0:       unk_4C93A1.Execute CStr(var_144 & "' and V_Type='ADE' and V_Date>=" & var_174 & " AND V_DATE<=" & var_1C4 & vbNullString), var_224, -1
  loc_15D8CC8:       var_1EC = var_1EC.Fields
  loc_15D8CD0:       var_234 = var_1F0.Item(var_1F0)
  loc_15D8CD8:       var_1F4 = var_1F4.Value
  loc_15D8D3F:       Proc_6_7_F26918(var_174, var_B0, CSng(var_244))
  loc_15D8D4F:       Proc_6_7_F26918(var_1C4, var_B8, var_244)
  loc_15D8D5A:       var_234 = 0
  loc_15D8D78:       var_144 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as ARET FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_15D8D98:       var_1D4 = var_144 & "' and V_Type IN ('AR1','AR2') and V_Date>=" & var_174 & " AND V_DATE<=" & var_1C4 
  loc_15D8DAF:       unk_4C93A1.Execute CStr(var_1D4 & vbNullString), var_224, -1
  loc_15D8DB7:       var_1EC = var_1EC.Fields
  loc_15D8DBF:       var_234 = var_1F0.Item(var_1F0)
  loc_15D8DC7:       var_1F4 = var_1F4.Value
  loc_15D8DD0:       var_E0 = CSng(var_244)
  loc_15D8DFF:     Else
  loc_15D8E07:       If (MemVar_1F953B0 = "S") Then
  loc_15D8E3C:         Proc_6_7_F26918(var_174, var_B0, var_E0)
  loc_15D8E47:         var_1A4 = 0
  loc_15D8E6E:         var_164 = "Select isnull(sum(amount),0) as loan From Loan Where Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type='LO' and V_Date<" 
  loc_15D8E8C:         unk_4C93A1.Execute CStr(var_164 & var_174 & vbNullString), var_1C4, -1
  loc_15D8E94:         var_1EC = var_1EC.Fields
  loc_15D8E9C:         var_1A4 = var_1F0.Item(var_1F0)
  loc_15D8EA4:         var_1F4 = var_1F4.Value
  loc_15D8EAD:         var_98 = CSng(var_1D4)
  loc_15D8F05:         Proc_6_7_F26918(var_174, var_B0, var_98, var_1D4)
  loc_15D8F10:         var_1A4 = 0
  loc_15D8F37:         var_164 = "SELECT isnull(sum(amount),0) as loanret FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type IN ('LR','LR1') and v_date<" 
  loc_15D8F55:         unk_4C93A1.Execute CStr(var_164 & var_174 & vbNullString), var_1C4, -1
  loc_15D8F5D:         var_1EC = var_1EC.Fields
  loc_15D8F65:         var_1A4 = var_1F0.Item(var_1F0)
  loc_15D8F6D:         var_1F4 = var_1F4.Value
  loc_15D8F76:         var_A0 = CSng(var_1D4)
  loc_15D8FCE:         Proc_6_7_F26918(var_174, var_B0, var_A0, var_1D4)
  loc_15D8FD9:         var_1A4 = 0
  loc_15D9000:         var_164 = "SELECT isnull(sum(amount),0) as ADVA FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type='ADE' and v_date<" 
  loc_15D901E:         unk_4C93A1.Execute CStr(var_164 & var_174 & vbNullString), var_1C4, -1
  loc_15D9026:         var_1EC = var_1EC.Fields
  loc_15D902E:         var_1A4 = var_1F0.Item(var_1F0)
  loc_15D9036:         var_1F4 = var_1F4.Value
  loc_15D903F:         var_C0 = CSng(var_1D4)
  loc_15D9097:         Proc_6_7_F26918(var_174, var_B0, var_C0, var_1D4)
  loc_15D90A2:         var_1A4 = 0
  loc_15D90C9:         var_164 = "SELECT isnull(sum(amount),0) as ARET FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type IN ('AR1','AR2') and v_date<" 
  loc_15D90E7:         unk_4C93A1.Execute CStr(var_164 & var_174 & vbNullString), var_1C4, -1
  loc_15D90EF:         var_1EC = var_1EC.Fields
  loc_15D90F7:         var_1A4 = var_1F0.Item(var_1F0)
  loc_15D90FF:         var_1F4 = var_1F4.Value
  loc_15D9108:         var_C8 = CSng(var_1D4)
  loc_15D9160:         Proc_6_7_F26918(var_174, var_B0, var_C8, var_1D4)
  loc_15D9170:         Proc_6_7_F26918(var_1C4, var_B8, var_244)
  loc_15D917B:         var_234 = 0
  loc_15D91A2:         var_164 = "SELECT isnull(sum(amount),0) as loan FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type='LO' and V_DATE>=" 
  loc_15D91D0:         unk_4C93A1.Execute CStr(var_164 & var_174 & " AND V_DATE<=" & var_1C4 & vbNullString), var_224, -1
  loc_15D91D8:         var_1EC = var_1EC.Fields
  loc_15D91E0:         var_234 = var_1F0.Item(var_1F0)
  loc_15D91E8:         var_1F4 = var_1F4.Value
  loc_15D91F1:         var_D0 = CSng(var_244)
  loc_15D924F:         Proc_6_7_F26918(var_174, var_B0, var_D0)
  loc_15D925F:         Proc_6_7_F26918(var_1C4, var_B8, var_244)
  loc_15D926A:         var_234 = 0
  loc_15D9291:         var_164 = "SELECT isnull(sum(amount),0) as loanret FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type IN ('LR','LR1') and V_DATE>=" 
  loc_15D92BF:         unk_4C93A1.Execute CStr(var_164 & var_174 & " AND V_DATE<=" & var_1C4 & vbNullString), var_224, -1
  loc_15D92C7:         var_1EC = var_1EC.Fields
  loc_15D92CF:         var_234 = var_1F0.Item(var_1F0)
  loc_15D92D7:         var_1F4 = var_1F4.Value
  loc_15D92E0:         var_A8 = CSng(var_244)
  loc_15D933E:         Proc_6_7_F26918(var_174, var_B0, var_A8)
  loc_15D934E:         Proc_6_7_F26918(var_1C4, var_B8, var_244)
  loc_15D9359:         var_234 = 0
  loc_15D9380:         var_164 = "SELECT isnull(sum(amount),0) as ADVA FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type='ADE' and V_DATE>=" 
  loc_15D93AE:         unk_4C93A1.Execute CStr(var_164 & var_174 & " AND V_DATE<=" & var_1C4 & vbNullString), var_224, -1
  loc_15D93B6:         var_1EC = var_1EC.Fields
  loc_15D93BE:         var_234 = var_1F0.Item(var_1F0)
  loc_15D93C6:         var_1F4 = var_1F4.Value
  loc_15D93CF:         var_D8 = CSng(var_244)
  loc_15D9401:         var_F0 = "EmpCode"
  loc_15D942D:         Proc_6_7_F26918(var_174, var_B0, var_D8)
  loc_15D943D:         Proc_6_7_F26918(var_1C4, var_B8, var_244)
  loc_15D9448:         var_234 = 0
  loc_15D945E:         var_100 = "SELECT isnull(sum(amount),0) as ARET FROM LOAN WHERE Emp_Code='"
  loc_15D947F:         var_1B4 = var_100 & var_90.Fields.Item(var_F0).Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=" & var_174 & " AND V_DATE<=" 
  loc_15D9493:         var_1DC = CStr(var_1B4 & var_1C4 & vbNullString)
  loc_15D949D:         unk_4C93A1.Execute var_1DC, var_224, -1
  loc_15D94A5:         var_1EC = var_1EC.Fields
  loc_15D94AD:         var_234 = var_1F0.Item(var_1F0)
  loc_15D94B5:         var_1F4 = var_1F4.Value
  loc_15D94BE:         var_E0 = CSng(var_244)
  loc_15D94EA:       End If
  loc_15D94EA:     End If
  loc_15D94F0:     Set var_248 = global_88 
  loc_15D94FF:     var_248.AddNew var_F0, var_100
  loc_15D9523:     var_134 = CVar(var_90.Fields.Item("EmpName")) 'Address
  loc_15D9531:     var_248.Collect = "EmpName"
  loc_15D955B:     var_134 = CVar(var_90.Fields.Item("EmpCode")) 'Address
  loc_15D9569:     var_248.Collect = "EmpCode"
  loc_15D9593:     var_134 = CVar(var_90.Fields.Item("FName")) 'Address
  loc_15D95A1:     var_248.Collect = "FName"
  loc_15D95DD:     var_144 = (var_90.Fields.Item("OP_Loan").Value + CVar(var_98))
  loc_15D95E8:     var_164 = (CVar(var_98) & var_90.Fields.Item("OP_Loan").Value - CVar(var_A0))
  loc_15D95F3:     var_174 = (CVar(var_98) & var_90.Fields.Item("OP_Loan").Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=" + CVar(var_D0))
  loc_15D95FE:     var_194 = (var_174 - CVar(var_A8))
  loc_15D960C:     var_248.Collect = "Amount"
  loc_15D9652:     var_144 = (var_90.Fields.Item("OP_Advance").Value + CVar(var_C0))
  loc_15D965D:     var_164 = (CVar(var_C0) & var_90.Fields.Item("OP_Advance").Value - CVar(var_C8))
  loc_15D9668:     var_174 = (CVar(var_C0) & var_90.Fields.Item("OP_Advance").Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=" + CVar(var_D8))
  loc_15D9673:     var_194 = (var_174 - CVar(var_E0))
  loc_15D9681:     var_248.Collect = "LoanInstall"
  loc_15D969C:     var_F0 = "OP_Loan"
  loc_15D96B8:     var_134 = var_90.Fields.Item(var_F0).Value
  loc_15D96C3:     var_100 = CVar(var_98) 'Double
  loc_15D96C7:     var_144 = (var_134 + var_100)
  loc_15D96D2:     var_164 = (var_100 & var_90.Fields.Item(var_F0).Value - CVar(var_A0))
  loc_15D96DD:     var_174 = (var_100 & var_90.Fields.Item(var_F0).Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=" + CVar(var_D0))
  loc_15D96E8:     var_194 = (var_174 - CVar(var_A8))
  loc_15D9716:     var_1C4 = (var_100 & var_90.Fields.Item(var_F0).Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=" & var_174 + var_90.Fields.Item("OP_Advance").Value)
  loc_15D9721:     var_1D4 = (var_1C4 + CVar(var_C0))
  loc_15D972C:     var_204 = (var_90.Fields.Item("OP_Advance").Value & var_1C4 - CVar(var_C8))
  loc_15D9737:     var_224 = (var_90.Fields.Item("OP_Advance").Value & var_1C4 & vbNullString + CVar(var_D8))
  loc_15D9742:     var_244 = (var_224 - CVar(var_E0))
  loc_15D9750:     var_248.Collect = "LoanBal"
  loc_15D977C:     var_248.Update var_F0, var_100
  loc_15D9783:     Set var_248 = Nothing 
  loc_15D978A:     var_90.MoveNext
  loc_15D978F:     GoTo loc_15D86FF
  loc_15D9792:   End If
  loc_15D9792: End If
  loc_15D97A9: If (Me.RecordCount <= 0) Then
  loc_15D97B2:   Call 0.Method_arg_50 (var_1DC, var_244, var_100 & var_90.Fields.Item(var_F0).Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=" & var_174, var_100 & var_90.Fields.Item(var_F0).Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=" & var_174, var_134, var_134)
  loc_15D97CD:   var_134 = "** No Records Found to Print **"
  loc_15D97D3:   MsgBox(var_134, &H40, CVar(var_1DC), var_100 & var_90.Fields.Item("** No Records Found to Print **").Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=", var_174)
  loc_15D97E8:   global_80 = 0
  loc_15D97EB:   Exit Sub
  loc_15D97EC: End If
  loc_15D97F2: global_76 = "prLoanAdvSumm1"
  loc_15D97FC: Call 0.Method_arg_50 (var_1DC, global_80, var_134, var_E0)
  loc_15D9819: global_72 = CStr(Ucase(CVar(var_1DC)))
  loc_15D9827: Exit Sub
  loc_15D9828: ' Referenced from: 15D84F8
  loc_15D9830: Proc_6_60_E63754(0, var_244)
  loc_15D9835: Exit Sub
End Sub

Public Sub Proc_311_50_1684DCC
  'Data Table: 4C9354
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_108 As String
  Dim var_124 As Variant
  Dim var_154 As Variant
  Dim unk_4C93A1 As Connection15
  Dim var_90 As Recordset15
  Dim var_204 As Integer
  Dim var_CC As Variant
  Dim var_134 As Variant
  Dim var_1F0 As Variant
  Dim var_1F4 As Fields15
  Dim var_208 As Field20
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_1EC As Variant
  Dim var_218 As Variant
  Dim var_29C As Recordset15
  Dim var_AC As Double
  Dim var_2A0 As Recordset15
  Dim var_A4 As Recordset15
  Dim var_2A4 As Recordset15
  Dim Me As Recordset15
  loc_16835F0: On Error Goto loc_1684DBE
  loc_16835F6: var_BC = CVar(CLng(0)) 'Long
  loc_16835FB: var_DC = 0
  loc_168362C: Call Proc_311_45_1063470(CInt(0), CStr(Me.FGrid.TextMatrix)))
  loc_1683640: If (var_10A = 0) Then
  loc_1683648:   global_80 = 0
  loc_168364B:   Exit Sub
  loc_168364C: End If
  loc_168364F: var_BC = CVar(CLng(1)) 'Long
  loc_1683654: var_DC = 0
  loc_1683667: var_100 = Me.FGrid.TextMatrix)
  loc_1683685: Call Proc_311_45_1063470(CInt(1), CStr(var_100))
  loc_1683699: If (var_10A = 0) Then
  loc_16836A1:   global_80 = 0
  loc_16836A4:   Exit Sub
  loc_16836A5: End If
  loc_16836B1: Set var_F0 = Me.Check1
  loc_16836B7: Call 0.Method_Proc_311_50_1684DCC0 (1, var_110, var_102, global_80, var_10A, var_100, var_DC)
  loc_16836BF: var_BC = var_110.Value
  loc_16836D5: If (CLng(var_102) = 0) Then
  loc_16836F3:   Call Proc_311_41_1281064(global_156, 1, CByte(1))
  loc_16836FE:   global_140 = var_108
  loc_168370E:   If (global_80 = 0) Then
  loc_1683711:     Exit Sub
  loc_1683712:   End If
  loc_1683712: End If
  loc_168371E: Set var_F0 = Me.Check1
  loc_1683724: Call 0.Method_Proc_311_50_1684DCC0 (1, var_110, var_102, var_108, global_80)
  loc_168372C: var_10A = var_110.Value
  loc_1683742: If (CLng(var_102) = 0) Then
  loc_168375D:   var_8C = var_8C & " and Employee.Code in ( " & global_140 & ") "
  loc_1683767: End If
  loc_1683781: Call Proc_311_56_FC3594(New, var_F0, var_100)
  loc_168378C: Set global_88 = var_F0
  loc_16837AD: Set var_F0 = Me.FGrid
  loc_16837B3: var_100 = var_F0.TextMatrix)
  loc_16837C4: Proc_6_7_F26918(var_134, CVar(CStr(var_100)), 1, CVar(CLng(1)))
  loc_1683804: unk_4C93A1.Execute CStr("select code As EmpCode,name As EmpName,OP_Loan,op_Advance from Employee Where Joining_Date<=" & var_134 & CVar(var_8C)), var_100, -1
  loc_168380F: Set var_90 = var_F0
  loc_168382C: If (var_90.RecordCount > 0) Then
  loc_168382F:   ' Referenced from: 1684C79
  loc_168383E:   If Not(var_90.EOF) Then
  loc_1683849:     If (MemVar_1F953B0 = "A") Then
  loc_168384F:       var_BC = CVar(CLng(2)) 'Long
  loc_1683883:       If (CStr(Me.FGrid.TextMatrix)) = "Advance") Then
  loc_16838D9:         Proc_6_7_F26918(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1)
  loc_16838E4:         var_204 = 0
  loc_1683902:         var_124 = "Select IIF(isnull(sum(amount)),0,sum(amount)) as loan From Loan Where Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_1683929:         unk_4C93A1.Execute CStr(var_124 & "' and V_Type='ADE' and V_Date<" & var_19C & vbNullString), var_1EC, -1
  loc_1683931:         var_1F0 = var_1F0.Fields
  loc_1683939:         var_204 = var_1F4.Item(var_1F4)
  loc_1683941:         var_208 = var_208.Value
  loc_16839C9:         Proc_6_7_F26918(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), CSng(var_218))
  loc_16839D4:         var_204 = 0
  loc_16839F2:         var_124 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_1683A19:         unk_4C93A1.Execute CStr(var_124 & "' and V_Type IN ('AR1','AR2') and V_Date<" & var_19C & vbNullString), var_1EC, -1
  loc_1683A21:         var_1F0 = var_1F0.Fields
  loc_1683A29:         var_204 = var_1F4.Item(var_1F4)
  loc_1683A31:         var_208 = var_208.Value
  loc_1683A3A:         var_A0 = CSng(var_218)
  loc_1683A69:       Else
  loc_1683A6C:         var_BC = CVar(CLng(2)) 'Long
  loc_1683AA0:         If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_1683AA9:           var_BC = "EmpCode"
  loc_1683AF6:           Proc_6_7_F26918(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1, var_BC, var_A0)
  loc_1683B01:           var_204 = 0
  loc_1683B1F:           var_124 = "Select IIF(isnull(sum(amount)),0,sum(amount)) as loan From Loan Where Emp_Code='" & var_90.Fields.Item(var_BC).Value 
  loc_1683B46:           unk_4C93A1.Execute CStr(var_124 & "' and V_Type='LO' and V_Date<" & var_19C & vbNullString), var_1EC, -1
  loc_1683B4E:           var_1F0 = var_1F0.Fields
  loc_1683B56:           var_204 = var_1F4.Item(var_1F4)
  loc_1683B5E:           var_208 = var_208.Value
  loc_1683BE6:           Proc_6_7_F26918(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), CSng(var_218), var_218)
  loc_1683BF1:           var_204 = 0
  loc_1683C0F:           var_124 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_1683C36:           unk_4C93A1.Execute CStr(var_124 & "' and V_Type IN ('LR','LR1') and V_Date<" & var_19C & vbNullString), var_1EC, -1
  loc_1683C3E:           var_1F0 = var_1F0.Fields
  loc_1683C46:           var_204 = var_1F4.Item(var_1F4)
  loc_1683C4E:           var_208 = var_208.Value
  loc_1683C57:           var_A0 = CSng(var_218)
  loc_1683C83:         End If
  loc_1683C83:       End If
  loc_1683C86:     Else
  loc_1683C8E:       If (MemVar_1F953B0 = "S") Then
  loc_1683C94:         var_BC = CVar(CLng(2)) 'Long
  loc_1683CC8:         If (CStr(Me.FGrid.TextMatrix)) = "Advance") Then
  loc_1683CD1:           var_BC = "EmpCode"
  loc_1683D1E:           Proc_6_7_F26918(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1, var_BC, var_A0)
  loc_1683D29:           var_204 = 0
  loc_1683D50:           var_134 = "Select isnull(sum(amount),0) as loan From Loan Where Emp_Code='" & var_90.Fields.Item(var_BC).Value & "' and V_Type='ADE' and V_Date<" 
  loc_1683D6E:           unk_4C93A1.Execute CStr(var_134 & var_19C & vbNullString), var_1EC, -1
  loc_1683D76:           var_1F0 = var_1F0.Fields
  loc_1683D7E:           var_204 = var_1F4.Item(var_1F4)
  loc_1683D86:           var_208 = var_208.Value
  loc_1683E0E:           Proc_6_7_F26918(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), CSng(var_218), var_218, var_218)
  loc_1683E19:           var_204 = 0
  loc_1683E40:           var_134 = "SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type IN ('AR1','AR2') and V_Date<" 
  loc_1683E5E:           unk_4C93A1.Execute CStr(var_134 & var_19C & vbNullString), var_1EC, -1
  loc_1683E66:           var_1F0 = var_1F0.Fields
  loc_1683E6E:           var_204 = var_1F4.Item(var_1F4)
  loc_1683E76:           var_208 = var_208.Value
  loc_1683E7F:           var_A0 = CSng(var_218)
  loc_1683EAE:         Else
  loc_1683EB1:           var_BC = CVar(CLng(2)) 'Long
  loc_1683EE5:           If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_1683EEE:             var_BC = "EmpCode"
  loc_1683F3B:             Proc_6_7_F26918(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1, var_BC, var_A0)
  loc_1683F46:             var_204 = 0
  loc_1683F6D:             var_134 = "Select isnull(sum(amount),0) as loan From Loan Where Emp_Code='" & var_90.Fields.Item(var_BC).Value & "' and V_Type='LO' and V_Date<" 
  loc_1683F8B:             unk_4C93A1.Execute CStr(var_134 & var_19C & vbNullString), var_1EC, -1
  loc_1683F93:             var_1F0 = var_1F0.Fields
  loc_1683F9B:             var_204 = var_1F4.Item(var_1F4)
  loc_1683FA3:             var_208 = var_208.Value
  loc_1683FAC:             var_98 = CSng(var_218)
  loc_168402B:             Proc_6_7_F26918(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), var_98, var_218, var_218)
  loc_1684036:             var_204 = 0
  loc_168405D:             var_134 = "SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type IN ('LR','LR1') and V_Date<" 
  loc_168407B:             unk_4C93A1.Execute CStr(var_134 & var_19C & vbNullString), var_1EC, -1
  loc_1684083:             var_1F0 = var_1F0.Fields
  loc_168408B:             var_204 = var_1F4.Item(var_1F4)
  loc_1684093:             var_208 = var_208.Value
  loc_168409C:             var_A0 = CSng(var_218)
  loc_16840C8:           End If
  loc_16840C8:         End If
  loc_16840C8:       End If
  loc_16840C8:     End If
  loc_16840D0:     If (MemVar_1F953B0 = "A") Then
  loc_16840D6:       var_BC = CVar(CLng(2)) 'Long
  loc_168410A:       If (CStr(Me.FGrid.TextMatrix)) = "Advance") Then
  loc_1684113:         var_BC = "EmpCode"
  loc_1684160:         Proc_6_7_F26918(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1, var_BC, var_A0)
  loc_1684191:         Proc_6_7_F26918(var_248, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))))
  loc_16841A3:         var_CC = "SELECT V_DATE,Emp_Code,SUM(IIF(V_TYPE IN ('ADE'),Amount,-Amount)) AS mBal,SUM(IIF(V_TYPE IN ('ADE'),Amount,0)) AS mAmt,SUM(IIF(V_TYPE IN ('ADE'),Installment,0)) AS mLInstall,SUM(IIF(V_TYPE IN ('ADE'),0,Amount)) AS mRefund FROM LOAN WHERE V_TYPE IN('ADE','AR1','AR2') AND EMP_CODE='"
  loc_16841B4:         var_134 = "SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item(var_BC).Value & "' AND V_DATE>=" 
  loc_16841E2:         unk_4C93A1.Execute CStr(var_134 & var_19C & " and V_DATE<=" & var_248 & " Group By Emp_Code,V_Date "), var_298, -1
  loc_16841ED:         Set var_A4 = var_1F4
  loc_1684222:       Else
  loc_1684225:         var_BC = CVar(CLng(2)) 'Long
  loc_1684259:         If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_1684262:           var_BC = "EmpCode"
  loc_16842AF:           Proc_6_7_F26918(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1, var_BC)
  loc_16842E0:           Proc_6_7_F26918(var_248, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), var_1F4)
  loc_16842F2:           var_CC = "SELECT V_DATE,Emp_Code,SUM(IIF(V_TYPE IN ('LO'),Amount,-Amount)) AS mBal,SUM(IIF(V_TYPE IN ('LO'),Amount,0)) AS mAmt,SUM(IIF(V_TYPE IN ('LO'),Installment,0)) AS mLInstall,SUM(IIF(V_TYPE IN ('LO'),0,Amount)) AS mRefund FROM LOAN WHERE V_TYPE IN('LO','LR','LR1') AND EMP_CODE='"
  loc_1684303:           var_134 = "SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item(var_BC).Value & "' AND V_DATE>=" 
  loc_1684331:           unk_4C93A1.Execute CStr(var_134 & var_19C & " and V_DATE<=" & var_248 & " Group By Emp_Code,V_Date "), var_298, -1
  loc_168433C:           Set var_A4 = var_1F4
  loc_168436E:         End If
  loc_168436E:       End If
  loc_1684371:     Else
  loc_1684379:       If (MemVar_1F953B0 = "S") Then
  loc_168437F:         var_BC = CVar(CLng(2)) 'Long
  loc_16843B3:         If (CStr(Me.FGrid.TextMatrix)) = "Advance") Then
  loc_16843BC:           var_BC = "EmpCode"
  loc_1684409:           Proc_6_7_F26918(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1, var_BC)
  loc_168443A:           Proc_6_7_F26918(var_248, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), var_1F4)
  loc_168444C:           var_CC = "SELECT V_DATE,Emp_Code,mBal=SUM(CASE V_TYPE WHEN 'ADE' THEN Amount ELSE -Amount END),mAmt=SUM(CASE V_TYPE WHEN 'ADE' THEN Amount ELSE 0 END),mLInstall=SUM(CASE V_TYPE WHEN 'ADE' THEN Installment ELSE 0 END),mRefund=SUM(CASE V_TYPE WHEN 'ADE' THEN 0 ELSE Amount END) FROM LOAN WHERE V_TYPE IN('ADE','AR1','AR2') AND EMP_CODE='"
  loc_168445D:           var_134 = "SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item(var_BC).Value & "' AND V_DATE>=" 
  loc_168448B:           unk_4C93A1.Execute CStr(var_134 & var_19C & " and V_DATE<=" & var_248 & " Group By Emp_Code,V_Date "), var_298, -1
  loc_1684496:           Set var_A4 = var_1F4
  loc_16844CB:         Else
  loc_16844CE:           var_BC = CVar(CLng(2)) 'Long
  loc_1684502:           If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_168450B:             var_BC = "EmpCode"
  loc_1684558:             Proc_6_7_F26918(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1, var_BC)
  loc_1684589:             Proc_6_7_F26918(var_248, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), var_1F4)
  loc_168459B:             var_CC = "SELECT V_DATE,Emp_Code,mBal=SUM(CASE V_TYPE WHEN 'LO' THEN Amount ELSE -Amount END),mAmt=SUM(CASE V_TYPE WHEN 'LO' THEN Amount ELSE 0 END),mLInstall=SUM(CASE V_TYPE WHEN 'LO' THEN Installment ELSE 0 END),mRefund=SUM(CASE V_TYPE WHEN 'LO' THEN 0 ELSE Amount END) FROM LOAN WHERE V_TYPE IN('LO','LR','LR1') AND EMP_CODE='"
  loc_16845AC:             var_134 = "SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item(var_BC).Value & "' AND V_DATE>=" 
  loc_16845DA:             unk_4C93A1.Execute CStr(var_134 & var_19C & " and V_DATE<=" & var_248 & " Group By Emp_Code,V_Date "), var_298, -1
  loc_16845E5:             Set var_A4 = var_1F4
  loc_1684617:           End If
  loc_1684617:         End If
  loc_1684617:       End If
  loc_1684617:     End If
  loc_168461A:     var_BC = CVar(CLng(2)) 'Long
  loc_168461F:     var_DC = 1
  loc_168463D:     var_108 = CStr(Me.FGrid.TextMatrix))
  loc_168464E:     If (var_108 = "Loan") Then
  loc_1684657:       var_BC = "OP_Loan"
  loc_168467B:       var_CC = 0
  loc_168468D:       If CBool(var_90.Fields.Item(var_BC).Value <> var_CC) Then
  loc_1684696:         Set var_29C = global_88 
  loc_16846A5:         var_29C.AddNew var_BC, var_CC
  loc_16846C9:         var_100 = CVar(var_90.Fields.Item("EmpName")) 'Address
  loc_16846D7:         var_29C.Collect = "EmpName"
  loc_1684701:         var_100 = CVar(var_90.Fields.Item("EmpCode")) 'Address
  loc_168470F:         var_29C.Collect = "EmpCode"
  loc_1684739:         var_100 = CVar(var_90.Fields.Item("OP_Loan")) 'Address
  loc_1684747:         var_29C.Collect = "OPLoan"
  loc_1684755:         var_CC = CDate(MemVar_1F950F4)
  loc_1684763:         var_29C.Collect = "LOAN_DATE"
  loc_1684787:         var_100 = CVar(var_90.Fields.Item("OP_Loan")) 'Address
  loc_1684795:         var_29C.Collect = "Balance"
  loc_16847A0:         var_CC = 0
  loc_16847AF:         var_29C.Collect = "Amount"
  loc_16847BA:         var_BC = "Refund"
  loc_16847C3:         var_29C.Collect = var_BC
  loc_16847D3:         var_29C.Update var_BC, 0
  loc_16847DA:         Set var_29C = Nothing 
  loc_16847DE:       End If
  loc_168480F:       var_124 = (var_90.Fields.Item("OP_Loan").Value + CVar(var_98))
  loc_168481A:       var_134 = ("SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item("OP_Loan").Value - CVar(var_A0))
  loc_168481F:       var_AC = CSng(var_134)
  loc_1684833:     Else
  loc_1684839:       var_BC = "OP_Advance"
  loc_168485D:       var_CC = 0
  loc_168486F:       If CBool(var_90.Fields.Item(var_BC).Value <> var_CC) Then
  loc_1684878:         Set var_2A0 = global_88 
  loc_1684887:         var_2A0.AddNew var_BC, var_CC
  loc_16848AB:         var_100 = CVar(var_90.Fields.Item("EmpName")) 'Address
  loc_16848B9:         var_2A0.Collect = "EmpName"
  loc_16848E3:         var_100 = CVar(var_90.Fields.Item("EmpCode")) 'Address
  loc_16848F1:         var_2A0.Collect = "EmpCode"
  loc_168491B:         var_100 = CVar(var_90.Fields.Item("OP_Advance")) 'Address
  loc_1684929:         var_2A0.Collect = "OPLoan"
  loc_1684937:         var_CC = CDate(MemVar_1F950F4)
  loc_1684945:         var_2A0.Collect = "LOAN_DATE"
  loc_1684969:         var_100 = CVar(var_90.Fields.Item("OP_Loan")) 'Address
  loc_1684977:         var_2A0.Collect = "Balance"
  loc_1684982:         var_CC = 0
  loc_1684991:         var_2A0.Collect = "Amount"
  loc_168499C:         var_BC = "Refund"
  loc_16849A5:         var_2A0.Collect = var_BC
  loc_16849B5:         var_2A0.Update var_BC, 0
  loc_16849BC:         Set var_2A0 = Nothing 
  loc_16849C0:       End If
  loc_16849C6:       var_BC = "OP_Advance"
  loc_16849ED:       var_CC = CVar(var_98) 'Double
  loc_16849F1:       var_124 = (var_90.Fields.Item(var_BC).Value + var_CC)
  loc_16849FC:       var_134 = ("SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item(var_BC).Value - CVar(var_A0))
  loc_1684A01:       var_AC = CSng(var_134)
  loc_1684A12:     End If
  loc_1684A26:     If (var_A4.RecordCount > 0) Then
  loc_1684A29:       ' Referenced from: 1684C6E
  loc_1684A38:       If Not(var_A4.EOF) Then
  loc_1684A41:         Set var_2A4 = global_88 
  loc_1684A50:         var_2A4.AddNew var_BC, var_CC
  loc_1684A74:         var_100 = CVar(var_90.Fields.Item("EmpName")) 'Address
  loc_1684A82:         var_2A4.Collect = "EmpName"
  loc_1684AAC:         var_100 = CVar(var_90.Fields.Item("EmpCode")) 'Address
  loc_1684ABA:         var_2A4.Collect = "EmpCode"
  loc_1684AC8:         var_CC = CVar(var_AC) 'Double
  loc_1684AD6:         var_2A4.Collect = "OPLoan"
  loc_1684AFA:         var_100 = CVar(var_A4.Fields.Item("V_DATE")) 'Address
  loc_1684B08:         var_2A4.Collect = "LOAN_DATE"
  loc_1684B44:         var_124 = (CVar(var_AC) + var_A4.Fields.Item("mBal").Value)
  loc_1684B52:         var_2A4.Collect = "Balance"
  loc_1684B84:         var_100 = CVar(var_A4.Fields.Item("mAmt")) 'Address
  loc_1684B92:         var_2A4.Collect = "Amount"
  loc_1684BA0:         var_BC = "mRefund"
  loc_1684BBC:         var_100 = CVar(var_A4.Fields.Item(var_BC)) 'Address
  loc_1684BC1:         var_CC = "Refund"
  loc_1684BCA:         var_2A4.Collect = var_CC
  loc_1684BE0:         var_2A4.Update var_BC, var_CC
  loc_1684C0E:         var_100 = var_A4.Fields.Item("mAmt").Value
  loc_1684C16:         var_124 = (CVar(var_AC) + var_100)
  loc_1684C3C:         var_134 = var_A4.Fields.Item("mRefund").Value
  loc_1684C44:         var_154 = ("SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item("mAmt").Value - var_134)
  loc_1684C49:         var_AC = CSng(Me.FGrid.TextMatrix))
  loc_1684C63:         var_A4.MoveNext
  loc_1684C6A:         Set var_2A4 = Nothing 
  loc_1684C6E:         GoTo loc_1684A29
  loc_1684C71:       End If
  loc_1684C71:     End If
  loc_1684C74:     var_90.MoveNext
  loc_1684C79:     GoTo loc_168382F
  loc_1684C7C:   End If
  loc_1684C7C: End If
  loc_1684C93: If (Me.RecordCount <= 0) Then
  loc_1684C9C:   Call 0.Method_arg_50 (var_108, var_AC, var_100, var_100, "SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item("mAmt").Value, var_100)
  loc_1684CBD:   MsgBox("** No Records Found to Print **", &H40, CVar(var_108), var_134, Me.FGrid.TextMatrix))
  loc_1684CD2:   global_80 = 0
  loc_1684CD5:   Exit Sub
  loc_1684CD6: End If
  loc_1684CDC: global_76 = "prLoanReg"
  loc_1684CE3: var_BC = CVar(CLng(2)) 'Long
  loc_1684CE8: var_DC = 1
  loc_1684D17: If (CStr(Me.FGrid.TextMatrix)) = "Advance") Then
  loc_1684D37:   global_72 = CStr(Ucase("Advance Register"))
  loc_1684D48: Else
  loc_1684D4B:   var_BC = CVar(CLng(2)) 'Long
  loc_1684D50:   var_DC = 1
  loc_1684D7F:   If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_1684D82:     var_BC = "Loan Register"
  loc_1684D9F:     global_72 = CStr(Ucase(var_BC))
  loc_1684DAD:   End If
  loc_1684DAD: End If
  loc_1684DB2: Set var_A4 = Nothing
  loc_1684DBA: Set var_90 = Nothing
  loc_1684DBD: Exit Sub
  loc_1684DBE: ' Referenced from: 16835F0
  loc_1684DC6: Proc_6_60_E63754(0, var_DC, var_BC, var_DC, var_BC, 0)
  loc_1684DCB: Exit Sub
End Sub

Public Sub Proc_311_51_1621DB4
  'Data Table: 4C9354
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_110 As String
  Dim var_15C As Variant
  Dim unk_4C93A1 As Connection15
  Dim var_98 As Recordset15
  Dim var_D4 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_248 As Variant
  Dim var_304 As Variant
  Dim var_3A8 As Variant
  Dim var_438 As String
  Dim var_448 As Variant
  Dim var_480 As Variant
  Dim var_4A0 As Variant
  Dim var_524 As Variant
  Dim var_628 As Variant
  Dim var_314 As Variant
  Dim var_3B8 As Variant
  Dim var_514 As Variant
  Dim var_5B8 As Variant
  Dim var_73C As Variant
  Dim var_75C As Variant
  Dim var_794 As Variant
  Dim var_8FC As Variant
  Dim var_91C As Variant
  Dim var_AC As Recordset15
  Dim var_940 As Recordset15
  Dim Me As Recordset15
  loc_16209E4: On Error Goto loc_1621DA4
  loc_16209EA: var_C4 = CVar(CLng(0)) 'Long
  loc_16209EF: var_E4 = 0
  loc_1620A20: Call Proc_311_45_1063470(CInt(0), CStr(Me.FGrid.TextMatrix)))
  loc_1620A34: If (var_112 = 0) Then
  loc_1620A3C:   global_80 = 0
  loc_1620A3F:   Exit Sub
  loc_1620A40: End If
  loc_1620A43: var_C4 = CVar(CLng(1)) 'Long
  loc_1620A48: var_E4 = 0
  loc_1620A79: Call Proc_311_45_1063470(CInt(1), CStr(Me.FGrid.TextMatrix)))
  loc_1620A8D: If (var_112 = 0) Then
  loc_1620A95:   global_80 = 0
  loc_1620A98:   Exit Sub
  loc_1620A99: End If
  loc_1620A9C: var_C4 = CVar(CLng(2)) 'Long
  loc_1620AA1: var_E4 = 0
  loc_1620AB4: var_108 = Me.FGrid.TextMatrix)
  loc_1620AD2: Call Proc_311_45_1063470(CInt(2), CStr(var_108))
  loc_1620AE6: If (var_112 = 0) Then
  loc_1620AEE:   global_80 = 0
  loc_1620AF1:   Exit Sub
  loc_1620AF2: End If
  loc_1620AFE: Set var_F8 = Me.Check1
  loc_1620B04: Call 0.Method_Proc_311_51_1621DB40 (1, var_118, var_10A, global_80, var_112, var_108, var_E4)
  loc_1620B0C: var_C4 = var_118.Value
  loc_1620B22: If (CLng(var_10A) = 0) Then
  loc_1620B40:   Call Proc_311_41_1281064(global_156, 1, CByte(1))
  loc_1620B4B:   global_140 = var_110
  loc_1620B5B:   If (global_80 = 0) Then
  loc_1620B5E:     Exit Sub
  loc_1620B5F:   End If
  loc_1620B5F: End If
  loc_1620B6B: Set var_F8 = Me.Check1
  loc_1620B71: Call 0.Method_Proc_311_51_1621DB40 (1, var_118, var_10A, var_110, global_80)
  loc_1620B79: var_112 = var_118.Value
  loc_1620B8F: If (CLng(var_10A) = 0) Then
  loc_1620BAA:   var_8C = var_8C & " and Employee.Code in ( " & global_140 & ") "
  loc_1620BB4: End If
  loc_1620BCE: Call Proc_311_57_FA4034(New, var_F8, var_108)
  loc_1620BD9: Set global_88 = var_F8
  loc_1620BE3: var_C4 = CVar(CLng(2)) 'Long
  loc_1620BE8: var_E4 = 1
  loc_1620C17: If (CStr(Me.FGrid.TextMatrix)) = "All") Then
  loc_1620C1D:   var_90 = " And V_Type in ('LO','ADE')"
  loc_1620C23:   var_94 = " And V_Type in ('LR','LR1','AR1','AR2')"
  loc_1620C29: Else
  loc_1620C2C:   var_C4 = CVar(CLng(2)) 'Long
  loc_1620C31:   var_E4 = 1
  loc_1620C60:   If (CStr(Me.FGrid.TextMatrix)) = "Advance") Then
  loc_1620C66:     var_90 = " And V_Type in ('ADE')"
  loc_1620C6C:     var_94 = " And V_Type in ('AR1','AR2')"
  loc_1620C72:   Else
  loc_1620C75:     var_C4 = CVar(CLng(2)) 'Long
  loc_1620C7A:     var_E4 = 1
  loc_1620CA9:     If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_1620CAF:       var_90 = " And V_Type in ('LO')"
  loc_1620CB5:       var_94 = " And V_Type in ('LR','LR1')"
  loc_1620CB8:     End If
  loc_1620CB8:   End If
  loc_1620CB8: End If
  loc_1620CC5: var_E4 = 1
  loc_1620CD2: Set var_F8 = Me.FGrid
  loc_1620CD8: var_108 = var_F8.TextMatrix)
  loc_1620CE9: Proc_6_7_F26918(var_13C, CVar(CStr(var_108)), var_E4, CVar(CLng(1)), "select code As EmpCode,name As EmpName,OP_Loan,op_Advance from Employee Where Joining_Date<=", var_E4, CVar(CLng(1)))
  loc_1620D29: unk_4C93A1.Execute CStr(var_E4 & var_13C & CVar(var_8C)), var_108, -1
  loc_1620D34: Set var_98 = var_F8
  loc_1620D51: If (var_98.RecordCount > 0) Then
  loc_1620D54:   ' Referenced from: 1621C31
  loc_1620D63:   If Not(var_98.EOF) Then
  loc_1620D69:     var_C4 = CVar(CLng(2)) 'Long
  loc_1620D6E:     var_E4 = 1
  loc_1620D9D:     If (CStr(Me.FGrid.TextMatrix)) = "All") Then
  loc_1620DA0:       var_C4 = "select 'OPA' as V_type,'"
  loc_1620DB0:       var_E4 = "' as V_Date,Code as Emp_Code,OP_Advance as CR,0 as DR,'Opening Advance' as Rem From Employee where OP_Advance>0 and Code='"
  loc_1620DCB:       var_F8 = var_98.Fields
  loc_1620E00:       var_1B0 = var_C4 & CDate(MemVar_1F950F4) & var_E4 & var_F8.Item("EmpCode").Value & "' Union All " & " select 'OPL' as V_type,'" & CDate(MemVar_1F950F4) 
  loc_1620E09:       var_1D0 = var_1B0 & "' as V_Date,Code as Emp_Code,OP_Loan as CR,0 as DR,'Opening Loan' as Rem From Employee where OP_Loan>0 and Code='" 
  loc_1620E49:       var_248 = var_1D0 & var_98.Fields.Item("EmpCode").Value & "' Union All  " & " Select V_type, V_Date,Emp_Code,SUM(Amount) AS CR,0 AS DR,max(Remark) as Rem FROM LOAN WHERE Emp_Code='" 
  loc_1620EAA:       var_304 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1620EB0:       Proc_6_7_F26918(var_314, var_304, 1, CVar(CLng(0)), var_248 & var_98.Fields.Item("EmpCode").Value & "' and V_DATE>=", var_E4, var_C4)
  loc_1620EF1:       Proc_6_7_F26918(var_3B8, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), var_F8 & var_314 & " and V_DATE<=", var_C4)
  loc_1620F1E:       var_448 = var_E4 & var_3B8 & CVar(var_90) & " Group By Emp_Code,V_Date,v_type" & " Union All  " & " Select V_type, V_Date,Emp_Code,0 AS CR,SUM(Amount) AS DR,max(Remark) as Rem FROM LOAN WHERE Emp_Code='" 
  loc_1620F4C:       var_480 = var_448 & var_98.Fields.Item("EmpCode").Value 
  loc_1620F85:       Proc_6_7_F26918(var_514, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), var_480 & "' and V_DATE>=")
  loc_1620F8D:       var_524 = var_C4 & var_514 
  loc_1620FC6:       Proc_6_7_F26918(var_5B8, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_1620FEA:       var_628 = var_524 & " and V_DATE<=" & var_5B8 & CVar(var_94) & " Group By Emp_Code,V_Date,v_type" & " order by V_Date" 
  loc_1620FEF:       var_88 = CStr(var_628)
  loc_1621069:     Else
  loc_162106C:       var_C4 = CVar(CLng(2)) 'Long
  loc_1621071:       var_E4 = 1
  loc_16210A0:       If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_16210A3:         var_C4 = " select 'OPL' as V_type,'"
  loc_16210B3:         var_E4 = "' as V_Date,Code as Emp_Code,OP_Loan as CR,0 as DR,'Opening Loan' as Rem From Employee where OP_Loan>0 and Code='"
  loc_16210F8:         var_190 = var_C4 & CDate(MemVar_1F950F4) & var_E4 & var_98.Fields.Item("EmpCode").Value & "' Union All  " & " Select V_type, V_Date,Emp_Code,SUM(Amount) AS CR,0 AS DR,max(Remark) as Rem FROM LOAN WHERE Emp_Code='" 
  loc_162115F:         Proc_6_7_F26918(var_248, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), var_190 & var_98.Fields.Item("EmpCode").Value & "' and V_DATE>=")
  loc_16211A0:         Proc_6_7_F26918(var_304, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), var_E4 & var_248 & " and V_DATE<=")
  loc_16211FE:         var_438 = "' As V_Date,Q.Emp_Code,R.AmtCr AS CR,Q.AmtDr AS DR,'Previous Loan' as Rem FROM (Select Emp_Code,IsNull(SUM(Amount),0) AmtDr From Loan WHERE Emp_Code='"
  loc_1621249:         Proc_6_7_F26918(var_480, MemVar_1F950F4, 1 & CVar(CStr(Me.FGrid.TextMatrix))) & var_438 & var_98.Fields.Item("EmpCode").Value & "' And V_Date>=", CVar(CLng(0)))
  loc_1621251:         var_4A0 = var_C4 & var_304 & CVar(var_90) & " Group By Emp_Code,V_Date,v_type" & " Union All " & " Select 'PBL' as V_type,'" & var_480 
  loc_162128A:         Proc_6_7_F26918(var_524, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_16212AE:         var_5B8 = var_4A0 & " And V_DATE<" & var_524 & CVar(var_94) & " Group By Emp_Code) Q " & " Full Join (Select Emp_Code,IsNull(SUM(Amount),0) AmtCr From Loan WHERE Emp_Code='" 
  loc_16212F4:         Proc_6_7_F26918(var_628, MemVar_1F950F4, var_5B8 & var_98.Fields.Item("EmpCode").Value & "' And V_Date>=")
  loc_1621335:         Proc_6_7_F26918(var_6CC, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_1621359:         var_73C = var_E4 & var_628 & " And V_DATE<" & var_6CC & CVar(var_90) & " Group By Emp_Code) R On Q.Emp_Code=R.Emp_Code " & " Union All  " 
  loc_1621390:         var_794 = var_73C & " Select V_type, V_Date,Emp_Code,0 AS CR,SUM(Amount) AS DR,max(Remark) as Rem FROM LOAN WHERE Emp_Code='" & var_98.Fields.Item("EmpCode").Value 
  loc_16213C9:         Proc_6_7_F26918(var_828, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_162140A:         Proc_6_7_F26918(var_8CC, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_1621425:         var_91C = var_794 & "' and V_DATE>=" & var_828 & " and V_DATE<=" & var_8CC & CVar(var_94) & " Group By Emp_Code,V_Date,v_type" 
  loc_1621433:         var_88 = CStr(var_91C & " order by V_Date")
  loc_16214E9:       Else
  loc_16214EC:         var_C4 = CVar(CLng(2)) 'Long
  loc_16214F1:         var_E4 = 1
  loc_162150F:         var_110 = CStr(Me.FGrid.TextMatrix))
  loc_1621520:         If (var_110 = "Advance") Then
  loc_1621523:           var_C4 = "select 'OPA' as V_type,'"
  loc_162152B:           var_D4 = CDate(MemVar_1F950F4)
  loc_162152F:           var_108 = var_C4 & var_D4 
  loc_1621533:           var_E4 = "' as V_Date,Code as Emp_Code,OP_Advance as CR,0 as DR,'Opening Advance' as Rem From Employee where OP_Advance>0 and Code='"
  loc_162154E:           var_F8 = var_98.Fields
  loc_162155E:           var_13C = var_F8.Item("EmpCode").Value
  loc_1621566:           var_15C = var_108 & var_E4 & var_13C 
  loc_1621578:           var_190 = var_15C & "' Union All " & " Select V_type, V_Date,Emp_Code,SUM(Amount) AS CR,0 AS DR,max(Remark) as Rem FROM LOAN WHERE Emp_Code='" 
  loc_16215DF:           Proc_6_7_F26918(var_248, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), var_190 & var_98.Fields.Item("EmpCode").Value & "' and V_DATE>=")
  loc_1621620:           Proc_6_7_F26918(var_304, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_162164D:           var_3A8 = var_E4 & var_248 & " and V_DATE<=" & var_304 & CVar(var_90) & " Group By Emp_Code,V_Date,v_type" & " Union All " & " Select 'PBA' as V_type,'" 
  loc_162167E:           var_438 = "' As V_Date,Q.Emp_Code,R.AmtCr AS CR,Q.AmtDr AS DR,'Previous Advance' as Rem FROM (Select Emp_Code,IsNull(SUM(Amount),0) AmtDr From Loan WHERE Emp_Code='"
  loc_16216C9:           Proc_6_7_F26918(var_480, MemVar_1F950F4, 1 & CVar(CStr(Me.FGrid.TextMatrix))) & var_438 & var_98.Fields.Item("EmpCode").Value & "' And V_Date>=", CVar(CLng(0)))
  loc_162170A:           Proc_6_7_F26918(var_524, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_162172E:           var_5B8 = var_3A8 & var_480 & " And V_DATE<" & var_524 & CVar(var_94) & " Group By Emp_Code) Q " & " Full Join (Select Emp_Code,IsNull(SUM(Amount),0) AmtCr From Loan WHERE Emp_Code='" 
  loc_1621774:           Proc_6_7_F26918(var_628, MemVar_1F950F4, var_5B8 & var_98.Fields.Item("EmpCode").Value & "' And V_Date>=")
  loc_16217B5:           Proc_6_7_F26918(var_6CC, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_16217D9:           var_73C = var_C4 & var_628 & " And V_DATE<" & var_6CC & CVar(var_90) & " Group By Emp_Code) R On Q.Emp_Code=R.Emp_Code " & " Union All  " 
  loc_16217E2:           var_75C = var_73C & " Select V_type, V_Date,Emp_Code,0 AS CR,SUM(Amount) AS DR,max(Remark) as Rem FROM LOAN WHERE Emp_Code='" 
  loc_1621849:           Proc_6_7_F26918(var_828, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_162188A:           Proc_6_7_F26918(var_8CC, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_162189C:           var_8FC = var_75C & var_98.Fields.Item("EmpCode").Value & "' and V_DATE>=" & var_828 & " and V_DATE<=" & var_8CC & CVar(var_94) 
  loc_16218B3:           var_88 = CStr(var_8FC & " Group By Emp_Code,V_Date,v_type" & " order by V_Date")
  loc_1621966:         End If
  loc_1621966:       End If
  loc_1621966:     End If
  loc_162197C:     unk_4C93A1.Execute var_88, var_108, -1
  loc_1621987:     Set var_AC = var_F8
  loc_1621990:     ' Referenced from: 1621C26
  loc_162199F:     If Not(var_AC.EOF) Then
  loc_16219A8:       Set var_940 = global_88 
  loc_16219B7:       var_940.AddNew var_C4, var_D4
  loc_16219FF:       var_940.Fields.Item("EmpName").Value = CVar(var_98.Fields.Item("EmpName"))
  loc_1621A53:       var_940.Fields.Item("EmpCode").Value = CVar(var_98.Fields.Item("EmpCode"))
  loc_1621AA7:       var_940.Fields.Item("V_Type").Value = CVar(var_AC.Fields.Item("V_Type"))
  loc_1621AFB:       var_940.Fields.Item("V_Date").Value = CVar(var_AC.Fields.Item("V_DATE"))
  loc_1621B4F:       var_940.Fields.Item("Cr").Value = CVar(var_AC.Fields.Item("cr"))
  loc_1621BA3:       var_940.Fields.Item("Dr").Value = CVar(var_AC.Fields.Item("dr"))
  loc_1621BB7:       var_C4 = "rem"
  loc_1621BC3:       var_F8 = var_AC.Fields
  loc_1621BDB:       var_D4 = "Remark"
  loc_1621BF7:       var_940.Fields.Item(var_D4).Value = CVar(var_F8.Item(var_C4))
  loc_1621C13:       var_940.Update var_C4, var_D4
  loc_1621C1A:       Set var_940 = Nothing 
  loc_1621C21:       var_AC.MoveNext
  loc_1621C26:       GoTo loc_1621990
  loc_1621C29:     End If
  loc_1621C2C:     var_98.MoveNext
  loc_1621C31:     GoTo loc_1620D54
  loc_1621C34:   End If
  loc_1621C34: End If
  loc_1621C4B: If (Me.RecordCount <= 0) Then
  loc_1621C54:   Call 0.Method_arg_50 (var_110, var_F8)
  loc_1621C75:   MsgBox("** No Records Found to Print **", &H40, CVar(var_110), var_13C, var_15C)
  loc_1621C8A:   global_80 = 0
  loc_1621C8D:   Exit Sub
  loc_1621C8E: End If
  loc_1621C94: global_76 = "prLoanLedg"
  loc_1621C9B: var_C4 = CVar(CLng(2)) 'Long
  loc_1621CA0: var_E4 = 1
  loc_1621CCF: If (CStr(Me.FGrid.TextMatrix)) = "Advance") Then
  loc_1621CEF:   global_72 = CStr(Ucase("Advance Ledger"))
  loc_1621D00: Else
  loc_1621D03:   var_C4 = CVar(CLng(2)) 'Long
  loc_1621D08:   var_E4 = 1
  loc_1621D37:   If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_1621D57:     global_72 = CStr(Ucase("Loan Ledger"))
  loc_1621D68:   Else
  loc_1621D68:     var_C4 = "Loan/Advance Ledger"
  loc_1621D85:     global_72 = CStr(Ucase(var_C4))
  loc_1621D93:   End If
  loc_1621D93: End If
  loc_1621D98: Set var_AC = Nothing
  loc_1621DA0: Set var_98 = Nothing
  loc_1621DA3: Exit Sub
  loc_1621DA4: ' Referenced from: 16209E4
  loc_1621DAC: Proc_6_60_E63754(0, var_E4, var_C4, var_E4)
  loc_1621DB1: Exit Sub
End Sub

Public Sub Proc_311_52_1485D6C
  'Data Table: 4C9354
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_D4 As Variant
  Dim var_128 As Variant
  Dim var_110 As String
  Dim unk_4C93A1 As Connection15
  Dim var_90 As Recordset15
  Dim var_98 As Integer
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_9E As Integer
  Dim var_A8 As Double
  Dim var_138 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_23C As Variant
  Dim var_25C As Variant
  Dim var_94 As Recordset15
  Dim var_96 As Integer
  Dim var_280 As Recordset15
  Dim var_14C As Variant
  Dim var_2E0 As Variant
  Dim var_20C As Variant
  Dim Me As Recordset15
  loc_148517C: On Error Goto loc_1485D5D
  loc_1485182: var_C4 = CVar(CLng(0)) 'Long
  loc_1485187: var_E4 = 1
  loc_148519A: var_108 = Me.FGrid.TextMatrix)
  loc_14851B8: Call Proc_311_45_1063470(CInt(0), CStr(var_108))
  loc_14851CC: If (var_112 = 0) Then
  loc_14851D4:   global_80 = 0
  loc_14851D7:   Exit Sub
  loc_14851D8: End If
  loc_14851E4: Set var_F8 = Me.Check1
  loc_14851EA: Call 0.Method_Proc_311_52_1485D6C0 (1, var_118, var_10A, global_80)
  loc_14851F2: var_112 = var_118.Value
  loc_1485208: If (CLng(var_10A) = 0) Then
  loc_1485226:   Call Proc_311_41_1281064(global_156, 1, CByte(1))
  loc_1485231:   global_140 = var_110
  loc_1485241:   If (global_80 = 0) Then
  loc_1485244:     Exit Sub
  loc_1485245:   End If
  loc_1485245: End If
  loc_1485262: Proc_6_17_EAAE40(var_108, MemVar_1F95078, "Select * From Enviro WHERE LOGSITE_CODE=", var_138, -1)
  loc_148526A: var_128 = var_F8 & var_108 
  loc_1485278: unk_4C93A1.Execute CStr(var_128), CStr(var_128), var_108
  loc_1485283: Set var_90 = var_F8
  loc_14852A9: If (var_90.RecordCount > 0) Then
  loc_14852D2:   Proc_6_39_E7D3A0(var_128, CVar(var_90.Fields.Item("GAppCompYear")))
  loc_14852DB:   var_98 = CInt(var_128)
  loc_148530E:   Proc_6_39_E7D3A0(var_128, CVar(var_90.Fields.Item("GMonthConsidered")), var_98)
  loc_1485317:   var_9A = CInt(var_128)
  loc_148534A:   Proc_6_39_E7D3A0(var_128, CVar(var_90.Fields.Item("GWorkingDaysInAMonth")), var_9A)
  loc_1485353:   var_9C = CInt(var_128)
  loc_1485377:   var_118 = var_90.Fields.Item("GDaysSalary")
  loc_1485386:   Proc_6_39_E7D3A0(var_128, CVar(var_118), var_9C)
  loc_148538F:   var_9E = CInt(var_128)
  loc_148539C: End If
  loc_14853A9: If ((var_9C = 0) Or (var_9E = 0)) Then
  loc_14853C5:   MsgBox("Enviro Gratuity Parameter Not Set!", 0, var_128, var_138, var_14C)
  loc_14853DA:   global_80 = 0
  loc_14853DD:   Exit Sub
  loc_14853DE: End If
  loc_14853EA: Set var_F8 = Me.Check1
  loc_14853F0: Call 0.Method_Proc_311_52_1485D6C0 (1, var_118, var_10A, global_80)
  loc_14853F8: var_9E = var_118.Value
  loc_148540E: If (CLng(var_10A) = 0) Then
  loc_1485422:   var_8C = " Where E.Code in (" & global_140 & ") "
  loc_1485428: End If
  loc_1485442: Call Proc_311_58_1022F3C(New, var_F8)
  loc_148544D: Set global_88 = var_F8
  loc_1485457: var_C4 = CVar(CLng(0)) 'Long
  loc_1485469: Set var_F8 = Me.FGrid
  loc_148546F: var_108 = var_F8.TextMatrix)
  loc_148547F: var_A8 = CDate(CStr(var_108))
  loc_148548B: var_D4 = "Select E.Code As EmpCode,E.name As EmpName,E.F_Name As EmpFName,IsNull(E.Add1,'')+', '+IsNull(E.Add2,'') As Address,Convert(Varchar(11),E.Joining_Date,103) As DOJ,D.Name As Designation,(E.Basic+E.DA) As CurWages,Case When Datediff(yyyy,E.Joining_Date,"
  loc_1485493: var_C4 = var_A8
  loc_148549B: Proc_6_7_F26918(var_108, var_C4, "Select * From Enviro WHERE LOGSITE_CODE=", var_A8)
  loc_14854A3: var_128 = 1 & var_108 
  loc_14854A7: var_E4 = ") IS NULL Then 0 Else Datediff(yyyy,E.Joining_Date,"
  loc_14854BB: Proc_6_7_F26918(var_14C, var_A8, var_128 & var_E4)
  loc_14854C3: var_15C = var_C4 & var_14C 
  loc_14854E4: Proc_6_7_F26918(var_1BC, var_A8, var_15C & ") End As JobYear," & "Case When Datediff(mm,E.Joining_Date,")
  loc_1485504: Proc_6_7_F26918(var_20C, var_A8)
  loc_1485515: var_23C = var_E4 & var_1BC & ") IS NULL Then 0 Else Datediff(mm,E.Joining_Date," & var_20C & ")%12 End As JobMonth From Employee E Left Join Desig D On D.Code=E.Designation " 
  loc_148551F: var_25C = var_23C & CVar(var_8C) 
  loc_1485567: unk_4C93A1.Execute CStr(var_25C & " Order By E.Name"), var_108, -1
  loc_1485572: Set var_94 = var_F8
  loc_148558F: If (var_94.RecordCount > 0) Then
  loc_1485594:   var_96 = 1
  loc_1485597:   ' Referenced from: 1485CC2
  loc_14855A6:   If Not(var_94.EOF) Then
  loc_14855AC:     var_C4 = "JobYear"
  loc_14855CF:     Proc_6_39_E7D3A0(var_128, CVar(var_94.Fields.Item(var_C4)), var_96)
  loc_14855DA:     var_D4 = CVar(var_98) 'Integer
  loc_14855EA:     If (var_128 >= var_D4) Then
  loc_14855F3:       Set var_280 = global_88 
  loc_1485602:       var_280.AddNew var_C4, var_D4
  loc_148562F:       var_280.Fields.Item("SNo").Value = CVar(CStr(var_96))
  loc_148564D:       var_F8 = var_94.Fields
  loc_1485689:       var_280.Fields.Item("EmpCode").Value = CVar(Proc_6_38_E69628(CVar(var_F8.Item("EmpCode")), var_F8))
  loc_14856FF:       var_280.Fields.Item("EmpName").Value = Left(CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("EmpName")))), &H32)
  loc_148577A:       var_280.Fields.Item("EmpFName").Value = Left(CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("EmpFName")))), &H32)
  loc_14857F5:       var_280.Fields.Item("Address").Value = Left(CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("Address")))), &H64)
  loc_148585A:       var_280.Fields.Item("DOJ").Value = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("DOJ"))))
  loc_1485897:       var_128 = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("Designation")))) 'String
  loc_14858BA:       var_280.Fields.Item("Desig").Value = var_128
  loc_14858F5:       Proc_6_47_EF6560(var_128, CVar(var_94.Fields.Item("CurWages")))
  loc_148591D:       var_280.Fields.Item("CurWages").Value = var_128
  loc_1485958:       Proc_6_39_E7D3A0(var_128, CVar(var_94.Fields.Item("JobYear")))
  loc_1485983:       Proc_6_39_E7D3A0(var_15C, CVar(var_94.Fields.Item("JobYear")))
  loc_14859AE:       Proc_6_39_E7D3A0(var_20C, CVar(var_94.Fields.Item("JobMonth")))
  loc_14859D9:       Proc_6_39_E7D3A0(var_25C, CVar(var_94.Fields.Item("JobMonth")))
  loc_14859E3:       var_1BC = vbNullString
  loc_1485A57:       var_2E0 = (IIf((var_128 > 0), CVar(CStr(var_15C) & " Year"), var_1BC) + IIf((var_20C > 0), CVar(" " & CStr(var_25C) & " Month"), vbNullString))
  loc_1485A7B:       var_280.Fields.Item("SerPeriod").Value = var_2E0
  loc_1485AE7:       Proc_6_39_E7D3A0(var_128, CVar(var_94.Fields.Item("JobMonth")))
  loc_1485B12:       Proc_6_39_E7D3A0(var_15C, CVar(var_94.Fields.Item("JobYear")))
  loc_1485B3D:       Proc_6_39_E7D3A0(var_1BC, CVar(var_94.Fields.Item("JobYear")))
  loc_1485B52:       var_17C = (var_15C + 1)
  loc_1485B9B:       var_280.Fields.Item("WYear").Value = IIf((var_128 > CVar(var_9A)), CVar(CStr((var_128 > 0))), CVar(CStr(var_1BC)))
  loc_1485BCD:       var_C4 = "CurWages"
  loc_1485BF0:       Proc_6_39_E7D3A0(var_128, CVar(var_94.Fields.Item(var_C4)))
  loc_1485BFE:       var_D4 = "WYear"
  loc_1485C1A:       var_138 = var_280.Fields.Item(var_D4).Value
  loc_1485C23:       var_110 = CStr(var_138)
  loc_1485C2F:       var_14C = (var_128 * CVar(Val(var_110)))
  loc_1485C51:       Proc_6_47_EF6560(var_1BC, ((var_14C * CVar(var_9E)) / CVar(var_9C)))
  loc_1485C79:       var_280.Fields.Item("Gratuity").Value = var_1BC
  loc_1485CA6:       var_280.Update var_C4, var_D4
  loc_1485CAD:       Set var_280 = Nothing 
  loc_1485CB7:       var_96 = (var_96 + 1)
  loc_1485CBA:     End If
  loc_1485CBD:     var_94.MoveNext
  loc_1485CC2:     GoTo loc_1485597
  loc_1485CC5:   End If
  loc_1485CC5: End If
  loc_1485CDC: If (Me.RecordCount <= 0) Then
  loc_1485CE5:   Call 0.Method_arg_50 (var_110, var_96)
  loc_1485D06:   MsgBox("** No Records Found to Print **", &H40, CVar(var_110), var_138, var_14C)
  loc_1485D1B:   global_80 = 0
  loc_1485D1E:   Exit Sub
  loc_1485D1F: End If
  loc_1485D25: global_76 = "GratuityReport"
  loc_1485D46: global_72 = CStr(Ucase("Gratuity Report"))
  loc_1485D59: Set var_94 = Nothing
  loc_1485D5C: Exit Sub
  loc_1485D5D: ' Referenced from: 148517C
  loc_1485D65: Proc_6_60_E63754(0, 0)
  loc_1485D6A: Exit Sub
End Sub

Public Sub Proc_311_53_14338F4
  'Data Table: 4C9354
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_118 As String
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_184 As Variant
  Dim var_DC As String
  Dim var_164 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As String
  Dim var_1B4 As Variant
  Dim var_BC As Double
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_1D4 As String
  Dim var_274 As Variant
  Dim unk_4C93A1 As Connection15
  Dim var_94 As Recordset15
  Dim var_96 As Integer
  Dim var_27C As Recordset15
  Dim Me As Recordset15
  loc_1432E50: On Error Goto loc_14338E3
  loc_1432E56: var_CC = CVar(CLng(0)) 'Long
  loc_1432E5B: var_EC = 1
  loc_1432E8C: Call Proc_311_45_1063470(CInt(0), CStr(Me.FGrid.TextMatrix)))
  loc_1432EA0: If (var_11A = 0) Then
  loc_1432EA8:   global_80 = 0
  loc_1432EAB:   Exit Sub
  loc_1432EAC: End If
  loc_1432EAF: var_CC = CVar(CLng(1)) 'Long
  loc_1432EB4: var_EC = 1
  loc_1432EE5: Call Proc_311_45_1063470(CInt(1), CStr(Me.FGrid.TextMatrix)))
  loc_1432EF9: If (var_11A = 0) Then
  loc_1432F01:   global_80 = 0
  loc_1432F04:   Exit Sub
  loc_1432F05: End If
  loc_1432F08: var_CC = CVar(CLng(2)) 'Long
  loc_1432F0D: var_EC = 1
  loc_1432F20: var_110 = Me.FGrid.TextMatrix)
  loc_1432F3E: Call Proc_311_45_1063470(CInt(2), CStr(var_110))
  loc_1432F52: If (var_11A = 0) Then
  loc_1432F5A:   global_80 = 0
  loc_1432F5D:   Exit Sub
  loc_1432F5E: End If
  loc_1432F6A: Set var_100 = Me.Check1
  loc_1432F70: Call 0.Method_Proc_311_53_14338F40 (1, var_120, var_112, global_80, var_11A, var_110, var_EC)
  loc_1432F78: var_CC = var_120.Value
  loc_1432F8E: If (CLng(var_112) = 0) Then
  loc_1432FAC:   Call Proc_311_41_1281064(global_156, 1, CByte(1))
  loc_1432FB7:   global_140 = var_118
  loc_1432FC7:   If (global_80 = 0) Then
  loc_1432FCA:     Exit Sub
  loc_1432FCB:   End If
  loc_1432FCB: End If
  loc_1432FD7: Set var_100 = Me.Check1
  loc_1432FDD: Call 0.Method_Proc_311_53_14338F40 (1, var_120, var_112, var_118, global_80)
  loc_1432FE5: var_11A = var_120.Value
  loc_1432FFB: If (CLng(var_112) = 0) Then
  loc_1433016:   var_90 = var_90 & " And Emp_Code in ( " & global_140 & ") "
  loc_1433020: End If
  loc_143303A: Call Proc_311_59_FE2F10(New, var_100, var_110)
  loc_1433045: Set global_88 = var_100
  loc_1433052: var_CC = CVar(CLng(0)) 'Long
  loc_143307E: var_A0 = CDate(1 & CStr(Me.FGrid.TextMatrix)))
  loc_1433094: var_CC = CVar(CLng(1)) 'Long
  loc_14330C0: var_A8 = CDate(1 & CStr(Me.FGrid.TextMatrix)))
  loc_14330D3: var_B0 = var_A0
  loc_14330D6: ' Referenced from: 1433366
  loc_14330DD: If (var_B0 <= var_A8) Then
  loc_14330EF:   If ((var_B0 = var_A0) And (var_B0 = var_A8)) Then
  loc_14330F9:     var_184 = CVar(var_B4 & "('") 'String
  loc_143311C:     var_134 = Format(var_B0, "MMM")
  loc_143314C:     var_164 = (1 + Format(var_B0, "YYYY"))
  loc_143315B:     var_194 = (1 + Ucase(var_164))
  loc_1433164:     var_1B4 = (var_194 + "')")
  loc_1433169:     var_B4 = CStr(var_1B4)
  loc_1433184:   Else
  loc_143318B:     If (var_B0 = var_A0) Then
  loc_143318E:       var_1A4 = "('"
  loc_14331B3:       var_134 = Format(var_B0, "MMM")
  loc_14331E3:       var_164 = (1 + Format(var_B0, "YYYY"))
  loc_14331F2:       var_184 = (1 + Ucase(var_164))
  loc_14331FB:       var_194 = (var_184 + "',")
  loc_1433200:       var_B4 = CStr(var_194)
  loc_1433219:     Else
  loc_1433220:       If (var_B0 = var_A8) Then
  loc_143322A:         var_184 = CVar(var_B4 & "'") 'String
  loc_143324D:         var_134 = Format(var_B0, "MMM")
  loc_143327D:         var_164 = (1 + Format(var_B0, "YYYY"))
  loc_143328C:         var_194 = (1 + Ucase(var_164))
  loc_1433295:         var_1B4 = (var_194 + "')")
  loc_143329A:         var_B4 = CStr(var_1B4)
  loc_14332B5:       Else
  loc_14332BC:         var_184 = CVar(var_B4 & "'") 'String
  loc_14332DF:         var_134 = Format(var_B0, "MMM")
  loc_1433307:         var_154 = Format(var_B0, "YYYY")
  loc_143330F:         var_164 = (1 + var_154)
  loc_143331E:         var_194 = (1 + Ucase(var_164))
  loc_1433327:         var_1B4 = (var_194 + "',")
  loc_143332C:         var_B4 = CStr(var_1B4)
  loc_1433344:       End If
  loc_1433344:     End If
  loc_1433344:   End If
  loc_1433360:   var_B0 = CDate(DateAdd("m", CDbl(1), var_B0))
  loc_1433366:   GoTo loc_14330D6
  loc_1433369: End If
  loc_1433376: var_CC = CVar(CLng(2)) 'Long
  loc_1433388: Set var_100 = Me.FGrid
  loc_143338E: var_110 = var_100.TextMatrix)
  loc_1433399: var_118 = CStr(var_110)
  loc_14333A1: var_BC = Val(var_118)
  loc_14333AD: var_DC = "Select E.Code As EmpCode,E.name As EmpName,E.F_Name As EmpFName,Case When Datediff(yyyy,E.Birth_Date,"
  loc_14333B5: var_CC = MemVar_1F950F4
  loc_14333BD: Proc_6_7_F26918(var_110, var_CC, var_DC, var_BC, 1, var_CC, var_B0, var_134)
  loc_14333C5: var_134 = 1 & var_110 
  loc_14333DD: Proc_6_7_F26918(var_154, MemVar_1F950F4, var_134 & ") IS NULL Then '' When Datediff(yyyy,E.Birth_Date,", 1, var_184)
  loc_14333FD: Proc_6_7_F26918(var_184, MemVar_1F950F4, var_134 & var_154 & ")>=15 Then 'Yes' When Datediff(yyyy,E.Birth_Date,", 1)
  loc_1433409: var_1D4 = ")<15 Then 'No' End As AgeOver15,D.Name As Designation,S.TotWDays,S.TotWages,S.TotBonus From (Select Emp_Code, Sum(Work_day) As TotWDays,Sum(Basic+DA) As TotWages,Sum(Basic+DA)/100*"
  loc_143343F: var_274 = 1 & var_184 & var_1D4 & CVar(var_BC) & " As TotBonus from Salary Where" & CVar(" Mth_Year In " & var_B4) & CVar(var_90) & " Group By Emp_Code) S Left Join Employee E On S.Emp_Code=E.Code Left Join Desig D On D.Code=E.Designation Order By E.Name" 
  loc_143347C: unk_4C93A1.Execute CStr(var_274), var_110, -1
  loc_1433487: Set var_94 = var_100
  loc_14334A4: If (var_94.RecordCount > 0) Then
  loc_14334A9:   var_96 = 1
  loc_14334AC:   ' Referenced from: 1433848
  loc_14334BB:   If Not(var_94.EOF) Then
  loc_14334C4:     Set var_27C = global_88 
  loc_14334D3:     var_27C.AddNew var_CC, var_DC
  loc_1433500:     var_27C.Fields.Item("SNo").Value = CVar(CStr(var_96))
  loc_143351E:     var_100 = var_94.Fields
  loc_143355A:     var_27C.Fields.Item("EmpCode").Value = CVar(Proc_6_38_E69628(CVar(var_100.Item("EmpCode")), var_96, var_100))
  loc_14335BA:     var_27C.Fields.Item("EmpName").Value = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("EmpName")), var_184))
  loc_143361A:     var_27C.Fields.Item("EmpFName").Value = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("EmpFName"))))
  loc_143367A:     var_27C.Fields.Item("Age15").Value = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("AgeOver15"))))
  loc_14336B7:     var_134 = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("Designation")))) 'String
  loc_14336DA:     var_27C.Fields.Item("Desig").Value = var_134
  loc_1433715:     Proc_6_39_E7D3A0(var_134, CVar(var_94.Fields.Item("TotWDays")))
  loc_143371F:     var_144 = CVar(CStr(var_134)) 'String
  loc_1433742:     var_27C.Fields.Item("TotDays").Value = var_144
  loc_1433781:     Proc_6_47_EF6560(var_134, CVar(var_94.Fields.Item("TotWages")))
  loc_14337A9:     var_27C.Fields.Item("TotWages").Value = var_134
  loc_14337C1:     var_CC = "TotBonus"
  loc_14337E4:     Proc_6_47_EF6560(var_134, CVar(var_94.Fields.Item(var_CC)))
  loc_14337F0:     var_DC = "TotBonus"
  loc_143380C:     var_27C.Fields.Item(var_DC).Value = var_134
  loc_143382C:     var_27C.Update var_CC, var_DC
  loc_1433833:     Set var_27C = Nothing 
  loc_143383D:     var_96 = (var_96 + 1)
  loc_1433843:     var_94.MoveNext
  loc_1433848:     GoTo loc_14334AC
  loc_143384B:   End If
  loc_143384B: End If
  loc_1433862: If (Me.RecordCount <= 0) Then
  loc_143386B:   Call 0.Method_arg_50 (var_118, var_96)
  loc_143388C:   MsgBox("** No Records Found to Print **", &H40, CVar(var_118), var_144, var_154)
  loc_14338A1:   global_80 = 0
  loc_14338A4:   Exit Sub
  loc_14338A5: End If
  loc_14338AB: global_76 = "FormC"
  loc_14338CC: global_72 = CStr(Ucase("Form C"))
  loc_14338DF: Set var_94 = Nothing
  loc_14338E2: Exit Sub
  loc_14338E3: ' Referenced from: 1432E50
  loc_14338EB: Proc_6_60_E63754(0, 0)
  loc_14338F0: Exit Sub
End Sub

Public Sub Proc_311_54_11CF6A0
  'Data Table: 4C9354
  Dim var_9C As Variant
  Dim var_BC As Long
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_13C As Variant
  Dim var_15C As Long
  Dim var_170 As Variant
  Dim var_230 As Variant
  Dim var_250 As Long
  Dim var_274 As Variant
  Dim var_1D0 As Variant
  Dim var_E8 As String
  Dim unk_4C93A1 As Connection15
  Dim Me As Recordset15
  loc_11CF28C: On Error Goto loc_11CF691
  loc_11CF292: var_9C = CVar(CLng(1)) 'Long
  loc_11CF297: var_BC = 0
  loc_11CF2C8: Call Proc_311_45_1063470(CInt(1), CStr(Me.FGrid.TextMatrix)))
  loc_11CF2DC: If (var_EA = 0) Then
  loc_11CF2E4:   global_80 = 0
  loc_11CF2E7:   Exit Sub
  loc_11CF2E8: End If
  loc_11CF2EB: var_9C = CVar(CLng(1)) 'Long
  loc_11CF2F0: var_BC = 1
  loc_11CF312: var_13C = CVar(CLng(1)) 'Long
  loc_11CF317: var_15C = 1
  loc_11CF324: Set var_170 = Me.FGrid
  loc_11CF339: var_230 = CVar(CLng(1)) 'Long
  loc_11CF33E: var_250 = 1
  loc_11CF351: var_274 = Me.FGrid.TextMatrix)
  loc_11CF371: var_11C = "MMM"
  loc_11CF381: var_12C = Format(CVar(CStr(Me.FGrid.TextMatrix))), var_11C)
  loc_11CF3B0: var_1D0 = (1 + Format(CVar(CStr(var_170.TextMatrix))), "YYYY"))
  loc_11CF429: Proc_6_7_F26918(var_324, DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & Format(CVar(CStr(var_274)), "mmm/yyyy"))))), 1, "01/", 1 & Ucase(var_1D0) & "' And E.Joining_Date<=", var_12C, 1)
  loc_11CF436: var_8C = CStr(1 & var_324)
  loc_11CF47F: Set var_D0 = Me.Check1
  loc_11CF485: Call 0.Method_Proc_311_54_11CF6A00 (1, var_170, var_E2, " WHERE SAL.Mth_year='", var_274)
  loc_11CF48D: var_250 = var_170.Value
  loc_11CF4A3: If (CLng(var_E2) = 0) Then
  loc_11CF4C1:   Call Proc_311_41_1281064(global_156, 1, CByte(1))
  loc_11CF4CC:   global_140 = var_E8
  loc_11CF4DC:   If (global_80 = 0) Then
  loc_11CF4DF:     Exit Sub
  loc_11CF4E0:   End If
  loc_11CF4E0: End If
  loc_11CF4EC: Set var_D0 = Me.Check1
  loc_11CF4F2: Call 0.Method_Proc_311_54_11CF6A00 (1, var_170, var_E2, var_E8)
  loc_11CF4FA: var_230 = var_170.Value
  loc_11CF510: If (CLng(var_E2) = 0) Then
  loc_11CF52B:   var_8C = var_8C & " And E.Code in ( " & global_140 & ") "
  loc_11CF535: End If
  loc_11CF538: var_9C = CVar(CLng(2)) 'Long
  loc_11CF53D: var_BC = 1
  loc_11CF56C: If (CStr(Me.FGrid.TextMatrix)) <> "All") Then
  loc_11CF576:   var_E8 = var_8C & " And E.Category in ( '"
  loc_11CF57C:   var_9C = CVar(CLng(2)) 'Long
  loc_11CF581:   var_BC = 2
  loc_11CF58E:   Set var_D0 = Me.FGrid
  loc_11CF594:   var_E0 = var_D0.TextMatrix)
  loc_11CF5AA:   var_8C = var_BC & CStr(var_E0) & "') "
  loc_11CF5BC: End If
  loc_11CF5C3: var_88 = "SELECT E.Name, E.F_Name, E.ESI_Code, E.PF_Code,E.BankAcNo,E.Joining_Date,Case When IsNull(SAL.Emp_Basic,0)<>0 Then IsNull(SAL.Emp_Basic,0) Else E.Basic END Basic,E.INCREMENT, SAL.Work_Day,SAL.CL,SAL.Sunday,SAL.Holiday,SAL.Absent,SAL.Income_Tax, SAL.Leave, SAL.Basic as CalBasic,SAL.DA, SAL.HRA, SAL.Income_Tax, SAL.Other_Allow, SAL.Other_Deduc, SAL.Conveyance, SAL.Medical, SAL.LTA, SAL.PF, SAL.ESI, SAL.Loan, SAL.Advance, SAL.OVERTIME,SAL.OVERTIMEAMT,SAL.Net_Salary, SAL.Loan_Bal, SAL.Adv_Bal, Desig.Name As DesigDesc, EMPCategory.Name As CatDesc,SAL.Mth_year,SAL.Emp_Code FROM ((EMPLOYEE E Left JOIN Desig ON E.Designation = Desig.Code) left JOIN EMPCategory ON E.Category = EMPCategory.Code) left JOIN SALARY SAL ON E.Code = SAL.Emp_Code " & var_8C
  loc_11CF5DC: unk_4C93A1.Execute var_88, var_E0, -1
  loc_11CF5ED: Set global_88 = var_D0
  loc_11CF612: If (Me.RecordCount <= 0) Then
  loc_11CF61B:   Call 0.Method_arg_50 (var_E8, var_D0, var_9C, var_E8)
  loc_11CF631:   var_9C = "** No Records Found to Print **"
  loc_11CF63C:   MsgBox(var_9C, &H40, CVar(var_E8), var_11C, var_12C)
  loc_11CF651:   global_80 = 0
  loc_11CF654:   Exit Sub
  loc_11CF655: End If
  loc_11CF65B: global_76 = "prPaySlip"
  loc_11CF665: Call 0.Method_arg_50 (var_E8, global_80, var_BC)
  loc_11CF682: global_72 = CStr(Ucase(CVar(var_E8)))
  loc_11CF690: Exit Sub
  loc_11CF691: ' Referenced from: 11CF28C
  loc_11CF699: Proc_6_60_E63754(0, var_9C)
  loc_11CF69E: Exit Sub
End Sub

Public Sub Proc_311_55_F84880(arg_C) 'F84880
  'Data Table: 4C9354
  Dim var_8C As Recordset15
  Dim var_2384 As Variant
  loc_F84725: Set var_8C = arg_C 
  loc_F8474D: var_8C.Fields.Append "EmpName", &HC8, &H23
  loc_F84779: var_8C.Fields.Append "EmpCode", &HC8, 8
  loc_F847A5: var_8C.Fields.Append "FName", &HC8, &H23
  loc_F847D1: var_8C.Fields.Append "Amount", 5, 0
  loc_F847FD: var_8C.Fields.Append "LoanInstall", 5, 0
  loc_F84829: var_8C.Fields.Append "LoanBal", 5, 0
  loc_F84839: var_8C.CursorType = 3
  loc_F84846: var_8C.LockType = 3
  loc_F84865: var_8C.Open var_A0, var_B0, -1
  loc_F8486C: Set var_8C = Nothing 
  loc_F84873: Set var_88 = arg_C 
  loc_F84877: Proc_311_55_F84880 = -1
  loc_F8487E: var_2384 = CVar(CStr(-1)) 'String
End Sub

Public Sub Proc_311_56_FC3594(arg_C) 'FC3594
  'Data Table: 4C9354
  Dim var_8C As Recordset15
  loc_FC33E1: Set var_8C = arg_C 
  loc_FC3409: var_8C.Fields.Append "EmpName", &HC8, &H23
  loc_FC3435: var_8C.Fields.Append "EmpCode", &HC8, 8
  loc_FC3461: var_8C.Fields.Append "Loan_Date", 7, 4
  loc_FC348D: var_8C.Fields.Append "OpLoan", 5, 0
  loc_FC34B9: var_8C.Fields.Append "Balance", 5, 0
  loc_FC34E5: var_8C.Fields.Append "Amount", 5, 0
  loc_FC3511: var_8C.Fields.Append "Refund", 5, 0
  loc_FC353D: var_8C.Fields.Append "LoanInstall", 5, 0
  loc_FC354D: var_8C.CursorType = 3
  loc_FC355A: var_8C.LockType = 3
  loc_FC3579: var_8C.Open var_A0, var_B0, -1
  loc_FC3580: Set var_8C = Nothing 
  loc_FC3587: Set var_88 = arg_C 
  loc_FC358B: Proc_311_56_FC3594 = -1
  loc_FC3593: -1(&H20) = var_A0
End Sub

Public Sub Proc_311_57_FA4034(arg_C) 'FA4034
  'Data Table: 4C9354
  Dim var_8C As Recordset15
  loc_FA3EAD: Set var_8C = arg_C 
  loc_FA3ED5: var_8C.Fields.Append "EmpName", &HC8, &H23
  loc_FA3F01: var_8C.Fields.Append "EmpCode", &HC8, 8
  loc_FA3F2D: var_8C.Fields.Append "V_Type", &HC8, 4
  loc_FA3F59: var_8C.Fields.Append "V_Date", 7, 4
  loc_FA3F85: var_8C.Fields.Append "Cr", 5, 0
  loc_FA3FB1: var_8C.Fields.Append "Dr", 5, 0
  loc_FA3FDD: var_8C.Fields.Append "Remark", &HC8, &H32
  loc_FA3FED: var_8C.CursorType = 3
  loc_FA3FFA: var_8C.LockType = 3
  loc_FA4019: var_8C.Open var_A0, var_B0, -1
  loc_FA4020: Set var_8C = Nothing 
  loc_FA4027: Set var_88 = arg_C 
  loc_FA402B: Proc_311_57_FA4034 = -1
End Sub

Public Sub Proc_311_58_1022F3C(arg_C) '1022F3C
  'Data Table: 4C9354
  Dim var_8C As Recordset15
  loc_1022D05: Set var_8C = arg_C 
  loc_1022D2D: var_8C.Fields.Append "SNo", &HC8, 4
  loc_1022D59: var_8C.Fields.Append "EmpCode", &HC8, 8
  loc_1022D85: var_8C.Fields.Append "EmpName", &HC8, &H32
  loc_1022DB1: var_8C.Fields.Append "EmpFName", &HC8, &H32
  loc_1022DDD: var_8C.Fields.Append "Address", &HC8, &H64
  loc_1022E09: var_8C.Fields.Append "DOJ", &HC8, &HB
  loc_1022E35: var_8C.Fields.Append "Desig", &HC8, &H23
  loc_1022E61: var_8C.Fields.Append "CurWages", &HC8, &HC
  loc_1022E8D: var_8C.Fields.Append "SerPeriod", &HC8, &H14
  loc_1022EB9: var_8C.Fields.Append "WYear", &HC8, 2
  loc_1022EE5: var_8C.Fields.Append "Gratuity", &HC8, &HC
  loc_1022EF5: var_8C.CursorType = 3
  loc_1022F02: var_8C.LockType = 3
  loc_1022F21: var_8C.Open var_A0, var_B0, -1
  loc_1022F28: Set var_8C = Nothing 
  loc_1022F2F: Set var_88 = arg_C 
  loc_1022F33: Proc_311_58_1022F3C = -1
End Sub

Public Sub Proc_311_59_FE2F10(arg_C) 'FE2F10
  'Data Table: 4C9354
  Dim var_8C As Recordset15
  loc_FE2D31: Set var_8C = arg_C 
  loc_FE2D59: var_8C.Fields.Append "SNo", &HC8, 4
  loc_FE2D85: var_8C.Fields.Append "EmpCode", &HC8, 8
  loc_FE2DB1: var_8C.Fields.Append "EmpName", &HC8, &H23
  loc_FE2DDD: var_8C.Fields.Append "EmpFName", &HC8, &H32
  loc_FE2E09: var_8C.Fields.Append "Age15", &HC8, 3
  loc_FE2E35: var_8C.Fields.Append "Desig", &HC8, &H23
  loc_FE2E61: var_8C.Fields.Append "TotDays", &HC8, 5
  loc_FE2E8D: var_8C.Fields.Append "TotWages", &HC8, &HC
  loc_FE2EB9: var_8C.Fields.Append "TotBonus", &HC8, &HC
  loc_FE2EC9: var_8C.CursorType = 3
  loc_FE2ED6: var_8C.LockType = 3
  loc_FE2EF5: var_8C.Open var_A0, var_B0, -1
  loc_FE2EFC: Set var_8C = Nothing 
  loc_FE2F03: Set var_88 = arg_C 
  loc_FE2F07: Proc_311_59_FE2F10 = -1
End Sub

Public Sub Proc_311_60_14F8C3C
  'Data Table: 4C9354
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_108 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_1D8 As Variant
  Dim var_158 As String
  Dim var_168 As Variant
  Dim var_178 As String
  Dim var_248 As Variant
  Dim var_9C As String
  Dim var_138 As Variant
  loc_14F7E04: On Error Goto loc_14F8C34
  loc_14F7E18: Call 0.Method_arg_90 (var_8C, var_90)
  loc_14F7E20: Call 0.Method_arg_24 (var_86)
  loc_14F7E2C: For var_94 =  To CInt(var_90): 1 = var_94 'Integer
  loc_14F7E45:   Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F7E4D:   Call 0.Method_arg_20 (var_98)
  loc_14F7E55:   Call 0.Method_arg_30 (var_9C)
  loc_14F7E6B:   var_CC = Ucase(CVar(var_9C)) 'Variant
  loc_14F7E9B:   If (var_CC = Ucase("Title")) Then
  loc_14F7EA7:     Call 0.Method_arg_50 (var_9C)
  loc_14F7ECA:     Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F7ED2:     Call 0.Method_arg_20 (var_98)
  loc_14F7EDA:     Call 0.Method_arg_38 ("'" & var_9C & "'")
  loc_14F7EF2:   Else
  loc_14F7F14:     If (var_CC = Ucase("BetweenDate")) Then
  loc_14F7F1A:       var_DC = CVar(CLng(0)) 'Long
  loc_14F7F2C:       Set var_8C = Me.FGrid
  loc_14F7F32:       var_AC = var_8C.TextMatrix)
  loc_14F7F53:       Set var_98 = Me.FGrid
  loc_14F7F59:       var_1D8 = var_98.TextMatrix)
  loc_14F7F65:       var_158 = "'From :'+ '"
  loc_14F7F95:       var_178 = "' + ' To ' + '"
  loc_14F7FCE:       var_248 = 1 & Format(CVar(CStr(var_1D8)), "dd/mmm/yyyy") & "'" 
  loc_14F7FD2:       var_9C = CStr(var_248)
  loc_14F7FE6:       Call 0.Method_arg_90 (var_24C, CLng(var_86), var_250, var_9C, 1, 1 & Format(CVar(CStr(var_AC)), "dd/mmm/yyyy") & var_178, 1)
  loc_14F7FEE:       Call 0.Method_arg_20 (var_158, var_1D8, 1, CVar(CLng(1)))
  loc_14F7FF6:       Call 0.Method_arg_38 (var_AC, 1)
  loc_14F8024:     End If
  loc_14F8024:   End If
  loc_14F8027: Next var_94 'Integer
  loc_14F8032: var_254 = global_52
  loc_14F803D: If (var_254 = "LoanAdvSumm") Then
  loc_14F8051:   Call 0.Method_arg_90 (var_8C, var_90)
  loc_14F8059:   Call 0.Method_arg_24 (var_86)
  loc_14F8065:   For var_258 =  To CInt(var_90): 1 = var_258 'Integer
  loc_14F807E:     Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F8086:     Call 0.Method_arg_20 (var_98)
  loc_14F808E:     Call 0.Method_arg_30 (var_9C)
  loc_14F80D4:     If (Ucase(CVar(var_9C)) = Ucase("ForMonth")) Then
  loc_14F80DA:       var_DC = CVar(CLng(1)) 'Long
  loc_14F80EC:       Set var_8C = Me.FGrid
  loc_14F80F2:       var_AC = var_8C.TextMatrix)
  loc_14F80FE:       var_158 = "'For Month:'+' "
  loc_14F8137:       var_9C = CStr(1 & Format(CVar(CStr(var_AC)), "MMMYYYY") & "'")
  loc_14F814B:       Call 0.Method_arg_90 (var_98, CLng(var_86), var_24C, var_9C, 1)
  loc_14F8153:       Call 0.Method_arg_20 (var_158, var_AC)
  loc_14F815B:       Call 0.Method_arg_38 (1)
  loc_14F817B:     End If
  loc_14F817E:   Next var_258 'Integer
  loc_14F8186: Else
  loc_14F818E:   If (var_254 = "PayrollReg") Then
  loc_14F81A2:     Call 0.Method_arg_90 (var_8C, var_90)
  loc_14F81AA:     Call 0.Method_arg_24 (var_86)
  loc_14F81B6:     For var_26C =  To CInt(var_90):   1 = var_26C 'Integer
  loc_14F81CF:       Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F81D7:       Call 0.Method_arg_20 (var_98)
  loc_14F81DF:       Call 0.Method_arg_30 (var_9C)
  loc_14F81F5:       var_27C = Ucase(CVar(var_9C)) 'Variant
  loc_14F8225:       If (var_27C = Ucase("ForMonth")) Then
  loc_14F822B:         var_DC = CVar(CLng(1)) 'Long
  loc_14F8243:         var_AC = Me.FGrid.TextMatrix)
  loc_14F824F:         var_158 = "'For Month:'+' "
  loc_14F829C:         Call 0.Method_arg_90 (var_98, CLng(var_86), var_24C, CStr(1 & Format(CVar(CStr(var_AC)), "MMM/YYYY") & "'"), 1)
  loc_14F82A4:         Call 0.Method_arg_20 (var_158, var_AC)
  loc_14F82AC:         Call 0.Method_arg_38 (1)
  loc_14F82CF:       Else
  loc_14F82F1:         If (var_27C = Ucase("OtherBank")) Then
  loc_14F82F7:           var_DC = CVar(CLng(2)) 'Long
  loc_14F8309:           Set var_8C = Me.FGrid
  loc_14F831A:           var_9C = CStr(var_8C.TextMatrix))
  loc_14F832B:           If (var_9C = "Yes") Then
  loc_14F8341:             Call 0.Method_arg_90 (var_8C, CLng(var_86), var_98, "'Other than Bank:     Yes'")
  loc_14F8349:             Call 0.Method_arg_20 (1, var_DC)
  loc_14F8351:             Call 0.Method_arg_38 (var_DC)
  loc_14F8360:           Else
  loc_14F8373:             Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F837B:             Call 0.Method_arg_20 (var_98)
  loc_14F8383:             Call 0.Method_arg_38 ("'Other than Bank:       No'")
  loc_14F838F:           End If
  loc_14F838F:         End If
  loc_14F838F:       End If
  loc_14F8392:     Next var_26C 'Integer
  loc_14F839A:   Else
  loc_14F83A2:     If Not (var_254 = "PaySlip") Then
  loc_14F83AD:       If Not (var_254 = "PFStatement") Then
  loc_14F83B8:         If (var_254 = "AttendanceRep") Then
  loc_14F83BB:         End If
  loc_14F83BB:       End If
  loc_14F83CC:       Call 0.Method_arg_90 (var_8C, var_90)
  loc_14F83D4:       Call 0.Method_arg_24 (var_86)
  loc_14F83E0:       For var_280 =  To CInt(var_90):     1 = var_280 'Integer
  loc_14F83F9:         Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F8401:         Call 0.Method_arg_20 (var_98)
  loc_14F8409:         Call 0.Method_arg_30 (var_9C)
  loc_14F841F:         var_290 = Ucase(CVar(var_9C)) 'Variant
  loc_14F844F:         If (var_290 = Ucase("ForMonth")) Then
  loc_14F8455:           var_DC = CVar(CLng(1)) 'Long
  loc_14F846D:           var_AC = Me.FGrid.TextMatrix)
  loc_14F8479:           var_158 = "'For Month:'+' "
  loc_14F84C6:           Call 0.Method_arg_90 (var_98, CLng(var_86), var_24C, CStr(1 & Format(CVar(CStr(var_AC)), "MMM/YYYY") & "'"), 1)
  loc_14F84CE:           Call 0.Method_arg_20 (var_158, var_AC)
  loc_14F84D6:           Call 0.Method_arg_38 (1)
  loc_14F84F9:         Else
  loc_14F851B:           If (var_290 = Ucase("ForEmployee")) Then
  loc_14F852A:             Set var_8C = Me.Check1
  loc_14F8530:             Call 0.Method_Proc_311_60_14F8C3C0 (1, var_98)
  loc_14F854E:             If (CLng(var_98.Value) = 0) Then
  loc_14F8561:               var_DC = global_172
  loc_14F8592:               Call 0.Method_arg_90 (var_8C, CLng(var_86), var_98)
  loc_14F859A:               Call 0.Method_arg_20 (CStr("'For Employee :       " & Left(var_DC, &HC8) & "'"))
  loc_14F85A2:               Call 0.Method_arg_38 (var_DC)
  loc_14F85BD:             Else
  loc_14F85D0:               Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F85D8:               Call 0.Method_arg_20 (var_98)
  loc_14F85E0:               Call 0.Method_arg_38 ("'For Employees :All'")
  loc_14F85EC:             End If
  loc_14F85EF:           Else
  loc_14F8611:             If (var_290 = Ucase("ForCategory")) Then
  loc_14F8617:               var_DC = CVar(CLng(2)) 'Long
  loc_14F861C:               var_108 = 1
  loc_14F864B:               If (CStr(Me.FGrid.TextMatrix)) <> "All") Then
  loc_14F8654:                 var_DC = CVar(CLng(2)) 'Long
  loc_14F8659:                 var_108 = 1
  loc_14F8666:                 Set var_8C = Me.FGrid
  loc_14F8677:                 var_9C = CStr(var_8C.TextMatrix))
  loc_14F8695:                 Call 0.Method_arg_90 (var_98, CLng(var_86), var_24C, var_108 & var_9C & "'")
  loc_14F869D:                 Call 0.Method_arg_20 (var_DC, "'For Category :         ")
  loc_14F86A5:                 Call 0.Method_arg_38 (var_108)
  loc_14F86C2:               Else
  loc_14F86D5:                 Call 0.Method_arg_90 (var_8C, CLng(var_86), var_98)
  loc_14F86DD:                 Call 0.Method_arg_20 ("'For Category :All'")
  loc_14F86E5:                 Call 0.Method_arg_38 (var_DC)
  loc_14F86F1:               End If
  loc_14F86F1:             End If
  loc_14F86F1:           End If
  loc_14F86F1:         End If
  loc_14F86F4:       Next var_280 'Integer
  loc_14F86FC:     Else
  loc_14F8704:       If (var_254 = "LoanReg") Then
  loc_14F8718:         Call 0.Method_arg_90 (var_8C, var_90)
  loc_14F8720:         Call 0.Method_arg_24 (var_86)
  loc_14F872C:         For var_294 =  To CInt(var_90):       1 = var_294 'Integer
  loc_14F8745:           Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F874D:           Call 0.Method_arg_20 (var_98)
  loc_14F8755:           Call 0.Method_arg_30 (var_9C)
  loc_14F879B:           If (Ucase(CVar(var_9C)) = Ucase("ForEmployee")) Then
  loc_14F87AA:             Set var_8C = Me.Check1
  loc_14F87B0:             Call 0.Method_Proc_311_60_14F8C3C0 (1, var_98)
  loc_14F87CE:             If (CLng(var_98.Value) = 0) Then
  loc_14F87FE:               var_9C = CStr("'For Employee :       " & Left(global_172, &HC8) & "'")
  loc_14F8812:               Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F881A:               Call 0.Method_arg_20 (var_98)
  loc_14F8822:               Call 0.Method_arg_38 (var_9C)
  loc_14F883D:             Else
  loc_14F8850:               Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F8858:               Call 0.Method_arg_20 (var_98)
  loc_14F8860:               Call 0.Method_arg_38 ("'For Employees :All'")
  loc_14F886C:             End If
  loc_14F886C:           End If
  loc_14F886F:         Next var_294 'Integer
  loc_14F8877:       Else
  loc_14F887F:         If (var_254 = "FormC") Then
  loc_14F8893:           Call 0.Method_arg_90 (var_8C, var_90)
  loc_14F889B:           Call 0.Method_arg_24 (var_86)
  loc_14F88A7:           For var_2A8 =  To CInt(var_90):         1 = var_2A8 'Integer
  loc_14F88C0:             Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F88C8:             Call 0.Method_arg_20 (var_98)
  loc_14F88D0:             Call 0.Method_arg_30 (var_9C)
  loc_14F88E6:             var_2B8 = Ucase(CVar(var_9C)) 'Variant
  loc_14F8916:             If (var_2B8 = Ucase("ForMonth")) Then
  loc_14F891C:               var_DC = CVar(CLng(0)) 'Long
  loc_14F8934:               var_AC = Me.FGrid.TextMatrix)
  loc_14F8955:               Set var_98 = Me.FGrid
  loc_14F895B:               var_1D8 = var_98.TextMatrix)
  loc_14F8998:               var_168 = (Format(CVar(CStr(var_AC)), "MMMM YY") + " to ")
  loc_14F89CE:               Proc_6_17_EAAE40(var_248, 1 & Format(CVar(CStr(var_1D8)), "MMMM YY"), 1, 1 & 1 & Format(CVar(CStr(var_AC)), "MMM/YYYY"), 1, "Form ")
  loc_14F89EA:               Call 0.Method_arg_90 (var_24C, CLng(var_86), var_250, CStr(var_248), var_1D8)
  loc_14F89F2:               Call 0.Method_arg_20 (1, CVar(CLng(1)), var_AC)
  loc_14F89FA:               Call 0.Method_arg_38 (1)
  loc_14F8A2B:             Else
  loc_14F8A4D:               If (var_2B8 = Ucase("BonusPer")) Then
  loc_14F8A65:                 Set var_8C = Me.FGrid
  loc_14F8A6B:                 var_AC = var_8C.TextMatrix)
  loc_14F8A86:                 var_138 = "0.00"
  loc_14F8AA1:                 Proc_6_17_EAAE40(1 & Format(CVar(CStr(var_AC)), "MMM/YYYY"), Format(CVar(CStr(var_AC)), var_138), 1, 1)
  loc_14F8AA9:                 var_9C = CStr(1 & Format(CVar(CStr(var_AC)), "MMM/YYYY"))
  loc_14F8ABD:                 Call 0.Method_arg_90 (var_98, CLng(var_86), var_24C, var_9C)
  loc_14F8AC5:                 Call 0.Method_arg_20 (var_AC, 1)
  loc_14F8ACD:                 Call 0.Method_arg_38 (CVar(CLng(2)))
  loc_14F8AEB:               End If
  loc_14F8AEB:             End If
  loc_14F8AEE:           Next var_2A8 'Integer
  loc_14F8AF6:         Else
  loc_14F8AFE:           If (var_254 = "GratuityReport") Then
  loc_14F8B12:             Call 0.Method_arg_90 (var_8C, var_90)
  loc_14F8B1A:             Call 0.Method_arg_24 (var_86)
  loc_14F8B26:             For var_2BC =  To CInt(var_90):           1 = var_2BC 'Integer
  loc_14F8B3F:               Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F8B47:               Call 0.Method_arg_20 (var_98)
  loc_14F8B4F:               Call 0.Method_arg_30 (var_9C)
  loc_14F8B95:               If (Ucase(CVar(var_9C)) = Ucase("UpToDate")) Then
  loc_14F8BB3:                 var_AC = Me.FGrid.TextMatrix)
  loc_14F8BE1:                 Proc_6_17_EAAE40(1 & Format(CVar(CStr(var_AC)), "MMM/YYYY"), Format(CVar(CStr(var_AC)), var_138), 1, 1)
  loc_14F8BFD:                 Call 0.Method_arg_90 (var_98, CLng(var_86), var_24C, CStr(1 & Format(CVar(CStr(var_AC)), "MMM/YYYY")))
  loc_14F8C05:                 Call 0.Method_arg_20 (var_AC, 1)
  loc_14F8C0D:                 Call 0.Method_arg_38 (CVar(CLng(0)))
  loc_14F8C2B:               End If
  loc_14F8C2E:             Next var_2BC 'Integer
  loc_14F8C33:           End If
  loc_14F8C33:         End If
  loc_14F8C33:       End If
  loc_14F8C33:     End If
  loc_14F8C33:   End If
  loc_14F8C33: End If
  loc_14F8C33: Exit Sub
  loc_14F8C34: ' Referenced from: 14F7E04
  loc_14F8C34: Proc_6_60_E63754()
  loc_14F8C39: Exit Sub
End Sub
