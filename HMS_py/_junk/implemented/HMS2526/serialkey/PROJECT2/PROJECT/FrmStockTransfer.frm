VERSION 5.00
Begin VB.Form FrmStockTransfer
  Caption = "Stock Transfer"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 7185
  ClientHeight = 7710
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
  Begin DataGrid DGItem
    Left = 2880
    Top = 5325
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGDepart
    Left = 4770
    Top = 4005
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
End

Attribute VB_Name = "FrmStockTransfer"

Private global_84 As Integer

Private Sub TopCtrl1_UnknownEvent_11 'F85D64
  'Data Table: 495098
  Dim var_8C As Label
  Dim var_D4 As Variant
  loc_F85C0C: On Error Goto loc_F85D5D
  loc_F85C32: Call Proc_147_46_EF1510(Proc_5_1_100EC1C("ADD", Me))
  loc_F85C3D: Call Proc_147_44_F2989C(global_56)
  loc_F85C4F: (vbNullString).Caption = 
  loc_F85C64: Set var_8C = (1)
  loc_F85C76: Set var_8C = (tmpImage.DispID_4)
  loc_F85C8F: Set var_D4 = (CVar(CStr(CLng(tmpImage.DispID_4))))
  loc_F85CB8: Set var_8C = var_D4.Name(1)
  loc_F85CD9: Set var_8C = var_D4(CInt(2))
  loc_F85CDF: Call 0.Method_TopCtrl1_UnknownEvent_110 (CStr(MemVar_1F950EC))
  loc_F85CE7: var_D4.Text = tmpImage.DispID_6
  loc_F85D01: Set var_8C = var_D4(CInt(3))
  loc_F85D07: Call 0.Method_TopCtrl1_UnknownEvent_110 ()
  loc_F85D0F: var_D4.SetFocus
  loc_F85D2E: Set var_8C = var_D4(CInt(2))
  loc_F85D34: Call 0.Method_TopCtrl1_UnknownEvent_110 (CStr(MemVar_1F950EC))
  loc_F85D3C: var_D4.Text = 
  loc_F85D57: Call Txt_Validate(CInt(2))
  loc_F85D5C: Exit Sub
  loc_F85D5D: ' Referenced from: F85C0C
  loc_F85D5D: Proc_6_60_E63754(&HFF)
  loc_F85D62: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 '10D41B8
  'Data Table: 495098
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_8C As String
  Dim var_DC As Variant
  Dim var_90 As Label
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_124 As Variant
  Dim var_12C As TextBox
  Dim var_154 As Variant
  Dim var_15C As TextBox
  Dim var_180 As Variant
  loc_10D3EFC: On Error Goto loc_10D41B0
  loc_10D3F0D: If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_10D3F10:   Exit Sub
  loc_10D3F11: End If
  loc_10D3F28: If (Me.RecordCount > 0) Then
  loc_10D3F40:   var_8C = "EDIT"
  loc_10D3F4E:   Call Proc_147_46_EF1510(Proc_5_1_100EC1C(var_8C, Me))
  loc_10D3F66:   Set var_90 = var_98(CInt(1))
  loc_10D3F6C:   Call 0.Method_TopCtrl1_UnknownEvent_120 (0)
  loc_10D3F74:   var_98.Enabled = global_56
  loc_10D3F84:   Set var_90 = ()
  loc_10D3F9F:   If (tmpImage.DispID_6803000E = "Add") Then
  loc_10D3FAD:     Set var_90 = var_98(CInt(2))
  loc_10D3FB3:     Call 0.Method_TopCtrl1_UnknownEvent_120 ()
  loc_10D3FBB:     var_98.SetFocus
  loc_10D3FC7:   End If
  loc_10D3FCB:   Set var_90 = ()
  loc_10D3FE6:   If (tmpImage.DispID_6803000E = "Edit") Then
  loc_10D3FF4:     Set var_90 = var_98(CInt(3))
  loc_10D3FFA:     Call 0.Method_TopCtrl1_UnknownEvent_120 ()
  loc_10D4002:     var_98.SetFocus
  loc_10D400E:   End If
  loc_10D401C:   Set var_90 = var_98(CInt(0))
  loc_10D4022:   Call 0.Method_TopCtrl1_UnknownEvent_120 (var_8C)
  loc_10D402A:    = var_98.Text
  loc_10D4035:   global_76 = var_8C
  loc_10D406E:   var_B8 = Space((5 - Len("KSISS")))
  loc_10D4076:   var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & "KSISS") + var_B8)
  loc_10D4087:    = var_DC(var_E0).Caption
  loc_10D408F:   var_F0 = CVar(var_E0) 'String
  loc_10D4092:   var_100 = ( + var_F0)
  loc_10D40A8:   var_100 = 5(var_104).Caption
  loc_10D40B5:   var_114 = Space(( - Len(var_104)))
  loc_10D40BD:   var_124 = ( + var_114)
  loc_10D40D4:   Set var_128 = var_12C(CInt(1))
  loc_10D40DA:   Call 0.Method_TopCtrl1_UnknownEvent_120 (var_130, 8)
  loc_10D40E2:   var_124 = var_12C.Text
  loc_10D40F9:   var_144 = Space(( - Len(CStr(Val(var_130)))))
  loc_10D4101:   var_154 = ( + var_144)
  loc_10D4113:   Set var_158 = var_15C(CInt(1))
  loc_10D4119:   Call 0.Method_TopCtrl1_UnknownEvent_120 (var_160)
  loc_10D4121:   var_154 = var_15C.Text
  loc_10D4133:   var_180 = ( + CVar(CStr(Val(var_160))))
  loc_10D413E:   global_80 = CStr(var_180)
  loc_10D417E: Else
  loc_10D419F:   MsgBox("No Record To Edit.", &H40, "Information", var_DC, var_F0)
  loc_10D41AF: End If
  loc_10D41AF: Exit Sub
  loc_10D41B0: ' Referenced from: 10D3EFC
  loc_10D41B0: Proc_6_60_E63754()
  loc_10D41B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '122E058
  'Data Table: 495098
  Dim var_11C As String
  Dim var_F4 As Variant
  Dim var_124 As Label
  Dim var_114 As Variant
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_160 As Variant
  Dim var_168 As TextBox
  Dim var_170 As String
  Dim var_190 As Variant
  Dim var_198 As TextBox
  Dim var_1BC As Variant
  Dim var_1C0 As String
  Dim unk_4950A9 As Connection15
  Dim Me As Recordset15
  Dim var_128 As String
  Dim var_B4 As Variant
  loc_122DB98: On Error Goto loc_122E00A
  loc_122DBA9: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_122DBAC:   Exit Sub
  loc_122DBAD: End If
  loc_122DBE4: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_122DBF7:   var_11C = Proc_6_45_EADFB8(MemVar_1F95070, 2)
  loc_122DC12:   var_B4 = Space((5 - Len("KSISS")))
  loc_122DC1A:   var_F4 = (CVar(MemVar_1F9506C & var_11C & "KSISS") + "Are You Sure To Delete This ? ")
  loc_122DC2B:    = var_F4(var_128).Caption
  loc_122DC33:   var_114 = CVar(var_128) 'String
  loc_122DC36:   var_138 = ( + var_114)
  loc_122DC46:   Set var_13C = 5(var_140)
  loc_122DC4C:   var_138 = var_13C.Caption
  loc_122DC59:   var_150 = Space(( - Len(var_140)))
  loc_122DC61:   var_160 = ( + var_150)
  loc_122DC7E:   Call 0.Method_TopCtrl1_UnknownEvent_130 (var_16C, 8)
  loc_122DC86:   var_160 = var_168.Text
  loc_122DC9D:   var_180 = Space(( - Len(CStr(Val(var_16C)))))
  loc_122DCA5:   var_190 = ( + var_180)
  loc_122DCB7:   Set var_194 = var_198(CInt(1))
  loc_122DCBD:   Call 0.Method_TopCtrl1_UnknownEvent_130 (var_19C)
  loc_122DCC5:   var_190 = var_198.Text
  loc_122DCD7:   var_1BC = ( + CVar(CStr(Val(var_19C))))
  loc_122DCE2:   global_80 = CStr(var_1BC)
  loc_122DD28:   unk_4950A9.BeginTrans var_1C4
  loc_122DD36:   var_B4 = Me.Bookmark
  loc_122DD3E:   var_94 = var_B4 'Variant
  loc_122DD60:   Set var_124 = var_13C(CInt(0))
  loc_122DD66:   Call 0.Method_TopCtrl1_UnknownEvent_130 (var_11C, "Delete From Stock Where DocID='", var_B4)
  loc_122DD6E:   -1 = var_13C.Text
  loc_122DD7E:   var_128 = var_168(CInt(1)) & var_11C & "'"
  loc_122DD87:   unk_4950A9.Execute var_128, , 
  loc_122DDAF:   Set var_124 = var_13C(CInt(0))
  loc_122DDB5:   Call 0.Method_TopCtrl1_UnknownEvent_130 (var_128)
  loc_122DDBD:    = var_13C.Text
  loc_122DDC7:   var_1E4 = 0
  loc_122DDDA:   var_1DC = 0
  loc_122DDE5:   var_1D8 = 0
  loc_122DDF8:   var_1D0 = 0
  loc_122DE03:   var_1C0 = 0
  loc_122DE16:   var_19C = 0
  loc_122DE5E:   Proc_154_5_10E3BD4(MemVar_1F95044, "Stock", "DocId", &HC8, var_128, 0, 0, 0)
  loc_122DEAA:   unk_4950A9.Execute "Delete From Stock Where DocID='" & global_80 & "'", var_B4, -1
  loc_122DEC1:   var_1D8 = 0
  loc_122DED4:   var_1D0 = 0
  loc_122DEDF:   var_1C0 = 0
  loc_122DEF2:   var_19C = 0
  loc_122DEFD:   var_170 = 0
  loc_122DF10:   var_16C = 0
  loc_122DF4E:   var_11C = "Stock"
  loc_122DF57:   Proc_154_5_10E3BD4(MemVar_1F95044, var_11C, "DocId", &HC8, global_80, 0, 0, 0)
  loc_122DF79:   unk_4950A9.CommitTrans
  loc_122DF89:   Me.Requery -1
  loc_122DFA9:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_122DFB6:     Me.Bookmark = var_94
  loc_122DFBE:   Else
  loc_122DFD2:     If (Me.EOF = 0) Then
  loc_122DFDB:       Me.MoveLast
  loc_122DFE0:     End If
  loc_122DFE0:   End If
  loc_122DFE0:   Call Proc_147_45_13F34A4(var_16C, 0, var_170, var_19C)
  loc_122E001:   Proc_5_0_1107AD0(&HFF, Me, global_56, 0)
  loc_122E009: End If
  loc_122E009: Exit Sub
  loc_122E00A: ' Referenced from: 122DB98
  loc_122E010: unk_4950A9.RollbackTrans
  loc_122E01D: Set var_124 = Err()
  loc_122E023: Call 0.Method_arg_2C (var_11C, 0, var_1C0)
  loc_122E044: MsgBox(CVar(var_11C), &H10, " Deletion Message", var_F4, var_114)
  loc_122E057: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E19144
  'Data Table: 495098
  loc_E19139: Me.Global.Unload Me
  loc_E19141: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E37AA8
  'Data Table: 495098
  Dim arg_20FF As Double
  loc_E37A98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37AA0: Call Proc_147_45_13F34A4(global_56)
  loc_E37AA5: Exit Sub
  loc_E37AA6: arg_20FF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E37DA8
  'Data Table: 495098
  Dim arg_20FF As Double
  loc_E37D98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37DA0: Call Proc_147_45_13F34A4(global_56)
  loc_E37DA5: Exit Sub
  loc_E37DA6: arg_20FF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E37D48
  'Data Table: 495098
  Dim arg_20FF As Double
  loc_E37D38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37D40: Call Proc_147_45_13F34A4(global_56)
  loc_E37D45: Exit Sub
  loc_E37D46: arg_20FF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E37C88
  'Data Table: 495098
  Dim arg_20FF As Double
  loc_E37C78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37C80: Call Proc_147_45_13F34A4(global_56)
  loc_E37C85: Exit Sub
  loc_E37C86: arg_20FF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '1605F9C
  'Data Table: 495098
  Dim var_96 As Integer
  Dim var_B8 As Variant
  Dim var_A8 As String
  Dim var_108 As Variant
  Dim var_8E As Integer
  Dim unk_4950A9 As Connection15
  Dim var_754 As Double
  Dim var_A0 As Variant
  Dim var_1A4 As Variant
  Dim var_75C As Double
  Dim var_1BC As TextBox
  Dim var_764 As Double
  Dim var_23C As TextBox
  Dim var_250 As TextBox
  Dim var_76C As Double
  Dim var_774 As Double
  Dim var_77C As Double
  Dim var_784 As Double
  Dim var_78C As Double
  Dim var_184 As String
  Dim var_1B4 As String
  Dim var_1D8 As String
  Dim var_258 As String
  Dim var_2B0 As String
  Dim var_3D8 As String
  Dim var_494 As String
  Dim var_4F4 As Variant
  Dim var_630 As Variant
  Dim var_650 As Variant
  Dim var_724 As Variant
  Dim var_4B4 As Variant
  Dim var_6A4 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_88 As Recordset15
  Dim var_A4 As Fields15
  Dim var_1B8 As Fields15
  Dim var_188 As String
  Dim var_3CC As Variant
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_1604CB8: On Error Goto loc_1605F7F
  loc_1604CCB: Set var_9C = var_A0(CInt(1))
  loc_1604CD1: Call 0.Method_TopCtrl1_UnknownEvent_190 (0)
  loc_1604CD9: var_A8 = "Voucher Number"
  loc_1604CFA: If (Proc_6_27_EA61EC(var_A0) = 0) Then
  loc_1604CFD:   Exit Sub
  loc_1604CFE: End If
  loc_1604D09: Set var_9C = var_A0(CInt(2))
  loc_1604D0F: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8)
  loc_1604D17: var_A8 = "Voucher Date"
  loc_1604D38: If (Proc_6_27_EA61EC(var_A0) = 0) Then
  loc_1604D3B:   Exit Sub
  loc_1604D3C: End If
  loc_1604D47: Set var_9C = var_A0(CInt(3))
  loc_1604D4D: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8)
  loc_1604D55: var_A8 = "From Location"
  loc_1604D76: If (Proc_6_27_EA61EC(var_A0) = 0) Then
  loc_1604D79:   Exit Sub
  loc_1604D7A: End If
  loc_1604D85: Set var_9C = var_A0(CInt(4))
  loc_1604D8B: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8)
  loc_1604D93: var_A8 = "To Location"
  loc_1604DB4: If (Proc_6_27_EA61EC(var_A0) = 0) Then
  loc_1604DB7:   Exit Sub
  loc_1604DB8: End If
  loc_1604DCD: Set var_9C = 1(CVar(CLng(1)))
  loc_1604DDE: var_A8 = CStr(tmpImage.DispID_41)
  loc_1604DEF: If (var_A8 = vbNullString) Then
  loc_1604DF8:   Call 0.Method_arg_50 (var_A8)
  loc_1604E06:   var_108 = CVar(var_A8) 'String
  loc_1604E13:   var_F8 = "Please Fill Item Detail"
  loc_1604E19:   MsgBox(var_F8, &H40, var_108, var_118, var_128)
  loc_1604E36:   Set var_9C = var_A8(1)
  loc_1604E48:   Set var_9C = (tmpImage.DispID_A)
  loc_1604E59:   Exit Sub
  loc_1604E5A: End If
  loc_1604E68: unk_4950A9.BeginTrans var_12C
  loc_1604E94: unk_4950A9.Execute "Delete From Stock Where DocID='" & global_76 & "'", var_F8, -1
  loc_1604ECD: unk_4950A9.Execute "Delete From Stock Where DocID='" & global_80 & "'", var_F8, -1
  loc_1604EE8: Set var_9C = 1(var_98)
  loc_1604F04: For var_134 = var_9C To CInt((CLng(tmpImage.DispID_4) - 1)): var_9C = var_134 'Integer
  loc_1604F1F:   Set var_9C = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_1604F52:   Set var_A0 = CVar(CLng(var_98))(CVar(CLng(9)))
  loc_1604F81:   If ((CDbl(Val(CStr(tmpImage.DispID_41))) <> CDbl(0)) And (CStr(tmpImage.DispID_41) <> vbNullString)) Then
  loc_1604F99:     Set var_9C = CVar(CLng(var_98))(CVar(CLng(0)))
  loc_1604FB2:     var_754 = Val(CStr(tmpImage.DispID_41))
  loc_1604FC2:     var_9C = var_754(var_188).Caption
  loc_1604FD5:     Set var_A4 = var_1A4(CInt(1))
  loc_1604FDB:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_1A8, &HFF)
  loc_1604FE3:     tmpImage.DispID_8001 = var_1A4.Text
  loc_1604FF0:     var_75C = Val(var_1A8)
  loc_1605001:     Set var_1B8 = var_1BC(CInt(2))
  loc_1605007:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_1C0)
  loc_1605029:     Set var_1CC = CVar(CLng(var_98))(CVar(CLng(9)))
  loc_1605050:     Set var_224 = CVar(CLng(var_98))(CVar(CLng(0)))
  loc_1605069:     var_764 = Val(CStr(tmpImage.DispID_41))
  loc_160507A:     Set var_238 = var_23C(CInt(4))
  loc_1605080:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_240, var_764)
  loc_1605088:     tmpImage.DispID_41 = var_23C.Tag
  loc_160509B:     Set var_24C = var_250(CInt(4))
  loc_16050A1:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_254)
  loc_16050A9:      = var_250.Tag
  loc_16050C3:     Set var_2A0 = CVar(CLng(var_98))(CVar(CLng(7)))
  loc_16050F4:     Set var_2F4 = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_160510D:     var_774 = Val(CStr(tmpImage.DispID_41))
  loc_1605125:     Set var_358 = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_160513E:     var_77C = Val(CStr(tmpImage.DispID_41))
  loc_1605156:     Set var_3BC = CVar(CLng(var_98))(CVar(CLng(2)))
  loc_160517D:     Set var_41C = CVar(CLng(var_98))(CVar(CLng(8)))
  loc_1605196:     var_784 = Val(CStr(tmpImage.DispID_41))
  loc_16051AE:     Set var_480 = CVar(CLng(var_98))(CVar(CLng(4)))
  loc_16051C3:     Proc_6_104_ED68A8(var_4B4, tmpImage.DispID_41, var_784, tmpImage.DispID_41)
  loc_16051CC:     Set var_4F8 = var_774(var_77C)
  loc_1605222:     Set var_5FC = CVar(CLng(var_98))(CVar(CLng(5)))
  loc_160523B:     var_78C = Val(CStr(tmpImage.DispID_41))
  loc_1605253:     Set var_694 = CVar(CLng(var_98))(CVar(CLng(6)))
  loc_1605279:     var_A8 = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,COntraDocId,ContraSno,DepartCode,GodownCode,Rate,RecdQty,AccQty,RecdUnit,Amount,ConvRatio,U_Name,U_EntDt,U_AE,QtyRec,Unit,LogSite_Code)" & " VALUES ('"
  loc_16052D3:     var_1B4 = var_A8 & global_76 & "'," & CStr(var_754) & ",'" & var_188 & "','" & MemVar_1F95070 & "'," & "'KSREC'" & "," & CStr(var_1BC.Text)
  loc_160532C:     var_258 = var_1B4 & ",'" & var_1C0 & "','" & CStr(var_108) & "','" & global_80 & "'," & CStr(var_764) & ",'" & var_240 & "','"
  loc_160537E:     var_3D8 = var_258 & var_254 & "'," & CStr(Val(CStr(tmpImage.DispID_41))) & "," & CStr(var_774) & "," & CStr(var_77C) & ",'" & CStr(var_3CC)
  loc_16053C7:     var_4F4 = CVar(var_3D8 & "'," & CStr(var_784) & ",'" & CStr(var_490) & "','" & MemVar_1F950C8 & "',") & var_4B4 & ",'" 
  loc_16053EB:     var_650 = var_4F4 & IIf((var_518 = "Add"), "A", "E") & "'," & CVar(var_78C) & ",'" 
  loc_1605412:     var_724 = var_650 & CVar(CStr(var_6A4)) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_1605420:     unk_4950A9.Execute CStr(var_724), var_748, -1
  loc_1605525:     Set var_9C = CVar(CLng(var_98))(CVar(CLng(0)))
  loc_160553E:     var_754 = Val(CStr(tmpImage.DispID_41))
  loc_1605548:     Set var_A0 = var_754(var_188)
  loc_160554E:     var_74C = var_A0.Caption
  loc_1605561:     Set var_A4 = var_1A4(CInt(1))
  loc_1605567:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_1A8, tmpImage.DispID_41, var_78C)
  loc_160556F:     tmpImage.DispID_6803000E = var_1A4.Text
  loc_160557C:     var_75C = Val(var_1A8)
  loc_160558D:     Set var_1B8 = var_1BC(CInt(2))
  loc_1605593:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_1C0, var_75C)
  loc_160559B:     var_76C = var_1BC.Text
  loc_16055B5:     Set var_1CC = CVar(CLng(var_98))(CVar(CLng(9)))
  loc_16055DC:     Set var_224 = CVar(CLng(var_98))(CVar(CLng(0)))
  loc_16055F5:     var_764 = Val(CStr(tmpImage.DispID_41))
  loc_1605606:     Set var_238 = var_23C(CInt(3))
  loc_160560C:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_240, var_764)
  loc_1605614:     tmpImage.DispID_41 = var_23C.Tag
  loc_1605627:     Set var_24C = var_250(CInt(3))
  loc_160562D:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_254)
  loc_1605635:      = var_250.Tag
  loc_160564F:     Set var_2A0 = CVar(CLng(var_98))(CVar(CLng(7)))
  loc_1605680:     Set var_2F4 = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_1605699:     var_774 = Val(CStr(tmpImage.DispID_41))
  loc_16056B1:     Set var_358 = CVar(CLng(var_98))(CVar(CLng(2)))
  loc_16056D8:     Set var_3BC = CVar(CLng(var_98))(CVar(CLng(8)))
  loc_16056F1:     var_77C = Val(CStr(tmpImage.DispID_41))
  loc_1605709:     Set var_41C = CVar(CLng(var_98))(CVar(CLng(4)))
  loc_160571E:     Proc_6_104_ED68A8(var_490, tmpImage.DispID_41, var_77C)
  loc_1605727:     Set var_480 = var_774(tmpImage.DispID_41)
  loc_160577D:     Set var_4F8 = CVar(CLng(var_98))(CVar(CLng(5)))
  loc_16057AE:     Set var_5FC = CVar(CLng(var_98))(CVar(CLng(6)))
  loc_16057D4:     var_A8 = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,ContraDocId,ContraSno,DepartCode,GodownCode,Rate,IssQty,IssueUnit,Amount,ConvRatio,U_Name,U_EntDt,U_AE,QtyIss,Unit,LogSite_Code) " & " VALUES ('"
  loc_16057F1:     var_184 = var_A8 & global_80 & "'," & CStr(var_754)
  loc_160584E:     var_1D8 = var_184 & ",'" & var_188 & "','" & MemVar_1F95070 & "'," & "'KSISS'" & "," & CStr(var_75C) & ",'" & var_1C0 & "','" & CStr(var_108)
  loc_16058A1:     var_2B0 = var_1D8 & "','" & global_76 & "'," & CStr(var_764) & ",'" & var_240 & "','" & var_254 & "'," & CStr(Val(CStr(tmpImage.DispID_41)))
  loc_16058F9:     var_494 = var_2B0 & "," & CStr(var_774) & ",'" & CStr(var_368) & "'," & CStr(var_77C) & ",'" & CStr(var_42C) & "','" & MemVar_1F950C8
  loc_1605933:     var_630 = CVar(var_494 & "',") & var_490 & ",'" & IIf((var_4F4 = "Add"), "A", "E") & "'," & CVar(Val(CStr(tmpImage.DispID_41))) & ",'" 
  loc_1605968:     unk_4950A9.Execute CStr(var_630 & CVar(CStr(var_650)) & "','" & CVar(MemVar_1F95078) & "')"), var_724, -1
  loc_1605A4E:     var_96 = &HFF
  loc_1605A51:   End If
  loc_1605A54: Next var_134 'Integer
  loc_1605A5F: If (var_96 = 0) Then
  loc_1605A7B:   MsgBox("Nil Details Can't Be Saved", &H40, var_108, var_118, var_128)
  loc_1605A8B:   Exit Sub
  loc_1605A8C: End If
  loc_1605A90: Set var_9C = ()
  loc_1605AAB: If (tmpImage.DispID_6803000E = "Add") Then
  loc_1605AB2:   Set var_88 = New 
  loc_1605ABD:   Me.Recordset15.CursorLocation = 3
  loc_1605AD0:   Set var_9C = var_A0(CInt(2))
  loc_1605AD6:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_184)
  loc_1605ADE:    = var_A0.Text
  loc_1605AE6:   var_F8 = CVar(var_184) 'String
  loc_1605AEC:   Proc_6_7_F26918(var_108)
  loc_1605B0F:   var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1605B35:   var_118 = CVar(var_A8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_68 & "' And VP.Date_From<=") 'String
  loc_1605B4C:   var_88.Open var_118 & var_108 & " Order By VP.Date_From DESC", CVar(MemVar_1F95044), 2
  loc_1605B86:   If (var_88.RecordCount > 0) Then
  loc_1605B97:     Set var_9C = var_A0(CInt(1))
  loc_1605B9D:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8, 3)
  loc_1605BA5:     -1 = var_A0.Text
  loc_1605C02:     Proc_6_7_F26918(var_368, CVar(var_88.Fields.Item("Date_From")))
  loc_1605C35:     var_184 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(Val(var_A8)) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1605C43:     var_108 = CVar(var_184 & MemVar_1F95078 & "') and V_Type='") 'String
  loc_1605C67:     unk_4950A9.Execute CStr(var_108 & var_88.Fields.Item("V_Type").Value & "' and Date_From=" & var_368), var_42C, -1
  loc_1605CA1:   End If
  loc_1605CA5:   Set var_8C = New 
  loc_1605CB0:   var_8C.CursorLocation = 3
  loc_1605CC3:   Set var_9C = var_A0(CInt(2))
  loc_1605CC9:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_184, var_1CC)
  loc_1605CD1:   var_754 = var_A0.Text
  loc_1605CDF:   Proc_6_7_F26918(var_108, CVar(var_184))
  loc_1605D02:   var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1605D28:   var_118 = CVar(var_A8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_72 & "' And VP.Date_From<=") 'String
  loc_1605D3F:   var_8C.Open var_118 & var_108 & " Order By VP.Date_From DESC", CVar(MemVar_1F95044), 2
  loc_1605D79:   If (var_8C.RecordCount > 0) Then
  loc_1605D8A:     Set var_9C = var_A0(CInt(1))
  loc_1605D90:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8, 3)
  loc_1605D98:     -1 = var_A0.Text
  loc_1605DAE:     var_B8 = "V_Type"
  loc_1605DCA:     var_F8 = var_8C.Fields.Item(var_B8).Value
  loc_1605DF5:     Proc_6_7_F26918(var_368, CVar(var_8C.Fields.Item("Date_From")))
  loc_1605E28:     var_184 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(Val(var_A8)) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1605E5A:     unk_4950A9.Execute CStr(CVar(var_184 & MemVar_1F95078 & "') and V_Type='") & var_F8 & "' and Date_From=" & var_368), var_42C, -1
  loc_1605E94:   End If
  loc_1605E94: End If
  loc_1605E9A: unk_4950A9.CommitTrans
  loc_1605EA1: var_8E = 0
  loc_1605EB2: Set var_9C = var_A0(CInt(0))
  loc_1605EB8: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8, var_8E, var_1CC)
  loc_1605EC0: var_754 = var_A0.Text
  loc_1605EDD: Me.Requery -1
  loc_1605F07: Me.Find "SearchCode ='" & "SearchCode ='" & var_A8 & "'", 0, 1
  loc_1605F13: Call Proc_147_45_13F34A4(var_B8)
  loc_1605F1C: Set var_9C = (var_F8)
  loc_1605F37: If (tmpImage.DispID_6803000E = "Add") Then
  loc_1605F3A:   Call TopCtrl1_UnknownEvent_11()
  loc_1605F3F:   Exit Sub
  loc_1605F40: End If
  loc_1605F63: Call Proc_147_46_EF1510(Proc_5_1_100EC1C("INI", Me))
  loc_1605F73: Set var_88 = Nothing
  loc_1605F7B: Set var_8C = Nothing
  loc_1605F7E: Exit Sub
  loc_1605F7F: ' Referenced from: 1604CB8
  loc_1605F85: If (var_8E = &HFF) Then
  loc_1605F8E:   unk_4950A9.RollbackTrans
  loc_1605F93: End If
  loc_1605F93: Proc_6_60_E63754(global_56)
  loc_1605F98: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EBEF7C
  'Data Table: 495098
  loc_EBEEE8: On Error Goto loc_EBEF73
  loc_EBEF22: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBEF31:   Set var_10C = Me
  loc_EBEF48:   Call Proc_147_46_EF1510(Proc_5_1_100EC1C("INI", var_10C))
  loc_EBEF53:   Call Proc_147_45_13F34A4(global_56)
  loc_EBEF5B: Else
  loc_EBEF61:   Call 0.Method_arg_1E8 (var_10C)
  loc_EBEF69:   Call var_10C.SetFocus
  loc_EBEF72: End If
  loc_EBEF72: Exit Sub
  loc_EBEF73: ' Referenced from: EBEEE8
  loc_EBEF73: Proc_6_60_E63754()
  loc_EBEF78: Exit Sub
  loc_EBEF79: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB32D0
  'Data Table: 495098
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB3240: On Error Goto loc_EB32CA
  loc_EB325A: If (Me.RecordCount <= 0) Then
  loc_EB3263:   var_B8 = "Information"
  loc_EB327E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB328E:   Exit Sub
  loc_EB328F: End If
  loc_EB3292: MemVar_1F950E4 = "Select Distinct S.Docid,CONVERT(VARCHAR(8),S.Vno) as VNo,S.Vdate,S.VPrefix,D.NAME AS ToLocation From (Stock S left Join GodownMast D on S.GodownCode=D.Code) Left Join ItemMast I ON S.Item=I.Code And I.ItemType='Store' WHERE VTYPE='KSREC' AND I.Type IN ('Consumables','Lenin')"
  loc_EB329F: Proc_6_126_F1C850("1500,1500,1500,4500")
  loc_EB32AD: MemVar_1F95120 = Me
  loc_EB32C4: Call 0.Method_arg_2B0 (1)
  loc_EB32C9: Exit Sub
  loc_EB32CA: ' Referenced from: EB3240
  loc_EB32CA: Proc_6_60_E63754(var_B8)
  loc_EB32CF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C '12846B0
  'Data Table: 495098
  Dim Me As Recordset15
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_F8 As Variant
  Dim var_110 As Variant
  Dim var_150 As Variant
  Dim var_19C As String
  Dim var_1BC As Variant
  Dim var_218 As Variant
  Dim var_270 As Variant
  Dim var_100 As Variant
  Dim unk_4950A9 As Connection15
  Dim var_A0 As Recordset15
  Dim var_120 As Variant
  Dim var_BE As Integer
  Dim var_178 As String
  Dim var_B0 As Recordset15
  Dim var_FC As Fields15
  Dim var_284 As String
  loc_128417C: On Error Goto loc_12846A7
  loc_1284196: If (Me.RecordCount <= 0) Then
  loc_1284199:   Exit Sub
  loc_128419A: End If
  loc_12841A5: Set var_FC = var_100(CInt(0))
  loc_12841AB: Call 0.Method_TopCtrl1_UnknownEvent_1C0 ()
  loc_12841BB: Set var_154 = var_158(CInt(0))
  loc_12841C1: Call 0.Method_TopCtrl1_UnknownEvent_1C0 ()
  loc_12841D1: Set var_1C0 = var_1C4(CInt(0))
  loc_12841D7: Call 0.Method_TopCtrl1_UnknownEvent_1C0 ()
  loc_12841E7: Set var_21C = var_220(CInt(0))
  loc_12841ED: Call 0.Method_TopCtrl1_UnknownEvent_1C0 ()
  loc_1284223: var_D8 = Space((5 - Len(global_72)))
  loc_128422B: var_F8 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & global_72) + var_D8)
  loc_128423C: var_110 = CVar(var_100) 'Address
  loc_128424B: var_150 = (var_F8 + Mid(var_110, 9, 5))
  loc_128427A: var_1AC = Space((5 - Len(CStr(Mid(CVar(var_158), 9, 5)))))
  loc_1284282: var_1BC = (var_150 + var_1AC)
  loc_12842B7: var_208 = Space((8 - Len(CStr(Trim(Right(CVar(var_1C4), 8))))))
  loc_12842BF: var_218 = (var_1BC + var_208)
  loc_12842EA: var_270 = (var_218 + CVar(CStr(Trim(Right(CVar(var_220), 8)))))
  loc_128434B: var_C8 = "Select S.Docid,S.VNo,S.VDate,S.QtyIss as Qty,S.Unit,S.Rate,S.Amount,S.GodownCode," & " I.Name as ItemName,G.Name as GodName" & " From ((Stock as S Left Join ItemMast as I on S.Item=I.Code And I.ItemType='Store')"
  loc_1284367: var_88 = var_C8 & " Left Join GodownMast as G on S.GodownCode=G.Code)" & " Where S.DocID='" & CStr(var_270) & "'"
  loc_128437E: var_C4 = "Select S.GodownCode,G.Name as GodName" & " From Stock as S Left Join GodownMast as G on S.GodownCode=G.Code"
  loc_1284385: var_19C = var_C4 & " Where S.DocID='"
  loc_1284396: Set var_FC = var_100(CInt(0))
  loc_128439C: Call 0.Method_TopCtrl1_UnknownEvent_1C0 (var_C8)
  loc_12843A4: var_19C = var_100.Text
  loc_12843DF: unk_4950A9.Execute var_C8 & "'", var_D8, -1
  loc_12843EA: Set var_B0 = var_FC
  loc_12843FB: If (var_88 = vbNullString) Then
  loc_12843FE:   Exit Sub
  loc_12843FF: End If
  loc_1284415: unk_4950A9.Execute var_88, var_D8, -1
  loc_1284420: Set var_A0 = var_FC
  loc_128442F: var_BC = var_A0.RecordCount
  loc_128443D: If (var_BC <= 0) Then
  loc_1284446:   Call 0.Method_arg_50 (var_C4, var_FC)
  loc_1284467:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C4), var_F8, var_110)
  loc_1284477:   Exit Sub
  loc_1284478: End If
  loc_128448E: Set var_FC = var_A0 
  loc_128449A: var_BE = CreateFieldDefFile(var_FC, MemVar_1F950B4 & "\StockTransfer.ttx")
  loc_12844A4: Set var_A0 = var_FC
  loc_12844AA: var_120 = CVar(var_BE) 'Integer
  loc_12844AD: var_9C = var_120 'Variant
  loc_12844C9: var_C4 = MemVar_1F950B4 & "\StockTransfer.RPT"
  loc_12844D2: Call 0.Method_arg_1C (var_C4, var_120, var_FC)
  loc_12844DD: MemVar_1F951E8 = var_FC
  loc_12844F8: Call 0.Method_arg_90 (var_FC, var_BC, var_AA, 1)
  loc_1284500: Call 0.Method_arg_24 (var_BE, &HFF)
  loc_128450C: For var_288 =  To CInt(var_BC): var_FC = var_288 'Integer
  loc_1284525:   Call 0.Method_arg_90 (var_FC, CLng(var_AA))
  loc_128452D:   Call 0.Method_arg_20 (var_100)
  loc_1284535:   Call 0.Method_arg_30 (var_C4)
  loc_128453D:   var_28C = var_C4
  loc_128454F:   If (var_28C = "Title") Then
  loc_1284565:     Call 0.Method_arg_90 (var_FC, CLng(var_AA))
  loc_128456D:     Call 0.Method_arg_20 (var_100)
  loc_1284575:     Call 0.Method_arg_38 ("'Stock Transfer'")
  loc_1284584:   Else
  loc_128458C:     If (var_28C = "ToDepartment") Then
  loc_128458F:       var_178 = "'"
  loc_12845A6:       var_FC = var_B0.Fields
  loc_12845C2:       var_284 = "'"
  loc_12845CB:       var_C4 = CStr(var_178 & var_FC.Item("GodName").Value & var_284)
  loc_12845DF:       Call 0.Method_arg_90 (var_154, CLng(var_AA))
  loc_12845E7:       Call 0.Method_arg_20 (var_158)
  loc_12845EF:       Call 0.Method_arg_38 (var_C4)
  loc_128460B:     End If
  loc_128460B:   End If
  loc_128460E: Next var_288 'Integer
  loc_128462C: Call 0.Method_arg_64 (var_FC, CVar(var_A0))
  loc_1284634: Call 0.Method_arg_2C (var_178)
  loc_1284642: Call 0.Method_arg_150 (var_284)
  loc_128464D: Call 0.Method_arg_50 (var_C4)
  loc_1284657: Set var_100 = Nothing
  loc_1284671: Set var_FC = MemVar_1F951E8 
  loc_128467D: Proc_6_99_1484404(var_FC, 0, var_C4)
  loc_1284688: MemVar_1F951E8 = var_FC
  loc_128469B: Set var_A0 = Nothing
  loc_12846A3: Set var_B0 = Nothing
  loc_12846A6: Exit Sub
  loc_12846A7: ' Referenced from: 128417C
  loc_12846A7: Proc_6_60_E63754(&HFF)
  loc_12846AC: Exit Sub
  loc_12846AD: ThisVCallR4
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E3FB74
  'Data Table: 495098
  Dim Me As Recordset15
  loc_E3FB4B: Me.Requery -1
  loc_E3FB5B: Me.Requery -1
  loc_E3FB6B: Me.Requery -1
  loc_E3FB70: Exit Sub
