VERSION 5.00
Begin VB.Form RsAssignDelivery
  Caption = "Member Category Wise Revenue"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11130
  ClientHeight = 5145
  Begin TextBox Txt
    Index = 0
    ForeColor = &HFF0000&
    Left = 2490
    Top = 600
    Width = 3930
    Height = 285
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11130
    Height = 450
    TabIndex = 6
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1515
    Top = 2580
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 975
    Top = 4035
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 3
    End
  End
  Begin MSFlexGrid FGPoint
    Left = 12225
    Top = 4935
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 0
  End
  Begin DataGrid DGBill
    Left = 9555
    Top = 1680
    Width = 2190
    Height = 3885
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 1
  End
  Begin MSHFlexGrid FGrid
    Left = 30
    Top = 480
    Width = 8535
    Height = 4275
    TabIndex = 5
  End
  Begin DataGrid DGDeliBoy
    Left = 7515
    Top = 6225
    Width = 4230
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin Label Label1
    Caption = "Member Category :"
    ForeColor = &HFF0000&
    Left = 1275
    Top = 600
    Width = 1185
    Height = 270
    Visible = 0   'False
    TabIndex = 11
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3885
    Top = 6600
    Width = 2790
    Height = 285
    TabIndex = 8
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
    Left = 510
    Top = 6600
    Width = 2880
    Height = 255
    TabIndex = 7
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
End

Attribute VB_Name = "RsAssignDelivery"

Private global_100 As Integer
Private global_56 As Integer
Private global_64 As Recordset15

