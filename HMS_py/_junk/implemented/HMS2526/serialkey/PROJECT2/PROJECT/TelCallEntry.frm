VERSION 5.00
Begin VB.Form TelCallEntry
  Caption = "Call Code Master"
  BackColor = &HADDAC0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClipControls = 0   'False
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 9165
  ClientHeight = 3660
  LockControls = -1  'True
  Begin MaskEdBox txtTime
    Left = 1845
    Top = 1305
    Width = 570
    Height = 255
    TabIndex = 3
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 7695
    Top = 3480
    Width = 1890
    Height = 255
    Visible = 0   'False
    TabIndex = 25
    BorderStyle = 0 'None
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
  Begin TextBox txtDRS
    BackColor = &HFFFFFF&
    Left = 5295
    Top = 780
    Width = 2925
    Height = 255
    Visible = 0   'False
    TabIndex = 23
    BorderStyle = 0 'None
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
  Begin DataGrid DGExtension
    Left = 5940
    Top = 1485
    Width = 2955
    Height = 1995
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin CommandButton Cmd
    Caption = "E&xit"
    Index = 0
    BackColor = &H68D5F4&
    Left = 4425
    Top = 3015
    Width = 1335
    Height = 525
    TabIndex = 22
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
  Begin CommandButton Cmd
    Caption = "&Save "
    Index = 1
    BackColor = &H68D5F4&
    Left = 3090
    Top = 3015
    Width = 1335
    Height = 525
    TabIndex = 21
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
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 2385
    Width = 900
    Height = 255
    TabIndex = 8
    BorderStyle = 0 'None
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
    Index = 9
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 2655
    Width = 900
    Height = 255
    TabIndex = 9
    BorderStyle = 0 'None
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
    Index = 5
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 1575
    Width = 1350
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
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
    Index = 6
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 1845
    Width = 2295
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
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
    Index = 7
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 2115
    Width = 900
    Height = 255
    TabIndex = 7
    BorderStyle = 0 'None
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
    Index = 4
    BackColor = &HFFFFFF&
    Left = 150
    Top = 3420
    Width = 1890
    Height = 255
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
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
  Begin DataGrid DGHelp
    Left = 6330
    Top = 1305
    Width = 2550
    Height = 1995
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 1035
    Width = 1200
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
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
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 765
    Width = 1200
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
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
    Left = 1845
    Top = 495
    Width = 2295
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
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
  Begin MSFlexGrid FGPoint
    Left = 2070
    Top = 3015
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 27
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9165
    Height = 510
    Visible = 0   'False
    TabIndex = 28
  End
  Begin Label LblName
    Caption = "V Type"
    Index = 0
    ForeColor = &H0&
    Left = 6075
    Top = 3480
    Width = 660
    Height = 240
    Visible = 0   'False
    TabIndex = 26
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
  Begin Label lblNo
    Caption = "Room Number"
    ForeColor = &H0&
    Left = 3135
    Top = 780
    Width = 2040
    Height = 240
    Visible = 0   'False
    TabIndex = 24
    Alignment = 1 'Right Justify
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
  Begin Label LblLedgerAc
    Caption = "Call Information"
    Index = 5
    ForeColor = &H0&
    Left = 255
    Top = 2115
    Width = 1365
    Height = 240
    TabIndex = 20
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
    Caption = "Call Rate"
    Index = 3
    ForeColor = &H0&
    Left = 255
    Top = 2385
    Width = 825
    Height = 240
    TabIndex = 19
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
  Begin Label LblLedgerAc
    Caption = "Call Amount"
    Index = 4
    ForeColor = &H0&
    Left = 240
    Top = 2655
    Width = 1065
    Height = 240
    TabIndex = 18
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
  Begin Label LblLedgerAc
    Caption = "Call Time"
    Index = 3
    ForeColor = &H0&
    Left = 255
    Top = 1305
    Width = 855
    Height = 240
    TabIndex = 17
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
    Caption = "Duration"
    Index = 1
    ForeColor = &H0&
    Left = 255
    Top = 1575
    Width = 750
    Height = 240
    TabIndex = 16
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
  Begin Label LblLedgerAc
    Caption = "Dialled Number"
    Index = 1
    ForeColor = &H0&
    Left = 240
    Top = 1845
    Width = 1410
    Height = 240
    TabIndex = 15
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
  Begin Label LblLedgerAc
    Caption = "Call Date"
    Index = 0
    ForeColor = &H0&
    Left = 240
    Top = 1035
    Width = 825
    Height = 240
    TabIndex = 12
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
    Caption = "Extension"
    Index = 2
    ForeColor = &H0&
    Left = 255
    Top = 765
    Width = 870
    Height = 240
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
  Begin Label LblLedgerAc
    Caption = "Pnt No"
    Index = 2
    ForeColor = &H0&
    Left = 270
    Top = 495
    Width = 600
    Height = 240
    TabIndex = 10
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
End

