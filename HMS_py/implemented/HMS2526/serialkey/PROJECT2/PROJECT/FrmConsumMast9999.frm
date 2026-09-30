VERSION 5.00
Begin VB.Form FrmConsumMast9999
  Caption = "Open Item Consumption Master"
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
  ClientWidth = 9525
  ClientHeight = 6645
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9525
    Height = 450
    TabIndex = 19
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3225
    Top = 2175
    Width = 1425
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin DataGrid DGFinish
    Left = 7560
    Top = 5100
    Width = 5850
    Height = 2400
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3225
    Top = 1860
    Width = 1425
    Height = 285
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 6
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3225
    Top = 1545
    Width = 1425
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 11
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
  Begin DataGrid DGItem
    Left = 8505
    Top = 4455
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3225
    Top = 1230
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
    ForeColor = &HC00000&
    Left = 9840
    Top = 1980
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 150
      Top = 45
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 10
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 735
    Top = 2775
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 630
    Top = 2535
    Width = 9645
    Height = 4275
    TabIndex = 4
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5415
    Top = 7890
    Width = 2790
    Height = 285
    TabIndex = 18
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
    Left = 2040
    Top = 7890
    Width = 2880
    Height = 255
    TabIndex = 17
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
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 16
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
  Begin Label LblOutlet
    Caption = "Outlet"
    BackColor = &HFFC0C0&
    ForeColor = &H80&
    Left = 6795
    Top = 1245
    Width = 4380
    Height = 270
    TabIndex = 15
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "App Date"
    Index = 3
    ForeColor = &HC00000&
    Left = 1545
    Top = 2175
    Width = 870
    Height = 240
    TabIndex = 14
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
    ForeColor = &H80&
    Left = 4710
    Top = 2205
    Width = 60
    Height = 270
    TabIndex = 13
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Unit"
    Index = 2
    ForeColor = &HC00000&
    Left = 1545
    Top = 1860
    Width = 360
    Height = 195
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Finish Item Qty"
    Index = 1
    ForeColor = &HC00000&
    Left = 1545
    Top = 1545
    Width = 1425
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
  Begin Label LblName
    Caption = "Finish Item Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1545
    Top = 1230
    Width = 1665
    Height = 240
    TabIndex = 6
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

Attribute VB_Name = "FrmConsumMast9999"

Private global_64 As Integer
Private global_66 As Integer
Private MasterFormExit As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '10E2838
  'Data Table: 4AF608
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_10E2534: Call Proc_132_52_E85C80()
  loc_10E254C: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10E2567: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E2570: Set var_BC = Me.FGrid
  loc_10E25A6: Set var_104 = Me.TxtGrid
  loc_10E25AC: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_10E25B4: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_10E25E5: var_110 = CLng(Me.FGrid.Col)
  loc_10E25F5: If (var_110 = CLng(2)) Then
  loc_10E2607:   Set var_A8 = Me.TxtGrid
  loc_10E260D:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H23)
  loc_10E2615:   var_BC.MaxLength = var_110
  loc_10E2662:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10E2665:     Exit Sub
  loc_10E2666:   End If
  loc_10E2679:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E2681:   var_DC = CVar(CLng(2)) 'Long
  loc_10E26B4:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_10E26BD:     Me.MoveFirst
  loc_10E26D5:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E26DD:     var_DC = CVar(CLng(1)) 'Long
  loc_10E26E6:     Set var_BC = Me.FGrid
  loc_10E26EC:     var_CC = var_BC.TextMatrix)
  loc_10E2721:     Me.Find "Code ='" & CStr(var_CC) & "'", 0, 1
  loc_10E2751:     If (Me.EOF = &HFF) Then
  loc_10E275A:       Me.MoveFirst
  loc_10E275F:     End If
  loc_10E275F:   End If
  loc_10E2762: Else
  loc_10E2769:   If (var_110 = CLng(3)) Then
  loc_10E277B:     Set var_A8 = Me.TxtGrid
  loc_10E2781:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_130, var_CC)
  loc_10E2789:     var_BC.MaxLength = var_DC
  loc_10E2798:   Else
  loc_10E279F:     If (var_110 = CLng(4)) Then
  loc_10E27B1:       Set var_A8 = Me.TxtGrid
  loc_10E27B7:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H19, var_94)
  loc_10E27BF:       var_BC.MaxLength = var_DC
  loc_10E27CE:     Else
  loc_10E27D5:       If (var_110 = CLng(5)) Then
  loc_10E27E7:         Set var_A8 = Me.TxtGrid
  loc_10E27ED:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB)
  loc_10E27F5:         var_BC.MaxLength = var_94
  loc_10E2804:       Else
  loc_10E280B:         If (var_110 = CLng(7)) Then
  loc_10E281D:           Set var_A8 = Me.TxtGrid
  loc_10E2823:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_10E282B:           var_BC.MaxLength = &HB
  loc_10E2837:         End If
  loc_10E2837:       End If
  loc_10E2837:     End If
  loc_10E2837:   End If
  loc_10E2837: End If
  loc_10E2837: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11814F4
  'Data Table: 4AF608
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C0 As Variant
  Dim var_94 As DataGrid
  loc_1181118: On Error Goto loc_11814EC
  loc_1181125: If (CLng(Shift) = &H1B) Then
  loc_1181135:   Set var_88 = Me.TxtGrid
  loc_118113B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1181155:   Set var_94 = Me.TxtGrid
  loc_118115B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_1181163:   var_98.Text = var_8C.Tag
  loc_118117F:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1181184:   Call Proc_132_52_E85C80(arg_14)
  loc_118118D:   Set var_88 = Me.FGrid
  loc_11811AA:   Set var_88 = Me.TxtGrid
  loc_11811B0:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_11811B8:   var_8C.Visible = False
  loc_11811C4:   Exit Sub
  loc_11811C5: End If
  loc_11811E8: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_11811F7:   Set var_88 = Me.TxtGrid
  loc_11811FD:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B0)
  loc_1181205:   var_AC = var_8C.Left
  loc_118121C:   Me.DGItem.Left = CVar(var_B0)
  loc_1181236:   Set var_94 = Me.TxtGrid
  loc_118123C:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_1181255:   Set var_88 = Me.TxtGrid
  loc_118125B:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_118126F:   var_C0 = CVar((var_8C.Top + var_98.Height)) 'Single
  loc_118127E:   Me.DGItem.Top = CVar(var_8C.Top)
  loc_11812A8:   Set var_98 = Nothing
  loc_11812E1:   Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_76, Shift, &HFF)
  loc_11812FF:   If (CLng(Shift) = &HD) Then
  loc_1181308:     Call Proc_132_48_135CDA4(KeyCode, var_DA, 1, Nothing)
  loc_1181313:     If (var_DA = &HFF) Then
  loc_1181359:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 4)
  loc_1181369:     End If
  loc_1181369:   End If
  loc_118136C: Else
  loc_1181373:   If (var_AC = CLng(3)) Then
  loc_1181380:     If (CLng(Shift) = &HD) Then
  loc_1181389:       Call Proc_132_48_135CDA4(KeyCode, var_DA, 0, 3)
  loc_1181394:       If (var_DA = &HFF) Then
  loc_11813DA:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 7, 0)
  loc_11813EA:       End If
  loc_11813EA:     End If
  loc_11813ED:   Else
  loc_11813F4:     If (var_AC = CLng(5)) Then
  loc_1181401:       If (CLng(Shift) = &HD) Then
  loc_118140A:         Call Proc_132_48_135CDA4(KeyCode, var_DA, 5, 0)
  loc_1181415:         If (var_DA = &HFF) Then
  loc_118145B:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 7, 0)
  loc_118146B:         End If
  loc_118146B:       End If
  loc_118146E:     Else
  loc_1181475:       If (var_AC = CLng(7)) Then
  loc_1181482:         If (CLng(Shift) = &HD) Then
  loc_118148B:           Call Proc_132_48_135CDA4(KeyCode, var_DA, 7, 0)
  loc_1181496:           If (var_DA = &HFF) Then
  loc_11814DC:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 7, 0)
  loc_11814EC:           End If
  loc_11814EC:         End If
  loc_11814EC:       End If
  loc_11814EC:       ' Referenced from: 1181118
  loc_11814EC:     End If
  loc_11814EC:   End If
  loc_11814EC: End If
  loc_11814EC: Proc_6_60_E63754(0, 0, 0)
  loc_11814F1: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F5F9D4
  'Data Table: 4AF608
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F5F8AF: Proc_6_58_E06050(arg_10)
  loc_F5F8C0: If (KeyAscii = 0) Then
  loc_F5F8D6:   var_A0 = CLng(Me.FGrid.Col)
  loc_F5F8E6:   If (var_A0 = CLng(2)) Then
  loc_F5F905:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F5F90C:       Set var_AC = Me.TxtGrid
  loc_F5F917:       var_A4 = "Name"
  loc_F5F932:       Proc_6_89_1470B00(var_AC, KeyAscii, global_76, arg_10)
  loc_F5F941:     End If
  loc_F5F944:   Else
  loc_F5F94B:     If Not (var_A0 = CLng(3)) Then
  loc_F5F955:       If (var_A0 = CLng(5)) Then
  loc_F5F958:       End If
  loc_F5F962:       Set var_8C = Me.TxtGrid
  loc_F5F968:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F5F983:       Proc_6_42_129B55C(var_AC, arg_10, 7, 4)
  loc_F5F992:     Else
  loc_F5F999:       If (var_A0 = CLng(7)) Then
  loc_F5F9A6:         Set var_8C = Me.TxtGrid
  loc_F5F9AC:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F5F9C7:         Proc_6_42_129B55C(var_AC, arg_10, 2)
  loc_F5F9D3:       End If
  loc_F5F9D3:     End If
  loc_F5F9D3:   End If
  loc_F5F9D3: End If
  loc_F5F9D3: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EC3E44
  'Data Table: 4AF608
  loc_EC3DA4: On Error Goto loc_EC3E3D
  loc_EC3DCA: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_EC3DF0:   If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_EC3DFE:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_EC3E12:     var_A4 = "Name"
  loc_EC3E2D:     Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_EC3E3C:   End If
  loc_EC3E3C: End If
  loc_EC3E3C: Exit Sub
  loc_EC3E3D: ' Referenced from: EC3DA4
  loc_EC3E3D: Proc_6_60_E63754(var_A4, &HFF)
  loc_EC3E42: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E24104
  'Data Table: 4AF608
  Dim arg_10 As Integer
  loc_E240EC: If (Cancel = 0) Then
  loc_E240F5:   Call Proc_132_48_135CDA4(Cancel, var_88)
  loc_E240FE:   arg_10 = Not(var_88)
  loc_E24101: End If
  loc_E24101: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 'FC0C7C
  'Data Table: 4AF608
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FC0AE7: Me.DGItem.Visible = False
  loc_FC0B06: If (Me.RecordCount > 0) Then
  loc_FC0B43:   Set var_B4 = Me.TxtGrid
  loc_FC0B49:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_FC0B51:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FC0B7A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC0B82:   var_EC = CVar(CLng(1)) 'Long
  loc_FC0BB5:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_FC0BBD:   Set var_B8 = Me.FGrid
  loc_FC0BC3:   LateIdCallSt
  loc_FC0BF2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC0BFA:   var_EC = CVar(CLng(2)) 'Long
  loc_FC0C1C:   var_B0 = Me.Fields.Item("Name")
  loc_FC0C2D:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FC0C35:   Set var_B8 = Me.FGrid
  loc_FC0C3B:   LateIdCallSt
  loc_FC0C57: End If
  loc_FC0C60: Set var_A8 = Me.TxtGrid
  loc_FC0C66: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8, var_11C, var_EC)
  loc_FC0C6E: var_B0.SetFocus
  loc_FC0C7A: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E516A4
  'Data Table: 4AF608
  loc_E5167E: Set var_88 = Me.Txt
  loc_E51684: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E51692: Proc_6_74_E23240(var_8C)
  loc_E5169E: Call Proc_132_52_E85C80(var_8C)
  loc_E516A3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F84534
  'Data Table: 4AF608
  Dim var_8C As DataGrid
  loc_F843F6: If (CLng(Shift) = &H1B) Then
  loc_F843F9:   Call Proc_132_52_E85C80()
  loc_F843FE:   Exit Sub
  loc_F843FF: End If
  loc_F8440D: If (KeyCode = CInt(0)) Then
  loc_F84428:   Set var_9C = Nothing
  loc_F84433:   Set var_98 = Nothing
  loc_F84461:   Proc_6_69_134A630(Me.DGFinish, Me.Txt, KeyCode, global_72, Shift, 0)
  loc_F84475: End If
  loc_F84491: If (CBool(Me.DGFinish.Visible) = 0) Then
  loc_F844A9:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F844AC:   End If
  loc_F844C1:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F844CA:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_F844CF:   End If
  loc_F844D9:   If (CLng(Shift) = &H26) Then
  loc_F844E0:     Set var_8C = Me.TopCtrl1
  loc_F844E6:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_F844FF:     If (CStr(0) = "Add") Then
  loc_F8450A:       If (KeyCode <> CInt(0)) Then
  loc_F84513:         Proc_6_76_E533C8(Shift, arg_14)
  loc_F84518:       End If
  loc_F8451B:     Else
  loc_F84523:       If (KeyCode <> CInt(1)) Then
  loc_F8452C:         Proc_6_76_E533C8(Shift, arg_14)
  loc_F84531:       End If
  loc_F84531:     End If
  loc_F84531:   End If
  loc_F84531: End If
  loc_F84531: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EF58AC
  'Data Table: 4AF608
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_EF57E6: Proc_6_133_E7FB08(var_94)
  loc_EF57EF: arg_10 = CInt(var_94)
  loc_EF57F8: Proc_6_58_E06050(arg_10, arg_10)
  loc_EF5800: var_96 = KeyAscii
  loc_EF580B: If (var_96 = CInt(0)) Then
  loc_EF582A:   If (CBool(Me.DGFinish.Visible) = &HFF) Then
  loc_EF5831:     Set var_A8 = Me.Txt
  loc_EF583C:     var_A0 = "Name"
  loc_EF5857:     Proc_6_89_1470B00(var_A8, KeyAscii, global_72, arg_10)
  loc_EF5866:   End If
  loc_EF5869: Else
  loc_EF5871:   If (var_96 = CInt(1)) Then
  loc_EF587E:     Set var_9C = Me.Txt
  loc_EF5884:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_EF589F:     Proc_6_42_129B55C(var_A8, arg_10, 7, 4)
  loc_EF58AB:   End If
  loc_EF58AB: End If
  loc_EF58AB: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E0043C
  'Data Table: 4AF608
  Dim var_86 As Integer
  loc_E00437: var_86 = KeyCode
  loc_E0043A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4FAFC
  'Data Table: 4AF608
  loc_E4FADA: Set var_88 = Me.Txt
  loc_E4FAE0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4FAEE: Proc_6_73_E23294(var_8C)
  loc_E4FAFA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10BF678
  'Data Table: 4AF608
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim arg_10 As Integer
  Dim var_AC As Variant
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_B4 As TextBox
  Dim var_B0 As Label
  Dim var_FC As TextBox
  loc_10BF3A7: var_86 = Cancel
  loc_10BF3B2: If (var_86 = CInt(0)) Then
  loc_10BF3D4:   Set var_8C = Me.Txt
  loc_10BF3DA:   Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_94, "Name='")
  loc_10BF3E2:   0 = var_90.Text
  loc_10BF3FB:   Me.Find 1 & var_94 & "'", var_AC, var_86
  loc_10BF41A:   Set var_8C = Me.Txt
  loc_10BF420:   Call 0.Method_Txt_Validate0 (Cancel)
  loc_10BF449:   If (Proc_6_27_EA61EC(var_90, "Name") = 0) Then
  loc_10BF456:     Set var_8C = Me.Txt
  loc_10BF45C:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10BF464:     var_90.SetFocus
  loc_10BF472:     arg_10 = &HFF
  loc_10BF475:     Exit Sub
  loc_10BF476:   End If
  loc_10BF4B2:   Set var_B0 = Me.Txt
  loc_10BF4B8:   Call 0.Method_Txt_Validate0 (CInt(2), var_B4, CStr(Me.Fields.Item("Unit").Value))
  loc_10BF4C0:   var_B4.Text = arg_10
  loc_10BF511:   Me.LblOutlet.Caption = CStr(Me.Fields.Item("RestName").Value)
  loc_10BF542:   var_90 = Me.Fields.Item("RestCode")
  loc_10BF560:   Me.LblOutlet.Tag = CStr(var_90.Value)
  loc_10BF577:   Call Proc_132_46_FE8D18(var_C6)
  loc_10BF57F: Else
  loc_10BF587:   If (var_86 = CInt(1)) Then
  loc_10BF594:     Set var_8C = Me.Txt
  loc_10BF59A:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10BF5D4:     Set var_B0 = Me.Txt
  loc_10BF5DA:     Call 0.Method_Txt_Validate0 (Cancel, var_B4, CStr(Format(CVar(var_90), "0.0000")))
  loc_10BF5E2:     var_B4.Text = 1
  loc_10BF60E:     Me.FGrid.Col = CVar(CLng(2))
  loc_10BF619:   Else
  loc_10BF621:     If (var_86 = CInt(3)) Then
  loc_10BF62E:       Set var_8C = Me.Txt
  loc_10BF634:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10BF654:       Set var_B4 = Me.Txt
  loc_10BF65A:       Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_10BF662:       var_FC.Text = Proc_6_33_15125B8(var_90, 1)
  loc_10BF675:     End If
  loc_10BF675:   End If
  loc_10BF675: End If
  loc_10BF675: Exit Sub
