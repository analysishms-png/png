VERSION 5.00
Begin VB.Form PrDesigMast
  Caption = "Designation Master"
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
  ClientWidth = 6795
  ClientHeight = 3015
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 6795
    Height = 450
    TabIndex = 4
  End
End
Begin DataGrid DGHelp
  Left = 9435
  Top = 2295
  Width = 4230
  Height = 1695
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 1
End
Begin MSFlexGrid FGPoint
  Left = 13095
  Top = 2745
  Width = 1980
  Height = 1440
  Visible = 0   'False
  TabIndex = 3
End
Begin TextBox Txt
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2310
  Top = 1710
  Width = 4215
  Height = 285
  TabIndex = 0
  BorderStyle = 0 'None
  MaxLength = 25
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
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 360
  Width = 180
  Height = 540
  TabIndex = 9
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
Begin Label Label2
  Caption = "User"
  ForeColor = &HFF0000&
  Left = 0
  Top = 0
  Width = 2880
  Height = 255
  TabIndex = 8
  Alignment = 2 'Center
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
Begin Label Label1
  Caption = "Last Update"
  ForeColor = &HFF0000&
  Left = 3375
  Top = 0
  Width = 2790
  Height = 285
  TabIndex = 7
  Alignment = 2 'Center
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
  Left = 0
  Top = 6360
  Width = 2880
  Height = 255
  TabIndex = 6
  Alignment = 2 'Center
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
Begin Label LblLDt
  Caption = "Last Update"
  ForeColor = &HFF0000&
  Left = 3375
  Top = 6480
  Width = 2790
  Height = 285
  TabIndex = 5
  Alignment = 2 'Center
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
Begin Label LblName
  Caption = "Name :"
  Index = 0
  ForeColor = &HFF0000&
  Left = 1395
  Top = 1710
  Width = 675
  Height = 240
  TabIndex = 2
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

Attribute VB_Name = "PrDesigMast"


