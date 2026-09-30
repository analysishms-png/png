VERSION 5.00
Begin VB.Form prAttend
  Caption = "Leave"
  BackColor = &HD0C7BB&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11160
  ClientHeight = 6450
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin TextBox Txt
    Index = 5
    ForeColor = &HFF0000&
    Left = 4950
    Top = 1260
    Width = 1725
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 12
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
  Begin DataGrid DGEmployee
    Left = 8145
    Top = 4800
    Width = 11250
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11160
    Height = 450
    TabIndex = 22
  End
  Begin PictureBox Picture3
    Picture = "prAttend.frx":0
    Left = 13770
    Top = 2265
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 21
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin Frame FramePrint
    BackColor = &HC0C0C0&
    Left = 870
    Top = 5775
    Width = 4680
    Height = 1635
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Begin CommandButton CmdPrint
      Caption = "&Print"
      Index = 0
      BackColor = &HFFFF&
      Left = 960
      Top = 1035
      Width = 1410
      Height = 375
      TabIndex = 18
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdPrint
      Caption = "&Close"
      Index = 1
      BackColor = &HFFFF&
      Left = 2370
      Top = 1035
      Width = 1425
      Height = 375
      TabIndex = 19
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox TxtDate
      Left = 1800
      Top = 345
      Width = 1590
      Height = 360
      TabIndex = 17
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin Shape Shape1
      BorderColor = &H4000&
      Left = 915
      Top = 990
      Width = 2925
      Height = 465
      Shape = 4
      BorderWidth = 2
      FillStyle = 0
    End
    Begin Label Label2
      Caption = "Date :"
      Left = 1035
      Top = 375
      Width = 765
      Height = 300
      TabIndex = 16
      BackStyle = 0 'Transparent
    End
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 2685
    Top = 1575
    Width = 3990
    Height = 285
    TabIndex = 2
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
    Left = 6000
    Top = 4830
    Width = 2010
    Height = 1725
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 15
      Top = 15
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 13
    End
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HFF0000&
    Left = 2685
    Top = 1260
    Width = 1785
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 12
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
    Index = 3
    ForeColor = &HFF0000&
    Left = 2685
    Top = 1890
    Width = 1785
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 7
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
    Index = 2
    ForeColor = &HFF0000&
    Left = 2685
    Top = 2520
    Width = 795
    Height = 285
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 4
    ForeColor = &HFF0000&
    Left = 2685
    Top = 2205
    Width = 1785
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 7
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
  Begin MSFlexGrid FGPoint
    Left = 9015
    Top = 2820
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 20
  End
  Begin Label Label1
    Caption = "To"
    Index = 5
    ForeColor = &HFF0000&
    Left = 4590
    Top = 1275
    Width = 240
    Height = 240
    TabIndex = 28
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
  Begin Label LblEmpRef
    Caption = "."
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6780
    Top = 1575
    Width = 105
    Height = 270
    TabIndex = 27
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3375
    Top = 3870
    Width = 2790
    Height = 285
    TabIndex = 25
    Alignment = 2 'Center
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
    Left = 0
    Top = 3870
    Width = 2880
    Height = 255
    TabIndex = 24
    Alignment = 2 'Center
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
    Top = 450
    Width = 180
    Height = 540
    TabIndex = 23
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
  Begin Label Label1
    Caption = "Employee Name"
    Index = 1
    BackColor = &HC0FFFF&
    ForeColor = &HFF0000&
    Left = 1005
    Top = 1590
    Width = 1560
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
  Begin Label Label1
    Caption = "First Shift"
    Index = 3
    ForeColor = &HFF0000&
    Left = 1005
    Top = 1905
    Width = 900
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HC0&
    Left = 1935
    Top = 1275
    Width = 705
    Height = 240
    TabIndex = 10
    Alignment = 1 'Right Justify
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
    Caption = "Second Shift"
    Index = 4
    ForeColor = &HFF0000&
    Left = 1005
    Top = 2220
    Width = 1215
    Height = 240
    TabIndex = 9
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
  Begin Label Label3
    Caption = "Address1"
    BackColor = &HC0FFFF&
    ForeColor = &HFF0000&
    Left = 0
    Top = 0
    Width = 855
    Height = 255
    TabIndex = 8
    BackStyle = 0 'Transparent
  End
  Begin Label Label1
    Caption = "Out Door Duty"
    Index = 2
    ForeColor = &HFF0000&
    Left = 1005
    Top = 2535
    Width = 1320
    Height = 240
    Visible = 0   'False
    TabIndex = 7
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
    Caption = "Date From"
    Index = 0
    ForeColor = &HFF0000&
    Left = 1005
    Top = 1275
    Width = 990
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

Attribute VB_Name = "prAttend"


