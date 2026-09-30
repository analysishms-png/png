VERSION 5.00
Begin VB.Form frmGuestInfo
  Caption = "Guest Information"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin BtnEnh CmdRefresh
    Left = 13905
    Top = 2775
    Width = 1200
    Height = 885
    TabIndex = 17
  End
  Begin BtnEnh CmdSave
    Left = 13905
    Top = 3735
    Width = 1200
    Height = 885
    TabIndex = 11
  End
  Begin BtnEnh CmdExit
    Left = 13905
    Top = 4695
    Width = 1200
    Height = 885
    TabIndex = 14
  End
  Begin BtnEnh CmdAdd
    Left = 13905
    Top = 825
    Width = 1200
    Height = 885
    TabIndex = 15
  End
  Begin BtnEnh CmdEdit
    Left = 13905
    Top = 1800
    Width = 1200
    Height = 885
    TabIndex = 16
  End
  Begin Frame FrmList
    Left = 12330
    Top = 7920
    Width = 1845
    Height = 1755
    Visible = 0   'False
    TabIndex = 7
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 75
      Width = 1860
      Height = 1725
      TabStop = 0   'False
      TabIndex = 8
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 135
    Top = 30
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1215
    Top = 8750
    Width = 1425
    Height = 285
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 10
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
    ForeColor = &HFF0000&
    Left = 3810
    Top = 8750
    Width = 1425
    Height = 285
    Visible = 0   'False
    TabIndex = 4
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
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 135
    Top = 765
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    HideSelection = 0   'False
    MaxLength = 50
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGVType
    Left = 14820
    Top = 7560
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 0
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2640
    Width = 4680
    Height = 450
    Visible = 0   'False
    TabIndex = 1
  End
  Begin ListView FacilityListView
    Left = 11145
    Top = 8220
    Width = 780
    Height = 1230
    Visible = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGSundry
    Left = 15105
    Top = 7200
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin MSHFlexGrid FGrid
    Left = 15
    Top = 0
    Width = 13700
    Height = 8700
    TabIndex = 10
  End
  Begin Label LblName
    Caption = "For Month"
    Index = 0
    ForeColor = &HFF0000&
    Left = 180
    Top = 8750
    Width = 960
    Height = 240
    Visible = 0   'False
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
  Begin Label LblName
    Caption = "Entry Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2775
    Top = 8750
    Width = 975
    Height = 240
    Visible = 0   'False
    TabIndex = 12
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

Attribute VB_Name = "frmGuestInfo"

Private global_92 As Integer
Private global_94 As Integer
Private MasterFormExit As Integer

