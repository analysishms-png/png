VERSION 5.00
Begin VB.Form RewardPointParam1
  Caption = "Reward Points Parameter I"
  BackColor = &HFFC0C0&
  ForeColor = &HC00000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC00000&
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 13365
  ClientHeight = 8910
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4605
    Top = 2175
    Width = 1665
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 20
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
    ForeColor = &HC00000&
    Left = 4605
    Top = 1905
    Width = 1665
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin DataGrid DGHelp
    Left = 10620
    Top = 4710
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin MSFlexGrid FGPoint
    Left = 11610
    Top = 2685
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 15
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13365
    Height = 450
    TabIndex = 12
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4605
    Top = 1635
    Width = 1665
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 20
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
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 1140
    Top = 3120
    Width = 960
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 600
    Top = 2800
    Width = 11505
    Height = 3000
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4605
    Top = 1365
    Width = 4215
    Height = 255
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
    Left = 12315
    Top = 780
    Width = 1965
    Height = 1875
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 7
    End
  End
  Begin Label LblName
    Caption = "Points Evaluate On"
    Index = 3
    ForeColor = &HC00000&
    Left = 2205
    Top = 2190
    Width = 1800
    Height = 240
    TabIndex = 17
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
    Caption = "Limit Applicable On"
    Index = 2
    ForeColor = &HC00000&
    Left = 2205
    Top = 1905
    Width = 1890
    Height = 240
    TabIndex = 16
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
    Caption = "Sales Considered As"
    Index = 1
    ForeColor = &HC00000&
    Left = 2190
    Top = 1635
    Width = 1950
    Height = 240
    TabIndex = 13
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 690
    Top = 6690
    Width = 2880
    Height = 255
    TabIndex = 11
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4095
    Top = 6675
    Width = 2790
    Height = 285
    TabIndex = 10
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 9
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
    Caption = "Reward Points Scheme"
    Index = 0
    ForeColor = &HC00000&
    Left = 2205
    Top = 1365
    Width = 2220
    Height = 240
    TabIndex = 5
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

Attribute VB_Name = "RewardPointParam1"

Private global_84 As Variant
Private MasterFormExit As Integer
Private global_64 As Integer
Private global_66 As Integer

Private Sub DGHelp_UnknownEvent_9 'F43D14
  'Data Table: 4A76E0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F43C0B: Me.DGHelp.Visible = False
  loc_F43C2A: If (Me.RecordCount > 0) Then
  loc_F43C69:   Set var_B4 = Me.Txt
  loc_F43C6F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F43C77:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F43CAA:   var_B0 = Me.Fields.Item("Name")
  loc_F43CC9:   Set var_B4 = Me.Txt
  loc_F43CCF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F43CD7:   var_B8.Text = CStr(var_B0.Value)
  loc_F43CED: End If
  loc_F43CF8: Set var_A8 = Me.Txt
  loc_F43CFE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F43D06: var_B0.SetFocus
  loc_F43D12: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E72EB4
  'Data Table: 4A76E0
  Dim arg_68FF As Double
  loc_E72E72: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E72EA3: Proc_6_138_106E830(Me.DGHelp, global_72, 0)
  loc_E72EB1: Exit Sub
  loc_E72EB2: arg_68FF = Me.FGPoint
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1004444
  'Data Table: 4A76E0
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim var_104 As TextBox
  loc_1004258: Call Proc_319_55_EB7CE4()
  loc_1004270: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_100428B: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10042BD: var_10C = CStr(Me.FGrid.TextMatrix))
  loc_10042CA: Set var_104 = Me.TxtGrid
  loc_10042D0: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_10C)
  loc_10042D8: var_108.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1004309: var_110 = CLng(Me.FGrid.Col)
  loc_1004319: If (var_110 = CLng(6)) Then
  loc_1004329:   ReDim var_114(0 To 5)
  loc_1004333:   var_94 = "<"
  loc_1004340:   var_114(0) = var_94
  loc_100434F:   var_114(1) = "<="
  loc_100435E:   var_114(2) = ">"
  loc_100436D:   var_114(3) = ">="
  loc_100437C:   var_114(4) = "="
  loc_100438B:   var_114(5) = "Between"
  loc_10043AD:   Set var_104 = Me.ListView
  loc_10043C8:   Set var_BC = Me.TxtGrid
  loc_10043E2:   Set global_100 = Proc_6_66_F0048C(var_104, var_BC, Index, Array(var_114))
  loc_1004400:   Set var_A8 = Me.TxtGrid
  loc_1004406:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C, 6)
  loc_100440E:   global_84 = var_BC.Text
  loc_1004420:   Set var_F0 = Me.TxtGrid
  loc_1004426:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, var_10C)
  loc_100442E:   var_104.Tag = var_110
  loc_1004441: End If
  loc_1004441: Exit Sub
  loc_1004442: var_94() = 
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12CEA68
  'Data Table: 4A76E0
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  loc_12CE400: On Error Goto loc_12CEA5F
  loc_12CE40D: If (CLng(Shift) = &H1B) Then
  loc_12CE41D:   Set var_88 = Me.TxtGrid
  loc_12CE423:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_12CE43D:   Set var_94 = Me.TxtGrid
  loc_12CE443:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_12CE44B:   var_98.Text = var_8C.Tag
  loc_12CE467:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12CE46C:   Call Proc_319_55_EB7CE4(arg_14)
  loc_12CE475:   Set var_88 = Me.FGrid
  loc_12CE492:   Set var_88 = Me.TxtGrid
  loc_12CE498:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_12CE4A0:   var_8C.Visible = False
  loc_12CE4AC:   Exit Sub
  loc_12CE4AD: End If
  loc_12CE4C0: var_AC = CLng(Me.FGrid.Col)
  loc_12CE4D0: If (var_AC = CLng(1)) Then
  loc_12CE4DD:   If (CLng(Shift) = &HD) Then
  loc_12CE4E6:     Call Proc_319_51_1125CD8(KeyCode, var_AE)
  loc_12CE4F1:     If (var_AE = &HFF) Then
  loc_12CE539:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HB))
  loc_12CE549:     End If
  loc_12CE549:   End If
  loc_12CE54C: Else
  loc_12CE553:   If (var_AC = CLng(2)) Then
  loc_12CE560:     If (CLng(Shift) = &HD) Then
  loc_12CE569:       Call Proc_319_51_1125CD8(KeyCode, var_AE, 0, 0)
  loc_12CE574:       If (var_AE = &HFF) Then
  loc_12CE5BC:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HB))
  loc_12CE5CC:       End If
  loc_12CE5CC:     End If
  loc_12CE5CF:   Else
  loc_12CE5D6:     If (var_AC = CLng(3)) Then
  loc_12CE5E3:       If (CLng(Shift) = &HD) Then
  loc_12CE5EC:         Call Proc_319_51_1125CD8(KeyCode, var_AE, 0, 0)
  loc_12CE5F7:         If (var_AE = &HFF) Then
  loc_12CE63F:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HB), 0)
  loc_12CE64F:         End If
  loc_12CE64F:       End If
  loc_12CE652:     Else
  loc_12CE659:       If (var_AC = CLng(4)) Then
  loc_12CE666:         If (CLng(Shift) = &HD) Then
  loc_12CE66F:           Call Proc_319_51_1125CD8(KeyCode, var_AE, 0, 0)
  loc_12CE67A:           If (var_AE = &HFF) Then
  loc_12CE6C2:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HB), 0)
  loc_12CE6D2:           End If
  loc_12CE6D2:         End If
  loc_12CE6D5:       Else
  loc_12CE6DC:         If (var_AC = CLng(5)) Then
  loc_12CE6E9:           If (CLng(Shift) = &HD) Then
  loc_12CE6F2:             Call Proc_319_51_1125CD8(KeyCode, var_AE, 0, 0)
  loc_12CE6FD:             If (var_AE = &HFF) Then
  loc_12CE745:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HB), 0)
  loc_12CE755:             End If
  loc_12CE755:           End If
  loc_12CE758:         Else
  loc_12CE75F:           If (var_AC = CLng(7)) Then
  loc_12CE76C:             If (CLng(Shift) = &HD) Then
  loc_12CE775:               Call Proc_319_51_1125CD8(KeyCode, var_AE, 0, 0)
  loc_12CE780:               If (var_AE = &HFF) Then
  loc_12CE78E:                 Set var_98 = Me.TxtGrid
  loc_12CE7B9:                 Set var_8C = var_98
  loc_12CE7C8:                 Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(&HB), 0)
  loc_12CE7D8:               End If
  loc_12CE7D8:             End If
  loc_12CE7DB:           Else
  loc_12CE7E2:             If (var_AC = CLng(6)) Then
  loc_12CE807:               Set var_88 = Me.TxtGrid
  loc_12CE80D:               Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_B8, 0, 0)
  loc_12CE815:               0 = var_8C.Left
  loc_12CE827:               Set var_94 = Me.TxtGrid
  loc_12CE82D:               Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98, var_BC)
  loc_12CE835:               0 = var_98.Top
  loc_12CE847:               Set var_C0 = Me.TxtGrid
  loc_12CE84D:               Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C4, var_C8)
  loc_12CE855:               var_AC = var_C4.Height
  loc_12CE867:               Set var_CC = Me.TxtGrid
  loc_12CE86D:               Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_D0)
  loc_12CE875:               var_D4 = var_D0.Width
  loc_12CE8BD:               Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12CE8EB:               If (CLng(Shift) = &HD) Then
  loc_12CE8F4:                 Call Proc_319_51_1125CD8(KeyCode, var_AE, CInt(var_B8), CInt((var_BC + var_C8)))
  loc_12CE8FF:                 If (var_AE = &HFF) Then
  loc_12CE947:                   Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HA))
  loc_12CE957:                 End If
  loc_12CE957:               End If
  loc_12CE95A:             Else
  loc_12CE961:               If (var_AC = CLng(9)) Then
  loc_12CE96E:                 If (CLng(Shift) = &HD) Then
  loc_12CE977:                   Call Proc_319_51_1125CD8(KeyCode, var_AE, 0, 0)
  loc_12CE982:                   If (var_AE = &HFF) Then
  loc_12CE9CA:                     Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HB), 0)
  loc_12CE9DA:                   End If
  loc_12CE9DA:                 End If
  loc_12CE9DD:               Else
  loc_12CE9E6:                 If (var_AC = &HA) Then
  loc_12CE9F3:                   If (CLng(Shift) = &HD) Then
  loc_12CE9FC:                     Call Proc_319_51_1125CD8(KeyCode, var_AE, 0, 0)
  loc_12CEA07:                     If (var_AE = &HFF) Then
  loc_12CEA4F:                       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HA), 0)
  loc_12CEA5F:                     End If
  loc_12CEA5F:                   End If
  loc_12CEA5F:                 End If
  loc_12CEA5F:               End If
  loc_12CEA5F:             End If
  loc_12CEA5F:           End If
  loc_12CEA5F:         End If
  loc_12CEA5F:       End If
  loc_12CEA5F:       ' Referenced from: 12CE400
  loc_12CEA5F:     End If
  loc_12CEA5F:   End If
  loc_12CEA5F: End If
  loc_12CEA5F: Proc_6_60_E63754(0, 0, 0)
  loc_12CEA64: Exit Sub
  loc_12CEA65: StAryRecMove
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F5E1D0
  'Data Table: 4A76E0
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  loc_F5E0AB: Proc_6_58_E06050(arg_10)
  loc_F5E0BC: If (KeyAscii = 0) Then
  loc_F5E0D2:   var_A0 = CLng(Me.FGrid.Col)
  loc_F5E0E2:   If (var_A0 = CLng(3)) Then
  loc_F5E0EF:     Set var_8C = Me.TxtGrid
  loc_F5E0F5:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_F5E110:     Proc_6_42_129B55C(var_A4, arg_10, 5)
  loc_F5E11F:   Else
  loc_F5E126:     If Not (var_A0 = CLng(2)) Then
  loc_F5E130:       If Not (var_A0 = CLng(4)) Then
  loc_F5E13A:         If Not (var_A0 = CLng(5)) Then
  loc_F5E144:           If (var_A0 = CLng(7)) Then
  loc_F5E147:           End If
  loc_F5E147:         End If
  loc_F5E147:       End If
  loc_F5E151:       Set var_8C = Me.TxtGrid
  loc_F5E157:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, 2)
  loc_F5E172:       Proc_6_42_129B55C(var_A4, arg_10, 7)
  loc_F5E181:     Else
  loc_F5E188:       If Not (var_A0 = CLng(9)) Then
  loc_F5E194:         If (var_A0 = &HA) Then
  loc_F5E197:         End If
  loc_F5E1A1:         Set var_8C = Me.TxtGrid
  loc_F5E1A7:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, 2)
  loc_F5E1C2:         Proc_6_42_129B55C(var_A4, arg_10, 3)
  loc_F5E1CE:       End If
  loc_F5E1CE:     End If
  loc_F5E1CE:   End If
  loc_F5E1CE: End If
  loc_F5E1CE: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EEB564
  'Data Table: 4A76E0
  loc_EEB4A0: On Error Goto loc_EEB55C
  loc_EEB4C6: If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_EEB4EB:   If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_EEB4FC:     Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_EEB501:   End If
  loc_EEB51C:   If (Me.FrmList.Visible = &HFF) Then
  loc_EEB54B:     Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, KeyCode, Shift)
  loc_EEB55B:   End If
  loc_EEB55B: End If
  loc_EEB55B: Exit Sub
  loc_EEB55C: ' Referenced from: EEB4A0
  loc_EEB55C: Proc_6_60_E63754(global_100, 0)
  loc_EEB561: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E212C0
  'Data Table: 4A76E0
  Dim arg_10 As Integer
  loc_E212A8: If (Cancel = 0) Then
  loc_E212B1:   Call Proc_319_51_1125CD8(Cancel, var_88)
  loc_E212BA:   arg_10 = Not(var_88)
  loc_E212BD: End If
  loc_E212BD: Exit Sub
