VERSION 5.00
Begin VB.Form RsSpecItemEntry
  Caption = " Special Item Entry"
  BackColor = &HC9E2F5&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  MaxButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 7410
  ClientHeight = 5190
  LockControls = -1  'True
  WhatsThisHelp = -1  'True
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    Left = 2430
    Top = 2460
    Width = 630
    Height = 255
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    Left = 2430
    Top = 1920
    Width = 630
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    Left = 2430
    Top = 2190
    Width = 630
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin CommandButton Cmd
    Caption = "&Save "
    Index = 1
    BackColor = &H80FFFF&
    Left = 2430
    Top = 3360
    Width = 1335
    Height = 525
    Enabled = 0   'False
    TabIndex = 10
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton Cmd
    Caption = "E&xit"
    Index = 0
    BackColor = &H80FFFF&
    Left = 3780
    Top = 3360
    Width = 1335
    Height = 525
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
    Style = 1
  End
End
Begin DataGrid DGHelp
  Left = 1050
  Top = 4530
  Width = 4230
  Height = 2355
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 14
End
Begin DataGrid DGItemCat
  Left = 2415
  Top = 3765
  Width = 4980
  Height = 2460
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 18
End
Begin TextBox Txt
  Index = 3
  BackColor = &HFFFFFF&
  Left = 2430
  Top = 840
  Width = 1275
  Height = 255
  TabIndex = 1
  BorderStyle = 0 'None
  MaxLength = 6
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
Begin TextBox Txt
  Index = 4
  BackColor = &HFFFFFF&
  Left = 2430
  Top = 2730
  Width = 1275
  Height = 255
  TabIndex = 8
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
Begin TextBox Txt
  Index = 6
  BackColor = &HFFFFFF&
  Left = 2430
  Top = 570
  Width = 3855
  Height = 255
  TabIndex = 0
  BorderStyle = 0 'None
  MaxLength = 35
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
Begin TextBox Txt
  Index = 5
  BackColor = &HFFFFFF&
  Left = 2430
  Top = 1650
  Width = 3855
  Height = 255
  TabIndex = 4
  BorderStyle = 0 'None
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
Begin TextBox Txt
  Index = 2
  BackColor = &HFFFFFF&
  Left = 2430
  Top = 3000
  Width = 3855
  Height = 255
  TabIndex = 9
  BorderStyle = 0 'None
  MaxLength = 35
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
Begin TextBox Txt
  Index = 0
  BackColor = &HFFFFFF&
  Left = 2430
  Top = 1110
  Width = 3855
  Height = 255
  TabIndex = 2
  BorderStyle = 0 'None
  MaxLength = 35
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
Begin TextBox Txt
  Index = 1
  BackColor = &HFFFFFF&
  Left = 2430
  Top = 1380
  Width = 1275
  Height = 255
  TabIndex = 3
  BorderStyle = 0 'None
  MaxLength = 6
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
Begin TopCtrl TopCtrl1
  Left = 0
  Top = 4815
  Width = 7410
  Height = 375
  Visible = 0   'False
  TabIndex = 12
End
End

Attribute VB_Name = "RsSpecItemEntry"

Private global_84 As Integer