Attribute VB_Name = "TelCallEntry"

Private global_68 As Variant

Private Sub Cmd_Click(Index As Integer) 'E547F0
  'Data Table: 4481F8
  Dim var_86 As Integer
  loc_E547B7: var_86 = Index
  loc_E547C2: If (var_86 = CInt(1)) Then
  loc_E547C5:   Call Proc_95_16_12E9578(var_86)
  loc_E547CD: Else
  loc_E547D5:   If (var_86 = CInt(0)) Then
  loc_E547E5:     Me.Global.Unload Me
  loc_E547ED:   End If
  loc_E547ED: End If
  loc_E547ED: Exit Sub
End Sub

Private Sub Form_Load() 'F67434
  'Data Table: 4481F8
  Dim unk_448225 As Connection15
  Dim unk_448207 As Connection15
  Dim var_AC As Variant
  loc_F6730C: On Error Goto loc_F673F0
  loc_F67321: Set var_88 = Me
  loc_F67327: Proc_6_23_DFC5B8(var_88, 4100)
  loc_F6732F: Call Proc_95_20_ED5C8C(9300)
  loc_F6734A: unk_448225.Execute "SELECT Code,CAST(Extension AS VARCHAR) AS EXT FROM TelExt ORDER BY Extension", var_AC, -1
  loc_F67372: CVarUnk
  loc_F67377: VerifyVarObj
  loc_F6737D: Set var_88 = Me.DGExtension
  loc_F67383: LateIdStAd
  loc_F673A7: unk_448207.Execute "SELECT * FROM EPABX_OUT", var_AC, -1
  loc_F673B8: Set global_52 = var_88
  loc_F673C6: Call Proc_95_18_F8D5BC(var_88, var_88)
  loc_F673D4: Call 0.Method_arg_160 (var_88, var_88)
  loc_F673E2: Call 0.Method_arg_164 (var_88)
  loc_F673EA: Call Proc_95_17_F7C21C(var_88)
  loc_F673EF: Exit Sub
  loc_F673F0: ' Referenced from: F6730C
  loc_F673F8: Set var_88 = Err()
  loc_F673FE: Call 0.Method_arg_2C (var_B4)
  loc_F6741F: MsgBox(CVar(var_B4), &H40, "Information", var_E4, var_104)
  loc_F67432: Exit Sub
  loc_F67433: Exit Sub
End Sub

Private Sub Form_Resize() 'DFD14C
  'Data Table: 4481F8
  loc_DFD148: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2A984
  'Data Table: 4481F8
  loc_E2A967: Set global_52 = Nothing
  loc_E2A979: Set global_56 = Nothing
  loc_E2A980: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A75C
  'Data Table: 4481F8
  loc_E2A734: On Error Goto loc_E2A753
  loc_E2A74B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2A753: ' Referenced from: E2A734
  loc_E2A753: Proc_6_60_E63754(Shift)
  loc_E2A758: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E304E4
  'Data Table: 4481F8
  loc_E304D8: If (CBool(Me.DGExtension.Visible) = &HFF) Then
  loc_E304DB:   Call DGExtension_UnknownEvent_9()
  loc_E304E0: End If
  loc_E304E0: Exit Sub
End Sub

Private Sub txtTime_UnknownEvent_0 'E8A4DC
  'Data Table: 4481F8
  loc_E8A483: Me.txtTime.SelStart = 0
  loc_E8A4B0: Me.txtTime.SelLength = CVar(Len(CStr(Me.txtTime.Text)))
  loc_E8A4CC: Proc_6_74_E23240(Me.txtTime)
  loc_E8A4D4: Call Proc_95_19_EBA3EC()
  loc_E8A4D9: Exit Sub
End Sub

Private Sub txtTime_UnknownEvent_1 'E604C8
  'Data Table: 4481F8
  loc_E60486: Proc_6_73_E23294(Me.txtTime)
  loc_E604A1: Me.txtTime.SelStart = 0
  loc_E604BC: Me.txtTime.SelLength = 0
  loc_E604C4: Exit Sub
End Sub

