VERSION 5.00
Begin VB.Form FacilitySundry
  Caption = "Outlet Bill Sundry Setting"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11340
  ClientHeight = 7230
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11340
    Height = 420
    TabIndex = 19
  End
  Begin Frame PwdFrame
    Caption = "Change Password"
    Left = 6210
    Top = 5745
    Width = 3570
    Height = 1230
    Visible = 0   'False
    TabIndex = 17
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdChange
      Caption = "Change"
      Left = 855
      Top = 705
      Width = 780
      Height = 330
      Visible = 0   'False
      TabIndex = 14
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdCancel
      Caption = "Cancel"
      Left = 1845
      Top = 705
      Width = 780
      Height = 330
      Visible = 0   'False
      TabIndex = 15
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox Txt
      Index = 2
      Left = 1590
      Top = 285
      Width = 1245
      Height = 285
      TabIndex = 13
      PasswordChar = "*"
      MaxLength = 8
    End
    Begin Label Label1
      Caption = "New Password"
      Left = 255
      Top = 300
      Width = 1140
      Height = 285
      TabIndex = 18
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin TextBox txtPassword
    ForeColor = &HFF0000&
    Left = 1080
    Top = 6540
    Width = 1365
    Height = 315
    TabIndex = 11
    PasswordChar = "#"
  End
  Begin Frame Frame1
    Left = 11040
    Top = 1815
    Width = 555
    Height = 2040
    TabIndex = 8
    BorderStyle = 0 'None
    Begin CommandButton CmdUp
      Caption = "á"
      BackColor = &H808080&
      Left = 90
      Top = 270
      Width = 390
      Height = 630
      TabIndex = 10
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton CmdDown
      Caption = "â"
      BackColor = &H808080&
      Left = 83
      Top = 1125
      Width = 390
      Height = 630
      TabIndex = 9
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin DataGrid DGSundry
    Left = 9945
    Top = 1815
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGRevenue
    Left = 9555
    Top = 1530
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin DataGrid DGVType
    Left = 9240
    Top = 1215
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1815
    Top = 600
    Width = 1425
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Tahoma"
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
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1065
    Top = 2460
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 45
    Top = 1200
    Width = 10890
    Height = 4275
    TabIndex = 2
  End
  Begin CommandButton CmdPwd
    Caption = "Change Password"
    Left = 3030
    Top = 6540
    Width = 1725
    Height = 330
    Visible = 0   'False
    TabIndex = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin Label LblName
    Caption = "Password"
    Index = 2
    ForeColor = &HFF0000&
    Left = 30
    Top = 6540
    Width = 945
    Height = 240
    TabIndex = 16
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblDepart
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 5730
    Top = 420
    Width = 3885
    Height = 510
    Visible = 0   'False
    TabIndex = 7
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "App.Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 225
    Top = 600
    Width = 780
    Height = 240
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FacilitySundry"

Private global_68 As Integer
Private global_70 As Integer
Private MasterFormExit As Integer

