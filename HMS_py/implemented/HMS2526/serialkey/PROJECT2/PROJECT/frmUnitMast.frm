VERSION 5.00
Begin VB.Form frmUnitMast
  Caption = "Unit Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3285
    Top = 2580
    Width = 1440
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin Frame FrmList
    Left = 12360
    Top = 2070
    Width = 1935
    Height = 1785
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 15
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 2
    End
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3285
    Top = 2265
    Width = 4680
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 4
  End
  Begin DataGrid DGHelp
    Left = 9240
    Top = 840
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSFlexGrid FGPoint
    Left = 9570
    Top = 5100
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 6
  End
  Begin DataGrid DGRest
    Left = 8040
    Top = 3120
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin DataGrid DGBarCode
    Left = 8640
    Top = 1320
    Width = 3855
    Height = 2820
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin Label LblName
    Caption = "Active"
    Index = 1
    ForeColor = &HC00000&
    Left = 2160
    Top = 2580
    Width = 585
    Height = 240
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 12
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4440
    Top = 5760
    Width = 2790
    Height = 285
    TabIndex = 11
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
    Left = 1065
    Top = 5760
    Width = 2880
    Height = 255
    TabIndex = 10
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
  Begin Label LblName
    Caption = "Unit"
    Index = 0
    ForeColor = &HC00000&
    Left = 2160
    Top = 2265
    Width = 375
    Height = 240
    TabIndex = 9
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

Attribute VB_Name = "frmUnitMast"


Private Sub DGHelp_UnknownEvent_9 'F3E0F4
  'Data Table: 471738
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3DFEB: Me.DGHelp.Visible = False
  loc_F3E00A: If (Me.RecordCount > 0) Then
  loc_F3E049:   Set var_B4 = Me.Txt
  loc_F3E04F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3E057:   var_B8.Text = CStr(Me.Fields.Item("Unit").Value)
  loc_F3E08A:   var_B0 = Me.Fields.Item("Active")
  loc_F3E0A9:   Set var_B4 = Me.Txt
  loc_F3E0AF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3E0B7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3E0CD: End If
  loc_F3E0D8: Set var_A8 = Me.Txt
  loc_F3E0DE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1))
  loc_F3E0E6: var_B0.SetFocus
  loc_F3E0F2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E70C04
  'Data Table: 471738
  loc_E70BC2: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E70BD9: Set var_8C = Me.FGPoint
  loc_E70BF5: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(1))
  loc_E70C03: Exit Sub
End Sub

Private Sub Form_Load() '108F764
  'Data Table: 471738
  Dim var_88 As Label
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As String
  Dim unk_47174C As Connection15
  Dim var_E0 As Variant
  loc_108F4D0: On Error Goto loc_108F71D
  loc_108F4E2: Me.LblUser.Left = CDbl(13500)
  loc_108F4F9: Me.LblUser.Top = CDbl(7800)
  loc_108F510: Me.LblLDt.Top = CDbl(8160)
  loc_108F527: Me.LblLDt.Left = CDbl(13500)
  loc_108F536: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_108F549: Set var_88 = Me.Txt
  loc_108F54F: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_108F56E: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_108F58A: Set var_B4 = Me.Txt
  loc_108F590: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_108F5B1: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_108F5C9: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_108F5D8: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_108F5FE: var_C4 = "SELECT Name as Unit, Status as Active,Site_code,LOGSITE_CODE,U_AE,U_Name,U_EntDt from UnitMast WHERE (Site_code='" & MemVar_1F95070
  loc_108F61C: unk_47174C.Execute var_C4 & "' and LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_E0, -1
  loc_108F64F: CVarUnk
  loc_108F654: VerifyVarObj
  loc_108F660: LateIdStAd
  loc_108F682: var_C4 = "SELECT Name as Unit, Status as Active,Site_code,LOGSITE_CODE,U_AE,U_Name,U_EntDt from UnitMast WHERE (Site_code='" & MemVar_1F95070
  loc_108F6A0: unk_47174C.Execute var_C4 & "' and LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_E0, -1
  loc_108F6D6: Set var_88 = Me
  loc_108F6DF: var_C4 = "INI"
  loc_108F6ED: Call Proc_298_27_E70E58(Proc_5_1_100EC1C(var_C4, var_88, Me.DGHelp, var_88), var_88)
  loc_108F701: Call 0.Method_arg_160 (var_88, Me.Txt)
  loc_108F70F: Call 0.Method_arg_164 (var_88)
  loc_108F717: Call Proc_298_29_11EAB30(var_88)
  loc_108F71C: Exit Sub
  loc_108F71D: ' Referenced from: 108F4D0
  loc_108F725: Set var_88 = Err()
  loc_108F72B: Call 0.Method_arg_2C (var_C4)
  loc_108F74C: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_108F75F: Exit Sub
  loc_108F760: Exit Sub