Private Sub DGHelp_UnknownEvent_9 'F49934
  'Data Table: 459BF0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4982B: Me.DGHelp.Visible = False
  loc_F4984A: If (Me.RecordCount > 0) Then
  loc_F49889:   Set var_B4 = Me.Txt
  loc_F4988F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F49897:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F498CA:   var_B0 = Me.Fields.Item("Name")
  loc_F498E9:   Set var_B4 = Me.Txt
  loc_F498EF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F498F7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4990D: End If
  loc_F49918: Set var_A8 = Me.Txt
  loc_F4991E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F49926: var_B0.SetFocus
  loc_F49932: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F9EB6C
  'Data Table: 459BF0
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As TextBox
  Dim var_D0 As TextBox
  loc_F9EA0F: (False).Visible = 
  loc_F9EA2E: If (Me.RecordCount > 0) Then
  loc_F9EA80:   Set var_CC = Me.Txt
  loc_F9EA86:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(CStr(Me.Fields.Item("Code").Value)(var_D0).Tag)))
  loc_F9EA8E:   var_D0.Tag = 
  loc_F9EAE6:   Set var_B4 = CStr(Me.Fields.Item("Name").Value)(var_D0)
  loc_F9EAFD:   Set var_CC = Me.Txt
  loc_F9EB03:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(var_B4.Tag)))
  loc_F9EB0B:   var_D0.Text = 
  loc_F9EB2B: End If
  loc_F9EB49: Set var_B0 = Me.Txt
  loc_F9EB4F: Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr((var_B4).Tag)))
  loc_F9EB57: var_B4.SetFocus
  loc_F9EB6B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1373B74
  'Data Table: 459BF0
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  loc_137330A: Set var_88 = Me.Txt
  loc_1373310: Call 0.Method_Txt_GotFocus0 (Index)
  loc_137331E: Proc_6_74_E23240(var_8C)
  loc_137332A: Call Proc_74_25_EFA1C0(var_8C)
  loc_137332F: On Error Goto loc_1373B2E
  loc_1373335: var_92 = Index
  loc_1373340: If (var_92 = CInt(5)) Then
  loc_1373391:   Set var_88 = Me.Txt
  loc_1373397:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_137339F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13733B7:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_13733BA:     Exit Sub
  loc_13733BB:   End If
  loc_13733C8:   Set var_88 = Me.Txt
  loc_13733CE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13733D6:   var_A0 = var_8C.Text
  loc_13733E8:   var_B0 = "Name"
  loc_13733FF:   var_B4 = Me.Fields.Item(var_B0)
  loc_1373423:   If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_137342C:     Me.MoveFirst
  loc_137344F:     Set var_88 = Me.Txt
  loc_1373455:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_137345D:     0 = var_8C.Text
  loc_1373476:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_137348B:   End If
  loc_137348E: Else
  loc_1373496:   If Not (var_92 = CInt(7)) Then
  loc_13734A1:     If Not (var_92 = CInt(8)) Then
  loc_13734AC:       If (var_92 = CInt(9)) Then
  loc_13734AF:       End If
  loc_13734AF:     End If
  loc_13734BE:     Set var_88 = Me.Txt
  loc_13734C4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13734CC:     var_8C.SelStart = 0
  loc_13734E5:     Set var_88 = Me.Txt
  loc_13734EB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1373506:     Set var_90 = Me.Txt
  loc_137350C:     Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_1373514:     var_B4.SelLength = Len(var_8C.Text)
  loc_1373534:     Set var_88 = Me.Txt
  loc_137353A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1373554:     Set var_90 = Me.Txt
  loc_137355A:     Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_1373562:     var_B4.Tag = var_8C.Text
  loc_1373578:   Else
  loc_1373580:     If (var_92 = CInt(2)) Then
  loc_1373591:       Set var_88 = Me.Txt
  loc_1373597:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_13735B6:       (CVar(var_8C.Left)).Left = 
  loc_13735D2:       Set var_90 = Me.Txt
  loc_13735D8:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_B4)
  loc_13735F3:       Set var_88 = Me.Txt
  loc_13735F9:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_1373611:       var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_1373620:       (CVar(var_8C.Left)).Top = 
  loc_1373641:       Me.Filter = 0
  loc_1373652:       Me.Filter = "RestType='Kitchen'"
  loc_13736A5:       Set var_88 = Me.Txt
  loc_13736AB:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13736CB:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_13736CE:         Exit Sub
  loc_13736CF:       End If
  loc_13736DC:       Set var_88 = Me.Txt
  loc_13736E2:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13736EA:       var_A0 = var_8C.Text
  loc_13736FC:       var_B0 = "Name"
  loc_1373713:       var_B4 = Me.Fields.Item(var_B0)
  loc_1373737:       If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_1373740:         Me.MoveFirst
  loc_1373763:         Set var_88 = Me.Txt
  loc_1373769:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1373771:         0 = var_8C.Text
  loc_137378A:         Me.Find 1 & var_A0 & "'", var_B0, 
  loc_137379F:       End If
  loc_13737A2:     Else
  loc_13737AA:       If (var_92 = CInt(6)) Then
  loc_13737BB:         Set var_88 = Me.Txt
  loc_13737C1:         Call 0.Method_Txt_GotFocus0 (CInt(6), var_8C)
  loc_13737E0:         (CVar(var_8C.Left)).Left = 
  loc_13737FC:         Set var_90 = Me.Txt
  loc_1373802:         Call 0.Method_Txt_GotFocus0 (CInt(6), var_B4)
  loc_137381D:         Set var_88 = Me.Txt
  loc_1373823:         Call 0.Method_Txt_GotFocus0 (CInt(6), var_8C)
  loc_137383B:         var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_137384A:         (CVar(var_8C.Left)).Top = 
  loc_137386B:         Me.Filter = 0
  loc_137387C:         Me.Filter = "RestType<>'Kitchen'"
  loc_13738CF:         Set var_88 = Me.Txt
  loc_13738D5:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13738F5:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_13738F8:           Exit Sub
  loc_13738F9:         End If
  loc_1373906:         Set var_88 = Me.Txt
  loc_137390C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1373914:         var_A0 = var_8C.Text
  loc_1373926:         var_B0 = "Name"
  loc_1373961:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_137396A:           Me.MoveFirst
  loc_137398D:           Set var_88 = Me.Txt
  loc_1373993:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_137399B:           0 = var_8C.Text
  loc_13739B4:           Me.Find 1 & var_A0 & "'", var_B0, 
  loc_13739C9:         End If
  loc_13739CC:       Else
  loc_13739D4:         If (var_92 = CInt(0)) Then
  loc_13739D7:           GoTo loc_1373B2D
  loc_13739DA:         End If
  loc_13739E2:         If (var_92 = CInt(1)) Then
  loc_1373A33:           Set var_88 = Me.Txt
  loc_1373A39:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1373A59:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1373A5C:             Exit Sub
  loc_1373A5D:           End If
  loc_1373A6A:           Set var_88 = Me.Txt
  loc_1373A70:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1373A78:           var_A0 = var_8C.Text
  loc_1373A8A:           var_B0 = "Name"
  loc_1373AC5:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1373ACE:             Me.MoveFirst
  loc_1373AF1:             Set var_88 = Me.Txt
  loc_1373AF7:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1373AFF:             0 = var_8C.Text
  loc_1373B18:             Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1373B2D:             ' Referenced from:         13739D7
  loc_1373B2D:           End If
  loc_1373B2D:         End If
  loc_1373B2D:       End If
  loc_1373B2D:     End If
  loc_1373B2D:   End If
  loc_1373B2D: End If
  loc_1373B2D: Exit Sub
  loc_1373B2E: ' Referenced from: 137332F
  loc_1373B36: Set var_88 = Err()
  loc_1373B3C: Call 0.Method_arg_2C (var_A0)
  loc_1373B5D: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_124)
  loc_1373B70: Exit Sub
  loc_1373B71: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '107F3D4
  'Data Table: 459BF0
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_107F14A: If (CLng(Shift) = &H1B) Then
  loc_107F14D:   Call Proc_74_25_EFA1C0()
  loc_107F152:   Exit Sub
  loc_107F153: End If
  loc_107F156: var_86 = KeyCode
  loc_107F161: If (var_86 = CInt(0)) Then
  loc_107F164:   GoTo loc_107F2D2
  loc_107F167: End If
  loc_107F16F: If (var_86 = CInt(5)) Then
  loc_107F18A:   Set var_9C = Nothing
  loc_107F195:   Set var_98 = Nothing
  loc_107F1C3:   Proc_6_69_134A630(Me.DGItemCat, Me.Txt, KeyCode, global_64, Shift, 0)
  loc_107F1DA: Else
  loc_107F1E2:   If Not (var_86 = CInt(6)) Then
  loc_107F1ED:     If (var_86 = CInt(2)) Then
  loc_107F1F0:     End If
  loc_107F208:     Set var_9C = Nothing
  loc_107F213:     Set var_98 = Nothing
  loc_107F241:     Proc_6_69_134A630(var_98(1), Me.Txt, KeyCode, global_60, Shift, 0, 1)
  loc_107F258:   Else
  loc_107F260:     If (var_86 = CInt(1)) Then
  loc_107F277:       If (Me.EOF = 0) Then
  loc_107F292:         Set var_98 = Nothing
  loc_107F2C0:         Proc_6_79_11AD564(var_9C(var_98)(var_98), Me.Txt, KeyCode, global_68, Shift, 0, 1)
  loc_107F2D2:       End If
  loc_107F2D2:     End If
  loc_107F2D2:     ' Referenced from: 107F164
  loc_107F2D2:   End If
  loc_107F2D2: End If
  loc_107F31A: Set var_9C = Me.DGItemCat
  loc_107F343: If ((var_9C And (CBool(0((0 And (CBool(var_98((CBool(Me.DGHelp.Visible) = 0)).Visible) = 0))).Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_107F35B:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_107F35E:   End If
  loc_107F37C:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(2))) Then
  loc_107F384:     Call Cmd_Click()
  loc_107F38C:   Else
  loc_107F3A1:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_107F3AA:       Proc_6_75_E5335C(Shift, arg_14, 1)
  loc_107F3B2:     Else
  loc_107F3C5:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(6))) Then
  loc_107F3CE:         Proc_6_76_E533C8(Shift, arg_14)
  loc_107F3D3:       End If
  loc_107F3D3:     End If
  loc_107F3D3:   End If
  loc_107F3D3: End If
  loc_107F3D3: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1040FA0
  'Data Table: 459BF0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  Dim var_CC As Variant
  Dim var_94 As Variant
  loc_1040D4F: Proc_6_58_E06050(arg_10)
  loc_1040D5A: Proc_6_133_E7FB08(var_94)
  loc_1040D63: arg_10 = CInt(var_94)
  loc_1040D6C: var_96 = KeyAscii
  loc_1040D77: If Not (var_96 = CInt(7)) Then
  loc_1040D82:   If Not (var_96 = CInt(8)) Then
  loc_1040D8D:     If (var_96 = CInt(9)) Then
  loc_1040D90:     End If
  loc_1040D90:   End If
  loc_1040DB9:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1040DC9:     Set var_CC = Me.Txt
  loc_1040DCF:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_1040DD7:     var_D0.Text = var_96
  loc_1040DE6:   Else
  loc_1040E0F:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1040E1F:       Set var_CC = Me.Txt
  loc_1040E25:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "No")
  loc_1040E2D:       var_D0.Text = arg_10
  loc_1040E39:     End If
  loc_1040E39:   End If
  loc_1040E3B:   arg_10 = 0
  loc_1040E41: Else
  loc_1040E49:   If (var_96 = CInt(3)) Then
  loc_1040E56:     Set var_CC = Me.Txt
  loc_1040E5C:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_1040E77:     Proc_6_42_129B55C(var_D0, arg_10, 4)
  loc_1040E86:   Else
  loc_1040E8E:     If Not (var_96 = CInt(6)) Then
  loc_1040E99:       If (var_96 = CInt(2)) Then
  loc_1040E9C:       End If
  loc_1040EB8:       If (CBool(arg_10(0).Visible) = &HFF) Then
  loc_1040ECA:         var_DC = "Name"
  loc_1040EE5:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10)
  loc_1040EF4:       End If
  loc_1040EF7:     Else
  loc_1040EFF:       If (var_96 = CInt(5)) Then
  loc_1040F1E:         If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_1040F25:           Set var_D0 = Me.Txt
  loc_1040F4B:           Proc_6_89_1470B00(var_D0, KeyAscii, global_64, arg_10, "Name")
  loc_1040F5A:         End If
  loc_1040F5D:       Else
  loc_1040F65:         If (var_96 = CInt(4)) Then
  loc_1040F72:           Set var_CC = Me.Txt
  loc_1040F78:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, 0)
  loc_1040F93:           Proc_6_42_129B55C(var_D0, arg_10, 8, 2)
  loc_1040F9F:         End If
  loc_1040F9F:       End If
  loc_1040F9F:     End If
  loc_1040F9F:   End If
  loc_1040F9F: End If
  loc_1040F9F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E926F4
  'Data Table: 459BF0
  Dim var_86 As Integer
  loc_E92683: var_86 = KeyCode
  loc_E9268E: If (var_86 = CInt(0)) Then
  loc_E92691:   GoTo loc_E926F2
  loc_E92694: End If
  loc_E9269C: If (var_86 = CInt(1)) Then
  loc_E926BB:   If (CBool((var_86).Visible) = &HFF) Then
  loc_E926C8:     var_A0 = "Name"
  loc_E926E3:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_68)
  loc_E926F2:     ' Referenced from: E92691
  loc_E926F2:   End If
  loc_E926F2: End If
  loc_E926F2: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E475BC
  'Data Table: 459BF0
  loc_E4759A: Set var_88 = Me.Txt
  loc_E475A0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E475AE: Proc_6_73_E23294(var_8C)
  loc_E475BA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '135022C
  'Data Table: 459BF0
  Dim var_8A As Integer
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_F0 As String
  Dim var_EC As TextBox
  Dim Me As Recordset15
  Dim var_E8 As Fields15
  Dim var_C4 As Variant
  Dim var_90 As Fields15
  Dim var_10C As String
  Dim unk_459C05 As Connection15
  loc_134FA2C: On Error Goto loc_13501E6
  loc_134FA32: var_8A = Cancel
  loc_134FA3D: If Not (var_8A = CInt(7)) Then
  loc_134FA48:   If Not (var_8A = CInt(8)) Then
  loc_134FA53:     If (var_8A = CInt(9)) Then
  loc_134FA56:     End If
  loc_134FA56:   End If
  loc_134FA60:   Set var_90 = Me.Txt
  loc_134FA66:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_134FAA1:   If (Ucase(Left(CVar(var_94), 1)) = "Y") Then
  loc_134FAB1:     Set var_90 = Me.Txt
  loc_134FAB7:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_134FABF:     var_94.Text = "Yes"
  loc_134FACE:   Else
  loc_134FADB:     Set var_90 = Me.Txt
  loc_134FAE1:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_134FAE9:     var_94.Text = "No"
  loc_134FAF5:   End If
  loc_134FAF8: Else
  loc_134FB00:   If (var_8A = CInt(4)) Then
  loc_134FB0D:     Set var_90 = Me.Txt
  loc_134FB13:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_134FB3F:     var_F0 = CStr(Format(CVar(var_94), "0.00"))
  loc_134FB4D:     Set var_E8 = Me.Txt
  loc_134FB53:     Call 0.Method_Txt_Validate0 (Cancel, var_EC, var_F0)
  loc_134FB5B:     var_EC.Text = 1
  loc_134FB78:   Else
  loc_134FB80:     If (var_8A = CInt(0)) Then
  loc_134FB83:       GoTo loc_13501E5
  loc_134FB86:     End If
  loc_134FB8E:     If (var_8A = CInt(1)) Then
  loc_134FBDF:       Set var_90 = Me.Txt
  loc_134FBE5:       Call 0.Method_Txt_Validate0 (Cancel, var_94, var_F0)
  loc_134FBED:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_134FC05:       If (1 Or (var_F0 = vbNullString)) Then
  loc_134FC08:         Exit Sub
  loc_134FC09:       End If
  loc_134FC13:       Set var_90 = Me.Txt
  loc_134FC19:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_134FC4A:       var_EC = Me.Fields.Item("Name")
  loc_134FC52:       var_C4 = CVar(var_EC) 'Address
  loc_134FC59:       var_E4 = Ucase(var_C4)
  loc_134FC75:       If (Ucase(CVar(var_94)) = var_E4) Then
  loc_134FCB3:         Set var_E8 = Me.Txt
  loc_134FCB9:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134FCC1:         var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_134FCF4:         var_94 = Me.Fields.Item("Code")
  loc_134FD05:         var_F0 = CStr(var_94.Value)
  loc_134FD12:         Set var_E8 = Me.Txt
  loc_134FD18:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134FD20:         var_EC.Tag = var_F0
  loc_134FD36:       End If
  loc_134FD39:     Else
  loc_134FD41:       If (var_8A = CInt(5)) Then
  loc_134FD92:         Set var_90 = Me.Txt
  loc_134FD98:         Call 0.Method_Txt_Validate0 (Cancel, var_94, var_F0)
  loc_134FDA0:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_134FDB8:         If (var_8A Or (var_F0 = vbNullString)) Then
  loc_134FDBB:           Exit Sub
  loc_134FDBC:         End If
  loc_134FDF7:         Set var_E8 = Me.Txt
  loc_134FDFD:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134FE05:         var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_134FE38:         var_94 = Me.Fields.Item("Code")
  loc_134FE56:         Set var_E8 = Me.Txt
  loc_134FE5C:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134FE64:         var_EC.Tag = CStr(var_94.Value)
  loc_134FE7D:       Else
  loc_134FE85:         If (var_8A = CInt(6)) Then
  loc_134FE93:           Set var_90 = Me.Txt
  loc_134FE99:           Call 0.Method_Txt_Validate0 (CInt(6))
  loc_134FEA1:           var_F0 = "Restaurant"
  loc_134FEC2:           If (Proc_183_19_E8E68C(var_94, var_F0) = 0) Then
  loc_134FECC:             Call Txt_GotFocus(CInt(6))
  loc_134FED1:             Exit Sub
  loc_134FED2:           End If
  loc_134FF20:           Set var_90 = Me.Txt
  loc_134FF26:           Call 0.Method_Txt_Validate0 (Cancel, var_94, var_F0)
  loc_134FF2E:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_134FF46:           If (var_94 Or (var_F0 = vbNullString)) Then
  loc_134FF49:             Exit Sub
  loc_134FF4A:           End If
  loc_134FF85:           Set var_E8 = Me.Txt
  loc_134FF8B:           Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134FF93:           var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_134FFC6:           var_94 = Me.Fields.Item("Code")
  loc_134FFD7:           var_F0 = CStr(var_94.Value)
  loc_134FFE4:           Set var_E8 = Me.Txt
  loc_134FFEA:           Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134FFF2:           var_EC.Tag = var_F0
  loc_1350026:           Set var_90 = Me.Txt
  loc_135002C:           Call 0.Method_Txt_Validate0 (CInt(6), var_94, var_F0, "SELECT Code,Name FROM ItemMast Where DispCode=9999 and RestCode='")
  loc_1350034:           var_A4 = var_94.Tag
  loc_135003D:           var_10C = -1 & var_F0
  loc_135004D:           unk_459C05.Execute var_10C & "' ORDER BY Name", var_E8, 
  loc_135005E:           Set global_56 = var_E8
  loc_1350082:           CVarUnk
  loc_1350087:           VerifyVarObj
  loc_135008D:           Set var_90 = Me.DGHelp
  loc_1350093:           LateIdStAd
  loc_13500A4:         Else
  loc_13500AC:           If (var_8A = CInt(2)) Then
  loc_1350103:             Call 0.Method_Txt_Validate0 (Cancel, var_94, var_F0)
  loc_135010B:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_1350123:             If (Me.Txt Or (var_F0 = vbNullString)) Then
  loc_1350126:               Exit Sub
  loc_1350127:             End If
  loc_1350162:             Set var_E8 = Me.Txt
  loc_1350168:             Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1350170:             var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13501B4:             var_F0 = CStr(Me.Fields.Item("Code").Value)
  loc_13501C1:             Set var_E8 = Me.Txt
  loc_13501C7:             Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_13501CF:             var_EC.Tag = var_F0
  loc_13501E5:           End If
  loc_13501E5:         End If
  loc_13501E5:       End If
  loc_13501E5:       ' Referenced from:     134FB83
  loc_13501E5:     End If
  loc_13501E5:   End If
  loc_13501E5: End If
  loc_13501E5: Exit Sub
  loc_13501E6: ' Referenced from: 134FA2C
  loc_13501EE: Set var_90 = Err()
  loc_13501F4: Call 0.Method_arg_2C (var_F0)
  loc_1350215: MsgBox(CVar(var_F0), &H40, "Information", var_C4, var_E4)
  loc_1350228: Exit Sub
  loc_1350229: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_9 'F497D4
  'Data Table: 459BF0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F496CB: Me.DGItemCat.Visible = False
  loc_F496EA: If (Me.RecordCount > 0) Then
  loc_F49729:   Set var_B4 = Me.Txt
  loc_F4972F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(5), var_B8)
  loc_F49737:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4976A:   var_B0 = Me.Fields.Item("Name")
  loc_F49789:   Set var_B4 = Me.Txt
  loc_F4978F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(5), var_B8)
  loc_F49797:   var_B8.Text = CStr(var_B0.Value)
  loc_F497AD: End If
  loc_F497B8: Set var_A8 = Me.Txt
  loc_F497BE: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(5))
  loc_F497C6: var_B0.SetFocus
  loc_F497D2: Exit Sub