Private Sub CmdPwd_Click() 'EC99F4
  'Data Table: 4E0094
  Dim var_88 As Variant
  Dim var_90 As Variant
  loc_EC9954: Me.PwdFrame.Visible = True
  loc_EC997B: Set var_90 = Me.PwdFrame
  loc_EC9981: var_90.Left = (Me.CmdPwd.Width + CDbl(1455))
  loc_EC9999: Me.CmdChange.Visible = True
  loc_EC99AD: Me.CmdCancel.Visible = True
  loc_EC99C1: Me.CmdPwd.Enabled = False
  loc_EC99D7: Set var_88 = Me.Txt
  loc_EC99DD: Call 0.Method_CmdPwd_Click0 (CInt(2), var_90)
  loc_EC99E5: var_90.Text = vbNullString
  loc_EC99F1: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_9 '103C3CC
  'Data Table: 4E0094
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_103C18B: Me.DGRevenue.Visible = False
  loc_103C1AA: If (Me.RecordCount > 0) Then
  loc_103C1C0:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C1C8:   var_E4 = CVar(CLng(&HF)) 'Long
  loc_103C1FB:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_103C203:   Set var_128 = Me.FGrid
  loc_103C209:   LateIdCallSt
  loc_103C238:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C240:   var_E4 = CVar(CLng(&HD)) 'Long
  loc_103C273:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_103C27B:   Set var_128 = Me.FGrid
  loc_103C281:   LateIdCallSt
  loc_103C2DC:   If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_103C2F2:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C2FA:     var_D4 = CVar(CLng(&HB)) 'Long
  loc_103C2FF:     var_F4 = "+"
  loc_103C309:     Set var_B0 = Me.FGrid
  loc_103C30F:     LateIdCallSt
  loc_103C324:   Else
  loc_103C363:     If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_103C379:       var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C381:       var_D4 = CVar(CLng(&HB)) 'Long
  loc_103C386:       var_F4 = "-"
  loc_103C390:       Set var_B0 = Me.FGrid
  loc_103C396:       LateIdCallSt
  loc_103C3A8:     End If
  loc_103C3A8:   End If
  loc_103C3A8: End If
  loc_103C3B1: Set var_A8 = Me.TxtGrid
  loc_103C3B7: Call 0.Method_DGRevenue_UnknownEvent_90 (0, var_B0, var_B0, var_F4, var_D4, var_94, var_B0)
  loc_103C3BF: var_B0.SetFocus
  loc_103C3CB: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11E28A0
  'Data Table: 4E0094
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_11E2428: Call Proc_328_61_EB9A78()
  loc_11E2440: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11E245B: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E2464: Set var_BC = Me.FGrid
  loc_11E249A: Set var_104 = Me.TxtGrid
  loc_11E24A0: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_11E24A8: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_11E24D9: var_110 = CLng(Me.FGrid.Col)
  loc_11E24E9: If (var_110 = CLng(3)) Then
  loc_11E24FB:   Set var_A8 = Me.TxtGrid
  loc_11E2501:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E2509:   var_BC.MaxLength = var_110
  loc_11E2556:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E2559:     Exit Sub
  loc_11E255A:   End If
  loc_11E256D:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E2575:   var_DC = CVar(CLng(3)) 'Long
  loc_11E25A8:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E25B1:     Me.MoveFirst
  loc_11E25C9:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E25D1:     var_DC = CVar(CLng(2)) 'Long
  loc_11E25DA:     Set var_BC = Me.FGrid
  loc_11E25F1:     Proc_6_17_EAAE40(var_128, CVar(CStr(var_BC.TextMatrix))), var_DC, var_94)
  loc_11E261A:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E264A:     If (Me.EOF = &HFF) Then
  loc_11E2653:       Me.MoveFirst
  loc_11E2658:     End If
  loc_11E2658:   End If
  loc_11E265B: Else
  loc_11E2662:   If Not (var_110 = CLng(7)) Then
  loc_11E266C:     If (var_110 = CLng(9)) Then
  loc_11E266F:     End If
  loc_11E267E:     Set var_A8 = Me.TxtGrid
  loc_11E2684:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_158)
  loc_11E268C:     var_BC.MaxLength = var_DC
  loc_11E26A1:     If (global_70 = 0) Then
  loc_11E26AC:       var_10C = "{Home}+{End}"
  loc_11E26B2:       Proc_303_0_FBACC8(CStr("Code=" & var_128), 0)
  loc_11E26BA:     End If
  loc_11E26BD:   Else
  loc_11E26C4:     If (var_110 = CLng(4)) Then
  loc_11E26D6:       Set var_A8 = Me.TxtGrid
  loc_11E26DC:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E26E4:       var_BC.MaxLength = var_94
  loc_11E26F3:     Else
  loc_11E26FA:       If (var_110 = CLng(5)) Then
  loc_11E270C:         Set var_A8 = Me.TxtGrid
  loc_11E2712:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E271A:         var_BC.MaxLength = &H32
  loc_11E2729:       Else
  loc_11E2730:         If (var_110 = CLng(&HD)) Then
  loc_11E2742:           Set var_A8 = Me.TxtGrid
  loc_11E2748:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E2750:           var_BC.MaxLength = &H32
  loc_11E279D:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E27A0:             Exit Sub
  loc_11E27A1:           End If
  loc_11E27B4:           var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E27BC:           var_DC = CVar(CLng(&HD)) 'Long
  loc_11E27EF:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E27F8:             Me.MoveFirst
  loc_11E2838:             Proc_6_17_EAAE40(var_128, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_11E2861:             Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E2891:             If (Me.EOF = &HFF) Then
  loc_11E289A:               Me.MoveFirst
  loc_11E289F:             End If
  loc_11E289F:           End If
  loc_11E289F:         End If
  loc_11E289F:       End If
  loc_11E289F:     End If
  loc_11E289F:   End If
  loc_11E289F: End If
  loc_11E289F: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13F5448
  'Data Table: 4E0094
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C8 As Variant
  Dim var_94 As DataGrid
  loc_13F4A18: On Error Goto loc_13F5440
  loc_13F4A25: If (CLng(Shift) = &H1B) Then
  loc_13F4A35:   Set var_88 = Me.TxtGrid
  loc_13F4A3B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13F4A55:   Set var_94 = Me.TxtGrid
  loc_13F4A5B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13F4A63:   var_98.Text = var_8C.Tag
  loc_13F4A7F:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13F4A84:   Call Proc_328_61_EB9A78(arg_14)
  loc_13F4A8D:   Set var_88 = Me.FGrid
  loc_13F4AAA:   Set var_88 = Me.TxtGrid
  loc_13F4AB0:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13F4AB8:   var_8C.Visible = False
  loc_13F4AC4:   Exit Sub
  loc_13F4AC5: End If
  loc_13F4AD8: var_AC = CLng(Me.FGrid.Col)
  loc_13F4AE8: If (var_AC = CLng(1)) Then
  loc_13F4AF5:   If (CLng(Shift) = &HD) Then
  loc_13F4AFE:     Call Proc_328_57_154220C(KeyCode, var_AE)
  loc_13F4B09:     If (var_AE = &HFF) Then
  loc_13F4B17:       Set var_98 = Me.TxtGrid
  loc_13F4B40:       Set var_8C = var_98
  loc_13F4B4F:       Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF)
  loc_13F4B5F:     End If
  loc_13F4B5F:   End If
  loc_13F4B62: Else
  loc_13F4B69:   If (var_AC = CLng(3)) Then
  loc_13F4B78:     Set var_88 = Me.TxtGrid
  loc_13F4B7E:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0)
  loc_13F4B86:     3 = var_8C.Left
  loc_13F4B9D:     Me.DGSundry.Left = CVar(var_B8)
  loc_13F4BB7:     Set var_94 = Me.TxtGrid
  loc_13F4BBD:     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13F4BC5:     0 = var_98.Height
  loc_13F4BD6:     Set var_88 = Me.TxtGrid
  loc_13F4BDC:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13F4BE4:     var_AC = var_8C.Top
  loc_13F4BF0:     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13F4BFF:     Me.DGSundry.Top = CVar(var_B8)
  loc_13F4C29:     Set var_98 = Nothing
  loc_13F4C62:     Proc_6_69_134A630(Me.DGSundry, Me.TxtGrid, KeyCode, global_76, Shift, &HFF)
  loc_13F4C80:     If (CLng(Shift) = &HD) Then
  loc_13F4C89:       Call Proc_328_57_154220C(KeyCode, var_AE, 1, Nothing)
  loc_13F4C94:       If (var_AE = &HFF) Then
  loc_13F4CDA:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF)
  loc_13F4CEA:       End If
  loc_13F4CEA:     End If
  loc_13F4CED:   Else
  loc_13F4CF4:     If (var_AC = CLng(4)) Then
  loc_13F4D37:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F4D40:         Call Proc_328_57_154220C(KeyCode, var_AE, 0, 4)
  loc_13F4D4B:         If (var_AE = &HFF) Then
  loc_13F4D91:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F4DA1:         End If
  loc_13F4DA1:       End If
  loc_13F4DA4:     Else
  loc_13F4DAB:       If (var_AC = CLng(5)) Then
  loc_13F4DEE:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F4DF7:           Call Proc_328_57_154220C(KeyCode, var_AE, 5, 0)
  loc_13F4E02:           If (var_AE = &HFF) Then
  loc_13F4E48:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F4E58:           End If
  loc_13F4E58:         End If
  loc_13F4E5B:       Else
  loc_13F4E62:         If (var_AC = CLng(6)) Then
  loc_13F4EA5:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F4EAE:             Call Proc_328_57_154220C(KeyCode, var_AE, 6, 0)
  loc_13F4EB9:             If (var_AE = &HFF) Then
  loc_13F4EFF:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F4F0F:             End If
  loc_13F4F0F:           End If
  loc_13F4F12:         Else
  loc_13F4F19:           If (var_AC = CLng(7)) Then
  loc_13F4F5C:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F4F65:               Call Proc_328_57_154220C(KeyCode, var_AE, 7, 0)
  loc_13F4F70:               If (var_AE = &HFF) Then
  loc_13F4FB6:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F4FC6:               End If
  loc_13F4FC6:             End If
  loc_13F4FC9:           Else
  loc_13F4FD0:             If Not (var_AC = CLng(8)) Then
  loc_13F4FDA:               If (var_AC = CLng(&H10)) Then
  loc_13F4FDD:               End If
  loc_13F501D:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F5026:                 Call Proc_328_57_154220C(KeyCode, var_AE, &HC, 0)
  loc_13F5031:                 If (var_AE = &HFF) Then
  loc_13F507E:                   Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, CByte((CInt(&H11) + 1)), 0)
  loc_13F508E:                 End If
  loc_13F508E:               End If
  loc_13F5091:             Else
  loc_13F5098:               If (var_AC = CLng(&H11)) Then
  loc_13F50DB:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F50E4:                   Call Proc_328_57_154220C(KeyCode, var_AE, 0, 0)
  loc_13F50EF:                   If (var_AE = &HFF) Then
  loc_13F5135:                     Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F5145:                   End If
  loc_13F5145:                 End If
  loc_13F5148:               Else
  loc_13F514F:                 If (var_AC = CLng(9)) Then
  loc_13F5192:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F519B:                     Call Proc_328_57_154220C(KeyCode, var_AE, 1, 0)
  loc_13F51A6:                     If (var_AE = &HFF) Then
  loc_13F51EC:                       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F51FC:                     End If
  loc_13F51FC:                   End If
  loc_13F51FF:                 Else
  loc_13F5206:                   If (var_AC = CLng(&HC)) Then
  loc_13F5249:                     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F5252:                       Call Proc_328_57_154220C(KeyCode, var_AE, &HC, 0)
  loc_13F525D:                       If (var_AE = &HFF) Then
  loc_13F526B:                         Set var_98 = Me.TxtGrid
  loc_13F5294:                         Set var_8C = var_98
  loc_13F52A3:                         Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF, 0)
  loc_13F52B3:                       End If
  loc_13F52B3:                     End If
  loc_13F52B6:                   Else
  loc_13F52BD:                     If (var_AC = CLng(&HD)) Then
  loc_13F52CC:                       Set var_88 = Me.TxtGrid
  loc_13F52D2:                       Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0, 0)
  loc_13F52DA:                       0 = var_8C.Left
  loc_13F52F1:                       Me.DGRevenue.Left = CVar(var_B8)
  loc_13F530B:                       Set var_94 = Me.TxtGrid
  loc_13F5311:                       Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13F5319:                       var_98 = var_98.Height
  loc_13F532A:                       Set var_88 = Me.TxtGrid
  loc_13F5330:                       Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13F5338:                       0 = var_8C.Top
  loc_13F5344:                       var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13F5353:                       Me.DGRevenue.Top = CVar(var_B8)
  loc_13F537D:                       Set var_98 = Nothing
  loc_13F53B6:                       Proc_6_69_134A630(Me.DGRevenue, Me.TxtGrid, KeyCode, global_80, Shift, &HFF)
  loc_13F53D4:                       If (CLng(Shift) = &HD) Then
  loc_13F53DD:                         Call Proc_328_57_154220C(KeyCode, var_AE, 1, Nothing)
  loc_13F53E8:                         If (var_AE = &HFF) Then
  loc_13F5430:                           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &H11)
  loc_13F5440:                         End If
  loc_13F5440:                       End If
  loc_13F5440:                     End If
  loc_13F5440:                   End If
  loc_13F5440:                 End If
  loc_13F5440:               End If
  loc_13F5440:             End If
  loc_13F5440:           End If
  loc_13F5440:         End If
  loc_13F5440:       End If
  loc_13F5440:       ' Referenced from: 13F4A18
  loc_13F5440:     End If
  loc_13F5440:   End If
  loc_13F5440: End If
  loc_13F5440: Proc_6_60_E63754(CByte(1), 0, 0)
  loc_13F5445: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '11E7608
  'Data Table: 4E0094
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B4 As Integer
  Dim arg_10 As Integer
  Dim var_AC As TextBox
  loc_11E717F: Proc_6_58_E06050(arg_10)
  loc_11E7190: If (KeyAscii = 0) Then
  loc_11E71A6:   var_A0 = CLng(Me.FGrid.Col)
  loc_11E71B6:   If (var_A0 = CLng(3)) Then
  loc_11E71D5:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_11E71DC:       Set var_AC = Me.TxtGrid
  loc_11E71E7:       var_A4 = "Name"
  loc_11E7202:       Proc_6_89_1470B00(var_AC, KeyAscii, global_76, arg_10)
  loc_11E7211:     End If
  loc_11E7214:   Else
  loc_11E721B:     If Not (var_A0 = CLng(9)) Then
  loc_11E7225:       If (var_A0 = CLng(7)) Then
  loc_11E7228:       End If
  loc_11E7232:       Set var_8C = Me.TxtGrid
  loc_11E7238:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_11E7253:       Proc_6_42_129B55C(var_AC, arg_10, 8, 2)
  loc_11E7262:     Else
  loc_11E7269:       If (var_A0 = CLng(5)) Then
  loc_11E726F:         var_B4 = arg_10
  loc_11E727B:         If Not (&H39 > var_B4 > &H31) Then
  loc_11E7284:           If Not (var_B4 = &H2B) Then
  loc_11E728D:             If Not (var_B4 = &H2D) Then
  loc_11E7296:               If Not (var_B4 = 8) Then
  loc_11E729F:                 If (var_B4 = &H30) Then
  loc_11E72A2:                 End If
  loc_11E72A2:               End If
  loc_11E72A2:             End If
  loc_11E72A2:           End If
  loc_11E72A5:         Else
  loc_11E72A7:           arg_10 = 0
  loc_11E72AA:         End If
  loc_11E72AD:       Else
  loc_11E72B4:         If (var_A0 = CLng(6)) Then
  loc_11E72C4:           If ((arg_10 = &H50) Or (arg_10 = &H70)) Then
  loc_11E72D4:             Set var_8C = Me.TxtGrid
  loc_11E72DA:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Per", arg_10)
  loc_11E72E2:             var_AC.Text = var_B4
  loc_11E72F0:             arg_10 = 0
  loc_11E72F6:           Else
  loc_11E7303:             If ((arg_10 = &H41) Or (arg_10 = &H5A)) Then
  loc_11E7313:               Set var_8C = Me.TxtGrid
  loc_11E7319:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Amt", arg_10)
  loc_11E7321:               var_AC.Text = 0
  loc_11E732F:               arg_10 = 0
  loc_11E7335:             Else
  loc_11E7342:               Set var_8C = Me.TxtGrid
  loc_11E7348:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_11E7350:               var_AC.Text = arg_10
  loc_11E735E:               arg_10 = 0
  loc_11E7361:             End If
  loc_11E7361:           End If
  loc_11E7364:         Else
  loc_11E736B:           If Not (var_A0 = CLng(8)) Then
  loc_11E7375:             If (var_A0 = CLng(&HC)) Then
  loc_11E7378:             End If
  loc_11E7385:             If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_11E7395:               Set var_8C = Me.TxtGrid
  loc_11E739B:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_11E73A3:               var_AC.Text = arg_10
  loc_11E73B1:               arg_10 = 0
  loc_11E73B7:             Else
  loc_11E73C4:               If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_11E73D4:                 Set var_8C = Me.TxtGrid
  loc_11E73DA:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_11E73E2:                 var_AC.Text = arg_10
  loc_11E73F0:                 arg_10 = 0
  loc_11E73F6:               Else
  loc_11E7403:                 Set var_8C = Me.TxtGrid
  loc_11E7409:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_11E7411:                 var_AC.Text = arg_10
  loc_11E741F:                 arg_10 = 0
  loc_11E7422:               End If
  loc_11E7422:             End If
  loc_11E7425:           Else
  loc_11E742C:             If (var_A0 = CLng(&H10)) Then
  loc_11E7458:               If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_11E7468:                 Set var_8C = Me.TxtGrid
  loc_11E746E:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Auto")
  loc_11E7476:                 var_AC.Text = arg_10
  loc_11E7484:                 arg_10 = 0
  loc_11E748A:               Else
  loc_11E74B3:                 If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_11E74C3:                   Set var_8C = Me.TxtGrid
  loc_11E74C9:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Manual")
  loc_11E74D1:                   var_AC.Text = arg_10
  loc_11E74DF:                   arg_10 = 0
  loc_11E74E2:                 End If
  loc_11E74E2:               End If
  loc_11E74E5:             Else
  loc_11E74EC:               If (var_A0 = CLng(&H11)) Then
  loc_11E7518:                 If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_11E7528:                   Set var_8C = Me.TxtGrid
  loc_11E752E:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_11E7536:                   var_AC.Text = arg_10
  loc_11E7544:                   arg_10 = 0
  loc_11E754A:                 Else
  loc_11E7573:                   If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_11E7583:                     Set var_8C = Me.TxtGrid
  loc_11E7589:                     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_11E7591:                     var_AC.Text = arg_10
  loc_11E759F:                     arg_10 = 0
  loc_11E75A2:                   End If
  loc_11E75A2:                 End If
  loc_11E75A5:               Else
  loc_11E75AC:                 If (var_A0 = CLng(&HD)) Then
  loc_11E75CB:                   If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_11E75F8:                     Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_80, arg_10, "Name")
  loc_11E7607:                   End If
  loc_11E7607:                 End If
  loc_11E7607:               End If
  loc_11E7607:             End If
  loc_11E7607:           End If
  loc_11E7607:         End If
  loc_11E7607:       End If
  loc_11E7607:     End If
  loc_11E7607:   End If
  loc_11E7607: End If
  loc_11E7607: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FCA3B8
  'Data Table: 4E0094
  Dim var_9C As Long
  Dim var_AA As Integer
  Dim Shift As Integer
  loc_FCA1FC: On Error Goto loc_FCA3AF
  loc_FCA212: var_9C = CLng(Me.FGrid.Col)
  loc_FCA222: If (var_9C = CLng(3)) Then
  loc_FCA248:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_FCA256:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FCA26A:     var_A4 = "Name"
  loc_FCA285:     Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_FCA294:   End If
  loc_FCA297: Else
  loc_FCA29E:   If Not (var_9C = CLng(6)) Then
  loc_FCA2A8:     If Not (var_9C = CLng(8)) Then
  loc_FCA2B2:       If Not (var_9C = CLng(&HC)) Then
  loc_FCA2BC:         If Not (var_9C = CLng(5)) Then
  loc_FCA2C6:           If Not (var_9C = CLng(&H10)) Then
  loc_FCA2D0:             If (var_9C = CLng(&H11)) Then
  loc_FCA2D3:             End If
  loc_FCA2D3:           End If
  loc_FCA2D3:         End If
  loc_FCA2D3:       End If
  loc_FCA2D3:     End If
  loc_FCA2D9:     If (Shift <> &HD) Then
  loc_FCA2E2:       Call TxtGrid_KeyPress(KeyCode)
  loc_FCA2E7:     End If
  loc_FCA2EA:   Else
  loc_FCA2F1:     If (var_9C = CLng(&HD)) Then
  loc_FCA317:       If ((Shift <> &HD) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_FCA325:         Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FCA354:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_80, Shift, "Name", &HFF)
  loc_FCA363:       End If
  loc_FCA366:     Else
  loc_FCA36D:       If (var_9C = CLng(5)) Then
  loc_FCA373:         var_AA = Shift
  loc_FCA37F:         If Not (&H39 > var_AA > &H31) Then
  loc_FCA388:           If Not (var_AA = &H2B) Then
  loc_FCA391:             If Not (var_AA = &H2D) Then
  loc_FCA39A:               If Not (var_AA = 8) Then
  loc_FCA3A3:                 If (var_AA = &H30) Then
  loc_FCA3A6:                 End If
  loc_FCA3A6:               End If
  loc_FCA3A6:             End If
  loc_FCA3A6:           End If
  loc_FCA3A9:         Else
  loc_FCA3AB:           Shift = 0
  loc_FCA3AE:         End If
  loc_FCA3AE:       End If
  loc_FCA3AE:     End If
  loc_FCA3AE:   End If
  loc_FCA3AE: End If
  loc_FCA3AE: Exit Sub
  loc_FCA3AF: ' Referenced from: FCA1FC
  loc_FCA3AF: Proc_6_60_E63754(Shift, var_AA, 0, Shift)
  loc_FCA3B4: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20A8C
  'Data Table: 4E0094
  Dim arg_10 As Integer
  loc_E20A74: If (Cancel = 0) Then
  loc_E20A7D:   Call Proc_328_57_154220C(Cancel, var_88)
  loc_E20A86:   arg_10 = Not(var_88)
  loc_E20A89: End If
  loc_E20A89: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_9 '107770C
  'Data Table: 4E0094
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_128 As TextBox
  loc_107748B: Me.DGSundry.Visible = False
  loc_10774AA: If (Me.RecordCount > 0) Then
  loc_10774C0:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10774C8:   var_E4 = CVar(CLng(2)) 'Long
  loc_10774FB:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1077503:   Set var_128 = Me.FGrid
  loc_1077509:   LateIdCallSt
  loc_107757B:   Set var_128 = Me.FGrid
  loc_1077581:   LateIdCallSt
  loc_10775D7:   Set var_B4 = Me.TxtGrid
  loc_10775DD:   Call 0.Method_DGSundry_UnknownEvent_90 (0, var_128, CStr(Me.Fields.Item("Name").Value), var_128, CVar(CStr(Me.Fields.Item("Name").Value)), CVar(CLng(3)))
  loc_10775E5:   var_128.Text = CVar(CLng(Me.FGrid.Row))
  loc_1077646:   var_114 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_128)) 'String
  loc_107764E:   Set var_128 = Me.FGrid
  loc_1077654:   LateIdCallSt
  loc_1077681:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1077689:   var_E4 = CVar(CLng(&HE)) 'Long
  loc_10776AB:   var_B0 = Me.Fields.Item("SysYN")
  loc_10776BC:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_10776C4:   Set var_128 = Me.FGrid
  loc_10776CA:   LateIdCallSt
  loc_10776E6: End If
  loc_10776EF: Set var_A8 = Me.TxtGrid
  loc_10776F5: Call 0.Method_DGSundry_UnknownEvent_90 (0, var_B0, var_128, var_114, var_E4, var_A4)
  loc_10776FD: var_B0.SetFocus
  loc_1077709: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E525D4
  'Data Table: 4E0094
  loc_E525AE: Set var_88 = Me.Txt
  loc_E525B4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E525C2: Proc_6_74_E23240(var_8C)
  loc_E525CE: Call Proc_328_61_EB9A78(var_8C)
  loc_E525D3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EE2288
  'Data Table: 4E0094
  loc_EE21DE: If (CLng(Shift) = &H1B) Then
  loc_EE21E1:   Call Proc_328_61_EB9A78()
  loc_EE21E6:   Exit Sub
  loc_EE21E7: End If
  loc_EE223D: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_EE2255:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EE225E:     Proc_6_75_E5335C(Shift)
  loc_EE2263:   End If
  loc_EE2278:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EE2281:     Proc_6_76_E533C8(Shift, arg_14)
  loc_EE2286:   End If
  loc_EE2286: End If
  loc_EE2286: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E08BD0
  'Data Table: 4E0094
  Dim var_86 As Integer
  loc_E08BC3: Proc_6_58_E06050(arg_10)
  loc_E08BCB: var_86 = KeyAscii
  loc_E08BCE: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50E14
  'Data Table: 4E0094
  loc_E50DF2: Set var_88 = Me.Txt
  loc_E50DF8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E50E06: Proc_6_73_E23294(var_8C)
  loc_E50E12: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FD185C
  'Data Table: 4E0094
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As TextBox
  Dim var_A4 As String
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_8C As MSHFlexGrid
  loc_FD16C2: If (Cancel = CInt(1)) Then
  loc_FD16D0:   Set var_8C = Me.Txt
  loc_FD16D6:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_FD16FF:   If (Proc_6_27_EA61EC(var_90, "App. Date") = 0) Then
  loc_FD170D:     Set var_8C = Me.Txt
  loc_FD1713:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_FD171B:     var_90.SetFocus
  loc_FD1729:     arg_10 = &HFF
  loc_FD172C:     Exit Sub
  loc_FD172D:   End If
  loc_FD1737:   Set var_8C = Me.Txt
  loc_FD173D:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FD175D:   Set var_9C = Me.Txt
  loc_FD1763:   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_FD176B:   var_A0.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_FD179A:   Me.Recordset15.CursorLocation = 3
  loc_FD17C4:   var_A4 = " SELECT DISTINCT RM.Code as Code,RM.Name as NAme,RM.Type FROM RevMast AS RM WHERE  (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and RM.FieldType='T'"
  loc_FD17D9:   var_B0 = var_A4 & " Union " & " Select Distinct RM.Code as Code,RM.Name as NAme,RM.Type From RevMast RM Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_FD17F8:   Me.Open CVar(var_B0 & "' or LOGSITE_CODE='HO') and RM.DeskCode='" & MemVar_1F95078 & "PURC' Order By Name"), CVar(MemVar_1F95044), 3
  loc_FD181A:   CVarUnk
  loc_FD181F:   VerifyVarObj
  loc_FD182B:   LateIdStAd
  loc_FD1839:   Call Proc_328_63_12DEC30(Me.DGRevenue, New, 1)
  loc_FD1850:   Me.FGrid.Col = CVar(CLng(1))
  loc_FD1858: End If
  loc_FD1858: Exit Sub
  loc_FD1859: -1 = Record Of arg_0 'Copy battery of vars to single variable