Private Sub TxtDate_Validate(Cancel As Boolean) 'F4B614
  'Data Table: 4B2E2C
  loc_F4B51C: If (Me.TxtDate.Text = vbNullString) Then
  loc_F4B531:   Me.TxtDate.Text = CStr(MemVar_1F950EC)
  loc_F4B578:   Me.LblVPrefix.Caption = CStr(Format(CVar(Me.TxtDate), "yyyy"))
  loc_F4B593: Else
  loc_F4B5AF:   Me.TxtDate.Text = Proc_6_33_15125B8(Me.TxtDate, 1)
  loc_F4B5FA:   Me.LblVPrefix.Caption = CStr(Format(CVar(Me.TxtDate), "yyyy"))
  loc_F4B612: End If
  loc_F4B612: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11D9888
  'Data Table: 4B2E2C
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_9E As Integer
  Dim Me As Variant
  Dim var_B8 As String
  Dim var_90 As Variant
  loc_11D9432: Set var_88 = Me.Txt
  loc_11D9438: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11D9446: Proc_6_74_E23240(var_8C)
  loc_11D9452: Call Proc_306_34_EB862C(var_8C)
  loc_11D945A: var_92 = Index
  loc_11D9465: If Not (var_92 = CInt(3)) Then
  loc_11D9470:   If Not (var_92 = CInt(4)) Then
  loc_11D947B:     If Not (var_92 = CInt(0)) Then
  loc_11D9486:       If (var_92 = CInt(5)) Then
  loc_11D9489:       End If
  loc_11D9489:     End If
  loc_11D9489:   End If
  loc_11D9498:   Set var_88 = Me.Txt
  loc_11D949E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11D94A6:   var_8C.SelStart = 0
  loc_11D94BF:   Set var_88 = Me.Txt
  loc_11D94C5:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11D94CD:   var_98 = var_8C.Text
  loc_11D94E0:   Set var_90 = Me.Txt
  loc_11D94E6:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_11D94EE:   var_9C.SelLength = Len(var_98)
  loc_11D9501: End If
  loc_11D9504: var_9E = Index
  loc_11D950F: If (var_9E = CInt(1)) Then
  loc_11D9529:   If (Me.RecordCount > 0) Then
  loc_11D9537:     Set var_8C = Me.FGPoint
  loc_11D954F:     Proc_6_137_1192FDC(Me.DGEmployee, global_52, Index)
  loc_11D955D:   End If
  loc_11D95AB:   Set var_88 = Me.Txt
  loc_11D95B1:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_11D95B9:   var_8C = var_8C.Text
  loc_11D95D1:   If (var_9E Or (var_98 = vbNullString)) Then
  loc_11D95D4:     Exit Sub
  loc_11D95D5:   End If
  loc_11D95E2:   Set var_88 = Me.Txt
  loc_11D95E8:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11D95F0:   var_98 = var_8C.Text
  loc_11D9602:   var_B8 = "Name"
  loc_11D963D:   If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_11D9646:     Me.MoveFirst
  loc_11D9669:     Set var_88 = Me.Txt
  loc_11D966F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_11D9677:     0 = var_8C.Text
  loc_11D9690:     Me.Find 1 & var_98 & "'", var_B8, var_92
  loc_11D96A5:   End If
  loc_11D96A8: Else
  loc_11D96B0:   If Not (var_9E = CInt(3)) Then
  loc_11D96BB:     If (var_9E = CInt(4)) Then
  loc_11D96BE:     End If
  loc_11D96CB:     ReDim var_F4(0 To 5)
  loc_11D96E2:     var_F4(0) = "Absent"
  loc_11D96F1:     var_F4(1) = "Casual"
  loc_11D9700:     var_F4(2) = "Earned"
  loc_11D970F:     var_F4(3) = "Holiday"
  loc_11D971E:     var_F4(4) = "Leave"
  loc_11D972D:     var_F4(5) = "Present"
  loc_11D9744:     global_72 = Array(var_F4)
  loc_11D974F:     Set var_9C = Me.ListView
  loc_11D976A:     Set var_8C = Me.Txt
  loc_11D9784:     Set global_88 = Proc_6_66_F0048C(var_9C, var_8C, Index)
  loc_11D97A2:     Set var_88 = Me.Txt
  loc_11D97A8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_11D97B0:     global_72 = var_8C.Text
  loc_11D97C2:     Set var_90 = Me.Txt
  loc_11D97C8:     Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_98)
  loc_11D97D0:     var_9C.Tag = 6
  loc_11D97F0:     Set var_88 = Me.Txt
  loc_11D97F6:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11D9810:     Me.FrmList.Left = var_8C.Left
  loc_11D982B:     Set var_90 = Me.Txt
  loc_11D9831:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_11D984B:     Set var_88 = Me.Txt
  loc_11D9851:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11D9874:     Me.FrmList.Top = ((var_8C.Top + var_9C.Height) + CDbl(&H1E))
  loc_11D9886:   End If
  loc_11D9886: End If
  loc_11D9886: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11896D4
  'Data Table: 4B2E2C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As TextBox
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As Frame
  loc_118931B: var_86 = Shift
  loc_1189328: If (CLng(Shift) = &H1B) Then
  loc_118932B:   Call Proc_306_34_EB862C(var_86)
  loc_1189330:   Exit Sub
  loc_1189331: End If
  loc_1189334: var_88 = KeyCode
  loc_118933F: If (var_88 = CInt(0)) Then
  loc_1189342:   GoTo loc_1189566
  loc_1189345: End If
  loc_118934D: If (var_88 = CInt(1)) Then
  loc_118935B:   Set var_AC = Me.Txt
  loc_118936D:   Set var_A0 = Me.FGPoint
  loc_1189378:   Set var_9C = Nothing
  loc_11893AA:   Proc_6_69_134A630(Me.DGEmployee, var_AC, CInt(1), global_52, Shift, 0)
  loc_11893C9:   var_B4 = Me.RecordCount
  loc_1189419:   If ((var_B4 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1189420:     Set var_9C = Me.DGEmployee
  loc_1189427:     Set var_90 = Me.FGPoint
  loc_118943F:     Proc_6_138_106E830(var_9C, global_52, KeyCode, var_90, 1)
  loc_118944D:   End If
  loc_1189450: Else
  loc_1189458:   If Not (var_88 = CInt(3)) Then
  loc_1189463:     If (var_88 = CInt(4)) Then
  loc_1189466:     End If
  loc_1189488:     Set var_8C = Me.Txt
  loc_118948E:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, var_9C)
  loc_1189496:     var_A0 = var_90.Left
  loc_11894A8:     Set var_9C = Me.Txt
  loc_11894AE:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_11894B6:     0 = var_A0.Top
  loc_11894C8:     Set var_A8 = Me.Txt
  loc_11894CE:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_11894D6:     var_BC = var_AC.Height
  loc_11894E8:     Set var_B0 = Me.Txt
  loc_11894EE:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_11894F6:     var_C4 = var_C0.Width
  loc_1189542:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1189566:   End If
  loc_1189566:   ' Referenced from: 1189342
  loc_1189566: End If
  loc_118959F: If ((Me.FrmList.Visible = 0) And (CBool(Me.DGEmployee.Visible) = 0)) Then
  loc_11895C0:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(4))) Then
  loc_11895C9:     Proc_6_75_E5335C(Shift, arg_14, CInt(var_B4), CInt(((var_B8 + var_BC) + CDbl(&H19))))
  loc_11895CE:   End If
  loc_11895EC:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(4))) Then
  loc_1189626:     If (MsgBox("Save Record ?", 4, "Save Data", var_13C, var_15C) = 6) Then
  loc_1189629:       Call TopCtrl1_UnknownEvent_16()
  loc_118962E:     End If
  loc_118962E:     Exit Sub
  loc_118962F:   End If
  loc_1189633:   Set var_8C = Me.TopCtrl1
  loc_1189639:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(var_C4))
  loc_118965B:   If ((CStr(1560) = "Add") And (KeyCode <> CInt(0))) Then
  loc_1189673:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_118967C:       Proc_6_76_E533C8(Shift, arg_14)
  loc_1189681:     End If
  loc_1189681:   End If
  loc_1189685:   Set var_8C = Me.TopCtrl1
  loc_118968B:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_88)
  loc_11896AD:   If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_11896C5:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11896CE:       Proc_6_76_E533C8(Shift)
  loc_11896D3:     End If
  loc_11896D3:   End If
  loc_11896D3: End If
  loc_11896D3: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'ECB8A4
  'Data Table: 4B2E2C
  loc_ECB803: Proc_6_58_E06050(arg_10)
  loc_ECB816: If (KeyAscii = CInt(1)) Then
  loc_ECB835:   If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_ECB847:     var_A0 = "Name"
  loc_ECB862:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_52, arg_10)
  loc_ECB894:     Proc_6_138_106E830(Me.DGEmployee, global_52, KeyAscii, Me.FGPoint)
  loc_ECB8A2:   End If
  loc_ECB8A2: End If
  loc_ECB8A2: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F1A970
  'Data Table: 4B2E2C
  Dim var_86 As Integer
  loc_F1A883: var_86 = KeyCode
  loc_F1A88E: If (var_86 = CInt(1)) Then
  loc_F1A8AD:   If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_F1A8C1:     var_A8 = "Name"
  loc_F1A8E9:     Proc_6_68_12A2818(Me.DGEmployee, Me.Txt, CInt(1), global_52)
  loc_F1A8FC:   End If
  loc_F1A8FF: Else
  loc_F1A907:   If Not (var_86 = CInt(3)) Then
  loc_F1A912:     If (var_86 = CInt(4)) Then
  loc_F1A915:     End If
  loc_F1A930:     If (Me.FrmList.Visible = &HFF) Then
  loc_F1A95F:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F1A96F:     End If
  loc_F1A96F:   End If
  loc_F1A96F: End If
  loc_F1A96F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4811C
  'Data Table: 4B2E2C
  loc_E480FA: Set var_88 = Me.Txt
  loc_E48100: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4810E: Proc_6_73_E23294(var_8C)
  loc_E4811A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13717C4
  'Data Table: 4B2E2C
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_E8 As Variant
  Dim var_B4 As Variant
  Dim var_118 As Variant
  Dim var_11C As Variant
  Dim var_13C As Integer
  Dim var_108 As Variant
  Dim unk_4B2E33 As Connection15
  Dim var_144 As TextBox
  Dim var_21C As Integer
  Dim var_208 As Recordset15
  Dim var_20C As Fields15
  Dim var_220 As Field20
  Dim var_228 As TextBox
  Dim var_274 As TextBox
  Dim arg_10 As Integer
  loc_1370FB7: var_8A = Cancel
  loc_1370FC2: If (var_8A = CInt(1)) Then
  loc_1371013:   Set var_98 = Me.Txt
  loc_1371019:   Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_1371021:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_1371039:   If (var_8A Or (var_A0 = vbNullString)) Then
  loc_137103C:     Exit Sub
  loc_137103D:   End If
  loc_1371078:   Set var_B4 = Me.Txt
  loc_137107E:   Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_1371086:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_13710D7:   Set var_B4 = Me.Txt
  loc_13710DD:   Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13710E5:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1371128:   var_D8 = " - "
  loc_137112D:   var_E8 = (Me.Fields.Item("Department").Value + var_D8)
  loc_137114E:   var_B8 = Me.Fields.Item("Designation")
  loc_137115E:   var_118 = (var_E8 + var_B8.Value)
  loc_1371170:   Me.LblEmpRef.Caption = CStr(var_118)
  loc_13711AD:   var_9C = Me.Fields.Item("Code")
  loc_13711EA:   var_13C = 0
  loc_1371208:   var_E8 = "Select joining_Date from Employee where code='" & var_9C.Value 
  loc_1371211:   var_108 = var_E8 & "'" 
  loc_137121F:   unk_4B2E33.Execute CStr(var_108), var_118, -1
  loc_1371227:   var_B4 = var_B4.Fields
  loc_137122F:   var_13C = var_B8.Item(var_B8)
  loc_1371237:   var_11C = var_11C.Value
  loc_137124D:   Set var_140 = Me.Txt
  loc_1371253:   Call 0.Method_Txt_Validate0 (CInt(0), var_144, var_148)
  loc_1371274:   var_21C = 0
  loc_13712A9:   unk_4B2E33.Execute CStr("Select Resign_Date from Employee where code='" & Me.Fields.Item("Code").Value & "'"), var_204, -1
  loc_13712B1:   var_208 = var_208.Fields
  loc_13712B9:   var_21C = var_20C.Item(var_20C)
  loc_13712C1:   var_220 = var_220.Value
  loc_13712D7:   Set var_224 = Me.Txt
  loc_13712DD:   Call 0.Method_Txt_Validate0 (CInt(0), var_228, var_22C)
  loc_137130A:   Set var_270 = Me.Txt
  loc_1371310:   Call 0.Method_Txt_Validate0 (CInt(0), var_274)
  loc_1371379:   If CBool((var_144.Text > CDate(CDate(var_148))) Or (var_228.Text < CDate(CDate(var_22C))) Or (CDate(var_274.Text) > MemVar_1F950EC)) Then
  loc_1371395:     MsgBox(" Invalid Date For This Employee", &H40, var_E8, var_108, var_118)
  loc_13713A7:     arg_10 = &HFF
  loc_13713AA:   End If
  loc_13713AD: Else
  loc_13713B5:   If Not (var_8A = CInt(0)) Then
  loc_13713C0:     If (var_8A = CInt(5)) Then
  loc_13713C3:     End If
  loc_13713D0:     Set var_98 = Me.Txt
  loc_13713D6:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_137140E:     If (Len(Trim(CVar(var_9C.Text))) = 0) Then
  loc_1371423:       Set var_98 = Me.Txt
  loc_1371429:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1371431:       var_9C.Text = CStr(MemVar_1F950EC)
  loc_137144A:       Set var_98 = Me.Txt
  loc_1371450:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_137148A:       Me.LblVPrefix.Caption = CStr(Format(CVar(var_9C), "yyyy"))
  loc_13714A5:     Else
  loc_13714AF:       Set var_98 = Me.Txt
  loc_13714B5:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, 1)
  loc_13714D5:       Set var_B8 = Me.Txt
  loc_13714DB:       Call 0.Method_Txt_Validate0 (Cancel, var_11C)
  loc_13714E3:       var_11C.Text = Proc_6_33_15125B8(var_9C, 1)
  loc_1371500:       Set var_98 = Me.Txt
  loc_1371506:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_137151A:       var_E8 = "yyyy"
  loc_137152A:       var_108 = Format(CVar(var_9C), var_E8)
  loc_1371532:       var_A0 = CStr(var_108)
  loc_1371540:       Me.LblVPrefix.Caption = var_A0
  loc_1371558:     End If
  loc_1371565:     Set var_98 = Me.Txt
  loc_137156B:     Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_1371573:     1 = var_9C.Text
  loc_137158B:     If (CDate(var_A0) > MemVar_1F950EC) Then
  loc_13715A7:       MsgBox(" Invalid Date ", &H40, var_E8, var_108, var_118)
  loc_13715B9:       arg_10 = &HFF
  loc_13715BC:     End If
  loc_13715BF:   Else
  loc_13715C7:     If (var_8A = CInt(3)) Then
  loc_13715D5:       Set var_98 = Me.Txt
  loc_13715DB:       Call 0.Method_Txt_Validate0 (CInt(3), var_9C, arg_10)
  loc_13715E3:       var_A0 = "First Shift"
  loc_1371604:       If (Proc_6_27_EA61EC(var_9C, var_A0) = 0) Then
  loc_1371611:         Set var_98 = Me.Txt
  loc_1371617:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_137161F:         var_9C.SetFocus
  loc_137162D:         arg_10 = &HFF
  loc_1371630:         Exit Sub
  loc_1371631:       End If
  loc_137163E:       Set var_98 = Me.Txt
  loc_1371644:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_137164C:       arg_10 = var_9C.Text
  loc_1371663:       If (var_A0 <> vbNullString) Then
  loc_137167E:         Set var_9C = Me.ListView.SelectedItem
  loc_1371696:         Set var_B4 = Me.Txt
  loc_137169C:         Call 0.Method_Txt_Validate0 (Cancel, var_B8, var_9C.Text)
  loc_13716A4:         var_B8.Text = 1
  loc_13716BA:       End If
  loc_13716BD:     Else
  loc_13716C5:       If (var_8A = CInt(4)) Then
  loc_13716D3:         Set var_98 = Me.Txt
  loc_13716D9:         Call 0.Method_Txt_Validate0 (CInt(4), var_9C)
  loc_13716E1:         var_A0 = "Second Shift"
  loc_1371702:         If (Proc_6_27_EA61EC(var_9C, var_A0) = 0) Then
  loc_137170F:           Set var_98 = Me.Txt
  loc_1371715:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_137171D:           var_9C.SetFocus
  loc_137172B:           arg_10 = &HFF
  loc_137172E:           Exit Sub
  loc_137172F:         End If
  loc_137173C:         Set var_98 = Me.Txt
  loc_1371742:         Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_137174A:         arg_10 = var_9C.Text
  loc_1371761:         If (var_A0 <> vbNullString) Then
  loc_1371794:           Set var_B4 = Me.Txt
  loc_137179A:           Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13717A2:           var_B8.Text = Me.ListView.SelectedItem.Text
  loc_13717B8:         End If
  loc_13717B8:       End If
  loc_13717B8:     End If
  loc_13717B8:   End If
  loc_13717B8: End If
  loc_13717BD: Set var_88 = Nothing
  loc_13717C0: Exit Sub
