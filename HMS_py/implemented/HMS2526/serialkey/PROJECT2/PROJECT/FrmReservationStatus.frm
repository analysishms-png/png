VERSION 5.00
Begin VB.Form FrmReservationStatus
  Caption = "Reservation Status"
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
  ClientWidth = 4680
  ClientHeight = 3195
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2745
    Width = 4680
    Height = 450
    Visible = 0   'False
    TabIndex = 33
  End
  Begin Frame Frame1
    Caption = "Frame1"
    Left = 1365
    Top = 8460
    Width = 11895
    Height = 705
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
  End
  Begin MSFlexGrid FGPoint
    Left = 14100
    Top = 5655
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 7
  End
  Begin DataGrid DGRoomType
    Left = 12600
    Top = 2745
    Width = 4170
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 10305
    Top = 645
    Width = 2235
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 1200
    Top = 3060
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 7815
    Top = 645
    Width = 1230
    Height = 285
    TabIndex = 0
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
  Begin MSHFlexGrid FGrid
    Left = -15
    Top = 960
    Width = 11820
    Height = 6270
    TabIndex = 2
  End
  Begin BtnEnh Cmd
    Index = 1
    Left = 1140
    Top = 15
    Width = 1080
    Height = 645
    TabIndex = 9
  End
  Begin BtnEnh CmdExit
    Left = 5505
    Top = 15
    Width = 1125
    Height = 645
    TabIndex = 10
  End
  Begin BtnEnh Cmd
    Index = 0
    Left = 45
    Top = 15
    Width = 1080
    Height = 645
    TabIndex = 11
  End
  Begin BtnEnh Cmd
    Index = 2
    Left = 2220
    Top = 15
    Width = 1125
    Height = 645
    TabIndex = 12
  End
  Begin BtnEnh BtnPrint
    Index = 2
    Left = 4425
    Top = 15
    Width = 1080
    Height = 645
    TabIndex = 14
  End
  Begin BtnEnh BtnPrint
    Index = 0
    Left = 3345
    Top = 15
    Width = 1080
    Height = 660
    TabIndex = 15
  End
  Begin Label Label2
    Index = 4
    BackColor = &HFFFF00&
    ForeColor = &H80000008&
    Left = 11385
    Top = 105
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 32
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Expected Arrival"
    Index = 4
    ForeColor = &H0&
    Left = 11745
    Top = 120
    Width = 1410
    Height = 225
    Visible = 0   'False
    TabIndex = 31
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Guest In House"
    Index = 3
    ForeColor = &H0&
    Left = 9945
    Top = 120
    Width = 1290
    Height = 225
    Visible = 0   'False
    TabIndex = 30
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Index = 3
    BackColor = &H80FF&
    ForeColor = &H80000008&
    Left = 9600
    Top = 105
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 29
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "ConFirm"
    Index = 1
    ForeColor = &HC00000&
    Left = 6780
    Top = 120
    Width = 825
    Height = 240
    TabIndex = 28
    Alignment = 2 'Center
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
  Begin Label Label1
    Caption = "Tentative"
    Index = 2
    ForeColor = &HC00000&
    Left = 7680
    Top = 120
    Width = 900
    Height = 240
    TabIndex = 27
    Alignment = 2 'Center
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
  Begin Label Label2
    Index = 1
    BackColor = &H80FFFF&
    ForeColor = &H80000008&
    Left = 7635
    Top = 105
    Width = 975
    Height = 270
    TabIndex = 26
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 0
    BackColor = &H80C0FF&
    ForeColor = &H80000008&
    Left = 6750
    Top = 105
    Width = 885
    Height = 270
    TabIndex = 25
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label3
    Caption = "*"
    BackColor = &HE0E0E0&
    ForeColor = &HFF&
    Left = 13290
    Top = 105
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Courier New"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label4
    Caption = "With advance"
    ForeColor = &H404040&
    Left = 13650
    Top = 120
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 23
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label5
    Caption = "."
    ForeColor = &HFF&
    Left = 15480
    Top = 345
    Width = 60
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
  Begin Label Labelsign
    Caption = "<Adv Due Date>"
    Index = 6
    ForeColor = &HC00000&
    Left = 11730
    Top = 390
    Width = 1530
    Height = 240
    TabIndex = 22
    Alignment = 2 'Center
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
  Begin Label Labelsign
    Caption = "#Tentative"
    Index = 5
    ForeColor = &HC00000&
    Left = 14460
    Top = 390
    Width = 990
    Height = 240
    TabIndex = 21
    Alignment = 2 'Center
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
  Begin Label Labelsign
    Caption = "##Confirm"
    Index = 4
    ForeColor = &HC00000&
    Left = 13290
    Top = 390
    Width = 960
    Height = 240
    TabIndex = 20
    Alignment = 2 'Center
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
  Begin Label Labelsign
    Caption = "(Remarks)"
    Index = 3
    ForeColor = &HC00000&
    Left = 10725
    Top = 390
    Width = 960
    Height = 240
    TabIndex = 19
    Alignment = 2 'Center
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
  Begin Label Labelsign
    Caption = "{Room Rate}"
    Index = 2
    ForeColor = &HC00000&
    Left = 9465
    Top = 390
    Width = 1200
    Height = 240
    TabIndex = 18
    Alignment = 2 'Center
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
  Begin Label Labelsign
    Caption = "[No. Of Rooms]"
    Index = 1
    ForeColor = &HC00000&
    Left = 8025
    Top = 390
    Width = 1410
    Height = 240
    TabIndex = 17
    Alignment = 2 'Center
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
  Begin Label Labelsign
    Caption = "|Guest Name|"
    Index = 0
    ForeColor = &HC00000&
    Left = 6735
    Top = 390
    Width = 1260
    Height = 240
    TabIndex = 16
    Alignment = 2 'Center
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
  Begin Label LabelCat
    Caption = "Room Type"
    ForeColor = &HC00000&
    Left = 9195
    Top = 660
    Width = 1080
    Height = 240
    TabIndex = 5
    Alignment = 2 'Center
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
  Begin Shape Shape1
    BorderColor = &HE0E0E0&
    Left = 15165
    Top = 45
    Width = 660
    Height = 300
    Visible = 0   'False
    BorderStyle = 0 'Transparent
    BorderWidth = 2
    FillColor = &HE0E0E0&
    FillStyle = 0
  End
  Begin Label Label1
    Caption = "Date From"
    Index = 15
    ForeColor = &HC00000&
    Left = 6780
    Top = 645
    Width = 990
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

