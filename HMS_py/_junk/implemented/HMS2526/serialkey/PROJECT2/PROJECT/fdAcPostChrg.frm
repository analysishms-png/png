VERSION 5.00
Begin VB.Form fdAcPostChrg
  Caption = "Night Audit Process"
  BackColor = &HDECCBE&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12555
  ClientHeight = 8820
  BeginProperty Font
    Name = "Arial Black"
    Size = 9
    Charset = 0
    Weight = 900
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8580
    Width = 12555
    Height = 240
    Visible = 0   'False
    TabIndex = 38
  End
  Begin CommandButton cmdShowHide
    Caption = "SHOW DETAILS"
    Left = 810
    Top = 4035
    Width = 5805
    Height = 210
    Visible = 0   'False
    TabIndex = 34
  End
  Begin OptionButton optLockType
    Caption = "Not In Active"
    Index = 1
    Left = 4740
    Top = 4680
    Width = 1815
    Height = 360
    Visible = 0   'False
    TabIndex = 33
    BeginProperty Font
      Name = "Arial Black"
      Size = 8.25
      Charset = 0
      Weight = 900
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin OptionButton optLockType
    Caption = "Active Machine"
    Index = 0
    Left = 4755
    Top = 4410
    Width = 1815
    Height = 360
    Visible = 0   'False
    TabIndex = 32
    BeginProperty Font
      Name = "Arial Black"
      Size = 8.25
      Charset = 0
      Weight = 900
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox txtCounter
    BackColor = &HC0FFC0&
    ForeColor = &HFF&
    Left = 6165
    Top = 7215
    Width = 450
    Height = 330
    Visible = 0   'False
    TabIndex = 31
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 3
    BackColor = &HC0FFFF&
    ForeColor = &HC000&
    Left = 900
    Top = 7215
    Width = 330
    Height = 315
    Visible = 0   'False
    Text = ":"
    TabIndex = 26
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
  Begin TextBox Text1
    Index = 2
    BackColor = &HFF8080&
    ForeColor = &H80000005&
    Left = 4770
    Top = 7230
    Width = 345
    Height = 315
    Visible = 0   'False
    Text = ":"
    TabIndex = 25
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
  Begin TextBox Text1
    Index = 1
    BackColor = &HFF8080&
    ForeColor = &HFF0000&
    Left = 3615
    Top = 7215
    Width = 330
    Height = 315
    Visible = 0   'False
    Text = ":"
    TabIndex = 24
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
  Begin TextBox Text1
    Index = 0
    BackColor = &HFF8080&
    ForeColor = &HFF&
    Left = 2250
    Top = 7215
    Width = 345
    Height = 315
    Visible = 0   'False
    Text = ":"
    TabIndex = 23
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
  Begin MSHFlexGrid FGrid1
    Left = 1080
    Top = 4290
    Width = 3480
    Height = 2805
    Visible = 0   'False
    TabIndex = 20
  End
  Begin CheckBox cmdSearch
    Caption = "  &Search Application"
    BackColor = &HFF8080&
    ForeColor = &H8000&
    Left = 4590
    Top = 5145
    Width = 2115
    Height = 525
    Visible = 0   'False
    TabIndex = 19
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CheckBox cmdLockALL
    Caption = " &Lock All Machine"
    BackColor = &HFF8080&
    ForeColor = &HC0&
    Left = 4590
    Top = 5625
    Width = 2115
    Height = 525
    Visible = 0   'False
    TabIndex = 18
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CheckBox cmdUnLockAll
    Caption = " &UnLock All Machine"
    BackColor = &HFF8080&
    ForeColor = &HFF0000&
    Left = 4590
    Top = 6090
    Width = 2115
    Height = 540
    Visible = 0   'False
    TabIndex = 17
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CheckBox cmdClose
    Caption = "Clo&se"
    BackColor = &HFF8080&
    ForeColor = &H0&
    Left = 4590
    Top = 6540
    Width = 2115
    Height = 525
    Visible = 0   'False
    TabIndex = 16
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin Frame Frame2
    Caption = "Frame2"
    Left = 600
    Top = 8085
    Width = 2220
    Height = 1890
    Visible = 0   'False
    TabIndex = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton cmdUnlock
      Caption = "&UnLock System"
      Left = 165
      Top = 1440
      Width = 1905
      Height = 375
      TabIndex = 15
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton LockBttn
      Caption = "L&ock System"
      Left = 165
      Top = 1035
      Width = 1905
      Height = 375
      TabIndex = 14
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton DisconnectCmd
      Caption = "&Disconnect"
      Left = 165
      Top = 630
      Width = 1905
      Height = 375
      TabIndex = 13
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton ConnectCmd
      Caption = "&Connect"
      Left = 165
      Top = 225
      Width = 1905
      Height = 375
      TabIndex = 12
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Shape Shape1
      BackColor = &H808080&
      BorderColor = &HC0C0C0&
      Left = 135
      Top = 180
      Width = 2025
      Height = 1710
      Shape = 4
      FillColor = &HC0C0C0&
      FillStyle = 0
    End
  End
  Begin Frame Frame3
    Caption = "Status"
    BackColor = &H8000000B&
    Left = 4695
    Top = 4260
    Width = 1905
    Height = 810
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
  End
  Begin DataGrid DGNewHelp
    Left = 9480
    Top = 6960
    Width = 4230
    Height = 2220
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 3
    Left = 9345
    Top = 5415
    Width = 3225
    Height = 255
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 2
    Left = 9345
    Top = 5145
    Width = 3225
    Height = 255
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 1
    Left = 6825
    Top = 8220
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 0
    BackColor = &H8000000E&
    ForeColor = &HC00000&
    Left = 5100
    Top = 1425
    Width = 2325
    Height = 450
    Enabled = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 11
    BeginProperty Font
      Name = "Arial Black"
      Size = 15.75
      Charset = 0
      Weight = 900
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGOldHelp
    Left = 9180
    Top = 6600
    Width = 4230
    Height = 2220
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin MSFlexGrid FGPoint
    Left = 7935
    Top = 4950
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 9
  End
  Begin Winsock sckControlPanel
    Index = 0
  End
  Begin TextBox txtHost
    Left = 480
    Top = 4755
    Width = 2040
    Height = 345
    Visible = 0   'False
    TabIndex = 21
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
  Begin TextBox txtStatus
    Left = 315
    Top = 5925
    Width = 3480
    Height = 345
    Visible = 0   'False
    TabIndex = 22
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
  Begin Winsock sckControlPanel
    Index = 1
  End
  Begin BtnEnh CmdExit
    Left = 6315
    Top = 2940
    Width = 2520
    Height = 945
    TabIndex = 36
  End
  Begin BtnEnh Cmd
    Left = 3285
    Top = 2880
    Width = 2520
    Height = 945
    TabIndex = 37
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 35
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
  Begin Shape Shape2
    BorderColor = &HFF&
    Left = 795
    Top = 7170
    Width = 5895
    Height = 450
    Visible = 0   'False
    BorderWidth = 2
  End
  Begin Label Label1
    Caption = "Not Active"
    Index = 2
    ForeColor = &HFFFF&
    Left = 5175
    Top = 7275
    Width = 975
    Height = 285
    Visible = 0   'False
    TabIndex = 30
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
  Begin Label Label1
    Caption = "Locked"
    Index = 1
    ForeColor = &HFFFF&
    Left = 4020
    Top = 7275
    Width = 885
    Height = 285
    Visible = 0   'False
    TabIndex = 29
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
  Begin Label Label1
    Caption = "UnLocked"
    Index = 0
    ForeColor = &HFFFF&
    Left = 2640
    Top = 7275
    Width = 885
    Height = 285
    Visible = 0   'False
    TabIndex = 28
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
  Begin Label Label1
    Caption = "Selected"
    Index = 3
    ForeColor = &HFFFF&
    Left = 1290
    Top = 7275
    Width = 870
    Height = 285
    Visible = 0   'False
    TabIndex = 27
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
    Caption = "New Name"
    Index = 1
    ForeColor = &H0&
    Left = 12180
    Top = 4695
    Width = 1005
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 6
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Old Name"
    Index = 0
    ForeColor = &H0&
    Left = 12180
    Top = 4365
    Width = 915
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lblDisplay
    Caption = "."
    ForeColor = &HFF&
    Left = 2430
    Top = 2100
    Width = 6285
    Height = 285
    TabIndex = 2
    Alignment = 2 'Center
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
End