Private Sub FGrid_UnknownEvent_0 'E62544
  'Data Table: 4D6590
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6250F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E62522: Set var_A8 = Me.TxtGrid
  loc_E62528: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E62530: var_AC.Visible = False
  loc_E6253C: Call Proc_302_70_DFC418()
  loc_E62541: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6A8C8
  'Data Table: 4D6590
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6A884: Set var_88 = Me.TxtGrid
  loc_E6A88A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6A8A4: If (var_8C.Visible = 0) Then
  loc_E6A8BD:   Me.FGrid.BackColorSel = CVar(CLng(global_84))
  loc_E6A8C5: End If
  loc_E6A8C5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E20080
  'Data Table: 4D6590
  loc_E20077: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E2007F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0019C
  'Data Table: 4D6590
  loc_E00194: Call Proc_302_66_E45A54()
  loc_E00199: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '103950C
  'Data Table: 4D6590
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_10392C4: Set var_88 = Me.TopCtrl1
  loc_10392CA: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103930F: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1039318:   Call Form_KeyDown(Cancel, arg_10)
  loc_103931D: End If
  loc_1039321: Set var_88 = Me.TopCtrl1
  loc_1039327: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1039340: If (CStr() = "Browse") Then
  loc_1039343:   Exit Sub
  loc_1039344: End If
  loc_10393B8: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10393CE:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10393DE:   var_9C = "+{Tab}"
  loc_10393E4:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_10393EE:   Cancel = 0
  loc_10393F4: Else
  loc_10393FE:   var_B0 = Me.FGrid.Rows
  loc_103944B:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1039461:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1039477:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_1039481:     Cancel = 0
  loc_1039484:   End If
  loc_1039484: End If
  loc_103948A: global_92 = Cancel
  loc_10394B0: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10394D4: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10394EA:   var_EC = CLng(Me.FGrid.Col)
  loc_10394F3: End If
  loc_10394F9: If (Cancel = &HD) Then
  loc_1039501:   global_94 = 0
  loc_1039504: End If
  loc_1039506: Cancel = 0
  loc_1039509: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0F208
  'Data Table: 4D6590
  loc_E0F1F9: Call FGrid_UnknownEvent_C()
  loc_E0F203: global_94 = 0
  loc_E0F206: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '12D5FD0
  'Data Table: 4D6590
  Dim Cancel As Integer
  Dim var_9C As String
  Dim var_98 As MSHFlexGrid
  Dim var_94 As Variant
  Dim var_A0 As Long
  Dim var_A4 As Variant
  Dim var_CA As Integer
  Dim var_C4 As TextBox
  Dim var_DC As Variant
  Dim var_B8 As MSHFlexGrid
  loc_12D593A: Proc_6_133_E7FB08(var_94)
  loc_12D5943: Cancel = CInt(var_94)
  loc_12D594D: Set var_98 = Me.TopCtrl1
  loc_12D5953: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(Cancel)
  loc_12D596C: If (CStr(Cancel) = "Browse") Then
  loc_12D596F:   Exit Sub
  loc_12D5970: End If
  loc_12D5983: var_A0 = CLng(Me.FGrid.Col)
  loc_12D5993: If (var_A0 = CLng(3)) Then
  loc_12D59A4:   Set var_98 = Me.TxtGrid
  loc_12D59AA:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12D59B2:   var_A4.MaxLength = &HF
  loc_12D59C2:   Set var_C4 = Me.FGrid
  loc_12D59E6:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12D59EF:   var_CA = Asc(var_9C)
  loc_12D5A13:   Set var_A4 = var_C4
  loc_12D5A25:   Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0, 0)
  loc_12D5A4D:   Set var_98 = Me.TxtGrid
  loc_12D5A53:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, var_CA)
  loc_12D5A5B:   0 = var_A4.Text
  loc_12D5A6D:   Set var_B8 = Me.TxtGrid
  loc_12D5A73:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, Len(var_9C))
  loc_12D5A7B:   var_C4.SelStart = var_CA
  loc_12D5A92:   Set var_98 = Me.TopCtrl1
  loc_12D5A98:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A0)
  loc_12D5AA0:   var_9C = CStr()
  loc_12D5AAC:   Set var_A4 = Me.FGrid
  loc_12D5ABB:   var_DC = CVar(CLng(var_A4.Row)) 'Long
  loc_12D5AFF:   If (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_12D5B0A:     Call TxtGrid_KeyPress(0)
  loc_12D5B0F:   End If
  loc_12D5B12: Else
  loc_12D5B19:   If (var_A0 = CLng(2)) Then
  loc_12D5B2A:     Set var_98 = Me.TxtGrid
  loc_12D5B30:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, &H32)
  loc_12D5B38:     var_A4.MaxLength = Cancel
  loc_12D5B48:     Set var_C4 = Me.FGrid
  loc_12D5B6C:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12D5B75:     var_CA = Asc(var_9C)
  loc_12D5B99:     Set var_A4 = var_C4
  loc_12D5BAB:     Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0, 0)
  loc_12D5BD3:     Set var_98 = Me.TxtGrid
  loc_12D5BD9:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, var_CA)
  loc_12D5BE1:     0 = var_A4.Text
  loc_12D5BF3:     Set var_B8 = Me.TxtGrid
  loc_12D5BF9:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, Len(var_9C))
  loc_12D5C01:     var_C4.SelStart = var_CA
  loc_12D5C18:     Set var_98 = Me.TopCtrl1
  loc_12D5C1E:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_DC)
  loc_12D5C26:     var_9C = CStr((var_9C = "Add"))
  loc_12D5C32:     Set var_A4 = Me.FGrid
  loc_12D5C41:     var_DC = CVar(CLng(var_A4.Row)) 'Long
  loc_12D5C85:     If (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_12D5C90:       Call TxtGrid_KeyPress(0)
  loc_12D5C95:     End If
  loc_12D5C98:   Else
  loc_12D5C9F:     If Not (var_A0 = CLng(4)) Then
  loc_12D5CAA:       If (var_A0 = CLng("5")) Then
  loc_12D5CAD:       End If
  loc_12D5CBB:       Set var_98 = Me.TxtGrid
  loc_12D5CC1:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, &H32)
  loc_12D5CC9:       var_A4.MaxLength = Cancel
  loc_12D5CD9:       Set var_C4 = Me.FGrid
  loc_12D5CFD:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12D5D2A:       Set var_A4 = var_C4
  loc_12D5D3C:       Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0, 0)
  loc_12D5D64:       Set var_98 = Me.TxtGrid
  loc_12D5D6A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_12D5D72:       0 = var_A4.Text
  loc_12D5D8B:       If (Len(var_9C) <= 1) Then
  loc_12D5D9A:         Set var_98 = Me.TxtGrid
  loc_12D5DA0:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_12D5DA8:         var_CA = var_A4.Text
  loc_12D5DB9:         Set var_B8 = Me.TxtGrid
  loc_12D5DBF:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_9C)
  loc_12D5DC7:         var_C4.Text = var_DC
  loc_12D5DDA:       End If
  loc_12D5DE6:       Set var_98 = Me.TxtGrid
  loc_12D5DEC:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12D5E06:       Set var_B8 = Me.TxtGrid
  loc_12D5E0C:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12D5E14:       var_C4.SelStart = Len(var_A4.Text)
  loc_12D5E2A:     Else
  loc_12D5E31:       If Not (var_A0 = CLng(6)) Then
  loc_12D5E3B:         If (var_A0 = CLng(7)) Then
  loc_12D5E3E:         End If
  loc_12D5E4C:         Set var_98 = Me.TxtGrid
  loc_12D5E52:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12D5E5A:         var_A4.MaxLength = &HB
  loc_12D5E6A:         Set var_C4 = Me.FGrid
  loc_12D5E8E:         var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12D5EBB:         Set var_A4 = var_C4
  loc_12D5ECD:         Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0, &HFF)
  loc_12D5EF5:         Set var_98 = Me.TxtGrid
  loc_12D5EFB:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_12D5F03:         0 = var_A4.Text
  loc_12D5F1C:         If (Len(var_9C) <= 1) Then
  loc_12D5F2B:           Set var_98 = Me.TxtGrid
  loc_12D5F31:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_12D5F39:           var_CA = var_A4.Text
  loc_12D5F4A:           Set var_B8 = Me.TxtGrid
  loc_12D5F50:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12D5F58:           var_C4.Text = var_9C
  loc_12D5F6B:         End If
  loc_12D5F77:         Set var_98 = Me.TxtGrid
  loc_12D5F7D:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12D5F97:         Set var_B8 = Me.TxtGrid
  loc_12D5F9D:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12D5FA5:         var_C4.SelStart = Len(var_A4.Text)
  loc_12D5FB8:       End If
  loc_12D5FB8:     End If
  loc_12D5FB8:   End If
  loc_12D5FB8: End If
  loc_12D5FC2: If (CLng(Cancel) <> &HD) Then
  loc_12D5FCA:   global_94 = &HFF
  loc_12D5FCD: End If
  loc_12D5FCD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E20170
  'Data Table: 4D6590
  loc_E20167: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E2016F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E200D0
  'Data Table: 4D6590
  loc_E200C7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E200CF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E7D920
  'Data Table: 4D6590
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_A0 As TextBox
  loc_E7D8C0: Call Proc_302_70_DFC418()
  loc_E7D8D8: var_9C = CLng(Me.FGrid.Col)
  loc_E7D8E8: If Not (var_9C = CLng(2)) Then
  loc_E7D8F2:   If (var_9C = CLng(3)) Then
  loc_E7D8F5:   End If
  loc_E7D8F8: Else
  loc_E7D903:   Set var_88 = Me.TxtGrid
  loc_E7D909:   Call 0.Method_FGrid_UnknownEvent_150 (0, var_A0)
  loc_E7D911:   var_A0.Visible = False
  loc_E7D91D: End If
  loc_E7D91D: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EB1308
  'Data Table: 4D6590
  Dim var_88 As TextBox
  loc_EB1277: If (Proc_183_12_E7AF74(KeyCode) = &HFF) Then
  loc_EB127E:   Set var_88 = Me.FGrid
  loc_EB129B:   Me.TxtSearch.Visible = False
  loc_EB12A3: End If
  loc_EB12AD: If (CLng(KeyCode) = &H2E) Then
  loc_EB12BD:   Me.TxtSearch.Text = vbNullString
  loc_EB12C5: End If
  loc_EB12DA: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EB12E1:   Set var_88 = Me.FGrid
  loc_EB12FE:   Me.TxtSearch.Visible = False
  loc_EB1306: End If
  loc_EB1306: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'EF180C
  'Data Table: 4D6590
  Dim Me As Recordset15
  Dim KeyAscii As Integer
  loc_EF17AA: var_B4 = Me.Fields.Item(CVar(CLng(Me.FGrid.Col))).Name
  loc_EF17B2: var_C8 = "15595518"
  loc_EF17BB: var_C4 = "16777152"
  loc_EF17E3: Proc_183_11_113DA88(Me.TxtSearch, Me.FGrid, global_96, KeyAscii)
  loc_EF1807: KeyAscii = 0
  loc_EF180A: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E590F8
  'Data Table: 4D6590
  Dim var_88 As TextBox
  loc_E590C5: Me.TxtSearch.Text = vbNullString
  loc_E590D1: Set var_88 = Me.FGrid
  loc_E590EE: Me.TxtSearch.Visible = False
  loc_E590F6: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E567BC
  'Data Table: 4D6590
  Dim var_88 As TextBox
  loc_E56789: Me.TxtSearch.Text = vbNullString
  loc_E56795: Set var_88 = Me.FGrid
  loc_E567B2: Me.TxtSearch.Visible = False
  loc_E567BA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F10AFC
  'Data Table: 4D6590
  Dim var_A0 As Variant
  Dim var_8C As MSHFlexGrid
  loc_F10A0C: On Error Goto loc_F10AF6
  loc_F10A32: Call Proc_302_69_E795E4(Proc_5_1_100EC1C("ADD", Me))
  loc_F10A3D: var_A0 = vbNullString
  loc_F10A47: Set var_8C = Me.FGrid
  loc_F10A71: var_A0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_F10A80: Me.FGrid.TopRow = var_A0
  loc_F10AA8: var_A0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_F10AB7: Me.FGrid.Row = var_A0
  loc_F10AD8: Me.FGrid.Col = CVar(CLng(2))
  loc_F10AE4: Set var_8C = Me.FGrid
  loc_F10AF5: Exit Sub
  loc_F10AF6: ' Referenced from: F10A0C
  loc_F10AF6: Proc_6_60_E63754(FGrid.DispID_8001, FGrid.DispID_10000)
  loc_F10AFB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E99864
  'Data Table: 4D6590
  loc_E997F0: On Error Goto loc_E9985C
  loc_E9982A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E99850:   Call Proc_302_69_E795E4(Proc_5_1_100EC1C("INI", Me))
  loc_E9985B: End If
  loc_E9985B: Exit Sub
  loc_E9985C: ' Referenced from: E997F0
  loc_E9985C: Proc_6_60_E63754(global_100)
  loc_E99861: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E4FCA0
  'Data Table: 4D6590
  loc_E4FC93: Call Proc_302_69_E795E4(Proc_5_1_100EC1C("EDIT", Me))
  loc_E4FC9E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E196E8
  'Data Table: 4D6590
  Dim arg_187A As Integer
  loc_E196DD: Me.Global.Unload Me
  loc_E196E5: Exit Sub
  loc_E196E6: arg_187A = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC9ACC
  'Data Table: 4D6590
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EC9A2C: On Error Goto loc_EC9AC4
  loc_EC9A46: If (Me.RecordCount <= 0) Then
  loc_EC9A4F:   var_B8 = "Information"
  loc_EC9A6A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC9A7A:   Exit Sub
  loc_EC9A7B: End If
  loc_EC9A82: var_10C = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)) AS Code,LM.Name As LocationName,Convert(Varchar(11),LF.AppDate,103) From (LocationFacility LF Left Join LocationMast LM On LF.LcCode=LM.Code) Where (LF.LOGSITE_CODE='" & MemVar_1F95078
  loc_EC9A89: MemVar_1F950E4 = var_10C & "' or LF.LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103))"
  loc_EC9A96: MemVar_1F95120 = Me
  loc_EC9AA3: Proc_6_126_F1C850("4500,1500")
  loc_EC9ABE: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC9AC3: Exit Sub
  loc_EC9AC4: ' Referenced from: EC9A2C
  loc_EC9AC4: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC9AC9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E28704
  'Data Table: 4D6590
  loc_E286F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E28700: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E28818
  'Data Table: 4D6590
  loc_E2880C: Proc_5_0_1107AD0(&HFF, Me)
  loc_E28814: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E28760
  'Data Table: 4D6590
  loc_E28754: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2875C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E285F0
  'Data Table: 4D6590
  loc_E285E4: Proc_5_0_1107AD0(&HFF, Me)
  loc_E285EC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E203A4
  'Data Table: 4D6590
  Dim Me As Recordset15
  loc_E2038F: Me.Requery -1
  loc_E20394: Call Proc_302_68_F17030()
  loc_E20399: Call Proc_302_64_115F4A4()
  loc_E2039E: Call Proc_302_62_11A2324()
  loc_E203A3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13E6E28
  'Data Table: 4D6590
  Dim unk_4D6594 As Connection15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As String
  Dim var_18C As Variant
  Dim var_230 As Variant
  Dim var_388 As Variant
  Dim var_41C As MSHFlexGrid
  Dim var_48C As Variant
  Dim var_4D0 As Variant
  Dim var_128 As Variant
  Dim var_1CC As Variant
  Dim var_270 As Variant
  Dim var_314 As Variant
  Dim var_324 As Variant
  Dim var_3B8 As Variant
  Dim var_45C As Variant
  Dim var_4E0 As Variant
  Dim var_514 As String
  Dim var_1BC As Variant
  Dim var_260 As Variant
  Dim var_354 As Variant
  Dim var_304 As Variant
  Dim var_C8 As Variant
  Dim var_108 As Variant
  Dim var_3A8 As Variant
  Dim var_44C As Variant
  Dim var_534 As Variant
  loc_13E64DC: On Error Goto loc_13E6E0D
  loc_13E64E3: var_86 = CByte(0) 'Byte
  loc_13E64F0: unk_4D6594.BeginTrans var_90
  loc_13E64F9: var_86 = CByte(1) 'Byte
  loc_13E6522: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A8 'Integer
  loc_13E652C:   var_B8 = CVar(CLng(var_88)) 'Long
  loc_13E6534:   var_D8 = CVar(CLng(8)) 'Long
  loc_13E6570:   If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "T") Then
  loc_13E6577:     var_B8 = CVar(CLng(var_88)) 'Long
  loc_13E657F:     var_D8 = CVar(CLng(1)) 'Long
  loc_13E659F:     var_108 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_13E65BB:     If CBool(var_108 <> vbNullString) Then
  loc_13E65EA:       Proc_6_17_EAAE40(var_108, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_88)), CVar(CLng(2)))
  loc_13E661B:       Proc_6_17_EAAE40(var_1BC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_88)))
  loc_13E664C:       Proc_6_17_EAAE40(var_260, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_88)))
  loc_13E667E:       Proc_6_17_EAAE40(var_304, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng("5")), CVar(CLng(var_88)))
  loc_13E669E:       var_388 = Me.FGrid.TextMatrix)
  loc_13E66AF:       Proc_6_7_F26918(var_3A8, CVar(CStr(var_388)), CVar(CLng(6)), CVar(CLng(var_88)))
  loc_13E66E0:       Proc_6_7_F26918(var_44C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(var_88)))
  loc_13E66E9:       var_48C = CVar(CLng(var_88)) 'Long
  loc_13E6700:       var_4D0 = Me.FGrid.TextMatrix)
  loc_13E6731:       var_1CC = "Update GuestProf Set Name=" & var_108 & ",Add1=" & var_1BC 
  loc_13E6741:       var_270 = var_1CC & ",MobileNo=" & var_260 
  loc_13E6761:       var_3B8 = var_270 & ", CityName=" & var_304 & ", BirthDate=" & var_3A8 
  loc_13E6771:       var_45C = var_3B8 & ",Anniversary=" & var_44C 
  loc_13E679C:       unk_4D6594.Execute CStr(var_45C & " Where Code='" & CVar(CStr(var_4D0)) & "'"), var_534, -1
  loc_13E682C:       Proc_6_17_EAAE40(var_108, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_88)), var_538, var_4D0)
  loc_13E6892:       Proc_6_17_EAAE40(var_1CC, CVar(CVar(CLng("5")) & CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CStr(Me.FGrid.TextMatrix)) & ", ", CVar(CLng(4)), CVar(CLng(var_88)))
  loc_13E68C3:       Proc_6_17_EAAE40(var_270, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_88)), CVar(CLng(1)))
  loc_13E68CC:       var_324 = CVar(CLng(var_88)) 'Long
  loc_13E68D4:       var_354 = CVar(CLng(1)) 'Long
  loc_13E6938:       var_314 = "Update SmartCardRegistration Set Name=" & var_108 & ",Addr=" & var_1CC & ",Phone=" & var_270 & " Where MemberCode='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_13E694F:       unk_4D6594.Execute CStr(var_314 & "' And CardType='Cash Card'"), var_388, -1
  loc_13E699E:     Else
  loc_13E69A2:       var_B8 = CVar(CLng(var_88)) 'Long
  loc_13E69AA:       var_D8 = CVar(CLng(1)) 'Long
  loc_13E69B9:       var_A4 = Me.FGrid.TextMatrix)
  loc_13E69C4:       var_F8 = CVar(CStr(var_A4)) 'String
  loc_13E69CA:       var_108 = Trim(var_F8)
  loc_13E69F1:       Set var_18C = Me.FGrid
  loc_13E6A1A:       var_1CC = CVar(CLng(2)) And (Trim(CVar(CStr(var_18C.TextMatrix)))) <> vbNullString)
  loc_13E6A36:       If CBool(var_1CC) Then
  loc_13E6A3F:         var_C8 = 0
  loc_13E6A5C:         var_514 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From GUESTPROF WHERE SITE_CODE='" & MemVar_1F95070
  loc_13E6A6C:         unk_4D6594.Execute CStr(Me.FGrid.TextMatrix)) & "'", var_A4, -1
  loc_13E6A74:         var_94 = var_94.Fields
  loc_13E6A7C:         var_C8 = var_18C.Item(var_18C)
  loc_13E6A84:         var_230 = var_230.Value
  loc_13E6AB4:         var_108 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2, var_F8, CVar(CLng(var_88)), (var_108 = vbNullString))) 'String
  loc_13E6ADF:         var_128 = (1 + Format(CStr(var_F8), "000000"))
  loc_13E6AF6:         var_B8 = CVar(CLng(var_88)) 'Long
  loc_13E6AFE:         var_D8 = CVar(CLng(2)) 'Long
  loc_13E6B18:         var_F8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13E6B1E:         Proc_6_17_EAAE40(var_108, var_F8, var_D8, var_B8, 1, var_108)
  loc_13E6B4F:         Proc_6_17_EAAE40(var_1CC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_88)), var_D8)
  loc_13E6B80:         Proc_6_17_EAAE40(var_270, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_88)))
  loc_13E6BB2:         Proc_6_17_EAAE40(var_314, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng("5")), CVar(CLng(var_88)))
  loc_13E6BE3:         Proc_6_7_F26918(var_3B8, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_88)))
  loc_13E6BFD:         Set var_41C = Me.FGrid
  loc_13E6C14:         Proc_6_7_F26918(var_45C, CVar(CStr(var_41C.TextMatrix))), CVar(CLng(7)), CVar(CLng(var_88)))
  loc_13E6C24:         Proc_6_7_F26918(var_568, CVar(Proc_6_15_EF37AC(var_B8, var_41C)))
  loc_13E6C3D:         var_514 = "Insert Into GuestProf (Code,Name,Add1,MobileNo,CityName,BirthDate,Anniversary,POS,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values ('" & CStr("Update SmartCardRegistration Set Name=" & var_108)
  loc_13E6C44:         var_128 = CVar(var_514 & "',") 'String
  loc_13E6CAD:         var_4E0 = var_128 & var_108 & "," & var_1CC & "," & var_270 & "," & var_314 & "," & var_3B8 & "," & var_45C & ",1,'" & CVar(MemVar_1F95070) 
  loc_13E6CFA:         unk_4D6594.Execute CStr(var_4E0 & "','" & CVar(MemVar_1F950C8) & "', " & var_568 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_5C8, -1
  loc_13E6D6E:       End If
  loc_13E6D6E:     End If
  loc_13E6D72:     var_B8 = CVar(CLng(var_88)) 'Long
  loc_13E6D7A:     var_D8 = CVar(CLng(8)) 'Long
  loc_13E6D7F:     var_118 = vbNullString
  loc_13E6D89:     Set var_94 = Me.FGrid
  loc_13E6D8F:     LateIdCallSt
  loc_13E6D9A:   End If
  loc_13E6D9D: Next var_A8 'Integer
  loc_13E6DA8: unk_4D6594.CommitTrans
  loc_13E6DB1: var_86 = CByte(0) 'Byte
  loc_13E6DD8: Call Proc_302_69_E795E4(Proc_5_1_100EC1C("ADD", Me))
  loc_13E6DFC: MsgBox("Details of Guest Saved.", &H40, var_F8, var_108, var_128)
  loc_13E6E0C: Exit Sub
  loc_13E6E0D: ' Referenced from: 13E64DC
  loc_13E6E16: If (CInt(var_86) = 1) Then
  loc_13E6E1F:   unk_4D6594.RollbackTrans
  loc_13E6E24: End If
  loc_13E6E24: Exit Sub
End Sub

Private Sub Form_Load() 'F55F0C
  'Data Table: 4D6590
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  loc_F55DE0: On Error Goto loc_F55F03
  loc_F55DEA: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F55E02: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B4))
  loc_F55E14: Set var_A8 = Me.TopCtrl1
  loc_F55E1A: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_F55E28: Call 0.Method_arg_50 (var_AC)
  loc_F55E38: Set var_A8 = Me.TopCtrl1
  loc_F55E3E: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_F55E53: Set global_96 = New 
  loc_F55E65: Me.TopCtrl1.CursorLocation = 3
  loc_F55E86: Me.Recordset15.CursorLocation = 3
  loc_F55EA9: var_AC = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From LocationFacility LF Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_F55EB0: var_BC = CVar(var_AC & "' or LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103))") 'String
  loc_F55EBA: Me.Open CVar(var_AC), CVar(MemVar_1F95044), 3
  loc_F55EC5: Call Proc_302_64_115F4A4(1)
  loc_F55EED: Call Proc_302_69_E795E4(Proc_5_1_100EC1C("ADD", Me), New)
  loc_F55EF8: Call Proc_302_68_F17030(-1)
  loc_F55EFD: Call Proc_302_62_11A2324()
  loc_F55F02: Exit Sub
  loc_F55F03: ' Referenced from: F55DE0
  loc_F55F03: Proc_6_60_E63754()
  loc_F55F08: Exit Sub
  loc_F55F09: VCallFPR8
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E56E14
  'Data Table: 4D6590
  loc_E56DDF: Set global_100 = Nothing
  loc_E56DF1: Set global_112 = Nothing
  loc_E56E03: Set global_96 = Nothing
  loc_E56E0F: MasterFormExit = 0
  loc_E56E12: Exit Sub