End Sub

Private Sub Form_Load() '105890C
  'Data Table: 495098
  Dim var_8C As String
  Dim Me As Recordset15
  loc_105868C: On Error Goto loc_1058903
  loc_10586AB: Me.Recordset15.CursorLocation = 3
  loc_10586CE: var_8C = "Select I.Code,I.Name,I.Unit,I.IssueUnit,I.PurchRate as Rate,I.ConvRatio From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_10586DF: Me.Open CVar(var_8C & "' or LOGSITE_CODE='HO') and I.Type IN ('Consumables','Lenin') And I.ItemType='Store' Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_10586F3: CVarUnk
  loc_10586F8: VerifyVarObj
  loc_10586FE: Set var_88 = Me.DGItem
  loc_1058704: LateIdStAd
  loc_105872E: Me.DGItem.CursorLocation = 3
  loc_1058751: var_8C = "Select G.Code,G.Name From GodownMast G INNER join Depart D on (D.Code=G.Code and D.LogSite_Code=G.LogSite_Code) Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_1058762: Me.Open CVar(var_8C & "' or G.LOGSITE_CODE='HO') and D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name"), CVar(MemVar_1F95044), 2
  loc_1058776: CVarUnk
  loc_105877B: VerifyVarObj
  loc_1058781: Set var_88 = Me.DGDepart
  loc_1058787: LateIdStAd
  loc_10587B1: Me.DGDepart.CursorLocation = 3
  loc_10587D4: var_8C = "Select G.Code,G.Name From GodownMast G INNER join Depart D on (D.Code=G.Code and D.LogSite_Code=G.LogSite_Code) Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_10587E5: Me.Open CVar(var_8C & "' or G.LOGSITE_CODE='HO') and D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name"), CVar(MemVar_1F95044), 2
  loc_10587F9: CVarUnk
  loc_10587FE: VerifyVarObj
  loc_105880A: LateIdStAd
  loc_1058834: Me.Recordset15.CursorLocation = 3
  loc_1058857: var_8C = "Select Distinct DocID as SearchCode,Stock.Site_Code,Stock.LogSite_Code From Stock INNER JOIN ItemMast ON Stock.item=ItemMast.code And ItemMast.ItemType='Store' WHERE Stock.LOGSITE_CODE='" & MemVar_1F95078
  loc_1058868: Me.Open CVar(var_8C & "' and VTYPE='KSREC' AND ItemMast.Type IN ('Consumables','Lenin') order by  DocID"), CVar(MemVar_1F95044), 2
  loc_1058879: global_68 = "KSREC"
  loc_1058883: global_72 = "KSISS"
  loc_1058887: Call Proc_147_50_11C2CBC(3, -1, 3(New), -1, 3(New), New)
  loc_10588A4: Proc_6_23_DFC5B8(Me, 5445, 7310, 3, -1)
  loc_10588B8: Set var_88 = var_88(5800)
  loc_10588C5: DGDepart.DispID_6803000F.left = New
  loc_10588F2: Call Proc_147_46_EF1510(Proc_5_1_100EC1C("INI", Me, New), 1)
  loc_10588FD: Call Proc_147_45_13F34A4(-1)
  loc_1058902: Exit Sub
  loc_1058903: ' Referenced from: 105868C
  loc_1058903: Proc_6_60_E63754()
  loc_1058908: Exit Sub
  loc_1058909: Get , ,  'get  bytes