Attribute VB_Name = "fdAcPostChrg"

Private MasterFormExit As Integer

Private Sub sckControlPanel_UnknownEvent_B 'EB0394
  'Data Table: 4F7A88
  Dim var_88 As CommandButton
  Dim var_8C As Winsock
  loc_EB0320: Me.ConnectCmd.Enabled = False
  loc_EB0334: Me.DisconnectCmd.Enabled = True
  loc_EB0349: Set var_88 = Me.sckControlPanel
  loc_EB034F: Call 0.Method_sckControlPanel_UnknownEvent_B0 (KeyCode, var_8C)
  loc_EB0377: Me.txtStatus.Text = " Connected with '" & CStr(var_8C.RemoteHostIP) & "'   "
  loc_EB0391: Exit Sub
End Sub

Private Sub sckControlPanel_UnknownEvent_D 'E8F2F0
  'Data Table: 4F7A88
  Dim var_8C As Winsock
  Dim var_88 As Variant
  loc_E8F286: Set var_88 = Me.sckControlPanel
  loc_E8F28C: Call 0.Method_sckControlPanel_UnknownEvent_D0 (KeyCode)
  loc_E8F2AD: If (CLng(CInt(var_8C.State)) <> &H2749) Then
  loc_E8F2BC:   Me.ConnectCmd.Enabled = True
  loc_E8F2D0:   Me.DisconnectCmd.Enabled = False
  loc_E8F2E5:   Me.txtStatus.Text = vbNullString
  loc_E8F2ED: End If
  loc_E8F2ED: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '118FCB4
  'Data Table: 4F7A88
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim Me As Recordset15
  Dim var_B4 As String
  Dim var_90 As Fields15
  loc_118F8D6: Set var_88 = Me.Txt
  loc_118F8DC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_118F8EA: Proc_6_74_E23240(var_8C)
  loc_118F905: Set var_88 = Me.Txt
  loc_118F90B: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_118F913: var_8C.SelStart = 0
  loc_118F92C: Set var_88 = Me.Txt
  loc_118F932: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_118F93A: var_94 = var_8C.Text
  loc_118F94D: Set var_90 = Me.Txt
  loc_118F953: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_118F95B: var_98.SelLength = Len(var_94)
  loc_118F971: var_9A = Index
  loc_118F97C: If (var_9A = CInt(3)) Then
  loc_118F996:   If (Me.RecordCount > 0) Then
  loc_118F9A4:     Set var_8C = Me.FGPoint
  loc_118F9BC:     Proc_6_137_1192FDC(Me.DGNewHelp, global_108, Index)
  loc_118F9CA:   End If
  loc_118FA18:   Set var_88 = Me.Txt
  loc_118FA1E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_118FA26:   var_8C = var_8C.Text
  loc_118FA3E:   If (var_9A Or (var_94 = vbNullString)) Then
  loc_118FA41:     Exit Sub
  loc_118FA42:   End If
  loc_118FA4F:   Set var_88 = Me.Txt
  loc_118FA55:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_118FA5D:   var_94 = var_8C.Text
  loc_118FA6F:   var_B4 = "Name"
  loc_118FAAA:   If CBool(CVar(var_94) <> Me.Fields.Item(var_B4).Value) Then
  loc_118FAB3:     Me.MoveFirst
  loc_118FAD6:     Set var_88 = Me.Txt
  loc_118FADC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_118FAE4:     0 = var_8C.Text
  loc_118FAFD:     Me.Find 1 & var_94 & "'", var_B4, var_8C
  loc_118FB12:   End If
  loc_118FB15: Else
  loc_118FB1D:   If (var_9A = CInt(2)) Then
  loc_118FB37:     If (Me.RecordCount > 0) Then
  loc_118FB45:       Set var_8C = Me.FGPoint
  loc_118FB5D:       Proc_6_137_1192FDC(Me.DGOldHelp, global_112)
  loc_118FB6B:     End If
  loc_118FBB9:     Set var_88 = Me.Txt
  loc_118FBBF:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_118FBC7:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_118FBDF:     If (Index Or (var_94 = vbNullString)) Then
  loc_118FBE2:       Exit Sub
  loc_118FBE3:     End If
  loc_118FBF0:     Set var_88 = Me.Txt
  loc_118FBF6:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_118FBFE:     var_94 = var_8C.Text
  loc_118FC10:     var_B4 = "Name"
  loc_118FC4B:     If CBool(CVar(var_94) <> Me.Fields.Item(var_B4).Value) Then
  loc_118FC54:       Me.MoveFirst
  loc_118FC77:       Set var_88 = Me.Txt
  loc_118FC7D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_118FC85:       0 = var_8C.Text
  loc_118FC9E:       Me.Find 1 & var_94 & "'", var_B4, var_8C
  loc_118FCB3:     End If
  loc_118FCB3:   End If
  loc_118FCB3: End If
  loc_118FCB3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10895DC
  'Data Table: 4F7A88
  Dim var_86 As Integer
  Dim Me As Recordset15
  loc_1089346: If (CLng(Shift) = &H1B) Then
  loc_1089349:   Call Proc_110_54_EB999C()
  loc_108934E:   Exit Sub
  loc_108934F: End If
  loc_1089352: var_86 = KeyCode
  loc_108935D: If (var_86 = CInt(3)) Then
  loc_108937D:   Set var_9C = Me.FGPoint
  loc_1089388:   Set var_98 = Nothing
  loc_10893B6:   Proc_6_69_134A630(Me.DGNewHelp, Me.Txt, KeyCode, global_108, Shift, 0)
  loc_1089425:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_108944B:     Proc_6_138_106E830(Me.DGNewHelp, global_108, KeyCode, Me.FGPoint, 1)
  loc_1089459:   End If
  loc_108945C: Else
  loc_1089464:   If (var_86 = CInt(2)) Then
  loc_1089484:     Set var_9C = Me.FGPoint
  loc_108948F:     Set var_98 = Nothing
  loc_10894BD:     Proc_6_69_134A630(Me.DGOldHelp, Me.Txt, KeyCode, global_112, Shift, 0, 1)
  loc_108952C:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1089533:       Set var_98 = Me.DGOldHelp
  loc_1089552:       Proc_6_138_106E830(var_98, global_112, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_1089560:     End If
  loc_1089560:   End If
  loc_1089560: End If
  loc_108959B: If ((CBool(Me.DGNewHelp.Visible) = 0) And (CBool(Me.DGOldHelp.Visible) = 0)) Then
  loc_10895A8:   If (CLng(Shift) = &H26) Then
  loc_10895B1:     Proc_6_76_E533C8(Shift, arg_14, 0, var_98)
  loc_10895B6:   End If
  loc_10895CB:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10895D4:     Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_10895D9:   End If
  loc_10895D9: End If
  loc_10895D9: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F6A04C
  'Data Table: 4F7A88
  Dim var_86 As Integer
  loc_F69F1B: var_86 = KeyAscii
  loc_F69F26: If (var_86 = CInt(3)) Then
  loc_F69F45:   If (CBool(Me.DGNewHelp.Visible) = &HFF) Then
  loc_F69F57:     var_A0 = "Name"
  loc_F69F72:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_108, arg_10)
  loc_F69FA4:     Proc_6_138_106E830(Me.DGNewHelp, global_108, KeyAscii, Me.FGPoint)
  loc_F69FB2:   End If
  loc_F69FB5: Else
  loc_F69FBD:   If (var_86 = CInt(2)) Then
  loc_F69FDC:     If (CBool(Me.DGOldHelp.Visible) = &HFF) Then
  loc_F6A009:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_112, arg_10, "Name")
  loc_F6A03B:       Proc_6_138_106E830(Me.DGOldHelp, global_112, KeyAscii, Me.FGPoint)
  loc_F6A049:     End If
  loc_F6A049:   End If
  loc_F6A049: End If
  loc_F6A049: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F95C
  'Data Table: 4F7A88
  loc_E4F93A: Set var_88 = Me.Txt
  loc_E4F940: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F94E: Proc_6_73_E23294(var_8C)
  loc_E4F95A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1112D94
  'Data Table: 4F7A88
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim var_A4 As TextBox
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_98 As String
  loc_1112A4F: var_8A = Cancel
  loc_1112A5A: If (var_8A = CInt(0)) Then
  loc_1112A6A:   Set var_90 = Me.Txt
  loc_1112A70:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1112A78:   var_98 = var_94.Text
  loc_1112A96:   Set var_A0 = Me.Txt
  loc_1112A9C:   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1112AA4:   var_A4.Text = Proc_6_34_14EEAAC(var_98)
  loc_1112ABE: Else
  loc_1112AC6:   If (var_8A = CInt(3)) Then
  loc_1112B17:     Set var_90 = Me.Txt
  loc_1112B1D:     Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_1112B25:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_1112B3D:     If (var_8A Or (var_98 = vbNullString)) Then
  loc_1112B4D:       Set var_90 = Me.Txt
  loc_1112B53:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1112B5B:       var_94.Tag = vbNullString
  loc_1112B67:       Exit Sub
  loc_1112B68:     End If
  loc_1112BA3:     Set var_A0 = Me.Txt
  loc_1112BA9:     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1112BB1:     var_A4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1112BE4:     var_94 = Me.Fields.Item("Code")
  loc_1112C02:     Set var_A0 = Me.Txt
  loc_1112C08:     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1112C10:     var_A4.Tag = CStr(var_94.Value)
  loc_1112C29:   Else
  loc_1112C31:     If (var_8A = CInt(2)) Then
  loc_1112C82:       Set var_90 = Me.Txt
  loc_1112C88:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1112CA8:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_1112CB8:         Set var_90 = Me.Txt
  loc_1112CBE:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1112CC6:         var_94.Tag = vbNullString
  loc_1112CD2:         Exit Sub
  loc_1112CD3:       End If
  loc_1112D0E:       Set var_A0 = Me.Txt
  loc_1112D14:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1112D1C:       var_A4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1112D6D:       Set var_A0 = Me.Txt
  loc_1112D73:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1112D7B:       var_A4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1112D91:     End If
  loc_1112D91:   End If
  loc_1112D91: End If
  loc_1112D91: Exit Sub
