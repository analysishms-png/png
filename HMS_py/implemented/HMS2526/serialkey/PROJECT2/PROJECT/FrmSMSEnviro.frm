VERSION 5.00
Begin VB.Form FrmSMSEnviro
  Caption = "Parameter Setting"
  BackColor = &HCDE2D0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmSMSEnviro.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12135
  ClientHeight = 5835
  LockControls = -1  'True
  Begin DataGrid DGOutlet
    Left = 6915
    Top = 7560
    Width = 3900
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 91
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 5160
    Width = 12135
    Height = 675
    Visible = 0   'False
    TabIndex = 78
  End
  Begin DataGrid DGJobSchedule
    Left = 11385
    Top = 7395
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 31
  End
  Begin Frame FrmList
    Left = 960
    Top = 5895
    Width = 1260
    Height = 1830
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1245
      Height = 1830
      TabStop = 0   'False
      TabIndex = 19
    End
  End
  Begin DataGrid DGTaxStru
    Left = 11385
    Top = 7155
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin CommandButton Cmd
    Caption = "&Save && Exit"
    Index = 0
    BackColor = &HF9CECE&
    Left = 3195
    Top = 6885
    Width = 2265
    Height = 465
    TabIndex = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Cmd
    Caption = "&Cancel && Exit"
    Index = 1
    BackColor = &HF9CECE&
    Left = 5460
    Top = 6885
    Width = 2265
    Height = 465
    TabIndex = 10
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmSMSEnviro"

Private global_60 As Integer
Private global_72 As Variant

Private Sub CmdCheck_Click() 'FB8FD0
  'Data Table: 51FF60
  loc_FB8E40: Set var_88 = ()
  loc_FB8E60: Set var_DC = CVar(CLng(Txt.DispID_C))(CVar(CLng(3)))
  loc_FB8E8C: If (Len(CStr(Txt.DispID_41)) < &HA) Then
  loc_FB8EA8:   MsgBox("Enter 10 digit Mobile No.", &H10, var_EC, var_100, var_110)
  loc_FB8EB8:   Exit Sub
  loc_FB8EB9: End If
  loc_FB8EBD: Set var_88 = ()
  loc_FB8EDD: Set var_DC = CVar(CLng(Txt.DispID_C))(CVar(CLng(4)))
  loc_FB8F07: If (CStr(Txt.DispID_41) = vbNullString) Then
  loc_FB8F23:   MsgBox("Enter Appropriate Template Id.", &H10, var_EC, var_100, var_110)
  loc_FB8F33:   Exit Sub
  loc_FB8F34: End If
  loc_FB8F38: Set var_88 = ()
  loc_FB8F58: Set var_DC = CVar(CLng(Txt.DispID_C))(CVar(CLng(2)))
  loc_FB8F6E: Set var_114 = (Txt.DispID_41)
  loc_FB8F8E: Set var_158 = CVar(CLng(Txt.DispID_C))(CVar(CLng(1)))
  loc_FB8FAB: Proc_233_11_1A17BC8(CStr(var_EC))
  loc_FB8FCD: Exit Sub
End Sub

Public Sub LabelListView_UnknownEvent_C(Index As Integer) '11AB0D4
  'Data Table: 51FF60
  Dim var_9C As Variant
  Dim var_F0 As Variant
  Dim var_C8 As ListItem
  Dim var_D0 As String
  Dim var_B4 As TextBox
  Dim var_C4 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1D0 As TextBox
  Dim var_1E8 As Variant
  Dim var_25C As Variant
  Dim var_CC As String
  Dim var_124 As TextBox
  Dim var_120 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1F4 As TextBox
  Dim var_248 As Variant
  Dim var_268 As TextBox
  Dim var_B0 As TextBox
  Dim var_1790 As String
  loc_11AAD4F: Set var_88 = Index 
  loc_11AAD7D: If (CStr(().Tag) = CStr(&HA)) Then
  loc_11AADA3:   Set var_AC = (CInt(CStr(1(var_B0).Tag)))
  loc_11AADA9:   Call 0.Method_LabelListView_UnknownEvent_C0 ()
  loc_11AADB1:   var_F0 = CVar(var_B0) 'Address
  loc_11AADBF:   Set var_B4 = "<"(var_CC)
  loc_11AADD6:   var_F0 = Txt.DispID_D.Text
  loc_11AADDF:   var_D0 = var_CC
  loc_11AAE1B:   If CBool(InStr(, , CVar(var_D0 & ">"), 0) <> 0) Then
  loc_11AAE1E:     Exit Sub
  loc_11AAE1F:   End If
  loc_11AAE1F:   GoTo loc_11AAE22
  loc_11AAE22:   ' Referenced from: 11AAE1F
  loc_11AAE22: End If
  loc_11AAE2C: var_9C = ().Tag
  loc_11AAE45: Set var_AC = var_B0(CInt(CStr(var_9C)))
  loc_11AAE4B: Call 0.Method_LabelListView_UnknownEvent_C0 (var_9C)
  loc_11AAE5A: var_C4 = ().Tag
  loc_11AAE6D: var_1A4 = (var_C4).Tag
  loc_11AAE86: Set var_1AC = var_1B0(CInt(CStr(var_1A4)))
  loc_11AAE8C: Call 0.Method_LabelListView_UnknownEvent_C0 (var_1A4)
  loc_11AAEB7: Set var_1CC = var_1D0(CInt(CStr(().Tag)))
  loc_11AAEBD: Call 0.Method_LabelListView_UnknownEvent_C0 (var_1D4)
  loc_11AAEC5: var_1C4 = var_1D0.SelStart
  loc_11AAED4: var_1E8 = ().Tag
  loc_11AAEE7: var_25C = (var_1E8).Tag
  loc_11AAEFA: var_CC = CStr(var_C4)
  loc_11AAF03: Set var_C8 = var_124(CInt(var_CC))
  loc_11AAF09: Call 0.Method_LabelListView_UnknownEvent_C0 (var_128)
  loc_11AAF39: var_120 = (Mid(CVar(var_B0), 1, CVar(var_128)) + "<")
  loc_11AAF44: Set var_13C = var_120(var_D0)
  loc_11AAF5B:  = Txt.DispID_D.Text
  loc_11AAF66: var_170 = ( + CVar(var_D0))
  loc_11AAF6F: var_190 = (var_170 + ">")
  loc_11AAF86: Set var_1F0 = var_1F4(CInt(CStr(var_1E8)))
  loc_11AAF8C: Call 0.Method_LabelListView_UnknownEvent_C0 (var_1F8)
  loc_11AAF94: var_190 = var_1F4.Text
  loc_11AAFB4: var_238 = Mid(CVar(var_1B0), (var_1D4 + 1), CVar(Len(var_1F8)))
  loc_11AAFBC: var_248 = ( + var_238)
  loc_11AAFD4: Set var_264 = var_268(CInt(CStr(var_124.SelStart)))
  loc_11AAFDA: Call 0.Method_LabelListView_UnknownEvent_C0 (CStr(var_248))
  loc_11AAFE2: var_268.Text = 
  loc_11AB069: Set var_AC = (CInt(CStr(var_CC(var_B0).Tag)))
  loc_11AB06F: Call 0.Method_LabelListView_UnknownEvent_C0 ()
  loc_11AB077:  = var_B0.Text
  loc_11AB09E: Set var_C8 = (CInt(CStr(Len(var_CC)(var_124).Tag)))
  loc_11AB0A4: Call 0.Method_LabelListView_UnknownEvent_C0 ()
  loc_11AB0AC: var_124.SelStart = 
  loc_11AB0D0: Exit Sub
  loc_11AB0D2: var_1790 = 
End Sub

Private Sub Form_Load() 'FCF3BC
  'Data Table: 51FF60
  Dim var_C0 As Variant
  Dim Me As Recordset15
  loc_FCF1F0: On Error Goto loc_FCF3B3
  loc_FCF20B: Proc_6_23_DFC5B8(Me, 5670)
  loc_FCF21D: Set var_88 = Me.TopCtrl1
  loc_FCF223: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005("Add")
  loc_FCF247: Me.TopCtrl1.CursorLocation = 3
  loc_FCF271: var_C0 = CVar("Select Schedule_Id Code,ScheduleName Name From JobSchedule Where ScheduleEnabled=1 And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_FCF28F: CVarUnk
  loc_FCF294: VerifyVarObj
  loc_FCF29A: Set var_88 = Me.DGJobSchedule
  loc_FCF2A0: LateIdStAd
  loc_FCF2CA: Me.DGJobSchedule.CursorLocation = 3
  loc_FCF2F4: var_C0 = CVar("SELECT Code,Name FROM Depart Where LogSite_Code='" & MemVar_1F95078 & "' and Resttype IN ('Outlet','Room Service') Order by Name") 'String
  loc_FCF2FE: r_C0, CVar(MemVar_1F95044), 2 var_C0, CVar(MemVar_1F95044), 2
  loc_FCF312: CVarUnk
  loc_FCF317: VerifyVarObj
  loc_FCF31D: Set var_88 = Me.DGOutlet
  loc_FCF323: LateIdStAd
  loc_FCF33B: Set global_68 = New 
  loc_FCF350: Me.DGOutlet.CursorLocation = 3
  loc_FCF37A: var_C0 = CVar("Select * From SMSEnviro WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "')") 'String
  loc_FCF387: Me.Recordset15.Open var_C0, CVar(MemVar_1F95044), 2
  loc_FCF392: Call Proc_232_40_134B6C4(3, -1, var_88, New, 3, -1)
  loc_FCF397: Call Proc_232_42_EFEAEC(var_88, New, 3)
  loc_FCF39F: Call Proc_232_35_12EABC8(var_C0, -1)
  loc_FCF3AA: Call Proc_232_37_11B6F04(var_C0)
  loc_FCF3B2: Exit Sub
  loc_FCF3B3: ' Referenced from: FCF1F0
  loc_FCF3B3: Proc_6_60_E63754(6525)
  loc_FCF3B8: Exit Sub
  loc_FCF3B9: () = 
  loc_FCF3BA: CopyBytes -6144
End Sub

Private Sub Form_Resize() 'DFCFAC
  'Data Table: 51FF60
  loc_DFCFA8: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E66664
  'Data Table: 51FF60
  loc_E6661B: Set global_68 = Nothing
  loc_E6662D: Set global_52 = Nothing
  loc_E6663F: Set global_56 = Nothing
  loc_E6664B: global_72 = Nothing
  loc_E6665A: Set global_88 = Nothing
  loc_E66661: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E290B8
  'Data Table: 51FF60
  loc_E29090: On Error Goto loc_E290B0
  loc_E290A7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E290AF: Exit Sub
  loc_E290B0: ' Referenced from: E29090
  loc_E290B0: Proc_6_60_E63754(Shift)
  loc_E290B5: Exit Sub
End Sub

Private Sub CmdDeletePOSMsg_Click() 'EC5F68
  'Data Table: 51FF60
  Dim var_88 As String
  Dim var_90 As TextBox
  Dim unk_51FF67 As Connection15
  loc_EC5EF8: var_88 = "Delete From EmailSMSForward Where Type In ('KOT Message','Outlet Bill','Assign Delivery') And FlagType='POS' And LogSite_Code='" & MemVar_1F95078
  loc_EC5F10: Set var_8C = var_90(CInt(&H18))
  loc_EC5F16: Call 0.Method_CmdDeletePOSMsg_Click0 (var_94, CVar(var_88 & "' And DepartCode="), var_F8)
  loc_EC5F1E: -1 = var_90.Tag
  loc_EC5F2C: Proc_6_17_EAAE40(var_B4, CVar(var_94))
  loc_EC5F42: unk_51FF67.Execute CStr(var_FC & var_B4), , 
  loc_EC5F64: Exit Sub
End Sub

Public Sub FGrid2_UnknownEvent_A(arg_C, arg_10) 'FDE060
  'Data Table: 51FF60
  Dim var_9C As String
  Dim arg_C As Integer
  Dim var_B0 As Variant
  loc_FDDE90: Set var_88 = Me.TopCtrl1
  loc_FDDE96: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_FDDEDB: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_FDDEE4:   Call Form_KeyDown(arg_C, arg_10)
  loc_FDDEE9: End If
  loc_FDDEED: Set var_A0 = ()
  loc_FDDEF3: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_4()
  loc_FDDF00: Set var_B4 = ()
  loc_FDDF06: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_4()
  loc_FDDF1D: Set var_88 = ((CLng(arg_C) = &H26))
  loc_FDDF23: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000B()
  loc_FDDF5D: If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - (CLng(var_C4) - 1))))) Then
  loc_FDDF68:   var_9C = "+{Tab}"
  loc_FDDF6E:   Proc_303_0_FBACC8(CStr())
  loc_FDDF78:   arg_C = 0
  loc_FDDF7E: Else
  loc_FDDF82:   Set var_A0 = 0(arg_C)
  loc_FDDF88:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_4()
  loc_FDDF9F:   Set var_88 = ((CLng(arg_C) = &H28))
  loc_FDDFA5:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000B()
  loc_FDDFD5:   If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - 1)))) Then
  loc_FDDFD8:   End If
  loc_FDDFD8: End If
  loc_FDDFDC: Set var_88 = ()
  loc_FDDFE2: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_A()
  loc_FDDFF5: Set var_A0 = (CVar(CStr(CLng())))
  loc_FDDFFB: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000B()
  loc_FDE01F: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_FDE026:   Set var_88 = ()
  loc_FDE02C:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_B()
  loc_FDE045:   If (CLng() = CLng(2)) Then
  loc_FDE048:   End If
  loc_FDE048: End If
  loc_FDE04E: If (arg_C = &HD) Then
  loc_FDE056:   global_60 = 0
  loc_FDE059: End If
  loc_FDE05B: arg_C = 0
  loc_FDE05E: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_B 'E13AE0
  'Data Table: 51FF60
  loc_E13AD1: Call FGrid2_UnknownEvent_C()
  loc_E13ADB: global_60 = 0
  loc_E13ADE: Exit Sub
End Sub

Public Sub FGrid2_UnknownEvent_C(Index As Integer) 'FF5D34
  'Data Table: 51FF60
  Dim var_9C As String
  Dim var_A0 As TextBox
  Dim var_A4 As Long
  Dim var_CA As Integer
  Dim var_C4 As TextBox
  loc_FF5B50: Set var_88 = Me.TopCtrl1
  loc_FF5B56: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_FF5B6F: If (CStr() = "Browse") Then
  loc_FF5B72:   Exit Sub
  loc_FF5B73: End If
  loc_FF5B7F: Set var_88 = var_A0(2)
  loc_FF5B85: Call 0.Method_FGrid2_UnknownEvent_C0 (vbNullString)
  loc_FF5B8D: var_A0.Text = 
  loc_FF5B9D: Set var_88 = ()
  loc_FF5BA3: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_B()
  loc_FF5BAC: var_A4 = CLng()
  loc_FF5BBC: If Not (var_A4 = CLng(3)) Then
  loc_FF5BC6:   If (var_A4 = CLng(4)) Then
  loc_FF5BC9:   End If
  loc_FF5BCD:   Set var_C4 = (var_A4)
  loc_FF5BF1:   var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_FF5C1E:   Set var_A0 = var_C4
  loc_FF5C30:   Proc_6_63_110B734(Me, var_A0, (), 2)
  loc_FF5C58:   Set var_88 = var_A0(2)
  loc_FF5C5E:   Call 0.Method_FGrid2_UnknownEvent_C0 (var_9C, 0, Asc(var_9C))
  loc_FF5C66:   0 = var_A0.Text
  loc_FF5C7F:   If (Len(var_9C) <= 1) Then
  loc_FF5C8E:     Set var_88 = var_A0(2)
  loc_FF5C94:     Call 0.Method_FGrid2_UnknownEvent_C0 (var_9C)
  loc_FF5C9C:     var_CA = var_A0.Text
  loc_FF5CAD:     Set var_B8 = var_C4(2)
  loc_FF5CB3:     Call 0.Method_FGrid2_UnknownEvent_C0 (var_9C)
  loc_FF5CBB:     var_C4.Text = 
  loc_FF5CCE:   End If
  loc_FF5CDA:   Set var_88 = var_A0(2)
  loc_FF5CE0:   Call 0.Method_FGrid2_UnknownEvent_C0 (var_9C)
  loc_FF5CE8:    = var_A0.Text
  loc_FF5CFA:   Set var_B8 = var_C4(2)
  loc_FF5D00:   Call 0.Method_FGrid2_UnknownEvent_C0 (Len(var_9C))
  loc_FF5D08:   var_C4.SelStart = 
  loc_FF5D1B: End If
  loc_FF5D25: If (CLng(Index) <> &HD) Then
  loc_FF5D2D:   global_60 = &HFF
  loc_FF5D30: End If
  loc_FF5D30: Exit Sub
  loc_FF5D31: global_60() = 
End Sub

Private Sub FGrid2_UnknownEvent_15 'E42600
  'Data Table: 51FF60
  Dim var_8C As TextBox
  loc_E425D4: Call Proc_232_41_EB77D4()
  loc_E425E4: Set var_88 = var_8C(2)
  loc_E425EA: Call 0.Method_FGrid2_UnknownEvent_150 (0)
  loc_E425F2: var_8C.Visible = 
  loc_E425FE: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5EB94
  'Data Table: 51FF60
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_C4 As TextBox
  loc_F5EAB6: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5EABD:   Set var_A8 = Me.ListView
  loc_F5EAD3:   var_CC = Val(CStr(var_A8.Tag))
  loc_F5EB07:   Set var_C0 = var_C4(CInt(var_CC))
  loc_F5EB0D:   Call 0.Method_ListView_UnknownEvent_130 (Me.ListView.SelectedItem.Text)
  loc_F5EB15:   var_C4.Text = var_CC
  loc_F5EB35: End If
  loc_F5EB41: Me.FrmList.Visible = False
  loc_F5EB63: var_CC = Val(CStr(Me.ListView.Tag))
  loc_F5EB71: Set var_9C = var_A8(CInt(var_CC))
  loc_F5EB77: Call 0.Method_ListView_UnknownEvent_130 (var_CC)
  loc_F5EB7F: var_A8.SetFocus
  loc_F5EB93: Exit Sub
End Sub