End Sub

Private Sub Form_Resize() 'DFD528
  'Data Table: 495098
  loc_DFD524: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E607C8
  'Data Table: 495098
  Dim var_9C As Variant
  loc_E60787: Set global_56 = Nothing
  loc_E60799: Set global_52 = Nothing
  loc_E607AB: Set global_64 = Nothing
  loc_E607BD: Set global_60 = Nothing
  loc_E607C4: Exit Sub
  loc_E607C5: var_9C = CVar() 'String
End Sub

Private Sub Form_Activate() 'E37984
  'Data Table: 495098
  loc_E37960: Set var_88 = ()
  loc_E3797B: If (CLng(CInt(DGDepart.DispID_68030010)) = &H2D) Then
  loc_E3797E:   Call TopCtrl1_UnknownEvent_1D()
  loc_E37983: End If
  loc_E37983: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2AFFC
  'Data Table: 495098
  loc_E2AFD4: On Error Goto loc_E2AFF4
  loc_E2AFEB: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2AFF3: Exit Sub
  loc_E2AFF4: ' Referenced from: E2AFD4
  loc_E2AFF4: Proc_6_60_E63754(Shift)
  loc_E2AFF9: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11ED744
  'Data Table: 495098
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_C4 As Variant
  Dim var_98 As String
  Dim var_B4 As Variant
  Dim Me As Recordset15
  Dim var_9C As String
  loc_11ED2C6: Set var_88 = var_8C(Index)
  loc_11ED2CC: Call 0.Method_Txt_GotFocus0 ()
  loc_11ED2DA: Proc_6_74_E23240(var_8C)
  loc_11ED2E6: Call Proc_147_47_EBEEB0()
  loc_11ED2F9: If (Index = CInt(3)) Then
  loc_11ED306:   Set global_52 = New 
  loc_11ED318:   Me.Recordset15.CursorLocation = 3
  loc_11ED32B:   Set var_88 = var_8C(CInt(4))
  loc_11ED331:   Call 0.Method_Txt_GotFocus0 (var_9C)
  loc_11ED339:   var_92 = var_8C.Tag
  loc_11ED35C:   var_98 = "Select G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_11ED371:   var_B4 = CVar(var_98 & "' or G.LOGSITE_CODE='HO') and G.CODE<>'" & var_9C & "' And D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name") 'String
  loc_11ED37B:   Me.Open var_B4, CVar(MemVar_1F95044), 2
  loc_11ED39E:   CVarUnk
  loc_11ED3A3:   VerifyVarObj
  loc_11ED3A9:   Set var_88 = Me.DGDepart
  loc_11ED3AF:   LateIdStAd
  loc_11ED411:   Call 0.Method_Txt_GotFocus0 (var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_8C(Index))
  loc_11ED419:   global_52 = var_8C.Text
  loc_11ED431:   If (3 Or (var_98 = vbNullString)) Then
  loc_11ED434:     Exit Sub
  loc_11ED435:   End If
  loc_11ED442:   Set var_88 = var_8C(Index)
  loc_11ED448:   Call 0.Method_Txt_GotFocus0 (var_98)
  loc_11ED450:   -1 = var_8C.Text
  loc_11ED462:   var_C4 = "Name"
  loc_11ED49D:   If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_11ED4A6:     Me.MoveFirst
  loc_11ED4C9:     Set var_88 = var_8C(Index)
  loc_11ED4CF:     Call 0.Method_Txt_GotFocus0 (var_98, "Name ='", 0)
  loc_11ED4D7:     1 = var_8C.Text
  loc_11ED4E0:     var_9C = var_C4 & var_98
  loc_11ED4F0:     Me.Find var_9C & "'", , 
  loc_11ED505:   End If
  loc_11ED508: Else
  loc_11ED510:   If (var_92 = CInt(4)) Then
  loc_11ED52F:     Me.Recordset15.CursorLocation = 3
  loc_11ED542:     Set var_88 = var_8C(CInt(3))
  loc_11ED548:     Call 0.Method_Txt_GotFocus0 (var_9C)
  loc_11ED550:      = var_8C.Tag
  loc_11ED573:     var_98 = "Select G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_11ED588:     var_B4 = CVar(var_98 & "' or G.LOGSITE_CODE='HO') and G.CODE<>'" & var_9C & "' And D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name") 'String
  loc_11ED592:     Me.Open var_B4, CVar(MemVar_1F95044), 2
  loc_11ED5B5:     CVarUnk
  loc_11ED5BA:     VerifyVarObj
  loc_11ED5C0:     Set var_88 = 3(New)
  loc_11ED5C6:     LateIdStAd
  loc_11ED622:     Set var_88 = var_8C(Index)
  loc_11ED628:     Call 0.Method_Txt_GotFocus0 (var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_11ED630:     var_88 = var_8C.Text
  loc_11ED648:     If (-1 Or (var_98 = vbNullString)) Then
  loc_11ED64B:       Exit Sub
  loc_11ED64C:     End If
  loc_11ED659:     Set var_88 = var_8C(Index)
  loc_11ED65F:     Call 0.Method_Txt_GotFocus0 (var_98)
  loc_11ED667:      = var_8C.Text
  loc_11ED679:     var_C4 = "Name"
  loc_11ED6B4:     If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_11ED6BD:       Me.MoveFirst
  loc_11ED6E0:       Set var_88 = var_8C(Index)
  loc_11ED6E6:       Call 0.Method_Txt_GotFocus0 (var_98, "Name ='", 0)
  loc_11ED6EE:       1 = var_8C.Text
  loc_11ED707:       Me.Find var_C4 & var_98 & "'", , 
  loc_11ED71C:     End If
  loc_11ED71F:   Else
  loc_11ED727:     If (var_92 = CInt(2)) Then
  loc_11ED732:       var_98 = "{Home}+{End}"
  loc_11ED738:       Proc_303_0_FBACC8(var_98)
  loc_11ED740:     End If
  loc_11ED740:   End If
  loc_11ED740: End If
  loc_11ED740: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11560D8
  'Data Table: 495098
  Dim var_86 As Integer
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim var_B0 As Variant
  Dim var_98 As DataGrid
  Dim var_8C As DataGrid
  loc_1155D42: If (CLng(Shift) = &H1B) Then
  loc_1155D45:   Call Proc_147_47_EBEEB0()
  loc_1155D4A:   Exit Sub
  loc_1155D4B: End If
  loc_1155D59: If (KeyCode = CInt(3)) Then
  loc_1155D69:   Set var_98 = var_9C(KeyCode)
  loc_1155D6F:   Call 0.Method_Txt_KeyDown0 (var_A0)
  loc_1155D77:   var_86 = var_9C.Height
  loc_1155D89:   Set var_8C = var_90(KeyCode)
  loc_1155D8F:   Call 0.Method_Txt_KeyDown0 (var_94)
  loc_1155D97:    = var_90.Top
  loc_1155DA7:   var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_1155DB6:   Me.DGDepart.Top = var_B0
  loc_1155DD5:   Set var_8C = var_90(KeyCode)
  loc_1155DDB:   Call 0.Method_Txt_KeyDown0 (var_94)
  loc_1155DE3:    = var_90.Left
  loc_1155DFA:   Me.DGDepart.Left = CVar(var_94)
  loc_1155E20:   Set var_9C = Nothing
  loc_1155E2B:   Set var_98 = Nothing
  loc_1155E4A:   Set var_90 = ()
  loc_1155E59:   Proc_6_69_134A630(Me.DGDepart, var_90, KeyCode, global_52, Shift)
  loc_1155E70: Else
  loc_1155E78:   If (var_86 = CInt(4)) Then
  loc_1155E88:     Set var_98 = var_9C(KeyCode)
  loc_1155E8E:     Call 0.Method_Txt_KeyDown0 (var_A0, &HFF, 1)
  loc_1155E96:     var_98 = var_9C.Height
  loc_1155EA8:     Set var_8C = var_90(KeyCode)
  loc_1155EAE:     Call 0.Method_Txt_KeyDown0 (var_94, var_9C)
  loc_1155EB6:     0 = var_90.Top
  loc_1155EC6:     var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_1155ED5:     (CVar(var_94)).Top = 
  loc_1155EF4:     Set var_8C = var_90(KeyCode)
  loc_1155EFA:     Call 0.Method_Txt_KeyDown0 (var_94)
  loc_1155F02:      = var_90.Left
  loc_1155F19:     (CVar(var_94)).Left = 
  loc_1155F3F:     Set var_9C = Nothing
  loc_1155F4A:     Set var_98 = Nothing
  loc_1155F78:     Proc_6_69_134A630((), (), KeyCode, global_64, Shift)
  loc_1155F8C:   End If
  loc_1155F8C: End If
  loc_1155FBD: Set var_98 = Me.DGItem
  loc_1155FE2: If ((1 And (CBool(&HFF((CBool(Me.DGDepart.Visible) = 0)).Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_1155FFA:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1156003:     Proc_6_75_E5335C(Shift, arg_14, var_98)
  loc_1156008:   End If
  loc_115600C:   Set var_8C = 0(var_9C)
  loc_1156051:   If CBool((DGItem.DispID_6803000E = "Add") And (KeyCode <> CInt(1)) And (KeyCode <> CInt(2))) Then
  loc_1156069:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1156072:       Proc_6_76_E533C8(Shift)
  loc_1156077:     End If
  loc_1156077:   End If
  loc_115607B:   Set var_8C = (arg_14)
  loc_11560AE:   If CBool((DGItem.DispID_6803000E = "Edit") And (KeyCode <> CInt(2))) Then
  loc_11560C6:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11560CF:       Proc_6_76_E533C8(Shift)
  loc_11560D4:     End If
  loc_11560D4:   End If
  loc_11560D4: End If
  loc_11560D4: Exit Sub
  loc_11560D5: Set var_88 = arg_14
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F678A4
  'Data Table: 495098
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F67773: Proc_6_58_E06050(arg_10)
  loc_F6777E: Proc_6_133_E7FB08(var_94)
  loc_F67787: arg_10 = CInt(var_94)
  loc_F67790: var_96 = KeyAscii
  loc_F6779B: If (var_96 = CInt(3)) Then
  loc_F677BA:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F677CC:     var_A0 = "Name"
  loc_F677E7:     Proc_6_89_1470B00(arg_10(var_96), KeyAscii, global_52, arg_10)
  loc_F677F6:   End If
  loc_F677F9: Else
  loc_F67801:   If (var_96 = CInt(4)) Then
  loc_F67820:     If (CBool(0(var_A0).Visible) = &HFF) Then
  loc_F67827:       Set var_A8 = (arg_10)
  loc_F67832:       var_A0 = "Name"
  loc_F6784D:       Proc_6_89_1470B00(var_A8, KeyAscii, global_64)
  loc_F6785C:     End If
  loc_F6785F:   Else
  loc_F67867:     If (var_96 = CInt(1)) Then
  loc_F67874:       Set var_9C = var_A8(KeyAscii)
  loc_F6787A:       Call 0.Method_Txt_KeyPress0 (arg_10, var_A0)
  loc_F67895:       Proc_6_42_129B55C(var_A8, arg_10, 8)
  loc_F678A1:     End If
  loc_F678A1:   End If
  loc_F678A1: End If
  loc_F678A1: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFE804
  'Data Table: 495098
  Dim var_86 As Integer
  loc_DFE7FF: var_86 = KeyCode
  loc_DFE802: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E51224
  'Data Table: 495098
  loc_E51202: Set var_88 = var_8C(Index)
  loc_E51208: Call 0.Method_Txt_LostFocus0 ()
  loc_E51216: Proc_6_73_E23294(var_8C)
  loc_E51222: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13C43E0
  'Data Table: 495098
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_C8 As Integer
  Dim var_98 As String
  Dim unk_4950A9 As Connection15
  Dim var_8C As Variant
  Dim var_94 As Field20
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_124 As TextBox
  Dim Me As Recordset15
  Dim var_120 As TextBox
  loc_13C3A63: var_86 = Cancel
  loc_13C3A6E: If (var_86 = CInt(1)) Then
  loc_13C3A7C:   Set var_8C = var_90(CInt(1))
  loc_13C3A82:   Call 0.Method_Txt_Validate0 (var_86)
  loc_13C3A8A:   var_98 = "Vr No"
  loc_13C3AAB:   If (Proc_6_27_EA61EC(var_90) = 0) Then
  loc_13C3AB8:     Set var_8C = var_90(Cancel)
  loc_13C3ABE:     Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3AC6:     var_90.SetFocus
  loc_13C3AD4:     arg_10 = &HFF
  loc_13C3AD7:     Exit Sub
  loc_13C3AD8:   End If
  loc_13C3AE6:   Set var_8C = var_90(CInt(1))
  loc_13C3AEC:   Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3AF4:   arg_10 = var_90.Text
  loc_13C3B0C:   If (CDbl(var_98) = CDbl(0)) Then
  loc_13C3B22:     var_B8 = "Vr No Can Not Be 0"
  loc_13C3B28:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_13C3B42:     Set var_8C = var_90(Cancel)
  loc_13C3B48:     Call 0.Method_Txt_Validate0 ()
  loc_13C3B50:     var_90.SetFocus
  loc_13C3B5E:     arg_10 = &HFF
  loc_13C3B61:     Exit Sub
  loc_13C3B62:   End If
  loc_13C3B66:   Set var_8C = (arg_10)
  loc_13C3B81:   If (DGDepart.DispID_6803000E = "Add") Then
  loc_13C3B8A:     Call Proc_147_48_115DC48(MemVar_1F95044)
  loc_13C3B9D:     Set var_8C = var_90(CInt(0))
  loc_13C3BA3:     Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3BAB:     var_90.Text = var_98
  loc_13C3BC0:     Call Proc_147_48_115DC48(MemVar_1F95044)
  loc_13C3BCB:     global_76 = var_98
  loc_13C3BD8:     Call Proc_147_49_110D374(MemVar_1F95044, var_98)
  loc_13C3BE3:     global_80 = var_98
  loc_13C3BEA:   End If
  loc_13C3BEE:   Set var_8C = (var_98)
  loc_13C3C09:   If (DGDepart.DispID_6803000E = "Add") Then
  loc_13C3C12:     var_C8 = 0
  loc_13C3C32:     var_98 = "Select Count(*) From Stock Where DocID='" & global_76
  loc_13C3C42:     unk_4950A9.Execute var_98 & "'", var_B8, -1
  loc_13C3C4A:     var_8C = var_8C.Fields
  loc_13C3C52:     var_C8 = var_90.Item(var_90)
  loc_13C3C5A:     var_94 = var_94.Value
  loc_13C3C81:     If (var_D8 > 0) Then
  loc_13C3C8A:       Call 0.Method_arg_50 (var_98)
  loc_13C3C98:       var_D8 = CVar(var_98) 'String
  loc_13C3CA5:       var_B8 = "Duplicate Vr No."
  loc_13C3CAB:       MsgBox(var_B8, &H40, var_D8, var_F8, var_118)
  loc_13C3CC1:       Call Proc_147_48_115DC48(MemVar_1F95044, var_98)
  loc_13C3CD1:       If (var_98 = vbNullString) Then
  loc_13C3CDE:         Set var_8C = var_90(Cancel)
  loc_13C3CE4:         Call 0.Method_Txt_Validate0 (var_D8)
  loc_13C3CEC:         var_90.SetFocus
  loc_13C3CFA:         arg_10 = &HFF
  loc_13C3CFD:         Exit Sub
  loc_13C3CFE:       End If
  loc_13C3D04:       Call Proc_147_48_115DC48(MemVar_1F95044, var_98)
  loc_13C3D17:       Set var_8C = var_90(CInt(0))
  loc_13C3D1D:       Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3D25:       var_90.Text = arg_10
  loc_13C3D3A:       Call Proc_147_48_115DC48(MemVar_1F95044)
  loc_13C3D45:       global_76 = var_98
  loc_13C3D4E:       arg_10 = &HFF
  loc_13C3D51:       Exit Sub
  loc_13C3D52:     End If
  loc_13C3D58:     var_C8 = 0
  loc_13C3D78:     var_98 = "Select Count(*) From Stock Where DocID='" & global_80
  loc_13C3D88:     unk_4950A9.Execute var_98 & "'", var_B8, -1
  loc_13C3D90:     var_8C = var_8C.Fields
  loc_13C3D98:     var_C8 = var_90.Item(var_90)
  loc_13C3DA0:     var_94 = var_94.Value
  loc_13C3DC7:     If (var_D8 > 0) Then
  loc_13C3DD0:       Call 0.Method_arg_50 (var_98, var_D8)
  loc_13C3DF1:       MsgBox("Duplicate Vr No.", &H40, CVar(var_98), var_F8, var_118)
  loc_13C3E07:       Call Proc_147_49_110D374(MemVar_1F95044, var_98)
  loc_13C3E17:       If (var_98 = vbNullString) Then
  loc_13C3E24:         Set var_8C = var_90(Cancel)
  loc_13C3E2A:         Call 0.Method_Txt_Validate0 (arg_10)
  loc_13C3E32:         var_90.SetFocus
  loc_13C3E40:         arg_10 = &HFF
  loc_13C3E43:         Exit Sub
  loc_13C3E44:       End If
  loc_13C3E4A:       Call Proc_147_49_110D374(MemVar_1F95044, var_98)
  loc_13C3E55:       global_80 = var_98
  loc_13C3E5E:       arg_10 = &HFF
  loc_13C3E61:       Exit Sub
  loc_13C3E62:     End If
  loc_13C3E62:   End If
  loc_13C3E65: Else
  loc_13C3E6D:   If (var_86 = CInt(2)) Then
  loc_13C3E7D:     Set var_8C = var_90(Cancel)
  loc_13C3E83:     Call 0.Method_Txt_Validate0 (var_98, arg_10)
  loc_13C3E8B:     arg_10 = var_90.Text
  loc_13C3EBB:     If (Len(Trim(CVar(var_98))) = 0) Then
  loc_13C3EC3:       var_98 = CStr(MemVar_1F950EC)
  loc_13C3ED0:       Set var_8C = var_90(Cancel)
  loc_13C3ED6:       Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3EDE:       var_90.Text = var_98
  loc_13C3EF0:     Else
  loc_13C3EFA:       Set var_8C = var_90(Cancel)
  loc_13C3F00:       Call 0.Method_Txt_Validate0 ()
  loc_13C3F13:       var_98 = Proc_6_33_15125B8(var_90)
  loc_13C3F20:       Set var_120 = var_124(Cancel)
  loc_13C3F26:       Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3F2E:       var_124.Text = 
  loc_13C3F41:     End If
  loc_13C3F45:     Set var_8C = ()
  loc_13C3F60:     If (DGDepart.DispID_6803000E = "Add") Then
  loc_13C3F69:       Call Proc_147_48_115DC48(MemVar_1F95044)
  loc_13C3F79:       If (var_98 = vbNullString) Then
  loc_13C3F86:         Set var_8C = var_90(Cancel)
  loc_13C3F8C:         Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3F94:         var_90.SetFocus
  loc_13C3FA2:         arg_10 = &HFF
  loc_13C3FA5:         Exit Sub
  loc_13C3FA6:       End If
  loc_13C3FAC:       Call Proc_147_49_110D374(MemVar_1F95044, var_98)
  loc_13C3FBC:       If (var_98 = vbNullString) Then
  loc_13C3FC9:         Set var_8C = var_90(Cancel)
  loc_13C3FCF:         Call 0.Method_Txt_Validate0 (arg_10)
  loc_13C3FD7:         var_90.SetFocus
  loc_13C3FE5:         arg_10 = &HFF
  loc_13C3FE8:         Exit Sub
  loc_13C3FE9:       End If
  loc_13C3FEF:       Call Proc_147_48_115DC48(MemVar_1F95044, var_98)
  loc_13C4002:       Set var_8C = var_90(CInt(0))
  loc_13C4008:       Call 0.Method_Txt_Validate0 (var_98)
  loc_13C4010:       var_90.Text = arg_10
  loc_13C4025:       Call Proc_147_48_115DC48(MemVar_1F95044)
  loc_13C4030:       global_76 = var_98
  loc_13C403D:       Call Proc_147_49_110D374(MemVar_1F95044, var_98)
  loc_13C4048:       global_80 = var_98
  loc_13C404F:     End If
  loc_13C405D:     Set var_8C = var_90(CInt(2))
  loc_13C4063:     Call 0.Method_Txt_Validate0 (var_98)
  loc_13C406B:     var_98 = var_90.Text
  loc_13C408B:     If (Proc_6_91_EF38D0(CDate(var_98)) = 0) Then
  loc_13C4099:       Set var_8C = var_90(CInt(2))
  loc_13C409F:       Call 0.Method_Txt_Validate0 ()
  loc_13C40A7:       var_90.SetFocus
  loc_13C40B3:       Exit Sub
  loc_13C40B4:     End If
  loc_13C40B7:   Else
  loc_13C40BF:     If (var_86 = CInt(3)) Then
  loc_13C4110:       Set var_8C = var_90(Cancel)
  loc_13C4116:       Call 0.Method_Txt_Validate0 (var_98)
  loc_13C411E:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_13C4136:       If ( Or (var_98 = vbNullString)) Then
  loc_13C4146:         Set var_8C = var_90(Cancel)
  loc_13C414C:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_13C4154:         var_90.Text = 
  loc_13C416D:         Set var_8C = var_90(Cancel)
  loc_13C4173:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_13C417B:         var_90.Tag = 
  loc_13C418A:       Else
  loc_13C41C5:         Set var_94 = var_120(Cancel)
  loc_13C41CB:         Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_13C41D3:         var_120.Text = 
  loc_13C4206:         var_90 = Me.Fields.Item("Code")
  loc_13C4217:         var_98 = CStr(var_90.Value)
  loc_13C4224:         Set var_94 = var_120(Cancel)
  loc_13C422A:         Call 0.Method_Txt_Validate0 (var_98)
  loc_13C4232:         var_120.Tag = 
  loc_13C4248:       End If
  loc_13C424B:     Else
  loc_13C4253:       If (var_86 = CInt(4)) Then
  loc_13C42A4:         Set var_8C = var_90(Cancel)
  loc_13C42AA:         Call 0.Method_Txt_Validate0 (var_98)
  loc_13C42B2:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_13C42CA:         If ( Or (var_98 = vbNullString)) Then
  loc_13C42DA:           Set var_8C = var_90(Cancel)
  loc_13C42E0:           Call 0.Method_Txt_Validate0 (vbNullString)
  loc_13C42E8:           var_90.Text = 
  loc_13C4301:           Set var_8C = var_90(Cancel)
  loc_13C4307:           Call 0.Method_Txt_Validate0 (vbNullString)
  loc_13C430F:           var_90.Tag = 
  loc_13C431E:         Else
  loc_13C4359:           Set var_94 = var_120(Cancel)
  loc_13C435F:           Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_13C4367:           var_120.Text = 
  loc_13C43B8:           Set var_94 = var_120(Cancel)
  loc_13C43BE:           Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Code").Value))
  loc_13C43C6:           var_120.Tag = 
  loc_13C43DC:         End If
  loc_13C43DC:       End If
  loc_13C43DC:     End If
  loc_13C43DC:   End If
  loc_13C43DC: End If
  loc_13C43DC: Exit Sub
End Sub

Private Sub DGToDepart_UnknownEvent_9 'F42F54
  'Data Table: 495098
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F42E4B: (False).Visible = 
  loc_F42E6A: If (Me.RecordCount > 0) Then
  loc_F42EA9:   Set var_B4 = var_B8(CInt(4))
  loc_F42EAF:   Call 0.Method_DGToDepart_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_F42EB7:   var_B8.Tag = 
  loc_F42EEA:   var_B0 = Me.Fields.Item("Name")
  loc_F42F09:   Set var_B4 = var_B8(CInt(4))
  loc_F42F0F:   Call 0.Method_DGToDepart_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F42F17:   var_B8.Text = 
  loc_F42F2D: End If
  loc_F42F38: Set var_A8 = var_B0(CInt(4))
  loc_F42F3E: Call 0.Method_DGToDepart_UnknownEvent_90 ()
  loc_F42F46: var_B0.SetFocus
  loc_F42F52: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10AA608
  'Data Table: 495098
  Dim var_A8 As DataGrid
  Dim var_BC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Variant
  Dim var_100 As Variant
  loc_10AA34C: On Error Goto loc_10AA600
  loc_10AA34F: Call Proc_147_47_EBEEB0()
  loc_10AA364: Set var_A8 = (CVar(CLng(global_96)))
  loc_10AA37C: (DGDepart.DispID_26).InsertRows , 
  loc_10AA38E: Set var_BC = (CVar(CLng()))
  loc_10AA394: var_BC.DeleteRowLabels , 
  loc_10AA3A6: Set var_F0 = (CVar(CLng()))
  loc_10AA3C3: Set var_104 = var_108(0)
  loc_10AA3C9: Call 0.Method_TxtGrid_GotFocus0 (CStr(DGDepart.DispID_41))
  loc_10AA3D1: var_108.Tag = 
  loc_10AA3FE: Set var_A8 = var_BC(Index)
  loc_10AA404: Call 0.Method_TxtGrid_GotFocus0 (0)
  loc_10AA40C: var_BC.MaxLength = 
  loc_10AA422: ().DeleteRowLabels , 
  loc_10AA42B: var_110 = CLng()
  loc_10AA43B: If (var_110 = CLng(1)) Then
  loc_10AA47F:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10AA482:     Exit Sub
  loc_10AA483:   End If
  loc_10AA48D:   (var_110).InsertRows , 
  loc_10AA4A7:   Set var_BC = CVar(CLng())(CVar(CLng(1)))
  loc_10AA4D1:   If (CStr(DGDepart.DispID_41) <> vbNullString) Then
  loc_10AA4DA:     Me.MoveFirst
  loc_10AA4E9:     ().InsertRows , 
  loc_10AA503:     Set var_BC = CVar(CLng())(CVar(CLng(9)))
  loc_10AA514:     var_100 = CVar(CStr(DGDepart.DispID_41)) 'String
  loc_10AA51A:     Proc_6_17_EAAE40(var_128)
  loc_10AA543:     Me.Find CStr("Code =" & var_128), 0, 1
  loc_10AA573:     If (Me.EOF = &HFF) Then
  loc_10AA57C:       Me.MoveFirst
  loc_10AA581:     End If
  loc_10AA581:   End If
  loc_10AA584: Else
  loc_10AA58B:   If Not (var_110 = CLng(7)) Then
  loc_10AA595:     If (var_110 = CLng(3)) Then
  loc_10AA598:     End If
  loc_10AA5A1:     If (global_84 = 0) Then
  loc_10AA5AC:       var_10C = "{Home}+{End}"
  loc_10AA5B2:       Proc_303_0_FBACC8(CStr("Code =" & var_128), 0)
  loc_10AA5BA:     End If
  loc_10AA5BD:   Else
  loc_10AA5C4:     If (var_110 = CLng(4)) Then
  loc_10AA5D4:       Set var_A8 = var_BC(Index)
  loc_10AA5DA:       Call 0.Method_TxtGrid_GotFocus0 (CStr("Code =" & var_128), var_158)
  loc_10AA5E2:       var_100 = var_BC.Text
  loc_10AA5F2:       global_88 = Val(CStr("Code =" & var_128))
  loc_10AA5FF:     End If
  loc_10AA5FF:   End If
  loc_10AA5FF: End If
  loc_10AA5FF: Exit Sub
  loc_10AA600: ' Referenced from: 10AA34C
  loc_10AA600: Proc_6_60_E63754(global_88)
  loc_10AA605: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1191204
  'Data Table: 495098
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As DataGrid
  Dim var_AC As Long
  loc_1190E10: On Error Goto loc_11911FD
  loc_1190E1D: If (CLng(Shift) = &H1B) Then
  loc_1190E2C:   Set var_88 = var_8C(0)
  loc_1190E32:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_1190E3A:    = var_8C.Tag
  loc_1190E4B:   Set var_94 = var_98(0)
  loc_1190E51:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_1190E59:   var_98.Text = 
  loc_1190E75:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1190E7E:   Set var_88 = (arg_14)
  loc_1190E9A:   Set var_88 = var_8C(0)
  loc_1190EA0:   Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_1190EA8:   var_8C.Visible = DGItem.DispID_8001
  loc_1190EB4:   Exit Sub
  loc_1190EB5: End If
  loc_1190EBF: ().DeleteRowLabels , 
  loc_1190EC8: var_AC = CLng()
  loc_1190ED8: If (var_AC = CLng(1)) Then
  loc_1190EF3:   Set var_98 = Nothing
  loc_1190EFE:   Set var_94 = Nothing
  loc_1190F2C:   Proc_6_69_134A630(Me.DGItem, (var_AC), KeyCode, global_60, Shift)
  loc_1190F4A:   If (CLng(Shift) = &HD) Then
  loc_1190F58:     Call Proc_147_43_13D0A24(KeyCode, 0, var_B0, &HFF)
  loc_1190F63:     If (var_B0 = &HFF) Then
  loc_1190FA9:       Proc_6_62_1254E68(var_94(1)(1), 0(0(var_98)), KeyCode, Shift, global_84)
  loc_1190FB9:     End If
  loc_1190FB9:   End If
  loc_1190FBC: Else
  loc_1190FC3:   If (var_AC = CLng(3)) Then
  loc_1191006:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_84 = &HFF))) Then
  loc_1191016:       Call Proc_147_43_13D0A24(0, 0, var_B2, 9)
  loc_1191021:       If (var_B2 = &HFF) Then
  loc_1191067:         Proc_6_62_1254E68(3(2), (0), KeyCode, Shift, global_84)
  loc_1191077:       End If
  loc_1191077:     End If
  loc_119107A:   Else
  loc_1191081:     If (var_AC = CLng(7)) Then
  loc_11910C4:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_84 = &HFF))) Then
  loc_11910D4:         Call Proc_147_43_13D0A24(0, 0, var_B2, 3)
  loc_11910DF:         If (var_B2 = &HFF) Then
  loc_1191127:           Proc_6_62_1254E68(0(0), (0), KeyCode, Shift, global_84)
  loc_1191137:         End If
  loc_1191137:       End If
  loc_119113A:     Else
  loc_1191141:       If (var_AC = CLng(4)) Then
  loc_1191184:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_84 = &HFF))) Then
  loc_1191194:           Call Proc_147_43_13D0A24(0, 0, var_B2, 9)
  loc_119119F:           If (var_B2 = &HFF) Then
  loc_11911EC:             Proc_6_62_1254E68(0(CByte(2)), (0), KeyCode, Shift, global_84)
  loc_11911FC:           End If
  loc_11911FC:         End If
  loc_11911FC:       End If
  loc_11911FC:     End If
  loc_11911FC:   End If
  loc_11911FC: End If
  loc_11911FC: Exit Sub
  loc_11911FD: ' Referenced from: 1190E10
  loc_11911FD: Proc_6_60_E63754(CByte((CInt(7) + 1)), 0)
  loc_1191202: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F9A0C4
  'Data Table: 495098
  Dim arg_10 As Integer
  Dim var_98 As DataGrid
  Dim var_9C As Long
  Dim var_94 As Variant
  loc_F99F50: On Error Goto loc_F9A0BB
  loc_F99F56: Proc_6_58_E06050(arg_10)
  loc_F99F61: Proc_6_133_E7FB08(var_94)
  loc_F99F6A: arg_10 = CInt(var_94)
  loc_F99F7A: arg_10(arg_10).DeleteRowLabels , 
  loc_F99F83: var_9C = CLng()
  loc_F99F93: If (var_9C = CLng(1)) Then
  loc_F99FB2:   If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F99FB9:     Set var_A8 = (var_9C)
  loc_F99FC4:     var_A0 = "Name"
  loc_F99FDF:     Proc_6_89_1470B00(var_A8, KeyAscii, global_60)
  loc_F99FEE:   End If
  loc_F99FF1: Else
  loc_F99FF8:   If (var_9C = CLng(3)) Then
  loc_F9A005:     Set var_98 = var_A8(KeyAscii)
  loc_F9A00B:     Call 0.Method_TxtGrid_KeyPress0 (arg_10, var_A0)
  loc_F9A026:     Proc_6_42_129B55C(var_A8, arg_10, 8)
  loc_F9A035:   Else
  loc_F9A03C:     If (var_9C = CLng(7)) Then
  loc_F9A049:       Set var_98 = var_A8(KeyAscii)
  loc_F9A04F:       Call 0.Method_TxtGrid_KeyPress0 (3)
  loc_F9A06A:       Proc_6_42_129B55C(var_A8, arg_10, 8)
  loc_F9A079:     Else
  loc_F9A080:       If (var_9C = CLng(4)) Then
  loc_F9A08D:         Set var_98 = var_A8(KeyAscii)
  loc_F9A093:         Call 0.Method_TxtGrid_KeyPress0 (2)
  loc_F9A0AE:         Proc_6_42_129B55C(var_A8, arg_10, 6)
  loc_F9A0BA:       End If
  loc_F9A0BA:     End If
  loc_F9A0BA:   End If
  loc_F9A0BA: End If
  loc_F9A0BA: Exit Sub
  loc_F9A0BB: ' Referenced from: F99F50
  loc_F9A0BB: Proc_6_60_E63754(2)
  loc_F9A0C0: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1066978
  'Data Table: 495098
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_180 As Double
  Dim var_104 As DataGrid
  Dim var_A8 As String
  loc_1066714: On Error Goto loc_1066971
  loc_106671A: var_86 = KeyCode
  loc_1066723: If (var_86 = 0) Then
  loc_1066730:   (var_86).DeleteRowLabels , 
  loc_1066739:   var_A0 = CLng()
  loc_1066749:   If (var_A0 = CLng(1)) Then
  loc_106676F:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_1066780:       Call TxtGrid_KeyDown(KeyCode, global_86)
  loc_1066789:       Set var_AC = var_A0(0)
  loc_1066794:       var_A8 = "Name"
  loc_10667AF:       Proc_6_89_1470B00(var_AC, KeyCode, global_60)
  loc_10667BE:     End If
  loc_10667C1:   Else
  loc_10667C8:     If Not (var_A0 = CLng(3)) Then
  loc_10667D2:       If (var_A0 = CLng(4)) Then
  loc_10667D5:       End If
  loc_10667E2:       Set var_8C = var_AC(KeyCode)
  loc_10667E8:       Call 0.Method_TxtGrid_KeyUp0 (var_A8, Shift)
  loc_10667FD:       var_180 = Val(var_AC.Text)
  loc_106680A:       &HFF(var_180).InsertRows , 
  loc_1066822:       (CVar(CLng())).DeleteRowLabels , 
  loc_1066866:       LateIdCallSt
  loc_1066897:       1(1(CVar(CStr(Format(CVar(var_180), "0.000"))))).InsertRows CVar(CLng()), 
  loc_10668B1:       Set var_104 = CVar(CLng())(CVar(CLng(4)))
  loc_10668CA:       var_180 = Val(CStr(DGItem.DispID_41))
  loc_10668D7:       (var_180).InsertRows , 
  loc_10668F7:       CVar(CLng())(CVar(CLng(5))).InsertRows , 
  loc_1066911:       Set var_AC = CVar(CLng())(CVar(CLng(3)))
  loc_106693E:       LateIdCallSt
  loc_106696B:       Call Proc_147_51_F72E4C((CVar(CStr((Val(CStr(DGItem.DispID_41)) * var_180)))))
  loc_1066970:     End If
  loc_1066970:   End If
  loc_1066970: End If
  loc_1066970: Exit Sub
  loc_1066971: ' Referenced from: 1066714
  loc_1066971: Proc_6_60_E63754()
  loc_1066976: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E224CC
  'Data Table: 495098
  Dim arg_10 As Integer
  loc_E224A8: On Error Goto loc_E224C3
  loc_E224B6: Call Proc_147_43_13D0A24(Cancel, &HFF)
  loc_E224BF: arg_10 = Not(var_88)
  loc_E224C2: Exit Sub
  loc_E224C3: ' Referenced from: E224A8
  loc_E224C3: Proc_6_60_E63754(arg_10)
  loc_E224C8: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F4C7F4
  'Data Table: 495098
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4C6EB: Me.DGDepart.Visible = False
  loc_F4C70A: If (Me.RecordCount > 0) Then
  loc_F4C749:   Set var_B4 = var_B8(CInt(3))
  loc_F4C74F:   Call 0.Method_DGDepart_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_F4C757:   var_B8.Tag = 
  loc_F4C78A:   var_B0 = Me.Fields.Item("Name")
  loc_F4C7A9:   Set var_B4 = var_B8(CInt(3))
  loc_F4C7AF:   Call 0.Method_DGDepart_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F4C7B7:   var_B8.Text = 
  loc_F4C7CD: End If
  loc_F4C7D8: Set var_A8 = var_B0(CInt(3))
  loc_F4C7DE: Call 0.Method_DGDepart_UnknownEvent_90 ()
  loc_F4C7E6: var_B0.SetFocus
  loc_F4C7F2: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '106D464
  'Data Table: 495098
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  loc_106D1F3: Me.DGItem.Visible = False
  loc_106D212: If (Me.RecordCount > 0) Then
  loc_106D21F:   ().InsertRows , 
  loc_106D271:   LateIdCallSt
  loc_106D297:   CVar(CLng())(CVar(CLng(1))(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_106D2E9:   LateIdCallSt
  loc_106D30F:   CVar(CLng())(CVar(CLng(9))(CVar(CStr(Me.Fields.Item("Code").Value)))).InsertRows , 
  loc_106D361:   LateIdCallSt
  loc_106D397:   var_B0 = Me.Fields.Item("Rate")
  loc_106D3A6:   CVar(CLng())(CVar(CLng(2))(CVar(CStr(Me.Fields.Item("Unit").Value)))).InsertRows , 
  loc_106D3AF:   var_D4 = CVar(CLng()) 'Long
  loc_106D3B7:   var_F4 = CVar(CLng(7)) 'Long
  loc_106D3EC:   Set var_128 = 1(CVar(CStr(Format(CVar(var_B0), "0.00"))))
  loc_106D3F2:   LateIdCallSt
  loc_106D410: End If
  loc_106D41C: Set var_A8 = var_B0(0)
  loc_106D422: Call 0.Method_DGItem_UnknownEvent_90 (var_15A, var_128, 1)
  loc_106D42A: var_F4 = var_B0.Visible
  loc_106D43C: If (var_15A = &HFF) Then
  loc_106D448:   Set var_A8 = var_B0(0)
  loc_106D44E:   Call 0.Method_DGItem_UnknownEvent_90 (var_D4)
  loc_106D456:   var_B0.SetFocus
  loc_106D462: End If
  loc_106D462: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E62DC4
  'Data Table: 495098
  Dim var_AC As TextBox
  loc_E62D89: Set var_A8 = (CVar(CLng("14737632")))
  loc_E62DA2: Set var_A8 = var_AC(0)
  loc_E62DA8: Call 0.Method_FGrid_UnknownEvent_00 (0)
  loc_E62DB0: var_AC.Visible = DGItem.DispID_10
  loc_E62DBC: Call Proc_147_47_EBEEB0()
  loc_E62DC1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E699E8
  'Data Table: 495098
  Dim var_8C As TextBox
  loc_E699A4: Set var_88 = var_8C(0)
  loc_E699AA: Call 0.Method_FGrid_UnknownEvent_10 (var_8E)
  loc_E699B2:  = var_8C.Visible
  loc_E699C4: If (var_8E = 0) Then
  loc_E699D7:   Set var_88 = (CVar(CLng(global_96)))
  loc_E699E5: End If
  loc_E699E5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1E410
  'Data Table: 495098
  loc_E1E401: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1E40F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E37F84
  'Data Table: 495098
  Dim var_8C As TextBox
  loc_E37F67: Set var_88 = var_8C(0)
  loc_E37F6D: Call 0.Method_FGrid_UnknownEvent_90 (0)
  loc_E37F75: var_8C.Visible = 
  loc_E37F81: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '113A514
  'Data Table: 495098
  Dim var_98 As Variant
  Dim var_C0 As DataGrid
  Dim var_B8 As Variant
  Dim var_D4 As Variant
  Dim var_88 As DataGrid
  Dim var_BC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_113A190: On Error Goto loc_113A50D
  loc_113A197: Set var_88 = ()
  loc_113A1B2: If (DGItem.DispID_6803000E = "Browse") Then
  loc_113A1B5:   Exit Sub
  loc_113A1B6: End If
  loc_113A1C0: var_B8 = ().RowCount
  loc_113A1D3: var_D4 = (var_B8).RowCount
  loc_113A22A: If ( And (CDbl(Val(CStr(var_D4((CLng(Cancel) = &H26)).Tag))) = CDbl((CLng(var_B8) - (CLng(var_D4) - 1))))) Then
  loc_113A23D:   Set var_88 = (CVar(CLng(global_96)))
  loc_113A253:   var_BC = "+{Tab}"
  loc_113A259:   Proc_303_0_FBACC8(CStr(var_D4((CLng(Cancel) = &H26)).Tag), 0)
  loc_113A263:   Cancel = 0
  loc_113A269: Else
  loc_113A273:   var_B8 = DGItem.DispID_26(Cancel).RowCount
  loc_113A2C0:   If ( And (CDbl(Val(CStr(var_B8((CLng(Cancel) = &H28)).Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_113A2D3:     Set var_88 = (CVar(CLng(global_96)))
  loc_113A2E6:     Call Proc_147_52_ED28F0(0)
  loc_113A2EB:   End If
  loc_113A2EB: End If
  loc_113A2FE: DGItem.DispID_26(Cancel).InsertRows , 
  loc_113A317: (CVar(CStr(CLng()))).Tag = 
  loc_113A33B: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_113A348:   ().DeleteRowLabels , 
  loc_113A351:   var_EC = CLng()
  loc_113A361:   If (var_EC = CLng(1)) Then
  loc_113A36E:     (var_EC).InsertRows , 
  loc_113A386:     (CVar(CLng())).DeleteRowLabels , 
  loc_113A3A4:     LateIdCallSt
  loc_113A3C6:     (CVar(CLng())(vbNullString)).InsertRows , 
  loc_113A3EC:     LateIdCallSt
  loc_113A408:     CVar(CLng())(CVar(CLng(9))(vbNullString)).InsertRows , 
  loc_113A42E:     LateIdCallSt
  loc_113A44A:     CVar(CLng())(CVar(CLng(2))(vbNullString)).InsertRows , 
  loc_113A453:     var_98 = CVar(CLng()) 'Long
  loc_113A46A:     Set var_C0 = CVar(CLng(7))(vbNullString)
  loc_113A470:     LateIdCallSt
  loc_113A485:   Else
  loc_113A48C:     If Not (var_EC = CLng(7)) Then
  loc_113A496:       If (var_EC = CLng(3)) Then
  loc_113A499:       End If
  loc_113A4A3:       var_98(var_C0).InsertRows , 
  loc_113A4BB:       (CVar(CLng())).DeleteRowLabels , 
  loc_113A4D9:       LateIdCallSt
  loc_113A4F1:       Call Proc_147_51_F72E4C(CVar(CLng())(vbNullString))
  loc_113A4F6:     End If
  loc_113A4F6:   End If
  loc_113A4F6: End If
  loc_113A4FC: If (Cancel = &HD) Then
  loc_113A504:   global_84 = 0
  loc_113A507: End If
  loc_113A509: Cancel = 0
  loc_113A50C: Exit Sub
  loc_113A50D: ' Referenced from: 113A190
  loc_113A50D: Proc_6_60_E63754(Cancel)
  loc_113A512: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10378
  'Data Table: 495098
  loc_E10369: Call FGrid_UnknownEvent_C()
  loc_E10373: global_84 = 0
  loc_E10376: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '102C1B4
  'Data Table: 495098
  Dim var_AC As DataGrid
  Dim var_B0 As Long
  Dim var_B4 As String
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_102BF9F: var_88 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_102BFA9: On Error Goto loc_102C1AB
  loc_102BFB6: ().DeleteRowLabels , 
  loc_102BFBF: var_B0 = CLng()
  loc_102BFCF: If (var_B0 = CLng(1)) Then
  loc_102BFD6:   Set var_C8 = (var_B0)
  loc_102BFFA:   var_B4 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_102C027:   Set var_B8 = var_C8
  loc_102C039:   Proc_6_63_110B734(Me, var_B8, (), 0)
  loc_102C061:   Set var_AC = var_B8(0)
  loc_102C067:   Call 0.Method_FGrid_UnknownEvent_C0 (var_B4, 0, Asc(var_B4))
  loc_102C06F:   0 = var_B8.Text
  loc_102C088:   If (Len(var_B4) <= 1) Then
  loc_102C097:     Set var_AC = var_B8(0)
  loc_102C09D:     Call 0.Method_FGrid_UnknownEvent_C0 (var_B4)
  loc_102C0A5:     var_CE = var_B8.Text
  loc_102C0B6:     Set var_BC = var_C8(0)
  loc_102C0BC:     Call 0.Method_FGrid_UnknownEvent_C0 (var_B4)
  loc_102C0C4:     var_C8.Text = 
  loc_102C0D7:   End If
  loc_102C0E3:   Set var_AC = var_B8(0)
  loc_102C0E9:   Call 0.Method_FGrid_UnknownEvent_C0 (var_B4)
  loc_102C0F1:    = var_B8.Text
  loc_102C103:   Set var_BC = var_C8(0)
  loc_102C109:   Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_B4))
  loc_102C111:   var_C8.SelStart = 
  loc_102C127: Else
  loc_102C12E:   If Not (var_B0 = CLng(7)) Then
  loc_102C138:     If Not (var_B0 = CLng(3)) Then
  loc_102C142:       If (var_B0 = CLng(4)) Then
  loc_102C145:       End If
  loc_102C145:     End If
  loc_102C183:     Proc_6_63_110B734(Me, (), (), 0)
  loc_102C195:   End If
  loc_102C195: End If
  loc_102C19F: If (CLng(Cancel) <> &HD) Then
  loc_102C1A7:   global_84 = &HFF
  loc_102C1AA: End If
  loc_102C1AA: Exit Sub
  loc_102C1AB: ' Referenced from: 102BFA9
  loc_102C1AB: Proc_6_60_E63754(global_84, &HFF)
  loc_102C1B0: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1050970
  'Data Table: 495098
  Dim var_9C As Variant
  Dim var_8C As DataGrid
  loc_105070C: On Error Goto loc_1050968
  loc_1050713: Set var_8C = ()
  loc_105072E: If (DGItem.DispID_6803000E = "Browse") Then
  loc_1050731:   Exit Sub
  loc_1050732: End If
  loc_105073C: ().RandomDataFill
  loc_105074F: If (CLng() = CLng(0)) Then
  loc_1050752:   Exit Sub
  loc_1050753: End If
  loc_1050764: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_1050771:   ().InsertRows , 
  loc_1050786:   If (CLng() >= 1) Then
  loc_10507C0:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_10507E2:       If (CLng(().RowCount) > 2) Then
  loc_10507EF:         ().InsertRows , 
  loc_1050801:         Set var_110 = (CVar(CLng()))
  loc_105081C:       Else
  loc_105082F:         DGItem.DispID_10000(1).RowCount = 
  loc_105085D:         Set var_110 = CInt(0)(CVar(CStr(Proc_6_127_F25B10(()))))
  loc_1050884:         Set var_8C = DGItem.DispID_10000(1)
  loc_1050892:       End If
  loc_1050892:       Call Proc_147_51_F72E4C(DGItem.DispID_6)
  loc_105089B:       Set var_8C = ()
  loc_10508B6:       If (DGItem.DispID_6803000E = "Add") Then
  loc_10508DE:         For var_11C =  To CInt((CLng(1(var_86).RowCount) - 1)):  = var_11C 'Integer
  loc_10508E8:           var_9C = CVar(CLng(var_86)) 'Long
  loc_1050902:           Set var_8C = CVar(CLng(0))(CVar(CStr(var_86)))
  loc_1050908:           LateIdCallSt
  loc_1050919:         Next var_11C 'Integer
  loc_105091E:       End If
  loc_105091E:     End If
  loc_1050921:   Else
  loc_1050942:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_1050952:   End If
  loc_1050956:   Set var_8C = ()
  loc_1050967: End If
  loc_1050967: Exit Sub
  loc_1050968: ' Referenced from: 105070C
  loc_1050968: Proc_6_60_E63754(DGItem.DispID_8001)
  loc_105096D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9E9D0
  'Data Table: 495098
  loc_E9E96A: ().InsertRows , 
  loc_E9E982: (CVar(CLng())).DeleteRowLabels , 
  loc_E9E994: Set var_F0 = (CVar(CLng()))
  loc_E9E9B3: (CVar(CStr(DGItem.DispID_41))).ToolTipText = 
  loc_E9E9CE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40B0C
  'Data Table: 495098
  Dim var_8C As TextBox
  loc_E40AEB: Set var_88 = var_8C(0)
  loc_E40AF1: Call 0.Method_FGrid_UnknownEvent_150 (0)
  loc_E40AF9: var_8C.Visible = 
  loc_E40B05: Call Proc_147_47_EBEEB0()
  loc_E40B0A: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E96CF0
  'Data Table: 495098
  Dim Me As Recordset15
  loc_E96C7E: On Error Goto loc_E96CE7
  loc_E96C87: Me.MoveFirst
  loc_E96CB1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96CD9: Proc_5_0_1107AD0(&HFF, Me, global_56)
  loc_E96CE1: Call Proc_147_45_13F34A4(0)
  loc_E96CE6: Exit Sub
  loc_E96CE7: ' Referenced from: E96C7E
  loc_E96CE7: Proc_6_60_E63754(var_A0)
  loc_E96CEC: Exit Sub
End Sub

Public Sub Proc_147_43_13D0A24(arg_C, arg_10) '13D0A24
  'Data Table: 495098
  Dim var_90 As Variant
  Dim var_A4 As Long
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim var_118 As DataGrid
  Dim var_D4 As Variant
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_B4 As String
  Dim unk_4950A9 As Connection15
  Dim var_8C As Recordset15
  Dim var_14C As Variant
  Dim var_19C As Double
  loc_13D00AA: ().DeleteRowLabels , 
  loc_13D00C3: If (CLng() = CLng(1)) Then
  loc_13D0114:   Set var_90 = var_B0(arg_C)
  loc_13D011A:   Call 0.Method_Proc_147_43_13D0A240 (var_B4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_13D0122:   var_A4 = var_B0.Text
  loc_13D013A:   If ( Or (var_B4 = vbNullString)) Then
  loc_13D0147:     ().InsertRows , 
  loc_13D016D:     LateIdCallSt
  loc_13D0189:     CVar(CLng())(CVar(CLng(1))(vbNullString)).InsertRows , 
  loc_13D01AF:     LateIdCallSt
  loc_13D01CB:     CVar(CLng())(CVar(CLng(9))(vbNullString)).InsertRows , 
  loc_13D01F1:     LateIdCallSt
  loc_13D020D:     CVar(CLng())(CVar(CLng(2))(vbNullString)).InsertRows , 
  loc_13D0233:     LateIdCallSt
  loc_13D024F:     CVar(CLng())(CVar(CLng(7))(vbNullString)).InsertRows , 
  loc_13D0275:     LateIdCallSt
  loc_13D0291:     CVar(CLng())(CVar(CLng(6))(vbNullString)).InsertRows , 
  loc_13D02B7:     LateIdCallSt
  loc_13D02D3:     CVar(CLng())(CVar(CLng(5))(vbNullString)).InsertRows , 
  loc_13D02F9:     LateIdCallSt
  loc_13D0315:     CVar(CLng())(CVar(CLng(3))(vbNullString)).InsertRows , 
  loc_13D031E:     var_C4 = CVar(CLng()) 'Long
  loc_13D0335:     Set var_B0 = CVar(CLng(4))(vbNullString)
  loc_13D033B:     LateIdCallSt
  loc_13D0350:   Else
  loc_13D035A:     var_C4(var_B0).InsertRows , 
  loc_13D03AC:     LateIdCallSt
  loc_13D03D2:     CVar(CLng())(CVar(CLng(1))(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_13D0424:     LateIdCallSt
  loc_13D044A:     CVar(CLng())(CVar(CLng(9))(CVar(CStr(Me.Fields.Item("Code").Value)))).InsertRows , 
  loc_13D049C:     LateIdCallSt
  loc_13D04E1:     CVar(CLng())(CVar(CLng(2))(CVar(CStr(Me.Fields.Item("Unit").Value)))).InsertRows , 
  loc_13D052D:     LateIdCallSt
  loc_13D0555:     1(1(CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))))).InsertRows CVar(CLng(7)), CVar(CLng())
  loc_13D05A7:     LateIdCallSt
  loc_13D05CD:     CVar(CLng())(CVar(CLng(4))(CVar(CStr(Me.Fields.Item("ConvRatio").Value)))).InsertRows , 
  loc_13D05D6:     var_D4 = CVar(CLng()) 'Long
  loc_13D0608:     var_128 = Me.Fields.Item("IssueUnit").Value
  loc_13D0611:     var_138 = CVar(CStr(var_128)) 'String
  loc_13D0619:     Set var_13C = CVar(CLng(6))(var_138)
  loc_13D061F:     LateIdCallSt
  loc_13D063B:   End If
  loc_13D0645:   var_D4(var_13C).InsertRows , 
  loc_13D065F:   Set var_B0 = CVar(CLng())(CVar(CLng(9)))
  loc_13D067F:   Set var_118 = var_13C(CInt(3))
  loc_13D0685:   Call 0.Method_Proc_147_43_13D0A240 (var_174)
  loc_13D068D:   DGItem.DispID_41 = var_13C.Tag
  loc_13D06A6:   var_B4 = CStr(var_128)
  loc_13D06C8:   unk_4950A9.Execute "SELECT RATE FROM ITEMRATE WHERE ITEMCODE='" & var_B4 & "' AND RestCode='" & var_174 & "'", var_138, -1
  loc_13D06D3:   Set var_8C = var_184
  loc_13D070F:   If (var_8C.RecordCount > 0) Then
  loc_13D071C:     (var_184).InsertRows , 
  loc_13D0725:     var_D4 = CVar(CLng()) 'Long
  loc_13D0749:     var_B0 = var_8C.Fields.Item("Rate")
  loc_13D0758:     Proc_6_47_EF6560(var_128, CVar(var_B0))
  loc_13D0761:     var_14C = CVar(CStr(var_128)) 'String
  loc_13D076F:     LateIdCallSt
  loc_13D078B:     Call Proc_147_51_F72E4C(CVar(CLng(7))(var_14C))
  loc_13D0790:   End If
  loc_13D0793: Else
  loc_13D079A:   If (var_A4 = CLng(7)) Then
  loc_13D07A9:     Set var_90 = var_B0(0)
  loc_13D07AF:     Call 0.Method_Proc_147_43_13D0A240 (var_B4)
  loc_13D07B7:     var_D4 = var_B0.Text
  loc_13D07C4:     var_19C = Val(var_B4)
  loc_13D07D1:     (var_19C).InsertRows , 
  loc_13D07E9:     (CVar(CLng())).DeleteRowLabels , 
  loc_13D07F2:     var_104 = CVar(CLng()) 'Long
  loc_13D0806:     var_128 = "0.00"
  loc_13D0816:     var_138 = Format(CVar(var_19C), var_128)
  loc_13D082D:     LateIdCallSt
  loc_13D0854:     Call Proc_147_51_F72E4C(1(CVar(CStr(var_138))), 1)
  loc_13D085C:   Else
  loc_13D0863:     If Not (var_A4 = CLng(3)) Then
  loc_13D086D:       If (var_A4 = CLng(4)) Then
  loc_13D0870:       End If
  loc_13D087A:       (var_104).DeleteRowLabels , 
  loc_13D088D:       If (CLng() = CLng(4)) Then
  loc_13D089C:         Set var_90 = var_B0(0)
  loc_13D08A2:         Call 0.Method_Proc_147_43_13D0A240 (var_B4)
  loc_13D08AA:          = var_B0.Text
  loc_13D08CF:         If (global_88 <> CDbl(Val(var_B4))) Then
  loc_13D0901:           If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_128, var_138, var_14C) = 7) Then
  loc_13D0909:             Proc_147_43_13D0A24 = 0
  loc_13D090F:           End If
  loc_13D090F:         End If
  loc_13D090F:       End If
  loc_13D091B:       Set var_90 = var_B0(0)
  loc_13D0921:       Call 0.Method_Proc_147_43_13D0A240 (var_B4)
  loc_13D0929:       var_19C = var_B0.Text
  loc_13D0936:       var_19C = Val(var_B4)
  loc_13D0943:       (var_19C).InsertRows , 
  loc_13D095B:       (CVar(CLng())).DeleteRowLabels , 
  loc_13D0964:       var_104 = CVar(CLng()) 'Long
  loc_13D099F:       LateIdCallSt
  loc_13D09C6:       Call Proc_147_51_F72E4C(1(CVar(CStr(Format(CVar(var_19C), "0.000")))), 1)
  loc_13D09CB:     End If
  loc_13D09CB:   End If
  loc_13D09CB: End If
  loc_13D09D6: If (arg_10 = 0) Then
  loc_13D09DD:   Set var_90 = var_104(&HFF)
  loc_13D09F9:   Set var_90 = var_B0(0)
  loc_13D09FF:   Call 0.Method_Proc_147_43_13D0A240 (0)
  loc_13D0A07:   var_B0.Visible = DGItem.DispID_8001
  loc_13D0A13: End If
  loc_13D0A18: Set var_8C = Nothing
  loc_13D0A1B: Proc_147_43_13D0A24 = 
End Sub

Public Sub Proc_147_44_F2989C
  'Data Table: 495098
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_F2979E: Set var_8C = var_86(var_8E)
  loc_F297A4: Call 0.Method_Proc_147_44_F2989CC (CByte(0))
  loc_F297B4: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_F297CA:   Set var_8C = var_98(CInt(var_86))
  loc_F297D0:   Call 0.Method_Proc_147_44_F2989C0 (vbNullString)
  loc_F297D8:   var_98.Text = 
  loc_F297F4:   Set var_8C = var_98(CInt(var_86))
  loc_F297FA:   Call 0.Method_Proc_147_44_F2989C0 (vbNullString)
  loc_F29802:   var_98.Tag = 
  loc_F29811: Next var_92 'Byte
  loc_F29824: (vbNullString).Caption = 
  loc_F2983F: (1).RowCount = 
  loc_F29864: Set var_98 = (CVar(CStr(CLng(().RowCount))))
  loc_F2988D: Set var_8C = DGItem.DispID_10000(1)
  loc_F2989B: Exit Sub
End Sub

Public Sub Proc_147_45_13F34A4
  'Data Table: 495098
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As String
  Dim unk_4950A9 As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_12C As TextBox
  Dim var_128 As Label
  Dim var_94 As Recordset15
  Dim var_134 As String
  Dim var_90 As Recordset15
  Dim var_8A As Integer
  loc_13F2AA4: On Error Goto loc_13F349D
  loc_13F2ABE: If (Me.RecordCount > 0) Then
  loc_13F2ACE:   var_D0 = "Select Distinct SH.Docid,SH.SNo,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,SH.Rate,SH.Amount,SH.GodownCode,SH.Item,SH.QtyRec,SH.Unit,SH.RECDQty,SH.RECDUnit,SH.ConvRatio,SH.ContraDocId,I.Name As ItemName From Stock SH Left Join ItemMast I On I.Code=SH.Item And I.ItemType='Store' where DocID='"
  loc_13F2B17:   unk_4950A9.Execute CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_13F2B22:   Set var_88 = var_128
  loc_13F2B78:   Call 0.Method_Proc_147_45_13F34A40 (Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID"))))
  loc_13F2B80:   var_12C.Text = var_12C(CInt(0))
  loc_13F2BC9:   (Proc_6_38_E69628(CVar(var_88.Fields.Item("vPrefix")))).Caption = 
  loc_13F2C11:   Set var_128 = var_12C(CInt(1))
  loc_13F2C17:   Call 0.Method_Proc_147_45_13F34A40 (Proc_6_38_E69628(CVar(var_88.Fields.Item("VNo"))))
  loc_13F2C1F:   var_12C.Text = 
  loc_13F2C4A:   var_B0 = var_88.Fields.Item("VDate")
  loc_13F2C52:   var_C0 = CVar(var_B0) 'Address
  loc_13F2C5B:   var_104 = Proc_6_38_E69628(var_C0)
  loc_13F2C69:   Set var_128 = var_12C(CInt(2))
  loc_13F2C6F:   Call 0.Method_Proc_147_45_13F34A40 (var_104)
  loc_13F2C77:   var_12C.Text = 
  loc_13F2CA9:   Set var_9C = var_B0(CInt(1))
  loc_13F2CAF:   Call 0.Method_Proc_147_45_13F34A40 (var_104, "Select VTYPE,GodownCode From Stock Where VtYpe='KSISS' and VNo=", var_C0)
  loc_13F2CB7:   -1 = var_B0.Text
  loc_13F2CD7:    = var_12C & var_104 & " And VPrefix="(var_134).Caption
  loc_13F2CF0:   unk_4950A9.Execute var_134 & vbNullString, , 
  loc_13F2CFB:   Set var_94 = var_12C
  loc_13F2D2F:   If (var_94.RecordCount > 0) Then
  loc_13F2D6E:     If (var_94.Fields.Item("vType").Value = "KSISS") Then
  loc_13F2D88:       var_B0 = var_94.Fields.Item("Godowncode")
  loc_13F2D90:       var_C0 = CVar(var_B0) 'Address
  loc_13F2D99:       var_104 = Proc_6_38_E69628(var_C0)
  loc_13F2DA7:       Set var_128 = var_12C(CInt(3))
  loc_13F2DAD:       Call 0.Method_Proc_147_45_13F34A40 (var_104)
  loc_13F2DB5:       var_12C.Tag = 
  loc_13F2DE7:       Set var_9C = var_B0(CInt(3))
  loc_13F2DED:       Call 0.Method_Proc_147_45_13F34A40 (var_104, "Select Name From GodownMast Where Code='", var_C0)
  loc_13F2DF5:       -1 = var_B0.Tag
  loc_13F2E0E:       unk_4950A9.Execute var_128 & var_104 & "'", , 
  loc_13F2E19:       Set var_90 = var_128
  loc_13F2E45:       If (var_90.RecordCount > 0) Then
  loc_13F2E7E:         Set var_128 = var_12C(CInt(3))
  loc_13F2E84:         Call 0.Method_Proc_147_45_13F34A40 (Proc_6_38_E69628(CVar(var_90.Fields.Item("Name"))))
  loc_13F2E8C:         var_12C.Text = 
  loc_13F2EA0:       End If
  loc_13F2EA0:     End If
  loc_13F2EA0:   End If
  loc_13F2EDC:   If (var_88.Fields.Item("vType").Value = "KSREC") Then
  loc_13F2EF6:     var_B0 = var_88.Fields.Item("Godowncode")
  loc_13F2EFE:     var_C0 = CVar(var_B0) 'Address
  loc_13F2F07:     var_104 = Proc_6_38_E69628(var_C0)
  loc_13F2F15:     Set var_128 = var_12C(CInt(4))
  loc_13F2F1B:     Call 0.Method_Proc_147_45_13F34A40 (var_104)
  loc_13F2F23:     var_12C.Tag = 
  loc_13F2F55:     Set var_9C = var_B0(CInt(4))
  loc_13F2F5B:     Call 0.Method_Proc_147_45_13F34A40 (var_104, "Select Name From GodownMast Where Code='", var_C0)
  loc_13F2F63:     -1 = var_B0.Tag
  loc_13F2F7C:     unk_4950A9.Execute var_128 & var_104 & "'", , 
  loc_13F2F87:     Set var_90 = var_128
  loc_13F2FB3:     If (var_90.RecordCount > 0) Then
  loc_13F2FEC:       Set var_128 = var_12C(CInt(4))
  loc_13F2FF2:       Call 0.Method_Proc_147_45_13F34A40 (Proc_6_38_E69628(CVar(var_90.Fields.Item("Name"))))
  loc_13F2FFA:       var_12C.Text = 
  loc_13F300E:     End If
  loc_13F300E:   End If
  loc_13F3021:   (1).RowCount = 
  loc_13F302B:   var_8A = 1
  loc_13F302E:   ' Referenced from: 13F3461
  loc_13F303D:   If Not(var_88.EOF) Then
  loc_13F304A:     Set var_9C = var_8A(vbNullString)
  loc_13F305F:     Set var_148 = (DGItem.DispID_10000)
  loc_13F3066:     var_D0 = CVar(CLng(var_8A)) 'Long
  loc_13F309B:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SNo")), CVar(CLng(0)))) 'String
  loc_13F30A2:     LateIdCallSt
  loc_13F30ED:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8A)))) 'String
  loc_13F30F4:     LateIdCallSt
  loc_13F313F:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RecdUnit")), CVar(CLng(2)), CVar(CLng(var_8A)), var_148)) 'String
  loc_13F3146:     LateIdCallSt
  loc_13F317E:     Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("RecdQty")), var_148, var_E0)
  loc_13F3187:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_13F31BF:     LateIdCallSt
  loc_13F3210:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_8A)), var_148, CVar(CStr(Format(var_E0, "0.000"))), 1, 1)) 'String
  loc_13F3217:     LateIdCallSt
  loc_13F324F:     Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("QtyRec")), var_148, var_E0, CVar(CLng(3)))
  loc_13F3258:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_13F3290:     LateIdCallSt
  loc_13F32CE:     Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("Rate")), var_148, CVar(CStr(Format(var_E0, "0.000"))), 1, 1, CVar(CLng(5)))
  loc_13F32D7:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_13F330F:     LateIdCallSt
  loc_13F334D:     Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("Amount")), var_148, CVar(CStr(Format(var_E0, "0.00"))), 1, 1, CVar(CLng(7)))
  loc_13F3356:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_13F338E:     LateIdCallSt
  loc_13F33DF:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Item")), CVar(CLng(9)), CVar(CLng(var_8A)), var_148, CVar(CStr(Format(var_E0, "0.00"))), 1, 1)) 'String
  loc_13F33E6:     LateIdCallSt
  loc_13F3431:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ConvRatio")), CVar(CLng(4)), CVar(CLng(var_8A)), var_148, var_E0, CVar(CLng(8)))) 'String
  loc_13F3438:     LateIdCallSt
  loc_13F344C:     Set var_148 = Nothing 
  loc_13F3456:     var_8A = (var_8A + 1)
  loc_13F345C:     var_88.MoveNext
  loc_13F3461:     GoTo loc_13F302E
  loc_13F3464:   End If
  loc_13F3471:   Set var_9C = var_8A(1)
  loc_13F3482: Else
  loc_13F3482:   Call Proc_147_44_F2989C(DGItem.DispID_6, var_148, var_E0, var_F0)
  loc_13F3487: End If
  loc_13F3487: Call Proc_147_47_EBEEB0(var_F0, var_F0)
  loc_13F348C: Exit Sub
  loc_13F3492: Set var_90 = Nothing
  loc_13F349A: Set var_94 = Nothing
  loc_13F349D: ' Referenced from: 13F2AA4
  loc_13F349D: Proc_6_60_E63754(var_F0)
  loc_13F34A2: Exit Sub