End Sub

Private Sub CmdPrint_Click(Index As Integer) '117B520
  'Data Table: 4B2E2C
  Dim var_9C As Integer
  Dim var_BC As Variant
  Dim var_EC As String
  Dim var_FC As Variant
  Dim var_10C As String
  Dim var_170 As String
  Dim unk_4B2E33 As Connection15
  Dim var_98 As Recordset15
  Dim var_1A2 As Integer
  Dim var_194 As Frame
  loc_117B17C: If (Index = 0) Then
  loc_117B183:   Set var_198 = Me.TxtDate
  loc_117B195:   var_CC = "yyyy"
  loc_117B1A5:   var_DC = Format(CVar(var_198), var_CC)
  loc_117B1B5:   Proc_6_7_F26918(var_13C, CVar(Me.TxtDate), 1)
  loc_117B1C7:   var_EC = " Select A.V_Date,A.V_Prefix as [Year] ,E.Name As EmployeeName,A.FirstShift,A.SecondShift From Attend A left join Employee E on A.Emp_Code = E.Code Where A.V_Prefix='"
  loc_117B1CF:   var_FC = var_EC & var_DC 
  loc_117B1D3:   var_10C = "' And A.V_Date="
  loc_117B1F6:   unk_4B2E33.Execute CStr(var_FC & var_10C & var_13C & " order by A.V_Date"), var_190, -1
  loc_117B201:   Set var_98 = var_194
  loc_117B22B:   var_19C = var_98.RecordCount
  loc_117B239:   If (var_19C <= 0) Then
  loc_117B255:     MsgBox("No Record to Print", 0, var_CC, var_DC, var_FC)
  loc_117B265:     Exit Sub
  loc_117B266:   End If
  loc_117B27C:   Set var_194 = var_98 
  loc_117B288:   var_1A2 = CreateFieldDefFile(var_194, MemVar_1F950B4 & "\PAttend.ttx", &HFF)
  loc_117B292:   Set var_98 = var_194
  loc_117B298:   var_BC = CVar(var_1A2) 'Integer
  loc_117B29B:   var_94 = var_BC 'Variant
  loc_117B2B7:   var_170 = MemVar_1F950B4 & "\PAttend.RPT"
  loc_117B2C0:   Call 0.Method_arg_1C (var_170, var_BC, var_194, var_1A2)
  loc_117B2CB:   MemVar_1F951E8 = var_194
  loc_117B2E6:   Call 0.Method_arg_90 (var_194, var_19C, var_9A, 1)
  loc_117B2EE:   Call 0.Method_arg_24 (var_194, 1)
  loc_117B2FA:   For var_1A6 =  To CInt(var_19C): var_9C = var_1A6 'Integer
  loc_117B313:     Call 0.Method_arg_90 (var_194, CLng(var_9A))
  loc_117B31B:     Call 0.Method_arg_20 (var_198)
  loc_117B323:     Call 0.Method_arg_30 (var_170)
  loc_117B32B:     var_1AC = var_170
  loc_117B33D:     If (var_1AC = "Title") Then
  loc_117B353:       Call 0.Method_arg_90 (var_194, CLng(var_9A))
  loc_117B35B:       Call 0.Method_arg_20 (var_198)
  loc_117B363:       Call 0.Method_arg_38 ("'Attendance Details'")
  loc_117B372:     Else
  loc_117B37A:       If (var_1AC = "comp_name") Then
  loc_117B39E:         Call 0.Method_arg_90 (var_194, CLng(var_9A))
  loc_117B3A6:         Call 0.Method_arg_20 (var_198)
  loc_117B3AE:         Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_117B3C4:       Else
  loc_117B3CC:         If (var_1AC = "comp_add1") Then
  loc_117B3F0:           Call 0.Method_arg_90 (var_194, CLng(var_9A))
  loc_117B3F8:           Call 0.Method_arg_20 (var_198)
  loc_117B400:           Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_117B416:         Else
  loc_117B41E:           If (var_1AC = "comp_city") Then
  loc_117B428:             var_170 = "'" & MemVar_1F9513C
  loc_117B442:             Call 0.Method_arg_90 (var_194, CLng(var_9A))
  loc_117B44A:             Call 0.Method_arg_20 (var_198)
  loc_117B452:             Call 0.Method_arg_38 (var_170 & "'")
  loc_117B465:           End If
  loc_117B465:         End If
  loc_117B465:       End If
  loc_117B465:     End If
  loc_117B468:   Next var_1A6 'Integer
  loc_117B486:   Call 0.Method_arg_64 (var_194, CVar(var_98))
  loc_117B48E:   Call 0.Method_arg_2C (var_EC)
  loc_117B49C:   Call 0.Method_arg_150 (var_10C)
  loc_117B4A7:   Call 0.Method_arg_50 (var_170)
  loc_117B4B1:   Set var_198 = Nothing
  loc_117B4CB:   Set var_194 = MemVar_1F951E8 
  loc_117B4D7:   Proc_6_99_1484404(var_194, 0, var_170)
  loc_117B4E2:   MemVar_1F951E8 = var_194
  loc_117B4F5:   Set var_98 = Nothing
  loc_117B4FB: Else
  loc_117B501:   If (Index = 1) Then
  loc_117B510:     Me.FramePrint.Visible = False
  loc_117B518:   End If
  loc_117B518: End If
  loc_117B518: Exit Sub
  loc_117B519: Proc_6_60_E63754(&HFF)
  loc_117B51E: Exit Sub
End Sub

Private Sub Form_Load() '100E9CC
  'Data Table: 4B2E2C
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As Label
  loc_100E7C0: On Error Goto loc_100E9C3
  loc_100E7CD: Set var_A8 = Me.TopCtrl1
  loc_100E7D3: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_100E7E1: Call 0.Method_arg_50 (var_AC)
  loc_100E7F1: Set var_A8 = Me.TopCtrl1
  loc_100E7F7: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_100E802: Call Proc_306_36_F058E8()
  loc_100E823: Me.TopCtrl1.CursorLocation = 3
  loc_100E846: var_AC = "Select Employee.Code,Employee.Name,IsNull(Depart.Name,'') As Department,Desig.Name As Designation From Employee Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation Where (Employee.LOGSITE_CODE='" & MemVar_1F95078
  loc_100E84D: var_BC = CVar(var_AC & "' or Employee.LOGSITE_CODE='HO') Order by Employee.Name") 'String
  loc_100E86B: CVarUnk
  loc_100E870: VerifyVarObj
  loc_100E87C: LateIdStAd
  loc_100E8A6: Me.DGEmployee.CursorLocation = 3
  loc_100E8B6: Proc_6_7_F26918(var_BC, MemVar_1F950F4, Me.DGEmployee)
  loc_100E8C6: Proc_6_7_F26918(var_10C, MemVar_1F950FC, New)
  loc_100E8E2: var_A4 = "Select (V_Prefix+'-'+ LTRIM(RTRIM(CONVERT(Varchar(11), A.V_Date, 103)))+'-'+Emp_Code) as SearchCode, A.* , E.Name as EmployeeName,IsNull(Depart.Name,'') As Department,Desig.Name As Designation From Attend A Left Join Employee E on A.Emp_Code = E.Code Left Join Depart On Depart.Code=E.Department Left Join Desig on Desig.Code=E.Designation Where A.V_Date between "
  loc_100E90E: r_BC, CVar(MemVar_1F95044), 2 var_A4 & var_BC & " and " & var_10C & " order by V_Date", CVar(MemVar_1F95044), 2
  loc_100E945: Call Proc_306_33_F1C5CC(Proc_5_1_100EC1C("INI", Me, New, 3), -1)
  loc_100E950: Call Proc_306_36_F058E8(3)
  loc_100E955: Call Proc_306_32_1412808(-1)
  loc_100E969: Me.LblUser.Left = CDbl(13500)
  loc_100E980: Me.LblUser.Top = CDbl(7800)
  loc_100E997: Me.LblLDt.Top = CDbl(8160)
  loc_100E9AE: Me.LblLDt.Left = CDbl(13500)
  loc_100E9BD: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_100E9C2: Exit Sub
  loc_100E9C3: ' Referenced from: 100E7C0
  loc_100E9C3: Proc_6_60_E63754()
  loc_100E9C8: Exit Sub
End Sub

Private Sub Form_Resize() 'ED9888
  'Data Table: 4B2E2C
  Dim var_8C As Label
  loc_ED97E6: Call 0.Method_arg_50 (var_88)
  loc_ED97F8: Me.LblFormCaption.Caption = var_88
  loc_ED9811: Me.LblFormCaption.Left = CDbl(0)
  loc_ED981D: Set var_A0 = Me.TopCtrl1
  loc_ED9823: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED9830: Set var_8C = Me.TopCtrl1
  loc_ED9836: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED9850: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED986B: Call 0.Method_arg_100 (var_B8)
  loc_ED987D: Me.LblFormCaption.Width = var_B8
  loc_ED9885: Exit Sub
  loc_ED9886: Set var_4B8C = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E29678
  'Data Table: 4B2E2C
  loc_E2965B: Set global_56 = Nothing
  loc_E2966D: Set global_52 = Nothing
  loc_E29674: Exit Sub
  loc_E29675: Exit Sub
