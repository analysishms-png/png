VERSION 5.00
Begin VB.Form HKIssRec
  Caption = "Issue/Receive Entry"
  BackColor = &HE1E1E1&
  ForeColor = &H40&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 10455
  ClientHeight = 5475
  LockControls = -1  'True
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin TextBox Txt
    Index = 3
    Left = 1185
    Top = 750
    Width = 3345
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin DataGrid DGItem
    Left = 0
    Top = 4785
    Width = 6000
    Height = 3450
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 4
    Left = 7140
    Top = 750
    Width = 2940
    Height = 225
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 40
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
  Begin TextBox Txt
    Index = 0
    Left = 1185
    Top = 490
    Width = 2865
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin TextBox Txt
    Index = 1
    Left = 7140
    Top = 490
    Width = 1200
    Height = 240
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 8
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
  Begin TextBox Txt
    Index = 2
    Left = 8835
    Top = 490
    Width = 1245
    Height = 240
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 12
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFC0&
    ForeColor = &H80000012&
    Left = 1050
    Top = 2985
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGRoom
    Left = 630
    Top = 4515
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSHFlexGrid FGrid
    Left = 75
    Top = 1215
    Width = 10275
    Height = 2805
    TabIndex = 3
  End
  Begin DataGrid DGVType
    Left = 1275
    Top = 4125
    Width = 4215
    Height = 3645
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11835
    Height = 375
    TabIndex = 0
  End
  Begin DataGrid DGDepart
    Left = 6045
    Top = 4230
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 16
  End
  Begin Label Label1
    Caption = "Department"
    Index = 0
    ForeColor = &H404040&
    Left = 105
    Top = 765
    Width = 990
    Height = 210
    TabIndex = 14
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Vr. No."
    Index = 3
    ForeColor = &H404040&
    Left = 5790
    Top = 510
    Width = 585
    Height = 210
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "V.Type "
    Index = 4
    ForeColor = &H404040&
    Left = 105
    Top = 505
    Width = 660
    Height = 210
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Date"
    Index = 1
    ForeColor = &H404040&
    Left = 8400
    Top = 510
    Width = 390
    Height = 210
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H404040&
    Left = 6405
    Top = 495
    Width = 645
    Height = 240
    TabIndex = 8
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "DocID"
    Index = 12
    ForeColor = &H404040&
    Left = 6495
    Top = 750
    Width = 555
    Height = 210
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "HKIssRec"