Private Sub CmdUpdatePOSMsg_Click() '14CA4A0
  'Data Table: 51FF60
  Dim unk_51FF67 As Connection15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_184 As Variant
  Dim var_188 As String
  Dim var_98 As Recordset15
  Dim var_A0 As Recordset15
  Dim var_A8 As Field20
  Dim var_94 As Long
  Dim var_AC As String
  Dim var_174 As Variant
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_228 As Variant
  Dim var_278 As Variant
  Dim var_2A8 As Variant
  Dim var_2C8 As Variant
  Dim var_1B8 As Variant
  Dim var_248 As Variant
  Dim var_298 As Variant
  loc_14C9797: Set var_A0 = var_A4(CInt(&H18))
  loc_14C979D: Call 0.Method_CmdUpdatePOSMsg_Click0 ()
  loc_14C97A5: var_AC = "Outlet Name"
  loc_14C97AE: Set var_A8 = var_A4
  loc_14C97C6: If (Proc_6_27_EA61EC(var_A8) = 0) Then
  loc_14C97D0:   Call Txt_GotFocus()
  loc_14C97D5:   Exit Sub
  loc_14C97D6: End If
  loc_14C97D6: On Error Goto loc_14CA460
  loc_14C97E2: unk_51FF67.BeginTrans var_B4
  loc_14C97EB: var_9A = CByte(1) 'Byte
  loc_14C97F2: var_88 = "KOT Message"
  loc_14C97F8: var_90 = vbNullString
  loc_14C9809: Set var_A0 = var_A4(CInt(&H19))
  loc_14C980F: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC, CInt(&H18))
  loc_14C9817: var_AC = var_A4.Text
  loc_14C981F: var_8C = var_AC
  loc_14C9846: Proc_6_17_EAAE40(var_D4, var_88, "Select Id From EmailSMSForward Where Type=")
  loc_14C984E: var_F4 = var_1A8 & var_D4 
  loc_14C987C: Set var_A0 = var_A4(CInt(&H18))
  loc_14C9882: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC, var_F4 & " And FlagType='POS' And LogSite_Code='" & CVar(MemVar_1F95078) & "' And DepartCode=")
  loc_14C988A: -1 = var_A4.Tag
  loc_14C9898: Proc_6_17_EAAE40(var_174, CVar(var_AC))
  loc_14C98AE: unk_51FF67.Execute CStr(var_A8 & var_174), , 
  loc_14C98F1: If (var_A8.RecordCount = 0) Then
  loc_14C98FA:   var_E4 = 0
  loc_14C9919:   unk_51FF67.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_D4, -1
  loc_14C9921:   var_A0 = var_A0.Fields
  loc_14C9929:   var_E4 = var_A4.Item(var_A4)
  loc_14C9931:   var_A8 = var_A8.Value
  loc_14C993B:   var_94 = CLng(var_F4)
  loc_14C9963:   var_AC = CStr(var_94)
  loc_14C9967:   var_188 = "Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,TxtMsg,GuestMsg,FlagType,DepartCode) values(" & var_AC
  loc_14C997C:   Proc_6_17_EAAE40(var_D4, var_88, CVar(var_188 & ","), var_340)
  loc_14C9984:   var_114 = -1 & var_D4 
  loc_14C998D:   var_134 = CVar(var_188 & ",") & " And FlagType='POS' And LogSite_Code='" & ",'" 
  loc_14C99AA:   var_174 = var_134 & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_14C99C2:   Proc_6_8_EB1974(var_1B8, CVar(Proc_6_14_EF402C(var_174 & "',", var_A8)))
  loc_14C99CA:   var_1C8 = var_94 & var_1B8 
  loc_14C99E6:   var_228 = var_1C8 & ",'A','" & CVar(MemVar_1F95078) & "'," 
  loc_14C99F5:   Proc_6_17_EAAE40(var_248, var_8C)
  loc_14C9A15:   Proc_6_17_EAAE40(var_298, var_90)
  loc_14C9A26:   var_2C8 = var_228 & var_248 & "," & var_298 & ",'POS'," 
  loc_14C9A38:   Set var_A0 = var_A4(CInt(&H18))
  loc_14C9A3E:   Call 0.Method_CmdUpdatePOSMsg_Click0 (var_2CC, var_2C8)
  loc_14C9A46:   var_F4 = var_A4.Tag
  loc_14C9A54:   Proc_6_17_EAAE40(var_2EC)
  loc_14C9A73:   unk_51FF67.Execute CStr(CVar(var_2CC) & var_2EC & ")"), , 
  loc_14C9AC2: Else
  loc_14C9ADF:   Proc_6_17_EAAE40(var_D4, var_8C, "Update EmailSMSForward Set TxtMsg=")
  loc_14C9AFF:   Proc_6_17_EAAE40(var_134, var_90, var_2EC & var_D4 & ",GuestMsg=")
  loc_14C9B07:   var_154 = -1 & var_134 
  loc_14C9B1F:   Proc_6_17_EAAE40(var_174, MemVar_1F950C8)
  loc_14C9B30:   var_1A8 = var_134 & CVar(MemVar_1F95070) & ",U_Name=" & var_174 & ",U_EntDt=" 
  loc_14C9B39:   var_1B8 = CVar(Proc_6_14_EF402C(var_1A8)) 'String
  loc_14C9B3F:   Proc_6_8_EB1974(var_1C8, var_1B8)
  loc_14C9B5F:   Proc_6_17_EAAE40(var_228, var_88)
  loc_14C9B67:   var_248 = var_A8 & var_1C8 & ",U_AE='E' Where Type=" & var_228 
  loc_14C9B83:   var_298 = var_248 & " And FlagType='POS' And LogSite_Code='" & CVar(MemVar_1F95078) & "' And DepartCode=" 
  loc_14C9B95:   Set var_A0 = var_A4(CInt(&H18))
  loc_14C9B9B:   Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC)
  loc_14C9BA3:   var_298 = var_A4.Tag
  loc_14C9BB1:   Proc_6_17_EAAE40(var_2C8)
  loc_14C9BC7:   unk_51FF67.Execute CStr(CVar(var_AC) & var_2C8), , 
  loc_14C9C07: End If
  loc_14C9C0A: var_88 = "Outlet Bill"
  loc_14C9C1B: Set var_A0 = var_A4(CInt(&H1A))
  loc_14C9C21: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC)
  loc_14C9C29:  = var_A4.Text
  loc_14C9C31: var_90 = var_AC
  loc_14C9C49: Set var_A0 = var_A4(CInt(&H1B))
  loc_14C9C4F: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC)
  loc_14C9C57:  = var_A4.Text
  loc_14C9C5F: var_8C = var_AC
  loc_14C9C86: Proc_6_17_EAAE40(var_D4, var_88, "Select Id From EmailSMSForward Where Type=")
  loc_14C9C8E: var_F4 = var_1A8 & var_D4 
  loc_14C9CBC: Set var_A0 = var_A4(CInt(&H18))
  loc_14C9CC2: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC, var_F4 & " And FlagType='POS' And LogSite_Code='" & CVar(MemVar_1F95078) & "' And DepartCode=")
  loc_14C9CCA: -1 = var_A4.Tag
  loc_14C9CD8: Proc_6_17_EAAE40(var_174, CVar(var_AC))
  loc_14C9CEE: unk_51FF67.Execute CStr(var_A8 & var_174), , 
  loc_14C9D31: If (var_A8.RecordCount = 0) Then
  loc_14C9D3A:   var_E4 = 0
  loc_14C9D59:   unk_51FF67.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_D4, -1
  loc_14C9D61:   var_A0 = var_A0.Fields
  loc_14C9D69:   var_E4 = var_A4.Item(var_A4)
  loc_14C9D71:   var_A8 = var_A8.Value
  loc_14C9D7B:   var_94 = CLng(var_F4)
  loc_14C9DA3:   var_AC = CStr(var_94)
  loc_14C9DA7:   var_188 = "Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,TxtMsg,GuestMsg,FlagType,DepartCode) values(" & var_AC
  loc_14C9DBC:   Proc_6_17_EAAE40(var_D4, var_88, CVar(var_188 & ","), var_340)
  loc_14C9DC4:   var_114 = -1 & var_D4 
  loc_14C9DCD:   var_134 = CVar(var_188 & ",") & " And FlagType='POS' And LogSite_Code='" & ",'" 
  loc_14C9DEA:   var_174 = var_134 & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_14C9E02:   Proc_6_8_EB1974(var_1B8, CVar(Proc_6_14_EF402C(var_174 & "',", var_A8)))
  loc_14C9E0A:   var_1C8 = var_94 & var_1B8 
  loc_14C9E26:   var_228 = var_1C8 & ",'A','" & CVar(MemVar_1F95078) & "'," 
  loc_14C9E35:   Proc_6_17_EAAE40(var_248, var_8C)
  loc_14C9E55:   Proc_6_17_EAAE40(var_298, var_90)
  loc_14C9E66:   var_2C8 = var_228 & var_248 & "," & var_298 & ",'POS'," 
  loc_14C9E78:   Set var_A0 = var_A4(CInt(&H18))
  loc_14C9E7E:   Call 0.Method_CmdUpdatePOSMsg_Click0 (var_2CC, var_2C8)
  loc_14C9E86:   var_F4 = var_A4.Tag
  loc_14C9E94:   Proc_6_17_EAAE40(var_2EC)
  loc_14C9EB3:   unk_51FF67.Execute CStr(CVar(var_2CC) & var_2EC & ")"), , 
  loc_14C9F02: Else
  loc_14C9F1F:   Proc_6_17_EAAE40(var_D4, var_8C, "Update EmailSMSForward Set TxtMsg=")
  loc_14C9F3F:   Proc_6_17_EAAE40(var_134, var_90, var_2EC & var_D4 & ",GuestMsg=")
  loc_14C9F47:   var_154 = -1 & var_134 
  loc_14C9F5F:   Proc_6_17_EAAE40(var_174, MemVar_1F950C8)
  loc_14C9F70:   var_1A8 = var_134 & CVar(MemVar_1F95070) & ",U_Name=" & var_174 & ",U_EntDt=" 
  loc_14C9F79:   var_1B8 = CVar(Proc_6_14_EF402C(var_1A8)) 'String
  loc_14C9F7F:   Proc_6_8_EB1974(var_1C8, var_1B8)
  loc_14C9F9F:   Proc_6_17_EAAE40(var_228, var_88)
  loc_14C9FA7:   var_248 = var_A8 & var_1C8 & ",U_AE='E' Where Type=" & var_228 
  loc_14C9FC3:   var_298 = var_248 & " And FlagType='POS' And LogSite_Code='" & CVar(MemVar_1F95078) & "' And DepartCode=" 
  loc_14C9FD5:   Set var_A0 = var_A4(CInt(&H18))
  loc_14C9FDB:   Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC)
  loc_14C9FE3:   var_298 = var_A4.Tag
  loc_14C9FEB:   var_2A8 = CVar(var_AC) 'String
  loc_14C9FF1:   Proc_6_17_EAAE40(var_2C8)
  loc_14CA007:   unk_51FF67.Execute CStr(var_2A8 & var_2C8), , 
  loc_14CA047: End If
  loc_14CA04A: var_88 = "Assign Delivery"
  loc_14CA05B: Set var_A0 = var_A4(CInt(&H1C))
  loc_14CA061: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC)
  loc_14CA069:  = var_A4.Text
  loc_14CA071: var_90 = var_AC
  loc_14CA098: Proc_6_17_EAAE40(var_D4, var_88, "Select Id From EmailSMSForward Where Type=")
  loc_14CA0A0: var_F4 = var_1A8 & var_D4 
  loc_14CA0CE: Set var_A0 = var_A4(CInt(&H18))
  loc_14CA0D4: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC, var_F4 & " And FlagType='POS' And LogSite_Code='" & CVar(MemVar_1F95078) & "' And DepartCode=")
  loc_14CA0DC: -1 = var_A4.Tag
  loc_14CA0EA: Proc_6_17_EAAE40(var_174, CVar(var_AC))
  loc_14CA100: unk_51FF67.Execute CStr(var_A8 & var_174), , 
  loc_14CA143: If (var_A8.RecordCount = 0) Then
  loc_14CA14C:   var_E4 = 0
  loc_14CA16B:   unk_51FF67.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_D4, -1
  loc_14CA173:   var_A0 = var_A0.Fields
  loc_14CA17B:   var_E4 = var_A4.Item(var_A4)
  loc_14CA183:   var_A8 = var_A8.Value
  loc_14CA18D:   var_94 = CLng(var_F4)
  loc_14CA1B5:   var_AC = CStr(var_94)
  loc_14CA1B9:   var_188 = "Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,GuestMsg,FlagType,DepartCode) values(" & var_AC
  loc_14CA1CE:   Proc_6_17_EAAE40(var_D4, var_88, CVar(var_188 & ","), var_2EC)
  loc_14CA1D6:   var_114 = -1 & var_D4 
  loc_14CA1DF:   var_134 = CVar(var_188 & ",") & " And FlagType='POS' And LogSite_Code='" & ",'" 
  loc_14CA205:   var_184 = var_134 & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," 
  loc_14CA214:   Proc_6_8_EB1974(var_1B8, CVar(Proc_6_14_EF402C(var_184, var_A8)))
  loc_14CA21C:   var_1C8 = var_94 & var_1B8 
  loc_14CA247:   Proc_6_17_EAAE40(var_248, var_90)
  loc_14CA258:   var_278 = var_1C8 & ",'A','" & CVar(MemVar_1F95078) & "'," & var_248 & ",'POS'," 
  loc_14CA26A:   Set var_A0 = var_A4(CInt(&H18))
  loc_14CA270:   Call 0.Method_CmdUpdatePOSMsg_Click0 (var_2CC, var_278)
  loc_14CA278:   var_F4 = var_A4.Tag
  loc_14CA286:   Proc_6_17_EAAE40(var_2A8)
  loc_14CA2A5:   unk_51FF67.Execute CStr(CVar(var_2CC) & var_2A8 & ")"), , 
  loc_14CA2EE: Else
  loc_14CA30B:   Proc_6_17_EAAE40(var_D4, var_90, "Update EmailSMSForward Set GuestMsg=")
  loc_14CA32B:   Proc_6_17_EAAE40(var_134, MemVar_1F950C8, var_2A8 & var_D4 & ",U_Name=")
  loc_14CA333:   var_154 = -1 & var_134 
  loc_14CA34B:   Proc_6_8_EB1974(var_184, CVar(Proc_6_14_EF402C(var_134 & CVar(MemVar_1F95070) & ",U_EntDt=")))
  loc_14CA36B:   Proc_6_17_EAAE40(var_1C8, var_88)
  loc_14CA38F:   var_248 = var_A8 & var_184 & ",U_AE='E' Where Type=" & var_1C8 & " And FlagType='POS' And LogSite_Code='" & CVar(MemVar_1F95078) & "' And DepartCode=" 
  loc_14CA3A1:   Set var_A0 = var_A4(CInt(&H18))
  loc_14CA3A7:   Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC)
  loc_14CA3AF:   var_248 = var_A4.Tag
  loc_14CA3BD:   Proc_6_17_EAAE40(var_278)
  loc_14CA3D3:   unk_51FF67.Execute CStr(CVar(var_AC) & var_278), , 
  loc_14CA40D: End If
  loc_14CA413: unk_51FF67.CommitTrans
  loc_14CA41C: var_9A = CByte(0) 'Byte
  loc_14CA42E: Set var_A0 = var_A4(CInt(&H18))
  loc_14CA434: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC)
  loc_14CA43C:  = var_A4.Tag
  loc_14CA448: Call Proc_232_43_1094DD0(var_AC)
  loc_14CA45C: Set var_98 = Nothing
  loc_14CA45F: Exit Sub
  loc_14CA460: ' Referenced from: 14C97D6
  loc_14CA469: If (CInt(var_9A) = 1) Then
  loc_14CA472:   unk_51FF67.RollbackTrans
  loc_14CA477: End If
  loc_14CA47D: Call 0.Method_arg_50 (var_AC)
  loc_14CA485: var_2CC = "Outlet Message"
  loc_14CA492: Proc_183_57_104B0BC(var_AC)
  loc_14CA49E: Exit Sub
End Sub