Private Sub DGHelp_UnknownEvent_9 'EE3B4C
  'Data Table: 4559E0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE3AA3: Me.DGHelp.Visible = False
  loc_EE3AC2: If (Me.RecordCount > 0) Then
  loc_EE3AE2:   var_B0 = Me.Fields.Item("Name")
  loc_EE3B01:   Set var_B4 = Me.Txt
  loc_EE3B07:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE3B0F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE3B25: End If
  loc_EE3B30: Set var_A8 = Me.Txt
  loc_EE3B36: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE3B3E: var_B0.SetFocus
  loc_EE3B4A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E70108
  'Data Table: 4559E0
  loc_E700C6: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E700DD: Set var_8C = Me.FGPoint
  loc_E700F9: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E70107: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EAB3C4
  'Data Table: 4559E0
  Dim Me As Recordset15
  loc_EAB342: Set var_88 = Me.Txt
  loc_EAB348: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EAB356: Proc_6_74_E23240(var_8C)
  loc_EAB362: Call Proc_314_31_E84630(var_8C)
  loc_EAB375: If (Index = CInt(0)) Then
  loc_EAB38F:   If (Me.RecordCount > 0) Then
  loc_EAB39D:     Set var_8C = Me.FGPoint
  loc_EAB3B5:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_EAB3C3:   End If
  loc_EAB3C3: End If
  loc_EAB3C3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1018E7C
  'Data Table: 4559E0
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As TextBox
  loc_1018C72: If (CLng(Shift) = &H1B) Then
  loc_1018C75:   Call Proc_314_31_E84630()
  loc_1018C7A:   Exit Sub
  loc_1018C7B: End If
  loc_1018C89: If (KeyCode = CInt(0)) Then
  loc_1018CA9:   Set var_9C = Me.FGPoint
  loc_1018CDB:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_1018D48:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1018D4F:     Set var_9C = Me.DGHelp
  loc_1018D56:     Set var_90 = Me.FGPoint
  loc_1018D6E:     Proc_6_138_106E830(var_9C, global_56, KeyCode, var_90, 0)
  loc_1018D7C:   End If
  loc_1018D7C: End If
  loc_1018D98: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_1018DB9:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_1018DBF:     Call Proc_314_30_1083D28(var_92, 1, var_9C)
  loc_1018DCA:     If (var_92 = &HFF) Then
  loc_1018DDA:       Set var_8C = Me.Txt
  loc_1018DE0:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_1018DE8:       var_90.Text = 0
  loc_1018DF4:       Exit Sub
  loc_1018DF5:     End If
  loc_1018E2C:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_1018E2F:       Call TopCtrl1_UnknownEvent_16()
  loc_1018E34:     End If
  loc_1018E34:     Exit Sub
  loc_1018E35:   End If
  loc_1018E4A:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1018E53:     Proc_6_75_E5335C(Shift, arg_14)
  loc_1018E58:   End If
  loc_1018E6B:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_1018E74:     Proc_6_76_E533C8(Shift, arg_14)
  loc_1018E79:   End If
  loc_1018E79: End If
  loc_1018E79: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E24598
  'Data Table: 4559E0
  loc_E2457E: Proc_6_133_E7FB08(var_94)
  loc_E24590: Proc_6_58_E06050(CInt(var_94), CInt(var_94))
  loc_E24595: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC4460
  'Data Table: 4559E0
  loc_EC43D2: If (KeyCode = CInt(0)) Then
  loc_EC43F1:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC43FE:     var_A4 = "Name"
  loc_EC441D:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_EC444F:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC445D:   End If
  loc_EC445D: End If
  loc_EC445D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47C3C
  'Data Table: 4559E0
  loc_E47C1A: Set var_88 = Me.Txt
  loc_E47C20: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47C2E: Proc_6_73_E23294(var_8C)
  loc_E47C3A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E28C6C
  'Data Table: 4559E0
  Dim arg_10 As Integer
  Dim arg_68FF As Double
  loc_E28C4E: If (Cancel = CInt(0)) Then
  loc_E28C54:   Call Proc_314_30_1083D28(var_88)
  loc_E28C5F:   If (var_88 = &HFF) Then
  loc_E28C64:     arg_10 = &HFF
  loc_E28C67:     Exit Sub
  loc_E28C68:   End If
  loc_E28C68: End If
  loc_E28C68: Exit Sub
  loc_E28C69: Exit Sub
  loc_E28C6A: arg_68FF = arg_10
End Sub

Private Sub Form_Load() 'FC29C8
  'Data Table: 4559E0
  Dim var_8C As Label
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_4559F3 As Connection15
  Dim var_B4 As Variant
  loc_FC2824: On Error Goto loc_FC2984
  loc_FC2836: Me.LblUser.Left = CDbl(13500)
  loc_FC284D: Me.LblUser.Top = CDbl(7800)
  loc_FC2864: Me.LblLDt.Top = CDbl(8160)
  loc_FC2875: Set var_8C = Me.LblLDt
  loc_FC287B: var_8C.Left = CDbl(13500)
  loc_FC288A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_FC288F: Call Proc_314_33_EDCAFC()
  loc_FC28B8: unk_4559F3.Execute "SELECT Code,Name FROM Desig where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_FC28E7: CVarUnk
  loc_FC28EC: VerifyVarObj
  loc_FC28F8: LateIdStAd
  loc_FC2921: var_94 = "SELECT D.*,D.Code as SearchCode FROM Desig D where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_FC292A: unk_4559F3.Execute var_94, var_B4, -1
  loc_FC2965: var_90 = "INI"
  loc_FC2973: Call Proc_314_27_E7A38C(Proc_5_1_100EC1C(var_90, Me, Me.DGHelp, Me), Me)
  loc_FC297E: Call Proc_314_29_11985B4(Me)
  loc_FC2983: Exit Sub
  loc_FC2984: ' Referenced from: FC2824
  loc_FC298C: Set var_8C = Err()
  loc_FC2992: Call 0.Method_arg_2C (var_90)
  loc_FC29B3: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_FC29C6: Exit Sub
  loc_FC29C7: Exit Sub
End Sub