End Sub

Private Sub Form_Load() '10338CC
  'Data Table: 4A76E0
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  loc_103367C: On Error Goto loc_10338C4
  loc_103368E: Me.LblUser.Left = CDbl(13500)
  loc_10336A5: Me.LblUser.Top = CDbl(7800)
  loc_10336BC: Me.LblLDt.Top = CDbl(8160)
  loc_10336D3: Me.LblLDt.Left = CDbl(13500)
  loc_10336E2: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10336FA: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_103370C: Set var_88 = Me.TopCtrl1
  loc_1033712: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1033720: Call 0.Method_arg_50 (var_AC)
  loc_1033730: Set var_88 = Me.TopCtrl1
  loc_1033736: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_103375D: Me.TopCtrl1.CursorLocation = 3
  loc_1033787: var_BC = CVar("Select distinct Code As Code,Name From RWParameter WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10337A5: CVarUnk
  loc_10337AA: VerifyVarObj
  loc_10337B0: Set var_88 = Me.DGHelp
  loc_10337B6: LateIdStAd
  loc_10337E0: Me.DGHelp.CursorLocation = 3
  loc_103380A: var_BC = CVar("Select distinct Code as SearchCode,Name,LOGSITE_CODE,SITE_CODE From RWParameter WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1033814: r_BC, CVar(MemVar_1F95044), 2 var_BC, CVar(MemVar_1F95044), 2
  loc_1033842: Call Proc_319_54_E7B264(Proc_5_1_100EC1C("INI", Me, New, 3, -1), Me, New)
  loc_103384D: Call Proc_319_48_1207DD8(3)
  loc_1033852: Call Proc_319_53_140BC3C(-1)
  loc_103386A: Me.FGrid.Left = CVar(CDbl(600))
  loc_1033885: Me.FGrid.Width = CVar(CDbl(14300))
  loc_10338A0: Me.FGrid.Top = CVar(CDbl(2800))
  loc_10338BB: Me.FGrid.Height = CVar(CDbl(3000))
  loc_10338C3: Exit Sub
  loc_10338C4: ' Referenced from: 103367C
  loc_10338C4: Proc_6_60_E63754()
  loc_10338C9: Exit Sub
End Sub

Private Sub Form_Resize() 'ED65E8
  'Data Table: 4A76E0
  Dim var_8C As Label
  loc_ED6546: Call 0.Method_arg_50 (var_88)
  loc_ED6558: Me.LblFormCaption.Caption = var_88
  loc_ED6571: Me.LblFormCaption.Left = CDbl(0)
  loc_ED657D: Set var_A0 = Me.TopCtrl1
  loc_ED6583: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED6590: Set var_8C = Me.TopCtrl1
  loc_ED6596: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED65B0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED65CB: Call 0.Method_arg_100 (var_B8)
  loc_ED65DD: Me.LblFormCaption.Width = var_B8
  loc_ED65E5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E46164
  'Data Table: 4A76E0
  loc_E4613F: Set global_72 = Nothing
  loc_E46151: Set global_68 = Nothing
  loc_E4615D: MasterFormExit = 0
  loc_E46160: Exit Sub
End Sub

Private Sub Form_Activate() 'E4C018
  'Data Table: 4A76E0
  loc_E4BFE8: On Error Goto loc_E4C012
  loc_E4BFEF: Set var_88 = Me.TopCtrl1
  loc_E4BFF5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4C00A: If (CLng(CInt()) = &H2D) Then
  loc_E4C00D:   Call TopCtrl1_UnknownEvent_15()
  loc_E4C012:   ' Referenced from: E4BFE8
  loc_E4C012: End If
  loc_E4C012: Proc_6_60_E63754()
  loc_E4C017: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E250AC
  'Data Table: 4A76E0
  loc_E25091: If (MasterFormExit = &HFF) Then
  loc_E250A1:   Me.Global.Unload Me
  loc_E250A9: End If
  loc_E250A9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29564
  'Data Table: 4A76E0
  loc_E2953C: On Error Goto loc_E2955C
  loc_E29553: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2955B: Exit Sub
  loc_E2955C: ' Referenced from: E2953C
  loc_E2955C: Proc_6_60_E63754(Shift)
  loc_E29561: Exit Sub
  loc_E29562: Set arg_6858 = 0
End Sub

Private Sub ListView_UnknownEvent_13 'F5DD84
  'Data Table: 4A76E0
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5DCA6: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5DCAD:   Set var_A8 = Me.ListView
  loc_F5DCF7:   Set var_C0 = Me.TxtGrid
  loc_F5DCFD:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5DD05:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5DD25: End If
  loc_F5DD31: Me.FrmList.Visible = False
  loc_F5DD61: Set var_9C = Me.TxtGrid
  loc_F5DD67: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5DD6F: var_A8.SetFocus
  loc_F5DD83: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12E6498
  'Data Table: 4A76E0
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Variant
  Dim var_B4 As Variant
  loc_12E5DEE: Set var_88 = Me.Txt
  loc_12E5DF4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12E5E02: Proc_6_74_E23240(var_8C)
  loc_12E5E0E: Call Proc_319_55_EB7CE4(var_8C)
  loc_12E5E16: var_92 = Index
  loc_12E5E21: If (var_92 = CInt(0)) Then
  loc_12E5E3B:   If (Me.RecordCount > 0) Then
  loc_12E5E49:     Set var_8C = Me.FGPoint
  loc_12E5E61:     Proc_6_137_1192FDC(Me.DGHelp, global_72, Index)
  loc_12E5E6F:   End If
  loc_12E5EBD:   Set var_88 = Me.Txt
  loc_12E5EC3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12E5ECB:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E5EE3:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12E5EE6:     Exit Sub
  loc_12E5EE7:   End If
  loc_12E5EF4:   Set var_88 = Me.Txt
  loc_12E5EFA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E5F02:   var_A0 = var_8C.Text
  loc_12E5F14:   var_B0 = "Name"
  loc_12E5F4F:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_12E5F58:     Me.MoveFirst
  loc_12E5F7B:     Set var_88 = Me.Txt
  loc_12E5F81:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_12E5F89:     0 = var_8C.Text
  loc_12E5FA2:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_12E5FB7:   End If
  loc_12E5FBA: Else
  loc_12E5FC2:   If (var_92 = CInt(1)) Then
  loc_12E5FD2:     ReDim var_F0(0 To 2)
  loc_12E5FE9:     var_F0(0) = "Total"
  loc_12E5FF8:     var_F0(1) = "Discounted Total"
  loc_12E6007:     var_F0(2) = "Net Amount"
  loc_12E601E:     global_84 = Array(var_F0)
  loc_12E6029:     Set var_B4 = Me.ListView
  loc_12E6044:     Set var_8C = Me.Txt
  loc_12E605E:     Set global_100 = Proc_6_66_F0048C(var_B4, var_8C, Index)
  loc_12E607C:     Set var_88 = Me.Txt
  loc_12E6082:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12E608A:     global_84 = var_8C.Text
  loc_12E609C:     Set var_90 = Me.Txt
  loc_12E60A2:     Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_12E60AA:     var_B4.Tag = 3
  loc_12E60CA:     Set var_88 = Me.Txt
  loc_12E60D0:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E60EA:     Me.FrmList.Left = var_8C.Left
  loc_12E6105:     Set var_90 = Me.Txt
  loc_12E610B:     Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_12E6125:     Set var_88 = Me.Txt
  loc_12E612B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E614E:     Me.FrmList.Top = ((var_8C.Top + var_B4.Height) + CDbl(&H1E))
  loc_12E6163:   Else
  loc_12E616B:     If (var_92 = CInt(2)) Then
  loc_12E617B:       ReDim var_F0(0 To 1)
  loc_12E6192:       var_F0(0) = "Sales"
  loc_12E61A1:       var_F0(1) = "Points"
  loc_12E61B8:       global_84 = Array(var_F0)
  loc_12E61C3:       Set var_B4 = Me.ListView
  loc_12E61DE:       Set var_8C = Me.Txt
  loc_12E61F8:       Set global_100 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_84)
  loc_12E6216:       Set var_88 = Me.Txt
  loc_12E621C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12E6224:       2 = var_8C.Text
  loc_12E6236:       Set var_90 = Me.Txt
  loc_12E623C:       Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_12E6244:       var_B4.Tag = global_84
  loc_12E6264:       Set var_88 = Me.Txt
  loc_12E626A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E6284:       Me.FrmList.Left = var_8C.Left
  loc_12E629F:       Set var_90 = Me.Txt
  loc_12E62A5:       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_12E62BF:       Set var_88 = Me.Txt
  loc_12E62C5:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E62E8:       Me.FrmList.Top = ((var_8C.Top + var_B4.Height) + CDbl(&H1E))
  loc_12E62FD:     Else
  loc_12E6305:       If (var_92 = CInt(3)) Then
  loc_12E6315:         ReDim var_F0(0 To 1)
  loc_12E632C:         var_F0(0) = "Rewarding"
  loc_12E633B:         var_F0(1) = "Redemption"
  loc_12E6352:         global_84 = Array(var_F0)
  loc_12E635D:         Set var_B4 = Me.ListView
  loc_12E6378:         Set var_8C = Me.Txt
  loc_12E6392:         Set global_100 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_84)
  loc_12E63B0:         Set var_88 = Me.Txt
  loc_12E63B6:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12E63BE:         2 = var_8C.Text
  loc_12E63D0:         Set var_90 = Me.Txt
  loc_12E63D6:         Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_12E63DE:         var_B4.Tag = global_84
  loc_12E63FE:         Set var_88 = Me.Txt
  loc_12E6404:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E641E:         Me.FrmList.Left = var_8C.Left
  loc_12E6439:         Set var_90 = Me.Txt
  loc_12E643F:         Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_12E6459:         Set var_88 = Me.Txt
  loc_12E645F:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E6482:         Me.FrmList.Top = ((var_8C.Top + var_B4.Height) + CDbl(&H1E))
  loc_12E6494:       End If
  loc_12E6494:     End If
  loc_12E6494:   End If
  loc_12E6494: End If
  loc_12E6494: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '123427C
  'Data Table: 4A76E0
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As TextBox
  Dim var_B4 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As Frame
  loc_1233D7A: If (CLng(Shift) = &H1B) Then
  loc_1233D7D:   Call Proc_319_55_EB7CE4()
  loc_1233D82:   Exit Sub
  loc_1233D83: End If
  loc_1233D86: var_86 = KeyCode
  loc_1233D91: If (var_86 = CInt(0)) Then
  loc_1233D98:   Set var_A4 = Me.DGHelp
  loc_1233DAC:   Set var_9C = Nothing
  loc_1233DDE:   Proc_6_79_11AD564(var_A4, Me.Txt, CInt(0), global_72, Shift)
  loc_1233DF9:   var_AC = Me.RecordCount
  loc_1233E49:   If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1233E57:     Set var_90 = Me.FGPoint
  loc_1233E6F:     Proc_6_138_106E830(Me.DGHelp, global_72, KeyCode, var_90, 0)
  loc_1233E7D:   End If
  loc_1233E80: Else
  loc_1233E88:   If (var_86 = CInt(1)) Then
  loc_1233EAD:     Set var_8C = Me.Txt
  loc_1233EB3:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 1)
  loc_1233EBB:     var_9C = var_90.Left
  loc_1233ECD:     Set var_9C = Me.Txt
  loc_1233ED3:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_1233EDB:     0 = var_A4.Top
  loc_1233EED:     Set var_A8 = Me.Txt
  loc_1233EF3:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_1233EFB:     var_B8 = var_B4.Height
  loc_1233F0D:     Set var_BC = Me.Txt
  loc_1233F13:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1233F1B:     var_C4 = var_C0.Width
  loc_1233F67:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1233F8E:   Else
  loc_1233F96:     If (var_86 = CInt(2)) Then
  loc_1233FBB:       Set var_8C = Me.Txt
  loc_1233FC1:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_1233FC9:       CInt(((var_B0 + var_B8) + CDbl(&H19))) = var_90.Left
  loc_1233FDB:       Set var_9C = Me.Txt
  loc_1233FE1:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_1233FE9:       CInt(var_C4) = var_A4.Top
  loc_1233FFB:       Set var_A8 = Me.Txt
  loc_1234001:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4, var_B8)
  loc_1234009:       780 = var_B4.Height
  loc_123401B:       Set var_BC = Me.Txt
  loc_1234021:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1234029:       var_C4 = var_C0.Width
  loc_1234075:       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_123409C:     Else
  loc_12340A4:       If (var_86 = CInt(3)) Then
  loc_12340C9:         Set var_8C = Me.Txt
  loc_12340CF:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_12340D7:         CInt(((var_B0 + var_B8) + CDbl(&H19))) = var_90.Left
  loc_12340E9:         Set var_9C = Me.Txt
  loc_12340EF:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_12340F7:         CInt(var_C4) = var_A4.Top
  loc_1234109:         Set var_A8 = Me.Txt
  loc_123410F:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4, var_B8)
  loc_1234117:         520 = var_B4.Height
  loc_1234129:         Set var_BC = Me.Txt
  loc_123412F:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1234137:         var_C4 = var_C0.Width
  loc_1234183:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12341A7:       End If
  loc_12341A7:     End If
  loc_12341A7:   End If
  loc_12341A7: End If
  loc_12341B4: var_92 = Me.FrmList.Visible
  loc_12341C3: Set var_90 = Me.DGHelp
  loc_12341E0: If ((var_92 = 0) And (CBool(var_90.Visible) = 0)) Then
  loc_12341F8:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12341FE:     Call Proc_319_49_10956B8(var_92, CInt(var_AC), CInt(((var_B0 + var_B8) + CDbl(&H19))))
  loc_1234209:     If (var_92 = &HFF) Then
  loc_1234219:       Set var_8C = Me.Txt
  loc_123421F:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_1234227:       var_90.Text = CInt(var_C4)
  loc_1234233:       Exit Sub
  loc_1234234:     End If
  loc_1234234:   End If
  loc_1234249:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1234252:     Proc_6_75_E5335C(Shift, arg_14)
  loc_1234257:   End If
  loc_123426A:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_1234273:     Proc_6_76_E533C8(Shift, arg_14)
  loc_1234278:   End If
  loc_1234278: End If
  loc_1234278: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E27624
  'Data Table: 4A76E0
  Dim var_96 As Integer
  loc_E27606: Proc_6_133_E7FB08(var_94)
  loc_E27618: Proc_6_58_E06050(CInt(var_94), CInt(var_94))
  loc_E27620: var_96 = KeyAscii
  loc_E27623: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F367F4
  'Data Table: 4A76E0
  Dim var_86 As Integer
  loc_F366DF: var_86 = KeyCode
  loc_F366EA: If (var_86 = CInt(0)) Then
  loc_F36709:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F36716:     var_A4 = "Name"
  loc_F36735:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_72)
  loc_F36767:     Proc_6_138_106E830(Me.DGHelp, global_72, KeyCode, Me.FGPoint)
  loc_F36775:   End If
  loc_F36778: Else
  loc_F36780:   If Not (var_86 = CInt(1)) Then
  loc_F3678B:     If Not (var_86 = CInt(2)) Then
  loc_F36796:       If (var_86 = CInt(3)) Then
  loc_F36799:       End If
  loc_F36799:     End If
  loc_F367B4:     If (Me.FrmList.Visible = &HFF) Then
  loc_F367E3:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F367F3:     End If
  loc_F367F3:   End If
  loc_F367F3: End If
  loc_F367F3: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B2AC
  'Data Table: 4A76E0
  loc_E4B28A: Set var_88 = Me.Txt
  loc_E4B290: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B29E: Proc_6_73_E23294(var_8C)
  loc_E4B2AA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FFFD34
  'Data Table: 4A76E0
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_8C As Variant
  Dim var_B0 As TextBox
  loc_FFFB37: var_86 = Cancel
  loc_FFFB42: If (var_86 = CInt(0)) Then
  loc_FFFB50:   Set var_8C = Me.Txt
  loc_FFFB56:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_FFFB5E:   var_98 = "Name"
  loc_FFFB7F:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_FFFB8C:     Set var_8C = Me.Txt
  loc_FFFB92:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FFFB9A:     var_90.SetFocus
  loc_FFFBA8:     arg_10 = &HFF
  loc_FFFBAB:     Exit Sub
  loc_FFFBAC:   End If
  loc_FFFBAF:   Call Proc_319_49_10956B8(var_9A, arg_10)
  loc_FFFBBA:   If (var_9A = &HFF) Then
  loc_FFFBBF:     arg_10 = &HFF
  loc_FFFBC2:     Exit Sub
  loc_FFFBC3:   End If
  loc_FFFBC6: Else
  loc_FFFBCE:   If Not (var_86 = CInt(1)) Then
  loc_FFFBD9:     If (var_86 = CInt(2)) Then
  loc_FFFBDC:     End If
  loc_FFFBE9:     Set var_8C = Me.Txt
  loc_FFFBEF:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_FFFBF7:     arg_10 = var_90.Text
  loc_FFFC0E:     If (var_98 <> vbNullString) Then
  loc_FFFC29:       Set var_90 = Me.ListView.SelectedItem
  loc_FFFC41:       Set var_94 = Me.Txt
  loc_FFFC47:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_FFFC4F:       var_B0.Text = var_90.Text
  loc_FFFC65:     End If
  loc_FFFC68:   Else
  loc_FFFC70:     If (var_86 = CInt(3)) Then
  loc_FFFC80:       Set var_8C = Me.Txt
  loc_FFFC86:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FFFCA5:       If (var_90.Text <> vbNullString) Then
  loc_FFFCD8:         Set var_94 = Me.Txt
  loc_FFFCDE:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_FFFCE6:         var_B0.Text = Me.ListView.SelectedItem.Text
  loc_FFFCFC:       End If
  loc_FFFD0F:       Me.FGrid.Row = 1
  loc_FFFD2A:       Me.FGrid.Col = 1
  loc_FFFD32:     End If
  loc_FFFD32:   End If
  loc_FFFD32: End If
  loc_FFFD32: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E619C4
  'Data Table: 4A76E0
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6198F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E619A2: Set var_A8 = Me.TxtGrid
  loc_E619A8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E619B0: var_AC.Visible = False
  loc_E619BC: Call Proc_319_55_EB7CE4()
  loc_E619C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68200
  'Data Table: 4A76E0
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  Dim arg_6800 As String
  loc_E681BC: Set var_88 = Me.TxtGrid
  loc_E681C2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E681DC: If (var_8C.Visible = 0) Then
  loc_E681F5:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E681FD: End If
  loc_E681FD: Exit Sub
  loc_E681FE: arg_6800 = 