End Sub

Private Sub Cmd_Click() 'EC1510
  'Data Table: 459BF0
  Dim var_88 As Variant
  loc_EC1484: On Error Goto loc_EC149D
  loc_EC1494: Me.Global.Unload Me
  loc_EC149C: Exit Sub
  loc_EC149D: ' Referenced from: EC1484
  loc_EC14A5: Set var_88 = Err()
  loc_EC14AB: Call 0.Method_arg_1C (var_8C)
  loc_EC14B8: Set var_94 = Err()
  loc_EC14BE: Call 0.Method_arg_2C (var_98)
  loc_EC14EF: MsgBox(CVar(CStr(var_8C) & " : " & var_98), &H10, "Message ", var_EC, var_10C)
  loc_EC150F: Exit Sub
End Sub

Private Sub Form_Load() '1262ECC
  'Data Table: 459BF0
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_459C05 As Connection15
  Dim var_BC As Variant
  Dim var_A8 As Variant
  Dim var_F0 As DataGrid
  Dim var_F4 As TextBox
  Dim var_B8 As Variant
  loc_1262968: On Error Goto loc_1262E87
  loc_126297D: Set var_8C = Me
  loc_1262983: Proc_6_23_DFC5B8(var_8C, 5190)
  loc_126298B: Call Proc_74_26_FB3804(7430)
  loc_1262995: global_84 = &HFF
  loc_12629B3: var_98 = "SELECT Code,Name,ItemGroup FROM ItemMast Where LogSite_Code in ('HO','" & MemVar_1F95078 & "') and DispCode=9999 ORDER BY Name"
  loc_12629BC: unk_459C05.Execute var_98, var_B8, -1
  loc_12629CD: Set global_56 = var_8C
  loc_12629EB: CVarUnk
  loc_12629F0: VerifyVarObj
  loc_12629FC: LateIdStAd
  loc_1262A25: var_98 = "SELECT Code,Name,RestType FROM Depart Where LogSite_Code in ('" & MemVar_1F95078 & "') and RestType IN ('Other','Hall','Restaurant','Room Service','Kitchen') ORDER BY Name"
  loc_1262A2E: unk_459C05.Execute var_98, var_B8, -1
  loc_1262A5D: CVarUnk
  loc_1262A62: VerifyVarObj
  loc_1262A6E: LateIdStAd
  loc_1262A90: var_94 = "SELECT ItemCatMast.Code, ItemCatMast.Name, Depart.Name as OutletName FROM ItemCatMast INNER JOIN Depart ON ItemCatMast.RestCode = Depart.Code Where Depart.LogSite_Code in ('HO','" & MemVar_1F95078
  loc_1262AB6: unk_459C05.Execute var_94 & "') and RestCode='" & pRestCode & "' ORDER BY ItemCatMast.Name", var_B8, -1
  loc_1262AC7: Set global_64 = var_8C(Me.DGHelp)
  loc_1262AEB: CVarUnk
  loc_1262AF0: VerifyVarObj
  loc_1262AFC: LateIdStAd
  loc_1262B2E: unk_459C05.Execute "SELECT Name as Code,Name FROM UnitMast Where LogSite_Code in ('HO','" & MemVar_1F95078 & "') ORDER BY Name", var_B8, -1
  loc_1262B5D: CVarUnk
  loc_1262B62: VerifyVarObj
  loc_1262B68: Set var_8C = var_8C(Me.DGItemCat)
  loc_1262B6E: LateIdStAd
  loc_1262B84: If (MemVar_1F953B0 = "A") Then
  loc_1262B9B:   var_94 = "SELECT (I.RestCode+I.Code) AS SEARCHCODE,I.Code,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,IG.Name as ItemGrpName,I.TYPE,DispCode,R.Name as RestName,I.RestCode,I.kitchen,K.Name as KitchenName FROM ((((ItemMast I Inner join ItemGrp IG on IG.Code=I.ItemGroup) Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code))Inner Join Depart R on R.Code=I.RestCode) Inner Join Depart K on K.Code=I.Kitchen Where I.LogSite_Code in ('" & MemVar_1F95078
  loc_1262BA2:   var_98 = "SELECT Name as Code,Name FROM UnitMast Where LogSite_Code in ('HO','" & MemVar_1F95078 & "') and IG.Type IN ('Finish','Semi Finish') And I.DispCode=9999 ORDER BY R.Name,I.Name"
  loc_1262BAB:   unk_459C05.Execute var_98, var_B8, -1
  loc_1262BBC:   Set global_52 = var_8C
  loc_1262BD4: Else
  loc_1262BE8:   var_94 = "SELECT (I.RestCode+I.Code) AS SEARCHCODE,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,IG.Name as ItemGrpName,I.TYPE,DispCode,R.Name as RestName,I.RestCode,I.kitchen,K.Name as KitchenName FROM ((((ItemMast I Inner join ItemGrp IG on IG.Code=I.ItemGroup) Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code))Inner Join Depart R on R.Code=I.RestCode)Inner Join Depart K on K.Code=I.Kitchen Where I.LogSite_Code in ('" & MemVar_1F95078
  loc_1262BEF:   var_98 = "SELECT Name as Code,Name FROM UnitMast Where LogSite_Code in ('HO','" & MemVar_1F95078 & "') and  IG.Type IN ('Finish','Semi Finish') And I.DispCode=9999 ORDER BY R.Name,I.Name"
  loc_1262BF8:   unk_459C05.Execute var_98, var_B8, -1
  loc_1262C09:   Set global_52 = var_8C
  loc_1262C1E: End If
  loc_1262C24: global_80 = "Finish"
  loc_1262C39: Call 0.Method_Form_Load0 (1, var_BC, &HFF, Me.Cmd, Me.Cmd, Me.Cmd, Me.Cmd)
  loc_1262C41: var_BC.Enabled = global_64
  loc_1262C57: Set var_8C = Me.TopCtrl1
  loc_1262C5D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E("Add")
  loc_1262C66: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_0(var_8C)
  loc_1262C71: Call Proc_74_22_EAEBBC(var_8C, global_56)
  loc_1262C89: If (pRestCode <> vbNullString) Then
  loc_1262CA8:   Call 0.Method_Form_Load0 (CInt(6), var_BC, pRestCode)
  loc_1262CB0:   var_BC.Tag = Me.Txt
  loc_1262CC2:   var_94 = PRestName
  loc_1262CD5:   Set var_8C = Me.Txt
  loc_1262CDB:   Call 0.Method_Form_Load0 (CInt(6), var_BC)
  loc_1262CE3:   var_BC.Text = var_94
  loc_1262CF2: End If
  loc_1262CFF: Set var_8C = Me.Txt
  loc_1262D05: Call 0.Method_Form_Load0 (CInt(3), var_BC)
  loc_1262D0D: var_BC.Enabled = False
  loc_1262D26: Set var_8C = Me.Txt
  loc_1262D2C: Call 0.Method_Form_Load0 (CInt(6), var_BC)
  loc_1262D34: var_BC.Enabled = False
  loc_1262D4E: Set var_8C = Me.Txt
  loc_1262D54: Call 0.Method_Form_Load0 (CInt(8), var_BC)
  loc_1262D5C: var_BC.Text = "Yes"
  loc_1262D76: Set var_8C = Me.Txt
  loc_1262D7C: Call 0.Method_Form_Load0 (CInt(7), var_BC)
  loc_1262D84: var_BC.Text = "No"
  loc_1262D9E: Set var_8C = Me.Txt
  loc_1262DA4: Call 0.Method_Form_Load0 (CInt(9), var_BC)
  loc_1262DAC: var_BC.Text = "No"
  loc_1262DC1: Call 0.Method_arg_160 (var_8C)
  loc_1262DCF: Call 0.Method_arg_164 (var_8C)
  loc_1262DE5: Set var_8C = Me.PictShortCuts
  loc_1262DEB: Call 0.Method_Form_Load0 (CInt(5), var_BC)
  loc_1262E0A: Me.DGItemCat.Left = CVar(MDIForm1.PictShortCuts.Left)
  loc_1262E26: Set var_F0 = Me.Txt
  loc_1262E2C: Call 0.Method_Form_Load0 (CInt(5), var_F4)
  loc_1262E47: Set var_8C = Me.Txt
  loc_1262E4D: Call 0.Method_Form_Load0 (CInt(5), var_BC)
  loc_1262E65: var_A8 = CVar(((var_BC.Top + var_F4.Height) + CDbl(&H1E))) 'Single
  loc_1262E74: Me.DGItemCat.Top = CVar(MDIForm1.PictShortCuts.Left)
  loc_1262E86: Exit Sub
  loc_1262E87: ' Referenced from: 1262968
  loc_1262E8F: Set var_8C = Err()
  loc_1262E95: Call 0.Method_arg_2C (var_94)
  loc_1262EB6: MsgBox(CVar(var_94), &H40, "Information", var_10C, var_12C)
  loc_1262EC9: Exit Sub
  loc_1262ECA: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6CD88
  'Data Table: 459BF0
  Dim arg_78FF As Double
  loc_E6CD35: If (global_84 = &HFF) Then
  loc_E6CD38:   Call Proc_74_20_1597FEC()
  loc_E6CD3D: End If
  loc_E6CD48: Set global_52 = Nothing
  loc_E6CD5A: Set global_56 = Nothing
  loc_E6CD6C: Set global_60 = Nothing
  loc_E6CD7E: Set global_64 = Nothing
  loc_E6CD85: Exit Sub
  loc_E6CD86: arg_78FF = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E479D4
  'Data Table: 459BF0
  loc_E479A0: On Error Goto loc_E479CD
  loc_E479AD: If (CLng(KeyCode) = &H1B) Then
  loc_E479B5:   global_84 = 0
  loc_E479C5:   Me.Global.Unload Me
  loc_E479CD:   ' Referenced from: E479A0
  loc_E479CD: End If
  loc_E479CD: Proc_6_60_E63754(global_84)
  loc_E479D2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'F534F4
  'Data Table: 459BF0
  Dim var_94 As TextBox
  loc_F533DC: On Error Goto loc_F534B0
  loc_F533DF: Call Proc_74_22_EAEBBC()
  loc_F533F9: var_88 = "ADD"
  loc_F53407: Call Proc_74_21_E77834(Proc_5_1_100EC1C(var_88, Me))
  loc_F53420: Set var_8C = Me.Txt
  loc_F53426: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(8), var_94)
  loc_F5342E: var_94.Text = "Yes"
  loc_F53448: Set var_8C = Me.Txt
  loc_F5344E: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(7), var_94)
  loc_F53456: var_94.Text = "No"
  loc_F53470: Set var_8C = Me.Txt
  loc_F53476: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(9), var_94)
  loc_F5347E: var_94.Text = "No"
  loc_F53495: Set var_8C = Me.Txt
  loc_F5349B: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(6), var_94)
  loc_F534A3: var_94.SetFocus
  loc_F534AF: Exit Sub
  loc_F534B0: ' Referenced from: F533DC
  loc_F534B8: Set var_8C = Err()
  loc_F534BE: Call 0.Method_arg_2C (var_88)
  loc_F534DF: MsgBox(CVar(var_88), &H40, "Information", var_E4, var_104)
  loc_F534F2: Exit Sub
