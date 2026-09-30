VERSION 5.00
Begin VB.Form rRepTel
  Caption = "ReprtForm"
  ForeColor = &HE0E0E0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form3"
  MaxButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 165
  ClientTop = 345
  ClientWidth = 11790
  ClientHeight = 7560
  LockControls = -1  'True
  Begin CommandButton BtnParam
    Caption = "&For Site"
    BackColor = &HC0C0C0&
    Left = 9375
    Top = 0
    Width = 1305
    Height = 375
    Visible = 0   'False
    TabIndex = 19
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DownPicture = "rRepTel.frx":0
    ToolTipText = "Works Only at Head Office"
  End
  Begin Frame Frame1
    Caption = "Site Selection"
    Left = 6630
    Top = 240
    Width = 4065
    Height = 3540
    Visible = 0   'False
    TabIndex = 20
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox txtSite
      Index = 0
      Left = 1095
      Top = 285
      Width = 2820
      Height = 360
      TabIndex = 22
    End
    Begin CommandButton Command1
      Caption = "&OK"
      Left = 1485
      Top = 3060
      Width = 1485
      Height = 390
      TabIndex = 21
    End
    Begin DataGrid DGSite
      Left = 1095
      Top = 660
      Width = 2835
      Height = 2355
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 23
    End
    Begin Label Label1
      Caption = "Site Name"
      Left = 120
      Top = 315
      Width = 900
      Height = 270
      TabIndex = 24
    End
  End
  Begin DataGrid DGPNTNo
    Left = 6975
    Top = 4350
    Width = 3375
    Height = 2295
    Visible = 0   'False
    TabIndex = 5
  End
  Begin CheckBox Check1
    Caption = "All"
    Index = 1
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 375
    Top = 1860
    Width = 915
    Height = 195
    Visible = 0   'False
    TabIndex = 13
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
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 5145
    Top = 1830
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 12
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
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 360
    Top = 3885
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 11
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
    Index = 4
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 5175
    Top = 3900
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 10
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
  Begin TextBox TxtSearch
    BackColor = &HE0E0E0&
    Left = 0
    Top = 1470
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 510
    Top = 30
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
  Begin Frame FrmList
    Left = 1155
    Top = 5055
    Width = 2415
    Height = 1875
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 2325
      Height = 1830
      TabStop = 0   'False
      TabIndex = 7
    End
  End
  Begin CommandButton BTNEXIT
    Caption = "E&xit"
    Left = 5460
    Top = 7185
    Width = 1650
    Height = 375
    TabIndex = 1
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Exit Form"
    Style = 1
  End
  Begin CommandButton BTNPRINT
    Caption = "&Execute Report"
    Index = 0
    Left = 3840
    Top = 7185
    Width = 1620
    Height = 375
    TabIndex = 0
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Print Report"
    Style = 1
  End
  Begin PictureBox Pic
    BackColor = &H808080&
    Left = 0
    Top = 7125
    Width = 11790
    Height = 435
    Enabled = 0   'False
    TabIndex = 3
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 2 'Align Bottom
    Begin Label LblTitle
      Caption = "LblTitle"
      BackColor = &H0&
      ForeColor = &HFFFFFF&
      Left = 7230
      Top = 0
      Width = 4470
      Height = 315
      TabIndex = 2
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 12
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
    TabIndex = 4
  End
  Begin MSHFlexGrid GridSel
    Index = 1
    Left = 315
    Top = 1785
    Width = 4695
    Height = 1650
    Visible = 0   'False
    TabIndex = 14
  End
  Begin MSHFlexGrid GridSel
    Index = 2
    Left = 5085
    Top = 1785
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 15
  End
  Begin MSHFlexGrid GridSel
    Index = 4
    Left = 5100
    Top = 3810
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 16
  End
  Begin MSHFlexGrid GridSel
    Index = 3
    Left = 300
    Top = 3825
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 17
  End
  Begin MSHFlexGrid FGrid
    Left = 1725
    Top = 75
    Width = 4455
    Height = 1560
    TabIndex = 18
  End
End

Attribute VB_Name = "rRepTel"

Private global_156 As Integer
Private global_158 As Integer
Private global_124 As Integer
Private global_192 As Integer
Private global_194 As Integer
Private global_136 As Integer
Private global_140 As Variant

Private Sub Command1_Click() 'E9E264
  'Data Table: 4E4430
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_E9E1EC: Me.Frame1.Visible = False
  loc_E9E202: Set var_88 = Me.txtSite
  loc_E9E208: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_E9E21B: global_92 = var_8C.Tag
  loc_E9E237: Set var_88 = Me.txtSite
  loc_E9E23D: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_E9E250: global_96 = var_8C.Text
  loc_E9E25E: Call Proc_102_77_105DB98()
  loc_E9E263: Exit Sub
End Sub

Private Sub txtSite_GotFocus(Index As Integer) 'FC9BAC
  'Data Table: 4E4430
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_9C As TextBox
  Dim var_D8 As Variant
  Dim var_47F8 As String
  loc_FC9A0C: On Error Goto loc_FC9B81
  loc_FC9A12: var_8A = Index
  loc_FC9A1D: If (var_8A = CInt(0)) Then
  loc_FC9A6E:   Set var_98 = Me.txtSite
  loc_FC9A74:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0)
  loc_FC9A7C:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_FC9A94:   If (var_8A Or (var_A0 = vbNullString)) Then
  loc_FC9A97:     Exit Sub
  loc_FC9A98:   End If
  loc_FC9AA5:   Set var_98 = Me.txtSite
  loc_FC9AAB:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C)
  loc_FC9AB3:   var_A0 = var_9C.Text
  loc_FC9ABB:   var_D8 = CVar(var_A0) 'String
  loc_FC9B00:   If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_FC9B09:     Me.MoveFirst
  loc_FC9B2E:     Set var_98 = Me.txtSite
  loc_FC9B34:     Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0, "Name =")
  loc_FC9B3C:     0 = var_9C.Text
  loc_FC9B4A:     Proc_6_17_EAAE40(var_D8, CVar(var_A0))
  loc_FC9B60:     Me.Find CStr(1 & var_D8), var_FC, 
  loc_FC9B78:   End If
  loc_FC9B78: End If
  loc_FC9B7D: Set var_88 = Nothing
  loc_FC9B80: Exit Sub
  loc_FC9B81: ' Referenced from: FC9A0C
  loc_FC9B87: Call 0.Method_arg_50 (var_A0)
  loc_FC9B9C: Proc_6_152_10790A8(var_A0)
  loc_FC9BA8: Exit Sub
  loc_FC9BAA: var_47F8 = "txtSite_GotFocus"
End Sub

Private Sub txtSite_KeyDown(KeyCode As Integer, Shift As Integer) 'EFD73C
  'Data Table: 4E4430
  loc_EFD678: On Error Goto loc_EFD711
  loc_EFD681: If (Shift = &HD) Then
  loc_EFD68C:   var_88 = "	"
  loc_EFD692:   Proc_303_0_FBACC8(var_88)
  loc_EFD69A: End If
  loc_EFD6A8: If (KeyCode = CInt(0)) Then
  loc_EFD6C3:   Set var_A0 = Nothing
  loc_EFD6CE:   Set var_9C = Nothing
  loc_EFD6FC:   Proc_6_69_134A630(Me.DGSite, Me.txtSite, KeyCode, global_200, Shift, &HFF)
  loc_EFD710: End If
  loc_EFD710: Exit Sub
  loc_EFD711: ' Referenced from: EFD678
  loc_EFD717: Call 0.Method_arg_50 (var_88, 1, var_9C, var_A0)
  loc_EFD72C: Proc_6_152_10790A8(var_88, "txtSite_KeyDown", 0)
  loc_EFD738: Exit Sub
  loc_EFD739: CExtInstUnk
End Sub

Private Sub txtSite_KeyPress(KeyAscii As Integer) 'EBFD7C
  'Data Table: 4E4430
  loc_EBFCE4: On Error Goto loc_EBFD51
  loc_EBFCF5: If (KeyAscii = CInt(0)) Then
  loc_EBFD14:   If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_EBFD26:     var_A0 = "Name"
  loc_EBFD41:     Proc_6_89_1470B00(Me.txtSite, KeyAscii, global_200, arg_10)
  loc_EBFD50:   End If
  loc_EBFD50: End If
  loc_EBFD50: Exit Sub
  loc_EBFD51: ' Referenced from: EBFCE4
  loc_EBFD57: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_EBFD6C: Proc_6_152_10790A8(var_A0, "txtSite_KeyPress")
  loc_EBFD78: Exit Sub
End Sub

Private Sub txtSite_KeyUp(KeyCode As Integer, Shift As Integer) 'EDF668
  'Data Table: 4E4430
  loc_EDF5B8: On Error Goto loc_EDF63F
  loc_EDF5C9: If (KeyCode = CInt(0)) Then
  loc_EDF5EF:   If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_EDF600:     Call txtSite_KeyDown(KeyCode, global_156)
  loc_EDF614:     var_A4 = "Name"
  loc_EDF62F:     Proc_6_89_1470B00(Me.txtSite, KeyCode, global_200, Shift)
  loc_EDF63E:   End If
  loc_EDF63E: End If
  loc_EDF63E: Exit Sub
  loc_EDF63F: ' Referenced from: EDF5B8
  loc_EDF645: Call 0.Method_arg_50 (var_A4, var_A4, &HFF)
  loc_EDF65A: Proc_6_152_10790A8(var_A4, "txtSite_KeyUp")
  loc_EDF666: Exit Sub
End Sub

Private Sub txtSite_LostFocus(Index As Integer) 'E8976C
  'Data Table: 4E4430
  loc_E89700: On Error Goto loc_E89743
  loc_E8970B: Call txtSite_Validate(Index)
  loc_E8972B: If (Me.FrmList.Visible = &HFF) Then
  loc_E8973A:   Me.FrmList.Visible = False
  loc_E89742: End If
  loc_E89742: Exit Sub
  loc_E89743: ' Referenced from: E89700
  loc_E89749: Call 0.Method_arg_50 (var_90)
  loc_E8975E: Proc_6_152_10790A8(var_90, "txtSite_LostFocus")
  loc_E8976A: Exit Sub
End Sub

Private Sub txtSite_Validate(Cancel As Boolean) 'FD96D4
  'Data Table: 4E4430
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_FD950C: On Error Goto loc_FD96AB
  loc_FD9512: var_86 = Cancel
  loc_FD951D: If (var_86 = CInt(0)) Then
  loc_FD956E:   Set var_94 = Me.txtSite
  loc_FD9574:   Call 0.Method_txtSite_Validate0 (Cancel, var_98, var_9C)
  loc_FD957C:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_FD9594:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_FD95A5:     Set var_94 = Me.txtSite
  loc_FD95AB:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FD95B3:     var_98.Tag = vbNullString
  loc_FD95CD:     Set var_94 = Me.txtSite
  loc_FD95D3:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FD95DB:     var_98.Text = vbNullString
  loc_FD95EA:   Else
  loc_FD9626:     Set var_B0 = Me.txtSite
  loc_FD962C:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FD9634:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD9678:     var_9C = CStr(Me.Fields.Item("Code").Value)
  loc_FD9686:     Set var_B0 = Me.txtSite
  loc_FD968C:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FD9694:     var_B4.Tag = var_9C
  loc_FD96AA:   End If
  loc_FD96AA: End If
  loc_FD96AA: Exit Sub
  loc_FD96AB: ' Referenced from: FD950C
  loc_FD96B1: Call 0.Method_arg_50 (var_9C)
  loc_FD96B9: var_CC = "txtSite_Validate"
  loc_FD96C6: Proc_6_152_10790A8(var_9C)
  loc_FD96D2: Exit Sub
End Sub