End Sub

Private Sub Form_Activate() 'E3D984
  'Data Table: 4B2E2C
  loc_E3D960: Set var_88 = Me.TopCtrl1
  loc_E3D966: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E3D97B: If (CLng(CInt()) = &H2D) Then
  loc_E3D97E:   Call TopCtrl1_UnknownEvent_15()
  loc_E3D983: End If
  loc_E3D983: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2961C
  'Data Table: 4B2E2C
  loc_E295F4: On Error Goto loc_E29614
  loc_E2960B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E29613: Exit Sub
  loc_E29614: ' Referenced from: E295F4
  loc_E29614: Proc_6_60_E63754(Shift)
  loc_E29619: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FCCF78
  'Data Table: 4B2E2C
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_FCCDC0: On Error Goto loc_FCCF72
  loc_FCCDE6: Call Proc_306_33_F1C5CC(Proc_5_1_100EC1C("ADD", Me))
  loc_FCCDFE: Me.LblUser.Caption = vbNullString
  loc_FCCE13: Me.LblLDt.Caption = vbNullString
  loc_FCCE1B: Call Proc_306_31_EDAC88(global_56)
  loc_FCCE33: Set var_8C = Me.Txt
  loc_FCCE39: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_FCCE41: var_94.Text = CStr(MemVar_1F950EC)
  loc_FCCE63: Set var_8C = Me.Txt
  loc_FCCE69: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94)
  loc_FCCE71: var_94.Text = CStr(MemVar_1F950EC)
  loc_FCCE8B: Set var_8C = Me.Txt
  loc_FCCE91: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_FCCE99: var_94.SetFocus
  loc_FCCEA9: Set var_94 = Me.TxtDate
  loc_FCCEE1: Me.LblVPrefix.Caption = CStr(Format(CVar(var_94), "yyyy"))
  loc_FCCF07: Set var_8C = Me.Txt
  loc_FCCF0D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94, "No")
  loc_FCCF15: var_94.Text = 1
  loc_FCCF2F: Set var_8C = Me.Txt
  loc_FCCF35: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_94, "Absent")
  loc_FCCF3D: var_94.Text = 1
  loc_FCCF57: Set var_8C = Me.Txt
  loc_FCCF5D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_94)
  loc_FCCF65: var_94.Text = "Absent"
  loc_FCCF71: Exit Sub
  loc_FCCF72: ' Referenced from: FCCDC0
  loc_FCCF72: Proc_6_60_E63754(var_94)
  loc_FCCF77: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9AC58
  'Data Table: 4B2E2C
  loc_E9ABE0: On Error Goto loc_E9AC51
  loc_E9AC1A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9AC40:   Call Proc_306_33_F1C5CC(Proc_5_1_100EC1C("INI", Me))
  loc_E9AC4B:   Call Proc_306_32_1412808(global_56)
  loc_E9AC50: End If
  loc_E9AC50: Exit Sub
  loc_E9AC51: ' Referenced from: E9ABE0
  loc_E9AC51: Proc_6_60_E63754()
  loc_E9AC56: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '13226B4
  'Data Table: 4B2E2C
  Dim var_C4 As Variant
  Dim var_10C As Variant
  Dim var_14C As Variant
  Dim var_160 As String
  Dim var_B4 As TextBox
  Dim unk_4B2E33 As Connection15
  Dim var_A0 As Recordset15
  Dim var_E4 As Variant
  Dim Me As Recordset15
  Dim var_164 As String
  Dim var_13C As Variant
  Dim var_B0 As Fields15
  Dim var_22C As Double
  Dim var_F8 As Fields15
  Dim var_15C As Variant
  Dim var_234 As Double
  Dim var_1CC As Variant
  Dim var_214 As Variant
  Dim var_224 As Variant
  Dim var_FC As TextBox
  Dim var_F4 As Variant
  loc_1321F9C: On Error Goto loc_1322664
  loc_1321FAA: Set var_B0 = Me.Txt
  loc_1321FB0: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0))
  loc_1321FC0: Set var_F8 = Me.Txt
  loc_1321FC6: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_FC)
  loc_1321FE3: var_C4 = CVar(var_B4) 'Address
  loc_1321FEA: var_F4 = Format(var_C4, "MMM")
  loc_132200A: var_10C = CVar(var_FC) 'Address
  loc_1322019: var_14C = (1 + Format(var_10C, "YYYY"))
  loc_1322072: Set var_B0 = Me.Txt
  loc_1322078: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_B4, var_164, "Select * From Salary Where site_code='" & MemVar_1F95070 & "' and Emp_Code='", var_C4, -1)
  loc_13220A7: unk_4B2E33.Execute 1 & var_164 & "' and Mth_Year='" & CStr(Ucase(var_14C)) & "'", var_F4, 1
  loc_13220D8: var_17C = var_B4.Tag.RecordCount
  loc_13220E6: If (var_17C > 0) Then
  loc_13220EF:   Call 0.Method_arg_50 (var_164, 1)
  loc_1322116:   MsgBox(CVar("Salary Already Created, " & vbCrLf & " You Can Not Delete Record ..."), &H40, CVar(var_164), var_F4, var_10C)
  loc_1322129:   Exit Sub
  loc_132212A: End If
  loc_1322161: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_10C) = 6) Then
  loc_132216D:   unk_4B2E33.BeginTrans var_17C
  loc_1322183:   var_94 = Me.Bookmark 'Variant
  loc_1322195:   Set var_B0 = Me.Txt
  loc_132219B:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_B4)
  loc_13221B3:   Set var_F8 = Me.Txt
  loc_13221B9:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_FC)
  loc_132220C:   var_13C = CVar("Select * from attendence where Emp_Code='" & var_B4.Tag & "' and mth_Year='") & Format(CVar(var_FC), "MMMyyyy") & "'" 
  loc_132221A:   unk_4B2E33.Execute CStr(var_13C), var_14C, -1
  loc_1322225:   Set var_AC = var_1A0
  loc_1322264:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1322281:     var_B4 = Me.Recordset15.Fields.Item("ATTN_STR")
  loc_13222A6:     Set var_B0 = Me.Txt
  loc_13222AC:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B4)
  loc_13222E1:     var_22C = Val(CStr(Format(CVar(var_B4), "dd")))
  loc_13222FE:     var_FC = Me.Txt.Fields.Item("ATTN_STR")
  loc_132231D:     Set var_1A0 = Me.Txt
  loc_1322323:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_1A4, 1)
  loc_1322347:     Set var_1A8 = Me.Txt
  loc_132234D:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_1AC)
  loc_1322371:     Set var_1D0 = Me.Txt
  loc_1322377:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_1D4)
  loc_13223A3:     var_164 = CStr(Format(CVar(var_1D4), "dd"))
  loc_13223AC:     var_234 = Val(var_164)
  loc_13223C6:     var_10C = Left(Proc_6_38_E69628(CVar(var_B4), var_1A0, 1), CLng(((CDbl(2) * var_22C) - CDbl(2))))
  loc_13223ED:     var_1CC = (Left(CVar(var_1A4), 1) + Left(CVar(var_1AC), 1))
  loc_1322400:     var_214 = CVar(Replace(Proc_6_38_E69628(CVar(var_FC), var_22C, 1), CStr(var_1CC), "PP", CLng(((CDbl(2) * var_234) - CDbl(1))), 1, 1)) 'String
  loc_1322403:     var_224 = (CVar("Select * from attendence where Emp_Code='" & var_B4.Tag & "' and mth_Year='") + var_214)
  loc_1322408:     var_A8 = CStr(var_224)
  loc_1322446:   End If
  loc_1322451:   Set var_B0 = Me.Txt
  loc_1322457:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B4, var_234, 1)
  loc_132246B:   var_E4 = "MMMyyyy"
  loc_132248E:   Set var_F8 = Me.Txt
  loc_1322494:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_FC, var_164, 1)
  loc_132249C:   1 = var_FC.Tag
  loc_13224B5:   var_160 = "Update Attendence set Attn_Str='" & var_A8
  loc_13224D5:   var_15C = CVar(var_160 & "' Where mth_Year='") & Format(CVar(var_B4), var_E4) & "' And Emp_Code='" & CVar(var_164) 
  loc_13224EC:   unk_4B2E33.Execute CStr(var_15C & "'"), var_1CC, -1
  loc_1322537:   Set var_B0 = Me.Txt
  loc_132253D:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B4, "Delete From Attend Where V_Date=", var_15C, -1)
  loc_132254C:   Proc_6_7_F26918(var_E4, CVar(var_B4), var_1A0, var_1A0)
  loc_1322554:   var_F4 = 1 & var_E4 
  loc_132255D:   var_10C = var_F4 & " And Emp_Code='" 
  loc_132256F:   Set var_F8 = Me.Txt
  loc_1322575:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_FC, var_160)
  loc_132257D:   var_10C = var_FC.Tag
  loc_132259F:   unk_4B2E33.Execute CStr(1 & CVar(var_160) & "'"), var_B4, 
  loc_13225CB:   unk_4B2E33.CommitTrans
  loc_13225DB:   Me.Requery -1
  loc_13225FB:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1322608:     Me.Bookmark = var_94
  loc_1322610:   Else
  loc_1322624:     If (Me.EOF = 0) Then
  loc_132262D:       Me.MoveLast
  loc_1322632:     End If
  loc_1322632:   End If
  loc_1322632:   Call Proc_306_32_1412808()
  loc_1322653:   Proc_5_0_1107AD0(&HFF, Me)
  loc_132265B: End If
  loc_1322660: Set var_A0 = Nothing
  loc_1322663: Exit Sub
  loc_1322664: ' Referenced from: 1321F9C
  loc_132266A: unk_4B2E33.RollbackTrans
  loc_1322677: Set var_B0 = Err()
  loc_132267D: Call 0.Method_arg_2C (var_160, global_56)
  loc_132269E: MsgBox(CVar(var_160), &H10, " Deletion Message", var_F4, var_10C)
  loc_13226B1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '103FFA8
  'Data Table: 4B2E2C
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_12C As Variant
  Dim var_94 As TextBox
  Dim unk_4B2E33 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Label
  loc_103FD8C: On Error Goto loc_103FFA0
  loc_103FD9A: Set var_90 = Me.Txt
  loc_103FDA0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0))
  loc_103FDB0: Set var_D8 = Me.Txt
  loc_103FDB6: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_DC)
  loc_103FDD3: var_A4 = CVar(var_94) 'Address
  loc_103FDDA: var_D4 = Format(var_A4, "MMM")
  loc_103FDFA: var_EC = CVar(var_DC) 'Address
  loc_103FE09: var_12C = (1 + Format(var_EC, "YYYY"))
  loc_103FE62: Set var_90 = Me.Txt
  loc_103FE68: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94, var_144, "Select * From Salary Where site_code='" & MemVar_1F95070 & "' and Emp_Code='", var_A4, -1)
  loc_103FE97: unk_4B2E33.Execute 1 & var_144 & "' and Mth_Year='" & CStr(Ucase(var_12C)) & "'", var_D4, 1
  loc_103FED6: If (var_94.Tag.RecordCount > 0) Then
  loc_103FEDF:   Call 0.Method_arg_50 (var_144, 1)
  loc_103FF06:   MsgBox(CVar("Salary Already Created, " & vbCrLf & " You Can Not Edit Record ..."), &H40, CVar(var_144), var_D4, var_EC)
  loc_103FF19:   Exit Sub
  loc_103FF1A: End If
  loc_103FF3D: Call Proc_306_33_F1C5CC(Proc_5_1_100EC1C("EDIT", Me), global_56)
  loc_103FF53: Set var_90 = Me.Txt
  loc_103FF59: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_103FF61: var_94.SetFocus
  loc_103FF72: Set var_88 = Nothing
  loc_103FF82: Me.LblUser.Caption = vbNullString
  loc_103FF97: Me.LblLDt.Caption = vbNullString
  loc_103FF9F: Exit Sub
  loc_103FFA0: ' Referenced from: 103FD8C
  loc_103FFA0: Proc_6_60_E63754(var_94)
  loc_103FFA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C4EC
  'Data Table: 4B2E2C
  loc_E1C4E1: Me.Global.Unload Me
  loc_E1C4E9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F21630
  'Data Table: 4B2E2C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim MemVar_1F950E4 As String
  loc_F2153C: On Error Goto loc_F21629
  loc_F21556: If (Me.RecordCount <= 0) Then
  loc_F21574:   var_A8 = "No Records To Search."
  loc_F2157A:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F2158A:   Exit Sub
  loc_F2158B: End If
  loc_F21592: var_10C = "Select (V_Prefix+'-'+ LTRIM(RTRIM(CONVERT(Varchar(11), A.V_Date, 103)))+'-'+Emp_Code) as SearchCode,Convert(Varchar(11),A.V_Date,103) As AttnDate,E.Name As EmployeeName,FirstShift=(Convert(Varchar(15),Case A.FirstShift When 'P' Then 'Present' When 'A' Then 'Absent' When 'L' Then 'Leave' When 'C' Then 'Casual' When 'E' Then 'Earned' End)),SecondShift=(Convert(Varchar(15),Case A.SecondShift When 'P' Then 'Present' When 'A' Then 'Absent' When 'L' Then 'Leave' When 'C' Then 'Casual' When 'E' Then 'Earned' End)) From Attend A left join Employee E on A.Emp_Code = E.Code Where A.site_code='" & MemVar_1F95070
  loc_F215A7: Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_F215B3: var_B8 = " and "
  loc_F215C7: Proc_6_7_F26918(var_11C, MemVar_1F950FC)
  loc_F215DD: MemVar_1F950E4 = CStr(CVar(var_10C & "' AND A.V_Date between ") & var_A8 & var_B8 & var_11C & " order by A.V_Date,E.Name")
  loc_F215FE: Proc_6_126_F1C850("2000,3000,2000,2000")
  loc_F2160C: MemVar_1F95120 = Me
  loc_F21623: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F21628: Exit Sub
  loc_F21629: ' Referenced from: F2153C
  loc_F21629: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F2162E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3CEA8
  'Data Table: 4B2E2C
  loc_E3CE98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3CEA0: Call Proc_306_32_1412808(global_56)
  loc_E3CEA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3CE48
  'Data Table: 4B2E2C
  loc_E3CE38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3CE40: Call Proc_306_32_1412808(global_56)
  loc_E3CE45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3C668
  'Data Table: 4B2E2C
  loc_E3C658: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C660: Call Proc_306_32_1412808(global_56)
  loc_E3C665: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3C1E8
  'Data Table: 4B2E2C
  loc_E3C1D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C1E0: Call Proc_306_32_1412808(global_56)
  loc_E3C1E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E59D44
  'Data Table: 4B2E2C
  Dim Me As Recordset15
  loc_E59D17: If (Me.RecordCount <= 0) Then
  loc_E59D1A:   Exit Sub
  loc_E59D1B: End If
  loc_E59D27: Me.FramePrint.Visible = True
  loc_E59D39: Me.TxtDate.SetFocus
  loc_E59D41: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A818
  'Data Table: 4B2E2C
  Dim Me As Recordset15
  loc_E0A80F: Me.Requery -1
  loc_E0A814: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15B8864
  'Data Table: 4B2E2C
  Dim var_DC As Variant
  Dim var_C4 As Double
  Dim var_CC As Double
  Dim var_124 As Variant
  Dim var_E4 As String
  Dim var_D4 As Double
  Dim var_D8 As Variant
  Dim var_184 As Variant
  Dim var_E0 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_188 As String
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1AC As String
  Dim unk_4B2E33 As Connection15
  Dim var_8C As Recordset15
  Dim var_1B8 As Variant
  Dim var_144 As Variant
  Dim var_1BC As Variant
  Dim var_1C0 As Field20
  Dim var_1E0 As Variant
  Dim var_114 As Variant
  Dim Me As Recordset15
  Dim var_1F0 As Variant
  Dim var_104 As Variant
  Dim var_204 As TextBox
  Dim var_264 As Variant
  Dim var_1D0 As Variant
  Dim var_250 As Recordset15
  Dim var_254 As Fields15
  Dim var_268 As Field20
  Dim var_270 As TextBox
  Dim var_2B4 As Variant
  Dim var_8E As Integer
  Dim var_304 As Variant
  Dim var_274 As String
  Dim var_284 As Variant
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_3E4 As Variant
  Dim var_424 As Variant
  Dim var_88 As Recordset15
  Dim var_314 As Variant
  loc_15B7668: On Error Goto loc_15B8846
  loc_15B7676: Set var_D8 = Me.Txt
  loc_15B767C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15B76A5: If (Proc_6_27_EA61EC(var_DC, "V Date") = 0) Then
  loc_15B76A8:   Exit Sub
  loc_15B76A9: End If
  loc_15B76B4: Set var_D8 = Me.Txt
  loc_15B76BA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_DC)
  loc_15B76E3: If (Proc_6_27_EA61EC(var_DC, "Date To") = 0) Then
  loc_15B76E6:   Exit Sub
  loc_15B76E7: End If
  loc_15B76F2: Set var_D8 = Me.Txt
  loc_15B76F8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_DC)
  loc_15B7709: Set var_E0 = var_DC
  loc_15B7721: If (Proc_6_27_EA61EC(var_E0, "Employee Name") = 0) Then
  loc_15B7724:   Exit Sub
  loc_15B7725: End If
  loc_15B7733: Set var_D8 = Me.Txt
  loc_15B7739: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_DC)
  loc_15B7741: var_E4 = var_DC.Text
  loc_15B7764: var_C4 = CDate(LTrim(RTrim(CVar(var_E4))))
  loc_15B7787: Set var_D8 = Me.Txt
  loc_15B778D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_DC, var_E4)
  loc_15B7795: var_C4 = var_DC.Text
  loc_15B77A3: var_104 = RTrim(CVar(var_E4))
  loc_15B77AE: var_114 = LTrim(var_104)
  loc_15B77B8: var_CC = CDate(var_114)
  loc_15B77D4: If (var_C4 > var_CC) Then
  loc_15B77F0:   MsgBox("Date From is greater than Date To", &H10, var_104, var_114, var_164)
  loc_15B7800:   Exit Sub
  loc_15B7801: End If
  loc_15B7805: Set var_D8 = Me.TopCtrl1
  loc_15B780B: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_CC)
  loc_15B7824: If (CStr(var_DC) = "Add") Then
  loc_15B782A:   var_D4 = var_C4
  loc_15B782D:   ' Referenced from: 15B7B3D
  loc_15B7834:   If (var_D4 <= var_CC) Then
  loc_15B785D:     var_114 = RTrim(LTrim(CVar(Me.LblVPrefix.Caption)))
  loc_15B788D:     var_184 = (1 + Format(var_D4, "dd/MMM/yyyy"))
  loc_15B789F:     Set var_DC = Me.Txt
  loc_15B78A5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E0, var_188, var_184)
  loc_15B78AD:     1 = var_E0.Tag
  loc_15B78B8:     var_1A8 = (var_114 + CVar(var_188))
  loc_15B78BD:     var_B8 = CStr(var_1A8)
  loc_15B78EA:     Set var_D8 = Me.Txt
  loc_15B78F0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_DC)
  loc_15B78F8:     var_E4 = var_DC.Tag
  loc_15B7928:     Proc_6_7_F26918(var_114, Format(var_D4, "dd/MMM/yyyy"), 1)
  loc_15B7941:     var_188 = "Select V_prefix,V_date,Emp_Code,Site_Code from Attend Where Emp_Code='" & var_E4
  loc_15B795C:     unk_4B2E33.Execute CStr(CVar(var_188 & "' And V_date=") & var_114), var_184, -1
  loc_15B7967:     Set var_8C = var_E0
  loc_15B7991:     var_1B0 = var_8C.RecordCount
  loc_15B799F:     If (var_1B0 > 0) Then
  loc_15B79A2:       ' Referenced from: 15B7B18
  loc_15B79B1:       If Not(var_8C.EOF) Then
  loc_15B79CB:         var_DC = var_8C.Fields.Item("v_Prefix")
  loc_15B7A07:         var_1B8 = var_8C.Fields.Item("V_DATE")
  loc_15B7A0F:         var_164 = var_1B8.Value
  loc_15B7A19:         var_174 = CVar(CStr(var_164)) 'String
  loc_15B7A1F:         var_184 = RTrim(var_174)
  loc_15B7A32:         var_1A8 = (RTrim(LTrim(CVar(var_DC))) + LTrim(var_184))
  loc_15B7A60:         var_1E0 = (var_1A8 + var_8C.Fields.Item("Emp_Code").Value)
  loc_15B7A94:         If (var_B8 = CStr(var_1E0)) Then
  loc_15B7AD2:           var_114 = ("Duplicate Record ! Dated : " + Format(var_D4, "dd/MMM/yyyy"))
  loc_15B7AD6:           MsgBox(RTrim(LTrim(CVar(var_DC))), &H40, var_164, var_174, var_184)
  loc_15B7AF5:           Set var_D8 = Me.Txt
  loc_15B7AFB:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_DC, 1, 1)
  loc_15B7B03:           var_DC.SetFocus
  loc_15B7B0F:           Exit Sub
  loc_15B7B10:         End If
  loc_15B7B13:         var_8C.MoveNext
  loc_15B7B18:         GoTo loc_15B79A2
  loc_15B7B1B:       End If
  loc_15B7B1B:     End If
  loc_15B7B37:     var_D4 = CDate(DateAdd("d", CDbl(1), var_D4))
  loc_15B7B3D:     GoTo loc_15B782D
  loc_15B7B40:   End If
  loc_15B7B40: End If
  loc_15B7B4E: Set var_D8 = Me.Txt
  loc_15B7B54: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_DC, var_E4, var_D4)
  loc_15B7B5C: var_E0 = var_DC.Text
  loc_15B7B73: If (var_E4 = "Present") Then
  loc_15B7B79:   var_B0 = "P"
  loc_15B7B7F: Else
  loc_15B7B8D:   Set var_D8 = Me.Txt
  loc_15B7B93:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_DC, var_E4)
  loc_15B7B9B:   1 = var_DC.Text
  loc_15B7BB2:   If (var_E4 = "Absent") Then
  loc_15B7BB8:     var_B0 = "A"
  loc_15B7BBE:   Else
  loc_15B7BCC:     Set var_D8 = Me.Txt
  loc_15B7BD2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_DC)
  loc_15B7BF1:     If (var_DC.Text = "Leave") Then
  loc_15B7BF7:       var_B0 = "L"
  loc_15B7BFD:     Else
  loc_15B7C0B:       Set var_D8 = Me.Txt
  loc_15B7C11:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_DC)
  loc_15B7C30:       If (var_DC.Text = "Casual") Then
  loc_15B7C36:         var_B0 = "C"
  loc_15B7C3C:       Else
  loc_15B7C4A:         Set var_D8 = Me.Txt
  loc_15B7C50:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_DC)
  loc_15B7C6F:         If (var_DC.Text = "Earned") Then
  loc_15B7C75:           var_B0 = "E"
  loc_15B7C7B:         Else
  loc_15B7C89:           Set var_D8 = Me.Txt
  loc_15B7C8F:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_DC)
  loc_15B7CAE:           If (var_DC.Text = "Holiday") Then
  loc_15B7CB4:             var_B0 = "H"
  loc_15B7CB7:           End If
  loc_15B7CB7:         End If
  loc_15B7CB7:       End If
  loc_15B7CB7:     End If
  loc_15B7CB7:   End If
  loc_15B7CB7: End If
  loc_15B7CC5: Set var_D8 = Me.Txt
  loc_15B7CCB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_DC)
  loc_15B7CEA: If (var_DC.Text = "Present") Then
  loc_15B7CF0:   var_B4 = "P"
  loc_15B7CF6: Else
  loc_15B7D04:   Set var_D8 = Me.Txt
  loc_15B7D0A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_DC)
  loc_15B7D29:   If (var_DC.Text = "Absent") Then
  loc_15B7D2F:     var_B4 = "A"
  loc_15B7D35:   Else
  loc_15B7D43:     Set var_D8 = Me.Txt
  loc_15B7D49:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_DC)
  loc_15B7D68:     If (var_DC.Text = "Leave") Then
  loc_15B7D6E:       var_B4 = "L"
  loc_15B7D74:     Else
  loc_15B7D82:       Set var_D8 = Me.Txt
  loc_15B7D88:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_DC)
  loc_15B7DA7:       If (var_DC.Text = "Casual") Then
  loc_15B7DAD:         var_B4 = "C"
  loc_15B7DB3:       Else
  loc_15B7DC1:         Set var_D8 = Me.Txt
  loc_15B7DC7:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_DC)
  loc_15B7DE6:         If (var_DC.Text = "Earned") Then
  loc_15B7DEC:           var_B4 = "E"
  loc_15B7DF2:         Else
  loc_15B7E00:           Set var_D8 = Me.Txt
  loc_15B7E06:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_DC)
  loc_15B7E25:           If (var_DC.Text = "Holiday") Then
  loc_15B7E2B:             var_B4 = "H"
  loc_15B7E2E:           End If
  loc_15B7E2E:         End If
  loc_15B7E2E:       End If
  loc_15B7E2E:     End If
  loc_15B7E2E:   End If
  loc_15B7E2E: End If
  loc_15B7E88: var_1F0 = 0
  loc_15B7EA6: var_104 = "Select joining_Date from Employee where code='" & Me.Fields.Item("Code").Value 
  loc_15B7EAF: var_114 = var_104 & "'" 
  loc_15B7EBD: unk_4B2E33.Execute CStr(var_114), var_164, -1
  loc_15B7EC5: var_E0 = var_E0.Fields
  loc_15B7ECD: var_1F0 = var_1B8.Item(var_1B8)
  loc_15B7ED5: var_1BC = var_1BC.Value
  loc_15B7EEB: Set var_1C0 = Me.Txt
  loc_15B7EF1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_204, var_188)
  loc_15B7F12: var_264 = 0
  loc_15B7F3D: var_1AC = CStr("Select Resign_Date from Employee where code='" & Me.Fields.Item("Code").Value & "'")
  loc_15B7F47: unk_4B2E33.Execute var_1AC, var_1E0, -1
  loc_15B7F4F: var_250 = var_250.Fields
  loc_15B7F57: var_264 = var_254.Item(var_254)
  loc_15B7F5F: var_268 = var_268.Value
  loc_15B7F75: Set var_26C = Me.Txt
  loc_15B7F7B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_270, var_274, var_284)
  loc_15B7F83: var_284 = var_270.Text
  loc_15B7FDD: If CBool(var_D4 Or ((var_204.Text > CDate(CDate(var_188))) < CDate(CDate(var_274)))) Then
  loc_15B7FF9:   MsgBox(" Invalid Date For This Employee", &H40, var_104, var_114, var_164)
  loc_15B8009:   Exit Sub
  loc_15B800A: End If
  loc_15B8013: unk_4B2E33.BeginTrans var_1B0
  loc_15B8021: Set var_D8 = Me.TopCtrl1
  loc_15B8027: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(&HFF)
  loc_15B8040: If (CStr() = "Add") Then
  loc_15B8046:   var_D4 = var_C4
  loc_15B8049:   ' Referenced from: 15B83ED
  loc_15B8050:   If (var_D4 <= var_CC) Then
  loc_15B805A:     Set var_D8 = Me.LblVPrefix
  loc_15B8090:     Proc_6_7_F26918(var_114, Format(var_D4, "dd/MMM/yyyy"), 1)
  loc_15B80A3:     Set var_DC = Me.Txt
  loc_15B80A9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E0, var_1AC)
  loc_15B80B1:     1 = var_E0.Tag
  loc_15B80BB:     var_304 = CVar(Proc_6_14_EF402C(var_D4)) 'String
  loc_15B80C1:     Proc_6_8_EB1974(var_314)
  loc_15B80CA:     Set var_1B8 = Me.TopCtrl1
  loc_15B80D0:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_304)
  loc_15B811B:     var_188 = "Insert Into Attend(V_Prefix,V_Date,Emp_Code,FirstShift,SecondShift,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_D8.Caption
  loc_15B8138:     var_198 = CVar(var_1AC) 'String
  loc_15B813B:     var_1A8 = CVar(var_188 & "',") & var_114 & ",'" & var_198 
  loc_15B8144:     var_1D0 = var_1A8 & "','" 
  loc_15B8197:     var_324 = var_1D0 & CVar(var_B0) & "','" & CVar(var_B4) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_314 
  loc_15B81A0:     var_344 = var_324 & ",'" 
  loc_15B81C3:     var_424 = var_344 & IIf((CStr(var_354) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')" 
  loc_15B81D1:     unk_4B2E33.Execute CStr(var_424), var_448, -1
  loc_15B825A:     Proc_6_7_F26918(var_114, Format(var_D4, "dd/MMM/yyyy"), 1)
  loc_15B8273:     var_E4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_15B8299:     var_164 = CVar(var_E4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_104 & "' And VP.Date_From <=") 'String
  loc_15B82A8:     var_184 = var_164 & var_114 & " Order By VP.Date_From DESC" 
  loc_15B82B6:     unk_4B2E33.Execute CStr(var_184), var_198, -1
  loc_15B82C1:     Set var_88 = var_D8
  loc_15B82FB:     If (var_88.RecordCount > 0) Then
  loc_15B8312:       var_E4 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_15B8319:       var_188 = var_E4 & "' AND VP.LOGSITE_CODE='"
  loc_15B8327:       var_104 = CVar(var_188 & MemVar_1F95078 & "') and V_Type='") 'String
  loc_15B833C:       var_D8 = var_88.Fields
  loc_15B8344:       var_DC = var_D8.Item("V_Type")
  loc_15B8378:       var_1B8 = var_88.Fields.Item("Date_From")
  loc_15B8387:       Proc_6_7_F26918(var_184, CVar(var_1B8), var_104 & var_DC.Value & "' and Date_From=", var_1A8, -1)
  loc_15B839D:       unk_4B2E33.Execute CStr(var_1BC & var_184), var_D8, 1
  loc_15B83CB:     End If
  loc_15B83E7:     var_D4 = CDate(DateAdd("d", CDbl(1), var_D4))
  loc_15B83ED:     GoTo loc_15B8049
  loc_15B83F0:   End If
  loc_15B83F0: End If
  loc_15B83F4: Set var_D8 = Me.TopCtrl1
  loc_15B83FA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_D4)
  loc_15B8413: If (CStr(var_1BC) = "Edit") Then
  loc_15B843F:   Set var_D8 = Me.Txt
  loc_15B8445:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_DC, CVar("Delete From Attend Where site_code='" & MemVar_1F95070 & "' and V_Date="))
  loc_15B8454:   Proc_6_7_F26918(var_104, CVar(var_DC), var_1D0)
  loc_15B845C:   var_164 = -1 & var_104 
  loc_15B8465:   var_174 = var_104 & var_DC.Value & "' and Date_From=" & " And Emp_Code='" 
  loc_15B8477:   Set var_E0 = Me.Txt
  loc_15B847D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B8, var_188)
  loc_15B8485:   var_174 = var_1B8.Tag
  loc_15B84A7:   unk_4B2E33.Execute CStr(var_1BC & CVar(var_188) & "'"), , 
  loc_15B84F0:   Set var_DC = Me.Txt
  loc_15B84F6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15B8505:   Proc_6_7_F26918(var_104, CVar(var_E0))
  loc_15B8518:   Set var_1B8 = Me.Txt
  loc_15B851E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1BC)
  loc_15B8536:   Proc_6_8_EB1974(var_304)
  loc_15B853F:   Set var_1C0 = Me.TopCtrl1
  loc_15B8545:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(CVar(Proc_6_14_EF402C(var_E0)))
  loc_15B8590:   var_188 = "Insert Into Attend(V_Prefix,V_Date,Emp_Code,FirstShift,SecondShift,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & Me.LblVPrefix.Caption
  loc_15B85E9:   var_2B4 = CVar(var_188 & "',") & var_104 & ",'" & CVar(var_1BC.Tag) & "','" & CVar(var_B0) & "','" & CVar(var_B4) & "','" & CVar(MemVar_1F95070) 
  loc_15B862F:   var_3E4 = var_2B4 & "','" & CVar(MemVar_1F950C8) & "'," & var_304 & ",'" & IIf((CStr(var_344) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) 
  loc_15B8646:   unk_4B2E33.Execute CStr(var_3E4 & "')"), var_424, -1
  loc_15B86A4: End If
  loc_15B86AA: unk_4B2E33.CommitTrans
  loc_15B86B1: var_8E = 0
  loc_15B86BF: Set var_DC = Me.Txt
  loc_15B86C5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E0)
  loc_15B86F8: var_124 = "-"
  loc_15B86FD: var_164 = (RTrim(LTrim(CVar(Me.LblVPrefix.Caption))) + ",'")
  loc_15B873E: var_1E0 = (1 + LTrim(RTrim(Format(CVar(var_E0), "dd/MM/yyyy"))))
  loc_15B8742: var_144 = "-"
  loc_15B8747: var_284 = (CVar(var_188 & "',") & LTrim(CVar(Me.LblVPrefix.Caption)) & ",'" & CVar(var_1BC.Tag) & "','" & CVar(var_B0) & "','" + CVar(var_B0))
  loc_15B8759: Set var_1B8 = Me.Txt
  loc_15B875F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1BC, var_188, CVar(var_188 & "',") & LTrim(CVar(Me.LblVPrefix.Caption)) & ",'" & CVar(var_1BC.Tag) & "','" & CVar(var_B0) & "','" & CVar(var_B4))
  loc_15B8767: 1 = var_1BC.Tag
  loc_15B8772: var_2B4 = (CVar(var_188 & "',") & LTrim(CVar(Me.LblVPrefix.Caption)) + CVar(var_188))
  loc_15B87AD: Me.Requery -1
  loc_15B87D7: Me.Find "SearchCode ='" & CStr(var_2B4) & "'", 0, 1
  loc_15B87E7: Set var_D8 = Me.TopCtrl1
  loc_15B87ED: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(",'")
  loc_15B8806: If (CStr(var_8E) = "Add") Then
  loc_15B8809:   Call TopCtrl1_UnknownEvent_A()
  loc_15B880E:   Exit Sub
  loc_15B880F: End If
  loc_15B8832: Call Proc_306_33_F1C5CC(Proc_5_1_100EC1C("INI", Me), global_56)
  loc_15B8842: Set var_88 = Nothing
  loc_15B8845: Exit Sub
  loc_15B8846: ' Referenced from: 15B7668
  loc_15B884C: If (var_8E = &HFF) Then
  loc_15B8855:   unk_4B2E33.RollbackTrans
  loc_15B885A: End If
  loc_15B885A: Proc_6_60_E63754(var_204)
  loc_15B885F: Exit Sub
  loc_15B8860: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_9 'F4DF54
  'Data Table: 4B2E2C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4DE4B: Me.DGEmployee.Visible = False
  loc_F4DE6A: If (Me.RecordCount > 0) Then
  loc_F4DEA9:   Set var_B4 = Me.Txt
  loc_F4DEAF:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4DEB7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4DEEA:   var_B0 = Me.Fields.Item("Name")
  loc_F4DF09:   Set var_B4 = Me.Txt
  loc_F4DF0F:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4DF17:   var_B8.Text = CStr(var_B0.Value)
  loc_F4DF2D: End If
  loc_F4DF38: Set var_A8 = Me.Txt
  loc_F4DF3E: Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(1))
  loc_F4DF46: var_B0.SetFocus
  loc_F4DF52: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_1F 'E73EE4
  'Data Table: 4B2E2C
  loc_E73EA2: Proc_6_153_E91D24(Me.DGEmployee, arg_14)
  loc_E73EB9: Set var_8C = Me.FGPoint
  loc_E73ED5: Proc_6_138_106E830(Me.DGEmployee, global_52, CInt(1))
  loc_E73EE3: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F57574
  'Data Table: 4B2E2C
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F57496: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5749D:   Set var_A8 = Me.ListView
  loc_F574E7:   Set var_C0 = Me.Txt
  loc_F574ED:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F574F5:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F57515: End If
  loc_F57521: Me.FrmList.Visible = False
  loc_F57551: Set var_9C = Me.Txt
  loc_F57557: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5755F: var_A8.SetFocus
  loc_F57573: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3D6E4
  'Data Table: 4B2E2C
  loc_E3D6D8: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_E3D6DB:   Call DGEmployee_UnknownEvent_9()
  loc_E3D6E0: End If
  loc_E3D6E0: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E95F48
  'Data Table: 4B2E2C
  Dim Me As Recordset15
  Dim SEARCHBACK6FF As Double
  loc_E95ED6: On Error Goto loc_E95F3F
  loc_E95EDF: Me.MoveFirst
  loc_E95F09: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95F31: Proc_5_0_1107AD0(&HFF, Me, global_56)
  loc_E95F39: Call Proc_306_32_1412808(0)
  loc_E95F3E: Exit Sub
  loc_E95F3F: ' Referenced from: E95ED6
  loc_E95F3F: Proc_6_60_E63754(var_A0)
  loc_E95F44: Exit Sub
  loc_E95F45: SEARCHBACK6FF = 