End Sub

Public Sub Proc_147_46_EF1510(arg_C) 'EF1510
  'Data Table: 495098
  Dim var_98 As TextBox
  loc_EF144A: Set var_8C = var_86(var_8E)
  loc_EF1450: Call 0.Method_Proc_147_46_EF1510C (CByte(0))
  loc_EF1460: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_EF1476:   Set var_8C = var_98(CInt(var_86))
  loc_EF147C:   Call 0.Method_Proc_147_46_EF15100 (arg_C)
  loc_EF1484:   var_98.Enabled = 
  loc_EF1493: Next var_92 'Byte
  loc_EF14A6: Set var_8C = var_98(CInt(0))
  loc_EF14AC: Call 0.Method_Proc_147_46_EF15100 (0)
  loc_EF14B4: var_98.Enabled = 
  loc_EF14CD: Set var_8C = var_98(CInt(2))
  loc_EF14D3: Call 0.Method_Proc_147_46_EF15100 (0)
  loc_EF14DB: var_98.Enabled = 
  loc_EF14F4: Set var_8C = var_98(CInt(1))
  loc_EF14FA: Call 0.Method_Proc_147_46_EF15100 (0)
  loc_EF1502: var_98.Enabled = 
  loc_EF150E: Exit Sub
End Sub

