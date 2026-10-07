VERSION 5.00
Begin VB.Form DepOpStk
  Caption = "Location wise Opening Stock Entry"
  BackColor = &HF8EBFC&
  ForeColor = &H404040&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 7530
  ClientHeight = 6180
  LockControls = -1  'True
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7530
    Height = 450
    TabIndex = 15
  End
End
End

Attribute VB_Name = "DepOpStk"

Private global_98 As Integer
Private global_100 As Integer
Private MasterFormExit As Integer
Private global_84 As Integer

Private Sub FGrid_UnknownEvent_0 'EA6E30
  'Data Table: 4771AC
  Dim var_BC As TextBox
  loc_EA6DAC: Set var_88 = ()
  loc_EA6DCB: If (CDbl(CLng(TxtGrid.DispID_10)) = CDbl(global_68)) Then
  loc_EA6DDA:   Set var_88 = (CVar(CLng(1)))
  loc_EA6DE8: End If
  loc_EA6DF5: Set var_88 = TxtGrid.DispID_B(CVar(CLng("14737632")))
  loc_EA6E0E: Set var_88 = var_BC(0)
  loc_EA6E14: Call 0.Method_FGrid_UnknownEvent_00 (0)
  loc_EA6E1C: var_BC.Visible = TxtGrid.DispID_10
  loc_EA6E28: Call Proc_130_48_E87C00()
  loc_EA6E2D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69410
  'Data Table: 4771AC
  Dim var_8C As TextBox
  loc_E693CC: Set var_88 = var_8C(0)
  loc_E693D2: Call 0.Method_FGrid_UnknownEvent_10 (var_8E)
  loc_E693DA:  = var_8C.Visible
  loc_E693EC: If (var_8E = 0) Then
  loc_E693FF:   Set var_88 = (CVar(CLng(global_68)))
  loc_E6940D: End If
  loc_E6940D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E000F4
  'Data Table: 4771AC
  loc_E000EC: Call Proc_130_42_E46738()
  loc_E000F1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '116DF24
  'Data Table: 4771AC
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_B0 As Variant
  Dim var_EC As Long
  loc_116DB5C: Set var_88 = Me.TopCtrl1
  loc_116DB62: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_116DBA7: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_116DBB0:   Call Form_KeyDown(KeyCode, Shift)
  loc_116DBB5: End If
  loc_116DBB9: Set var_88 = Me.TopCtrl1
  loc_116DBBF: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_116DBD8: If (CStr() = "Browse") Then
  loc_116DBDB:   Exit Sub
  loc_116DBDC: End If
  loc_116DBE0: Set var_A0 = ()
  loc_116DBE6: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_116DBF3: Set var_B4 = ()
  loc_116DBF9: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_116DC10: Set var_88 = ((CLng(KeyCode) = &H26))
  loc_116DC16: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000B()
  loc_116DC50: If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - (CLng(var_C4) - 1))))) Then
  loc_116DC63:   Set var_88 = (CVar(CLng(global_68)))
  loc_116DC69:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_26()
  loc_116DC79:   var_9C = "+{Tab}"
  loc_116DC7F:   Proc_303_0_FBACC8(CStr())
  loc_116DC89:   KeyCode = 0
  loc_116DC8F: Else
  loc_116DC93:   Set var_A0 = 0(KeyCode)
  loc_116DC99:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_116DCB0:   Set var_88 = ((CLng(KeyCode) = &H28))
  loc_116DCB6:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000B()
  loc_116DCE6:   If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - 1)))) Then
  loc_116DCF9:     Set var_88 = (CVar(CLng(global_68)))
  loc_116DCFF:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_26()
  loc_116DD0C:     Call Proc_130_49_F0C7C4(0)
  loc_116DD11:   End If
  loc_116DD11: End If
  loc_116DD1E: Set var_88 = (KeyCode)
  loc_116DD24: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_116DD37: Set var_A0 = (CVar(CStr(CLng())))
  loc_116DD3D: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000B()
  loc_116DD61: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_116DD68:   Set var_88 = ()
  loc_116DD6E:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_116DD77:   var_EC = CLng()
  loc_116DD87:   If (var_EC = CLng(1)) Then
  loc_116DD8E:     Set var_88 = (var_EC)
  loc_116DD94:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_116DDA6:     Set var_A0 = (CVar(CLng()))
  loc_116DDAC:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_116DDCA:     LateIdCallSt
  loc_116DDE6:     Set var_88 = (CVar(CLng())(vbNullString))
  loc_116DDEC:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_116DE12:     LateIdCallSt
  loc_116DE28:     Set var_88 = CVar(CLng())(CVar(CLng(4))(vbNullString))
  loc_116DE2E:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_116DE54:     LateIdCallSt
  loc_116DE6A:     Set var_88 = CVar(CLng())(CVar(CLng(2))(vbNullString))
  loc_116DE70:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_116DE79:     var_D4 = CVar(CLng()) 'Long
  loc_116DE90:     Set var_A0 = CVar(CLng(3))(vbNullString)
  loc_116DE96:     LateIdCallSt
  loc_116DEAB:   Else
  loc_116DEB2:     If (var_EC = CLng(3)) Then
  loc_116DEB9:       Set var_88 = var_D4(var_A0)
  loc_116DEBF:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_116DED1:       Set var_A0 = (CVar(CLng()))
  loc_116DED7:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_116DEEF:       Set var_B4 = CVar(CLng())(vbNullString)
  loc_116DEF5:       LateIdCallSt
  loc_116DF0D:     End If
  loc_116DF0D:   End If
  loc_116DF0D: End If
  loc_116DF13: If (KeyCode = &HD) Then
  loc_116DF1B:   global_98 = 0
  loc_116DF1E: End If
  loc_116DF20: KeyCode = 0
  loc_116DF23: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10D08
  'Data Table: 4771AC
  loc_E10CF9: Call FGrid_UnknownEvent_C()
  loc_E10D03: global_98 = 0
  loc_E10D06: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1015BF8
  'Data Table: 4771AC
  Dim var_9C As String
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_10159E8: Set var_88 = Me.TopCtrl1
  loc_10159EE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1015A07: If (CStr() = "Browse") Then
  loc_1015A0A:   Exit Sub
  loc_1015A0B: End If
  loc_1015A0F: Set var_88 = ()
  loc_1015A15: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_1015A1E: var_A0 = CLng()
  loc_1015A2E: If (var_A0 = CLng(1)) Then
  loc_1015A35:   Set var_C4 = (var_A0)
  loc_1015A59:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1015A86:   Set var_B4 = var_C4
  loc_1015A98:   Proc_6_63_110B734(Me, var_B4, (), 0)
  loc_1015AC0:   Set var_88 = var_B4(0)
  loc_1015AC6:   Call 0.Method_FGrid_UnknownEvent_C0 (var_9C, 0, Asc(var_9C))
  loc_1015ACE:   0 = var_B4.Text
  loc_1015AE7:   If (Len(var_9C) <= 1) Then
  loc_1015AF6:     Set var_88 = var_B4(0)
  loc_1015AFC:     Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_1015B04:     var_CA = var_B4.Text
  loc_1015B15:     Set var_B8 = var_C4(0)
  loc_1015B1B:     Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_1015B23:     var_C4.Text = 
  loc_1015B36:   End If
  loc_1015B42:   Set var_88 = var_B4(0)
  loc_1015B48:   Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_1015B50:    = var_B4.Text
  loc_1015B62:   Set var_B8 = var_C4(0)
  loc_1015B68:   Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_9C))
  loc_1015B70:   var_C4.SelStart = 
  loc_1015B86: Else
  loc_1015B8D:   If (var_A0 = CLng(3)) Then
  loc_1015BCE:     Proc_6_63_110B734(Me, (), (), 0)
  loc_1015BE0:   End If
  loc_1015BE0: End If
  loc_1015BEA: If (CLng(KeyCode) <> &HD) Then
  loc_1015BF2:   global_98 = &HFF
  loc_1015BF5: End If
  loc_1015BF5: Exit Sub
  loc_1015BF6: CExtInstUnk
End Sub

Private Sub FGrid_UnknownEvent_D '1056AE0
  'Data Table: 4771AC
  Dim var_B4 As Variant
  Dim arg_3400 As Variant
  loc_105687C: Set var_90 = Me.TopCtrl1
  loc_1056882: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_105689B: If (CStr() = "Browse") Then
  loc_105689E:   Exit Sub
  loc_105689F: End If
  loc_10568A3: Set var_90 = ()
  loc_10568A9: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_D()
  loc_10568BC: If (CLng() = CLng(0)) Then
  loc_10568BF:   Exit Sub
  loc_10568C0: End If
  loc_10568D1: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_10568D8:   Set var_90 = ()
  loc_10568DE:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_10568F3:   If (CLng() >= 1) Then
  loc_105692D:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_1056934:       Set var_90 = ()
  loc_105693A:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_105694F:       If (CLng() > 2) Then
  loc_1056956:         Set var_90 = ()
  loc_105695C:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_105696E:         Set var_118 = (CVar(CLng()))
  loc_1056974:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_10000()
  loc_1056989:       Else
  loc_1056996:         Set var_90 = (1)
  loc_105699C:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_10569CA:         Set var_118 = CInt(0)(CVar(CStr(Proc_6_127_F25B10(()))))
  loc_10569D0:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_10000()
  loc_10569F1:         Set var_90 = (1)
  loc_10569F7:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6()
  loc_10569FF:       End If
  loc_1056A03:       Set var_90 = Me.TopCtrl1
  loc_1056A09:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1056A22:       If (CStr() = "Add") Then
  loc_1056A2E:         Set var_90 = 1(var_86)
  loc_1056A34:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_1056A4A:         For var_124 =  To CInt((CLng() - 1)):  = var_124 'Integer
  loc_1056A54:           var_B4 = CVar(CLng(var_86)) 'Long
  loc_1056A6E:           Set var_90 = CVar(CLng(0))(CVar(CStr(var_86)))
  loc_1056A74:           LateIdCallSt
  loc_1056A85:         Next var_124 'Integer
  loc_1056A8A:       End If
  loc_1056A8A:     End If
  loc_1056A8D:   Else
  loc_1056AAE:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_1056ABE:   End If
  loc_1056AC2:   Set var_90 = ()
  loc_1056AC8:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001()
  loc_1056AD3: End If
  loc_1056AD8: Set var_8C = Nothing
  loc_1056ADB: Exit Sub
  loc_1056ADC: Exit Sub
  loc_1056ADD: arg_3400 = CVar() 'Long
End Sub

