VERSION 5.00
Begin VB.Form FaCityMast
  Caption = "City Master"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11610
  ClientHeight = 7125
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11610
    Height = 450
    TabIndex = 18
  End
  Begin CommandButton CmdRef
    Caption = "..."
    Left = 7605
    Top = 3060
    Width = 330
    Height = 300
    TabIndex = 4
    TabStop = 0   'False
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "To Print Settlement Details"
  End
  Begin DataGrid DGSName
    Left = 8475
    Top = 3180
    Width = 4320
    Height = 2835
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGHelp
    Left = 9600
    Top = 3420
    Width = 4395
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3645
    Top = 3060
    Width = 3960
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 30
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3645
    Top = 3375
    Width = 4300
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 30
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3645
    Top = 2745
    Width = 1500
    Height = 285
    TabIndex = 2
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HC0FFFF&
    ForeColor = &HFFFF&
    Left = 9480
    Top = 3915
    Width = 1500
    Height = 255
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 10
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3645
    Top = 2430
    Width = 1500
    Height = 285
    TabIndex = 1
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3645
    Top = 2115
    Width = 4300
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 6105
    Top = 5835
    Width = 2790
    Height = 285
    TabIndex = 17
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
    Left = 2730
    Top = 5835
    Width = 2880
    Height = 255
    TabIndex = 16
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
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 15
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
    Caption = "State Name"
    ForeColor = &HC00000&
    Left = 2295
    Top = 3075
    Width = 1110
    Height = 240
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
  Begin Label Label3
    Caption = "STD Code"
    ForeColor = &H0&
    Left = 8250
    Top = 3930
    Width = 960
    Height = 240
    Visible = 0   'False
    TabIndex = 11
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
  Begin Label Label2
    Caption = "Zip Code"
    ForeColor = &HC00000&
    Left = 2295
    Top = 2760
    Width = 840
    Height = 240
    TabIndex = 10
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
    Caption = "Country Name"
    Index = 3
    ForeColor = &HC00000&
    Left = 2295
    Top = 3390
    Width = 1350
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
  Begin Label LblName
    Caption = "Short Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 2295
    Top = 2445
    Width = 1125
    Height = 240
    TabIndex = 8
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
    Caption = "City Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 2295
    Top = 2115
    Width = 975
    Height = 240
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
End

Attribute VB_Name = "FaCityMast"

Private global_88 As Long

Private Sub DGHelp_UnknownEvent_9 'F14F58
  'Data Table: 482B4C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F14E74: On Error Goto loc_F14F2E
  loc_F14E86: Me.DGHelp.Visible = False
  loc_F14EA5: If (Me.RecordCount > 0) Then
  loc_F14EC5:   var_B0 = Me.Fields.Item("CityName")
  loc_F14ED6:   var_CC = CStr(var_B0.Value)
  loc_F14EE4:   Set var_B4 = Me.Txt
  loc_F14EEA:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F14EF2:   var_B8.Text = var_CC
  loc_F14F08: End If
  loc_F14F13: Set var_A8 = Me.Txt
  loc_F14F19: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F14F21: var_B0.SetFocus
  loc_F14F2D: Exit Sub
  loc_F14F2E: ' Referenced from: F14E74
  loc_F14F34: Call 0.Method_arg_50 (var_CC)
  loc_F14F49: Proc_183_57_104B0BC(var_CC, "DGHelp_Click")
  loc_F14F55: Exit Sub
  loc_F14F56: Set var_2B8C = var_B0
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FD0808
  'Data Table: 482B4C
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_EC As String
  loc_FD0654: On Error Goto loc_FD07E0
  loc_FD0661: Set var_88 = Me.Txt
  loc_FD0667: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FD0675: Proc_183_28_E216B0(var_8C)
  loc_FD0681: Call Proc_195_36_E857E8(var_8C)
  loc_FD0689: var_92 = Index
  loc_FD0694: If (var_92 = CInt(4)) Then
  loc_FD06E5:   Set var_88 = Me.Txt
  loc_FD06EB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FD06F3:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FD070B:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_FD070E:     Exit Sub
  loc_FD070F:   End If
  loc_FD071C:   Set var_88 = Me.Txt
  loc_FD0722:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FD072A:   var_A0 = var_8C.Text
  loc_FD073C:   var_B0 = "Name"
  loc_FD0777:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FD0780:     Me.MoveFirst
  loc_FD07A3:     Set var_88 = Me.Txt
  loc_FD07A9:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FD07B1:     0 = var_8C.Text
  loc_FD07CA:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_FD07DF:   End If
  loc_FD07DF: End If
  loc_FD07DF: Exit Sub
  loc_FD07E0: ' Referenced from: FD0654
  loc_FD07E6: Call 0.Method_arg_50 (var_A0)
  loc_FD07EE: var_EC = "Txt_GotFocus"
  loc_FD07FB: Proc_183_57_104B0BC(var_A0)
  loc_FD0807: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1101444
  'Data Table: 482B4C
  Dim var_8C As Integer
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim unk_482B5F As Connection15
  Dim var_88 As Recordset15
  Dim var_C8 As String
  Dim var_A4 As TextBox
  loc_1101118: On Error Goto loc_110141A
  loc_1101125: If (CLng(Shift) = &H1B) Then
  loc_1101128:   Call Proc_195_36_E857E8()
  loc_110112D:   Exit Sub
  loc_110112E: End If
  loc_1101131: var_8C = KeyCode
  loc_110113C: If (var_8C = CInt(0)) Then
  loc_1101179:   Proc_183_31_100957C(Me.DGHelp, Me.Txt, CInt(0), global_56)
  loc_110118C: Else
  loc_1101194:   If (var_8C = CInt(4)) Then
  loc_110119B:     Set var_A0 = Me.DGSName
  loc_11011A2:     Set var_A4 = Me.Txt
  loc_11011CD:     Proc_183_34_1307118(var_A0, var_A4, KeyCode, global_60, Shift, 0)
  loc_11011DD:   End If
  loc_11011DD: End If
  loc_11011E7: var_B4 = Me.DGSName.Visible
  loc_11011F7: Set var_94 = Me.DGHelp
  loc_1101218: If ((CBool(var_B4) = 0) And (CBool(var_94.Visible) = 0)) Then
  loc_110122E:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_1101237:     Proc_183_30_E53D10(Shift, arg_14, 1, Shift)
  loc_110123C:   End If
  loc_110125A:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(4))) Then
  loc_1101263:     Call Txt_Validate(KeyCode)
  loc_110126E:     If (var_8A = 0) Then
  loc_110127F:       Set var_90 = Me.Txt
  loc_1101285:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94, var_C8, var_8A)
  loc_110128D:       0 = var_94.Text
  loc_11012A4:       If (var_C8 <> vbNullString) Then
  loc_11012C5:         Set var_90 = Me.Txt
  loc_11012CB:         Call 0.Method_Txt_KeyDown0 (CInt(4), var_94, var_C8, "Select Code,Name from Country where Code in(select Country from State where Name='", var_B4)
  loc_11012D3:         -1 = var_94.Text
  loc_11012EC:         unk_482B5F.Execute var_A0 & var_C8 & "')", 1, var_8C
  loc_11012F7:         Set var_88 = var_A0
  loc_1101323:         If (var_88.RecordCount > 0) Then
  loc_110135F:           Set var_A0 = Me.Txt
  loc_1101365:           Call 0.Method_Txt_KeyDown0 (CInt(5), var_A4)
  loc_110136D:           var_A4.Text = CStr(var_88.Fields.Item("Name").Value)
  loc_11013AE:           var_C8 = CStr(var_88.Fields.Item("Code").Value)
  loc_11013BC:           Set var_A0 = Me.Txt
  loc_11013C2:           Call 0.Method_Txt_KeyDown0 (CInt(5), var_A4)
  loc_11013CA:           var_A4.Tag = var_C8
  loc_11013E0:         End If
  loc_11013E0:       End If
  loc_11013E6:       Call Proc_195_37_ED00FC(KeyCode)
  loc_11013EB:     End If
  loc_11013EE:   Else
  loc_1101403:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_110140C:       Proc_183_29_E53794(Shift)
  loc_1101411:     End If
  loc_1101411:   End If
  loc_1101411: End If
  loc_1101416: Set var_88 = Nothing
  loc_1101419: Exit Sub
  loc_110141A: ' Referenced from: 1101118
  loc_1101420: Call 0.Method_arg_50 (var_C8)
  loc_1101435: Proc_183_57_104B0BC(var_C8, "Txt_KeyDown")
  loc_1101441: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE07F4
  'Data Table: 482B4C
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE0740: On Error Goto loc_EE07CA
  loc_EE0749: Proc_183_52_E80008(var_94)
  loc_EE0752: arg_10 = CInt(var_94)
  loc_EE075B: Proc_183_46_E07C50(arg_10, arg_10)
  loc_EE076E: If (KeyAscii = CInt(4)) Then
  loc_EE078D:   If (CBool(Me.DGSName.Visible) = &HFF) Then
  loc_EE079F:     var_A0 = "Name"
  loc_EE07BA:     Proc_183_41_145A968(Me.Txt, KeyAscii, global_60, arg_10)
  loc_EE07C9:   End If
  loc_EE07C9: End If
  loc_EE07C9: Exit Sub
  loc_EE07CA: ' Referenced from: EE0740
  loc_EE07D0: Call 0.Method_arg_50 (var_A0, var_A0, 0)
  loc_EE07E5: Proc_183_57_104B0BC(var_A0, "TXT_KeyPress")
  loc_EE07F1: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F43BAC
  'Data Table: 482B4C
  Dim var_86 As Integer
  loc_F43A9C: On Error Goto loc_F43B81
  loc_F43AA2: var_86 = KeyCode
  loc_F43AAD: If (var_86 = CInt(0)) Then
  loc_F43ACC:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F43AD9:     var_A4 = "CityName"
  loc_F43AF8:     Proc_183_32_FE97F0(Me.Txt, CInt(0), global_56)
  loc_F43B07:   End If
  loc_F43B0A: Else
  loc_F43B12:   If (var_86 = CInt(4)) Then
  loc_F43B31:     If (CBool(Me.DGSName.Visible) = &HFF) Then
  loc_F43B45:       var_A4 = "Name"
  loc_F43B6D:       Proc_183_33_12A1B50(Me.DGSName, Me.Txt, CInt(4), global_60, Shift)
  loc_F43B80:     End If
  loc_F43B80:   End If
  loc_F43B80: End If
  loc_F43B80: Exit Sub
  loc_F43B81: ' Referenced from: F43A9C
  loc_F43B87: Call 0.Method_arg_50 (var_A4, var_A4, Shift)
  loc_F43B9C: Proc_183_57_104B0BC(var_A4, "Txt_KeyUp")
  loc_F43BA8: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4CCAC
  'Data Table: 482B4C
  loc_E4CC8A: Set var_88 = Me.Txt
  loc_E4CC90: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4CC9E: Proc_183_27_E23198(var_8C)
  loc_E4CCAA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '100C674
  'Data Table: 482B4C
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_100C46C: On Error Goto loc_100C64B
  loc_100C472: var_86 = Cancel
  loc_100C47D: If (var_86 = CInt(0)) Then
  loc_100C483:   Call Proc_195_32_1090048(var_88)
  loc_100C48E:   If (var_88 = &HFF) Then
  loc_100C493:     arg_10 = &HFF
  loc_100C496:     Exit Sub
  loc_100C497:   End If
  loc_100C49A: Else
  loc_100C4A2:   If (var_86 = CInt(1)) Then
  loc_100C4A8:     Call Proc_195_33_107048C(var_88, arg_10)
  loc_100C4B3:     If (var_88 = &HFF) Then
  loc_100C4B8:       arg_10 = &HFF
  loc_100C4BB:       Exit Sub
  loc_100C4BC:     End If
  loc_100C4BF:   Else
  loc_100C4C7:     If (var_86 = CInt(2)) Then
  loc_100C4CD:       Call Proc_195_34_10BD054(var_88, arg_10)
  loc_100C4D8:       If (var_88 = &HFF) Then
  loc_100C4DD:         arg_10 = &HFF
  loc_100C4E0:         Exit Sub
  loc_100C4E1:       End If
  loc_100C4E4:     Else
  loc_100C4EC:       If (var_86 = CInt(3)) Then
  loc_100C4F2:         Call Proc_195_35_10BD6AC(var_88, arg_10)
  loc_100C4FD:         If (var_88 = &HFF) Then
  loc_100C502:           arg_10 = &HFF
  loc_100C505:           Exit Sub
  loc_100C506:         End If
  loc_100C509:       Else
  loc_100C511:         If (var_86 = CInt(4)) Then
  loc_100C562:           Set var_94 = Me.Txt
  loc_100C568:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_100C570:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_100C588:           If (arg_10 Or (var_9C = vbNullString)) Then
  loc_100C58B:             Exit Sub
  loc_100C58C:           End If
  loc_100C5C7:           Set var_B0 = Me.Txt
  loc_100C5CD:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_100C5D5:           var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_100C619:           var_9C = CStr(Me.Fields.Item("Code").Value)
  loc_100C626:           Set var_B0 = Me.Txt
  loc_100C62C:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_100C634:           var_B4.Tag = var_9C
  loc_100C64A:         End If
  loc_100C64A:       End If
  loc_100C64A:     End If
  loc_100C64A:   End If
  loc_100C64A: End If
  loc_100C64A: Exit Sub
  loc_100C64B: ' Referenced from: 100C46C
  loc_100C651: Call 0.Method_arg_50 (var_9C)
  loc_100C666: Proc_183_57_104B0BC(var_9C, "Txt_Validate")
  loc_100C672: Exit Sub
