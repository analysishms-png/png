VERSION 5.00
Begin VB.Form frmGuestComments
  Caption = "Guest Comments"
  BackColor = &HCAEBF2&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 7140
  ClientHeight = 5130
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7140
    Height = 450
    TabIndex = 38
  End
  Begin TextBox txt
    Index = 9
    Left = 14055
    Top = 8535
    Width = 1500
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin DataGrid DGCity
    Left = 15660
    Top = 4875
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 35
  End
End

Attribute VB_Name = "frmGuestComments"

Private global_52 As Integer

Private Sub FGPoint_UnknownEvent_9 'EAFFAC
  'Data Table: 4BA25C
  loc_EAFF34: If (CBool(().Visible) = &HFF) Then
  loc_EAFF37:   Call DGMarketSeg_UnknownEvent_9()
  loc_EAFF3C: End If
  loc_EAFF58: If (CBool(().Visible) = &HFF) Then
  loc_EAFF5B:   Call DGFuncType_UnknownEvent_9()
  loc_EAFF60: End If
  loc_EAFF7C: If (CBool(().Visible) = &HFF) Then
  loc_EAFF7F:   Call DGSource_UnknownEvent_9()
  loc_EAFF84: End If
  loc_EAFFA0: If (CBool(().Visible) = &HFF) Then
  loc_EAFFA3:   Call DGParty_UnknownEvent_9()
  loc_EAFFA8: End If
  loc_EAFFA8: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F4FAD4
  'Data Table: 4BA25C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4F9CB: (False).Visible = 
  loc_F4F9EA: If (Me.RecordCount > 0) Then
  loc_F4FA29:   Set var_B4 = Me.txt
  loc_F4FA2F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_F4FA37:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4FA6A:   var_B0 = Me.Fields.Item("Code")
  loc_F4FA89:   Set var_B4 = Me.txt
  loc_F4FA8F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_F4FA97:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4FAAD: End If
  loc_F4FAB8: Set var_A8 = Me.txt
  loc_F4FABE: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HA))
  loc_F4FAC6: var_B0.SetFocus
  loc_F4FAD2: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA3DF0
  'Data Table: 4BA25C
  Dim var_A8 As Variant
  loc_EA3D70: Set var_88 = ()
  loc_EA3D9A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3DA2: Set var_BC = txt.DispID_1D(var_A8)
  loc_EA3DDE: Proc_6_138_106E830((txt.DispID_1B), global_80)
  loc_EA3DEC: Exit Sub
  loc_EA3DED: CInt(&HA) = ()
End Sub

Private Sub Form_Load() '13D1E44
  'Data Table: 4BA25C
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As TextBox
  Dim var_C4 As String
  Dim unk_4BA273 As Connection15
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_88 As Variant
  loc_13D14A4: On Error Goto loc_13D1E3B
  loc_13D14B5: Set var_88 = Me.txt
  loc_13D14BB: Call 0.Method_Form_Load0 (CInt(&HA), var_8C)
  loc_13D14DA: (CVar(var_8C.Left)).Left = 
  loc_13D14F6: Set var_B4 = Me.txt
  loc_13D14FC: Call 0.Method_Form_Load0 (CInt(&HA), var_B8)
  loc_13D1517: Set var_88 = Me.txt
  loc_13D151D: Call 0.Method_Form_Load0 (CInt(&HA), var_8C)
  loc_13D1535: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13D1544: (CVar(var_8C.Left)).Top = 
  loc_13D1564: Set var_88 = Me.txt
  loc_13D156A: Call 0.Method_Form_Load0 (CInt(&HC), var_8C)
  loc_13D1589: (CVar(var_8C.Left)).Left = 
  loc_13D15A5: Set var_B4 = Me.txt
  loc_13D15AB: Call 0.Method_Form_Load0 (CInt(&HC), var_B8)
  loc_13D15C6: Set var_88 = Me.txt
  loc_13D15CC: Call 0.Method_Form_Load0 (CInt(&HC), var_8C)
  loc_13D15E4: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13D15F3: (CVar(var_8C.Left)).Top = 
  loc_13D1613: Set var_88 = Me.txt
  loc_13D1619: Call 0.Method_Form_Load0 (CInt(&HD), var_8C)
  loc_13D1638: (CVar(var_8C.Left)).Left = 
  loc_13D1654: Set var_B4 = Me.txt
  loc_13D165A: Call 0.Method_Form_Load0 (CInt(&HD), var_B8)
  loc_13D1675: Set var_88 = Me.txt
  loc_13D167B: Call 0.Method_Form_Load0 (CInt(&HD), var_8C)
  loc_13D1693: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13D16A2: (CVar(var_8C.Left)).Top = 
  loc_13D16C2: Set var_88 = Me.txt
  loc_13D16C8: Call 0.Method_Form_Load0 (CInt(&HB), var_8C)
  loc_13D16E7: (CVar(var_8C.Left)).Left = 
  loc_13D1703: Set var_B4 = Me.txt
  loc_13D1709: Call 0.Method_Form_Load0 (CInt(&HB), var_B8)
  loc_13D1724: Set var_88 = Me.txt
  loc_13D172A: Call 0.Method_Form_Load0 (CInt(&HB), var_8C)
  loc_13D1742: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13D1751: (CVar(var_8C.Left)).Top = 
  loc_13D1771: Set var_88 = Me.txt
  loc_13D1777: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_13D1796: (CVar(var_8C.Left)).Left = 
  loc_13D17B2: Set var_B4 = Me.txt
  loc_13D17B8: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_13D17C0: var_BC = var_B8.Height
  loc_13D17D3: Set var_88 = Me.txt
  loc_13D17D9: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_13D17E1: var_90 = var_8C.Top
  loc_13D17F1: var_A0 = CVar(((var_90 + var_BC) + CDbl(&H1E))) 'Single
  loc_13D1800: (CVar(var_8C.Left)).Top = 
  loc_13D1827: If (global_56 = MemVar_1F95078 & "BANQ") Then
  loc_13D1830:   global_92 = "IBOOK"
  loc_13D184A:   unk_4BA273.Execute "Select Distinct Party as Name,BookDocId AS DocId From HallSale1 WHERE VType='IDC'", var_D4, -1
  loc_13D185B:   Set global_68 = var_88
  loc_13D186C: Else
  loc_13D1881:   If (global_56 = MemVar_1F95078 & "ODC") Then
  loc_13D188A:     global_92 = "OBOOK"
  loc_13D18A4:     unk_4BA273.Execute "Select Distinct Party as Name,BookDocId AS DocId From HallSale1 WHERE VType='ODC'", var_D4, -1
  loc_13D18B5:     Set global_68 = var_88
  loc_13D18C3:   End If
  loc_13D18C3: End If
  loc_13D18CC: CVarUnk
  loc_13D18D1: VerifyVarObj
  loc_13D18DD: LateIdStAd
  loc_13D1901: unk_4BA273.Execute "Select Code,Name From MarketSeg Order by Name", var_D4, -1
  loc_13D1929: CVarUnk
  loc_13D192E: VerifyVarObj
  loc_13D1934: Set var_88 = var_88(var_88(global_68))
  loc_13D193A: LateIdStAd
  loc_13D1964: Me.Recordset15.CursorLocation = 3
  loc_13D199A: CVarUnk
  loc_13D199F: VerifyVarObj
  loc_13D19A5: Set var_88 = Me.DGCity
  loc_13D19AB: LateIdStAd
  loc_13D19CD: Call 0.Method_Form_Load0 (CInt(4), var_8C, var_90, Me.txt, New)
  loc_13D19D5: 3 = var_8C.Left
  loc_13D19EC: Me.DGCity.Left = CVar(var_90)
  loc_13D1A08: Set var_B4 = Me.txt
  loc_13D1A0E: Call 0.Method_Form_Load0 (CInt(4), var_B8, var_BC, -1)
  loc_13D1A16: var_88 = var_B8.Height
  loc_13D1A29: Set var_88 = Me.txt
  loc_13D1A2F: Call 0.Method_Form_Load0 (CInt(4), var_8C, var_90)
  loc_13D1A43: var_A0 = CVar((var_90 + var_BC)) 'Single
  loc_13D1A52: Me.DGCity.Top = CVar(var_90)
  loc_13D1A7A: unk_4BA273.Execute "Select Code,Name From BussSource Order by Name", var_D4, -1
  loc_13D1AA2: CVarUnk
  loc_13D1AA7: VerifyVarObj
  loc_13D1AB3: LateIdStAd
  loc_13D1AD7: unk_4BA273.Execute "Select Code,Name From FunctionType Order by Name", var_D4, -1
  loc_13D1AFF: CVarUnk
  loc_13D1B04: VerifyVarObj
  loc_13D1B10: LateIdStAd
  loc_13D1B34: unk_4BA273.Execute "Select SubCode As Code,Name From SubGroup Where Nature='Customer' order by Name", var_D4, -1
  loc_13D1B5C: CVarUnk
  loc_13D1B61: VerifyVarObj
  loc_13D1B67: Set var_88 = var_88(var_88(var_88(var_8C.Top)))
  loc_13D1B6D: LateIdStAd
  loc_13D1B85: Set global_60 = New 
  loc_13D1B97: Me.Recordset15.CursorLocation = 3
  loc_13D1BBD: var_C4 = "Select code as SCode,Code,Name,Add1,Add2,City,PinCode,PhoneR,PhoneO,MobileNo,FaxNo,DatenTime,Comments From GuestComments S WHERE  VType='" & global_92
  loc_13D1BC4: var_D4 = CVar(var_C4 & "' Order by Code") 'String
  loc_13D1BCE: elect CITYCODE AS Code,CITYNAME AS Name From CITY Order by CITYName", CVar(MemVar_1F95044), 2 var_D4, CVar(MemVar_1F95044), 3
  loc_13D1BD9: Call Proc_148_46_10C59D4(1, -1, var_88)
  loc_13D1C03: Call 0.Method_arg_50 (var_C4, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_D4, -1, var_88, var_8C)
  loc_13D1C2A: unk_4BA273.Execute 0 & var_C4 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_B4, var_F4
  loc_13D1C32: var_88 = var_88.Fields
  loc_13D1C3A: var_88 = var_8C.Item(var_88)
  loc_13D1C42:  = var_B4.Value
  loc_13D1C6F: If (var_F4 > 0) Then
  loc_13D1CAA:   Call 0.Method_arg_50 (var_C4, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_D4, -1, var_88, var_8C, 0)
  loc_13D1CD1:   unk_4BA273.Execute var_B4 & var_C4 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_F4, "SearchCode='"
  loc_13D1CD9:   0 = var_88.Fields
  loc_13D1CE1:   var_148 = var_8C.Item(1)
  loc_13D1CE9:    = var_B4.Value
  loc_13D1D08:   Me.Find CStr(var_F4 & "'"), , 
  loc_13D1D30: End If
  loc_13D1D47: If (Me.RecordCount > 0) Then
  loc_13D1D5E:   If (Me.EOF = &HFF) Then
  loc_13D1D67:     Me.MoveLast
  loc_13D1D6C:   End If
  loc_13D1D6C: End If
  loc_13D1D78: (0).Enabled = 
  loc_13D1D87: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_13D1D9B: (CDbl(13500)).Left = 
  loc_13D1DB2: (CDbl(7800)).Top = 
  loc_13D1DC9: (CDbl(8160)).Top = 
  loc_13D1DDA: Set var_88 = (CDbl(13500))
  loc_13D1DE0: var_88.Left = 
  loc_13D1DF1: Call 0.Method_arg_160 (var_88)
  loc_13D1DFF: Call 0.Method_arg_164 (var_88)
  loc_13D1E07: Call Proc_148_40_13EA274()
  loc_13D1E2F: Call Proc_148_42_E7CA24(Proc_5_1_100EC1C("INI", Me))
  loc_13D1E3A: Exit Sub
  loc_13D1E3B: ' Referenced from: 13D14A4
  loc_13D1E3B: Proc_6_60_E63754(global_60)
  loc_13D1E40: Exit Sub