Private Sub Cmd_Click(Index As Integer) '1577ACC
  'Data Table: 51FF60
  Dim var_90 As Integer
  Dim unk_51FF67 As Connection15
  Dim var_86 As Integer
  Dim var_98 As String
  Dim var_E0 As Variant
  Dim var_B0 As Variant
  Dim var_128 As Variant
  Dim var_158 As Variant
  Dim var_118 As TextBox
  Dim var_148 As Variant
  Dim var_9C As Variant
  loc_1576B68: On Error Goto loc_1577AAF
  loc_1576B6E: var_90 = Index
  loc_1576B77: If (var_90 = 0) Then
  loc_1576B7A:   Call Proc_232_41_EB77D4(var_90)
  loc_1576B88:   unk_51FF67.BeginTrans var_94
  loc_1576BAC:   If (Me.Recordset15.RecordCount = 0) Then
  loc_1576BB6:     var_98 = "Insert into SMSEnviro " & " (CheckInMsg,CheckOutMsg,CashReceiptMsg,BankReceiptMsg,ReservationMsg,ReservationCancelMsg,BanqBookingMsg,BanqBookingCancelMsg,OutStandingMsg,SendingMessageText,MemberBillMsg,GuestRegistrationMsg,RewardPointMsg,RedeemPointMsg,POSBillMsg,AssignDeliveryMsg,LogSite_Code) "
  loc_1576BCB:     Set var_9C = var_A0(CInt(0))
  loc_1576BD1:     Call 0.Method_Cmd_Click0 (CVar(var_98 & " values ("))
  loc_1576BD9:     var_B0 = CVar(var_A0) 'Address
  loc_1576BEB:     Proc_6_17_EAAE40(var_D0, Trim(var_B0))
  loc_1576C0B:     Set var_114 = var_118(CInt(1))
  loc_1576C11:     Call 0.Method_Cmd_Click0 (&HFF & var_D0 & ",")
  loc_1576C2B:     Proc_6_17_EAAE40(var_148)
  loc_1576C4B:     Set var_17C = var_180(CInt(2))
  loc_1576C51:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_118)) & var_148 & ",")
  loc_1576C6B:     Proc_6_17_EAAE40(var_1B0)
  loc_1576C8B:     Set var_1E4 = var_1E8(CInt(&H10))
  loc_1576C91:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_180)) & var_1B0 & ",")
  loc_1576CAB:     Proc_6_17_EAAE40(var_218)
  loc_1576CCB:     Set var_24C = var_250(CInt(3))
  loc_1576CD1:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_1E8)) & var_218 & ",")
  loc_1576CEB:     Proc_6_17_EAAE40(var_280)
  loc_1576D0B:     Set var_2B4 = var_2B8(CInt(5))
  loc_1576D11:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_250)) & var_280 & ",")
  loc_1576D2B:     Proc_6_17_EAAE40(var_2E8)
  loc_1576D4B:     Set var_31C = var_320(CInt(&H11))
  loc_1576D51:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_2B8)) & var_2E8 & ",")
  loc_1576D6B:     Proc_6_17_EAAE40(var_350)
  loc_1576D8B:     Set var_384 = var_388(CInt(&H12))
  loc_1576D91:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_320)) & var_350 & ",")
  loc_1576DAB:     Proc_6_17_EAAE40(var_3B8)
  loc_1576DCB:     Set var_3EC = var_3F0(CInt(6))
  loc_1576DD1:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_388)) & var_3B8 & ",")
  loc_1576DEB:     Proc_6_17_EAAE40(var_420)
  loc_1576E0B:     Set var_454 = var_458(CInt(4))
  loc_1576E11:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_3F0)) & var_420 & ",")
  loc_1576E2B:     Proc_6_17_EAAE40(var_488)
  loc_1576E4B:     Set var_4BC = var_4C0(CInt(7))
  loc_1576E51:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_458)) & var_488 & ",")
  loc_1576E6B:     Proc_6_17_EAAE40(var_4F0)
  loc_1576E8B:     Set var_524 = var_528(CInt(&H15))
  loc_1576E91:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_4C0)) & var_4F0 & ",")
  loc_1576EAB:     Proc_6_17_EAAE40(var_558)
  loc_1576ECB:     Set var_58C = var_590(CInt(&H16))
  loc_1576ED1:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_528)) & var_558 & ",")
  loc_1576EEB:     Proc_6_17_EAAE40(var_5C0)
  loc_1576F0B:     Set var_5F4 = var_5F8(CInt(&H17))
  loc_1576F11:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_590)) & var_5C0 & ",")
  loc_1576F2B:     Proc_6_17_EAAE40(var_628)
  loc_1576F4B:     Set var_65C = var_660(CInt(&H1A))
  loc_1576F51:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_5F8)) & var_628 & ",")
  loc_1576F6B:     Proc_6_17_EAAE40(var_690)
  loc_1576F8B:     Set var_6C4 = var_6C8(CInt(&H1C))
  loc_1576F91:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_660)) & var_690 & ",")
  loc_1576FAB:     Proc_6_17_EAAE40(var_6F8)
  loc_1576FCB:     Proc_6_17_EAAE40(var_748, MemVar_1F95078)
  loc_15770CB:     unk_51FF67.Execute CStr(Trim(CVar(var_6C8)) & var_6F8 & "," & var_748 & ")"), var_B0, -1
  loc_15770D9:   Else
  loc_15770F4:     Call 0.Method_Cmd_Click0 (CVar("Update SMSEnviro Set " & " CheckInMsg="))
  loc_15770FC:     var_B0 = CVar(var_A0) 'Address
  loc_157710E:     Proc_6_17_EAAE40(var_D0, Trim(var_B0))
  loc_157712E:     Set var_114 = var_118(CInt(1))
  loc_1577134:     Call 0.Method_Cmd_Click0 (var_A0(CInt(0)) & var_D0 & ",CheckOutMsg=")
  loc_157713C:     var_128 = CVar(var_118) 'Address
  loc_157714E:     Proc_6_17_EAAE40(var_148)
  loc_1577156:     var_158 = Trim(var_128) & var_148 
  loc_157716E:     Set var_17C = var_180(CInt(2))
  loc_1577174:     Call 0.Method_Cmd_Click0 (var_158 & ",CashReceiptMsg=")
  loc_157718E:     Proc_6_17_EAAE40(var_1B0)
  loc_15771AE:     Set var_1E4 = var_1E8(CInt(&H10))
  loc_15771B4:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_180)) & var_1B0 & ",BankReceiptMsg=")
  loc_15771CE:     Proc_6_17_EAAE40(var_218)
  loc_15771EE:     Set var_24C = var_250(CInt(3))
  loc_15771F4:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_1E8)) & var_218 & ",ReservationMsg=")
  loc_157720E:     Proc_6_17_EAAE40(var_280)
  loc_157722E:     Set var_2B4 = var_2B8(CInt(5))
  loc_1577234:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_250)) & var_280 & ",ReservationCancelMsg=")
  loc_157724E:     Proc_6_17_EAAE40(var_2E8)
  loc_157726E:     Set var_31C = var_320(CInt(&H11))
  loc_1577274:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_2B8)) & var_2E8 & ",BanqBookingMsg=")
  loc_157728E:     Proc_6_17_EAAE40(var_350)
  loc_15772AE:     Set var_384 = var_388(CInt(&H12))
  loc_15772B4:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_320)) & var_350 & ",BanqBookingCancelMsg=")
  loc_15772CE:     Proc_6_17_EAAE40(var_3B8)
  loc_15772EE:     Set var_3EC = var_3F0(CInt(6))
  loc_15772F4:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_388)) & var_3B8 & ",OutStandingMsg=")
  loc_157730E:     Proc_6_17_EAAE40(var_420)
  loc_157732E:     Set var_454 = var_458(CInt(4))
  loc_1577334:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_3F0)) & var_420 & ",SendingMessageText=")
  loc_157734E:     Proc_6_17_EAAE40(var_488)
  loc_157736E:     Set var_4BC = var_4C0(CInt(7))
  loc_1577374:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_458)) & var_488 & ",MemberBillMsg=")
  loc_157738E:     Proc_6_17_EAAE40(var_4F0)
  loc_15773AE:     Set var_524 = var_528(CInt(&H15))
  loc_15773B4:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_4C0)) & var_4F0 & ",GuestRegistrationMsg=")
  loc_15773CE:     Proc_6_17_EAAE40(var_558)
  loc_15773EE:     Set var_58C = var_590(CInt(&H16))
  loc_15773F4:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_528)) & var_558 & ",RewardPointMsg=")
  loc_157740E:     Proc_6_17_EAAE40(var_5C0)
  loc_157742E:     Set var_5F4 = var_5F8(CInt(&H17))
  loc_1577434:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_590)) & var_5C0 & ",RedeemPointMsg=")
  loc_157744E:     Proc_6_17_EAAE40(var_628)
  loc_157746E:     Set var_65C = var_660(CInt(&H1A))
  loc_1577474:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_5F8)) & var_628 & ",POSBillMsg=")
  loc_157748E:     Proc_6_17_EAAE40(var_690)
  loc_15774AE:     Set var_6C4 = var_6C8(CInt(&H1C))
  loc_15774B4:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_660)) & var_690 & ",AssignDeliveryMsg=")
  loc_15774CE:     Proc_6_17_EAAE40(var_6F8)
  loc_15774EE:     Proc_6_17_EAAE40(var_748, MemVar_1F95078)
  loc_15775E0:     unk_51FF67.Execute CStr(Trim(CVar(var_6C8)) & var_6F8 & " Where LogSite_Code=" & var_748), var_B0, -1
  loc_15775EB:   End If
  loc_1577608:   Set var_9C = var_A0(CInt(&HC))
  loc_157760E:   Call 0.Method_Cmd_Click0 ("UPDATE EmailSMSForward SET TxtMsg=", var_158, -1)
  loc_1577628:   Proc_6_17_EAAE40(var_D0, Trim(CVar(var_A0)))
  loc_157764B:   Set var_114 = var_118(CInt(&HC))
  loc_1577651:   Call 0.Method_Cmd_Click0 (var_98, var_17C & var_D0 & " Where Type=")
  loc_1577659:   var_9C = var_118.Tag
  loc_1577667:   Proc_6_17_EAAE40(var_128)
  loc_1577686:   unk_51FF67.Execute CStr(CVar(var_98) & var_128 & vbNullString), , 
  loc_15776CD:   Set var_9C = var_A0(CInt(&HD))
  loc_15776D3:   Call 0.Method_Cmd_Click0 ("UPDATE EmailSMSForward SET TxtMsg=", var_158)
  loc_15776ED:   Proc_6_17_EAAE40(var_D0, Trim(CVar(var_A0)))
  loc_15776F5:   var_E0 = -1 & var_D0 
  loc_1577710:   Set var_114 = var_118(CInt(&HD))
  loc_1577716:   Call 0.Method_Cmd_Click0 (var_98, var_17C & var_D0 & " Where Type=")
  loc_157771E:   var_17C = var_118.Tag
  loc_157772C:   Proc_6_17_EAAE40(var_128)
  loc_157774B:   unk_51FF67.Execute CStr(CVar(var_98) & var_128 & vbNullString), , 
  loc_1577792:   Set var_9C = var_A0(CInt(&HE))
  loc_1577798:   Call 0.Method_Cmd_Click0 ("UPDATE EmailSMSForward SET TxtMsg=", var_158)
  loc_15777B2:   Proc_6_17_EAAE40(var_D0, Trim(CVar(var_A0)))
  loc_15777BA:   var_E0 = -1 & var_D0 
  loc_15777D5:   Set var_114 = var_118(CInt(&HE))
  loc_15777DB:   Call 0.Method_Cmd_Click0 (var_98, var_17C & var_D0 & " Where Type=")
  loc_15777E3:   var_17C = var_118.Tag
  loc_15777F1:   Proc_6_17_EAAE40(var_128)
  loc_1577810:   unk_51FF67.Execute CStr(CVar(var_98) & var_128 & vbNullString), , 
  loc_1577857:   Set var_9C = var_A0(CInt(&HF))
  loc_157785D:   Call 0.Method_Cmd_Click0 ("UPDATE EmailSMSForward SET TxtMsg=", var_158)
  loc_1577877:   Proc_6_17_EAAE40(var_D0, Trim(CVar(var_A0)))
  loc_157787F:   var_E0 = -1 & var_D0 
  loc_157789A:   Set var_114 = var_118(CInt(&HF))
  loc_15778A0:   Call 0.Method_Cmd_Click0 (var_98, var_17C & var_D0 & " Where Type=")
  loc_15778A8:   var_17C = var_118.Tag
  loc_15778B6:   Proc_6_17_EAAE40(var_128)
  loc_15778D5:   unk_51FF67.Execute CStr(CVar(var_98) & var_128 & vbNullString), , 
  loc_157791C:   Set var_9C = var_A0(CInt(&H13))
  loc_1577922:   Call 0.Method_Cmd_Click0 ("UPDATE EmailSMSForward SET TxtMsg=", var_158)
  loc_157793C:   Proc_6_17_EAAE40(var_D0, Trim(CVar(var_A0)))
  loc_1577944:   var_E0 = -1 & var_D0 
  loc_157795F:   Set var_114 = var_118(CInt(&H13))
  loc_1577965:   Call 0.Method_Cmd_Click0 (var_98, var_17C & var_D0 & " Where Type=")
  loc_157796D:   var_17C = var_118.Tag
  loc_157797B:   Proc_6_17_EAAE40(var_128)
  loc_157799A:   unk_51FF67.Execute CStr(CVar(var_98) & var_128 & vbNullString), , 
  loc_15779E1:   Set var_9C = var_A0(CInt(&H14))
  loc_15779E7:   Call 0.Method_Cmd_Click0 ("UPDATE EmailSMSForward SET TxtMsg=", var_158)
  loc_1577A01:   Proc_6_17_EAAE40(var_D0, Trim(CVar(var_A0)))
  loc_1577A09:   var_E0 = -1 & var_D0 
  loc_1577A24:   Set var_114 = var_118(CInt(&H14))
  loc_1577A2A:   Call 0.Method_Cmd_Click0 (var_98, var_17C & var_D0 & " Where Type=")
  loc_1577A32:   var_17C = var_118.Tag
  loc_1577A40:   Proc_6_17_EAAE40(var_128)
  loc_1577A5F:   unk_51FF67.Execute CStr(CVar(var_98) & var_128 & vbNullString), , 
  loc_1577A8F:   unk_51FF67.CommitTrans
  loc_1577A96:   var_86 = 0
  loc_1577A99: End If
  loc_1577AA6: Me.Global.Unload Me
  loc_1577AAE: Exit Sub
  loc_1577AAF: ' Referenced from: 1576B68
  loc_1577AB5: If (var_86 = &HFF) Then
  loc_1577ABE:   unk_51FF67.RollbackTrans
  loc_1577AC3: End If
  loc_1577AC3: Proc_6_60_E63754(var_86)
  loc_1577AC8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2150C
  'Data Table: 51FF60
  Dim Me As Recordset15
  loc_E214F3: Me.Requery -1
  loc_E21503: Me.Requery -1
  loc_E21508: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_A(arg_C, arg_10) 'FDE8E0
  'Data Table: 51FF60
  Dim var_9C As String
  Dim arg_C As Integer
  Dim var_B0 As Variant
  loc_FDE710: Set var_88 = Me.TopCtrl1
  loc_FDE716: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_FDE75B: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_FDE764:   Call Form_KeyDown(arg_C, arg_10)
  loc_FDE769: End If
  loc_FDE76D: Set var_A0 = ()
  loc_FDE773: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_4()
  loc_FDE780: Set var_B4 = ()
  loc_FDE786: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_4()
  loc_FDE79D: Set var_88 = ((CLng(arg_C) = &H26))
  loc_FDE7A3: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000B()
  loc_FDE7DD: If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - (CLng(var_C4) - 1))))) Then
  loc_FDE7E8:   var_9C = "+{Tab}"
  loc_FDE7EE:   Proc_303_0_FBACC8(CStr())
  loc_FDE7F8:   arg_C = 0
  loc_FDE7FE: Else
  loc_FDE802:   Set var_A0 = 0(arg_C)
  loc_FDE808:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_4()
  loc_FDE81F:   Set var_88 = ((CLng(arg_C) = &H28))
  loc_FDE825:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000B()
  loc_FDE855:   If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - 1)))) Then
  loc_FDE858:   End If
  loc_FDE858: End If
  loc_FDE85C: Set var_88 = ()
  loc_FDE862: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_A()
  loc_FDE875: Set var_A0 = (CVar(CStr(CLng())))
  loc_FDE87B: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000B()
  loc_FDE89F: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_FDE8A6:   Set var_88 = ()
  loc_FDE8AC:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_B()
  loc_FDE8C5:   If (CLng() = CLng(2)) Then
  loc_FDE8C8:   End If
  loc_FDE8C8: End If
  loc_FDE8CE: If (arg_C = &HD) Then
  loc_FDE8D6:   global_60 = 0
  loc_FDE8D9: End If
  loc_FDE8DB: arg_C = 0
  loc_FDE8DE: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E13BB8
  'Data Table: 51FF60
  loc_E13BA9: Call Fgrid1_UnknownEvent_C()
  loc_E13BB3: global_60 = 0
  loc_E13BB6: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_C(Index As Integer) 'FCF1A0
  'Data Table: 51FF60
  Dim var_9C As String
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_FCEFEC: Set var_88 = Me.TopCtrl1
  loc_FCEFF2: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_FCF00B: If (CStr() = "Browse") Then
  loc_FCF00E:   Exit Sub
  loc_FCF00F: End If
  loc_FCF013: Set var_88 = ()
  loc_FCF019: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_B()
  loc_FCF022: var_A0 = CLng()
  loc_FCF032: If (var_A0 = CLng(2)) Then
  loc_FCF039:   Set var_C4 = (var_A0)
  loc_FCF05D:   var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_FCF08A:   Set var_B4 = var_C4
  loc_FCF09C:   Proc_6_63_110B734(Me, var_B4, (), 1)
  loc_FCF0C4:   Set var_88 = var_B4(1)
  loc_FCF0CA:   Call 0.Method_Fgrid1_UnknownEvent_C0 (var_9C, 0, Asc(var_9C))
  loc_FCF0D2:   0 = var_B4.Text
  loc_FCF0EB:   If (Len(var_9C) <= 1) Then
  loc_FCF0FA:     Set var_88 = var_B4(1)
  loc_FCF100:     Call 0.Method_Fgrid1_UnknownEvent_C0 (var_9C)
  loc_FCF108:     var_CA = var_B4.Text
  loc_FCF119:     Set var_B8 = var_C4(1)
  loc_FCF11F:     Call 0.Method_Fgrid1_UnknownEvent_C0 (var_9C)
  loc_FCF127:     var_C4.Text = 
  loc_FCF13A:   End If
  loc_FCF146:   Set var_88 = var_B4(1)
  loc_FCF14C:   Call 0.Method_Fgrid1_UnknownEvent_C0 (var_9C)
  loc_FCF154:    = var_B4.Text
  loc_FCF166:   Set var_B8 = var_C4(1)
  loc_FCF16C:   Call 0.Method_Fgrid1_UnknownEvent_C0 (Len(var_9C))
  loc_FCF174:   var_C4.SelStart = 
  loc_FCF187: End If
  loc_FCF191: If (CLng(Index) <> &HD) Then
  loc_FCF199:   global_60 = &HFF
  loc_FCF19C: End If
  loc_FCF19C: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E41E30
  'Data Table: 51FF60
  Dim var_8C As TextBox
  loc_E41E04: Call Proc_232_41_EB77D4()
  loc_E41E14: Set var_88 = var_8C(1)
  loc_E41E1A: Call 0.Method_Fgrid1_UnknownEvent_150 (0)
  loc_E41E22: var_8C.Visible = 
  loc_E41E2E: Exit Sub
End Sub

