VERSION 5.00
Begin VB.Form Inbox
  Caption = "Inbox"
  BackColor = &HE0E0E0&
  ForeColor = &H404040&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  BorderStyle = 1 'Fixed Single
  Icon = "Inbox.frx":0
  LinkTopic = "form4"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 615
  ClientWidth = 11085
  ClientHeight = 8040
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
  Begin CheckBox BtnDelete
    Caption = "Delete"
    Index = 0
    BackColor = &H4000&
    ForeColor = &HFFFF&
    Left = 150
    Top = 7080
    Width = 1575
    Height = 825
    TabIndex = 24
    Appearance = 0 'Flat
    Picture = "Inbox.frx":442
    Style = 1
  End
  Begin CheckBox BtnCompose
    Caption = "Compose"
    BackColor = &H4000&
    ForeColor = &HFFFF&
    Left = 9120
    Top = 7080
    Width = 1620
    Height = 825
    Visible = 0   'False
    TabIndex = 23
    Appearance = 0 'Flat
    Picture = "Inbox.frx":14C4
    Style = 1
  End
  Begin CheckBox BtnExit
    Caption = "Exit"
    BackColor = &H4000&
    ForeColor = &HFFFF&
    Left = 1800
    Top = 7080
    Width = 1620
    Height = 825
    TabIndex = 22
    Appearance = 0 'Flat
    Picture = "Inbox.frx":2546
    Style = 1
  End
  Begin Frame mnuFrame
    Caption = "Frame2"
    Left = 5130
    Top = 1080
    Width = 1905
    Height = 1455
    TabIndex = 11
    BorderStyle = 0 'None
    Begin Line Line2
      BorderColor = &HC0C0C0&
      X1 = 330
      Y1 = 15
      X2 = 330
      Y2 = 1695
    End
    Begin Line Line1
      Index = 3
      BorderColor = &H808080&
      X1 = 0
      Y1 = 1140
      X2 = 1890
      Y2 = 1140
    End
    Begin Shape Shape2
      Left = 0
      Top = 0
      Width = 1890
      Height = 1455
    End
    Begin Line Line1
      Index = 2
      BorderColor = &H808080&
      X1 = 0
      Y1 = 855
      X2 = 1890
      Y2 = 855
    End
    Begin Line Line1
      Index = 1
      BorderColor = &H808080&
      X1 = 0
      Y1 = 570
      X2 = 1890
      Y2 = 570
    End
    Begin Line Line1
      Index = 0
      BorderColor = &H808080&
      X1 = 15
      Y1 = 285
      X2 = 1905
      Y2 = 285
    End
    Begin Label lblMenu0
      Caption = "l"
      Index = 4
      BackColor = &HC0C0C0&
      ForeColor = &HFF0000&
      Left = 0
      Top = 1140
      Width = 345
      Height = 300
      TabIndex = 21
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu0
      Caption = "n"
      Index = 3
      BackColor = &HC0C0C0&
      ForeColor = &HFF&
      Left = 0
      Top = 855
      Width = 345
      Height = 300
      TabIndex = 20
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu0
      Caption = "O"
      Index = 2
      BackColor = &HC0C0C0&
      ForeColor = &HFF00&
      Left = 0
      Top = 570
      Width = 345
      Height = 300
      TabIndex = 19
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu0
      Caption = "*"
      Index = 1
      BackColor = &HC0C0C0&
      ForeColor = &HFF&
      Left = 0
      Top = 285
      Width = 345
      Height = 300
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu0
      Caption = "+"
      Index = 0
      BackColor = &HC0C0C0&
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 345
      Height = 300
      TabIndex = 17
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu
      Caption = "  Clo&se"
      Index = 4
      BackColor = &HC0C0C0&
      ForeColor = &H80000008&
      Left = 315
      Top = 1140
      Width = 1590
      Height = 300
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Comic Sans MS"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu
      Caption = "  &Delete"
      Index = 3
      BackColor = &HC0C0C0&
      ForeColor = &H80000008&
      Left = 315
      Top = 855
      Width = 1590
      Height = 300
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Comic Sans MS"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu
      Caption = "  Mark as &Flag"
      Index = 2
      BackColor = &HC0C0C0&
      ForeColor = &H80000008&
      Left = 315
      Top = 570
      Width = 1590
      Height = 300
      TabIndex = 14
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Comic Sans MS"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu
      Caption = "  Mark as &Unread"
      Index = 1
      BackColor = &HC0C0C0&
      ForeColor = &H80000008&
      Left = 315
      Top = 285
      Width = 1590
      Height = 300
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Comic Sans MS"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu
      Caption = "  Mark as &Read"
      Index = 0
      BackColor = &HC0C0C0&
      ForeColor = &H80000008&
      Left = 315
      Top = 0
      Width = 1590
      Height = 300
      TabIndex = 12
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Comic Sans MS"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin CheckBox Check1
    BackColor = &H808000&
    Left = 90
    Top = 15
    Width = 285
    Height = 240
    TabIndex = 10
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin MSHFlexGrid FGrid
    Left = 30
    Top = 15
    Width = 10740
    Height = 5910
    TabIndex = 0
  End
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HF5F0E2&
    Left = 0
    Top = 0
    Width = 10920
    Height = 6735
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    Begin CheckBox BtnClose
      Caption = "Close"
      BackColor = &HC0C000&
      ForeColor = &HC00000&
      Left = 9000
      Top = 6030
      Width = 1650
      Height = 585
      Visible = 0   'False
      TabIndex = 25
      Appearance = 0 'Flat
      Style = 1
    End
    Begin TextBox Txt
      Index = 0
      Left = 960
      Top = 45
      Width = 9660
      Height = 240
      TabIndex = 6
      BorderStyle = 0 'None
      MaxLength = 50
      Locked = -1  'True
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
      Index = 3
      Left = 150
      Top = 1125
      Width = 10485
      Height = 4815
      Enabled = 0   'False
      TabIndex = 9
      BorderStyle = 0 'None
      MultiLine = -1  'True
      Locked = -1  'True
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
      Left = 960
      Top = 555
      Width = 9660
      Height = 240
      TabIndex = 8
      BorderStyle = 0 'None
      MaxLength = 50
      Locked = -1  'True
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
      Left = 960
      Top = 300
      Width = 9660
      Height = 240
      Enabled = 0   'False
      TabIndex = 7
      BorderStyle = 0 'None
      MaxLength = 50
      Locked = -1  'True
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
    Begin Label Label1
      Caption = "From"
      Index = 3
      ForeColor = &H0&
      Left = 60
      Top = 45
      Width = 450
      Height = 210
      TabIndex = 5
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
      Caption = "Message"
      Index = 5
      ForeColor = &H0&
      Left = 135
      Top = 810
      Width = 1050
      Height = 285
      TabIndex = 4
      AutoSize = -1  'True
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
    Begin Label Label1
      Caption = "To"
      Index = 4
      ForeColor = &H0&
      Left = 60
      Top = 510
      Width = 225
      Height = 210
      TabIndex = 3
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
      Caption = "Subject"
      Index = 1
      ForeColor = &H0&
      Left = 60
      Top = 270
      Width = 705
      Height = 210
      TabIndex = 2
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
End