End Sub

Private Sub FGrid_UnknownEvent_8 'E1D470
  'Data Table: 4A76E0
  loc_E1D467: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D46F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E004AC
  'Data Table: 4A76E0
  loc_E004A4: Call Proc_319_50_E42660()
  loc_E004A9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A 'FE77B8
  'Data Table: 4A76E0
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_FE75E4: Set var_88 = Me.TopCtrl1
  loc_FE75EA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE7603: If (CStr() = "Browse") Then
  loc_FE7606:   Exit Sub
  loc_FE7607: End If
  loc_FE767B: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_FE7691:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FE76A1:   var_9C = "+{Tab}"
  loc_FE76A7:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_FE76B1:   Cancel = 0
  loc_FE76B7: Else
  loc_FE770E:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_FE7724:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FE772E:     Cancel = 0
  loc_FE7731:   End If
  loc_FE7731: End If
  loc_FE7737: global_64 = Cancel
  loc_FE775D: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_FE7781: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_FE7797:   var_EC = CLng(Me.FGrid.Col)
  loc_FE77A0: End If
  loc_FE77A6: If (Cancel = &HD) Then
  loc_FE77AE:   global_66 = 0
  loc_FE77B1: End If
  loc_FE77B3: Cancel = 0
  loc_FE77B6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E15748
  'Data Table: 4A76E0
  loc_E15739: Call FGrid_UnknownEvent_C()
  loc_E15743: global_66 = 0
  loc_E15746: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '12004E4
  'Data Table: 4A76E0
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  Dim var_A8 As Long
  Dim var_CE As Integer
  Dim var_C8 As TextBox
  loc_1200034: Set var_88 = Me.TopCtrl1
  loc_120003A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1200053: If (CStr() = "Browse") Then
  loc_1200056:   Exit Sub
  loc_1200057: End If
  loc_120006A: var_A0 = CLng(Me.FGrid.Col)
  loc_120007A: If (var_A0 = CLng(1)) Then
  loc_120008B:   Set var_88 = Me.TxtGrid
  loc_1200091:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1200099:   var_A4.MaxLength = &H23
  loc_12000A8: Else
  loc_12000AF:   If (var_A0 = CLng(6)) Then
  loc_12000C0:     Set var_88 = Me.TxtGrid
  loc_12000C6:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12000CE:     var_A4.MaxLength = 7
  loc_12000DD:   Else
  loc_12000E4:     If (var_A0 = CLng(3)) Then
  loc_12000F5:       Set var_88 = Me.TxtGrid
  loc_12000FB:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1200103:       var_A4.MaxLength = 8
  loc_1200112:     Else
  loc_1200119:       If Not (var_A0 = CLng(2)) Then
  loc_1200123:         If Not (var_A0 = CLng(4)) Then
  loc_120012D:           If Not (var_A0 = CLng(5)) Then
  loc_1200137:             If (var_A0 = CLng(7)) Then
  loc_120013A:             End If
  loc_120013A:           End If
  loc_120013A:         End If
  loc_1200148:         Set var_88 = Me.TxtGrid
  loc_120014E:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1200156:         var_A4.MaxLength = &HA
  loc_1200165:       Else
  loc_120016C:         If Not (var_A0 = CLng(9)) Then
  loc_1200178:           If (var_A0 = &HA) Then
  loc_120017B:           End If
  loc_1200189:           Set var_88 = Me.TxtGrid
  loc_120018F:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1200197:           var_A4.MaxLength = 6
  loc_12001A3:         End If
  loc_12001A3:       End If
  loc_12001A3:     End If
  loc_12001A3:   End If
  loc_12001A3: End If
  loc_12001B6: var_A8 = CLng(Me.FGrid.Col)
  loc_12001C6: If Not (var_A8 = CLng(1)) Then
  loc_12001D0:   If Not (var_A8 = CLng(8)) Then
  loc_12001DA:     If (var_A8 = CLng(6)) Then
  loc_12001DD:     End If
  loc_12001DD:   End If
  loc_12001E1:   Set var_C8 = Me.FGrid
  loc_1200205:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1200232:   Set var_A4 = var_C8
  loc_1200244:   Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0, 0)
  loc_120026C:   Set var_88 = Me.TxtGrid
  loc_1200272:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_120027A:   0 = var_A4.Text
  loc_1200293:   If (Len(var_9C) <= 1) Then
  loc_12002A2:     Set var_88 = Me.TxtGrid
  loc_12002A8:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_12002B0:     var_CE = var_A4.Text
  loc_12002C1:     Set var_BC = Me.TxtGrid
  loc_12002C7:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8, var_9C)
  loc_12002CF:     var_C8.Text = var_A8
  loc_12002E2:   End If
  loc_12002EE:   Set var_88 = Me.TxtGrid
  loc_12002F4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_120030E:   Set var_BC = Me.TxtGrid
  loc_1200314:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_120031C:   var_C8.SelStart = Len(var_A4.Text)
  loc_1200332: Else
  loc_1200339:   If Not (var_A8 = CLng(2)) Then
  loc_1200343:     If Not (var_A8 = CLng(3)) Then
  loc_120034D:       If Not (var_A8 = CLng(4)) Then
  loc_1200357:         If Not (var_A8 = CLng(5)) Then
  loc_1200361:           If Not (var_A8 = CLng(7)) Then
  loc_120036B:             If Not (var_A8 = CLng(9)) Then
  loc_1200377:               If (var_A8 = &HA) Then
  loc_120037A:               End If
  loc_120037A:             End If
  loc_120037A:           End If
  loc_120037A:         End If
  loc_120037A:       End If
  loc_120037A:     End If
  loc_120037E:     Set var_C8 = Me.FGrid
  loc_12003A2:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12003CF:     Set var_A4 = var_C8
  loc_12003E1:     Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0, &HFF)
  loc_1200409:     Set var_88 = Me.TxtGrid
  loc_120040F:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_1200417:     0 = var_A4.Text
  loc_1200430:     If (Len(var_9C) <= 1) Then
  loc_120043F:       Set var_88 = Me.TxtGrid
  loc_1200445:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_120044D:       var_CE = var_A4.Text
  loc_120045E:       Set var_BC = Me.TxtGrid
  loc_1200464:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_120046C:       var_C8.Text = var_9C
  loc_120047F:     End If
  loc_120048B:     Set var_88 = Me.TxtGrid
  loc_1200491:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12004AB:     Set var_BC = Me.TxtGrid
  loc_12004B1:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_12004B9:     var_C8.SelStart = Len(var_A4.Text)
  loc_12004CC:   End If
  loc_12004CC: End If
  loc_12004D6: If (CLng(Cancel) <> &HD) Then
  loc_12004DE:   global_66 = &HFF
  loc_12004E1: End If
  loc_12004E1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '102EF24
  'Data Table: 4A76E0
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  loc_102ECF0: Set var_90 = Me.TopCtrl1
  loc_102ECF6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_102ED0F: If (CStr() = "Browse") Then
  loc_102ED12:   Exit Sub
  loc_102ED13: End If
  loc_102ED30: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_102ED33:   Exit Sub
  loc_102ED34: End If
  loc_102ED45: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_102ED67:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_102EDA1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_102EDC3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_102EDD9:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102EDE2:         Set var_118 = Me.FGrid
  loc_102EDFD:       Else
  loc_102EE10:         Me.FGrid.Rows = 1
  loc_102EE2D:         var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_102EE35:         Set var_118 = Me.FGrid
  loc_102EE64:         Me.FGrid.FixedRows = 1
  loc_102EE6C:       End If
  loc_102EE91:       For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_102EE9B:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_102EEA3:         var_E4 = CVar(CLng(0)) 'Long
  loc_102EEAD:         var_A0 = CVar(CStr(var_86)) 'String
  loc_102EEB5:         Set var_90 = Me.FGrid
  loc_102EEBB:         LateIdCallSt
  loc_102EECC:       Next var_11C 'Integer
  loc_102EED1:     End If
  loc_102EED4:   Else
  loc_102EEF5:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_102EF05:   End If
  loc_102EF09:   Set var_90 = Me.FGrid
  loc_102EF1A: End If
  loc_102EF1F: Set var_8C = Nothing
  loc_102EF22: Exit Sub
  loc_102EF23: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1D7E0
  'Data Table: 4A76E0
  loc_E1D7D7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1D7DF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1F9F0
  'Data Table: 4A76E0
  loc_E1F9E7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F9EF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E4272C
  'Data Table: 4A76E0
  Dim var_8C As TextBox
  loc_E42700: Call Proc_319_55_EB7CE4()
  loc_E42710: Set var_88 = Me.TxtGrid
  loc_E42716: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4271E: var_8C.Visible = False
  loc_E4272A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAB554
  'Data Table: 4A76E0
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EAB4C8: On Error Goto loc_EAB54E
  loc_EAB4D8: Me.LblUser.Caption = vbNullString
  loc_EAB4ED: Me.LblLDt.Caption = vbNullString
  loc_EAB518: Call Proc_319_54_E7B264(Proc_5_1_100EC1C("ADD", Me))
  loc_EAB523: Call Proc_319_52_F226B4(global_68)
  loc_EAB533: Set var_88 = Me.Txt
  loc_EAB539: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EAB541: var_94.SetFocus
  loc_EAB54D: Exit Sub
  loc_EAB54E: ' Referenced from: EAB4C8
  loc_EAB54E: Proc_6_60_E63754(var_94)
  loc_EAB553: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9C2D8
  'Data Table: 4A76E0
  loc_E9C260: On Error Goto loc_E9C2D1
  loc_E9C29A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9C2C0:   Call Proc_319_54_E7B264(Proc_5_1_100EC1C("INI", Me))
  loc_E9C2CB:   Call Proc_319_53_140BC3C(global_68)
  loc_E9C2D0: End If
  loc_E9C2D0: Exit Sub
  loc_E9C2D1: ' Referenced from: E9C260
  loc_E9C2D1: Proc_6_60_E63754()
  loc_E9C2D6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'E87FDC
  'Data Table: 4A76E0
  Dim unk_4A7702 As Connection15
  loc_E87F80: On Error Goto loc_E87F83
  loc_E87F83: ' Referenced from: E87F80
  loc_E87F89: If (var_96 = &HFF) Then
  loc_E87F92:   unk_4A7702.RollbackTrans
  loc_E87F97: End If
  loc_E87F9F: Set var_9C = Err()
  loc_E87FA5: Call 0.Method_arg_2C (var_A0)
  loc_E87FC6: MsgBox(CVar(var_A0), &H30, " Deletion Error ", var_F0, var_110)
  loc_E87FD9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F90AA0
  'Data Table: 4A76E0
  Dim var_88 As Label
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F90944: On Error Goto loc_F90A5A
  loc_F90954: Me.LblUser.Caption = vbNullString
  loc_F90969: Me.LblLDt.Caption = vbNullString
  loc_F9097F: If (Proc_183_55_FE8490(global_68) = &HFF) Then
  loc_F90982:   Exit Sub
  loc_F90983: End If
  loc_F9099A: If (Me.RecordCount > 0) Then
  loc_F909C0:   Call Proc_319_54_E7B264(Proc_5_1_100EC1C("EDIT", Me))
  loc_F909D9:   Set var_88 = Me.Txt
  loc_F909DF:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F909E7:   var_90 = var_98.Text
  loc_F909F2:   global_80 = var_90
  loc_F90A0B:   Set var_88 = Me.Txt
  loc_F90A11:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F90A19:   var_98.SetFocus
  loc_F90A28: Else
  loc_F90A49:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F90A59: End If
  loc_F90A59: Exit Sub
  loc_F90A5A: ' Referenced from: F90944
  loc_F90A62: Set var_88 = Err()
  loc_F90A68: Call 0.Method_arg_2C (var_90)
  loc_F90A89: MsgBox(CVar(var_90), &H30, " Editing Error ", var_F8, var_118)
  loc_F90A9C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C5D0
  'Data Table: 4A76E0
  loc_E1C5C5: Me.Global.Unload Me
  loc_E1C5CD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC8E54
  'Data Table: 4A76E0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F950E4 As String
  loc_EC8DB4: On Error Goto loc_EC8E4C
  loc_EC8DCE: If (Me.RecordCount <= 0) Then
  loc_EC8DD7:   var_B8 = "Information"
  loc_EC8DF2:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC8E02:   Exit Sub
  loc_EC8E03: End If
  loc_EC8E11: MemVar_1F950E4 = "Select distinct Code As SearchCode,Name FROM RWParameter where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_EC8E1E: MemVar_1F95120 = Me
  loc_EC8E2B: Proc_6_126_F1C850("3500")
  loc_EC8E46: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC8E4B: Exit Sub
  loc_EC8E4C: ' Referenced from: EC8DB4
  loc_EC8E4C: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC8E51: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2C408
  'Data Table: 4A76E0
  Dim arg_68FF As Double
  loc_E2C3F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C400: Call Proc_319_53_140BC3C(global_68)
  loc_E2C405: Exit Sub
  loc_E2C406: arg_68FF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2BE08
  'Data Table: 4A76E0
  Dim arg_68FF As Double
  loc_E2BDF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2BE00: Call Proc_319_53_140BC3C(global_68)
  loc_E2BE05: Exit Sub
  loc_E2BE06: arg_68FF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2BF28
  'Data Table: 4A76E0
  Dim arg_68FF As Double
  loc_E2BF18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2BF20: Call Proc_319_53_140BC3C(global_68)
  loc_E2BF25: Exit Sub
  loc_E2BF26: arg_68FF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2C1C8
  'Data Table: 4A76E0
  loc_E2C1B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C1C0: Call Proc_319_53_140BC3C(global_68)
  loc_E2C1C5: Exit Sub
  loc_E2C1C6: Set arg_6800 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108490C
  'Data Table: 4A76E0
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4A7702 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1084674: On Error Goto loc_10848C0
  loc_108469B: unk_4A7702.Execute "Select * From RWParameter where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Sno", var_C4, -1
  loc_10846A6: Set var_88 = var_C8
  loc_10846BC: var_CC = var_88.RecordCount
  loc_10846CA: If (var_CC = 0) Then
  loc_10846E6:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_10846F6:   Exit Sub
  loc_10846F7: End If
  loc_1084706: var_A4 = MemVar_1F950B4 & "\RWParameter.ttx"
  loc_108470D: Set var_C8 = var_88 
  loc_1084719: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1084723: Set var_88 = var_C8
  loc_1084729: var_B4 = CVar(var_12E) 'Integer
  loc_108472C: var_98 = var_B4 'Variant
  loc_1084748: var_A0 = MemVar_1F950B4 & "\RWParameter.RPT"
  loc_1084751: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108475C: MemVar_1F951E8 = var_C8
  loc_1084777: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108477F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108478B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_10847A4:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10847AC:   Call 0.Method_arg_20 (var_138)
  loc_10847B4:   Call 0.Method_arg_30 (var_A0)
  loc_10847FA:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1084810:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1084818:     Call 0.Method_arg_20 (var_138)
  loc_1084820:     Call 0.Method_arg_38 ("'Reward Points Parameter I'")
  loc_108482C:   End If
  loc_108482F: Next var_132 'Integer
  loc_108484D: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1084855: Call 0.Method_arg_2C (var_DC)
  loc_1084863: Call 0.Method_arg_150 (var_FC)
  loc_108486E: Call 0.Method_arg_50 (var_A0)
  loc_1084878: Set var_138 = Nothing
  loc_1084892: Set var_C8 = MemVar_1F951E8 
  loc_108489E: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_10848A9: MemVar_1F951E8 = var_C8
  loc_10848BC: Set var_88 = Nothing
  loc_10848BF: Exit Sub
  loc_10848C0: ' Referenced from: 1084674
  loc_10848C8: Set var_C8 = Err()
  loc_10848CE: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10848D9: Call 0.Method_arg_50 (var_A4)
  loc_10848F5: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1084908: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0ADF0
  'Data Table: 4A76E0
  Dim Me As Recordset15
  loc_E0ADE7: Me.Requery -1
  loc_E0ADEC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1586018
  'Data Table: 4A76E0
  Dim var_F4 As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_A8 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_AC As Variant
  Dim var_298 As Variant
  Dim var_A0 As Integer
  Dim var_B0 As String
  Dim var_1D8 As Variant
  Dim var_2AC As String
  Dim unk_4A7702 As Connection15
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_238 As Variant
  Dim var_2F4 As Variant
  Dim var_33C As Variant
  Dim var_35C As Variant
  Dim var_3D4 As Variant
  Dim var_9D8 As Double
  Dim var_9E0 As Double
  Dim var_9E8 As Double
  Dim var_9F0 As Double
  Dim var_58C As Variant
  Dim var_7B0 As Variant
  Dim var_928 As Variant
  Dim Me As Recordset15
  loc_158501C: On Error Goto loc_1585FC4
  loc_1585023: var_86 = CByte(0) 'Byte
  loc_1585032: Set var_A4 = Me.Txt
  loc_1585038: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1585061: If (Proc_183_19_E8E68C(var_A8, "Name") = 0) Then
  loc_158506B:   Call Txt_GotFocus(CInt(0))
  loc_1585070:   Exit Sub
  loc_1585071: End If
  loc_1585074: Call Proc_319_49_10956B8(var_B2)
  loc_158507F: If (var_B2 = &HFF) Then
  loc_1585082:   Exit Sub
  loc_1585083: End If
  loc_15850A4: var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15850AE: For var_114 = 1 To var_E4: var_9C = var_114 'Variant
  loc_15850D9:   For var_118 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9E = var_118 'Integer
  loc_15850E4:     var_D4 = CVar(CLng(var_9C)) 'Long
  loc_15850EC:     var_F4 = CVar(CLng(1)) 'Long
  loc_1585106:     var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_158510C:     var_148 = Trim(var_138)
  loc_1585114:     var_158 = vbNullString
  loc_1585123:     var_178 = CVar(CLng(var_9C)) 'Long
  loc_158512C:     var_198 = CVar(CLng(var_9E)) 'Long
  loc_158514C:     var_1D8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1585154:     var_1E8 = vbNullString
  loc_15851C6:     If CBool(CVar(CLng(var_9C)) And CVar(CLng(var_9E)) Or (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "0.00")) Then
  loc_15851D1:       If (var_9E = CInt(1)) Then
  loc_15851ED:         MsgBox("Category is required", 0, var_138, var_148, var_168)
  loc_15851FF:         var_A0 = &HFF
  loc_1585202:       End If
  loc_158520A:       If (var_9E = CInt(2)) Then
  loc_1585226:         MsgBox("RPoint On Amt is required", 0, var_138, var_148, var_168)
  loc_1585238:         var_A0 = &HFF
  loc_158523B:       End If
  loc_1585243:       If (var_9E = CInt(3)) Then
  loc_158525F:         MsgBox("RPoint is required", 0, var_138, var_148, var_168)
  loc_1585271:         var_A0 = &HFF
  loc_1585274:       End If
  loc_158527C:       If (var_9E = CInt(4)) Then
  loc_1585298:         MsgBox("RPoint Value is required", 0, var_138, var_148, var_168)
  loc_15852AA:         var_A0 = &HFF
  loc_15852AD:       End If
  loc_15852B5:       If (var_9E = CInt(5)) Then
  loc_15852D1:         MsgBox("Limit is required", 0, var_138, var_148, var_168)
  loc_15852E3:         var_A0 = &HFF
  loc_15852E6:       End If
  loc_15852EE:       If (var_9E = CInt(6)) Then
  loc_158530A:         MsgBox("Compare Operator is required", 0, var_138, var_148, var_168)
  loc_158531C:         var_A0 = &HFF
  loc_158531F:       End If
  loc_1585327:       var_178 = (var_9E = CInt(7))
  loc_1585330:       var_D4 = CVar(CLng(var_9C)) 'Long
  loc_1585352:       var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1585358:       var_148 = Trim(var_138)
  loc_158537E:       If CBool(CVar(CLng(6)) And (var_148 = "Between")) Then
  loc_158539A:         MsgBox("Up Limit is required", 0, var_138, var_148, var_168)
  loc_15853AC:         var_A0 = &HFF
  loc_15853AF:       End If
  loc_15853B5:       If (var_A0 = &HFF) Then
  loc_15853CC:         Me.FGrid.Row = CVar(CLng(var_9C))
  loc_15853E7:         Me.FGrid.Col = CVar(CLng(var_9E))
  loc_15853F3:         Set var_A4 = Me.FGrid
  loc_1585417:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_158541F:         Exit Sub
  loc_1585420:       End If
  loc_1585420:     End If
  loc_1585425:     var_D4 = CVar(CLng(var_9C)) 'Long
  loc_158542D:     var_F4 = CVar(CLng(1)) 'Long
  loc_158544D:     var_148 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1585455:     var_158 = vbNullString
  loc_1585464:     var_178 = CVar(CLng(var_9C)) 'Long
  loc_1585492:     var_1C8 = CVar(CLng(3)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)
  loc_158549B:     var_208 = CVar(CLng(var_9C)) 'Long
  loc_15854F0:     If CBool(CVar(CLng(4)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_1585500:       var_D4 = CVar(CLng(var_9C)) 'Long
  loc_1585508:       var_F4 = CVar(CLng(9)) 'Long
  loc_1585522:       var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_158554B:       var_138 = Me.FGrid.TextMatrix)
  loc_158557B:       If (CVar(CLng(var_9C)) And Not((CVar(CLng(9)) And (CDbl(Val(CStr(var_138))) <= CDbl(&H64))))) Then
  loc_1585597:         MsgBox("Check % Redemption", 0, var_138, var_148, var_168)
  loc_15855A9:         var_A0 = &HFF
  loc_15855AC:       End If
  loc_15855B2:       If (var_A0 = &HFF) Then
  loc_15855C9:         Me.FGrid.Row = CVar(CLng(var_9C))
  loc_15855E4:         Me.FGrid.Col = CVar(CLng(var_9E))
  loc_15855F0:         Set var_A4 = Me.FGrid
  loc_1585614:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_158561C:         Exit Sub
  loc_158561D:       End If
  loc_1585628:       var_D4 = CVar(CLng(var_9C)) 'Long
  loc_158562D:       var_F4 = &HA
  loc_158564B:       var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_158566F:       Set var_A8 = Me.FGrid
  loc_1585675:       var_138 = var_A8.TextMatrix)
  loc_15856A5:       If (CVar(CLng(var_9C)) And Not((&HA And (CDbl(Val(CStr(var_138))) <= CDbl(&H64))))) Then
  loc_15856BB:         var_C4 = "Check % App. UpTo Disc."
  loc_15856C1:         MsgBox(var_C4, 0, var_138, var_148, var_168)
  loc_15856D3:         var_A0 = &HFF
  loc_15856D6:       End If
  loc_15856DC:       If (var_A0 = &HFF) Then
  loc_15856F3:         Me.FGrid.Row = CVar(CLng(var_9C))
  loc_158570E:         Me.FGrid.Col = CVar(CLng(var_9E))
  loc_158571A:         Set var_A4 = Me.FGrid
  loc_158573E:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1585746:         Exit Sub
  loc_1585747:       End If
  loc_1585747:     End If
  loc_158574A:   Next var_118 'Integer
  loc_1585752: Next var_114 'Variant
  loc_158575C: Set var_A4 = Me.TopCtrl1
  loc_1585762: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_158577B: If (CStr() = "Add") Then
  loc_1585784:   var_E4 = 0
  loc_15857A1:   var_B0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS NUMERIC)),0)+1 AS MyCode From RWParameter WHERE ISNumeric(substring(Code,3,4))=1 AND SITE_CODE='" & MemVar_1F95070
  loc_15857B1:   unk_4A7702.Execute CStr() & "'", var_C4, -1
  loc_15857B9:   var_A4 = var_A4.Fields
  loc_15857C1:   var_E4 = var_A8.Item(var_A8)
  loc_15857C9:   var_AC = var_AC.Value
  loc_1585802:   var_148 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1585814:   var_C4 = "0000"
  loc_1585830:   var_168 = (1 + Format(CStr(var_138), var_C4))
  loc_1585835:   var_B0 = CStr(var_168)
  loc_158583B:   global_60 = var_B0
  loc_1585850: Else
  loc_158585E:   Set var_A4 = Me.Txt
  loc_1585864:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0)
  loc_158586C:   1 = var_A8.Tag
  loc_1585877:   global_60 = var_B0
  loc_1585885: End If
  loc_158588E: unk_4A7702.BeginTrans var_2B4
  loc_1585897: var_86 = CByte(1) 'Byte
  loc_15858C2: unk_4A7702.Execute "Delete From RWParameter Where Code='" & global_60 & "'", var_C4, -1
  loc_15858F5: var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15858FF: For var_2D4 = 1 To "0000": var_9C = var_2D4 'Variant
  loc_158590A:   var_D4 = CVar(CLng(var_9C)) 'Long
  loc_1585912:   var_F4 = CVar(CLng(1)) 'Long
  loc_158595A:   Set var_A8 = Me.FGrid
  loc_15859A2:   var_2AC = CStr(Me.FGrid.TextMatrix))
  loc_15859D5:   If CBool(CVar(CLng(4)) And (var_2AC <> vbNullString)) Then
  loc_15859E6:     Set var_A4 = Me.Txt
  loc_15859EC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_2AC, CVar(CLng(var_9C)), CVar(CLng(3)) And (CStr(var_A8.TextMatrix)) <> vbNullString), CVar(CLng(var_9C)), (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString))
  loc_15859F4:     var_F4 = var_A8.Text
  loc_15859FE:     var_D4 = CVar(CLng(var_9C)) 'Long
  loc_1585A06:     var_F4 = CVar(CLng(1)) 'Long
  loc_1585A20:     var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1585A26:     var_148 = Trim(var_138)
  loc_1585A3F:     var_198 = CVar(CLng(var_9C)) 'Long
  loc_1585A47:     var_1E8 = CVar(CLng(2)) 'Long
  loc_1585A71:     var_238 = CVar(CLng(var_9C)) 'Long
  loc_1585A79:     var_2F4 = CVar(CLng(3)) 'Long
  loc_1585AA3:     var_33C = CVar(CLng(var_9C)) 'Long
  loc_1585AAB:     var_35C = CVar(CLng(4)) 'Long
  loc_1585AD5:     var_3D4 = CVar(CLng(var_9C)) 'Long
  loc_1585AFF:     var_9D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1585B31:     var_9E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1585B63:     var_9E8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1585B96:     var_9F0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1585BC8:     var_9F4 = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_9C)), var_9F0, &HA, CVar(CLng(var_9C)), var_9E8, CVar(CLng(9)))
  loc_1585BD6:     Set var_6CC = Me.Txt
  loc_1585BDC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_6D0, CVar(CLng(var_9C)), var_9E0, CVar(CLng(7)))
  loc_1585BFB:     Set var_724 = Me.Txt
  loc_1585C01:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_728, CVar(CLng(var_9C)))
  loc_1585C20:     Set var_77C = Me.Txt
  loc_1585C26:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_780, var_9D8)
  loc_1585C48:     Proc_183_7_EB17D4(var_870, Date)
  loc_1585C51:     Set var_8A4 = Me.TopCtrl1
  loc_1585C57:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(5)))
  loc_1585CA5:     var_B0 = "Insert Into RWParameter(Code,Name,Category,Sno,RPointOnAmt,RPoint,RPointValue,LimitLow,LimitUp,RedeemPer,AppUpToDiscPer,CompOperator,CondApp,LimitAppOn,PointEvalOn,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & global_60
  loc_1585CBA:     var_168 = CVar(var_B0 & "','" & var_2AC & "','") 'String
  loc_1585CFC:     var_298 = var_168 & var_148 & "'," & CVar(Val(CStr(var_9C))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1585D55:     var_58C = var_298 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_9D8) & "," & CVar(var_9E0) & "," & CVar(var_9E8) & "," 
  loc_1585DA3:     var_7B0 = var_58C & CVar(var_9F0) & ",'" & CVar(var_9F4) & "','" & Trim(CVar(var_6D0)) & "','" & Trim(CVar(var_728)) & "','" & Trim(CVar(var_780)) 
  loc_1585DE9:     var_928 = var_7B0 & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_870 & ",'" & IIf((CStr(var_8B4) = "Add"), "A", "E") 
  loc_1585E13:     unk_4A7702.Execute CStr(var_928 & "','" & CVar(MemVar_1F95078) & "')"), var_9AC, -1
  loc_1585EDF:   End If
  loc_1585EE2: Next var_2D4 'Variant
  loc_1585EEE: unk_4A7702.CommitTrans
  loc_1585EF7: var_86 = CByte(0) 'Byte
  loc_1585F06: Me.Requery -1
  loc_1585F16: Me.Requery -1
  loc_1585F1F: Set var_A4 = Me.DGHelp
  loc_1585F58: Me.Find "SearchCode='" & global_60 & "'", 0, 1
  loc_1585F68: Set var_A4 = Me.TopCtrl1
  loc_1585F6E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D4)
  loc_1585F87: If (CStr(DGHelp.DispID_FFFF) = "Add") Then
  loc_1585F8A:   Call TopCtrl1_UnknownEvent_A()
  loc_1585F8F:   Exit Sub
  loc_1585F90: End If
  loc_1585FA5: var_B0 = "INI"
  loc_1585FB3: Call Proc_319_54_E7B264(Proc_5_1_100EC1C(var_B0, Me))
  loc_1585FBE: Call Proc_319_53_140BC3C(global_68)
  loc_1585FC3: Exit Sub
  loc_1585FC4: ' Referenced from: 158501C
  loc_1585FCD: If (CInt(var_86) = 1) Then
  loc_1585FD6:   unk_4A7702.RollbackTrans
  loc_1585FDB: End If
  loc_1585FE3: Set var_A4 = Err()
  loc_1585FE9: Call 0.Method_arg_2C (var_B0)
  loc_1586002: MsgBox(CVar(var_B0), &H10, var_138, var_148, var_168)
  loc_1586015: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E2F584
  'Data Table: 4A76E0
  loc_E2F578: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E2F57B:   Call DGHelp_UnknownEvent_9()
  loc_E2F580: End If
  loc_E2F580: Exit Sub
  loc_E2F583: Exit Sub