Private Sub TxtGrid_GotFocus(Index As Integer) '12022F0
  'Data Table: 4A1E5C
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_1201E52: Set var_88 = Me.TxtGrid
  loc_1201E58: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_1201E66: Proc_6_74_E23240(var_8C)
  loc_1201E72: Call Proc_305_47_EBAD60(var_8C)
  loc_1201E85: Set var_88 = Me.TxtGrid
  loc_1201E8B: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_1201E93: var_8C.MaxLength = 0
  loc_1201EAB: If (Index = 0) Then
  loc_1201EC4:   Me.FGrid.CellBackColor = CVar(CLng(global_124))
  loc_1201EDF:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1201F1E:   Set var_108 = Me.TxtGrid
  loc_1201F24:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1201F2C:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1201F5D:   var_114 = CLng(Me.FGrid.Col)
  loc_1201F6D:   If (var_114 = CLng(3)) Then
  loc_1201FB1:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1201FB4:       Exit Sub
  loc_1201FB5:     End If
  loc_1201FC0:     Set var_8C = Me.FGPoint
  loc_1201FD8:     Proc_6_137_1192FDC(Me.DGBill, global_68, Index, var_8C)
  loc_1201FF5:     Set var_88 = Me.TxtGrid
  loc_1201FFB:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 8)
  loc_1202003:     var_8C.MaxLength = var_114
  loc_1202022:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_120202A:     var_E4 = CVar(CLng(3)) 'Long
  loc_120205D:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1202066:       Me.MoveFirst
  loc_120207E:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1202086:       var_E4 = CVar(CLng(1)) 'Long
  loc_12020A6:       Proc_6_17_EAAE40(var_12C, CVar(CStr(Me.FGrid.TextMatrix))), var_E4, var_A4)
  loc_12020CF:       Me.Find CStr("DocId=" & var_12C), 0, 1
  loc_12020FF:       If (Me.EOF = &HFF) Then
  loc_1202108:         Me.MoveFirst
  loc_120210D:       End If
  loc_120210D:     End If
  loc_1202110:   Else
  loc_1202117:     If (var_114 = CLng(8)) Then
  loc_120215B:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_120215E:         Exit Sub
  loc_120215F:       End If
  loc_120216A:       Set var_8C = Me.FGPoint
  loc_1202182:       Proc_6_137_1192FDC(Me.DGDeliBoy, global_72, Index, var_8C, var_15C)
  loc_120219F:       Set var_88 = Me.TxtGrid
  loc_12021A5:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H14, var_E4)
  loc_12021AD:       var_8C.MaxLength = var_A4
  loc_12021CC:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12021D4:       var_E4 = CVar(CLng(9)) 'Long
  loc_1202207:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1202210:         Me.MoveFirst
  loc_1202230:         var_E4 = CVar(CLng(9)) 'Long
  loc_1202239:         Set var_8C = Me.FGrid
  loc_1202250:         Proc_6_17_EAAE40(var_12C, CVar(CStr(var_8C.TextMatrix))), var_E4, CVar(CLng(Me.FGrid.Row)))
  loc_1202279:         Me.Find CStr("Code=" & var_12C), 0, 1
  loc_12022A9:         If (Me.EOF = &HFF) Then
  loc_12022B2:           Me.MoveFirst
  loc_12022B7:         End If
  loc_12022B7:       End If
  loc_12022BA:     Else
  loc_12022C1:       If (var_114 = CLng(&HB)) Then
  loc_12022D3:         Set var_88 = Me.TxtGrid
  loc_12022D9:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H32, var_15C)
  loc_12022E1:         var_8C.MaxLength = var_E4
  loc_12022ED:       End If
  loc_12022ED:     End If
  loc_12022ED:   End If
  loc_12022ED: End If
  loc_12022ED: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12394DC
  'Data Table: 4A1E5C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C4 As Variant
  Dim var_98 As DataGrid
  Dim Me As Recordset15
  loc_1238FBC: If (KeyCode = 0) Then
  loc_1238FC9:   If (CLng(Shift) = &H1B) Then
  loc_1238FD9:     Set var_8C = Me.TxtGrid
  loc_1238FDF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1238FF9:     Set var_98 = Me.TxtGrid
  loc_1238FFF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1239007:     var_9C.Text = var_90.Tag
  loc_123901E:     Set var_8C = Me.FGrid
  loc_123903B:     Set var_8C = Me.TxtGrid
  loc_1239041:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1239049:     var_90.Visible = FGrid.DispID_8001
  loc_1239063:     Set var_8C = Me.TxtGrid
  loc_1239069:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1239071:     var_90.MaxLength = 0
  loc_123907D:     Exit Sub
  loc_123907E:   End If
  loc_12390A1:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_12390B0:     Set var_8C = Me.TxtGrid
  loc_12390B6:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B4)
  loc_12390BE:     var_B0 = var_90.Left
  loc_12390D5:     Me.DGBill.Left = CVar(var_B4)
  loc_12390EF:     Set var_98 = Me.TxtGrid
  loc_12390F5:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12390FD:     var_D8 = var_9C.Height
  loc_123910E:     Set var_8C = Me.TxtGrid
  loc_1239114:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1239128:     var_C4 = CVar((var_90.Top + var_D8)) 'Single
  loc_1239137:     Me.DGBill.Top = CVar(var_90.Top)
  loc_1239166:     Set var_9C = Me.FGPoint
  loc_1239171:     Set var_98 = Nothing
  loc_123919F:     Proc_6_69_134A630(Me.DGBill, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_12391BE:     var_B4 = Me.RecordCount
  loc_12391CC:     If (var_B4 > 0) Then
  loc_12391D3:       Set var_98 = Me.DGBill
  loc_12391F2:       Proc_6_138_106E830(var_98, global_68, KeyCode, Me.FGPoint, 1)
  loc_1239200:     End If
  loc_123920A:     If (CLng(Shift) = &HD) Then
  loc_1239213:       Call Proc_305_49_13E457C(KeyCode, var_DE, var_98)
  loc_123921E:       If (var_DE = &HFF) Then
  loc_123922C:         Set var_9C = Me.TxtGrid
  loc_1239255:         Set var_90 = var_9C
  loc_1239264:         Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_100, &HB)
  loc_1239274:       End If
  loc_1239274:     End If
  loc_1239277:   Else
  loc_123927E:     If (var_B0 = CLng(8)) Then
  loc_123928D:       Set var_8C = Me.TxtGrid
  loc_1239293:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B4, 0, 8)
  loc_123929B:       0 = var_90.Left
  loc_12392B2:       Me.DGDeliBoy.Left = CVar(var_B4)
  loc_12392CC:       Set var_98 = Me.TxtGrid
  loc_12392D2:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_D8)
  loc_12392DA:       var_9C = var_9C.Height
  loc_12392EB:       Set var_8C = Me.TxtGrid
  loc_12392F1:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B4)
  loc_12392F9:       0 = var_90.Top
  loc_1239305:       var_C4 = CVar((var_B4 + var_D8)) 'Single
  loc_1239314:       Me.DGDeliBoy.Top = CVar(var_B4)
  loc_1239343:       Set var_9C = Me.FGPoint
  loc_123934E:       Set var_98 = Nothing
  loc_123937C:       Proc_6_69_134A630(Me.DGDeliBoy, Me.TxtGrid, KeyCode, global_72, Shift, &HFF)
  loc_12393A9:       If (Me.RecordCount > 0) Then
  loc_12393B0:         Set var_98 = Me.DGDeliBoy
  loc_12393CF:         Proc_6_138_106E830(var_98, global_72, KeyCode, Me.FGPoint, 1)
  loc_12393DD:       End If
  loc_12393E7:       If (CLng(Shift) = &HD) Then
  loc_12393F0:         Call Proc_305_49_13E457C(KeyCode, var_DE, var_98)
  loc_12393FB:         If (var_DE = &HFF) Then
  loc_1239441:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_100, &HB)
  loc_1239451:         End If
  loc_1239451:       End If
  loc_1239454:     Else
  loc_123945B:       If (var_B0 = CLng(&HB)) Then
  loc_1239468:         If (CLng(Shift) = &HD) Then
  loc_1239471:           Call Proc_305_49_13E457C(KeyCode, var_DE, 0, &HB)
  loc_123947C:           If (var_DE = &HFF) Then
  loc_12394C9:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_100, &HB, CByte((CInt(&HB) + 1)))
  loc_12394D9:           End If
  loc_12394D9:         End If
  loc_12394D9:       End If
  loc_12394D9:     End If
  loc_12394D9:   End If
  loc_12394D9: End If
  loc_12394D9: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F8B4EC
  'Data Table: 4A1E5C
  Dim var_A0 As Long
  loc_F8B38F: Proc_6_58_E06050(arg_10)
  loc_F8B3A0: If (KeyAscii = 0) Then
  loc_F8B3B6:   var_A0 = CLng(Me.FGrid.Col)
  loc_F8B3C6:   If (var_A0 = CLng(3)) Then
  loc_F8B3E5:     If (CBool(Me.DGBill.Visible) = &HFF) Then
  loc_F8B3F7:       var_A4 = "Name"
  loc_F8B412:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_68, arg_10)
  loc_F8B444:       Proc_6_138_106E830(Me.DGBill, global_68, KeyAscii, Me.FGPoint)
  loc_F8B452:     End If
  loc_F8B455:   Else
  loc_F8B45C:     If (var_A0 = CLng(8)) Then
  loc_F8B47B:       If (CBool(Me.DGDeliBoy.Visible) = &HFF) Then
  loc_F8B4A8:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_72, arg_10, "Name")
  loc_F8B4DA:         Proc_6_138_106E830(Me.DGDeliBoy, global_72, KeyAscii, Me.FGPoint, 0)
  loc_F8B4E8:       End If
  loc_F8B4E8:     End If
  loc_F8B4E8:   End If
  loc_F8B4E8: End If
  loc_F8B4E8: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F64748
  'Data Table: 4A1E5C
  Dim var_A0 As Long
  loc_F64618: On Error Goto loc_F64742
  loc_F64627: If (KeyCode = 0) Then
  loc_F6463D:   var_A0 = CLng(Me.FGrid.Col)
  loc_F6464D:   If (var_A0 = CLng(3)) Then
  loc_F64673:     If ((Shift <> &HD) And (CBool(Me.DGBill.Visible) = 0)) Then
  loc_F64684:       Call TxtGrid_KeyDown(KeyCode, global_102)
  loc_F646B3:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_68, Shift, "Name")
  loc_F646C2:     End If
  loc_F646C5:   Else
  loc_F646CC:     If (var_A0 = CLng(8)) Then
  loc_F646F2:       If ((Shift <> &HD) And (CBool(Me.DGDeliBoy.Visible) = 0)) Then
  loc_F64703:         Call TxtGrid_KeyDown(KeyCode, global_102)
  loc_F64732:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_72, Shift, "Name", &HFF)
  loc_F64741:       End If
  loc_F64741:     End If
  loc_F64741:   End If
  loc_F64741: End If
  loc_F64741: Exit Sub
  loc_F64742: ' Referenced from: F64618
  loc_F64742: Proc_6_60_E63754(0, &HFF, 0)
  loc_F64747: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E24890
  'Data Table: 4A1E5C
  Dim arg_10 As Integer
  loc_E24878: If (Cancel = 0) Then
  loc_E24881:   Call Proc_305_49_13E457C(Cancel, var_88)
  loc_E2488A:   arg_10 = Not(var_88)
  loc_E2488D: End If
  loc_E2488D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E58528
  'Data Table: 4A1E5C
  Dim var_92 As Integer
  loc_E584FA: Set var_88 = Me.Txt
  loc_E58500: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E5850E: Proc_6_74_E23240(var_8C)
  loc_E5851A: Call Proc_305_47_EBAD60(var_8C)
  loc_E58522: var_92 = Index
  loc_E58525: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EC3824
  'Data Table: 4A1E5C
  Dim var_86 As Integer
  loc_EC378E: If (CLng(Shift) = &H1B) Then
  loc_EC3791:   Call Proc_305_47_EBAD60()
  loc_EC3796:   Exit Sub
  loc_EC3797: End If
  loc_EC379A: var_86 = KeyCode
  loc_EC37D8: If ((CBool(Me.DGBill.Visible) = 0) And (CBool(Me.DGDeliBoy.Visible) = 0)) Then
  loc_EC37F0:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EC37F9:     Proc_6_75_E5335C(Shift, arg_14)
  loc_EC37FE:   End If
  loc_EC3813:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EC381C:     Proc_6_76_E533C8(Shift, arg_14)
  loc_EC3821:   End If
  loc_EC3821: End If
  loc_EC3821: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E09C10
  'Data Table: 4A1E5C
  Dim var_86 As Integer
  loc_E09C03: Proc_6_58_E06050(arg_10)
  loc_E09C0B: var_86 = KeyAscii
  loc_E09C0E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E00CC4
  'Data Table: 4A1E5C
  Dim var_86 As Integer
  loc_E00CBF: var_86 = KeyCode
  loc_E00CC2: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B994
  'Data Table: 4A1E5C
  loc_E4B972: Set var_88 = Me.Txt
  loc_E4B978: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B986: Proc_6_73_E23294(var_8C)
  loc_E4B992: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E0097C
  'Data Table: 4A1E5C
  Dim var_86 As Integer
  loc_E00977: var_86 = Cancel
  loc_E0097A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E603C4
  'Data Table: 4A1E5C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6038F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E603A2: Set var_A8 = Me.TxtGrid
  loc_E603A8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E603B0: var_AC.Visible = False
  loc_E603BC: Call Proc_305_47_EBAD60()
  loc_E603C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67C28
  'Data Table: 4A1E5C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67BE4: Set var_88 = Me.TxtGrid
  loc_E67BEA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E67C04: If (var_8C.Visible = 0) Then
  loc_E67C1D:   Me.FGrid.BackColorSel = CVar(CLng(global_124))
  loc_E67C25: End If
  loc_E67C25: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E4BA64
  'Data Table: 4A1E5C
  loc_E4BA3C: Set var_88 = Me.TopCtrl1
  loc_E4BA42: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_E4BA5B: If (CStr() <> "Browse") Then
  loc_E4BA5E:   Call Proc_305_48_E4408C()
  loc_E4BA63: End If
  loc_E4BA63: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '121E624
  'Data Table: 4A1E5C
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_121E134: Set var_88 = Me.TopCtrl1
  loc_121E13A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_121E17F: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_121E188:   Call Form_KeyDown(Cancel, arg_10)
  loc_121E18D: End If
  loc_121E191: Set var_88 = Me.TopCtrl1
  loc_121E197: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_121E1B0: If (CStr() = "Browse") Then
  loc_121E1B3:   Exit Sub
  loc_121E1B4: End If
  loc_121E228: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_121E233:   var_9C = "+{Tab}"
  loc_121E239:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_121E243:   Cancel = 0
  loc_121E249: Else
  loc_121E2A0:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_121E2A5:     Cancel = 0
  loc_121E2A8:   End If
  loc_121E2A8: End If
  loc_121E2D4: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_121E2EB: Set var_88 = Me.TopCtrl1
  loc_121E2F1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(Cancel)
  loc_121E30A: If (CStr(Cancel) = "Edit") Then
  loc_121E30D:   Exit Sub
  loc_121E30E: End If
  loc_121E31F: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_121E335:   var_DC = CLng(Me.FGrid.Col)
  loc_121E345:   If (var_DC = CLng(3)) Then
  loc_121E35B:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E363:     var_FC = CVar(CLng(1)) 'Long
  loc_121E368:     var_11C = vbNullString
  loc_121E372:     Set var_A0 = Me.FGrid
  loc_121E378:     LateIdCallSt
  loc_121E39D:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E3A5:     var_FC = CVar(CLng(2)) 'Long
  loc_121E3AA:     var_11C = vbNullString
  loc_121E3B4:     Set var_A0 = Me.FGrid
  loc_121E3BA:     LateIdCallSt
  loc_121E3DF:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E3E7:     var_FC = CVar(CLng(3)) 'Long
  loc_121E3EC:     var_11C = vbNullString
  loc_121E3F6:     Set var_A0 = Me.FGrid
  loc_121E3FC:     LateIdCallSt
  loc_121E421:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E429:     var_FC = CVar(CLng(4)) 'Long
  loc_121E42E:     var_11C = vbNullString
  loc_121E438:     Set var_A0 = Me.FGrid
  loc_121E43E:     LateIdCallSt
  loc_121E463:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E46B:     var_FC = CVar(CLng(2)) 'Long
  loc_121E470:     var_11C = vbNullString
  loc_121E47A:     Set var_A0 = Me.FGrid
  loc_121E480:     LateIdCallSt
  loc_121E4A5:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E4AD:     var_FC = CVar(CLng(5)) 'Long
  loc_121E4B2:     var_11C = vbNullString
  loc_121E4BC:     Set var_A0 = Me.FGrid
  loc_121E4C2:     LateIdCallSt
  loc_121E4E7:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E4EF:     var_FC = CVar(CLng(7)) 'Long
  loc_121E4F4:     var_11C = vbNullString
  loc_121E4FE:     Set var_A0 = Me.FGrid
  loc_121E504:     LateIdCallSt
  loc_121E519:   Else
  loc_121E520:     If (var_DC = CLng(8)) Then
  loc_121E536:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E53E:       var_FC = CVar(CLng(8)) 'Long
  loc_121E543:       var_11C = vbNullString
  loc_121E54D:       Set var_A0 = Me.FGrid
  loc_121E553:       LateIdCallSt
  loc_121E578:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E580:       var_FC = CVar(CLng(9)) 'Long
  loc_121E585:       var_11C = vbNullString
  loc_121E58F:       Set var_A0 = Me.FGrid
  loc_121E595:       LateIdCallSt
  loc_121E5AA:     Else
  loc_121E5B1:       If (var_DC = CLng(&HB)) Then
  loc_121E5C7:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E5DF:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_121E5E4:         var_11C = vbNullString
  loc_121E5EE:         Set var_B4 = Me.FGrid
  loc_121E5F4:         LateIdCallSt
  loc_121E60C:       End If
  loc_121E60C:     End If
  loc_121E60C:   End If
  loc_121E60C: End If
  loc_121E612: If (Cancel = &HD) Then
  loc_121E61A:   global_100 = 0
  loc_121E61D: End If
  loc_121E61F: Cancel = 0
  loc_121E622: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E584B4
  'Data Table: 4A1E5C
  loc_E58480: Set var_88 = Me.TopCtrl1
  loc_E58486: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_E5849F: If (CStr() = "Browse") Then
  loc_E584A2:   Exit Sub
  loc_E584A3: End If
  loc_E584AC: Call FGrid_UnknownEvent_C()
  loc_E584B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '114AB64
  'Data Table: 4A1E5C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_114A7D0: Set var_88 = Me.TopCtrl1
  loc_114A7D6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_114A7EF: If (CStr() = "Browse") Then
  loc_114A7F2:   Exit Sub
  loc_114A7F3: End If
  loc_114A806: var_A0 = CLng(Me.FGrid.Col)
  loc_114A816: If (var_A0 = CLng(3)) Then
  loc_114A81D:   Set var_88 = Me.TopCtrl1
  loc_114A823:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A0)
  loc_114A83C:   If (CStr() = "Add") Then
  loc_114A843:     Set var_C4 = Me.FGrid
  loc_114A867:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_114A870:     var_CA = Asc(var_9C)
  loc_114A894:     Set var_B4 = var_C4
  loc_114A8A6:     Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0)
  loc_114A8CE:     Set var_88 = Me.TxtGrid
  loc_114A8D4:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, 0)
  loc_114A8DC:     var_CA = var_B4.Text
  loc_114A8F5:     If (Len(var_9C) <= 1) Then
  loc_114A904:       Set var_88 = Me.TxtGrid
  loc_114A90A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_114A912:       0 = var_B4.Text
  loc_114A923:       Set var_B8 = Me.TxtGrid
  loc_114A929:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_114A931:       var_C4.Text = var_9C
  loc_114A944:     End If
  loc_114A950:     Set var_88 = Me.TxtGrid
  loc_114A956:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_114A970:     Set var_B8 = Me.TxtGrid
  loc_114A976:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_114A97E:     var_C4.SelStart = Len(var_B4.Text)
  loc_114A991:   End If
  loc_114A994: Else
  loc_114A99B:   If (var_A0 = CLng(8)) Then
  loc_114A9A2:     Set var_C4 = Me.FGrid
  loc_114A9C6:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_114A9F3:     Set var_B4 = var_C4
  loc_114AA05:     Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_114AA2D:     Set var_88 = Me.TxtGrid
  loc_114AA33:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_114AA3B:     0 = var_B4.Text
  loc_114AA54:     If (Len(var_9C) <= 1) Then
  loc_114AA63:       Set var_88 = Me.TxtGrid
  loc_114AA69:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_114AA71:       var_CA = var_B4.Text
  loc_114AA82:       Set var_B8 = Me.TxtGrid
  loc_114AA88:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_114AA90:       var_C4.Text = var_9C
  loc_114AAA3:     End If
  loc_114AAAF:     Set var_88 = Me.TxtGrid
  loc_114AAB5:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_114AACF:     Set var_B8 = Me.TxtGrid
  loc_114AAD5:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_114AADD:     var_C4.SelStart = Len(var_B4.Text)
  loc_114AAF3:   Else
  loc_114AAFA:     If (var_A0 = CLng(&HB)) Then
  loc_114AB3B:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_114AB4D:     End If
  loc_114AB4D:   End If
  loc_114AB4D: End If
  loc_114AB57: If (CLng(Cancel) <> &HD) Then
  loc_114AB5F:   global_100 = &HFF
  loc_114AB62: End If
  loc_114AB62: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '100089C
  'Data Table: 4A1E5C
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_10006A4: Set var_88 = Me.TopCtrl1
  loc_10006AA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_10006C3: If (CStr() = "Browse") Then
  loc_10006C6:   Exit Sub
  loc_10006C7: End If
  loc_10006CB: Set var_88 = Me.TopCtrl1
  loc_10006D1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10006EA: If (CStr() = "Edit") Then
  loc_10006ED:   Exit Sub
  loc_10006EE: End If
  loc_100070B: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_100070E:   Exit Sub
  loc_100070F: End If
  loc_1000720: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_1000742:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_100077C:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_100079E:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10007B4:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10007BD:         Set var_110 = Me.FGrid
  loc_10007D8:       Else
  loc_10007EB:         Me.FGrid.Rows = 1
  loc_1000811:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_1000819:         Set var_110 = Me.FGrid
  loc_1000846:         Me.FGrid.FixedRows = 1
  loc_100084E:       End If
  loc_100084E:     End If
  loc_1000851:   Else
  loc_1000872:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_1000882:   End If
  loc_1000886:   Set var_88 = Me.FGrid
  loc_1000897: End If
  loc_1000897: Exit Sub
  loc_1000898: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E46228
  'Data Table: 4A1E5C
  Dim var_8C As TextBox
  loc_E461FC: Call Proc_305_47_EBAD60()
  loc_E4620C: Set var_88 = Me.TxtGrid
  loc_E46212: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4621A: var_8C.Visible = False
  loc_E46226: Exit Sub
  loc_E46227: Exit Sub
