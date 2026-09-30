VERSION 5.00
Begin VB.Form rRepHouse
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
  ClientWidth = 11895
  ClientHeight = 7560
  Begin CommandButton BtnParam
    Caption = "&For Site"
    BackColor = &HC0C0C0&
    Left = 10605
    Top = 0
    Width = 1305
    Height = 375
    Visible = 0   'False
    TabIndex = 5
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DownPicture = "rRepHouse.frx":0
    ToolTipText = "Works Only at Head Office"
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
    TabIndex = 18
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
    TabIndex = 17
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
    TabIndex = 16
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
    TabIndex = 15
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
    TabIndex = 14
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
    TabIndex = 13
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
    Width = 2520
    Height = 1875
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 2325
      Height = 1830
      TabStop = 0   'False
      TabIndex = 12
    End
  End
  Begin Frame Frame1
    Caption = "Site Selection"
    Left = 7860
    Top = 240
    Width = 4065
    Height = 3540
    Visible = 0   'False
    TabIndex = 6
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
      Top = 300
      Width = 2820
      Height = 360
      TabIndex = 8
    End
    Begin CommandButton Command1
      Caption = "&OK"
      Left = 1485
      Top = 3060
      Width = 1485
      Height = 390
      TabIndex = 7
    End
    Begin DataGrid DGSite
      Left = 1095
      Top = 660
      Width = 2835
      Height = 2355
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 9
    End
    Begin Label Label1
      Caption = "Site Name"
      Left = 120
      Top = 315
      Width = 900
      Height = 270
      TabIndex = 10
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
    Width = 11895
    Height = 435
    Enabled = 0   'False
    TabIndex = 3
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 2 'Align Bottom
    Begin Label LblProcess
      ForeColor = &HC0&
      Left = 0
      Top = 0
      Width = 3375
      Height = 360
      TabIndex = 24
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
    End
    Begin Label LblTitle
      Caption = "LblTitle"
      BackColor = &H0&
      ForeColor = &HFFFFFF&
      Left = 7230
      Top = 15
      Width = 4470
      Height = 315
      TabIndex = 2
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
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
    TabIndex = 19
  End
  Begin MSHFlexGrid GridSel
    Index = 2
    Left = 5085
    Top = 1785
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 20
  End
  Begin MSHFlexGrid GridSel
    Index = 4
    Left = 5100
    Top = 3810
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 21
  End
  Begin MSHFlexGrid GridSel
    Index = 3
    Left = 300
    Top = 3825
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 22
  End
  Begin MSHFlexGrid FGrid
    Left = 1725
    Top = 75
    Width = 4455
    Height = 1560
    TabIndex = 23
  End
End

Attribute VB_Name = "rRepHouse"

Private global_144 As Integer
Private global_146 As Integer
Private global_148 As Integer
Private global_184 As Integer
Private global_186 As Integer
Private global_124 As Integer
Private global_128 As Variant

Private Sub Check1_Click(Index As Integer) 'FF92E8
  'Data Table: 4E1710
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  loc_FF90F9: Set var_88 = Me.Check1
  loc_FF90FF: Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF911D: If (CLng(var_8C.Value) = 0) Then
  loc_FF912E:   Set var_88 = Me.GridSel
  loc_FF9134:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF913C:   var_8C.Enabled = True
  loc_FF9152:   Set var_88 = Me.GridSel
  loc_FF9158:   Call 0.Method_Check1_Click0 (Index)
  loc_FF9179:   If (CLng(var_8C.Rows) > 1) Then
  loc_FF918F:     Set var_88 = Me.GridSel
  loc_FF9195:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF919D:     var_8C.Row = 1
  loc_FF91BC:     Set var_88 = Me.GridSel
  loc_FF91C2:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF91CA:     var_8C.Col = 0
  loc_FF91D6:   End If
  loc_FF91D9: Else
  loc_FF91E8:   Set var_88 = Me.GridSel
  loc_FF91EE:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF91F6:   var_8C.Enabled = False
  loc_FF920C:   Set var_88 = Me.GridSel
  loc_FF9212:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9233:   If (CLng(var_8C.Rows) > 1) Then
  loc_FF9249:     Set var_88 = Me.GridSel
  loc_FF924F:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9276:     Set var_88 = Me.GridSel
  loc_FF927C:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9284:     var_8C.Col = 0
  loc_FF929A:     Set var_88 = Me.GridSel
  loc_FF92A0:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF92B7:     var_A0 = CVar((CLng(var_8C.Rows) - 1)) 'Long
  loc_FF92C6:     Set var_C4 = Me.GridSel
  loc_FF92CC:     Call 0.Method_Check1_Click0 (Index, var_C8)
  loc_FF92D4:     var_C8.RowSel = 0
  loc_FF92E7:   End If
  loc_FF92E7: End If
  loc_FF92E7: Exit Sub
End Sub

Private Sub Check1_GotFocus(Index As Integer) 'E41F5C
  'Data Table: 4E1710
  Dim var_8C As CheckBox
  loc_E41F3F: Set var_88 = Me.Check1
  loc_E41F45: Call 0.Method_Check1_GotFocus0 (Index, var_8C)
  loc_E41F4D: var_8C.BackColor = &HFF
  loc_E41F59: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E2101C
  'Data Table: 4E1710
  loc_E21002: If (Shift = &HD) Then
  loc_E21013:   Proc_303_0_FBACC8("	")
  loc_E2101B: End If
  loc_E2101B: Exit Sub
End Sub

Private Sub Check1_Validate(Cancel As Boolean) 'E42024
  'Data Table: 4E1710
  Dim var_8C As CheckBox
  loc_E42007: Set var_88 = Me.Check1
  loc_E4200D: Call 0.Method_Check1_Validate0 (Cancel, var_8C)
  loc_E42015: var_8C.BackColor = &H800000
  loc_E42021: Exit Sub
End Sub

Private Sub txtSite_GotFocus(Index As Integer) 'FCAF84
  'Data Table: 4E1710
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_9C As TextBox
  Dim var_D8 As Variant
  loc_FCADE4: On Error Goto loc_FCAF59
  loc_FCADEA: var_8A = Index
  loc_FCADF5: If (var_8A = CInt(0)) Then
  loc_FCAE46:   Set var_98 = Me.txtSite
  loc_FCAE4C:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0)
  loc_FCAE54:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_FCAE6C:   If (var_8A Or (var_A0 = vbNullString)) Then
  loc_FCAE6F:     Exit Sub
  loc_FCAE70:   End If
  loc_FCAE7D:   Set var_98 = Me.txtSite
  loc_FCAE83:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C)
  loc_FCAE8B:   var_A0 = var_9C.Text
  loc_FCAE93:   var_D8 = CVar(var_A0) 'String
  loc_FCAED8:   If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_FCAEE1:     Me.MoveFirst
  loc_FCAF06:     Set var_98 = Me.txtSite
  loc_FCAF0C:     Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0, "Name =")
  loc_FCAF14:     0 = var_9C.Text
  loc_FCAF22:     Proc_6_17_EAAE40(var_D8, CVar(var_A0))
  loc_FCAF38:     Me.Find CStr(1 & var_D8), var_FC, 
  loc_FCAF50:   End If
  loc_FCAF50: End If
  loc_FCAF55: Set var_88 = Nothing
  loc_FCAF58: Exit Sub
  loc_FCAF59: ' Referenced from: FCADE4
  loc_FCAF5F: Call 0.Method_arg_50 (var_A0)
  loc_FCAF67: var_100 = "txtSite_GotFocus"
  loc_FCAF74: Proc_6_152_10790A8(var_A0)
  loc_FCAF80: Exit Sub
  loc_FCAF81: Exit Sub
End Sub

Private Sub txtSite_KeyDown(KeyCode As Integer, Shift As Integer) 'EFBCFC
  'Data Table: 4E1710
  loc_EFBC38: On Error Goto loc_EFBCD1
  loc_EFBC41: If (Shift = &HD) Then
  loc_EFBC4C:   var_88 = "	"
  loc_EFBC52:   Proc_303_0_FBACC8(var_88)
  loc_EFBC5A: End If
  loc_EFBC68: If (KeyCode = CInt(0)) Then
  loc_EFBC83:   Set var_A0 = Nothing
  loc_EFBC8E:   Set var_9C = Nothing
  loc_EFBCBC:   Proc_6_69_134A630(Me.DGSite, Me.txtSite, KeyCode, global_192, Shift, &HFF)
  loc_EFBCD0: End If
  loc_EFBCD0: Exit Sub
  loc_EFBCD1: ' Referenced from: EFBC38
  loc_EFBCD7: Call 0.Method_arg_50 (var_88, 1, var_9C, var_A0)
  loc_EFBCEC: Proc_6_152_10790A8(var_88, "txtSite_KeyDown", 0)
  loc_EFBCF8: Exit Sub
  loc_EFBCF9: CExtInstUnk
End Sub

Private Sub txtSite_KeyPress(KeyAscii As Integer) 'EC2BDC
  'Data Table: 4E1710
  loc_EC2B44: On Error Goto loc_EC2BB1
  loc_EC2B55: If (KeyAscii = CInt(0)) Then
  loc_EC2B74:   If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_EC2B86:     var_A0 = "Name"
  loc_EC2BA1:     Proc_6_89_1470B00(Me.txtSite, KeyAscii, global_192, arg_10)
  loc_EC2BB0:   End If
  loc_EC2BB0: End If
  loc_EC2BB0: Exit Sub
  loc_EC2BB1: ' Referenced from: EC2B44
  loc_EC2BB7: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_EC2BCC: Proc_6_152_10790A8(var_A0, "txtSite_KeyPress")
  loc_EC2BD8: Exit Sub
End Sub

Private Sub txtSite_KeyUp(KeyCode As Integer, Shift As Integer) 'EDDA50
  'Data Table: 4E1710
  loc_EDD9A0: On Error Goto loc_EDDA27
  loc_EDD9B1: If (KeyCode = CInt(0)) Then
  loc_EDD9D7:   If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_EDD9E8:     Call txtSite_KeyDown(KeyCode, global_144)
  loc_EDD9FC:     var_A4 = "Name"
  loc_EDDA17:     Proc_6_89_1470B00(Me.txtSite, KeyCode, global_192, Shift)
  loc_EDDA26:   End If
  loc_EDDA26: End If
  loc_EDDA26: Exit Sub
  loc_EDDA27: ' Referenced from: EDD9A0
  loc_EDDA2D: Call 0.Method_arg_50 (var_A4, var_A4, &HFF)
  loc_EDDA42: Proc_6_152_10790A8(var_A4, "txtSite_KeyUp")
  loc_EDDA4E: Exit Sub
End Sub

Private Sub txtSite_LostFocus(Index As Integer) 'E8B450
  'Data Table: 4E1710
  loc_E8B3E4: On Error Goto loc_E8B427
  loc_E8B3EF: Call txtSite_Validate(Index)
  loc_E8B40F: If (Me.FrmList.Visible = &HFF) Then
  loc_E8B41E:   Me.FrmList.Visible = False
  loc_E8B426: End If
  loc_E8B426: Exit Sub
  loc_E8B427: ' Referenced from: E8B3E4
  loc_E8B42D: Call 0.Method_arg_50 (var_90)
  loc_E8B442: Proc_6_152_10790A8(var_90, "txtSite_LostFocus")
  loc_E8B44E: Exit Sub
End Sub

Private Sub txtSite_Validate(Cancel As Boolean) 'FD81E4
  'Data Table: 4E1710
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_FD801C: On Error Goto loc_FD81BB
  loc_FD8022: var_86 = Cancel
  loc_FD802D: If (var_86 = CInt(0)) Then
  loc_FD807E:   Set var_94 = Me.txtSite
  loc_FD8084:   Call 0.Method_txtSite_Validate0 (Cancel, var_98, var_9C)
  loc_FD808C:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_FD80A4:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_FD80B5:     Set var_94 = Me.txtSite
  loc_FD80BB:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FD80C3:     var_98.Tag = vbNullString
  loc_FD80DD:     Set var_94 = Me.txtSite
  loc_FD80E3:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FD80EB:     var_98.Text = vbNullString
  loc_FD80FA:   Else
  loc_FD8136:     Set var_B0 = Me.txtSite
  loc_FD813C:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FD8144:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD8188:     var_9C = CStr(Me.Fields.Item("Code").Value)
  loc_FD8196:     Set var_B0 = Me.txtSite
  loc_FD819C:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FD81A4:     var_B4.Tag = var_9C
  loc_FD81BA:   End If
  loc_FD81BA: End If
  loc_FD81BA: Exit Sub
  loc_FD81BB: ' Referenced from: FD801C
  loc_FD81C1: Call 0.Method_arg_50 (var_9C)
  loc_FD81C9: var_CC = "txtSite_Validate"
  loc_FD81D6: Proc_6_152_10790A8(var_9C)
  loc_FD81E2: Exit Sub
End Sub