End Sub

Public Sub Proc_306_31_EDAC88
  'Data Table: 4B2E2C
  Dim var_98 As TextBox
  Dim var_8C As Label
  loc_EDABD2: global_60 = vbNullString
  loc_EDABE4: Set var_8C = Me.Txt
  loc_EDABEA: Call 0.Method_Proc_306_31_EDAC88C (var_8E, var_86)
  loc_EDABFA: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EDAC10:   Set var_8C = Me.Txt
  loc_EDAC16:   Call 0.Method_Proc_306_31_EDAC880 (CInt(var_86), var_98)
  loc_EDAC1E:   var_98.Text = vbNullString
  loc_EDAC3A:   Set var_8C = Me.Txt
  loc_EDAC40:   Call 0.Method_Proc_306_31_EDAC880 (CInt(var_86), var_98)
  loc_EDAC48:   var_98.Tag = vbNullString
  loc_EDAC57: Next var_92 'Byte
  loc_EDAC6A: Me.LblVPrefix.Caption = vbNullString
  loc_EDAC7F: Me.LblEmpRef.Caption = vbNullString
  loc_EDAC87: Exit Sub
End Sub

Public Sub Proc_306_32_1412808
  'Data Table: 4B2E2C
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_C8 As String
  Dim var_B8 As Variant
  Dim var_DC As Variant
  Dim var_A0 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  loc_1411DBC: On Error Goto loc_14127FF
  loc_1411DD6: If (Me.RecordCount > 0) Then
  loc_1411E82:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1411ECA:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_Name")))))
  loc_1411F4A:   var_CC = Me.Fields.Item("U_AE")
  loc_1411FAB:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_CC)) = "E"), "Last Update : ", "entdt : "))
  loc_1411FF3:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_EntDt")))))
  loc_1412066:   Me.LblVPrefix.Caption = CStr(Me.Fields.Item("v_Prefix").Value)
  loc_14120B6:   Set var_B8 = Me.Txt
  loc_14120BC:   Call 0.Method_Proc_306_32_14128080 (CInt(0), var_CC)
  loc_14120C4:   var_CC.Text = CStr(Me.Fields.Item("V_DATE").Value)
  loc_1412116:   Set var_B8 = Me.Txt
  loc_141211C:   Call 0.Method_Proc_306_32_14128080 (CInt(5), var_CC)
  loc_1412124:   var_CC.Text = CStr(Me.Fields.Item("V_DATE").Value)
  loc_1412173:   Set var_B8 = Me.Txt
  loc_1412179:   Call 0.Method_Proc_306_32_14128080 (CInt(1), var_CC)
  loc_1412181:   var_CC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("Emp_Code")))
  loc_14121CE:   Set var_B8 = Me.Txt
  loc_14121D4:   Call 0.Method_Proc_306_32_14128080 (CInt(1), var_CC)
  loc_14121DC:   var_CC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("EmployeeName")))
  loc_141221D:   var_C8 = " - "
  loc_1412222:   var_DC = (Me.Fields.Item("Department").Value + "U_AE")
  loc_1412253:   var_130 = (CVar(Me.Fields.Item("Designation")) + Me.Fields.Item("Designation").Value)
  loc_1412265:   Me.LblEmpRef.Caption = CStr("entdt : ")
  loc_14122A2:   var_A0 = Me.Fields.Item("FirstShift")
  loc_14122C4:   If (var_A0.Value = "P") Then
  loc_14122D5:     Set var_8C = Me.Txt
  loc_14122DB:     Call 0.Method_Proc_306_32_14128080 (CInt(3), var_A0)
  loc_14122E3:     var_A0.Text = "Present"
  loc_14122F2:   Else
  loc_141230F:     var_A0 = Me.Fields.Item("FirstShift")
  loc_1412331:     If (var_A0.Value = "A") Then
  loc_1412342:       Set var_8C = Me.Txt
  loc_1412348:       Call 0.Method_Proc_306_32_14128080 (CInt(3), var_A0)
  loc_1412350:       var_A0.Text = "Absent"
  loc_141235F:     Else
  loc_141237C:       var_A0 = Me.Fields.Item("FirstShift")
  loc_141239E:       If (var_A0.Value = "L") Then
  loc_14123AF:         Set var_8C = Me.Txt
  loc_14123B5:         Call 0.Method_Proc_306_32_14128080 (CInt(3), var_A0)
  loc_14123BD:         var_A0.Text = "Leave"
  loc_14123CC:       Else
  loc_14123E9:         var_A0 = Me.Fields.Item("FirstShift")
  loc_141240B:         If (var_A0.Value = "C") Then
  loc_141241C:           Set var_8C = Me.Txt
  loc_1412422:           Call 0.Method_Proc_306_32_14128080 (CInt(3), var_A0)
  loc_141242A:           var_A0.Text = "Casual"
  loc_1412439:         Else
  loc_1412456:           var_A0 = Me.Fields.Item("FirstShift")
  loc_1412478:           If (var_A0.Value = "E") Then
  loc_1412489:             Set var_8C = Me.Txt
  loc_141248F:             Call 0.Method_Proc_306_32_14128080 (CInt(3), var_A0)
  loc_1412497:             var_A0.Text = "Earned"
  loc_14124A6:           Else
  loc_14124C3:             var_A0 = Me.Fields.Item("FirstShift")
  loc_14124E5:             If (var_A0.Value = "H") Then
  loc_14124F6:               Set var_8C = Me.Txt
  loc_14124FC:               Call 0.Method_Proc_306_32_14128080 (CInt(3), var_A0)
  loc_1412504:               var_A0.Text = "Holiday"
  loc_1412513:             Else
  loc_1412521:               Set var_8C = Me.Txt
  loc_1412527:               Call 0.Method_Proc_306_32_14128080 (CInt(3), var_A0)
  loc_141252F:               var_A0.Text = vbNullString
  loc_141253B:             End If
  loc_141253B:           End If
  loc_141253B:         End If
  loc_141253B:       End If
  loc_141253B:     End If
  loc_141253B:   End If
  loc_1412558:   var_A0 = Me.Fields.Item("SecondShift")
  loc_141257A:   If (var_A0.Value = "P") Then
  loc_141258B:     Set var_8C = Me.Txt
  loc_1412591:     Call 0.Method_Proc_306_32_14128080 (CInt(4), var_A0)
  loc_1412599:     var_A0.Text = "Present"
  loc_14125A8:   Else
  loc_14125C5:     var_A0 = Me.Fields.Item("SecondShift")
  loc_14125E7:     If (var_A0.Value = "A") Then
  loc_14125F8:       Set var_8C = Me.Txt
  loc_14125FE:       Call 0.Method_Proc_306_32_14128080 (CInt(4), var_A0)
  loc_1412606:       var_A0.Text = "Absent"
  loc_1412615:     Else
  loc_1412632:       var_A0 = Me.Fields.Item("SecondShift")
  loc_1412654:       If (var_A0.Value = "L") Then
  loc_1412665:         Set var_8C = Me.Txt
  loc_141266B:         Call 0.Method_Proc_306_32_14128080 (CInt(4), var_A0)
  loc_1412673:         var_A0.Text = "Leave"
  loc_1412682:       Else
  loc_141269F:         var_A0 = Me.Fields.Item("SecondShift")
  loc_14126C1:         If (var_A0.Value = "C") Then
  loc_14126D2:           Set var_8C = Me.Txt
  loc_14126D8:           Call 0.Method_Proc_306_32_14128080 (CInt(4), var_A0)
  loc_14126E0:           var_A0.Text = "Casual"
  loc_14126EF:         Else
  loc_141270C:           var_A0 = Me.Fields.Item("SecondShift")
  loc_141272E:           If (var_A0.Value = "E") Then
  loc_141273F:             Set var_8C = Me.Txt
  loc_1412745:             Call 0.Method_Proc_306_32_14128080 (CInt(4), var_A0)
  loc_141274D:             var_A0.Text = "Earned"
  loc_141275C:           Else
  loc_1412779:             var_A0 = Me.Fields.Item("SecondShift")
  loc_141279B:             If (var_A0.Value = "H") Then
  loc_14127AC:               Set var_8C = Me.Txt
  loc_14127B2:               Call 0.Method_Proc_306_32_14128080 (CInt(4), var_A0)
  loc_14127BA:               var_A0.Text = "Holiday"
  loc_14127C9:             Else
  loc_14127D7:               Set var_8C = Me.Txt
  loc_14127DD:               Call 0.Method_Proc_306_32_14128080 (CInt(4), var_A0)
  loc_14127E5:               var_A0.Text = vbNullString
  loc_14127F1:             End If
  loc_14127F1:           End If
  loc_14127F1:         End If
  loc_14127F1:       End If
  loc_14127F1:     End If
  loc_14127F1:   End If
  loc_14127F4: Else
  loc_14127F4:   Call Proc_306_31_EDAC88()
  loc_14127F9: End If
  loc_14127F9: Call Proc_306_34_EB862C()
  loc_14127FE: Exit Sub
  loc_14127FF: ' Referenced from: 1411DBC
  loc_14127FF: Proc_6_60_E63754()
  loc_1412804: Exit Sub