Attribute VB_Name = "Inbox"


Private Sub BtnCompose_Click() 'E6D0E8
  'Data Table: 43A448
  loc_E6D0A7: If (Me.BtnCompose.Value = 1) Then
  loc_E6D0B6:   Me.BtnCompose.Value = 0
  loc_E6D0CE:   Call 0.Method_arg_2B0 (1)
  loc_E6D0E1:   Outbox.ShowCompose = CByte(0)
  loc_E6D0E6: End If
  loc_E6D0E6: Exit Sub
End Sub

Private Sub Form_Load() 'EB7478
  'Data Table: 43A448
  loc_EB73D4: On Error Goto loc_EB7470
  loc_EB73DE: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_EB73F6: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_EB740A: Me.mnuFrame.Visible = False
  loc_EB741C: Set global_52 = New 
  loc_EB742E: Me.Recordset15.CursorLocation = 3
  loc_EB7433: Call Proc_300_16_10EB6D0()
  loc_EB7438: Call Proc_300_18_1361274()
  loc_EB7444: Call 0.Method_arg_7C (CDbl(0))
  loc_EB7450: Call 0.Method_arg_74 (CDbl(0))
  loc_EB745D: Call 0.Method_MeC (CDbl(9180))
  loc_EB746A: Call 0.Method_Me4 (CDbl(11000))
  loc_EB746F: Exit Sub
  loc_EB7470: ' Referenced from: EB73D4
  loc_EB7470: Proc_6_60_E63754()
  loc_EB7475: Exit Sub
End Sub

