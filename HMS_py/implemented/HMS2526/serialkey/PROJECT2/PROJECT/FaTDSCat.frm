VERSION 5.00
Begin VB.Form FaTDSCat
  Caption = "T.D.S.Category Entry"
  BackColor = &HFFC0C0&
  ForeColor = &H0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaTDSCat.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8880
  ClientHeight = 4455
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 450
    TabIndex = 10
  End
End

Attribute VB_Name = "FaTDSCat"


Private Sub TopCtrl1_UnknownEvent_A 'EB6628
  'Data Table: 43E818
  Dim var_94 As TextBox
  loc_EB6598: On Error Goto loc_EB65FF
  loc_EB659B: Call Proc_205_27_E78BCC()
  loc_EB65C0: var_88 = "ADD"
  loc_EB65CE: Call Proc_205_26_E78B34(Proc_5_1_100EC1C(var_88, Me), global_56)
  loc_EB65E4: Set var_8C = var_94(CInt(0))
  loc_EB65EA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CByte(1))
  loc_EB65F2: var_94.SetFocus
  loc_EB65FE: Exit Sub
  loc_EB65FF: ' Referenced from: EB6598
  loc_EB6605: Call 0.Method_arg_50 (var_88)
  loc_EB660D: var_9C = "TopCtrl1_eAdd"
  loc_EB661A: Proc_183_57_104B0BC(var_88)
  loc_EB6626: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EF5AC0
  'Data Table: 43E818
  loc_EF5A00: On Error Goto loc_EF5A96
  loc_EF5A3A: If (MsgBox("Are You Sure To Cancel Changes", 4, "Confirmation", var_E4, var_104) = 6) Then
  loc_EF5A54:   Set var_10C = Me
  loc_EF5A5D:   var_108 = "INI"
  loc_EF5A6B:   Call Proc_205_26_E78B34(Proc_5_1_100EC1C(var_108, var_10C), global_56)
  loc_EF5A76:   Call Proc_205_28_11DCD14(CByte(0))
  loc_EF5A7E: Else
  loc_EF5A84:   Call 0.Method_arg_1E8 (var_10C)
  loc_EF5A8C:   Call var_10C.SetFocus
  loc_EF5A95: End If
  loc_EF5A95: Exit Sub
  loc_EF5A96: ' Referenced from: EF5A00
  loc_EF5A9C: Call 0.Method_arg_50 (var_108)
  loc_EF5AA4: var_118 = "TopCtrl1_eCancel"
  loc_EF5AB1: Proc_183_57_104B0BC(var_108)
  loc_EF5ABD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'FEC124
  'Data Table: 43E818
  Dim Me As Recordset15
  Dim unk_43E829 As Connection15
  Dim var_EC As Variant
  Dim var_118 As String
  loc_FEBF54: var_86 = CByte(0) 'Byte
  loc_FEBF58: On Error Goto loc_FEC0E4
  loc_FEBF64: var_8C = Me.RecordCount
  loc_FEBF72: If (var_8C > 0) Then
  loc_FEBF83:   If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_FEBF86:     Exit Sub
  loc_FEBF87:   End If
  loc_FEBFBE:   If (MsgBox("Are You Sure to Delete This Record", 4, "Confirmation", var_EC, var_10C) = 6) Then
  loc_FEBFCA:     unk_43E829.BeginTrans var_8C
  loc_FEBFD3:     var_86 = CByte(1) 'Byte
  loc_FEC01F:     var_EC = "Delete From TDSCAT Where code='" & Me.Fields.Item("Code").Value & "'" 
  loc_FEC02D:     unk_43E829.Execute CStr(var_EC), var_10C, -1
  loc_FEC04F:     unk_43E829.CommitTrans
  loc_FEC058:     var_86 = CByte(0) 'Byte
  loc_FEC067:     Me.Requery -1
  loc_FEC077:     Me.Requery -1
  loc_FEC091:     var_118 = "INI"
  loc_FEC09F:     Call Proc_205_26_E78B34(Proc_5_1_100EC1C(var_118, Me), global_56)
  loc_FEC0AA:     Call Proc_205_28_11DCD14(var_11C)
  loc_FEC0AF:   End If
  loc_FEC0B2: Else
  loc_FEC0D3:   MsgBox("There Is No Record To Delete.", &H40, "Information", var_EC, var_10C)
  loc_FEC0E3: End If
  loc_FEC0E3: Exit Sub
  loc_FEC0E4: ' Referenced from: FEBF58
  loc_FEC0ED: If (CInt(var_86) = 1) Then
  loc_FEC0F6:   unk_43E829.RollbackTrans
  loc_FEC0FB: End If
  loc_FEC101: Call 0.Method_arg_50 (var_118)
  loc_FEC109: var_128 = "TopCtrl1_eDel"
  loc_FEC116: Proc_183_57_104B0BC(var_118)
  loc_FEC122: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F1D4B8
  'Data Table: 43E818
  Dim Me As Variant
  Dim var_98 As TextBox
  loc_F1D3CC: On Error Goto loc_F1D48E
  loc_F1D3E6: If (Me.RecordCount > 0) Then
  loc_F1D3F7:   If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_F1D3FA:     Exit Sub
  loc_F1D3FB:   End If
  loc_F1D41B:   var_8C = "EDIT"
  loc_F1D429:   Call Proc_205_26_E78B34(Proc_5_1_100EC1C(var_8C, Me), global_56)
  loc_F1D43F:   Set var_90 = var_98(CInt(0))
  loc_F1D445:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CByte(2))
  loc_F1D44D:   var_98.SetFocus
  loc_F1D45C: Else
  loc_F1D47D:   MsgBox("There Is No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F1D48D: End If
  loc_F1D48D: Exit Sub
  loc_F1D48E: ' Referenced from: F1D3CC
  loc_F1D494: Call 0.Method_arg_50 (var_8C)
  loc_F1D49C: var_120 = "TopCtrl1_eEdit"
  loc_F1D4A9: Proc_183_57_104B0BC(var_8C)
  loc_F1D4B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AE10
  'Data Table: 43E818
  loc_E1AE05: Me.Global.Unload Me
  loc_E1AE0D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEE904
  'Data Table: 43E818
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EEE844: On Error Goto loc_EEE8DC
  loc_EEE85E: If (Me.RecordCount <= 0) Then
  loc_EEE867:   var_B8 = "Information"
  loc_EEE882:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EEE892:   Exit Sub
  loc_EEE893: End If
  loc_EEE8A1: MemVar_1F950E4 = "Select code As SearchCode,Name FROM TDSCAT WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by Name"
  loc_EEE8AE: MemVar_1F95120 = Me
  loc_EEE8B5: var_10C = "3500"
  loc_EEE8BB: Proc_183_54_F1EA10(var_10C)
  loc_EEE8D6: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEE8DB: Exit Sub
  loc_EEE8DC: ' Referenced from: EEE844
  loc_EEE8E2: Call 0.Method_arg_50 (var_10C)
  loc_EEE8F7: Proc_183_57_104B0BC(var_10C, "TopCtrl1_eFind")
  loc_EEE903: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3C2A8
  'Data Table: 43E818
  loc_E3C298: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C2A0: Call Proc_205_28_11DCD14(global_56)
  loc_E3C2A5: Exit Sub
  loc_E3C2A6: Set var_6000 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E37808
  'Data Table: 43E818
  loc_E377F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37800: Call Proc_205_28_11DCD14(global_56)
  loc_E37805: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E378C8
  'Data Table: 43E818
  loc_E378B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E378C0: Call Proc_205_28_11DCD14(global_56)
  loc_E378C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3C248
  'Data Table: 43E818
  loc_E3C238: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C240: Call Proc_205_28_11DCD14(global_56)
  loc_E3C245: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '100D6DC
  'Data Table: 43E818
  Dim var_A0 As String
  Dim unk_43E829 As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  loc_100D4E0: On Error Goto loc_100D6B3
  loc_100D4F7: var_A0 = "select * FROM TDSCAT WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_100D507: unk_43E829.Execute var_A0 & "' OR LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_100D512: Set var_88 = var_C8
  loc_100D528: var_CC = var_88.RecordCount
  loc_100D536: If (var_CC = 0) Then
  loc_100D552:   MsgBox("No record Found to Print", 0, var_EC, var_10C, var_12C)
  loc_100D562:   Exit Sub
  loc_100D563: End If
  loc_100D56F: Call 0.Method_arg_128 (var_C8)
  loc_100D57A: MemVar_1F951E8 = var_C8
  loc_100D592: Call 0.Method_arg_90 (var_C8, var_CC, var_9A)
  loc_100D59A: Call 0.Method_arg_24 (1)
  loc_100D5A6: For var_130 =  To CInt(var_CC): var_C8 = var_130 'Integer
  loc_100D5BF:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_100D5C7:   Call 0.Method_arg_20 (var_134)
  loc_100D5CF:   Call 0.Method_arg_30 (var_A0)
  loc_100D615:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_100D62B:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_100D633:     Call 0.Method_arg_20 (var_134)
  loc_100D63B:     Call 0.Method_arg_38 ("'T.D.S. Category List'")
  loc_100D647:   End If
  loc_100D64A: Next var_130 'Integer
  loc_100D668: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_100D670: Call 0.Method_arg_2C (var_DC)
  loc_100D67E: Call 0.Method_arg_150 (var_FC)
  loc_100D689: Call 0.Method_arg_50 (var_A0)
  loc_100D6A2: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_100D6AF: Set var_88 = Nothing
  loc_100D6B2: Exit Sub
  loc_100D6B3: ' Referenced from: 100D4E0
  loc_100D6B9: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_100D6CE: Proc_183_57_104B0BC(var_A0, "TopCtrl1_ePrn")
  loc_100D6DA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B7C4
  'Data Table: 43E818
  Dim Me As Recordset15
  loc_E0B7BB: Me.Requery -1
  loc_E0B7C0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1309618
  'Data Table: 43E818
  Dim var_A8 As String
  Dim var_B0 As String
  Dim unk_43E829 As Connection15
  Dim var_94 As Recordset15
  Dim var_C0 As Variant
  Dim var_9C As Fields15
  Dim var_D0 As Variant
  Dim var_A0 As Variant
  Dim var_F4 As Variant
  Dim var_98 As Long
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim Me As Variant
  Dim var_120 As TextBox
  Dim var_200 As Double
  Dim var_138 As TextBox
  Dim var_208 As Double
  Dim var_118 As String
  Dim var_12C As String
  Dim var_148 As String
  Dim var_170 As Variant
  Dim var_1B0 As Variant
  Dim var_124 As String
  Dim var_13C As String
  Dim var_1F4 As Variant
  loc_1308F54: On Error Goto loc_13095D8
  loc_1308F5B: var_86 = CByte(0) 'Byte
  loc_1308F6A: Set var_9C = var_A0(CInt(0))
  loc_1308F70: Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1308F78: var_A8 = "Description"
  loc_1308F99: If (Proc_183_19_E8E68C(var_A0) = 0) Then
  loc_1308FA3:   Call Txt_GotFocus()
  loc_1308FA8:   Exit Sub
  loc_1308FA9: End If
  loc_1308FB4: Set var_9C = var_A0(CInt(1))
  loc_1308FBA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1308FE3: If (Proc_183_19_E8E68C(var_A0, "T.D.S.Limit") = 0) Then
  loc_1308FED:   Call Txt_GotFocus()
  loc_1308FF2:   Exit Sub
  loc_1308FF3: End If
  loc_1308FFE: Set var_9C = var_A0(CInt(2))
  loc_1309004: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_130902D: If (Proc_183_19_E8E68C(var_A0, "T.D.S.Percentage") = 0) Then
  loc_1309037:   Call Txt_GotFocus()
  loc_130903C:   Exit Sub
  loc_130903D: End If
  loc_1309049: If (CInt(global_52) = 1) Then
  loc_1309060:   var_A8 = "Select Max(SubString(Code,3,Len(Code)-2)) As tCode From TDSCAT Where SITE_CODE='" & MemVar_1F95070
  loc_1309067:   var_B0 = "T.D.S.Percentage" & "'"
  loc_1309070:   unk_43E829.Execute var_B0, var_D0, -1
  loc_130907B:   Set var_94 = var_9C
  loc_1309091:   var_D4 = var_94.RecordCount
  loc_130909F:   If (var_D4 > 0) Then
  loc_13090D1:     If Not(IsNull(CVar(var_94.Fields.Item("TCode")))) Then
  loc_1309103:       var_F4 = (var_94.Fields.Item("TCode").Value + 1)
  loc_1309109:       var_98 = CLng(var_F4)
  loc_130911D:     Else
  loc_1309122:       var_98 = 1
  loc_1309125:     End If
  loc_1309128:   Else
  loc_130912D:     var_98 = 1
  loc_1309130:   End If
  loc_130913D:   var_104 = CVar(Proc_183_15_EAD490(MemVar_1F95070, 2, var_98, var_98)) 'String
  loc_1309168:   var_114 = (1 + Format(var_98, "0000"))
  loc_130916D:   var_90 = CStr(var_114)
  loc_130917E: Else
  loc_130919B:   var_A0 = Me.Fields.Item("Code")
  loc_13091A3:   var_D0 = var_A0.Value
  loc_13091AC:   var_90 = CStr(var_D0)
  loc_13091B9: End If
  loc_13091C2: unk_43E829.BeginTrans var_D4
  loc_13091CB: var_86 = CByte(1) 'Byte
  loc_13091DB: If (CInt(global_52) = 1) Then
  loc_13091EC:   Set var_9C = var_A0(CInt(0))
  loc_13091F2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B0, 1, var_104, var_98)
  loc_13091FA:   var_9C = var_A0.Text
  loc_130920D:   Set var_A4 = var_120(CInt(1))
  loc_1309213:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_124, CInt(2))
  loc_130921B:   var_A8 = var_120.Text
  loc_1309228:   var_200 = Val(var_124)
  loc_1309239:   Set var_134 = var_138(CInt(2))
  loc_130923F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_13C)
  loc_1309262:   Proc_183_7_EB17D4(var_D0, MemVar_1F950EC)
  loc_130927B:   var_A8 = "Insert Into TDSCAT (code,name,TDSLimit,TDSPercentage,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) Values('" & var_90
  loc_1309282:   var_118 = var_A8 & "','"
  loc_1309298:   var_12C = CStr(var_138.Text)
  loc_13092DD:   var_170 = CVar(var_118 & var_B0 & "'," & var_12C & "," & CStr(Val(var_13C)) & ",'" & MemVar_1F950C8 & "',") & var_D0 & ",'A','" & CVar(MemVar_1F95070) 
  loc_1309307:   unk_43E829.Execute CStr(var_170 & "','" & CVar(MemVar_1F95078) & "')"), var_1F4, -1
  loc_1309356: Else
  loc_1309364:   Set var_9C = var_A0(CInt(0))
  loc_130936A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A8, var_1F8)
  loc_1309372:   var_208 = var_A0.Text
  loc_1309385:   Set var_A4 = var_120(CInt(1))
  loc_130938B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_118)
  loc_1309393:    = var_120.Text
  loc_13093A0:   var_200 = Val(var_118)
  loc_13093B1:   Set var_134 = var_138(CInt(2))
  loc_13093B7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_12C)
  loc_13093CC:   var_208 = Val(var_12C)
  loc_13093D2:   var_C0 = MemVar_1F950EC
  loc_13093DA:   Proc_183_7_EB17D4(var_D0, var_C0)
  loc_1309427:   var_148 = "UPDATE TDSCAT SET name='" & var_A8 & "',TDSLimit=" & CStr(var_138.Text) & ",TDSPercentage=" & CStr(var_208) & ",U_name='" & MemVar_1F950C8
  loc_130945A:   var_1B0 = CVar(var_148 & "',U_EntDt=") & var_D0 & ",U_AE='E',SITE_CODE='" & CVar(MemVar_1F95070) & "',LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1309484:   unk_43E829.Execute CStr(var_1B0 & "' WHERE code='" & CVar(var_90) & "'"), var_248, -1
  loc_13094D0: End If
  loc_13094D6: unk_43E829.CommitTrans
  loc_13094DF: var_86 = CByte(0) 'Byte
  loc_13094EE: Me.Requery -1
  loc_13094FE: Me.Requery -1
  loc_1309507: Set var_9C = var_208(var_1F8)
  loc_130953D: Me.Find "code='" & var_90 & "'", 0, 1
  loc_1309555: If (CInt(global_52) = 1) Then
  loc_1309558:   Call Proc_205_27_E78BCC(var_C0)
  loc_1309564:   Call Txt_GotFocus()
  loc_1309574:   Set var_9C = var_A0(CInt(0))
  loc_130957A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1309582:   var_A0.SetFocus
  loc_1309591: Else
  loc_13095A6:   var_A8 = "INI"
  loc_13095B4:   Call Proc_205_26_E78B34(Proc_5_1_100EC1C(var_A8, Me), global_56)
  loc_13095BF:   Call Proc_205_28_11DCD14(cdialogrepview.DispID_FFFF)
  loc_13095CB:   global_52 = CByte(0)
  loc_13095CF: End If
  loc_13095D4: Set var_94 = Nothing
  loc_13095D7: Exit Sub
  loc_13095D8: ' Referenced from: 1308F54
  loc_13095E1: If (CInt(var_86) = 1) Then
  loc_13095EA:   unk_43E829.RollbackTrans
  loc_13095EF: End If
  loc_13095F5: Call 0.Method_arg_50 (var_A8)
  loc_130960A: Proc_183_57_104B0BC(var_A8, "TopCtrl1_eSave")
  loc_1309616: Exit Sub
