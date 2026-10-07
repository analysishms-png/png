VERSION 5.00
Begin VB.Form FrmControlPanel
  Caption = "Control Panel"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "FrmControlPanel.frx":0
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  MDIChild = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 6915
  ClientHeight = 4875
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Frame Frame3
    Caption = "Lock"
    Left = 4455
    Top = 345
    Width = 1905
    Height = 915
    TabIndex = 21
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin SSOption optLockType
      Index = 1
      Left = 165
      Top = 540
      Width = 1575
      Height = 225
      TabIndex = 23
    End
    Begin SSOption optLockType
      Index = 0
      Left = 180
      Top = 225
      Width = 1680
      Height = 240
      TabIndex = 22
    End
  End
  Begin Frame Frame1
    Left = 555
    Top = 3945
    Width = 5895
    Height = 555
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox Text1
      Index = 3
      BackColor = &HC0FFFF&
      ForeColor = &HC000&
      Left = 180
      Top = 165
      Width = 330
      Height = 315
      Text = ":"
      TabIndex = 13
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
      Left = 4350
      Top = 180
      Width = 345
      Height = 315
      Text = ":"
      TabIndex = 9
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
      ForeColor = &HFF0000&
      Left = 3000
      Top = 165
      Width = 330
      Height = 315
      Text = ":"
      TabIndex = 8
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
      ForeColor = &HFF&
      Left = 1530
      Top = 165
      Width = 345
      Height = 315
      Text = ":"
      TabIndex = 7
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
    Begin Label Label1
      Caption = "Selected"
      Index = 3
      Left = 570
      Top = 225
      Width = 870
      Height = 285
      TabIndex = 14
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
      Caption = "Not Active"
      Index = 2
      Left = 4755
      Top = 225
      Width = 975
      Height = 285
      TabIndex = 12
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
      Left = 3405
      Top = 225
      Width = 885
      Height = 285
      TabIndex = 11
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
      Left = 1920
      Top = 225
      Width = 885
      Height = 285
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
  End
  Begin Frame Frame2
    Caption = "Frame2"
    Left = 495
    Top = 3705
    Width = 2220
    Height = 1890
    TabIndex = 16
    Begin CommandButton ConnectCmd
      Caption = "&Connect"
      Left = 165
      Top = 225
      Width = 1905
      Height = 375
      TabIndex = 20
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
      TabIndex = 19
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
      TabIndex = 18
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
    Begin CommandButton cmdUnlock
      Caption = "&UnLock System"
      Left = 165
      Top = 1440
      Width = 1905
      Height = 375
      TabIndex = 17
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
      Left = 105
      Top = 165
      Width = 2025
      Height = 1710
      Shape = 4
      FillColor = &HC0C0C0&
      FillStyle = 0
    End
  End
  Begin CheckBox cmdClose
    Caption = "Clo&se"
    BackColor = &H80000000&
    ForeColor = &H0&
    Left = 4335
    Top = 3375
    Width = 2130
    Height = 525
    TabIndex = 15
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CheckBox cmdUnLockAll
    Caption = " UnLock All Machine where Application are Running"
    BackColor = &H80000000&
    ForeColor = &HFF0000&
    Left = 4350
    Top = 2670
    Width = 2115
    Height = 735
    TabIndex = 5
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CheckBox cmdLockALL
    Caption = " Lock All Machine where Application are Running"
    BackColor = &H80000000&
    ForeColor = &HC0&
    Left = 4350
    Top = 1965
    Width = 2115
    Height = 735
    TabIndex = 4
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CheckBox cmdSearch
    Caption = "  &Search Host 's Name  (Application on Running)"
    BackColor = &H80000000&
    ForeColor = &H8000&
    Left = 4350
    Top = 1245
    Width = 2115
    Height = 735
    TabIndex = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin MSHFlexGrid FGrid1
    Left = 555
    Top = 405
    Width = 3480
    Height = 3465
    TabIndex = 0
  End
  Begin Winsock sckControlPanel
    Index = 0
  End
  Begin TextBox txtHost
    Left = 240
    Top = 1020
    Width = 2040
    Height = 345
    TabIndex = 1
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
    Left = 300
    Top = 3345
    Width = 3480
    Height = 345
    TabIndex = 2
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
End