End Sub

Public Sub Proc_306_33_F1C5CC(arg_C) 'F1C5CC
  'Data Table: 4B2E2C
  Dim var_98 As TextBox
  loc_F1C4DE: Set var_8C = Me.Txt
  loc_F1C4E4: Call 0.Method_Proc_306_33_F1C5CCC (var_8E, var_86)
  loc_F1C4F4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1C50A:   Set var_8C = Me.Txt
  loc_F1C510:   Call 0.Method_Proc_306_33_F1C5CC0 (CInt(var_86), var_98)
  loc_F1C518:   var_98.Enabled = arg_C
  loc_F1C527: Next var_92 'Byte
  loc_F1C531: Set var_8C = Me.TopCtrl1
  loc_F1C537: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F1C550: If (CStr() = "Edit") Then
  loc_F1C560:   Set var_8C = Me.Txt
  loc_F1C566:   Call 0.Method_Proc_306_33_F1C5CC0 (CInt(0), var_98)
  loc_F1C56E:   var_98.Enabled = False
  loc_F1C587:   Set var_8C = Me.Txt
  loc_F1C58D:   Call 0.Method_Proc_306_33_F1C5CC0 (CInt(5), var_98)
  loc_F1C595:   var_98.Enabled = False
  loc_F1C5AE:   Set var_8C = Me.Txt
  loc_F1C5B4:   Call 0.Method_Proc_306_33_F1C5CC0 (CInt(1), var_98)
  loc_F1C5BC:   var_98.Enabled = False
  loc_F1C5C8: End If
  loc_F1C5C8: Exit Sub
  loc_F1C5CB:  = 