Private Sub Form_Resize() 'DFC9C8
  'Data Table: 43A448
  loc_DFC9C4: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0DD34
  'Data Table: 43A448
  loc_E0DD2B: Set global_52 = Nothing
  loc_E0DD32: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6B1D8
  'Data Table: 43A448
  loc_E6B1A1: If (CLng(Me.FGrid.ColSel) <> CLng(2)) Then
  loc_E6B1BF:   If (Me.mnuFrame.Visible = &HFF) Then
  loc_E6B1CE:     Me.mnuFrame.Visible = False
  loc_E6B1D6:   End If
  loc_E6B1D6: End If
  loc_E6B1D6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B '1013574
  'Data Table: 43A448
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_2DC As Double
  Dim var_1E4 As Variant
  Dim unk_43A466 As Connection15
  loc_10133BB: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10133F6: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1013403:   var_98 = Me.FGrid.Row
  loc_1013410:   Call Proc_300_19_11310D0(CInt(CLng(var_98)), CVar(CLng(3)))
  loc_101341B: End If
  loc_1013426: Proc_6_7_F26918(var_98, MemVar_1F950EC)
  loc_1013466: var_184 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_101346E: var_1A4 = CVar(CLng(6)) 'Long
  loc_101347D: var_1C4 = Me.FGrid.TextMatrix)
  loc_10134C6: var_2DC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1013502: var_1E4 = "Update Messaging Set ReadYN='Y',ReadDate=" & var_98 & ",ReadTime='" & Format(Now, "hh:mm") & "' Where VType='" & CVar(CStr(var_1C4)) 
  loc_101352D: unk_43A466.Execute CStr(var_1E4 & "' And VNo=" & CVar(var_2DC) & vbNullString), var_2D0, -1
  loc_101356D: Call Proc_300_18_1361274(var_2D4, var_2DC, CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), var_1C4)
  loc_1013572: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E '1111F10
  'Data Table: 43A448
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_F0 As String
  Dim var_104 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_114 As Variant
  Dim var_1B4 As Variant
  Dim var_1C8 As MSHFlexGrid
  Dim var_1D0 As Frame
  Dim var_2F98 As Variant
  loc_1111BF9: var_A8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_1111C51: If ((CVar(CLng(2)) And (CStr(Me.FGrid.TextMatrix)) = " ")) And (CLng(Me.FGrid.ColSel) = CLng(1))) Then
  loc_1111C66:   Me.FGrid.ColSel = CVar(CLng(1))
  loc_1111C7E:   Me.FGrid.CellFontName = "wingdings"
  loc_1111C98:   Me.FGrid.CellFontSize = CVar(CDbl(&HB))
  loc_1111CB3:   var_A8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_1111CBB:   var_C8 = CVar(CLng(1)) 'Long
  loc_1111CE9:   var_174 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_1111CF1:   var_194 = CVar(CLng(1)) 'Long
  loc_1111D28:   var_1B4 = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = " "), "ü", " "))) 'String
  loc_1111D30:   Set var_1C8 = Me.FGrid
  loc_1111D36:   LateIdCallSt
  loc_1111D62: Else
  loc_1111D8A:   If ((CLng(Cancel) = 2) And (CLng(Me.FGrid.ColSel) = CLng(2))) Then
  loc_1111DA0:     var_A8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_1111DA8:     var_C8 = CVar(CLng(3)) 'Long
  loc_1111DC2:     var_F0 = CStr(Me.FGrid.TextMatrix))
  loc_1111DDD:     var_114 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_1111E25:     If (CVar(CLng(4)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_1111E28:       Exit Sub
  loc_1111E29:     End If
  loc_1111E2D:     Set var_1D0 = Me.mnuFrame
  loc_1111E7F:     var_1D0.Top = (((CDbl(Me.FGrid.Top) + CDbl(CLng(Me.FGrid.CellTop))) + CDbl(CLng(Me.FGrid.CellHeight))) - CDbl(&H64))
  loc_1111EB3:     var_104 = Me.FGrid.CellWidth
  loc_1111EE5:     var_1D0.Left = (((CDbl(Me.FGrid.Left) + CDbl(CLng(Me.FGrid.CellLeft))) + CDbl(CLng(var_104))) - CDbl(&H3C))
  loc_1111F01:     var_1D0.Visible = True
  loc_1111F08:     Set var_1D0 = Nothing 
  loc_1111F0C:   End If
  loc_1111F0C: End If
  loc_1111F0C: Exit Sub
  loc_1111F0D: var_2F98 = CVar(var_104) 'Single
End Sub

Private Sub btnExit_Click() 'E5CD20
  'Data Table: 43A448
  loc_E5CCF3: If (Me.BtnExit.Value = 1) Then
  loc_E5CD02:   Me.BtnExit.Value = 0
  loc_E5CD17:   Me.Global.Unload Me
  loc_E5CD1F: End If
  loc_E5CD1F: Exit Sub
End Sub

Private Sub lblMenu0_Click() 'E02ECC
  'Data Table: 43A448
  loc_E02EC3: Call lblMenu_Click()
  loc_E02EC8: Exit Sub
End Sub

Private Sub lblMenu0_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E21560
  'Data Table: 43A448
  loc_E21557: Call lblMenu_MouseMove(Button, 0, 0, CDbl(0))
  loc_E2155C: Exit Sub
End Sub

Private Sub Check1_Click() 'F31544
  'Data Table: 43A448
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F8 As String
  loc_F31443: If (Me.Check1.Value = 1) Then
  loc_F3146B:   For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F31475:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_F3147D:     var_D4 = CVar(CLng(2)) 'Long
  loc_F314A8:     If (CStr(Me.FGrid.TextMatrix)) = " ") Then
  loc_F314AF:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_F314B7:       var_D4 = CVar(CLng(1)) 'Long
  loc_F314BC:       var_F8 = "ü"
  loc_F314C6:       Set var_8C = Me.FGrid
  loc_F314CC:       LateIdCallSt
  loc_F314D7:     End If
  loc_F314DA:   Next var_A4 'Integer
  loc_F314E2: Else
  loc_F31507:   For var_10C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_86 = var_10C 'Integer
  loc_F31511:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_F31519:     var_D4 = CVar(CLng(1)) 'Long
  loc_F3151E:     var_F8 = " "
  loc_F31528:     Set var_8C = Me.FGrid
  loc_F3152E:     LateIdCallSt
  loc_F3153C:   Next var_10C 'Integer
  loc_F31541: End If
  loc_F31541: Exit Sub
End Sub

Private Sub BtnDelete_Click(Index As Integer) '121B188
  'Data Table: 43A448
  Dim var_90 As Variant
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_11C As String
  Dim var_D4 As Variant
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_2AC As Double
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_1B0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  Dim unk_43A466 As Connection15
  Dim var_1E0 As Variant
  Dim var_2A0 As Variant
  loc_121ACF9: Set var_8C = Me.BtnDelete
  loc_121ACFF: Call 0.Method_BtnDelete_Click0 (Index, var_90)
  loc_121AD19: If (var_90.Value = 1) Then
  loc_121AD28:   Set var_8C = Me.BtnDelete
  loc_121AD2E:   Call 0.Method_BtnDelete_Click0 (Index, var_90)
  loc_121AD36:   var_90.Value = 0
  loc_121AD5D:   If (Me.Check1.Value = 1) Then
  loc_121AD97:     If (MsgBox("Are you sure delete all read message?", &H114, "Delete...", var_F4, var_114) = 7) Then
  loc_121AD9A:       Exit Sub
  loc_121AD9B:     End If
  loc_121AD9B:   End If
  loc_121ADA1:   If (Index = 0) Then
  loc_121ADC9:     For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_121ADD3:       var_A4 = CVar(CLng(var_86)) 'Long
  loc_121ADDB:       var_E4 = CVar(CLng(2)) 'Long
  loc_121AE18:       var_D4 = Me.FGrid.TextMatrix)
  loc_121AE41:       If (CVar(CLng(1)) And (CStr(var_D4) = "ü")) Then
  loc_121AE52:         Proc_6_7_F26918(var_D4, Now, CVar(CLng(var_86)), (CStr(Me.FGrid.TextMatrix)) = " "))
  loc_121AEAB:         Proc_6_17_EAAE40(var_1E0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_86)), 1)
  loc_121AEB4:         var_220 = CVar(CLng(var_86)) 'Long
  loc_121AEBC:         var_240 = CVar(CLng(7)) 'Long
  loc_121AF0F:         var_1B0 = "Update Messaging Set Cleared='Y',ClearedDate=" & var_D4 & ",ClearedTime='" & Format(Now, "hh:mm") & "' Where VType=" 
  loc_121AF16:         var_1F0 = var_1B0 & var_1E0 
  loc_121AF38:         unk_43A466.Execute CStr(var_1F0 & " And VNo=" & CVar(Val(CStr(Me.FGrid.TextMatrix))))), var_2A0, -1
  loc_121AF72:       End If
  loc_121AF75:     Next var_118 'Integer
  loc_121AF7D:   Else
  loc_121AF90:     var_A4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_121AF98:     var_E4 = CVar(CLng(2)) 'Long
  loc_121AFA7:     var_D4 = Me.FGrid.TextMatrix)
  loc_121AFB2:     var_11C = CStr(var_D4)
  loc_121B015:     If (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = "ü")) Then
  loc_121B026:       Proc_6_7_F26918(var_D4, Now, CVar(CLng(Me.FGrid.RowSel)))
  loc_121B08E:       Proc_6_17_EAAE40(var_1F0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(Me.FGrid.RowSel)), 1)
  loc_121B0A6:       var_220 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_121B0AE:       var_240 = CVar(CLng(7)) 'Long
  loc_121B0D0:       var_2AC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_121B108:       var_210 = "Update Messaging Set Cleared='Y',ClearedDate=" & var_D4 & ",ClearedTime='" & Format(Now, "hh:mm") & "' Where VType=" & var_1F0 
  loc_121B12A:       unk_43A466.Execute CStr(var_210 & " And VNo=" & CVar(var_2AC)), var_2D0, -1
  loc_121B16C:     End If
  loc_121B16C:   End If
  loc_121B16C:   Call Proc_300_18_1361274(var_2D4, var_2AC, var_240, var_220)
  loc_121B17D:   Me.Frame1.Visible = False
  loc_121B185: End If
  loc_121B185: Exit Sub
