VERSION 5.00
Begin VB.Form MemRenewalEntry
  Caption = "Member Renewal"
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
  ClientWidth = 11400
  ClientHeight = 7440
  Begin BtnEnh cmd
    Index = 0
    Left = 7530
    Top = 4305
    Width = 1650
    Height = 525
    TabIndex = 19
  End
  Begin BtnEnh cmd
    Index = 1
    Left = 2430
    Top = 4305
    Width = 1650
    Height = 525
    TabIndex = 18
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HFF0000&
    Left = 7515
    Top = 3765
    Width = 2475
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin MSHFlexGrid FGrid
    Left = 150
    Top = 360
    Width = 12765
    Height = 2145
    TabIndex = 15
  End
  Begin CommandButton Cmdz
    Caption = "Fill &Grid"
    Index = 1
    Left = 2370
    Top = 6900
    Width = 1470
    Height = 525
    Visible = 0   'False
    TabIndex = 3
  End
  Begin CommandButton Cmdz
    Caption = "&Conferm"
    Index = 0
    Left = 7290
    Top = 7590
    Width = 1470
    Height = 525
    Visible = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HFF0000&
    Left = 7515
    Top = 3450
    Width = 2475
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 2
    ForeColor = &HFF0000&
    Left = 7515
    Top = 3135
    Width = 2475
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 2460
    Top = 3465
    Width = 2475
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HFF0000&
    Left = 2460
    Top = 3150
    Width = 2475
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGHelp
    Left = 11295
    Top = 4320
    Width = 3705
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin Frame FrmList
    Left = 9975
    Top = 6585
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = -165
      Top = 15
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 10
    End
  End
  Begin MSFlexGrid FGPoint
    Left = 11865
    Top = 6645
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 12
  End
  Begin BtnEnh CmdExit
    Left = 5040
    Top = 4950
    Width = 1650
    Height = 525
    TabIndex = 17
  End
  Begin Label LBL
    Caption = "Renewal Date"
    Index = 4
    ForeColor = &HFF0000&
    Left = 5790
    Top = 3750
    Width = 1335
    Height = 285
    TabIndex = 16
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
  Begin Label LBL
    Caption = "Valid Upto"
    Index = 3
    ForeColor = &HFF0000&
    Left = 5790
    Top = 3435
    Width = 990
    Height = 285
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
  Begin Label LBL
    Caption = "Valid From"
    Index = 2
    ForeColor = &HFF0000&
    Left = 5805
    Top = 3120
    Width = 1050
    Height = 285
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
  Begin Label LBL
    Caption = "Member Category"
    Index = 1
    ForeColor = &HFF0000&
    Left = 750
    Top = 3450
    Width = 1695
    Height = 285
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
  Begin Label LBL
    Caption = "Member Type"
    Index = 0
    ForeColor = &HFF0000&
    Left = 750
    Top = 3135
    Width = 1305
    Height = 285
    TabIndex = 0
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

Attribute VB_Name = "MemRenewalEntry"

Private global_64 As Variant
Private global_52 As Integer