Private Sub FGrid_UnknownEvent_15 'E449F0
  'Data Table: 4771AC
  Dim var_8C As TextBox
  loc_E449C4: Call Proc_130_48_E87C00()
  loc_E449D4: Set var_88 = var_8C(0)
  loc_E449DA: Call 0.Method_FGrid_UnknownEvent_150 (0)
  loc_E449E2: var_8C.Visible = 
  loc_E449EE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EDB238
  'Data Table: 4771AC
  Dim var_8C As String
  Dim var_98 As TextBox
  loc_EDB184: On Error Goto loc_EDB230
  loc_EDB1AA: Call Proc_130_47_EC9664(Proc_5_1_100EC1C("ADD", Me))
  loc_EDB1B5: Call Proc_130_46_F5D528(global_64)
  loc_EDB1BF: var_8C = CStr(MemVar_1F950EC)
  loc_EDB1CD: Set var_90 = var_98(CInt(2))
  loc_EDB1D3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_8C)
  loc_EDB1DB: var_98.Text = 
  loc_EDB1F0: Call Proc_130_50_114F1CC(MemVar_1F95044)
  loc_EDB1FB: global_72 = var_8C
  loc_EDB20D: Set var_90 = var_98(CInt(4))
  loc_EDB213: Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_8C)
  loc_EDB21B: var_98.SetFocus
  loc_EDB22C: Set var_88 = Nothing
  loc_EDB22F: Exit Sub
  loc_EDB230: ' Referenced from: EDB184
  loc_EDB230: Proc_6_60_E63754()
  loc_EDB235: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EB573C
  'Data Table: 4771AC
  loc_EB56B0: On Error Goto loc_EB5733
  loc_EB56EA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EB5710:   Call Proc_130_47_EC9664(Proc_5_1_100EC1C("INI", Me))
  loc_EB571B:   Call Proc_130_44_135C50C(global_64)
  loc_EB5726:   global_104 = vbNullString
  loc_EB572F:   global_100 = 0
  loc_EB5732: End If
  loc_EB5732: Exit Sub
  loc_EB5733: ' Referenced from: EB56B0
  loc_EB5733: Proc_6_60_E63754(global_100)
  loc_EB5738: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12F4A48
  'Data Table: 4771AC
  Dim unk_4771C1 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_12F437C: On Error Goto loc_12F49F7
  loc_12F43B6: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_12F43C2:   unk_4771C1.BeginTrans var_118
  loc_12F43D8:   var_94 = Me.Bookmark 'Variant
  loc_12F4432:   unk_4771C1.Execute CStr("Delete From Ledger Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12F447D:   var_160 = 0
  loc_12F4490:   var_158 = 0
  loc_12F449B:   var_154 = 0
  loc_12F44AE:   var_14C = 0
  loc_12F44B9:   var_148 = 0
  loc_12F44CC:   var_140 = 0
  loc_12F4515:   Proc_154_5_10E3BD4(MemVar_1F95044, "Ledger", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F4593:   unk_4771C1.Execute CStr("Delete From Purch1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12F45DE:   var_160 = 0
  loc_12F45F1:   var_158 = 0
  loc_12F45FC:   var_154 = 0
  loc_12F460F:   var_14C = 0
  loc_12F461A:   var_148 = 0
  loc_12F462D:   var_140 = 0
  loc_12F4676:   Proc_154_5_10E3BD4(MemVar_1F95044, "Purch1", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F46F4:   unk_4771C1.Execute CStr("Delete From Stock Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12F473F:   var_160 = 0
  loc_12F4752:   var_158 = 0
  loc_12F475D:   var_154 = 0
  loc_12F4770:   var_14C = 0
  loc_12F477B:   var_148 = 0
  loc_12F478E:   var_140 = 0
  loc_12F47D7:   Proc_154_5_10E3BD4(MemVar_1F95044, "Stock", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F4847:   var_F4 = "Delete From KClStk Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12F4855:   unk_4771C1.Execute CStr(var_F4), var_114, -1
  loc_12F48A0:   var_160 = 0
  loc_12F48B3:   var_158 = 0
  loc_12F48BE:   var_154 = 0
  loc_12F48D1:   var_14C = 0
  loc_12F48DC:   var_148 = 0
  loc_12F48EF:   var_140 = 0
  loc_12F492F:   var_124 = "KClStk"
  loc_12F4938:   Proc_154_5_10E3BD4(MemVar_1F95044, var_124, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F4966:   unk_4771C1.CommitTrans
  loc_12F4976:   Me.Requery -1
  loc_12F4996:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12F49A3:     Me.Bookmark = var_94
  loc_12F49AB:   Else
  loc_12F49BF:     If (Me.EOF = 0) Then
  loc_12F49C8:       Me.MoveLast
  loc_12F49CD:     End If
  loc_12F49CD:   End If
  loc_12F49CD:   Call Proc_130_44_135C50C(var_140, 0, var_148, var_14C)
  loc_12F49EE:   Proc_5_0_1107AD0(&HFF, Me, global_64, 0)
  loc_12F49F6: End If
  loc_12F49F6: Exit Sub
  loc_12F49F7: ' Referenced from: 12F437C
  loc_12F49FD: unk_4771C1.RollbackTrans
  loc_12F4A0A: Set var_11C = Err()
  loc_12F4A10: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_12F4A31: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_12F4A44: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E810EC
  'Data Table: 4771AC
  Dim var_94 As TextBox
  loc_E81088: On Error Goto loc_E810E4
  loc_E810AE: Call Proc_130_47_EC9664(Proc_5_1_100EC1C("EDIT", Me))
  loc_E810C4: Set var_8C = var_94(CInt(4))
  loc_E810CA: Call 0.Method_TopCtrl1_UnknownEvent_D0 (global_64)
  loc_E810D2: var_94.SetFocus
  loc_E810DE: Call Proc_130_52_E8A58C()
  loc_E810E3: Exit Sub
  loc_E810E4: ' Referenced from: E81088
  loc_E810E4: Proc_6_60_E63754()
  loc_E810E9: Exit Sub
  loc_E810EA: Set arg_3400 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AF40
  'Data Table: 4771AC
  loc_E1AF35: Me.Global.Unload Me
  loc_E1AF3D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB566C
  'Data Table: 4771AC
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB55DC: On Error Goto loc_EB5666
  loc_EB55F6: If (Me.RecordCount <= 0) Then
  loc_EB55FF:   var_B8 = "Information"
  loc_EB561A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB562A:   Exit Sub
  loc_EB562B: End If
  loc_EB562E: MemVar_1F950E4 = "Select DISTINCT Docid as SearchCode,K.Vtype As VType,Convert(Varchar(10),K.VNo) as VrNo ,Convert(Varchar(12),K.VDate,103) as VDate,GodownMast.NAME AS Location From KClStk K LEFT JOIN GodownMast ON K.DEPARTCODE=GodownMast.CODE Order By VRno"
  loc_EB563B: Proc_6_126_F1C850("1000,1000,1000,4000")
  loc_EB5649: MemVar_1F95120 = Me
  loc_EB5660: Call 0.Method_arg_2B0 (1)
  loc_EB5665: Exit Sub
  loc_EB5666: ' Referenced from: EB55DC
  loc_EB5666: Proc_6_60_E63754(var_B8)
  loc_EB566B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E37E68
  'Data Table: 4771AC
  loc_E37E58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37E60: Call Proc_130_44_135C50C(global_64)
  loc_E37E65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E37E08
  'Data Table: 4771AC
  loc_E37DF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37E00: Call Proc_130_44_135C50C(global_64)
  loc_E37E05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E37C28
  'Data Table: 4771AC
  loc_E37C18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37C20: Call Proc_130_44_135C50C(global_64)
  loc_E37C25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E37B08
  'Data Table: 4771AC
  Dim arg_34FF As Double
  loc_E37AF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37B00: Call Proc_130_44_135C50C(global_64)
  loc_E37B05: Exit Sub
  loc_E37B06: arg_34FF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFFBB4
  'Data Table: 4771AC
  loc_DFFBAC: Exit Sub
  loc_DFFBAD: Proc_6_60_E63754()
  loc_DFFBB2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E20AE0
  'Data Table: 4771AC
  Dim Me As Recordset15
  loc_E20AC7: Me.Requery -1
  loc_E20AD7: Me.Requery -1
  loc_E20ADC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1468E94
  'Data Table: 4771AC
  Dim var_B8 As Variant
  Dim var_D4 As Variant
  Dim var_124 As Variant
  Dim var_C0 As String
  Dim var_158 As String
  Dim unk_4771C1 As Connection15
  Dim var_BC As Variant
  Dim var_160 As Variant
  Dim var_164 As Variant
  Dim Me As Variant
  Dim var_B4 As Fields15
  Dim var_8E As Integer
  Dim var_1DC As Variant
  Dim var_540 As Double
  Dim var_214 As TextBox
  Dim var_548 As Double
  Dim var_234 As TextBox
  Dim var_550 As Double
  Dim var_1E0 As String
  Dim var_1E8 As String
  Dim var_1F0 As String
  Dim var_154 As Variant
  Dim var_258 As Variant
  Dim var_408 As Variant
  Dim var_134 As Variant
  Dim var_114 As Variant
  Dim var_88 As Recordset15
  Dim var_1EC As String
  loc_14683C0: On Error Goto loc_1468E79
  loc_14683CE: Set var_B4 = var_B8(CInt(2))
  loc_14683D4: Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_14683DC: var_C0 = "Invoice Date"
  loc_14683FD: If (Proc_6_27_EA61EC(var_B8) = 0) Then
  loc_1468400:   Exit Sub
  loc_1468401: End If
  loc_146840C: Set var_B4 = var_B8(CInt(1))
  loc_1468412: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C0)
  loc_146841A: var_C0 = "Invoice No"
  loc_1468423: Set var_BC = var_B8
  loc_146843B: If (Proc_6_27_EA61EC(var_BC) = 0) Then
  loc_146843E:   Exit Sub
  loc_146843F: End If
  loc_1468442: Call Proc_130_45_108EE78(var_C2)
  loc_146844D: If (var_C2 = 0) Then
  loc_1468450:   Exit Sub
  loc_1468451: End If
  loc_146845C: Set var_B4 = var_B8(0)
  loc_1468462: Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_146846A: var_B8.Visible = var_C0
  loc_1468476: Call Proc_130_48_E87C00()
  loc_1468491: Set var_B4 = 1(1)
  loc_1468497: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_14684A2: var_124 = CVar(CStr()) 'String
  loc_14684A8: var_134 = Trim(var_124)
  loc_14684C4: If (var_134 = vbNullString) Then
  loc_14684DA:   var_114 = "Item Detail Required "
  loc_14684E0:   MsgBox(var_114, 0, var_124, var_134, var_154)
  loc_14684FD:   Set var_B4 = (1)
  loc_1468503:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_146850F:   Set var_B4 = ()
  loc_1468515:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001()
  loc_146852D:   Set var_B4 = (CVar(CLng("14737632")))
  loc_1468533:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_26()
  loc_146853B:   Exit Sub
  loc_146853C: End If
  loc_146853F: Call Proc_130_51_1010874(var_C2)
  loc_146854A: If (var_C2 = 0) Then
  loc_1468558:   Set var_B4 = var_B8(CInt(2))
  loc_146855E:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1468566:   var_B8.SetFocus
  loc_1468572:   Exit Sub
  loc_1468573: End If
  loc_1468577: Set var_B4 = Me.TopCtrl1
  loc_146857D: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1468585: var_C0 = CStr()
  loc_1468596: If (var_C0 = "Add") Then
  loc_14685C6:   Set var_B4 = var_B8(CInt(3))
  loc_14685CC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C0, "Select Count(*) From Purch1 Where DocID='", var_114, -1, var_BC)
  loc_14685ED:   unk_4771C1.Execute 0 & var_C0 & "'", var_164, var_124
  loc_14685F5:    = var_BC.Fields
  loc_14685FD:    = var_B8.Text.Item()
  loc_1468605:    = var_164.Value
  loc_1468632:   If (var_124 > 0) Then
  loc_146863B:     Call Proc_130_50_114F1CC(MemVar_1F95044)
  loc_146864E:     Set var_B4 = var_B8(CInt(3))
  loc_1468654:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C0)
  loc_146865C:     var_B8.Text = var_C0
  loc_146866B:     Exit Sub
  loc_146866C:   End If
  loc_146866F: Else
  loc_146868C:   var_B8 = Me.Fields.Item("DocID")
  loc_1468694:   var_114 = var_B8.Value
  loc_146869D:   var_C0 = CStr(var_114)
  loc_14686A3:   global_72 = var_C0
  loc_14686B4: End If
  loc_14686C2: unk_4771C1.BeginTrans var_168
  loc_14686E5: Set var_B4 = var_B8(CInt(3))
  loc_14686EB: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C0, "Delete From KClStk Where DocID='", var_114)
  loc_14686F3: -1 = var_B8.Text
  loc_146870C: unk_4771C1.Execute var_BC & var_C0 & "'", &HFF, 
  loc_146872F: Set var_B4 = 1(var_98)
  loc_1468735: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_146874B: For var_16C =  To CInt((CLng() - 1)):  = var_16C 'Integer
  loc_1468766:   Set var_B4 = CVar(CLng(var_98))(CVar(CLng(1)))
  loc_146876C:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_146877D:   var_134 = Trim(CVar(CStr()))
  loc_14687A4:   Set var_B8 = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_14687AA:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41((var_134 <> vbNullString))
  loc_14687B5:   var_C0 = CStr()
  loc_14687E3:   If CBool( And (CDbl(Val(var_C0)) <> CDbl(0))) Then
  loc_14687F4:     Set var_B4 = var_B8(CInt(3))
  loc_14687FA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C0)
  loc_1468802:      = var_B8.Text
  loc_146881C:     Set var_BC = CVar(CLng(var_98))(CVar(CLng(0)))
  loc_1468822:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1468835:     var_540 = Val(CStr())
  loc_1468846:     Set var_160 = var_164(CInt(0))
  loc_146884C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1EC)
  loc_1468866:      = (var_1FC).Caption
  loc_1468879:     Set var_210 = var_214(CInt(1))
  loc_146887F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_218)
  loc_1468887:      = var_214.Text
  loc_1468894:     var_548 = Val(var_218)
  loc_14688A2:     Set var_228 = var_22C(CInt(2))
  loc_14688A8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_548)
  loc_14688B0:     var_124 = CVar(var_22C) 'Address
  loc_14688B7:     Proc_6_7_F26918(var_134)
  loc_14688CA:     Set var_230 = var_234(CInt(4))
  loc_14688D0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_238)
  loc_14688D8:     var_124 = var_234.Tag
  loc_14688F2:     Set var_26C = CVar(CLng(var_98))(CVar(CLng(4)))
  loc_14688F8:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1468919:     Set var_300 = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_146891F:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1468932:     var_550 = Val(CStr())
  loc_146894A:     Set var_398 = CVar(CLng(var_98))(CVar(CLng(2)))
  loc_1468950:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41(var_550)
  loc_146895F:     Proc_6_104_ED68A8(var_438)
  loc_1468968:     Set var_46C = Me.TopCtrl1
  loc_146896E:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_14689B9:     var_158 = "Insert Into KClStk (DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,DepartCode,Item,Qty,Unit,U_Name,U_EntDt,U_AE) Values ('" & var_C0
  loc_14689C0:     var_1E0 = var_158 & "',"
  loc_1468A10:     var_154 = CVar(var_1E0 & CStr(var_164.Tag) & ",'" & var_1EC & "','" & var_1FC & "','" & MemVar_1F95070 & "'," & CStr(var_548) & ",") 'String
  loc_1468A1F:     var_1DC = var_154 & var_134 & ",'" 
  loc_1468A29:     var_258 = var_1DC & CVar(var_238) 
  loc_1468A78:     var_408 = var_258 & "','" & CVar(CStr(var_27C)) & "'," & CVar(var_550) & ",'" & CVar(CStr(var_3A8)) & "','" & CVar(MemVar_1F950C8) 
  loc_1468AAF:     unk_4771C1.Execute CStr(var_408 & "'," & var_438 & ",'" & IIf((CStr(var_47C) = "Add"), "A", "E") & "')"), var_534, -1
  loc_1468B49:   End If
  loc_1468B4C: Next var_16C 'Integer
  loc_1468B55: Set var_B4 = Me.TopCtrl1
  loc_1468B5B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1468B74: If (CStr() = "Add") Then
  loc_1468B8B:   var_C0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1468BB1:   Set var_B4 = var_B8(CInt(0))
  loc_1468BB7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1E0, var_C0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='", var_1DC)
  loc_1468BBF:   -1 = var_B8.Tag
  loc_1468BCF:   var_134 = CVar(var_164 & var_1E0 & "' And VP.Date_From<=") 'String
  loc_1468BE0:   Set var_BC = var_160(CInt(2))
  loc_1468BE6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1EC)
  loc_1468BEE:   var_134 = var_160.Text
  loc_1468BFC:   Proc_6_7_F26918(var_124)
  loc_1468C1B:   unk_4771C1.Execute CStr(CVar(var_1EC) & var_124 & " Order By VP.Date_From DESC"), , 
  loc_1468C26:   Set var_88 = var_164
  loc_1468C6A:   If (var_88.RecordCount > 0) Then
  loc_1468C7B:     Set var_B4 = var_B8(CInt(1))
  loc_1468C81:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C0)
  loc_1468C89:      = var_B8.Text
  loc_1468C96:     var_540 = Val(var_C0)
  loc_1468C9F:     var_D4 = "V_Type"
  loc_1468CE6:     Proc_6_7_F26918(var_1DC, CVar(var_88.Fields.Item("Date_From")))
  loc_1468D19:     var_1E8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_540) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1468D41:     var_1F0 = CStr(CVar(var_1E8 & MemVar_1F95078 & "') and V_Type='") & var_88.Fields.Item(var_D4).Value & "' and Date_From=" & var_1DC)
  loc_1468D4B:     unk_4771C1.Execute var_1F0, var_258, -1
  loc_1468D85:   End If
  loc_1468D85: End If
  loc_1468D8B: unk_4771C1.CommitTrans
  loc_1468DA3: Set var_B4 = var_B8(CInt(3))
  loc_1468DA9: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C0, 0)
  loc_1468DB1: var_210 = var_B8.Text
  loc_1468DC5: var_8E = 0
  loc_1468DD3: Me.Requery -1
  loc_1468DFD: Me.Find "SearchCode ='" & "SearchCode ='" & var_C0 & "'", 0, 1
  loc_1468E0D: Set var_B4 = Me.TopCtrl1
  loc_1468E13: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_D4)
  loc_1468E2C: If (CStr(var_8E) = "Add") Then
  loc_1468E2F:   Call TopCtrl1_UnknownEvent_A()
  loc_1468E34:   Exit Sub
  loc_1468E35: End If
  loc_1468E58: Call Proc_130_47_EC9664(Proc_5_1_100EC1C("INI", Me), global_64)
  loc_1468E63: Call Proc_130_44_135C50C(var_540)
  loc_1468E6D: global_100 = 0
  loc_1468E75: Set var_88 = Nothing
  loc_1468E78: Exit Sub
  loc_1468E79: ' Referenced from: 14683C0
  loc_1468E7F: If (var_8E = &HFF) Then
  loc_1468E88:   unk_4771C1.RollbackTrans
  loc_1468E8D: End If
  loc_1468E8D: Proc_6_60_E63754(global_100)
  loc_1468E92: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1132000
  'Data Table: 4771AC
  Dim var_86 As Integer
  Dim var_98 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  Dim var_104 As Variant
  Dim var_C0 As TextBox
  Dim var_108 As TextBox
  loc_1131C94: Call Proc_130_48_E87C00()
  loc_1131C9C: var_86 = Index
  loc_1131CA5: If (var_86 = 0) Then
  loc_1131CB8:   Set var_AC = var_86(CVar(CLng(global_68)))
  loc_1131CBE:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_26()
  loc_1131CCA:   Set var_AC = ()
  loc_1131CD0:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1131CE2:   Set var_C0 = (CVar(CLng()))
  loc_1131CE8:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_1131CFA:   Set var_F4 = (CVar(CLng()))
  loc_1131D00:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1131D18:   Set var_108 = var_10C(Index)
  loc_1131D1E:   Call 0.Method_TxtGrid_GotFocus0 (CStr())
  loc_1131D26:   var_10C.Tag = 
  loc_1131D48:   Set var_AC = ()
  loc_1131D4E:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_1131D57:   var_114 = CLng()
  loc_1131D67:   If (var_114 = CLng(1)) Then
  loc_1131D6E:     Set var_AC = (var_114)
  loc_1131D74:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1131D8E:     Set var_C0 = CVar(CLng())(CVar(CLng(4)))
  loc_1131D94:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1131DA5:     global_116 = CStr()
  loc_1131DC3:     var_118 = Me.RecordCount
  loc_1131DFB:     If ((var_118 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1131DFE:       Exit Sub
  loc_1131DFF:     End If
  loc_1131E03:     Set var_AC = ()
  loc_1131E09:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1131E23:     Set var_C0 = CVar(CLng())(CVar(CLng(1)))
  loc_1131E29:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1131E4D:     If (CStr() <> vbNullString) Then
  loc_1131E56:       Me.MoveFirst
  loc_1131E5F:       Set var_AC = ()
  loc_1131E65:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1131E7F:       Set var_C0 = CVar(CLng())(CVar(CLng(4)))
  loc_1131E85:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1131E90:       var_104 = CVar(CStr()) 'String
  loc_1131E96:       Proc_6_17_EAAE40(var_12C)
  loc_1131EBF:       Me.Find CStr("Code =" & var_12C), 0, 1
  loc_1131EEF:       If (Me.EOF = &HFF) Then
  loc_1131EF8:         Me.MoveFirst
  loc_1131EFD:       End If
  loc_1131EFD:     End If
  loc_1131F0A:     Set var_AC = var_C0(Index)
  loc_1131F10:     Call 0.Method_TxtGrid_GotFocus0 (var_118, var_15C)
  loc_1131F18:     var_104 = var_C0.Left
  loc_1131F29:     Set var_F4 = (CVar(var_118))
  loc_1131F2F:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010003()
  loc_1131F4A:     Set var_F4 = var_108(Index)
  loc_1131F50:     Call 0.Method_TxtGrid_GotFocus0 (var_160)
  loc_1131F58:      = var_108.Height
  loc_1131F6A:     Set var_AC = var_C0(Index)
  loc_1131F70:     Call 0.Method_TxtGrid_GotFocus0 (var_118)
  loc_1131F78:      = var_C0.Top
  loc_1131F84:     var_98 = CVar((var_118 + var_160)) 'Single
  loc_1131F8D:     Set var_10C = (CVar(var_118))
  loc_1131F93:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004()
  loc_1131FA8:   Else
  loc_1131FAF:     If (var_114 = CLng(3)) Then
  loc_1131FC1:       Set var_AC = var_C0(Index)
  loc_1131FC7:       Call 0.Method_TxtGrid_GotFocus0 (0)
  loc_1131FCF:       var_C0.MaxLength = 
  loc_1131FE4:       If (global_98 = 0) Then
  loc_1131FEF:         var_110 = "{Home}+{End}"
  loc_1131FF5:         Proc_303_0_FBACC8(CStr("Code =" & var_12C))
  loc_1131FFD:       End If
  loc_1131FFD:     End If
  loc_1131FFD:   End If
  loc_1131FFD: End If
  loc_1131FFD: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1059130
  'Data Table: 4771AC
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_B0 As Long
  loc_1058ECC: If (KeyCode = 0) Then
  loc_1058ED9:   If (CLng(Shift) = &H1B) Then
  loc_1058EE9:     Set var_8C = var_90(KeyCode)
  loc_1058EEF:     Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_1058EF7:     var_86 = var_90.Tag
  loc_1058F09:     Set var_98 = var_9C(KeyCode)
  loc_1058F0F:     Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_1058F17:     var_9C.Text = 
  loc_1058F33:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1058F38:     Call Proc_130_48_E87C00(arg_14)
  loc_1058F41:     Set var_8C = ()
  loc_1058F47:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001()
  loc_1058F5E:     Set var_8C = var_90(KeyCode)
  loc_1058F64:     Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_1058F6C:     var_90.Visible = 
  loc_1058F78:     Exit Sub
  loc_1058F79:   End If
  loc_1058F7D:   Set var_8C = ()
  loc_1058F83:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_1058F8C:   var_B0 = CLng()
  loc_1058F9C:   If (var_B0 = CLng(1)) Then
  loc_1058FC2:     Set var_98 = Nothing
  loc_1058FF0:     Proc_6_69_134A630((var_B0), (), KeyCode, global_56, Shift)
  loc_105900E:     If (CLng(Shift) = &HD) Then
  loc_1059017:       Call Proc_130_43_1225FB4(KeyCode, var_B2, &HFF, 1)
  loc_1059022:       If (var_B2 = &HFF) Then
  loc_1059068:         Proc_6_62_1254E68(Nothing(Nothing(var_98)), (0), KeyCode, Shift, global_98)
  loc_1059078:       End If
  loc_1059078:     End If
  loc_105907B:   Else
  loc_1059082:     If (var_B0 = CLng(3)) Then
  loc_10590C5:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_98 = &HFF))) Then
  loc_10590CE:         Call Proc_130_43_1225FB4(KeyCode, var_B2, 3)
  loc_10590D9:         If (var_B2 = &HFF) Then
  loc_105911F:           Proc_6_62_1254E68(3(2), (0), KeyCode, Shift, global_98)
  loc_105912F:         End If
  loc_105912F:       End If
  loc_105912F:     End If
  loc_105912F:   End If
  loc_105912F: End If
  loc_105912F: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F0383C
  'Data Table: 4771AC
  Dim var_86 As Integer
  Dim var_A0 As Long
  loc_F03763: Proc_6_58_E06050(arg_10)
  loc_F0376B: var_86 = KeyAscii
  loc_F03774: If (var_86 = 0) Then
  loc_F0377B:   Set var_8C = (var_86)
  loc_F03781:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_F0378A:   var_A0 = CLng()
  loc_F0379A:   If (var_A0 = CLng(1)) Then
  loc_F037A1:     Set var_8C = (var_A0)
  loc_F037A7:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_F037B9:     If (CBool() = &HFF) Then
  loc_F037C0:       Set var_AC = ()
  loc_F037CB:       var_A4 = "Name"
  loc_F037E6:       Proc_6_89_1470B00(var_AC, KeyAscii, global_56)
  loc_F037F5:     End If
  loc_F037F8:   Else
  loc_F037FF:     If (var_A0 = CLng(3)) Then
  loc_F0380C:       Set var_8C = var_AC(KeyAscii)
  loc_F03812:       Call 0.Method_TxtGrid_KeyPress0 (arg_10, var_A4)
  loc_F0382D:       Proc_6_42_129B55C(var_AC, arg_10, 8)
  loc_F03839:     End If
  loc_F03839:   End If
  loc_F03839: End If
  loc_F03839: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDBE9C
  'Data Table: 4771AC
  Dim var_86 As Integer
  Dim var_A0 As Long
  loc_EDBDE8: On Error Goto loc_EDBE93
  loc_EDBDEE: var_86 = KeyCode
  loc_EDBDF7: If (var_86 = 0) Then
  loc_EDBDFE:   Set var_8C = (var_86)
  loc_EDBE04:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_EDBE0D:   var_A0 = CLng()
  loc_EDBE1D:   If (var_A0 = CLng(1)) Then
  loc_EDBE2A:     Set var_8C = var_A0((Shift <> &HD))
  loc_EDBE30:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_EDBE43:     If ( And (CBool() = 0)) Then
  loc_EDBE54:       Call TxtGrid_KeyDown(KeyCode, global_96)
  loc_EDBE68:       var_A8 = "Name"
  loc_EDBE83:       Proc_6_89_1470B00((0), KeyCode, global_56)
  loc_EDBE92:     End If
  loc_EDBE92:   End If
  loc_EDBE92: End If
  loc_EDBE92: Exit Sub
  loc_EDBE93: ' Referenced from: EDBDE8
  loc_EDBE93: Proc_6_60_E63754(Shift, var_A8)
  loc_EDBE98: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20D2C
  'Data Table: 4771AC
  Dim arg_10 As Integer
  loc_E20D14: If (Cancel = 0) Then
  loc_E20D1D:   Call Proc_130_43_1225FB4(Cancel, var_88)
  loc_E20D26:   arg_10 = Not(var_88)
  loc_E20D29: End If
  loc_E20D29: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FE6248
  'Data Table: 4771AC
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FE6082: Set var_88 = var_8C(Index)
  loc_FE6088: Call 0.Method_Txt_GotFocus0 ()
  loc_FE6096: Proc_6_74_E23240(var_8C)
  loc_FE60A2: Call Proc_130_48_E87C00()
  loc_FE60B5: If (Index = CInt(4)) Then
  loc_FE6106:   Set var_88 = var_8C(Index)
  loc_FE610C:   Call 0.Method_Txt_GotFocus0 (var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_FE6114:   var_92 = var_8C.Text
  loc_FE612C:   If ( Or (var_A0 = vbNullString)) Then
  loc_FE612F:     Exit Sub
  loc_FE6130:   End If
  loc_FE613D:   Set var_88 = var_8C(Index)
  loc_FE6143:   Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_FE614B:    = var_8C.Text
  loc_FE6156:   global_108 = var_A0
  loc_FE6171:   Set var_88 = var_8C(Index)
  loc_FE6177:   Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_FE617F:    = var_8C.Text
  loc_FE6187:   var_D4 = CVar(var_A0) 'String
  loc_FE61CC:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FE61D5:     Me.MoveFirst
  loc_FE61FA:     Set var_88 = var_8C(Index)
  loc_FE6200:     Call 0.Method_Txt_GotFocus0 (var_A0, "Name =", 0)
  loc_FE6208:     1 = var_8C.Text
  loc_FE6216:     Proc_6_17_EAAE40(var_D4, CVar(var_A0))
  loc_FE622C:     Me.Find CStr(var_F8 & var_D4), , 
  loc_FE6244:   End If
  loc_FE6244: End If
  loc_FE6244: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FB0CC4
  'Data Table: 4771AC
  Dim var_86 As Integer
  Dim arg_34FF As Double
  loc_FB0B3E: If (CLng(Shift) = &H1B) Then
  loc_FB0B41:   Call Proc_130_48_E87C00()
  loc_FB0B46:   Exit Sub
  loc_FB0B47: End If
  loc_FB0B4A: var_86 = KeyCode
  loc_FB0B55: If (var_86 = CInt(4)) Then
  loc_FB0B70:   Set var_9C = Nothing
  loc_FB0B7B:   Set var_98 = Nothing
  loc_FB0BA9:   Proc_6_69_134A630((var_86), (), KeyCode, global_60, Shift)
  loc_FB0BBD: End If
  loc_FB0BC1: Set var_8C = 1(0)
  loc_FB0BC7: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(var_98)
  loc_FB0BD9: If (CBool(var_9C) = 0) Then
  loc_FB0BF1:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FB0BFA:     Proc_6_75_E5335C(Shift, arg_14)
  loc_FB0BFF:   End If
  loc_FB0C03:   Set var_8C = Me.TopCtrl1
  loc_FB0C09:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(0)
  loc_FB0C22:   If (CStr() = "Add") Then
  loc_FB0C3A:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FB0C43:       Proc_6_76_E533C8(Shift)
  loc_FB0C48:     End If
  loc_FB0C4B:   Else
  loc_FB0C4F:     Set var_8C = Me.TopCtrl1
  loc_FB0C55:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_14)
  loc_FB0C6E:     If (CStr() = "Edit") Then
  loc_FB0C86:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FB0C8F:         Proc_6_76_E533C8(Shift)
  loc_FB0C94:       End If
  loc_FB0C94:     End If
  loc_FB0C94:   End If
  loc_FB0CA9:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FB0CB4:     Call Txt_Validate(KeyCode)
  loc_FB0CBC:     Call Proc_130_49_F0C7C4(KeyCode, 0)
  loc_FB0CC1:   End If
  loc_FB0CC1: End If
  loc_FB0CC1: Exit Sub
  loc_FB0CC2: arg_34FF = arg_14
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE7F74
  'Data Table: 4771AC
  Dim var_86 As Integer
  loc_EE7EB4: On Error Goto loc_EE7F6E
  loc_EE7EBA: Proc_6_58_E06050(arg_10)
  loc_EE7EC2: var_86 = KeyAscii
  loc_EE7ECD: If (var_86 = CInt(1)) Then
  loc_EE7EDA:   Set var_8C = var_90(KeyAscii)
  loc_EE7EE0:   Call 0.Method_Txt_KeyPress0 (var_86)
  loc_EE7EFB:   Proc_6_42_129B55C(var_90, arg_10)
  loc_EE7F0A: Else
  loc_EE7F12:   If (var_86 = CInt(4)) Then
  loc_EE7F19:     Set var_8C = 0(8)
  loc_EE7F1F:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_EE7F31:     If (CBool() = &HFF) Then
  loc_EE7F43:       var_AC = "Name"
  loc_EE7F5E:       Proc_6_89_1470B00((), KeyAscii, global_60)
  loc_EE7F6D:     End If
  loc_EE7F6D:   End If
  loc_EE7F6D: End If
  loc_EE7F6D: Exit Sub
  loc_EE7F6E: ' Referenced from: EE7EB4
  loc_EE7F6E: Proc_6_60_E63754(arg_10, var_AC)
  loc_EE7F73: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E51084
  'Data Table: 4771AC
  loc_E51062: Set var_88 = var_8C(Index)
  loc_E51068: Call 0.Method_Txt_LostFocus0 ()
  loc_E51076: Proc_6_73_E23294(var_8C)
  loc_E51082: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12B0390
  'Data Table: 4771AC
  Dim var_94 As Integer
  Dim var_AC As String
  Dim var_B0 As Variant
  Dim var_98 As Variant
  Dim var_B4 As String
  Dim unk_4771C1 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim arg_10 As Integer
  Dim var_A8 As Variant
  Dim var_114 As Long
  Dim Me As Recordset15
  Dim arg_340C As String
  loc_12AFD74: On Error Goto loc_12B0387
  loc_12AFD7A: var_94 = Cancel
  loc_12AFD85: If (var_94 = CInt(1)) Then
  loc_12AFD8C:   Set var_98 = Me.TopCtrl1
  loc_12AFD92:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_94)
  loc_12AFD9A:   var_AC = CStr()
  loc_12AFDAB:   If (var_AC = "Add") Then
  loc_12AFDB4:     Call Proc_130_50_114F1CC(MemVar_1F95044)
  loc_12AFDD7:     Set var_98 = var_B0(CInt(3))
  loc_12AFDDD:     Call 0.Method_Txt_Validate0 (var_AC)
  loc_12AFDE5:     var_B0.Text = var_AC
  loc_12AFE01:     (global_80).Caption = 
  loc_12AFE09:   End If
  loc_12AFE0D:   Set var_98 = Me.TopCtrl1
  loc_12AFE13:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_12AFE1B:   var_AC = CStr()
  loc_12AFE2C:   If (var_AC = "Add") Then
  loc_12AFE5C:     Set var_98 = var_B0(CInt(3))
  loc_12AFE62:     Call 0.Method_Txt_Validate0 (var_AC, "Select Count(*) From Purch1 Where DocID='", var_A8, -1, var_CC)
  loc_12AFE73:     var_B4 = 0 & var_AC
  loc_12AFE83:     unk_4771C1.Execute var_B4 & "'", var_E4, var_F4
  loc_12AFE8B:      = var_CC.Fields
  loc_12AFE93:      = var_B0.Text.Item()
  loc_12AFE9B:      = var_E4.Value
  loc_12AFEC8:     If (var_F4 > 0) Then
  loc_12AFED1:       Call 0.Method_arg_50 (var_AC)
  loc_12AFEF2:       MsgBox("Duplicate Invoice No.", &H40, CVar(var_AC), var_114, var_124)
  loc_12AFF08:       Call Proc_130_50_114F1CC(MemVar_1F95044)
  loc_12AFF18:       If (var_AC = vbNullString) Then
  loc_12AFF25:         Set var_98 = var_B0(Cancel)
  loc_12AFF2B:         Call 0.Method_Txt_Validate0 (var_AC)
  loc_12AFF33:         var_B0.SetFocus
  loc_12AFF41:         arg_10 = &HFF
  loc_12AFF44:         Exit Sub
  loc_12AFF45:       End If
  loc_12AFF4B:       Call Proc_130_50_114F1CC(MemVar_1F95044, var_AC)
  loc_12AFF5E:       Set var_98 = var_B0(CInt(3))
  loc_12AFF64:       Call 0.Method_Txt_Validate0 (var_AC)
  loc_12AFF6C:       var_B0.Text = arg_10
  loc_12AFF7D:       arg_10 = &HFF
  loc_12AFF80:       Exit Sub
  loc_12AFF81:     End If
  loc_12AFF81:   End If
  loc_12AFF84: Else
  loc_12AFF8C:   If (var_94 = CInt(2)) Then
  loc_12AFF9D:     Set var_98 = var_B0(CInt(2))
  loc_12AFFA3:     Call 0.Method_Txt_Validate0 (var_AC)
  loc_12AFFAB:     arg_10 = var_B0.Text
  loc_12AFFC1:     var_114 = Len(Trim(CVar(var_AC)))
  loc_12AFFDB:     If (var_114 = 0) Then
  loc_12AFFF1:       Set var_98 = var_B0(CInt(2))
  loc_12AFFF7:       Call 0.Method_Txt_Validate0 (CStr(MemVar_1F950EC))
  loc_12AFFFF:       var_B0.Text = 
  loc_12B0011:     Else
  loc_12B001B:       Set var_98 = var_B0(Cancel)
  loc_12B0021:       Call 0.Method_Txt_Validate0 ()
  loc_12B0034:       var_AC = Proc_6_33_15125B8(var_B0)
  loc_12B0041:       Set var_D0 = var_E4(Cancel)
  loc_12B0047:       Call 0.Method_Txt_Validate0 (var_AC)
  loc_12B004F:       var_E4.Text = 
  loc_12B0062:     End If
  loc_12B006F:     Set var_98 = var_B0(Cancel)
  loc_12B0075:     Call 0.Method_Txt_Validate0 (var_AC)
  loc_12B007D:      = var_B0.Text
  loc_12B0098:     Set var_CC = var_D0(Cancel)
  loc_12B009E:     Call 0.Method_Txt_Validate0 (var_B4)
  loc_12B00A6:     (CDate(var_AC) >= MemVar_1F950F4) = var_D0.Text
  loc_12B00C8:     If Not(( And (CDate(var_B4) <= MemVar_1F950FC))) Then
  loc_12B00EC:       MsgBox("Invoice Date Not Between Current Fin. Year", 0, "Date Validate", var_114, var_124)
  loc_12B0106:       Set var_98 = var_B0(Cancel)
  loc_12B010C:       Call 0.Method_Txt_Validate0 ()
  loc_12B0114:       var_B0.SetFocus
  loc_12B0122:       arg_10 = &HFF
  loc_12B0125:       Exit Sub
  loc_12B0126:     End If
  loc_12B012A:     Set var_98 = Me.TopCtrl1
  loc_12B0130:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_10)
  loc_12B0138:     var_AC = CStr()
  loc_12B0149:     If (var_AC = "Add") Then
  loc_12B0152:       Call Proc_130_50_114F1CC(MemVar_1F95044)
  loc_12B0165:       Set var_98 = var_B0(CInt(3))
  loc_12B016B:       Call 0.Method_Txt_Validate0 (var_AC)
  loc_12B0173:       var_B0.Text = var_AC
  loc_12B0182:     End If
  loc_12B0185:   Else
  loc_12B018D:     If (var_94 = CInt(4)) Then
  loc_12B019B:       Set var_98 = var_B0(CInt(4))
  loc_12B01A1:       Call 0.Method_Txt_Validate0 ()
  loc_12B01A9:       var_AC = "Department Name"
  loc_12B01CA:       If (Proc_6_27_EA61EC(var_B0) = 0) Then
  loc_12B01D8:         Set var_98 = var_B0(CInt(4))
  loc_12B01DE:         Call 0.Method_Txt_Validate0 (var_AC)
  loc_12B01E6:         var_B0.SetFocus
  loc_12B01F4:         arg_10 = &HFF
  loc_12B01F7:         Exit Sub
  loc_12B01F8:       End If
  loc_12B0246:       Set var_98 = var_B0(Cancel)
  loc_12B024C:       Call 0.Method_Txt_Validate0 (var_AC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_12B0254:       arg_10 = var_B0.Text
  loc_12B026C:       If ( Or (var_AC = vbNullString)) Then
  loc_12B027C:         Set var_98 = var_B0(Cancel)
  loc_12B0282:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_12B028A:         var_B0.Text = 
  loc_12B02A3:         Set var_98 = var_B0(Cancel)
  loc_12B02A9:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_12B02B1:         var_B0.Tag = 
  loc_12B02C0:       Else
  loc_12B02FB:         Set var_CC = var_D0(Cancel)
  loc_12B0301:         Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_12B0309:         var_D0.Text = 
  loc_12B035A:         Set var_CC = var_D0(Cancel)
  loc_12B0360:         Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Code").Value))
  loc_12B0368:         var_D0.Tag = 
  loc_12B037E:       End If
  loc_12B037E:     End If
  loc_12B037E:   End If
  loc_12B037E: End If
  loc_12B0383: Set var_88 = Nothing
  loc_12B0386: Exit Sub
  loc_12B0387: ' Referenced from: 12AFD74
  loc_12B0387: Proc_6_60_E63754()
  loc_12B038C: Exit Sub
  loc_12B038E: arg_340C = 
End Sub

Private Sub DGDepart_UnknownEvent_9 'F3F9B4
  'Data Table: 4771AC
  Dim Me As Recordset15
  Dim var_A8 As Fields15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3F8A5: Set var_A8 = (False)
  loc_F3F8AB: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_F3F8CA: If (Me.RecordCount > 0) Then
  loc_F3F909:   Set var_B4 = var_B8(CInt(4))
  loc_F3F90F:   Call 0.Method_DGDepart_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_F3F917:   var_B8.Text = 
  loc_F3F94A:   var_B0 = Me.Fields.Item("Code")
  loc_F3F969:   Set var_B4 = var_B8(CInt(4))
  loc_F3F96F:   Call 0.Method_DGDepart_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F3F977:   var_B8.Tag = 
  loc_F3F98D: End If
  loc_F3F998: Set var_A8 = var_B0(CInt(4))
  loc_F3F99E: Call 0.Method_DGDepart_UnknownEvent_90 ()
  loc_F3F9A6: var_B0.SetFocus
  loc_F3F9B2: Exit Sub
End Sub

Private Sub Form_Load() '102D5DC
  'Data Table: 4771AC
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B8 As TextBox
  Dim Me As Recordset15
  loc_102D3A4: On Error Goto loc_102D5D6
  loc_102D3B5: Set var_88 = var_8C(CInt(4))
  loc_102D3BB: Call 0.Method_Form_Load0 (var_90)
  loc_102D3C3:  = var_8C.Left
  loc_102D3D4: Set var_B4 = (CVar(var_90))
  loc_102D3DA: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010003()
  loc_102D3F6: Set var_B4 = var_B8(CInt(4))
  loc_102D3FC: Call 0.Method_Form_Load0 (var_BC)
  loc_102D404:  = var_B8.Height
  loc_102D417: Set var_88 = var_8C(CInt(4))
  loc_102D41D: Call 0.Method_Form_Load0 (var_90)
  loc_102D425:  = var_8C.Top
  loc_102D431: var_A0 = CVar((var_90 + var_BC)) 'Single
  loc_102D43A: Set var_C0 = (CVar(var_90))
  loc_102D440: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004()
  loc_102D46E: Me.Recordset15.CursorLocation = 3
  loc_102D496: Me.Open "Select Code,I.Name as Name ,I.Unit,I.PurchRate as Rate From ItemMast I Where ItemType='Store' Order by Name", CVar(MemVar_1F95044), 3
  loc_102D4A4: CVarUnk
  loc_102D4A9: VerifyVarObj
  loc_102D4AF: Set var_88 = 1(New)
  loc_102D4B5: LateIdStAd
  loc_102D4DF: Me.Recordset15.CursorLocation = 3
  loc_102D507: Me.Open "Select G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where D.RestType='Kitchen' Order by G.Name", CVar(MemVar_1F95044), 2
  loc_102D515: CVarUnk
  loc_102D51A: VerifyVarObj
  loc_102D520: Set var_88 = 3(New)
  loc_102D526: LateIdStAd
  loc_102D550: Me.Recordset15.CursorLocation = 3
  loc_102D578: Me.Open "Select Distinct K.Docid as SearchCode,K.DocID From KClStk K Order by Docid", CVar(MemVar_1F95044), 3
  loc_102D5A0: Call Proc_130_47_EC9664(Proc_5_1_100EC1C("INI", Me, New, 1, -1), Me, -1)
  loc_102D5BD: Set var_88 = Me
  loc_102D5C3: Proc_6_23_DFC5B8(var_88, 5370, 6735)
  loc_102D5CB: Call Proc_130_41_102CBD8(var_88)
  loc_102D5D0: Call Proc_130_44_135C50C(-1)
  loc_102D5D5: Exit Sub
  loc_102D5D6: ' Referenced from: 102D3A4
  loc_102D5D6: Proc_6_60_E63754()
  loc_102D5DB: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E592C8
  'Data Table: 4771AC
  loc_E59293: Set global_56 = Nothing
  loc_E592A5: Set global_60 = Nothing
  loc_E592B7: Set global_64 = Nothing
  loc_E592C3: MasterFormExit = 0
  loc_E592C6: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25D0C
  'Data Table: 4771AC
  loc_E25CF1: If (MasterFormExit = &HFF) Then
  loc_E25D01:   Me.Global.Unload Me
  loc_E25D09: End If
  loc_E25D09: Exit Sub
  loc_E25D0A: Get , ,  'get  bytes
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E380A8
  'Data Table: 4771AC
  loc_E3807C: On Error Goto loc_E380A0
  loc_E38097: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E3809F: Exit Sub
  loc_E380A0: ' Referenced from: E3807C
  loc_E380A0: Proc_6_60_E63754(Shift)
  loc_E380A5: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10C534C
  'Data Table: 4771AC
  Dim Me As Recordset15
  Dim var_A8 As Fields15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_10C5075: Set var_A8 = (False)
  loc_10C507B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_10C509A: If (Me.RecordCount > 0) Then
  loc_10C50D7:   Set var_B4 = var_B8(0)
  loc_10C50DD:   Call 0.Method_DGItem_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_10C50E5:   var_B8.Text = 
  loc_10C50FF:   Set var_B4 = ()
  loc_10C5105:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_10C5157:   LateIdCallSt
  loc_10C5177:   Set var_B4 = CVar(CLng())(CVar(CLng(1))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_10C517D:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_10C51CF:   LateIdCallSt
  loc_10C51EF:   Set var_B4 = CVar(CLng())(CVar(CLng(4))(CVar(CStr(Me.Fields.Item("Code").Value))))
  loc_10C51F5:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_10C5247:   LateIdCallSt
  loc_10C527D:   var_B0 = Me.Fields.Item("qty")
  loc_10C5286:   Set var_B4 = CVar(CLng())(CVar(CLng(2))(CVar(CStr(Me.Fields.Item("Unit").Value))))
  loc_10C528C:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_10C5295:   var_DC = CVar(CLng()) 'Long
  loc_10C529D:   var_FC = CVar(CLng(3)) 'Long
  loc_10C52D2:   Set var_B8 = 1(CVar(CStr(Format(CVar(var_B0), "0.00"))))
  loc_10C52D8:   LateIdCallSt
  loc_10C52F6: End If
  loc_10C5302: Set var_A8 = var_B0(0)
  loc_10C5308: Call 0.Method_DGItem_UnknownEvent_90 (var_15E, var_B8, 1)
  loc_10C5310: var_FC = var_B0.Visible
  loc_10C5322: If (var_15E = &HFF) Then
  loc_10C532E:   Set var_A8 = var_B0(0)
  loc_10C5334:   Call 0.Method_DGItem_UnknownEvent_90 (var_DC)
  loc_10C533C:   var_B0.SetFocus
  loc_10C5348: End If
  loc_10C5348: Exit Sub
End Sub

Public Function MasterFormExitGet() '477C60
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '477C6F
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E96DA8
  'Data Table: 4771AC
  Dim Me As Recordset15
  loc_E96D36: On Error Goto loc_E96D9F
  loc_E96D3F: Me.MoveFirst
  loc_E96D69: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96D91: Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_E96D99: Call Proc_130_44_135C50C(0)
  loc_E96D9E: Exit Sub
  loc_E96D9F: ' Referenced from: E96D36
  loc_E96D9F: Proc_6_60_E63754(var_A0)
  loc_E96DA4: Exit Sub
End Sub

Public Sub FindMove(mDocId) 'E72D90
  'Data Table: 4771AC
  Dim Me As Recordset15
  loc_E72D3A: Me.MoveFirst
  loc_E72D64: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E72D84: If (Me.EOF = 0) Then
  loc_E72D87:   Call Proc_130_44_135C50C(var_9C)
  loc_E72D8C: End If
  loc_E72D8C: Exit Sub
End Sub

Public Sub Proc_130_41_102CBD8
  'Data Table: 4771AC
  Dim var_94 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_102C9A0: Set var_A8 = (CVar(CDbl(&H4B)))
  loc_102C9A6: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010003()
  loc_102C9BB: Set var_A8 = (CVar(CDbl(1100)))
  loc_102C9C1: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004()
  loc_102C9D5: Set var_A8 = (CVar(CDbl(&HF)))
  loc_102C9DB: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010003()
  loc_102C9F0: Set var_A8 = (CVar(CDbl(5145)))
  loc_102C9F6: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004()
  loc_102CA0B: Set var_A8 = (CVar(CDbl(6500)))
  loc_102CA11: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010005()
  loc_102CA26: Set var_A8 = (CVar(CDbl(3800)))
  loc_102CA2C: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010006()
  loc_102CA38: Set var_AC = ()
  loc_102CA3E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_FFFFFE0B()
  loc_102CA4F: global_68 = CStr(CLng())
  loc_102CA65: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_5(5)
  loc_102CA6D: var_94 = CVar(CLng(0)) 'Long
  loc_102CA72: var_D0 = &HFA
  loc_102CA7E: LateIdCallSt
  loc_102CA86: var_94 = 0
  loc_102CA92: var_D0 = CVar(CLng(1)) 'Long
  loc_102CA97: var_F0 = "Item Name"
  loc_102CAA0: LateIdCallSt
  loc_102CAAB: var_94 = CVar(CLng(1)) 'Long
  loc_102CAB6: var_D0 = CVar(CInt(1)) 'Integer
  loc_102CABD: LateIdCallSt
  loc_102CAC8: var_94 = CVar(CLng(1)) 'Long
  loc_102CACD: var_D0 = &HED8
  loc_102CAD9: LateIdCallSt
  loc_102CAE1: var_94 = 0
  loc_102CAED: var_D0 = CVar(CLng(2)) 'Long
  loc_102CAF2: var_F0 = "Unit"
  loc_102CAFB: LateIdCallSt
  loc_102CB06: var_94 = CVar(CLng(2)) 'Long
  loc_102CB11: var_D0 = CVar(CInt(1)) 'Integer
  loc_102CB18: LateIdCallSt
  loc_102CB23: var_94 = CVar(CLng(2)) 'Long
  loc_102CB28: var_D0 = &H320
  loc_102CB34: LateIdCallSt
  loc_102CB3C: var_94 = 0
  loc_102CB48: var_D0 = CVar(CLng(3)) 'Long
  loc_102CB4D: var_F0 = "Quantity"
  loc_102CB56: LateIdCallSt
  loc_102CB61: var_94 = CVar(CLng(3)) 'Long
  loc_102CB6C: var_D0 = CVar(CInt(7)) 'Integer
  loc_102CB73: LateIdCallSt
  loc_102CB7E: var_94 = CVar(CLng(3)) 'Long
  loc_102CB89: var_D0 = CVar(CInt(7)) 'Integer
  loc_102CB90: LateIdCallSt
  loc_102CB9B: var_94 = CVar(CLng(3)) 'Long
  loc_102CBA0: var_D0 = &H5DC
  loc_102CBAC: LateIdCallSt
  loc_102CBB7: var_94 = CVar(CLng(4)) 'Long
  loc_102CBBC: var_D0 = 0
  loc_102CBC8: LateIdCallSt
  loc_102CBD2: Set var_AC = Nothing 
  loc_102CBD6: Exit Sub
  loc_102CBD7: Exit Sub
End Sub

Public Sub Proc_130_42_E46738
  'Data Table: 4771AC
  loc_E46714: Set var_88 = Me.TopCtrl1
  loc_E4671A: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E46733: If (CStr() = "Browse") Then
  loc_E46736:   Exit Sub
  loc_E46737: End If
  loc_E46737: Exit Sub
End Sub

Public Sub Proc_130_43_1225FB4(arg_C) '1225FB4
  'Data Table: 4771AC
  Dim var_94 As Integer
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_BC As String
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_98 As Fields15
  loc_1225AD7: var_94 = arg_C
  loc_1225AE0: If (var_94 = 0) Then
  loc_1225AE7:   Set var_98 = (var_94)
  loc_1225AED:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_1225B06:   If (CLng() = CLng(1)) Then
  loc_1225B57:     Set var_98 = var_B8(arg_C)
  loc_1225B5D:     Call 0.Method_Proc_130_43_1225FB40 (var_BC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1225B65:     var_AC = var_B8.Text
  loc_1225B7D:     If ( Or (var_BC = vbNullString)) Then
  loc_1225B84:       Set var_98 = ()
  loc_1225B8A:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1225BB0:       LateIdCallSt
  loc_1225BC6:       Set var_98 = CVar(CLng())(CVar(CLng(1))(vbNullString))
  loc_1225BCC:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1225BF2:       LateIdCallSt
  loc_1225C08:       Set var_98 = CVar(CLng())(CVar(CLng(4))(vbNullString))
  loc_1225C0E:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1225C17:       var_CC = CVar(CLng()) 'Long
  loc_1225C2E:       Set var_B8 = CVar(CLng(2))(vbNullString)
  loc_1225C34:       LateIdCallSt
  loc_1225C49:     Else
  loc_1225C53:       Set var_98 = var_B8(global_116)
  loc_1225C59:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A(var_CC)
  loc_1225C73:       Set var_B8 = CVar(CLng())(CVar(CLng(4)))
  loc_1225C79:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1225C93:       Set var_130 = ( <> CStr())(global_116)
  loc_1225C99:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1225CB3:       Set var_164 = CVar(CLng())(CVar(CLng(4)))
  loc_1225CB9:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1225CCD:       Set var_17C = (( = CStr()))
  loc_1225CD3:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1225CED:       Set var_1D0 = CVar(CLng())(CVar(CLng(4)))
  loc_1225CF3:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1225D2F:       If ( Or ( And (CStr() = vbNullString))) Then
  loc_1225D36:         Set var_130 = ()
  loc_1225D3C:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1225D8E:         LateIdCallSt
  loc_1225DAE:         Set var_130 = CVar(CLng())(CVar(CLng(1))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_1225DB4:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1225E06:         LateIdCallSt
  loc_1225E26:         Set var_130 = CVar(CLng())(CVar(CLng(4))(CVar(CStr(Me.Fields.Item("Code").Value))))
  loc_1225E2C:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1225E35:         var_DC = CVar(CLng()) 'Long
  loc_1225E5F:         var_B8 = Me.Fields.Item("Unit")
  loc_1225E78:         Set var_164 = CVar(CLng(2))(CVar(CStr(var_B8.Value)))
  loc_1225E7E:         LateIdCallSt
  loc_1225E9A:       End If
  loc_1225E9A:     End If
  loc_1225E9D:   Else
  loc_1225EA4:     If (var_AC = CLng(3)) Then
  loc_1225EB1:       Set var_98 = var_B8(arg_C)
  loc_1225EB7:       Call 0.Method_Proc_130_43_1225FB40 (var_164)
  loc_1225ECF:       If Not(IsNumeric(CVar(var_B8))) Then
  loc_1225ED6:         var_BC = CStr(0)
  loc_1225EE3:         Set var_98 = var_B8(arg_C)
  loc_1225EE9:         Call 0.Method_Proc_130_43_1225FB40 (var_BC)
  loc_1225EF1:         var_B8.Text = var_DC
  loc_1225F00:       End If
  loc_1225F0D:       Set var_98 = var_B8(arg_C)
  loc_1225F13:       Call 0.Method_Proc_130_43_1225FB40 (var_BC)
  loc_1225F1B:        = var_B8.Text
  loc_1225F24:       Set var_130 = ()
  loc_1225F2A:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1225F3C:       Set var_164 = (CVar(CLng()))
  loc_1225F42:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_1225F4B:       var_FC = CVar(CLng()) 'Long
  loc_1225F7F:       Set var_17C = 1(CVar(CStr(Format(CVar(var_BC), "0.000"))))
  loc_1225F85:       LateIdCallSt
  loc_1225FA9:     End If
  loc_1225FA9:   End If
  loc_1225FA9: End If
  loc_1225FAE: Proc_130_43_1225FB4 = &HFF
End Sub

Public Sub Proc_130_44_135C50C
  'Data Table: 4771AC
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Fields15
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_100 As String
  Dim unk_4771C1 As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Variant
  Dim var_124 As Variant
  Dim var_138 As Field20
  Dim var_144 As TextBox
  Dim var_BC As Variant
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_110 As Variant
  Dim var_15C As Variant
  Dim var_120 As Variant
  loc_135BCF8: On Error Goto loc_135C503
  loc_135BD12: If (Me.RecordCount > 0) Then
  loc_135BD22:   var_CC = "Select DISTINCT K.DOCID,K.VDATE, GodownMast.Name as Location,GodownMast.Code as DepartCode,K.Vno,K.Vtype,K.VPrefix From KClStk K  left join GodownMast on GodownMast.Code=K.DepartCode Where DocID='"
  loc_135BD54:   var_DC = var_CC & Me.Fields.Item("DocID").Value 
  loc_135BD6B:   unk_4771C1.Execute CStr(var_DC & "'"), var_120, -1
  loc_135BD93:   Set var_128 = var_124 
  loc_135BDD6:   Call 0.Method_Proc_130_44_135C50C0 (CStr(var_128.Fields.Item("DocID").Value))
  loc_135BDDE:   var_12C.Text = var_12C(CInt(3))
  loc_135BE0E:   var_AC = var_128.Fields.Item("vType")
  loc_135BE16:   var_BC = var_AC.Value
  loc_135BE1F:   var_100 = CStr(var_BC)
  loc_135BE2D:   Set var_124 = var_12C(CInt(0))
  loc_135BE33:   Call 0.Method_Proc_130_44_135C50C0 (var_100)
  loc_135BE3B:   var_12C.Tag = 
  loc_135BE7E:   Set var_98 = var_AC(CInt(0))
  loc_135BE84:   Call 0.Method_Proc_130_44_135C50C0 (var_100, "Select NCAT From Voucher_Type Where V_Type='", var_BC, -1, var_124)
  loc_135BEA5:   unk_4771C1.Execute 0 & var_100 & "'", var_138, var_DC
  loc_135BEAD:    = var_124.Fields
  loc_135BEB5:    = var_AC.Tag.Item()
  loc_135BEBD:    = var_138.Value
  loc_135BECC:   global_88 = CStr(var_DC)
  loc_135BF1C:   Set var_98 = var_AC(CInt(0))
  loc_135BF22:   Call 0.Method_Proc_130_44_135C50C0 (var_100, "Select Description From Voucher_type Where V_Type='", var_BC, -1, var_124)
  loc_135BF2A:   var_12C = var_AC.Tag
  loc_135BF43:   unk_4771C1.Execute 0 & var_100 & "'", var_138, var_DC
  loc_135BF4B:    = var_124.Fields
  loc_135BF53:    = var_12C.Item()
  loc_135BF5B:    = var_138.Value
  loc_135BF72:   Set var_140 = var_144(CInt(0))
  loc_135BF78:   Call 0.Method_Proc_130_44_135C50C0 (CStr(var_DC))
  loc_135BF80:   var_144.Text = 
  loc_135BFE1:   Set var_124 = var_12C(CInt(1))
  loc_135BFE7:   Call 0.Method_Proc_130_44_135C50C0 (CStr(var_128.Fields.Item("VNo").Value))
  loc_135BFEF:   var_12C.Text = 
  loc_135C057:   Set var_124 = var_12C(CInt(2))
  loc_135C05D:   Call 0.Method_Proc_130_44_135C50C0 (CStr(Format(CVar(var_128.Fields.Item("VDate")), "DD/MMM/YYYY")), 1)
  loc_135C065:   var_12C.Text = 1
  loc_135C0B7:   (CStr(var_128.Fields.Item("vPrefix").Value)).Caption = 
  loc_135C101:   Set var_124 = var_12C(CInt(4))
  loc_135C107:   Call 0.Method_Proc_130_44_135C50C0 (Proc_6_38_E69628(CVar(var_128.Fields.Item("DepartCode"))))
  loc_135C10F:   var_12C.Tag = 
  loc_135C159:   Set var_124 = var_12C(CInt(4))
  loc_135C15F:   Call 0.Method_Proc_130_44_135C50C0 (Proc_6_38_E69628(CVar(var_128.Fields.Item("Location"))))
  loc_135C167:   var_12C.Text = 
  loc_135C17D:   Set var_128 = Nothing 
  loc_135C18A:   Set var_98 = (False)
  loc_135C190:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_19()
  loc_135C1A5:   Set var_98 = (1)
  loc_135C1AB:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_135C1B5:   var_8E = 1
  loc_135C1C5:   var_CC = "Select S.*,I.Name as ItemName From KcLsTK S Left Join ItemMast I On S.Item=I.Code And S.RestCode=I.RestCode Where S.Docid='"
  loc_135C20E:   unk_4771C1.Execute CStr(var_CC & Me.Fields.Item("DocID").Value & "'"), var_120, -1
  loc_135C219:   Set var_88 = var_124
  loc_135C247:   If (var_88.RecordCount > 0) Then
  loc_135C24A:     ' Referenced from: 135C43A
  loc_135C259:     If Not(var_88.EOF) Then
  loc_135C266:       Set var_98 = var_124(vbNullString)
  loc_135C26C:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_10000(var_8E)
  loc_135C27B:       Set var_14C = ()
  loc_135C282:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_135C28A:       var_EC = CVar(CLng(0)) 'Long
  loc_135C294:       var_BC = CVar(CStr(var_8E)) 'String
  loc_135C29B:       LateIdCallSt
  loc_135C2AA:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_135C2B2:       var_110 = CVar(CLng(4)) 'Long
  loc_135C2E2:       var_DC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_135C2E9:       LateIdCallSt
  loc_135C303:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_135C30B:       var_110 = CVar(CLng(1)) 'Long
  loc_135C33B:       var_DC = CVar(CStr(var_88.Fields.Item("ItemName").Value)) 'String
  loc_135C342:       LateIdCallSt
  loc_135C35C:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_135C364:       var_110 = CVar(CLng(2)) 'Long
  loc_135C394:       var_DC = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_135C39B:       LateIdCallSt
  loc_135C3D1:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_135C3D9:       var_15C = CVar(CLng(3)) 'Long
  loc_135C3E8:       var_CC = "0.000"
  loc_135C3ED:       var_DC = var_CC
  loc_135C406:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), var_DC))) 'String
  loc_135C40D:       LateIdCallSt
  loc_135C425:       Set var_14C = Nothing 
  loc_135C42F:       var_8E = (var_8E + 1)
  loc_135C435:       var_88.MoveNext
  loc_135C43A:       GoTo loc_135C24A
  loc_135C43D:     End If
  loc_135C44A:     Set var_98 = var_8E(1)
  loc_135C450:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6(var_14C)
  loc_135C458:   End If
  loc_135C460:   Set var_98 = var_120(True)
  loc_135C466:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_19(1)
  loc_135C474:   If (var_8E = 1) Then
  loc_135C484:     Set var_98 = 1(1)
  loc_135C48A:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4(var_15C)
  loc_135C4B8:     Set var_AC = var_CC(CVar(CStr(Proc_6_127_F25B10(var_14C(var_EC), CInt(0), var_DC, var_110))))
  loc_135C4BE:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_10000(var_14C)
  loc_135C4DF:     Set var_98 = var_DC(1)
  loc_135C4E5:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6()
  loc_135C4ED:   End If
  loc_135C4F0: Else
  loc_135C4F0:   Call Proc_130_46_F5D528()
  loc_135C4F5: End If
  loc_135C4F5: Call Proc_130_48_E87C00()
  loc_135C4FF: Set var_88 = Nothing
  loc_135C502: Exit Sub
  loc_135C503: ' Referenced from: 135BCF8
  loc_135C503: Proc_6_60_E63754()
  loc_135C508: Exit Sub