Public Sub Proc_147_47_EBEEB0
  'Data Table: 495098
  loc_EBEE28: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EBEE3A:   Me.DGDepart.Visible = False
  loc_EBEE42: End If
  loc_EBEE5E: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EBEE70:   Me.DGItem.Visible = False
  loc_EBEE78: End If
  loc_EBEE94: If (CBool(().Visible) = &HFF) Then
  loc_EBEEA6:   (False).Visible = 
  loc_EBEEAE: End If
  loc_EBEEAE: Exit Sub
End Sub

Public Sub Proc_147_48_115DC48
  'Data Table: 495098
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_115D8E0: var_90 = global_68
  loc_115D8F7: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_115D91A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115D928: Set var_B4 = var_B8(CInt(2))
  loc_115D92E: Call 0.Method_Proc_147_48_115DC480 (var_E8, var_13C)
  loc_115D93D: Proc_6_7_F26918(var_D8, CVar(var_B8))
  loc_115D945: var_F8 = -1 & var_D8 
  loc_115D959: Me.Connection15.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115D964: Set var_8C = var_140
  loc_115D9A0: If (var_8C.RecordCount <= 0) Then
  loc_115D9BC:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115D9CF:   var_88 = vbNullString
  loc_115D9D2:   Proc_147_48_115DC48 = 
  loc_115D9D8: End If
  loc_115D9EC: If (var_8C.RecordCount > 0) Then
  loc_115DA2B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115DA48:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115DA59:     var_9C = CStr(var_B8.Value)
  loc_115DA74:     Set var_B4 = var_B8(CInt(1))
  loc_115DA7A:     Call 0.Method_Proc_147_48_115DC480 (var_A0)
  loc_115DA82:      = var_B8.Text
  loc_115DA90:     var_94 = CLng(Val(var_A0))
  loc_115DAA0:   Else
  loc_115DACB:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115DAF2:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115DB07:     var_D8 = (var_B8.Value + 1)
  loc_115DB0D:     var_94 = CLng(var_D8)
  loc_115DB1E:   End If
  loc_115DB1E: End If
  loc_115DB49: var_C8 = Space((5 - Len(var_90)))
  loc_115DB51: var_E8 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_B8.Value)
  loc_115DB5B: var_F8 = (var_E8 + CVar(var_9C))
  loc_115DB6C: var_118 = Space((5 - Len(var_9C)))
  loc_115DB74: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115DB8A: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115DB92: var_188 = (var_13C + var_178)
  loc_115DB9E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115DBA3: var_98 = CStr(var_1A8)
  loc_115DBD3: var_94(var_9C).Caption = 
  loc_115DBE9: Set var_B4 = var_B8(CInt(0))
  loc_115DBEF: Call 0.Method_Proc_147_48_115DC480 (var_98)
  loc_115DBF7: var_B8.Text = 
  loc_115DC16: Set var_B4 = var_B8(CInt(1))
  loc_115DC1C: Call 0.Method_Proc_147_48_115DC480 (CStr(var_94))
  loc_115DC24: var_B8.Text = 
  loc_115DC36: var_88 = var_98
  loc_115DC3E: Set var_8C = Nothing
  loc_115DC41: Proc_147_48_115DC48 = 