End Sub

Private Sub lblMenu_Click(Index As Integer) '13F2A0C
  'Data Table: 43A448
  Dim var_8C As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_102 As Integer
  Dim var_100 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_280 As String
  Dim var_2D0 As Double
  Dim var_134 As Variant
  Dim var_184 As Variant
  Dim var_204 As Variant
  Dim unk_43A466 As Connection15
  Dim var_114 As Variant
  loc_13F202E: If (Index <= 3) Then
  loc_13F2044:   var_AC = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_13F204C:   var_CC = CVar(CLng(1)) 'Long
  loc_13F2051:   var_EC = "ü"
  loc_13F205B:   Set var_100 = Me.FGrid
  loc_13F2061:   LateIdCallSt
  loc_13F2073: End If
  loc_13F2076: var_102 = Index
  loc_13F207F: If (var_102 = 0) Then
  loc_13F2095:   var_AC = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_13F20AC:   Set var_100 = Me.FGrid
  loc_13F20B2:   LateIdCallSt
  loc_13F20E0:   Set var_100 = Me.FGrid
  loc_13F20E6:   var_100.Row = CVar(CLng(Me.FGrid.RowSel))
  loc_13F2107:   Me.FGrid.Col = CVar(CLng(3))
  loc_13F211E:   Me.FGrid.CellFontBold = False
  loc_13F2138:   Me.FGrid.Col = CVar(CLng(4))
  loc_13F214F:   Me.FGrid.CellFontBold = False
  loc_13F2169:   Me.FGrid.Col = CVar(CLng(5))
  loc_13F2180:   Me.FGrid.CellFontBold = False
  loc_13F218B:   var_AC = CVar(CLng(2)) 'Long
  loc_13F219A:   Me.FGrid.Col = var_AC
  loc_13F21B0:   Proc_6_7_F26918(var_114, Now, var_100, " ", CVar(CLng(2)), var_AC)
  loc_13F21E7:   var_194 = Me.FGrid.RowSel
  loc_13F2201:   Set var_100 = Me.FGrid
  loc_13F2218:   Proc_6_17_EAAE40(var_1E4, CVar(CStr(var_100.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_194)), 1, 1)
  loc_13F2230:   var_238 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_13F2238:   var_258 = CVar(CLng(7)) 'Long
  loc_13F2252:   var_280 = CStr(Me.FGrid.TextMatrix))
  loc_13F225A:   var_2D0 = Val(var_280)
  loc_13F227B:   var_134 = "Update Messaging Set Cleared='N',ReadYN='Y',ReadDate=" & var_114 & ",ReadTime='" 
  loc_13F22B4:   unk_43A466.Execute CStr(var_134 & Format(Now, "hh:mm") & "' Where VType=" & var_1E4 & " And VNo=" & CVar(var_2D0)), var_2C4, -1
  loc_13F22F9: Else
  loc_13F22FF:   If (var_102 = 1) Then
  loc_13F232F:     Set var_8C = Me.lblMenu0
  loc_13F2335:     Call 0.Method_lblMenu_Click0 (Index, var_100, var_280, CVar(CLng(2)), CVar(CLng(Me.FGrid.RowSel)), var_2C8, var_2D0)
  loc_13F233D:     var_258 = var_100.Caption
  loc_13F2353:     LateIdCallSt
  loc_13F2389:     Set var_100 = Me.FGrid
  loc_13F238F:     var_100.Row = CVar(CLng(Me.FGrid.RowSel))
  loc_13F23AC:     Me.FGrid.CellFontBold = True
  loc_13F23C6:     Me.FGrid.Col = CVar(CLng(3))
  loc_13F23DC:     Me.FGrid.CellFontBold = True
  loc_13F23F6:     Me.FGrid.Col = CVar(CLng(4))
  loc_13F240C:     Me.FGrid.CellFontBold = True
  loc_13F2426:     Me.FGrid.Col = CVar(CLng(5))
  loc_13F243C:     Me.FGrid.CellFontBold = True
  loc_13F2456:     Me.FGrid.Col = CVar(CLng(2))
  loc_13F246B:     Set var_8C = Me.lblMenu0
  loc_13F2471:     Call 0.Method_lblMenu_Click0 (Index, var_100, var_2D4, Me.FGrid, CVar(var_280), var_238)
  loc_13F2479:     var_102 = var_100.ForeColor
  loc_13F2490:     Me.FGrid.CellForeColor = CVar(var_2D4)
  loc_13F24C2:     Set var_100 = Me.FGrid
  loc_13F24D9:     Proc_6_17_EAAE40(var_134, CVar(CStr(var_100.TextMatrix))), CVar(CLng(6)), CVar(CLng(Me.FGrid.RowSel)))
  loc_13F24F1:     var_1A4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_13F24F9:     var_204 = CVar(CLng(7)) 'Long
  loc_13F2513:     var_280 = CStr(Me.FGrid.TextMatrix))
  loc_13F251B:     var_2D0 = Val(var_280)
  loc_13F2547:     var_184 = "Update Messaging Set Cleared='N',ReadYN='N',ReadDate= Null ,ReadTime=Null Where VType=" & var_134 & " And VNo=" & CVar(var_2D0) 
  loc_13F2555:     unk_43A466.Execute CStr(var_184), var_194, -1
  loc_13F2588:   Else
  loc_13F258E:     If (var_102 = 2) Then
  loc_13F25BE:       Set var_8C = Me.lblMenu0
  loc_13F25C4:       Call 0.Method_lblMenu_Click0 (Index, var_100, var_280, CVar(CLng(2)), CVar(CLng(Me.FGrid.RowSel)), var_2C8, var_2D0)
  loc_13F25CC:       var_204 = var_100.Caption
  loc_13F25E2:       LateIdCallSt
  loc_13F2618:       Set var_100 = Me.FGrid
  loc_13F261E:       var_100.Row = CVar(CLng(Me.FGrid.RowSel))
  loc_13F263F:       Me.FGrid.Col = CVar(CLng(2))
  loc_13F2654:       Set var_8C = Me.lblMenu0
  loc_13F265A:       Call 0.Method_lblMenu_Click0 (Index, var_100, var_2D4, Me.FGrid, CVar(var_280))
  loc_13F2662:       var_1A4 = var_100.ForeColor
  loc_13F2679:       Me.FGrid.CellForeColor = CVar(var_2D4)
  loc_13F26C2:       Proc_6_17_EAAE40(var_134, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(Me.FGrid.RowSel)))
  loc_13F26DA:       var_1A4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_13F26E2:       var_204 = CVar(CLng(7)) 'Long
  loc_13F2704:       var_2D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_13F273E:       unk_43A466.Execute CStr("Update Messaging Set Cleared='N',ReadYN='F' Where VType=" & var_134 & " And VNo=" & CVar(var_2D0)), var_194, -1
  loc_13F2771:     Else
  loc_13F2777:       If (var_102 = 3) Then
  loc_13F27A4:         var_114 = Me.FGrid.TextMatrix)
  loc_13F2812:         If (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = "ü")) Then
  loc_13F2823:           Proc_6_7_F26918(var_114, Now, CVar(CLng(Me.FGrid.RowSel)), (CStr(var_114) = " "), CVar(CLng(2)), CVar(CLng(Me.FGrid.RowSel)), var_2C8)
  loc_13F288B:           Proc_6_17_EAAE40(var_1E4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(Me.FGrid.RowSel)), 1, 1, var_2D0)
  loc_13F28A3:           var_238 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_13F28AB:           var_258 = CVar(CLng(7)) 'Long
  loc_13F28CD:           var_2D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_13F28FE:           var_184 = "Update Messaging Set Cleared='Y',ClearedDate=" & var_114 & ",ClearedTime='" & Format(Now, "hh:mm") & "' Where VType=" 
  loc_13F2909:           var_204 = " And VNo="
  loc_13F2927:           unk_43A466.Execute CStr(var_184 & var_1E4 & var_204 & CVar(var_2D0)), var_2C4, -1
  loc_13F2969:         End If
  loc_13F2969:         Call Proc_300_18_1361274(var_2C8, var_2D0, var_258, var_238, var_204)
  loc_13F2971:       Else
  loc_13F2977:         If (var_102 = 4) Then
  loc_13F2986:           Me.mnuFrame.Visible = False
  loc_13F298E:         End If
  loc_13F298E:       End If
  loc_13F298E:     End If
  loc_13F298E:   End If
  loc_13F298E: End If
  loc_13F29B3: For var_2D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2D8 'Integer
  loc_13F29BD:   var_AC = CVar(CLng(var_86)) 'Long
  loc_13F29C5:   var_CC = CVar(CLng(1)) 'Long
  loc_13F29CA:   var_EC = " "
  loc_13F29D4:   Set var_8C = Me.FGrid
  loc_13F29DA:   LateIdCallSt
  loc_13F29E8: Next var_2D8 'Integer
  loc_13F29F9: Me.mnuFrame.Visible = False
  loc_13F2A04: Call 0.Method_arg_2A8 ()
  loc_13F2A09: Exit Sub