Private Sub txtTime_UnknownEvent_8 '1057B48
  'Data Table: 4481F8
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_C4 As Variant
  loc_10578F8: var_C4 = Trim(CVar(CStr(Me.txtTime.Text)))
  loc_1057901: var_D4 = CVar(CStr(var_C4)) 'String
  loc_105790F: Me.txtTime.Text = var_D4
  loc_105794E: If (CDbl(Val(CStr(Me.txtTime.Text))) < CDbl(0)) Then
  loc_1057972:   MsgBox("Time can not be Negative", &H40, "Information", var_C4, var_D4)
  loc_1057992:   Me.txtTime.Text = vbNullString
  loc_105799C:   KeyCode = &HFF
  loc_105799F:   Exit Sub
  loc_10579A0: End If
  loc_10579D5: var_8E = CByte(InStr(1, Trim(CVar(CStr(Me.txtTime.Text))), ":", 0)) 'Byte
  loc_1057A03: var_C4 = CVar((CInt(var_8E) - 1)) 'Integer
  loc_1057A4B: var_C4 = CVar((CInt(var_8E) + 1)) 'Integer
  loc_1057A5D: var_D4 = Mid(CVar(CStr(Me.txtTime.Text)), 4, Trim(CVar(CStr(Me.txtTime.Text))))
  loc_1057A66: var_8C = CStr(var_D4)
  loc_1057A84: If (CDbl(Val(CStr(Mid(CVar(CStr(Me.txtTime.Text)), 1, Trim(CVar(CStr(Me.txtTime.Text))))))) > CDbl(&H18)) Then
  loc_1057AA8:   MsgBox("Time can not be more than 24 Hrs", &H40, "Information", Trim(CVar(CStr(Me.txtTime.Text))), var_D4)
  loc_1057AC8:   Me.txtTime.Text = "00:00"
  loc_1057AD0:   Call txtTime_UnknownEvent_0()
  loc_1057AD7:   KeyCode = &HFF
  loc_1057ADA:   Exit Sub
  loc_1057ADB: End If
  loc_1057AE8: If (CDbl(Val(var_8C)) > CDbl(&H3B)) Then
  loc_1057B11:   MsgBox("Time can not be more than 59 Minute", &H40, &H40, "Information", var_D4)
  loc_1057B31:   Me.txtTime.Text = "00:00"
  loc_1057B39:   Call txtTime_UnknownEvent_0()
  loc_1057B40:   KeyCode = &HFF
  loc_1057B43:   Exit Sub
  loc_1057B44: End If
  loc_1057B44: Exit Sub
End Sub

Private Sub txtTime_UnknownEvent_B 'E69B84
  'Data Table: 4481F8
  loc_E69B45: If ((CLng(KeyCode) = &HD) Or (CLng(KeyCode) = &H28)) Then
  loc_E69B56:   Proc_303_0_FBACC8("	")
  loc_E69B5E: End If
  loc_E69B68: If (CLng(KeyCode) = &H26) Then
  loc_E69B73:   var_88 = "+{Tab}"
  loc_E69B79:   Proc_303_0_FBACC8("	", 0)
  loc_E69B81: End If
  loc_E69B81: Exit Sub
End Sub