Private Sub DGOutlet_UnknownEvent_9 'F73A98
  'Data Table: 51FF60
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F73977: var_86 = CInt(Val(CStr(Me.DGOutlet.Tag)))
  loc_F73992: Me.DGOutlet.Visible = False
  loc_F739B1: If (Me.RecordCount > 0) Then
  loc_F739EF:   Set var_CC = var_D0(var_86)
  loc_F739F5:   Call 0.Method_DGOutlet_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_F739FD:   var_D0.Text = var_86
  loc_F73A30:   var_C8 = Me.Fields.Item("Code")
  loc_F73A4E:   Set var_CC = var_D0(var_86)
  loc_F73A54:   Call 0.Method_DGOutlet_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F73A5C:   var_D0.Tag = 
  loc_F73A72: End If
  loc_F73A7C: Set var_8C = var_C8(var_86)
  loc_F73A82: Call 0.Method_DGOutlet_UnknownEvent_90 ()
  loc_F73A8A: var_C8.SetFocus
  loc_F73A96: Exit Sub
End Sub

Private Sub DGOutlet_UnknownEvent_1F 'EABB88
  'Data Table: 51FF60
  Dim var_B4 As Double
  Dim var_17B4 As String
  loc_EABB1E: Proc_6_153_E91D24(Me.DGOutlet, arg_14)
  loc_EABB4B: var_B4 = Val(CStr(Me.DGOutlet.Tag))
  loc_EABB52: Set var_A8 = arg_18(var_B4)
  loc_EABB6E: Proc_6_138_106E830(Me.DGOutlet, global_56)
  loc_EABB84: Exit Sub
  loc_EABB85: var_17B4 = CStr(CInt(var_B4))
End Sub