End Sub

Private Sub lblMenu_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'FA43C8
  'Data Table: 43A448
  Dim var_94 As Label
  loc_FA4238: DoEvents()
  loc_FA4244: Set var_8C = Me.lblMenu
  loc_FA424A: Call 0.Method_lblMenu_MouseMove4 (var_8E)
  loc_FA425C: Set var_94 = Me.lblMenu
  loc_FA4262: Call 0.Method_lblMenu_MouseMove8 (var_96, var_86)
  loc_FA4271: For var_9A =  To var_96: var_8E = var_9A 'Integer
  loc_FA427E:   If (Button = var_86) Then
  loc_FA428F:     Set var_8C = Me.lblMenu0
  loc_FA4295:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA429D:     var_94.FontSize = CDbl(&HB)
  loc_FA42B5:     Set var_8C = Me.lblMenu0
  loc_FA42BB:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA42C3:     var_94.FontBold = True
  loc_FA42DD:     Set var_8C = Me.lblMenu
  loc_FA42E3:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA42EB:     var_94.FontSize = CDbl(8)
  loc_FA4303:     Set var_8C = Me.lblMenu
  loc_FA4309:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA4311:     var_94.FontBold = True
  loc_FA4320:   Else
  loc_FA432E:     Set var_8C = Me.lblMenu0
  loc_FA4334:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA433C:     var_94.FontSize = CDbl(&HC)
  loc_FA4356:     Set var_8C = Me.lblMenu
  loc_FA435C:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA4364:     var_94.FontSize = CDbl(9)
  loc_FA437C:     Set var_8C = Me.lblMenu0
  loc_FA4382:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA438A:     var_94.FontBold = False
  loc_FA43A2:     Set var_8C = Me.lblMenu
  loc_FA43A8:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA43B0:     var_94.FontBold = False
  loc_FA43BC:   End If
  loc_FA43BF: Next var_9A 'Integer
  loc_FA43C4: Exit Sub
End Sub

Private Sub BtnClose_Click() 'E5CE18
  'Data Table: 43A448
  loc_E5CDEB: If (Me.BtnClose.Value = 1) Then
  loc_E5CDFA:   Me.BtnClose.Value = 0
  loc_E5CE0E:   Me.Frame1.Visible = False
  loc_E5CE16: End If
  loc_E5CE16: Exit Sub
End Sub