Private Sub DGExtension_UnknownEvent_9 'F485F4
  'Data Table: 4481F8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F484EB: Me.DGExtension.Visible = False
  loc_F4850A: If (Me.RecordCount > 0) Then
  loc_F48549:   Set var_B4 = Me.Txt
  loc_F4854F:   Call 0.Method_DGExtension_UnknownEvent_90 (CInt(2), var_B8)
  loc_F48557:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4858A:   var_B0 = Me.Fields.Item("Extension")
  loc_F485A9:   Set var_B4 = Me.Txt
  loc_F485AF:   Call 0.Method_DGExtension_UnknownEvent_90 (CInt(2), var_B8)
  loc_F485B7:   var_B8.Text = CStr(var_B0.Value)
  loc_F485CD: End If
  loc_F485D8: Set var_A8 = Me.Txt
  loc_F485DE: Call 0.Method_DGExtension_UnknownEvent_90 (CInt(2))
  loc_F485E6: var_B0.SetFocus
  loc_F485F2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1045188
  'Data Table: 4481F8
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim Me As Recordset15
  Dim var_B4 As String
  Dim var_94 As Fields15
  loc_1044F4B: Set var_88 = Me.Txt
  loc_1044F51: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1044F59: var_8C.SelStart = 0
  loc_1044F72: Set var_88 = Me.Txt
  loc_1044F78: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1044F80: var_90 = var_8C.Text
  loc_1044F93: Set var_94 = Me.Txt
  loc_1044F99: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_1044FA1: var_98.SelLength = Len(var_90)
  loc_1044FBE: Set var_88 = Me.Txt
  loc_1044FC4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1044FD2: Proc_6_74_E23240(var_8C)
  loc_1044FDE: Call Proc_95_19_EBA3EC(var_8C)
  loc_1044FE6: var_9A = Index
  loc_1044FF1: If (var_9A = CInt(2)) Then
  loc_104500B:   If (Me.RecordCount > 0) Then
  loc_1045019:     Set var_8C = Me.FGPoint
  loc_1045031:     Proc_6_137_1192FDC(Me.DGExtension, global_56, Index)
  loc_104503F:   End If
  loc_104508D:   Set var_88 = Me.Txt
  loc_1045093:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90)
  loc_104509B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10450B3:   If (var_8C Or (var_90 = vbNullString)) Then
  loc_10450B6:     Exit Sub
  loc_10450B7:   End If
  loc_10450C4:   Set var_88 = Me.Txt
  loc_10450CA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10450D2:   var_90 = var_8C.Text
  loc_10450E4:   var_B4 = "EXT"
  loc_104511F:   If CBool(CVar(var_90) <> Me.Fields.Item(var_B4).Value) Then
  loc_1045128:     Me.MoveFirst
  loc_104514B:     Set var_88 = Me.Txt
  loc_1045151:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90, "Ext='")
  loc_1045159:     0 = var_8C.Text
  loc_1045172:     Me.Find 1 & var_90 & "'", var_B4, var_9A
  loc_1045187:   End If
  loc_1045187: End If
  loc_1045187: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1032BF0
  'Data Table: 4481F8
  Dim Me As Recordset15
  loc_10329CA: If (CLng(Shift) = &H1B) Then
  loc_10329CD:   Call Proc_95_19_EBA3EC()
  loc_10329D2:   Exit Sub
  loc_10329D3: End If
  loc_10329E1: If (KeyCode = CInt(2)) Then
  loc_1032A01:   Set var_9C = Me.FGPoint
  loc_1032A0C:   Set var_98 = Nothing
  loc_1032A3A:   Proc_6_69_134A630(Me.DGExtension, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_1032AA9:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1032AB0:     Set var_98 = Me.DGExtension
  loc_1032ACF:     Proc_6_138_106E830(var_98, global_56, KeyCode, Me.FGPoint, 1)
  loc_1032ADD:   End If
  loc_1032ADD: End If
  loc_1032B18: If ((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGExtension.Visible) = 0)) Then
  loc_1032B37:   If (CBool(Me.DGExtension.Visible) = 0) Then
  loc_1032B58:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_1032B67:       Call Txt_Validate(CInt(9))
  loc_1032BA3:       If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_1032BA6:         Call Proc_95_16_12E9578(0, var_98, var_9C)
  loc_1032BAB:       End If
  loc_1032BAB:       Exit Sub
  loc_1032BAC:     End If
  loc_1032BC1:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1032BCA:       Proc_6_75_E5335C(Shift, arg_14)
  loc_1032BCF:     End If
  loc_1032BE0:     If ((CLng(Shift) = &H26) And (KeyCode <> 0)) Then
  loc_1032BE9:       Proc_6_76_E533C8(Shift, arg_14)
  loc_1032BEE:     End If
  loc_1032BEE:   End If
  loc_1032BEE: End If
  loc_1032BEE: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FF58D0
  'Data Table: 4481F8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As Variant
  Dim var_94 As Variant
  loc_FF56E2: Proc_6_133_E7FB08(var_94)
  loc_FF56EB: arg_10 = CInt(var_94)
  loc_FF56F4: Proc_6_58_E06050(arg_10, arg_10)
  loc_FF56FC: var_96 = KeyAscii
  loc_FF5707: If (var_96 = CInt(2)) Then
  loc_FF5726:   If (CBool(Me.DGExtension.Visible) = &HFF) Then
  loc_FF5738:     var_A0 = "Ext"
  loc_FF5753:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, arg_10)
  loc_FF576D:     Set var_A8 = Me.FGPoint
  loc_FF5785:     Proc_6_138_106E830(Me.DGExtension, global_56, KeyAscii, var_A8)
  loc_FF5793:   End If
  loc_FF579F:   Me.lblNo.Visible = False
  loc_FF57B3:   Me.txtDRS.Visible = False
  loc_FF57BE: Else
  loc_FF57C6:   If (var_96 = CInt(8)) Then
  loc_FF57D3:     Set var_9C = Me.Txt
  loc_FF57D9:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_FF57F4:     Proc_6_42_129B55C(var_A8, arg_10, 5, 2)
  loc_FF5803:   Else
  loc_FF580B:     If (var_96 = CInt(9)) Then
  loc_FF5818:       Set var_9C = Me.Txt
  loc_FF581E:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_FF5839:       Proc_6_42_129B55C(var_A8, arg_10, 5)
  loc_FF5848:     Else
  loc_FF5850:       If (var_96 = CInt(5)) Then
  loc_FF585D:         Set var_9C = Me.Txt
  loc_FF5863:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 2)
  loc_FF587E:         Proc_6_42_129B55C(var_A8, arg_10, 8)
  loc_FF588D:       Else
  loc_FF5895:         If (var_96 = CInt(6)) Then
  loc_FF58A2:           Set var_9C = Me.Txt
  loc_FF58A8:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_FF58C3:           Proc_6_42_129B55C(var_A8, arg_10, &HF)
  loc_FF58CF:         End If
  loc_FF58CF:       End If
  loc_FF58CF:     End If
  loc_FF58CF:   End If
  loc_FF58CF: End If
  loc_FF58CF: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4782C
  'Data Table: 4481F8
  loc_E4780A: Set var_88 = Me.Txt
  loc_E47810: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4781E: Proc_6_73_E23294(var_8C)
  loc_E4782A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12797B0
  'Data Table: 4481F8
  Dim var_86 As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim var_CC As String
  Dim unk_448225 As Connection15
  Dim var_90 As Recordset15
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_124 As Variant
  Dim var_12C As Variant
  Dim var_120 As Variant
  loc_127921B: var_86 = Cancel
  loc_1279226: If (var_86 = CInt(2)) Then
  loc_1279236:   Set var_94 = Me.Txt
  loc_127923C:   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1279244:   var_9C = var_98.Text
  loc_127925B:   If (var_9C = vbNullString) Then
  loc_1279260:     arg_10 = &HFF
  loc_1279263:     Exit Sub
  loc_1279264:   End If
  loc_1279271:   var_CC = "Select TelExt.Code , TelExt.ShopNo & RoomMast.Code & Depart.Name as Name,TelExt.ShopNo as ShopNo, RoomMast.Code as RoomNo, Depart.Name as DepartNo,RoomNo as RoomID,ShopNo as ShopID,DepCode as DepID FROM (TelExt LEFT JOIN RoomMast ON TelExt.RoomNo=RoomMast.Code) LEFT JOIN Depart ON TelExt.DepCode=Depart.Code  WHERE TelExt.Extension="
  loc_1279284:   Set var_94 = Me.Txt
  loc_127928A:   Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_9C, var_CC, var_120)
  loc_1279292:   -1 = var_98.Text
  loc_12792A0:   Proc_6_39_E7D3A0(var_BC, CVar(var_9C), var_124)
  loc_12792BF:   unk_448225.Execute CStr(arg_10 & var_BC & " ORDER BY TelExt.Description"), var_86, 
  loc_12792CA:   Set var_90 = var_124
  loc_12792FA:   If (var_90.RecordCount > 0) Then
  loc_1279339:     Me.txtDRS.Text = Proc_6_38_E69628(var_90.Fields.Item("Name").Value)
  loc_1279350:     var_8C = vbNullString
  loc_12793CF:     If CBool(Not IsNull(CVar(var_90.Fields.Item("RoomNo"))) Or (var_90.Fields.Item("RoomNo").Value = vbNullString)) Then
  loc_12793D5:       var_8C = "Room Number"
  loc_12793E5:       Me.txtDRS.Tag = vbNullString
  loc_1279422:       Me.txtDRS.Tag = Proc_6_38_E69628(CVar(var_90.Fields.Item("roomid")))
  loc_127944F:       global_68 = CVar(Me.txtDRS.Tag)
  loc_127945F:       global_60 = vbNullString
  loc_1279469:       global_64 = vbNullString
  loc_1279470:     Else
  loc_12794EC:       If CBool(Not IsNull(CVar(var_90.Fields.Item("departno"))) Or (var_90.Fields.Item("departno").Value = vbNullString)) Then
  loc_12794F2:         var_8C = "Department Number"
  loc_1279502:         Me.txtDRS.Tag = vbNullString
  loc_127953F:         Me.txtDRS.Tag = Proc_6_38_E69628(CVar(var_90.Fields.Item("depid")))
  loc_1279569:         global_60 = Me.txtDRS.Tag
  loc_127957B:         global_68 = vbNullString
  loc_1279585:         global_64 = vbNullString
  loc_127958C:       Else
  loc_12795D2:         var_12C = var_90.Fields.Item("ShopNo")
  loc_1279608:         If CBool(Not IsNull(CVar(var_90.Fields.Item("ShopNo"))) Or (var_12C.Value = vbNullString)) Then
  loc_127960E:           var_8C = "Shop Desc."
  loc_127962B:           var_98 = var_90.Fields.Item("Name")
  loc_1279646:           global_64 = Proc_6_38_E69628(var_98.Value)
  loc_127965D:           global_60 = vbNullString
  loc_1279669:           global_68 = vbNullString
  loc_127966D:         End If
  loc_127966D:       End If
  loc_127966D:     End If
  loc_127966D:   End If
  loc_127967A:   Me.lblNo.Caption = var_8C
  loc_127968E:   Me.lblNo.Visible = True
  loc_12796A2:   Me.txtDRS.Visible = True
  loc_12796AD: Else
  loc_12796B5:   If (var_86 = CInt(3)) Then
  loc_12796C5:     Set var_94 = Me.Txt
  loc_12796CB:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12796F1:     Set var_124 = Me.Txt
  loc_12796F7:     Call 0.Method_Txt_Validate0 (Cancel, var_12C)
  loc_12796FF:     var_12C.Text = Proc_6_34_14EEAAC(var_98.Text)
  loc_1279719:   Else
  loc_1279721:     If Not (var_86 = CInt(9)) Then
  loc_127972C:       If (var_86 = CInt(8)) Then
  loc_127972F:       End If
  loc_127973C:       Set var_94 = Me.Txt
  loc_1279742:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1279783:       Set var_124 = Me.Txt
  loc_1279789:       Call 0.Method_Txt_Validate0 (Cancel, var_12C, CStr(Format(CVar(var_98.Text), "0.00")))
  loc_1279791:       var_12C.Text = 1
  loc_12797AD:     End If
  loc_12797AD:   End If
  loc_12797AD: End If
  loc_12797AD: Exit Sub