End Sub

Private Sub DGSName_UnknownEvent_9 'F8072C
  'Data Table: 482B4C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F805E8: On Error Goto loc_F80702
  loc_F805FA: Me.DGSName.Visible = False
  loc_F80619: If (Me.RecordCount > 0) Then
  loc_F80658:   Set var_B4 = Me.Txt
  loc_F8065E:   Call 0.Method_DGSName_UnknownEvent_90 (CInt(4), var_B8)
  loc_F80666:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F80699:   var_B0 = Me.Fields.Item("Code")
  loc_F806AA:   var_CC = CStr(var_B0.Value)
  loc_F806B8:   Set var_B4 = Me.Txt
  loc_F806BE:   Call 0.Method_DGSName_UnknownEvent_90 (CInt(4), var_B8)
  loc_F806C6:   var_B8.Tag = var_CC
  loc_F806DC: End If
  loc_F806E7: Set var_A8 = Me.Txt
  loc_F806ED: Call 0.Method_DGSName_UnknownEvent_90 (CInt(4))
  loc_F806F5: var_B0.SetFocus
  loc_F80701: Exit Sub
  loc_F80702: ' Referenced from: F805E8
  loc_F80708: Call 0.Method_arg_50 (var_CC)
  loc_F8071D: Proc_183_57_104B0BC(var_CC, "DGSName_Click")
  loc_F80729: Exit Sub
End Sub