Public Property Let ShowInboxMessage(FG) '104DB7C
  'Data Table: 43A448
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As MSHFlexGrid
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_2DC As Double
  Dim var_1E4 As Variant
  Dim unk_43A466 As Connection15
  loc_104D979: Set var_B8 = Me.FGrid
  loc_104D97F: var_B8.Row = CVar(CLng(Me.FGrid.Row))
  loc_104D9A5: Me.FGrid.Col = CVar(CLng(Me.Me.FGrid.Col))
  loc_104D9C3: var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104D9FE: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_104DA0B:   var_94 = Me.FGrid.Row
  loc_104DA18:   Call Proc_300_19_11310D0(CInt(CLng(var_94)), CVar(CLng(3)))
  loc_104DA23: End If
  loc_104DA2E: Proc_6_7_F26918(var_94, MemVar_1F950EC)
  loc_104DA6E: var_184 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104DA76: var_1A4 = CVar(CLng(6)) 'Long
  loc_104DA85: var_1C4 = Me.FGrid.TextMatrix)
  loc_104DACE: var_2DC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_104DB0A: var_1E4 = "Update Messaging Set ReadYN='Y',ReadDate=" & var_94 & ",ReadTime='" & Format(Now, "hh:mm") & "' Where VType='" & CVar(CStr(var_1C4)) 
  loc_104DB35: unk_43A466.Execute CStr(var_1E4 & "' And VNo=" & CVar(var_2DC) & vbNullString), var_2D0, -1
  loc_104DB75: Call Proc_300_18_1361274(var_2D4, var_2DC, CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), var_1C4)
  loc_104DB7A: Exit Sub
End Sub

Public Sub Proc_300_16_10EB6D0
  'Data Table: 43A448
  Dim var_94 As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_10EB3BA: Me.FGrid.Left = CVar(CDbl(0))
  loc_10EB3C8: Call 0.Method_Me0 (var_AC)
  loc_10EB3DF: Me.FGrid.Width = CVar(var_AC)
  loc_10EB3EB: Set var_B0 = Me.FGrid
  loc_10EB3FA: var_B0.FixedRows = 1
  loc_10EB413: global_56 = CStr(CLng(var_B0.BackColor))
  loc_10EB429: var_B0.Cols = 8
  loc_10EB431: var_94 = CVar(CLng(0)) 'Long
  loc_10EB436: var_D4 = 0
  loc_10EB442: LateIdCallSt
  loc_10EB44A: var_94 = 0
  loc_10EB456: var_D4 = CVar(CLng(1)) 'Long
  loc_10EB45B: var_F4 = vbNullString
  loc_10EB464: LateIdCallSt
  loc_10EB46F: var_94 = CVar(CLng(1)) 'Long
  loc_10EB47A: var_D4 = CVar(CInt(1)) 'Integer
  loc_10EB481: LateIdCallSt
  loc_10EB48C: var_94 = CVar(CLng(1)) 'Long
  loc_10EB491: var_D4 = &H12C
  loc_10EB49D: LateIdCallSt
  loc_10EB4A5: var_94 = 0
  loc_10EB4B1: var_D4 = CVar(CLng(4)) 'Long
  loc_10EB4B6: var_F4 = "Subject"
  loc_10EB4BF: LateIdCallSt
  loc_10EB4CA: var_94 = CVar(CLng(4)) 'Long
  loc_10EB4D5: var_D4 = CVar(CInt(1)) 'Integer
  loc_10EB4DC: LateIdCallSt
  loc_10EB4E7: var_94 = CVar(CLng(4)) 'Long
  loc_10EB4F2: var_D4 = CVar(CInt(1)) 'Integer
  loc_10EB4F9: LateIdCallSt
  loc_10EB504: var_94 = CVar(CLng(4)) 'Long
  loc_10EB509: var_D4 = &H1518
  loc_10EB515: LateIdCallSt
  loc_10EB51D: var_94 = 0
  loc_10EB529: var_D4 = CVar(CLng(3)) 'Long
  loc_10EB52E: var_F4 = "From"
  loc_10EB537: LateIdCallSt
  loc_10EB542: var_94 = CVar(CLng(3)) 'Long
  loc_10EB54D: var_D4 = CVar(CInt(1)) 'Integer
  loc_10EB554: LateIdCallSt
  loc_10EB55F: var_94 = CVar(CLng(3)) 'Long
  loc_10EB56A: var_D4 = CVar(CInt(1)) 'Integer
  loc_10EB571: LateIdCallSt
  loc_10EB57C: var_94 = CVar(CLng(3)) 'Long
  loc_10EB581: var_D4 = &HB22
  loc_10EB58D: LateIdCallSt
  loc_10EB595: var_94 = 0
  loc_10EB5A1: var_D4 = CVar(CLng(5)) 'Long
  loc_10EB5A6: var_F4 = "Received On"
  loc_10EB5AF: LateIdCallSt
  loc_10EB5BA: var_94 = CVar(CLng(5)) 'Long
  loc_10EB5C5: var_D4 = CVar(CInt(1)) 'Integer
  loc_10EB5CC: LateIdCallSt
  loc_10EB5D7: var_94 = CVar(CLng(5)) 'Long
  loc_10EB5E2: var_D4 = CVar(CInt(1)) 'Integer
  loc_10EB5E9: LateIdCallSt
  loc_10EB5F4: var_94 = CVar(CLng(5)) 'Long
  loc_10EB5F9: var_D4 = &H640
  loc_10EB605: LateIdCallSt
  loc_10EB60D: var_94 = 0
  loc_10EB619: var_D4 = CVar(CLng(2)) 'Long
  loc_10EB61E: var_F4 = vbNullString
  loc_10EB627: LateIdCallSt
  loc_10EB632: var_94 = CVar(CLng(2)) 'Long
  loc_10EB637: var_D4 = &H190
  loc_10EB643: LateIdCallSt
  loc_10EB64B: var_94 = 0
  loc_10EB657: var_D4 = CVar(CLng(6)) 'Long
  loc_10EB65C: var_F4 = "VType"
  loc_10EB665: LateIdCallSt
  loc_10EB670: var_94 = CVar(CLng(6)) 'Long
  loc_10EB675: var_D4 = 0
  loc_10EB681: LateIdCallSt
  loc_10EB689: var_94 = 0
  loc_10EB695: var_D4 = CVar(CLng(7)) 'Long
  loc_10EB69A: var_F4 = "VNo"
  loc_10EB6A3: LateIdCallSt
  loc_10EB6AE: var_94 = CVar(CLng(7)) 'Long
  loc_10EB6B3: var_D4 = 0
  loc_10EB6BF: LateIdCallSt
  loc_10EB6C9: Set var_B0 = Nothing 
  loc_10EB6CD: Exit Sub