Private Sub BtnParam_Click() 'EA0728
  'Data Table: 4E1710
  Dim Me As Recordset15
  Dim var_88 As Frame
  loc_EA06AA: Set global_192 = New 
  loc_EA06BC: Me.Recordset15.CursorLocation = 3
  loc_EA06E4: Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F95044), 0
  loc_EA06F2: CVarUnk
  loc_EA06F7: VerifyVarObj
  loc_EA06FD: Set var_88 = Me.DGSite
  loc_EA0703: LateIdStAd
  loc_EA071D: Me.Frame1.Visible = True
  loc_EA0725: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E620C4
  'Data Table: 4E1710
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6208F: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E62097: Call Proc_47_71_E49ABC()
  loc_E620A7: Set var_A8 = Me.TxtGrid
  loc_E620AD: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E620B5: var_AC.Visible = False
  loc_E620C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1DA60
  'Data Table: 4E1710
  loc_E1DA57: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1DA5F: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '10A4F98
  'Data Table: 4E1710
  Dim var_9C As String
  Dim var_AC As Variant
  Dim arg_C As Integer
  Dim var_D4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_11C As Long
  loc_10A4D0B: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_126))) Then
  loc_10A4D21:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A4D31:   var_9C = "+{Tab}"
  loc_10A4D37:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag))
  loc_10A4D41:   arg_C = 0
  loc_10A4D47: Else
  loc_10A4D7E:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_124))) Then
  loc_10A4D94:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A4DAA:     Proc_303_0_FBACC8("	", 0)
  loc_10A4DB4:     arg_C = 0
  loc_10A4DB7:   End If
  loc_10A4DB7: End If
  loc_10A4DBD: global_144 = arg_C
  loc_10A4DE3: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10A4E07: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_10A4E1D:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A4E35:   var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10A4E3A:   var_104 = vbNullString
  loc_10A4E44:   Set var_118 = Me.FGrid
  loc_10A4E4A:   LateIdCallSt
  loc_10A4E75:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A4E7A:   var_E4 = 2
  loc_10A4E83:   var_104 = vbNullString
  loc_10A4E8D:   Set var_D4 = Me.FGrid
  loc_10A4E93:   LateIdCallSt
  loc_10A4EA5: End If
  loc_10A4EAF: If (CLng(arg_C) = &HD) Then
  loc_10A4EC5:   var_11C = CLng(Me.FGrid.Row)
  loc_10A4ED5:   If Not (var_11C = CLng(0)) Then
  loc_10A4EDF:     If Not (var_11C = CLng(1)) Then
  loc_10A4EE9:       If Not (var_11C = CLng(2)) Then
  loc_10A4EF3:         If Not (var_11C = CLng(3)) Then
  loc_10A4EFD:           If Not (var_11C = CLng(4)) Then
  loc_10A4F07:             If Not (var_11C = CLng(5)) Then
  loc_10A4F11:               If Not (var_11C = CLng(6)) Then
  loc_10A4F1B:                 If Not (var_11C = CLng(7)) Then
  loc_10A4F25:                   If Not (var_11C = CLng(8)) Then
  loc_10A4F2F:                     If (var_11C = CLng(9)) Then
  loc_10A4F32:                     End If
  loc_10A4F32:                   End If
  loc_10A4F32:                 End If
  loc_10A4F32:               End If
  loc_10A4F32:             End If
  loc_10A4F32:           End If
  loc_10A4F32:         End If
  loc_10A4F32:       End If
  loc_10A4F32:     End If
  loc_10A4F73:     Proc_6_61_1077158(Me, Me.FGrid, Me.TxtGrid, 0, 0, 0, var_11C, Me.FGrid)
  loc_10A4F8D:     global_146 = 0
  loc_10A4F90:   End If
  loc_10A4F90: End If
  loc_10A4F92: arg_C = 0
  loc_10A4F95: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F0BF94
  'Data Table: 4E1710
  Dim var_9C As Long
  loc_F0BEC7: var_9C = CLng(Me.FGrid.Row)
  loc_F0BED7: If Not (var_9C = CLng(0)) Then
  loc_F0BEE1:   If Not (var_9C = CLng(1)) Then
  loc_F0BEEB:     If Not (var_9C = CLng(2)) Then
  loc_F0BEF5:       If Not (var_9C = CLng(3)) Then
  loc_F0BEFF:         If Not (var_9C = CLng(4)) Then
  loc_F0BF09:           If Not (var_9C = CLng(5)) Then
  loc_F0BF13:             If Not (var_9C = CLng(6)) Then
  loc_F0BF1D:               If Not (var_9C = CLng(7)) Then
  loc_F0BF27:                 If Not (var_9C = CLng(8)) Then
  loc_F0BF31:                   If (var_9C = CLng(9)) Then
  loc_F0BF34:                   End If
  loc_F0BF34:                 End If
  loc_F0BF34:               End If
  loc_F0BF34:             End If
  loc_F0BF34:           End If
  loc_F0BF34:         End If
  loc_F0BF34:       End If
  loc_F0BF34:     End If
  loc_F0BF34:   End If
  loc_F0BF4C:   var_AC = 0
  loc_F0BF75:   Proc_6_61_1077158(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F0BF8A: End If
  loc_F0BF8F: global_146 = 0
  loc_F0BF92: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'F72868
  'Data Table: 4E1710
  Dim var_9C As Long
  loc_F7273F: var_9C = CLng(Me.FGrid.Row)
  loc_F7274F: If Not (var_9C = CLng(5)) Then
  loc_F72759:   If Not (var_9C = CLng(6)) Then
  loc_F72763:     If Not (var_9C = CLng(7)) Then
  loc_F7276D:       If Not (var_9C = CLng(8)) Then
  loc_F72777:         If (var_9C = CLng(9)) Then
  loc_F7277A:         End If
  loc_F7277A:       End If
  loc_F7277A:     End If
  loc_F7277A:   End If
  loc_F727B8:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F727CD: Else
  loc_F727D4:   If Not (var_9C = CLng(0)) Then
  loc_F727DE:     If Not (var_9C = CLng(1)) Then
  loc_F727E8:       If Not (var_9C = CLng(2)) Then
  loc_F727F2:         If Not (var_9C = CLng(3)) Then
  loc_F727FC:           If (var_9C = CLng(4)) Then
  loc_F727FF:           End If
  loc_F727FF:         End If
  loc_F727FF:       End If
  loc_F727FF:     End If
  loc_F7283D:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index)
  loc_F7284F:   End If
  loc_F7284F: End If
  loc_F72859: If (CLng(Index) <> &HD) Then
  loc_F72861:   global_146 = &HFF
  loc_F72864: End If
  loc_F72864: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1DA10
  'Data Table: 4E1710
  loc_E1DA07: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E1DA0F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1D880
  'Data Table: 4E1710
  loc_E1D877: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D87F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E42920
  'Data Table: 4E1710
  Dim var_8C As TextBox
  loc_E428FF: Set var_88 = Me.TxtGrid
  loc_E42905: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4290D: var_8C.Visible = False
  loc_E42919: Call Proc_47_71_E49ABC()
  loc_E4291E: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '117BD74
  'Data Table: 4E1710
  Dim var_98 As Variant
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_117B9CB: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_117B9E6: var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_117BA24: Set var_108 = Me.TxtGrid
  loc_117BA2A: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_117BA32: var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_117BA63: var_114 = CLng(Me.FGrid.Row)
  loc_117BA73: If (var_114 = CLng(2)) Then
  loc_117BA7C:   var_118 = global_52
  loc_117BA87:   If (var_118 = "ComplaintList") Then
  loc_117BA97:     ReDim var_11C(0 To 2)
  loc_117BAAE:     var_11C(0) = "UnSolved"
  loc_117BABD:     var_11C(1) = "Solved"
  loc_117BACC:     var_11C(2) = "ALL"
  loc_117BB23:     Set global_188 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C))
  loc_117BB37:   Else
  loc_117BB3F:     If (var_118 = "IssueRegister") Then
  loc_117BB4F:       ReDim var_11C(0 To 1)
  loc_117BB66:       var_11C(0) = "Issue"
  loc_117BB75:       var_11C(1) = "Receive"
  loc_117BBCC:       Set global_188 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 2)
  loc_117BBE0:     Else
  loc_117BBE8:       If Not (var_118 = "StockRegister") Then
  loc_117BBF3:         If (var_118 = "StockSumm") Then
  loc_117BBF6:         End If
  loc_117BC03:         ReDim var_11C(0 To 1)
  loc_117BC1A:         var_11C(0) = "Room"
  loc_117BC29:         var_11C(1) = "Department"
  loc_117BC80:         Set global_188 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 2, Array(var_11C))
  loc_117BC91:       End If
  loc_117BC91:     End If
  loc_117BC91:   End If
  loc_117BC94: Else
  loc_117BC9B:   If (var_114 = CLng(3)) Then
  loc_117BCAF:     If (global_52 = "RoomStatus") Then
  loc_117BCBF:       ReDim var_11C(0 To 2)
  loc_117BCD6:       var_11C(0) = "Vacant"
  loc_117BCE5:       var_11C(1) = "Occupied"
  loc_117BCF4:       var_11C(2) = "ALL"
  loc_117BD4B:       Set global_188 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 3, Array(var_11C))
  loc_117BD5C:     End If
  loc_117BD5F:   Else
  loc_117BD66:     If (var_114 = CLng(4)) Then
  loc_117BD69:     End If
  loc_117BD69:   End If
  loc_117BD69: End If
  loc_117BD6E: Set var_88 = Nothing
  loc_117BD71: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12B8CD8
  'Data Table: 4E1710
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  loc_12B86CE: If (CLng(Shift) = &H1B) Then
  loc_12B86DD:   Set var_8C = Me.TxtGrid
  loc_12B86E3:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12B86FC:   Set var_98 = Me.TxtGrid
  loc_12B8702:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12B870A:   var_9C.Text = var_90.Tag
  loc_12B8726:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12B872F:   Set var_8C = Me.FGrid
  loc_12B874B:   Set var_8C = Me.TxtGrid
  loc_12B8751:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_12B8759:   var_90.Visible = FGrid.DispID_8001
  loc_12B8765:   Call Proc_47_71_E49ABC(arg_14)
  loc_12B876A:   Exit Sub
  loc_12B876B: End If
  loc_12B877E: var_B0 = CLng(Me.FGrid.Row)
  loc_12B878E: If (var_B0 = CLng(2)) Then
  loc_12B8797:   var_B4 = global_52
  loc_12B87A2:   If (var_B4 = "ComplaintList") Then
  loc_12B87C6:     Set var_8C = Me.TxtGrid
  loc_12B87CC:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12B87D4:     var_B8 = var_90.Left
  loc_12B87E5:     Set var_98 = Me.TxtGrid
  loc_12B87EB:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12B87F3:     var_BC = var_9C.Top
  loc_12B8804:     Set var_C0 = Me.TxtGrid
  loc_12B880A:     Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_12B8812:     var_C8 = var_C4.Height
  loc_12B8823:     Set var_CC = Me.TxtGrid
  loc_12B8829:     Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12B8831:     var_D4 = var_D0.Width
  loc_12B887E:     Proc_6_114_11A421C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12B88A5:   Else
  loc_12B88AD:     If (var_B4 = "IssueRegister") Then
  loc_12B88D1:       Set var_8C = Me.TxtGrid
  loc_12B88D7:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8, CInt(var_B8))
  loc_12B88DF:       CInt(((var_BC + var_C8) + CDbl(&H19))) = var_90.Left
  loc_12B88F0:       Set var_98 = Me.TxtGrid
  loc_12B88F6:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_BC)
  loc_12B88FE:       CInt(var_D4) = var_9C.Top
  loc_12B890F:       Set var_C0 = Me.TxtGrid
  loc_12B8915:       Call 0.Method_TxtGrid_KeyDown0 (0, var_C4, var_C8)
  loc_12B891D:       0 = var_C4.Height
  loc_12B892E:       Set var_CC = Me.TxtGrid
  loc_12B8934:       Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12B893C:       var_D4 = var_D0.Width
  loc_12B8989:       Proc_6_114_11A421C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12B89B0:     Else
  loc_12B89B8:       If Not (var_B4 = "StockRegister") Then
  loc_12B89C3:         If (var_B4 = "StockSumm") Then
  loc_12B89C6:         End If
  loc_12B89E7:         Set var_8C = Me.TxtGrid
  loc_12B89ED:         Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8, CInt(var_B8))
  loc_12B89F5:         CInt(((var_BC + var_C8) + CDbl(&H19))) = var_90.Left
  loc_12B8A06:         Set var_98 = Me.TxtGrid
  loc_12B8A0C:         Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_BC)
  loc_12B8A14:         CInt(var_D4) = var_9C.Top
  loc_12B8A25:         Set var_C0 = Me.TxtGrid
  loc_12B8A2B:         Call 0.Method_TxtGrid_KeyDown0 (0, var_C4, var_C8)
  loc_12B8A33:         0 = var_C4.Height
  loc_12B8A44:         Set var_CC = Me.TxtGrid
  loc_12B8A4A:         Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12B8A52:         var_D4 = var_D0.Width
  loc_12B8A9F:         Proc_6_114_11A421C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12B8AC3:       End If
  loc_12B8AC3:     End If
  loc_12B8AC3:   End If
  loc_12B8ACD:   If (CLng(Shift) = &HD) Then
  loc_12B8ADD:     Call Proc_47_69_11290FC(0, 0, var_E6, CInt(var_B8))
  loc_12B8AE8:     If (var_E6 = &HFF) Then
  loc_12B8AEB:       Call Proc_47_73_F0275C(CInt(((var_BC + var_C8) + CDbl(&H19))), CInt(var_D4))
  loc_12B8AF0:     End If
  loc_12B8AF0:   End If
  loc_12B8AF3: Else
  loc_12B8AFA:   If Not (var_B0 = CLng(3)) Then
  loc_12B8B04:     If (var_B0 = CLng(4)) Then
  loc_12B8B07:     End If
  loc_12B8B18:     If (global_52 = "RoomStatus") Then
  loc_12B8B3C:       Set var_8C = Me.TxtGrid
  loc_12B8B42:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8)
  loc_12B8B4A:       0 = var_90.Left
  loc_12B8B5B:       Set var_98 = Me.TxtGrid
  loc_12B8B61:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12B8B69:       var_BC = var_9C.Top
  loc_12B8B7A:       Set var_C0 = Me.TxtGrid
  loc_12B8B80:       Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_12B8B88:       var_C8 = var_C4.Height
  loc_12B8B99:       Set var_CC = Me.TxtGrid
  loc_12B8B9F:       Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12B8BA7:       var_D4 = var_D0.Width
  loc_12B8BF4:       Proc_6_114_11A421C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12B8C18:     End If
  loc_12B8C22:     If (CLng(Shift) = &HD) Then
  loc_12B8C32:       Call Proc_47_69_11290FC(0, 0, var_E6, CInt(var_B8))
  loc_12B8C3D:       If (var_E6 = &HFF) Then
  loc_12B8C40:         Call Proc_47_73_F0275C(CInt(((var_BC + var_C8) + CDbl(&H19))), CInt(var_D4))
  loc_12B8C45:       End If
  loc_12B8C45:     End If
  loc_12B8C48:   Else
  loc_12B8C4F:     If Not (var_B0 = CLng(0)) Then
  loc_12B8C59:       If (var_B0 = CLng(1)) Then
  loc_12B8C5C:       End If
  loc_12B8C9C:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_146 = &HFF))) Then
  loc_12B8CAC:         Call Proc_47_69_11290FC(0, 0, var_E6)
  loc_12B8CB7:         If (var_E6 = &HFF) Then
  loc_12B8CBA:           Call Proc_47_73_F0275C(0)
  loc_12B8CBF:         End If
  loc_12B8CBF:       End If
  loc_12B8CC2:     Else
  loc_12B8CC9:       If (var_B0 = CLng(5)) Then
  loc_12B8CD2:         var_100 = global_52
  loc_12B8CD5:       End If
  loc_12B8CD5:     End If
  loc_12B8CD5:   End If
  loc_12B8CD5: End If
  loc_12B8CD5: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E63AF0
  'Data Table: 4E1710
  Dim var_9C As Long
  Dim arg_1CFF As Double
  loc_E63AAB: Proc_6_58_E06050(arg_10)
  loc_E63AC3: var_9C = CLng(Me.FGrid.Row)
  loc_E63AD3: If (var_9C = CLng(5)) Then
  loc_E63AD6:   GoTo loc_E63AEC
  loc_E63AD9: End If
  loc_E63AE0: If (var_9C = CLng(2)) Then
  loc_E63AE9:   var_A0 = global_52
  loc_E63AEC:   ' Referenced from: E63AD6
  loc_E63AEC: End If
  loc_E63AEC: Exit Sub
  loc_E63AED: arg_1CFF = var_9C
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDDF2C
  'Data Table: 4E1710
  Dim var_9C As Long
  loc_EDDE8B: var_9C = CLng(Me.FGrid.Row)
  loc_EDDE9B: If Not (var_9C = CLng(2)) Then
  loc_EDDEA5:   If Not (var_9C = CLng(3)) Then
  loc_EDDEAF:     If (var_9C = CLng(4)) Then
  loc_EDDEB2:     End If
  loc_EDDEB2:   End If
  loc_EDDED4:   If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_EDDEE5:     Call TxtGrid_KeyDown(KeyCode, global_144)
  loc_EDDEEA:   End If
  loc_EDDF18:   Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, 0, Shift)
  loc_EDDF28: End If
  loc_EDDF28: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21BF0
  'Data Table: 4E1710
  Dim arg_10 As Integer
  loc_E21BCC: On Error Goto loc_E21BE7
  loc_E21BDA: Call Proc_47_69_11290FC(Cancel, &HFF)
  loc_E21BE3: arg_10 = Not(var_88)
  loc_E21BE6: Exit Sub
  loc_E21BE7: ' Referenced from: E21BCC
  loc_E21BE7: Proc_6_60_E63754(arg_10)
  loc_E21BEC: Exit Sub
  loc_E21BED: var_88() = 