End Sub

Private Sub cmdShowHide_Click() 'F01688
  'Data Table: 4F7A88
  loc_F015C0: If (Me.cmdShowHide.Caption = "SHOW DETAILS") Then
  loc_F015D9:   Proc_6_23_DFC5B8(Me, 0)
  loc_F015E9:   Call 0.Method_MeC (CDbl(7000))
  loc_F015F6:   Call 0.Method_arg_74 (CDbl(4000))
  loc_F01603:   Call 0.Method_arg_7C (CDbl(1000))
  loc_F01615:   Me.cmdShowHide.Caption = "HIDE DETAILS"
  loc_F01620: Else
  loc_F01636:   Proc_6_23_DFC5B8(Me, 0)
  loc_F01646:   Call 0.Method_MeC (CDbl(2900), 0)
  loc_F01653:   Call 0.Method_Me4 (CDbl(6450))
  loc_F01660:   Call 0.Method_arg_74 (CDbl(4000))
  loc_F0166D:   Call 0.Method_arg_7C (CDbl(1000))
  loc_F0167F:   Me.cmdShowHide.Caption = "SHOW DETAILS"
  loc_F01687: End If
  loc_F01687: Exit Sub
End Sub

Private Sub ConnectCmd_Click() '1125934
  'Data Table: 4F7A88
  Dim var_88 As TextBox
  Dim var_110 As Variant
  Dim ConnectCmd_Click6 As Variant
  Dim ConnectCmd_Click0 As Variant
  Dim arg_1000 As Variant
  loc_11255D9: Me.txtStatus.Text = vbNullString
  loc_11255E1: On Error Goto loc_11258EE
  loc_11255F1: var_8C = Me.txtHost.Text
  loc_1125627: If (Trim(var_8C) = vbNullString) Then
  loc_1125643:   MsgBox("Please enter correct Remote Computer's Name or IP Address.", &H40, var_CC, var_EC, var_10C)
  loc_1125659:   global_120 = vbNullString
  loc_112565D:   Exit Sub
  loc_112565E: End If
  loc_1125667: Set var_88 = Me.sckControlPanel
  loc_112566D: Call 0.Method_ConnectCmd_Click0 (0)
  loc_112568A: If (CInt(var_110.State) > 0) Then
  loc_1125696:   Set var_88 = Me.sckControlPanel
  loc_112569C:   Call 0.Method_ConnectCmd_Click0 (0, var_110)
  loc_11256BD:   If (CLng(CInt(var_110.State)) <> &H2749) Then
  loc_11256C9:     Set var_88 = Me.sckControlPanel
  loc_11256CF:     Call 0.Method_ConnectCmd_Click0 (0, var_110)
  loc_11256D7:     ConnectCmd_Click6 = var_110._RemoteHost
  loc_11256E6:   End If
  loc_11256E6: End If
  loc_11256EF: Set var_88 = Me.sckControlPanel
  loc_11256F5: Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_1125712: If (CInt(var_110.State) > 0) Then
  loc_112571E:   Set var_88 = Me.sckControlPanel
  loc_1125724:   Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_1125745:   If (CLng(CInt(var_110.State)) <> &H2749) Then
  loc_1125751:     Set var_88 = Me.sckControlPanel
  loc_1125757:     Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_112575F:     ConnectCmd_Click6 = var_110._RemoteHost
  loc_112576E:   End If
  loc_112576E: End If
  loc_1125779: Set var_88 = Me.optLockType
  loc_112577F: Call 0.Method_ConnectCmd_Click0 (0, var_110, &HFF)
  loc_1125787: var_110.Value = ConnectCmd_Click6
  loc_11257A6: Set var_88 = Me.sckControlPanel
  loc_11257AC: Call 0.Method_ConnectCmd_Click0 (0, var_110, global_120)
  loc_11257B4: var_110.RemoteHost = ConnectCmd_Click6
  loc_11257D2: Set var_88 = Me.sckControlPanel
  loc_11257D8: Call 0.Method_ConnectCmd_Click0 (0, var_110)
  loc_11257E0: var_110.RemotePort = &H1F44
  loc_11257F5: Set var_88 = Me.sckControlPanel
  loc_11257FB: Call 0.Method_ConnectCmd_Click0 (0, var_110)
  loc_1125803: ConnectCmd_Click0 = var_110._RemoteHost
  loc_112581F: Proc_96_21_E587E0(0.2, ConnectCmd_Click0)
  loc_1125846: If (Trim(CVar(Me.txtStatus)) = vbNullString) Then
  loc_1125854:   Set var_88 = Me.optLockType
  loc_112585A:   Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_1125862:   var_110.Value = True
  loc_1125881:   Set var_88 = Me.sckControlPanel
  loc_1125887:   Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_112588F:   var_110.RemoteHost = global_120
  loc_11258AD:   Set var_88 = Me.sckControlPanel
  loc_11258B3:   Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_11258BB:   var_110.RemotePort = &H1F45
  loc_11258D0:   Set var_88 = Me.sckControlPanel
  loc_11258D6:   Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_11258DE:   ConnectCmd_Click0 = var_110._RemoteHost
  loc_11258ED: End If
  loc_11258ED: Exit Sub
  loc_11258EE: ' Referenced from: 11255E1
  loc_11258F6: Set var_88 = Err()
  loc_11258FC: Call 0.Method_arg_2C (var_8C, ConnectCmd_Click0)
  loc_112591D: MsgBox(CVar(var_8C), &H10, "Connection Error ...", var_EC, var_10C)
  loc_1125930: Exit Sub
  loc_1125931: arg_1000 = StrComp(, , var_110)