End Sub

Private Sub Form_Load() '11105F8
  'Data Table: 43E818
  Dim var_8C As Label
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim var_C8 As String
  Dim unk_43E829 As Connection15
  Dim var_D0 As Column
  loc_11102AC: On Error Goto loc_11105CE
  loc_11102BE: (CDbl(13500)).Left = 
  loc_11102D5: (CDbl(7800)).Top = 
  loc_11102EC: (CDbl(8160)).Top = 
  loc_1110303: (CDbl(13500)).Left = 
  loc_1110312: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1110321: Set var_8C = Me.TopCtrl1
  loc_1110327: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1110335: Call 0.Method_arg_50 (var_B0)
  loc_111033D: var_C0 = CVar(var_B0) 'String
  loc_1110345: Set var_8C = Me.TopCtrl1
  loc_111034B: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_C0)
  loc_1110362: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_1110373: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_1110384: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_1110395: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_11103A6: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_11103B7: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_11103C8: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_11103D9: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_11103EA: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_11103FB: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_1110415: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_1110423: Set var_8C = MemVar_1F95044
  loc_1110432: Call 0.Method_Form_Load8 (var_8C)
  loc_1110448: Me.TopCtrl1.Clone
  loc_1110462: Call 0.Method_arg_50 (var_8C, -1)
  loc_1110492: Me.Connection15.Execute "SELECT * FROM TDSCAT WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_C0, -1
  loc_11104D3: var_C8 = "SELECT Code,name,TDSLimit,TDSPercentage FROM TDSCAT WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') ORDER BY Name"
  loc_11104DC: unk_43E829.Execute var_C8, var_C0, -1
  loc_1110515: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_8C(CVar(CDbl(1665))))
  loc_1110529: Set var_8C = Me
  loc_1110532: var_B0 = "INI"
  loc_1110540: Call Proc_205_26_E78B34(Proc_5_1_100EC1C(var_B0, var_8C), var_8C)
  loc_111054B: Call Proc_205_28_11DCD14(var_8C)
  loc_1110575: Set var_8C = var_D0(0)
  loc_111057B: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_69(0)
  loc_111058C:  = CByte(0).Item(CByte(0))
  loc_1110594: var_D0.Visible = 
  loc_11105AE: CVarUnk
  loc_11105B3: VerifyVarObj
  loc_11105B9: Set var_8C = (var_8C)
  loc_11105BF: LateIdStAd
  loc_11105CD: Exit Sub
  loc_11105CE: ' Referenced from: 11102AC
  loc_11105D4: Call 0.Method_arg_50 (var_B0)
  loc_11105E9: Proc_183_57_104B0BC(var_B0, "Form_Load")
  loc_11105F5: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4E78
  'Data Table: 43E818
  Dim var_8C As Label
  Dim var_B4 As Label
  loc_ED4DD6: Call 0.Method_arg_50 (var_88)
  loc_ED4DE8: (var_88).Caption = 
  loc_ED4E01: (CDbl(0)).Left = 
  loc_ED4E0D: Set var_A0 = Me.TopCtrl1
  loc_ED4E13: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED4E20: Set var_8C = Me.TopCtrl1
  loc_ED4E26: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED4E3A: Set var_B4 = ((CDbl() + CDbl(var_B0)))
  loc_ED4E40: var_B4.Top = 
  loc_ED4E5B: Call 0.Method_arg_100 (var_B8)
  loc_ED4E6D: (var_B8).Width = 
  loc_ED4E75: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2BB7C
  'Data Table: 43E818
  loc_E2BB5F: Set global_56 = Nothing
  loc_E2BB71: Set global_60 = Nothing
  loc_E2BB78: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F6C0D8
  'Data Table: 43E818
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim KeyCode As Integer
  loc_F6BFA0: On Error Goto loc_F6C0AE
  loc_F6BFA6: var_86 = KeyCode
  loc_F6BFB3: If Not (var_86 = CInt(&HD)) Then
  loc_F6BFC0:   If Not (var_86 = CInt(&H28)) Then
  loc_F6BFCD:     If (var_86 = CInt(&H26)) Then
  loc_F6BFD0:     End If
  loc_F6BFD0:   End If
  loc_F6BFD3:   var_88 = KeyCode
  loc_F6BFE0:   If Not (var_88 = CInt(&H28)) Then
  loc_F6BFED:     If (var_88 = CInt(&H26)) Then
  loc_F6BFF0:     End If
  loc_F6BFF4:     Set var_8C = var_86(var_88)
  loc_F6BFFA:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_F6C00C:     If (CBool() = &HFF) Then
  loc_F6C00F:       Exit Sub
  loc_F6C010:     End If
  loc_F6C010:   End If
  loc_F6C016:   Call 0.Method_arg_1E8 (var_8C)
  loc_F6C025:   If TypeOf var_8C Is arg_23 Then
  loc_F6C02E:     Call 0.Method_arg_1E8 (var_8C)
  loc_F6C049:     Call Txt_Validate(CInt(var_8C.index))
  loc_F6C054:   End If
  loc_F6C070:   Call 0.Method_arg_58 (Me, KeyCode, Shift)
  loc_F6C07E:   If (var_9E = &HFF) Then
  loc_F6C086:     Call Proc_205_30_EAA288(0, var_9E)
  loc_F6C08B:   End If
  loc_F6C08D:   KeyCode = 0
  loc_F6C093: Else
  loc_F6C0A5:   Proc_183_40_F3169C(Me, KeyCode, Shift)
  loc_F6C0AD: End If
  loc_F6C0AD: Exit Sub
  loc_F6C0AE: ' Referenced from: F6BFA0
  loc_F6C0B4: Call 0.Method_arg_50 (var_A4, KeyCode)
  loc_F6C0C9: Proc_183_57_104B0BC(var_A4, "Form_KeyDown")
  loc_F6C0D5: Exit Sub