End Sub

Private Sub btnExit_Click() 'E1ADC4
  'Data Table: 4E1710
  loc_E1ADB9: Me.Global.Unload Me
  loc_E1ADC1: Exit Sub
End Sub

Private Sub BTNPRINT_Click() '1265D90
  'Data Table: 4E1710
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_BC As Long
  Dim var_EC As CheckBox
  loc_12657FC: On Error Goto loc_1265D8A
  loc_1265804: global_148 = &HFF
  loc_1265814: Me.LblProcess.Caption = "Please Wait..."
  loc_1265826: Me.LblProcess.Refresh
  loc_1265834: var_8C = global_52
  loc_126583F: If (var_8C = "RoomStatus") Then
  loc_1265845:   var_9C = CVar(CLng(0)) 'Long
  loc_126584A:   var_BC = 0
  loc_126587B:   Call Proc_47_76_10615D8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix))
  loc_126588F:   If (var_E6 = 0) Then
  loc_1265897:     global_148 = 0
  loc_126589A:     Exit Sub
  loc_126589B:   End If
  loc_12658A7:   Set var_88 = Me.Check1
  loc_12658AD:   Call 0.Method_BTNPRINT_Click0 (1, var_EC, var_DE, global_148)
  loc_12658B5:   var_BC = var_EC.Value
  loc_12658CB:   If (CLng(var_DE) = 0) Then
  loc_12658E9:     Call Proc_47_72_12828B4(global_168, 1, CByte(1))
  loc_12658F4:     global_56 = var_E4
  loc_1265904:     If (global_148 = 0) Then
  loc_1265907:       Exit Sub
  loc_1265908:     End If
  loc_1265908:   End If
  loc_126590B: Else
  loc_1265913:   If (var_8C = "ComplaintList") Then
  loc_1265919:     var_9C = CVar(CLng(0)) 'Long
  loc_126594F:     Call Proc_47_76_10615D8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1265963:     If (var_E6 = 0) Then
  loc_126596B:       global_148 = 0
  loc_126596E:       Exit Sub
  loc_126596F:     End If
  loc_12659A8:     Call Proc_47_76_10615D8(CInt(2), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(2)))
  loc_12659BC:     If (var_E6 = 0) Then
  loc_12659C4:       global_148 = 0
  loc_12659C7:       Exit Sub
  loc_12659C8:     End If
  loc_12659D4:     Set var_88 = Me.Check1
  loc_12659DA:     Call 0.Method_BTNPRINT_Click0 (1, var_EC, var_DE, global_148, global_148)
  loc_12659E2:     var_9C = var_EC.Value
  loc_12659F8:     If (CLng(var_DE) = 0) Then
  loc_1265A16:       Call Proc_47_72_12828B4(global_168, 1, CByte(1), var_E4)
  loc_1265A21:       global_56 = var_E4
  loc_1265A31:       If (global_148 = 0) Then
  loc_1265A34:         Exit Sub
  loc_1265A35:       End If
  loc_1265A35:     End If
  loc_1265A38:   Else
  loc_1265A40:     If (var_8C = "IssueRegister") Then
  loc_1265A46:       var_9C = CVar(CLng(0)) 'Long
  loc_1265A7C:       Call Proc_47_76_10615D8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1265A90:       If (var_E6 = 0) Then
  loc_1265A98:         global_148 = 0
  loc_1265A9B:         Exit Sub
  loc_1265A9C:       End If
  loc_1265AD5:       Call Proc_47_76_10615D8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1265AE9:       If (var_E6 = 0) Then
  loc_1265AF1:         global_148 = 0
  loc_1265AF4:         Exit Sub
  loc_1265AF5:       End If
  loc_1265B2E:       Call Proc_47_76_10615D8(CInt(2), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(2)))
  loc_1265B42:       If (var_E6 = 0) Then
  loc_1265B4A:         global_148 = 0
  loc_1265B4D:         Exit Sub
  loc_1265B4E:       End If
  loc_1265B5A:       Set var_88 = Me.Check1
  loc_1265B60:       Call 0.Method_BTNPRINT_Click0 (1, var_EC, var_DE, global_148, global_148)
  loc_1265B7E:       If (CLng(var_DE) = 0) Then
  loc_1265B9C:         Call Proc_47_72_12828B4(global_168, 1, CByte(1), var_E4)
  loc_1265BA7:         global_56 = var_E4
  loc_1265BB7:         If (var_EC.Value = 0) Then
  loc_1265BBA:           Exit Sub
  loc_1265BBB:         End If
  loc_1265BBB:       End If
  loc_1265BBE:     Else
  loc_1265BC6:       If Not (var_8C = "StockRegister") Then
  loc_1265BD1:         If (var_8C = "StockSumm") Then
  loc_1265BD4:         End If
  loc_1265BD7:         var_9C = CVar(CLng(0)) 'Long
  loc_1265C0D:         Call Proc_47_76_10615D8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1265C21:         If (var_E6 = 0) Then
  loc_1265C29:           global_148 = 0
  loc_1265C2C:           Exit Sub
  loc_1265C2D:         End If
  loc_1265C66:         Call Proc_47_76_10615D8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1265C7A:         If (var_E6 = 0) Then
  loc_1265C82:           global_148 = 0
  loc_1265C85:           Exit Sub
  loc_1265C86:         End If
  loc_1265C92:         Set var_88 = Me.Check1
  loc_1265C98:         Call 0.Method_BTNPRINT_Click0 (1, var_EC, var_DE, global_148, global_148)
  loc_1265CA0:         var_9C = var_EC.Value
  loc_1265CB6:         If (CLng(var_DE) = 0) Then
  loc_1265CCF:           var_9C = global_168
  loc_1265CD4:           Call Proc_47_72_12828B4(var_9C, 1, CByte(1), var_E4)
  loc_1265CDF:           global_56 = var_E4
  loc_1265CEF:           If (global_148 = 0) Then
  loc_1265CF2:             Exit Sub
  loc_1265CF3:           End If
  loc_1265CF3:         End If
  loc_1265CFF:         Set var_88 = Me.Check1
  loc_1265D05:         Call 0.Method_BTNPRINT_Click0 (2, var_EC, var_DE, var_9C)
  loc_1265D0D:         var_E4 = var_EC.Value
  loc_1265D23:         If (CLng(var_DE) = 0) Then
  loc_1265D41:           Call Proc_47_72_12828B4(global_172, 2, CByte(1))
  loc_1265D4C:           global_60 = var_E4
  loc_1265D5C:           If (global_148 = 0) Then
  loc_1265D5F:             Exit Sub
  loc_1265D60:           End If
  loc_1265D60:         End If
  loc_1265D60:       End If
  loc_1265D60:     End If
  loc_1265D60:   End If
  loc_1265D60: End If
  loc_1265D63: var_9C = CVar(Me) 'Address
  loc_1265D6E: Call unk_4E1724.RetBack
  loc_1265D81: Me.Global.Unload Me
  loc_1265D89: Exit Sub
  loc_1265D8A: ' Referenced from: 12657FC
  loc_1265D8A: Proc_6_60_E63754(var_9C, var_E4)
  loc_1265D8F: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'F25C58
  'Data Table: 4E1710
  loc_F25B5B: If (Proc_6_113_E6DB0C(KeyCode) = &HFF) Then
  loc_F25B86:   Set var_90 = Me.GridSel
  loc_F25B8C:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_F25BB4:   Me.TxtSearch.Visible = False
  loc_F25BBC: End If
  loc_F25BC6: If (CLng(KeyCode) = &H2E) Then
  loc_F25BD6:   Me.TxtSearch.Text = vbNullString
  loc_F25BDE: End If
  loc_F25BF3: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_F25C1E:   Set var_90 = Me.GridSel
  loc_F25C24:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94, Val(Me.TxtSearch.Tag))
  loc_F25C4C:   Me.TxtSearch.Visible = False
  loc_F25C54: End If
  loc_F25C54: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) '11CFB94
  'Data Table: 4E1710
  Dim var_F4 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim Me As Recordset15
  loc_11CF75D: var_90 = Me.TxtSearch.Tag
  loc_11CF772: If (var_90 = CStr(1)) Then
  loc_11CF7C8:   Set var_A0 = Me.GridSel
  loc_11CF7CE:   Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4)
  loc_11CF844:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(Val(Me.TxtSearch.Tag)), global_96, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CF86F: Else
  loc_11CF87E:   If (var_90 = CStr(2)) Then
  loc_11CF8A9:     var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CF8D4:     Set var_A0 = Me.GridSel
  loc_11CF8DA:     Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CF950:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_100, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CF97B:   Else
  loc_11CF98A:     If (var_90 = CStr(3)) Then
  loc_11CF9B5:       var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CF9E0:       Set var_A0 = Me.GridSel
  loc_11CF9E6:       Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CF9EE:       var_B4 = var_A4.Col
  loc_11CFA5C:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_104, KeyAscii, Me.Fields.Item(CVar(CLng(var_B4))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CFA87:     Else
  loc_11CFA96:       If (var_90 = CStr(4)) Then
  loc_11CFAC1:         var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CFAEC:         Set var_A0 = Me.GridSel
  loc_11CFAF2:         Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4, var_B4)
  loc_11CFB68:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_108, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CFB90:       End If
  loc_11CFB90:     End If
  loc_11CFB90:   End If
  loc_11CFB90: End If
  loc_11CFB90: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E9285C
  'Data Table: 4E1710
  loc_E927F5: Me.TxtSearch.Text = vbNullString
  loc_E92825: Set var_90 = Me.GridSel
  loc_E9282B: Call 0.Method_TxtSearch_LostFocus0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E92853: Me.TxtSearch.Visible = False
  loc_E9285B: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E92B2C
  'Data Table: 4E1710
  loc_E92AC5: Me.TxtSearch.Text = vbNullString
  loc_E92AF5: Set var_90 = Me.GridSel
  loc_E92AFB: Call 0.Method_TxtSearch_Click0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E92B23: Me.TxtSearch.Visible = False
  loc_E92B2B: Exit Sub
End Sub

Private Sub Form_Load() 'EDD868
  'Data Table: 4E1710
  loc_EDD7B0: On Error Goto loc_EDD860
  loc_EDD7C3: Set var_88 = Me
  loc_EDD7C9: Proc_6_23_DFC5B8(var_88, 0)
  loc_EDD7DA: Call 0.Method_arg_160 (var_88)
  loc_EDD7E8: Call 0.Method_arg_164 (var_88)
  loc_EDD7F0: Call Proc_47_70_1611F2C(0)
  loc_EDD7FD: Call 0.Method_arg_7C (CDbl(590))
  loc_EDD80A: Call 0.Method_MeC (CDbl(8000))
  loc_EDD817: Call 0.Method_Me4 (CDbl(11900))
  loc_EDD824: If (MemVar_1F95070 = "HO") Then
  loc_EDD82D:   Set var_88 = Me.PictShortCuts
  loc_EDD833:   MDIForm1.PictShortCuts.Visible = True
  loc_EDD83B: End If
  loc_EDD845: Set var_88 = Me.TopCtrl1
  loc_EDD84B: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_6803000E("Add")
  loc_EDD854: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_0()
  loc_EDD85F: Exit Sub
  loc_EDD860: ' Referenced from: EDD7B0
  loc_EDD860: Proc_6_60_E63754()
  loc_EDD865: Exit Sub
End Sub

Private Sub Form_Resize() 'E81744
  'Data Table: 4E1710
  loc_E816DE: Call 0.Method_arg_98 (var_86)
  loc_E816ED: If (CLng(var_86) <> 1) Then
  loc_E81706:   Proc_6_23_DFC5B8(Me, 0)
  loc_E81716:   Call 0.Method_arg_7C (CDbl(580))
  loc_E81722:   Call 0.Method_arg_74 (CDbl(&H14))
  loc_E8173B:   Call 0.Method_arg_54 (Form.Caption)
  loc_E81743: End If
  loc_E81743: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E77BC8
  'Data Table: 4E1710
  loc_E77B6F: Set global_96 = Nothing
  loc_E77B81: Set global_100 = Nothing
  loc_E77B93: Set global_104 = Nothing
  loc_E77BA5: Set global_108 = Nothing
  loc_E77BB7: Set global_188 = Nothing
  loc_E77BC3: MemVar_1F951E8 = Nothing
  loc_E77BC7: Exit Sub
End Sub

Private Sub Form_Activate() 'E2AAF4
  'Data Table: 4E1710
  loc_E2AAD8: Set var_88 = MemVar_1F95248.Picture3
  loc_E2AAE9: Call 0.Method_arg_74 (MDIForm1.Picture3.Left)
  loc_E2AAF1: Exit Sub
End Sub

Private Sub Command1_Click() 'EA1324
  'Data Table: 4E1710
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_EA12AC: Me.Frame1.Visible = False
  loc_EA12C2: Set var_88 = Me.txtSite
  loc_EA12C8: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_EA12DB: global_88 = var_8C.Tag
  loc_EA12F7: Set var_88 = Me.txtSite
  loc_EA12FD: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_EA1310: global_92 = var_8C.Text
  loc_EA131E: Call Proc_47_75_13355B8()
  loc_EA1323: Exit Sub