End Sub

Public Sub Proc_147_49_110D374
  'Data Table: 495098
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Fields15
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_110D078: var_90 = global_72
  loc_110D08F: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_110D0B2: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_110D0C0: Set var_B4 = var_B8(CInt(2))
  loc_110D0C6: Call 0.Method_Proc_147_49_110D3740 (var_E8, var_13C)
  loc_110D0D5: Proc_6_7_F26918(var_D8, CVar(var_B8))
  loc_110D0DD: var_F8 = -1 & var_D8 
  loc_110D0F1: Me.Connection15.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_110D0FC: Set var_8C = var_140
  loc_110D138: If (var_8C.RecordCount <= 0) Then
  loc_110D154:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_110D167:   var_88 = vbNullString
  loc_110D16A:   Proc_147_49_110D374 = 
  loc_110D170: End If
  loc_110D184: If (var_8C.RecordCount > 0) Then
  loc_110D1C3:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_110D1E0:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_110D1F1:     var_9C = CStr(var_B8.Value)
  loc_110D20C:     Set var_B4 = var_B8(CInt(1))
  loc_110D212:     Call 0.Method_Proc_147_49_110D3740 (var_A0)
  loc_110D21A:      = var_B8.Text
  loc_110D228:     var_94 = CLng(Val(var_A0))
  loc_110D238:   Else
  loc_110D263:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_110D29F:     var_D8 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_110D2A5:     var_94 = CLng(var_D8)
  loc_110D2B6:   End If
  loc_110D2B6: End If
  loc_110D2E1: var_C8 = Space((5 - Len(var_90)))
  loc_110D2E9: var_E8 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_8C.Fields.Item("start_srl_no").Value)
  loc_110D2F3: var_F8 = (var_E8 + CVar(var_9C))
  loc_110D304: var_118 = Space((5 - Len(var_9C)))
  loc_110D30C: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_110D322: var_178 = Space((8 - Len(CStr(var_94))))
  loc_110D32A: var_188 = (var_13C + var_178)
  loc_110D336: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_110D361: var_88 = CStr(var_1A8)
  loc_110D369: Set var_8C = Nothing
  loc_110D36C: Proc_147_49_110D374 = var_94