Private Sub BtnParam_Click() 'E9E1A8
  'Data Table: 4E4430
  Dim Me As Recordset15
  Dim var_88 As Frame
  loc_E9E12A: Set global_200 = New 
  loc_E9E13C: Me.Recordset15.CursorLocation = 3
  loc_E9E164: Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F95044), 0
  loc_E9E172: CVarUnk
  loc_E9E177: VerifyVarObj
  loc_E9E17D: Set var_88 = Me.DGSite
  loc_E9E183: LateIdStAd
  loc_E9E19D: Me.Frame1.Visible = True
  loc_E9E1A5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E615C4
  'Data Table: 4E4430
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6158F: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E61597: Call Proc_102_73_E4B454()
  loc_E615A7: Set var_A8 = Me.TxtGrid
  loc_E615AD: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E615B5: var_AC.Visible = False
  loc_E615C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1EFA0
  'Data Table: 4E4430
  loc_E1EF97: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EF9F: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '10A6210
  'Data Table: 4E4430
  Dim var_9C As String
  Dim var_AC As Variant
  Dim arg_C As Integer
  Dim var_D4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_11C As Long
  loc_10A5F83: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_138))) Then
  loc_10A5F99:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A5FA9:   var_9C = "+{Tab}"
  loc_10A5FAF:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag))
  loc_10A5FB9:   arg_C = 0
  loc_10A5FBF: Else
  loc_10A5FF6:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_136))) Then
  loc_10A600C:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A6022:     Proc_303_0_FBACC8("	", 0)
  loc_10A602C:     arg_C = 0
  loc_10A602F:   End If
  loc_10A602F: End If
  loc_10A6035: global_156 = arg_C
  loc_10A605B: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10A607F: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_10A6095:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A60AD:   var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10A60B2:   var_104 = vbNullString
  loc_10A60BC:   Set var_118 = Me.FGrid
  loc_10A60C2:   LateIdCallSt
  loc_10A60ED:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A60F2:   var_E4 = 2
  loc_10A60FB:   var_104 = vbNullString
  loc_10A6105:   Set var_D4 = Me.FGrid
  loc_10A610B:   LateIdCallSt
  loc_10A611D: End If
  loc_10A6127: If (CLng(arg_C) = &HD) Then
  loc_10A613D:   var_11C = CLng(Me.FGrid.Row)
  loc_10A614D:   If Not (var_11C = CLng(0)) Then
  loc_10A6157:     If Not (var_11C = CLng(1)) Then
  loc_10A6161:       If Not (var_11C = CLng(2)) Then
  loc_10A616B:         If Not (var_11C = CLng(3)) Then
  loc_10A6175:           If Not (var_11C = CLng(4)) Then
  loc_10A617F:             If Not (var_11C = CLng(5)) Then
  loc_10A6189:               If Not (var_11C = CLng(6)) Then
  loc_10A6193:                 If Not (var_11C = CLng(7)) Then
  loc_10A619D:                   If Not (var_11C = CLng(8)) Then
  loc_10A61A7:                     If (var_11C = CLng(9)) Then
  loc_10A61AA:                     End If
  loc_10A61AA:                   End If
  loc_10A61AA:                 End If
  loc_10A61AA:               End If
  loc_10A61AA:             End If
  loc_10A61AA:           End If
  loc_10A61AA:         End If
  loc_10A61AA:       End If
  loc_10A61AA:     End If
  loc_10A61EB:     Proc_6_61_1077158(Me, Me.FGrid, Me.TxtGrid, 0, 0, 0, var_11C, Me.FGrid)
  loc_10A6205:     global_158 = 0
  loc_10A6208:   End If
  loc_10A6208: End If
  loc_10A620A: arg_C = 0
  loc_10A620D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F0A374
  'Data Table: 4E4430
  Dim var_9C As Long
  loc_F0A2A7: var_9C = CLng(Me.FGrid.Row)
  loc_F0A2B7: If Not (var_9C = CLng(0)) Then
  loc_F0A2C1:   If Not (var_9C = CLng(1)) Then
  loc_F0A2CB:     If Not (var_9C = CLng(2)) Then
  loc_F0A2D5:       If Not (var_9C = CLng(3)) Then
  loc_F0A2DF:         If Not (var_9C = CLng(4)) Then
  loc_F0A2E9:           If Not (var_9C = CLng(5)) Then
  loc_F0A2F3:             If Not (var_9C = CLng(6)) Then
  loc_F0A2FD:               If Not (var_9C = CLng(7)) Then
  loc_F0A307:                 If Not (var_9C = CLng(8)) Then
  loc_F0A311:                   If (var_9C = CLng(9)) Then
  loc_F0A314:                   End If
  loc_F0A314:                 End If
  loc_F0A314:               End If
  loc_F0A314:             End If
  loc_F0A314:           End If
  loc_F0A314:         End If
  loc_F0A314:       End If
  loc_F0A314:     End If
  loc_F0A314:   End If
  loc_F0A32C:   var_AC = 0
  loc_F0A355:   Proc_6_61_1077158(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F0A36A: End If
  loc_F0A36F: global_158 = 0
  loc_F0A372: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'F71940
  'Data Table: 4E4430
  Dim var_9C As Long
  loc_F71817: var_9C = CLng(Me.FGrid.Row)
  loc_F71827: If Not (var_9C = CLng(5)) Then
  loc_F71831:   If Not (var_9C = CLng(6)) Then
  loc_F7183B:     If Not (var_9C = CLng(7)) Then
  loc_F71845:       If Not (var_9C = CLng(8)) Then
  loc_F7184F:         If (var_9C = CLng(9)) Then
  loc_F71852:         End If
  loc_F71852:       End If
  loc_F71852:     End If
  loc_F71852:   End If
  loc_F71890:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F718A5: Else
  loc_F718AC:   If Not (var_9C = CLng(0)) Then
  loc_F718B6:     If Not (var_9C = CLng(1)) Then
  loc_F718C0:       If Not (var_9C = CLng(2)) Then
  loc_F718CA:         If Not (var_9C = CLng(3)) Then
  loc_F718D4:           If (var_9C = CLng(4)) Then
  loc_F718D7:           End If
  loc_F718D7:         End If
  loc_F718D7:       End If
  loc_F718D7:     End If
  loc_F71915:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index)
  loc_F71927:   End If
  loc_F71927: End If
  loc_F71931: If (CLng(Index) <> &HD) Then
  loc_F71939:   global_158 = &HFF
  loc_F7193C: End If
  loc_F7193C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1EF50
  'Data Table: 4E4430
  loc_E1EF47: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E1EF4F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1EFF0
  'Data Table: 4E4430
  loc_E1EFE7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EFEF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43348
  'Data Table: 4E4430
  Dim var_8C As TextBox
  loc_E43327: Set var_88 = Me.TxtGrid
  loc_E4332D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E43335: var_8C.Visible = False
  loc_E43341: Call Proc_102_73_E4B454()
  loc_E43346: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'FE6ABC
  'Data Table: 4E4430
  Dim var_98 As Variant
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_FE691B: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FE6936: var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE6974: Set var_108 = Me.TxtGrid
  loc_FE697A: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_FE6982: var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_FE69B3: var_114 = CLng(Me.FGrid.Row)
  loc_FE69C3: If (var_114 = CLng(2)) Then
  loc_FE69D7:   If (global_52 = "EpabxCallRep") Then
  loc_FE69E7:     ReDim var_11C(0 To 1)
  loc_FE69FE:     var_11C(0) = "Room"
  loc_FE6A0D:     var_11C(1) = "Department"
  loc_FE6A3F:     CRefVarAry
  loc_FE6A76:     Set global_196 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C))
  loc_FE6A87:   End If
  loc_FE6A8A: Else
  loc_FE6A91:   If (var_114 = CLng(3)) Then
  loc_FE6A9A:     var_124 = global_52
  loc_FE6AA0:   Else
  loc_FE6AA7:     If (var_114 = CLng(4)) Then
  loc_FE6AB0:       var_128 = global_52
  loc_FE6AB3:     End If
  loc_FE6AB3:   End If
  loc_FE6AB3: End If
  loc_FE6AB8: Set var_88 = Nothing
  loc_FE6ABB: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '126A394
  'Data Table: 4E4430
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As Variant
  Dim var_B0 As Long
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  Dim Me As Recordset15
  Dim var_10C As Variant
  loc_1269E36: If (CLng(Shift) = &H1B) Then
  loc_1269E45:   Set var_8C = Me.TxtGrid
  loc_1269E4B:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1269E64:   Set var_98 = Me.TxtGrid
  loc_1269E6A:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_1269E72:   var_9C.Text = var_90.Tag
  loc_1269E8E:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1269E97:   Set var_8C = Me.FGrid
  loc_1269EB3:   Set var_8C = Me.TxtGrid
  loc_1269EB9:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_1269EC1:   var_90.Visible = FGrid.DispID_8001
  loc_1269ECD:   Call Proc_102_73_E4B454(arg_14)
  loc_1269ED2:   Exit Sub
  loc_1269ED3: End If
  loc_1269EE6: var_B0 = CLng(Me.FGrid.Row)
  loc_1269EF6: If (var_B0 = CLng(2)) Then
  loc_1269F0A:   If (global_52 = "EpabxCallRep") Then
  loc_1269F2E:     Set var_8C = Me.TxtGrid
  loc_1269F34:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1269F3C:     var_B8 = var_90.Left
  loc_1269F4D:     Set var_98 = Me.TxtGrid
  loc_1269F53:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_1269F5B:     var_BC = var_9C.Top
  loc_1269F6C:     Set var_C0 = Me.TxtGrid
  loc_1269F72:     Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_1269F7A:     var_C8 = var_C4.Height
  loc_1269F8B:     Set var_CC = Me.TxtGrid
  loc_1269F91:     Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_1269F99:     var_D4 = var_D0.Width
  loc_1269FE6:     Proc_6_114_11A421C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_126A00A:   End If
  loc_126A014:   If (CLng(Shift) = &HD) Then
  loc_126A024:     Call Proc_102_71_11F47E0(0, 0, var_E6, CInt(var_B8))
  loc_126A02F:     If (var_E6 = &HFF) Then
  loc_126A032:       Call Proc_102_75_F00E9C(CInt(((var_BC + var_C8) + CDbl(&H19))), CInt(var_D4))
  loc_126A037:     End If
  loc_126A037:   End If
  loc_126A03A: Else
  loc_126A041:   If (var_B0 = CLng(3)) Then
  loc_126A055:     If (global_52 = "EpabxCallRep") Then
  loc_126A061:       var_B8 = Me.RecordCount
  loc_126A06F:       If (var_B8 > 0) Then
  loc_126A08A:         var_10C = CVar((CDbl(Me.FGrid.Left) + CDbl(2200))) 'Single
  loc_126A099:         Me.DGPNTNo.Left = var_10C
  loc_126A0C0:         var_10C = CVar((CDbl(Me.FGrid.Top) + CDbl(1100))) 'Single
  loc_126A0CF:         Me.DGPNTNo.Top = var_10C
  loc_126A0E8:         If (CLng(Shift) = &H1B) Then
  loc_126A107:           If (CBool(Me.DGPNTNo.Visible) = &HFF) Then
  loc_126A119:             Me.DGPNTNo.Visible = False
  loc_126A121:           End If
  loc_126A121:           Exit Sub
  loc_126A122:         End If
  loc_126A12D:         Set var_C4 = Me.TxtGrid
  loc_126A13A:         Set var_9C = Nothing
  loc_126A166:         Set var_90 = var_C4
  loc_126A175:         Proc_6_69_134A630(Me.DGPNTNo, var_90, 0, global_132, Shift, &HFF)
  loc_126A18F:         If (Shift = &HD) Then
  loc_126A1A1:           Me.DGPNTNo.Visible = False
  loc_126A1B6:           Call Proc_102_71_11F47E0(0, 0, var_E6, 1, Nothing)
  loc_126A1C1:           If (var_E6 = &HFF) Then
  loc_126A1C4:             Call Proc_102_75_F00E9C(var_9C, 0)
  loc_126A1C9:           End If
  loc_126A1C9:         End If
  loc_126A1C9:       End If
  loc_126A1C9:     End If
  loc_126A1CC:   Else
  loc_126A1D3:     If (var_B0 = CLng(4)) Then
  loc_126A1F7:       Set var_8C = Me.TxtGrid
  loc_126A1FD:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8)
  loc_126A205:       0 = var_90.Left
  loc_126A216:       Set var_98 = Me.TxtGrid
  loc_126A21C:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_126A235:       Set var_C0 = Me.TxtGrid
  loc_126A23B:       Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_126A254:       Set var_CC = Me.TxtGrid
  loc_126A25A:       Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_126A2AF:       Proc_6_114_11A421C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_126A2DD:       If (CLng(Shift) = &HD) Then
  loc_126A2ED:         Call Proc_102_71_11F47E0(0, 0, var_E6, CInt(var_B8))
  loc_126A2F8:         If (var_E6 = &HFF) Then
  loc_126A2FB:           Call Proc_102_75_F00E9C(CInt(((var_9C.Top + var_C4.Height) + CDbl(&H19))), CInt(var_D0.Width))
  loc_126A300:         End If
  loc_126A300:       End If
  loc_126A303:     Else
  loc_126A30A:       If Not (var_B0 = CLng(0)) Then
  loc_126A314:         If (var_B0 = CLng(1)) Then
  loc_126A317:         End If
  loc_126A357:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_158 = &HFF))) Then
  loc_126A367:           Call Proc_102_71_11F47E0(0, 0, var_E6)
  loc_126A372:           If (var_E6 = &HFF) Then
  loc_126A375:             Call Proc_102_75_F00E9C(0)
  loc_126A37A:           End If
  loc_126A37A:         End If
  loc_126A37D:       Else
  loc_126A384:         If (var_B0 = CLng(5)) Then
  loc_126A38D:           var_120 = global_52
  loc_126A390:         End If
  loc_126A390:       End If
  loc_126A390:     End If
  loc_126A390:   End If
  loc_126A390: End If
  loc_126A390: Exit Sub
  loc_126A391: var_B0 = Record Of arg_14FC 'Copy battery of vars to single variable
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EE0ED8
  'Data Table: 4E4430
  Dim var_9C As Long
  loc_EE0E27: Proc_6_58_E06050(arg_10)
  loc_EE0E3F: var_9C = CLng(Me.FGrid.Row)
  loc_EE0E4F: If (var_9C = CLng(3)) Then
  loc_EE0E63:   If (global_52 = "EpabxCallRep") Then
  loc_EE0E82:     If (CBool(Me.DGPNTNo.Visible) = &HFF) Then
  loc_EE0E94:       var_A4 = "PNTNo"
  loc_EE0EAF:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_132, arg_10)
  loc_EE0EBE:     End If
  loc_EE0EBE:   End If
  loc_EE0EC1: Else
  loc_EE0EC8:   If (var_9C = CLng(5)) Then
  loc_EE0ED1:     var_B0 = global_52
  loc_EE0ED4:   End If
  loc_EE0ED4: End If
  loc_EE0ED4: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F75464
  'Data Table: 4E4430
  Dim var_9C As Long
  loc_F7533B: var_9C = CLng(Me.FGrid.Row)
  loc_F7534B: If Not (var_9C = CLng(2)) Then
  loc_F75355:   If (var_9C = CLng(4)) Then
  loc_F75358:   End If
  loc_F7537A:   If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F7538B:     Call TxtGrid_KeyDown(KeyCode, global_156)
  loc_F75390:   End If
  loc_F753BE:   Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, 0, Shift)
  loc_F753D1: Else
  loc_F753D8:   If (var_9C = CLng(3)) Then
  loc_F753EC:     If (global_52 = "EpabxCallRep") Then
  loc_F75412:       If ((Shift <> &HD) And (CBool(Me.DGPNTNo.Visible) = 0)) Then
  loc_F75423:         Call TxtGrid_KeyDown(KeyCode, global_156)
  loc_F75452:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_132, Shift, "PNTNo")
  loc_F75461:       End If
  loc_F75461:     End If
  loc_F75461:   End If
  loc_F75461: End If
  loc_F75461: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22814
  'Data Table: 4E4430
  Dim arg_10 As Integer
  loc_E227F0: On Error Goto loc_E2280B
  loc_E227FE: Call Proc_102_71_11F47E0(Cancel, &HFF)
  loc_E22807: arg_10 = Not(var_88)
  loc_E2280A: Exit Sub
  loc_E2280B: ' Referenced from: E227F0
  loc_E2280B: Proc_6_60_E63754(arg_10)
  loc_E22810: Exit Sub
  loc_E22811: CExtInstUnk