End Sub

Private Sub Form_Load() '141F754
  'Data Table: 4A1E5C
  Dim var_8C As Variant
  Dim var_C0 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_C4 As String
  Dim unk_4A1E71 As Connection15
  Dim var_C8 As Variant
  Dim var_CC As Field20
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_180 As Integer
  Dim var_170 As Variant
  Dim var_120 As Variant
  loc_141ECE4: On Error Goto loc_141F710
  loc_141ECF6: Me.LblUser.Left = CDbl(13500)
  loc_141ED0D: Me.LblUser.Top = CDbl(7800)
  loc_141ED24: Me.LblLDt.Top = CDbl(8160)
  loc_141ED3B: Me.LblLDt.Left = CDbl(13500)
  loc_141ED4A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_141ED62: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B4))
  loc_141ED74: Set var_8C = Me.TopCtrl1
  loc_141ED7A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_141ED88: Call 0.Method_arg_50 (var_B0)
  loc_141ED90: var_C0 = CVar(var_B0) 'String
  loc_141ED98: Set var_8C = Me.TopCtrl1
  loc_141ED9E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_C0)
  loc_141EDD5: var_AC = 0
  loc_141EE05: unk_4A1E71.Execute "Select AutoSplit from depart where Code='" & global_52 & "'", var_C0, -1
  loc_141EE15: var_AC = var_C8.Item(var_C8)
  loc_141EE1D: var_CC = var_CC.Value
  loc_141EE71: unk_4A1E71.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_C0, -1
  loc_141EE82: Set global_76 = var_8C.Fields
  loc_141EEAC: var_8C = Me.Fields
  loc_141EEB4: var_C8 = var_8C.Item("MultiBillGeneration")
  loc_141EEBC: var_C0 = var_C8.Value
  loc_141EED6: If (var_C0 = "Yes") Then
  loc_141EEE4:   If (Proc_6_38_E69628(var_DC, var_DC, Proc_96_17_FDCB2C(global_52, global_84, global_80)) = "Yes") Then
  loc_141EEED:     If (MemVar_1F950B8 = 1) Then
  loc_141EF04:       var_B0 = "Select Cast(S.VNo As Varchar) Code,Cast(S.VNo As Varchar) Name,S.DocID,S.Vtype,S.Vprefix,S.Vtype,S.Vdate,S.Vtime,S.RestCode,S.NetAmt From SplitSale1 S LEFT JOIN AssignDelivery AD ON S.DocId=AD.DocId INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.SITE_CODE=V.SITE_CODE) WHERE ISNULL(AD.DeliBoy,'')='' And S.LOGSITE_CODE='" & MemVar_1F95078
  loc_141EF19:       Proc_6_7_F26918(var_C0, MemVar_1F950F4, CVar(var_B0 & "' AND S.VDate between "), var_1E4, -1)
  loc_141EF39:       Proc_6_7_F26918(var_120, MemVar_1F950FC, var_1E8 & var_C0 & " And ")
  loc_141EF41:       var_130 = var_8C & var_120 
  loc_141EF54:       var_180 = 0
  loc_141EF74:       var_C4 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_141EF84:       unk_4A1E71.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'" & "'", var_170, -1
  loc_141EF8C:       var_8C = var_8C.Fields
  loc_141EF94:       var_180 = var_C8.Item(var_C8)
  loc_141EF9C:       var_CC = var_CC.Value
  loc_141EFBB:       unk_4A1E71.Execute CStr(var_190 & var_190 & "' ORDER BY S.DOCID"), var_130 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='", global_88
  loc_141EFCC:       Set global_68 = var_1E8
  loc_141F006:     Else
  loc_141F01A:       var_B0 = "Select Cast(S.VNo As Varchar) Code,Cast(S.VNo As Varchar) Name,S.DocID,S.Vtype,S.Vprefix,S.Vtype,S.Vdate,S.Vtime,S.RestCode,S.NetAmt From SplitSale1 S  LEFT JOIN AssignDelivery AD ON S.DocId=AD.DocId INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.SITE_CODE=V.SITE_CODE) WHERE ISNULL(AD.DeliBoy,'')='' And S.LOGSITE_CODE='" & MemVar_1F95078
  loc_141F02F:       Proc_6_7_F26918(var_C0, MemVar_1F950EC, CVar(var_B0 & "' AND S.VDate="), var_190)
  loc_141F037:       var_F0 = -1 & var_C0 
  loc_141F04A:       var_140 = 0
  loc_141F06A:       var_C4 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_141F07A:       unk_4A1E71.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'" & "'", var_120, -1
  loc_141F082:       var_8C = var_8C.Fields
  loc_141F08A:       var_140 = var_C8.Item(var_C8)
  loc_141F092:       var_CC = var_CC.Value
  loc_141F0A3:       var_170 = var_130 & var_130 & "' ORDER BY S.DOCID" 
  loc_141F0B1:       unk_4A1E71.Execute CStr(var_170), var_1E8 & var_C0 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='", var_1E8
  loc_141F0C2:       Set global_68 = var_1E8
  loc_141F0F3:     End If
  loc_141F0F6:   Else
  loc_141F0FC:     If (MemVar_1F950B8 = 1) Then
  loc_141F113:       var_B0 = "Select Cast(S.VNo As Varchar) Code,Cast(S.VNo As Varchar) Name,S.DocID,S.Vtype,S.Vprefix,S.Vtype,S.Vdate,S.Vtime,S.RestCode,S.NetAmt From Sale1 S  LEFT JOIN AssignDelivery AD ON S.DocId=AD.DocId INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.SITE_CODE=V.SITE_CODE) WHERE ISNULL(AD.DeliBoy,'')='' And S.LOGSITE_CODE='" & MemVar_1F95078
  loc_141F128:       Proc_6_7_F26918(var_C0, MemVar_1F950F4, CVar(var_B0 & "' And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VDate between "), var_1E4)
  loc_141F130:       var_F0 = -1 & var_C0 
  loc_141F148:       Proc_6_7_F26918(var_120, MemVar_1F950FC, var_1E8 & var_C0 & " And ")
  loc_141F150:       var_130 = var_1E8 & var_120 
  loc_141F163:       var_180 = 0
  loc_141F183:       var_C4 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_141F193:       unk_4A1E71.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'" & "'", var_170, -1
  loc_141F19B:       var_8C = var_8C.Fields
  loc_141F1A3:       var_180 = var_C8.Item(var_C8)
  loc_141F1AB:       var_CC = var_CC.Value
  loc_141F1CA:       unk_4A1E71.Execute CStr(var_190 & var_190 & "' ORDER BY S.DOCID"), var_130 & " AND S.VTYPE='", global_92
  loc_141F1DB:       Set global_68 = var_1E8
  loc_141F215:     Else
  loc_141F229:       var_B0 = "Select Cast(S.VNo As Varchar) Code,Cast(S.VNo As Varchar) Name,S.DocID,S.Vtype,S.Vprefix,S.Vtype,S.Vdate,S.Vtime,S.RestCode,S.NetAmt From Sale1 S  LEFT JOIN AssignDelivery AD ON S.DocId=AD.DocId INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.SITE_CODE=V.SITE_CODE) WHERE ISNULL(AD.DeliBoy,'')='' And S.LOGSITE_CODE='" & MemVar_1F95078
  loc_141F23E:       Proc_6_7_F26918(var_C0, MemVar_1F950EC, CVar(var_B0 & "' AND S.VDate="))
  loc_141F259:       var_140 = 0
  loc_141F279:       var_C4 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_141F289:       unk_4A1E71.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'" & "'", var_120, -1
  loc_141F291:       var_8C = var_8C.Fields
  loc_141F299:       var_140 = var_C8.Item(var_C8)
  loc_141F2A1:       var_CC = var_CC.Value
  loc_141F2B2:       var_170 = var_130 & var_130 & "' ORDER BY S.DOCID" 
  loc_141F2C0:       unk_4A1E71.Execute CStr(var_170), var_190 & var_C0 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='", -1
  loc_141F2D1:       Set global_68 = var_1E8
  loc_141F302:     End If
  loc_141F302:   End If
  loc_141F305: Else
  loc_141F30B:   If (MemVar_1F950B8 = 1) Then
  loc_141F322:     var_B0 = "Select Cast(S.VNo As Varchar) Code,Cast(S.VNo As Varchar) Name,S.DocID,S.Vtype,S.Vprefix,S.Vtype,S.Vdate,S.Vtime,S.RestCode,S.NetAmt From Sale1 S  LEFT JOIN AssignDelivery AD ON S.DocId=AD.DocId INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.SITE_CODE=V.SITE_CODE) WHERE ISNULL(AD.DeliBoy,'')='' And S.LOGSITE_CODE='" & MemVar_1F95078
  loc_141F337:     Proc_6_7_F26918(var_C0, MemVar_1F950F4, CVar(var_B0 & "' And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VDate between "), var_1E4)
  loc_141F33F:     var_F0 = -1 & var_C0 
  loc_141F357:     Proc_6_7_F26918(var_120, MemVar_1F950FC, var_190 & var_C0 & " And ")
  loc_141F35F:     var_130 = var_1E8 & var_120 
  loc_141F372:     var_180 = 0
  loc_141F392:     var_C4 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_141F3A2:     unk_4A1E71.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'" & "'", var_170, -1
  loc_141F3AA:     var_8C = var_8C.Fields
  loc_141F3B2:     var_180 = var_C8.Item(var_C8)
  loc_141F3BA:     var_CC = var_CC.Value
  loc_141F3D9:     unk_4A1E71.Execute CStr(var_190 & var_190 & "' ORDER BY S.DOCID"), var_130 & " AND S.VTYPE='", var_1E8
  loc_141F3EA:     Set global_68 = var_1E8
  loc_141F424:   Else
  loc_141F438:     var_B0 = "Select Cast(S.VNo As Varchar) Code,Cast(S.VNo As Varchar) Name,S.DocID,S.Vtype,S.Vprefix,S.Vtype,S.Vdate,S.Vtime,S.RestCode,S.NetAmt From Sale1 S  LEFT JOIN AssignDelivery AD ON S.DocId=AD.DocId INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.SITE_CODE=V.SITE_CODE) WHERE ISNULL(AD.DeliBoy,'')='' And S.LOGSITE_CODE='" & MemVar_1F95078
  loc_141F43F:     var_DC = CVar(var_B0 & "' AND S.VDate=") 'String
  loc_141F44D:     Proc_6_7_F26918(var_C0, MemVar_1F950EC, var_DC)
  loc_141F468:     var_140 = 0
  loc_141F488:     var_C4 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_141F498:     unk_4A1E71.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'" & "'", var_120, -1
  loc_141F4A0:     var_8C = var_8C.Fields
  loc_141F4A8:     var_140 = var_C8.Item(var_C8)
  loc_141F4B0:     var_CC = var_CC.Value
  loc_141F4CF:     unk_4A1E71.Execute CStr(var_130 & var_130 & "' ORDER BY S.DOCID"), var_190 & var_C0 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='", -1
  loc_141F4E0:     Set global_68 = var_1E8
  loc_141F511:   End If
  loc_141F511: End If
  loc_141F51A: CVarUnk
  loc_141F51F: VerifyVarObj
  loc_141F52B: LateIdStAd
  loc_141F55D: unk_4A1E71.Execute "SELECT Code, Name FROM DeliveryBoy Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_C0, -1
  loc_141F58C: CVarUnk
  loc_141F591: VerifyVarObj
  loc_141F597: Set var_8C = Me.DGDeliBoy
  loc_141F59D: LateIdStAd
  loc_141F5B1: var_AC = 0
  loc_141F5D1: var_C4 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_141F5E1: unk_4A1E71.Execute "SELECT Code, Name FROM DeliveryBoy Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name" & "'", var_C0, -1
  loc_141F5E9: var_8C = var_8C.Fields
  loc_141F5F1: var_AC = var_C8.Item(var_C8)
  loc_141F5F9: var_CC = var_CC.Value
  loc_141F623: var_F0 = CVar("Select DocId AS SearchCode,SITE_CODE,LOGSITE_CODE From AssignDelivery AD Where AD.LOGSITE_CODE='" & MemVar_1F95078 & "' AND AD.VTYPE='") 'String
  loc_141F629: var_100 = var_F0 & var_DC 
  loc_141F640: Me.Recordset15.Open var_100 & "' Order By U_EntDt,VNo", CVar(MemVar_1F95044), 3
  loc_141F67D: var_B0 = "INI"
  loc_141F68B: Call Proc_305_46_E7941C(Proc_5_1_100EC1C(var_B0, Me, global_64, 1, -1, var_DC), Me, Me.DGBill, Me)
  loc_141F6A4: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_141F6AC: Call Proc_305_43_116CABC(Me.TopCtrl1, global_68)
  loc_141F6B1: Call Proc_305_45_1376784(var_1E8)
  loc_141F6B6: Call TopCtrl1_UnknownEvent_11()
  loc_141F6CD: Me.FGrid.Left = CVar(CDbl(&H64))
  loc_141F6E2: Set var_8C = Me.FGrid
  loc_141F6E8: var_8C.Top = CVar(CDbl(600))
  loc_141F6F9: Call 0.Method_arg_160 (var_8C)
  loc_141F707: Call 0.Method_arg_164 (var_8C)
  loc_141F70F: Exit Sub
  loc_141F710: ' Referenced from: 141ECE4
  loc_141F718: Set var_8C = Err()
  loc_141F71E: Call 0.Method_arg_2C (var_B0)
  loc_141F73F: MsgBox(CVar(var_B0), &H40, "Information", var_F0, var_100)
  loc_141F752: Exit Sub
  loc_141F753: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6A59C
  'Data Table: 4A1E5C
  loc_E6A553: Set global_64 = Nothing
  loc_E6A565: Set global_68 = Nothing
  loc_E6A577: Set global_72 = Nothing
  loc_E6A589: Set global_76 = Nothing
  loc_E6A595: global_56 = 0
  loc_E6A598: Exit Sub