End Sub

Private Sub DisconnectCmd_Click() 'E16930
  'Data Table: 4F7A88
  loc_E16924: Me.ConnectCmd.Enabled = True
  loc_E1692C: Exit Sub
End Sub

Private Sub txtStatus_Change() 'F92A44
  'Data Table: 4F7A88
  Dim var_B4 As Variant
  Dim var_C8 As MSHFlexGrid
  Dim var_DC As Variant
  Dim var_F0 As Long
  Dim var_A4 As Variant
  loc_F928FE: If CBool(Trim(CVar(Me.txtStatus)) <> vbNullString) Then
  loc_F9291D:   Set var_DC = Me.FGrid1
  loc_F92923:   var_DC.Row = CVar(CLng(Me.FGrid1.RowSel))
  loc_F92945:   Me.FGrid1.Col = 0
  loc_F92960:   Me.FGrid1.CellForeColor = &HFF
  loc_F92976:   Me.FGrid1.CellFontBold = True
  loc_F9298A:   Set var_C8 = Me.optLockType
  loc_F92990:   Call 0.Method_txtStatus_Change0 (0, var_DC)
  loc_F929AA:   If (var_DC.Value = &HFF) Then
  loc_F929C0:     var_B4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_F929C5:     var_F0 = 2
  loc_F929D2:     var_A4 = CVar(CStr(0)) 'String
  loc_F929DA:     Set var_DC = Me.FGrid1
  loc_F929E0:     LateIdCallSt
  loc_F929F9:   Else
  loc_F92A0C:     var_B4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_F92A11:     var_F0 = 2
  loc_F92A1E:     var_A4 = CVar(CStr(1)) 'String
  loc_F92A26:     Set var_DC = Me.FGrid1
  loc_F92A2C:     LateIdCallSt
  loc_F92A42:   End If
  loc_F92A42: End If
  loc_F92A42: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E164BC
  'Data Table: 4F7A88
  loc_E164B1: Me.Global.Unload Me
  loc_E164B9: Exit Sub
End Sub

Private Sub Form_Load() '11E8E48
  'Data Table: 4F7A88
  Dim var_88 As Variant
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim MemVar_1F966B0 As Long
  Dim var_A4 As Long
  Dim var_A0 As Long
  Dim var_A8 As TextBox
  Dim unk_4F7A9C As Connection15
  Dim var_D4 As TextBox
  Dim var_BC As Variant
  Dim var_D0 As DataGrid
  loc_11E89BF: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11E89D0: Me.txtHost.Visible = False
  loc_11E89E4: Me.txtStatus.Visible = False
  loc_11E89F8: Me.Frame2.Visible = False
  loc_11E8A03: var_96 = 3500
  loc_11E8A09: var_98 = 1500
  loc_11E8A13: For var_9C = 0 To &H32: var_92 = var_9C 'Integer
  loc_11E8A25:   Call 0.Method_arg_6C (RGB(&H32, 0, 0), 0)
  loc_11E8A30:   var_96 = (var_96 - 1)
  loc_11E8A39:   var_98 = (var_98 - 1)
  loc_11E8A42:   Call 0.Method_arg_E4 (CDbl(var_96), var_98, var_96)
  loc_11E8A4D:   Call 0.Method_arg_EC (CDbl(var_98), var_98)
  loc_11E8A58:   Print Me, "For Date :"
  loc_11E8A61: Next var_9C 'Integer
  loc_11E8A73: Call 0.Method_arg_6C (RGB(250, 0, 0))
  loc_11E8A7E: Call 0.Method_arg_E4 (CDbl(var_96))
  loc_11E8A89: Call 0.Method_arg_EC (CDbl(var_98))
  loc_11E8A94: Print Me, "For Date :"
  loc_11E8A9A: On Error Goto loc_11E8E3F
  loc_11E8AA2: MemVar_1F966B0 = -1
  loc_11E8AEC: SetWindowRgn(Me.cmdSearch.hWnd, CreateRoundRectRgn(5, 4, &H8C, &H1E, &H12, &H1E), &HFF)
  loc_11E8B3C: SetWindowRgn(Me.cmdLockALL.hWnd, CreateRoundRectRgn(5, 4, &H8C, &H1E, &H12, &H1E), &HFF)
  loc_11E8B8C: SetWindowRgn(Me.cmdUnLockAll.hWnd, CreateRoundRectRgn(5, 4, &H8C, &H1E, &H12, &H1E), &HFF)
  loc_11E8BBF: var_A0 = CreateRoundRectRgn(5, 4, &H8C, &H1E, &H12, &H1E)
  loc_11E8BCF: var_A4 = Me.cmdClose.hWnd
  loc_11E8BDC: SetWindowRgn(var_A4, var_A0, &HFF)
  loc_11E8BF1: Me.DisconnectCmd.Enabled = False
  loc_11E8BF9: Call Ini_Grid()
  loc_11E8C17: Call 0.Method_Form_Load0 (CInt(0), var_A8, CStr(MemVar_1F950EC), var_A0, var_A4, var_A0)
  loc_11E8C1F: var_A8.Text = var_A4
  loc_11E8C44: unk_4F7A9C.Execute "SELECT Code,Name FROM ItemMast Where Type IN ('Semi Finish','Consumables','Raw Material','Store Item') ORDER BY Name", var_CC, -1
  loc_11E8C6C: CVarUnk
  loc_11E8C71: VerifyVarObj
  loc_11E8C7D: LateIdStAd
  loc_11E8C99: Set var_D0 = Me.Txt
  loc_11E8C9F: Call 0.Method_Form_Load0 (CInt(3), var_D4, var_D8, Me.DGNewHelp, Me.Txt, Me.DGNewHelp)
  loc_11E8CA7: var_A0 = var_D4.Height
  loc_11E8CBA: Set var_88 = Me.Txt
  loc_11E8CC0: Call 0.Method_Form_Load0 (CInt(3), var_A8, var_A4, var_A4)
  loc_11E8CC8: var_A0 = var_A8.Top
  loc_11E8CD4: var_BC = CVar((var_A4 + var_D8)) 'Single
  loc_11E8CE3: Me.DGNewHelp.Top = var_BC
  loc_11E8D09: Call 0.Method_Form_Load0 (CInt(3), var_A8, var_A4)
  loc_11E8D11: var_A4 = var_A8.Left
  loc_11E8D28: Me.DGNewHelp.Left = CVar(var_A4)
  loc_11E8D4C: unk_4F7A9C.Execute "SELECT Code,Name FROM ItemMast Where Type IN ('Semi Finish','Consumables','Raw Material','Store Item') ORDER BY Name", var_CC, -1
  loc_11E8D5D: Set global_112 = Me.Txt
  loc_11E8D74: CVarUnk
  loc_11E8D79: VerifyVarObj
  loc_11E8D85: LateIdStAd
  loc_11E8DA1: Set var_D0 = Me.Txt
  loc_11E8DA7: Call 0.Method_Form_Load0 (CInt(2), var_D4, var_D8, Me.DGOldHelp)
  loc_11E8DAF: global_112 = var_D4.Height
  loc_11E8DC2: Set var_88 = Me.Txt
  loc_11E8DC8: Call 0.Method_Form_Load0 (CInt(2), var_A8, var_A4)
  loc_11E8DD0: var_88 = var_A8.Top
  loc_11E8DDC: var_BC = CVar((var_A4 + var_D8)) 'Single
  loc_11E8DEB: Me.DGOldHelp.Top = CVar(var_A4)
  loc_11E8E0B: Set var_88 = Me.Txt
  loc_11E8E11: Call 0.Method_Form_Load0 (CInt(2), var_A8)
  loc_11E8E30: Me.DGOldHelp.Left = CVar(var_A8.Left)
  loc_11E8E3E: Exit Sub
  loc_11E8E3F: ' Referenced from: 11E8A9A
  loc_11E8E3F: Proc_6_60_E63754(MemVar_1F966B0)
  loc_11E8E44: Exit Sub