Private global_80 As Integer
Private global_82 As Integer
Private MasterFormExit As Integer
Private global_120 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '114E23C
  'Data Table: 4ABF24
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_114DEB6: Set var_88 = Me.TxtGrid
  loc_114DEBC: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_114DECA: Proc_6_74_E23240(var_8C)
  loc_114DED6: Call Proc_36_51_EF7D18(var_8C)
  loc_114DEE7: If (Index = 0) Then
  loc_114DF00:   Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_114DF1B:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114DF5A:   Set var_108 = Me.TxtGrid
  loc_114DF60:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_114DF68:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_114DF99:   var_114 = CLng(Me.FGrid.Col)
  loc_114DFA9:   If (var_114 = CLng(1)) Then
  loc_114DFED:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_114DFF0:       Exit Sub
  loc_114DFF1:     End If
  loc_114DFF7:     Me.MoveFirst
  loc_114E00F:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114E017:     var_E4 = CVar(CLng(1)) 'Long
  loc_114E05B:     Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_114E08B:     If (Me.EOF = &HFF) Then
  loc_114E094:       Me.MoveFirst
  loc_114E099:     End If
  loc_114E0A2:     CVarUnk
  loc_114E0A7:     VerifyVarObj
  loc_114E0AD:     Set var_88 = Me.DGRoom
  loc_114E0B3:     LateIdStAd
  loc_114E0C4:   Else
  loc_114E0CB:     If (var_114 = CLng(2)) Then
  loc_114E10F:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_114E112:         Exit Sub
  loc_114E113:       End If
  loc_114E119:       Me.MoveFirst
  loc_114E131:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114E139:       var_E4 = CVar(CLng(7)) 'Long
  loc_114E142:       Set var_8C = Me.FGrid
  loc_114E148:       var_D4 = var_8C.TextMatrix)
  loc_114E17D:       Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_114E1AD:       If (Me.EOF = &HFF) Then
  loc_114E1B6:         Me.MoveFirst
  loc_114E1BB:       End If
  loc_114E1C4:       CVarUnk
  loc_114E1C9:       VerifyVarObj
  loc_114E1CF:       Set var_88 = Me.DGItem
  loc_114E1D5:       LateIdStAd
  loc_114E1E6:     Else
  loc_114E1ED:       If (var_114 = CLng(4)) Then
  loc_114E1FF:         Set var_88 = Me.TxtGrid
  loc_114E205:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, var_88, global_60, var_134, var_D4)
  loc_114E20D:         var_8C.MaxLength = var_E4
  loc_114E222:         If (global_82 = 0) Then
  loc_114E22D:           var_110 = "{Home}+{End}"
  loc_114E233:           Proc_303_0_FBACC8(CStr(var_D4), 0, var_A4, var_88)
  loc_114E23B:         End If
  loc_114E23B:       End If
  loc_114E23B:     End If
  loc_114E23B:   End If
  loc_114E23B: End If
  loc_114E23B: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12408D4
  'Data Table: 4ABF24
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_DC As Variant
  Dim var_98 As DataGrid
  loc_12403A8: If (KeyCode = 0) Then
  loc_12403B5:   If (CLng(Shift) = &H1B) Then
  loc_12403C5:     Set var_8C = Me.TxtGrid
  loc_12403CB:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_12403E5:     Set var_98 = Me.TxtGrid
  loc_12403EB:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12403F3:     var_9C.Text = var_90.Tag
  loc_124040F:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1240414:     Call Proc_36_51_EF7D18(arg_14)
  loc_124041D:     Set var_8C = Me.FGrid
  loc_124043A:     Set var_8C = Me.TxtGrid
  loc_1240440:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1240448:     var_90.Visible = FGrid.DispID_8001
  loc_1240454:     Exit Sub
  loc_1240455:   End If
  loc_1240478:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_1240493:     Set var_9C = Nothing
  loc_12404CC:     Proc_6_69_134A630(Me.DGRoom, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_12404EA:     If (CLng(Shift) = &HD) Then
  loc_12404F3:       Call Proc_36_46_13959B4(KeyCode, var_B2, 1, Nothing)
  loc_12404FE:       If (var_B2 = &HFF) Then
  loc_124050C:         Set var_9C = Me.TxtGrid
  loc_1240535:         Set var_90 = var_9C
  loc_1240544:         Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_82, 4, 0)
  loc_1240554:       End If
  loc_1240554:     End If
  loc_1240561:     Set var_98 = Me.TxtGrid
  loc_1240567:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_CC, 0, 0)
  loc_124056F:     var_9C = var_9C.Height
  loc_1240581:     Set var_8C = Me.TxtGrid
  loc_1240587:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_124058F:     0 = var_90.Top
  loc_124059B:     var_DC = CVar((var_C8 + var_CC)) 'Single
  loc_12405AA:     Me.DGRoom.Top = var_DC
  loc_12405C9:     Set var_8C = Me.TxtGrid
  loc_12405CF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_12405D7:     var_B0 = var_90.Left
  loc_12405EE:     Me.DGRoom.Left = CVar(var_C8)
  loc_12405FF:   Else
  loc_1240606:     If (var_B0 = CLng(2)) Then
  loc_1240621:       Set var_9C = Nothing
  loc_124065A:       Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_1240678:       If (CLng(Shift) = &HD) Then
  loc_1240681:         Call Proc_36_46_13959B4(KeyCode, var_B2, 1, Nothing)
  loc_124068C:         If (var_B2 = &HFF) Then
  loc_124069A:           Set var_9C = Me.TxtGrid
  loc_12406C3:           Set var_90 = var_9C
  loc_12406D2:           Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_82, 4)
  loc_12406E2:         End If
  loc_12406E2:       End If
  loc_12406EF:       Set var_98 = Me.TxtGrid
  loc_12406F5:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_CC, 0, 4)
  loc_12406FD:       0 = var_9C.Height
  loc_124070F:       Set var_8C = Me.TxtGrid
  loc_1240715:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_124071D:       var_9C = var_90.Top
  loc_1240729:       var_DC = CVar((var_C8 + var_CC)) 'Single
  loc_1240738:       Me.DGItem.Top = CVar(var_C8)
  loc_1240757:       Set var_8C = Me.TxtGrid
  loc_124075D:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_1240765:       0 = var_90.Left
  loc_124077C:       Me.DGItem.Left = CVar(var_C8)
  loc_124078D:     Else
  loc_1240794:       If (var_B0 = CLng(3)) Then
  loc_12407A1:         If (CLng(Shift) = &HD) Then
  loc_12407AA:           Call Proc_36_46_13959B4(KeyCode, var_B2)
  loc_12407B5:           If (var_B2 = &HFF) Then
  loc_1240802:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82)
  loc_1240812:           End If
  loc_1240812:         End If
  loc_1240815:       Else
  loc_124081C:         If (var_B0 = CLng(4)) Then
  loc_124085F:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_82 = &HFF))) Then
  loc_1240868:             Call Proc_36_46_13959B4(KeyCode, var_B2, CByte((CInt(4) + 1)), 0)
  loc_1240873:             If (var_B2 = &HFF) Then
  loc_12408C0:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82, CByte((CInt(4) + 1)))
  loc_12408D0:             End If
  loc_12408D0:           End If
  loc_12408D0:         End If
  loc_12408D0:       End If
  loc_12408D0:     End If
  loc_12408D0:   End If
  loc_12408D0: End If
  loc_12408D0: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F7102C
  'Data Table: 4ABF24
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F70EEF: Proc_6_58_E06050(arg_10)
  loc_F70F00: If (KeyAscii = 0) Then
  loc_F70F16:   var_A0 = CLng(Me.FGrid.Col)
  loc_F70F26:   If (var_A0 = CLng(1)) Then
  loc_F70F45:     If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F70F57:       var_A4 = "Name"
  loc_F70F72:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_64, arg_10)
  loc_F70F81:     End If
  loc_F70F84:   Else
  loc_F70F8B:     If (var_A0 = CLng(2)) Then
  loc_F70FAA:       If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F70FB1:         Set var_AC = Me.TxtGrid
  loc_F70FBC:         var_A4 = "Name"
  loc_F70FD7:         Proc_6_89_1470B00(var_AC, KeyAscii, global_60, arg_10, var_A4)
  loc_F70FE6:       End If
  loc_F70FE9:     Else
  loc_F70FF0:       If (var_A0 = CLng(4)) Then
  loc_F70FFD:         Set var_8C = Me.TxtGrid
  loc_F71003:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0, var_A4)
  loc_F7101E:         Proc_6_42_129B55C(var_AC, arg_10, 8, 3)
  loc_F7102A:       End If
  loc_F7102A:     End If
  loc_F7102A:   End If
  loc_F7102A: End If
  loc_F7102A: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F63328
  'Data Table: 4ABF24
  Dim var_A0 As Long
  loc_F631F8: On Error Goto loc_F63322
  loc_F63207: If (KeyCode = 0) Then
  loc_F6321D:   var_A0 = CLng(Me.FGrid.Col)
  loc_F6322D:   If (var_A0 = CLng(1)) Then
  loc_F63253:     If ((Shift <> &HD) And (CBool(Me.DGRoom.Visible) = 0)) Then
  loc_F63264:       Call TxtGrid_KeyDown(KeyCode, global_80)
  loc_F63293:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_64, Shift, "Name")
  loc_F632A2:     End If
  loc_F632A5:   Else
  loc_F632AC:     If (var_A0 = CLng(2)) Then
  loc_F632D2:       If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F632E3:         Call TxtGrid_KeyDown(KeyCode, global_80)
  loc_F63312:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_60, Shift, "Name", &HFF)
  loc_F63321:       End If
  loc_F63321:     End If
  loc_F63321:   End If
  loc_F63321: End If
  loc_F63321: Exit Sub
  loc_F63322: ' Referenced from: F631F8
  loc_F63322: Proc_6_60_E63754(0, &HFF, 0)
  loc_F63327: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21218
  'Data Table: 4ABF24
  Dim arg_10 As Integer
  loc_E21200: If (Cancel = 0) Then
  loc_E21209:   Call Proc_36_46_13959B4(Cancel, var_88)
  loc_E21212:   arg_10 = Not(var_88)
  loc_E21215: End If
  loc_E21215: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 '1045434
  'Data Table: 4ABF24
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_10451E0: On Error Goto loc_104542D
  loc_10451F2: Me.DGRoom.Visible = False
  loc_1045211: If (Me.RecordCount > 0) Then
  loc_104524E:   Set var_B4 = Me.TxtGrid
  loc_1045254:   Call 0.Method_DGRoom_UnknownEvent_90 (0, var_B8)
  loc_104525C:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_1045285:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104528D:   var_EC = CVar(CLng(1)) 'Long
  loc_10452C0:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10452C8:   Set var_B8 = Me.FGrid
  loc_10452CE:   LateIdCallSt
  loc_10452FD:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1045305:   var_EC = CVar(CLng(8)) 'Long
  loc_1045338:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1045340:   Set var_B8 = Me.FGrid
  loc_1045346:   LateIdCallSt
  loc_1045375:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104537D:   var_EC = CVar(CLng(9)) 'Long
  loc_104539F:   var_B0 = Me.Fields.Item("RoomCat")
  loc_10453B0:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_10453B8:   Set var_B8 = Me.FGrid
  loc_10453BE:   LateIdCallSt
  loc_10453DA: End If
  loc_10453E6: Set var_A8 = Me.TxtGrid
  loc_10453EC: Call 0.Method_DGRoom_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC, var_A4)
  loc_10453F4: var_B8 = var_B0.Visible
  loc_1045406: If (var_12E = &HFF) Then
  loc_1045412:   Set var_A8 = Me.TxtGrid
  loc_1045418:   Call 0.Method_DGRoom_UnknownEvent_90 (0, var_B0, var_11C, var_EC)
  loc_1045420:   var_B0.SetFocus
  loc_104542C: End If
  loc_104542C: Exit Sub
  loc_104542D: ' Referenced from: 10451E0
  loc_104542D: Proc_6_60_E63754(var_A4, var_B8)
  loc_1045432: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10F4350
  'Data Table: 4ABF24
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_10F403A: Set var_88 = Me.Txt
  loc_10F4040: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10F404E: Proc_6_74_E23240(var_8C)
  loc_10F405A: Call Proc_36_51_EF7D18(var_8C)
  loc_10F4062: var_92 = Index
  loc_10F406D: If (var_92 = CInt(0)) Then
  loc_10F4083:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_10F40DC:   Set var_88 = Me.Txt
  loc_10F40E2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_10F40EA:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10F4102:   If (var_92 Or (var_C0 = vbNullString)) Then
  loc_10F4105:     Exit Sub
  loc_10F4106:   End If
  loc_10F4113:   Set var_88 = Me.Txt
  loc_10F4119:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F4121:   var_C0 = var_8C.Text
  loc_10F4129:   var_D4 = CVar(var_C0) 'String
  loc_10F416E:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10F4177:     Me.MoveFirst
  loc_10F419C:     Set var_88 = Me.Txt
  loc_10F41A2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_10F41AA:     0 = var_8C.Text
  loc_10F41B8:     Proc_6_17_EAAE40(var_D4, CVar(var_C0))
  loc_10F41CE:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_10F41E6:   End If
  loc_10F41E9: Else
  loc_10F41F1:   If (var_92 = CInt(3)) Then
  loc_10F4242:     Set var_88 = Me.Txt
  loc_10F4248:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F4268:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_10F426B:       Exit Sub
  loc_10F426C:     End If
  loc_10F4279:     Set var_88 = Me.Txt
  loc_10F427F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F4287:     var_C0 = var_8C.Text
  loc_10F428F:     var_D4 = CVar(var_C0) 'String
  loc_10F42D4:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10F42DD:       Me.MoveFirst
  loc_10F4302:       Set var_88 = Me.Txt
  loc_10F4308:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_10F4310:       0 = var_8C.Text
  loc_10F431E:       Proc_6_17_EAAE40(var_D4, CVar(var_C0))
  loc_10F4334:       Me.Find CStr(1 & var_D4), var_F8, 
  loc_10F434C:     End If
  loc_10F434C:   End If
  loc_10F434C: End If
  loc_10F434C: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '105FCC4
  'Data Table: 4ABF24
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_105FA62: If (CLng(Shift) = &H1B) Then
  loc_105FA65:   Call Proc_36_51_EF7D18()
  loc_105FA6A:   Exit Sub
  loc_105FA6B: End If
  loc_105FA6E: var_86 = KeyCode
  loc_105FA79: If (var_86 = CInt(0)) Then
  loc_105FA94:   Set var_9C = Nothing
  loc_105FA9F:   Set var_98 = Nothing
  loc_105FACD:   Proc_6_69_134A630(Me.DGVType, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_105FAE4: Else
  loc_105FAEC:   If (var_86 = CInt(3)) Then
  loc_105FB07:     Set var_9C = Nothing
  loc_105FB40:     Proc_6_69_134A630(Me.DGDepart, Me.Txt, KeyCode, global_68, Shift, 0, 1, Nothing)
  loc_105FB54:   End If
  loc_105FB54: End If
  loc_105FB85: Set var_98 = Me.DGRoom
  loc_105FB9C: Set var_9C = Me.DGDepart
  loc_105FBC5: If ((((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_105FBDD:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_105FBE6:     Proc_6_75_E5335C(Shift, arg_14, var_9C, 0, 1)
  loc_105FBEB:   End If
  loc_105FBEF:   Set var_8C = Me.TopCtrl1
  loc_105FBF5:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_98)
  loc_105FC22:   If CBool((var_9C = "Add") And (KeyCode <> CInt(0))) Then
  loc_105FC3A:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_105FC43:       Proc_6_76_E533C8(Shift, arg_14)
  loc_105FC48:     End If
  loc_105FC4B:   Else
  loc_105FC4F:     Set var_8C = Me.TopCtrl1
  loc_105FC55:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(0)
  loc_105FC82:     If CBool((var_86 = "Edit") And (KeyCode <> CInt(2))) Then
  loc_105FC9A:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_105FCA3:         Proc_6_76_E533C8(Shift)
  loc_105FCA8:       End If
  loc_105FCA8:     End If
  loc_105FCA8:   End If
  loc_105FCBD:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_105FCC0:   End If
  loc_105FCC0: End If
  loc_105FCC0: Exit Sub
  loc_105FCC1: arg_14 = 
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F76FFC
  'Data Table: 4ABF24
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F76EB8: On Error Goto loc_F76FF6
  loc_F76EBE: Proc_6_58_E06050(arg_10)
  loc_F76EC6: var_86 = KeyAscii
  loc_F76ED1: If (var_86 = CInt(0)) Then
  loc_F76EF0:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F76F06:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_F76F15:     Set var_B8 = Me.Txt
  loc_F76F20:     var_B0 = "Name"
  loc_F76F3B:     Proc_6_89_1470B00(var_B8, KeyAscii, global_56, arg_10)
  loc_F76F4A:   End If
  loc_F76F4D: Else
  loc_F76F55:   If (var_86 = CInt(1)) Then
  loc_F76F62:     Set var_8C = Me.Txt
  loc_F76F68:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_F76F83:     Proc_6_42_129B55C(var_B8, arg_10, 8)
  loc_F76F92:   Else
  loc_F76F9A:     If (var_86 = CInt(3)) Then
  loc_F76FB9:       If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F76FE6:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F76FF5:       End If
  loc_F76FF5:     End If
  loc_F76FF5:   End If
  loc_F76FF5: End If
  loc_F76FF5: Exit Sub
  loc_F76FF6: ' Referenced from: F76EB8
  loc_F76FF6: Proc_6_60_E63754(0, 0)
  loc_F76FFB: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFFEFC
  'Data Table: 4ABF24
  Dim var_86 As Integer
  loc_DFFEF7: var_86 = KeyCode
  loc_DFFEFA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46A5C
  'Data Table: 4ABF24
  loc_E46A3A: Set var_88 = Me.Txt
  loc_E46A40: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46A4E: Proc_6_73_E23294(var_8C)
  loc_E46A5A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '146D944
  'Data Table: 4ABF24
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_10C As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_160 As TextBox
  Dim var_184 As Variant
  Dim var_18C As TextBox
  Dim var_1B0 As Variant
  Dim var_130 As String
  Dim unk_4ABF42 As Connection15
  Dim var_9C As Variant
  Dim var_15C As Variant
  Dim var_CC As Variant
  loc_146CD84: On Error Goto loc_146D93B
  loc_146CD8A: var_8E = Cancel
  loc_146CD95: If (var_8E = CInt(0)) Then
  loc_146CDA3:   Set var_94 = Me.Txt
  loc_146CDA9:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_146CDB1:   var_A0 = "Voucher Type"
  loc_146CDD2:   If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_146CDE0:     Set var_94 = Me.Txt
  loc_146CDE6:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_146CDEE:     var_98.SetFocus
  loc_146CDFC:     arg_10 = &HFF
  loc_146CDFF:     Exit Sub
  loc_146CE00:   End If
  loc_146CE4E:   Set var_94 = Me.Txt
  loc_146CE54:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_146CE5C:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_146CE74:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_146CE84:     Set var_94 = Me.Txt
  loc_146CE8A:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146CE92:     var_98.Text = vbNullString
  loc_146CEAB:     Set var_94 = Me.Txt
  loc_146CEB1:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146CEB9:     var_98.Tag = vbNullString
  loc_146CECB:     global_124 = vbNullString
  loc_146CED2:   Else
  loc_146CF0D:     Set var_9C = Me.Txt
  loc_146CF13:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146CF1B:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_146CF6C:     Set var_9C = Me.Txt
  loc_146CF72:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146CF7A:     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_146CFAD:     var_98 = Me.Fields.Item("NCat")
  loc_146CFBE:     var_A0 = CStr(var_98.Value)
  loc_146CFC4:     global_124 = var_A0
  loc_146CFD9:     Set var_94 = Me.TopCtrl1
  loc_146CFDF:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_8E)
  loc_146CFF4:     If ( = "Add") Then
  loc_146D002:       If (global_88 = "Automatic") Then
  loc_146D012:         Set var_94 = Me.Txt
  loc_146D018:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146D020:         var_98.Enabled = False
  loc_146D02F:       Else
  loc_146D03C:         Set var_94 = Me.Txt
  loc_146D042:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146D04A:         var_98.Enabled = True
  loc_146D061:         Set var_94 = Me.Txt
  loc_146D067:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_146D06F:         var_98.SetFocus
  loc_146D07B:       End If
  loc_146D07B:     End If
  loc_146D07B:   End If
  loc_146D07F:   Set var_94 = Me.TopCtrl1
  loc_146D085:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_98)
  loc_146D09A:   If ( = "Add") Then
  loc_146D0A3:     Call Proc_36_53_11061C4(MemVar_1F95044)
  loc_146D0B6:     Set var_94 = Me.Txt
  loc_146D0BC:     Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_146D0C4:     var_98.Text = var_A0
  loc_146D0D3:   End If
  loc_146D0D6: Else
  loc_146D0DE:   If (var_8E = CInt(1)) Then
  loc_146D0EC:     Set var_94 = Me.Txt
  loc_146D0F2:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146D0FA:     var_A0 = "Vr. No"
  loc_146D11B:     If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_146D129:       Set var_94 = Me.Txt
  loc_146D12F:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146D137:       var_98.SetFocus
  loc_146D145:       arg_10 = &HFF
  loc_146D148:       Exit Sub
  loc_146D149:     End If
  loc_146D157:     Set var_94 = Me.Txt
  loc_146D15D:     Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0)
  loc_146D165:     arg_10 = var_98.Text
  loc_146D17D:     If (CDbl(var_A0) = CDbl(0)) Then
  loc_146D199:       MsgBox("Vr. No Can Not Be 0", 0, var_DC, var_10C, var_12C)
  loc_146D1B3:       Set var_94 = Me.Txt
  loc_146D1B9:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146D1C1:       var_98.SetFocus
  loc_146D1CF:       arg_10 = &HFF
  loc_146D1D2:       Exit Sub
  loc_146D1D3:     End If
  loc_146D1D7:     Set var_94 = Me.TopCtrl1
  loc_146D1DD:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(arg_10)
  loc_146D1F2:     If (var_A0 = "Add") Then
  loc_146D205:       var_A0 = Proc_6_45_EADFB8(MemVar_1F95070, 2)
  loc_146D21A:       Set var_94 = Me.Txt
  loc_146D220:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_146D247:       Set var_9C = Me.Txt
  loc_146D24D:       Call 0.Method_Txt_Validate0 (CInt(0), var_BC, var_138)
  loc_146D255:       5 = var_BC.Tag
  loc_146D262:       var_CC = Space((CVar(MemVar_1F9506C & var_A0 & var_98.Tag) - Len(var_138)))
  loc_146D26A:       var_10C = ( + "Vr. No Can Not Be 0")
  loc_146D27E:       var_12C = Space((5 - Len(global_116)))
  loc_146D286:       var_148 = (var_10C + var_12C)
  loc_146D293:       var_158 = (var_148 + CVar(global_116))
  loc_146D2AA:       Set var_15C = Me.Txt
  loc_146D2B0:       Call 0.Method_Txt_Validate0 (CInt(1), var_160, var_164)
  loc_146D2B8:       8 = var_160.Text
  loc_146D2C5:       var_174 = Space((var_158 - Len(var_164)))
  loc_146D2CD:       var_184 = ( + var_174)
  loc_146D2DF:       Set var_188 = Me.Txt
  loc_146D2E5:       Call 0.Method_Txt_Validate0 (CInt(1), var_18C)
  loc_146D2F8:       var_1B0 = (var_184 + CVar(var_18C.Text))
  loc_146D351:       Set var_94 = Me.Txt
  loc_146D357:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_146D35F:       var_98.Text = CStr(var_1B0)
  loc_146D37B:       Me.LblVPrefix.Caption = global_116
  loc_146D383:     End If
  loc_146D387:     Set var_94 = Me.TopCtrl1
  loc_146D38D:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_146D3A2:     If ( = "Add") Then
  loc_146D3D2:       Set var_94 = Me.Txt
  loc_146D3D8:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0, "Select Count(*) From STOCK Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_146D3E9:       var_130 = var_BC & var_A0
  loc_146D3F9:       unk_4ABF42.Execute var_130 & "'", 0, var_15C
  loc_146D409:        = var_BC.Item()
  loc_146D411:        = var_15C.Value
  loc_146D43E:       If (var_98.Text.Fields > 0) Then
  loc_146D447:         Call 0.Method_arg_50 (var_A0)
  loc_146D468:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_A0), var_10C, var_12C)
  loc_146D47E:         Call Proc_36_53_11061C4(MemVar_1F95044)
  loc_146D48E:         If (var_A0 = vbNullString) Then
  loc_146D49B:           Set var_94 = Me.Txt
  loc_146D4A1:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146D4A9:           var_98.SetFocus
  loc_146D4B7:           arg_10 = &HFF
  loc_146D4BA:           Exit Sub
  loc_146D4BB:         End If
  loc_146D4C1:         Call Proc_36_53_11061C4(MemVar_1F95044, var_A0)
  loc_146D4D4:         Set var_94 = Me.Txt
  loc_146D4DA:         Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0)
  loc_146D4E2:         var_98.Text = arg_10
  loc_146D4F3:         arg_10 = &HFF
  loc_146D4F6:         Exit Sub
  loc_146D4F7:       End If
  loc_146D4F7:     End If
  loc_146D4FA:   Else
  loc_146D502:     If (var_8E = CInt(2)) Then
  loc_146D513:       Set var_94 = Me.Txt
  loc_146D519:       Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_A0)
  loc_146D521:       arg_10 = var_98.Text
  loc_146D537:       var_10C = Len(Trim(CVar(var_A0)))
  loc_146D551:       If (var_10C = 0) Then
  loc_146D567:         Set var_94 = Me.Txt
  loc_146D56D:         Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_146D575:         var_98.Text = CStr(MemVar_1F950EC)
  loc_146D587:       Else
  loc_146D591:         Set var_94 = Me.Txt
  loc_146D597:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146D5B7:         Set var_BC = Me.Txt
  loc_146D5BD:         Call 0.Method_Txt_Validate0 (Cancel, var_15C)
  loc_146D5C5:         var_15C.Text = Proc_6_33_15125B8(var_98)
  loc_146D5D8:       End If
  loc_146D5E5:       Set var_94 = Me.Txt
  loc_146D5EB:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146D5F3:       var_A0 = var_98.Text
  loc_146D60E:       Set var_9C = Me.Txt
  loc_146D614:       Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_130)
  loc_146D61C:       (CDate(var_A0) >= MemVar_1F950F4) = var_BC.Text
  loc_146D63E:       If Not((var_A0 And (CDate(var_130) <= MemVar_1F950FC))) Then
  loc_146D662:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_10C, var_12C)
  loc_146D67C:         Set var_94 = Me.Txt
  loc_146D682:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_146D68A:         var_98.SetFocus
  loc_146D698:         arg_10 = &HFF
  loc_146D69B:         Exit Sub
  loc_146D69C:       End If
  loc_146D6A0:       Set var_94 = Me.TopCtrl1
  loc_146D6A6:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(arg_10)
  loc_146D6C5:       Set var_98 = Me.Txt
  loc_146D6CB:       Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_146D6D3:       var_A0 = var_9C.Text
  loc_146D6FD:       If CBool((var_98 = "Add") And (var_A0 = vbNullString)) Then
  loc_146D706:         Call Proc_36_53_11061C4(MemVar_1F95044)
  loc_146D719:         Set var_94 = Me.Txt
  loc_146D71F:         Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_146D727:         var_98.Text = var_A0
  loc_146D736:       End If
  loc_146D739:     Else
  loc_146D741:       If (var_8E = CInt(3)) Then
  loc_146D74F:         Set var_94 = Me.Txt
  loc_146D755:         Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_146D75D:         var_A0 = "Depart"
  loc_146D77E:         If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_146D78C:           Set var_94 = Me.Txt
  loc_146D792:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_146D79A:           var_98.SetFocus
  loc_146D7A8:           arg_10 = &HFF
  loc_146D7AB:           Exit Sub
  loc_146D7AC:         End If
  loc_146D7FA:         Set var_94 = Me.Txt
  loc_146D800:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_146D808:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_146D820:         If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_146D830:           Set var_94 = Me.Txt
  loc_146D836:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146D83E:           var_98.Text = vbNullString
  loc_146D857:           Set var_94 = Me.Txt
  loc_146D85D:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146D865:           var_98.Tag = vbNullString
  loc_146D874:         Else
  loc_146D8AF:           Set var_9C = Me.Txt
  loc_146D8B5:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146D8BD:           var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_146D901:           var_A0 = CStr(Me.Fields.Item("Code").Value)
  loc_146D90E:           Set var_9C = Me.Txt
  loc_146D914:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146D91C:           var_BC.Tag = var_A0
  loc_146D932:         End If
  loc_146D932:       End If
  loc_146D932:     End If
  loc_146D932:   End If
  loc_146D932: End If
  loc_146D937: Set var_88 = Nothing
  loc_146D93A: Exit Sub
  loc_146D93B: ' Referenced from: 146CD84
  loc_146D93B: Proc_6_60_E63754(var_A0)
  loc_146D940: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA82DC
  'Data Table: 4ABF24
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA8277: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_104)) Then
  loc_EA828D:   Me.FGrid.Col = 1
  loc_EA8295: End If
  loc_EA82A8: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA82BB: Set var_88 = Me.TxtGrid
  loc_EA82C1: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA82C9: var_BC.Visible = False
  loc_EA82D5: Call Proc_36_51_EF7D18()
  loc_EA82DA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69C90
  'Data Table: 4ABF24
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69C4C: Set var_88 = Me.TxtGrid
  loc_E69C52: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E69C6C: If (var_8C.Visible = 0) Then
  loc_E69C85:   Me.FGrid.BackColorSel = CVar(CLng(global_104))
  loc_E69C8D: End If
  loc_E69C8D: Exit Sub
  loc_E69C8E: Set var_5388 = 