End Sub

Public Sub Proc_300_17_E17DF8
  'Data Table: 43A448
  loc_E17DED: Me.Global.Unload Me
  loc_E17DF5: Exit Sub
End Sub

Public Sub Proc_300_18_1361274
  'Data Table: 43A448
  Dim var_A4 As String
  Dim unk_43A466 As Connection15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_C4 As Variant
  Dim var_114 As String
  Dim var_134 As Variant
  Dim var_DC As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_104 As Variant
  Dim var_CC As Field20
  loc_1360A38: On Error Goto loc_136126B
  loc_1360A56: var_A4 = "SELECT * FROM Messaging Where Receiver='" & MemVar_1F950C8 & "' And (Cleared is Null Or Cleared='' Or Cleared='N') Order By VDATE DESC,VType DESC,VNo DESC,Sender"
  loc_1360A5F: unk_43A466.Execute var_A4, var_C4, -1
  loc_1360A70: Set global_52 = var_C8
  loc_1360A94: Me.FGrid.Redraw = False
  loc_1360AAF: Me.FGrid.Rows = 1
  loc_1360AB9: var_8A = 1
  loc_1360ABC: ' Referenced from: 136118D
  loc_1360ACE: If Not(Me.EOF) Then
  loc_1360AD1:   var_B4 = vbNullString
  loc_1360ADB:   Set var_C8 = Me.FGrid
  loc_1360AF0:   Set var_E4 = Me.FGrid
  loc_1360AF7:   var_B4 = CVar(CLng(var_8A)) 'Long
  loc_1360AFF:   var_F4 = CVar(CLng(0)) 'Long
  loc_1360B09:   var_C4 = CVar(CStr(var_8A)) 'String
  loc_1360B10:   LateIdCallSt
  loc_1360B1F:   var_B4 = CVar(CLng(var_8A)) 'Long
  loc_1360B27:   var_F4 = CVar(CLng(1)) 'Long
  loc_1360B35:   LateIdCallSt
  loc_1360B40:   var_B4 = "Readyn"
  loc_1360B68:   var_134 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_B4)), var_E4, " ", var_F4, var_B4, var_E4, CVar(Me.Fields.Item(var_B4)))) 'String
  loc_1360B8A:   If (Ucase(var_134) = "Y") Then
  loc_1360B99:     var_E4.Row = CVar(CLng(var_8A))
  loc_1360BA9:     var_E4.Col = CVar(CLng(4))
  loc_1360BB6:     var_E4.CellFontBold = False
  loc_1360BC6:     var_E4.Col = CVar(CLng(3))
  loc_1360BD3:     var_E4.CellFontBold = False
  loc_1360BE3:     var_E4.Col = CVar(CLng(5))
  loc_1360BF0:     var_E4.CellFontBold = False
  loc_1360BF8:   Else
  loc_1360BFB:     var_B4 = "Readyn"
  loc_1360C45:     If (Ucase(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_B4)), var_F4, var_B4, FGrid.DispID_10000))) = "N") Then
  loc_1360C54:       var_E4.Row = CVar(CLng(var_8A))
  loc_1360C64:       var_E4.Col = CVar(CLng(4))
  loc_1360C70:       var_E4.CellFontBold = True
  loc_1360C80:       var_E4.Col = CVar(CLng(3))
  loc_1360C8C:       var_E4.CellFontBold = True
  loc_1360C9C:       var_E4.Col = CVar(CLng(5))
  loc_1360CA8:       var_E4.CellFontBold = True
  loc_1360CB0:     Else
  loc_1360CB3:       var_B4 = "Readyn"
  loc_1360CFD:       If (Ucase(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_B4)), var_B4))) = "F") Then
  loc_1360D0C:         var_E4.Row = CVar(CLng(var_8A))
  loc_1360D1C:         var_E4.Col = CVar(CLng(4))
  loc_1360D29:         var_E4.CellFontBold = False
  loc_1360D39:         var_E4.Col = CVar(CLng(3))
  loc_1360D46:         var_E4.CellFontBold = False
  loc_1360D56:         var_E4.Col = CVar(CLng(5))
  loc_1360D63:         var_E4.CellFontBold = False
  loc_1360D68:       End If
  loc_1360D68:     End If
  loc_1360D68:   End If
  loc_1360D6C:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_1360D74:   var_104 = CVar(CLng(4)) 'Long
  loc_1360DA7:   var_134 = CVar(CStr(Me.Fields.Item("Subject").Value)) 'String
  loc_1360DAE:   LateIdCallSt
  loc_1360DC8:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_1360DD0:   var_104 = CVar(CLng(3)) 'Long
  loc_1360E03:   var_134 = CVar(CStr(Me.Fields.Item("Sender").Value)) 'String
  loc_1360E0A:   LateIdCallSt
  loc_1360E24:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_1360E2C:   var_104 = CVar(CLng(5)) 'Long
  loc_1360E5F:   var_134 = CVar(CStr(Me.Fields.Item("VDate").Value)) 'String
  loc_1360E66:   LateIdCallSt
  loc_1360E80:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_1360E88:   var_104 = CVar(CLng(6)) 'Long
  loc_1360EBB:   var_134 = CVar(CStr(Me.Fields.Item("vType").Value)) 'String
  loc_1360EC2:   LateIdCallSt
  loc_1360EDC:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_1360F17:   var_134 = CVar(CStr(Me.Fields.Item("VNo").Value)) 'String
  loc_1360F1E:   LateIdCallSt
  loc_1360F40:   var_E4.Row = CVar(CLng(var_8A))
  loc_1360F50:   var_E4.Col = CVar(CLng(1))
  loc_1360F5E:   var_E4.CellFontName = "wingdings"
  loc_1360F6E:   var_E4.CellFontSize = CVar(CDbl(&HB))
  loc_1360F7E:   var_E4.Col = CVar(CLng(2))
  loc_1360F8C:   var_E4.CellFontName = "wingdings"
  loc_1360F9C:   var_E4.CellFontSize = CVar(CDbl(&HB))
  loc_1360FA4:   var_B4 = CVar(CLng(2)) 'Long
  loc_1360FB6:   LateIdCallSt
  loc_1360FC1:   var_B4 = "Readyn"
  loc_1360FE9:   var_134 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_B4)), var_E4, CVar(CInt(3)), var_B4, var_E4, var_134, CVar(CLng(7)))) 'String
  loc_1360FF7:   var_DC = "Y"
  loc_136100B:   If (Ucase(var_134) = var_DC) Then
  loc_1361016:     var_E4.CellFontBold = False
  loc_1361027:     var_E4.CellForeColor = &HFF0000
  loc_1361030:     var_B4 = CVar(CLng(var_8A)) 'Long
  loc_1361038:     var_F4 = CVar(CLng(2)) 'Long
  loc_136103D:     var_114 = " "
  loc_1361046:     LateIdCallSt
  loc_1361051:   Else
  loc_1361054:     var_B4 = "Readyn"
  loc_136109E:     If (Ucase(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_B4)), var_E4, var_114, var_F4, var_B4, "N"))) = "N") Then
  loc_13610A8:       var_E4.CellFontBold = True
  loc_13610B9:       var_E4.CellForeColor = &HFF
  loc_13610C2:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_13610CA:       var_F4 = CVar(CLng(2)) 'Long
  loc_13610CF:       var_114 = "*"
  loc_13610D8:       LateIdCallSt
  loc_13610E3:     Else
  loc_13610E6:       var_B4 = "Readyn"
  loc_1361130:       If (Ucase(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_B4)), var_E4, var_114, var_F4, var_B4))) = "F") Then
  loc_136113B:         var_E4.CellFontBold = False
  loc_136114C:         var_E4.CellForeColor = &HFF00
  loc_1361155:         var_B4 = CVar(CLng(var_8A)) 'Long
  loc_136115D:         var_F4 = CVar(CLng(2)) 'Long
  loc_1361162:         var_114 = "O"
  loc_136116B:         LateIdCallSt
  loc_1361173:       End If
  loc_1361173:     End If
  loc_1361173:   End If
  loc_1361175:   Set var_E4 = Nothing 
  loc_136117F:   var_8A = (var_8A + 1)
  loc_1361188:   Me.MoveNext
  loc_136118D:   GoTo loc_1360ABC
  loc_1361190: End If
  loc_13611AF: If (CLng(Me.FGrid.Rows) > 1) Then
  loc_13611C5:   Me.FGrid.FixedRows = 1
  loc_13611CD: End If
  loc_13611DB: Me.FGrid.Redraw = True
  loc_13611E9: If (var_8A = 1) Then
  loc_13611FF:   Me.FGrid.Rows = 1
  loc_1361225:   var_C4 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_8A, var_E4, var_114, var_F4))) 'String
  loc_136122D:   Set var_CC = Me.FGrid
  loc_1361247:   var_B4 = 1
  loc_136125A:   Me.FGrid.FixedRows = var_B4
  loc_1361262: End If
  loc_1361267: Set var_88 = Nothing
  loc_136126A: Exit Sub
  loc_136126B: ' Referenced from: 1360A38
  loc_136126B: Proc_6_60_E63754(FGrid.DispID_10000, var_C4, var_B4, var_E4)
  loc_1361270: Exit Sub