Attribute VB_Name = "FrmReservationStatus"

Private global_112 As Long

Private Sub Txt_GotFocus(Index As Integer) 'FEDB34
  'Data Table: 47BE78
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_FED96A: Set var_88 = Me.Txt
  loc_FED970: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FED97E: Proc_6_74_E23240(var_8C)
  loc_FED98A: Call Proc_212_21_E846D8(var_8C)
  loc_FED992: var_92 = Index
  loc_FED99D: If (var_92 = CInt(1)) Then
  loc_FED9B7:   If (Me.RecordCount > 0) Then
  loc_FED9C5:     Set var_8C = Me.FGPoint
  loc_FED9DD:     Proc_6_137_1192FDC(Me.DGRoomType, global_108, Index)
  loc_FED9EB:   End If
  loc_FEDA39:   Set var_88 = Me.Txt
  loc_FEDA3F:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FEDA47:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FEDA5F:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FEDA62:     Exit Sub
  loc_FEDA63:   End If
  loc_FEDA70:   Set var_88 = Me.Txt
  loc_FEDA76:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FEDA7E:   var_A0 = var_8C.Text
  loc_FEDA90:   var_B0 = "Name"
  loc_FEDACB:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FEDAD4:     Me.MoveFirst
  loc_FEDAF7:     Set var_88 = Me.Txt
  loc_FEDAFD:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FEDB05:     0 = var_8C.Text
  loc_FEDB1E:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FEDB33:   End If
  loc_FEDB33: End If
  loc_FEDB33: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1033624
  'Data Table: 47BE78
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim Me As Recordset15
  loc_10333FA: If (CLng(Shift) = &H1B) Then
  loc_10333FD:   Call Proc_212_21_E846D8()
  loc_1033402:   Exit Sub
  loc_1033403: End If
  loc_1033406: var_86 = KeyCode
  loc_1033411: If (var_86 = CInt(0)) Then
  loc_1033422:   Set var_8C = Me.Txt
  loc_1033428:   Call 0.Method_Txt_KeyDown0 (CInt(1), var_90)
  loc_1033430:   var_90.Text = vbNullString
  loc_103344A:   Set var_8C = Me.Txt
  loc_1033450:   Call 0.Method_Txt_KeyDown0 (CInt(1), var_90)
  loc_1033458:   var_90.Tag = vbNullString
  loc_1033467: Else
  loc_103346F:   If (var_86 = CInt(1)) Then
  loc_103348F:     Set var_A0 = Me.FGPoint
  loc_103349A:     Set var_9C = Nothing
  loc_10334CC:     Proc_6_69_134A630(Me.DGRoomType, Me.Txt, CInt(1), global_108, Shift, 0)
  loc_103353B:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1033542:       Set var_9C = Me.DGRoomType
  loc_1033549:       Set var_90 = Me.FGPoint
  loc_1033561:       Proc_6_138_106E830(var_9C, global_108, KeyCode, var_90, 1)
  loc_103356F:     End If
  loc_103356F:   End If
  loc_103356F: End If
  loc_1033575: If (Shift = &HD) Then
  loc_1033580:   If (KeyCode = CInt(0)) Then
  loc_103358E:     Set var_8C = Me.Txt
  loc_1033594:     Call 0.Method_Txt_KeyDown0 (CInt(1), var_90, var_9C)
  loc_103359C:     var_90.SetFocus
  loc_10335A8:   End If
  loc_10335B0:   If (KeyCode = CInt(1)) Then
  loc_10335BE:     Set var_8C = Me.Txt
  loc_10335C4:     Call 0.Method_Txt_KeyDown0 (CInt(1), var_90, var_A0)
  loc_10335ED:     If (Trim(CVar(var_90)) = vbNullString) Then
  loc_10335FE:       Set var_8C = Me.Txt
  loc_1033604:       Call 0.Method_Txt_KeyDown0 (CInt(1), var_90, vbNullString)
  loc_103360C:       var_90.Tag = 0
  loc_1033618:     End If
  loc_1033618:   End If
  loc_103361D:   Call Cmd_UnknownEvent_9()
  loc_1033622: End If
  loc_1033622: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EECB0C
  'Data Table: 47BE78
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_EECA48: On Error Goto loc_EECB03
  loc_EECA4E: Proc_6_58_E06050(arg_10)
  loc_EECA59: Proc_6_133_E7FB08(var_94)
  loc_EECA6B: var_96 = KeyAscii
  loc_EECA76: If (var_96 = CInt(1)) Then
  loc_EECA95:   If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_EECAC2:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_108, CInt(Me.DGRoomType.Visible), "Name")
  loc_EECAF4:     Proc_6_138_106E830(Me.DGRoomType, global_108, KeyAscii, Me.FGPoint)
  loc_EECB02:   End If
  loc_EECB02: End If
  loc_EECB02: Exit Sub
  loc_EECB03: ' Referenced from: EECA48
  loc_EECB03: Proc_6_60_E63754(0, var_96)
  loc_EECB08: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EAB098
  'Data Table: 47BE78
  loc_EAB026: If (KeyCode = CInt(1)) Then
  loc_EAB045:   If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_EAB059:     var_A8 = "Name"
  loc_EAB081:     Proc_6_68_12A2818(Me.DGRoomType, Me.Txt, CInt(1), global_108)
  loc_EAB094:   End If
  loc_EAB094: End If
  loc_EAB094: Exit Sub
  loc_EAB095: Result Shift End Sub 'Currency
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F9C4
  'Data Table: 47BE78
  loc_E4F9A2: Set var_88 = Me.Txt
  loc_E4F9A8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F9B6: Proc_6_73_E23294(var_8C)
  loc_E4F9C2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10D34C0
  'Data Table: 47BE78
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_94 As String
  Dim var_F0 As TextBox
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_EC As TextBox
  loc_10D31CC: On Error Goto loc_10D34B9
  loc_10D31D2: var_86 = Cancel
  loc_10D31DD: If (var_86 = CInt(0)) Then
  loc_10D31ED:   Set var_8C = Me.Txt
  loc_10D31F3:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D322B:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_10D3240:     Set var_8C = Me.Txt
  loc_10D3246:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D324E:     var_90.Text = CStr(MemVar_1F950EC)
  loc_10D3260:   Else
  loc_10D326A:     Set var_8C = Me.Txt
  loc_10D3270:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D3290:     Set var_EC = Me.Txt
  loc_10D3296:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_10D329E:     var_F0.Text = Proc_6_33_15125B8(var_90)
  loc_10D32B1:   End If
  loc_10D32BE:   Set var_8C = Me.Txt
  loc_10D32C4:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D32CC:   var_94 = var_90.Text
  loc_10D32F5:   If (CDate(CDate(var_94)) < Date) Then
  loc_10D3302:     Set var_8C = Me.Txt
  loc_10D3308:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D3310:     var_90.SetFocus
  loc_10D331E:     arg_10 = &HFF
  loc_10D3321:     Exit Sub
  loc_10D3322:   End If
  loc_10D3325: Else
  loc_10D332D:   If (var_86 = CInt(1)) Then
  loc_10D337E:     Set var_8C = Me.Txt
  loc_10D3384:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_10D338C:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10D33A4:     If (arg_10 Or (var_94 = vbNullString)) Then
  loc_10D33B4:       Set var_8C = Me.Txt
  loc_10D33BA:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D33C2:       var_90.Tag = vbNullString
  loc_10D33CE:       Exit Sub
  loc_10D33CF:     End If
  loc_10D33DC:     Set var_8C = Me.Txt
  loc_10D33E2:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D3401:     If (var_90.Text <> vbNullString) Then
  loc_10D343C:       Set var_E8 = Me.Txt
  loc_10D3442:       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_10D344A:       var_EC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_10D3496:       Set var_E8 = Me.Txt
  loc_10D349C:       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_10D34A4:       var_EC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("Code")))
  loc_10D34B8:     End If
  loc_10D34B8:   End If
  loc_10D34B8: End If
  loc_10D34B8: Exit Sub
  loc_10D34B9: ' Referenced from: 10D31CC
  loc_10D34B9: Proc_6_60_E63754(var_86)
  loc_10D34BE: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 '10768A4
  'Data Table: 47BE78
  Dim var_86 As Integer
  Dim var_98 As String
  Dim var_A0 As TextBox
  Dim var_90 As TextBox
  Dim var_C0 As Long
  Dim var_E0 As Long
  Dim var_8C As Variant
  Dim var_100 As Variant
  Dim var_94 As TextBox
  loc_1076623: var_86 = Cancel
  loc_107662C: If (var_86 = 0) Then
  loc_107663A:   Set var_8C = Me.Txt
  loc_1076640:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_1076669:   If (Proc_6_27_EA61EC(var_90, "Start Date") = 0) Then
  loc_107666C:     Exit Sub
  loc_107666D:   End If
  loc_1076678:   Set var_8C = Me.Txt
  loc_107667E:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_1076686:   Set var_94 = var_90
  loc_107669F:   Set var_9C = Me.Txt
  loc_10766A5:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_A0)
  loc_10766AD:   var_A0.Text = Proc_6_33_15125B8(var_94)
  loc_10766CE:   Set var_8C = Me.Txt
  loc_10766D4:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_10766DC:   var_98 = var_90.Text
  loc_10766E4:   var_B0 = "RoomNo"
  loc_10766F8:   Call Proc_212_22_1337DD8(CDate(var_98), 1)
  loc_107670E: Else
  loc_1076714:   If (var_86 = 1) Then
  loc_1076717:     var_C0 = 1
  loc_1076720:     var_E0 = 1
  loc_1076733:     var_100 = Me.FGrid.ColHeaderCaption)
  loc_107674D:     Set var_90 = Me.Txt
  loc_1076753:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_94, var_98, var_100)
  loc_107675B:     var_E0 = var_94.Text
  loc_1076796:     If (CDate(Right(CVar(CStr(var_100)), 9)) <> CDate(var_98)) Then
  loc_1076799:       var_C0 = 1
  loc_10767B5:       var_100 = Me.FGrid.ColHeaderCaption)
  loc_10767F1:       Call Proc_212_22_1337DD8(CDate((CDate(Right(CVar(CStr(var_100)), 9)) - CDbl(1))), &HFF, "RoomNo", var_100, 1)
  loc_1076807:     End If
  loc_107680A:   Else
  loc_1076810:     If (var_86 = 2) Then
  loc_1076813:       var_C0 = 1
  loc_107682F:       var_100 = Me.FGrid.ColHeaderCaption)
  loc_107686B:       Call Proc_212_22_1337DD8(CDate((CDate(Right(CVar(CStr(var_100)), 9)) + CDbl(1))), 1, "RoomNo", var_100, &H1E)
  loc_1076884:     Else
  loc_107688A:       If (var_86 = 3) Then
  loc_107689A:         Me.Global.Unload Me
  loc_10768A2:       End If
  loc_10768A2:     End If
  loc_10768A2:   End If
  loc_10768A2: End If
  loc_10768A2: Exit Sub