End Sub

Private Sub Txt_Change(Index As Integer) 'F26A6C
  'Data Table: 43E818
  Dim var_86 As Integer
  Dim var_98 As Variant
  Dim var_BC As TextBox
  Dim var_B0 As TextBox
  loc_F26974: If (CInt(global_52) <> 0) Then
  loc_F2697A:   var_86 = Index
  loc_F26985:   If (var_86 = CInt(0)) Then
  loc_F26990:     Set var_AC = var_86(True)
  loc_F26996:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_F269AB:     Set var_B8 = var_BC(Index)
  loc_F269B1:     Call 0.Method_Txt_Change0 (var_C0)
  loc_F269B9:      = var_BC.Height
  loc_F269CB:     Set var_AC = var_B0(Index)
  loc_F269D1:     Call 0.Method_Txt_Change0 (var_B4)
  loc_F269D9:      = var_B0.Top
  loc_F269E9:     var_98 = CVar(((var_B4 + var_C0) + CDbl(&HA))) 'Single
  loc_F269F2:     Set var_C4 = (True)
  loc_F269F8:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_F26A17:     Set var_AC = var_B0(Index)
  loc_F26A1D:     Call 0.Method_Txt_Change0 (var_B4)
  loc_F26A25:      = var_B0.Left
  loc_F26A36:     Set var_B8 = (CVar(var_B4))
  loc_F26A3C:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_F26A54:     Set var_AC = (0)
  loc_F26A5A:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_18001()
  loc_F26A65:     Call Proc_205_29_EAAB24()
  loc_F26A6A:   End If
  loc_F26A6A: End If
  loc_F26A6A: Exit Sub
  loc_F26A6B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FC6C48
  'Data Table: 43E818
  Dim var_9C As TextBox
  Dim var_D4 As TextBox
  Dim var_DA As Integer
  Dim Me As Recordset15
  Dim var_E0 As Integer
  loc_FC6AA4: On Error Goto loc_FC6C1E
  loc_FC6ABC: Set var_98 = var_9C(Index)
  loc_FC6AC2: Call 0.Method_Txt_GotFocus0 (CByte(0))
  loc_FC6AD0: Proc_183_28_E216B0(var_9C)
  loc_FC6AE0: Set var_98 = ()
  loc_FC6AE6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_FC6AF8: If (CBool() = &HFF) Then
  loc_FC6B04:   Set var_98 = (False)
  loc_FC6B0A:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_FC6B12: End If
  loc_FC6B18: Proc_183_45_E5CCA8(global_60)
  loc_FC6B2A: Set var_98 = var_9C(Index)
  loc_FC6B30: Call 0.Method_Txt_GotFocus0 (var_D8)
  loc_FC6B38:  = var_9C.Text
  loc_FC6B4A: Set var_A0 = var_D4(Index)
  loc_FC6B50: Call 0.Method_Txt_GotFocus0 (var_D8)
  loc_FC6B58: var_D4.Tag = 
  loc_FC6B6E: Call Txt_Click()
  loc_FC6B81: If (Index = CInt(0)) Then
  loc_FC6BA7:   If (Me.BOF Or Me.EOF) Then
  loc_FC6BAA:     Exit Sub
  loc_FC6BAB:   End If
  loc_FC6BAB: End If
  loc_FC6BAE: var_E0 = Index
  loc_FC6BB9: If (var_E0 = CInt(0)) Then
  loc_FC6BDB:   Me.Bookmark = Me.Bookmark
  loc_FC6BE0: End If
  loc_FC6BED: Set var_98 = var_9C(Index)
  loc_FC6BF3: Call 0.Method_Txt_GotFocus0 (var_D8, var_E0)
  loc_FC6BFB: var_DA = var_9C.Text
  loc_FC6C12: If (var_D8 = vbNullString) Then
  loc_FC6C18:   Call Txt_Change(Index)
  loc_FC6C1D: End If
  loc_FC6C1D: Exit Sub
  loc_FC6C1E: ' Referenced from: FC6AA4
  loc_FC6C24: Call 0.Method_arg_50 (var_D8)
  loc_FC6C39: Proc_183_57_104B0BC(var_D8, "Txt_GotFocus")
  loc_FC6C45: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F73D8C
  'Data Table: 43E818
  Dim var_AE As Integer
  Dim var_C6 As Integer
  Dim var_C8 As Integer
  loc_F73C64: On Error Goto loc_F73D62
  loc_F73C71: If (CLng(Shift) = &H1B) Then
  loc_F73C7D:   Set var_AC = (False)
  loc_F73C83:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_F73C8B:   Exit Sub
  loc_F73C8C: End If
  loc_F73C8F: var_AE = KeyCode
  loc_F73C9A: If (var_AE = CInt(0)) Then
  loc_F73CD1:   Set var_AC = (var_AE)
  loc_F73CD7:   Proc_183_31_100957C(var_AC, (), CInt(0), global_60)
  loc_F73CE7: End If
  loc_F73CEA: var_C6 = KeyCode
  loc_F73CF5: If (var_C6 = CInt(2)) Then
  loc_F73CFB:   var_C8 = Shift
  loc_F73D04:   If (var_C8 = &HD) Then
  loc_F73D3E:     If (MsgBox("Save Record?", 4, "Save Entry", var_108, var_128) = 6) Then
  loc_F73D41:       Call TopCtrl1_UnknownEvent_16()
  loc_F73D46:       Exit Sub
  loc_F73D4A:     Else
  loc_F73D50:       Call 0.Method_arg_1E8 (var_AC, var_C8, var_C6)
  loc_F73D58:       Call var_AC.SetFocus
  loc_F73D61:     End If
  loc_F73D61:   End If
  loc_F73D61: End If
  loc_F73D61: Exit Sub
  loc_F73D62: ' Referenced from: F73C64
  loc_F73D68: Call 0.Method_arg_50 (var_12C, Shift)
  loc_F73D7D: Proc_183_57_104B0BC(var_12C, "Txt_KeyDown")
  loc_F73D89: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EAF3B4
  'Data Table: 43E818
  Dim var_86 As Integer
  loc_EAF327: var_86 = KeyAscii
  loc_EAF332: If (var_86 = CInt(1)) Then
  loc_EAF33F:   Set var_8C = var_90(KeyAscii)
  loc_EAF345:   Call 0.Method_Txt_KeyPress0 (var_86)
  loc_EAF360:   Proc_183_22_129BBAC(var_90, arg_10)
  loc_EAF36F: Else
  loc_EAF377:   If (var_86 = CInt(2)) Then
  loc_EAF384:     Set var_8C = var_90(KeyAscii)
  loc_EAF38A:     Call 0.Method_Txt_KeyPress0 (8)
  loc_EAF3A5:     Proc_183_22_129BBAC(var_90, arg_10, 2)
  loc_EAF3B1:   End If
  loc_EAF3B1: End If
  loc_EAF3B1: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E8A990
  'Data Table: 43E818
  Dim var_86 As Integer
  loc_E8A927: var_86 = KeyCode
  loc_E8A932: If (var_86 = CInt(0)) Then
  loc_E8A939:   Set var_8C = (var_86)
  loc_E8A93F:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_E8A951:   If (CBool() = &HFF) Then
  loc_E8A95E:     var_A4 = "Name"
  loc_E8A97D:     Proc_183_32_FE97F0((), CInt(0), global_60)
  loc_E8A98C:   End If
  loc_E8A98C: End If
  loc_E8A98C: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A2D4
  'Data Table: 43E818
  loc_E4A2B2: Set var_88 = var_8C(Index)
  loc_E4A2B8: Call 0.Method_Txt_LostFocus0 ()
  loc_E4A2C6: Proc_183_27_E23198(var_8C)
  loc_E4A2D2: Exit Sub