End Sub

Public Sub Proc_147_50_11C2CBC
  'Data Table: 495098
  Dim var_94 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_11C2867: (CVar(CDbl(6585))).Width = 
  loc_11C2882: (CVar(CDbl(1450))).Top = 
  loc_11C289D: (CVar(CDbl(3300))).Height = 
  loc_11C28B8: Me.DGItem.Left = CVar(CDbl(2800))
  loc_11C28D3: Me.DGItem.Top = CVar(CDbl(1200))
  loc_11C28DF: Set var_AC = ()
  loc_11C28F6: global_96 = CStr(CLng(DGItem.DispID_FFFFFE0B))
  loc_11C2900: var_94 = &HA
  loc_11C2914: var_94 = CVar(CLng(0)) 'Long
  loc_11C2919: var_D0 = &HFA
  loc_11C2925: LateIdCallSt
  loc_11C292D: var_94 = 0
  loc_11C2939: var_D0 = CVar(CLng(1)) 'Long
  loc_11C293E: var_F0 = "Item Name"
  loc_11C2947: LateIdCallSt
  loc_11C2952: var_94 = CVar(CLng(1)) 'Long
  loc_11C295D: var_D0 = CVar(CInt(1)) 'Integer
  loc_11C2964: LateIdCallSt
  loc_11C296F: var_94 = CVar(CLng(1)) 'Long
  loc_11C2974: var_D0 = &HD48
  loc_11C2980: LateIdCallSt
  loc_11C2988: var_94 = 0
  loc_11C2994: var_D0 = CVar(CLng(2)) 'Long
  loc_11C2999: var_F0 = "Unit"
  loc_11C29A2: LateIdCallSt
  loc_11C29AD: var_94 = CVar(CLng(2)) 'Long
  loc_11C29B8: var_D0 = CVar(CInt(1)) 'Integer
  loc_11C29BF: LateIdCallSt
  loc_11C29CA: var_94 = CVar(CLng(2)) 'Long
  loc_11C29CF: var_D0 = &H44C
  loc_11C29DB: LateIdCallSt
  loc_11C29E3: var_94 = 0
  loc_11C29EF: var_D0 = CVar(CLng(3)) 'Long
  loc_11C29F4: var_F0 = "Iss. Qty"
  loc_11C29FD: LateIdCallSt
  loc_11C2A08: var_94 = CVar(CLng(3)) 'Long
  loc_11C2A13: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C2A1A: LateIdCallSt
  loc_11C2A25: var_94 = CVar(CLng(3)) 'Long
  loc_11C2A30: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C2A37: LateIdCallSt
  loc_11C2A42: var_94 = CVar(CLng(3)) 'Long
  loc_11C2A47: var_D0 = &H578
  loc_11C2A53: LateIdCallSt
  loc_11C2A5B: var_94 = 0
  loc_11C2A67: var_D0 = CVar(CLng(4)) 'Long
  loc_11C2A6C: var_F0 = "Conv. Factor"
  loc_11C2A75: LateIdCallSt
  loc_11C2A80: var_94 = CVar(CLng(4)) 'Long
  loc_11C2A8B: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C2A92: LateIdCallSt
  loc_11C2A9D: var_94 = CVar(CLng(4)) 'Long
  loc_11C2AA8: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C2AAF: LateIdCallSt
  loc_11C2ABA: var_94 = CVar(CLng(4)) 'Long
  loc_11C2ABF: var_D0 = 0
  loc_11C2ACB: LateIdCallSt
  loc_11C2AD3: var_94 = 0
  loc_11C2ADF: var_D0 = CVar(CLng(5)) 'Long
  loc_11C2AE4: var_F0 = "Wt. Qty"
  loc_11C2AED: LateIdCallSt
  loc_11C2AF8: var_94 = CVar(CLng(5)) 'Long
  loc_11C2B03: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C2B0A: LateIdCallSt
  loc_11C2B15: var_94 = CVar(CLng(5)) 'Long
  loc_11C2B20: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C2B27: LateIdCallSt
  loc_11C2B32: var_94 = CVar(CLng(5)) 'Long
  loc_11C2B37: var_D0 = 0
  loc_11C2B43: LateIdCallSt
  loc_11C2B4B: var_94 = 0
  loc_11C2B57: var_D0 = CVar(CLng(6)) 'Long
  loc_11C2B5C: var_F0 = "Wt.Unit"
  loc_11C2B65: LateIdCallSt
  loc_11C2B70: var_94 = CVar(CLng(6)) 'Long
  loc_11C2B7B: var_D0 = CVar(CInt(1)) 'Integer
  loc_11C2B82: LateIdCallSt
  loc_11C2B8D: var_94 = CVar(CLng(6)) 'Long
  loc_11C2B92: var_D0 = 0
  loc_11C2B9E: LateIdCallSt
  loc_11C2BA6: var_94 = 0
  loc_11C2BB2: var_D0 = CVar(CLng(7)) 'Long
  loc_11C2BB7: var_F0 = "Rate"
  loc_11C2BC0: LateIdCallSt
  loc_11C2BCB: var_94 = CVar(CLng(7)) 'Long
  loc_11C2BD6: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C2BDD: LateIdCallSt
  loc_11C2BE8: var_94 = CVar(CLng(7)) 'Long
  loc_11C2BF3: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C2BFA: LateIdCallSt
  loc_11C2C05: var_94 = CVar(CLng(7)) 'Long
  loc_11C2C0A: var_D0 = 0
  loc_11C2C16: LateIdCallSt
  loc_11C2C1E: var_94 = 0
  loc_11C2C2A: var_D0 = CVar(CLng(8)) 'Long
  loc_11C2C2F: var_F0 = "Amount"
  loc_11C2C38: LateIdCallSt
  loc_11C2C43: var_94 = CVar(CLng(8)) 'Long
  loc_11C2C4E: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C2C55: LateIdCallSt
  loc_11C2C60: var_94 = CVar(CLng(8)) 'Long
  loc_11C2C6B: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C2C72: LateIdCallSt
  loc_11C2C7D: var_94 = CVar(CLng(8)) 'Long
  loc_11C2C82: var_D0 = 0
  loc_11C2C8E: LateIdCallSt
  loc_11C2C99: var_94 = CVar(CLng(9)) 'Long
  loc_11C2C9E: var_D0 = 0
  loc_11C2CAA: LateIdCallSt
  loc_11C2CB4: Set var_AC = Nothing 
  loc_11C2CB8: Exit Sub
  loc_11C2CB9: ThisVCallR8