End Sub

Private Sub Form_Resize() 'ED9108
  'Data Table: 471738
  Dim var_8C As Label
  loc_ED9066: Call 0.Method_arg_50 (var_88)
  loc_ED9078: Me.LblFormCaption.Caption = var_88
  loc_ED9091: Me.LblFormCaption.Left = CDbl(0)
  loc_ED909D: Set var_A0 = Me.TopCtrl1
  loc_ED90A3: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED90B0: Set var_8C = Me.TopCtrl1
  loc_ED90B6: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED90D0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED90EB: Call 0.Method_arg_100 (var_B8)
  loc_ED90FD: Me.LblFormCaption.Width = var_B8
  loc_ED9105: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E297E8
  'Data Table: 471738
  loc_E297CB: Set global_52 = Nothing
  loc_E297DD: Set global_56 = Nothing
  loc_E297E4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8B6F8
  'Data Table: 471738
  loc_E8B694: On Error Goto loc_E8B6B4
  loc_E8B6AB: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8B6B3: Exit Sub
  loc_E8B6B4: ' Referenced from: E8B694
  loc_E8B6BC: Set var_88 = Err()
  loc_E8B6C2: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8B6E3: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8B6F6: Exit Sub
  loc_E8B6F7: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10089B8
  'Data Table: 471738
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_10087C6: Set var_88 = Me.Txt
  loc_10087CC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10087DA: Proc_6_74_E23240(var_8C)
  loc_10087E6: Call Proc_298_31_E86460(var_8C)
  loc_10087EE: var_92 = Index
  loc_10087F9: If (var_92 = CInt(1)) Then
  loc_1008813:   If (Me.RecordCount > 0) Then
  loc_1008821:     Set var_8C = Me.FGPoint
  loc_1008839:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_1008847:   End If
  loc_1008895:   Set var_88 = Me.Txt
  loc_100889B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_10088A3:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10088BB:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_10088CB:     Set var_88 = Me.Txt
  loc_10088D1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10088D9:     var_8C.Tag = vbNullString
  loc_10088E5:     Exit Sub
  loc_10088E6:   End If
  loc_10088F3:   Set var_88 = Me.Txt
  loc_10088F9:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1008901:   var_A0 = var_8C.Text
  loc_1008913:   var_B0 = "Unit"
  loc_100894E:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1008957:     Me.MoveFirst
  loc_100897A:     Set var_88 = Me.Txt
  loc_1008980:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Unit='")
  loc_1008988:     0 = var_8C.Text
  loc_10089A1:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_10089B6:   End If
  loc_10089B6: End If
  loc_10089B6: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FBCC0C
  'Data Table: 471738
  Dim Me As Recordset15
  loc_FBCA6E: If (CLng(Shift) = &H1B) Then
  loc_FBCA71:   Call Proc_298_31_E86460()
  loc_FBCA76:   Exit Sub
  loc_FBCA77: End If
  loc_FBCA85: If (KeyCode = CInt(1)) Then
  loc_FBCAA5:   Set var_9C = Me.FGPoint
  loc_FBCAD7:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(1), global_56, Shift)
  loc_FBCB44:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FBCB4B:     Set var_9C = Me.DGHelp
  loc_FBCB6A:     Proc_6_138_106E830(var_9C, global_56, KeyCode, Me.FGPoint, 0)
  loc_FBCB78:   End If
  loc_FBCB78: End If
  loc_FBCB94: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FBCBB5:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(2))) Then
  loc_FBCBBB:     Call Proc_298_32_E93448(KeyCode, 1, var_9C)
  loc_FBCBC3:   Else
  loc_FBCBD8:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FBCBE1:       Proc_6_75_E5335C(Shift, arg_14)
  loc_FBCBE9:     Else
  loc_FBCBFC:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(1))) Then
  loc_FBCC05:         Proc_6_76_E533C8(Shift, arg_14)
  loc_FBCC0A:       End If
  loc_FBCC0A:     End If
  loc_FBCC0A:   End If
  loc_FBCC0A: End If
  loc_FBCC0A: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EFF73C
  'Data Table: 471738
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EFF672: If (KeyAscii = CInt(2)) Then
  loc_EFF69E:   If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_EFF6AE:     Set var_CC = Me.Txt
  loc_EFF6B4:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFF6BC:     var_D0.Text = "Active"
  loc_EFF6CB:   Else
  loc_EFF6D2:     var_98 = Chr(CLng(arg_10))
  loc_EFF6F4:     If (Ucase(var_98) = "N") Then
  loc_EFF704:       Set var_CC = Me.Txt
  loc_EFF70A:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFF712:       var_D0.Text = "Non Active"
  loc_EFF71E:     End If
  loc_EFF71E:   End If
  loc_EFF720:   arg_10 = 0
  loc_EFF723: End If
  loc_EFF729: Proc_6_133_E7FB08(var_98, arg_10)
  loc_EFF732: arg_10 = CInt(var_98)
  loc_EFF738: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC6300
  'Data Table: 471738
  loc_EC6272: If (KeyCode = CInt(2)) Then
  loc_EC6291:   If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_EC629E:     var_A4 = "Unit"
  loc_EC62BD:     Proc_6_80_FF1F20(Me.Txt, CInt(1), global_56)
  loc_EC62EF:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC62FD:   End If
  loc_EC62FD: End If
  loc_EC62FD: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B5EC
  'Data Table: 471738
  loc_E4B5CA: Set var_88 = Me.Txt
  loc_E4B5D0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B5DE: Proc_6_73_E23294(var_8C)
  loc_E4B5EA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F010D8
  'Data Table: 471738
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As TextBox
  loc_F01003: var_86 = Cancel
  loc_F0100E: If (var_86 = CInt(1)) Then
  loc_F01014:   Call Proc_298_30_1085DA4(var_88)
  loc_F0101F:   If (var_88 = &HFF) Then
  loc_F01024:     arg_10 = &HFF
  loc_F01027:     Exit Sub
  loc_F01028:   End If
  loc_F0102B: Else
  loc_F01033:   If (var_86 = CInt(2)) Then
  loc_F01040:     Set var_8C = Me.Txt
  loc_F01046:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F01081:     If (Ucase(Left(CVar(var_90), 1)) = "A") Then
  loc_F01091:       Set var_8C = Me.Txt
  loc_F01097:       Call 0.Method_Txt_Validate0 (Cancel, var_90, "Active")
  loc_F0109F:       var_90.Text = arg_10
  loc_F010AE:     Else
  loc_F010BB:       Set var_8C = Me.Txt
  loc_F010C1:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F010C9:       var_90.Text = "Non Active"
  loc_F010D5:     End If
  loc_F010D5:   End If
  loc_F010D5: End If
  loc_F010D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAA5B4
  'Data Table: 471738
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EAA528: On Error Goto loc_EAA5AE
  loc_EAA54E: Call Proc_298_27_E70E58(Proc_5_1_100EC1C("ADD", Me))
  loc_EAA559: Call Proc_298_28_EAAA68(global_52)
  loc_EAA569: Set var_8C = Me.Txt
  loc_EAA56F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EAA577: var_94.SetFocus
  loc_EAA590: Me.LblUser.Caption = vbNullString
  loc_EAA5A5: Me.LblLDt.Caption = vbNullString
  loc_EAA5AD: Exit Sub
  loc_EAA5AE: ' Referenced from: EAA528
  loc_EAA5AE: Proc_6_60_E63754(var_94)
  loc_EAA5B3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC63DC
  'Data Table: 471738
  loc_EC6344: On Error Goto loc_EC63D4
  loc_EC637E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC638D:   Set var_110 = Me
  loc_EC63A4:   Call Proc_298_27_E70E58(Proc_5_1_100EC1C("INI", var_110))
  loc_EC63AF:   Call Proc_298_31_E86460(global_52)
  loc_EC63B4:   Call Proc_298_29_11EAB30()
  loc_EC63BC: Else
  loc_EC63C2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC63CA:   Call var_110.SetFocus
  loc_EC63D3: End If
  loc_EC63D3: Exit Sub
  loc_EC63D4: ' Referenced from: EC6344
  loc_EC63D4: Proc_6_60_E63754()
  loc_EC63D9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11D3474
  'Data Table: 471738
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_47174C As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_11D3030: On Error Goto loc_11D3424
  loc_11D3041: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_11D3044:   Exit Sub
  loc_11D3045: End If
  loc_11D3077: var_D0 = "Entry"
  loc_11D30BF: If (Proc_6_108_101061C(MemVar_1F95044, "Stock", "Unit", CStr(Me.Fields.Item("Unit").Value)) = 0) Then
  loc_11D30C2:   Exit Sub
  loc_11D30C3: End If
  loc_11D30F5: var_D0 = "Entry"
  loc_11D313D: If (Proc_6_108_101061C(MemVar_1F95044, "Stock", "RecdUnit", CStr(Me.Fields.Item("Unit").Value), 0) = 0) Then
  loc_11D3140:   Exit Sub
  loc_11D3141: End If
  loc_11D31BB: If (Proc_6_108_101061C(MemVar_1F95044, "POrder1", "Unit", CStr(Me.Fields.Item("Unit").Value), 0, "Purchase Order") = 0) Then
  loc_11D31BE:   Exit Sub
  loc_11D31BF: End If
  loc_11D31F6: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_11D3202:   unk_47174C.BeginTrans var_CC
  loc_11D3218:   var_94 = Me.Bookmark 'Variant
  loc_11D3264:   var_114 = "Delete From UnitMast Where Name='" & Me.Fields.Item("Unit").Value & "'" 
  loc_11D3272:   unk_47174C.Execute CStr(var_114), var_134, -1
  loc_11D32BD:   var_164 = 0
  loc_11D32D0:   var_15C = 0
  loc_11D32DB:   var_158 = 0
  loc_11D32EE:   var_150 = 0
  loc_11D32F9:   var_14C = 0
  loc_11D330C:   var_144 = 0
  loc_11D334C:   var_B0 = "UniMast"
  loc_11D3355:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B0, "NAme", &HC8, CStr(Me.Fields.Item("Unit").Value), 0, 0, 0)
  loc_11D3383:   unk_47174C.CommitTrans
  loc_11D3393:   Me.Requery -1
  loc_11D33A3:   Me.Requery -1
  loc_11D33C3:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11D33D0:     Me.Bookmark = var_94
  loc_11D33D8:   Else
  loc_11D33EC:     If (Me.EOF = 0) Then
  loc_11D33F5:       Me.MoveLast
  loc_11D33FA:     End If
  loc_11D33FA:   End If
  loc_11D33FA:   Call Proc_298_29_11EAB30(var_144, 0, var_14C, var_150)
  loc_11D341B:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_11D3423: End If
  loc_11D3423: Exit Sub
  loc_11D3424: ' Referenced from: 11D3030
  loc_11D342A: unk_47174C.RollbackTrans
  loc_11D3437: Set var_98 = Err()
  loc_11D343D: Call 0.Method_arg_2C (var_B0, 0, var_158)
  loc_11D345E: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_11D3471: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF0A94
  'Data Table: 471738
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EF09C4: On Error Goto loc_EF0A8C
  loc_EF09D5: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_EF09D8:   Exit Sub
  loc_EF09D9: End If
  loc_EF09FC: Call Proc_298_27_E70E58(Proc_5_1_100EC1C("EDIT", Me))
  loc_EF0A15: Set var_8C = Me.Txt
  loc_EF0A1B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_EF0A2E: global_64 = var_94.Text
  loc_EF0A49: Me.LblUser.Caption = vbNullString
  loc_EF0A5E: Me.LblLDt.Caption = vbNullString
  loc_EF0A71: Set var_8C = Me.Txt
  loc_EF0A77: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_EF0A7F: var_94.SetFocus
  loc_EF0A8B: Exit Sub
  loc_EF0A8C: ' Referenced from: EF09C4
  loc_EF0A8C: Proc_6_60_E63754(global_52)
  loc_EF0A91: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16800
  'Data Table: 471738
  Dim var_3F01 As Double
  loc_E167F5: Me.Global.Unload Me
  loc_E167FD: Exit Sub
  loc_E167FE: var_3F01 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F17EC8
  'Data Table: 471738
  Dim Me As Recordset15
  loc_F17DD8: On Error Goto loc_F17E62
  loc_F17DE4: var_88 = Me.RecordCount
  loc_F17DF2: If (var_88 <= 0) Then
  loc_F17E16:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F17E26:   Exit Sub
  loc_F17E27: End If
  loc_F17E2A: MemVar_1F950E4 = "SELECT Name AS SEARCHCODE,Name,Status From UnitMast ORDER BY Name"
  loc_F17E34: MemVar_1F95120 = Me
  loc_F17E3B: var_10C = "3900,1000"
  loc_F17E41: Proc_6_126_F1C850(var_10C)
  loc_F17E5C: Call 0.Method_arg_2B0 (1)
  loc_F17E61: Exit Sub
  loc_F17E62: ' Referenced from: F17DD8
  loc_F17E6A: Set var_110 = Err()
  loc_F17E70: Call 0.Method_arg_1C (var_88)
  loc_F17E81: If (var_88 <> 0) Then
  loc_F17E8C:   Set var_110 = Err()
  loc_F17E92:   Call 0.Method_arg_2C (var_10C)
  loc_F17EB3:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F17EC6: End If
  loc_F17EC6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E31B08
  'Data Table: 471738
  loc_E31AF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31B00: Call Proc_298_29_11EAB30(global_52)
  loc_E31B05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E31808
  'Data Table: 471738
  loc_E317F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31800: Call Proc_298_29_11EAB30(global_52)
  loc_E31805: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E31868
  'Data Table: 471738
  loc_E31858: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31860: Call Proc_298_29_11EAB30(global_52)
  loc_E31865: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E31AA8
  'Data Table: 471738
  loc_E31A98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31AA0: Call Proc_298_29_11EAB30(global_52)
  loc_E31AA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1075778
  'Data Table: 471738
  Dim unk_47174C As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_10754F8: On Error Goto loc_107572F
  loc_1075511: unk_47174C.Execute "select Name,Status,U_Name,U_AE,U_Entdt FROM UnitMast  ORDER BY Name", var_BC, -1
  loc_107551C: Set var_88 = var_C0
  loc_107552B: var_C4 = var_88.RecordCount
  loc_1075539: If (var_C4 = 0) Then
  loc_1075555:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1075565:   Exit Sub
  loc_1075566: End If
  loc_1075575: var_12C = MemVar_1F950B4 & "\Unit.ttx"
  loc_107557C: Set var_C0 = var_88 
  loc_1075588: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_1075592: Set var_88 = var_C0
  loc_1075598: var_AC = CVar(var_12E) 'Integer
  loc_107559B: var_98 = var_AC 'Variant
  loc_10755B7: var_128 = MemVar_1F950B4 & "\Unit.RPT"
  loc_10755C0: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_10755CB: MemVar_1F951E8 = var_C0
  loc_10755E6: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_10755EE: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10755FA: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_1075613:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_107561B:   Call 0.Method_arg_20 (var_138)
  loc_1075623:   Call 0.Method_arg_30 (var_128)
  loc_1075669:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_107567F:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1075687:     Call 0.Method_arg_20 (var_138)
  loc_107568F:     Call 0.Method_arg_38 ("'Unit Master'")
  loc_107569B:   End If
  loc_107569E: Next var_132 'Integer
  loc_10756BC: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_10756C4: Call 0.Method_arg_2C (var_D4)
  loc_10756D2: Call 0.Method_arg_150 (var_F4)
  loc_10756DD: Call 0.Method_arg_50 (var_128)
  loc_10756E7: Set var_138 = Nothing
  loc_1075701: Set var_C0 = MemVar_1F951E8 
  loc_107570D: Proc_6_99_1484404(var_C0, 0, var_128)
  loc_1075718: MemVar_1F951E8 = var_C0
  loc_107572B: Set var_88 = Nothing
  loc_107572E: Exit Sub
  loc_107572F: ' Referenced from: 10754F8
  loc_1075737: Set var_C0 = Err()
  loc_107573D: Call 0.Method_arg_2C (var_128, &HFF)
  loc_1075748: Call 0.Method_arg_50 (var_12C)
  loc_1075764: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1075777: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A4E8
  'Data Table: 471738
  Dim Me As Recordset15
  loc_E0A4DF: Me.Requery -1
  loc_E0A4E4: Exit Sub
  loc_E0A4E5: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '11F567C
  'Data Table: 471738
  Dim unk_47174C As Connection15
  Dim var_9C As String
  Dim var_94 As TextBox
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_108 As TextBox
  Dim var_13C As Variant
  Dim var_14C As String
  Dim var_20C As Variant
  Dim var_24C As Variant
  Dim Me As Recordset15
  loc_11F5230: On Error Goto loc_11F5629
  loc_11F5237: var_86 = CByte(0) 'Byte
  loc_11F5246: Set var_90 = Me.Txt
  loc_11F524C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_11F5275: If (Proc_6_27_EA61EC(var_94, "Unit") = 0) Then
  loc_11F527F:   Call Txt_GotFocus(CInt(1))
  loc_11F5284:   Exit Sub
  loc_11F5285: End If
  loc_11F5288: Call Proc_298_30_1085DA4(var_9E)
  loc_11F5293: If (var_9E = &HFF) Then
  loc_11F5296:   Exit Sub
  loc_11F5297: End If
  loc_11F52A0: unk_47174C.BeginTrans var_A4
  loc_11F52A9: var_86 = CByte(1) 'Byte
  loc_11F52B1: Set var_90 = Me.TopCtrl1
  loc_11F52B7: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_11F52BF: var_9C = CStr()
  loc_11F52D0: If (var_9C = "Add") Then
  loc_11F52F3:   Set var_90 = Me.Txt
  loc_11F52F9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_9C, "Insert Into UnitMast(Name,Status,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('")
  loc_11F5301:   var_290 = var_94.Text
  loc_11F5317:   var_E4 = -1 & Trim(CVar(var_9C)) 
  loc_11F5320:   var_104 = var_E4 & "','" 
  loc_11F5332:   Set var_98 = Me.Txt
  loc_11F5338:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_108, var_10C)
  loc_11F5340:   var_104 = var_108.Text
  loc_11F5397:   Proc_6_7_F26918(var_1FC, Date)
  loc_11F53B2:   var_24C = var_294 & Trim(CVar(var_10C)) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_1FC & ",'A','" & CVar(MemVar_1F95078) 
  loc_11F53C9:   unk_47174C.Execute CStr(var_24C & "' )"), , 
  loc_11F540A: Else
  loc_11F5427:   Set var_90 = Me.Txt
  loc_11F542D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, "UPDATE UnitMast SET Name='")
  loc_11F545C:   Set var_98 = Me.Txt
  loc_11F5462:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_108, var_290 & Trim(CVar(var_94)) & "',Status='")
  loc_11F5479:   var_13C = -1 & Trim(CVar(var_108)) 
  loc_11F547D:   var_14C = "',SITE_CODE='"
  loc_11F54BA:   Proc_6_7_F26918(var_1FC, Date)
  loc_11F54C2:   var_20C = var_294 & Trim(CVar(var_10C)) & var_14C & CVar(MemVar_1F95070) & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_1FC 
  loc_11F54EF:   unk_47174C.Execute CStr(var_20C & " ,U_AE='E' WHERE Name='" & CVar(global_64) & "'"), var_294, 
  loc_11F5529: End If
  loc_11F552F: unk_47174C.CommitTrans
  loc_11F5538: var_86 = CByte(0) 'Byte
  loc_11F5547: Me.Requery -1
  loc_11F5557: Me.Requery -1
  loc_11F557A: Set var_90 = Me.Txt
  loc_11F5580: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, "Unit='")
  loc_11F558F: var_C4 = Trim(CVar(var_94))
  loc_11F5597: var_E4 = 0 & var_C4 
  loc_11F55A0: var_104 = var_E4 & "'" 
  loc_11F55AE: Me.Find CStr(var_104), 1, var_14C
  loc_11F55C8: Set var_90 = Me.TopCtrl1
  loc_11F55CE: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11F55E7: If (CStr() = "Add") Then
  loc_11F55EA:   Call TopCtrl1_UnknownEvent_A()
  loc_11F55EF:   Exit Sub
  loc_11F55F0: End If
  loc_11F5605: var_9C = "INI"
  loc_11F5613: Call Proc_298_27_E70E58(Proc_5_1_100EC1C(var_9C, Me))
  loc_11F561E: Call Proc_298_31_E86460(global_52)
  loc_11F5623: Call Proc_298_29_11EAB30()
  loc_11F5628: Exit Sub
  loc_11F5629: ' Referenced from: 11F5230
  loc_11F5632: If (CInt(var_86) = 1) Then
  loc_11F563B:   unk_47174C.RollbackTrans
  loc_11F5640: End If
  loc_11F5648: Set var_90 = Err()
  loc_11F564E: Call 0.Method_arg_2C (var_9C)
  loc_11F5667: MsgBox(CVar(var_9C), &H10, var_C4, var_E4, var_104)
  loc_11F567A: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E31D44
  'Data Table: 471738
  loc_E31D38: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E31D3B:   Call DGHelp_UnknownEvent_9()
  loc_E31D40: End If
  loc_E31D40: Exit Sub
  loc_E31D41:  = arg_207