Private Sub CmdExit_UnknownEvent_9 'E1671C
  'Data Table: 438EC0
  loc_E16711: Me.Global.Unload Me
  loc_E16719: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'FA94DC
  'Data Table: 438EC0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FA935C: On Error Goto loc_FA9476
  loc_FA936E: Me.DGHelp.Visible = False
  loc_FA937F: var_AC = Me.RecordCount
  loc_FA938D: If (var_AC > 0) Then
  loc_FA93CC:   Set var_B4 = Me.Txt
  loc_FA93D2:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_B8)
  loc_FA93DA:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA940D:   var_B0 = Me.Fields.Item("Code")
  loc_FA941E:   var_CC = CStr(var_B0.Value)
  loc_FA942C:   Set var_B4 = Me.Txt
  loc_FA9432:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_B8)
  loc_FA943A:   var_B8.Tag = var_CC
  loc_FA9450: End If
  loc_FA945B: Set var_A8 = Me.Txt
  loc_FA9461: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1))
  loc_FA9469: var_B0.SetFocus
  loc_FA9475: Exit Sub
  loc_FA9476: ' Referenced from: FA935C
  loc_FA947E: Set var_A8 = Err()
  loc_FA9484: Call 0.Method_arg_1C (var_AC)
  loc_FA9495: If (var_AC <> 0) Then
  loc_FA94A0:   Set var_A8 = Err()
  loc_FA94A6:   Call 0.Method_arg_2C (var_CC)
  loc_FA94C7:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FA94DA: End If
  loc_FA94DA: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1186464
  'Data Table: 438EC0
  Dim var_92 As Integer
  Dim var_A8 As String
  Dim var_8C As TextBox
  Dim var_D0 As Variant
  Dim unk_438EC7 As Connection15
  Dim Me As Recordset15
  Dim var_90 As Fields15
  loc_11860A2: Set var_88 = Me.Txt
  loc_11860A8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11860B6: Proc_6_74_E23240(var_8C)
  loc_11860C2: Call Proc_277_15_EB8554(var_8C)
  loc_11860CA: var_92 = Index
  loc_11860D5: If (var_92 = CInt(0)) Then
  loc_11860E5:   ReDim var_98(0 To 1)
  loc_11860FC:   var_98(0) = "Corporate"
  loc_118610B:   var_98(1) = "Individual"
  loc_1186113:   var_C8 = Array(var_98)
  loc_1186122:   global_64 = var_C8
  loc_118612D:   Set var_D0 = Me.ListView
  loc_1186148:   Set var_8C = Me.Txt
  loc_1186162:   Set global_80 = Proc_6_66_F0048C(var_D0, var_8C, Index, global_64)
  loc_1186180:   Set var_88 = Me.Txt
  loc_1186186:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_118618E:   2 = var_8C.Text
  loc_11861A0:   Set var_90 = Me.Txt
  loc_11861A6:   Call 0.Method_Txt_GotFocus0 (Index, var_D0, var_D8)
  loc_11861AE:   var_D0.Tag = global_64
  loc_11861C4: Else
  loc_11861CC:   If (var_92 = CInt(1)) Then
  loc_11861E3:     Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_11861EB:     var_D8 = var_8C.Text
  loc_1186202:     If (var_D8 = "Corporate") Then
  loc_118621B:       unk_438EC7.Execute "SELECT Code,Name FROM MemCatMast Where Corporate='Y'", var_C8, -1
  loc_118622C:       Set global_56 = Me.Txt
  loc_118623A:     End If
  loc_1186248:     Set var_88 = Me.Txt
  loc_118624E:     Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C, var_D8)
  loc_118626D:     If (var_D8 = "Individual") Then
  loc_1186286:       unk_438EC7.Execute "SELECT Code,Name FROM MemCatMast Where Corporate='N'", var_C8, -1
  loc_1186297:       Set global_56 = var_8C.Text
  loc_11862A5:     End If
  loc_11862AE:     CVarUnk
  loc_11862B3:     VerifyVarObj
  loc_11862B9:     Set var_88 = Me.DGHelp
  loc_11862BF:     LateIdStAd
  loc_11862E4:     If (Me.RecordCount > 0) Then
  loc_11862F2:       Set var_8C = Me.FGPoint
  loc_118630A:       Proc_6_137_1192FDC(Me.DGHelp, global_56, Index, var_8C)
  loc_1186318:     End If
  loc_1186366:     Set var_88 = Me.Txt
  loc_118636C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1186374:     var_88 = var_8C.Text
  loc_118638C:     If (global_56 Or (var_D8 = vbNullString)) Then
  loc_118638F:       Exit Sub
  loc_1186390:     End If
  loc_118639D:     Set var_88 = Me.Txt
  loc_11863A3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_11863AB:     var_88 = var_8C.Text
  loc_11863BD:     var_A8 = "Name"
  loc_11863F8:     If CBool(CVar(var_D8) <> Me.Fields.Item(var_A8).Value) Then
  loc_1186401:       Me.MoveFirst
  loc_1186424:       Set var_88 = Me.Txt
  loc_118642A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name ='")
  loc_1186432:       0 = var_8C.Text
  loc_118644B:       Me.Find 1 & var_D8 & "'", var_A8, var_92
  loc_1186460:     End If
  loc_1186460:   End If
  loc_1186460: End If
  loc_1186460: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10FFF08
  'Data Table: 438EC0
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As TextBox
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  loc_10FFC00: On Error Goto loc_10FFEA0
  loc_10FFC0D: If (CLng(Shift) = &H1B) Then
  loc_10FFC10:   Call Proc_277_15_EB8554()
  loc_10FFC15:   Exit Sub
  loc_10FFC16: End If
  loc_10FFC19: var_86 = KeyCode
  loc_10FFC24: If (var_86 = CInt(1)) Then
  loc_10FFC2B:   Set var_A0 = Me.DGHelp
  loc_10FFC39:   Set var_A8 = Me.FGPoint
  loc_10FFC44:   Set var_98 = var_A8
  loc_10FFC72:   Proc_6_79_11AD564(var_A0, Me.Txt, KeyCode, global_56, Shift)
  loc_10FFC8F:   var_AC = Me.RecordCount
  loc_10FFCDF:   If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10FFCED:     Set var_90 = Me.FGPoint
  loc_10FFD05:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, var_90, 0)
  loc_10FFD13:   End If
  loc_10FFD16: Else
  loc_10FFD1E:   If (var_86 = CInt(0)) Then
  loc_10FFD43:     Set var_8C = Me.Txt
  loc_10FFD49:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 1)
  loc_10FFD51:     var_98 = var_90.Left
  loc_10FFD63:     Set var_98 = Me.Txt
  loc_10FFD69:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B0)
  loc_10FFD71:     0 = var_A0.Top
  loc_10FFD83:     Set var_A4 = Me.Txt
  loc_10FFD89:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_10FFD91:     var_B4 = var_A8.Height
  loc_10FFDA3:     Set var_B8 = Me.Txt
  loc_10FFDA9:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_10FFDB1:     var_C0 = var_BC.Width
  loc_10FFDF9:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_10FFE1D:   End If
  loc_10FFE1D: End If
  loc_10FFE56: If ((CBool(Me.DGHelp.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_10FFE6E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10FFE77:     Proc_6_75_E5335C(Shift, arg_14, CInt(var_AC), CInt((var_B0 + var_B4)))
  loc_10FFE7C:   End If
  loc_10FFE91:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10FFE9A:     Proc_6_76_E533C8(Shift, arg_14, CInt(var_C0))
  loc_10FFE9F:   End If
  loc_10FFE9F: End If
  loc_10FFE9F: Exit Sub
  loc_10FFEA0: ' Referenced from: 10FFC00
  loc_10FFEA8: Set var_8C = Err()
  loc_10FFEAE: Call 0.Method_arg_1C (var_AC, 600)
  loc_10FFEBF: If (var_AC <> 0) Then
  loc_10FFECA:   Set var_8C = Err()
  loc_10FFED0:   Call 0.Method_arg_2C (var_F0)
  loc_10FFEF1:   MsgBox(CVar(var_F0), &H40, "Validation", var_130, var_150)
  loc_10FFF04: End If
  loc_10FFF04: Exit Sub
  loc_10FFF05: Set var_88 = var_86
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F688C0
  'Data Table: 438EC0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F68798: On Error Goto loc_F6885A
  loc_F687A1: Proc_6_133_E7FB08(var_94)
  loc_F687B6: If (CInt(var_94) = &H27) Then
  loc_F687BB:   arg_10 = 0
  loc_F687BE:   Exit Sub
  loc_F687BF: End If
  loc_F687C2: var_96 = KeyAscii
  loc_F687CD: If (var_96 = CInt(1)) Then
  loc_F687EC:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F687FE:     var_A0 = "Name"
  loc_F68819:     Proc_183_41_145A968(Me.Txt, KeyAscii, global_56, arg_10, var_A0)
  loc_F6884B:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyAscii, Me.FGPoint, 0)
  loc_F68859:   End If
  loc_F68859: End If
  loc_F68859: Exit Sub
  loc_F6885A: ' Referenced from: F68798
  loc_F68862: Set var_9C = Err()
  loc_F68868: Call 0.Method_arg_1C (var_B0, var_96, arg_10)
  loc_F68879: If (var_B0 <> 0) Then
  loc_F68884:   Set var_9C = Err()
  loc_F6888A:   Call 0.Method_arg_2C (var_A0, arg_10)
  loc_F688AB:   MsgBox(CVar(var_A0), &H40, "Validation", var_F0, var_110)
  loc_F688BE: End If
  loc_F688BE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F9BC5C
  'Data Table: 438EC0
  Dim var_86 As Integer
  Dim var_8C As Variant
  loc_F9BAF4: On Error Goto loc_F9BBF5
  loc_F9BAFA: var_86 = KeyCode
  loc_F9BB05: If (var_86 = CInt(1)) Then
  loc_F9BB24:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F9BB31:     var_A0 = "Name"
  loc_F9BB4C:     Proc_183_32_FE97F0(Me.Txt, KeyCode, global_56)
  loc_F9BB7E:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_F9BB8C:   End If
  loc_F9BB8F: Else
  loc_F9BB97:   If (var_86 = CInt(0)) Then
  loc_F9BBB5:     If (Me.FrmList.Visible = &HFF) Then
  loc_F9BBE4:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F9BBF4:     End If
  loc_F9BBF4:   End If
  loc_F9BBF4: End If
  loc_F9BBF4: Exit Sub
  loc_F9BBF5: ' Referenced from: F9BAF4
  loc_F9BBFD: Set var_8C = Err()
  loc_F9BC03: Call 0.Method_arg_1C (var_B4, global_80, Shift)
  loc_F9BC14: If (var_B4 <> 0) Then
  loc_F9BC1F:   Set var_8C = Err()
  loc_F9BC25:   Call 0.Method_arg_2C (var_A0, var_A0)
  loc_F9BC46:   MsgBox(CVar(var_A0), &H40, "Validation", var_F4, var_114)
  loc_F9BC59: End If
  loc_F9BC59: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49774
  'Data Table: 438EC0
  loc_E49752: Set var_88 = Me.Txt
  loc_E49758: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49766: Proc_183_27_E23198(var_8C)
  loc_E49772: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '112DFE0
  'Data Table: 438EC0
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_8C As ListView
  Dim var_AC As TextBox
  Dim arg_10 As Integer
  Dim var_B0 As TextBox
  loc_112DC6B: var_86 = Cancel
  loc_112DC76: If (var_86 = CInt(0)) Then
  loc_112DC86:   Set var_8C = Me.Txt
  loc_112DC8C:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_112DCAB:   If (var_90.Text = vbNullString) Then
  loc_112DCAE:     Exit Sub
  loc_112DCAF:   End If
  loc_112DCBC:   Set var_8C = Me.Txt
  loc_112DCC2:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_112DCE1:   If (var_90.Text <> vbNullString) Then
  loc_112DCFC:     Set var_90 = Me.ListView.SelectedItem
  loc_112DD14:     Set var_A8 = Me.Txt
  loc_112DD1A:     Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_112DD22:     var_AC.Text = var_90.Text
  loc_112DD38:   End If
  loc_112DD3B: Else
  loc_112DD43:   If (var_86 = CInt(2)) Then
  loc_112DD54:     Set var_8C = Me.Txt
  loc_112DD5A:     Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_112DD79:     If (var_90.Text <> vbNullString) Then
  loc_112DD87:       Set var_8C = Me.Txt
  loc_112DD8D:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_112DDB6:       If (Proc_183_19_E8E68C(var_90, "Valid From") = 0) Then
  loc_112DDBB:         arg_10 = &HFF
  loc_112DDBE:         Exit Sub
  loc_112DDBF:       End If
  loc_112DDC2:     Else
  loc_112DDC4:       arg_10 = &HFF
  loc_112DDC7:     End If
  loc_112DDD2:     Set var_8C = Me.Txt
  loc_112DDD8:     Call 0.Method_Txt_Validate0 (CInt(2), var_90, arg_10)
  loc_112DDF9:     Set var_AC = Me.Txt
  loc_112DDFF:     Call 0.Method_Txt_Validate0 (CInt(2), var_B0)
  loc_112DE07:     var_B0.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_112DE1D:   Else
  loc_112DE25:     If (var_86 = CInt(3)) Then
  loc_112DE36:       Set var_8C = Me.Txt
  loc_112DE3C:       Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_112DE5B:       If (var_90.Text <> vbNullString) Then
  loc_112DE69:         Set var_8C = Me.Txt
  loc_112DE6F:         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_112DE98:         If (Proc_183_19_E8E68C(var_90, "Valid Until") = 0) Then
  loc_112DE9D:           arg_10 = &HFF
  loc_112DEA0:           Exit Sub
  loc_112DEA1:         End If
  loc_112DEA4:       Else
  loc_112DEA6:         arg_10 = &HFF
  loc_112DEA9:       End If
  loc_112DEB4:       Set var_8C = Me.Txt
  loc_112DEBA:       Call 0.Method_Txt_Validate0 (CInt(3), var_90, arg_10)
  loc_112DEDB:       Set var_AC = Me.Txt
  loc_112DEE1:       Call 0.Method_Txt_Validate0 (CInt(3), var_B0)
  loc_112DEE9:       var_B0.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_112DEFF:     Else
  loc_112DF07:       If (var_86 = CInt(4)) Then
  loc_112DF18:         Set var_8C = Me.Txt
  loc_112DF1E:         Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_112DF3D:         If (var_90.Text <> vbNullString) Then
  loc_112DF4B:           Set var_8C = Me.Txt
  loc_112DF51:           Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_112DF7A:           If (Proc_183_19_E8E68C(var_90, "Renewal Date") = 0) Then
  loc_112DF7F:             arg_10 = &HFF
  loc_112DF82:             Exit Sub
  loc_112DF83:           End If
  loc_112DF86:         Else
  loc_112DF88:           arg_10 = &HFF
  loc_112DF8B:         End If
  loc_112DF96:         Set var_8C = Me.Txt
  loc_112DF9C:         Call 0.Method_Txt_Validate0 (CInt(4), var_90, arg_10)
  loc_112DFBD:         Set var_AC = Me.Txt
  loc_112DFC3:         Call 0.Method_Txt_Validate0 (CInt(4), var_B0)
  loc_112DFCB:         var_B0.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_112DFDE:       End If
  loc_112DFDE:     End If
  loc_112DFDE:   End If
  loc_112DFDE: End If
  loc_112DFDE: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F19E6C
  'Data Table: 438EC0
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F19D88: On Error Goto loc_F19E66
  loc_F19D8F: Set var_A4 = Me.ListView
  loc_F19DD9: Set var_BC = Me.Txt
  loc_F19DDF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F19DE7: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F19E13: Me.FrmList.Visible = False
  loc_F19E35: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F19E43: Set var_9C = Me.Txt
  loc_F19E49: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F19E51: var_A4.SetFocus
  loc_F19E65: Exit Sub
  loc_F19E66: ' Referenced from: F19D88
  loc_F19E66: Proc_6_60_E63754(var_C8)
  loc_F19E6B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'F8207C
  'Data Table: 438EC0
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_174 As Variant
  Dim var_194 As Long
  Dim var_1B4 As Variant
  loc_F81F63: If (CLng(Me.FGrid.Col) = 0) Then
  loc_F81F76:   Me.FGrid.CellFontName = "WINGDINGS"
  loc_F81F90:   Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_F81FAB:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F81FB0:   var_C8 = 0
  loc_F81FE2:   var_174 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F81FE7:   var_194 = 0
  loc_F82022:   var_1B4 = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_F8202A:   Set var_1C8 = Me.FGrid
  loc_F82030:   LateIdCallSt
  loc_F82070:   global_52 = CInt(CLng(Me.FGrid.Row))
  loc_F82079: End If
  loc_F82079: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 '122AA28
  'Data Table: 438EC0
  Dim var_8A As Integer
  Dim var_90 As String
  Dim var_A0 As String
  Dim var_98 As TextBox
  Dim unk_438EC7 As Connection15
  Dim var_94 As MSHFlexGrid
  Dim Cmd_UnknownEvent_94 As Variant
  Dim arg_2C As Variant
  Dim var_CC As TextBox
  Dim var_B4 As Variant
  Dim var_F0 As Long
  Dim var_104 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_9C As String
  Dim var_110 As String
  Dim var_144 As Variant
  Dim var_2DC As Variant
  Dim Me As Recordset15
  loc_122A5B7: var_8A = Cancel
  loc_122A5C2: If (var_8A = CInt(1)) Then
  loc_122A5CC:   var_90 = "SELECT '' as a, S.Name As Name , MCat.Name As Type , Convert(varchar,S.ValidFrom,103) as ValidFrom ,Convert(varchar,S.ValidateUpto,103) As ValidUntil " & " , Convert(varchar,MHis.RenewalDate ,103) As RenewalDate, S.Subcode as Code  FROM Subgroup S join MemCatMast MCat on S.Companytype = MCat.Code "
  loc_122A5D3:   var_A0 = var_90 & " left join MemHistory MHis on s.subcode=MHis.code Where s.ActiveYN= 1 and s.BlackListed='N' and MCat.Name='"
  loc_122A5EA:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(1), var_98, var_9C)
  loc_122A5F2:   var_A0 = var_98.Text
  loc_122A62D:   unk_438EC7.Execute var_8A & var_9C & "' AND  S.validFrom=MHis.validFrom AND S.validateupto=MHis.ValidUntil", var_C4, -1
  loc_122A656:   Cmd_UnknownEvent_94 = Me.FGrid.Text
  loc_122A67F:   CVarUnk
  loc_122A684:   VerifyVarObj
  loc_122A690:   LateIdStAd
  loc_122A69E:   Call Proc_277_14_107B0EC(Me.FGrid, Me.Txt, Me.FGrid.Text)
  loc_122A6A6: Else
  loc_122A6AE:   If (var_8A = CInt(0)) Then
  loc_122A6BF:     Set var_94 = Me.Txt
  loc_122A6C5:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(2), var_98, var_90)
  loc_122A6CD:     Cmd_UnknownEvent_94 = var_98.Text
  loc_122A6E0:     Set var_C8 = Me.Txt
  loc_122A6E6:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(3), var_CC)
  loc_122A6FA:     var_B4 = CVar(CLng(global_52)) 'Long
  loc_122A6FF:     var_F0 = 6
  loc_122A70C:     Set var_104 = Me.FGrid
  loc_122A752:     var_110 = "UPDATE Subgroup SET ValidFrom='" & var_90 & "', Validateupto='" & var_CC.Text & "' WHERE SubCode='" & CStr(var_104.TextMatrix))
  loc_122A77E:     unk_438EC7.Execute var_110 & "'  AND Site_Code='" & MemVar_1F95070 & "' AND LogSite_Code='" & MemVar_1F95078 & "'", var_144, -1
  loc_122A7C2:     var_F0 = 6
  loc_122A7D5:     var_C4 = Me.FGrid.TextMatrix)
  loc_122A7EC:     Set var_98 = Me.Txt
  loc_122A7F2:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(2), var_C8, var_C4, var_F0, CVar(CLng(global_52)))
  loc_122A801:     Proc_6_7_F26918(var_158, CVar(var_C8), var_148, var_C4)
  loc_122A811:     Set var_CC = Me.Txt
  loc_122A817:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(3), var_104, var_F0)
  loc_122A826:     Proc_6_7_F26918(var_1A8, CVar(var_104))
  loc_122A836:     Set var_148 = Me.Txt
  loc_122A83C:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(4), var_1DC)
  loc_122A84B:     Proc_6_7_F26918(var_1FC, CVar(var_1DC))
  loc_122A85E:     Proc_6_7_F26918(var_28C, Now)
  loc_122A87B:     var_9C = "INSERT INTO MemHistory(Code,ValidFrom,ValidUntil,RenewalDate,U_Name,U_EntDt,U_AE,LOGSITE_CODE,SITE_CODE) VALUES ('" & CStr(var_C4)
  loc_122A8DE:     var_2DC = CVar(var_9C & "',") & var_158 & "," & var_1A8 & "," & var_1FC & ",'" & CVar(MemVar_1F950C8) & "'," & var_28C & ",'A','" & CVar(MemVar_1F95078) 
  loc_122A908:     unk_438EC7.Execute CStr(var_2DC & "','" & CVar(MemVar_1F95070) & "')"), var_35C, -1
  loc_122A95F:     var_B4 = CVar(CLng(global_52)) 'Long
  loc_122A977:     Set var_94 = Me.FGrid
  loc_122A97D:     LateIdCallSt
  loc_122A995:     Set var_94 = Me.FGrid
  loc_122A99B:     var_94.CellForeColor = &HFF0000
  loc_122A9A8:     Call Proc_277_16_E6CBD4(2, var_94, "ü", 0)
  loc_122A9B8:     Me.Requery -1
  loc_122A9C7:     Cmd_UnknownEvent_94 = Me.FGrid.Text
  loc_122A9DC:     arg_2C = Me.FGrid.Text
  loc_122A9F0:     CVarUnk
  loc_122A9F5:     VerifyVarObj
  loc_122A9FB:     Set var_94 = Me.FGrid
  loc_122AA01:     LateIdStAd
  loc_122AA13:     Set var_94 = Me.FGrid
  loc_122AA24:   End If
  loc_122AA24: End If
  loc_122AA24: Exit Sub
  loc_122AA25: ThisVCallI2