End Sub

Private Sub Form_Resize() 'ED5328
  'Data Table: 4BA25C
  Dim var_8C As Label
  Dim var_B4 As Label
  loc_ED5286: Call 0.Method_arg_50 (var_88)
  loc_ED5298: (var_88).Caption = 
  loc_ED52B1: (CDbl(0)).Left = 
  loc_ED52BD: Set var_A0 = Me.TopCtrl1
  loc_ED52C3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED52D0: Set var_8C = Me.TopCtrl1
  loc_ED52D6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED52EA: Set var_B4 = ((CDbl() + CDbl(var_B0)))
  loc_ED52F0: var_B4.Top = 
  loc_ED530B: Call 0.Method_arg_100 (var_B8)
  loc_ED531D: (var_B8).Width = 
  loc_ED5325: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1F900
  'Data Table: 4BA25C
  loc_E1F8E9: global_52 = 0
  loc_E1F8F7: Set global_108 = Nothing
  loc_E1F8FE: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26E94
  'Data Table: 4BA25C
  loc_E26E79: If (global_52 = &HFF) Then
  loc_E26E89:   Me.Global.Unload Me
  loc_E26E91: End If
  loc_E26E91: Exit Sub
  loc_E26E92: Get , ,  'get  bytes
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3A328
  'Data Table: 4BA25C
  loc_E3A2FC: On Error Goto loc_E3A320
  loc_E3A317: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E3A31F: Exit Sub
  loc_E3A320: ' Referenced from: E3A2FC
  loc_E3A320: Proc_6_60_E63754(Shift)
  loc_E3A325: Exit Sub
  loc_E3A326: CExtInstUnk
End Sub