End Sub

Private Sub DGSite_UnknownEvent_9 'F3F434
  'Data Table: 4E1710
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3F32B: Me.DGSite.Visible = False
  loc_F3F34A: If (Me.RecordCount > 0) Then
  loc_F3F389:   Set var_B4 = Me.txtSite
  loc_F3F38F:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3F397:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3F3CA:   var_B0 = Me.Fields.Item("Name")
  loc_F3F3E9:   Set var_B4 = Me.txtSite
  loc_F3F3EF:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3F3F7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3F40D: End If
  loc_F3F418: Set var_A8 = Me.txtSite
  loc_F3F41E: Call 0.Method_DGSite_UnknownEvent_90 (CInt(0))
  loc_F3F426: var_B0.SetFocus
  loc_F3F432: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'EB4BA4
  'Data Table: 4E1710
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_EB4B30: Set var_9C = Me.ListView.SelectedItem
  loc_EB4B47: Set var_A4 = Me.TxtGrid
  loc_EB4B4D: Call 0.Method_ListView_UnknownEvent_130 (0, var_A8)
  loc_EB4B55: var_A8.Text = var_9C.Text
  loc_EB4B77: Me.FrmList.Visible = False
  loc_EB4B88: Set var_88 = Me.TxtGrid
  loc_EB4B8E: Call 0.Method_ListView_UnknownEvent_130 (0)
  loc_EB4B96: var_9C.SetFocus
  loc_EB4BA2: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_0(Index As Integer) 'E49F30
  'Data Table: 4E1710
  Dim var_8C As MSHFlexGrid
  loc_E49F13: Set var_88 = Me.GridSel
  loc_E49F19: Call 0.Method_GridSel_UnknownEvent_00 (Index, var_8C)
  loc_E49F21: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E49F2D: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_8(Index As Integer) 'E49BF0
  'Data Table: 4E1710
  Dim var_8C As MSHFlexGrid
  loc_E49BD3: Set var_88 = Me.GridSel
  loc_E49BD9: Call 0.Method_GridSel_UnknownEvent_80 (Index, var_8C)
  loc_E49BE1: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E49BED: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(arg_C, arg_10) '1177318
  'Data Table: 4E1710
  Dim var_98 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_168 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  loc_1176F6E: If (arg_10 = &HD) Then
  loc_1176F7F:   Proc_303_0_FBACC8("	")
  loc_1176F87: End If
  loc_1176F91: Set var_94 = Me.GridSel
  loc_1176F97: Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_1176FB8: If (CLng(var_98.Rows) < 1) Then
  loc_1176FBB:   Exit Sub
  loc_1176FBC: End If
  loc_1176FD0: Set var_94 = Me.GridSel
  loc_1176FD6: Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_1176FF8: If ((CLng(arg_10) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_117700B:   Set var_94 = Me.GridSel
  loc_1177011:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_1177019:   var_98.CellFontName = "WINGDINGS"
  loc_1177037:   Set var_94 = Me.GridSel
  loc_117703D:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_1177045:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_117705B:   Set var_94 = Me.GridSel
  loc_1177061:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_1177072:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_117708A:   Set var_CC = Me.GridSel
  loc_1177090:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_D0, 0)
  loc_1177098:   var_100 = var_D0.TextMatrix)
  loc_11770AE:   Set var_164 = Me.GridSel
  loc_11770B4:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_168, var_100)
  loc_11770C5:   var_190 = CVar(CLng(var_168.Row)) 'Long
  loc_1177113:   Set var_17C = Me.GridSel
  loc_1177119:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_180, CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_1177121:   LateIdCallSt
  loc_1177155:   var_1E2 = arg_C
  loc_117715E:   If (var_1E2 = 1) Then
  loc_1177172:     var_86 = CInt((UBound(global_168, 1) + 1))
  loc_1177184:     ReDim Preserve global_168(0 To CLng(var_86))
  loc_1177198:     Set var_94 = Me.GridSel
  loc_117719E:     Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86, var_1E2)
  loc_11771BA:     global_168(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_11771C8:   Else
  loc_11771CE:     If (var_1E2 = 2) Then
  loc_11771E2:       var_86 = CInt((UBound(global_172, 1) + 1))
  loc_11771F4:       ReDim Preserve global_172(0 To CLng(var_86))
  loc_1177208:       Set var_94 = Me.GridSel
  loc_117720E:       Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86, var_180)
  loc_117722A:       global_172(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1177238:     Else
  loc_117723E:       If (var_1E2 = 3) Then
  loc_1177252:         var_86 = CInt((UBound(global_176, 1) + 1))
  loc_1177264:         ReDim Preserve global_176(0 To CLng(var_86))
  loc_1177278:         Set var_94 = Me.GridSel
  loc_117727E:         Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86)
  loc_117729A:         global_176(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_11772A8:       Else
  loc_11772AE:         If (var_1E2 = 4) Then
  loc_11772C2:           var_86 = CInt((UBound(global_180, 1) + 1))
  loc_11772D4:           ReDim Preserve global_180(0 To CLng(var_86))
  loc_11772E8:           Set var_94 = Me.GridSel
  loc_11772EE:           Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86)
  loc_117730A:           global_180(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1177315:         End If
  loc_1177315:       End If
  loc_1177315:     End If
  loc_1177315:   End If
  loc_1177315: End If
  loc_1177315: Exit Sub
  loc_1177316: CExtInstUnk
End Sub

Public Sub GridSel_UnknownEvent_C(arg_C, arg_10) '1138E20
  'Data Table: 4E1710
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_88 As TextBox
  loc_1138ABA: Set var_88 = Me.GridSel
  loc_1138AC0: Call 0.Method_GridSel_UnknownEvent_C0 (arg_C)
  loc_1138AE1: Set var_A0 = Me.GridSel
  loc_1138AE7: Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_A4)
  loc_1138B11: If ((CLng(var_8C.Col) = 0) Or (CLng(var_A4.Row) = 0)) Then
  loc_1138B14:   Exit Sub
  loc_1138B15: End If
  loc_1138B18: var_B6 = arg_C
  loc_1138B21: If (var_B6 = 1) Then
  loc_1138B3C:   Set var_88 = Me.GridSel
  loc_1138B42:   Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C)
  loc_1138B4A:   var_9C = var_8C.Col
  loc_1138BB4:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_96, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1138BD5: Else
  loc_1138BDB:   If (var_B6 = 2) Then
  loc_1138BF6:     Set var_88 = Me.GridSel
  loc_1138BFC:     Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C, var_9C)
  loc_1138C04:     var_9C = var_8C.Col
  loc_1138C6E:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_100, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1138C8F:   Else
  loc_1138C95:     If (var_B6 = 3) Then
  loc_1138CB0:       Set var_88 = Me.GridSel
  loc_1138CB6:       Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C, var_9C)
  loc_1138CBE:       var_9C = var_8C.Col
  loc_1138D28:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_104, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1138D49:     Else
  loc_1138D4F:       If (var_B6 = 4) Then
  loc_1138D6A:         Set var_88 = Me.GridSel
  loc_1138D70:         Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C, var_9C)
  loc_1138DE2:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_108, arg_10, Me.Fields.Item(CVar(CLng(var_8C.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_1138E00:       End If
  loc_1138E00:     End If
  loc_1138E00:   End If
  loc_1138E00: End If
  loc_1138E12: Me.TxtSearch.Tag = CStr(arg_C)
  loc_1138E1D: Exit Sub
  loc_1138E1E: var_9C = var_B6
End Sub

Public Sub GridSel_UnknownEvent_E(Index As Integer) 'E81BBC
  'Data Table: 4E1710
  Dim var_8C As MSHFlexGrid
  loc_E81B5E: Set var_88 = Me.GridSel
  loc_E81B64: Call 0.Method_GridSel_UnknownEvent_E0 (Index)
  loc_E81B85: If (CLng(var_8C.Col) <> 0) Then
  loc_E81B88:   Exit Sub
  loc_E81B89: End If
  loc_E81B93: Set var_88 = Me.GridSel
  loc_E81B99: Call 0.Method_GridSel_UnknownEvent_E0 (Index, var_8C)
  loc_E81BAE: global_184 = CInt(CLng(var_8C.Row))
  loc_E81BBB: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_10(Index As Integer) '1175230
  'Data Table: 4E1710
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_160 As Variant
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_1174E72: Set var_8C = Me.GridSel
  loc_1174E78: Call 0.Method_GridSel_UnknownEvent_100 (Index)
  loc_1174EA3: If ((CLng(var_90.Col) <> 0) Or (global_184 = 0)) Then
  loc_1174EA6:   Exit Sub
  loc_1174EA7: End If
  loc_1174EB1: Set var_8C = Me.GridSel
  loc_1174EB7: Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_1174ECC: global_186 = CInt(CLng(var_90.RowSel))
  loc_1174EE8: For var_A4 = global_184 To global_186: var_88 = var_A4 'Integer
  loc_1174F01:   Set var_8C = Me.GridSel
  loc_1174F07:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, CVar(CLng(var_88)))
  loc_1174F0F:   var_90.Row = global_184
  loc_1174F2E:   Set var_8C = Me.GridSel
  loc_1174F34:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, 0)
  loc_1174F3C:   var_90.Col = global_186
  loc_1174F58:   Set var_8C = Me.GridSel
  loc_1174F5E:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_1174F66:   var_90.CellFontName = "WINGDINGS"
  loc_1174F84:   Set var_8C = Me.GridSel
  loc_1174F8A:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_1174F92:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_1174FA2:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_1174FBA:   Set var_8C = Me.GridSel
  loc_1174FC0:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, 0)
  loc_1174FD8:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1175026:   Set var_14C = Me.GridSel
  loc_117502C:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_150, CVar(CStr(IIf((CStr(var_90.TextMatrix)) = "ü"), " ", "ü"))), 0)
  loc_1175034:   LateIdCallSt
  loc_117505C:   var_1B2 = Index
  loc_1175065:   If (var_1B2 = 1) Then
  loc_1175079:     var_86 = CInt((UBound(global_168, 1) + 1))
  loc_117508B:     ReDim Preserve global_168(0 To CLng(var_86))
  loc_117509F:     Set var_8C = Me.GridSel
  loc_11750A5:     Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86, var_1B2, var_150)
  loc_11750C1:     global_168(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11750CF:   Else
  loc_11750D5:     If (var_1B2 = 2) Then
  loc_11750E9:       var_86 = CInt((UBound(global_172, 1) + 1))
  loc_11750FB:       ReDim Preserve global_172(0 To CLng(var_86))
  loc_117510F:       Set var_8C = Me.GridSel
  loc_1175115:       Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86, var_160)
  loc_1175131:       global_172(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_117513F:     Else
  loc_1175145:       If (var_1B2 = 3) Then
  loc_1175159:         var_86 = CInt((UBound(global_176, 1) + 1))
  loc_117516B:         ReDim Preserve global_176(0 To CLng(var_86))
  loc_117517F:         Set var_8C = Me.GridSel
  loc_1175185:         Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86)
  loc_11751A1:         global_176(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11751AF:       Else
  loc_11751B5:         If (var_1B2 = 4) Then
  loc_11751C9:           var_86 = CInt((UBound(global_180, 1) + 1))
  loc_11751DB:           ReDim Preserve global_180(0 To CLng(var_86))
  loc_11751EF:           Set var_8C = Me.GridSel
  loc_11751F5:           Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86)
  loc_1175211:           global_180(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_117521C:         End If
  loc_117521C:       End If
  loc_117521C:     End If
  loc_117521C:   End If
  loc_117521F: Next var_A4 'Integer
  loc_1175229: global_184 = 0
  loc_117522C: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_13(Index As Integer) 'E47690
  'Data Table: 4E1710
  Dim var_8C As MSHFlexGrid
  loc_E47673: Set var_88 = Me.GridSel
  loc_E47679: Call 0.Method_GridSel_UnknownEvent_130 (Index, var_8C)
  loc_E47681: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E4768D: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_14(Index As Integer) 'E49DF8
  'Data Table: 4E1710
  Dim var_8C As MSHFlexGrid
  loc_E49DDB: Set var_88 = Me.GridSel
  loc_E49DE1: Call 0.Method_GridSel_UnknownEvent_140 (Index, var_8C)
  loc_E49DE9: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E49DF5: Exit Sub
End Sub

Public Function global_52Get() '4E2778
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4E2787
  global_52 = Value
End Sub

Public Function global_56Get() '4E2796
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4E27A5
  global_56 = Value
End Sub

Public Function global_60Get() '4E27B4
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4E27C3
  global_60 = Value
End Sub

Public Function global_64Get() '4E27D2
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '4E27E1
  global_64 = Value
End Sub

Public Function global_68Get() '4E27F0
  global_68Get = global_68
End Function

Public Sub global_68Put(Value) '4E27FF
  global_68 = Value
End Sub

Public Function global_72Get() '4E280E
  global_72Get = global_72
End Function

Public Sub global_72Put(Value) '4E281D
  global_72 = Value
End Sub

Public Function global_76Get() '4E282C
  global_76Get = global_76
End Function

Public Sub global_76Put(Value) '4E283B
  global_76 = Value
End Sub

Public Function global_80Get() '4E284A
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '4E2859
  global_80 = Value
End Sub

Public Function global_84Get() '4E287C
  global_84Get = global_84
End Function

Public Sub global_84Put(Value) '4E288B
  global_84 = Value
End Sub

Public Function global_88Get() '4E289A
  global_88Get = global_88
End Function

Public Sub global_88Put(Value) '4E28A9
  global_88 = Value
End Sub

Public Function global_92Get() '4E28B8
  global_92Get = global_92
End Function

Public Sub global_92Put(Value) '4E28C7
  global_92 = Value
End Sub

Public Sub SelGridKeyPressLocal(Txt, SelGrid, index, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '11E06E4
  'Data Table: 4E1710
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim var_F8 As String
  Dim KeyAscii As Integer
  Dim var_138 As Variant
  loc_11E02A1: If (Me.GridSel.Text).rows < 1) Then
  loc_11E02A4:   Exit Sub
  loc_11E02A5: End If
  loc_11E02B9: If (Me.RecordCount <= 0) Then
  loc_11E02C5:   Me.TEXT = vbNullString
  loc_11E02C9:   Exit Sub
  loc_11E02CA: End If
  loc_11E02DF: If ((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Then
  loc_11E02E2:   Exit Sub
  loc_11E02E3: End If
  loc_11E02ED: If (CLng(KeyAscii) = 8) Then
  loc_11E0307:   If (Len(Me.SelText) > 1) Then
  loc_11E031B:     var_DC = (Len(Me.SelText) - 1)
  loc_11E0323:     Me.SelLength = var_DC
  loc_11E0333:     var_88 = CStr(Me.SelText)
  loc_11E033C:   Else
  loc_11E0345:     Me.TEXT = vbNullString
  loc_11E035F:     Call Me.GridSel.Text).SetFocus
  loc_11E0370:     Me.Visible = False
  loc_11E0374:     Exit Sub
  loc_11E0375:   End If
  loc_11E0378: Else
  loc_11E038F:   var_DC = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_11E0394:   var_88 = CStr(var_DC)
  loc_11E03A0: End If
  loc_11E03A3: Me.Recordset15.MoveFirst
  loc_11E03E0: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_11E0423:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_11E0438: Else
  loc_11E0468:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_88 & "*'", 0, 1
  loc_11E0478: End If
  loc_11E047A: KeyAscii = 0
  loc_11E04A6: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_11E04AC:   var_BC = CVar(CellBackColLeave) 'Long
  loc_11E04C5:   Me.GridSel.Text).CellBackColor = index
  loc_11E04DA:   var_BC = CVar(Me.Recordset15.AbsolutePosition) 'Long
  loc_11E04F3:   Me.GridSel.Text).Row = index
  loc_11E04FD:   var_BC = CVar(CellBackColEnter) 'Long
  loc_11E0516:   Me.GridSel.Text).CellBackColor = index
  loc_11E054C:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_11E0566:   Me.SelLength = CVar(Len(var_88))
  loc_11E057E:   var_DC = Me.GridSel.Text).CellLeft
  loc_11E059E:   var_138 = (index + Me.GridSel.Text).left)
  loc_11E05A6:   Me.left = var_138
  loc_11E05CB:   var_DC = Me.GridSel.Text).CellTop
  loc_11E05EB:   var_138 = (index + Me.GridSel.Text).top)
  loc_11E05F3:   Me.top = var_138
  loc_11E0616:   If (Me.Visible = False) Then
  loc_11E0620:     Me.Visible = True
  loc_11E0624:     var_9C = 0
  loc_11E062D:     Call Me.ZOrder
  loc_11E0636:     Call Me.SetFocus
  loc_11E065A:     Me.BackColor = Me.GridSel.Text).CellBackColor
  loc_11E0683:     Me.ForeColor = Me.GridSel.Text).CellForeColor
  loc_11E06AC:     Me.width = Me.GridSel.Text).CellWidth
  loc_11E06D5:     Me.height = Me.GridSel.Text).CellHeight
  loc_11E06E0:   End If
  loc_11E06E0: End If
  loc_11E06E0: Exit Sub
  loc_11E06E1: Set var_F8 = index
