VERSION 5.00
Begin VB.Form rRepReserv
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
  ClientWidth = 11880
  ClientHeight = 7545
  Begin BtnEnh BTNPRINTzz
    Index = 0
    Left = 8325
    Top = 7590
    Width = 1410
    Height = 600
    Visible = 0   'False
    TabIndex = 17
  End
  Begin MainCtrl TopCtrl1
    Left = 510
    Top = 8790
    Width = 2235
    Height = 225
    Visible = 0   'False
    TabIndex = 16
  End
  Begin CommandButton BTNPRINT
    Caption = "&Dos Print"
    Index = 1
    Left = 4890
    Top = 7920
    Width = 1620
    Height = 375
    Visible = 0   'False
    TabIndex = 15
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
  Begin DataGrid DGForFolio
    Left = 9405
    Top = 3600
    Width = 5325
    Height = 2295
    Visible = 0   'False
    TabIndex = 14
  End
  Begin Frame FrmList
    Left = 8520
    Top = 180
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 90
      Top = 15
      Width = 2325
      Height = 1830
      TabStop = 0   'False
      TabIndex = 13
    End
  End
  Begin PictureBox Pic
    BackColor = &H808080&
    Left = 0
    Top = 7050
    Width = 11880
    Height = 500
    TabIndex = 11
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
      TabIndex = 22
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Exit Form"
      Style = 1
    End
    Begin CommandButton BTNPRINT
      Caption = "Windows &Print"
      Index = 0
      Left = 5565
      Top = 75
      Width = 1620
      Height = 375
      TabIndex = 21
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Print Report"
      Style = 1
    End
    Begin Label LblTitle
      Caption = "."
      BackColor = &H0&
      ForeColor = &HFFFFFF&
      Left = 7320
      Top = 60
      Width = 4470
      Height = 495
      TabIndex = 20
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 375
    Top = 30
    Width = 690
    Height = 240
    Visible = 0   'False
    TabIndex = 10
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
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = -135
    Top = 1470
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin CheckBox Check1
    Caption = "All"
    Index = 4
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 5040
    Top = 3900
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 7
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
    Left = 225
    Top = 3885
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
    Left = 5010
    Top = 1830
    Width = 870
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
  Begin CheckBox Check1
    Caption = "All"
    Index = 1
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 240
    Top = 1860
    Width = 915
    Height = 195
    Visible = 0   'False
    TabIndex = 1
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
  Begin MSHFlexGrid GridSel
    Index = 1
    Left = 180
    Top = 1785
    Width = 4695
    Height = 1650
    Visible = 0   'False
    TabIndex = 2
  End
  Begin MSHFlexGrid GridSel
    Index = 2
    Left = 4950
    Top = 1785
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 4
  End
  Begin MSHFlexGrid GridSel
    Index = 4
    Left = 4995
    Top = 3825
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 8
  End
  Begin MSHFlexGrid GridSel
    Index = 3
    Left = 165
    Top = 3825
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 6
  End
  Begin MSHFlexGrid FGrid
    Left = 1590
    Top = 75
    Width = 4455
    Height = 1560
    TabIndex = 0
  End
  Begin BtnEnh BTNEXITzz
    Left = 11340
    Top = 7575
    Width = 1410
    Height = 600
    Visible = 0   'False
    TabIndex = 18
  End
  Begin BtnEnh BTNPRINTzz
    Index = 1
    Left = 9825
    Top = 7620
    Width = 1410
    Height = 600
    Visible = 0   'False
    TabIndex = 19
  End
  Begin Image GuestImage
    Left = 0
    Top = 0
    Width = 1740
    Height = 1980
    Visible = 0   'False
    Stretch = -1  'True
  End
End

Attribute VB_Name = "rRepReserv"

Private global_128 As Integer
Private global_130 As Integer
Private global_104 As Integer
Private global_88 As Integer
Private global_106 As Integer
Private global_196 As Integer
Private global_198 As Integer
Private global_112 As Variant
Private global_110 As Integer
Private global_108 As Integer

Private Sub FGrid_UnknownEvent_0 'E3FBD0
  'Data Table: 54078C
  Dim var_8C As TextBox
  loc_E3FBA4: Call Proc_66_43_E515D4()
  loc_E3FBB4: Set var_88 = Me.TxtGrid
  loc_E3FBBA: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E3FBC2: var_8C.Visible = False
  loc_E3FBCE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1076018
  'Data Table: 54078C
  Dim var_9C As String
  Dim Cancel As Integer
  Dim var_C4 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_11C As Long
  loc_1075DC3: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_110))) Then
  loc_1075DCE:   var_9C = "+{Tab}"
  loc_1075DD4:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag))
  loc_1075DDE:   Cancel = 0
  loc_1075DE4: Else
  loc_1075E1B:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_108))) Then
  loc_1075E2C:     Proc_303_0_FBACC8("	", 0)
  loc_1075E36:     Cancel = 0
  loc_1075E39:   End If
  loc_1075E39: End If
  loc_1075E3F: global_128 = Cancel
  loc_1075E65: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1075E89: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1075E9F:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1075EB7:   var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1075EBC:   var_104 = vbNullString
  loc_1075EC6:   Set var_118 = Me.FGrid
  loc_1075ECC:   LateIdCallSt
  loc_1075EF7:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1075EFC:   var_E4 = 2
  loc_1075F05:   var_104 = vbNullString
  loc_1075F0F:   Set var_C4 = Me.FGrid
  loc_1075F15:   LateIdCallSt
  loc_1075F27: End If
  loc_1075F31: If (CLng(Cancel) = &HD) Then
  loc_1075F47:   var_11C = CLng(Me.FGrid.Row)
  loc_1075F57:   If Not (var_11C = CLng(0)) Then
  loc_1075F61:     If Not (var_11C = CLng(1)) Then
  loc_1075F6B:       If Not (var_11C = CLng(2)) Then
  loc_1075F75:         If Not (var_11C = CLng(3)) Then
  loc_1075F7F:           If Not (var_11C = CLng(4)) Then
  loc_1075F89:             If Not (var_11C = CLng(5)) Then
  loc_1075F93:               If Not (var_11C = CLng(6)) Then
  loc_1075F9D:                 If Not (var_11C = CLng(7)) Then
  loc_1075FA7:                   If Not (var_11C = CLng(8)) Then
  loc_1075FB1:                     If (var_11C = CLng(9)) Then
  loc_1075FB4:                     End If
  loc_1075FB4:                   End If
  loc_1075FB4:                 End If
  loc_1075FB4:               End If
  loc_1075FB4:             End If
  loc_1075FB4:           End If
  loc_1075FB4:         End If
  loc_1075FB4:       End If
  loc_1075FB4:     End If
  loc_1075FF5:     Proc_6_61_1077158(Me, Me.FGrid, Me.TxtGrid, 0, 0, 0, var_11C, Me.FGrid)
  loc_107600F:     global_130 = 0
  loc_1076012:   End If
  loc_1076012: End If
  loc_1076014: Cancel = 0
  loc_1076017: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F0C1EC
  'Data Table: 54078C
  Dim var_9C As Long
  loc_F0C11F: var_9C = CLng(Me.FGrid.Row)
  loc_F0C12F: If Not (var_9C = CLng(0)) Then
  loc_F0C139:   If Not (var_9C = CLng(1)) Then
  loc_F0C143:     If Not (var_9C = CLng(2)) Then
  loc_F0C14D:       If Not (var_9C = CLng(3)) Then
  loc_F0C157:         If Not (var_9C = CLng(4)) Then
  loc_F0C161:           If Not (var_9C = CLng(5)) Then
  loc_F0C16B:             If Not (var_9C = CLng(6)) Then
  loc_F0C175:               If Not (var_9C = CLng(7)) Then
  loc_F0C17F:                 If Not (var_9C = CLng(8)) Then
  loc_F0C189:                   If (var_9C = CLng(9)) Then
  loc_F0C18C:                   End If
  loc_F0C18C:                 End If
  loc_F0C18C:               End If
  loc_F0C18C:             End If
  loc_F0C18C:           End If
  loc_F0C18C:         End If
  loc_F0C18C:       End If
  loc_F0C18C:     End If
  loc_F0C18C:   End If
  loc_F0C1A4:   var_AC = 0
  loc_F0C1CD:   Proc_6_61_1077158(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F0C1E2: End If
  loc_F0C1E7: global_130 = 0
  loc_F0C1EA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F71C48
  'Data Table: 54078C
  Dim var_9C As Long
  loc_F71B1F: var_9C = CLng(Me.FGrid.Row)
  loc_F71B2F: If Not (var_9C = CLng(5)) Then
  loc_F71B39:   If Not (var_9C = CLng(6)) Then
  loc_F71B43:     If Not (var_9C = CLng(7)) Then
  loc_F71B4D:       If Not (var_9C = CLng(8)) Then
  loc_F71B57:         If (var_9C = CLng(9)) Then
  loc_F71B5A:         End If
  loc_F71B5A:       End If
  loc_F71B5A:     End If
  loc_F71B5A:   End If
  loc_F71B98:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F71BAD: Else
  loc_F71BB4:   If Not (var_9C = CLng(0)) Then
  loc_F71BBE:     If Not (var_9C = CLng(1)) Then
  loc_F71BC8:       If Not (var_9C = CLng(2)) Then
  loc_F71BD2:         If Not (var_9C = CLng(3)) Then
  loc_F71BDC:           If (var_9C = CLng(4)) Then
  loc_F71BDF:           End If
  loc_F71BDF:         End If
  loc_F71BDF:       End If
  loc_F71BDF:     End If
  loc_F71C1D:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Cancel)
  loc_F71C2F:   End If
  loc_F71C2F: End If
  loc_F71C39: If (CLng(Cancel) <> &HD) Then
  loc_F71C41:   global_130 = &HFF
  loc_F71C44: End If
  loc_F71C44: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3FC34
  'Data Table: 54078C
  Dim var_8C As TextBox
  loc_E3FC13: Set var_88 = Me.TxtGrid
  loc_E3FC19: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3FC21: var_8C.Visible = False
  loc_E3FC2D: Call Proc_66_43_E515D4()
  loc_E3FC32: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'F282C8
  'Data Table: 54078C
  Dim arg_14EF As Date
  loc_F281CB: If (Proc_6_113_E6DB0C(KeyCode) = &HFF) Then
  loc_F281F6:   Set var_90 = Me.GridSel
  loc_F281FC:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_F28224:   Me.TxtSearch.Visible = False
  loc_F2822C: End If
  loc_F28236: If (CLng(KeyCode) = &H2E) Then
  loc_F28246:   Me.TxtSearch.Text = vbNullString
  loc_F2824E: End If
  loc_F28263: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_F2828E:   Set var_90 = Me.GridSel
  loc_F28294:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94, Val(Me.TxtSearch.Tag))
  loc_F282BC:   Me.TxtSearch.Visible = False
  loc_F282C4: End If
  loc_F282C4: Exit Sub
  loc_F282C5: arg_14EF = CDate(GridSel.DispID_8001)
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) '11CCC3C
  'Data Table: 54078C
  Dim var_F4 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim Me As Recordset15
  loc_11CC805: var_90 = Me.TxtSearch.Tag
  loc_11CC81A: If (var_90 = CStr(1)) Then
  loc_11CC870:   Set var_A0 = Me.GridSel
  loc_11CC876:   Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4)
  loc_11CC8EC:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(Val(Me.TxtSearch.Tag)), global_64, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CC917: Else
  loc_11CC926:   If (var_90 = CStr(2)) Then
  loc_11CC951:     var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CC97C:     Set var_A0 = Me.GridSel
  loc_11CC982:     Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CC9F8:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_68, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CCA23:   Else
  loc_11CCA32:     If (var_90 = CStr(3)) Then
  loc_11CCA5D:       var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CCA88:       Set var_A0 = Me.GridSel
  loc_11CCA8E:       Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CCA96:       var_B4 = var_A4.Col
  loc_11CCB04:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_72, KeyAscii, Me.Fields.Item(CVar(CLng(var_B4))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CCB2F:     Else
  loc_11CCB3E:       If (var_90 = CStr(4)) Then
  loc_11CCB69:         var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CCB94:         Set var_A0 = Me.GridSel
  loc_11CCB9A:         Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4, var_B4)
  loc_11CCC10:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_76, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CCC38:       End If
  loc_11CCC38:     End If
  loc_11CCC38:   End If
  loc_11CCC38: End If
  loc_11CCC38: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E91830
  'Data Table: 54078C
  loc_E917C9: Me.TxtSearch.Text = vbNullString
  loc_E917F9: Set var_90 = Me.GridSel
  loc_E917FF: Call 0.Method_TxtSearch_LostFocus0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E91827: Me.TxtSearch.Visible = False
  loc_E9182F: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E9339C
  'Data Table: 54078C
  loc_E93335: Me.TxtSearch.Text = vbNullString
  loc_E93365: Set var_90 = Me.GridSel
  loc_E9336B: Call 0.Method_TxtSearch_Click0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E93393: Me.TxtSearch.Visible = False
  loc_E9339B: Exit Sub
End Sub

Private Sub BTNPRINT_Click(Index As Integer) '1108904
  'Data Table: 54078C
  Dim var_AC As Variant
  Dim var_94 As Variant
  loc_11085C4: On Error Goto loc_11088FD
  loc_11085CC: global_104 = 0
  loc_11085D4: global_88 = &HFF
  loc_11085DD: var_88 = global_52
  loc_11085E8: If (var_88 = "ConfirmLetter") Then
  loc_11085EB:   Call Proc_66_57_1608AEC(global_88)
  loc_11085F3: Else
  loc_11085FB:   If (var_88 = "RegistrationCard") Then
  loc_11085FE:     Call Proc_66_60_10382E4(global_104)
  loc_1108606:   Else
  loc_110860E:     If (var_88 = "CancellLetter") Then
  loc_1108611:       Call Proc_66_58_15F90D0()
  loc_1108619:     Else
  loc_1108621:       If (var_88 = "GRC") Then
  loc_1108624:         Call Proc_66_37_192A048()
  loc_110862C:       Else
  loc_1108634:         If (var_88 = "FormCReport") Then
  loc_1108637:           Call Proc_66_64_12009C4()
  loc_110863F:         Else
  loc_1108647:           If (var_88 = "Form1TourismReport") Then
  loc_1108650:             If (Index = 1) Then
  loc_1108653:               Call Proc_66_65_1623420()
  loc_110865B:             Else
  loc_110865B:               Call Proc_66_66_15E7334()
  loc_1108660:             End If
  loc_1108663:           Else
  loc_110866B:             If (var_88 = "Form2TourismReport") Then
  loc_1108674:               If (Index = 1) Then
  loc_1108677:                 Call Proc_66_67_156E028()
  loc_110867F:               Else
  loc_110867F:                 Call Proc_66_68_1532E24()
  loc_1108684:               End If
  loc_1108687:             Else
  loc_110868F:               If (var_88 = "Form5TourismReport") Then
  loc_1108698:                 If (Index = 1) Then
  loc_110869B:                   Call Proc_66_69_15FF870()
  loc_11086A3:                 Else
  loc_11086A3:                   Call Proc_66_70_1756850()
  loc_11086A8:                 End If
  loc_11086AB:               Else
  loc_11086B3:                 If (var_88 = "LuxuryTaxRegister") Then
  loc_11086BC:                   If (Index = 1) Then
  loc_11086BF:                     Call Proc_66_71_1B93D5C()
  loc_11086C7:                   Else
  loc_11086C7:                     Call Proc_66_72_1CA2C28()
  loc_11086CC:                   End If
  loc_11086CF:                 Else
  loc_11086D7:                   If (var_88 = "Form6TourismReport") Then
  loc_11086E0:                     If (Index = 1) Then
  loc_11086E3:                       Call Proc_66_75_167D2F4()
  loc_11086EB:                     Else
  loc_11086EB:                       Call Proc_66_76_1556BF8()
  loc_11086F0:                     End If
  loc_11086F3:                   Else
  loc_11086FB:                     If (var_88 = "Form4TourismReport") Then
  loc_1108704:                       If (Index = 1) Then
  loc_1108707:                         Call Proc_66_34_17FF428()
  loc_110870F:                       Else
  loc_110870F:                         Call Proc_66_35_15CAB90()
  loc_1108714:                       End If
  loc_1108717:                     Else
  loc_110871F:                       If (var_88 = "CheckedInGuestDtl") Then
  loc_1108722:                         Call Proc_66_39_189B01C()
  loc_110872A:                       Else
  loc_1108732:                         If (var_88 = "LuxuryTaxRegisterI") Then
  loc_110873B:                           If (Index = 1) Then
  loc_110873E:                             Call Proc_66_71_1B93D5C()
  loc_1108746:                           Else
  loc_1108746:                             Call Proc_66_73_1CCBEBC()
  loc_110874B:                           End If
  loc_110874E:                         Else
  loc_1108756:                           If (var_88 = "MonthlyStatisticalReturn") Then
  loc_110875F:                             If (Index = 1) Then
  loc_1108762:                               GoTo loc_110876A
  loc_1108765:                             End If
  loc_1108765:                             Call Proc_66_79_19E0A08()
  loc_110876A:                             ' Referenced from:                           1108762
  loc_110876D:                           Else
  loc_1108775:                             If (var_88 = "LTFORMII") Then
  loc_110877E:                               If (Index = 1) Then
  loc_1108781:                                 GoTo loc_1108789
  loc_1108784:                               End If
  loc_1108784:                               Call Proc_66_81_14B2900()
  loc_1108789:                               ' Referenced from:                             1108781
  loc_110878C:                             Else
  loc_1108794:                               If (var_88 = "LTFORMIV") Then
  loc_110879D:                                 If (Index = 1) Then
  loc_11087A0:                                   GoTo loc_11087A8
  loc_11087A3:                                 End If
  loc_11087A3:                                 Call Proc_66_83_132F528()
  loc_11087A8:                                 ' Referenced from:                               11087A0
  loc_11087A8:                               End If
  loc_11087A8:                             End If
  loc_11087A8:                           End If
  loc_11087A8:                         End If
  loc_11087A8:                       End If
  loc_11087A8:                     End If
  loc_11087A8:                   End If
  loc_11087A8:                 End If
  loc_11087A8:               End If
  loc_11087A8:             End If
  loc_11087A8:           End If
  loc_11087A8:         End If
  loc_11087A8:       End If
  loc_11087A8:     End If
  loc_11087A8:   End If
  loc_11087A8: End If
  loc_11087B1: If (global_88 = 0) Then
  loc_11087B4:   Exit Sub
  loc_11087B5: End If
  loc_11087DF: Set var_94 = global_96 
  loc_11087E6: CreateFieldDefFile(var_94, MemVar_1F950B4 & "\" & global_84 & ".ttx")
  loc_110882F: Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & global_84 & ".RPT", var_AC)
  loc_1108866: Call 0.Method_arg_64 (var_94, CVar(var_94), var_BC)
  loc_110886E: Call 0.Method_arg_2C (var_CC, var_94)
  loc_110887C: Call 0.Method_arg_150 (&HFF)
  loc_110888C: Set global_96 = Nothing
  loc_1108893: Call Proc_66_40_147D290()
  loc_110889D: Set var_D4 = Nothing
  loc_11088B4: Set var_94 = var_94 
  loc_11088C0: Proc_6_99_1484404(var_94, Index, global_80)
  loc_11088CB: MemVar_1F951E8 = var_94
  loc_11088DB: global_106 = 0
  loc_11088E3: MemVar_1F951E8 = Nothing
  loc_11088F4: Me.Global.Unload Me
  loc_11088FC: Exit Sub
  loc_11088FD: ' Referenced from: 11085C4
  loc_11088FD: Proc_6_60_E63754(global_106, &HFF)
  loc_1108902: Exit Sub
End Sub

Private Sub Check1_Click(Index As Integer) 'FFA728
  'Data Table: 54078C
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  loc_FFA539: Set var_88 = Me.Check1
  loc_FFA53F: Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA55D: If (CLng(var_8C.Value) = 0) Then
  loc_FFA56E:   Set var_88 = Me.GridSel
  loc_FFA574:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA57C:   var_8C.Enabled = True
  loc_FFA592:   Set var_88 = Me.GridSel
  loc_FFA598:   Call 0.Method_Check1_Click0 (Index)
  loc_FFA5B9:   If (CLng(var_8C.Rows) > 1) Then
  loc_FFA5CF:     Set var_88 = Me.GridSel
  loc_FFA5D5:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA5DD:     var_8C.Row = 1
  loc_FFA5FC:     Set var_88 = Me.GridSel
  loc_FFA602:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA60A:     var_8C.Col = 0
  loc_FFA616:   End If
  loc_FFA619: Else
  loc_FFA628:   Set var_88 = Me.GridSel
  loc_FFA62E:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA636:   var_8C.Enabled = False
  loc_FFA64C:   Set var_88 = Me.GridSel
  loc_FFA652:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA673:   If (CLng(var_8C.Rows) > 1) Then
  loc_FFA689:     Set var_88 = Me.GridSel
  loc_FFA68F:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA6B6:     Set var_88 = Me.GridSel
  loc_FFA6BC:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA6C4:     var_8C.Col = 0
  loc_FFA6DA:     Set var_88 = Me.GridSel
  loc_FFA6E0:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA6F7:     var_A0 = CVar((CLng(var_8C.Rows) - 1)) 'Long
  loc_FFA706:     Set var_C4 = Me.GridSel
  loc_FFA70C:     Call 0.Method_Check1_Click0 (Index, var_C8)
  loc_FFA714:     var_C8.RowSel = 0
  loc_FFA727:   End If
  loc_FFA727: End If
  loc_FFA727: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E223CC
  'Data Table: 54078C
  loc_E223B2: If (Shift = &HD) Then
  loc_E223C3:   Proc_303_0_FBACC8("	")
  loc_E223CB: End If
  loc_E223CB: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A '1173D78
  'Data Table: 54078C
  Dim var_98 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_168 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  loc_11739CE: If (Shift = &HD) Then
  loc_11739DF:   Proc_303_0_FBACC8("	")
  loc_11739E7: End If
  loc_11739F1: Set var_94 = Me.GridSel
  loc_11739F7: Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1173A18: If (CLng(var_98.Rows) < 1) Then
  loc_1173A1B:   Exit Sub
  loc_1173A1C: End If
  loc_1173A30: Set var_94 = Me.GridSel
  loc_1173A36: Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1173A58: If ((CLng(Shift) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_1173A6B:   Set var_94 = Me.GridSel
  loc_1173A71:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1173A79:   var_98.CellFontName = "WINGDINGS"
  loc_1173A97:   Set var_94 = Me.GridSel
  loc_1173A9D:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1173AA5:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_1173ABB:   Set var_94 = Me.GridSel
  loc_1173AC1:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1173AD2:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_1173AEA:   Set var_CC = Me.GridSel
  loc_1173AF0:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_D0, 0)
  loc_1173AF8:   var_100 = var_D0.TextMatrix)
  loc_1173B0E:   Set var_164 = Me.GridSel
  loc_1173B14:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_168, var_100)
  loc_1173B25:   var_190 = CVar(CLng(var_168.Row)) 'Long
  loc_1173B73:   Set var_17C = Me.GridSel
  loc_1173B79:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_180, CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_1173B81:   LateIdCallSt
  loc_1173BB5:   var_1E2 = KeyCode
  loc_1173BBE:   If (var_1E2 = 1) Then
  loc_1173BD2:     var_86 = CInt((UBound(global_164, 1) + 1))
  loc_1173BE4:     ReDim Preserve global_164(0 To CLng(var_86))
  loc_1173BF8:     Set var_94 = Me.GridSel
  loc_1173BFE:     Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, var_86, var_1E2)
  loc_1173C1A:     global_164(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1173C28:   Else
  loc_1173C2E:     If (var_1E2 = 2) Then
  loc_1173C42:       var_86 = CInt((UBound(global_168, 1) + 1))
  loc_1173C54:       ReDim Preserve global_168(0 To CLng(var_86))
  loc_1173C68:       Set var_94 = Me.GridSel
  loc_1173C6E:       Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, var_86, var_180)
  loc_1173C8A:       global_168(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1173C98:     Else
  loc_1173C9E:       If (var_1E2 = 3) Then
  loc_1173CB2:         var_86 = CInt((UBound(global_172, 1) + 1))
  loc_1173CC4:         ReDim Preserve global_172(0 To CLng(var_86))
  loc_1173CD8:         Set var_94 = Me.GridSel
  loc_1173CDE:         Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, var_86)
  loc_1173CFA:         global_172(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1173D08:       Else
  loc_1173D0E:         If (var_1E2 = 4) Then
  loc_1173D22:           var_86 = CInt((UBound(global_176, 1) + 1))
  loc_1173D34:           ReDim Preserve global_176(0 To CLng(var_86))
  loc_1173D48:           Set var_94 = Me.GridSel
  loc_1173D4E:           Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, var_86)
  loc_1173D6A:           global_176(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1173D75:         End If
  loc_1173D75:       End If
  loc_1173D75:     End If
  loc_1173D75:   End If
  loc_1173D75: End If
  loc_1173D75: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_C '1137370
  'Data Table: 54078C
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_88 As TextBox
  loc_113700A: Set var_88 = Me.GridSel
  loc_1137010: Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode)
  loc_1137031: Set var_A0 = Me.GridSel
  loc_1137037: Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_A4)
  loc_1137061: If ((CLng(var_8C.Col) = 0) Or (CLng(var_A4.Row) = 0)) Then
  loc_1137064:   Exit Sub
  loc_1137065: End If
  loc_1137068: var_B6 = KeyCode
  loc_1137071: If (var_B6 = 1) Then
  loc_113708C:   Set var_88 = Me.GridSel
  loc_1137092:   Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_8C)
  loc_113709A:   var_9C = var_8C.Col
  loc_1137104:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, KeyCode, global_64, Shift, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1137125: Else
  loc_113712B:   If (var_B6 = 2) Then
  loc_1137146:     Set var_88 = Me.GridSel
  loc_113714C:     Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_8C, var_9C)
  loc_1137154:     var_9C = var_8C.Col
  loc_11371BE:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, KeyCode, global_68, Shift, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_11371DF:   Else
  loc_11371E5:     If (var_B6 = 3) Then
  loc_1137200:       Set var_88 = Me.GridSel
  loc_1137206:       Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_8C, var_9C)
  loc_113720E:       var_9C = var_8C.Col
  loc_1137278:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, KeyCode, global_72, Shift, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1137299:     Else
  loc_113729F:       If (var_B6 = 4) Then
  loc_11372BA:         Set var_88 = Me.GridSel
  loc_11372C0:         Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_8C, var_9C)
  loc_1137332:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, KeyCode, global_76, Shift, Me.Fields.Item(CVar(CLng(var_8C.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_1137350:       End If
  loc_1137350:     End If
  loc_1137350:   End If
  loc_1137350: End If
  loc_1137362: Me.TxtSearch.Tag = CStr(KeyCode)
  loc_113736D: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E82E50
  'Data Table: 54078C
  Dim var_8C As MSHFlexGrid
  loc_E82DF2: Set var_88 = Me.GridSel
  loc_E82DF8: Call 0.Method_GridSel_UnknownEvent_E0 (KeyCode)
  loc_E82E19: If (CLng(var_8C.Col) <> 0) Then
  loc_E82E1C:   Exit Sub
  loc_E82E1D: End If
  loc_E82E27: Set var_88 = Me.GridSel
  loc_E82E2D: Call 0.Method_GridSel_UnknownEvent_E0 (KeyCode, var_8C)
  loc_E82E42: global_196 = CInt(CLng(var_8C.Row))
  loc_E82E4F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '11749F0
  'Data Table: 54078C
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_160 As Variant
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_1174632: Set var_8C = Me.GridSel
  loc_1174638: Call 0.Method_GridSel_UnknownEvent_100 (KeyCode)
  loc_1174663: If ((CLng(var_90.Col) <> 0) Or (global_196 = 0)) Then
  loc_1174666:   Exit Sub
  loc_1174667: End If
  loc_1174671: Set var_8C = Me.GridSel
  loc_1174677: Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_117468C: global_198 = CInt(CLng(var_90.RowSel))
  loc_11746A8: For var_A4 = global_196 To global_198: var_88 = var_A4 'Integer
  loc_11746C1:   Set var_8C = Me.GridSel
  loc_11746C7:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, CVar(CLng(var_88)))
  loc_11746CF:   var_90.Row = global_196
  loc_11746EE:   Set var_8C = Me.GridSel
  loc_11746F4:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, 0)
  loc_11746FC:   var_90.Col = global_198
  loc_1174718:   Set var_8C = Me.GridSel
  loc_117471E:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_1174726:   var_90.CellFontName = "WINGDINGS"
  loc_1174744:   Set var_8C = Me.GridSel
  loc_117474A:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_1174752:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_1174762:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_117477A:   Set var_8C = Me.GridSel
  loc_1174780:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, 0)
  loc_1174798:   var_160 = CVar(CLng(var_88)) 'Long
  loc_11747E6:   Set var_14C = Me.GridSel
  loc_11747EC:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_150, CVar(CStr(IIf((CStr(var_90.TextMatrix)) = "ü"), " ", "ü"))), 0)
  loc_11747F4:   LateIdCallSt
  loc_117481C:   var_1B2 = KeyCode
  loc_1174825:   If (var_1B2 = 1) Then
  loc_1174839:     var_86 = CInt((UBound(global_164, 1) + 1))
  loc_117484B:     ReDim Preserve global_164(0 To CLng(var_86))
  loc_117485F:     Set var_8C = Me.GridSel
  loc_1174865:     Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, var_86, var_1B2, var_150)
  loc_1174881:     global_164(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_117488F:   Else
  loc_1174895:     If (var_1B2 = 2) Then
  loc_11748A9:       var_86 = CInt((UBound(global_168, 1) + 1))
  loc_11748BB:       ReDim Preserve global_168(0 To CLng(var_86))
  loc_11748CF:       Set var_8C = Me.GridSel
  loc_11748D5:       Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, var_86, var_160)
  loc_11748F1:       global_168(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11748FF:     Else
  loc_1174905:       If (var_1B2 = 3) Then
  loc_1174919:         var_86 = CInt((UBound(global_172, 1) + 1))
  loc_117492B:         ReDim Preserve global_172(0 To CLng(var_86))
  loc_117493F:         Set var_8C = Me.GridSel
  loc_1174945:         Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, var_86)
  loc_1174961:         global_172(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_117496F:       Else
  loc_1174975:         If (var_1B2 = 4) Then
  loc_1174989:           var_86 = CInt((UBound(global_176, 1) + 1))
  loc_117499B:           ReDim Preserve global_176(0 To CLng(var_86))
  loc_11749AF:           Set var_8C = Me.GridSel
  loc_11749B5:           Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, var_86)
  loc_11749D1:           global_176(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11749DC:         End If
  loc_11749DC:       End If
  loc_11749DC:     End If
  loc_11749DC:   End If
  loc_11749DF: Next var_A4 'Integer
  loc_11749E9: global_196 = 0
  loc_11749EC: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'EB5EB0
  'Data Table: 54078C
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_EB5E3C: Set var_9C = Me.ListView.SelectedItem
  loc_EB5E53: Set var_A4 = Me.TxtGrid
  loc_EB5E59: Call 0.Method_ListView_UnknownEvent_130 (0, var_A8)
  loc_EB5E61: var_A8.Text = var_9C.Text
  loc_EB5E83: Me.FrmList.Visible = False
  loc_EB5E94: Set var_88 = Me.TxtGrid
  loc_EB5E9A: Call 0.Method_ListView_UnknownEvent_130 (0)
  loc_EB5EA2: var_9C.SetFocus
  loc_EB5EAE: Exit Sub
End Sub

Private Sub Form_Load() 'FAC480
  'Data Table: 54078C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As Variant
  loc_FAC2E4: On Error Goto loc_FAC478
  loc_FAC2E7: Call Proc_66_42_162B688()
  loc_FAC2F3: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_FAC30B: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_FAC325: Set var_A8 = Me.GridSel
  loc_FAC32B: Call 0.Method_Form_Load0 (1, var_AC)
  loc_FAC333: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_FAC351: Set var_A8 = Me.GridSel
  loc_FAC357: Call 0.Method_Form_Load0 (2, var_AC)
  loc_FAC35F: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_FAC37D: Set var_A8 = Me.GridSel
  loc_FAC383: Call 0.Method_Form_Load0 (3, var_AC)
  loc_FAC38B: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_FAC3A9: Set var_A8 = Me.GridSel
  loc_FAC3AF: Call 0.Method_Form_Load0 (4, var_AC)
  loc_FAC3B7: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_FAC3D0: Set var_A8 = Me.Check1
  loc_FAC3D6: Call 0.Method_Form_Load0 (1, var_AC)
  loc_FAC3DE: var_AC.BackColor = CLng(MemVar_1F951B4)
  loc_FAC3F7: Set var_A8 = Me.Check1
  loc_FAC3FD: Call 0.Method_Form_Load0 (2, var_AC)
  loc_FAC405: var_AC.BackColor = CLng(MemVar_1F951B4)
  loc_FAC41E: Set var_A8 = Me.Check1
  loc_FAC424: Call 0.Method_Form_Load0 (3, var_AC)
  loc_FAC42C: var_AC.BackColor = CLng(MemVar_1F951B4)
  loc_FAC445: Set var_A8 = Me.Check1
  loc_FAC44B: Call 0.Method_Form_Load0 (4, var_AC)
  loc_FAC453: var_AC.BackColor = CLng(MemVar_1F951B4)
  loc_FAC469: Set var_A8 = Me.TopCtrl1
  loc_FAC46F: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005("Add")
  loc_FAC477: Exit Sub
  loc_FAC478: ' Referenced from: FAC2E4
  loc_FAC478: Proc_6_60_E63754()
  loc_FAC47D: Exit Sub
End Sub

Private Sub Form_Resize() 'DFD938
  'Data Table: 54078C
  loc_DFD934: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E77670
  'Data Table: 54078C
  loc_E77617: Set global_64 = Nothing
  loc_E77629: Set global_68 = Nothing
  loc_E7763B: Set global_72 = Nothing
  loc_E7764D: Set global_76 = Nothing
  loc_E7765F: Set global_208 = Nothing
  loc_E7766B: MemVar_1F951E8 = Nothing
  loc_E7766F: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10E6BC0
  'Data Table: 54078C
  Dim var_C0 As Variant
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_10E68DF: var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E691D: Set var_108 = Me.TxtGrid
  loc_10E6923: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_10E692B: var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_10E695C: var_114 = CLng(Me.FGrid.Row)
  loc_10E696C: If (var_114 = CLng(2)) Then
  loc_10E6975:   var_118 = global_52
  loc_10E6980:   If Not (var_118 = "LuxuryTaxRegister") Then
  loc_10E698B:     If (var_118 = "LuxuryTaxRegisterI") Then
  loc_10E698E:     End If
  loc_10E699B:     ReDim var_11C(0 To 1)
  loc_10E69B2:     var_11C(0) = "Yes"
  loc_10E69C1:     var_11C(1) = "No"
  loc_10E6A18:     Set global_208 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C))
  loc_10E6A29:   End If
  loc_10E6A2C: Else
  loc_10E6A33:   If (var_114 = CLng(3)) Then
  loc_10E6A3C:     var_124 = global_52
  loc_10E6A47:     If Not (var_124 = "LuxuryTaxRegister") Then
  loc_10E6A52:       If (var_124 = "LuxuryTaxRegisterI") Then
  loc_10E6A55:       End If
  loc_10E6A62:       ReDim var_11C(0 To 1)
  loc_10E6A79:       var_11C(0) = "Yes"
  loc_10E6A88:       var_11C(1) = "No"
  loc_10E6ADF:       Set global_208 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 2)
  loc_10E6AF0:     End If
  loc_10E6AF3:   Else
  loc_10E6AFA:     If (var_114 = CLng(4)) Then
  loc_10E6B03:       var_128 = global_52
  loc_10E6B0E:       If Not (var_128 = "LuxuryTaxRegister") Then
  loc_10E6B19:         If (var_128 = "LuxuryTaxRegisterI") Then
  loc_10E6B1C:         End If
  loc_10E6B29:         ReDim var_11C(0 To 1)
  loc_10E6B40:         var_11C(0) = "Yes"
  loc_10E6B4F:         var_11C(1) = "No"
  loc_10E6BA6:         Set global_208 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 2, Array(var_11C))
  loc_10E6BB7:       End If
  loc_10E6BB7:     End If
  loc_10E6BB7:   End If
  loc_10E6BB7: End If
  loc_10E6BBC: Set var_88 = Nothing
  loc_10E6BBF: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12C4098
  'Data Table: 54078C
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As Variant
  Dim var_B0 As Long
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  Dim Me As Recordset15
  Dim var_108 As Variant
  loc_12C3A5E: If (CLng(Shift) = &H1B) Then
  loc_12C3A6D:   Set var_8C = Me.TxtGrid
  loc_12C3A73:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12C3A8C:   Set var_98 = Me.TxtGrid
  loc_12C3A92:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12C3A9A:   var_9C.Text = var_90.Tag
  loc_12C3AB6:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12C3ABF:   Set var_8C = Me.FGrid
  loc_12C3ADB:   Set var_8C = Me.TxtGrid
  loc_12C3AE1:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_12C3AE9:   var_90.Visible = FGrid.DispID_8001
  loc_12C3AF5:   Call Proc_66_43_E515D4(arg_14)
  loc_12C3AFA:   Exit Sub
  loc_12C3AFB: End If
  loc_12C3B0E: var_B0 = CLng(Me.FGrid.Row)
  loc_12C3B1E: If Not (var_B0 = CLng(2)) Then
  loc_12C3B28:   If Not (var_B0 = CLng(3)) Then
  loc_12C3B32:     If (var_B0 = CLng(4)) Then
  loc_12C3B35:     End If
  loc_12C3B35:   End If
  loc_12C3B3B:   var_B4 = global_52
  loc_12C3B46:   If Not (var_B4 = "LuxuryTaxRegister") Then
  loc_12C3B51:     If (var_B4 = "LuxuryTaxRegisterI") Then
  loc_12C3B54:     End If
  loc_12C3B75:     Set var_8C = Me.TxtGrid
  loc_12C3B7B:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12C3B94:     Set var_98 = Me.TxtGrid
  loc_12C3B9A:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12C3BB3:     Set var_C0 = Me.TxtGrid
  loc_12C3BB9:     Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_12C3BD2:     Set var_CC = Me.TxtGrid
  loc_12C3BD8:     Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12C3C2D:     Proc_6_114_11A421C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12C3C91:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_130 = &HFF))) Then
  loc_12C3CA1:       Call Proc_66_41_1495E1C(0, 0, var_E6, CInt(var_90.Left))
  loc_12C3CAC:       If (var_E6 = &HFF) Then
  loc_12C3CAF:         Call Proc_66_45_F00A1C(CInt(((var_9C.Top + var_C4.Height) + CDbl(&H19))), CInt(var_D0.Width))
  loc_12C3CB4:       End If
  loc_12C3CB4:     End If
  loc_12C3CB7:   Else
  loc_12C3CBF:     If Not (var_B4 = "FormCReport") Then
  loc_12C3CCA:       If (var_B4 = "GRC") Then
  loc_12C3CCD:       End If
  loc_12C3CD6:       var_B8 = Me.RecordCount
  loc_12C3CE4:       If (var_B8 > 0) Then
  loc_12C3D04:         If (CLng(Me.FGrid.Row) = CLng(2)) Then
  loc_12C3D1F:           var_108 = CVar((CDbl(Me.FGrid.Left) + CDbl(2200))) 'Single
  loc_12C3D2E:           Me.DGForFolio.Left = var_108
  loc_12C3D55:           var_108 = CVar((CDbl(Me.FGrid.Top) + CDbl(300))) 'Single
  loc_12C3D64:           Me.DGForFolio.Top = var_108
  loc_12C3D76:         Else
  loc_12C3D8E:           var_108 = CVar((CDbl(Me.FGrid.Left) + CDbl(2200))) 'Single
  loc_12C3D9D:           Me.DGForFolio.Left = var_108
  loc_12C3DC4:           var_108 = CVar((CDbl(Me.FGrid.Top) + CDbl(570))) 'Single
  loc_12C3DD3:           Me.DGForFolio.Top = var_108
  loc_12C3DE2:         End If
  loc_12C3DEC:         If (CLng(Shift) = &H1B) Then
  loc_12C3E0B:           If (CBool(Me.DGForFolio.Visible) = &HFF) Then
  loc_12C3E1D:             Me.DGForFolio.Visible = False
  loc_12C3E25:           End If
  loc_12C3E25:           Exit Sub
  loc_12C3E26:         End If
  loc_12C3E31:         Set var_C4 = Me.TxtGrid
  loc_12C3E3E:         Set var_9C = Nothing
  loc_12C3E6A:         Set var_90 = var_C4
  loc_12C3E79:         Proc_6_69_134A630(Me.DGForFolio, var_90, 0, global_200, Shift, &HFF)
  loc_12C3E93:         If (Shift = &HD) Then
  loc_12C3EA5:           Me.DGForFolio.Visible = False
  loc_12C3EBA:           Call Proc_66_41_1495E1C(0, 0, var_E6, 1, Nothing)
  loc_12C3EC5:           If (var_E6 = &HFF) Then
  loc_12C3EC8:             Call Proc_66_45_F00A1C(var_9C, 0)
  loc_12C3ECD:           End If
  loc_12C3ECD:         End If
  loc_12C3ECD:       End If
  loc_12C3ECD:     End If
  loc_12C3ECD:   End If
  loc_12C3ED0: Else
  loc_12C3ED7:   If (var_B0 = CLng(4)) Then
  loc_12C3EFB:     Set var_8C = Me.TxtGrid
  loc_12C3F01:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8)
  loc_12C3F09:     0 = var_90.Left
  loc_12C3F1A:     Set var_98 = Me.TxtGrid
  loc_12C3F20:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12C3F39:     Set var_C0 = Me.TxtGrid
  loc_12C3F3F:     Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_12C3F58:     Set var_CC = Me.TxtGrid
  loc_12C3F5E:     Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12C3FB3:     Proc_6_114_11A421C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12C3FE1:     If (CLng(Shift) = &HD) Then
  loc_12C3FF1:       Call Proc_66_41_1495E1C(0, 0, var_E6, CInt(var_B8))
  loc_12C3FFC:       If (var_E6 = &HFF) Then
  loc_12C3FFF:         Call Proc_66_45_F00A1C(CInt(((var_9C.Top + var_C4.Height) + CDbl(&H19))), CInt(var_D0.Width))
  loc_12C4004:       End If
  loc_12C4004:     End If
  loc_12C4007:   Else
  loc_12C400E:     If Not (var_B0 = CLng(0)) Then
  loc_12C4018:       If (var_B0 = CLng(1)) Then
  loc_12C401B:       End If
  loc_12C405B:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_130 = &HFF))) Then
  loc_12C406B:         Call Proc_66_41_1495E1C(0, 0, var_E6)
  loc_12C4076:         If (var_E6 = &HFF) Then
  loc_12C4079:           Call Proc_66_45_F00A1C(0)
  loc_12C407E:         End If
  loc_12C407E:       End If
  loc_12C4081:     Else
  loc_12C4088:       If (var_B0 = CLng(5)) Then
  loc_12C4091:         var_11C = global_52
  loc_12C4094:       End If
  loc_12C4094:     End If
  loc_12C4094:   End If
  loc_12C4094: End If
  loc_12C4094: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F07568
  'Data Table: 54078C
  Dim arg_10 As Integer
  Dim var_94 As Variant
  Dim var_9C As Long
  loc_F0748F: Proc_6_58_E06050(arg_10)
  loc_F0749A: Proc_6_133_E7FB08(var_94)
  loc_F074A3: arg_10 = CInt(var_94)
  loc_F074BC: var_9C = CLng(Me.FGrid.Row)
  loc_F074CC: If Not (var_9C = CLng(2)) Then
  loc_F074D6:   If (var_9C = CLng(3)) Then
  loc_F074D9:   End If
  loc_F074DF:   var_A0 = global_52
  loc_F074EA:   If Not (var_A0 = "FormCReport") Then
  loc_F074F5:     If (var_A0 = "GRC") Then
  loc_F074F8:     End If
  loc_F07514:     If (CBool(Me.DGForFolio.Visible) = &HFF) Then
  loc_F07541:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_200, arg_10, "Name")
  loc_F07550:     End If
  loc_F07550:   End If
  loc_F07553: Else
  loc_F0755A:   If (var_9C = CLng(5)) Then
  loc_F07563:     var_B0 = global_52
  loc_F07566:   End If
  loc_F07566: End If
  loc_F07566: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F885B8
  'Data Table: 54078C
  Dim var_9C As Long
  loc_F8847B: var_9C = CLng(Me.FGrid.Row)
  loc_F8848B: If Not (var_9C = CLng(2)) Then
  loc_F88495:   If (var_9C = CLng(3)) Then
  loc_F88498:   End If
  loc_F8849E:   var_A0 = global_52
  loc_F884A9:   If Not (var_A0 = "FormCReport") Then
  loc_F884B4:     If (var_A0 = "GRC") Then
  loc_F884B7:     End If
  loc_F884DA:     If ((Shift <> &HD) And (CBool(Me.DGForFolio.Visible) = 0)) Then
  loc_F884EB:       Call TxtGrid_KeyDown(KeyCode, global_128)
  loc_F884FF:       var_A8 = "Name"
  loc_F8851A:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_200, Shift)
  loc_F88529:     End If
  loc_F88529:   End If
  loc_F8852C: Else
  loc_F88533:   If (var_9C = CLng(4)) Then
  loc_F8853C:     var_B0 = global_52
  loc_F88561:     If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F88572:       Call TxtGrid_KeyDown(KeyCode, global_128)
  loc_F88577:     End If
  loc_F885A5:     Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, 0, Shift, global_208)
  loc_F885B5:   End If
  loc_F885B5: End If
  loc_F885B5: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22520
  'Data Table: 54078C
  Dim arg_10 As Integer
  loc_E224FC: On Error Goto loc_E22517
  loc_E2250A: Call Proc_66_41_1495E1C(Cancel, &HFF)
  loc_E22513: arg_10 = Not(var_88)
  loc_E22516: Exit Sub
  loc_E22517: ' Referenced from: E224FC
  loc_E22517: Proc_6_60_E63754(arg_10)
  loc_E2251C: Exit Sub
End Sub

Private Sub btnExit_Click() 'E19358
  'Data Table: 54078C
  loc_E1934D: Me.Global.Unload Me
  loc_E19355: Exit Sub
End Sub

Public Function global_52Get() '5423F8
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '542407
  global_52 = Value
End Sub

Public Function global_56Get() '542416
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '542425
  global_56 = Value
End Sub

Public Function global_60Get() '542434
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '542443
  global_60 = Value
End Sub

Public Sub SelGridKeyPressLocal(Txt, SelGrid, index, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '118A7CC
  'Data Table: 54078C
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim KeyAscii As Integer
  Dim var_138 As Variant
  loc_118A421: If ().rows < 1) Then
  loc_118A424:   Exit Sub
  loc_118A425: End If
  loc_118A439: If (Me.RecordCount <= 0) Then
  loc_118A445:   Me.TEXT = vbNullString
  loc_118A449:   Exit Sub
  loc_118A44A: End If
  loc_118A45F: If ((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Then
  loc_118A462:   Exit Sub
  loc_118A463: End If
  loc_118A46D: If (CLng(KeyAscii) = 8) Then
  loc_118A487:   If (Len(Me.SelText) > 1) Then
  loc_118A49B:     var_DC = (Len(Me.SelText) - 1)
  loc_118A4A3:     Me.SelLength = var_DC
  loc_118A4B3:     var_88 = CStr(Me.SelText)
  loc_118A4BC:   Else
  loc_118A4C5:     Me.TEXT = vbNullString
  loc_118A4DF:     Call ).SetFocus
  loc_118A4F0:     Me.Visible = False
  loc_118A4F4:     Exit Sub
  loc_118A4F5:   End If
  loc_118A4F8: Else
  loc_118A50F:   var_DC = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_118A514:   var_88 = CStr(var_DC)
  loc_118A520: End If
  loc_118A523: Me.Recordset15.MoveFirst
  loc_118A560: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_118A5A3:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_118A5B8: Else
  loc_118A5E8:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_88 & "*'", 0, 1
  loc_118A5F8: End If
  loc_118A5FA: KeyAscii = 0
  loc_118A626: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_118A637:   var_BC = CVar(Me.Recordset15.AbsolutePosition) 'Long
  loc_118A650:   ).Row = index
  loc_118A686:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_118A6A0:   Me.SelLength = CVar(Len(var_88))
  loc_118A6B8:   var_DC = ).CellLeft
  loc_118A6D8:   var_138 = (index + ).left)
  loc_118A6E0:   Me.left = var_138
  loc_118A705:   var_DC = ).CellTop
  loc_118A725:   var_138 = (index + ).top)
  loc_118A72D:   Me.top = var_138
  loc_118A750:   If (Me.Visible = False) Then
  loc_118A75A:     Me.Visible = True
  loc_118A75E:     var_9C = 0
  loc_118A767:     Call Me.ZOrder
  loc_118A770:     Call Me.SetFocus
  loc_118A794:     Me.width = ).CellWidth
  loc_118A7BD:     Me.height = ).CellHeight
  loc_118A7C8:   End If
  loc_118A7C8: End If
  loc_118A7C8: Exit Sub
End Sub

Public Function ListView_Items_RecordSet_Local(LV, Txt, index, Rst) 'FF7388
  'Data Table: 54078C
  Dim var_104 As String
  Dim var_A0 As Variant
  Dim Me As Variant
  Dim var_134 As String
  Dim var_8C As ListItem
  Dim var_E4 As Integer
  loc_FF71A8: Call Me.ListItems.Clear
  loc_FF71C5: If (Me.Recordset15.RecordCount <= 0) Then
  loc_FF71C8:   ListView_Items_RecordSet_Local = 
  loc_FF71CE: End If
  loc_FF71D9: If (global_52 <> "HundiPrint") Then
  loc_FF71E4:   var_104 = "All"
  loc_FF71ED:   var_A0 = Me.ListItems
  loc_FF71FE:   Set var_8C = var_A0.add
  loc_FF7210:   var_A0.ListItem.SubItems = 1
  loc_FF7215:   ' Referenced from: FF7310
  loc_FF7215: End If
  loc_FF721B: var_116 = Me.EOF
  loc_FF7224: If Not(var_116) Then
  loc_FF7251:   var_A0 = Me.Recordset15.Fields.Item("Name").Value
  loc_FF72BB:   If Not(IsNull(Me.Recordset15.Fields.Item("Code").Value)) Then
  loc_FF72EA:     var_134 = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_FF72F2:     Me.ListItems.add.SubItems = 1
  loc_FF7308:   End If
  loc_FF730B:   Me.MoveNext
  loc_FF7310:   GoTo loc_FF7215
  loc_FF7313: End If
  loc_FF7328: var_E4 = 0
  loc_FF7347: Set var_8C = Me.FindItem
  loc_FF7358: If (var_8C Is Nothing) Then
  loc_FF735B:   ListView_Items_RecordSet_Local = 1
  loc_FF7364: Else
  loc_FF736A:   var_8C.EnsureVisible var_116
  loc_FF7374:   var_8C.Selected = True
  loc_FF7379: End If
  loc_FF737C: Set var_88 = var_8C 
  loc_FF7380: ListView_Items_RecordSet_Local = var_104
End Function

Public Sub Proc_66_34_17FF428
  'Data Table: 54078C
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_160 As String
  Dim var_170 As Variant
  Dim var_1A4 As String
  Dim var_190 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_244 As Variant
  Dim var_264 As Variant
  Dim unk_5407BC As Connection15
  Dim var_C8 As Long
  Dim var_CC As Long
  Dim var_D0 As Long
  Dim var_D4 As Long
  Dim var_B0 As Recordset15
  Dim var_E8 As Double
  Dim var_1A0 As Variant
  Dim var_AC As Recordset15
  Dim var_E0 As Double
  Dim var_F8 As Double
  Dim var_F0 As Double
  Dim var_100 As Double
  Dim var_88 As Long
  Dim var_1E4 As Variant
  Dim var_288 As String
  Dim var_290 As String
  Dim var_2A0 As String
  Dim var_234 As Variant
  Dim var_2D4 As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_30C As Variant
  Dim var_32C As Variant
  Dim var_344 As Variant
  Dim var_354 As Variant
  Dim var_384 As Variant
  Dim var_3A4 As Variant
  Dim var_3C4 As Variant
  Dim var_3D4 As Variant
  Dim var_31C As Variant
  Dim var_394 As Variant
  Dim var_3F8 As Variant
  Dim var_408 As Variant
  Dim var_418 As Variant
  Dim var_42C As Variant
  Dim var_43C As Variant
  Dim var_45C As Variant
  Dim var_47C As Variant
  Dim var_49C As Variant
  Dim var_4BC As Variant
  Dim var_4EC As Variant
  Dim var_50C As Variant
  Dim var_53C As Variant
  loc_17FD2CF: var_118 = CVar(CLng(0)) 'Long
  loc_17FD2D4: var_138 = 1
  loc_17FD322: var_A4 = CStr(Format(CVar("01/" & CStr(Me.FGrid.TextMatrix))), "dd/MMM/yyyy"))
  loc_17FD33C: var_118 = CVar(CLng(0)) 'Long
  loc_17FD34E: Set var_14C = Me.FGrid
  loc_17FD354: var_15C = var_14C.TextMatrix)
  loc_17FD388: var_1A0 = DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & CStr(var_15C)))))
  loc_17FD3B1: var_A8 = CStr(Format(var_1A0, "dd/MMM/yyyy"))
  loc_17FD3CD: On Error Goto loc_17FF417
  loc_17FD3E0: Proc_6_7_F26918(var_15C, var_A4, " (ChkInDt Between ", 1, 1, var_A4)
  loc_17FD3EC: var_138 = " and  "
  loc_17FD400: Proc_6_7_F26918(var_1A0, var_A8, "01/" & var_15C & var_138, 1)
  loc_17FD420: Proc_6_7_F26918(var_1E4, var_A4, 1 & var_1A0 & " Or ChkOutDt Between ")
  loc_17FD440: Proc_6_7_F26918(var_234, var_A8, var_15C & var_1E4 & " and  ")
  loc_17FD456: var_C0 = CStr(var_138 & var_234 & " Or ChkOutDt Is Null)")
  loc_17FD488: var_160 = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & var_C0
  loc_17FD498: unk_5407BC.Execute CStr(var_15C) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo", var_15C, -1
  loc_17FD4A3: Set var_B0 = var_14C
  loc_17FD4C7: var_160 = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & var_C0
  loc_17FD4D7: unk_5407BC.Execute CStr(var_15C) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By DocId,SNo", var_15C, -1
  loc_17FD4E2: Set var_AC = var_14C
  loc_17FD520: var_B4 = Replace(CStr(Space(&H96)), " ", "-", 1, -1, 0)
  loc_17FD557: var_B8 = Replace(CStr(Space(&H2B)), " ", "-", 1, -1, 0)
  loc_17FD58E: var_BC = Replace(CStr(Space(&H96)), " ", "=", 1, -1, 0)
  loc_17FD5C5: var_104 = Replace(CStr(Space(&H15)), " ", "-", 1, -1, 0)
  loc_17FD5D0: Close 1
  loc_17FD5D9: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_17FD5E2: var_C8 = 0
  loc_17FD5EA: var_CC = 0
  loc_17FD5F2: var_D0 = 0
  loc_17FD5FA: var_D4 = 0
  loc_17FD600: var_D8 = vbNullString
  loc_17FD617: If (var_B0.RecordCount > 0) Then
  loc_17FD61A:   ' Referenced from: 17FDA71
  loc_17FD629:   If Not(var_B0.EOF) Then
  loc_17FD66C:     If (var_B0.Fields.Item("CheckIn").Value < CDate(CDate(var_A4))) Then
  loc_17FD674:       var_E8 = CDate(var_A4)
  loc_17FD67A:     Else
  loc_17FD6BA:       If (var_B0.Fields.Item("CheckIn").Value > CDate(CDate(var_A8))) Then
  loc_17FD6C2:         var_E8 = CDate(var_A8)
  loc_17FD6C8:       Else
  loc_17FD6F4:         var_E8 = CDate(var_B0.Fields.Item("CheckIn").Value)
  loc_17FD701:       End If
  loc_17FD701:     End If
  loc_17FD73D:     If CBool(var_B0.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_17FD780:       If (var_B0.Fields.Item("CheckOut").Value > CDate(CDate(var_A8))) Then
  loc_17FD7E1:         var_1C4 = (CVar(var_C8) + (DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FD7E7:         var_C8 = CLng(1 & (DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FD7FF:       Else
  loc_17FD877:         var_1C4 = (CVar(var_C8) + (DateDiff("D", var_E8, CVar(var_B0.Fields.Item("CheckOut")), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FD87D:         var_C8 = CLng(1 & (DateDiff("D", var_E8, CVar(var_B0.Fields.Item("CheckOut")), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FD894:       End If
  loc_17FD897:     Else
  loc_17FD8A0:       If (MemVar_1F950EC < CDate(var_A8)) Then
  loc_17FD8FF:         var_1C4 = (CVar(var_C8) + (DateDiff("D", var_E8, CDate(MemVar_1F950EC), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FD905:         var_C8 = CLng(1 & (DateDiff("D", var_E8, CDate(MemVar_1F950EC), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FD91D:       Else
  loc_17FD97B:         var_1C4 = (CVar(var_C8) + (DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FD981:         var_C8 = CLng(1 & (DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FD996:       End If
  loc_17FD996:     End If
  loc_17FDA06:     var_1C4 = (var_B0.Fields.Item("CheckIn").Value >= CDate(CDate(var_A4))) And (var_B0.Fields.Item("CheckIn").Value <= CDate(CDate(var_A8)))
  loc_17FDA1E:     If CBool(var_1C4) Then
  loc_17FDA52:       var_170 = (CVar(var_D0) + var_B0.Fields.Item("Indian").Value)
  loc_17FDA58:       var_D0 = CLng(DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1))
  loc_17FDA69:     End If
  loc_17FDA6C:     var_B0.MoveNext
  loc_17FDA71:     GoTo loc_17FD61A
  loc_17FDA74:   End If
  loc_17FDA74: End If
  loc_17FDA88: If (var_AC.RecordCount > 0) Then
  loc_17FDA8B:   ' Referenced from: 17FDEE2
  loc_17FDA9A:   If Not(var_AC.EOF) Then
  loc_17FDADD:     If (var_AC.Fields.Item("CheckIn").Value < CDate(CDate(var_A4))) Then
  loc_17FDAE5:       var_E8 = CDate(var_A4)
  loc_17FDAEB:     Else
  loc_17FDB2B:       If (var_AC.Fields.Item("CheckIn").Value > CDate(CDate(var_A8))) Then
  loc_17FDB33:         var_E8 = CDate(var_A8)
  loc_17FDB39:       Else
  loc_17FDB65:         var_E8 = CDate(var_AC.Fields.Item("CheckIn").Value)
  loc_17FDB72:       End If
  loc_17FDB72:     End If
  loc_17FDBAE:     If CBool(var_AC.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_17FDBF1:       If (var_AC.Fields.Item("CheckOut").Value > CDate(CDate(var_A8))) Then
  loc_17FDC52:         var_1C4 = (CVar(var_CC) + (DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1) * var_AC.Fields.Item("Foreigner").Value))
  loc_17FDC58:         var_CC = CLng(var_1C4)
  loc_17FDC70:       Else
  loc_17FDCE8:         var_1C4 = (CVar(var_CC) + (DateDiff("D", var_E8, CVar(var_AC.Fields.Item("CheckOut")), 1, 1) * var_AC.Fields.Item("Foreigner").Value))
  loc_17FDCEE:         var_CC = CLng(var_1C4)
  loc_17FDD05:       End If
  loc_17FDD08:     Else
  loc_17FDD11:       If (MemVar_1F950EC < CDate(var_A8)) Then
  loc_17FDD70:         var_1C4 = (CVar(var_CC) + (DateDiff("D", var_E8, CDate(MemVar_1F950EC), 1, 1) * var_AC.Fields.Item("Foreigner").Value))
  loc_17FDD76:         var_CC = CLng(var_1C4)
  loc_17FDD8E:       Else
  loc_17FDDEC:         var_1C4 = (CVar(var_CC) + (DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1) * var_AC.Fields.Item("Foreigner").Value))
  loc_17FDDF2:         var_CC = CLng(var_1C4)
  loc_17FDE07:       End If
  loc_17FDE07:     End If
  loc_17FDE77:     var_1C4 = (var_AC.Fields.Item("CheckIn").Value >= CDate(CDate(var_A4))) And (var_AC.Fields.Item("CheckIn").Value <= CDate(CDate(var_A8)))
  loc_17FDE8F:     If CBool(var_1C4) Then
  loc_17FDEAB:       var_14C = var_AC.Fields
  loc_17FDEBB:       var_15C = var_14C.Item("Foreigner").Value
  loc_17FDEC3:       var_170 = (CVar(var_D4) + var_15C)
  loc_17FDEC9:       var_D4 = CLng(DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1))
  loc_17FDEDA:     End If
  loc_17FDEDD:     var_AC.MoveNext
  loc_17FDEE2:     GoTo loc_17FDA8B
  loc_17FDEE5:   End If
  loc_17FDEE5: End If
  loc_17FDF08: Proc_6_7_F26918(var_15C, var_A4, CVar("PP.Vtype='RC' AND PP.PayCode='" & MemVar_1F95078 & "RMCH" & "'  AND PP.VDate Between "), var_D4, var_CC, var_CC, var_CC)
  loc_17FDF28: Proc_6_7_F26918(var_1C4, var_A8, var_CC & var_15C & " and  ", var_E8, var_E8)
  loc_17FDF35: var_C0 = CStr(var_E8 & var_1C4)
  loc_17FDF63: var_170 = CVar("PP.Vtype='RC' AND PP.PayCode='" & MemVar_1F95078 & "LT" & "'  AND PP.VDate Between ") 'String
  loc_17FDF71: Proc_6_7_F26918(var_15C, var_A4, var_170)
  loc_17FDF91: Proc_6_7_F26918(var_1C4, var_A8, var_D0 & var_15C & " and  ")
  loc_17FDF9E: var_C4 = CStr(var_C8 & var_1C4)
  loc_17FDFCB: var_160 = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr) As LTAmount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID  Join GuestProf GP ON GF.GuestProf=GP.Code Where  GP.Type<>'Foreign' AND " & var_C0
  loc_17FDFD4: unk_5407BC.Execute var_160, var_15C, -1
  loc_17FDFFA: var_14C = var_14C.Fields
  loc_17FE00A: var_15C = CVar(var_14C.Item("BillAmount")) 'Address
  loc_17FE011: Proc_6_39_E7D3A0(var_170, var_15C)
  loc_17FE01A: var_E0 = CSng(var_170)
  loc_17FE03B: var_160 = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr) As LTAmount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID  Join GuestProf GP ON GF.GuestProf=GP.Code Where  GP.Type<>'Foreign' AND " & var_C4
  loc_17FE044: unk_5407BC.Execute var_160, var_15C, -1
  loc_17FE06A: var_14C = var_14C.Fields
  loc_17FE07A: var_15C = CVar(var_14C.Item("LTAmount")) 'Address
  loc_17FE081: Proc_6_39_E7D3A0(var_170, var_15C, var_14C)
  loc_17FE08A: var_F8 = CSng(var_170)
  loc_17FE0AB: var_160 = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr) As LTAmount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID Join GuestProf GP ON GF.GuestProf=GP.Code Where  GP.Type='Foreign' AND " & var_C0
  loc_17FE0B4: unk_5407BC.Execute var_160, var_15C, -1
  loc_17FE0DA: var_14C = var_14C.Fields
  loc_17FE0EA: var_15C = CVar(var_14C.Item("BillAmount")) 'Address
  loc_17FE0F1: Proc_6_39_E7D3A0(var_170, var_15C, var_14C, var_F8)
  loc_17FE0FA: var_F0 = CSng(var_170)
  loc_17FE11B: var_160 = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr) As LTAmount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID Join GuestProf GP ON GF.GuestProf=GP.Code Where  GP.Type='Foreign' AND " & var_C4
  loc_17FE124: unk_5407BC.Execute var_160, var_15C, -1
  loc_17FE14A: var_14C = var_14C.Fields
  loc_17FE161: Proc_6_39_E7D3A0(var_170, CVar(var_14C.Item("LTAmount")), var_14C, var_F0)
  loc_17FE16A: var_100 = CSng(var_170)
  loc_17FE18C: Print 1, vbNullString
  loc_17FE1DD: var_1D4 = Me.FGrid.TextMatrix)
  loc_17FE202: var_288 = Proc_6_45_EADFB8("MONTH - " & CStr(var_1D4), &H14, var_1D4, 1, CVar(CLng(0)))
  loc_17FE20E: var_190 = (Space(&H2A) + CVar(Proc_6_45_EADFB8("L. T. FORM  IV", &H14, 0, 1)))
  loc_17FE215: var_1C4 = (var_D0 & Space(&H2A) + Space(2))
  loc_17FE21F: var_1F4 = (var_1C4 + CVar(var_288))
  loc_17FE225: Print 1, Space(&H2A) & CVar(var_288)
  loc_17FE253: Print 1, vbNullString
  loc_17FE285: var_190 = (Space(&H32) + CVar(Proc_6_45_EADFB8("(See Rule 4 & 16)", &H14, var_100)))
  loc_17FE28B: Print 1, var_D0 & Space(&H32)
  loc_17FE2A6: Print 1, vbNullString
  loc_17FE2D8: var_190 = (Space(&H19) + CVar(Proc_6_45_EADFB8("Monthly abstract of collection and remittance of luxury Tax", &H3C, var_E0)))
  loc_17FE2DE: Print 1, var_D0 & Space(&H19)
  loc_17FE320: var_190 = (Space(&H19) + CVar(Proc_6_45_EADFB8("Return for calender Month .....................................................", &H46)))
  loc_17FE326: Print 1, var_D0 & Space(&H19)
  loc_17FE341: Print 1, vbNullString
  loc_17FE392: var_288 = Proc_6_45_EADFB8(MemVar_1F95130 & ",", CInt((Len(MemVar_1F95130 & ",") + 1)))
  loc_17FE3B8: var_290 = Proc_6_45_EADFB8(MemVar_1F9513C, CInt((Len(MemVar_1F9513C) + 1)))
  loc_17FE3C4: var_190 = (Space(&H19) + CVar(Proc_6_45_EADFB8("Name of the Hotel : ", CInt(Len("Name of the Hotel : ")))))
  loc_17FE3CE: var_1C4 = (var_D0 & Space(&H19) + CVar(var_288))
  loc_17FE3D5: var_1E4 = (var_1C4 + Space(1))
  loc_17FE3DF: var_214 = (CVar(var_288) + CVar(var_290))
  loc_17FE3E5: Print 1, Space(&H19) & CVar(var_288) & " and  "
  loc_17FE414: Print 1, vbNullString
  loc_17FE41F: Print 1, var_BC
  loc_17FE52E: var_2A0 = Proc_6_45_EADFB8("Total No.", &HD) & "|" & Proc_6_45_EADFB8("CHECKED IN TOURISTS", &H15) & "|" & Proc_6_45_EADFB8("TOURISTS SPENT NIGHTS", &H15)
  loc_17FE54C: var_190 = (CVar(var_2A0 & "|" & Proc_6_45_EADFB8("TOTAL Charges Covered", &H15) & "|") + Space(5))
  loc_17FE556: var_1C4 = (var_D0 & Space(5) + CVar(Proc_6_45_EADFB8("TOTAL", &H10)))
  loc_17FE55F: var_1D4 = (var_1C4 + "|")
  loc_17FE566: var_1F4 = (Space(1) + Space(5))
  loc_17FE570: var_234 = (CVar(Proc_6_45_EADFB8("Total No.", &HD) & "|" & Proc_6_45_EADFB8("CHECKED IN TOURISTS", &H15)) + CVar(Proc_6_45_EADFB8("Luxury Tax", &H10)))
  loc_17FE579: var_244 = (var_234 + "|")
  loc_17FE580: var_2D4 = (1 & var_234 + Space(3))
  loc_17FE58A: var_2FC = (var_2D4 + CVar(Proc_6_45_EADFB8("Balance", &HA)))
  loc_17FE593: var_30C = (var_2FC + "|")
  loc_17FE59A: var_32C = (var_30C + Space(3))
  loc_17FE5A4: var_354 = (var_32C + CVar(Proc_6_45_EADFB8("Remarks", &HA)))
  loc_17FE5AA: Print 1, var_354
  loc_17FE6F8: var_2A0 = Proc_6_45_EADFB8("of Guests", &HD) & "|" & Proc_6_45_EADFB8("IN THE MONTH", &H15) & "|" & Proc_6_45_EADFB8("IN THE MONTH", &H15)
  loc_17FE716: var_190 = (CVar(var_2A0 & "|" & Proc_6_45_EADFB8("for Accommodation", &H15) & "|") + Space(5))
  loc_17FE720: var_1C4 = (var_D0 & Space(5) + CVar(Proc_6_45_EADFB8("Luxury tax", &H10)))
  loc_17FE729: var_1D4 = (var_1C4 + "|")
  loc_17FE730: var_1F4 = (Space(1) + Space(5))
  loc_17FE73A: var_234 = (CVar(Proc_6_45_EADFB8("of Guests", &HD) & "|" & Proc_6_45_EADFB8("IN THE MONTH", &H15)) + CVar(Proc_6_45_EADFB8("Paid to ", &H10)))
  loc_17FE743: var_244 = (var_234 + "|")
  loc_17FE74A: var_2D4 = ("|" & var_234 + Space(3))
  loc_17FE754: var_2FC = (var_2D4 + CVar(Proc_6_45_EADFB8("if", &HA)))
  loc_17FE75D: var_30C = (var_2FC + "|")
  loc_17FE763: Print 1, var_30C
  loc_17FE86D: var_170 = (Space(&HD) + "|")
  loc_17FE874: var_1A0 = (CVar(var_2A0 & "|" & Proc_6_45_EADFB8("for Accommodation", &H15) & "|") + Space(&H15))
  loc_17FE87D: var_1C4 = (CVar(Proc_6_45_EADFB8("Luxury tax", &H10)) + "|")
  loc_17FE884: var_1E4 = (var_1C4 + Space(&H15))
  loc_17FE88D: var_1F4 = (Space(5) + "|")
  loc_17FE897: var_234 = (CVar(Proc_6_45_EADFB8("collected", &H10)) + CVar(Proc_6_45_EADFB8("For Residence", &H15)))
  loc_17FE8A0: var_244 = (var_234 + "|")
  loc_17FE8A7: var_2D4 = ("|" & var_234 + Space(5))
  loc_17FE8B1: var_2FC = (var_2D4 + CVar(Proc_6_45_EADFB8("collected", &H10)))
  loc_17FE8BA: var_30C = (var_2FC + "|")
  loc_17FE8C1: var_32C = (var_30C + Space(5))
  loc_17FE8CB: var_354 = (var_32C + CVar(Proc_6_45_EADFB8("Government", &H10)))
  loc_17FE8D4: var_384 = (var_354 + "|")
  loc_17FE8DB: var_3A4 = (var_384 + Space(3))
  loc_17FE8E5: var_3C4 = (var_3A4 + CVar(Proc_6_45_EADFB8("any", &HA)))
  loc_17FE8EE: var_3D4 = (var_3C4 + "|")
  loc_17FE8F4: Print 1, var_3D4
  loc_17FE966: var_170 = (Space(&HD) + "|")
  loc_17FE970: var_190 = (CVar(var_2A0 & "|" & Proc_6_45_EADFB8("for Accommodation", &H15) & "|") + CVar(var_B8))
  loc_17FE979: var_1A0 = (Space(&H15) + "|")
  loc_17FE983: var_1C4 = (CVar(Proc_6_45_EADFB8("Luxury tax", &H10)) + CVar(var_104))
  loc_17FE98C: var_1D4 = (var_1C4 + "|")
  loc_17FE996: var_1E4 = (Space(&H15) + CVar(var_104))
  loc_17FE99F: var_1F4 = (Space(5) + "|")
  loc_17FE9A9: var_214 = (CVar(Proc_6_45_EADFB8("collected", &H10)) + CVar(var_104))
  loc_17FE9B2: var_234 = (CVar(Proc_6_45_EADFB8("For Residence", &H15)) + "|")
  loc_17FE9B9: var_264 = (var_234 + Space(&HD))
  loc_17FE9C2: var_2D4 = (Space(5) + "|")
  loc_17FE9C8: Print 1, var_2D4
  loc_17FEADC: var_46C = Space(&HD)
  loc_17FEAE9: var_170 = (Space(&HD) + "|")
  loc_17FEAF0: var_190 = CVar(Proc_6_45_EADFB8("INDIAN", &HA)) 'String
  loc_17FEAF3: var_1A0 = (CVar("Challan No" & "|" & Proc_6_45_EADFB8("for Accommodation", &H15) & "|") + var_190)
  loc_17FEAFC: var_1C4 = (CVar(Proc_6_45_EADFB8("Luxury tax", &H10)) + "|")
  loc_17FEB06: var_1E4 = (var_1C4 + CVar(Proc_6_45_EADFB8("FOREIGNER", &HA)))
  loc_17FEB0F: var_1F4 = (Space(5) + "|")
  loc_17FEB19: var_234 = (CVar("FOREIGNER") + CVar(Proc_6_45_EADFB8("INDIAN", &HA)))
  loc_17FEB22: var_244 = (var_234 + "|")
  loc_17FEB2C: var_2D4 = (Space(&HD) + CVar(Proc_6_45_EADFB8("FOREIGNER", &HA)))
  loc_17FEB35: var_2EC = (var_2D4 + "|")
  loc_17FEB3F: var_30C = (CVar(Proc_6_45_EADFB8("collected", &H10)) + CVar(Proc_6_45_EADFB8("INDIAN", &HA)))
  loc_17FEB48: var_31C = (var_30C + "|")
  loc_17FEB4F: var_32C = CVar(Proc_6_45_EADFB8("FOREIGNER", &HA)) 'String
  loc_17FEB52: var_344 = (Space(5) + var_32C)
  loc_17FEB5B: var_354 = (CVar(Proc_6_45_EADFB8("Government", &H10)) + "|")
  loc_17FEB65: var_394 = (var_354 + CVar(Proc_6_45_EADFB8("INDIAN", &HA)))
  loc_17FEB6E: var_3A4 = (Space(3) + "|")
  loc_17FEB78: var_3C4 = (var_3A4 + CVar(Proc_6_45_EADFB8("FOREIGNER", &HA)))
  loc_17FEB81: var_3D4 = (var_3C4 + "|")
  loc_17FEB8B: var_408 = (var_3D4 + CVar(Proc_6_45_EADFB8("Amount", &HA)))
  loc_17FEB94: var_418 = (var_408 + "|")
  loc_17FEB9E: var_43C = (var_418 + CVar(Proc_6_45_EADFB8("Challan No", &HA)))
  loc_17FEBA7: var_45C = (var_43C + "|")
  loc_17FEBAE: var_47C = (var_45C + var_46C)
  loc_17FEBB7: var_49C = (var_47C + "|")
  loc_17FEBBD: Print 1, var_49C
  loc_17FEC3C: Print 1, var_B4
  loc_17FEC47: Print 1, vbNullString
  loc_17FEC61: var_170 = CVar((var_D0 + var_D4)) 'Long
  loc_17FEC68: Proc_6_39_E7D3A0(var_190, CVar("Challan No" & "|" & Proc_6_45_EADFB8("for Accommodation", &H15) & "|"))
  loc_17FEC9A: Proc_6_39_E7D3A0(CVar("FOREIGNER"), var_D0)
  loc_17FECCC: Proc_6_39_E7D3A0(var_2D4, var_D4)
  loc_17FECFE: Proc_6_39_E7D3A0(var_32C, var_C8)
  loc_17FED30: Proc_6_39_E7D3A0(var_3A4, var_CC)
  loc_17FED62: Proc_6_39_E7D3A0(var_408, var_E0)
  loc_17FED94: Proc_6_39_E7D3A0(var_46C, var_F0)
  loc_17FEDC6: Proc_6_39_E7D3A0(var_4CC, var_F8)
  loc_17FEDF8: Proc_6_39_E7D3A0(var_51C, var_100)
  loc_17FEE1B: var_1C4 = (Space(2) + CVar(Proc_6_45_EADFB8(CStr(var_190), 8)))
  loc_17FEE22: var_1E4 = (var_1C4 + Space(3))
  loc_17FEE2C: var_234 = (Space(5) + CVar(Proc_6_52_EAE084(CStr(CVar("FOREIGNER")), 8)))
  loc_17FEE33: var_264 = (var_234 + Space(3))
  loc_17FEE3D: var_2FC = (CVar(Proc_6_45_EADFB8("FOREIGNER", &HA)) + CVar(Proc_6_52_EAE084(CStr(var_2D4), 8)))
  loc_17FEE44: var_31C = (CVar(Proc_6_45_EADFB8("INDIAN", &HA)) + Space(3))
  loc_17FEE4E: var_354 = (Space(5) + CVar(Proc_6_52_EAE084(CStr(var_32C), 8)))
  loc_17FEE55: var_394 = (var_354 + Space(3))
  loc_17FEE5F: var_3C4 = (Space(3) + CVar(Proc_6_52_EAE084(CStr(var_3A4), 8)))
  loc_17FEE66: var_3F8 = (var_3C4 + Space(3))
  loc_17FEE70: var_42C = (CVar(Proc_6_45_EADFB8("Amount", &HA)) + CVar(Proc_6_52_EAE084(CStr(var_408), 8)))
  loc_17FEE77: var_45C = (CVar(Proc_6_45_EADFB8("Challan No", &HA)) + Space(3))
  loc_17FEE81: var_49C = (var_45C + CVar(Proc_6_52_EAE084(CStr(var_46C), 8)))
  loc_17FEE88: var_4BC = (var_49C + Space(3))
  loc_17FEE92: var_4EC = (var_4BC + CVar(Proc_6_52_EAE084(CStr(var_4CC), 8)))
  loc_17FEE99: var_50C = (var_4EC + Space(3))
  loc_17FEEA3: var_53C = (var_50C + CVar(Proc_6_52_EAE084(CStr(var_51C), 8)))
  loc_17FEEA9: Print 1, var_53C
  loc_17FEF38: Print 1, vbNullString
  loc_17FEF43: Print 1, vbNullString
  loc_17FEF4E: Print 1, vbNullString
  loc_17FEF59: Print 1, var_BC
  loc_17FEF64: Print 1, vbNullString
  loc_17FEF6F: Print 1, vbNullString
  loc_17FEF95: var_190 = Space((&H96 - (&H5A + Len("Signature:"))))
  loc_17FEFBB: var_1A4 = Replace(CStr(var_190), " ", ".", 1, -1, 0)
  loc_17FEFC6: var_170 = (Space(&H5A) + "Signature:")
  loc_17FEFD0: var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(var_190), 8) & "|" & Proc_6_45_EADFB8("for Accommodation", &H15) & "|") + CVar("FOREIGNER"))
  loc_17FEFD6: Print 1, var_1C4
  loc_17FEFF5: Print 1, vbNullString
  loc_17FF01B: var_190 = Space((&H96 - (&H5A + Len("Name:"))))
  loc_17FF041: var_1A4 = Replace(CStr(var_190), " ", ".", 1, -1, 0)
  loc_17FF04C: var_170 = (Space(&H5A) + "Name:")
  loc_17FF056: var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(var_190), 8) & "|" & Proc_6_45_EADFB8("for Accommodation", &H15) & "|") + CVar("FOREIGNER"))
  loc_17FF05C: Print 1, var_1C4
  loc_17FF07B: Print 1, vbNullString
  loc_17FF0A1: var_190 = Space((&H96 - (&H5A + Len("Designation:"))))
  loc_17FF0C7: var_1A4 = Replace(CStr(var_190), " ", ".", 1, -1, 0)
  loc_17FF0D2: var_170 = (Space(&H5A) + "Designation:")
  loc_17FF0DC: var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(var_190), 8) & "|" & Proc_6_45_EADFB8("for Accommodation", &H15) & "|") + CVar("FOREIGNER"))
  loc_17FF0E2: Print 1, var_1C4
  loc_17FF111: var_170 = (Space(2) + "Date ........................")
  loc_17FF117: Print 1, CVar(Proc_6_45_EADFB8(CStr(var_190), 8) & "|" & Proc_6_45_EADFB8("for Accommodation", &H15) & "|")
  loc_17FF129: Print 1, vbNullString
  loc_17FF14F: var_190 = Space((&H96 - (5 + Len("I, the above named Shri "))))
  loc_17FF175: var_1A4 = Replace(CStr(var_190), " ", ".", 1, -1, 0)
  loc_17FF180: var_170 = (Space(5) + "I, the above named Shri ")
  loc_17FF18A: var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(var_190), 8) & "|" & Proc_6_45_EADFB8("for Accommodation", &H15) & "|") + CVar("FOREIGNER"))
  loc_17FF190: Print 1, var_1C4
  loc_17FF1AF: Print 1, vbNullString
  loc_17FF1DA: var_190 = Space((&H96 - ((2 + Len("Residence of ")) + Len("do hereby solemnly affirm and"))))
  loc_17FF200: var_1A4 = Replace(CStr(var_190), " ", ".", 1, -1, 0)
  loc_17FF20B: var_170 = (Space(2) + "Residence of ")
  loc_17FF215: var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(var_190), 8) & "|" & Proc_6_45_EADFB8("for Accommodation", &H15) & "|") + CVar("FOREIGNER"))
  loc_17FF21E: var_1D4 = (var_1C4 + " do hereby solemnly affirm and")
  loc_17FF224: Print 1, Space(3)
  loc_17FF245: Print 1, vbNullString
  loc_17FF260: var_170 = (Space(2) + "State that the contents of the return are true to best of my information and belief.")
  loc_17FF266: Print 1, CVar(Proc_6_45_EADFB8(CStr(var_190), 8) & "|" & Proc_6_45_EADFB8("for Accommodation", &H15) & "|")
  loc_17FF278: Print 1, vbNullString
  loc_17FF2AA: var_190 = Space((&H96 - ((2 + Len(MemVar_1F9513C)) + Len("For " & MemVar_1F95130))))
  loc_17FF2B8: var_170 = (Space(2) + CVar(MemVar_1F9513C))
  loc_17FF2BF: var_1A0 = (CVar(Proc_6_45_EADFB8(CStr(var_190), 8) & "|" & Proc_6_45_EADFB8("for Accommodation", &H15) & "|") + var_190)
  loc_17FF2C8: var_1C4 = (CVar("FOREIGNER") + "For ")
  loc_17FF2D2: var_1D4 = (var_1C4 + CVar(MemVar_1F95130))
  loc_17FF2D8: Print 1, Space(3)
  loc_17FF2F5: Print 1, vbNullString
  loc_17FF300: Print 1, vbNullString
  loc_17FF32B: var_190 = Space((&H96 - ((2 + Len("Date ........................")) + Len(" Signature of Prop. / Manager"))))
  loc_17FF338: var_170 = (Space(2) + "Date ........................")
  loc_17FF33F: var_1A0 = (CVar(Proc_6_45_EADFB8(CStr(var_190), 8) & "|" & Proc_6_45_EADFB8("for Accommodation", &H15) & "|") + var_190)
  loc_17FF348: var_1C4 = (CVar("FOREIGNER") + " Signature of Prop. / Manager")
  loc_17FF34E: Print 1, var_1C4
  loc_17FF36A: var_88 = (var_88 + &H1B)
  loc_17FF37F: Print 1, Chr(&HC)
  loc_17FF38A: Close 1
  loc_17FF393: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_17FF3A3: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_17FF3AE: Close 1
  loc_17FF3B8: If (MemVar_1F953BC = "Y") Then
  loc_17FF3D4:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_17FF3DE: Else
  loc_17FF3F7:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_17FF3FE: End If
  loc_17FF403: global_88 = 0
  loc_17FF40B: Set var_B0 = Nothing
  loc_17FF413: Set var_AC = Nothing
  loc_17FF416: Exit Sub
  loc_17FF417: ' Referenced from: 17FD3CD
  loc_17FF417: Proc_6_60_E63754(global_88, 0)
  loc_17FF421: global_88 = 0
  loc_17FF424: Exit Sub
End Sub

Public Sub Proc_66_35_15CAB90
  'Data Table: 54078C
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_13C As String
  Dim var_14C As Variant
  Dim var_104 As Variant
  Dim var_1A0 As Variant
  Dim var_AC As Long
  Dim var_B0 As Long
  Dim var_B4 As Long
  Dim var_B8 As Long
  Dim unk_5407BC As Connection15
  Dim var_9C As Recordset15
  Dim var_24C As Field20
  Dim var_C4 As Double
  Dim var_17C As Variant
  Dim var_250 As Fields15
  Dim var_98 As Recordset15
  Dim var_CC As Double
  Dim var_DC As Double
  Dim var_D4 As Double
  Dim var_E4 As Double
  Dim var_258 As Recordset15
  loc_15C98A4: On Error Goto loc_15CAB7F
  loc_15C98AA: var_F4 = CVar(CLng(0)) 'Long
  loc_15C98AF: var_114 = 1
  loc_15C98FD: var_8C = CStr(Format(CVar("01/" & CStr(Me.FGrid.TextMatrix))), "dd/MMM/yyyy"))
  loc_15C9917: var_F4 = CVar(CLng(0)) 'Long
  loc_15C9929: Set var_128 = Me.FGrid
  loc_15C992F: var_138 = var_128.TextMatrix)
  loc_15C9963: var_17C = DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & CStr(var_138)))))
  loc_15C998C: var_90 = CStr(Format(var_17C, "dd/MMM/yyyy"))
  loc_15C99B8: Proc_6_7_F26918(var_138, var_8C, " (ChkInDt Between ", 1, 1, var_8C)
  loc_15C99C4: var_114 = " and  "
  loc_15C99D8: Proc_6_7_F26918(var_17C, var_90, "01/" & var_138 & var_114, 1)
  loc_15C99F8: Proc_6_7_F26918(var_1C0, var_8C, 1 & var_17C & " Or ChkOutDt Between ")
  loc_15C9A18: Proc_6_7_F26918(var_210, var_90, var_138 & var_1C0 & " and  ")
  loc_15C9A2E: var_A4 = CStr(var_114 & var_210 & " Or ChkOutDt Is Null)")
  loc_15C9A51: var_AC = 0
  loc_15C9A59: var_B0 = 0
  loc_15C9A61: var_B4 = 0
  loc_15C9A69: var_B8 = 0
  loc_15C9A6F: var_BC = vbNullString
  loc_15C9A86: var_13C = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & var_A4
  loc_15C9A96: unk_5407BC.Execute CStr(var_138) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo", var_138, -1
  loc_15C9AA1: Set var_9C = var_128
  loc_15C9AC5: var_13C = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & var_A4
  loc_15C9AD5: unk_5407BC.Execute CStr(var_138) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By DocId,SNo", var_138, -1
  loc_15C9AE0: Set var_98 = var_128
  loc_15C9B04: If (var_9C.RecordCount > 0) Then
  loc_15C9B07:   ' Referenced from: 15C9F5E
  loc_15C9B16:   If Not(var_9C.EOF) Then
  loc_15C9B59:     If (var_9C.Fields.Item("CheckIn").Value < CDate(CDate(var_8C))) Then
  loc_15C9B61:       var_C4 = CDate(var_8C)
  loc_15C9B67:     Else
  loc_15C9BA7:       If (var_9C.Fields.Item("CheckIn").Value > CDate(CDate(var_90))) Then
  loc_15C9BAF:         var_C4 = CDate(var_90)
  loc_15C9BB5:       Else
  loc_15C9BE1:         var_C4 = CDate(var_9C.Fields.Item("CheckIn").Value)
  loc_15C9BEE:       End If
  loc_15C9BEE:     End If
  loc_15C9C2A:     If CBool(var_9C.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_15C9C6D:       If (var_9C.Fields.Item("CheckOut").Value > CDate(CDate(var_90))) Then
  loc_15C9CCE:         var_1A0 = (CVar(var_AC) + (DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C9CD4:         var_AC = CLng(1 & (DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C9CEC:       Else
  loc_15C9D64:         var_1A0 = (CVar(var_AC) + (DateDiff("D", var_C4, CVar(var_9C.Fields.Item("CheckOut")), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C9D6A:         var_AC = CLng(1 & (DateDiff("D", var_C4, CVar(var_9C.Fields.Item("CheckOut")), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C9D81:       End If
  loc_15C9D84:     Else
  loc_15C9D8D:       If (MemVar_1F950EC < CDate(var_90)) Then
  loc_15C9DEC:         var_1A0 = (CVar(var_AC) + (DateDiff("D", var_C4, CDate(MemVar_1F950EC), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C9DF2:         var_AC = CLng(1 & (DateDiff("D", var_C4, CDate(MemVar_1F950EC), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C9E0A:       Else
  loc_15C9E68:         var_1A0 = (CVar(var_AC) + (DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C9E6E:         var_AC = CLng(1 & (DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C9E83:       End If
  loc_15C9E83:     End If
  loc_15C9EF3:     var_1A0 = (var_9C.Fields.Item("CheckIn").Value >= CDate(CDate(var_8C))) And (var_9C.Fields.Item("CheckIn").Value <= CDate(CDate(var_90)))
  loc_15C9F0B:     If CBool(var_1A0) Then
  loc_15C9F3F:       var_14C = (CVar(var_B4) + var_9C.Fields.Item("Indian").Value)
  loc_15C9F45:       var_B4 = CLng(DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1))
  loc_15C9F56:     End If
  loc_15C9F59:     var_9C.MoveNext
  loc_15C9F5E:     GoTo loc_15C9B07
  loc_15C9F61:   End If
  loc_15C9F61: End If
  loc_15C9F67: var_244 = var_98.RecordCount
  loc_15C9F75: If (var_244 > 0) Then
  loc_15C9F78:   ' Referenced from: 15CA3CF
  loc_15C9F87:   If Not(var_98.EOF) Then
  loc_15C9FCA:     If (var_98.Fields.Item("CheckIn").Value < CDate(CDate(var_8C))) Then
  loc_15C9FD2:       var_C4 = CDate(var_8C)
  loc_15C9FD8:     Else
  loc_15CA018:       If (var_98.Fields.Item("CheckIn").Value > CDate(CDate(var_90))) Then
  loc_15CA020:         var_C4 = CDate(var_90)
  loc_15CA026:       Else
  loc_15CA052:         var_C4 = CDate(var_98.Fields.Item("CheckIn").Value)
  loc_15CA05F:       End If
  loc_15CA05F:     End If
  loc_15CA09B:     If CBool(var_98.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_15CA0DE:       If (var_98.Fields.Item("CheckOut").Value > CDate(CDate(var_90))) Then
  loc_15CA13F:         var_1A0 = (CVar(var_B0) + (DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1) * var_98.Fields.Item("Foreigner").Value))
  loc_15CA145:         var_B0 = CLng(var_1A0)
  loc_15CA15D:       Else
  loc_15CA1D5:         var_1A0 = (CVar(var_B0) + (DateDiff("D", var_C4, CVar(var_98.Fields.Item("CheckOut")), 1, 1) * var_98.Fields.Item("Foreigner").Value))
  loc_15CA1DB:         var_B0 = CLng(var_1A0)
  loc_15CA1F2:       End If
  loc_15CA1F5:     Else
  loc_15CA1FE:       If (MemVar_1F950EC < CDate(var_90)) Then
  loc_15CA25D:         var_1A0 = (CVar(var_B0) + (DateDiff("D", var_C4, CDate(MemVar_1F950EC), 1, 1) * var_98.Fields.Item("Foreigner").Value))
  loc_15CA263:         var_B0 = CLng(var_1A0)
  loc_15CA27B:       Else
  loc_15CA2D9:         var_1A0 = (CVar(var_B0) + (DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1) * var_98.Fields.Item("Foreigner").Value))
  loc_15CA2DF:         var_B0 = CLng(var_1A0)
  loc_15CA2F4:       End If
  loc_15CA2F4:     End If
  loc_15CA33E:     var_250 = var_98.Fields
  loc_15CA360:     var_17C = (var_250.Item("CheckIn").Value <= CDate(CDate(var_90)))
  loc_15CA37C:     If CBool((var_98.Fields.Item("CheckIn").Value >= CDate(CDate(var_8C))) And var_17C) Then
  loc_15CA398:       var_128 = var_98.Fields
  loc_15CA3A8:       var_138 = var_128.Item("Foreigner").Value
  loc_15CA3B0:       var_14C = (CVar(var_B8) + var_138)
  loc_15CA3B6:       var_B8 = CLng(DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1))
  loc_15CA3C7:     End If
  loc_15CA3CA:     var_98.MoveNext
  loc_15CA3CF:     GoTo loc_15C9F78
  loc_15CA3D2:   End If
  loc_15CA3D2: End If
  loc_15CA3E2: Proc_6_7_F26918(var_138, var_8C, "R.Nature='Room Charge' AND PP.VDate Between ", var_B8, var_B0, var_B0, var_B0)
  loc_15CA402: Proc_6_7_F26918(var_17C, var_90, var_B0 & var_138 & " and  ", var_C4, var_C4)
  loc_15CA40A: var_1A0 = var_C4 & var_17C 
  loc_15CA40F: var_A4 = CStr(var_1A0)
  loc_15CA434: var_14C = CVar("PP.PayCode='" & MemVar_1F95078 & "LT" & "'  AND PP.VDate Between ") 'String
  loc_15CA442: Proc_6_7_F26918(var_138, var_8C, var_14C)
  loc_15CA45A: var_114 = var_90
  loc_15CA462: Proc_6_7_F26918(var_1A0, var_114, var_B4 & var_138 & " and  ")
  loc_15CA46F: var_A8 = CStr(var_AC & var_1A0)
  loc_15CA49C: var_13C = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr-pp.AmtCr) As Amount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID  Join GuestProf GP ON GF.GuestProf=GP.Code Left Join RevMast R On R.Code=pp.PayCode Where GP.Type<>'Foreign' AND " & var_A4
  loc_15CA4A5: unk_5407BC.Execute MemVar_1F95078 & "LT", var_138, -1
  loc_15CA4CB: var_128 = var_128.Fields
  loc_15CA4DB: var_138 = CVar(var_128.Item("Amount")) 'Address
  loc_15CA4E2: Proc_6_39_E7D3A0(var_14C, var_138)
  loc_15CA50B: var_CC = CSng(Format(var_14C, "0.00"))
  loc_15CA530: var_13C = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr-pp.AmtCr) As Amount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID  Join GuestProf GP ON GF.GuestProf=GP.Code Where GP.Type<>'Foreign' AND " & var_A8
  loc_15CA539: unk_5407BC.Execute MemVar_1F95078 & "LT", var_138, -1
  loc_15CA55F: var_128 = var_128.Fields
  loc_15CA56F: var_138 = CVar(var_128.Item("Amount")) 'Address
  loc_15CA576: Proc_6_39_E7D3A0(var_14C, var_138, var_128, var_CC)
  loc_15CA59F: var_DC = CSng(Format(var_14C, "0.00"))
  loc_15CA5C4: var_13C = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr-pp.AmtCr) As Amount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID Join GuestProf GP ON GF.GuestProf=GP.Code Left Join RevMast R On R.Code=pp.PayCode Where GP.Type='Foreign' AND " & var_A4
  loc_15CA5CD: unk_5407BC.Execute MemVar_1F95078 & "LT", var_138, -1
  loc_15CA5F3: var_128 = var_128.Fields
  loc_15CA603: var_138 = CVar(var_128.Item("Amount")) 'Address
  loc_15CA60A: Proc_6_39_E7D3A0(var_14C, var_138, var_128, var_DC, 1)
  loc_15CA633: var_D4 = CSng(Format(var_14C, "0.00"))
  loc_15CA658: var_13C = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr-pp.AmtCr) As Amount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID Join GuestProf GP ON GF.GuestProf=GP.Code Where GP.Type='Foreign' AND " & var_A8
  loc_15CA661: unk_5407BC.Execute MemVar_1F95078 & "LT", var_138, -1
  loc_15CA67B: var_F4 = "Amount"
  loc_15CA687: var_128 = var_128.Fields
  loc_15CA68F: var_24C = var_128.Item(var_F4)
  loc_15CA69E: Proc_6_39_E7D3A0(var_14C, CVar(var_24C), var_128, var_D4, 1, 1)
  loc_15CA6AD: var_104 = "0.00"
  loc_15CA6C7: var_E4 = CSng(Format(var_14C, var_104))
  loc_15CA6E5: Call Proc_66_54_FC5E98(New, var_128, var_E4, 1, 1)
  loc_15CA6ED: Set var_A0 = var_128
  loc_15CA6F3: Set var_258 = var_A0 
  loc_15CA702: Me.Recordset15.AddNew var_F4, var_104
  loc_15CA70C: var_138 = CVar(CStr(var_B4)) 'String
  loc_15CA719: var_258.Collect = "IndianGuest"
  loc_15CA726: var_138 = CVar(CStr(var_B8)) 'String
  loc_15CA733: var_258.Collect = "ForeignerGuest"
  loc_15CA740: var_138 = CVar(CStr(var_AC)) 'String
  loc_15CA74D: var_258.Collect = "IndianNight"
  loc_15CA75A: var_138 = CVar(CStr(var_B0)) 'String
  loc_15CA767: var_258.Collect = "ForeignerNight"
  loc_15CA774: var_138 = CVar(CStr(var_CC)) 'String
  loc_15CA781: var_258.Collect = "IndianChrgs"
  loc_15CA78E: var_138 = CVar(CStr(var_D4)) 'String
  loc_15CA79B: var_258.Collect = "ForeignerChrgs"
  loc_15CA7A8: var_138 = CVar(CStr(var_DC)) 'String
  loc_15CA7B5: var_258.Collect = "IndianTax"
  loc_15CA7C6: var_F4 = "ForeignerTax"
  loc_15CA7CF: var_258.Collect = var_F4
  loc_15CA7E2: var_258.Update var_F4, var_104
  loc_15CA7E9: Set var_258 = Nothing 
  loc_15CA7F3: global_84 = "Form-4"
  loc_15CA7FD: Call 0.Method_arg_50 (MemVar_1F95078 & "LT", CVar(CStr(var_E4)), CVar(CStr(var_E4)), CVar(CStr(var_E4)), CVar(CStr(var_E4)), CVar(CStr(var_E4)), CVar(CStr(var_E4)))
  loc_15CA805: var_138 = CVar(MemVar_1F95078 & "LT") 'String
  loc_15CA81A: global_80 = CStr(Ucase(var_138))
  loc_15CA84F: Set var_128 = var_A0 
  loc_15CA856: CreateFieldDefFile(var_128, MemVar_1F950B4 & "\" & global_84 & ".ttx", &HFF, var_138, var_138)
  loc_15CA881: var_13C = MemVar_1F950B4 & "\"
  loc_15CA89B: Call 0.Method_arg_1C (var_13C & global_84 & ".RPT", var_F4, var_128, 1)
  loc_15CA8A6: MemVar_1F951E8 = var_128
  loc_15CA8CF: Call 0.Method_arg_64 (var_128, CVar(var_128), var_104, var_114)
  loc_15CA8D7: Call 0.Method_arg_2C (1, 1)
  loc_15CA8E5: Call 0.Method_arg_150 (var_128)
  loc_15CA8FE: Call 0.Method_arg_90 (var_128, var_244, var_94)
  loc_15CA906: Call 0.Method_arg_24 (1)
  loc_15CA911: For var_268 =  To var_244: var_AC = var_268 'Long
  loc_15CA929:   Call 0.Method_arg_90 (var_128, var_94)
  loc_15CA931:   Call 0.Method_arg_20 (var_24C)
  loc_15CA939:   Call 0.Method_arg_30 (var_13C)
  loc_15CA94F:   var_278 = Ucase(CVar(var_13C)) 'Variant
  loc_15CA968:   If (var_278 = "FROMDATE") Then
  loc_15CA9B1:     Call 0.Method_arg_90 (var_24C, var_94, var_250)
  loc_15CA9B9:     Call 0.Method_arg_20 (1 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(0)))
  loc_15CA9C1:     Call 0.Method_arg_38 ("'")
  loc_15CA9DE:   Else
  loc_15CA9E9:     If (var_278 = "TODATE") Then
  loc_15CAA04:       Set var_128 = Me.FGrid
  loc_15CAA32:       Call 0.Method_arg_90 (var_24C, var_94, var_250)
  loc_15CAA3A:       Call 0.Method_arg_20 (1 & CStr(var_128.TextMatrix)) & "'", CVar(CLng(1)))
  loc_15CAA42:       Call 0.Method_arg_38 ("'")
  loc_15CAA5F:     Else
  loc_15CAA6A:       If (var_278 = "TITLE") Then
  loc_15CAA90:         Call 0.Method_arg_90 (var_128, var_94)
  loc_15CAA98:         Call 0.Method_arg_20 (var_24C)
  loc_15CAAA0:         Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_15CAAB6:       Else
  loc_15CAAC1:         If (var_278 = "PRINTDATE") Then
  loc_15CAAF0:           Call 0.Method_arg_90 (var_128, var_94)
  loc_15CAAF8:           Call 0.Method_arg_20 (var_24C)
  loc_15CAB00:           Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F950EC) & "'"))
  loc_15CAB16:         End If
  loc_15CAB16:       End If
  loc_15CAB16:     End If
  loc_15CAB16:   End If
  loc_15CAB19: Next var_268 'Long
  loc_15CAB23: Set var_24C = Nothing
  loc_15CAB3C: Set var_128 = MemVar_1F951E8 
  loc_15CAB48: Proc_6_99_1484404(var_128, 0, global_80)
  loc_15CAB53: MemVar_1F951E8 = var_128
  loc_15CAB63: global_88 = 0
  loc_15CAB6B: Set var_A0 = Nothing
  loc_15CAB73: Set var_9C = Nothing
  loc_15CAB7B: Set var_98 = Nothing
  loc_15CAB7E: Exit Sub
  loc_15CAB7F: ' Referenced from: 15C98A4
  loc_15CAB7F: Proc_6_60_E63754(global_88, &HFF)
  loc_15CAB89: global_88 = 0
  loc_15CAB8C: Exit Sub
End Sub

Public Sub Proc_66_36_14E4BB4(arg_C) '14E4BB4
  'Data Table: 54078C
  Dim var_8C As Recordset15
  loc_14E3DA1: Set var_8C = arg_C 
  loc_14E3DC9: var_8C.Fields.Append "DocId", &HC8, &H28
  loc_14E3DF5: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_14E3E21: var_8C.Fields.Append "PartyAdd1", &HC8, &H64
  loc_14E3E4D: var_8C.Fields.Append "PartyAdd2", &HC8, &H64
  loc_14E3E79: var_8C.Fields.Append "PartyCity", &HC8, &H32
  loc_14E3EA5: var_8C.Fields.Append "ChkInDate", &HC8, &H14
  loc_14E3ED1: var_8C.Fields.Append "ChkOutDate", &HC8, &H14
  loc_14E3EFD: var_8C.Fields.Append "ChkInTime", &HC8, &H14
  loc_14E3F29: var_8C.Fields.Append "FolioNo", &HC8, &HF
  loc_14E3F55: var_8C.Fields.Append "Persons", &HC8, &HF
  loc_14E3F81: var_8C.Fields.Append "RoomRate", &HC8, &H14
  loc_14E3FAD: var_8C.Fields.Append "RoomNo", &HC8, &HA
  loc_14E3FD9: var_8C.Fields.Append "DisRoom", &HC8, &H14
  loc_14E4005: var_8C.Fields.Append "incTax", &HC8, &HA
  loc_14E4031: var_8C.Fields.Append "ServiceChrg", &HC8, &HA
  loc_14E405D: var_8C.Fields.Append "Company", &HC8, &H4B
  loc_14E4089: var_8C.Fields.Append "Nationality", &HC8, &H1E
  loc_14E40B5: var_8C.Fields.Append "Agent", &HC8, &H4B
  loc_14E40E1: var_8C.Fields.Append "Plan", &HC8, &H32
  loc_14E410D: var_8C.Fields.Append "Phone", &HC8, &H19
  loc_14E4139: var_8C.Fields.Append "ArrFrom", &HC8, &H1E
  loc_14E4165: var_8C.Fields.Append "Destination", &HC8, &H32
  loc_14E4191: var_8C.Fields.Append "Cmt1", &HC8, &H32
  loc_14E41BD: var_8C.Fields.Append "Cmt2", &HC8, &H32
  loc_14E41E9: var_8C.Fields.Append "Cmt3", &HC8, &H32
  loc_14E4215: var_8C.Fields.Append "grpRooms", &HC8, &HFF
  loc_14E4241: var_8C.Fields.Append "Leader", &HC8, &H14
  loc_14E426D: var_8C.Fields.Append "User", &HC8, &H32
  loc_14E4299: var_8C.Fields.Append "Remark", &HC8, &H50
  loc_14E42C5: var_8C.Fields.Append "Picture1", &HCD, &H3E8
  loc_14E42F1: var_8C.Fields.Append "PlanAmt", &HC8, &HC
  loc_14E431D: var_8C.Fields.Append "EMailId", &HC8, &H32
  loc_14E4349: var_8C.Fields.Append "TravelMode", &HC8, &H1E
  loc_14E4375: var_8C.Fields.Append "RoomCat", &HC8, &H19
  loc_14E43A1: var_8C.Fields.Append "BookedBy", &HC8, &H19
  loc_14E43CD: var_8C.Fields.Append "ResMode", &HC8, &H1E
  loc_14E43F9: var_8C.Fields.Append "IdProof", &HC8, &H32
  loc_14E4425: var_8C.Fields.Append "Anniversary", &HC8, &HC
  loc_14E4451: var_8C.Fields.Append "DateOfBirth", &HC8, &HC
  loc_14E447D: var_8C.Fields.Append "Age", &HC8, 4
  loc_14E44A9: var_8C.Fields.Append "P_RegNo", &HC8, 8
  loc_14E44D5: var_8C.Fields.Append "P_SerialNo", &HC8, 8
  loc_14E4501: var_8C.Fields.Append "P_GuestName", &HC8, &H23
  loc_14E452D: var_8C.Fields.Append "P_Add1", &HC8, &H32
  loc_14E4559: var_8C.Fields.Append "P_Add2", &HC8, &H32
  loc_14E4585: var_8C.Fields.Append "P_Nationality", &HC8, &H32
  loc_14E45B1: var_8C.Fields.Append "P_Age", &HC8, 4
  loc_14E45DD: var_8C.Fields.Append "P_PurVisit", &HC8, &H32
  loc_14E4609: var_8C.Fields.Append "P_AddIndiaIfAny", &HC8, &H32
  loc_14E4635: var_8C.Fields.Append "P_DateArr", &HC8, &HC
  loc_14E4661: var_8C.Fields.Append "P_ArrPlace", &HC8, &H32
  loc_14E468D: var_8C.Fields.Append "P_PropStay", &HC8, &H32
  loc_14E46B9: var_8C.Fields.Append "P_ArrFrom", &HC8, &H32
  loc_14E46E5: var_8C.Fields.Append "P_ModeTravelatArrival", &HC8, &H32
  loc_14E4711: var_8C.Fields.Append "P_ProposedDepart", &HC8, &H32
  loc_14E473D: var_8C.Fields.Append "P_GoingTo", &HC8, &H32
  loc_14E4769: var_8C.Fields.Append "P_ModeTravelAfterDepart", &HC8, &H32
  loc_14E4795: var_8C.Fields.Append "P_VisaIssAuth", &HC8, &H32
  loc_14E47C1: var_8C.Fields.Append "P_Extension", &HC8, &H64
  loc_14E47ED: var_8C.Fields.Append "P_PassNo", &HC8, &H32
  loc_14E4819: var_8C.Fields.Append "P_IssDate", &HC8, &HC
  loc_14E4845: var_8C.Fields.Append "P_IssPlace", &HC8, &H32
  loc_14E4871: var_8C.Fields.Append "P_PassExpDate", &HC8, &HC
  loc_14E489D: var_8C.Fields.Append "P_WorkPermit", &HC8, &H32
  loc_14E48C9: var_8C.Fields.Append "P_VisaNo", &HC8, &H32
  loc_14E48F5: var_8C.Fields.Append "P_VisaIssDate", &HC8, &HC
  loc_14E4921: var_8C.Fields.Append "P_VisaIssPlace", &HC8, &H32
  loc_14E494D: var_8C.Fields.Append "P_VisaExpDate", &HC8, &HC
  loc_14E4979: var_8C.Fields.Append "P_VisaDuration", &HC8, &H32
  loc_14E49A5: var_8C.Fields.Append "P_Vdate", &HC8, &HC
  loc_14E49D1: var_8C.Fields.Append "FatherName", &HC8, &H4B
  loc_14E49FD: var_8C.Fields.Append "PurVisit", &HC8, &H4B
  loc_14E4A29: var_8C.Fields.Append "Mobile", &HC8, &H19
  loc_14E4A55: var_8C.Fields.Append "IdProofPic", &HCD, &H3E8
  loc_14E4A81: var_8C.Fields.Append "IdProofNo", &HC8, &H4B
  loc_14E4AAD: var_8C.Fields.Append "grpFolios", &HC8, &HFF
  loc_14E4AD9: var_8C.Fields.Append "CompanyGSTIN", &HC8, &H14
  loc_14E4B05: var_8C.Fields.Append "AgentGSTIN", &HC8, &H14
  loc_14E4B31: var_8C.Fields.Append "Nights", &HC8, 5
  loc_14E4B5D: var_8C.Fields.Append "Days", &HC8, 5
  loc_14E4B6D: var_8C.CursorType = 3
  loc_14E4B7A: var_8C.LockType = 3
  loc_14E4B99: var_8C.Open var_A0, var_B0, -1
  loc_14E4BA0: Set var_8C = Nothing 
  loc_14E4BA7: Set var_88 = arg_C 
  loc_14E4BAB: Proc_66_36_14E4BB4 = -1
End Sub

Public Sub Proc_66_37_192A048
  'Data Table: 54078C
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_26C As Double
  Dim var_138 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_274 As Double
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_B4 As String
  Dim var_B8 As String
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_18C As String
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_21C As Variant
  Dim unk_5407BC As Connection15
  Dim var_88 As Recordset15
  Dim var_280 As Recordset15
  Dim var_E4 As Variant
  Dim var_264 As Variant
  Dim var_284 As Variant
  Dim var_1AC As Variant
  Dim var_288 As Variant
  Dim var_104 As Variant
  Dim var_8C As Recordset15
  Dim var_20C As Variant
  Dim var_90 As Recordset15
  Dim var_A4 As Image
  loc_192744C: On Error Goto loc_192A005
  loc_1927452: var_D4 = CVar(CLng(2)) 'Long
  loc_1927457: var_F4 = 1
  loc_1927464: Set var_108 = Me.FGrid
  loc_192747D: var_26C = Val(CStr(var_108.TextMatrix)))
  loc_192749B: var_17C = Me.FGrid.TextMatrix)
  loc_19274AE: var_274 = Val(CStr(var_17C))
  loc_19274BC: Proc_6_7_F26918(var_1AC, MemVar_1F950F4, var_274, 1)
  loc_19274CC: Proc_6_7_F26918(var_20C, MemVar_1F950FC, CVar(CLng(3)))
  loc_19274E5: var_AC = "SELECT GuestFolio.DocId, RoomCat.Name AS RoomCatNAme, RoomCat.Type, RoomCat.Name As RoomCategory, RoomOcc.RoomCat, RoomOcc.RoomNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.Adult, RoomOcc.Children, RoomOcc.DepDate, RoomOcc.DepTime, RoomOcc.Type, RoomOcc.PlanCode, GuestFolio.FolioNo, GuestFolio.Vtype, GuestFolio.Vdate, GuestFolio.Vprefix, GuestFolio.GuestProf, GuestProf.Name, GuestProf.FatherName, GuestFolio.Add1, GuestFolio.Add2, GuestProf.CityName, GuestProf.StateName," & " GuestProf.CountryName,GuestProf.PicPath,GuestProf.IdPicPath, GuestFolio.NoDays,Datediff(d,RoomOcc.ChkInDate,RoomOcc.DepDate) Nights, GuestFolio.SplitFolio, GuestFolio.Remarks, GuestFolio.Authorisation, GuestFolio.Company, GuestFolio.PurVisit, Country_1.Name As Nationality, GuestFolio.ArrFrom, GuestFolio.Destination, GuestFolio.TravelMode, GuestFolio.TclFac, GuestFolio.Remark, GuestFolio.RODisc, GuestFolio.RSDisc,GuestFolio.BookingDocId, City.CityName AS ArrivedFrom, City_1.CityName AS DestinationCity, SubGroup.Name AS CompanyName, SubGroup.GSTIN AS CompanyGSTIN, RoomOcc.ChkOutDate,"
  loc_19274EC: var_B0 = var_AC & " RoomOcc.ChkOutTime,GuestFolio.GroupCode,RoomOcc.RRTaxInc,RoomOcc.RRServiceChrg, Book.BookedBy, Book.ResMode, GuestProf.Anniversary, GuestProf.BirthDate, GuestProf.Age"
  loc_19274F3: var_B4 = var_B0 & " , GuestProf.PhoneNo, GuestProf.MobileNo, GuestProf.EmailId, GuestProf.IdProof, GuestProf.IdProofNo, GuestProf.Comments1,GuestProf.Comments2,GuestProf.Comments3 , GuestFolio.U_Name, PlanMast.Name As PlanName, GuestProf.U_Name  "
  loc_19274FA: var_B8 = var_B4 & " , GuestFolio.BussSource, GuestFolio.MarketSeg, MarketSeg.Name as MarketSegName, BussSource.Name as BussSourceName, GuestFolio.TravelAgent, SG.Name as TravelAgentName, SG.GSTIN as TravelAgentGSTIN,GuestFolio.MFolioNo, RoomOcc.PlanAmt, RoomOcc.IncInRate, RoomOcc.RoomTaxStru, RoomOcc.RoomTarrif,Q.* FROM ((((((((((GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN PlanMAst On RoomOcc.PlanCode = PlanMast.Code ) LEFT JOIN City ON GuestFolio.ArrFrom = City.CityCode) "
  loc_1927501: var_BC = var_B8 & " LEFT JOIN City AS City_1 ON GuestFolio.Destination = City_1.CityCode) LEFT JOIN Country AS Country_1 ON GuestProf.Nationality = Country_1.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) LEFT JOIN MarketSeg ON GuestFolio.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON GuestFolio.BussSource = BussSource.Code) LEFT JOIN SubGroup AS SG ON GuestFolio.TravelAgent = SG.SubCode LEFT JOIN Booking Book On Book.DocId=GuestFolio.BookingDocid "
  loc_1927508: var_C0 = var_BC & " Left Join (Select RO.Docid As P_DocId,RO.FolioNo As P_RegNo,GFor.SerialNo As P_SerialNo,GFor.Name As P_GuestName,GFor.Add1 As P_Add1,GFor.Add2 As P_Add2,Country.Name As P_Nationality,GFor.Age AS P_Age,GFor.PurVisit As P_PurVisit,GFor.AddIndia As P_AddIndiaIfAny,GFor.DateArr As P_DateArr,GFor.ArrPlace As P_ArrPlace,GFor.PropStay As P_PropStay,GFor.ArrFrom As P_ArrFrom,GFor.ModeTravel As P_ModeTravelatArrival,RO.DepDate As P_ProposedDepart,GFor.Dest As P_GoingTo, GFor.ModeTravelUsed As P_ModeTravelAfterDepart,GFor.VisaIssAuth As P_VisaIssAuth,"
  loc_192750F: var_C4 = var_C0 & " GFor.Extension As P_Extension,GFor.PassNo As P_PassNo,GFor.IssDate As P_IssDate, GFor.IssPlace As P_IssPlace,GFor.PassExpDate As P_PassExpDate,GFor.WorkPermit As P_WorkPermit,GFor.VisaNo As P_VisaNo,GFor.VisaIssDate As P_VisaIssDate,GFor.VisaIssPlace As P_VisaIssPlace,GFor.ExpDate AS P_VisaExpDate,GFor.VisaDuration As P_VisaDuration,RO.VDate As P_Vdate From (((GuestFolio RO Left Join GuestProf GF ON RO.GuestProf=GF.Code) Left Join GuestProfFor GFor ON GF.Code=GFor.Code) LEFT JOIN Country ON GFor.Nationality = Country.Code)) Q On GuestFolio.DocId=Q.P_DocId "
  loc_1927535: var_18C = var_C4 & " Where isnull(Roomocc.type,'')<>'C' and Guestfolio.FolioNo >=" & CStr(var_26C) & " AND Guestfolio.FolioNo <=" & CStr(var_274)
  loc_192753C: var_1BC = CVar(var_18C & " AND RoomOcc.ChkInDate BETWEEN ") 'String
  loc_1927552: var_21C = var_1BC & var_1AC & " AND " & var_20C 
  loc_1927569: unk_5407BC.Execute CStr(var_21C & " Order By Guestfolio.DocId,P_SerialNo"), var_260, -1
  loc_1927574: Set var_88 = var_264
  loc_19275CE: If (var_88.RecordCount <= 0) Then
  loc_19275DF:   var_D4 = "No Records For Printing "
  loc_19275EA:   MsgBox(var_D4, &H40, var_17C, var_1AC, var_1BC)
  loc_19275FF:   global_88 = 0
  loc_1927602:   Exit Sub
  loc_1927603: End If
  loc_192761D: Call Proc_66_36_14E4BB4(New)
  loc_1927628: Set global_96 = var_108
  loc_192762F: ' Referenced from: 1929FB8
  loc_192763E: If Not(var_88.EOF) Then
  loc_1927647:   Set var_280 = global_96 
  loc_1927656:   var_280.AddNew var_D4, var_E4
  loc_192766A:   var_108 = var_88.Fields
  loc_19276A6:   var_280.Fields.Item("DocId").Value = CVar(Proc_6_38_E69628(CVar(var_108.Item("DocID")), var_108, global_88, var_280.Fields))
  loc_1927706:   var_280.Fields.Item("PartyName").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), var_26C))
  loc_1927766:   var_280.Fields.Item("PartyAdd1").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")), var_F4))
  loc_19277C6:   var_280.Fields.Item("PartyAdd2").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2"))))
  loc_1927826:   var_280.Fields.Item("PartyCity").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName"))))
  loc_1927886:   var_280.Fields.Item("ChkInDate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChkInDate"))))
  loc_19278E6:   var_280.Fields.Item("ChkOutDate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DepDate"))))
  loc_1927946:   var_280.Fields.Item("ChkInTime").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChkInTime"))))
  loc_19279A6:   var_280.Fields.Item("FolioNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FolioNo"))))
  loc_19279BE:   var_D4 = "Adult"
  loc_1927A0C:   var_17C = CVar(var_88.Fields.Item("children")) 'Address
  loc_1927A3C:   var_280.Fields.Item("Persons").Value = CVar(var_D4 & Proc_6_38_E69628(var_17C, Proc_6_38_E69628(CVar(var_88.Fields.Item(var_D4))) & "/"))
  loc_1927A7D:   var_118 = CVar(var_88.Fields.Item("RoomTarrif")) 'Address
  loc_1927A84:   Proc_6_39_E7D3A0(var_17C)
  loc_1927AAC:   var_280.Fields.Item("RoomRate").Value = var_17C
  loc_1927AE9:   var_17C = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomNo")))) 'String
  loc_1927B0C:   var_280.Fields.Item("RoomNo").Value = var_17C
  loc_1927B47:   Proc_6_39_E7D3A0(var_17C, CVar(var_88.Fields.Item("RoDisc")))
  loc_1927B6F:   var_280.Fields.Item("DisRoom").Value = var_17C
  loc_1927BCF:   var_280.Fields.Item("incTax").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RRTaxInc"))))
  loc_1927C2F:   var_280.Fields.Item("ServiceChrg").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RRServiceChrg"))))
  loc_1927C8F:   var_280.Fields.Item("Company").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CompanyName"))))
  loc_1927CEF:   var_280.Fields.Item("Nationality").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nationality"))))
  loc_1927D4F:   var_280.Fields.Item("Agent").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TravelAgentName"))))
  loc_1927DD7:   var_1CC = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("PlanName"))) = vbNullString), "EP", CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PlanName")))))
  loc_1927DFF:   var_280.Fields.Item("Plan").Value = var_1CC
  loc_1927E70:   var_280.Fields.Item("Phone").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PhoneNo"))))
  loc_1927ED0:   var_280.Fields.Item("ArrFrom").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ArrFrom"))))
  loc_1927F30:   var_280.Fields.Item("Destination").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Destination"))))
  loc_1927F90:   var_280.Fields.Item("Cmt1").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments1"))))
  loc_1927FF0:   var_280.Fields.Item("Cmt2").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments2"))))
  loc_1928050:   var_280.Fields.Item("Cmt3").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments3"))))
  loc_19280B0:   var_280.Fields.Item("Remark").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Remarks"))))
  loc_1928110:   var_280.Fields.Item("User").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name"))))
  loc_1928170:   var_280.Fields.Item("PlanAmt").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PLANAmt"))))
  loc_19281D0:   var_280.Fields.Item("EMailId").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("EmailId"))))
  loc_1928230:   var_280.Fields.Item("TravelMode").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TravelMode"))))
  loc_1928290:   var_280.Fields.Item("RoomCat").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCategory"))))
  loc_19282F0:   var_280.Fields.Item("BookedBy").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("BookedBY"))))
  loc_1928350:   var_280.Fields.Item("ResMode").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ResMode"))))
  loc_19283B0:   var_280.Fields.Item("IdProof").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("IdProof"))))
  loc_1928438:   var_1CC = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("Anniversary"))) = vbNullString), "NA", CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Anniversary")))))
  loc_1928460:   var_280.Fields.Item("Anniversary").Value = var_1CC
  loc_19284F9:   var_1CC = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("BirthDate"))) = vbNullString), "NA", CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("BirthDate")))))
  loc_1928521:   var_280.Fields.Item("DateOfBirth").Value = var_1CC
  loc_192859A:   var_1BC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Age")))) 'String
  loc_19285BA:   var_1CC = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("Age"))) = "0"), "NA", var_1BC)
  loc_19285E2:   var_280.Fields.Item("Age").Value = var_1CC
  loc_1928653:   var_280.Fields.Item("P_RegNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_RegNo"))))
  loc_19286B3:   var_280.Fields.Item("P_SerialNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_SerialNo"))))
  loc_1928713:   var_280.Fields.Item("P_GuestName").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_GuestName"))))
  loc_1928773:   var_280.Fields.Item("P_Add1").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_Add1"))))
  loc_19287D3:   var_280.Fields.Item("P_Add2").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_Add2"))))
  loc_1928833:   var_280.Fields.Item("P_Nationality").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_Nationality"))))
  loc_1928893:   var_280.Fields.Item("P_Age").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_Age"))))
  loc_19288F3:   var_280.Fields.Item("P_PurVisit").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_PurVisit"))))
  loc_1928953:   var_280.Fields.Item("P_AddIndiaIfAny").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_AddIndiaIfAny"))))
  loc_19289B3:   var_280.Fields.Item("P_DateArr").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_DateArr"))))
  loc_1928A13:   var_280.Fields.Item("P_ArrPlace").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_ArrPlace"))))
  loc_1928A73:   var_280.Fields.Item("P_PropStay").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_PropStay"))))
  loc_1928AD3:   var_280.Fields.Item("P_ArrFrom").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_ArrFrom"))))
  loc_1928B33:   var_280.Fields.Item("P_ModeTravelatArrival").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_ModeTravelatArrival"))))
  loc_1928B93:   var_280.Fields.Item("P_ProposedDepart").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_ProposedDepart"))))
  loc_1928BF3:   var_280.Fields.Item("P_GoingTo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_GoingTo"))))
  loc_1928C53:   var_280.Fields.Item("P_ModeTravelAfterDepart").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_ModeTravelAfterDepart"))))
  loc_1928CB3:   var_280.Fields.Item("P_VisaIssAuth").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaIssAuth"))))
  loc_1928D13:   var_280.Fields.Item("P_Extension").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_Extension"))))
  loc_1928D73:   var_280.Fields.Item("P_PassNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_PassNo"))))
  loc_1928DD3:   var_280.Fields.Item("P_IssDate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_IssDate"))))
  loc_1928E33:   var_280.Fields.Item("P_IssPlace").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_IssPlace"))))
  loc_1928E93:   var_280.Fields.Item("P_PassExpDate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_PassExpDate"))))
  loc_1928EF3:   var_280.Fields.Item("P_WorkPermit").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_WorkPermit"))))
  loc_1928F53:   var_280.Fields.Item("P_VisaNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaNo"))))
  loc_1928FB3:   var_280.Fields.Item("P_VisaIssDate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaIssDate"))))
  loc_1929013:   var_280.Fields.Item("P_VisaIssPlace").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaIssPlace"))))
  loc_1929073:   var_280.Fields.Item("P_VisaExpDate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaExpDate"))))
  loc_19290D3:   var_280.Fields.Item("P_VisaDuration").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaDuration"))))
  loc_1929133:   var_280.Fields.Item("P_Vdate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_Vdate"))))
  loc_1929193:   var_280.Fields.Item("FatherName").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FatherName"))))
  loc_19291F3:   var_280.Fields.Item("PurVisit").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PurVisit"))))
  loc_1929269:   var_280.Fields.Item("Mobile").Value = Left(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("MobileNo")))), &H19)
  loc_19292CE:   var_280.Fields.Item("IdProofNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("IdProofNo"))))
  loc_192932E:   var_280.Fields.Item("CompanyGSTIN").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CompanyGSTIN"))))
  loc_192938E:   var_280.Fields.Item("AgentGSTIN").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TravelAgentGSTIN"))))
  loc_19293EE:   var_280.Fields.Item("Nights").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nights"))))
  loc_1929446:   var_284 = var_280.Fields.Item("Days")
  loc_192944E:   var_284.Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("NoDays"))))
  loc_1929466:   var_98 = vbNullString
  loc_192946C:   var_94 = vbNullString
  loc_1929472:   var_9C = vbNullString
  loc_192949D:   var_98 = Proc_6_38_E69628(CVar(var_88.Fields.Item("FolioNo")))
  loc_19294CE:   var_94 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomNo")))
  loc_19294DD:   var_138 = 0
  loc_1929539:   unk_5407BC.Execute CStr("SELECT Count(*) FROM GuestFolio WHERE Docid='" & var_88.Fields.Item("DocID").Value & "' AND  MFolioNo > 0 "), var_1BC, -1
  loc_1929541:   var_264 = var_264.Fields
  loc_1929549:   var_138 = var_284.Item(var_284)
  loc_1929551:   var_288 = var_288.Value
  loc_192957E:   If (var_1CC > 0) Then
  loc_19295C6:     var_1AC = "SELECT DocId, MFolioNoDocId,MFolioNo FROM GuestFolio WHERE Docid='" & var_88.Fields.Item("DocID").Value & "' AND  MFolioNo > 0 " 
  loc_19295D4:     unk_5407BC.Execute CStr(var_1AC), var_1BC, -1
  loc_19295DF:     Set var_8C = var_264
  loc_1929635:     var_17C = "SELECT R.Roomno, R.FolioNo, R.DocId FROM RoomOcc R WHERE DocId IN ( SELECT DocID FROM GuestFolio WHERE MFolioNoDocId='" & var_8C.Fields.Item("mFolioNoDocid").Value 
  loc_192964C:     var_138 = "' AND LogSite_Code='"
  loc_1929651:     var_1CC = var_17C & "') AND R.Sno=1 AND Site_Code='" & CVar(MemVar_1F95070) & var_138 
  loc_1929672:     unk_5407BC.Execute CStr(var_1CC & CVar(MemVar_1F95078) & "'"), var_21C, -1
  loc_192967D:     Set var_90 = var_264
  loc_1929707:     If (var_8C.Fields.Item("mFolioNoDocid").Value = var_8C.Fields.Item("DocID").Value) Then
  loc_192970D:       var_9C = "Leader"
  loc_1929717:       var_98 = var_98 & "(L), "
  loc_1929721:       var_94 = var_94 & "(L), "
  loc_1929727:     Else
  loc_192972E:       var_98 = var_98 & ", "
  loc_1929738:       var_94 = var_94 & ", "
  loc_192973B:     End If
  loc_192974F:     If (var_90.RecordCount > 0) Then
  loc_1929755:       var_90.MoveFirst
  loc_192975A:       ' Referenced from: 1929A1A
  loc_1929760:       var_27A = var_90.EOF
  loc_1929769:       If Not(var_27A) Then
  loc_19297D4:         If CBool(var_90.Fields.Item("DocID").Value <> var_8C.Fields.Item("DocID").Value) Then
  loc_19297F9:           var_17C = var_90.Fields.Item("DocID").Value
  loc_1929813:           var_264 = var_8C.Fields
  loc_192983F:           If CBool(var_17C <> var_264.Item("mFolioNoDocid").Value) Then
  loc_192986E:             Proc_6_39_E7D3A0(var_17C, CVar(var_90.Fields.Item("FolioNo")), CVar(var_98), var_264)
  loc_1929884:             var_98 = CStr(var_264 & var_17C & ", ")
  loc_19298C1:             Proc_6_39_E7D3A0(var_17C, CVar(var_90.Fields.Item("RoomNo")), CVar(var_94))
  loc_19298D7:             var_94 = CStr(var_1CC & var_17C & ", ")
  loc_19298EB:           Else
  loc_192990D:             var_17C = var_90.Fields.Item("DocID").Value
  loc_1929969:             If CBool((var_17C = var_8C.Fields.Item("mFolioNoDocid").Value) And (var_9C = vbNullString)) Then
  loc_1929998:               Proc_6_39_E7D3A0(var_17C, CVar(var_90.Fields.Item("FolioNo")))
  loc_19299AE:               var_98 = CStr(CVar(var_98) & var_17C & "(L), ")
  loc_19299EB:               Proc_6_39_E7D3A0(var_17C, CVar(var_90.Fields.Item("RoomNo")))
  loc_1929A01:               var_94 = CStr(CVar(var_94) & var_17C & "(L), ")
  loc_1929A12:             End If
  loc_1929A12:           End If
  loc_1929A12:         End If
  loc_1929A15:         var_90.MoveNext
  loc_1929A1A:         GoTo loc_192975A
  loc_1929A1D:       End If
  loc_1929A1D:     End If
  loc_1929A1D:   End If
  loc_1929A4D:   var_280.Fields.Item("grpRooms").Value = CVar(Proc_6_38_E69628(var_94))
  loc_1929A8C:   var_280.Fields.Item("grpFolios").Value = CVar(Proc_6_38_E69628(var_98))
  loc_1929ACB:   var_280.Fields.Item("Leader").Value = CVar(Proc_6_38_E69628(var_9C))
  loc_1929AE9:   var_108 = var_88.Fields
  loc_1929AF9:   var_118 = CVar(var_108.Item("PicPath")) 'Address
  loc_1929B02:   var_104 = IsNull(var_118)
  loc_1929B09:   var_E4 = "PicPath"
  loc_1929B3C:   var_F4 = vbNullString
  loc_1929B60:   If CBool(var_118 Or (Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_E4)), var_104))) = var_F4)) Then
  loc_1929B81:     Me.Global.LoadPicture var_D4, var_E4, var_F4, var_104, var_138
  loc_1929B90:     Set var_264 = Me.GuestImage
  loc_1929B96:     var_264.Picture = var_108
  loc_1929BA5:   Else
  loc_1929BD9:     Call 0.Method_Proc_66_37_192A0484 (Proc_6_38_E69628(CVar(var_88.Fields.Item("PicPath")), var_27A))
  loc_1929BEA:     If var_27A Then
  loc_1929C0F:       var_108 = Me.Recordset15.Fields
  loc_1929C32:       Me.Global.LoadPicture CVar(Proc_6_38_E69628(CVar(var_108.Item("PicPath")), var_E4, var_F4, var_104)), var_138, var_264, var_108, 
  loc_1929C47:       Me.GuestImage.Picture = var_264
  loc_1929C60:       Set var_108 = Me.GuestImage
  loc_1929C66:       var_108.Refresh
  loc_1929C71:     Else
  loc_1929C8F:       Me.Global.LoadPicture var_D4, var_E4, var_F4, var_104, var_138
  loc_1929CA4:       Me.GuestImage.Picture = var_108
  loc_1929CB0:     End If
  loc_1929CB0:   End If
  loc_1929CC5:   Set var_A4 = Me.GuestImage.Picture
  loc_1929CE8:   If ((var_A4 Is Nothing) Or (CLng(var_A4._Default) = 0)) Then
  loc_1929CF6:     var_280.Update var_D4, var_E4
  loc_1929CFE:   Else
  loc_1929D08:     var_AC = "Picture1"
  loc_1929D14:     Set var_16C = global_96 
  loc_1929D24:     Proc_142_0_F977BC(Me.GuestImage, var_16C)
  loc_1929D32:     global_96 = var_16C
  loc_1929D42:   End If
  loc_1929D51:   var_108 = var_88.Fields
  loc_1929D6A:   var_104 = IsNull(CVar(var_108.Item("IdPicPath")))
  loc_1929D71:   var_E4 = "IdPicPath"
  loc_1929D96:   var_1AC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_E4)), var_104)) 'String
  loc_1929D9C:   var_1BC = Trim(var_1AC)
  loc_1929DA4:   var_F4 = vbNullString
  loc_1929DC8:   If CBool(var_AC Or (var_1BC = var_F4)) Then
  loc_1929DE9:     Me.Global.LoadPicture var_D4, var_E4, var_F4, var_104, var_138
  loc_1929DF8:     Set var_264 = Me.GuestImage
  loc_1929DFE:     var_264.Picture = var_108
  loc_1929E0D:   Else
  loc_1929E1F:     var_108 = var_88.Fields
  loc_1929E41:     Call 0.Method_Proc_66_37_192A0484 (Proc_6_38_E69628(CVar(var_108.Item("IdPicPath")), var_27A), var_108)
  loc_1929E52:     If var_27A Then
  loc_1929E77:       var_108 = Me.Recordset15.Fields
  loc_1929E9A:       Me.Global.LoadPicture CVar(Proc_6_38_E69628(CVar(var_108.Item("IdPicPath")), var_E4, var_F4, var_104)), var_138, var_264, var_108, 
  loc_1929EAF:       Me.GuestImage.Picture = var_264
  loc_1929EC8:       Set var_108 = Me.GuestImage
  loc_1929ECE:       var_108.Refresh
  loc_1929ED9:     Else
  loc_1929EF7:       Me.Global.LoadPicture var_D4, var_E4, var_F4, var_104, var_138
  loc_1929F0C:       Me.GuestImage.Picture = var_108
  loc_1929F18:     End If
  loc_1929F18:   End If
  loc_1929F2D:   Set var_A4 = Me.GuestImage.Picture
  loc_1929F50:   If ((var_A4 Is Nothing) Or (CLng(var_A4._Default) = 0)) Then
  loc_1929F5E:     var_280.Update var_D4, var_E4
  loc_1929F66:   Else
  loc_1929F70:     var_AC = "IdProofPic"
  loc_1929F7C:     Set var_16C = global_96 
  loc_1929F8C:     Proc_142_0_F977BC(Me.GuestImage, var_16C)
  loc_1929F9A:     global_96 = var_16C
  loc_1929FAA:   End If
  loc_1929FAC:   Set var_280 = Nothing 
  loc_1929FB3:   var_88.MoveNext
  loc_1929FB8:   GoTo loc_192762F
  loc_1929FBB: End If
  loc_1929FC1: global_84 = "FolioPrinting"
  loc_1929FCB: Call 0.Method_arg_50 (var_AC, var_AC)
  loc_1929FD9: var_17C = Ucase(CVar(var_AC))
  loc_1929FE2: var_A0 = CStr(var_17C)
  loc_1929FF1: Set var_8C = Nothing
  loc_1929FF9: Set var_88 = Nothing
  loc_192A001: Set var_90 = Nothing
  loc_192A004: Exit Sub
  loc_192A005: ' Referenced from: 192744C
  loc_192A00D: Set var_108 = Err()
  loc_192A013: Call 0.Method_arg_2C (var_AC)
  loc_192A030: MsgBox(CVar("Error " & var_AC), &H40, var_17C, var_1AC, var_1BC)
  loc_192A046: Exit Sub
End Sub

Public Sub Proc_66_38_14B1C28(arg_C) '14B1C28
  'Data Table: 54078C
  Dim var_8C As Recordset15
  loc_14B0F1D: Set var_8C = arg_C 
  loc_14B0F45: var_8C.Fields.Append "DocId", &HC8, &H28
  loc_14B0F71: var_8C.Fields.Append "VDate", &HC8, &H28
  loc_14B0F9D: var_8C.Fields.Append "GuestProf", &HC8, &HA
  loc_14B0FC9: var_8C.Fields.Append "LeaderName", &HC8, &H64
  loc_14B0FF5: var_8C.Fields.Append "PartyName", &HC8, &H64
  loc_14B1021: var_8C.Fields.Append "FatherName", &HC8, &H64
  loc_14B104D: var_8C.Fields.Append "PartyAdd1", &HC8, &H64
  loc_14B1079: var_8C.Fields.Append "PartyAdd2", &HC8, &H64
  loc_14B10A5: var_8C.Fields.Append "PartyCity", &HC8, &H32
  loc_14B10D1: var_8C.Fields.Append "ChkInDate", &HC8, &H14
  loc_14B10FD: var_8C.Fields.Append "ChkOutDate", &HC8, &H14
  loc_14B1129: var_8C.Fields.Append "ChkInTime", &HC8, &H14
  loc_14B1155: var_8C.Fields.Append "FolioNo", &HC8, &HF
  loc_14B1181: var_8C.Fields.Append "Persons", &HC8, &HF
  loc_14B11AD: var_8C.Fields.Append "RoomRate", &HC8, &H14
  loc_14B11D9: var_8C.Fields.Append "RoomNo", &HC8, &HA
  loc_14B1205: var_8C.Fields.Append "DisRoom", &HC8, &H14
  loc_14B1231: var_8C.Fields.Append "incTax", &HC8, &HA
  loc_14B125D: var_8C.Fields.Append "ServiceChrg", &HC8, &HA
  loc_14B1289: var_8C.Fields.Append "Company", &HC8, &H4B
  loc_14B12B5: var_8C.Fields.Append "Nationality", &HC8, &H32
  loc_14B12E1: var_8C.Fields.Append "Agent", &HC8, &H32
  loc_14B130D: var_8C.Fields.Append "Plan", &HC8, &H32
  loc_14B1339: var_8C.Fields.Append "Phone", &HC8, &H1E
  loc_14B1365: var_8C.Fields.Append "ArrFrom", &HC8, &H1E
  loc_14B1391: var_8C.Fields.Append "Destination", &HC8, &H32
  loc_14B13BD: var_8C.Fields.Append "Cmt1", &HC8, &H32
  loc_14B13E9: var_8C.Fields.Append "Cmt2", &HC8, &H32
  loc_14B1415: var_8C.Fields.Append "Cmt3", &HC8, &H32
  loc_14B1441: var_8C.Fields.Append "grpRooms", &HC8, &HFF
  loc_14B146D: var_8C.Fields.Append "Leader", &HC8, &H32
  loc_14B1499: var_8C.Fields.Append "User", &HC8, &H32
  loc_14B14C5: var_8C.Fields.Append "Remark", &HC8, &H50
  loc_14B14F1: var_8C.Fields.Append "Picture1", &HCD, &H3E8
  loc_14B151D: var_8C.Fields.Append "PlanAmt", &HC8, &HC
  loc_14B1549: var_8C.Fields.Append "EMailId", &HC8, &H32
  loc_14B1575: var_8C.Fields.Append "TravelMode", &HC8, &H1E
  loc_14B15A1: var_8C.Fields.Append "RoomCat", &HC8, &H19
  loc_14B15CD: var_8C.Fields.Append "BookedBy", &HC8, &H19
  loc_14B15F9: var_8C.Fields.Append "ResMode", &HC8, &H1E
  loc_14B1625: var_8C.Fields.Append "IdProof", &HC8, &H32
  loc_14B1651: var_8C.Fields.Append "Anniversary", &HC8, &HC
  loc_14B167D: var_8C.Fields.Append "DateOfBirth", &HC8, &HC
  loc_14B16A9: var_8C.Fields.Append "Age", &HC8, 4
  loc_14B16D5: var_8C.Fields.Append "P_RegNo", &HC8, 8
  loc_14B1701: var_8C.Fields.Append "P_SerialNo", &HC8, 8
  loc_14B172D: var_8C.Fields.Append "P_GuestName", &HC8, &H23
  loc_14B1759: var_8C.Fields.Append "P_Add1", &HC8, &H32
  loc_14B1785: var_8C.Fields.Append "P_Add2", &HC8, &H32
  loc_14B17B1: var_8C.Fields.Append "P_Nationality", &HC8, &H32
  loc_14B17DD: var_8C.Fields.Append "P_Age", &HC8, 4
  loc_14B1809: var_8C.Fields.Append "P_PurVisit", &HC8, &H32
  loc_14B1835: var_8C.Fields.Append "P_AddIndiaIfAny", &HC8, &H32
  loc_14B1861: var_8C.Fields.Append "P_DateArr", &HC8, &HC
  loc_14B188D: var_8C.Fields.Append "P_ArrPlace", &HC8, &H32
  loc_14B18B9: var_8C.Fields.Append "P_PropStay", &HC8, &H32
  loc_14B18E5: var_8C.Fields.Append "P_ArrFrom", &HC8, &H32
  loc_14B1911: var_8C.Fields.Append "P_ModeTravelatArrival", &HC8, &H32
  loc_14B193D: var_8C.Fields.Append "P_ProposedDepart", &HC8, &H32
  loc_14B1969: var_8C.Fields.Append "P_GoingTo", &HC8, &H32
  loc_14B1995: var_8C.Fields.Append "P_ModeTravelAfterDepart", &HC8, &H32
  loc_14B19C1: var_8C.Fields.Append "P_VisaIssAuth", &HC8, &H32
  loc_14B19ED: var_8C.Fields.Append "P_Extension", &HC8, &H64
  loc_14B1A19: var_8C.Fields.Append "P_PassNo", &HC8, &H32
  loc_14B1A45: var_8C.Fields.Append "P_IssDate", &HC8, &HC
  loc_14B1A71: var_8C.Fields.Append "P_IssPlace", &HC8, &H32
  loc_14B1A9D: var_8C.Fields.Append "P_PassExpDate", &HC8, &HC
  loc_14B1AC9: var_8C.Fields.Append "P_WorkPermit", &HC8, &H32
  loc_14B1AF5: var_8C.Fields.Append "P_VisaNo", &HC8, &H32
  loc_14B1B21: var_8C.Fields.Append "P_VisaIssDate", &HC8, &HC
  loc_14B1B4D: var_8C.Fields.Append "P_VisaIssPlace", &HC8, &H32
  loc_14B1B79: var_8C.Fields.Append "P_VisaExpDate", &HC8, &HC
  loc_14B1BA5: var_8C.Fields.Append "P_VisaDuration", &HC8, &H32
  loc_14B1BD1: var_8C.Fields.Append "P_Vdate", &HC8, &HC
  loc_14B1BE1: var_8C.CursorType = 3
  loc_14B1BEE: var_8C.LockType = 3
  loc_14B1C0D: var_8C.Open var_A0, var_B0, -1
  loc_14B1C14: Set var_8C = Nothing 
  loc_14B1C1B: Set var_88 = arg_C 
  loc_14B1C1F: Proc_66_38_14B1C28 = -1
End Sub

Public Sub Proc_66_39_189B01C
  'Data Table: 54078C
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_190 As Variant
  Dim var_B4 As String
  Dim var_B8 As String
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_224 As Variant
  Dim unk_5408D4 As Connection15
  Dim var_88 As Recordset15
  Dim var_9E As Integer
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_258 As Recordset15
  Dim var_EC As Variant
  Dim var_24C As Fields15
  Dim var_140 As Variant
  Dim var_A4 As Integer
  Dim Me As Recordset15
  Dim var_A2 As Integer
  loc_18988B0: On Error Goto loc_189AFD7
  loc_18988B6: var_DC = CVar(CLng(0)) 'Long
  loc_18988BB: var_FC = 1
  loc_18988C8: Set var_110 = Me.FGrid
  loc_18988D9: var_130 = CVar(CStr(var_110.TextMatrix))) 'String
  loc_18988DF: Proc_6_7_F26918(var_140, var_130)
  loc_18988E7: var_190 = CVar(CLng(0)) 'Long
  loc_1898910: Proc_6_7_F26918(var_1F4, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_1898929: var_B4 = "SELECT 0 as SrNo, CntP.Name as NewNationality, GuestFolio.DocId, GuestFolio.GuestProf as LeaderProf, Gpf.Name as Leader, RoomCat.Name AS RoomCatNAme, RoomCat.Type, RoomCat.Name As RoomCategory, RoomOcc.RoomCat, RoomOcc.RoomNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.Adult, RoomOcc.Children, RoomOcc.DepDate, RoomOcc.DepTime, RoomOcc.Type, RoomOcc.PlanCode, GuestFolio.FolioNo, GuestFolio.Vtype, GuestFolio.Vdate, GuestFolio.Vprefix, GPFDtl.GuestProf, LTrim(RTrim(Isnull(GuestProf.ConPrefix,'')))+' '+LTrim(RTrim(Isnull(GuestProf.Name,''))) Name, IsNull(GuestProf.FatherName,'') as FatherName, GuestProf.Add1, GuestProf.Add2, GuestProf.CityName, GuestProf.StateName," & " GuestProf.CountryName,GuestProf.PicPath, GuestFolio.NoDays, GuestFolio.SplitFolio, GuestFolio.Remarks, GuestFolio.Authorisation, GuestFolio.Company, GuestFolio.PurVisit, GuestFolio.Nationality, GuestFolio.ArrFrom, GuestFolio.Destination, GuestFolio.TravelMode, GuestFolio.TclFac, GuestFolio.Remark, GuestFolio.RODisc, GuestFolio.RSDisc,GuestFolio.BookingDocId, City.CityName AS ArrivedFrom, City_1.CityName AS DestinationCity, SubGroup.Name AS CompanyName, RoomOcc.ChkOutDate,"
  loc_1898930: var_B8 = var_B4 & " RoomOcc.ChkOutTime,GuestFolio.GroupCode,RoomOcc.RRTaxInc,RoomOcc.RRServiceChrg, Book.BookedBy, Book.ResMode, GuestProf.Anniversary, GuestProf.BirthDate, GuestProf.Age"
  loc_1898937: var_BC = var_B8 & " , GuestProf.PhoneNo, GuestProf.MobileNo, GuestProf.EmailId, GuestProf.IdProof, GuestProf.Comments1,GuestProf.Comments2,GuestProf.Comments3 , GuestFolio.U_Name, PlanMast.Name As PlanName, GuestProf.U_Name  "
  loc_189893E: var_C0 = var_BC & " , GuestFolio.MarketSeg, MarketSeg.Name as MarketSegName, GuestFolio.TravelAgent, SG.Name as travelAgentName,GuestFolio.MFolioNo, RoomOcc.PlanAmt, RoomOcc.IncInRate,Q.* FROM ((((((((((((GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) LEFT JOIN GuestFolioProfDetail GPFDtl On GuestFolio.DocId = GPFDtl.DocId) LEFT JOIN GuestProf ON GPFDtl.GuestProf = GuestProf.Code) LEFT JOIN Country CntP ON GuestProf.Nationality = CntP.Code) LEFT JOIN GuestProf GPF ON GPFDtl.mProf = GPF.Code) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN PlanMAst On RoomOcc.PlanCode = PlanMast.Code ) LEFT JOIN City ON GuestFolio.ArrFrom = City.CityCode) "
  loc_1898945: var_C4 = var_C0 & " LEFT JOIN City AS City_1 ON GuestFolio.Destination = City_1.CityCode) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) LEFT JOIN MarketSeg ON GuestFolio.MarketSeg = MarketSeg.Code)) LEFT JOIN SubGroup AS SG ON GuestFolio.TravelAgent = SG.SubCode LEFT JOIN Booking Book On Book.DocId=GuestFolio.BookingDocid "
  loc_189894C: var_C8 = var_C4 & " Left Join (Select RO.Docid As P_DocId,RO.FolioNo As P_RegNo,GFor.SerialNo As P_SerialNo,GFor.Name As P_GuestName,GFor.Add1 As P_Add1,GFor.Add2 As P_Add2,Country.Name As P_Nationality,GFor.Age AS P_Age,GFor.PurVisit As P_PurVisit,GFor.AddIndia As P_AddIndiaIfAny,GFor.DateArr As P_DateArr,GFor.ArrPlace As P_ArrPlace,GFor.PropStay As P_PropStay,GFor.ArrFrom As P_ArrFrom,GFor.ModeTravel As P_ModeTravelatArrival,RO.DepDate As P_ProposedDepart,GFor.Dest As P_GoingTo, GFor.ModeTravelUsed As P_ModeTravelAfterDepart,GFor.VisaIssAuth As P_VisaIssAuth,"
  loc_1898953: var_CC = var_C8 & " GFor.Extension As P_Extension,GFor.PassNo As P_PassNo,GFor.IssDate As P_IssDate, GFor.IssPlace As P_IssPlace,GFor.PassExpDate As P_PassExpDate,GFor.WorkPermit As P_WorkPermit,GFor.VisaNo As P_VisaNo,GFor.VisaIssDate As P_VisaIssDate,GFor.VisaIssPlace As P_VisaIssPlace,GFor.ExpDate AS P_VisaExpDate,GFor.VisaDuration As P_VisaDuration,RO.VDate As P_Vdate From (((GuestFolio RO Left Join GuestProf GF ON RO.GuestProf=GF.Code) Left Join GuestProfFor GFor ON GF.Code=GFor.Code) LEFT JOIN Country ON GFor.Nationality = Country.Code)) Q On GuestFolio.DocId=Q.P_DocId "
  loc_189895A: var_150 = CVar(var_CC & " Where isnull(Roomocc.type,'')<>'C' AND RoomOcc.ChkInDate<=") 'String
  loc_1898979: var_224 = var_150 & var_140 & " And (RoomOcc.ChkOutDate>=" & var_1F4 & " Or RoomOcc.ChkOutDate IS NULL) Order By Guestfolio.DocId,P_SerialNo" 
  loc_1898987: unk_5408D4.Execute CStr(var_224), var_248, -1
  loc_1898992: Set var_88 = var_24C
  loc_18989E0: If (var_88.RecordCount <= 0) Then
  loc_18989F1:   var_DC = "No Records For Printing "
  loc_18989FC:   MsgBox(var_DC, &H40, var_130, var_140, var_150)
  loc_1898A11:   global_88 = 0
  loc_1898A14:   Exit Sub
  loc_1898A15: End If
  loc_1898A2F: Call Proc_66_38_14B1C28(New)
  loc_1898A3A: Set global_96 = var_110
  loc_1898A43: var_9E = &HD
  loc_1898A46: ' Referenced from: 189A7FC
  loc_1898A55: If Not(var_88.EOF) Then
  loc_1898A5E:   var_92 = (var_92 + 1)
  loc_1898A63:   var_94 = 0
  loc_1898A6D:   If (var_92 <= var_9E) Then
  loc_1898A73:     var_9C = "First"
  loc_1898A79:   Else
  loc_1898A7C:     var_9C = "Second"
  loc_1898A7F:   End If
  loc_1898A85:   Set var_258 = global_96 
  loc_1898A94:   var_258.AddNew var_DC, var_EC
  loc_1898AA8:   var_110 = var_88.Fields
  loc_1898AE4:   var_258.Fields.Item("DocId").Value = CVar(Proc_6_38_E69628(CVar(var_110.Item("DocID")), var_94, var_92, var_9E, var_110))
  loc_1898B40:   var_FC = "VDate"
  loc_1898B5C:   var_258.Fields.Item(var_FC).Value = Format(CVar(var_88.Fields.Item("VDate")), "dd/MM/yy")
  loc_1898BAE:   var_24C = var_258.Fields
  loc_1898BBE:   var_24C.Item("PartyName").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), 1, 1, global_88))
  loc_1898C1E:   var_258.Fields.Item("FatherName").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FatherName")), var_258.Fields, var_190))
  loc_1898C7E:   var_258.Fields.Item("PartyAdd1").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")), var_FC))
  loc_1898CDE:   var_258.Fields.Item("PartyAdd2").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2"))))
  loc_1898D56:   var_258.Fields.Item("ChkInDate").Value = Format(CVar(var_88.Fields.Item("ChkInDate")), "dd/MM/yy")
  loc_1898D95:   var_130 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChkInTime")), 1)) 'String
  loc_1898DB8:   var_258.Fields.Item("ChkInTime").Value = var_130
  loc_1898DF3:   Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("RoomNo")))
  loc_1898E1B:   var_258.Fields.Item("RoomNo").Value = var_130
  loc_1898E7B:   var_258.Fields.Item("Nationality").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("NewNationality")), 1))
  loc_1898EDB:   var_258.Fields.Item("Phone").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("MobileNo"))))
  loc_1898F3B:   var_258.Fields.Item("ArrFrom").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ArrFrom"))))
  loc_1898F9B:   var_258.Fields.Item("IdProof").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("NoDays"))))
  loc_1899023:   var_160 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("Age"))) = "0"), "NA", CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Age")))))
  loc_189904B:   var_258.Fields.Item("Age").Value = var_160
  loc_18990BC:   var_258.Fields.Item("P_PurVisit").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PurVisit"))))
  loc_1899134:   var_258.Fields.Item("ChkOutDate").Value = Format(CVar(var_88.Fields.Item("ChkOutDate")), "dd/MM/yy")
  loc_1899196:   var_258.Fields.Item("Destination").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Destination")), 1))
  loc_18991F6:   var_258.Fields.Item("Cmt1").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChkOutTime")), 1))
  loc_1899256:   var_258.Fields.Item("Cmt2").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("IdProof"))))
  loc_18992B6:   var_258.Fields.Item("GuestProf").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("LeaderProf"))))
  loc_1899316:   var_258.Fields.Item("Leader").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Leader"))))
  loc_1899376:   var_258.Fields.Item("PartyCity").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName"))))
  loc_18993D6:   var_258.Fields.Item("FolioNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FolioNo"))))
  loc_18993EE:   var_DC = "Adult"
  loc_189943C:   var_130 = CVar(var_88.Fields.Item("children")) 'Address
  loc_189946C:   var_258.Fields.Item("Persons").Value = CVar(var_DC & Proc_6_38_E69628(var_130, Proc_6_38_E69628(CVar(var_88.Fields.Item(var_DC))) & "/"))
  loc_18994AD:   var_120 = CVar(var_88.Fields.Item("RoomRate")) 'Address
  loc_18994B4:   Proc_6_39_E7D3A0(var_130)
  loc_18994DC:   var_258.Fields.Item("RoomRate").Value = var_130
  loc_1899517:   Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("RoDisc")))
  loc_189953F:   var_258.Fields.Item("DisRoom").Value = var_130
  loc_189959F:   var_258.Fields.Item("incTax").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RRTaxInc"))))
  loc_18995FF:   var_258.Fields.Item("ServiceChrg").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RRServiceChrg"))))
  loc_189965F:   var_258.Fields.Item("Company").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CompanyName"))))
  loc_18996BF:   var_258.Fields.Item("Agent").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TravelAgentName"))))
  loc_1899747:   var_160 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("PlanName"))) = vbNullString), "EP", CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PlanName")))))
  loc_189976F:   var_258.Fields.Item("Plan").Value = var_160
  loc_18997E0:   var_258.Fields.Item("Cmt3").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments3"))))
  loc_1899840:   var_258.Fields.Item("Remark").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Remarks"))))
  loc_189987D:   var_130 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")))) 'String
  loc_18998A0:   var_258.Fields.Item("User").Value = var_130
  loc_18998C6:   Proc_6_39_E7D3A0(var_130, var_88.Bookmark)
  loc_18998EE:   var_258.Fields.Item("PlanAmt").Value = var_130
  loc_1899912:   Proc_6_39_E7D3A0(var_130, var_88.Bookmark)
  loc_189991B:   var_A4 = CInt(var_130)
  loc_1899970:   var_258.Fields.Item("EMailId").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("EmailId")), var_A4))
  loc_18999D0:   var_258.Fields.Item("TravelMode").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TravelMode"))))
  loc_1899A30:   var_258.Fields.Item("RoomCat").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCategory"))))
  loc_1899A90:   var_258.Fields.Item("BookedBy").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("BookedBY"))))
  loc_1899AF0:   var_258.Fields.Item("ResMode").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ResMode"))))
  loc_1899B78:   var_160 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("Anniversary"))) = vbNullString), "NA", CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Anniversary")))))
  loc_1899BA0:   var_258.Fields.Item("Anniversary").Value = var_160
  loc_1899C19:   var_150 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("BirthDate")))) 'String
  loc_1899C2A:   var_B4 = Proc_6_38_E69628(CVar(var_88.Fields.Item("BirthDate")))
  loc_1899C61:   var_258.Fields.Item("DateOfBirth").Value = IIf((var_B4 = vbNullString), "NA", var_150)
  loc_1899CD2:   var_258.Fields.Item("P_RegNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_RegNo"))))
  loc_1899D32:   var_258.Fields.Item("P_SerialNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_SerialNo"))))
  loc_1899D92:   var_258.Fields.Item("P_GuestName").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_GuestName"))))
  loc_1899DF2:   var_258.Fields.Item("P_Add1").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_Add1"))))
  loc_1899E52:   var_258.Fields.Item("P_Add2").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_Add2"))))
  loc_1899EB2:   var_258.Fields.Item("P_Nationality").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_Nationality"))))
  loc_1899F12:   var_258.Fields.Item("P_Age").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_Age"))))
  loc_1899F72:   var_258.Fields.Item("P_AddIndiaIfAny").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_AddIndiaIfAny"))))
  loc_1899FD2:   var_258.Fields.Item("P_DateArr").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_DateArr"))))
  loc_189A032:   var_258.Fields.Item("P_ArrPlace").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_ArrPlace"))))
  loc_189A092:   var_258.Fields.Item("P_PropStay").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_PropStay"))))
  loc_189A0F2:   var_258.Fields.Item("P_ArrFrom").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_ArrFrom"))))
  loc_189A152:   var_258.Fields.Item("P_ModeTravelatArrival").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_ModeTravelatArrival"))))
  loc_189A1B2:   var_258.Fields.Item("P_ProposedDepart").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_ProposedDepart"))))
  loc_189A212:   var_258.Fields.Item("P_GoingTo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_GoingTo"))))
  loc_189A272:   var_258.Fields.Item("P_ModeTravelAfterDepart").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_ModeTravelAfterDepart"))))
  loc_189A2D2:   var_258.Fields.Item("P_VisaIssAuth").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaIssAuth"))))
  loc_189A332:   var_258.Fields.Item("P_Extension").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_Extension"))))
  loc_189A392:   var_258.Fields.Item("P_PassNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_PassNo"))))
  loc_189A3F2:   var_258.Fields.Item("P_IssDate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_IssDate"))))
  loc_189A452:   var_258.Fields.Item("P_IssPlace").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_IssPlace"))))
  loc_189A4B2:   var_258.Fields.Item("P_PassExpDate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_PassExpDate"))))
  loc_189A512:   var_258.Fields.Item("P_WorkPermit").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_WorkPermit"))))
  loc_189A572:   var_258.Fields.Item("P_VisaNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaNo"))))
  loc_189A5D2:   var_258.Fields.Item("P_VisaIssDate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaIssDate"))))
  loc_189A632:   var_258.Fields.Item("P_VisaIssPlace").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaIssPlace"))))
  loc_189A692:   var_258.Fields.Item("P_VisaExpDate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaExpDate"))))
  loc_189A6F2:   var_258.Fields.Item("P_VisaDuration").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaDuration"))))
  loc_189A72F:   var_130 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_Vdate")))) 'String
  loc_189A752:   var_258.Fields.Item("P_Vdate").Value = var_130
  loc_189A769:   Set var_258 = Nothing 
  loc_189A774:   If (var_92 = var_9E) Then
  loc_189A779:     var_94 = &HFF
  loc_189A77F:     var_DC = "PlanAmt"
  loc_189A7A5:     Proc_6_39_E7D3A0(var_130, CVar(Me.Fields.Item(var_DC)))
  loc_189A7B6:     var_EC = CVar(var_9E) 'Integer
  loc_189A7B9:     var_140 = (var_130 - var_EC)
  loc_189A7C2:     var_88.Move CLng("NA"), 1
  loc_189A7D4:   Else
  loc_189A7DE:     If (var_92 = (var_9E * 2)) Then
  loc_189A7E3:       var_94 = 0
  loc_189A7E8:       var_92 = 0
  loc_189A7EB:     End If
  loc_189A7EB:   End If
  loc_189A7F1:   If (var_94 = 0) Then
  loc_189A7F7:     var_88.MoveNext
  loc_189A7FC:   End If
  loc_189A7FC:   GoTo loc_1898A46
  loc_189A7FF: End If
  loc_189A802: var_A2 = var_92
  loc_189A80D: If (var_9C = "First") Then
  loc_189A81F:   For var_268 = (var_A2 + 1) To (var_9E * 2): var_A0 = var_268 'Integer
  loc_189A82B:     var_92 = (var_92 + 1)
  loc_189A835:     If (var_92 <= var_9E) Then
  loc_189A846:       Me.AddNew var_DC, var_EC
  loc_189A859:       Me.Update var_DC, var_EC
  loc_189A861:     Else
  loc_189A867:       If (var_A2 > 0) Then
  loc_189A86A:         var_DC = 1
  loc_189A87B:         var_88.Move CLng((var_A4 - var_A2)), var_DC
  loc_189A88E:         Me.AddNew var_DC, var_EC
  loc_189A8CE:         var_140 = Format(CVar(var_88.Fields.Item("ChkOutDate")), "dd/MM/yy")
  loc_189A8F9:         Me.Fields.Item("ChkOutDate").Value = var_140
  loc_189A938:         var_130 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Destination")), 1, 1, var_92, (var_A2 + 1))) 'String
  loc_189A95E:         Me.Fields.Item("Destination").Value = "dd/MM/yy"
  loc_189A9C1:         Me.Fields.Item("Cmt1").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChkOutTime")), var_A2, var_92))
  loc_189AA24:         Me.Fields.Item("Cmt2").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("IdProof")), var_94))
  loc_189AA87:         Me.Fields.Item("P_PassNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_PassNo")), var_94))
  loc_189AAEA:         Me.Fields.Item("P_IssDate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_IssDate"))))
  loc_189AB4D:         Me.Fields.Item("P_IssPlace").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_IssPlace"))))
  loc_189ABB0:         Me.Fields.Item("P_PassExpDate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_PassExpDate"))))
  loc_189AC13:         Me.Fields.Item("P_WorkPermit").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_WorkPermit"))))
  loc_189AC76:         Me.Fields.Item("P_VisaNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaNo"))))
  loc_189ACD9:         Me.Fields.Item("P_VisaIssDate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaIssDate"))))
  loc_189AD3C:         Me.Fields.Item("P_VisaIssPlace").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaIssPlace"))))
  loc_189AD9F:         Me.Fields.Item("P_VisaExpDate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaExpDate"))))
  loc_189AE02:         Me.Fields.Item("P_VisaDuration").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_VisaDuration"))))
  loc_189AE65:         Me.Fields.Item("P_Vdate").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("P_Vdate"))))
  loc_189AEC8:         Me.Fields.Item("FolioNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FolioNo"))))
  loc_189AEE0:         var_DC = "CompanyName"
  loc_189AF0C:         var_EC = "Company"
  loc_189AF2B:         Me.Fields.Item(var_EC).Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_DC))))
  loc_189AF4E:         Me.Update var_DC, var_EC
  loc_189AF56:       Else
  loc_189AF64:         Me.AddNew var_DC, var_EC
  loc_189AF77:         Me.Update var_DC, var_EC
  loc_189AF7C:       End If
  loc_189AF82:       var_A2 = (var_A2 - 1)
  loc_189AF85:     End If
  loc_189AF88:   Next var_268 'Integer
  loc_189AF8D: End If
  loc_189AF93: global_84 = "CheckInDtl"
  loc_189AF9D: Call 0.Method_arg_50 (var_B4)
  loc_189AFAB: var_130 = Ucase(CVar(var_B4))
  loc_189AFB4: var_A8 = CStr(var_130)
  loc_189AFC3: Set var_8C = Nothing
  loc_189AFCB: Set var_88 = Nothing
  loc_189AFD3: Set var_90 = Nothing
  loc_189AFD6: Exit Sub
  loc_189AFD7: ' Referenced from: 18988B0
  loc_189AFDF: Set var_110 = Err()
  loc_189AFE5: Call 0.Method_arg_2C (var_B4)
  loc_189B002: MsgBox(CVar("Error " & var_B4), &H40, var_130, var_140, var_150)
  loc_189B018: Exit Sub
End Sub

Public Sub Proc_66_40_147D290
  'Data Table: 54078C
  Dim var_BC As String
  Dim var_9C As Variant
  Dim var_D0 As String
  Dim unk_5407BC As Connection15
  Dim var_AC As Variant
  Dim var_F4 As Variant
  Dim var_100 As MSHFlexGrid
  Dim var_1DC As Variant
  Dim var_15C As String
  Dim var_17C As String
  Dim var_F0 As Variant
  Dim var_8C As Recordset15
  loc_147C68C: On Error Goto loc_147D288
  loc_147C6AC: Proc_6_17_EAAE40(var_AC, MemVar_1F95078, "Select * From Enviro Where LogSite_Code=")
  loc_147C6B8: var_D0 = CStr(var_F0 & var_AC)
  loc_147C6C2: unk_5407BC.Execute var_D0, -1, var_F4
  loc_147C6CD: Set var_8C = var_F4
  loc_147C6F0: Call 0.Method_arg_90 (var_F4, var_F8)
  loc_147C6F8: Call 0.Method_arg_24 (var_86)
  loc_147C704: For var_FC =  To CInt(var_F8): 1 = var_FC 'Integer
  loc_147C71D:   Call 0.Method_arg_90 (var_F4, CLng(var_86))
  loc_147C725:   Call 0.Method_arg_20 (var_100)
  loc_147C72D:   Call 0.Method_arg_30 (var_D0)
  loc_147C743:   var_110 = Ucase(CVar(var_D0)) 'Variant
  loc_147C773:   If (var_110 = Ucase("Title")) Then
  loc_147C77F:     Call 0.Method_arg_50 (var_D0)
  loc_147C7A2:     Call 0.Method_arg_90 (var_F4, CLng(var_86))
  loc_147C7AA:     Call 0.Method_arg_20 (var_100)
  loc_147C7B2:     Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_147C7CA:   Else
  loc_147C7EC:     If (var_110 = Ucase("BetweenDate")) Then
  loc_147C7F2:       var_9C = CVar(CLng(0)) 'Long
  loc_147C804:       Set var_F4 = Me.FGrid
  loc_147C80A:       var_AC = var_F4.TextMatrix)
  loc_147C82B:       Set var_100 = Me.FGrid
  loc_147C831:       var_1DC = var_100.TextMatrix)
  loc_147C83D:       var_15C = "'From :'+ '"
  loc_147C86D:       var_17C = "' + ' To ' + '"
  loc_147C8AA:       var_D0 = CStr(1 & Format(CVar(CStr(var_1DC)), "dd/mmm/yyyy") & "'")
  loc_147C8BE:       Call 0.Method_arg_90 (var_250, CLng(var_86), var_254, var_D0, 1, 1 & Format(CVar(CStr(var_AC)), "dd/mmm/yyyy") & var_17C, 1)
  loc_147C8C6:       Call 0.Method_arg_20 (var_15C, var_1DC, 1, CVar(CLng(1)))
  loc_147C8CE:       Call 0.Method_arg_38 (var_AC, 1)
  loc_147C8FC:     End If
  loc_147C8FC:   End If
  loc_147C8FF: Next var_FC 'Integer
  loc_147C915: If (global_52 = "ConfirmLetter") Then
  loc_147C929:   Call 0.Method_arg_90 (var_F4, var_F8)
  loc_147C931:   Call 0.Method_arg_24 (var_86)
  loc_147C93D:   For var_25C =  To CInt(var_F8): 1 = var_25C 'Integer
  loc_147C956:     Call 0.Method_arg_90 (var_F4, CLng(var_86))
  loc_147C95E:     Call 0.Method_arg_20 (var_100)
  loc_147C966:     Call 0.Method_arg_30 (var_D0)
  loc_147C97C:     var_26C = Ucase(CVar(var_D0)) 'Variant
  loc_147C9AC:     If (var_26C = Ucase("line1")) Then
  loc_147C9BF:       var_BC = "'Our friendly staff is prepared to insure that your stay at the '+'"
  loc_147C9D7:       var_F0 = "Select * From Enviro Where LogSite_Code=" & Left(Trim(MemVar_1F95130), &H1E) 
  loc_147C9F8:       Call 0.Method_arg_90 (var_F4, CLng(var_86))
  loc_147CA00:       Call 0.Method_arg_20 (var_100)
  loc_147CA08:       Call 0.Method_arg_38 (CStr(var_F0 & "'"))
  loc_147CA25:     Else
  loc_147CA47:       If (var_26C = Ucase("ChkTime")) Then
  loc_147CA54:         var_D0 = "'Check in time is after '+'" & global_56
  loc_147CA6E:         Call 0.Method_arg_90 (var_F4, CLng(var_86))
  loc_147CA76:         Call 0.Method_arg_20 (var_100)
  loc_147CA7E:         Call 0.Method_arg_38 (CStr(var_F0 & "'") & "'")
  loc_147CA91:       End If
  loc_147CA91:     End If
  loc_147CA94:   Next var_25C 'Integer
  loc_147CA9F:   var_F8 = var_8C.RecordCount
  loc_147CAAD:   If (var_F8 > 0) Then
  loc_147CAB3:     var_8C.MoveFirst
  loc_147CAC9:     Call 0.Method_arg_90 (var_F4, var_F8)
  loc_147CAD1:     Call 0.Method_arg_24 (var_86)
  loc_147CADD:     For var_270 =  To CInt(var_F8): 1 = var_270 'Integer
  loc_147CAF6:       Call 0.Method_arg_90 (var_F4, CLng(var_86))
  loc_147CAFE:       Call 0.Method_arg_20 (var_100)
  loc_147CB06:       Call 0.Method_arg_30 (CStr(var_F0 & "'"))
  loc_147CB1C:       var_280 = Ucase(CVar(CStr(var_F0 & "'"))) 'Variant
  loc_147CB4C:       If (var_280 = Ucase("Instruction1")) Then
  loc_147CB7D:         Proc_6_17_EAAE40(var_F0)
  loc_147CB99:         Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147CBA1:         Call 0.Method_arg_20 (CStr(var_F0))
  loc_147CBA9:         Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ResInstruction1")))))
  loc_147CBC6:       Else
  loc_147CBE8:         If (var_280 = Ucase("Instruction2")) Then
  loc_147CC19:           Proc_6_17_EAAE40(var_F0)
  loc_147CC35:           Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147CC3D:           Call 0.Method_arg_20 (CStr(var_F0))
  loc_147CC45:           Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ResInstruction2")))))
  loc_147CC62:         Else
  loc_147CC84:           If (var_280 = Ucase("Instruction3")) Then
  loc_147CCB5:             Proc_6_17_EAAE40(var_F0)
  loc_147CCD1:             Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147CCD9:             Call 0.Method_arg_20 (CStr(var_F0))
  loc_147CCE1:             Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ResInstruction3")))))
  loc_147CCFE:           Else
  loc_147CD20:             If (var_280 = Ucase("Instruction4")) Then
  loc_147CD51:               Proc_6_17_EAAE40(var_F0)
  loc_147CD6D:               Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147CD75:               Call 0.Method_arg_20 (CStr(var_F0))
  loc_147CD7D:               Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ResInstruction4")))))
  loc_147CD9A:             Else
  loc_147CDBC:               If (var_280 = Ucase("Instruction5")) Then
  loc_147CDED:                 Proc_6_17_EAAE40(var_F0)
  loc_147CE09:                 Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147CE11:                 Call 0.Method_arg_20 (CStr(var_F0))
  loc_147CE19:                 Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ResInstruction5")))))
  loc_147CE36:               Else
  loc_147CE58:                 If (var_280 = Ucase("Instruction6")) Then
  loc_147CE89:                   Proc_6_17_EAAE40(var_F0)
  loc_147CEA5:                   Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147CEAD:                   Call 0.Method_arg_20 (CStr(var_F0))
  loc_147CEB5:                   Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ResInstruction6")))))
  loc_147CED2:                 Else
  loc_147CEF4:                   If (var_280 = Ucase("Instruction7")) Then
  loc_147CF25:                     Proc_6_17_EAAE40(var_F0)
  loc_147CF41:                     Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147CF49:                     Call 0.Method_arg_20 (CStr(var_F0))
  loc_147CF51:                     Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ResInstruction7")))))
  loc_147CF6E:                   Else
  loc_147CF90:                     If (var_280 = Ucase("Instruction8")) Then
  loc_147CFC1:                       Proc_6_17_EAAE40(var_F0)
  loc_147CFDD:                       Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147CFE5:                       Call 0.Method_arg_20 (CStr(var_F0))
  loc_147CFED:                       Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ResInstruction8")))))
  loc_147D00A:                     Else
  loc_147D02C:                       If (var_280 = Ucase("Instruction9")) Then
  loc_147D05D:                         Proc_6_17_EAAE40(var_F0)
  loc_147D079:                         Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147D081:                         Call 0.Method_arg_20 (CStr(var_F0))
  loc_147D089:                         Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ResInstruction9")))))
  loc_147D0A6:                       Else
  loc_147D0C8:                         If (var_280 = Ucase("Instruction10")) Then
  loc_147D0F9:                           Proc_6_17_EAAE40(var_F0)
  loc_147D115:                           Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147D11D:                           Call 0.Method_arg_20 (CStr(var_F0))
  loc_147D125:                           Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ResInstruction10")))))
  loc_147D142:                         Else
  loc_147D164:                           If (var_280 = Ucase("Instruction11")) Then
  loc_147D195:                             Proc_6_17_EAAE40(var_F0)
  loc_147D1B1:                             Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147D1B9:                             Call 0.Method_arg_20 (CStr(var_F0))
  loc_147D1C1:                             Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ResInstruction11")))))
  loc_147D1DE:                           Else
  loc_147D200:                             If (var_280 = Ucase("Instruction12")) Then
  loc_147D231:                               Proc_6_17_EAAE40(var_F0)
  loc_147D24D:                               Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147D255:                               Call 0.Method_arg_20 (CStr(var_F0))
  loc_147D25D:                               Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ResInstruction12")))))
  loc_147D277:                             End If
  loc_147D277:                           End If
  loc_147D277:                         End If
  loc_147D277:                       End If
  loc_147D277:                     End If
  loc_147D277:                   End If
  loc_147D277:                 End If
  loc_147D277:               End If
  loc_147D277:             End If
  loc_147D277:           End If
  loc_147D277:         End If
  loc_147D277:       End If
  loc_147D27A:     Next var_270 'Integer
  loc_147D27F:   End If
  loc_147D27F: End If
  loc_147D284: Set var_8C = Nothing
  loc_147D287: Exit Sub
  loc_147D288: ' Referenced from: 147C68C
  loc_147D288: Proc_6_60_E63754()
  loc_147D28D: Exit Sub
End Sub

Public Sub Proc_66_41_1495E1C
  'Data Table: 54078C
  Dim var_9C As Variant
  Dim var_B0 As Long
  Dim var_B8 As Variant
  Dim var_C0 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim Me As Recordset15
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_144 As String
  Dim var_148 As MSHFlexGrid
  Dim var_184 As Variant
  loc_14951BF: var_B0 = CLng(Me.FGrid.Row)
  loc_14951CF: If Not (var_B0 = CLng(2)) Then
  loc_14951D9:   If Not (var_B0 = CLng(3)) Then
  loc_14951E3:     If (var_B0 = CLng(4)) Then
  loc_14951E6:     End If
  loc_14951E6:   End If
  loc_14951EC:   var_B4 = global_52
  loc_14951F7:   If Not (var_B4 = "LuxuryTaxRegister") Then
  loc_1495202:     If (var_B4 = "LuxuryTaxRegisterI") Then
  loc_1495205:     End If
  loc_1495211:     Set var_9C = Me.TxtGrid
  loc_1495217:     Call 0.Method_Proc_66_41_1495E1C0 (0, var_B8)
  loc_1495236:     If (var_B8.Text <> vbNullString) Then
  loc_149524C:       var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1495264:       var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1495281:       Set var_B8 = Me.ListView.SelectedItem
  loc_1495287:       var_BC = var_B8.Text
  loc_149528F:       var_134 = CVar(var_BC) 'String
  loc_1495297:       Set var_148 = Me.FGrid
  loc_149529D:       LateIdCallSt
  loc_14952BD:     End If
  loc_14952C0:   Else
  loc_14952C8:     If (var_B4 = "GRC") Then
  loc_14952F4:       If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_1495314:         If (CLng(Me.FGrid.Row) = CLng(2)) Then
  loc_1495323:           Set var_9C = Me.TxtGrid
  loc_1495329:           Call 0.Method_Proc_66_41_1495E1C0 (0, var_B8, var_BC, var_148)
  loc_1495331:           var_134 = var_B8.Text
  loc_1495348:           If (var_BC <> vbNullString) Then
  loc_149534E:             var_104 = CVar(CLng(2)) 'Long
  loc_1495353:             var_124 = 1
  loc_1495379:             var_B8 = Me.Fields.Item("Name")
  loc_149538A:             var_D0 = CVar(CStr(var_B8.Value)) 'String
  loc_1495392:             Set var_C0 = Me.FGrid
  loc_1495398:             LateIdCallSt
  loc_14953B3:           Else
  loc_14953B6:             var_F4 = CVar(CLng(2)) 'Long
  loc_14953BB:             var_114 = 1
  loc_14953C4:             var_144 = vbNullString
  loc_14953CE:             Set var_9C = Me.FGrid
  loc_14953D4:             LateIdCallSt
  loc_14953DF:           End If
  loc_14953E2:         Else
  loc_14953F4:           Call 0.Method_Proc_66_41_1495E1C0 (0, var_B8, var_BC, Me.TxtGrid, var_144, var_114, var_F4)
  loc_14953FC:           var_C0 = var_B8.Text
  loc_1495413:           If (var_BC <> vbNullString) Then
  loc_1495419:             var_104 = CVar(CLng(3)) 'Long
  loc_149541E:             var_124 = 1
  loc_1495444:             var_B8 = Me.Fields.Item("Name")
  loc_1495455:             var_D0 = CVar(CStr(var_B8.Value)) 'String
  loc_149545D:             Set var_C0 = Me.FGrid
  loc_1495463:             LateIdCallSt
  loc_149547E:           Else
  loc_1495481:             var_F4 = CVar(CLng(3)) 'Long
  loc_1495486:             var_114 = 1
  loc_149548F:             var_144 = vbNullString
  loc_1495499:             Set var_9C = Me.FGrid
  loc_149549F:             LateIdCallSt
  loc_14954AA:           End If
  loc_14954AA:         End If
  loc_14954AA:       End If
  loc_14954AD:     Else
  loc_14954B5:       If (var_B4 = "FormCReport") Then
  loc_14954E1:         If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_1495501:           If (CLng(Me.FGrid.Row) = CLng(2)) Then
  loc_1495516:             Call 0.Method_Proc_66_41_1495E1C0 (0, var_B8, var_BC, Me.TxtGrid, var_144, var_114, var_F4)
  loc_149551E:             var_C0 = var_B8.Text
  loc_1495535:             If (var_BC <> vbNullString) Then
  loc_149553B:               var_104 = CVar(CLng(2)) 'Long
  loc_1495540:               var_124 = 1
  loc_1495577:               var_D0 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_149557F:               Set var_C0 = Me.FGrid
  loc_1495585:               LateIdCallSt
  loc_14955A0:               var_104 = CVar(CLng(2)) 'Long
  loc_14955A5:               var_124 = 2
  loc_14955CB:               var_B8 = Me.Fields.Item("DocID")
  loc_14955DC:               var_D0 = CVar(CStr(var_B8.Value)) 'String
  loc_14955E4:               Set var_C0 = Me.FGrid
  loc_14955EA:               LateIdCallSt
  loc_1495605:             Else
  loc_1495608:               var_F4 = CVar(CLng(2)) 'Long
  loc_149560D:               var_114 = 1
  loc_1495616:               var_144 = vbNullString
  loc_1495620:               Set var_9C = Me.FGrid
  loc_1495626:               LateIdCallSt
  loc_1495634:               var_F4 = CVar(CLng(2)) 'Long
  loc_1495639:               var_114 = 2
  loc_1495642:               var_144 = vbNullString
  loc_149564C:               Set var_9C = Me.FGrid
  loc_1495652:               LateIdCallSt
  loc_149565D:             End If
  loc_1495660:           Else
  loc_1495672:             Call 0.Method_Proc_66_41_1495E1C0 (0, var_B8, var_BC, Me.TxtGrid, var_144, var_114, var_F4)
  loc_149567A:             var_9C = var_B8.Text
  loc_1495691:             If (var_BC <> vbNullString) Then
  loc_1495697:               var_104 = CVar(CLng(3)) 'Long
  loc_149569C:               var_124 = 1
  loc_14956D3:               var_D0 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_14956DB:               Set var_C0 = Me.FGrid
  loc_14956E1:               LateIdCallSt
  loc_14956FC:               var_104 = CVar(CLng(3)) 'Long
  loc_1495701:               var_124 = 2
  loc_1495727:               var_B8 = Me.Fields.Item("DocID")
  loc_1495738:               var_D0 = CVar(CStr(var_B8.Value)) 'String
  loc_1495740:               Set var_C0 = Me.FGrid
  loc_1495746:               LateIdCallSt
  loc_1495761:             Else
  loc_1495764:               var_F4 = CVar(CLng(3)) 'Long
  loc_1495769:               var_114 = 1
  loc_1495772:               var_144 = vbNullString
  loc_149577C:               Set var_9C = Me.FGrid
  loc_1495782:               LateIdCallSt
  loc_1495790:               var_F4 = CVar(CLng(3)) 'Long
  loc_1495795:               var_114 = 2
  loc_149579E:               var_144 = vbNullString
  loc_14957A8:               Set var_9C = Me.FGrid
  loc_14957AE:               LateIdCallSt
  loc_14957B9:             End If
  loc_14957B9:           End If
  loc_14957B9:         End If
  loc_14957B9:       End If
  loc_14957B9:     End If
  loc_14957B9:   End If
  loc_14957BC: Else
  loc_14957C3:   If Not (var_B0 = CLng(5)) Then
  loc_14957CD:     If Not (var_B0 = CLng(6)) Then
  loc_14957D7:       If Not (var_B0 = CLng(7)) Then
  loc_14957E1:         If Not (var_B0 = CLng(8)) Then
  loc_14957EB:           If (var_B0 = CLng(9)) Then
  loc_14957EE:           End If
  loc_14957EE:         End If
  loc_14957EE:       End If
  loc_14957EE:     End If
  loc_1495800:     Call 0.Method_Proc_66_41_1495E1C0 (0, var_B8, var_BC, Me.TxtGrid, var_144, var_114, var_F4)
  loc_1495808:     var_9C = var_B8.Text
  loc_149581F:     If (var_BC <> vbNullString) Then
  loc_1495835:       var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149584D:       var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_149586A:       Set var_B8 = Me.ListView.SelectedItem
  loc_1495878:       var_134 = CVar(var_B8.Text) 'String
  loc_1495880:       Set var_148 = Me.FGrid
  loc_1495886:       LateIdCallSt
  loc_14958A6:     End If
  loc_14958A9:   Else
  loc_14958B0:     If (var_B0 = CLng(4)) Then
  loc_14958B9:       var_160 = global_52
  loc_14958BF:     Else
  loc_14958C6:       If Not (var_B0 = CLng(0)) Then
  loc_14958D0:         If (var_B0 = CLng(1)) Then
  loc_14958D3:         End If
  loc_14958E6:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14958EF:         Set var_148 = Me.FGrid
  loc_14958FE:         var_114 = CVar(CLng(var_148.Col)) 'Long
  loc_149590C:         Set var_9C = Me.TxtGrid
  loc_1495912:         Call 0.Method_Proc_66_41_1495E1C0 (0, var_B8, var_114, var_F4, var_148, var_134, var_114)
  loc_1495933:         LateIdCallSt
  loc_149595C:         If (global_52 = "LuxuryTaxRegister") Then
  loc_1495968:           Set var_9C = Me.TxtGrid
  loc_149596E:           Call 0.Method_Proc_66_41_1495E1C0 (0, var_B8, Me.FGrid, CVar(Proc_6_33_15125B8(var_B8, var_F4, var_144, var_114)))
  loc_1495997:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14959AF:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_14959DB:           var_184 = CVar(CStr(Format(CVar(Proc_6_33_15125B8(var_B8, "dd/MMM/yyyy", var_B8)), "dd/MMM/yyyy"))) 'String
  loc_14959E3:           Set var_164 = Me.FGrid
  loc_14959E9:           LateIdCallSt
  loc_1495A10:         End If
  loc_1495A1B:         If (global_52 = "Form6TourismReport") Then
  loc_1495A27:           Set var_9C = Me.TxtGrid
  loc_1495A2D:           Call 0.Method_Proc_66_41_1495E1C0 (0, var_B8, var_164, var_184, 1)
  loc_1495A56:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1495A6E:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1495A9A:           var_184 = CVar(CStr(Format(CVar(Proc_6_120_133AEC8(var_B8, 1, var_124)), "MMM/YYYY"))) 'String
  loc_1495AA2:           Set var_164 = Me.FGrid
  loc_1495AA8:           LateIdCallSt
  loc_1495ACF:         End If
  loc_1495ADA:         If (global_52 = "Form4TourismReport") Then
  loc_1495AE6:           Set var_9C = Me.TxtGrid
  loc_1495AEC:           Call 0.Method_Proc_66_41_1495E1C0 (0, var_B8, var_164, var_184, 1, 1)
  loc_1495B15:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1495B2D:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1495B59:           var_184 = CVar(CStr(Format(CVar(Proc_6_120_133AEC8(var_B8, var_124, var_104)), "MMM/YYYY"))) 'String
  loc_1495B61:           Set var_164 = Me.FGrid
  loc_1495B67:           LateIdCallSt
  loc_1495B8E:         End If
  loc_1495B99:         If (global_52 = "LuxuryTaxRegisterI") Then
  loc_1495BA5:           Set var_9C = Me.TxtGrid
  loc_1495BAB:           Call 0.Method_Proc_66_41_1495E1C0 (0, var_B8, var_164, var_184, 1, 1)
  loc_1495BD4:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1495BEC:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1495C18:           var_184 = CVar(CStr(Format(CVar(Proc_6_33_15125B8(var_B8, var_124, var_104)), "dd/MMM/yyyy"))) 'String
  loc_1495C20:           Set var_164 = Me.FGrid
  loc_1495C26:           LateIdCallSt
  loc_1495C4D:         End If
  loc_1495C58:         If (global_52 = "LTFORMII") Then
  loc_1495C64:           Set var_9C = Me.TxtGrid
  loc_1495C6A:           Call 0.Method_Proc_66_41_1495E1C0 (0, var_B8, var_164, var_184, 1, 1)
  loc_1495C93:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1495CAB:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1495CD7:           var_184 = CVar(CStr(Format(CVar(Proc_6_120_133AEC8(var_B8, var_124, var_104)), "MMM/YYYY"))) 'String
  loc_1495CDF:           Set var_164 = Me.FGrid
  loc_1495CE5:           LateIdCallSt
  loc_1495D0C:         End If
  loc_1495D17:         If (global_52 = "LTFORMIV") Then
  loc_1495D23:           Set var_9C = Me.TxtGrid
  loc_1495D29:           Call 0.Method_Proc_66_41_1495E1C0 (0, var_B8, var_164, var_184, 1, 1)
  loc_1495D52:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1495D6A:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1495D96:           var_184 = CVar(CStr(Format(CVar(Proc_6_120_133AEC8(var_B8, var_124, var_104)), "MMM/YYYY"))) 'String
  loc_1495D9E:           Set var_164 = Me.FGrid
  loc_1495DA4:           LateIdCallSt
  loc_1495DCB:         End If
  loc_1495DCB:       End If
  loc_1495DCB:     End If
  loc_1495DCB:   End If
  loc_1495DCB: End If
  loc_1495DD6: If (arg_10 = 0) Then
  loc_1495DDD:   Set var_9C = Me.FGrid
  loc_1495DF9:   Set var_9C = Me.TxtGrid
  loc_1495DFF:   Call 0.Method_Proc_66_41_1495E1C0 (0, var_B8, 0, FGrid.DispID_8001, &HFF, var_164, var_184)
  loc_1495E07:   var_B8.Visible = True
  loc_1495E13: End If
  loc_1495E13: Proc_66_41_1495E1C = 1
End Sub

Public Sub Proc_66_42_162B688
  'Data Table: 54078C
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_88 As Integer
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_124 As MSHFlexGrid
  loc_162A134: Call 0.Method_arg_78 (var_8C)
  loc_162A14F: Me.Pic.Top = ((var_8C - Me.Pic.Width) - CDbl(&HA))
  loc_162A174: Call 0.Method_Me0 (var_8C)
  loc_162A186: var_B8 = CVar(((var_8C - CDbl(Me.FGrid.Width)) / CDbl(2))) 'Single
  loc_162A18F: Set var_98 = Me.FGrid
  loc_162A195: var_98.Left = var_B8
  loc_162A1B6: Me.FGrid.Top = CVar(CDbl(&H4B))
  loc_162A1D1: Me.FGrid.Rows = &HA
  loc_162A1EC: Me.FGrid.Cols = 3
  loc_162A207: Me.FGrid.FixedCols = 1
  loc_162A20F: var_B8 = 0
  loc_162A218: var_D8 = &H898
  loc_162A225: Set var_90 = Me.FGrid
  loc_162A22B: LateIdCallSt
  loc_162A236: var_B8 = 1
  loc_162A23F: var_D8 = &H898
  loc_162A24C: Set var_90 = Me.FGrid
  loc_162A252: LateIdCallSt
  loc_162A25D: var_B8 = 2
  loc_162A266: var_D8 = 0
  loc_162A273: Set var_90 = Me.FGrid
  loc_162A279: LateIdCallSt
  loc_162A284: var_B8 = 1
  loc_162A293: var_D8 = CVar(CInt(1)) 'Integer
  loc_162A29B: Set var_90 = Me.FGrid
  loc_162A2A1: LateIdCallSt
  loc_162A2D1: For var_EC = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_EC 'Integer
  loc_162A2DB:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_162A2E0:   var_D8 = 0
  loc_162A2ED:   Set var_90 = Me.FGrid
  loc_162A2F3:   LateIdCallSt
  loc_162A301: Next var_EC 'Integer
  loc_162A306: Call Proc_66_47_1411268()
  loc_162A312: For var_F0 = 1 To 4: var_86 = var_F0 'Integer
  loc_162A322:   Set var_90 = Me.GridSel
  loc_162A328:   Call 0.Method_Proc_66_42_162B6880 (var_86, var_98)
  loc_162A346:   If (CBool(var_98.Visible) = &HFF) Then
  loc_162A34F:     var_88 = (var_88 + 1)
  loc_162A352:   End If
  loc_162A355: Next var_F0 'Integer
  loc_162A375: var_B8 = CVar(CDbl(((((global_108 - global_110) + 1) * CInt(220)) + 500))) 'Single
  loc_162A384: Me.FGrid.Height = var_B8
  loc_162A392: var_100 = global_112 'Variant
  loc_162A3A1: If (var_100 = 0) Then
  loc_162A3B7:   Me.FGrid.Top = CVar(CDbl(1000))
  loc_162A3C2: Else
  loc_162A3CD:   If (var_100 = 1) Then
  loc_162A3D9:     Set var_90 = Me.GridSel
  loc_162A3DF:     Call 0.Method_Proc_66_42_162B6880 (1)
  loc_162A3E7:     var_A8 = var_98.Width
  loc_162A3F6:     Call 0.Method_Me0 (var_8C, var_A8)
  loc_162A408:     var_B8 = CVar(((var_8C - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_162A416:     Set var_104 = Me.GridSel
  loc_162A41C:     Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162A424:     var_108.Left = 1
  loc_162A441:     var_118 = Me.FGrid.Height
  loc_162A468:     var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162A476:     Set var_104 = Me.GridSel
  loc_162A47C:     Call 0.Method_Proc_66_42_162B6880 (1, var_108, 1)
  loc_162A484:     var_108.Top = var_118
  loc_162A4A5:     var_A8 = Me.FGrid.Height
  loc_162A4B5:     Set var_98 = Me.Pic
  loc_162A4C6:     Call 0.Method_Me8 (var_8C, var_A8)
  loc_162A4DD:     var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_98.Height) - CDbl(1200))) 'Single
  loc_162A4EB:     Set var_104 = Me.GridSel
  loc_162A4F1:     Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162A4F9:     var_108.Height = 1
  loc_162A515:     Set var_90 = Me.GridSel
  loc_162A51B:     Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162A53A:     Set var_104 = Me.Check1
  loc_162A540:     Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162A548:     var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162A564:     Set var_90 = Me.GridSel
  loc_162A56A:     Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162A589:     Set var_104 = Me.Check1
  loc_162A58F:     Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162A597:     var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162A5B0:     var_11C = global_52
  loc_162A5BB:     If Not (var_11C = "ConfirmLetter") Then
  loc_162A5C6:       If Not (var_11C = "RegistrationCard") Then
  loc_162A5D1:         If (var_11C = "CancellLetter") Then
  loc_162A5D4:         End If
  loc_162A5D4:       End If
  loc_162A5E6:       Set var_90 = Me.GridSel
  loc_162A5EC:       Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162A5F4:       var_98.Top = CVar(CDbl(500))
  loc_162A600:       var_B8 = 1
  loc_162A61B:       Set var_90 = Me.GridSel
  loc_162A621:       Call 0.Method_Proc_66_42_162B6880 (1, var_98, &H3E8)
  loc_162A629:       LateIdCallSt
  loc_162A654:       Set var_90 = Me.GridSel
  loc_162A65A:       Call 0.Method_Proc_66_42_162B6880 (1, var_98, CVar(CInt(1)), 1)
  loc_162A662:       LateIdCallSt
  loc_162A68C:       Set var_90 = Me.GridSel
  loc_162A692:       Call 0.Method_Proc_66_42_162B6880 (1, var_98, &HBB8, 3)
  loc_162A69A:       LateIdCallSt
  loc_162A6C4:       Set var_90 = Me.GridSel
  loc_162A6CA:       Call 0.Method_Proc_66_42_162B6880 (1, var_98, &H4B0, 4, var_98)
  loc_162A6D2:       LateIdCallSt
  loc_162A6E5:       var_B8 = CVar(CDbl(6000)) 'Single
  loc_162A6F3:       Set var_90 = Me.GridSel
  loc_162A6F9:       Call 0.Method_Proc_66_42_162B6880 (1, var_98, var_B8, var_98)
  loc_162A701:       var_98.Width = var_98
  loc_162A716:       Set var_90 = Me.GridSel
  loc_162A71C:       Call 0.Method_Proc_66_42_162B6880 (1, var_98, var_98)
  loc_162A73B:       Set var_104 = Me.Check1
  loc_162A741:       Call 0.Method_Proc_66_42_162B6880 (1, var_108, (CDbl(var_98.Top) + CDbl(&H14)))
  loc_162A749:       var_108.Top = var_B8
  loc_162A765:       Set var_90 = Me.GridSel
  loc_162A76B:       Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162A78A:       Set var_104 = Me.Check1
  loc_162A790:       Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162A798:       var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162A7AB:     End If
  loc_162A7AE:   Else
  loc_162A7B9:     If (var_100 = 2) Then
  loc_162A7C5:       Set var_90 = Me.GridSel
  loc_162A7CB:       Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162A7D3:       var_A8 = var_98.Width
  loc_162A7E2:       Call 0.Method_Me0 (var_8C, var_A8)
  loc_162A7F8:       var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_162A806:       Set var_104 = Me.GridSel
  loc_162A80C:       Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162A814:       var_108.Left = 2
  loc_162A831:       var_118 = Me.FGrid.Height
  loc_162A858:       var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162A866:       Set var_104 = Me.GridSel
  loc_162A86C:       Call 0.Method_Proc_66_42_162B6880 (1, var_108, 2)
  loc_162A874:       var_108.Top = var_118
  loc_162A895:       var_A8 = Me.FGrid.Height
  loc_162A8A5:       Set var_98 = Me.Pic
  loc_162A8AB:       var_94 = var_98.Height
  loc_162A8B6:       Call 0.Method_Me8 (var_8C, var_A8)
  loc_162A8CD:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_94) - CDbl(1200))) 'Single
  loc_162A8DB:       Set var_104 = Me.GridSel
  loc_162A8E1:       Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162A8E9:       var_108.Height = 2
  loc_162A905:       Set var_90 = Me.GridSel
  loc_162A90B:       Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162A92A:       Set var_104 = Me.Check1
  loc_162A930:       Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162A938:       var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162A954:       Set var_90 = Me.GridSel
  loc_162A95A:       Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162A979:       Set var_104 = Me.Check1
  loc_162A97F:       Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162A987:       var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162A9A0:       Call 0.Method_Me0 (var_94)
  loc_162A9AE:       Set var_90 = Me.GridSel
  loc_162A9B4:       Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162A9BC:       var_A8 = var_98.Width
  loc_162A9CB:       Call 0.Method_Me0 (var_8C, var_A8)
  loc_162A9E9:       var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_162A9F7:       Set var_104 = Me.GridSel
  loc_162A9FD:       Call 0.Method_Proc_66_42_162B6880 (2, var_108)
  loc_162AA05:       var_108.Left = 2
  loc_162AA22:       var_118 = Me.FGrid.Height
  loc_162AA49:       var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162AA57:       Set var_104 = Me.GridSel
  loc_162AA5D:       Call 0.Method_Proc_66_42_162B6880 (2, var_108, 2)
  loc_162AA65:       var_108.Top = var_118
  loc_162AA86:       var_A8 = Me.FGrid.Height
  loc_162AA96:       Set var_98 = Me.Pic
  loc_162AA9C:       var_94 = var_98.Height
  loc_162AAA7:       Call 0.Method_Me8 (var_8C, var_A8)
  loc_162AABE:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_94) - CDbl(1200))) 'Single
  loc_162AACC:       Set var_104 = Me.GridSel
  loc_162AAD2:       Call 0.Method_Proc_66_42_162B6880 (2, var_108)
  loc_162AADA:       var_108.Height = 2
  loc_162AAF6:       Set var_90 = Me.GridSel
  loc_162AAFC:       Call 0.Method_Proc_66_42_162B6880 (2, var_98)
  loc_162AB1B:       Set var_104 = Me.Check1
  loc_162AB21:       Call 0.Method_Proc_66_42_162B6880 (2, var_108)
  loc_162AB29:       var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162AB45:       Set var_90 = Me.GridSel
  loc_162AB4B:       Call 0.Method_Proc_66_42_162B6880 (2, var_98)
  loc_162AB6A:       Set var_104 = Me.Check1
  loc_162AB70:       Call 0.Method_Proc_66_42_162B6880 (2, var_108)
  loc_162AB78:       var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162AB8E:     Else
  loc_162AB99:       If (var_100 = 3) Then
  loc_162ABA5:         Set var_90 = Me.GridSel
  loc_162ABAB:         Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162ABB3:         var_A8 = var_98.Width
  loc_162ABC2:         Call 0.Method_Me0 (var_8C, var_A8)
  loc_162ABD8:         var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_162ABE6:         Set var_104 = Me.GridSel
  loc_162ABEC:         Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162ABF4:         var_108.Left = 3
  loc_162AC0B:         Set var_98 = Me.FGrid
  loc_162AC11:         var_118 = var_98.Height
  loc_162AC38:         var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162AC46:         Set var_104 = Me.GridSel
  loc_162AC4C:         Call 0.Method_Proc_66_42_162B6880 (1, var_108, 3)
  loc_162AC54:         var_108.Top = var_118
  loc_162AC74:         Set var_90 = Me.GridSel
  loc_162AC7A:         Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162AC99:         Set var_104 = Me.Check1
  loc_162AC9F:         Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162ACA7:         var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162ACC3:         Set var_90 = Me.GridSel
  loc_162ACC9:         Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162ACE8:         Set var_104 = Me.Check1
  loc_162ACEE:         Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162ACF6:         var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162AD12:         Set var_90 = Me.GridSel
  loc_162AD18:         Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162AD37:         Set var_104 = Me.GridSel
  loc_162AD3D:         Call 0.Method_Proc_66_42_162B6880 (3, var_108)
  loc_162AD45:         var_108.Left = CVar(CDbl(var_98.Left))
  loc_162AD61:         Set var_104 = Me.GridSel
  loc_162AD67:         Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162AD6F:         var_118 = var_108.Height
  loc_162AD81:         Set var_90 = Me.GridSel
  loc_162AD87:         Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162ADA3:         var_B8 = CVar(((CDbl(var_98.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162ADB1:         Set var_120 = Me.GridSel
  loc_162ADB7:         Call 0.Method_Proc_66_42_162B6880 (3, var_124, CVar(CDbl(var_98.Left)))
  loc_162ADBF:         var_124.Top = var_118
  loc_162ADE3:         Set var_90 = Me.GridSel
  loc_162ADE9:         Call 0.Method_Proc_66_42_162B6880 (3, var_98)
  loc_162AE08:         Set var_104 = Me.Check1
  loc_162AE0E:         Call 0.Method_Proc_66_42_162B6880 (3, var_108)
  loc_162AE16:         var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162AE32:         Set var_90 = Me.GridSel
  loc_162AE38:         Call 0.Method_Proc_66_42_162B6880 (3, var_98)
  loc_162AE57:         Set var_104 = Me.Check1
  loc_162AE5D:         Call 0.Method_Proc_66_42_162B6880 (3, var_108)
  loc_162AE65:         var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162AE7E:         Call 0.Method_Me0 (var_94)
  loc_162AE8C:         Set var_90 = Me.GridSel
  loc_162AE92:         Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162AE9A:         var_A8 = var_98.Width
  loc_162AEA9:         Call 0.Method_Me0 (var_8C, var_A8)
  loc_162AEC7:         var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_162AED5:         Set var_104 = Me.GridSel
  loc_162AEDB:         Call 0.Method_Proc_66_42_162B6880 (2, var_108)
  loc_162AEE3:         var_108.Left = CVar(CDbl(var_98.Left))
  loc_162AEFA:         Set var_98 = Me.FGrid
  loc_162AF00:         var_118 = var_98.Height
  loc_162AF27:         var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162AF35:         Set var_104 = Me.GridSel
  loc_162AF3B:         Call 0.Method_Proc_66_42_162B6880 (2, var_108, CVar(CDbl(var_98.Left)))
  loc_162AF43:         var_108.Top = var_118
  loc_162AF63:         Set var_104 = Me.GridSel
  loc_162AF69:         Call 0.Method_Proc_66_42_162B6880 (2, var_108)
  loc_162AF71:         var_118 = var_108.Height
  loc_162AF83:         Set var_90 = Me.GridSel
  loc_162AF89:         Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162AFA5:         var_B8 = CVar(((CDbl(var_98.Height) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162AFB3:         Set var_120 = Me.GridSel
  loc_162AFB9:         Call 0.Method_Proc_66_42_162B6880 (2, var_124, CVar(CDbl(var_98.Left)))
  loc_162AFC1:         var_124.Height = var_118
  loc_162AFE5:         Set var_90 = Me.GridSel
  loc_162AFEB:         Call 0.Method_Proc_66_42_162B6880 (2, var_98)
  loc_162B00A:         Set var_104 = Me.Check1
  loc_162B010:         Call 0.Method_Proc_66_42_162B6880 (2, var_108)
  loc_162B018:         var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162B034:         Set var_90 = Me.GridSel
  loc_162B03A:         Call 0.Method_Proc_66_42_162B6880 (2, var_98)
  loc_162B059:         Set var_104 = Me.Check1
  loc_162B05F:         Call 0.Method_Proc_66_42_162B6880 (2, var_108)
  loc_162B067:         var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162B07D:       Else
  loc_162B088:         If (var_100 = 4) Then
  loc_162B094:           Set var_90 = Me.GridSel
  loc_162B09A:           Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162B0A2:           var_A8 = var_98.Width
  loc_162B0B1:           Call 0.Method_Me0 (var_8C, var_A8)
  loc_162B0C7:           var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_162B0D5:           Set var_104 = Me.GridSel
  loc_162B0DB:           Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162B0E3:           var_108.Left = 4
  loc_162B0FA:           Set var_98 = Me.FGrid
  loc_162B100:           var_118 = var_98.Height
  loc_162B127:           var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162B135:           Set var_104 = Me.GridSel
  loc_162B13B:           Call 0.Method_Proc_66_42_162B6880 (1, var_108, 4)
  loc_162B143:           var_108.Top = var_118
  loc_162B163:           Set var_90 = Me.GridSel
  loc_162B169:           Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162B188:           Set var_104 = Me.Check1
  loc_162B18E:           Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162B196:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162B1B2:           Set var_90 = Me.GridSel
  loc_162B1B8:           Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162B1D7:           Set var_104 = Me.Check1
  loc_162B1DD:           Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162B1E5:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162B1FE:           Call 0.Method_Me0 (var_94)
  loc_162B20C:           Set var_90 = Me.GridSel
  loc_162B212:           Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162B21A:           var_A8 = var_98.Width
  loc_162B229:           Call 0.Method_Me0 (var_8C, var_A8)
  loc_162B247:           var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_162B255:           Set var_104 = Me.GridSel
  loc_162B25B:           Call 0.Method_Proc_66_42_162B6880 (2, var_108)
  loc_162B263:           var_108.Left = 4
  loc_162B27A:           Set var_98 = Me.FGrid
  loc_162B280:           var_118 = var_98.Height
  loc_162B2A7:           var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162B2B5:           Set var_104 = Me.GridSel
  loc_162B2BB:           Call 0.Method_Proc_66_42_162B6880 (2, var_108, 4)
  loc_162B2C3:           var_108.Top = var_118
  loc_162B2E3:           Set var_90 = Me.GridSel
  loc_162B2E9:           Call 0.Method_Proc_66_42_162B6880 (2, var_98)
  loc_162B308:           Set var_104 = Me.Check1
  loc_162B30E:           Call 0.Method_Proc_66_42_162B6880 (2, var_108)
  loc_162B316:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162B332:           Set var_90 = Me.GridSel
  loc_162B338:           Call 0.Method_Proc_66_42_162B6880 (2, var_98)
  loc_162B357:           Set var_104 = Me.Check1
  loc_162B35D:           Call 0.Method_Proc_66_42_162B6880 (2, var_108)
  loc_162B365:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162B381:           Set var_90 = Me.GridSel
  loc_162B387:           Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162B3A6:           Set var_104 = Me.GridSel
  loc_162B3AC:           Call 0.Method_Proc_66_42_162B6880 (3, var_108)
  loc_162B3B4:           var_108.Left = CVar(CDbl(var_98.Left))
  loc_162B3D0:           Set var_104 = Me.GridSel
  loc_162B3D6:           Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162B3DE:           var_118 = var_108.Height
  loc_162B3F0:           Set var_90 = Me.GridSel
  loc_162B3F6:           Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162B412:           var_B8 = CVar(((CDbl(var_98.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162B420:           Set var_120 = Me.GridSel
  loc_162B426:           Call 0.Method_Proc_66_42_162B6880 (3, var_124, CVar(CDbl(var_98.Left)))
  loc_162B42E:           var_124.Top = var_118
  loc_162B452:           Set var_90 = Me.GridSel
  loc_162B458:           Call 0.Method_Proc_66_42_162B6880 (3, var_98)
  loc_162B477:           Set var_104 = Me.Check1
  loc_162B47D:           Call 0.Method_Proc_66_42_162B6880 (3, var_108)
  loc_162B485:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162B4A1:           Set var_90 = Me.GridSel
  loc_162B4A7:           Call 0.Method_Proc_66_42_162B6880 (3, var_98)
  loc_162B4C6:           Set var_104 = Me.Check1
  loc_162B4CC:           Call 0.Method_Proc_66_42_162B6880 (3, var_108)
  loc_162B4D4:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162B4ED:           Call 0.Method_Me0 (var_94)
  loc_162B4FB:           Set var_90 = Me.GridSel
  loc_162B501:           Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162B509:           var_A8 = var_98.Width
  loc_162B518:           Call 0.Method_Me0 (var_8C, var_A8)
  loc_162B536:           var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_162B544:           Set var_104 = Me.GridSel
  loc_162B54A:           Call 0.Method_Proc_66_42_162B6880 (4, var_108)
  loc_162B552:           var_108.Left = CVar(CDbl(var_98.Left))
  loc_162B56E:           Set var_104 = Me.GridSel
  loc_162B574:           Call 0.Method_Proc_66_42_162B6880 (1, var_108)
  loc_162B57C:           var_118 = var_108.Height
  loc_162B58E:           Set var_90 = Me.GridSel
  loc_162B594:           Call 0.Method_Proc_66_42_162B6880 (1, var_98)
  loc_162B5B0:           var_B8 = CVar(((CDbl(var_98.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162B5BE:           Set var_120 = Me.GridSel
  loc_162B5C4:           Call 0.Method_Proc_66_42_162B6880 (4, var_124, CVar(CDbl(var_98.Left)))
  loc_162B5CC:           var_124.Top = var_118
  loc_162B5F0:           Set var_90 = Me.GridSel
  loc_162B5F6:           Call 0.Method_Proc_66_42_162B6880 (4, var_98)
  loc_162B615:           Set var_104 = Me.Check1
  loc_162B61B:           Call 0.Method_Proc_66_42_162B6880 (4, var_108)
  loc_162B623:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162B63F:           Set var_90 = Me.GridSel
  loc_162B645:           Call 0.Method_Proc_66_42_162B6880 (4, var_98)
  loc_162B664:           Set var_104 = Me.Check1
  loc_162B66A:           Call 0.Method_Proc_66_42_162B6880 (4, var_108)
  loc_162B672:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162B685:         End If
  loc_162B685:       End If
  loc_162B685:     End If
  loc_162B685:   End If
  loc_162B685: End If
  loc_162B685: Exit Sub
End Sub

Public Sub Proc_66_43_E515D4
  'Data Table: 54078C
  loc_E515BB: If (Me.FrmList.Visible = &HFF) Then
  loc_E515CA:   Me.FrmList.Visible = False
  loc_E515D2: End If
  loc_E515D2: Exit Sub
End Sub

Public Sub Proc_66_44_1281678(arg_C, arg_10, arg_14) '1281678
  'Data Table: 54078C
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
  loc_12810DE: On Error Goto loc_1281662
  loc_12810E4: var_8C = vbNullString
  loc_12810EF: CRefVarAry
  loc_12810F7: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_1281118:   If (arg_C(var_8E) = 0) Then
  loc_128111B:     GoTo loc_12814B3
  loc_128111E:   End If
  loc_128112F:   var_90 = CInt(arg_C(var_8E))
  loc_1281139:   var_A8 = CVar(CLng(var_90)) 'Long
  loc_1281151:   Set var_DC = Me.GridSel
  loc_1281157:   Call 0.Method_Proc_66_44_12816780 (arg_10, var_E0, 0)
  loc_128117F:   If (CStr(var_E0.TextMatrix)) = "ü") Then
  loc_128118B:     If (CInt(arg_14) = 0) Then
  loc_12811AA:       Set var_DC = Me.GridSel
  loc_12811B0:       Call 0.Method_Proc_66_44_12816780 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_12811B8:       var_C8 = var_E0.TextMatrix)
  loc_12811E9:       Set var_108 = Me.GridSel
  loc_12811EF:       Call 0.Method_Proc_66_44_12816780 (arg_10, var_10C, 2, CVar(CLng(var_90)), ",")
  loc_1281227:       var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar(CStr(var_C8)), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)))))
  loc_128122C:       var_8C = CStr(var_1AC)
  loc_1281251:     Else
  loc_128125A:       If (CInt(arg_14) = 1) Then
  loc_1281279:         Set var_DC = Me.GridSel
  loc_128127F:         Call 0.Method_Proc_66_44_12816780 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_1281287:         var_C8 = var_E0.TextMatrix)
  loc_12812BF:         Set var_108 = Me.GridSel
  loc_12812C5:         Call 0.Method_Proc_66_44_12816780 (arg_10, var_10C, 2, CVar(CLng(var_90)), "," & "'")
  loc_1281312:         var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar("'" & CStr(var_C8) & "'"), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)) & "'")))
  loc_1281317:         var_8C = CStr(var_1AC)
  loc_1281343:       End If
  loc_1281343:     End If
  loc_1281362:     Set var_DC = Me.GridSel
  loc_1281368:     Call 0.Method_Proc_66_44_12816780 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_128139A:     If (Len(var_94 & CStr(var_E0.TextMatrix))) < &HFF) Then
  loc_12813B9:       Set var_DC = Me.GridSel
  loc_12813BF:       Call 0.Method_Proc_66_44_12816780 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_12813C7:       var_C8 = var_E0.TextMatrix)
  loc_12813F8:       Set var_108 = Me.GridSel
  loc_12813FE:       Call 0.Method_Proc_66_44_12816780 (arg_10, var_10C, 1, CVar(CLng(var_90)), ",")
  loc_1281415:       var_17C = CVar(CVar(var_94) & CStr(var_10C.TextMatrix))) 'String
  loc_128141C:       var_16C = CVar(CStr(var_C8)) 'String
  loc_128142E:       var_18C = IIf((var_94 = vbNullString), var_16C, var_17C)
  loc_1281436:       var_1AC = (var_C8 + var_18C)
  loc_128143B:       var_94 = CStr(var_1AC)
  loc_128145D:     End If
  loc_1281461:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_128147F:     Set var_DC = Me.GridSel
  loc_1281485:     Call 0.Method_Proc_66_44_12816780 (arg_10, var_E0, vbNullString, 0)
  loc_128148D:     LateIdCallSt
  loc_128149F:   Else
  loc_12814A6:     var_B8 = 0
  loc_12814AF:     VarIndexSt
  loc_12814B3:   End If
  loc_12814B3:   ' Referenced from: 128111B
  loc_12814B6: Next var_98 'Integer
  loc_12814C3: CRefVarAry
  loc_12814CB: For var_1C0 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1C0 'Integer
  loc_1281503:   If CBool(arg_C(var_8E) <> 0) Then
  loc_128150A:     var_A8 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_1281528:     Set var_DC = Me.GridSel
  loc_128152E:     Call 0.Method_Proc_66_44_12816780 (arg_10, var_E0, "ü", 0)
  loc_1281536:     LateIdCallSt
  loc_1281545:   End If
  loc_1281548: Next var_1C0 'Integer
  loc_1281555: If (var_8C = vbNullString) Then
  loc_1281558:   var_A8 = 0
  loc_1281561:   var_F0 = 1
  loc_1281574:   Set var_DC = Me.GridSel
  loc_128157A:   Call 0.Method_Proc_66_44_12816780 (arg_10, var_E0)
  loc_1281582:   var_C8 = var_E0.TextMatrix)
  loc_12815AA:   MsgBox(CVar("Select " & CStr(var_C8)), &H40, var_16C, var_17C, var_18C)
  loc_12815D0:   Set var_DC = Me.GridSel
  loc_12815D6:   Call 0.Method_Proc_66_44_12816780 (arg_10, var_E0, var_C8)
  loc_12815F5:   Proc_66_44_1281678 = 0
  loc_12815FB: End If
  loc_12815FE: var_88 = var_8C
  loc_1281604: var_1C2 = arg_10
  loc_128160D: If (var_1C2 = 1) Then
  loc_1281616:   global_180 = var_94
  loc_128161D: Else
  loc_1281623:   If (var_1C2 = 2) Then
  loc_128162C:     global_184 = var_94
  loc_1281633:   Else
  loc_1281639:     If (var_1C2 = 3) Then
  loc_1281642:       global_188 = var_94
  loc_1281649:     Else
  loc_128164F:       If (var_1C2 = 4) Then
  loc_1281658:         global_192 = var_94
  loc_128165C:       End If
  loc_128165C:     End If
  loc_128165C:   End If
  loc_128165C: End If
  loc_128165C: Proc_66_44_1281678 = var_1C2
  loc_1281662: ' Referenced from: 12810DE
  loc_128166A: Proc_6_60_E63754(0, GridSel.DispID_8001)
  loc_128166F: Proc_66_44_1281678 = var_F0
End Sub

Public Sub Proc_66_45_F00A1C
  'Data Table: 54078C
  Dim var_CC As Variant
  loc_F00961: If (CLng(Me.FGrid.Row) = CLng(global_108)) Then
  loc_F00972:   Proc_303_0_FBACC8("	")
  loc_F0097A:   Exit Sub
  loc_F0097B: End If
  loc_F009BA: For var_BC = CInt(CLng(Me.FGrid.Row)) To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_F009C7:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F009EE:   If (CLng(Me.FGrid.RowHeight)) <> 0) Then
  loc_F009F8:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F00A07:     Me.FGrid.Row = var_CC
  loc_F00A0F:     Exit For
  loc_F00A12:   End If
  loc_F00A15: Next var_BC 'Integer
  loc_F00A1A: ' Referenced from: F00A0F
  loc_F00A1A: Exit Sub
End Sub

Public Sub Proc_66_46_1224FEC(arg_C, arg_10) '1224FEC
  'Data Table: 54078C
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E8 As CheckBox
  loc_1224AE3: var_86 = arg_C
  loc_1224AEC: If (var_86 = 1) Then
  loc_1224B0B:   Me.Recordset15.CursorLocation = 3
  loc_1224B34:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_1224B42:   CVarUnk
  loc_1224B47:   VerifyVarObj
  loc_1224B53:   Set var_8C = Me.GridSel
  loc_1224B59:   Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_B0, New)
  loc_1224B61:   LateIdStAd
  loc_1224B83:   ReDim Preserve global_164(0 To 0)
  loc_1224B9A:   global_164(0) = 0
  loc_1224B9B: End If
  loc_1224BA1: If (var_86 = 2) Then
  loc_1224BC0:   Me.Recordset15.CursorLocation = 3
  loc_1224BE9:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_1224BF7:   CVarUnk
  loc_1224BFC:   VerifyVarObj
  loc_1224C08:   Set var_8C = Me.GridSel
  loc_1224C0E:   Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_B0, New, 1, -1)
  loc_1224C16:   LateIdStAd
  loc_1224C38:   ReDim Preserve global_168(0 To 0)
  loc_1224C4F:   global_168(0) = 0
  loc_1224C50: End If
  loc_1224C56: If (var_86 = 3) Then
  loc_1224C75:   Me.Recordset15.CursorLocation = 3
  loc_1224C9E:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_1224CAC:   CVarUnk
  loc_1224CB1:   VerifyVarObj
  loc_1224CBD:   Set var_8C = Me.GridSel
  loc_1224CC3:   Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_B0, New, 1, -1)
  loc_1224CCB:   LateIdStAd
  loc_1224CED:   ReDim Preserve global_172(0 To 0)
  loc_1224D04:   global_172(0) = 0
  loc_1224D05: End If
  loc_1224D0B: If (var_86 = 4) Then
  loc_1224D2A:   Me.Recordset15.CursorLocation = 3
  loc_1224D53:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_1224D61:   CVarUnk
  loc_1224D66:   VerifyVarObj
  loc_1224D72:   Set var_8C = Me.GridSel
  loc_1224D78:   Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_B0, New, 1, -1, var_B0)
  loc_1224D80:   LateIdStAd
  loc_1224DA2:   ReDim Preserve global_176(0 To 0)
  loc_1224DB9:   global_176(0) = 0
  loc_1224DBA: End If
  loc_1224DCD: Set var_8C = Me.GridSel
  loc_1224DD3: Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_B0, CVar(CDbl(1700)), var_B0, var_B0)
  loc_1224DDB: var_B0.Height = var_B0
  loc_1224DF5: Set var_8C = Me.GridSel
  loc_1224DFB: Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_B0, True)
  loc_1224E03: var_B0.Visible = 1
  loc_1224E1E: Set var_8C = Me.GridSel
  loc_1224E24: Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_B0, False)
  loc_1224E2C: var_B0.Enabled = -1
  loc_1224E44: Set var_8C = Me.Check1
  loc_1224E4A: Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_B0)
  loc_1224E52: var_B0.Visible = True
  loc_1224E71: Set var_8C = Me.GridSel
  loc_1224E77: Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_B0)
  loc_1224E7F: var_B0.Width = CVar(CDbl(5200))
  loc_1224E8B: var_9C = 0
  loc_1224EA7: Set var_8C = Me.GridSel
  loc_1224EAD: Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_B0, &H258)
  loc_1224EB5: LateIdCallSt
  loc_1224EE0: Set var_8C = Me.GridSel
  loc_1224EE6: Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_B0, 0, 2)
  loc_1224EEE: LateIdCallSt
  loc_1224F19: Set var_8C = Me.GridSel
  loc_1224F1F: Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_B0, &HFA0, 1)
  loc_1224F27: LateIdCallSt
  loc_1224F45: Set var_8C = Me.Check1
  loc_1224F4B: Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_B0, CDbl(580), var_B0)
  loc_1224F53: var_B0.Width = var_B0
  loc_1224F5F: var_9C = 0
  loc_1224F72: Set var_8C = Me.GridSel
  loc_1224F78: Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_B0, var_9C)
  loc_1224F9E: Set var_E4 = Me.Check1
  loc_1224FA4: Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_E8, CDbl((CLng(var_B0.RowHeight)) + &H14)))
  loc_1224FAC: var_E8.Height = var_B0
  loc_1224FCF: Set var_8C = Me.Check1
  loc_1224FD5: Call 0.Method_Proc_66_46_1224FEC0 (var_86, var_B0, CInt(1))
  loc_1224FDD: var_B0.Value = var_9C
  loc_1224FE9: Exit Sub
End Sub

Public Sub Proc_66_47_1411268
  'Data Table: 54078C
  Dim var_A8 As Variant
  Dim var_BC As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_B8 As String
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_E4 As Variant
  Dim unk_5407BC As Connection15
  Dim var_17C As Variant
  Dim var_114 As Variant
  Dim var_104 As Long
  Dim var_144 As Variant
  Dim var_198 As Long
  Dim var_178 As Variant
  loc_141082A: var_98 = global_52
  loc_1410835: If Not (var_98 = "ConfirmLetter") Then
  loc_1410840:   If Not (var_98 = "RegistrationCard") Then
  loc_141084B:     If (var_98 = "CancellLetter") Then
  loc_141084E:     End If
  loc_141084E:   End If
  loc_141085D:   Me.FGrid.Visible = False
  loc_141086D:   global_112 = 1
  loc_1410874:   var_88 = "Select '' as O,B.BookNo As BookNo,DocId As Code,GF.Name AS GNAME,convert(varchar(11),B.ArrDate) as ArrDate From Booking B Left Join GuestProf GF ON B.GuestProf=GF.Code Order by BookNo desc"
  loc_141087F:   Call Proc_66_46_1224FEC(1, var_88)
  loc_1410887: Else
  loc_141088F:   If Not (var_98 = "FormCReport") Then
  loc_141089A:     If (var_98 = "GRC") Then
  loc_141089D:     End If
  loc_14108A1:     Set var_C4 = Me.FGrid
  loc_14108A7:     var_A8 = CVar(CLng(2)) 'Long
  loc_14108AC:     var_D4 = 0
  loc_14108B5:     var_F4 = "From Folio No "
  loc_14108BE:     LateIdCallSt
  loc_14108C9:     var_A8 = CVar(CLng(2)) 'Long
  loc_14108CE:     var_D4 = &H10E
  loc_14108DA:     LateIdCallSt
  loc_14108E5:     var_A8 = CVar(CLng(3)) 'Long
  loc_14108EA:     var_D4 = 0
  loc_14108F3:     var_F4 = "To Folio No"
  loc_14108FC:     LateIdCallSt
  loc_1410907:     var_A8 = CVar(CLng(3)) 'Long
  loc_141090C:     var_D4 = &H10E
  loc_1410918:     LateIdCallSt
  loc_1410923:     var_A8 = CVar(CLng(2)) 'Long
  loc_1410928:     var_D4 = 1
  loc_1410931:     var_F4 = vbNullString
  loc_141093A:     LateIdCallSt
  loc_1410945:     var_A8 = CVar(CLng(3)) 'Long
  loc_141094A:     var_D4 = 1
  loc_141095C:     LateIdCallSt
  loc_1410966:     Set var_C4 = Nothing 
  loc_1410971:     global_110 = CInt(2)
  loc_1410984:     Set var_BC = Me.FGrid
  loc_141098A:     var_BC.Row = CVar(CLng(global_110))
  loc_14109B3:     If (global_52 <> "GRC") Then
  loc_14109C3:       var_B8 = "Select '' As O,CAST(GF.FolioNo AS VARCHAR) As Name,GF.DocId,GF.Name as GuestName,RO.ChkInDate As ArrDate From ((GuestFolio GF Left Join RoomOCC RO ON GF.DOCID=RO.DOCID) Left Join GuestProf on GF.GuestProf=GuestProf.Code) Where GF.VType='CHK' AND RO.ChkInDate BETWEEN "
  loc_14109CB:       var_A8 = MemVar_1F950F4
  loc_14109D3:       Proc_6_7_F26918(var_114, var_A8, var_B8, var_178, -1, var_BC, 0, CInt(3))
  loc_14109DF:       var_D4 = " AND "
  loc_14109F3:       Proc_6_7_F26918(var_144, MemVar_1F950FC, global_110 & var_114 & var_D4, var_C4, vbNullString)
  loc_1410A12:       unk_5407BC.Execute CStr(var_D4 & var_144 & " AND GuestProf.Type='Foreign' AND RO.SNO=1 Order By GF.FolioNo"), var_A8, var_C4
  loc_1410A23:       Set global_200 = var_BC
  loc_1410A45:     Else
  loc_1410A52:       var_B8 = "Select '' As O,CAST(GF.FolioNo AS VARCHAR) As Name,GF.DocId,GF.Name as GuestName,RO.ChkInDate As ArrDate From ((GuestFolio GF Left Join RoomOCC RO ON GF.DOCID=RO.DOCID) Left Join GuestProf on GF.GuestProf=GuestProf.Code) Where GF.VType='CHK' AND RO.ChkInDate BETWEEN "
  loc_1410A62:       Proc_6_7_F26918(var_114, MemVar_1F950F4, var_B8, var_178)
  loc_1410A6A:       var_124 = -1 & var_114 
  loc_1410A6E:       var_D4 = " AND "
  loc_1410A82:       Proc_6_7_F26918(var_144, MemVar_1F950FC, global_110 & var_114 & var_D4)
  loc_1410A8E:       var_F4 = " AND RO.SNO=1 Order By GF.FolioNo"
  loc_1410AA1:       unk_5407BC.Execute CStr(var_BC & var_144 & var_F4), var_F4, var_D4
  loc_1410AB2:       Set global_200 = var_BC
  loc_1410AE1:       Set var_BC = Me.DGForFolio
  loc_1410AF2:       Set var_17C = DGForFolio.DispID_69
  loc_1410B00:       var_17C.Item(1).Caption = "Folio No"
  loc_1410B11:     End If
  loc_1410B1A:     CVarUnk
  loc_1410B1F:     VerifyVarObj
  loc_1410B25:     Set var_BC = Me.DGForFolio
  loc_1410B2B:     LateIdStAd
  loc_1410B4A:     Call 0.Method_Proc_66_47_14112680 (1, var_17C, 0)
  loc_1410B52:     var_17C.Visible = Me.BTNPRINT
  loc_1410B61:   Else
  loc_1410B69:     If Not (var_98 = "Form1TourismReport") Then
  loc_1410B74:       If Not (var_98 = "Form2TourismReport") Then
  loc_1410B7F:         If Not (var_98 = "Form5TourismReport") Then
  loc_1410B8A:           If (var_98 = "MonthlyStatisticalReturn") Then
  loc_1410B8D:           End If
  loc_1410B8D:         End If
  loc_1410B8D:       End If
  loc_1410B91:       Set var_184 = Me.FGrid
  loc_1410B97:       var_A8 = CVar(CLng(0)) 'Long
  loc_1410B9C:       var_D4 = 0
  loc_1410BA5:       var_F4 = "From Date"
  loc_1410BAE:       LateIdCallSt
  loc_1410BB9:       var_A8 = CVar(CLng(0)) 'Long
  loc_1410BBE:       var_D4 = &H10E
  loc_1410BCA:       LateIdCallSt
  loc_1410BD5:       var_A8 = CVar(CLng(1)) 'Long
  loc_1410BDA:       var_D4 = 0
  loc_1410BE3:       var_F4 = "To Date"
  loc_1410BEC:       LateIdCallSt
  loc_1410BF7:       var_A8 = CVar(CLng(1)) 'Long
  loc_1410BFC:       var_D4 = &H10E
  loc_1410C08:       LateIdCallSt
  loc_1410C13:       var_A8 = CVar(CLng(0)) 'Long
  loc_1410C18:       var_D4 = 1
  loc_1410C26:       var_114 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_1410C2D:       LateIdCallSt
  loc_1410C3B:       var_A8 = CVar(CLng(1)) 'Long
  loc_1410C40:       var_D4 = 1
  loc_1410C4E:       var_114 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1410C55:       LateIdCallSt
  loc_1410C62:       Set var_184 = Nothing 
  loc_1410C86:       Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1410C95:       global_108 = CInt(1)
  loc_1410CA0:       global_112 = 0
  loc_1410CA7:     Else
  loc_1410CAF:       If Not (var_98 = "LuxuryTaxRegister") Then
  loc_1410CBA:         If (var_98 = "LuxuryTaxRegisterI") Then
  loc_1410CBD:         End If
  loc_1410CC1:         Set var_188 = Me.FGrid
  loc_1410CC7:         var_A8 = CVar(CLng(0)) 'Long
  loc_1410CCC:         var_D4 = 0
  loc_1410CD5:         var_F4 = "From Date"
  loc_1410CDE:         LateIdCallSt
  loc_1410CE9:         var_A8 = CVar(CLng(0)) 'Long
  loc_1410CEE:         var_D4 = &H10E
  loc_1410CFA:         LateIdCallSt
  loc_1410D05:         var_A8 = CVar(CLng(1)) 'Long
  loc_1410D0A:         var_D4 = 0
  loc_1410D13:         var_F4 = "To Date"
  loc_1410D1C:         LateIdCallSt
  loc_1410D27:         var_A8 = CVar(CLng(1)) 'Long
  loc_1410D2C:         var_D4 = &H10E
  loc_1410D38:         LateIdCallSt
  loc_1410D43:         var_A8 = CVar(CLng(2)) 'Long
  loc_1410D48:         var_D4 = 0
  loc_1410D51:         var_F4 = "Print Summary "
  loc_1410D5A:         LateIdCallSt
  loc_1410D65:         var_A8 = CVar(CLng(2)) 'Long
  loc_1410D6A:         var_D4 = &H10E
  loc_1410D76:         LateIdCallSt
  loc_1410D81:         var_A8 = CVar(CLng(3)) 'Long
  loc_1410D86:         var_D4 = 0
  loc_1410D8F:         var_F4 = "Print All Bills "
  loc_1410D98:         LateIdCallSt
  loc_1410DA3:         var_A8 = CVar(CLng(3)) 'Long
  loc_1410DA8:         var_D4 = &H10E
  loc_1410DB4:         LateIdCallSt
  loc_1410DBF:         var_A8 = CVar(CLng(4)) 'Long
  loc_1410DC4:         var_D4 = 0
  loc_1410DCD:         var_F4 = "All Guest Profile"
  loc_1410DD6:         LateIdCallSt
  loc_1410DE1:         var_A8 = CVar(CLng(4)) 'Long
  loc_1410DE6:         var_D4 = &H10E
  loc_1410DF2:         LateIdCallSt
  loc_1410DFD:         var_E4 = CVar(CLng(0)) 'Long
  loc_1410E02:         var_104 = 1
  loc_1410E0B:         var_D4 = "01/"
  loc_1410E40:         var_144 = CVar(CStr(CDate(1 & Format(MemVar_1F950EC, "MMM/yyyy")))) 'String
  loc_1410E47:         LateIdCallSt
  loc_1410E5F:         var_A8 = CVar(CLng(0)) 'Long
  loc_1410E64:         var_D4 = &H10E
  loc_1410E70:         LateIdCallSt
  loc_1410E7B:         var_F4 = CVar(CLng(1)) 'Long
  loc_1410E80:         var_198 = 1
  loc_1410E89:         var_D4 = "01/"
  loc_1410EE5:         var_178 = CVar(CStr(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & Format(MemVar_1F950EC, "MMM/yyyy"))))))) 'String
  loc_1410EEC:         LateIdCallSt
  loc_1410F0A:         var_A8 = CVar(CLng(1)) 'Long
  loc_1410F0F:         var_D4 = &H10E
  loc_1410F1B:         LateIdCallSt
  loc_1410F26:         var_A8 = CVar(CLng(2)) 'Long
  loc_1410F2B:         var_D4 = 1
  loc_1410F34:         var_F4 = "Yes"
  loc_1410F3D:         LateIdCallSt
  loc_1410F48:         var_A8 = CVar(CLng(3)) 'Long
  loc_1410F4D:         var_D4 = 1
  loc_1410F56:         var_F4 = "Yes"
  loc_1410F5F:         LateIdCallSt
  loc_1410F6A:         var_A8 = CVar(CLng(4)) 'Long
  loc_1410F81:         LateIdCallSt
  loc_1410F8B:         Set var_188 = Nothing 
  loc_1410F96:         global_110 = CInt(0)
  loc_1410FAF:         Me.FGrid.Row = CVar(CLng(global_110))
  loc_1410FC1:         var_A8 = 1
  loc_1410FDB:         var_88 = "Select '' as O,Name As TaxName,Code From RevMast Where FieldType='T' AND cODE IN ('" & MemVar_1F95070 & "LT') Order by Name"
  loc_1410FE9:         Call Proc_66_46_1224FEC(1, var_88)
  loc_1410FF9:         Set var_BC = Me.Check1
  loc_1410FFF:         Call 0.Method_Proc_66_47_14112680 (1, var_17C, 0, var_A8, CInt(4), global_110, var_188)
  loc_1411007:         var_17C.Value = "No"
  loc_141101E:         Set var_BC = Me.Check1
  loc_1411024:         Call 0.Method_Proc_66_47_14112680 (1, var_17C, 0, 1, var_A8)
  loc_141102C:         var_17C.Visible = var_188
  loc_1411038:         var_A8 = 0
  loc_1411059:         Set var_BC = Me.GridSel
  loc_141105F:         Call 0.Method_Proc_66_47_14112680 (1, var_17C, vbNullString, 0)
  loc_1411067:         LateIdCallSt
  loc_1411079:       Else
  loc_1411081:         If Not (var_98 = "Form6TourismReport") Then
  loc_141108C:           If Not (var_98 = "Form4TourismReport") Then
  loc_1411097:             If Not (var_98 = "LTFORMII") Then
  loc_14110A2:               If (var_98 = "LTFORMIV") Then
  loc_14110A5:               End If
  loc_14110A5:             End If
  loc_14110A5:           End If
  loc_14110A9:           Set var_1BC = Me.FGrid
  loc_14110AF:           var_A8 = CVar(CLng(0)) 'Long
  loc_14110B4:           var_D4 = 0
  loc_14110BD:           var_F4 = "For Month"
  loc_14110C6:           LateIdCallSt
  loc_14110D1:           var_A8 = CVar(CLng(0)) 'Long
  loc_14110D6:           var_D4 = &H10E
  loc_14110E2:           LateIdCallSt
  loc_14110ED:           var_D4 = CVar(CLng(0)) 'Long
  loc_14110F2:           var_F4 = 1
  loc_1411124:           var_134 = CVar(CStr(Format(MemVar_1F950EC, "MMM/YYYY"))) 'String
  loc_141112B:           LateIdCallSt
  loc_141113E:           Set var_1BC = Nothing 
  loc_1411149:           global_110 = CInt(0)
  loc_1411162:           Me.FGrid.Row = CVar(CLng(global_110))
  loc_1411173:           global_108 = global_110
  loc_141117E:           global_112 = 0
  loc_1411185:         Else
  loc_141118D:           If (var_98 = "CheckedInGuestDtl") Then
  loc_1411194:             Set var_1C0 = Me.FGrid
  loc_141119A:             var_A8 = CVar(CLng(0)) 'Long
  loc_141119F:             var_D4 = 0
  loc_14111A8:             var_F4 = "For Date"
  loc_14111B1:             LateIdCallSt
  loc_14111BC:             var_A8 = CVar(CLng(0)) 'Long
  loc_14111C1:             var_D4 = &H10E
  loc_14111CD:             LateIdCallSt
  loc_14111D8:             var_A8 = CVar(CLng(0)) 'Long
  loc_14111DD:             var_D4 = 1
  loc_14111F2:             LateIdCallSt
  loc_141120A:             global_110 = CInt(0)
  loc_1411223:             Me.FGrid.Row = CVar(CLng(global_110))
  loc_141124C:             Set var_BC = Me.BTNPRINT
  loc_1411252:             Call 0.Method_Proc_66_47_14112680 (1, var_17C, 0, 0, CInt(0), global_110, Nothing)
  loc_141125A:             var_17C.Visible = CVar(CStr(MemVar_1F950EC))
  loc_1411266:           End If
  loc_1411266:         End If
  loc_1411266:       End If
  loc_1411266:     End If
  loc_1411266:   End If
  loc_1411266: End If
  loc_1411266: Exit Sub
End Sub

Public Sub Proc_66_48_125A44C(arg_C) '125A44C
  'Data Table: 54078C
  Dim var_8C As Recordset15
  loc_1259ED1: Set var_8C = arg_C 
  loc_1259EF9: var_8C.Fields.Append "PlanTariff", &HC8, &H3C
  loc_1259F25: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_1259F51: var_8C.Fields.Append "BookingRef", &HC8, &H19
  loc_1259F7D: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_1259FA9: var_8C.Fields.Append "PartyAdd1", &HC8, &H32
  loc_1259FD5: var_8C.Fields.Append "Diplomat", &HC8, &HF
  loc_125A001: var_8C.Fields.Append "User", &HC8, &HA
  loc_125A02D: var_8C.Fields.Append "PartyAdd2", &HC8, &H32
  loc_125A059: var_8C.Fields.Append "PartyCity", &HC8, &H28
  loc_125A085: var_8C.Fields.Append "PartyState", &HC8, &H14
  loc_125A0B1: var_8C.Fields.Append "arrDt", &HC8, &H14
  loc_125A0DD: var_8C.Fields.Append "depdt", &HC8, &H14
  loc_125A109: var_8C.Fields.Append "RoomType", &HC8, &H32
  loc_125A135: var_8C.Fields.Append "NoRooms", &HC8, 5
  loc_125A161: var_8C.Fields.Append "Adults", &HC8, 5
  loc_125A18D: var_8C.Fields.Append "Childs", &HC8, 5
  loc_125A1B9: var_8C.Fields.Append "Tarrif", &HC8, &H19
  loc_125A1E5: var_8C.Fields.Append "incTax", &HC8, 5
  loc_125A211: var_8C.Fields.Append "Plan_Package", &HC8, &H19
  loc_125A23D: var_8C.Fields.Append "Remarks", &HC8, &H19
  loc_125A269: var_8C.Fields.Append "receiptNo", &HC8, &HF
  loc_125A295: var_8C.Fields.Append "Addate", &HC8, &H14
  loc_125A2C1: var_8C.Fields.Append "Adamount", &HC8, &H14
  loc_125A2ED: var_8C.Fields.Append "Rdisc", &HC8, &H19
  loc_125A319: var_8C.Fields.Append "RSDisc", &HC8, &H19
  loc_125A345: var_8C.Fields.Append "U_EntDt", &HC8, &H19
  loc_125A371: var_8C.Fields.Append "NoDays", &HC8, 3
  loc_125A39D: var_8C.Fields.Append "Comment1", &HC8, &H32
  loc_125A3C9: var_8C.Fields.Append "Comment2", &HC8, &H32
  loc_125A3F5: var_8C.Fields.Append "Comment3", &HC8, &H32
  loc_125A405: var_8C.CursorType = 3
  loc_125A412: var_8C.LockType = 3
  loc_125A431: var_8C.Open var_A0, var_B0, -1
  loc_125A438: Set var_8C = Nothing 
  loc_125A43F: Set var_88 = arg_C 
  loc_125A443: Proc_66_48_125A44C = -1
End Sub

Public Sub Proc_66_49_12456A8(arg_C) '12456A8
  'Data Table: 54078C
  Dim var_8C As Recordset15
  loc_1245159: Set var_8C = arg_C 
  loc_1245181: var_8C.Fields.Append "PlanTariff", &HC8, &H3C
  loc_12451AD: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_12451D9: var_8C.Fields.Append "BookingRef", &HC8, &H19
  loc_1245205: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_1245231: var_8C.Fields.Append "PartyAdd1", &HC8, &H32
  loc_124525D: var_8C.Fields.Append "Diplomat", &HC8, &HF
  loc_1245289: var_8C.Fields.Append "User", &HC8, &HA
  loc_12452B5: var_8C.Fields.Append "PartyAdd2", &HC8, &H32
  loc_12452E1: var_8C.Fields.Append "PartyCity", &HC8, &H28
  loc_124530D: var_8C.Fields.Append "PartyState", &HC8, &H14
  loc_1245339: var_8C.Fields.Append "arrDt", &HC8, &H14
  loc_1245365: var_8C.Fields.Append "depdt", &HC8, &H14
  loc_1245391: var_8C.Fields.Append "RoomType", &HC8, &H32
  loc_12453BD: var_8C.Fields.Append "NoRooms", &HC8, 5
  loc_12453E9: var_8C.Fields.Append "Adults", &HC8, 5
  loc_1245415: var_8C.Fields.Append "Childs", &HC8, 5
  loc_1245441: var_8C.Fields.Append "Tarrif", &HC8, &H19
  loc_124546D: var_8C.Fields.Append "incTax", &HC8, 5
  loc_1245499: var_8C.Fields.Append "Plan_Package", &HC8, &H19
  loc_12454C5: var_8C.Fields.Append "Remarks", &HC8, &H19
  loc_12454F1: var_8C.Fields.Append "Cancel", &HC8, 1
  loc_124551D: var_8C.Fields.Append "CancelDt", &HC8, &H14
  loc_1245549: var_8C.Fields.Append "CancelDay", &HC8, &H14
  loc_1245575: var_8C.Fields.Append "receiptNo", &HC8, &HF
  loc_12455A1: var_8C.Fields.Append "Addate", &HC8, &H14
  loc_12455CD: var_8C.Fields.Append "Adamount", &HC8, &H14
  loc_12455F9: var_8C.Fields.Append "Rdisc", &HC8, &H19
  loc_1245625: var_8C.Fields.Append "RSDisc", &HC8, &H19
  loc_1245651: var_8C.Fields.Append "U_EntDt", &HC8, &H19
  loc_1245661: var_8C.CursorType = 3
  loc_124566E: var_8C.LockType = 3
  loc_124568D: var_8C.Open var_A0, var_B0, -1
  loc_1245694: Set var_8C = Nothing 
  loc_124569B: Set var_88 = arg_C 
  loc_124569F: Proc_66_49_12456A8 = -1
End Sub

Public Sub Proc_66_50_EFB684(arg_C) 'EFB684
  'Data Table: 54078C
  Dim var_8C As Recordset15
  loc_EFB5AD: Set var_8C = arg_C 
  loc_EFB5D5: var_8C.Fields.Append "Country", &HC8, &H32
  loc_EFB601: var_8C.Fields.Append "Guest", &HC8, &HC
  loc_EFB62D: var_8C.Fields.Append "Night", &HC8, &HC
  loc_EFB63D: var_8C.CursorType = 3
  loc_EFB64A: var_8C.LockType = 3
  loc_EFB669: var_8C.Open var_A0, var_B0, -1
  loc_EFB670: Set var_8C = Nothing 
  loc_EFB677: Set var_88 = arg_C 
  loc_EFB67B: Proc_66_50_EFB684 = -1
End Sub

Public Sub Proc_66_51_F230D8(arg_C) 'F230D8
  'Data Table: 54078C
  Dim var_8C As Recordset15
  loc_F22FD5: Set var_8C = arg_C 
  loc_F22FFD: var_8C.Fields.Append "IndianGuest", &HC8, &HC
  loc_F23029: var_8C.Fields.Append "ForeignerGuest", &HC8, &HC
  loc_F23055: var_8C.Fields.Append "IndianNight", &HC8, &HC
  loc_F23081: var_8C.Fields.Append "ForeignerNight", &HC8, &HC
  loc_F23091: var_8C.CursorType = 3
  loc_F2309E: var_8C.LockType = 3
  loc_F230BD: var_8C.Open var_A0, var_B0, -1
  loc_F230C4: Set var_8C = Nothing 
  loc_F230CB: Set var_88 = arg_C 
  loc_F230CF: Proc_66_51_F230D8 = -1
  loc_F230D5: DOC
End Sub

Public Sub Proc_66_52_EFB9CC(arg_C) 'EFB9CC
  'Data Table: 54078C
  Dim var_8C As Recordset15
  loc_EFB8F5: Set var_8C = arg_C 
  loc_EFB91D: var_8C.Fields.Append "State", &HC8, &H32
  loc_EFB949: var_8C.Fields.Append "Guest", &HC8, &HC
  loc_EFB975: var_8C.Fields.Append "Night", &HC8, &HC
  loc_EFB985: var_8C.CursorType = 3
  loc_EFB992: var_8C.LockType = 3
  loc_EFB9B1: var_8C.Open var_A0, var_B0, -1
  loc_EFB9B8: Set var_8C = Nothing 
  loc_EFB9BF: Set var_88 = arg_C 
  loc_EFB9C3: Proc_66_52_EFB9CC = -1
End Sub

Public Sub Proc_66_53_F222EC(arg_C) 'F222EC
  'Data Table: 54078C
  Dim var_8C As Recordset15
  loc_F221E9: Set var_8C = arg_C 
  loc_F22211: var_8C.Fields.Append "IndianGuest", &HC8, &HC
  loc_F2223D: var_8C.Fields.Append "ForeignerGuest", &HC8, &HC
  loc_F22269: var_8C.Fields.Append "IndianNight", &HC8, &HC
  loc_F22295: var_8C.Fields.Append "ForeignerNight", &HC8, &HC
  loc_F222A5: var_8C.CursorType = 3
  loc_F222B2: var_8C.LockType = 3
  loc_F222D1: var_8C.Open var_A0, var_B0, -1
  loc_F222D8: Set var_8C = Nothing 
  loc_F222DF: Set var_88 = arg_C 
  loc_F222E3: Proc_66_53_F222EC = -1
  loc_F222E9: ThisVCallHidden
End Sub

Public Sub Proc_66_54_FC5E98(arg_C) 'FC5E98
  'Data Table: 54078C
  Dim var_8C As Recordset15
  loc_FC5CE5: Set var_8C = arg_C 
  loc_FC5D0D: var_8C.Fields.Append "IndianGuest", &HC8, &HC
  loc_FC5D39: var_8C.Fields.Append "ForeignerGuest", &HC8, &HC
  loc_FC5D65: var_8C.Fields.Append "IndianNight", &HC8, &HC
  loc_FC5D91: var_8C.Fields.Append "ForeignerNight", &HC8, &HC
  loc_FC5DBD: var_8C.Fields.Append "IndianChrgs", &HC8, &HC
  loc_FC5DE9: var_8C.Fields.Append "ForeignerChrgs", &HC8, &HC
  loc_FC5E15: var_8C.Fields.Append "IndianTax", &HC8, &HC
  loc_FC5E41: var_8C.Fields.Append "ForeignerTax", &HC8, &HC
  loc_FC5E51: var_8C.CursorType = 3
  loc_FC5E5E: var_8C.LockType = 3
  loc_FC5E7D: var_8C.Open var_A0, var_B0, -1
  loc_FC5E84: Set var_8C = Nothing 
  loc_FC5E8B: Set var_88 = arg_C 
  loc_FC5E8F: Proc_66_54_FC5E98 = -1
End Sub

Public Sub Proc_66_55_118430C(arg_C) '118430C
  'Data Table: 54078C
  Dim var_8C As Recordset15
  loc_1183F1D: Set var_8C = arg_C 
  loc_1183F45: var_8C.Fields.Append "Sno", &HC8, 4
  loc_1183F71: var_8C.Fields.Append "GuestName", &HC8, &H32
  loc_1183F9D: var_8C.Fields.Append "BirthAge", &HC8, 3
  loc_1183FC9: var_8C.Fields.Append "Age", &HC8, 3
  loc_1183FF5: var_8C.Fields.Append "Nationality", &HC8, &H19
  loc_1184021: var_8C.Fields.Append "RoomNo", &HC8, 5
  loc_118404D: var_8C.Fields.Append "RoomRate", &HC8, 8
  loc_1184079: var_8C.Fields.Append "ChkInDate", &HC8, &HB
  loc_11840A5: var_8C.Fields.Append "ChkInTime", &HC8, 5
  loc_11840D1: var_8C.Fields.Append "ChkOutDate", &HC8, &HB
  loc_11840FD: var_8C.Fields.Append "ChkOutTime", &HC8, 5
  loc_1184129: var_8C.Fields.Append "StPeriod", &HC8, 3
  loc_1184155: var_8C.Fields.Append "TotalTax", &HC8, 8
  loc_1184181: var_8C.Fields.Append "Person", &HC8, 5
  loc_11841AD: var_8C.Fields.Append "BillNo", &HC8, 8
  loc_11841D9: var_8C.Fields.Append "Billdate", &HC8, &HB
  loc_1184205: var_8C.Fields.Append "LTPerOcc", &HC8, 8
  loc_1184231: var_8C.Fields.Append "LTTotal", &HC8, 8
  loc_118425D: var_8C.Fields.Append "GuestProf", &HC8, 8
  loc_1184289: var_8C.Fields.Append "mProf", &HC8, 8
  loc_11842B5: var_8C.Fields.Append "RackRate", &HC8, 8
  loc_11842C5: var_8C.CursorType = 3
  loc_11842D2: var_8C.LockType = 3
  loc_11842F1: var_8C.Open var_A0, var_B0, -1
  loc_11842F8: Set var_8C = Nothing 
  loc_11842FF: Set var_88 = arg_C 
  loc_1184303: Proc_66_55_118430C = -1
  loc_1184309: DOC
End Sub

Public Sub Proc_66_56_1004B4C(arg_C) '1004B4C
  'Data Table: 54078C
  Dim var_8C As Recordset15
  loc_1004941: Set var_8C = arg_C 
  loc_1004969: var_8C.Fields.Append "IndianGuestForm1", &HC8, &HC
  loc_1004995: var_8C.Fields.Append "ForeignerGuestForm1", &HC8, &HC
  loc_10049C1: var_8C.Fields.Append "IndianNightForm1", &HC8, &HC
  loc_10049ED: var_8C.Fields.Append "ForeignerNightForm1", &HC8, &HC
  loc_1004A19: var_8C.Fields.Append "CountryForm2", &HC8, &H32
  loc_1004A45: var_8C.Fields.Append "GuestForm2", &HC8, &HC
  loc_1004A71: var_8C.Fields.Append "NightForm2", &HC8, &HC
  loc_1004A9D: var_8C.Fields.Append "StateForm5", &HC8, &H32
  loc_1004AC9: var_8C.Fields.Append "GuestForm5", &HC8, &HC
  loc_1004AF5: var_8C.Fields.Append "NightForm5", &HC8, &HC
  loc_1004B05: var_8C.CursorType = 3
  loc_1004B12: var_8C.LockType = 3
  loc_1004B31: var_8C.Open var_A0, var_B0, -1
  loc_1004B38: Set var_8C = Nothing 
  loc_1004B3F: Set var_88 = arg_C 
  loc_1004B43: Proc_66_56_1004B4C = -1
End Sub

Public Sub Proc_66_57_1608AEC
  'Data Table: 54078C
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim unk_5407BC As Connection15
  Dim var_8C As Recordset15
  Dim var_A0 As Fields15
  Dim var_D8 As Variant
  Dim var_120 As String
  Dim var_124 As String
  Dim var_12C As String
  Dim var_9C As Recordset15
  Dim var_96 As Integer
  Dim var_174 As Variant
  Dim var_118 As Variant
  Dim var_160 As Variant
  Dim var_164 As Variant
  Dim var_178 As Variant
  Dim var_94 As Recordset15
  Dim var_90 As Recordset15
  Dim var_1AC As Recordset15
  Dim var_188 As Variant
  Dim var_14C As Variant
  Dim var_1A8 As Variant
  loc_160769D: global_88 = &HFF
  loc_16076A6: global_60 = vbNullString
  loc_16076B6: Set var_A0 = Me.Check1
  loc_16076BC: Call 0.Method_Proc_66_57_1608AEC0 (1, var_A4)
  loc_16076C4: var_A6 = var_A4.Value
  loc_16076DA: If (CLng(var_A6) = 0) Then
  loc_16076F8:   Call Proc_66_44_1281678(global_164, 1, CByte(1))
  loc_1607703:   global_148 = var_C0
  loc_1607713:   If (global_88 = 0) Then
  loc_1607716:     Exit Sub
  loc_1607717:   End If
  loc_1607717: End If
  loc_1607723: Set var_A0 = Me.Check1
  loc_1607729: Call 0.Method_Proc_66_57_1608AEC0 (1, var_A4, var_A6)
  loc_1607731: var_C0 = var_A4.Value
  loc_1607747: If (CLng(var_A6) = 0) Then
  loc_160776B:   global_60 = global_60 & " And B.DocId in ( " & global_148 & ") "
  loc_1607778: End If
  loc_1607795: Proc_6_17_EAAE40(var_D8, MemVar_1F95070, "Select * From Enviro WHERE LOGSITE_CODE=", var_118)
  loc_160779D: var_F8 = -1 & var_D8 
  loc_16077AB: unk_5407BC.Execute CStr(var_F8), var_A0, global_88
  loc_16077B6: Set var_8C = var_A0
  loc_16077DC: If (var_8C.RecordCount > 0) Then
  loc_16077F6:   var_A4 = var_8C.Fields.Item("CheckoutVar")
  loc_1607807:   var_C0 = Proc_6_38_E69628(CVar(var_A4))
  loc_160780D:   global_56 = var_C0
  loc_160781A: End If
  loc_1607826: Set var_A0 = Me.BTNPRINT
  loc_160782C: Call 0.Method_Proc_66_57_1608AEC0 (1, var_A4)
  loc_1607846: If (var_A4.Value = &HFF) Then
  loc_1607849:   Call Proc_66_63_14D3DBC()
  loc_160784E:   Exit Sub
  loc_160784F: End If
  loc_1607855: global_84 = "NewConfermationLetters"
  loc_160785F: Call 0.Method_arg_50 (var_C0)
  loc_1607867: var_D8 = CVar(var_C0) 'String
  loc_160787C: global_80 = CStr(Ucase(var_D8))
  loc_1607891: var_C0 = "Select B.DocId,Max(B.BookNo) AS BookNo,Max(B.Vdate) AS ResDate,Max(B.ArrDate) AS ArrDate, " & " Max(B.DepDate) AS DepDate,Max(B.RoomRate) AS RoomRate,Max(B.Adult) AS Adult,Max(B.Child) AS Child, "
  loc_1607898: var_C4 = var_C0 & " Max(B.DepositeReq) AS DepositeReq,Max(RM.Name) As RoomName,Max(GF.ConPrefix+' '+GF.Name) AS GNAME,Max(B.U_Name) As U_Name,Max(GF.Add1) AS Add1, "
  loc_160789F: var_C8 = CStr(Ucase(var_D8)) & " Max(GF.Add2) AS Add2,Max(GF.DiplomatYN) As DiplomatYN, Max(City.CityName) AS CityName,Max(City.ZipCode) AS Zip,Max(State.Name) as StateName, "
  loc_16078A6: var_120 = var_C8 & " Sum(PC.AmtCr) AS Advance,Max(PM.Name) AS PaymentType , MAx(RoomCat.Name) As RoomCat , Max(PlanMast.Name) as Plan_NAme,Max(PlanMast.Tariff) As Plan_Tariff,Max(B.U_EntDt) As U_EntDt,Max(GF.Comments1) AS Comment1,Max(GF.Comments2) AS Comment2,Max(GF.Comments3) AS Comment3 "
  loc_16078AD: var_124 = var_120 & " From ((((((((Booking B Left Join RoomMast RM ON B.RoomNo=RM.Code) Left Join PlanMast on B.PackageCode = PlanMast.Code) Left Join RoomCat on B.RoomCat=RoomCat.Code) Left Join GuestProf GF ON B.GuestProf=GF.Code) "
  loc_16078BB: var_12C = var_124 & " LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) " & " Left Join PayCharge PC ON B.DocId=PC.RefDocId) LEFT JOIN RevMast PM ON (PC.Site_Code = PM.Site_Code) AND "
  loc_1607913: unk_5407BC.Execute var_12C & "(PC.PayCode = PM.Code)) Where B.LogSite_Code='" & MemVar_1F95078 & "' " & global_60 & "  Group By B.DocId ", var_D8, -1
  loc_160791E: Set var_9C = var_A0
  loc_160793B: If (var_9C.RecordCount <= 0) Then
  loc_1607944:   Call 0.Method_arg_50 (var_C0)
  loc_1607965:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C0), var_118, var_14C)
  loc_160797A:   global_88 = 0
  loc_160797D:   Exit Sub
  loc_160797E: End If
  loc_1607998: Call Proc_66_48_125A44C(New)
  loc_16079A3: Set global_96 = var_A0
  loc_16079AD: var_9C.MoveFirst
  loc_16079B2: ' Referenced from: 1608AC0
  loc_16079C1: If Not(var_9C.EOF) Then
  loc_16079C6:   var_96 = 0
  loc_16079CF:   var_174 = 0
  loc_1607A2B:   unk_5407BC.Execute CStr("SELECT Count(*) FROM GRPBookingDetails WHERE BookingDocId='" & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_1607A33:   var_160 = var_160.Fields
  loc_1607A3B:   var_174 = var_164.Item(var_164)
  loc_1607A43:   var_178 = var_178.Value
  loc_1607A70:   If (var_188 > 0) Then
  loc_1607A80:     var_E8 = "SELECT RC.Name As RoomType, RoomDet, Adults, Childs , GR.Tarrif, IncTax,CAST('0.00' as FLOAT) As PlanTariff,GR.PLAN_PACKAGE,GR.REMARKS,Booking.RDisc,Booking.RSDisc,GR.NoDays FROM (GRPBookingDetails GR Left Join RoomCat RC on GR.RoomCat=RC.Code) Inner join Booking On gr.BookingDocid=Booking.docid WHERE BookingDocid='"
  loc_1607AC6:     unk_5407BC.Execute CStr(var_E8 & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_1607AD1:     Set var_90 = var_160
  loc_1607AEE:   Else
  loc_1607AFB:     var_E8 = "SELECT RC.Name As RoomType,NoofRooms As RoomDet, Adult AS Adults,Child AS Childs ,B.RoomRate AS Tarrif, RRTaxInc AS IncTax,CAST(ISNULL(PM.Total,'0.00') AS FLOAT) As PlanTariff,'' as plan_package,'' as Remarks,B.RDisc,B.RSDisc,B.NoDays FROM (Booking B Left Join RoomCat RC on B.RoomCat=RC.Code)left join PlanMast PM on PM.Code=B.PackageCode WHERE Docid='"
  loc_1607B41:     unk_5407BC.Execute CStr(var_E8 & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_1607B4C:     Set var_90 = var_160
  loc_1607B66:   End If
  loc_1607B6C:   var_174 = 0
  loc_1607BC8:   unk_5407BC.Execute CStr("SELECT Count(*) FROM PayCharge WHERE RefDocId='" & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_1607BD0:   var_160 = var_160.Fields
  loc_1607BD8:   var_174 = var_164.Item(var_164)
  loc_1607BE0:   var_178 = var_178.Value
  loc_1607C0D:   If (var_188 > 0) Then
  loc_1607C1D:     var_E8 = "SELECT MAX(Vno) as Receipt , Max(Vdate) As PayDate , Sum(AmtCr) as Amount FROM PayCharge WHERE RefDocId='"
  loc_1607C28:     var_B8 = "DocID"
  loc_1607C63:     unk_5407BC.Execute CStr(var_E8 & var_9C.Fields.Item(var_B8).Value & "'"), var_14C, -1
  loc_1607C6E:     Set var_94 = var_160
  loc_1607C9C:     If (var_94.RecordCount > 0) Then
  loc_1607CA1:       var_96 = &HFF
  loc_1607CA4:     End If
  loc_1607CA4:   End If
  loc_1607CA7:   var_90.MoveFirst
  loc_1607CAC:   ' Referenced from: 1608AB5
  loc_1607CBB:   If Not(var_90.EOF) Then
  loc_1607CC4:     Set var_1AC = global_96 
  loc_1607CD3:     var_1AC.AddNew var_B8, var_E8
  loc_1607D12:     var_160 = var_9C.Fields
  loc_1607D56:     var_188 = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Plan_Tariff")), var_160)) 'String
  loc_1607D71:     var_1A8 = IIf((Proc_6_38_E69628(CVar(var_9C.Fields.Item("Plan_Tariff")), var_96, var_160, var_188) = vbNullString), CVar(Proc_6_38_E69628(CVar(var_160.Item("Plan_Name")), var_160)), var_188)
  loc_1607D99:     var_1AC.Fields.Item("PlanTariff").Value = var_1A8
  loc_1607E10:     var_1AC.Fields.Item("DocId").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("DocID"))))
  loc_1607E54:     var_C4 = Proc_6_38_E69628(CVar(var_9C.Fields.Item("BookNo"))) & "-"
  loc_1607E7F:     var_C8 = Proc_6_38_E69628(CVar(var_9C.Fields.Item("ResDate")), Proc_6_38_E69628(CVar(var_9C.Fields.Item("Plan_Tariff")), var_96, var_9C.Fields, var_188))
  loc_1607EA6:     var_1AC.Fields.Item("BookingRef").Value = CVar(var_188 & var_C8)
  loc_1607F13:     var_1AC.Fields.Item("PartyName").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("GName"))))
  loc_1607F73:     var_1AC.Fields.Item("PartyAdd1").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add1"))))
  loc_1608003:     var_1AC.Fields.Item("DiploMat").Value = IIf((Proc_6_38_E69628(CVar(var_9C.Fields.Item("DiplomatYN"))) = "Yes"), "Diplomat", vbNullString)
  loc_1608070:     var_1AC.Fields.Item("User").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("U_Name"))))
  loc_16080D0:     var_1AC.Fields.Item("PartyAdd2").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add2"))))
  loc_160811E:     If (Proc_6_38_E69628(CVar(var_9C.Fields.Item("Zip"))) <> vbNullString) Then
  loc_1608150:       var_C4 = Proc_6_38_E69628(CVar(var_9C.Fields.Item("CityName"))) & "-"
  loc_160817F:       var_118 = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("DiplomatYN"))) & Proc_6_38_E69628(CVar(var_9C.Fields.Item("Zip")))) 'String
  loc_16081A2:       var_1AC.Fields.Item("PartyCity").Value = var_118
  loc_16081C7:     Else
  loc_1608212:       var_1AC.Fields.Item("PartyCity").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("CityName"))))
  loc_1608227:     End If
  loc_1608272:     var_1AC.Fields.Item("PartyState").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("StateName"))))
  loc_16082D2:     var_1AC.Fields.Item("arrDt").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("ArrDate"))))
  loc_1608332:     var_1AC.Fields.Item("depdt").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("DepDate"))))
  loc_1608392:     var_1AC.Fields.Item("RoomType").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Roomtype"))))
  loc_16083F2:     var_1AC.Fields.Item("NoRooms").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("RoomDet"))))
  loc_1608452:     var_1AC.Fields.Item("Adults").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Adults"))))
  loc_16084B2:     var_1AC.Fields.Item("Childs").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Childs"))))
  loc_1608561:     var_1D8 = IIf((var_90.Fields.Item("PlanTariff").Value <> 0), CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("PlanTariff")))), CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Tarrif")))))
  loc_1608589:     var_1AC.Fields.Item("Tarrif").Value = var_1D8
  loc_16085FC:     var_1AC.Fields.Item("incTax").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("IncTax"))))
  loc_160865C:     var_1AC.Fields.Item("PLan_Package").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("PLan_Package"))))
  loc_16086BC:     var_1AC.Fields.Item("Remarks").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Remarks"))))
  loc_160871C:     var_1AC.Fields.Item("RSDisc").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("RSDisc"))))
  loc_160877C:     var_1AC.Fields.Item("RDisc").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("RDisc"))))
  loc_1608794:     If var_96 Then
  loc_16087E2:       var_1AC.Fields.Item("receiptNo").Value = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("receipt"))))
  loc_1608842:       var_1AC.Fields.Item("Addate").Value = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("paydate"))))
  loc_16088A2:       var_1AC.Fields.Item("Adamount").Value = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("Amount"))))
  loc_16088B7:     End If
  loc_1608902:     var_1AC.Fields.Item("U_EntDt").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("U_EntDt"))))
  loc_1608962:     var_1AC.Fields.Item("NoDays").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("NoDays"))))
  loc_16089C2:     var_1AC.Fields.Item("Comment1").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Comment1"))))
  loc_1608A22:     var_1AC.Fields.Item("Comment2").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Comment2"))))
  loc_1608A3A:     var_B8 = "Comment3"
  loc_1608A66:     var_E8 = "Comment3"
  loc_1608A82:     var_1AC.Fields.Item(var_E8).Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item(var_B8))))
  loc_1608AA2:     var_1AC.Update var_B8, var_E8
  loc_1608AA9:     Set var_1AC = Nothing 
  loc_1608AB0:     var_90.MoveNext
  loc_1608AB5:     GoTo loc_1607CAC
  loc_1608AB8:   End If
  loc_1608ABB:   var_9C.MoveNext
  loc_1608AC0:   GoTo loc_16079B2
  loc_1608AC3: End If
  loc_1608AC8: Set var_9C = Nothing
  loc_1608AD0: Set var_90 = Nothing
  loc_1608AD8: Set var_94 = Nothing
  loc_1608ADB: Exit Sub
  loc_1608AE4: Proc_6_60_E63754(0)
  loc_1608AE9: Exit Sub
End Sub

Public Sub Proc_66_58_15F90D0
  'Data Table: 54078C
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim unk_5407BC As Connection15
  Dim var_8C As Recordset15
  Dim var_A0 As Fields15
  Dim var_D8 As Variant
  Dim var_120 As String
  Dim var_124 As String
  Dim var_12C As String
  Dim var_9C As Recordset15
  Dim var_96 As Integer
  Dim var_174 As Variant
  Dim var_118 As Variant
  Dim var_160 As Variant
  Dim var_164 As Variant
  Dim var_178 As Variant
  Dim var_94 As Recordset15
  Dim var_90 As Recordset15
  Dim var_1AC As Recordset15
  Dim var_188 As Variant
  Dim var_14C As Variant
  Dim var_1A8 As Variant
  loc_15F7CD8: On Error Goto loc_15F90BF
  loc_15F7CE1: global_60 = vbNullString
  loc_15F7CF1: Set var_A0 = Me.Check1
  loc_15F7CF7: Call 0.Method_Proc_66_58_15F90D00 (1, var_A4)
  loc_15F7CFF: var_A6 = var_A4.Value
  loc_15F7D15: If (CLng(var_A6) = 0) Then
  loc_15F7D33:   Call Proc_66_44_1281678(global_164, 1, CByte(1))
  loc_15F7D3E:   global_148 = var_C0
  loc_15F7D4E:   If (global_88 = 0) Then
  loc_15F7D51:     Exit Sub
  loc_15F7D52:   End If
  loc_15F7D52: End If
  loc_15F7D57: global_88 = &HFF
  loc_15F7D66: Set var_A0 = Me.Check1
  loc_15F7D6C: Call 0.Method_Proc_66_58_15F90D00 (1, var_A4, var_A6)
  loc_15F7D74: global_88 = var_A4.Value
  loc_15F7D8A: If (CLng(var_A6) = 0) Then
  loc_15F7DAE:   global_60 = global_60 & " And B.DocId in ( " & global_148 & ") "
  loc_15F7DBB: End If
  loc_15F7DD8: Proc_6_17_EAAE40(var_D8, MemVar_1F95070, "Select * From Enviro WHERE LOGSITE_CODE=", var_118)
  loc_15F7DE0: var_F8 = -1 & var_D8 
  loc_15F7DEE: unk_5407BC.Execute CStr(var_F8), var_A0, CStr(var_F8)
  loc_15F7DF9: Set var_8C = var_A0
  loc_15F7E1F: If (var_8C.RecordCount > 0) Then
  loc_15F7E39:   var_A4 = var_8C.Fields.Item("CheckoutVar")
  loc_15F7E4A:   var_C0 = Proc_6_38_E69628(CVar(var_A4))
  loc_15F7E50:   global_56 = var_C0
  loc_15F7E5D: End If
  loc_15F7E69: Set var_A0 = Me.BTNPRINT
  loc_15F7E6F: Call 0.Method_Proc_66_58_15F90D00 (1, var_A4)
  loc_15F7E89: If (var_A4.Value = &HFF) Then
  loc_15F7E8C:   Call Proc_66_62_1405154()
  loc_15F7E91:   Exit Sub
  loc_15F7E92: End If
  loc_15F7E98: global_84 = "NewCancelationLetters"
  loc_15F7EA2: Call 0.Method_arg_50 (var_C0)
  loc_15F7EAA: var_D8 = CVar(var_C0) 'String
  loc_15F7EBF: global_80 = CStr(Ucase(var_D8))
  loc_15F7ED4: var_C0 = "Select B.DocId,Max(B.BookNo) AS BookNo,Max(B.Vdate) AS ResDate,Max(B.ArrDate) AS ArrDate, " & " Max(B.DepDate) AS DepDate,Max(B.Cancel) As Cancel,Max(B.CancelDate) As CancelDate,day(Max(B.CancelDate)-Max(B.Vdate)) As CancelDay,Max(B.RoomRate) AS RoomRate,Max(B.Adult) AS Adult,Max(B.Child) AS Child, "
  loc_15F7EDB: var_C4 = var_C0 & " Max(B.DepositeReq) AS DepositeReq,Max(RM.Name) As RoomName,Max(GF.ConPrefix+' '+GF.Name) AS GNAME,Max(B.U_Name) As U_Name,Max(GF.Add1) AS Add1, "
  loc_15F7EE2: var_C8 = CStr(Ucase(var_D8)) & " Max(GF.Add2) AS Add2,Max(GF.DiplomatYN) As DiplomatYN, Max(City.CityName) AS CityName,Max(City.ZipCode) AS Zip,Max(State.Name) as StateName, "
  loc_15F7EE9: var_120 = var_C8 & " Sum(PC.AmtCr) AS Advance,Max(PM.Name) AS PaymentType , MAx(RoomCat.Name) As RoomCat , Max(PlanMast.Name) as Plan_NAme,Max(PlanMast.Tariff) As Plan_Tariff,Max(B.U_EntDt) As U_EntDt "
  loc_15F7EF0: var_124 = var_120 & " From ((((((((Booking B Left Join RoomMast RM ON B.RoomNo=RM.Code) Left Join PlanMast on B.PackageCode = PlanMast.Code) Left Join RoomCat on B.RoomCat=RoomCat.Code) Left Join GuestProf GF ON B.GuestProf=GF.Code) "
  loc_15F7EFE: var_12C = var_124 & " LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) " & " Left Join PayCharge PC ON B.DocId=PC.DocId) LEFT JOIN RevMast PM ON (PC.Site_Code = PM.Site_Code) AND "
  loc_15F7F24: var_88 = var_12C & "(PC.PayCode = PM.Code)) Where B.Cancel='Y' And B.LogSite_Code='" & MemVar_1F95078 & "' " & global_60 & "  Group By B.DocId "
  loc_15F7F56: unk_5407BC.Execute var_88, var_D8, -1
  loc_15F7F61: Set var_9C = var_A0
  loc_15F7F7E: If (var_9C.RecordCount <= 0) Then
  loc_15F7F87:   Call 0.Method_arg_50 (var_C0)
  loc_15F7FA8:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C0), var_118, var_14C)
  loc_15F7FBD:   global_88 = 0
  loc_15F7FC0:   Exit Sub
  loc_15F7FC1: End If
  loc_15F7FDB: Call Proc_66_49_12456A8(New)
  loc_15F7FE6: Set global_96 = var_A0
  loc_15F7FF0: var_9C.MoveFirst
  loc_15F7FF5: ' Referenced from: 15F90A3
  loc_15F8004: If Not(var_9C.EOF) Then
  loc_15F8009:   var_96 = 0
  loc_15F8012:   var_174 = 0
  loc_15F806E:   unk_5407BC.Execute CStr("SELECT Count(*) FROM GRPBookingDetails WHERE BookingDocId='" & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_15F8076:   var_160 = var_160.Fields
  loc_15F807E:   var_174 = var_164.Item(var_164)
  loc_15F8086:   var_178 = var_178.Value
  loc_15F80B3:   If (var_188 > 0) Then
  loc_15F80C3:     var_E8 = "SELECT RC.Name As RoomType, RoomDet, Adults, Childs , GR.Tarrif, IncTax,CAST('0.00' as FLOAT) As PlanTariff,GR.PLAN_PACKAGE,GR.REMARKS,Booking.RDisc,Booking.RSDisc FROM (GRPBookingDetails GR Left Join RoomCat RC on GR.RoomCat=RC.Code) Inner join Booking On gr.BookingDocid=Booking.docid WHERE BookingDocid='"
  loc_15F8109:     unk_5407BC.Execute CStr(var_E8 & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_15F8114:     Set var_90 = var_160
  loc_15F8131:   Else
  loc_15F813E:     var_E8 = "SELECT RC.Name As RoomType,NoofRooms As RoomDet, Adult AS Adults,Child AS Childs ,B.RoomRate AS Tarrif, RRTaxInc AS IncTax,CAST(ISNULL(PM.Total,'0.00') AS FLOAT) As PlanTariff,'' as plan_package,'' as Remarks,B.RDisc,B.RSDisc FROM (Booking B Left Join RoomCat RC on B.RoomCat=RC.Code)left join PlanMast PM on PM.Code=B.PackageCode WHERE Docid='"
  loc_15F8184:     unk_5407BC.Execute CStr(var_E8 & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_15F818F:     Set var_90 = var_160
  loc_15F81A9:   End If
  loc_15F81AF:   var_174 = 0
  loc_15F820B:   unk_5407BC.Execute CStr("SELECT Count(*) FROM PayCharge WHERE RefDocId='" & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_15F8213:   var_160 = var_160.Fields
  loc_15F821B:   var_174 = var_164.Item(var_164)
  loc_15F8223:   var_178 = var_178.Value
  loc_15F8250:   If (var_188 > 0) Then
  loc_15F8260:     var_E8 = "SELECT MAX(Vno) as Receipt , Max(Vdate) As PayDate , Sum(AmtCr) as Amount FROM PayCharge WHERE RefDocId='"
  loc_15F826B:     var_B8 = "DocID"
  loc_15F82A6:     unk_5407BC.Execute CStr(var_E8 & var_9C.Fields.Item(var_B8).Value & "'"), var_14C, -1
  loc_15F82B1:     Set var_94 = var_160
  loc_15F82DF:     If (var_94.RecordCount > 0) Then
  loc_15F82E4:       var_96 = &HFF
  loc_15F82E7:     End If
  loc_15F82E7:   End If
  loc_15F82EA:   var_90.MoveFirst
  loc_15F82EF:   ' Referenced from: 15F9098
  loc_15F82FE:   If Not(var_90.EOF) Then
  loc_15F8307:     Set var_1AC = global_96 
  loc_15F8316:     var_1AC.AddNew var_B8, var_E8
  loc_15F8355:     var_160 = var_9C.Fields
  loc_15F8399:     var_188 = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Plan_Tariff")), var_160)) 'String
  loc_15F83B4:     var_1A8 = IIf((Proc_6_38_E69628(CVar(var_9C.Fields.Item("Plan_Tariff")), var_96, var_160, var_188) = vbNullString), CVar(Proc_6_38_E69628(CVar(var_160.Item("Plan_Name")), var_160)), var_188)
  loc_15F83DC:     var_1AC.Fields.Item("PlanTariff").Value = var_1A8
  loc_15F8453:     var_1AC.Fields.Item("DocId").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("DocID"))))
  loc_15F8497:     var_C4 = Proc_6_38_E69628(CVar(var_9C.Fields.Item("BookNo"))) & "-"
  loc_15F84C2:     var_C8 = Proc_6_38_E69628(CVar(var_9C.Fields.Item("ResDate")), Proc_6_38_E69628(CVar(var_9C.Fields.Item("Plan_Tariff")), var_96, var_9C.Fields, var_188))
  loc_15F84E9:     var_1AC.Fields.Item("BookingRef").Value = CVar(var_188 & var_C8)
  loc_15F8556:     var_1AC.Fields.Item("PartyName").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("GName"))))
  loc_15F85B6:     var_1AC.Fields.Item("PartyAdd1").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add1"))))
  loc_15F8646:     var_1AC.Fields.Item("DiploMat").Value = IIf((Proc_6_38_E69628(CVar(var_9C.Fields.Item("DiplomatYN"))) = "Yes"), "Diplomat", vbNullString)
  loc_15F86B3:     var_1AC.Fields.Item("User").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("U_Name"))))
  loc_15F8713:     var_1AC.Fields.Item("PartyAdd2").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add2"))))
  loc_15F8761:     If (Proc_6_38_E69628(CVar(var_9C.Fields.Item("Zip"))) <> vbNullString) Then
  loc_15F8793:       var_C4 = Proc_6_38_E69628(CVar(var_9C.Fields.Item("CityName"))) & "-"
  loc_15F87C2:       var_118 = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("DiplomatYN"))) & Proc_6_38_E69628(CVar(var_9C.Fields.Item("Zip")))) 'String
  loc_15F87E5:       var_1AC.Fields.Item("PartyCity").Value = var_118
  loc_15F880A:     Else
  loc_15F8855:       var_1AC.Fields.Item("PartyCity").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("CityName"))))
  loc_15F886A:     End If
  loc_15F88B5:     var_1AC.Fields.Item("PartyState").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("StateName"))))
  loc_15F8915:     var_1AC.Fields.Item("arrDt").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("ArrDate"))))
  loc_15F8975:     var_1AC.Fields.Item("depdt").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("DepDate"))))
  loc_15F89D5:     var_1AC.Fields.Item("RoomType").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Roomtype"))))
  loc_15F8A35:     var_1AC.Fields.Item("NoRooms").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("RoomDet"))))
  loc_15F8A95:     var_1AC.Fields.Item("Adults").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Adults"))))
  loc_15F8AF5:     var_1AC.Fields.Item("Childs").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Childs"))))
  loc_15F8BA4:     var_1D8 = IIf((var_90.Fields.Item("PlanTariff").Value <> 0), CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("PlanTariff")))), CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Tarrif")))))
  loc_15F8BCC:     var_1AC.Fields.Item("Tarrif").Value = var_1D8
  loc_15F8C3F:     var_1AC.Fields.Item("incTax").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("IncTax"))))
  loc_15F8C9F:     var_1AC.Fields.Item("PLan_Package").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("PLan_Package"))))
  loc_15F8CFF:     var_1AC.Fields.Item("Remarks").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Remarks"))))
  loc_15F8D5F:     var_1AC.Fields.Item("CancelDt").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("CancelDate"))))
  loc_15F8DBF:     var_1AC.Fields.Item("Cancel").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Cancel"))))
  loc_15F8E1F:     var_1AC.Fields.Item("CancelDay").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("CancelDay"))))
  loc_15F8E7F:     var_1AC.Fields.Item("RSDisc").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("RSDisc"))))
  loc_15F8EDF:     var_1AC.Fields.Item("RDisc").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("RDisc"))))
  loc_15F8EF7:     If var_96 Then
  loc_15F8F45:       var_1AC.Fields.Item("receiptNo").Value = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("receipt"))))
  loc_15F8FA5:       var_1AC.Fields.Item("Addate").Value = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("paydate"))))
  loc_15F9005:       var_1AC.Fields.Item("Adamount").Value = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("Amount"))))
  loc_15F901A:     End If
  loc_15F901D:     var_B8 = "U_EntDt"
  loc_15F9049:     var_E8 = "U_EntDt"
  loc_15F9065:     var_1AC.Fields.Item(var_E8).Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item(var_B8))))
  loc_15F9085:     var_1AC.Update var_B8, var_E8
  loc_15F908C:     Set var_1AC = Nothing 
  loc_15F9093:     var_90.MoveNext
  loc_15F9098:     GoTo loc_15F82EF
  loc_15F909B:   End If
  loc_15F909E:   var_9C.MoveNext
  loc_15F90A3:   GoTo loc_15F7FF5
  loc_15F90A6: End If
  loc_15F90AB: Set var_9C = Nothing
  loc_15F90B3: Set var_90 = Nothing
  loc_15F90BB: Set var_94 = Nothing
  loc_15F90BE: Exit Sub
  loc_15F90BF: ' Referenced from: 15F7CD8
  loc_15F90C7: Proc_6_60_E63754(0)
  loc_15F90CC: Exit Sub
End Sub

Public Sub Proc_66_59_101D994
  'Data Table: 54078C
  Dim var_90 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim unk_5407BC As Connection15
  Dim Me As Variant
  Dim var_C4 As Variant
  loc_101D77C: On Error Goto loc_101D983
  loc_101D785: global_60 = vbNullString
  loc_101D795: Set var_8C = Me.Check1
  loc_101D79B: Call 0.Method_Proc_66_59_101D9940 (1, var_90)
  loc_101D7B9: If (CLng(var_90.Value) = 0) Then
  loc_101D7D7:   Call Proc_66_44_1281678(global_164, 1, CByte(1))
  loc_101D7E2:   global_148 = var_AC
  loc_101D7F2:   If (global_88 = 0) Then
  loc_101D7F5:     Exit Sub
  loc_101D7F6:   End If
  loc_101D7F6: End If
  loc_101D80C: Set var_8C = Me.Check1
  loc_101D812: Call 0.Method_Proc_66_59_101D9940 (1, var_90)
  loc_101D830: If (CLng(var_90.Value) = 0) Then
  loc_101D83D:   var_AC = " Where B.Cancel='Y'" & " AND B.DocId in ( "
  loc_101D854:   global_60 = var_AC & global_148 & ") "
  loc_101D861: End If
  loc_101D86D: Set var_8C = Me.BTNPRINT
  loc_101D873: Call 0.Method_Proc_66_59_101D9940 (1, var_90)
  loc_101D88D: If (var_90.Value = &HFF) Then
  loc_101D890:   Call Proc_66_62_1405154(var_AC)
  loc_101D895:   Exit Sub
  loc_101D896: End If
  loc_101D89D: var_AC = "Select B.DocId,B.BookNo,B.Vdate,B.ArrDate,B.DepDate,B.Cancel,B.CancelDate,day(B.CancelDate-B.Vdate) As CancelDay," & " B.Adult,B.Child,B.GuestName AS GNAME,GF.Add1,GF.Add2, City.CityName AS CityName,City.ZipCode AS Zip,State.Name AS StateName  "
  loc_101D8A4: var_B0 = var_AC & " From (((Booking B Left Join GuestProf GF ON B.GuestProf=GF.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) "
  loc_101D8CE: unk_5407BC.Execute var_B0 & global_60, var_C4, -1
  loc_101D8DF: Set global_96 = var_8C
  loc_101D904: If (Me.RecordCount <= 0) Then
  loc_101D90D:   Call 0.Method_arg_50 (var_AC)
  loc_101D92E:   MsgBox("** No Records Found to Print **", &H40, CVar(var_AC), var_F8, var_118)
  loc_101D943:   global_88 = 0
  loc_101D946:   Exit Sub
  loc_101D947: End If
  loc_101D94D: global_84 = "CancellLetter"
  loc_101D957: Call 0.Method_arg_50 (var_AC, global_88)
  loc_101D974: global_80 = CStr(Ucase(CVar(var_AC)))
  loc_101D982: Exit Sub
  loc_101D983: ' Referenced from: 101D77C
  loc_101D98B: Proc_6_60_E63754(0)
  loc_101D990: Exit Sub
End Sub

Public Sub Proc_66_60_10382E4
  'Data Table: 54078C
  Dim var_90 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_B4 As String
  Dim var_BC As String
  Dim unk_5407BC As Connection15
  Dim Me As Variant
  Dim var_D0 As Variant
  loc_10380B4: On Error Goto loc_10382D5
  loc_10380BD: global_60 = vbNullString
  loc_10380CD: Set var_8C = Me.Check1
  loc_10380D3: Call 0.Method_Proc_66_60_10382E40 (1, var_90)
  loc_10380F1: If (CLng(var_90.Value) = 0) Then
  loc_103810F:   Call Proc_66_44_1281678(global_164, 1, CByte(1))
  loc_103811A:   global_148 = var_AC
  loc_103812A:   If (global_88 = 0) Then
  loc_103812D:     Exit Sub
  loc_103812E:   End If
  loc_103812E: End If
  loc_103813A: Set var_8C = Me.Check1
  loc_1038140: Call 0.Method_Proc_66_60_10382E40 (1, var_90)
  loc_103815E: If (CLng(var_90.Value) = 0) Then
  loc_103816B:   var_AC = global_60 & " Where B.DocId in ( "
  loc_1038182:   global_60 = var_AC & global_148 & ") "
  loc_103818F: End If
  loc_103819B: Set var_8C = Me.BTNPRINT
  loc_10381A1: Call 0.Method_Proc_66_60_10382E40 (1, var_90)
  loc_10381BB: If (var_90.Value = &HFF) Then
  loc_10381BE:   Call Proc_66_61_152FE08(var_AC)
  loc_10381C3:   Exit Sub
  loc_10381C4: End If
  loc_10381CB: var_AC = "Select B.DocId,Max(B.BookNo) AS BookNo,Max(B.VDate) AS VDate,Max(B.ArrDate) AS ArrDate,Max(B.DepDate) AS DepDate,Max(B.RoomNo) AS RoomNo,Max(B.RoomRate) AS RoomRate, " & " Max(B.Adult) AS Adult,Max(B.Child) AS Child,Max(RC.Name) As RoomType,Max(B.GuestName) AS GNAME,Max(GroupProf.Name) AS GroupName,Max(GF.Add1) AS Add1,Max(GF.Add2) AS Add2,Max(GF.PhoneNo) AS PhoneNo,Max(GF.MobileNo) AS MobileNo,"
  loc_10381D2: var_B0 = var_AC & " Max(GF.CreditCardNo) AS CCardNo,Max(GF.ExpiresOn) AS CCExpDate,Max(City.CityName) AS CityName,Max(City.ZipCode) AS Zip,Max(State.Name) as StateName,Max(SG.NAME) AS CompanyName,Sum(PC.AmtCr) AS ADVANCE,Max(B.Guarantee) as Guarantee,Max(PM.Name) As PlanName,Max(PM.Tariff) As [Plan] "
  loc_10381D9: var_B4 = var_B0 & " From ((((((((Booking B LEFT JOIN RoomCat RC ON B.RoomCat = RC.Code) Left Join GuestProf GF ON B.GuestProf=GF.Code) LEFT JOIN City ON GF.City = City.CityCode) "
  loc_10381E7: var_BC = var_B4 & " LEFT JOIN State ON City.State = State.Code) LEFT JOIN SUBGROUP SG ON B.Company=SG.SubCode) " & " LEFT JOIN GroupProf ON B.GroupCode = GroupProf.Code) Left Join PayCharge PC ON B.DocId=PC.DocId) Left Join PlanMast PM On B.PackageCode=PM.Code) "
  loc_1038220: unk_5407BC.Execute var_BC & global_60 & " Group By B.DocId", var_D0, -1
  loc_1038231: Set global_96 = var_8C
  loc_1038256: If (Me.RecordCount <= 0) Then
  loc_103825F:   Call 0.Method_arg_50 (var_AC)
  loc_1038280:   MsgBox("** No Records Found to Print **", &H40, CVar(var_AC), var_104, var_124)
  loc_1038295:   global_88 = 0
  loc_1038298:   Exit Sub
  loc_1038299: End If
  loc_103829F: global_84 = "RegistrCard"
  loc_10382A9: Call 0.Method_arg_50 (var_AC, global_88)
  loc_10382C6: global_80 = CStr(Ucase(CVar(var_AC)))
  loc_10382D4: Exit Sub
  loc_10382D5: ' Referenced from: 10380B4
  loc_10382DD: Proc_6_60_E63754(0)
  loc_10382E2: Exit Sub
End Sub

Public Sub Proc_66_61_152FE08
  'Data Table: 54078C
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_D4 As String
  Dim var_D8 As String
  Dim unk_5407BC As Connection15
  Dim var_88 As Integer
  Dim var_B0 As Recordset15
  Dim var_86 As Integer
  Dim var_F0 As Fields15
  Dim var_EC As Variant
  Dim var_118 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_148 As Variant
  Dim var_1A0 As Variant
  Dim var_1E8 As Variant
  Dim var_1F8 As Variant
  Dim var_1C0 As Variant
  Dim var_218 As Variant
  Dim var_108 As String
  Dim var_128 As Variant
  Dim var_190 As Variant
  Dim var_258 As Variant
  loc_152EEEC: On Error Goto loc_152FDFA
  loc_152EEF2: var_AC = " GUEST REGISTRATION "
  loc_152EEF7: Close 1
  loc_152EF00: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_152EF18: var_C4 = "Select B.DocId,Max(B.BookNo) AS BookNo,Max(B.VDate) AS VDate,Max(B.ArrDate) AS ArrDate,Max(B.DepDate) AS DepDate,Max(B.RoomNo) AS RoomNo,Max(B.RoomRate) AS RoomRate, " & " Max(B.Adult) AS Adult,Max(B.Child) AS Child,Max(RC.Name) As RoomType,Max(B.GuestName) AS GNAME,Max(GroupProf.Name) AS GroupName,Max(GF.Add1) AS Add1,Max(GF.Add2) AS Add2,Max(GF.PhoneNo) AS PhoneNo,Max(GF.MobileNo) AS MobileNo,"
  loc_152EF1F: var_C8 = var_C4 & " Max(GF.CreditCardNo) AS CCardNo,Max(GF.ExpiresOn) AS CCExpDate,Max(City.CityName) AS CityName,Max(City.ZipCode) AS Zip,Max(State.Name) as StateName,Max(SG.NAME) AS CompanyName,Sum(PC.AmtCr) AS ADVANCE,Max(B.Guarantee) as Guarantee "
  loc_152EF26: var_CC = var_C8 & " From (((((((Booking B LEFT JOIN RoomCat RC ON B.RoomCat = RC.Code) Left Join GuestProf GF ON B.GuestProf=GF.Code) LEFT JOIN City ON GF.City = City.CityCode) "
  loc_152EF34: var_D4 = var_CC & " LEFT JOIN State ON City.State = State.Code) LEFT JOIN SUBGROUP SG ON B.Company=SG.SubCode) " & " LEFT JOIN GroupProf ON B.GroupCode = GroupProf.Code) Left Join PayCharge PC ON B.DocId=PC.DocId) "
  loc_152EF4E: unk_5407BC.Execute var_D4 & global_60 & " Group By B.DocId ", var_EC, -1
  loc_152EF59: Set var_B0 = var_F0
  loc_152EF75: var_88 = 1
  loc_152EF7B: MemVar_1F953C4 = "N"
  loc_152EF82: MemVar_1F953C8 = "N"
  loc_152EF89: MemVar_1F953CC = "M"
  loc_152EFA1: If (var_B0.RecordCount > 0) Then
  loc_152EFA4:   ' Referenced from: 152FD78
  loc_152EFB3:   If Not(var_B0.EOF) Then
  loc_152EFBC:     If (var_86 = 0) Then
  loc_152EFD7:       Print 1, vbNullString
  loc_152EFFE:       Print 1, Proc_6_128_1026560(var_AC, "B", &H50)
  loc_152F012:       Print 1, vbNullString
  loc_152F01D:       Print 1, vbNullString
  loc_152F08C:       var_D8 = Proc_6_52_EAE084("NAME:", &HD, Proc_6_129_12B862C(var_88, Proc_6_129_12B862C(var_88, Proc_6_129_12B862C(var_88, var_86, &H50), &H50), &H50)) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B0.Fields.Item("GName")), var_88), &H32)
  loc_152F091:       Print 1, var_D8
  loc_152F0B7:       Print 1, vbNullString
  loc_152F146:       var_148 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("Add1"))))) + " , ")
  loc_152F14D:       var_1A0 = (var_148 + Trim(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("Add2"))))))
  loc_152F177:       Print 1, Proc_6_52_EAE084("ADDRESS:", &HD) & " " & Proc_6_45_EADFB8(CStr(var_1A0), &H40)
  loc_152F266:       var_148 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("CityName"))))) + " ")
  loc_152F26D:       var_1A0 = (var_148 + Trim(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("StateName"))))))
  loc_152F276:       var_1C0 = (var_1A0 + " ")
  loc_152F27D:       var_218 = (var_1C0 + Trim(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("Zip"))))))
  loc_152F2A7:       Print 1, Proc_6_52_EAE084("CITY,ST,ZIP:", &HD) & " " & Proc_6_45_EADFB8(CStr(var_218), &H40)
  loc_152F34F:       var_D8 = Proc_6_52_EAE084("COMPANY:", &HD) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B0.Fields.Item("CompanyName"))), &H32)
  loc_152F354:       Print 1, var_D8
  loc_152F43D:       var_108 = Proc_6_52_EAE084("PHONE:", &HD) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B0.Fields.Item("PhoneNo"))), &H23) & Proc_6_52_EAE084("MOBILE:", 7)
  loc_152F453:       Print 1, var_108 & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B0.Fields.Item("MobileNo"))), &H14)
  loc_152F495:       Print 1, vbNullString
  loc_152F564:       var_128 = CVar(Proc_6_52_EAE084("CONFIRMATION NO:", &H10) & " " & Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("BookNo").Value), 8)) 'String
  loc_152F56A:       var_148 = (var_128 + Space(&H14))
  loc_152F574:       var_180 = (var_148 + CVar(Proc_6_52_EAE084("ARRIVAL DATE:", &H10)))
  loc_152F57D:       var_190 = (CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("StateName")))) + " ")
  loc_152F584:       var_1F8 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("StateName"))))) + Format(CVar(var_B0.Fields.Item("ArrDate")), "DD/MM/YY"))
  loc_152F58A:       Print 1, CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("Zip"))))
  loc_152F5CC:       Print 1, vbNullString
  loc_152F6B4:       var_170 = CVar(Proc_6_52_EAE084("RESERVATION:", &H10, 1) & " " & Proc_6_45_EADFB8(CStr(Format(CVar(var_B0.Fields.Item("VDate")), "DD/MM/YY")), 8, 1)) 'String
  loc_152F6BA:       var_180 = (var_170 + Space(&H14))
  loc_152F6C4:       var_1A0 = (CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("StateName")))) + CVar(Proc_6_52_EAE084("DEPARTURE DATE:", &H10, 1)))
  loc_152F6CD:       var_1C0 = (CVar(var_B0.Fields.Item("ArrDate")) + " ")
  loc_152F6D4:       var_218 = ("DD/MM/YY" + Format(CVar(var_B0.Fields.Item("DepDate")), "DD/MM/YY"))
  loc_152F6DA:       Print 1, var_218
  loc_152F71E:       Print 1, vbNullString
  loc_152F7C2:       Proc_6_39_E7D3A0("DD/MM/YY", CVar(var_B0.Fields.Item("RoomRate")))
  loc_152F810:       var_128 = CVar(Proc_6_52_EAE084("GUEST ROOM NO.:", &H10, 1) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B0.Fields.Item("RoomNo")), 1), 5)) 'String
  loc_152F816:       var_148 = (var_128 + Space(&H17))
  loc_152F820:       var_180 = (Space(&H14) + CVar(Proc_6_52_EAE084("ROOM RATE:", &H10)))
  loc_152F829:       var_190 = (CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("StateName")))) + " ")
  loc_152F833:       var_218 = (CVar(Proc_6_52_EAE084("DEPARTURE DATE:", &H10, 1)) + CVar(Proc_6_45_EADFB8(CStr(Format("DD/MM/YY", "0.00")), 7, 1)))
  loc_152F83C:       var_258 = (var_218 + " PLUS TAX ")
  loc_152F842:       Print 1, var_258
  loc_152F88E:       Print 1, vbNullString
  loc_152F8F1:       var_118 = Space(3)
  loc_152F932:       Proc_6_39_E7D3A0("DD/MM/YY", CVar(var_B0.Fields.Item("Advance")))
  loc_152F980:       var_128 = CVar(Proc_6_52_EAE084("ROOM TYPE:", &H10, 1) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B0.Fields.Item("Roomtype")), 1), &H19)) 'String
  loc_152F986:       var_148 = (var_128 + var_118)
  loc_152F990:       var_180 = (Space(&H14) + CVar(Proc_6_52_EAE084("DEPOSIT:", &H10)))
  loc_152F999:       var_190 = (CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("StateName")))) + " ")
  loc_152F9A3:       var_218 = (CVar(Proc_6_52_EAE084("DEPARTURE DATE:", &H10, 1)) + CVar(Proc_6_45_EADFB8(CStr(Format("DD/MM/YY", "0.00")), 8, 1)))
  loc_152F9A9:       Print 1, var_218
  loc_152F9F3:       Print 1, vbNullString
  loc_152FA35:       Proc_6_39_E7D3A0(var_118, CVar(var_B0.Fields.Item("Adult")))
  loc_152FA52:       var_148 = (Trim(var_118) + "/ ")
  loc_152FADF:       var_190 = (CVar(Proc_6_52_EAE084("ADULTS:", &H10) & " " & Proc_6_45_EADFB8(CStr(Space(&H14)), 5)) + Space(&H17))
  loc_152FAE9:       var_1C0 = (CVar(Proc_6_52_EAE084("DEPARTURE DATE:", &H10, 1)) + CVar(Proc_6_45_EADFB8("CREDIT CARD NO.:", &H10)))
  loc_152FAF2:       var_1E8 = ("DD/MM/YY" + " ")
  loc_152FAFC:       var_218 = ("0.00" + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B0.Fields.Item("CCardNo")), 1), &H19)))
  loc_152FB02:       Print 1, var_218
  loc_152FB4C:       Print 1, vbNullString
  loc_152FB8E:       Proc_6_39_E7D3A0(var_118, CVar(var_B0.Fields.Item("Child")))
  loc_152FBC1:       Print 1, Proc_6_52_EAE084("CHILDERN:", &H10) & " " & Proc_6_45_EADFB8(CStr(var_118), 3)
  loc_152FBE9:       Print 1, vbNullString
  loc_152FCBB:       var_128 = CVar(Proc_6_52_EAE084("GROUP:", &H10) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B0.Fields.Item("GroupName"))), &H19)) 'String
  loc_152FCC1:       var_148 = (var_128 + Space(3))
  loc_152FCCB:       var_180 = (Space(&H14) + CVar(Proc_6_52_EAE084("EXP DATE:", &H10)))
  loc_152FCD4:       var_190 = (CVar(Proc_6_52_EAE084("ADULTS:", &H10) & " " & Proc_6_45_EADFB8(CStr(Space(&H14)), 5)) + " ")
  loc_152FCDB:       var_1F8 = (CVar(Proc_6_52_EAE084("DEPARTURE DATE:", &H10, 1)) + Format(CVar(var_B0.Fields.Item("CCExpDate")), "MM/YY"))
  loc_152FCE1:       Print 1, CVar(var_B0.Fields.Item("CCardNo"))
  loc_152FD1E:     End If
  loc_152FD24:     var_86 = (var_86 + &H18)
  loc_152FD27:     ' Referenced from: 152FD44
  loc_152FD2D:     If (Proc_6_129_12B862C(var_88, var_86, &H50) < &H22) Then
  loc_152FD35:       Print 1, vbNullString
  loc_152FD41:       var_86 = (var_86 + 1)
  loc_152FD44:       GoTo loc_152FD27
  loc_152FD47:     End If
  loc_152FD49:     var_86 = 0
  loc_152FD52:     var_88 = (var_88 + 1)
  loc_152FD67:     Print 1, Chr(&HC)
  loc_152FD73:     var_B0.MoveNext
  loc_152FD78:     GoTo loc_152EFA4
  loc_152FD7B:   End If
  loc_152FD7B: End If
  loc_152FD7D: Close 1
  loc_152FD86: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_152FD96: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_152FDA1: Close 1
  loc_152FDAB: If (MemVar_1F953BC = "Y") Then
  loc_152FDC7:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_152FDD1: Else
  loc_152FDEA:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_152FDF1: End If
  loc_152FDF6: global_88 = 0
  loc_152FDF9: Exit Sub
  loc_152FDFA: ' Referenced from: 152EEEC
  loc_152FDFA: Proc_6_60_E63754(global_88, var_88, var_86, var_86)
  loc_152FE04: global_88 = 0
  loc_152FE07: Exit Sub
End Sub

Public Sub Proc_66_62_1405154
  'Data Table: 54078C
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_5407BC As Connection15
  Dim var_88 As Integer
  Dim var_A0 As Recordset15
  Dim var_86 As Integer
  Dim var_EC As Variant
  Dim var_D4 As Fields15
  Dim var_130 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_170 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_1BC As Variant
  Dim var_1D4 As Variant
  Dim var_D0 As Variant
  Dim var_254 As String
  loc_1404770: On Error Goto loc_1405146
  loc_1404775: Close 1
  loc_140477E: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1404796: var_B4 = "Select B.DocId,B.BookNo,B.Vdate,B.ArrDate,B.DepDate,B.Cancel,B.CancelDate,day(B.CancelDate-B.Vdate) As CancelDay," & " B.Adult,B.Child,B.GuestName AS GNAME,GF.Add1,GF.Add2, City.CityName AS CityName,City.ZipCode AS Zip,State.Name AS StateName "
  loc_140479D: var_B8 = var_B4 & " From (((Booking B Left Join GuestProf GF ON B.GuestProf=GF.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) "
  loc_14047B7: unk_5407BC.Execute var_B8 & global_60 & vbNullString, var_D0, -1
  loc_14047C2: Set var_A0 = var_D4
  loc_14047D8: var_88 = 1
  loc_14047DE: MemVar_1F953C4 = "N"
  loc_14047E5: MemVar_1F953C8 = "N"
  loc_14047EC: MemVar_1F953CC = "M"
  loc_1404804: If (var_A0.RecordCount > 0) Then
  loc_1404807:   ' Referenced from: 14050BC
  loc_1404816:   If Not(var_A0.EOF) Then
  loc_140481F:     If (var_86 = 0) Then
  loc_140483A:       Print 1, vbNullString
  loc_1404845:       Print 1, vbNullString
  loc_1404860:       var_EC = (Space(2) + "To: ")
  loc_1404866:       Print 1, var_EC
  loc_14048DF:       var_FC = (Space(&H30) + CVar(Proc_6_52_EAE084("Arrival Date:", &H11, Proc_6_129_12B862C(var_88, var_86, &H50))))
  loc_14048E8:       var_10C = (var_FC + " ")
  loc_14048EF:       var_170 = (var_10C + Format(CVar(var_A0.Fields.Item("ArrDate")), "DD/MM/YY"))
  loc_14048F5:       Print 1, var_170
  loc_14049A5:       var_19C = "DD/MM/YY"
  loc_14049C3:       var_10C = (Space(2) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A0.Fields.Item("GName")), 1, 1), &H2E)))
  loc_14049CD:       var_150 = (var_10C + CVar(Proc_6_52_EAE084("Departure Date:", &H11)))
  loc_14049D6:       var_160 = ("DD/MM/YY" + " ")
  loc_14049DD:       var_1BC = (Format(CVar(var_A0.Fields.Item("ArrDate")), "DD/MM/YY") + Format(CVar(var_A0.Fields.Item("DepDate")), var_19C))
  loc_14049E3:       Print 1, var_1BC
  loc_1404A9E:       Proc_6_39_E7D3A0(var_19C, CVar(var_A0.Fields.Item("Adult")))
  loc_1404AE6:       Proc_6_39_E7D3A0(var_21C, CVar(var_A0.Fields.Item("Child")))
  loc_1404B11:       var_10C = (Space(5) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A0.Fields.Item("Add1")), 1, 1), &H2B)))
  loc_1404B1B:       var_150 = (var_10C + CVar(Proc_6_52_EAE084("Adults/children:", &H11)))
  loc_1404B24:       var_160 = ("DD/MM/YY" + " ")
  loc_1404B2B:       var_1D4 = (Format(CVar(var_A0.Fields.Item("ArrDate")), "DD/MM/YY") + Trim(CVar(Proc_6_45_EADFB8(CStr(var_19C), 3))))
  loc_1404B41:       Print 1, var_1D4 & " " & Trim(CVar(Proc_6_45_EADFB8(CStr(var_21C), 3)))
  loc_1404BDD:       var_10C = (Space(5) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A0.Fields.Item("Add2")), var_88), &H2B)))
  loc_1404BE3:       Print 1, var_10C
  loc_1404C55:       var_10C = (Space(5) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A0.Fields.Item("CityName"))), &H23)))
  loc_1404C5B:       Print 1, var_10C
  loc_1404CCD:       var_10C = (Space(5) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A0.Fields.Item("StateName"))), &H23)))
  loc_1404CD3:       Print 1, var_10C
  loc_1404CF5:       Print 1, vbNullString
  loc_1404D00:       Print 1, vbNullString
  loc_1404D0B:       Print 1, vbNullString
  loc_1404D79:       var_FC = (Space(2) + CVar(Proc_6_45_EADFB8("Your cancellation number is:", &H1C)))
  loc_1404D82:       var_10C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A0.Fields.Item("StateName"))), &H23)) + " ")
  loc_1404D8C:       var_160 = (var_10C + CVar(Proc_6_45_EADFB8(CStr(var_A0.Fields.Item("BookNo").Value), 8)))
  loc_1404D92:       Print 1, Format(CVar(var_A0.Fields.Item("ArrDate")), "DD/MM/YY")
  loc_1404DC0:       Print 1, vbNullString
  loc_1404DCB:       Print 1, vbNullString
  loc_1404E12:       var_EC = "DD/MM/YY"
  loc_1404E50:       var_254 = Proc_6_45_EADFB8("Date:", 5) & " " & Proc_6_45_EADFB8(CStr(Format(CVar(var_A0.Fields.Item("CancelDate")), var_EC)), 8, 1)
  loc_1404E55:       Print 1, var_254
  loc_1404E7F:       Print 1, vbNullString
  loc_1404EA3:       Print 1, Proc_6_45_EADFB8("Dear Guest: ", &HC)
  loc_1404EB7:       Print 1, vbNullString
  loc_1404EC2:       Print 1, vbNullString
  loc_1404F04:       Proc_6_39_E7D3A0(var_EC, CVar(var_A0.Fields.Item("CancelDay")))
  loc_1404F1D:       var_130 = (CVar(Proc_6_45_EADFB8("We have not received your deposit within the ", &H2D)) + Trim(var_EC))
  loc_1404F26:       var_150 = (var_A0.Fields.Item("BookNo").Value + " days agreed upon. ")
  loc_1404F2C:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_A0.Fields.Item("BookNo").Value), 8))
  loc_1404F50:       Print 1, vbNullString
  loc_1404F74:       Print 1, Proc_6_45_EADFB8("We have therefore cancelled your reservation. Please choose the ", &H40)
  loc_1404FB1:       var_EC = (Trim(MemVar_1F95130) + " ")
  loc_1404FBB:       var_10C = (var_EC + CVar(Proc_6_45_EADFB8("the next time your travel to our city.", &H28)))
  loc_1404FC1:       Print 1, CVar(Proc_6_45_EADFB8("We have not received your deposit within the ", &H2D))
  loc_1404FDE:       Print 1, vbNullString
  loc_1404FE9:       Print 1, vbNullString
  loc_140500D:       Print 1, Proc_6_45_EADFB8("Thank you,", &HA)
  loc_1405021:       Print 1, vbNullString
  loc_140502C:       Print 1, vbNullString
  loc_1405037:       Print 1, vbNullString
  loc_1405055:       Print 1, Proc_6_45_EADFB8(MemVar_1F95130, &H28)
  loc_1405062:     End If
  loc_1405068:     var_86 = (var_86 + &H1F)
  loc_140506B:     ' Referenced from: 1405088
  loc_1405071:     If (Proc_6_129_12B862C(var_88, var_86, &H50) < &H45) Then
  loc_1405079:       Print 1, vbNullString
  loc_1405085:       var_86 = (var_86 + 1)
  loc_1405088:       GoTo loc_140506B
  loc_140508B:     End If
  loc_140508D:     var_86 = 0
  loc_1405096:     var_88 = (var_88 + 1)
  loc_14050AB:     Print 1, Chr(&HC)
  loc_14050B7:     var_A0.MoveNext
  loc_14050BC:     GoTo loc_1404807
  loc_14050BF:   End If
  loc_14050BF: End If
  loc_14050C1: Close 1
  loc_14050CA: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_14050DA: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_14050E5: Close 1
  loc_14050EF: If (MemVar_1F953BC = "Y") Then
  loc_140510B:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1405115: Else
  loc_140512E:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1405135: End If
  loc_140513A: global_88 = 0
  loc_1405142: Set var_A0 = Nothing
  loc_1405145: Exit Sub
  loc_1405146: ' Referenced from: 1404770
  loc_1405146: Proc_6_60_E63754(global_88, var_88, var_86, var_86)
  loc_1405150: global_88 = 0
  loc_1405153: Exit Sub
End Sub

Public Sub Proc_66_63_14D3DBC
  'Data Table: 54078C
  Dim var_B8 As String
  Dim var_BC As String
  Dim var_C8 As String
  Dim unk_5407BC As Connection15
  Dim var_88 As Integer
  Dim var_A4 As Recordset15
  Dim var_86 As Integer
  Dim var_F4 As Variant
  Dim var_DC As Fields15
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  loc_14D306C: On Error Goto loc_14D3DAD
  loc_14D3071: Close 1
  loc_14D307A: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_14D3092: var_B8 = "Select B.DocId,Max(B.BookNo) AS BookNo,Max(B.Vdate) AS ResDate,Max(B.ArrDate) AS ArrDate,Max(B.DepDate) AS DepDate,Max(B.RoomRate) AS RoomRate,Max(B.Adult) AS Adult," & " Max(B.Child) AS Child,Max(B.DepositeReq) AS DepositeReq,Max(RM.Name) As RoomName,Max(B.GuestName) AS GNAME,Max(GF.Add1) AS Add1,Max(GF.Add2) AS Add2, Max(City.CityName) AS CityName,Max(City.ZipCode) AS Zip,Max(State.Name) as StateName,Sum(PC.AmtCr) AS Advance,Max(PM.NAME) AS PaymentType "
  loc_14D3099: var_BC = var_B8 & " From ((((((Booking B Left Join RoomMast RM ON B.RoomNo=RM.Code) Left Join GuestProf GF ON B.GuestProf=GF.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) Left Join PayCharge PC ON B.DocId=PC.DocId)  LEFT JOIN RevMast PM ON PC.PAYCODE = PM.Code) "
  loc_14D30BA: unk_5407BC.Execute var_BC & " Where PM.FieldType='P' " & global_60 & "Group By B.DocId ", var_D8, -1
  loc_14D30C5: Set var_A4 = var_DC
  loc_14D30DD: var_88 = 1
  loc_14D30E3: MemVar_1F953C4 = "N"
  loc_14D30EA: MemVar_1F953C8 = "N"
  loc_14D30F1: MemVar_1F953CC = "M"
  loc_14D3109: If (var_A4.RecordCount > 0) Then
  loc_14D310C:   ' Referenced from: 14D3D23
  loc_14D311B:   If Not(var_A4.EOF) Then
  loc_14D3124:     If (var_86 = 0) Then
  loc_14D313F:       Print 1, vbNullString
  loc_14D314A:       Print 1, vbNullString
  loc_14D3165:       var_F4 = (Space(2) + "To: ")
  loc_14D316B:       Print 1, var_F4
  loc_14D3224:       var_104 = (Space(&H30) + CVar(Proc_6_52_EAE084("Arrival Date:", &H11, Proc_6_129_12B862C(var_88, var_86, &H50))))
  loc_14D322D:       var_114 = (var_104 + " ")
  loc_14D3234:       var_178 = (var_114 + Format(CVar(var_A4.Fields.Item("ArrDate")), "DDD"))
  loc_14D324A:       Print 1, var_178 & ", " & Format(CVar(var_A4.Fields.Item("ArrDate")), "DD/MM/YY")
  loc_14D3366:       var_114 = (Space(2) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A4.Fields.Item("GName")), 1, 1, 1), &H2E, 1)))
  loc_14D3370:       var_158 = (var_114 + CVar(Proc_6_52_EAE084("Departure Date:", &H11)))
  loc_14D3379:       var_168 = ("DDD" + " ")
  loc_14D3380:       var_1E0 = (Format(CVar(var_A4.Fields.Item("ArrDate")), "DDD") + Format(CVar(var_A4.Fields.Item("DepDate")), "DDD"))
  loc_14D3396:       Print 1, "DD/MM/YY" & ", " & Format(CVar(var_A4.Fields.Item("DepDate")), "DD/MM/YY")
  loc_14D34C8:       var_114 = (Space(5) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A4.Fields.Item("Add1")), 1, 1, 1), &H2B, 1)))
  loc_14D34D2:       var_158 = (var_114 + CVar(Proc_6_52_EAE084("Adults/children:", &H11)))
  loc_14D34DB:       var_168 = ("DDD" + " ")
  loc_14D34E2:       var_1E0 = (Format(CVar(var_A4.Fields.Item("ArrDate")), "DDD") + Trim(CVar(Proc_6_45_EADFB8(CStr(var_A4.Fields.Item("Adult").Value), 3))))
  loc_14D34F8:       Print 1, "DD/MM/YY" & " " & Trim(CVar(Proc_6_45_EADFB8(CStr(var_A4.Fields.Item("Child").Value), 3)))
  loc_14D35FF:       var_114 = (Space(5) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A4.Fields.Item("Add2")), var_88), &H2B)))
  loc_14D3609:       var_158 = (var_114 + CVar(Proc_6_52_EAE084("Rate: ", &H11)))
  loc_14D3612:       var_168 = ("DDD" + " ")
  loc_14D361C:       var_1F0 = (Format(CVar(var_A4.Fields.Item("ArrDate")), "DDD") + CVar(Proc_6_45_EADFB8(CStr(Format(CVar(var_A4.Fields.Item("RoomRate")), "0.00")), 7, 1)))
  loc_14D3622:       Print 1, "DD/MM/YY" & " "
  loc_14D3712:       var_114 = (Space(5) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A4.Fields.Item("CityName")), 1), &H23)))
  loc_14D3719:       var_158 = (var_114 + Space(8))
  loc_14D3723:       var_178 = ("DDD" + CVar(Proc_6_52_EAE084("Requested: ", &H11)))
  loc_14D372C:       var_198 = (CVar(var_A4.Fields.Item("RoomRate")) + " ")
  loc_14D3736:       var_1F0 = ("0.00" + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A4.Fields.Item("RoomName"))), &HF)))
  loc_14D373C:       Print 1, "DD/MM/YY" & " "
  loc_14D37CC:       var_114 = (Space(5) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A4.Fields.Item("StateName"))), &H23)))
  loc_14D37D2:       Print 1, var_114
  loc_14D37F4:       Print 1, vbNullString
  loc_14D37FF:       Print 1, vbNullString
  loc_14D386D:       If (var_A4.Fields.Item("Advance").Value >= var_A4.Fields.Item("DepositeReq").Value) Then
  loc_14D3873:         var_9C = "RESERVATION GURANTEED"
  loc_14D3879:       Else
  loc_14D387C:         var_9C = "RESERVATION NOT GURANTEED"
  loc_14D387F:       End If
  loc_14D391B:       var_104 = (Space(2) + CVar(Proc_6_45_EADFB8("Your confirmation number is:", &H1C)))
  loc_14D3924:       var_114 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A4.Fields.Item("StateName"))), &H23)) + " ")
  loc_14D392E:       var_168 = (var_114 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A4.Fields.Item("BookNo"))), 8)))
  loc_14D3935:       var_198 = (CVar(Proc_6_52_EAE084("Requested: ", &H11)) + Space(&HB))
  loc_14D393F:       var_1E0 = ("0.00" + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(var_9C), &H19)))
  loc_14D3945:       Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A4.Fields.Item("RoomName"))), &HF))
  loc_14D39CF:       var_114 = (Space(&H32) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A4.Fields.Item("PaymentType"))), &H19)))
  loc_14D39D5:       Print 1, var_114
  loc_14D39F7:       Print 1, vbNullString
  loc_14D3A7E:       var_104 = (CVar(Proc_6_45_EADFB8("Date:", 5)) + Space(2))
  loc_14D3A88:       var_178 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A4.Fields.Item("PaymentType"))), &H19)) + CVar(Proc_6_45_EADFB8(CStr(Format(CVar(var_A4.Fields.Item("ResDate")), "DD/MM/YY")), 8, 1)))
  loc_14D3A8E:       Print 1, Space(&HB)
  loc_14D3ABA:       Print 1, vbNullString
  loc_14D3AC5:       Print 1, vbNullString
  loc_14D3AE9:       Print 1, Proc_6_45_EADFB8("Dear Guest: ", &HC)
  loc_14D3AFD:       Print 1, vbNullString
  loc_14D3B21:       Print 1, Proc_6_45_EADFB8("We are pleased to confirm your reservation on the above date. ", &H3E)
  loc_14D3B35:       Print 1, vbNullString
  loc_14D3B83:       var_C8 = Proc_6_45_EADFB8("Our friendly staff is prepared to insure that your stay at the ", &H3F) & Proc_6_45_EADFB8(CStr(Trim(MemVar_1F95130)), &H16)
  loc_14D3B88:       Print 1, var_C8
  loc_14D3BC0:       Print 1, Proc_6_45_EADFB8(" is an enjoyable one.", &H15)
  loc_14D3BD4:       Print 1, vbNullString
  loc_14D3BF8:       Print 1, Proc_6_45_EADFB8("Thank you,", &HA)
  loc_14D3C0C:       Print 1, vbNullString
  loc_14D3C17:       Print 1, vbNullString
  loc_14D3C22:       Print 1, vbNullString
  loc_14D3C40:       Print 1, Proc_6_45_EADFB8(MemVar_1F95130, &H46)
  loc_14D3C52:       Print 1, vbNullString
  loc_14D3C80:       Print 1, Proc_6_45_EADFB8("Check in time is after ", &H17) & global_56
  loc_14D3C96:       Print 1, vbNullString
  loc_14D3CBA:       Print 1, Proc_6_45_EADFB8("Cancellations must be made at least 72 hours in advance.", &H38)
  loc_14D3CC9:     End If
  loc_14D3CCF:     var_86 = (var_86 + &H21)
  loc_14D3CD2:     ' Referenced from: 14D3CEF
  loc_14D3CD8:     If (Proc_6_129_12B862C(var_88, var_86, &H50) <= &H45) Then
  loc_14D3CE0:       Print 1, vbNullString
  loc_14D3CEC:       var_86 = (var_86 + 1)
  loc_14D3CEF:       GoTo loc_14D3CD2
  loc_14D3CF2:     End If
  loc_14D3CF4:     var_86 = 0
  loc_14D3CFD:     var_88 = (var_88 + 1)
  loc_14D3D12:     Print 1, Chr(&HC)
  loc_14D3D1E:     var_A4.MoveNext
  loc_14D3D23:     GoTo loc_14D310C
  loc_14D3D26:   End If
  loc_14D3D26: End If
  loc_14D3D28: Close 1
  loc_14D3D31: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_14D3D41: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_14D3D4C: Close 1
  loc_14D3D56: If (MemVar_1F953BC = "Y") Then
  loc_14D3D72:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_14D3D7C: Else
  loc_14D3D95:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_14D3D9C: End If
  loc_14D3DA1: global_88 = 0
  loc_14D3DA9: Set var_A4 = Nothing
  loc_14D3DAC: Exit Sub
  loc_14D3DAD: ' Referenced from: 14D306C
  loc_14D3DAD: Proc_6_60_E63754(global_88, var_88, var_86, var_86)
  loc_14D3DB7: global_88 = 0
  loc_14D3DBA: Exit Sub
End Sub

Public Sub Proc_66_64_12009C4
  'Data Table: 54078C
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim var_154 As String
  Dim var_140 As MSHFlexGrid
  Dim var_15C As String
  Dim var_164 As String
  Dim unk_5407BC As Connection15
  Dim var_9C As Recordset15
  Dim var_C0 As Variant
  loc_120053A: var_B0 = CVar(CLng(2)) 'Long
  loc_120053F: var_D0 = 2
  loc_120054C: Set var_E4 = Me.FGrid
  loc_1200552: var_F4 = var_E4.TextMatrix)
  loc_1200568: var_154 = var_D0 & CStr(var_F4) & "' And '"
  loc_1200580: Set var_140 = Me.FGrid
  loc_12005C5: Close 1
  loc_12005CE: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_12005E6: var_F8 = "Select RO.Docid,RO.FolioNo As RegNo,GFor.SerialNo,GFor.Name As GuestName,GFor.Add1,GFor.Add2,Country.Name As Nationality,GFor.Age,GFor.PurVisit,GFor.AddIndia AddIndiaIfAny," & "GFor.DateArr,GFor.ArrPlace,GFor.PropStay,GFor.ArrFrom,GFor.ModeTravel As ModeTravelatArrival,RO.DepDate As ProposedDepart,"
  loc_12005F4: var_154 = var_F8 & "GFor.Dest As GoingTo, GFor.ModeTravelUsed As ModeTravelAfterDepart,GFor.VisaIssAuth,GFor.Extension," & "GFor.PassNo,GFor.IssDate, GFor.IssPlace,GFor.PassExpDate,GFor.WorkPermit,GFor.VisaNo,GFor.VisaIssDate,GFor.VisaIssPlace,"
  loc_1200602: var_15C = var_154 & "GFor.ExpDate AS VisaExpDate,GFor.VisaDuration,RO.VDate From " & "(((GuestFolio RO Inner Join GuestFolioProfDetail GFP ON RO.DocId=GFP.DocID Left Join GuestProf GF ON GFP.GuestProf=GF.Code) Left Join GuestProfFor GFor ON GF.Code=GFor.Code) "
  loc_1200613: var_164 = var_15C & "LEFT JOIN Country ON GFor.Nationality = Country.Code) Where (GF.Type='Foreign') " & 2 & CStr(var_140.TextMatrix)) & "'"
  loc_1200623: unk_5407BC.Execute var_164 & " ORDER BY GFor.SerialNo", var_F4, -1
  loc_120062E: Set var_9C = var_E4
  loc_120065E: If (var_9C.RecordCount <= 0) Then
  loc_1200667:   Call 0.Method_arg_50 (var_F8, var_E4, CVar(CLng(3)))
  loc_120067D:   var_B0 = "** No Records Found to Print **"
  loc_1200688:   MsgBox(var_B0, &H40, CVar(var_F8), var_17C, var_18C)
  loc_120069D:   global_88 = 0
  loc_12006A0:   Exit Sub
  loc_12006A1: End If
  loc_12006AC: var_16C = var_9C.RecordCount
  loc_12006BA: If (var_16C > 0) Then
  loc_12006C3:   global_84 = "Form-C"
  loc_12006CD:   Call 0.Method_arg_50 (var_F8, 1, global_88)
  loc_12006EA:   global_80 = CStr(Ucase(CVar(var_F8)))
  loc_120071F:   Set var_E4 = var_9C 
  loc_1200726:   CreateFieldDefFile(var_E4, MemVar_1F950B4 & "\" & global_84 & ".ttx", &HFF)
  loc_1200751:   var_F8 = MemVar_1F950B4 & "\"
  loc_1200762:   var_154 = var_F8 & global_84 & ".RPT"
  loc_120076B:   Call 0.Method_arg_1C (var_154, var_B0, var_E4)
  loc_1200776:   MemVar_1F951E8 = var_E4
  loc_1200791:   var_B0 = CVar(var_E4) 'Address
  loc_120079F:   Call 0.Method_arg_64 (var_E4, var_B0, var_C0, var_D0)
  loc_12007A7:   Call 0.Method_arg_2C (var_154, var_B0)
  loc_12007B5:   Call 0.Method_arg_150 ("AND RO.Docid Between '")
  loc_12007CB:   Call 0.Method_arg_90 (var_E4, var_16C)
  loc_12007D3:   Call 0.Method_arg_24 (var_9E)
  loc_12007DF:   For var_190 =  To CInt(var_16C): 1 = var_190 'Integer
  loc_12007F8:     Call 0.Method_arg_90 (var_E4, CLng(var_9E))
  loc_1200800:     Call 0.Method_arg_20 (var_140)
  loc_1200808:     Call 0.Method_arg_30 (var_F8)
  loc_120081E:     var_1A0 = Ucase(CVar(var_F8)) 'Variant
  loc_1200837:     If (var_1A0 = "TITLE") Then
  loc_120085E:       Call 0.Method_arg_90 (var_E4, CLng(var_9E))
  loc_1200866:       Call 0.Method_arg_20 (var_140)
  loc_120086E:       Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_1200884:     Else
  loc_120088F:       If (var_1A0 = "PRINTDATE") Then
  loc_12008BF:         Call 0.Method_arg_90 (var_E4, CLng(var_9E))
  loc_12008C7:         Call 0.Method_arg_20 (var_140)
  loc_12008CF:         Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F950EC) & "'"))
  loc_12008E5:       End If
  loc_12008E5:     End If
  loc_12008E8:   Next var_190 'Integer
  loc_12008F2:   Set var_140 = Nothing
  loc_120090B:   Set var_E4 = MemVar_1F951E8 
  loc_1200917:   Proc_6_99_1484404(var_E4, 0, global_80)
  loc_1200922:   MemVar_1F951E8 = var_E4
  loc_120092D: End If
  loc_120092F: Close 1
  loc_1200938: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1200948: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_1200953: Close 1
  loc_120095D: If (MemVar_1F953BC = "Y") Then
  loc_1200979:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1200983: Else
  loc_120099C:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_12009A3: End If
  loc_12009B0: Set var_9C = Nothing
  loc_12009B3: Exit Sub
  loc_12009B4: Proc_6_60_E63754(0, &HFF)
  loc_12009BE: global_88 = 0
  loc_12009C1: Exit Sub
End Sub

Public Sub Proc_66_65_1623420
  'Data Table: 54078C
  Dim var_14C As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_274 As Variant
  Dim var_284 As Variant
  Dim var_2A4 As Variant
  Dim var_318 As Variant
  Dim var_328 As Variant
  Dim var_348 As Variant
  Dim var_36C As String
  Dim var_370 As String
  Dim unk_5407BC As Connection15
  Dim var_A4 As Recordset15
  Dim var_A8 As Recordset15
  Dim var_B8 As Long
  Dim var_BC As Long
  Dim var_C0 As Long
  Dim var_C4 As Long
  Dim var_8C As Long
  Dim var_88 As Long
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B4 As Double
  Dim var_13C As Variant
  Dim var_1F0 As Variant
  Dim var_294 As Variant
  Dim var_338 As Variant
  loc_1621F5C: On Error Goto loc_162340F
  loc_1621F5F: var_14C = " (ChkInDt Between "
  loc_1621F79: Set var_10C = Me.FGrid
  loc_1621F7F: var_11C = var_10C.TextMatrix)
  loc_1621F90: Proc_6_7_F26918(var_13C, CVar(CStr(var_11C)), 1)
  loc_1621F98: var_15C = CVar(CLng(0)) & var_13C 
  loc_1621FA1: var_17C = var_15C & " And " 
  loc_1621FD1: Proc_6_7_F26918(var_1F0, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_162200C: var_284 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1622012: Proc_6_7_F26918(var_294, var_284, 1, CVar(CLng(0)))
  loc_162204D: var_328 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1622053: Proc_6_7_F26918(var_338, var_328, 1, CVar(CLng(1)))
  loc_162206F: global_60 = CStr(CVar(CLng(1)) & var_1F0 & " Or ChkOutDt Between " & var_294 & " And " & var_338 & " Or ChkOutDt Is Null)")
  loc_16220C3: var_36C = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_16220CA: var_370 = CStr(CVar(CLng(1)) & var_1F0 & " Or ChkOutDt Between " & var_294 & " And " & var_338 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo"
  loc_16220D3: unk_5407BC.Execute var_370, var_11C, -1
  loc_16220DE: Set var_A8 = var_10C
  loc_1622105: var_36C = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_162210C: var_370 = CStr(CVar(CLng(1)) & var_1F0 & " Or ChkOutDt Between " & var_294 & " And " & var_338 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By DocId,SNo"
  loc_1622115: unk_5407BC.Execute var_370, var_11C, -1
  loc_1622120: Set var_A4 = var_10C
  loc_1622159: If ((var_A4.RecordCount <= 0) And (var_A8.RecordCount <= 0)) Then
  loc_1622162:   Call 0.Method_arg_50 (CStr(CVar(CLng(1)) & var_1F0 & " Or ChkOutDt Between " & var_294 & " And " & var_338 & " Or ChkOutDt Is Null)"), var_10C, var_10C)
  loc_1622170:   var_12C = CVar(CStr(CVar(CLng(1)) & var_1F0 & " Or ChkOutDt Between " & var_294 & " And " & var_338 & " Or ChkOutDt Is Null)")) 'String
  loc_1622183:   MsgBox("** No Records Found to Print **", &H40, var_12C, var_13C, var_15C)
  loc_1622198:   global_88 = 0
  loc_162219B:   Exit Sub
  loc_162219C: End If
  loc_162219F: var_AC = "-------------------------------------------------------------------------------------------"
  loc_16221A4: Close 1
  loc_16221AD: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16221B6: var_B8 = 0
  loc_16221BE: var_BC = 0
  loc_16221C6: var_C0 = 0
  loc_16221CE: var_C4 = 0
  loc_16221D4: var_C8 = vbNullString
  loc_16221DC: var_8C = 1
  loc_16221E4: var_88 = 0
  loc_16221FB: If (var_A8.RecordCount > 0) Then
  loc_16221FE:   ' Referenced from: 1622833
  loc_162220D:   If Not(var_A8.EOF) Then
  loc_1622232:     var_12C = var_A8.Fields.Item("CheckIn").Value
  loc_162223D:     var_E8 = CVar(CLng(0)) 'Long
  loc_162227F:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1622285:       var_D8 = CVar(CLng(0)) 'Long
  loc_162228A:       var_F8 = 1
  loc_16222AD:       var_B4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_16222BC:     Else
  loc_16222DE:       var_12C = var_A8.Fields.Item("CheckIn").Value
  loc_16222E9:       var_E8 = CVar(CLng(1)) 'Long
  loc_162232B:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1622331:         var_D8 = CVar(CLng(1)) 'Long
  loc_1622336:         var_F8 = 1
  loc_1622359:         var_B4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1622368:       Else
  loc_1622394:         var_B4 = CDate(var_A8.Fields.Item("CheckIn").Value)
  loc_16223A1:       End If
  loc_16223A1:     End If
  loc_16223DD:     If CBool(var_A8.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_1622402:       var_12C = var_A8.Fields.Item("CheckOut").Value
  loc_162240D:       var_E8 = CVar(CLng(1)) 'Long
  loc_162244F:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1622455:         var_D8 = CVar(CLng(1)) 'Long
  loc_162245A:         var_F8 = 1
  loc_16224DB:         var_1D0 = (CVar(var_B8) + (DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A8.Fields.Item("Indian").Value))
  loc_16224E1:         var_B8 = CLng(Me.FGrid.TextMatrix))
  loc_1622500:       Else
  loc_1622578:         var_17C = (CVar(var_B8) + (DateDiff("D", var_B4, CVar(var_A8.Fields.Item("CheckOut")), 1, 1) * var_A8.Fields.Item("Indian").Value))
  loc_162257E:         var_B8 = CLng((DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A8.Fields.Item("Indian").Value))
  loc_1622595:       End If
  loc_1622598:     Else
  loc_162259B:       var_D8 = CVar(CLng(1)) 'Long
  loc_16225A0:       var_F8 = 1
  loc_16225D5:       If (MemVar_1F950EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_1622634:         var_17C = (CVar(var_B8) + (DateDiff("D", var_B4, CDate(MemVar_1F950EC), 1, 1) * var_A8.Fields.Item("Indian").Value))
  loc_162263A:         var_B8 = CLng((DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A8.Fields.Item("Indian").Value))
  loc_1622652:       Else
  loc_1622655:         var_D8 = CVar(CLng(1)) 'Long
  loc_162265A:         var_F8 = 1
  loc_16226DB:         var_1D0 = (CVar(var_B8) + (DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A8.Fields.Item("Indian").Value))
  loc_16226E1:         var_B8 = CLng(Me.FGrid.TextMatrix))
  loc_16226FD:       End If
  loc_16226FD:     End If
  loc_162271F:     var_12C = var_A8.Fields.Item("CheckIn").Value
  loc_162272A:     var_E8 = CVar(CLng(0)) 'Long
  loc_162272F:     var_108 = 1
  loc_1622752:     var_16C = CDate(CDate(CStr(Me.FGrid.TextMatrix))))
  loc_162277D:     var_17C = var_A8.Fields.Item("CheckIn").Value
  loc_16227E0:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))) Then
  loc_1622814:       var_12C = (CVar(var_C0) + var_A8.Fields.Item("Indian").Value)
  loc_162281A:       var_C0 = CLng(var_12C)
  loc_162282B:     End If
  loc_162282E:     var_A8.MoveNext
  loc_1622833:     GoTo loc_16221FE
  loc_1622836:   End If
  loc_1622836: End If
  loc_162284A: If (var_A4.RecordCount > 0) Then
  loc_162284D:   ' Referenced from: 1622E82
  loc_162285C:   If Not(var_A4.EOF) Then
  loc_1622881:     var_12C = var_A4.Fields.Item("CheckIn").Value
  loc_162288C:     var_E8 = CVar(CLng(0)) 'Long
  loc_16228CE:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_16228D4:       var_D8 = CVar(CLng(0)) 'Long
  loc_16228D9:       var_F8 = 1
  loc_16228FC:       var_B4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_162290B:     Else
  loc_162292D:       var_12C = var_A4.Fields.Item("CheckIn").Value
  loc_1622938:       var_E8 = CVar(CLng(1)) 'Long
  loc_162297A:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1622980:         var_D8 = CVar(CLng(1)) 'Long
  loc_1622985:         var_F8 = 1
  loc_16229A8:         var_B4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_16229B7:       Else
  loc_16229E3:         var_B4 = CDate(var_A4.Fields.Item("CheckIn").Value)
  loc_16229F0:       End If
  loc_16229F0:     End If
  loc_1622A2C:     If CBool(var_A4.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_1622A51:       var_12C = var_A4.Fields.Item("CheckOut").Value
  loc_1622A5C:       var_E8 = CVar(CLng(1)) 'Long
  loc_1622A9E:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1622AA4:         var_D8 = CVar(CLng(1)) 'Long
  loc_1622AA9:         var_F8 = 1
  loc_1622B2A:         var_1D0 = (CVar(var_BC) + (DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1622B30:         var_BC = CLng((1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_1622B4F:       Else
  loc_1622BC7:         var_17C = (CVar(var_BC) + (DateDiff("D", var_B4, CVar(var_A4.Fields.Item("CheckOut")), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1622BCD:         var_BC = CLng((DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1622BE4:       End If
  loc_1622BE7:     Else
  loc_1622BEA:       var_D8 = CVar(CLng(1)) 'Long
  loc_1622BEF:       var_F8 = 1
  loc_1622C24:       If (MemVar_1F950EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_1622C83:         var_17C = (CVar(var_BC) + (DateDiff("D", var_B4, CDate(MemVar_1F950EC), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1622C89:         var_BC = CLng((DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1622CA1:       Else
  loc_1622CA4:         var_D8 = CVar(CLng(1)) 'Long
  loc_1622CA9:         var_F8 = 1
  loc_1622D2A:         var_1D0 = (CVar(var_BC) + (DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1622D30:         var_BC = CLng((1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_1622D4C:       End If
  loc_1622D4C:     End If
  loc_1622D6E:     var_12C = var_A4.Fields.Item("CheckIn").Value
  loc_1622D79:     var_E8 = CVar(CLng(0)) 'Long
  loc_1622D7E:     var_108 = 1
  loc_1622DA1:     var_16C = CDate(CDate(CStr(Me.FGrid.TextMatrix))))
  loc_1622DCC:     var_17C = var_A4.Fields.Item("CheckIn").Value
  loc_1622E2F:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))) Then
  loc_1622E35:       var_E8 = CVar(var_C4) 'Long
  loc_1622E5B:       var_11C = var_A4.Fields.Item("Foreigner").Value
  loc_1622E63:       var_12C = (var_E8 + var_11C)
  loc_1622E69:       var_C4 = CLng(var_12C)
  loc_1622E7A:     End If
  loc_1622E7D:     var_A4.MoveNext
  loc_1622E82:     GoTo loc_162284D
  loc_1622E85:   End If
  loc_1622E85: End If
  loc_1622EBC: Print 1, Proc_6_128_1026560("FORM 1 ", "B", &H50, 0, 1, var_C4, var_17C, (var_108 >= var_16C))
  loc_1622EF4: Print 1, Proc_6_128_1026560("GOVT. OF INDIA", "B", &H50, var_E8, var_12C, var_BC)
  loc_1622F2C: Print 1, Proc_6_128_1026560("MINISTRY OF TOURISM", "B", &H50, var_11C)
  loc_1622F42: Print 1, vbNullString
  loc_1622F6F: Print 1, Proc_6_128_1026560("STATISTICS OF DOMESTIC AND FOREIGN TOURIST", "B", &H50, var_F8)
  loc_1622F85: Print 1, vbNullString
  loc_1622F8E: var_D8 = CVar(CLng(0)) 'Long
  loc_1622F93: var_F8 = 1
  loc_1622FA6: var_11C = Me.FGrid.TextMatrix)
  loc_1622FCD: var_12C = Me.FGrid.TextMatrix)
  loc_1622FFB: Print 1, "FROM : " & CStr(var_11C) & " TO : " & CStr(var_12C)
  loc_1623021: Print 1, vbNullString
  loc_1623046: Print 1, "NAME OF THE HOTEL : " & Proc_6_45_EADFB8(MemVar_1F95130, &H32, var_12C, 1, CVar(CLng(1)), var_11C)
  loc_1623098: var_13C = (Space(&H14) + Trim(MemVar_1F95134))
  loc_16230A1: var_15C = (DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) + ", ")
  loc_16230A8: var_1D0 = (Me.FGrid.TextMatrix) + Trim(MemVar_1F95138))
  loc_16230B1: var_1E0 = ((1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))) + ", ")
  loc_16230B8: var_200 = (CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))) + Trim(MemVar_1F9513C))
  loc_16230BE: Print 1, CVar(CLng(1)) & Trim(MemVar_1F9513C)
  loc_16230DE: Print 1, vbNullString
  loc_16230E9: Print 1, var_AC
  loc_1623111: var_12C = (Space(6) + "NO. OF GUEST CHECKED IN")
  loc_1623118: var_15C = (Trim(MemVar_1F95134) + Space(6))
  loc_1623121: var_17C = (Me.FGrid.TextMatrix) + "TOTAL NO. OF BED NIGHTS SPENT")
  loc_1623127: Print 1, Trim(MemVar_1F95138)
  loc_1623176: var_12C = (Space(8) + "INDIAN")
  loc_162317D: var_15C = (Trim(MemVar_1F95134) + Space(4))
  loc_1623186: var_17C = (Me.FGrid.TextMatrix) + "FOREIGNER")
  loc_162318D: var_1E0 = (Trim(MemVar_1F95138) + Space(&HB))
  loc_1623191: var_F8 = "INDIAN"
  loc_1623196: var_1F0 = (CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))) + var_F8)
  loc_162319D: var_220 = (Trim(MemVar_1F9513C) + Space(&HA))
  loc_16231A6: var_274 = (CVar(CLng(1)) & Trim(MemVar_1F9513C) & " Or ChkOutDt Between " + "FOREIGNER")
  loc_16231AC: Print 1, Me.FGrid.TextMatrix)
  loc_16231D0: Print 1, var_AC
  loc_16231DB: Print 1, vbNullString
  loc_16231F1: var_D8 = var_C0
  loc_16231F9: Proc_6_39_E7D3A0(Trim(MemVar_1F95134), var_D8, var_F8, var_D8)
  loc_162322B: Proc_6_39_E7D3A0(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))), var_C4)
  loc_162325D: Proc_6_39_E7D3A0(var_284, var_B8)
  loc_162328F: Proc_6_39_E7D3A0(var_328, var_BC)
  loc_16232B2: var_15C = (Space(4) + CVar(Proc_6_52_EAE084(CStr(Trim(MemVar_1F95134)), 8, var_D8)))
  loc_16232B9: var_1D0 = (Me.FGrid.TextMatrix) + Space(4))
  loc_16232C3: var_200 = (Space(&HB) + CVar(Proc_6_52_EAE084(CStr(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))), 8)))
  loc_16232CA: var_274 = (Space(&HA) + Space(&HB))
  loc_16232D4: var_2A4 = (Me.FGrid.TextMatrix) + CVar(Proc_6_52_EAE084(CStr(var_284), 8)))
  loc_16232DB: var_318 = (CVar(CLng(1)) & CVar(Proc_6_52_EAE084(CStr(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))), 8)) & " Or ChkOutDt Between " & CVar(Proc_6_52_EAE084(CStr(var_284), 8)) + Space(&HB))
  loc_16232E5: var_348 = (Me.FGrid.TextMatrix) + CVar(Proc_6_52_EAE084(CStr(var_328), 8)))
  loc_16232EB: Print 1, CVar(CLng(1)) & CVar(Proc_6_52_EAE084(CStr(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))), 8)) & " Or ChkOutDt Between " & CVar(Proc_6_52_EAE084(CStr(var_284), 8)) & " And " & CVar(Proc_6_52_EAE084(CStr(var_328), 8))
  loc_1623332: Print 1, vbNullString
  loc_162333D: Print 1, var_AC
  loc_1623348: Print 1, vbNullString
  loc_1623353: Print 1, vbNullString
  loc_1623362: var_88 = (var_88 + &H15)
  loc_1623377: Print 1, Chr(&HC)
  loc_1623382: Close 1
  loc_162338B: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_162339B: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_16233A6: Close 1
  loc_16233B0: If (MemVar_1F953BC = "Y") Then
  loc_16233CC:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16233D6: Else
  loc_16233EF:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16233F6: End If
  loc_16233FB: global_88 = 0
  loc_1623403: Set var_A8 = Nothing
  loc_162340B: Set var_A4 = Nothing
  loc_162340E: Exit Sub
  loc_162340F: ' Referenced from: 1621F5C
  loc_162340F: Proc_6_60_E63754(global_88, 0)
  loc_1623419: global_88 = 0
  loc_162341C: Exit Sub
End Sub

Public Sub Proc_66_66_15E7334
  'Data Table: 54078C
  Dim var_13C As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_1B0 As Variant
  Dim var_1C0 As Variant
  Dim var_254 As Variant
  Dim var_35C As String
  Dim var_360 As String
  Dim unk_5407BC As Connection15
  Dim var_A8 As Long
  Dim var_AC As Long
  Dim var_B0 As Long
  Dim var_B4 As Long
  Dim var_94 As Recordset15
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_A4 As Double
  Dim var_90 As Recordset15
  Dim var_378 As Recordset15
  loc_15E5FE0: On Error Goto loc_15E7323
  loc_15E5FE3: var_13C = " (ChkInDt Between "
  loc_15E5FFD: Set var_FC = Me.FGrid
  loc_15E6003: var_10C = var_FC.TextMatrix)
  loc_15E6014: Proc_6_7_F26918(var_12C, CVar(CStr(var_10C)), 1)
  loc_15E6025: var_16C = CVar(CLng(0)) & var_12C & " And " 
  loc_15E6055: Proc_6_7_F26918(var_1E0, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_15E6096: Proc_6_7_F26918(var_284, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_15E60D7: Proc_6_7_F26918(var_328, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_15E60F3: global_60 = CStr(CVar(CLng(1)) & var_1E0 & " Or ChkOutDt Between " & var_284 & " And " & var_328 & " Or ChkOutDt Is Null)")
  loc_15E6147: var_35C = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_15E614E: var_360 = CStr(CVar(CLng(1)) & var_1E0 & " Or ChkOutDt Between " & var_284 & " And " & var_328 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo"
  loc_15E6157: unk_5407BC.Execute var_360, var_10C, -1
  loc_15E6162: Set var_94 = var_FC
  loc_15E6189: var_35C = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_15E6190: var_360 = CStr(CVar(CLng(1)) & var_1E0 & " Or ChkOutDt Between " & var_284 & " And " & var_328 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By DocId,SNo"
  loc_15E6199: unk_5407BC.Execute var_360, var_10C, -1
  loc_15E61A4: Set var_90 = var_FC
  loc_15E61B9: var_A8 = 0
  loc_15E61C1: var_AC = 0
  loc_15E61C9: var_B0 = 0
  loc_15E61D1: var_B4 = 0
  loc_15E61D7: var_B8 = vbNullString
  loc_15E61EE: If (var_94.RecordCount > 0) Then
  loc_15E61F1:   ' Referenced from: 15E6826
  loc_15E6200:   If Not(var_94.EOF) Then
  loc_15E6225:     var_11C = var_94.Fields.Item("CheckIn").Value
  loc_15E6230:     var_D8 = CVar(CLng(0)) 'Long
  loc_15E6272:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15E6278:       var_C8 = CVar(CLng(0)) 'Long
  loc_15E627D:       var_E8 = 1
  loc_15E62A0:       var_A4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_15E62AF:     Else
  loc_15E62D1:       var_11C = var_94.Fields.Item("CheckIn").Value
  loc_15E62DC:       var_D8 = CVar(CLng(1)) 'Long
  loc_15E631E:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15E6324:         var_C8 = CVar(CLng(1)) 'Long
  loc_15E6329:         var_E8 = 1
  loc_15E634C:         var_A4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_15E635B:       Else
  loc_15E6387:         var_A4 = CDate(var_94.Fields.Item("CheckIn").Value)
  loc_15E6394:       End If
  loc_15E6394:     End If
  loc_15E63D0:     If CBool(var_94.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_15E63F5:       var_11C = var_94.Fields.Item("CheckOut").Value
  loc_15E6400:       var_D8 = CVar(CLng(1)) 'Long
  loc_15E6442:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15E6448:         var_C8 = CVar(CLng(1)) 'Long
  loc_15E644D:         var_E8 = 1
  loc_15E64CE:         var_1C0 = (CVar(var_A8) + (DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_94.Fields.Item("Indian").Value))
  loc_15E64D4:         var_A8 = CLng(Me.FGrid.TextMatrix))
  loc_15E64F3:       Else
  loc_15E656B:         var_16C = (CVar(var_A8) + (DateDiff("D", var_A4, CVar(var_94.Fields.Item("CheckOut")), 1, 1) * var_94.Fields.Item("Indian").Value))
  loc_15E6571:         var_A8 = CLng((DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_94.Fields.Item("Indian").Value))
  loc_15E6588:       End If
  loc_15E658B:     Else
  loc_15E658E:       var_C8 = CVar(CLng(1)) 'Long
  loc_15E6593:       var_E8 = 1
  loc_15E65C8:       If (MemVar_1F950EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_15E6627:         var_16C = (CVar(var_A8) + (DateDiff("D", var_A4, CDate(MemVar_1F950EC), 1, 1) * var_94.Fields.Item("Indian").Value))
  loc_15E662D:         var_A8 = CLng((DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_94.Fields.Item("Indian").Value))
  loc_15E6645:       Else
  loc_15E6648:         var_C8 = CVar(CLng(1)) 'Long
  loc_15E664D:         var_E8 = 1
  loc_15E66CE:         var_1C0 = (CVar(var_A8) + (DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_94.Fields.Item("Indian").Value))
  loc_15E66D4:         var_A8 = CLng(Me.FGrid.TextMatrix))
  loc_15E66F0:       End If
  loc_15E66F0:     End If
  loc_15E6712:     var_11C = var_94.Fields.Item("CheckIn").Value
  loc_15E671D:     var_D8 = CVar(CLng(0)) 'Long
  loc_15E6722:     var_F8 = 1
  loc_15E6745:     var_15C = CDate(CDate(CStr(Me.FGrid.TextMatrix))))
  loc_15E6770:     var_16C = var_94.Fields.Item("CheckIn").Value
  loc_15E67D3:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))) Then
  loc_15E6807:       var_11C = (CVar(var_B0) + var_94.Fields.Item("Indian").Value)
  loc_15E680D:       var_B0 = CLng(var_11C)
  loc_15E681E:     End If
  loc_15E6821:     var_94.MoveNext
  loc_15E6826:     GoTo loc_15E61F1
  loc_15E6829:   End If
  loc_15E6829: End If
  loc_15E683D: If (var_90.RecordCount > 0) Then
  loc_15E6840:   ' Referenced from: 15E6E75
  loc_15E684F:   If Not(var_90.EOF) Then
  loc_15E6874:     var_11C = var_90.Fields.Item("CheckIn").Value
  loc_15E687F:     var_D8 = CVar(CLng(0)) 'Long
  loc_15E68C1:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15E68C7:       var_C8 = CVar(CLng(0)) 'Long
  loc_15E68CC:       var_E8 = 1
  loc_15E68EF:       var_A4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_15E68FE:     Else
  loc_15E6920:       var_11C = var_90.Fields.Item("CheckIn").Value
  loc_15E692B:       var_D8 = CVar(CLng(1)) 'Long
  loc_15E696D:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15E6973:         var_C8 = CVar(CLng(1)) 'Long
  loc_15E6978:         var_E8 = 1
  loc_15E699B:         var_A4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_15E69AA:       Else
  loc_15E69D6:         var_A4 = CDate(var_90.Fields.Item("CheckIn").Value)
  loc_15E69E3:       End If
  loc_15E69E3:     End If
  loc_15E6A1F:     If CBool(var_90.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_15E6A44:       var_11C = var_90.Fields.Item("CheckOut").Value
  loc_15E6A4F:       var_D8 = CVar(CLng(1)) 'Long
  loc_15E6A91:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15E6A97:         var_C8 = CVar(CLng(1)) 'Long
  loc_15E6A9C:         var_E8 = 1
  loc_15E6B1D:         var_1C0 = (CVar(var_AC) + (DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_90.Fields.Item("Foreigner").Value))
  loc_15E6B23:         var_AC = CLng((1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_15E6B42:       Else
  loc_15E6BBA:         var_16C = (CVar(var_AC) + (DateDiff("D", var_A4, CVar(var_90.Fields.Item("CheckOut")), 1, 1) * var_90.Fields.Item("Foreigner").Value))
  loc_15E6BC0:         var_AC = CLng((DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_90.Fields.Item("Foreigner").Value))
  loc_15E6BD7:       End If
  loc_15E6BDA:     Else
  loc_15E6BDD:       var_C8 = CVar(CLng(1)) 'Long
  loc_15E6BE2:       var_E8 = 1
  loc_15E6C17:       If (MemVar_1F950EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_15E6C76:         var_16C = (CVar(var_AC) + (DateDiff("D", var_A4, CDate(MemVar_1F950EC), 1, 1) * var_90.Fields.Item("Foreigner").Value))
  loc_15E6C7C:         var_AC = CLng((DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_90.Fields.Item("Foreigner").Value))
  loc_15E6C94:       Else
  loc_15E6C97:         var_C8 = CVar(CLng(1)) 'Long
  loc_15E6C9C:         var_E8 = 1
  loc_15E6CE7:         var_12C = DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1)
  loc_15E6D1D:         var_1C0 = (CVar(var_AC) + (var_12C * var_90.Fields.Item("Foreigner").Value))
  loc_15E6D23:         var_AC = CLng((1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_15E6D3F:       End If
  loc_15E6D3F:     End If
  loc_15E6D61:     var_11C = var_90.Fields.Item("CheckIn").Value
  loc_15E6D6C:     var_D8 = CVar(CLng(0)) 'Long
  loc_15E6D71:     var_F8 = 1
  loc_15E6D7E:     Set var_254 = Me.FGrid
  loc_15E6D8F:     var_35C = CStr(var_254.TextMatrix))
  loc_15E6D94:     var_15C = CDate(CDate(var_35C))
  loc_15E6DBF:     var_16C = var_90.Fields.Item("CheckIn").Value
  loc_15E6DE2:     var_14C = Me.FGrid.TextMatrix)
  loc_15E6E22:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(var_14C))))) Then
  loc_15E6E28:       var_D8 = CVar(var_B4) 'Long
  loc_15E6E3E:       var_FC = var_90.Fields
  loc_15E6E46:       var_1B0 = var_FC.Item("Foreigner")
  loc_15E6E56:       var_11C = (var_D8 + var_1B0.Value)
  loc_15E6E5C:       var_B4 = CLng(var_11C)
  loc_15E6E6D:     End If
  loc_15E6E70:     var_90.MoveNext
  loc_15E6E75:     GoTo loc_15E6840
  loc_15E6E78:   End If
  loc_15E6E78: End If
  loc_15E6E7E: var_364 = var_90.RecordCount
  loc_15E6EA1: If ((var_364 <= 0) And (var_94.RecordCount <= 0)) Then
  loc_15E6EAA:   Call 0.Method_arg_50 (var_35C, var_B4, var_16C, (var_F8 >= var_15C), var_D8, var_11C)
  loc_15E6EC0:   var_C8 = "** No Records Found to Print **"
  loc_15E6ECB:   MsgBox(var_C8, &H40, CVar(var_35C), var_12C, var_14C)
  loc_15E6EE0:   global_88 = 0
  loc_15E6EE3:   Exit Sub
  loc_15E6EE4: End If
  loc_15E6EF1: Call Proc_66_51_F230D8(New)
  loc_15E6EF9: Set var_98 = var_FC
  loc_15E6EFF: Set var_378 = var_98 
  loc_15E6F0E: var_378.AddNew var_C8, var_D8
  loc_15E6F18: var_10C = CVar(CStr(var_B0)) 'String
  loc_15E6F25: var_378.Collect = "IndianGuest"
  loc_15E6F32: var_10C = CVar(CStr(var_B4)) 'String
  loc_15E6F3F: var_378.Collect = "ForeignerGuest"
  loc_15E6F4C: var_10C = CVar(CStr(var_A8)) 'String
  loc_15E6F59: var_378.Collect = "IndianNight"
  loc_15E6F6A: var_C8 = "ForeignerNight"
  loc_15E6F73: var_378.Collect = var_C8
  loc_15E6F86: var_378.Update var_C8, var_D8
  loc_15E6F8D: Set var_378 = Nothing 
  loc_15E6F97: global_84 = "Form-1"
  loc_15E6FA1: Call 0.Method_arg_50 (var_35C, CVar(CStr(var_AC)), CVar(CStr(var_AC)), CVar(CStr(var_AC)), CVar(CStr(var_AC)), var_FC, global_88)
  loc_15E6FA9: var_10C = CVar(var_35C) 'String
  loc_15E6FBE: global_80 = CStr(Ucase(var_10C))
  loc_15E6FF3: Set var_FC = var_98 
  loc_15E6FFA: CreateFieldDefFile(var_FC, MemVar_1F950B4 & "\" & global_84 & ".ttx", &HFF, var_AC, var_10C)
  loc_15E7025: var_35C = MemVar_1F950B4 & "\"
  loc_15E703F: Call 0.Method_arg_1C (var_35C & global_84 & ".RPT", var_C8, var_FC, var_E8)
  loc_15E704A: MemVar_1F951E8 = var_FC
  loc_15E7065: var_C8 = CVar(var_FC) 'Address
  loc_15E7073: Call 0.Method_arg_64 (var_FC, var_C8, var_D8, var_E8)
  loc_15E707B: Call 0.Method_arg_2C (var_C8, var_AC)
  loc_15E7089: Call 0.Method_arg_150 (var_10C)
  loc_15E70A2: Call 0.Method_arg_90 (var_FC, var_364)
  loc_15E70AA: Call 0.Method_arg_24 (var_8C)
  loc_15E70B5: For var_388 =  To var_364: 1 = var_388 'Long
  loc_15E70CD:   Call 0.Method_arg_90 (var_FC, var_8C)
  loc_15E70D5:   Call 0.Method_arg_20 (var_1B0)
  loc_15E70DD:   Call 0.Method_arg_30 (var_35C)
  loc_15E70F3:   var_398 = Ucase(CVar(var_35C)) 'Variant
  loc_15E710C:   If (var_398 = "FROMDATE") Then
  loc_15E7155:     Call 0.Method_arg_90 (var_1B0, var_8C, var_254)
  loc_15E715D:     Call 0.Method_arg_20 (1 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(0)))
  loc_15E7165:     Call 0.Method_arg_38 ("'")
  loc_15E7182:   Else
  loc_15E718D:     If (var_398 = "TODATE") Then
  loc_15E71A8:       Set var_FC = Me.FGrid
  loc_15E71D6:       Call 0.Method_arg_90 (var_1B0, var_8C, var_254)
  loc_15E71DE:       Call 0.Method_arg_20 (1 & CStr(var_FC.TextMatrix)) & "'", CVar(CLng(1)))
  loc_15E71E6:       Call 0.Method_arg_38 ("'")
  loc_15E7203:     Else
  loc_15E720E:       If (var_398 = "TITLE") Then
  loc_15E7234:         Call 0.Method_arg_90 (var_FC, var_8C)
  loc_15E723C:         Call 0.Method_arg_20 (var_1B0)
  loc_15E7244:         Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_15E725A:       Else
  loc_15E7265:         If (var_398 = "PRINTDATE") Then
  loc_15E7294:           Call 0.Method_arg_90 (var_FC, var_8C)
  loc_15E729C:           Call 0.Method_arg_20 (var_1B0)
  loc_15E72A4:           Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F950EC) & "'"))
  loc_15E72BA:         End If
  loc_15E72BA:       End If
  loc_15E72BA:     End If
  loc_15E72BA:   End If
  loc_15E72BD: Next var_388 'Long
  loc_15E72C7: Set var_1B0 = Nothing
  loc_15E72E0: Set var_FC = MemVar_1F951E8 
  loc_15E72EC: Proc_6_99_1484404(var_FC, 0, global_80)
  loc_15E72F7: MemVar_1F951E8 = var_FC
  loc_15E7307: global_88 = 0
  loc_15E730F: Set var_98 = Nothing
  loc_15E7317: Set var_94 = Nothing
  loc_15E731F: Set var_90 = Nothing
  loc_15E7322: Exit Sub
  loc_15E7323: ' Referenced from: 15E5FE0
  loc_15E7323: Proc_6_60_E63754(global_88, &HFF)
  loc_15E732D: global_88 = 0
  loc_15E7330: Exit Sub
End Sub

Public Sub Proc_66_67_156E028
  'Data Table: 54078C
  Dim var_148 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_1CC As Variant
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_270 As Variant
  Dim var_368 As String
  Dim var_36C As String
  Dim unk_5407BC As Connection15
  Dim var_A0 As Recordset15
  Dim var_B4 As Long
  Dim var_B8 As Long
  Dim var_C0 As Long
  Dim var_C4 As Long
  Dim var_8C As Long
  Dim var_88 As Long
  Dim var_138 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_B0 As Double
  Dim var_1EC As Variant
  loc_156CFB0: On Error Goto loc_156E018
  loc_156CFB3: var_148 = " (ChkInDt Between "
  loc_156CFCD: Set var_108 = Me.FGrid
  loc_156CFD3: var_118 = var_108.TextMatrix)
  loc_156CFE4: Proc_6_7_F26918(var_138, CVar(CStr(var_118)), 1)
  loc_156CFEC: var_158 = CVar(CLng(0)) & var_138 
  loc_156CFF5: var_178 = var_158 & " And " 
  loc_156D025: Proc_6_7_F26918(var_1EC, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_156D066: Proc_6_7_F26918(var_290, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_156D0A7: Proc_6_7_F26918(var_334, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_156D117: var_368 = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut,Country.Name As Country From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Left Join City On City.CityCode=GF.City Left Join Country On City.Country=Country.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & CStr(CVar(CLng(1)) & var_1EC & " Or ChkOutDt Between " & var_290 & " And " & var_334 & " Or ChkOutDt Is Null)")
  loc_156D11E: var_36C = CStr(CVar(CLng(1)) & var_1EC & " Or ChkOutDt Between " & var_290 & " And " & var_334 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By Country.Name,DocId,SNo"
  loc_156D127: unk_5407BC.Execute var_36C, var_118, -1
  loc_156D132: Set var_A0 = var_108
  loc_156D156: If (var_A0.RecordCount <= 0) Then
  loc_156D15F:   Call 0.Method_arg_50 (CStr(CVar(CLng(1)) & var_1EC & " Or ChkOutDt Between " & var_290 & " And " & var_334 & " Or ChkOutDt Is Null)"), var_108)
  loc_156D16D:   var_128 = CVar(CStr(CVar(CLng(1)) & var_1EC & " Or ChkOutDt Between " & var_290 & " And " & var_334 & " Or ChkOutDt Is Null)")) 'String
  loc_156D180:   MsgBox("** No Records Found to Print **", &H40, var_128, var_138, var_158)
  loc_156D195:   global_88 = 0
  loc_156D198:   Exit Sub
  loc_156D199: End If
  loc_156D19C: var_A4 = "-------------------------------------------------------------------------------------------"
  loc_156D1A1: Close 1
  loc_156D1AA: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_156D1B3: var_B4 = 0
  loc_156D1BB: var_B8 = 0
  loc_156D1C1: var_BC = vbNullString
  loc_156D1C9: var_C0 = 0
  loc_156D1D1: var_C4 = 0
  loc_156D1D7: var_A8 = vbNullString
  loc_156D1DF: var_8C = 1
  loc_156D1E7: var_88 = 0
  loc_156D1EA: ' Referenced from: 156DD55
  loc_156D211: Print 1, Proc_6_128_1026560("FORM 2 ", "B", &H50, var_88, var_8C, var_C4)
  loc_156D249: Print 1, Proc_6_128_1026560("GOVT. OF INDIA", "B", &H50, var_C0, var_B8)
  loc_156D281: Print 1, Proc_6_128_1026560("MINISTRY OF TOURISM", "B", &H50, var_B4)
  loc_156D297: Print 1, vbNullString
  loc_156D2C4: Print 1, Proc_6_128_1026560("STATISTICS OF FOREIGN TOURIST", "B", &H50)
  loc_156D2DA: Print 1, vbNullString
  loc_156D2E3: var_D4 = CVar(CLng(0)) 'Long
  loc_156D2E8: var_F4 = 1
  loc_156D2FB: var_118 = Me.FGrid.TextMatrix)
  loc_156D322: var_128 = Me.FGrid.TextMatrix)
  loc_156D350: Print 1, "FROM : " & CStr(var_118) & " TO : " & CStr(var_128)
  loc_156D376: Print 1, vbNullString
  loc_156D39B: Print 1, "NAME OF THE HOTEL : " & Proc_6_45_EADFB8(MemVar_1F95130, &H32, var_128, 1, CVar(CLng(1)), var_118)
  loc_156D3ED: var_138 = (Space(&H14) + Trim(MemVar_1F95134))
  loc_156D3F6: var_158 = (var_138 + ", ")
  loc_156D3FD: var_1CC = (var_158 + Trim(MemVar_1F95138))
  loc_156D406: var_1DC = (Me.FGrid.TextMatrix) + ", ")
  loc_156D40D: var_1FC = (CVar(CStr(Me.FGrid.TextMatrix))) + Trim(MemVar_1F9513C))
  loc_156D413: Print 1, CVar(CLng(1)) & Trim(MemVar_1F9513C)
  loc_156D433: Print 1, vbNullString
  loc_156D43E: Print 1, var_A4
  loc_156D466: var_128 = ("COUNTRY NAME" + Space(&HF))
  loc_156D46F: var_138 = (Trim(MemVar_1F95134) + "NO. OF TOURISTS")
  loc_156D476: var_178 = (var_138 + Space(4))
  loc_156D47F: var_1CC = (Trim(MemVar_1F95138) + "BED NIGHTS SPENT")
  loc_156D485: Print 1, Me.FGrid.TextMatrix)
  loc_156D49F: Print 1, var_A4
  loc_156D4AE: var_88 = (var_88 + &HE)
  loc_156D4DC: var_BC = CStr(var_A0.Fields.Item("Country").Value)
  loc_156D4E9: ' Referenced from: 156DE93
  loc_156D4F8: If Not(var_A0.EOF) Then
  loc_156D4FB:   ' Referenced from: 156DD58
  loc_156D538:   If (CVar(var_BC) = var_A0.Fields.Item("Country").Value) Then
  loc_156D55D:     var_128 = var_A0.Fields.Item("CheckIn").Value
  loc_156D568:     var_E4 = CVar(CLng(0)) 'Long
  loc_156D5AA:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_156D5B0:       var_D4 = CVar(CLng(0)) 'Long
  loc_156D5B5:       var_F4 = 1
  loc_156D5D8:       var_B0 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_156D5E7:     Else
  loc_156D609:       var_128 = var_A0.Fields.Item("CheckIn").Value
  loc_156D614:       var_E4 = CVar(CLng(1)) 'Long
  loc_156D656:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_156D65C:         var_D4 = CVar(CLng(1)) 'Long
  loc_156D661:         var_F4 = 1
  loc_156D684:         var_B0 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_156D693:       Else
  loc_156D6BF:         var_B0 = CDate(var_A0.Fields.Item("CheckIn").Value)
  loc_156D6CC:       End If
  loc_156D6CC:     End If
  loc_156D708:     If CBool(var_A0.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_156D72D:       var_128 = var_A0.Fields.Item("CheckOut").Value
  loc_156D738:       var_E4 = CVar(CLng(1)) 'Long
  loc_156D77A:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_156D780:         var_D4 = CVar(CLng(1)) 'Long
  loc_156D785:         var_F4 = 1
  loc_156D806:         var_1CC = (CVar(var_B4) + (DateDiff("D", var_B0, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_156D80C:         var_B4 = CLng(Me.FGrid.TextMatrix))
  loc_156D82B:       Else
  loc_156D8A3:         var_178 = (CVar(var_B4) + (DateDiff("D", var_B0, CVar(var_A0.Fields.Item("CheckOut")), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_156D8A9:         var_B4 = CLng((DateDiff("D", var_B0, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_156D8C0:       End If
  loc_156D8C3:     Else
  loc_156D8C6:       var_D4 = CVar(CLng(1)) 'Long
  loc_156D8CB:       var_F4 = 1
  loc_156D900:       If (MemVar_1F950EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_156D95F:         var_178 = (CVar(var_B4) + (DateDiff("D", var_B0, CDate(MemVar_1F950EC), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_156D965:         var_B4 = CLng((DateDiff("D", var_B0, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_156D97D:       Else
  loc_156D980:         var_D4 = CVar(CLng(1)) 'Long
  loc_156D985:         var_F4 = 1
  loc_156D9D0:         var_138 = DateDiff("D", var_B0, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1)
  loc_156DA06:         var_1CC = (CVar(var_B4) + (var_138 * var_A0.Fields.Item("Foreigner").Value))
  loc_156DA0C:         var_B4 = CLng(Me.FGrid.TextMatrix))
  loc_156DA28:       End If
  loc_156DA28:     End If
  loc_156DA4A:     var_128 = var_A0.Fields.Item("CheckIn").Value
  loc_156DA55:     var_E4 = CVar(CLng(0)) 'Long
  loc_156DA5A:     var_104 = 1
  loc_156DA7D:     var_168 = CDate(CDate(CStr(Me.FGrid.TextMatrix))))
  loc_156DAA8:     var_178 = var_A0.Fields.Item("CheckIn").Value
  loc_156DACB:     var_158 = Me.FGrid.TextMatrix)
  loc_156DB0B:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(var_158))))) Then
  loc_156DB3F:       var_128 = (CVar(var_B8) + var_A0.Fields.Item("Foreigner").Value)
  loc_156DB45:       var_B8 = CLng(var_128)
  loc_156DB56:     End If
  loc_156DB59:     var_A0.MoveNext
  loc_156DB6F:     If (var_A0.EOF = &HFF) Then
  loc_156DB72:       GoTo loc_156DD5B
  loc_156DB75:     End If
  loc_156DB97:     var_118 = var_A0.Fields.Item("Country").Value
  loc_156DBA2:     var_E4 = CVar(var_BC) 'String
  loc_156DBB2:     If CBool(var_118 <> var_E4) Then
  loc_156DBB8:       var_D4 = var_B8
  loc_156DBC0:       Proc_6_39_E7D3A0(var_118, var_D4, var_B8, var_178, (var_104 >= var_168), var_E4, var_128)
  loc_156DBD5:       var_F4 = var_B4
  loc_156DBDD:       Proc_6_39_E7D3A0(var_138, var_F4, (var_118 = 0), var_B4, var_118)
  loc_156DC00:       If CBool(Not var_F4 And (var_138 = 0)) Then
  loc_156DC2B:         Proc_6_39_E7D3A0(var_158, var_B8)
  loc_156DC5D:         Proc_6_39_E7D3A0(CVar(CLng(1)) & Trim(MemVar_1F9513C), var_B4)
  loc_156DC80:         var_138 = (CVar(Proc_6_45_EADFB8(var_BC, &H1E, var_B8)) + Space(2))
  loc_156DC8A:         var_1CC = (var_138 + CVar(Proc_6_52_EAE084(CStr(var_158), 8)))
  loc_156DC91:         var_1EC = (Not var_F4 And (var_138 = 0) + Space(&HD))
  loc_156DC9B:         var_270 = (Trim(MemVar_1F9513C) + CVar(Proc_6_52_EAE084(CStr(CVar(CLng(1)) & Trim(MemVar_1F9513C)), 8)))
  loc_156DCA1:         Print 1, Me.FGrid.TextMatrix)
  loc_156DCD6:         var_88 = (var_88 + 1)
  loc_156DCD9:       End If
  loc_156DCE0:       var_C0 = (var_C0 + var_B8)
  loc_156DCEA:       var_C4 = (var_C4 + var_B4)
  loc_156DCF2:       var_B4 = 0
  loc_156DCFA:       var_B8 = 0
  loc_156DCFD:     End If
  loc_156DD1F:     var_118 = var_A0.Fields.Item("Country").Value
  loc_156DD28:     var_BC = CStr(var_118)
  loc_156DD3E:     If (var_88 > &H3D) Then
  loc_156DD46:       var_88 = 0
  loc_156DD52:       var_8C = (var_8C + 1)
  loc_156DD55:       GoTo loc_156D1EA
  loc_156DD58:     End If
  loc_156DD58:     GoTo loc_156D4FB
  loc_156DD5B:     ' Referenced from: 156DB72
  loc_156DD5B:   End If
  loc_156DD66:   Proc_6_39_E7D3A0(var_118, var_B8, var_8C, var_88, var_B8, var_B4)
  loc_156DD83:   Proc_6_39_E7D3A0(var_138, var_B4, (var_118 = 0), var_C4)
  loc_156DDA6:   If CBool(Not var_C0 And (var_138 = 0)) Then
  loc_156DDD1:     Proc_6_39_E7D3A0(var_158, var_B8)
  loc_156DE03:     Proc_6_39_E7D3A0(CVar(CLng(1)) & Trim(MemVar_1F9513C), var_B4)
  loc_156DE26:     var_138 = (CVar(Proc_6_45_EADFB8(var_BC, &H1E, var_88)) + Space(2))
  loc_156DE30:     var_1CC = (var_138 + CVar(Proc_6_52_EAE084(CStr(var_158), 8)))
  loc_156DE37:     var_1EC = (Not var_C0 And (var_138 = 0) + Space(&HD))
  loc_156DE41:     var_270 = (Trim(MemVar_1F9513C) + CVar(Proc_6_52_EAE084(CStr(CVar(CLng(1)) & Trim(MemVar_1F9513C)), 8)))
  loc_156DE47:     Print 1, Me.FGrid.TextMatrix)
  loc_156DE7C:     var_88 = (var_88 + 1)
  loc_156DE7F:   End If
  loc_156DE86:   var_C0 = (var_C0 + var_B8)
  loc_156DE90:   var_C4 = (var_C4 + var_B4)
  loc_156DE93:   GoTo loc_156D4E9
  loc_156DE96: End If
  loc_156DE9B: var_88 = 0
  loc_156DEA3: Print 1, var_A4
  loc_156DEB2: var_88 = (var_88 + 1)
  loc_156DF03: var_128 = ("TOTAL ==> " + Space(&H14))
  loc_156DF0D: var_158 = (CVar(Proc_6_45_EADFB8(var_BC, &H1E, var_88)) + CVar(Proc_6_52_EAE084(CStr(var_C0), &HA, var_88, var_88, var_C4)))
  loc_156DF14: var_1CC = (var_158 + Space(&HB))
  loc_156DF1E: var_1EC = (Not var_C0 And (CVar(Proc_6_52_EAE084(CStr(var_C0), &HA, var_88, var_88, var_C4)) = 0) + CVar(Proc_6_52_EAE084(CStr(var_C4), &HA, var_C0)))
  loc_156DF24: Print 1, Trim(MemVar_1F9513C)
  loc_156DF51: var_88 = (var_88 + 1)
  loc_156DF59: Print 1, var_A4
  loc_156DF68: var_88 = (var_88 + 1)
  loc_156DF6B: ' Referenced from: 156DF8E
  loc_156DF74: If (var_88 <= &H41) Then
  loc_156DF7C:   Print 1, vbNullString
  loc_156DF8B:   var_88 = (var_88 + 1)
  loc_156DF8E:   GoTo loc_156DF6B
  loc_156DF91: End If
  loc_156DF93: Close 1
  loc_156DF9C: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_156DFAC: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_156DFB7: Close 1
  loc_156DFC1: If (MemVar_1F953BC = "Y") Then
  loc_156DFDD:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_156DFE7: Else
  loc_156E000:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_156E007: End If
  loc_156E00C: global_88 = 0
  loc_156E014: Set var_A0 = Nothing
  loc_156E017: Exit Sub
  loc_156E018: ' Referenced from: 156CFB0
  loc_156E018: Proc_6_60_E63754(global_88, var_88, var_88, var_88)
  loc_156E022: global_88 = 0
  loc_156E025: Exit Sub
End Sub

Public Sub Proc_66_68_1532E24
  'Data Table: 54078C
  Dim var_138 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_198 As Long
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_20C As Variant
  Dim var_21C As Variant
  Dim var_23C As Long
  Dim var_250 As Variant
  Dim var_290 As Variant
  Dim var_354 As Variant
  Dim var_4A0 As String
  Dim var_4A4 As String
  Dim unk_5407BC As Connection15
  Dim var_8C As Recordset15
  Dim var_A0 As Long
  Dim var_A4 As Long
  Dim var_AC As Long
  Dim var_B0 As Long
  Dim var_D4 As Variant
  Dim var_9C As Double
  Dim var_128 As Variant
  Dim var_280 As Variant
  Dim var_4B8 As Recordset15
  Dim var_4BC As Recordset15
  loc_1531F00: On Error Goto loc_1532E14
  loc_1531F03: var_138 = " (ChkInDt Between "
  loc_1531F1D: Set var_F8 = Me.FGrid
  loc_1531F23: var_108 = var_F8.TextMatrix)
  loc_1531F34: Proc_6_7_F26918(var_128, CVar(CStr(var_108)), 1)
  loc_1531F3C: var_148 = CVar(CLng(0)) & var_128 
  loc_1531F45: var_168 = var_148 & " And " 
  loc_1531F75: Proc_6_7_F26918(var_1DC, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_1531FB6: Proc_6_7_F26918(var_280, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_1531FF7: Proc_6_7_F26918(var_324, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_1532008: var_354 = CVar(CLng(1)) & var_1DC & " Or (ChkInDt<=" & var_280 & " And (ChkOutDt Is Null Or ChkOutDt>" & var_324 & ")) Or ChkOutDt Between " 
  loc_1532038: Proc_6_7_F26918(var_3C8, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_1532079: Proc_6_7_F26918(var_46C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_1532101: var_4A0 = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut,Country.Name As Country From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Left Join City On City.CityCode=GF.City Left Join Country On City.Country=Country.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & CStr(var_354 & var_3C8 & " And " & var_46C & ")")
  loc_1532108: var_4A4 = CStr(var_354 & var_3C8 & " And " & var_46C & ")") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By Country.Name,DocId,SNo"
  loc_1532111: unk_5407BC.Execute var_4A4, var_108, -1
  loc_153211C: Set var_8C = var_F8
  loc_1532132: var_4A8 = var_8C.RecordCount
  loc_1532140: If (var_4A8 <= 0) Then
  loc_1532149:   Call 0.Method_arg_50 (CStr(var_354 & var_3C8 & " And " & var_46C & ")"), var_F8)
  loc_153216A:   MsgBox("** No Records Found to Print **", &H40, CVar(CStr(var_354 & var_3C8 & " And " & var_46C & ")")), var_128, var_148)
  loc_153217F:   global_88 = 0
  loc_1532182:   Exit Sub
  loc_1532183: End If
  loc_1532190: Call Proc_66_50_EFB684(New)
  loc_1532198: Set var_B4 = var_F8
  loc_15321A0: var_A0 = 0
  loc_15321A8: var_A4 = 0
  loc_15321AE: var_A8 = vbNullString
  loc_15321B6: var_AC = 0
  loc_15321BE: var_B0 = 0
  loc_15321C4: var_94 = vbNullString
  loc_15321F2: var_A8 = CStr(var_8C.Fields.Item("Country").Value)
  loc_15321FF: ' Referenced from: 1532A8F
  loc_153220E: If Not(var_8C.EOF) Then
  loc_1532211:   ' Referenced from: 15329C3
  loc_153224E:   If (CVar(var_A8) = var_8C.Fields.Item("Country").Value) Then
  loc_1532273:     var_118 = var_8C.Fields.Item("CheckIn").Value
  loc_153227E:     var_D4 = CVar(CLng(0)) 'Long
  loc_15322C0:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15322C6:       var_C4 = CVar(CLng(0)) 'Long
  loc_15322CB:       var_E4 = 1
  loc_15322EE:       var_9C = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_15322FD:     Else
  loc_153231F:       var_118 = var_8C.Fields.Item("CheckIn").Value
  loc_153232A:       var_D4 = CVar(CLng(1)) 'Long
  loc_153236C:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1532372:         var_C4 = CVar(CLng(1)) 'Long
  loc_1532377:         var_E4 = 1
  loc_153239A:         var_9C = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_15323A9:       Else
  loc_15323D5:         var_9C = CDate(var_8C.Fields.Item("CheckIn").Value)
  loc_15323E2:       End If
  loc_15323E2:     End If
  loc_153241E:     If CBool(var_8C.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_1532443:       var_118 = var_8C.Fields.Item("CheckOut").Value
  loc_153244E:       var_D4 = CVar(CLng(1)) 'Long
  loc_1532490:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1532496:         var_C4 = CVar(CLng(1)) 'Long
  loc_153249B:         var_E4 = 1
  loc_15324E4:         var_178 = CVar(CLng(1)) 'Long
  loc_15324E9:         var_198 = 1
  loc_1532522:         var_21C = CVar(CLng(1)) 'Long
  loc_1532527:         var_23C = 1
  loc_1532570:         var_20C = IIf((CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_8C.Fields.Item("CheckOut").Value), DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))), CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_15325CD:         var_290 = (CVar(var_A0) + (DateDiff("D", var_9C, var_20C, 1, 1) * var_8C.Fields.Item("Foreigner").Value))
  loc_15325D3:         var_A0 = CLng(CVar(CLng(1)) & (CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_8C.Fields.Item("CheckOut").Value) & " Or (ChkInDt<=" & (DateDiff("D", var_9C, var_20C, 1, 1) * var_8C.Fields.Item("Foreigner").Value))
  loc_153260E:       Else
  loc_1532686:         var_168 = (CVar(var_A0) + (DateDiff("D", var_9C, CVar(var_8C.Fields.Item("CheckOut")), 1, 1) * var_8C.Fields.Item("Foreigner").Value))
  loc_153268C:         var_A0 = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_15326A3:       End If
  loc_15326A6:     Else
  loc_15326A9:       var_C4 = CVar(CLng(1)) 'Long
  loc_15326AE:       var_E4 = 1
  loc_15326E3:       If (MemVar_1F950EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_1532742:         var_168 = (CVar(var_A0) + (DateDiff("D", var_9C, CDate(MemVar_1F950EC), 1, 1) * var_8C.Fields.Item("Foreigner").Value))
  loc_1532748:         var_A0 = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_1532760:       Else
  loc_1532763:         var_C4 = CVar(CLng(1)) 'Long
  loc_1532768:         var_E4 = 1
  loc_153279C:         var_4A0 = CStr(Me.FGrid.TextMatrix))
  loc_15327D5:         var_250 = var_8C.Fields.Item("Foreigner")
  loc_15327E9:         var_1BC = (CVar(var_A0) + (DateDiff("D", var_9C, CDate(CDate(var_4A0)), 1, 1) * var_250.Value))
  loc_15327EF:         var_A0 = CLng(DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_153280B:       End If
  loc_153280B:     End If
  loc_153283C:     var_118 = (CVar(var_A4) + var_8C.Fields.Item("Foreigner").Value)
  loc_1532842:     var_A4 = CLng(CDate(CDate(var_4A0)))
  loc_1532856:     var_8C.MoveNext
  loc_153286C:     If (var_8C.EOF = &HFF) Then
  loc_153286F:       GoTo loc_15329C6
  loc_1532872:     End If
  loc_1532894:     var_108 = var_8C.Fields.Item("Country").Value
  loc_15328AF:     If CBool(var_108 <> CVar(var_A8)) Then
  loc_15328B5:       var_C4 = var_A0
  loc_15328BD:       Proc_6_39_E7D3A0(var_108, var_C4, var_A4, var_A0, var_108, var_E4, var_C4)
  loc_15328C5:       var_D4 = 0
  loc_15328D8:       If CBool(Not (var_108 = var_D4)) Then
  loc_15328DE:         Set var_4B8 = var_B4 
  loc_15328ED:         var_4B8.AddNew var_C4, var_D4
  loc_1532902:         var_4B8.Collect = "Country"
  loc_1532912:         Proc_6_39_E7D3A0(var_108, var_A4, CVar(var_A8), var_A0, var_108)
  loc_1532924:         var_4B8.Collect = "Guest"
  loc_153292F:         var_C4 = var_A0
  loc_1532937:         Proc_6_39_E7D3A0(var_108, var_C4, var_108, var_E4)
  loc_1532940:         var_D4 = "Night"
  loc_1532949:         var_4B8.Collect = var_D4
  loc_153295C:         var_4B8.Update var_C4, var_D4
  loc_1532963:         Set var_4B8 = Nothing 
  loc_153296E:         var_AC = (var_AC + var_A4)
  loc_1532978:         var_B0 = (var_B0 + var_A0)
  loc_153297B:       End If
  loc_1532980:       var_A0 = 0
  loc_1532988:       var_A4 = 0
  loc_153298B:     End If
  loc_15329A5:     var_1AC = var_8C.Fields.Item("Country")
  loc_15329AD:     var_108 = var_1AC.Value
  loc_15329B6:     var_A8 = CStr(var_108)
  loc_15329C3:     GoTo loc_1532211
  loc_15329C6:     ' Referenced from: 153286F
  loc_15329C6:   End If
  loc_15329C9:   var_C4 = var_A0
  loc_15329D1:   Proc_6_39_E7D3A0(var_108, var_C4, var_A4, var_A0, var_B0)
  loc_15329D9:   var_D4 = 0
  loc_15329EC:   If CBool(Not (var_108 = var_D4)) Then
  loc_15329F2:     Set var_4BC = var_B4 
  loc_1532A01:     var_4BC.AddNew var_C4, var_D4
  loc_1532A16:     var_4BC.Collect = "Country"
  loc_1532A26:     Proc_6_39_E7D3A0(var_108, var_A4, CVar(var_A8), var_AC)
  loc_1532A38:     var_4BC.Collect = "Guest"
  loc_1532A43:     var_C4 = var_A0
  loc_1532A4B:     Proc_6_39_E7D3A0(var_108, var_C4, var_108, var_108)
  loc_1532A54:     var_D4 = "Night"
  loc_1532A5D:     var_4BC.Collect = var_D4
  loc_1532A70:     var_4BC.Update var_C4, var_D4
  loc_1532A77:     Set var_4BC = Nothing 
  loc_1532A82:     var_AC = (var_AC + var_A4)
  loc_1532A8C:     var_B0 = (var_B0 + var_A0)
  loc_1532A8F:   End If
  loc_1532A8F:   GoTo loc_15321FF
  loc_1532A92: End If
  loc_1532A98: global_84 = "Form-2"
  loc_1532AA2: Call 0.Method_arg_50 (var_4A0, var_B0, var_AC, var_108)
  loc_1532ABF: global_80 = CStr(Ucase(CVar(var_4A0)))
  loc_1532AF4: Set var_F8 = var_B4 
  loc_1532AFB: CreateFieldDefFile(var_F8, MemVar_1F950B4 & "\" & global_84 & ".ttx", &HFF)
  loc_1532B26: var_4A0 = MemVar_1F950B4 & "\"
  loc_1532B40: Call 0.Method_arg_1C (var_4A0 & global_84 & ".RPT", var_C4, var_F8)
  loc_1532B4B: MemVar_1F951E8 = var_F8
  loc_1532B66: var_C4 = CVar(var_F8) 'Address
  loc_1532B74: Call 0.Method_arg_64 (var_F8, var_C4, var_D4, var_E4)
  loc_1532B7C: Call 0.Method_arg_2C (var_C4, var_A0)
  loc_1532B8A: Call 0.Method_arg_150 (var_A0)
  loc_1532BA3: Call 0.Method_arg_90 (var_F8, var_4A8)
  loc_1532BAB: Call 0.Method_arg_24 (var_88)
  loc_1532BB6: For var_4C8 =  To var_4A8: 1 = var_4C8 'Long
  loc_1532BCE:   Call 0.Method_arg_90 (var_F8, var_88)
  loc_1532BD6:   Call 0.Method_arg_20 (var_1AC)
  loc_1532BDE:   Call 0.Method_arg_30 (var_4A0)
  loc_1532BF4:   var_4D8 = Ucase(CVar(var_4A0)) 'Variant
  loc_1532C0D:   If (var_4D8 = "FROMDATE") Then
  loc_1532C56:     Call 0.Method_arg_90 (var_1AC, var_88, var_250)
  loc_1532C5E:     Call 0.Method_arg_20 (1 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(0)))
  loc_1532C66:     Call 0.Method_arg_38 ("'")
  loc_1532C83:   Else
  loc_1532C8E:     If (var_4D8 = "TODATE") Then
  loc_1532CA9:       Set var_F8 = Me.FGrid
  loc_1532CD7:       Call 0.Method_arg_90 (var_1AC, var_88, var_250)
  loc_1532CDF:       Call 0.Method_arg_20 (1 & CStr(var_F8.TextMatrix)) & "'", CVar(CLng(1)))
  loc_1532CE7:       Call 0.Method_arg_38 ("'")
  loc_1532D04:     Else
  loc_1532D0F:       If (var_4D8 = "TITLE") Then
  loc_1532D35:         Call 0.Method_arg_90 (var_F8, var_88)
  loc_1532D3D:         Call 0.Method_arg_20 (var_1AC)
  loc_1532D45:         Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_1532D5B:       Else
  loc_1532D66:         If (var_4D8 = "PRINTDATE") Then
  loc_1532D95:           Call 0.Method_arg_90 (var_F8, var_88)
  loc_1532D9D:           Call 0.Method_arg_20 (var_1AC)
  loc_1532DA5:           Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F950EC) & "'"))
  loc_1532DBB:         End If
  loc_1532DBB:       End If
  loc_1532DBB:     End If
  loc_1532DBB:   End If
  loc_1532DBE: Next var_4C8 'Long
  loc_1532DC8: Set var_1AC = Nothing
  loc_1532DE1: Set var_F8 = MemVar_1F951E8 
  loc_1532DED: Proc_6_99_1484404(var_F8, 0, global_80)
  loc_1532DF8: MemVar_1F951E8 = var_F8
  loc_1532E08: global_88 = 0
  loc_1532E10: Set var_8C = Nothing
  loc_1532E13: Exit Sub
  loc_1532E14: ' Referenced from: 1531F00
  loc_1532E14: Proc_6_60_E63754(global_88, &HFF)
  loc_1532E1E: global_88 = 0
  loc_1532E21: Exit Sub
End Sub

Public Sub Proc_66_69_15FF870
  'Data Table: 54078C
  Dim var_15C As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  Dim var_214 As String
  Dim var_288 As Variant
  Dim var_298 As Variant
  Dim var_2D8 As Variant
  Dim var_380 As String
  Dim unk_5407BC As Connection15
  Dim var_B0 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_D4 As Long
  Dim var_B8 As Recordset15
  Dim var_D8 As Long
  Dim var_C8 As Long
  Dim var_CC As Long
  Dim var_C4 As Long
  Dim var_A0 As Long
  Dim var_8C As Long
  Dim var_88 As Long
  Dim var_F8 As Variant
  Dim var_200 As Variant
  Dim var_118 As Variant
  Dim var_14C As Variant
  Dim var_AC As Double
  loc_15FE470: On Error Goto loc_15FF861
  loc_15FE473: var_15C = " WHERE ChkInDt Between "
  loc_15FE4A4: Proc_6_7_F26918(var_14C, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_15FE4B5: var_18C = CVar(CLng(0)) & var_14C & " And " 
  loc_15FE4E5: Proc_6_7_F26918(var_200, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_15FE4F8: global_60 = CStr(CVar(CLng(1)) & var_200)
  loc_15FE535: Set var_11C = Me.FGrid
  loc_15FE53B: var_12C = var_11C.TextMatrix)
  loc_15FE54C: Proc_6_7_F26918(var_14C, CVar(CStr(var_12C)), 1, CVar(CLng(0)))
  loc_15FE554: var_16C = " WHERE (ChkInDt Between " & var_14C 
  loc_15FE55D: var_18C = var_16C & " And " 
  loc_15FE58D: Proc_6_7_F26918(var_200, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_15FE5CE: Proc_6_7_F26918(var_2A8, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_15FE60F: Proc_6_7_F26918(var_34C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_15FE672: var_214 = "Select RO.DocId,(Adult+Children) As Tourist,ChkInDt As CheckIn,ChkOutDt as CheckOut,GF.Name,GF.StateName,GF.Type From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet " & CStr(var_18C & var_200 & " Or ChkOutDt Between " & var_2A8 & " And " & var_34C & " Or ChkOutDt Is Null)")
  loc_15FE679: var_380 = CStr(CVar(CLng(1)) & var_200) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' And IsNull(GF.StateName,'') <>'' Order By GF.StateName,RO.DOCID,SNO"
  loc_15FE682: unk_5407BC.Execute var_380, var_12C, -1
  loc_15FE68D: Set var_B0 = var_11C
  loc_15FE6B1: If (var_B0.RecordCount <= 0) Then
  loc_15FE6BA:   Call 0.Method_arg_50 (CStr(CVar(CLng(1)) & var_200), var_11C)
  loc_15FE6C8:   var_13C = CVar(CStr(CVar(CLng(1)) & var_200)) 'String
  loc_15FE6D5:   var_12C = "** No Records Found to Print **"
  loc_15FE6DB:   MsgBox(var_12C, &H40, var_13C, var_14C, var_16C)
  loc_15FE6F0:   global_88 = 0
  loc_15FE6F3:   Exit Sub
  loc_15FE6F4: End If
  loc_15FE70B: var_214 = "Select Sum(Adult+Children) AS Indian From RoomOccDet RO Inner Join GuestProf GF ON RO.GuestProf=GF.Code " & global_60
  loc_15FE71B: unk_5407BC.Execute CStr(CVar(CLng(1)) & var_200) & " And IsNull(GF.StateName,'') <>'' And GF.Type<>'Foreign' AND SNO=1", var_12C, -1
  loc_15FE726: Set var_B4 = var_11C
  loc_15FE74A: If (var_B4.RecordCount > 0) Then
  loc_15FE75C:   var_11C = var_B4.Fields
  loc_15FE76C:   var_12C = CVar(var_11C.Item("Indian")) 'Address
  loc_15FE773:   Proc_6_39_E7D3A0(var_13C, var_12C, var_11C)
  loc_15FE77D:   var_D4 = CLng(var_13C)
  loc_15FE78D: Else
  loc_15FE792:   var_D4 = 0
  loc_15FE795: End If
  loc_15FE7AC: var_214 = "Select Sum(Adult+Children) AS Foreigner From RoomOccDet RO Inner Join GuestProf GF ON RO.GuestProf=GF.Code " & global_60
  loc_15FE7BC: unk_5407BC.Execute CStr(CVar(CLng(1)) & var_200) & " And IsNull(GF.StateName,'') <>'' And GF.Type='Foreign' AND SNO=1", var_12C, -1
  loc_15FE7C7: Set var_B8 = var_11C
  loc_15FE7EB: If (var_B8.RecordCount > 0) Then
  loc_15FE7FD:   var_11C = var_B8.Fields
  loc_15FE814:   Proc_6_39_E7D3A0(var_13C, CVar(var_11C.Item("Foreigner")), var_11C, var_D4)
  loc_15FE81E:   var_D8 = CLng(var_13C)
  loc_15FE82E: Else
  loc_15FE833:   var_D8 = 0
  loc_15FE836: End If
  loc_15FE839: var_BC = "-------------------------------------------------------------------------------------------"
  loc_15FE83E: Close 1
  loc_15FE847: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_15FE850: var_C8 = 0
  loc_15FE858: var_CC = 0
  loc_15FE860: var_C4 = 0
  loc_15FE868: var_A0 = 0
  loc_15FE86E: var_C0 = vbNullString
  loc_15FE876: var_8C = 1
  loc_15FE87E: var_88 = 0
  loc_15FE881: ' Referenced from: 15FF59B
  loc_15FE8A8: Print 1, Proc_6_128_1026560("FORM 5 ", "B", &H50, var_88, var_8C, var_A0, var_C4, var_CC)
  loc_15FE8E0: Print 1, Proc_6_128_1026560("GOVT. OF INDIA", "B", &H50, var_C8, var_D8)
  loc_15FE918: Print 1, Proc_6_128_1026560("MINISTRY OF TOURISM", "B", &H50, var_D8)
  loc_15FE92E: Print 1, vbNullString
  loc_15FE95B: Print 1, Proc_6_128_1026560("STATISTICS OF TOURISTs", "B", &H50, var_D4)
  loc_15FE971: Print 1, vbNullString
  loc_15FE97A: var_E8 = CVar(CLng(0)) 'Long
  loc_15FE992: var_12C = Me.FGrid.TextMatrix)
  loc_15FE9B9: var_13C = Me.FGrid.TextMatrix)
  loc_15FE9E7: Print 1, "FROM : " & CStr(var_12C) & " TO : " & CStr(var_13C)
  loc_15FEA0D: Print 1, vbNullString
  loc_15FEA32: Print 1, "NAME OF THE HOTEL : " & Proc_6_45_EADFB8(MemVar_1F95130, &H32, var_13C, 1, CVar(CLng(1)), var_12C)
  loc_15FEA9C: var_16C = (Space(&H14) + Trim(CVar(Proc_6_38_E69628(MemVar_1F95134, 1, MemVar_1F95134))))
  loc_15FEAA5: var_18C = (var_16C + ", ")
  loc_15FEAAC: var_200 = (var_18C + Trim(CVar(Proc_6_38_E69628(MemVar_1F95138, global_88))))
  loc_15FEAB5: var_210 = (var_200 + ", ")
  loc_15FEABC: var_298 = (var_18C & var_200 + Trim(CVar(Proc_6_38_E69628(MemVar_1F9513C, var_18C))))
  loc_15FEAC2: Print 1, CVar(CStr(Me.FGrid.TextMatrix)))
  loc_15FEAE8: Print 1, vbNullString
  loc_15FEAF3: Print 1, var_BC
  loc_15FEB28: var_13C = ("STATE NAME" + Space(&H16))
  loc_15FEB31: var_14C = (CVar(Proc_6_38_E69628(MemVar_1F95134, 1, MemVar_1F95134)) + "PERSONS")
  loc_15FEB38: var_18C = (Trim(CVar(Proc_6_38_E69628(MemVar_1F95134, 1, MemVar_1F95134))) + Space(4))
  loc_15FEB41: var_1E0 = (var_18C + "DAYS SPENT")
  loc_15FEB48: var_200 = (CVar(Proc_6_38_E69628(MemVar_1F95138, global_88)) + Space(4))
  loc_15FEB4C: var_118 = "<----- NO. OF TOURISTS ---->"
  loc_15FEB51: var_210 = (var_200 + ", ")
  loc_15FEB57: Print 1, var_18C & var_200
  loc_15FEBA1: var_13C = (Space(&H38) + "INDIAN")
  loc_15FEBA8: var_16C = (CVar(Proc_6_38_E69628(MemVar_1F95134, 1, MemVar_1F95134)) + Space(4))
  loc_15FEBB1: var_18C = (Space(4) + "FOREIGNER")
  loc_15FEBB8: var_1F0 = (var_18C + Space(5))
  loc_15FEBC1: var_200 = (Space(4) + "TOTAL")
  loc_15FEBC7: Print 1, var_200
  loc_15FEBE5: Print 1, var_BC
  loc_15FEC03: Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(MemVar_1F95134, 1, MemVar_1F95134)), var_D4)
  loc_15FEC35: Proc_6_39_E7D3A0(Space(4), var_D8)
  loc_15FEC63: var_298 = CVar((var_D4 + var_D8)) 'Long
  loc_15FEC6A: Proc_6_39_E7D3A0(var_2A8, CVar(CStr(Me.FGrid.TextMatrix))))
  loc_15FEC8D: var_16C = (Space(&H33) + CVar(Proc_6_52_EAE084(CStr(CVar(Proc_6_38_E69628(MemVar_1F95134, 1, MemVar_1F95134))), &HA)))
  loc_15FEC94: var_1E0 = (Space(4) + Space(4))
  loc_15FEC9E: var_210 = (Space(5) + CVar(Proc_6_52_EAE084(CStr(Space(4)), &HA)))
  loc_15FECA5: var_288 = (Space(4) & CVar(Proc_6_52_EAE084(CStr(Space(4)), &HA)) + Space(2))
  loc_15FECAF: var_2D8 = (Trim(CVar(Proc_6_38_E69628(MemVar_1F9513C, Space(4)))) + CVar(Proc_6_52_EAE084(CStr(var_2A8), 8)))
  loc_15FECB5: Print 1, Space(4) & CVar(Proc_6_52_EAE084(CStr(Space(4)), &HA)) & " Or ChkOutDt Between " & var_2A8 & " And "
  loc_15FECF4: var_88 = (var_88 + &H10)
  loc_15FED22: var_D0 = CStr(var_B0.Fields.Item("StateName").Value)
  loc_15FED2F: ' Referenced from: 15FF6D9
  loc_15FED3E: If Not(var_B0.EOF) Then
  loc_15FED41:   ' Referenced from: 15FF59E
  loc_15FED7E:   If (CVar(var_D0) = var_B0.Fields.Item("StateName").Value) Then
  loc_15FEDA3:     var_13C = var_B0.Fields.Item("CheckIn").Value
  loc_15FEDAE:     var_F8 = CVar(CLng(0)) 'Long
  loc_15FEDF0:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15FEDF6:       var_E8 = CVar(CLng(0)) 'Long
  loc_15FEDFB:       var_108 = 1
  loc_15FEE1E:       var_AC = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_15FEE2D:     Else
  loc_15FEE4F:       var_13C = var_B0.Fields.Item("CheckIn").Value
  loc_15FEE5A:       var_F8 = CVar(CLng(1)) 'Long
  loc_15FEE9C:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15FEEA2:         var_E8 = CVar(CLng(1)) 'Long
  loc_15FEEA7:         var_108 = 1
  loc_15FEECA:         var_AC = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_15FEED9:       Else
  loc_15FEF05:         var_AC = CDate(var_B0.Fields.Item("CheckIn").Value)
  loc_15FEF12:       End If
  loc_15FEF12:     End If
  loc_15FEF4E:     If CBool(var_B0.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_15FEF73:       var_13C = var_B0.Fields.Item("CheckOut").Value
  loc_15FEF7E:       var_F8 = CVar(CLng(1)) 'Long
  loc_15FEFC0:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15FEFC6:         var_E8 = CVar(CLng(1)) 'Long
  loc_15FEFCB:         var_108 = 1
  loc_15FF04C:         var_1E0 = (CVar(var_C8) + (DateDiff("D", var_AC, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_B0.Fields.Item("Tourist").Value))
  loc_15FF052:         var_C8 = CLng(Space(5))
  loc_15FF071:       Else
  loc_15FF0E9:         var_18C = (CVar(var_C8) + (DateDiff("D", var_AC, CVar(var_B0.Fields.Item("CheckOut")), 1, 1) * var_B0.Fields.Item("Tourist").Value))
  loc_15FF0EF:         var_C8 = CLng((DateDiff("D", var_AC, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_B0.Fields.Item("Tourist").Value))
  loc_15FF106:       End If
  loc_15FF109:     Else
  loc_15FF10C:       var_E8 = CVar(CLng(1)) 'Long
  loc_15FF111:       var_108 = 1
  loc_15FF146:       If (MemVar_1F950EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_15FF1A5:         var_18C = (CVar(var_C8) + (DateDiff("D", var_AC, CDate(MemVar_1F950EC), 1, 1) * var_B0.Fields.Item("Tourist").Value))
  loc_15FF1AB:         var_C8 = CLng((DateDiff("D", var_AC, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_B0.Fields.Item("Tourist").Value))
  loc_15FF1C3:       Else
  loc_15FF1C6:         var_E8 = CVar(CLng(1)) 'Long
  loc_15FF1CB:         var_108 = 1
  loc_15FF216:         var_14C = DateDiff("D", var_AC, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1)
  loc_15FF24C:         var_1E0 = (CVar(var_C8) + (var_14C * var_B0.Fields.Item("Tourist").Value))
  loc_15FF252:         var_C8 = CLng(Space(5))
  loc_15FF26E:       End If
  loc_15FF26E:     End If
  loc_15FF290:     var_13C = var_B0.Fields.Item("CheckIn").Value
  loc_15FF29B:     var_F8 = CVar(CLng(0)) 'Long
  loc_15FF2A0:     var_118 = 1
  loc_15FF2C3:     var_17C = CDate(CDate(CStr(Me.FGrid.TextMatrix))))
  loc_15FF2EE:     var_18C = var_B0.Fields.Item("CheckIn").Value
  loc_15FF311:     var_16C = Me.FGrid.TextMatrix)
  loc_15FF351:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(var_16C))))) Then
  loc_15FF385:       var_13C = (CVar(var_CC) + var_B0.Fields.Item("Tourist").Value)
  loc_15FF38B:       var_CC = CLng(var_13C)
  loc_15FF39C:     End If
  loc_15FF39F:     var_B0.MoveNext
  loc_15FF3B5:     If (var_B0.EOF = &HFF) Then
  loc_15FF3B8:       GoTo loc_15FF5A1
  loc_15FF3BB:     End If
  loc_15FF3DD:     var_12C = var_B0.Fields.Item("StateName").Value
  loc_15FF3E8:     var_F8 = CVar(var_D0) 'String
  loc_15FF3F8:     If CBool(var_12C <> var_F8) Then
  loc_15FF402:       var_A0 = (var_A0 + var_C8)
  loc_15FF410:       Proc_6_39_E7D3A0(var_12C, var_CC, var_A0, var_CC, var_18C, (var_118 >= var_17C), var_F8)
  loc_15FF425:       var_108 = var_C8
  loc_15FF42D:       Proc_6_39_E7D3A0(var_14C, var_108, (var_12C = 0), var_13C, var_C8)
  loc_15FF450:       If CBool(Not var_12C And (var_14C = 0)) Then
  loc_15FF47B:         Proc_6_39_E7D3A0(var_16C, var_CC, var_CC)
  loc_15FF4AD:         Proc_6_39_E7D3A0(Space(1) And (var_14C = 0) & CVar(Proc_6_52_EAE084(CStr(Space(4)), &HA)), var_C8)
  loc_15FF4D0:         var_14C = (CVar(Proc_6_45_EADFB8(var_D0, &H1E, var_108)) + Space(1))
  loc_15FF4DA:         var_1E0 = (var_14C + CVar(Proc_6_52_EAE084(CStr(var_16C), 8)))
  loc_15FF4E1:         var_200 = (Not Space(1) And (var_14C = 0) + Space(6))
  loc_15FF4EB:         var_288 = (CVar(Proc_6_52_EAE084(CStr(Space(4)), &HA)) + CVar(Proc_6_52_EAE084(CStr(Space(1) And (var_14C = 0) & CVar(Proc_6_52_EAE084(CStr(Space(4)), &HA))), 8)))
  loc_15FF4F1:         Print 1, Trim(CVar(Proc_6_38_E69628(MemVar_1F9513C, CVar(Proc_6_52_EAE084(CStr(var_16C), 8)))))
  loc_15FF526:         var_88 = (var_88 + 1)
  loc_15FF529:       End If
  loc_15FF530:       var_C4 = (var_C4 + var_CC)
  loc_15FF538:       var_CC = 0
  loc_15FF540:       var_C8 = 0
  loc_15FF543:     End If
  loc_15FF565:     var_12C = var_B0.Fields.Item("StateName").Value
  loc_15FF56E:     var_D0 = CStr(var_12C)
  loc_15FF584:     If (var_88 > &H3D) Then
  loc_15FF58C:       var_88 = 0
  loc_15FF598:       var_8C = (var_8C + 1)
  loc_15FF59B:       GoTo loc_15FE881
  loc_15FF59E:     End If
  loc_15FF59E:     GoTo loc_15FED41
  loc_15FF5A1:     ' Referenced from: 15FF3B8
  loc_15FF5A1:   End If
  loc_15FF5A8:   var_A0 = (var_A0 + var_C8)
  loc_15FF5B6:   Proc_6_39_E7D3A0(var_12C, var_CC, var_A0, var_8C, var_88, var_C8)
  loc_15FF5D3:   Proc_6_39_E7D3A0(var_14C, var_C8, (var_12C = 0), var_CC)
  loc_15FF5F6:   If CBool(Not var_C4 And (var_14C = 0)) Then
  loc_15FF621:     Proc_6_39_E7D3A0(var_16C, var_CC)
  loc_15FF653:     Proc_6_39_E7D3A0(var_C4 And (var_14C = 0) & CVar(Proc_6_52_EAE084(CStr(Space(4)), &HA)), var_C8)
  loc_15FF676:     var_14C = (CVar(Proc_6_45_EADFB8(var_D0, &H1E, var_88)) + Space(1))
  loc_15FF680:     var_1E0 = (var_14C + CVar(Proc_6_52_EAE084(CStr(var_16C), 8)))
  loc_15FF687:     var_200 = (Not var_C4 And (var_14C = 0) + Space(6))
  loc_15FF691:     var_288 = (CVar(Proc_6_52_EAE084(CStr(Space(4)), &HA)) + CVar(Proc_6_52_EAE084(CStr(var_C4 And (var_14C = 0) & CVar(Proc_6_52_EAE084(CStr(Space(4)), &HA))), 8)))
  loc_15FF697:     Print 1, Trim(CVar(Proc_6_38_E69628(MemVar_1F9513C, CVar(Proc_6_52_EAE084(CStr(var_16C), 8)))))
  loc_15FF6CC:     var_88 = (var_88 + 1)
  loc_15FF6CF:   End If
  loc_15FF6D6:   var_C4 = (var_C4 + var_CC)
  loc_15FF6D9:   GoTo loc_15FED2F
  loc_15FF6DC: End If
  loc_15FF6E1: Print 1, var_BC
  loc_15FF6F0: var_88 = (var_88 + 1)
  loc_15FF741: var_13C = ("TOTAL ==> " + Space(&H13))
  loc_15FF74B: var_16C = (CVar(Proc_6_45_EADFB8(var_D0, &H1E, var_88)) + CVar(Proc_6_52_EAE084(CStr(var_C4), &HA, var_88, var_C4)))
  loc_15FF752: var_1E0 = (var_16C + Space(4))
  loc_15FF75C: var_200 = (Not var_C4 And (CVar(Proc_6_52_EAE084(CStr(var_C4), &HA, var_88, var_C4)) = 0) + CVar(Proc_6_52_EAE084(CStr(var_A0), &HA, var_88)))
  loc_15FF762: Print 1, CVar(Proc_6_52_EAE084(CStr(Space(4)), &HA))
  loc_15FF78B: Print 1, vbNullString
  loc_15FF79A: var_88 = (var_88 + 1)
  loc_15FF7A2: Print 1, var_BC
  loc_15FF7B1: var_88 = (var_88 + 1)
  loc_15FF7B4: ' Referenced from: 15FF7D7
  loc_15FF7BD: If (var_88 <= &H41) Then
  loc_15FF7C5:   Print 1, vbNullString
  loc_15FF7D4:   var_88 = (var_88 + 1)
  loc_15FF7D7:   GoTo loc_15FF7B4
  loc_15FF7DA: End If
  loc_15FF7DC: Close 1
  loc_15FF7E5: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_15FF7F5: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_15FF800: Close 1
  loc_15FF80A: If (MemVar_1F953BC = "Y") Then
  loc_15FF826:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_15FF830: Else
  loc_15FF849:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_15FF850: End If
  loc_15FF855: global_88 = 0
  loc_15FF85D: Set var_B0 = Nothing
  loc_15FF860: Exit Sub
  loc_15FF861: ' Referenced from: 15FE470
  loc_15FF861: Proc_6_60_E63754(global_88, var_88, var_88)
  loc_15FF86B: global_88 = 0
  loc_15FF86E: Exit Sub
End Sub

Public Sub Proc_66_70_1756850
  'Data Table: 54078C
  Dim var_150 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Long
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_254 As Long
  Dim var_268 As Variant
  Dim var_2A8 As Variant
  Dim var_36C As Variant
  Dim var_4B8 As String
  Dim var_4BC As String
  Dim unk_5407BC As Connection15
  Dim var_9C As Recordset15
  Dim var_C0 As Long
  Dim var_A0 As Recordset15
  Dim var_C4 As Long
  Dim var_EC As Variant
  Dim var_94 As Double
  Dim var_140 As Variant
  Dim var_298 As Variant
  Dim var_C8 As Long
  Dim var_A4 As Recordset15
  Dim var_CC As Long
  Dim var_B4 As Long
  Dim var_B8 As Long
  Dim var_B0 As Long
  Dim var_88 As Long
  Dim var_4D0 As Recordset15
  Dim var_4D4 As Recordset15
  loc_1754B6C: On Error Goto loc_1756840
  loc_1754B6F: var_150 = " (ChkInDt Between "
  loc_1754B89: Set var_110 = Me.FGrid
  loc_1754B8F: var_120 = var_110.TextMatrix)
  loc_1754BA0: Proc_6_7_F26918(var_140, CVar(CStr(var_120)), 1)
  loc_1754BA8: var_160 = CVar(CLng(0)) & var_140 
  loc_1754BB1: var_180 = var_160 & " And " 
  loc_1754BE1: Proc_6_7_F26918(var_1F4, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_1754C22: Proc_6_7_F26918(var_298, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_1754C63: Proc_6_7_F26918(var_33C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_1754C74: var_36C = CVar(CLng(1)) & var_1F4 & " Or (ChkInDt<=" & var_298 & " And (ChkOutDt Is Null Or ChkOutDt>" & var_33C & ")) Or ChkOutDt Between " 
  loc_1754CA4: Proc_6_7_F26918(var_3E0, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_1754CE5: Proc_6_7_F26918(var_484, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_1754D01: global_60 = CStr(var_36C & var_3E0 & " And " & var_484 & ")")
  loc_1754D6D: var_4B8 = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_1754D74: var_4BC = CStr(var_36C & var_3E0 & " And " & var_484 & ")") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo"
  loc_1754D7D: unk_5407BC.Execute var_4BC, var_120, -1
  loc_1754D88: Set var_A0 = var_110
  loc_1754DAF: var_4B8 = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut,Country.Name As Country From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Left Join City On City.CityCode=GF.City Left Join Country On City.Country=Country.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_1754DB6: var_4BC = CStr(var_36C & var_3E0 & " And " & var_484 & ")") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By Country.Name,DocId,SNo"
  loc_1754DBF: unk_5407BC.Execute var_4BC, var_120, -1
  loc_1754DCA: Set var_A4 = var_110
  loc_1754DF1: var_4B8 = "Select RO.DocId,(Adult+Children) As Tourist,ChkInDt As CheckIn,ChkOutDt as CheckOut,GF.Name,GF.StateName,GF.Type From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_1754DF8: var_4BC = CStr(var_36C & var_3E0 & " And " & var_484 & ")") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' And IsNull(GF.StateName,'') <>'' Order By GF.StateName,RO.DOCID,SNO"
  loc_1754E01: unk_5407BC.Execute var_4BC, var_120, -1
  loc_1754E0C: Set var_9C = var_110
  loc_1754E22: var_4C0 = var_9C.RecordCount
  loc_1754E30: If (var_4C0 <= 0) Then
  loc_1754E39:   Call 0.Method_arg_50 (CStr(var_36C & var_3E0 & " And " & var_484 & ")"), var_110, var_110)
  loc_1754E5A:   MsgBox("** No Records Found to Print **", &H40, CVar(CStr(var_36C & var_3E0 & " And " & var_484 & ")")), var_140, var_160)
  loc_1754E6F:   global_88 = 0
  loc_1754E72:   Exit Sub
  loc_1754E73: End If
  loc_1754E78: var_C0 = 0
  loc_1754E7B: ' Referenced from: 17554C8
  loc_1754E8A: If Not(var_A0.EOF) Then
  loc_1754E92:   var_C4 = 0
  loc_1754EB7:   var_130 = var_A0.Fields.Item("CheckIn").Value
  loc_1754EC2:   var_EC = CVar(CLng(0)) 'Long
  loc_1754F04:   If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1754F0A:     var_DC = CVar(CLng(0)) 'Long
  loc_1754F0F:     var_FC = 1
  loc_1754F32:     var_94 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1754F41:   Else
  loc_1754F63:     var_130 = var_A0.Fields.Item("CheckIn").Value
  loc_1754F6E:     var_EC = CVar(CLng(1)) 'Long
  loc_1754FB0:     If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1754FB6:       var_DC = CVar(CLng(1)) 'Long
  loc_1754FBB:       var_FC = 1
  loc_1754FDE:       var_94 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1754FED:     Else
  loc_1755019:       var_94 = CDate(var_A0.Fields.Item("CheckIn").Value)
  loc_1755026:     End If
  loc_1755026:   End If
  loc_1755062:   If CBool(var_A0.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_1755087:     var_130 = var_A0.Fields.Item("CheckOut").Value
  loc_1755092:     var_EC = CVar(CLng(1)) 'Long
  loc_17550D4:     If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_17550DA:       var_DC = CVar(CLng(1)) 'Long
  loc_17550DF:       var_FC = 1
  loc_1755128:       var_190 = CVar(CLng(1)) 'Long
  loc_175512D:       var_1B0 = 1
  loc_1755166:       var_234 = CVar(CLng(1)) 'Long
  loc_175516B:       var_254 = 1
  loc_17551B4:       var_224 = IIf((CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_A0.Fields.Item("CheckOut").Value), DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))), CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_1755211:       var_2A8 = (CVar(var_C4) + (DateDiff("D", var_94, var_224, 1, 1) * var_A0.Fields.Item("Indian").Value))
  loc_1755217:       var_C4 = CLng(CVar(CLng(1)) & (CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_A0.Fields.Item("CheckOut").Value) & " Or (ChkInDt<=" & (DateDiff("D", var_94, var_224, 1, 1) * var_A0.Fields.Item("Indian").Value))
  loc_1755252:     Else
  loc_17552CA:       var_180 = (CVar(var_C4) + (DateDiff("D", var_94, CVar(var_A0.Fields.Item("CheckOut")), 1, 1) * var_A0.Fields.Item("Indian").Value))
  loc_17552D0:       var_C4 = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_17552E7:     End If
  loc_17552EA:   Else
  loc_17552ED:     var_DC = CVar(CLng(1)) 'Long
  loc_17552F2:     var_FC = 1
  loc_1755327:     If (MemVar_1F950EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_1755386:       var_180 = (CVar(var_C4) + (DateDiff("D", var_94, CDate(MemVar_1F950EC), 1, 1) * var_A0.Fields.Item("Indian").Value))
  loc_175538C:       var_C4 = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_17553A4:     Else
  loc_17553A7:       var_DC = CVar(CLng(1)) 'Long
  loc_17553AC:       var_FC = 1
  loc_17553BF:       var_120 = Me.FGrid.TextMatrix)
  loc_175542D:       var_1D4 = (CVar(var_C4) + (DateDiff("D", var_94, CDate(CDate(CStr(var_120))), 1, 1) * var_A0.Fields.Item("Indian").Value))
  loc_1755433:       var_C4 = CLng(DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_175544F:     End If
  loc_175544F:   End If
  loc_175545A:   Proc_6_39_E7D3A0(var_120, var_C4, var_C4, var_120, var_FC, var_C4)
  loc_1755475:   If CBool(Not (var_120 = 0)) Then
  loc_17554A9:     var_130 = (CVar(var_C0) + var_A0.Fields.Item("Indian").Value)
  loc_17554AF:     var_C0 = CLng(CDate(CDate(CStr(var_A0.Fields.Item("Indian").Value))))
  loc_17554C0:   End If
  loc_17554C3:   var_A0.MoveNext
  loc_17554C8:   GoTo loc_1754E7B
  loc_17554CB: End If
  loc_17554D0: var_C8 = 0
  loc_17554D3: ' Referenced from: 1755B20
  loc_17554E2: If Not(var_A4.EOF) Then
  loc_17554EA:   var_CC = 0
  loc_175550F:   var_130 = var_A4.Fields.Item("CheckIn").Value
  loc_175551A:   var_EC = CVar(CLng(0)) 'Long
  loc_175555C:   If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1755562:     var_DC = CVar(CLng(0)) 'Long
  loc_1755567:     var_FC = 1
  loc_175558A:     var_94 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1755599:   Else
  loc_17555BB:     var_130 = var_A4.Fields.Item("CheckIn").Value
  loc_17555C6:     var_EC = CVar(CLng(1)) 'Long
  loc_1755608:     If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_175560E:       var_DC = CVar(CLng(1)) 'Long
  loc_1755613:       var_FC = 1
  loc_1755636:       var_94 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1755645:     Else
  loc_1755671:       var_94 = CDate(var_A4.Fields.Item("CheckIn").Value)
  loc_175567E:     End If
  loc_175567E:   End If
  loc_17556BA:   If CBool(var_A4.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_17556DF:     var_130 = var_A4.Fields.Item("CheckOut").Value
  loc_17556EA:     var_EC = CVar(CLng(1)) 'Long
  loc_175572C:     If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1755732:       var_DC = CVar(CLng(1)) 'Long
  loc_1755737:       var_FC = 1
  loc_1755780:       var_190 = CVar(CLng(1)) 'Long
  loc_1755785:       var_1B0 = 1
  loc_17557BE:       var_234 = CVar(CLng(1)) 'Long
  loc_17557C3:       var_254 = 1
  loc_175580C:       var_224 = IIf((CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_A4.Fields.Item("CheckOut").Value), DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))), CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_1755869:       var_2A8 = (CVar(var_CC) + (DateDiff("D", var_94, var_224, 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_175586F:       var_CC = CLng(CVar(CLng(1)) & (CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_A4.Fields.Item("CheckOut").Value) & " Or (ChkInDt<=" & (DateDiff("D", var_94, var_224, 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_17558AA:     Else
  loc_1755922:       var_180 = (CVar(var_CC) + (DateDiff("D", var_94, CVar(var_A4.Fields.Item("CheckOut")), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1755928:       var_CC = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_175593F:     End If
  loc_1755942:   Else
  loc_1755945:     var_DC = CVar(CLng(1)) 'Long
  loc_175594A:     var_FC = 1
  loc_175597F:     If (MemVar_1F950EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_17559DE:       var_180 = (CVar(var_CC) + (DateDiff("D", var_94, CDate(MemVar_1F950EC), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_17559E4:       var_CC = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_17559FC:     Else
  loc_17559FF:       var_DC = CVar(CLng(1)) 'Long
  loc_1755A04:       var_FC = 1
  loc_1755A17:       var_120 = Me.FGrid.TextMatrix)
  loc_1755A85:       var_1D4 = (CVar(var_CC) + (DateDiff("D", var_94, CDate(CDate(CStr(var_120))), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1755A8B:       var_CC = CLng(DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_1755AA7:     End If
  loc_1755AA7:   End If
  loc_1755AB2:   Proc_6_39_E7D3A0(var_120, var_CC, var_CC, var_120, var_FC, var_CC)
  loc_1755ACD:   If CBool(Not (var_120 = 0)) Then
  loc_1755AE9:     var_110 = var_A4.Fields
  loc_1755B01:     var_130 = (CVar(var_C8) + var_110.Item("Foreigner").Value)
  loc_1755B07:     var_C8 = CLng(CDate(CDate(CStr(var_110.Item("Foreigner").Value))))
  loc_1755B18:   End If
  loc_1755B1B:   var_A4.MoveNext
  loc_1755B20:   GoTo loc_17554D3
  loc_1755B23: End If
  loc_1755B30: Call Proc_66_52_EFB9CC(New)
  loc_1755B38: Set var_A8 = var_110
  loc_1755B40: var_B4 = 0
  loc_1755B48: var_B8 = 0
  loc_1755B50: var_B0 = 0
  loc_1755B58: var_88 = 0
  loc_1755B5E: var_AC = vbNullString
  loc_1755B8C: var_BC = CStr(var_9C.Fields.Item("StateName").Value)
  loc_1755B99: ' Referenced from: 17563FD
  loc_1755BA8: If Not(var_9C.EOF) Then
  loc_1755BAB:   ' Referenced from: 1756347
  loc_1755BE8:   If (CVar(var_BC) = var_9C.Fields.Item("StateName").Value) Then
  loc_1755C0D:     var_130 = var_9C.Fields.Item("CheckIn").Value
  loc_1755C18:     var_EC = CVar(CLng(0)) 'Long
  loc_1755C5A:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1755C60:       var_DC = CVar(CLng(0)) 'Long
  loc_1755C65:       var_FC = 1
  loc_1755C88:       var_94 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1755C97:     Else
  loc_1755CB9:       var_130 = var_9C.Fields.Item("CheckIn").Value
  loc_1755CC4:       var_EC = CVar(CLng(1)) 'Long
  loc_1755D06:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1755D0C:         var_DC = CVar(CLng(1)) 'Long
  loc_1755D11:         var_FC = 1
  loc_1755D34:         var_94 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1755D43:       Else
  loc_1755D6F:         var_94 = CDate(var_9C.Fields.Item("CheckIn").Value)
  loc_1755D7C:       End If
  loc_1755D7C:     End If
  loc_1755DB8:     If CBool(var_9C.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_1755DDD:       var_130 = var_9C.Fields.Item("CheckOut").Value
  loc_1755DE8:       var_EC = CVar(CLng(1)) 'Long
  loc_1755E2A:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1755E30:         var_DC = CVar(CLng(1)) 'Long
  loc_1755E35:         var_FC = 1
  loc_1755E7E:         var_190 = CVar(CLng(1)) 'Long
  loc_1755E83:         var_1B0 = 1
  loc_1755EBC:         var_234 = CVar(CLng(1)) 'Long
  loc_1755EC1:         var_254 = 1
  loc_1755F0A:         var_224 = IIf((CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_9C.Fields.Item("CheckOut").Value), DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))), CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_1755F67:         var_2A8 = (CVar(var_B4) + (DateDiff("D", var_94, var_224, 1, 1) * var_9C.Fields.Item("Tourist").Value))
  loc_1755F6D:         var_B4 = CLng(CVar(CLng(1)) & (CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_9C.Fields.Item("CheckOut").Value) & " Or (ChkInDt<=" & (DateDiff("D", var_94, var_224, 1, 1) * var_9C.Fields.Item("Tourist").Value))
  loc_1755FA8:       Else
  loc_1756020:         var_180 = (CVar(var_B4) + (DateDiff("D", var_94, CVar(var_9C.Fields.Item("CheckOut")), 1, 1) * var_9C.Fields.Item("Tourist").Value))
  loc_1756026:         var_B4 = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_175603D:       End If
  loc_1756040:     Else
  loc_1756043:       var_DC = CVar(CLng(1)) 'Long
  loc_1756048:       var_FC = 1
  loc_175607D:       If (MemVar_1F950EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_17560DC:         var_180 = (CVar(var_B4) + (DateDiff("D", var_94, CDate(MemVar_1F950EC), 1, 1) * var_9C.Fields.Item("Tourist").Value))
  loc_17560E2:         var_B4 = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_17560FA:       Else
  loc_17560FD:         var_DC = CVar(CLng(1)) 'Long
  loc_1756102:         var_FC = 1
  loc_1756136:         var_4B8 = CStr(Me.FGrid.TextMatrix))
  loc_175616F:         var_268 = var_9C.Fields.Item("Tourist")
  loc_1756183:         var_1D4 = (CVar(var_B4) + (DateDiff("D", var_94, CDate(CDate(var_4B8)), 1, 1) * var_268.Value))
  loc_1756189:         var_B4 = CLng(DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_17561A5:       End If
  loc_17561A5:     End If
  loc_17561D6:     var_130 = (CVar(var_B8) + var_9C.Fields.Item("Tourist").Value)
  loc_17561DC:     var_B8 = CLng(CDate(CDate(var_4B8)))
  loc_17561F0:     var_9C.MoveNext
  loc_1756206:     If (var_9C.EOF = &HFF) Then
  loc_1756209:       GoTo loc_175634A
  loc_175620C:     End If
  loc_175622E:     var_120 = var_9C.Fields.Item("StateName").Value
  loc_1756249:     If CBool(var_120 <> CVar(var_BC)) Then
  loc_1756253:       var_88 = (var_88 + var_B4)
  loc_1756259:       var_DC = var_B4
  loc_1756261:       Proc_6_39_E7D3A0(var_120, var_DC, var_88, var_B8, var_B4, var_120, var_FC)
  loc_1756269:       var_EC = 0
  loc_175627C:       If CBool(Not (var_120 = var_EC)) Then
  loc_1756282:         Set var_4D0 = var_A8 
  loc_1756291:         var_4D0.AddNew var_DC, var_EC
  loc_17562A6:         var_4D0.Collect = "State"
  loc_17562B0:         var_120 = CVar(CStr(var_B8)) 'String
  loc_17562BD:         var_4D0.Collect = "Guest"
  loc_17562CA:         var_120 = CVar(CStr(var_B4)) 'String
  loc_17562CE:         var_DC = "Night"
  loc_17562D7:         var_4D0.Collect = var_DC
  loc_17562EA:         var_4D0.Update var_DC, CVar(var_BC)
  loc_17562F1:         Set var_4D0 = Nothing 
  loc_17562FC:         var_B0 = (var_B0 + var_B8)
  loc_17562FF:       End If
  loc_1756304:       var_B8 = 0
  loc_175630C:       var_B4 = 0
  loc_175630F:     End If
  loc_1756329:     var_1C4 = var_9C.Fields.Item("StateName")
  loc_1756331:     var_120 = var_1C4.Value
  loc_175633A:     var_BC = CStr(var_120)
  loc_1756347:     GoTo loc_1755BAB
  loc_175634A:     ' Referenced from: 1756209
  loc_175634A:   End If
  loc_1756351:   var_88 = (var_88 + var_B4)
  loc_1756357:   var_DC = var_B4
  loc_175635F:   Proc_6_39_E7D3A0(var_120, var_DC, var_88, var_B4, var_B8, var_B0, var_120)
  loc_1756367:   var_EC = 0
  loc_175637A:   If CBool(Not (var_120 = var_EC)) Then
  loc_1756380:     Set var_4D4 = var_A8 
  loc_175638F:     var_4D4.AddNew var_DC, var_EC
  loc_1756397:     var_EC = CVar(var_BC) 'String
  loc_17563A4:     var_4D4.Collect = "State"
  loc_17563AE:     var_120 = CVar(CStr(var_B8)) 'String
  loc_17563BB:     var_4D4.Collect = "Guest"
  loc_17563C8:     var_120 = CVar(CStr(var_B4)) 'String
  loc_17563CC:     var_DC = "Night"
  loc_17563D5:     var_4D4.Collect = var_DC
  loc_17563E8:     var_4D4.Update var_DC, var_EC
  loc_17563EF:     Set var_4D4 = Nothing 
  loc_17563FA:     var_B0 = (var_B0 + var_B8)
  loc_17563FD:   End If
  loc_17563FD:   GoTo loc_1755B99
  loc_1756400: End If
  loc_1756406: global_84 = "Form-5"
  loc_1756410: Call 0.Method_arg_50 (var_4B8, var_B0, var_120, var_120, var_EC, var_120)
  loc_1756418: var_120 = CVar(var_4B8) 'String
  loc_175642D: global_80 = CStr(Ucase(var_120))
  loc_1756462: Set var_110 = var_A8 
  loc_1756469: CreateFieldDefFile(var_110, MemVar_1F950B4 & "\" & global_84 & ".ttx", &HFF, var_EC, var_DC)
  loc_1756494: var_4B8 = MemVar_1F950B4 & "\"
  loc_17564AE: Call 0.Method_arg_1C (var_4B8 & global_84 & ".RPT", var_DC, var_110, var_B4)
  loc_17564B9: MemVar_1F951E8 = var_110
  loc_17564D4: var_DC = CVar(var_110) 'Address
  loc_17564E2: Call 0.Method_arg_64 (var_110, var_DC, var_EC, var_FC)
  loc_17564EA: Call 0.Method_arg_2C (var_120, var_FC)
  loc_17564F8: Call 0.Method_arg_150 (var_DC)
  loc_1756511: Call 0.Method_arg_90 (var_110, var_4C0)
  loc_1756519: Call 0.Method_arg_24 (var_98)
  loc_1756524: For var_4E0 =  To var_4C0: 1 = var_4E0 'Long
  loc_175653C:   Call 0.Method_arg_90 (var_110, var_98)
  loc_1756544:   Call 0.Method_arg_20 (var_1C4)
  loc_175654C:   Call 0.Method_arg_30 (var_4B8)
  loc_1756562:   var_4F0 = Ucase(CVar(var_4B8)) 'Variant
  loc_175657B:   If (var_4F0 = "FROMDATE") Then
  loc_17565C4:     Call 0.Method_arg_90 (var_1C4, var_98, var_268)
  loc_17565CC:     Call 0.Method_arg_20 (1 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(0)))
  loc_17565D4:     Call 0.Method_arg_38 ("'")
  loc_17565F1:   Else
  loc_17565FC:     If (var_4F0 = "TODATE") Then
  loc_1756617:       Set var_110 = Me.FGrid
  loc_1756645:       Call 0.Method_arg_90 (var_1C4, var_98, var_268)
  loc_175664D:       Call 0.Method_arg_20 (1 & CStr(var_110.TextMatrix)) & "'", CVar(CLng(1)))
  loc_1756655:       Call 0.Method_arg_38 ("'")
  loc_1756672:     Else
  loc_175667D:       If (var_4F0 = "TITLE") Then
  loc_17566A3:         Call 0.Method_arg_90 (var_110, var_98)
  loc_17566AB:         Call 0.Method_arg_20 (var_1C4)
  loc_17566B3:         Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_17566C9:       Else
  loc_17566D4:         If (var_4F0 = "PRINTDATE") Then
  loc_1756703:           Call 0.Method_arg_90 (var_110, var_98)
  loc_175670B:           Call 0.Method_arg_20 (var_1C4)
  loc_1756713:           Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F950EC) & "'"))
  loc_175672C:         Else
  loc_1756737:           If (var_4F0 = "INDIANCHKIN") Then
  loc_175675F:             Call 0.Method_arg_90 (var_110, var_98)
  loc_1756767:             Call 0.Method_arg_20 (var_1C4)
  loc_175676F:             Call 0.Method_arg_38 ("'" & CStr(var_B0) & "'")
  loc_1756787:           Else
  loc_1756792:             If (var_4F0 = "FOREIGNERCHKIN") Then
  loc_17567BA:               Call 0.Method_arg_90 (var_110, var_98)
  loc_17567C2:               Call 0.Method_arg_20 (var_1C4)
  loc_17567CA:               Call 0.Method_arg_38 ("'" & CStr(var_C8) & "'")
  loc_17567DF:             End If
  loc_17567DF:           End If
  loc_17567DF:         End If
  loc_17567DF:       End If
  loc_17567DF:     End If
  loc_17567DF:   End If
  loc_17567E2: Next var_4E0 'Long
  loc_17567EC: Set var_1C4 = Nothing
  loc_1756805: Set var_110 = MemVar_1F951E8 
  loc_1756811: Proc_6_99_1484404(var_110, 0, global_80)
  loc_175681C: MemVar_1F951E8 = var_110
  loc_175682C: global_88 = 0
  loc_1756834: Set var_A8 = Nothing
  loc_175683C: Set var_9C = Nothing
  loc_175683F: Exit Sub
  loc_1756840: ' Referenced from: 1754B6C
  loc_1756840: Proc_6_60_E63754(global_88, &HFF)
  loc_175684A: global_88 = 0
  loc_175684D: Exit Sub
End Sub

Public Sub Proc_66_71_1B93D5C
  'Data Table: 54078C
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_194 As String
  Dim var_D0 As Double
  Dim var_D8 As Double
  Dim var_1F0 As String
  Dim var_1A8 As Variant
  Dim var_1DC As Variant
  Dim var_1EC As Variant
  Dim unk_5407BC As Connection15
  Dim var_9A As Integer
  Dim var_208 As Variant
  Dim var_218 As Variant
  Dim var_238 As Variant
  Dim var_17C As Variant
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_268 As Variant
  Dim var_88 As Variant
  Dim var_DA As Integer
  Dim var_A4 As Double
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_B4 As Variant
  Dim var_28C As Variant
  Dim var_29C As Variant
  Dim var_2BC As Variant
  Dim var_228 As Variant
  Dim var_278 As Variant
  Dim var_2AC As Variant
  Dim var_2DC As Variant
  Dim var_2EC As Variant
  Dim var_30C As Variant
  Dim var_31C As Variant
  Dim var_2CC As Variant
  Dim var_2FC As Variant
  Dim var_340 As Variant
  Dim var_350 As Variant
  Dim var_370 As Variant
  Dim var_388 As Variant
  Dim var_398 As Variant
  Dim var_3B8 As Variant
  Dim var_3D0 As Variant
  Dim var_3E0 As Variant
  Dim var_400 As Variant
  Dim var_418 As Variant
  Dim var_428 As Variant
  Dim var_448 As Variant
  Dim var_470 As Variant
  Dim var_490 As Variant
  Dim var_4B8 As Variant
  Dim var_1D8 As Variant
  Dim var_504 As Variant
  Dim var_3A8 As Variant
  Dim var_3F0 As Variant
  Dim var_86 As Variant
  Dim var_538 As Variant
  Dim var_53C As Variant
  Dim var_540 As Variant
  Dim var_544 As Variant
  Dim var_548 As Variant
  Dim var_54C As Variant
  Dim var_550 As Variant
  Dim var_558 As Fields15
  Dim var_360 As Variant
  Dim var_BC As Variant
  Dim var_E4 As Double
  Dim var_59C As Variant
  Dim var_5A0 As Variant
  Dim var_5A4 As Variant
  Dim var_5A8 As Variant
  Dim var_EC As Double
  Dim var_604 As Variant
  Dim var_5F0 As Variant
  Dim var_5F4 As Fields15
  Dim var_608 As Variant
  Dim var_124 As Recordset15
  Dim var_12C As Recordset15
  Dim var_130 As Recordset15
  Dim var_118 As Double
  Dim var_108 As Double
  Dim var_F8 As Double
  Dim var_100 As Double
  Dim var_970 As Variant
  Dim var_438 As Variant
  Dim var_628 As Variant
  Dim var_658 As Variant
  Dim var_678 As Variant
  Dim var_6B8 As Variant
  Dim var_6D8 As Variant
  Dim var_70C As Variant
  Dim var_72C As Variant
  Dim var_81C As Variant
  Dim var_87C As Variant
  Dim var_89C As Variant
  Dim var_8E4 As Variant
  Dim var_904 As Variant
  Dim var_918 As Variant
  Dim var_928 As Variant
  Dim var_948 As Variant
  Dim var_9B0 As Variant
  Dim var_9D0 As Variant
  Dim var_B54 As Variant
  Dim var_BD8 As Variant
  Dim var_BE8 As Variant
  Dim var_82C As Variant
  Dim var_AF0 As Integer
  Dim var_8C4 As Variant
  Dim var_8F4 As Variant
  Dim var_938 As Variant
  Dim var_9F8 As Variant
  Dim var_B84 As Variant
  Dim var_C14 As Variant
  loc_1B8ED50: On Error Goto loc_1B93D4D
  loc_1B8ED56: var_14C = CVar(CLng(0)) 'Long
  loc_1B8ED5B: var_16C = 1
  loc_1B8ED7E: var_D0 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1B8ED8D: var_14C = CVar(CLng(1)) 'Long
  loc_1B8ED92: var_16C = 1
  loc_1B8EDB5: var_D8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1B8EDCC: var_16C = 1
  loc_1B8EDDF: var_190 = Me.FGrid.TextMatrix)
  loc_1B8EDEA: var_194 = CStr(var_190)
  loc_1B8EE0D: Set var_1DC = Me.FGrid
  loc_1B8EE22: var_F0 = 1 & CStr(var_1DC.TextMatrix))
  loc_1B8EE4A: Set var_180 = Me.Check1
  loc_1B8EE50: Call 0.Method_Proc_66_71_1B93D5C0 (1, var_1DC, var_1F6, CVar(CLng(1)), var_16C & var_194 & " TO ", CVar(CLng(0)), "FROM ")
  loc_1B8EE58: var_D8 = var_1DC.Value
  loc_1B8EE6E: If (CLng(var_1F6) = 0) Then
  loc_1B8EE8C:   Call Proc_66_44_1281678(global_164, 1, CByte(1))
  loc_1B8EE97:   global_148 = var_194
  loc_1B8EEA7:   If (global_88 = 0) Then
  loc_1B8EEAA:     Exit Sub
  loc_1B8EEAB:   End If
  loc_1B8EEAB: End If
  loc_1B8EEB3: var_14C = var_D8
  loc_1B8EEBB: Proc_6_7_F26918(var_190, var_14C, " AND RO.ChkOutDate <=", var_194, var_16C)
  loc_1B8EECE: global_60 = CStr(var_14C & var_190)
  loc_1B8EEE8: Set var_180 = Me.Check1
  loc_1B8EEEE: Call 0.Method_Proc_66_71_1B93D5C0 (1, var_1DC, var_1F6)
  loc_1B8EEF6: var_D0 = var_1DC.Value
  loc_1B8EF0C: If (CLng(var_1F6) = 0) Then
  loc_1B8EF27:   var_C4 = var_C4 & " and R.Code in ( " & global_148 & ") "
  loc_1B8EF49:   var_C8 = var_C8 & " and R.Code not in ( " & global_148 & ") "
  loc_1B8EF53: End If
  loc_1B8EF69: unk_5407BC.Execute "Update PayCharge set GuestProf=GF.GuestProf from GuestFolio GF Where FolioNoDocid=GF.Docid And ISNULL(PayCharge.FolioNoDocid,'')<>''", var_190, -1
  loc_1B8EF74: ' Referenced from: 1B8EF91
  loc_1B8EF7B: If (var_9A < 200) Then
  loc_1B8EF85:   var_C0 = var_C0 & "-"
  loc_1B8EF8E:   var_9A = (var_9A + 1)
  loc_1B8EF91:   GoTo loc_1B8EF74
  loc_1B8EF94: End If
  loc_1B8EF96: Close 1
  loc_1B8EF9F: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1B8EFB7: var_1EC = CVar("Select Distinct RO.DocId,GF.Vdate,(RO.Adult+RO.Children) As Person,RO.FolioNo,RO.ChkInDate as ChkinDT,RO.ChkInTime as ChkinTm,RO.ChkOutDate as CHkOutDt,RO.ChkOutTime as CHkOutTm, ROOMRATE =case when GF.RODISC>0 then (RO.RoomRate-(RO.RoomRate*GF.RODISC/100)) else RO.ROOMRATE end ,RO.RoomNo,GP.Name AS GuestName,GP.BirthDate,Country.Name As Nationality,GF.RODISC,RO.Type,paycharge.Bill_No,Cast(paycharge.Bill_NO As Numeric) As OBill_No,BD.ChkInDAte,BD.ChkInTime,BD.ChkOutDate,BD.ChkOutTime " & "From ((((BillSummary as BD LEFT JOIN RoomOcc AS RO ON BD.FolioNoDocid = RO.Docid) Left Join GuestProf GP ON RO.GuestProf=GP.Code) Left Join Country ON GP.Nationality=Country.Code) Left Join GuestFolio GF ON RO.DOCID=GF.DOCID)  LEFT JOIN PayCharge ON (GF.GuestProf = PayCharge.GuestProf) AND (GF.FolioNo = PayCharge.FolioNo) Where  Paycharge.bill_no is not NULL and BD.BillSettleDate between ") 'String
  loc_1B8EFBD: var_14C = var_D0
  loc_1B8EFC5: Proc_6_7_F26918(var_190, var_14C, var_14C & var_190, var_278, -1)
  loc_1B8EFDD: var_16C = var_D8
  loc_1B8EFE5: Proc_6_7_F26918(var_228, var_16C, var_180 & var_190 & " And ", var_9A)
  loc_1B8EFF1: var_17C = " and isnull(Paycharge.ModeSet,'')<>'S'  and (paycharge.Bill_NO is not null and paycharge.Bill_NO<>'') AND Paycharge.SettleDate is Not NULL and RO.RoomType ='RO' "
  loc_1B8F01A: unk_5407BC.Execute CStr(var_180 & var_228 & var_17C & CVar(global_60) & " ORDER BY OBill_No,RO.Type"), var_16C, var_14C
  loc_1B8F025: Set var_B4 = var_180
  loc_1B8F047: var_88 = 1
  loc_1B8F04C: var_DA = 0
  loc_1B8F052: var_A4 = CDbl(0)
  loc_1B8F057: var_9C = 0
  loc_1B8F05D: var_AC = CDbl(0)
  loc_1B8F074: If (var_B4.RecordCount > 0) Then
  loc_1B8F077:   ' Referenced from: 1B9335E
  loc_1B8F086:   If Not(var_B4.EOF) Then
  loc_1B8F08F:     If (var_86 = 0) Then
  loc_1B8F0BA:       Print 1, Proc_6_128_1026560("L.T.FORM NO. III", "B", 130, var_AC)
  loc_1B8F0F3:       Print 1, Proc_6_128_1026560("(SEE RULES 4 & 16)", "B", 130, var_9C)
  loc_1B8F12C:       Print 1, Proc_6_128_1026560("DAILY ACCOUNT OF OCCUPANCY OF ROOMS & COLLECTIONS OF TAX", "B", 130)
  loc_1B8F14F:       var_194 = "N.B.-(SEPERATE ENTRY SHOULD BE MADE IN RESPECT OF EACH PERSON"
  loc_1B8F165:       Print 1, Proc_6_128_1026560("DAILY ACCOUNT OF OCCUPANCY OF ROOMS & COLLECTIONS OF TAX", "B", 130)
  loc_1B8F1A0:       Print 1, Proc_6_128_1026560("RETURN FOR THE CALENDER DATE " & var_F0, "B", 130)
  loc_1B8F216:       var_1EC = (Space(&H1E) + "NAME AND ADDRESS OF HOTEL : ")
  loc_1B8F21D:       var_218 = ("NAME AND ADDRESS OF HOTEL : " & Space(&H1E) + Trim(MemVar_1F95130))
  loc_1B8F224:       var_238 = (var_180 & Space(&H1E) & " And " + Space(2))
  loc_1B8F22B:       var_258 = (var_180 & Space(2) + Trim(MemVar_1F95134))
  loc_1B8F234:       var_268 = (var_180 & Space(2) & ", " & CVar(global_60) + ", ")
  loc_1B8F23B:       var_28C = (var_180 & Space(2) & ", " & CVar(global_60) & " ORDER BY OBill_No,RO.Type" + Trim(MemVar_1F95138))
  loc_1B8F244:       var_29C = (var_28C + ", ")
  loc_1B8F24B:       var_2BC = (var_29C + Trim(MemVar_1F9513C))
  loc_1B8F251:       Print 1, var_2BC, vbNullString
  loc_1B8F27B:       Print 1, vbNullString
  loc_1B8F297:       var_1EC = (Chr(&HF) + CVar(var_C0))
  loc_1B8F29D:       Print 1, CVar(var_C0) & Chr(&HF)
  loc_1B8F2D9:       var_1EC = (Space(&H87) + "NUMBER OF")
  loc_1B8F2E0:       var_218 = ("NUMBER OF" & Space(&H87) + Space(&H22))
  loc_1B8F2E9:       var_228 = (var_180 & Space(&H87) & " And " + "TOTAL")
  loc_1B8F2F0:       var_248 = (Space(2) + Space(7))
  loc_1B8F2F9:       var_258 = (Trim(MemVar_1F95134) + "REMARKS")
  loc_1B8F2FF:       Print 1, var_180 & Space(2) & ", " & CVar(global_60)
  loc_1B8F37B:       var_1EC = (Space(&H41) + "RATE OF")
  loc_1B8F382:       var_218 = ("RATE OF" & Space(&H41) + Space(7))
  loc_1B8F38B:       var_228 = (var_180 & Space(&H41) & " And " + "A R R I V A L  D E P A R T U R E")
  loc_1B8F392:       var_248 = (Space(2) + Space(4))
  loc_1B8F39B:       var_258 = (Trim(MemVar_1F95134) + "PERIOD")
  loc_1B8F3A2:       var_278 = (var_180 & Space(2) & ", " & CVar(global_60) + Space(2))
  loc_1B8F3AB:       var_28C = (Trim(MemVar_1F95138) + "TOTAL  AMT")
  loc_1B8F3B2:       var_2AC = (var_28C + Space(2))
  loc_1B8F3BB:       var_2BC = (Trim(MemVar_1F9513C) + "OCCUPANTS")
  loc_1B8F3C2:       var_2DC = (var_2BC + Space(&H16))
  loc_1B8F3CB:       var_2EC = (var_2DC + "AMOUNT  OF")
  loc_1B8F3D2:       var_30C = (var_2EC + Space(2))
  loc_1B8F3DB:       var_31C = (var_30C + "LUXURY")
  loc_1B8F3E1:       Print 1, var_31C
  loc_1B8F532:       var_404 = "WHO OCCUP-"
  loc_1B8F548:       var_438 = Space(&H15)
  loc_1B8F58F:       var_208 = (Space(2) + CVar(Proc_6_45_EADFB8("SR.", 3, var_A4)))
  loc_1B8F596:       var_228 = (Space(7) + Space(2))
  loc_1B8F5A0:       var_248 = (Space(2) + CVar(Proc_6_45_EADFB8("NAME OF OCCUPANT", &H10)))
  loc_1B8F5A7:       var_268 = (Trim(MemVar_1F95134) + Space(&HB))
  loc_1B8F5B1:       var_28C = (Space(2) + CVar(Proc_6_45_EADFB8("AGE", 3)))
  loc_1B8F5B8:       var_2AC = (var_28C + Space(2))
  loc_1B8F5C2:       var_2CC = (Trim(MemVar_1F9513C) + CVar(Proc_6_45_EADFB8("NATIONALITY", &HB)))
  loc_1B8F5C9:       var_2EC = (Space(&H16) + Space(1))
  loc_1B8F5D3:       var_30C = (var_2EC + CVar(Proc_6_45_EADFB8("NAME & NO. OF", &HD)))
  loc_1B8F5DC:       var_31C = (var_30C + " ")
  loc_1B8F5E6:       var_350 = (var_31C + CVar(Proc_6_45_EADFB8("CHARGES FOR", &HB)))
  loc_1B8F5ED:       var_370 = (var_350 + Space(&H29))
  loc_1B8F5F7:       var_398 = (var_370 + CVar(Proc_6_45_EADFB8("OF", 2)))
  loc_1B8F5FE:       var_3B8 = (var_398 + Space(4))
  loc_1B8F608:       var_3E0 = (var_3B8 + CVar(Proc_6_45_EADFB8("OF CHARGES", &HA)))
  loc_1B8F60F:       var_400 = (var_3E0 + Space(2))
  loc_1B8F619:       var_428 = (var_400 + CVar(Proc_6_45_EADFB8(var_404, &HA)))
  loc_1B8F620:       var_448 = (var_428 + var_438)
  loc_1B8F62A:       var_470 = (var_448 + CVar(Proc_6_45_EADFB8("LUXURY TAX", &HA)))
  loc_1B8F631:       var_490 = (var_470 + Space(4))
  loc_1B8F63B:       var_4B8 = (var_490 + CVar(Proc_6_45_EADFB8("TAX", 3)))
  loc_1B8F641:       Print 1, var_4B8
  loc_1B8F764:       var_1EC = (Space(2) + "NO.")
  loc_1B8F76B:       var_218 = (CVar(Proc_6_45_EADFB8("SR.", 3, var_A4)) + Space(&H2E))
  loc_1B8F774:       var_228 = (Space(2) + "ROOM OCCUPIED")
  loc_1B8F77D:       var_238 = (Space(2) + " ")
  loc_1B8F786:       var_248 = (CVar(Proc_6_45_EADFB8("NAME OF OCCUPANT", &H10)) + "ACCOMODATION")
  loc_1B8F78D:       var_268 = (Trim(MemVar_1F95134) + Space(4))
  loc_1B8F796:       var_278 = (Space(2) + "DATE")
  loc_1B8F79D:       var_29C = (CVar(Proc_6_45_EADFB8("AGE", 3)) + Space(4))
  loc_1B8F7A6:       var_2AC = (Space(2) + "TIME")
  loc_1B8F7AD:       var_2CC = (Trim(MemVar_1F9513C) + Space(5))
  loc_1B8F7B6:       var_2DC = (Space(&H16) + "DATE")
  loc_1B8F7BD:       var_2FC = (Space(1) + Space(4))
  loc_1B8F7C6:       var_30C = (CVar(Proc_6_45_EADFB8("NAME & NO. OF", &HD)) + "TIME")
  loc_1B8F7CD:       var_340 = (var_30C + Space(7))
  loc_1B8F7D6:       var_350 = (CVar(Proc_6_45_EADFB8("CHARGES FOR", &HB)) + "STAY")
  loc_1B8F7DD:       var_370 = (var_350 + Space(2))
  loc_1B8F7E1:       var_504 = "FOR ACCOM-"
  loc_1B8F7E6:       var_388 = (var_370 + var_504)
  loc_1B8F7ED:       var_3A8 = (CVar(Proc_6_45_EADFB8("OF", 2)) + Space(2))
  loc_1B8F7F6:       var_3B8 = (Space(4) + "PIED  THE")
  loc_1B8F7FD:       var_3E0 = (var_3B8 + Space(&H17))
  loc_1B8F806:       var_3F0 = (var_3E0 + "COLLECTED")
  loc_1B8F80D:       var_418 = (Space(2) + Space(2))
  loc_1B8F816:       var_428 = (CVar(Proc_6_45_EADFB8(var_404, &HA)) + "COLLECTED")
  loc_1B8F81C:       Print 1, var_428
  loc_1B8F8A5:       var_1EC = (Space(&H41) + "FOR RESIDENCE")
  loc_1B8F8AC:       var_218 = (CVar(Proc_6_45_EADFB8("SR.", 3, var_A4)) + Space(&H2D))
  loc_1B8F8B5:       var_228 = (Space(2) + "ODATION FOR")
  loc_1B8F8BE:       var_238 = (Space(2) + " ")
  loc_1B8F8C7:       var_248 = (CVar(Proc_6_45_EADFB8("NAME OF OCCUPANT", &H10)) + "ROOM OR")
  loc_1B8F8CE:       var_268 = (Trim(MemVar_1F95134) + Space(4))
  loc_1B8F8D7:       var_278 = (Space(2) + "BILL NO. & DATE")
  loc_1B8F8DE:       var_29C = (CVar(Proc_6_45_EADFB8("AGE", 3)) + Space(6))
  loc_1B8F8E7:       var_2AC = (Space(2) + "FROM EACH")
  loc_1B8F8ED:       Print 1, Trim(MemVar_1F9513C)
  loc_1B8F94C:       var_1EC = (Space(&H41) + "PER DAY PER")
  loc_1B8F953:       var_218 = (CVar(Proc_6_45_EADFB8("SR.", 3, var_A4)) + Space(&H2F))
  loc_1B8F95C:       var_228 = (Space(2) + "RESIDENCE")
  loc_1B8F963:       var_248 = (Space(2) + Space(3))
  loc_1B8F967:       var_16C = "ACCOMODA-"
  loc_1B8F96C:       var_258 = (Trim(MemVar_1F95134) + " ")
  loc_1B8F973:       var_278 = (Space(4) + Space(&H17))
  loc_1B8F97C:       var_28C = (CVar(Proc_6_45_EADFB8("AGE", 3)) + "OCCUPANT")
  loc_1B8F982:       Print 1, Space(6)
  loc_1B8F9C3:       var_1EC = (Space(&H41) + "OCCUPANT")
  loc_1B8F9CA:       var_218 = (CVar(Proc_6_45_EADFB8("SR.", 3, var_A4)) + Space(&H3E))
  loc_1B8F9D3:       var_228 = (Space(2) + "TION IN")
  loc_1B8F9D9:       Print 1, Space(2)
  loc_1B8FA01:       var_1EC = (Space(&H87) + "THE HOTEL")
  loc_1B8FA07:       Print 1, CVar(Proc_6_45_EADFB8("SR.", 3, var_A4))
  loc_1B8FA19:       Print 1, var_C0
  loc_1B8FA25:       var_86 = (var_86 + &H11)
  loc_1B8FA28:     End If
  loc_1B8FA64:     If (var_B4.Fields.Item("Type").Value = "C") Then
  loc_1B8FAAE:       Proc_6_7_F26918(CVar(Proc_6_45_EADFB8("SR.", 3, var_A4)), CVar(var_B4.Fields.Item("ChkInDate")), "sELECT sno FROM ROOMOCC WHERE chkindate=", CVar(Proc_6_45_EADFB8("AGE", 3)), -1, var_548, var_54C)
  loc_1B8FAF6:       var_248 = 0 & CVar(Proc_6_45_EADFB8("SR.", 3, var_A4)) & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" 
  loc_1B8FB32:       unk_5407BC.Execute CStr(var_248 & var_B4.Fields.Item("FolioNo").Value), var_550, Space(6)
  loc_1B8FB3A:       var_86 = var_548.Fields
  loc_1B8FB42:       var_88 = var_54C.Item(var_DA)
  loc_1B8FB4A:        = var_550.Value
  loc_1B8FB89:       If (Space(6) = 1) Then
  loc_1B8FBA0:         var_1EC = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime <= '") 'String
  loc_1B8FC04:         var_238 = CVar(Proc_6_45_EADFB8("SR.", 3, var_A4)) & var_B4.Fields.Item("ChkOutDate").Value & " " & var_B4.Fields.Item("ChkOutTime").Value 
  loc_1B8FC3C:         var_278 = -1 & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), var_238 & "' AND  PC.Bill_No='", Space(1))) 
  loc_1B8FC86:         var_2CC = CVar(Proc_6_45_EADFB8("AGE", 3)) & "' AND PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & CVar(var_C4) & " GROUP By PC.Bill_No " 
  loc_1B8FC94:         unk_5407BC.Execute CStr(var_2CC), var_550, 
  loc_1B8FC9F:         Set var_BC = var_550
  loc_1B8FCDE:       Else
  loc_1B8FD1C:         var_53C = var_B4.Fields.Item("ChkInTime")
  loc_1B8FD30:         var_218 = "hh:nn:ss"
  loc_1B8FD39:         var_208 = CVar(var_53C) 'Address
  loc_1B8FDBB:         var_550 = var_B4.Fields
  loc_1B8FE12:         var_248 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime Between '") 'String
  loc_1B8FE28:         var_258 = var_B4.Fields.Item("ChkInDate").Value & " " & Format(var_208, var_218) & "' AND  PC.Bill_No='" & var_B4.Fields.Item("ChkInDate").Value & " " & Format(var_208, var_218) 
  loc_1B8FE48:         var_2DC = var_258 & "' and '" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1B8FE58:         var_30C = CVar(Proc_6_38_E69628(CVar(var_550.Item("Bill_no")), 1, 1)) 'String
  loc_1B8FE7E:         var_388 = var_2DC & "' AND  PC.Bill_No='" & var_30C & "' AND PC.FOLIONODOCID='" & var_B4.Fields.Item("DocID").Value & "'" & CVar(var_C4) 
  loc_1B8FE95:         unk_5407BC.Execute CStr(var_388 & " GROUP By PC.Bill_No "), Space(4), -1
  loc_1B8FEA0:         Set var_BC = var_5A0
  loc_1B8FEFA:       End If
  loc_1B8FEFD:     Else
  loc_1B8FF03:       var_17C = 0
  loc_1B8FF56:       unk_5407BC.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE fOLIONO=" & var_B4.Fields.Item("FolioNo").Value), var_208, -1
  loc_1B8FF5E:       var_538 = var_538.Fields
  loc_1B8FF66:       var_17C = var_53C.Item(var_53C)
  loc_1B8FF6E:       var_540 = var_540.Value
  loc_1B8FF99:       If (var_218 > 1) Then
  loc_1B8FFEE:         var_218 = "hh:nn:ss"
  loc_1B90040:         var_548 = var_B4.Fields
  loc_1B90048:         var_54C = var_548.Item("DocID")
  loc_1B90069:         var_248 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.BillAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime > '") 'String
  loc_1B90074:         var_1EC = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1B9007F:         var_258 = var_1EC & Format(CVar(var_B4.Fields.Item("ChkInTime")), var_218) & "' AND  PC.Bill_No='" & var_1EC & Format(CVar(var_B4.Fields.Item("ChkInTime")), var_218) 
  loc_1B9009B:         var_2AC = var_258 & "' AND  PC.Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1, 1, var_218)) & "' AND PC.FOLIONODOCID='" 
  loc_1B900A2:         var_2CC = var_2AC & var_54C.Value 
  loc_1B900CC:         unk_5407BC.Execute CStr(var_2CC & "'" & CVar(var_C4) & " GROUP By PC.Bill_No "), var_30C, -1
  loc_1B900D7:         Set var_BC = var_550
  loc_1B9011E:       Else
  loc_1B90132:         var_208 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.BillAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1B9015B:         Proc_6_7_F26918(var_1EC, CVar(var_B4.Fields.Item("ChkInDate")), var_208, var_2CC, -1)
  loc_1B90198:         var_248 = CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), var_548 & var_1EC & " AND  PC.Bill_No='", var_550)) 'String
  loc_1B901CA:         var_278 = var_B4.Fields.Item("DocID").Value
  loc_1B901FC:         unk_5407BC.Execute CStr(var_5A0 & var_248 & "' AND PC.FOLIONODOCID='" & var_278 & "'" & CVar(var_C4) & " GROUP By PC.Bill_No "), 1, 1
  loc_1B90207:         Set var_BC = var_548
  loc_1B9023B:       End If
  loc_1B9023B:     End If
  loc_1B9024F:     If (var_BC.RecordCount > 0) Then
  loc_1B902C6:       If (var_B4.Fields.Item("Type").Value = "C") Then
  loc_1B90310:         Proc_6_7_F26918(var_1EC, CVar(var_B4.Fields.Item("ChkInDate")), "sELECT sno FROM ROOMOCC WHERE chkindate=", var_278, -1, var_548)
  loc_1B90386:         var_268 = var_54C & var_1EC & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("FolioNo").Value 
  loc_1B90394:         unk_5407BC.Execute CStr(var_268), 0, var_550
  loc_1B9039C:         var_28C = var_548.Fields
  loc_1B903A4:          = var_54C.Item(CSng(var_BC.Fields.Item("LuxuryTax").Value))
  loc_1B903AC:          = var_550.Value
  loc_1B903EB:         If (var_28C = 1) Then
  loc_1B9047B:           Proc_6_7_F26918(var_28C, CVar(var_B4.Fields.Item("ChkInDate")))
  loc_1B904A6:           Proc_6_7_F26918(var_2CC, CVar(var_B4.Fields.Item("ChkOutDate")))
  loc_1B90503:           var_59C = 0
  loc_1B90520:           var_248 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime <= '") 'String
  loc_1B90536:           var_258 = var_B4.Fields.Item("ChkOutDate") & var_B4.Fields.Item("ChkOutDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1B90566:           var_30C = CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1)) 'String
  loc_1B90572:           var_340 = var_258 & "' AND PC.VDATE BETWEEN " & var_28C & " AND " & var_2CC & " AND  PC.Bill_No='" & var_30C & "' and PC.FOLIONO=" 
  loc_1B90579:           var_360 = var_340 & var_B4.Fields.Item("FolioNo").Value 
  loc_1B905A3:           unk_5407BC.Execute CStr(var_360 & " and PC.PAYCode in ( '" & CVar(MemVar_1F95070) & "RMCH') GROUP By PC.Bill_No"), Space(4), -1
  loc_1B905AB:           var_5A0 = var_5A0.Fields
  loc_1B905B3:           var_59C = var_5A4.Item(var_5A4)
  loc_1B905BB:           var_5A8 = var_5A8.Value
  loc_1B905C4:           var_EC = CSng(var_3B8)
  loc_1B90625:         Else
  loc_1B90663:           var_53C = var_B4.Fields.Item("ChkInTime")
  loc_1B90677:           var_218 = "hh:nn:ss"
  loc_1B90687:           var_228 = Format(CVar(var_53C), var_218)
  loc_1B90719:           Proc_6_7_F26918(var_30C, CVar(var_B4.Fields.Item("ChkInDate")), 1, 1, 1)
  loc_1B90744:           Proc_6_7_F26918(var_360, CVar(var_B4.Fields.Item("ChkOutDate")), 1)
  loc_1B907A1:           var_604 = 0
  loc_1B907BE:           var_248 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime Between '") 'String
  loc_1B907D4:           var_258 = var_B4.Fields.Item("ChkOutTime") & var_B4.Fields.Item("ChkInDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkInDate").Value & " " & var_228 
  loc_1B907F4:           var_2DC = var_258 & "' and '" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1B90827:           var_3B8 = var_2DC & "' AND PC.VDATE BETWEEN " & var_30C & " AND " & var_360 & " AND  PC.Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), var_EC)) 
  loc_1B9084A:           var_418 = var_3B8 & "' and PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode in ( '" & CVar(MemVar_1F95070) 
  loc_1B90861:           unk_5407BC.Execute CStr(var_418 & "RMCH') GROUP By PC.Bill_No"), var_438, -1
  loc_1B90869:           var_5F0 = var_5F0.Fields
  loc_1B90871:           var_604 = var_5F4.Item(var_5F4)
  loc_1B90879:           var_608 = var_608.Value
  loc_1B90882:           var_EC = CSng(var_448)
  loc_1B908F6:         End If
  loc_1B908F9:       Else
  loc_1B908FF:         var_1A8 = 0
  loc_1B9095B:         unk_5407BC.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE Docid='" & var_B4.Fields.Item("DocID").Value & "'"), var_218, -1
  loc_1B90963:         var_538 = var_538.Fields
  loc_1B9096B:         var_1A8 = var_53C.Item(var_53C)
  loc_1B90973:         var_540 = var_540.Value
  loc_1B909A0:         If (var_228 > 1) Then
  loc_1B90A05:           var_228 = Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss")
  loc_1B90B00:           var_5A8 = var_B4.Fields
  loc_1B90B29:           var_248 = CVar("Select SUM(PC.BillAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime > '") 'String
  loc_1B90B34:           var_1EC = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1B90B3F:           var_258 = var_B4.Fields.Item("FolioNo") & var_1EC & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_1EC & var_228 
  loc_1B90B5B:           var_2AC = var_258 & "' AND  PC.Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1, 1, var_228)) & "' AND PC.FOLIONO=" 
  loc_1B90B70:           var_504 = " and docid not in (Select Docid from paycharge WHERE cast(vdate as varchar(11))+' '+vtime > '"
  loc_1B90B8C:           var_370 = var_2AC & var_B4.Fields.Item("FolioNo").Value & CVar(var_C4) & "' AND PC.VDATE BETWEEN " & var_B4.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1B90BA8:           var_3D0 = var_370 & "' AND  Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1, 1)) & "' AND FOLIONO=" 
  loc_1B90BB8:           var_400 = var_3D0 & var_5A8.Item("FolioNo").Value & " and paycode ='" 
  loc_1B90BD9:           unk_5407BC.Execute CStr(var_400 & CVar(MemVar_1F95078) & "LT' and AMTDR=0) GROUP By PC.Bill_No "), var_438, -1
  loc_1B90BE4:           Set var_124 = var_5F0
  loc_1B90C6A:           If (var_124.RecordCount > 0) Then
  loc_1B90C93:             Proc_6_39_E7D3A0(var_1EC, CVar(var_124.Fields.Item(0)), var_5F0)
  loc_1B90C9C:             var_EC = CSng(var_1EC)
  loc_1B90CAC:           Else
  loc_1B90CAF:             var_EC = CDbl(0)
  loc_1B90CB2:           End If
  loc_1B90CB5:         Else
  loc_1B90CDB:           Proc_6_7_F26918(var_1EC, CVar(var_B4.Fields.Item("ChkInDate")), var_EC, var_EC)
  loc_1B90CF7:           var_53C = var_B4.Fields.Item("Bill_no")
  loc_1B90D25:           var_544 = var_B4.Fields.Item("FolioNo")
  loc_1B90D2D:           var_278 = var_544.Value
  loc_1B90D44:           var_548 = var_B4.Fields
  loc_1B90DD6:           var_5A0 = var_B4.Fields
  loc_1B90DE6:           var_3A8 = var_5A0.Item("FolioNo").Value
  loc_1B90DFF:           var_208 = CVar("Select SUM(PC.billAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1B90E05:           var_218 = var_208 & var_1EC 
  loc_1B90E21:           var_268 = var_218 & " AND  PC.Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_53C), var_EC)) & "' and PC.FOLIONO=" 
  loc_1B90E3F:           var_1D8 = "LT') and docid not in (Select Docid from paycharge WHERE cast(vdate as varchar(11))+' '+vtime > '"
  loc_1B90E5B:           var_340 = var_268 & var_278 & " and PC.PAYCode in ('" & CVar(MemVar_1F95070) & "FolioNo" & var_548.Item("ChkInDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1B90E77:           var_398 = var_340 & "' AND  Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1, 1)) & "' AND FOLIONO=" 
  loc_1B90E91:           var_3E0 = var_398 & var_3A8 & " and paycode ='" & CVar(MemVar_1F95078) 
  loc_1B90EA8:           unk_5407BC.Execute CStr(var_3E0 & "LT' and AMTDR=0)GROUP By PC.Bill_No"), var_400, -1
  loc_1B90EB3:           Set var_12C = var_5A8
  loc_1B90F2F:           If (var_12C.RecordCount > 0) Then
  loc_1B90F58:             Proc_6_39_E7D3A0(var_1EC, CVar(var_12C.Fields.Item("TotalTax")), var_5A8)
  loc_1B90F61:             var_EC = CSng(var_1EC)
  loc_1B90F71:           Else
  loc_1B90F74:             var_EC = CDbl(0)
  loc_1B90F77:           End If
  loc_1B90F77:         End If
  loc_1B90F77:       End If
  loc_1B90F7A:     Else
  loc_1B90F7D:       var_E4 = CDbl(0)
  loc_1B90F86:       var_17C = 0
  loc_1B90FD9:       unk_5407BC.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE fOLIONO=" & var_B4.Fields.Item("FolioNo").Value), var_208, -1
  loc_1B90FE1:       var_538 = var_538.Fields
  loc_1B90FE9:       var_17C = var_53C.Item(var_53C)
  loc_1B90FF1:       var_540 = var_540.Value
  loc_1B9101C:       If (var_218 > 1) Then
  loc_1B91076:         var_208 = CVar("Select Count(*) from PayCharge where PayCode='" & MemVar_1F95070 & "LT' And FolioNO=") & var_B4.Fields.Item("FolioNo").Value 
  loc_1B910AB:         var_238 = CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), var_208 & " and Bill_no='", var_268, -1, var_540, var_544)) 'String
  loc_1B910B7:         var_258 = 0 & CVar(var_B4.Fields.Item("Bill_no")) & "'" 
  loc_1B910C5:         unk_5407BC.Execute CStr(var_258), var_548, var_278
  loc_1B910CD:         var_218 = var_540.Fields
  loc_1B910D5:         var_EC = var_544.Item(var_E4)
  loc_1B910DD:          = var_548.Value
  loc_1B9111A:         If (var_278 = 0) Then
  loc_1B91131:           var_194 = "Select SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  PC.Bill_No='"
  loc_1B91160:           var_1F0 = -1 & Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), var_194, var_258)
  loc_1B91194:           var_218 = CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1, 1) & "' and PC.FOLIONO=") & var_B4.Fields.Item("FolioNo").Value 
  loc_1B911BE:           unk_5407BC.Execute CStr(var_218 & " and PC.PAYCode in ('" & CVar(MemVar_1F95070) & "LT') GROUP By PC.Bill_No"), var_540, 
  loc_1B911C9:           Set var_130 = var_540
  loc_1B91209:           If (var_130.RecordCount > 0) Then
  loc_1B91237:             var_EC = CSng(var_130.Fields.Item(0).Value)
  loc_1B91247:           Else
  loc_1B9124A:             var_EC = CDbl(0)
  loc_1B9124D:           End If
  loc_1B91250:         Else
  loc_1B912ED:           var_548 = var_B4.Fields
  loc_1B912F5:           var_54C = var_548.Item("ChkOutTime")
  loc_1B9132D:           var_550 = var_B4.Fields
  loc_1B9135B:           var_558 = var_B4.Fields
  loc_1B9136B:           var_350 = var_558.Item("FolioNo").Value
  loc_1B91384:           var_248 = CVar("Select SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  cast(vdate as varchar(11))+' '+vtime Between '") 'String
  loc_1B9138F:           var_1EC = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1B9139A:           var_258 = "hh:nn:ss" & " and PC.PAYCode in ('" & CVar(MemVar_1F95070) & "LT') GROUP By PC.Bill_No" & var_1EC & Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1B913B6:           var_2CC = var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_54C), "hh:nn:ss") 
  loc_1B913CD:           var_31C = var_258 & "' and '" & var_2CC & "' AND PC.Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_550.Item("Bill_no")), 1, 1, 1)) 
  loc_1B913F9:           var_398 = var_31C & "' and PC.FOLIONO=" & var_350 & " and PC.PAYCode in ('" & CVar(MemVar_1F95070) & "LT') GROUP By PC.Bill_No" 
  loc_1B91407:           unk_5407BC.Execute CStr(var_398), var_3A8, -1
  loc_1B91412:           Set var_130 = var_5A0
  loc_1B91480:           If (var_130.RecordCount > 0) Then
  loc_1B914AE:             var_EC = CSng(var_130.Fields.Item(0).Value)
  loc_1B914BE:           Else
  loc_1B914C1:             var_EC = CDbl(0)
  loc_1B914C4:           End If
  loc_1B914C4:         End If
  loc_1B914C7:       Else
  loc_1B914DB:         var_208 = CVar("Select SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1B91504:         Proc_6_7_F26918(var_1EC, CVar(var_B4.Fields.Item("ChkInDate")), var_208, var_2CC, -1, var_548)
  loc_1B91541:         var_248 = CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), var_EC & var_1EC & " AND  PC.Bill_No='", var_EC, var_5A0)) 'String
  loc_1B91573:         var_278 = var_B4.Fields.Item("FolioNo").Value
  loc_1B91597:         var_2BC = 1 & var_248 & "' and PC.FOLIONO=" & var_278 & " and PC.PAYCode in ('" & CVar(MemVar_1F95070) & "RMCH') GROUP By PC.Bill_No" 
  loc_1B915A5:         unk_5407BC.Execute CStr(var_2BC), var_EC, var_EC
  loc_1B915B0:         Set var_130 = var_548
  loc_1B915F8:         If (var_130.RecordCount > 0) Then
  loc_1B91626:           var_EC = CSng(var_130.Fields.Item(0).Value)
  loc_1B91636:         Else
  loc_1B91639:           var_EC = CDbl(0)
  loc_1B9163C:         End If
  loc_1B9163C:       End If
  loc_1B9163C:     End If
  loc_1B91643:     If (var_E4 = CDbl(0)) Then
  loc_1B91682:       If (var_B4.Fields.Item("Type").Value = "C") Then
  loc_1B916CC:         Proc_6_7_F26918(var_1EC, CVar(var_B4.Fields.Item("ChkInDate")), "sELECT sno FROM ROOMOCC WHERE chkindate=", var_278, -1, var_548)
  loc_1B91742:         var_268 = var_54C & var_1EC & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("FolioNo").Value 
  loc_1B91750:         unk_5407BC.Execute CStr(var_268), 0, var_550
  loc_1B91760:         var_EC = var_54C.Item(var_EC)
  loc_1B91768:          = var_550.Value
  loc_1B917A7:         If (var_548.Fields = 1) Then
  loc_1B9189E:           var_248 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime <= '") 'String
  loc_1B918B4:           var_258 = var_B4.Fields.Item("Bill_no") & var_B4.Fields.Item("ChkOutDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1B918D7:           var_2CC = var_258 & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1)) 
  loc_1B918FA:           var_31C = var_2CC & "' and PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & " AND PC.PAYCode in ('" & CVar(MemVar_1F95070) 
  loc_1B91911:           unk_5407BC.Execute CStr(var_31C & "RMCH') GROUP By PC.BILL_NO"), var_350, -1
  loc_1B9197E:           If (var_558.RecordCount = 0) Then
  loc_1B91981:             GoTo loc_1B93356
  loc_1B91984:           End If
  loc_1B91987:         Else
  loc_1B919C5:           var_53C = var_B4.Fields.Item("ChkOutTime")
  loc_1B919D9:           var_218 = "hh:nn:ss"
  loc_1B919E2:           var_208 = CVar(var_53C) 'Address
  loc_1B91A8B:           var_558 = var_B4.Fields
  loc_1B91AE2:           var_248 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime between '") 'String
  loc_1B91AF8:           var_258 = var_B4.Fields.Item("ChkOutTime") & var_B4.Fields.Item("ChkOutDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(var_208, var_218) 
  loc_1B91B18:           var_2DC = var_258 & "' and '" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1B91B38:           var_350 = CVar(Proc_6_38_E69628(CVar(var_558.Item("Bill_no")), 1, 1, 1)) 'String
  loc_1B91B44:           var_370 = var_2DC & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & var_350 & "' and PC.FOLIONO=" 
  loc_1B91B67:           var_3D0 = var_370 & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode In ('" & CVar(MemVar_1F95070) & "RMCH') GROUP By PC.BILL_NO" 
  loc_1B91B75:           unk_5407BC.Execute CStr(var_3D0), var_3E0, -1
  loc_1B91B80:           Set var_BC = var_5A8
  loc_1B91BE4:         End If
  loc_1B91BE7:       Else
  loc_1B91BED:         var_17C = 0
  loc_1B91C40:         unk_5407BC.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE fOLIONO=" & var_B4.Fields.Item("FolioNo").Value), var_208, -1
  loc_1B91C48:         var_538 = var_538.Fields
  loc_1B91C50:         var_17C = var_53C.Item(var_53C)
  loc_1B91C58:         var_540 = var_540.Value
  loc_1B91C83:         If (var_218 > 1) Then
  loc_1B91CD8:           var_218 = "hh:nn:ss"
  loc_1B91D51:           var_550 = var_B4.Fields
  loc_1B91D7A:           var_248 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime > '") 'String
  loc_1B91D85:           var_1EC = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1B91D90:           var_258 = var_B4.Fields.Item("Bill_no") & var_1EC & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_1EC & Format(CVar(var_B4.Fields.Item("ChkInTime")), var_218) 
  loc_1B91DB3:           var_2CC = var_258 & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1, 1, var_218)) 
  loc_1B91DC3:           var_2FC = var_2CC & "' and PC.FOLIONO=" & var_550.Item("FolioNo").Value 
  loc_1B91DED:           unk_5407BC.Execute CStr(var_2FC & " AND PC.PAYCode In ('" & CVar(MemVar_1F95070) & "RMCH') GROUP By PC.BILL_NO"), var_350, -1
  loc_1B91DF8:           Set var_BC = var_558
  loc_1B91E49:         Else
  loc_1B91E5D:           var_208 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1B91E86:           Proc_6_7_F26918(var_1EC, CVar(var_B4.Fields.Item("ChkInDate")), var_208, var_2FC, -1)
  loc_1B91EFA:           var_278 = CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), var_550 & var_1EC & " and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='", var_558)) 'String
  loc_1B91F47:           var_2DC = var_5A8 & var_278 & "' and PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode In ('" & CVar(MemVar_1F95070) 
  loc_1B91F5E:           unk_5407BC.Execute CStr(var_2DC & "RMCH') GROUP By PC.BILL_NO"), 1, var_558
  loc_1B91F69:           Set var_BC = var_550
  loc_1B91FA7:         End If
  loc_1B91FA7:       End If
  loc_1B91FBB:       If (var_BC.RecordCount > 0) Then
  loc_1B91FDD:         var_190 = CVar(var_BC.Fields.Item("LuxuryTax")) 'Address
  loc_1B91FE4:         Proc_6_39_E7D3A0(var_1EC)
  loc_1B92001:         var_108 = (var_108 + CSng(var_1EC))
  loc_1B92007:       Else
  loc_1B9200A:         var_118 = CDbl(0)
  loc_1B9200D:       End If
  loc_1B92010:     Else
  loc_1B92017:       var_F8 = (var_F8 + var_EC)
  loc_1B92021:       var_100 = (var_100 + var_E4)
  loc_1B92024:     End If
  loc_1B9204C:     var_11C = Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), var_100, var_F8, var_118)
  loc_1B9205C:     If (var_E4 > CDbl(0)) Then
  loc_1B92065:       var_DA = (var_DA + 1)
  loc_1B92173:       var_30C = IIf((var_B4.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_B4.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1B92479:       var_7EC = IIf((DateDiff("D", CVar(var_B4.Fields.Item("ChkInDate")), CVar(var_B4.Fields.Item("ChkOutDate")), 1, 1) = 0), 1, DateDiff("D", CVar(var_B4.Fields.Item("ChkInDate")), CVar(var_B4.Fields.Item("ChkOutDate")), 1, 1))
  loc_1B924AB:       Proc_6_39_E7D3A0(var_82C, var_EC)
  loc_1B924BF:       var_84C = "0.00"
  loc_1B92638:       var_AF0 = IIf((var_E4 > CDbl(0)), (CVar(var_E4) / IIf((var_B4.Fields.Item("Person").Value = 0), 1, CVar(var_B4.Fields.Item("Person")))), 0)
  loc_1B9268A:       Proc_6_39_E7D3A0(var_B84, var_E4, 1)
  loc_1B9269E:       var_BA4 = "0.00"
  loc_1B926CD:       var_208 = (Space(2) + CVar(Proc_6_52_EAE084(CStr(var_DA), 3, var_DA)))
  loc_1B926D4:       var_228 = (var_208 + Space(2))
  loc_1B926DE:       var_258 = (var_B4.Fields & CVar(Proc_6_52_EAE084(CStr(var_DA), 3, var_DA)) & " and PC.RoomNo='" + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("GuestName")), var_108), &H19)))
  loc_1B926E5:       var_278 = (var_B4.Fields & CVar(Proc_6_52_EAE084(CStr(var_DA), 3, var_DA)) & " and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" + Space(2))
  loc_1B926EF:       var_340 = (var_278 + CVar(Proc_6_52_EAE084(CStr(var_30C), 3)))
  loc_1B926F6:       var_360 = (0 & " AND PC.PAYCode In ('" & CVar(MemVar_1F95070) & "RMCH') GROUP By PC.BILL_NO" + Space(2))
  loc_1B92700:       var_398 = (DateDiff("yyyy", CVar(var_B4.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1) & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & Space(2) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Nationality")), var_118), &HB)))
  loc_1B92707:       var_3B8 = (CVar(var_B4.Fields.Item("Nationality")) & var_B4.Fields.Item("FolioNo").Value + Space(5))
  loc_1B92711:       var_3F0 = (CVar(var_B4.Fields.Item("Nationality")) & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode In ('" & CVar(MemVar_1F95070) + CVar(Proc_6_45_EADFB8(CStr(var_B4.Fields.Item("RoomNo").Value), 5)))
  loc_1B92718:       var_418 = (CVar(Proc_6_45_EADFB8(CStr(var_B4.Fields.Item("RoomNo").Value), 5)) & "LT' and AMTDR=0)GROUP By PC.Bill_No" + Space(8))
  loc_1B92722:       var_448 = (Space(8) & CVar(MemVar_1F95078) + CVar(Proc_6_52_EAE084(CStr(var_B4.Fields.Item("RoomRate").Value), 7)))
  loc_1B92729:       var_470 = (var_448 + Space(4))
  loc_1B92730:       var_4B8 = (var_470 + Format(CVar(var_B4.Fields.Item("ChkInDate")), "DD/MM/YYYY"))
  loc_1B92737:       var_628 = (var_4B8 + Space(2))
  loc_1B92741:       var_658 = (var_628 + CVar(Proc_6_45_EADFB8(CStr(var_B4.Fields.Item("ChkInTime").Value), 5, 1)))
  loc_1B92748:       var_678 = (var_658 + Space(2))
  loc_1B9274F:       var_6B8 = (var_678 + Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY"))
  loc_1B92756:       var_6D8 = (var_6B8 + Space(2))
  loc_1B92760:       var_70C = (var_6D8 + CVar(Proc_6_45_EADFB8(CStr(var_B4.Fields.Item("ChkOutTime").Value), 5, 1)))
  loc_1B92767:       var_72C = (var_70C + Space(2))
  loc_1B92774:       var_81C = (CVar(Proc_6_52_EAE084(CStr(var_7EC), 3, 1)) + Space(3))
  loc_1B9277E:       var_87C = (var_81C + CVar(Proc_6_52_EAE084(CStr(Format(var_82C, var_84C)), 8, 1)))
  loc_1B92785:       var_89C = (var_87C + Space(5))
  loc_1B9278F:       var_8E4 = (var_89C + CVar(Proc_6_52_EAE084(CStr(var_B4.Fields.Item("Person").Value), 5, 1)))
  loc_1B92796:       var_904 = (var_8E4 + Space(4))
  loc_1B927A0:       var_928 = (var_904 + CVar(Proc_6_52_EAE084(var_11C, 8)))
  loc_1B927A7:       var_948 = (var_928 + Space(2))
  loc_1B927AE:       var_9B0 = (var_948 + Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY"))
  loc_1B927B5:       var_9D0 = (var_9B0 + Space(3))
  loc_1B927BF:       var_B44 = (var_9D0 + CVar(Proc_6_52_EAE084(CStr(Format(var_AF0, "0.00")), 8, 1, 1)))
  loc_1B927D0:       var_BD8 = (Space(3) + CVar(Proc_6_52_EAE084(CStr(Format(var_B84, var_BA4)), 8, 1, 1)))
  loc_1B927DA:       Print 1, var_72C & var_B44 & var_BD8
  loc_1B9296B:       var_1EC = (CVar(var_9C) + var_B4.Fields.Item("Person").Value)
  loc_1B92970:       var_9C = CInt(CVar(Proc_6_52_EAE084(CStr(var_DA), 3, var_DA)))
  loc_1B92987:       var_86 = (var_86 + 1)
  loc_1B9298D:     Else
  loc_1B929C4:       If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1B929CD:         var_DA = (var_DA + 1)
  loc_1B92ADB:         var_30C = IIf((var_B4.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_B4.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1B92DE1:         var_7EC = IIf((DateDiff("D", CVar(var_B4.Fields.Item("ChkInDate")), CVar(var_B4.Fields.Item("ChkOutDate")), 1, 1) = 0), 1, DateDiff("D", CVar(var_B4.Fields.Item("ChkInDate")), CVar(var_B4.Fields.Item("ChkOutDate")), 1, 1))
  loc_1B92E0F:         var_82C = CVar((var_118 + var_E4)) 'Double
  loc_1B92E16:         Proc_6_39_E7D3A0(var_84C, var_82C)
  loc_1B92FA3:         var_B10 = IIf((var_E4 > CDbl(0)), (CVar(var_E4) / IIf((var_B4.Fields.Item("Person").Value = 0), 1, CVar(var_B4.Fields.Item("Person")))), 0)
  loc_1B92FF5:         Proc_6_39_E7D3A0(var_BA4, var_E4, 1)
  loc_1B93038:         var_208 = (Space(2) + CVar(Proc_6_52_EAE084(CStr(var_DA), 3, var_DA, 1, CVar(CLng(3)))))
  loc_1B9303F:         var_228 = (var_208 + Space(2))
  loc_1B93049:         var_258 = (var_B4.Fields & CVar(Proc_6_52_EAE084(CStr(var_DA), 3, var_DA, 1, CVar(CLng(3)))) & " and PC.RoomNo='" + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("GuestName")), var_86, var_9C), &H19, 1)))
  loc_1B93050:         var_278 = (var_B4.Fields & CVar(Proc_6_52_EAE084(CStr(var_DA), 3, var_DA, 1, CVar(CLng(3)))) & " and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" + Space(2))
  loc_1B9305A:         var_340 = (var_278 + CVar(Proc_6_52_EAE084(CStr(var_30C), 3)))
  loc_1B93061:         var_360 = (0 & " AND PC.PAYCode In ('" & CVar(MemVar_1F95070) & "RMCH') GROUP By PC.BILL_NO" + Space(2))
  loc_1B9306B:         var_398 = (DateDiff("yyyy", CVar(var_B4.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1) & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & Space(2) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Nationality")), 1), &HB)))
  loc_1B93072:         var_3B8 = (CVar(var_B4.Fields.Item("Nationality")) & var_B4.Fields.Item("FolioNo").Value + Space(5))
  loc_1B9307C:         var_3F0 = (CVar(var_B4.Fields.Item("Nationality")) & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode In ('" & CVar(MemVar_1F95070) + CVar(Proc_6_45_EADFB8(CStr(var_B4.Fields.Item("RoomNo").Value), 5)))
  loc_1B93083:         var_418 = (CVar(Proc_6_45_EADFB8(CStr(var_B4.Fields.Item("RoomNo").Value), 5)) & "LT' and AMTDR=0)GROUP By PC.Bill_No" + Space(8))
  loc_1B9308D:         var_448 = (Space(8) & CVar(MemVar_1F95078) + CVar(Proc_6_52_EAE084(CStr(var_B4.Fields.Item("RoomRate").Value), 7)))
  loc_1B93094:         var_470 = (var_448 + Space(4))
  loc_1B9309B:         var_4B8 = (var_470 + Format(CVar(var_B4.Fields.Item("ChkInDate")), "DD/MM/YYYY"))
  loc_1B930A2:         var_628 = (var_4B8 + Space(2))
  loc_1B930AC:         var_658 = (var_628 + CVar(Proc_6_45_EADFB8(CStr(var_B4.Fields.Item("ChkInTime").Value), 5, 1)))
  loc_1B930B3:         var_678 = (var_658 + Space(2))
  loc_1B930BA:         var_6B8 = (var_678 + Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY"))
  loc_1B930C1:         var_6D8 = (var_6B8 + Space(2))
  loc_1B930CB:         var_70C = (var_6D8 + CVar(Proc_6_45_EADFB8(CStr(var_B4.Fields.Item("ChkOutTime").Value), 5, 1)))
  loc_1B930D2:         var_72C = (var_70C + Space(2))
  loc_1B930DF:         var_81C = (CVar(Proc_6_52_EAE084(CStr(var_7EC), 3, 1)) + Space(3))
  loc_1B930E9:         var_88C = (var_81C + CVar(Proc_6_52_EAE084(CStr(Format(var_84C, "0.00")), 8, 1)))
  loc_1B930F0:         var_8C4 = (Space(5) + Space(5))
  loc_1B930FA:         var_8F4 = (var_B4.Fields.Item("Person").Value + CVar(Proc_6_52_EAE084(CStr(var_B4.Fields.Item("Person").Value), 5, 1)))
  loc_1B93101:         var_918 = (Space(4) + Space(4))
  loc_1B9310B:         var_938 = (CVar(Proc_6_52_EAE084(var_11C, 8)) + CVar(Proc_6_52_EAE084(var_11C, 8)))
  loc_1B93112:         var_970 = (Space(2) + Space(2))
  loc_1B93119:         var_9C0 = (CVar(var_B4.Fields.Item("ChkOutDate")) + Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY"))
  loc_1B93120:         var_9F8 = (Space(3) + Space(3))
  loc_1B9312A:         var_B54 = (var_B4.Fields.Item("Person").Value + CVar(Proc_6_52_EAE084(CStr(Format(var_B10, "0.00")), 8, 1, 1)))
  loc_1B93131:         var_B84 = (var_72C & CVar(Proc_6_52_EAE084(CStr(Format(var_B10, "0.00")), 8, 1, 1)) + Space(3))
  loc_1B9313B:         var_BE8 = (var_B84 + CVar(Proc_6_52_EAE084(CStr(Format(var_BA4, "0.00")), 8, 1, 1)))
  loc_1B9313F:         var_C14 = var_72C & var_72C & CVar(Proc_6_52_EAE084(CStr(Format(var_B10, "0.00")), 8, 1, 1)) & CVar(Proc_6_52_EAE084(CStr(Format(var_BA4, "0.00")), 8, 1, 1)) 
  loc_1B93145:         Print 1, var_C14
  loc_1B932A8:       End If
  loc_1B932A8:     End If
  loc_1B932AF:     var_A4 = (var_A4 + var_E4)
  loc_1B932B5:     var_14C = CVar(CLng(3)) 'Long
  loc_1B932BA:     var_16C = 1
  loc_1B932E9:     If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1B932F3:       If (var_E4 > CDbl(0)) Then
  loc_1B932FD:         var_AC = (var_AC + var_EC)
  loc_1B93303:       Else
  loc_1B9330A:         var_AC = (var_AC + var_118)
  loc_1B9330D:       End If
  loc_1B93310:     Else
  loc_1B93317:       If (var_E4 <> CDbl(0)) Then
  loc_1B93321:         var_AC = (var_AC + var_EC)
  loc_1B93324:       End If
  loc_1B93324:     End If
  loc_1B9332A:     If (var_86 >= &H41) Then
  loc_1B9332F:       var_86 = 0
  loc_1B93338:       var_88 = (var_88 + 1)
  loc_1B9334D:       Print 1, Chr(&HC)
  loc_1B93356:       ' Referenced from: 1B91981
  loc_1B93356:     End If
  loc_1B93359:     var_B4.MoveNext
  loc_1B9335E:     GoTo loc_1B8F077
  loc_1B93361:   End If
  loc_1B93366:   Print 1, var_C0
  loc_1B93372:   var_86 = (var_86 + 1)
  loc_1B9337D:   var_194 = "TOTAL -->"
  loc_1B933B0:   var_14C = var_AC
  loc_1B933B8:   var_228 = Format(var_14C, "0.00")
  loc_1B933E8:   var_278 = Space(5)
  loc_1B9343D:   var_208 = (CVar(Proc_6_45_EADFB8(CStr(Me.FGrid.TextMatrix)), &HA, var_86, var_88, var_86, var_AC, var_AC)) + Space(&H70))
  loc_1B93447:   var_248 = (var_208 + CVar(Proc_6_45_EADFB8(CStr(var_228), &HA, 1, 1, var_AC, var_A4)))
  loc_1B9344E:   var_268 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("GuestName")), var_86, var_9C), &H19, 1)) + Space(4))
  loc_1B93455:   var_28C = (Space(2) + var_278)
  loc_1B9345C:   var_2AC = (var_B4.Fields.Item("BirthDate").Value + Space(&H26))
  loc_1B93463:   var_2DC = CVar(Proc_6_52_EAE084(CStr(Format(var_A4, "0.00")), 8, 1, 1, var_14C)) 'String
  loc_1B93466:   var_2EC = (Date + var_2DC)
  loc_1B9346C:   Print 1, (var_B4.Fields.Item("BirthDate").Value <> vbNullString)
  loc_1B934AE:   var_86 = (var_86 + 1)
  loc_1B934B6:   Print 1, var_C0
  loc_1B934C2:   var_86 = (var_86 + 1)
  loc_1B934D7:   Print 1, Chr(&H12)
  loc_1B934E3:   var_14C = CVar(CLng(2)) 'Long
  loc_1B934E8:   var_16C = 1
  loc_1B934F5:   Set var_180 = Me.FGrid
  loc_1B934FB:   var_190 = var_180.TextMatrix)
  loc_1B93517:   If (CStr(var_190) = "Yes") Then
  loc_1B93523:     If ((var_86 + &HC) >= &H41) Then
  loc_1B93528:       var_86 = 0
  loc_1B93531:       var_88 = (var_88 + 1)
  loc_1B93534:     End If
  loc_1B93534:   End If
  loc_1B9354F:   var_1EC = CVar("Select Sum(BillAmOUNt) from Paycharge where Paycode in ('" & MemVar_1F95070 & "LT') and SettleDate between ") 'String
  loc_1B93555:   var_14C = var_D0
  loc_1B9355D:   Proc_6_7_F26918(var_190, var_14C, var_1EC, var_2DC, -1, var_180, var_88, var_86)
  loc_1B9357D:   Proc_6_7_F26918(var_228, var_D8, var_D8 & var_190 & " and ", var_14C, var_86)
  loc_1B935A1:   var_268 = var_86 & var_228 & " and Docid not in (Select Docid from Paycharge where Paycode in ('" & CVar(MemVar_1F95070) & "LT') and SettleDate between " 
  loc_1B935B0:   Proc_6_7_F26918(var_278, var_D0, var_268, var_A4)
  loc_1B935D0:   Proc_6_7_F26918(Date, var_D8, 1 & var_278 & " and ")
  loc_1B935EF:   unk_5407BC.Execute CStr(1 & Date & " and AmtDr=0)"), var_190, 
  loc_1B935FA:   Set var_130 = var_180
  loc_1B9362D:   var_14C = CVar(CLng(2)) 'Long
  loc_1B93632:   var_16C = 1
  loc_1B93661:   If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1B93669:     Print 1, "LUXURY TAX SUMMARY REPORT "
  loc_1B93674:     Print 1, "-----------------------------------------------------------"
  loc_1B936A9:     var_1EC = ("PARTICULAR" + Space(6))
  loc_1B936B2:     var_208 = (var_1EC + "TOTAL AMT.")
  loc_1B936B9:     var_228 = (var_16C & Space(6) + Space(7))
  loc_1B936C2:     var_238 = (var_228 + "LUX.TAX")
  loc_1B936C9:     var_258 = (var_86 & var_228 + Space(5))
  loc_1B936D2:     var_268 = (var_86 & var_228 & " and Docid not in (Select Docid from Paycharge where Paycode in ('" & CVar(MemVar_1F95070) + "NET AMOUNT")
  loc_1B936D8:     Print 1, var_268
  loc_1B936F8:     Print 1, "-----------------------------------------------------------"
  loc_1B93703:     Print 1, vbNullString
  loc_1B937C0:     var_2CC = CVar((var_108 + var_110)) 'Double
  loc_1B937E9:     var_1EC = ("WITHOUT TAX" + Space(5))
  loc_1B937F3:     var_238 = (var_1EC + CVar(Proc_6_52_EAE084(CStr(Format(var_108, "0.00")), &HA, 1)))
  loc_1B937FA:     var_258 = (var_86 & CVar(Proc_6_52_EAE084(CStr(Format(var_108, "0.00")), &HA, 1)) + Space(4))
  loc_1B93804:     var_29C = (var_86 & CVar(Proc_6_52_EAE084(CStr(Format(var_108, "0.00")), &HA, 1)) & " and Docid not in (Select Docid from Paycharge where Paycode in ('" & CVar(MemVar_1F95070) + CVar(Proc_6_52_EAE084(CStr(Format(var_110, "0.00")), &HA, 1, 1)))
  loc_1B9380B:     var_2BC = (1 & Format(var_110, "0.00") & " and " + Space(5))
  loc_1B93815:     var_30C = (1 & Date + CVar(Proc_6_52_EAE084(CStr(Format(1 & Date & " and AmtDr=0)", "0.00")), &HA, 1, 1)))
  loc_1B9381B:     Print 1, var_30C
  loc_1B9385E:     Print 1, vbNullString
  loc_1B93960:     var_2EC = (var_130.Fields.Item(0).Value + CVar(var_100))
  loc_1B93989:     var_1EC = ("WITH TAX" + Space(8))
  loc_1B93993:     var_248 = (var_1EC + CVar(Proc_6_52_EAE084(CStr(Format(CVar(var_130.Fields.Item(0)), "0.00")), &HA, 1, 1)))
  loc_1B9399A:     var_268 = (Space(4) + Space(4))
  loc_1B939A4:     var_2AC = ("0.00" + CVar(Proc_6_52_EAE084(CStr(Format(var_100, "0.00")), &HA, 1, 1)))
  loc_1B939AB:     var_2CC = (Space(5) + Space(5))
  loc_1B939B5:     var_340 = (1 & Date & " and AmtDr=0)" + CVar(Proc_6_52_EAE084(CStr(Format(Format(1 & Date & " and AmtDr=0)", "0.00"), "0.00")), &HA, 1, 1)))
  loc_1B939BB:     Print 1, "0.00" & " AND PC.PAYCode In ('" & CVar(MemVar_1F95070) & "RMCH') GROUP By PC.BILL_NO"
  loc_1B93A0B:     Print 1, vbNullString
  loc_1B93A16:     Print 1, "-----------------------------------------------------------"
  loc_1B93A4B:     var_208 = var_130.Fields.Item(0).Value
  loc_1B93A6F:     var_218 = (var_208 + CVar(var_108))
  loc_1B93AB9:     var_28C = CVar((var_110 + var_100)) 'Double
  loc_1B93B2D:     var_30C = (CVar(var_108) + var_130.Fields.Item(0).Value)
  loc_1B93B38:     var_31C = (Format(Format(1 & Date & " and AmtDr=0)", "0.00"), "0.00") + CVar(var_110))
  loc_1B93B43:     var_340 = (CVar(Proc_6_52_EAE084(CStr(Format(Format(1 & Date & " and AmtDr=0)", "0.00"), "0.00")), &HA, 1, 1)) + CVar(var_100))
  loc_1B93B4A:     var_360 = Format(var_130.Fields.Item(0).Value & " AND PC.PAYCode In ('" & CVar(MemVar_1F95070) & "RMCH') GROUP By PC.BILL_NO", "0.00")
  loc_1B93B6C:     var_1EC = ("TOTAL" + Space(&HB))
  loc_1B93B76:     var_258 = (var_1EC + CVar(Proc_6_52_EAE084(CStr(Format("0.00", "0.00")), &HA, 1, 1)))
  loc_1B93B7D:     var_278 = (Space(4) + Space(4))
  loc_1B93B87:     var_2CC = ("0.00" + CVar(Proc_6_52_EAE084(CStr(Format(Format(var_100, "0.00"), "0.00")), &HA, 1, 1)))
  loc_1B93B8E:     var_2EC = (1 & Date & " and AmtDr=0)" + Space(5))
  loc_1B93B98:     var_388 = (Format(1 & Date & " and AmtDr=0)", "0.00") + CVar(Proc_6_52_EAE084(CStr(var_360), &HA, 1, 1)))
  loc_1B93B9E:     Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Nationality")), 1), &HB))
  loc_1B93BF8:     Print 1, "-----------------------------------------------------------"
  loc_1B93BFE:   End If
  loc_1B93C10:   Print 1, Chr(&HC)
  loc_1B93C19: End If
  loc_1B93C1B: Close 1
  loc_1B93C4C: If (MsgBox("Do You want to Print Tax Report", &H24, var_1EC, var_208, "0.00") = 6) Then
  loc_1B93C56:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1B93C66:   Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_1B93C71:   Close 1
  loc_1B93C7B:   If (MemVar_1F953BC = "Y") Then
  loc_1B93C97:     var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1B93CA1:   Else
  loc_1B93CBA:     var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1B93CC1:   End If
  loc_1B93CC4: Else
  loc_1B93CCB:   Open "C:\reptmp\SCRBILL.BAT" For Output As 1 Len = &HFF
  loc_1B93CD4:   Print 1, "Edit C:\reptmp\TEXTFILE.TXT"
  loc_1B93CDC:   Close 1
  loc_1B93CE6:   If (MemVar_1F953BC = "Y") Then
  loc_1B93D02:     var_98 = CVar(Shell("C:\reptmp\SCRBILL.PIF", 3)) 'Variant
  loc_1B93D0C:   Else
  loc_1B93D25:     var_98 = CVar(Shell("C:\reptmp\SCRBILL.BAT", 3)) 'Variant
  loc_1B93D2C:   End If
  loc_1B93D2C: End If
  loc_1B93D31: global_88 = 0
  loc_1B93D39: Set var_130 = Nothing
  loc_1B93D41: Set var_B4 = Nothing
  loc_1B93D49: Set var_12C = Nothing
  loc_1B93D4C: Exit Sub
  loc_1B93D4D: ' Referenced from: 1B8ED50
  loc_1B93D4D: Proc_6_60_E63754(global_88, 1)
  loc_1B93D57: global_88 = 0
  loc_1B93D5A: Exit Sub
End Sub

Public Sub Proc_66_72_1CA2C28
  'Data Table: 54078C
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_1AC As String
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_1B0 As String
  Dim var_208 As String
  Dim var_1C0 As Variant
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  Dim var_174 As Variant
  Dim var_220 As Variant
  Dim var_194 As Variant
  Dim var_240 As Variant
  Dim unk_5407BC As Connection15
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_88 As Integer
  Dim var_E6 As Integer
  Dim var_A4 As Double
  Dim var_9C As Integer
  Dim var_AC As Double
  Dim var_C0 As Recordset15
  Dim var_298 As Variant
  Dim var_29C As Variant
  Dim var_2A0 As Variant
  Dim var_2A4 As Variant
  Dim var_2CC As Variant
  Dim var_290 As Variant
  Dim var_2B8 As Variant
  Dim var_2BC As Variant
  Dim var_2D0 As Variant
  Dim var_2B4 As Variant
  Dim var_300 As Variant
  Dim var_310 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_2E0 As Variant
  Dim var_340 As Variant
  Dim var_364 As Variant
  Dim var_3A8 As Variant
  Dim var_350 As Variant
  Dim var_374 As Variant
  Dim var_384 As Variant
  Dim var_3A4 As Variant
  Dim var_3DC As Variant
  Dim var_3FC As Variant
  Dim var_40C As Variant
  Dim var_41C As Variant
  Dim var_42C As Variant
  Dim var_43C As Variant
  Dim var_F8 As Double
  Dim var_124 As Double
  Dim var_C8 As Recordset15
  Dim var_F0 As Double
  Dim var_130 As Recordset15
  Dim var_460 As Variant
  Dim var_464 As Fields15
  Dim var_468 As Variant
  Dim var_AE As Integer
  Dim var_45C As Variant
  Dim var_478 As Variant
  Dim var_4AC As Variant
  Dim var_4CC As Variant
  Dim var_504 As Integer
  Dim var_4F0 As Recordset15
  Dim var_4F4 As Fields15
  Dim var_508 As Field20
  Dim var_138 As Recordset15
  Dim var_140 As Recordset15
  Dim var_354 As Fields15
  Dim var_B8 As Double
  Dim var_114 As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_51C As Recordset15
  Dim var_144 As Recordset15
  Dim var_520 As Recordset15
  Dim var_148 As Recordset15
  Dim var_524 As Recordset15
  Dim var_86 As Integer
  Dim var_528 As Recordset15
  Dim var_52C As Recordset15
  Dim var_530 As Recordset15
  loc_1C9C3CF: var_164 = CVar(CLng(0)) 'Long
  loc_1C9C3D4: var_184 = 1
  loc_1C9C3F7: var_DC = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1C9C406: var_164 = CVar(CLng(1)) 'Long
  loc_1C9C40B: var_184 = 1
  loc_1C9C42E: var_E4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1C9C445: var_184 = 1
  loc_1C9C458: var_1A8 = Me.FGrid.TextMatrix)
  loc_1C9C463: var_1AC = CStr(var_1A8)
  loc_1C9C486: Set var_1F4 = Me.FGrid
  loc_1C9C49B: var_FC = 1 & CStr(var_1F4.TextMatrix))
  loc_1C9C4C3: Set var_198 = Me.Check1
  loc_1C9C4C9: Call 0.Method_Proc_66_72_1CA2C280 (1, var_1F4, var_20E, CVar(CLng(1)), var_184 & var_1AC & " TO ", CVar(CLng(0)), "FROM ")
  loc_1C9C4D1: var_E4 = var_1F4.Value
  loc_1C9C4E7: If (CLng(var_20E) = 0) Then
  loc_1C9C505:   Call Proc_66_44_1281678(global_164, 1, CByte(1))
  loc_1C9C510:   global_148 = var_1AC
  loc_1C9C520:   If (global_88 = 0) Then
  loc_1C9C523:     Exit Sub
  loc_1C9C524:   End If
  loc_1C9C524: End If
  loc_1C9C52C: var_164 = var_E4
  loc_1C9C534: Proc_6_7_F26918(var_1A8, var_164, " AND RO.ChkOutDate <=", var_1AC, var_184)
  loc_1C9C547: global_60 = CStr(var_164 & var_1A8)
  loc_1C9C561: Set var_198 = Me.Check1
  loc_1C9C567: Call 0.Method_Proc_66_72_1CA2C280 (1, var_1F4, var_20E)
  loc_1C9C56F: var_DC = var_1F4.Value
  loc_1C9C585: If (CLng(var_20E) = 0) Then
  loc_1C9C5A0:   var_D0 = var_D0 & " and R.Code in ( " & global_148 & ") "
  loc_1C9C5C2:   var_D4 = var_D4 & " and R.Code not in ( " & global_148 & ") "
  loc_1C9C5CC: End If
  loc_1C9C5D9: var_174 = "Update PayCharge set GuestProf=GF.GuestProf from GuestFolio GF Where FolioNoDocid=GF.Docid And ISNULL(PayCharge.FolioNoDocid,'')<>'' And PayCharge.SettleDate between "
  loc_1C9C5E1: var_164 = var_DC
  loc_1C9C5E9: Proc_6_7_F26918(var_1A8, var_164, var_174, var_250)
  loc_1C9C5F1: var_204 = -1 & var_1A8 
  loc_1C9C5F5: var_184 = " And "
  loc_1C9C609: Proc_6_7_F26918(var_230, var_E4, var_164 & var_1A8 & var_184)
  loc_1C9C611: var_240 = var_198 & var_230 
  loc_1C9C61F: unk_5407BC.Execute CStr(var_240), var_184, var_164
  loc_1C9C641: If (MemVar_1F953B0 = "A") Then
  loc_1C9C658:   var_204 = CVar("Select Distinct RO.DocId,GF.Vdate,GF.GuestProf,(RO.Adult+RO.Children) As Person,RO.FolioNo,RO.ChkInDate,RO.ChkInTime,RO.ChkOutDate,RO.ChkOutTime,IIF(GF.RODISC>0,(RO.RoomRate-(RO.RoomRate*GF.RODISC/100)),RO.ROOMRATE) AS ROOMRATE,RO.RoomNo,GP.Name AS GuestName,GP.BirthDate,GP.Age,Country.Name As Nationality,GF.RODISC,RO.Type,paycharge.Bill_No,BD.ChkInDAte as ChkinDT,BD.ChkInTime as ChkinTm,BD.ChkOutDate as CHkOutDt,BD.ChkOutTime as CHkOutTm " & "From ((((BillSummary as BD LEFT JOIN RoomOcc AS RO ON BD.FolioNo = RO.FolioNo) Left Join GuestProf GP ON RO.GuestProf=GP.Code) Left Join Country ON GP.Nationality=Country.Code) Left Join GuestFolio GF ON RO.DOCID=GF.DOCID)  LEFT JOIN PayCharge ON (GF.GuestProf = PayCharge.GuestProf) AND (GF.FolioNo = PayCharge.FolioNo) Where  Paycharge.bill_no is not NULL and BD.BillSettleDate between ") 'String
  loc_1C9C666:   Proc_6_7_F26918(var_1A8, var_DC, var_DC & var_1A8)
  loc_1C9C686:   Proc_6_7_F26918(var_240, var_E4, var_290 & var_1A8 & " And ")
  loc_1C9C68E:   var_250 = -1 & var_240 
  loc_1C9C692:   var_194 = " and iif(isnull(Paycharge.ModeSet),'',Paycharge.ModeSet)<>'S' AND Paycharge.SettleDate is Not NULL and RO.RoomType ='RO' "
  loc_1C9C6A4:   var_270 = var_250 & var_194 & CVar(global_60) 
  loc_1C9C6BB:   unk_5407BC.Execute CStr(var_270 & " ORDER BY paycharge.Bill_NO,RO.Type"), var_198, 
  loc_1C9C6C6:   Set var_C0 = var_198
  loc_1C9C6E9: Else
  loc_1C9C6F1:   If (MemVar_1F953B0 = "S") Then
  loc_1C9C708:     var_1AC = "Select Distinct RO.DocId,RO.MFolionoDocId,GF.Vdate,GF.GuestProf,Case When IsNull(RO.mFolioNoDocId,'')<>'' Then (Select Sum(Adult+Children) From RoomOccDet Where MFolionoDocId=RO.MFolionoDocId) Else (RO.Adult+RO.Children) End As Person,RO.FolioNo,Case When RO.SNO=(Select Min(SNo) From RoomOccDet Where Docid=RO.DocId) Then RO.ChkInDt Else (Select Top 1 ChkOutDate From RoomOcc Where DocId=RO.DocId And ChngDate<RO.ChngDate Order By Sno Desc)End As ChkInDate,Case When RO.SNO=(Select Min(SNo) From RoomOccDet Where Docid=RO.DocId) Then RO.ChkInTm Else (Select Top 1 ChkOutTime From RoomOcc Where DocId=RO.DocId And ChngDate<RO.ChngDate Order By Sno Desc) End As ChkInTime,RO.ChkOutDate,RO.ChkOutTime, " & "ROOMRATE =case when GF.RODISC>0 then (RO.RoomRate-(RO.RoomRate*GF.RODISC/100)) else RO.ROOMRATE end ,RO.RoomNo,RO.RRTaxInc,RO.RRServiceChrg,GP.ConPrefix,GP.Name AS GuestName,GP.BirthDate,GP.Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality,GF.RODISC,RO.Type,paycharge.Bill_No,Cast(paycharge.Bill_NO As INTEGER) As OBill_No,RO.ChkinDT,RO.ChkinTm,RO.CHkOutDt,RO.CHkOutTm "
  loc_1C9C70F:     var_1B0 = CStr(var_270 & " ORDER BY paycharge.Bill_NO,RO.Type") & "From ((((BillSummary as BD LEFT JOIN RoomOccDet AS RO ON BD.FolioNoDocid = RO.Docid AND RO.RoomType ='RO' "
  loc_1C9C720:     var_204 = CVar(var_1B0 & global_60 & " AND BD.BillSettleDate Between ") 'String
  loc_1C9C72E:     Proc_6_7_F26918(var_1A8, var_DC, var_204)
  loc_1C9C74E:     Proc_6_7_F26918(var_240, var_E4, var_270 & var_1A8 & " And ")
  loc_1C9C756:     var_250 = -1 & var_240 
  loc_1C9C75A:     var_194 = ") Left Join GuestProf GP ON RO.GuestProf=GP.Code) Left Join Country ON GP.Nationality=Country.Code) Left Join GuestFolio GF ON RO.DOCID=GF.DOCID) LEFT JOIN PayCharge ON (GF.GuestProf = PayCharge.GuestProf) AND (GF.DocId = PayCharge.FolioNoDocId) AND IsNull(Paycharge.bill_no,'')<>'' And IsNull(Paycharge.ModeSet,'')<>'S' AND Paycharge.SettleDate IS NOT NULL ORDER BY OBill_No,RO.Type"
  loc_1C9C76D:     unk_5407BC.Execute CStr(var_250 & var_194), var_198, 
  loc_1C9C778:     Set var_C0 = var_198
  loc_1C9C79C:   End If
  loc_1C9C79C: End If
  loc_1C9C79E: var_88 = 1
  loc_1C9C7A3: var_E6 = 0
  loc_1C9C7A9: var_A4 = CDbl(0)
  loc_1C9C7AE: var_9C = 0
  loc_1C9C7B4: var_AC = CDbl(0)
  loc_1C9C7CB: If (var_C0.RecordCount > 0) Then
  loc_1C9C7DB:   Call Proc_66_55_118430C(New)
  loc_1C9C7E3:   Set var_13C = var_198
  loc_1C9C7E6:   ' Referenced from: 1CA2389
  loc_1C9C7F5:   If Not(Me.Recordset15.EOF) Then
  loc_1C9C884:     var_250 = (var_C0.Fields.Item("Type").Value = "C") And (var_C0.Fields.Item("mFolioNoDocid").Value <> var_C0.Fields.Item("DocID").Value)
  loc_1C9C8A2:     If CBool(var_250) Then
  loc_1C9C8EC:       Proc_6_7_F26918(var_204, CVar(var_C0.Fields.Item("ChkInDate")), "sELECT Min(Sno) FROM ROOMOCC WHERE chkindate=", var_2B4, -1, var_2B8, var_2BC)
  loc_1C9C962:       var_280 = 0 & var_204 & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DocId='" & var_C0.Fields.Item("DocID").Value 
  loc_1C9C979:       unk_5407BC.Execute CStr(var_280 & "'"), var_2D0, var_2E0
  loc_1C9C981:       var_198 = var_2B8.Fields
  loc_1C9C989:       var_9C = var_2BC.Item(var_AC)
  loc_1C9C991:       var_A4 = var_2D0.Value
  loc_1C9C9D2:       If (var_2E0 = 1) Then
  loc_1C9C9E9:         var_204 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1C9CA56:         var_260 = var_204 & var_C0.Fields.Item("ChkOutDate").Value & " " & var_C0.Fields.Item("ChkOutTime").Value & "',120) AND  PC.Bill_No='" 
  loc_1C9CA85:         var_290 = -1 & CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), var_260, var_350)) 
  loc_1C9CABC:         var_300 = CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), var_260, var_350)) & "'" & "' AND PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value 
  loc_1C9CAE6:         unk_5407BC.Execute CStr(var_300 & "'" & CVar(var_D0) & " GROUP By PC.Bill_No "), var_2D0, 
  loc_1C9CAF1:         Set var_C8 = var_2D0
  loc_1C9CB32:       Else
  loc_1C9CB70:         var_29C = var_C0.Fields.Item("ChkInTime")
  loc_1C9CB84:         var_230 = "hh:nn:ss"
  loc_1C9CB94:         var_240 = Format(CVar(var_29C), var_230)
  loc_1C9CC66:         var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1C9CC9C:         var_330 = var_260 & var_C0.Fields.Item("ChkInDate").Value & " " & var_240 & "',120) and Convert(datetime,'" & var_C0.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1C9CCAC:         var_374 = CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), 1, 1)) 'String
  loc_1C9CCC8:         var_3FC = var_330 & "',120) AND  PC.Bill_No='" & var_374 & "' AND PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value & "'" 
  loc_1C9CCD2:         var_41C = var_3FC & CVar(var_D0) 
  loc_1C9CCDB:         var_43C = var_41C & " GROUP By PC.Bill_No " 
  loc_1C9CCE9:         unk_5407BC.Execute CStr(var_43C), var_45C, -1
  loc_1C9CCF4:         Set var_C8 = var_460
  loc_1C9CD4E:       End If
  loc_1C9CD51:     Else
  loc_1C9CD57:       var_1C0 = 0
  loc_1C9CDB3:       unk_5407BC.Execute CStr("sELECT COUNT(*) FROM ROomOccDet WHERE DocId='" & var_C0.Fields.Item("DocID").Value & "'"), var_230, -1
  loc_1C9CDBB:       var_298 = var_298.Fields
  loc_1C9CDC3:       var_1C0 = var_29C.Item(var_29C)
  loc_1C9CDCB:       var_2A0 = var_2A0.Value
  loc_1C9CE21:       var_2D0 = var_C0.Fields.Item("DocID")
  loc_1C9CE64:       If CBool((var_240 > 1) And (var_C0.Fields.Item("mFolioNoDocid").Value <> var_2D0.Value)) Then
  loc_1C9CEC9:         var_240 = Format(CVar(var_C0.Fields.Item("ChkInTime")), "hh:nn:ss")
  loc_1C9CEDD:         var_2A0 = var_C0.Fields
  loc_1C9CF0B:         var_2B8 = var_C0.Fields
  loc_1C9CF13:         var_2BC = var_2B8.Item("DocID")
  loc_1C9CF34:         var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.BillAmount END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.BillAmount END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1C9CF4A:         var_270 = var_2D0.Value & var_C0.Fields.Item("ChkInDate").Value & " " & var_240 
  loc_1C9CF53:         var_280 = var_270 & "',120) AND  PC.Bill_No='" 
  loc_1C9CF5D:         var_2E0 = var_280 & CVar(Proc_6_38_E69628(CVar(var_2A0.Item("Bill_no")), 1, 1, var_240)) 
  loc_1C9CF6D:         var_320 = var_2E0 & "' AND PC.FOLIONODOCID='" & var_2BC.Value 
  loc_1C9CF97:         unk_5407BC.Execute CStr(var_320 & "'" & CVar(var_D0) & " GROUP By PC.Bill_No "), var_374, -1
  loc_1C9CFA2:         Set var_C8 = var_2D0
  loc_1C9CFE9:       Else
  loc_1C9D025:         If CBool(var_C0.Fields.Item("Type").Value <> "C") Then
  loc_1C9D090:           If (var_C0.Fields.Item("mFolioNoDocid").Value = var_C0.Fields.Item("DocID").Value) Then
  loc_1C9D0A7:             var_1AC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.BillAmount END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.BillAmount END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1C9D0D2:             var_1B0 = Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), CStr(var_320 & "'" & CVar(var_D0) & " GROUP By PC.Bill_No "), var_270, -1, var_2A0)
  loc_1C9D0DD:             var_220 = CVar(var_2D0 & Proc_6_38_E69628(CVar(var_2A0.Item("Bill_no")), 1, 1, var_240) & "' AND PC.FOLIONODOCID='") 'String
  loc_1C9D134:             unk_5407BC.Execute CStr(var_220 & var_C0.Fields.Item("DocID").Value & "'" & CVar(var_D0) & " GROUP By PC.Bill_No "), var_460, 1
  loc_1C9D13F:             Set var_C8 = var_2A0
  loc_1C9D16E:           Else
  loc_1C9D182:             var_1AC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.BillAmount END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.BillAmount END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1C9D1AD:             var_1B0 = Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), CStr(var_320 & "'" & CVar(var_D0) & " GROUP By PC.Bill_No "), var_2E0)
  loc_1C9D1B1:             var_208 = -1 & var_1B0
  loc_1C9D1B8:             var_220 = CVar(var_2D0 & Proc_6_38_E69628(CVar(var_2A0.Item("Bill_no")), 1, 1, var_220 & var_C0.Fields.Item("DocID").Value & "'") & "' AND PC.FOLIONODOCID='") 'String
  loc_1C9D1DD:             var_204 = var_C0.Fields.Item("DocID").Value
  loc_1C9D22B:             Proc_6_7_F26918(var_280, CVar(var_C0.Fields.Item("ChkInDate")), var_220 & var_204 & "'" & CVar(var_D0) & " AND vdate >= ")
  loc_1C9D23C:             var_2B4 = var_2B8 & var_280 & " GROUP By PC.Bill_No " 
  loc_1C9D24A:             unk_5407BC.Execute CStr(var_2B4), 1, 
  loc_1C9D255:             Set var_C8 = var_2B8
  loc_1C9D28B:           End If
  loc_1C9D28B:         End If
  loc_1C9D28B:       End If
  loc_1C9D28B:     End If
  loc_1C9D28E:     var_F8 = CDbl(0)
  loc_1C9D294:     var_124 = CDbl(0)
  loc_1C9D29E:     If (var_C8 Is Nothing) Then
  loc_1C9D2A1:       GoTo loc_1CA2381
  loc_1C9D2A4:     End If
  loc_1C9D2B8:     If (var_C8.RecordCount > 0) Then
  loc_1C9D2E6:       var_F0 = CSng(var_C8.Fields.Item("LuxuryTax").Value)
  loc_1C9D37F:       var_250 = (var_C0.Fields.Item("Type").Value = "C") And (var_C0.Fields.Item("mFolioNoDocid").Value <> var_C0.Fields.Item("DocID").Value)
  loc_1C9D39D:       If CBool(var_250) Then
  loc_1C9D3E7:         Proc_6_7_F26918(var_204, CVar(var_C0.Fields.Item("ChkInDate")), "sELECT Min(Sno) FROM ROOMOCC WHERE chkindate=", var_2B4, -1, var_2B8, var_2BC)
  loc_1C9D45D:         var_280 = 0 & var_204 & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("DocID").Value 
  loc_1C9D474:         unk_5407BC.Execute CStr(var_280 & "'"), var_2D0, var_2E0
  loc_1C9D47C:         var_F0 = var_2B8.Fields
  loc_1C9D484:         var_F8 = var_2BC.Item(var_124)
  loc_1C9D48C:          = var_2D0.Value
  loc_1C9D4CD:         If (var_2E0 = 1) Then
  loc_1C9D522:           var_230 = "hh:nn:ss"
  loc_1C9D55D:           Proc_6_7_F26918(var_2B4, CVar(var_C0.Fields.Item("ChkInDate")))
  loc_1C9D588:           Proc_6_7_F26918(var_320, CVar(var_C0.Fields.Item("ChkOutDate")))
  loc_1C9D5F3:           var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1C9D5FE:           var_204 = var_C0.Fields.Item("ChkOutDate").Value & " " 
  loc_1C9D609:           var_270 = 0 & var_204 & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_204 & Format(CVar(var_C0.Fields.Item("ChkOutTime")), var_230) 
  loc_1C9D63C:           var_384 = var_270 & "',120) AND PC.VDATE BETWEEN " & var_2B4 & " AND " & var_320 & " AND  PC.Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), 1)) 
  loc_1C9D655:           var_3FC = var_384 & "' and PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No" 
  loc_1C9D663:           unk_5407BC.Execute CStr(var_3FC), var_41C, -1
  loc_1C9D66E:           Set var_130 = var_460
  loc_1C9D6D6:           If (var_130.RecordCount > 0) Then
  loc_1C9D6FF:             Proc_6_39_E7D3A0(var_204, CVar(var_130.Fields.Item("LuxuryTax")))
  loc_1C9D73B:             Proc_6_39_E7D3A0(var_204, CVar(var_130.Fields.Item("LuxuryTax")), CSng(var_204))
  loc_1C9D769:             Proc_6_39_E7D3A0(var_230, CVar(var_C8.Fields.Item("TotalTax")), var_204)
  loc_1C9D785:             If (var_460 > var_230) Then
  loc_1C9D7AE:               Proc_6_39_E7D3A0(var_204, CVar(var_130.Fields.Item("LuxuryTax")))
  loc_1C9D7DC:               Proc_6_39_E7D3A0(var_230, CVar(var_C8.Fields.Item("TotalTax")))
  loc_1C9D7E4:               var_240 = (var_204 - var_230)
  loc_1C9D7E9:               var_124 = CSng(Format(CVar(var_C0.Fields.Item("ChkOutTime")), var_230))
  loc_1C9D801:             Else
  loc_1C9D804:               var_124 = CDbl(0)
  loc_1C9D807:             End If
  loc_1C9D894:             Proc_6_7_F26918(var_2B4, CVar(var_C0.Fields.Item("ChkInDate")), 1, 1)
  loc_1C9D8BF:             Proc_6_7_F26918(var_320, CVar(var_C0.Fields.Item("ChkOutDate")), var_124)
  loc_1C9D91C:             var_40C = 0
  loc_1C9D939:             var_260 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1C9D94F:             var_270 = 0 & var_C0.Fields.Item("ChkOutDate").Value & " " & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1C9D97F:             var_374 = CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), var_124)) 'String
  loc_1C9D98B:             var_3A4 = var_270 & "',120) AND PC.VDATE BETWEEN " & var_2B4 & " AND " & var_320 & " AND  PC.Bill_No='" & var_374 & "' and PC.FOLIONODOCID='" 
  loc_1C9D992:             var_3DC = var_3A4 & var_C0.Fields.Item("DocID").Value 
  loc_1C9D9A9:             unk_5407BC.Execute CStr(var_3DC & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_41C, -1
  loc_1C9D9B1:             var_460 = var_460.Fields
  loc_1C9D9B9:             var_40C = var_464.Item(var_464)
  loc_1C9D9C1:             var_468 = var_468.Value
  loc_1C9D9CA:             var_AE = CInt(var_43C)
  loc_1C9DA27:           Else
  loc_1C9DA2A:             var_F8 = CDbl(0)
  loc_1C9DA2F:             var_AE = 0
  loc_1C9DA32:           End If
  loc_1C9DA35:         Else
  loc_1C9DA87:           var_230 = "hh:nn:ss"
  loc_1C9DB29:           Proc_6_7_F26918(var_374, CVar(var_C0.Fields.Item("ChkInDate")), 1, 1, 1, 1)
  loc_1C9DB54:           Proc_6_7_F26918(var_3DC, CVar(var_C0.Fields.Item("ChkOutDate")), var_AE, var_F8)
  loc_1C9DB78:           var_43C = CVar(var_C0.Fields.Item("Bill_no")) 'Address
  loc_1C9DBBF:           var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1C9DBCA:           var_204 = var_C0.Fields.Item("ChkInDate").Value & " " 
  loc_1C9DBD5:           var_270 = 0 & var_204 & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_204 & Format(CVar(var_C0.Fields.Item("ChkInTime")), var_230) 
  loc_1C9DBF5:           var_330 = var_270 & "',120) and Convert(datetime,'" & var_C0.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1C9DC28:           var_478 = var_330 & "',120) AND PC.VDATE BETWEEN " & var_374 & " AND " & var_3DC & " AND  PC.Bill_No='" & CVar(Proc_6_38_E69628(var_43C, var_AE)) 
  loc_1C9DC41:           var_4CC = var_478 & "' and PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No" 
  loc_1C9DC4F:           unk_5407BC.Execute CStr(var_4CC), var_4EC, -1
  loc_1C9DC5A:           Set var_130 = var_4F0
  loc_1C9DCD8:           If (var_130.RecordCount > 0) Then
  loc_1C9DD01:             Proc_6_39_E7D3A0(var_204, CVar(var_130.Fields.Item("LuxuryTax")), var_4F0)
  loc_1C9DD3D:             Proc_6_39_E7D3A0(var_204, CVar(var_130.Fields.Item("LuxuryTax")), CSng(var_204))
  loc_1C9DD6B:             Proc_6_39_E7D3A0(var_230, CVar(var_C8.Fields.Item("TotalTax")), var_204)
  loc_1C9DD73:             var_240 = (var_43C - var_230)
  loc_1C9DD8B:             If CBool(Format(CVar(var_C0.Fields.Item("ChkInTime")), var_230)) Then
  loc_1C9DDB4:               Proc_6_39_E7D3A0(var_204, CVar(var_130.Fields.Item("LuxuryTax")))
  loc_1C9DDE2:               Proc_6_39_E7D3A0(var_230, CVar(var_C8.Fields.Item("TotalTax")))
  loc_1C9DDEA:               var_240 = (var_204 - var_230)
  loc_1C9DDEF:               var_124 = CSng(Format(CVar(var_C0.Fields.Item("ChkInTime")), var_230))
  loc_1C9DE07:             Else
  loc_1C9DE0A:               var_124 = CDbl(0)
  loc_1C9DE0D:             End If
  loc_1C9DE4B:             var_29C = var_C0.Fields.Item("ChkInTime")
  loc_1C9DE5F:             var_230 = "hh:nn:ss"
  loc_1C9DE6F:             var_240 = Format(CVar(var_29C), var_230)
  loc_1C9DF01:             Proc_6_7_F26918(var_374, CVar(var_C0.Fields.Item("ChkInDate")), 1, 1, 1)
  loc_1C9DF2C:             Proc_6_7_F26918(var_3DC, CVar(var_C0.Fields.Item("ChkOutDate")), 1)
  loc_1C9DF40:             var_460 = var_C0.Fields
  loc_1C9DF48:             var_464 = var_460.Item("Bill_no")
  loc_1C9DF89:             var_504 = 0
  loc_1C9DFA6:             var_260 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1C9DFBC:             var_270 = 0 & var_C0.Fields.Item("ChkInDate").Value & " " & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("ChkInDate").Value & " " & var_240 
  loc_1C9DFDC:             var_330 = var_270 & "',120) and Convert(datetime,'" & var_C0.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1C9DFE5:             var_350 = var_330 & "',120) AND PC.VDATE BETWEEN " 
  loc_1C9E00C:             var_45C = CVar(Proc_6_38_E69628(CVar(var_464), var_124)) 'String
  loc_1C9E01F:             var_4AC = var_350 & var_374 & " AND " & var_3DC & " AND  PC.Bill_No='" & var_45C & "' and PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value 
  loc_1C9E036:             unk_5407BC.Execute CStr(var_4AC & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_4EC, -1
  loc_1C9E03E:             var_4F0 = var_4F0.Fields
  loc_1C9E046:             var_504 = var_4F4.Item(var_4F4)
  loc_1C9E04E:             var_508 = var_508.Value
  loc_1C9E057:             var_AE = CInt(var_518)
  loc_1C9E0CA:           Else
  loc_1C9E0CD:             var_F8 = CDbl(0)
  loc_1C9E0D2:             var_AE = 0
  loc_1C9E0D5:           End If
  loc_1C9E0D5:         End If
  loc_1C9E0D8:       Else
  loc_1C9E0DE:         var_1C0 = 0
  loc_1C9E13A:         unk_5407BC.Execute CStr("sELECT COUNT(*) FROM RoomOccDet WHERE Docid='" & var_C0.Fields.Item("DocID").Value & "'"), var_230, -1
  loc_1C9E142:         var_298 = var_298.Fields
  loc_1C9E14A:         var_1C0 = var_29C.Item(var_29C)
  loc_1C9E152:         var_2A0 = var_2A0.Value
  loc_1C9E1A8:         var_2D0 = var_C0.Fields.Item("DocID")
  loc_1C9E1EB:         If CBool((var_240 > 1) And (var_C0.Fields.Item("mFolioNoDocid").Value <> var_2D0.Value)) Then
  loc_1C9E240:           var_230 = "hh:nn:ss"
  loc_1C9E250:           var_240 = Format(CVar(var_C0.Fields.Item("ChkInTime")), var_230)
  loc_1C9E264:           var_2A0 = var_C0.Fields
  loc_1C9E274:           var_290 = CVar(var_2A0.Item("Bill_no")) 'Address
  loc_1C9E292:           var_2B8 = var_C0.Fields
  loc_1C9E2BB:           var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS TotalTax,Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(PC.Vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1C9E2C6:           var_204 = var_C0.Fields.Item("ChkInDate").Value & " " 
  loc_1C9E2CD:           var_250 = var_204 & var_240 
  loc_1C9E2ED:           var_300 = var_2D0.Value & var_250 & "',120) AND PC.Bill_No='" & CVar(Proc_6_38_E69628(var_290, 1, 1, var_240)) & "' AND PC.FOLIONODOCID='" 
  loc_1C9E30B:           unk_5407BC.Execute CStr(var_300 & var_2B8.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_350, -1
  loc_1C9E316:           Set var_130 = var_2D0
  loc_1C9E36A:           If (var_130.RecordCount > 0) Then
  loc_1C9E393:             Proc_6_39_E7D3A0(var_204, CVar(var_130.Fields.Item("TotalTax")), var_2D0)
  loc_1C9E39C:             var_F8 = CSng(var_204)
  loc_1C9E3CF:             Proc_6_39_E7D3A0(var_204, CVar(var_130.Fields.Item("TotalTax")), var_F8)
  loc_1C9E3FD:             Proc_6_39_E7D3A0(var_230, CVar(var_C8.Fields.Item("TotalTax")), var_204)
  loc_1C9E419:             If (var_AE > var_230) Then
  loc_1C9E442:               Proc_6_39_E7D3A0(var_204, CVar(var_130.Fields.Item("TotalTax")))
  loc_1C9E470:               Proc_6_39_E7D3A0(var_230, CVar(var_C8.Fields.Item("TotalTax")), var_204)
  loc_1C9E478:               var_240 = (var_F8 - var_230)
  loc_1C9E47D:               var_124 = CSng(var_240)
  loc_1C9E495:             Else
  loc_1C9E498:               var_124 = CDbl(0)
  loc_1C9E49B:             End If
  loc_1C9E4C1:             Proc_6_39_E7D3A0(var_204, CVar(var_130.Fields.Item("TotDays")), var_124)
  loc_1C9E4CA:             var_AE = CInt(var_204)
  loc_1C9E4DA:           Else
  loc_1C9E4DD:             var_F8 = CDbl(0)
  loc_1C9E4E2:             var_AE = 0
  loc_1C9E4E5:           End If
  loc_1C9E4E8:         Else
  loc_1C9E524:           If CBool(var_C0.Fields.Item("Type").Value <> "C") Then
  loc_1C9E58F:             If (var_C0.Fields.Item("mFolioNoDocid").Value = var_C0.Fields.Item("DocID").Value) Then
  loc_1C9E5A6:               var_1AC = "Select SUM(PC.AMTDR-PC.AMTCR) AS TotalTax,Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1C9E5D1:               var_1B0 = Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), CStr(var_300 & var_2B8.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_250, -1, var_2A0)
  loc_1C9E609:               var_230 = CVar(var_AE & Proc_6_38_E69628(var_290, 1, 1, var_240) & "' and PC.FOLIONODOCID='") & var_C0.Fields.Item("DocID").Value 
  loc_1C9E620:               unk_5407BC.Execute CStr(var_230 & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_F8, var_AE
  loc_1C9E62B:               Set var_138 = var_2A0
  loc_1C9E656:             Else
  loc_1C9E66A:               var_1AC = "Select SUM(PC.AMTDR-PC.AMTCR) AS TotalTax,Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1C9E695:               var_1B0 = Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), CStr(var_300 & var_2B8.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_290, -1)
  loc_1C9E6A0:               var_220 = CVar(var_2B8 & Proc_6_38_E69628(var_290, 1, 1, var_230 & "' and R.Nature='Room Charge' GROUP By PC.Bill_No") & "' and PC.FOLIONODOCID='") 'String
  loc_1C9E6C5:               var_204 = var_C0.Fields.Item("DocID").Value
  loc_1C9E6CD:               var_230 = var_220 & var_204 
  loc_1C9E700:               Proc_6_7_F26918(var_2D0.Value, CVar(var_C0.Fields.Item("ChkInDate")), var_230 & "' And PC.Vdate >= ")
  loc_1C9E711:               var_280 = var_124 & var_2D0.Value & " And R.Nature='Room Charge' GROUP By PC.Bill_No" 
  loc_1C9E71F:               unk_5407BC.Execute CStr(var_280), var_AE, 
  loc_1C9E72A:               Set var_138 = var_2B8
  loc_1C9E75C:             End If
  loc_1C9E770:             If (var_138.RecordCount > 0) Then
  loc_1C9E792:               var_1A8 = CVar(var_138.Fields.Item("TotalTax")) 'Address
  loc_1C9E799:               Proc_6_39_E7D3A0(var_204)
  loc_1C9E7D5:               Proc_6_39_E7D3A0(var_204, CVar(var_138.Fields.Item("TotalTax")))
  loc_1C9E803:               Proc_6_39_E7D3A0(var_230, CVar(var_C8.Fields.Item("TotalTax")), var_204)
  loc_1C9E81F:               If (CSng(var_204) > var_230) Then
  loc_1C9E848:                 Proc_6_39_E7D3A0(var_204, CVar(var_138.Fields.Item("TotalTax")))
  loc_1C9E867:                 var_29C = var_C8.Fields.Item("TotalTax")
  loc_1C9E876:                 Proc_6_39_E7D3A0(var_230, CVar(var_29C))
  loc_1C9E87E:                 var_240 = (var_204 - var_230)
  loc_1C9E883:                 var_124 = CSng(var_230 & "' And PC.Vdate >= ")
  loc_1C9E89B:               Else
  loc_1C9E89E:                 var_124 = CDbl(0)
  loc_1C9E8A1:               End If
  loc_1C9E8C7:               Proc_6_39_E7D3A0(var_204, CVar(var_138.Fields.Item("TotDays")), var_124)
  loc_1C9E8D0:               var_AE = CInt(var_204)
  loc_1C9E8E0:             Else
  loc_1C9E8E3:               var_F8 = CDbl(0)
  loc_1C9E8E8:               var_AE = 0
  loc_1C9E8EB:             End If
  loc_1C9E8EE:           Else
  loc_1C9E8F1:           Else
  loc_1C9E8F1:           End If
  loc_1C9E8F1:         End If
  loc_1C9E8F4:       Else
  loc_1C9E8F7:         var_F0 = CDbl(0)
  loc_1C9E900:         var_1C0 = 0
  loc_1C9E95C:         unk_5407BC.Execute CStr("sELECT COUNT(*) FROM RoomOcc WHERE DOCID='" & var_C0.Fields.Item("DocID").Value & "'"), var_230, -1
  loc_1C9E964:         var_298 = var_298.Fields
  loc_1C9E96C:         var_1C0 = var_29C.Item(var_29C)
  loc_1C9E974:         var_2A0 = var_2A0.Value
  loc_1C9E998:         var_2A4 = var_C0.Fields
  loc_1C9E9A0:         var_2B8 = var_2A4.Item("mFolioNoDocid")
  loc_1C9E9DE:         var_290 = (var_230 & "' And PC.Vdate >= " > 1) And (var_2B8.Value <> var_C0.Fields.Item("DocID").Value)
  loc_1C9EA0D:         If CBool(var_290) Then
  loc_1C9EA67:           var_220 = CVar("Select Count(*) from PayCharge where PayCode='" & MemVar_1F95070 & "LT' And FOLIONODOCID='") & var_C0.Fields.Item("DocID").Value 
  loc_1C9EA9C:           var_250 = CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), var_220 & "' and Bill_no='", var_280, -1, var_2A0, var_2A4)) 'String
  loc_1C9EAA8:           var_270 = 0 & (var_220 & "' and Bill_no='" & "' And PC.Vdate >= " > 1) & "'" 
  loc_1C9EAB6:           unk_5407BC.Execute CStr(var_270), var_2B8, var_290
  loc_1C9EABE:           var_240 = var_2A0.Fields
  loc_1C9EAC6:           var_AE = var_2A4.Item(var_F0)
  loc_1C9EACE:            = var_2B8.Value
  loc_1C9EB0B:           If (var_290 = 0) Then
  loc_1C9EB22:             var_1AC = "Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  PC.Bill_No='"
  loc_1C9EB4D:             var_1B0 = Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), "Select Count(*) from PayCharge where PayCode='" & MemVar_1F95070, var_270)
  loc_1C9EB51:             var_208 = -1 & var_1B0
  loc_1C9EB58:             var_220 = CVar(var_2B8 & Proc_6_38_E69628(var_290, 1, 1, var_220 & "' and Bill_no='" & "' and R.Nature='Room Charge' GROUP By PC.Bill_No") & "' and PC.FOLIONODOCID='") 'String
  loc_1C9EB7D:             var_204 = var_C0.Fields.Item("DocID").Value
  loc_1C9EBAF:             unk_5407BC.Execute CStr(var_220 & var_204 & "' and PC.PAYCode in ('" & CVar(MemVar_1F95070) & "LT') GROUP By PC.Bill_No"), var_2A0, 
  loc_1C9EBBA:             Set var_140 = var_2A0
  loc_1C9EBFA:             If (var_140.RecordCount > 0) Then
  loc_1C9EC1C:               var_1A8 = CVar(var_140.Fields.Item("TotalTax")) 'Address
  loc_1C9EC23:               Proc_6_39_E7D3A0(var_204)
  loc_1C9EC2C:               var_F8 = CSng(var_204)
  loc_1C9EC3C:             Else
  loc_1C9EC3F:               var_F8 = CDbl(0)
  loc_1C9EC42:             End If
  loc_1C9EC45:           Else
  loc_1C9ECBE:             var_2A0 = var_C0.Fields
  loc_1C9ECCE:             var_290 = var_2A0.Item("ChkOutDate").Value
  loc_1C9ECE2:             var_2B8 = var_C0.Fields
  loc_1C9ECEA:             var_2BC = var_2B8.Item("ChkOutTime")
  loc_1C9ED07:             var_2E0 = CVar(var_2BC) 'Address
  loc_1C9ED22:             var_2D0 = var_C0.Fields
  loc_1C9ED2A:             var_354 = var_2D0.Item("Bill_no")
  loc_1C9ED32:             var_364 = CVar(var_354) 'Address
  loc_1C9ED79:             var_260 = CVar("Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1C9ED84:             var_204 = var_C0.Fields.Item("ChkInDate").Value & " " 
  loc_1C9ED8B:             var_250 = var_204 & Format(CVar(var_C0.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1C9ED8F:             var_270 = CVar(var_C0.Fields.Item("ChkInTime")) & var_204 & "' and PC.PAYCode in ('" & CVar(MemVar_1F95070) & "LT') GROUP By PC.Bill_No" & var_250 
  loc_1C9EDA4:             var_2B4 = var_290 & " " 
  loc_1C9EDB8:             var_350 = var_270 & "',120) and Convert(datetime,'" & var_2B4 & Format(var_2E0, "hh:nn:ss") & "',120) AND PC.Bill_No='" 
  loc_1C9EDD2:             var_3DC = var_350 & CVar(Proc_6_38_E69628(var_364, 1, 1, 1)) & "' and PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value 
  loc_1C9EDE5:             var_41C = var_3DC & "' and PC.PAYCode in ('" & CVar(MemVar_1F95070) 
  loc_1C9EDEE:             var_43C = var_41C & "LT') GROUP By PC.Bill_No" 
  loc_1C9EDFC:             unk_5407BC.Execute CStr(var_43C), var_45C, -1
  loc_1C9EE07:             Set var_140 = var_460
  loc_1C9EE75:             If (var_140.RecordCount > 0) Then
  loc_1C9EE9E:               Proc_6_39_E7D3A0(var_204, CVar(var_140.Fields.Item("TotalTax")), var_460, 1)
  loc_1C9EEA7:               var_F8 = CSng(var_204)
  loc_1C9EEB7:             Else
  loc_1C9EEBA:               var_F8 = CDbl(0)
  loc_1C9EEBD:             End If
  loc_1C9EEBD:           End If
  loc_1C9EEC0:         Else
  loc_1C9EEFC:           If CBool(var_C0.Fields.Item("Type").Value <> "C") Then
  loc_1C9EF67:             If (var_C0.Fields.Item("mFolioNoDocid").Value = var_C0.Fields.Item("DocID").Value) Then
  loc_1C9EF7E:               var_1AC = "Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1C9EFA9:               var_1B0 = Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), CStr(var_43C), var_250, -1, var_2A0)
  loc_1C9EFE1:               var_230 = CVar(var_F8 & Proc_6_38_E69628(var_364, 1, 1, 1) & "' and PC.FOLIONODOCID='") & var_C0.Fields.Item("DocID").Value 
  loc_1C9EFF8:               unk_5407BC.Execute CStr(var_230 & "' And R.Nature='Room Charge' GROUP By PC.Bill_No"), var_F8, var_F8
  loc_1C9F003:               Set var_140 = var_2A0
  loc_1C9F02E:             Else
  loc_1C9F042:               var_1AC = "Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1C9F064:               var_1A8 = CVar(var_C0.Fields.Item("Bill_no")) 'Address
  loc_1C9F06D:               var_1B0 = Proc_6_38_E69628(var_1A8, CStr(var_43C), var_290, -1)
  loc_1C9F09D:               var_204 = var_C0.Fields.Item("DocID").Value
  loc_1C9F0D8:               Proc_6_7_F26918(CVar(var_2B8 & Proc_6_38_E69628(var_364, 1, 1, 1) & "' and PC.FOLIONODOCID='") & var_204 & "' and PC.PAYCode in ('" & CVar(MemVar_1F95070) & "LT') GROUP By PC.Bill_No", CVar(var_C0.Fields.Item("ChkInDate")), CVar(var_2B8 & Proc_6_38_E69628(var_364, 1, 1, 1) & "' and PC.FOLIONODOCID='") & var_204 & "' And vdate >= ")
  loc_1C9F0E0:               var_270 = var_F8 & CVar(var_2B8 & Proc_6_38_E69628(var_364, 1, 1, 1) & "' and PC.FOLIONODOCID='") & var_204 & "' and PC.PAYCode in ('" & CVar(MemVar_1F95070) & "LT') GROUP By PC.Bill_No" 
  loc_1C9F0F7:               unk_5407BC.Execute CStr(var_270 & " And R.Nature='Room Charge' GROUP By PC.Bill_No"), var_1A8, 
  loc_1C9F102:               Set var_140 = var_2B8
  loc_1C9F134:             End If
  loc_1C9F148:             If (var_140.RecordCount > 0) Then
  loc_1C9F16A:               var_1A8 = CVar(var_140.Fields.Item("TotalTax")) 'Address
  loc_1C9F171:               Proc_6_39_E7D3A0(var_204)
  loc_1C9F17A:               var_F8 = CSng(var_204)
  loc_1C9F18A:             Else
  loc_1C9F18D:               var_F8 = CDbl(0)
  loc_1C9F190:             End If
  loc_1C9F190:           End If
  loc_1C9F190:         End If
  loc_1C9F190:       End If
  loc_1C9F197:       If (var_F0 = CDbl(0)) Then
  loc_1C9F226:         var_250 = (var_C0.Fields.Item("Type").Value = "C") And (var_C0.Fields.Item("mFolioNoDocid").Value <> var_C0.Fields.Item("DocID").Value)
  loc_1C9F244:         If CBool(var_250) Then
  loc_1C9F28E:           Proc_6_7_F26918(var_204, CVar(var_C0.Fields.Item("ChkInDate")), "sELECT Min(Sno) FROM ROOMOCC WHERE chkindate=", var_2B4, -1, var_2B8, var_2BC)
  loc_1C9F304:           var_280 = 0 & var_204 & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("DocID").Value 
  loc_1C9F31B:           unk_5407BC.Execute CStr(var_280 & "'"), var_2D0, var_2E0
  loc_1C9F323:           var_F8 = var_2B8.Fields
  loc_1C9F32B:           var_1A8 = var_2BC.Item(var_F8)
  loc_1C9F333:            = var_2D0.Value
  loc_1C9F374:           If (var_2E0 = 1) Then
  loc_1C9F444:             var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1C9F45A:             var_270 = 0 & var_C0.Fields.Item("ChkOutDate").Value & " " & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1C9F476:             var_300 = var_270 & "',120) AND PC.BIll_NO='" & CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), 1)) & "' and PC.FOLIONODOCID='" 
  loc_1C9F494:             unk_5407BC.Execute CStr(var_300 & var_C0.Fields.Item("DocID").Value & "' AND R.Nature='Room Charge' GROUP By PC.BILL_NO"), var_350, -1
  loc_1C9F49F:             Set var_C8 = var_2D0
  loc_1C9F4F3:             If (var_C8.RecordCount > 0) Then
  loc_1C9F5B5:               var_340 = 0
  loc_1C9F5D2:               var_260 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1C9F5E8:               var_270 = 0 & var_C0.Fields.Item("ChkOutDate").Value & " " & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1C9F604:               var_300 = var_270 & "',120) AND PC.BIll_NO='" & CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), 1, 1)) & "' and PC.FOLIONODOCID='" 
  loc_1C9F622:               unk_5407BC.Execute CStr(var_300 & var_C0.Fields.Item("DocID").Value & "' AND R.Nature='Room Charge' and PC.AMTDR>0"), var_350, -1
  loc_1C9F62A:               var_2D0 = var_2D0.Fields
  loc_1C9F632:               var_340 = var_354.Item(var_354)
  loc_1C9F63A:               var_3A8 = var_3A8.Value
  loc_1C9F643:               var_AE = CInt(var_364)
  loc_1C9F689:             End If
  loc_1C9F69D:             If (var_C8.RecordCount = 0) Then
  loc_1C9F6A0:               GoTo loc_1CA2381
  loc_1C9F6A3:             End If
  loc_1C9F6A6:           Else
  loc_1C9F7DA:             var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) between Convert(datetime,'") 'String
  loc_1C9F7F0:             var_270 = 0 & var_C0.Fields.Item("ChkInDate").Value & " " & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1C9F810:             var_330 = var_270 & "',120) and Convert(datetime,'" & var_C0.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1C9F82C:             var_3A4 = var_330 & "',120) AND PC.BIll_NO='" & CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), 1, 1, 1, 1)) & "' and PC.FOLIONODOCID='" 
  loc_1C9F84A:             unk_5407BC.Execute CStr(var_3A4 & var_C0.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.BILL_NO"), var_41C, -1
  loc_1C9F8BF:             If (var_460.RecordCount > 0) Then
  loc_1C9F900:               var_29C = var_C0.Fields.Item("ChkInTime")
  loc_1C9F914:               var_230 = "hh:nn:ss"
  loc_1C9F924:               var_240 = Format(CVar(var_29C), var_230)
  loc_1C9F97B:               var_300 = "hh:nn:ss"
  loc_1C9F98B:               var_310 = Format(CVar(var_C0.Fields.Item("ChkOutTime")), var_300)
  loc_1C9F9E8:               var_42C = 0
  loc_1C9FA05:               var_260 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) between Convert(datetime,'") 'String
  loc_1C9FA1B:               var_270 = 0 & var_C0.Fields.Item("ChkInDate").Value & " " & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("ChkInDate").Value & " " & var_240 
  loc_1C9FA44:               var_350 = var_270 & "',120) and Convert(datetime,'" & var_C0.Fields.Item("ChkOutDate").Value & " " & var_310 & "',120) AND PC.BIll_NO='" 
  loc_1C9FA5E:               var_3DC = var_350 & CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), 1, 1, 1, 1)) & "' and PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value 
  loc_1C9FA75:               unk_5407BC.Execute CStr(var_3DC & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_41C, -1
  loc_1C9FA7D:               var_460 = var_460.Fields
  loc_1C9FA85:               var_42C = var_464.Item(var_464)
  loc_1C9FA8D:               var_468 = var_468.Value
  loc_1C9FA96:               var_AE = CInt(var_43C)
  loc_1C9FAF2:             End If
  loc_1C9FAF2:           End If
  loc_1C9FAF5:         Else
  loc_1C9FAFB:           var_1C0 = 0
  loc_1C9FB57:           unk_5407BC.Execute CStr("sELECT COUNT(*) FROM RoomOccDet WHERE DOCID='" & var_C0.Fields.Item("DocID").Value & "'"), var_230, -1
  loc_1C9FB5F:           var_298 = var_298.Fields
  loc_1C9FB67:           var_1C0 = var_29C.Item(var_29C)
  loc_1C9FB6F:           var_2A0 = var_2A0.Value
  loc_1C9FB9B:           var_2B8 = var_C0.Fields.Item("mFolioNoDocid")
  loc_1C9FBBD:           var_2BC = var_C0.Fields
  loc_1C9FC08:           If CBool((var_240 > 1) And (var_2B8.Value <> var_2BC.Item("DocID").Value)) Then
  loc_1C9FCAD:             var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1C9FCC3:             var_270 = var_2BC.Item("DocID").Value & var_C0.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1C9FCDC:             var_2E0 = var_270 & "',120) AND PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value & "' AND R.Nature='Room Charge' GROUP By PC.BILL_NO" 
  loc_1C9FCEA:             unk_5407BC.Execute CStr(var_2E0), var_300, -1
  loc_1C9FD3B:             If (var_2B8.RecordCount > 0) Then
  loc_1C9FDB7:               var_2A0 = var_C0.Fields
  loc_1C9FDC7:               var_290 = var_2A0.Item("DocID").Value
  loc_1C9FDD2:               var_2CC = 0
  loc_1C9FDEF:               var_260 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1C9FE01:               var_250 = var_C0.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1C9FE1E:               var_2E0 = var_2BC.Item("DocID").Value & var_250 & "',120) AND PC.FOLIONODOCID='" & var_290 & "' AND R.Nature='Room Charge' and PC.AMTDR>0" 
  loc_1C9FE2C:               unk_5407BC.Execute CStr(var_2E0), var_300, -1
  loc_1C9FE34:               var_2B8 = var_2B8.Fields
  loc_1C9FE3C:               var_2CC = var_2BC.Item(var_2BC)
  loc_1C9FE44:               var_2D0 = var_2D0.Value
  loc_1C9FE4D:               var_AE = CInt(var_310)
  loc_1C9FE85:             End If
  loc_1C9FE88:           Else
  loc_1C9FEC4:             If CBool(var_C0.Fields.Item("Type").Value <> "C") Then
  loc_1C9FF2F:               If (var_C0.Fields.Item("mFolioNoDocid").Value = var_C0.Fields.Item("DocID").Value) Then
  loc_1C9FF46:                 var_1AC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.BIll_NO='"
  loc_1C9FF71:                 var_1B0 = Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), CStr(var_2E0), var_250, -1, var_2A0, var_AE, var_310)
  loc_1C9FF7C:                 var_220 = CVar(1 & Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), 1, 1, 1, 1) & "' and PC.FOLIONODOCID='") 'String
  loc_1C9FF99:                 var_29C = var_C0.Fields.Item("DocID")
  loc_1C9FFB2:                 var_240 = var_220 & var_29C.Value & "' and R.Nature='Room Charge' GROUP By PC.BILL_NO" 
  loc_1C9FFC0:                 unk_5407BC.Execute CStr(var_240), 1, var_2B8
  loc_1CA0007:                 If (var_2A0.RecordCount > 0) Then
  loc_1CA0010:                   var_194 = 0
  loc_1CA002D:                   var_204 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.FOLIONODOCID='") 'String
  loc_1CA0071:                   unk_5407BC.Execute CStr(var_204 & var_C0.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_240, -1
  loc_1CA0079:                   var_298 = var_298.Fields
  loc_1CA0081:                   var_194 = var_29C.Item(var_29C)
  loc_1CA0089:                   var_2A0 = var_2A0.Value
  loc_1CA0092:                   var_AE = CInt(var_250)
  loc_1CA00B4:                 End If
  loc_1CA00B7:               Else
  loc_1CA00CB:                 var_1AC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.BIll_NO='"
  loc_1CA00F6:                 var_1B0 = Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), CStr(var_204 & var_C0.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_290, -1, var_2B8)
  loc_1CA0101:                 var_220 = CVar(var_AE & Proc_6_38_E69628(CVar(var_C0.Fields.Item("Bill_no")), 1, 1, 1, 1) & "' and PC.FOLIONODOCID='") 'String
  loc_1CA0137:                 var_240 = var_220 & var_C0.Fields.Item("DocID").Value & "' And vdate >= " 
  loc_1CA014A:                 var_2A0 = var_C0.Fields
  loc_1CA0152:                 var_2A4 = var_2A0.Item("ChkInDate")
  loc_1CA015A:                 var_250 = CVar(var_2A4) 'Address
  loc_1CA0161:                 Proc_6_7_F26918(var_2BC.Item("DocID").Value, var_250, var_240, var_250)
  loc_1CA0172:                 var_280 = 1 & var_2BC.Item("DocID").Value & " And R.Nature='Room Charge' GROUP By PC.BILL_NO" 
  loc_1CA0180:                 unk_5407BC.Execute CStr(var_280), 1, var_240
  loc_1CA018B:                 Set var_C8 = var_2B8
  loc_1CA01D1:                 If (var_C8.RecordCount > 0) Then
  loc_1CA01F7:                   var_204 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.FOLIONODOCID='") 'String
  loc_1CA0228:                   var_174 = "' And vdate >= "
  loc_1CA0257:                   Proc_6_7_F26918(var_250, CVar(var_C0.Fields.Item("ChkInDate")), var_204 & var_C0.Fields.Item("DocID").Value & var_174, var_280, -1)
  loc_1CA0276:                   unk_5407BC.Execute CStr(var_2A0 & var_250 & " And R.Nature='Room Charge' and PC.AMTDR>0"), var_2A4, 0
  loc_1CA0286:                    = var_2A4.Item(var_290)
  loc_1CA028E:                    = var_2A0.Fields.Value
  loc_1CA0297:                   var_AE = CInt(var_290)
  loc_1CA02C3:                 End If
  loc_1CA02C3:               End If
  loc_1CA02C3:             End If
  loc_1CA02C3:           End If
  loc_1CA02C3:         End If
  loc_1CA02D7:         If (var_C8.RecordCount > 0) Then
  loc_1CA0300:           Proc_6_39_E7D3A0(var_204, CVar(var_C8.Fields.Item("RoomChrg")))
  loc_1CA0309:           var_B8 = CSng(var_204)
  loc_1CA033C:           Proc_6_39_E7D3A0(var_204, CVar(var_C8.Fields.Item("LuxuryTax")))
  loc_1CA0359:           var_114 = (var_114 + CSng(var_204))
  loc_1CA035F:         Else
  loc_1CA0362:           var_B8 = CDbl(0)
  loc_1CA0368:           var_124 = CDbl(0)
  loc_1CA036B:         End If
  loc_1CA036E:       Else
  loc_1CA0375:         var_114 = (var_114 + var_124)
  loc_1CA0383:         var_104 = ((var_104 + var_F8) - var_124)
  loc_1CA038D:         var_10C = (var_10C + var_F0)
  loc_1CA0390:       End If
  loc_1CA0393:       var_164 = "Bill_no"
  loc_1CA03B8:       var_128 = Proc_6_38_E69628(CVar(var_C0.Fields.Item(var_164)), var_10C, var_104, var_114, var_124)
  loc_1CA03C8:       If (var_F0 > CDbl(0)) Then
  loc_1CA03D1:         var_E6 = (var_E6 + 1)
  loc_1CA03D7:         Set var_51C = var_13C 
  loc_1CA03E6:         var_51C.AddNew var_164, var_174
  loc_1CA03FE:         var_1A8 = CVar(Proc_6_52_EAE084(CStr(var_E6), 3, var_E6, var_B8)) 'String
  loc_1CA040B:         var_51C.Collect = "SNo"
  loc_1CA043E:         var_204 = CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("ConPrefix")), CVar(var_C0.Fields.Item("ConPrefix")), var_114)) 'String
  loc_1CA0494:         var_240 = (Trim(var_204) + Space(1))
  loc_1CA049B:         var_280 = (CVar(var_C0.Fields.Item("ChkInDate")) + Trim(CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("GuestName")), var_124))))
  loc_1CA04A9:         var_290 = CVar(Proc_6_45_EADFB8(CStr(var_280), &H32)) 'String
  loc_1CA04B6:         var_51C.Collect = "GuestName"
  loc_1CA056B:         var_280 = IIf((var_C0.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_C0.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1CA058F:         var_51C.Collect = "BirthAge"
  loc_1CA05DD:         Proc_6_39_E7D3A0(var_204, CVar(var_C0.Fields.Item("Age")), CVar(Proc_6_52_EAE084(CStr(var_280), 3, var_290)))
  loc_1CA0601:         var_51C.Collect = "Age"
  loc_1CA0651:         var_204 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("Nationality")), CVar(Proc_6_52_EAE084(CStr(var_204), 3))), &H19)) 'String
  loc_1CA065E:         var_51C.Collect = "Nationality"
  loc_1CA06AD:         var_204 = CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("RoomNo").Value), 5, var_204)) 'String
  loc_1CA06BA:         var_51C.Collect = "RoomNo"
  loc_1CA0709:         var_204 = CVar(Proc_6_52_EAE084(CStr(var_C0.Fields.Item("RoomRate").Value), 8, var_204)) 'String
  loc_1CA0716:         var_51C.Collect = "RoomRate"
  loc_1CA0779:         var_51C.Collect = "ChkInDate"
  loc_1CA07C3:         var_204 = CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("ChkInTm").Value), 5, Format(CVar(var_C0.Fields.Item("ChkInDt")), "DD/MM/YYYY"), 1)) 'String
  loc_1CA07D0:         var_51C.Collect = "ChkInTime"
  loc_1CA0833:         var_51C.Collect = "ChkOutDate"
  loc_1CA087D:         var_204 = CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("ChkOutTm").Value), 5, Format(CVar(var_C0.Fields.Item("ChkOutDt")), "DD/MM/YYYY"), 1, 1)) 'String
  loc_1CA088A:         var_51C.Collect = "ChkOutTime"
  loc_1CA08A5:         var_1A8 = CVar(CStr(var_AE)) 'String
  loc_1CA08B2:         var_51C.Collect = "StPeriod"
  loc_1CA08C5:         Proc_6_39_E7D3A0(var_1A8, var_F8, var_1A8, var_204, var_204)
  loc_1CA0909:         var_51C.Collect = "TotalTax"
  loc_1CA0955:         var_204 = CVar(Proc_6_52_EAE084(CStr(var_C0.Fields.Item("Person").Value), 5, CVar(Proc_6_52_EAE084(CStr(Format(var_C0.Fields.Item("Person").Value, "0.00")), 8, 1, 1)), 1)) 'String
  loc_1CA0962:         var_51C.Collect = "Person"
  loc_1CA0985:         var_1A8 = CVar(Proc_6_52_EAE084(var_128, 8, var_204)) 'String
  loc_1CA0992:         var_51C.Collect = "BillNo"
  loc_1CA09D5:         var_220 = Format(CVar(var_C0.Fields.Item("ChkOutDate")), "DD/MM/YYYY")
  loc_1CA09E7:         var_51C.Collect = "Billdate"
  loc_1CA0A1A:         var_1A8 = var_C0.Fields.Item("Person").Value
  loc_1CA0A54:         var_220 = (var_1A8 = 0) 'Variant
  loc_1CA0A72:         var_260 = (CVar(var_F0) / IIf(var_220, 1, CVar(var_C0.Fields.Item("Person"))))
  loc_1CA0AC2:         var_300 = CVar(Proc_6_52_EAE084(CStr(Format(IIf((var_F0 > CDbl(0)), var_260, 0), "0.00")), 8, 1, 1, var_220, 1)) 'String
  loc_1CA0ACF:         var_51C.Collect = "LTPerOcc"
  loc_1CA0AFE:         var_164 = var_F0
  loc_1CA0B06:         Proc_6_39_E7D3A0(var_1A8, var_164, var_300, 1)
  loc_1CA0B15:         var_174 = "0.00"
  loc_1CA0B3D:         var_230 = CVar(Proc_6_52_EAE084(CStr(Format(var_1A8, var_174)), 8, 1, 1)) 'String
  loc_1CA0B4A:         var_51C.Collect = "LTTotal"
  loc_1CA0B68:         var_51C.Update var_164, var_174
  loc_1CA0B6F:         Set var_51C = Nothing 
  loc_1CA0B76:         var_164 = CVar(CLng(4)) 'Long
  loc_1CA0B7B:         var_184 = 1
  loc_1CA0BAA:         If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1CA0BBA:           var_174 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join Country ON GP.Nationality=Country.Code Where GD.Docid='"
  loc_1CA0BC5:           var_164 = "DocID"
  loc_1CA0BED:           var_184 = "' And GD.GuestProf<>'"
  loc_1CA0C18:           var_230 = var_C0.Fields.Item("GuestProf").Value
  loc_1CA0C37:           unk_5407BC.Execute CStr(var_174 & var_C0.Fields.Item(var_164).Value & var_184 & var_230 & "'"), var_260, -1
  loc_1CA0C42:           Set var_144 = var_2A0
  loc_1CA0C7A:           If (var_144.RecordCount > 0) Then
  loc_1CA0C7D:             ' Referenced from:   1CA0EA3
  loc_1CA0C8C:             If Not(var_144.EOF) Then
  loc_1CA0C92:               Set var_520 = var_13C 
  loc_1CA0CA1:               var_520.AddNew var_164, var_174
  loc_1CA0CA9:               var_164 = "ConPrefix"
  loc_1CA0CC5:               var_1A8 = CVar(var_144.Fields.Item(var_164)) 'Address
  loc_1CA0CCE:               var_204 = CVar(Proc_6_38_E69628(var_1A8, var_2A0, var_184, var_164, var_230)) 'String
  loc_1CA0D0E:               var_260 = CVar(Proc_6_38_E69628(CVar(var_144.Fields.Item("Name")), var_1A8, var_204)) 'String
  loc_1CA0D24:               var_240 = (Trim(var_204) + Space(1))
  loc_1CA0D2B:               var_280 = ("Name" & var_C0.Fields.Item(var_164).Value & var_184 & Space(1) + Trim(var_260))
  loc_1CA0D46:               var_520.Collect = "GuestName"
  loc_1CA0D92:               Proc_6_39_E7D3A0(var_204, CVar(var_144.Fields.Item("Age")), CVar(Proc_6_45_EADFB8(CStr(0), &H32)))
  loc_1CA0DB6:               var_520.Collect = "Age"
  loc_1CA0E06:               var_204 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_144.Fields.Item("Nationality")), CVar(Proc_6_52_EAE084(CStr(var_204), 3))), &H19)) 'String
  loc_1CA0E13:               var_520.Collect = "Nationality"
  loc_1CA0E2F:               var_164 = "RoomNo"
  loc_1CA0E62:               var_204 = CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item(var_164).Value), 5, var_204)) 'String
  loc_1CA0E66:               var_174 = "RoomNo"
  loc_1CA0E6F:               var_520.Collect = var_174
  loc_1CA0E90:               var_520.Update var_164, var_174
  loc_1CA0E97:               Set var_520 = Nothing 
  loc_1CA0E9E:               var_144.MoveNext
  loc_1CA0EA3:               GoTo loc_1CA0C7D
  loc_1CA0EA6:             End If
  loc_1CA0EA6:           End If
  loc_1CA0EA6:         End If
  loc_1CA0EA9:         var_164 = CVar(CLng(4)) 'Long
  loc_1CA0EAE:         var_184 = 1
  loc_1CA0EDD:         If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1CA0F1C:           var_204 = "Select Distinct RelatedFoliono,VPrefix From PayCharge PC Where PC.FolionoDocid='" & var_C0.Fields.Item("DocID").Value 
  loc_1CA0F6A:           unk_5407BC.Execute CStr(var_204 & "' And RelatedFoliono<>" & var_C0.Fields.Item("FolioNo").Value & " And RelatedFoliono<>0"), var_260, -1
  loc_1CA0F75:           Set var_148 = var_2A0
  loc_1CA0F99:           ' Referenced from:   1CA1331
  loc_1CA0FA8:           If Not(var_148.EOF) Then
  loc_1CA0FB8:             var_174 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality,RO.RoomNo From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join (Select RoomNo, DocId From RoomOcc  Where Foliono="
  loc_1CA0FC3:             var_164 = "RelatedFolioNo"
  loc_1CA0FEB:             var_184 = " And VPrefix ="
  loc_1CA1022:             var_1C0 = " And Sno=1) RO On RO.DocId=GD.DocId Left Join Country ON GP.Nationality=Country.Code Where GD.Docid In (Select DocId From GuestFolio Where Foliono="
  loc_1CA103D:             var_2A0 = var_148.Fields
  loc_1CA1055:             var_270 = var_174 & var_148.Fields.Item(var_164).Value & var_184 & var_148.Fields.Item("vPrefix").Value & var_1C0 & var_2A0.Item("RelatedFolioNo").Value 
  loc_1CA10A3:             unk_5407BC.Execute CStr(var_270 & " And VPrefix =" & var_148.Fields.Item("vPrefix").Value & ")"), var_300, -1
  loc_1CA10AE:             Set var_144 = var_2D0
  loc_1CA10FA:             If (var_144.RecordCount > 0) Then
  loc_1CA10FD:               ' Referenced from:   1CA1326
  loc_1CA110C:               If Not(var_144.EOF) Then
  loc_1CA1112:                 Set var_524 = var_13C 
  loc_1CA1121:                 var_524.AddNew var_164, var_174
  loc_1CA1129:                 var_164 = "ConPrefix"
  loc_1CA114E:                 var_204 = CVar(Proc_6_38_E69628(CVar(var_144.Fields.Item(var_164)), var_2D0, var_2A0, var_184)) 'String
  loc_1CA11A4:                 var_240 = (Trim(var_204) + Space(1))
  loc_1CA11AB:                 var_280 = ("Name" & var_148.Fields.Item(var_164).Value & var_184 & var_148.Fields.Item("vPrefix").Value + Trim(CVar(Proc_6_38_E69628(CVar(var_144.Fields.Item("Name")), var_164, var_204))))
  loc_1CA11B9:                 var_290 = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_144.Fields.Item("Name")), var_164, var_204))) & " And VPrefix ="), &H32)) 'String
  loc_1CA11C6:                 var_524.Collect = "GuestName"
  loc_1CA1212:                 Proc_6_39_E7D3A0(var_204, CVar(var_144.Fields.Item("Age")), var_290)
  loc_1CA1236:                 var_524.Collect = "Age"
  loc_1CA1286:                 var_204 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_144.Fields.Item("Nationality")), CVar(Proc_6_52_EAE084(CStr(var_204), 3))), &H19)) 'String
  loc_1CA1293:                 var_524.Collect = "Nationality"
  loc_1CA12AC:                 var_164 = "RoomNo"
  loc_1CA12E5:                 var_204 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_144.Fields.Item(var_164)), var_204), 5)) 'String
  loc_1CA12E9:                 var_174 = "RoomNo"
  loc_1CA12F2:                 var_524.Collect = var_174
  loc_1CA1313:                 var_524.Update var_164, var_174
  loc_1CA131A:                 Set var_524 = Nothing 
  loc_1CA1321:                 var_144.MoveNext
  loc_1CA1326:                 GoTo loc_1CA10FD
  loc_1CA1329:               End If
  loc_1CA1329:             End If
  loc_1CA132C:             var_148.MoveNext
  loc_1CA1331:             GoTo loc_1CA0F99
  loc_1CA1334:           End If
  loc_1CA1334:         End If
  loc_1CA1337:         var_174 = CVar(var_9C) 'Integer
  loc_1CA1364:         var_204 = (var_174 + var_C0.Fields.Item("Person").Value)
  loc_1CA1369:         var_9C = CInt(var_204)
  loc_1CA1380:         var_86 = (var_86 + 1)
  loc_1CA1386:       Else
  loc_1CA1389:         var_164 = CVar(CLng(3)) 'Long
  loc_1CA13C5:         If ((CStr(Me.FGrid.TextMatrix)) = "Yes") And (var_124 > CDbl(0))) Then
  loc_1CA13CE:           var_E6 = (var_E6 + 1)
  loc_1CA13D4:           Set var_528 = var_13C 
  loc_1CA13E3:           var_528.AddNew var_164, var_174
  loc_1CA13FB:           var_1A8 = CVar(Proc_6_52_EAE084(CStr(var_E6), 3, var_E6, 1, var_164)) 'String
  loc_1CA1408:           var_528.Collect = "SNo"
  loc_1CA143B:           var_204 = CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("ConPrefix")), CVar(var_C0.Fields.Item("ConPrefix")), var_86, var_9C)) 'String
  loc_1CA1491:           var_240 = (Trim(var_204) + Space(1))
  loc_1CA1498:           var_280 = ("GuestName" & var_148.Fields.Item("ConPrefix").Value & 1 & var_148.Fields.Item("vPrefix").Value + Trim(CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("GuestName")), var_204))))
  loc_1CA14A6:           var_290 = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("GuestName")), var_204))) & " And VPrefix ="), &H32)) 'String
  loc_1CA14B3:           var_528.Collect = "GuestName"
  loc_1CA1568:           var_280 = IIf((var_C0.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_C0.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1CA158C:           var_528.Collect = "BirthAge"
  loc_1CA15DA:           Proc_6_39_E7D3A0(var_204, CVar(var_C0.Fields.Item("Age")), CVar(Proc_6_52_EAE084(CStr(var_280), 3, var_290)))
  loc_1CA15FE:           var_528.Collect = "Age"
  loc_1CA164E:           var_204 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("Nationality")), CVar(Proc_6_52_EAE084(CStr(var_204), 3))), &H19)) 'String
  loc_1CA165B:           var_528.Collect = "Nationality"
  loc_1CA16B7:           var_528.Collect = "RoomNo"
  loc_1CA16E0:           var_1A8 = CVar(Proc_6_52_EAE084(CStr(var_B8), 8, CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("RoomNo").Value), 5, var_204)))) 'String
  loc_1CA16ED:           var_528.Collect = "RoomRate"
  loc_1CA1745:           var_528.Collect = "ChkInDate"
  loc_1CA178F:           var_204 = CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("ChkInTm").Value), 5, Format(CVar(var_C0.Fields.Item("ChkInDt")), "DD/MM/YYYY"), 1)) 'String
  loc_1CA179C:           var_528.Collect = "ChkInTime"
  loc_1CA17FF:           var_528.Collect = "ChkOutDate"
  loc_1CA1849:           var_204 = CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("ChkOutTm").Value), 5, Format(CVar(var_C0.Fields.Item("ChkOutDt")), "DD/MM/YYYY"), 1, 1)) 'String
  loc_1CA1856:           var_528.Collect = "ChkOutTime"
  loc_1CA1871:           var_1A8 = CVar(CStr(var_AE)) 'String
  loc_1CA187E:           var_528.Collect = "StPeriod"
  loc_1CA188D:           var_1A8 = CVar((var_124 + var_F0)) 'Double
  loc_1CA1894:           Proc_6_39_E7D3A0(var_204, var_1A8, var_1A8, var_204, var_204)
  loc_1CA18D8:           var_528.Collect = "TotalTax"
  loc_1CA1926:           var_204 = CVar(Proc_6_52_EAE084(CStr(var_C0.Fields.Item("Person").Value), 5, CVar(Proc_6_52_EAE084(CStr(Format(var_204, "0.00")), 8, 1, 1)), 1)) 'String
  loc_1CA1933:           var_528.Collect = "Person"
  loc_1CA1956:           var_1A8 = CVar(Proc_6_52_EAE084(var_128, 8, var_204)) 'String
  loc_1CA1963:           var_528.Collect = "BillNo"
  loc_1CA19A6:           var_220 = Format(CVar(var_C0.Fields.Item("ChkOutDate")), "DD/MM/YYYY")
  loc_1CA19B8:           var_528.Collect = "Billdate"
  loc_1CA19EB:           var_1A8 = var_C0.Fields.Item("Person").Value
  loc_1CA1A25:           var_220 = (var_1A8 = 0) 'Variant
  loc_1CA1A43:           var_260 = (CVar(var_F0) / IIf(var_220, 1, CVar(var_C0.Fields.Item("Person"))))
  loc_1CA1A93:           var_300 = CVar(Proc_6_52_EAE084(CStr(Format(IIf((var_F0 > CDbl(0)), var_260, 0), "0.00")), 8, 1, 1, var_220, 1)) 'String
  loc_1CA1AA0:           var_528.Collect = "LTPerOcc"
  loc_1CA1ACF:           var_164 = var_F0
  loc_1CA1AD7:           Proc_6_39_E7D3A0(var_1A8, var_164, var_300, 1)
  loc_1CA1AE6:           var_174 = "0.00"
  loc_1CA1B0E:           var_230 = CVar(Proc_6_52_EAE084(CStr(Format(var_1A8, var_174)), 8, 1, 1)) 'String
  loc_1CA1B1B:           var_528.Collect = "LTTotal"
  loc_1CA1B39:           var_528.Update var_164, var_174
  loc_1CA1B40:           Set var_528 = Nothing 
  loc_1CA1B47:           var_164 = CVar(CLng(4)) 'Long
  loc_1CA1B4C:           var_184 = 1
  loc_1CA1B7B:           If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1CA1B8B:             var_174 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join Country ON GP.Nationality=Country.Code Where GD.Docid='"
  loc_1CA1B96:             var_164 = "DocID"
  loc_1CA1BBE:             var_184 = "' And GD.GuestProf<>'"
  loc_1CA1BE9:             var_230 = var_C0.Fields.Item("GuestProf").Value
  loc_1CA1C08:             unk_5407BC.Execute CStr(var_174 & var_C0.Fields.Item(var_164).Value & var_184 & var_230 & "'"), var_260, -1
  loc_1CA1C13:             Set var_144 = var_2A0
  loc_1CA1C4B:             If (var_144.RecordCount > 0) Then
  loc_1CA1C4E:               ' Referenced from:     1CA1E74
  loc_1CA1C5D:               If Not(var_144.EOF) Then
  loc_1CA1C63:                 Set var_52C = var_13C 
  loc_1CA1C72:                 var_52C.AddNew var_164, var_174
  loc_1CA1C7A:                 var_164 = "ConPrefix"
  loc_1CA1C96:                 var_1A8 = CVar(var_144.Fields.Item(var_164)) 'Address
  loc_1CA1C9F:                 var_204 = CVar(Proc_6_38_E69628(var_1A8, var_2A0, var_184, var_164, var_230)) 'String
  loc_1CA1CDF:                 var_260 = CVar(Proc_6_38_E69628(CVar(var_144.Fields.Item("Name")), var_1A8, var_1A8)) 'String
  loc_1CA1CF5:                 var_240 = (Trim(var_204) + Space(1))
  loc_1CA1CFC:                 var_280 = ("Name" & var_C0.Fields.Item(var_164).Value & var_184 & Space(1) + Trim(var_260))
  loc_1CA1D17:                 var_52C.Collect = "GuestName"
  loc_1CA1D63:                 Proc_6_39_E7D3A0(var_204, CVar(var_144.Fields.Item("Age")), CVar(Proc_6_45_EADFB8(CStr(0), &H32)))
  loc_1CA1D87:                 var_52C.Collect = "Age"
  loc_1CA1DD7:                 var_204 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_144.Fields.Item("Nationality")), CVar(Proc_6_52_EAE084(CStr(var_204), 3))), &H19)) 'String
  loc_1CA1DE4:                 var_52C.Collect = "Nationality"
  loc_1CA1E00:                 var_164 = "RoomNo"
  loc_1CA1E33:                 var_204 = CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item(var_164).Value), 5, var_204)) 'String
  loc_1CA1E37:                 var_174 = "RoomNo"
  loc_1CA1E40:                 var_52C.Collect = var_174
  loc_1CA1E61:                 var_52C.Update var_164, var_174
  loc_1CA1E68:                 Set var_52C = Nothing 
  loc_1CA1E6F:                 var_144.MoveNext
  loc_1CA1E74:                 GoTo loc_1CA1C4E
  loc_1CA1E77:               End If
  loc_1CA1E77:             End If
  loc_1CA1E77:           End If
  loc_1CA1E7A:           var_164 = CVar(CLng(4)) 'Long
  loc_1CA1E7F:           var_184 = 1
  loc_1CA1EAE:           If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1CA1EED:             var_204 = "Select Distinct RelatedFoliono,VPrefix From PayCharge PC Where PC.FolionoDocid='" & var_C0.Fields.Item("DocID").Value 
  loc_1CA1F3B:             unk_5407BC.Execute CStr(var_204 & "' And RelatedFoliono<>" & var_C0.Fields.Item("FolioNo").Value & " And RelatedFoliono<>0"), var_260, -1
  loc_1CA1F46:             Set var_148 = var_2A0
  loc_1CA1F6A:             ' Referenced from:     1CA2302
  loc_1CA1F79:             If Not(var_148.EOF) Then
  loc_1CA1F89:               var_174 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality,RO.RoomNo From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join (Select RoomNo, DocId From RoomOcc  Where Foliono="
  loc_1CA1F94:               var_164 = "RelatedFolioNo"
  loc_1CA1FBC:               var_184 = " And VPrefix ="
  loc_1CA1FF3:               var_1C0 = " And Sno=1) RO On RO.DocId=GD.DocId Left Join Country ON GP.Nationality=Country.Code Where GD.Docid In (Select DocId From GuestFolio Where Foliono="
  loc_1CA200E:               var_2A0 = var_148.Fields
  loc_1CA2026:               var_270 = var_174 & var_148.Fields.Item(var_164).Value & var_184 & var_148.Fields.Item("vPrefix").Value & var_1C0 & var_2A0.Item("RelatedFolioNo").Value 
  loc_1CA2074:               unk_5407BC.Execute CStr(var_270 & " And VPrefix =" & var_148.Fields.Item("vPrefix").Value & ")"), var_300, -1
  loc_1CA207F:               Set var_144 = var_2D0
  loc_1CA20BD:               var_294 = var_144.RecordCount
  loc_1CA20CB:               If (var_294 > 0) Then
  loc_1CA20CE:                 ' Referenced from:     1CA22F7
  loc_1CA20DD:                 If Not(var_144.EOF) Then
  loc_1CA20E3:                   Set var_530 = var_13C 
  loc_1CA20F2:                   var_530.AddNew var_164, var_174
  loc_1CA20FA:                   var_164 = "ConPrefix"
  loc_1CA211F:                   var_204 = CVar(Proc_6_38_E69628(CVar(var_144.Fields.Item(var_164)), var_2D0, var_2A0, var_184)) 'String
  loc_1CA2132:                   var_230 = Space(1)
  loc_1CA2146:                   var_298 = var_144.Fields
  loc_1CA2175:                   var_240 = (Trim(var_204) + var_230)
  loc_1CA217C:                   var_280 = ("Name" & var_148.Fields.Item(var_164).Value & var_184 & var_148.Fields.Item("vPrefix").Value + Trim(CVar(Proc_6_38_E69628(CVar(var_298.Item("Name")), var_164, var_204))))
  loc_1CA218A:                   var_290 = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_298.Item("Name")), var_164, var_204))) & " And VPrefix ="), &H32)) 'String
  loc_1CA2197:                   var_530.Collect = "GuestName"
  loc_1CA21E3:                   Proc_6_39_E7D3A0(var_204, CVar(var_144.Fields.Item("Age")), var_290)
  loc_1CA21FA:                   var_220 = CVar(Proc_6_52_EAE084(CStr(var_204), 3)) 'String
  loc_1CA2207:                   var_530.Collect = "Age"
  loc_1CA2264:                   var_530.Collect = "Nationality"
  loc_1CA227D:                   var_164 = "RoomNo"
  loc_1CA2291:                   var_1F4 = var_144.Fields.Item(var_164)
  loc_1CA22A2:                   var_1B0 = Proc_6_38_E69628(CVar(var_1F4), CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_144.Fields.Item("Nationality")), var_220), &H19)))
  loc_1CA22B6:                   var_204 = CVar(Proc_6_45_EADFB8(var_1B0, 5)) 'String
  loc_1CA22BA:                   var_174 = "RoomNo"
  loc_1CA22C3:                   var_530.Collect = var_174
  loc_1CA22E4:                   var_530.Update var_164, var_174
  loc_1CA22EB:                   Set var_530 = Nothing 
  loc_1CA22F2:                   var_144.MoveNext
  loc_1CA22F7:                   GoTo loc_1CA20CE
  loc_1CA22FA:                 End If
  loc_1CA22FA:               End If
  loc_1CA22FD:               var_148.MoveNext
  loc_1CA2302:               GoTo loc_1CA1F6A
  loc_1CA2305:             End If
  loc_1CA2305:           End If
  loc_1CA2305:         End If
  loc_1CA2305:       End If
  loc_1CA230C:       var_A4 = (var_A4 + var_F0)
  loc_1CA2312:       var_164 = CVar(CLng(3)) 'Long
  loc_1CA2317:       var_184 = 1
  loc_1CA2335:       var_1AC = CStr(Me.FGrid.TextMatrix))
  loc_1CA2346:       If (var_1AC = "Yes") Then
  loc_1CA2350:         If (var_F0 > CDbl(0)) Then
  loc_1CA235A:           var_AC = (var_AC + var_F8)
  loc_1CA2360:         Else
  loc_1CA2367:           var_AC = (var_AC + var_124)
  loc_1CA236A:         End If
  loc_1CA236D:       Else
  loc_1CA2374:         If (var_F0 <> CDbl(0)) Then
  loc_1CA237E:           var_AC = (var_AC + var_F8)
  loc_1CA2381:         End If
  loc_1CA2381:         ' Referenced from:   1C9F6A0
  loc_1CA2381:       End If
  loc_1CA2381:       ' Referenced from: 1C9D2A1
  loc_1CA2381:     End If
  loc_1CA2384:     var_C0.MoveNext
  loc_1CA2389:     GoTo loc_1C9C7E6
  loc_1CA238C:   End If
  loc_1CA2392:   global_84 = "LuxuryTax"
  loc_1CA239C:   Call 0.Method_arg_50 (var_1AC, var_AC, var_AC, var_AC, var_184)
  loc_1CA23AA:   var_204 = Ucase(CVar(var_1AC))
  loc_1CA23B9:   global_80 = CStr(var_204)
  loc_1CA23EE:   Set var_198 = var_13C 
  loc_1CA23F5:   CreateFieldDefFile(var_198, MemVar_1F950B4 & "\" & global_84 & ".ttx", &HFF, var_164)
  loc_1CA2420:   var_1AC = MemVar_1F950B4 & "\"
  loc_1CA243A:   Call 0.Method_arg_1C (var_1AC & global_84 & ".RPT", var_164, var_198, var_A4)
  loc_1CA2445:   MemVar_1F951E8 = var_198
  loc_1CA246E:   Call 0.Method_arg_64 (var_198, CVar(var_198), var_174, var_184)
  loc_1CA2476:   Call 0.Method_arg_2C (var_204, var_B8)
  loc_1CA2484:   Call 0.Method_arg_150 (var_AE)
  loc_1CA249A:   Call 0.Method_arg_90 (var_198, var_294)
  loc_1CA24A2:   Call 0.Method_arg_24 (var_9A)
  loc_1CA24AE:   For var_534 =  To CInt(var_294): 1 = var_534 'Integer
  loc_1CA24C7:     Call 0.Method_arg_90 (var_198, CLng(var_9A))
  loc_1CA24CF:     Call 0.Method_arg_20 (var_1F4)
  loc_1CA24D7:     Call 0.Method_arg_30 (var_1AC)
  loc_1CA24DF:     var_1A8 = CVar(var_1AC) 'String
  loc_1CA24ED:     var_544 = Ucase(var_1A8) 'Variant
  loc_1CA2506:     If (var_544 = "FORMONTH") Then
  loc_1CA2514:       Proc_6_17_EAAE40(var_1A8)
  loc_1CA2530:       Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1CA2538:       Call 0.Method_arg_20 (CStr(var_1A8))
  loc_1CA2540:       Call 0.Method_arg_38 (var_FC)
  loc_1CA2555:     Else
  loc_1CA2560:       If (var_544 = "TOTAMT") Then
  loc_1CA257B:         Call 0.Method_arg_90 (var_198, CLng(var_9A))
  loc_1CA2583:         Call 0.Method_arg_20 (var_1F4)
  loc_1CA258B:         Call 0.Method_arg_38 (CStr(var_AC))
  loc_1CA259D:       Else
  loc_1CA25A8:         If (var_544 = "TOTLT") Then
  loc_1CA25C3:           Call 0.Method_arg_90 (var_198, CLng(var_9A))
  loc_1CA25CB:           Call 0.Method_arg_20 (var_1F4)
  loc_1CA25D3:           Call 0.Method_arg_38 (CStr(var_A4))
  loc_1CA25E5:         Else
  loc_1CA25F0:           If (var_544 = "TITLE") Then
  loc_1CA2617:             Call 0.Method_arg_90 (var_198, CLng(var_9A))
  loc_1CA261F:             Call 0.Method_arg_20 (var_1F4)
  loc_1CA2627:             Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_1CA263D:           Else
  loc_1CA2648:             If (var_544 = "PRINTDATE") Then
  loc_1CA2678:               Call 0.Method_arg_90 (var_198, CLng(var_9A))
  loc_1CA2680:               Call 0.Method_arg_20 (var_1F4)
  loc_1CA2688:               Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F950EC) & "'"))
  loc_1CA26A1:             Else
  loc_1CA26AC:               If (var_544 = "SUMMARYYN") Then
  loc_1CA26C4:                 Set var_198 = Me.FGrid
  loc_1CA26DB:                 Proc_6_17_EAAE40(var_220, CVar(CStr(var_198.TextMatrix))))
  loc_1CA26F7:                 Call 0.Method_arg_90 (var_1F4, CLng(var_9A), var_298)
  loc_1CA26FF:                 Call 0.Method_arg_20 (CStr(var_220), 1)
  loc_1CA2707:                 Call 0.Method_arg_38 (CVar(CLng(2)))
  loc_1CA2724:               Else
  loc_1CA272F:                 If (var_544 = "WT_TOTAMT") Then
  loc_1CA276E:                   Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1CA2776:                   Call 0.Method_arg_20 (CStr(Format(var_114, "0.00")), 1)
  loc_1CA277E:                   Call 0.Method_arg_38 (1)
  loc_1CA2797:                 Else
  loc_1CA27A2:                   If (var_544 = "WT_LT") Then
  loc_1CA27E1:                     Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1CA27E9:                     Call 0.Method_arg_20 (CStr(Format(var_11C, "0.00")), 1)
  loc_1CA27F1:                     Call 0.Method_arg_38 (1)
  loc_1CA280A:                   Else
  loc_1CA2815:                     If (var_544 = "WT_NETAMT") Then
  loc_1CA2834:                       var_1A8 = CVar((var_114 + var_11C)) 'Double
  loc_1CA2857:                       Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1CA285F:                       Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1CA2867:                       Call 0.Method_arg_38 (1)
  loc_1CA2882:                     Else
  loc_1CA288D:                       If (var_544 = "W_TOTAMT") Then
  loc_1CA28CC:                         Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1CA28D4:                         Call 0.Method_arg_20 (CStr(Format(var_104, "0.00")), 1)
  loc_1CA28DC:                         Call 0.Method_arg_38 (1)
  loc_1CA28F5:                       Else
  loc_1CA2900:                         If (var_544 = "W_LT") Then
  loc_1CA293F:                           Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1CA2947:                           Call 0.Method_arg_20 (CStr(Format(var_10C, "0.00")), 1)
  loc_1CA294F:                           Call 0.Method_arg_38 (1)
  loc_1CA2968:                         Else
  loc_1CA2973:                           If (var_544 = "W_NETAMT") Then
  loc_1CA2992:                             var_1A8 = CVar((var_104 + var_10C)) 'Double
  loc_1CA29B5:                             Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1CA29BD:                             Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1CA29C5:                             Call 0.Method_arg_38 (1)
  loc_1CA29E0:                           Else
  loc_1CA29EB:                             If (var_544 = "T_TOTAMT") Then
  loc_1CA2A0A:                               var_1A8 = CVar((var_114 + var_104)) 'Double
  loc_1CA2A2D:                               Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1CA2A35:                               Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1CA2A3D:                               Call 0.Method_arg_38 (1)
  loc_1CA2A58:                             Else
  loc_1CA2A63:                               If (var_544 = "T_LT") Then
  loc_1CA2A82:                                 var_1A8 = CVar((var_11C + var_10C)) 'Double
  loc_1CA2AA5:                                 Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1CA2AAD:                                 Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1CA2AB5:                                 Call 0.Method_arg_38 (1)
  loc_1CA2AD0:                               Else
  loc_1CA2ADB:                                 If (var_544 = "T_NETAMT") Then
  loc_1CA2AED:                                   var_204 = "0.00"
  loc_1CA2B02:                                   var_1A8 = CVar((((var_114 + var_11C) + var_104) + var_10C)) 'Double
  loc_1CA2B09:                                   var_220 = Format("0.00", var_204)
  loc_1CA2B25:                                   Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1CA2B2D:                                   Call 0.Method_arg_20 (CStr(var_220), 1)
  loc_1CA2B35:                                   Call 0.Method_arg_38 (1)
  loc_1CA2B4D:                                 End If
  loc_1CA2B4D:                               End If
  loc_1CA2B4D:                             End If
  loc_1CA2B4D:                           End If
  loc_1CA2B4D:                         End If
  loc_1CA2B4D:                       End If
  loc_1CA2B4D:                     End If
  loc_1CA2B4D:                   End If
  loc_1CA2B4D:                 End If
  loc_1CA2B4D:               End If
  loc_1CA2B4D:             End If
  loc_1CA2B4D:           End If
  loc_1CA2B4D:         End If
  loc_1CA2B4D:       End If
  loc_1CA2B4D:     End If
  loc_1CA2B50:   Next var_534 'Integer
  loc_1CA2B5A:   Set var_1F4 = Nothing
  loc_1CA2B73:   Set var_198 = MemVar_1F951E8 
  loc_1CA2B7F:   Proc_6_99_1484404(var_198, 0, global_80)
  loc_1CA2B8A:   MemVar_1F951E8 = var_198
  loc_1CA2B98: Else
  loc_1CA2BB1:   MsgBox("*No Records to print*", 0, var_204, var_220, var_230)
  loc_1CA2BC1: End If
  loc_1CA2BCE: Set var_140 = Nothing
  loc_1CA2BD6: Set var_C0 = Nothing
  loc_1CA2BDE: Set var_138 = Nothing
  loc_1CA2BE6: Set var_13C = Nothing
  loc_1CA2BEE: Set var_14C = Nothing
  loc_1CA2BF6: Set var_C8 = Nothing
  loc_1CA2BFE: Set var_12C = Nothing
  loc_1CA2C06: Set var_130 = Nothing
  loc_1CA2C0E: Set var_144 = Nothing
  loc_1CA2C16: Set var_148 = Nothing
  loc_1CA2C19: Exit Sub
  loc_1CA2C1A: Proc_6_60_E63754(0, &HFF)
  loc_1CA2C24: global_88 = 0
  loc_1CA2C27: Exit Sub
End Sub

Public Sub Proc_66_73_1CCBEBC
  'Data Table: 54078C
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_1BC As String
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_1C0 As String
  Dim var_218 As String
  Dim var_1D0 As Variant
  Dim var_204 As Variant
  Dim var_214 As Variant
  Dim var_184 As Variant
  Dim var_230 As Variant
  Dim var_1A4 As Variant
  Dim var_250 As Variant
  Dim unk_5407BC As Connection15
  Dim var_240 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_8C As Long
  Dim var_F0 As Long
  Dim var_AC As Double
  Dim var_A4 As Long
  Dim var_B4 As Double
  Dim var_C8 As Recordset15
  Dim var_2A8 As Variant
  Dim var_2AC As Variant
  Dim var_2B0 As Variant
  Dim var_2B4 As Variant
  Dim var_2DC As Variant
  Dim var_2A0 As Variant
  Dim var_2C8 As Variant
  Dim var_2CC As Variant
  Dim var_2E0 As Variant
  Dim var_2C4 As Variant
  Dim var_310 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_340 As Variant
  Dim var_2F0 As Variant
  Dim var_350 As Variant
  Dim var_374 As Variant
  Dim var_3B8 As Variant
  Dim var_360 As Variant
  Dim var_384 As Variant
  Dim var_394 As Variant
  Dim var_3B4 As Variant
  Dim var_3EC As Variant
  Dim var_40C As Variant
  Dim var_41C As Variant
  Dim var_42C As Variant
  Dim var_43C As Variant
  Dim var_44C As Variant
  Dim var_100 As Double
  Dim var_108 As Double
  Dim var_134 As Double
  Dim var_D0 As Recordset15
  Dim var_F8 As Double
  Dim var_140 As Recordset15
  Dim var_470 As Variant
  Dim var_474 As Fields15
  Dim var_478 As Variant
  Dim var_B8 As Long
  Dim var_46C As Variant
  Dim var_488 As Variant
  Dim var_4BC As Variant
  Dim var_4DC As Variant
  Dim var_514 As Integer
  Dim var_500 As Recordset15
  Dim var_504 As Fields15
  Dim var_518 As Field20
  Dim var_148 As Recordset15
  Dim var_150 As Recordset15
  Dim var_364 As Fields15
  Dim var_C0 As Double
  Dim var_124 As Double
  Dim var_114 As Double
  Dim var_11C As Double
  Dim var_52C As Recordset15
  Dim var_154 As Recordset15
  Dim var_530 As Recordset15
  Dim var_158 As Recordset15
  Dim var_534 As Recordset15
  Dim var_88 As Long
  Dim var_538 As Recordset15
  Dim var_53C As Recordset15
  Dim var_540 As Recordset15
  loc_1CC50A8: On Error Goto loc_1CCBEAD
  loc_1CC50AE: var_174 = CVar(CLng(0)) 'Long
  loc_1CC50B3: var_194 = 1
  loc_1CC50D6: var_E4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1CC50E5: var_174 = CVar(CLng(1)) 'Long
  loc_1CC50EA: var_194 = 1
  loc_1CC510D: var_EC = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1CC5124: var_194 = 1
  loc_1CC5137: var_1B8 = Me.FGrid.TextMatrix)
  loc_1CC5142: var_1BC = CStr(var_1B8)
  loc_1CC5165: Set var_204 = Me.FGrid
  loc_1CC517A: var_10C = 1 & CStr(var_204.TextMatrix))
  loc_1CC51A2: Set var_1A8 = Me.Check1
  loc_1CC51A8: Call 0.Method_Proc_66_73_1CCBEBC0 (1, var_204, var_21E, CVar(CLng(1)), var_194 & var_1BC & " TO ", CVar(CLng(0)), "FROM ")
  loc_1CC51B0: var_EC = var_204.Value
  loc_1CC51C6: If (CLng(var_21E) = 0) Then
  loc_1CC51E4:   Call Proc_66_44_1281678(global_164, 1, CByte(1))
  loc_1CC51EF:   global_148 = var_1BC
  loc_1CC51FF:   If (global_88 = 0) Then
  loc_1CC5202:     Exit Sub
  loc_1CC5203:   End If
  loc_1CC5203: End If
  loc_1CC520B: var_174 = var_EC
  loc_1CC5213: Proc_6_7_F26918(var_1B8, var_174, " AND RO.ChkOutDate <=", var_1BC, var_194)
  loc_1CC5226: global_60 = CStr(var_174 & var_1B8)
  loc_1CC5240: Set var_1A8 = Me.Check1
  loc_1CC5246: Call 0.Method_Proc_66_73_1CCBEBC0 (1, var_204, var_21E)
  loc_1CC524E: var_E4 = var_204.Value
  loc_1CC5264: If (CLng(var_21E) = 0) Then
  loc_1CC527F:   var_D8 = var_D8 & " and R.Code in ( " & global_148 & ") "
  loc_1CC52A1:   var_DC = var_DC & " and R.Code not in ( " & global_148 & ") "
  loc_1CC52AB: End If
  loc_1CC52B8: var_184 = "Update PayCharge set GuestProf=GF.GuestProf from GuestFolio GF Where FolioNoDocid=GF.Docid And ISNULL(PayCharge.FolioNoDocid,'')<>'' And PayCharge.SettleDate between "
  loc_1CC52C0: var_174 = var_E4
  loc_1CC52C8: Proc_6_7_F26918(var_1B8, var_174, var_184, var_260)
  loc_1CC52D0: var_214 = -1 & var_1B8 
  loc_1CC52D4: var_194 = " And "
  loc_1CC52E8: Proc_6_7_F26918(var_240, var_EC, var_174 & var_1B8 & var_194)
  loc_1CC52F0: var_250 = var_1A8 & var_240 
  loc_1CC52FE: unk_5407BC.Execute CStr(var_250), var_194, var_174
  loc_1CC5320: If (MemVar_1F953B0 = "A") Then
  loc_1CC5337:   var_214 = CVar("Select Distinct RO.DocId,GF.Vdate,GF.GuestProf,(RO.Adult+RO.Children) As Person,RO.FolioNo,RO.ChkInDate,RO.ChkInTime,RO.ChkOutDate,RO.ChkOutTime,IIF(GF.RODISC>0,(RO.RoomRate-(RO.RoomRate*GF.RODISC/100)),RO.ROOMRATE) AS ROOMRATE,RO.RoomNo,GP.Name AS GuestName,GP.BirthDate,GP.Age,Country.Name As Nationality,GF.RODISC,RO.Type,paycharge.Bill_No,BD.ChkInDAte as ChkinDT,BD.ChkInTime as ChkinTm,BD.ChkOutDate as CHkOutDt,BD.ChkOutTime as CHkOutTm " & "From ((((BillSummary as BD LEFT JOIN RoomOcc AS RO ON BD.FolioNo = RO.FolioNo) Left Join GuestProf GP ON RO.GuestProf=GP.Code) Left Join Country ON GP.Nationality=Country.Code) Left Join GuestFolio GF ON RO.DOCID=GF.DOCID)  LEFT JOIN PayCharge ON (GF.GuestProf = PayCharge.GuestProf) AND (GF.FolioNo = PayCharge.FolioNo) Where  Paycharge.bill_no is not NULL and BD.BillSettleDate between ") 'String
  loc_1CC5345:   Proc_6_7_F26918(var_1B8, var_E4, var_E4 & var_1B8)
  loc_1CC5365:   Proc_6_7_F26918(var_250, var_EC, var_2A0 & var_1B8 & " And ")
  loc_1CC536D:   var_260 = -1 & var_250 
  loc_1CC5371:   var_1A4 = " and iif(isnull(Paycharge.ModeSet),'',Paycharge.ModeSet)<>'S' AND Paycharge.SettleDate is Not NULL and RO.RoomType ='RO' "
  loc_1CC5383:   var_280 = var_260 & var_1A4 & CVar(global_60) 
  loc_1CC539A:   unk_5407BC.Execute CStr(var_280 & " ORDER BY paycharge.Bill_NO,RO.Type"), var_1A8, 
  loc_1CC53A5:   Set var_C8 = var_1A8
  loc_1CC53C8: Else
  loc_1CC53D0:   If (MemVar_1F953B0 = "S") Then
  loc_1CC53E7:     var_1BC = "Select Distinct RO.DocId,RO.MFolionoDocId,GF.Vdate,GF.GuestProf,Case When IsNull(RO.mFolioNoDocId,'')<>'' Then (Select Sum(Adult+Children) From RoomOccDet Where MFolionoDocId=RO.MFolionoDocId) Else (RO.Adult+RO.Children) End As Person,RO.FolioNo,Case When RO.SNO=(Select Min(SNo) From RoomOccDet Where Docid=RO.DocId) Then RO.ChkInDt Else (Select Top 1 ChkOutDate From RoomOcc Where DocId=RO.DocId And ChngDate<RO.ChngDate Order By Sno Desc)End As ChkInDate,Case When RO.SNO=(Select Min(SNo) From RoomOccDet Where Docid=RO.DocId) Then RO.ChkInTm Else (Select Top 1 ChkOutTime From RoomOcc Where DocId=RO.DocId And ChngDate<RO.ChngDate Order By Sno Desc) End As ChkInTime,RO.ChkOutDate,RO.ChkOutTime, " & "ROOMRATE =case when GF.RODISC>0 then (RO.RoomRate-(RO.RoomRate*GF.RODISC/100)) else RO.ROOMRATE end ,IsNull(RO.RoomTarrif,0) RoomTarrif, RO.RoomNo,RO.RRTaxInc,RO.RRServiceChrg,GP.ConPrefix,GP.Name AS GuestName,GP.BirthDate,GP.Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality,GF.RODISC,RO.Type,paycharge.Bill_No,Cast(paycharge.Bill_NO As INTEGER) As OBill_No,RO.ChkinDT,RO.ChkinTm,RO.CHkOutDt,RO.CHkOutTm "
  loc_1CC53EE:     var_1C0 = CStr(var_280 & " ORDER BY paycharge.Bill_NO,RO.Type") & "From ((((BillSummary as BD LEFT JOIN RoomOccDet AS RO ON BD.FolioNoDocid = RO.Docid AND RO.RoomType ='RO' "
  loc_1CC53FF:     var_214 = CVar(var_1C0 & global_60 & " AND BD.BillSettleDate Between ") 'String
  loc_1CC540D:     Proc_6_7_F26918(var_1B8, var_E4, var_214)
  loc_1CC542D:     Proc_6_7_F26918(var_250, var_EC, var_280 & var_1B8 & " And ")
  loc_1CC5435:     var_260 = -1 & var_250 
  loc_1CC5439:     var_1A4 = ") Left Join GuestProf GP ON RO.GuestProf=GP.Code) Left Join Country ON GP.Nationality=Country.Code) Left Join GuestFolio GF ON RO.DOCID=GF.DOCID) LEFT JOIN PayCharge ON (GF.GuestProf = PayCharge.GuestProf) AND (GF.DocId = PayCharge.FolioNoDocId) AND IsNull(Paycharge.bill_no,'')<>'' And IsNull(Paycharge.ModeSet,'')<>'S' AND Paycharge.SettleDate IS NOT NULL ORDER BY OBill_No,RO.Type"
  loc_1CC544C:     unk_5407BC.Execute CStr(var_260 & var_1A4), var_1A8, 
  loc_1CC5457:     Set var_C8 = var_1A8
  loc_1CC547B:   End If
  loc_1CC547B: End If
  loc_1CC5480: var_8C = 1
  loc_1CC5488: var_F0 = 0
  loc_1CC548E: var_AC = CDbl(0)
  loc_1CC5496: var_A4 = 0
  loc_1CC549C: var_B4 = CDbl(0)
  loc_1CC54B3: If (var_C8.RecordCount > 0) Then
  loc_1CC54C3:   Call Proc_66_55_118430C(New)
  loc_1CC54CB:   Set var_14C = var_1A8
  loc_1CC54CE:   ' Referenced from: 1CCB62A
  loc_1CC54DD:   If Not(Me.Recordset15.EOF) Then
  loc_1CC556C:     var_260 = (var_C8.Fields.Item("Type").Value = "C") And (var_C8.Fields.Item("mFolioNoDocid").Value <> var_C8.Fields.Item("DocID").Value)
  loc_1CC558A:     If CBool(var_260) Then
  loc_1CC55D4:       Proc_6_7_F26918(var_214, CVar(var_C8.Fields.Item("ChkInDate")), "sELECT Min(Sno) FROM ROOMOCC WHERE chkindate=", var_2C4, -1, var_2C8, var_2CC)
  loc_1CC564A:       var_290 = 0 & var_214 & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DocId='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC5661:       unk_5407BC.Execute CStr(var_290 & "'"), var_2E0, var_2F0
  loc_1CC5669:       var_1A8 = var_2C8.Fields
  loc_1CC5671:       var_A4 = var_2CC.Item(var_B4)
  loc_1CC5679:       var_AC = var_2E0.Value
  loc_1CC56BA:       If (var_2F0 = 1) Then
  loc_1CC56D1:         var_214 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1CC573E:         var_270 = var_214 & var_C8.Fields.Item("ChkOutDate").Value & " " & var_C8.Fields.Item("ChkOutTime").Value & "',120) AND  PC.Bill_No='" 
  loc_1CC576D:         var_2A0 = -1 & CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), var_270, var_360)) 
  loc_1CC57A4:         var_310 = CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), var_270, var_360)) & "'" & "' AND PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC57CE:         unk_5407BC.Execute CStr(var_310 & "'" & CVar(var_D8) & " GROUP By PC.Bill_No "), var_2E0, 
  loc_1CC57D9:         Set var_D0 = var_2E0
  loc_1CC581A:       Else
  loc_1CC5858:         var_2AC = var_C8.Fields.Item("ChkInTime")
  loc_1CC586C:         var_240 = "hh:nn:ss"
  loc_1CC587C:         var_250 = Format(CVar(var_2AC), var_240)
  loc_1CC594E:         var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1CC5984:         var_340 = var_270 & var_C8.Fields.Item("ChkInDate").Value & " " & var_250 & "',120) and Convert(datetime,'" & var_C8.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1CC5994:         var_384 = CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), 1, 1)) 'String
  loc_1CC59B0:         var_40C = var_340 & "',120) AND  PC.Bill_No='" & var_384 & "' AND PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value & "'" 
  loc_1CC59BA:         var_42C = var_40C & CVar(var_D8) 
  loc_1CC59C3:         var_44C = var_42C & " GROUP By PC.Bill_No " 
  loc_1CC59D1:         unk_5407BC.Execute CStr(var_44C), var_46C, -1
  loc_1CC59DC:         Set var_D0 = var_470
  loc_1CC5A36:       End If
  loc_1CC5A39:     Else
  loc_1CC5A3F:       var_1D0 = 0
  loc_1CC5A9B:       unk_5407BC.Execute CStr("sELECT COUNT(*) FROM ROomOccDet WHERE DocId='" & var_C8.Fields.Item("DocID").Value & "'"), var_240, -1
  loc_1CC5AA3:       var_2A8 = var_2A8.Fields
  loc_1CC5AAB:       var_1D0 = var_2AC.Item(var_2AC)
  loc_1CC5AB3:       var_2B0 = var_2B0.Value
  loc_1CC5B09:       var_2E0 = var_C8.Fields.Item("DocID")
  loc_1CC5B4C:       If CBool((var_250 > 1) And (var_C8.Fields.Item("mFolioNoDocid").Value <> var_2E0.Value)) Then
  loc_1CC5BB1:         var_250 = Format(CVar(var_C8.Fields.Item("ChkInTime")), "hh:nn:ss")
  loc_1CC5BC5:         var_2B0 = var_C8.Fields
  loc_1CC5BF3:         var_2C8 = var_C8.Fields
  loc_1CC5BFB:         var_2CC = var_2C8.Item("DocID")
  loc_1CC5C1C:         var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.BillAmount END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.BillAmount END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1CC5C32:         var_280 = var_2E0.Value & var_C8.Fields.Item("ChkInDate").Value & " " & var_250 
  loc_1CC5C3B:         var_290 = var_280 & "',120) AND  PC.Bill_No='" 
  loc_1CC5C45:         var_2F0 = var_290 & CVar(Proc_6_38_E69628(CVar(var_2B0.Item("Bill_no")), 1, 1, var_250)) 
  loc_1CC5C55:         var_330 = var_2F0 & "' AND PC.FOLIONODOCID='" & var_2CC.Value 
  loc_1CC5C7F:         unk_5407BC.Execute CStr(var_330 & "'" & CVar(var_D8) & " GROUP By PC.Bill_No "), var_384, -1
  loc_1CC5C8A:         Set var_D0 = var_2E0
  loc_1CC5CD1:       Else
  loc_1CC5D0D:         If CBool(var_C8.Fields.Item("Type").Value <> "C") Then
  loc_1CC5D78:           If (var_C8.Fields.Item("mFolioNoDocid").Value = var_C8.Fields.Item("DocID").Value) Then
  loc_1CC5D8F:             var_1BC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.BillAmount END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.BillAmount END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1CC5DBA:             var_1C0 = Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), CStr(var_330 & "'" & CVar(var_D8) & " GROUP By PC.Bill_No "), var_280, -1, var_2B0)
  loc_1CC5DC5:             var_230 = CVar(var_2E0 & Proc_6_38_E69628(CVar(var_2B0.Item("Bill_no")), 1, 1, var_250) & "' AND PC.FOLIONODOCID='") 'String
  loc_1CC5E1C:             unk_5407BC.Execute CStr(var_230 & var_C8.Fields.Item("DocID").Value & "'" & CVar(var_D8) & " GROUP By PC.Bill_No "), var_470, 1
  loc_1CC5E27:             Set var_D0 = var_2B0
  loc_1CC5E56:           Else
  loc_1CC5E6A:             var_1BC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.BillAmount END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.BillAmount END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1CC5E95:             var_1C0 = Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), CStr(var_330 & "'" & CVar(var_D8) & " GROUP By PC.Bill_No "), var_2F0)
  loc_1CC5E99:             var_218 = -1 & var_1C0
  loc_1CC5EA0:             var_230 = CVar(var_2E0 & Proc_6_38_E69628(CVar(var_2B0.Item("Bill_no")), 1, 1, var_230 & var_C8.Fields.Item("DocID").Value & "'") & "' AND PC.FOLIONODOCID='") 'String
  loc_1CC5EC5:             var_214 = var_C8.Fields.Item("DocID").Value
  loc_1CC5F13:             Proc_6_7_F26918(var_290, CVar(var_C8.Fields.Item("ChkInDate")), var_230 & var_214 & "'" & CVar(var_D8) & " AND vdate >= ")
  loc_1CC5F24:             var_2C4 = var_2C8 & var_290 & " GROUP By PC.Bill_No " 
  loc_1CC5F32:             unk_5407BC.Execute CStr(var_2C4), 1, 
  loc_1CC5F3D:             Set var_D0 = var_2C8
  loc_1CC5F73:           End If
  loc_1CC5F73:         End If
  loc_1CC5F73:       End If
  loc_1CC5F73:     End If
  loc_1CC5F76:     var_100 = CDbl(0)
  loc_1CC5F7C:     var_108 = CDbl(0)
  loc_1CC5F82:     var_134 = CDbl(0)
  loc_1CC5F8C:     If (var_D0 Is Nothing) Then
  loc_1CC5F8F:       GoTo loc_1CCB622
  loc_1CC5F92:     End If
  loc_1CC5FA6:     If (var_D0.RecordCount > 0) Then
  loc_1CC5FD4:       var_F8 = CSng(var_D0.Fields.Item("LuxuryTax").Value)
  loc_1CC606D:       var_260 = (var_C8.Fields.Item("Type").Value = "C") And (var_C8.Fields.Item("mFolioNoDocid").Value <> var_C8.Fields.Item("DocID").Value)
  loc_1CC608B:       If CBool(var_260) Then
  loc_1CC60D5:         Proc_6_7_F26918(var_214, CVar(var_C8.Fields.Item("ChkInDate")), "sELECT Min(Sno) FROM ROOMOCC WHERE chkindate=", var_2C4, -1, var_2C8, var_2CC)
  loc_1CC614B:         var_290 = 0 & var_214 & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC6162:         unk_5407BC.Execute CStr(var_290 & "'"), var_2E0, var_2F0
  loc_1CC616A:         var_F8 = var_2C8.Fields
  loc_1CC6172:         var_108 = var_2CC.Item(var_134)
  loc_1CC617A:         var_100 = var_2E0.Value
  loc_1CC61BB:         If (var_2F0 = 1) Then
  loc_1CC6210:           var_240 = "hh:nn:ss"
  loc_1CC624B:           Proc_6_7_F26918(var_2C4, CVar(var_C8.Fields.Item("ChkInDate")))
  loc_1CC6276:           Proc_6_7_F26918(var_330, CVar(var_C8.Fields.Item("ChkOutDate")))
  loc_1CC62E1:           var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1CC62EC:           var_214 = var_C8.Fields.Item("ChkOutDate").Value & " " 
  loc_1CC62F7:           var_280 = 0 & var_214 & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_214 & Format(CVar(var_C8.Fields.Item("ChkOutTime")), var_240) 
  loc_1CC632A:           var_394 = var_280 & "',120) AND PC.VDATE BETWEEN " & var_2C4 & " AND " & var_330 & " AND  PC.Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), 1)) 
  loc_1CC6343:           var_40C = var_394 & "' and PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No" 
  loc_1CC6351:           unk_5407BC.Execute CStr(var_40C), var_42C, -1
  loc_1CC635C:           Set var_140 = var_470
  loc_1CC63D6:           Proc_6_39_E7D3A0(var_214, CVar(var_D0.Fields.Item("TotalTax")))
  loc_1CC6412:           Proc_6_39_E7D3A0(var_214, CVar(var_D0.Fields.Item("TotalTax")), CSng(var_214))
  loc_1CC643C:           If (var_140.RecordCount > 0) Then
  loc_1CC6465:             Proc_6_39_E7D3A0(var_214, CVar(var_140.Fields.Item("TotalTax")), CSng(var_214))
  loc_1CC6493:             Proc_6_39_E7D3A0(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC64AF:             If (var_470 > var_240) Then
  loc_1CC64D8:               Proc_6_39_E7D3A0(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC64E1:               var_108 = CSng(var_214)
  loc_1CC64EE:             End If
  loc_1CC6514:             Proc_6_39_E7D3A0(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC6542:             Proc_6_39_E7D3A0(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC655E:             If (var_108 > var_240) Then
  loc_1CC6587:               Proc_6_39_E7D3A0(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC65B5:               Proc_6_39_E7D3A0(var_240, CVar(var_D0.Fields.Item("TotalTax")))
  loc_1CC65BD:               var_250 = (var_214 - var_240)
  loc_1CC65C2:               var_134 = CSng(Format(CVar(var_C8.Fields.Item("ChkOutTime")), var_240))
  loc_1CC65DA:             Else
  loc_1CC65DD:               var_134 = CDbl(0)
  loc_1CC65E0:             End If
  loc_1CC666D:             Proc_6_7_F26918(var_2C4, CVar(var_C8.Fields.Item("ChkInDate")), 1, 1)
  loc_1CC6698:             Proc_6_7_F26918(var_330, CVar(var_C8.Fields.Item("ChkOutDate")), var_134)
  loc_1CC66F5:             var_41C = 0
  loc_1CC6712:             var_270 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1CC6728:             var_280 = 0 & var_C8.Fields.Item("ChkOutDate").Value & " " & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1CC6758:             var_384 = CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), var_134)) 'String
  loc_1CC6764:             var_3B4 = var_280 & "',120) AND PC.VDATE BETWEEN " & var_2C4 & " AND " & var_330 & " AND  PC.Bill_No='" & var_384 & "' and PC.FOLIONODOCID='" 
  loc_1CC676B:             var_3EC = var_3B4 & var_C8.Fields.Item("DocID").Value 
  loc_1CC6782:             unk_5407BC.Execute CStr(var_3EC & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_42C, -1
  loc_1CC678A:             var_470 = var_470.Fields
  loc_1CC6792:             var_41C = var_474.Item(var_474)
  loc_1CC679A:             var_478 = var_478.Value
  loc_1CC67A4:             var_B8 = CLng(var_44C)
  loc_1CC6801:           Else
  loc_1CC6806:             var_B8 = 0
  loc_1CC6809:           End If
  loc_1CC680C:         Else
  loc_1CC685E:           var_240 = "hh:nn:ss"
  loc_1CC6900:           Proc_6_7_F26918(var_384, CVar(var_C8.Fields.Item("ChkInDate")), 1, 1, 1)
  loc_1CC692B:           Proc_6_7_F26918(var_3EC, CVar(var_C8.Fields.Item("ChkOutDate")), 1, var_B8)
  loc_1CC694F:           var_44C = CVar(var_C8.Fields.Item("Bill_no")) 'Address
  loc_1CC6996:           var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1CC69A1:           var_214 = var_C8.Fields.Item("ChkInDate").Value & " " 
  loc_1CC69AC:           var_280 = 0 & var_214 & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_214 & Format(CVar(var_C8.Fields.Item("ChkInTime")), var_240) 
  loc_1CC69CC:           var_340 = var_280 & "',120) and Convert(datetime,'" & var_C8.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1CC69FF:           var_488 = var_340 & "',120) AND PC.VDATE BETWEEN " & var_384 & " AND " & var_3EC & " AND  PC.Bill_No='" & CVar(Proc_6_38_E69628(var_44C, var_B8)) 
  loc_1CC6A18:           var_4DC = var_488 & "' and PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No" 
  loc_1CC6A26:           unk_5407BC.Execute CStr(var_4DC), var_4FC, -1
  loc_1CC6A31:           Set var_140 = var_500
  loc_1CC6AC1:           Proc_6_39_E7D3A0(var_214, CVar(var_D0.Fields.Item("TotalTax")), var_500)
  loc_1CC6AFD:           Proc_6_39_E7D3A0(var_214, CVar(var_D0.Fields.Item("TotalTax")), CSng(var_214))
  loc_1CC6B27:           If (var_140.RecordCount > 0) Then
  loc_1CC6B50:             Proc_6_39_E7D3A0(var_214, CVar(var_140.Fields.Item("TotalTax")), CSng(var_214))
  loc_1CC6B7E:             Proc_6_39_E7D3A0(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC6B9A:             If (var_44C > var_240) Then
  loc_1CC6BC3:               Proc_6_39_E7D3A0(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC6BCC:               var_108 = CSng(var_214)
  loc_1CC6BD9:             End If
  loc_1CC6BFF:             Proc_6_39_E7D3A0(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC6C08:             var_108 = CSng(var_214)
  loc_1CC6C3B:             Proc_6_39_E7D3A0(var_214, CVar(var_140.Fields.Item("TotalTax")), var_108)
  loc_1CC6C69:             Proc_6_39_E7D3A0(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC6C85:             If (var_108 > var_240) Then
  loc_1CC6CAE:               Proc_6_39_E7D3A0(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC6CDC:               Proc_6_39_E7D3A0(var_240, CVar(var_D0.Fields.Item("TotalTax")))
  loc_1CC6CE4:               var_250 = (var_214 - var_240)
  loc_1CC6CE9:               var_134 = CSng(Format(CVar(var_C8.Fields.Item("ChkInTime")), var_240))
  loc_1CC6D01:             Else
  loc_1CC6D04:               var_134 = CDbl(0)
  loc_1CC6D07:             End If
  loc_1CC6D45:             var_2AC = var_C8.Fields.Item("ChkInTime")
  loc_1CC6D59:             var_240 = "hh:nn:ss"
  loc_1CC6D69:             var_250 = Format(CVar(var_2AC), var_240)
  loc_1CC6DFB:             Proc_6_7_F26918(var_384, CVar(var_C8.Fields.Item("ChkInDate")), 1, 1, 1)
  loc_1CC6E26:             Proc_6_7_F26918(var_3EC, CVar(var_C8.Fields.Item("ChkOutDate")), 1)
  loc_1CC6E3A:             var_470 = var_C8.Fields
  loc_1CC6E42:             var_474 = var_470.Item("Bill_no")
  loc_1CC6E83:             var_514 = 0
  loc_1CC6EA0:             var_270 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1CC6EB6:             var_280 = 0 & var_C8.Fields.Item("ChkInDate").Value & " " & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("ChkInDate").Value & " " & var_250 
  loc_1CC6ED6:             var_340 = var_280 & "',120) and Convert(datetime,'" & var_C8.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1CC6EDF:             var_360 = var_340 & "',120) AND PC.VDATE BETWEEN " 
  loc_1CC6F06:             var_46C = CVar(Proc_6_38_E69628(CVar(var_474), var_134)) 'String
  loc_1CC6F19:             var_4BC = var_360 & var_384 & " AND " & var_3EC & " AND  PC.Bill_No='" & var_46C & "' and PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC6F30:             unk_5407BC.Execute CStr(var_4BC & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_4FC, -1
  loc_1CC6F38:             var_500 = var_500.Fields
  loc_1CC6F40:             var_514 = var_504.Item(var_504)
  loc_1CC6F48:             var_518 = var_518.Value
  loc_1CC6F52:             var_B8 = CLng(var_528)
  loc_1CC6FC5:           Else
  loc_1CC6FCA:             var_B8 = 0
  loc_1CC6FCD:           End If
  loc_1CC6FCD:         End If
  loc_1CC6FD0:       Else
  loc_1CC6FD6:         var_1D0 = 0
  loc_1CC7032:         unk_5407BC.Execute CStr("sELECT COUNT(*) FROM RoomOccDet WHERE Docid='" & var_C8.Fields.Item("DocID").Value & "'"), var_240, -1
  loc_1CC703A:         var_2A8 = var_2A8.Fields
  loc_1CC7042:         var_1D0 = var_2AC.Item(var_2AC)
  loc_1CC704A:         var_2B0 = var_2B0.Value
  loc_1CC70A0:         var_2E0 = var_C8.Fields.Item("DocID")
  loc_1CC70E3:         If CBool((var_250 > 1) And (var_C8.Fields.Item("mFolioNoDocid").Value <> var_2E0.Value)) Then
  loc_1CC7138:           var_240 = "hh:nn:ss"
  loc_1CC7148:           var_250 = Format(CVar(var_C8.Fields.Item("ChkInTime")), var_240)
  loc_1CC715C:           var_2B0 = var_C8.Fields
  loc_1CC716C:           var_2A0 = CVar(var_2B0.Item("Bill_no")) 'Address
  loc_1CC718A:           var_2C8 = var_C8.Fields
  loc_1CC71B3:           var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS TotalTax,Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(PC.Vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1CC71BE:           var_214 = var_C8.Fields.Item("ChkInDate").Value & " " 
  loc_1CC71C5:           var_260 = var_214 & var_250 
  loc_1CC71E5:           var_310 = var_2E0.Value & var_260 & "',120) AND PC.Bill_No='" & CVar(Proc_6_38_E69628(var_2A0, 1, 1, var_250)) & "' AND PC.FOLIONODOCID='" 
  loc_1CC7203:           unk_5407BC.Execute CStr(var_310 & var_2C8.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_360, -1
  loc_1CC720E:           Set var_140 = var_2E0
  loc_1CC7274:           Proc_6_39_E7D3A0(var_214, CVar(var_D0.Fields.Item("TotalTax")), var_2E0)
  loc_1CC72B0:           Proc_6_39_E7D3A0(var_214, CVar(var_D0.Fields.Item("TotalTax")), CSng(var_214))
  loc_1CC72DA:           If (var_140.RecordCount > 0) Then
  loc_1CC7303:             Proc_6_39_E7D3A0(var_214, CVar(var_140.Fields.Item("TotalTax")), CSng(var_214))
  loc_1CC7331:             Proc_6_39_E7D3A0(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC734D:             If (var_B8 > var_240) Then
  loc_1CC7376:               Proc_6_39_E7D3A0(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC737F:               var_108 = CSng(var_214)
  loc_1CC738C:             End If
  loc_1CC73B2:             Proc_6_39_E7D3A0(var_214, CVar(var_140.Fields.Item("TotalTax")), var_108)
  loc_1CC73E0:             Proc_6_39_E7D3A0(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC73FC:             If (var_B8 > var_240) Then
  loc_1CC7425:               Proc_6_39_E7D3A0(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC7453:               Proc_6_39_E7D3A0(var_240, CVar(var_D0.Fields.Item("TotalTax")))
  loc_1CC745B:               var_250 = (var_214 - var_240)
  loc_1CC7460:               var_134 = CSng(var_250)
  loc_1CC7478:             Else
  loc_1CC747B:               var_134 = CDbl(0)
  loc_1CC747E:             End If
  loc_1CC74A4:             Proc_6_39_E7D3A0(var_214, CVar(var_140.Fields.Item("TotDays")), var_134)
  loc_1CC74AE:             var_B8 = CLng(var_214)
  loc_1CC74BE:           Else
  loc_1CC74C3:             var_B8 = 0
  loc_1CC74C6:           End If
  loc_1CC74C9:         Else
  loc_1CC7505:           If CBool(var_C8.Fields.Item("Type").Value <> "C") Then
  loc_1CC7570:             If (var_C8.Fields.Item("mFolioNoDocid").Value = var_C8.Fields.Item("DocID").Value) Then
  loc_1CC7587:               var_1BC = "Select SUM(PC.AMTDR-PC.AMTCR) AS TotalTax,Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1CC75B2:               var_1C0 = Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), CStr(var_310 & var_2C8.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_260, -1, var_2B0)
  loc_1CC75EA:               var_240 = CVar(var_B8 & Proc_6_38_E69628(var_2A0, 1, 1, var_250) & "' and PC.FOLIONODOCID='") & var_C8.Fields.Item("DocID").Value 
  loc_1CC7601:               unk_5407BC.Execute CStr(var_240 & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_B8, var_134
  loc_1CC760C:               Set var_148 = var_2B0
  loc_1CC7637:             Else
  loc_1CC764B:               var_1BC = "Select SUM(PC.AMTDR-PC.AMTCR) AS TotalTax,Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1CC7676:               var_1C0 = Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), CStr(var_310 & var_2C8.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_2A0)
  loc_1CC767A:               var_218 = -1 & var_1C0
  loc_1CC7681:               var_230 = CVar(var_B8 & Proc_6_38_E69628(var_2A0, 1, 1, var_240 & "' and R.Nature='Room Charge' GROUP By PC.Bill_No") & "' and PC.FOLIONODOCID='") 'String
  loc_1CC76A6:               var_214 = var_C8.Fields.Item("DocID").Value
  loc_1CC76AE:               var_240 = var_230 & var_214 
  loc_1CC76E1:               Proc_6_7_F26918(var_2E0.Value, CVar(var_C8.Fields.Item("ChkInDate")), var_240 & "' And PC.Vdate >= ")
  loc_1CC76F2:               var_290 = var_2C8 & var_2E0.Value & " And R.Nature='Room Charge' GROUP By PC.Bill_No" 
  loc_1CC7700:               unk_5407BC.Execute CStr(var_290), var_528, 
  loc_1CC770B:               Set var_148 = var_2C8
  loc_1CC773D:             End If
  loc_1CC775C:             var_1B8 = CVar(var_D0.Fields.Item("TotalTax")) 'Address
  loc_1CC7763:             Proc_6_39_E7D3A0(var_214)
  loc_1CC779F:             Proc_6_39_E7D3A0(var_214, CVar(var_D0.Fields.Item("TotalTax")))
  loc_1CC77C9:             If (var_148.RecordCount > 0) Then
  loc_1CC77F2:               Proc_6_39_E7D3A0(var_214, CVar(var_148.Fields.Item("TotalTax")), CSng(var_214))
  loc_1CC7820:               Proc_6_39_E7D3A0(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC783C:               If (CSng(var_214) > var_240) Then
  loc_1CC7865:                 Proc_6_39_E7D3A0(var_214, CVar(var_148.Fields.Item("TotalTax")))
  loc_1CC786E:                 var_108 = CSng(var_214)
  loc_1CC787B:               End If
  loc_1CC78A1:               Proc_6_39_E7D3A0(var_214, CVar(var_148.Fields.Item("TotalTax")))
  loc_1CC78CF:               Proc_6_39_E7D3A0(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC78EB:               If (var_108 > var_240) Then
  loc_1CC7914:                 Proc_6_39_E7D3A0(var_214, CVar(var_148.Fields.Item("TotalTax")))
  loc_1CC7933:                 var_2AC = var_D0.Fields.Item("TotalTax")
  loc_1CC7942:                 Proc_6_39_E7D3A0(var_240, CVar(var_2AC))
  loc_1CC794A:                 var_250 = (var_214 - var_240)
  loc_1CC794F:                 var_134 = CSng(var_240 & "' And PC.Vdate >= ")
  loc_1CC7967:               Else
  loc_1CC796A:                 var_134 = CDbl(0)
  loc_1CC796D:               End If
  loc_1CC7993:               Proc_6_39_E7D3A0(var_214, CVar(var_148.Fields.Item("TotDays")), var_134)
  loc_1CC799D:               var_B8 = CLng(var_214)
  loc_1CC79AD:             Else
  loc_1CC79B2:               var_B8 = 0
  loc_1CC79B5:             End If
  loc_1CC79B8:           Else
  loc_1CC79BB:           Else
  loc_1CC79BB:           End If
  loc_1CC79BB:         End If
  loc_1CC79BE:       Else
  loc_1CC79C1:         var_F8 = CDbl(0)
  loc_1CC79CA:         var_1D0 = 0
  loc_1CC7A26:         unk_5407BC.Execute CStr("sELECT COUNT(*) FROM RoomOcc WHERE DOCID='" & var_C8.Fields.Item("DocID").Value & "'"), var_240, -1
  loc_1CC7A2E:         var_2A8 = var_2A8.Fields
  loc_1CC7A36:         var_1D0 = var_2AC.Item(var_2AC)
  loc_1CC7A3E:         var_2B0 = var_2B0.Value
  loc_1CC7A62:         var_2B4 = var_C8.Fields
  loc_1CC7A6A:         var_2C8 = var_2B4.Item("mFolioNoDocid")
  loc_1CC7AA8:         var_2A0 = (var_240 & "' And PC.Vdate >= " > 1) And (var_2C8.Value <> var_C8.Fields.Item("DocID").Value)
  loc_1CC7AD7:         If CBool(var_2A0) Then
  loc_1CC7B31:           var_230 = CVar("Select Count(*) from PayCharge where PayCode='" & MemVar_1F95070 & "LT' And FOLIONODOCID='") & var_C8.Fields.Item("DocID").Value 
  loc_1CC7B66:           var_260 = CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), var_230 & "' and Bill_no='", var_290, -1, var_2B0, var_2B4)) 'String
  loc_1CC7B72:           var_280 = 0 & (var_230 & "' and Bill_no='" & "' And PC.Vdate >= " > 1) & "'" 
  loc_1CC7B80:           unk_5407BC.Execute CStr(var_280), var_2C8, var_2A0
  loc_1CC7B88:           var_250 = var_2B0.Fields
  loc_1CC7B90:           var_B8 = var_2B4.Item(var_F8)
  loc_1CC7B98:            = var_2C8.Value
  loc_1CC7BD5:           If (var_2A0 = 0) Then
  loc_1CC7BEC:             var_1BC = "Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  PC.Bill_No='"
  loc_1CC7C17:             var_1C0 = Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), "Select Count(*) from PayCharge where PayCode='" & MemVar_1F95070, var_280)
  loc_1CC7C1B:             var_218 = -1 & var_1C0
  loc_1CC7C47:             var_214 = var_C8.Fields.Item("DocID").Value
  loc_1CC7C58:             var_250 = CVar(var_B8 & Proc_6_38_E69628(var_2A0, 1, 1, var_250) & "' and PC.FOLIONODOCID='") & var_214 & "' and PC.PAYCode in ('" 
  loc_1CC7C79:             unk_5407BC.Execute CStr(var_250 & CVar(MemVar_1F95070) & "LT') GROUP By PC.Bill_No"), var_2B0, 
  loc_1CC7C84:             Set var_150 = var_2B0
  loc_1CC7CC4:             If (var_150.RecordCount > 0) Then
  loc_1CC7CE6:               var_1B8 = CVar(var_150.Fields.Item("TotalTax")) 'Address
  loc_1CC7CED:               Proc_6_39_E7D3A0(var_214)
  loc_1CC7CF6:               var_108 = CSng(var_214)
  loc_1CC7D29:               Proc_6_39_E7D3A0(var_214, CVar(var_150.Fields.Item("TotalTax")))
  loc_1CC7D32:               var_100 = CSng(var_214)
  loc_1CC7D42:             Else
  loc_1CC7D45:               var_108 = CDbl(0)
  loc_1CC7D4B:               var_100 = CDbl(0)
  loc_1CC7D4E:             End If
  loc_1CC7D51:           Else
  loc_1CC7DCA:             var_2B0 = var_C8.Fields
  loc_1CC7DDA:             var_2A0 = var_2B0.Item("ChkOutDate").Value
  loc_1CC7DEE:             var_2C8 = var_C8.Fields
  loc_1CC7DF6:             var_2CC = var_2C8.Item("ChkOutTime")
  loc_1CC7E13:             var_2F0 = CVar(var_2CC) 'Address
  loc_1CC7E2E:             var_2E0 = var_C8.Fields
  loc_1CC7E36:             var_364 = var_2E0.Item("Bill_no")
  loc_1CC7E3E:             var_374 = CVar(var_364) 'Address
  loc_1CC7E85:             var_270 = CVar("Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1CC7E90:             var_214 = var_C8.Fields.Item("ChkInDate").Value & " " 
  loc_1CC7E97:             var_260 = var_214 & Format(CVar(var_C8.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1CC7E9B:             var_280 = Format(CVar(var_C8.Fields.Item("ChkInTime")), "hh:nn:ss") & CVar(MemVar_1F95070) & "LT') GROUP By PC.Bill_No" & var_260 
  loc_1CC7EB0:             var_2C4 = var_2A0 & " " 
  loc_1CC7EC4:             var_360 = var_280 & "',120) and Convert(datetime,'" & var_2C4 & Format(var_2F0, "hh:nn:ss") & "',120) AND PC.Bill_No='" 
  loc_1CC7EDE:             var_3EC = var_360 & CVar(Proc_6_38_E69628(var_374, 1, 1, 1, 1)) & "' and PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC7EF1:             var_42C = var_3EC & "' and PC.PAYCode in ('" & CVar(MemVar_1F95070) 
  loc_1CC7EFA:             var_44C = var_42C & "LT') GROUP By PC.Bill_No" 
  loc_1CC7F08:             unk_5407BC.Execute CStr(var_44C), var_46C, -1
  loc_1CC7F13:             Set var_150 = var_470
  loc_1CC7F81:             If (var_150.RecordCount > 0) Then
  loc_1CC7FAA:               Proc_6_39_E7D3A0(var_214, CVar(var_150.Fields.Item("TotalTax")), var_470, var_100)
  loc_1CC7FE6:               Proc_6_39_E7D3A0(var_214, CVar(var_150.Fields.Item("TotalTax")), CSng(var_214), CSng(var_214))
  loc_1CC7FEF:               var_100 = CSng(var_214)
  loc_1CC7FFF:             Else
  loc_1CC8002:               var_108 = CDbl(0)
  loc_1CC8008:               var_100 = CDbl(0)
  loc_1CC800B:             End If
  loc_1CC800B:           End If
  loc_1CC800E:         Else
  loc_1CC804A:           If CBool(var_C8.Fields.Item("Type").Value <> "C") Then
  loc_1CC80B5:             If (var_C8.Fields.Item("mFolioNoDocid").Value = var_C8.Fields.Item("DocID").Value) Then
  loc_1CC80CC:               var_1BC = "Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1CC80F7:               var_1C0 = Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), CStr(var_44C), var_260, -1, var_2B0, var_100)
  loc_1CC812F:               var_240 = CVar(var_108 & Proc_6_38_E69628(var_374, 1, 1, 1, 1) & "' and PC.FOLIONODOCID='") & var_C8.Fields.Item("DocID").Value 
  loc_1CC8146:               unk_5407BC.Execute CStr(var_240 & "' And R.Nature='Room Charge' GROUP By PC.Bill_No"), var_100, var_100
  loc_1CC8151:               Set var_150 = var_2B0
  loc_1CC817C:             Else
  loc_1CC8190:               var_1BC = "Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1CC81B2:               var_1B8 = CVar(var_C8.Fields.Item("Bill_no")) 'Address
  loc_1CC81BB:               var_1C0 = Proc_6_38_E69628(var_1B8, CStr(var_44C), var_2A0, -1)
  loc_1CC81EB:               var_214 = var_C8.Fields.Item("DocID").Value
  loc_1CC81FC:               var_250 = CVar(var_2C8 & Proc_6_38_E69628(var_374, 1, 1, 1, 1) & "' and PC.FOLIONODOCID='") & var_214 & "' And vdate >= " 
  loc_1CC8226:               Proc_6_7_F26918(var_250 & CVar(MemVar_1F95070) & "LT') GROUP By PC.Bill_No", CVar(var_C8.Fields.Item("ChkInDate")), var_250)
  loc_1CC8237:               var_290 = var_108 & var_250 & CVar(MemVar_1F95070) & "LT') GROUP By PC.Bill_No" & " And R.Nature='Room Charge' GROUP By PC.Bill_No" 
  loc_1CC8245:               unk_5407BC.Execute CStr(var_290), var_1B8, 
  loc_1CC8250:               Set var_150 = var_2C8
  loc_1CC8282:             End If
  loc_1CC8296:             If (var_150.RecordCount > 0) Then
  loc_1CC82B8:               var_1B8 = CVar(var_150.Fields.Item("TotalTax")) 'Address
  loc_1CC82BF:               Proc_6_39_E7D3A0(var_214)
  loc_1CC82C8:               var_108 = CSng(var_214)
  loc_1CC82FB:               Proc_6_39_E7D3A0(var_214, CVar(var_150.Fields.Item("TotalTax")))
  loc_1CC8304:               var_100 = CSng(var_214)
  loc_1CC8314:             Else
  loc_1CC8317:               var_108 = CDbl(0)
  loc_1CC831D:               var_100 = CDbl(0)
  loc_1CC8320:             End If
  loc_1CC8320:           End If
  loc_1CC8320:         End If
  loc_1CC8320:       End If
  loc_1CC8327:       If (var_F8 = CDbl(0)) Then
  loc_1CC83B6:         var_260 = (var_C8.Fields.Item("Type").Value = "C") And (var_C8.Fields.Item("mFolioNoDocid").Value <> var_C8.Fields.Item("DocID").Value)
  loc_1CC83D4:         If CBool(var_260) Then
  loc_1CC841E:           Proc_6_7_F26918(var_214, CVar(var_C8.Fields.Item("ChkInDate")), "sELECT Min(Sno) FROM ROOMOCC WHERE chkindate=", var_2C4, -1, var_2C8, var_2CC)
  loc_1CC8494:           var_290 = 0 & var_214 & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC84AB:           unk_5407BC.Execute CStr(var_290 & "'"), var_2E0, var_2F0
  loc_1CC84B3:           var_100 = var_2C8.Fields
  loc_1CC84BB:           var_100 = var_2CC.Item(var_108)
  loc_1CC84C3:           var_108 = var_2E0.Value
  loc_1CC8504:           If (var_2F0 = 1) Then
  loc_1CC85D4:             var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1CC85EA:             var_280 = 0 & var_C8.Fields.Item("ChkOutDate").Value & " " & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1CC8606:             var_310 = var_280 & "',120) AND PC.BIll_NO='" & CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), 1)) & "' and PC.FOLIONODOCID='" 
  loc_1CC8624:             unk_5407BC.Execute CStr(var_310 & var_C8.Fields.Item("DocID").Value & "' AND R.Nature='Room Charge' GROUP By PC.BILL_NO"), var_360, -1
  loc_1CC862F:             Set var_D0 = var_2E0
  loc_1CC8683:             If (var_D0.RecordCount > 0) Then
  loc_1CC8745:               var_350 = 0
  loc_1CC8762:               var_270 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1CC8778:               var_280 = 0 & var_C8.Fields.Item("ChkOutDate").Value & " " & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1CC8794:               var_310 = var_280 & "',120) AND PC.BIll_NO='" & CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), 1, 1)) & "' and PC.FOLIONODOCID='" 
  loc_1CC87B2:               unk_5407BC.Execute CStr(var_310 & var_C8.Fields.Item("DocID").Value & "' AND R.Nature='Room Charge' and PC.AMTDR>0"), var_360, -1
  loc_1CC87BA:               var_2E0 = var_2E0.Fields
  loc_1CC87C2:               var_350 = var_364.Item(var_364)
  loc_1CC87CA:               var_3B8 = var_3B8.Value
  loc_1CC87D4:               var_B8 = CLng(var_374)
  loc_1CC881A:             End If
  loc_1CC882E:             If (var_D0.RecordCount = 0) Then
  loc_1CC8831:               GoTo loc_1CCB622
  loc_1CC8834:             End If
  loc_1CC8837:           Else
  loc_1CC896B:             var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) between Convert(datetime,'") 'String
  loc_1CC8981:             var_280 = 0 & var_C8.Fields.Item("ChkInDate").Value & " " & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1CC89A1:             var_340 = var_280 & "',120) and Convert(datetime,'" & var_C8.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1CC89BD:             var_3B4 = var_340 & "',120) AND PC.BIll_NO='" & CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), 1, 1, 1, 1)) & "' and PC.FOLIONODOCID='" 
  loc_1CC89DB:             unk_5407BC.Execute CStr(var_3B4 & var_C8.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.BILL_NO"), var_42C, -1
  loc_1CC8A50:             If (var_470.RecordCount > 0) Then
  loc_1CC8A91:               var_2AC = var_C8.Fields.Item("ChkInTime")
  loc_1CC8AA5:               var_240 = "hh:nn:ss"
  loc_1CC8AB5:               var_250 = Format(CVar(var_2AC), var_240)
  loc_1CC8B0C:               var_310 = "hh:nn:ss"
  loc_1CC8B1C:               var_320 = Format(CVar(var_C8.Fields.Item("ChkOutTime")), var_310)
  loc_1CC8B79:               var_43C = 0
  loc_1CC8B96:               var_270 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) between Convert(datetime,'") 'String
  loc_1CC8BAC:               var_280 = 0 & var_C8.Fields.Item("ChkInDate").Value & " " & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("ChkInDate").Value & " " & var_250 
  loc_1CC8BD5:               var_360 = var_280 & "',120) and Convert(datetime,'" & var_C8.Fields.Item("ChkOutDate").Value & " " & var_320 & "',120) AND PC.BIll_NO='" 
  loc_1CC8BEF:               var_3EC = var_360 & CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), 1, 1, 1, 1)) & "' and PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC8C06:               unk_5407BC.Execute CStr(var_3EC & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_42C, -1
  loc_1CC8C0E:               var_470 = var_470.Fields
  loc_1CC8C16:               var_43C = var_474.Item(var_474)
  loc_1CC8C1E:               var_478 = var_478.Value
  loc_1CC8C28:               var_B8 = CLng(var_44C)
  loc_1CC8C84:             End If
  loc_1CC8C84:           End If
  loc_1CC8C87:         Else
  loc_1CC8C8D:           var_1D0 = 0
  loc_1CC8CE9:           unk_5407BC.Execute CStr("sELECT COUNT(*) FROM RoomOccDet WHERE DOCID='" & var_C8.Fields.Item("DocID").Value & "'"), var_240, -1
  loc_1CC8CF1:           var_2A8 = var_2A8.Fields
  loc_1CC8CF9:           var_1D0 = var_2AC.Item(var_2AC)
  loc_1CC8D01:           var_2B0 = var_2B0.Value
  loc_1CC8D2D:           var_2C8 = var_C8.Fields.Item("mFolioNoDocid")
  loc_1CC8D4F:           var_2CC = var_C8.Fields
  loc_1CC8D9A:           If CBool((var_250 > 1) And (var_2C8.Value <> var_2CC.Item("DocID").Value)) Then
  loc_1CC8E3F:             var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1CC8E55:             var_280 = var_2CC.Item("DocID").Value & var_C8.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1CC8E6E:             var_2F0 = var_280 & "',120) AND PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value & "' AND R.Nature='Room Charge' GROUP By PC.BILL_NO" 
  loc_1CC8E7C:             unk_5407BC.Execute CStr(var_2F0), var_310, -1
  loc_1CC8ECD:             If (var_2C8.RecordCount > 0) Then
  loc_1CC8F49:               var_2B0 = var_C8.Fields
  loc_1CC8F59:               var_2A0 = var_2B0.Item("DocID").Value
  loc_1CC8F64:               var_2DC = 0
  loc_1CC8F81:               var_270 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1CC8F93:               var_260 = var_C8.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1CC8FB0:               var_2F0 = var_2CC.Item("DocID").Value & var_260 & "',120) AND PC.FOLIONODOCID='" & var_2A0 & "' AND R.Nature='Room Charge' and PC.AMTDR>0" 
  loc_1CC8FBE:               unk_5407BC.Execute CStr(var_2F0), var_310, -1
  loc_1CC8FC6:               var_2C8 = var_2C8.Fields
  loc_1CC8FCE:               var_2DC = var_2CC.Item(var_2CC)
  loc_1CC8FD6:               var_2E0 = var_2E0.Value
  loc_1CC8FE0:               var_B8 = CLng(var_320)
  loc_1CC9018:             End If
  loc_1CC901B:           Else
  loc_1CC9057:             If CBool(var_C8.Fields.Item("Type").Value <> "C") Then
  loc_1CC90C2:               If (var_C8.Fields.Item("mFolioNoDocid").Value = var_C8.Fields.Item("DocID").Value) Then
  loc_1CC90D9:                 var_1BC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.BIll_NO='"
  loc_1CC9104:                 var_1C0 = Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), CStr(var_2F0), var_260, -1, var_2B0, var_B8, var_320)
  loc_1CC910F:                 var_230 = CVar(1 & Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), 1, 1, 1, 1) & "' and PC.FOLIONODOCID='") 'String
  loc_1CC912C:                 var_2AC = var_C8.Fields.Item("DocID")
  loc_1CC9145:                 var_250 = var_230 & var_2AC.Value & "' and R.Nature='Room Charge' GROUP By PC.BILL_NO" 
  loc_1CC9153:                 unk_5407BC.Execute CStr(var_250), 1, var_2C8
  loc_1CC919A:                 If (var_2B0.RecordCount > 0) Then
  loc_1CC91A3:                   var_1A4 = 0
  loc_1CC91C0:                   var_214 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.FOLIONODOCID='") 'String
  loc_1CC9204:                   unk_5407BC.Execute CStr(var_214 & var_C8.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_250, -1
  loc_1CC920C:                   var_2A8 = var_2A8.Fields
  loc_1CC9214:                   var_1A4 = var_2AC.Item(var_2AC)
  loc_1CC921C:                   var_2B0 = var_2B0.Value
  loc_1CC9226:                   var_B8 = CLng(var_260)
  loc_1CC9248:                 End If
  loc_1CC924B:               Else
  loc_1CC925F:                 var_1BC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.BIll_NO='"
  loc_1CC928A:                 var_1C0 = Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), CStr(var_214 & var_C8.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_2A0, -1, var_2C8)
  loc_1CC9295:                 var_230 = CVar(var_B8 & Proc_6_38_E69628(CVar(var_C8.Fields.Item("Bill_no")), 1, 1, 1, 1) & "' and PC.FOLIONODOCID='") 'String
  loc_1CC92CB:                 var_250 = var_230 & var_C8.Fields.Item("DocID").Value & "' And vdate >= " 
  loc_1CC92DE:                 var_2B0 = var_C8.Fields
  loc_1CC92E6:                 var_2B4 = var_2B0.Item("ChkInDate")
  loc_1CC92EE:                 var_260 = CVar(var_2B4) 'Address
  loc_1CC92F5:                 Proc_6_7_F26918(var_2CC.Item("DocID").Value, var_260, var_250, var_260)
  loc_1CC9306:                 var_290 = 1 & var_2CC.Item("DocID").Value & " And R.Nature='Room Charge' GROUP By PC.BILL_NO" 
  loc_1CC9314:                 unk_5407BC.Execute CStr(var_290), 1, var_250
  loc_1CC931F:                 Set var_D0 = var_2C8
  loc_1CC9365:                 If (var_D0.RecordCount > 0) Then
  loc_1CC938B:                   var_214 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.FOLIONODOCID='") 'String
  loc_1CC93BC:                   var_184 = "' And vdate >= "
  loc_1CC93EB:                   Proc_6_7_F26918(var_260, CVar(var_C8.Fields.Item("ChkInDate")), var_214 & var_C8.Fields.Item("DocID").Value & var_184, var_290, -1)
  loc_1CC940A:                   unk_5407BC.Execute CStr(var_2B0 & var_260 & " And R.Nature='Room Charge' and PC.AMTDR>0"), var_2B4, 0
  loc_1CC941A:                    = var_2B4.Item(var_2A0)
  loc_1CC9422:                    = var_2B0.Fields.Value
  loc_1CC942C:                   var_B8 = CLng(var_2A0)
  loc_1CC9458:                 End If
  loc_1CC9458:               End If
  loc_1CC9458:             End If
  loc_1CC9458:           End If
  loc_1CC9458:         End If
  loc_1CC946C:         If (var_D0.RecordCount > 0) Then
  loc_1CC9495:           Proc_6_39_E7D3A0(var_214, CVar(var_D0.Fields.Item("RoomChrg")))
  loc_1CC949E:           var_C0 = CSng(var_214)
  loc_1CC94D1:           Proc_6_39_E7D3A0(var_214, CVar(var_D0.Fields.Item("LuxuryTax")))
  loc_1CC94EE:           var_124 = (var_124 + CSng(var_214))
  loc_1CC94F4:         Else
  loc_1CC94F7:           var_C0 = CDbl(0)
  loc_1CC94FD:           var_134 = CDbl(0)
  loc_1CC9500:         End If
  loc_1CC9503:       Else
  loc_1CC950A:         var_124 = (var_124 + var_134)
  loc_1CC9514:         var_114 = (var_114 + var_100)
  loc_1CC951E:         var_11C = (var_11C + var_F8)
  loc_1CC9521:       End If
  loc_1CC9524:       var_174 = "Bill_no"
  loc_1CC9549:       var_138 = Proc_6_38_E69628(CVar(var_C8.Fields.Item(var_174)), var_11C, var_114, var_124, var_134)
  loc_1CC9559:       If (var_F8 > CDbl(0)) Then
  loc_1CC9565:         var_F0 = (var_F0 + 1)
  loc_1CC956B:         Set var_52C = var_14C 
  loc_1CC957A:         var_52C.AddNew var_174, var_184
  loc_1CC9592:         var_1B8 = CVar(Proc_6_52_EAE084(CStr(var_F0), 4, var_F0, var_C0)) 'String
  loc_1CC959F:         var_52C.Collect = "SNo"
  loc_1CC95D2:         var_214 = CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("ConPrefix")), CVar(var_C8.Fields.Item("ConPrefix")), var_124)) 'String
  loc_1CC9628:         var_250 = (Trim(var_214) + Space(1))
  loc_1CC962F:         var_290 = (CVar(var_C8.Fields.Item("ChkInDate")) + Trim(CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("GuestName")), var_134))))
  loc_1CC963D:         var_2A0 = CVar(Proc_6_45_EADFB8(CStr(var_290), &H32)) 'String
  loc_1CC964A:         var_52C.Collect = "GuestName"
  loc_1CC96FF:         var_290 = IIf((var_C8.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_C8.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1CC9723:         var_52C.Collect = "BirthAge"
  loc_1CC9771:         Proc_6_39_E7D3A0(var_214, CVar(var_C8.Fields.Item("Age")), CVar(Proc_6_52_EAE084(CStr(var_290), 3, var_2A0)))
  loc_1CC9795:         var_52C.Collect = "Age"
  loc_1CC97E5:         var_214 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C8.Fields.Item("Nationality")), CVar(Proc_6_52_EAE084(CStr(var_214), 3))), &H19)) 'String
  loc_1CC97F2:         var_52C.Collect = "Nationality"
  loc_1CC9841:         var_214 = CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("RoomNo").Value), 5, var_214)) 'String
  loc_1CC984E:         var_52C.Collect = "RoomNo"
  loc_1CC989D:         var_214 = CVar(Proc_6_52_EAE084(CStr(var_C8.Fields.Item("RoomRate").Value), 8, var_214)) 'String
  loc_1CC98AA:         var_52C.Collect = "RoomRate"
  loc_1CC990D:         var_52C.Collect = "ChkInDate"
  loc_1CC9957:         var_214 = CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("ChkInTm").Value), 5, Format(CVar(var_C8.Fields.Item("ChkInDt")), "DD/MM/YYYY"), 1)) 'String
  loc_1CC9964:         var_52C.Collect = "ChkInTime"
  loc_1CC99B5:         var_230 = Format(CVar(var_C8.Fields.Item("ChkOutDt")), "DD/MM/YYYY")
  loc_1CC99C7:         var_52C.Collect = "ChkOutDate"
  loc_1CC9A11:         var_214 = CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("ChkOutTm").Value), 5, var_230, 1, 1)) 'String
  loc_1CC9A1E:         var_52C.Collect = "ChkOutTime"
  loc_1CC9A39:         var_1B8 = CVar(CStr(var_B8)) 'String
  loc_1CC9A46:         var_52C.Collect = "StPeriod"
  loc_1CC9A69:         var_1B8 = Me.FGrid.TextMatrix)
  loc_1CC9A80:         Proc_6_39_E7D3A0(var_214, var_108, var_1B8, 1, CVar(CLng(3)), var_1B8)
  loc_1CC9A90:         Proc_6_39_E7D3A0(var_230, var_100, var_214, var_214)
  loc_1CC9AF2:         var_52C.Collect = "TotalTax"
  loc_1CC9B4D:         var_214 = CVar(Proc_6_52_EAE084(CStr(var_C8.Fields.Item("Person").Value), 5, CVar(Proc_6_52_EAE084(CStr(Format(IIf((CStr(var_C8.Fields.Item("Person").Value) = "Yes"), var_214, var_230), "0.00")), 8, 1, 1)), 1)) 'String
  loc_1CC9B5A:         var_52C.Collect = "Person"
  loc_1CC9B7D:         var_1B8 = CVar(Proc_6_52_EAE084(var_138, 8, var_214)) 'String
  loc_1CC9B8A:         var_52C.Collect = "BillNo"
  loc_1CC9BCD:         var_230 = Format(CVar(var_C8.Fields.Item("ChkOutDate")), "DD/MM/YYYY")
  loc_1CC9BDF:         var_52C.Collect = "Billdate"
  loc_1CC9C12:         var_1B8 = var_C8.Fields.Item("Person").Value
  loc_1CC9C4C:         var_230 = (var_1B8 = 0) 'Variant
  loc_1CC9C6A:         var_270 = (CVar(var_F8) / IIf(var_230, 1, CVar(var_C8.Fields.Item("Person"))))
  loc_1CC9CBA:         var_310 = CVar(Proc_6_52_EAE084(CStr(Format(IIf((var_F8 > CDbl(0)), var_270, 0), "0.00")), 8, 1, 1, var_230, 1)) 'String
  loc_1CC9CC7:         var_52C.Collect = "LTPerOcc"
  loc_1CC9CFE:         Proc_6_39_E7D3A0(var_1B8, var_F8, var_310, 1)
  loc_1CC9D42:         var_52C.Collect = "LTTotal"
  loc_1CC9D5B:         var_174 = "RoomTarrif"
  loc_1CC9D8E:         var_214 = CVar(Proc_6_52_EAE084(CStr(var_C8.Fields.Item(var_174).Value), 8, CVar(Proc_6_52_EAE084(CStr(Format(var_C8.Fields.Item(var_174).Value, "0.00")), 8, 1, 1)), var_C8.Fields.Item(var_174).Value)) 'String
  loc_1CC9D92:         var_184 = "RackRate"
  loc_1CC9D9B:         var_52C.Collect = var_184
  loc_1CC9DBC:         var_52C.Update var_174, var_184
  loc_1CC9DC3:         Set var_52C = Nothing 
  loc_1CC9DCA:         var_174 = CVar(CLng(4)) 'Long
  loc_1CC9DCF:         var_194 = 1
  loc_1CC9DFE:         If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1CC9E0E:           var_184 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join Country ON GP.Nationality=Country.Code Where GD.Docid='"
  loc_1CC9E19:           var_174 = "DocID"
  loc_1CC9E41:           var_194 = "' And GD.GuestProf<>'"
  loc_1CC9E8B:           unk_5407BC.Execute CStr(var_184 & var_C8.Fields.Item(var_174).Value & var_194 & var_C8.Fields.Item("GuestProf").Value & "'"), var_270, -1
  loc_1CC9E96:           Set var_154 = var_2B0
  loc_1CC9ECE:           If (var_154.RecordCount > 0) Then
  loc_1CC9ED1:             ' Referenced from:   1CCA0F7
  loc_1CC9EE0:             If Not(var_154.EOF) Then
  loc_1CC9EE6:               Set var_530 = var_14C 
  loc_1CC9EF5:               var_530.AddNew var_174, var_184
  loc_1CC9EFD:               var_174 = "ConPrefix"
  loc_1CC9F22:               var_214 = CVar(Proc_6_38_E69628(CVar(var_154.Fields.Item(var_174)), var_2B0, var_194, var_174)) 'String
  loc_1CC9F62:               var_270 = CVar(Proc_6_38_E69628(CVar(var_154.Fields.Item("Name")), var_214, var_214)) 'String
  loc_1CC9F78:               var_250 = (Trim(var_214) + Space(1))
  loc_1CC9F7F:               var_290 = ("Name" & var_C8.Fields.Item(var_174).Value & var_194 & var_C8.Fields.Item("GuestProf").Value + Trim(var_270))
  loc_1CC9F9A:               var_530.Collect = "GuestName"
  loc_1CC9FE6:               Proc_6_39_E7D3A0(var_214, CVar(var_154.Fields.Item("Age")), CVar(Proc_6_45_EADFB8(CStr(0), &H32)))
  loc_1CCA00A:               var_530.Collect = "Age"
  loc_1CCA05A:               var_214 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_154.Fields.Item("Nationality")), CVar(Proc_6_52_EAE084(CStr(var_214), 3))), &H19)) 'String
  loc_1CCA067:               var_530.Collect = "Nationality"
  loc_1CCA083:               var_174 = "RoomNo"
  loc_1CCA0B6:               var_214 = CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item(var_174).Value), 5, var_214)) 'String
  loc_1CCA0BA:               var_184 = "RoomNo"
  loc_1CCA0C3:               var_530.Collect = var_184
  loc_1CCA0E4:               var_530.Update var_174, var_184
  loc_1CCA0EB:               Set var_530 = Nothing 
  loc_1CCA0F2:               var_154.MoveNext
  loc_1CCA0F7:               GoTo loc_1CC9ED1
  loc_1CCA0FA:             End If
  loc_1CCA0FA:           End If
  loc_1CCA0FA:         End If
  loc_1CCA0FD:         var_174 = CVar(CLng(4)) 'Long
  loc_1CCA102:         var_194 = 1
  loc_1CCA131:         If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1CCA170:           var_214 = "Select Distinct RelatedFoliono,VPrefix From PayCharge PC Where PC.FolionoDocid='" & var_C8.Fields.Item("DocID").Value 
  loc_1CCA1BE:           unk_5407BC.Execute CStr(var_214 & "' And RelatedFoliono<>" & var_C8.Fields.Item("FolioNo").Value & " And RelatedFoliono<>0"), var_270, -1
  loc_1CCA1C9:           Set var_158 = var_2B0
  loc_1CCA1ED:           ' Referenced from:   1CCA585
  loc_1CCA1FC:           If Not(var_158.EOF) Then
  loc_1CCA20C:             var_184 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality,RO.RoomNo From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join (Select RoomNo, DocId From RoomOcc  Where Foliono="
  loc_1CCA217:             var_174 = "RelatedFolioNo"
  loc_1CCA23F:             var_194 = " And VPrefix ="
  loc_1CCA276:             var_1D0 = " And Sno=1) RO On RO.DocId=GD.DocId Left Join Country ON GP.Nationality=Country.Code Where GD.Docid In (Select DocId From GuestFolio Where Foliono="
  loc_1CCA291:             var_2B0 = var_158.Fields
  loc_1CCA2A9:             var_280 = var_184 & var_158.Fields.Item(var_174).Value & var_194 & var_158.Fields.Item("vPrefix").Value & var_1D0 & var_2B0.Item("RelatedFolioNo").Value 
  loc_1CCA2F7:             unk_5407BC.Execute CStr(var_280 & " And VPrefix =" & var_158.Fields.Item("vPrefix").Value & ")"), var_310, -1
  loc_1CCA302:             Set var_154 = var_2E0
  loc_1CCA34E:             If (var_154.RecordCount > 0) Then
  loc_1CCA351:               ' Referenced from:   1CCA57A
  loc_1CCA360:               If Not(var_154.EOF) Then
  loc_1CCA366:                 Set var_534 = var_14C 
  loc_1CCA375:                 var_534.AddNew var_174, var_184
  loc_1CCA37D:                 var_174 = "ConPrefix"
  loc_1CCA3A2:                 var_214 = CVar(Proc_6_38_E69628(CVar(var_154.Fields.Item(var_174)), var_2E0, var_2B0, var_194)) 'String
  loc_1CCA3F8:                 var_250 = (Trim(var_214) + Space(1))
  loc_1CCA3FF:                 var_290 = ("Name" & var_158.Fields.Item(var_174).Value & var_194 & var_158.Fields.Item("vPrefix").Value + Trim(CVar(Proc_6_38_E69628(CVar(var_154.Fields.Item("Name")), var_174, var_214))))
  loc_1CCA40D:                 var_2A0 = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_154.Fields.Item("Name")), var_174, var_214))) & " And VPrefix ="), &H32)) 'String
  loc_1CCA41A:                 var_534.Collect = "GuestName"
  loc_1CCA466:                 Proc_6_39_E7D3A0(var_214, CVar(var_154.Fields.Item("Age")), var_2A0)
  loc_1CCA48A:                 var_534.Collect = "Age"
  loc_1CCA4DA:                 var_214 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_154.Fields.Item("Nationality")), CVar(Proc_6_52_EAE084(CStr(var_214), 3))), &H19)) 'String
  loc_1CCA4E7:                 var_534.Collect = "Nationality"
  loc_1CCA500:                 var_174 = "RoomNo"
  loc_1CCA539:                 var_214 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_154.Fields.Item(var_174)), var_214), 5)) 'String
  loc_1CCA53D:                 var_184 = "RoomNo"
  loc_1CCA546:                 var_534.Collect = var_184
  loc_1CCA567:                 var_534.Update var_174, var_184
  loc_1CCA56E:                 Set var_534 = Nothing 
  loc_1CCA575:                 var_154.MoveNext
  loc_1CCA57A:                 GoTo loc_1CCA351
  loc_1CCA57D:               End If
  loc_1CCA57D:             End If
  loc_1CCA580:             var_158.MoveNext
  loc_1CCA585:             GoTo loc_1CCA1ED
  loc_1CCA588:           End If
  loc_1CCA588:         End If
  loc_1CCA58B:         var_184 = CVar(var_A4) 'Long
  loc_1CCA5B9:         var_214 = (var_184 + var_C8.Fields.Item("Person").Value)
  loc_1CCA5BF:         var_A4 = CLng(var_214)
  loc_1CCA5D9:         var_88 = (var_88 + 1)
  loc_1CCA5DF:       Else
  loc_1CCA5E2:         var_174 = CVar(CLng(3)) 'Long
  loc_1CCA61E:         If ((CStr(Me.FGrid.TextMatrix)) = "Yes") And (var_134 > CDbl(0))) Then
  loc_1CCA62A:           var_F0 = (var_F0 + 1)
  loc_1CCA630:           Set var_538 = var_14C 
  loc_1CCA63F:           var_538.AddNew var_174, var_184
  loc_1CCA657:           var_1B8 = CVar(Proc_6_52_EAE084(CStr(var_F0), 4, var_F0, 1, var_174)) 'String
  loc_1CCA664:           var_538.Collect = "SNo"
  loc_1CCA697:           var_214 = CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("ConPrefix")), CVar(var_C8.Fields.Item("ConPrefix")), var_88, var_A4)) 'String
  loc_1CCA6ED:           var_250 = (Trim(var_214) + Space(1))
  loc_1CCA6F4:           var_290 = ("GuestName" & var_158.Fields.Item("ConPrefix").Value & 1 & var_158.Fields.Item("vPrefix").Value + Trim(CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("GuestName")), var_214))))
  loc_1CCA702:           var_2A0 = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("GuestName")), var_214))) & " And VPrefix ="), &H32)) 'String
  loc_1CCA70F:           var_538.Collect = "GuestName"
  loc_1CCA7C4:           var_290 = IIf((var_C8.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_C8.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1CCA7E8:           var_538.Collect = "BirthAge"
  loc_1CCA836:           Proc_6_39_E7D3A0(var_214, CVar(var_C8.Fields.Item("Age")), CVar(Proc_6_52_EAE084(CStr(var_290), 3, var_2A0)))
  loc_1CCA85A:           var_538.Collect = "Age"
  loc_1CCA8AA:           var_214 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C8.Fields.Item("Nationality")), CVar(Proc_6_52_EAE084(CStr(var_214), 3))), &H19)) 'String
  loc_1CCA8B7:           var_538.Collect = "Nationality"
  loc_1CCA913:           var_538.Collect = "RoomNo"
  loc_1CCA93C:           var_1B8 = CVar(Proc_6_52_EAE084(CStr(var_C0), 8, CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("RoomNo").Value), 5, var_214)))) 'String
  loc_1CCA949:           var_538.Collect = "RoomRate"
  loc_1CCA9A1:           var_538.Collect = "ChkInDate"
  loc_1CCA9EB:           var_214 = CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("ChkInTm").Value), 5, Format(CVar(var_C8.Fields.Item("ChkInDt")), "DD/MM/YYYY"), 1)) 'String
  loc_1CCA9F8:           var_538.Collect = "ChkInTime"
  loc_1CCAA5B:           var_538.Collect = "ChkOutDate"
  loc_1CCAAA5:           var_214 = CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("ChkOutTm").Value), 5, Format(CVar(var_C8.Fields.Item("ChkOutDt")), "DD/MM/YYYY"), 1, 1)) 'String
  loc_1CCAAB2:           var_538.Collect = "ChkOutTime"
  loc_1CCAACD:           var_1B8 = CVar(CStr(var_B8)) 'String
  loc_1CCAADA:           var_538.Collect = "StPeriod"
  loc_1CCAAE9:           var_1B8 = CVar((var_134 + var_F8)) 'Double
  loc_1CCAAF0:           Proc_6_39_E7D3A0(var_214, var_1B8, var_1B8, var_214, var_214)
  loc_1CCAB34:           var_538.Collect = "TotalTax"
  loc_1CCAB82:           var_214 = CVar(Proc_6_52_EAE084(CStr(var_C8.Fields.Item("Person").Value), 5, CVar(Proc_6_52_EAE084(CStr(Format(var_214, "0.00")), 8, 1, 1)), 1)) 'String
  loc_1CCAB8F:           var_538.Collect = "Person"
  loc_1CCABB2:           var_1B8 = CVar(Proc_6_52_EAE084(var_138, 8, var_214)) 'String
  loc_1CCABBF:           var_538.Collect = "BillNo"
  loc_1CCAC02:           var_230 = Format(CVar(var_C8.Fields.Item("ChkOutDate")), "DD/MM/YYYY")
  loc_1CCAC14:           var_538.Collect = "Billdate"
  loc_1CCAC47:           var_1B8 = var_C8.Fields.Item("Person").Value
  loc_1CCAC81:           var_230 = (var_1B8 = 0) 'Variant
  loc_1CCAC9F:           var_270 = (CVar(var_F8) / IIf(var_230, 1, CVar(var_C8.Fields.Item("Person"))))
  loc_1CCACEF:           var_310 = CVar(Proc_6_52_EAE084(CStr(Format(IIf((var_F8 > CDbl(0)), var_270, 0), "0.00")), 8, 1, 1, var_230, 1)) 'String
  loc_1CCACFC:           var_538.Collect = "LTPerOcc"
  loc_1CCAD33:           Proc_6_39_E7D3A0(var_1B8, var_F8, var_310, 1)
  loc_1CCAD77:           var_538.Collect = "LTTotal"
  loc_1CCAD90:           var_174 = "RoomTarrif"
  loc_1CCADC3:           var_214 = CVar(Proc_6_52_EAE084(CStr(var_C8.Fields.Item(var_174).Value), 8, CVar(Proc_6_52_EAE084(CStr(Format(var_C8.Fields.Item(var_174).Value, "0.00")), 8, 1, 1)), var_C8.Fields.Item(var_174).Value)) 'String
  loc_1CCADC7:           var_184 = "RackRate"
  loc_1CCADD0:           var_538.Collect = var_184
  loc_1CCADF1:           var_538.Update var_174, var_184
  loc_1CCADF8:           Set var_538 = Nothing 
  loc_1CCADFF:           var_174 = CVar(CLng(4)) 'Long
  loc_1CCAE04:           var_194 = 1
  loc_1CCAE33:           If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1CCAE43:             var_184 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join Country ON GP.Nationality=Country.Code Where GD.Docid='"
  loc_1CCAE4E:             var_174 = "DocID"
  loc_1CCAE76:             var_194 = "' And GD.GuestProf<>'"
  loc_1CCAEC0:             unk_5407BC.Execute CStr(var_184 & var_C8.Fields.Item(var_174).Value & var_194 & var_C8.Fields.Item("GuestProf").Value & "'"), var_270, -1
  loc_1CCAECB:             Set var_154 = var_2B0
  loc_1CCAF03:             If (var_154.RecordCount > 0) Then
  loc_1CCAF06:               ' Referenced from:     1CCB12C
  loc_1CCAF15:               If Not(var_154.EOF) Then
  loc_1CCAF1B:                 Set var_53C = var_14C 
  loc_1CCAF2A:                 var_53C.AddNew var_174, var_184
  loc_1CCAF32:                 var_174 = "ConPrefix"
  loc_1CCAF4E:                 var_1B8 = CVar(var_154.Fields.Item(var_174)) 'Address
  loc_1CCAF57:                 var_214 = CVar(Proc_6_38_E69628(var_1B8, var_2B0, var_194, var_174)) 'String
  loc_1CCAF97:                 var_270 = CVar(Proc_6_38_E69628(CVar(var_154.Fields.Item("Name")), var_214, var_1B8)) 'String
  loc_1CCAFAD:                 var_250 = (Trim(var_214) + Space(1))
  loc_1CCAFB4:                 var_290 = ("Name" & var_C8.Fields.Item(var_174).Value & var_194 & var_C8.Fields.Item("GuestProf").Value + Trim(var_270))
  loc_1CCAFCF:                 var_53C.Collect = "GuestName"
  loc_1CCB01B:                 Proc_6_39_E7D3A0(var_214, CVar(var_154.Fields.Item("Age")), CVar(Proc_6_45_EADFB8(CStr(0), &H32)))
  loc_1CCB03F:                 var_53C.Collect = "Age"
  loc_1CCB08F:                 var_214 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_154.Fields.Item("Nationality")), CVar(Proc_6_52_EAE084(CStr(var_214), 3))), &H19)) 'String
  loc_1CCB09C:                 var_53C.Collect = "Nationality"
  loc_1CCB0B8:                 var_174 = "RoomNo"
  loc_1CCB0EB:                 var_214 = CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item(var_174).Value), 5, var_214)) 'String
  loc_1CCB0EF:                 var_184 = "RoomNo"
  loc_1CCB0F8:                 var_53C.Collect = var_184
  loc_1CCB119:                 var_53C.Update var_174, var_184
  loc_1CCB120:                 Set var_53C = Nothing 
  loc_1CCB127:                 var_154.MoveNext
  loc_1CCB12C:                 GoTo loc_1CCAF06
  loc_1CCB12F:               End If
  loc_1CCB12F:             End If
  loc_1CCB12F:           End If
  loc_1CCB132:           var_174 = CVar(CLng(4)) 'Long
  loc_1CCB137:           var_194 = 1
  loc_1CCB166:           If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1CCB1A5:             var_214 = "Select Distinct RelatedFoliono,VPrefix From PayCharge PC Where PC.FolionoDocid='" & var_C8.Fields.Item("DocID").Value 
  loc_1CCB1F3:             unk_5407BC.Execute CStr(var_214 & "' And RelatedFoliono<>" & var_C8.Fields.Item("FolioNo").Value & " And RelatedFoliono<>0"), var_270, -1
  loc_1CCB1FE:             Set var_158 = var_2B0
  loc_1CCB222:             ' Referenced from:     1CCB5BA
  loc_1CCB231:             If Not(var_158.EOF) Then
  loc_1CCB241:               var_184 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality,RO.RoomNo From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join (Select RoomNo, DocId From RoomOcc  Where Foliono="
  loc_1CCB24C:               var_174 = "RelatedFolioNo"
  loc_1CCB274:               var_194 = " And VPrefix ="
  loc_1CCB2AB:               var_1D0 = " And Sno=1) RO On RO.DocId=GD.DocId Left Join Country ON GP.Nationality=Country.Code Where GD.Docid In (Select DocId From GuestFolio Where Foliono="
  loc_1CCB2C6:               var_2B0 = var_158.Fields
  loc_1CCB2DE:               var_280 = var_184 & var_158.Fields.Item(var_174).Value & var_194 & var_158.Fields.Item("vPrefix").Value & var_1D0 & var_2B0.Item("RelatedFolioNo").Value 
  loc_1CCB32C:               unk_5407BC.Execute CStr(var_280 & " And VPrefix =" & var_158.Fields.Item("vPrefix").Value & ")"), var_310, -1
  loc_1CCB337:               Set var_154 = var_2E0
  loc_1CCB375:               var_2A4 = var_154.RecordCount
  loc_1CCB383:               If (var_2A4 > 0) Then
  loc_1CCB386:                 ' Referenced from:     1CCB5AF
  loc_1CCB395:                 If Not(var_154.EOF) Then
  loc_1CCB39B:                   Set var_540 = var_14C 
  loc_1CCB3AA:                   var_540.AddNew var_174, var_184
  loc_1CCB3B2:                   var_174 = "ConPrefix"
  loc_1CCB3D7:                   var_214 = CVar(Proc_6_38_E69628(CVar(var_154.Fields.Item(var_174)), var_2E0, var_2B0, var_194)) 'String
  loc_1CCB3EA:                   var_240 = Space(1)
  loc_1CCB3FE:                   var_2A8 = var_154.Fields
  loc_1CCB42D:                   var_250 = (Trim(var_214) + var_240)
  loc_1CCB434:                   var_290 = ("Name" & var_158.Fields.Item(var_174).Value & var_194 & var_158.Fields.Item("vPrefix").Value + Trim(CVar(Proc_6_38_E69628(CVar(var_2A8.Item("Name")), var_174, var_214))))
  loc_1CCB442:                   var_2A0 = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_2A8.Item("Name")), var_174, var_214))) & " And VPrefix ="), &H32)) 'String
  loc_1CCB44F:                   var_540.Collect = "GuestName"
  loc_1CCB49B:                   Proc_6_39_E7D3A0(var_214, CVar(var_154.Fields.Item("Age")), var_2A0)
  loc_1CCB4B2:                   var_230 = CVar(Proc_6_52_EAE084(CStr(var_214), 3)) 'String
  loc_1CCB4BF:                   var_540.Collect = "Age"
  loc_1CCB51C:                   var_540.Collect = "Nationality"
  loc_1CCB535:                   var_174 = "RoomNo"
  loc_1CCB549:                   var_204 = var_154.Fields.Item(var_174)
  loc_1CCB55A:                   var_1C0 = Proc_6_38_E69628(CVar(var_204), CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_154.Fields.Item("Nationality")), var_230), &H19)))
  loc_1CCB56E:                   var_214 = CVar(Proc_6_45_EADFB8(var_1C0, 5)) 'String
  loc_1CCB572:                   var_184 = "RoomNo"
  loc_1CCB57B:                   var_540.Collect = var_184
  loc_1CCB59C:                   var_540.Update var_174, var_184
  loc_1CCB5A3:                   Set var_540 = Nothing 
  loc_1CCB5AA:                   var_154.MoveNext
  loc_1CCB5AF:                   GoTo loc_1CCB386
  loc_1CCB5B2:                 End If
  loc_1CCB5B2:               End If
  loc_1CCB5B5:               var_158.MoveNext
  loc_1CCB5BA:               GoTo loc_1CCB222
  loc_1CCB5BD:             End If
  loc_1CCB5BD:           End If
  loc_1CCB5BD:         End If
  loc_1CCB5BD:       End If
  loc_1CCB5C4:       var_AC = (var_AC + var_F8)
  loc_1CCB5CA:       var_174 = CVar(CLng(3)) 'Long
  loc_1CCB5CF:       var_194 = 1
  loc_1CCB5ED:       var_1BC = CStr(Me.FGrid.TextMatrix))
  loc_1CCB5FE:       If (var_1BC = "Yes") Then
  loc_1CCB608:         var_B4 = (var_B4 + var_108)
  loc_1CCB60E:       Else
  loc_1CCB615:         If (var_F8 <> CDbl(0)) Then
  loc_1CCB61F:           var_B4 = (var_B4 + var_100)
  loc_1CCB622:         End If
  loc_1CCB622:         ' Referenced from:   1CC8831
  loc_1CCB622:       End If
  loc_1CCB622:       ' Referenced from: 1CC5F8F
  loc_1CCB622:     End If
  loc_1CCB625:     var_C8.MoveNext
  loc_1CCB62A:     GoTo loc_1CC54CE
  loc_1CCB62D:   End If
  loc_1CCB633:   global_84 = "LuxuryTax"
  loc_1CCB63D:   Call 0.Method_arg_50 (var_1BC, var_B4, var_B4, var_194, var_174)
  loc_1CCB64B:   var_214 = Ucase(CVar(var_1BC))
  loc_1CCB65A:   global_80 = CStr(var_214)
  loc_1CCB68F:   Set var_1A8 = var_14C 
  loc_1CCB696:   CreateFieldDefFile(var_1A8, MemVar_1F950B4 & "\" & global_84 & ".ttx", &HFF, var_AC)
  loc_1CCB6C1:   var_1BC = MemVar_1F950B4 & "\"
  loc_1CCB6DB:   Call 0.Method_arg_1C (var_1BC & global_84 & ".RPT", var_174, var_1A8)
  loc_1CCB6E6:   MemVar_1F951E8 = var_1A8
  loc_1CCB70F:   Call 0.Method_arg_64 (var_1A8, CVar(var_1A8), var_184, var_194)
  loc_1CCB717:   Call 0.Method_arg_2C (var_214, var_C0)
  loc_1CCB725:   Call 0.Method_arg_150 (var_B8)
  loc_1CCB73E:   Call 0.Method_arg_90 (var_1A8, var_2A4)
  loc_1CCB746:   Call 0.Method_arg_24 (var_A0)
  loc_1CCB751:   For var_548 =  To var_2A4: 1 = var_548 'Long
  loc_1CCB769:     Call 0.Method_arg_90 (var_1A8, var_A0)
  loc_1CCB771:     Call 0.Method_arg_20 (var_204)
  loc_1CCB779:     Call 0.Method_arg_30 (var_1BC)
  loc_1CCB781:     var_1B8 = CVar(var_1BC) 'String
  loc_1CCB78F:     var_558 = Ucase(var_1B8) 'Variant
  loc_1CCB7A8:     If (var_558 = "FORMONTH") Then
  loc_1CCB7B6:       Proc_6_17_EAAE40(var_1B8)
  loc_1CCB7D1:       Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CCB7D9:       Call 0.Method_arg_20 (CStr(var_1B8))
  loc_1CCB7E1:       Call 0.Method_arg_38 (var_10C)
  loc_1CCB7F6:     Else
  loc_1CCB801:       If (var_558 = "TOTAMT") Then
  loc_1CCB81B:         Call 0.Method_arg_90 (var_1A8, var_A0)
  loc_1CCB823:         Call 0.Method_arg_20 (var_204)
  loc_1CCB82B:         Call 0.Method_arg_38 (CStr(var_B4))
  loc_1CCB83D:       Else
  loc_1CCB848:         If (var_558 = "TOTLT") Then
  loc_1CCB862:           Call 0.Method_arg_90 (var_1A8, var_A0)
  loc_1CCB86A:           Call 0.Method_arg_20 (var_204)
  loc_1CCB872:           Call 0.Method_arg_38 (CStr(var_AC))
  loc_1CCB884:         Else
  loc_1CCB88F:           If (var_558 = "TITLE") Then
  loc_1CCB8B5:             Call 0.Method_arg_90 (var_1A8, var_A0)
  loc_1CCB8BD:             Call 0.Method_arg_20 (var_204)
  loc_1CCB8C5:             Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_1CCB8DB:           Else
  loc_1CCB8E6:             If (var_558 = "PRINTDATE") Then
  loc_1CCB915:               Call 0.Method_arg_90 (var_1A8, var_A0)
  loc_1CCB91D:               Call 0.Method_arg_20 (var_204)
  loc_1CCB925:               Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F950EC) & "'"))
  loc_1CCB93E:             Else
  loc_1CCB949:               If (var_558 = "SUMMARYYN") Then
  loc_1CCB961:                 Set var_1A8 = Me.FGrid
  loc_1CCB978:                 Proc_6_17_EAAE40(var_230, CVar(CStr(var_1A8.TextMatrix))))
  loc_1CCB993:                 Call 0.Method_arg_90 (var_204, var_A0, var_2A8)
  loc_1CCB99B:                 Call 0.Method_arg_20 (CStr(var_230), 1)
  loc_1CCB9A3:                 Call 0.Method_arg_38 (CVar(CLng(2)))
  loc_1CCB9C0:               Else
  loc_1CCB9CB:                 If (var_558 = "WT_TOTAMT") Then
  loc_1CCBA09:                   Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CCBA11:                   Call 0.Method_arg_20 (CStr(Format(var_124, "0.00")), 1)
  loc_1CCBA19:                   Call 0.Method_arg_38 (1)
  loc_1CCBA32:                 Else
  loc_1CCBA3D:                   If (var_558 = "WT_LT") Then
  loc_1CCBA7B:                     Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CCBA83:                     Call 0.Method_arg_20 (CStr(Format(var_12C, "0.00")), 1)
  loc_1CCBA8B:                     Call 0.Method_arg_38 (1)
  loc_1CCBAA4:                   Else
  loc_1CCBAAF:                     If (var_558 = "WT_NETAMT") Then
  loc_1CCBACE:                       var_1B8 = CVar((var_124 + var_12C)) 'Double
  loc_1CCBAF0:                       Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CCBAF8:                       Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1CCBB00:                       Call 0.Method_arg_38 (1)
  loc_1CCBB1B:                     Else
  loc_1CCBB26:                       If (var_558 = "W_TOTAMT") Then
  loc_1CCBB64:                         Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CCBB6C:                         Call 0.Method_arg_20 (CStr(Format(var_114, "0.00")), 1)
  loc_1CCBB74:                         Call 0.Method_arg_38 (1)
  loc_1CCBB8D:                       Else
  loc_1CCBB98:                         If (var_558 = "W_LT") Then
  loc_1CCBBD6:                           Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CCBBDE:                           Call 0.Method_arg_20 (CStr(Format(var_11C, "0.00")), 1)
  loc_1CCBBE6:                           Call 0.Method_arg_38 (1)
  loc_1CCBBFF:                         Else
  loc_1CCBC0A:                           If (var_558 = "W_NETAMT") Then
  loc_1CCBC29:                             var_1B8 = CVar((var_114 + var_11C)) 'Double
  loc_1CCBC4B:                             Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CCBC53:                             Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1CCBC5B:                             Call 0.Method_arg_38 (1)
  loc_1CCBC76:                           Else
  loc_1CCBC81:                             If (var_558 = "T_TOTAMT") Then
  loc_1CCBCA0:                               var_1B8 = CVar((var_124 + var_114)) 'Double
  loc_1CCBCC2:                               Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CCBCCA:                               Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1CCBCD2:                               Call 0.Method_arg_38 (1)
  loc_1CCBCED:                             Else
  loc_1CCBCF8:                               If (var_558 = "T_LT") Then
  loc_1CCBD17:                                 var_1B8 = CVar((var_12C + var_11C)) 'Double
  loc_1CCBD39:                                 Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CCBD41:                                 Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1CCBD49:                                 Call 0.Method_arg_38 (1)
  loc_1CCBD64:                               Else
  loc_1CCBD6F:                                 If (var_558 = "T_NETAMT") Then
  loc_1CCBD81:                                   var_214 = "0.00"
  loc_1CCBD96:                                   var_1B8 = CVar((((var_124 + var_12C) + var_114) + var_11C)) 'Double
  loc_1CCBD9D:                                   var_230 = Format("0.00", var_214)
  loc_1CCBDB8:                                   Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CCBDC0:                                   Call 0.Method_arg_20 (CStr(var_230), 1)
  loc_1CCBDC8:                                   Call 0.Method_arg_38 (1)
  loc_1CCBDE0:                                 End If
  loc_1CCBDE0:                               End If
  loc_1CCBDE0:                             End If
  loc_1CCBDE0:                           End If
  loc_1CCBDE0:                         End If
  loc_1CCBDE0:                       End If
  loc_1CCBDE0:                     End If
  loc_1CCBDE0:                   End If
  loc_1CCBDE0:                 End If
  loc_1CCBDE0:               End If
  loc_1CCBDE0:             End If
  loc_1CCBDE0:           End If
  loc_1CCBDE0:         End If
  loc_1CCBDE0:       End If
  loc_1CCBDE0:     End If
  loc_1CCBDE3:   Next var_548 'Long
  loc_1CCBDED:   Set var_204 = Nothing
  loc_1CCBE06:   Set var_1A8 = MemVar_1F951E8 
  loc_1CCBE12:   Proc_6_99_1484404(var_1A8, 0, global_80)
  loc_1CCBE1D:   MemVar_1F951E8 = var_1A8
  loc_1CCBE2B: Else
  loc_1CCBE44:   MsgBox("*No Records to print*", 0, var_214, var_230, var_240)
  loc_1CCBE54: End If
  loc_1CCBE59: global_88 = 0
  loc_1CCBE61: Set var_150 = Nothing
  loc_1CCBE69: Set var_C8 = Nothing
  loc_1CCBE71: Set var_148 = Nothing
  loc_1CCBE79: Set var_14C = Nothing
  loc_1CCBE81: Set var_15C = Nothing
  loc_1CCBE89: Set var_D0 = Nothing
  loc_1CCBE91: Set var_13C = Nothing
  loc_1CCBE99: Set var_140 = Nothing
  loc_1CCBEA1: Set var_154 = Nothing
  loc_1CCBEA9: Set var_158 = Nothing
  loc_1CCBEAC: Exit Sub
  loc_1CCBEAD: ' Referenced from: 1CC50A8
  loc_1CCBEAD: Proc_6_60_E63754(global_88, &HFF)
  loc_1CCBEB7: global_88 = 0
  loc_1CCBEBA: Exit Sub
End Sub

Public Sub Proc_66_74_1AFADF8
  'Data Table: 54078C
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_198 As String
  Dim var_D0 As Double
  Dim var_D8 As Double
  Dim var_1F4 As String
  Dim var_1AC As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_160 As Variant
  Dim unk_5407BC As Connection15
  Dim var_20C As Variant
  Dim var_21C As Variant
  Dim var_23C As Variant
  Dim var_180 As Variant
  Dim var_24C As Variant
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_88 As Integer
  Dim var_DA As Integer
  Dim var_A4 As Double
  Dim var_9C As Integer
  Dim var_AC As Double
  Dim var_B4 As Recordset15
  Dim var_1DC As Variant
  Dim var_284 As Variant
  Dim var_288 As Variant
  Dim var_28C As Variant
  Dim var_290 As Variant
  Dim var_294 As Variant
  Dim var_298 As Variant
  Dim var_29C As Variant
  Dim var_27C As Variant
  Dim var_2AC As Variant
  Dim var_2DC As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_350 As Variant
  Dim var_394 As Fields15
  Dim var_31C As Variant
  Dim var_30C As Variant
  Dim var_360 As Variant
  Dim var_370 As Variant
  Dim var_390 As Variant
  Dim var_3C8 As Variant
  Dim var_3E8 As Variant
  Dim var_408 As Variant
  Dim var_428 As Variant
  Dim var_22C As Variant
  Dim var_BC As Recordset15
  Dim var_E4 As Double
  Dim var_438 As Variant
  Dim var_44C As Variant
  Dim var_450 As Variant
  Dim var_454 As Variant
  Dim var_EC As Double
  Dim var_3B8 As Variant
  Dim var_530 As Integer
  Dim var_448 As Variant
  Dim var_464 As Variant
  Dim var_474 As Variant
  Dim var_4B8 As Variant
  Dim var_4D8 As Variant
  Dim var_51C As Recordset15
  Dim var_520 As Fields15
  Dim var_534 As Field20
  Dim var_124 As Recordset15
  Dim var_488 As Variant
  Dim var_12C As Recordset15
  Dim var_134 As Recordset15
  Dim var_118 As Double
  Dim var_108 As Double
  Dim var_F8 As Double
  Dim var_100 As Double
  Dim var_548 As Recordset15
  Dim var_86 As Integer
  Dim var_54C As Recordset15
  loc_1AF6A34: On Error Goto loc_1AFADE9
  loc_1AF6A3A: var_150 = CVar(CLng(0)) 'Long
  loc_1AF6A3F: var_170 = 1
  loc_1AF6A62: var_D0 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1AF6A71: var_150 = CVar(CLng(1)) 'Long
  loc_1AF6A76: var_170 = 1
  loc_1AF6A99: var_D8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1AF6AB0: var_170 = 1
  loc_1AF6AC3: var_194 = Me.FGrid.TextMatrix)
  loc_1AF6ACE: var_198 = CStr(var_194)
  loc_1AF6AF1: Set var_1E0 = Me.FGrid
  loc_1AF6B06: var_F0 = 1 & CStr(var_1E0.TextMatrix))
  loc_1AF6B2E: Set var_184 = Me.Check1
  loc_1AF6B34: Call 0.Method_Proc_66_74_1AFADF80 (1, var_1E0, var_1FA, CVar(CLng(1)), var_170 & var_198 & " TO ", CVar(CLng(0)), "FROM ")
  loc_1AF6B3C: var_D8 = var_1E0.Value
  loc_1AF6B52: If (CLng(var_1FA) = 0) Then
  loc_1AF6B70:   Call Proc_66_44_1281678(global_164, 1, CByte(1))
  loc_1AF6B7B:   global_148 = var_198
  loc_1AF6B8B:   If (global_88 = 0) Then
  loc_1AF6B8E:     Exit Sub
  loc_1AF6B8F:   End If
  loc_1AF6B8F: End If
  loc_1AF6B97: var_150 = var_D8
  loc_1AF6B9F: Proc_6_7_F26918(var_194, var_150, " AND RO.ChkOutDate <=", var_198, var_170)
  loc_1AF6BB2: global_60 = CStr(var_150 & var_194)
  loc_1AF6BCC: Set var_184 = Me.Check1
  loc_1AF6BD2: Call 0.Method_Proc_66_74_1AFADF80 (1, var_1E0, var_1FA)
  loc_1AF6BDA: var_D0 = var_1E0.Value
  loc_1AF6BF0: If (CLng(var_1FA) = 0) Then
  loc_1AF6C0B:   var_C4 = var_C4 & " and R.Code in ( " & global_148 & ") "
  loc_1AF6C2D:   var_C8 = var_C8 & " and R.Code not in ( " & global_148 & ") "
  loc_1AF6C37: End If
  loc_1AF6C4D: unk_5407BC.Execute "Update PayCharge set GuestProf=GF.GuestProf from GuestFolio GF Where FolioNoDocid=GF.Docid And ISNULL(PayCharge.FolioNoDocid,'')<>''", var_194, -1
  loc_1AF6C6C: var_1F0 = CVar("Select Distinct RO.DocId,GF.Vdate,(RO.Adult+RO.Children) As Person,RO.FolioNo,RO.ChkInDate,RO.ChkInTime,RO.ChkOutDate,RO.ChkOutTime, ROOMRATE =case when GF.RODISC>0 then (RO.RoomRate-(RO.RoomRate*GF.RODISC/100)) else RO.ROOMRATE end ,RO.RoomNo,GP.Name AS GuestName,GP.BirthDate,GP.Age,Country.Name As Nationality,GF.RODISC,RO.Type,paycharge.Bill_No,Cast(paycharge.Bill_NO As Numeric) As OBill_No,BD.ChkInDAte as ChkinDT,BD.ChkInTime as ChkinTm,BD.ChkOutDate as CHkOutDt,BD.ChkOutTime as CHkOutTm " & "From ((((BillSummary as BD LEFT JOIN RoomOcc AS RO ON BD.FolioNoDocid = RO.Docid) Left Join GuestProf GP ON RO.GuestProf=GP.Code) Left Join Country ON GP.Nationality=Country.Code) Left Join GuestFolio GF ON RO.DOCID=GF.DOCID)  LEFT JOIN PayCharge ON (GF.GuestProf = PayCharge.GuestProf) AND (GF.FolioNo = PayCharge.FolioNo) Where  Paycharge.bill_no is not NULL and BD.BillSettleDate between ") 'String
  loc_1AF6C72: var_150 = var_D0
  loc_1AF6C7A: Proc_6_7_F26918(var_194, var_150, var_150 & var_194, var_27C, -1)
  loc_1AF6C92: var_170 = var_D8
  loc_1AF6C9A: Proc_6_7_F26918(var_22C, var_170, var_184 & var_194 & " And ")
  loc_1AF6CA6: var_180 = " and isnull(Paycharge.ModeSet,'')<>'S'  and (paycharge.Bill_NO is not null and paycharge.Bill_NO<>'') AND Paycharge.SettleDate is Not NULL and RO.RoomType ='RO' "
  loc_1AF6CCF: unk_5407BC.Execute CStr(var_184 & var_22C & var_180 & CVar(global_60) & " ORDER BY OBill_No,RO.Type"), var_170, var_150
  loc_1AF6CDA: Set var_B4 = var_184
  loc_1AF6CFC: var_88 = 1
  loc_1AF6D01: var_DA = 0
  loc_1AF6D07: var_A4 = CDbl(0)
  loc_1AF6D0C: var_9C = 0
  loc_1AF6D12: var_AC = CDbl(0)
  loc_1AF6D29: If (var_B4.RecordCount > 0) Then
  loc_1AF6D39:   Call Proc_66_55_118430C(New)
  loc_1AF6D41:   Set var_130 = var_184
  loc_1AF6D44:   ' Referenced from: 1AFA536
  loc_1AF6D53:   If Not(Me.Recordset15.EOF) Then
  loc_1AF6D92:     If (var_B4.Fields.Item("Type").Value = "C") Then
  loc_1AF6DDC:       Proc_6_7_F26918("ChkInDate" & CVar(var_B4.Fields.Item("ChkInDate")), CVar(var_B4.Fields.Item("ChkInDate")), "sELECT sno FROM ROOMOCC WHERE chkindate=", var_27C, -1, var_294, var_298)
  loc_1AF6E24:       var_24C = 0 & "ChkInDate" & CVar(var_B4.Fields.Item("ChkInDate")) & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" 
  loc_1AF6E60:       unk_5407BC.Execute CStr(var_24C & var_B4.Fields.Item("FolioNo").Value), var_29C, var_2AC
  loc_1AF6E68:       var_184 = var_294.Fields
  loc_1AF6E70:       var_9C = var_298.Item(var_AC)
  loc_1AF6E78:       var_A4 = var_29C.Value
  loc_1AF6EB7:       If (var_2AC = 1) Then
  loc_1AF6ECE:         var_1F0 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime <= '") 'String
  loc_1AF6F32:         var_23C = "ChkOutDate" & var_B4.Fields.Item("ChkOutDate").Value & var_B4.Fields.Item("ChkOutDate").Value & " " & var_B4.Fields.Item("ChkOutTime").Value 
  loc_1AF6F6A:         var_27C = -1 & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), var_23C & "' AND  PC.Bill_No='", var_31C)) 
  loc_1AF6FC2:         unk_5407BC.Execute CStr(var_27C & "' AND PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & CVar(var_C4) & " GROUP By PC.Bill_No "), var_29C, 
  loc_1AF6FCD:         Set var_BC = var_29C
  loc_1AF700C:       Else
  loc_1AF704A:         var_288 = var_B4.Fields.Item("ChkInTime")
  loc_1AF705E:         var_21C = "hh:nn:ss"
  loc_1AF7067:         var_20C = CVar(var_288) 'Address
  loc_1AF70E9:         var_29C = var_B4.Fields
  loc_1AF7140:         var_24C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime Between '") 'String
  loc_1AF7156:         var_25C = var_B4.Fields.Item("ChkInDate").Value & " " & Format(var_20C, var_21C) & "' AND  PC.Bill_No='" & var_B4.Fields.Item("ChkInDate").Value & " " & Format(var_20C, var_21C) 
  loc_1AF7176:         var_31C = var_25C & "' and '" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1AF7186:         var_360 = CVar(Proc_6_38_E69628(CVar(var_29C.Item("Bill_no")), 1, 1)) 'String
  loc_1AF71AC:         var_408 = var_31C & "' AND  PC.Bill_No='" & var_360 & "' AND PC.FOLIONODOCID='" & var_B4.Fields.Item("DocID").Value & "'" & CVar(var_C4) 
  loc_1AF71C3:         unk_5407BC.Execute CStr(var_408 & " GROUP By PC.Bill_No "), var_448, -1
  loc_1AF71CE:         Set var_BC = var_44C
  loc_1AF7228:       End If
  loc_1AF722B:     Else
  loc_1AF7231:       var_180 = 0
  loc_1AF7284:       unk_5407BC.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE fOLIONO=" & var_B4.Fields.Item("FolioNo").Value), var_20C, -1
  loc_1AF728C:       var_284 = var_284.Fields
  loc_1AF7294:       var_180 = var_288.Item(var_288)
  loc_1AF729C:       var_28C = var_28C.Value
  loc_1AF72C7:       If (var_21C > 1) Then
  loc_1AF731C:         var_21C = "hh:nn:ss"
  loc_1AF736E:         var_294 = var_B4.Fields
  loc_1AF7376:         var_298 = var_294.Item("DocID")
  loc_1AF7397:         var_24C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.BillAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime > '") 'String
  loc_1AF73A2:         var_1F0 = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1AF73AD:         var_25C = var_1F0 & Format(CVar(var_B4.Fields.Item("ChkInTime")), var_21C) & "' AND  PC.Bill_No='" & var_1F0 & Format(CVar(var_B4.Fields.Item("ChkInTime")), var_21C) 
  loc_1AF73C9:         var_2DC = var_25C & "' AND  PC.Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1, 1, var_21C)) & "' AND PC.FOLIONODOCID='" 
  loc_1AF73D0:         var_2FC = var_2DC & var_298.Value 
  loc_1AF73FA:         unk_5407BC.Execute CStr(var_2FC & "'" & CVar(var_C4) & " GROUP By PC.Bill_No "), var_360, -1
  loc_1AF7405:         Set var_BC = var_29C
  loc_1AF744C:       Else
  loc_1AF7460:         var_20C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.BillAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1AF7489:         Proc_6_7_F26918(var_1F0, CVar(var_B4.Fields.Item("ChkInDate")), var_20C, var_2FC, -1)
  loc_1AF74C6:         var_24C = CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), var_294 & var_1F0 & " AND  PC.Bill_No='", var_29C)) 'String
  loc_1AF74F8:         var_27C = var_B4.Fields.Item("DocID").Value
  loc_1AF752A:         unk_5407BC.Execute CStr(var_44C & var_24C & "' AND PC.FOLIONODOCID='" & var_27C & "'" & CVar(var_C4) & " GROUP By PC.Bill_No "), 1, 1
  loc_1AF7535:         Set var_BC = var_294
  loc_1AF7569:       End If
  loc_1AF7569:     End If
  loc_1AF757D:     If (var_BC.RecordCount > 0) Then
  loc_1AF75F4:       If (var_B4.Fields.Item("Type").Value = "C") Then
  loc_1AF763E:         Proc_6_7_F26918(var_1F0, CVar(var_B4.Fields.Item("ChkInDate")), "sELECT sno FROM ROOMOCC WHERE chkindate=", var_27C, -1, var_294)
  loc_1AF76B4:         var_26C = var_298 & var_1F0 & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("FolioNo").Value 
  loc_1AF76C2:         unk_5407BC.Execute CStr(var_26C), 0, var_29C
  loc_1AF76CA:         var_2AC = var_294.Fields
  loc_1AF76D2:          = var_298.Item(CSng(var_BC.Fields.Item("LuxuryTax").Value))
  loc_1AF76DA:          = var_29C.Value
  loc_1AF7719:         If (var_2AC = 1) Then
  loc_1AF77A9:           Proc_6_7_F26918(var_2AC, CVar(var_B4.Fields.Item("ChkInDate")))
  loc_1AF77D4:           Proc_6_7_F26918(var_2FC, CVar(var_B4.Fields.Item("ChkOutDate")))
  loc_1AF7831:           var_438 = 0
  loc_1AF784E:           var_24C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime <= '") 'String
  loc_1AF7864:           var_25C = var_B4.Fields.Item("ChkOutDate") & var_B4.Fields.Item("ChkOutDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1AF7894:           var_360 = CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1)) 'String
  loc_1AF78A0:           var_390 = var_25C & "' AND PC.VDATE BETWEEN " & var_2AC & " AND " & var_2FC & " AND  PC.Bill_No='" & var_360 & "' and PC.FOLIONO=" 
  loc_1AF78A7:           var_3C8 = var_390 & var_B4.Fields.Item("FolioNo").Value 
  loc_1AF78D1:           unk_5407BC.Execute CStr(var_3C8 & " and PC.PAYCode in ( '" & CVar(MemVar_1F95070) & "RMCH') GROUP By PC.Bill_No"), var_448, -1
  loc_1AF78D9:           var_44C = var_44C.Fields
  loc_1AF78E1:           var_438 = var_450.Item(var_450)
  loc_1AF78E9:           var_454 = var_454.Value
  loc_1AF78F2:           var_EC = CSng(var_464)
  loc_1AF7953:         Else
  loc_1AF7991:           var_288 = var_B4.Fields.Item("ChkInTime")
  loc_1AF79A5:           var_21C = "hh:nn:ss"
  loc_1AF79B5:           var_22C = Format(CVar(var_288), var_21C)
  loc_1AF7A47:           Proc_6_7_F26918(var_360, CVar(var_B4.Fields.Item("ChkInDate")), 1, 1, 1)
  loc_1AF7A72:           Proc_6_7_F26918(var_3C8, CVar(var_B4.Fields.Item("ChkOutDate")), 1)
  loc_1AF7ACF:           var_530 = 0
  loc_1AF7AEC:           var_24C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime Between '") 'String
  loc_1AF7B02:           var_25C = var_B4.Fields.Item("ChkOutTime") & var_B4.Fields.Item("ChkInDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkInDate").Value & " " & var_22C 
  loc_1AF7B22:           var_31C = var_25C & "' and '" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1AF7B55:           var_464 = var_31C & "' AND PC.VDATE BETWEEN " & var_360 & " AND " & var_3C8 & " AND  PC.Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), var_EC)) 
  loc_1AF7B78:           var_4D8 = var_464 & "' and PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode in ( '" & CVar(MemVar_1F95070) 
  loc_1AF7B8F:           unk_5407BC.Execute CStr(var_4D8 & "RMCH') GROUP By PC.Bill_No"), var_518, -1
  loc_1AF7B97:           var_51C = var_51C.Fields
  loc_1AF7B9F:           var_530 = var_520.Item(var_520)
  loc_1AF7BA7:           var_534 = var_534.Value
  loc_1AF7BB0:           var_EC = CSng(var_544)
  loc_1AF7C24:         End If
  loc_1AF7C27:       Else
  loc_1AF7C2D:         var_1AC = 0
  loc_1AF7C89:         unk_5407BC.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE Docid='" & var_B4.Fields.Item("DocID").Value & "'"), var_21C, -1
  loc_1AF7C91:         var_284 = var_284.Fields
  loc_1AF7C99:         var_1AC = var_288.Item(var_288)
  loc_1AF7CA1:         var_28C = var_28C.Value
  loc_1AF7CCE:         If (var_22C > 1) Then
  loc_1AF7D33:           var_22C = Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss")
  loc_1AF7E2E:           var_454 = var_B4.Fields
  loc_1AF7E57:           var_24C = CVar("Select SUM(PC.BillAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime > '") 'String
  loc_1AF7E62:           var_1F0 = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1AF7E6D:           var_25C = var_B4.Fields.Item("FolioNo") & var_1F0 & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_1F0 & var_22C 
  loc_1AF7E89:           var_2DC = var_25C & "' AND  PC.Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1, 1, var_22C)) & "' AND PC.FOLIONO=" 
  loc_1AF7E9E:           var_30C = " and docid not in (Select Docid from paycharge WHERE cast(vdate as varchar(11))+' '+vtime > '"
  loc_1AF7EBA:           var_3E8 = var_2DC & var_B4.Fields.Item("FolioNo").Value & CVar(var_C4) & "' AND PC.VDATE BETWEEN " & var_B4.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1AF7ED6:           var_474 = var_3E8 & "' AND  Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1, 1)) & "' AND FOLIONO=" 
  loc_1AF7EE6:           var_4B8 = var_474 & var_454.Item("FolioNo").Value & " and paycode ='" 
  loc_1AF7F07:           unk_5407BC.Execute CStr(var_4B8 & CVar(MemVar_1F95078) & "LT' and AMTDR=0) GROUP By PC.Bill_No "), var_518, -1
  loc_1AF7F12:           Set var_124 = var_51C
  loc_1AF7F98:           If (var_124.RecordCount > 0) Then
  loc_1AF7FC1:             Proc_6_39_E7D3A0(var_1F0, CVar(var_124.Fields.Item(0)), var_51C)
  loc_1AF7FCA:             var_EC = CSng(var_1F0)
  loc_1AF7FDA:           Else
  loc_1AF7FDD:             var_EC = CDbl(0)
  loc_1AF7FE0:           End If
  loc_1AF7FE3:         Else
  loc_1AF8009:           Proc_6_7_F26918(var_1F0, CVar(var_B4.Fields.Item("ChkInDate")), var_EC, var_EC)
  loc_1AF8025:           var_288 = var_B4.Fields.Item("Bill_no")
  loc_1AF8053:           var_290 = var_B4.Fields.Item("FolioNo")
  loc_1AF805B:           var_27C = var_290.Value
  loc_1AF8072:           var_294 = var_B4.Fields
  loc_1AF8104:           var_44C = var_B4.Fields
  loc_1AF8114:           var_448 = var_44C.Item("FolioNo").Value
  loc_1AF812D:           var_20C = CVar("Select SUM(PC.billAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1AF8133:           var_21C = var_20C & var_1F0 
  loc_1AF814F:           var_26C = var_21C & " AND  PC.Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_288), var_EC)) & "' and PC.FOLIONO=" 
  loc_1AF816D:           var_1DC = "LT') and docid not in (Select Docid from paycharge WHERE cast(vdate as varchar(11))+' '+vtime > '"
  loc_1AF8189:           var_390 = var_26C & var_27C & " and PC.PAYCode in ('" & CVar(MemVar_1F95070) & "FolioNo" & var_294.Item("ChkInDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1AF81A5:           var_428 = var_390 & "' AND  Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1, 1)) & "' AND FOLIONO=" 
  loc_1AF81BF:           var_488 = var_428 & var_448 & " and paycode ='" & CVar(MemVar_1F95078) 
  loc_1AF81D6:           unk_5407BC.Execute CStr(var_488 & "LT' and AMTDR=0)GROUP By PC.Bill_No"), var_4B8, -1
  loc_1AF81E1:           Set var_12C = var_454
  loc_1AF825D:           If (var_12C.RecordCount > 0) Then
  loc_1AF8286:             Proc_6_39_E7D3A0(var_1F0, CVar(var_12C.Fields.Item("TotalTax")), var_454)
  loc_1AF828F:             var_EC = CSng(var_1F0)
  loc_1AF829F:           Else
  loc_1AF82A2:             var_EC = CDbl(0)
  loc_1AF82A5:           End If
  loc_1AF82A5:         End If
  loc_1AF82A5:       End If
  loc_1AF82A8:     Else
  loc_1AF82AB:       var_E4 = CDbl(0)
  loc_1AF82B4:       var_180 = 0
  loc_1AF8307:       unk_5407BC.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE fOLIONO=" & var_B4.Fields.Item("FolioNo").Value), var_20C, -1
  loc_1AF830F:       var_284 = var_284.Fields
  loc_1AF8317:       var_180 = var_288.Item(var_288)
  loc_1AF831F:       var_28C = var_28C.Value
  loc_1AF834A:       If (var_21C > 1) Then
  loc_1AF83A4:         var_20C = CVar("Select Count(*) from PayCharge where PayCode='" & MemVar_1F95070 & "LT' And FolioNO=") & var_B4.Fields.Item("FolioNo").Value 
  loc_1AF83D9:         var_23C = CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), var_20C & " and Bill_no='", var_26C, -1, var_28C, var_290)) 'String
  loc_1AF83E5:         var_25C = 0 & CVar(var_B4.Fields.Item("Bill_no")) & "'" 
  loc_1AF83F3:         unk_5407BC.Execute CStr(var_25C), var_294, var_27C
  loc_1AF83FB:         var_21C = var_28C.Fields
  loc_1AF8403:         var_EC = var_290.Item(var_E4)
  loc_1AF840B:          = var_294.Value
  loc_1AF8448:         If (var_27C = 0) Then
  loc_1AF845F:           var_198 = "Select SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  PC.Bill_No='"
  loc_1AF848E:           var_1F4 = -1 & Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), var_198, var_25C)
  loc_1AF84C2:           var_21C = CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1, 1) & "' and PC.FOLIONO=") & var_B4.Fields.Item("FolioNo").Value 
  loc_1AF84EC:           unk_5407BC.Execute CStr(var_21C & " and PC.PAYCode in ('" & CVar(MemVar_1F95070) & "LT') GROUP By PC.Bill_No"), var_28C, 
  loc_1AF84F7:           Set var_134 = var_28C
  loc_1AF8537:           If (var_134.RecordCount > 0) Then
  loc_1AF8565:             var_EC = CSng(var_134.Fields.Item(0).Value)
  loc_1AF8575:           Else
  loc_1AF8578:             var_EC = CDbl(0)
  loc_1AF857B:           End If
  loc_1AF857E:         Else
  loc_1AF861B:           var_294 = var_B4.Fields
  loc_1AF8623:           var_298 = var_294.Item("ChkOutTime")
  loc_1AF865B:           var_29C = var_B4.Fields
  loc_1AF8689:           var_394 = var_B4.Fields
  loc_1AF8699:           var_3B8 = var_394.Item("FolioNo").Value
  loc_1AF86B2:           var_24C = CVar("Select SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  cast(vdate as varchar(11))+' '+vtime Between '") 'String
  loc_1AF86BD:           var_1F0 = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1AF86C8:           var_25C = "hh:nn:ss" & " and PC.PAYCode in ('" & CVar(MemVar_1F95070) & "LT') GROUP By PC.Bill_No" & var_1F0 & Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1AF86E4:           var_2FC = var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_298), "hh:nn:ss") 
  loc_1AF86FB:           var_370 = var_25C & "' and '" & var_2FC & "' AND PC.Bill_No='" & CVar(Proc_6_38_E69628(CVar(var_29C.Item("Bill_no")), 1, 1, 1)) 
  loc_1AF8727:           var_428 = var_370 & "' and PC.FOLIONO=" & var_3B8 & " and PC.PAYCode in ('" & CVar(MemVar_1F95070) & "LT') GROUP By PC.Bill_No" 
  loc_1AF8735:           unk_5407BC.Execute CStr(var_428), var_448, -1
  loc_1AF8740:           Set var_134 = var_44C
  loc_1AF87AE:           If (var_134.RecordCount > 0) Then
  loc_1AF87DC:             var_EC = CSng(var_134.Fields.Item(0).Value)
  loc_1AF87EC:           Else
  loc_1AF87EF:             var_EC = CDbl(0)
  loc_1AF87F2:           End If
  loc_1AF87F2:         End If
  loc_1AF87F5:       Else
  loc_1AF8809:         var_20C = CVar("Select SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1AF8832:         Proc_6_7_F26918(var_1F0, CVar(var_B4.Fields.Item("ChkInDate")), var_20C, var_2FC, -1, var_294)
  loc_1AF886F:         var_24C = CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), var_EC & var_1F0 & " AND  PC.Bill_No='", var_EC, var_44C)) 'String
  loc_1AF88A1:         var_27C = var_B4.Fields.Item("FolioNo").Value
  loc_1AF88C5:         var_2EC = 1 & var_24C & "' and PC.FOLIONO=" & var_27C & " and PC.PAYCode in ('" & CVar(MemVar_1F95070) & "RMCH') GROUP By PC.Bill_No" 
  loc_1AF88D3:         unk_5407BC.Execute CStr(var_2EC), var_EC, var_EC
  loc_1AF88DE:         Set var_134 = var_294
  loc_1AF8926:         If (var_134.RecordCount > 0) Then
  loc_1AF8954:           var_EC = CSng(var_134.Fields.Item(0).Value)
  loc_1AF8964:         Else
  loc_1AF8967:           var_EC = CDbl(0)
  loc_1AF896A:         End If
  loc_1AF896A:       End If
  loc_1AF896A:     End If
  loc_1AF8971:     If (var_E4 = CDbl(0)) Then
  loc_1AF89B0:       If (var_B4.Fields.Item("Type").Value = "C") Then
  loc_1AF89FA:         Proc_6_7_F26918(var_1F0, CVar(var_B4.Fields.Item("ChkInDate")), "sELECT sno FROM ROOMOCC WHERE chkindate=", var_27C, -1, var_294)
  loc_1AF8A70:         var_26C = var_298 & var_1F0 & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("FolioNo").Value 
  loc_1AF8A7E:         unk_5407BC.Execute CStr(var_26C), 0, var_29C
  loc_1AF8A8E:         var_EC = var_298.Item(var_EC)
  loc_1AF8A96:          = var_29C.Value
  loc_1AF8AD5:         If (var_294.Fields = 1) Then
  loc_1AF8BCC:           var_24C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime <= '") 'String
  loc_1AF8BE2:           var_25C = var_B4.Fields.Item("Bill_no") & var_B4.Fields.Item("ChkOutDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1AF8C05:           var_2FC = var_25C & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1)) 
  loc_1AF8C28:           var_370 = var_2FC & "' and PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & " AND PC.PAYCode in ('" & CVar(MemVar_1F95070) 
  loc_1AF8C3F:           unk_5407BC.Execute CStr(var_370 & "RMCH') GROUP By PC.BILL_NO"), var_3B8, -1
  loc_1AF8CAC:           If (var_394.RecordCount = 0) Then
  loc_1AF8CAF:             GoTo loc_1AFA52E
  loc_1AF8CB2:           End If
  loc_1AF8CB5:         Else
  loc_1AF8CF3:           var_288 = var_B4.Fields.Item("ChkOutTime")
  loc_1AF8D07:           var_21C = "hh:nn:ss"
  loc_1AF8D10:           var_20C = CVar(var_288) 'Address
  loc_1AF8DB9:           var_394 = var_B4.Fields
  loc_1AF8E10:           var_24C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime between '") 'String
  loc_1AF8E26:           var_25C = var_B4.Fields.Item("ChkOutTime") & var_B4.Fields.Item("ChkOutDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(var_20C, var_21C) 
  loc_1AF8E46:           var_31C = var_25C & "' and '" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1AF8E66:           var_3B8 = CVar(Proc_6_38_E69628(CVar(var_394.Item("Bill_no")), 1, 1, 1)) 'String
  loc_1AF8E72:           var_3E8 = var_31C & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & var_3B8 & "' and PC.FOLIONO=" 
  loc_1AF8E95:           var_474 = var_3E8 & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode In ('" & CVar(MemVar_1F95070) & "RMCH') GROUP By PC.BILL_NO" 
  loc_1AF8EA3:           unk_5407BC.Execute CStr(var_474), var_488, -1
  loc_1AF8EAE:           Set var_BC = var_454
  loc_1AF8F12:         End If
  loc_1AF8F15:       Else
  loc_1AF8F1B:         var_180 = 0
  loc_1AF8F6E:         unk_5407BC.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE fOLIONO=" & var_B4.Fields.Item("FolioNo").Value), var_20C, -1
  loc_1AF8F76:         var_284 = var_284.Fields
  loc_1AF8F7E:         var_180 = var_288.Item(var_288)
  loc_1AF8F86:         var_28C = var_28C.Value
  loc_1AF8FB1:         If (var_21C > 1) Then
  loc_1AF9006:           var_21C = "hh:nn:ss"
  loc_1AF907F:           var_29C = var_B4.Fields
  loc_1AF90A8:           var_24C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime > '") 'String
  loc_1AF90B3:           var_1F0 = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1AF90BE:           var_25C = var_B4.Fields.Item("Bill_no") & var_1F0 & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_1F0 & Format(CVar(var_B4.Fields.Item("ChkInTime")), var_21C) 
  loc_1AF90E1:           var_2FC = var_25C & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), 1, 1, var_21C)) 
  loc_1AF90F1:           var_350 = var_2FC & "' and PC.FOLIONO=" & var_29C.Item("FolioNo").Value 
  loc_1AF911B:           unk_5407BC.Execute CStr(var_350 & " AND PC.PAYCode In ('" & CVar(MemVar_1F95070) & "RMCH') GROUP By PC.BILL_NO"), var_3B8, -1
  loc_1AF9126:           Set var_BC = var_394
  loc_1AF9177:         Else
  loc_1AF918B:           var_20C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1AF91B4:           Proc_6_7_F26918(var_1F0, CVar(var_B4.Fields.Item("ChkInDate")), var_20C, var_350, -1)
  loc_1AF91C0:           var_160 = " and PC.RoomNo='"
  loc_1AF9228:           var_27C = CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Bill_no")), var_29C & var_1F0 & var_160 & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='", var_394)) 'String
  loc_1AF9275:           var_31C = var_454 & var_27C & "' and PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode In ('" & CVar(MemVar_1F95070) 
  loc_1AF928C:           unk_5407BC.Execute CStr(var_31C & "RMCH') GROUP By PC.BILL_NO"), 1, var_394
  loc_1AF9297:           Set var_BC = var_29C
  loc_1AF92D5:         End If
  loc_1AF92D5:       End If
  loc_1AF92DB:       var_280 = var_BC.RecordCount
  loc_1AF92E9:       If (var_280 > 0) Then
  loc_1AF930B:         var_194 = CVar(var_BC.Fields.Item("LuxuryTax")) 'Address
  loc_1AF9312:         Proc_6_39_E7D3A0(var_1F0)
  loc_1AF932F:         var_108 = (var_108 + CSng(var_1F0))
  loc_1AF9335:       Else
  loc_1AF9338:         var_118 = CDbl(0)
  loc_1AF933B:       End If
  loc_1AF933E:     Else
  loc_1AF9345:       var_F8 = (var_F8 + var_EC)
  loc_1AF934F:       var_100 = (var_100 + var_E4)
  loc_1AF9352:     End If
  loc_1AF9355:     var_150 = "Bill_no"
  loc_1AF937A:     var_11C = Proc_6_38_E69628(CVar(var_B4.Fields.Item(var_150)), var_100, var_F8, var_118)
  loc_1AF938A:     If (var_E4 > CDbl(0)) Then
  loc_1AF9393:       var_DA = (var_DA + 1)
  loc_1AF9399:       Set var_548 = var_130 
  loc_1AF93A8:       var_548.AddNew var_150, var_160
  loc_1AF93C0:       var_194 = CVar(Proc_6_52_EAE084(CStr(var_DA), 3, var_DA)) 'String
  loc_1AF93CD:       var_548.Collect = "SNo"
  loc_1AF9414:       var_1F0 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("GuestName")), CVar(var_B4.Fields.Item("GuestName")), var_108), &H32)) 'String
  loc_1AF9421:       var_548.Collect = "GuestName"
  loc_1AF94C6:       var_26C = IIf((var_B4.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_B4.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1AF94EA:       var_548.Collect = "BirthAge"
  loc_1AF9538:       Proc_6_39_E7D3A0(var_1F0, CVar(var_B4.Fields.Item("Age")), CVar(Proc_6_52_EAE084(CStr(var_26C), 3, var_1F0)))
  loc_1AF955C:       var_548.Collect = "Age"
  loc_1AF95AC:       var_1F0 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Nationality")), CVar(Proc_6_52_EAE084(CStr(var_1F0), 3))), &H19)) 'String
  loc_1AF95B9:       var_548.Collect = "Nationality"
  loc_1AF9608:       var_1F0 = CVar(Proc_6_45_EADFB8(CStr(var_B4.Fields.Item("RoomNo").Value), 5, var_1F0)) 'String
  loc_1AF9615:       var_548.Collect = "RoomNo"
  loc_1AF9664:       var_1F0 = CVar(Proc_6_52_EAE084(CStr(var_B4.Fields.Item("RoomRate").Value), 7, var_1F0)) 'String
  loc_1AF9671:       var_548.Collect = "RoomRate"
  loc_1AF96D4:       var_548.Collect = "ChkInDate"
  loc_1AF971E:       var_1F0 = CVar(Proc_6_45_EADFB8(CStr(var_B4.Fields.Item("ChkInTime").Value), 5, Format(CVar(var_B4.Fields.Item("ChkInDate")), "DD/MM/YYYY"), 1)) 'String
  loc_1AF972B:       var_548.Collect = "ChkInTime"
  loc_1AF978E:       var_548.Collect = "ChkOutDate"
  loc_1AF97D8:       var_1F0 = CVar(Proc_6_45_EADFB8(CStr(var_B4.Fields.Item("ChkOutTime").Value), 5, Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY"), 1, 1)) 'String
  loc_1AF97E5:       var_548.Collect = "ChkOutTime"
  loc_1AF9840:       var_1F0 = CVar(var_B4.Fields.Item("ChkOutDate")) 'Address
  loc_1AF9847:       var_194 = CVar(var_B4.Fields.Item("ChkInDate")) 'Address
  loc_1AF98D0:       var_27C = IIf((DateDiff("D", var_194, var_1F0, 1, 1) = 0), 1, DateDiff("D", CVar(var_B4.Fields.Item("ChkInDate")), CVar(var_B4.Fields.Item("ChkOutDate")), 1, 1))
  loc_1AF98F4:       var_548.Collect = "StPeriod"
  loc_1AF9929:       Proc_6_39_E7D3A0(var_194, var_EC, CVar(Proc_6_52_EAE084(CStr(var_27C), 3, var_1F0, var_1F0)), 1)
  loc_1AF996D:       var_548.Collect = "TotalTax"
  loc_1AF99B9:       var_1F0 = CVar(Proc_6_52_EAE084(CStr(var_B4.Fields.Item("Person").Value), 5, CVar(Proc_6_52_EAE084(CStr(Format(var_B4.Fields.Item("Person").Value, "0.00")), 8, 1, 1)))) 'String
  loc_1AF99C6:       var_548.Collect = "Person"
  loc_1AF99E9:       var_194 = CVar(Proc_6_52_EAE084(var_11C, 8, var_1F0)) 'String
  loc_1AF99F6:       var_548.Collect = "BillNo"
  loc_1AF9A39:       var_20C = Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY")
  loc_1AF9A4B:       var_548.Collect = "Billdate"
  loc_1AF9A7E:       var_194 = var_B4.Fields.Item("Person").Value
  loc_1AF9AB8:       var_20C = (var_194 = 0) 'Variant
  loc_1AF9B26:       var_2DC = CVar(Proc_6_52_EAE084(CStr(Format(IIf((var_E4 > CDbl(0)), (CVar(var_E4) / IIf(var_20C, 1, CVar(var_B4.Fields.Item("Person")))), 0), "0.00")), 8, 1, 1, var_20C, 1)) 'String
  loc_1AF9B33:       var_548.Collect = "LTPerOcc"
  loc_1AF9B62:       var_150 = var_E4
  loc_1AF9B6A:       Proc_6_39_E7D3A0(var_194, var_150, var_2DC, 1)
  loc_1AF9B79:       var_160 = "0.00"
  loc_1AF9BA1:       var_21C = CVar(Proc_6_52_EAE084(CStr(Format(var_194, var_160)), 8, 1, 1)) 'String
  loc_1AF9BAE:       var_548.Collect = "LTTotal"
  loc_1AF9BCC:       var_548.Update var_150, var_160
  loc_1AF9BD3:       Set var_548 = Nothing 
  loc_1AF9BDA:       var_160 = CVar(var_9C) 'Integer
  loc_1AF9C07:       var_1F0 = (var_160 + var_B4.Fields.Item("Person").Value)
  loc_1AF9C0C:       var_9C = CInt(var_160)
  loc_1AF9C23:       var_86 = (var_86 + 1)
  loc_1AF9C29:     Else
  loc_1AF9C2C:       var_150 = CVar(CLng(3)) 'Long
  loc_1AF9C60:       If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1AF9C69:         var_DA = (var_DA + 1)
  loc_1AF9C6F:         Set var_54C = var_130 
  loc_1AF9C7E:         var_54C.AddNew var_150, var_160
  loc_1AF9C96:         var_194 = CVar(Proc_6_52_EAE084(CStr(var_DA), 3, var_DA, 1, var_150, var_86)) 'String
  loc_1AF9CA3:         var_54C.Collect = "SNo"
  loc_1AF9CCD:         var_194 = CVar(var_B4.Fields.Item("GuestName")) 'Address
  loc_1AF9CEA:         var_1F0 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(var_194, var_194, var_9C, var_21C), &H32, var_194)) 'String
  loc_1AF9CF7:         var_54C.Collect = "GuestName"
  loc_1AF9D9C:         var_26C = IIf((var_B4.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_B4.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1AF9DC0:         var_54C.Collect = "BirthAge"
  loc_1AF9E0E:         Proc_6_39_E7D3A0(var_1F0, CVar(var_B4.Fields.Item("Age")), CVar(Proc_6_52_EAE084(CStr(var_26C), 3, var_1F0)))
  loc_1AF9E32:         var_54C.Collect = "Age"
  loc_1AF9E82:         var_1F0 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Nationality")), CVar(Proc_6_52_EAE084(CStr(var_1F0), 3, var_1F0))), &H19)) 'String
  loc_1AF9E8F:         var_54C.Collect = "Nationality"
  loc_1AF9EDE:         var_1F0 = CVar(Proc_6_45_EADFB8(CStr(var_B4.Fields.Item("RoomNo").Value), 5, var_1F0)) 'String
  loc_1AF9EEB:         var_54C.Collect = "RoomNo"
  loc_1AF9F3A:         var_1F0 = CVar(Proc_6_52_EAE084(CStr(var_B4.Fields.Item("RoomRate").Value), 8, var_1F0)) 'String
  loc_1AF9F47:         var_54C.Collect = "RoomRate"
  loc_1AF9FAA:         var_54C.Collect = "ChkInDate"
  loc_1AF9FF4:         var_1F0 = CVar(Proc_6_45_EADFB8(CStr(var_B4.Fields.Item("ChkInTime").Value), 5, Format(CVar(var_B4.Fields.Item("ChkInDate")), "DD/MM/YYYY"), 1)) 'String
  loc_1AFA001:         var_54C.Collect = "ChkInTime"
  loc_1AFA064:         var_54C.Collect = "ChkOutDate"
  loc_1AFA0AE:         var_1F0 = CVar(Proc_6_45_EADFB8(CStr(var_B4.Fields.Item("ChkOutTime").Value), 5, Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY"), 1, 1)) 'String
  loc_1AFA0BB:         var_54C.Collect = "ChkOutTime"
  loc_1AFA116:         var_1F0 = CVar(var_B4.Fields.Item("ChkOutDate")) 'Address
  loc_1AFA1A6:         var_27C = IIf((DateDiff("D", CVar(var_B4.Fields.Item("ChkInDate")), var_1F0, 1, 1) = 0), 1, DateDiff("D", CVar(var_B4.Fields.Item("ChkInDate")), CVar(var_B4.Fields.Item("ChkOutDate")), 1, 1))
  loc_1AFA1CA:         var_54C.Collect = "StPeriod"
  loc_1AFA1FB:         var_194 = CVar((var_118 + var_E4)) 'Double
  loc_1AFA202:         Proc_6_39_E7D3A0(var_1F0, CVar(var_B4.Fields.Item("ChkInDate")), CVar(Proc_6_52_EAE084(CStr(var_27C), 3, var_1F0, var_1F0)), 1)
  loc_1AFA246:         var_54C.Collect = "TotalTax"
  loc_1AFA294:         var_1F0 = CVar(Proc_6_52_EAE084(CStr(var_B4.Fields.Item("Person").Value), 5, CVar(Proc_6_52_EAE084(CStr(Format(var_1F0, "0.00")), 8, 1, 1)))) 'String
  loc_1AFA2A1:         var_54C.Collect = "Person"
  loc_1AFA2C4:         var_194 = CVar(Proc_6_52_EAE084(var_11C, 8, var_1F0)) 'String
  loc_1AFA2D1:         var_54C.Collect = "BillNo"
  loc_1AFA314:         var_20C = Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY")
  loc_1AFA326:         var_54C.Collect = "Billdate"
  loc_1AFA351:         var_1E0 = var_B4.Fields.Item("Person")
  loc_1AFA359:         var_194 = var_1E0.Value
  loc_1AFA36D:         var_284 = var_B4.Fields
  loc_1AFA375:         var_288 = var_284.Item("Person")
  loc_1AFA37D:         var_22C = CVar(var_288) 'Address
  loc_1AFA393:         var_20C = (var_194 = 0) 'Variant
  loc_1AFA3CA:         var_27C = IIf((var_E4 > CDbl(0)), (CVar(var_E4) / IIf(var_20C, 1, var_22C)), 0)
  loc_1AFA401:         var_2DC = CVar(Proc_6_52_EAE084(CStr(Format(var_27C, "0.00")), 8, 1, 1, var_20C, 1)) 'String
  loc_1AFA40E:         var_54C.Collect = "LTPerOcc"
  loc_1AFA43D:         var_150 = var_E4
  loc_1AFA445:         Proc_6_39_E7D3A0(var_194, var_150, var_2DC, 1)
  loc_1AFA454:         var_160 = "0.00"
  loc_1AFA47C:         var_21C = CVar(Proc_6_52_EAE084(CStr(Format(var_194, var_160)), 8, 1, 1)) 'String
  loc_1AFA489:         var_54C.Collect = "LTTotal"
  loc_1AFA4A7:         var_54C.Update var_150, var_160
  loc_1AFA4AE:         Set var_54C = Nothing 
  loc_1AFA4B2:       End If
  loc_1AFA4B2:     End If
  loc_1AFA4B9:     var_A4 = (var_A4 + var_E4)
  loc_1AFA4BF:     var_150 = CVar(CLng(3)) 'Long
  loc_1AFA4C4:     var_170 = 1
  loc_1AFA4D1:     Set var_184 = Me.FGrid
  loc_1AFA4D7:     var_194 = var_184.TextMatrix)
  loc_1AFA4F3:     If (CStr(var_194) = "Yes") Then
  loc_1AFA4FD:       If (var_E4 > CDbl(0)) Then
  loc_1AFA507:         var_AC = (var_AC + var_EC)
  loc_1AFA50D:       Else
  loc_1AFA514:         var_AC = (var_AC + var_118)
  loc_1AFA517:       End If
  loc_1AFA51A:     Else
  loc_1AFA521:       If (var_E4 <> CDbl(0)) Then
  loc_1AFA52B:         var_AC = (var_AC + var_EC)
  loc_1AFA52E:       End If
  loc_1AFA52E:       ' Referenced from: 1AF8CAF
  loc_1AFA52E:     End If
  loc_1AFA531:     var_B4.MoveNext
  loc_1AFA536:     GoTo loc_1AF6D44
  loc_1AFA539:   End If
  loc_1AFA54D:   var_198 = "Select Sum(BillAmOUNt) from Paycharge where Paycode in ('" & MemVar_1F95070
  loc_1AFA554:   var_1F0 = CVar(var_198 & "LT') and SettleDate between ") 'String
  loc_1AFA55A:   var_150 = var_D0
  loc_1AFA562:   Proc_6_7_F26918(var_194, var_150, var_1F0, var_31C, -1, var_184, var_AC, var_AC)
  loc_1AFA56A:   var_20C = var_AC & var_194 
  loc_1AFA56E:   var_160 = " and "
  loc_1AFA573:   var_21C = var_20C & var_160 
  loc_1AFA57A:   var_170 = var_D8
  loc_1AFA582:   Proc_6_7_F26918(var_22C, var_170, var_21C, var_170, var_150)
  loc_1AFA5A6:   var_26C = var_A4 & var_22C & " and Docid Not in (Select Docid from Paycharge where Paycode in ('" & CVar(MemVar_1F95070) & "LT') and SettleDate between " 
  loc_1AFA5B5:   Proc_6_7_F26918(var_27C, var_D0, var_26C, var_21C)
  loc_1AFA5D5:   Proc_6_7_F26918(var_2DC, var_D8, var_194 & var_27C & " and ")
  loc_1AFA5F4:   unk_5407BC.Execute CStr(var_1F0 & var_2DC & " and AmtDr=0)"), var_118, 
  loc_1AFA5FF:   Set var_134 = var_184
  loc_1AFA62F: End If
  loc_1AFA635: global_84 = "LuxuryTax"
  loc_1AFA63F: Call 0.Method_arg_50 (var_198)
  loc_1AFA65C: global_80 = CStr(Ucase(CVar(var_198)))
  loc_1AFA691: Set var_184 = var_130 
  loc_1AFA698: CreateFieldDefFile(var_184, MemVar_1F950B4 & "\" & global_84 & ".ttx")
  loc_1AFA6C3: var_198 = MemVar_1F950B4 & "\"
  loc_1AFA6DD: Call 0.Method_arg_1C (var_198 & global_84 & ".RPT", var_150)
  loc_1AFA6E8: MemVar_1F951E8 = var_184
  loc_1AFA711: Call 0.Method_arg_64 (var_184, CVar(var_184), var_160)
  loc_1AFA719: Call 0.Method_arg_2C (var_170, var_184)
  loc_1AFA727: Call 0.Method_arg_150 (&HFF)
  loc_1AFA73D: Call 0.Method_arg_90 (var_184, var_280)
  loc_1AFA745: Call 0.Method_arg_24 (var_9A)
  loc_1AFA751: For var_550 =  To CInt(var_280): 1 = var_550 'Integer
  loc_1AFA76A:   Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AFA772:   Call 0.Method_arg_20 (var_1E0)
  loc_1AFA77A:   Call 0.Method_arg_30 (var_198)
  loc_1AFA782:   var_194 = CVar(var_198) 'String
  loc_1AFA790:   var_560 = Ucase(var_194) 'Variant
  loc_1AFA7A9:   If (var_560 = "FORMONTH") Then
  loc_1AFA7B7:     Proc_6_17_EAAE40(var_194)
  loc_1AFA7D3:     Call 0.Method_arg_90 (var_184, CLng(var_9A), var_1E0)
  loc_1AFA7DB:     Call 0.Method_arg_20 (CStr(var_194))
  loc_1AFA7E3:     Call 0.Method_arg_38 (var_F0)
  loc_1AFA7F8:   Else
  loc_1AFA803:     If (var_560 = "TOTAMT") Then
  loc_1AFA81E:       Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AFA826:       Call 0.Method_arg_20 (var_1E0)
  loc_1AFA82E:       Call 0.Method_arg_38 (CStr(var_AC))
  loc_1AFA840:     Else
  loc_1AFA84B:       If (var_560 = "TOTLT") Then
  loc_1AFA866:         Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AFA86E:         Call 0.Method_arg_20 (var_1E0)
  loc_1AFA876:         Call 0.Method_arg_38 (CStr(var_A4))
  loc_1AFA888:       Else
  loc_1AFA893:         If (var_560 = "TITLE") Then
  loc_1AFA8BA:           Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AFA8C2:           Call 0.Method_arg_20 (var_1E0)
  loc_1AFA8CA:           Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_1AFA8E0:         Else
  loc_1AFA8EB:           If (var_560 = "PRINTDATE") Then
  loc_1AFA91B:             Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AFA923:             Call 0.Method_arg_20 (var_1E0)
  loc_1AFA92B:             Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F950EC) & "'"))
  loc_1AFA944:           Else
  loc_1AFA94F:             If (var_560 = "SUMMARYYN") Then
  loc_1AFA967:               Set var_184 = Me.FGrid
  loc_1AFA978:               var_1F0 = CVar(CStr(var_184.TextMatrix))) 'String
  loc_1AFA97E:               Proc_6_17_EAAE40(var_20C, var_1F0)
  loc_1AFA99A:               Call 0.Method_arg_90 (var_1E0, CLng(var_9A), var_284)
  loc_1AFA9A2:               Call 0.Method_arg_20 (CStr(var_20C), 1)
  loc_1AFA9AA:               Call 0.Method_arg_38 (CVar(CLng(2)))
  loc_1AFA9C7:             Else
  loc_1AFA9D2:               If (var_560 = "WT_TOTAMT") Then
  loc_1AFA9ED:                 Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AFA9F5:                 Call 0.Method_arg_20 (var_1E0)
  loc_1AFA9FD:                 Call 0.Method_arg_38 (CStr(var_108))
  loc_1AFAA0F:               Else
  loc_1AFAA1A:                 If (var_560 = "WT_LT") Then
  loc_1AFAA35:                   Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AFAA3D:                   Call 0.Method_arg_20 (var_1E0)
  loc_1AFAA45:                   Call 0.Method_arg_38 (CStr(var_110))
  loc_1AFAA57:                 Else
  loc_1AFAA62:                   If (var_560 = "WT_NETAMT") Then
  loc_1AFAA6E:                     var_198 = CStr((var_108 + var_110))
  loc_1AFAA81:                     Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AFAA89:                     Call 0.Method_arg_20 (var_1E0)
  loc_1AFAA91:                     Call 0.Method_arg_38 (CStr(var_110))
  loc_1AFAAA3:                   Else
  loc_1AFAAAE:                     If (var_560 = "W_TOTAMT") Then
  loc_1AFAAC0:                       var_184 = var_134.Fields
  loc_1AFAAC8:                       var_1E0 = var_184.Item(0)
  loc_1AFAAD7:                       Proc_6_39_E7D3A0(var_1F0)
  loc_1AFAAF3:                       Call 0.Method_arg_90 (var_284, CLng(var_9A), var_288)
  loc_1AFAAFB:                       Call 0.Method_arg_20 (CStr(var_1F0))
  loc_1AFAB03:                       Call 0.Method_arg_38 (CVar(var_1E0))
  loc_1AFAB1E:                     Else
  loc_1AFAB29:                       If (var_560 = "W_LT") Then
  loc_1AFAB44:                         Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AFAB4C:                         Call 0.Method_arg_20 (var_1E0)
  loc_1AFAB54:                         Call 0.Method_arg_38 (CStr(var_100))
  loc_1AFAB66:                       Else
  loc_1AFAB71:                         If (var_560 = "W_NETAMT") Then
  loc_1AFAB9A:                           Proc_6_39_E7D3A0(var_1F0)
  loc_1AFABA9:                           var_20C = (var_1F0 + CVar(var_100))
  loc_1AFABC1:                           Call 0.Method_arg_90 (var_284, CLng(var_9A), var_288)
  loc_1AFABC9:                           Call 0.Method_arg_20 (CStr(var_20C))
  loc_1AFABD1:                           Call 0.Method_arg_38 (CVar(var_134.Fields.Item(0)))
  loc_1AFABEE:                         Else
  loc_1AFABF9:                           If (var_560 = "T_TOTAMT") Then
  loc_1AFAC12:                             var_184 = var_134.Fields
  loc_1AFAC1A:                             var_1E0 = var_184.Item(0)
  loc_1AFAC29:                             Proc_6_39_E7D3A0(var_1F0, CVar(var_1E0))
  loc_1AFAC31:                             var_20C = (CVar(var_108) + var_1F0)
  loc_1AFAC49:                             Call 0.Method_arg_90 (var_284, CLng(var_9A))
  loc_1AFAC51:                             Call 0.Method_arg_20 (var_288)
  loc_1AFAC59:                             Call 0.Method_arg_38 (CStr(var_20C))
  loc_1AFAC76:                           Else
  loc_1AFAC81:                             If (var_560 = "T_LT") Then
  loc_1AFAC8D:                               var_198 = CStr((var_110 + var_100))
  loc_1AFACA0:                               Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AFACA8:                               Call 0.Method_arg_20 (var_1E0)
  loc_1AFACB0:                               Call 0.Method_arg_38 (CStr(var_20C))
  loc_1AFACC2:                             Else
  loc_1AFACCD:                               If (var_560 = "T_NETAMT") Then
  loc_1AFACD7:                                 var_160 = CVar((var_108 + var_110)) 'Double
  loc_1AFAD01:                                 Proc_6_39_E7D3A0(var_1F0, CVar(var_134.Fields.Item(0)))
  loc_1AFAD09:                                 var_20C = (CVar(var_108) + var_1F0)
  loc_1AFAD14:                                 var_21C = (var_20C + CVar(var_100))
  loc_1AFAD2C:                                 Call 0.Method_arg_90 (var_284, CLng(var_9A))
  loc_1AFAD34:                                 Call 0.Method_arg_20 (var_288)
  loc_1AFAD3C:                                 Call 0.Method_arg_38 (CStr(var_21C))
  loc_1AFAD58:                               End If
  loc_1AFAD58:                             End If
  loc_1AFAD58:                           End If
  loc_1AFAD58:                         End If
  loc_1AFAD58:                       End If
  loc_1AFAD58:                     End If
  loc_1AFAD58:                   End If
  loc_1AFAD58:                 End If
  loc_1AFAD58:               End If
  loc_1AFAD58:             End If
  loc_1AFAD58:           End If
  loc_1AFAD58:         End If
  loc_1AFAD58:       End If
  loc_1AFAD58:     End If
  loc_1AFAD58:   End If
  loc_1AFAD5B: Next var_550 'Integer
  loc_1AFAD65: Set var_1E0 = Nothing
  loc_1AFAD7E: Set var_184 = MemVar_1F951E8 
  loc_1AFAD8A: Proc_6_99_1484404(var_184, 0, global_80)
  loc_1AFAD95: MemVar_1F951E8 = var_184
  loc_1AFADA5: global_88 = 0
  loc_1AFADAD: Set var_134 = Nothing
  loc_1AFADB5: Set var_B4 = Nothing
  loc_1AFADBD: Set var_12C = Nothing
  loc_1AFADC5: Set var_130 = Nothing
  loc_1AFADCD: Set var_138 = Nothing
  loc_1AFADD5: Set var_BC = Nothing
  loc_1AFADDD: Set var_120 = Nothing
  loc_1AFADE5: Set var_124 = Nothing
  loc_1AFADE8: Exit Sub
  loc_1AFADE9: ' Referenced from: 1AF6A34
  loc_1AFADE9: Proc_6_60_E63754(global_88, &HFF)
  loc_1AFADF3: global_88 = 0
  loc_1AFADF6: Exit Sub
End Sub

Public Sub Proc_66_75_167D2F4
  'Data Table: 54078C
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_134 As String
  Dim var_144 As Variant
  Dim var_178 As String
  Dim var_164 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_218 As Variant
  Dim var_238 As Variant
  Dim unk_5407BC As Connection15
  Dim var_B4 As Recordset15
  Dim var_B8 As Recordset15
  Dim var_CC As Long
  Dim var_D0 As Long
  Dim var_D4 As Long
  Dim var_D8 As Long
  Dim var_B0 As Double
  Dim var_174 As Variant
  Dim var_88 As Long
  Dim var_1B8 As Variant
  Dim var_260 As String
  Dim var_264 As String
  Dim var_2A0 As String
  Dim var_208 As Variant
  Dim var_2C4 As Variant
  Dim var_2D4 As Variant
  Dim var_2E4 As Variant
  Dim var_2F4 As Variant
  Dim var_304 As Variant
  Dim var_318 As Variant
  Dim var_328 As Variant
  Dim var_348 As Variant
  Dim var_358 As Variant
  Dim var_378 As Variant
  Dim var_388 As Variant
  Dim var_3A8 As Variant
  Dim var_3C8 As Variant
  Dim var_3E8 As Variant
  Dim var_408 As Variant
  Dim var_428 As Variant
  Dim var_448 As Variant
  Dim var_468 As Variant
  Dim var_488 As Variant
  Dim var_4A8 As Variant
  loc_167BC30: On Error Goto loc_167D2E3
  loc_167BC36: var_EC = CVar(CLng(0)) 'Long
  loc_167BC3B: var_10C = 1
  loc_167BC89: var_A4 = CStr(Format(CVar("01/" & CStr(Me.FGrid.TextMatrix))), "dd/MMM/yyyy"))
  loc_167BCA3: var_EC = CVar(CLng(0)) 'Long
  loc_167BCB5: Set var_120 = Me.FGrid
  loc_167BCBB: var_130 = var_120.TextMatrix)
  loc_167BCEF: var_174 = DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & CStr(var_130)))))
  loc_167BD18: var_A8 = CStr(Format(var_174, "dd/MMM/yyyy"))
  loc_167BD44: Proc_6_7_F26918(var_130, var_A4, " (ChkInDt Between ", 1, 1, var_A4)
  loc_167BD50: var_10C = " and  "
  loc_167BD55: var_164 = "01/" & var_130 & var_10C 
  loc_167BD64: Proc_6_7_F26918(var_174, var_A8, var_164, 1)
  loc_167BD84: Proc_6_7_F26918(var_1B8, var_A4, 1 & var_174 & " Or ChkOutDt Between ")
  loc_167BDA4: Proc_6_7_F26918(var_208, var_A8, var_130 & var_1B8 & " and  ")
  loc_167BDC0: global_60 = CStr(var_10C & var_208 & " Or ChkOutDt Is Null)")
  loc_167BDF9: var_134 = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_167BE00: var_178 = CStr(var_10C & var_208 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo"
  loc_167BE09: unk_5407BC.Execute var_178, var_130, -1
  loc_167BE14: Set var_B8 = var_120
  loc_167BE3B: var_134 = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_167BE42: var_178 = CStr(var_10C & var_208 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By DocId,SNo"
  loc_167BE4B: unk_5407BC.Execute var_178, var_130, -1
  loc_167BE56: Set var_B4 = var_120
  loc_167BE8F: If ((var_B4.RecordCount <= 0) And (var_B8.RecordCount <= 0)) Then
  loc_167BE98:   Call 0.Method_arg_50 (CStr(var_10C & var_208 & " Or ChkOutDt Is Null)"), var_120)
  loc_167BEB9:   MsgBox("** No Records Found to Print **", &H40, CVar(CStr(var_10C & var_208 & " Or ChkOutDt Is Null)")), var_164, var_174)
  loc_167BECE:   global_88 = 0
  loc_167BED1:   Exit Sub
  loc_167BED2: End If
  loc_167BF00: var_BC = Replace(CStr(Space(&H64)), " ", "-", 1, -1, 0)
  loc_167BF37: var_C0 = Replace(CStr(Space(&H2B)), " ", "-", 1, -1, 0)
  loc_167BF6E: var_C4 = Replace(CStr(Space(&H64)), " ", "=", 1, -1, 0)
  loc_167BF79: Close 1
  loc_167BF82: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_167BF8B: var_CC = 0
  loc_167BF93: var_D0 = 0
  loc_167BF9B: var_D4 = 0
  loc_167BFA3: var_D8 = 0
  loc_167BFA9: var_DC = vbNullString
  loc_167BFC0: If (var_B8.RecordCount > 0) Then
  loc_167BFC3:   ' Referenced from: 167C41A
  loc_167BFD2:   If Not(var_B8.EOF) Then
  loc_167C015:     If (var_B8.Fields.Item("CheckIn").Value < CDate(CDate(var_A4))) Then
  loc_167C01D:       var_B0 = CDate(var_A4)
  loc_167C023:     Else
  loc_167C063:       If (var_B8.Fields.Item("CheckIn").Value > CDate(CDate(var_A8))) Then
  loc_167C06B:         var_B0 = CDate(var_A8)
  loc_167C071:       Else
  loc_167C09D:         var_B0 = CDate(var_B8.Fields.Item("CheckIn").Value)
  loc_167C0AA:       End If
  loc_167C0AA:     End If
  loc_167C0E6:     If CBool(var_B8.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_167C129:       If (var_B8.Fields.Item("CheckOut").Value > CDate(CDate(var_A8))) Then
  loc_167C18A:         var_198 = (CVar(var_CC) + (DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167C190:         var_CC = CLng(1 & (DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167C1A8:       Else
  loc_167C220:         var_198 = (CVar(var_CC) + (DateDiff("D", var_B0, CVar(var_B8.Fields.Item("CheckOut")), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167C226:         var_CC = CLng(1 & (DateDiff("D", var_B0, CVar(var_B8.Fields.Item("CheckOut")), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167C23D:       End If
  loc_167C240:     Else
  loc_167C249:       If (MemVar_1F950EC < CDate(var_A8)) Then
  loc_167C2A8:         var_198 = (CVar(var_CC) + (DateDiff("D", var_B0, CDate(MemVar_1F950EC), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167C2AE:         var_CC = CLng(1 & (DateDiff("D", var_B0, CDate(MemVar_1F950EC), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167C2C6:       Else
  loc_167C324:         var_198 = (CVar(var_CC) + (DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167C32A:         var_CC = CLng(1 & (DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167C33F:       End If
  loc_167C33F:     End If
  loc_167C3AF:     var_198 = (var_B8.Fields.Item("CheckIn").Value >= CDate(CDate(var_A4))) And (var_B8.Fields.Item("CheckIn").Value <= CDate(CDate(var_A8)))
  loc_167C3C7:     If CBool(var_198) Then
  loc_167C3FB:       var_144 = (CVar(var_D4) + var_B8.Fields.Item("Indian").Value)
  loc_167C401:       var_D4 = CLng(DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1))
  loc_167C412:     End If
  loc_167C415:     var_B8.MoveNext
  loc_167C41A:     GoTo loc_167BFC3
  loc_167C41D:   End If
  loc_167C41D: End If
  loc_167C420: var_DC = vbNullString
  loc_167C437: If (var_B4.RecordCount > 0) Then
  loc_167C43A:   ' Referenced from: 167C891
  loc_167C449:   If Not(var_B4.EOF) Then
  loc_167C48C:     If (var_B4.Fields.Item("CheckIn").Value < CDate(CDate(var_A4))) Then
  loc_167C494:       var_B0 = CDate(var_A4)
  loc_167C49A:     Else
  loc_167C4DA:       If (var_B4.Fields.Item("CheckIn").Value > CDate(CDate(var_A8))) Then
  loc_167C4E2:         var_B0 = CDate(var_A8)
  loc_167C4E8:       Else
  loc_167C514:         var_B0 = CDate(var_B4.Fields.Item("CheckIn").Value)
  loc_167C521:       End If
  loc_167C521:     End If
  loc_167C55D:     If CBool(var_B4.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_167C5A0:       If (var_B4.Fields.Item("CheckOut").Value > CDate(CDate(var_A8))) Then
  loc_167C601:         var_198 = (CVar(var_D0) + (DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1) * var_B4.Fields.Item("Foreigner").Value))
  loc_167C607:         var_D0 = CLng(var_198)
  loc_167C61F:       Else
  loc_167C697:         var_198 = (CVar(var_D0) + (DateDiff("D", var_B0, CVar(var_B4.Fields.Item("CheckOut")), 1, 1) * var_B4.Fields.Item("Foreigner").Value))
  loc_167C69D:         var_D0 = CLng(var_198)
  loc_167C6B4:       End If
  loc_167C6B7:     Else
  loc_167C6C0:       If (MemVar_1F950EC < CDate(var_A8)) Then
  loc_167C71F:         var_198 = (CVar(var_D0) + (DateDiff("D", var_B0, CDate(MemVar_1F950EC), 1, 1) * var_B4.Fields.Item("Foreigner").Value))
  loc_167C725:         var_D0 = CLng(var_198)
  loc_167C73D:       Else
  loc_167C79B:         var_198 = (CVar(var_D0) + (DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1) * var_B4.Fields.Item("Foreigner").Value))
  loc_167C7A1:         var_D0 = CLng(var_198)
  loc_167C7B6:       End If
  loc_167C7B6:     End If
  loc_167C826:     var_198 = (var_B4.Fields.Item("CheckIn").Value >= CDate(CDate(var_A4))) And (var_B4.Fields.Item("CheckIn").Value <= CDate(CDate(var_A8)))
  loc_167C83E:     If CBool(var_198) Then
  loc_167C872:       var_144 = (CVar(var_D8) + var_B4.Fields.Item("Foreigner").Value)
  loc_167C878:       var_D8 = CLng(DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1))
  loc_167C889:     End If
  loc_167C88C:     var_B4.MoveNext
  loc_167C891:     GoTo loc_167C43A
  loc_167C894:   End If
  loc_167C894: End If
  loc_167C8A9: Print 1, vbNullString
  loc_167C8C4: var_134 = "FORM - 6"
  loc_167C8FA: var_1A8 = Me.FGrid.TextMatrix)
  loc_167C91F: var_260 = Proc_6_45_EADFB8("MONTH - " & CStr(var_1A8), &H14, var_1A8, 1, CVar(CLng(0)), var_D0)
  loc_167C92B: var_164 = (Space(&H14) + CVar(Proc_6_45_EADFB8(CStr(Space(&H64)), &H14, 0, 1, var_D8, var_D0, var_D0, var_D0)))
  loc_167C932: var_198 = (var_B4.Fields.Item("CheckIn").Value + Space(&H14))
  loc_167C93C: var_1C8 = (var_198 + CVar(var_260))
  loc_167C942: Print 1, Space(&H14) & CVar(var_260)
  loc_167C970: Print 1, vbNullString
  loc_167C97B: Print 1, var_C4
  loc_167CA03: var_264 = Proc_6_45_EADFB8("NAME OF THE PROPERITY", &H1C, var_B0, var_B0) & "|" & Proc_6_45_EADFB8("CHECKED IN TOURISTS", &H15, var_B0)
  loc_167CA36: var_2A0 = var_264 & "|" & Proc_6_45_EADFB8("TOURISTS SPENT NIGHTS", &H15, var_D4) & "|" & Proc_6_45_EADFB8("NO. OF TOTAL", &HD) & "|" & Proc_6_45_EADFB8("NO. OF TOTAL", &HD)
  loc_167CA3B: Print 1, var_2A0
  loc_167CADF: var_144 = (Space(&H1C) + "|")
  loc_167CAE9: var_174 = (CVar(Proc_6_45_EADFB8(CStr(Space(&H64)), &H14, 0, 1, var_D8, var_D0, var_D0, var_D0)) + CVar(Proc_6_45_EADFB8("IN THE MONTH", &H15)))
  loc_167CAF2: var_198 = (Space(&H14) + "|")
  loc_167CAFC: var_1B8 = (var_198 + CVar(Proc_6_45_EADFB8("IN THE MONTH", &H15)))
  loc_167CB05: var_1C8 = (CVar(Proc_6_45_EADFB8("IN THE MONTH", &H15)) + "|")
  loc_167CB0F: var_208 = (Space(&H1C) & CVar(Proc_6_45_EADFB8("IN THE MONTH", &H15)) + CVar(Proc_6_45_EADFB8("AVAILABLE", &HD)))
  loc_167CB18: var_218 = (var_208 + "|")
  loc_167CB22: var_2C4 = ("|" & var_208 + CVar(Proc_6_45_EADFB8("AVAILABLE", &HD)))
  loc_167CB28: Print 1, var_2C4
  loc_167CB9F: var_144 = (Space(&H1C) + "|")
  loc_167CBA9: var_164 = (CVar(Proc_6_45_EADFB8(CStr(Space(&H64)), &H14, 0, 1, var_D8, var_D0, var_D0, var_D0)) + CVar(var_C0))
  loc_167CBB2: var_174 = (CVar(Proc_6_45_EADFB8("IN THE MONTH", &H15)) + "|")
  loc_167CBBC: var_1A8 = (Space(&H14) + CVar(Proc_6_45_EADFB8("ROOMS IN", &HD)))
  loc_167CBC5: var_1B8 = (CVar(Proc_6_45_EADFB8("IN THE MONTH", &H15)) + "|")
  loc_167CBCF: var_1E8 = (CVar(Proc_6_45_EADFB8("IN THE MONTH", &H15)) + CVar(Proc_6_45_EADFB8("BEDS IN", &HD)))
  loc_167CBD5: Print 1, CVar(Proc_6_45_EADFB8("AVAILABLE", &HD))
  loc_167CC94: var_144 = (Space(&H1C) + "|")
  loc_167CC9E: var_174 = (CVar(Proc_6_45_EADFB8(CStr(Space(&H64)), &H14, 0, 1, var_D8, var_D0, var_D0, var_D0)) + CVar(Proc_6_45_EADFB8("INDIAN", &HA)))
  loc_167CCA7: var_198 = (Space(&H14) + "|")
  loc_167CCB1: var_1B8 = (CVar(Proc_6_45_EADFB8("ROOMS IN", &HD)) + CVar(Proc_6_45_EADFB8("FOREIGNER", &HA)))
  loc_167CCBA: var_1C8 = (CVar("THE MONTH") + "|")
  loc_167CCC4: var_208 = (CVar(Proc_6_45_EADFB8("BEDS IN", &HD)) + CVar(Proc_6_45_EADFB8("INDIAN", &HA)))
  loc_167CCCD: var_218 = (var_208 + "|")
  loc_167CCD7: var_2C4 = ("|" & var_208 + CVar(Proc_6_45_EADFB8("FOREIGNER", &HA)))
  loc_167CCE0: var_2D4 = (var_2C4 + "|")
  loc_167CCEA: var_2F4 = (var_2D4 + CVar(Proc_6_45_EADFB8("THE MONTH", &HD)))
  loc_167CCF3: var_304 = (var_2F4 + "|")
  loc_167CCFD: var_328 = (var_304 + CVar(Proc_6_45_EADFB8("THE MONTH", &HD)))
  loc_167CD03: Print 1, var_328
  loc_167CD52: Print 1, var_BC
  loc_167CD60: var_130 = Space(&HD)
  loc_167CE16: var_2E4 = ("3" + Space(5))
  loc_167CE1F: var_2F4 = (CVar(Proc_6_45_EADFB8("THE MONTH", &HD)) + "|")
  loc_167CE26: var_318 = (var_2F4 + Space(4))
  loc_167CE2F: var_328 = (CVar(Proc_6_45_EADFB8("THE MONTH", &HD)) + "4")
  loc_167CE36: var_348 = (var_328 + Space(5))
  loc_167CE3F: var_358 = (var_348 + "|")
  loc_167CE46: var_378 = (var_358 + Space(4))
  loc_167CE4F: var_388 = (var_378 + "5")
  loc_167CE56: var_3A8 = (var_388 + Space(5))
  loc_167CE5F: var_3C8 = (var_3A8 + "|")
  loc_167CE66: var_3E8 = (var_3C8 + Space(6))
  loc_167CE6F: var_408 = (var_3E8 + "6")
  loc_167CE76: var_428 = (var_408 + Space(6))
  loc_167CE7F: var_448 = (var_428 + "|")
  loc_167CE86: var_468 = (var_448 + Space(6))
  loc_167CE8F: var_488 = (var_468 + "7")
  loc_167CE96: var_4A8 = (var_488 + Space(6))
  loc_167CEA2: var_144 = (var_130 + "1")
  loc_167CEA9: var_174 = (CVar(Proc_6_45_EADFB8(CStr(Space(&H64)), &H14, 0, 1, var_D8, var_D0, var_D0, var_D0)) + Space(&HE))
  loc_167CEB2: var_198 = (Space(&H14) + "|")
  loc_167CEB9: var_1B8 = (CVar(Proc_6_45_EADFB8("ROOMS IN", &HD)) + Space(4))
  loc_167CEC2: var_1C8 = (CVar("THE MONTH") + "2")
  loc_167CEC9: var_208 = (CVar(Proc_6_45_EADFB8("BEDS IN", &HD)) + Space(5))
  loc_167CED2: var_218 = (var_208 + "|")
  loc_167CED9: var_2C4 = ("2" & var_208 + Space(4))
  loc_167CEDF: Print 1, var_2C4, var_4A8
  loc_167CF3B: Print 1, var_C4
  loc_167CF5C: Proc_6_39_E7D3A0(var_130, var_D4)
  loc_167CF8E: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("ROOMS IN", &HD)), var_D8)
  loc_167CFC0: Proc_6_39_E7D3A0(var_208, var_CC)
  loc_167CFF2: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("THE MONTH", &HD)), var_D0)
  loc_167D01F: var_174 = (CVar(Proc_6_45_EADFB8(MemVar_1F95130, &H1D) & Proc_6_52_EAE084(CStr(var_130), 8)) + Space(3))
  loc_167D029: var_1B8 = (Space(&H14) + CVar(Proc_6_52_EAE084(CStr(CVar(Proc_6_45_EADFB8("ROOMS IN", &HD))), 8)))
  loc_167D030: var_1E8 = (CVar("THE MONTH") + Space(3))
  loc_167D03A: var_238 = (Space(5) + CVar(Proc_6_52_EAE084(CStr(var_208), 8)))
  loc_167D041: var_2D4 = (Space(4) + Space(3))
  loc_167D04B: var_304 = (Space(5) + CVar(Proc_6_52_EAE084(CStr(CVar(Proc_6_45_EADFB8("THE MONTH", &HD))), 8)))
  loc_167D051: Print 1, Space(4)
  loc_167D0C2: Print 1, Proc_6_45_EADFB8(CStr(Trim(MemVar_1F95134)), &H1D)
  loc_167D101: Print 1, Proc_6_45_EADFB8(CStr(Trim(MemVar_1F95138)), &H1D)
  loc_167D140: Print 1, Proc_6_45_EADFB8(CStr(Trim(MemVar_1F9513C)), &H1D)
  loc_167D157: Print 1, vbNullString
  loc_167D162: Print 1, vbNullString
  loc_167D16D: Print 1, vbNullString
  loc_167D178: Print 1, var_C4
  loc_167D183: Print 1, vbNullString
  loc_167D18E: Print 1, vbNullString
  loc_167D199: Print 1, vbNullString
  loc_167D1B4: var_144 = (Space(&H46) + "Signature:")
  loc_167D1BA: Print 1, Space(3)
  loc_167D1CC: Print 1, vbNullString
  loc_167D1D7: Print 1, vbNullString
  loc_167D1F2: var_144 = (Space(&H46) + "Prop./Manager,")
  loc_167D1F8: Print 1, Space(3)
  loc_167D21A: var_144 = (Space(&H46) + "Stamp:")
  loc_167D220: Print 1, Space(3)
  loc_167D236: var_88 = (var_88 + &H1B)
  loc_167D24B: Print 1, Chr(&HC)
  loc_167D256: Close 1
  loc_167D25F: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_167D26F: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_167D27A: Close 1
  loc_167D284: If (MemVar_1F953BC = "Y") Then
  loc_167D2A0:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_167D2AA: Else
  loc_167D2C3:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_167D2CA: End If
  loc_167D2CF: global_88 = 0
  loc_167D2D7: Set var_B8 = Nothing
  loc_167D2DF: Set var_B4 = Nothing
  loc_167D2E2: Exit Sub
  loc_167D2E3: ' Referenced from: 167BC30
  loc_167D2E3: Proc_6_60_E63754(global_88, 0)
  loc_167D2ED: global_88 = 0
  loc_167D2F0: Exit Sub
End Sub

Public Sub Proc_66_76_1556BF8
  'Data Table: 54078C
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_118 As String
  Dim var_128 As Variant
  Dim var_15C As String
  Dim var_E0 As Variant
  Dim var_148 As Variant
  Dim var_17C As Variant
  Dim var_B0 As Long
  Dim var_B4 As Long
  Dim var_B8 As Long
  Dim var_BC As Long
  Dim unk_5407BC As Connection15
  Dim var_A4 As Recordset15
  Dim var_228 As Field20
  Dim var_98 As Double
  Dim var_158 As Variant
  Dim var_22C As Fields15
  Dim var_A0 As Recordset15
  Dim var_238 As Recordset15
  loc_1555BF8: On Error Goto loc_1556BE7
  loc_1555BFE: var_D0 = CVar(CLng(0)) 'Long
  loc_1555C03: var_F0 = 1
  loc_1555C51: var_8C = CStr(Format(CVar("01/" & CStr(Me.FGrid.TextMatrix))), "dd/MMM/yyyy"))
  loc_1555C6B: var_D0 = CVar(CLng(0)) 'Long
  loc_1555C7D: Set var_104 = Me.FGrid
  loc_1555C83: var_114 = var_104.TextMatrix)
  loc_1555CB7: var_158 = DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & CStr(var_114)))))
  loc_1555CE0: var_90 = CStr(Format(var_158, "dd/MMM/yyyy"))
  loc_1555D0C: Proc_6_7_F26918(var_114, var_8C, " (ChkInDt Between ", 1, 1, var_8C)
  loc_1555D18: var_F0 = " and  "
  loc_1555D2C: Proc_6_7_F26918(var_158, var_90, "01/" & var_114 & var_F0, 1)
  loc_1555D4C: Proc_6_7_F26918(var_19C, var_8C, 1 & var_158 & " Or ChkOutDt Between ")
  loc_1555D6C: Proc_6_7_F26918(var_1EC, var_90, var_114 & var_19C & " and  ")
  loc_1555D88: global_60 = CStr(var_F0 & var_1EC & " Or ChkOutDt Is Null)")
  loc_1555DAF: var_B0 = 0
  loc_1555DB7: var_B4 = 0
  loc_1555DBF: var_B8 = 0
  loc_1555DC7: var_BC = 0
  loc_1555DCD: var_C0 = vbNullString
  loc_1555DE7: var_118 = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_1555DEE: var_15C = CStr(var_F0 & var_1EC & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo"
  loc_1555DF7: unk_5407BC.Execute var_15C, var_114, -1
  loc_1555E02: Set var_A4 = var_104
  loc_1555E29: var_118 = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_1555E30: var_15C = CStr(var_F0 & var_1EC & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By DocId,SNo"
  loc_1555E39: unk_5407BC.Execute var_15C, var_114, -1
  loc_1555E44: Set var_A0 = var_104
  loc_1555E68: If (var_A4.RecordCount > 0) Then
  loc_1555E6B:   ' Referenced from: 15562C2
  loc_1555E7A:   If Not(var_A4.EOF) Then
  loc_1555EBD:     If (var_A4.Fields.Item("CheckIn").Value < CDate(CDate(var_8C))) Then
  loc_1555EC5:       var_98 = CDate(var_8C)
  loc_1555ECB:     Else
  loc_1555F0B:       If (var_A4.Fields.Item("CheckIn").Value > CDate(CDate(var_90))) Then
  loc_1555F13:         var_98 = CDate(var_90)
  loc_1555F19:       Else
  loc_1555F45:         var_98 = CDate(var_A4.Fields.Item("CheckIn").Value)
  loc_1555F52:       End If
  loc_1555F52:     End If
  loc_1555F8E:     If CBool(var_A4.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_1555FD1:       If (var_A4.Fields.Item("CheckOut").Value > CDate(CDate(var_90))) Then
  loc_1556032:         var_17C = (CVar(var_B0) + (DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_1556038:         var_B0 = CLng(1 & (DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_1556050:       Else
  loc_15560C8:         var_17C = (CVar(var_B0) + (DateDiff("D", var_98, CVar(var_A4.Fields.Item("CheckOut")), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_15560CE:         var_B0 = CLng(1 & (DateDiff("D", var_98, CVar(var_A4.Fields.Item("CheckOut")), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_15560E5:       End If
  loc_15560E8:     Else
  loc_15560F1:       If (MemVar_1F950EC < CDate(var_90)) Then
  loc_1556150:         var_17C = (CVar(var_B0) + (DateDiff("D", var_98, CDate(MemVar_1F950EC), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_1556156:         var_B0 = CLng(1 & (DateDiff("D", var_98, CDate(MemVar_1F950EC), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_155616E:       Else
  loc_15561CC:         var_17C = (CVar(var_B0) + (DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_15561D2:         var_B0 = CLng(1 & (DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_15561E7:       End If
  loc_15561E7:     End If
  loc_1556257:     var_17C = (var_A4.Fields.Item("CheckIn").Value >= CDate(CDate(var_8C))) And (var_A4.Fields.Item("CheckIn").Value <= CDate(CDate(var_90)))
  loc_155626F:     If CBool(var_17C) Then
  loc_15562A3:       var_128 = (CVar(var_B8) + var_A4.Fields.Item("Indian").Value)
  loc_15562A9:       var_B8 = CLng(DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1))
  loc_15562BA:     End If
  loc_15562BD:     var_A4.MoveNext
  loc_15562C2:     GoTo loc_1555E6B
  loc_15562C5:   End If
  loc_15562C5: End If
  loc_15562C8: var_C0 = vbNullString
  loc_15562DF: If (var_A0.RecordCount > 0) Then
  loc_15562E2:   ' Referenced from: 1556739
  loc_15562F1:   If Not(var_A0.EOF) Then
  loc_1556334:     If (var_A0.Fields.Item("CheckIn").Value < CDate(CDate(var_8C))) Then
  loc_155633C:       var_98 = CDate(var_8C)
  loc_1556342:     Else
  loc_1556382:       If (var_A0.Fields.Item("CheckIn").Value > CDate(CDate(var_90))) Then
  loc_155638A:         var_98 = CDate(var_90)
  loc_1556390:       Else
  loc_15563BC:         var_98 = CDate(var_A0.Fields.Item("CheckIn").Value)
  loc_15563C9:       End If
  loc_15563C9:     End If
  loc_1556405:     If CBool(var_A0.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_1556448:       If (var_A0.Fields.Item("CheckOut").Value > CDate(CDate(var_90))) Then
  loc_15564A9:         var_17C = (CVar(var_B4) + (DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_15564AF:         var_B4 = CLng(var_17C)
  loc_15564C7:       Else
  loc_155653F:         var_17C = (CVar(var_B4) + (DateDiff("D", var_98, CVar(var_A0.Fields.Item("CheckOut")), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_1556545:         var_B4 = CLng(var_17C)
  loc_155655C:       End If
  loc_155655F:     Else
  loc_1556568:       If (MemVar_1F950EC < CDate(var_90)) Then
  loc_15565C7:         var_17C = (CVar(var_B4) + (DateDiff("D", var_98, CDate(MemVar_1F950EC), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_15565CD:         var_B4 = CLng(var_17C)
  loc_15565E5:       Else
  loc_1556643:         var_17C = (CVar(var_B4) + (DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_1556649:         var_B4 = CLng(var_17C)
  loc_155665E:       End If
  loc_155665E:     End If
  loc_155669C:     var_F0 = "CheckIn"
  loc_15566A8:     var_22C = var_A0.Fields
  loc_15566B8:     var_148 = var_22C.Item(var_F0).Value
  loc_15566CA:     var_158 = (var_148 <= CDate(CDate(var_90)))
  loc_15566E6:     If CBool((var_A0.Fields.Item("CheckIn").Value >= CDate(CDate(var_8C))) And var_158) Then
  loc_15566EC:       var_E0 = CVar(var_BC) 'Long
  loc_1556702:       var_104 = var_A0.Fields
  loc_155670A:       var_228 = var_104.Item("Foreigner")
  loc_155671A:       var_128 = (var_E0 + var_228.Value)
  loc_1556720:       var_BC = CLng(DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1))
  loc_1556731:     End If
  loc_1556734:     var_A0.MoveNext
  loc_1556739:     GoTo loc_15562E2
  loc_155673C:   End If
  loc_155673C: End If
  loc_1556742: var_220 = var_A0.RecordCount
  loc_1556765: If ((var_220 <= 0) And (var_A4.RecordCount <= 0)) Then
  loc_155676E:   Call 0.Method_arg_50 (CStr(var_F0 & var_1EC & " Or ChkOutDt Is Null)"), var_BC, var_B4, var_B4, var_B4, var_B4)
  loc_1556784:   var_D0 = "** No Records Found to Print **"
  loc_155678F:   MsgBox(var_D0, &H40, CVar(CStr(var_F0 & var_1EC & " Or ChkOutDt Is Null)")), var_148, var_158)
  loc_15567A4:   global_88 = 0
  loc_15567A7:   Exit Sub
  loc_15567A8: End If
  loc_15567B5: Call Proc_66_53_F222EC(New)
  loc_15567BD: Set var_A8 = var_104
  loc_15567C3: Set var_238 = var_A8 
  loc_15567D2: var_238.AddNew var_D0, var_E0
  loc_15567DC: var_114 = CVar(CStr(var_B8)) 'String
  loc_15567E9: var_238.Collect = "IndianGuest"
  loc_15567F6: var_114 = CVar(CStr(var_BC)) 'String
  loc_1556803: var_238.Collect = "ForeignerGuest"
  loc_1556810: var_114 = CVar(CStr(var_B0)) 'String
  loc_155681D: var_238.Collect = "IndianNight"
  loc_155682E: var_D0 = "ForeignerNight"
  loc_1556837: var_238.Collect = var_D0
  loc_155684A: var_238.Update var_D0, var_E0
  loc_1556851: Set var_238 = Nothing 
  loc_155685B: global_84 = "Form-6"
  loc_1556865: Call 0.Method_arg_50 (CStr(var_F0 & var_1EC & " Or ChkOutDt Is Null)"), CVar(CStr(var_B4)), CVar(CStr(var_B4)), CVar(CStr(var_B4)), CVar(CStr(var_B4)), var_104, global_88)
  loc_1556882: global_80 = CStr(Ucase(CVar(CStr(var_F0 & var_1EC & " Or ChkOutDt Is Null)"))))
  loc_15568B7: Set var_104 = var_A8 
  loc_15568BE: CreateFieldDefFile(var_104, MemVar_1F950B4 & "\" & global_84 & ".ttx", &HFF, var_98, var_98)
  loc_15568E9: var_118 = MemVar_1F950B4 & "\"
  loc_1556903: Call 0.Method_arg_1C (var_118 & global_84 & ".RPT", var_D0, var_104, var_98)
  loc_155690E: MemVar_1F951E8 = var_104
  loc_1556937: Call 0.Method_arg_64 (var_104, CVar(var_104), var_E0, var_F0)
  loc_155693F: Call 0.Method_arg_2C (var_B8, var_B0)
  loc_155694D: Call 0.Method_arg_150 (var_B0)
  loc_1556966: Call 0.Method_arg_90 (var_104, var_220)
  loc_155696E: Call 0.Method_arg_24 (var_9C)
  loc_1556979: For var_248 =  To var_220: 1 = var_248 'Long
  loc_1556991:   Call 0.Method_arg_90 (var_104, var_9C)
  loc_1556999:   Call 0.Method_arg_20 (var_228)
  loc_15569A1:   Call 0.Method_arg_30 (var_118)
  loc_15569B7:   var_258 = Ucase(CVar(var_118)) 'Variant
  loc_15569D0:   If (var_258 = "FROMDATE") Then
  loc_1556A19:     Call 0.Method_arg_90 (var_228, var_9C, var_22C)
  loc_1556A21:     Call 0.Method_arg_20 (1 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(0)))
  loc_1556A29:     Call 0.Method_arg_38 ("'")
  loc_1556A46:   Else
  loc_1556A51:     If (var_258 = "TODATE") Then
  loc_1556A6C:       Set var_104 = Me.FGrid
  loc_1556A9A:       Call 0.Method_arg_90 (var_228, var_9C, var_22C)
  loc_1556AA2:       Call 0.Method_arg_20 (1 & CStr(var_104.TextMatrix)) & "'", CVar(CLng(1)))
  loc_1556AAA:       Call 0.Method_arg_38 ("'")
  loc_1556AC7:     Else
  loc_1556AD2:       If (var_258 = "TITLE") Then
  loc_1556AF8:         Call 0.Method_arg_90 (var_104, var_9C)
  loc_1556B00:         Call 0.Method_arg_20 (var_228)
  loc_1556B08:         Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_1556B1E:       Else
  loc_1556B29:         If (var_258 = "PRINTDATE") Then
  loc_1556B58:           Call 0.Method_arg_90 (var_104, var_9C)
  loc_1556B60:           Call 0.Method_arg_20 (var_228)
  loc_1556B68:           Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F950EC) & "'"))
  loc_1556B7E:         End If
  loc_1556B7E:       End If
  loc_1556B7E:     End If
  loc_1556B7E:   End If
  loc_1556B81: Next var_248 'Long
  loc_1556B8B: Set var_228 = Nothing
  loc_1556BA4: Set var_104 = MemVar_1F951E8 
  loc_1556BB0: Proc_6_99_1484404(var_104, 0, global_80)
  loc_1556BBB: MemVar_1F951E8 = var_104
  loc_1556BCB: global_88 = 0
  loc_1556BD3: Set var_A8 = Nothing
  loc_1556BDB: Set var_A4 = Nothing
  loc_1556BE3: Set var_A0 = Nothing
  loc_1556BE6: Exit Sub
  loc_1556BE7: ' Referenced from: 1555BF8
  loc_1556BE7: Proc_6_60_E63754(global_88, &HFF)
  loc_1556BF1: global_88 = 0
  loc_1556BF4: Exit Sub
End Sub

Public Sub Proc_66_77_EF7E1C(arg_C, arg_10) 'EF7E1C
  'Data Table: 54078C
  Dim var_98 As Variant
  Dim var_B8 As Long
  Dim var_CC As MSHFlexGrid
  Dim var_86 As Integer
  loc_EF7D54: var_98 = CVar(CLng(arg_C)) 'Long
  loc_EF7D59: var_B8 = 1
  loc_EF7D88: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_EF7DAB:   MsgBox(CVar(arg_10 & " Should not be Blank."), &H40, "Validation Check", var_100, var_110)
  loc_EF7DBF:   Set var_CC = Me.FGrid
  loc_EF7DE3:   Me.FGrid.Row = CVar(CLng(arg_C))
  loc_EF7DFE:   Me.FGrid.Col = 1
  loc_EF7E08:   var_86 = 0
  loc_EF7E0E: Else
  loc_EF7E10:   var_86 = &HFF
  loc_EF7E13: End If
  loc_EF7E13: Proc_66_77_EF7E1C = var_86
End Sub

Public Sub Proc_66_78_106C388(arg_C) '106C388
  'Data Table: 54078C
  Dim var_8C As Recordset15
  loc_106C0F9: Set var_8C = arg_C 
  loc_106C121: var_8C.Fields.Append "DocId", &HC8, &H15
  loc_106C14D: var_8C.Fields.Append "VDate", &HC8, &HB
  loc_106C179: var_8C.Fields.Append "Person", &HC8, &H19
  loc_106C1A5: var_8C.Fields.Append "FolioNo", &HC8, 5
  loc_106C1D1: var_8C.Fields.Append "ChkInDate", &HC8, &HB
  loc_106C1FD: var_8C.Fields.Append "ChkInTime", &HC8, 5
  loc_106C229: var_8C.Fields.Append "ChkOutDate", &HC8, &HB
  loc_106C255: var_8C.Fields.Append "ChkOutTime", &HC8, 5
  loc_106C281: var_8C.Fields.Append "RoomRate", &HC8, 7
  loc_106C2AD: var_8C.Fields.Append "RoomNo", &HC8, 5
  loc_106C2D9: var_8C.Fields.Append "GuestName", &HC8, &H19
  loc_106C305: var_8C.Fields.Append "BirthDate", &HC8, &HB
  loc_106C331: var_8C.Fields.Append "Nationality", &HC8, &HB
  loc_106C341: var_8C.CursorType = 3
  loc_106C34E: var_8C.LockType = 3
  loc_106C36D: var_8C.Open var_A0, var_B0, -1
  loc_106C374: Set var_8C = Nothing 
  loc_106C37B: Set var_88 = arg_C 
  loc_106C37F: Proc_66_78_106C388 = -1
End Sub

Public Sub Proc_66_79_19E0A08
  'Data Table: 54078C
  Dim var_17C As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_18C As Variant
  Dim var_19C As Variant
  Dim var_1AC As Variant
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_210 As Variant
  Dim var_250 As Variant
  Dim var_294 As Variant
  Dim var_398 As Variant
  Dim var_39C As String
  Dim var_3A0 As String
  Dim unk_5407BC As Connection15
  Dim var_AC As Long
  Dim var_B0 As Long
  Dim var_B4 As Long
  Dim var_B8 As Long
  Dim var_98 As Recordset15
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_A8 As Double
  Dim var_94 As Recordset15
  Dim var_3B8 As Recordset15
  Dim var_C8 As Long
  Dim var_CC As Long
  Dim var_C0 As Recordset15
  Dim var_16C As Variant
  Dim var_3C0 As String
  Dim var_3C4 As Recordset15
  Dim var_3C8 As Recordset15
  Dim var_DC As Recordset15
  Dim var_E0 As Recordset15
  Dim var_F4 As Long
  Dim var_F8 As Long
  Dim var_E8 As Long
  Dim var_EC As Long
  Dim var_D4 As Long
  Dim var_3CC As Recordset15
  Dim var_3D0 As Recordset15
  Dim var_9C As Recordset15
  Dim var_D0 As Recordset15
  Dim var_E4 As Recordset15
  Dim var_3D2 As Integer
  Dim var_3DC As Recordset15
  Dim var_3E8 As Double
  loc_19DD885: Call Proc_66_56_1004B4C(New)
  loc_19DD88D: Set var_90 = var_FC
  loc_19DD890: On Error Goto loc_19E09FA
  loc_19DD893: var_17C = " (ChkInDt Between "
  loc_19DD8AD: Set var_FC = Me.FGrid
  loc_19DD8B3: var_14C = Me.FGrid.TextMatrix)
  loc_19DD8C4: Proc_6_7_F26918(var_16C, CVar(CStr(var_14C)), 1)
  loc_19DD905: Proc_6_7_F26918(var_220, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_19DD946: Proc_6_7_F26918(var_2C4, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_19DD987: Proc_6_7_F26918(var_368, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_19DD998: var_398 = CVar(CLng(0)) & var_16C & " And " & var_220 & " Or ChkOutDt Between " & var_2C4 & " And " & var_368 & " Or ChkOutDt Is Null)" 
  loc_19DD9A3: global_60 = CStr(var_398)
  loc_19DD9F7: var_39C = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_19DDA07: unk_5407BC.Execute CStr(var_398) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo", var_14C, -1
  loc_19DDA12: Set var_98 = var_FC
  loc_19DDA39: var_39C = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_19DDA49: unk_5407BC.Execute CStr(var_398) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By DocId,SNo", var_14C, -1
  loc_19DDA54: Set var_94 = var_FC
  loc_19DDA69: var_AC = 0
  loc_19DDA71: var_B0 = 0
  loc_19DDA79: var_B4 = 0
  loc_19DDA81: var_B8 = 0
  loc_19DDA87: var_BC = vbNullString
  loc_19DDA9E: If (var_98.RecordCount > 0) Then
  loc_19DDAA1:   ' Referenced from: 19DE0D6
  loc_19DDAB0:   If Not(var_98.EOF) Then
  loc_19DDAD5:     var_15C = var_98.Fields.Item("CheckIn").Value
  loc_19DDAE0:     var_11C = CVar(CLng(0)) 'Long
  loc_19DDB22:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19DDB28:       var_10C = CVar(CLng(0)) 'Long
  loc_19DDB2D:       var_12C = 1
  loc_19DDB50:       var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19DDB5F:     Else
  loc_19DDB81:       var_15C = var_98.Fields.Item("CheckIn").Value
  loc_19DDB8C:       var_11C = CVar(CLng(1)) 'Long
  loc_19DDBCE:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19DDBD4:         var_10C = CVar(CLng(1)) 'Long
  loc_19DDBD9:         var_12C = 1
  loc_19DDBFC:         var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19DDC0B:       Else
  loc_19DDC37:         var_A8 = CDate(var_98.Fields.Item("CheckIn").Value)
  loc_19DDC44:       End If
  loc_19DDC44:     End If
  loc_19DDC80:     If CBool(var_98.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_19DDCA5:       var_15C = var_98.Fields.Item("CheckOut").Value
  loc_19DDCB0:       var_11C = CVar(CLng(1)) 'Long
  loc_19DDCF2:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19DDCF8:         var_10C = CVar(CLng(1)) 'Long
  loc_19DDCFD:         var_12C = 1
  loc_19DDD7E:         var_200 = (CVar(var_AC) + (DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_98.Fields.Item("Indian").Value))
  loc_19DDD84:         var_AC = CLng(Me.FGrid.TextMatrix))
  loc_19DDDA3:       Else
  loc_19DDE1B:         var_1AC = (CVar(var_AC) + (DateDiff("D", var_A8, CVar(var_98.Fields.Item("CheckOut")), 1, 1) * var_98.Fields.Item("Indian").Value))
  loc_19DDE21:         var_AC = CLng((DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_98.Fields.Item("Indian").Value))
  loc_19DDE38:       End If
  loc_19DDE3B:     Else
  loc_19DDE3E:       var_10C = CVar(CLng(1)) 'Long
  loc_19DDE43:       var_12C = 1
  loc_19DDE78:       If (MemVar_1F950EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_19DDED7:         var_1AC = (CVar(var_AC) + (DateDiff("D", var_A8, CDate(MemVar_1F950EC), 1, 1) * var_98.Fields.Item("Indian").Value))
  loc_19DDEDD:         var_AC = CLng((DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_98.Fields.Item("Indian").Value))
  loc_19DDEF5:       Else
  loc_19DDEF8:         var_10C = CVar(CLng(1)) 'Long
  loc_19DDEFD:         var_12C = 1
  loc_19DDF7E:         var_200 = (CVar(var_AC) + (DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_98.Fields.Item("Indian").Value))
  loc_19DDF84:         var_AC = CLng(Me.FGrid.TextMatrix))
  loc_19DDFA0:       End If
  loc_19DDFA0:     End If
  loc_19DDFC2:     var_15C = var_98.Fields.Item("CheckIn").Value
  loc_19DDFCD:     var_11C = CVar(CLng(0)) 'Long
  loc_19DDFD2:     var_13C = 1
  loc_19DDFF5:     var_19C = CDate(CDate(CStr(Me.FGrid.TextMatrix))))
  loc_19DE020:     var_1AC = var_98.Fields.Item("CheckIn").Value
  loc_19DE083:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))) Then
  loc_19DE0B7:       var_15C = (CVar(var_B4) + var_98.Fields.Item("Indian").Value)
  loc_19DE0BD:       var_B4 = CLng(var_15C)
  loc_19DE0CE:     End If
  loc_19DE0D1:     var_98.MoveNext
  loc_19DE0D6:     GoTo loc_19DDAA1
  loc_19DE0D9:   End If
  loc_19DE0D9: End If
  loc_19DE0ED: If (var_94.RecordCount > 0) Then
  loc_19DE0F0:   ' Referenced from: 19DE725
  loc_19DE0FF:   If Not(var_94.EOF) Then
  loc_19DE124:     var_15C = var_94.Fields.Item("CheckIn").Value
  loc_19DE12F:     var_11C = CVar(CLng(0)) 'Long
  loc_19DE171:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19DE177:       var_10C = CVar(CLng(0)) 'Long
  loc_19DE17C:       var_12C = 1
  loc_19DE19F:       var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19DE1AE:     Else
  loc_19DE1D0:       var_15C = var_94.Fields.Item("CheckIn").Value
  loc_19DE1DB:       var_11C = CVar(CLng(1)) 'Long
  loc_19DE21D:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19DE223:         var_10C = CVar(CLng(1)) 'Long
  loc_19DE228:         var_12C = 1
  loc_19DE24B:         var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19DE25A:       Else
  loc_19DE286:         var_A8 = CDate(var_94.Fields.Item("CheckIn").Value)
  loc_19DE293:       End If
  loc_19DE293:     End If
  loc_19DE2CF:     If CBool(var_94.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_19DE2F4:       var_15C = var_94.Fields.Item("CheckOut").Value
  loc_19DE2FF:       var_11C = CVar(CLng(1)) 'Long
  loc_19DE341:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19DE347:         var_10C = CVar(CLng(1)) 'Long
  loc_19DE34C:         var_12C = 1
  loc_19DE3CD:         var_200 = (CVar(var_B0) + (DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_94.Fields.Item("Foreigner").Value))
  loc_19DE3D3:         var_B0 = CLng((1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_19DE3F2:       Else
  loc_19DE46A:         var_1AC = (CVar(var_B0) + (DateDiff("D", var_A8, CVar(var_94.Fields.Item("CheckOut")), 1, 1) * var_94.Fields.Item("Foreigner").Value))
  loc_19DE470:         var_B0 = CLng((DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_94.Fields.Item("Foreigner").Value))
  loc_19DE487:       End If
  loc_19DE48A:     Else
  loc_19DE48D:       var_10C = CVar(CLng(1)) 'Long
  loc_19DE492:       var_12C = 1
  loc_19DE4C7:       If (MemVar_1F950EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_19DE526:         var_1AC = (CVar(var_B0) + (DateDiff("D", var_A8, CDate(MemVar_1F950EC), 1, 1) * var_94.Fields.Item("Foreigner").Value))
  loc_19DE52C:         var_B0 = CLng((DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_94.Fields.Item("Foreigner").Value))
  loc_19DE544:       Else
  loc_19DE547:         var_10C = CVar(CLng(1)) 'Long
  loc_19DE54C:         var_12C = 1
  loc_19DE597:         var_16C = DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1)
  loc_19DE5CD:         var_200 = (CVar(var_B0) + (var_16C * var_94.Fields.Item("Foreigner").Value))
  loc_19DE5D3:         var_B0 = CLng((1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_19DE5EF:       End If
  loc_19DE5EF:     End If
  loc_19DE611:     var_15C = var_94.Fields.Item("CheckIn").Value
  loc_19DE61C:     var_11C = CVar(CLng(0)) 'Long
  loc_19DE621:     var_13C = 1
  loc_19DE644:     var_19C = CDate(CDate(CStr(Me.FGrid.TextMatrix))))
  loc_19DE66F:     var_1AC = var_94.Fields.Item("CheckIn").Value
  loc_19DE6D2:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))) Then
  loc_19DE6D8:       var_11C = CVar(var_B8) 'Long
  loc_19DE6E2:       var_10C = "Foreigner"
  loc_19DE6EE:       var_FC = var_94.Fields
  loc_19DE706:       var_15C = (var_11C + var_FC.Item(var_10C).Value)
  loc_19DE70C:       var_B8 = CLng(var_15C)
  loc_19DE71D:     End If
  loc_19DE720:     var_94.MoveNext
  loc_19DE725:     GoTo loc_19DE0F0
  loc_19DE728:   End If
  loc_19DE728: End If
  loc_19DE735: Call Proc_66_51_F230D8(New)
  loc_19DE73D: Set var_9C = var_FC
  loc_19DE769: If ((var_94.RecordCount > 0) Or (var_98.RecordCount > 0)) Then
  loc_19DE76F:   Set var_3B8 = var_9C 
  loc_19DE77E:   var_3B8.AddNew var_10C, var_11C
  loc_19DE788:   var_14C = CVar(CStr(var_B4)) 'String
  loc_19DE795:   var_3B8.Collect = "IndianGuest"
  loc_19DE7A2:   var_14C = CVar(CStr(var_B8)) 'String
  loc_19DE7AF:   var_3B8.Collect = "ForeignerGuest"
  loc_19DE7BC:   var_14C = CVar(CStr(var_AC)) 'String
  loc_19DE7C9:   var_3B8.Collect = "IndianNight"
  loc_19DE7D6:   var_14C = CVar(CStr(var_B0)) 'String
  loc_19DE7DA:   var_10C = "ForeignerNight"
  loc_19DE7E3:   var_3B8.Collect = var_10C
  loc_19DE7F6:   var_3B8.Update var_10C, var_11C
  loc_19DE7FD:   Set var_3B8 = Nothing 
  loc_19DE801: End If
  loc_19DE81B: Set var_FC = Me.FGrid
  loc_19DE821: var_14C = var_FC.TextMatrix)
  loc_19DE832: Proc_6_7_F26918(var_16C, CVar(CStr(var_14C)), 1, CVar(CLng(0)), " (ChkInDt Between ", var_14C, var_14C, var_14C)
  loc_19DE83E: var_19C = " And "
  loc_19DE843: var_1AC = var_14C & var_16C & var_19C 
  loc_19DE873: Proc_6_7_F26918(var_220, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), var_1AC, var_FC)
  loc_19DE8B4: Proc_6_7_F26918(var_2C4, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), var_B8 & var_220 & " Or ChkOutDt Between ")
  loc_19DE8F5: Proc_6_7_F26918(var_368, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), var_1AC & var_2C4 & " And ")
  loc_19DE965: var_39C = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut,Country.Name As Country From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Left Join City On City.CityCode=GF.City Left Join Country On City.Country=Country.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & CStr((var_13C >= var_19C) & var_368 & " Or ChkOutDt Is Null)")
  loc_19DE96C: var_3A0 = CStr((var_13C >= var_19C) & var_368 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By Country.Name,DocId,SNo"
  loc_19DE975: unk_5407BC.Execute var_3A0, var_14C, -1
  loc_19DE980: Set var_C0 = var_FC
  loc_19DE99D: Call Proc_66_50_EFB684(New)
  loc_19DE9A5: Set var_D0 = var_FC
  loc_19DE9BC: If (Me.Recordset15.RecordCount > 0) Then
  loc_19DE9C4:   var_B0 = 0
  loc_19DE9D2:   var_C4 = vbNullString
  loc_19DE9E8:   var_BC = vbNullString
  loc_19DEA13:   var_C4 = Proc_6_38_E69628(CVar(var_C0.Fields.Item("Country")), 0, 0, 0, var_B0)
  loc_19DEA1C:   ' Referenced from: 19DF31F
  loc_19DEA2B:   If Not(var_C0.EOF) Then
  loc_19DEA2E:     ' Referenced from: 19DF232
  loc_19DEA40:     var_FC = var_C0.Fields
  loc_19DEA67:     If (var_11C = Proc_6_38_E69628(CVar(var_FC.Item("Country")), var_C4, var_FC, var_FC)) Then
  loc_19DEA6D:       var_11C = CVar(CLng(0)) 'Long
  loc_19DEA85:       var_15C = Me.FGrid.TextMatrix)
  loc_19DEADD:       If (CDate(Proc_6_38_E69628(CVar(var_C0.Fields.Item("CheckIn")), var_15C, 1)) < CDate(CStr(var_15C))) Then
  loc_19DEAE3:         var_10C = CVar(CLng(0)) 'Long
  loc_19DEAE8:         var_12C = 1
  loc_19DEB0B:         var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19DEB1A:       Else
  loc_19DEB35:         var_15C = Me.FGrid.TextMatrix)
  loc_19DEB8D:         If (CDate(Proc_6_38_E69628(CVar(var_C0.Fields.Item("CheckIn")), var_15C, 1, CVar(CLng(1)), var_A8)) > CDate(CStr(var_15C))) Then
  loc_19DEB93:           var_10C = CVar(CLng(1)) 'Long
  loc_19DEB98:           var_12C = 1
  loc_19DEBBB:           var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19DEBCA:         Else
  loc_19DEBF6:           var_A8 = CDate(var_C0.Fields.Item("CheckIn").Value)
  loc_19DEC03:         End If
  loc_19DEC03:       End If
  loc_19DEC3F:       If CBool(var_C0.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_19DEC5D:         var_15C = Me.FGrid.TextMatrix)
  loc_19DECB5:         If (CDate(Proc_6_38_E69628(CVar(var_C0.Fields.Item("CheckOut")), var_15C, 1, CVar(CLng(1)), var_A8, var_A8, var_12C)) > CDate(CStr(var_15C))) Then
  loc_19DECBB:           var_10C = CVar(CLng(1)) 'Long
  loc_19DECC0:           var_12C = 1
  loc_19DECD3:           var_14C = Me.FGrid.TextMatrix)
  loc_19DED39:           Proc_6_39_E7D3A0(var_1AC, CVar(var_C0.Fields.Item("Foreigner")), DateDiff("D", var_A8, CDate(CDate(CStr(var_14C))), 1, 1), CVar(var_B0), var_14C, var_12C, var_10C)
  loc_19DED45:           var_210 = (var_12C + (var_10C * var_1AC))
  loc_19DED4B:           var_B0 = CLng(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_19DED6A:         Else
  loc_19DED70:           var_10C = "CheckOut"
  loc_19DEDAE:           var_11C = var_A8
  loc_19DEDE0:           var_18C = CVar(var_C0.Fields.Item("Foreigner")) 'Address
  loc_19DEDE7:           Proc_6_39_E7D3A0(var_1AC, var_18C, DateDiff("D", var_11C, CDate(CDate(var_C0.Fields.Item(var_10C).Value)), 1, 1), CVar(var_B0), var_B0)
  loc_19DEDF3:           var_210 = (var_11C + (var_10C * var_1AC))
  loc_19DEDF9:           var_B0 = CLng(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_19DEE14:         End If
  loc_19DEE17:       Else
  loc_19DEE1A:         var_10C = CVar(CLng(1)) 'Long
  loc_19DEE1F:         var_12C = 1
  loc_19DEE54:         If (MemVar_1F950EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_19DEE6B:           var_14C = CDate(MemVar_1F950EC)
  loc_19DEE72:           var_10C = var_A8
  loc_19DEE88:           var_12C = "Foreigner"
  loc_19DEEAB:           Proc_6_39_E7D3A0(var_18C, CVar(var_C0.Fields.Item(var_12C)), DateDiff("D", var_10C, var_14C, 1, 1), CVar(var_B0), var_14C)
  loc_19DEEB3:           var_1AC = (var_12C * var_18C)
  loc_19DEEB7:           var_200 = (var_10C + var_1AC)
  loc_19DEEBD:           var_B0 = CLng((var_10C * var_1AC))
  loc_19DEED3:         Else
  loc_19DEEEE:           var_14C = Me.FGrid.TextMatrix)
  loc_19DEF54:           Proc_6_39_E7D3A0(var_1AC, CVar(var_C0.Fields.Item("Foreigner")), DateDiff("D", var_A8, CDate(CDate(CStr(var_14C))), 1, 1), CVar(var_B0), var_14C, 1)
  loc_19DEF60:           var_210 = (var_B0 + (CVar(CLng(1)) * var_1AC))
  loc_19DEF66:           var_B0 = CLng(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_19DEF82:         End If
  loc_19DEF82:       End If
  loc_19DEF9D:       var_15C = Me.FGrid.TextMatrix)
  loc_19DEFC4:       var_18C = Me.FGrid.TextMatrix)
  loc_19DF026:       var_16C = CVar(var_C0.Fields.Item("CheckIn")) 'Address
  loc_19DF02F:       var_3C0 = Proc_6_38_E69628(var_16C, (CDate(Proc_6_38_E69628(CVar(var_C0.Fields.Item("CheckIn")), var_18C, 1, CVar(CLng(1)), var_15C, 1)) >= CDate(CStr(var_15C))), CVar(CLng(0)), var_B0)
  loc_19DF060:       If (var_B0 And (CDate(var_3C0) <= CDate(CStr(var_18C)))) Then
  loc_19DF09C:         var_B8 = CLng((CDbl(var_B8) + CDbl(Proc_6_38_E69628(CVar(var_C0.Fields.Item("Foreigner")), var_15C))))
  loc_19DF0AC:       End If
  loc_19DF0AF:       var_C0.MoveNext
  loc_19DF0C5:       If (var_C0.EOF = &HFF) Then
  loc_19DF0C8:         GoTo loc_19DF235
  loc_19DF0CB:       End If
  loc_19DF0EA:       var_14C = CVar(var_C0.Fields.Item("Country")) 'Address
  loc_19DF104:       If (Proc_6_38_E69628(var_14C, 0) <> var_C4) Then
  loc_19DF10A:         var_10C = 0
  loc_19DF112:         Proc_6_39_E7D3A0(var_14C, var_10C)
  loc_19DF11A:         var_11C = 0
  loc_19DF12F:         Proc_6_39_E7D3A0(var_16C, var_B0)
  loc_19DF14E:         If CBool((var_14C > var_11C) Or (var_16C > 0)) Then
  loc_19DF154:           Set var_3C4 = var_D0 
  loc_19DF163:           var_3C4.AddNew var_10C, var_11C
  loc_19DF16B:           var_11C = CVar(var_C4) 'String
  loc_19DF178:           var_3C4.Collect = "Country"
  loc_19DF188:           Proc_6_39_E7D3A0(var_14C, 0)
  loc_19DF19A:           var_3C4.Collect = "Guest"
  loc_19DF1A5:           var_10C = var_B0
  loc_19DF1AD:           Proc_6_39_E7D3A0(var_14C, var_10C, var_14C)
  loc_19DF1B6:           var_11C = "Night"
  loc_19DF1BF:           var_3C4.Collect = var_11C
  loc_19DF1D2:           var_3C4.Update var_10C, var_11C
  loc_19DF1D9:           Set var_3C4 = Nothing 
  loc_19DF1DD:         End If
  loc_19DF1E4:         var_C8 = (var_C8 + 0)
  loc_19DF1EE:         var_CC = (var_CC + var_B0)
  loc_19DF1F6:         var_B0 = 0
  loc_19DF1FE:         var_B8 = 0
  loc_19DF201:       End If
  loc_19DF220:       var_14C = CVar(var_C0.Fields.Item("Country")) 'Address
  loc_19DF229:       var_C4 = Proc_6_38_E69628(var_14C, var_B8, var_B0, 0)
  loc_19DF232:       GoTo loc_19DEA2E
  loc_19DF235:       ' Referenced from: 19DF0C8
  loc_19DF235:     End If
  loc_19DF238:     var_10C = var_B8
  loc_19DF240:     Proc_6_39_E7D3A0(var_14C, var_10C, 0)
  loc_19DF248:     var_11C = 0
  loc_19DF25D:     Proc_6_39_E7D3A0(var_16C, var_B0, (var_14C > var_11C))
  loc_19DF27C:     If CBool(var_14C Or (var_16C > 0)) Then
  loc_19DF282:       Set var_3C8 = var_D0 
  loc_19DF291:       var_3C8.AddNew var_10C, var_11C
  loc_19DF2A6:       var_3C8.Collect = "Country"
  loc_19DF2B6:       Proc_6_39_E7D3A0(var_14C, var_B8, CVar(var_C4))
  loc_19DF2C8:       var_3C8.Collect = "Guest"
  loc_19DF2D3:       var_10C = var_B0
  loc_19DF2DB:       Proc_6_39_E7D3A0(var_14C, var_10C, var_14C)
  loc_19DF2E4:       var_11C = "Night"
  loc_19DF2ED:       var_3C8.Collect = var_11C
  loc_19DF300:       var_3C8.Update var_10C, var_11C
  loc_19DF307:       Set var_3C8 = Nothing 
  loc_19DF30B:     End If
  loc_19DF312:     var_C8 = (var_C8 + var_B8)
  loc_19DF31C:     var_CC = (var_CC + var_B0)
  loc_19DF31F:     GoTo loc_19DEA1C
  loc_19DF322:   End If
  loc_19DF322: End If
  loc_19DF353: Proc_6_7_F26918(var_16C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), " WHERE ChkInDt Between ")
  loc_19DF394: Proc_6_7_F26918(var_220, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), 0 & var_16C & " And ")
  loc_19DF3A7: global_60 = CStr(0 & var_220)
  loc_19DF3E4: Set var_FC = Me.FGrid
  loc_19DF3EA: var_14C = var_FC.TextMatrix)
  loc_19DF3F5: var_15C = CVar(CStr(var_14C)) 'String
  loc_19DF3FB: Proc_6_7_F26918(var_16C, var_15C, 1, CVar(CLng(0)))
  loc_19DF43C: Proc_6_7_F26918(var_220, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_19DF47D: Proc_6_7_F26918(var_2C4, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_19DF4BE: Proc_6_7_F26918(var_368, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_19DF4CF: var_398 = " WHERE (ChkInDt Between " & var_16C & " And " & var_220 & " Or ChkOutDt Between " & var_2C4 & " And " & var_368 & " Or ChkOutDt Is Null)" 
  loc_19DF521: var_39C = "Select RO.DocId,(Adult+Children) As Tourist,ChkInDt As CheckIn,ChkOutDt as CheckOut,GF.Name,GF.StateName,GF.Type From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet " & CStr(var_398)
  loc_19DF528: var_3A0 = CStr(0 & var_220) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' And IsNull(GF.StateName,'') <>'' Order By GF.StateName,RO.DOCID,SNO"
  loc_19DF531: unk_5407BC.Execute var_3A0, var_14C, -1
  loc_19DF53C: Set var_DC = var_FC
  loc_19DF560: If (var_DC.RecordCount > 0) Then
  loc_19DF57A:   var_39C = "Select Sum(Adult+Children) AS Indian From RoomOccDet RO Inner Join GuestProf GF ON RO.GuestProf=GF.Code " & global_60
  loc_19DF58A:   unk_5407BC.Execute CStr(0 & var_220) & " And IsNull(GF.StateName,'') <>'' And GF.Type<>'Foreign' AND SNO=1", var_14C, -1
  loc_19DF595:   Set var_E0 = var_FC
  loc_19DF5B9:   If (var_E0.RecordCount > 0) Then
  loc_19DF5CB:     var_FC = var_E0.Fields
  loc_19DF5DB:     var_14C = CVar(var_FC.Item("Indian")) 'Address
  loc_19DF5E2:     Proc_6_39_E7D3A0(var_15C, var_14C, var_FC, var_FC)
  loc_19DF5EC:     var_F4 = CLng(var_15C)
  loc_19DF5FC:   Else
  loc_19DF601:     var_F4 = 0
  loc_19DF604:   End If
  loc_19DF61B:   var_39C = "Select Sum(Adult+Children) AS Foreigner From RoomOccDet RO Inner Join GuestProf GF ON RO.GuestProf=GF.Code " & global_60
  loc_19DF62B:   unk_5407BC.Execute CStr(0 & var_220) & " And IsNull(GF.StateName,'') <>'' And GF.Type='Foreign' AND SNO=1", var_14C, -1
  loc_19DF636:   Set var_C0 = var_FC
  loc_19DF65A:   If (var_C0.RecordCount > 0) Then
  loc_19DF66C:     var_FC = var_C0.Fields
  loc_19DF683:     Proc_6_39_E7D3A0(var_15C, CVar(var_FC.Item("Foreigner")), var_FC, var_F4)
  loc_19DF68D:     var_F8 = CLng(var_15C)
  loc_19DF69D:   Else
  loc_19DF6A2:     var_F8 = 0
  loc_19DF6A5:   End If
  loc_19DF6B2:   Call Proc_66_52_EFB9CC(New)
  loc_19DF6BA:   Set var_E4 = var_FC
  loc_19DF6C2:   var_E8 = 0
  loc_19DF6CA:   var_EC = 0
  loc_19DF6D2:   var_C8 = 0
  loc_19DF6DA:   var_D4 = 0
  loc_19DF6E0:   var_BC = vbNullString
  loc_19DF70E:   var_F0 = CStr(Me.Recordset15.Fields.Item("StateName").Value)
  loc_19DF71B:   ' Referenced from: 19DFFDA
  loc_19DF72A:   If Not(var_DC.EOF) Then
  loc_19DF72D:     ' Referenced from: 19DFF03
  loc_19DF76A:     If (CVar(var_F0) = var_DC.Fields.Item("StateName").Value) Then
  loc_19DF78F:       var_15C = var_DC.Fields.Item("CheckIn").Value
  loc_19DF79A:       var_11C = CVar(CLng(0)) 'Long
  loc_19DF7DC:       If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19DF7E2:         var_10C = CVar(CLng(0)) 'Long
  loc_19DF7E7:         var_12C = 1
  loc_19DF80A:         var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19DF819:       Else
  loc_19DF83B:         var_15C = var_DC.Fields.Item("CheckIn").Value
  loc_19DF846:         var_11C = CVar(CLng(1)) 'Long
  loc_19DF888:         If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19DF88E:           var_10C = CVar(CLng(1)) 'Long
  loc_19DF893:           var_12C = 1
  loc_19DF8B6:           var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19DF8C5:         Else
  loc_19DF8F1:           var_A8 = CDate(var_DC.Fields.Item("CheckIn").Value)
  loc_19DF8FE:         End If
  loc_19DF8FE:       End If
  loc_19DF93A:       If CBool(var_DC.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_19DF95F:         var_15C = var_DC.Fields.Item("CheckOut").Value
  loc_19DF96A:         var_11C = CVar(CLng(1)) 'Long
  loc_19DF9AC:         If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19DF9B2:           var_10C = CVar(CLng(1)) 'Long
  loc_19DF9B7:           var_12C = 1
  loc_19DFA38:           var_200 = (CVar(var_E8) + (DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_DC.Fields.Item("Tourist").Value))
  loc_19DFA3E:           var_E8 = CLng(Me.FGrid.TextMatrix))
  loc_19DFA5D:         Else
  loc_19DFAD5:           var_1AC = (CVar(var_E8) + (DateDiff("D", var_A8, CVar(var_DC.Fields.Item("CheckOut")), 1, 1) * var_DC.Fields.Item("Tourist").Value))
  loc_19DFADB:           var_E8 = CLng((DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_DC.Fields.Item("Tourist").Value))
  loc_19DFAF2:         End If
  loc_19DFAF5:       Else
  loc_19DFAF8:         var_10C = CVar(CLng(1)) 'Long
  loc_19DFAFD:         var_12C = 1
  loc_19DFB32:         If (MemVar_1F950EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_19DFB91:           var_1AC = (CVar(var_E8) + (DateDiff("D", var_A8, CDate(MemVar_1F950EC), 1, 1) * var_DC.Fields.Item("Tourist").Value))
  loc_19DFB97:           var_E8 = CLng((DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_DC.Fields.Item("Tourist").Value))
  loc_19DFBAF:         Else
  loc_19DFBB2:           var_10C = CVar(CLng(1)) 'Long
  loc_19DFBB7:           var_12C = 1
  loc_19DFC02:           var_16C = DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1)
  loc_19DFC38:           var_200 = (CVar(var_E8) + (var_16C * var_DC.Fields.Item("Tourist").Value))
  loc_19DFC3E:           var_E8 = CLng(Me.FGrid.TextMatrix))
  loc_19DFC5A:         End If
  loc_19DFC5A:       End If
  loc_19DFC7C:       var_15C = var_DC.Fields.Item("CheckIn").Value
  loc_19DFC87:       var_11C = CVar(CLng(0)) 'Long
  loc_19DFC8C:       var_13C = 1
  loc_19DFC99:       Set var_294 = Me.FGrid
  loc_19DFCAF:       var_19C = CDate(CDate(CStr(var_294.TextMatrix))))
  loc_19DFCDA:       var_1AC = var_DC.Fields.Item("CheckIn").Value
  loc_19DFD3D:       If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))) Then
  loc_19DFD71:         var_15C = (CVar(var_EC) + var_DC.Fields.Item("Tourist").Value)
  loc_19DFD77:         var_EC = CLng(var_15C)
  loc_19DFD88:       End If
  loc_19DFD8B:       var_DC.MoveNext
  loc_19DFDA1:       If (var_DC.EOF = &HFF) Then
  loc_19DFDA4:         GoTo loc_19DFF06
  loc_19DFDA7:       End If
  loc_19DFDC9:       var_14C = var_DC.Fields.Item("StateName").Value
  loc_19DFDD4:       var_11C = CVar(var_F0) 'String
  loc_19DFDE4:       If CBool(var_14C <> var_11C) Then
  loc_19DFDEE:         var_D4 = (var_D4 + var_E8)
  loc_19DFDF4:         var_10C = var_EC
  loc_19DFDFC:         Proc_6_39_E7D3A0(var_14C, var_10C, var_D4, var_EC, var_1AC, (var_13C >= var_19C), var_11C)
  loc_19DFE04:         var_11C = 0
  loc_19DFE19:         Proc_6_39_E7D3A0(var_16C, var_E8, (var_14C > var_11C), (var_14C > var_11C), var_E8)
  loc_19DFE38:         If CBool(var_14C Or (var_16C > 0)) Then
  loc_19DFE3E:           Set var_3CC = var_E4 
  loc_19DFE4D:           var_3CC.AddNew var_10C, var_11C
  loc_19DFE62:           var_3CC.Collect = "State"
  loc_19DFE6C:           var_14C = CVar(CStr(var_EC)) 'String
  loc_19DFE79:           var_3CC.Collect = "Guest"
  loc_19DFE86:           var_14C = CVar(CStr(var_E8)) 'String
  loc_19DFE8A:           var_10C = "Night"
  loc_19DFE93:           var_3CC.Collect = var_10C
  loc_19DFEA6:           var_3CC.Update var_10C, CVar(var_F0)
  loc_19DFEAD:           Set var_3CC = Nothing 
  loc_19DFEB1:         End If
  loc_19DFEB8:         var_C8 = (var_C8 + var_EC)
  loc_19DFEC0:         var_EC = 0
  loc_19DFEC8:         var_E8 = 0
  loc_19DFECB:       End If
  loc_19DFEED:       var_14C = var_DC.Fields.Item("StateName").Value
  loc_19DFEF6:       var_F0 = CStr(var_14C)
  loc_19DFF03:       GoTo loc_19DF72D
  loc_19DFF06:       ' Referenced from: 19DFDA4
  loc_19DFF06:     End If
  loc_19DFF0D:     var_D4 = (var_D4 + var_E8)
  loc_19DFF13:     var_10C = var_EC
  loc_19DFF1B:     Proc_6_39_E7D3A0(var_14C, var_10C, var_D4, var_E8, var_EC, var_C8, var_14C)
  loc_19DFF23:     var_11C = 0
  loc_19DFF30:     var_12C = var_E8
  loc_19DFF38:     Proc_6_39_E7D3A0(var_16C, var_12C, (var_14C > var_11C), var_14C, var_11C)
  loc_19DFF57:     If CBool(var_12C Or (var_16C > 0)) Then
  loc_19DFF5D:       Set var_3D0 = var_E4 
  loc_19DFF6C:       var_3D0.AddNew var_10C, var_11C
  loc_19DFF74:       var_11C = CVar(var_F0) 'String
  loc_19DFF81:       var_3D0.Collect = "State"
  loc_19DFF8B:       var_14C = CVar(CStr(var_EC)) 'String
  loc_19DFF98:       var_3D0.Collect = "Guest"
  loc_19DFFA5:       var_14C = CVar(CStr(var_E8)) 'String
  loc_19DFFA9:       var_10C = "Night"
  loc_19DFFB2:       var_3D0.Collect = var_10C
  loc_19DFFC5:       var_3D0.Update var_10C, var_11C
  loc_19DFFCC:       Set var_3D0 = Nothing 
  loc_19DFFD0:     End If
  loc_19DFFD7:     var_C8 = (var_C8 + var_EC)
  loc_19DFFDA:     GoTo loc_19DF71B
  loc_19DFFDD:   End If
  loc_19DFFDD: End If
  loc_19DFFF1: If (var_9C.RecordCount > 0) Then
  loc_19DFFF7:   var_9C.MoveFirst
  loc_19DFFFC: End If
  loc_19E0010: If (var_D0.RecordCount > 0) Then
  loc_19E0016:   var_D0.MoveFirst
  loc_19E001B: End If
  loc_19E002F: If (var_E4.RecordCount > 0) Then
  loc_19E0035:   var_E4.MoveFirst
  loc_19E003A: End If
  loc_19E0057: If (var_9C.RecordCount > var_D0.RecordCount) Then
  loc_19E0069:   var_3D2 = CInt(var_9C.RecordCount)
  loc_19E006F: Else
  loc_19E007E:   var_3D2 = CInt(var_D0.RecordCount)
  loc_19E0081: End If
  loc_19E0094: If (CLng(var_3D2) > var_E4.RecordCount) Then
  loc_19E009A:   var_3D2 = var_3D2
  loc_19E00A0: Else
  loc_19E00A6:   var_3A4 = var_E4.RecordCount
  loc_19E00AF:   var_3D2 = CInt(var_3A4)
  loc_19E00B2: End If
  loc_19E00BA: For var_3D8 = 1 To var_3D2: var_3D4 = var_3D8 'Integer
  loc_19E00C3:   Set var_3DC = var_90 
  loc_19E00D2:   var_3DC.AddNew var_10C, var_11C
  loc_19E00D7:   var_11C = vbNullString
  loc_19E00E6:   var_3DC.Collect = "IndianGuestForm1"
  loc_19E00EB:   var_11C = vbNullString
  loc_19E00FA:   var_3DC.Collect = "ForeignerGuestForm1"
  loc_19E00FF:   var_11C = vbNullString
  loc_19E010E:   var_3DC.Collect = "IndianNightForm1"
  loc_19E0113:   var_11C = vbNullString
  loc_19E0122:   var_3DC.Collect = "ForeignerNightForm1"
  loc_19E0127:   var_11C = vbNullString
  loc_19E0136:   var_3DC.Collect = "CountryForm2"
  loc_19E013B:   var_11C = vbNullString
  loc_19E014A:   var_3DC.Collect = "GuestForm2"
  loc_19E014F:   var_11C = vbNullString
  loc_19E015E:   var_3DC.Collect = "NightForm2"
  loc_19E0163:   var_11C = vbNullString
  loc_19E0172:   var_3DC.Collect = "StateForm5"
  loc_19E0177:   var_11C = vbNullString
  loc_19E0186:   var_3DC.Collect = "GuestForm5"
  loc_19E019A:   var_3DC.Collect = "NightForm5"
  loc_19E01AE:   If Not(var_9C.EOF) Then
  loc_19E01D9:     var_15C = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("IndianGuest")), vbNullString, vbNullString, vbNullString, vbNullString, vbNullString, vbNullString)) 'String
  loc_19E01DD:     var_11C = "IndianGuestForm1"
  loc_19E01E6:     var_3DC.Collect = var_11C
  loc_19E021D:     var_15C = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("ForeignerGuest")), var_15C, var_11C, var_11C)) 'String
  loc_19E0221:     var_11C = "ForeignerGuestForm1"
  loc_19E022A:     var_3DC.Collect = var_11C
  loc_19E0261:     var_15C = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("IndianNight")), var_15C, var_11C)) 'String
  loc_19E0265:     var_11C = "IndianNightForm1"
  loc_19E026E:     var_3DC.Collect = var_11C
  loc_19E02A5:     var_15C = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("ForeignerNight")), var_15C, var_11C)) 'String
  loc_19E02B2:     var_3DC.Collect = "ForeignerNightForm1"
  loc_19E02C4:     var_9C.MoveNext
  loc_19E02C9:   End If
  loc_19E02D8:   If Not(var_D0.EOF) Then
  loc_19E0303:     var_15C = CVar(Proc_6_38_E69628(CVar(var_D0.Fields.Item("Country")), var_15C)) 'String
  loc_19E0310:     var_3DC.Collect = "CountryForm2"
  loc_19E0347:     var_15C = CVar(Proc_6_38_E69628(CVar(var_D0.Fields.Item("Guest")), var_15C)) 'String
  loc_19E0354:     var_3DC.Collect = "GuestForm2"
  loc_19E038B:     var_15C = CVar(Proc_6_38_E69628(CVar(var_D0.Fields.Item("Night")), var_15C)) 'String
  loc_19E0398:     var_3DC.Collect = "NightForm2"
  loc_19E03AA:     var_D0.MoveNext
  loc_19E03AF:   End If
  loc_19E03BE:   If Not(var_E4.EOF) Then
  loc_19E03E9:     var_15C = CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("State")), var_15C)) 'String
  loc_19E03F6:     var_3DC.Collect = "StateForm5"
  loc_19E042D:     var_15C = CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Guest")), var_15C)) 'String
  loc_19E043A:     var_3DC.Collect = "GuestForm5"
  loc_19E044C:     var_10C = "Night"
  loc_19E0471:     var_15C = CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item(var_10C)), var_15C)) 'String
  loc_19E0475:     var_11C = "NightForm5"
  loc_19E047E:     var_3DC.Collect = var_11C
  loc_19E0490:     var_E4.MoveNext
  loc_19E0495:   End If
  loc_19E04A0:   var_3DC.Update var_10C, var_11C
  loc_19E04A7:   Set var_3DC = Nothing 
  loc_19E04AE: Next var_3D8 'Integer
  loc_19E04B6: var_10C = CVar(CLng(0)) 'Long
  loc_19E04D9: var_15C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_19E04DF: Proc_6_7_F26918(var_16C, var_15C)
  loc_19E0510: Proc_6_7_F26918(var_220, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_19E0543: var_250 = "Select count(distinct foliono) as Cnt from RoomOccDet where ChkInDT between " & var_16C & " And " & var_220 & " and LogSite_Code='" 
  loc_19E055A: var_39C = CStr(var_250 & CVar(MemVar_1F95078) & "'")
  loc_19E0564: unk_5407BC.Execute var_39C, var_2C4, -1
  loc_19E059E: var_10C = "cnt"
  loc_19E05B2: var_1F0 = var_294.Fields.Item(var_10C)
  loc_19E05C1: Proc_6_39_E7D3A0(var_15C, CVar(var_1F0), var_294)
  loc_19E05CA: var_3E8 = CSng(var_15C)
  loc_19E05DD: global_84 = "MonthlyStatisticalReturn"
  loc_19E05E7: Call 0.Method_arg_50 (var_39C, var_3E8, CVar(CLng(1)))
  loc_19E0604: global_80 = CStr(Ucase(CVar(var_39C)))
  loc_19E0639: Set var_FC = var_90 
  loc_19E0640: CreateFieldDefFile(var_FC, MemVar_1F950B4 & "\" & global_84 & ".ttx", &HFF)
  loc_19E066B: var_39C = MemVar_1F950B4 & "\"
  loc_19E0685: Call 0.Method_arg_1C (var_39C & global_84 & ".RPT", var_10C, var_FC)
  loc_19E0690: MemVar_1F951E8 = var_FC
  loc_19E06AB: var_10C = CVar(var_FC) 'Address
  loc_19E06B9: Call 0.Method_arg_64 (var_FC, var_10C, var_11C)
  loc_19E06C1: Call 0.Method_arg_2C (1, 1)
  loc_19E06CF: Call 0.Method_arg_150 (var_10C)
  loc_19E06E8: Call 0.Method_arg_90 (var_FC, var_3A4)
  loc_19E06F0: Call 0.Method_arg_24 (var_8C)
  loc_19E06FB: For var_3F0 =  To var_3A4: 1 = var_3F0 'Long
  loc_19E0713:   Call 0.Method_arg_90 (var_FC, var_8C)
  loc_19E071B:   Call 0.Method_arg_20 (var_1F0)
  loc_19E0723:   Call 0.Method_arg_30 (var_39C)
  loc_19E0739:   var_400 = Ucase(CVar(var_39C)) 'Variant
  loc_19E0752:   If (var_400 = "FROMDATE") Then
  loc_19E079B:     Call 0.Method_arg_90 (var_1F0, var_8C, var_294)
  loc_19E07A3:     Call 0.Method_arg_20 (1 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(0)))
  loc_19E07AB:     Call 0.Method_arg_38 ("'")
  loc_19E07C8:   Else
  loc_19E07D3:     If (var_400 = "TODATE") Then
  loc_19E07EE:       Set var_FC = Me.FGrid
  loc_19E081C:       Call 0.Method_arg_90 (var_1F0, var_8C, var_294)
  loc_19E0824:       Call 0.Method_arg_20 (1 & CStr(var_FC.TextMatrix)) & "'", CVar(CLng(1)))
  loc_19E082C:       Call 0.Method_arg_38 ("'")
  loc_19E0849:     Else
  loc_19E0854:       If (var_400 = "TITLE") Then
  loc_19E087A:         Call 0.Method_arg_90 (var_FC, var_8C)
  loc_19E0882:         Call 0.Method_arg_20 (var_1F0)
  loc_19E088A:         Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_19E08A0:       Else
  loc_19E08AB:         If (var_400 = "PRINTDATE") Then
  loc_19E08BA:           var_14C = "'" & CDate(MemVar_1F950EC) 
  loc_19E08DA:           Call 0.Method_arg_90 (var_FC, var_8C)
  loc_19E08E2:           Call 0.Method_arg_20 (var_1F0)
  loc_19E08EA:           Call 0.Method_arg_38 (CStr(var_14C & "'"))
  loc_19E0903:         Else
  loc_19E090E:           If (var_400 = "NOOFROOMS") Then
  loc_19E0921:             Proc_6_39_E7D3A0(var_14C, var_3E8)
  loc_19E0949:             Call 0.Method_arg_90 (var_FC, var_8C)
  loc_19E0951:             Call 0.Method_arg_20 (var_1F0)
  loc_19E0959:             Call 0.Method_arg_38 (CStr("'" & var_14C & "'"))
  loc_19E0971:           End If
  loc_19E0971:         End If
  loc_19E0971:       End If
  loc_19E0971:     End If
  loc_19E0971:   End If
  loc_19E0974: Next var_3F0 'Long
  loc_19E097E: Set var_1F0 = Nothing
  loc_19E0997: Set var_FC = MemVar_1F951E8 
  loc_19E09A3: Proc_6_99_1484404(var_FC, 0, global_80)
  loc_19E09AE: MemVar_1F951E8 = var_FC
  loc_19E09BE: global_88 = 0
  loc_19E09C6: Set var_9C = Nothing
  loc_19E09CE: Set var_98 = Nothing
  loc_19E09D6: Set var_94 = Nothing
  loc_19E09DE: Set var_C0 = Nothing
  loc_19E09E6: Set var_E4 = Nothing
  loc_19E09EE: Set var_DC = Nothing
  loc_19E09F6: Set var_90 = Nothing
  loc_19E09F9: Exit Sub
  loc_19E09FA: ' Referenced from: 19DD890
  loc_19E09FA: Proc_6_60_E63754(global_88, &HFF)
  loc_19E0A04: global_88 = 0
  loc_19E0A07: Exit Sub
End Sub

Public Sub Proc_66_80_FA458C(arg_C) 'FA458C
  'Data Table: 54078C
  Dim var_8C As Recordset15
  Dim arg_14CC As String
  loc_FA4405: Set var_8C = arg_C 
  loc_FA442D: var_8C.Fields.Append "RoomType", &HC8, &H32
  loc_FA4459: var_8C.Fields.Append "NoOfRooms", &HC8, &HC
  loc_FA4485: var_8C.Fields.Append "NoOfBeds", &HC8, &HC
  loc_FA44B1: var_8C.Fields.Append "RoomNumbers", &HC8, &HFF
  loc_FA44DD: var_8C.Fields.Append "RSingle", &HC8, &HC
  loc_FA4509: var_8C.Fields.Append "RDouble", &HC8, &HC
  loc_FA4535: var_8C.Fields.Append "RExtra", &HC8, &HC
  loc_FA4545: var_8C.CursorType = 3
  loc_FA4552: var_8C.LockType = 3
  loc_FA4571: var_8C.Open var_A0, var_B0, -1
  loc_FA4578: Set var_8C = Nothing 
  loc_FA457F: Set var_88 = arg_C 
  loc_FA4583: Proc_66_80_FA458C = -1
  loc_FA458A: arg_14CC = CStr(-1)
End Sub

Public Sub Proc_66_81_14B2900
  'Data Table: 54078C
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_11C As String
  Dim var_12C As Variant
  Dim var_E4 As Variant
  Dim var_14C As Variant
  Dim var_194 As String
  Dim var_19C As String
  Dim var_1B0 As String
  Dim var_1B8 As String
  Dim unk_5407BC As Connection15
  Dim var_94 As Recordset15
  Dim var_A8 As Integer
  Dim var_1C0 As Field20
  Dim var_A6 As Integer
  Dim var_1CC As Double
  Dim var_B4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_1D8 As Recordset15
  Dim var_1DC As Recordset15
  Dim var_15C As Variant
  loc_14B1C67: var_D4 = CVar(CLng(0)) 'Long
  loc_14B1C6C: var_F4 = 1
  loc_14B1CBA: var_88 = CStr(Format(CVar("01/" & CStr(Me.FGrid.TextMatrix))), "dd/MMM/yyyy"))
  loc_14B1CD4: var_D4 = CVar(CLng(0)) 'Long
  loc_14B1CE6: Set var_108 = Me.FGrid
  loc_14B1CEC: var_118 = var_108.TextMatrix)
  loc_14B1D20: var_15C = DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & CStr(var_118)))))
  loc_14B1D49: var_8C = CStr(Format(var_15C, "dd/MMM/yyyy"))
  loc_14B1D75: Proc_6_7_F26918(var_118, var_88, " And P.SettleDate Between ", 1, 1, var_88)
  loc_14B1D81: var_F4 = " And "
  loc_14B1D86: var_14C = "01/" & var_118 & var_F4 
  loc_14B1D95: Proc_6_7_F26918(var_15C, var_8C, var_14C, 1)
  loc_14B1DDB: var_11C = "Select RC.Name As RoomType,RM.Code As RoomNo,RM.Multper,SingleRent=Case When RM.MultPer=1 Then Q.RoomCharge Else 0 End,DoubleRent=Case When RM.MultPer=2 Then Q.RoomCharge Else 0 End,Q.ExtraRent From RoomMast RM Left Join RoomCat RC On RC.Code=RM.RoomCat Left Join (Select P.RoomNo,Sum(P.RoomCharge) RoomCharge,Sum(P.ExtraRent) ExtraRent " & "From (Select P.RoomNo,RoomCharge=Case When PayCode<>'"
  loc_14B1DE9: var_194 = var_11C & MemVar_1F95078 & "EXTB' Then IsNull(AmtDr,0)-IsNull(AmtCr,0) Else 0 End,ExtraRent=Case When PayCode='"
  loc_14B1DF7: var_19C = var_194 & MemVar_1F95078 & "EXTB' Then IsNull(AmtDr,0)-IsNull(AmtCr,0) Else 0 End From Paycharge P Where P.RoomType='RO' And P.Paycode In (Select Code From RevMast Where Nature='Room Charge') "
  loc_14B1E1D: var_1B0 = var_19C & "And IsNull(Bill_No,'')<>'' " & CStr(1 & var_15C & " ") & " And P.LogSite_Code='" & MemVar_1F95078 & "')P Group By P.RoomNo)Q On RM.Code=Q.RoomNo Where RM.Type='RO' And RM.InclCount='Y' And RM.LogSite_Code='"
  loc_14B1E2B: var_1B8 = var_1B0 & MemVar_1F95078 & "' Order By RC.Name,RM.Multper,Case When IsNumeric(RM.Code)=1 Then Cast(RM.Code As Integer) Else Ascii(RM.Code) End"
  loc_14B1E34: unk_5407BC.Execute var_1B8, var_118, -1
  loc_14B1E3F: Set var_94 = var_108
  loc_14B1E69: var_1BC = var_94.RecordCount
  loc_14B1E77: If (var_1BC <= 0) Then
  loc_14B1E80:   Call 0.Method_arg_50 (var_11C, var_108, var_118)
  loc_14B1E8E:   var_12C = CVar(var_11C) 'String
  loc_14B1EA1:   MsgBox("** No Records Found to Print **", &H40, var_12C, var_14C, var_15C)
  loc_14B1EB6:   global_88 = 0
  loc_14B1EB9:   Exit Sub
  loc_14B1EBA: End If
  loc_14B1EC7: Call Proc_66_80_FA458C(New)
  loc_14B1ECF: Set var_98 = var_108
  loc_14B1EE1: var_108 = var_94.Fields
  loc_14B1EFA: var_9C = Proc_6_38_E69628(CVar(var_108.Item("Roomtype")), var_108, global_88)
  loc_14B1F29: Proc_6_39_E7D3A0(var_12C, CVar(var_94.Fields.Item("MultPer")))
  loc_14B1F32: var_A8 = CInt(var_12C)
  loc_14B1F3F: ' Referenced from: 14B253B
  loc_14B1F4E: If Not(var_94.EOF) Then
  loc_14B1F51:   ' Referenced from: 14B240F
  loc_14B1F8E:   If (CVar(var_9C) = var_94.Fields.Item("Roomtype").Value) Then
  loc_14B1F97:     var_A6 = (var_A6 + 1)
  loc_14B1F9D:     var_A4 = var_A0
  loc_14B1FC8:     var_A0 = Proc_6_38_E69628(CVar(var_94.Fields.Item("RoomNo")), var_A6, var_A8)
  loc_14B1FD9:     If (var_AC = vbNullString) Then
  loc_14B1FE9:       var_AC = Proc_6_38_E69628(var_A0, var_F4)
  loc_14B1FEC:     End If
  loc_14B1FF4:     var_1CC = Val(var_A4)
  loc_14B202A:     If ((CDbl(((Val(Proc_6_38_E69628(var_A0, var_1CC)) - var_1CC) - CDbl(1))) <> CDbl(0)) And (CDbl(Val(var_A4)) <> CDbl(0))) Then
  loc_14B2038:       var_D4 = var_A4
  loc_14B2055:       If (InStr(var_D4, 1, Proc_6_38_E69628(var_D4, var_AC), 0) = 0) Then
  loc_14B208E:         var_AC = var_AC & " to " & Proc_6_38_E69628(var_A4) & ", " & Proc_6_38_E69628(var_A0)
  loc_14B20A1:       Else
  loc_14B20BC:         var_AC = var_AC & ", " & Proc_6_38_E69628(var_A0)
  loc_14B20C6:       End If
  loc_14B20C6:     End If
  loc_14B20F3:     Proc_6_39_E7D3A0(var_12C, CVar(var_94.Fields.Item("SingleRent")))
  loc_14B20FB:     var_14C = (CVar(var_B4) + var_12C)
  loc_14B2100:     var_B4 = CSng(var_14C)
  loc_14B213C:     Proc_6_39_E7D3A0(var_12C, CVar(var_94.Fields.Item("DoubleRent")))
  loc_14B2144:     var_14C = (CVar(var_BC) + var_12C)
  loc_14B2149:     var_BC = CSng(var_14C)
  loc_14B2185:     Proc_6_39_E7D3A0(var_12C, CVar(var_94.Fields.Item("ExtraRent")), CVar(var_C4))
  loc_14B218D:     var_14C = (var_BC + var_12C)
  loc_14B2192:     var_C4 = CSng(var_14C)
  loc_14B21A4:     var_94.MoveNext
  loc_14B21BA:     If (var_94.EOF = &HFF) Then
  loc_14B21BD:       GoTo loc_14B2412
  loc_14B21C0:     End If
  loc_14B21ED:     var_E4 = CVar(var_9C) 'String
  loc_14B21F8:     var_F4 = "MultPer"
  loc_14B221B:     Proc_6_39_E7D3A0(var_15C, CVar(var_94.Fields.Item(var_F4)), (var_94.Fields.Item("Roomtype").Value <> var_E4))
  loc_14B2246:     If CBool(var_C4 Or (var_15C <> CVar(var_A8))) Then
  loc_14B2271:       If (InStr(var_B4, 1, Proc_6_38_E69628(var_A0, var_AC), 0) = 0) Then
  loc_14B2281:         var_D4 = var_A0
  loc_14B228F:         var_AC = var_AC & " to " & Proc_6_38_E69628(var_D4)
  loc_14B2299:       End If
  loc_14B229C:       Set var_1D8 = var_98 
  loc_14B22AB:       var_1D8.AddNew var_D4, var_E4
  loc_14B22B3:       var_E4 = CVar(var_9C) 'String
  loc_14B22C0:       var_1D8.Collect = "Roomtype"
  loc_14B22CA:       var_118 = CVar(CStr(var_A6)) 'String
  loc_14B22D7:       var_1D8.Collect = "NoOfRooms"
  loc_14B22E4:       var_118 = CVar(CStr(var_A8)) 'String
  loc_14B22F1:       var_1D8.Collect = "NoOfBeds"
  loc_14B22FC:       var_E4 = CVar(var_AC) 'String
  loc_14B2309:       var_1D8.Collect = "RoomNumbers"
  loc_14B2313:       var_118 = CVar(CStr(var_B4)) 'String
  loc_14B2320:       var_1D8.Collect = "RSingle"
  loc_14B232D:       var_118 = CVar(CStr(var_BC)) 'String
  loc_14B233A:       var_1D8.Collect = "RDouble"
  loc_14B2347:       var_118 = CVar(CStr(var_C4)) 'String
  loc_14B234B:       var_D4 = "RExtra"
  loc_14B2354:       var_1D8.Collect = var_D4
  loc_14B2367:       var_1D8.Update var_D4, var_E4
  loc_14B236E:       Set var_1D8 = Nothing 
  loc_14B2374:       var_A6 = 0
  loc_14B237A:       var_A0 = vbNullString
  loc_14B2380:       var_A4 = vbNullString
  loc_14B2386:       var_AC = vbNullString
  loc_14B238C:       var_B4 = CDbl(0)
  loc_14B2392:       var_BC = CDbl(0)
  loc_14B2398:       var_C4 = CDbl(0)
  loc_14B239B:     End If
  loc_14B23C6:     var_9C = CStr(var_94.Fields.Item("Roomtype").Value)
  loc_14B23EA:     var_1C0 = var_94.Fields.Item("MultPer")
  loc_14B23F2:     var_118 = CVar(var_1C0) 'Address
  loc_14B23F9:     Proc_6_39_E7D3A0(var_12C, var_118, var_C4, var_BC, var_B4, var_A6, var_118)
  loc_14B2402:     var_A8 = CInt(var_12C)
  loc_14B240F:     GoTo loc_14B1F51
  loc_14B2412:     ' Referenced from: 14B21BD
  loc_14B2412:   End If
  loc_14B2415:   Set var_1DC = var_98 
  loc_14B2441:   If (InStr(var_E4, var_118, Proc_6_38_E69628(var_A0, var_AC, 1, var_A8, var_118), 0) = 0) Then
  loc_14B244B:     var_11C = var_AC & " to "
  loc_14B2451:     var_D4 = var_A0
  loc_14B245F:     var_AC = var_118 & Proc_6_38_E69628(var_D4, var_11C, var_118)
  loc_14B2469:   End If
  loc_14B2474:   var_1DC.AddNew var_D4, var_E4
  loc_14B247C:   var_E4 = CVar(var_9C) 'String
  loc_14B2489:   var_1DC.Collect = "Roomtype"
  loc_14B2493:   var_118 = CVar(CStr(var_A6)) 'String
  loc_14B24A0:   var_1DC.Collect = "NoOfRooms"
  loc_14B24AD:   var_118 = CVar(CStr(var_A8)) 'String
  loc_14B24BA:   var_1DC.Collect = "NoOfBeds"
  loc_14B24C5:   var_E4 = CVar(var_AC) 'String
  loc_14B24D2:   var_1DC.Collect = "RoomNumbers"
  loc_14B24DC:   var_118 = CVar(CStr(var_B4)) 'String
  loc_14B24E9:   var_1DC.Collect = "RSingle"
  loc_14B24F6:   var_118 = CVar(CStr(var_BC)) 'String
  loc_14B2503:   var_1DC.Collect = "RDouble"
  loc_14B2510:   var_118 = CVar(CStr(var_C4)) 'String
  loc_14B2514:   var_D4 = "RExtra"
  loc_14B251D:   var_1DC.Collect = var_D4
  loc_14B2530:   var_1DC.Update var_D4, var_E4
  loc_14B2537:   Set var_1DC = Nothing 
  loc_14B253B:   GoTo loc_14B1F3F
  loc_14B253E: End If
  loc_14B2544: global_84 = "LTFORMII"
  loc_14B254E: Call 0.Method_arg_50 (var_11C, var_118, var_118, var_118, var_E4)
  loc_14B2556: var_118 = CVar(var_11C) 'String
  loc_14B256B: global_80 = CStr(Ucase(var_118))
  loc_14B25A0: Set var_108 = var_98 
  loc_14B25A7: CreateFieldDefFile(var_108, MemVar_1F950B4 & "\" & global_84 & ".ttx", &HFF, var_118)
  loc_14B25D2: var_11C = MemVar_1F950B4 & "\"
  loc_14B25EC: Call 0.Method_arg_1C (var_11C & global_84 & ".RPT", var_D4, var_108)
  loc_14B25F7: MemVar_1F951E8 = var_108
  loc_14B2620: Call 0.Method_arg_64 (var_108, CVar(var_108), var_E4, var_F4)
  loc_14B2628: Call 0.Method_arg_2C (var_118, var_E4)
  loc_14B2636: Call 0.Method_arg_150 (var_E4)
  loc_14B264C: Call 0.Method_arg_90 (var_108, var_1BC)
  loc_14B2654: Call 0.Method_arg_24 (var_8E)
  loc_14B2660: For var_1E0 =  To CInt(var_1BC): 1 = var_1E0 'Integer
  loc_14B2679:   Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_14B2681:   Call 0.Method_arg_20 (var_1C0)
  loc_14B2689:   Call 0.Method_arg_30 (var_11C)
  loc_14B269F:   var_1F0 = Ucase(CVar(var_11C)) 'Variant
  loc_14B26B8:   If (var_1F0 = "FROMDATE") Then
  loc_14B26DC:     Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_14B26E4:     Call 0.Method_arg_20 (var_1C0)
  loc_14B26EC:     Call 0.Method_arg_38 ("'" & var_88 & "'")
  loc_14B2702:   Else
  loc_14B270D:     If (var_1F0 = "TODATE") Then
  loc_14B2731:       Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_14B2739:       Call 0.Method_arg_20 (var_1C0)
  loc_14B2741:       Call 0.Method_arg_38 ("'" & var_8C & "'")
  loc_14B2757:     Else
  loc_14B2762:       If (var_1F0 = "FORMONTH") Then
  loc_14B27B3:         Call 0.Method_arg_90 (var_108, CLng(var_8E), var_1C0)
  loc_14B27BB:         Call 0.Method_arg_20 (CStr(1 & Format(var_88, "MMMM/yyyy") & "'"), 1)
  loc_14B27C3:         Call 0.Method_arg_38 ("'")
  loc_14B27E0:       Else
  loc_14B27EB:         If (var_1F0 = "TITLE") Then
  loc_14B2812:           Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_14B281A:           Call 0.Method_arg_20 (var_1C0)
  loc_14B2822:           Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_14B2838:         Else
  loc_14B2843:           If (var_1F0 = "PRINTDATE") Then
  loc_14B2873:             Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_14B287B:             Call 0.Method_arg_20 (var_1C0)
  loc_14B2883:             Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F950EC) & "'"))
  loc_14B2899:           End If
  loc_14B2899:         End If
  loc_14B2899:       End If
  loc_14B2899:     End If
  loc_14B2899:   End If
  loc_14B289C: Next var_1E0 'Integer
  loc_14B28A6: Set var_1C0 = Nothing
  loc_14B28BF: Set var_108 = MemVar_1F951E8 
  loc_14B28CB: Proc_6_99_1484404(var_108, 0, global_80)
  loc_14B28D6: MemVar_1F951E8 = var_108
  loc_14B28EE: Set var_94 = Nothing
  loc_14B28F1: Exit Sub
  loc_14B28F2: Proc_6_60_E63754(0, &HFF)
  loc_14B28FC: global_88 = 0
  loc_14B28FF: Exit Sub
End Sub

Public Sub Proc_66_82_EFD0C4(arg_C) 'EFD0C4
  'Data Table: 54078C
  Dim var_8C As Recordset15
  loc_EFCFED: Set var_8C = arg_C 
  loc_EFD015: var_8C.Fields.Append "Guest", &HC8, &HC
  loc_EFD041: var_8C.Fields.Append "RoomRent", &HC8, &HC
  loc_EFD06D: var_8C.Fields.Append "Tax", &HC8, &HC
  loc_EFD07D: var_8C.CursorType = 3
  loc_EFD08A: var_8C.LockType = 3
  loc_EFD0A9: var_8C.Open var_A0, var_B0, -1
  loc_EFD0B0: Set var_8C = Nothing 
  loc_EFD0B7: Set var_88 = arg_C 
  loc_EFD0BB: Proc_66_82_EFD0C4 = -1
End Sub

Public Sub Proc_66_83_132F528
  'Data Table: 54078C
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_11C As String
  Dim var_12C As Variant
  Dim var_E4 As Variant
  Dim var_14C As Variant
  Dim var_194 As String
  Dim var_19C As String
  Dim var_1B4 As String
  Dim var_1B8 As String
  Dim unk_5407BC As Connection15
  Dim var_94 As Recordset15
  Dim var_1C4 As Recordset15
  Dim var_15C As Variant
  loc_132EDD4: On Error Goto loc_132F518
  loc_132EDDA: var_D4 = CVar(CLng(0)) 'Long
  loc_132EDDF: var_F4 = 1
  loc_132EE2D: var_88 = CStr(Format(CVar("01/" & CStr(Me.FGrid.TextMatrix))), "dd/MMM/yyyy"))
  loc_132EE47: var_D4 = CVar(CLng(0)) 'Long
  loc_132EE59: Set var_108 = Me.FGrid
  loc_132EE5F: var_118 = var_108.TextMatrix)
  loc_132EE93: var_15C = DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & CStr(var_118)))))
  loc_132EEBC: var_8C = CStr(Format(var_15C, "dd/MMM/yyyy"))
  loc_132EED8: var_E4 = " And P.SettleDate Between "
  loc_132EEE8: Proc_6_7_F26918(var_118, var_88, var_E4, 1, 1, var_88)
  loc_132EEF4: var_F4 = " And "
  loc_132EEF9: var_14C = "01/" & var_118 & var_F4 
  loc_132EF08: Proc_6_7_F26918(var_15C, var_8C, var_14C, 1)
  loc_132EF4E: var_11C = "Select Sum(R.Adult) Guest,Round(Sum(Q.RoomCharge),2) RoomRent,Round(Sum(Q.LuxuryTax),2) Tax From (Select P.FolionoDocid,Sum(P.RoomCharge) RoomCharge,Sum(P.LuxuryTax) LuxuryTax From (Select FolionoDocid=Case When IsNull(P.RelatedFolionoDocid,'')<>'' Then P.RelatedFolionoDocid Else P.FolionoDocid End," & "RoomCharge=Case When PayCode<>'"
  loc_132EF5C: var_194 = var_11C & MemVar_1F95078 & "LT' Then IsNull(AmtDr,0)-IsNull(AmtCr,0) Else 0 End,LuxuryTax=Case When PayCode='"
  loc_132EF6A: var_19C = var_194 & MemVar_1F95078 & "LT' Then IsNull(AmtDr,0)-IsNull(AmtCr,0) Else 0 End From Paycharge P Where P.RoomType='RO' And (P.Paycode In (Select Code From RevMast Where Nature='Room Charge') Or P.PayCode='"
  loc_132EF97: var_1B4 = var_19C & MemVar_1F95078 & "LT') And " & "IsNull(Bill_No,'')<>'' " & CStr(1 & var_15C & " ") & " And P.LogSite_Code='" & MemVar_1F95078
  loc_132EF9E: var_1B8 = var_1B4 & "')P Group By P.FolionoDocid)Q Left Join (Select DocId,Max(Adult) Adult From RoomOcc Group By DocId)R On Q.FolioNoDocid=R.DocId"
  loc_132EFA7: unk_5407BC.Execute var_1B8, var_118, -1
  loc_132EFB2: Set var_94 = var_108
  loc_132EFDC: var_1BC = var_94.RecordCount
  loc_132EFEA: If (var_1BC <= 0) Then
  loc_132EFF3:   Call 0.Method_arg_50 (var_11C, var_108, var_118)
  loc_132F001:   var_12C = CVar(var_11C) 'String
  loc_132F009:   var_D4 = "** No Records Found to Print **"
  loc_132F014:   MsgBox(var_D4, &H40, var_12C, var_14C, var_15C)
  loc_132F029:   global_88 = 0
  loc_132F02C:   Exit Sub
  loc_132F02D: End If
  loc_132F03A: Call Proc_66_82_EFD0C4(New)
  loc_132F042: Set var_98 = var_108
  loc_132F045: ' Referenced from: 132F161
  loc_132F054: If Not(var_94.EOF) Then
  loc_132F05A:   Set var_1C4 = var_98 
  loc_132F069:   var_1C4.AddNew var_D4, var_E4
  loc_132F07D:   var_108 = var_94.Fields
  loc_132F094:   Proc_6_48_EF4E00(var_12C, CVar(var_108.Item("Guest")), var_108)
  loc_132F0A6:   var_1C4.Collect = "Guest"
  loc_132F0DB:   Proc_6_47_EF6560(var_12C, CVar(var_94.Fields.Item("RoomRent")), var_12C)
  loc_132F0ED:   var_1C4.Collect = "RoomRent"
  loc_132F0FF:   var_D4 = "Tax"
  loc_132F113:   var_1C8 = var_94.Fields.Item(var_D4)
  loc_132F122:   Proc_6_47_EF6560(var_12C, CVar(var_1C8), var_12C)
  loc_132F12B:   var_E4 = "Tax"
  loc_132F134:   var_1C4.Collect = var_E4
  loc_132F14E:   var_1C4.Update var_D4, var_E4
  loc_132F155:   Set var_1C4 = Nothing 
  loc_132F15C:   var_94.MoveNext
  loc_132F161:   GoTo loc_132F045
  loc_132F164: End If
  loc_132F16A: global_84 = "LTFORMIV"
  loc_132F174: Call 0.Method_arg_50 (var_11C, var_12C, global_88)
  loc_132F191: global_80 = CStr(Ucase(CVar(var_11C)))
  loc_132F1C6: Set var_108 = var_98 
  loc_132F1CD: CreateFieldDefFile(var_108, MemVar_1F950B4 & "\" & global_84 & ".ttx", &HFF)
  loc_132F1F8: var_11C = MemVar_1F950B4 & "\"
  loc_132F212: Call 0.Method_arg_1C (var_11C & global_84 & ".RPT", var_D4, var_108)
  loc_132F21D: MemVar_1F951E8 = var_108
  loc_132F238: var_D4 = CVar(var_108) 'Address
  loc_132F246: Call 0.Method_arg_64 (var_108, var_D4, var_E4)
  loc_132F24E: Call 0.Method_arg_2C (var_F4, var_F4)
  loc_132F25C: Call 0.Method_arg_150 (var_D4)
  loc_132F272: Call 0.Method_arg_90 (var_108, var_1BC)
  loc_132F27A: Call 0.Method_arg_24 (var_8E)
  loc_132F286: For var_1CC =  To CInt(var_1BC): 1 = var_1CC 'Integer
  loc_132F29F:   Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_132F2A7:   Call 0.Method_arg_20 (var_1C8)
  loc_132F2AF:   Call 0.Method_arg_30 (var_11C)
  loc_132F2C5:   var_1DC = Ucase(CVar(var_11C)) 'Variant
  loc_132F2DE:   If (var_1DC = "FROMDATE") Then
  loc_132F302:     Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_132F30A:     Call 0.Method_arg_20 (var_1C8)
  loc_132F312:     Call 0.Method_arg_38 ("'" & var_88 & "'")
  loc_132F328:   Else
  loc_132F333:     If (var_1DC = "TODATE") Then
  loc_132F357:       Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_132F35F:       Call 0.Method_arg_20 (var_1C8)
  loc_132F367:       Call 0.Method_arg_38 ("'" & var_8C & "'")
  loc_132F37D:     Else
  loc_132F388:       If (var_1DC = "FORMONTH") Then
  loc_132F3D9:         Call 0.Method_arg_90 (var_108, CLng(var_8E), var_1C8)
  loc_132F3E1:         Call 0.Method_arg_20 (CStr(1 & Format(var_88, "MMMM/yyyy") & "'"), 1)
  loc_132F3E9:         Call 0.Method_arg_38 ("'")
  loc_132F406:       Else
  loc_132F411:         If (var_1DC = "TITLE") Then
  loc_132F438:           Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_132F440:           Call 0.Method_arg_20 (var_1C8)
  loc_132F448:           Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_132F45E:         Else
  loc_132F469:           If (var_1DC = "PRINTDATE") Then
  loc_132F499:             Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_132F4A1:             Call 0.Method_arg_20 (var_1C8)
  loc_132F4A9:             Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F950EC) & "'"))
  loc_132F4BF:           End If
  loc_132F4BF:         End If
  loc_132F4BF:       End If
  loc_132F4BF:     End If
  loc_132F4BF:   End If
  loc_132F4C2: Next var_1CC 'Integer
  loc_132F4CC: Set var_1C8 = Nothing
  loc_132F4E5: Set var_108 = MemVar_1F951E8 
  loc_132F4F1: Proc_6_99_1484404(var_108, 0, global_80)
  loc_132F4FC: MemVar_1F951E8 = var_108
  loc_132F50C: global_88 = 0
  loc_132F514: Set var_94 = Nothing
  loc_132F517: Exit Sub
  loc_132F518: ' Referenced from: 132EDD4
  loc_132F518: Proc_6_60_E63754(global_88, &HFF)
  loc_132F522: global_88 = 0
  loc_132F525: Exit Sub
End Sub