End Sub

Private Sub Form_Load() '1024A54
  'Data Table: 47BE78
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C0 As DataGrid
  Dim var_D4 As Variant
  Dim Me As Variant
  Dim var_88 As MSHFlexGrid
  loc_1024828: On Error Goto loc_1024A4D
  loc_1024839: Set var_88 = Me.Txt
  loc_102483F: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_102485E: Me.DGRoomType.Left = CVar(var_8C.Left)
  loc_102487A: Set var_B4 = Me.Txt
  loc_1024880: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_102489B: Set var_88 = Me.Txt
  loc_10248A1: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_10248B9: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_10248C2: Set var_C0 = Me.DGRoomType
  loc_10248C8: var_C0.Top = CVar(var_8C.Left)
  loc_10248F6: Me.var_C0.CursorLocation = 3
  loc_1024920: var_D4 = CVar("Select Code,Name From RoomCat WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO')  Order by Name") 'String
  loc_102492A: Me.Open var_D4, CVar(MemVar_1F95044), 2
  loc_102493E: CVarUnk
  loc_1024943: VerifyVarObj
  loc_1024949: Set var_88 = Me.DGRoomType
  loc_102494F: LateIdStAd
  loc_102498D: Set var_88 = Me.Label2
  loc_1024993: Call 0.Method_Form_Load0 (4, var_8C, &HFDC293, &HFDC293, &H80FFFF)
  loc_102499B: var_8C.BackColor = &H80C0FF
  loc_10249DB: Set var_88 = Me.Txt
  loc_10249E1: Call 0.Method_Form_Load0 (CInt(0), var_8C, CStr(MemVar_1F950EC), &HFFFFFF, &H40C0)
  loc_10249E9: var_8C.Text = &H80FF
  loc_1024A0E: Proc_6_23_DFC5B8(Me, 0, 0, Me)
  loc_1024A1D: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), New)
  loc_1024A35: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1024A3D: Call Proc_212_18_10E35D4(3)
  loc_1024A47: Call Cmd_UnknownEvent_9()
  loc_1024A4C: Exit Sub
  loc_1024A4D: ' Referenced from: 1024828
  loc_1024A4D: Proc_6_60_E63754(0)
  loc_1024A52: Exit Sub