End Sub

Private Sub btnExit_Click() 'E184CC
  'Data Table: 4E4430
  loc_E184C1: Me.Global.Unload Me
  loc_E184C9: Exit Sub
End Sub

Private Sub BTNPRINT_Click() 'FE2248
  'Data Table: 4E4430
  Dim var_98 As Variant
  Dim var_B8 As Long
  Dim var_CC As Variant
  Dim var_EC As CheckBox
  loc_FE206C: On Error Goto loc_FE2241
  loc_FE2074: global_124 = &HFF
  loc_FE2088: If (global_52 = "EpabxCallRep") Then
  loc_FE208E:   var_98 = CVar(CLng(0)) 'Long
  loc_FE2093:   var_B8 = 0
  loc_FE20C4:   Call Proc_102_78_1062950(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix))
  loc_FE20D8:   If (var_E6 = 0) Then
  loc_FE20E0:     global_124 = 0
  loc_FE20E3:     Exit Sub
  loc_FE20E4:   End If
  loc_FE20E7:   var_98 = CVar(CLng(1)) 'Long
  loc_FE211D:   Call Proc_102_78_1062950(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_FE2131:   If (var_E6 = 0) Then
  loc_FE2139:     global_124 = 0
  loc_FE213C:     Exit Sub
  loc_FE213D:   End If
  loc_FE2149:   Set var_CC = Me.Check1
  loc_FE214F:   Call 0.Method_BTNPRINT_Click0 (1, var_EC, var_DE, global_124, var_98)
  loc_FE2157:   global_124 = var_EC.Value
  loc_FE216D:   If (CLng(var_DE) = 0) Then
  loc_FE218B:     Call Proc_102_74_1281C8C(global_176, 1, CByte(0), var_E4)
  loc_FE2196:     global_60 = var_E4
  loc_FE21A6:     If (global_124 = 0) Then
  loc_FE21A9:       Exit Sub
  loc_FE21AA:     End If
  loc_FE21AA:   End If
  loc_FE21B6:   Set var_CC = Me.Check1
  loc_FE21BC:   Call 0.Method_BTNPRINT_Click0 (2, var_EC, var_DE)
  loc_FE21C4:   var_B8 = var_EC.Value
  loc_FE21DA:   If (CLng(var_DE) = 0) Then
  loc_FE21F8:     Call Proc_102_74_1281C8C(global_180, 2, CByte(1))
  loc_FE2203:     global_64 = var_E4
  loc_FE2213:     If (global_124 = 0) Then
  loc_FE2216:       Exit Sub
  loc_FE2217:     End If
  loc_FE2217:   End If
  loc_FE2217: End If
  loc_FE221A: var_98 = CVar(Me) 'Address
  loc_FE2225: Call unk_4E4438.RetBack
  loc_FE2238: Me.Global.Unload Me
  loc_FE2240: Exit Sub
  loc_FE2241: ' Referenced from: FE206C
  loc_FE2241: Proc_6_60_E63754(var_98, var_E4)
  loc_FE2246: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'F25360
  'Data Table: 4E4430
  loc_F25263: If (Proc_6_113_E6DB0C(KeyCode) = &HFF) Then
  loc_F2528E:   Set var_90 = Me.GridSel
  loc_F25294:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_F252BC:   Me.TxtSearch.Visible = False
  loc_F252C4: End If
  loc_F252CE: If (CLng(KeyCode) = &H2E) Then
  loc_F252DE:   Me.TxtSearch.Text = vbNullString
  loc_F252E6: End If
  loc_F252FB: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_F25326:   Set var_90 = Me.GridSel
  loc_F2532C:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94, Val(Me.TxtSearch.Tag))
  loc_F25354:   Me.TxtSearch.Visible = False
  loc_F2535C: End If
  loc_F2535C: Exit Sub
  loc_F2535D: Loop Until GridSel.DispID_8001 'do at: F24757
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) '11CE3E8
  'Data Table: 4E4430
  Dim var_F4 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim Me As Recordset15
  loc_11CDFB1: var_90 = Me.TxtSearch.Tag
  loc_11CDFC6: If (var_90 = CStr(1)) Then
  loc_11CE01C:   Set var_A0 = Me.GridSel
  loc_11CE022:   Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4)
  loc_11CE098:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(Val(Me.TxtSearch.Tag)), global_100, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CE0C3: Else
  loc_11CE0D2:   If (var_90 = CStr(2)) Then
  loc_11CE0FD:     var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CE128:     Set var_A0 = Me.GridSel
  loc_11CE12E:     Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CE1A4:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_104, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CE1CF:   Else
  loc_11CE1DE:     If (var_90 = CStr(3)) Then
  loc_11CE209:       var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CE234:       Set var_A0 = Me.GridSel
  loc_11CE23A:       Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CE242:       var_B4 = var_A4.Col
  loc_11CE2B0:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_108, KeyAscii, Me.Fields.Item(CVar(CLng(var_B4))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CE2DB:     Else
  loc_11CE2EA:       If (var_90 = CStr(4)) Then
  loc_11CE315:         var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CE340:         Set var_A0 = Me.GridSel
  loc_11CE346:         Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4, var_B4)
  loc_11CE3BC:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_112, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CE3E4:       End If
  loc_11CE3E4:     End If
  loc_11CE3E4:   End If
  loc_11CE3E4: End If
  loc_11CE3E4: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E901B0
  'Data Table: 4E4430
  loc_E90149: Me.TxtSearch.Text = vbNullString
  loc_E90179: Set var_90 = Me.GridSel
  loc_E9017F: Call 0.Method_TxtSearch_LostFocus0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E901A7: Me.TxtSearch.Visible = False
  loc_E901AF: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E8FEE0
  'Data Table: 4E4430
  loc_E8FE79: Me.TxtSearch.Text = vbNullString
  loc_E8FEA9: Set var_90 = Me.GridSel
  loc_E8FEAF: Call 0.Method_TxtSearch_Click0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E8FED7: Me.TxtSearch.Visible = False
  loc_E8FEDF: Exit Sub
End Sub

Private Sub Form_Load() 'EDF388
  'Data Table: 4E4430
  loc_EDF2D0: On Error Goto loc_EDF380
  loc_EDF2E3: Set var_88 = Me
  loc_EDF2E9: Proc_6_23_DFC5B8(var_88, 0)
  loc_EDF2FA: Call 0.Method_arg_160 (var_88)
  loc_EDF308: Call 0.Method_arg_164 (var_88)
  loc_EDF310: Call Proc_102_72_160F4DC(0)
  loc_EDF31D: Call 0.Method_arg_7C (CDbl(590))
  loc_EDF32A: Call 0.Method_MeC (CDbl(8000))
  loc_EDF337: Call 0.Method_Me4 (CDbl(11900))
  loc_EDF344: If (MemVar_1F95070 = "HO") Then
  loc_EDF34D:   Set var_88 = Me.PictShortCuts
  loc_EDF353:   MDIForm1.PictShortCuts.Visible = True
  loc_EDF35B: End If
  loc_EDF365: Set var_88 = Me.TopCtrl1
  loc_EDF36B: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_6803000E("Add")
  loc_EDF374: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_0()
  loc_EDF37F: Exit Sub
  loc_EDF380: ' Referenced from: EDF2D0
  loc_EDF380: Proc_6_60_E63754()
  loc_EDF385: Exit Sub
End Sub

Private Sub Form_Resize() 'E64A70
  'Data Table: 4E4430
  loc_E64A26: Call 0.Method_arg_98 (var_86)
  loc_E64A35: If (CLng(var_86) <> 1) Then
  loc_E64A4E:   Proc_6_23_DFC5B8(Me, 0)
  loc_E64A5E:   Call 0.Method_arg_7C (CDbl(590))
  loc_E64A6A:   Call 0.Method_arg_74 (CDbl(&H14))
  loc_E64A6F: End If
  loc_E64A6F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E8A640
  'Data Table: 4E4430
  loc_E8A5D3: Set global_100 = Nothing
  loc_E8A5E5: Set global_104 = Nothing
  loc_E8A5F7: Set global_108 = Nothing
  loc_E8A609: Set global_112 = Nothing
  loc_E8A61B: Set global_196 = Nothing
  loc_E8A62D: Set global_132 = Nothing
  loc_E8A639: MemVar_1F951E8 = Nothing
  loc_E8A63D: Exit Sub
End Sub

Private Sub Form_Activate() 'E27C3C
  'Data Table: 4E4430
  loc_E27C20: Set var_88 = MemVar_1F95248.Picture3
  loc_E27C31: Call 0.Method_arg_74 (MDIForm1.Picture3.Left)
  loc_E27C39: Exit Sub
End Sub

Private Sub Check1_Click(Index As Integer) 'FF9BE8
  'Data Table: 4E4430
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  loc_FF99F9: Set var_88 = Me.Check1
  loc_FF99FF: Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9A1D: If (CLng(var_8C.Value) = 0) Then
  loc_FF9A2E:   Set var_88 = Me.GridSel
  loc_FF9A34:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9A3C:   var_8C.Enabled = True
  loc_FF9A52:   Set var_88 = Me.GridSel
  loc_FF9A58:   Call 0.Method_Check1_Click0 (Index)
  loc_FF9A79:   If (CLng(var_8C.Rows) > 1) Then
  loc_FF9A8F:     Set var_88 = Me.GridSel
  loc_FF9A95:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9A9D:     var_8C.Row = 1
  loc_FF9ABC:     Set var_88 = Me.GridSel
  loc_FF9AC2:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9ACA:     var_8C.Col = 0
  loc_FF9AD6:   End If
  loc_FF9AD9: Else
  loc_FF9AE8:   Set var_88 = Me.GridSel
  loc_FF9AEE:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9AF6:   var_8C.Enabled = False
  loc_FF9B0C:   Set var_88 = Me.GridSel
  loc_FF9B12:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9B33:   If (CLng(var_8C.Rows) > 1) Then
  loc_FF9B49:     Set var_88 = Me.GridSel
  loc_FF9B4F:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9B76:     Set var_88 = Me.GridSel
  loc_FF9B7C:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9B84:     var_8C.Col = 0
  loc_FF9B9A:     Set var_88 = Me.GridSel
  loc_FF9BA0:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9BB7:     var_A0 = CVar((CLng(var_8C.Rows) - 1)) 'Long
  loc_FF9BC6:     Set var_C4 = Me.GridSel
  loc_FF9BCC:     Call 0.Method_Check1_Click0 (Index, var_C8)
  loc_FF9BD4:     var_C8.RowSel = 0
  loc_FF9BE7:   End If
  loc_FF9BE7: End If
  loc_FF9BE7: Exit Sub
End Sub

Private Sub Check1_GotFocus(Index As Integer) 'E428BC
  'Data Table: 4E4430
  Dim var_8C As CheckBox
  loc_E4289F: Set var_88 = Me.Check1
  loc_E428A5: Call 0.Method_Check1_GotFocus0 (Index, var_8C)
  loc_E428AD: var_8C.BackColor = &HFF
  loc_E428B9: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E227BC
  'Data Table: 4E4430
  loc_E227A2: If (Shift = &HD) Then
  loc_E227B3:   Proc_303_0_FBACC8("	")
  loc_E227BB: End If
  loc_E227BB: Exit Sub
End Sub

Private Sub Check1_Validate(Cancel As Boolean) 'E42AB0
  'Data Table: 4E4430
  Dim var_8C As CheckBox
  loc_E42A93: Set var_88 = Me.Check1
  loc_E42A99: Call 0.Method_Check1_Validate0 (Cancel, var_8C)
  loc_E42AA1: var_8C.BackColor = &H800000
  loc_E42AAD: Exit Sub