Private Sub Form_Load() '1168D80
  'Data Table: 482B4C
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_482B5F As Connection15
  loc_11689C8: On Error Goto loc_1168D58
  loc_11689D2: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11689E6: Me.LblUser.Left = CDbl(13500)
  loc_11689FD: Me.LblUser.Top = CDbl(7800)
  loc_1168A14: Me.LblLDt.Top = CDbl(8160)
  loc_1168A2B: Me.LblLDt.Left = CDbl(13500)
  loc_1168A3B: Call 0.Method_arg_7C (CDbl(1450))
  loc_1168A48: Call 0.Method_arg_74 (CDbl(1625))
  loc_1168A55: Call 0.Method_MeC (CDbl(9200))
  loc_1168A62: Call 0.Method_Me4 (CDbl(17000))
  loc_1168A75: Set var_8C = Me.Txt
  loc_1168A7B: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_1168A9A: Me.DGHelp.Left = CVar(var_90.Left)
  loc_1168AB6: Set var_B8 = Me.Txt
  loc_1168ABC: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_1168AD7: Set var_8C = Me.Txt
  loc_1168ADD: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_1168AF5: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_1168B04: Me.DGHelp.Top = CVar(var_90.Left)
  loc_1168B24: Set var_8C = Me.Txt
  loc_1168B2A: Call 0.Method_Form_Load0 (CInt(4), var_90)
  loc_1168B49: Me.DGSName.Left = CVar(var_90.Left)
  loc_1168B65: Set var_B8 = Me.Txt
  loc_1168B6B: Call 0.Method_Form_Load0 (CInt(4), var_BC)
  loc_1168B8C: Call 0.Method_Form_Load0 (CInt(4), var_90)
  loc_1168BA4: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_1168BB3: Me.DGSName.Top = CVar(var_90.Left)
  loc_1168BE9: unk_482B5F.Execute "SELECT CityCode,CityName FROM City WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') ORDER BY CityName", var_DC, -1
  loc_1168C18: CVarUnk
  loc_1168C1D: VerifyVarObj
  loc_1168C29: LateIdStAd
  loc_1168C5B: unk_482B5F.Execute "Select Code,Name from State WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') order by Name", var_DC, -1
  loc_1168C8A: CVarUnk
  loc_1168C8F: VerifyVarObj
  loc_1168C9B: LateIdStAd
  loc_1168CBD: var_C8 = "SELECT City.CityCode AS CCode,City.CityName AS CName,City.ShortName AS CShortName,City.STDCode AS CSTDCode,City.ZipCode AS CZipCode,City.State as CityState,City.Country as CityCntry,City.Site_Code AS CSite_Code,City.U_Name AS CU_Name,City.U_EntDt AS CU_EntDt,City.U_AE AS CU_AE,State.Name AS CState,Country.Name AS CCountry,City.Site_Code,City.LogSite_Code FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE (CITY.LOGSITE_CODE='" & MemVar_1F95078
  loc_1168CCD: unk_482B5F.Execute var_C8 & "' OR CITY.LOGSITE_CODE='HO') ORDER BY City.CityName", var_DC, -1
  loc_1168CFF: Set var_8C = Me
  loc_1168D08: var_C8 = "INI"
  loc_1168D16: Call Proc_195_29_EE9FF4(Proc_5_1_100EC1C(var_C8, var_8C, Me.DGSName, var_8C, var_8C), Me.DGHelp, var_8C)
  loc_1168D21: Call Proc_195_31_12EC120(var_8C, Me.Txt)
  loc_1168D37: If (OpenMode = 1) Then
  loc_1168D44:   Set var_8C = Me.TopCtrl1
  loc_1168D4A:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AE*P")
  loc_1168D52:   Call TopCtrl1_UnknownEvent_A()
  loc_1168D57: End If
  loc_1168D57: Exit Sub
  loc_1168D58: ' Referenced from: 11689C8
  loc_1168D5E: Call 0.Method_arg_50 (var_C8)
  loc_1168D73: Proc_183_57_104B0BC(var_C8, "Form_Load")
  loc_1168D7F: Exit Sub
End Sub