End Sub

Private Sub Form_Activate() 'E4AEA0
  'Data Table: 4A1E5C
  loc_E4AE70: On Error Goto loc_E4AE9A
  loc_E4AE77: Set var_88 = Me.TopCtrl1
  loc_E4AE7D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4AE92: If (CLng(CInt()) = &H2D) Then
  loc_E4AE95:   Call TopCtrl1_UnknownEvent_15()
  loc_E4AE9A:   ' Referenced from: E4AE70
  loc_E4AE9A: End If
  loc_E4AE9A: Proc_6_60_E63754()
  loc_E4AE9F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E27574
  'Data Table: 4A1E5C
  loc_E27559: If (global_56 = &HFF) Then
  loc_E27569:   Me.Global.Unload Me
  loc_E27571: End If
  loc_E27571: Exit Sub
  loc_E27572: Get , ,  'get  bytes
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8AEE8
  'Data Table: 4A1E5C
  loc_E8AE84: On Error Goto loc_E8AEA4
  loc_E8AE9B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8AEA3: Exit Sub
  loc_E8AEA4: ' Referenced from: E8AE84
  loc_E8AEAC: Set var_88 = Err()
  loc_E8AEB2: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8AED3: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8AEE6: Exit Sub
  loc_E8AEE7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EB3484
  'Data Table: 4A1E5C
  Dim Me As Recordset15
  Dim var_8C As MSHFlexGrid
  loc_EB33E8: On Error Goto loc_EB347D
  loc_EB3412: Call Proc_305_46_E7941C(Proc_5_1_100EC1C("ADD", Me))
  loc_EB341D: Call Proc_305_44_F1AE58(global_64)
  loc_EB342D: Me.Requery -1
  loc_EB3444: Me.FGrid.Col = CVar(CLng(3))
  loc_EB345F: Me.FGrid.Row = 1
  loc_EB346B: Set var_8C = Me.FGrid
  loc_EB347C: Exit Sub
  loc_EB347D: ' Referenced from: EB33E8
  loc_EB347D: Proc_6_60_E63754(FGrid.DispID_8001)
  loc_EB3482: Exit Sub
  loc_EB3483: Result  End Sub 'Integer
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBAFE4
  'Data Table: 4A1E5C
  loc_EBAF50: On Error Goto loc_EBAFDB
  loc_EBAF8A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBAFB4:   Call Proc_305_46_E7941C(Proc_5_1_100EC1C("INI", Me))
  loc_EBAFC7:   Set var_10C = Me.TopCtrl1
  loc_EBAFCD:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_EBAFD5:   Call Proc_305_45_1376784(global_64)
  loc_EBAFDA: End If
  loc_EBAFDA: Exit Sub
  loc_EBAFDB: ' Referenced from: EBAF50
  loc_EBAFDB: Proc_6_60_E63754()
  loc_EBAFE0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '115EC5C
  'Data Table: 4A1E5C
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_4A1E71 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  Dim Me As Variant
  loc_115E8D8: On Error Goto loc_115EC02
  loc_115E8ED: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_115E8F0:   Exit Sub
  loc_115E8F1: End If
  loc_115E926: var_D4 = "Settlement"
  loc_115E96E: If (Proc_6_108_101061C(MemVar_1F95044, "PayCharge", "DocId", CStr(Me.Recordset15.Fields.Item("SearchCode").Value)) = 0) Then
  loc_115E971:   Exit Sub
  loc_115E972: End If
  loc_115E9A9: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_115E9AE:   var_96 = 0
  loc_115E9BA:   unk_4A1E71.BeginTrans var_D0
  loc_115E9C1:   var_96 = &HFF
  loc_115E9D8:   var_94 = Me.Recordset15.Bookmark 'Variant
  loc_115EA27:   var_118 = "Delete From AssignDelivery Where DocId='" & Me.Recordset15.Fields.Item("SearchCode").Value & "'" 
  loc_115EA35:   unk_4A1E71.Execute CStr(var_118), var_138, -1
  loc_115EA83:   var_168 = 0
  loc_115EA96:   var_160 = 0
  loc_115EAA1:   var_15C = 0
  loc_115EAB4:   var_154 = 0
  loc_115EABF:   var_150 = 0
  loc_115EAD2:   var_148 = 0
  loc_115EB12:   var_B4 = "AssignDelivery"
  loc_115EB1B:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B4, "DocId", &HC8, CStr(Me.Recordset15.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_115EB49:   unk_4A1E71.CommitTrans
  loc_115EB50:   var_96 = 0
  loc_115EB61:   Me.Recordset15.Requery -1
  loc_115EB71:   Me.Requery -1
  loc_115EB94:   If (CVar(Me.Recordset15.RecordCount) >= var_94) Then
  loc_115EBA4:     Me.Recordset15.Bookmark = var_94
  loc_115EBAC:   Else
  loc_115EBC3:     If (global_64.EOF = 0) Then
  loc_115EBCF:       Me.Recordset15.MoveLast
  loc_115EBD4:     End If
  loc_115EBD4:   End If
  loc_115EBD4:   Call Proc_305_45_1376784(var_96, var_148, 0, var_150, var_154)
  loc_115EBF9:   Proc_5_0_1107AD0(&HFF, Me, global_64, 0)
  loc_115EC01: End If
  loc_115EC01: Exit Sub
  loc_115EC02: ' Referenced from: 115E8D8
  loc_115EC08: If (var_96 = &HFF) Then
  loc_115EC11:   unk_4A1E71.RollbackTrans
  loc_115EC16: End If
  loc_115EC1E: Set var_9C = Err()
  loc_115EC24: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_115EC45: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_115EC58: Exit Sub
  loc_115EC5B: var_160 = 0
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F09594
  'Data Table: 4A1E5C
  loc_F094B4: On Error Goto loc_F09551
  loc_F094C9: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_F094CC:   Exit Sub
  loc_F094CD: End If
  loc_F094E7: If (global_64.RecordCount > 0) Then
  loc_F09503:   var_8C = "EDIT"
  loc_F09511:   Call Proc_305_46_E7941C(Proc_5_1_100EC1C(var_8C, Me))
  loc_F0951F: Else
  loc_F09540:   MsgBox("No Record To Edit.", &H40, "Information", var_F4, var_114)
  loc_F09550: End If
  loc_F09550: Exit Sub
  loc_F09551: ' Referenced from: F094B4
  loc_F09559: Set var_90 = Err()
  loc_F0955F: Call 0.Method_arg_2C (var_8C)
  loc_F09580: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F4, var_114)
  loc_F09593: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B498
  'Data Table: 4A1E5C
  loc_E1B48D: Me.Global.Unload Me
  loc_E1B495: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F '109E464
  'Data Table: 4A1E5C
  Dim var_B8 As String
  Dim var_E8 As Variant
  Dim var_10C As String
  Dim var_C8 As Variant
  Dim var_108 As Variant
  Dim var_134 As Variant
  Dim var_F8 As Variant
  Dim var_144 As Variant
  Dim var_184 As Integer
  Dim var_148 As String
  Dim unk_4A1E71 As Connection15
  Dim var_170 As Recordset15
  Dim var_174 As Fields15
  Dim var_188 As Field20
  Dim MemVar_1F950E4 As String
  Dim var_16C As Variant
  loc_109E1D4: On Error Goto loc_109E45E
  loc_109E1F1: If (Me.Recordset15.RecordCount <= 0) Then
  loc_109E215:   MsgBox("No Records To Search.", &H40, "Information", var_E8, var_108)
  loc_109E225:   Exit Sub
  loc_109E226: End If
  loc_109E231: var_A8 = Ucase(MemVar_1F950C8)
  loc_109E25E: If CBool((var_A8 = "HTW_SYSTEM") Or (CDbl(MemVar_1F950B8) = CDbl("1"))) Then
  loc_109E268:   var_10C = "Select  S.Docid as SearchCode,S.VNo as [Bill_No] ,Convert(VARCHAR(17),S.VDate,103) as [Bill_Date],Convert(VARCHAR(17),S.DDate,103) as [Deli_Date],DB.Name As Delivery_Boy,S.BillAmt,S.Remark " & "From (AssignDelivery S INNER Join Voucher_Type V On (S.VType= V.V_Type AND S.SITE_CODE=V.SITE_CODE)) "
  loc_109E27D:   var_C8 = CVar(var_10C & "INNER Join DeliveryBoy DB On S.DeliBoy=DB.Code Where S.LOGSITE_CODE='" & MemVar_1F95078 & "' And S.VDate between ") 'String
  loc_109E28B:   Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_109E2AB:   Proc_6_7_F26918(var_124, MemVar_1F950FC)
  loc_109E2B3:   var_134 = var_C8 & var_A8 & " And " & var_124 
  loc_109E2BC:   var_144 = var_134 & " And V_Type='" 
  loc_109E2C6:   var_184 = 0
  loc_109E2E6:   var_148 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_109E2F6:   unk_4A1E71.Execute var_148 & "'", var_16C, -1
  loc_109E2FE:   var_170 = var_170.Fields
  loc_109E306:   var_184 = var_174.Item(var_174)
  loc_109E30E:   var_188 = var_188.Value
  loc_109E324:   MemVar_1F950E4 = CStr(var_198 & var_198 & "' Order By S.docid")
  loc_109E35A: Else
  loc_109E361:   var_10C = "Select  S.Docid as SearchCode,S.VNo as [Bill_No] ,Convert(VARCHAR(17),S.VDate,103) as [Bill_Date],Convert(VARCHAR(17),S.DDate,103) as [Deli_Date],DB.Name As Delivery_Boy,S.BillAmt,S.Remark " & "From (AssignDelivery S INNER Join Voucher_Type V On (S.VType= V.V_Type AND S.SITE_CODE=V.SITE_CODE)) "
  loc_109E376:   var_C8 = CVar(var_10C & "INNER Join DeliveryBoy DB On S.DeliBoy=DB.Code Where S.LOGSITE_CODE='" & MemVar_1F95078 & "' And S.VDate=") 'String
  loc_109E384:   Proc_6_7_F26918(var_A8, MemVar_1F950EC, var_C8)
  loc_109E390:   var_B8 = " And V_Type='"
  loc_109E395:   var_108 = MemVar_1F950E4 & var_A8 & var_B8 
  loc_109E39F:   var_F8 = 0
  loc_109E3BF:   var_148 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_109E3CF:   unk_4A1E71.Execute var_148 & "'", var_124, -1
  loc_109E3D7:   var_170 = var_170.Fields
  loc_109E3DF:   var_F8 = var_174.Item(var_174)
  loc_109E3E7:   var_188 = var_188.Value
  loc_109E3FD:   MemVar_1F950E4 = CStr(var_134 & var_134 & "' Order By S.docid")
  loc_109E42A: End If
  loc_109E430: MemVar_1F95120 = Me
  loc_109E43D: Proc_6_126_F1C850("1500,2000,2000,3000,1500,3000", MemVar_1F950E4)
  loc_109E458: Call 0.Method_arg_2B0 (1, var_B8)
  loc_109E45D: Exit Sub
  loc_109E45E: ' Referenced from: 109E1D4
  loc_109E45E: Proc_6_60_E63754(var_108)
  loc_109E463: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E42E38
  'Data Table: 4A1E5C
  loc_E42E28: Proc_5_0_1107AD0(&HFF, Me)
  loc_E42E30: Call Proc_305_45_1376784(global_64)
  loc_E42E35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E42FC8
  'Data Table: 4A1E5C
  loc_E42FB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E42FC0: Call Proc_305_45_1376784(global_64)
  loc_E42FC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E42F00
  'Data Table: 4A1E5C
  loc_E42EF0: Proc_5_0_1107AD0(&HFF, Me)
  loc_E42EF8: Call Proc_305_45_1376784(global_64)
  loc_E42EFD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E430F4
  'Data Table: 4A1E5C
  loc_E430E4: Proc_5_0_1107AD0(&HFF, Me)
  loc_E430EC: Call Proc_305_45_1376784(global_64)
  loc_E430F1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E24740
  'Data Table: 4A1E5C
  Dim Me As Recordset15
  loc_E24727: Me.Requery -1
  loc_E24737: Me.Requery -1
  loc_E2473C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14BC944
  'Data Table: 4A1E5C
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_120 As Variant
  Dim unk_4A1E71 As Connection15
  Dim var_188 As String
  Dim var_160 As Variant
  Dim var_20C As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_76C As Double
  Dim var_2E0 As Variant
  Dim var_330 As Variant
  Dim var_374 As Variant
  Dim var_408 As Variant
  Dim var_774 As Double
  Dim var_1DC As String
  Dim var_1C0 As Variant
  Dim var_2C0 As Variant
  Dim var_320 As Variant
  Dim var_418 As Variant
  Dim var_5A4 As Variant
  Dim var_71C As Variant
  Dim var_180 As Variant
  Dim var_2F0 As Variant
  loc_14BBD20: On Error Goto loc_14BC8F1
  loc_14BBD27: var_86 = CByte(0) 'Byte
  loc_14BBD50: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Integer
  loc_14BBD81:   If ((var_88 > 1) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_14BBD88:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BBD90:     var_D0 = CVar(CLng(3)) 'Long
  loc_14BBDAA:     var_F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14BBDB0:     var_100 = Trim(var_F0)
  loc_14BBDCC:     If (var_100 = vbNullString) Then
  loc_14BBDE8:       MsgBox("Define Bill No. ", &H40, var_F0, var_100, var_120)
  loc_14BBDF8:       Exit Sub
  loc_14BBDF9:     End If
  loc_14BBDF9:   End If
  loc_14BBDFD:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BBE05:   var_D0 = CVar(CLng(1)) 'Long
  loc_14BBE41:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_14BBE48:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BBE50:     var_D0 = CVar(CLng(9)) 'Long
  loc_14BBE8C:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14BBE93:       var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BBE9B:       var_D0 = CVar(CLng(8)) 'Long
  loc_14BBEE2:       MsgBox("Fill Delivery Boy Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_160, var_180)
  loc_14BBEFF:       Set var_8C = Me.FGrid
  loc_14BBF10:       Exit Sub
  loc_14BBF11:     End If
  loc_14BBF11:   End If
  loc_14BBF14: Next var_A0 'Integer
  loc_14BBF22: unk_4A1E71.BeginTrans var_184
  loc_14BBF2B: var_86 = CByte(1) 'Byte
  loc_14BBF33: Set var_8C = Me.TopCtrl1
  loc_14BBF39: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14BBF52: If (CStr() = "Add") Then
  loc_14BBF7A:   For var_18C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_18C 'Integer
  loc_14BBF84:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BBF8C:     var_D0 = CVar(CLng(1)) 'Long
  loc_14BBFAC:     var_100 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_14BBFB4:     var_110 = vbNullString
  loc_14BBFC2:     var_130 = CVar(CLng(var_88)) 'Long
  loc_14BBFEA:     var_180 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_14BC018:     If CBool(CVar(CLng(9)) And (var_180 <> vbNullString)) Then
  loc_14BC01F:       var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BC027:       var_D0 = CVar(CLng(1)) 'Long
  loc_14BC036:       var_9C = Me.FGrid.TextMatrix)
  loc_14BC05D:       var_F0 = Me.FGrid.TextMatrix)
  loc_14BC097:       var_76C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14BC0B5:       var_120 = Me.FGrid.TextMatrix)
  loc_14BC0ED:       Proc_6_8_EB1974(var_180, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_88)), var_120, CVar(CLng(4)), CVar(CLng(var_88)), var_76C)
  loc_14BC0F7:       var_2E0 = CVar(Proc_6_14_EF402C(CVar(CLng(3)), CVar(CLng(var_88)), var_F0, CVar(CLng(2)))) 'String
  loc_14BC0FD:       Proc_6_8_EB1974(var_2F0, var_2E0, CVar(CLng(var_88)))
  loc_14BC11D:       var_374 = Me.FGrid.TextMatrix)
  loc_14BC144:       var_408 = Me.FGrid.TextMatrix)
  loc_14BC17E:       var_774 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14BC1AD:       Proc_6_17_EAAE40(var_554, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_88)), var_774, CVar(CLng(&HA)), CVar(CLng(var_88)), var_408)
  loc_14BC1BD:       Proc_6_8_EB1974(var_5E4, CVar(Proc_6_14_EF402C(CVar(CLng(9)), CVar(CLng(var_88)), var_374, CVar(CLng(7)))), CVar(CLng(var_88)))
  loc_14BC1C6:       Set var_618 = Me.TopCtrl1
  loc_14BC1CC:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_9C)
  loc_14BC217:       var_188 = "Insert Into AssignDelivery (DocId,Vtype,VNo,Vprefix,Vdate," & "Ddate,RestCode,DeliBoy,BillAmt,Remark,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) "
  loc_14BC267:       var_1C0 = CVar(var_188 & " Values ('" & CStr(var_9C) & "','" & CStr(var_F0) & "'," & CStr(var_76C) & ",'" & CStr(var_120) & "',") 'String
  loc_14BC286:       var_320 = var_1C0 & var_180 & "," & var_2F0 & ",'" 
  loc_14BC2DC:       var_5A4 = var_320 & CVar(CStr(var_374)) & "','" & CVar(CStr(var_408)) & "'," & CVar(var_774) & "," & var_554 & ",'" & CVar(MemVar_1F950C8) 
  loc_14BC322:       var_71C = var_5A4 & "'," & var_5E4 & ",'" & IIf((CStr(var_628) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) 
  loc_14BC339:       unk_4A1E71.Execute CStr(var_71C & "')"), var_760, -1
  loc_14BC3DF:     End If
  loc_14BC3E2:   Next var_18C 'Integer
  loc_14BC3EA: Else
  loc_14BC3EE:   Set var_8C = Me.TopCtrl1
  loc_14BC3F4:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14BC40D:   If (CStr() = "Edit") Then
  loc_14BC435:     For var_778 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_778 'Integer
  loc_14BC43F:       var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BC447:       var_D0 = CVar(CLng(1)) 'Long
  loc_14BC467:       var_100 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_14BC46F:       var_110 = vbNullString
  loc_14BC4D3:       If CBool(CVar(CLng(9)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString)) Then
  loc_14BC4DA:         var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BC4E2:         var_D0 = CVar(CLng(9)) 'Long
  loc_14BC4F1:         var_9C = Me.FGrid.TextMatrix)
  loc_14BC501:         var_110 = CVar(CLng(var_88)) 'Long
  loc_14BC523:         var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14BC529:         Proc_6_17_EAAE40(var_120, var_100, CVar(CLng(&HB)), var_110, var_9C, var_D0)
  loc_14BC539:         Proc_6_8_EB1974(var_2E0, CVar(Proc_6_14_EF402C(var_B0, CVar(CLng(var_88)), (var_100 <> var_110))), var_D0)
  loc_14BC542:         Set var_20C = Me.TopCtrl1
  loc_14BC548:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_B0)
  loc_14BC583:         var_2C0 = CVar(CLng(var_88)) 'Long
  loc_14BC58B:         var_330 = CVar(CLng(1)) 'Long
  loc_14BC5DE:         var_1C0 = CVar("Update AssignDelivery Set DeliBoy='" & CStr(var_9C) & "',Remark=") & var_120 & ",U_Name='" & CVar(MemVar_1F950C8) 
  loc_14BC611:         var_418 = var_1C0 & "',U_EntDt=" & var_2E0 & ",U_AE='" & IIf((CStr(var_320) = "Add"), "A", "E") & "',Site_Code='" & CVar(MemVar_1F95070) 
  loc_14BC645:         var_1DC = CStr(var_418 & "',LogSite_Code='" & CVar(MemVar_1F95078) & "' Where DocId='" & CVar(CStr(Me.FGrid.TextMatrix))) & "'")
  loc_14BC64F:         unk_4A1E71.Execute var_1DC, var_554, -1
  loc_14BC6A9:       End If
  loc_14BC6AC:     Next var_778 'Integer
  loc_14BC6B1:   End If
  loc_14BC6B1: End If
  loc_14BC6B7: unk_4A1E71.CommitTrans
  loc_14BC6C0: var_86 = CByte(0) 'Byte
  loc_14BC6C8: Set var_8C = Me.TopCtrl1
  loc_14BC6CE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14BC6E7: If (CStr() = "Add") Then
  loc_14BC70F:   For var_77C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_77C 'Integer
  loc_14BC719:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BC721:     var_D0 = CVar(CLng(1)) 'Long
  loc_14BC741:     var_100 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_14BC749:     var_110 = vbNullString
  loc_14BC757:     var_130 = CVar(CLng(var_88)) 'Long
  loc_14BC7AD:     If CBool(CVar(CLng(9)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString)) Then
  loc_14BC7B4:       var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BC7F2:       var_F0 = Me.FGrid.TextMatrix)
  loc_14BC812:       Proc_233_16_1656BD4(CStr(Me.FGrid.TextMatrix)), "Assign Delivery", CStr(var_F0), CVar(CLng(7)), CVar(CLng(var_88)), Me.FGrid.TextMatrix), CVar(CLng(1)))
  loc_14BC82E:     End If
  loc_14BC831:   Next var_77C 'Integer
  loc_14BC836: End If
  loc_14BC844: global_64.Requery -1
  loc_14BC864: var_9C = Me.FGrid.TextMatrix)
  loc_14BC8AD: Me.var_9C.Find "SearchCode ='" & CStr(var_9C) & "'", 0, 1
  loc_14BC8D2: var_188 = "INI"
  loc_14BC8E0: Call Proc_305_46_E7941C(Proc_5_1_100EC1C(var_188, Me, global_64), 1)
  loc_14BC8EB: Call Proc_305_45_1376784(CVar(CLng(1)))
  loc_14BC8F0: Exit Sub
  loc_14BC8F1: ' Referenced from: 14BBD20
  loc_14BC8FA: If (CInt(var_86) = 1) Then
  loc_14BC903:   unk_4A1E71.RollbackTrans
  loc_14BC908: End If
  loc_14BC910: Set var_8C = Err()
  loc_14BC916: Call 0.Method_arg_2C (var_188)
  loc_14BC92F: MsgBox(CVar(var_188), &H10, var_F0, var_100, var_120)
  loc_14BC942: Exit Sub