End Sub

Public Sub Proc_130_45_108EE78
  'Data Table: 4771AC
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_4771C1 As Connection15
  Dim var_D0 As Recordset15
  Dim var_E8 As Field20
  Dim var_F8 As Variant
  Dim var_AC As Variant
  loc_108EBF1: Set var_9C = Me.TopCtrl1
  loc_108EBF7: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(&HFF)
  loc_108EBFF: var_B0 = CStr()
  loc_108EC10: If (var_B0 = "Add") Then
  loc_108EC40:   Set var_9C = var_B4(CInt(3))
  loc_108EC46:   Call 0.Method_Proc_130_45_108EE780 (var_B0, "Select Count(*) From Purch1 Where DocID='", var_AC, -1, var_D0)
  loc_108EC67:   unk_4771C1.Execute 0 & var_B0 & "'", var_E8, var_F8
  loc_108EC6F:    = var_D0.Fields
  loc_108EC77:    = var_B4.Text.Item()
  loc_108EC7F:    = var_E8.Value
  loc_108ECAC:   If (var_F8 > 0) Then
  loc_108ECB5:     Call 0.Method_arg_50 (var_B0)
  loc_108ECD6:     MsgBox("Duplicate Purch.Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_108ECEC:     Call Proc_130_50_114F1CC(MemVar_1F95044)
  loc_108ECFF:     Set var_9C = var_B4(CInt(3))
  loc_108ED05:     Call 0.Method_Proc_130_45_108EE780 (var_B0)
  loc_108ED0D:     var_B4.Text = var_B0
  loc_108ED21:     Proc_130_45_108EE78 = 0
  loc_108ED27:   End If
  loc_108ED27: End If
  loc_108ED30: Set var_9C = 1(var_88)
  loc_108ED36: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_108ED4C: For var_12C =  To CInt((CLng() - 1)):  = var_12C 'Integer
  loc_108ED67:   Set var_9C = CVar(CLng(var_88))(CVar(CLng(1)))
  loc_108ED6D:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_108ED7E:   var_118 = Trim(CVar(CStr()))
  loc_108ED9A:   If CBool(var_118 <> vbNullString) Then
  loc_108EDB2:     Set var_9C = CVar(CLng(var_88))(CVar(CLng(3)))
  loc_108EDB8:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_108EDD9:     If (CDbl(Val(CStr())) = CDbl(0)) Then
  loc_108EE01:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_108EE21:       Set var_9C = (CVar(CLng(var_88)))
  loc_108EE27:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_108EE33:       Set var_9C = ()
  loc_108EE39:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001()
  loc_108EE51:       Set var_9C = (CVar(CLng("14737632")))
  loc_108EE57:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_26()
  loc_108EE64:       Proc_130_45_108EE78 = 0
  loc_108EE6A:     End If
  loc_108EE6A:   End If
  loc_108EE6D: Next var_12C 'Integer
  loc_108EE72: Proc_130_45_108EE78 = 
End Sub

Public Sub Proc_130_46_F5D528
  'Data Table: 4771AC
  Dim var_8C As Label
  Dim var_98 As TextBox
  loc_F5D40D: (vbNullString).Caption = 
  loc_F5D41B: global_104 = vbNullString
  loc_F5D425: global_108 = vbNullString
  loc_F5D437: Set var_8C = var_86(var_8E)
  loc_F5D43D: Call 0.Method_Proc_130_46_F5D528C (CByte(0))
  loc_F5D44D: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_F5D463:   Set var_8C = var_98(CInt(var_86))
  loc_F5D469:   Call 0.Method_Proc_130_46_F5D5280 (vbNullString)
  loc_F5D471:   var_98.Text = 
  loc_F5D48D:   Set var_8C = var_98(CInt(var_86))
  loc_F5D493:   Call 0.Method_Proc_130_46_F5D5280 (vbNullString)
  loc_F5D49B:   var_98.Tag = 
  loc_F5D4AA: Next var_92 'Byte
  loc_F5D4BD: Set var_8C = (1)
  loc_F5D4C3: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_F5D4F1: Set var_98 = CInt(0)(CVar(CStr(Proc_6_127_F25B10(()))))
  loc_F5D4F7: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_10000()
  loc_F5D518: Set var_8C = (1)
  loc_F5D51E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6()
  loc_F5D526: Exit Sub
End Sub

Public Sub Proc_130_47_EC9664(arg_C) 'EC9664
  'Data Table: 4771AC
  Dim var_98 As TextBox
  loc_EC95C6: Set var_8C = var_86(var_8E)
  loc_EC95CC: Call 0.Method_Proc_130_47_EC9664C (CByte(0))
  loc_EC95DC: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_EC95F2:   Set var_8C = var_98(CInt(var_86))
  loc_EC95F8:   Call 0.Method_Proc_130_47_EC96640 (arg_C)
  loc_EC9600:   var_98.Enabled = 
  loc_EC960F: Next var_92 'Byte
  loc_EC9622: Set var_8C = var_98(CInt(1))
  loc_EC9628: Call 0.Method_Proc_130_47_EC96640 (0)
  loc_EC9630: var_98.Enabled = 
  loc_EC9649: Set var_8C = var_98(CInt(2))
  loc_EC964F: Call 0.Method_Proc_130_47_EC96640 (0)
  loc_EC9657: var_98.Enabled = 
  loc_EC9663: Exit Sub
End Sub

Public Sub Proc_130_48_E87C00
  'Data Table: 4771AC
  loc_E87B94: Set var_88 = ()
  loc_E87B9A: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_E87BAC: If (CBool() = &HFF) Then
  loc_E87BB8:   Set var_88 = (False)
  loc_E87BBE:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_E87BC6: End If
  loc_E87BCA: Set var_88 = ()
  loc_E87BD0: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_E87BE2: If (CBool() = &HFF) Then
  loc_E87BEE:   Set var_88 = (False)
  loc_E87BF4:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_E87BFC: End If
  loc_E87BFC: Exit Sub
End Sub

Public Sub Proc_130_49_F0C7C4
  'Data Table: 4771AC
  loc_F0C6E8: Call Proc_130_48_E87C00()
  loc_F0C6F8: Set var_88 = var_8C(CInt(2))
  loc_F0C6FE: Call 0.Method_Proc_130_49_F0C7C40 ()
  loc_F0C706: var_94 = "Invoice Date"
  loc_F0C727: If (Proc_6_27_EA61EC(var_8C) = 0) Then
  loc_F0C72A:   Exit Sub
  loc_F0C72B: End If
  loc_F0C736: Set var_88 = var_8C(CInt(1))
  loc_F0C73C: Call 0.Method_Proc_130_49_F0C7C40 (var_94)
  loc_F0C744: var_94 = "Invoice No"
  loc_F0C765: If (Proc_6_27_EA61EC(var_8C) = 0) Then
  loc_F0C768:   Exit Sub
  loc_F0C769: End If
  loc_F0C7A0: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0C7A3:   Call TopCtrl1_UnknownEvent_16()
  loc_F0C7AB: Else
  loc_F0C7B1:   Call 0.Method_arg_1E8 (var_88)
  loc_F0C7B9:   Call var_88.SetFocus
  loc_F0C7C2: End If
  loc_F0C7C2: Exit Sub
End Sub

Public Sub Proc_130_50_114F1CC
  'Data Table: 4771AC
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_180 As TextBox
  loc_114EE6D: var_90 = "KC"
  loc_114EE84: var_94 = "Select VT.Number_Method,VP.V_Type,Vt.Description,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_114EEB5: Set var_A8 = var_AC(CInt(2))
  loc_114EEBB: Call 0.Method_Proc_130_50_114F1CC0 (CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="), var_130)
  loc_114EECA: Proc_6_7_F26918(var_CC, CVar(var_AC))
  loc_114EED2: var_EC = -1 & var_CC 
  loc_114EEE6: Me.Connection15.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_114EEF1: Set var_8C = var_134
  loc_114EF2D: If (var_8C.RecordCount > 0) Then
  loc_114EF6C:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_114EF6F:     GoTo loc_114EFFC
  loc_114EF72:   End If
  loc_114EFA3:   global_80 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_114EFCE:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_114EFE3:   var_CC = (var_AC.Value + 1)
  loc_114EFEB:   global_84 = CInt(var_CC)
  loc_114EFFC:   ' Referenced from: 114EF6F
  loc_114EFFC: End If
  loc_114F027: var_BC = Space((5 - Len(var_90)))
  loc_114F02F: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_114F043: var_EC = Space((5 - Len(global_80)))
  loc_114F04B: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_114F058: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_80))
  loc_114F071: var_14C = Space((8 - Len(CStr(global_84))))
  loc_114F079: var_15C = (var_130 + var_14C)
  loc_114F088: var_17C = (var_15C + CVar(CStr(global_84)))
  loc_114F093: global_72 = CStr(var_17C)
  loc_114F0C9: global_84(global_80).Caption = 
  loc_114F0E2: Set var_A8 = var_AC(CInt(3))
  loc_114F0E8: Call 0.Method_Proc_130_50_114F1CC0 (global_72)
  loc_114F0F0: var_AC.Text = 
  loc_114F112: Set var_A8 = var_AC(CInt(1))
  loc_114F118: Call 0.Method_Proc_130_50_114F1CC0 (CStr(global_84))
  loc_114F120: var_AC.Text = 
  loc_114F13D: Set var_A8 = var_AC(CInt(0))
  loc_114F143: Call 0.Method_Proc_130_50_114F1CC0 (var_90)
  loc_114F14B: var_AC.Tag = 
  loc_114F190: Set var_134 = var_180(CInt(0))
  loc_114F196: Call 0.Method_Proc_130_50_114F1CC0 (CStr(var_8C.Fields.Item("Description").Value))
  loc_114F19E: var_180.Text = 
  loc_114F1BA: var_88 = global_72
  loc_114F1C2: Set var_8C = Nothing
  loc_114F1C5: Proc_130_50_114F1CC = 