Private Sub FGPoint_UnknownEvent_9 'E359A4
  'Data Table: 51FF60
  loc_E35998: If (CBool(Me.DGJobSchedule.Visible) = &HFF) Then
  loc_E3599B:   Call DGJobSchedule_UnknownEvent_9()
  loc_E359A0: End If
  loc_E359A0: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '17034F0
  'Data Table: 51FF60
  Dim var_A4 As Variant
  Dim var_C2 As Integer
  Dim var_88 As DataGrid
  Dim var_90 As Variant
  Dim var_BC As Variant
  Dim var_C0 As TextBox
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_160 As String
  Dim var_170 As String
  Dim var_180 As String
  loc_1701972: Set var_88 = var_8C(Index)
  loc_1701978: Call 0.Method_Txt_GotFocus0 ()
  loc_1701980: Set var_90 = var_8C
  loc_1701986: Proc_6_74_E23240(var_90)
  loc_1701992: Call Proc_232_41_EB77D4()
  loc_17019A4: ReDim var_94(0 To 0)
  loc_17019BB: var_94(0) = vbNullString
  loc_17019E4: Set var_C0 = ()
  loc_1701A12: Set global_88 = Proc_6_66_F0048C((Array(var_94)), var_C0, Index)
  loc_1701A26: var_C2 = Index
  loc_1701A31: If (var_C2 = CInt(8)) Then
  loc_1701A50:   If (CBool(Me.DGJobSchedule.Visible) = 0) Then
  loc_1701A60:     Set var_8C = var_90(Index)
  loc_1701A66:     Call 0.Method_Txt_GotFocus0 (var_C8, var_C2)
  loc_1701A6E:     global_72 = var_90.Left
  loc_1701A8A:     var_A4 = CVar((CDbl((0).Left) + var_C8)) 'Single
  loc_1701A99:     Me.DGJobSchedule.Left = vbNullString
  loc_1701AB9:     Set var_8C = var_90(Index)
  loc_1701ABF:     Call 0.Method_Txt_GotFocus0 (var_C8)
  loc_1701AC7:      = var_90.Top
  loc_1701AD9:     Set var_BC = var_C0(Index)
  loc_1701ADF:     Call 0.Method_Txt_GotFocus0 (var_DC)
  loc_1701AE7:      = var_C0.Height
  loc_1701B0B:     var_A4 = CVar((((CDbl(().Top) + var_C8) + var_DC) + CDbl(&H14))) 'Single
  loc_1701B1A:     Me.DGJobSchedule.Top = vbNullString
  loc_1701B44:     Me.DGJobSchedule.Tag = CVar(CStr(Index))
  loc_1701B4F:   End If
  loc_1701B66:   If (Me.RecordCount > 0) Then
  loc_1701B74:     Set var_8C = ()
  loc_1701B8C:     Proc_6_137_1192FDC(Me.DGJobSchedule, global_52)
  loc_1701B9A:   End If
  loc_1701BA3:   var_C8 = Me.RecordCount
  loc_1701BE8:   Set var_88 = var_8C(Index)
  loc_1701BEE:   Call 0.Method_Txt_GotFocus0 (var_E8, ((var_C8 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1701BF6:   Index = var_8C.Text
  loc_1701C0E:   If (var_8C Or (var_E8 = vbNullString)) Then
  loc_1701C11:     Exit Sub
  loc_1701C12:   End If
  loc_1701C1F:   Set var_88 = var_8C(Index)
  loc_1701C25:   Call 0.Method_Txt_GotFocus0 (var_E8)
  loc_1701C2D:    = var_8C.Text
  loc_1701C3F:   var_A4 = "Name"
  loc_1701C4E:   var_90 = Me.Fields
  loc_1701C7A:   If CBool(CVar(var_E8) <> var_90.Item(var_A4).Value) Then
  loc_1701C83:     Me.MoveFirst
  loc_1701CA6:     Set var_88 = var_8C(Index)
  loc_1701CAC:     Call 0.Method_Txt_GotFocus0 (var_E8, "Name ='", 0)
  loc_1701CB4:     1 = var_8C.Text
  loc_1701CCD:     Me.Find var_A4 & var_E8 & "'", , 
  loc_1701CE2:   End If
  loc_1701CE5: Else
  loc_1701CED:   If (var_C2 = CInt(&H18)) Then
  loc_1701D0C:     If (CBool(Me.DGOutlet.Visible) = 0) Then
  loc_1701D1C:       Set var_8C = var_90(Index)
  loc_1701D22:       Call 0.Method_Txt_GotFocus0 (var_C8)
  loc_1701D2A:        = var_90.Left
  loc_1701D46:       var_A4 = CVar((CDbl(().Left) + var_C8)) 'Single
  loc_1701D55:       Me.DGOutlet.Left = var_A4
  loc_1701D75:       Set var_8C = var_90(Index)
  loc_1701D7B:       Call 0.Method_Txt_GotFocus0 (var_C8)
  loc_1701D83:        = var_90.Top
  loc_1701D95:       Set var_BC = var_C0(Index)
  loc_1701D9B:       Call 0.Method_Txt_GotFocus0 (var_DC)
  loc_1701DA3:        = var_C0.Height
  loc_1701DC7:       var_A4 = CVar((((CDbl(().Top) + var_C8) + var_DC) + CDbl(&H14))) 'Single
  loc_1701DD6:       Me.DGOutlet.Top = var_A4
  loc_1701E00:       Me.DGOutlet.Tag = CVar(CStr(Index))
  loc_1701E0B:     End If
  loc_1701E22:     If (Me.RecordCount > 0) Then
  loc_1701E30:       Set var_8C = ()
  loc_1701E48:       Proc_6_137_1192FDC(Me.DGOutlet, global_56)
  loc_1701E56:     End If
  loc_1701EA4:     Set var_88 = var_8C(Index)
  loc_1701EAA:     Call 0.Method_Txt_GotFocus0 (var_E8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1701EB2:     Index = var_8C.Text
  loc_1701ECA:     If (var_8C Or (var_E8 = vbNullString)) Then
  loc_1701ECD:       Exit Sub
  loc_1701ECE:     End If
  loc_1701EDB:     Set var_88 = var_8C(Index)
  loc_1701EE1:     Call 0.Method_Txt_GotFocus0 (var_E8)
  loc_1701EE9:      = var_8C.Text
  loc_1701EFB:     var_A4 = "Name"
  loc_1701F36:     If CBool(CVar(var_E8) <> Me.Fields.Item(var_A4).Value) Then
  loc_1701F3F:       Me.MoveFirst
  loc_1701F62:       Set var_88 = var_8C(Index)
  loc_1701F68:       Call 0.Method_Txt_GotFocus0 (var_E8, "Name ='", 0)
  loc_1701F70:       1 = var_8C.Text
  loc_1701F89:       Me.Find var_A4 & var_E8 & "'", , 
  loc_1701F9E:     End If
  loc_1701FA1:   Else
  loc_1701FA9:     If Not (var_C2 = CInt(0)) Then
  loc_1701FB4:       If (var_C2 = CInt(&HE)) Then
  loc_1701FB7:       End If
  loc_1701FC4:       ReDim var_94(0 To 6)
  loc_1701FDB:       var_94(0) = "Address"
  loc_1701FEA:       var_94(1) = "Check In Date"
  loc_1701FF9:       var_94(2) = "Guest First Name"
  loc_1702008:       var_94(3) = "Guest Full Name"
  loc_1702017:       var_94(4) = "Room Discount"
  loc_1702026:       var_94(5) = "Room Number"
  loc_1702035:       var_94(6) = "Room Tariff"
  loc_170204C:       global_72 = Array(var_94)
  loc_170208C:       Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_17020B0:       global_72(CVar(CStr(Index))).Tag = 7
  loc_17020BE:     Else
  loc_17020C6:       If Not (var_C2 = CInt(1)) Then
  loc_17020D1:         If (var_C2 = CInt(&HF)) Then
  loc_17020D4:         End If
  loc_17020E1:         ReDim var_94(0 To &HB)
  loc_17020F8:         var_94(0) = "Address"
  loc_1702107:         var_94(1) = "Debit Amount"
  loc_1702116:         var_94(2) = "Credit Amount"
  loc_1702125:         var_94(3) = "Bill Amount"
  loc_1702134:         var_94(4) = "Bill Number"
  loc_1702143:         var_94(5) = "Check Out Date"
  loc_1702152:         var_94(6) = "Guest First Name"
  loc_1702161:         var_94(7) = "Guest Full Name"
  loc_1702170:         var_94(8) = "Payment Mode"
  loc_170217F:         var_94(9) = "Room Discount"
  loc_170218E:         var_94(&HA) = "Room Number"
  loc_170219D:         var_94(&HB) = "Room Tariff"
  loc_17021B4:         global_72 = Array(var_94)
  loc_17021F4:         Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_1702218:         global_72(CVar(CStr(Index))).Tag = &HC
  loc_1702226:       Else
  loc_170222E:         If Not (var_C2 = CInt(3)) Then
  loc_1702239:           If (var_C2 = CInt(&HC)) Then
  loc_170223C:           End If
  loc_1702249:           ReDim var_94(0 To 7)
  loc_1702260:           var_94(0) = "GuestFullName"
  loc_170226F:           var_94(1) = "GuestFirstName"
  loc_170227E:           var_94(2) = "ReservationNo"
  loc_170228D:           var_94(3) = "RoomCategory"
  loc_170229C:           var_94(4) = "ArrivalDateTime"
  loc_17022AB:           var_94(5) = "DepartDateTime"
  loc_17022BA:           var_94(6) = "ReservedRooms"
  loc_17022C9:           var_94(7) = "EstimateAmount"
  loc_17022E0:           global_72 = Array(var_94)
  loc_1702320:           Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_1702344:           global_72(CVar(CStr(Index))).Tag = 8
  loc_1702352:         Else
  loc_170235A:           If Not (var_C2 = CInt(5)) Then
  loc_1702365:             If (var_C2 = CInt(&HD)) Then
  loc_1702368:             End If
  loc_1702375:             ReDim var_94(0 To 7)
  loc_170238C:             var_94(0) = "GuestFullName"
  loc_170239B:             var_94(1) = "GuestFirstName"
  loc_17023AA:             var_94(2) = "ReservationNo"
  loc_17023B9:             var_94(3) = "RoomCategory"
  loc_17023C8:             var_94(4) = "ArrivalDateTime"
  loc_17023D7:             var_94(5) = "DepartDateTime"
  loc_17023E6:             var_94(6) = "ReservedRooms"
  loc_17023F5:             var_94(7) = "EstimateAmount"
  loc_170240C:             global_72 = Array(var_94)
  loc_170244C:             Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_1702470:             global_72(CVar(CStr(Index))).Tag = 8
  loc_170247E:           Else
  loc_1702486:             If (var_C2 = CInt(2)) Then
  loc_1702496:               ReDim var_94(0 To 8)
  loc_17024AD:               var_94(0) = "Receipt Date"
  loc_17024BC:               var_94(1) = "Receipt Number"
  loc_17024CB:               var_94(2) = "Contact Person"
  loc_17024DA:               var_94(3) = "Credit Account"
  loc_17024E9:               var_94(4) = "Debit Account"
  loc_17024F8:               var_94(5) = "Credit Narration"
  loc_1702507:               var_94(6) = "Debit Narration"
  loc_1702516:               var_94(7) = "Credit Amount"
  loc_1702525:               var_94(8) = "Debit Amount"
  loc_170253C:               global_72 = Array(var_94)
  loc_170257C:               Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_17025A0:               global_72(CVar(CStr(Index))).Tag = 9
  loc_17025AE:             Else
  loc_17025B6:               If (var_C2 = CInt(&H10)) Then
  loc_17025C6:                 ReDim var_94(0 To &HA)
  loc_17025DD:                 var_94(0) = "Receipt Date"
  loc_17025EC:                 var_94(1) = "Receipt Number"
  loc_17025FB:                 var_94(2) = "Contact Person"
  loc_170260A:                 var_94(3) = "Credit Account"
  loc_1702619:                 var_94(4) = "Debit Account"
  loc_1702628:                 var_94(5) = "Credit Narration"
  loc_1702637:                 var_94(6) = "Debit Narration"
  loc_1702646:                 var_94(7) = "Credit Amount"
  loc_1702655:                 var_94(8) = "Debit Amount"
  loc_1702664:                 var_94(9) = "Cheque Date"
  loc_1702673:                 var_94(&HA) = "Cheque Number"
  loc_170268A:                 global_72 = Array(var_94)
  loc_17026CA:                 Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_17026EE:                 global_72(CVar(CStr(Index))).Tag = &HB
  loc_17026FC:               Else
  loc_1702704:                 If (var_C2 = CInt(6)) Then
  loc_1702714:                   ReDim var_94(0 To 1)
  loc_170272B:                   var_94(0) = "Mobile Number"
  loc_170273A:                   var_94(1) = "Balance Amount"
  loc_1702751:                   global_72 = Array(var_94)
  loc_1702791:                   Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_17027B5:                   global_72(CVar(CStr(Index))).Tag = 2
  loc_17027C3:                 Else
  loc_17027CB:                   If (var_C2 = CInt(7)) Then
  loc_17027DB:                     ReDim var_94(0 To 9)
  loc_17027F2:                     var_94(0) = "Contact Person"
  loc_1702801:                     var_94(1) = "Member Id"
  loc_1702810:                     var_94(2) = "Member Account"
  loc_170281F:                     var_94(3) = "Bill DateFrom"
  loc_170282E:                     var_94(4) = "Bill DateTo"
  loc_170283D:                     var_94(5) = "Bill Number"
  loc_170284C:                     var_94(6) = "Bill Amount"
  loc_170285B:                     var_94(7) = "Billing Month"
  loc_170286A:                     var_94(8) = "Billing Date"
  loc_1702879:                     var_94(9) = "Current Balance"
  loc_1702890:                     global_72 = Array(var_94)
  loc_17028D0:                     Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_17028F4:                     global_72(CVar(CStr(Index))).Tag = &HA
  loc_1702902:                   Else
  loc_170290A:                     If (var_C2 = CInt(&H15)) Then
  loc_170291A:                       ReDim var_94(0 To 5)
  loc_1702931:                       var_94(0) = "Registration Id"
  loc_1702940:                       var_94(1) = "Registration Date"
  loc_170294F:                       var_94(2) = "Guest Full Name"
  loc_170295E:                       var_94(3) = "Mobile Number"
  loc_170296D:                       var_94(4) = "Address"
  loc_170297C:                       var_94(5) = "Valid UpToDate"
  loc_1702993:                       global_72 = Array(var_94)
  loc_17029D3:                       Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_17029F7:                       global_72(CVar(CStr(Index))).Tag = 6
  loc_1702A05:                     Else
  loc_1702A0D:                       If Not (var_C2 = CInt(&H16)) Then
  loc_1702A18:                         If (var_C2 = CInt(&H17)) Then
  loc_1702A1B:                         End If
  loc_1702A28:                         ReDim var_94(0 To &HD)
  loc_1702A3F:                         var_94(0) = "Registration Id"
  loc_1702A4E:                         var_94(1) = "Registration Date"
  loc_1702A5D:                         var_94(2) = "Guest Full Name"
  loc_1702A6C:                         var_94(3) = "Mobile Number"
  loc_1702A7B:                         var_94(4) = "Address"
  loc_1702A8A:                         var_94(5) = "Valid UpToDate"
  loc_1702A99:                         var_94(6) = "Bill Date"
  loc_1702AA8:                         var_94(7) = "Bill Number"
  loc_1702AB7:                         var_94(8) = "Reward Points"
  loc_1702AC6:                         var_94(9) = "Reward Value"
  loc_1702AD5:                         var_94(&HA) = "Redeem Points"
  loc_1702AE4:                         var_94(&HB) = "Redeem Value"
  loc_1702AF3:                         var_94(&HC) = "RPoint Balance"
  loc_1702B02:                         var_94(&HD) = "RValue Balance"
  loc_1702B19:                         global_72 = Array(var_94)
  loc_1702B59:                         Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_1702B7D:                         global_72(CVar(CStr(Index))).Tag = &HE
  loc_1702B8B:                       Else
  loc_1702B93:                         If (var_C2 = CInt(&H19)) Then
  loc_1702BA3:                           ReDim var_94(0 To &HD)
  loc_1702BBA:                           var_94(0) = "Outlet Title"
  loc_1702BC9:                           var_94(1) = "KOT Number"
  loc_1702BD8:                           var_94(2) = "KOT DateTime"
  loc_1702BE7:                           var_94(3) = "Table Number"
  loc_1702BF6:                           var_94(4) = "Remark"
  loc_1702C05:                           var_94(5) = "Item Detail"
  loc_1702C07:                           var_160 = "Item-Qty"
  loc_1702C14:                           var_94(6) = "Bill Date"
  loc_1702C16:                           var_170 = "Item-Qty-Rate"
  loc_1702C23:                           var_94(7) = "Bill Number"
  loc_1702C25:                           var_180 = "Item-Qty-Amt"
  loc_1702C32:                           var_94(8) = "Reward Points"
  loc_1702C41:                           var_94(9) = "Steward"
  loc_1702C50:                           var_94(&HA) = "User"
  loc_1702C5F:                           var_94(&HB) = "KOT Total"
  loc_1702C6E:                           var_94(&HC) = "KOT Status"
  loc_1702C7D:                           var_94(&HD) = "KOT Type"
  loc_1702C94:                           global_72 = Array(var_94)
  loc_1702CD4:                           Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_1702CF8:                           global_72(CVar(CStr(Index))).Tag = &HE
  loc_1702D06:                         Else
  loc_1702D0E:                           If (var_C2 = CInt(&H1A)) Then
  loc_1702D1E:                             ReDim var_94(0 To &HB)
  loc_1702D35:                             var_94(0) = "Outlet Title"
  loc_1702D44:                             var_94(1) = "Bill Number"
  loc_1702D53:                             var_94(2) = "Bill Date"
  loc_1702D62:                             var_94(3) = "Disc Amount"
  loc_1702D71:                             var_94(4) = "Bill Amount"
  loc_1702D80:                             var_94(5) = "Item Detail"
  loc_1702D82:                             var_160 = "Item-Qty"
  loc_1702D8F:                             var_94(6) = "Bill Date"
  loc_1702D91:                             var_170 = "Item-Qty-Rate"
  loc_1702D9E:                             var_94(7) = "Bill Number"
  loc_1702DA0:                             var_180 = "Item-Qty-Amt"
  loc_1702DAD:                             var_94(8) = "Reward Points"
  loc_1702DBC:                             var_94(9) = "Mobile Number"
  loc_1702DCB:                             var_94(&HA) = "Guest Full Name"
  loc_1702DDA:                             var_94(&HB) = "Address"
  loc_1702DF1:                             global_72 = Array(var_94)
  loc_1702E31:                             Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_1702E55:                             global_72(CVar(CStr(Index))).Tag = &HC
  loc_1702E63:                           Else
  loc_1702E6B:                             If (var_C2 = CInt(&H1B)) Then
  loc_1702E7B:                               ReDim var_94(0 To &HD)
  loc_1702E92:                               var_94(0) = "Outlet Title"
  loc_1702EA1:                               var_94(1) = "Bill Number"
  loc_1702EB0:                               var_94(2) = "Bill Date"
  loc_1702EBF:                               var_94(3) = "Disc Amount"
  loc_1702ECE:                               var_94(4) = "Bill Amount"
  loc_1702EDD:                               var_94(5) = "Item Detail"
  loc_1702EDF:                               var_160 = "Item-Qty"
  loc_1702EEC:                               var_94(6) = "Bill Date"
  loc_1702EEE:                               var_170 = "Item-Qty-Rate"
  loc_1702EFB:                               var_94(7) = "Bill Number"
  loc_1702EFD:                               var_180 = "Item-Qty-Amt"
  loc_1702F0A:                               var_94(8) = "Reward Points"
  loc_1702F19:                               var_94(9) = "Mobile Number"
  loc_1702F28:                               var_94(&HA) = "Guest Full Name"
  loc_1702F37:                               var_94(&HB) = "Address"
  loc_1702F46:                               var_94(&HC) = "Table Number"
  loc_1702F55:                               var_94(&HD) = "Payment Type"
  loc_1702F6C:                               global_72 = Array(var_94)
  loc_1702FAC:                               Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_1702FD0:                               global_72(CVar(CStr(Index))).Tag = &HE
  loc_1702FDE:                             Else
  loc_1702FE6:                               If (var_C2 = CInt(&H1C)) Then
  loc_1702FF6:                                 ReDim var_94(0 To &HA)
  loc_170300D:                                 var_94(0) = "Outlet Title"
  loc_170301C:                                 var_94(1) = "Bill Number"
  loc_170302B:                                 var_94(2) = "Bill Date"
  loc_170303A:                                 var_94(3) = "Disc Amount"
  loc_1703049:                                 var_94(4) = "Bill Amount"
  loc_1703058:                                 var_94(5) = "Mobile Number"
  loc_1703067:                                 var_94(6) = "Guest Full Name"
  loc_1703076:                                 var_94(7) = "Address"
  loc_1703085:                                 var_94(8) = "Delivery Boy"
  loc_1703094:                                 var_94(9) = "Assign DateTime"
  loc_17030A3:                                 var_94(&HA) = "Assign Remark"
  loc_17030BA:                                 global_72 = Array(var_94)
  loc_17030FA:                                 Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_170311E:                                 global_72(CVar(CStr(Index))).Tag = &HB
  loc_170312C:                               Else
  loc_1703134:                                 If (var_C2 = CInt(&HA)) Then
  loc_1703144:                                   ReDim var_94(0 To 0)
  loc_170315B:                                   var_94(0) = "Night Audit"
  loc_1703172:                                   global_72 = Array(var_94)
  loc_17031B2:                                   Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_17031D6:                                   global_72(CVar(CStr(Index))).Tag = 1
  loc_17031E4:                                 Else
  loc_17031EC:                                   If Not (var_C2 = CInt(&H11)) Then
  loc_17031F7:                                     If (var_C2 = CInt(&H13)) Then
  loc_17031FA:                                     End If
  loc_1703207:                                     ReDim var_94(0 To &HD)
  loc_170321E:                                     var_94(0) = "Booking No"
  loc_170322D:                                     var_94(1) = "Booking Date"
  loc_170323C:                                     var_94(2) = "Party Name"
  loc_170324B:                                     var_94(3) = "Party Address"
  loc_170325A:                                     var_94(4) = "Company Name"
  loc_1703269:                                     var_94(5) = "Function Type"
  loc_1703278:                                     var_94(6) = "Exp Pax"
  loc_1703287:                                     var_94(7) = "Gurr Pax"
  loc_1703296:                                     var_94(8) = "Pax Rate"
  loc_17032A5:                                     var_94(9) = "Net Amount"
  loc_17032B4:                                     var_94(&HA) = "Remark"
  loc_17032C3:                                     var_94(&HB) = "Status"
  loc_17032D2:                                     var_94(&HC) = "Advance"
  loc_17032E1:                                     var_94(&HD) = "Venue Detail"
  loc_17032F8:                                     global_72 = Array(var_94)
  loc_1703338:                                     Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_170335C:                                     global_72(CVar(CStr(Index))).Tag = &HE
  loc_170336A:                                   Else
  loc_1703372:                                     If Not (var_C2 = CInt(&H12)) Then
  loc_170337D:                                       If (var_C2 = CInt(&H14)) Then
  loc_1703380:                                       End If
  loc_170338D:                                       ReDim var_94(0 To &HD)
  loc_17033A4:                                       var_94(0) = "Booking No"
  loc_17033B3:                                       var_94(1) = "Booking Date"
  loc_17033C2:                                       var_94(2) = "Party Name"
  loc_17033D1:                                       var_94(3) = "Party Address"
  loc_17033E0:                                       var_94(4) = "Company Name"
  loc_17033EF:                                       var_94(5) = "Function Type"
  loc_17033FE:                                       var_94(6) = "Exp Pax"
  loc_170340D:                                       var_94(7) = "Gurr Pax"
  loc_170341C:                                       var_94(8) = "Pax Rate"
  loc_170342B:                                       var_94(9) = "Net Amount"
  loc_170343A:                                       var_94(&HA) = "Remark"
  loc_1703449:                                       var_94(&HB) = "Status"
  loc_1703458:                                       var_94(&HC) = "Advance"
  loc_1703467:                                       var_94(&HD) = "Venue Detail"
  loc_170347E:                                       global_72 = Array(var_94)
  loc_17034BE:                                       Set global_88 = Proc_6_66_F0048C((global_72), (), Index)
  loc_17034E2:                                       global_72(CVar(CStr(Index))).Tag = &HE
  loc_17034ED:                                     End If
  loc_17034ED:                                   End If
  loc_17034ED:                                 End If
  loc_17034ED:                               End If
  loc_17034ED:                             End If
  loc_17034ED:                           End If
  loc_17034ED:                         End If
  loc_17034ED:                       End If
  loc_17034ED:                     End If
  loc_17034ED:                   End If
  loc_17034ED:                 End If
  loc_17034ED:               End If
  loc_17034ED:             End If
  loc_17034ED:           End If
  loc_17034ED:         End If
  loc_17034ED:       End If
  loc_17034ED:     End If
  loc_17034ED:   End If
  loc_17034ED: End If
  loc_17034ED: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1148430
  'Data Table: 51FF60
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  Dim var_A4 As DataGrid
  loc_11480D2: If (CLng(Shift) = &H1B) Then
  loc_11480D5:   Call Proc_232_41_EB77D4()
  loc_11480DA:   Exit Sub
  loc_11480DB: End If
  loc_11480DE: var_86 = KeyCode
  loc_11480E9: If (var_86 = CInt(8)) Then
  loc_1148104:   Set var_9C = Nothing
  loc_114810F:   Set var_98 = Nothing
  loc_114813D:   Proc_6_69_134A630(Me.DGJobSchedule, (var_86), KeyCode, global_52, Shift)
  loc_11481AA:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11481B1:     Set var_98 = Me.DGJobSchedule
  loc_11481D0:     Proc_6_138_106E830(var_98, global_52, KeyCode, 1(0))
  loc_11481DE:   End If
  loc_11481E1: Else
  loc_11481E9:   If (var_86 = CInt(&H18)) Then
  loc_1148204:     Set var_9C = Nothing
  loc_114820F:     Set var_98 = Nothing
  loc_114823D:     Proc_6_69_134A630(Me.DGOutlet, var_9C(var_98), KeyCode, global_56, Shift, 0)
  loc_11482AA:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11482B1:       Set var_98 = Me.DGOutlet
  loc_11482D0:       Proc_6_138_106E830(var_98, global_56, KeyCode, var_98(1))
  loc_11482DE:     End If
  loc_11482DE:   End If
  loc_11482DE: End If
  loc_114833D: Set var_A4 = (( And (CBool((( And (CBool(0((0 And (CBool(var_9C((CBool(Me.DGOutlet.Visible) = 0)).Visible) = 0))).Visible) = 0))).Visible) = 0)))
  loc_11483F1: If ((( And (CBool((( And (CBool(((( And (CBool(var_A4.Visible) = 0)) And (Me.FrmList.Visible = 0))).Visible) = 0))).Visible) = 0)) And (CBool(Me.DGTaxStru.Visible) = 0)) And (CBool(Me.DGJobSchedule.Visible) = 0)) Then
  loc_1148409:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1148412:     Proc_6_75_E5335C(Shift)
  loc_1148417:   End If
  loc_1148421:   If (CLng(Shift) = &H26) Then
  loc_114842A:     Proc_6_76_E533C8(Shift, arg_14)
  loc_114842F:   End If
  loc_114842F: End If
  loc_114842F: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FAED08
  'Data Table: 51FF60
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_A8 As TextBox
  Dim arg_10 As Integer
  loc_FAEB77: Proc_6_58_E06050(arg_10)
  loc_FAEB7F: var_86 = KeyAscii
  loc_FAEB8A: If (var_86 = CInt(8)) Then
  loc_FAEBA9:   If (CBool(Me.DGJobSchedule.Visible) = &HFF) Then
  loc_FAEBBB:     var_A0 = "Name"
  loc_FAEBD6:     Proc_6_89_1470B00((var_86), KeyAscii, global_52)
  loc_FAEBE5:   End If
  loc_FAEBE8: Else
  loc_FAEBF0:   If (var_86 = CInt(&H18)) Then
  loc_FAEC0F:     If (CBool(Me.DGOutlet.Visible) = &HFF) Then
  loc_FAEC16:       Set var_A8 = var_A0(arg_10)
  loc_FAEC21:       var_A0 = "Name"
  loc_FAEC3C:       Proc_6_89_1470B00(var_A8, KeyAscii, global_56, arg_10)
  loc_FAEC4B:     End If
  loc_FAEC4E:   Else
  loc_FAEC56:     If (var_86 = CInt(4)) Then
  loc_FAEC82:       If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_FAEC92:         Set var_8C = var_A8(KeyAscii)
  loc_FAEC98:         Call 0.Method_Txt_KeyPress0 ("Auto", var_A0)
  loc_FAECA0:         var_A8.Text = 0
  loc_FAECAF:       Else
  loc_FAECD8:         If (Ucase(Chr(CLng(arg_10))) = "S") Then
  loc_FAECE8:           Set var_8C = var_A8(KeyAscii)
  loc_FAECEE:           Call 0.Method_Txt_KeyPress0 ("Semi")
  loc_FAECF6:           var_A8.Text = 0
  loc_FAED02:         End If
  loc_FAED02:       End If
  loc_FAED04:       arg_10 = 0
  loc_FAED07:     End If
  loc_FAED07:   End If
  loc_FAED07: End If
  loc_FAED07: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F83BAC
  'Data Table: 51FF60
  Dim var_86 As Integer
  loc_F83A5F: var_86 = KeyCode
  loc_F83A6A: If (var_86 = CInt(8)) Then
  loc_F83A89:   If (CBool(Me.DGJobSchedule.Visible) = &HFF) Then
  loc_F83A9D:     var_A4 = "Name"
  loc_F83AC1:     Proc_6_68_12A2818(Me.DGJobSchedule, (var_86), KeyCode)
  loc_F83ADF:     Set var_A0 = Shift(global_52)
  loc_F83AF7:     Proc_6_138_106E830(Me.DGJobSchedule, global_52, KeyCode)
  loc_F83B05:   End If
  loc_F83B08: Else
  loc_F83B10:   If (var_86 = CInt(&H18)) Then
  loc_F83B2F:     If (CBool(Me.DGOutlet.Visible) = &HFF) Then
  loc_F83B43:       var_A4 = "Name"
  loc_F83B67:       Proc_6_68_12A2818(Me.DGOutlet, var_A4(var_A0), KeyCode)
  loc_F83B85:       Set var_A0 = Shift(global_56)
  loc_F83B9D:       Proc_6_138_106E830(Me.DGOutlet, global_56, KeyCode)
  loc_F83BAB:     End If
  loc_F83BAB:   End If
  loc_F83BAB: End If
  loc_F83BAB: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'EF1D54
  'Data Table: 51FF60
  loc_EF1CA6: Set var_88 = var_8C(Index)
  loc_EF1CAC: Call 0.Method_Txt_LostFocus0 ()
  loc_EF1CBA: Proc_6_73_E23294(var_8C)
  loc_EF1CD3: ReDim var_94(0 To 0)
  loc_EF1CEA: var_94(0) = vbNullString
  loc_EF1D41: Set global_88 = Proc_6_66_F0048C((Array(var_94)), (), Index)
  loc_EF1D52: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1169DB8
  'Data Table: 51FF60
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim var_C4 As Variant
  loc_1169A08: On Error Resume Next
  loc_1169A0D: Call Proc_232_41_EB77D4()
  loc_1169A24: If (Cancel = CInt(8)) Then
  loc_1169A77:   Set var_94 = var_98(Cancel)
  loc_1169A7D:   Call 0.Method_Txt_Validate0 (var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1169A85:   var_86 = var_98.Text
  loc_1169A9D:   If ( Or (var_9C = vbNullString)) Then
  loc_1169AA2:     Exit Sub
  loc_1169AA3:   End If
  loc_1169AE0:   Set var_B0 = var_B4(Cancel)
  loc_1169AE6:   Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_1169AEE:   var_B4.Text = 
  loc_1169B23:   var_98 = Me.Fields.Item("Code")
  loc_1169B2B:   var_C4 = var_98.Value
  loc_1169B34:   var_9C = CStr(var_C4)
  loc_1169B41:   Set var_B0 = var_B4(Cancel)
  loc_1169B47:   Call 0.Method_Txt_Validate0 (var_9C)
  loc_1169B4F:   var_B4.Tag = 
  loc_1169B6A:   Call Proc_232_37_11B6F04(var_C4)
  loc_1169B75: Else
  loc_1169B7F:   If (var_86 = CInt(&H18)) Then
  loc_1169BD2:     Set var_94 = var_98(Cancel)
  loc_1169BD8:     Call 0.Method_Txt_Validate0 (var_9C)
  loc_1169BE0:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1169BF8:     If ( Or (var_9C = vbNullString)) Then
  loc_1169BFD:       Exit Sub
  loc_1169BFE:     End If
  loc_1169C3B:     Set var_B0 = var_B4(Cancel)
  loc_1169C41:     Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_1169C49:     var_B4.Text = 
  loc_1169C7E:     var_98 = Me.Fields.Item("Code")
  loc_1169C8F:     var_9C = CStr(var_98.Value)
  loc_1169C9C:     Set var_B0 = var_B4(Cancel)
  loc_1169CA2:     Call 0.Method_Txt_Validate0 (var_9C)
  loc_1169CAA:     var_B4.Tag = 
  loc_1169CCF:     Set var_94 = var_98(Cancel)
  loc_1169CD5:     Call 0.Method_Txt_Validate0 (var_9C)
  loc_1169CDD:      = var_98.Tag
  loc_1169CE9:     Call Proc_232_43_1094DD0(var_9C)
  loc_1169CFB:   Else
  loc_1169D05:     If (var_86 = CInt(4)) Then
  loc_1169D14:       Set var_94 = var_98(Cancel)
  loc_1169D1A:       Call 0.Method_Txt_Validate0 ()
  loc_1169D55:       If (Ucase(Left(CVar(var_98), 1)) = "A") Then
  loc_1169D67:         Set var_94 = var_98(Cancel)
  loc_1169D6D:         Call 0.Method_Txt_Validate0 ("Auto")
  loc_1169D75:         var_98.Text = 
  loc_1169D84:       Else
  loc_1169D95:         Set var_94 = var_98(Cancel)
  loc_1169D9B:         Call 0.Method_Txt_Validate0 ("Semi")
  loc_1169DA3:         var_98.Text = 
  loc_1169DAF:       End If
  loc_1169DB1:     End If
  loc_1169DB1:   End If
  loc_1169DB1: End If
  loc_1169DB5: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1149FB4
  'Data Table: 51FF60
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As DataGrid
  Dim var_B0 As Long
  Dim var_DC As Long
  loc_1149C20: If (KeyCode = 1) Then
  loc_1149C2D:   If (CLng(Shift) = &H1B) Then
  loc_1149C3D:     Set var_8C = var_90(KeyCode)
  loc_1149C43:     Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_1149C4B:     var_86 = var_90.Tag
  loc_1149C5D:     Set var_98 = var_9C(KeyCode)
  loc_1149C63:     Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_1149C6B:     var_9C.Text = 
  loc_1149C82:     Set var_8C = ()
  loc_1149C9F:     Set var_8C = var_90(KeyCode)
  loc_1149CA5:     Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_1149CAD:     var_90.Visible = DGOutlet.DispID_8001
  loc_1149CB9:     Exit Sub
  loc_1149CBA:   End If
  loc_1149CC4:   ().DeleteRowLabels , 
  loc_1149CCD:   var_B0 = CLng()
  loc_1149CDD:   If (var_B0 = CLng(2)) Then
  loc_1149CEA:     If (CLng(Shift) = &HD) Then
  loc_1149CF3:       Call Proc_232_33_11B8128(KeyCode, var_B2)
  loc_1149CFE:       If (var_B2 = &HFF) Then
  loc_1149D0C:         Set var_9C = ()
  loc_1149D35:         Set var_90 = var_9C
  loc_1149D44:         Proc_6_62_1254E68((var_B0), var_90, KeyCode, Shift, global_60)
  loc_1149D60:         Set var_8C = var_90(KeyCode)
  loc_1149D66:         Call 0.Method_TxtGrid_KeyDown0 (0, 2, 0)
  loc_1149D6E:         var_90.Visible = True
  loc_1149D86:         Set var_8C = 0(CVar(CLng(2)))
  loc_1149D98:         Set var_8C = (DGOutlet.DispID_B)
  loc_1149DA9:       End If
  loc_1149DA9:     End If
  loc_1149DA9:   End If
  loc_1149DAC: Else
  loc_1149DB2:   If (var_86 = 2) Then
  loc_1149DBF:     If (CLng(Shift) = &H1B) Then
  loc_1149DCF:       Set var_8C = var_90(KeyCode)
  loc_1149DD5:       Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_1149DDD:       DGOutlet.DispID_8001 = var_90.Tag
  loc_1149DEF:       Set var_98 = var_9C(KeyCode)
  loc_1149DF5:       Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_1149DFD:       var_9C.Text = 
  loc_1149E14:       Set var_8C = ()
  loc_1149E31:       Set var_8C = var_90(KeyCode)
  loc_1149E37:       Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_1149E3F:       var_90.Visible = DGOutlet.DispID_8001
  loc_1149E4B:       Exit Sub
  loc_1149E4C:     End If
  loc_1149E56:     ().DeleteRowLabels , 
  loc_1149E5F:     var_DC = CLng()
  loc_1149E6F:     If (var_DC = CLng(3)) Then
  loc_1149E7C:       If (CLng(Shift) = &HD) Then
  loc_1149E85:         Call Proc_232_33_11B8128(KeyCode, var_B2)
  loc_1149E90:         If (var_B2 = &HFF) Then
  loc_1149EC7:           Set var_90 = ()
  loc_1149ED6:           Proc_6_62_1254E68((var_DC), var_90, KeyCode, Shift, global_60)
  loc_1149EF2:           Set var_8C = var_90(KeyCode)
  loc_1149EF8:           Call 0.Method_TxtGrid_KeyDown0 (0, 4, 0)
  loc_1149F00:           var_90.Visible = True
  loc_1149F0C:         End If
  loc_1149F0C:       End If
  loc_1149F0F:     Else
  loc_1149F16:       If (var_DC = CLng(4)) Then
  loc_1149F23:         If (CLng(Shift) = &HD) Then
  loc_1149F2C:           Call Proc_232_33_11B8128(KeyCode, var_B2)
  loc_1149F37:           If (var_B2 = &HFF) Then
  loc_1149F6E:             Set var_90 = ()
  loc_1149F7D:             Proc_6_62_1254E68((0), var_90, KeyCode, Shift, global_60)
  loc_1149F99:             Set var_8C = var_90(KeyCode)
  loc_1149F9F:             Call 0.Method_TxtGrid_KeyDown0 (0, 4, 0)
  loc_1149FA7:             var_90.Visible = True
  loc_1149FB3:           End If
  loc_1149FB3:         End If
  loc_1149FB3:       End If
  loc_1149FB3:     End If
  loc_1149FB3:   End If
  loc_1149FB3: End If
  loc_1149FB3: Exit Sub
End Sub

Private Sub DGJobSchedule_UnknownEvent_9 'F73488
  'Data Table: 51FF60
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F73367: var_86 = CInt(Val(CStr(Me.DGJobSchedule.Tag)))
  loc_F73382: Me.DGJobSchedule.Visible = False
  loc_F733A1: If (Me.RecordCount > 0) Then
  loc_F733DF:   Set var_CC = var_D0(var_86)
  loc_F733E5:   Call 0.Method_DGJobSchedule_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_F733ED:   var_D0.Text = var_86
  loc_F73420:   var_C8 = Me.Fields.Item("Code")
  loc_F7343E:   Set var_CC = var_D0(var_86)
  loc_F73444:   Call 0.Method_DGJobSchedule_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F7344C:   var_D0.Tag = 
  loc_F73462: End If
  loc_F7346C: Set var_8C = var_C8(var_86)
  loc_F73472: Call 0.Method_DGJobSchedule_UnknownEvent_90 ()
  loc_F7347A: var_C8.SetFocus
  loc_F73486: Exit Sub
End Sub

Private Sub DGJobSchedule_UnknownEvent_1F 'EABC50
  'Data Table: 51FF60
  loc_EABBE6: Proc_6_153_E91D24(Me.DGJobSchedule, arg_14)
  loc_EABC1A: Set var_A8 = arg_18(Val(CStr(Me.DGJobSchedule.Tag)))
  loc_EABC36: Proc_6_138_106E830(Me.DGJobSchedule, global_52)
  loc_EABC4C: Exit Sub
End Sub

Private Sub CmdDeleteJobs_Click() 'EB0D38
  'Data Table: 51FF60
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim unk_51FF67 As Connection15
  loc_EB0CDC: Set var_88 = var_8C(CInt(8))
  loc_EB0CE2: Call 0.Method_CmdDeleteJobs_Click0 (var_90, "Delete From JobScheduledDetail WHERE Schedule_Id=", var_F4)
  loc_EB0CEA: -1 = var_8C.Tag
  loc_EB0CF2: var_A0 = CVar(var_90) 'String
  loc_EB0CF8: Proc_6_17_EAAE40(var_B0, var_A0)
  loc_EB0D0E: unk_51FF67.Execute CStr(var_F8 & var_B0), , 
  loc_EB0D2D: Call Proc_232_37_11B6F04(var_A0)
  loc_EB0D35: Exit Sub
End Sub

Private Sub CmdUpdateJobs_Click() '13CEB5C
  'Data Table: 51FF60
  Dim var_AC As DataGrid
  Dim var_BC As Variant
  Dim var_110 As Variant
  Dim var_9C As Variant
  Dim var_170 As Variant
  Dim var_140 As Variant
  Dim unk_51FF67 As Connection15
  Dim var_90 As Recordset15
  Dim var_E0 As Variant
  Dim var_A4 As String
  Dim unk_51FFE2 As Connection15
  Dim var_98 As Recordset15
  Dim var_A0 As Field20
  Dim var_120 As Variant
  Dim var_1B4 As Variant
  Dim var_35C As TextBox
  Dim var_3C8 As Variant
  Dim var_420 As Variant
  Dim var_180 As Variant
  Dim var_2A8 As Variant
  Dim var_408 As Variant
  Dim var_440 As Variant
  Dim var_460 As Variant
  Dim var_530 As Variant
  Dim var_5A0 As Variant
  Dim var_40C As Fields15
  Dim var_520 As Variant
  Dim var_668 As Fields15
  Dim var_278 As Variant
  Dim var_2F8 As Variant
  Dim var_3D8 As Variant
  Dim var_430 As Variant
  Dim var_4B0 As Variant
  Dim var_570 As Variant
  loc_13CE2C3: Set var_98 = var_9C(CInt(8))
  loc_13CE2C9: Call 0.Method_CmdUpdateJobs_Click0 ()
  loc_13CE2D1: var_A4 = "Job Schedule"
  loc_13CE2DA: Set var_A0 = var_9C
  loc_13CE2F2: If (Proc_6_27_EA61EC(var_A0) = 0) Then
  loc_13CE2FC:   Call Txt_GotFocus(CInt(8))
  loc_13CE301:   Exit Sub
  loc_13CE302: End If
  loc_13CE302: On Error Goto loc_13CEB1A
  loc_13CE314: var_BC = (var_A4).RowCount
  loc_13CE327: For var_C0 = 1 To CInt((CLng(var_BC) - 1)): var_94 = var_C0 'Integer
  loc_13CE34C:   var_110 = CVar(CStr(DGJobSchedule.DispID_41)) 'String
  loc_13CE352:   Proc_6_17_EAAE40(var_120, var_110, CVar(CLng(2)))
  loc_13CE365:   Set var_98 = var_9C(CInt(8))
  loc_13CE36B:   Call 0.Method_CmdUpdateJobs_Click0 (var_A4, CVar(CLng(var_94)))
  loc_13CE373:   1 = var_9C.Tag
  loc_13CE37B:   var_170 = CVar(var_A4) 'String
  loc_13CE381:   Proc_6_17_EAAE40(var_180)
  loc_13CE3B9:   unk_51FF67.Execute CStr("Select Job_Id,Schedule_Id From JobScheduledDetail Where JobName=" & var_120 & " And Schedule_Id=" & var_180), var_1B4, -1
  loc_13CE3C4:   Set var_90 = var_A0
  loc_13CE3EE:   var_1B8 = var_90.RecordCount
  loc_13CE3FC:   If (var_1B8 = 0) Then
  loc_13CE408:     unk_51FF67.BeginTrans var_1B8
  loc_13CE411:     var_92 = CByte(1) 'Byte
  loc_13CE41B:     var_E0 = 0
  loc_13CE438:     var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Job_Id,3,9) AS INT)),0)+1 AS MyCode From JobScheduledDetail WHERE SITE_CODE='" & MemVar_1F95070
  loc_13CE448:     unk_51FFE2.Execute var_A4 & "'", var_BC, -1
  loc_13CE450:     var_98 = var_98.Fields
  loc_13CE458:     var_E0 = var_9C.Item(var_9C)
  loc_13CE4A2:     var_BC = "000000000"
  loc_13CE4BB:     var_140 = (1 + Format(CStr(var_110), var_BC))
  loc_13CE4C0:     var_8C = CStr("Select Job_Id,Schedule_Id From JobScheduledDetail Where JobName=" & CVar(Proc_183_15_EAD490(MemVar_1F95070, 2, Format(CStr(var_110), var_BC))))
  loc_13CE4D9:     Proc_6_17_EAAE40(var_BC, var_8C, 1)
  loc_13CE503:     Proc_6_17_EAAE40(var_170, CVar(CStr(DGJobSchedule.DispID_41)), CVar(CLng(2)), CVar(CLng(var_94)))
  loc_13CE513:     Set var_98 = var_9C(CInt(&HA))
  loc_13CE519:     Call 0.Method_CmdUpdateJobs_Click0 (CVar(Proc_183_15_EAD490(MemVar_1F95070, 2, Format(CStr(var_110), var_BC))), var_A0.Value)
  loc_13CE528:     Proc_6_17_EAAE40(var_1D8, CVar(var_9C))
  loc_13CE560:     Proc_6_17_EAAE40(var_278, CVar(CVar(CLng(2)) & CStr(DGJobSchedule.DispID_41) & ">"), CVar(CLng(var_94)))
  loc_13CE595:     Proc_6_17_EAAE40(var_328, Trim(CVar(CStr(DGJobSchedule.DispID_41))), CVar(CLng(3)))
  loc_13CE5A8:     Set var_A0 = var_35C(CInt(8))
  loc_13CE5AE:     Call 0.Method_CmdUpdateJobs_Click0 (var_360, CVar(CLng(var_94)))
  loc_13CE5B6:     "<" = var_35C.Tag
  loc_13CE5C4:     Proc_6_17_EAAE40(var_380, CVar(var_360))
  loc_13CE5D4:     Set var_3B4 = var_3B8(CInt(9))
  loc_13CE5DA:     Call 0.Method_CmdUpdateJobs_Click0 (var_170)
  loc_13CE5E2:     var_3C8 = CVar(var_3B8) 'Address
  loc_13CE5E9:     Proc_6_17_EAAE40(var_3D8)
  loc_13CE5F9:     Set var_40C = var_410(CInt(&HB))
  loc_13CE5FF:     Call 0.Method_CmdUpdateJobs_Click0 (var_3C8)
  loc_13CE607:     var_420 = CVar(var_410) 'Address
  loc_13CE60E:     Proc_6_17_EAAE40(var_430)
  loc_13CE638:     Proc_6_17_EAAE40(var_4D0, CVar(CStr(DGJobSchedule.DispID_41)), CVar(CLng(4)))
  loc_13CE648:     Proc_6_17_EAAE40(var_520, MemVar_1F95070)
  loc_13CE658:     Proc_6_17_EAAE40(var_570, MemVar_1F950C8)
  loc_13CE668:     Proc_6_8_EB1974(var_5C0, CVar(Proc_6_14_EF402C(CVar(CLng(var_94)))))
  loc_13CE678:     Proc_6_17_EAAE40(var_610, MemVar_1F95078)
  loc_13CE68A:     var_E0 = "Insert Into JobScheduledDetail (Job_Id,JobName,Event,ScheduledJob,MobileNo,Schedule_Id,MsgHeader,MsgFooter,TemplateId,JobEnabled,Mark,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ("
  loc_13CE69B:     var_120 = var_E0 & var_BC & "," 
  loc_13CE6A2:     var_180 = var_120 & var_170 
  loc_13CE6CB:     var_2A8 = var_180 & "," & var_1D8 & "," & var_278 & "," 
  loc_13CE6FB:     var_408 = var_2A8 & var_328 & "," & var_380 & "," & var_3D8 & "," 
  loc_13CE70B:     var_460 = var_408 & var_430 & "," 
  loc_13CE722:     var_530 = var_460 & var_4D0 & ",0,'*'," & var_520 
  loc_13CE73B:     var_5A0 = var_530 & "," & var_570 & "," 
  loc_13CE769:     unk_51FF67.Execute CStr(var_5A0 & var_5C0 & ",'A'," & var_610 & ")"), var_664, -1
  loc_13CE7FB:     unk_51FF67.CommitTrans
  loc_13CE804:     var_92 = CByte(0) 'Byte
  loc_13CE80B:   Else
  loc_13CE814:     unk_51FF67.BeginTrans var_1B8
  loc_13CE81D:     var_92 = CByte(1) 'Byte
  loc_13CE846:     Proc_6_17_EAAE40(var_120, CVar(CStr(DGJobSchedule.DispID_41)), CVar(CLng(4)))
  loc_13CE856:     Set var_98 = var_9C(CInt(&HA))
  loc_13CE85C:     Call 0.Method_CmdUpdateJobs_Click0 (CVar(CLng(var_94)), var_668)
  loc_13CE86B:     Proc_6_17_EAAE40(var_180, CVar(var_9C))
  loc_13CE8A0:     Proc_6_17_EAAE40(var_258, Trim(CVar(CStr(DGJobSchedule.DispID_41))), CVar(CLng(3)))
  loc_13CE8B0:     Set var_A0 = var_35C(CInt(9))
  loc_13CE8B6:     Call 0.Method_CmdUpdateJobs_Click0 (CVar(CLng(var_94)))
  loc_13CE8C5:     Proc_6_17_EAAE40(var_2A8, CVar(var_35C))
  loc_13CE8D5:     Set var_3B4 = var_3B8(CInt(&HB))
  loc_13CE8DB:     Call 0.Method_CmdUpdateJobs_Click0 (var_420)
  loc_13CE8EA:     Proc_6_17_EAAE40(var_328)
  loc_13CE8FD:     Proc_6_17_EAAE40(var_380, "*")
  loc_13CE90D:     Proc_6_17_EAAE40(var_3C8, MemVar_1F95070)
  loc_13CE91D:     Proc_6_17_EAAE40(var_408, MemVar_1F950C8)
  loc_13CE927:     var_440 = CVar(Proc_6_14_EF402C(CVar(var_3B8))) 'String
  loc_13CE92D:     Proc_6_8_EB1974(var_460)
  loc_13CE93D:     Proc_6_17_EAAE40(var_4D0, MemVar_1F95078)
  loc_13CE968:     Proc_6_17_EAAE40(var_530, CVar(var_90.Fields.Item("Job_Id")))
  loc_13CE993:     Proc_6_17_EAAE40(var_5A0, CVar(var_90.Fields.Item("Schedule_Id")))
  loc_13CE9DD:     var_2F8 = "Update JobScheduledDetail Set TemplateId=" & var_120 & ",Event=" & var_180 & ",MobileNo=" & var_258 & ",MsgHeader=" & var_2A8 
  loc_13CEA2D:     var_4B0 = var_2F8 & ",MsgFooter=" & var_328 & ",Mark=" & var_380 & ",Site_Code=" & var_3C8 & ",U_Name=" & var_408 & ",U_EntDt=" & var_460 
  loc_13CEA61:     var_A4 = CStr(var_4B0 & ",U_AE='E',LogSite_Code=" & var_4D0 & " WHERE Job_Id=" & var_530 & " And Schedule_Id=" & var_5A0)
  loc_13CEA6B:     unk_51FF67.Execute var_A4, var_5C0, -1
  loc_13CEAEB:     unk_51FF67.CommitTrans
  loc_13CEAF4:     var_92 = CByte(0) 'Byte
  loc_13CEAF8:   End If
  loc_13CEAFB: Next var_C0 'Integer
  loc_13CEB02: Set var_AC = Nothing 
  loc_13CEB09: Call Proc_232_37_11B6F04(var_BC)
  loc_13CEB16: Set var_90 = Nothing
  loc_13CEB19: Exit Sub
  loc_13CEB1A: ' Referenced from: 13CE302
  loc_13CEB23: If (CInt(var_92) = 1) Then
  loc_13CEB2C:   unk_51FF67.RollbackTrans
  loc_13CEB31: End If
  loc_13CEB37: Call 0.Method_arg_50 (var_A4)
  loc_13CEB3F: var_360 = "Job Schedule Update"
  loc_13CEB4C: Proc_183_57_104B0BC(var_A4)
  loc_13CEB58: Exit Sub
End Sub

Public Sub Proc_232_33_11B8128(arg_C) '11B8128
  'Data Table: 51FF60
  Dim var_88 As Integer
  Dim var_8C As DataGrid
  Dim var_A0 As Long
  Dim var_B0 As DataGrid
  Dim var_F0 As Variant
  Dim var_A4 As TextBox
  Dim var_A8 As String
  Dim var_174 As Variant
  Dim var_124 As DataGrid
  Dim var_2C8 As Double
  Dim var_298 As Variant
  Dim unk_51FF67 As Connection15
  Dim var_2CC As Long
  loc_11B7D27: var_88 = arg_C
  loc_11B7D30: If (var_88 = 1) Then
  loc_11B7D3D:   (var_88).DeleteRowLabels , 
  loc_11B7D46:   var_A0 = CLng()
  loc_11B7D56:   If (var_A0 = CLng(2)) Then
  loc_11B7D63:     (var_A0).InsertRows , 
  loc_11B7D7B:     (CVar(CLng())).DeleteRowLabels , 
  loc_11B7D84:     var_F0 = CVar(CLng()) 'Long
  loc_11B7D96:     Set var_8C = var_A4(arg_C)
  loc_11B7D9C:     Call 0.Method_Proc_232_33_11B81280 (var_A8)
  loc_11B7DA4:     var_F0 = var_A4.Text
  loc_11B7DBA:     LateIdCallSt
  loc_11B7DE2:     ((CVar(var_A8))).InsertRowLabels , 
  loc_11B7DFC:     Set var_A4 = CVar(CLng())(CVar(CLng(0)))
  loc_11B7E28:     ((CDbl(Val(CStr(DGJobSchedule.DispID_41))) <> CDbl(0))).InsertRowLabels , 
  loc_11B7E42:     Set var_B0 = CVar(CLng())(CVar(CLng(1)))
  loc_11B7E53:     var_174 = CVar(CStr(DGJobSchedule.DispID_41)) 'String
  loc_11B7E90:     If CBool( And (Trim(var_174) <> vbNullString)) Then
  loc_11B7E9D:       ().InsertRowLabels , 
  loc_11B7EB7:       Set var_A4 = CVar(CLng())(CVar(CLng(2)))
  loc_11B7ED9:       Proc_6_17_EAAE40(var_174)
  loc_11B7EE8:       (Trim(CVar(CStr(DGJobSchedule.DispID_41)))).InsertRows , 
  loc_11B7F02:       Set var_B0 = CVar(CLng())(CVar(CLng(1)))
  loc_11B7F1E:       (DGJobSchedule.DispID_41).InsertRows , 
  loc_11B7F38:       Set var_268 = CVar(CLng())(CVar(CLng(0)))
  loc_11B7F49:       var_A8 = CStr(DGJobSchedule.DispID_41)
  loc_11B7F51:       var_2C8 = Val(var_A8)
  loc_11B7F91:       var_298 = "UPDATE EmailSMSForward SET MobileNo=" & var_174 & " Where Type='" & CVar(CStr(var_1D4)) & "' And Id=" & CVar(var_2C8) 
  loc_11B7F9F:       unk_51FF67.Execute CStr(var_298), var_2BC, -1
  loc_11B7FDF:     End If
  loc_11B7FDF:   End If
  loc_11B7FE2: Else
  loc_11B7FE8:   If (var_88 = 2) Then
  loc_11B7FF5:     var_2C8(var_2C0).DeleteRowLabels , 
  loc_11B7FFE:     var_2CC = CLng()
  loc_11B800E:     If (var_2CC = CLng(3)) Then
  loc_11B801B:       (var_2CC).InsertRows , 
  loc_11B8033:       (CVar(CLng())).DeleteRowLabels , 
  loc_11B803C:       var_F0 = CVar(CLng()) 'Long
  loc_11B804E:       Set var_8C = var_A4(arg_C)
  loc_11B8054:       Call 0.Method_Proc_232_33_11B81280 (var_A8)
  loc_11B805C:       var_F0 = var_A4.Text
  loc_11B806C:       Set var_124 = (CVar(var_A8))
  loc_11B8072:       LateIdCallSt
  loc_11B8093:     Else
  loc_11B809A:       If (var_2CC = CLng(4)) Then
  loc_11B80A7:         (var_124).InsertRows , 
  loc_11B80BF:         (CVar(CLng())).DeleteRowLabels , 
  loc_11B80C8:         var_F0 = CVar(CLng()) 'Long
  loc_11B80DA:         Set var_8C = var_A4(arg_C)
  loc_11B80E0:         Call 0.Method_Proc_232_33_11B81280 (var_A8)
  loc_11B80E8:         var_F0 = var_A4.Text
  loc_11B80F8:         Set var_124 = (CVar(var_A8))
  loc_11B80FE:         LateIdCallSt
  loc_11B811C:       End If
  loc_11B811C:     End If
  loc_11B811C:   End If
  loc_11B811C: End If
  loc_11B8121: Proc_232_33_11B8128 = &HFF
End Sub

Public Sub Proc_232_34_FB0380
  'Data Table: 51FF60
  Dim var_98 As Variant
  Dim var_88 As DataGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_FB01DB: var_98 = 3
  loc_FB01F8: ().RowCount = 2
  loc_FB01FD: var_98 = 0
  loc_FB0209: var_B8 = CVar(CLng(0)) 'Long
  loc_FB020E: var_D8 = "ID"
  loc_FB0217: LateIdCallSt
  loc_FB0222: var_98 = CVar(CLng(0)) 'Long
  loc_FB022D: var_B8 = CVar(CInt(7)) 'Integer
  loc_FB0234: LateIdCallSt
  loc_FB023F: var_98 = CVar(CLng(0)) 'Long
  loc_FB024A: var_B8 = CVar(CInt(7)) 'Integer
  loc_FB0251: LateIdCallSt
  loc_FB025C: var_98 = CVar(CLng(0)) 'Long
  loc_FB0261: var_B8 = &H190
  loc_FB026D: LateIdCallSt
  loc_FB0275: var_98 = 0
  loc_FB0281: var_B8 = CVar(CLng(1)) 'Long
  loc_FB0286: var_D8 = "Message Type"
  loc_FB028F: LateIdCallSt
  loc_FB029A: var_98 = CVar(CLng(1)) 'Long
  loc_FB02A5: var_B8 = CVar(CInt(1)) 'Integer
  loc_FB02AC: LateIdCallSt
  loc_FB02B7: var_98 = CVar(CLng(1)) 'Long
  loc_FB02C2: var_B8 = CVar(CInt(1)) 'Integer
  loc_FB02C9: LateIdCallSt
  loc_FB02D4: var_98 = CVar(CLng(1)) 'Long
  loc_FB02D9: var_B8 = &H7D0
  loc_FB02E5: LateIdCallSt
  loc_FB02ED: var_98 = 0
  loc_FB02F9: var_B8 = CVar(CLng(2)) 'Long
  loc_FB02FE: var_D8 = "Mobile No.(s)"
  loc_FB0307: LateIdCallSt
  loc_FB0312: var_98 = CVar(CLng(2)) 'Long
  loc_FB031D: var_B8 = CVar(CInt(1)) 'Integer
  loc_FB0324: LateIdCallSt
  loc_FB032F: var_98 = CVar(CLng(2)) 'Long
  loc_FB033A: var_B8 = CVar(CInt(4)) 'Integer
  loc_FB0341: LateIdCallSt
  loc_FB034C: var_98 = CVar(CLng(2)) 'Long
  loc_FB0351: var_B8 = &H1C84
  loc_FB035D: LateIdCallSt
  loc_FB0365: var_98 = 1
  loc_FB0378: Set var_88 = Nothing 
  loc_FB037C: Exit Sub
End Sub

Public Sub Proc_232_35_12EABC8
  'Data Table: 51FF60
  Dim var_A0 As String
  Dim unk_51FF67 As Connection15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_98 As Recordset15
  Dim var_E0 As DataGrid
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_164 As TextBox
  Dim var_1758 As Variant
  loc_12EA516: Call Proc_232_34_FB0380()
  loc_12EA536: var_A0 = "Select Id,Type,MobileNo,TxtMsg From EmailSMSForward S Where S.LogSite_Code='" & MemVar_1F95078 & "' And (FlagType In ('FOM','BANQ') or Departcode='"
  loc_12EA54D: unk_51FF67.Execute var_A0 & MemVar_1F95078 & "RS') ORDER BY S.Id", var_C8, -1
  loc_12EA558: Set var_98 = var_CC
  loc_12EA57F: var_CC(2).RowCount = 
  loc_12EA58B: Set var_E0 = ()
  loc_12EA58E: ' Referenced from: 12EABAE
  loc_12EA59D: If Not(var_98.EOF) Then
  loc_12EA5B2:   var_B8 = CVar((CLng(var_E0.RowCount) - 1)) 'Long
  loc_12EA5C5:   var_E0.InsertRows DGJobSchedule.DispID_A, 2
  loc_12EA5CE:   var_DC = CVar(CLng()) 'Long
  loc_12EA601:   Proc_6_39_E7D3A0(var_F8, CVar(var_98.Fields.Item("ID")))
  loc_12EA611:   LateIdCallSt
  loc_12EA633:   var_DC = CVar(CLng(CVar(CLng(0)))) 'Long
  loc_12EA66F:   LateIdCallSt
  loc_12EA686:   r_E0, CVar(CStr(var_F8)) var_E0, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Type")), CVar(CLng(1))))
  loc_12EA68F:   var_DC = CVar(CLng(var_DC)) 'Long
  loc_12EA6CB:   LateIdCallSt
  loc_12EA707:   var_15C = Proc_6_38_E69628(CVar(var_98.Fields.Item("Type")), var_E0, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("MobileNo")), CVar(CLng(2)))))
  loc_12EA718:   If (var_15C = "Check In") Then
  loc_12EA751:     Set var_160 = var_164(CInt(&HE))
  loc_12EA757:     Call 0.Method_Proc_232_35_12EABC80 (Proc_6_38_E69628(CVar(var_98.Fields.Item("TxtMsg")), var_DC))
  loc_12EA75F:     var_164.Text = var_DC
  loc_12EA7A9:     Set var_160 = var_164(CInt(&HE))
  loc_12EA7AF:     Call 0.Method_Proc_232_35_12EABC80 (Proc_6_38_E69628(CVar(var_98.Fields.Item("Type"))))
  loc_12EA7B7:     var_164.Tag = 
  loc_12EA7CE:   Else
  loc_12EA7D6:     If (var_15C = "Check Out") Then
  loc_12EA80F:       Set var_160 = var_164(CInt(&HF))
  loc_12EA815:       Call 0.Method_Proc_232_35_12EABC80 (Proc_6_38_E69628(CVar(var_98.Fields.Item("TxtMsg"))))
  loc_12EA81D:       var_164.Text = 
  loc_12EA867:       Set var_160 = var_164(CInt(&HF))
  loc_12EA86D:       Call 0.Method_Proc_232_35_12EABC80 (Proc_6_38_E69628(CVar(var_98.Fields.Item("Type"))))
  loc_12EA875:       var_164.Tag = 
  loc_12EA88C:     Else
  loc_12EA894:       If (var_15C = "Reservation") Then
  loc_12EA8CD:         Set var_160 = var_164(CInt(&HC))
  loc_12EA8D3:         Call 0.Method_Proc_232_35_12EABC80 (Proc_6_38_E69628(CVar(var_98.Fields.Item("TxtMsg"))))
  loc_12EA8DB:         var_164.Text = 
  loc_12EA925:         Set var_160 = var_164(CInt(&HC))
  loc_12EA92B:         Call 0.Method_Proc_232_35_12EABC80 (Proc_6_38_E69628(CVar(var_98.Fields.Item("Type"))))
  loc_12EA933:         var_164.Tag = 
  loc_12EA94A:       Else
  loc_12EA952:         If (var_15C = "Reservation Cancel") Then
  loc_12EA98B:           Set var_160 = var_164(CInt(&HD))
  loc_12EA991:           Call 0.Method_Proc_232_35_12EABC80 (Proc_6_38_E69628(CVar(var_98.Fields.Item("TxtMsg"))))
  loc_12EA999:           var_164.Text = 
  loc_12EA9E3:           Set var_160 = var_164(CInt(&HD))
  loc_12EA9E9:           Call 0.Method_Proc_232_35_12EABC80 (Proc_6_38_E69628(CVar(var_98.Fields.Item("Type"))))
  loc_12EA9F1:           var_164.Tag = 
  loc_12EAA08:         Else
  loc_12EAA10:           If (var_15C = "Booking") Then
  loc_12EAA49:             Set var_160 = var_164(CInt(&H13))
  loc_12EAA4F:             Call 0.Method_Proc_232_35_12EABC80 (Proc_6_38_E69628(CVar(var_98.Fields.Item("TxtMsg"))))
  loc_12EAA57:             var_164.Text = 
  loc_12EAAA1:             Set var_160 = var_164(CInt(&H13))
  loc_12EAAA7:             Call 0.Method_Proc_232_35_12EABC80 (Proc_6_38_E69628(CVar(var_98.Fields.Item("Type"))))
  loc_12EAAAF:             var_164.Tag = 
  loc_12EAAC6:           Else
  loc_12EAACE:             If (var_15C = "Booking Cancel") Then
  loc_12EAB07:               Set var_160 = var_164(CInt(&H14))
  loc_12EAB0D:               Call 0.Method_Proc_232_35_12EABC80 (Proc_6_38_E69628(CVar(var_98.Fields.Item("TxtMsg"))))
  loc_12EAB15:               var_164.Text = 
  loc_12EAB5F:               Set var_160 = var_164(CInt(&H14))
  loc_12EAB65:               Call 0.Method_Proc_232_35_12EABC80 (Proc_6_38_E69628(CVar(var_98.Fields.Item("Type"))))
  loc_12EAB6D:               var_164.Tag = 
  loc_12EAB81:             End If
  loc_12EAB81:           End If
  loc_12EAB81:         End If
  loc_12EAB81:       End If
  loc_12EAB81:     End If
  loc_12EAB81:   End If
  loc_12EAB84:   var_98.MoveNext
  loc_12EAB9A:   If (var_98.EOF = 0) Then
  loc_12EAB9D:     var_B8 = vbNullString
  loc_12EABAE:   End If
  loc_12EABAE:   GoTo loc_12EA58E
  loc_12EABB1: End If
  loc_12EABB3: Set var_E0 = Nothing 
  loc_12EABBC: Set var_98 = Nothing
  loc_12EABBF: Proc_232_35_12EABC8 = DGJobSchedule.DispID_10000
  loc_12EABC5: var_1758 = var_B8 