End Sub

Private Sub CmdUp_Click() '10F3F84
  'Data Table: 4E0094
  Dim var_DC As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_10F3CF7: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 1)) Then
  loc_10F3CFA:   Exit Sub
  loc_10F3CFB: End If
  loc_10F3D1A: If (CLng(Me.FGrid.Row) = 0) Then
  loc_10F3D1D:   Exit Sub
  loc_10F3D1E: End If
  loc_10F3D3D: If (CLng(Me.FGrid.Row) = 1) Then
  loc_10F3D40:   Exit Sub
  loc_10F3D41: End If
  loc_10F3D60: If (CLng(Me.FGrid.Row) = 2) Then
  loc_10F3D63:   Exit Sub
  loc_10F3D64: End If
  loc_10F3D78: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_10F3DA6: For var_F0 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_F0 'Integer
  loc_10F3DB0:   var_100 = CVar(CLng(var_86)) 'Long
  loc_10F3DB9:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F3DDD:   var_A0(CLng(var_C2)) = CStr(Me.FGrid.TextMatrix))
  loc_10F3DEA: Next var_F0 'Integer
  loc_10F3E14: For var_138 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_138 'Integer
  loc_10F3E2D:   var_15C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F3E36:   var_17C = CVar(CLng(var_C2)) 'Long
  loc_10F3E54:   var_100 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_10F3E5D:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F3E77:   var_19C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_10F3E7F:   Set var_1B0 = Me.FGrid
  loc_10F3E85:   LateIdCallSt
  loc_10F3EA6: Next var_138 'Integer
  loc_10F3ED0: For var_1B4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_1B4 'Integer
  loc_10F3EEF:   var_100 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_10F3EF8:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F3F0D:   Set var_DC = Me.FGrid
  loc_10F3F13:   LateIdCallSt
  loc_10F3F28: Next var_1B4 'Integer
  loc_10F3F34: var_100 = CVar(CLng((var_86 - 1))) 'Long
  loc_10F3F43: Me.FGrid.Row = var_100
  loc_10F3F6D: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_10F3F7C: Call Proc_328_52_E80970()
  loc_10F3F81: Exit Sub
  loc_10F3F82: ArrayRebase1Var
End Sub

Private Sub FGrid_UnknownEvent_0 'E87EA0
  'Data Table: 4E0094
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E87E43: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E87E56: Set var_A8 = Me.TxtGrid
  loc_E87E5C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E87E64: var_AC.Visible = False
  loc_E87E7E: Set var_A8 = Me.TxtGrid
  loc_E87E84: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E87E8C: var_AC.MaxLength = 0
  loc_E87E98: Call Proc_328_61_EB9A78()
  loc_E87E9D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69278
  'Data Table: 4E0094
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69234: Set var_88 = Me.TxtGrid
  loc_E6923A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E69254: If (var_8C.Visible = 0) Then
  loc_E6926D:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E69275: End If
  loc_E69275: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E20850
  'Data Table: 4E0094
  loc_E20847: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E2084F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E003CC
  'Data Table: 4E0094
  loc_E003C4: Call Proc_328_56_E44F00()
  loc_E003C9: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '1239A60
  'Data Table: 4E0094
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim arg_C As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_1239534: Set var_88 = Me.TopCtrl1
  loc_123953A: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_123957F: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_1239588:   Call Form_KeyDown(arg_C, arg_10)
  loc_123958D: End If
  loc_1239591: Set var_88 = Me.TopCtrl1
  loc_1239597: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12395B0: If (CStr() = "Browse") Then
  loc_12395B3:   Exit Sub
  loc_12395B4: End If
  loc_12395D1: var_C4 = Me.FGrid.Rows
  loc_1239628: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_123963E:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_123964E:   var_9C = "+{Tab}"
  loc_1239654:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_123965E:   arg_C = 0
  loc_1239664: Else
  loc_123966E:   var_B0 = Me.FGrid.Rows
  loc_12396BB:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12396D1:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12396E7:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_12396F1:     arg_C = 0
  loc_123972B:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_123972E:       Call TopCtrl1_UnknownEvent_16()
  loc_1239733:     End If
  loc_1239733:   End If
  loc_1239733: End If
  loc_1239739: global_68 = arg_C
  loc_123975F: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1239783: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_1239799:   var_11C = CLng(Me.FGrid.Col)
  loc_12397A9:   If (var_11C = CLng(3)) Then
  loc_12397BF:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12397C7:     var_F8 = CVar(CLng(3)) 'Long
  loc_12397CC:     var_12C = vbNullString
  loc_12397D6:     Set var_A0 = Me.FGrid
  loc_12397DC:     LateIdCallSt
  loc_1239801:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1239809:     var_F8 = CVar(CLng(2)) 'Long
  loc_123980E:     var_12C = vbNullString
  loc_1239818:     Set var_A0 = Me.FGrid
  loc_123981E:     LateIdCallSt
  loc_1239843:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123984B:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_1239850:     var_12C = vbNullString
  loc_123985A:     Set var_A0 = Me.FGrid
  loc_1239860:     LateIdCallSt
  loc_1239885:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123988D:     var_F8 = CVar(CLng(&HE)) 'Long
  loc_1239892:     var_12C = vbNullString
  loc_123989C:     Set var_A0 = Me.FGrid
  loc_12398A2:     LateIdCallSt
  loc_12398B7:   Else
  loc_12398BE:     If Not (var_11C = CLng(1)) Then
  loc_12398C8:       If Not (var_11C = CLng(4)) Then
  loc_12398D2:         If Not (var_11C = CLng(5)) Then
  loc_12398DC:           If Not (var_11C = CLng(6)) Then
  loc_12398E6:             If Not (var_11C = CLng(7)) Then
  loc_12398F0:               If Not (var_11C = CLng(8)) Then
  loc_12398FA:                 If Not (var_11C = CLng(9)) Then
  loc_1239904:                   If Not (var_11C = CLng(&HC)) Then
  loc_123990E:                     If (var_11C = CLng(&H10)) Then
  loc_1239911:                     End If
  loc_1239911:                   End If
  loc_1239911:                 End If
  loc_1239911:               End If
  loc_1239911:             End If
  loc_1239911:           End If
  loc_1239911:         End If
  loc_1239911:       End If
  loc_1239924:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123993C:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1239941:       var_12C = vbNullString
  loc_123994B:       Set var_B4 = Me.FGrid
  loc_1239951:       LateIdCallSt
  loc_123996C:     Else
  loc_1239973:       If Not (var_11C = CLng(&HD)) Then
  loc_123997D:         If (var_11C = CLng(&H11)) Then
  loc_1239980:         End If
  loc_1239993:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123999B:         var_F8 = CVar(CLng(&HF)) 'Long
  loc_12399A0:         var_12C = vbNullString
  loc_12399AA:         Set var_A0 = Me.FGrid
  loc_12399B0:         LateIdCallSt
  loc_12399D5:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12399DD:         var_F8 = CVar(CLng(&HD)) 'Long
  loc_12399E2:         var_12C = vbNullString
  loc_12399EC:         Set var_A0 = Me.FGrid
  loc_12399F2:         LateIdCallSt
  loc_1239A17:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1239A1F:         var_F8 = CVar(CLng(&HB)) 'Long
  loc_1239A24:         var_12C = vbNullString
  loc_1239A2E:         Set var_A0 = Me.FGrid
  loc_1239A34:         LateIdCallSt
  loc_1239A46:       End If
  loc_1239A46:     End If
  loc_1239A46:   End If
  loc_1239A46: End If
  loc_1239A4C: If (arg_C = &HD) Then
  loc_1239A54:   global_70 = 0
  loc_1239A57: End If
  loc_1239A59: arg_C = 0
  loc_1239A5C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10DE0
  'Data Table: 4E0094
  loc_E10DD1: Call FGrid_UnknownEvent_C()
  loc_E10DDB: global_70 = 0
  loc_E10DDE: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '1190DC0
  'Data Table: 4E0094
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_11909D0: Set var_88 = Me.TopCtrl1
  loc_11909D6: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11909EF: If (CStr() = "Browse") Then
  loc_11909F2:   Exit Sub
  loc_11909F3: End If
  loc_11909F7: Set var_88 = Me.TopCtrl1
  loc_11909FD: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1190A16: If (CStr() = "Browse") Then
  loc_1190A19:   Exit Sub
  loc_1190A1A: End If
  loc_1190A2D: var_A0 = CLng(Me.FGrid.Col)
  loc_1190A3D: If Not (var_A0 = CLng(3)) Then
  loc_1190A47:   If Not (var_A0 = CLng(4)) Then
  loc_1190A51:     If Not (var_A0 = CLng(&HD)) Then
  loc_1190A5B:       If Not (var_A0 = CLng(6)) Then
  loc_1190A65:         If Not (var_A0 = CLng(8)) Then
  loc_1190A6F:           If Not (var_A0 = CLng(&HC)) Then
  loc_1190A79:             If Not (var_A0 = CLng(&H10)) Then
  loc_1190A83:               If (var_A0 = CLng(&H11)) Then
  loc_1190A86:               End If
  loc_1190A86:             End If
  loc_1190A86:           End If
  loc_1190A86:         End If
  loc_1190A86:       End If
  loc_1190A86:     End If
  loc_1190A86:   End If
  loc_1190A8A:   Set var_C4 = Me.FGrid
  loc_1190AAE:   var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_1190ADB:   Set var_B4 = var_C4
  loc_1190AED:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1190B15:   Set var_88 = Me.TxtGrid
  loc_1190B1B:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1190B23:   0 = var_B4.Text
  loc_1190B3C:   If (Len(var_9C) <= 1) Then
  loc_1190B4B:     Set var_88 = Me.TxtGrid
  loc_1190B51:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1190B59:     var_CA = var_B4.Text
  loc_1190B6A:     Set var_B8 = Me.TxtGrid
  loc_1190B70:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1190B78:     var_C4.Text = var_9C
  loc_1190B8B:   End If
  loc_1190B97:   Set var_88 = Me.TxtGrid
  loc_1190B9D:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1190BB7:   Set var_B8 = Me.TxtGrid
  loc_1190BBD:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1190BC5:   var_C4.SelStart = Len(var_B4.Text)
  loc_1190BDB: Else
  loc_1190BE2:   If (var_A0 = CLng(5)) Then
  loc_1190C23:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1190C38:   Else
  loc_1190C3F:     If Not (var_A0 = CLng(1)) Then
  loc_1190C49:       If Not (var_A0 = CLng(9)) Then
  loc_1190C53:         If (var_A0 = CLng(7)) Then
  loc_1190C56:         End If
  loc_1190C56:       End If
  loc_1190C5A:       Set var_C4 = Me.FGrid
  loc_1190C7E:       var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_1190C87:       var_CA = Asc(var_9C)
  loc_1190CAB:       Set var_B4 = var_C4
  loc_1190CBD:       Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF, var_CA)
  loc_1190CE5:       Set var_88 = Me.TxtGrid
  loc_1190CEB:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, 0, var_CA)
  loc_1190CF3:       0 = var_B4.Text
  loc_1190D0C:       If (Len(var_9C) <= 1) Then
  loc_1190D1B:         Set var_88 = Me.TxtGrid
  loc_1190D21:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1190D29:         Index = var_B4.Text
  loc_1190D3A:         Set var_B8 = Me.TxtGrid
  loc_1190D40:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_9C)
  loc_1190D48:         var_C4.Text = 0
  loc_1190D5B:       End If
  loc_1190D67:       Set var_88 = Me.TxtGrid
  loc_1190D6D:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1190D87:       Set var_B8 = Me.TxtGrid
  loc_1190D8D:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1190D95:       var_C4.SelStart = Len(var_B4.Text)
  loc_1190DA8:     End If
  loc_1190DA8:   End If
  loc_1190DA8: End If
  loc_1190DB2: If (CLng(Index) <> &HD) Then
  loc_1190DBA:   global_70 = &HFF
  loc_1190DBD: End If
  loc_1190DBD: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) '104D910
  'Data Table: 4E0094
  Dim var_94 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_11C As MSHFlexGrid
  loc_104D6BC: Set var_94 = Me.TopCtrl1
  loc_104D6C2: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104D6DB: If (CStr() = "Browse") Then
  loc_104D6DE:   Exit Sub
  loc_104D6DF: End If
  loc_104D6E3: Set var_94 = Me.TopCtrl1
  loc_104D6E9: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104D702: If (CStr() = "Edit") Then
  loc_104D705:   Exit Sub
  loc_104D706: End If
  loc_104D723: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_104D726:   Exit Sub
  loc_104D727: End If
  loc_104D738: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_104D75A:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_104D794:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_104D7B6:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_104D7CC:         var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104D7D4:         var_E8 = CVar(CLng(1)) 'Long
  loc_104D827:         Set var_11C = Me.FGrid
  loc_104D83F:         Call Proc_328_52_E80970(FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)), CInt(Val(CStr(Me.FGrid.TextMatrix)))))
  loc_104D847:       Else
  loc_104D85A:         Me.FGrid.Rows = 1
  loc_104D880:         var_A4 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(1)))) 'String
  loc_104D888:         Set var_11C = Me.FGrid
  loc_104D8B5:         Me.FGrid.FixedRows = 1
  loc_104D8BD:       End If
  loc_104D8BD:     End If
  loc_104D8C0:   Else
  loc_104D8E1:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F8, var_118)
  loc_104D8F1:   End If
  loc_104D8F5:   Set var_94 = Me.FGrid
  loc_104D906: End If
  loc_104D90B: Set var_8C = Nothing
  loc_104D90E: Exit Sub
  loc_104D90F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E20760
  'Data Table: 4E0094
  loc_E20757: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E2075F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E208A0
  'Data Table: 4E0094
  loc_E20897: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E2089F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E44B80
  'Data Table: 4E0094
  Dim var_8C As TextBox
  loc_E44B54: Call Proc_328_61_EB9A78()
  loc_E44B64: Set var_88 = Me.TxtGrid
  loc_E44B6A: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E44B72: var_8C.Visible = False
  loc_E44B7E: Exit Sub
End Sub