End Sub

Public Function global_52Get() '4A2B94
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4A2BA3
  global_52 = Value
End Sub

Public Function global_56Get() '4A2BB2
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4A2BC1
  global_56 = Value
End Sub

Public Function global_60Get() '4A2BD0
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4A2BDF
  global_60 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E9FCA0
  'Data Table: 4A1E5C
  loc_E9FC26: On Error Goto loc_E9FC99
  loc_E9FC32: Me.Recordset15.MoveFirst
  loc_E9FC5F: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E9FC8B: Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_E9FC93: Call Proc_305_45_1376784(0)
  loc_E9FC98: Exit Sub
  loc_E9FC99: ' Referenced from: E9FC26
  loc_E9FC99: Proc_6_60_E63754(var_A0)
  loc_E9FC9E: Exit Sub
End Sub

Public Sub Proc_305_43_116CABC
  'Data Table: 4A1E5C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_116C6E4: Set var_88 = Me.FGrid
  loc_116C6F3: var_88.Height = CVar(CDbl(6800))
  loc_116C704: var_88.Width = CVar(CDbl(14300))
  loc_116C715: var_88.Cols = &HC
  loc_116C726: var_88.Rows = 2
  loc_116C73F: global_124 = CStr(CLng(var_88.BackColor))
  loc_116C749: var_98 = 0
  loc_116C755: var_CC = CVar(CLng(0)) 'Long
  loc_116C75A: var_EC = "SNo."
  loc_116C763: LateIdCallSt
  loc_116C76E: var_98 = CVar(CLng(0)) 'Long
  loc_116C773: var_CC = &H1F4
  loc_116C77F: LateIdCallSt
  loc_116C78A: var_98 = CVar(CLng(0)) 'Long
  loc_116C795: var_CC = CVar(CInt(4)) 'Integer
  loc_116C79C: LateIdCallSt
  loc_116C7A7: var_98 = CVar(CLng(1)) 'Long
  loc_116C7AC: var_CC = 0
  loc_116C7B8: LateIdCallSt
  loc_116C7C3: var_98 = CVar(CLng(2)) 'Long
  loc_116C7C8: var_CC = 0
  loc_116C7D4: LateIdCallSt
  loc_116C7DC: var_98 = 0
  loc_116C7E8: var_CC = CVar(CLng(3)) 'Long
  loc_116C7ED: var_EC = "Bill No."
  loc_116C7F6: LateIdCallSt
  loc_116C801: var_98 = CVar(CLng(3)) 'Long
  loc_116C806: var_CC = &H4B0
  loc_116C812: LateIdCallSt
  loc_116C81D: var_98 = CVar(CLng(3)) 'Long
  loc_116C828: var_CC = CVar(CInt(1)) 'Integer
  loc_116C82F: LateIdCallSt
  loc_116C83A: var_98 = CVar(CLng(4)) 'Long
  loc_116C83F: var_CC = 0
  loc_116C84B: LateIdCallSt
  loc_116C853: var_98 = 0
  loc_116C85F: var_CC = CVar(CLng(5)) 'Long
  loc_116C864: var_EC = "Bill Date"
  loc_116C86D: LateIdCallSt
  loc_116C878: var_98 = CVar(CLng(5)) 'Long
  loc_116C883: var_CC = CVar(CInt(1)) 'Integer
  loc_116C88A: LateIdCallSt
  loc_116C895: var_98 = CVar(CLng(5)) 'Long
  loc_116C8A0: var_CC = CVar(CInt(1)) 'Integer
  loc_116C8A7: LateIdCallSt
  loc_116C8B2: var_98 = CVar(CLng(5)) 'Long
  loc_116C8B7: var_CC = &H6A4
  loc_116C8C3: LateIdCallSt
  loc_116C8CB: var_98 = 0
  loc_116C8D7: var_CC = CVar(CLng(6)) 'Long
  loc_116C8DC: var_EC = "Deli.Date"
  loc_116C8E5: LateIdCallSt
  loc_116C8F0: var_98 = CVar(CLng(6)) 'Long
  loc_116C8FB: var_CC = CVar(CInt(1)) 'Integer
  loc_116C902: LateIdCallSt
  loc_116C90D: var_98 = CVar(CLng(6)) 'Long
  loc_116C918: var_CC = CVar(CInt(1)) 'Integer
  loc_116C91F: LateIdCallSt
  loc_116C92A: var_98 = CVar(CLng(6)) 'Long
  loc_116C92F: var_CC = &H6A4
  loc_116C93B: LateIdCallSt
  loc_116C946: var_98 = CVar(CLng(7)) 'Long
  loc_116C94B: var_CC = 0
  loc_116C957: LateIdCallSt
  loc_116C95F: var_98 = 0
  loc_116C96B: var_CC = CVar(CLng(8)) 'Long
  loc_116C970: var_EC = "Delivery Boy"
  loc_116C979: LateIdCallSt
  loc_116C984: var_98 = CVar(CLng(8)) 'Long
  loc_116C989: var_CC = &HC80
  loc_116C995: LateIdCallSt
  loc_116C9A0: var_98 = CVar(CLng(8)) 'Long
  loc_116C9AB: var_CC = CVar(CInt(1)) 'Integer
  loc_116C9B2: LateIdCallSt
  loc_116C9BD: var_98 = CVar(CLng(9)) 'Long
  loc_116C9C2: var_CC = 0
  loc_116C9CE: LateIdCallSt
  loc_116C9D6: var_98 = 0
  loc_116C9E2: var_CC = CVar(CLng(&HA)) 'Long
  loc_116C9E7: var_EC = "Bill Amt"
  loc_116C9F0: LateIdCallSt
  loc_116C9FB: var_98 = CVar(CLng(&HA)) 'Long
  loc_116CA06: var_CC = CVar(CInt(7)) 'Integer
  loc_116CA0D: LateIdCallSt
  loc_116CA18: var_98 = CVar(CLng(&HA)) 'Long
  loc_116CA23: var_CC = CVar(CInt(7)) 'Integer
  loc_116CA2A: LateIdCallSt
  loc_116CA35: var_98 = CVar(CLng(&HA)) 'Long
  loc_116CA3A: var_CC = &H4B0
  loc_116CA46: LateIdCallSt
  loc_116CA4E: var_98 = 0
  loc_116CA5A: var_CC = CVar(CLng(&HB)) 'Long
  loc_116CA5F: var_EC = "Remark"
  loc_116CA68: LateIdCallSt
  loc_116CA73: var_98 = CVar(CLng(&HB)) 'Long
  loc_116CA78: var_CC = &H1194
  loc_116CA84: LateIdCallSt
  loc_116CA8F: var_98 = CVar(CLng(&HB)) 'Long
  loc_116CA9A: var_CC = CVar(CInt(1)) 'Integer
  loc_116CAA1: LateIdCallSt
  loc_116CAB0: var_88.Enabled = True
  loc_116CAB7: Set var_88 = Nothing 
  loc_116CABB: Exit Sub