End Sub

Private Sub Form_Activate() 'E51430
  'Data Table: 4D6590
  loc_E51400: On Error Goto loc_E5142A
  loc_E51407: Set var_88 = Me.TopCtrl1
  loc_E5140D: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E51422: If (CLng(CInt()) = &H2D) Then
  loc_E51425:   Call TopCtrl1_UnknownEvent_15()
  loc_E5142A:   ' Referenced from: E51400
  loc_E5142A: End If
  loc_E5142A: Proc_6_60_E63754()
  loc_E5142F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25E14
  'Data Table: 4D6590
  loc_E25DF9: If (MasterFormExit = &HFF) Then
  loc_E25E09:   Me.Global.Unload Me
  loc_E25E11: End If
  loc_E25E11: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5C7F0
  'Data Table: 4D6590
  loc_E5C7A8: On Error Goto loc_E5C7E8
  loc_E5C7B5: If (CLng(KeyCode) = &H71) Then
  loc_E5C7B8:   Call TopCtrl1_UnknownEvent_A()
  loc_E5C7C0: Else
  loc_E5C7CA:   If (CLng(KeyCode) = &H72) Then
  loc_E5C7CD:     Call TopCtrl1_UnknownEvent_D()
  loc_E5C7D5:   Else
  loc_E5C7DF:     If (CLng(KeyCode) = &H74) Then
  loc_E5C7E2:       Call TopCtrl1_UnknownEvent_15()
  loc_E5C7E7:     End If
  loc_E5C7E7:   End If
  loc_E5C7E7: End If
  loc_E5C7E7: Exit Sub
  loc_E5C7E8: ' Referenced from: E5C7A8
  loc_E5C7E8: Proc_6_60_E63754()
  loc_E5C7ED: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E50454
  'Data Table: 4D6590
  loc_E50432: Set var_88 = Me.Txt
  loc_E50438: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E50446: Proc_6_74_E23240(var_8C)
  loc_E50452: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EDE7E4
  'Data Table: 4D6590
  Dim var_86 As Integer
  loc_EDE73A: If (CLng(Shift) = &H1B) Then
  loc_EDE73D:   Exit Sub
  loc_EDE73E: End If
  loc_EDE741: var_86 = KeyCode
  loc_EDE79A: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_EDE7B2:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EDE7BB:     Proc_6_75_E5335C(Shift, arg_14)
  loc_EDE7C0:   End If
  loc_EDE7D5:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EDE7DE:     Proc_6_76_E533C8(Shift, arg_14)
  loc_EDE7E3:   End If
  loc_EDE7E3: End If
  loc_EDE7E3: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E07890
  'Data Table: 4D6590
  Dim var_86 As Integer
  loc_E07883: Proc_6_58_E06050(arg_10)
  loc_E0788B: var_86 = KeyAscii
  loc_E0788E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFF754
  'Data Table: 4D6590
  Dim var_86 As Integer
  loc_DFF74F: var_86 = KeyCode
  loc_DFF752: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E500AC
  'Data Table: 4D6590
  loc_E5008A: Set var_88 = Me.Txt
  loc_E50090: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E5009E: Proc_6_73_E23294(var_8C)
  loc_E500AA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '103D36C
  'Data Table: 4D6590
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  loc_103D127: var_86 = Cancel
  loc_103D132: If (var_86 = CInt(0)) Then
  loc_103D140:   Set var_8C = Me.Txt
  loc_103D146:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_103D16F:   If (Proc_6_27_EA61EC(var_90, "For Month") = 0) Then
  loc_103D17D:     Set var_8C = Me.Txt
  loc_103D183:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_103D18B:     var_90.SetFocus
  loc_103D199:     arg_10 = &HFF
  loc_103D19C:     Exit Sub
  loc_103D19D:   End If
  loc_103D1A7:   Set var_8C = Me.Txt
  loc_103D1AD:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103D1CD:   Set var_9C = Me.Txt
  loc_103D1D3:   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_103D1DB:   var_A0.Text = Proc_6_120_133AEC8(var_90, arg_10)
  loc_103D1EE:   Call Proc_302_62_11A2324(var_86)
  loc_103D1F6: Else
  loc_103D1FE:   If (var_86 = CInt(1)) Then
  loc_103D20C:     Set var_8C = Me.Txt
  loc_103D212:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_103D23B:     If (Proc_6_27_EA61EC(var_90, "Bill Date") = 0) Then
  loc_103D249:       Set var_8C = Me.Txt
  loc_103D24F:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_103D257:       var_90.SetFocus
  loc_103D265:       arg_10 = &HFF
  loc_103D268:       Exit Sub
  loc_103D269:     End If
  loc_103D273:     Set var_8C = Me.Txt
  loc_103D279:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103D299:     Set var_9C = Me.Txt
  loc_103D29F:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_103D2A7:     var_A0.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_103D2C4:     Set var_8C = Me.Txt
  loc_103D2CA:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103D305:     Set var_94 = Me.Txt
  loc_103D30B:     Call 0.Method_Txt_Validate0 (CInt(0), var_9C, CStr(Format(CVar(var_90), "MMM/yyyy")))
  loc_103D313:     var_9C.Text = 1
  loc_103D32D:     Call Proc_302_62_11A2324(1)
  loc_103D345:     Me.FGrid.Row = 1
  loc_103D360:     Me.FGrid.Col = 2
  loc_103D368:   End If
  loc_103D368: End If
  loc_103D368: Exit Sub