End Sub

Private Sub Form_Resize() 'F1B6F8
  'Data Table: 47BE78
  Dim var_98 As Variant
  loc_F1B604: On Error Resume Next
  loc_F1B60F: Call 0.Method_arg_100 (var_88)
  loc_F1B61B: var_98 = CVar((var_88 - CDbl(&H32))) 'Single
  loc_F1B62A: Me.FGrid.Width = var_98
  loc_F1B64C: Call 0.Method_arg_108 (var_88)
  loc_F1B65D: var_98 = CVar(((var_88 - Me.Frame1.Height) - CDbl(500))) 'Single
  loc_F1B66C: Me.FGrid.Height = var_98
  loc_F1B6B1: Me.Frame1.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_F1B6E6: Me.Frame1.Left = CDbl(Me.FGrid.Left)
  loc_F1B6F7: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0D794
  'Data Table: 47BE78
  loc_E0D78B: Set global_104 = Nothing
  loc_E0D792: Exit Sub
End Sub

Private Sub Form_Activate() 'E1839C
  'Data Table: 47BE78
  loc_E18388: Set var_88 = Me.FGrid
  loc_E18399: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2BD48
  'Data Table: 47BE78
  loc_E2BD20: On Error Goto loc_E2BD40
  loc_E2BD37: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2BD3F: Exit Sub
  loc_E2BD40: ' Referenced from: E2BD20
  loc_E2BD40: Proc_6_60_E63754(Shift)
  loc_E2BD45: Exit Sub