Private Sub Form_Resize() 'ED75D8
  'Data Table: 482B4C
  Dim var_8C As Label
  loc_ED7536: Call 0.Method_arg_50 (var_88)
  loc_ED7548: Me.LblFormCaption.Caption = var_88
  loc_ED7561: Me.LblFormCaption.Left = CDbl(0)
  loc_ED756D: Set var_A0 = Me.TopCtrl1
  loc_ED7573: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED7580: Set var_8C = Me.TopCtrl1
  loc_ED7586: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED75A0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED75BB: Call 0.Method_arg_100 (var_B8)
  loc_ED75CD: Me.LblFormCaption.Width = var_B8
  loc_ED75D5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E523C0
  'Data Table: 482B4C
  loc_E52393: Set global_52 = Nothing
  loc_E523A5: Set global_56 = Nothing
  loc_E523B7: Set global_60 = Nothing
  loc_E523BE: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E67CA8
  'Data Table: 482B4C
  loc_E67C60: On Error Goto loc_E67C7E
  loc_E67C75: Proc_183_40_F3169C(Me, KeyCode)
  loc_E67C7D: Exit Sub
  loc_E67C7E: ' Referenced from: E67C60
  loc_E67C84: Call 0.Method_arg_50 (var_8C)
  loc_E67C99: Proc_183_57_104B0BC(var_8C, "Form_KeyDown")
  loc_E67CA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EEC4DC
  'Data Table: 482B4C
  Dim var_88 As Label
  Dim var_98 As TextBox
  loc_EEC418: On Error Goto loc_EEC4B2
  loc_EEC428: Me.LblUser.Caption = vbNullString
  loc_EEC43D: Me.LblLDt.Caption = vbNullString
  loc_EEC45A: var_8C = "ADD"
  loc_EEC468: Call Proc_195_29_EE9FF4(Proc_5_1_100EC1C(var_8C, Me))
  loc_EEC473: Call Proc_195_30_F0BD44(global_52)
  loc_EEC489: If (OpenMode = 2) Then
  loc_EEC497:   Set var_88 = Me.Txt
  loc_EEC49D:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EEC4A5:   var_98.SetFocus
  loc_EEC4B1: End If
  loc_EEC4B1: Exit Sub
  loc_EEC4B2: ' Referenced from: EEC418
  loc_EEC4B8: Call 0.Method_arg_50 (var_8C)
  loc_EEC4CD: Proc_183_57_104B0BC(var_8C, "TopCtrl1_eAdd")
  loc_EEC4D9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EEC7E8
  'Data Table: 482B4C
  loc_EEC730: On Error Goto loc_EEC7C0
  loc_EEC76A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EEC779:   Set var_110 = Me
  loc_EEC782:   var_10C = "INI"
  loc_EEC790:   Call Proc_195_29_EE9FF4(Proc_5_1_100EC1C(var_10C, var_110))
  loc_EEC79B:   Call Proc_195_36_E857E8(global_52)
  loc_EEC7A0:   Call Proc_195_31_12EC120()
  loc_EEC7A8: Else
  loc_EEC7AE:   Call 0.Method_arg_1E8 (var_110)
  loc_EEC7B6:   Call var_110.SetFocus
  loc_EEC7BF: End If
  loc_EEC7BF: Exit Sub
  loc_EEC7C0: ' Referenced from: EEC730
  loc_EEC7C6: Call 0.Method_arg_50 (var_10C)
  loc_EEC7CE: var_11C = "TopCtrl1_eCancel"
  loc_EEC7DB: Proc_183_57_104B0BC(var_10C)
  loc_EEC7E7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '111554C
  'Data Table: 482B4C
  Dim Me As Recordset15
  Dim var_96 As Integer
  Dim unk_482B5F As Connection15
  Dim var_114 As Variant
  Dim var_B4 As String
  Dim var_C8 As Variant
  loc_111520C: On Error Goto loc_1115510
  loc_111521D: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_1115220:   Exit Sub
  loc_1115221: End If
  loc_1115246: var_C8 = Me.Fields.Item("cCode").Value
  loc_111524E: var_D4 = "Ledger A/C"
  loc_1115296: If (Proc_183_53_FE0460(MemVar_1F951E0, "SubGROUP", "CityCode") = 0) Then
  loc_1115299:   Exit Sub
  loc_111529A: End If
  loc_11152C7: var_D4 = "Ledger A/C"
  loc_111530F: If (Proc_183_53_FE0460(MemVar_1F951E0, "SubGROUP", "CityCode", CStr(Me.Fields.Item("cCode").Value), 0) = 0) Then
  loc_1115312:   Exit Sub
  loc_1115313: End If
  loc_1115340: var_D4 = "Area Master"
  loc_1115388: If (Proc_183_53_FE0460(MemVar_1F951E0, "AREAMAST", "CityCode", CStr(Me.Fields.Item("cCode").Value), 0) = 0) Then
  loc_111538B:   Exit Sub
  loc_111538C: End If
  loc_11153C3: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_11153C8:   var_96 = 0
  loc_11153D4:   unk_482B5F.BeginTrans var_D0
  loc_11153DB:   var_96 = &HFF
  loc_1115443:   var_B4 = CStr("Delete From City Where CityCode='" & Me.Fields.Item("cCode").Value & "'")
  loc_111544D:   unk_482B5F.Execute var_B4, var_134, -1
  loc_111546F:   unk_482B5F.CommitTrans
  loc_1115476:   var_96 = 0
  loc_1115484:   Me.Requery -1
  loc_1115494:   Me.Requery -1
  loc_11154B0:   If (Me.RecordCount > 0) Then
  loc_11154CA:     If (Me.AbsolutePosition > 1) Then
  loc_11154D5:       var_C8 = (CVar(Me.AbsolutePosition) - 1)
  loc_11154E1:       Me.AbsolutePosition = CLng(Me.Fields.Item("cCode").Value)
  loc_11154E6:     End If
  loc_11154E6:   End If
  loc_11154E6:   Call Proc_195_31_12EC120(var_96, var_138, var_96, var_96, var_D4)
  loc_1115507:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_111550F: End If
  loc_111550F: Exit Sub
  loc_1115510: ' Referenced from: 111520C
  loc_1115516: If (var_96 = &HFF) Then
  loc_111551F:   unk_482B5F.RollbackTrans
  loc_1115524: End If
  loc_111552A: Call 0.Method_arg_50 (var_B4, var_D4, CStr(Me.Fields.Item("cCode").Value))
  loc_111553F: Proc_183_57_104B0BC(var_B4, "TopCtrl1_eDel")
  loc_111554B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FCEFA4
  'Data Table: 482B4C
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_FCEDE0: On Error Goto loc_FCEF7C
  loc_FCEDF0: Me.LblUser.Caption = vbNullString
  loc_FCEE05: Me.LblLDt.Caption = vbNullString
  loc_FCEE1B: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_FCEE1E:   Exit Sub
  loc_FCEE1F: End If
  loc_FCEE42: Call Proc_195_29_EE9FF4(Proc_5_1_100EC1C("EDIT", Me))
  loc_FCEE5B: Set var_88 = Me.Txt
  loc_FCEE61: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_FCEE74: global_68 = var_94.Text
  loc_FCEE90: Set var_88 = Me.Txt
  loc_FCEE96: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_FCEEA9: global_72 = var_94.Text
  loc_FCEEC5: Set var_88 = Me.Txt
  loc_FCEECB: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_FCEEDE: global_76 = var_94.Text
  loc_FCEEFA: Set var_88 = Me.Txt
  loc_FCEF00: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_FCEF13: global_80 = var_94.Text
  loc_FCEF2F: Set var_88 = Me.Txt
  loc_FCEF35: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_94)
  loc_FCEF3D: var_8C = var_94.Text
  loc_FCEF48: global_84 = var_8C
  loc_FCEF61: Set var_88 = Me.Txt
  loc_FCEF67: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_FCEF6F: var_94.SetFocus
  loc_FCEF7B: Exit Sub
  loc_FCEF7C: ' Referenced from: FCEDE0
  loc_FCEF82: Call 0.Method_arg_50 (var_8C)
  loc_FCEF97: Proc_183_57_104B0BC(var_8C, "TopCtrl1_eEdit")
  loc_FCEFA3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A73C
  'Data Table: 482B4C
  loc_E1A731: Me.Global.Unload Me
  loc_E1A739: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEF6A0
  'Data Table: 482B4C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EEF5E0: On Error Goto loc_EEF678
  loc_EEF5FA: If (Me.RecordCount <= 0) Then
  loc_EEF603:   var_B8 = "Information"
  loc_EEF61E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_EEF62E:   Exit Sub
  loc_EEF62F: End If
  loc_EEF636: var_10C = "Select City.CityCode As SearchCode,City.CityName as CityName, City.ShortName as ShortName, City.STDCode as STDCode, City.ZipCode as ZipCode,State.Name as StateName, Country.Name as CountryName FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE (CITY.LOGSITE_CODE='" & MemVar_1F95078
  loc_EEF63D: MemVar_1F950E4 = var_10C & "' OR CITY.LOGSITE_CODE='HO') ORDER BY City.CityName"
  loc_EEF64A: MemVar_1F95120 = Me
  loc_EEF651: var_10C = "2000,1000,1500,900,2000,2000"
  loc_EEF657: Proc_183_54_F1EA10(var_10C)
  loc_EEF672: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEF677: Exit Sub
  loc_EEF678: ' Referenced from: EEF5E0
  loc_EEF67E: Call 0.Method_arg_50 (var_10C)
  loc_EEF693: Proc_183_57_104B0BC(var_10C, "TopCtrl1_eFind")
  loc_EEF69F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E7866C
  'Data Table: 482B4C
  loc_E78614: On Error Goto loc_E78641
  loc_E78633: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7863B: Call Proc_195_31_12EC120(global_52)
  loc_E78640: Exit Sub
  loc_E78641: ' Referenced from: E78614
  loc_E78647: Call 0.Method_arg_50 (var_94)
  loc_E7865C: Proc_183_57_104B0BC(var_94, "TopCtrl1_eFirst")
  loc_E78668: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E79EC4
  'Data Table: 482B4C
  loc_E79E6C: On Error Goto loc_E79E99
  loc_E79E8B: Proc_5_0_1107AD0(&HFF, Me)
  loc_E79E93: Call Proc_195_31_12EC120(global_52)
  loc_E79E98: Exit Sub
  loc_E79E99: ' Referenced from: E79E6C
  loc_E79E9F: Call 0.Method_arg_50 (var_94)
  loc_E79EB4: Proc_183_57_104B0BC(var_94, "TopCtrl1_eLast")
  loc_E79EC0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E784A4
  'Data Table: 482B4C
  loc_E7844C: On Error Goto loc_E78479
  loc_E7846B: Proc_5_0_1107AD0(&HFF, Me)
  loc_E78473: Call Proc_195_31_12EC120(global_52)
  loc_E78478: Exit Sub
  loc_E78479: ' Referenced from: E7844C
  loc_E7847F: Call 0.Method_arg_50 (var_94)
  loc_E78494: Proc_183_57_104B0BC(var_94, "TopCtrl1_eNext")
  loc_E784A0: Exit Sub
  loc_E784A2: ( = 3) = 
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E7D304
  'Data Table: 482B4C
  loc_E7D2AC: On Error Goto loc_E7D2D9
  loc_E7D2CB: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7D2D3: Call Proc_195_31_12EC120(global_52)
  loc_E7D2D8: Exit Sub
  loc_E7D2D9: ' Referenced from: E7D2AC
  loc_E7D2DF: Call 0.Method_arg_50 (var_94)
  loc_E7D2F4: Proc_183_57_104B0BC(var_94, "TopCtrl1_ePrev")
  loc_E7D300: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '103AEE8
  'Data Table: 482B4C
  Dim unk_482B5F As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  loc_103ACB0: On Error Goto loc_103AEBF
  loc_103ACC9: unk_482B5F.Execute "SELECT City.CityCode AS CCode, City.CityName AS CName, City.ShortName AS CShortName, City.STDCode AS CSTDCode, City.ZipCode AS CZipCode, City.Site_Code AS CSite_Code, City.U_Name AS CU_Name, City.U_EntDt AS CU_EntDt, City.U_AE AS CU_AE, State.Name AS CState, Country.Name AS CCountry FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code ORDER BY City.CityName", var_BC, -1
  loc_103ACD4: Set var_88 = var_C0
  loc_103ACE3: var_C4 = var_88.RecordCount
  loc_103ACF1: If (var_C4 = 0) Then
  loc_103AD0D:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_103AD1D:   Exit Sub
  loc_103AD1E: End If
  loc_103AD34: Set var_C0 = var_88 
  loc_103AD40: var_12E = CreateFieldDefFile(var_C0, MemVar_1F950B4 & "\City.ttx")
  loc_103AD4A: Set var_88 = var_C0
  loc_103AD50: var_AC = CVar(var_12E) 'Integer
  loc_103AD53: var_98 = var_AC 'Variant
  loc_103AD6F: var_128 = MemVar_1F950B4 & "\City.RPT"
  loc_103AD78: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_103AD83: MemVar_1F951E8 = var_C0
  loc_103AD9E: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_103ADA6: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_103ADB2: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_103ADCB:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_103ADD3:   Call 0.Method_arg_20 (var_138)
  loc_103ADDB:   Call 0.Method_arg_30 (var_128)
  loc_103AE21:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_103AE37:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_103AE3F:     Call 0.Method_arg_20 (var_138)
  loc_103AE47:     Call 0.Method_arg_38 ("'City Master'")
  loc_103AE53:   End If
  loc_103AE56: Next var_132 'Integer
  loc_103AE74: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_103AE7C: Call 0.Method_arg_2C (var_D4)
  loc_103AE8A: Call 0.Method_arg_150 (var_F4)
  loc_103AE95: Call 0.Method_arg_50 (var_128)
  loc_103AEAE: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_103AEBB: Set var_88 = Nothing
  loc_103AEBE: Exit Sub
  loc_103AEBF: ' Referenced from: 103ACB0
  loc_103AEC5: Call 0.Method_arg_50 (var_128, var_128)
  loc_103AEDA: Proc_183_57_104B0BC(var_128, "TopCtrl1_ePrn")
  loc_103AEE6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E68174
  'Data Table: 482B4C
  Dim Me As Recordset15
  loc_E68128: On Error Goto loc_E6814C
  loc_E68136: Me.Requery -1
  loc_E68146: Me.Requery -1
  loc_E6814B: Exit Sub
  loc_E6814C: ' Referenced from: E68128
  loc_E68152: Call 0.Method_arg_50 (var_88)
  loc_E6815A: var_90 = "TopCtrl1_eRef"
  loc_E68167: Proc_183_57_104B0BC(var_88)
  loc_E68173: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13A71F8
  'Data Table: 482B4C
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D0 As String
  Dim var_CC As TextBox
  Dim var_A4 As String
  Dim var_F0 As Variant
  Dim unk_482B5F As Connection15
  Dim var_94 As Variant
  Dim var_C8 As Field20
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_E0 As Variant
  Dim var_114 As Variant
  Dim Me As Recordset15
  Dim var_11C As String
  Dim var_124 As String
  Dim var_130 As TextBox
  Dim var_144 As TextBox
  Dim var_158 As TextBox
  Dim var_16C As TextBox
  Dim var_180 As String
  Dim var_1B0 As Variant
  Dim var_1D4 As String
  Dim var_120 As String
  Dim var_170 As String
  Dim var_1F4 As Variant
  loc_13A6980: On Error Goto loc_13A71B8
  loc_13A6987: var_86 = CByte(0) 'Byte
  loc_13A6999: Set var_94 = Me.Txt
  loc_13A699F: Call 0.Method_TopCtrl1_UnknownEvent_16C (var_96, var_88)
  loc_13A69AF: For var_9A =  To CByte((var_96 - 1)): CByte(0) = var_9A 'Byte
  loc_13A69C5:   Set var_94 = Me.Txt
  loc_13A69CB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_A0)
  loc_13A69DB:   var_B4 = CVar(var_A0.Text) 'String
  loc_13A69E1:   var_C4 = Trim(var_B4)
  loc_13A69FA:   Set var_C8 = Me.Txt
  loc_13A6A00:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_CC)
  loc_13A6A08:   var_CC.Text = CStr(var_C4)
  loc_13A6A25: Next var_9A 'Byte
  loc_13A6A36: Set var_94 = Me.Txt
  loc_13A6A3C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13A6A65: If (Proc_183_19_E8E68C(var_A0, "Name") = 0) Then
  loc_13A6A6F:   Call Txt_GotFocus(CInt(0))
  loc_13A6A74:   Exit Sub
  loc_13A6A75: End If
  loc_13A6A80: Set var_94 = Me.Txt
  loc_13A6A86: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0)
  loc_13A6AAF: If (Proc_183_19_E8E68C(var_A0, "Short Name") = 0) Then
  loc_13A6AB9:   Call Txt_GotFocus(CInt(1))
  loc_13A6ABE:   Exit Sub
  loc_13A6ABF: End If
  loc_13A6ACA: Set var_94 = Me.Txt
  loc_13A6AD0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A0)
  loc_13A6AF9: If (Proc_183_19_E8E68C(var_A0, "State") = 0) Then
  loc_13A6B03:   Call Txt_GotFocus(CInt(4))
  loc_13A6B08:   Exit Sub
  loc_13A6B09: End If
  loc_13A6B0C: Call Proc_195_32_1090048(var_96)
  loc_13A6B17: If (var_96 = &HFF) Then
  loc_13A6B1A:   Exit Sub
  loc_13A6B1B: End If
  loc_13A6B1F: Set var_94 = Me.TopCtrl1
  loc_13A6B25: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A0)
  loc_13A6B3E: If (CStr() = "Add") Then
  loc_13A6B47:   var_F0 = 0
  loc_13A6B64:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(CityCode,3,4) AS INT)),1)+1 AS MyCode From City WHERE SITE_CODE='" & MemVar_1F95070
  loc_13A6B74:   unk_482B5F.Execute CStr() & "'", var_B4, -1
  loc_13A6B7C:   var_94 = var_94.Fields
  loc_13A6B84:   var_F0 = var_A0.Item(var_A0)
  loc_13A6B8C:   var_C8 = var_C8.Value
  loc_13A6BC5:   var_104 = CVar(Proc_183_15_EAD490(MemVar_1F95070, 2)) 'String
  loc_13A6BEB:   var_C4 = Format(CStr(var_C4), "0000")
  loc_13A6BF3:   var_114 = (1 + var_C4)
  loc_13A6BFE:   global_64 = CStr(var_114)
  loc_13A6C13: Else
  loc_13A6C30:   var_A0 = Me.Fields.Item("cCode")
  loc_13A6C41:   var_A4 = CStr(var_A0.Value)
  loc_13A6C47:   global_64 = var_A4
  loc_13A6C58: End If
  loc_13A6C66: Set var_94 = Me.Txt
  loc_13A6C6C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A4)
  loc_13A6C74: 1 = var_A0.Text
  loc_13A6C7C: var_D0 = var_A4
  loc_13A6CA1: unk_482B5F.BeginTrans var_118
  loc_13A6CAA: var_86 = CByte(1) 'Byte
  loc_13A6CB2: Set var_94 = Me.TopCtrl1
  loc_13A6CB8: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_13A6CD1: If (CStr() = "Add") Then
  loc_13A6CEB:   var_A4 = "Insert Into City(CityCode,CityName,ShortName,STDCode,ZipCode,State,Country,CityHelp,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_64
  loc_13A6CF2:   var_F4 = var_A4 & "','"
  loc_13A6D03:   Set var_94 = Me.Txt
  loc_13A6D09:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_D0, var_F4)
  loc_13A6D11:   var_1F4 = var_A0.Text
  loc_13A6D1A:   var_11C = -1 & var_D0
  loc_13A6D21:   var_124 = var_11C & "','"
  loc_13A6D32:   Set var_C8 = Me.Txt
  loc_13A6D38:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC, var_120)
  loc_13A6D40:   var_124 = var_CC.Text
  loc_13A6D61:   Set var_12C = Me.Txt
  loc_13A6D67:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_130)
  loc_13A6D90:   Set var_140 = Me.Txt
  loc_13A6D96:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_144)
  loc_13A6DBF:   Set var_154 = Me.Txt
  loc_13A6DC5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_158)
  loc_13A6DEE:   Set var_168 = Me.Txt
  loc_13A6DF4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_16C)
  loc_13A6E13:   var_180 = var_1F8 & var_120 & "','" & var_130.Text & "','" & var_144.Text & "','" & var_158.Tag & "','" & var_16C.Tag & "','" & Proc_183_20_FB48CC(var_D0, var_104)
  loc_13A6E47:   Proc_183_7_EB17D4(var_C4, Date)
  loc_13A6E6F:   var_1D4 = CStr(CVar(var_180 & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") & var_C4 & ",'A','" & CVar(MemVar_1F95078) & "')")
  loc_13A6E79:   unk_482B5F.Execute var_1D4, , 
  loc_13A6EE8: Else
  loc_13A6F06:   Set var_94 = Me.Txt
  loc_13A6F0C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A4, "UPDATE City SET CityName='")
  loc_13A6F14:   var_238 = var_A0.Text
  loc_13A6F1D:   var_D0 = -1 & var_A4
  loc_13A6F24:   var_11C = var_D0 & "',ShortName = '"
  loc_13A6F35:   Set var_C8 = Me.Txt
  loc_13A6F3B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC, var_F4)
  loc_13A6F43:   var_11C = var_CC.Text
  loc_13A6F64:   Set var_12C = Me.Txt
  loc_13A6F6A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_130)
  loc_13A6F93:   Set var_140 = Me.Txt
  loc_13A6F99:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_144)
  loc_13A6FC2:   Set var_154 = Me.Txt
  loc_13A6FC8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_158)
  loc_13A6FF1:   Set var_168 = Me.Txt
  loc_13A6FF7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_16C)
  loc_13A7008:   var_170 = var_1F8 & var_F4 & "',STDCode='" & var_130.Text & "',ZipCode='" & var_144.Text & "',State='" & var_158.Tag & "',Country='" & var_16C.Tag
  loc_13A703C:   Proc_183_7_EB17D4(var_C4, Date)
  loc_13A7048:   var_E0 = " ,U_AE='E',LOGSITE_CODE='"
  loc_13A7057:   var_1B0 = CVar(var_170 & "',SITE_CODE='" & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") & var_C4 & var_E0 & CVar(MemVar_1F95078) 
  loc_13A7084:   unk_482B5F.Execute CStr(var_1B0 & "' WHERE CityCode='" & CVar(global_64) & "'"), , 
  loc_13A70EC: End If
  loc_13A70F2: unk_482B5F.CommitTrans
  loc_13A70FB: var_86 = CByte(0) 'Byte
  loc_13A710A: Me.Requery -1
  loc_13A711A: Me.Requery -1
  loc_13A7147: Me.Find "CCode='" & global_64 & "'", 0, 1
  loc_13A7157: Set var_94 = Me.TopCtrl1
  loc_13A715D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E0)
  loc_13A7176: If (CStr() = "Add") Then
  loc_13A7179:   Call TopCtrl1_UnknownEvent_A()
  loc_13A717E:   Exit Sub
  loc_13A717F: End If
  loc_13A7194: var_A4 = "INI"
  loc_13A71A2: Call Proc_195_29_EE9FF4(Proc_5_1_100EC1C(var_A4, Me))
  loc_13A71AD: Call Proc_195_36_E857E8(global_52)
  loc_13A71B2: Call Proc_195_31_12EC120()
  loc_13A71B7: Exit Sub
  loc_13A71B8: ' Referenced from: 13A6980
  loc_13A71C1: If (CInt(var_86) = 1) Then
  loc_13A71CA:   unk_482B5F.RollbackTrans
  loc_13A71CF: End If
  loc_13A71D5: Call 0.Method_arg_50 (var_A4)
  loc_13A71DD: var_F4 = "TopCtrl1_eSave"
  loc_13A71EA: Proc_183_57_104B0BC(var_A4)
  loc_13A71F6: Exit Sub