End Sub

Private Sub Txt_Click(Index As Integer) 'E6C09C
  'Data Table: 43E818
  Dim var_8C As TextBox
  loc_E6C057: Set var_88 = var_8C(Index)
  loc_E6C05D: Call 0.Method_Txt_Click0 (&HC00000)
  loc_E6C065: var_8C.ForeColor = 
  loc_E6C080: Set var_88 = var_8C(Index)
  loc_E6C086: Call 0.Method_Txt_Click0 (&HE0E0E0)
  loc_E6C08E: var_8C.BackColor = 
  loc_E6C09A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '105F720
  'Data Table: 43E818
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim unk_43E829 As Connection15
  Dim var_C0 As Variant
  Dim var_D8 As Variant
  Dim arg_10 As Integer
  Dim var_E8 As Variant
  Dim Me As Recordset15
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_140 As Field20
  loc_105F4D0: On Error Goto loc_105F6F6
  loc_105F4E1: If (Cancel = CInt(0)) Then
  loc_105F4F0:   If (CInt(global_52) = 1) Then
  loc_105F520:     Set var_8C = var_90(CInt(0))
  loc_105F526:     Call 0.Method_Txt_Validate0 (var_94, "Select COUNT(*) From TDSCAT Where name='", var_BC, -1, var_C0)
  loc_105F547:     unk_43E829.Execute 0 & var_94 & "'", var_D8, var_E8
  loc_105F54F:     var_86 = var_C0.Fields
  loc_105F557:      = var_90.Text.Item()
  loc_105F55F:      = var_D8.Value
  loc_105F58C:     If (var_E8 > 0) Then
  loc_105F5B0:       MsgBox("Name Already Exists", &H40, "Validation", var_108, var_128)
  loc_105F5C2:       arg_10 = &HFF
  loc_105F5C5:       Exit Sub
  loc_105F5C6:     End If
  loc_105F5C9:   Else
  loc_105F5D5:     If (CInt(global_52) = 2) Then
  loc_105F605:       Set var_8C = var_90(CInt(0))
  loc_105F60B:       Call 0.Method_Txt_Validate0 (var_94, "Select COUNT(*) From TDSCAT Where name='", var_138, -1, var_D8)
  loc_105F653:       var_108 = CVar(0 & var_94 & "' AND CODE<>'") & Me.Fields.Item("Code").Value 
  loc_105F65C:       var_128 = var_108 & "'" 
  loc_105F66A:       unk_43E829.Execute CStr(var_128), var_140, var_150
  loc_105F672:       arg_10 = var_D8.Fields
  loc_105F67A:        = var_90.Text.Item()
  loc_105F682:        = var_140.Value
  loc_105F6BB:       If (var_150 > 0) Then
  loc_105F6DF:         MsgBox("Name Already Exists", &H40, "Validation", var_108, var_128)
  loc_105F6F1:         arg_10 = &HFF
  loc_105F6F4:         Exit Sub
  loc_105F6F5:       End If
  loc_105F6F5:     End If
  loc_105F6F5:   End If
  loc_105F6F5: End If
  loc_105F6F5: Exit Sub
  loc_105F6F6: ' Referenced from: 105F4D0
  loc_105F6FC: Call 0.Method_arg_50 (var_94)
  loc_105F711: Proc_183_57_104B0BC(var_94, "Txt_Validate")
  loc_105F71D: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E92640
  'Data Table: 43E818
  Dim Me As Recordset15
  Dim var_8C As String
  loc_E925D2: On Error Goto loc_E92617
  loc_E925DB: Me.MoveFirst
  loc_E925F5: var_8C = "Code='" & MyValue
  loc_E92605: Me.Find var_8C & "'", 0, 1
  loc_E92611: Call Proc_205_28_11DCD14(var_A0)
  loc_E92616: Exit Sub
  loc_E92617: ' Referenced from: E925D2
  loc_E9261D: Call 0.Method_arg_50 (var_8C)
  loc_E92625: var_A4 = "SEARCHBACK"
  loc_E92632: Proc_183_57_104B0BC(var_8C)
  loc_E9263E: Exit Sub