End Sub

Public Function MasterFormExitGet() '4A83FC
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4A840B
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E977B8
  'Data Table: 4A76E0
  Dim Me As Recordset15
  loc_E97746: On Error Goto loc_E977AF
  loc_E9774F: Me.MoveFirst
  loc_E97779: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E977A1: Proc_5_0_1107AD0(&HFF, Me, global_68)
  loc_E977A9: Call Proc_319_53_140BC3C(0)
  loc_E977AE: Exit Sub
  loc_E977AF: ' Referenced from: E97746
  loc_E977AF: Proc_6_60_E63754(var_A0)
  loc_E977B4: Exit Sub
End Sub

Public Sub Proc_319_48_1207DD8
  'Data Table: 4A76E0
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_1207914: On Error Goto loc_1207DD2
  loc_1207925: Set var_88 = Me.Txt
  loc_120792B: Call 0.Method_Proc_319_48_1207DD80 (CInt(0), var_8C)
  loc_120794A: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_1207966: Set var_B4 = Me.Txt
  loc_120796C: Call 0.Method_Proc_319_48_1207DD80 (CInt(0), var_B8)
  loc_1207987: Set var_88 = Me.Txt
  loc_120798D: Call 0.Method_Proc_319_48_1207DD80 (CInt(0), var_8C)
  loc_12079A5: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_12079B4: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_12079CA: Set var_C4 = Me.FGrid
  loc_12079E1: global_56 = CStr(CLng(var_C4.BackColor))
  loc_12079F7: var_C4.Cols = &HB
  loc_12079FF: var_A0 = CVar(CLng(0)) 'Long
  loc_1207A04: var_E8 = &H226
  loc_1207A10: LateIdCallSt
  loc_1207A18: var_A0 = 0
  loc_1207A24: var_E8 = CVar(CLng(0)) 'Long
  loc_1207A29: var_108 = "S.No"
  loc_1207A32: LateIdCallSt
  loc_1207A3D: var_A0 = CVar(CLng(1)) 'Long
  loc_1207A42: var_E8 = &HAF0
  loc_1207A4E: LateIdCallSt
  loc_1207A59: var_A0 = CVar(CLng(1)) 'Long
  loc_1207A64: var_E8 = CVar(CInt(1)) 'Integer
  loc_1207A6B: LateIdCallSt
  loc_1207A73: var_A0 = 0
  loc_1207A7F: var_E8 = CVar(CLng(1)) 'Long
  loc_1207A84: var_108 = "Category"
  loc_1207A8D: LateIdCallSt
  loc_1207A98: var_A0 = CVar(CLng(2)) 'Long
  loc_1207A9D: var_E8 = &H6A4
  loc_1207AA9: LateIdCallSt
  loc_1207AB4: var_A0 = CVar(CLng(2)) 'Long
  loc_1207ABF: var_E8 = CVar(CInt(7)) 'Integer
  loc_1207AC6: LateIdCallSt
  loc_1207ACE: var_A0 = 0
  loc_1207ADA: var_E8 = CVar(CLng(2)) 'Long
  loc_1207ADF: var_108 = "Points On Amt (Rs)"
  loc_1207AE8: LateIdCallSt
  loc_1207AF3: var_A0 = CVar(CLng(3)) 'Long
  loc_1207AF8: var_E8 = &H320
  loc_1207B04: LateIdCallSt
  loc_1207B0F: var_A0 = CVar(CLng(3)) 'Long
  loc_1207B1A: var_E8 = CVar(CInt(7)) 'Integer
  loc_1207B21: LateIdCallSt
  loc_1207B29: var_A0 = 0
  loc_1207B35: var_E8 = CVar(CLng(3)) 'Long
  loc_1207B3A: var_108 = "Points"
  loc_1207B43: LateIdCallSt
  loc_1207B4E: var_A0 = CVar(CLng(4)) 'Long
  loc_1207B53: var_E8 = &H60E
  loc_1207B5F: LateIdCallSt
  loc_1207B6A: var_A0 = CVar(CLng(4)) 'Long
  loc_1207B75: var_E8 = CVar(CInt(7)) 'Integer
  loc_1207B7C: LateIdCallSt
  loc_1207B84: var_A0 = 0
  loc_1207B90: var_E8 = CVar(CLng(4)) 'Long
  loc_1207B95: var_108 = "Per Point Val (Rs)"
  loc_1207B9E: LateIdCallSt
  loc_1207BA9: var_A0 = CVar(CLng(5)) 'Long
  loc_1207BAE: var_E8 = &H47E
  loc_1207BBA: LateIdCallSt
  loc_1207BC5: var_A0 = CVar(CLng(5)) 'Long
  loc_1207BD0: var_E8 = CVar(CInt(7)) 'Integer
  loc_1207BD7: LateIdCallSt
  loc_1207BDF: var_A0 = 0
  loc_1207BEB: var_E8 = CVar(CLng(5)) 'Long
  loc_1207BF0: var_108 = "L. Limit"
  loc_1207BF9: LateIdCallSt
  loc_1207C04: var_A0 = CVar(CLng(6)) 'Long
  loc_1207C09: var_E8 = &H47E
  loc_1207C15: LateIdCallSt
  loc_1207C20: var_A0 = CVar(CLng(6)) 'Long
  loc_1207C2B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1207C32: LateIdCallSt
  loc_1207C3A: var_A0 = 0
  loc_1207C46: var_E8 = CVar(CLng(6)) 'Long
  loc_1207C4B: var_108 = "Comparison"
  loc_1207C54: LateIdCallSt
  loc_1207C5F: var_A0 = CVar(CLng(7)) 'Long
  loc_1207C64: var_E8 = &H47E
  loc_1207C70: LateIdCallSt
  loc_1207C7B: var_A0 = CVar(CLng(7)) 'Long
  loc_1207C86: var_E8 = CVar(CInt(7)) 'Integer
  loc_1207C8D: LateIdCallSt
  loc_1207C95: var_A0 = 0
  loc_1207CA1: var_E8 = CVar(CLng(7)) 'Long
  loc_1207CA6: var_108 = "U. Limit"
  loc_1207CAF: LateIdCallSt
  loc_1207CBA: var_A0 = CVar(CLng(8)) 'Long
  loc_1207CBF: var_E8 = 0
  loc_1207CCB: LateIdCallSt
  loc_1207CD6: var_A0 = CVar(CLng(8)) 'Long
  loc_1207CE1: var_E8 = CVar(CInt(1)) 'Integer
  loc_1207CE8: LateIdCallSt
  loc_1207CF0: var_A0 = 0
  loc_1207CFC: var_E8 = CVar(CLng(8)) 'Long
  loc_1207D01: var_108 = "Condition"
  loc_1207D0A: LateIdCallSt
  loc_1207D15: var_A0 = CVar(CLng(9)) 'Long
  loc_1207D1A: var_E8 = &H672
  loc_1207D26: LateIdCallSt
  loc_1207D31: var_A0 = CVar(CLng(9)) 'Long
  loc_1207D3C: var_E8 = CVar(CInt(7)) 'Integer
  loc_1207D43: LateIdCallSt
  loc_1207D4B: var_A0 = 0
  loc_1207D57: var_E8 = CVar(CLng(9)) 'Long
  loc_1207D5C: var_108 = "Sale Redemption%"
  loc_1207D65: LateIdCallSt
  loc_1207D6D: var_A0 = &HA
  loc_1207D76: var_E8 = &H5AA
  loc_1207D82: LateIdCallSt
  loc_1207D8A: var_A0 = &HA
  loc_1207D99: var_E8 = CVar(CInt(7)) 'Integer
  loc_1207DA0: LateIdCallSt
  loc_1207DA8: var_A0 = 0
  loc_1207DB1: var_E8 = &HA
  loc_1207DBA: var_108 = "App. Upto Disc%"
  loc_1207DC3: LateIdCallSt
  loc_1207DCD: Set var_C4 = Nothing 
  loc_1207DD1: Exit Sub
  loc_1207DD2: ' Referenced from: 1207914
  loc_1207DD2: Proc_6_60_E63754(var_C4, var_108, var_E8, var_A0, var_C4, var_E8, var_A0, var_C4)
  loc_1207DD7: Exit Sub