End Sub

Private Sub DGSite_UnknownEvent_9 'F44C34
  'Data Table: 4E4430
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F44B2B: Me.DGSite.Visible = False
  loc_F44B4A: If (Me.RecordCount > 0) Then
  loc_F44B89:   Set var_B4 = Me.txtSite
  loc_F44B8F:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F44B97:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F44BCA:   var_B0 = Me.Fields.Item("Name")
  loc_F44BE9:   Set var_B4 = Me.txtSite
  loc_F44BEF:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F44BF7:   var_B8.Text = CStr(var_B0.Value)
  loc_F44C0D: End If
  loc_F44C18: Set var_A8 = Me.txtSite
  loc_F44C1E: Call 0.Method_DGSite_UnknownEvent_90 (CInt(0))
  loc_F44C26: var_B0.SetFocus
  loc_F44C32: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'EB3E64
  'Data Table: 4E4430
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_EB3DF0: Set var_9C = Me.ListView.SelectedItem
  loc_EB3E07: Set var_A4 = Me.TxtGrid
  loc_EB3E0D: Call 0.Method_ListView_UnknownEvent_130 (0, var_A8)
  loc_EB3E15: var_A8.Text = var_9C.Text
  loc_EB3E37: Me.FrmList.Visible = False
  loc_EB3E48: Set var_88 = Me.TxtGrid
  loc_EB3E4E: Call 0.Method_ListView_UnknownEvent_130 (0)
  loc_EB3E56: var_9C.SetFocus
  loc_EB3E62: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E4B0A8
  'Data Table: 4E4430
  Dim var_8C As MSHFlexGrid
  loc_E4B08B: Set var_88 = Me.GridSel
  loc_E4B091: Call 0.Method_GridSel_UnknownEvent_00 (Cancel, var_8C)
  loc_E4B099: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E4B0A5: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_8 'E4B380
  'Data Table: 4E4430
  Dim var_8C As MSHFlexGrid
  loc_E4B363: Set var_88 = Me.GridSel
  loc_E4B369: Call 0.Method_GridSel_UnknownEvent_80 (Cancel, var_8C)
  loc_E4B371: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E4B37D: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A '1177F78
  'Data Table: 4E4430
  Dim var_98 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_168 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  Dim var_4701 As Integer
  loc_1177BCE: If (arg_10 = &HD) Then
  loc_1177BDF:   Proc_303_0_FBACC8("	")
  loc_1177BE7: End If
  loc_1177BF1: Set var_94 = Me.GridSel
  loc_1177BF7: Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1177C18: If (CLng(var_98.Rows) < 1) Then
  loc_1177C1B:   Exit Sub
  loc_1177C1C: End If
  loc_1177C30: Set var_94 = Me.GridSel
  loc_1177C36: Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1177C58: If ((CLng(arg_10) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_1177C6B:   Set var_94 = Me.GridSel
  loc_1177C71:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1177C79:   var_98.CellFontName = "WINGDINGS"
  loc_1177C97:   Set var_94 = Me.GridSel
  loc_1177C9D:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1177CA5:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_1177CBB:   Set var_94 = Me.GridSel
  loc_1177CC1:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1177CD2:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_1177CEA:   Set var_CC = Me.GridSel
  loc_1177CF0:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_D0, 0)
  loc_1177CF8:   var_100 = var_D0.TextMatrix)
  loc_1177D0E:   Set var_164 = Me.GridSel
  loc_1177D14:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_168, var_100)
  loc_1177D25:   var_190 = CVar(CLng(var_168.Row)) 'Long
  loc_1177D73:   Set var_17C = Me.GridSel
  loc_1177D79:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_180, CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_1177D81:   LateIdCallSt
  loc_1177DB5:   var_1E2 = Cancel
  loc_1177DBE:   If (var_1E2 = 1) Then
  loc_1177DD2:     var_86 = CInt((UBound(global_176, 1) + 1))
  loc_1177DE4:     ReDim Preserve global_176(0 To CLng(var_86))
  loc_1177DF8:     Set var_94 = Me.GridSel
  loc_1177DFE:     Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86, var_1E2)
  loc_1177E1A:     global_176(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1177E28:   Else
  loc_1177E2E:     If (var_1E2 = 2) Then
  loc_1177E42:       var_86 = CInt((UBound(global_180, 1) + 1))
  loc_1177E54:       ReDim Preserve global_180(0 To CLng(var_86))
  loc_1177E68:       Set var_94 = Me.GridSel
  loc_1177E6E:       Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86, var_180)
  loc_1177E8A:       global_180(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1177E98:     Else
  loc_1177E9E:       If (var_1E2 = 3) Then
  loc_1177EB2:         var_86 = CInt((UBound(global_184, 1) + 1))
  loc_1177EC4:         ReDim Preserve global_184(0 To CLng(var_86))
  loc_1177ED8:         Set var_94 = Me.GridSel
  loc_1177EDE:         Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86)
  loc_1177EFA:         global_184(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1177F08:       Else
  loc_1177F0E:         If (var_1E2 = 4) Then
  loc_1177F22:           var_86 = CInt((UBound(global_188, 1) + 1))
  loc_1177F34:           ReDim Preserve global_188(0 To CLng(var_86))
  loc_1177F48:           Set var_94 = Me.GridSel
  loc_1177F4E:           Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86)
  loc_1177F6A:           global_188(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1177F75:         End If
  loc_1177F75:       End If
  loc_1177F75:     End If
  loc_1177F75:   End If
  loc_1177F75: End If
  loc_1177F75: Exit Sub
  loc_1177F76: var_4701 = var_190
End Sub

Private Sub GridSel_UnknownEvent_C '11391F0
  'Data Table: 4E4430
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_88 As TextBox
  loc_1138E8A: Set var_88 = Me.GridSel
  loc_1138E90: Call 0.Method_GridSel_UnknownEvent_C0 (Cancel)
  loc_1138EB1: Set var_A0 = Me.GridSel
  loc_1138EB7: Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_A4)
  loc_1138EE1: If ((CLng(var_8C.Col) = 0) Or (CLng(var_A4.Row) = 0)) Then
  loc_1138EE4:   Exit Sub
  loc_1138EE5: End If
  loc_1138EE8: var_B6 = Cancel
  loc_1138EF1: If (var_B6 = 1) Then
  loc_1138F0C:   Set var_88 = Me.GridSel
  loc_1138F12:   Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C)
  loc_1138F1A:   var_9C = var_8C.Col
  loc_1138F84:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_100, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1138FA5: Else
  loc_1138FAB:   If (var_B6 = 2) Then
  loc_1138FC6:     Set var_88 = Me.GridSel
  loc_1138FCC:     Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C, var_9C)
  loc_1138FD4:     var_9C = var_8C.Col
  loc_113903E:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_104, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_113905F:   Else
  loc_1139065:     If (var_B6 = 3) Then
  loc_1139080:       Set var_88 = Me.GridSel
  loc_1139086:       Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C, var_9C)
  loc_113908E:       var_9C = var_8C.Col
  loc_11390F8:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_108, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1139119:     Else
  loc_113911F:       If (var_B6 = 4) Then
  loc_113913A:         Set var_88 = Me.GridSel
  loc_1139140:         Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C, var_9C)
  loc_11391B2:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_112, arg_10, Me.Fields.Item(CVar(CLng(var_8C.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11391D0:       End If
  loc_11391D0:     End If
  loc_11391D0:   End If
  loc_11391D0: End If
  loc_11391E2: Me.TxtSearch.Tag = CStr(Cancel)
  loc_11391ED: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E81A74
  'Data Table: 4E4430
  Dim var_8C As MSHFlexGrid
  loc_E81A16: Set var_88 = Me.GridSel
  loc_E81A1C: Call 0.Method_GridSel_UnknownEvent_E0 (Cancel)
  loc_E81A3D: If (CLng(var_8C.Col) <> 0) Then
  loc_E81A40:   Exit Sub
  loc_E81A41: End If
  loc_E81A4B: Set var_88 = Me.GridSel
  loc_E81A51: Call 0.Method_GridSel_UnknownEvent_E0 (Cancel, var_8C)
  loc_E81A66: global_192 = CInt(CLng(var_8C.Row))
  loc_E81A73: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '11787D0
  'Data Table: 4E4430
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_160 As Variant
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_1178412: Set var_8C = Me.GridSel
  loc_1178418: Call 0.Method_GridSel_UnknownEvent_100 (Cancel)
  loc_1178443: If ((CLng(var_90.Col) <> 0) Or (global_192 = 0)) Then
  loc_1178446:   Exit Sub
  loc_1178447: End If
  loc_1178451: Set var_8C = Me.GridSel
  loc_1178457: Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90)
  loc_117846C: global_194 = CInt(CLng(var_90.RowSel))
  loc_1178488: For var_A4 = global_192 To global_194: var_88 = var_A4 'Integer
  loc_11784A1:   Set var_8C = Me.GridSel
  loc_11784A7:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, CVar(CLng(var_88)))
  loc_11784AF:   var_90.Row = global_192
  loc_11784CE:   Set var_8C = Me.GridSel
  loc_11784D4:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, 0)
  loc_11784DC:   var_90.Col = global_194
  loc_11784F8:   Set var_8C = Me.GridSel
  loc_11784FE:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90)
  loc_1178506:   var_90.CellFontName = "WINGDINGS"
  loc_1178524:   Set var_8C = Me.GridSel
  loc_117852A:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90)
  loc_1178532:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_1178542:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_117855A:   Set var_8C = Me.GridSel
  loc_1178560:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, 0)
  loc_1178578:   var_160 = CVar(CLng(var_88)) 'Long
  loc_11785C6:   Set var_14C = Me.GridSel
  loc_11785CC:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_150, CVar(CStr(IIf((CStr(var_90.TextMatrix)) = "ü"), " ", "ü"))), 0)
  loc_11785D4:   LateIdCallSt
  loc_11785FC:   var_1B2 = Cancel
  loc_1178605:   If (var_1B2 = 1) Then
  loc_1178619:     var_86 = CInt((UBound(global_176, 1) + 1))
  loc_117862B:     ReDim Preserve global_176(0 To CLng(var_86))
  loc_117863F:     Set var_8C = Me.GridSel
  loc_1178645:     Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86, var_1B2, var_150)
  loc_1178661:     global_176(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_117866F:   Else
  loc_1178675:     If (var_1B2 = 2) Then
  loc_1178689:       var_86 = CInt((UBound(global_180, 1) + 1))
  loc_117869B:       ReDim Preserve global_180(0 To CLng(var_86))
  loc_11786AF:       Set var_8C = Me.GridSel
  loc_11786B5:       Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86, var_160)
  loc_11786D1:       global_180(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11786DF:     Else
  loc_11786E5:       If (var_1B2 = 3) Then
  loc_11786F9:         var_86 = CInt((UBound(global_184, 1) + 1))
  loc_117870B:         ReDim Preserve global_184(0 To CLng(var_86))
  loc_117871F:         Set var_8C = Me.GridSel
  loc_1178725:         Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86)
  loc_1178741:         global_184(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_117874F:       Else
  loc_1178755:         If (var_1B2 = 4) Then
  loc_1178769:           var_86 = CInt((UBound(global_188, 1) + 1))
  loc_117877B:           ReDim Preserve global_188(0 To CLng(var_86))
  loc_117878F:           Set var_8C = Me.GridSel
  loc_1178795:           Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86)
  loc_11787B1:           global_188(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11787BC:         End If
  loc_11787BC:       End If
  loc_11787BC:     End If
  loc_11787BC:   End If
  loc_11787BF: Next var_A4 'Integer
  loc_11787C9: global_192 = 0
  loc_11787CC: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_13 'E4B040
  'Data Table: 4E4430
  Dim var_8C As MSHFlexGrid
  Dim var_4701 As Double
  loc_E4B023: Set var_88 = Me.GridSel
  loc_E4B029: Call 0.Method_GridSel_UnknownEvent_130 (Cancel, var_8C)
  loc_E4B031: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E4B03D: Exit Sub
  loc_E4B03E: var_4701 = 
End Sub

Private Sub GridSel_UnknownEvent_14 'E4B318
  'Data Table: 4E4430
  Dim var_8C As MSHFlexGrid
  loc_E4B2FB: Set var_88 = Me.GridSel
  loc_E4B301: Call 0.Method_GridSel_UnknownEvent_140 (Cancel, var_8C)
  loc_E4B309: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E4B315: Exit Sub
End Sub

Public Function global_52Get() '4E54AC
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4E54BB
  global_52 = Value
End Sub

Public Function global_56Get() '4E54CA
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4E54D9
  global_56 = Value
End Sub

Public Function global_60Get() '4E54E8
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4E54F7
  global_60 = Value
End Sub

Public Function global_64Get() '4E5506
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '4E5515
  global_64 = Value
End Sub

Public Function global_68Get() '4E5524
  global_68Get = global_68
End Function

Public Sub global_68Put(Value) '4E5533
  global_68 = Value
End Sub

Public Function global_72Get() '4E5542
  global_72Get = global_72
End Function

Public Sub global_72Put(Value) '4E5551
  global_72 = Value
End Sub

Public Function global_76Get() '4E5560
  global_76Get = global_76
End Function

Public Sub global_76Put(Value) '4E556F
  global_76 = Value
End Sub

Public Function global_80Get() '4E557E
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '4E558D
  global_80 = Value
End Sub

Public Function global_84Get() '4E55B0
  global_84Get = global_84
End Function

Public Sub global_84Put(Value) '4E55BF
  global_84 = Value
End Sub

Public Function global_88Get() '4E55CE
  global_88Get = global_88
End Function

Public Sub global_88Put(Value) '4E55DD
  global_88 = Value
End Sub

Public Function global_92Get() '4E55EC
  global_92Get = global_92
End Function

Public Sub global_92Put(Value) '4E55FB
  global_92 = Value
End Sub

Public Function global_96Get() '4E560A
  global_96Get = global_96
End Function

Public Sub global_96Put(Value) '4E5619
  global_96 = Value
End Sub

Public Sub SelGridKeyPressLocal(Txt, SelGrid, index, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '11DF874
  'Data Table: 4E4430
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim KeyAscii As Integer
  Dim var_138 As Variant
  loc_11DF431: If (Me.GridSel.Text).rows < 1) Then
  loc_11DF434:   Exit Sub
  loc_11DF435: End If
  loc_11DF449: If (Me.RecordCount <= 0) Then
  loc_11DF455:   Me.TEXT = vbNullString
  loc_11DF459:   Exit Sub
  loc_11DF45A: End If
  loc_11DF46F: If ((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Then
  loc_11DF472:   Exit Sub
  loc_11DF473: End If
  loc_11DF47D: If (CLng(KeyAscii) = 8) Then
  loc_11DF497:   If (Len(Me.SelText) > 1) Then
  loc_11DF4AB:     var_DC = (Len(Me.SelText) - 1)
  loc_11DF4B3:     Me.SelLength = var_DC
  loc_11DF4C3:     var_88 = CStr(Me.SelText)
  loc_11DF4CC:   Else
  loc_11DF4D5:     Me.TEXT = vbNullString
  loc_11DF4EF:     Call Me.GridSel.Text).SetFocus
  loc_11DF500:     Me.Visible = False
  loc_11DF504:     Exit Sub
  loc_11DF505:   End If
  loc_11DF508: Else
  loc_11DF51F:   var_DC = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_11DF524:   var_88 = CStr(var_DC)
  loc_11DF530: End If
  loc_11DF533: Me.Recordset15.MoveFirst
  loc_11DF570: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_11DF5B3:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_11DF5C8: Else
  loc_11DF5F8:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_88 & "*'", 0, 1
  loc_11DF608: End If
  loc_11DF60A: KeyAscii = 0
  loc_11DF636: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_11DF63C:   var_BC = CVar(CellBackColLeave) 'Long
  loc_11DF655:   Me.GridSel.Text).CellBackColor = index
  loc_11DF66A:   var_BC = CVar(Me.Recordset15.AbsolutePosition) 'Long
  loc_11DF683:   Me.GridSel.Text).Row = index
  loc_11DF68D:   var_BC = CVar(CellBackColEnter) 'Long
  loc_11DF6A6:   Me.GridSel.Text).CellBackColor = index
  loc_11DF6DC:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_11DF6F6:   Me.SelLength = CVar(Len(var_88))
  loc_11DF70E:   var_DC = Me.GridSel.Text).CellLeft
  loc_11DF72E:   var_138 = (index + Me.GridSel.Text).left)
  loc_11DF736:   Me.left = var_138
  loc_11DF75B:   var_DC = Me.GridSel.Text).CellTop
  loc_11DF77B:   var_138 = (index + Me.GridSel.Text).top)
  loc_11DF783:   Me.top = var_138
  loc_11DF7A6:   If (Me.Visible = False) Then
  loc_11DF7B0:     Me.Visible = True
  loc_11DF7B4:     var_9C = 0
  loc_11DF7BD:     Call Me.ZOrder
  loc_11DF7C6:     Call Me.SetFocus
  loc_11DF7EA:     Me.BackColor = Me.GridSel.Text).CellBackColor
  loc_11DF813:     Me.ForeColor = Me.GridSel.Text).CellForeColor
  loc_11DF83C:     Me.width = Me.GridSel.Text).CellWidth
  loc_11DF865:     Me.height = Me.GridSel.Text).CellHeight
  loc_11DF870:   End If
  loc_11DF870: End If
  loc_11DF870: Exit Sub