End Sub

Public Sub Proc_205_26_E78B34(arg_C) 'E78B34
  'Data Table: 43E818
  Dim var_98 As TextBox
  loc_E78AE2: Set var_8C = var_86(var_8E)
  loc_E78AE8: Call 0.Method_Proc_205_26_E78B34C (CByte(0))
  loc_E78AF8: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_E78B0E:   Set var_8C = var_98(CInt(var_86))
  loc_E78B14:   Call 0.Method_Proc_205_26_E78B340 (arg_C)
  loc_E78B1C:   var_98.Enabled = 
  loc_E78B2B: Next var_92 'Byte
  loc_E78B31: Exit Sub
End Sub

Public Sub Proc_205_27_E78BCC
  'Data Table: 43E818
  Dim var_98 As TextBox
  loc_E78B7A: Set var_8C = var_86(var_8E)
  loc_E78B80: Call 0.Method_Proc_205_27_E78BCCC (CByte(0))
  loc_E78B90: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_E78BA6:   Set var_8C = var_98(CInt(var_86))
  loc_E78BAC:   Call 0.Method_Proc_205_27_E78BCC0 (vbNullString)
  loc_E78BB4:   var_98.Text = 
  loc_E78BC3: Next var_92 'Byte
  loc_E78BC9: Exit Sub