End Sub

Private Sub CmdRef_Click() 'F9D67C
  'Data Table: 482B4C
  Dim Me As Recordset15
  Dim var_C8 As TextBox
  loc_F9D504: Set var_88 = Me.TopCtrl1
  loc_F9D50A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F9D523: If (CStr() = "Browse") Then
  loc_F9D526:   Exit Sub
  loc_F9D527: End If
  loc_F9D531: Set var_A0 = New FaStateMast
  loc_F9D543: var_A0.OpenMode = 1
  loc_F9D54D: var_A0.Caption = "State Master"
  loc_F9D558: Call 0.Method_arg_70 (var_C4)
  loc_F9D563: Form.Left = var_C4
  loc_F9D56E: Call 0.Method_arg_78 (var_C4)
  loc_F9D57F: Form.Top = (var_C4 + CDbl(1500))
  loc_F9D58C: Form.Height = CDbl(7500)
  loc_F9D5A1: Form.Show 1, var_C0
  loc_F9D5B1: Me.Requery -1
  loc_F9D5C4: Set var_88 = Me.Txt
  loc_F9D5CA: Call 0.Method_CmdRef_Click0 (CInt(5), var_C8)
  loc_F9D5D2: var_C8.Text = vbNullString
  loc_F9D5EC: Set var_88 = Me.Txt
  loc_F9D5F2: Call 0.Method_CmdRef_Click0 (CInt(5), var_C8)
  loc_F9D5FA: var_C8.Tag = vbNullString
  loc_F9D614: Set var_88 = Me.Txt
  loc_F9D61A: Call 0.Method_CmdRef_Click0 (CInt(4), var_C8)
  loc_F9D622: var_C8.Text = vbNullString
  loc_F9D63C: Set var_88 = Me.Txt
  loc_F9D642: Call 0.Method_CmdRef_Click0 (CInt(4), var_C8)
  loc_F9D64A: var_C8.Tag = vbNullString
  loc_F9D661: Set var_88 = Me.Txt
  loc_F9D667: Call 0.Method_CmdRef_Click0 (CInt(4))
  loc_F9D66F: var_C8.SetFocus
  loc_F9D67B: Exit Sub