End Sub

Public Sub Proc_306_34_EB862C
  'Data Table: 4B2E2C
  loc_EB85A8: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_EB85BA:   Me.DGEmployee.Visible = False
  loc_EB85C2: End If
  loc_EB85DD: If (Me.FrmList.Visible = &HFF) Then
  loc_EB85EC:   Me.FrmList.Visible = False
  loc_EB85F4: End If
  loc_EB8610: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB8622:   Me.FGPoint.Visible = False
  loc_EB862A: End If
  loc_EB862A: Exit Sub
End Sub

Public Sub Proc_306_35_F9760C(arg_C) 'F9760C
  'Data Table: 4B2E2C
  Dim var_8C As TextBox
  loc_F974A8: Call Proc_306_34_EB862C()
  loc_F974B8: Set var_88 = Me.Txt
  loc_F974BE: Call 0.Method_Proc_306_35_F9760C0 (CInt(0))
  loc_F974E7: If (Proc_6_27_EA61EC(var_8C, "V Date") = 0) Then
  loc_F974EA:   Exit Sub
  loc_F974EB: End If
  loc_F974F6: Set var_88 = Me.Txt
  loc_F974FC: Call 0.Method_Proc_306_35_F9760C0 (CInt(1), var_8C)
  loc_F97525: If (Proc_6_27_EA61EC(var_8C, "Employee Name") = 0) Then
  loc_F97528:   Exit Sub
  loc_F97529: End If
  loc_F97534: Set var_88 = Me.Txt
  loc_F9753A: Call 0.Method_Proc_306_35_F9760C0 (CInt(3), var_8C)
  loc_F97563: If (Proc_6_27_EA61EC(var_8C, "First Shift") = 0) Then
  loc_F97566:   Exit Sub
  loc_F97567: End If
  loc_F97572: Set var_88 = Me.Txt
  loc_F97578: Call 0.Method_Proc_306_35_F9760C0 (CInt(4), var_8C)
  loc_F975A1: If (Proc_6_27_EA61EC(var_8C, "Second Shift") = 0) Then
  loc_F975A4:   Exit Sub
  loc_F975A5: End If
  loc_F975DC: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F975DF:   Call TopCtrl1_UnknownEvent_16()
  loc_F975E7: Else
  loc_F975F1:   Set var_88 = Me.Txt
  loc_F975F7:   Call 0.Method_Proc_306_35_F9760C0 (arg_C, var_8C)
  loc_F975FF:   var_8C.SetFocus
  loc_F9760B: End If
  loc_F9760B: Exit Sub
End Sub

Public Sub Proc_306_36_F058E8
  'Data Table: 4B2E2C
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_88 As Frame
  loc_F05816: Set var_88 = Me.Txt
  loc_F0581C: Call 0.Method_Proc_306_36_F058E80 (CInt(1), var_8C)
  loc_F0583B: Me.DGEmployee.Left = CVar(var_8C.Left)
  loc_F05857: Set var_B4 = Me.Txt
  loc_F0585D: Call 0.Method_Proc_306_36_F058E80 (CInt(1), var_B8)
  loc_F05878: Set var_88 = Me.Txt
  loc_F0587E: Call 0.Method_Proc_306_36_F058E80 (CInt(1), var_8C)
  loc_F05896: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_F058A5: Me.DGEmployee.Top = CVar(var_8C.Left)
  loc_F058C6: Me.FramePrint.Left = CDbl(1650)
  loc_F058DD: Me.FramePrint.Top = CDbl(2685)
  loc_F058E5: Exit Sub
End Sub