End Sub

Private Sub FGrid_UnknownEvent_9 'E00394
  'Data Table: 4ABF24
  loc_E0038C: Call Proc_36_45_E39840()
  loc_E00391: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '11B18F4
  'Data Table: 4ABF24
  Dim var_98 As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_11B14C0: Set var_88 = Me.TopCtrl1
  loc_11B14C6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_11B1516: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_11B151F:   Call Form_KeyDown(Cancel, arg_10)
  loc_11B1524: End If
  loc_11B1528: Set var_88 = Me.TopCtrl1
  loc_11B152E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_11B1543: If ( = "Browse") Then
  loc_11B1546:   Exit Sub
  loc_11B1547: End If
  loc_11B15BB: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11B15D4:   Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_11B15E4:   var_DC = "+{Tab}"
  loc_11B15EA:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_11B15F4:   Cancel = 0
  loc_11B15FA: Else
  loc_11B1604:   var_B8 = Me.FGrid.Rows
  loc_11B1651:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_11B166A:     Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_11B1677:     Call Proc_36_52_F0BC0C(0, var_B8, Cancel)
  loc_11B167C:   End If
  loc_11B167C: End If
  loc_11B1682: global_80 = Cancel
  loc_11B16A8: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11B16CC: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_11B16E2:   var_EC = CLng(Me.FGrid.Col)
  loc_11B16F2:   If (var_EC = CLng(1)) Then
  loc_11B1708:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B1720:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11B1725:     var_11C = vbNullString
  loc_11B172F:     Set var_E4 = Me.FGrid
  loc_11B1735:     LateIdCallSt
  loc_11B1760:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B1768:     var_FC = CVar(CLng(8)) 'Long
  loc_11B176D:     var_11C = vbNullString
  loc_11B1777:     Set var_E0 = Me.FGrid
  loc_11B177D:     LateIdCallSt
  loc_11B1792:   Else
  loc_11B1799:     If (var_EC = CLng(2)) Then
  loc_11B17AF:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B17C7:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11B17CC:       var_11C = vbNullString
  loc_11B17D6:       Set var_E4 = Me.FGrid
  loc_11B17DC:       LateIdCallSt
  loc_11B1807:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B180F:       var_FC = CVar(CLng(7)) 'Long
  loc_11B1814:       var_11C = vbNullString
  loc_11B181E:       Set var_E0 = Me.FGrid
  loc_11B1824:       LateIdCallSt
  loc_11B1849:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B1851:       var_FC = CVar(CLng(4)) 'Long
  loc_11B1856:       var_11C = vbNullString
  loc_11B1860:       Set var_E0 = Me.FGrid
  loc_11B1866:       LateIdCallSt
  loc_11B187B:     Else
  loc_11B1882:       If (var_EC = CLng(4)) Then
  loc_11B1898:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B18B0:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11B18B5:         var_11C = vbNullString
  loc_11B18BF:         Set var_E4 = Me.FGrid
  loc_11B18C5:         LateIdCallSt
  loc_11B18DD:       End If
  loc_11B18DD:     End If
  loc_11B18DD:   End If
  loc_11B18DD: End If
  loc_11B18E3: If (Cancel = &HD) Then
  loc_11B18EB:   global_82 = 0
  loc_11B18EE: End If
  loc_11B18F0: Cancel = 0
  loc_11B18F3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0F058
  'Data Table: 4ABF24
  loc_E0F049: Call FGrid_UnknownEvent_C()
  loc_E0F053: global_82 = 0
  loc_E0F056: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '112BA3C
  'Data Table: 4ABF24
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Long
  Dim var_C0 As String
  Dim var_DA As Integer
  Dim var_C4 As TextBox
  Dim var_D4 As TextBox
  loc_112B6D0: Set var_88 = Me.TopCtrl1
  loc_112B6D6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_112B6EB: If ( = "Browse") Then
  loc_112B6EE:   Exit Sub
  loc_112B6EF: End If
  loc_112B702: var_BC = CLng(Me.FGrid.Col)
  loc_112B712: If (var_BC = CLng(1)) Then
  loc_112B719:   Set var_D4 = Me.FGrid
  loc_112B73D:   var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_112B76A:   Set var_C4 = var_D4
  loc_112B77C:   Proc_6_63_110B734(Me, var_C4, Me.TxtGrid, 0, 0)
  loc_112B7A4:   Set var_88 = Me.TxtGrid
  loc_112B7AA:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, Asc(var_C0))
  loc_112B7B2:   0 = var_C4.Text
  loc_112B7CB:   If (Len(var_C0) <= 1) Then
  loc_112B7DA:     Set var_88 = Me.TxtGrid
  loc_112B7E0:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_112B7E8:     var_DA = var_C4.Text
  loc_112B7F9:     Set var_C8 = Me.TxtGrid
  loc_112B7FF:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_112B807:     var_D4.Text = var_C0
  loc_112B81A:   End If
  loc_112B826:   Set var_88 = Me.TxtGrid
  loc_112B82C:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_112B846:   Set var_C8 = Me.TxtGrid
  loc_112B84C:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_112B854:   var_D4.SelStart = Len(var_C4.Text)
  loc_112B86A: Else
  loc_112B871:   If (var_BC = CLng(2)) Then
  loc_112B878:     Set var_D4 = Me.FGrid
  loc_112B89C:     var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_112B8C9:     Set var_C4 = var_D4
  loc_112B8DB:     Proc_6_63_110B734(Me, var_C4, Me.TxtGrid, 0, 0)
  loc_112B903:     Set var_88 = Me.TxtGrid
  loc_112B909:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, Asc(var_C0))
  loc_112B911:     0 = var_C4.Text
  loc_112B92A:     If (Len(var_C0) <= 1) Then
  loc_112B939:       Set var_88 = Me.TxtGrid
  loc_112B93F:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_112B947:       var_DA = var_C4.Text
  loc_112B958:       Set var_C8 = Me.TxtGrid
  loc_112B95E:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_112B966:       var_D4.Text = var_C0
  loc_112B979:     End If
  loc_112B985:     Set var_88 = Me.TxtGrid
  loc_112B98B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_112B9A5:     Set var_C8 = Me.TxtGrid
  loc_112B9AB:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_112B9B3:     var_D4.SelStart = Len(var_C4.Text)
  loc_112B9C9:   Else
  loc_112B9D0:     If (var_BC = CLng(4)) Then
  loc_112BA11:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_112BA23:     End If
  loc_112BA23:   End If
  loc_112BA23: End If
  loc_112BA2D: If (CLng(Cancel) <> &HD) Then
  loc_112BA35:   global_82 = &HFF
  loc_112BA38: End If
  loc_112BA38: Exit Sub
  loc_112BA39: global_82 = &HFF
End Sub