End Sub

Private Sub DGFinish_UnknownEvent_9 'FCCD78
  'Data Table: 4AF608
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As Label
  loc_FCCBCF: Me.DGFinish.Visible = False
  loc_FCCBEE: If (Me.RecordCount > 0) Then
  loc_FCCC2D:   Set var_B4 = Me.Txt
  loc_FCCC33:   Call 0.Method_DGFinish_UnknownEvent_90 (CInt(0), var_B8)
  loc_FCCC3B:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FCCC8D:   Set var_B4 = Me.Txt
  loc_FCCC93:   Call 0.Method_DGFinish_UnknownEvent_90 (CInt(0), var_B8)
  loc_FCCC9B:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FCCCEC:   Me.LblOutlet.Caption = CStr(Me.Fields.Item("RestName").Value)
  loc_FCCD1D:   var_B0 = Me.Fields.Item("RestCode")
  loc_FCCD3B:   Me.LblOutlet.Tag = CStr(var_B0.Value)
  loc_FCCD4F: End If
  loc_FCCD5A: Set var_A8 = Me.Txt
  loc_FCCD60: Call 0.Method_DGFinish_UnknownEvent_90 (CInt(0))
  loc_FCCD68: var_B0.SetFocus
  loc_FCCD74: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5EFC4
  'Data Table: 4AF608
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5EF8F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5EFA2: Set var_A8 = Me.TxtGrid
  loc_E5EFA8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5EFB0: var_AC.Visible = False
  loc_E5EFBC: Call Proc_132_52_E85C80()
  loc_E5EFC1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6AE18
  'Data Table: 4AF608
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6ADD4: Set var_88 = Me.TxtGrid
  loc_E6ADDA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6ADF4: If (var_8C.Visible = 0) Then
  loc_E6AE0D:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E6AE15: End If
  loc_E6AE15: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E20990
  'Data Table: 4AF608
  loc_E20987: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E2098F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFEAA4
  'Data Table: 4AF608
  loc_DFEA9C: Call Proc_132_47_E42340()
  loc_DFEAA1: Exit Sub
  loc_DFEAA2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10C0344
  'Data Table: 4AF608
  Dim var_9C As String
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_10C0068: Set var_88 = Me.TopCtrl1
  loc_10C006E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10C00B3: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10C00BC:   Call Form_KeyDown(Cancel, arg_10)
  loc_10C00C1: End If
  loc_10C00C5: Set var_88 = Me.TopCtrl1
  loc_10C00CB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10C00E4: If (CStr() = "Browse") Then
  loc_10C00E7:   Exit Sub
  loc_10C00E8: End If
  loc_10C0105: var_C4 = Me.FGrid.Rows
  loc_10C015C: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_10C0172:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10C0182:   var_9C = "+{Tab}"
  loc_10C0188:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_10C0192:   Cancel = 0
  loc_10C0198: Else
  loc_10C01EF:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10C0205:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10C0244:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_10C0247:       Call TopCtrl1_UnknownEvent_16()
  loc_10C024C:     End If
  loc_10C024C:   End If
  loc_10C024C: End If
  loc_10C0252: global_64 = Cancel
  loc_10C0278: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10C029C: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10C02B2:   var_11C = CLng(Me.FGrid.Col)
  loc_10C02C2:   If Not (var_11C = CLng(2)) Then
  loc_10C02CC:     If Not (var_11C = CLng(1)) Then
  loc_10C02D6:       If Not (var_11C = CLng(3)) Then
  loc_10C02E0:         If (var_11C = CLng(4)) Then
  loc_10C02E3:         End If
  loc_10C02E3:       End If
  loc_10C02E3:     End If
  loc_10C02F6:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C030E:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10C0313:     var_12C = vbNullString
  loc_10C031D:     Set var_B4 = Me.FGrid
  loc_10C0323:     LateIdCallSt
  loc_10C033B:   End If
  loc_10C033B: End If
  loc_10C033D: Cancel = 0
  loc_10C0340: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0C5E0
  'Data Table: 4AF608
  loc_E0C5D1: Call FGrid_UnknownEvent_C()
  loc_E0C5DB: global_66 = 0
  loc_E0C5DE: Exit Sub
  loc_E0C5DF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '12890C4
  'Data Table: 4AF608
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1288AF4: Set var_88 = Me.TopCtrl1
  loc_1288AFA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1288B13: If (CStr() = "Browse") Then
  loc_1288B16:   Exit Sub
  loc_1288B17: End If
  loc_1288B2A: var_A0 = CLng(Me.FGrid.Col)
  loc_1288B3A: If (var_A0 = CLng(2)) Then
  loc_1288B41:   Set var_C4 = Me.FGrid
  loc_1288B65:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1288B92:   Set var_B4 = var_C4
  loc_1288BA4:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1288BCC:   Set var_88 = Me.TxtGrid
  loc_1288BD2:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1288BDA:   0 = var_B4.Text
  loc_1288BF3:   If (Len(var_9C) <= 1) Then
  loc_1288C02:     Set var_88 = Me.TxtGrid
  loc_1288C08:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1288C10:     var_CA = var_B4.Text
  loc_1288C21:     Set var_B8 = Me.TxtGrid
  loc_1288C27:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1288C2F:     var_C4.Text = var_9C
  loc_1288C42:   End If
  loc_1288C4E:   Set var_88 = Me.TxtGrid
  loc_1288C54:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1288C6E:   Set var_B8 = Me.TxtGrid
  loc_1288C74:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1288C7C:   var_C4.SelStart = Len(var_B4.Text)
  loc_1288C92: Else
  loc_1288C99:   If (var_A0 = CLng(3)) Then
  loc_1288CA0:     Set var_C4 = Me.FGrid
  loc_1288CC4:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1288CF1:     Set var_B4 = var_C4
  loc_1288D03:     Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_1288D2B:     Set var_88 = Me.TxtGrid
  loc_1288D31:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1288D39:     0 = var_B4.Text
  loc_1288D52:     If (Len(var_9C) <= 1) Then
  loc_1288D61:       Set var_88 = Me.TxtGrid
  loc_1288D67:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1288D6F:       var_CA = var_B4.Text
  loc_1288D80:       Set var_B8 = Me.TxtGrid
  loc_1288D86:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1288D8E:       var_C4.Text = var_9C
  loc_1288DA1:     End If
  loc_1288DAD:     Set var_88 = Me.TxtGrid
  loc_1288DB3:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1288DCD:     Set var_B8 = Me.TxtGrid
  loc_1288DD3:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1288DDB:     var_C4.SelStart = Len(var_B4.Text)
  loc_1288DF1:   Else
  loc_1288DF8:     If (var_A0 = CLng(5)) Then
  loc_1288DFF:       Set var_C4 = Me.FGrid
  loc_1288E23:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1288E50:       Set var_B4 = var_C4
  loc_1288E62:       Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_1288E8A:       Set var_88 = Me.TxtGrid
  loc_1288E90:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1288E98:       0 = var_B4.Text
  loc_1288EB1:       If (Len(var_9C) <= 1) Then
  loc_1288EC0:         Set var_88 = Me.TxtGrid
  loc_1288EC6:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1288ECE:         var_CA = var_B4.Text
  loc_1288EDF:         Set var_B8 = Me.TxtGrid
  loc_1288EE5:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1288EED:         var_C4.Text = var_9C
  loc_1288F00:       End If
  loc_1288F0C:       Set var_88 = Me.TxtGrid
  loc_1288F12:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1288F2C:       Set var_B8 = Me.TxtGrid
  loc_1288F32:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1288F3A:       var_C4.SelStart = Len(var_B4.Text)
  loc_1288F50:     Else
  loc_1288F57:       If (var_A0 = CLng(7)) Then
  loc_1288F5E:         Set var_C4 = Me.FGrid
  loc_1288F82:         var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1288FAF:         Set var_B4 = var_C4
  loc_1288FC1:         Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_1288FE9:         Set var_88 = Me.TxtGrid
  loc_1288FEF:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1288FF7:         0 = var_B4.Text
  loc_1289010:         If (Len(var_9C) <= 1) Then
  loc_128901F:           Set var_88 = Me.TxtGrid
  loc_1289025:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_128902D:           var_CA = var_B4.Text
  loc_128903E:           Set var_B8 = Me.TxtGrid
  loc_1289044:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_128904C:           var_C4.Text = var_9C
  loc_128905F:         End If
  loc_128906B:         Set var_88 = Me.TxtGrid
  loc_1289071:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_128908B:         Set var_B8 = Me.TxtGrid
  loc_1289091:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1289099:         var_C4.SelStart = Len(var_B4.Text)
  loc_12890AC:       End If
  loc_12890AC:     End If
  loc_12890AC:   End If
  loc_12890AC: End If
  loc_12890B6: If (CLng(Cancel) <> &HD) Then
  loc_12890BE:   global_66 = &HFF
  loc_12890C1: End If
  loc_12890C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '102E27C
  'Data Table: 4AF608
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  loc_102E048: Set var_90 = Me.TopCtrl1
  loc_102E04E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_102E067: If (CStr() = "Browse") Then
  loc_102E06A:   Exit Sub
  loc_102E06B: End If
  loc_102E088: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_102E08B:   Exit Sub
  loc_102E08C: End If
  loc_102E09D: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_102E0BF:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_102E0F9:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_102E11B:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_102E131:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102E13A:         Set var_118 = Me.FGrid
  loc_102E155:       Else
  loc_102E168:         Me.FGrid.Rows = 1
  loc_102E185:         var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_102E18D:         Set var_118 = Me.FGrid
  loc_102E1BC:         Me.FGrid.FixedRows = 1
  loc_102E1C4:       End If
  loc_102E1E9:       For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_102E1F3:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_102E1FB:         var_E4 = CVar(CLng(0)) 'Long
  loc_102E205:         var_A0 = CVar(CStr(var_86)) 'String
  loc_102E20D:         Set var_90 = Me.FGrid
  loc_102E213:         LateIdCallSt
  loc_102E224:       Next var_11C 'Integer
  loc_102E229:     End If
  loc_102E22C:   Else
  loc_102E24D:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_102E25D:   End If
  loc_102E261:   Set var_90 = Me.FGrid
  loc_102E272: End If
  loc_102E277: Set var_8C = Nothing
  loc_102E27A: Exit Sub
  loc_102E27B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1FA90
  'Data Table: 4AF608
  loc_E1FA87: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1FA8F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1FAE0
  'Data Table: 4AF608
  loc_E1FAD7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1FADF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E42A4C
  'Data Table: 4AF608
  Dim var_8C As TextBox
  loc_E42A20: Call Proc_132_52_E85C80()
  loc_E42A30: Set var_88 = Me.TxtGrid
  loc_E42A36: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E42A3E: var_8C.Visible = False
  loc_E42A4A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED5BA4
  'Data Table: 4AF608
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_ED5AF0: On Error Goto loc_ED5B9D
  loc_ED5B00: Me.LblUser.Caption = vbNullString
  loc_ED5B15: Me.LblLDt.Caption = vbNullString
  loc_ED5B40: Call Proc_132_51_E80AB0(Proc_5_1_100EC1C("ADD", Me))
  loc_ED5B4B: Call Proc_132_49_F31BF8(global_68)
  loc_ED5B5D: Set var_88 = Me.Txt
  loc_ED5B63: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_ED5B6B: var_94.Enabled = True
  loc_ED5B82: Set var_88 = Me.Txt
  loc_ED5B88: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED5B90: var_94.SetFocus
  loc_ED5B9C: Exit Sub
  loc_ED5B9D: ' Referenced from: ED5AF0
  loc_ED5B9D: Proc_6_60_E63754(var_94)
  loc_ED5BA2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9C098
  'Data Table: 4AF608
  loc_E9C020: On Error Goto loc_E9C091
  loc_E9C05A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9C080:   Call Proc_132_51_E80AB0(Proc_5_1_100EC1C("INI", Me))
  loc_E9C08B:   Call Proc_132_50_1414890(global_68)
  loc_E9C090: End If
  loc_E9C090: Exit Sub
  loc_E9C091: ' Referenced from: E9C020
  loc_E9C091: Proc_6_60_E63754()
  loc_E9C096: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1150D64
  'Data Table: 4AF608
  Dim var_96 As Integer
  Dim unk_4AF624 As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_160 As String
  loc_1150A00: On Error Goto loc_1150D0A
  loc_1150A11: If (Proc_183_56_FE8B08(global_68) = &HFF) Then
  loc_1150A14:   Exit Sub
  loc_1150A15: End If
  loc_1150A4C: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_1150A51:   var_96 = 0
  loc_1150A5D:   unk_4AF624.BeginTrans var_11C
  loc_1150A64:   var_96 = &HFF
  loc_1150A78:   var_94 = Me.Bookmark 'Variant
  loc_1150AC4:   var_F8 = "Delete From BOM Where FinItem='" & Me.Fields.Item("FinItem").Value & "' And RestCode='" 
  loc_1150AED:   var_118 = Me.Fields.Item("RestCode").Value
  loc_1150B0C:   unk_4AF624.Execute CStr(var_F8 & var_118 & "'"), var_180, -1
  loc_1150B8B:   var_1BC = 0
  loc_1150B9E:   var_1B4 = 0
  loc_1150BA9:   var_1B0 = 0
  loc_1150BBC:   var_1A8 = 0
  loc_1150BC7:   var_1A4 = 0
  loc_1150BDA:   var_19C = 0
  loc_1150C15:   var_160 = "BOM"
  loc_1150C1E:   Proc_154_5_10E3BD4(MemVar_1F95044, var_160, "FinItem", &HC8, CStr(Me.Fields.Item("FinItem").Value), "RestCode", &HC8, CStr(Me.Fields.Item("RestCode").Value))
  loc_1150C54:   unk_4AF624.CommitTrans
  loc_1150C5B:   var_96 = 0
  loc_1150C69:   Me.Requery -1
  loc_1150C79:   Me.Requery -1
  loc_1150C89:   Me.Requery -1
  loc_1150CA9:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1150CB6:     Me.Bookmark = var_94
  loc_1150CBE:   Else
  loc_1150CD2:     If (Me.EOF = 0) Then
  loc_1150CDB:       Me.MoveLast
  loc_1150CE0:     End If
  loc_1150CE0:   End If
  loc_1150CE0:   Call Proc_132_50_1414890(var_96, var_19C, 0, var_1A4, var_1A8)
  loc_1150D01:   Proc_5_0_1107AD0(&HFF, Me, global_68, 0)
  loc_1150D09: End If
  loc_1150D09: Exit Sub
  loc_1150D0A: ' Referenced from: 1150A00
  loc_1150D10: If (var_96 = &HFF) Then
  loc_1150D19:   unk_4AF624.RollbackTrans
  loc_1150D1E: End If
  loc_1150D26: Set var_120 = Err()
  loc_1150D2C: Call 0.Method_arg_2C (var_160, 0, var_1B0)
  loc_1150D4D: MsgBox(CVar(var_160), &H30, " Deletion Error ", var_F8, var_118)
  loc_1150D60: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FC95BC
  'Data Table: 4AF608
  Dim var_88 As Label
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_FC9418: On Error Goto loc_FC9576
  loc_FC9428: Me.LblUser.Caption = vbNullString
  loc_FC943D: Me.LblLDt.Caption = vbNullString
  loc_FC9453: If (Proc_183_55_FE8490(global_68) = &HFF) Then
  loc_FC9456:   Exit Sub
  loc_FC9457: End If
  loc_FC946E: If (Me.RecordCount > 0) Then
  loc_FC9494:   Call Proc_132_51_E80AB0(Proc_5_1_100EC1C("EDIT", Me))
  loc_FC94AD:   Set var_88 = Me.Txt
  loc_FC94B3:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FC94BB:   var_90 = var_98.Tag
  loc_FC94DF:   global_80 = var_90 & Me.LblOutlet.Tag
  loc_FC9502:   Set var_88 = Me.Txt
  loc_FC9508:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FC9510:   var_98.Enabled = False
  loc_FC9527:   Set var_88 = Me.Txt
  loc_FC952D:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_FC9535:   var_98.SetFocus
  loc_FC9544: Else
  loc_FC9565:   MsgBox("No Record To Edit.", &H40, "Information", var_104, var_124)
  loc_FC9575: End If
  loc_FC9575: Exit Sub
  loc_FC9576: ' Referenced from: FC9418
  loc_FC957E: Set var_88 = Err()
  loc_FC9584: Call 0.Method_arg_2C (var_90)
  loc_FC95A5: MsgBox(CVar(var_90), &H30, " Editing Error ", var_104, var_124)
  loc_FC95B8: Exit Sub
  loc_FC95B9: Get , ,  'get global_68 bytes
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16554
  'Data Table: 4AF608
  loc_E16549: Me.Global.Unload Me
  loc_E16551: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF0114
  'Data Table: 4AF608
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_110 As String
  Dim var_114 As String
  Dim MemVar_1F950E4 As String
  loc_EF0058: On Error Goto loc_EF010D
  loc_EF0072: If (Me.RecordCount <= 0) Then
  loc_EF007B:   var_B8 = "Information"
  loc_EF0096:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EF00A6:   Exit Sub
  loc_EF00A7: End If
  loc_EF00B5: var_110 = "Select Distinct BOM.FinItem+BOM.RestCode As SearchCode,ItemMast.Name,FinQty,Case When BOM.RestCode='" & MemVar_1F95078 & "BANQ"
  loc_EF00BC: var_114 = var_110 & "' Then 'BANQUET' Else Depart.Name End Outlet FROM BOM Inner Join ItemMast on ItemMast.Code=BOM.FinItem And ItemMast.RestCode=BOM.RestCode Left Join Depart On Depart.Code=ItemMast.RestCode Where (BOM.LOGSITE_CODE='"
  loc_EF00CA: MemVar_1F950E4 = var_114 & MemVar_1F95078 & "' or BOM.LOGSITE_CODE='HO') AND ITEMMAST.DISPCODE=9999 Order by ItemMast.Name,Outlet"
  loc_EF00DF: MemVar_1F95120 = Me
  loc_EF00EC: Proc_6_126_F1C850("2500,1000,2500")
  loc_EF0107: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EF010C: Exit Sub
  loc_EF010D: ' Referenced from: EF0058
  loc_EF010D: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EF0112: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E317A8
  'Data Table: 4AF608
  loc_E31798: Proc_5_0_1107AD0(&HFF, Me)
  loc_E317A0: Call Proc_132_50_1414890(global_68)
  loc_E317A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E31748
  'Data Table: 4AF608
  loc_E31738: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31740: Call Proc_132_50_1414890(global_68)
  loc_E31745: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E31628
  'Data Table: 4AF608
  loc_E31618: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31620: Call Proc_132_50_1414890(global_68)
  loc_E31625: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E31568
  'Data Table: 4AF608
  loc_E31558: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31560: Call Proc_132_50_1414890(global_68)
  loc_E31565: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E242FC
  'Data Table: 4AF608
  Dim Me As Recordset15
  loc_E242E3: Me.Requery -1
  loc_E242F3: Me.Requery -1
  loc_E242F8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14B0024
  'Data Table: 4AF608
  Dim var_FC As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_DC As Variant
  Dim var_13C As Variant
  Dim var_15C As String
  Dim var_220 As Variant
  Dim var_B0 As Variant
  Dim var_A8 As Double
  Dim var_B8 As String
  Dim var_258 As Double
  Dim unk_4AF624 As Connection15
  Dim var_260 As String
  Dim var_268 As String
  Dim var_B4 As Label
  Dim var_270 As String
  Dim var_274 As TextBox
  Dim var_29C As TextBox
  Dim var_1B0 As Variant
  Dim var_7D0 As Double
  Dim var_2EC As TextBox
  Dim var_7D8 As Double
  Dim var_36C As Variant
  Dim var_38C As Variant
  Dim var_7E0 As Double
  Dim var_44C As String
  Dim var_7E8 As Double
  Dim var_454 As TextBox
  Dim var_7F0 As Double
  Dim var_7F8 As Double
  Dim var_4F8 As TextBox
  Dim var_800 As Double
  Dim var_68C As Variant
  Dim var_6AC As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_30C As Variant
  Dim var_55C As Variant
  Dim var_730 As Variant
  Dim var_264 As String
  Dim var_4FC As String
  Dim Me As Recordset15
  loc_14AF48C: On Error Goto loc_14AFFD2
  loc_14AF493: var_86 = CByte(0) 'Byte
  loc_14AF4A2: Set var_AC = Me.Txt
  loc_14AF4A8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_14AF4D1: If (Proc_183_19_E8E68C(var_B0, "Finish Name") = 0) Then
  loc_14AF4DB:   Call Txt_GotFocus(CInt(0))
  loc_14AF4E0:   Exit Sub
  loc_14AF4E1: End If
  loc_14AF4EC: Set var_AC = Me.Txt
  loc_14AF4F2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B0)
  loc_14AF51B: If (Proc_183_19_E8E68C(var_B0, "Finish Qty") = 0) Then
  loc_14AF525:   Call Txt_GotFocus(CInt(1))
  loc_14AF52A:   Exit Sub
  loc_14AF52B: End If
  loc_14AF536: Set var_AC = Me.Txt
  loc_14AF53C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B0)
  loc_14AF565: If (Proc_183_19_E8E68C(var_B0, "Applicable Date") = 0) Then
  loc_14AF56F:   Call Txt_GotFocus(CInt(3))
  loc_14AF574:   Exit Sub
  loc_14AF575: End If
  loc_14AF596: var_EC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14AF5A0: For var_11C = 1 To var_EC: var_9C = var_11C 'Variant
  loc_14AF5AB:   var_DC = CVar(CLng(var_9C)) 'Long
  loc_14AF5B3:   var_FC = CVar(CLng(2)) 'Long
  loc_14AF5EF:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_14AF617:     For var_170 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9E = var_170 'Integer
  loc_14AF625:       var_220 = (var_9E = CInt(3))
  loc_14AF62E:       var_DC = CVar(CLng(var_9C)) 'Long
  loc_14AF637:       var_FC = CVar(CLng(var_9E)) 'Long
  loc_14AF651:       var_13C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14AF65F:       var_15C = vbNullString
  loc_14AF680:       Set var_B0 = Me.FGrid
  loc_14AF6CB:       If CBool(CVar(CLng(var_9C)) And CVar(CLng(var_9E)) Or (Trim(CVar(CStr(var_B0.TextMatrix)))) = "0.00")) Then
  loc_14AF6D6:         If (var_9E = CInt(3)) Then
  loc_14AF6F2:           MsgBox("Item Qty is required", 0, var_13C, Trim(var_13C), var_16C)
  loc_14AF702:         End If
  loc_14AF716:         Me.FGrid.Row = CVar(CLng(var_9C))
  loc_14AF731:         Me.FGrid.Col = CVar(CLng(var_9E))
  loc_14AF73D:         Set var_AC = Me.FGrid
  loc_14AF761:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_14AF769:         Exit Sub
  loc_14AF76A:       End If
  loc_14AF76D:     Next var_170 'Integer
  loc_14AF772:   End If
  loc_14AF775: Next var_11C 'Variant
  loc_14AF77E: var_A8 = CDbl(0)
  loc_14AF7A2: var_EC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14AF7AC: For var_250 = 1 To var_EC: var_9C = var_250 'Variant
  loc_14AF7B7:   var_DC = CVar(CLng(var_9C)) 'Long
  loc_14AF7BF:   var_FC = CVar(CLng(6)) 'Long
  loc_14AF7EB:   var_A8 = (var_A8 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_14AF7FA: Next var_250 'Variant
  loc_14AF809: unk_4AF624.BeginTrans var_25C
  loc_14AF812: var_86 = CByte(1) 'Byte
  loc_14AF81A: Set var_AC = Me.TopCtrl1
  loc_14AF820: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14AF828: var_B8 = CStr()
  loc_14AF839: If (var_B8 = "Edit") Then
  loc_14AF85A:   Set var_AC = Me.Txt
  loc_14AF860:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_B8, "Delete From BOM Where FinItem='")
  loc_14AF868:   var_CC = var_B0.Tag
  loc_14AF871:   var_260 = -1 & var_B8
  loc_14AF878:   var_268 = var_260 & "' And RestCode='"
  loc_14AF888:   var_264 = Me.LblOutlet.Tag
  loc_14AF898:   var_270 = var_268 & var_264 & "'"
  loc_14AF8A1:   unk_4AF624.Execute var_270, var_274, 
  loc_14AF8C3: End If
  loc_14AF8E4: var_EC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14AF8EE: For var_294 = 1 To var_EC: var_9C = var_294 'Variant
  loc_14AF8F9:   var_DC = CVar(CLng(var_9C)) 'Long
  loc_14AF901:   var_FC = CVar(CLng(1)) 'Long
  loc_14AF93D:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_14AF94E:     Set var_AC = Me.Txt
  loc_14AF954:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_260)
  loc_14AF95C:     var_FC = var_B0.Tag
  loc_14AF964:     var_CC = CVar(var_260) 'String
  loc_14AF96A:     var_13C = Trim(var_CC)
  loc_14AF97D:     Set var_B4 = Me.Txt
  loc_14AF983:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_274, var_264)
  loc_14AF98B:     var_DC = var_274.Text
  loc_14AF998:     var_258 = Val(var_264)
  loc_14AF9A9:     Set var_298 = Me.Txt
  loc_14AF9AF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_29C, var_268)
  loc_14AF9FE:     var_1B0 = CVar(CLng(var_9C)) 'Long
  loc_14AFA28:     var_7D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AFA39:     Set var_2E8 = Me.Txt
  loc_14AFA3F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_2EC, var_270, var_7D0, CVar(CLng(3)))
  loc_14AFA47:     var_1B0 = var_2EC.Text
  loc_14AFA54:     var_7D8 = Val(var_270)
  loc_14AFA5C:     var_36C = CVar(CLng(var_9C)) 'Long
  loc_14AFA64:     var_38C = CVar(CLng(5)) 'Long
  loc_14AFA86:     var_7E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AFAB8:     var_7E8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AFAC9:     Set var_450 = Me.Txt
  loc_14AFACF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_454, var_458, var_7E8, CVar(CLng(7)), CVar(CLng(var_9C)), var_7E0)
  loc_14AFAD7:     var_38C = var_454.Text
  loc_14AFAE4:     var_7F0 = Val(var_458)
  loc_14AFB16:     var_7F8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AFB27:     Set var_4F4 = Me.Txt
  loc_14AFB2D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4F8, var_4FC, var_7F8, CVar(CLng(6)), CVar(CLng(var_9C)), var_7F0)
  loc_14AFB35:     var_36C = var_4F8.Text
  loc_14AFB42:     var_800 = Val(var_4FC)
  loc_14AFB53:     Proc_6_7_F26918(var_59C, Date, var_800, var_7D8)
  loc_14AFB63:     Set var_5D0 = Me.Txt
  loc_14AFB69:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_5D4, CVar(CLng(1)))
  loc_14AFB78:     Proc_6_39_E7D3A0(var_5F4, CVar(var_5D4), CVar(CLng(var_9C)))
  loc_14AFB88:     Set var_628 = Me.Txt
  loc_14AFB8E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_62C)
  loc_14AFB9D:     Proc_6_7_F26918(var_64C, CVar(var_62C))
  loc_14AFBA7:     var_68C = CVar(CLng(var_9C)) 'Long
  loc_14AFBAF:     var_6AC = CVar(CLng(4)) 'Long
  loc_14AFBF0:     var_B8 = "Insert Into BOM(Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,Cost,Waste,Total,U_Name,U_EntDt,U_AE,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode) Values ('" & MemVar_1F95070
  loc_14AFBF7:     var_14C = CVar(var_B8 & "','") 'String
  loc_14AFBFD:     var_16C = var_14C & var_13C 
  loc_14AFC01:     var_DC = "',"
  loc_14AFC3D:     var_30C = var_16C & var_DC & CVar((var_29C.Text / Val(var_268))) & ",'" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar((var_7D0 / var_7D8)) 
  loc_14AFCA4:     var_55C = var_30C & "," & var_9C & "," & CVar(var_7E0) & "," & CVar((var_7E8 / var_7F0)) & "," & CVar((var_7F8 / var_800)) & ",'" & CVar(MemVar_1F950C8) 
  loc_14AFCFB:     var_730 = var_55C & "'," & var_59C & ",'A'," & var_5F4 & "," & var_64C & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(MemVar_1F95078) 
  loc_14AFD25:     unk_4AF624.Execute CStr(var_730 & "','" & CVar(Me.LblOutlet.Tag) & "')"), var_7BC, -1
  loc_14AFDD9:   End If
  loc_14AFDDC: Next var_294 'Variant
  loc_14AFDF0: Set var_AC = Me.Txt
  loc_14AFDF6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0)
  loc_14AFE2A: var_B8 = CStr(var_A8)
  loc_14AFE4F: var_44C = "Update ItemMast Set IssueUnit=Unit,convRatio=1,PurchRate=" & var_B8 & ",LPurRate=" & CStr(var_A8) & " where Code='" & var_B0.Tag
  loc_14AFE6D: unk_4AF624.Execute var_44C & "' And RestCode='" & Me.LblOutlet.Tag & "'", var_CC, -1
  loc_14AFEA1: unk_4AF624.CommitTrans
  loc_14AFEAA: var_86 = CByte(0) 'Byte
  loc_14AFEB9: Me.Requery -1
  loc_14AFEC9: Me.Requery -1
  loc_14AFED2: Set var_AC = Me.DGItem
  loc_14AFEE7: Set var_AC = Me.DGFinish
  loc_14AFF17: Set var_AC = Me.Txt
  loc_14AFF1D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_B8, "SearchCode='", 0)
  loc_14AFF25: 1 = var_B0.Tag
  loc_14AFF57: Me.Find var_DC & var_B8 & Me.LblOutlet.Tag & "'", DGFinish.DispID_FFFF, DGItem.DispID_FFFF
  loc_14AFF76: Set var_AC = Me.TopCtrl1
  loc_14AFF7C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_274)
  loc_14AFF95: If (CStr() = "Add") Then
  loc_14AFF98:   Call TopCtrl1_UnknownEvent_A()
  loc_14AFF9D:   Exit Sub
  loc_14AFF9E: End If
  loc_14AFFB3: var_B8 = "INI"
  loc_14AFFC1: Call Proc_132_51_E80AB0(Proc_5_1_100EC1C(var_B8, Me))
  loc_14AFFCC: Call Proc_132_50_1414890(global_68)
  loc_14AFFD1: Exit Sub
  loc_14AFFD2: ' Referenced from: 14AF48C
  loc_14AFFDB: If (CInt(var_86) = 1) Then
  loc_14AFFE4:   unk_4AF624.RollbackTrans
  loc_14AFFE9: End If
  loc_14AFFF1: Set var_AC = Err()
  loc_14AFFF7: Call 0.Method_arg_2C (var_B8)
  loc_14B0010: MsgBox(CVar(var_B8), &H10, var_13C, var_14C, var_16C)
  loc_14B0023: Exit Sub