Private Sub Form_Resize() 'ED2BC8
  'Data Table: 4559E0
  Dim var_8C As Label
  loc_ED2B26: Call 0.Method_arg_50 (var_88)
  loc_ED2B38: Me.LblFormCaption.Caption = var_88
  loc_ED2B51: Me.LblFormCaption.Left = CDbl(0)
  loc_ED2B5D: Set var_A0 = Me.TopCtrl1
  loc_ED2B63: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED2B70: Set var_8C = Me.TopCtrl1
  loc_ED2B76: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED2B90: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED2BAB: Call 0.Method_arg_100 (var_B8)
  loc_ED2BBD: Me.LblFormCaption.Width = var_B8
  loc_ED2BC5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2892C
  'Data Table: 4559E0
  loc_E2890F: Set global_52 = Nothing
  loc_E28921: Set global_56 = Nothing
  loc_E28928: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E286A8
  'Data Table: 4559E0
  loc_E28680: On Error Goto loc_E2869F
  loc_E28697: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2869F: ' Referenced from: E28680
  loc_E2869F: Proc_6_60_E63754(Shift)
  loc_E286A4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFE004
  'Data Table: 4559E0
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFDF38: On Error Goto loc_EFDFBE
  loc_EFDF48: Me.LblUser.Caption = vbNullString
  loc_EFDF5D: Me.LblLDt.Caption = vbNullString
  loc_EFDF65: Call Proc_314_28_E791BC()
  loc_EFDF7F: var_8C = "ADD"
  loc_EFDF8D: Call Proc_314_27_E7A38C(Proc_5_1_100EC1C(var_8C, Me))
  loc_EFDFA3: Set var_88 = Me.Txt
  loc_EFDFA9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFDFB1: var_94.SetFocus
  loc_EFDFBD: Exit Sub
  loc_EFDFBE: ' Referenced from: EFDF38
  loc_EFDFC6: Set var_88 = Err()
  loc_EFDFCC: Call 0.Method_arg_2C (var_8C)
  loc_EFDFED: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFE000: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC981C
  'Data Table: 4559E0
  loc_EC9780: On Error Goto loc_EC9815
  loc_EC97BA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC97BD:   Call Proc_314_31_E84630()
  loc_EC97CE:   Set var_110 = Me
  loc_EC97E5:   Call Proc_314_27_E7A38C(Proc_5_1_100EC1C("INI", var_110))
  loc_EC97F0:   Call Proc_314_31_E84630(global_52)
  loc_EC97F5:   Call Proc_314_29_11985B4()
  loc_EC97FD: Else
  loc_EC9803:   Call 0.Method_arg_1E8 (var_110)
  loc_EC980B:   Call var_110.SetFocus
  loc_EC9814: End If
  loc_EC9814: Exit Sub
  loc_EC9815: ' Referenced from: EC9780
  loc_EC9815: Proc_6_60_E63754()
  loc_EC981A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1063CC0
  'Data Table: 4559E0
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim unk_4559F3 As Connection15
  Dim var_96 As Integer
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_1063A54: On Error Goto loc_1063C67
  loc_1063A65: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_1063A68:   Exit Sub
  loc_1063A69: End If
  loc_1063A9B: var_D4 = "Employee Master"
  loc_1063AE3: If (Proc_6_108_101061C(MemVar_1F95044, "Employee", "Designation", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_1063AE6:   Exit Sub
  loc_1063AE7: End If
  loc_1063B1E: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_1063B2A:   unk_4559F3.BeginTrans var_D0
  loc_1063B31:   var_96 = &HFF
  loc_1063B45:   var_94 = Me.Bookmark 'Variant
  loc_1063B91:   var_118 = "Delete From Desig Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_1063B95:   var_B4 = CStr(var_118)
  loc_1063B9F:   unk_4559F3.Execute var_B4, var_138, -1
  loc_1063BC1:   unk_4559F3.CommitTrans
  loc_1063BC8:   var_96 = 0
  loc_1063BD6:   Me.Requery -1
  loc_1063BE6:   Me.Requery -1
  loc_1063C06:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1063C13:     Me.Bookmark = var_94
  loc_1063C1B:   Else
  loc_1063C2F:     If (Me.EOF = 0) Then
  loc_1063C38:       Me.MoveLast
  loc_1063C3D:     End If
  loc_1063C3D:   End If
  loc_1063C3D:   Call Proc_314_29_11985B4(var_96, var_13C, var_96)
  loc_1063C5E:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_1063C66: End If
  loc_1063C66: Exit Sub
  loc_1063C67: ' Referenced from: 1063A54
  loc_1063C6D: If (var_96 = &HFF) Then
  loc_1063C76:   unk_4559F3.RollbackTrans
  loc_1063C7B: End If
  loc_1063C83: Set var_9C = Err()
  loc_1063C89: Call 0.Method_arg_2C (var_B4, 0)
  loc_1063CAA: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_1063CBD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F64CFC
  'Data Table: 4559E0
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F64BD8: On Error Goto loc_F64CB9
  loc_F64BE9: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F64BEC:   Exit Sub
  loc_F64BED: End If
  loc_F64C04: If (Me.RecordCount > 0) Then
  loc_F64C1C:   var_8C = "EDIT"
  loc_F64C2A:   Call Proc_314_27_E7A38C(Proc_5_1_100EC1C(var_8C, Me))
  loc_F64C40:   Set var_90 = Me.Txt
  loc_F64C46:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F64C4E:   var_98.SetFocus
  loc_F64C5D: Else
  loc_F64C7E:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F64C8E: End If
  loc_F64C9B: Me.LblUser.Caption = vbNullString
  loc_F64CB0: Me.LblLDt.Caption = vbNullString
  loc_F64CB8: Exit Sub
  loc_F64CB9: ' Referenced from: F64BD8
  loc_F64CC1: Set var_90 = Err()
  loc_F64CC7: Call 0.Method_arg_2C (var_8C)
  loc_F64CE8: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F64CFB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BBB8
  'Data Table: 4559E0
  loc_E1BBAD: Me.Global.Unload Me
  loc_E1BBB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F16530
  'Data Table: 4559E0
  Dim Me As Recordset15
  loc_F16440: On Error Goto loc_F164CA
  loc_F1644C: var_88 = Me.RecordCount
  loc_F1645A: If (var_88 <= 0) Then
  loc_F1647E:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F1648E:   Exit Sub
  loc_F1648F: End If
  loc_F16492: MemVar_1F950E4 = "Select Code As SearchCode,Name FROM Desig Order by Name"
  loc_F16499: var_10C = "4000"
  loc_F1649F: Proc_6_126_F1C850(var_10C)
  loc_F164AD: MemVar_1F95120 = Me
  loc_F164C4: Call 0.Method_arg_2B0 (1)
  loc_F164C9: Exit Sub
  loc_F164CA: ' Referenced from: F16440
  loc_F164D2: Set var_110 = Err()
  loc_F164D8: Call 0.Method_arg_1C (var_88)
  loc_F164E9: If (var_88 <> 0) Then
  loc_F164F4:   Set var_110 = Err()
  loc_F164FA:   Call 0.Method_arg_2C (var_10C)
  loc_F1651B:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F1652E: End If
  loc_F1652E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3D088
  'Data Table: 4559E0
  loc_E3D078: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D080: Call Proc_314_29_11985B4(global_52)
  loc_E3D085: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3D388
  'Data Table: 4559E0
  Dim arg_68FF As Double
  loc_E3D378: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D380: Call Proc_314_29_11985B4(global_52)
  loc_E3D385: Exit Sub
  loc_E3D386: arg_68FF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3D148
  'Data Table: 4559E0
  loc_E3D138: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D140: Call Proc_314_29_11985B4(global_52)
  loc_E3D145: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3D0E8
  'Data Table: 4559E0
  Dim MemVar_690074 As Currency
  loc_E3D0D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D0E0: Call Proc_314_29_11985B4(global_52)
  loc_E3D0E5: Exit Sub
  loc_E3D0E6: MemVar_690074 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '109A1E0
  'Data Table: 4559E0
  Dim unk_4559F3 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_12C As String
  Dim var_E4 As Variant
  loc_1099F3C: On Error Goto loc_109A195
  loc_1099F55: unk_4559F3.Execute "SELECT * from Desig order by Name", var_BC, -1
  loc_1099F60: Set var_88 = var_C0
  loc_1099F6F: var_C4 = var_88.RecordCount
  loc_1099F7D: If (var_C4 = 0) Then
  loc_1099F99:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1099FA9:   Exit Sub
  loc_1099FAA: End If
  loc_1099FC0: Set var_C0 = var_88 
  loc_1099FCC: var_12E = CreateFieldDefFile(var_C0, MemVar_1F950B4 & "\DesigMast.ttx")
  loc_1099FD6: Set var_88 = var_C0
  loc_1099FDC: var_AC = CVar(var_12E) 'Integer
  loc_1099FDF: var_98 = var_AC 'Variant
  loc_1099FFB: var_128 = MemVar_1F950B4 & "\DesigMast.RPT"
  loc_109A004: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_109A00F: MemVar_1F951E8 = var_C0
  loc_109A02A: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_109A032: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_109A03E: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_109A057:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_109A05F:   Call 0.Method_arg_20 (var_138)
  loc_109A067:   Call 0.Method_arg_30 (var_128)
  loc_109A0AD:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_109A0B9:     Call 0.Method_arg_50 (var_128)
  loc_109A0C2:     var_12C = "'" & var_128
  loc_109A0DC:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_109A0E4:     Call 0.Method_arg_20 (var_138)
  loc_109A0EC:     Call 0.Method_arg_38 (var_12C & "'")
  loc_109A101:   End If
  loc_109A104: Next var_132 'Integer
  loc_109A122: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_109A12A: Call 0.Method_arg_2C (var_D4)
  loc_109A138: Call 0.Method_arg_150 (var_F4)
  loc_109A143: Call 0.Method_arg_50 (var_128)
  loc_109A14D: Set var_138 = Nothing
  loc_109A167: Set var_C0 = MemVar_1F951E8 
  loc_109A173: Proc_6_99_1484404(var_C0, 0, var_128)
  loc_109A17E: MemVar_1F951E8 = var_C0
  loc_109A191: Set var_88 = Nothing
  loc_109A194: Exit Sub
  loc_109A195: ' Referenced from: 1099F3C
  loc_109A19D: Set var_C0 = Err()
  loc_109A1A3: Call 0.Method_arg_2C (var_128, &HFF)
  loc_109A1AE: Call 0.Method_arg_50 (var_12C)
  loc_109A1CA: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_109A1DD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0AB48
  'Data Table: 4559E0
  Dim Me As Recordset15
  loc_E0AB3F: Me.Requery -1
  loc_E0AB44: Exit Sub
  loc_E0AB45: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1253768
  'Data Table: 4559E0
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_4559F3 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  loc_125323C: On Error Goto loc_1253715
  loc_1253243: var_86 = CByte(0) 'Byte
  loc_1253252: Set var_90 = Me.Txt
  loc_1253258: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1253281: If (Proc_183_19_E8E68C(var_94, "Name") = 0) Then
  loc_125328B:   Call Txt_GotFocus(CInt(0))
  loc_1253290:   Exit Sub
  loc_1253291: End If
  loc_1253295: Set var_90 = Me.TopCtrl1
  loc_125329B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_94)
  loc_12532B4: If (CStr() = "Add") Then
  loc_12532BF:   If (MemVar_1F953B0 = "A") Then
  loc_12532C8:     var_D4 = 0
  loc_12532E5:     var_9C = "Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From Desig where Site_Code='" & MemVar_1F95070
  loc_12532F5:     unk_4559F3.Execute CStr() & "'", var_B0, -1
  loc_12532FD:     var_90 = var_90.Fields
  loc_1253305:     var_D4 = var_94.Item(var_94)
  loc_125330D:     var_98 = var_98.Value
  loc_125331C:     global_64 = CStr(var_E4)
  loc_125333C:   Else
  loc_1253344:     If (MemVar_1F953B0 = "S") Then
  loc_125334D:       var_D4 = 0
  loc_125336A:       var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From Desig where site_code='" & MemVar_1F95070
  loc_1253371:       var_B4 = CStr() & "'"
  loc_125337A:       unk_4559F3.Execute var_B4, var_B0, -1
  loc_1253382:       var_90 = var_90.Fields
  loc_125338A:       var_D4 = var_94.Item(var_94)
  loc_1253392:       var_98 = var_98.Value
  loc_12533A1:       global_64 = CStr(var_E4)
  loc_12533BE:     End If
  loc_12533BE:   End If
  loc_12533CB:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_12533F1:   var_E4 = Format(global_64, "000")
  loc_12533F9:   var_108 = (1 + var_E4)
  loc_1253404:   global_64 = CStr(var_108)
  loc_1253419: Else
  loc_1253436:   var_94 = Me.Fields.Item("Code")
  loc_125344D:   global_64 = CStr(var_94.Value)
  loc_125345E: End If
  loc_1253467: unk_4559F3.BeginTrans var_10C
  loc_1253470: var_86 = CByte(1) 'Byte
  loc_1253478: Set var_90 = Me.TopCtrl1
  loc_125347E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(1)
  loc_1253497: If (CStr(var_F8) = "Add") Then
  loc_12534B1:   var_9C = "Insert Into Desig(Code,Name,Site_Code,U_Name,U_EntDt,U_AE,Logsite_Code) Values('" & global_64
  loc_12534C9:   Set var_90 = Me.Txt
  loc_12534CF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_9C & "','", var_184)
  loc_12534D7:   -1 = var_94.Text
  loc_1253511:   Proc_6_8_EB1974(var_E4, CVar(Proc_6_14_EF402C(CVar(var_98 & var_B4 & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',"), var_E4)))
  loc_1253543:   unk_4559F3.Execute CStr(var_E4 & var_E4 & ",'A','" & CVar(MemVar_1F95078) & "')"), , 
  loc_125357C: Else
  loc_125359A:   Set var_90 = Me.Txt
  loc_12535A0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE Desig SET Name='")
  loc_12535A8:   var_184 = var_94.Text
  loc_12535B1:   var_B4 = -1 & var_9C
  loc_12535D4:   var_F8 = CVar(var_B4 & "',SITE_CODE='" & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_12535E2:   Proc_6_8_EB1974(var_E4, CVar(Proc_6_14_EF402C(var_F8)))
  loc_12535EA:   var_108 = var_98 & var_E4 
  loc_12535EE:   var_C4 = " ,U_AE='E' WHERE Code='"
  loc_1253617:   unk_4559F3.Execute CStr(var_108 & var_C4 & CVar(global_64) & "'"), , 
  loc_1253649: End If
  loc_125364F: unk_4559F3.CommitTrans
  loc_1253658: var_86 = CByte(0) 'Byte
  loc_1253667: Me.Requery -1
  loc_1253677: Me.Requery -1
  loc_12536A4: Me.Find "SearchCode='" & global_64 & "'", 0, 1
  loc_12536B4: Set var_90 = Me.TopCtrl1
  loc_12536BA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_C4)
  loc_12536D3: If (CStr() = "Add") Then
  loc_12536D6:   Call TopCtrl1_UnknownEvent_A()
  loc_12536DB:   Exit Sub
  loc_12536DC: End If
  loc_12536F1: var_9C = "INI"
  loc_12536FF: Call Proc_314_27_E7A38C(Proc_5_1_100EC1C(var_9C, Me))
  loc_125370A: Call Proc_314_31_E84630(global_52)
  loc_125370F: Call Proc_314_29_11985B4()
  loc_1253714: Exit Sub
  loc_1253715: ' Referenced from: 125323C
  loc_125371E: If (CInt(var_86) = 1) Then
  loc_1253727:   unk_4559F3.RollbackTrans
  loc_125372C: End If
  loc_1253734: Set var_90 = Err()
  loc_125373A: Call 0.Method_arg_2C (var_9C)
  loc_1253753: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_1253766: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E39244
  'Data Table: 4559E0
  loc_E39238: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3923B:   Call DGHelp_UnknownEvent_9()
  loc_E39240: End If
  loc_E39240: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC41B4
  'Data Table: 4559E0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC412A: On Error Goto loc_EC416F
  loc_EC4133: Me.MoveFirst
  loc_EC414D: var_8C = "code='" & MyValue
  loc_EC415D: Me.Find var_8C & "'", 0, 1
  loc_EC4169: Call Proc_314_29_11985B4(var_A0)
  loc_EC416E: Exit Sub
  loc_EC416F: ' Referenced from: EC412A
  loc_EC4177: Set var_A4 = Err()
  loc_EC417D: Call 0.Method_arg_2C (var_8C)
  loc_EC419E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC41B1: Exit Sub
  loc_EC41B2: Exit Sub
End Sub

Public Sub Proc_314_27_E7A38C(arg_C) 'E7A38C
  'Data Table: 4559E0
  Dim var_98 As TextBox
  loc_E7A33A: Set var_8C = Me.Txt
  loc_E7A340: Call 0.Method_Proc_314_27_E7A38CC (var_8E, var_86)
  loc_E7A350: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A366:   Set var_8C = Me.Txt
  loc_E7A36C:   Call 0.Method_Proc_314_27_E7A38C0 (CInt(var_86), var_98)
  loc_E7A374:   var_98.Enabled = arg_C
  loc_E7A383: Next var_92 'Byte
  loc_E7A389: Exit Sub
End Sub

Public Sub Proc_314_28_E791BC
  'Data Table: 4559E0
  Dim var_98 As TextBox
  loc_E7916A: Set var_8C = Me.Txt
  loc_E79170: Call 0.Method_Proc_314_28_E791BCC (var_8E, var_86)
  loc_E79180: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79196:   Set var_8C = Me.Txt
  loc_E7919C:   Call 0.Method_Proc_314_28_E791BC0 (CInt(var_86), var_98)
  loc_E791A4:   var_98.Text = vbNullString
  loc_E791B3: Next var_92 'Byte
  loc_E791B9: Exit Sub
End Sub

Public Sub Proc_314_29_11985B4
  'Data Table: 4559E0
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B8 As Fields15
  Dim var_B4 As String
  Dim var_CC As TextBox
  loc_11981E8: On Error Goto loc_1198570
  loc_11981F1: Proc_183_45_E5CCA8(global_52)
  loc_119820D: If (Me.RecordCount <= 0) Then
  loc_1198210:   Call Proc_314_28_E791BC()
  loc_1198218: Else
  loc_11982C1:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_1198309:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_Name")))))
  loc_1198389:   var_CC = Me.Fields.Item("U_AE")
  loc_11983A2:   var_130 = "entdt :   "
  loc_11983AD:   var_110 = "Last Update :   "
  loc_11983EA:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_CC)) = "E"), var_110, var_130))
  loc_1198432:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_EntDt")))))
  loc_119849E:   global_64 = CStr(Me.Fields.Item("Name").Value)
  loc_11984EB:   Set var_B8 = Me.Txt
  loc_11984F1:   Call 0.Method_Proc_314_29_11985B40 (CInt(0), var_CC)
  loc_11984F9:   var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_119853D:   var_B4 = CStr(Me.Fields.Item("Code").Value)
  loc_119854B:   Set var_B8 = Me.Txt
  loc_1198551:   Call 0.Method_Proc_314_29_11985B40 (CInt(0), var_CC)
  loc_1198559:   var_CC.Tag = var_B4
  loc_119856F: End If
  loc_119856F: Exit Sub
  loc_1198570: ' Referenced from: 11981E8
  loc_1198578: Set var_8C = Err()
  loc_119857E: Call 0.Method_arg_2C (var_B4)
  loc_119859F: MsgBox(CVar(var_B4), &H40, "Information", var_110, var_130)
  loc_11985B2: Exit Sub