Private Sub FGrid_UnknownEvent_D 'FEA09C
  'Data Table: 4ABF24
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  loc_FE9EC8: Set var_90 = Me.TopCtrl1
  loc_FE9ECE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_FE9EE3: If ( = "Browse") Then
  loc_FE9EE6:   Exit Sub
  loc_FE9EE7: End If
  loc_FE9F04: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FE9F07:   Exit Sub
  loc_FE9F08: End If
  loc_FE9F19: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE9F3B:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE9F75:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FE9F97:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE9FAD:         var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE9FB6:         Set var_114 = Me.FGrid
  loc_FE9FD1:       Else
  loc_FE9FE4:         Me.FGrid.Rows = 1
  loc_FEA00A:         var_B0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FEA012:         Set var_114 = Me.FGrid
  loc_FEA03F:         Me.FGrid.FixedRows = 1
  loc_FEA047:       End If
  loc_FEA047:     End If
  loc_FEA04A:   Else
  loc_FEA06B:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_FEA07B:   End If
  loc_FEA07F:   Set var_90 = Me.FGrid
  loc_FEA090: End If
  loc_FEA095: Set var_8C = Nothing
  loc_FEA098: Exit Sub
  loc_FEA099: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E405F8
  'Data Table: 4ABF24
  Dim var_8C As TextBox
  loc_E405CC: Call Proc_36_51_EF7D18()
  loc_E405DC: Set var_88 = Me.TxtGrid
  loc_E405E2: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E405EA: var_8C.Visible = False
  loc_E405F6: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'FA53C8
  'Data Table: 4ABF24
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FA5250: On Error Goto loc_FA53BF
  loc_FA5262: Me.DGDepart.Visible = False
  loc_FA5281: If (Me.RecordCount > 0) Then
  loc_FA52D3:   Set var_CC = Me.Txt
  loc_FA52D9:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(CStr(Me.DGDepart.Tag)), var_D0)
  loc_FA52E1:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FA5339:   Set var_B4 = Me.DGDepart
  loc_FA5350:   Set var_CC = Me.Txt
  loc_FA5356:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FA535E:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA537E: End If
  loc_FA539C: Set var_B0 = Me.Txt
  loc_FA53A2: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(CStr(Me.DGDepart.Tag)))
  loc_FA53AA: var_B4.SetFocus
  loc_FA53BE: Exit Sub
  loc_FA53BF: ' Referenced from: FA5250
  loc_FA53BF: Proc_6_60_E63754(var_B4)
  loc_FA53C4: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD3758
  'Data Table: 4ABF24
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD359C: On Error Goto loc_FD3750
  loc_FD35AE: Me.DGVType.Visible = False
  loc_FD35CD: If (Me.RecordCount > 0) Then
  loc_FD361F:   Set var_CC = Me.Txt
  loc_FD3625:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD362D:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD3685:   Set var_B4 = Me.DGVType
  loc_FD369C:   Set var_CC = Me.Txt
  loc_FD36A2:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD36AA:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD36FE:   global_124 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD370F: End If
  loc_FD372D: Set var_B0 = Me.Txt
  loc_FD3733: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD373B: var_B4.SetFocus
  loc_FD374F: Exit Sub
  loc_FD3750: ' Referenced from: FD359C
  loc_FD3750: Proc_6_60_E63754(var_B4)
  loc_FD3755: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A77A8
  'Data Table: 4ABF24
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_10C As Variant
  Dim var_13C As Variant
  loc_10A74F3: Me.DGItem.Visible = False
  loc_10A7512: If (Me.RecordCount > 0) Then
  loc_10A754F:   Set var_B4 = Me.TxtGrid
  loc_10A7555:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A755D:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_10A7586:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A758E:   var_EC = CVar(CLng(2)) 'Long
  loc_10A75C1:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A75C9:   Set var_B8 = Me.FGrid
  loc_10A75CF:   LateIdCallSt
  loc_10A75FE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A7606:   var_EC = CVar(CLng(7)) 'Long
  loc_10A7639:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A7647:   LateIdCallSt
  loc_10A766D:   var_10C = Me.FGrid.Row
  loc_10A76AE:   var_11C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")), CVar(CLng(3)), CVar(CLng(var_10C)), Me.FGrid, var_11C, CVar(CLng(3)))) 'String
  loc_10A76BC:   LateIdCallSt
  loc_10A76E0:   var_11C = Me.FGrid.Row
  loc_10A7710:   var_B0 = Me.Fields.Item("LPurRate")
  loc_10A771F:   Proc_6_39_E7D3A0(var_10C, CVar(var_B0), CVar(CLng(5)), CVar(CLng(var_11C)), Me.FGrid, var_11C)
  loc_10A7728:   var_13C = CVar(CStr(var_10C)) 'String
  loc_10A7730:   Set var_B8 = Me.FGrid
  loc_10A7736:   LateIdCallSt
  loc_10A7752: End If
  loc_10A775E: Set var_A8 = Me.TxtGrid
  loc_10A7764: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_13E, var_B8, var_13C)
  loc_10A776C: var_A4 = var_B0.Visible
  loc_10A777E: If (var_13E = &HFF) Then
  loc_10A778A:   Set var_A8 = Me.TxtGrid
  loc_10A7790:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8)
  loc_10A7798:   var_B0.SetFocus
  loc_10A77A4: End If
  loc_10A77A4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'FBAEDC
  'Data Table: 4ABF24
  Dim var_98 As Variant
  Dim unk_4ABF42 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_C4 As TextBox
  loc_FBAD38: On Error Goto loc_FBAED4
  loc_FBAD5E: Call Proc_36_50_E9EFE8(Proc_5_1_100EC1C("ADD", Me))
  loc_FBAD69: Call Proc_36_49_F30BE4(global_72)
  loc_FBAD87: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_98)
  loc_FBAD8F: var_98.Text = CStr(MemVar_1F950EC)
  loc_FBADBE: unk_4ABF42.Execute "Select Description,V_Type From Voucher_Type Where V_tYPE IN " & global_100, var_B8, -1
  loc_FBADC9: Set var_88 = Me.Txt
  loc_FBADE9: If (var_88.RecordCount > 0) Then
  loc_FBAE25:   Set var_C0 = Me.Txt
  loc_FBAE2B:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_C4)
  loc_FBAE33:   var_C4.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_FBAE63:   var_98 = var_88.Fields.Item("V_Type")
  loc_FBAE82:   Set var_C0 = Me.Txt
  loc_FBAE88:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_C4)
  loc_FBAE90:   var_C4.Tag = CStr(var_98.Value)
  loc_FBAEA6: End If
  loc_FBAEB1: Set var_90 = Me.Txt
  loc_FBAEB7: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_98)
  loc_FBAEBF: var_98.SetFocus
  loc_FBAED0: Set var_88 = Nothing
  loc_FBAED3: Exit Sub
  loc_FBAED4: ' Referenced from: FBAD38
  loc_FBAED4: Proc_6_60_E63754(var_90)
  loc_FBAED9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'EDD394
  'Data Table: 4ABF24
  Dim var_98 As TextBox
  loc_EDD2E0: On Error Goto loc_EDD38D
  loc_EDD306: Call Proc_36_50_E9EFE8(Proc_5_1_100EC1C("EDIT", Me))
  loc_EDD31E: Set var_90 = Me.Txt
  loc_EDD324: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_98)
  loc_EDD32C: var_98.Enabled = False
  loc_EDD345: Set var_90 = Me.Txt
  loc_EDD34B: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(1), var_98)
  loc_EDD353: var_98.Enabled = False
  loc_EDD36A: Set var_90 = Me.Txt
  loc_EDD370: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(2), var_98)
  loc_EDD378: var_98.SetFocus
  loc_EDD384: Exit Sub
  loc_EDD38A: Set var_88 = Nothing
  loc_EDD38D: ' Referenced from: EDD2E0
  loc_EDD38D: Proc_6_60_E63754(global_72)
  loc_EDD392: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '10B1638
  'Data Table: 4ABF24
  Dim unk_4ABF42 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_10B1390: On Error Goto loc_10B15E8
  loc_10B13CA: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_10B13D6:   unk_4ABF42.BeginTrans var_118
  loc_10B13EC:   var_94 = Me.Bookmark 'Variant
  loc_10B1438:   var_F4 = "Delete From STOCK Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10B1446:   unk_4ABF42.Execute CStr(var_F4), var_114, -1
  loc_10B1491:   var_160 = 0
  loc_10B14A4:   var_158 = 0
  loc_10B14AF:   var_154 = 0
  loc_10B14C2:   var_14C = 0
  loc_10B14CD:   var_148 = 0
  loc_10B14E0:   var_140 = 0
  loc_10B1520:   var_124 = "STOCK"
  loc_10B1529:   Proc_154_5_10E3BD4(MemVar_1F95044, var_124, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10B1557:   unk_4ABF42.CommitTrans
  loc_10B1567:   Me.Requery -1
  loc_10B1587:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10B1594:     Me.Bookmark = var_94
  loc_10B159C:   Else
  loc_10B15B0:     If (Me.EOF = 0) Then
  loc_10B15B9:       Me.MoveLast
  loc_10B15BE:     End If
  loc_10B15BE:   End If
  loc_10B15BE:   Call Proc_36_47_1451B18(var_140, 0, var_148, var_14C)
  loc_10B15DF:   Proc_5_0_1107AD0(&HFF, Me, global_72, 0)
  loc_10B15E7: End If
  loc_10B15E7: Exit Sub
  loc_10B15E8: ' Referenced from: 10B1390
  loc_10B15EE: unk_4ABF42.RollbackTrans
  loc_10B15FB: Set var_11C = Err()
  loc_10B1601: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_10B1622: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_10B1635: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E1BD34
  'Data Table: 4ABF24
  loc_E1BD29: Me.Global.Unload Me
  loc_E1BD31: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3D568
  'Data Table: 4ABF24
  loc_E3D558: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D560: Call Proc_36_47_1451B18(global_72)
  loc_E3D565: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E3D268
  'Data Table: 4ABF24
  loc_E3D258: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D260: Call Proc_36_47_1451B18(global_72)
  loc_E3D265: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E3A928
  'Data Table: 4ABF24
  loc_E3A918: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A920: Call Proc_36_47_1451B18(global_72)
  loc_E3A925: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E3A868
  'Data Table: 4ABF24
  loc_E3A858: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A860: Call Proc_36_47_1451B18(global_72)
  loc_E3A865: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '16759EC
  'Data Table: 4ABF24
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_A4 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_A8 As Variant
  Dim var_150 As String
  Dim var_154 As String
  Dim unk_4ABF42 As Connection15
  Dim var_AC As Variant
  Dim var_158 As Variant
  Dim var_15C As Variant
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_88 As Recordset15
  Dim var_8A As Variant
  Dim var_1D4 As Variant
  Dim var_14C As Double
  Dim var_1EC As TextBox
  Dim var_270 As TextBox
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_308 As Variant
  Dim var_328 As Variant
  Dim var_39C As Variant
  Dim var_3BC As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_478 As Variant
  Dim var_4C8 As Variant
  Dim var_4E8 As Variant
  Dim var_50C As Variant
  Dim var_55C As Variant
  Dim var_57C As Variant
  Dim var_938 As Double
  Dim var_940 As Double
  Dim var_948 As Double
  Dim var_878 As Variant
  Dim var_898 As Variant
  Dim var_950 As Double
  Dim var_1D8 As String
  Dim var_1DC As String
  Dim var_1E0 As String
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_210 As Variant
  Dim var_248 As Variant
  Dim var_2D8 As Variant
  Dim var_36C As Variant
  Dim var_498 As Variant
  Dim var_52C As Variant
  Dim var_714 As Variant
  Dim var_784 As Variant
  Dim var_8E0 As Variant
  Dim var_1F0 As String
  loc_16743B8: On Error Goto loc_16759D0
  loc_16743C6: Set var_A4 = Me.Txt
  loc_16743CC: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2))
  loc_16743F5: If (Proc_6_27_EA61EC(var_A8, "Voucher Date") = 0) Then
  loc_16743F8:   Exit Sub
  loc_16743F9: End If
  loc_1674404: Set var_A4 = Me.Txt
  loc_167440A: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A8)
  loc_1674433: If (Proc_6_27_EA61EC(var_A8, "Voucher No") = 0) Then
  loc_1674436:   Exit Sub
  loc_1674437: End If
  loc_1674442: Set var_A4 = Me.Txt
  loc_1674448: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_A8)
  loc_1674471: If (Proc_6_27_EA61EC(var_A8, "Department") = 0) Then
  loc_1674474:   Exit Sub
  loc_1674475: End If
  loc_1674475: var_C0 = 1
  loc_167447E: var_E0 = 1
  loc_167449C: var_110 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_16744A2: var_120 = Trim(var_110)
  loc_16744BE: If (var_120 = vbNullString) Then
  loc_16744DA:   MsgBox("Fill Room", 0, var_110, var_120, var_140)
  loc_16744FD:   Me.FGrid.Row = 1
  loc_1674509:   Set var_A4 = Me.FGrid
  loc_167452D:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1674535:   Exit Sub
  loc_1674536: End If
  loc_1674536: var_C0 = 1
  loc_167453F: var_E0 = 2
  loc_167455D: var_110 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1674563: var_120 = Trim(var_110)
  loc_167457F: If (var_120 = vbNullString) Then
  loc_167459B:   MsgBox("Fill Item Name ", 0, var_110, var_120, var_140)
  loc_16745BE:   Me.FGrid.Row = 1
  loc_16745CA:   Set var_A4 = Me.FGrid
  loc_16745EE:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_16745F6:   Exit Sub
  loc_16745F7: End If
  loc_16745F7: var_C0 = 1
  loc_1674600: var_E0 = 3
  loc_167461E: var_110 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1674624: var_120 = Trim(var_110)
  loc_1674640: If (var_120 = vbNullString) Then
  loc_1674656:   var_100 = "Item Detail Required "
  loc_167465C:   MsgBox(var_100, 0, var_110, var_120, var_140)
  loc_167467F:   Me.FGrid.Row = 1
  loc_167468B:   Set var_A4 = Me.FGrid
  loc_16746A0:   var_C0 = CVar(CLng("14737632")) 'Long
  loc_16746AF:   Me.FGrid.CellBackColor = var_C0
  loc_16746B7:   Exit Sub
  loc_16746B8: End If
  loc_16746BB: Call Proc_36_48_1083748(var_142, FGrid.DispID_8001, var_E0, var_C0, FGrid.DispID_8001, var_E0)
  loc_16746C6: If (var_142 = 0) Then
  loc_16746C9:   Exit Sub
  loc_16746CA: End If
  loc_16746D5: Set var_A4 = Me.TxtGrid
  loc_16746DB: Call 0.Method_TopCtrl1_UnknownEvent_190 (0, var_A8, 0, var_C0)
  loc_16746E3: var_A8.Visible = FGrid.DispID_8001
  loc_16746EF: Call Proc_36_51_EF7D18(var_E0, var_C0)
  loc_1674702: Set var_A4 = Me.Txt
  loc_1674708: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_A8)
  loc_1674710: var_B0 = var_A8.Text
  loc_1674730: If (Proc_6_91_EF38D0(CDate(var_B0)) = 0) Then
  loc_167473E:   Set var_A4 = Me.Txt
  loc_1674744:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_A8)
  loc_167474C:   var_A8.SetFocus
  loc_1674758:   Exit Sub
  loc_1674759: End If
  loc_167475D: Set var_A4 = Me.TopCtrl1
  loc_1674763: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_A8)
  loc_1674778: If ( = "Add") Then
  loc_16747A8:   Set var_A4 = Me.Txt
  loc_16747AE:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8, var_B0, "Select Count(*) From STOCK Where DocID='", var_100, -1)
  loc_16747B6:   var_AC = var_A8.Text
  loc_16747CF:   unk_4ABF42.Execute var_158 & var_B0 & "'", 0, var_15C
  loc_16747DF:    = var_158.Item()
  loc_16747E7:    = var_15C.Value
  loc_1674814:   If (var_AC.Fields > 0) Then
  loc_167481D:     Call Proc_36_53_11061C4(MemVar_1F95044)
  loc_1674830:     Set var_A4 = Me.Txt
  loc_1674836:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8)
  loc_167483E:     var_A8.Text = var_B0
  loc_167484D:     Exit Sub
  loc_167484E:   End If
  loc_1674851: Else
  loc_167486E:   var_A8 = Me.Fields.Item("DocID")
  loc_167487F:   var_B0 = CStr(var_A8.Value)
  loc_1674885:   global_108 = var_B0
  loc_1674896: End If
  loc_16748B4: Set var_A4 = Me.Txt
  loc_16748BA: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_B0, "SELECT NCAT FROM VOUCHER_tYPE WHERE V_TYPE='")
  loc_16748C2: var_100 = var_A8.Tag
  loc_16748CB: var_150 = -1 & var_B0
  loc_16748DB: unk_4ABF42.Execute var_158 & var_B0 & "'", var_AC, var_B0
  loc_16748E6: Set var_88 = var_AC
  loc_1674904: var_160 = var_88.RecordCount
  loc_1674912: If (var_160 > 0) Then
  loc_167492F:   var_A8 = var_88.Fields.Item("NCat")
  loc_1674940:   var_A0 = CStr(var_A8.Value)
  loc_167494D: End If
  loc_167494F: var_8A = &HFF
  loc_167495B: unk_4ABF42.BeginTrans var_160
  loc_167497E: Set var_A4 = Me.Txt
  loc_1674984: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8, var_B0, "Delete From STOCK Where DocID='")
  loc_167498C: var_100 = var_A8.Text
  loc_1674995: var_150 = -1 & var_B0
  loc_167499C: var_154 = var_158 & var_B0 & "'"
  loc_16749A5: unk_4ABF42.Execute var_154, var_AC, var_8A
  loc_16749E4: For var_164 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_164 'Integer
  loc_16749EE:   var_C0 = CVar(CLng(var_92)) 'Long
  loc_16749F6:   var_E0 = CVar(CLng(7)) 'Long
  loc_1674A10:   var_110 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1674A3D:   Set var_A8 = Me.FGrid
  loc_1674A4E:   var_B0 = CStr(var_A8.TextMatrix))
  loc_1674A7C:   If CBool(CVar(CLng(4)) And (CDbl(Val(var_B0)) <> CDbl(0))) Then
  loc_1674A87:     If (var_A0 = "HKISS") Then
  loc_1674A98:       Set var_A4 = Me.Txt
  loc_1674A9E:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8, var_B0, CVar(CLng(var_92)))
  loc_1674AA6:       (Trim(var_110) <> vbNullString) = var_A8.Text
  loc_1674AB9:       Set var_AC = Me.Txt
  loc_1674ABF:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_158, var_154)
  loc_1674AC7:       var_E0 = var_158.Text
  loc_1674AD4:       var_14C = Val(var_154)
  loc_1674AE2:       Set var_15C = Me.Txt
  loc_1674AE8:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_1E4, var_14C)
  loc_1674AF7:       Proc_6_7_F26918(var_110, CVar(var_1E4))
  loc_1674B0A:       Set var_1E8 = Me.Txt
  loc_1674B10:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1EC, var_1F0)
  loc_1674B18:       var_C0 = var_1EC.Tag
  loc_1674B3D:       Set var_26C = Me.Txt
  loc_1674B43:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_270)
  loc_1674B54:       var_184 = CVar(CLng(var_92)) 'Long
  loc_1674B5C:       var_1A4 = CVar(CLng(9)) 'Long
  loc_1674B7B:       var_308 = CVar(CLng(var_92)) 'Long
  loc_1674B83:       var_328 = CVar(CLng(8)) 'Long
  loc_1674BA2:       var_39C = CVar(CLng(var_92)) 'Long
  loc_1674BAA:       var_3BC = CVar(CLng(0)) 'Long
  loc_1674BD3:       var_434 = CVar(CLng(var_92)) 'Long
  loc_1674BDB:       var_454 = CVar(CLng(7)) 'Long
  loc_1674BFA:       var_4C8 = CVar(CLng(var_92)) 'Long
  loc_1674C02:       var_4E8 = CVar(CLng(3)) 'Long
  loc_1674C11:       var_50C = Me.FGrid.TextMatrix)
  loc_1674C21:       var_55C = CVar(CLng(var_92)) 'Long
  loc_1674C29:       var_57C = CVar(CLng(4)) 'Long
  loc_1674C4B:       var_938 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1674C7C:       var_940 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1674CAD:       var_948 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1674CBE:       Proc_6_7_F26918(var_774, Date, var_948, CVar(CLng(6)), CVar(CLng(var_92)), var_940, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_1674CC7:       Set var_7A8 = Me.TopCtrl1
  loc_1674CCD:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_938)
  loc_1674D0C:       var_878 = CVar(CLng(var_92)) 'Long
  loc_1674D14:       var_898 = CVar(CLng(6)) 'Long
  loc_1674D36:       var_950 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1674D4D:       var_150 = "Insert Into Stock (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Sno,Item,Unit,QtyIss,RAte,Amount,U_Name,U_EntDt,U_AE,TOTAL) Values ('" & var_B0
  loc_1674D9C:       var_248 = CVar(var_150 & "'," & CStr(var_14C) & ",") & var_110 & ",'" & CVar(var_1F0) & "','" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_1674DE1:       var_36C = var_248 & CVar(MemVar_1F95070) & "','" & CVar(var_270.Tag) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','RO','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1674E1D:       var_52C = var_36C & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_50C)) 
  loc_1674E7C:       var_784 = var_52C & "'," & CVar(var_938) & "," & CVar(var_940) & "," & CVar(var_948) & ",'" & CVar(MemVar_1F950C8) & "'," & var_774 
  loc_1674EB7:       unk_4ABF42.Execute CStr(var_784 & ",'" & IIf((var_7C8 = "Add"), "A", "E") & "'," & CVar(var_950) & ")"), var_924, -1
  loc_1674F84:     Else
  loc_1674F92:       Set var_A4 = Me.Txt
  loc_1674F98:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8, var_B0, var_928, var_950, var_898, var_878)
  loc_1674FA0:       var_57C = var_A8.Text
  loc_1674FB3:       Set var_AC = Me.Txt
  loc_1674FB9:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_158, var_154, var_55C, var_50C)
  loc_1674FC1:       var_4E8 = var_158.Text
  loc_1674FCE:       var_14C = Val(var_154)
  loc_1674FDC:       Set var_15C = Me.Txt
  loc_1674FE2:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_1E4, var_14C)
  loc_1674FF1:       Proc_6_7_F26918(var_110, CVar(var_1E4), var_4C8)
  loc_1675004:       Set var_1E8 = Me.Txt
  loc_167500A:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1EC, var_1F0)
  loc_1675012:       var_478 = var_1EC.Tag
  loc_1675037:       Set var_26C = Me.Txt
  loc_167503D:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_270)
  loc_167504E:       var_184 = CVar(CLng(var_92)) 'Long
  loc_1675056:       var_1A4 = CVar(CLng(9)) 'Long
  loc_1675075:       var_308 = CVar(CLng(var_92)) 'Long
  loc_167507D:       var_328 = CVar(CLng(8)) 'Long
  loc_167509C:       var_39C = CVar(CLng(var_92)) 'Long
  loc_16750A4:       var_3BC = CVar(CLng(0)) 'Long
  loc_16750CD:       var_434 = CVar(CLng(var_92)) 'Long
  loc_16750D5:       var_454 = CVar(CLng(7)) 'Long
  loc_16750F4:       var_4C8 = CVar(CLng(var_92)) 'Long
  loc_16750FC:       var_4E8 = CVar(CLng(3)) 'Long
  loc_167511B:       var_55C = CVar(CLng(var_92)) 'Long
  loc_1675123:       var_57C = CVar(CLng(4)) 'Long
  loc_1675145:       var_938 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1675176:       var_940 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16751A7:       var_948 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16751B8:       Proc_6_7_F26918(var_774, Date, var_948, CVar(CLng(6)), CVar(CLng(var_92)), var_940, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_16751C1:       Set var_7A8 = Me.TopCtrl1
  loc_16751C7:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_938)
  loc_1675206:       var_878 = CVar(CLng(var_92)) 'Long
  loc_167520E:       var_898 = CVar(CLng(6)) 'Long
  loc_1675247:       var_150 = "Insert Into Stock (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Sno,Item,Unit,Qtyrec,Rate,Amount,U_Name,U_EntDt,U_AE,TOTAL) Values ('" & var_B0
  loc_167524E:       var_1D8 = var_150 & "',"
  loc_1675283:       var_210 = CVar(var_1D8 & CStr(var_14C) & ",") & var_110 & ",'" & CVar(var_1F0) & "','" 
  loc_16752C7:       var_2D8 = var_210 & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F95070) & "','" & CVar(var_270.Tag) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1675303:       var_498 = var_2D8 & "','RO','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_167535C:       var_714 = var_498 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_938) & "," & CVar(var_940) & "," & CVar(var_948) & ",'" 
  loc_167539A:       var_8E0 = var_714 & CVar(MemVar_1F950C8) & "'," & var_774 & ",'" & IIf((var_7C8 = "Add"), "A", "E") & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_16753B1:       unk_4ABF42.Execute CStr(var_8E0 & ")"), var_924, -1
  loc_167547B:     End If
  loc_167547B:   End If
  loc_167547E: Next var_164 'Integer
  loc_1675487: Set var_A4 = Me.TopCtrl1
  loc_167548D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_16754A2: If ( = "Add") Then
  loc_16754B9:   var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_16754DF:   Set var_A4 = Me.Txt
  loc_16754E5:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_1D8, var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='")
  loc_16754ED:   var_1D4 = var_A8.Tag
  loc_16754F6:   var_1E0 = -1 & var_1D8
  loc_16754FD:   var_120 = CVar(var_1D8 & CStr(var_14C) & "' And VP.Date_From<=") 'String
  loc_167550E:   Set var_AC = Me.Txt
  loc_1675514:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_158, var_1F0)
  loc_167551C:   var_120 = var_158.Text
  loc_167552A:   Proc_6_7_F26918(var_110, CVar(var_1F0))
  loc_1675549:   unk_4ABF42.Execute CStr(var_15C & var_110 & " Order By VP.Date_From DESC"), , 
  loc_1675554:   Set var_88 = var_15C
  loc_1675598:   If (var_88.RecordCount > 0) Then
  loc_16755A9:     Set var_A4 = Me.Txt
  loc_16755AF:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A8)
  loc_16755C4:     var_14C = Val(var_A8.Text)
  loc_16755D9:     var_AC = var_88.Fields
  loc_16755E9:     var_100 = var_AC.Item("V_Type").Value
  loc_1675614:     Proc_6_7_F26918(var_1D4, CVar(var_88.Fields.Item("Date_From")))
  loc_167562E:     var_150 = CStr(var_14C)
  loc_167564E:     var_1F0 = "Update Voucher_Prefix Set Start_Srl_No=" & var_150 & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_1675679:     unk_4ABF42.Execute CStr(CVar(var_1F0 & "') and V_Type='") & var_100 & "' and Date_From=" & var_1D4), var_210, -1
  loc_16756B3:   End If
  loc_16756B3: End If
  loc_16756B7: Set var_A4 = Me.TopCtrl1
  loc_16756BD: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_1E8)
  loc_16756D2: If (var_14C = "Add") Then
  loc_16756F8:   var_B0 = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F950C8
  loc_1675708:   Call 0.Method_arg_50 (var_150, var_B0 & "' AND ENAME='", var_100, -1, var_A4)
  loc_1675718:   var_1DC = var_A8 & var_150 & "' "
  loc_1675721:   unk_4ABF42.Execute var_1DC, 0, var_AC
  loc_1675729:   var_110 = var_A4.Fields
  loc_1675731:    = var_A8.Item()
  loc_1675739:    = var_AC.Value
  loc_1675766:   If (var_110 > 0) Then
  loc_1675787:     Set var_A4 = Me.Txt
  loc_167578D:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8, var_B0, "UPDATE LASTVOU  SET DOCID='")
  loc_1675795:     var_100 = var_A8.Text
  loc_167579E:     var_150 = -1 & var_B0
  loc_16757BC:     Call 0.Method_arg_50 (var_1DC, var_150 & "' WHERE UNAME='" & MemVar_1F950C8 & "' AND ENAME='")
  loc_16757D5:     unk_4ABF42.Execute var_AC & var_1DC & "'  ", , 
  loc_16757FC:   Else
  loc_1675820:     Call 0.Method_arg_50 (var_150, "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "','", var_210)
  loc_1675829:     var_1D8 = -1 & var_150
  loc_1675830:     var_1E0 = var_150 & "' WHERE UNAME='" & MemVar_1F950C8 & "','"
  loc_1675841:     Set var_A4 = Me.Txt
  loc_1675847:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8, var_1DC)
  loc_167584F:     var_1E0 = var_A8.Text
  loc_167587E:     Proc_6_7_F26918(var_110, Date)
  loc_167588A:     var_C0 = ",'A','"
  loc_16758B0:     unk_4ABF42.Execute CStr(CVar(var_AC & var_1DC & "','" & MemVar_1F95070 & "',") & var_110 & var_C0 & CVar(MemVar_1F95078) & "')"), , 
  loc_16758E8:   End If
  loc_16758E8: End If
  loc_16758EE: unk_4ABF42.CommitTrans
  loc_16758F5: var_8A = 0
  loc_1675906: Set var_A4 = Me.Txt
  loc_167590C: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8)
  loc_1675928: var_8A = 0
  loc_1675936: Me.Requery -1
  loc_1675960: Me.Find "SearchCode ='" & var_A8.Text & "'", 0, 1
  loc_1675970: Set var_A4 = Me.TopCtrl1
  loc_1675976: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_C0)
  loc_167598B: If (var_8A = "Add") Then
  loc_167598E:   Call TopCtrl1_UnknownEvent_11()
  loc_1675993:   Exit Sub
  loc_1675994: End If
  loc_16759B7: Call Proc_36_50_E9EFE8(Proc_5_1_100EC1C("INI", Me), global_72)
  loc_16759C2: Call Proc_36_47_1451B18(var_8A)
  loc_16759CC: Set var_88 = Nothing
  loc_16759CF: Exit Sub
  loc_16759D0: ' Referenced from: 16743B8
  loc_16759D6: If (var_8A = &HFF) Then
  loc_16759DF:   unk_4ABF42.RollbackTrans
  loc_16759E4: End If
  loc_16759E4: Proc_6_60_E63754()
  loc_16759E9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EA1498
  'Data Table: 4ABF24
  loc_EA1420: On Error Goto loc_EA1491
  loc_EA145A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA1480:   Call Proc_36_50_E9EFE8(Proc_5_1_100EC1C("INI", Me))
  loc_EA148B:   Call Proc_36_47_1451B18(global_72)
  loc_EA1490: End If
  loc_EA1490: Exit Sub
  loc_EA1491: ' Referenced from: EA1420
  loc_EA1491: Proc_6_60_E63754()
  loc_EA1496: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB4A00
  'Data Table: 4ABF24
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EB4970: On Error Goto loc_EB49FA
  loc_EB498A: If (Me.RecordCount <= 0) Then
  loc_EB4993:   var_B8 = "Information"
  loc_EB49AE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB49BE:   Exit Sub
  loc_EB49BF: End If
  loc_EB49C9: var_10C = "Select Distinct Docid as SearchCode,V.Description As VType,S.VNo as VrNo ,S.VDate as V_Date,R.Name as Department From ((STOCK S Left Join Voucher_Type V On S.VType= V.V_Type)Left Join Depart R On S.RestCode= R.Code) Where V.V_tYPE IN " & global_100
  loc_EB49D0: MemVar_1F950E4 = var_10C & " Order By S.Docid"
  loc_EB49DD: MemVar_1F95120 = Me
  loc_EB49F4: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EB49F9: Exit Sub
  loc_EB49FA: ' Referenced from: EB4970
  loc_EB49FA: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EB49FF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C 'DFC994
  'Data Table: 4ABF24
  loc_DFC990: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E57AC8
  'Data Table: 4ABF24
  Dim Me As Recordset15
  Dim arg_70FF As Double
  loc_E57A8F: Me.Requery -1
  loc_E57A9F: Me.Requery -1
  loc_E57AAF: Me.Requery -1
  loc_E57ABF: Me.Requery -1
  loc_E57AC4: Exit Sub
  loc_E57AC5: arg_70FF = 