End Sub

Private Sub Form_Load() '10DA234
  'Data Table: 4AF608
  Dim var_88 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_B4 As String
  Dim var_B8 As String
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_D0 As String
  Dim unk_4AF624 As Connection15
  loc_10D9F34: On Error Goto loc_10DA22E
  loc_10D9F46: Me.LblUser.Left = CDbl(13500)
  loc_10D9F5D: Me.LblUser.Top = CDbl(7800)
  loc_10D9F74: Me.LblLDt.Top = CDbl(8160)
  loc_10D9F8B: Me.LblLDt.Left = CDbl(13500)
  loc_10D9F9A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10D9FAC: Set var_88 = Me.FGrid
  loc_10D9FB2: var_88.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_10D9FD6: Me.var_88.CursorLocation = 3
  loc_10DA000: var_B0 = "SELECT ItemMast.Code, ItemMast.Name, ItemMast.Unit, Depart.Name as Department,Case When Itemmast.RestCode='" & MemVar_1F95078 & "BANQ"
  loc_10DA007: var_B4 = var_B0 & "' Then 'BANQUET' Else D1.Name End as RestName,Itemmast.RestCode FROM (ItemMast Inner JOIN Depart ON ItemMast.Kitchen = Depart.Code) Left join Depart  as D1 on D1.Code=ItemMast.RestCode Where (Itemmast.LogSite_Code='"
  loc_10DA015: var_C8 = CVar(var_B4 & MemVar_1F95078 & "' or ItemMast.LogSite_Code='HO') AND ITEMMAST.DISPCODE=9999 and Type IN ('Finish','Semi Finish') Order by ItemMast.Name") 'String
  loc_10DA03B: CVarUnk
  loc_10DA040: VerifyVarObj
  loc_10DA04C: LateIdStAd
  loc_10DA064: Set global_76 = New 
  loc_10DA076: Me.DGFinish.CursorLocation = 3
  loc_10DA08F: var_AC = "Select Code,Name,IssueUnit as Unit,CASE WHEN ISNULL(LPurRate,0)=0 THEN ISNULL(PURCHRATE,0) ELSE ISNULL(LPurRate,0) END AS LPurRate,ConvRatio From ItemMast where (LOGSITE_CODE='" & MemVar_1F95078
  loc_10DA0A4: var_B8 = var_AC & "' or LOGSITE_CODE='HO') and DispCode<>9999 and Code=ConsumptionItem And ActiveYN<>'No'" & " Union " & "Select Code,Name,Unit as Unit,CASE WHEN ISNULL(LPurRate,0)=0 THEN ISNULL(PURCHRATE,0) ELSE ISNULL(LPurRate,0) END AS LPurRate,ConvRatio From ItemMast Where (LOGSITE_CODE='"
  loc_10DA0B2: var_D0 = var_B8 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type IN ('Semi Finish') and gravyItem='Yes' And ItemMast.ActiveYN<>'No' Order by Name"
  loc_10DA0BB: unk_4AF624.Execute var_D0, var_C8, -1
  loc_10DA0F2: CVarUnk
  loc_10DA0F7: VerifyVarObj
  loc_10DA0FD: Set var_88 = Me.DGItem
  loc_10DA103: LateIdStAd
  loc_10DA12D: Me.DGItem.CursorLocation = 3
  loc_10DA157: var_B0 = "Select Distinct BOM.FinItem+BOM.RestCode as SearchCode,BOM.FinItem,ItemMast.Name,BOM.FinQty,BOM.AppDAte,ItemMast.Unit,BOM.Site_Code,Bom.LogSite_Code,BOM.RestCode,Case When BOM.RestCode='" & MemVar_1F95078 & "BANQ"
  loc_10DA15E: var_B4 = MemVar_1F95078 & "BANQ" & "' or LOGSITE_CODE='HO') and DispCode<>9999 and Code=ConsumptionItem And ActiveYN<>'No'" & "' Then 'BANQUET' Else Depart.Name End RestName From BOM Inner Join ItemMast on ItemMast.Code=BOM.FinItem And ItemMast.RestCode=BOM.RestCode Left join Depart on Depart.Code=ItemMast.RestCode Where (BOM.LOGSITE_CODE='"
  loc_10DA176: r_C8, CVar(MemVar_1F95044), 2 CVar(var_B4 & MemVar_1F95078 & "') AND ITEMMAST.DISPCODE=9999 Order by ItemMast.Name,RestName"), CVar(MemVar_1F95044), 2
  loc_10DA1AC: Call Proc_132_51_E80AB0(Proc_5_1_100EC1C("INI", Me, New, 3, -1, Me), Me.DGFinish, Me, Me)
  loc_10DA1B7: Call Proc_132_45_11DD21C(New, 3)
  loc_10DA1BC: Call Proc_132_50_1414890(-1)
  loc_10DA1D4: Me.FGrid.Left = CVar(CDbl(700))
  loc_10DA1EF: Me.FGrid.Width = CVar(CDbl(9025))
  loc_10DA20A: Me.FGrid.Top = CVar(CDbl(2750))
  loc_10DA225: Me.FGrid.Height = CVar(CDbl(5000))
  loc_10DA22D: Exit Sub
  loc_10DA22E: ' Referenced from: 10D9F34
  loc_10DA22E: Proc_6_60_E63754()
  loc_10DA233: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3618
  'Data Table: 4AF608
  Dim var_8C As Label
  loc_ED3576: Call 0.Method_arg_50 (var_88)
  loc_ED3588: Me.LblFormCaption.Caption = var_88
  loc_ED35A1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED35AD: Set var_A0 = Me.TopCtrl1
  loc_ED35B3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED35C0: Set var_8C = Me.TopCtrl1
  loc_ED35C6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED35E0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED35FB: Call 0.Method_arg_100 (var_B8)
  loc_ED360D: Me.LblFormCaption.Width = var_B8
  loc_ED3615: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E595F4
  'Data Table: 4AF608
  loc_E595BF: Set global_76 = Nothing
  loc_E595D1: Set global_68 = Nothing
  loc_E595E3: Set global_72 = Nothing
  loc_E595EF: MasterFormExit = 0
  loc_E595F2: Exit Sub