Attribute VB_Name = "FrmControlPanel"


Private Sub cmdUnlock_Click() 'EED448
  'Data Table: 464DD0
  Dim var_BC As Variant
  Dim var_EC As Long
  loc_EED3C5: If CBool(Trim(CVar(Me.txtStatus.Text)) <> vbNullString) Then
  loc_EED3DB:   var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_EED3E0:   var_EC = 2
  loc_EED41A:   Set var_104 = Me.sckControlPanel
  loc_EED420:   Call 0.Method_cmdUnlock_Click0 (CInt(Val(CStr(Me.FGrid1.TextMatrix)))), var_108, "UnLockSystem#")
  loc_EED445: End If
  loc_EED445: Exit Sub
End Sub

Private Sub txtStatus_Change() 'ECA59C
  'Data Table: 464DD0
  loc_ECA51A: If CBool(Trim(CVar(Me.txtStatus)) <> vbNullString) Then
  loc_ECA53F:   Me.FGrid1.Row = CVar(CLng(Me.FGrid1.RowSel))
  loc_ECA561:   Me.FGrid1.Col = 0
  loc_ECA57C:   Me.FGrid1.CellForeColor = &HFF
  loc_ECA592:   Me.FGrid1.CellFontBold = True
  loc_ECA59A: End If
  loc_ECA59A: Exit Sub
End Sub

Public Sub sckControlPanel_UnknownEvent_B(Index As Integer) 'FCAB98
  'Data Table: 464DD0
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_AC As Variant
  Dim var_CC As Long
  Dim var_100 As Winsock
  loc_FCA9EF: var_86 = Index
  loc_FCA9F8: If (var_86 = 0) Then
  loc_FCAA0E:   var_AC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_FCAA13:   var_CC = 2
  loc_FCAA29:   Set var_100 = Me.FGrid1
  loc_FCAA2F:   LateIdCallSt
  loc_FCAA51:   Me.ConnectCmd.Enabled = False
  loc_FCAA65:   Me.DisconnectCmd.Enabled = True
  loc_FCAA7A:   Set var_8C = Me.sckControlPanel
  loc_FCAA80:   Call 0.Method_sckControlPanel_UnknownEvent_B0 (Index, var_100, " Connected with '", var_100)
  loc_FCAAA8:   Me.txtStatus.Text = CVar(CStr(Index)) & CStr(var_100.RemoteHostIP) & "'   "
  loc_FCAAC5: Else
  loc_FCAACB:   If (var_86 = 1) Then
  loc_FCAAE1:     var_AC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_FCAAFC:     Set var_100 = Me.FGrid1
  loc_FCAB02:     LateIdCallSt
  loc_FCAB24:     Me.ConnectCmd.Enabled = False
  loc_FCAB38:     Me.DisconnectCmd.Enabled = True
  loc_FCAB4D:     Set var_8C = Me.sckControlPanel
  loc_FCAB53:     Call 0.Method_sckControlPanel_UnknownEvent_B0 (Index, var_100, " Connected with '", var_100, CVar(CStr(Index)))
  loc_FCAB7B:     Me.txtStatus.Text = 2 & CStr(var_100.RemoteHostIP) & "'   "
  loc_FCAB95:   End If
  loc_FCAB95: End If
  loc_FCAB95: Exit Sub
End Sub

Public Sub sckControlPanel_UnknownEvent_D(Index As Integer) 'E8E320
  'Data Table: 464DD0
  Dim var_8C As Winsock
  Dim var_88 As Variant
  loc_E8E2B6: Set var_88 = Me.sckControlPanel
  loc_E8E2BC: Call 0.Method_sckControlPanel_UnknownEvent_D0 (Index)
  loc_E8E2DD: If (CLng(CInt(var_8C.State)) <> &H2749) Then
  loc_E8E2EC:   Me.ConnectCmd.Enabled = True
  loc_E8E300:   Me.DisconnectCmd.Enabled = False
  loc_E8E315:   Me.txtStatus.Text = "Not Connected."
  loc_E8E31D: End If
  loc_E8E31D: Exit Sub