End Sub

Private Sub Form_Load() '12791B4
  'Data Table: 4ABF24
  Dim var_C4 As Variant
  Dim var_88 As String
  Dim unk_4ABF42 As Connection15
  Dim var_B0 As Recordset15
  Dim var_B4 As Fields15
  Dim var_C8 As Field20
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim Me As Recordset15
  loc_1278C18: On Error Goto loc_12791AD
  loc_1278C21: global_132 = MemVar_1F951BC
  loc_1278C2B: global_136 = MemVar_1F951C0
  loc_1278C35: global_140 = MemVar_1F951C4
  loc_1278C3F: var_C4 = 0
  loc_1278C5F: var_88 = "Select 'I'+ShortName From Depart Where Code='" & global_132
  loc_1278C6F: unk_4ABF42.Execute var_88 & "'", var_AC, -1
  loc_1278C77: var_B0 = var_B0.Fields
  loc_1278C7F: var_C4 = var_B4.Item(var_B4)
  loc_1278C87: var_C8 = var_C8.Value
  loc_1278CB9: var_C4 = 0
  loc_1278CD9: var_88 = "Select 'R'+ShortName From Depart Where Code='" & global_132
  loc_1278CE9: unk_4ABF42.Execute var_88 & "'", var_AC, -1
  loc_1278CF1: var_B0 = var_B0.Fields
  loc_1278CF9: var_C4 = var_B4.Item(var_B4)
  loc_1278D01: var_C8 = var_C8.Value
  loc_1278D55: global_100 = "('" & CStr(var_D8) & "','" & CStr(var_D8) & "')"
  loc_1278D6E: Set global_56 = New 
  loc_1278D80: Me.Recordset15.CursorLocation = 3
  loc_1278DAD: var_AC = CVar("Select V_Type As Code,Description As Name,NCat From Voucher_Type Where  V_tYPE IN " & global_100 & " Order by Description") 'String
  loc_1278DB7: Me.Open var_AC, CVar(MemVar_1F95044), 3
  loc_1278DCB: CVarUnk
  loc_1278DD0: VerifyVarObj
  loc_1278DD6: Set var_B0 = Me.DGVType
  loc_1278DDC: LateIdStAd
  loc_1278DF4: Set global_60 = New 
  loc_1278E06: Me.DGVType.CursorLocation = 3
  loc_1278E22: var_9C = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,I.LPurRate From ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code WHERE I.TYPE IN ('Store Item','Consumables') AND IG.TYPE IN ('Store Item','Consumables') And I.ItemType='Store' Order by I.Name"
  loc_1278E2E: Me.Open var_9C, CVar(MemVar_1F95044), 3
  loc_1278E3C: CVarUnk
  loc_1278E41: VerifyVarObj
  loc_1278E47: Set var_B0 = Me.DGItem
  loc_1278E4D: LateIdStAd
  loc_1278E65: Set global_68 = New 
  loc_1278E77: Me.DGItem.CursorLocation = 3
  loc_1278E93: var_9C = "SELECT D.Code, GodownMast.Name FROM Depart AS D RIGHT JOIN GodownMast ON D.Code = GodownMast.Code where resttype='House Keeping'"
  loc_1278E9F: Me.Open var_9C, CVar(MemVar_1F95044), 3
  loc_1278EAD: CVarUnk
  loc_1278EB2: VerifyVarObj
  loc_1278EB8: Set var_B0 = Me.DGDepart
  loc_1278EBE: LateIdStAd
  loc_1278EE8: Me.DGDepart.CursorLocation = 3
  loc_1278F1E: CVarUnk
  loc_1278F23: VerifyVarObj
  loc_1278F2F: LateIdStAd
  loc_1278F47: Set global_72 = New 
  loc_1278F59: Me.DGRoom.CursorLocation = 3
  loc_1278F7F: var_88 = "Select Distinct S.DocId as SearchCode,S.DocID From STOCK S left join Voucher_Type V On V.V_Type=S.Vtype WHERE v.V_tYPE IN " & global_100
  loc_1278F86: var_AC = CVar(var_88 & " Order by Docid") 'String
  loc_1278F90: elect R.Code ,R.Name As Name,RoomCat From RoomMast R WHERE TYPE IN ('RO') Order by R.Name", CVar(MemVar_1F95044), 3 var_AC, CVar(MemVar_1F95044), 3
  loc_1278FC0: Call 0.Method_arg_50 (var_88, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_AC, -1, Me.DGRoom, var_B4, 0, var_C8)
  loc_1278FE7: unk_4ABF42.Execute var_D8 & var_88 & "' AND UNAME='" & MemVar_1F950C8 & "'", 1, -1
  loc_1278FEF: var_B0 = var_B0.Fields
  loc_1278FF7: 1 = var_B4.Item(New)
  loc_1278FFF: -1 = var_C8.Value
  loc_127902C: If (var_D8 > 0) Then
  loc_1279067:   Call 0.Method_arg_50 (var_88, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_AC, -1, var_B0, var_B4, 0)
  loc_127908E:   unk_4ABF42.Execute var_C8 & var_88 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_D8, "SearchCode='"
  loc_1279096:   0 = var_B0.Fields
  loc_127909E:   var_138 = var_B4.Item(1)
  loc_12790A6:    = var_C8.Value
  loc_12790C5:   Me.Find CStr(var_D8 & "'"), , 
  loc_12790ED: End If
  loc_1279104: If (Me.RecordCount > 0) Then
  loc_127911B:   If (Me.EOF = &HFF) Then
  loc_1279124:     Me.MoveLast
  loc_1279129:   End If
  loc_1279129: End If
  loc_127914C: Call Proc_36_50_E9EFE8(Proc_5_1_100EC1C("INI", Me))
  loc_1279169: Set var_B0 = Me
  loc_127916F: Proc_6_23_DFC5B8(var_B0, 4950)
  loc_1279180: Call 0.Method_arg_160 (var_B0, 10575)
  loc_127918E: Call 0.Method_arg_164 (var_B0)
  loc_1279196: Call Proc_36_44_11F8D34(global_72)
  loc_127919B: Call Proc_36_47_1451B18()
  loc_12791A7: Call 0.Method_arg_64 (CLng(MemVar_1F951C4))
  loc_12791AC: Exit Sub
  loc_12791AD: ' Referenced from: 1278C18
  loc_12791AD: Proc_6_60_E63754()
  loc_12791B2: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E67874
  'Data Table: 4ABF24
  loc_E6782B: Set global_64 = Nothing
  loc_E6783D: Set global_60 = Nothing
  loc_E6784F: Set global_56 = Nothing
  loc_E67861: Set global_68 = Nothing
  loc_E6786D: MasterFormExit = 0
  loc_E67870: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2680C
  'Data Table: 4ABF24
  loc_E267F1: If (MasterFormExit = &HFF) Then
  loc_E26801:   Me.Global.Unload Me
  loc_E26809: End If
  loc_E26809: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3B1C8
  'Data Table: 4ABF24
  loc_E3B19C: On Error Goto loc_E3B1C0
  loc_E3B1B7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E3B1BF: Exit Sub
  loc_E3B1C0: ' Referenced from: E3B19C
  loc_E3B1C0: Proc_6_60_E63754(Shift)
  loc_E3B1C5: Exit Sub