End Sub

Public Sub Proc_147_51_F72E4C
  'Data Table: 495098
  Dim var_22C As Double
  Dim var_234 As Double
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  loc_F72D46: ().InsertRows , 
  loc_F72D60: Set var_DC = CVar(CLng())(CVar(CLng(7)))
  loc_F72D79: var_22C = Val(CStr(DGItem.DispID_41))
  loc_F72D86: (var_22C).InsertRows , 
  loc_F72DA0: Set var_148 = CVar(CLng())(CVar(CLng(3)))
  loc_F72DB9: var_234 = Val(CStr(DGItem.DispID_41))
  loc_F72DC6: (var_234).InsertRows , 
  loc_F72DCF: var_1D0 = CVar(CLng()) 'Long
  loc_F72DD7: var_1F0 = CVar(CLng(8)) 'Long
  loc_F72E10: Set var_224 = 1(CVar(CStr(Format(CVar((var_22C * var_234)), "0.00"))))
  loc_F72E16: LateIdCallSt
  loc_F72E49: Exit Sub
End Sub

Public Sub Proc_147_52_ED28F0
  'Data Table: 495098
  loc_ED2850: Call Proc_147_47_EBEEB0()
  loc_ED2860: Set var_88 = var_8C(CInt(2))
  loc_ED2866: Call 0.Method_Proc_147_52_ED28F00 ()
  loc_ED286E: var_94 = "Date"
  loc_ED288F: If (Proc_6_27_EA61EC(var_8C) = 0) Then
  loc_ED2892:   Exit Sub
  loc_ED2893: End If
  loc_ED28CA: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED28CD:   Call TopCtrl1_UnknownEvent_19()
  loc_ED28D5: Else
  loc_ED28DB:   Call 0.Method_arg_1E8 (var_88)
  loc_ED28E3:   Call var_88.SetFocus
  loc_ED28EC: End If
  loc_ED28EC: Exit Sub
End Sub