End Sub

Private Sub Form_Activate() 'E4FA30
  'Data Table: 4AF608
  loc_E4FA00: On Error Goto loc_E4FA2A
  loc_E4FA07: Set var_88 = Me.TopCtrl1
  loc_E4FA0D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4FA22: If (CLng(CInt()) = &H2D) Then
  loc_E4FA25:   Call TopCtrl1_UnknownEvent_15()
  loc_E4FA2A:   ' Referenced from: E4FA00
  loc_E4FA2A: End If
  loc_E4FA2A: Proc_6_60_E63754()
  loc_E4FA2F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24E9C
  'Data Table: 4AF608
  loc_E24E81: If (MasterFormExit = &HFF) Then
  loc_E24E91:   Me.Global.Unload Me
  loc_E24E99: End If
  loc_E24E99: Exit Sub
  loc_E24E9A: Result  End Sub 'Long
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E298A0
  'Data Table: 4AF608
  loc_E29878: On Error Goto loc_E29898
  loc_E2988F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E29897: Exit Sub
  loc_E29898: ' Referenced from: E29878
  loc_E29898: Proc_6_60_E63754(Shift)
  loc_E2989D: Exit Sub
End Sub

Public Function MasterFormExitGet() '4B03D4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4B03E3
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E986D0
  'Data Table: 4AF608
  Dim Me As Recordset15
  loc_E9865E: On Error Goto loc_E986C7
  loc_E98667: Me.MoveFirst
  loc_E98691: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E986B9: Proc_5_0_1107AD0(&HFF, Me, global_68)
  loc_E986C1: Call Proc_132_50_1414890(0)
  loc_E986C6: Exit Sub
  loc_E986C7: ' Referenced from: E9865E
  loc_E986C7: Proc_6_60_E63754(var_A0)
  loc_E986CC: Exit Sub