End Sub

Public Function MasterFormExitGet() '4ACC74
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4ACC83
  MasterFormExit = Value
End Sub

Public Sub FindMove(mDocId) 'E775D4
  'Data Table: 4ABF24
  Dim Me As Recordset15
  loc_E7757E: Me.MoveFirst
  loc_E775A8: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E775C8: If (Me.EOF = 0) Then
  loc_E775CB:   Call Proc_36_47_1451B18(var_9C)
  loc_E775D0: End If
  loc_E775D0: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E97870
  'Data Table: 4ABF24
  Dim Me As Recordset15
  loc_E977FE: On Error Goto loc_E97867
  loc_E97807: Me.MoveFirst
  loc_E97831: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97859: Proc_5_0_1107AD0(&HFF, Me, global_72)
  loc_E97861: Call Proc_36_47_1451B18(0)
  loc_E97866: Exit Sub
  loc_E97867: ' Referenced from: E977FE
  loc_E97867: Proc_6_60_E63754(var_A0)
  loc_E9786C: Exit Sub
End Sub

Public Sub Proc_36_44_11F8D34
  'Data Table: 4ABF24
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_11F88A2: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_11F88BD: Me.FGrid.Top = CVar(CDbl(1500))
  loc_11F88D8: Me.FGrid.Height = CVar(CDbl(2800))
  loc_11F88F3: Me.FGrid.Width = CVar(CDbl(10275))
  loc_11F890E: Me.DGItem.Left = CVar(CDbl(6000))
  loc_11F8929: Me.DGItem.Top = CVar(CDbl(1000))
  loc_11F8944: Me.DGRoom.Left = CVar(CDbl(3000))
  loc_11F895F: Me.DGRoom.Top = CVar(CDbl(1000))
  loc_11F8975: Set var_A8 = Me.Txt
  loc_11F897B: Call 0.Method_Proc_36_44_11F8D340 (CInt(3), var_AC)
  loc_11F899A: Me.DGDepart.Left = CVar(var_AC.Left)
  loc_11F89B6: Set var_B4 = Me.Txt
  loc_11F89BC: Call 0.Method_Proc_36_44_11F8D340 (CInt(3), var_B8)
  loc_11F89D7: Set var_A8 = Me.Txt
  loc_11F89DD: Call 0.Method_Proc_36_44_11F8D340 (CInt(3), var_AC)
  loc_11F89F5: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_11F8A04: Me.DGDepart.Top = CVar(var_AC.Left)
  loc_11F8A24: Set var_A8 = Me.Txt
  loc_11F8A2A: Call 0.Method_Proc_36_44_11F8D340 (CInt(0), var_AC)
  loc_11F8A49: Me.DGVType.Left = CVar(var_AC.Left)
  loc_11F8A65: Set var_B4 = Me.Txt
  loc_11F8A6B: Call 0.Method_Proc_36_44_11F8D340 (CInt(0), var_B8)
  loc_11F8A86: Set var_A8 = Me.Txt
  loc_11F8A8C: Call 0.Method_Proc_36_44_11F8D340 (CInt(0), var_AC)
  loc_11F8AA4: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_11F8AB3: Me.DGVType.Top = CVar(var_AC.Left)
  loc_11F8AC9: Set var_C4 = Me.FGrid
  loc_11F8AE0: global_104 = CStr(CLng(var_C4.BackColor))
  loc_11F8AF6: var_C4.Cols = &HA
  loc_11F8AFE: var_94 = CVar(CLng(0)) 'Long
  loc_11F8B03: var_E8 = &HFA
  loc_11F8B0F: LateIdCallSt
  loc_11F8B17: var_94 = 0
  loc_11F8B23: var_E8 = CVar(CLng(1)) 'Long
  loc_11F8B28: var_108 = "Room No"
  loc_11F8B31: LateIdCallSt
  loc_11F8B3C: var_94 = CVar(CLng(1)) 'Long
  loc_11F8B47: var_E8 = CVar(CInt(1)) 'Integer
  loc_11F8B4E: LateIdCallSt
  loc_11F8B59: var_94 = CVar(CLng(1)) 'Long
  loc_11F8B5E: var_E8 = &HDC5
  loc_11F8B6A: LateIdCallSt
  loc_11F8B72: var_94 = 0
  loc_11F8B7E: var_E8 = CVar(CLng(2)) 'Long
  loc_11F8B83: var_108 = "Item Name"
  loc_11F8B8C: LateIdCallSt
  loc_11F8B97: var_94 = CVar(CLng(2)) 'Long
  loc_11F8BA2: var_E8 = CVar(CInt(1)) 'Integer
  loc_11F8BA9: LateIdCallSt
  loc_11F8BB4: var_94 = CVar(CLng(2)) 'Long
  loc_11F8BB9: var_E8 = &HE4C
  loc_11F8BC5: LateIdCallSt
  loc_11F8BCD: var_94 = 0
  loc_11F8BD9: var_E8 = CVar(CLng(3)) 'Long
  loc_11F8BDE: var_108 = "Unit"
  loc_11F8BE7: LateIdCallSt
  loc_11F8BF2: var_94 = CVar(CLng(3)) 'Long
  loc_11F8BFD: var_E8 = CVar(CInt(1)) 'Integer
  loc_11F8C04: LateIdCallSt
  loc_11F8C0F: var_94 = CVar(CLng(3)) 'Long
  loc_11F8C14: var_E8 = &H578
  loc_11F8C20: LateIdCallSt
  loc_11F8C28: var_94 = 0
  loc_11F8C34: var_E8 = CVar(CLng(4)) 'Long
  loc_11F8C39: var_108 = "Qty"
  loc_11F8C42: LateIdCallSt
  loc_11F8C4D: var_94 = CVar(CLng(4)) 'Long
  loc_11F8C58: var_E8 = CVar(CInt(7)) 'Integer
  loc_11F8C5F: LateIdCallSt
  loc_11F8C6A: var_94 = CVar(CLng(4)) 'Long
  loc_11F8C75: var_E8 = CVar(CInt(7)) 'Integer
  loc_11F8C7C: LateIdCallSt
  loc_11F8C87: var_94 = CVar(CLng(4)) 'Long
  loc_11F8C8C: var_E8 = &H578
  loc_11F8C98: LateIdCallSt
  loc_11F8CA3: var_94 = CVar(CLng(5)) 'Long
  loc_11F8CA8: var_E8 = 0
  loc_11F8CB4: LateIdCallSt
  loc_11F8CBF: var_94 = CVar(CLng(6)) 'Long
  loc_11F8CC4: var_E8 = 0
  loc_11F8CD0: LateIdCallSt
  loc_11F8CDB: var_94 = CVar(CLng(7)) 'Long
  loc_11F8CE0: var_E8 = 0
  loc_11F8CEC: LateIdCallSt
  loc_11F8CF7: var_94 = CVar(CLng(8)) 'Long
  loc_11F8CFC: var_E8 = 0
  loc_11F8D08: LateIdCallSt
  loc_11F8D13: var_94 = CVar(CLng(9)) 'Long
  loc_11F8D18: var_E8 = 0
  loc_11F8D24: LateIdCallSt
  loc_11F8D2E: Set var_C4 = Nothing 
  loc_11F8D32: Exit Sub
End Sub

Public Sub Proc_36_45_E39840
  'Data Table: 4ABF24
  loc_E39820: Set var_88 = Me.TopCtrl1
  loc_E39826: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E3983B: If ( = "Browse") Then
  loc_E3983E:   Exit Sub
  loc_E3983F: End If
  loc_E3983F: Exit Sub
End Sub