End Sub

Private Sub CmdRefresh_UnknownEvent_9 'DFF594
  'Data Table: 4D6590
  loc_DFF58C: Call TopCtrl1_UnknownEvent_15()
  loc_DFF591: Exit Sub
  loc_DFF592: CExtInstUnk
End Sub

Private Sub CmdEdit_UnknownEvent_9 'DFF6E4
  'Data Table: 4D6590
  loc_DFF6DC: Call TopCtrl1_UnknownEvent_D()
  loc_DFF6E1: Exit Sub
End Sub

Private Sub CmdSave_UnknownEvent_9 'DFF214
  'Data Table: 4D6590
  loc_DFF20C: Call TopCtrl1_UnknownEvent_16()
  loc_DFF211: Exit Sub
End Sub

Private Sub FacilityListView_UnknownEvent_C 'E0243C
  'Data Table: 4D6590
  loc_E02437: Set var_88 = Cancel 
  loc_E0243B: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'EDC070
  'Data Table: 4D6590
  Dim var_94 As Variant
  Dim var_108 As TextBox
  loc_EDBFD0: Call Proc_302_70_DFC418()
  loc_EDBFE8: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_EDC003: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EDC042: Set var_104 = Me.TxtGrid
  loc_EDC048: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_EDC050: var_108.Tag = CVar(CLng(Me.FGrid.Col))
  loc_EDC06E: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11EFE74
  'Data Table: 4D6590
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_AC As Long
  loc_11EF9DC: On Error Goto loc_11EFE6B
  loc_11EF9E9: If (CLng(Shift) = &H1B) Then
  loc_11EF9F9:   Set var_88 = Me.TxtGrid
  loc_11EF9FF:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_11EFA19:   Set var_94 = Me.TxtGrid
  loc_11EFA1F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_11EFA27:   var_98.Text = var_8C.Tag
  loc_11EFA43:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11EFA48:   Call Proc_302_70_DFC418(arg_14)
  loc_11EFA51:   Set var_88 = Me.FGrid
  loc_11EFA6E:   Set var_88 = Me.TxtGrid
  loc_11EFA74:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_11EFA7C:   var_8C.Visible = False
  loc_11EFA88:   Exit Sub
  loc_11EFA89: End If
  loc_11EFA9C: var_AC = CLng(Me.FGrid.Col)
  loc_11EFAAC: If (var_AC = CLng(3)) Then
  loc_11EFAB9:   If (CLng(Shift) = &HD) Then
  loc_11EFAC2:     Call Proc_302_67_119FFB0(KeyCode, var_AE)
  loc_11EFACD:     If (var_AE = &HFF) Then
  loc_11EFAE8:       var_A8 = Me.FGrid.Col
  loc_11EFB31:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 8)
  loc_11EFB46:     End If
  loc_11EFB46:   End If
  loc_11EFB49: Else
  loc_11EFB50:   If (var_AC = CLng(2)) Then
  loc_11EFB5D:     If (CLng(Shift) = &HD) Then
  loc_11EFB66:       Call Proc_302_67_119FFB0(KeyCode, var_AE, 0, CByte((CLng(var_A8) + 1)))
  loc_11EFB71:       If (var_AE = &HFF) Then
  loc_11EFB8C:         var_A8 = Me.FGrid.Col
  loc_11EFBD5:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 8, 0)
  loc_11EFBEA:       End If
  loc_11EFBEA:     End If
  loc_11EFBED:   Else
  loc_11EFBF4:     If Not (var_AC = CLng(4)) Then
  loc_11EFBFF:       If (var_AC = CLng("5")) Then
  loc_11EFC02:       End If
  loc_11EFC42:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_11EFC4B:         Call Proc_302_67_119FFB0(KeyCode, var_AE, CByte((CLng(var_A8) + 1)), 0, var_A8)
  loc_11EFC56:         If (var_AE = &HFF) Then
  loc_11EFC71:           var_A8 = Me.FGrid.Col
  loc_11EFCBA:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 8, 0)
  loc_11EFCCF:         End If
  loc_11EFCCF:       End If
  loc_11EFCD2:     Else
  loc_11EFCD9:       If (var_AC = CLng(6)) Then
  loc_11EFD1C:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_11EFD25:           Call Proc_302_67_119FFB0(KeyCode, var_AE, CByte((CLng(var_A8) + 1)), 0, var_A8)
  loc_11EFD30:           If (var_AE = &HFF) Then
  loc_11EFD4B:             var_A8 = Me.FGrid.Col
  loc_11EFD94:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 8, 0)
  loc_11EFDA9:           End If
  loc_11EFDA9:         End If
  loc_11EFDAC:       Else
  loc_11EFDB3:         If Not (var_AC = CLng(6)) Then
  loc_11EFDBD:           If (var_AC = CLng(7)) Then
  loc_11EFDC0:           End If
  loc_11EFE00:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_11EFE09:             Call Proc_302_67_119FFB0(KeyCode, var_AE, CByte((CLng(var_A8) + 1)), 0, var_A8)
  loc_11EFE14:             If (var_AE = &HFF) Then
  loc_11EFE5A:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 8, 0)
  loc_11EFE6A:             End If
  loc_11EFE6A:           End If
  loc_11EFE6A:         End If
  loc_11EFE6A:       End If
  loc_11EFE6A:     End If
  loc_11EFE6A:   End If
  loc_11EFE6A: End If
  loc_11EFE6A: Exit Sub
  loc_11EFE6B: ' Referenced from: 11EF9DC
  loc_11EFE6B: Proc_6_60_E63754(3, 0, 0)
  loc_11EFE70: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '10CADE0
  'Data Table: 4D6590
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As MSHFlexGrid
  Dim var_94 As Variant
  Dim var_A0 As Long
  Dim var_A4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim Me As Recordset15
  loc_10CAB04: On Error Goto loc_10CADD9
  loc_10CAB0A: Proc_6_58_E06050(arg_10)
  loc_10CAB15: Proc_6_133_E7FB08(var_94)
  loc_10CAB27: var_96 = KeyAscii
  loc_10CAB30: If (var_96 = 0) Then
  loc_10CAB46:   var_A0 = CLng(Me.FGrid.Col)
  loc_10CAB56:   If (var_A0 = CLng(3)) Then
  loc_10CAB5D:     Set var_9C = Me.TopCtrl1
  loc_10CAB63:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A0)
  loc_10CAB6B:     var_A4 = CStr(var_96)
  loc_10CAB77:     Set var_A8 = Me.FGrid
  loc_10CABCA:     If (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_10CABD7:       Set var_9C = Me.TxtGrid
  loc_10CABDD:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, CVar(CLng(var_A8.Row)))
  loc_10CAC0E:       var_A4 = Me.Fields.Item(2).Name
  loc_10CAC47:       Call MemSelGridKeyPress(var_A8, Me.FGrid, global_96, CInt(Me.FGrid.Col), var_A4, "14737632", "16777215")
  loc_10CAC66:       arg_10 = 0
  loc_10CAC6C:     Else
  loc_10CAC70:       Set var_9C = Me.TopCtrl1
  loc_10CAC76:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_10CAC8F:       If (CStr((var_A4 = "Add")) = "Edit") Then
  loc_10CAC92:       End If
  loc_10CAC92:     End If
  loc_10CAC95:   Else
  loc_10CAC9C:     If (var_A0 = CLng(2)) Then
  loc_10CACA3:       Set var_9C = Me.TopCtrl1
  loc_10CACA9:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_10CACB1:       var_A4 = CStr(arg_10)
  loc_10CACBD:       Set var_A8 = Me.FGrid
  loc_10CACCC:       var_C8 = CVar(CLng(var_A8.Row)) 'Long
  loc_10CAD10:       If (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_10CAD1D:         Set var_9C = Me.TxtGrid
  loc_10CAD23:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8)
  loc_10CAD35:         var_C8 = 1
  loc_10CAD8D:         Call MemSelGridKeyPress(var_A8, Me.FGrid, global_96, arg_10, Me.Fields.Item(var_C8).Name, "14737632", "16777215")
  loc_10CADAC:         arg_10 = 0
  loc_10CADB2:       Else
  loc_10CADB6:         Set var_9C = Me.TopCtrl1
  loc_10CADBC:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_10CADC4:         var_A4 = CStr(var_C8)
  loc_10CADD5:         If (var_A4 = "Edit") Then
  loc_10CADD8:         End If
  loc_10CADD8:       End If
  loc_10CADD8:     End If
  loc_10CADD8:   End If
  loc_10CADD8: End If
  loc_10CADD8: Exit Sub
  loc_10CADD9: ' Referenced from: 10CAB04
  loc_10CADD9: Proc_6_60_E63754((var_A4 = "Add"))
  loc_10CADDE: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E30D24
  'Data Table: 4D6590
  Dim var_9C As Long
  loc_E30CFC: On Error Goto loc_E30D1C
  loc_E30D12: var_9C = CLng(Me.FGrid.Col)
  loc_E30D1B: Exit Sub
  loc_E30D1C: ' Referenced from: E30CFC
  loc_E30D1C: Proc_6_60_E63754(var_9C)
  loc_E30D21: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E249E0
  'Data Table: 4D6590
  Dim arg_10 As Integer
  loc_E249C8: If (Cancel = 0) Then
  loc_E249D1:   Call Proc_302_67_119FFB0(Cancel, var_88)
  loc_E249DA:   arg_10 = Not(var_88)
  loc_E249DD: End If
  loc_E249DD: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1BEFC
  'Data Table: 4D6590
  loc_E1BEF1: Me.Global.Unload Me
  loc_E1BEF9: Exit Sub