End Sub

Public Sub Proc_132_45_11DD21C
  'Data Table: 4AF608
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_11DCDA0: On Error Goto loc_11DD213
  loc_11DCDB1: Set var_88 = Me.Txt
  loc_11DCDB7: Call 0.Method_Proc_132_45_11DD21C0 (CInt(0), var_8C)
  loc_11DCDD6: Me.DGFinish.Left = CVar(var_8C.Left)
  loc_11DCDF2: Set var_B4 = Me.Txt
  loc_11DCDF8: Call 0.Method_Proc_132_45_11DD21C0 (CInt(0), var_B8)
  loc_11DCE13: Set var_88 = Me.Txt
  loc_11DCE19: Call 0.Method_Proc_132_45_11DD21C0 (CInt(0), var_8C)
  loc_11DCE21: var_90 = var_8C.Top
  loc_11DCE31: var_A0 = CVar(((var_90 + var_B8.Height) + CDbl(&H19))) 'Single
  loc_11DCE40: Me.DGFinish.Top = CVar(var_8C.Left)
  loc_11DCE58: Call 0.Method_Me0 (var_90)
  loc_11DCE64: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_11DCE73: Me.FGrid.Width = CVar(var_8C.Left)
  loc_11DCE81: Call 0.Method_Me8 (var_90)
  loc_11DCE8D: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_11DCE9C: Me.FGrid.Height = CVar(var_8C.Left)
  loc_11DCEB0: Set var_88 = Me.TxtGrid
  loc_11DCEB6: Call 0.Method_Proc_132_45_11DD21C0 (0, var_8C)
  loc_11DCED5: Me.DGItem.Left = CVar(var_8C.Left)
  loc_11DCEEF: Set var_B4 = Me.TxtGrid
  loc_11DCEF5: Call 0.Method_Proc_132_45_11DD21C0 (0, var_B8)
  loc_11DCF0E: Set var_88 = Me.TxtGrid
  loc_11DCF14: Call 0.Method_Proc_132_45_11DD21C0 (0, var_8C)
  loc_11DCF28: var_A0 = CVar((var_8C.Top + var_B8.Height)) 'Single
  loc_11DCF37: Me.DGItem.Top = CVar(var_8C.Left)
  loc_11DCF4D: Set var_C4 = Me.FGrid
  loc_11DCF5C: var_C4.Cols = 8
  loc_11DCF6D: var_C4.Rows = 1
  loc_11DCF86: global_56 = CStr(CLng(var_C4.BackColor))
  loc_11DCF93: var_A0 = CVar(CLng(0)) 'Long
  loc_11DCF98: var_E8 = &H226
  loc_11DCFA4: LateIdCallSt
  loc_11DCFAC: var_A0 = 0
  loc_11DCFB8: var_E8 = CVar(CLng(0)) 'Long
  loc_11DCFBD: var_108 = "S.No"
  loc_11DCFC6: LateIdCallSt
  loc_11DCFD1: var_A0 = CVar(CLng(1)) 'Long
  loc_11DCFD6: var_E8 = 0
  loc_11DCFE2: LateIdCallSt
  loc_11DCFED: var_A0 = CVar(CLng(2)) 'Long
  loc_11DCFF2: var_E8 = &HB54
  loc_11DCFFE: LateIdCallSt
  loc_11DD006: var_A0 = 0
  loc_11DD012: var_E8 = CVar(CLng(2)) 'Long
  loc_11DD017: var_108 = "Name"
  loc_11DD020: LateIdCallSt
  loc_11DD02B: var_A0 = CVar(CLng(2)) 'Long
  loc_11DD036: var_E8 = CVar(CInt(1)) 'Integer
  loc_11DD03D: LateIdCallSt
  loc_11DD048: var_A0 = CVar(CLng(3)) 'Long
  loc_11DD04D: var_E8 = &H384
  loc_11DD059: LateIdCallSt
  loc_11DD064: var_A0 = CVar(CLng(3)) 'Long
  loc_11DD06F: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DD076: LateIdCallSt
  loc_11DD07E: var_A0 = 0
  loc_11DD08A: var_E8 = CVar(CLng(3)) 'Long
  loc_11DD08F: var_108 = "Qty"
  loc_11DD098: LateIdCallSt
  loc_11DD0A3: var_A0 = CVar(CLng(4)) 'Long
  loc_11DD0A8: var_E8 = &H320
  loc_11DD0B4: LateIdCallSt
  loc_11DD0BC: var_A0 = 0
  loc_11DD0C8: var_E8 = CVar(CLng(4)) 'Long
  loc_11DD0CD: var_108 = "Unit"
  loc_11DD0D6: LateIdCallSt
  loc_11DD0E1: var_A0 = CVar(CLng(4)) 'Long
  loc_11DD0EC: var_E8 = CVar(CInt(1)) 'Integer
  loc_11DD0F3: LateIdCallSt
  loc_11DD0FE: var_A0 = CVar(CLng(5)) 'Long
  loc_11DD103: var_E8 = &H3E8
  loc_11DD10F: LateIdCallSt
  loc_11DD117: var_A0 = 0
  loc_11DD123: var_E8 = CVar(CLng(5)) 'Long
  loc_11DD128: var_108 = "Cost"
  loc_11DD131: LateIdCallSt
  loc_11DD13C: var_A0 = CVar(CLng(5)) 'Long
  loc_11DD147: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DD14E: LateIdCallSt
  loc_11DD159: var_A0 = CVar(CLng(6)) 'Long
  loc_11DD15E: var_E8 = &H3E8
  loc_11DD16A: LateIdCallSt
  loc_11DD172: var_A0 = 0
  loc_11DD17E: var_E8 = CVar(CLng(6)) 'Long
  loc_11DD183: var_108 = "Total"
  loc_11DD18C: LateIdCallSt
  loc_11DD197: var_A0 = CVar(CLng(6)) 'Long
  loc_11DD1A2: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DD1A9: LateIdCallSt
  loc_11DD1B4: var_A0 = CVar(CLng(7)) 'Long
  loc_11DD1B9: var_E8 = &H3B6
  loc_11DD1C5: LateIdCallSt
  loc_11DD1CD: var_A0 = 0
  loc_11DD1D9: var_E8 = CVar(CLng(7)) 'Long
  loc_11DD1DE: var_108 = "Waste %"
  loc_11DD1E7: LateIdCallSt
  loc_11DD1F2: var_A0 = CVar(CLng(7)) 'Long
  loc_11DD1FD: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DD204: LateIdCallSt
  loc_11DD20E: Set var_C4 = Nothing 
  loc_11DD212: Exit Sub
  loc_11DD213: ' Referenced from: 11DCDA0
  loc_11DD213: Proc_6_60_E63754(var_C4, var_E8, var_A0, var_C4, var_108, var_E8, var_A0, var_C4)
  loc_11DD218: Exit Sub