Private Sub DGSource_UnknownEvent_9 'F4CED4
  'Data Table: 4BA25C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4CDCB: (False).Visible = 
  loc_F4CDEA: If (Me.RecordCount > 0) Then
  loc_F4CE29:   Set var_B4 = Me.txt
  loc_F4CE2F:   Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F4CE37:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4CE6A:   var_B0 = Me.Fields.Item("Code")
  loc_F4CE89:   Set var_B4 = Me.txt
  loc_F4CE8F:   Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F4CE97:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4CEAD: End If
  loc_F4CEB8: Set var_A8 = Me.txt
  loc_F4CEBE: Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HD))
  loc_F4CEC6: var_B0.SetFocus
  loc_F4CED2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F823B4
  'Data Table: 4BA25C
  Dim var_8C As Variant
  Dim var_144 As TextBox
  loc_F82274: On Error Goto loc_F823AB
  loc_F8229A: Call Proc_148_42_E7CA24(Proc_5_1_100EC1C("ADD", Me))
  loc_F822A5: Call Proc_148_41_EB739C(global_60)
  loc_F822B7: (vbNullString).Caption = 
  loc_F822CC: (vbNullString).Caption = 
  loc_F822E0: (&HFF).Enabled = 
  loc_F82357: Set var_8C = Me.txt
  loc_F8235D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_144, CStr(1 & Format(Time, "hh:mm AMPM")), 1)
  loc_F82365: var_144.Text = Format(MemVar_1F950EC, "dd/MMM/yyyy") & " "
  loc_F82390: Set var_8C = Me.txt
  loc_F82396: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_144)
  loc_F8239E: var_144.SetFocus
  loc_F823AA: Exit Sub
  loc_F823AB: ' Referenced from: F82274
  loc_F823AB: Proc_6_60_E63754(1)
  loc_F823B0: Exit Sub
  loc_F823B1: GoTo loc_F7CE5F
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EB5810
  'Data Table: 4BA25C
  loc_EB5784: On Error Goto loc_EB5809
  loc_EB57BE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EB57E4:   Call Proc_148_42_E7CA24(Proc_5_1_100EC1C("INI", Me))
  loc_EB57FB:   global_60(0).Enabled = 
  loc_EB5803:   Call Proc_148_40_13EA274()
  loc_EB5808: End If
  loc_EB5808: Exit Sub
  loc_EB5809: ' Referenced from: EB5784
  loc_EB5809: Proc_6_60_E63754()
  loc_EB580E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '115A468
  'Data Table: 4BA25C
  Dim unk_4BA273 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  Dim var_B4 As Variant
  loc_115A0E8: On Error Goto loc_115A419
  loc_115A122: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_115A12E:   unk_4BA273.BeginTrans var_118
  loc_115A144:   var_94 = Me.Bookmark 'Variant
  loc_115A190:   var_F4 = "Delete From GuestComments Where Code='" & Me.Fields.Item("SCode").Value & "'" 
  loc_115A19E:   unk_4BA273.Execute CStr(var_F4), var_114, -1
  loc_115A1DF:   var_B4 = Me.Fields.Item("SCode").Value
  loc_115A1E9:   var_160 = 0
  loc_115A1FC:   var_158 = 0
  loc_115A207:   var_154 = 0
  loc_115A21A:   var_14C = 0
  loc_115A225:   var_148 = 0
  loc_115A238:   var_140 = 0
  loc_115A281:   Proc_154_5_10E3BD4(MemVar_1F95044, "GuestComments", "Code", &HC8, CStr(var_B4), 0, 0, 0)
  loc_115A2AF:   unk_4BA273.CommitTrans
  loc_115A2BF:   Me.Requery -1
  loc_115A2DF:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_115A2EC:     Me.Bookmark = var_94
  loc_115A2F4:   Else
  loc_115A308:     If (Me.EOF = 0) Then
  loc_115A311:       Me.MoveLast
  loc_115A316:     End If
  loc_115A316:   End If
  loc_115A316:   Call Proc_148_40_13EA274(var_140, 0, var_148, var_14C)
  loc_115A32C:   Set var_11C = Me
  loc_115A337:   Proc_5_0_1107AD0(&HFF, var_11C, global_60, 0)
  loc_115A33F: End If
  loc_115A354: If (global_56 = MemVar_1F95078 & "BANQ") Then
  loc_115A35D:   global_92 = "IBOOK"
  loc_115A377:   unk_4BA273.Execute "Select Distinct Party as Name From HallSale1 WHERE VType='IDC'", var_B4, -1
  loc_115A388:   Set global_68 = var_11C
  loc_115A399: Else
  loc_115A3A6:   var_124 = MemVar_1F95078 & "ODC"
  loc_115A3AE:   If (global_56 = var_124) Then
  loc_115A3B7:     global_92 = "OBOOK"
  loc_115A3D1:     unk_4BA273.Execute "Select Distinct Party as Name From HallSale1 WHERE VType='ODC'", var_B4, -1
  loc_115A3E2:     Set global_68 = var_11C
  loc_115A3F0:   End If
  loc_115A3F0: End If
  loc_115A3F9: CVarUnk
  loc_115A3FE: VerifyVarObj
  loc_115A404: Set var_11C = var_11C(global_68)
  loc_115A40A: LateIdStAd
  loc_115A418: Exit Sub
  loc_115A419: ' Referenced from: 115A0E8
  loc_115A41F: unk_4BA273.RollbackTrans
  loc_115A432: Call 0.Method_arg_2C (var_124, Err(), Err(), 0)
  loc_115A453: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_115A466: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EE5158
  'Data Table: 4BA25C
  Dim var_8C As Variant
  Dim var_94 As TextBox
  loc_EE5094: On Error Goto loc_EE5150
  loc_EE50BA: Call Proc_148_42_E7CA24(Proc_5_1_100EC1C("EDIT", Me))
  loc_EE50D1: global_60(&HFF).Enabled = 
  loc_EE50E6: Set var_8C = Me.txt
  loc_EE50EC: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EE50F4: var_94.Enabled = False
  loc_EE510B: Set var_8C = Me.txt
  loc_EE5111: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1))
  loc_EE5119: var_94.SetFocus
  loc_EE5132: var_94(vbNullString).Caption = 
  loc_EE5147: (vbNullString).Caption = 
  loc_EE514F: Exit Sub
  loc_EE5150: ' Referenced from: EE5094
  loc_EE5150: Proc_6_60_E63754()
  loc_EE5155: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16DF0
  'Data Table: 4BA25C
  loc_E16DE5: Me.Global.Unload Me
  loc_E16DED: Exit Sub
  loc_E16DEE:  = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB3CC0
  'Data Table: 4BA25C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim arg_6CFF As Double
  loc_EB3C47: If (Me.RecordCount <= 0) Then
  loc_EB3C50:   var_B8 = "Information"
  loc_EB3C6B:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB3C7B:   Exit Sub
  loc_EB3C7C: End If
  loc_EB3C9A: MemVar_1F95120 = Me
  loc_EB3CB1: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EB3CB6: Exit Sub
  loc_EB3CB7: Proc_6_60_E63754("SELECT Code as SCode,Name, DatenTime FROM GuestComments WHERE VType='" & global_92 & "'")
  loc_EB3CBC: Exit Sub
  loc_EB3CBD: arg_6CFF = 
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3A388
  'Data Table: 4BA25C
  Dim var_1B01 As Double
  loc_E3A378: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A380: Call Proc_148_40_13EA274(global_60)
  loc_E3A385: Exit Sub
  loc_E3A386: var_1B01 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3A3E8
  'Data Table: 4BA25C
  Dim var_1B01 As Double
  loc_E3A3D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A3E0: Call Proc_148_40_13EA274(global_60)
  loc_E3A3E5: Exit Sub
  loc_E3A3E6: var_1B01 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E33788
  'Data Table: 4BA25C
  Dim var_1B01 As Double
  loc_E33778: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33780: Call Proc_148_40_13EA274(global_60)
  loc_E33785: Exit Sub
  loc_E33786: var_1B01 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E338A8
  'Data Table: 4BA25C
  Dim var_1B01 As Double
  loc_E33898: Proc_5_0_1107AD0(&HFF, Me)
  loc_E338A0: Call Proc_148_40_13EA274(global_60)
  loc_E338A5: Exit Sub
  loc_E338A6: var_1B01 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '102F42C
  'Data Table: 4BA25C
  Dim unk_4BA273 As Connection15
  Dim var_88 As Recordset15
  Dim var_9C As Variant
  Dim var_B8 As String
  Dim var_10E As Integer
  Dim var_AC As Variant
  loc_102F1FC: On Error Goto loc_102F426
  loc_102F215: unk_4BA273.Execute "SELECT GC.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS EventName, SubGroup.Name as CompanyName FROM (((GuestComments GC LEFT JOIN MarketSeg ON GC.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON GC.BussSource = BussSource.Code) LEFT JOIN FunctionType ON GC.FuncType = FunctionType.Code) LEFT JOIN SubGroup ON GC.Company = SubGroup.SubCode", var_AC, -1
  loc_102F220: Set var_88 = var_B0
  loc_102F22F: var_B4 = var_88.RecordCount
  loc_102F23D: If (var_B4 <= 0) Then
  loc_102F246:   Call 0.Method_arg_50 (var_B8)
  loc_102F25C:   var_9C = "** No Records Found to Print **"
  loc_102F267:   MsgBox(var_9C, &H40, CVar(var_B8), var_E8, var_108)
  loc_102F277:   Exit Sub
  loc_102F278: End If
  loc_102F28E: Set var_B0 = var_88 
  loc_102F29A: var_10E = CreateFieldDefFile(var_B0, MemVar_1F950B4 & "\GuestComments.ttx")
  loc_102F2A4: Set var_88 = var_B0
  loc_102F2C5: var_B8 = MemVar_1F950B4 & "\GuestComments.RPT"
  loc_102F2CE: Call 0.Method_arg_1C (var_B8, var_9C, var_B0, var_10E)
  loc_102F2D9: MemVar_1F951E8 = var_B0
  loc_102F2F4: Call 0.Method_arg_90 (var_B0, var_B4, var_8C, 1)
  loc_102F2FC: Call 0.Method_arg_24 (var_10E, &HFF)
  loc_102F308: For var_112 =  To CInt(var_B4): var_B0 = var_112 'Integer
  loc_102F321:   Call 0.Method_arg_90 (var_B0, CLng(var_8C))
  loc_102F329:   Call 0.Method_arg_20 (var_118)
  loc_102F331:   Call 0.Method_arg_30 (var_B8)
  loc_102F360:   If (Ucase(CVar(var_B8)) = "TITLE") Then
  loc_102F376:     Call 0.Method_arg_90 (var_B0, CLng(var_8C))
  loc_102F37E:     Call 0.Method_arg_20 (var_118)
  loc_102F386:     Call 0.Method_arg_38 ("'Guest Comments'")
  loc_102F392:   End If
  loc_102F395: Next var_112 'Integer
  loc_102F3B3: Call 0.Method_arg_64 (var_B0, CVar(var_88))
  loc_102F3BB: Call 0.Method_arg_2C (var_D8)
  loc_102F3C9: Call 0.Method_arg_150 (var_F8)
  loc_102F3D4: Call 0.Method_arg_50 (var_B8)
  loc_102F3DE: Set var_118 = Nothing
  loc_102F3F8: Set var_B0 = MemVar_1F951E8 
  loc_102F404: Proc_6_99_1484404(var_B0, 0, var_B8)
  loc_102F40F: MemVar_1F951E8 = var_B0
  loc_102F422: Set var_88 = Nothing
  loc_102F425: Exit Sub
  loc_102F426: ' Referenced from: 102F1FC
  loc_102F426: Proc_6_60_E63754(&HFF)
  loc_102F42B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E64AF8
  'Data Table: 4BA25C
  Dim Me As Recordset15
  loc_E64AAF: Me.Requery -1
  loc_E64ABF: Me.Requery -1
  loc_E64ACF: Me.Requery -1
  loc_E64ADF: Me.Requery -1
  loc_E64AEF: Me.Requery -1
  loc_E64AF4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14753E8
  'Data Table: 4BA25C
  Dim var_98 As String
  Dim var_D0 As Variant
  Dim unk_4BA273 As Connection15
  Dim var_94 As Variant
  Dim var_9C As Variant
  Dim var_A0 As Field20
  Dim var_F4 As Variant
  Dim var_C0 As Variant
  Dim var_104 As Variant
  Dim Me As Recordset15
  Dim var_8E As Integer
  Dim var_10C As String
  Dim var_B0 As Variant
  Dim var_120 As TextBox
  Dim var_154 As Variant
  Dim var_15C As TextBox
  Dim var_1A8 As TextBox
  Dim var_1BC As Variant
  Dim var_1F4 As TextBox
  Dim var_240 As TextBox
  Dim var_284 As Variant
  Dim var_28C As TextBox
  Dim var_2B0 As Variant
  Dim var_2D8 As TextBox
  Dim var_2EC As Variant
  Dim var_324 As TextBox
  Dim var_36C As TextBox
  Dim var_3B8 As TextBox
  Dim var_414 As TextBox
  Dim var_470 As TextBox
  Dim var_4C4 As Variant
  Dim var_4CC As TextBox
  Dim var_5C0 As Variant
  Dim var_634 As String
  Dim var_160 As String
  Dim var_370 As String
  Dim var_320 As TextBox
  loc_1474988: On Error Goto loc_14753CD
  loc_147498F: Set var_9C = ()
  loc_1474995: var_98 = "Comments"
  loc_14749B6: If (Proc_6_27_EA61EC(var_9C) = 0) Then
  loc_14749B9:   Exit Sub
  loc_14749BA: End If
  loc_14749C5: Set var_94 = Me.txt
  loc_14749CB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_14749D3: var_98 = "Party name"
  loc_14749F4: If (Proc_6_27_EA61EC(var_9C, var_98) = 0) Then
  loc_14749F7:   Exit Sub
  loc_14749F8: End If
  loc_14749F8: Call Proc_148_43_F23880(var_98)
  loc_1474A01: Set var_94 = Me.TopCtrl1
  loc_1474A07: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1474A20: If (CStr() = "Add") Then
  loc_1474A29:   var_D0 = 0
  loc_1474A48:   unk_4BA273.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From GuestComments", var_B0, -1
  loc_1474A50:   var_94 = var_94.Fields
  loc_1474A58:   var_D0 = var_9C.Item(var_9C)
  loc_1474A60:   var_A0 = var_A0.Value
  loc_1474A89:   var_F4 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1474AB4:   var_104 = (1 + Format(CStr(var_E0), "0000"))
  loc_1474AB9:   var_88 = CStr(var_104)
  loc_1474ACA: Else
  loc_1474AE7:   var_9C = Me.Fields.Item("SCode")
  loc_1474AF8:   var_88 = CStr(var_9C.Value)
  loc_1474B05: End If
  loc_1474B0E: unk_4BA273.BeginTrans var_108
  loc_1474B1C: Set var_94 = Me.TopCtrl1
  loc_1474B22: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_1474B3B: If (CStr(1) = "Add") Then
  loc_1474B52:   var_98 = "Insert INTO GuestComments(Code,Name,                               Add1,               Add2,               City,               PinCode,               PhoneR,               PhoneO,               MobileNo,               DatenTime,              Comments,                   Company,                         FuncType,                         BussSource,                         MarketSeg,                 VType,            U_Name,                Site_Code,                 U_EntDt,   U_AE) " & "VALUES('"
  loc_1474B60:   var_F4 = CVar(var_98 & var_88 & "','") 'String
  loc_1474B6E:   Set var_94 = Me.txt
  loc_1474B74:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C, var_F4, var_654)
  loc_1474B83:   var_E0 = Trim(CVar(var_9C))
  loc_1474B8B:   var_104 = -1 & var_E0 
  loc_1474BA6:   Set var_A0 = Me.txt
  loc_1474BAC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_124, var_104 & "','")
  loc_1474BB4:   var_658 = var_120.Text
  loc_1474BC8:   var_154 = var_F4 & CVar(var_124) & "','" 
  loc_1474BDA:   Set var_158 = Me.txt
  loc_1474BE0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_15C, var_160)
  loc_1474BE8:   var_154 = var_15C.Text
  loc_1474C0E:   Set var_1A4 = Me.txt
  loc_1474C14:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1A8)
  loc_1474C42:   Set var_1F0 = Me.txt
  loc_1474C48:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1F4)
  loc_1474C76:   Set var_23C = Me.txt
  loc_1474C7C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_240)
  loc_1474CAA:   Set var_288 = Me.txt
  loc_1474CB0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_28C)
  loc_1474CC3:   var_2B0 = var_E0 & CVar(var_160) & "','" & CVar(var_1A8.Text) & "','" & CVar(var_1F4.Text) & "','" & CVar(var_240.Text) & "','" & CVar(var_28C.Text) 
  loc_1474CDE:   Set var_2D4 = Me.txt
  loc_1474CE4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_2D8)
  loc_1474D12:   Set var_320 = Me.txt
  loc_1474D18:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_324)
  loc_1474D3F:   Set var_36C = var_2B0 & "','" & CVar(var_2D8.Text) & "','" & CVar(var_324.Text) & "','"(var_370)
  loc_1474D45:    = var_36C.Text
  loc_1474D6B:   Set var_3B4 = Me.txt
  loc_1474D71:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_3B8)
  loc_1474DAA:   Set var_410 = Me.txt
  loc_1474DB0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_414)
  loc_1474DE9:   Set var_46C = Me.txt
  loc_1474DEF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_470)
  loc_1474E16:   var_4C4 = CVar(var_370) & "','" & Trim(CVar(var_3B8.Tag)) & "','" & Trim(CVar(var_414.Tag)) & "','" & Trim(CVar(var_470.Tag)) & "','" 
  loc_1474E28:   Set var_4C8 = Me.txt
  loc_1474E2E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_4CC)
  loc_1474E88:   var_5C0 = var_4C4 & Trim(CVar(var_4CC.Tag)) & "','" & CVar(global_92) & "','" & CVar(MemVar_1F950C8) & "','" & CVar(MemVar_1F95078) 
  loc_1474EA3:   Proc_6_7_F26918(var_600, Date)
  loc_1474EC2:   unk_4BA273.Execute CStr(var_5C0 & "'," & var_600 & ",'A')"), , 
  loc_1474F85: Else
  loc_1474FA3:   Set var_94 = Me.txt
  loc_1474FA9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C, var_98, "UPDATE GuestComments SET Name='")
  loc_1474FB1:   var_2EC = var_9C.Text
  loc_1474FBA:   var_10C = -1 & var_98
  loc_1474FC1:   var_160 = var_98 & var_88 & "',Add1 = '"
  loc_1474FD2:   Set var_A0 = Me.txt
  loc_1474FD8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_124)
  loc_1474FE0:   var_160 = var_120.Text
  loc_1475001:   Set var_158 = Me.txt
  loc_1475007:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_15C)
  loc_1475030:   Set var_1A4 = Me.txt
  loc_1475036:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1A8)
  loc_147505F:   Set var_1F0 = Me.txt
  loc_1475065:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1F4)
  loc_147507D:   var_634 = var_4C8 & var_124 & "',Add2 = '" & var_15C.Text & "',City = '" & var_1A8.Text & "',PinCode='" & var_1F4.Text & "',PhoneR='"
  loc_147508E:   Set var_23C = Me.txt
  loc_1475094:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_240)
  loc_14750BD:   Set var_288 = Me.txt
  loc_14750C3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_28C)
  loc_14750EC:   Set var_2D4 = Me.txt
  loc_14750F2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_2D8)
  loc_147511A:    = var_634 & var_240.Text & "',PhoneO='" & var_28C.Text & "',MobileNo='" & var_2D8.Text & "',Comments='"(var_678).Text
  loc_147513B:   Set var_324 = Me.txt
  loc_1475141:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_36C)
  loc_1475163:   var_C0 = "',FuncType='"
  loc_147517A:   Set var_3B4 = Me.txt
  loc_1475180:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_3B8)
  loc_14751B9:   Set var_410 = Me.txt
  loc_14751BF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_414)
  loc_14751DD:   var_1BC = CVar(var_678 & "',Company='") & Trim(CVar(var_36C.Tag)) & var_C0 & Trim(CVar(var_3B8.Tag)) & "',BussSource='" & Trim(CVar(var_414.Tag)) 
  loc_14751F8:   Set var_46C = Me.txt
  loc_14751FE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_470)
  loc_1475242:   var_284 = var_1BC & "',MarketSeg='" & Trim(CVar(var_470.Tag)) & "',SITE_CODE='" & CVar(MemVar_1F95078) & "',U_name='" & CVar(MemVar_1F950C8) 
  loc_147526C:   unk_4BA273.Execute CStr(var_284 & "' WHERE Code='" & CVar(var_88) & "'"), , 
  loc_1475314: End If
  loc_147531A: unk_4BA273.CommitTrans
  loc_1475321: var_8E = 0
  loc_147532F: Me.Requery -1
  loc_1475359: Me.Find "SCode ='" & var_88 & "'", 0, 1
  loc_1475369: Set var_94 = Me.TopCtrl1
  loc_147536F: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_1475388: If (CStr(var_8E) = "Add") Then
  loc_147538B:   Call TopCtrl1_UnknownEvent_A()
  loc_1475390:   Exit Sub
  loc_1475391: End If
  loc_14753B4: Call Proc_148_42_E7CA24(Proc_5_1_100EC1C("INI", Me))
  loc_14753BF: Call Proc_148_40_13EA274(global_60)
  loc_14753C9: Set var_8C = Nothing
  loc_14753CC: Exit Sub
  loc_14753CD: ' Referenced from: 1474988
  loc_14753D3: If (var_8E = &HFF) Then
  loc_14753DC:   unk_4BA273.RollbackTrans
  loc_14753E1: End If
  loc_14753E1: Proc_6_60_E63754()
  loc_14753E6: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '141D6A4
  'Data Table: 4BA25C
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_141CC16: Set var_88 = Me.txt
  loc_141CC1C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_141CC2A: Proc_6_74_E23240(var_8C)
  loc_141CC36: Call Proc_148_43_F23880(var_8C)
  loc_141CC3E: var_92 = Index
  loc_141CC49: If (var_92 = CInt(4)) Then
  loc_141CC63:   If (Me.RecordCount > 0) Then
  loc_141CC71:     Set var_8C = (var_92)
  loc_141CC89:     Proc_6_137_1192FDC(Me.DGCity, global_108)
  loc_141CC97:   End If
  loc_141CCE5:   Set var_88 = Me.txt
  loc_141CCEB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_141CCF3:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_141CD0B:   If (Index Or (var_A0 = vbNullString)) Then
  loc_141CD0E:     Exit Sub
  loc_141CD0F:   End If
  loc_141CD1C:   Set var_88 = Me.txt
  loc_141CD22:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141CD2A:   var_A0 = var_8C.Text
  loc_141CD3C:   var_B0 = "Name"
  loc_141CD77:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_141CD80:     Me.MoveFirst
  loc_141CDA3:     Set var_88 = Me.txt
  loc_141CDA9:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_141CDB1:     0 = var_8C.Text
  loc_141CDCA:     Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_141CDDF:   End If
  loc_141CDE2: Else
  loc_141CDEA:   If (var_92 = CInt(1)) Then
  loc_141CE04:     If (Me.RecordCount > 0) Then
  loc_141CE12:       Set var_8C = ()
  loc_141CE2A:       Proc_6_137_1192FDC((), global_68)
  loc_141CE38:     End If
  loc_141CE86:     Set var_88 = Me.txt
  loc_141CE8C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_141CE94:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_141CEAC:     If (Index Or (var_A0 = vbNullString)) Then
  loc_141CEAF:       Exit Sub
  loc_141CEB0:     End If
  loc_141CEBD:     Set var_88 = Me.txt
  loc_141CEC3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141CECB:     var_A0 = var_8C.Text
  loc_141CEDD:     var_B0 = "Name"
  loc_141CF18:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_141CF21:       Me.MoveFirst
  loc_141CF44:       Set var_88 = Me.txt
  loc_141CF4A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_141CF52:       0 = var_8C.Text
  loc_141CF6B:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_141CF80:     End If
  loc_141CF83:   Else
  loc_141CF8B:     If (var_92 = CInt(&HC)) Then
  loc_141CFA5:       If (Me.RecordCount > 0) Then
  loc_141CFB3:         Set var_8C = ()
  loc_141CFCB:         Proc_6_137_1192FDC((), global_64)
  loc_141CFD9:       End If
  loc_141D027:       Set var_88 = Me.txt
  loc_141D02D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_141D035:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_141D04D:       If (Index Or (var_A0 = vbNullString)) Then
  loc_141D05D:         Set var_88 = Me.txt
  loc_141D063:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141D06B:         var_8C.Tag = vbNullString
  loc_141D077:         Exit Sub
  loc_141D078:       End If
  loc_141D085:       Set var_88 = Me.txt
  loc_141D08B:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141D093:       var_A0 = var_8C.Text
  loc_141D0A5:       var_B0 = "Name"
  loc_141D0E0:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_141D0E9:         Me.MoveFirst
  loc_141D10C:         Set var_88 = Me.txt
  loc_141D112:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_141D11A:         0 = var_8C.Text
  loc_141D133:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_141D148:       End If
  loc_141D14B:     Else
  loc_141D153:       If (var_92 = CInt(&HA)) Then
  loc_141D16D:         If (Me.RecordCount > 0) Then
  loc_141D17B:           Set var_8C = ()
  loc_141D193:           Proc_6_137_1192FDC((), global_80)
  loc_141D1A1:         End If
  loc_141D1EF:         Set var_88 = Me.txt
  loc_141D1F5:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_141D1FD:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_141D215:         If (Index Or (var_A0 = vbNullString)) Then
  loc_141D225:           Set var_88 = Me.txt
  loc_141D22B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141D233:           var_8C.Tag = vbNullString
  loc_141D23F:           Exit Sub
  loc_141D240:         End If
  loc_141D24D:         Set var_88 = Me.txt
  loc_141D253:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141D25B:         var_A0 = var_8C.Text
  loc_141D26D:         var_B0 = "Name"
  loc_141D2A8:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_141D2B1:           Me.MoveFirst
  loc_141D2D4:           Set var_88 = Me.txt
  loc_141D2DA:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_141D2E2:           0 = var_8C.Text
  loc_141D2FB:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_141D310:         End If
  loc_141D313:       Else
  loc_141D31B:         If (var_92 = CInt(&HD)) Then
  loc_141D335:           If (Me.RecordCount > 0) Then
  loc_141D343:             Set var_8C = ()
  loc_141D35B:             Proc_6_137_1192FDC((), global_72)
  loc_141D369:           End If
  loc_141D3B7:           Set var_88 = Me.txt
  loc_141D3BD:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_141D3C5:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_141D3DD:           If (Index Or (var_A0 = vbNullString)) Then
  loc_141D3ED:             Set var_88 = Me.txt
  loc_141D3F3:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141D3FB:             var_8C.Tag = vbNullString
  loc_141D407:             Exit Sub
  loc_141D408:           End If
  loc_141D415:           Set var_88 = Me.txt
  loc_141D41B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141D423:           var_A0 = var_8C.Text
  loc_141D435:           var_B0 = "Name"
  loc_141D470:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_141D479:             Me.MoveFirst
  loc_141D49C:             Set var_88 = Me.txt
  loc_141D4A2:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_141D4AA:             0 = var_8C.Text
  loc_141D4C3:             Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_141D4D8:           End If
  loc_141D4DB:         Else
  loc_141D4E3:           If (var_92 = CInt(&HB)) Then
  loc_141D4FD:             If (Me.RecordCount > 0) Then
  loc_141D50B:               Set var_8C = ()
  loc_141D523:               Proc_6_137_1192FDC((), global_76)
  loc_141D531:             End If
  loc_141D57F:             Set var_88 = Me.txt
  loc_141D585:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_141D58D:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_141D5A5:             If (Index Or (var_A0 = vbNullString)) Then
  loc_141D5B5:               Set var_88 = Me.txt
  loc_141D5BB:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141D5C3:               var_8C.Tag = vbNullString
  loc_141D5CF:               Exit Sub
  loc_141D5D0:             End If
  loc_141D5DD:             Set var_88 = Me.txt
  loc_141D5E3:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141D5EB:             var_A0 = var_8C.Text
  loc_141D5FD:             var_B0 = "Name"
  loc_141D638:             If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_141D641:               Me.MoveFirst
  loc_141D664:               Set var_88 = Me.txt
  loc_141D66A:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_141D672:               0 = var_8C.Text
  loc_141D68B:               Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_141D6A0:             End If
  loc_141D6A0:           End If
  loc_141D6A0:         End If
  loc_141D6A0:       End If
  loc_141D6A0:     End If
  loc_141D6A0:   End If
  loc_141D6A0: End If
  loc_141D6A0: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1343A44
  'Data Table: 4BA25C
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As DataGrid
  Dim var_9C As DataGrid
  Dim var_F4 As Variant
  loc_1343276: If (CLng(Shift) = &H1B) Then
  loc_1343279:   Call Proc_148_43_F23880()
  loc_134327E:   Exit Sub
  loc_134327F: End If
  loc_1343282: var_86 = KeyCode
  loc_134328D: If (var_86 = CInt(4)) Then
  loc_13432AD:   Set var_9C = (var_86)
  loc_13432DF:   Proc_6_79_11AD564(Me.DGCity, Me.txt, CInt(4), global_108, Shift)
  loc_134334C:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1343353:     Set var_9C = Me.DGCity
  loc_134335A:     Set var_90 = 1(&HFF)
  loc_1343372:     Proc_6_138_106E830(var_9C, global_108, KeyCode)
  loc_1343380:   End If
  loc_1343383: Else
  loc_134338B:   If (var_86 = CInt(1)) Then
  loc_13433B0:     If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_13433D0:       Set var_9C = (0)
  loc_1343402:       Proc_6_79_11AD564(var_9C(Me.txt), Me.txt, CInt(1), global_68, Shift)
  loc_1343416:     End If
  loc_134346F:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1343476:       Set var_9C = 0(&HFF)
  loc_134347D:       Set var_90 = 0(var_9C)
  loc_1343495:       Proc_6_138_106E830(var_9C, global_68)
  loc_13434A3:     End If
  loc_13434A6:   Else
  loc_13434AE:     If (var_86 = CInt(&HC)) Then
  loc_13434D9:       Set var_9C = Nothing
  loc_1343507:       Proc_6_69_134A630(Me.txt(KeyCode), Me.txt, KeyCode, global_64, Shift)
  loc_1343576:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_134357D:         Set var_9C = 1(0)
  loc_1343584:         Set var_90 = ()(var_9C)
  loc_134359C:         Proc_6_138_106E830(var_9C, global_64, KeyCode)
  loc_13435AA:       End If
  loc_13435AD:     Else
  loc_13435B5:       If (var_86 = CInt(&HA)) Then
  loc_13435E0:         Set var_9C = Nothing
  loc_134360E:         Proc_6_69_134A630(0(Me.txt), Me.txt, KeyCode, global_80, Shift)
  loc_134367D:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1343684:           Set var_9C = 1(0)
  loc_134368B:           Set var_90 = ()(var_9C)
  loc_13436A3:           Proc_6_138_106E830(var_9C, global_80, KeyCode)
  loc_13436B1:         End If
  loc_13436B4:       Else
  loc_13436BC:         If (var_86 = CInt(&HB)) Then
  loc_13436E7:           Set var_9C = Nothing
  loc_1343715:           Proc_6_69_134A630(0(Me.txt), Me.txt, KeyCode, global_76, Shift)
  loc_1343784:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_134378B:             Set var_9C = 1(0)
  loc_1343792:             Set var_90 = ()(var_9C)
  loc_13437AA:             Proc_6_138_106E830(var_9C, global_76, KeyCode)
  loc_13437B8:           End If
  loc_13437BB:         Else
  loc_13437C3:           If (var_86 = CInt(&HD)) Then
  loc_13437EE:             Set var_9C = Nothing
  loc_134381C:             Proc_6_69_134A630(0(Me.txt), Me.txt, KeyCode, global_72, Shift)
  loc_134388B:             If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1343892:               Set var_9C = 1(0)
  loc_1343899:               Set var_90 = ()(var_9C)
  loc_13438B1:               Proc_6_138_106E830(var_9C, global_72, KeyCode)
  loc_13438BF:             End If
  loc_13438BF:           End If
  loc_13438BF:         End If
  loc_13438BF:       End If
  loc_13438BF:     End If
  loc_13438BF:   End If
  loc_13438BF: End If
  loc_134390D: var_F4 = (( And (CBool(((0 And (CBool(var_90((CBool(Me.DGCity.Visible) = 0))((CBool(Me.DGCity.Visible) = 0)).Visible) = 0))).Visible) = 0))).Visible
  loc_1343966: If ( And (CBool((( And (CBool((( And (CBool(var_F4) = 0))).Visible) = 0))).Visible) = 0)) Then
  loc_134397E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1343987:     Proc_6_75_E5335C(Shift)
  loc_134398C:   End If
  loc_1343990:   Set var_8C = Me.TopCtrl1
  loc_1343996:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_14)
  loc_13439AF:   If (CStr() = "Add") Then
  loc_13439C7:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_13439D0:       Proc_6_76_E533C8(Shift)
  loc_13439D5:     End If
  loc_13439D8:   Else
  loc_13439DC:     Set var_8C = Me.TopCtrl1
  loc_13439E2:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_14)
  loc_13439FB:     If (CStr() = "Edit") Then
  loc_1343A13:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1343A1C:         Proc_6_76_E533C8(Shift)
  loc_1343A21:       End If
  loc_1343A21:     End If
  loc_1343A21:   End If
  loc_1343A36:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1343A3C:     Call Proc_148_44_E83D04(KeyCode)
  loc_1343A41:   End If
  loc_1343A41: End If
  loc_1343A41: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '105600C
  'Data Table: 4BA25C
  Dim var_86 As Integer
  loc_1055D98: On Error Goto loc_1056003
  loc_1055D9E: Proc_6_58_E06050(arg_10)
  loc_1055DA6: var_86 = KeyAscii
  loc_1055DB1: If (var_86 = CInt(&HC)) Then
  loc_1055DD0:   If (CBool((var_86).Visible) = &HFF) Then
  loc_1055DFD:     Proc_6_89_1470B00(Me.txt, KeyAscii, global_64)
  loc_1055E17:     Set var_A8 = (0)
  loc_1055E2F:     Proc_6_138_106E830("Name"(arg_10), global_64)
  loc_1055E3D:   End If
  loc_1055E40: Else
  loc_1055E48:   If (var_86 = CInt(&HD)) Then
  loc_1055E67:     If (CBool(var_A8(KeyAscii).Visible) = &HFF) Then
  loc_1055E94:       Proc_6_89_1470B00(Me.txt, KeyAscii, global_72)
  loc_1055EAE:       Set var_A8 = (0)
  loc_1055EC6:       Proc_6_138_106E830("Name"(arg_10), global_72)
  loc_1055ED4:     End If
  loc_1055ED7:   Else
  loc_1055EDF:     If (var_86 = CInt(&HA)) Then
  loc_1055EFE:       If (CBool(var_A8(KeyAscii).Visible) = &HFF) Then
  loc_1055F2B:         Proc_6_89_1470B00(Me.txt, KeyAscii, global_80)
  loc_1055F45:         Set var_A8 = (0)
  loc_1055F5D:         Proc_6_138_106E830("Name"(arg_10), global_80)
  loc_1055F6B:       End If
  loc_1055F6E:     Else
  loc_1055F76:       If (var_86 = CInt(&HB)) Then
  loc_1055F95:         If (CBool(var_A8(KeyAscii).Visible) = &HFF) Then
  loc_1055FC2:           Proc_6_89_1470B00(Me.txt, KeyAscii, global_76)
  loc_1055FDC:           Set var_A8 = (0)
  loc_1055FF4:           Proc_6_138_106E830("Name"(arg_10), global_76)
  loc_1056002:         End If
  loc_1056002:       End If
  loc_1056002:     End If
  loc_1056002:   End If
  loc_1056002: End If
  loc_1056002: Exit Sub
  loc_1056003: ' Referenced from: 1055D98
  loc_1056003: Proc_6_60_E63754(KeyAscii)
  loc_1056008: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F6689C
  'Data Table: 4BA25C
  Dim var_86 As Integer
  loc_F6676F: var_86 = KeyCode
  loc_F6677A: If (var_86 = CInt(4)) Then
  loc_F66799:   If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_F667C5:     Proc_6_80_FF1F20(Me.txt, CInt(4), global_108)
  loc_F667DF:     Set var_A8 = "Name"(Shift)
  loc_F667F7:     Proc_6_138_106E830(Me.DGCity, global_108, KeyCode)
  loc_F66805:   End If
  loc_F66808: Else
  loc_F66810:   If (var_86 = CInt(1)) Then
  loc_F6682F:     If (CBool(var_86(var_A8).Visible) = &HFF) Then
  loc_F6685B:       Proc_6_80_FF1F20(Me.txt, CInt(1), global_68)
  loc_F66875:       Set var_A8 = ()
  loc_F6688D:       Proc_6_138_106E830("Name"(Shift), global_68)
  loc_F6689B:     End If
  loc_F6689B:   End If
  loc_F6689B: End If
  loc_F6689B: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D0BC
  'Data Table: 4BA25C
  loc_E4D09A: Set var_88 = Me.txt
  loc_E4D0A0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D0AE: Proc_6_73_E23294(var_8C)
  loc_E4D0BA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13B89C0
  'Data Table: 4BA25C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_8C As Fields15
  Dim var_94 As String
  Dim var_B8 As TextBox
  Dim arg_10 As Integer
  loc_13B8058: On Error Goto loc_13B89BA
  loc_13B805E: var_86 = Cancel
  loc_13B8069: If (var_86 = CInt(4)) Then
  loc_13B8079:   Set var_8C = Me.txt
  loc_13B807F:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B8087:   var_94 = var_90.Text
  loc_13B809E:   If (var_94 = vbNullString) Then
  loc_13B80AE:     Set var_8C = Me.txt
  loc_13B80B4:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B80BC:     var_90.Tag = vbNullString
  loc_13B80C8:     Exit Sub
  loc_13B80C9:   End If
  loc_13B80E0:   If (Me.RecordCount <= 0) Then
  loc_13B80E3:     Exit Sub
  loc_13B80E4:   End If
  loc_13B80EA:   Me.MoveFirst
  loc_13B810D:   Set var_8C = Me.txt
  loc_13B8113:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94, "Name like '")
  loc_13B811B:   0 = var_90.Text
  loc_13B8134:   Me.Find 1 & var_94 & "*'", var_B0, var_86
  loc_13B8160:   If (Me.AbsolutePosition > 0) Then
  loc_13B819E:     Set var_B4 = Me.txt
  loc_13B81A4:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B81AC:     var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13B81DF:     var_90 = Me.Fields.Item("Code")
  loc_13B81FD:     Set var_B4 = Me.txt
  loc_13B8203:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B820B:     var_B8.Tag = CStr(var_90.Value)
  loc_13B8221:   End If
  loc_13B8224: Else
  loc_13B822C:   If (var_86 = CInt(&HC)) Then
  loc_13B827D:     Set var_8C = Me.txt
  loc_13B8283:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B82A3:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_13B82B3:       Set var_8C = Me.txt
  loc_13B82B9:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B82C1:       var_90.Tag = vbNullString
  loc_13B82CD:       Exit Sub
  loc_13B82CE:     End If
  loc_13B8309:     Set var_B4 = Me.txt
  loc_13B830F:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B8317:     var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13B834A:     var_90 = Me.Fields.Item("Code")
  loc_13B8368:     Set var_B4 = Me.txt
  loc_13B836E:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B8376:     var_B8.Tag = CStr(var_90.Value)
  loc_13B838F:   Else
  loc_13B8397:     If (var_86 = CInt(&HD)) Then
  loc_13B83E8:       Set var_8C = Me.txt
  loc_13B83EE:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B840E:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_13B841E:         Set var_8C = Me.txt
  loc_13B8424:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B842C:         var_90.Tag = vbNullString
  loc_13B8438:         Exit Sub
  loc_13B8439:       End If
  loc_13B8474:       Set var_B4 = Me.txt
  loc_13B847A:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B8482:       var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13B84B5:       var_90 = Me.Fields.Item("Code")
  loc_13B84D3:       Set var_B4 = Me.txt
  loc_13B84D9:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B84E1:       var_B8.Tag = CStr(var_90.Value)
  loc_13B84FA:     Else
  loc_13B8502:       If (var_86 = CInt(&HA)) Then
  loc_13B8553:         Set var_8C = Me.txt
  loc_13B8559:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B8579:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_13B8589:           Set var_8C = Me.txt
  loc_13B858F:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B8597:           var_90.Tag = vbNullString
  loc_13B85A3:           Exit Sub
  loc_13B85A4:         End If
  loc_13B85DF:         Set var_B4 = Me.txt
  loc_13B85E5:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B85ED:         var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13B8620:         var_90 = Me.Fields.Item("Code")
  loc_13B863E:         Set var_B4 = Me.txt
  loc_13B8644:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B864C:         var_B8.Tag = CStr(var_90.Value)
  loc_13B8665:       Else
  loc_13B866D:         If (var_86 = CInt(&HB)) Then
  loc_13B86BE:           Set var_8C = Me.txt
  loc_13B86C4:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B86E4:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_13B86F4:             Set var_8C = Me.txt
  loc_13B86FA:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B8702:             var_90.Tag = vbNullString
  loc_13B870E:             Exit Sub
  loc_13B870F:           End If
  loc_13B874A:           Set var_B4 = Me.txt
  loc_13B8750:           Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B8758:           var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13B8774:           var_B0 = "Code"
  loc_13B878B:           var_90 = Me.Fields.Item(var_B0)
  loc_13B87A9:           Set var_B4 = Me.txt
  loc_13B87AF:           Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B87B7:           var_B8.Tag = CStr(var_90.Value)
  loc_13B87D0:         Else
  loc_13B87D8:           If (var_86 = CInt(1)) Then
  loc_13B87E8:             Set var_8C = Me.txt
  loc_13B87EE:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B87F6:             var_94 = var_90.Text
  loc_13B880D:             If (var_94 = vbNullString) Then
  loc_13B881D:               Set var_8C = Me.txt
  loc_13B8823:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B882B:               var_90.Tag = vbNullString
  loc_13B8839:               arg_10 = &HFF
  loc_13B883C:               Exit Sub
  loc_13B883D:             End If
  loc_13B8854:             If (Me.RecordCount <= 0) Then
  loc_13B8857:               GoTo loc_13B89B9
  loc_13B885A:             End If
  loc_13B8860:             Me.MoveFirst
  loc_13B8883:             Set var_8C = Me.txt
  loc_13B8889:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94, "Name like '")
  loc_13B8891:             0 = var_90.Text
  loc_13B88AA:             Me.Find 1 & var_94 & "*'", var_B0, arg_10
  loc_13B88D6:             If (Me.AbsolutePosition > 0) Then
  loc_13B88F0:               If (Me.RecordCount > 0) Then
  loc_13B892E:                 Set var_B4 = Me.txt
  loc_13B8934:                 Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B893C:                 var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13B898D:                 Set var_B4 = Me.txt
  loc_13B8993:                 Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B899B:                 var_B8.Tag = CStr(Me.Fields.Item("DocID").Value)
  loc_13B89B1:                 Call Proc_148_45_12AA254()
  loc_13B89B6:                 GoTo loc_13B89B9
  loc_13B89B9:                 ' Referenced from:           13B89B6
  loc_13B89B9:                 ' Referenced from:           13B8857
  loc_13B89B9:               End If
  loc_13B89B9:             End If
  loc_13B89B9:           End If
  loc_13B89B9:         End If
  loc_13B89B9:       End If
  loc_13B89B9:     End If
  loc_13B89B9:   End If
  loc_13B89B9: End If
  loc_13B89B9: Exit Sub
  loc_13B89BA: ' Referenced from: 13B8058
  loc_13B89BA: Proc_6_60_E63754()
  loc_13B89BF: Exit Sub