End Sub

Public Function ListView_Items_RecordSet_Local(LV, Txt, index, Rst) 'FF7C78
  'Data Table: 4E1710
  Dim var_104 As String
  Dim var_A0 As Variant
  Dim Me As Variant
  Dim var_134 As String
  Dim var_8C As ListItem
  Dim var_E4 As Integer
  loc_FF7A98: Call Me.ListItems.Clear
  loc_FF7AB5: If (Me.Recordset15.RecordCount <= 0) Then
  loc_FF7AB8:   ListView_Items_RecordSet_Local = 
  loc_FF7ABE: End If
  loc_FF7AC9: If (global_52 <> "HundiPrint") Then
  loc_FF7AD4:   var_104 = "All"
  loc_FF7ADD:   var_A0 = Me.ListItems
  loc_FF7AEE:   Set var_8C = var_A0.add
  loc_FF7B00:   var_A0.ListItem.SubItems = 1
  loc_FF7B05:   ' Referenced from: FF7C00
  loc_FF7B05: End If
  loc_FF7B0B: var_116 = Me.EOF
  loc_FF7B14: If Not(var_116) Then
  loc_FF7B41:   var_A0 = Me.Recordset15.Fields.Item("Name").Value
  loc_FF7BAB:   If Not(IsNull(Me.Recordset15.Fields.Item("Code").Value)) Then
  loc_FF7BDA:     var_134 = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_FF7BE2:     Me.ListItems.add.SubItems = 1
  loc_FF7BF8:   End If
  loc_FF7BFB:   Me.MoveNext
  loc_FF7C00:   GoTo loc_FF7B05
  loc_FF7C03: End If
  loc_FF7C0D: var_A0 = Me.Text)
  loc_FF7C18: var_E4 = 0
  loc_FF7C37: Set var_8C = Me.FindItem
  loc_FF7C48: If (var_8C Is Nothing) Then
  loc_FF7C4B:   ListView_Items_RecordSet_Local = 1
  loc_FF7C54: Else
  loc_FF7C5A:   var_8C.EnsureVisible var_116
  loc_FF7C64:   var_8C.Selected = True
  loc_FF7C69: End If
  loc_FF7C6C: Set var_88 = var_8C 
  loc_FF7C70: ListView_Items_RecordSet_Local = var_104
End Function

Public Sub Proc_47_69_11290FC(arg_C, arg_10) '11290FC
  'Data Table: 4E1710
  Dim var_9C As Variant
  Dim var_B0 As Long
  Dim var_B4 As Variant
  Dim var_F0 As Variant
  Dim var_E0 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_B8 As String
  Dim var_144 As MSHFlexGrid
  loc_1128DC3: var_B0 = CLng(Me.FGrid.Row)
  loc_1128DD3: If (var_B0 = CLng(2)) Then
  loc_1128DE2:   Set var_9C = Me.TxtGrid
  loc_1128DE8:   Call 0.Method_Proc_47_69_11290FC0 (0, var_B4)
  loc_1128E07:   If (var_B4.Text <> vbNullString) Then
  loc_1128E1D:     var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1128E35:     var_110 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1128E52:     Set var_B4 = Me.ListView.SelectedItem
  loc_1128E60:     var_130 = CVar(var_B4.Text) 'String
  loc_1128E68:     Set var_144 = Me.FGrid
  loc_1128E6E:     LateIdCallSt
  loc_1128E8E:   End If
  loc_1128E94:   var_148 = global_52
  loc_1128E9F:   If Not (var_148 = "StockRegister") Then
  loc_1128EAA:     If (var_148 = "StockSumm") Then
  loc_1128EAD:     End If
  loc_1128ED3:     var_B8 = CStr(Me.FGrid.TextMatrix))
  loc_1128EE4:     If (var_B8 = "Room") Then
  loc_1128EF5:       Call Proc_47_74_12135DC(2, "Select '' as O,Name As RoomNo,Code As Code From RoomMast where Type in ('RO') Order By Name", 1, CVar(CLng(2)), var_144)
  loc_1128EFD:     Else
  loc_1128F0B:       Call Proc_47_74_12135DC(2, "Select '' as O,Name As Department,Code As Code From Depart  where RestType in ('House Keeping') Order By Name", var_130)
  loc_1128F10:     End If
  loc_1128F10:   End If
  loc_1128F13: Else
  loc_1128F1A:   If Not (var_B0 = CLng(5)) Then
  loc_1128F24:     If Not (var_B0 = CLng(6)) Then
  loc_1128F2E:       If Not (var_B0 = CLng(7)) Then
  loc_1128F38:         If Not (var_B0 = CLng(8)) Then
  loc_1128F42:           If (var_B0 = CLng(9)) Then
  loc_1128F45:           End If
  loc_1128F45:         End If
  loc_1128F45:       End If
  loc_1128F45:     End If
  loc_1128F48:   Else
  loc_1128F4F:     If (var_B0 = CLng(3)) Then
  loc_1128F5F:       Set var_9C = Me.TxtGrid
  loc_1128F65:       Call 0.Method_Proc_47_69_11290FC0 (arg_C, var_B4, var_B8)
  loc_1128F6D:       var_110 = var_B4.Text
  loc_1128F84:       If (var_B8 <> vbNullString) Then
  loc_1128F9A:         var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1128FB2:         var_110 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1128FCF:         Set var_B4 = Me.ListView.SelectedItem
  loc_1128FDD:         var_130 = CVar(var_B4.Text) 'String
  loc_1128FE5:         Set var_144 = Me.FGrid
  loc_1128FEB:         LateIdCallSt
  loc_112900B:       End If
  loc_112900E:     Else
  loc_1129015:       If (var_B0 = CLng(4)) Then
  loc_1129018:         GoTo loc_11290AD
  loc_112901B:       End If
  loc_1129022:       If Not (var_B0 = CLng(0)) Then
  loc_112902C:         If (var_B0 = CLng(1)) Then
  loc_112902F:         End If
  loc_1129042:         var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_112904B:         Set var_144 = Me.FGrid
  loc_112905A:         var_110 = CVar(CLng(var_144.Col)) 'Long
  loc_1129068:         Set var_9C = Me.TxtGrid
  loc_112906E:         Call 0.Method_Proc_47_69_11290FC0 (0, var_B4, var_110, var_F0, var_144)
  loc_1129081:         var_E0 = CVar(Proc_6_33_15125B8(var_B4, var_130, var_110)) 'String
  loc_1129089:         Set var_150 = Me.FGrid
  loc_112908F:         LateIdCallSt
  loc_11290AD:         ' Referenced from:       1129018
  loc_11290AD:       End If
  loc_11290AD:     End If
  loc_11290AD:   End If
  loc_11290AD: End If
  loc_11290B8: If (arg_10 = 0) Then
  loc_11290BF:   Set var_9C = Me.FGrid
  loc_11290DB:   Set var_9C = Me.TxtGrid
  loc_11290E1:   Call 0.Method_Proc_47_69_11290FC0 (0, var_B4, 0, FGrid.DispID_8001, &HFF)
  loc_11290E9:   var_B4.Visible = var_150
  loc_11290F5: End If
  loc_11290F5: Proc_47_69_11290FC = var_E0
  loc_11290FB: Result var_F0 End Sub 'Currency
End Sub