End Sub

Public Sub Proc_95_16_12E9578
  'Data Table: 4481F8
  Dim unk_448207 As Connection15
  Dim var_86 As Integer
  Dim var_9C As String
  Dim var_A8 As String
  Dim var_94 As TextBox
  Dim var_BC As Variant
  Dim var_100 As Variant
  Dim var_CC As TextBox
  Dim var_1E8 As TextBox
  Dim var_23C As Variant
  Dim var_2A8 As TextBox
  Dim var_2FC As Variant
  Dim var_304 As TextBox
  Dim var_360 As TextBox
  Dim var_3BC As TextBox
  Dim var_3F0 As Variant
  Dim var_418 As TextBox
  loc_12E8FB0: On Error Goto loc_12E94FF
  loc_12E8FBE: Set var_90 = Me.Txt
  loc_12E8FC4: Call 0.Method_Proc_95_16_12E95780 (CInt(1))
  loc_12E8FED: If (Proc_183_19_E8E68C(var_94, "PNT Number") = 0) Then
  loc_12E8FF7:   Call Txt_GotFocus(CInt(1))
  loc_12E8FFC:   Exit Sub
  loc_12E8FFD: End If
  loc_12E9008: Set var_90 = Me.Txt
  loc_12E900E: Call 0.Method_Proc_95_16_12E95780 (CInt(2), var_94)
  loc_12E9037: If (Proc_183_19_E8E68C(var_94, "Extension") = 0) Then
  loc_12E9041:   Call Txt_GotFocus(CInt(2))
  loc_12E9046:   Exit Sub
  loc_12E9047: End If
  loc_12E9052: Set var_90 = Me.Txt
  loc_12E9058: Call 0.Method_Proc_95_16_12E95780 (CInt(3), var_94)
  loc_12E9081: If (Proc_183_19_E8E68C(var_94, "Call Date") = 0) Then
  loc_12E908B:   Call Txt_GotFocus(CInt(3))
  loc_12E9090:   Exit Sub
  loc_12E9091: End If
  loc_12E909C: Set var_90 = Me.Txt
  loc_12E90A2: Call 0.Method_Proc_95_16_12E95780 (CInt(5), var_94)
  loc_12E90CB: If (Proc_183_19_E8E68C(var_94, "Duration") = 0) Then
  loc_12E90D5:   Call Txt_GotFocus(CInt(5))
  loc_12E90DA:   Exit Sub
  loc_12E90DB: End If
  loc_12E90E6: Set var_90 = Me.Txt
  loc_12E90EC: Call 0.Method_Proc_95_16_12E95780 (CInt(6), var_94)
  loc_12E9115: If (Proc_183_19_E8E68C(var_94, "Dialled Number") = 0) Then
  loc_12E911F:   Call Txt_GotFocus(CInt(6))
  loc_12E9124:   Exit Sub
  loc_12E9125: End If
  loc_12E9130: Set var_90 = Me.Txt
  loc_12E9136: Call 0.Method_Proc_95_16_12E95780 (CInt(7), var_94)
  loc_12E915F: If (Proc_183_19_E8E68C(var_94, "Call Information") = 0) Then
  loc_12E9169:   Call Txt_GotFocus(CInt(7))
  loc_12E916E:   Exit Sub
  loc_12E916F: End If
  loc_12E9177: If (MemVar_1F951D4 = "Y") Then
  loc_12E9183:   unk_448207.BeginTrans var_A4
  loc_12E91A2:   var_9C = CStr(var_8C)
  loc_12E91A6:   var_A8 = "INSERT INTO EPABX_OUT (ID,V_TYPE,PNT_NO,Extension,RoomNo,ShopNo,DepCode,CALL_START_DATE,CALL_START_TIME,CALL_DURATION,DIALED_NO,CALL_INFO,CALL_RATE,CALL_AMT) VALUES (" & var_9C
  loc_12E91BE:   Set var_90 = Me.Txt
  loc_12E91C4:   Call 0.Method_Proc_95_16_12E95780 (CInt(1), var_94, var_AC, var_A8 & ",'TLENT','", var_490)
  loc_12E91CC:   -1 = var_94.Text
  loc_12E91D4:   var_BC = CVar(var_AC) 'String
  loc_12E91E7:   var_100 = CVar(&HFF & Proc_6_38_E69628(var_BC, var_494) & "', ") 'String
  loc_12E91F8:   Set var_98 = Me.Txt
  loc_12E91FE:   Call 0.Method_Proc_95_16_12E95780 (CInt(2), var_CC, var_D0)
  loc_12E9206:   var_100 = var_CC.Text
  loc_12E9214:   Proc_6_39_E7D3A0(var_F0, CVar(var_D0))
  loc_12E9276:   Set var_1E4 = Me.Txt
  loc_12E927C:   Call 0.Method_Proc_95_16_12E95780 (CInt(3), var_1E8)
  loc_12E9292:   Proc_6_7_F26918(var_20C, CVar(var_1E8.Text))
  loc_12E92A3:   var_23C = var_94 & var_F0 & ",'" & global_68 & "','" & CVar(global_64) & "','" & CVar(global_60) & "'," & var_20C & ",'" 
  loc_12E92DF:   Set var_2A4 = Me.Txt
  loc_12E92E5:   Call 0.Method_Proc_95_16_12E95780 (CInt(5), var_2A8)
  loc_12E9309:   var_2FC = var_23C & CVar(Proc_6_38_E69628(CVar(CStr(Me.txtTime.Text)))) & "','" & CVar(Proc_6_38_E69628(CVar(var_2A8.Text))) & "','" 
  loc_12E931B:   Set var_300 = Me.Txt
  loc_12E9321:   Call 0.Method_Proc_95_16_12E95780 (CInt(6), var_304)
  loc_12E9357:   Set var_35C = Me.Txt
  loc_12E935D:   Call 0.Method_Proc_95_16_12E95780 (CInt(7), var_360)
  loc_12E9393:   Set var_3B8 = Me.Txt
  loc_12E9399:   Call 0.Method_Proc_95_16_12E95780 (CInt(8), var_3BC)
  loc_12E93AF:   Proc_6_39_E7D3A0(var_3E0, CVar(var_3BC.Text))
  loc_12E93B7:   var_3F0 = var_2FC & CVar(Proc_6_38_E69628(CVar(var_304.Text))) & "','" & CVar(Proc_6_38_E69628(CVar(var_360.Text))) & "'," & var_3E0 
  loc_12E93D2:   Set var_414 = Me.Txt
  loc_12E93D8:   Call 0.Method_Proc_95_16_12E95780 (CInt(9), var_418)
  loc_12E93EE:   Proc_6_39_E7D3A0(var_43C, CVar(var_418.Text))
  loc_12E940D:   unk_448207.Execute CStr(var_3F0 & "," & var_43C & ")"), , 
  loc_12E94B5:   unk_448207.Execute "UPDATE [COUNTER] SET CBOUT=CBOUT+1", var_BC, -1
  loc_12E94C6:   unk_448207.CommitTrans
  loc_12E94CD:   var_86 = 0
  loc_12E94D0: End If
  loc_12E94D0: Call Proc_95_19_EBA3EC(var_86)
  loc_12E94D5: Call Proc_95_17_F7C21C(var_90)
  loc_12E94E5: Set var_90 = Me.Txt
  loc_12E94EB: Call 0.Method_Proc_95_16_12E95780 (CInt(1))
  loc_12E94F3: var_94.SetFocus
  loc_12E94FF: ' Referenced from: 12E8FB0
  loc_12E9505: If (var_86 = &HFF) Then
  loc_12E950E:   unk_448207.RollbackTrans
  loc_12E9513: End If
  loc_12E951B: Set var_90 = Err()
  loc_12E9521: Call 0.Method_arg_1C (var_A4)
  loc_12E9532: If (var_A4 > 0) Then
  loc_12E953D:   Set var_90 = Err()
  loc_12E9543:   Call 0.Method_arg_2C (var_9C)
  loc_12E9564:   MsgBox(CVar(var_9C), &H40, "Information", var_F0, var_100)
  loc_12E9577: End If
  loc_12E9577: Exit Sub