End Sub

Private Sub Form_Resize() 'E774AC
  'Data Table: 4F7A88
  loc_E77456: Call 0.Method_arg_50 (var_88)
  loc_E77468: Me.LblFormCaption.Caption = var_88
  loc_E77481: Me.LblFormCaption.Left = CDbl(0)
  loc_E7748F: Call 0.Method_arg_100 (var_90)
  loc_E774A1: Me.LblFormCaption.Width = var_90
  loc_E774A9: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E01018
  'Data Table: 4F7A88
  loc_E01011: MasterFormExit = 0
  loc_E01014: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5AC3C
  'Data Table: 4F7A88
  loc_E5AC04: Set var_88 = Me.TopCtrl1
  loc_E5AC0A: Call {CE773922-CF2A-4FC3-832E247C4CE6EC59}.DispID_68030005()
  loc_E5AC2D: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5AC35:   Call Form_Unload(&HFF)
  loc_E5AC3A: End If
  loc_E5AC3A: Exit Sub
End Sub

Private Sub Form_Activate() 'E76F70
  'Data Table: 4F7A88
  Dim var_90 As OptionButton
  loc_E76F1C: On Error Goto loc_E76F67
  loc_E76F2A: Set var_8C = Me.optLockType
  loc_E76F30: Call 0.Method_Form_Activate0 (1, var_90)
  loc_E76F38: var_90.Value = True
  loc_E76F48: Set var_8C = Me.TopCtrl1
  loc_E76F4E: Call {CE773922-CF2A-4FC3-832E247C4CE6EC59}.DispID_68030000()
  loc_E76F63: If (CLng(CInt()) = &H2D) Then
  loc_E76F66: End If
  loc_E76F66: Exit Sub
  loc_E76F67: ' Referenced from: E76F1C
  loc_E76F67: Proc_6_60_E63754()
  loc_E76F6C: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25F1C
  'Data Table: 4F7A88
  loc_E25F01: If (MasterFormExit = &HFF) Then
  loc_E25F11:   Me.Global.Unload Me
  loc_E25F19: End If
  loc_E25F19: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E62848
  'Data Table: 4F7A88
  loc_E627FC: On Error Goto loc_E6283F
  loc_E62809: If (CLng(KeyCode) = &H1B) Then
  loc_E62819:   Me.Global.Unload Me
  loc_E62821:   Exit Sub
  loc_E62822: End If
  loc_E62836: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E6283E: Exit Sub
  loc_E6283F: ' Referenced from: E627FC
  loc_E6283F: Proc_6_60_E63754(Shift)
  loc_E62844: Exit Sub
End Sub

Private Sub LockBttn_Click() 'EECE18
  'Data Table: 4F7A88
  Dim var_BC As Variant
  Dim var_EC As Long
  loc_EECD95: If CBool(Trim(CVar(Me.txtStatus.Text)) <> vbNullString) Then
  loc_EECDAB:   var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_EECDB0:   var_EC = 2
  loc_EECDEA:   Set var_104 = Me.sckControlPanel
  loc_EECDF0:   Call 0.Method_LockBttn_Click0 (CInt(Val(CStr(Me.FGrid1.TextMatrix)))), var_108, "LockSystem#")
  loc_EECE15: End If
  loc_EECE15: Exit Sub
  loc_EECE16: Set arg_1000 = sckControlPanel.DispID_10000
End Sub

Private Sub cmdUnlock_Click() 'EED340
  'Data Table: 4F7A88
  Dim var_BC As Variant
  Dim var_EC As Long
  Dim arg_10FC As Boolean
  loc_EED2BD: If CBool(Trim(CVar(Me.txtStatus.Text)) <> vbNullString) Then
  loc_EED2D3:   var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_EED2D8:   var_EC = 2
  loc_EED312:   Set var_104 = Me.sckControlPanel
  loc_EED318:   Call 0.Method_cmdUnlock_Click0 (CInt(Val(CStr(Me.FGrid1.TextMatrix)))), var_108, "UnLockSystem#")
  loc_EED33D: End If
  loc_EED33D: Exit Sub
  loc_EED33E: arg_10FC = True
End Sub