Private Sub CmdDown_Click() '1097AB0
  'Data Table: 4E0094
  Dim var_C0 As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  loc_109784F: If (CLng(Me.FGrid.Row) = 1) Then
  loc_1097852:   Exit Sub
  loc_1097853: End If
  loc_109788E: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 2)) Then
  loc_1097891:   Exit Sub
  loc_1097892: End If
  loc_10978A6: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_10978D4: For var_D4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_D4 'Integer
  loc_10978DE:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_10978E7:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_109790B:   var_A0(CLng(var_A6)) = CStr(Me.FGrid.TextMatrix))
  loc_1097918: Next var_D4 'Integer
  loc_1097942: For var_11C = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_11C 'Integer
  loc_109795B:   var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1097964:   var_160 = CVar(CLng(var_A6)) 'Long
  loc_1097982:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_109798B:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_10979A5:   var_180 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_10979AD:   Set var_194 = Me.FGrid
  loc_10979B3:   LateIdCallSt
  loc_10979D4: Next var_11C 'Integer
  loc_10979FE: For var_198 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_198 'Integer
  loc_1097A1D:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_1097A26:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_1097A3B:   Set var_C0 = Me.FGrid
  loc_1097A41:   LateIdCallSt
  loc_1097A56: Next var_198 'Integer
  loc_1097A62: var_E4 = CVar(CLng((var_86 + 1))) 'Long
  loc_1097A71: Me.FGrid.Row = var_E4
  loc_1097A9B: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_1097AAA: Call Proc_328_52_E80970()
  loc_1097AAF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E8046C
  'Data Table: 4E0094
  Dim var_94 As TextBox
  loc_E80408: On Error Goto loc_E80464
  loc_E8042E: Call Proc_328_60_E881F4(Proc_5_1_100EC1C("ADD", Me))
  loc_E80439: Call Proc_328_58_F2AC10(global_72)
  loc_E80449: Set var_8C = Me.Txt
  loc_E8044F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_E80457: var_94.SetFocus
  loc_E80463: Exit Sub
  loc_E80464: ' Referenced from: E80408
  loc_E80464: Proc_6_60_E63754(var_94)
  loc_E80469: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EE94C4
  'Data Table: 4E0094
  loc_EE9408: On Error Goto loc_EE94BD
  loc_EE9442: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE9468:   Call Proc_328_60_E881F4(Proc_5_1_100EC1C("INI", Me))
  loc_EE947B:   Set var_10C = Me.TopCtrl1
  loc_EE9481:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_EE9492:   Set var_10C = Me.TopCtrl1
  loc_EE9498:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_EE94A9:   Set var_10C = Me.TopCtrl1
  loc_EE94AF:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_EE94B7:   Call Proc_328_59_13EC1D8(global_72)
  loc_EE94BC: End If
  loc_EE94BC: Exit Sub
  loc_EE94BD: ' Referenced from: EE9408
  loc_EE94BD: Proc_6_60_E63754()
  loc_EE94C2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C110
  'Data Table: 4E0094
  loc_E1C105: Me.Global.Unload Me
  loc_E1C10D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EDA9A0
  'Data Table: 4E0094
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EDA8F0: On Error Goto loc_EDA99A
  loc_EDA90A: If (Me.RecordCount <= 0) Then
  loc_EDA913:   var_B8 = "Information"
  loc_EDA92E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EDA93E:   Exit Sub
  loc_EDA93F: End If
  loc_EDA947: If (MemVar_1F953B0 = "A") Then
  loc_EDA94D:   MemVar_1F950E4 = "Select (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Format(SP.AppDate,'dd/mm/yyyy')) AS SearchCode,VT.Description,SP.AppDate,CSTR(SP.SNo) As SNo,SM.Name As SundryName,SP.DispName,SP.CalcFormula,RM.Name As Revenue,PostYN From (((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Order by SP.AppDate,VT.Description"
  loc_EDA954: Else
  loc_EDA95C:   If (MemVar_1F953B0 = "S") Then
  loc_EDA962:     MemVar_1F950E4 = "Select (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,VT.Description,Convert(Varchar(11),SP.AppDate,103) As AppDate,SP.SNo,SM.Name As SundryName,SP.DispName,SP.CalcFormula,RM.Name As Revenue,PostYN From (((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Order by SP.AppDate,VT.Description"
  loc_EDA966:   End If
  loc_EDA966: End If
  loc_EDA96C: MemVar_1F95120 = Me
  loc_EDA979: Proc_6_126_F1C850("2000,1000,1000,2000,2000,2000,2000")
  loc_EDA994: Call 0.Method_arg_2B0 (1)
  loc_EDA999: Exit Sub
  loc_EDA99A: ' Referenced from: EDA8F0
  loc_EDA99A: Proc_6_60_E63754(var_B8)
  loc_EDA99F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E36668
  'Data Table: 4E0094
  loc_E36658: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36660: Call Proc_328_59_13EC1D8(global_72)
  loc_E36665: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E36C68
  'Data Table: 4E0094
  loc_E36C58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36C60: Call Proc_328_59_13EC1D8(global_72)
  loc_E36C65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E36E48
  'Data Table: 4E0094
  loc_E36E38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36E40: Call Proc_328_59_13EC1D8(global_72)
  loc_E36E45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E36F08
  'Data Table: 4E0094
  loc_E36EF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36F00: Call Proc_328_59_13EC1D8(global_72)
  loc_E36F05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E21410
  'Data Table: 4E0094
  Dim Me As Recordset15
  loc_E213F7: Me.Requery -1
  loc_E21407: Me.Requery -1
  loc_E2140C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1520E88
  'Data Table: 4E0094
  Dim var_8A As Variant
  Dim var_90 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_130 As Variant
  Dim var_94 As Variant
  Dim var_9C As Variant
  Dim unk_4E00AD As Connection15
  Dim var_170 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_98 As MSHFlexGrid
  Dim var_160 As Variant
  Dim var_1A8 As Variant
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_390 As Variant
  Dim var_3B0 As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_4D8 As Variant
  Dim var_4F8 As Variant
  Dim var_570 As Variant
  Dim var_590 As Variant
  Dim var_628 As Variant
  Dim var_648 As Variant
  Dim var_6BC As Variant
  Dim var_6DC As Variant
  Dim var_794 As Variant
  Dim var_828 As Variant
  Dim var_8BC As Variant
  Dim var_97C As Variant
  Dim var_9EC As Variant
  Dim var_AB0 As Variant
  Dim var_AD0 As Variant
  Dim var_1DC As String
  Dim var_110 As Variant
  Dim var_190 As Variant
  Dim var_1C8 As Variant
  Dim var_360 As Variant
  Dim var_540 As Variant
  Dim var_720 As Variant
  Dim var_B14 As Variant
  Dim Me As Recordset15
  loc_1520094: On Error Goto loc_1520E34
  loc_152009B: var_86 = CByte(0) 'Byte
  loc_15200A2: Call Proc_328_64_E7E41C(var_8C)
  loc_15200AD: If (var_8C = 0) Then
  loc_15200B0:   Exit Sub
  loc_15200B1: End If
  loc_15200BC: Set var_90 = Me.Txt
  loc_15200C2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_15200EB: If (Proc_6_27_EA61EC(var_94, "App. Date") = 0) Then
  loc_15200F5:   Call Txt_GotFocus(CInt(1))
  loc_15200FA:   Exit Sub
  loc_15200FB: End If
  loc_15200FE: Call Proc_328_54_F7CB5C(var_8C)
  loc_1520109: If (var_8C = &HFF) Then
  loc_152010C:   Exit Sub
  loc_152010D: End If
  loc_1520137: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_1520141:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1520149:   var_E0 = CVar(CLng(1)) 'Long
  loc_1520185:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_152018C:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1520194:     var_E0 = CVar(CLng(1)) 'Long
  loc_15201D1:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> CVar(1)) Then
  loc_15201D8:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_15201E0:       var_E0 = CVar(CLng(1)) 'Long
  loc_1520223:       var_130 = "Arrange S.No. and Cal. Formulas" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1520227:       MsgBox(var_130, &H40, "Information", var_170, var_190)
  loc_1520244:       Set var_90 = Me.FGrid
  loc_1520255:       Exit Sub
  loc_1520256:     End If
  loc_152025C:     var_8A = (var_8A + 1)
  loc_152025F:   End If
  loc_1520273:   var_AC = Me.FGrid.Rows
  loc_1520288:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_15202AA:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_15202C4:   If (CVar(CLng(&H11)) And (var_9C = "Yes")) Then
  loc_15202CB:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_15202D3:     var_E0 = CVar(CLng(&HF)) 'Long
  loc_15202ED:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15202F3:     var_110 = Trim(var_100)
  loc_152030F:     If (var_110 = vbNullString) Then
  loc_152032B:       MsgBox("Define revenue ", &H40, var_100, var_110, var_130)
  loc_152033B:       Exit Sub
  loc_152033C:     End If
  loc_152033C:   End If
  loc_1520340:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1520348:   var_E0 = CVar(CLng(3)) 'Long
  loc_1520384:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_152038B:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1520393:     var_E0 = CVar(CLng(1)) 'Long
  loc_15203CF:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_15203D6:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_15203DE:       var_E0 = CVar(CLng(3)) 'Long
  loc_1520425:       MsgBox("Fill S.NO For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_1520442:       Set var_90 = Me.FGrid
  loc_1520453:       Exit Sub
  loc_1520454:     End If
  loc_1520458:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1520460:     var_E0 = CVar(CLng(4)) 'Long
  loc_152049C:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_15204A3:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_15204AB:       var_E0 = CVar(CLng(3)) 'Long
  loc_15204F2:       MsgBox("Fill Disp. Name For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_152050F:       Set var_90 = Me.FGrid
  loc_1520520:       Exit Sub
  loc_1520521:     End If
  loc_1520525:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_152052D:     var_E0 = CVar(CLng(6)) 'Long
  loc_1520569:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1520570:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1520578:       var_E0 = CVar(CLng(3)) 'Long
  loc_15205BF:       MsgBox("Fill Per/Amt For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_15205DC:       Set var_90 = Me.FGrid
  loc_15205ED:       Exit Sub
  loc_15205EE:     End If
  loc_15205EE:   End If
  loc_15205F1: Next var_B0 'Integer
  loc_15205FF: unk_4E00AD.BeginTrans var_194
  loc_1520608: var_86 = CByte(1) 'Byte
  loc_1520631: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_198 'Integer
  loc_152063B:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1520643:   var_E0 = CVar(CLng(2)) 'Long
  loc_1520663:   var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_152066B:   var_120 = vbNullString
  loc_1520679:   var_140 = CVar(CLng(var_88)) 'Long
  loc_152068A:   Set var_94 = Me.FGrid
  loc_15206CF:   If CBool(CVar(CLng(1)) And (Trim(CVar(CStr(var_94.TextMatrix)))) <> vbNullString)) Then
  loc_15206D6:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_15206DE:     var_E0 = CVar(CLng(&HB)) 'Long
  loc_15206F8:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_152071A:     If (Trim(var_100) = vbNullString) Then
  loc_1520721:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1520729:       var_E0 = CVar(CLng(&HB)) 'Long
  loc_152072E:       var_120 = "+"
  loc_1520738:       Set var_90 = Me.FGrid
  loc_152073E:       LateIdCallSt
  loc_1520749:     End If
  loc_1520754:     Set var_90 = Me.Txt
  loc_152075A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_90, vbNullString, var_E0, var_C0, var_E0)
  loc_1520769:     Proc_6_7_F26918(var_100, CVar(var_94), var_C0, var_140)
  loc_1520772:     var_D0 = CVar(CLng(var_88)) 'Long
  loc_152077A:     var_F0 = CVar(CLng(2)) 'Long
  loc_1520783:     Set var_98 = Me.FGrid
  loc_1520799:     var_160 = CVar(CLng(var_88)) 'Long
  loc_15207A1:     var_1A8 = CVar(CLng(1)) 'Long
  loc_15207CA:     var_248 = CVar(CLng(var_88)) 'Long
  loc_15207D2:     var_268 = CVar(CLng(4)) 'Long
  loc_15207F1:     var_2FC = CVar(CLng(var_88)) 'Long
  loc_15207F9:     var_31C = CVar(CLng(5)) 'Long
  loc_1520818:     var_390 = CVar(CLng(var_88)) 'Long
  loc_1520820:     var_3B0 = CVar(CLng(6)) 'Long
  loc_1520853:     var_434 = CVar(CLng(var_88)) 'Long
  loc_152085B:     var_454 = CVar(CLng(8)) 'Long
  loc_152088E:     var_4D8 = CVar(CLng(var_88)) 'Long
  loc_1520896:     var_4F8 = CVar(CLng(7)) 'Long
  loc_15208BF:     var_570 = CVar(CLng(var_88)) 'Long
  loc_15208C7:     var_590 = CVar(CLng(9)) 'Long
  loc_15208F0:     var_628 = CVar(CLng(var_88)) 'Long
  loc_15208F8:     var_648 = CVar(CLng(&HF)) 'Long
  loc_1520917:     var_6BC = CVar(CLng(var_88)) 'Long
  loc_152091F:     var_6DC = CVar(CLng(&HA)) 'Long
  loc_1520955:     var_794 = Me.FGrid.TextMatrix)
  loc_152097C:     var_828 = Me.FGrid.TextMatrix)
  loc_15209A3:     var_8BC = Me.FGrid.TextMatrix)
  loc_15209C8:     var_97C = CVar(Proc_6_14_EF402C(var_8BC, CVar(CLng(&HC)), CVar(CLng(var_88)), var_828, CVar(CLng(&HE)), CVar(CLng(var_88)), var_794)) 'String
  loc_15209CE:     Proc_6_8_EB1974(var_98C, var_97C, CVar(CLng(&HB)), CVar(CLng(var_88)))
  loc_15209D7:     var_9CC = CVar(CLng(var_88)) 'Long
  loc_15209DF:     var_9EC = CVar(CLng(&H10)) 'Long
  loc_1520A12:     var_AB0 = CVar(CLng(var_88)) 'Long
  loc_1520A1A:     var_AD0 = CVar(CLng(&H11)) 'Long
  loc_1520A50:     var_1DC = "Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName," & "CalcFormula,PerOrAmt,RoundOff,SValue,Limit," & "RevCode,Nature,CalcSign,SysYN,Grp,"
  loc_1520A78:     var_1C8 = CVar(var_1DC & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,PostYN,LogSite_Code) " & " Values ('FACL',") & var_100 & ",'" & CVar(CStr(var_98.TextMatrix))) 
  loc_1520ABD:     var_360 = var_1C8 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1520AF1:     var_540 = var_360 & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1520B36:     var_720 = var_540 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1520B8A:     var_94C = var_720 & "','" & CVar(CStr(var_794)) & "','" & CVar(CStr(var_828)) & "','" & Left(CVar(CStr(var_8BC)), 1) & "'," & "'" & CVar(MemVar_1F950C8) 
  loc_1520BD1:     var_B14 = var_94C & "'," & var_98C & ",'A','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "','" & CVar(MemVar_1F95070) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1520BFB:     unk_4E00AD.Execute CStr(var_B14 & "','" & CVar(MemVar_1F95078) & "')"), var_B98, -1
  loc_1520CD9:   End If
  loc_1520CDC: Next var_198 'Integer
  loc_1520CE7: unk_4E00AD.CommitTrans
  loc_1520CF0: var_86 = CByte(0) 'Byte
  loc_1520CFF: Set var_90 = Me.Txt
  loc_1520D05: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1520D11: var_100 = CVar(MemVar_1F95078 & "PURC") 'String
  loc_1520D28: var_AC = Space((6 - Len(MemVar_1F95078 & "PURC")))
  loc_1520D30: var_110 = (var_100 + CVar(var_94))
  loc_1520D34: var_C0 = "**"
  loc_1520D39: var_130 = (CVar(var_1DC & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,PostYN,LogSite_Code) " & " Values ('FACL',") + var_C0)
  loc_1520D64: var_1C8 = (1 + Format(CVar(var_94), "dd/mm/yyyy"))
  loc_1520D9B: Me.Requery -1
  loc_1520DC8: Me.Find "SearchCode ='" & CStr(var_1C8) & "'", 0, 1
  loc_1520DD8: Set var_90 = Me.TopCtrl1
  loc_1520DDE: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_1520DF7: If (CStr(1) = "Add") Then
  loc_1520DFA:   Call TopCtrl1_UnknownEvent_A()
  loc_1520DFF:   Exit Sub
  loc_1520E00: End If
  loc_1520E15: var_9C = "INI"
  loc_1520E23: Call Proc_328_60_E881F4(Proc_5_1_100EC1C(var_9C, Me, global_72), CVar("SearchCode ='" & CStr(var_1C8) & "'" & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,PostYN,LogSite_Code) " & " Values ('FACL',") & var_100)
  loc_1520E2E: Call Proc_328_59_13EC1D8(var_94)
  loc_1520E33: Exit Sub
  loc_1520E34: ' Referenced from: 1520094
  loc_1520E3D: If (CInt(var_86) = 1) Then
  loc_1520E46:   unk_4E00AD.RollbackTrans
  loc_1520E4B: End If
  loc_1520E53: Set var_90 = Err()
  loc_1520E59: Call 0.Method_arg_2C (var_9C)
  loc_1520E72: MsgBox(CVar(var_9C), &H10, var_100, CVar("SearchCode ='" & CStr(var_1C8) & "'" & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,PostYN,LogSite_Code) " & " Values ('FACL',"), CVar("SearchCode ='" & CStr(var_1C8) & "'" & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,PostYN,LogSite_Code) " & " Values ('FACL',") & var_100)
  loc_1520E85: Exit Sub
End Sub

Private Sub Form_Load() '11110CC
  'Data Table: 4E0094
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_88 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  loc_1110D74: On Error Goto loc_11110C4
  loc_1110D8D: Proc_6_23_DFC5B8(Me, 0)
  loc_1110D9F: Set var_88 = Me.TopCtrl1
  loc_1110DA5: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1110DB3: Call 0.Method_arg_50 (var_B0)
  loc_1110DC3: Set var_88 = Me.TopCtrl1
  loc_1110DC9: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_1110DE0: Me.CmdPwd.Enabled = False
  loc_1110DEF: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1110E01: Set var_88 = Me.FGrid
  loc_1110E07: var_88.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1110E19: Set global_76 = New 
  loc_1110E2B: Me.var_88.CursorLocation = 3
  loc_1110E55: var_C0 = CVar("Select Code,Name,Nature,SysYN From SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_1110E5F: Me.Open var_C0, CVar(MemVar_1F95044), 3
  loc_1110E73: CVarUnk
  loc_1110E78: VerifyVarObj
  loc_1110E7E: Set var_88 = Me.DGSundry
  loc_1110E84: LateIdStAd
  loc_1110E9C: Set global_80 = New 
  loc_1110EAE: Me.DGSundry.CursorLocation = 3
  loc_1110ED8: var_C0 = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND (FlagType ='PUR' or FlagType  Is Null) and FlagAMR is NULL Order By Name") 'String
  loc_1110EE2: Me.Open var_C0, CVar(MemVar_1F95044), 3
  loc_1110EF6: CVarUnk
  loc_1110EFB: VerifyVarObj
  loc_1110F01: Set var_88 = Me.DGRevenue
  loc_1110F07: LateIdStAd
  loc_1110F1F: Set global_72 = New 
  loc_1110F31: Me.DGRevenue.CursorLocation = 3
  loc_1110F3E: If (MemVar_1F953B0 = "A") Then
  loc_1110F5F:   var_B0 = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Format(SP.AppDate,'dd/mm/yyyy')) AS SearchCode,SITEcODE AS SITE_CODE,LOGSITE_CODE From SundryType SP Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1110F66:   var_C0 = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND V_Type ='FACL' Order By (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Format(SP.AppDate,'dd/mm/yyyy'))") 'String
  loc_1110F70:   Me.Open var_C0, CVar(MemVar_1F95044), 3
  loc_1110F7E: Else
  loc_1110F86:   If (MemVar_1F953B0 = "S") Then
  loc_1110FA0:     var_9C = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,SITEcODE AS SITE_CODE,LOGSITE_CODE From SundryType SP Where V_Type ='FACL' Order By (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))"
  loc_1110FAC:     Me.Open CVar(MemVar_1F95044), CVar(MemVar_1F95044), 3
  loc_1110FB1:   End If
  loc_1110FB1: End If
  loc_1110FD4: Call Proc_328_60_E881F4(Proc_5_1_100EC1C("INI", Me, global_72, 1, -1, 1, -1, Me), global_80, 1, -1)
  loc_1110FE7: Set var_88 = Me.TopCtrl1
  loc_1110FED: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_1110FFE: Set var_88 = Me.TopCtrl1
  loc_1111004: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_111101B: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_1111023: Call Proc_328_51_12B0A3C(Me.TopCtrl1, global_76)
  loc_1111028: Call Proc_328_59_13EC1D8(1)
  loc_111103F: Me.FGrid.Left = CVar(CDbl(0))
  loc_111105A: Me.FGrid.Top = CVar(CDbl(1340))
  loc_111106C: var_C0 = Me.FGrid.Top
  loc_111107B: Call 0.Method_Me8 (var_C4, var_C0)
  loc_111108E: var_9C = CVar(((var_C4 - CDbl(2400)) - CDbl(var_C0))) 'Single
  loc_111109D: Me.FGrid.Height = CVar(CDbl(1340))
  loc_11110B5: Set var_88 = Me.TopCtrl1
  loc_11110BB: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_11110C3: Exit Sub
  loc_11110C4: ' Referenced from: 1110D74
  loc_11110C4: Proc_6_60_E63754(-1)
  loc_11110C9: Exit Sub
End Sub

Private Sub Form_Resize() 'DFD764
  'Data Table: 4E0094
  loc_DFD760: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E58B14
  'Data Table: 4E0094
  loc_E58ADF: Set global_72 = Nothing
  loc_E58AF1: Set global_76 = Nothing
  loc_E58B03: Set global_80 = Nothing
  loc_E58B0F: MasterFormExit = 0
  loc_E58B12: Exit Sub
End Sub

Private Sub Form_Activate() 'E4EB28
  'Data Table: 4E0094
  loc_E4EAF8: On Error Goto loc_E4EB22
  loc_E4EAFF: Set var_88 = Me.TopCtrl1
  loc_E4EB05: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4EB1A: If (CLng(CInt()) = &H2D) Then
  loc_E4EB1D:   Call TopCtrl1_UnknownEvent_15()
  loc_E4EB22:   ' Referenced from: E4EAF8
  loc_E4EB22: End If
  loc_E4EB22: Proc_6_60_E63754()
  loc_E4EB27: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25944
  'Data Table: 4E0094
  loc_E25929: If (MasterFormExit = &HFF) Then
  loc_E25939:   Me.Global.Unload Me
  loc_E25941: End If
  loc_E25941: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28F48
  'Data Table: 4E0094
  loc_E28F20: On Error Goto loc_E28F40
  loc_E28F37: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E28F3F: Exit Sub
  loc_E28F40: ' Referenced from: E28F20
  loc_E28F40: Proc_6_60_E63754(Shift)
  loc_E28F45: Exit Sub
End Sub

Private Sub txtPassword_KeyDown(KeyCode As Integer, Shift As Integer) 'E5BBC0
  'Data Table: 4E0094
  loc_E5BB8D: If ((CLng(KeyCode) = &H28) Or (CLng(KeyCode) = &HD)) Then
  loc_E5BB96:   Proc_6_75_E5335C(KeyCode)
  loc_E5BB9B: End If
  loc_E5BBB0: If ((CLng(KeyCode) = &H26) Or (CLng(KeyCode) = &HD)) Then
  loc_E5BBB9:   Proc_6_76_E533C8(KeyCode, Shift)
  loc_E5BBBE: End If
  loc_E5BBBE: Exit Sub
End Sub

Private Sub txtPassword_Validate(Cancel As Boolean) 'F9C17C
  'Data Table: 4E0094
  Dim unk_4E00AD As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_B4 As Variant
  loc_F9C04C: unk_4E00AD.Execute "Select SundryPassword from Enviro where LogSite_Code='" & MemVar_1F95078 & "'", var_B4, -1
  loc_F9C057: Set var_88 = var_B8
  loc_F9C07B: If (var_88.RecordCount > 0) Then
  loc_F9C08D:   var_B8 = var_88.Fields
  loc_F9C0A6:   var_8C = Proc_6_38_E69628(CVar(var_B8.Item("SundryPassword")))
  loc_F9C0B2: Else
  loc_F9C0B5:   var_8C = vbNullString
  loc_F9C0B8: End If
  loc_F9C10B: If CBool(var_B8 Or ((Trim(CVar(Me.txtPassword)) = "india") = CVar(Proc_96_19_EF5CE4(var_8C, Trim(CVar(Me.txtPassword)))))) Then
  loc_F9C11A:   Me.CmdPwd.Enabled = True
  loc_F9C12A:   Set var_B8 = Me.TopCtrl1
  loc_F9C130:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_F9C13B: Else
  loc_F9C148:   Me.txtPassword.Text = vbNullString
  loc_F9C159:   Set var_B8 = Me.TopCtrl1
  loc_F9C15F:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_F9C173:   Me.CmdPwd.Enabled = False
  loc_F9C17B: End If
  loc_F9C17B: Exit Sub
End Sub

Private Sub cmdCancel_Click() 'E68974
  'Data Table: 4E0094
  loc_E6892D: Me.txtPassword.Text = vbNullString
  loc_E68941: Me.PwdFrame.Visible = False
  loc_E68955: Me.CmdCancel.Visible = False
  loc_E68969: Me.CmdChange.Visible = False
  loc_E68971: Exit Sub
End Sub

Private Sub CmdChange_Click() '100C1A8
  'Data Table: 4E0094
  Dim var_88 As Variant
  Dim var_A0 As Variant
  Dim var_90 As TextBox
  Dim unk_4E00AD As Connection15
  Dim var_124 As String
  Dim var_B0 As Variant
  loc_100BFC9: Me.txtPassword.Text = vbNullString
  loc_100BFD1: On Error Goto loc_100C15D
  loc_100BFDF: Set var_88 = Me.Txt
  loc_100BFE5: Call 0.Method_CmdChange_Click0 (CInt(2))
  loc_100BFF4: var_B0 = Trim(CVar(var_90))
  loc_100C00E: If (var_B0 = vbNullString) Then
  loc_100C02A:   MsgBox("Password Can't be blank ", &H40, var_B0, var_D0, var_110)
  loc_100C045:   Set var_88 = Me.Txt
  loc_100C04B:   Call 0.Method_CmdChange_Click0 (CInt(2), var_90)
  loc_100C053:   var_90.SetFocus
  loc_100C05F:   Exit Sub
  loc_100C060: End If
  loc_100C07B: If (Me.PwdFrame.Visible = &HFF) Then
  loc_100C08A:   Me.PwdFrame.Visible = False
  loc_100C0AD:   If (Me.CmdPwd.Enabled = &HFF) Then
  loc_100C0BC:     Me.CmdPwd.Enabled = False
  loc_100C0C4:   End If
  loc_100C0C4: End If
  loc_100C0CD: unk_4E00AD.BeginTrans var_118
  loc_100C0F0: Set var_88 = Me.Txt
  loc_100C0F6: Call 0.Method_CmdChange_Click0 (CInt(2), var_90, var_11C, "Update Enviro set SundryPassword='")
  loc_100C0FE: var_A0 = var_90.Text
  loc_100C10F: var_124 = Proc_96_18_EEA0F0(var_11C, -1)
  loc_100C131: unk_4E00AD.Execute var_138 & var_124 & "' where SiteCode='" & MemVar_1F95078 & "'", var_90, 
  loc_100C157: unk_4E00AD.CommitTrans
  loc_100C15C: Exit Sub
  loc_100C15D: ' Referenced from: 100BFD1
  loc_100C165: Set var_88 = Err()
  loc_100C16B: Call 0.Method_arg_2C (var_11C)
  loc_100C176: Call 0.Method_arg_50 (var_120)
  loc_100C192: MsgBox(CVar(var_11C), &H40, CVar(var_120), var_D0, var_110)
  loc_100C1A5: Exit Sub
  loc_100C1A6:  = arg_1C00
End Sub

Public Function MasterFormExitGet() '4E1198
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4E11A7
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '4E11B6
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '4E11C5
  SearchCode = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E97C08
  'Data Table: 4E0094
  Dim Me As Recordset15
  loc_E97B96: On Error Goto loc_E97BFF
  loc_E97B9F: Me.MoveFirst
  loc_E97BC9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97BF1: Proc_5_0_1107AD0(&HFF, Me, global_72)
  loc_E97BF9: Call Proc_328_59_13EC1D8(0)
  loc_E97BFE: Exit Sub
  loc_E97BFF: ' Referenced from: E97B96
  loc_E97BFF: Proc_6_60_E63754(var_A0)
  loc_E97C04: Exit Sub
End Sub

Public Sub Proc_328_51_12B0A3C
  'Data Table: 4E0094
  Dim var_98 As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_12B03F8: On Error Goto loc_12B0A34
  loc_12B0401: Call 0.Method_Me8 (var_88)
  loc_12B040D: var_98 = CVar((var_88 - CDbl(&H32))) 'Single
  loc_12B041C: Me.FGrid.Height = var_98
  loc_12B0428: Set var_B0 = Me.FGrid
  loc_12B0437: var_B0.Cols = &H12
  loc_12B0448: var_B0.Rows = 1
  loc_12B0461: global_60 = CStr(CLng(var_B0.BackColor))
  loc_12B046B: var_98 = 0
  loc_12B0474: var_D4 = &H64
  loc_12B0480: LateIdCallSt
  loc_12B048B: var_98 = CVar(CLng(1)) 'Long
  loc_12B0490: var_D4 = &H159
  loc_12B049C: LateIdCallSt
  loc_12B04A4: var_98 = 0
  loc_12B04B0: var_D4 = CVar(CLng(1)) 'Long
  loc_12B04B5: var_F4 = "Sn."
  loc_12B04BE: LateIdCallSt
  loc_12B04C9: var_98 = CVar(CLng(1)) 'Long
  loc_12B04D4: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B04DB: LateIdCallSt
  loc_12B04E6: var_98 = CVar(CLng(2)) 'Long
  loc_12B04EB: var_D4 = 0
  loc_12B04F7: LateIdCallSt
  loc_12B0502: var_98 = CVar(CLng(3)) 'Long
  loc_12B0507: var_D4 = &H5DC
  loc_12B0513: LateIdCallSt
  loc_12B051B: var_98 = 0
  loc_12B0527: var_D4 = CVar(CLng(3)) 'Long
  loc_12B052C: var_F4 = "Sundry Name"
  loc_12B0535: LateIdCallSt
  loc_12B0540: var_98 = CVar(CLng(3)) 'Long
  loc_12B054B: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B0552: LateIdCallSt
  loc_12B055D: var_98 = CVar(CLng(4)) 'Long
  loc_12B0562: var_D4 = &H640
  loc_12B056E: LateIdCallSt
  loc_12B0576: var_98 = 0
  loc_12B0582: var_D4 = CVar(CLng(4)) 'Long
  loc_12B0587: var_F4 = "Display Name"
  loc_12B0590: LateIdCallSt
  loc_12B059B: var_98 = CVar(CLng(4)) 'Long
  loc_12B05A6: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B05AD: LateIdCallSt
  loc_12B05B8: var_98 = CVar(CLng(5)) 'Long
  loc_12B05BD: var_D4 = &H6D6
  loc_12B05C9: LateIdCallSt
  loc_12B05D1: var_98 = 0
  loc_12B05DD: var_D4 = CVar(CLng(5)) 'Long
  loc_12B05E2: var_F4 = "Cal. Formula"
  loc_12B05EB: LateIdCallSt
  loc_12B05F6: var_98 = CVar(CLng(5)) 'Long
  loc_12B0601: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B0608: LateIdCallSt
  loc_12B0613: var_98 = CVar(CLng(5)) 'Long
  loc_12B061E: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B0625: LateIdCallSt
  loc_12B0630: var_98 = CVar(CLng(6)) 'Long
  loc_12B0635: var_D4 = &H226
  loc_12B0641: LateIdCallSt
  loc_12B0649: var_98 = 0
  loc_12B0655: var_D4 = CVar(CLng(6)) 'Long
  loc_12B065A: var_F4 = "P/A"
  loc_12B0663: LateIdCallSt
  loc_12B066E: var_98 = CVar(CLng(6)) 'Long
  loc_12B0679: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B0680: LateIdCallSt
  loc_12B068B: var_98 = CVar(CLng(7)) 'Long
  loc_12B0690: var_D4 = &H320
  loc_12B069C: LateIdCallSt
  loc_12B06A4: var_98 = 0
  loc_12B06B0: var_D4 = CVar(CLng(7)) 'Long
  loc_12B06B5: var_F4 = "Value"
  loc_12B06BE: LateIdCallSt
  loc_12B06C9: var_98 = CVar(CLng(7)) 'Long
  loc_12B06D4: var_D4 = CVar(CInt(7)) 'Integer
  loc_12B06DB: LateIdCallSt
  loc_12B06E6: var_98 = CVar(CLng(7)) 'Long
  loc_12B06F1: var_D4 = CVar(CInt(7)) 'Integer
  loc_12B06F8: LateIdCallSt
  loc_12B0703: var_98 = CVar(CLng(8)) 'Long
  loc_12B0708: var_D4 = 0
  loc_12B0714: LateIdCallSt
  loc_12B071C: var_98 = 0
  loc_12B0728: var_D4 = CVar(CLng(8)) 'Long
  loc_12B072D: var_F4 = "ROff"
  loc_12B0736: LateIdCallSt
  loc_12B0741: var_98 = CVar(CLng(8)) 'Long
  loc_12B074C: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B0753: LateIdCallSt
  loc_12B075E: var_98 = CVar(CLng(&H10)) 'Long
  loc_12B0763: var_D4 = &H2B2
  loc_12B076F: LateIdCallSt
  loc_12B0777: var_98 = 0
  loc_12B0783: var_D4 = CVar(CLng(&H10)) 'Long
  loc_12B0788: var_F4 = "A/M"
  loc_12B0791: LateIdCallSt
  loc_12B079C: var_98 = CVar(CLng(&H10)) 'Long
  loc_12B07A7: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B07AE: LateIdCallSt
  loc_12B07B9: var_98 = CVar(CLng(9)) 'Long
  loc_12B07BE: var_D4 = 0
  loc_12B07CA: LateIdCallSt
  loc_12B07D2: var_98 = 0
  loc_12B07DE: var_D4 = CVar(CLng(9)) 'Long
  loc_12B07E3: var_F4 = "Limit"
  loc_12B07EC: LateIdCallSt
  loc_12B07F7: var_98 = CVar(CLng(9)) 'Long
  loc_12B0802: var_D4 = CVar(CInt(7)) 'Integer
  loc_12B0809: LateIdCallSt
  loc_12B0814: var_98 = CVar(CLng(9)) 'Long
  loc_12B081F: var_D4 = CVar(CInt(7)) 'Integer
  loc_12B0826: LateIdCallSt
  loc_12B0831: var_98 = CVar(CLng(&HA)) 'Long
  loc_12B0836: var_D4 = 0
  loc_12B0842: LateIdCallSt
  loc_12B084A: var_98 = 0
  loc_12B0856: var_D4 = CVar(CLng(&HA)) 'Long
  loc_12B085B: var_F4 = "Nature"
  loc_12B0864: LateIdCallSt
  loc_12B086F: var_98 = CVar(CLng(&HA)) 'Long
  loc_12B087A: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B0881: LateIdCallSt
  loc_12B088C: var_98 = CVar(CLng(&HB)) 'Long
  loc_12B0891: var_D4 = 0
  loc_12B089D: LateIdCallSt
  loc_12B08A5: var_98 = 0
  loc_12B08B1: var_D4 = CVar(CLng(&HB)) 'Long
  loc_12B08B6: var_F4 = "+/-"
  loc_12B08BF: LateIdCallSt
  loc_12B08CA: var_98 = CVar(CLng(&HB)) 'Long
  loc_12B08D5: var_D4 = CVar(CInt(4)) 'Integer
  loc_12B08DC: LateIdCallSt
  loc_12B08E7: var_98 = CVar(CLng(&HE)) 'Long
  loc_12B08EC: var_D4 = 0
  loc_12B08F8: LateIdCallSt
  loc_12B0903: var_98 = CVar(CLng(&HC)) 'Long
  loc_12B0908: var_D4 = &H258
  loc_12B0914: LateIdCallSt
  loc_12B091C: var_98 = 0
  loc_12B0928: var_D4 = CVar(CLng(&HC)) 'Long
  loc_12B092D: var_F4 = "Bold"
  loc_12B0936: LateIdCallSt
  loc_12B0941: var_98 = CVar(CLng(&HC)) 'Long
  loc_12B094C: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B0953: LateIdCallSt
  loc_12B095E: var_98 = CVar(CLng(&HD)) 'Long
  loc_12B0963: var_D4 = &H834
  loc_12B096F: LateIdCallSt
  loc_12B0977: var_98 = 0
  loc_12B0983: var_D4 = CVar(CLng(&HD)) 'Long
  loc_12B0988: var_F4 = "Revenue Charge"
  loc_12B0991: LateIdCallSt
  loc_12B099C: var_98 = CVar(CLng(&HD)) 'Long
  loc_12B09A7: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B09AE: LateIdCallSt
  loc_12B09B9: var_98 = CVar(CLng(&HF)) 'Long
  loc_12B09BE: var_D4 = 0
  loc_12B09CA: LateIdCallSt
  loc_12B09D5: var_98 = CVar(CLng(&H11)) 'Long
  loc_12B09DA: var_D4 = &H1D1
  loc_12B09E6: LateIdCallSt
  loc_12B09EE: var_98 = 0
  loc_12B09FA: var_D4 = CVar(CLng(&H11)) 'Long
  loc_12B09FF: var_F4 = "Post"
  loc_12B0A08: LateIdCallSt
  loc_12B0A13: var_98 = CVar(CLng(&H11)) 'Long
  loc_12B0A1E: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B0A25: LateIdCallSt
  loc_12B0A2F: Set var_B0 = Nothing 
  loc_12B0A33: Exit Sub
  loc_12B0A34: ' Referenced from: 12B03F8
  loc_12B0A34: Proc_6_60_E63754(var_B0, var_D4, var_98, var_B0, var_F4, var_D4, var_98, var_B0)
  loc_12B0A39: Exit Sub
  loc_12B0A3A: Set arg_1C68 = var_D4
End Sub

Public Sub Proc_328_52_E80970
  'Data Table: 4E0094
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_E8092D: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_E80937:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_E8093F:   var_D0 = CVar(CLng(1)) 'Long
  loc_E80949:   var_9C = CVar(CStr(var_86)) 'String
  loc_E80951:   Set var_8C = Me.FGrid
  loc_E80957:   LateIdCallSt
  loc_E80968: Next var_A0 'Integer
  loc_E8096D: Exit Sub
  loc_E8096E: CExtInstUnk
End Sub

Public Sub Proc_328_53_E1C078
  'Data Table: 4E0094
  loc_E1C06C: Me.PwdFrame.Visible = False
  loc_E1C074: Exit Sub
  loc_E1C075: On Error Goto loc_E1C201
End Sub

Public Sub Proc_328_54_F7CB5C
  'Data Table: 4E0094
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim unk_4E00AD As Connection15
  Dim var_11C As Recordset15
  Dim var_120 As Fields15
  Dim var_134 As Field20
  Dim var_94 As TextBox
  loc_F7CA62: var_C4 = CVar("Select Count(*) From SundryType Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (V_Type='FACL' And AppDate=") 'String
  loc_F7CA70: Set var_90 = Me.Txt
  loc_F7CA76: Call 0.Method_Proc_328_54_F7CB5C0 (CInt(1), var_94, var_C4, var_118, -1)
  loc_F7CA85: Proc_6_7_F26918(var_B4, CVar(var_94), var_11C, var_120)
  loc_F7CA8D: var_D4 = 0 & var_B4 
  loc_F7CAA4: unk_4E00AD.Execute CStr(var_D4 & ")"), var_134, var_144
  loc_F7CAAC:  = var_11C.Fields
  loc_F7CAB4:  = var_120.Item()
  loc_F7CABC:  = var_134.Value
  loc_F7CAEF: If (var_144 > 0) Then
  loc_F7CB13:   MsgBox("Duplicate Entry", &H40, "Information", var_C4, var_D4)
  loc_F7CB2E:   Set var_90 = Me.Txt
  loc_F7CB34:   Call 0.Method_Proc_328_54_F7CB5C0 (CInt(0))
  loc_F7CB3C:   var_94.SetFocus
  loc_F7CB4D:   Proc_328_54_F7CB5C = &HFF
  loc_F7CB53: End If
  loc_F7CB53: Proc_328_54_F7CB5C = var_94
  loc_F7CB59: () = 
End Sub

Public Sub Proc_328_55_115A08C(arg_C, arg_10) '115A08C
  'Data Table: 4E0094
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F8 As Variant
  Dim var_C4 As String
  Dim var_E4 As Variant
  Dim var_138 As Variant
  Dim var_86 As Integer
  Dim var_A2 As Integer
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_178 As Boolean
  Dim var_9A As Integer
  Dim var_148 As Variant
  Dim var_118 As Variant
  loc_1159CF0: var_B4 = CVar(CLng(arg_C)) 'Long
  loc_1159CF9: var_D4 = CVar(CLng(arg_10)) 'Long
  loc_1159D13: var_98 = CStr(Me.FGrid.TextMatrix))
  loc_1159D34: var_C4 = "+"
  loc_1159D4E: var_118 = Left(var_98, 1)
  loc_1159D56: var_E4 = "-"
  loc_1159D6D: If CBool((Left(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_1159D8E:   MsgBox("Invalid Operator at Starting position of furmula", 0, var_108, var_118, var_128)
  loc_1159D9E:   Proc_328_55_115A08C = &HFF
  loc_1159DA4: End If
  loc_1159DBC: var_C4 = "+"
  loc_1159DD6: var_118 = Right(var_98, 1)
  loc_1159DDE: var_E4 = "-"
  loc_1159DF5: If CBool((Right(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_1159E16:   MsgBox("Invalid Operator at Ending position of furmula", 0, var_108, var_118, var_128)
  loc_1159E26:   Proc_328_55_115A08C = &HFF
  loc_1159E2C: End If
  loc_1159E2E: var_86 = 0
  loc_1159E31: ' Referenced from: 115A080
  loc_1159E3B: If (Len(var_98) > 0) Then
  loc_1159E40:   var_A2 = 0
  loc_1159E55:   var_108 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1159E6B:   var_F8 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_1159E87:   var_B4 = (InStr(1, var_98, "-", 0) = 0)
  loc_1159EA5:   var_138 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_1159EBB:   var_128 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1159ED7:   var_E4 = (InStr(1, var_98, "+", 0) = 0)
  loc_1159EDE:   var_168 = IIf(var_E4, var_128, (Right(var_98, 1) = var_C4) Or (IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108) = var_E4))
  loc_1159F0E:   var_178 = (InStr(1, var_98, "+", 0) >= InStr(1, var_98, "-", 0))
  loc_1159F15:   var_188 = IIf(var_178, IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108), var_168)
  loc_1159F1E:   var_9A = CInt(var_188)
  loc_1159F3E:   If (var_9A = 0) Then
  loc_1159F44:     var_A0 = var_98
  loc_1159F4A:   Else
  loc_1159F5C:     var_F8 = Left(var_98, CLng((var_9A - 1)))
  loc_1159F65:     var_A0 = CStr("Invalid Operator at Ending position of furmula")
  loc_1159F6B:   End If
  loc_1159F76:   For var_18C = 1 To (arg_C - 1): var_88 = var_18C 'Integer
  loc_1159F7F:     var_148 = CVar(var_A0) 'String
  loc_1159F87:     var_B4 = CVar(CLng(var_88)) 'Long
  loc_1159FC5:     If (CVar(CLng(1)) = Trim(CVar(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1159FCA:       var_A2 = &HFF
  loc_1159FCD:       Exit For
  loc_1159FD0:     End If
  loc_1159FD3:   Next var_18C 'Integer
  loc_1159FD8:   ' Referenced from: 1159FCD
  loc_1159FDE:   If (var_A2 = 0) Then
  loc_1159FEC:     var_F8 = Trim(var_A0)
  loc_115A00F:     var_108 = ("Invalid Row Reference " + var_F8)
  loc_115A018:     var_118 = (CVar(CStr(Me.FGrid.TextMatrix))) + vbCrLf)
  loc_115A021:     var_128 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + "Please Enter Correct No.")
  loc_115A025:     MsgBox(var_128, &H40, "Validation", var_168, var_188)
  loc_115A040:     Proc_328_55_115A08C = &HFF
  loc_115A046:   End If
  loc_115A04C:   If (var_9A = 0) Then
  loc_115A052:     var_98 = vbNullString
  loc_115A058:   Else
  loc_115A06D:     var_108 = Mid(var_98, CLng((var_9A + 1)), var_F8)
  loc_115A076:     var_98 = CStr(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_115A080:   End If
  loc_115A080:   GoTo loc_1159E31
  loc_115A083: End If
  loc_115A083: Proc_328_55_115A08C = 
End Sub

Public Sub Proc_328_56_E44F00
  'Data Table: 4E0094
  loc_E44EDC: Set var_88 = Me.TopCtrl1
  loc_E44EE2: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E44EFB: If (CStr() = "Browse") Then
  loc_E44EFE:   Exit Sub
  loc_E44EFF: End If
  loc_E44EFF: Exit Sub
End Sub

Public Sub Proc_328_57_154220C(arg_C) '154220C
  'Data Table: 4E0094
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_86 As Integer
  Dim var_114 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_B0 As String
  Dim var_138 As MSHFlexGrid
  Dim var_170 As Variant
  loc_1541233: var_A0 = CLng(Me.FGrid.Col)
  loc_1541243: If (var_A0 = CLng(3)) Then
  loc_1541266:   var_A6 = Me.EOF
  loc_1541294:   Set var_8C = Me.TxtGrid
  loc_154129A:   Call 0.Method_Proc_328_57_154220C0 (arg_C, var_AC, var_B0)
  loc_15412A2:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_15412BA:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_15412D0:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15412D8:     var_E0 = CVar(CLng(3)) 'Long
  loc_15412DD:     var_100 = vbNullString
  loc_15412E7:     Set var_AC = Me.FGrid
  loc_15412ED:     LateIdCallSt
  loc_1541312:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_154131A:     var_E0 = CVar(CLng(2)) 'Long
  loc_154131F:     var_100 = vbNullString
  loc_1541329:     Set var_AC = Me.FGrid
  loc_154132F:     LateIdCallSt
  loc_1541354:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_154135C:     var_E0 = CVar(CLng(&HA)) 'Long
  loc_1541361:     var_100 = vbNullString
  loc_154136B:     Set var_AC = Me.FGrid
  loc_1541371:     LateIdCallSt
  loc_1541396:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_154139E:     var_E0 = CVar(CLng(&HE)) 'Long
  loc_15413A3:     var_100 = vbNullString
  loc_15413AD:     Set var_AC = Me.FGrid
  loc_15413B3:     LateIdCallSt
  loc_15413C8:   Else
  loc_15413CB:     Call Proc_328_62_FC069C(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_15413D6:     If (var_A6 = 0) Then
  loc_15413DE:       Proc_328_57_154220C = 0
  loc_15413E4:     End If
  loc_15413F7:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15413FF:     var_F0 = CVar(CLng(3)) 'Long
  loc_1541432:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_154143A:     Set var_138 = Me.FGrid
  loc_1541440:     LateIdCallSt
  loc_154146F:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1541477:     var_F0 = CVar(CLng(2)) 'Long
  loc_15414AA:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_15414B2:     Set var_138 = Me.FGrid
  loc_15414B8:     LateIdCallSt
  loc_15414E7:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15414EF:     var_F0 = CVar(CLng(4)) 'Long
  loc_1541522:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1541530:     LateIdCallSt
  loc_1541597:     var_134 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_154159F:     Set var_138 = Me.FGrid
  loc_15415A5:     LateIdCallSt
  loc_15415D2:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15415DA:     var_F0 = CVar(CLng(&HE)) 'Long
  loc_154160D:     var_134 = CVar(CStr(Me.Fields.Item("SysYN").Value)) 'String
  loc_1541615:     Set var_138 = Me.FGrid
  loc_154161B:     LateIdCallSt
  loc_1541637:   End If
  loc_154164A:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1541652:   var_E0 = CVar(CLng(&H10)) 'Long
  loc_1541657:   var_100 = "Manual"
  loc_1541661:   Set var_AC = Me.FGrid
  loc_1541667:   LateIdCallSt
  loc_1541692:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1541697:   var_E0 = 1
  loc_15416A4:   Set var_AC = Me.FGrid
  loc_15416B5:   var_B0 = CStr(var_AC.TextMatrix))
  loc_15416CE:   If (var_B0 <> vbNullString) Then
  loc_15416D1:     var_C0 = vbNullString
  loc_15416DB:     Set var_8C = Me.FGrid
  loc_15416EC:   End If
  loc_15416EF: Else
  loc_15416F6:   If Not (var_A0 = CLng(1)) Then
  loc_1541700:     If (var_A0 = CLng(4)) Then
  loc_1541703:     End If
  loc_154173F:     Set var_8C = Me.TxtGrid
  loc_1541745:     Call 0.Method_Proc_328_57_154220C0 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)))
  loc_154174D:     var_E0 = var_AC.Text
  loc_1541755:     var_134 = CVar(var_B0) 'String
  loc_154175D:     Set var_13C = Me.FGrid
  loc_1541763:     LateIdCallSt
  loc_1541784:   Else
  loc_154178B:     If (var_A0 = CLng(5)) Then
  loc_15417CB:       Set var_8C = Me.TxtGrid
  loc_15417D1:       Call 0.Method_Proc_328_57_154220C0 (arg_C, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_13C, var_134)
  loc_15417D9:       var_C0 = var_AC.Text
  loc_15417E1:       var_134 = CVar(var_B0) 'String
  loc_15417E9:       Set var_13C = Me.FGrid
  loc_15417EF:       LateIdCallSt
  loc_154182C:       If (CLng(Me.FGrid.Row) = 1) Then
  loc_1541842:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_154184B:         Set var_AC = Me.FGrid
  loc_154185A:         var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_154185F:         var_100 = vbNullString
  loc_1541869:         Set var_114 = Me.FGrid
  loc_154186F:         LateIdCallSt
  loc_154188C:         Proc_328_57_154220C = &HFF
  loc_1541892:       End If
  loc_154189F:       Set var_8C = Me.TxtGrid
  loc_15418A5:       Call 0.Method_Proc_328_57_154220C0 (arg_C, var_AC, var_B0, var_114, var_100, var_E0, var_C0)
  loc_15418AD:       var_13C = var_AC.Text
  loc_15418C4:       If (var_B0 <> vbNullString) Then
  loc_1541902:         Call Proc_328_55_115A08C(CInt(CLng(Me.FGrid.Row)), CInt(CLng(Me.FGrid.Col)))
  loc_154191B:         If (var_13E = &HFF) Then
  loc_1541920:           var_86 = 0
  loc_1541936:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_154193F:           Set var_AC = Me.FGrid
  loc_154194E:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1541953:           var_100 = vbNullString
  loc_1541963:           LateIdCallSt
  loc_154197B:           Proc_328_57_154220C = Me.FGrid
  loc_1541981:         End If
  loc_1541981:       End If
  loc_1541984:     Else
  loc_154198B:       If Not (var_A0 = CLng(8)) Then
  loc_1541995:         If (var_A0 = CLng(&HC)) Then
  loc_1541998:         End If
  loc_15419D4:         Set var_8C = Me.TxtGrid
  loc_15419DA:         Call 0.Method_Proc_328_57_154220C0 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_100, CVar(CLng(Me.FGrid.Col)))
  loc_15419E2:         var_C0 = var_AC.Text
  loc_15419F8:         LateIdCallSt
  loc_1541A23:         Set var_8C = Me.TxtGrid
  loc_1541A29:         Call 0.Method_Proc_328_57_154220C0 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0), var_86)
  loc_1541A31:         var_13E = var_AC.Text
  loc_1541A48:         If (var_B0 = vbNullString) Then
  loc_1541A5E:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1541A67:           Set var_AC = Me.FGrid
  loc_1541A76:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1541A7B:           var_100 = "No"
  loc_1541A85:           Set var_114 = Me.FGrid
  loc_1541A8B:           LateIdCallSt
  loc_1541AA3:         End If
  loc_1541AA6:       Else
  loc_1541AAD:         If (var_A0 = CLng(&H10)) Then
  loc_1541AB4:           Set var_114 = Me.FGrid
  loc_1541AEC:           Set var_8C = Me.TxtGrid
  loc_1541AF2:           Call 0.Method_Proc_328_57_154220C0 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1541AFA:           var_E0 = var_AC.Text
  loc_1541B10:           LateIdCallSt
  loc_1541B3B:           Set var_8C = Me.TxtGrid
  loc_1541B41:           Call 0.Method_Proc_328_57_154220C0 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1541B49:           var_C0 = var_AC.Text
  loc_1541B60:           If (var_B0 = vbNullString) Then
  loc_1541B76:             var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1541B7F:             Set var_AC = Me.FGrid
  loc_1541B8E:             var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1541B93:             var_100 = "Manual"
  loc_1541B9D:             Set var_114 = Me.FGrid
  loc_1541BA3:             LateIdCallSt
  loc_1541BBB:           End If
  loc_1541BBE:         Else
  loc_1541BC5:           If (var_A0 = CLng(&H11)) Then
  loc_1541BCC:             Set var_114 = Me.FGrid
  loc_1541C04:             Set var_8C = Me.TxtGrid
  loc_1541C0A:             Call 0.Method_Proc_328_57_154220C0 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1541C12:             var_E0 = var_AC.Text
  loc_1541C28:             LateIdCallSt
  loc_1541C53:             Set var_8C = Me.TxtGrid
  loc_1541C59:             Call 0.Method_Proc_328_57_154220C0 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1541C61:             var_C0 = var_AC.Text
  loc_1541C78:             If (var_B0 = vbNullString) Then
  loc_1541C8E:               var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1541C97:               Set var_AC = Me.FGrid
  loc_1541CA6:               var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1541CAB:               var_100 = "Yes"
  loc_1541CB5:               Set var_114 = Me.FGrid
  loc_1541CBB:               LateIdCallSt
  loc_1541CD3:             End If
  loc_1541CD6:           Else
  loc_1541CDD:             If (var_A0 = CLng(6)) Then
  loc_1541CE4:               Set var_114 = Me.FGrid
  loc_1541D1C:               Set var_8C = Me.TxtGrid
  loc_1541D22:               Call 0.Method_Proc_328_57_154220C0 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1541D2A:               var_E0 = var_AC.Text
  loc_1541D40:               LateIdCallSt
  loc_1541D6B:               Set var_8C = Me.TxtGrid
  loc_1541D71:               Call 0.Method_Proc_328_57_154220C0 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1541D79:               var_C0 = var_AC.Text
  loc_1541D90:               If (var_B0 = vbNullString) Then
  loc_1541DA6:                 var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1541DAF:                 Set var_AC = Me.FGrid
  loc_1541DBE:                 var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1541DC3:                 var_100 = "Amt"
  loc_1541DCD:                 Set var_114 = Me.FGrid
  loc_1541DD3:                 LateIdCallSt
  loc_1541DEB:               End If
  loc_1541DEE:             Else
  loc_1541DF5:               If Not (var_A0 = CLng(9)) Then
  loc_1541DFF:                 If (var_A0 = CLng(7)) Then
  loc_1541E02:                 End If
  loc_1541E0E:                 Set var_8C = Me.TxtGrid
  loc_1541E14:                 Call 0.Method_Proc_328_57_154220C0 (0, var_AC, var_B0, var_114, var_100, var_E0)
  loc_1541E1C:                 var_C0 = var_AC.Text
  loc_1541E3F:                 var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1541E57:                 var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1541E84:                 var_170 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_1541E8C:                 Set var_13C = Me.FGrid
  loc_1541E92:                 LateIdCallSt
  loc_1541EBC:               Else
  loc_1541EC3:                 If (var_A0 = CLng(&HD)) Then
  loc_1541F14:                   Set var_8C = Me.TxtGrid
  loc_1541F1A:                   Call 0.Method_Proc_328_57_154220C0 (arg_C, var_AC, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_13C, var_170, 1)
  loc_1541F22:                   1 = var_AC.Text
  loc_1541F3A:                   If (var_100 Or (var_B0 = vbNullString)) Then
  loc_1541F50:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1541F58:                     var_E0 = CVar(CLng(&HF)) 'Long
  loc_1541F5D:                     var_100 = vbNullString
  loc_1541F67:                     Set var_AC = Me.FGrid
  loc_1541F6D:                     LateIdCallSt
  loc_1541F92:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1541F9A:                     var_E0 = CVar(CLng(&HD)) 'Long
  loc_1541F9F:                     var_100 = vbNullString
  loc_1541FA9:                     Set var_AC = Me.FGrid
  loc_1541FAF:                     LateIdCallSt
  loc_1541FD4:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1541FDC:                     var_E0 = CVar(CLng(&HB)) 'Long
  loc_1541FE1:                     var_100 = vbNullString
  loc_1541FEB:                     Set var_AC = Me.FGrid
  loc_1541FF1:                     LateIdCallSt
  loc_1542006:                   Else
  loc_1542019:                     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1542021:                     var_F0 = CVar(CLng(&HF)) 'Long
  loc_1542054:                     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_154205C:                     Set var_138 = Me.FGrid
  loc_1542062:                     LateIdCallSt
  loc_1542091:                     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1542099:                     var_F0 = CVar(CLng(&HD)) 'Long
  loc_15420CC:                     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_15420D4:                     Set var_138 = Me.FGrid
  loc_15420DA:                     LateIdCallSt
  loc_1542135:                     If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_154214B:                       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1542153:                       var_E0 = CVar(CLng(&HB)) 'Long
  loc_1542158:                       var_100 = "+"
  loc_1542162:                       Set var_AC = Me.FGrid
  loc_1542168:                       LateIdCallSt
  loc_154217D:                     Else
  loc_15421BC:                       If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_15421D2:                         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15421DA:                         var_E0 = CVar(CLng(&HB)) 'Long
  loc_15421DF:                         var_100 = "-"
  loc_15421E9:                         Set var_AC = Me.FGrid
  loc_15421EF:                         LateIdCallSt
  loc_1542201:                       End If
  loc_1542201:                     End If
  loc_1542201:                   End If
  loc_1542201:                 End If
  loc_1542201:               End If
  loc_1542201:             End If
  loc_1542201:           End If
  loc_1542201:         End If
  loc_1542201:       End If
  loc_1542201:     End If
  loc_1542201:   End If
  loc_1542201: End If
  loc_1542206: Proc_328_57_154220C = &HFF
End Sub

Public Sub Proc_328_58_F2AC10
  'Data Table: 4E0094
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F2AB12: Set var_8C = Me.Txt
  loc_F2AB18: Call 0.Method_Proc_328_58_F2AC10C (var_8E, var_86)
  loc_F2AB28: For var_92 =  To CByte((var_8E - 1)): CByte(1) = var_92 'Byte
  loc_F2AB3E:   Set var_8C = Me.Txt
  loc_F2AB44:   Call 0.Method_Proc_328_58_F2AC100 (CInt(var_86), var_98)
  loc_F2AB4C:   var_98.Text = vbNullString
  loc_F2AB68:   Set var_8C = Me.Txt
  loc_F2AB6E:   Call 0.Method_Proc_328_58_F2AC100 (CInt(var_86), var_98)
  loc_F2AB76:   var_98.Tag = vbNullString
  loc_F2AB85: Next var_92 'Byte
  loc_F2AB98: Me.LblDepart.Caption = vbNullString
  loc_F2ABB3: Me.FGrid.Rows = 1
  loc_F2ABD0: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F2ABD8: Set var_98 = Me.FGrid
  loc_F2AC07: Me.FGrid.FixedRows = 1
  loc_F2AC0F: Exit Sub
End Sub

Public Sub Proc_328_59_13EC1D8
  'Data Table: 4E0094
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_D8 As Variant
  Dim unk_4E00AD As Connection15
  Dim var_88 As Recordset15
  Dim var_120 As Label
  Dim var_124 As TextBox
  Dim var_8A As Integer
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_11C As Variant
  loc_13EB7D4: On Error Goto loc_13EC1D2
  loc_13EB7EE: If (Me.RecordCount > 0) Then
  loc_13EB7F1:   Call Proc_328_58_F2AC10()
  loc_13EB7FE:   If (MemVar_1F953B0 = "A") Then
  loc_13EB80E:     var_C8 = "Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName,D.Name As Department From ((((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join Depart D On VT.RestCode=D.Code) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Where SP.V_Type+Space(6-len(SP.V_Type))+'**'+Format(SP.AppDate,'dd/mm/yyyy')='"
  loc_13EB857:     unk_4E00AD.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "' Order By SP.SNo"), var_11C, -1
  loc_13EB862:     Set var_88 = var_120
  loc_13EB87F:   Else
  loc_13EB887:     If (MemVar_1F953B0 = "S") Then
  loc_13EB897:       var_C8 = "Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName,D.Name As Department From ((((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join Depart D On VT.RestCode=D.Code) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Where SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)='"
  loc_13EB8E0:       unk_4E00AD.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "' Order By SP.SNo"), var_11C, -1
  loc_13EB8EB:       Set var_88 = var_120
  loc_13EB905:     End If
  loc_13EB905:   End If
  loc_13EB919:   If (var_88.RecordCount > 0) Then
  loc_13EB955:     If (Proc_6_38_E69628(CVar(var_88.Fields.Item("Department")), var_120) = vbNullString) Then
  loc_13EB958:     End If
  loc_13EB98D:     Me.LblDepart.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("Department")))
  loc_13EB9F1:     Set var_120 = Me.Txt
  loc_13EB9F7:     Call 0.Method_Proc_328_59_13EC1D80 (CInt(1), var_124, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mm/yyyy")))
  loc_13EB9FF:     var_124.Text = 1
  loc_13EBA1B:     var_8A = 1
  loc_13EBA31:     Me.FGrid.Rows = 1
  loc_13EBA39:     ' Referenced from: 13EC149
  loc_13EBA48:     If Not(var_88.EOF) Then
  loc_13EBA4B:       var_A4 = vbNullString
  loc_13EBA55:       Set var_94 = Me.FGrid
  loc_13EBA6A:       Set var_12C = Me.FGrid
  loc_13EBA71:       var_C8 = CVar(CLng(var_8A)) 'Long
  loc_13EBA79:       var_10C = CVar(CLng(1)) 'Long
  loc_13EBAA9:       var_D8 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_13EBAB0:       LateIdCallSt
  loc_13EBAFF:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(2)))) 'String
  loc_13EBB06:       LateIdCallSt
  loc_13EBB51:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(var_8A)))) 'String
  loc_13EBB58:       LateIdCallSt
  loc_13EBBA3:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13EBBAA:       LateIdCallSt
  loc_13EBBF5:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13EBBFC:       LateIdCallSt
  loc_13EBC3D:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13EBC45:       var_15C = CVar(CLng(6)) 'Long
  loc_13EBC7B:       var_17C = CVar(CStr(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("PerOrAmt")), var_12C, "Per", FGrid.DispID_10000) = "P"), "Per", "Amt"))) 'String
  loc_13EBC82:       LateIdCallSt
  loc_13EBCFF:       LateIdCallSt
  loc_13EBD3D:       var_190 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoundOff")), var_12C, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_13EBD44:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13EBD4C:       var_15C = CVar(CLng(8)) 'Long
  loc_13EBD82:       var_17C = CVar(CStr(IIf((var_190 = "Y"), "Yes", "No"))) 'String
  loc_13EBD89:       LateIdCallSt
  loc_13EBE06:       LateIdCallSt
  loc_13EBE55:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_12C, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_13EBE5C:       LateIdCallSt
  loc_13EBEA7:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(9)))) 'String
  loc_13EBEAE:       LateIdCallSt
  loc_13EBF00:       LateIdCallSt
  loc_13EBF3A:       var_190 = Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP")), var_12C, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_12C, var_D8)), CVar(CLng(var_8A)))
  loc_13EBF86:       LateIdCallSt
  loc_13EBFE0:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(&HF)), CVar(CLng(var_8A)), var_12C, CVar(CStr(IIf((var_190 = "Y"), "Yes", "No"))), CVar(CLng(&HC)))) 'String
  loc_13EBFE7:       LateIdCallSt
  loc_13EC032:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevName")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13EC039:       LateIdCallSt
  loc_13EC07A:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13EC082:       var_15C = CVar(CLng(&H10)) 'Long
  loc_13EC0AF:       var_11C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("AutoManual")), var_12C, "Auto", CVar(CLng(var_8A))) = "A"), "Auto", "Manual")
  loc_13EC0B8:       var_17C = CVar(CStr(var_11C)) 'String
  loc_13EC0BF:       LateIdCallSt
  loc_13EC119:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PostYn")), CVar(CLng(&H11)), CVar(CLng(var_8A)), var_12C, var_17C, var_15C)) 'String
  loc_13EC120:       LateIdCallSt
  loc_13EC134:       Set var_12C = Nothing 
  loc_13EC13E:       var_8A = (var_8A + 1)
  loc_13EC144:       var_88.MoveNext
  loc_13EC149:       GoTo loc_13EBA39
  loc_13EC14C:     End If
  loc_13EC14C:   End If
  loc_13EC14C:   var_A4 = 0
  loc_13EC156:   Set var_94 = Me.FGrid
  loc_13EC183:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13EC186:     var_A4 = "1"
  loc_13EC190:     Set var_94 = Me.FGrid
  loc_13EC1A1:   End If
  loc_13EC1A1:   var_A4 = 1
  loc_13EC1B4:   Me.FGrid.FixedRows = var_A4
  loc_13EC1BF: Else
  loc_13EC1BF:   Call Proc_328_58_F2AC10(FGrid.DispID_10000, var_A4, FGrid.DispID_2E, var_A4, var_8A, var_12C)
  loc_13EC1C4: End If
  loc_13EC1C4: Call Proc_328_61_EB9A78(var_D8, var_13C, var_12C)
  loc_13EC1CE: Set var_88 = Nothing
  loc_13EC1D1: Exit Sub
  loc_13EC1D2: ' Referenced from: 13EB7D4
  loc_13EC1D2: Proc_6_60_E63754(var_17C, var_15C)
  loc_13EC1D7: Exit Sub