End Sub

Public Sub Proc_232_36_110FB44
  'Data Table: 51FF60
  Dim var_98 As Variant
  Dim var_88 As DataGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_F8 As Variant
  loc_110F7E8: Set var_88 = ()
  loc_110F7EB: var_98 = 5
  loc_110F808: var_88.RowCount = 2
  loc_110F80D: var_98 = 0
  loc_110F819: var_B8 = CVar(CLng(0)) 'Long
  loc_110F81E: var_D8 = "ID"
  loc_110F827: LateIdCallSt
  loc_110F832: var_98 = CVar(CLng(0)) 'Long
  loc_110F83D: var_B8 = CVar(CInt(7)) 'Integer
  loc_110F844: LateIdCallSt
  loc_110F84F: var_98 = CVar(CLng(0)) 'Long
  loc_110F85A: var_B8 = CVar(CInt(7)) 'Integer
  loc_110F861: LateIdCallSt
  loc_110F86C: var_98 = CVar(CLng(0)) 'Long
  loc_110F871: var_B8 = &H190
  loc_110F87D: LateIdCallSt
  loc_110F885: var_98 = 0
  loc_110F891: var_B8 = CVar(CLng(1)) 'Long
  loc_110F896: var_D8 = "ID"
  loc_110F89F: LateIdCallSt
  loc_110F8AA: var_98 = CVar(CLng(1)) 'Long
  loc_110F8B5: var_B8 = CVar(CInt(7)) 'Integer
  loc_110F8BC: LateIdCallSt
  loc_110F8C7: var_98 = CVar(CLng(1)) 'Long
  loc_110F8D2: var_B8 = CVar(CInt(7)) 'Integer
  loc_110F8D9: LateIdCallSt
  loc_110F8E4: var_98 = CVar(CLng(1)) 'Long
  loc_110F8E9: var_B8 = 0
  loc_110F8F5: LateIdCallSt
  loc_110F8FD: var_98 = 0
  loc_110F909: var_B8 = CVar(CLng(2)) 'Long
  loc_110F90E: var_D8 = "Message Type"
  loc_110F917: LateIdCallSt
  loc_110F922: var_98 = CVar(CLng(2)) 'Long
  loc_110F92D: var_B8 = CVar(CInt(1)) 'Integer
  loc_110F934: LateIdCallSt
  loc_110F93F: var_98 = CVar(CLng(2)) 'Long
  loc_110F94A: var_B8 = CVar(CInt(1)) 'Integer
  loc_110F951: LateIdCallSt
  loc_110F95C: var_98 = CVar(CLng(2)) 'Long
  loc_110F961: var_B8 = &H9C4
  loc_110F96D: LateIdCallSt
  loc_110F975: var_98 = 0
  loc_110F981: var_B8 = CVar(CLng(3)) 'Long
  loc_110F986: var_D8 = "Mobile No.(s)"
  loc_110F98F: LateIdCallSt
  loc_110F99A: var_98 = CVar(CLng(3)) 'Long
  loc_110F9A5: var_B8 = CVar(CInt(1)) 'Integer
  loc_110F9AC: LateIdCallSt
  loc_110F9B7: var_98 = CVar(CLng(3)) 'Long
  loc_110F9C2: var_B8 = CVar(CInt(4)) 'Integer
  loc_110F9C9: LateIdCallSt
  loc_110F9D4: var_98 = CVar(CLng(3)) 'Long
  loc_110F9D9: var_B8 = &HBB8
  loc_110F9E5: LateIdCallSt
  loc_110F9ED: var_98 = 0
  loc_110F9F9: var_B8 = CVar(CLng(4)) 'Long
  loc_110F9FE: var_D8 = "Template_Id"
  loc_110FA07: LateIdCallSt
  loc_110FA12: var_98 = CVar(CLng(4)) 'Long
  loc_110FA1D: var_B8 = CVar(CInt(1)) 'Integer
  loc_110FA24: LateIdCallSt
  loc_110FA2F: var_98 = CVar(CLng(4)) 'Long
  loc_110FA3A: var_B8 = CVar(CInt(4)) 'Integer
  loc_110FA41: LateIdCallSt
  loc_110FA4C: var_98 = CVar(CLng(4)) 'Long
  loc_110FA51: var_B8 = &HED8
  loc_110FA5D: LateIdCallSt
  loc_110FA71: var_88.RowCount = 1
  loc_110FA76: var_98 = vbNullString
  loc_110FA87: var_98 = 1
  loc_110FA93: var_B8 = CVar(CLng(0)) 'Long
  loc_110FA9C: var_F8 = CVar(CStr(1)) 'String
  loc_110FAA3: LateIdCallSt
  loc_110FAAE: var_98 = 1
  loc_110FABA: var_B8 = CVar(CLng(2)) 'Long
  loc_110FABF: var_D8 = "FOM Sale&Collection"
  loc_110FAC8: LateIdCallSt
  loc_110FAD0: var_98 = vbNullString
  loc_110FAE1: var_98 = 2
  loc_110FAED: var_B8 = CVar(CLng(0)) 'Long
  loc_110FAF6: var_F8 = CVar(CStr(2)) 'String
  loc_110FAFD: LateIdCallSt
  loc_110FB08: var_98 = 2
  loc_110FB14: var_B8 = CVar(CLng(2)) 'Long
  loc_110FB19: var_D8 = "POS&BANQ Sale&Collection"
  loc_110FB22: LateIdCallSt
  loc_110FB2A: var_98 = 1
  loc_110FB3D: Set var_88 = Nothing 
  loc_110FB41: Exit Sub