End Sub

Public Sub Proc_300_19_11310D0(arg_C) '11310D0
  'Data Table: 43A448
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim var_178 As Double
  Dim unk_43A466 As Connection15
  Dim var_88 As Recordset15
  Dim var_180 As TextBox
  loc_1130D80: Me.Frame1.Visible = True
  loc_1130D98: Me.Frame1.ZOrder 0
  loc_1130DA4: var_9C = CVar(CLng(arg_C)) 'Long
  loc_1130DF5: var_178 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1130E33: unk_43A466.Execute "Select * From Messaging Where VType='" & CStr(Me.FGrid.TextMatrix)) & "' And VNo=" & CStr(var_178) & vbNullString, var_16C, -1
  loc_1130E3E: Set var_88 = var_170
  loc_1130E78: If (var_88.RecordCount > 0) Then
  loc_1130EBA:   Call 0.Method_Proc_300_19_11310D00 (CInt(0), var_180, CStr(var_88.Fields.Item("Sender").Value), Me.Txt, var_178)
  loc_1130EC2:   var_180.Text = CVar(CLng(7))
  loc_1130EFA:   var_DC = var_88.Fields.Item("vType").Value
  loc_1130F11:   Set var_170 = Me.Txt
  loc_1130F17:   Call 0.Method_Proc_300_19_11310D00 (CInt(0), var_180, CStr(var_DC), CVar(CLng(arg_C)))
  loc_1130F1F:   var_180.Tag = var_DC
  loc_1130F6E:   Set var_170 = Me.Txt
  loc_1130F74:   Call 0.Method_Proc_300_19_11310D00 (CInt(1), var_180, CStr(var_88.Fields.Item("Subject").Value))
  loc_1130F7C:   var_180.Text = CVar(CLng(6))
  loc_1130FCB:   Set var_170 = Me.Txt
  loc_1130FD1:   Call 0.Method_Proc_300_19_11310D00 (CInt(1), var_180)
  loc_1130FD9:   var_180.Tag = CStr(var_88.Fields.Item("VNo").Value)
  loc_1131041:   Set var_170 = Me.Txt
  loc_1131047:   Call 0.Method_Proc_300_19_11310D00 (CInt(2), var_180, CStr(Format(CVar(var_88.Fields.Item("VDate")), "dd/mmm/yyyy")))
  loc_113104F:   var_180.Text = 1
  loc_11310A2:   Set var_170 = Me.Txt
  loc_11310A8:   Call 0.Method_Proc_300_19_11310D00 (CInt(3), var_180, CStr(var_88.Fields.Item("Message").Value))
  loc_11310B0:   var_180.Text = 1
  loc_11310C6: End If
  loc_11310CB: Set var_88 = Nothing
  loc_11310CE: Exit Sub
End Sub