End Sub

Private Sub DGMarketSeg_UnknownEvent_9 'F4EBB4
  'Data Table: 4BA25C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4EAAB: (False).Visible = 
  loc_F4EACA: If (Me.RecordCount > 0) Then
  loc_F4EB09:   Set var_B4 = Me.txt
  loc_F4EB0F:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F4EB17:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4EB4A:   var_B0 = Me.Fields.Item("Code")
  loc_F4EB69:   Set var_B4 = Me.txt
  loc_F4EB6F:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F4EB77:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4EB8D: End If
  loc_F4EB98: Set var_A8 = Me.txt
  loc_F4EB9E: Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HC))
  loc_F4EBA6: var_B0.SetFocus
  loc_F4EBB2: Exit Sub
End Sub

Private Sub DGMarketSeg_UnknownEvent_1F 'EA3F78
  'Data Table: 4BA25C
  Dim var_A8 As Variant
  loc_EA3EF8: Set var_88 = ()
  loc_EA3F22: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3F2A: Set var_BC = txt.DispID_1D(var_A8)
  loc_EA3F66: Proc_6_138_106E830((txt.DispID_1B), global_64)
  loc_EA3F74: Exit Sub
  loc_EA3F75: CInt(&HC) = ()
End Sub

Private Sub DGFuncType_UnknownEvent_9 'F4F554
  'Data Table: 4BA25C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4F44B: (False).Visible = 
  loc_F4F46A: If (Me.RecordCount > 0) Then
  loc_F4F4A9:   Set var_B4 = Me.txt
  loc_F4F4AF:   Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F4F4B7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4F4EA:   var_B0 = Me.Fields.Item("Code")
  loc_F4F509:   Set var_B4 = Me.txt
  loc_F4F50F:   Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F4F517:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4F52D: End If
  loc_F4F538: Set var_A8 = Me.txt
  loc_F4F53E: Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(&HB))
  loc_F4F546: var_B0.SetFocus
  loc_F4F552: Exit Sub