End Sub

Public Sub Proc_132_46_FE8D18
  'Data Table: 4AF608
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_4AF624 As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  loc_FE8B73: If (Me.RecordCount = 0) Then
  loc_FE8B76:   Proc_132_46_FE8D18 = 
  loc_FE8B7C: End If
  loc_FE8B80: Set var_90 = Me.TopCtrl1
  loc_FE8B86: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE8B8E: var_A4 = CStr()
  loc_FE8B9F: If (var_A4 = "Add") Then
  loc_FE8BCF:   Set var_90 = Me.Txt
  loc_FE8BD5:   Call 0.Method_Proc_132_46_FE8D180 (CInt(0), var_A8, var_A4, "Select Count(*) From BOM Where FinItem='", var_A0, -1)
  loc_FE8C16:   unk_4AF624.Execute var_D8 & var_A4 & "' And RestCode='" & Me.LblOutlet.Tag & "'", 0, var_EC
  loc_FE8C26:    = var_D8.Item()
  loc_FE8C2E:    = var_EC.Value
  loc_FE8C63:   If (var_A8.Tag.Fields > 0) Then
  loc_FE8C7D:     If (Me.RecordCount > 0) Then
  loc_FE8C86:       Me.MoveFirst
  loc_FE8CAA:       Set var_90 = Me.Txt
  loc_FE8CB0:       Call 0.Method_Proc_132_46_FE8D180 (CInt(0), var_A8, var_A4, "SearchCode='")
  loc_FE8CB8:       0 = var_A8.Tag
  loc_FE8CEA:       Me.Find 1 & var_A4 & Me.LblOutlet.Tag & "'", var_D0, 
  loc_FE8D05:       Call TopCtrl1_UnknownEvent_D()
  loc_FE8D0A:       Call Proc_132_50_1414890()
  loc_FE8D0F:     End If
  loc_FE8D0F:   End If
  loc_FE8D0F: End If
  loc_FE8D0F: Proc_132_46_FE8D18 = 