End Sub

Private Sub Form_Load() 'E65330
  'Data Table: 438EC0
  Dim var_9C As Variant
  loc_E652ED: Call 0.Method_arg_160 (var_88)
  loc_E652FB: Call 0.Method_arg_164 (var_88)
  loc_E6530A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_E65313: var_9C = CVar(CLng(MemVar_1F951B4)) 'Long
  loc_E6531C: Set var_88 = Me.ImgLogo
  loc_E6532A: Call Proc_277_14_107B0EC(ImgLogo.DispID_12)
  loc_E6532F: Exit Sub
End Sub

Private Sub Form_Resize() 'EDA8AC
  'Data Table: 438EC0
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_EDA80A: Set var_88 = Me.Txt
  loc_EDA810: Call 0.Method_Form_Resize0 (CInt(1), var_8C)
  loc_EDA82F: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_EDA84B: Set var_B4 = Me.Txt
  loc_EDA851: Call 0.Method_Form_Resize0 (CInt(1), var_B8)
  loc_EDA86C: Set var_88 = Me.Txt
  loc_EDA872: Call 0.Method_Form_Resize0 (CInt(1), var_8C)
  loc_EDA88A: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&HF))) 'Single
  loc_EDA899: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_EDA8AB: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E2ECE4
  'Data Table: 438EC0
  loc_E2ECD8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E2ECDB:   Call DGHelp_UnknownEvent_9()
  loc_E2ECE0: End If
  loc_E2ECE0: Exit Sub