Private Sub cmdSearch_Click() 'F71F58
  'Data Table: 4F7A88
  Dim var_8C As Variant
  loc_F71E2F: If (Me.cmdSearch.Value = 1) Then
  loc_F71E3E:   Me.cmdSearch.Value = 0
  loc_F71E6B:   For var_A4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F71E84:     Me.FGrid1.Row = CVar(CLng(var_86))
  loc_F71E9F:     Me.FGrid1.Col = 1
  loc_F71EAB:     Set var_8C = Me.FGrid1
  loc_F71EF0:     Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_F71F0E:     Me.ConnectCmd.Enabled = True
  loc_F71F22:     Me.DisconnectCmd.Enabled = False
  loc_F71F2A:     Call ConnectCmd_Click()
  loc_F71F36:     Proc_96_21_E587E0(CDbl(1), 1, CVar(CLng(var_86)))
  loc_F71F3E:   Next var_A4 'Integer
  loc_F71F43: End If
  loc_F71F4F: Me.cmdLockALL.Enabled = True
  loc_F71F57: Exit Sub
End Sub

Private Sub cmdSearch_GotFocus() 'E2EC28
  'Data Table: 4F7A88
  loc_E2EC08: Me.cmdSearch.FontBold = True
  loc_E2EC1E: Me.cmdSearch.FontSize = CDbl(9)
  loc_E2EC26: Exit Sub
End Sub

Private Sub cmdSearch_LostFocus() 'E2EC88
  'Data Table: 4F7A88
  loc_E2EC68: Me.cmdSearch.FontBold = False
  loc_E2EC7E: Me.cmdSearch.FontSize = CDbl(&HA)
  loc_E2EC86: Exit Sub
End Sub

Private Sub cmdUnLockAll_Click() 'FB435C
  'Data Table: 4F7A88
  Dim var_8C As Variant
  Dim var_B4 As Variant
  loc_FB41D7: If (Me.cmdUnLockAll.Value = 1) Then
  loc_FB41E6:   Me.cmdUnLockAll.Value = 0
  loc_FB4213:   For var_A4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_A4 'Integer
  loc_FB422C:     Me.FGrid1.Row = CVar(CLng(var_86))
  loc_FB4247:     Me.FGrid1.Col = 1
  loc_FB4253:     Set var_8C = Me.FGrid1
  loc_FB4268:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_FB4298:     Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_FB42AA:     var_B4 = 0
  loc_FB42BD:     Me.FGrid1.Col = var_B4
  loc_FB4306:     If ((CLng(Me.FGrid1.CellForeColor) = &HFF0000) Or (CLng(Me.FGrid1.CellForeColor) = &HFF)) Then
  loc_FB4309:       Call ConnectCmd_Click()
  loc_FB431B:       Proc_96_21_E587E0(0.2, 1, var_B4)
  loc_FB4320:       Call cmdUnlock_Click()
  loc_FB4332:       Proc_96_21_E587E0(0.2, FGrid1.DispID_8001)
  loc_FB434A:       Me.FGrid1.CellForeColor = &HFF
  loc_FB4352:     End If
  loc_FB4355:   Next var_A4 'Integer
  loc_FB435A: End If
  loc_FB435A: Exit Sub
End Sub

Private Sub cmdUnLockAll_GotFocus() 'E2EE68
  'Data Table: 4F7A88
  loc_E2EE48: Me.cmdUnLockAll.FontBold = True
  loc_E2EE5E: Me.cmdUnLockAll.FontSize = CDbl(9)
  loc_E2EE66: Exit Sub
End Sub

Private Sub cmdUnLockAll_LostFocus() 'E2EEC8
  'Data Table: 4F7A88
  loc_E2EEA8: Me.cmdUnLockAll.FontBold = False
  loc_E2EEBE: Me.cmdUnLockAll.FontSize = CDbl(&HA)
  loc_E2EEC6: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 '10FCE10
  'Data Table: 4F7A88
  Dim var_9C As Variant
  Dim var_124 As String
  Dim var_C0 As Variant
  Dim var_98 As Variant
  Dim unk_4F7A9C As Connection15
  Dim var_88 As Recordset15
  Dim var_94 As Double
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_1A8 As Variant
  Dim var_120 As Variant
  loc_10FCB0C: Set var_98 = Me.Txt
  loc_10FCB12: Call 0.Method_Cmd_UnknownEvent_90 (0, var_9C)
  loc_10FCB32: If (MemVar_1F950EC <> CDate(var_9C.Text)) Then
  loc_10FCB4E:   MsgBox("Check Audit Date or Contact to Your Administrator", &H10, var_E0, var_100, var_120)
  loc_10FCB5E:   Exit Sub
  loc_10FCB5F: End If
  loc_10FCB7B: var_124 = "This Process is very critical" & vbCrLf & "Make sure that all the billings are stopped and no transactions have been made during Night Audit process."
  loc_10FCBAB: If (MsgBox(CVar(var_124 & vbCrLf & "Continue with Night Audit Process ?"), &H14, var_E0, var_100, var_120) <> 6) Then
  loc_10FCBAE:   Exit Sub
  loc_10FCBAF: End If
  loc_10FCBBB: var_C0 = "Night Audit for Date :" & CDate(MemVar_1F950EC) 
  loc_10FCBCD: Me.lblDisplay.Caption = CStr(var_C0)
  loc_10FCBDF: Set var_98 = Me.lblDisplay
  loc_10FCBE5: var_98.Refresh
  loc_10FCC11: unk_4F7A9C.Execute "Select PostingType,NoShowAtNightAudit from Enviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_C0, -1
  loc_10FCC1C: Set var_88 = var_98
  loc_10FCC3B: var_98 = var_88.Fields
  loc_10FCC65: If (Proc_6_38_E69628(CVar(var_98.Item("NoShowAtNightAudit"))) = "Yes") Then
  loc_10FCC68:   Proc_96_48_EFAFD0(var_98)
  loc_10FCC6D: End If
  loc_10FCC70: var_94 = MemVar_1F950EC
  loc_10FCC85: var_98 = var_88.Fields
  loc_10FCC95: var_C0 = var_98.Item("PostingType").Value
  loc_10FCCAF: If (var_C0 = "Daily Bill wise Posting") Then
  loc_10FCCC3:   Proc_96_14_1F8478C(var_94, 0)
  loc_10FCCCE: Else
  loc_10FCCD1:   Proc_96_16_1F4A508(var_94, var_8A)
  loc_10FCCD6: End If
  loc_10FCCDF: If (CInt(var_8A) = 2) Then
  loc_10FCCFF:   Proc_6_7_F26918(var_C0, var_94, "Update JobScheduledDetail Set JobEnabled=1,JobScheduledOn=", var_1C8)
  loc_10FCD07:   var_E0 = -1 & var_C0 
  loc_10FCD1F:   Proc_6_17_EAAE40(var_120, MemVar_1F95078, var_E0 & " From JobSchedule JS Inner Join JobScheduledDetail JD On JS.Schedule_Id=JD.Schedule_Id Where JS.LogSite_Code=")
  loc_10FCD3F:   Proc_6_7_F26918(var_178, var_94)
  loc_10FCD50:   var_1A8 = var_98 & var_120 & " And " & var_178 & " Between JS.ScheduleStartDate And JS.ScheduleEndDate And JS.ScheduleEnabled=1 And [Event] Like '%<Night Audit>%'" 
  loc_10FCD5E:   unk_4F7A9C.Execute CStr(var_1A8), var_94, 
  loc_10FCD80: End If
  loc_10FCD8D: Me.lblDisplay.Caption = "Night Audit Completed.."
  loc_10FCD9F: Me.lblDisplay.Refresh
  loc_10FCDB4: Me.Global.Unload Me
  loc_10FCDC5: var_110 = (CInt(var_8A) = 2)
  loc_10FCE0A: If CBool(1 And (Format(var_94, "dd/MMM") <> "31/Mar")) Then
  loc_10FCE0D:   End
  loc_10FCE0F: End If
  loc_10FCE0F: Exit Sub