End Sub

Public Sub Proc_132_47_E42340
  'Data Table: 4AF608
  loc_E4231C: Set var_88 = Me.TopCtrl1
  loc_E42322: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4233B: If (CStr() = "Browse") Then
  loc_E4233E:   Exit Sub
  loc_E4233F: End If
  loc_E4233F: Exit Sub
End Sub

Public Sub Proc_132_48_135CDA4(arg_C) '135CDA4
  'Data Table: 4AF608
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_148 As Variant
  Dim var_124 As Variant
  Dim var_B0 As String
  Dim var_170 As Double
  Dim var_158 As Variant
  Dim var_138 As MSHFlexGrid
  Dim var_244 As Double
  loc_135C59B: var_A0 = CLng(Me.FGrid.Col)
  loc_135C5AB: If (var_A0 = CLng(2)) Then
  loc_135C5FC:   Set var_8C = Me.TxtGrid
  loc_135C602:   Call 0.Method_Proc_132_48_135CDA40 (arg_C, var_AC, var_B0)
  loc_135C60A:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_135C622:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_135C638:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135C640:     var_E0 = CVar(CLng(2)) 'Long
  loc_135C645:     var_100 = vbNullString
  loc_135C64F:     Set var_AC = Me.FGrid
  loc_135C655:     LateIdCallSt
  loc_135C67A:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135C682:     var_E0 = CVar(CLng(1)) 'Long
  loc_135C687:     var_100 = vbNullString
  loc_135C691:     Set var_AC = Me.FGrid
  loc_135C697:     LateIdCallSt
  loc_135C6BC:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135C6C4:     var_E0 = CVar(CLng(5)) 'Long
  loc_135C6C9:     var_100 = vbNullString
  loc_135C6D3:     Set var_AC = Me.FGrid
  loc_135C6D9:     LateIdCallSt
  loc_135C6EE:   Else
  loc_135C701:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135C709:     var_F0 = CVar(CLng(2)) 'Long
  loc_135C73C:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_135C744:     Set var_138 = Me.FGrid
  loc_135C74A:     LateIdCallSt
  loc_135C779:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135C781:     var_F0 = CVar(CLng(1)) 'Long
  loc_135C7B4:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_135C7BC:     Set var_138 = Me.FGrid
  loc_135C7C2:     LateIdCallSt
  loc_135C7F1:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135C7F9:     var_F0 = CVar(CLng(4)) 'Long
  loc_135C823:     var_124 = Me.Fields.Item("Unit").Value
  loc_135C82C:     var_134 = CVar(CStr(var_124)) 'String
  loc_135C83A:     LateIdCallSt
  loc_135C860:     var_134 = Me.FGrid.Row
  loc_135C89F:     Proc_6_39_E7D3A0(var_124, CVar(Me.Fields.Item("LPurRate")), CVar(CLng(5)), CVar(CLng(var_134)), Me.FGrid, var_134, CVar(CLng(5)))
  loc_135C8A8:     var_148 = CVar(CStr(var_124)) 'String
  loc_135C8B0:     Set var_138 = Me.FGrid
  loc_135C8B6:     LateIdCallSt
  loc_135C8D2:   End If
  loc_135C8EB:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_135C8F0:   var_E0 = 1
  loc_135C90E:   var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_135C927:   If (var_B0 <> vbNullString) Then
  loc_135C93F:     var_124 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_135C947:     Set var_AC = Me.FGrid
  loc_135C963:   End If
  loc_135C966: Else
  loc_135C96D:   If (var_A0 = CLng(3)) Then
  loc_135C97C:     Set var_8C = Me.TxtGrid
  loc_135C982:     Call 0.Method_Proc_132_48_135CDA40 (0, var_AC, var_B0, FGrid.DispID_10000, var_124, var_E0, "LPurRate")
  loc_135C98A:     var_138 = var_AC.Text
  loc_135C9AD:     var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135C9B5:     var_100 = CVar(CLng(3)) 'Long
  loc_135C9E2:     var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.0000"))) 'String
  loc_135C9EA:     Set var_138 = Me.FGrid
  loc_135C9F0:     LateIdCallSt
  loc_135CA26:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135CA2E:     var_E0 = CVar(CLng(3)) 'Long
  loc_135CA37:     Set var_AC = Me.FGrid
  loc_135CA48:     var_B0 = CStr(var_AC.TextMatrix))
  loc_135CA50:     var_170 = Val(var_B0)
  loc_135CA66:     var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135CA90:     var_244 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_135CAED:     LateIdCallSt
  loc_135CB20:     Call Proc_132_54_F0D70C(Me.FGrid, CVar(CStr(Format(CVar((var_170 * var_244)), "0.000"))), 1, 1, CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_244, CVar(CLng(5)))
  loc_135CB28:   Else
  loc_135CB2F:     If (var_A0 = CLng(5)) Then
  loc_135CB3E:       Set var_8C = Me.TxtGrid
  loc_135CB44:       Call 0.Method_Proc_132_48_135CDA40 (0, var_AC, var_B0, var_100, var_170)
  loc_135CB4C:       var_E0 = var_AC.Text
  loc_135CB6F:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135CB77:       var_100 = CVar(CLng(5)) 'Long
  loc_135CBA4:       var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.0000"))) 'String
  loc_135CBAC:       Set var_138 = Me.FGrid
  loc_135CBB2:       LateIdCallSt
  loc_135CBE8:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135CBF0:       var_E0 = CVar(CLng(3)) 'Long
  loc_135CBF9:       Set var_AC = Me.FGrid
  loc_135CC0A:       var_B0 = CStr(var_AC.TextMatrix))
  loc_135CC12:       var_170 = Val(var_B0)
  loc_135CC28:       var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135CC52:       var_244 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_135CCAF:       LateIdCallSt
  loc_135CCE2:       Call Proc_132_54_F0D70C(Me.FGrid, CVar(CStr(Format(CVar((var_170 * var_244)), "0.000"))), 1, 1, CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_244, CVar(CLng(5)))
  loc_135CCEA:     Else
  loc_135CCF1:       If (var_A0 = CLng(7)) Then
  loc_135CD00:         Set var_8C = Me.TxtGrid
  loc_135CD06:         Call 0.Method_Proc_132_48_135CDA40 (0, var_AC, var_B0, var_100, var_170)
  loc_135CD0E:         var_E0 = var_AC.Text
  loc_135CD31:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135CD39:         var_100 = CVar(CLng(7)) 'Long
  loc_135CD66:         var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_135CD6E:         Set var_138 = Me.FGrid
  loc_135CD74:         LateIdCallSt
  loc_135CD97:       End If
  loc_135CD97:     End If
  loc_135CD97:   End If
  loc_135CD97: End If
  loc_135CD9C: Proc_132_48_135CDA4 = &HFF
End Sub

Public Sub Proc_132_49_F31BF8
  'Data Table: 4AF608
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F31AE6: global_80 = vbNullString
  loc_F31AF8: Set var_8C = Me.Txt
  loc_F31AFE: Call 0.Method_Proc_132_49_F31BF8C (var_8E, var_86)
  loc_F31B0E: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F31B24:   Set var_8C = Me.Txt
  loc_F31B2A:   Call 0.Method_Proc_132_49_F31BF80 (CInt(var_86), var_98)
  loc_F31B32:   var_98.Text = vbNullString
  loc_F31B4E:   Set var_8C = Me.Txt
  loc_F31B54:   Call 0.Method_Proc_132_49_F31BF80 (CInt(var_86), var_98)
  loc_F31B5C:   var_98.Tag = vbNullString
  loc_F31B6B: Next var_92 'Byte
  loc_F31B7E: Me.lbltotal.Caption = vbNullString
  loc_F31B99: Me.FGrid.Rows = 1
  loc_F31BB6: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F31BBE: Set var_98 = Me.FGrid
  loc_F31BED: Me.FGrid.FixedRows = 1
  loc_F31BF5: Exit Sub