End Sub

Public Sub Proc_277_14_107B0EC
  'Data Table: 438EC0
  Dim var_98 As Long
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_107AE4B: Me.FGrid.Cols = 7
  loc_107AE50: var_98 = 0
  loc_107AE59: var_B8 = 0
  loc_107AE62: var_D8 = vbNullString
  loc_107AE6B: LateIdCallSt
  loc_107AE73: var_98 = 0
  loc_107AE82: var_B8 = CVar(CInt(1)) 'Integer
  loc_107AE89: LateIdCallSt
  loc_107AE91: var_98 = 1
  loc_107AE9A: var_B8 = &H1C2
  loc_107AEA6: LateIdCallSt
  loc_107AEAE: var_98 = 0
  loc_107AEB7: var_B8 = 1
  loc_107AEC0: var_D8 = "Member Name"
  loc_107AEC9: LateIdCallSt
  loc_107AED1: var_98 = 0
  loc_107AEE0: var_B8 = CVar(CInt(1)) 'Integer
  loc_107AEE7: LateIdCallSt
  loc_107AEEF: var_98 = 1
  loc_107AEF8: var_B8 = &H1194
  loc_107AF04: LateIdCallSt
  loc_107AF0C: var_98 = 0
  loc_107AF15: var_B8 = 2
  loc_107AF1E: var_D8 = "Member Type"
  loc_107AF27: LateIdCallSt
  loc_107AF2F: var_98 = 2
  loc_107AF3E: var_B8 = CVar(CInt(1)) 'Integer
  loc_107AF45: LateIdCallSt
  loc_107AF4D: var_98 = 2
  loc_107AF56: var_B8 = &H7D0
  loc_107AF62: LateIdCallSt
  loc_107AF6A: var_98 = 0
  loc_107AF73: var_B8 = 3
  loc_107AF7C: var_D8 = "Valid From"
  loc_107AF85: LateIdCallSt
  loc_107AF8D: var_98 = 3
  loc_107AF9C: var_B8 = CVar(CInt(1)) 'Integer
  loc_107AFA3: LateIdCallSt
  loc_107AFAB: var_98 = 3
  loc_107AFB4: var_B8 = &H640
  loc_107AFC0: LateIdCallSt
  loc_107AFC8: var_98 = 0
  loc_107AFD1: var_B8 = 4
  loc_107AFDA: var_D8 = "Valid Until"
  loc_107AFE3: LateIdCallSt
  loc_107AFEB: var_98 = 4
  loc_107AFFA: var_B8 = CVar(CInt(1)) 'Integer
  loc_107B001: LateIdCallSt
  loc_107B009: var_98 = 4
  loc_107B012: var_B8 = &H640
  loc_107B01E: LateIdCallSt
  loc_107B026: var_98 = 0
  loc_107B02F: var_B8 = 5
  loc_107B038: var_D8 = "Renewal Date"
  loc_107B041: LateIdCallSt
  loc_107B049: var_98 = 5
  loc_107B058: var_B8 = CVar(CInt(7)) 'Integer
  loc_107B05F: LateIdCallSt
  loc_107B067: var_98 = 5
  loc_107B070: var_B8 = &H640
  loc_107B07C: LateIdCallSt
  loc_107B084: var_98 = 0
  loc_107B08D: var_B8 = 6
  loc_107B096: var_D8 = "Code"
  loc_107B09F: LateIdCallSt
  loc_107B0A7: var_98 = 6
  loc_107B0B6: var_B8 = CVar(CInt(7)) 'Integer
  loc_107B0BD: LateIdCallSt
  loc_107B0C5: var_98 = 6
  loc_107B0CE: var_B8 = 0
  loc_107B0DA: LateIdCallSt
  loc_107B0E4: Set var_88 = Nothing 
  loc_107B0E8: Exit Sub