End Sub

Public Property Get PKOTForm() 'E14F1C
  'Data Table: 459BF0
  loc_E14F10: Set var_88 = global_88 
  loc_E14F14: PKOTForm = 
End Sub

Public Property Let PKOTForm(vNewValue) 'E14DB4
  'Data Table: 459BF0
  loc_E14DAD: Set global_88 = vNewValue
  loc_E14DB1: Exit Sub
End Sub

Public Property Get pRestCode() 'E0FC6C
  'Data Table: 459BF0
  loc_E0FC60: var_88 = global_92
  loc_E0FC63: pRestCode = 
  loc_E0FC69: Exit Sub
End Sub

Public Property Let pRestCode(vNewValue) 'E14C4C
  'Data Table: 459BF0
  loc_E14C44: global_92 = vNewValue
  loc_E14C48: Exit Sub
  loc_E14C49: Exit Sub
End Sub

Public Property Get PRestName() 'E14C04
  'Data Table: 459BF0
  loc_E14BF8: var_88 = global_96
  loc_E14BFB: PRestName = 
  loc_E14C01: Exit Sub
End Sub

Public Property Let PRestName(vNewValue) 'E14BBC
  'Data Table: 459BF0
  loc_E14BB4: global_96 = vNewValue
  loc_E14BB8: Exit Sub
  loc_E14BB9: Exit Sub