End Sub

Public Sub Proc_319_49_10956B8
  'Data Table: 4A76E0
  Dim Me As Recordset15
  Dim var_B8 As TextBox
  Dim unk_4A7702 As Connection15
  Dim var_E0 As Fields15
  Dim var_F4 As Field20
  loc_109544C: If (Me.RecordCount = 0) Then
  loc_109544F:   Proc_319_49_10956B8 = 0
  loc_1095455: End If
  loc_1095459: Set var_A0 = Me.TopCtrl1
  loc_109545F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1095478: If (CStr() = "Add") Then
  loc_10954B6:   Set var_A0 = Me.Txt
  loc_10954BC:   Call 0.Method_Proc_319_49_10956B80 (CInt(0), var_B8, var_BC, "Select Count(*) From RWParameter Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_10954DD:   unk_4A7702.Execute var_E0 & var_BC & "'", 0, var_F4
  loc_10954ED:    = var_E0.Item()
  loc_10954F5:    = var_F4.Value
  loc_1095526:   If (var_B8.Text.Fields > 0) Then
  loc_1095544:     var_B0 = "Duplicate Name"
  loc_109554A:     MsgBox(var_B0, &H40, "Information", var_124, var_144)
  loc_1095565:     Set var_A0 = Me.Txt
  loc_109556B:     Call 0.Method_Proc_319_49_10956B80 (CInt(0))
  loc_1095573:     var_B8.SetFocus
  loc_1095584:     Proc_319_49_10956B8 = &HFF
  loc_109558A:   End If
  loc_109558D: Else
  loc_10955C8:   Set var_A0 = Me.Txt
  loc_10955CE:   Call 0.Method_Proc_319_49_10956B80 (CInt(0), var_B8, var_BC, "Select Count(*) From RWParameter Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_1095600:   unk_4A7702.Execute var_E0 & var_BC & "' And Name <>'" & global_80 & "'", 0, var_F4
  loc_1095610:    = var_E0.Item(var_B8)
  loc_1095618:    = var_F4.Value
  loc_109564D:   If (var_B8.Text.Fields > 0) Then
  loc_1095671:     MsgBox("Duplicate Name", &H40, "Information", var_124, var_144)
  loc_109568C:     Set var_A0 = Me.Txt
  loc_1095692:     Call 0.Method_Proc_319_49_10956B80 (CInt(0))
  loc_109569A:     var_B8.SetFocus
  loc_10956AB:     Proc_319_49_10956B8 = &HFF
  loc_10956B1:   End If
  loc_10956B1: End If
  loc_10956B1: Proc_319_49_10956B8 = var_B8
End Sub

Public Sub Proc_319_50_E42660
  'Data Table: 4A76E0
  loc_E4263C: Set var_88 = Me.TopCtrl1
  loc_E42642: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4265B: If (CStr() = "Browse") Then
  loc_E4265E:   Exit Sub
  loc_E4265F: End If
  loc_E4265F: Exit Sub
End Sub

Public Sub Proc_319_51_1125CD8(arg_C) '1125CD8
  'Data Table: 4A76E0
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_BC As MSHFlexGrid
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_A4 As Variant
  Dim var_11C As Variant
  Dim var_168 As Double
  Dim var_12C As Variant
  Dim var_150 As Variant
  Dim var_130 As Variant
  Dim var_178 As Variant
  Dim var_B8 As Variant
  loc_1125993: var_A0 = CLng(Me.FGrid.Col)
  loc_11259A3: If (var_A0 = CLng(1)) Then
  loc_11259B9:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11259C1:   var_FC = CVar(CLng(1)) 'Long
  loc_11259D2:   Set var_8C = Me.TxtGrid
  loc_11259D8:   Call 0.Method_Proc_319_51_1125CD80 (0, var_A4, var_A8)
  loc_11259E0:   var_FC = var_A4.Text
  loc_11259F7:   var_11C = CVar(CStr(Trim(CVar(var_A8)))) 'String
  loc_11259FF:   Set var_130 = Me.FGrid
  loc_1125A05:   LateIdCallSt
  loc_1125A26: Else
  loc_1125A2D:   If (var_A0 = CLng(3)) Then
  loc_1125A3C:     Set var_8C = Me.TxtGrid
  loc_1125A42:     Call 0.Method_Proc_319_51_1125CD80 (0, var_A4, var_A8, var_130)
  loc_1125A4A:     var_11C = var_A4.Text
  loc_1125A6D:     var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1125A75:     var_12C = CVar(CLng(3)) 'Long
  loc_1125AA2:     var_150 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_1125AAA:     Set var_130 = Me.FGrid
  loc_1125AB0:     LateIdCallSt
  loc_1125AD6:   Else
  loc_1125ADD:     If Not (var_A0 = CLng(2)) Then
  loc_1125AE7:       If Not (var_A0 = CLng(4)) Then
  loc_1125AF1:         If Not (var_A0 = CLng(5)) Then
  loc_1125AFB:           If Not (var_A0 = CLng(7)) Then
  loc_1125B05:             If Not (var_A0 = CLng(9)) Then
  loc_1125B11:               If (var_A0 = &HA) Then
  loc_1125B14:               End If
  loc_1125B14:             End If
  loc_1125B14:           End If
  loc_1125B14:         End If
  loc_1125B14:       End If
  loc_1125B20:       Set var_8C = Me.TxtGrid
  loc_1125B26:       Call 0.Method_Proc_319_51_1125CD80 (0, var_A4, var_A8, var_130, var_150, 1)
  loc_1125B2E:       1 = var_A4.Text
  loc_1125B3B:       var_168 = Val(var_A8)
  loc_1125B51:       var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1125B5A:       Set var_130 = Me.FGrid
  loc_1125B69:       var_12C = CVar(CLng(var_130.Col)) 'Long
  loc_1125B96:       var_178 = CVar(CStr(Format(CVar(var_168), "0.00"))) 'String
  loc_1125B9E:       Set var_17C = Me.FGrid
  loc_1125BA4:       LateIdCallSt
  loc_1125BCE:     Else
  loc_1125BD5:       If (var_A0 = CLng(6)) Then
  loc_1125BE5:         Set var_8C = Me.TxtGrid
  loc_1125BEB:         Call 0.Method_Proc_319_51_1125CD80 (arg_C, var_A4, var_A8, var_17C, var_178, 1, 1)
  loc_1125C0A:         If (var_A8 <> vbNullString) Then
  loc_1125C25:           Set var_A4 = Me.ListView.SelectedItem
  loc_1125C2B:           var_A8 = var_A4.Text
  loc_1125C3D:           Set var_BC = Me.TxtGrid
  loc_1125C43:           Call 0.Method_Proc_319_51_1125CD80 (arg_C, var_130, var_A8, var_FC, var_168)
  loc_1125C4B:           var_130.Text = var_A4.Text
  loc_1125C61:         End If
  loc_1125C74:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1125C8E:         Set var_8C = Me.TxtGrid
  loc_1125C94:         Call 0.Method_Proc_319_51_1125CD80 (arg_C, var_A4, var_A8, CVar(CLng(6)))
  loc_1125C9C:         var_DC = var_A4.Text
  loc_1125CA4:         var_B8 = CVar(var_A8) 'String
  loc_1125CAC:         Set var_130 = Me.FGrid
  loc_1125CB2:         LateIdCallSt
  loc_1125CCC:       End If
  loc_1125CCC:     End If
  loc_1125CCC:   End If
  loc_1125CCC: End If
  loc_1125CD1: Proc_319_51_1125CD8 = &HFF
End Sub

Public Sub Proc_319_52_F226B4
  'Data Table: 4A76E0
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F225B6: global_80 = vbNullString
  loc_F225C8: Set var_8C = Me.Txt
  loc_F225CE: Call 0.Method_Proc_319_52_F226B4C (var_8E, var_86)
  loc_F225DE: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F225F4:   Set var_8C = Me.Txt
  loc_F225FA:   Call 0.Method_Proc_319_52_F226B40 (CInt(var_86), var_98)
  loc_F22602:   var_98.Text = vbNullString
  loc_F2261E:   Set var_8C = Me.Txt
  loc_F22624:   Call 0.Method_Proc_319_52_F226B40 (CInt(var_86), var_98)
  loc_F2262C:   var_98.Tag = vbNullString
  loc_F2263B: Next var_92 'Byte
  loc_F22654: Me.FGrid.Rows = 1
  loc_F22671: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F22679: Set var_98 = Me.FGrid
  loc_F226A8: Me.FGrid.FixedRows = 1
  loc_F226B0: Exit Sub
End Sub

Public Sub Proc_319_53_140BC3C
  'Data Table: 4A76E0
  Dim var_90 As Integer
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim unk_4A7702 As Connection15
  Dim var_8C As Recordset15
  Dim var_88 As Recordset15
  Dim var_130 As Fields15
  Dim var_148 As Variant
  Dim var_11C As Variant
  Dim var_134 As TextBox
  Dim var_12C As Variant
  loc_140B218: On Error Goto loc_140BC33
  loc_140B21D: var_90 = 1
  loc_140B237: If (Me.RecordCount > 0) Then
  loc_140B282:   var_108 = "Select RWParameter.* From RWParameter where RWParameter.Code='" & Me.Fields.Item("SearchCode").Value & "' Order by Sno" 
  loc_140B290:   unk_4A7702.Execute CStr(var_108), var_12C, -1
  loc_140B29B:   Set var_8C = var_130
  loc_140B308:   unk_4A7702.Execute CStr("Select U_Name,U_AE,U_EntDt From RWParameter where Code='" & var_8C.Fields.Item("Code").Value & "'  "), var_12C, -1
  loc_140B313:   Set var_88 = var_130
  loc_140B367:   var_130 = var_88.Fields
  loc_140B3D0:   var_198 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), var_130) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_130.Item("U_AE")), var_130) = "E"), "Modified By : ", "User : "))
  loc_140B415:   Me.LblUser.Caption = CStr(var_90 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_198)))
  loc_140B48F:   var_134 = var_88.Fields.Item("U_AE")
  loc_140B4F0:   var_198 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_134)) = "E"), "Last Update : ", "entdt : "))
  loc_140B535:   Me.LblLDt.Caption = CStr(var_198 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_140B581:   If (var_8C.RecordCount > 0) Then
  loc_140B584:     Call Proc_319_52_F226B4()
  loc_140B589:     ' Referenced from: 140BBFA
  loc_140B598:     If Not(var_8C.EOF) Then
  loc_140B5D4:       Set var_130 = Me.Txt
  loc_140B5DA:       Call 0.Method_Proc_319_53_140BC3C0 (CInt(0), var_134)
  loc_140B5E2:       var_134.Tag = CStr(var_8C.Fields.Item("Code").Value)
  loc_140B631:       Set var_130 = Me.Txt
  loc_140B637:       Call 0.Method_Proc_319_53_140BC3C0 (CInt(0), var_134)
  loc_140B63F:       var_134.Text = CStr(var_8C.Fields.Item("Name").Value)
  loc_140B68B:       Set var_130 = Me.Txt
  loc_140B691:       Call 0.Method_Proc_319_53_140BC3C0 (CInt(1), var_134)
  loc_140B699:       var_134.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("CondApp")))
  loc_140B6E3:       Set var_130 = Me.Txt
  loc_140B6E9:       Call 0.Method_Proc_319_53_140BC3C0 (CInt(2), var_134)
  loc_140B6F1:       var_134.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("LimitAppOn")))
  loc_140B73B:       Set var_130 = Me.Txt
  loc_140B741:       Call 0.Method_Proc_319_53_140BC3C0 (CInt(3), var_134)
  loc_140B749:       var_134.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("PointEvalOn")))
  loc_140B761:       Set var_1F8 = Me.FGrid
  loc_140B764:       var_B4 = vbNullString
  loc_140B779:       var_D8 = CVar(CLng(var_90)) 'Long
  loc_140B781:       var_11C = CVar(CLng(0)) 'Long
  loc_140B7B1:       var_E8 = CVar(CStr(var_8C.Fields.Item("SNo").Value)) 'String
  loc_140B7B8:       LateIdCallSt
  loc_140B807:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Category")), CVar(CLng(1)), CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_140B80E:       LateIdCallSt
  loc_140B840:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_140B848:       var_148 = CVar(CLng(2)) 'Long
  loc_140B875:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("RPointOnAmt")), "0.00"))) 'String
  loc_140B87C:       LateIdCallSt
  loc_140B8B2:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_140B8BA:       var_148 = CVar(CLng(3)) 'Long
  loc_140B8E7:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("RPoint")), "0.00"))) 'String
  loc_140B8EE:       LateIdCallSt
  loc_140B924:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_140B92C:       var_148 = CVar(CLng(4)) 'Long
  loc_140B959:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("RPointValue")), "0.00"))) 'String
  loc_140B960:       LateIdCallSt
  loc_140B996:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_140B99E:       var_148 = CVar(CLng(5)) 'Long
  loc_140B9CB:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("LimitLow")), "0.00"))) 'String
  loc_140B9D2:       LateIdCallSt
  loc_140BA08:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_140BA10:       var_148 = CVar(CLng(7)) 'Long
  loc_140BA3D:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("LimitUp")), "0.00"))) 'String
  loc_140BA44:       LateIdCallSt
  loc_140BA7A:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_140BA82:       var_148 = CVar(CLng(9)) 'Long
  loc_140BAAF:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("RedeemPer")), "0.00"))) 'String
  loc_140BAB6:       LateIdCallSt
  loc_140BAEC:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_140BB22:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("AppUpToDiscPer")), "0.00"))) 'String
  loc_140BB29:       LateIdCallSt
  loc_140BB78:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CompOperator")), CVar(CLng(6)), CVar(CLng(var_90)), var_1F8, var_12C, 1, 1)) 'String
  loc_140BB7F:       LateIdCallSt
  loc_140BBCA:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CondApp")), CVar(CLng(8)), CVar(CLng(var_90)), var_1F8, var_E8, &HA)) 'String
  loc_140BBD1:       LateIdCallSt
  loc_140BBE5:       Set var_1F8 = Nothing 
  loc_140BBEF:       var_90 = (var_90 + 1)
  loc_140BBF5:       var_8C.MoveNext
  loc_140BBFA:       GoTo loc_140B589
  loc_140BBFD:     End If
  loc_140BBFF:     var_90 = 0
  loc_140BC15:     Me.FGrid.FixedRows = 1
  loc_140BC1D:   End If
  loc_140BC20: Else
  loc_140BC20:   Call Proc_319_52_F226B4(var_90, var_90, var_1F8, var_E8, var_F8)
  loc_140BC25: End If
  loc_140BC25: Call Proc_319_55_EB7CE4(var_1F8, var_12C)
  loc_140BC2F: Set var_8C = Nothing
  loc_140BC32: Exit Sub
  loc_140BC33: ' Referenced from: 140B218
  loc_140BC33: Proc_6_60_E63754(1)
  loc_140BC38: Exit Sub