End Sub

Public Sub Proc_95_17_F7C21C
  'Data Table: 4481F8
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_F7C0E6: Set var_8C = Me.Txt
  loc_F7C0EC: Call 0.Method_Proc_95_17_F7C21CC (var_8E, var_86)
  loc_F7C0FC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F7C112:   Set var_8C = Me.Txt
  loc_F7C118:   Call 0.Method_Proc_95_17_F7C21C0 (CInt(var_86), var_98)
  loc_F7C120:   var_98.Text = vbNullString
  loc_F7C12F: Next var_92 'Byte
  loc_F7C148: Set var_8C = Me.Txt
  loc_F7C14E: Call 0.Method_Proc_95_17_F7C21C0 (CInt(3), var_98)
  loc_F7C156: var_98.Text = CStr(MemVar_1F950EC)
  loc_F7C19F: Me.txtTime.Text = CVar(CStr(Format(Now, "HH:MM")))
  loc_F7C1BF: Me.lblNo.Caption = vbNullString
  loc_F7C1D4: Me.txtDRS.Text = vbNullString
  loc_F7C1E9: Me.txtDRS.Text = vbNullString
  loc_F7C1FD: Me.lblNo.Visible = False
  loc_F7C211: Me.txtDRS.Visible = False
  loc_F7C219: Exit Sub