Public Sub Proc_36_46_13959B4(arg_C) '13959B4
  'Data Table: 4ABF24
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_140 As Variant
  Dim var_130 As Variant
  Dim var_BC As String
  Dim var_154 As Variant
  Dim var_144 As MSHFlexGrid
  Dim var_174 As Variant
  Dim var_178 As String
  Dim var_92 As Integer
  loc_13950F8: If (arg_C = 0) Then
  loc_139510E:   var_AC = CLng(Me.FGrid.Col)
  loc_139511E:   If (var_AC = CLng(1)) Then
  loc_139516F:     Set var_98 = Me.TxtGrid
  loc_1395175:     Call 0.Method_Proc_36_46_13959B40 (arg_C, var_B8, var_BC)
  loc_139517D:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_1395195:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_13951AB:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13951B3:       var_EC = CVar(CLng(1)) 'Long
  loc_13951B8:       var_10C = vbNullString
  loc_13951C2:       Set var_B8 = Me.FGrid
  loc_13951C8:       LateIdCallSt
  loc_13951ED:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13951F5:       var_EC = CVar(CLng(8)) 'Long
  loc_13951FA:       var_10C = vbNullString
  loc_1395204:       Set var_B8 = Me.FGrid
  loc_139520A:       LateIdCallSt
  loc_139522F:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1395237:       var_EC = CVar(CLng(9)) 'Long
  loc_139523C:       var_10C = vbNullString
  loc_1395246:       Set var_B8 = Me.FGrid
  loc_139524C:       LateIdCallSt
  loc_1395261:     Else
  loc_1395274:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139527C:       var_FC = CVar(CLng(1)) 'Long
  loc_13952AF:       var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_13952B7:       Set var_144 = Me.FGrid
  loc_13952BD:       LateIdCallSt
  loc_13952EC:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13952F4:       var_FC = CVar(CLng(8)) 'Long
  loc_1395327:       var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_139532F:       Set var_144 = Me.FGrid
  loc_1395335:       LateIdCallSt
  loc_1395364:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139536C:       var_FC = CVar(CLng(9)) 'Long
  loc_139538E:       var_B8 = Me.Fields.Item("RoomCat")
  loc_139539F:       var_140 = CVar(CStr(var_B8.Value)) 'String
  loc_13953A7:       Set var_144 = Me.FGrid
  loc_13953AD:       LateIdCallSt
  loc_13953C9:     End If
  loc_13953CC:   Else
  loc_13953D3:     If (var_AC = CLng(2)) Then
  loc_13953F6:       var_B2 = Me.EOF
  loc_1395424:       Set var_98 = Me.TxtGrid
  loc_139542A:       Call 0.Method_Proc_36_46_13959B40 (arg_C, var_B8, var_BC, ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))), var_144, var_140, var_FC)
  loc_1395432:       var_DC = var_B8.Text
  loc_139544A:       If (var_144 Or (var_BC = vbNullString)) Then
  loc_1395460:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1395468:         var_EC = CVar(CLng(2)) 'Long
  loc_139546D:         var_10C = vbNullString
  loc_1395477:         Set var_B8 = Me.FGrid
  loc_139547D:         LateIdCallSt
  loc_13954A2:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13954AA:         var_EC = CVar(CLng(7)) 'Long
  loc_13954AF:         var_10C = vbNullString
  loc_13954B9:         Set var_B8 = Me.FGrid
  loc_13954BF:         LateIdCallSt
  loc_13954E4:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13954EC:         var_EC = CVar(CLng(3)) 'Long
  loc_13954F1:         var_10C = vbNullString
  loc_13954FB:         Set var_B8 = Me.FGrid
  loc_1395501:         LateIdCallSt
  loc_1395526:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139552E:         var_EC = CVar(CLng(5)) 'Long
  loc_1395533:         var_10C = vbNullString
  loc_139553D:         Set var_B8 = Me.FGrid
  loc_1395543:         LateIdCallSt
  loc_1395558:       Else
  loc_139555B:         Call Proc_36_55_FC58A4(var_B2, var_B8, var_10C, var_EC, var_CC, var_B8, var_10C, var_EC)
  loc_1395566:         If (var_B2 = 0) Then
  loc_139556E:           Proc_36_46_13959B4 = 0
  loc_1395574:         End If
  loc_139558D:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1395595:         var_EC = CVar(CLng(7)) 'Long
  loc_13955AF:         var_BC = CStr(Me.FGrid.TextMatrix))
  loc_13955CD:         var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13955D5:         var_154 = CVar(CLng(7)) 'Long
  loc_13955EF:         var_178 = CStr(Me.FGrid.TextMatrix))
  loc_139565A:         If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(7)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1395671:           var_92 = CInt(CLng(Me.FGrid.Row))
  loc_139568D:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1395695:           var_FC = CVar(CLng(2)) 'Long
  loc_13956C8:           var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_13956D0:           Set var_144 = Me.FGrid
  loc_13956D6:           LateIdCallSt
  loc_1395705:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139570D:           var_FC = CVar(CLng(7)) 'Long
  loc_1395740:           var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1395748:           Set var_144 = Me.FGrid
  loc_139574E:           LateIdCallSt
  loc_139577D:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1395785:           var_FC = CVar(CLng(3)) 'Long
  loc_13957AF:           var_130 = Me.Fields.Item("Unit").Value
  loc_13957B8:           var_140 = CVar(CStr(var_130)) 'String
  loc_13957C0:           Set var_144 = Me.FGrid
  loc_13957C6:           LateIdCallSt
  loc_13957E6:           var_CC = CVar(CLng(var_92)) 'Long
  loc_13957F8:           var_A8 = CVar(CStr(var_92)) 'String
  loc_1395800:           Set var_98 = Me.FGrid
  loc_1395806:           LateIdCallSt
  loc_139581E:           var_140 = Me.FGrid.Row
  loc_1395827:           var_DC = CVar(CLng(var_140)) 'Long
  loc_139582F:           var_FC = CVar(CLng(5)) 'Long
  loc_1395837:           var_CC = "LPurRate"
  loc_1395846:           var_98 = Me.Fields
  loc_139584E:           var_B8 = var_98.Item(var_CC)
  loc_139585D:           Proc_6_39_E7D3A0(var_130, CVar(var_B8), var_FC, var_DC, var_98, CVar(var_B8), CVar(CLng(0)))
  loc_1395866:           var_174 = CVar(CStr(var_130)) 'String
  loc_139586E:           Set var_144 = Me.FGrid
  loc_1395874:           LateIdCallSt
  loc_1395890:         End If
  loc_1395890:       End If
  loc_1395890:       Call Proc_36_56_F70CF4(var_144, var_174, var_CC, var_144, var_140)
  loc_1395898:     Else
  loc_139589F:       If (var_AC = CLng(4)) Then
  loc_13958AC:         Set var_98 = Me.TxtGrid
  loc_13958B2:         Call 0.Method_Proc_36_46_13959B40 (arg_C, var_B8, var_FC)
  loc_13958CA:         If Not(IsNumeric(CVar(var_B8))) Then
  loc_13958D1:           var_BC = CStr(0)
  loc_13958DE:           Set var_98 = Me.TxtGrid
  loc_13958E4:           Call 0.Method_Proc_36_46_13959B40 (arg_C, var_B8, var_BC)
  loc_13958EC:           var_B8.Text = var_DC
  loc_13958FB:         End If
  loc_1395908:         Set var_98 = Me.TxtGrid
  loc_139590E:         Call 0.Method_Proc_36_46_13959B40 (arg_C, var_B8, var_BC)
  loc_1395916:         var_144 = var_B8.Text
  loc_139592E:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1395946:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1395980:         LateIdCallSt
  loc_13959A4:         Call Proc_36_56_F70CF4(Me.FGrid, CVar(CStr(Format(CVar(var_BC), "0.000"))), 1, 1)
  loc_13959A9:       End If
  loc_13959A9:     End If
  loc_13959A9:   End If
  loc_13959A9: End If
  loc_13959AE: Proc_36_46_13959B4 = &HFF
End Sub

Public Sub Proc_36_47_1451B18
  'Data Table: 4ABF24
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_100 As String
  Dim unk_4ABF42 As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Variant
  Dim var_124 As Variant
  Dim var_138 As Field20
  Dim var_144 As TextBox
  Dim var_BC As Variant
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_110 As Variant
  Dim var_15C As Variant
  Dim var_120 As Variant
  loc_1450FD0: On Error Goto loc_1451B10
  loc_1450FEA: If (Me.RecordCount > 0) Then
  loc_1451043:   unk_4ABF42.Execute CStr("Select S.* From STOCK S Where S.Docid='" & Me.Fields.Item("DocID").Value & "'"), var_120, -1
  loc_145106B:   Set var_128 = var_124 
  loc_14510A8:   Set var_124 = Me.Txt
  loc_14510AE:   Call 0.Method_Proc_36_47_1451B180 (CInt(4), var_12C)
  loc_14510B6:   var_12C.Text = CStr(var_128.Fields.Item("DocID").Value)
  loc_14510E6:   var_AC = var_128.Fields.Item("vType")
  loc_14510EE:   var_BC = var_AC.Value
  loc_14510F7:   var_100 = CStr(var_BC)
  loc_1451105:   Set var_124 = Me.Txt
  loc_145110B:   Call 0.Method_Proc_36_47_1451B180 (CInt(0), var_12C)
  loc_1451113:   var_12C.Tag = var_100
  loc_1451156:   Set var_98 = Me.Txt
  loc_145115C:   Call 0.Method_Proc_36_47_1451B180 (CInt(0), var_AC, var_100, "Select NCAT From Voucher_Type Where V_Type='", var_BC, -1)
  loc_1451164:   var_124 = var_AC.Tag
  loc_145117D:   unk_4ABF42.Execute var_12C & var_100 & "'", 0, var_138
  loc_145118D:    = var_12C.Item(var_124)
  loc_1451195:    = var_138.Value
  loc_14511A4:   global_124 = CStr(var_124.Fields)
  loc_14511F4:   Set var_98 = Me.Txt
  loc_14511FA:   Call 0.Method_Proc_36_47_1451B180 (CInt(0), var_AC, var_100, "Select Description From Voucher_type Where V_Type='", var_BC, -1)
  loc_145121B:   unk_4ABF42.Execute var_12C & var_100 & "'", 0, var_138
  loc_145122B:    = var_12C.Item()
  loc_1451233:    = var_138.Value
  loc_145124A:   Set var_140 = Me.Txt
  loc_1451250:   Call 0.Method_Proc_36_47_1451B180 (CInt(0), var_144)
  loc_1451258:   var_144.Text = CStr(var_AC.Tag.Fields)
  loc_14512B9:   Set var_124 = Me.Txt
  loc_14512BF:   Call 0.Method_Proc_36_47_1451B180 (CInt(1), var_12C)
  loc_14512C7:   var_12C.Text = CStr(var_128.Fields.Item("VNo").Value)
  loc_145132F:   Set var_124 = Me.Txt
  loc_1451335:   Call 0.Method_Proc_36_47_1451B180 (CInt(2), var_12C, CStr(Format(CVar(var_128.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_145133D:   var_12C.Text = 1
  loc_145138F:   Me.LblVPrefix.Caption = CStr(var_128.Fields.Item("vPrefix").Value)
  loc_14513CB:   var_100 = Proc_6_38_E69628(CVar(var_128.Fields.Item("RestCode")))
  loc_14513D9:   Set var_124 = Me.Txt
  loc_14513DF:   Call 0.Method_Proc_36_47_1451B180 (CInt(3), var_12C)
  loc_14513E7:   var_12C.Tag = var_100
  loc_1451415:   var_AC = var_128.Fields.Item("RestCode")
  loc_145141D:   var_BC = var_AC.Value
  loc_1451437:   If CBool(var_BC <> vbNullString) Then
  loc_1451467:     Set var_98 = Me.Txt
  loc_145146D:     Call 0.Method_Proc_36_47_1451B180 (CInt(3), var_AC, var_100, "Select Name From Depart Where Code='", var_BC, -1)
  loc_1451475:     var_124 = var_AC.Tag
  loc_145148E:     unk_4ABF42.Execute var_12C & var_100 & "' and (code is not null or code <> '')", 0, var_138
  loc_145149E:      = var_12C.Item(1)
  loc_14514A6:      = var_138.Value
  loc_14514BD:     Set var_140 = Me.Txt
  loc_14514C3:     Call 0.Method_Proc_36_47_1451B180 (CInt(3), var_144)
  loc_14514CB:     var_144.Text = CStr(var_124.Fields)
  loc_14514F3:   End If
  loc_14514F5:   Set var_128 = Nothing 
  loc_1451508:   Me.FGrid.Redraw = False
  loc_1451523:   Me.FGrid.Rows = 1
  loc_145152D:   var_8E = 1
  loc_145153D:   var_CC = "Select S1.*,I.name as ItemName,R.NAME AS ROOM From (STOCK S1 Left Join ItemMast I On S1.Item=I.Code And I.ItemType='Store') Left Join ROOMMAST R On S1.ROOMNO=R.Code Where S1.DocId='"
  loc_1451586:   unk_4ABF42.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_1451591:   Set var_88 = var_124
  loc_14515BF:   If (var_88.RecordCount > 0) Then
  loc_14515C2:     ' Referenced from: 1451A47
  loc_14515D1:     If Not(var_88.EOF) Then
  loc_14515D4:       var_A8 = vbNullString
  loc_14515DE:       Set var_98 = Me.FGrid
  loc_14515F3:       Set var_14C = Me.FGrid
  loc_14515FA:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1451602:       var_110 = CVar(CLng(0)) 'Long
  loc_1451632:       var_DC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1451639:       LateIdCallSt
  loc_1451653:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_145165B:       var_110 = CVar(CLng(8)) 'Long
  loc_145168B:       var_DC = CVar(CStr(var_88.Fields.Item("RoomNo").Value)) 'String
  loc_1451692:       LateIdCallSt
  loc_14516AC:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_14516B4:       var_110 = CVar(CLng(1)) 'Long
  loc_14516E4:       var_DC = CVar(CStr(var_88.Fields.Item("Room").Value)) 'String
  loc_14516EB:       LateIdCallSt
  loc_1451705:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_145170D:       var_110 = CVar(CLng(9)) 'Long
  loc_145173D:       var_DC = CVar(CStr(var_88.Fields.Item("RoomCat").Value)) 'String
  loc_1451744:       LateIdCallSt
  loc_145175E:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1451766:       var_110 = CVar(CLng(7)) 'Long
  loc_1451796:       var_DC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_145179D:       LateIdCallSt
  loc_14517EC:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(2)), CVar(CLng(var_8E)), var_14C, var_DC, CVar(CLng(2)), CVar(CLng(var_8E)))) 'String
  loc_14517F3:       LateIdCallSt
  loc_1451810:       If (global_124 = "HKISS") Then
  loc_1451833:         var_EC = CVar(CLng(var_8E)) 'Long
  loc_145183B:         var_15C = CVar(CLng(4)) 'Long
  loc_1451868:         var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_145186F:         LateIdCallSt
  loc_1451888:       Else
  loc_14518A8:         var_EC = CVar(CLng(var_8E)) 'Long
  loc_14518B0:         var_15C = CVar(CLng(4)) 'Long
  loc_14518DD:         var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyRec")), "0.000"))) 'String
  loc_14518E4:         LateIdCallSt
  loc_14518FA:       End If
  loc_1451933:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(3)), CVar(CLng(var_8E)), var_14C, var_120, 1, 1)) 'String
  loc_145193A:       LateIdCallSt
  loc_145196C:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_1451974:       var_15C = CVar(CLng(5)) 'Long
  loc_14519A1:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_14519A8:       LateIdCallSt
  loc_14519DE:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_14519E6:       var_15C = CVar(CLng(6)) 'Long
  loc_1451A13:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_1451A1A:       LateIdCallSt
  loc_1451A32:       Set var_14C = Nothing 
  loc_1451A3C:       var_8E = (var_8E + 1)
  loc_1451A42:       var_88.MoveNext
  loc_1451A47:       GoTo loc_14515C2
  loc_1451A4A:     End If
  loc_1451A5D:     Me.FGrid.FixedRows = 1
  loc_1451A65:   End If
  loc_1451A73:   Me.FGrid.Redraw = True
  loc_1451A81:   If (var_8E = 1) Then
  loc_1451A97:     Me.FGrid.Rows = 1
  loc_1451ABD:     var_BC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_8E, var_14C, var_120, 1, 1, var_15C))) 'String
  loc_1451AC5:     Set var_AC = Me.FGrid
  loc_1451AF2:     Me.FGrid.FixedRows = 1
  loc_1451AFA:   End If
  loc_1451AFD: Else
  loc_1451AFD:   Call Proc_36_49_F30BE4(FGrid.DispID_10000, var_BC, var_EC, var_14C, var_120)
  loc_1451B02: End If
  loc_1451B02: Call Proc_36_51_EF7D18(1, 1)
  loc_1451B0C: Set var_88 = Nothing
  loc_1451B0F: Exit Sub
  loc_1451B10: ' Referenced from: 1450FD0
  loc_1451B10: Proc_6_60_E63754(var_15C)
  loc_1451B15: Exit Sub