End Sub

Public Sub Proc_130_51_1010874
  'Data Table: 4771AC
  Dim var_86 As Integer
  Dim unk_4771C1 As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Fields15
  Dim var_B8 As Variant
  Dim var_13C As TextBox
  Dim var_120 As Variant
  loc_101068A: var_86 = &HFF
  loc_10106A3: unk_4771C1.Execute "Select Name, Srno,IsNull(SDate,'') as SDate,IsNull(EDate,'') as EDate From DateLock Where Name='Purchase Bill Entry' ", var_AC, -1
  loc_10106AE: Set var_8C = var_B0
  loc_10106CB: If (var_8C.RecordCount > 0) Then
  loc_10106E8:   var_B8 = var_8C.Fields.Item("SDate")
  loc_101074E:   If CBool((var_B8.Value <> vbNullString) And (var_8C.Fields.Item("EDate").Value <> vbNullString)) Then
  loc_1010765:     Call 0.Method_Proc_130_51_10108740 (var_134, var_B8(CInt(2)))
  loc_101076D:     var_86 = var_B8.Text
  loc_10107B8:     Set var_138 = var_13C(CInt(2))
  loc_10107BE:     Call 0.Method_Proc_130_51_10108740 (var_140)
  loc_10107C6:     (CDate(CDate(var_134)) >= var_8C.Fields.Item("SDate").Value) = var_13C.Text
  loc_10107F7:     var_100 = var_8C.Fields.Item("EDate").Value
  loc_10107FF:     var_120 = (CDate(CDate(var_140)) <= var_100)
  loc_101082E:     If CBool(Not  And var_120) Then
  loc_1010852:       MsgBox("Date Locked!", &H40, "Date Validation", var_100, var_120)
  loc_1010867:       Proc_130_51_1010874 = 0
  loc_101086D:     End If
  loc_101086D:   End If
  loc_101086D: End If
  loc_101086D: Proc_130_51_1010874 = 
End Sub

Public Sub Proc_130_52_E8A58C
  'Data Table: 4771AC
  loc_E8A526: Set global_60 = New 
  loc_E8A543: Me.Connection15.Execute "Select Code,D.Name as Name From Depart D Order by Name", var_A8, -1
  loc_E8A56B: CVarUnk
  loc_E8A570: VerifyVarObj
  loc_E8A576: Set var_88 = var_88(var_88)
  loc_E8A57C: LateIdStAd
  loc_E8A58A: Exit Sub
End Sub