End Sub

Public Sub Proc_305_44_F1AE58
  'Data Table: 4A1E5C
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F1AD6E: Set var_8C = Me.Txt
  loc_F1AD74: Call 0.Method_Proc_305_44_F1AE58C (var_8E, var_86)
  loc_F1AD84: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1AD9A:   Set var_8C = Me.Txt
  loc_F1ADA0:   Call 0.Method_Proc_305_44_F1AE580 (CInt(var_86), var_98)
  loc_F1ADA8:   var_98.Text = vbNullString
  loc_F1ADC4:   Set var_8C = Me.Txt
  loc_F1ADCA:   Call 0.Method_Proc_305_44_F1AE580 (CInt(var_86), var_98)
  loc_F1ADD2:   var_98.Tag = vbNullString
  loc_F1ADE1: Next var_92 'Byte
  loc_F1ADFA: Me.FGrid.Rows = 1
  loc_F1AE17: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F1AE1F: Set var_98 = Me.FGrid
  loc_F1AE4E: Me.FGrid.FixedRows = 1
  loc_F1AE56: Exit Sub
End Sub

Public Sub Proc_305_45_1376784
  'Data Table: 4A1E5C
  Dim var_94 As String
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim unk_4A1E71 As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim var_12C As Fields15
  Dim var_150 As Variant
  Dim var_140 As Variant
  Dim var_118 As Variant
  Dim var_8A As Integer
  Dim var_128 As Variant
  loc_1375F38: On Error Goto loc_137677C
  loc_1375F55: If (Me.Recordset15.RecordCount > 0) Then
  loc_1375F58:   Call Proc_305_44_F1AE58()
  loc_1375F71:   var_94 = "Select AD.*,DB.Name From (AssignDelivery AD Left Join DeliveryBoy DB On AD.DeliBoy = DB.Code) Where AD.Site_Code='" & MemVar_1F95070
  loc_1375FB9:   var_E4 = CVar(var_94 & "' and (AD.LOGSITE_CODE='" & MemVar_1F95078 & "' or AD.LOGSITE_CODE='HO') and DocId='") & Me.Recordset15.Fields.Item("SearchCode").Value 
  loc_1375FD0:   unk_4A1E71.Execute CStr(var_E4 & "'"), var_128, -1
  loc_1375FDB:   Set var_88 = var_12C
  loc_1376013:   If (var_88.RecordCount > 0) Then
  loc_1376050:     var_12C = var_88.Fields
  loc_13760B9:     var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_12C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_13760FE:     Me.LblUser.Caption = CStr(var_12C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_13761D9:     var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_137621E:     Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1376258:     var_8A = 1
  loc_137626E:     Me.FGrid.Rows = 1
  loc_1376276:     ' Referenced from: 13766F3
  loc_1376285:     If Not(var_88.EOF) Then
  loc_1376288:       var_B0 = vbNullString
  loc_1376292:       Set var_A0 = Me.FGrid
  loc_13762A7:       Set var_1E8 = Me.FGrid
  loc_13762AE:       var_B0 = CVar(CLng(var_8A)) 'Long
  loc_13762B6:       var_118 = CVar(CLng(0)) 'Long
  loc_13762C0:       var_C4 = CVar(CStr(var_8A)) 'String
  loc_13762C7:       LateIdCallSt
  loc_13762D6:       var_F4 = CVar(CLng(var_8A)) 'Long
  loc_13762DE:       var_140 = CVar(CLng(1)) 'Long
  loc_137630E:       var_D4 = CVar(CStr(var_88.Fields.Item("DocID").Value)) 'String
  loc_1376315:       LateIdCallSt
  loc_137632F:       var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1376337:       var_140 = CVar(CLng(2)) 'Long
  loc_1376367:       var_D4 = CVar(CStr(var_88.Fields.Item("vType").Value)) 'String
  loc_137636E:       LateIdCallSt
  loc_13763BB:       Proc_6_39_E7D3A0(var_D4, CVar(var_88.Fields.Item("VNo")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1E8, var_D4, CVar(CLng(3)))
  loc_13763CB:       LateIdCallSt
  loc_1376418:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("vPrefix")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(var_D4)), CVar(CLng(var_8A)))) 'String
  loc_137641F:       LateIdCallSt
  loc_1376451:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_1376459:       var_150 = CVar(CLng(5)) 'Long
  loc_1376486:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("VDate")), "dd/MMM/yyyy hh:nn"))) 'String
  loc_137648D:       LateIdCallSt
  loc_13764FF:       LateIdCallSt
  loc_137654E:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RestCode")), CVar(CLng(7)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(Format(CVar(var_88.Fields.Item("DDate")), "dd/MMM/yyyy hh:nn"))), 1, 1)) 'String
  loc_1376555:       LateIdCallSt
  loc_13765A0:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), CVar(CLng(8)), CVar(CLng(var_8A)), var_1E8, var_D4, CVar(CLng(6)))) 'String
  loc_13765A7:       LateIdCallSt
  loc_13765F2:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DeliBoy")), CVar(CLng(9)), CVar(CLng(var_8A)), var_1E8, var_D4)) 'String
  loc_13765F9:       LateIdCallSt
  loc_1376631:       Proc_6_39_E7D3A0(var_D4, CVar(var_88.Fields.Item("BillAmt")), var_1E8, var_D4, CVar(CLng(var_8A)))
  loc_137663A:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_1376642:       var_150 = CVar(CLng(&HA)) 'Long
  loc_1376662:       var_104 = Format(var_D4, "0.00")
  loc_1376672:       LateIdCallSt
  loc_13766C3:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Remark")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(var_104)), 1, 1)) 'String
  loc_13766CA:       LateIdCallSt
  loc_13766DE:       Set var_1E8 = Nothing 
  loc_13766E8:       var_8A = (var_8A + 1)
  loc_13766EE:       var_88.MoveNext
  loc_13766F3:       GoTo loc_1376276
  loc_13766F6:     End If
  loc_13766F6:   End If
  loc_13766F6:   var_B0 = 0
  loc_1376700:   Set var_A0 = Me.FGrid
  loc_137672D:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1376730:     var_B0 = vbNullString
  loc_137673A:     Set var_A0 = Me.FGrid
  loc_137674B:   End If
  loc_137674B:   var_B0 = 1
  loc_137675E:   Me.FGrid.FixedRows = var_B0
  loc_1376769: Else
  loc_1376769:   Call Proc_305_44_F1AE58(FGrid.DispID_10000, var_B0, FGrid.DispID_2E, var_B0, var_8A, var_1E8, var_D4)
  loc_137676E: End If
  loc_137676E: Call Proc_305_47_EBAD60(var_150, var_118, var_1E8)
  loc_1376778: Set var_88 = Nothing
  loc_137677B: Exit Sub
  loc_137677C: ' Referenced from: 1375F38
  loc_137677C: Proc_6_60_E63754(var_104, 1)
  loc_1376781: Exit Sub
