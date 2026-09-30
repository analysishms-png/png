VERSION 5.00
Begin VB.Form FrmGuestStat
  Caption = "Guest Status Master"
  BackColor = &HFFC0C0&
  ForeColor = &HFF0000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HFF0000&
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11235
  ClientHeight = 7995
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11235
    Height = 450
    TabIndex = 7
  End
  Begin MSFlexGrid FGPoint
    Left = 8340
    Top = 3375
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3375
    Top = 1965
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
  Begin DataGrid DGHelp
    Left = 7920
    Top = 3885
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5340
    Top = 5025
    Width = 2790
    Height = 285
    TabIndex = 6
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
    Left = 1965
    Top = 5025
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 4
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
  Begin Label LblName
    Caption = "Status Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 2115
    Top = 1965
    Width = 1200
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

Attribute VB_Name = "FrmGuestStat"


Private Sub Txt_GotFocus(Index As Integer) 'EAB874
  'Data Table: 442DB4
  Dim Me As Recordset15
  loc_EAB7F2: Set var_88 = Me.Txt
  loc_EAB7F8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EAB806: Proc_6_74_E23240(var_8C)
  loc_EAB812: Call Proc_13_31_E842E8(var_8C)
  loc_EAB825: If (Index = CInt(0)) Then
  loc_EAB83F:   If (Me.RecordCount > 0) Then
  loc_EAB84D:     Set var_8C = Me.FGPoint
  loc_EAB865:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_EAB873:   End If
  loc_EAB873: End If
  loc_EAB873: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FD2B00
  'Data Table: 442DB4
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As TextBox
  Dim arg_3CFF As Integer
  loc_FD2946: If (CLng(Shift) = &H1B) Then
  loc_FD2949:   Call Proc_13_31_E842E8()
  loc_FD294E:   Exit Sub
  loc_FD294F: End If
  loc_FD295D: If (KeyCode = CInt(0)) Then
  loc_FD297D:   Set var_9C = Me.FGPoint
  loc_FD29AF:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_FD2A1C:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FD2A23:     Set var_9C = Me.DGHelp
  loc_FD2A2A:     Set var_90 = Me.FGPoint
  loc_FD2A42:     Proc_6_138_106E830(var_9C, global_56, KeyCode, var_90, 0)
  loc_FD2A50:   End If
  loc_FD2A50: End If
  loc_FD2A6C: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FD2A8D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_FD2A96:     Call Txt_Validate(KeyCode)
  loc_FD2AA1:     If (var_86 = &HFF) Then
  loc_FD2AAF:       Set var_8C = Me.Txt
  loc_FD2AB5:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_90, var_86, 1)
  loc_FD2ABD:       var_90.SetFocus
  loc_FD2AC9:       Exit Sub
  loc_FD2ACA:     End If
  loc_FD2AD1:     Call Proc_13_32_E922B4(CInt(0), var_9C)
  loc_FD2AD6:     Exit Sub
  loc_FD2ADA:   Else
  loc_FD2AEF:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FD2AF8:       Proc_6_75_E5335C(Shift, arg_14)
  loc_FD2AFD:     End If
  loc_FD2AFD:   End If
  loc_FD2AFD: End If
  loc_FD2AFD: Exit Sub
  loc_FD2AFE: arg_3CFF = 0
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E170E8
  'Data Table: 442DB4
  Dim arg_10 As Integer
  loc_E170D6: Proc_6_133_E7FB08(var_94)
  loc_E170DF: arg_10 = CInt(var_94)
  loc_E170E5: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC0E20
  'Data Table: 442DB4
  loc_EC0D92: If (KeyCode = CInt(0)) Then
  loc_EC0DB1:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC0DBE:     var_A4 = "Name"
  loc_EC0DDD:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_EC0E0F:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC0E1D:   End If
  loc_EC0E1D: End If
  loc_EC0E1D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C834
  'Data Table: 442DB4
  loc_E4C812: Set var_88 = Me.Txt
  loc_E4C818: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C826: Proc_6_73_E23294(var_8C)
  loc_E4C832: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E2A874
  'Data Table: 442DB4
  Dim arg_10 As Integer
  loc_E2A856: If (Cancel = CInt(0)) Then
  loc_E2A85C:   Call Proc_13_30_108DCA0(var_88)
  loc_E2A867:   If (var_88 = &HFF) Then
  loc_E2A86C:     arg_10 = &HFF
  loc_E2A86F:     Exit Sub
  loc_E2A870:   End If
  loc_E2A870: End If
  loc_E2A870: Exit Sub
  loc_E2A871: StUdtVar
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAAF14
  'Data Table: 442DB4
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EAAE88: On Error Goto loc_EAAF0E
  loc_EAAE98: Me.LblUser.Caption = vbNullString
  loc_EAAEAD: Me.LblLDt.Caption = vbNullString
  loc_EAAED8: Call Proc_13_27_E7B55C(Proc_5_1_100EC1C("ADD", Me))
  loc_EAAEE3: Call Proc_13_28_EAEFBC(global_52)
  loc_EAAEF3: Set var_88 = Me.Txt
  loc_EAAEF9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EAAF01: var_94.SetFocus
  loc_EAAF0D: Exit Sub
  loc_EAAF0E: ' Referenced from: EAAE88
  loc_EAAF0E: Proc_6_60_E63754(var_94)
  loc_EAAF13: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBBB10
  'Data Table: 442DB4
  loc_EBBA7C: On Error Goto loc_EBBB07
  loc_EBBAB6: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBBAC5:   Set var_110 = Me
  loc_EBBADC:   Call Proc_13_27_E7B55C(Proc_5_1_100EC1C("INI", var_110))
  loc_EBBAE7:   Call Proc_13_29_11D8A10(global_52)
  loc_EBBAEF: Else
  loc_EBBAF5:   Call 0.Method_arg_1E8 (var_110)
  loc_EBBAFD:   Call var_110.SetFocus
  loc_EBBB06: End If
  loc_EBBB06: Exit Sub
  loc_EBBB07: ' Referenced from: EBBA7C
  loc_EBBB07: Proc_6_60_E63754()
  loc_EBBB0C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1142374
  'Data Table: 442DB4
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_442DC5 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_1142014: On Error Goto loc_114231B
  loc_1142025: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_1142028:   Exit Sub
  loc_1142029: End If
  loc_114205B: var_D4 = "Guest Status"
  loc_11420A3: If (Proc_6_108_101061C(MemVar_1F95044, "GuestProf", "GuestStatus", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_11420A6:   Exit Sub
  loc_11420A7: End If
  loc_11420DE: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_11420E3:   var_96 = 0
  loc_11420EF:   unk_442DC5.BeginTrans var_D0
  loc_11420F6:   var_96 = &HFF
  loc_114210A:   var_94 = Me.Bookmark 'Variant
  loc_1142156:   var_118 = "Delete From GuestStat Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_1142164:   unk_442DC5.Execute CStr(var_118), var_138, -1
  loc_11421AF:   var_168 = 0
  loc_11421C2:   var_160 = 0
  loc_11421CD:   var_15C = 0
  loc_11421E0:   var_154 = 0
  loc_11421EB:   var_150 = 0
  loc_11421FE:   var_148 = 0
  loc_114223E:   var_B4 = "GuestStat"
  loc_1142247:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1142275:   unk_442DC5.CommitTrans
  loc_114227C:   var_96 = 0
  loc_114228A:   Me.Requery -1
  loc_114229A:   Me.Requery -1
  loc_11422BA:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11422C7:     Me.Bookmark = var_94
  loc_11422CF:   Else
  loc_11422E3:     If (Me.EOF = 0) Then
  loc_11422EC:       Me.MoveLast
  loc_11422F1:     End If
  loc_11422F1:   End If
  loc_11422F1:   Call Proc_13_29_11D8A10(var_96, var_148, 0, var_150, var_154)
  loc_1142312:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_114231A: End If
  loc_114231A: Exit Sub
  loc_114231B: ' Referenced from: 1142014
  loc_1142321: If (var_96 = &HFF) Then
  loc_114232A:   unk_442DC5.RollbackTrans
  loc_114232F: End If
  loc_1142337: Set var_9C = Err()
  loc_114233D: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_114235E: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_1142371: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF25CC
  'Data Table: 442DB4
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EF24FC: On Error Goto loc_EF25C4
  loc_EF250C: Me.LblUser.Caption = vbNullString
  loc_EF2521: Me.LblLDt.Caption = vbNullString
  loc_EF2537: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_EF253A:   Exit Sub
  loc_EF253B: End If
  loc_EF255E: Call Proc_13_27_E7B55C(Proc_5_1_100EC1C("EDIT", Me))
  loc_EF2577: Set var_88 = Me.Txt
  loc_EF257D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF2590: global_64 = var_94.Text
  loc_EF25A9: Set var_88 = Me.Txt
  loc_EF25AF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF25B7: var_94.SetFocus
  loc_EF25C3: Exit Sub
  loc_EF25C4: ' Referenced from: EF24FC
  loc_EF25C4: Proc_6_60_E63754(global_52)
  loc_EF25C9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17134
  'Data Table: 442DB4
  Dim arg_3C00 As Integer
  loc_E17129: Me.Global.Unload Me
  loc_E17131: Exit Sub
  loc_E17132: arg_3C00 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F239B8
  'Data Table: 442DB4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F238B8: On Error Goto loc_F23950
  loc_F238C4: var_88 = Me.RecordCount
  loc_F238D2: If (var_88 <= 0) Then
  loc_F238DB:   var_B8 = "Information"
  loc_F238F6:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F23906:   Exit Sub
  loc_F23907: End If
  loc_F23915: MemVar_1F950E4 = "Select GuestStat.Code As SearchCode,GuestStat.Name FROM GuestStat Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by GuestStat.Name"
  loc_F23922: MemVar_1F95120 = Me
  loc_F23929: var_10C = "4000"
  loc_F2392F: Proc_6_126_F1C850(var_10C)
  loc_F2394A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2394F: Exit Sub
  loc_F23950: ' Referenced from: F238B8
  loc_F23958: Set var_110 = Err()
  loc_F2395E: Call 0.Method_arg_1C (var_88)
  loc_F2396F: If (var_88 <> 0) Then
  loc_F2397A:   Set var_110 = Err()
  loc_F23980:   Call 0.Method_arg_2C (var_10C)
  loc_F239A1:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F239B4: End If
  loc_F239B4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E30D88
  'Data Table: 442DB4
  loc_E30D78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30D80: Call Proc_13_29_11D8A10(global_52)
  loc_E30D85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E30C08
  'Data Table: 442DB4
  loc_E30BF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30C00: Call Proc_13_29_11D8A10(global_52)
  loc_E30C05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E30C68
  'Data Table: 442DB4
  loc_E30C58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30C60: Call Proc_13_29_11D8A10(global_52)
  loc_E30C65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E30CC8
  'Data Table: 442DB4
  loc_E30CB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30CC0: Call Proc_13_29_11D8A10(global_52)
  loc_E30CC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108AA80
  'Data Table: 442DB4
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_442DC5 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_108A7E8: On Error Goto loc_108AA34
  loc_108A80F: unk_442DC5.Execute "select * FROM GuestStat Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_108A81A: Set var_88 = var_C8
  loc_108A830: var_CC = var_88.RecordCount
  loc_108A83E: If (var_CC = 0) Then
  loc_108A85A:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108A86A:   Exit Sub
  loc_108A86B: End If
  loc_108A87A: var_A4 = MemVar_1F950B4 & "\GuestStat.ttx"
  loc_108A881: Set var_C8 = var_88 
  loc_108A88D: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108A897: Set var_88 = var_C8
  loc_108A89D: var_B4 = CVar(var_12E) 'Integer
  loc_108A8A0: var_98 = var_B4 'Variant
  loc_108A8BC: var_A0 = MemVar_1F950B4 & "\GuestStat.RPT"
  loc_108A8C5: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108A8D0: MemVar_1F951E8 = var_C8
  loc_108A8EB: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108A8F3: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108A8FF: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108A918:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108A920:   Call 0.Method_arg_20 (var_138)
  loc_108A928:   Call 0.Method_arg_30 (var_A0)
  loc_108A96E:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108A984:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108A98C:     Call 0.Method_arg_20 (var_138)
  loc_108A994:     Call 0.Method_arg_38 ("'Guest Status Master'")
  loc_108A9A0:   End If
  loc_108A9A3: Next var_132 'Integer
  loc_108A9C1: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108A9C9: Call 0.Method_arg_2C (var_DC)
  loc_108A9D7: Call 0.Method_arg_150 (var_FC)
  loc_108A9E2: Call 0.Method_arg_50 (var_A0)
  loc_108A9EC: Set var_138 = Nothing
  loc_108AA06: Set var_C8 = MemVar_1F951E8 
  loc_108AA12: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_108AA1D: MemVar_1F951E8 = var_C8
  loc_108AA30: Set var_88 = Nothing
  loc_108AA33: Exit Sub
  loc_108AA34: ' Referenced from: 108A7E8
  loc_108AA3C: Set var_C8 = Err()
  loc_108AA42: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108AA4D: Call 0.Method_arg_50 (var_A4)
  loc_108AA69: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108AA7C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A680
  'Data Table: 442DB4
  Dim Me As Recordset15
  loc_E0A677: Me.Requery -1
  loc_E0A67C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '121B6D0
  'Data Table: 442DB4
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_442DC5 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_B0 As Variant
  loc_121B220: On Error Goto loc_121B67C
  loc_121B227: var_86 = CByte(0) 'Byte
  loc_121B236: Set var_90 = Me.Txt
  loc_121B23C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_121B265: If (Proc_6_27_EA61EC(var_94, "Name") = 0) Then
  loc_121B26F:   Call Txt_GotFocus(CInt(0))
  loc_121B274:   Exit Sub
  loc_121B275: End If
  loc_121B278: Call Proc_13_30_108DCA0(var_9E)
  loc_121B283: If (var_9E = &HFF) Then
  loc_121B286:   Exit Sub
  loc_121B287: End If
  loc_121B28B: Set var_90 = Me.TopCtrl1
  loc_121B291: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_121B2AA: If (CStr() = "Add") Then
  loc_121B2B3:   var_D4 = 0
  loc_121B2D0:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From GuestStat WHERE SITE_CODE='" & MemVar_1F95070
  loc_121B2D7:   var_B4 = CStr() & "'"
  loc_121B2E0:   unk_442DC5.Execute var_B4, var_B0, -1
  loc_121B2E8:   var_90 = var_90.Fields
  loc_121B2F0:   var_D4 = var_94.Item(var_94)
  loc_121B2F8:   var_98 = var_98.Value
  loc_121B331:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_121B357:   var_E4 = Format(CStr(var_E4), "000")
  loc_121B35F:   var_108 = (1 + var_E4)
  loc_121B36A:   global_60 = CStr(var_108)
  loc_121B37F: Else
  loc_121B39C:   var_94 = Me.Fields.Item("Code")
  loc_121B3B3:   global_60 = CStr(var_94.Value)
  loc_121B3C4: End If
  loc_121B3CD: unk_442DC5.BeginTrans var_10C
  loc_121B3D6: var_86 = CByte(1) 'Byte
  loc_121B3DE: Set var_90 = Me.TopCtrl1
  loc_121B3E4: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_121B3FD: If (CStr(var_F8) = "Add") Then
  loc_121B417:   var_9C = "Insert Into GuestStat(Code,Name,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code) Values('" & global_60
  loc_121B42F:   Set var_90 = Me.Txt
  loc_121B435:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_9C & "','")
  loc_121B43D:   var_184 = var_94.Text
  loc_121B446:   var_110 = -1 & var_B4
  loc_121B47A:   Proc_6_7_F26918(var_E4, Date, CVar(var_110 & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',"))
  loc_121B4AC:   unk_442DC5.Execute CStr(var_98 & var_E4 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_E4, 
  loc_121B4E5: Else
  loc_121B503:   Set var_90 = Me.Txt
  loc_121B509:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE GuestStat SET Name='")
  loc_121B511:   var_184 = var_94.Text
  loc_121B51A:   var_B4 = -1 & var_9C
  loc_121B53D:   var_F8 = CVar(var_B4 & "',SITE_CODE='" & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_121B54E:   Proc_6_7_F26918(var_E4, Date)
  loc_121B556:   var_108 = var_F8 & var_E4 
  loc_121B55A:   var_C4 = " ,U_AE='E' WHERE Code='"
  loc_121B583:   unk_442DC5.Execute CStr(var_108 & var_C4 & CVar(global_60) & "'"), var_98, 
  loc_121B5B5: End If
  loc_121B5BB: unk_442DC5.CommitTrans
  loc_121B5C4: var_86 = CByte(0) 'Byte
  loc_121B5D3: Me.Requery -1
  loc_121B5E3: Me.Requery -1
  loc_121B610: Me.Find "Code='" & global_60 & "'", 0, 1
  loc_121B620: Set var_90 = Me.TopCtrl1
  loc_121B626: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_121B63F: If (CStr() = "Add") Then
  loc_121B642:   Call TopCtrl1_UnknownEvent_A()
  loc_121B647:   Exit Sub
  loc_121B648: End If
  loc_121B65D: var_9C = "INI"
  loc_121B66B: Call Proc_13_27_E7B55C(Proc_5_1_100EC1C(var_9C, Me))
  loc_121B676: Call Proc_13_29_11D8A10(global_52)
  loc_121B67B: Exit Sub
  loc_121B67C: ' Referenced from: 121B220
  loc_121B685: If (CInt(var_86) = 1) Then
  loc_121B68E:   unk_442DC5.RollbackTrans
  loc_121B693: End If
  loc_121B69B: Set var_90 = Err()
  loc_121B6A1: Call 0.Method_arg_2C (var_9C)
  loc_121B6BA: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_121B6CD: Exit Sub
End Sub

Private Sub Form_Load() '104A8F0
  'Data Table: 442DB4
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_442DC5 As Connection15
  Dim var_DC As Variant
  loc_104A6A0: On Error Goto loc_104A8AA
  loc_104A6B2: Me.LblUser.Left = CDbl(13500)
  loc_104A6C9: Me.LblUser.Top = CDbl(7800)
  loc_104A6E0: Me.LblLDt.Top = CDbl(8160)
  loc_104A6F7: Me.LblLDt.Left = CDbl(13500)
  loc_104A706: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_104A719: Set var_8C = Me.Txt
  loc_104A71F: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_104A73E: Me.DGHelp.Left = CVar(var_90.Left)
  loc_104A75A: Set var_B8 = Me.Txt
  loc_104A760: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_104A781: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_104A799: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_104A7A8: Me.DGHelp.Top = CVar(var_90.Left)
  loc_104A7DE: unk_442DC5.Execute "SELECT Code,Name FROM GuestStat WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_104A80D: CVarUnk
  loc_104A812: VerifyVarObj
  loc_104A81E: LateIdStAd
  loc_104A850: unk_442DC5.Execute "SELECT * FROM GuestStat WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_104A88B: var_C8 = "INI"
  loc_104A899: Call Proc_13_27_E7B55C(Proc_5_1_100EC1C(var_C8, Me, Me.DGHelp, Me), Me)
  loc_104A8A4: Call Proc_13_29_11D8A10(Me.Txt)
  loc_104A8A9: Exit Sub
  loc_104A8AA: ' Referenced from: 104A6A0
  loc_104A8B2: Set var_8C = Err()
  loc_104A8B8: Call 0.Method_arg_2C (var_C8)
  loc_104A8D9: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_104A8EC: Exit Sub
  loc_104A8ED: Exit Sub
End Sub

Private Sub Form_Resize() 'ED6C78
  'Data Table: 442DB4
  Dim var_8C As Label
  loc_ED6BD6: Call 0.Method_arg_50 (var_88)
  loc_ED6BE8: Me.LblFormCaption.Caption = var_88
  loc_ED6C01: Me.LblFormCaption.Left = CDbl(0)
  loc_ED6C0D: Set var_A0 = Me.TopCtrl1
  loc_ED6C13: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED6C20: Set var_8C = Me.TopCtrl1
  loc_ED6C26: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED6C40: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED6C5B: Call 0.Method_arg_100 (var_B8)
  loc_ED6C6D: Me.LblFormCaption.Width = var_B8
  loc_ED6C75: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E29A10
  'Data Table: 442DB4
  loc_E299F3: Set global_52 = Nothing
  loc_E29A05: Set global_56 = Nothing
  loc_E29A0C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8BD04
  'Data Table: 442DB4
  loc_E8BCA0: On Error Goto loc_E8BCC0
  loc_E8BCB7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8BCBF: Exit Sub
  loc_E8BCC0: ' Referenced from: E8BCA0
  loc_E8BCC8: Set var_88 = Err()
  loc_E8BCCE: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8BCEF: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8BD02: Exit Sub
  loc_E8BD03: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE6F4C
  'Data Table: 442DB4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE6EA3: Me.DGHelp.Visible = False
  loc_EE6EC2: If (Me.RecordCount > 0) Then
  loc_EE6EE2:   var_B0 = Me.Fields.Item("Name")
  loc_EE6F01:   Set var_B4 = Me.Txt
  loc_EE6F07:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE6F0F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE6F25: End If
  loc_EE6F30: Set var_A8 = Me.Txt
  loc_EE6F36: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE6F3E: var_B0.SetFocus
  loc_EE6F4A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA90A0
  'Data Table: 442DB4
  Dim var_A8 As Variant
  loc_EA9020: Set var_88 = Me.DGHelp
  loc_EA904A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA9052: Set var_BC = Me.DGHelp
  loc_EA908E: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_EA909C: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E30EA4
  'Data Table: 442DB4
  loc_E30E98: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E30E9B:   Call DGHelp_UnknownEvent_9()
  loc_E30EA0: End If
  loc_E30EA0: Exit Sub
  loc_E30EA2: Result  &  End Sub 'Currency
End Sub

Public Sub SEARCHBACK(MyValue) 'EC0D34
  'Data Table: 442DB4
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC0CAA: On Error Goto loc_EC0CEF
  loc_EC0CB3: Me.MoveFirst
  loc_EC0CCD: var_8C = "code='" & MyValue
  loc_EC0CDD: Me.Find var_8C & "'", 0, 1
  loc_EC0CE9: Call Proc_13_29_11D8A10(var_A0)
  loc_EC0CEE: Exit Sub
  loc_EC0CEF: ' Referenced from: EC0CAA
  loc_EC0CF7: Set var_A4 = Err()
  loc_EC0CFD: Call 0.Method_arg_2C (var_8C)
  loc_EC0D1E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC0D31: Exit Sub
  loc_EC0D32: Exit Sub
End Sub

Public Sub Proc_13_27_E7B55C(arg_C) 'E7B55C
  'Data Table: 442DB4
  Dim var_98 As TextBox
  loc_E7B50A: Set var_8C = Me.Txt
  loc_E7B510: Call 0.Method_Proc_13_27_E7B55CC (var_8E, var_86)
  loc_E7B520: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7B536:   Set var_8C = Me.Txt
  loc_E7B53C:   Call 0.Method_Proc_13_27_E7B55C0 (CInt(var_86), var_98)
  loc_E7B544:   var_98.Enabled = arg_C
  loc_E7B553: Next var_92 'Byte
  loc_E7B559: Exit Sub
End Sub

Public Sub Proc_13_28_EAEFBC
  'Data Table: 442DB4
  Dim var_98 As TextBox
  loc_EAEF2E: global_64 = vbNullString
  loc_EAEF40: Set var_8C = Me.Txt
  loc_EAEF46: Call 0.Method_Proc_13_28_EAEFBCC (var_8E, var_86)
  loc_EAEF56: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAEF6C:   Set var_8C = Me.Txt
  loc_EAEF72:   Call 0.Method_Proc_13_28_EAEFBC0 (CInt(var_86), var_98)
  loc_EAEF7A:   var_98.Text = vbNullString
  loc_EAEF96:   Set var_8C = Me.Txt
  loc_EAEF9C:   Call 0.Method_Proc_13_28_EAEFBC0 (CInt(var_86), var_98)
  loc_EAEFA4:   var_98.Tag = vbNullString
  loc_EAEFB3: Next var_92 'Byte
  loc_EAEFB9: Exit Sub
End Sub

Public Sub Proc_13_29_11D8A10
  'Data Table: 442DB4
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_442DC5 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_11C As TextBox
  loc_11D85D8: On Error Goto loc_11D89CA
  loc_11D85E1: Proc_183_45_E5CCA8(global_52)
  loc_11D863C: unk_442DC5.Execute CStr("Select U_Name,U_AE,U_EntDt From gueststat where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_11D8647: Set var_88 = var_118
  loc_11D869B: var_118 = var_88.Fields
  loc_11D8704: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_11D8749: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_11D87C3: var_11C = var_88.Fields.Item("U_AE")
  loc_11D87DC: var_114 = "entdt : "
  loc_11D87E7: var_F0 = "Last Update : "
  loc_11D8824: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), var_F0, var_114))
  loc_11D8869: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_11D88B8: If (Me.RecordCount <= 0) Then
  loc_11D88BB:   Call Proc_13_28_EAEFBC()
  loc_11D88C3: Else
  loc_11D88F7:   global_60 = CStr(Me.Fields.Item("Name").Value)
  loc_11D8942:   Set var_118 = Me.Txt
  loc_11D8948:   Call 0.Method_Proc_13_29_11D8A100 (0, var_11C)
  loc_11D8950:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11D8994:   var_F4 = CStr(Me.Fields.Item("Code").Value)
  loc_11D89A0:   Set var_118 = Me.Txt
  loc_11D89A6:   Call 0.Method_Proc_13_29_11D8A100 (0, var_11C)
  loc_11D89AE:   var_11C.Tag = var_F4
  loc_11D89C4: End If
  loc_11D89C4: Call Proc_13_31_E842E8()
  loc_11D89C9: Exit Sub
  loc_11D89CA: ' Referenced from: 11D85D8
  loc_11D89D2: Set var_8C = Err()
  loc_11D89D8: Call 0.Method_arg_2C (var_F4)
  loc_11D89F9: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_11D8A0C: Exit Sub
  loc_11D8A0D:  = 
End Sub

Public Sub Proc_13_30_108DCA0
  'Data Table: 442DB4
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_442DC5 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108DA33: If (Me.RecordCount = 0) Then
  loc_108DA36:   Proc_13_30_108DCA0 = 
  loc_108DA3C: End If
  loc_108DA40: Set var_90 = Me.TopCtrl1
  loc_108DA46: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108DA5F: If (CStr() = "Add") Then
  loc_108DA9D:   Set var_90 = Me.Txt
  loc_108DAA3:   Call 0.Method_Proc_13_30_108DCA00 (CInt(0), var_A8, var_AC, "Select Count(*) From GuestStat Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108DAC4:   unk_442DC5.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_108DAD4:    = var_D0.Item()
  loc_108DADC:    = var_E4.Value
  loc_108DB0D:   If (var_A8.Text.Fields > 0) Then
  loc_108DB2B:     var_A0 = "Duplicate Name"
  loc_108DB31:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_108DB4C:     Set var_90 = Me.Txt
  loc_108DB52:     Call 0.Method_Proc_13_30_108DCA00 (CInt(0))
  loc_108DB5A:     var_A8.SetFocus
  loc_108DB6B:     Proc_13_30_108DCA0 = &HFF
  loc_108DB71:   End If
  loc_108DB74: Else
  loc_108DBAF:   Set var_90 = Me.Txt
  loc_108DBB5:   Call 0.Method_Proc_13_30_108DCA00 (CInt(0), var_A8, var_AC, "Select Count(*) From GuestStat Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108DBE7:   unk_442DC5.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_108DBF7:    = var_D0.Item(var_A8)
  loc_108DBFF:    = var_E4.Value
  loc_108DC34:   If (var_A8.Text.Fields > 0) Then
  loc_108DC58:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108DC73:     Set var_90 = Me.Txt
  loc_108DC79:     Call 0.Method_Proc_13_30_108DCA00 (CInt(0))
  loc_108DC81:     var_A8.SetFocus
  loc_108DC92:     Proc_13_30_108DCA0 = &HFF
  loc_108DC98:   End If
  loc_108DC98: End If
  loc_108DC98: Proc_13_30_108DCA0 = var_A8
End Sub

Public Sub Proc_13_31_E842E8
  'Data Table: 442DB4
  Dim MemVar_0 As Double
  loc_E84294: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E842A6:   Me.DGHelp.Visible = False
  loc_E842AE: End If
  loc_E842CA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E842DC:   Me.FGPoint.Visible = False
  loc_E842E4: End If
  loc_E842E4: Exit Sub
  loc_E842E5: MemVar_0 = 
End Sub

Public Sub Proc_13_32_E922B4(arg_C) 'E922B4
  'Data Table: 442DB4
  Dim var_10C As TextBox
  loc_E92248: Call Proc_13_31_E842E8()
  loc_E92284: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E92287:   Call TopCtrl1_UnknownEvent_16()
  loc_E9228F: Else
  loc_E92299:   Set var_108 = Me.Txt
  loc_E9229F:   Call 0.Method_Proc_13_32_E922B40 (arg_C)
  loc_E922A7:   var_10C.SetFocus
  loc_E922B3: End If
  loc_E922B3: Exit Sub
End Sub