End Sub

Public Function ListView_Items_RecordSet_Local(LV, Txt, index, Rst) 'FF6CD4
  'Data Table: 4E4430
  Dim var_104 As String
  Dim var_A0 As Variant
  Dim Me As Variant
  Dim var_134 As String
  Dim var_8C As ListItem
  Dim var_E4 As Integer
  Dim var_4701 As Variant
  loc_FF6AF4: Call Me.ListItems.Clear
  loc_FF6B11: If (Me.Recordset15.RecordCount <= 0) Then
  loc_FF6B14:   ListView_Items_RecordSet_Local = 
  loc_FF6B1A: End If
  loc_FF6B25: If (global_52 <> "HundiPrint") Then
  loc_FF6B30:   var_104 = "All"
  loc_FF6B39:   var_A0 = Me.ListItems
  loc_FF6B4A:   Set var_8C = var_A0.add
  loc_FF6B5C:   var_A0.ListItem.SubItems = 1
  loc_FF6B61:   ' Referenced from: FF6C5C
  loc_FF6B61: End If
  loc_FF6B67: var_116 = Me.EOF
  loc_FF6B70: If Not(var_116) Then
  loc_FF6B9D:   var_A0 = Me.Recordset15.Fields.Item("Name").Value
  loc_FF6C07:   If Not(IsNull(Me.Recordset15.Fields.Item("Code").Value)) Then
  loc_FF6C36:     var_134 = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_FF6C3E:     Me.ListItems.add.SubItems = 1
  loc_FF6C54:   End If
  loc_FF6C57:   Me.MoveNext
  loc_FF6C5C:   GoTo loc_FF6B61
  loc_FF6C5F: End If
  loc_FF6C69: var_A0 = Me.Text)
  loc_FF6C74: var_E4 = 0
  loc_FF6C93: Set var_8C = Me.FindItem
  loc_FF6CA4: If (var_8C Is Nothing) Then
  loc_FF6CA7:   ListView_Items_RecordSet_Local = 1
  loc_FF6CB0: Else
  loc_FF6CB6:   var_8C.EnsureVisible var_116
  loc_FF6CC0:   var_8C.Selected = True
  loc_FF6CC5: End If
  loc_FF6CC8: Set var_88 = var_8C 
  loc_FF6CCC: ListView_Items_RecordSet_Local = var_104
  loc_FF6CD2: var_4701 = CVar(var_E4) 'Integer
End Function

Public Sub Proc_102_71_11F47E0
  'Data Table: 4E4430
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_B4 As Variant
  Dim var_BC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_F0 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim Me As Recordset15
  Dim var_100 As Variant
  Dim var_120 As Long
  Dim var_144 As MSHFlexGrid
  loc_11F437F: var_B0 = CLng(Me.FGrid.Row)
  loc_11F438F: If (var_B0 = CLng(2)) Then
  loc_11F439E:   Set var_9C = Me.TxtGrid
  loc_11F43A4:   Call 0.Method_Proc_102_71_11F47E00 (0, var_B4)
  loc_11F43C3:   If (var_B4.Text <> vbNullString) Then
  loc_11F43D9:     var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F43E2:     Set var_D0 = Me.FGrid
  loc_11F43F1:     var_110 = CVar(CLng(var_D0.Col)) 'Long
  loc_11F440E:     Set var_B4 = Me.ListView.SelectedItem
  loc_11F441C:     var_130 = CVar(var_B4.Text) 'String
  loc_11F4424:     Set var_144 = Me.FGrid
  loc_11F442A:     LateIdCallSt
  loc_11F444A:   End If
  loc_11F445B:   If (global_52 = "EpabxCallRep") Then
  loc_11F4461:     var_F0 = CVar(CLng(2)) 'Long
  loc_11F4466:     var_110 = 1
  loc_11F4495:     If (CStr(Me.FGrid.TextMatrix)) <> "Room") Then
  loc_11F44A6:       Set var_9C = Me.GridSel
  loc_11F44AC:       Call 0.Method_Proc_102_71_11F47E00 (2, var_B4, False, var_110, False)
  loc_11F44B4:       var_B4.Visible = var_144
  loc_11F44CB:       Set var_9C = Me.Check1
  loc_11F44D1:       Call 0.Method_Proc_102_71_11F47E00 (2, var_B4, 0, var_130)
  loc_11F44D9:       var_B4.Visible = var_110
  loc_11F44E8:     Else
  loc_11F44E8:       var_F0 = True
  loc_11F44F5:       Set var_9C = Me.GridSel
  loc_11F44FB:       Call 0.Method_Proc_102_71_11F47E00 (2, var_B4, var_F0)
  loc_11F4503:       var_B4.Visible = var_F0
  loc_11F451A:       Set var_9C = Me.Check1
  loc_11F4520:       Call 0.Method_Proc_102_71_11F47E00 (2, var_B4)
  loc_11F4528:       var_B4.Visible = True
  loc_11F4542:       Call Proc_102_76_1223FFC(2, "Select '' as O,RoomNo,Code From TelExt Where RoomNo is Not Null and RoomNo <>'' Order By RoomNo")
  loc_11F4551:       var_AC = Me.FGrid.Height
  loc_11F4572:       Call 0.Method_Me8 (var_150, var_AC)
  loc_11F4589:       var_F0 = CVar((((var_150 - CDbl(var_AC)) - Me.Pic.Height) - CDbl(1200))) 'Single
  loc_11F4597:       Set var_BC = Me.GridSel
  loc_11F459D:       Call 0.Method_Proc_102_71_11F47E00 (2, var_D0)
  loc_11F45A5:       var_D0.Height = var_F0
  loc_11F45B8:     End If
  loc_11F45B8:   End If
  loc_11F45BB: Else
  loc_11F45C2:   If Not (var_B0 = CLng(5)) Then
  loc_11F45CC:     If Not (var_B0 = CLng(6)) Then
  loc_11F45D6:       If Not (var_B0 = CLng(7)) Then
  loc_11F45E0:         If Not (var_B0 = CLng(8)) Then
  loc_11F45EA:           If (var_B0 = CLng(9)) Then
  loc_11F45ED:           End If
  loc_11F45ED:         End If
  loc_11F45ED:       End If
  loc_11F45ED:     End If
  loc_11F45F0:   Else
  loc_11F45F7:     If (var_B0 = CLng(3)) Then
  loc_11F460B:       If (global_52 = "EpabxCallRep") Then
  loc_11F4637:         If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_11F463D:           var_100 = CVar(CLng(3)) 'Long
  loc_11F4642:           var_120 = 1
  loc_11F4679:           var_CC = CVar(CStr(Me.Fields.Item("PntNo").Value)) 'String
  loc_11F4681:           Set var_BC = Me.FGrid
  loc_11F4687:           LateIdCallSt
  loc_11F46BC:           var_B4 = Me.Fields.Item("Code")
  loc_11F46D3:           global_56 = CStr(var_B4.Value)
  loc_11F46E4:         End If
  loc_11F46E4:       End If
  loc_11F46E7:     Else
  loc_11F46EE:       If (var_B0 = CLng(4)) Then
  loc_11F46F7:         var_170 = global_52
  loc_11F46FD:       Else
  loc_11F4704:         If Not (var_B0 = CLng(0)) Then
  loc_11F470E:           If (var_B0 = CLng(1)) Then
  loc_11F4711:           End If
  loc_11F4733:           var_CC = Me.FGrid.Col
  loc_11F474A:           Set var_9C = Me.TxtGrid
  loc_11F4750:           Call 0.Method_Proc_102_71_11F47E00 (0, var_B4, CVar(CLng(var_CC)), CVar(CLng(Me.FGrid.Row)), var_BC)
  loc_11F4763:           var_E0 = CVar(Proc_6_33_15125B8(var_B4, var_CC, var_120)) 'String
  loc_11F476B:           Set var_174 = Me.FGrid
  loc_11F4771:           LateIdCallSt
  loc_11F478F:         End If
  loc_11F478F:       End If
  loc_11F478F:     End If
  loc_11F478F:   End If
  loc_11F478F: End If
  loc_11F479A: If (arg_10 = 0) Then
  loc_11F47A1:   Set var_9C = Me.FGrid
  loc_11F47BD:   Set var_9C = Me.TxtGrid
  loc_11F47C3:   Call 0.Method_Proc_102_71_11F47E00 (0, var_B4, 0, FGrid.DispID_8001, &HFF)
  loc_11F47CB:   var_B4.Visible = var_174
  loc_11F47D7: End If
  loc_11F47D7: Proc_102_71_11F47E0 = var_E0
End Sub