End Sub

Public Sub Proc_205_28_11DCD14
  'Data Table: 43E818
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_F4 As String
  Dim unk_43E82B As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_1CC As String
  Dim var_11C As TextBox
  loc_11DC8D4: On Error Goto loc_11DCCEC
  loc_11DC92D: unk_43E82B.Execute CStr("Select U_Name,U_AE,U_EntDt From TDSCAT where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_11DC938: Set var_88 = var_118
  loc_11DC98C: var_118 = var_88.Fields
  loc_11DC9F5: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_11DCA3A: (CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))).Caption = 
  loc_11DCAB4: var_11C = var_88.Fields.Item("U_AE")
  loc_11DCABC: var_D0 = CVar(var_11C) 'Address
  loc_11DCB15: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(var_D0) = "E"), "Last Update : ", "entdt : "))
  loc_11DCB5A: (CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))).Caption = 
  loc_11DCB98: Proc_183_45_E5CCA8(global_56)
  loc_11DCBB4: If (Me.RecordCount <= 0) Then
  loc_11DCBB7:   Call Proc_205_27_E78BCC()
  loc_11DCBBF: Else
  loc_11DCBFB:   Set var_118 = var_11C(CInt(0))
  loc_11DCC01:   Call 0.Method_Proc_205_28_11DCD140 (CStr(Me.Fields.Item("Name").Value))
  loc_11DCC09:   var_11C.Text = 
  loc_11DCC48:   Proc_183_3_E7DD58(var_D0)
  loc_11DCC5F:   Set var_118 = var_11C(CInt(1))
  loc_11DCC65:   Call 0.Method_Proc_205_28_11DCD140 (CStr(var_D0))
  loc_11DCC6D:   var_11C.Text = CVar(Me.Fields.Item("TDSLimit"))
  loc_11DCCAE:   Proc_183_3_E7DD58(var_D0)
  loc_11DCCB6:   var_F4 = CStr(var_D0)
  loc_11DCCC5:   Set var_118 = var_11C(CInt(2))
  loc_11DCCCB:   Call 0.Method_Proc_205_28_11DCD140 (var_F4)
  loc_11DCCD3:   var_11C.Text = CVar(Me.Fields.Item("TDSPercentage"))
  loc_11DCCEB: End If
  loc_11DCCEB: Exit Sub
  loc_11DCCEC: ' Referenced from: 11DC8D4
  loc_11DCCF2: Call 0.Method_arg_50 (var_F4)
  loc_11DCCFA: var_1CC = "MoveRec"
  loc_11DCD07: Proc_183_57_104B0BC(var_F4)
  loc_11DCD13: Exit Sub