End Sub

Private Sub CmdAdd_UnknownEvent_9 'DFF984
  'Data Table: 4D6590
  loc_DFF97C: Call TopCtrl1_UnknownEvent_A()
  loc_DFF981: Exit Sub
End Sub

Public Function MasterFormExitGet() '4D755C
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4D756B
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '4D757A
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '4D7589
  SearchCode = Value
End Sub

Public Function global_60Get() '4D7598
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4D75A7
  global_60 = Value
End Sub

Public Function global_64Get() '4D75B6
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '4D75C5
  global_64 = Value
End Sub

Public Sub global_64Set(Value) '4D75D4
  global_64 = Value
End Sub

Public Function global_80Get() '4D75E3
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '4D75F2
  global_80 = Value
End Sub

Public Sub global_80Set(Value) '4D7601
  global_80 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E8D08C
  'Data Table: 4D6590
  Dim Me As Recordset15
  loc_E8D022: On Error Goto loc_E8D086
  loc_E8D02B: Me.MoveFirst
  loc_E8D055: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E8D07D: Proc_5_0_1107AD0(&HFF, Me, global_100)
  loc_E8D085: Exit Sub
  loc_E8D086: ' Referenced from: E8D022
  loc_E8D086: Proc_6_60_E63754(0)
  loc_E8D08B: Exit Sub