Public Sub Proc_102_72_160F4DC
  'Data Table: 4E4430
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim var_9C As CommandButton
  Dim var_A0 As Variant
  Dim var_A8 As CommandButton
  Dim var_B4 As CommandButton
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_88 As Integer
  Dim var_12C As Variant
  Dim var_B0 As MSHFlexGrid
  loc_160E024: Call 0.Method_arg_78 (var_8C)
  loc_160E03F: Me.Pic.Top = ((var_8C - Me.Pic.Width) - CDbl(&HA))
  loc_160E057: Set var_98 = Me.BTNPRINT
  loc_160E05D: Call 0.Method_Proc_102_72_160F4DC0 (0, var_9C)
  loc_160E071: Set var_A0 = Me.BTNEXIT
  loc_160E0BD: Set var_B0 = Me.BTNPRINT
  loc_160E0C3: Call 0.Method_Proc_102_72_160F4DC0 (0, var_B4)
  loc_160E0CB: var_B4.Left = ((Me.Pic.Width - ((var_9C.Width + var_A0.Width) + Me.BTNEXIT.Width)) / CDbl(2))
  loc_160E104: Set var_98 = Me.BTNPRINT
  loc_160E10A: Call 0.Method_Proc_102_72_160F4DC0 (0, var_9C)
  loc_160E112: var_9C.Top = (Me.Pic.Top + CDbl(&HA))
  loc_160E12C: Set var_9C = Me.BTNPRINT
  loc_160E132: Call 0.Method_Proc_102_72_160F4DC0 (0, var_A0)
  loc_160E14B: Set var_90 = Me.BTNPRINT
  loc_160E151: Call 0.Method_Proc_102_72_160F4DC0 (0, var_98)
  loc_160E170: Me.BTNEXIT.Left = (var_98.Left + var_A0.Width)
  loc_160E18F: var_8C = Me.Pic.Top
  loc_160E1A6: Me.BTNEXIT.Top = (var_8C + CDbl(&HA))
  loc_160E1CB: Call 0.Method_Me0 (var_8C)
  loc_160E1DD: var_D4 = CVar(((var_8C - CDbl(Me.FGrid.Width)) / CDbl(2))) 'Single
  loc_160E1E6: Set var_98 = Me.FGrid
  loc_160E1EC: var_98.Left = var_D4
  loc_160E20D: Me.FGrid.Top = CVar(CDbl(&H4B))
  loc_160E228: Me.FGrid.Rows = &HA
  loc_160E243: Me.FGrid.Cols = 3
  loc_160E25E: Me.FGrid.FixedCols = 1
  loc_160E266: var_D4 = 0
  loc_160E26F: var_F4 = &H898
  loc_160E27C: Set var_90 = Me.FGrid
  loc_160E282: LateIdCallSt
  loc_160E28D: var_D4 = 1
  loc_160E296: var_F4 = &H898
  loc_160E2A3: Set var_90 = Me.FGrid
  loc_160E2A9: LateIdCallSt
  loc_160E2B4: var_D4 = 2
  loc_160E2BD: var_F4 = 0
  loc_160E2CA: Set var_90 = Me.FGrid
  loc_160E2D0: LateIdCallSt
  loc_160E2DB: var_D4 = 1
  loc_160E2EA: var_F4 = CVar(CInt(1)) 'Integer
  loc_160E2F2: Set var_90 = Me.FGrid
  loc_160E2F8: LateIdCallSt
  loc_160E328: For var_108 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_108 'Integer
  loc_160E332:   var_D4 = CVar(CLng(var_86)) 'Long
  loc_160E337:   var_F4 = 0
  loc_160E344:   Set var_90 = Me.FGrid
  loc_160E34A:   LateIdCallSt
  loc_160E358: Next var_108 'Integer
  loc_160E35D: Call Proc_102_77_105DB98()
  loc_160E369: For var_10C = 1 To 4: var_86 = var_10C 'Integer
  loc_160E379:   Set var_90 = Me.GridSel
  loc_160E37F:   Call 0.Method_Proc_102_72_160F4DC0 (var_86, var_98)
  loc_160E39D:   If (CBool(var_98.Visible) = &HFF) Then
  loc_160E3A6:     var_88 = (var_88 + 1)
  loc_160E3A9:   End If
  loc_160E3AC: Next var_10C 'Integer
  loc_160E3CC: var_D4 = CVar(CDbl(((((global_136 - global_138) + 1) * CInt(220)) + 500))) 'Single
  loc_160E3DB: Me.FGrid.Height = var_D4
  loc_160E3E9: var_11C = global_140 'Variant
  loc_160E3F8: If (var_11C = 0) Then
  loc_160E40E:   Me.FGrid.Top = CVar(CDbl(1000))
  loc_160E419: Else
  loc_160E424:   If (var_11C = 1) Then
  loc_160E430:     Set var_90 = Me.GridSel
  loc_160E436:     Call 0.Method_Proc_102_72_160F4DC0 (1)
  loc_160E43E:     var_C4 = var_98.Width
  loc_160E44D:     Call 0.Method_Me0 (var_8C, var_C4)
  loc_160E45F:     var_D4 = CVar(((var_8C - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_160E46D:     Set var_9C = Me.GridSel
  loc_160E473:     Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160E47B:     var_A0.Left = 1
  loc_160E498:     var_12C = Me.FGrid.Height
  loc_160E4BF:     var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160E4CD:     Set var_9C = Me.GridSel
  loc_160E4D3:     Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0, 1)
  loc_160E4DB:     var_A0.Top = var_12C
  loc_160E4FC:     var_C4 = Me.FGrid.Height
  loc_160E50C:     Set var_98 = Me.Pic
  loc_160E51D:     Call 0.Method_Me8 (var_8C, var_C4)
  loc_160E534:     var_D4 = CVar((((var_8C - CDbl(var_C4)) - var_98.Height) - CDbl(1200))) 'Single
  loc_160E542:     Set var_9C = Me.GridSel
  loc_160E548:     Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160E550:     var_A0.Height = 1
  loc_160E56C:     Set var_90 = Me.GridSel
  loc_160E572:     Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160E591:     Set var_9C = Me.Check1
  loc_160E597:     Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160E59F:     var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160E5BB:     Set var_90 = Me.GridSel
  loc_160E5C1:     Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160E5E0:     Set var_9C = Me.Check1
  loc_160E5E6:     Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160E5EE:     var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160E604:   Else
  loc_160E60F:     If (var_11C = 2) Then
  loc_160E61B:       Set var_90 = Me.GridSel
  loc_160E621:       Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160E629:       var_C4 = var_98.Width
  loc_160E638:       Call 0.Method_Me0 (var_8C, var_C4)
  loc_160E64E:       var_D4 = CVar((((var_8C / CDbl(2)) - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_160E65C:       Set var_9C = Me.GridSel
  loc_160E662:       Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160E66A:       var_A0.Left = 2
  loc_160E687:       var_12C = Me.FGrid.Height
  loc_160E6AE:       var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160E6BC:       Set var_9C = Me.GridSel
  loc_160E6C2:       Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0, 2)
  loc_160E6CA:       var_A0.Top = var_12C
  loc_160E6EB:       var_C4 = Me.FGrid.Height
  loc_160E6FB:       Set var_98 = Me.Pic
  loc_160E701:       var_94 = var_98.Height
  loc_160E70C:       Call 0.Method_Me8 (var_8C, var_C4)
  loc_160E723:       var_D4 = CVar((((var_8C - CDbl(var_C4)) - var_94) - CDbl(1200))) 'Single
  loc_160E731:       Set var_9C = Me.GridSel
  loc_160E737:       Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160E73F:       var_A0.Height = 2
  loc_160E75B:       Set var_90 = Me.GridSel
  loc_160E761:       Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160E780:       Set var_9C = Me.Check1
  loc_160E786:       Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160E78E:       var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160E7AA:       Set var_90 = Me.GridSel
  loc_160E7B0:       Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160E7CF:       Set var_9C = Me.Check1
  loc_160E7D5:       Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160E7DD:       var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160E7F6:       Call 0.Method_Me0 (var_94)
  loc_160E804:       Set var_90 = Me.GridSel
  loc_160E80A:       Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160E812:       var_C4 = var_98.Width
  loc_160E821:       Call 0.Method_Me0 (var_8C, var_C4)
  loc_160E83F:       var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_160E84D:       Set var_9C = Me.GridSel
  loc_160E853:       Call 0.Method_Proc_102_72_160F4DC0 (2, var_A0)
  loc_160E85B:       var_A0.Left = 2
  loc_160E878:       var_12C = Me.FGrid.Height
  loc_160E89F:       var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160E8AD:       Set var_9C = Me.GridSel
  loc_160E8B3:       Call 0.Method_Proc_102_72_160F4DC0 (2, var_A0, 2)
  loc_160E8BB:       var_A0.Top = var_12C
  loc_160E8DC:       var_C4 = Me.FGrid.Height
  loc_160E8EC:       Set var_98 = Me.Pic
  loc_160E8F2:       var_94 = var_98.Height
  loc_160E8FD:       Call 0.Method_Me8 (var_8C, var_C4)
  loc_160E914:       var_D4 = CVar((((var_8C - CDbl(var_C4)) - var_94) - CDbl(1200))) 'Single
  loc_160E922:       Set var_9C = Me.GridSel
  loc_160E928:       Call 0.Method_Proc_102_72_160F4DC0 (2, var_A0)
  loc_160E930:       var_A0.Height = 2
  loc_160E94C:       Set var_90 = Me.GridSel
  loc_160E952:       Call 0.Method_Proc_102_72_160F4DC0 (2, var_98)
  loc_160E971:       Set var_9C = Me.Check1
  loc_160E977:       Call 0.Method_Proc_102_72_160F4DC0 (2, var_A0)
  loc_160E97F:       var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160E99B:       Set var_90 = Me.GridSel
  loc_160E9A1:       Call 0.Method_Proc_102_72_160F4DC0 (2, var_98)
  loc_160E9C0:       Set var_9C = Me.Check1
  loc_160E9C6:       Call 0.Method_Proc_102_72_160F4DC0 (2, var_A0)
  loc_160E9CE:       var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160E9E4:     Else
  loc_160E9EF:       If (var_11C = 3) Then
  loc_160E9FB:         Set var_90 = Me.GridSel
  loc_160EA01:         Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160EA09:         var_C4 = var_98.Width
  loc_160EA18:         Call 0.Method_Me0 (var_8C, var_C4)
  loc_160EA2E:         var_D4 = CVar((((var_8C / CDbl(2)) - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_160EA3C:         Set var_9C = Me.GridSel
  loc_160EA42:         Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160EA4A:         var_A0.Left = 3
  loc_160EA61:         Set var_98 = Me.FGrid
  loc_160EA67:         var_12C = var_98.Height
  loc_160EA8E:         var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160EA9C:         Set var_9C = Me.GridSel
  loc_160EAA2:         Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0, 3)
  loc_160EAAA:         var_A0.Top = var_12C
  loc_160EACA:         Set var_90 = Me.GridSel
  loc_160EAD0:         Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160EAEF:         Set var_9C = Me.Check1
  loc_160EAF5:         Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160EAFD:         var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160EB19:         Set var_90 = Me.GridSel
  loc_160EB1F:         Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160EB3E:         Set var_9C = Me.Check1
  loc_160EB44:         Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160EB4C:         var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160EB68:         Set var_90 = Me.GridSel
  loc_160EB6E:         Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160EB8D:         Set var_9C = Me.GridSel
  loc_160EB93:         Call 0.Method_Proc_102_72_160F4DC0 (3, var_A0)
  loc_160EB9B:         var_A0.Left = CVar(CDbl(var_98.Left))
  loc_160EBB7:         Set var_9C = Me.GridSel
  loc_160EBBD:         Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160EBC5:         var_12C = var_A0.Height
  loc_160EBD7:         Set var_90 = Me.GridSel
  loc_160EBDD:         Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160EBF9:         var_D4 = CVar(((CDbl(var_98.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160EC07:         Set var_A8 = Me.GridSel
  loc_160EC0D:         Call 0.Method_Proc_102_72_160F4DC0 (3, var_B0, CVar(CDbl(var_98.Left)))
  loc_160EC15:         var_B0.Top = var_12C
  loc_160EC39:         Set var_90 = Me.GridSel
  loc_160EC3F:         Call 0.Method_Proc_102_72_160F4DC0 (3, var_98)
  loc_160EC5E:         Set var_9C = Me.Check1
  loc_160EC64:         Call 0.Method_Proc_102_72_160F4DC0 (3, var_A0)
  loc_160EC6C:         var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160EC88:         Set var_90 = Me.GridSel
  loc_160EC8E:         Call 0.Method_Proc_102_72_160F4DC0 (3, var_98)
  loc_160ECAD:         Set var_9C = Me.Check1
  loc_160ECB3:         Call 0.Method_Proc_102_72_160F4DC0 (3, var_A0)
  loc_160ECBB:         var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160ECD4:         Call 0.Method_Me0 (var_94)
  loc_160ECE2:         Set var_90 = Me.GridSel
  loc_160ECE8:         Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160ECF0:         var_C4 = var_98.Width
  loc_160ECFF:         Call 0.Method_Me0 (var_8C, var_C4)
  loc_160ED1D:         var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_160ED2B:         Set var_9C = Me.GridSel
  loc_160ED31:         Call 0.Method_Proc_102_72_160F4DC0 (2, var_A0)
  loc_160ED39:         var_A0.Left = CVar(CDbl(var_98.Left))
  loc_160ED50:         Set var_98 = Me.FGrid
  loc_160ED56:         var_12C = var_98.Height
  loc_160ED7D:         var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160ED8B:         Set var_9C = Me.GridSel
  loc_160ED91:         Call 0.Method_Proc_102_72_160F4DC0 (2, var_A0, CVar(CDbl(var_98.Left)))
  loc_160ED99:         var_A0.Top = var_12C
  loc_160EDB9:         Set var_9C = Me.GridSel
  loc_160EDBF:         Call 0.Method_Proc_102_72_160F4DC0 (2, var_A0)
  loc_160EDC7:         var_12C = var_A0.Height
  loc_160EDD9:         Set var_90 = Me.GridSel
  loc_160EDDF:         Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160EDFB:         var_D4 = CVar(((CDbl(var_98.Height) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160EE09:         Set var_A8 = Me.GridSel
  loc_160EE0F:         Call 0.Method_Proc_102_72_160F4DC0 (2, var_B0, CVar(CDbl(var_98.Left)))
  loc_160EE17:         var_B0.Height = var_12C
  loc_160EE3B:         Set var_90 = Me.GridSel
  loc_160EE41:         Call 0.Method_Proc_102_72_160F4DC0 (2, var_98)
  loc_160EE60:         Set var_9C = Me.Check1
  loc_160EE66:         Call 0.Method_Proc_102_72_160F4DC0 (2, var_A0)
  loc_160EE6E:         var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160EE8A:         Set var_90 = Me.GridSel
  loc_160EE90:         Call 0.Method_Proc_102_72_160F4DC0 (2, var_98)
  loc_160EEAF:         Set var_9C = Me.Check1
  loc_160EEB5:         Call 0.Method_Proc_102_72_160F4DC0 (2, var_A0)
  loc_160EEBD:         var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160EED3:       Else
  loc_160EEDE:         If (var_11C = 4) Then
  loc_160EEEA:           Set var_90 = Me.GridSel
  loc_160EEF0:           Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160EEF8:           var_C4 = var_98.Width
  loc_160EF07:           Call 0.Method_Me0 (var_8C, var_C4)
  loc_160EF1D:           var_D4 = CVar((((var_8C / CDbl(2)) - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_160EF2B:           Set var_9C = Me.GridSel
  loc_160EF31:           Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160EF39:           var_A0.Left = 4
  loc_160EF50:           Set var_98 = Me.FGrid
  loc_160EF56:           var_12C = var_98.Height
  loc_160EF7D:           var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160EF8B:           Set var_9C = Me.GridSel
  loc_160EF91:           Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0, 4)
  loc_160EF99:           var_A0.Top = var_12C
  loc_160EFB9:           Set var_90 = Me.GridSel
  loc_160EFBF:           Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160EFDE:           Set var_9C = Me.Check1
  loc_160EFE4:           Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160EFEC:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160F008:           Set var_90 = Me.GridSel
  loc_160F00E:           Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160F02D:           Set var_9C = Me.Check1
  loc_160F033:           Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160F03B:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160F054:           Call 0.Method_Me0 (var_94)
  loc_160F062:           Set var_90 = Me.GridSel
  loc_160F068:           Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160F070:           var_C4 = var_98.Width
  loc_160F07F:           Call 0.Method_Me0 (var_8C, var_C4)
  loc_160F09D:           var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_160F0AB:           Set var_9C = Me.GridSel
  loc_160F0B1:           Call 0.Method_Proc_102_72_160F4DC0 (2, var_A0)
  loc_160F0B9:           var_A0.Left = 4
  loc_160F0D0:           Set var_98 = Me.FGrid
  loc_160F0D6:           var_12C = var_98.Height
  loc_160F0FD:           var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160F10B:           Set var_9C = Me.GridSel
  loc_160F111:           Call 0.Method_Proc_102_72_160F4DC0 (2, var_A0, 4)
  loc_160F119:           var_A0.Top = var_12C
  loc_160F139:           Set var_90 = Me.GridSel
  loc_160F13F:           Call 0.Method_Proc_102_72_160F4DC0 (2, var_98)
  loc_160F15E:           Set var_9C = Me.Check1
  loc_160F164:           Call 0.Method_Proc_102_72_160F4DC0 (2, var_A0)
  loc_160F16C:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160F188:           Set var_90 = Me.GridSel
  loc_160F18E:           Call 0.Method_Proc_102_72_160F4DC0 (2, var_98)
  loc_160F1AD:           Set var_9C = Me.Check1
  loc_160F1B3:           Call 0.Method_Proc_102_72_160F4DC0 (2, var_A0)
  loc_160F1BB:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160F1D7:           Set var_90 = Me.GridSel
  loc_160F1DD:           Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160F1FC:           Set var_9C = Me.GridSel
  loc_160F202:           Call 0.Method_Proc_102_72_160F4DC0 (3, var_A0)
  loc_160F20A:           var_A0.Left = CVar(CDbl(var_98.Left))
  loc_160F226:           Set var_9C = Me.GridSel
  loc_160F22C:           Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160F234:           var_12C = var_A0.Height
  loc_160F246:           Set var_90 = Me.GridSel
  loc_160F24C:           Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160F268:           var_D4 = CVar(((CDbl(var_98.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160F276:           Set var_A8 = Me.GridSel
  loc_160F27C:           Call 0.Method_Proc_102_72_160F4DC0 (3, var_B0, CVar(CDbl(var_98.Left)))
  loc_160F284:           var_B0.Top = var_12C
  loc_160F2A8:           Set var_90 = Me.GridSel
  loc_160F2AE:           Call 0.Method_Proc_102_72_160F4DC0 (3, var_98)
  loc_160F2CD:           Set var_9C = Me.Check1
  loc_160F2D3:           Call 0.Method_Proc_102_72_160F4DC0 (3, var_A0)
  loc_160F2DB:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160F2F7:           Set var_90 = Me.GridSel
  loc_160F2FD:           Call 0.Method_Proc_102_72_160F4DC0 (3, var_98)
  loc_160F31C:           Set var_9C = Me.Check1
  loc_160F322:           Call 0.Method_Proc_102_72_160F4DC0 (3, var_A0)
  loc_160F32A:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160F343:           Call 0.Method_Me0 (var_94)
  loc_160F351:           Set var_90 = Me.GridSel
  loc_160F357:           Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160F35F:           var_C4 = var_98.Width
  loc_160F36E:           Call 0.Method_Me0 (var_8C, var_C4)
  loc_160F38C:           var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_160F39A:           Set var_9C = Me.GridSel
  loc_160F3A0:           Call 0.Method_Proc_102_72_160F4DC0 (4, var_A0)
  loc_160F3A8:           var_A0.Left = CVar(CDbl(var_98.Left))
  loc_160F3C4:           Set var_9C = Me.GridSel
  loc_160F3CA:           Call 0.Method_Proc_102_72_160F4DC0 (1, var_A0)
  loc_160F3D2:           var_12C = var_A0.Height
  loc_160F3E4:           Set var_90 = Me.GridSel
  loc_160F3EA:           Call 0.Method_Proc_102_72_160F4DC0 (1, var_98)
  loc_160F406:           var_D4 = CVar(((CDbl(var_98.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160F414:           Set var_A8 = Me.GridSel
  loc_160F41A:           Call 0.Method_Proc_102_72_160F4DC0 (4, var_B0, CVar(CDbl(var_98.Left)))
  loc_160F422:           var_B0.Top = var_12C
  loc_160F446:           Set var_90 = Me.GridSel
  loc_160F44C:           Call 0.Method_Proc_102_72_160F4DC0 (4, var_98)
  loc_160F46B:           Set var_9C = Me.Check1
  loc_160F471:           Call 0.Method_Proc_102_72_160F4DC0 (4, var_A0)
  loc_160F479:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160F495:           Set var_90 = Me.GridSel
  loc_160F49B:           Call 0.Method_Proc_102_72_160F4DC0 (4, var_98)
  loc_160F4BA:           Set var_9C = Me.Check1
  loc_160F4C0:           Call 0.Method_Proc_102_72_160F4DC0 (4, var_A0)
  loc_160F4C8:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160F4DB:         End If
  loc_160F4DB:       End If
  loc_160F4DB:     End If
  loc_160F4DB:   End If
  loc_160F4DB: End If
  loc_160F4DB: Exit Sub
End Sub

Public Sub Proc_102_73_E4B454
  'Data Table: 4E4430
  loc_E4B43B: If (Me.FrmList.Visible = &HFF) Then
  loc_E4B44A:   Me.FrmList.Visible = False
  loc_E4B452: End If
  loc_E4B452: Exit Sub
End Sub

Public Sub Proc_102_74_1281C8C(arg_C, arg_10, arg_14) '1281C8C
  'Data Table: 4E4430
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
  loc_12816F2: On Error Goto loc_1281C76
  loc_12816F8: var_8C = vbNullString
  loc_1281703: CRefVarAry
  loc_128170B: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_128172C:   If (arg_C(var_8E) = 0) Then
  loc_128172F:     GoTo loc_1281AC7
  loc_1281732:   End If
  loc_1281743:   var_90 = CInt(arg_C(var_8E))
  loc_128174D:   var_A8 = CVar(CLng(var_90)) 'Long
  loc_1281765:   Set var_DC = Me.GridSel
  loc_128176B:   Call 0.Method_Proc_102_74_1281C8C0 (arg_10, var_E0, 0)
  loc_1281793:   If (CStr(var_E0.TextMatrix)) = "ü") Then
  loc_128179F:     If (CInt(arg_14) = 0) Then
  loc_12817BE:       Set var_DC = Me.GridSel
  loc_12817C4:       Call 0.Method_Proc_102_74_1281C8C0 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_12817CC:       var_C8 = var_E0.TextMatrix)
  loc_12817FD:       Set var_108 = Me.GridSel
  loc_1281803:       Call 0.Method_Proc_102_74_1281C8C0 (arg_10, var_10C, 2, CVar(CLng(var_90)), ",")
  loc_128183B:       var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar(CStr(var_C8)), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)))))
  loc_1281840:       var_8C = CStr(var_1AC)
  loc_1281865:     Else
  loc_128186E:       If (CInt(arg_14) = 1) Then
  loc_128188D:         Set var_DC = Me.GridSel
  loc_1281893:         Call 0.Method_Proc_102_74_1281C8C0 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_128189B:         var_C8 = var_E0.TextMatrix)
  loc_12818D3:         Set var_108 = Me.GridSel
  loc_12818D9:         Call 0.Method_Proc_102_74_1281C8C0 (arg_10, var_10C, 2, CVar(CLng(var_90)), "," & "'")
  loc_1281926:         var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar("'" & CStr(var_C8) & "'"), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)) & "'")))
  loc_128192B:         var_8C = CStr(var_1AC)
  loc_1281957:       End If
  loc_1281957:     End If
  loc_1281976:     Set var_DC = Me.GridSel
  loc_128197C:     Call 0.Method_Proc_102_74_1281C8C0 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_12819AE:     If (Len(var_94 & CStr(var_E0.TextMatrix))) < &HFF) Then
  loc_12819CD:       Set var_DC = Me.GridSel
  loc_12819D3:       Call 0.Method_Proc_102_74_1281C8C0 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_12819DB:       var_C8 = var_E0.TextMatrix)
  loc_1281A0C:       Set var_108 = Me.GridSel
  loc_1281A12:       Call 0.Method_Proc_102_74_1281C8C0 (arg_10, var_10C, 1, CVar(CLng(var_90)), ",")
  loc_1281A29:       var_17C = CVar(CVar(var_94) & CStr(var_10C.TextMatrix))) 'String
  loc_1281A30:       var_16C = CVar(CStr(var_C8)) 'String
  loc_1281A42:       var_18C = IIf((var_94 = vbNullString), var_16C, var_17C)
  loc_1281A4A:       var_1AC = (var_C8 + var_18C)
  loc_1281A4F:       var_94 = CStr(var_1AC)
  loc_1281A71:     End If
  loc_1281A75:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_1281A93:     Set var_DC = Me.GridSel
  loc_1281A99:     Call 0.Method_Proc_102_74_1281C8C0 (arg_10, var_E0, vbNullString, 0)
  loc_1281AA1:     LateIdCallSt
  loc_1281AB3:   Else
  loc_1281ABA:     var_B8 = 0
  loc_1281AC3:     VarIndexSt
  loc_1281AC7:   End If
  loc_1281AC7:   ' Referenced from: 128172F
  loc_1281ACA: Next var_98 'Integer
  loc_1281AD7: CRefVarAry
  loc_1281ADF: For var_1C0 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1C0 'Integer
  loc_1281B17:   If CBool(arg_C(var_8E) <> 0) Then
  loc_1281B1E:     var_A8 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_1281B3C:     Set var_DC = Me.GridSel
  loc_1281B42:     Call 0.Method_Proc_102_74_1281C8C0 (arg_10, var_E0, "ü", 0)
  loc_1281B4A:     LateIdCallSt
  loc_1281B59:   End If
  loc_1281B5C: Next var_1C0 'Integer
  loc_1281B69: If (var_8C = vbNullString) Then
  loc_1281B6C:   var_A8 = 0
  loc_1281B75:   var_F0 = 1
  loc_1281B88:   Set var_DC = Me.GridSel
  loc_1281B8E:   Call 0.Method_Proc_102_74_1281C8C0 (arg_10, var_E0)
  loc_1281B96:   var_C8 = var_E0.TextMatrix)
  loc_1281BBE:   MsgBox(CVar("Select " & CStr(var_C8)), &H40, var_16C, var_17C, var_18C)
  loc_1281BE4:   Set var_DC = Me.GridSel
  loc_1281BEA:   Call 0.Method_Proc_102_74_1281C8C0 (arg_10, var_E0, var_C8)
  loc_1281C09:   Proc_102_74_1281C8C = 0
  loc_1281C0F: End If
  loc_1281C12: var_88 = var_8C
  loc_1281C18: var_1C2 = arg_10
  loc_1281C21: If (var_1C2 = 1) Then
  loc_1281C2A:   global_76 = var_94
  loc_1281C31: Else
  loc_1281C37:   If (var_1C2 = 2) Then
  loc_1281C40:     global_80 = var_94
  loc_1281C47:   Else
  loc_1281C4D:     If (var_1C2 = 3) Then
  loc_1281C56:       global_84 = var_94
  loc_1281C5D:     Else
  loc_1281C63:       If (var_1C2 = 4) Then
  loc_1281C6C:         global_88 = var_94
  loc_1281C70:       End If
  loc_1281C70:     End If
  loc_1281C70:   End If
  loc_1281C70: End If
  loc_1281C70: Proc_102_74_1281C8C = var_1C2
  loc_1281C76: ' Referenced from: 12816F2
  loc_1281C7E: Proc_6_60_E63754(0, GridSel.DispID_8001)
  loc_1281C83: Proc_102_74_1281C8C = var_F0
End Sub

Public Sub Proc_102_75_F00E9C
  'Data Table: 4E4430
  Dim var_CC As Variant
  loc_F00DE1: If (CLng(Me.FGrid.Row) = CLng(global_136)) Then
  loc_F00DF2:   Proc_303_0_FBACC8("	")
  loc_F00DFA:   Exit Sub
  loc_F00DFB: End If
  loc_F00E3A: For var_BC = CInt(CLng(Me.FGrid.Row)) To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_F00E47:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F00E6E:   If (CLng(Me.FGrid.RowHeight)) <> 0) Then
  loc_F00E78:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F00E87:     Me.FGrid.Row = var_CC
  loc_F00E8F:     Exit For
  loc_F00E92:   End If
  loc_F00E95: Next var_BC 'Integer
  loc_F00E9A: ' Referenced from: F00E8F
  loc_F00E9A: Exit Sub
End Sub

Public Sub Proc_102_76_1223FFC(arg_C, arg_10) '1223FFC
  'Data Table: 4E4430
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E8 As CheckBox
  loc_1223AF3: var_86 = arg_C
  loc_1223AFC: If (var_86 = 1) Then
  loc_1223B1B:   Me.Recordset15.CursorLocation = 3
  loc_1223B44:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_1223B52:   CVarUnk
  loc_1223B57:   VerifyVarObj
  loc_1223B63:   Set var_8C = Me.GridSel
  loc_1223B69:   Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_B0, New)
  loc_1223B71:   LateIdStAd
  loc_1223B93:   ReDim Preserve global_176(0 To 0)
  loc_1223BAA:   global_176(0) = 0
  loc_1223BAB: End If
  loc_1223BB1: If (var_86 = 2) Then
  loc_1223BD0:   Me.Recordset15.CursorLocation = 3
  loc_1223BF9:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_1223C07:   CVarUnk
  loc_1223C0C:   VerifyVarObj
  loc_1223C18:   Set var_8C = Me.GridSel
  loc_1223C1E:   Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_B0, New, 1, -1)
  loc_1223C26:   LateIdStAd
  loc_1223C48:   ReDim Preserve global_180(0 To 0)
  loc_1223C5F:   global_180(0) = 0
  loc_1223C60: End If
  loc_1223C66: If (var_86 = 3) Then
  loc_1223C85:   Me.Recordset15.CursorLocation = 3
  loc_1223CAE:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_1223CBC:   CVarUnk
  loc_1223CC1:   VerifyVarObj
  loc_1223CCD:   Set var_8C = Me.GridSel
  loc_1223CD3:   Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_B0, New, 1, -1)
  loc_1223CDB:   LateIdStAd
  loc_1223CFD:   ReDim Preserve global_184(0 To 0)
  loc_1223D14:   global_184(0) = 0
  loc_1223D15: End If
  loc_1223D1B: If (var_86 = 4) Then
  loc_1223D3A:   Me.Recordset15.CursorLocation = 3
  loc_1223D63:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_1223D71:   CVarUnk
  loc_1223D76:   VerifyVarObj
  loc_1223D82:   Set var_8C = Me.GridSel
  loc_1223D88:   Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_B0, New, 1, -1, var_B0)
  loc_1223D90:   LateIdStAd
  loc_1223DB2:   ReDim Preserve global_188(0 To 0)
  loc_1223DC9:   global_188(0) = 0
  loc_1223DCA: End If
  loc_1223DDD: Set var_8C = Me.GridSel
  loc_1223DE3: Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_B0, CVar(CDbl(1700)), var_B0, var_B0)
  loc_1223DEB: var_B0.Height = var_B0
  loc_1223E05: Set var_8C = Me.GridSel
  loc_1223E0B: Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_B0, True)
  loc_1223E13: var_B0.Visible = 1
  loc_1223E2E: Set var_8C = Me.GridSel
  loc_1223E34: Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_B0, False)
  loc_1223E3C: var_B0.Enabled = -1
  loc_1223E54: Set var_8C = Me.Check1
  loc_1223E5A: Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_B0)
  loc_1223E62: var_B0.Visible = True
  loc_1223E81: Set var_8C = Me.GridSel
  loc_1223E87: Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_B0)
  loc_1223E8F: var_B0.Width = CVar(CDbl(5200))
  loc_1223E9B: var_9C = 0
  loc_1223EB7: Set var_8C = Me.GridSel
  loc_1223EBD: Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_B0, &H258)
  loc_1223EC5: LateIdCallSt
  loc_1223EF0: Set var_8C = Me.GridSel
  loc_1223EF6: Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_B0, 0, 2)
  loc_1223EFE: LateIdCallSt
  loc_1223F29: Set var_8C = Me.GridSel
  loc_1223F2F: Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_B0, &HFA0, 1)
  loc_1223F37: LateIdCallSt
  loc_1223F55: Set var_8C = Me.Check1
  loc_1223F5B: Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_B0, CDbl(580), var_B0)
  loc_1223F63: var_B0.Width = var_B0
  loc_1223F6F: var_9C = 0
  loc_1223F82: Set var_8C = Me.GridSel
  loc_1223F88: Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_B0, var_9C)
  loc_1223FAE: Set var_E4 = Me.Check1
  loc_1223FB4: Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_E8, CDbl((CLng(var_B0.RowHeight)) + &H14)))
  loc_1223FBC: var_E8.Height = var_B0
  loc_1223FDF: Set var_8C = Me.Check1
  loc_1223FE5: Call 0.Method_Proc_102_76_1223FFC0 (var_86, var_B0, CInt(1))
  loc_1223FED: var_B0.Value = var_9C
  loc_1223FF9: Exit Sub