End Sub

Public Sub Proc_74_20_1597FEC
  'Data Table: 459BF0
  Dim var_E4 As Variant
  Dim var_9C As String
  Dim unk_459C05 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_118 As Variant
  Dim var_12C As TextBox
  Dim var_140 As TextBox
  Dim var_C0 As Variant
  Dim var_1A4 As TextBox
  Dim var_200 As Variant
  Dim var_110 As String
  Dim var_150 As String
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_1D8 As Variant
  Dim var_220 As Variant
  Dim var_128 As Field20
  Dim var_D0 As Variant
  Dim var_8C As Recordset15
  loc_1596EF4: On Error Goto loc_1597F98
  loc_1596EFB: var_86 = CByte(0) 'Byte
  loc_1596F0A: Set var_90 = Me.Txt
  loc_1596F10: Call 0.Method_Proc_74_20_1597FEC0 (CInt(0))
  loc_1596F39: If (Proc_183_19_E8E68C(var_94, "Name") = 0) Then
  loc_1596F43:   Call Txt_GotFocus(CInt(0))
  loc_1596F48:   Exit Sub
  loc_1596F49: End If
  loc_1596F54: Set var_90 = Me.Txt
  loc_1596F5A: Call 0.Method_Proc_74_20_1597FEC0 (CInt(1), var_94)
  loc_1596F83: If (Proc_183_19_E8E68C(var_94, "Unit") = 0) Then
  loc_1596F8D:   Call Txt_GotFocus(CInt(1))
  loc_1596F92:   Exit Sub
  loc_1596F93: End If
  loc_1596F9E: Set var_90 = Me.Txt
  loc_1596FA4: Call 0.Method_Proc_74_20_1597FEC0 (CInt(5), var_94)
  loc_1596FCD: If (Proc_183_19_E8E68C(var_94, "Item Category") = 0) Then
  loc_1596FD7:   Call Txt_GotFocus(CInt(5))
  loc_1596FDC:   Exit Sub
  loc_1596FDD: End If
  loc_1596FE1: Set var_90 = Me.TopCtrl1
  loc_1596FE7: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_94)
  loc_1596FFC: If ( = "Add") Then
  loc_1597007:   If (MemVar_1F953B0 = "A") Then
  loc_1597010:     var_E4 = 0
  loc_159702D:     var_9C = "Select iif(IsNull(Max(val(MID(Q.Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From (Select Code,Site_Code From Item Union Select Code,Site_Code From Itemmast)Q WHERE Q.SITE_CODE='" & MemVar_1F95070
  loc_159703D:     unk_459C05.Execute "Item Category" & "'", var_C0, -1
  loc_1597045:     var_90 = var_90.Fields
  loc_159704D:     var_E4 = var_94.Item(var_94)
  loc_1597055:     var_98 = var_98.Value
  loc_1597064:     global_76 = CStr(var_D0)
  loc_1597084:   Else
  loc_159708C:     If (MemVar_1F953B0 = "S") Then
  loc_1597095:       var_E4 = 0
  loc_15970B2:       var_9C = "Select IsNull(Max(CAST(SUBSTRING(Q.Code,3,6) AS INT)),1)+1 AS MyCode From (Select Code,Site_Code From Item Union Select Code,Site_Code From Itemmast)Q WHERE Q.SITE_CODE='" & MemVar_1F95070
  loc_15970C2:       unk_459C05.Execute "Item Category" & "'", var_C0, -1
  loc_15970CA:       var_90 = var_90.Fields
  loc_15970D2:       var_E4 = var_94.Item(var_94)
  loc_15970DA:       var_98 = var_98.Value
  loc_15970E3:       var_E8 = CStr(var_D0)
  loc_15970E9:       global_76 = var_E8
  loc_1597106:     End If
  loc_1597106:   End If
  loc_1597113:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1597141:   var_108 = (1 + Format(global_76, "000000"))
  loc_159714C:   global_76 = CStr(var_108)
  loc_1597161: Else
  loc_159717E:   var_94 = Me.Fields.Item("Code")
  loc_1597195:   global_76 = CStr(var_94.Value)
  loc_15971A6: End If
  loc_15971AF: unk_459C05.BeginTrans var_10C
  loc_15971B8: var_86 = CByte(1) 'Byte
  loc_15971C0: Set var_90 = Me.TopCtrl1
  loc_15971C6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E(1)
  loc_15971DB: If (var_F8 = "Add") Then
  loc_15971EC:   Set var_90 = Me.Txt
  loc_15971F2:   Call 0.Method_Proc_74_20_1597FEC0 (CInt(0), var_94, var_E8)
  loc_15971FA:   var_D0 = var_94.Text
  loc_159720D:   Set var_98 = Me.Txt
  loc_1597213:   Call 0.Method_Proc_74_20_1597FEC0 (CInt(6), var_118)
  loc_159722E:   Set var_128 = Me.Txt
  loc_1597234:   Call 0.Method_Proc_74_20_1597FEC0 (CInt(1), var_12C)
  loc_159724F:   Set var_13C = Me.Txt
  loc_1597255:   Call 0.Method_Proc_74_20_1597FEC0 (CInt(5), var_140)
  loc_1597267:   var_C0 = CVar(Proc_6_14_EF402C(var_D0)) 'String
  loc_159726D:   Proc_6_8_EB1974(var_D0)
  loc_1597280:   Set var_1A0 = Me.Txt
  loc_1597286:   Call 0.Method_Proc_74_20_1597FEC0 (CInt(2), var_1A4)
  loc_159729E:   Set var_1EC = Me.Txt
  loc_15972A4:   Call 0.Method_Proc_74_20_1597FEC0 (CInt(8), var_1F0)
  loc_15972C8:   Set var_244 = Me.Txt
  loc_15972CE:   Call 0.Method_Proc_74_20_1597FEC0 (CInt(7), var_248)
  loc_15972F2:   Set var_29C = Me.Txt
  loc_15972F8:   Call 0.Method_Proc_74_20_1597FEC0 (CInt(9), var_2A0)
  loc_1597325:   var_9C = "Insert Into ItemMast (Code,Name,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,DirectYN,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,DiscApp,SChrgApp,RateIncTax,LogSite_Code) " & " Values ('"
  loc_159736E:   var_150 = var_9C & global_76 & "','" & var_E8 & "','" & var_118.Tag & "',9999,'" & var_12C.Text & "','9999','" & var_140.Tag & "','Y','"
  loc_15973B9:   var_1C8 = CVar(var_150 & MemVar_1F95078 & "','" & MemVar_1F950C8 & "',") & var_D0 & ",'A','" & CVar(global_80) & "','" & CVar(var_1A4.Tag) 
  loc_15973C9:   var_220 = var_1C8 & "','" & Left(CVar(var_1F0), 1) 
  loc_1597413:   unk_459C05.Execute CStr(var_220 & "','" & Left(CVar(var_248), 1) & "','" & Left(CVar(var_2A0), 1) & "','" & CVar(MemVar_1F95078) & "')"), var_354, -1
  loc_1597498: Else
  loc_15974B6:   Set var_90 = Me.Txt
  loc_15974BC:   Call 0.Method_Proc_74_20_1597FEC0 (CInt(1), var_94, var_9C, "UPDATE ItemMast SET Unit='", var_220)
  loc_15974C4:   -1 = var_94.Text
  loc_15974D4:   var_110 = var_13C & var_9C & "',ItemGroup='Finish',ItemCatCode='"
  loc_15974E5:   Set var_98 = Me.Txt
  loc_15974EB:   Call 0.Method_Proc_74_20_1597FEC0 (CInt(5), var_118, var_E8)
  loc_15974F3:   var_110 = var_118.Tag
  loc_1597527:   var_C0 = CVar(Proc_6_14_EF402C(CVar(var_358 & var_E8 & "',SITE_CODE='" & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8 & "',U_EntDt="))) 'String
  loc_159752D:   Proc_6_8_EB1974(var_D0, var_C0)
  loc_1597566:   Set var_128 = Me.Txt
  loc_159756C:   Call 0.Method_Proc_74_20_1597FEC0 (CInt(2), var_12C)
  loc_1597595:   var_200 = var_C0 & var_D0 & " ,U_AE='E',TYPE='" & CVar(global_80) & "',Kitchen='" & CVar(var_12C.Tag) & "' WHERE Code='" & CVar(global_76) 
  loc_15975AC:   unk_459C05.Execute CStr(var_200 & "'"), , 
  loc_15975F6: End If
  loc_1597623: Set var_90 = Me.Txt
  loc_1597629: Call 0.Method_Proc_74_20_1597FEC0 (CInt(1), var_94, var_9C, "Select Count(*) From UnitMast Where Name='", var_C0, -1)
  loc_1597631: var_98 = var_94.Text
  loc_159764A: unk_459C05.Execute var_118 & var_9C & "'", 0, var_128
  loc_1597652: var_D0 = var_98.Fields
  loc_159765A:  = var_118.Item()
  loc_1597662:  = var_128.Value
  loc_159768F: If (var_D0 <= 0) Then
  loc_15976B7:   Set var_90 = Me.Txt
  loc_15976BD:   Call 0.Method_Proc_74_20_1597FEC0 (CInt(1), var_94, var_9C, "Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code)" & " Values('")
  loc_15976C5:   var_1B8 = var_94.Text
  loc_15976CE:   var_E8 = -1 & var_9C
  loc_15976FF:   Proc_6_8_EB1974(var_D0, CVar(Proc_6_14_EF402C(CVar(var_118 & var_9C & "'" & "','" & MemVar_1F95078 & "','" & MemVar_1F950C8 & "',"))))
  loc_1597731:   unk_459C05.Execute CStr(var_98 & var_D0 & ",'A','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1597765: End If
  loc_159776B: unk_459C05.CommitTrans
  loc_1597774: var_86 = CByte(0) 'Byte
  loc_1597783: Me.Requery -1
  loc_1597793: Me.Requery -1
  loc_15977A3: Me.Requery -1
  loc_15977B6: Set var_90 = Me.Txt
  loc_15977BC: Call 0.Method_Proc_74_20_1597FEC0 (CInt(6), var_94)
  loc_1597813: Me.Find "SearchCode='" & var_94.Tag & global_76 & "'", 0, 1
  loc_1597828: var_9C = Form.Name
  loc_1597838: If (var_9C = "RSSaleBill") Then
  loc_1597846:   var_D0 = Me.FGrid.Row
  loc_159784D:   var_E4 = &HD
  loc_159785A:   var_1D8 = CVar(global_76) 'String
  loc_1597869:   VarLateMemCallSt
  loc_159787E:   var_C0 = Me.FGrid
  loc_159789F:   Set var_90 = var_94(CInt(0))
  loc_15978A5:   Call 0.Method_Proc_74_20_1597FEC0 (var_9C, 5, var_C0.Row, Me.FGrid)
  loc_15978AD:   var_1D8 = var_C0.TextBox.Text
  loc_15978B5:   var_F8 = CVar(var_9C) 'String
  loc_15978C4:   VarLateMemCallSt
  loc_15978E2:   var_C0 = Me.FGrid
  loc_1597903:   Set var_90 = var_94(CInt(3))
  loc_1597909:   Call 0.Method_Proc_74_20_1597FEC0 (var_9C, 3, var_C0.Row, Me.FGrid)
  loc_1597911:   var_F8 = var_C0.TextBox.Text
  loc_1597919:   var_F8 = CVar(var_9C) 'String
  loc_1597928:   VarLateMemCallSt
  loc_1597946:   var_C0 = Me.FGrid
  loc_1597952:   var_E4 = 7
  loc_1597967:   Set var_90 = var_94(CInt(1))
  loc_159796D:   Call 0.Method_Proc_74_20_1597FEC0 (var_9C, var_E4, var_C0.Row, Me.FGrid)
  loc_1597975:   var_F8 = var_C0.TextBox.Text
  loc_159798C:   VarLateMemCallSt
  loc_15979AF:   Set var_90 = var_94(CInt(4))
  loc_15979B5:   Call 0.Method_Proc_74_20_1597FEC0 (Me.FGrid, CVar(var_9C), var_E4)
  loc_15979C5:   var_16C = Me.FGrid.Row
  loc_15979CC:   var_18C = 9
  loc_1597A06:   VarLateMemCallSt
  loc_1597A29:   Set var_90 = var_94(CInt(4))
  loc_1597A2F:   Call 0.Method_Proc_74_20_1597FEC0 (Me.FGrid, Format(CVar(var_94), "0.00"), 1, 1)
  loc_1597A46:   var_18C = &HA
  loc_1597A80:   VarLateMemCallSt
  loc_1597A9E:   var_C0 = Me.FGrid
  loc_1597ABF:   Set var_90 = var_94(CInt(2))
  loc_1597AC5:   Call 0.Method_Proc_74_20_1597FEC0 (var_9C, &H1C, var_C0.Row, Me.FGrid, Format(CVar(var_94), "0.00"), 1)
  loc_1597ACD:   1 = var_C0.TextBox.Tag
  loc_1597AD5:   var_F8 = CVar(var_9C) 'String
  loc_1597AE4:   VarLateMemCallSt
  loc_1597B1A:   Set var_90 = var_94(CInt(5))
  loc_1597B20:   Call 0.Method_Proc_74_20_1597FEC0 (var_9C, "Select TaxStru from ItemCatMast where Code='", var_C0, -1, var_98, Me.FGrid)
  loc_1597B28:   var_F8 = Me.TextBox.Tag
  loc_1597B41:   unk_459C05.Execute var_18C & var_9C & "'", Me.FGrid.Row, var_18C
  loc_1597B78:   If (var_98.RecordCount > 0) Then
  loc_1597B81:     var_F8 = Me.FGrid
  loc_1597B86:     var_108 = var_F8.Row
  loc_1597B8D:     var_18C = &H1A
  loc_1597BAB:     var_94 = var_F8.Recordset15.Fields.Item("TaxStru")
  loc_1597BBA:     var_D0 = Trim(CVar(var_94))
  loc_1597BC9:     var_16C = Me.FGrid
  loc_1597BCE:     VarLateMemCallSt
  loc_1597BE7:   Else
  loc_1597BF2:     var_D0 = Me.FGrid.Row
  loc_1597BF9:     var_E4 = &H1A
  loc_1597C00:     var_1D8 = vbNullString
  loc_1597C0C:     var_F8 = Me.FGrid
  loc_1597C11:     VarLateMemCallSt
  loc_1597C20:   End If
  loc_1597C25:   Set var_8C = Nothing
  loc_1597C36:   Set var_90 = var_94(CInt(8))
  loc_1597C3C:   Call 0.Method_Proc_74_20_1597FEC0 (var_9C, var_F8, var_1D8, var_E4, var_D0, var_16C)
  loc_1597C44:   var_D0 = Me.TextBox.Text
  loc_1597C8F:   VarLateMemCallSt
  loc_1597CB9:   Set var_90 = var_94(CInt(7))
  loc_1597CBF:   Call 0.Method_Proc_74_20_1597FEC0 (var_9C, Me.FGrid, Left(Trim(CVar(var_9C)), 1), &H15, Me.FGrid.Row)
  loc_1597CC7:   var_18C = Me.TextBox.Text
  loc_1597CE5:   var_16C = Me.FGrid.Row
  loc_1597D12:   VarLateMemCallSt
  loc_1597D3C:   Set var_90 = var_94(CInt(9))
  loc_1597D42:   Call 0.Method_Proc_74_20_1597FEC0 (var_9C, Me.FGrid, Left(Trim(CVar(var_9C)), 1), &H1D)
  loc_1597D4A:   var_16C = Me.TextBox.Text
  loc_1597D68:   var_16C = Me.FGrid.Row
  loc_1597D6F:   var_E4 = &H1E
  loc_1597D81:   var_F8 = Left(Trim(CVar(var_9C)), 1)
  loc_1597D90:   var_17C = Me.FGrid
  loc_1597D95:   VarLateMemCallSt
  loc_1597DB4: Else
  loc_1597DBF:   var_D0 = Me.FGrid.Row
  loc_1597DC6:   var_E4 = &HA
  loc_1597DE2:   VarLateMemCallSt
  loc_1597DF7:   var_C0 = Me.FGrid
  loc_1597E18:   Set var_90 = var_94(CInt(0))
  loc_1597E1E:   Call 0.Method_Proc_74_20_1597FEC0 (var_9C, 4, var_C0.Row, Me.FGrid, CVar(global_76), 4)
  loc_1597E26:   var_D0 = var_C0.TextBox.Text
  loc_1597E3D:   VarLateMemCallSt
  loc_1597E5B:   var_C0 = Me.FGrid
  loc_1597E7C:   Set var_90 = var_94(CInt(3))
  loc_1597E82:   Call 0.Method_Proc_74_20_1597FEC0 (var_9C, 3, var_C0.Row, Me.FGrid, CVar(var_9C))
  loc_1597E8A:   var_17C = var_C0.TextBox.Text
  loc_1597EA1:   VarLateMemCallSt
  loc_1597EBF:   var_C0 = Me.FGrid
  loc_1597ECB:   var_E4 = 5
  loc_1597EE0:   Set var_90 = var_94(CInt(1))
  loc_1597EE6:   Call 0.Method_Proc_74_20_1597FEC0 (var_9C, var_E4, var_C0.Row, Me.FGrid, CVar(var_9C))
  loc_1597EEE:   var_F8 = var_C0.TextBox.Text
  loc_1597F05:   VarLateMemCallSt
  loc_1597F28:   Set var_90 = var_94(CInt(4))
  loc_1597F2E:   Call 0.Method_Proc_74_20_1597FEC0 (Me.FGrid, CVar(var_9C), var_E4)
  loc_1597F39:   var_108 = Me.FGrid
  loc_1597F3E:   var_16C = var_108.Row
  loc_1597F45:   var_18C = 8
  loc_1597F5B:   var_D0 = "0.00"
  loc_1597F6B:   var_F8 = Format(CVar(var_94), var_D0)
  loc_1597F7A:   var_17C = Me.FGrid
  loc_1597F7F:   VarLateMemCallSt
  loc_1597F97: End If
  loc_1597F97: Exit Sub
  loc_1597F98: ' Referenced from: 1596EF4
  loc_1597FA1: If (CInt(var_86) = 1) Then
  loc_1597FAA:   Me.Connection15.RollbackTrans
  loc_1597FAF: End If
  loc_1597FB7: Set var_90 = Err()
  loc_1597FBD: Call 0.Method_arg_2C (var_9C, var_17C, var_F8, 1, 1)
  loc_1597FD6: MsgBox(CVar(var_9C), &H10, var_D0, var_F8, var_108)
  loc_1597FE9: Exit Sub
End Sub

Public Sub Proc_74_21_E77834(arg_C) 'E77834
  'Data Table: 459BF0
  Dim var_98 As TextBox
  loc_E777E2: Set var_8C = Me.Txt
  loc_E777E8: Call 0.Method_Proc_74_21_E77834C (var_8E, var_86)
  loc_E777F8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7780E:   Set var_8C = Me.Txt
  loc_E77814:   Call 0.Method_Proc_74_21_E778340 (CInt(var_86), var_98)
  loc_E7781C:   var_98.Enabled = arg_C
  loc_E7782B: Next var_92 'Byte
  loc_E77831: Exit Sub
End Sub

Public Sub Proc_74_22_EAEBBC
  'Data Table: 459BF0
  Dim var_98 As TextBox
  loc_EAEB3A: Set var_8C = Me.Txt
  loc_EAEB40: Call 0.Method_Proc_74_22_EAEBBCC (var_8E, var_86)
  loc_EAEB50: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAEB66:   Set var_8C = Me.Txt
  loc_EAEB6C:   Call 0.Method_Proc_74_22_EAEBBC0 (CInt(var_86), var_98)
  loc_EAEB74:   var_98.Text = vbNullString
  loc_EAEB83: Next var_92 'Byte
  loc_EAEB9C: Set var_8C = Me.Txt
  loc_EAEBA2: Call 0.Method_Proc_74_22_EAEBBC0 (CInt(3), var_98)
  loc_EAEBAA: var_98.Text = CStr(9999)
  loc_EAEBB9: Exit Sub
End Sub

Public Sub Proc_74_23_1259E84
  'Data Table: 459BF0
  Dim Me As Recordset15
  Dim var_BC As TextBox
  loc_1259910: On Error Goto loc_1259E7E
  loc_1259919: Proc_183_45_E5CCA8(global_52)
  loc_1259935: If (Me.RecordCount <= 0) Then
  loc_1259938:   Call Proc_74_22_EAEBBC()
  loc_1259940: Else
  loc_1259974:   global_80 = CStr(Me.Fields.Item("Type").Value)
  loc_12599B9:   global_76 = CStr(Me.Fields.Item("Name").Value)
  loc_1259A06:   Set var_B8 = Me.Txt
  loc_1259A0C:   Call 0.Method_Proc_74_23_1259E840 (CInt(0), var_BC)
  loc_1259A14:   var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1259A66:   Set var_B8 = Me.Txt
  loc_1259A6C:   Call 0.Method_Proc_74_23_1259E840 (CInt(0), var_BC)
  loc_1259A74:   var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1259AC6:   Set var_B8 = Me.Txt
  loc_1259ACC:   Call 0.Method_Proc_74_23_1259E840 (CInt(3), var_BC)
  loc_1259AD4:   var_BC.Text = CStr(Me.Fields.Item("DispCode").Value)
  loc_1259B23:   Set var_B8 = Me.Txt
  loc_1259B29:   Call 0.Method_Proc_74_23_1259E840 (CInt(8), var_BC)
  loc_1259B31:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")))
  loc_1259B7E:   Set var_B8 = Me.Txt
  loc_1259B84:   Call 0.Method_Proc_74_23_1259E840 (CInt(7), var_BC)
  loc_1259B8C:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("SChrApp")))
  loc_1259BD9:   Set var_B8 = Me.Txt
  loc_1259BDF:   Call 0.Method_Proc_74_23_1259E840 (CInt(9), var_BC)
  loc_1259BE7:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RateIncTax")))
  loc_1259C34:   Set var_B8 = Me.Txt
  loc_1259C3A:   Call 0.Method_Proc_74_23_1259E840 (CInt(1), var_BC)
  loc_1259C42:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")))
  loc_1259C8F:   Set var_B8 = Me.Txt
  loc_1259C95:   Call 0.Method_Proc_74_23_1259E840 (CInt(5), var_BC)
  loc_1259C9D:   var_BC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCatCode")))
  loc_1259CEA:   Set var_B8 = Me.Txt
  loc_1259CF0:   Call 0.Method_Proc_74_23_1259E840 (CInt(5), var_BC)
  loc_1259CF8:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCategory")))
  loc_1259D45:   Set var_B8 = Me.Txt
  loc_1259D4B:   Call 0.Method_Proc_74_23_1259E840 (CInt(6), var_BC)
  loc_1259D53:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RestName")))
  loc_1259DA0:   Set var_B8 = Me.Txt
  loc_1259DA6:   Call 0.Method_Proc_74_23_1259E840 (CInt(6), var_BC)
  loc_1259DAE:   var_BC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")))
  loc_1259DFB:   Set var_B8 = Me.Txt
  loc_1259E01:   Call 0.Method_Proc_74_23_1259E840 (CInt(2), var_BC)
  loc_1259E09:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("KitchenName")))
  loc_1259E56:   Set var_B8 = Me.Txt
  loc_1259E5C:   Call 0.Method_Proc_74_23_1259E840 (CInt(2), var_BC)
  loc_1259E64:   var_BC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")))
  loc_1259E78: End If
  loc_1259E78: Call Proc_74_25_EFA1C0()
  loc_1259E7D: Exit Sub
  loc_1259E7E: ' Referenced from: 1259910
  loc_1259E7E: Proc_6_60_E63754()
  loc_1259E83: Exit Sub