End Sub

Public Sub Proc_95_18_F8D5BC
  'Data Table: 4481F8
  Dim var_88 As Recordset15
  Dim var_AC As TextBox
  loc_F8D462: Set var_88 = global_52 
  loc_F8D49B: Set var_A8 = Me.Txt
  loc_F8D4A1: Call 0.Method_Proc_95_18_F8D5BC0 (CInt(1), var_AC)
  loc_F8D4A9: var_AC.MaxLength = var_88.Fields.Item("PNT_NO").DefinedSize
  loc_F8D4EE: Set var_A8 = Me.Txt
  loc_F8D4F4: Call 0.Method_Proc_95_18_F8D5BC0 (CInt(5), var_AC)
  loc_F8D4FC: var_AC.MaxLength = var_88.Fields.Item("CALL_DURATION").DefinedSize
  loc_F8D541: Set var_A8 = Me.Txt
  loc_F8D547: Call 0.Method_Proc_95_18_F8D5BC0 (CInt(6), var_AC)
  loc_F8D54F: var_AC.MaxLength = var_88.Fields.Item("DIALED_NO").DefinedSize
  loc_F8D594: Set var_A8 = Me.Txt
  loc_F8D59A: Call 0.Method_Proc_95_18_F8D5BC0 (CInt(7), var_AC)
  loc_F8D5A2: var_AC.MaxLength = var_88.Fields.Item("CALL_INFO").DefinedSize
  loc_F8D5B4: Set var_88 = Nothing 
  loc_F8D5B8: Exit Sub