End Sub

Public Sub Proc_102_77_105DB98
  'Data Table: 4E4430
  Dim var_AC As Variant
  Dim var_CC As Long
  Dim var_EC As String
  Dim var_10C As Variant
  Dim var_110 As MSHFlexGrid
  Dim unk_4E443F As Connection15
  loc_105D939: If (global_52 = "EpabxCallRep") Then
  loc_105D940:   Set var_9C = Me.FGrid
  loc_105D946:   var_AC = CVar(CLng(0)) 'Long
  loc_105D94B:   var_CC = 0
  loc_105D954:   var_EC = "From Date"
  loc_105D95D:   LateIdCallSt
  loc_105D968:   var_AC = CVar(CLng(0)) 'Long
  loc_105D96D:   var_CC = &H10E
  loc_105D979:   LateIdCallSt
  loc_105D984:   var_AC = CVar(CLng(1)) 'Long
  loc_105D989:   var_CC = 0
  loc_105D992:   var_EC = "To Date"
  loc_105D99B:   LateIdCallSt
  loc_105D9A6:   var_AC = CVar(CLng(1)) 'Long
  loc_105D9AB:   var_CC = &H10E
  loc_105D9B7:   LateIdCallSt
  loc_105D9C2:   var_AC = CVar(CLng(2)) 'Long
  loc_105D9C7:   var_CC = 0
  loc_105D9D0:   var_EC = "For Type"
  loc_105D9D9:   LateIdCallSt
  loc_105D9E4:   var_AC = CVar(CLng(2)) 'Long
  loc_105D9E9:   var_CC = &H10E
  loc_105D9F5:   LateIdCallSt
  loc_105DA00:   var_AC = CVar(CLng(3)) 'Long
  loc_105DA05:   var_CC = 0
  loc_105DA0E:   var_EC = "For PNT NO"
  loc_105DA17:   LateIdCallSt
  loc_105DA22:   var_AC = CVar(CLng(3)) 'Long
  loc_105DA27:   var_CC = &H10E
  loc_105DA33:   LateIdCallSt
  loc_105DA3E:   var_AC = CVar(CLng(0)) 'Long
  loc_105DA43:   var_CC = 1
  loc_105DA51:   var_10C = CVar(CStr(MemVar_1F950F4)) 'String
  loc_105DA58:   LateIdCallSt
  loc_105DA66:   var_AC = CVar(CLng(1)) 'Long
  loc_105DA6B:   var_CC = 1
  loc_105DA80:   LateIdCallSt
  loc_105DA8E:   var_AC = CVar(CLng(2)) 'Long
  loc_105DA93:   var_CC = 1
  loc_105DA9C:   var_EC = "Room"
  loc_105DAA5:   LateIdCallSt
  loc_105DAB0:   var_AC = CVar(CLng(3)) 'Long
  loc_105DAB5:   var_CC = 1
  loc_105DABE:   var_EC = vbNullString
  loc_105DAC7:   LateIdCallSt
  loc_105DAD1:   Set var_9C = Nothing 
  loc_105DAEF:   Set var_110 = Me.FGrid
  loc_105DAF5:   var_110.Row = CVar(CLng(CInt(0)))
  loc_105DB04:   global_136 = CInt(3)
  loc_105DB0F:   global_140 = 2
  loc_105DB21:   Call Proc_102_76_1223FFC(1, "Select '' as O,CAST(Extension as VArChar(11)) AS Extension,Extension As Code From TelExt Order by Extension")
  loc_105DB34:   Call Proc_102_76_1223FFC(2, "Select '' as O,RoomNo,RoomNo AS Code From TelExt Where RoomNo is Not Null and RoomNo <>'' Order By RoomNo")
  loc_105DB4F:   unk_4E443F.Execute "Select Distinct PNT_NO As PNTNo,PNT_No As Code From EPABX_Data Order by PNT_NO", CVar(CStr(MemVar_1F950EC)), -1
  loc_105DB60:   Set global_132 = var_110
  loc_105DB77:   CVarUnk
  loc_105DB7C:   VerifyVarObj
  loc_105DB82:   Set var_110 = Me.DGPNTNo
  loc_105DB88:   LateIdStAd
  loc_105DB96: End If
  loc_105DB96: Exit Sub