End Sub

Public Sub Proc_305_46_E7941C(arg_C) 'E7941C
  'Data Table: 4A1E5C
  Dim var_98 As TextBox
  loc_E793CA: Set var_8C = Me.Txt
  loc_E793D0: Call 0.Method_Proc_305_46_E7941CC (var_8E, var_86)
  loc_E793E0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E793F6:   Set var_8C = Me.Txt
  loc_E793FC:   Call 0.Method_Proc_305_46_E7941C0 (CInt(var_86), var_98)
  loc_E79404:   var_98.Enabled = arg_C
  loc_E79413: Next var_92 'Byte
  loc_E79419: Exit Sub
End Sub

Public Sub Proc_305_47_EBAD60
  'Data Table: 4A1E5C
  loc_EBACD8: If (CBool(Me.DGBill.Visible) = &HFF) Then
  loc_EBACEA:   Me.DGBill.Visible = False
  loc_EBACF2: End If
  loc_EBAD0E: If (CBool(Me.DGDeliBoy.Visible) = &HFF) Then
  loc_EBAD20:   Me.DGDeliBoy.Visible = False
  loc_EBAD28: End If
  loc_EBAD44: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBAD56:   Me.FGPoint.Visible = False
  loc_EBAD5E: End If
  loc_EBAD5E: Exit Sub