End Sub

Public Sub Proc_314_30_1083D28
  'Data Table: 4559E0
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4559F3 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1083ABB: If (Me.RecordCount = 0) Then
  loc_1083ABE:   Proc_314_30_1083D28 = 
  loc_1083AC4: End If
  loc_1083AC8: Set var_90 = Me.TopCtrl1
  loc_1083ACE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1083AE7: If (CStr() = "Add") Then
  loc_1083B25:   Set var_90 = Me.Txt
  loc_1083B2B:   Call 0.Method_Proc_314_30_1083D280 (CInt(0), var_A8, var_AC, "Select Count(*) From Desig Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1083B4C:   unk_4559F3.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1083B5C:    = var_D0.Item()
  loc_1083B64:    = var_E4.Value
  loc_1083B95:   If (var_A8.Text.Fields > 0) Then
  loc_1083BB3:     var_A0 = "Duplicate Name"
  loc_1083BB9:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1083BD4:     Set var_90 = Me.Txt
  loc_1083BDA:     Call 0.Method_Proc_314_30_1083D280 (CInt(0))
  loc_1083BE2:     var_A8.SetFocus
  loc_1083BF3:     Proc_314_30_1083D28 = &HFF
  loc_1083BF9:   End If
  loc_1083BFC: Else
  loc_1083C37:   Set var_90 = Me.Txt
  loc_1083C3D:   Call 0.Method_Proc_314_30_1083D280 (CInt(0), var_A8, var_AC, "Select Count(*) From Desig Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1083C6F:   unk_4559F3.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_1083C7F:    = var_D0.Item(var_A8)
  loc_1083C87:    = var_E4.Value
  loc_1083CBC:   If (var_A8.Text.Fields > 0) Then
  loc_1083CE0:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1083CFB:     Set var_90 = Me.Txt
  loc_1083D01:     Call 0.Method_Proc_314_30_1083D280 (CInt(0))
  loc_1083D09:     var_A8.SetFocus
  loc_1083D1A:     Proc_314_30_1083D28 = &HFF
  loc_1083D20:   End If
  loc_1083D20: End If
  loc_1083D20: Proc_314_30_1083D28 = var_A8
End Sub

Public Sub Proc_314_31_E84630
  'Data Table: 4559E0
  loc_E845DC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E845EE:   Me.DGHelp.Visible = False
  loc_E845F6: End If
  loc_E84612: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E84624:   Me.FGPoint.Visible = False
  loc_E8462C: End If
  loc_E8462C: Exit Sub
End Sub

Public Sub Proc_314_32_EE1AA0(arg_C) 'EE1AA0
  'Data Table: 4559E0
  Dim var_8C As TextBox
  loc_EE19F4: Call Proc_314_31_E84630()
  loc_EE1A04: Set var_88 = Me.Txt
  loc_EE1A0A: Call 0.Method_Proc_314_32_EE1AA00 (CInt(0))
  loc_EE1A33: If (Proc_6_27_EA61EC(var_8C, "Designation Name") = 0) Then
  loc_EE1A36:   Exit Sub
  loc_EE1A37: End If
  loc_EE1A6E: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE1A71:   Call TopCtrl1_UnknownEvent_16()
  loc_EE1A79: Else
  loc_EE1A83:   Set var_88 = Me.Txt
  loc_EE1A89:   Call 0.Method_Proc_314_32_EE1AA00 (arg_C, var_8C)
  loc_EE1A91:   var_8C.SetFocus
  loc_EE1A9D: End If
  loc_EE1A9D: Exit Sub
End Sub

Public Sub Proc_314_33_EDCAFC
  'Data Table: 4559E0
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_EDCA5A: Set var_88 = Me.Txt
  loc_EDCA60: Call 0.Method_Proc_314_33_EDCAFC0 (CInt(0), var_8C)
  loc_EDCA7F: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_EDCA9B: Set var_B4 = Me.Txt
  loc_EDCAA1: Call 0.Method_Proc_314_33_EDCAFC0 (CInt(0), var_B8)
  loc_EDCABC: Set var_88 = Me.Txt
  loc_EDCAC2: Call 0.Method_Proc_314_33_EDCAFC0 (CInt(0), var_8C)
  loc_EDCADA: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_EDCAE9: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_EDCAFB: Exit Sub
End Sub