End Sub

Public Sub Proc_277_15_EB8554
  'Data Table: 438EC0
  loc_EB84D0: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EB84E2:   Me.DGHelp.Visible = False
  loc_EB84EA: End If
  loc_EB8506: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB8518:   Me.FGPoint.Visible = False
  loc_EB8520: End If
  loc_EB853B: If (Me.FrmList.Visible = &HFF) Then
  loc_EB854A:   Me.FrmList.Visible = False
  loc_EB8552: End If
  loc_EB8552: Exit Sub
End Sub

Public Sub Proc_277_16_E6CBD4(arg_C) 'E6CBD4
  'Data Table: 438EC0
  Dim var_98 As TextBox
  loc_E6CB89: Set var_8C = Me.Txt
  loc_E6CB8F: Call 0.Method_Proc_277_16_E6CBD4C (var_8E, var_86)
  loc_E6CB9D: For var_92 =  To (var_8E - 1): arg_C = var_92 'Integer
  loc_E6CBB0:   Set var_8C = Me.Txt
  loc_E6CBB6:   Call 0.Method_Proc_277_16_E6CBD40 (var_86, var_98)
  loc_E6CBBE:   var_98.Text = vbNullString
  loc_E6CBCD: Next var_92 'Integer
  loc_E6CBD2: Exit Sub
End Sub