End Sub

Public Property Get OpenMode() 'E06550
  'Data Table: 482B4C
  loc_E06549: OpenMode = global_88
End Sub

Public Property Let OpenMode(vNewValue) 'E02F80
  'Data Table: 482B4C
  loc_E02F7A: global_88 = vNewValue
  loc_E02F7D: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E916C8
  'Data Table: 482B4C
  Dim Me As Recordset15
  Dim var_8C As String
  loc_E9165A: On Error Goto loc_E9169F
  loc_E91663: Me.MoveFirst
  loc_E9167D: var_8C = "CCode='" & MyValue
  loc_E9168D: Me.Find var_8C & "'", 0, 1
  loc_E91699: Call Proc_195_31_12EC120(var_A0)
  loc_E9169E: Exit Sub
  loc_E9169F: ' Referenced from: E9165A
  loc_E916A5: Call 0.Method_arg_50 (var_8C)
  loc_E916AD: var_A4 = "SEARCHBACK"
  loc_E916BA: Proc_183_57_104B0BC(var_8C)
  loc_E916C6: Exit Sub
End Sub

Public Sub Proc_195_29_EE9FF4(arg_C) 'EE9FF4
  'Data Table: 482B4C
  Dim var_98 As TextBox
  loc_EE9F34: On Error Goto loc_EE9FCB
  loc_EE9F45: Set var_8C = Me.Txt
  loc_EE9F4B: Call 0.Method_Proc_195_29_EE9FF4C (var_8E, var_86)
  loc_EE9F5B: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE9F68:   If (var_86 = 5) Then
  loc_EE9F7A:     Set var_8C = Me.Txt
  loc_EE9F80:     Call 0.Method_Proc_195_29_EE9FF40 (CInt(var_86), var_98)
  loc_EE9F88:     var_98.Enabled = False
  loc_EE9F97:   Else
  loc_EE9FA7:     Set var_8C = Me.Txt
  loc_EE9FAD:     Call 0.Method_Proc_195_29_EE9FF40 (CInt(var_86), var_98)
  loc_EE9FB5:     var_98.Enabled = arg_C
  loc_EE9FC1:   End If
  loc_EE9FC4: Next var_92 'Byte
  loc_EE9FCA: Exit Sub
  loc_EE9FCB: ' Referenced from: EE9F34
  loc_EE9FD1: Call 0.Method_arg_50 (var_9C)
  loc_EE9FD9: var_A4 = "Disp_Text"
  loc_EE9FE6: Proc_183_57_104B0BC(var_9C)
  loc_EE9FF2: Exit Sub
End Sub

Public Sub Proc_195_30_F0BD44
  'Data Table: 482B4C
  Dim var_98 As TextBox
  loc_F0BC5C: On Error Goto loc_F0BD19
  loc_F0BC65: global_68 = vbNullString
  loc_F0BC6F: global_72 = vbNullString
  loc_F0BC79: global_76 = vbNullString
  loc_F0BC83: global_80 = vbNullString
  loc_F0BC8D: global_84 = vbNullString
  loc_F0BC9F: Set var_8C = Me.Txt
  loc_F0BCA5: Call 0.Method_Proc_195_30_F0BD44C (var_8E, var_86)
  loc_F0BCB5: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F0BCCB:   Set var_8C = Me.Txt
  loc_F0BCD1:   Call 0.Method_Proc_195_30_F0BD440 (CInt(var_86), var_98)
  loc_F0BCD9:   var_98.Text = vbNullString
  loc_F0BCF5:   Set var_8C = Me.Txt
  loc_F0BCFB:   Call 0.Method_Proc_195_30_F0BD440 (CInt(var_86), var_98)
  loc_F0BD03:   var_98.Tag = vbNullString
  loc_F0BD12: Next var_92 'Byte
  loc_F0BD18: Exit Sub
  loc_F0BD19: ' Referenced from: F0BC5C
  loc_F0BD1F: Call 0.Method_arg_50 (var_9C)
  loc_F0BD27: var_A4 = "BlankText"
  loc_F0BD34: Proc_183_57_104B0BC(var_9C)
  loc_F0BD40: Exit Sub
End Sub