End Sub

Public Sub Proc_319_54_E7B264(arg_C) 'E7B264
  'Data Table: 4A76E0
  Dim var_98 As TextBox
  loc_E7B212: Set var_8C = Me.Txt
  loc_E7B218: Call 0.Method_Proc_319_54_E7B264C (var_8E, var_86)
  loc_E7B228: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7B23E:   Set var_8C = Me.Txt
  loc_E7B244:   Call 0.Method_Proc_319_54_E7B2640 (CInt(var_86), var_98)
  loc_E7B24C:   var_98.Enabled = arg_C
  loc_E7B25B: Next var_92 'Byte
  loc_E7B261: Exit Sub
End Sub

Public Sub Proc_319_55_EB7CE4
  'Data Table: 4A76E0
  loc_EB7C60: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EB7C72:   Me.DGHelp.Visible = False
  loc_EB7C7A: End If
  loc_EB7C95: If (Me.FrmList.Visible = &HFF) Then
  loc_EB7CA4:   Me.FrmList.Visible = False
  loc_EB7CAC: End If
  loc_EB7CC8: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB7CDA:   Me.FGPoint.Visible = False
  loc_EB7CE2: End If
  loc_EB7CE2: Exit Sub
End Sub

Public Sub Proc_319_56_FC5A98
  'Data Table: 4A76E0
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC591B: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FC5920:   var_92 = 1 'Byte
  loc_FC5924: End If
  loc_FC592D: Set var_98 = Me.TxtGrid
  loc_FC5933: Call 0.Method_Proc_319_56_FC5A980 (0, var_B0)
  loc_FC5956: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC598A: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC59AE:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC59B1:     GoTo loc_FC5A83
  loc_FC59B4:   End If
  loc_FC59B8:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC59E2:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC59EC:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC5A21:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC5A45:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC5A5E:     Set var_98 = Me.TxtGrid
  loc_FC5A64:     Call 0.Method_Proc_319_56_FC5A980 (0, var_B0, CVar(CLng(var_92)))
  loc_FC5A6C:     var_B0.SetFocus
  loc_FC5A7D:     Proc_319_56_FC5A98 = 0
  loc_FC5A83:     ' Referenced from: FC59B1
  loc_FC5A83:   End If
  loc_FC5A86: Next var_D4 'Integer
  loc_FC5A90: Proc_319_56_FC5A98 = &HFF
End Sub