End Sub

Private Sub DGRoomType_UnknownEvent_9 'F48334
  'Data Table: 47BE78
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4822B: Me.DGRoomType.Visible = False
  loc_F4824A: If (Me.RecordCount > 0) Then
  loc_F48289:   Set var_B4 = Me.Txt
  loc_F4828F:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F48297:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F482CA:   var_B0 = Me.Fields.Item("Name")
  loc_F482E9:   Set var_B4 = Me.Txt
  loc_F482EF:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F482F7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4830D: End If
  loc_F48318: Set var_A8 = Me.Txt
  loc_F4831E: Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(1))
  loc_F48326: var_B0.SetFocus
  loc_F48332: Exit Sub
End Sub

Private Sub DGRoomType_UnknownEvent_1F 'E70B70
  'Data Table: 47BE78
  loc_E70B2E: Proc_6_153_E91D24(Me.DGRoomType, arg_14)
  loc_E70B45: Set var_8C = Me.FGPoint
  loc_E70B61: Proc_6_138_106E830(Me.DGRoomType, global_108, CInt(1))
  loc_E70B6F: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E18350
  'Data Table: 47BE78
  loc_E18345: Me.Global.Unload Me
  loc_E1834D: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E34C24
  'Data Table: 47BE78
  loc_E34C18: If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_E34C1B:   Call DGRoomType_UnknownEvent_9()
  loc_E34C20: End If
  loc_E34C20: Exit Sub
End Sub

Public Property Get OpenMode() 'E06990
  'Data Table: 47BE78
  loc_E06989: OpenMode = global_112
End Sub

Public Property Let OpenMode(vNewValue) 'E01090
  'Data Table: 47BE78
  Dim arg_6C As Boolean
  loc_E0108A: global_112 = vNewValue
  loc_E0108D: Exit Sub
  loc_E0108E: arg_6C = True
End Sub

Public Sub Proc_212_18_10E35D4
  'Data Table: 47BE78
  Dim var_9C As Variant
  Dim var_88 As Long
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_10E32C6: Me.FGrid.Left = CVar(CDbl(0))
  loc_10E32E1: Me.FGrid.Top = CVar(CDbl(950))
  loc_10E32EE: var_88 = &H5DC
  loc_10E32F5: Set var_B4 = Me.FGrid
  loc_10E330C: global_52 = CStr(CLng(var_B4.BackColor))
  loc_10E3322: var_B4.Cols = &H23
  loc_10E3327: var_9C = 0
  loc_10E3333: var_D8 = CVar(CLng(0)) 'Long
  loc_10E3338: var_F8 = "SNo"
  loc_10E3341: LateIdCallSt
  loc_10E334C: var_9C = CVar(CLng(0)) 'Long
  loc_10E3351: var_D8 = 0
  loc_10E335D: LateIdCallSt
  loc_10E3365: var_9C = 0
  loc_10E3371: var_D8 = CVar(CLng(1)) 'Long
  loc_10E3376: var_F8 = "Room No"
  loc_10E337F: LateIdCallSt
  loc_10E338A: var_9C = CVar(CLng(1)) 'Long
  loc_10E3395: var_D8 = CVar(CInt(1)) 'Integer
  loc_10E339C: LateIdCallSt
  loc_10E33A7: var_9C = CVar(CLng(1)) 'Long
  loc_10E33B2: var_D8 = CVar(CInt(1)) 'Integer
  loc_10E33B9: LateIdCallSt
  loc_10E33C4: var_9C = CVar(CLng(1)) 'Long
  loc_10E33C9: var_D8 = 0
  loc_10E33D5: LateIdCallSt
  loc_10E33DD: var_9C = 0
  loc_10E33E9: var_D8 = CVar(CLng(2)) 'Long
  loc_10E33EE: var_F8 = "Room Category"
  loc_10E33F7: LateIdCallSt
  loc_10E3402: var_9C = CVar(CLng(2)) 'Long
  loc_10E340D: var_D8 = CVar(CInt(1)) 'Integer
  loc_10E3414: LateIdCallSt
  loc_10E341F: var_9C = CVar(CLng(2)) 'Long
  loc_10E342A: var_D8 = CVar(CInt(1)) 'Integer
  loc_10E3431: LateIdCallSt
  loc_10E343C: var_9C = CVar(CLng(2)) 'Long
  loc_10E3441: var_D8 = &H5DC
  loc_10E344D: LateIdCallSt
  loc_10E3455: var_9C = 0
  loc_10E3461: var_D8 = CVar(CLng(3)) 'Long
  loc_10E3466: var_F8 = "Rate"
  loc_10E346F: LateIdCallSt
  loc_10E347A: var_9C = CVar(CLng(3)) 'Long
  loc_10E3485: var_D8 = CVar(CInt(7)) 'Integer
  loc_10E348C: LateIdCallSt
  loc_10E3497: var_9C = CVar(CLng(3)) 'Long
  loc_10E34A2: var_D8 = CVar(CInt(7)) 'Integer
  loc_10E34A9: LateIdCallSt
  loc_10E34B4: var_9C = CVar(CLng(3)) 'Long
  loc_10E34B9: var_D8 = 0
  loc_10E34C5: LateIdCallSt
  loc_10E34CD: var_9C = 0
  loc_10E34D9: var_D8 = CVar(CLng(4)) 'Long
  loc_10E34DE: var_F8 = "Room No Code"
  loc_10E34E7: LateIdCallSt
  loc_10E34F2: var_9C = CVar(CLng(4)) 'Long
  loc_10E34FD: var_D8 = CVar(CInt(1)) 'Integer
  loc_10E3504: LateIdCallSt
  loc_10E350F: var_9C = CVar(CLng(4)) 'Long
  loc_10E3514: var_D8 = 0
  loc_10E3520: LateIdCallSt
  loc_10E352F: For var_10C = 5 To &H22: var_8A = var_10C 'Byte
  loc_10E3535:   var_9C = 0
  loc_10E3543:   var_D8 = CVar(CLng(var_8A)) 'Long
  loc_10E3555:   var_C4 = CVar("Day" & CStr(var_8A)) 'String
  loc_10E355C:   LateIdCallSt
  loc_10E356F:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_10E357A:   var_D8 = CVar(CInt(4)) 'Integer
  loc_10E3581:   LateIdCallSt
  loc_10E358E:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_10E3599:   var_D8 = CVar(CInt(1)) 'Integer
  loc_10E35A0:   LateIdCallSt
  loc_10E35AD:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_10E35BC:   LateIdCallSt
  loc_10E35C7: Next var_10C 'Byte
  loc_10E35CF: Set var_B4 = Nothing 
  loc_10E35D3: Exit Sub