End Sub

Private Sub DGFuncType_UnknownEvent_1F 'EA219C
  'Data Table: 4BA25C
  Dim var_A8 As Variant
  loc_EA211C: Set var_88 = ()
  loc_EA2146: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA214E: Set var_BC = txt.DispID_1D(var_A8)
  loc_EA218A: Proc_6_138_106E830((txt.DispID_1B), global_76)
  loc_EA2198: Exit Sub
  loc_EA2199: CInt(&HB) = ()
End Sub

Private Sub DGParty_UnknownEvent_9 'F4E634
  'Data Table: 4BA25C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4E52B: (False).Visible = 
  loc_F4E54A: If (Me.RecordCount > 0) Then
  loc_F4E589:   Set var_B4 = Me.txt
  loc_F4E58F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4E597:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4E5CA:   var_B0 = Me.Fields.Item("DocID")
  loc_F4E5E9:   Set var_B4 = Me.txt
  loc_F4E5EF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4E5F7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4E60D: End If
  loc_F4E618: Set var_A8 = Me.txt
  loc_F4E61E: Call 0.Method_DGParty_UnknownEvent_90 (CInt(1))
  loc_F4E626: var_B0.SetFocus
  loc_F4E632: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_1F 'EA48A8
  'Data Table: 4BA25C
  Dim var_A8 As Variant
  loc_EA4828: Set var_88 = ()
  loc_EA4852: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA485A: Set var_BC = txt.DispID_1D(var_A8)
  loc_EA4896: Proc_6_138_106E830((txt.DispID_1B), global_68)
  loc_EA48A4: Exit Sub
  loc_EA48A5: CInt(1) = ()