End Sub

Public Sub SEARCHBACK(MyValue) 'EC5B14
  'Data Table: 471738
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC5A8A: On Error Goto loc_EC5ACF
  loc_EC5A93: Me.MoveFirst
  loc_EC5AAD: var_8C = "Unit='" & MyValue
  loc_EC5ABD: Me.Find var_8C & "'", 0, 1
  loc_EC5AC9: Call Proc_298_29_11EAB30(var_A0)
  loc_EC5ACE: Exit Sub
  loc_EC5ACF: ' Referenced from: EC5A8A
  loc_EC5AD7: Set var_A4 = Err()
  loc_EC5ADD: Call 0.Method_arg_2C (var_8C)
  loc_EC5AFE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC5B11: Exit Sub
  loc_EC5B12: Exit Sub
End Sub

Public Sub Proc_298_27_E70E58(arg_C) 'E70E58
  'Data Table: 471738
  Dim var_98 As TextBox
  loc_E70E0A: Set var_8C = Me.Txt
  loc_E70E10: Call 0.Method_Proc_298_27_E70E58C (var_8E, var_86)
  loc_E70E1D: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_E70E33:   Set var_8C = Me.Txt
  loc_E70E39:   Call 0.Method_Proc_298_27_E70E580 (CInt(var_86), var_98)
  loc_E70E41:   var_98.Enabled = arg_C
  loc_E70E50: Next var_92 'Byte
  loc_E70E56: Exit Sub
