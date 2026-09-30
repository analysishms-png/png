VERSION 5.00
Begin VB.Form FrmDeliveryBoyMast
  Caption = "Delivery Boy Master"
  BackColor = &HFFC0C0&
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
  ClientWidth = 8070
  ClientHeight = 8760
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8070
    Height = 450
    TabIndex = 7
  End
  Begin DataGrid DGHelp
    Left = 1095
    Top = 2250
    Width = 4230
    Height = 1530
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2265
    Top = 1635
    Width = 4215
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin MSFlexGrid FGPoint
    Left = 5490
    Top = 1440
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 435
    Width = 180
    Height = 540
    TabIndex = 6
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 225
    Top = 7980
    Width = 2880
    Height = 255
    TabIndex = 5
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
    Left = 30
    Top = 8355
    Width = 2790
    Height = 285
    TabIndex = 4
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
    Caption = "Delivery Boy Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 360
    Top = 1665
    Width = 1815
    Height = 240
    TabIndex = 1
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

Attribute VB_Name = "FrmDeliveryBoyMast"


Private Sub Txt_GotFocus(Index As Integer) 'EA9D1C
  'Data Table: 444598
  Dim Me As Recordset15
  loc_EA9C9A: Set var_88 = Me.Txt
  loc_EA9CA0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EA9CAE: Proc_6_74_E23240(var_8C)
  loc_EA9CBA: Call Proc_304_31_E84AC8(var_8C)
  loc_EA9CCD: If (Index = CInt(0)) Then
  loc_EA9CE7:   If (Me.RecordCount > 0) Then
  loc_EA9CF5:     Set var_8C = Me.FGPoint
  loc_EA9D0D:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_EA9D1B:   End If
  loc_EA9D1B: End If
  loc_EA9D1B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10184CC
  'Data Table: 444598
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As TextBox
  loc_10182C2: If (CLng(Shift) = &H1B) Then
  loc_10182C5:   Call Proc_304_31_E84AC8()
  loc_10182CA:   Exit Sub
  loc_10182CB: End If
  loc_10182D9: If (KeyCode = CInt(0)) Then
  loc_10182F9:   Set var_9C = Me.FGPoint
  loc_101832B:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_1018398:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_101839F:     Set var_9C = Me.DGHelp
  loc_10183A6:     Set var_90 = Me.FGPoint
  loc_10183BE:     Proc_6_138_106E830(var_9C, global_56, KeyCode, var_90, 0)
  loc_10183CC:   End If
  loc_10183CC: End If
  loc_10183E8: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_1018409:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_101840F:     Call Proc_304_30_10C3644(var_92, 1, var_9C)
  loc_101841A:     If (var_92 = &HFF) Then
  loc_101842A:       Set var_8C = Me.Txt
  loc_1018430:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_1018438:       var_90.Text = 0
  loc_1018444:       Exit Sub
  loc_1018445:     End If
  loc_101847C:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_101847F:       Call TopCtrl1_UnknownEvent_16()
  loc_1018484:     End If
  loc_1018484:     Exit Sub
  loc_1018485:   End If
  loc_101849A:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10184A3:     Proc_6_75_E5335C(Shift, arg_14)
  loc_10184A8:   End If
  loc_10184BB:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_10184C4:     Proc_6_76_E533C8(Shift, arg_14)
  loc_10184C9:   End If
  loc_10184C9: End If
  loc_10184C9: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E26D34
  'Data Table: 444598
  Dim var_96 As Integer
  loc_E26D16: Proc_6_133_E7FB08(var_94)
  loc_E26D28: Proc_6_58_E06050(CInt(var_94), CInt(var_94))
  loc_E26D30: var_96 = KeyAscii
  loc_E26D33: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC18A0
  'Data Table: 444598
  loc_EC1812: If (KeyCode = CInt(0)) Then
  loc_EC1831:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC183E:     var_A4 = "Name"
  loc_EC185D:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_EC188F:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC189D:   End If
  loc_EC189D: End If
  loc_EC189D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D2C4
  'Data Table: 444598
  loc_E4D2A2: Set var_88 = Me.Txt
  loc_E4D2A8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D2B6: Proc_6_73_E23294(var_8C)
  loc_E4D2C2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E2784C
  'Data Table: 444598
  Dim arg_10 As Integer
  loc_E2782E: If (Cancel = CInt(0)) Then
  loc_E27834:   Call Proc_304_30_10C3644(var_88)
  loc_E2783F:   If (var_88 = &HFF) Then
  loc_E27844:     arg_10 = &HFF
  loc_E27847:     Exit Sub
  loc_E27848:   End If
  loc_E27848: End If
  loc_E27848: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFE234
  'Data Table: 444598
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFE168: On Error Goto loc_EFE1EE
  loc_EFE178: Me.LblUser.Caption = vbNullString
  loc_EFE18D: Me.LblLDt.Caption = vbNullString
  loc_EFE195: Call Proc_304_28_E79FFC()
  loc_EFE1AF: var_8C = "ADD"
  loc_EFE1BD: Call Proc_304_27_E79B3C(Proc_5_1_100EC1C(var_8C, Me))
  loc_EFE1D3: Set var_88 = Me.Txt
  loc_EFE1D9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFE1E1: var_94.SetFocus
  loc_EFE1ED: Exit Sub
  loc_EFE1EE: ' Referenced from: EFE168
  loc_EFE1F6: Set var_88 = Err()
  loc_EFE1FC: Call 0.Method_arg_2C (var_8C)
  loc_EFE21D: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFE230: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC17BC
  'Data Table: 444598
  loc_EC1724: On Error Goto loc_EC17B4
  loc_EC175E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC1761:   Call Proc_304_31_E84AC8()
  loc_EC1772:   Set var_110 = Me
  loc_EC1789:   Call Proc_304_27_E79B3C(Proc_5_1_100EC1C("INI", var_110))
  loc_EC1794:   Call Proc_304_29_11D17E4(global_52)
  loc_EC179C: Else
  loc_EC17A2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC17AA:   Call var_110.SetFocus
  loc_EC17B3: End If
  loc_EC17B3: Exit Sub
  loc_EC17B4: ' Referenced from: EC1724
  loc_EC17B4: Proc_6_60_E63754()
  loc_EC17B9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11432E4
  'Data Table: 444598
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_4445AC As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_1142F84: On Error Goto loc_114328B
  loc_1142F95: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_1142F98:   Exit Sub
  loc_1142F99: End If
  loc_1142FCB: var_D4 = "KOT Entry"
  loc_1143013: If (Proc_6_108_101061C(MemVar_1F95044, "KOT", "DeliveryBoy", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_1143016:   Exit Sub
  loc_1143017: End If
  loc_114304E: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_1143053:   var_96 = 0
  loc_114305F:   unk_4445AC.BeginTrans var_D0
  loc_1143066:   var_96 = &HFF
  loc_114307A:   var_94 = Me.Bookmark 'Variant
  loc_11430C6:   var_118 = "Delete From DeliveryBoy Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_11430D4:   unk_4445AC.Execute CStr(var_118), var_138, -1
  loc_114311F:   var_168 = 0
  loc_1143132:   var_160 = 0
  loc_114313D:   var_15C = 0
  loc_1143150:   var_154 = 0
  loc_114315B:   var_150 = 0
  loc_114316E:   var_148 = 0
  loc_11431AE:   var_B4 = "DeliveryBoy"
  loc_11431B7:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_11431E5:   unk_4445AC.CommitTrans
  loc_11431EC:   var_96 = 0
  loc_11431FA:   Me.Requery -1
  loc_114320A:   Me.Requery -1
  loc_114322A:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1143237:     Me.Bookmark = var_94
  loc_114323F:   Else
  loc_1143253:     If (Me.EOF = 0) Then
  loc_114325C:       Me.MoveLast
  loc_1143261:     End If
  loc_1143261:   End If
  loc_1143261:   Call Proc_304_29_11D17E4(var_96, var_148, 0, var_150, var_154)
  loc_1143282:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_114328A: End If
  loc_114328A: Exit Sub
  loc_114328B: ' Referenced from: 1142F84
  loc_1143291: If (var_96 = &HFF) Then
  loc_114329A:   unk_4445AC.RollbackTrans
  loc_114329F: End If
  loc_11432A7: Set var_9C = Err()
  loc_11432AD: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_11432CE: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_11432E1: Exit Sub
  loc_11432E2: ArrayRebase1Var
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F642EC
  'Data Table: 444598
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F641C8: On Error Goto loc_F642A9
  loc_F641D9: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F641DC:   Exit Sub
  loc_F641DD: End If
  loc_F641F4: If (Me.RecordCount > 0) Then
  loc_F6420C:   var_8C = "EDIT"
  loc_F6421A:   Call Proc_304_27_E79B3C(Proc_5_1_100EC1C(var_8C, Me))
  loc_F64230:   Set var_90 = Me.Txt
  loc_F64236:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F6423E:   var_98.SetFocus
  loc_F6424D: Else
  loc_F6426E:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F6427E: End If
  loc_F6428B: Me.LblUser.Caption = vbNullString
  loc_F642A0: Me.LblLDt.Caption = vbNullString
  loc_F642A8: Exit Sub
  loc_F642A9: ' Referenced from: F641C8
  loc_F642B1: Set var_90 = Err()
  loc_F642B7: Call 0.Method_arg_2C (var_8C)
  loc_F642D8: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F642EB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AFD8
  'Data Table: 444598
  loc_E1AFCD: Me.Global.Unload Me
  loc_E1AFD5: Exit Sub
  loc_E1AFD6: ArrayRebase1Var
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F28F90
  'Data Table: 444598
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F28E90: On Error Goto loc_F28F28
  loc_F28E9C: var_88 = Me.RecordCount
  loc_F28EAA: If (var_88 <= 0) Then
  loc_F28EB3:   var_B8 = "Information"
  loc_F28ECE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F28EDE:   Exit Sub
  loc_F28EDF: End If
  loc_F28EED: MemVar_1F950E4 = "Select Code As SearchCode,Name FROM DeliveryBoy Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_F28EF7: var_10C = "3000"
  loc_F28EFD: Proc_6_126_F1C850(var_10C)
  loc_F28F0B: MemVar_1F95120 = Me
  loc_F28F22: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F28F27: Exit Sub
  loc_F28F28: ' Referenced from: F28E90
  loc_F28F30: Set var_110 = Err()
  loc_F28F36: Call 0.Method_arg_1C (var_88)
  loc_F28F47: If (var_88 <> 0) Then
  loc_F28F52:   Set var_110 = Err()
  loc_F28F58:   Call 0.Method_arg_2C (var_10C)
  loc_F28F79:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F28F8C: End If
  loc_F28F8C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32828
  'Data Table: 444598
  loc_E32818: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32820: Call Proc_304_29_11D17E4(global_52)
  loc_E32825: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3A268
  'Data Table: 444598
  loc_E3A258: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A260: Call Proc_304_29_11D17E4(global_52)
  loc_E3A265: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E331E8
  'Data Table: 444598
  loc_E331D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E331E0: Call Proc_304_29_11D17E4(global_52)
  loc_E331E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E330C8
  'Data Table: 444598
  loc_E330B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E330C0: Call Proc_304_29_11D17E4(global_52)
  loc_E330C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1083460
  'Data Table: 444598
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4445AC As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_10831C8: On Error Goto loc_1083414
  loc_10831EF: unk_4445AC.Execute "SELECT * from DeliveryBoy Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_10831FA: Set var_88 = var_C8
  loc_1083210: var_CC = var_88.RecordCount
  loc_108321E: If (var_CC = 0) Then
  loc_108323A:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108324A:   Exit Sub
  loc_108324B: End If
  loc_108325A: var_A4 = MemVar_1F950B4 & "\DeliveryBoyMast.ttx"
  loc_1083261: Set var_C8 = var_88 
  loc_108326D: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1083277: Set var_88 = var_C8
  loc_108327D: var_B4 = CVar(var_12E) 'Integer
  loc_1083280: var_98 = var_B4 'Variant
  loc_108329C: var_A0 = MemVar_1F950B4 & "\DeliveryBoyMast.RPT"
  loc_10832A5: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_10832B0: MemVar_1F951E8 = var_C8
  loc_10832CB: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_10832D3: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10832DF: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_10832F8:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1083300:   Call 0.Method_arg_20 (var_138)
  loc_1083308:   Call 0.Method_arg_30 (var_A0)
  loc_108334E:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1083364:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108336C:     Call 0.Method_arg_20 (var_138)
  loc_1083374:     Call 0.Method_arg_38 ("'Delivery Boy Master'")
  loc_1083380:   End If
  loc_1083383: Next var_132 'Integer
  loc_10833A1: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_10833A9: Call 0.Method_arg_2C (var_DC)
  loc_10833B7: Call 0.Method_arg_150 (var_FC)
  loc_10833C2: Call 0.Method_arg_50 (var_A0)
  loc_10833CC: Set var_138 = Nothing
  loc_10833E6: Set var_C8 = MemVar_1F951E8 
  loc_10833F2: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_10833FD: MemVar_1F951E8 = var_C8
  loc_1083410: Set var_88 = Nothing
  loc_1083413: Exit Sub
  loc_1083414: ' Referenced from: 10831C8
  loc_108341C: Set var_C8 = Err()
  loc_1083422: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108342D: Call 0.Method_arg_50 (var_A4)
  loc_1083449: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108345C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B73C
  'Data Table: 444598
  Dim Me As Recordset15
  loc_E0B733: Me.Requery -1
  loc_E0B738: Exit Sub
  loc_E0B739: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1217898
  'Data Table: 444598
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_4445AC As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_B0 As Variant
  loc_12173F4: On Error Goto loc_1217843
  loc_12173FB: var_86 = CByte(0) 'Byte
  loc_121740A: Set var_90 = Me.Txt
  loc_1217410: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1217439: If (Proc_183_19_E8E68C(var_94, "Name") = 0) Then
  loc_1217443:   Call Txt_GotFocus(CInt(0))
  loc_1217448:   Exit Sub
  loc_1217449: End If
  loc_121744D: Set var_90 = Me.TopCtrl1
  loc_1217453: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_121746C: If (CStr() = "Add") Then
  loc_1217475:   var_D4 = 0
  loc_1217492:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),0)+1 AS MyCode From DeliveryBoy WHERE SITE_CODE='" & MemVar_1F95070
  loc_1217499:   var_B4 = CStr() & "'"
  loc_12174A2:   unk_4445AC.Execute var_B4, var_B0, -1
  loc_12174AA:   var_90 = var_90.Fields
  loc_12174B2:   var_D4 = var_94.Item(var_94)
  loc_12174BA:   var_98 = var_98.Value
  loc_12174F3:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1217519:   var_E4 = Format(CStr(var_E4), "0000")
  loc_1217521:   var_108 = (1 + var_E4)
  loc_121752C:   global_64 = CStr(var_108)
  loc_1217541: Else
  loc_121755E:   var_94 = Me.Fields.Item("Code")
  loc_1217575:   global_64 = CStr(var_94.Value)
  loc_1217586: End If
  loc_121758F: unk_4445AC.BeginTrans var_10C
  loc_1217598: var_86 = CByte(1) 'Byte
  loc_12175A0: Set var_90 = Me.TopCtrl1
  loc_12175A6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_12175BF: If (CStr(var_F8) = "Add") Then
  loc_12175D9:   var_9C = "Insert Into DeliveryBoy(Code,Name,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_64
  loc_12175F1:   Set var_90 = Me.Txt
  loc_12175F7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_9C & "','")
  loc_12175FF:   var_184 = var_94.Text
  loc_1217608:   var_110 = -1 & var_B4
  loc_121763C:   Proc_6_7_F26918(var_E4, Date, CVar(var_110 & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',"))
  loc_121766E:   unk_4445AC.Execute CStr(var_98 & var_E4 & ",'A','" & CVar(MemVar_1F95078) & "' )"), var_E4, 
  loc_12176A7: Else
  loc_12176C5:   Set var_90 = Me.Txt
  loc_12176CB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE DeliveryBoy SET Name='")
  loc_12176D3:   var_184 = var_94.Text
  loc_12176DC:   var_B4 = -1 & var_9C
  loc_12176FF:   var_F8 = CVar(var_B4 & "',SITE_CODE='" & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_1217710:   Proc_6_7_F26918(var_E4, Date)
  loc_1217718:   var_108 = var_F8 & var_E4 
  loc_121771C:   var_C4 = " ,U_AE='E' WHERE Code='"
  loc_1217745:   unk_4445AC.Execute CStr(var_108 & var_C4 & CVar(global_64) & "'"), var_98, 
  loc_1217777: End If
  loc_121777D: unk_4445AC.CommitTrans
  loc_1217786: var_86 = CByte(0) 'Byte
  loc_1217795: Me.Requery -1
  loc_12177A5: Me.Requery -1
  loc_12177D2: Me.Find "Code='" & global_64 & "'", 0, 1
  loc_12177E2: Set var_90 = Me.TopCtrl1
  loc_12177E8: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_1217801: If (CStr() = "Add") Then
  loc_1217804:   Call TopCtrl1_UnknownEvent_A()
  loc_1217809:   Exit Sub
  loc_121780A: End If
  loc_121781F: var_9C = "INI"
  loc_121782D: Call Proc_304_27_E79B3C(Proc_5_1_100EC1C(var_9C, Me))
  loc_1217838: Call Proc_304_31_E84AC8(global_52)
  loc_121783D: Call Proc_304_29_11D17E4()
  loc_1217842: Exit Sub
  loc_1217843: ' Referenced from: 12173F4
  loc_121784C: If (CInt(var_86) = 1) Then
  loc_1217855:   unk_4445AC.RollbackTrans
  loc_121785A: End If
  loc_1217862: Set var_90 = Err()
  loc_1217868: Call 0.Method_arg_2C (var_9C)
  loc_1217881: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_1217894: Exit Sub
  loc_1217895: ThisVCallR4
End Sub

Private Sub Form_Load() 'FD6D0C
  'Data Table: 444598
  Dim var_8C As Label
  Dim var_94 As String
  Dim unk_4445AC As Connection15
  Dim var_B8 As Variant
  loc_FD6B48: On Error Goto loc_FD6CC6
  loc_FD6B61: Proc_6_23_DFC5B8(Me, 0)
  loc_FD6B70: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_FD6B84: Me.LblUser.Left = CDbl(13500)
  loc_FD6B9B: Me.LblUser.Top = CDbl(7800)
  loc_FD6BB2: Me.LblLDt.Top = CDbl(8160)
  loc_FD6BC3: Set var_8C = Me.LblLDt
  loc_FD6BC9: var_8C.Left = CDbl(13500)
  loc_FD6BD1: Call Proc_304_32_EDD0B4(0)
  loc_FD6BFA: unk_4445AC.Execute "SELECT Code,Name FROM DeliveryBoy where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B8, -1
  loc_FD6C29: CVarUnk
  loc_FD6C2E: VerifyVarObj
  loc_FD6C3A: LateIdStAd
  loc_FD6C6C: unk_4445AC.Execute "SELECT * FROM DeliveryBoy WHere (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name", var_B8, -1
  loc_FD6CA7: var_94 = "INI"
  loc_FD6CB5: Call Proc_304_27_E79B3C(Proc_5_1_100EC1C(var_94, Me, Me.DGHelp, Me), Me)
  loc_FD6CC0: Call Proc_304_29_11D17E4(Me)
  loc_FD6CC5: Exit Sub
  loc_FD6CC6: ' Referenced from: FD6B48
  loc_FD6CD4: Call 0.Method_arg_2C (var_94)
  loc_FD6CF5: MsgBox(CVar(var_94), &H40, "Information", var_EC, var_10C)
  loc_FD6D08: Exit Sub
  loc_FD6D09: Exit Sub
  loc_FD6D0A: var_8C() = 
End Sub

Private Sub Form_Resize() 'ED1BD8
  'Data Table: 444598
  Dim var_8C As Label
  loc_ED1B36: Call 0.Method_arg_50 (var_88)
  loc_ED1B48: Me.LblFormCaption.Caption = var_88
  loc_ED1B61: Me.LblFormCaption.Left = CDbl(0)
  loc_ED1B6D: Set var_A0 = Me.TopCtrl1
  loc_ED1B73: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED1B80: Set var_8C = Me.TopCtrl1
  loc_ED1B86: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED1BA0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED1BBB: Call 0.Method_arg_100 (var_B8)
  loc_ED1BCD: Me.LblFormCaption.Width = var_B8
  loc_ED1BD5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E27D50
  'Data Table: 444598
  loc_E27D33: Set global_52 = Nothing
  loc_E27D45: Set global_56 = Nothing
  loc_E27D4C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27E64
  'Data Table: 444598
  Dim var_88 As Integer
  loc_E27E3C: On Error Goto loc_E27E5B
  loc_E27E53: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E27E5B: ' Referenced from: E27E3C
  loc_E27E5B: Proc_6_60_E63754(Shift)
  loc_E27E60: Exit Sub
  loc_E27E61: var_88 = 0
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE474C
  'Data Table: 444598
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE46A3: Me.DGHelp.Visible = False
  loc_EE46C2: If (Me.RecordCount > 0) Then
  loc_EE46E2:   var_B0 = Me.Fields.Item("Name")
  loc_EE4701:   Set var_B4 = Me.Txt
  loc_EE4707:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE470F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE4725: End If
  loc_EE4730: Set var_A8 = Me.Txt
  loc_EE4736: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE473E: var_B0.SetFocus
  loc_EE474A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6ECCC
  'Data Table: 444598
  loc_E6EC8A: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E6ECA1: Set var_8C = Me.FGPoint
  loc_E6ECBD: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E6ECCB: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E39D84
  'Data Table: 444598
  loc_E39D78: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E39D7B:   Call DGHelp_UnknownEvent_9()
  loc_E39D80: End If
  loc_E39D80: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC15F4
  'Data Table: 444598
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC156A: On Error Goto loc_EC15AF
  loc_EC1573: Me.MoveFirst
  loc_EC158D: var_8C = "code='" & MyValue
  loc_EC159D: Me.Find var_8C & "'", 0, 1
  loc_EC15A9: Call Proc_304_29_11D17E4(var_A0)
  loc_EC15AE: Exit Sub
  loc_EC15AF: ' Referenced from: EC156A
  loc_EC15B7: Set var_A4 = Err()
  loc_EC15BD: Call 0.Method_arg_2C (var_8C)
  loc_EC15DE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC15F1: Exit Sub
  loc_EC15F2: Exit Sub
End Sub

Public Sub Proc_304_27_E79B3C(arg_C) 'E79B3C
  'Data Table: 444598
  Dim var_98 As TextBox
  loc_E79AEA: Set var_8C = Me.Txt
  loc_E79AF0: Call 0.Method_Proc_304_27_E79B3CC (var_8E, var_86)
  loc_E79B00: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79B16:   Set var_8C = Me.Txt
  loc_E79B1C:   Call 0.Method_Proc_304_27_E79B3C0 (CInt(var_86), var_98)
  loc_E79B24:   var_98.Enabled = arg_C
  loc_E79B33: Next var_92 'Byte
  loc_E79B39: Exit Sub
End Sub

Public Sub Proc_304_28_E79FFC
  'Data Table: 444598
  Dim var_98 As TextBox
  loc_E79FAA: Set var_8C = Me.Txt
  loc_E79FB0: Call 0.Method_Proc_304_28_E79FFCC (var_8E, var_86)
  loc_E79FC0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79FD6:   Set var_8C = Me.Txt
  loc_E79FDC:   Call 0.Method_Proc_304_28_E79FFC0 (CInt(var_86), var_98)
  loc_E79FE4:   var_98.Text = vbNullString
  loc_E79FF3: Next var_92 'Byte
  loc_E79FF9: Exit Sub
End Sub

Public Sub Proc_304_29_11D17E4
  'Data Table: 444598
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_B8 As String
  Dim var_C0 As TextBox
  Dim var_100 As Variant
  Dim unk_4445AC As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Fields15
  Dim var_1CC As Variant
  loc_11D13B0: On Error Goto loc_11D17A1
  loc_11D13B9: Proc_183_45_E5CCA8(global_52)
  loc_11D13D5: If (Me.RecordCount <= 0) Then
  loc_11D13D8:   Call Proc_304_28_E79FFC()
  loc_11D13E0: Else
  loc_11D1414:   global_64 = CStr(Me.Fields.Item("Name").Value)
  loc_11D1461:   Set var_BC = Me.Txt
  loc_11D1467:   Call 0.Method_Proc_304_29_11D17E40 (CInt(0), var_C0)
  loc_11D146F:   var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11D14C7:   Call 0.Method_Proc_304_29_11D17E40 (CInt(0), var_C0)
  loc_11D14CF:   var_C0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_11D153B:   unk_4445AC.Execute CStr("Select U_Name,U_AE,U_EntDt From DeliveryBoy where Code='" & Me.Fields.Item("Code").Value & "'  "), var_120, -1
  loc_11D1546:   Set var_88 = Me.Txt
  loc_11D159A:   var_BC = var_88.Fields
  loc_11D1603:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_BC.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_11D1648:   Me.LblUser.Caption = CStr(var_BC & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_11D16DB:   var_120 = "entdt :   "
  loc_11D16E6:   var_100 = "Last Update :   "
  loc_11D1714:   var_B8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")))
  loc_11D1756:   var_1CC = IIf((var_B8 = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), var_100, var_120)) & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))) 
  loc_11D1768:   Me.LblLDt.Caption = CStr(var_1CC)
  loc_11D17A0: End If
  loc_11D17A0: Exit Sub
  loc_11D17A1: ' Referenced from: 11D13B0
  loc_11D17A9: Set var_90 = Err()
  loc_11D17AF: Call 0.Method_arg_2C (var_B8)
  loc_11D17D0: MsgBox(CVar(var_B8), &H40, "Information", var_100, var_120)
  loc_11D17E3: Exit Sub