End Sub

Public Sub Proc_328_60_E881F4(arg_C) 'E881F4
  'Data Table: 4E0094
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_E8818E: Set var_8C = Me.Txt
  loc_E88194: Call 0.Method_Proc_328_60_E881F4C (var_8E, var_86)
  loc_E881A4: For var_92 =  To CByte((var_8E - 1)): CByte(1) = var_92 'Byte
  loc_E881BA:   Set var_8C = Me.Txt
  loc_E881C0:   Call 0.Method_Proc_328_60_E881F40 (CInt(var_86), var_98)
  loc_E881C8:   var_98.Enabled = arg_C
  loc_E881D7: Next var_92 'Byte
  loc_E881EA: Me.Frame1.Enabled = arg_C
  loc_E881F2: Exit Sub
End Sub

Public Sub Proc_328_61_EB9A78
  'Data Table: 4E0094
  loc_EB99F0: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EB9A02:   Me.DGVType.Visible = False
  loc_EB9A0A: End If
  loc_EB9A26: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_EB9A38:   Me.DGRevenue.Visible = False
  loc_EB9A40: End If
  loc_EB9A5C: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EB9A6E:   Me.DGSundry.Visible = False
  loc_EB9A76: End If
  loc_EB9A76: Exit Sub
End Sub