End Sub

Public Sub Proc_212_19_F1D74C
  'Data Table: 47BE78
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  Dim arg_FF As Integer
  loc_F1D65A: Set var_8C = Me.Txt
  loc_F1D660: Call 0.Method_Proc_212_19_F1D74CC (var_8E, var_86)
  loc_F1D670: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1D686:   Set var_8C = Me.Txt
  loc_F1D68C:   Call 0.Method_Proc_212_19_F1D74C0 (CInt(var_86), var_98)
  loc_F1D694:   var_98.Text = vbNullString
  loc_F1D6B0:   Set var_8C = Me.Txt
  loc_F1D6B6:   Call 0.Method_Proc_212_19_F1D74C0 (CInt(var_86), var_98)
  loc_F1D6BE:   var_98.Tag = vbNullString
  loc_F1D6CD: Next var_92 'Byte
  loc_F1D6E6: Me.FGrid.Rows = 1
  loc_F1D70C: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_F1D714: Set var_98 = Me.FGrid
  loc_F1D741: Me.FGrid.FixedRows = 1
  loc_F1D749: Exit Sub
  loc_F1D74A: arg_FF = FGrid.DispID_10000
End Sub

Public Sub Proc_212_20_E7908C(arg_C) 'E7908C
  'Data Table: 47BE78
  Dim var_98 As TextBox
  loc_E7903A: Set var_8C = Me.Txt
  loc_E79040: Call 0.Method_Proc_212_20_E7908CC (var_8E, var_86)
  loc_E79050: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79066:   Set var_8C = Me.Txt
  loc_E7906C:   Call 0.Method_Proc_212_20_E7908C0 (CInt(var_86), var_98)
  loc_E79074:   var_98.Enabled = arg_C
  loc_E79083: Next var_92 'Byte
  loc_E79089: Exit Sub
End Sub

Public Sub Proc_212_21_E846D8
  'Data Table: 47BE78
  loc_E84684: If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_E84696:   Me.DGRoomType.Visible = False
  loc_E8469E: End If
  loc_E846BA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E846CC:   Me.FGPoint.Visible = False
  loc_E846D4: End If
  loc_E846D4: Exit Sub
  loc_E846D5: ThisVCallHidden
End Sub