End Sub

Public Sub Proc_304_30_10C3644
  'Data Table: 444598
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4445AC As Connection15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_148 As Fields15
  Dim var_14C As Field20
  loc_10C33A3: If (Me.RecordCount = 0) Then
  loc_10C33A6:   Proc_304_30_10C3644 = 
  loc_10C33AC: End If
  loc_10C33B0: Set var_90 = Me.TopCtrl1
  loc_10C33B6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10C33CF: If (CStr() = "Add") Then
  loc_10C340D:   Set var_90 = Me.Txt
  loc_10C3413:   Call 0.Method_Proc_304_30_10C36440 (CInt(0), var_A8, var_AC, "Select Count(*) From DeliveryBoy Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10C3434:   unk_4445AC.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_10C3444:    = var_D0.Item()
  loc_10C344C:    = var_E4.Value
  loc_10C347D:   If (var_A8.Text.Fields > 0) Then
  loc_10C34A1:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_10C34BC:     Set var_90 = Me.Txt
  loc_10C34C2:     Call 0.Method_Proc_304_30_10C36440 (CInt(0))
  loc_10C34CA:     var_A8.SetFocus
  loc_10C34DB:     Proc_304_30_10C3644 = &HFF
  loc_10C34E1:   End If
  loc_10C34E4: Else
  loc_10C351F:   Set var_90 = Me.Txt
  loc_10C3525:   Call 0.Method_Proc_304_30_10C36440 (CInt(0), var_A8, var_AC, "Select Count(*) From DeliveryBoy Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_144, -1)
  loc_10C356D:   var_114 = CVar(var_148 & var_AC & "' And Name<>'") & Me.Fields.Item("Name").Value 
  loc_10C3576:   var_134 = var_114 & "'" 
  loc_10C3584:   unk_4445AC.Execute CStr(var_134), 0, var_14C
  loc_10C3594:    = var_148.Item(var_A8)
  loc_10C359C:    = var_14C.Value
  loc_10C35D9:   If (var_A8.Text.Fields > 0) Then
  loc_10C35FD:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_10C3618:     Set var_90 = Me.Txt
  loc_10C361E:     Call 0.Method_Proc_304_30_10C36440 (CInt(0))
  loc_10C3626:     var_A8.SetFocus
  loc_10C3637:     Proc_304_30_10C3644 = &HFF
  loc_10C363D:   End If
  loc_10C363D: End If
  loc_10C363D: Proc_304_30_10C3644 = var_A8
End Sub

Public Sub Proc_304_31_E84AC8
  'Data Table: 444598
  loc_E84A74: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E84A86:   Me.DGHelp.Visible = False
  loc_E84A8E: End If
  loc_E84AAA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E84ABC:   Me.FGPoint.Visible = False
  loc_E84AC4: End If
  loc_E84AC4: Exit Sub
End Sub

Public Sub Proc_304_32_EDD0B4
  'Data Table: 444598
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_EDD012: Set var_88 = Me.Txt
  loc_EDD018: Call 0.Method_Proc_304_32_EDD0B40 (CInt(0), var_8C)
  loc_EDD037: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_EDD053: Set var_B4 = Me.Txt
  loc_EDD059: Call 0.Method_Proc_304_32_EDD0B40 (CInt(0), var_B8)
  loc_EDD074: Set var_88 = Me.Txt
  loc_EDD07A: Call 0.Method_Proc_304_32_EDD0B40 (CInt(0), var_8C)
  loc_EDD092: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_EDD0A1: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_EDD0B3: Exit Sub
End Sub