End Sub

Public Sub Proc_36_48_1083748
  'Data Table: 4ABF24
  Dim var_AC As Variant
  Dim var_D0 As TextBox
  Dim unk_4ABF42 As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_108 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D4 As String
  loc_10834C5: Set var_9C = Me.TopCtrl1
  loc_10834CB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(&HFF)
  loc_10834E0: If ( = "Add") Then
  loc_1083510:   Set var_9C = Me.Txt
  loc_1083516:   Call 0.Method_Proc_36_48_10837480 (CInt(4), var_D0, var_D4, "Select Count(*) From STOCK Where DocID='", var_BC, -1)
  loc_1083537:   unk_4ABF42.Execute var_E4 & var_D4 & "'", 0, var_F8
  loc_1083547:    = var_E4.Item()
  loc_108354F:    = var_F8.Value
  loc_108357C:   If (var_D0.Text.Fields > 0) Then
  loc_1083585:     Call 0.Method_arg_50 (var_D4)
  loc_10835A6:     MsgBox("Duplicate Bill No.", &H40, CVar(var_D4), var_118, var_128)
  loc_10835BC:     Call Proc_36_53_11061C4(MemVar_1F95044)
  loc_10835CF:     Set var_9C = Me.Txt
  loc_10835D5:     Call 0.Method_Proc_36_48_10837480 (CInt(4), var_D0)
  loc_10835DD:     var_D0.Text = var_D4
  loc_10835F1:     Proc_36_48_1083748 = 0
  loc_10835F7:   End If
  loc_10835F7: End If
  loc_108361C: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_1083626:   var_AC = CVar(CLng(var_88)) 'Long
  loc_108362E:   var_108 = CVar(CLng(7)) 'Long
  loc_108364E:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_108366A:   If CBool(var_118 <> vbNullString) Then
  loc_1083671:     var_AC = CVar(CLng(var_88)) 'Long
  loc_1083679:     var_108 = CVar(CLng(4)) 'Long
  loc_10836A9:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_10836D1:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_10836F7:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1083703:       Set var_9C = Me.FGrid
  loc_1083727:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1083734:       Proc_36_48_1083748 = 0
  loc_108373A:     End If
  loc_108373A:   End If
  loc_108373D: Next var_12C 'Integer
  loc_1083742: Proc_36_48_1083748 = 
End Sub

Public Sub Proc_36_49_F30BE4
  'Data Table: 4ABF24
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_F30ADD: Me.LblVPrefix.Caption = vbNullString
  loc_F30AF3: Set var_8C = Me.Txt
  loc_F30AF9: Call 0.Method_Proc_36_49_F30BE4C (var_8E, var_86)
  loc_F30B09: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F30B1F:   Set var_8C = Me.Txt
  loc_F30B25:   Call 0.Method_Proc_36_49_F30BE40 (CInt(var_86), var_98)
  loc_F30B2D:   var_98.Text = vbNullString
  loc_F30B49:   Set var_8C = Me.Txt
  loc_F30B4F:   Call 0.Method_Proc_36_49_F30BE40 (CInt(var_86), var_98)
  loc_F30B57:   var_98.Tag = vbNullString
  loc_F30B66: Next var_92 'Byte
  loc_F30B7F: Me.FGrid.Rows = 1
  loc_F30BA5: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_F30BAD: Set var_98 = Me.FGrid
  loc_F30BDA: Me.FGrid.FixedRows = 1
  loc_F30BE2: Exit Sub
End Sub

Public Sub Proc_36_50_E9EFE8(arg_C) 'E9EFE8
  'Data Table: 4ABF24
  Dim var_98 As TextBox
  loc_E9EF6E: Set var_8C = Me.Txt
  loc_E9EF74: Call 0.Method_Proc_36_50_E9EFE8C (var_8E, var_86)
  loc_E9EF84: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9EF9A:   Set var_8C = Me.Txt
  loc_E9EFA0:   Call 0.Method_Proc_36_50_E9EFE80 (CInt(var_86), var_98)
  loc_E9EFA8:   var_98.Enabled = arg_C
  loc_E9EFB7: Next var_92 'Byte
  loc_E9EFCA: Set var_8C = Me.Txt
  loc_E9EFD0: Call 0.Method_Proc_36_50_E9EFE80 (CInt(4), var_98)
  loc_E9EFD8: var_98.Enabled = False
  loc_E9EFE4: Exit Sub
End Sub

Public Sub Proc_36_51_EF7D18
  'Data Table: 4ABF24
  loc_EF7C58: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EF7C6A:   Me.DGVType.Visible = False
  loc_EF7C72: End If
  loc_EF7C8E: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EF7CA0:   Me.DGRoom.Visible = False
  loc_EF7CA8: End If
  loc_EF7CC4: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF7CD6:   Me.DGItem.Visible = False
  loc_EF7CDE: End If
  loc_EF7CFA: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EF7D0C:   Me.DGDepart.Visible = False
  loc_EF7D14: End If
  loc_EF7D14: Exit Sub
  loc_EF7D15: StAryRecCopy
End Sub

Public Sub Proc_36_52_F0BC0C
  'Data Table: 4ABF24
  loc_F0BB30: Call Proc_36_51_EF7D18()
  loc_F0BB40: Set var_88 = Me.Txt
  loc_F0BB46: Call 0.Method_Proc_36_52_F0BC0C0 (CInt(2))
  loc_F0BB6F: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0BB72:   Exit Sub
  loc_F0BB73: End If
  loc_F0BB7E: Set var_88 = Me.Txt
  loc_F0BB84: Call 0.Method_Proc_36_52_F0BC0C0 (CInt(1), var_8C)
  loc_F0BBAD: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0BBB0:   Exit Sub
  loc_F0BBB1: End If
  loc_F0BBE8: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0BBEB:   Call TopCtrl1_UnknownEvent_19()
  loc_F0BBF3: Else
  loc_F0BBF9:   Call 0.Method_arg_1E8 (var_88)
  loc_F0BC01:   Call var_88.SetFocus
  loc_F0BC0A: End If
  loc_F0BC0A: Exit Sub
End Sub

Public Sub Proc_36_53_11061C4
  'Data Table: 4ABF24
  Dim var_98 As Variant
  Dim var_9C As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_1105ED0: Set var_94 = Me.Txt
  loc_1105ED6: Call 0.Method_Proc_36_53_11061C40 (CInt(0), var_98)
  loc_1105EE6: var_90 = var_98.Tag
  loc_1105F04: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1105F35: Set var_94 = Me.Txt
  loc_1105F3B: Call 0.Method_Proc_36_53_11061C40 (CInt(2), var_98, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_1105F4A: Proc_6_7_F26918(var_CC, CVar(var_98), var_130)
  loc_1105F52: var_EC = -1 & var_CC 
  loc_1105F66: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_1105F71: Set var_8C = var_134
  loc_1105FAD: If (var_8C.RecordCount > 0) Then
  loc_1105FEC:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_1106020:     global_116 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_110604B:     var_98 = var_8C.Fields.Item("start_srl_no")
  loc_1106060:     var_CC = (var_98.Value + 1)
  loc_1106068:     global_120 = CInt(var_CC)
  loc_1106079:   End If
  loc_1106079: End If
  loc_11060A4: var_BC = Space((5 - Len(var_90)))
  loc_11060AC: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_98.Value)
  loc_11060C0: var_EC = Space((5 - Len(global_116)))
  loc_11060C8: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_11060D5: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_116))
  loc_11060EE: var_14C = Space((8 - Len(CStr(global_120))))
  loc_11060F6: var_15C = (var_130 + var_14C)
  loc_1106105: var_17C = (var_15C + CVar(CStr(global_120)))
  loc_1106110: global_108 = CStr(var_17C)
  loc_1106146: Me.LblVPrefix.Caption = global_116
  loc_110615F: Set var_94 = Me.Txt
  loc_1106165: Call 0.Method_Proc_36_53_11061C40 (CInt(4), var_98)
  loc_110616D: var_98.Text = global_108
  loc_110618F: Set var_94 = Me.Txt
  loc_1106195: Call 0.Method_Proc_36_53_11061C40 (CInt(1), var_98)
  loc_110619D: var_98.Text = CStr(global_120)
  loc_11061B2: var_88 = global_108
  loc_11061BA: Set var_8C = Nothing
  loc_11061BD: Proc_36_53_11061C4 = global_120
End Sub

Public Sub Proc_36_54_10FC004(arg_C, arg_10, arg_14) '10FC004
  'Data Table: 4ABF24
  Dim var_A0 As String
  Dim unk_4ABF42 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10FBD13: var_98 = arg_C
  loc_10FBD1E: If (var_98 = "HKISS") Then
  loc_10FBD45:   unk_4ABF42.Execute "Select Distinct DocId,VType,VNo From STOCK Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10FBD50:   Set var_8C = var_C4
  loc_10FBD63:   var_94 = "Issue Entry"
  loc_10FBD69: Else
  loc_10FBD71:   If (var_98 = "HKREC") Then
  loc_10FBD98:     unk_4ABF42.Execute "Select Distinct DocId,VType,VNo From STOCK Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10FBDA3:     Set var_8C = var_C4
  loc_10FBDB6:     var_94 = "Receive Entry"
  loc_10FBDBC:   Else
  loc_10FBDC1:     Proc_36_54_10FC004 = &HFF
  loc_10FBDC7:   End If
  loc_10FBDC7: End If
  loc_10FBDDB: If (var_8C.RecordCount > 0) Then
  loc_10FBDDE:   ' Referenced from: 10FBF57
  loc_10FBDED:   If Not(var_8C.EOF) Then
  loc_10FBDF8:     If (var_90 = vbNullString) Then
  loc_10FBE0D:       var_C4 = var_8C.Fields
  loc_10FBE37:       var_A0 = Proc_6_45_EADFB8(CStr(var_C4.Item("V_Type").Value), 6, "V.Type :-> ")
  loc_10FBE42:       var_10C = CVar(var_C4 & "Select Distinct DocId,VType,VNo From STOCK Where DocID='" & arg_10 & "'" & " V.No :-> ") 'String
  loc_10FBE74:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10FBE99:     Else
  loc_10FBED5:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10FBEF5:       var_10C = CVar(var_120 & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10FBF22:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10FBF27:       var_90 = CStr(var_11C)
  loc_10FBF4F:     End If
  loc_10FBF52:     var_8C.MoveNext
  loc_10FBF57:     GoTo loc_10FBDDE
  loc_10FBF5A:   End If
  loc_10FBF60:   Call 0.Method_arg_50 (var_138)
  loc_10FBFBC:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This ," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10FBFBF:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10FBFEE:   Set var_8C = Nothing
  loc_10FBFF1:   Proc_36_54_10FC004 = 0
  loc_10FBFF7: End If
  loc_10FBFFC: Proc_36_54_10FC004 = &HFF
End Sub

Public Sub Proc_36_55_FC58A4
  'Data Table: 4ABF24
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC5727: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FC572C:   var_92 = 2 'Byte
  loc_FC5730: End If
  loc_FC5739: Set var_98 = Me.TxtGrid
  loc_FC573F: Call 0.Method_Proc_36_55_FC58A40 (0, var_B0)
  loc_FC5762: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC5796: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC57BA:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC57BD:     GoTo loc_FC588F
  loc_FC57C0:   End If
  loc_FC57C4:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC57EE:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC57F8:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC582D:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC5851:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC586A:     Set var_98 = Me.TxtGrid
  loc_FC5870:     Call 0.Method_Proc_36_55_FC58A40 (0, var_B0, CVar(CLng(var_92)))
  loc_FC5878:     var_B0.SetFocus
  loc_FC5889:     Proc_36_55_FC58A4 = 0
  loc_FC588F:     ' Referenced from: FC57BD
  loc_FC588F:   End If
  loc_FC5892: Next var_D4 'Integer
  loc_FC589C: Proc_36_55_FC58A4 = &HFF
End Sub

Public Sub Proc_36_56_F70CF4
  'Data Table: 4ABF24
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  loc_F70BF7: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F70BFF: var_C8 = CVar(CLng(5)) 'Long
  loc_F70C37: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F70C3F: var_134 = CVar(CLng(4)) 'Long
  loc_F70C77: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F70C7F: var_1F0 = CVar(CLng(6)) 'Long
  loc_F70CB0: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_F70CB8: Set var_224 = Me.FGrid
  loc_F70CBE: LateIdCallSt
  loc_F70CF1: Exit Sub
  loc_F70CF2: Exit Sub
End Sub