End Sub

Public Sub Proc_132_50_1414890
  'Data Table: 4AF608
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_A4 As Variant
  Dim var_C0 As TextBox
  Dim var_BC As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim unk_4AF624 As Connection15
  Dim var_9C As Recordset15
  Dim var_148 As Variant
  Dim var_124 As Variant
  Dim var_88 As Recordset15
  Dim var_8C As Integer
  Dim var_134 As Variant
  Dim var_158 As Variant
  loc_1413E44: On Error Goto loc_1414887
  loc_1413E5E: If (Me.RecordCount > 0) Then
  loc_1413E61:   Call Proc_132_49_F31BF8()
  loc_1413EA2:   Set var_BC = Me.Txt
  loc_1413EA8:   Call 0.Method_Proc_132_50_14148900 (CInt(0), var_C0)
  loc_1413EB0:   var_C0.Tag = CStr(Me.Fields.Item("FinItem").Value)
  loc_1413EFF:   Set var_BC = Me.Txt
  loc_1413F05:   Call 0.Method_Proc_132_50_14148900 (CInt(0), var_C0)
  loc_1413F0D:   var_C0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_1413F59:   Me.LblOutlet.Caption = Proc_6_38_E69628(CVar(Me.Fields.Item("RestName")))
  loc_1413FA3:   Me.LblOutlet.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")))
  loc_141400A:   Set var_BC = Me.Txt
  loc_1414010:   Call 0.Method_Proc_132_50_14148900 (CInt(1), var_C0, CStr(Format(CVar(Me.Fields.Item("FinQty")), "0.0000")))
  loc_1414018:   var_C0.Text = 1
  loc_141406B:   Set var_BC = Me.Txt
  loc_1414071:   Call 0.Method_Proc_132_50_14148900 (CInt(2), var_C0)
  loc_1414079:   var_C0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")))
  loc_14140C6:   Set var_BC = Me.Txt
  loc_14140CC:   Call 0.Method_Proc_132_50_14148900 (CInt(3), var_C0)
  loc_14140D4:   var_C0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("AppDate")))
  loc_14140F5:   var_E4 = "Select BOM.*,ItemMast.Name as Name,ItemMast.Unit,ItemMast.LPurRate,ItemMast.IssueUnit From BOM Left Join ItemMast on ItemMast.Code=BOM.RawItem And (ItemMast.ItemType='Store' Or GravyItem='Yes') where BOM.FinItem+BOM.RestCode='"
  loc_141413E:   unk_4AF624.Execute CStr("0.0000" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_1414149:   Set var_88 = var_BC
  loc_1414170:   var_E4 = "Select BOM.U_name,bom.U_EntDt,BOm.U_AE From BOM Left Join ItemMast on ItemMast.Code=BOM.RawItem where BOM.FinItem+BOM.RestCode='"
  loc_14141B9:   unk_4AF624.Execute CStr("0.0000" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_14141C4:   Set var_9C = var_BC
  loc_1414218:   var_BC = var_9C.Fields
  loc_1414281:   var_198 = IIf((Proc_6_38_E69628(CVar(var_9C.Fields.Item("U_AE")), var_BC) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_BC.Item("U_AE")), var_BC) = "E"), "Modified By : ", "User : "))
  loc_14142C6:   Me.LblUser.Caption = CStr(1 & CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("U_Name")), var_198)))
  loc_14143A1:   var_198 = IIf((Proc_6_38_E69628(CVar(var_9C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_9C.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_14143E6:   Me.LblLDt.Caption = CStr(var_198 & CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("U_EntDt")))))
  loc_1414432:   If (var_88.RecordCount > 0) Then
  loc_1414437:     var_8C = 1
  loc_141444D:     Me.FGrid.Rows = 1
  loc_1414455:     ' Referenced from: 14147DE
  loc_1414464:     If Not(var_88.EOF) Then
  loc_1414467:       var_B4 = vbNullString
  loc_1414471:       Set var_A4 = Me.FGrid
  loc_1414486:       Set var_1F8 = Me.FGrid
  loc_141448D:       var_E4 = CVar(CLng(var_8C)) 'Long
  loc_1414495:       var_124 = CVar(CLng(0)) 'Long
  loc_14144C5:       var_F4 = CVar(CStr(var_88.Fields.Item("RawSno").Value)) 'String
  loc_14144CC:       LateIdCallSt
  loc_141451B:       var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RawItem")), CVar(CLng(1)), CVar(CLng(var_8C)), var_1F8, var_F4)) 'String
  loc_1414522:       LateIdCallSt
  loc_141456D:       var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), CVar(CLng(2)), CVar(CLng(var_8C)), var_1F8, var_F4)) 'String
  loc_1414574:       LateIdCallSt
  loc_14145BF:       var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(4)), CVar(CLng(var_8C)), var_1F8, var_F4)) 'String
  loc_14145C6:       LateIdCallSt
  loc_14145F8:       var_114 = CVar(CLng(var_8C)) 'Long
  loc_1414614:       var_F4 = "0.0000"
  loc_1414634:       LateIdCallSt
  loc_1414670:       Proc_6_39_E7D3A0(var_F4, CVar(var_88.Fields.Item("Waste")), var_1F8, CVar(CStr(Format(CVar(var_88.Fields.Item("RawQty")), var_F4))), 1, 1, CVar(CLng(3)))
  loc_1414679:       var_114 = CVar(CLng(var_8C)) 'Long
  loc_14146B1:       LateIdCallSt
  loc_14146EF:       Proc_6_39_E7D3A0(var_F4, CVar(var_88.Fields.Item("Cost")), var_1F8, CVar(CStr(Format(var_F4, "0.00"))), 1, 1, CVar(CLng(7)))
  loc_14146F8:       var_114 = CVar(CLng(var_8C)) 'Long
  loc_1414730:       LateIdCallSt
  loc_141476E:       Proc_6_39_E7D3A0(var_F4, CVar(var_88.Fields.Item("Total")), var_1F8, CVar(CStr(Format(var_F4, "0.00000"))), 1, 1, CVar(CLng(5)))
  loc_1414777:       var_114 = CVar(CLng(var_8C)) 'Long
  loc_141477F:       var_148 = CVar(CLng(6)) 'Long
  loc_14147A8:       var_158 = CVar(CStr(Format(var_F4, "0.0000"))) 'String
  loc_14147AF:       LateIdCallSt
  loc_14147C9:       Set var_1F8 = Nothing 
  loc_14147D3:       var_8C = (var_8C + 1)
  loc_14147D9:       var_88.MoveNext
  loc_14147DE:       GoTo loc_1414455
  loc_14147E1:     End If
  loc_14147E1:   End If
  loc_14147E1:   var_B4 = 0
  loc_14147EB:   Set var_A4 = Me.FGrid
  loc_1414818:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_141481B:     var_B4 = "1"
  loc_1414825:     Set var_A4 = Me.FGrid
  loc_1414836:   End If
  loc_1414836:   var_B4 = 1
  loc_1414849:   Me.FGrid.FixedRows = var_B4
  loc_1414851:   Call Proc_132_54_F0D70C(FGrid.DispID_10000, var_B4, FGrid.DispID_2E, var_B4, var_8C, var_1F8, var_158)
  loc_1414859: Else
  loc_1414859:   Call Proc_132_49_F31BF8(1, 1, var_148)
  loc_141485E: End If
  loc_1414871: Me.FGrid.Col = 1
  loc_1414879: Call Proc_132_52_E85C80(var_114, var_114)
  loc_1414883: Set var_88 = Nothing
  loc_1414886: Exit Sub
  loc_1414887: ' Referenced from: 1413E44
  loc_1414887: Proc_6_60_E63754(var_114)
  loc_141488C: Exit Sub
End Sub

Public Sub Proc_132_51_E80AB0(arg_C) 'E80AB0
  'Data Table: 4AF608
  Dim var_98 As TextBox
  loc_E80A56: Set var_8C = Me.Txt
  loc_E80A5C: Call 0.Method_Proc_132_51_E80AB0C (var_8E, var_86)
  loc_E80A6C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E80A79:   If (var_86 <> 2) Then
  loc_E80A8C:     Set var_8C = Me.Txt
  loc_E80A92:     Call 0.Method_Proc_132_51_E80AB00 (CInt(var_86), var_98)
  loc_E80A9A:     var_98.Enabled = arg_C
  loc_E80AA6:   End If
  loc_E80AA9: Next var_92 'Byte
  loc_E80AAF: Exit Sub
End Sub

Public Sub Proc_132_52_E85C80
  'Data Table: 4AF608
  loc_E85C2C: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E85C3E:   Me.DGItem.Visible = False
  loc_E85C46: End If
  loc_E85C62: If (CBool(Me.DGFinish.Visible) = &HFF) Then
  loc_E85C74:   Me.DGFinish.Visible = False
  loc_E85C7C: End If
  loc_E85C7C: Exit Sub
End Sub

Public Sub Proc_132_53_E93664(arg_C) 'E93664
  'Data Table: 4AF608
  Dim var_10C As TextBox
  loc_E935F8: Call Proc_132_52_E85C80()
  loc_E93634: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E93637:   Call TopCtrl1_UnknownEvent_16()
  loc_E9363F: Else
  loc_E93649:   Set var_108 = Me.Txt
  loc_E9364F:   Call 0.Method_Proc_132_53_E936640 (arg_C)
  loc_E93657:   var_10C.SetFocus
  loc_E93663: End If
  loc_E93663: Exit Sub
End Sub

Public Sub Proc_132_54_F0D70C
  'Data Table: 4AF608
  Dim var_90 As Double
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  loc_F0D631: Me.lbltotal.Caption = vbNullString
  loc_F0D63C: var_90 = CDbl(0)
  loc_F0D664: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A8 'Integer
  loc_F0D66E:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_F0D676:   var_D8 = CVar(CLng(6)) 'Long
  loc_F0D6A2:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F0D6B1: Next var_A8 'Integer
  loc_F0D6B6: var_D8 = "Total->"
  loc_F0D6F5: Me.lbltotal.Caption = CStr(1 & Format(var_90, "0.0000"))
  loc_F0D709: Exit Sub
End Sub