End Sub

Private Sub cmdSearch_Click() 'F61F08
  'Data Table: 464DD0
  Dim var_8C As Variant
  loc_F61DF3: If (Me.cmdSearch.Value = 1) Then
  loc_F61E02:   Me.cmdSearch.Value = 0
  loc_F61E2F:   For var_A4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F61E48:     Me.FGrid1.Row = CVar(CLng(var_86))
  loc_F61E63:     Me.FGrid1.Col = 1
  loc_F61E6F:     Set var_8C = Me.FGrid1
  loc_F61EB4:     Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_F61ED2:     Me.ConnectCmd.Enabled = True
  loc_F61EE6:     Me.DisconnectCmd.Enabled = False
  loc_F61EEE:     Call ConnectCmd_Click()
  loc_F61EFA:     Proc_96_21_E587E0(CDbl(1), 1, CVar(CLng(var_86)))
  loc_F61F02:   Next var_A4 'Integer
  loc_F61F07: End If
  loc_F61F07: Exit Sub
End Sub

Private Sub cmdSearch_GotFocus() 'E2FAC8
  'Data Table: 464DD0
  loc_E2FAA8: Me.cmdSearch.FontBold = True
  loc_E2FABE: Me.cmdSearch.FontSize = CDbl(8)
  loc_E2FAC6: Exit Sub
End Sub

Private Sub cmdSearch_LostFocus() 'E2FB28
  'Data Table: 464DD0
  loc_E2FB08: Me.cmdSearch.FontBold = False
  loc_E2FB1E: Me.cmdSearch.FontSize = CDbl(9)
  loc_E2FB26: Exit Sub
End Sub

Private Sub cmdUnLockAll_Click() 'FA0B00
  'Data Table: 464DD0
  Dim var_8C As Variant
  Dim var_B4 As Variant
  loc_FA099B: If (Me.cmdUnLockAll.Value = 1) Then
  loc_FA09AA:   Me.cmdUnLockAll.Value = 0
  loc_FA09D7:   For var_A4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_A4 'Integer
  loc_FA09F0:     Me.FGrid1.Row = CVar(CLng(var_86))
  loc_FA0A0B:     Me.FGrid1.Col = 1
  loc_FA0A17:     Set var_8C = Me.FGrid1
  loc_FA0A2C:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_FA0A5C:     Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_FA0A6E:     var_B4 = 0
  loc_FA0A81:     Me.FGrid1.Col = var_B4
  loc_FA0AA8:     If (CLng(Me.FGrid1.CellForeColor) = &HFF0000) Then
  loc_FA0AAB:       Call ConnectCmd_Click()
  loc_FA0ABD:       Proc_96_21_E587E0(0.2, 1, var_B4)
  loc_FA0AC2:       Call cmdUnlock_Click()
  loc_FA0AD4:       Proc_96_21_E587E0(0.2, FGrid1.DispID_8001)
  loc_FA0AEC:       Me.FGrid1.CellForeColor = &HFF
  loc_FA0AF4:     End If
  loc_FA0AF7:   Next var_A4 'Integer
  loc_FA0AFC: End If
  loc_FA0AFC: Exit Sub
End Sub

Private Sub cmdUnLockAll_GotFocus() 'E2FD08
  'Data Table: 464DD0
  loc_E2FCE8: Me.cmdUnLockAll.FontBold = True
  loc_E2FCFE: Me.cmdUnLockAll.FontSize = CDbl(8)
  loc_E2FD06: Exit Sub
End Sub

Private Sub cmdUnLockAll_LostFocus() 'E2FD68
  'Data Table: 464DD0
  loc_E2FD48: Me.cmdUnLockAll.FontBold = False
  loc_E2FD5E: Me.cmdUnLockAll.FontSize = CDbl(9)
  loc_E2FD66: Exit Sub