Public Sub Proc_195_31_12EC120
  'Data Table: 482B4C
  Dim Me As Recordset15
  Dim var_F4 As String
  Dim unk_482B79 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_1CC As String
  Dim var_11C As TextBox
  loc_12EBA84: On Error Goto loc_12EC0F7
  loc_12EBA8D: Proc_183_45_E5CCA8(global_52)
  loc_12EBAE8: unk_482B79.Execute CStr("Select U_Name,U_AE,U_EntDt From city where cityCode='" & Me.Fields.Item("cCode").Value & "'  "), var_114, -1
  loc_12EBAF3: Set var_88 = var_118
  loc_12EBB47: var_118 = var_88.Fields
  loc_12EBBB0: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_12EBBF5: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_12EBC6F: var_11C = var_88.Fields.Item("U_AE")
  loc_12EBCD0: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_12EBD15: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_12EBD64: If (Me.RecordCount <= 0) Then
  loc_12EBD67:   Call Proc_195_30_F0BD44()
  loc_12EBD6F: Else
  loc_12EBDA3:   global_64 = CStr(Me.Fields.Item("CName").Value)
  loc_12EBDF0:   Set var_118 = Me.Txt
  loc_12EBDF6:   Call 0.Method_Proc_195_31_12EC1200 (CInt(0), var_11C)
  loc_12EBDFE:   var_11C.Tag = CStr(Me.Fields.Item("cCode").Value)
  loc_12EBE50:   Set var_118 = Me.Txt
  loc_12EBE56:   Call 0.Method_Proc_195_31_12EC1200 (CInt(0), var_11C)
  loc_12EBE5E:   var_11C.Text = CStr(Me.Fields.Item("CName").Value)
  loc_12EBEB0:   Set var_118 = Me.Txt
  loc_12EBEB6:   Call 0.Method_Proc_195_31_12EC1200 (CInt(1), var_11C)
  loc_12EBEBE:   var_11C.Text = CStr(Me.Fields.Item("CShortName").Value)
  loc_12EBF0D:   Set var_118 = Me.Txt
  loc_12EBF13:   Call 0.Method_Proc_195_31_12EC1200 (CInt(2), var_11C)
  loc_12EBF1B:   var_11C.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("CSTDCode")))
  loc_12EBF68:   Set var_118 = Me.Txt
  loc_12EBF6E:   Call 0.Method_Proc_195_31_12EC1200 (CInt(3), var_11C)
  loc_12EBF76:   var_11C.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("CZipCode")))
  loc_12EBFC3:   Set var_118 = Me.Txt
  loc_12EBFC9:   Call 0.Method_Proc_195_31_12EC1200 (CInt(4), var_11C)
  loc_12EBFD1:   var_11C.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("CState")))
  loc_12EC01E:   Set var_118 = Me.Txt
  loc_12EC024:   Call 0.Method_Proc_195_31_12EC1200 (CInt(4), var_11C)
  loc_12EC02C:   var_11C.Tag = Proc_183_2_E5AE94(CVar(Me.Fields.Item("CityState")))
  loc_12EC079:   Set var_118 = Me.Txt
  loc_12EC07F:   Call 0.Method_Proc_195_31_12EC1200 (CInt(5), var_11C)
  loc_12EC087:   var_11C.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("CCountry")))
  loc_12EC0C6:   var_F4 = Proc_183_2_E5AE94(CVar(Me.Fields.Item("CityCntry")))
  loc_12EC0D4:   Set var_118 = Me.Txt
  loc_12EC0DA:   Call 0.Method_Proc_195_31_12EC1200 (CInt(5), var_11C)
  loc_12EC0E2:   var_11C.Tag = var_F4
  loc_12EC0F6: End If
  loc_12EC0F6: Exit Sub
  loc_12EC0F7: ' Referenced from: 12EBA84
  loc_12EC0FD: Call 0.Method_arg_50 (var_F4)
  loc_12EC105: var_1CC = "MoveRec"
  loc_12EC112: Proc_183_57_104B0BC(var_F4)
  loc_12EC11E: Exit Sub
End Sub

Public Sub Proc_195_32_1090048
  'Data Table: 482B4C
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_482B5F As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_108FDB8: On Error Goto loc_1090019
  loc_108FDD2: If (Me.RecordCount = 0) Then
  loc_108FDD5:   Proc_195_32_1090048 = 
  loc_108FDDB: End If
  loc_108FDDF: Set var_90 = Me.TopCtrl1
  loc_108FDE5: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108FDED: var_A4 = CStr()
  loc_108FDFE: If (var_A4 = "Add") Then
  loc_108FE2E:   Set var_90 = Me.Txt
  loc_108FE34:   Call 0.Method_Proc_195_32_10900480 (CInt(0), var_A8, var_A4, "Select Count(*) From City Where CityName='", var_A0, -1)
  loc_108FE55:   unk_482B5F.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_108FE65:    = var_C8.Item()
  loc_108FE6D:    = var_DC.Value
  loc_108FE9A:   If (var_A8.Text.Fields > 0) Then
  loc_108FEB8:     var_A0 = "Duplicate Name"
  loc_108FEBE:     MsgBox(var_A0, &H40, "Information", var_10C, var_12C)
  loc_108FED9:     Set var_90 = Me.Txt
  loc_108FEDF:     Call 0.Method_Proc_195_32_10900480 (CInt(0))
  loc_108FEE7:     var_A8.SetFocus
  loc_108FEF8:     Proc_195_32_1090048 = &HFF
  loc_108FEFE:   End If
  loc_108FF01: Else
  loc_108FF2E:   Set var_90 = Me.Txt
  loc_108FF34:   Call 0.Method_Proc_195_32_10900480 (CInt(0), var_A8, var_A4, "Select Count(*) From City Where CityName='", var_A0, -1)
  loc_108FF66:   unk_482B5F.Execute var_C8 & var_A4 & "' And CityName<>'" & global_68 & "'", 0, var_DC
  loc_108FF76:    = var_C8.Item(var_A8)
  loc_108FF7E:    = var_DC.Value
  loc_108FFAF:   If (var_A8.Text.Fields > 0) Then
  loc_108FFD3:     MsgBox("Duplicate Name", &H40, "Information", var_10C, var_12C)
  loc_108FFEE:     Set var_90 = Me.Txt
  loc_108FFF4:     Call 0.Method_Proc_195_32_10900480 (CInt(0))
  loc_108FFFC:     var_A8.SetFocus
  loc_109000D:     Proc_195_32_1090048 = &HFF
  loc_1090013:   End If
  loc_1090013: End If
  loc_1090013: Proc_195_32_1090048 = var_A8
  loc_1090019: ' Referenced from: 108FDB8
  loc_109001F: Call 0.Method_arg_50 (var_A4)
  loc_1090034: Proc_183_57_104B0BC(var_A4)
  loc_1090040: Proc_195_32_1090048 = "ValidateName"
End Sub

Public Sub Proc_195_33_107048C
  'Data Table: 482B4C
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_482B5F As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_107021C: On Error Goto loc_107045D
  loc_1070223: Set var_8C = Me.TopCtrl1
  loc_1070229: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1070231: var_A0 = CStr()
  loc_1070242: If (var_A0 = "Add") Then
  loc_1070272:   Set var_8C = Me.Txt
  loc_1070278:   Call 0.Method_Proc_195_33_107048C0 (CInt(1), var_A4, var_A0, "Select Count(*) From City Where ShortName='", var_9C, -1)
  loc_1070299:   unk_482B5F.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_10702A9:    = var_C4.Item()
  loc_10702B1:    = var_D8.Value
  loc_10702DE:   If (var_A4.Text.Fields > 0) Then
  loc_10702FC:     var_9C = "Duplicate Short Name"
  loc_1070302:     MsgBox(var_9C, &H40, "Information", var_108, var_128)
  loc_107031D:     Set var_8C = Me.Txt
  loc_1070323:     Call 0.Method_Proc_195_33_107048C0 (CInt(1))
  loc_107032B:     var_A4.SetFocus
  loc_107033C:     Proc_195_33_107048C = &HFF
  loc_1070342:   End If
  loc_1070345: Else
  loc_1070372:   Set var_8C = Me.Txt
  loc_1070378:   Call 0.Method_Proc_195_33_107048C0 (CInt(1), var_A4, var_A0, "Select Count(*) From City Where ShortName='", var_9C, -1)
  loc_10703AA:   unk_482B5F.Execute var_C4 & var_A0 & "' And ShortName<>'" & global_72 & "'", 0, var_D8
  loc_10703BA:    = var_C4.Item(var_A4)
  loc_10703C2:    = var_D8.Value
  loc_10703F3:   If (var_A4.Text.Fields > 0) Then
  loc_1070417:     MsgBox("Duplicate Short Name", &H40, "Information", var_108, var_128)
  loc_1070432:     Set var_8C = Me.Txt
  loc_1070438:     Call 0.Method_Proc_195_33_107048C0 (CInt(1))
  loc_1070440:     var_A4.SetFocus
  loc_1070451:     Proc_195_33_107048C = &HFF
  loc_1070457:   End If
  loc_1070457: End If
  loc_1070457: Proc_195_33_107048C = var_A4
  loc_107045D: ' Referenced from: 107021C
  loc_1070463: Call 0.Method_arg_50 (var_A0)
  loc_1070478: Proc_183_57_104B0BC(var_A0)
  loc_1070484: Proc_195_33_107048C = "ValidateSName"