End Sub

Public Function global_52Get() '4BB1EC
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4BB1FB
  global_52 = Value
End Sub

Public Function global_56Get() '4BB20A
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4BB219
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E76A44
  'Data Table: 4BA25C
  Dim Me As Recordset15
  loc_E769EE: Me.MoveFirst
  loc_E76A18: Me.Find "SCode='" & mDocId & "'", 0, 1
  loc_E76A38: If (Me.EOF = 0) Then
  loc_E76A3B:   Call Proc_148_40_13EA274(var_9C)
  loc_E76A40: End If
  loc_E76A40: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E95030
  'Data Table: 4BA25C
  Dim Me As Recordset15
  loc_E94FBE: On Error Goto loc_E95027
  loc_E94FC7: Me.MoveFirst
  loc_E94FF1: Me.Find "SCode='" & MyValue & "'", 0, 1
  loc_E95019: Proc_5_0_1107AD0(&HFF, Me, global_60)
  loc_E95021: Call Proc_148_40_13EA274(0)
  loc_E95026: Exit Sub
  loc_E95027: ' Referenced from: E94FBE
  loc_E95027: Proc_6_60_E63754(var_A0)
  loc_E9502C: Exit Sub
  loc_E9502D:  = 
End Sub

Public Sub Proc_148_40_13EA274
  'Data Table: 4BA25C
  Dim Me As Recordset15
  Dim var_D0 As String
  Dim unk_4BA273 As Connection15
  Dim var_8C As Recordset15
  Dim var_128 As Variant
  Dim var_1EC As Recordset15
  Dim var_12C As TextBox
  loc_13E98AC: On Error Goto loc_13EA26C
  loc_13E98BB: (0).Enabled = 
  loc_13E98DA: If (Me.RecordCount > 0) Then
  loc_13E98EA:   var_D0 = "SELECT GC.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS EventName, SubGroup.Name as CompanyName FROM (((GuestComments GC LEFT JOIN MarketSeg ON GC.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON GC.BussSource = BussSource.Code) LEFT JOIN FunctionType ON GC.FuncType = FunctionType.Code) LEFT JOIN SubGroup ON GC.Company = SubGroup.SubCode Where GC.Code='"
  loc_13E9933:   unk_4BA273.Execute CStr(var_D0 & Me.Fields.Item("SCode").Value & "'"), var_124, -1
  loc_13E993E:   Set var_8C = var_128
  loc_13E9992:   var_128 = var_8C.Fields
  loc_13E99FB:   var_190 = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_128.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_13E9A40:   (CStr(var_128 & CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_Name")), var_190)))).Caption = 
  loc_13E9ABA:   var_12C = var_8C.Fields.Item("U_AE")
  loc_13E9B1B:   var_190 = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_12C)) = "E"), "Last Update : ", "entdt : "))
  loc_13E9B60:   (CStr(var_190 & CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_EntDt")))))).Caption = 
  loc_13E9B9B:   Set var_1EC = var_8C 
  loc_13E9BD8:   Set var_128 = Me.txt
  loc_13E9BDE:   Call 0.Method_Proc_148_40_13EA2740 (CInt(0), var_12C)
  loc_13E9BE6:   var_12C.Text = CStr(var_1EC.Fields.Item("DatenTime").Value)
  loc_13E9C35:   Set var_128 = Me.txt
  loc_13E9C3B:   Call 0.Method_Proc_148_40_13EA2740 (CInt(1), var_12C)
  loc_13E9C43:   var_12C.Text = CStr(var_1EC.Fields.Item("Name").Value)
  loc_13E9C92:   Set var_128 = Me.txt
  loc_13E9C98:   Call 0.Method_Proc_148_40_13EA2740 (CInt(2), var_12C)
  loc_13E9CA0:   var_12C.Text = CStr(var_1EC.Fields.Item("Add1").Value)
  loc_13E9CEF:   Set var_128 = Me.txt
  loc_13E9CF5:   Call 0.Method_Proc_148_40_13EA2740 (CInt(3), var_12C)
  loc_13E9CFD:   var_12C.Text = CStr(var_1EC.Fields.Item("Add2").Value)
  loc_13E9D4C:   Set var_128 = Me.txt
  loc_13E9D52:   Call 0.Method_Proc_148_40_13EA2740 (CInt(4), var_12C)
  loc_13E9D5A:   var_12C.Text = CStr(var_1EC.Fields.Item("City").Value)
  loc_13E9DA9:   Set var_128 = Me.txt
  loc_13E9DAF:   Call 0.Method_Proc_148_40_13EA2740 (CInt(5), var_12C)
  loc_13E9DB7:   var_12C.Text = CStr(var_1EC.Fields.Item("PinCode").Value)
  loc_13E9E06:   Set var_128 = Me.txt
  loc_13E9E0C:   Call 0.Method_Proc_148_40_13EA2740 (CInt(6), var_12C)
  loc_13E9E14:   var_12C.Text = CStr(var_1EC.Fields.Item("PhoneR").Value)
  loc_13E9E63:   Set var_128 = Me.txt
  loc_13E9E69:   Call 0.Method_Proc_148_40_13EA2740 (CInt(7), var_12C)
  loc_13E9E71:   var_12C.Text = CStr(var_1EC.Fields.Item("PhoneO").Value)
  loc_13E9EC0:   Set var_128 = Me.txt
  loc_13E9EC6:   Call 0.Method_Proc_148_40_13EA2740 (CInt(8), var_12C)
  loc_13E9ECE:   var_12C.Text = CStr(var_1EC.Fields.Item("MobileNo").Value)
  loc_13E9F1D:   Set var_128 = Me.txt
  loc_13E9F23:   Call 0.Method_Proc_148_40_13EA2740 (CInt(9), var_12C)
  loc_13E9F2B:   var_12C.Text = CStr(var_1EC.Fields.Item("FaxNo").Value)
  loc_13E9F77:   Set var_128 = Me.txt
  loc_13E9F7D:   Call 0.Method_Proc_148_40_13EA2740 (CInt(&HB), var_12C)
  loc_13E9F85:   var_12C.Tag = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("FuncType")))
  loc_13E9FCF:   Set var_128 = Me.txt
  loc_13E9FD5:   Call 0.Method_Proc_148_40_13EA2740 (CInt(&HB), var_12C)
  loc_13E9FDD:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("EventName")))
  loc_13EA027:   Set var_128 = Me.txt
  loc_13EA02D:   Call 0.Method_Proc_148_40_13EA2740 (CInt(&HC), var_12C)
  loc_13EA035:   var_12C.Tag = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MarketSeg")))
  loc_13EA07F:   Set var_128 = Me.txt
  loc_13EA085:   Call 0.Method_Proc_148_40_13EA2740 (CInt(&HC), var_12C)
  loc_13EA08D:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("SegmentName")))
  loc_13EA0D7:   Set var_128 = Me.txt
  loc_13EA0DD:   Call 0.Method_Proc_148_40_13EA2740 (CInt(&HD), var_12C)
  loc_13EA0E5:   var_12C.Tag = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("BussSource")))
  loc_13EA12F:   Set var_128 = Me.txt
  loc_13EA135:   Call 0.Method_Proc_148_40_13EA2740 (CInt(&HD), var_12C)
  loc_13EA13D:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("BussSourcename")))
  loc_13EA187:   Set var_128 = Me.txt
  loc_13EA18D:   Call 0.Method_Proc_148_40_13EA2740 (CInt(&HA), var_12C)
  loc_13EA195:   var_12C.Tag = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Company")))
  loc_13EA1DF:   Set var_128 = Me.txt
  loc_13EA1E5:   Call 0.Method_Proc_148_40_13EA2740 (CInt(&HA), var_12C)
  loc_13EA1ED:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("CompanyName")))
  loc_13EA236:   (Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Comments")))).Text = 
  loc_13EA24A:   Set var_1EC = Nothing 
  loc_13EA24E: End If
  loc_13EA24E: Call Proc_148_43_F23880()
  loc_13EA258: Set var_8C = Nothing
  loc_13EA260: Set var_90 = Nothing
  loc_13EA268: Set var_94 = Nothing
  loc_13EA26B: Exit Sub
  loc_13EA26C: ' Referenced from: 13E98AC
  loc_13EA26C: Proc_6_60_E63754()
  loc_13EA271: Exit Sub
End Sub

Public Sub Proc_148_41_EB739C
  'Data Table: 4BA25C
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  loc_EB730A: Set var_8C = Me.txt
  loc_EB7310: Call 0.Method_Proc_148_41_EB739CC (var_8E, var_86)
  loc_EB7320: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB7336:   Set var_8C = Me.txt
  loc_EB733C:   Call 0.Method_Proc_148_41_EB739C0 (CInt(var_86), var_98)
  loc_EB7344:   var_98.Text = vbNullString
  loc_EB7360:   Set var_8C = Me.txt
  loc_EB7366:   Call 0.Method_Proc_148_41_EB739C0 (CInt(var_86), var_98)
  loc_EB736E:   var_98.Tag = vbNullString
  loc_EB737D: Next var_92 'Byte
  loc_EB7390: (vbNullString).Text = 
  loc_EB7398: Exit Sub
End Sub

Public Sub Proc_148_42_E7CA24(arg_C) 'E7CA24
  'Data Table: 4BA25C
  Dim var_98 As TextBox
  loc_E7C9D2: Set var_8C = Me.txt
  loc_E7C9D8: Call 0.Method_Proc_148_42_E7CA24C (var_8E, var_86)
  loc_E7C9E8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C9FE:   Set var_8C = Me.txt
  loc_E7CA04:   Call 0.Method_Proc_148_42_E7CA240 (CInt(var_86), var_98)
  loc_E7CA0C:   var_98.Enabled = arg_C
  loc_E7CA1B: Next var_92 'Byte
  loc_E7CA21: Exit Sub
End Sub

Public Sub Proc_148_43_F23880
  'Data Table: 4BA25C
  loc_F2378C: If (CBool(().Visible) = &HFF) Then
  loc_F2379E:   (False).Visible = 
  loc_F237A6: End If
  loc_F237C2: If (CBool(().Visible) = &HFF) Then
  loc_F237D4:   (False).Visible = 
  loc_F237DC: End If
  loc_F237F8: If (CBool(().Visible) = &HFF) Then
  loc_F2380A:   (False).Visible = 
  loc_F23812: End If
  loc_F2382E: If (CBool(().Visible) = &HFF) Then
  loc_F23840:   (False).Visible = 
  loc_F23848: End If
  loc_F23864: If (CBool(().Visible) = &HFF) Then
  loc_F23876:   (False).Visible = 
  loc_F2387E: End If
  loc_F2387E: Exit Sub
End Sub

Public Sub Proc_148_44_E83D04
  'Data Table: 4BA25C
  loc_E83CA4: Call Proc_148_43_F23880()
  loc_E83CE0: If (MsgBox("Save Record ?", &H24, "Save", var_E4, var_104) = 6) Then
  loc_E83CE3:   Call TopCtrl1_UnknownEvent_16()
  loc_E83CEB: Else
  loc_E83CF1:   Call 0.Method_arg_1E8 (var_108)
  loc_E83CF9:   Call var_108.SetFocus
  loc_E83D02: End If
  loc_E83D02: Exit Sub
End Sub

Public Sub Proc_148_45_12AA254
  'Data Table: 4BA25C
  Dim var_94 As Variant
  Dim var_9C As String
  Dim unk_4BA273 As Connection15
  Dim var_88 As Recordset15
  Dim var_CC As Recordset15
  Dim var_90 As Fields15
  Dim var_98 As String
  Dim var_D0 As TextBox
  Dim var_C0 As Variant
  loc_12A9C56: Set var_90 = Me.txt
  loc_12A9C5C: Call 0.Method_Proc_148_45_12AA2540 (CInt(1), var_94, var_98, "SELECT S.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS FuncType, SubGroup.Name as Company FROM (((HallBook AS S LEFT JOIN MarketSeg ON S.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON S.BussSource = BussSource.Code) LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) LEFT JOIN SubGroup ON S.CompanyCode = SubGroup.SubCode Where S.Docid='")
  loc_12A9C64: var_C0 = var_94.Tag
  loc_12A9C6D: var_9C = -1 & var_98
  loc_12A9C7D: unk_4BA273.Execute var_9C & "'", var_C4, 
  loc_12A9C88: Set var_88 = var_C4
  loc_12A9CB4: If (var_88.RecordCount > 0) Then
  loc_12A9CBA:   Set var_CC = var_88 
  loc_12A9CF7:   Set var_C4 = Me.txt
  loc_12A9CFD:   Call 0.Method_Proc_148_45_12AA2540 (CInt(1), var_D0)
  loc_12A9D05:   var_D0.Text = CStr(var_CC.Fields.Item("PartyName").Value)
  loc_12A9D51:   Set var_C4 = Me.txt
  loc_12A9D57:   Call 0.Method_Proc_148_45_12AA2540 (CInt(2), var_D0)
  loc_12A9D5F:   var_D0.Text = Proc_6_38_E69628(CVar(var_CC.Fields.Item("Add1")))
  loc_12A9DA9:   Set var_C4 = Me.txt
  loc_12A9DAF:   Call 0.Method_Proc_148_45_12AA2540 (CInt(3), var_D0)
  loc_12A9DB7:   var_D0.Text = Proc_6_38_E69628(CVar(var_CC.Fields.Item("Add2")))
  loc_12A9E01:   Set var_C4 = Me.txt
  loc_12A9E07:   Call 0.Method_Proc_148_45_12AA2540 (CInt(4), var_D0)
  loc_12A9E0F:   var_D0.Text = Proc_6_38_E69628(CVar(var_CC.Fields.Item("City")))
  loc_12A9E59:   Set var_C4 = Me.txt
  loc_12A9E5F:   Call 0.Method_Proc_148_45_12AA2540 (CInt(5), var_D0)
  loc_12A9E67:   var_D0.Text = Proc_6_38_E69628(CVar(var_CC.Fields.Item("PinCode")))
  loc_12A9EB1:   Set var_C4 = Me.txt
  loc_12A9EB7:   Call 0.Method_Proc_148_45_12AA2540 (CInt(7), var_D0)
  loc_12A9EBF:   var_D0.Text = Proc_6_38_E69628(CVar(var_CC.Fields.Item("ContactNo_Res")))
  loc_12A9F09:   Set var_C4 = Me.txt
  loc_12A9F0F:   Call 0.Method_Proc_148_45_12AA2540 (CInt(6), var_D0)
  loc_12A9F17:   var_D0.Text = Proc_6_38_E69628(CVar(var_CC.Fields.Item("ContactNo_Off")))
  loc_12A9F61:   Set var_C4 = Me.txt
  loc_12A9F67:   Call 0.Method_Proc_148_45_12AA2540 (CInt(8), var_D0)
  loc_12A9F6F:   var_D0.Text = Proc_6_38_E69628(CVar(var_CC.Fields.Item("MobileNo")))
  loc_12A9FB9:   Set var_C4 = Me.txt
  loc_12A9FBF:   Call 0.Method_Proc_148_45_12AA2540 (CInt(&HB), var_D0)
  loc_12A9FC7:   var_D0.Tag = Proc_6_38_E69628(CVar(var_CC.Fields.Item("Func_Name")))
  loc_12AA011:   Set var_C4 = Me.txt
  loc_12AA017:   Call 0.Method_Proc_148_45_12AA2540 (CInt(&HB), var_D0)
  loc_12AA01F:   var_D0.Text = Proc_6_38_E69628(CVar(var_CC.Fields.Item("FuncType")))
  loc_12AA069:   Set var_C4 = Me.txt
  loc_12AA06F:   Call 0.Method_Proc_148_45_12AA2540 (CInt(&HA), var_D0)
  loc_12AA077:   var_D0.Tag = Proc_6_38_E69628(CVar(var_CC.Fields.Item("companyCode")))
  loc_12AA0C1:   Set var_C4 = Me.txt
  loc_12AA0C7:   Call 0.Method_Proc_148_45_12AA2540 (CInt(&HA), var_D0)
  loc_12AA0CF:   var_D0.Text = Proc_6_38_E69628(CVar(var_CC.Fields.Item("Company")))
  loc_12AA119:   Set var_C4 = Me.txt
  loc_12AA11F:   Call 0.Method_Proc_148_45_12AA2540 (CInt(&HD), var_D0)
  loc_12AA127:   var_D0.Tag = Proc_6_38_E69628(CVar(var_CC.Fields.Item("BussSource")))
  loc_12AA171:   Set var_C4 = Me.txt
  loc_12AA177:   Call 0.Method_Proc_148_45_12AA2540 (CInt(&HD), var_D0)
  loc_12AA17F:   var_D0.Text = Proc_6_38_E69628(CVar(var_CC.Fields.Item("BussSourcename")))
  loc_12AA1C9:   Set var_C4 = Me.txt
  loc_12AA1CF:   Call 0.Method_Proc_148_45_12AA2540 (CInt(&HC), var_D0)
  loc_12AA1D7:   var_D0.Tag = Proc_6_38_E69628(CVar(var_CC.Fields.Item("MarketSeg")))
  loc_12AA221:   Set var_C4 = Me.txt
  loc_12AA227:   Call 0.Method_Proc_148_45_12AA2540 (CInt(&HC), var_D0)
  loc_12AA22F:   var_D0.Text = Proc_6_38_E69628(CVar(var_CC.Fields.Item("SegmentName")))
  loc_12AA245:   Set var_CC = Nothing 
  loc_12AA249: End If
  loc_12AA24E: Set var_88 = Nothing
  loc_12AA251: Exit Sub
End Sub

Public Sub Proc_148_46_10C59D4
  'Data Table: 4BA25C
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim var_A4 As TextBox
  loc_10C5714: Set var_A4 = Me.txt
  loc_10C571A: Call 0.Method_Proc_148_46_10C59D40 (CInt(1), var_A8)
  loc_10C5722: var_A8.MaxLength = Me.Fields.Item("Name").DefinedSize
  loc_10C576A: Set var_A4 = Me.txt
  loc_10C5770: Call 0.Method_Proc_148_46_10C59D40 (CInt(2), var_A8)
  loc_10C5778: var_A8.MaxLength = Me.Fields.Item("Add1").DefinedSize
  loc_10C57C0: Set var_A4 = Me.txt
  loc_10C57C6: Call 0.Method_Proc_148_46_10C59D40 (CInt(3), var_A8)
  loc_10C57CE: var_A8.MaxLength = Me.Fields.Item("Add2").DefinedSize
  loc_10C5816: Set var_A4 = Me.txt
  loc_10C581C: Call 0.Method_Proc_148_46_10C59D40 (CInt(4), var_A8)
  loc_10C5824: var_A8.MaxLength = Me.Fields.Item("City").DefinedSize
  loc_10C586C: Set var_A4 = Me.txt
  loc_10C5872: Call 0.Method_Proc_148_46_10C59D40 (CInt(5), var_A8)
  loc_10C587A: var_A8.MaxLength = Me.Fields.Item("PinCode").DefinedSize
  loc_10C58C2: Set var_A4 = Me.txt
  loc_10C58C8: Call 0.Method_Proc_148_46_10C59D40 (CInt(7), var_A8)
  loc_10C58D0: var_A8.MaxLength = Me.Fields.Item("PhoneR").DefinedSize
  loc_10C5918: Set var_A4 = Me.txt
  loc_10C591E: Call 0.Method_Proc_148_46_10C59D40 (CInt(6), var_A8)
  loc_10C5926: var_A8.MaxLength = Me.Fields.Item("PhoneO").DefinedSize
  loc_10C596E: Set var_A4 = Me.txt
  loc_10C5974: Call 0.Method_Proc_148_46_10C59D40 (CInt(8), var_A8)
  loc_10C597C: var_A8.MaxLength = Me.Fields.Item("MobileNo").DefinedSize
  loc_10C59C3: (Me.Fields.Item("Comments").DefinedSize).MaxLength = 
  loc_10C59D1: Exit Sub
End Sub