End Sub

Private Sub Form_Load() 'FF7808
  'Data Table: 464DD0
  Dim var_88 As Variant
  Dim MemVar_1F966B0 As Long
  Dim var_90 As Long
  Dim var_8C As Long
  Dim var_94 As Winsock
  loc_FF7620: Me.txtHost.Visible = False
  loc_FF7634: Me.txtStatus.Visible = False
  loc_FF7648: Me.Frame2.Visible = False
  loc_FF7655: MemVar_1F966B0 = -1
  loc_FF769F: SetWindowRgn(Me.cmdSearch.hWnd, CreateRoundRectRgn(5, 4, &H8C, &H30, &H12, &H2D), &HFF)
  loc_FF76EF: SetWindowRgn(Me.cmdLockALL.hWnd, CreateRoundRectRgn(5, 4, &H8C, &H30, &H12, &H2D), &HFF)
  loc_FF773F: SetWindowRgn(Me.cmdUnLockAll.hWnd, CreateRoundRectRgn(5, 4, &H8C, &H30, &H12, &H2D), &HFF)
  loc_FF7772: var_8C = CreateRoundRectRgn(5, 4, &H8C, &H1E, &H12, &H1E)
  loc_FF7782: var_90 = Me.cmdClose.hWnd
  loc_FF778F: SetWindowRgn(var_90, var_8C, &HFF)
  loc_FF77AA: Set var_88 = Me.sckControlPanel
  loc_FF77B0: Call 0.Method_Form_Load0 (0, var_94, var_8C, var_90, var_8C, var_90)
  loc_FF77D5: Proc_156_2_F988A8(-2147483648, Me.FGrid1, CStr(var_94.LocalHostName), var_8C)
  loc_FF77F7: Me.DisconnectCmd.Enabled = False
  loc_FF77FF: Call Ini_Grid()
  loc_FF7804: Exit Sub
End Sub

Private Sub Form_Resize() 'DFCA30
  'Data Table: 464DD0
  loc_DFCA2C: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'EB4AD0
  'Data Table: 464DD0
  Dim var_A8 As Variant
  Dim var_C8 As Long
  loc_EB4A57: var_A8 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_EB4A5C: var_C8 = 1
  loc_EB4A87: Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_EB4AAB: Me.ConnectCmd.Enabled = True
  loc_EB4ABF: Me.DisconnectCmd.Enabled = False
  loc_EB4AC7: Call ConnectCmd_Click()
  loc_EB4ACC: Exit Sub
End Sub

Private Sub cmdLockALL_Click() 'FA0940
  'Data Table: 464DD0
  Dim var_8C As Variant
  Dim var_B4 As Variant
  loc_FA07DB: If (Me.cmdLockALL.Value = 1) Then
  loc_FA07EA:   Me.cmdLockALL.Value = 0
  loc_FA0817:   For var_A4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_A4 'Integer
  loc_FA0830:     Me.FGrid1.Row = CVar(CLng(var_86))
  loc_FA084B:     Me.FGrid1.Col = 1
  loc_FA0857:     Set var_8C = Me.FGrid1
  loc_FA086C:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_FA089C:     Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_FA08AE:     var_B4 = 0
  loc_FA08C1:     Me.FGrid1.Col = var_B4
  loc_FA08E8:     If (CLng(Me.FGrid1.CellForeColor) = &HFF) Then
  loc_FA08EB:       Call ConnectCmd_Click()
  loc_FA08FD:       Proc_96_21_E587E0(0.2, 1, var_B4)
  loc_FA0902:       Call LockBttn_Click()
  loc_FA0914:       Proc_96_21_E587E0(0.2, FGrid1.DispID_8001)
  loc_FA092C:       Me.FGrid1.CellForeColor = &HFF0000
  loc_FA0934:     End If
  loc_FA0937:   Next var_A4 'Integer
  loc_FA093C: End If
  loc_FA093C: Exit Sub
End Sub