End Sub

Public Sub Proc_74_24_1081FB0
  'Data Table: 459BF0
  Dim Me As Recordset15
  Dim var_C8 As TextBox
  Dim unk_459C05 As Connection15
  Dim var_E0 As Fields15
  Dim var_F4 As Field20
  loc_1081D47: If (Me.RecordCount = 0) Then
  loc_1081D4A:   Proc_74_24_1081FB0 = 
  loc_1081D50: End If
  loc_1081D54: Set var_90 = Me.TopCtrl1
  loc_1081D5A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1081D6F: If ( = "Add") Then
  loc_1081DAD:   Set var_90 = Me.Txt
  loc_1081DB3:   Call 0.Method_Proc_74_24_1081FB00 (CInt(0), var_C8, var_CC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_1081DD4:   unk_459C05.Execute var_E0 & var_CC & "' And Type IN ('Finish','Semi Finish') And DispCode=9999", 0, var_F4
  loc_1081DE4:    = var_E0.Item()
  loc_1081DEC:    = var_F4.Value
  loc_1081E1D:   If (var_C8.Text.Fields > 0) Then
  loc_1081E3B:     var_B0 = "Duplicate Name"
  loc_1081E41:     MsgBox(var_B0, &H40, "Information", var_114, var_134)
  loc_1081E5C:     Set var_90 = Me.Txt
  loc_1081E62:     Call 0.Method_Proc_74_24_1081FB00 (CInt(0))
  loc_1081E6A:     var_C8.SetFocus
  loc_1081E7B:     Proc_74_24_1081FB0 = &HFF
  loc_1081E81:   End If
  loc_1081E84: Else
  loc_1081EBF:   Set var_90 = Me.Txt
  loc_1081EC5:   Call 0.Method_Proc_74_24_1081FB00 (CInt(0), var_C8, var_CC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_1081EF7:   unk_459C05.Execute var_E0 & var_CC & "' And Name<>'" & global_76 & "' And Type IN ('Finish','Semi Finish') And DispCode=9999", 0, var_F4
  loc_1081F07:    = var_E0.Item(var_C8)
  loc_1081F0F:    = var_F4.Value
  loc_1081F44:   If (var_C8.Text.Fields > 0) Then
  loc_1081F68:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1081F83:     Set var_90 = Me.Txt
  loc_1081F89:     Call 0.Method_Proc_74_24_1081FB00 (CInt(0))
  loc_1081F91:     var_C8.SetFocus
  loc_1081FA2:     Proc_74_24_1081FB0 = &HFF
  loc_1081FA8:   End If
  loc_1081FA8: End If
  loc_1081FA8: Proc_74_24_1081FB0 = var_C8
  loc_1081FAE: Exit Sub
End Sub

Public Sub Proc_74_25_EFA1C0
  'Data Table: 459BF0
  loc_EFA100: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EFA112:   Me.DGHelp.Visible = False
  loc_EFA11A: End If
  loc_EFA136: If (CBool(().Visible) = &HFF) Then
  loc_EFA148:   (False).Visible = 
  loc_EFA150: End If
  loc_EFA16C: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_EFA17E:   Me.DGItemCat.Visible = False
  loc_EFA186: End If
  loc_EFA1A2: If (CBool(().Visible) = &HFF) Then
  loc_EFA1B4:   (False).Visible = 
  loc_EFA1BC: End If
  loc_EFA1BC: Exit Sub
End Sub

Public Sub Proc_74_26_FB3804
  'Data Table: 459BF0
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As TextBox
  Dim var_88 As DataGrid
  loc_FB3664: On Error Goto loc_FB37FC
  loc_FB3675: Set var_88 = Me.Txt
  loc_FB367B: Call 0.Method_Proc_74_26_FB38040 (CInt(0), var_8C)
  loc_FB369A: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_FB36B6: Set var_B4 = Me.Txt
  loc_FB36BC: Call 0.Method_Proc_74_26_FB38040 (CInt(0), var_B8)
  loc_FB36D7: Set var_88 = Me.Txt
  loc_FB36DD: Call 0.Method_Proc_74_26_FB38040 (CInt(0), var_8C)
  loc_FB36F5: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_FB3704: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_FB3729: (CVar(CDbl(7000))).Left = 
  loc_FB3744: (CVar(CDbl(2700))).Top = 
  loc_FB375A: Set var_88 = Me.Txt
  loc_FB3760: Call 0.Method_Proc_74_26_FB38040 (CInt(1), var_8C)
  loc_FB377F: (CVar(var_8C.Left)).Left = 
  loc_FB379B: Set var_B4 = Me.Txt
  loc_FB37A1: Call 0.Method_Proc_74_26_FB38040 (CInt(1), var_B8)
  loc_FB37BC: Set var_88 = Me.Txt
  loc_FB37C2: Call 0.Method_Proc_74_26_FB38040 (CInt(1), var_8C)
  loc_FB37DA: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_FB37E9: (CVar(var_8C.Left)).Top = 
  loc_FB37FB: Exit Sub
  loc_FB37FC: ' Referenced from: FB3664
  loc_FB37FC: Proc_6_60_E63754()
  loc_FB3801: Exit Sub
End Sub

Public Sub Proc_74_27_E81924
  'Data Table: 459BF0
  loc_E818C4: Call Proc_74_25_EFA1C0()
  loc_E81900: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E81903:   Call Proc_74_20_1597FEC()
  loc_E8190B: Else
  loc_E81911:   Call 0.Method_arg_1E8 (var_108)
  loc_E81919:   Call var_108.SetFocus
  loc_E81922: End If
  loc_E81922: Exit Sub
End Sub