Public Sub Proc_328_62_FC069C
  'Data Table: 4E0094
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC051F: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FC0524:   var_92 = 3 'Byte
  loc_FC0528: End If
  loc_FC0531: Set var_98 = Me.TxtGrid
  loc_FC0537: Call 0.Method_Proc_328_62_FC069C0 (0, var_B0)
  loc_FC055A: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC058E: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC05B2:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC05B5:     GoTo loc_FC0687
  loc_FC05B8:   End If
  loc_FC05BC:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC05E6:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC05F0:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC0625:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC0649:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC0662:     Set var_98 = Me.TxtGrid
  loc_FC0668:     Call 0.Method_Proc_328_62_FC069C0 (0, var_B0, CVar(CLng(var_92)))
  loc_FC0670:     var_B0.SetFocus
  loc_FC0681:     Proc_328_62_FC069C = 0
  loc_FC0687:     ' Referenced from: FC05B5
  loc_FC0687:   End If
  loc_FC068A: Next var_D4 'Integer
  loc_FC0694: Proc_328_62_FC069C = &HFF
End Sub

Public Sub Proc_328_63_12DEC30
  'Data Table: 4E0094
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_4E00AD As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_100 As Variant
  Dim var_E0 As Field20
  Dim var_120 As Variant
  Dim var_D0 As Variant
  Dim var_110 As Variant
  Dim var_160 As Variant
  Dim var_F0 As Variant
  Dim var_180 As Variant
  loc_12DE584: On Error Goto loc_12DEC2A
  loc_12DE594: Set var_B0 = Me.FGrid
  loc_12DE59A: var_B0.Rows = 1
  loc_12DE5A4: var_8A = 1
  loc_12DE5BB: var_B4 = "SELECT SF.*,SM.Name as SundryName" & " FROM SundryTypeFix SF inner JOIN SundryMast SM ON (SF.SundryCode = SM.Code and SF.LogSite_Code=Sm.LogSite_Code) where (SF.LOGSITE_CODE='"
  loc_12DE5D9: unk_4E00AD.Execute var_B4 & MemVar_1F95078 & "')" & " Order By SNo ", var_D0, -1
  loc_12DE5E4: Set var_88 = var_B0
  loc_12DE60C: If (var_88.RecordCount > 0) Then
  loc_12DE60F:   ' Referenced from: 12DEB86
  loc_12DE61E:   If Not(var_88.EOF) Then
  loc_12DE621:     var_9C = vbNullString
  loc_12DE62B:     Set var_B0 = Me.FGrid
  loc_12DE640:     Set var_DC = Me.FGrid
  loc_12DE647:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12DE64F:     var_100 = CVar(CLng(1)) 'Long
  loc_12DE67F:     var_120 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_12DE686:     LateIdCallSt
  loc_12DE6D5:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(2)))) 'String
  loc_12DE6DC:     LateIdCallSt
  loc_12DE727:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12DE72E:     LateIdCallSt
  loc_12DE779:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12DE780:     LateIdCallSt
  loc_12DE796:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12DE7D2:     LateIdCallSt
  loc_12DE80C:     var_B8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("PerOrAmt")), var_DC, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_AC, var_DC, var_120)), var_AC)
  loc_12DE813:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12DE81B:     var_160 = CVar(CLng(6)) 'Long
  loc_12DE851:     var_180 = CVar(CStr(IIf((var_B8 = "P"), "Per", "Amt"))) 'String
  loc_12DE858:     LateIdCallSt
  loc_12DE8D5:     LateIdCallSt
  loc_12DE913:     var_B8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoundOff")), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_12DE91A:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12DE922:     var_160 = CVar(CLng(8)) 'Long
  loc_12DE958:     var_180 = CVar(CStr(IIf((var_B8 = "Y"), "Yes", "No"))) 'String
  loc_12DE95F:     LateIdCallSt
  loc_12DE9DC:     LateIdCallSt
  loc_12DEA2B:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_12DEA32:     LateIdCallSt
  loc_12DEA7D:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(9)))) 'String
  loc_12DEA84:     LateIdCallSt
  loc_12DEAC5:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12DEACD:     var_160 = CVar(CLng(&HC)) 'Long
  loc_12DEB03:     var_180 = CVar(CStr(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP")), var_DC, "Yes", CVar(CLng(var_8A))) = "Y"), "Yes", "No"))) 'String
  loc_12DEB0A:     LateIdCallSt
  loc_12DEB2F:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_12DEB37:     var_F0 = CVar(CLng(&H10)) 'Long
  loc_12DEB3C:     var_110 = "Manual"
  loc_12DEB45:     LateIdCallSt
  loc_12DEB51:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_12DEB59:     var_F0 = CVar(CLng(&H11)) 'Long
  loc_12DEB5E:     var_110 = "Yes"
  loc_12DEB67:     LateIdCallSt
  loc_12DEB71:     Set var_DC = Nothing 
  loc_12DEB7B:     var_8A = (var_8A + 1)
  loc_12DEB81:     var_88.MoveNext
  loc_12DEB86:     GoTo loc_12DE60F
  loc_12DEB89:   End If
  loc_12DEB9C:   Me.FGrid.FixedRows = 1
  loc_12DEBA4: End If
  loc_12DEBAA: If (var_8A = 1) Then
  loc_12DEBC0:   Me.FGrid.Rows = 1
  loc_12DEBDD:   var_120 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_12DEBE5:   Set var_E0 = Me.FGrid
  loc_12DEC01:   var_9C = 1
  loc_12DEC14:   Me.FGrid.FixedRows = var_9C
  loc_12DEC1C: End If
  loc_12DEC1C: Call Proc_328_61_EB9A78(FGrid.DispID_10000, var_120, var_8A, var_DC, var_110, var_F0, var_9C)
  loc_12DEC26: Set var_88 = Nothing
  loc_12DEC29: Exit Sub
  loc_12DEC2A: ' Referenced from: 12DE584
  loc_12DEC2A: Proc_6_60_E63754(var_DC, var_110, var_F0)
  loc_12DEC2F: Exit Sub
End Sub

Public Sub Proc_328_64_E7E41C
  'Data Table: 4E0094
  loc_E7E3DD: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Integer
  loc_E7E3F0:   Call Proc_328_55_115A08C(var_88, CInt(5))
  loc_E7E3FB:   If (var_A4 = &HFF) Then
  loc_E7E403:     Proc_328_64_E7E41C = 0
  loc_E7E409:   End If
  loc_E7E40C: Next var_A0 'Integer
  loc_E7E416: Proc_328_64_E7E41C = &HFF
End Sub