Private Sub cmdLockALL_GotFocus() 'E2FA08
  'Data Table: 464DD0
  loc_E2F9E8: Me.cmdLockALL.FontBold = True
  loc_E2F9FE: Me.cmdLockALL.FontSize = CDbl(8)
  loc_E2FA06: Exit Sub
End Sub

Private Sub cmdLockALL_LostFocus() 'E2FA68
  'Data Table: 464DD0
  loc_E2FA48: Me.cmdLockALL.FontBold = False
  loc_E2FA5E: Me.cmdLockALL.FontSize = CDbl(9)
  loc_E2FA66: Exit Sub
End Sub

Private Sub CmdClose_Click() 'E16D0C
  'Data Table: 464DD0
  loc_E16D01: Me.Global.Unload Me
  loc_E16D09: Exit Sub
End Sub

Private Sub CmdClose_GotFocus() 'E2F948
  'Data Table: 464DD0
  loc_E2F928: Me.cmdClose.FontBold = True
  loc_E2F93E: Me.cmdClose.FontSize = CDbl(8)
  loc_E2F946: Exit Sub
End Sub

Private Sub CmdClose_LostFocus() 'E2F9A8
  'Data Table: 464DD0
  loc_E2F988: Me.cmdClose.FontBold = False
  loc_E2F99E: Me.cmdClose.FontSize = CDbl(9)
  loc_E2F9A6: Exit Sub
End Sub

Private Sub ConnectCmd_Click() '10C0CD8
  'Data Table: 464DD0
  Dim var_88 As TextBox
  Dim var_110 As Winsock
  Dim ConnectCmd_Click6 As Variant
  Dim ConnectCmd_Click0 As Variant
  loc_10C0A01: Me.txtStatus.Text = vbNullString
  loc_10C0A09: On Error Goto loc_10C0C95
  loc_10C0A19: var_8C = Me.txtHost.Text
  loc_10C0A4F: If (Trim(var_8C) = vbNullString) Then
  loc_10C0A6B:   MsgBox("Please enter correct Remote Computer's Name or IP Address.", &H40, var_CC, var_EC, var_10C)
  loc_10C0A81:   global_56 = vbNullString
  loc_10C0A85:   Exit Sub
  loc_10C0A86: End If
  loc_10C0A8F: Set var_88 = Me.sckControlPanel
  loc_10C0A95: Call 0.Method_ConnectCmd_Click0 (0)
  loc_10C0AB2: If (CInt(var_110.State) > 0) Then
  loc_10C0ABE:   Set var_88 = Me.sckControlPanel
  loc_10C0AC4:   Call 0.Method_ConnectCmd_Click0 (0, var_110)
  loc_10C0AE5:   If (CLng(CInt(var_110.State)) <> &H2749) Then
  loc_10C0AF1:     Set var_88 = Me.sckControlPanel
  loc_10C0AF7:     Call 0.Method_ConnectCmd_Click0 (0, var_110)
  loc_10C0AFF:     ConnectCmd_Click6 = var_110._RemoteHost
  loc_10C0B0E:   End If
  loc_10C0B0E: End If
  loc_10C0B17: Set var_88 = Me.sckControlPanel
  loc_10C0B1D: Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_10C0B3A: If (CInt(var_110.State) > 0) Then
  loc_10C0B46:   Set var_88 = Me.sckControlPanel
  loc_10C0B4C:   Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_10C0B6D:   If (CLng(CInt(var_110.State)) <> &H2749) Then
  loc_10C0B79:     Set var_88 = Me.sckControlPanel
  loc_10C0B7F:     Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_10C0B87:     ConnectCmd_Click6 = var_110._RemoteHost
  loc_10C0B96:   End If
  loc_10C0B96: End If
  loc_10C0BA9: Set var_88 = Me.sckControlPanel
  loc_10C0BAF: Call 0.Method_ConnectCmd_Click0 (0, var_110, global_56)
  loc_10C0BB7: var_110.RemoteHost = ConnectCmd_Click6
  loc_10C0BD5: Set var_88 = Me.sckControlPanel
  loc_10C0BDB: Call 0.Method_ConnectCmd_Click0 (0, var_110, &H1F44)
  loc_10C0BE3: var_110.RemotePort = ConnectCmd_Click6
  loc_10C0BF8: Set var_88 = Me.sckControlPanel
  loc_10C0BFE: Call 0.Method_ConnectCmd_Click0 (0, var_110)
  loc_10C0C06: ConnectCmd_Click0 = var_110._RemoteHost
  loc_10C0C28: Set var_88 = Me.sckControlPanel
  loc_10C0C2E: Call 0.Method_ConnectCmd_Click0 (1, var_110, global_56)
  loc_10C0C36: var_110.RemoteHost = ConnectCmd_Click0
  loc_10C0C54: Set var_88 = Me.sckControlPanel
  loc_10C0C5A: Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_10C0C62: var_110.RemotePort = &H1F45
  loc_10C0C77: Set var_88 = Me.sckControlPanel
  loc_10C0C7D: Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_10C0C85: ConnectCmd_Click0 = var_110._RemoteHost
  loc_10C0C94: Exit Sub
  loc_10C0C95: ' Referenced from: 10C0A09
  loc_10C0C9D: Set var_88 = Err()
  loc_10C0CA3: Call 0.Method_arg_2C (var_8C, ConnectCmd_Click0)
  loc_10C0CC4: MsgBox(CVar(var_8C), &H10, "Connection Error ...", var_EC, var_10C)
  loc_10C0CD7: Exit Sub