End Sub

Public Sub MemSelGridKeyPress(Txt, FGrid, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '1151D68
  'Data Table: 4D6590
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim KeyAscii As Integer
  loc_11519D0: On Error Goto loc_1151D5F
  loc_11519E6: If (Me.rows < 1) Then
  loc_11519E9:   Exit Sub
  loc_11519EA: End If
  loc_11519FE: If (Me.RecordCount <= 0) Then
  loc_1151A0A:   Me.TEXT = vbNullString
  loc_1151A0E:   Exit Sub
  loc_1151A0F: End If
  loc_1151A2B: If (((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Or (KeyAscii = 0)) Then
  loc_1151A38:   Me.CellBackColor = CVar(CellBackColLeave)
  loc_1151A3C:   Exit Sub
  loc_1151A3D: End If
  loc_1151A47: If (CLng(KeyAscii) = 8) Then
  loc_1151A61:   If (Len(Me.SelText) > 1) Then
  loc_1151A75:     var_E0 = (Len(Me.SelText) - 1)
  loc_1151A7D:     Me.SelLength = var_E0
  loc_1151A8D:     var_8C = CStr(Me.SelText)
  loc_1151A96:   Else
  loc_1151A9F:     Me.TEXT = vbNullString
  loc_1151AA6:     Call Me.SetFocus
  loc_1151AB4:     Me.Visible = False
  loc_1151AB8:     Exit Sub
  loc_1151AB9:   End If
  loc_1151ABC: Else
  loc_1151AD3:   var_E0 = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_1151AD8:   var_8C = CStr(var_E0)
  loc_1151AE4: End If
  loc_1151B01: var_8C = Replace(var_8C, "'", "''", 1, -1, 0)
  loc_1151B07: Me.Recordset15.MoveFirst
  loc_1151B44: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_1151B87:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_8C)) & vbNullString, 0, 1
  loc_1151B9C: Else
  loc_1151BCC:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_8C & "*'", 0, 1
  loc_1151BDC: End If
  loc_1151BDE: KeyAscii = 0
  loc_1151C0A: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_1151C17:   Me.CellBackColor = CVar(CellBackColLeave)
  loc_1151C31:   Me.Row = CVar(Me.Recordset15.AbsolutePosition)
  loc_1151C3F:   Me.CellBackColor = CVar(CellBackColEnter)
  loc_1151C72:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_1151C8C:   Me.SelLength = CVar(Len(var_8C))
  loc_1151CA0:   var_E0 = (Me.CellLeft + Me.left)
  loc_1151CA8:   Me.left = var_E0
  loc_1151CC5:   var_E0 = (Me.CellTop + Me.top)
  loc_1151CCD:   Me.top = var_E0
  loc_1151CEC:   If (Me.Visible = False) Then
  loc_1151CF6:     Me.Visible = True
  loc_1151CFA:     var_9C = 0
  loc_1151D03:     Call Me.ZOrder
  loc_1151D0C:     Call Me.SetFocus
  loc_1151D1E:     Me.BackColor = Me.CellBackColor
  loc_1151D31:     Me.ForeColor = Me.CellForeColor
  loc_1151D44:     Me.width = Me.CellWidth
  loc_1151D57:     Me.height = Me.CellHeight
  loc_1151D5E:   End If
  loc_1151D5E: End If
  loc_1151D5E: Exit Sub
  loc_1151D5F: ' Referenced from: 11519D0
  loc_1151D5F: Proc_6_60_E63754(var_9C, KeyAscii, var_9C)
  loc_1151D64: Exit Sub
End Sub

Public Sub Proc_302_61_DFF9F0
  'Data Table: 4D6590
  loc_DFF9EC: Exit Sub
End Sub

Public Sub Proc_302_62_11A2324
  'Data Table: 4D6590
  Dim var_8C As String
  Dim unk_4D6594 As Connection15
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim Me As Recordset15
  Dim var_86 As Integer
  Dim var_B0 As Variant
  Dim var_110 As Variant
  loc_11A1F1C: var_8C = "Select Code,Name,MobileNo,Add1,BirthDate,Anniversary,CityName From GuestProf Where POS=1 And (LOGSITE_CODE='" & MemVar_1F95078
  loc_11A1F2C: unk_4D6594.Execute var_8C & "' or LOGSITE_CODE='HO') Order By Name", var_B0, -1
  loc_11A1F3D: Set global_96 = var_B4
  loc_11A1F65: Me.FGrid.Rows = 1
  loc_11A1F84: If (Me.RecordCount = 0) Then
  loc_11A1F9A:   Me.FGrid.Rows = 2
  loc_11A1FB5:   Me.FGrid.FixedRows = 1
  loc_11A1FBD:   Exit Sub
  loc_11A1FBE: End If
  loc_11A1FD5: If (Me.RecordCount > 0) Then
  loc_11A1FDA:   var_86 = 1
  loc_11A1FDD:   ' Referenced from: 11A22C8
  loc_11A1FEF:   If Not(Me.EOF) Then
  loc_11A1FF7:     var_B0 = CVar(CStr(var_86)) 'String
  loc_11A1FFF:     Set var_B4 = Me.FGrid
  loc_11A204F:     var_110 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Code")), CVar(CLng(1)), CVar(CLng(var_86)), FGrid.DispID_10000)) 'String
  loc_11A205D:     LateIdCallSt
  loc_11A20AF:     var_110 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Name")), CVar(CLng(2)), CVar(CLng(var_86)), Me.FGrid)) 'String
  loc_11A20BD:     LateIdCallSt
  loc_11A210F:     var_110 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("MobileNo")), CVar(CLng(3)), CVar(CLng(var_86)), Me.FGrid, var_110)) 'String
  loc_11A211D:     LateIdCallSt
  loc_11A216F:     var_110 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Add1")), CVar(CLng(4)), CVar(CLng(var_86)), Me.FGrid, var_110)) 'String
  loc_11A217D:     LateIdCallSt
  loc_11A21D0:     var_110 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("CityName")), CVar(CLng("5")), CVar(CLng(var_86)), Me.FGrid, var_110)) 'String
  loc_11A21DE:     LateIdCallSt
  loc_11A2230:     var_110 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("BirthDate")), CVar(CLng(6)), CVar(CLng(var_86)), Me.FGrid, var_110)) 'String
  loc_11A223E:     LateIdCallSt
  loc_11A2290:     var_110 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Anniversary")), CVar(CLng(7)), CVar(CLng(var_86)), Me.FGrid, var_110)) 'String
  loc_11A2298:     Set var_124 = Me.FGrid
  loc_11A229E:     LateIdCallSt
  loc_11A22BA:     var_86 = (var_86 + 1)
  loc_11A22C3:     Me.MoveNext
  loc_11A22C8:     GoTo loc_11A1FDD
  loc_11A22CB:   End If
  loc_11A22CB: End If
  loc_11A22EA: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_11A22ED:   var_A0 = "1"
  loc_11A22F7:   Set var_B4 = Me.FGrid
  loc_11A2308: End If
  loc_11A231B: Me.FGrid.FixedRows = 1
  loc_11A2323: Exit Sub