End Sub

Public Sub Proc_298_28_EAAA68
  'Data Table: 471738
  Dim var_98 As TextBox
  loc_EAA9DE: global_64 = vbNullString
  loc_EAA9F0: Set var_8C = Me.Txt
  loc_EAA9F6: Call 0.Method_Proc_298_28_EAAA68C (var_8E, var_86)
  loc_EAAA03: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_EAAA19:   Set var_8C = Me.Txt
  loc_EAAA1F:   Call 0.Method_Proc_298_28_EAAA680 (CInt(var_86), var_98)
  loc_EAAA27:   var_98.Text = vbNullString
  loc_EAAA36: Next var_92 'Byte
  loc_EAAA4A: Set var_8C = Me.Txt
  loc_EAAA50: Call 0.Method_Proc_298_28_EAAA680 (CInt(2), var_98)
  loc_EAAA58: var_98.Text = "Active"
  loc_EAAA64: Exit Sub
End Sub

Public Sub Proc_298_29_11EAB30
  'Data Table: 471738
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_47174C As Connection15
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_11EA6E0: On Error Goto loc_11EAAEC
  loc_11EA6FA: If (Me.RecordCount > 0) Then
  loc_11EA753:   unk_47174C.Execute CStr("Select Name,Status U_Name,U_AE,U_EntDt From UnitMast where Name='" & Me.Fields.Item("Unit").Value & "'  "), var_118, -1
  loc_11EA75E:   Set var_88 = var_11C
  loc_11EA7B8:   var_11C = Me.Fields
  loc_11EA821:   var_184 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_11EA869:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_Name")), var_184)))
  loc_11EA8E9:   var_120 = Me.Fields.Item("U_AE")
  loc_11EA902:   var_118 = "entdt : "
  loc_11EA90D:   var_F4 = "Last Update : "
  loc_11EA94A:   var_184 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_120)) = "E"), var_F4, var_118))
  loc_11EA992:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_EntDt")))))
  loc_11EA9CA: End If
  loc_11EA9D0: Proc_183_45_E5CCA8(global_52)
  loc_11EA9EC: If (Me.RecordCount <= 0) Then
  loc_11EA9EF:   Call Proc_298_28_EAAA68()
  loc_11EA9F7: Else
  loc_11EAA28:   global_60 = Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")))
  loc_11EAA6E:   Set var_11C = Me.Txt
  loc_11EAA74:   Call 0.Method_Proc_298_29_11EAB300 (CInt(1), var_120)
  loc_11EAA7C:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")))
  loc_11EAABB:   var_F8 = Proc_6_38_E69628(CVar(Me.Fields.Item("Active")))
  loc_11EAAC9:   Set var_11C = Me.Txt
  loc_11EAACF:   Call 0.Method_Proc_298_29_11EAB300 (CInt(2), var_120)
  loc_11EAAD7:   var_120.Text = var_F8
  loc_11EAAEB: End If
  loc_11EAAEB: Exit Sub
  loc_11EAAEC: ' Referenced from: 11EA6E0
  loc_11EAAF4: Set var_90 = Err()
  loc_11EAAFA: Call 0.Method_arg_2C (var_F8)
  loc_11EAB1B: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_11EAB2E: Exit Sub