End Sub

Private Sub DisconnectCmd_Click() 'E16D58
  'Data Table: 464DD0
  loc_E16D4C: Me.ConnectCmd.Enabled = True
  loc_E16D54: Exit Sub
End Sub

Private Sub LockBttn_Click() 'E8E264
  'Data Table: 464DD0
  Dim var_88 As TextBox
  Dim var_BC As String
  loc_E8E231: If CBool(Trim(CVar(Me.txtStatus.Text)) <> vbNullString) Then
  loc_E8E234:   var_BC = "LockSystem#"
  loc_E8E243:   Set var_88 = Me.sckControlPanel
  loc_E8E249:   Call 0.Method_LockBttn_Click0 (0, var_D0)
  loc_E8E260: End If
  loc_E8E260: Exit Sub
End Sub

Public Sub Ini_Grid() 'F06338
  'Data Table: 464DD0
  Dim var_98 As Long
  Dim var_BC As Long
  Dim var_DC As String
  Dim arg_BFF As Integer
  loc_F06250: Set var_88 = Me.FGrid1
  loc_F06266: Me.FGrid1.Cols = 3
  loc_F0626E: var_98 = 0
  loc_F06277: var_BC = &H190
  loc_F06283: LateIdCallSt
  loc_F0628B: var_98 = 1
  loc_F06294: var_BC = &HA5A
  loc_F062A0: LateIdCallSt
  loc_F062A8: var_98 = 2
  loc_F062B1: var_BC = &H190
  loc_F062BD: LateIdCallSt
  loc_F062C5: var_98 = 0
  loc_F062CE: var_BC = 0
  loc_F062D7: var_DC = vbNullString
  loc_F062E0: LateIdCallSt
  loc_F062E8: var_98 = 0
  loc_F062F1: var_BC = 1
  loc_F062FA: var_DC = "List of Remote Machine"
  loc_F06303: LateIdCallSt
  loc_F0630B: var_98 = 0
  loc_F06314: var_BC = 2
  loc_F0631D: var_DC = vbNullString
  loc_F06326: LateIdCallSt
  loc_F06334: Exit Sub
  loc_F06335: arg_BFF = Nothing
End Sub

Public Sub Proc_155_23_E50D48
  'Data Table: 464DD0
  Dim var_9C As String
  Dim MemVar_0 As Single
  loc_E50D18: var_9C = "Shutdown#"
  loc_E50D27: Set var_88 = Me.sckControlPanel
  loc_E50D2D: Call 0.Method_Proc_155_23_E50D480 (0, var_8C)
  loc_E50D44: Exit Sub
  loc_E50D45: MemVar_0 = sckControlPanel.DispID_10000
End Sub