End Sub

Public Sub Proc_302_63_F9CDA0
  'Data Table: 4D6590
  Dim var_8C As Variant
  Dim Me As Recordset15
  Dim var_168 As String
  loc_F9CC67: Me.FacilityListView.ListItems.Clear
  loc_F9CC8D: If (Me.RecordCount > 0) Then
  loc_F9CC96:   Me.MoveFirst
  loc_F9CC9B:   ' Referenced from: F9CD87
  loc_F9CCAD:   If Not(Me.EOF) Then
  loc_F9CD0E:     Me.FacilityListView.ListItems.Add var_EC, var_10C, CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))), var_13C, var_15C
  loc_F9CD66:     var_168 = Proc_6_38_E69628(CVar(Me.Fields.Item("Code")))
  loc_F9CD6E:     var_164.SubItems = 1
  loc_F9CD82:     Me.MoveNext
  loc_F9CD87:     GoTo loc_F9CC9B
  loc_F9CD8A:   End If
  loc_F9CD8A: End If
  loc_F9CD8E: Set var_8C = Me.FacilityListView
  loc_F9CD9F: Exit Sub
End Sub

Public Sub Proc_302_64_115F4A4
  'Data Table: 4D6590
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_115F0DC: On Error Goto loc_115F49D
  loc_115F0E3: Set var_88 = Me.FGrid
  loc_115F0F1: var_88.Top = CVar(CDbl(&H19))
  loc_115F101: var_88.Left = CVar(CDbl(&H19))
  loc_115F112: var_88.Height = CVar(CDbl(8700))
  loc_115F123: var_88.Width = CVar(CDbl(13700))
  loc_115F134: var_88.Cols = 9
  loc_115F145: var_88.Rows = 2
  loc_115F15E: global_84 = CStr(CLng(var_88.BackColor))
  loc_115F168: var_98 = 0
  loc_115F171: var_CC = &H64
  loc_115F17D: LateIdCallSt
  loc_115F188: var_98 = CVar(CLng(1)) 'Long
  loc_115F18D: var_CC = 0
  loc_115F199: LateIdCallSt
  loc_115F1A1: var_98 = 0
  loc_115F1AD: var_CC = CVar(CLng(1)) 'Long
  loc_115F1B2: var_EC = "Code"
  loc_115F1BB: LateIdCallSt
  loc_115F1C6: var_98 = CVar(CLng(1)) 'Long
  loc_115F1D1: var_CC = CVar(CInt(1)) 'Integer
  loc_115F1D8: LateIdCallSt
  loc_115F1E3: var_98 = CVar(CLng(2)) 'Long
  loc_115F1E8: var_CC = &HDAC
  loc_115F1F4: LateIdCallSt
  loc_115F1FC: var_98 = 0
  loc_115F208: var_CC = CVar(CLng(2)) 'Long
  loc_115F20D: var_EC = "Name"
  loc_115F216: LateIdCallSt
  loc_115F221: var_98 = CVar(CLng(2)) 'Long
  loc_115F22C: var_CC = CVar(CInt(1)) 'Integer
  loc_115F233: LateIdCallSt
  loc_115F23E: var_98 = CVar(CLng(3)) 'Long
  loc_115F243: var_CC = &H578
  loc_115F24F: LateIdCallSt
  loc_115F257: var_98 = 0
  loc_115F263: var_CC = CVar(CLng(3)) 'Long
  loc_115F268: var_EC = "Mobile No."
  loc_115F271: LateIdCallSt
  loc_115F27C: var_98 = CVar(CLng(3)) 'Long
  loc_115F287: var_CC = CVar(CInt(1)) 'Integer
  loc_115F28E: LateIdCallSt
  loc_115F299: var_98 = CVar(CLng(4)) 'Long
  loc_115F29E: var_CC = &HFA0
  loc_115F2AA: LateIdCallSt
  loc_115F2B2: var_98 = 0
  loc_115F2BE: var_CC = CVar(CLng(4)) 'Long
  loc_115F2C3: var_EC = "Address"
  loc_115F2CC: LateIdCallSt
  loc_115F2D7: var_98 = CVar(CLng(4)) 'Long
  loc_115F2E2: var_CC = CVar(CInt(1)) 'Integer
  loc_115F2E9: LateIdCallSt
  loc_115F2F4: var_98 = CVar(CLng(4)) 'Long
  loc_115F2FF: var_CC = CVar(CInt(1)) 'Integer
  loc_115F306: LateIdCallSt
  loc_115F312: var_98 = CVar(CLng("5")) 'Long
  loc_115F317: var_CC = &H708
  loc_115F323: LateIdCallSt
  loc_115F32B: var_98 = 0
  loc_115F338: var_CC = CVar(CLng("5")) 'Long
  loc_115F33D: var_EC = "City"
  loc_115F346: LateIdCallSt
  loc_115F352: var_98 = CVar(CLng("5")) 'Long
  loc_115F35D: var_CC = CVar(CInt(1)) 'Integer
  loc_115F364: LateIdCallSt
  loc_115F370: var_98 = CVar(CLng("5")) 'Long
  loc_115F37B: var_CC = CVar(CInt(1)) 'Integer
  loc_115F382: LateIdCallSt
  loc_115F38D: var_98 = CVar(CLng(6)) 'Long
  loc_115F392: var_CC = &H514
  loc_115F39E: LateIdCallSt
  loc_115F3A6: var_98 = 0
  loc_115F3B2: var_CC = CVar(CLng(6)) 'Long
  loc_115F3B7: var_EC = "Date of Birth"
  loc_115F3C0: LateIdCallSt
  loc_115F3CB: var_98 = CVar(CLng(6)) 'Long
  loc_115F3D6: var_CC = CVar(CInt(7)) 'Integer
  loc_115F3DD: LateIdCallSt
  loc_115F3E8: var_98 = CVar(CLng(6)) 'Long
  loc_115F3F3: var_CC = CVar(CInt(7)) 'Integer
  loc_115F3FA: LateIdCallSt
  loc_115F405: var_98 = CVar(CLng(7)) 'Long
  loc_115F40A: var_CC = &H514
  loc_115F416: LateIdCallSt
  loc_115F41E: var_98 = 0
  loc_115F42A: var_CC = CVar(CLng(7)) 'Long
  loc_115F42F: var_EC = "Anniversary"
  loc_115F438: LateIdCallSt
  loc_115F443: var_98 = CVar(CLng(7)) 'Long
  loc_115F44E: var_CC = CVar(CInt(7)) 'Integer
  loc_115F455: LateIdCallSt
  loc_115F460: var_98 = CVar(CLng(7)) 'Long
  loc_115F46B: var_CC = CVar(CInt(7)) 'Integer
  loc_115F472: LateIdCallSt
  loc_115F47D: var_98 = CVar(CLng(8)) 'Long
  loc_115F482: var_CC = 0
  loc_115F48E: LateIdCallSt
  loc_115F498: Set var_88 = Nothing 
  loc_115F49C: Exit Sub
  loc_115F49D: ' Referenced from: 115F0DC
  loc_115F49D: Proc_6_60_E63754(var_88, var_CC, var_98, var_88, var_CC, var_98, var_88, var_CC)
  loc_115F4A2: Exit Sub