End Sub

Public Sub Proc_298_30_1085DA4
  'Data Table: 471738
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_47174C As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1085B37: If (Me.RecordCount = 0) Then
  loc_1085B3A:   Proc_298_30_1085DA4 = 
  loc_1085B40: End If
  loc_1085B44: Set var_90 = Me.TopCtrl1
  loc_1085B4A: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1085B63: If (CStr() = "Add") Then
  loc_1085BA1:   Set var_90 = Me.Txt
  loc_1085BA7:   Call 0.Method_Proc_298_30_1085DA40 (CInt(1), var_A8, var_AC, "Select Count(*) From UnitMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1085BC8:   unk_47174C.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1085BD8:    = var_D0.Item()
  loc_1085BE0:    = var_E4.Value
  loc_1085C11:   If (var_A8.Text.Fields > 0) Then
  loc_1085C2F:     var_A0 = "Duplicate Name"
  loc_1085C35:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1085C50:     Set var_90 = Me.Txt
  loc_1085C56:     Call 0.Method_Proc_298_30_1085DA40 (CInt(1))
  loc_1085C5E:     var_A8.SetFocus
  loc_1085C6F:     Proc_298_30_1085DA4 = &HFF
  loc_1085C75:   End If
  loc_1085C78: Else
  loc_1085CB3:   Set var_90 = Me.Txt
  loc_1085CB9:   Call 0.Method_Proc_298_30_1085DA40 (CInt(1), var_A8, var_AC, "Select Count(*) From UnitMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (NAme='", var_A0, -1)
  loc_1085CEB:   unk_47174C.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "')", 0, var_E4
  loc_1085CFB:    = var_D0.Item(var_A8)
  loc_1085D03:    = var_E4.Value
  loc_1085D38:   If (var_A8.Text.Fields > 0) Then
  loc_1085D5C:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1085D77:     Set var_90 = Me.Txt
  loc_1085D7D:     Call 0.Method_Proc_298_30_1085DA40 (CInt(1))
  loc_1085D85:     var_A8.SetFocus
  loc_1085D96:     Proc_298_30_1085DA4 = &HFF
  loc_1085D9C:   End If
  loc_1085D9C: End If
  loc_1085D9C: Proc_298_30_1085DA4 = var_A8
  loc_1085DA2:  = 
End Sub

Public Sub Proc_298_31_E86460
  'Data Table: 471738
  loc_E8640C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E8641E:   Me.DGHelp.Visible = False
  loc_E86426: End If
  loc_E86442: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E86454:   Me.FGPoint.Visible = False
  loc_E8645C: End If
  loc_E8645C: Exit Sub
  loc_E8645D: ArrayRebase1Var
End Sub

Public Sub Proc_298_32_E93448(arg_C) 'E93448
  'Data Table: 471738
  Dim var_10C As TextBox
  loc_E933DC: Call Proc_298_31_E86460()
  loc_E93418: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E9341B:   Call TopCtrl1_UnknownEvent_16()
  loc_E93423: Else
  loc_E9342D:   Set var_108 = Me.Txt
  loc_E93433:   Call 0.Method_Proc_298_32_E934480 (arg_C)
  loc_E9343B:   var_10C.SetFocus
  loc_E93447: End If
  loc_E93447: Exit Sub
End Sub