End Sub

Public Sub Proc_205_29_EAAB24
  'Data Table: 43E818
  Dim Me As Recordset15
  Dim var_90 As TextBox
  loc_EAAAB7: If (Me.RecordCount <= 0) Then
  loc_EAAABA:   Exit Sub
  loc_EAAABB: End If
  loc_EAAAC1: Me.MoveFirst
  loc_EAAAE5: Set var_8C = var_90(CInt(0))
  loc_EAAAEB: Call 0.Method_Proc_205_29_EAAB240 (var_94, "name>='", 0)
  loc_EAAAF3: 1 = var_90.Text
  loc_EAAB0C: Me.Find var_AC & var_94 & "'", , 
  loc_EAAB21: Exit Sub
End Sub

Public Sub Proc_205_30_EAA288(arg_C) 'EAA288
  'Data Table: 43E818
  Dim var_10C As TextBox
  loc_EAA211: Set var_A8 = (False)
  loc_EAA217: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_EAA256: If (MsgBox("Save Record ?", 4, "Save Data", var_E8, var_108) = 6) Then
  loc_EAA259:   Call TopCtrl1_UnknownEvent_16()
  loc_EAA261: Else
  loc_EAA26B:   Set var_A8 = var_10C(arg_C)
  loc_EAA271:   Call 0.Method_Proc_205_30_EAA2880 ()
  loc_EAA279:   var_10C.SetFocus
  loc_EAA285: End If
  loc_EAA285: Exit Sub
  loc_EAA286: Set var_6000 = 
End Sub