Public Sub Proc_212_22_1337DD8(arg_C, arg_10) '1337DD8
  'Data Table: 47BE78
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_BA As Integer
  Dim var_BC As Integer
  Dim var_BE As Integer
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_104 As TextBox
  Dim var_168 As Date
  Dim var_1B8 As Variant
  Dim var_218 As Date
  Dim var_110 As String
  Dim var_114 As String
  Dim var_118 As String
  Dim var_198 As String
  Dim var_1A8 As Variant
  Dim var_29C As Variant
  Dim unk_47BE95 As Connection15
  Dim var_25C As String
  Dim var_158 As Variant
  loc_133768F: Me.FGrid.FixedCols = 0
  loc_13376A1: var_100 = Me.FGrid.Rows
  loc_13376B6: If (CLng(var_100) < 2) Then
  loc_13376B9:   var_DC = vbNullString
  loc_13376C3:   Set var_F0 = Me.FGrid
  loc_13376D4: End If
  loc_13376E7: Me.FGrid.FixedRows = 1
  loc_1337702: Me.FGrid.RowHeightMin = &H3E8
  loc_1337719: Me.FGrid.Redraw = False
  loc_1337727: If (arg_10 = 1) Then
  loc_133772E:   var_BA = CInt(5)
  loc_1337735:   var_BC = CInt(&H22)
  loc_133773A:   var_BE = 1
  loc_1337740:   var_8C = arg_C
  loc_133774B:   var_94 = CDate((arg_C + CDbl(&H1E)))
  loc_1337751: Else
  loc_1337755:   var_BA = CInt(&H22)
  loc_133775C:   var_BC = CInt(5)
  loc_1337761:   var_BE = &HFF
  loc_133776C:   var_8C = CDate((arg_C - CDbl(&H1D)))
  loc_1337777:   var_94 = CDate((arg_C + CDbl(1)))
  loc_133777A: End If
  loc_133777F: var_C4 = CStr(var_8C)
  loc_1337790: Set var_F0 = Me.Txt
  loc_1337796: Call 0.Method_Proc_212_22_1337DD80 (CInt(1), var_104, var_108, var_94, var_8C, var_BE, var_BC)
  loc_133779E: var_BA = var_104.Tag
  loc_13377B5: If (var_108 <> vbNullString) Then
  loc_13377BE:   Call Proc_212_23_F2A6B8(var_C4, var_108, var_94, var_8C)
  loc_13377CE:   Proc_6_7_F26918(var_100, var_C4, var_BE)
  loc_13377DD:   var_168 = CDate(CDate((CDate(var_C4) + CDbl(&H1D))))
  loc_13377E4:   Proc_6_7_F26918(var_178, var_168, var_BC)
  loc_13377F4:   Proc_6_7_F26918(var_1C8, var_C4)
  loc_1337803:   var_218 = CDate(CDate((CDate(var_C4) + CDbl(&H1D))))
  loc_133780A:   Proc_6_7_F26918(var_228, var_218)
  loc_133781D:   Set var_F0 = Me.Txt
  loc_1337823:   Call 0.Method_Proc_212_22_1337DD80 (CInt(1), var_104, var_25C)
  loc_133782B:   var_BA = var_104.Tag
  loc_133784B:   var_110 = "SELECT '' As SNo,'' As RoomNo,RC.Name as RoomType, '' As RoomRate,'' As RoomCatCode," & var_108 & " FROM ((((((ViewBooking B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) "
  loc_1337852:   var_114 = var_110 & "Left Join RoomCat RC On B.RoomCat=RC.Code) Left Join Booking BO On B.DocId=BO.DocId) left join grpBookingdetails G On B.DocId=G.BookingDocId And "
  loc_1337859:   var_118 = var_114 & "B.Sno=G.Sno) Left Join (Select max(DocId) As DocId,(sum(AmtCr)-Sum(AmtDr)) As DepositeAmt From Paycharge Group By DocID) P On B.DocId=P.DocId) "
  loc_133787A:   var_198 = " Or B.Depdate-1 between "
  loc_133787F:   var_1A8 = CVar(var_118 & "Where (B.RoomType='RO' or B.RoomType is Null) And (B.Arrdate between ") & var_100 & " And " & var_178 & var_198 
  loc_13378B2:   var_29C = var_1A8 & var_1C8 & " And " & var_228 & ") And (Ro.ChkInDate Is NULL) And B.RoomCat='" & CVar(var_25C) & "' And B.logsite_Code='" 
  loc_13378D3:   unk_47BE95.Execute CStr(var_29C & CVar(MemVar_1F95078) & "'"), var_300, -1
  loc_13378DE:   Set var_A0 = var_304
  loc_1337929: Else
  loc_133792F:   Call Proc_212_23_F2A6B8(var_C4, var_108)
  loc_133793F:   Proc_6_7_F26918(var_100, var_C4)
  loc_133794E:   var_168 = CDate(CDate((CDate(var_C4) + CDbl(&H1D))))
  loc_1337955:   Proc_6_7_F26918(var_178, var_168)
  loc_1337965:   Proc_6_7_F26918(var_1C8, var_C4)
  loc_1337974:   var_218 = CDate(CDate((CDate(var_C4) + CDbl(&H1D))))
  loc_133797B:   Proc_6_7_F26918(var_228, var_218)
  loc_133799B:   var_110 = "SELECT '' As SNo,'' As RoomNo,RC.Name as RoomType, '' As RoomRate,'' As RoomCatCode," & var_108 & " FROM ((((((ViewBooking B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) "
  loc_13379A2:   var_114 = var_110 & "Left Join RoomCat RC On B.RoomCat=RC.Code) Left Join Booking BO On B.DocId=BO.DocId) left join grpBookingdetails G On B.DocId=G.BookingDocId And "
  loc_13379A9:   var_118 = var_114 & "B.Sno=G.Sno) Left Join (Select max(DocId) As DocId,(sum(AmtCr)-Sum(AmtDr)) As DepositeAmt From Paycharge Group By DocID) P On B.DocId=P.DocId) "
  loc_13379CA:   var_198 = " Or B.Depdate-1 between "
  loc_13379CF:   var_1A8 = CVar(var_118 & "Where (B.RoomType='RO' or B.RoomType is Null) And (B.Arrdate between ") & var_100 & " And " & var_178 & var_198 
  loc_1337A06:   var_25C = CStr(var_1A8 & var_1C8 & " And " & var_228 & ") And (Ro.ChkInDate Is NULL) And B.logsite_Code='" & CVar(MemVar_1F95078) & "'")
  loc_1337A10:   unk_47BE95.Execute var_25C, var_29C, -1
  loc_1337A1B:   Set var_A0 = var_F0
  loc_1337A57: End If
  loc_1337A5D: CVarUnk
  loc_1337A62: VerifyVarObj
  loc_1337A68: Set var_F0 = Me.FGrid
  loc_1337A6E: LateIdStAd
  loc_1337AA3: For var_30C = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_30C 'Long
  loc_1337AB6:   For var_314 = 5 To &H22: var_A8 = var_314 'Long
  loc_1337B13:     If (Right(Trim(CVar(CStr(Me.FGrid.TextMatrix)))), 2) = "##") Then
  loc_1337B27:       Me.FGrid.Row = var_A4
  loc_1337B40:       Me.FGrid.Col = var_A8
  loc_1337B5C:       Me.FGrid.CellBackColor = global_116
  loc_1337B77:       Me.FGrid.CellForeColor = 0
  loc_1337B8F:       Me.FGrid.CellFontName = "Arial Narrow"
  loc_1337BA9:       Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_1337BB4:     Else
  loc_1337C0B:       If (Right(Trim(CVar(CStr(Me.FGrid.TextMatrix)))), 2) = " #") Then
  loc_1337C1F:         Me.FGrid.Row = var_A4
  loc_1337C38:         Me.FGrid.Col = var_A8
  loc_1337C54:         Me.FGrid.CellBackColor = global_120
  loc_1337C6F:         Me.FGrid.CellForeColor = 0
  loc_1337C87:         Me.FGrid.CellFontName = "Arial Narrow"
  loc_1337CA1:         Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_1337CA9:       End If
  loc_1337CA9:     End If
  loc_1337CAC:   Next var_314 'Long
  loc_1337CB4: Next var_30C 'Long
  loc_1337CB9: var_DC = 0
  loc_1337CC2: var_158 = &H1F4
  loc_1337CCF: Set var_F0 = Me.FGrid
  loc_1337CD5: LateIdCallSt
  loc_1337CE0: var_DC = 0
  loc_1337CE9: var_158 = 1
  loc_1337CF2: var_1B8 = 0
  loc_1337CFF: Set var_F0 = Me.FGrid
  loc_1337D05: LateIdCallSt
  loc_1337D23: Me.FGrid.FixedCols = 5
  loc_1337D3E: Me.FGrid.Col = 6
  loc_1337D65: If (CLng(Me.FGrid.Rows) > 1) Then
  loc_1337D7B:   Me.FGrid.Row = 1
  loc_1337D83: End If
  loc_1337D83: var_DC = 0
  loc_1337D8C: var_158 = False
  loc_1337D95: Set var_F0 = Me.FGrid
  loc_1337D9B: LateIdCallSt
  loc_1337DB4: Me.FGrid.Redraw = True
  loc_1337DC1: Set var_98 = Nothing
  loc_1337DC9: Set var_A0 = Nothing
  loc_1337DD1: Set var_9C = Nothing
  loc_1337DD4: Exit Sub
  loc_1337DD6: DOC