End Sub

Public Sub Proc_305_48_E4408C
  'Data Table: 4A1E5C
  loc_E44068: Set var_88 = Me.TopCtrl1
  loc_E4406E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_E44087: If (CStr() = "Browse") Then
  loc_E4408A:   Exit Sub
  loc_E4408B: End If
  loc_E4408B: Exit Sub
End Sub

Public Sub Proc_305_49_13E457C(arg_C) '13E457C
  'Data Table: 4A1E5C
  Dim var_86 As Integer
  Dim var_8E As Integer
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_118 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_190 As Variant
  Dim var_12C As Variant
  loc_13E3BB2: var_86 = &HFF
  loc_13E3BB8: var_8E = arg_C
  loc_13E3BC1: If (var_8E = 0) Then
  loc_13E3BE7:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_13E3C0A:     var_AE = Me.EOF
  loc_13E3C38:     Set var_94 = Me.TxtGrid
  loc_13E3C3E:     Call 0.Method_Proc_305_49_13E457C0 (arg_C, var_B4, var_B8, ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (Me.BOF = &HFF))))
  loc_13E3C46:     var_A8 = var_B4.Text
  loc_13E3C5E:     If (var_8E Or (var_B8 = vbNullString)) Then
  loc_13E3C74:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3C7C:       var_E8 = CVar(CLng(1)) 'Long
  loc_13E3C81:       var_108 = vbNullString
  loc_13E3C8B:       Set var_B4 = Me.FGrid
  loc_13E3C91:       LateIdCallSt
  loc_13E3CB6:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3CBE:       var_E8 = CVar(CLng(2)) 'Long
  loc_13E3CC3:       var_108 = vbNullString
  loc_13E3CCD:       Set var_B4 = Me.FGrid
  loc_13E3CD3:       LateIdCallSt
  loc_13E3CF8:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3D00:       var_E8 = CVar(CLng(3)) 'Long
  loc_13E3D05:       var_108 = vbNullString
  loc_13E3D0F:       Set var_B4 = Me.FGrid
  loc_13E3D15:       LateIdCallSt
  loc_13E3D3A:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3D42:       var_E8 = CVar(CLng(4)) 'Long
  loc_13E3D47:       var_108 = vbNullString
  loc_13E3D51:       Set var_B4 = Me.FGrid
  loc_13E3D57:       LateIdCallSt
  loc_13E3D7C:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3D84:       var_E8 = CVar(CLng(5)) 'Long
  loc_13E3D89:       var_108 = vbNullString
  loc_13E3D93:       Set var_B4 = Me.FGrid
  loc_13E3D99:       LateIdCallSt
  loc_13E3DBE:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3DC6:       var_E8 = CVar(CLng(6)) 'Long
  loc_13E3DCB:       var_108 = vbNullString
  loc_13E3DD5:       Set var_B4 = Me.FGrid
  loc_13E3DDB:       LateIdCallSt
  loc_13E3E00:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3E08:       var_E8 = CVar(CLng(7)) 'Long
  loc_13E3E0D:       var_108 = vbNullString
  loc_13E3E17:       Set var_B4 = Me.FGrid
  loc_13E3E1D:       LateIdCallSt
  loc_13E3E42:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3E4A:       var_E8 = CVar(CLng(&HA)) 'Long
  loc_13E3E4F:       var_108 = vbNullString
  loc_13E3E59:       Set var_B4 = Me.FGrid
  loc_13E3E5F:       LateIdCallSt
  loc_13E3E73:       var_86 = 0
  loc_13E3E79:     Else
  loc_13E3E7C:       Call Proc_305_50_FC451C(var_AE, var_86, var_B4, var_108, var_E8, var_C8, var_B4, var_108)
  loc_13E3E87:       If (var_AE = 0) Then
  loc_13E3E8F:         Proc_305_49_13E457C = 0
  loc_13E3E95:       End If
  loc_13E3EA8:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3EB0:       var_F8 = CVar(CLng(1)) 'Long
  loc_13E3EE3:       var_13C = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_13E3EEB:       Set var_140 = Me.FGrid
  loc_13E3EF1:       LateIdCallSt
  loc_13E3F20:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3F28:       var_F8 = CVar(CLng(2)) 'Long
  loc_13E3F5B:       var_13C = CVar(CStr(Me.Fields.Item("vType").Value)) 'String
  loc_13E3F63:       Set var_140 = Me.FGrid
  loc_13E3F69:       LateIdCallSt
  loc_13E3F98:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3FA0:       var_F8 = CVar(CLng(3)) 'Long
  loc_13E3FD3:       var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_13E3FDB:       Set var_140 = Me.FGrid
  loc_13E3FE1:       LateIdCallSt
  loc_13E4010:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E4018:       var_F8 = CVar(CLng(4)) 'Long
  loc_13E404B:       var_13C = CVar(CStr(Me.Fields.Item("vPrefix").Value)) 'String
  loc_13E4053:       Set var_140 = Me.FGrid
  loc_13E4059:       LateIdCallSt
  loc_13E40C6:       var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E40FF:       var_150 = (Format(CVar(Me.Fields.Item("VDate")), "dd/MMM/yyyy") + " ")
  loc_13E412A:       var_190 = (1 + Format(CVar(Me.Fields.Item("VTIME")), "hh:nn"))
  loc_13E413D:       LateIdCallSt
  loc_13E416C:       var_B8 = Proc_6_14_EF402C(Me.FGrid, CVar(CStr(var_190)), 1, var_150, 1, 1, CVar(CLng(5)))
  loc_13E4182:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E418A:       var_F8 = CVar(CLng(6)) 'Long
  loc_13E41B6:       var_160 = CVar(CStr(Format(CVar(var_B8), "dd/MMM/yyyy hh:nn"))) 'String
  loc_13E41BE:       Set var_B4 = Me.FGrid
  loc_13E41C4:       LateIdCallSt
  loc_13E41F6:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E41FE:       var_F8 = CVar(CLng(7)) 'Long
  loc_13E4228:       var_12C = Me.Fields.Item("RestCode").Value
  loc_13E4231:       var_13C = CVar(CStr(var_12C)) 'String
  loc_13E423F:       LateIdCallSt
  loc_13E4265:       var_13C = Me.FGrid.Row
  loc_13E426E:       var_D8 = CVar(CLng(var_13C)) 'Long
  loc_13E4295:       var_B4 = Me.Fields.Item("NetAmt")
  loc_13E42A4:       Proc_6_47_EF6560(var_12C, CVar(var_B4), CVar(CLng(&HA)), var_D8, Me.FGrid, var_13C, CVar(CLng(&HA)))
  loc_13E42AD:       var_150 = CVar(CStr(var_12C)) 'String
  loc_13E42B5:       Set var_140 = Me.FGrid
  loc_13E42BB:       LateIdCallSt
  loc_13E42D7:     End If
  loc_13E42DA:   Else
  loc_13E42E1:     If (var_A8 = CLng(8)) Then
  loc_13E4332:       Set var_94 = Me.TxtGrid
  loc_13E4338:       Call 0.Method_Proc_305_49_13E457C0 (arg_C, var_B4, var_B8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_140, var_150, var_D8)
  loc_13E4340:       var_B4 = var_B4.Text
  loc_13E4358:       If (var_160 Or (var_B8 = vbNullString)) Then
  loc_13E436E:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E4376:         var_E8 = CVar(CLng(8)) 'Long
  loc_13E437B:         var_108 = vbNullString
  loc_13E4385:         Set var_B4 = Me.FGrid
  loc_13E438B:         LateIdCallSt
  loc_13E43B0:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E43B8:         var_E8 = CVar(CLng(9)) 'Long
  loc_13E43BD:         var_108 = vbNullString
  loc_13E43C7:         Set var_B4 = Me.FGrid
  loc_13E43CD:         LateIdCallSt
  loc_13E43E1:         var_86 = 0
  loc_13E43E7:       Else
  loc_13E43FA:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E4402:         var_F8 = CVar(CLng(8)) 'Long
  loc_13E4435:         var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_13E443D:         Set var_140 = Me.FGrid
  loc_13E4443:         LateIdCallSt
  loc_13E4472:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E447A:         var_F8 = CVar(CLng(9)) 'Long
  loc_13E449C:         var_B4 = Me.Fields.Item("Code")
  loc_13E44AD:         var_13C = CVar(CStr(var_B4.Value)) 'String
  loc_13E44B5:         Set var_140 = Me.FGrid
  loc_13E44BB:         LateIdCallSt
  loc_13E44D7:       End If
  loc_13E44DA:     Else
  loc_13E44E1:       If (var_A8 = CLng(&HB)) Then
  loc_13E4510:         Set var_94 = Me.TxtGrid
  loc_13E4516:         Call 0.Method_Proc_305_49_13E457C0 (0, var_B4, var_B8, CVar(CLng(&HB)), CVar(CLng(Me.FGrid.Row)), var_140, var_13C)
  loc_13E451E:         var_F8 = var_B4.Text
  loc_13E4526:         var_12C = CVar(var_B8) 'String
  loc_13E452E:         Set var_140 = Me.FGrid
  loc_13E4534:         LateIdCallSt
  loc_13E454E:       End If
  loc_13E454E:     End If
  loc_13E454E:   End If
  loc_13E454E: End If
  loc_13E455C: Set var_94 = Me.TxtGrid
  loc_13E4562: Call 0.Method_Proc_305_49_13E457C0 (0, var_B4, 0, var_140, var_12C, var_D8)
  loc_13E456A: var_B4.MaxLength = var_140
  loc_13E4576: Proc_305_49_13E457C = var_13C
End Sub

Public Sub Proc_305_50_FC451C
  'Data Table: 4A1E5C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC439F: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FC43A4:   var_92 = 3 'Byte
  loc_FC43A8: End If
  loc_FC43B1: Set var_98 = Me.TxtGrid
  loc_FC43B7: Call 0.Method_Proc_305_50_FC451C0 (0, var_B0)
  loc_FC43DA: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC440E: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC4432:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC4435:     GoTo loc_FC4507
  loc_FC4438:   End If
  loc_FC443C:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC4466:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC4470:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC44A5:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC44C9:     MsgBox("Duplicate Not Allowed!", &H40, "Validation", var_D0, var_124)
  loc_FC44E2:     Set var_98 = Me.TxtGrid
  loc_FC44E8:     Call 0.Method_Proc_305_50_FC451C0 (0, var_B0, CVar(CLng(var_92)))
  loc_FC44F0:     var_B0.SetFocus
  loc_FC4501:     Proc_305_50_FC451C = 0
  loc_FC4507:     ' Referenced from: FC4435
  loc_FC4507:   End If
  loc_FC450A: Next var_D4 'Integer
  loc_FC4514: Proc_305_50_FC451C = &HFF
End Sub