Public Sub Proc_47_70_1611F2C
  'Data Table: 4E1710
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
  loc_1610A74: Call 0.Method_arg_78 (var_8C)
  loc_1610A8F: Me.Pic.Top = ((var_8C - Me.Pic.Width) - CDbl(&HA))
  loc_1610AA7: Set var_98 = Me.BTNPRINT
  loc_1610AAD: Call 0.Method_Proc_47_70_1611F2C0 (0, var_9C)
  loc_1610AC1: Set var_A0 = Me.BTNEXIT
  loc_1610B0D: Set var_B0 = Me.BTNPRINT
  loc_1610B13: Call 0.Method_Proc_47_70_1611F2C0 (0, var_B4)
  loc_1610B1B: var_B4.Left = ((Me.Pic.Width - ((var_9C.Width + var_A0.Width) + Me.BTNEXIT.Width)) / CDbl(2))
  loc_1610B54: Set var_98 = Me.BTNPRINT
  loc_1610B5A: Call 0.Method_Proc_47_70_1611F2C0 (0, var_9C)
  loc_1610B62: var_9C.Top = (Me.Pic.Top + CDbl(&HA))
  loc_1610B7C: Set var_9C = Me.BTNPRINT
  loc_1610B82: Call 0.Method_Proc_47_70_1611F2C0 (0, var_A0)
  loc_1610B9B: Set var_90 = Me.BTNPRINT
  loc_1610BA1: Call 0.Method_Proc_47_70_1611F2C0 (0, var_98)
  loc_1610BC0: Me.BTNEXIT.Left = (var_98.Left + var_A0.Width)
  loc_1610BDF: var_8C = Me.Pic.Top
  loc_1610BF6: Me.BTNEXIT.Top = (var_8C + CDbl(&HA))
  loc_1610C1B: Call 0.Method_Me0 (var_8C)
  loc_1610C2D: var_D4 = CVar(((var_8C - CDbl(Me.FGrid.Width)) / CDbl(2))) 'Single
  loc_1610C36: Set var_98 = Me.FGrid
  loc_1610C3C: var_98.Left = var_D4
  loc_1610C5D: Me.FGrid.Top = CVar(CDbl(&H4B))
  loc_1610C78: Me.FGrid.Rows = &HA
  loc_1610C93: Me.FGrid.Cols = 3
  loc_1610CAE: Me.FGrid.FixedCols = 1
  loc_1610CB6: var_D4 = 0
  loc_1610CBF: var_F4 = &H898
  loc_1610CCC: Set var_90 = Me.FGrid
  loc_1610CD2: LateIdCallSt
  loc_1610CDD: var_D4 = 1
  loc_1610CE6: var_F4 = &H898
  loc_1610CF3: Set var_90 = Me.FGrid
  loc_1610CF9: LateIdCallSt
  loc_1610D04: var_D4 = 2
  loc_1610D0D: var_F4 = 0
  loc_1610D1A: Set var_90 = Me.FGrid
  loc_1610D20: LateIdCallSt
  loc_1610D2B: var_D4 = 1
  loc_1610D3A: var_F4 = CVar(CInt(1)) 'Integer
  loc_1610D42: Set var_90 = Me.FGrid
  loc_1610D48: LateIdCallSt
  loc_1610D78: For var_108 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_108 'Integer
  loc_1610D82:   var_D4 = CVar(CLng(var_86)) 'Long
  loc_1610D87:   var_F4 = 0
  loc_1610D94:   Set var_90 = Me.FGrid
  loc_1610D9A:   LateIdCallSt
  loc_1610DA8: Next var_108 'Integer
  loc_1610DAD: Call Proc_47_75_13355B8()
  loc_1610DB9: For var_10C = 1 To 4: var_86 = var_10C 'Integer
  loc_1610DC9:   Set var_90 = Me.GridSel
  loc_1610DCF:   Call 0.Method_Proc_47_70_1611F2C0 (var_86, var_98)
  loc_1610DED:   If (CBool(var_98.Visible) = &HFF) Then
  loc_1610DF6:     var_88 = (var_88 + 1)
  loc_1610DF9:   End If
  loc_1610DFC: Next var_10C 'Integer
  loc_1610E1C: var_D4 = CVar(CDbl(((((global_124 - global_126) + 1) * CInt(220)) + 500))) 'Single
  loc_1610E2B: Me.FGrid.Height = var_D4
  loc_1610E39: var_11C = global_128 'Variant
  loc_1610E48: If (var_11C = 0) Then
  loc_1610E5E:   Me.FGrid.Top = CVar(CDbl(1000))
  loc_1610E69: Else
  loc_1610E74:   If (var_11C = 1) Then
  loc_1610E80:     Set var_90 = Me.GridSel
  loc_1610E86:     Call 0.Method_Proc_47_70_1611F2C0 (1)
  loc_1610E8E:     var_C4 = var_98.Width
  loc_1610E9D:     Call 0.Method_Me0 (var_8C, var_C4)
  loc_1610EAF:     var_D4 = CVar(((var_8C - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_1610EBD:     Set var_9C = Me.GridSel
  loc_1610EC3:     Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_1610ECB:     var_A0.Left = 1
  loc_1610EE8:     var_12C = Me.FGrid.Height
  loc_1610F0F:     var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_1610F1D:     Set var_9C = Me.GridSel
  loc_1610F23:     Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0, 1)
  loc_1610F2B:     var_A0.Top = var_12C
  loc_1610F4C:     var_C4 = Me.FGrid.Height
  loc_1610F5C:     Set var_98 = Me.Pic
  loc_1610F6D:     Call 0.Method_Me8 (var_8C, var_C4)
  loc_1610F84:     var_D4 = CVar((((var_8C - CDbl(var_C4)) - var_98.Height) - CDbl(1200))) 'Single
  loc_1610F92:     Set var_9C = Me.GridSel
  loc_1610F98:     Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_1610FA0:     var_A0.Height = 1
  loc_1610FBC:     Set var_90 = Me.GridSel
  loc_1610FC2:     Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_1610FE1:     Set var_9C = Me.Check1
  loc_1610FE7:     Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_1610FEF:     var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_161100B:     Set var_90 = Me.GridSel
  loc_1611011:     Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_1611030:     Set var_9C = Me.Check1
  loc_1611036:     Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_161103E:     var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1611054:   Else
  loc_161105F:     If (var_11C = 2) Then
  loc_161106B:       Set var_90 = Me.GridSel
  loc_1611071:       Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_1611079:       var_C4 = var_98.Width
  loc_1611088:       Call 0.Method_Me0 (var_8C, var_C4)
  loc_161109E:       var_D4 = CVar((((var_8C / CDbl(2)) - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_16110AC:       Set var_9C = Me.GridSel
  loc_16110B2:       Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_16110BA:       var_A0.Left = 2
  loc_16110D7:       var_12C = Me.FGrid.Height
  loc_16110FE:       var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_161110C:       Set var_9C = Me.GridSel
  loc_1611112:       Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0, 2)
  loc_161111A:       var_A0.Top = var_12C
  loc_161113B:       var_C4 = Me.FGrid.Height
  loc_161114B:       Set var_98 = Me.Pic
  loc_1611151:       var_94 = var_98.Height
  loc_161115C:       Call 0.Method_Me8 (var_8C, var_C4)
  loc_1611173:       var_D4 = CVar((((var_8C - CDbl(var_C4)) - var_94) - CDbl(1200))) 'Single
  loc_1611181:       Set var_9C = Me.GridSel
  loc_1611187:       Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_161118F:       var_A0.Height = 2
  loc_16111AB:       Set var_90 = Me.GridSel
  loc_16111B1:       Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_16111D0:       Set var_9C = Me.Check1
  loc_16111D6:       Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_16111DE:       var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_16111FA:       Set var_90 = Me.GridSel
  loc_1611200:       Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_161121F:       Set var_9C = Me.Check1
  loc_1611225:       Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_161122D:       var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1611246:       Call 0.Method_Me0 (var_94)
  loc_1611254:       Set var_90 = Me.GridSel
  loc_161125A:       Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_1611262:       var_C4 = var_98.Width
  loc_1611271:       Call 0.Method_Me0 (var_8C, var_C4)
  loc_161128F:       var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_161129D:       Set var_9C = Me.GridSel
  loc_16112A3:       Call 0.Method_Proc_47_70_1611F2C0 (2, var_A0)
  loc_16112AB:       var_A0.Left = 2
  loc_16112C8:       var_12C = Me.FGrid.Height
  loc_16112EF:       var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_16112FD:       Set var_9C = Me.GridSel
  loc_1611303:       Call 0.Method_Proc_47_70_1611F2C0 (2, var_A0, 2)
  loc_161130B:       var_A0.Top = var_12C
  loc_161132C:       var_C4 = Me.FGrid.Height
  loc_161133C:       Set var_98 = Me.Pic
  loc_1611342:       var_94 = var_98.Height
  loc_161134D:       Call 0.Method_Me8 (var_8C, var_C4)
  loc_1611364:       var_D4 = CVar((((var_8C - CDbl(var_C4)) - var_94) - CDbl(1200))) 'Single
  loc_1611372:       Set var_9C = Me.GridSel
  loc_1611378:       Call 0.Method_Proc_47_70_1611F2C0 (2, var_A0)
  loc_1611380:       var_A0.Height = 2
  loc_161139C:       Set var_90 = Me.GridSel
  loc_16113A2:       Call 0.Method_Proc_47_70_1611F2C0 (2, var_98)
  loc_16113C1:       Set var_9C = Me.Check1
  loc_16113C7:       Call 0.Method_Proc_47_70_1611F2C0 (2, var_A0)
  loc_16113CF:       var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_16113EB:       Set var_90 = Me.GridSel
  loc_16113F1:       Call 0.Method_Proc_47_70_1611F2C0 (2, var_98)
  loc_1611410:       Set var_9C = Me.Check1
  loc_1611416:       Call 0.Method_Proc_47_70_1611F2C0 (2, var_A0)
  loc_161141E:       var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1611434:     Else
  loc_161143F:       If (var_11C = 3) Then
  loc_161144B:         Set var_90 = Me.GridSel
  loc_1611451:         Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_1611459:         var_C4 = var_98.Width
  loc_1611468:         Call 0.Method_Me0 (var_8C, var_C4)
  loc_161147E:         var_D4 = CVar((((var_8C / CDbl(2)) - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_161148C:         Set var_9C = Me.GridSel
  loc_1611492:         Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_161149A:         var_A0.Left = 3
  loc_16114B1:         Set var_98 = Me.FGrid
  loc_16114B7:         var_12C = var_98.Height
  loc_16114DE:         var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_16114EC:         Set var_9C = Me.GridSel
  loc_16114F2:         Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0, 3)
  loc_16114FA:         var_A0.Top = var_12C
  loc_161151A:         Set var_90 = Me.GridSel
  loc_1611520:         Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_161153F:         Set var_9C = Me.Check1
  loc_1611545:         Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_161154D:         var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_1611569:         Set var_90 = Me.GridSel
  loc_161156F:         Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_161158E:         Set var_9C = Me.Check1
  loc_1611594:         Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_161159C:         var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_16115B8:         Set var_90 = Me.GridSel
  loc_16115BE:         Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_16115DD:         Set var_9C = Me.GridSel
  loc_16115E3:         Call 0.Method_Proc_47_70_1611F2C0 (3, var_A0)
  loc_16115EB:         var_A0.Left = CVar(CDbl(var_98.Left))
  loc_1611607:         Set var_9C = Me.GridSel
  loc_161160D:         Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_1611615:         var_12C = var_A0.Height
  loc_1611627:         Set var_90 = Me.GridSel
  loc_161162D:         Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_1611649:         var_D4 = CVar(((CDbl(var_98.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_1611657:         Set var_A8 = Me.GridSel
  loc_161165D:         Call 0.Method_Proc_47_70_1611F2C0 (3, var_B0, CVar(CDbl(var_98.Left)))
  loc_1611665:         var_B0.Top = var_12C
  loc_1611689:         Set var_90 = Me.GridSel
  loc_161168F:         Call 0.Method_Proc_47_70_1611F2C0 (3, var_98)
  loc_16116AE:         Set var_9C = Me.Check1
  loc_16116B4:         Call 0.Method_Proc_47_70_1611F2C0 (3, var_A0)
  loc_16116BC:         var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_16116D8:         Set var_90 = Me.GridSel
  loc_16116DE:         Call 0.Method_Proc_47_70_1611F2C0 (3, var_98)
  loc_16116FD:         Set var_9C = Me.Check1
  loc_1611703:         Call 0.Method_Proc_47_70_1611F2C0 (3, var_A0)
  loc_161170B:         var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1611724:         Call 0.Method_Me0 (var_94)
  loc_1611732:         Set var_90 = Me.GridSel
  loc_1611738:         Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_1611740:         var_C4 = var_98.Width
  loc_161174F:         Call 0.Method_Me0 (var_8C, var_C4)
  loc_161176D:         var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_161177B:         Set var_9C = Me.GridSel
  loc_1611781:         Call 0.Method_Proc_47_70_1611F2C0 (2, var_A0)
  loc_1611789:         var_A0.Left = CVar(CDbl(var_98.Left))
  loc_16117A0:         Set var_98 = Me.FGrid
  loc_16117A6:         var_12C = var_98.Height
  loc_16117CD:         var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_16117DB:         Set var_9C = Me.GridSel
  loc_16117E1:         Call 0.Method_Proc_47_70_1611F2C0 (2, var_A0, CVar(CDbl(var_98.Left)))
  loc_16117E9:         var_A0.Top = var_12C
  loc_1611809:         Set var_9C = Me.GridSel
  loc_161180F:         Call 0.Method_Proc_47_70_1611F2C0 (2, var_A0)
  loc_1611817:         var_12C = var_A0.Height
  loc_1611829:         Set var_90 = Me.GridSel
  loc_161182F:         Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_161184B:         var_D4 = CVar(((CDbl(var_98.Height) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_1611859:         Set var_A8 = Me.GridSel
  loc_161185F:         Call 0.Method_Proc_47_70_1611F2C0 (2, var_B0, CVar(CDbl(var_98.Left)))
  loc_1611867:         var_B0.Height = var_12C
  loc_161188B:         Set var_90 = Me.GridSel
  loc_1611891:         Call 0.Method_Proc_47_70_1611F2C0 (2, var_98)
  loc_16118B0:         Set var_9C = Me.Check1
  loc_16118B6:         Call 0.Method_Proc_47_70_1611F2C0 (2, var_A0)
  loc_16118BE:         var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_16118DA:         Set var_90 = Me.GridSel
  loc_16118E0:         Call 0.Method_Proc_47_70_1611F2C0 (2, var_98)
  loc_16118FF:         Set var_9C = Me.Check1
  loc_1611905:         Call 0.Method_Proc_47_70_1611F2C0 (2, var_A0)
  loc_161190D:         var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1611923:       Else
  loc_161192E:         If (var_11C = 4) Then
  loc_161193A:           Set var_90 = Me.GridSel
  loc_1611940:           Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_1611948:           var_C4 = var_98.Width
  loc_1611957:           Call 0.Method_Me0 (var_8C, var_C4)
  loc_161196D:           var_D4 = CVar((((var_8C / CDbl(2)) - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_161197B:           Set var_9C = Me.GridSel
  loc_1611981:           Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_1611989:           var_A0.Left = 4
  loc_16119A0:           Set var_98 = Me.FGrid
  loc_16119A6:           var_12C = var_98.Height
  loc_16119CD:           var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_16119DB:           Set var_9C = Me.GridSel
  loc_16119E1:           Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0, 4)
  loc_16119E9:           var_A0.Top = var_12C
  loc_1611A09:           Set var_90 = Me.GridSel
  loc_1611A0F:           Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_1611A2E:           Set var_9C = Me.Check1
  loc_1611A34:           Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_1611A3C:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_1611A58:           Set var_90 = Me.GridSel
  loc_1611A5E:           Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_1611A7D:           Set var_9C = Me.Check1
  loc_1611A83:           Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_1611A8B:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1611AA4:           Call 0.Method_Me0 (var_94)
  loc_1611AB2:           Set var_90 = Me.GridSel
  loc_1611AB8:           Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_1611AC0:           var_C4 = var_98.Width
  loc_1611ACF:           Call 0.Method_Me0 (var_8C, var_C4)
  loc_1611AED:           var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_1611AFB:           Set var_9C = Me.GridSel
  loc_1611B01:           Call 0.Method_Proc_47_70_1611F2C0 (2, var_A0)
  loc_1611B09:           var_A0.Left = 4
  loc_1611B20:           Set var_98 = Me.FGrid
  loc_1611B26:           var_12C = var_98.Height
  loc_1611B4D:           var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_1611B5B:           Set var_9C = Me.GridSel
  loc_1611B61:           Call 0.Method_Proc_47_70_1611F2C0 (2, var_A0, 4)
  loc_1611B69:           var_A0.Top = var_12C
  loc_1611B89:           Set var_90 = Me.GridSel
  loc_1611B8F:           Call 0.Method_Proc_47_70_1611F2C0 (2, var_98)
  loc_1611BAE:           Set var_9C = Me.Check1
  loc_1611BB4:           Call 0.Method_Proc_47_70_1611F2C0 (2, var_A0)
  loc_1611BBC:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_1611BD8:           Set var_90 = Me.GridSel
  loc_1611BDE:           Call 0.Method_Proc_47_70_1611F2C0 (2, var_98)
  loc_1611BFD:           Set var_9C = Me.Check1
  loc_1611C03:           Call 0.Method_Proc_47_70_1611F2C0 (2, var_A0)
  loc_1611C0B:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1611C27:           Set var_90 = Me.GridSel
  loc_1611C2D:           Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_1611C4C:           Set var_9C = Me.GridSel
  loc_1611C52:           Call 0.Method_Proc_47_70_1611F2C0 (3, var_A0)
  loc_1611C5A:           var_A0.Left = CVar(CDbl(var_98.Left))
  loc_1611C76:           Set var_9C = Me.GridSel
  loc_1611C7C:           Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_1611C84:           var_12C = var_A0.Height
  loc_1611C96:           Set var_90 = Me.GridSel
  loc_1611C9C:           Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_1611CB8:           var_D4 = CVar(((CDbl(var_98.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_1611CC6:           Set var_A8 = Me.GridSel
  loc_1611CCC:           Call 0.Method_Proc_47_70_1611F2C0 (3, var_B0, CVar(CDbl(var_98.Left)))
  loc_1611CD4:           var_B0.Top = var_12C
  loc_1611CF8:           Set var_90 = Me.GridSel
  loc_1611CFE:           Call 0.Method_Proc_47_70_1611F2C0 (3, var_98)
  loc_1611D1D:           Set var_9C = Me.Check1
  loc_1611D23:           Call 0.Method_Proc_47_70_1611F2C0 (3, var_A0)
  loc_1611D2B:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_1611D47:           Set var_90 = Me.GridSel
  loc_1611D4D:           Call 0.Method_Proc_47_70_1611F2C0 (3, var_98)
  loc_1611D6C:           Set var_9C = Me.Check1
  loc_1611D72:           Call 0.Method_Proc_47_70_1611F2C0 (3, var_A0)
  loc_1611D7A:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1611D93:           Call 0.Method_Me0 (var_94)
  loc_1611DA1:           Set var_90 = Me.GridSel
  loc_1611DA7:           Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_1611DAF:           var_C4 = var_98.Width
  loc_1611DBE:           Call 0.Method_Me0 (var_8C, var_C4)
  loc_1611DDC:           var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_1611DEA:           Set var_9C = Me.GridSel
  loc_1611DF0:           Call 0.Method_Proc_47_70_1611F2C0 (4, var_A0)
  loc_1611DF8:           var_A0.Left = CVar(CDbl(var_98.Left))
  loc_1611E14:           Set var_9C = Me.GridSel
  loc_1611E1A:           Call 0.Method_Proc_47_70_1611F2C0 (1, var_A0)
  loc_1611E22:           var_12C = var_A0.Height
  loc_1611E34:           Set var_90 = Me.GridSel
  loc_1611E3A:           Call 0.Method_Proc_47_70_1611F2C0 (1, var_98)
  loc_1611E56:           var_D4 = CVar(((CDbl(var_98.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_1611E64:           Set var_A8 = Me.GridSel
  loc_1611E6A:           Call 0.Method_Proc_47_70_1611F2C0 (4, var_B0, CVar(CDbl(var_98.Left)))
  loc_1611E72:           var_B0.Top = var_12C
  loc_1611E96:           Set var_90 = Me.GridSel
  loc_1611E9C:           Call 0.Method_Proc_47_70_1611F2C0 (4, var_98)
  loc_1611EBB:           Set var_9C = Me.Check1
  loc_1611EC1:           Call 0.Method_Proc_47_70_1611F2C0 (4, var_A0)
  loc_1611EC9:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_1611EE5:           Set var_90 = Me.GridSel
  loc_1611EEB:           Call 0.Method_Proc_47_70_1611F2C0 (4, var_98)
  loc_1611F0A:           Set var_9C = Me.Check1
  loc_1611F10:           Call 0.Method_Proc_47_70_1611F2C0 (4, var_A0)
  loc_1611F18:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1611F2B:         End If
  loc_1611F2B:       End If
  loc_1611F2B:     End If
  loc_1611F2B:   End If
  loc_1611F2B: End If
  loc_1611F2B: Exit Sub
End Sub

Public Sub Proc_47_71_E49ABC
  'Data Table: 4E1710
  loc_E49AA3: If (Me.FrmList.Visible = &HFF) Then
  loc_E49AB2:   Me.FrmList.Visible = False
  loc_E49ABA: End If
  loc_E49ABA: Exit Sub
End Sub

Public Sub Proc_47_72_12828B4(arg_C, arg_10, arg_14) '12828B4
  'Data Table: 4E1710
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
  loc_128231A: On Error Goto loc_128289E
  loc_1282320: var_8C = vbNullString
  loc_128232B: CRefVarAry
  loc_1282333: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_1282354:   If (arg_C(var_8E) = 0) Then
  loc_1282357:     GoTo loc_12826EF
  loc_128235A:   End If
  loc_128236B:   var_90 = CInt(arg_C(var_8E))
  loc_1282375:   var_A8 = CVar(CLng(var_90)) 'Long
  loc_128238D:   Set var_DC = Me.GridSel
  loc_1282393:   Call 0.Method_Proc_47_72_12828B40 (arg_10, var_E0, 0)
  loc_12823BB:   If (CStr(var_E0.TextMatrix)) = "ü") Then
  loc_12823C7:     If (CInt(arg_14) = 0) Then
  loc_12823E6:       Set var_DC = Me.GridSel
  loc_12823EC:       Call 0.Method_Proc_47_72_12828B40 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_12823F4:       var_C8 = var_E0.TextMatrix)
  loc_1282425:       Set var_108 = Me.GridSel
  loc_128242B:       Call 0.Method_Proc_47_72_12828B40 (arg_10, var_10C, 2, CVar(CLng(var_90)), ",")
  loc_1282463:       var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar(CStr(var_C8)), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)))))
  loc_1282468:       var_8C = CStr(var_1AC)
  loc_128248D:     Else
  loc_1282496:       If (CInt(arg_14) = 1) Then
  loc_12824B5:         Set var_DC = Me.GridSel
  loc_12824BB:         Call 0.Method_Proc_47_72_12828B40 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_12824C3:         var_C8 = var_E0.TextMatrix)
  loc_12824FB:         Set var_108 = Me.GridSel
  loc_1282501:         Call 0.Method_Proc_47_72_12828B40 (arg_10, var_10C, 2, CVar(CLng(var_90)), "," & "'")
  loc_128254E:         var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar("'" & CStr(var_C8) & "'"), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)) & "'")))
  loc_1282553:         var_8C = CStr(var_1AC)
  loc_128257F:       End If
  loc_128257F:     End If
  loc_128259E:     Set var_DC = Me.GridSel
  loc_12825A4:     Call 0.Method_Proc_47_72_12828B40 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_12825D6:     If (Len(var_94 & CStr(var_E0.TextMatrix))) < &HFF) Then
  loc_12825F5:       Set var_DC = Me.GridSel
  loc_12825FB:       Call 0.Method_Proc_47_72_12828B40 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_1282603:       var_C8 = var_E0.TextMatrix)
  loc_1282634:       Set var_108 = Me.GridSel
  loc_128263A:       Call 0.Method_Proc_47_72_12828B40 (arg_10, var_10C, 1, CVar(CLng(var_90)), ",")
  loc_1282651:       var_17C = CVar(CVar(var_94) & CStr(var_10C.TextMatrix))) 'String
  loc_1282658:       var_16C = CVar(CStr(var_C8)) 'String
  loc_128266A:       var_18C = IIf((var_94 = vbNullString), var_16C, var_17C)
  loc_1282672:       var_1AC = (var_C8 + var_18C)
  loc_1282677:       var_94 = CStr(var_1AC)
  loc_1282699:     End If
  loc_128269D:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_12826BB:     Set var_DC = Me.GridSel
  loc_12826C1:     Call 0.Method_Proc_47_72_12828B40 (arg_10, var_E0, vbNullString, 0)
  loc_12826C9:     LateIdCallSt
  loc_12826DB:   Else
  loc_12826E2:     var_B8 = 0
  loc_12826EB:     VarIndexSt
  loc_12826EF:   End If
  loc_12826EF:   ' Referenced from: 1282357
  loc_12826F2: Next var_98 'Integer
  loc_12826FF: CRefVarAry
  loc_1282707: For var_1C0 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1C0 'Integer
  loc_128273F:   If CBool(arg_C(var_8E) <> 0) Then
  loc_1282746:     var_A8 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_1282764:     Set var_DC = Me.GridSel
  loc_128276A:     Call 0.Method_Proc_47_72_12828B40 (arg_10, var_E0, "ü", 0)
  loc_1282772:     LateIdCallSt
  loc_1282781:   End If
  loc_1282784: Next var_1C0 'Integer
  loc_1282791: If (var_8C = vbNullString) Then
  loc_1282794:   var_A8 = 0
  loc_128279D:   var_F0 = 1
  loc_12827B0:   Set var_DC = Me.GridSel
  loc_12827B6:   Call 0.Method_Proc_47_72_12828B40 (arg_10, var_E0)
  loc_12827BE:   var_C8 = var_E0.TextMatrix)
  loc_12827E6:   MsgBox(CVar("Select " & CStr(var_C8)), &H40, var_16C, var_17C, var_18C)
  loc_128280C:   Set var_DC = Me.GridSel
  loc_1282812:   Call 0.Method_Proc_47_72_12828B40 (arg_10, var_E0, var_C8)
  loc_1282831:   Proc_47_72_12828B4 = 0
  loc_1282837: End If
  loc_128283A: var_88 = var_8C
  loc_1282840: var_1C2 = arg_10
  loc_1282849: If (var_1C2 = 1) Then
  loc_1282852:   global_72 = var_94
  loc_1282859: Else
  loc_128285F:   If (var_1C2 = 2) Then
  loc_1282868:     global_76 = var_94
  loc_128286F:   Else
  loc_1282875:     If (var_1C2 = 3) Then
  loc_128287E:       global_80 = var_94
  loc_1282885:     Else
  loc_128288B:       If (var_1C2 = 4) Then
  loc_1282894:         global_84 = var_94
  loc_1282898:       End If
  loc_1282898:     End If
  loc_1282898:   End If
  loc_1282898: End If
  loc_1282898: Proc_47_72_12828B4 = var_1C2
  loc_128289E: ' Referenced from: 128231A
  loc_12828A6: Proc_6_60_E63754(0, GridSel.DispID_8001)
  loc_12828AB: Proc_47_72_12828B4 = var_F0
End Sub

Public Sub Proc_47_73_F0275C
  'Data Table: 4E1710
  Dim var_CC As Variant
  loc_F026A1: If (CLng(Me.FGrid.Row) = CLng(global_124)) Then
  loc_F026B2:   Proc_303_0_FBACC8("	")
  loc_F026BA:   Exit Sub
  loc_F026BB: End If
  loc_F026FA: For var_BC = CInt(CLng(Me.FGrid.Row)) To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_F02707:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F0272E:   If (CLng(Me.FGrid.RowHeight)) <> 0) Then
  loc_F02738:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F02747:     Me.FGrid.Row = var_CC
  loc_F0274F:     Exit For
  loc_F02752:   End If
  loc_F02755: Next var_BC 'Integer
  loc_F0275A: ' Referenced from: F0274F
  loc_F0275A: Exit Sub
End Sub

Public Sub Proc_47_74_12135DC(arg_C, arg_10) '12135DC
  'Data Table: 4E1710
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E8 As CheckBox
  loc_12130FF: var_86 = arg_C
  loc_1213108: If (var_86 = 1) Then
  loc_1213127:   Me.Recordset15.CursorLocation = 3
  loc_1213150:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_121315E:   CVarUnk
  loc_1213163:   VerifyVarObj
  loc_121316F:   Set var_8C = Me.GridSel
  loc_1213175:   Call 0.Method_Proc_47_74_12135DC0 (var_86, var_B0, New)
  loc_121317D:   LateIdStAd
  loc_121319F:   ReDim Preserve global_168(0 To 0)
  loc_12131B6:   global_168(0) = 0
  loc_12131B7: End If
  loc_12131BD: If (var_86 = 2) Then
  loc_12131DC:   Me.Recordset15.CursorLocation = 3
  loc_1213205:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_1213213:   CVarUnk
  loc_1213218:   VerifyVarObj
  loc_1213224:   Set var_8C = Me.GridSel
  loc_121322A:   Call 0.Method_Proc_47_74_12135DC0 (var_86, var_B0, New, 1, -1)
  loc_1213232:   LateIdStAd
  loc_1213254:   ReDim Preserve global_172(0 To 0)
  loc_121326B:   global_172(0) = 0
  loc_121326C: End If
  loc_1213272: If (var_86 = 3) Then
  loc_1213291:   Me.Recordset15.CursorLocation = 3
  loc_12132BA:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_12132C8:   CVarUnk
  loc_12132CD:   VerifyVarObj
  loc_12132D9:   Set var_8C = Me.GridSel
  loc_12132DF:   Call 0.Method_Proc_47_74_12135DC0 (var_86, var_B0, New, 1, -1)
  loc_12132E7:   LateIdStAd
  loc_1213309:   ReDim Preserve global_176(0 To 0)
  loc_1213320:   global_176(0) = 0
  loc_1213321: End If
  loc_1213327: If (var_86 = 4) Then
  loc_1213346:   Me.Recordset15.CursorLocation = 3
  loc_121336F:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_121337D:   CVarUnk
  loc_1213382:   VerifyVarObj
  loc_121338E:   Set var_8C = Me.GridSel
  loc_1213394:   Call 0.Method_Proc_47_74_12135DC0 (var_86, var_B0, New, 1, -1, var_B0)
  loc_121339C:   LateIdStAd
  loc_12133BE:   ReDim Preserve global_180(0 To 0)
  loc_12133D5:   global_180(0) = 0
  loc_12133D6: End If
  loc_12133E4: Set var_8C = Me.GridSel
  loc_12133EA: Call 0.Method_Proc_47_74_12135DC0 (var_86, var_B0, True, var_B0, var_B0)
  loc_12133F2: var_B0.Visible = var_B0
  loc_121340D: Set var_8C = Me.GridSel
  loc_1213413: Call 0.Method_Proc_47_74_12135DC0 (var_86, var_B0, False)
  loc_121341B: var_B0.Enabled = 1
  loc_1213433: Set var_8C = Me.Check1
  loc_1213439: Call 0.Method_Proc_47_74_12135DC0 (var_86, var_B0, &HFF)
  loc_1213441: var_B0.Visible = True
  loc_1213460: Set var_8C = Me.GridSel
  loc_1213466: Call 0.Method_Proc_47_74_12135DC0 (var_86, var_B0)
  loc_121346E: var_B0.Width = CVar(CDbl(5200))
  loc_121347A: var_9C = 0
  loc_1213496: Set var_8C = Me.GridSel
  loc_121349C: Call 0.Method_Proc_47_74_12135DC0 (var_86, var_B0, &H258)
  loc_12134A4: LateIdCallSt
  loc_12134CF: Set var_8C = Me.GridSel
  loc_12134D5: Call 0.Method_Proc_47_74_12135DC0 (var_86, var_B0, 0, 2)
  loc_12134DD: LateIdCallSt
  loc_1213508: Set var_8C = Me.GridSel
  loc_121350E: Call 0.Method_Proc_47_74_12135DC0 (var_86, var_B0, &HFA0, 1)
  loc_1213516: LateIdCallSt
  loc_1213534: Set var_8C = Me.Check1
  loc_121353A: Call 0.Method_Proc_47_74_12135DC0 (var_86, var_B0, CDbl(580), var_B0)
  loc_1213542: var_B0.Width = var_B0
  loc_121354E: var_9C = 0
  loc_1213561: Set var_8C = Me.GridSel
  loc_1213567: Call 0.Method_Proc_47_74_12135DC0 (var_86, var_B0, var_9C)
  loc_121358D: Set var_E4 = Me.Check1
  loc_1213593: Call 0.Method_Proc_47_74_12135DC0 (var_86, var_E8, CDbl((CLng(var_B0.RowHeight)) + &H14)))
  loc_121359B: var_E8.Height = var_B0
  loc_12135BE: Set var_8C = Me.Check1
  loc_12135C4: Call 0.Method_Proc_47_74_12135DC0 (var_86, var_B0, CInt(1))
  loc_12135CC: var_B0.Value = var_9C
  loc_12135D8: Exit Sub
End Sub

Public Sub Proc_47_75_13355B8
  'Data Table: 4E1710
  Dim var_AC As Variant
  Dim var_CC As Long
  Dim var_EC As String
  Dim var_10C As Variant
  loc_1334E12: var_98 = global_52
  loc_1334E1D: If (var_98 = "RoomStatus") Then
  loc_1334E24:   Set var_9C = Me.FGrid
  loc_1334E2A:   var_AC = CVar(CLng(0)) 'Long
  loc_1334E2F:   var_CC = 0
  loc_1334E38:   var_EC = "For Date"
  loc_1334E41:   LateIdCallSt
  loc_1334E4C:   var_AC = CVar(CLng(0)) 'Long
  loc_1334E51:   var_CC = &H10E
  loc_1334E5D:   LateIdCallSt
  loc_1334E68:   var_AC = CVar(CLng(3)) 'Long
  loc_1334E6D:   var_CC = 0
  loc_1334E76:   var_EC = "Occupancy Status"
  loc_1334E7F:   LateIdCallSt
  loc_1334E8A:   var_AC = CVar(CLng(3)) 'Long
  loc_1334E8F:   var_CC = &H10E
  loc_1334E9B:   LateIdCallSt
  loc_1334EA6:   var_AC = CVar(CLng(0)) 'Long
  loc_1334EAB:   var_CC = 1
  loc_1334EB9:   var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1334EC0:   LateIdCallSt
  loc_1334ECE:   var_AC = CVar(CLng(3)) 'Long
  loc_1334ED3:   var_CC = 1
  loc_1334EDC:   var_EC = "ALL"
  loc_1334EE5:   LateIdCallSt
  loc_1334EEF:   Set var_9C = Nothing 
  loc_1334F13:   Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1334F22:   global_124 = CInt(3)
  loc_1334F2D:   global_128 = 1
  loc_1334F3F:   Call Proc_47_74_12135DC(1, "Select '' as O,Name AS Name, Code As Code From Depart where RestType='House Keeping' Order by Name")
  loc_1334F47: Else
  loc_1334F4F:   If (var_98 = "ComplaintList") Then
  loc_1334F56:     Set var_118 = Me.FGrid
  loc_1334F5C:     var_AC = CVar(CLng(0)) 'Long
  loc_1334F61:     var_CC = 0
  loc_1334F6A:     var_EC = "Up To Date"
  loc_1334F73:     LateIdCallSt
  loc_1334F7E:     var_AC = CVar(CLng(0)) 'Long
  loc_1334F83:     var_CC = &H10E
  loc_1334F8F:     LateIdCallSt
  loc_1334F9A:     var_AC = CVar(CLng(2)) 'Long
  loc_1334F9F:     var_CC = 0
  loc_1334FA8:     var_EC = "For Status"
  loc_1334FB1:     LateIdCallSt
  loc_1334FBC:     var_AC = CVar(CLng(2)) 'Long
  loc_1334FC1:     var_CC = &H10E
  loc_1334FCD:     LateIdCallSt
  loc_1334FD8:     var_AC = CVar(CLng(0)) 'Long
  loc_1334FDD:     var_CC = 1
  loc_1334FEB:     var_10C = CVar(CStr(MemVar_1F950F4)) 'String
  loc_1334FF2:     LateIdCallSt
  loc_1335000:     var_AC = CVar(CLng(2)) 'Long
  loc_1335005:     var_CC = 1
  loc_133500E:     var_EC = "ALL"
  loc_1335017:     LateIdCallSt
  loc_1335021:     Set var_118 = Nothing 
  loc_1335045:     Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1335054:     global_124 = CInt(2)
  loc_133505F:     global_128 = 1
  loc_1335071:     Call Proc_47_74_12135DC(1, "Select '' as O,Category As Category,Code As Code From ComplaintCategory Order By Category")
  loc_1335079:   Else
  loc_1335081:     If (var_98 = "IssueRegister") Then
  loc_1335088:       Set var_11C = Me.FGrid
  loc_133508E:       var_AC = CVar(CLng(0)) 'Long
  loc_1335093:       var_CC = 0
  loc_133509C:       var_EC = "From Date"
  loc_13350A5:       LateIdCallSt
  loc_13350B0:       var_AC = CVar(CLng(0)) 'Long
  loc_13350B5:       var_CC = &H10E
  loc_13350C1:       LateIdCallSt
  loc_13350CC:       var_AC = CVar(CLng(1)) 'Long
  loc_13350D1:       var_CC = 0
  loc_13350DA:       var_EC = "To Date"
  loc_13350E3:       LateIdCallSt
  loc_13350EE:       var_AC = CVar(CLng(1)) 'Long
  loc_13350F3:       var_CC = &H10E
  loc_13350FF:       LateIdCallSt
  loc_133510A:       var_AC = CVar(CLng(2)) 'Long
  loc_133510F:       var_CC = 0
  loc_1335118:       var_EC = "Type"
  loc_1335121:       LateIdCallSt
  loc_133512C:       var_AC = CVar(CLng(2)) 'Long
  loc_1335131:       var_CC = &H10E
  loc_133513D:       LateIdCallSt
  loc_1335148:       var_AC = CVar(CLng(0)) 'Long
  loc_133514D:       var_CC = 1
  loc_133515B:       var_10C = CVar(CStr(MemVar_1F950F4)) 'String
  loc_1335162:       LateIdCallSt
  loc_1335170:       var_AC = CVar(CLng(1)) 'Long
  loc_1335175:       var_CC = 1
  loc_1335183:       var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_133518A:       LateIdCallSt
  loc_1335198:       var_AC = CVar(CLng(2)) 'Long
  loc_133519D:       var_CC = 1
  loc_13351A6:       var_EC = "Issue"
  loc_13351AF:       LateIdCallSt
  loc_13351B9:       Set var_11C = Nothing 
  loc_13351DD:       Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_13351EC:       global_124 = CInt(2)
  loc_13351F7:       global_128 = 1
  loc_1335209:       Call Proc_47_74_12135DC(1, "Select '' as O,Name As RoomNo,Code As Code From RoomMast where Type in ('RO') Order By Name")
  loc_1335211:     Else
  loc_1335219:       If (var_98 = "StockRegister") Then
  loc_1335220:         Set var_120 = Me.FGrid
  loc_1335226:         var_AC = CVar(CLng(0)) 'Long
  loc_133522B:         var_CC = 0
  loc_1335234:         var_EC = "From Date"
  loc_133523D:         LateIdCallSt
  loc_1335248:         var_AC = CVar(CLng(0)) 'Long
  loc_133524D:         var_CC = &H10E
  loc_1335259:         LateIdCallSt
  loc_1335264:         var_AC = CVar(CLng(1)) 'Long
  loc_1335269:         var_CC = 0
  loc_1335272:         var_EC = "To Date"
  loc_133527B:         LateIdCallSt
  loc_1335286:         var_AC = CVar(CLng(1)) 'Long
  loc_133528B:         var_CC = &H10E
  loc_1335297:         LateIdCallSt
  loc_13352A2:         var_AC = CVar(CLng(2)) 'Long
  loc_13352A7:         var_CC = 0
  loc_13352B0:         var_EC = "ForType"
  loc_13352B9:         LateIdCallSt
  loc_13352C4:         var_AC = CVar(CLng(2)) 'Long
  loc_13352C9:         var_CC = &H10E
  loc_13352D5:         LateIdCallSt
  loc_13352E0:         var_AC = CVar(CLng(0)) 'Long
  loc_13352E5:         var_CC = 1
  loc_13352F3:         var_10C = CVar(CStr(MemVar_1F950F4)) 'String
  loc_13352FA:         LateIdCallSt
  loc_1335308:         var_AC = CVar(CLng(1)) 'Long
  loc_133530D:         var_CC = 1
  loc_133531B:         var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1335322:         LateIdCallSt
  loc_1335330:         var_AC = CVar(CLng(2)) 'Long
  loc_1335335:         var_CC = 1
  loc_133533E:         var_EC = "Room"
  loc_1335347:         LateIdCallSt
  loc_1335351:         Set var_120 = Nothing 
  loc_1335375:         Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1335384:         global_124 = CInt(2)
  loc_133538F:         global_128 = 2
  loc_1335396:         var_88 = "Select '' as O,Name As Item,Code As Code From ItemMast where Type Not in('Finish','Semi Finish') And ItemType='Store' Order By Name"
  loc_13353A1:         Call Proc_47_74_12135DC(1, var_88)
  loc_13353A9:         var_AC = CVar(CLng(2)) 'Long
  loc_13353AE:         var_CC = 1
  loc_13353DD:         If (CStr(Me.FGrid.TextMatrix)) = "Room") Then
  loc_13353EE:           Call Proc_47_74_12135DC(2, "Select '' as O,Name As RoomNo,Code As Code From RoomMast where Type in ('RO') Order By Name")
  loc_13353F6:         Else
  loc_1335404:           Call Proc_47_74_12135DC(2, "Select '' as O,Name As Department,Code As Code From Depart where RestType in ('House Keeping')  Order By Name")
  loc_1335409:         End If
  loc_133540C:       Else
  loc_1335414:         If (var_98 = "StockSumm") Then
  loc_133541B:           Set var_128 = Me.FGrid
  loc_1335421:           var_AC = CVar(CLng(0)) 'Long
  loc_1335426:           var_CC = 0
  loc_133542F:           var_EC = "From Date"
  loc_1335438:           LateIdCallSt
  loc_1335443:           var_AC = CVar(CLng(0)) 'Long
  loc_1335448:           var_CC = &H10E
  loc_1335454:           LateIdCallSt
  loc_133545F:           var_AC = CVar(CLng(1)) 'Long
  loc_1335464:           var_CC = 0
  loc_133546D:           var_EC = "To Date"
  loc_1335476:           LateIdCallSt
  loc_1335481:           var_AC = CVar(CLng(1)) 'Long
  loc_1335486:           var_CC = &H10E
  loc_1335492:           LateIdCallSt
  loc_133549D:           var_AC = CVar(CLng(2)) 'Long
  loc_13354A2:           var_CC = 0
  loc_13354AB:           var_EC = "ForType"
  loc_13354B4:           LateIdCallSt
  loc_13354BF:           var_AC = CVar(CLng(2)) 'Long
  loc_13354C4:           var_CC = &H10E
  loc_13354D0:           LateIdCallSt
  loc_13354DB:           var_AC = CVar(CLng(0)) 'Long
  loc_13354E0:           var_CC = 1
  loc_13354EE:           var_10C = CVar(CStr(MemVar_1F950F4)) 'String
  loc_13354F5:           LateIdCallSt
  loc_1335503:           var_AC = CVar(CLng(1)) 'Long
  loc_1335508:           var_CC = 1
  loc_1335516:           var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_133551D:           LateIdCallSt
  loc_133552B:           var_AC = CVar(CLng(2)) 'Long
  loc_1335530:           var_CC = 1
  loc_1335539:           var_EC = "Room"
  loc_1335542:           LateIdCallSt
  loc_133554C:           Set var_128 = Nothing 
  loc_1335570:           Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_133557F:           global_124 = CInt(2)
  loc_133558A:           global_128 = 2
  loc_1335591:           var_88 = "Select '' as O,Name As Item,Code As Code From ItemMast where Type Not in('Finish','Semi Finish') And ItemType='Store' Order By Name"
  loc_133559C:           Call Proc_47_74_12135DC(1, var_88)
  loc_13355AF:           Call Proc_47_74_12135DC(2, "Select '' as O,Name As RoomNo,Code As Code From RoomMast where Type in ('RO') Order By Name")
  loc_13355B4:         End If
  loc_13355B4:       End If
  loc_13355B4:     End If
  loc_13355B4:   End If
  loc_13355B4: End If
  loc_13355B4: Exit Sub
  loc_13355B5: ThisVCallI2
End Sub

Public Sub Proc_47_76_10615D8(arg_C, arg_10) '10615D8
  'Data Table: 4E1710
  Dim var_98 As Variant
  Dim var_B8 As Long
  Dim var_CC As MSHFlexGrid
  Dim var_86 As Integer
  loc_1061360: var_98 = CVar(CLng(arg_C)) 'Long
  loc_1061365: var_B8 = 1
  loc_1061394: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_10613B7:   MsgBox(CVar(arg_10 & " Should not be Blank."), &H40, "Validation Check", var_100, var_110)
  loc_10613CB:   Set var_CC = Me.FGrid
  loc_10613EF:   Me.FGrid.Row = CVar(CLng(arg_C))
  loc_106140A:   Me.FGrid.Col = 1
  loc_1061414:   var_86 = 0
  loc_106141A: Else
  loc_1061427:   If ((arg_C = 0) Or (arg_C = 1)) Then
  loc_106142E:     var_98 = CVar(CLng(arg_C)) 'Long
  loc_1061433:     var_B8 = 1
  loc_1061463:     If (CDate(CStr(Me.FGrid.TextMatrix))) < MemVar_1F950F4) Then
  loc_1061491:       MsgBox(CVar(arg_10 & " Should not be less than ") & CDate(MemVar_1F950F4), &H40, "Validation Check", var_110, var_120)
  loc_10614A7:       Set var_CC = Me.FGrid
  loc_10614CB:       Me.FGrid.Row = CVar(CLng(arg_C))
  loc_10614E6:       Me.FGrid.Col = 1
  loc_10614F0:       var_86 = 0
  loc_10614F6:     Else
  loc_10614FA:       var_98 = CVar(CLng(arg_C)) 'Long
  loc_10614FF:       var_B8 = 1
  loc_106152F:       If (CDate(CStr(Me.FGrid.TextMatrix))) > MemVar_1F950FC) Then
  loc_106155D:         MsgBox(CVar(arg_10 & " Should not be greater than ") & CDate(MemVar_1F950FC), &H40, "Validation Check", var_110, var_120)
  loc_1061573:         Set var_CC = Me.FGrid
  loc_1061597:         Me.FGrid.Row = CVar(CLng(arg_C))
  loc_10615B2:         Me.FGrid.Col = 1
  loc_10615BC:         var_86 = 0
  loc_10615C2:       Else
  loc_10615C4:         var_86 = &HFF
  loc_10615C7:       End If
  loc_10615C7:     End If
  loc_10615CA:   Else
  loc_10615CC:     var_86 = &HFF
  loc_10615CF:   End If
  loc_10615CF: End If
  loc_10615CF: Proc_47_76_10615D8 = var_86
End Sub

Public Sub Proc_47_77_E1B908
  'Data Table: 4E1710
  loc_E1B8F4: On Error Goto loc_E1B8F8
  loc_E1B8F7: Exit Sub
  loc_E1B8F8: ' Referenced from: E1B8F4
  loc_E1B900: Proc_6_60_E63754(0)
  loc_E1B905: Exit Sub
End Sub