End Sub

Public Sub Proc_212_23_F2A6B8(arg_C) 'F2A6B8
  'Data Table: 47BE78
  Dim var_B4 As Variant
  Dim var_F4 As String
  Dim var_124 As Date
  Dim var_148 As String
  Dim var_14C As String
  Dim var_16C As Variant
  Dim var_D8 As Variant
  loc_F2A5DD: For var_94 = 0 To &H1D: var_8A = var_94 'Integer
  loc_F2A5F8:   var_B4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F2A5FF:   Proc_6_7_F26918(var_C4, var_B4)
  loc_F2A60B:   var_F4 = " and B.ArrDate+B.NoDays-1>="
  loc_F2A61F:   var_124 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F2A626:   Proc_6_7_F26918(var_134, var_124)
  loc_F2A642:   var_148 = CStr(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F2A646:   var_14C = " Then Case When B.ResStatus In ('Confirm','') Then '|'+B.GuestName+'| ['+ISnull(Convert(Varchar,B.NoOfRooms),'')+'] {'+ISNULL(Convert(Varchar,B.RoomRate),'')+'} ('+ISNULL(G.Remarks,'')+') ##' When B.ResStatus In ('Tentative') Then '|'+B.GuestName+'| ['+ISNULL(Convert(Varchar,B.NoOfRooms),'')+'] {'+ISNULL(Convert(Varchar,B.RoomRate),'')+'} ('+ISNULL(G.Remarks,'')+') <'+IsNull(Convert(VarChar(11),BO.AdvDueDate,103),'')+'> #' Else '|'+B.GuestName+'| ['+ISNULL(Convert(Varchar,B.NoOfRooms),'')+'] {'+ISNULL(Convert(Varchar,B.RoomRate),'')+'} ('+ISNULL(G.Remarks,'')+') <'+IsNull(Convert(VarChar(11),BO.AdvDueDate,103),'')+'> ' End End End) as [" & var_148
  loc_F2A650:   var_16C = CVar(var_88 & " (Case When RO.ChkInDate is null Then Case When B.ArrDate<=") & var_C4 & var_F4 & var_134 & CVar(var_14C & "],") 
  loc_F2A655:   var_88 = CStr(var_16C)
  loc_F2A679: Next var_94 'Integer
  loc_F2A688: var_B4 = CVar((Len(var_88) - 1)) 'Long
  loc_F2A6A5: var_88 = CStr(Mid(var_88, 1, var_B4))
  loc_F2A6AF: Proc_212_23_F2A6B8 = 
  loc_F2A6B5: var_D8 = CVar() 'Integer
End Sub