End Sub

Public Sub Proc_232_37_11B6F04
  'Data Table: 51FF60
  Dim var_A0 As String
  Dim var_A8 As Variant
  Dim unk_51FF67 As Connection15
  Dim var_98 As Recordset15
  Dim var_A4 As Variant
  Dim var_13C As TextBox
  Dim var_CC As Variant
  Dim var_AC As String
  Dim var_120 As Variant
  loc_11B6AE2: Call Proc_232_36_110FB44()
  loc_11B6AFB: var_A0 = "Select Job_Id,JobName,Event,MobileNo,MsgHeader,MsgFooter,TemplateId From JobScheduledDetail S Where S.LogSite_Code='" & MemVar_1F95078
  loc_11B6B13: Set var_A4 = var_A8(CInt(8))
  loc_11B6B19: Call 0.Method_Proc_232_37_11B6F040 (var_AC, CVar(var_A0 & "' And S.Schedule_Id="), var_130)
  loc_11B6B21: -1 = var_A8.Tag
  loc_11B6B2F: Proc_6_17_EAAE40(var_CC, CVar(var_AC))
  loc_11B6B4E: unk_51FF67.Execute CStr(var_134 & var_CC & " ORDER BY S.Job_Id"), , 
  loc_11B6B59: Set var_98 = var_134
  loc_11B6B8F: If (var_98.RecordCount > 0) Then
  loc_11B6BC8:   Set var_134 = var_13C(CInt(9))
  loc_11B6BCE:   Call 0.Method_Proc_232_37_11B6F040 (Proc_6_38_E69628(CVar(var_98.Fields.Item("MsgHeader"))))
  loc_11B6BD6:   var_13C.Text = 
  loc_11B6C20:   Set var_134 = var_13C(CInt(&HB))
  loc_11B6C26:   Call 0.Method_Proc_232_37_11B6F040 (Proc_6_38_E69628(CVar(var_98.Fields.Item("MsgFooter"))))
  loc_11B6C2E:   var_13C.Text = 
  loc_11B6C78:   Set var_134 = var_13C(CInt(&HA))
  loc_11B6C7E:   Call 0.Method_Proc_232_37_11B6F040 (Proc_6_38_E69628(CVar(var_98.Fields.Item("Event"))))
  loc_11B6C86:   var_13C.Text = 
  loc_11B6C9A:   ' Referenced from: 11B6E75
  loc_11B6CA9:   If Not(var_98.EOF) Then
  loc_11B6CD1:     For var_142 =  To CInt((CLng(1(var_9A).RowCount) - 1)):  = var_142 'Integer
  loc_11B6CEC:       Set var_A4 = CVar(CLng(var_9A))(CVar(CLng(2)))
  loc_11B6D1F:       var_CC = CVar(var_98.Fields.Item("JobName")) 'Address
  loc_11B6D42:       If (CStr(DGJobSchedule.DispID_41) = Proc_6_38_E69628(var_CC)) Then
  loc_11B6D49:         var_120 = CVar(CLng(var_9A)) 'Long
  loc_11B6D7C:         Proc_6_39_E7D3A0(var_CC, CVar(var_98.Fields.Item("Job_Id")))
  loc_11B6D8D:         Set var_134 = CVar(CLng(1))(CVar(CStr(var_CC)))
  loc_11B6D93:         LateIdCallSt
  loc_11B6DEC:         Set var_134 = var_134(CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("MobileNo")), CVar(CLng(3)), CVar(CLng(var_9A)))))
  loc_11B6DF2:         LateIdCallSt
  loc_11B6E30:         var_A8 = var_98.Fields.Item("TemplateId")
  loc_11B6E49:         Set var_134 = var_134(CVar(Proc_6_38_E69628(CVar(var_A8), CVar(CLng(4)), CVar(CLng(var_9A)))))
  loc_11B6E4F:         LateIdCallSt
  loc_11B6E65:       End If
  loc_11B6E68:     Next var_142 'Integer
  loc_11B6E70:     var_98.MoveNext
  loc_11B6E75:     GoTo loc_11B6C9A
  loc_11B6E78:   End If
  loc_11B6E7B: Else
  loc_11B6E89:   Set var_A4 = var_A8(CInt(9))
  loc_11B6E8F:   Call 0.Method_Proc_232_37_11B6F040 (vbNullString)
  loc_11B6E97:   var_A8.Text = 
  loc_11B6EB1:   Set var_A4 = var_A8(CInt(&HB))
  loc_11B6EB7:   Call 0.Method_Proc_232_37_11B6F040 (vbNullString)
  loc_11B6EBF:   var_A8.Text = 
  loc_11B6ED9:   Set var_A4 = var_A8(CInt(&HA))
  loc_11B6EDF:   Call 0.Method_Proc_232_37_11B6F040 (vbNullString)
  loc_11B6EE7:   var_A8.Text = 
  loc_11B6EF3: End If
  loc_11B6EF8: Set var_98 = Nothing
  loc_11B6EFB: Proc_232_37_11B6F04 = 