End Sub

Public Sub Proc_302_65_E001D4
  'Data Table: 4D6590
  loc_E001CC: Proc_302_65_E001D4 = 
  loc_E001D2: Exit Sub
End Sub

Public Sub Proc_302_66_E45A54
  'Data Table: 4D6590
  loc_E45A30: Set var_88 = Me.TopCtrl1
  loc_E45A36: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E45A4F: If (CStr() = "Browse") Then
  loc_E45A52:   Exit Sub
  loc_E45A53: End If
  loc_E45A53: Exit Sub
End Sub

Public Sub Proc_302_67_119FFB0
  'Data Table: 4D6590
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As String
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As MSHFlexGrid
  Dim var_110 As String
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_148 As MSHFlexGrid
  Dim var_1D0 As Variant
  loc_119FBEB: var_A0 = CLng(Me.FGrid.Col)
  loc_119FBFB: If Not (var_A0 = CLng(2)) Then
  loc_119FC05:   If (var_A0 = CLng(3)) Then
  loc_119FC08:   End If
  loc_119FC0C:   Set var_8C = Me.TopCtrl1
  loc_119FC12:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_A0)
  loc_119FC1A:   var_A4 = CStr()
  loc_119FC26:   Set var_A8 = Me.FGrid
  loc_119FC35:   var_C8 = CVar(CLng(var_A8.Row)) 'Long
  loc_119FC57:   var_110 = CStr(Me.FGrid.TextMatrix))
  loc_119FC79:   If (CVar(CLng(1)) Or (var_110 = vbNullString)) Then
  loc_119FC8F:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_119FCB8:     Set var_8C = Me.TxtGrid
  loc_119FCBE:     Call 0.Method_Proc_302_67_119FFB00 (0, var_A8, var_A4, CVar(CLng(Me.FGrid.Col)))
  loc_119FCC6:     var_C8 = var_A8.Text
  loc_119FCDD:     var_134 = CVar(CStr(Trim(CVar(var_A4)))) 'String
  loc_119FCE5:     Set var_148 = Me.FGrid
  loc_119FCEB:     LateIdCallSt
  loc_119FD20:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_119FD28:     var_E8 = CVar(CLng(8)) 'Long
  loc_119FD2D:     var_144 = "T"
  loc_119FD37:     Set var_A8 = Me.FGrid
  loc_119FD3D:     LateIdCallSt
  loc_119FD4F:   End If
  loc_119FD52: Else
  loc_119FD59:   If Not (var_A0 = CLng(4)) Then
  loc_119FD64:     If (var_A0 = CLng("5")) Then
  loc_119FD67:     End If
  loc_119FD83:     Set var_114 = Me.FGrid
  loc_119FDA3:     Set var_8C = Me.TxtGrid
  loc_119FDA9:     Call 0.Method_Proc_302_67_119FFB00 (0, var_A8, var_A4, CVar(CLng(var_114.Col)), CVar(CLng(Me.FGrid.Row)), var_A8, var_144)
  loc_119FDB1:     var_E8 = var_A8.Text
  loc_119FDC8:     var_134 = CVar(CStr(Trim(CVar(var_A4)))) 'String
  loc_119FDD0:     Set var_148 = Me.FGrid
  loc_119FDD6:     LateIdCallSt
  loc_119FE0B:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_119FE13:     var_E8 = CVar(CLng(8)) 'Long
  loc_119FE18:     var_144 = "T"
  loc_119FE22:     Set var_A8 = Me.FGrid
  loc_119FE28:     LateIdCallSt
  loc_119FE3D:   Else
  loc_119FE44:     If Not (var_A0 = CLng(6)) Then
  loc_119FE4E:       If (var_A0 = CLng(7)) Then
  loc_119FE51:       End If
  loc_119FE5D:       Set var_8C = Me.TxtGrid
  loc_119FE63:       Call 0.Method_Proc_302_67_119FFB00 (0, var_A8, var_A4, var_A8, var_144, var_E8, var_C8)
  loc_119FE6B:       var_148 = var_A8.Text
  loc_119FE8A:       Set var_FC = Me.TxtGrid
  loc_119FE90:       Call 0.Method_Proc_302_67_119FFB00 (0, var_114, var_110, var_134, var_C8)
  loc_119FE98:       var_148 = var_114.Text
  loc_119FECE:       var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_119FEE6:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_119FF13:       var_19C = IIf((Trim(CVar(var_A4)) <> vbNullString), CVar(Proc_6_34_14EEAAC(CStr(Trim(CVar(var_110))), Trim(CVar(var_110)))), vbNullString)
  loc_119FF1C:       var_1D0 = CVar(CStr(var_19C)) 'String
  loc_119FF24:       Set var_1E4 = Me.FGrid
  loc_119FF2A:       LateIdCallSt
  loc_119FF76:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_119FF7E:       var_E8 = CVar(CLng(8)) 'Long
  loc_119FF83:       var_144 = "T"
  loc_119FF8D:       Set var_A8 = Me.FGrid
  loc_119FF93:       LateIdCallSt
  loc_119FFA5:     End If
  loc_119FFA5:   End If
  loc_119FFA5: End If
  loc_119FFAA: Proc_302_67_119FFB0 = &HFF
End Sub

Public Sub Proc_302_68_F17030
  'Data Table: 4D6590
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F16F46: Set var_8C = Me.Txt
  loc_F16F4C: Call 0.Method_Proc_302_68_F17030C (var_8E, var_86)
  loc_F16F5C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F16F72:   Set var_8C = Me.Txt
  loc_F16F78:   Call 0.Method_Proc_302_68_F170300 (CInt(var_86), var_98)
  loc_F16F80:   var_98.Text = vbNullString
  loc_F16F9C:   Set var_8C = Me.Txt
  loc_F16FA2:   Call 0.Method_Proc_302_68_F170300 (CInt(var_86), var_98)
  loc_F16FAA:   var_98.Tag = vbNullString
  loc_F16FB9: Next var_92 'Byte
  loc_F16FD2: Me.FGrid.Rows = 1
  loc_F16FEF: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F16FF7: Set var_98 = Me.FGrid
  loc_F17026: Me.FGrid.FixedRows = 1
  loc_F1702E: Exit Sub
  loc_F1702F: Result FGrid.DispID_10000 End Sub 'Double
End Sub

Public Sub Proc_302_69_E795E4(arg_C) 'E795E4
  'Data Table: 4D6590
  Dim var_98 As TextBox
  loc_E79592: Set var_8C = Me.Txt
  loc_E79598: Call 0.Method_Proc_302_69_E795E4C (var_8E, var_86)
  loc_E795A8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E795BE:   Set var_8C = Me.Txt
  loc_E795C4:   Call 0.Method_Proc_302_69_E795E40 (CInt(var_86), var_98)
  loc_E795CC:   var_98.Enabled = arg_C
  loc_E795DB: Next var_92 'Byte
  loc_E795E1: Exit Sub
End Sub

Public Sub Proc_302_70_DFC418
  'Data Table: 4D6590
  Dim Proc_302_70_DFC418FF As String
  loc_DFC414: Exit Sub
  loc_DFC415: Proc_302_70_DFC418FF = 
End Sub