End Sub

Private Sub cmdLockALL_Click() '12A752C
  'Data Table: 4F7A88
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Long
  loc_12A6F2F: If (Me.cmdLockALL.Value = 1) Then
  loc_12A6F3E:   Me.cmdLockALL.Value = 0
  loc_12A6F6B:   For var_A4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_A4 'Integer
  loc_12A6F84:     Me.FGrid1.Row = CVar(CLng(var_86))
  loc_12A6F9F:     Me.FGrid1.Col = 1
  loc_12A6FAB:     Set var_8C = Me.FGrid1
  loc_12A6FC0:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_12A6FF0:     Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_12A7002:     var_B4 = 0
  loc_12A7015:     Me.FGrid1.Col = var_B4
  loc_12A703C:     If (CLng(Me.FGrid1.CellForeColor) = &HFF) Then
  loc_12A703F:       Call ConnectCmd_Click()
  loc_12A7051:       Proc_96_21_E587E0(0.3, 1, var_B4)
  loc_12A708B:       If CBool(Trim(CVar(Me.txtStatus.Text)) <> vbNullString) Then
  loc_12A70A1:         var_B4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_12A70A6:         var_D4 = 2
  loc_12A70E0:         Set var_118 = Me.sckControlPanel
  loc_12A70E6:         Call 0.Method_cmdLockALL_Click0 (CInt(Val(CStr(Me.FGrid1.TextMatrix)))), var_11C, "LockMessage#", Val(CStr(Me.FGrid1.TextMatrix))))
  loc_12A710B:       End If
  loc_12A7118:       Proc_96_21_E587E0(0.2, sckControlPanel.DispID_10000, var_D4)
  loc_12A7130:       Me.FGrid1.CellForeColor = &HFF
  loc_12A7138:     End If
  loc_12A713B:   Next var_A4 'Integer
  loc_12A7149:   For var_140 = &H3C To 1 Step &HFF: var_86 = var_140 'Integer
  loc_12A7161:     Me.txtCounter.Text = CStr(var_86)
  loc_12A7173:     Proc_96_21_E587E0(CDbl(1))
  loc_12A717B:   Next var_140 'Integer
  loc_12A71B7:   If (MsgBox("Are You Sure Lock All Application?", &H14, "Night Audit...", var_114, var_150) = 7) Then
  loc_12A71DF:     For var_154 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_154 'Integer
  loc_12A71F8:       Me.FGrid1.Row = CVar(CLng(var_86))
  loc_12A7213:       Me.FGrid1.Col = 1
  loc_12A721F:       Set var_8C = Me.FGrid1
  loc_12A7234:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_12A7264:       Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_12A7276:       var_B4 = 0
  loc_12A7289:       Me.FGrid1.Col = var_B4
  loc_12A72B0:       If (CLng(Me.FGrid1.CellForeColor) = &HFF) Then
  loc_12A72B3:         Call ConnectCmd_Click()
  loc_12A72C5:         Proc_96_21_E587E0(0.2, 1, var_B4)
  loc_12A72FF:         If CBool(Trim(CVar(Me.txtStatus.Text)) <> vbNullString) Then
  loc_12A7315:           var_B4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_12A731A:           var_D4 = 2
  loc_12A7354:           Set var_118 = Me.sckControlPanel
  loc_12A735A:           Call 0.Method_cmdLockALL_Click0 (CInt(Val(CStr(Me.FGrid1.TextMatrix)))), var_11C, "LockClose#", Val(CStr(Me.FGrid1.TextMatrix))))
  loc_12A737F:         End If
  loc_12A738C:         Proc_96_21_E587E0(0.2, sckControlPanel.DispID_10000, var_D4)
  loc_12A73A4:         Me.FGrid1.CellForeColor = &HFF
  loc_12A73AC:       End If
  loc_12A73AF:     Next var_154 'Integer
  loc_12A73B7:   Else
  loc_12A73DC:     For var_158 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_86 = var_158 'Integer
  loc_12A73F5:       Me.FGrid1.Row = CVar(CLng(var_86))
  loc_12A7410:       Me.FGrid1.Col = 1
  loc_12A741C:       Set var_8C = Me.FGrid1
  loc_12A7431:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_12A7461:       Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_12A7473:       var_B4 = 0
  loc_12A7486:       Me.FGrid1.Col = var_B4
  loc_12A74AD:       If (CLng(Me.FGrid1.CellForeColor) = &HFF) Then
  loc_12A74B0:         Call ConnectCmd_Click()
  loc_12A74C2:         Proc_96_21_E587E0(0.2, 1, var_B4)
  loc_12A74C7:         Call LockBttn_Click()
  loc_12A74D9:         Proc_96_21_E587E0(0.2, FGrid1.DispID_8001)
  loc_12A74F1:         Me.FGrid1.CellForeColor = &HFF0000
  loc_12A74F9:       End If
  loc_12A74FC:     Next var_158 'Integer
  loc_12A7501:   End If
  loc_12A7501: End If
  loc_12A750D: Me.cmdLockALL.Enabled = False
  loc_12A7521: Me.cmdUnLockAll.Enabled = True
  loc_12A7529: Exit Sub
End Sub

Private Sub cmdLockALL_GotFocus() 'E2EB68
  'Data Table: 4F7A88
  loc_E2EB48: Me.cmdLockALL.FontBold = True
  loc_E2EB5E: Me.cmdLockALL.FontSize = CDbl(9)
  loc_E2EB66: Exit Sub
End Sub

Private Sub cmdLockALL_LostFocus() 'E2EBC8
  'Data Table: 4F7A88
  loc_E2EBA8: Me.cmdLockALL.FontBold = False
  loc_E2EBBE: Me.cmdLockALL.FontSize = CDbl(&HA)
  loc_E2EBC6: Exit Sub
End Sub

Private Sub CmdClose_Click() 'E1684C
  'Data Table: 4F7A88
  loc_E16841: Me.Global.Unload Me
  loc_E16849: Exit Sub
End Sub

Private Sub CmdClose_GotFocus() 'E2EAA8
  'Data Table: 4F7A88
  loc_E2EA88: Me.cmdClose.FontBold = True
  loc_E2EA9E: Me.cmdClose.FontSize = CDbl(9)
  loc_E2EAA6: Exit Sub
End Sub