End Sub

Public Sub Proc_95_19_EBA3EC
  'Data Table: 4481F8
  loc_EBA364: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBA376:   Me.DGHelp.Visible = False
  loc_EBA37E: End If
  loc_EBA39A: If (CBool(Me.DGExtension.Visible) = &HFF) Then
  loc_EBA3AC:   Me.DGExtension.Visible = False
  loc_EBA3B4: End If
  loc_EBA3D0: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBA3E2:   Me.FGPoint.Visible = False
  loc_EBA3EA: End If
  loc_EBA3EA: Exit Sub
End Sub

Public Sub Proc_95_20_ED5C8C
  'Data Table: 4481F8
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_88 As TextBox
  Dim var_BC As TextBox
  loc_ED5BE4: Set var_88 = Me.DGExtension
  loc_ED5BF5: Set var_8C = Me.Txt
  loc_ED5BFB: Call 0.Method_Proc_95_20_ED5C8C0 (CInt(2), var_90)
  loc_ED5C13: var_88.Left = CVar(var_90.Left)
  loc_ED5C2D: Set var_B8 = Me.Txt
  loc_ED5C33: Call 0.Method_Proc_95_20_ED5C8C0 (CInt(2), var_BC)
  loc_ED5C4E: Set var_8C = Me.Txt
  loc_ED5C54: Call 0.Method_Proc_95_20_ED5C8C0 (CInt(2), var_90)
  loc_ED5C6C: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H19))) 'Single
  loc_ED5C74: var_88.Top = CVar(var_90.Left)
  loc_ED5C86: Set var_88 = Nothing 
  loc_ED5C8A: Exit Sub
End Sub