End Sub

Public Sub Proc_102_78_1062950(arg_C, arg_10) '1062950
  'Data Table: 4E4430
  Dim var_98 As Variant
  Dim var_B8 As Long
  Dim var_CC As MSHFlexGrid
  Dim var_86 As Integer
  loc_10626D8: var_98 = CVar(CLng(arg_C)) 'Long
  loc_10626DD: var_B8 = 1
  loc_106270C: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_106272F:   MsgBox(CVar(arg_10 & " Should not be Blank."), &H40, "Validation Check", var_100, var_110)
  loc_1062743:   Set var_CC = Me.FGrid
  loc_1062767:   Me.FGrid.Row = CVar(CLng(arg_C))
  loc_1062782:   Me.FGrid.Col = 1
  loc_106278C:   var_86 = 0
  loc_1062792: Else
  loc_106279F:   If ((arg_C = 0) Or (arg_C = 1)) Then
  loc_10627A6:     var_98 = CVar(CLng(arg_C)) 'Long
  loc_10627AB:     var_B8 = 1
  loc_10627DB:     If (CDate(CStr(Me.FGrid.TextMatrix))) < MemVar_1F950F4) Then
  loc_1062809:       MsgBox(CVar(arg_10 & " Should not be less than ") & CDate(MemVar_1F950F4), &H40, "Validation Check", var_110, var_120)
  loc_106281F:       Set var_CC = Me.FGrid
  loc_1062843:       Me.FGrid.Row = CVar(CLng(arg_C))
  loc_106285E:       Me.FGrid.Col = 1
  loc_1062868:       var_86 = 0
  loc_106286E:     Else
  loc_1062872:       var_98 = CVar(CLng(arg_C)) 'Long
  loc_1062877:       var_B8 = 1
  loc_10628A7:       If (CDate(CStr(Me.FGrid.TextMatrix))) > MemVar_1F950FC) Then
  loc_10628D5:         MsgBox(CVar(arg_10 & " Should not be greater than ") & CDate(MemVar_1F950FC), &H40, "Validation Check", var_110, var_120)
  loc_10628EB:         Set var_CC = Me.FGrid
  loc_106290F:         Me.FGrid.Row = CVar(CLng(arg_C))
  loc_106292A:         Me.FGrid.Col = 1
  loc_1062934:         var_86 = 0
  loc_106293A:       Else
  loc_106293C:         var_86 = &HFF
  loc_106293F:       End If
  loc_106293F:     End If
  loc_1062942:   Else
  loc_1062944:     var_86 = &HFF
  loc_1062947:   End If
  loc_1062947: End If
  loc_1062947: Proc_102_78_1062950 = var_86
End Sub