End Sub

Public Sub Proc_232_38_DFCE40
  'Data Table: 51FF60
  loc_DFCE3C: Exit Sub
End Sub

Public Sub Proc_232_39_DFC78C
  'Data Table: 51FF60
  loc_DFC788: Exit Sub
End Sub

Public Sub Proc_232_40_134B6C4
  'Data Table: 51FF60
  Dim unk_51FF67 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Fields15
  Dim var_BC As Variant
  Dim var_C4 As TextBox
  Dim var_B4 As Variant
  Dim var_C0 As Fields15
  Dim var_144 As String
  Dim var_140 As TextBox
  loc_134AEDC: On Error Goto loc_134B6BC
  loc_134AEF9: If (Me.Recordset15.RecordCount > 0) Then
  loc_134AF12:   unk_51FF67.Execute "Select Top 1 JS.Schedule_Id,JS.ScheduleName From JobScheduledDetail JD Inner Join JobSchedule JS On JD.Schedule_Id=JS.Schedule_Id Order By JS.ScheduleName", var_B4, -1
  loc_134AF1D:   Set var_88 = var_B8
  loc_134AF3A:   If (var_88.RecordCount > 0) Then
  loc_134AF4F:     var_B8 = var_88.Fields
  loc_134AF76:     Set var_C0 = var_C4(CInt(8))
  loc_134AF7C:     Call 0.Method_Proc_232_40_134B6C40 (CStr(var_B8.Item("ScheduleName").Value))
  loc_134AF84:     var_C4.Text = var_B8
  loc_134AFB4:     var_BC = var_88.Fields.Item("Schedule_Id")
  loc_134AFBC:     var_B4 = var_BC.Value
  loc_134AFD3:     Set var_C0 = var_C4(CInt(8))
  loc_134AFD9:     Call 0.Method_Proc_232_40_134B6C40 (CStr(var_B4))
  loc_134AFE1:     var_C4.Tag = 
  loc_134AFFA:   Else
  loc_134B008:     Set var_B8 = var_BC(CInt(8))
  loc_134B00E:     Call 0.Method_Proc_232_40_134B6C40 (vbNullString)
  loc_134B016:     var_BC.Text = 
  loc_134B030:     Set var_B8 = var_BC(CInt(8))
  loc_134B036:     Call 0.Method_Proc_232_40_134B6C40 (vbNullString)
  loc_134B03E:     var_BC.Tag = 
  loc_134B04A:   End If
  loc_134B04D:   Call Proc_232_37_11B6F04(var_B4)
  loc_134B091:   Set var_C0 = var_C4(CInt(0))
  loc_134B097:   Call 0.Method_Proc_232_40_134B6C40 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CheckInMsg"))))
  loc_134B09F:   var_C4.Text = 
  loc_134B0EF:   Set var_C0 = var_C4(CInt(1))
  loc_134B0F5:   Call 0.Method_Proc_232_40_134B6C40 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CheckOutMsg"))))
  loc_134B0FD:   var_C4.Text = 
  loc_134B14D:   Set var_C0 = var_C4(CInt(3))
  loc_134B153:   Call 0.Method_Proc_232_40_134B6C40 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ReservationMsg"))))
  loc_134B15B:   var_C4.Text = 
  loc_134B1AB:   Set var_C0 = var_C4(CInt(5))
  loc_134B1B1:   Call 0.Method_Proc_232_40_134B6C40 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ReservationCancelMsg"))))
  loc_134B1B9:   var_C4.Text = 
  loc_134B209:   Set var_C0 = var_C4(CInt(&H11))
  loc_134B20F:   Call 0.Method_Proc_232_40_134B6C40 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BanqBookingMsg"))))
  loc_134B217:   var_C4.Text = 
  loc_134B267:   Set var_C0 = var_C4(CInt(&H12))
  loc_134B26D:   Call 0.Method_Proc_232_40_134B6C40 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BanqBookingCancelMsg"))))
  loc_134B275:   var_C4.Text = 
  loc_134B2C5:   Set var_C0 = var_C4(CInt(6))
  loc_134B2CB:   Call 0.Method_Proc_232_40_134B6C40 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("OutStandingMsg"))))
  loc_134B2D3:   var_C4.Text = 
  loc_134B335:   var_C4 = Me.Recordset15.Fields.Item("SendingMessageText")
  loc_134B371:   var_144 = CStr(IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("SendingMessageText"))) = vbNullString), "Semi", Trim(CVar(var_C4))))
  loc_134B380:   Set var_13C = var_140(CInt(4))
  loc_134B386:   Call 0.Method_Proc_232_40_134B6C40 (var_144)
  loc_134B38E:   var_140.Text = 
  loc_134B3F2:   Set var_C0 = var_C4(CInt(2))
  loc_134B3F8:   Call 0.Method_Proc_232_40_134B6C40 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CashReceiptMsg"))))
  loc_134B400:   var_C4.Text = 
  loc_134B450:   Set var_C0 = var_C4(CInt(&H10))
  loc_134B456:   Call 0.Method_Proc_232_40_134B6C40 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BankReceiptMsg"))))
  loc_134B45E:   var_C4.Text = 
  loc_134B4AE:   Set var_C0 = var_C4(CInt(7))
  loc_134B4B4:   Call 0.Method_Proc_232_40_134B6C40 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MemberBillMsg"))))
  loc_134B4BC:   var_C4.Text = 
  loc_134B50C:   Set var_C0 = var_C4(CInt(&H15))
  loc_134B512:   Call 0.Method_Proc_232_40_134B6C40 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("GuestRegistrationMsg"))))
  loc_134B51A:   var_C4.Text = 
  loc_134B56A:   Set var_C0 = var_C4(CInt(&H16))
  loc_134B570:   Call 0.Method_Proc_232_40_134B6C40 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RewardPointMsg"))))
  loc_134B578:   var_C4.Text = 
  loc_134B5C8:   Set var_C0 = var_C4(CInt(&H17))
  loc_134B5CE:   Call 0.Method_Proc_232_40_134B6C40 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RedeemPointMsg"))))
  loc_134B5D6:   var_C4.Text = 
  loc_134B626:   Set var_C0 = var_C4(CInt(&H1A))
  loc_134B62C:   Call 0.Method_Proc_232_40_134B6C40 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("POSBillMsg"))))
  loc_134B634:   var_C4.Text = 
  loc_134B684:   Set var_C0 = var_C4(CInt(&H1C))
  loc_134B68A:   Call 0.Method_Proc_232_40_134B6C40 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("AssignDeliveryMsg"))))
  loc_134B692:   var_C4.Text = 
  loc_134B6AB:   Set var_88 = Nothing
  loc_134B6B3:   Set var_90 = Nothing
  loc_134B6B6: End If
  loc_134B6B6: Call Proc_232_41_EB77D4()
  loc_134B6BB: Exit Sub
  loc_134B6BC: ' Referenced from: 134AEDC
  loc_134B6BC: Proc_6_60_E63754()
  loc_134B6C1: Exit Sub
End Sub

Public Sub Proc_232_41_EB77D4
  'Data Table: 51FF60
  loc_EB774F: If (Me.FrmList.Visible = &HFF) Then
  loc_EB775E:   Me.FrmList.Visible = False
  loc_EB7766: End If
  loc_EB7782: If (CBool(Me.DGJobSchedule.Visible) = &HFF) Then
  loc_EB7794:   Me.DGJobSchedule.Visible = False
  loc_EB779C: End If
  loc_EB77B8: If (CBool(().Visible) = &HFF) Then
  loc_EB77CA:   (False).Visible = 
  loc_EB77D2: End If
  loc_EB77D2: Exit Sub
End Sub

Public Sub Proc_232_42_EFEAEC
  'Data Table: 51FF60
  Dim var_DC As Integer
  Dim var_164 As ColumnHeaders
  Dim var_168 As ColumnHeader
  loc_EFEA6A: var_DC(1).ColumnLabelCount.Add "<Message Label>", var_11C, var_13C, var_15C, var_164, 
  loc_EFEA75: Set var_88 = var_164
  loc_EFEAC9: CDbl(().Width) = var_168(1).ColumnLabelCount.ControlDefault
  loc_EFEAD1: var_168.Width = 
  loc_EFEAEA: Exit Sub
End Sub

Public Sub Proc_232_43_1094DD0(arg_C) '1094DD0
  'Data Table: 51FF60
  Dim var_8C As String
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim unk_51FF67 As Connection15
  Dim var_88 As Recordset15
  Dim var_F4 As Fields15
  Dim var_118 As TextBox
  loc_1094B48: var_8C = "Select IsNull(Type,'') Type,IsNull(GuestMsg,'') GuestMsg,IsNull(TxtMsg,'') TxtMsg From EmailSMSForward Where FlagType='POS' And LogSite_Code='" & MemVar_1F95078
  loc_1094B4F: var_BC = CVar(var_8C & "' And DepartCode=") 'String
  loc_1094B5D: Proc_6_17_EAAE40(var_AC, arg_C, var_BC)
  loc_1094B65: var_CC = var_F0 & var_AC 
  loc_1094B73: unk_51FF67.Execute CStr(var_CC), -1, var_F4
  loc_1094B7E: Set var_88 = var_F4
  loc_1094BAA: If (var_88.RecordCount > 0) Then
  loc_1094BAD:   ' Referenced from: 1094DA0
  loc_1094BBC:   If Not(var_88.EOF) Then
  loc_1094BE9:     var_110 = var_88.Fields.Item("Type").Value 'Variant
  loc_1094BFF:     If (var_110 = "KOT Message") Then
  loc_1094C3B:       Set var_114 = var_118(CInt(&H19))
  loc_1094C41:       Call 0.Method_Proc_232_43_1094DD00 (CStr(var_88.Fields.Item("TxtMsg").Value))
  loc_1094C49:       var_118.Text = 
  loc_1094C62:     Else
  loc_1094C6D:       If (var_110 = "Outlet Bill") Then
  loc_1094CA9:         Set var_114 = var_118(CInt(&H1A))
  loc_1094CAF:         Call 0.Method_Proc_232_43_1094DD00 (CStr(var_88.Fields.Item("GuestMsg").Value))
  loc_1094CB7:         var_118.Text = 
  loc_1094D06:         Set var_114 = var_118(CInt(&H1B))
  loc_1094D0C:         Call 0.Method_Proc_232_43_1094DD00 (CStr(var_88.Fields.Item("TxtMsg").Value))
  loc_1094D14:         var_118.Text = 
  loc_1094D2D:       Else
  loc_1094D38:         If (var_110 = "Assign Delivery") Then
  loc_1094D74:           Set var_114 = var_118(CInt(&H1C))
  loc_1094D7A:           Call 0.Method_Proc_232_43_1094DD00 (CStr(var_88.Fields.Item("GuestMsg").Value))
  loc_1094D82:           var_118.Text = 
  loc_1094D98:         End If
  loc_1094D98:       End If
  loc_1094D98:     End If
  loc_1094D9B:     var_88.MoveNext
  loc_1094DA0:     GoTo loc_1094BAD
  loc_1094DA3:   End If
  loc_1094DA6: Else
  loc_1094DBF:   MsgBox("No Records Found.", &H40, var_BC, var_CC, var_F0)
  loc_1094DCF: End If
  loc_1094DCF: Exit Sub
End Sub