End Sub

Public Sub Proc_195_34_10BD054
  'Data Table: 482B4C
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_94 As String
  Dim unk_482B5F As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  loc_10BCD90: On Error Goto loc_10BD027
  loc_10BCDA1: Set var_8C = Me.Txt
  loc_10BCDA7: Call 0.Method_Proc_195_34_10BD0540 (CInt(2), var_90)
  loc_10BCDB7: var_A4 = CVar(var_90.Text) 'String
  loc_10BCDDB: If (Trim(var_A4) = vbNullString) Then
  loc_10BCDE3:   Proc_195_34_10BD054 = 0
  loc_10BCDE9: End If
  loc_10BCDED: Set var_8C = Me.TopCtrl1
  loc_10BCDF3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10BCDFB: var_94 = CStr()
  loc_10BCE0C: If (var_94 = "Add") Then
  loc_10BCE3C:   Set var_8C = Me.Txt
  loc_10BCE42:   Call 0.Method_Proc_195_34_10BD0540 (CInt(2), var_90, var_94, "Select Count(*) From City Where STDCode='", var_A4, -1)
  loc_10BCE63:   unk_482B5F.Execute var_E4 & var_94 & "'", 0, var_F8
  loc_10BCE73:    = var_E4.Item()
  loc_10BCE7B:    = var_F8.Value
  loc_10BCEA8:   If (var_90.Text.Fields > 0) Then
  loc_10BCEC6:     var_A4 = "Duplicate STD Code"
  loc_10BCECC:     MsgBox(var_A4, &H40, "Information", var_D4, var_128)
  loc_10BCEE7:     Set var_8C = Me.Txt
  loc_10BCEED:     Call 0.Method_Proc_195_34_10BD0540 (CInt(2))
  loc_10BCEF5:     var_90.SetFocus
  loc_10BCF06:     Proc_195_34_10BD054 = &HFF
  loc_10BCF0C:   End If
  loc_10BCF0F: Else
  loc_10BCF3C:   Set var_8C = Me.Txt
  loc_10BCF42:   Call 0.Method_Proc_195_34_10BD0540 (CInt(2), var_90, var_94, "Select Count(*) From City Where STDCode='", var_A4, -1)
  loc_10BCF74:   unk_482B5F.Execute var_E4 & var_94 & "' And STDCode<>'" & global_76 & "'", 0, var_F8
  loc_10BCF84:    = var_E4.Item(var_90)
  loc_10BCF8C:    = var_F8.Value
  loc_10BCFBD:   If (var_90.Text.Fields > 0) Then
  loc_10BCFE1:     MsgBox("Duplicate STD Code", &H40, "Information", var_D4, var_128)
  loc_10BCFFC:     Set var_8C = Me.Txt
  loc_10BD002:     Call 0.Method_Proc_195_34_10BD0540 (CInt(2))
  loc_10BD00A:     var_90.SetFocus
  loc_10BD01B:     Proc_195_34_10BD054 = &HFF
  loc_10BD021:   End If
  loc_10BD021: End If
  loc_10BD021: Proc_195_34_10BD054 = var_90
  loc_10BD027: ' Referenced from: 10BCD90
  loc_10BD02D: Call 0.Method_arg_50 (var_94)
  loc_10BD042: Proc_183_57_104B0BC(var_94)
  loc_10BD04E: Proc_195_34_10BD054 = "ValidateSTD"
End Sub

Public Sub Proc_195_35_10BD6AC
  'Data Table: 482B4C
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_94 As String
  Dim unk_482B5F As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  loc_10BD3E8: On Error Goto loc_10BD67F
  loc_10BD3F9: Set var_8C = Me.Txt
  loc_10BD3FF: Call 0.Method_Proc_195_35_10BD6AC0 (CInt(3), var_90)
  loc_10BD40F: var_A4 = CVar(var_90.Text) 'String
  loc_10BD433: If (Trim(var_A4) = vbNullString) Then
  loc_10BD43B:   Proc_195_35_10BD6AC = 0
  loc_10BD441: End If
  loc_10BD445: Set var_8C = Me.TopCtrl1
  loc_10BD44B: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10BD453: var_94 = CStr()
  loc_10BD464: If (var_94 = "Add") Then
  loc_10BD494:   Set var_8C = Me.Txt
  loc_10BD49A:   Call 0.Method_Proc_195_35_10BD6AC0 (CInt(3), var_90, var_94, "Select Count(*) From City Where ZipCode='", var_A4, -1)
  loc_10BD4BB:   unk_482B5F.Execute var_E4 & var_94 & "'", 0, var_F8
  loc_10BD4CB:    = var_E4.Item()
  loc_10BD4D3:    = var_F8.Value
  loc_10BD500:   If (var_90.Text.Fields > 0) Then
  loc_10BD51E:     var_A4 = "Duplicate Zip Code"
  loc_10BD524:     MsgBox(var_A4, &H40, "Information", var_D4, var_128)
  loc_10BD53F:     Set var_8C = Me.Txt
  loc_10BD545:     Call 0.Method_Proc_195_35_10BD6AC0 (CInt(3))
  loc_10BD54D:     var_90.SetFocus
  loc_10BD55E:     Proc_195_35_10BD6AC = &HFF
  loc_10BD564:   End If
  loc_10BD567: Else
  loc_10BD594:   Set var_8C = Me.Txt
  loc_10BD59A:   Call 0.Method_Proc_195_35_10BD6AC0 (CInt(3), var_90, var_94, "Select Count(*) From City Where ZipCode='", var_A4, -1)
  loc_10BD5CC:   unk_482B5F.Execute var_E4 & var_94 & "' And ZipCode<>'" & global_80 & "'", 0, var_F8
  loc_10BD5DC:    = var_E4.Item(var_90)
  loc_10BD5E4:    = var_F8.Value
  loc_10BD615:   If (var_90.Text.Fields > 0) Then
  loc_10BD639:     MsgBox("Duplicate Zip Code", &H40, "Information", var_D4, var_128)
  loc_10BD654:     Set var_8C = Me.Txt
  loc_10BD65A:     Call 0.Method_Proc_195_35_10BD6AC0 (CInt(3))
  loc_10BD662:     var_90.SetFocus
  loc_10BD673:     Proc_195_35_10BD6AC = &HFF
  loc_10BD679:   End If
  loc_10BD679: End If
  loc_10BD679: Proc_195_35_10BD6AC = var_90
  loc_10BD67F: ' Referenced from: 10BD3E8
  loc_10BD685: Call 0.Method_arg_50 (var_94)
  loc_10BD69A: Proc_183_57_104B0BC(var_94)
  loc_10BD6A6: Proc_195_35_10BD6AC = "ValidateZip"
End Sub

Public Sub Proc_195_36_E857E8
  'Data Table: 482B4C
  Dim var_A8 As Variant
  loc_E85794: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E857A6:   Me.DGHelp.Visible = False
  loc_E857AE: End If
  loc_E857CA: If (CBool(Me.DGSName.Visible) = &HFF) Then
  loc_E857DC:   Me.DGSName.Visible = False
  loc_E857E4: End If
  loc_E857E4: Exit Sub
  loc_E857E5: var_A8 = 
End Sub

Public Sub Proc_195_37_ED00FC(arg_C) 'ED00FC
  'Data Table: 482B4C
  Dim var_10C As TextBox
  loc_ED0064: On Error Goto loc_ED00D3
  loc_ED0067: Call Proc_195_36_E857E8()
  loc_ED00A3: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_ED00A6:   Call TopCtrl1_UnknownEvent_16()
  loc_ED00AE: Else
  loc_ED00B8:   Set var_108 = Me.Txt
  loc_ED00BE:   Call 0.Method_Proc_195_37_ED00FC0 (arg_C)
  loc_ED00C6:   var_10C.SetFocus
  loc_ED00D2: End If
  loc_ED00D2: Exit Sub
  loc_ED00D3: ' Referenced from: ED0064
  loc_ED00D9: Call 0.Method_arg_50 (var_110)
  loc_ED00EE: Proc_183_57_104B0BC(var_110, "SaveMsg")
  loc_ED00FA: Exit Sub
End Sub