Private Sub CmdClose_LostFocus() 'E2EB08
  'Data Table: 4F7A88
  loc_E2EAE8: Me.cmdClose.FontBold = False
  loc_E2EAFE: Me.cmdClose.FontSize = CDbl(&HA)
  loc_E2EB06: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'F31D3C
  'Data Table: 4F7A88
  Dim var_A4 As TextBox
  Dim unk_4F7A9C As Connection15
  loc_F31C38: On Error Goto loc_F31CE9
  loc_F31C51: Set var_A0 = Me.Txt
  loc_F31C57: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_A4)
  loc_F31C5F: var_A8 = var_A4.Text
  loc_F31C77: var_D8 = DateAdd("d", CDbl(1), CDate(CDate(var_A8)))
  loc_F31C92: If CBool(CDate(MemVar_1F950EC) <> var_D8) Then
  loc_F31CAE:   MsgBox("Invalid Date Contact to your Administrator", 0, var_D8, var_F8, var_128)
  loc_F31CBE:   Exit Sub
  loc_F31CBF: End If
  loc_F31CC8: unk_4F7A9C.BeginTrans var_12C
  loc_F31CD1: var_86 = CByte(1) 'Byte
  loc_F31CDB: unk_4F7A9C.CommitTrans
  loc_F31CE4: var_86 = CByte(0) 'Byte
  loc_F31CE8: Exit Sub
  loc_F31CE9: ' Referenced from: F31C38
  loc_F31CF2: If (CInt(var_86) = 1) Then
  loc_F31CFB:   unk_4F7A9C.RollbackTrans
  loc_F31D00: End If
  loc_F31D08: Set var_A0 = Err()
  loc_F31D0E: Call 0.Method_arg_2C (var_A8)
  loc_F31D27: MsgBox(CVar(var_A8), &H10, var_D8, var_F8, var_128)
  loc_F31D3A: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'EB435C
  'Data Table: 4F7A88
  Dim var_A8 As Variant
  Dim arg_2CFF As Double
  loc_EB42E3: var_A8 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_EB4313: Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_EB4337: Me.ConnectCmd.Enabled = True
  loc_EB434B: Me.DisconnectCmd.Enabled = False
  loc_EB4353: Call ConnectCmd_Click()
  loc_EB4358: Exit Sub
  loc_EB4359: arg_2CFF = 1
End Sub

Public Function MasterFormExitGet() '4F8FB8
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4F8FC7
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '4F8FD6
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '4F8FE5
  mVType = Value
End Sub

Public Function VnoRCGet() '4F8FF4
  VnoRCGet = VnoRC
End Function

Public Sub VnoRCPut(Value) '4F9003
  VnoRC = Value
End Sub

Public Function VnoRTGet() '4F9012
  VnoRTGet = VnoRT
End Function

Public Sub VnoRTPut(Value) '4F9021
  VnoRT = Value
End Sub

Public Function vPrefixGet() '4F9030
  vPrefixGet = vPrefix
End Function

Public Sub vPrefixPut(Value) '4F903F
  vPrefix = Value
End Sub

Public Function VprefixRCGet() '4F904E
  VprefixRCGet = VprefixRC
End Function

Public Sub VprefixRCPut(Value) '4F905D
  VprefixRC = Value
End Sub

Public Function VprefixRTGet() '4F906C
  VprefixRTGet = VprefixRT
End Function

Public Sub VprefixRTPut(Value) '4F907B
  VprefixRT = Value
End Sub

Public Function DocIDGet() '4F908A
  DocIDGet = DocID
End Function

Public Sub DocIDPut(Value) '4F9099
  DocID = Value
End Sub

Public Sub Ini_Grid() 'ED524C
  'Data Table: 4F7A88
  Dim var_98 As Long
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Long
  Dim var_D8 As String
  loc_ED51A3: Me.FGrid1.Cols = 3
  loc_ED51A8: var_98 = 0
  loc_ED51B1: var_B8 = &H190
  loc_ED51BD: LateIdCallSt
  loc_ED51C5: var_98 = 1
  loc_ED51CE: var_B8 = &HABE
  loc_ED51DA: LateIdCallSt
  loc_ED51E2: var_98 = 2
  loc_ED51EB: var_B8 = 0
  loc_ED51F7: LateIdCallSt
  loc_ED51FF: var_98 = 0
  loc_ED5208: var_B8 = 0
  loc_ED5211: var_D8 = vbNullString
  loc_ED521A: LateIdCallSt
  loc_ED5222: var_98 = 0
  loc_ED522B: var_B8 = 1
  loc_ED5234: var_D8 = "List of Remote Machine"
  loc_ED523D: LateIdCallSt
  loc_ED5247: Set var_88 = Nothing 
  loc_ED524B: Exit Sub
End Sub

Public Sub Proc_110_53_11B4648(arg_C) '11B4648
  'Data Table: 4F7A88
  Dim var_8C As Recordset15
  loc_11B4201: Set var_8C = arg_C 
  loc_11B4229: var_8C.Fields.Append "DocId", &H81, &H15
  loc_11B4255: var_8C.Fields.Append "V_DATE", 7, 0
  loc_11B4281: var_8C.Fields.Append "V_TYPE", &H81, 5
  loc_11B42AD: var_8C.Fields.Append "V_PREFIX", &H81, 5
  loc_11B42D9: var_8C.Fields.Append "SiteCode", &H81, 2
  loc_11B4305: var_8C.Fields.Append "V_NO", 3, &HB
  loc_11B4331: var_8C.Fields.Append "GuestProf", &H81, 8
  loc_11B435D: var_8C.Fields.Append "Comp_Code", &H81, 8
  loc_11B4389: var_8C.Fields.Append "RoomChargeAc", &H81, 8
  loc_11B43B5: var_8C.Fields.Append "RoomTaxAc", &H81, 8
  loc_11B43E1: var_8C.Fields.Append "PayCode", &H81, 5
  loc_11B440D: var_8C.Fields.Append "RoomCat", &H81, 5
  loc_11B4439: var_8C.Fields.Append "RoomType", &H81, 5
  loc_11B4465: var_8C.Fields.Append "TaxStru", &H81, 5
  loc_11B4491: var_8C.Fields.Append "RoomNo", &H81, 5
  loc_11B44BD: var_8C.Fields.Append "RateCode", &H81, 1
  loc_11B44E9: var_8C.Fields.Append "RoomRate", 5, &H13
  loc_11B4515: var_8C.Fields.Append "DR", 5, &H13
  loc_11B4541: var_8C.Fields.Append "CR", 5, &H13
  loc_11B456D: var_8C.Fields.Append "Tip", 5, &H13
  loc_11B4599: var_8C.Fields.Append "BillAmount", 5, &H13
  loc_11B45C5: var_8C.Fields.Append "FolioNo", 3, &HB
  loc_11B45F1: var_8C.Fields.Append "Particulars", &H81, &H64
  loc_11B4601: var_8C.CursorType = 3
  loc_11B460E: var_8C.LockType = 3
  loc_11B462D: var_8C.Open var_A0, var_B0, -1
  loc_11B4634: Set var_8C = Nothing 
  loc_11B463B: Set var_88 = arg_C 
  loc_11B463F: Proc_110_53_11B4648 = -1
End Sub

Public Sub Proc_110_54_EB999C
  'Data Table: 4F7A88
  loc_EB9914: If (CBool(Me.DGNewHelp.Visible) = &HFF) Then
  loc_EB9926:   Me.DGNewHelp.Visible = False
  loc_EB992E: End If
  loc_EB994A: If (CBool(Me.DGOldHelp.Visible) = &HFF) Then
  loc_EB995C:   Me.DGOldHelp.Visible = False
  loc_EB9964: End If
  loc_EB9980: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB9992:   Me.FGPoint.Visible = False
  loc_EB999A: End If
  loc_EB999A: Exit Sub
End Sub
