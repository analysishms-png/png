VERSION 5.00
Begin VB.Form FrmForeignExMast
  Caption = "Foreign Exchange Master"
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
  ClientWidth = 8910
  ClientHeight = 5730
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8910
    Height = 440
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2085
    Top = 840
    Width = 1290
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2085
    Top = 570
    Width = 3135
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 1080
    Top = 1515
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 0
  End
  Begin MSFlexGrid FGPoint
    Left = 5610
    Top = 1350
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 1
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 795
    Top = 4980
    Width = 2880
    Height = 255
    TabIndex = 8
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
    Left = 4170
    Top = 4980
    Width = 2790
    Height = 285
    TabIndex = 7
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
  Begin Label LblLedgerAc
    Caption = "Rate"
    Index = 2
    ForeColor = &H0&
    Left = 1035
    Top = 840
    Width = 390
    Height = 240
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Name"
    Index = 0
    ForeColor = &H0&
    Left = 1050
    Top = 570
    Width = 495
    Height = 240
    TabIndex = 4
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmForeignExMast"


Private Sub Txt_GotFocus(Index As Integer) 'F081EC
  'Data Table: 4469BC
  Dim Me As Recordset15
  loc_F08118: On Error Goto loc_F081A7
  loc_F08125: Set var_88 = Me.Txt
  loc_F0812B: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F08139: Proc_6_74_E23240(var_8C)
  loc_F08145: Call Proc_321_31_E876C0(var_8C)
  loc_F08158: If (Index = CInt(0)) Then
  loc_F08172:   If (Me.RecordCount > 0) Then
  loc_F08180:     Set var_8C = Me.FGPoint
  loc_F08198:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_F081A6:   End If
  loc_F081A6: End If
  loc_F081A6: Exit Sub
  loc_F081A7: ' Referenced from: F08118
  loc_F081AF: Set var_88 = Err()
  loc_F081B5: Call 0.Method_arg_2C (var_9C, var_8C)
  loc_F081D6: MsgBox(CVar(var_9C), &H40, "Information", var_EC, var_10C)
  loc_F081E9: Exit Sub
  loc_F081EA: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '101BC80
  'Data Table: 4469BC
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As TextBox
  loc_101BA76: If (CLng(Shift) = &H1B) Then
  loc_101BA79:   Call Proc_321_31_E876C0()
  loc_101BA7E:   Exit Sub
  loc_101BA7F: End If
  loc_101BA8D: If (KeyCode = CInt(0)) Then
  loc_101BAAD:   Set var_9C = Me.FGPoint
  loc_101BADF:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_101BB4C:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_101BB53:     Set var_9C = Me.DGHelp
  loc_101BB5A:     Set var_90 = Me.FGPoint
  loc_101BB72:     Proc_6_138_106E830(var_9C, global_56, KeyCode, var_90, 0)
  loc_101BB80:   End If
  loc_101BB80: End If
  loc_101BB9C: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_101BBBD:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(1))) Then
  loc_101BBC3:     Call Proc_321_30_10EFE44(var_92, 1, var_9C)
  loc_101BBCE:     If (var_92 = &HFF) Then
  loc_101BBDE:       Set var_8C = Me.Txt
  loc_101BBE4:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_101BBEC:       var_90.Text = 0
  loc_101BBF8:       Exit Sub
  loc_101BBF9:     End If
  loc_101BC30:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_101BC33:       Call TopCtrl1_UnknownEvent_16()
  loc_101BC38:     End If
  loc_101BC38:     Exit Sub
  loc_101BC39:   End If
  loc_101BC4E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_101BC57:     Proc_6_75_E5335C(Shift, arg_14)
  loc_101BC5C:   End If
  loc_101BC6F:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_101BC78:     Proc_6_76_E533C8(Shift, arg_14)
  loc_101BC7D:   End If
  loc_101BC7D: End If
  loc_101BC7D: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E87B50
  'Data Table: 4469BC
  Dim arg_10 As Integer
  loc_E87AEE: Proc_6_133_E7FB08(var_94)
  loc_E87AF7: arg_10 = CInt(var_94)
  loc_E87B00: Proc_6_58_E06050(arg_10, arg_10)
  loc_E87B13: If (KeyAscii = CInt(1)) Then
  loc_E87B20:   Set var_9C = Me.Txt
  loc_E87B26:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_E87B41:   Proc_6_42_129B55C(var_A0, arg_10, 5)
  loc_E87B4D: End If
  loc_E87B4D: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC34A0
  'Data Table: 4469BC
  loc_EC3412: If (KeyCode = CInt(0)) Then
  loc_EC3431:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC343E:     var_A4 = "Name"
  loc_EC345D:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_EC348F:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC349D:   End If
  loc_EC349D: End If
  loc_EC349D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4BDA4
  'Data Table: 4469BC
  loc_E4BD82: Set var_88 = Me.Txt
  loc_E4BD88: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4BD96: Proc_6_73_E23294(var_8C)
  loc_E4BDA2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'EFFB9C
  'Data Table: 4469BC
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As TextBox
  Dim var_EC As TextBox
  loc_EFFAD7: var_86 = Cancel
  loc_EFFAE2: If (var_86 = CInt(0)) Then
  loc_EFFAE8:   Call Proc_321_30_10EFE44(var_88)
  loc_EFFAF3:   If (var_88 = &HFF) Then
  loc_EFFAF8:     arg_10 = &HFF
  loc_EFFAFB:     Exit Sub
  loc_EFFAFC:   End If
  loc_EFFAFF: Else
  loc_EFFB07:   If (var_86 = CInt(1)) Then
  loc_EFFB17:     Set var_8C = Me.Txt
  loc_EFFB1D:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_EFFB25:     arg_10 = var_90.Text
  loc_EFFB6A:     Set var_E8 = Me.Txt
  loc_EFFB70:     Call 0.Method_Txt_Validate0 (Cancel, var_EC, CStr(Format(CVar(Val(var_94)), "0.000")), 1)
  loc_EFFB78:     var_EC.Text = 1
  loc_EFFB98:   End If
  loc_EFFB98: End If
  loc_EFFB98: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFBBEC
  'Data Table: 4469BC
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFBB20: On Error Goto loc_EFBBA6
  loc_EFBB23: Call Proc_321_28_E7A4BC()
  loc_EFBB35: Me.LblUser.Caption = vbNullString
  loc_EFBB4A: Me.LblLDt.Caption = vbNullString
  loc_EFBB67: var_8C = "ADD"
  loc_EFBB75: Call Proc_321_27_E7BC7C(Proc_5_1_100EC1C(var_8C, Me))
  loc_EFBB8B: Set var_88 = Me.Txt
  loc_EFBB91: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFBB99: var_94.SetFocus
  loc_EFBBA5: Exit Sub
  loc_EFBBA6: ' Referenced from: EFBB20
  loc_EFBBAE: Set var_88 = Err()
  loc_EFBBB4: Call 0.Method_arg_2C (var_8C)
  loc_EFBBD5: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFBBE8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC32DC
  'Data Table: 4469BC
  loc_EC3244: On Error Goto loc_EC32D4
  loc_EC327E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC3281:   Call Proc_321_31_E876C0()
  loc_EC3292:   Set var_110 = Me
  loc_EC32A9:   Call Proc_321_27_E7BC7C(Proc_5_1_100EC1C("INI", var_110))
  loc_EC32B4:   Call Proc_321_29_11F7438(global_52)
  loc_EC32BC: Else
  loc_EC32C2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC32CA:   Call var_110.SetFocus
  loc_EC32D3: End If
  loc_EC32D3: Exit Sub
  loc_EC32D4: ' Referenced from: EC3244
  loc_EC32D4: Proc_6_60_E63754()
  loc_EC32D9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10DEB98
  'Data Table: 4469BC
  Dim var_96 As Integer
  Dim unk_4469CE As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10DE8B8: On Error Goto loc_10DEB41
  loc_10DE8C9: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_10DE8CC:   Exit Sub
  loc_10DE8CD: End If
  loc_10DE904: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10DE909:   var_96 = 0
  loc_10DE915:   unk_4469CE.BeginTrans var_11C
  loc_10DE91C:   var_96 = &HFF
  loc_10DE930:   var_94 = Me.Bookmark 'Variant
  loc_10DE97C:   var_F8 = "Delete From ForEx Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10DE98A:   unk_4469CE.Execute CStr(var_F8), var_118, -1
  loc_10DE9D5:   var_164 = 0
  loc_10DE9E8:   var_15C = 0
  loc_10DE9F3:   var_158 = 0
  loc_10DEA06:   var_150 = 0
  loc_10DEA11:   var_14C = 0
  loc_10DEA24:   var_144 = 0
  loc_10DEA64:   var_128 = "ForEx"
  loc_10DEA6D:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10DEA9B:   unk_4469CE.CommitTrans
  loc_10DEAA2:   var_96 = 0
  loc_10DEAB0:   Me.Requery -1
  loc_10DEAC0:   Me.Requery -1
  loc_10DEAE0:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10DEAED:     Me.Bookmark = var_94
  loc_10DEAF5:   Else
  loc_10DEB09:     If (Me.EOF = 0) Then
  loc_10DEB12:       Me.MoveLast
  loc_10DEB17:     End If
  loc_10DEB17:   End If
  loc_10DEB17:   Call Proc_321_29_11F7438(var_96, var_144, 0, var_14C, var_150)
  loc_10DEB38:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_10DEB40: End If
  loc_10DEB40: Exit Sub
  loc_10DEB41: ' Referenced from: 10DE8B8
  loc_10DEB47: If (var_96 = &HFF) Then
  loc_10DEB50:   unk_4469CE.RollbackTrans
  loc_10DEB55: End If
  loc_10DEB5D: Set var_120 = Err()
  loc_10DEB63: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10DEB84: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10DEB97: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F262B4
  'Data Table: 4469BC
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F261B8: On Error Goto loc_F2626F
  loc_F261C9: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F261CC:   Exit Sub
  loc_F261CD: End If
  loc_F261E4: If (Me.RecordCount > 0) Then
  loc_F261FC:   var_8C = "EDIT"
  loc_F2620A:   Call Proc_321_27_E7BC7C(Proc_5_1_100EC1C(var_8C, Me))
  loc_F26220:   Set var_90 = Me.Txt
  loc_F26226:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F2622E:   var_98.SetFocus
  loc_F2623D: Else
  loc_F2625E:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F2626E: End If
  loc_F2626E: Exit Sub
  loc_F2626F: ' Referenced from: F261B8
  loc_F26277: Set var_90 = Err()
  loc_F2627D: Call 0.Method_arg_2C (var_8C)
  loc_F2629E: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F262B1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15B3C
  'Data Table: 4469BC
  loc_E15B31: Me.Global.Unload Me
  loc_E15B39: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F6643C
  'Data Table: 4469BC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F66310: On Error Goto loc_F663D6
  loc_F6631C: var_88 = Me.RecordCount
  loc_F6632A: If (var_88 <= 0) Then
  loc_F66333:   var_B8 = "Information"
  loc_F6634E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F6635E:   Exit Sub
  loc_F6635F: End If
  loc_F66367: If (MemVar_1F953B0 = "A") Then
  loc_F66378:   MemVar_1F950E4 = "Select Code As SearchCode,Name,Rate FROM ForEx WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_F66382: Else
  loc_F6638A:   If (MemVar_1F953B0 = "S") Then
  loc_F6639B:     MemVar_1F950E4 = "Select Code As SearchCode,Name,cast(Rate as Varchar(11)) as Rate FROM ForEx WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_F663A2:   End If
  loc_F663A2: End If
  loc_F663A5: var_10C = "3000,1000"
  loc_F663AB: Proc_6_126_F1C850(var_10C, MemVar_1F950E4)
  loc_F663B9: MemVar_1F95120 = Me
  loc_F663D0: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F663D5: Exit Sub
  loc_F663D6: ' Referenced from: F66310
  loc_F663DE: Set var_110 = Err()
  loc_F663E4: Call 0.Method_arg_1C (var_88)
  loc_F663F5: If (var_88 <> 0) Then
  loc_F66400:   Set var_110 = Err()
  loc_F66406:   Call 0.Method_arg_2C (var_10C)
  loc_F66427:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F6643A: End If
  loc_F6643A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2C7C8
  'Data Table: 4469BC
  loc_E2C7B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C7C0: Call Proc_321_29_11F7438(global_52)
  loc_E2C7C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2C6A8
  'Data Table: 4469BC
  loc_E2C698: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C6A0: Call Proc_321_29_11F7438(global_52)
  loc_E2C6A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2C708
  'Data Table: 4469BC
  loc_E2C6F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C700: Call Proc_321_29_11F7438(global_52)
  loc_E2C705: Exit Sub
  loc_E2C706: If Not 3 Then Exit Sub
  loc_E2C706: End If
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2E388
  'Data Table: 4469BC
  loc_E2E378: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2E380: Call Proc_321_29_11F7438(global_52)
  loc_E2E385: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10854DC
  'Data Table: 4469BC
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4469CE As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1085244: On Error Goto loc_1085490
  loc_108526B: unk_4469CE.Execute "Select * from ForEx WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_1085276: Set var_88 = var_C8
  loc_108528C: var_CC = var_88.RecordCount
  loc_108529A: If (var_CC = 0) Then
  loc_10852B6:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_10852C6:   Exit Sub
  loc_10852C7: End If
  loc_10852D6: var_A4 = MemVar_1F950B4 & "\ForeignExMast.ttx"
  loc_10852DD: Set var_C8 = var_88 
  loc_10852E9: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_10852F3: Set var_88 = var_C8
  loc_10852F9: var_B4 = CVar(var_12E) 'Integer
  loc_10852FC: var_98 = var_B4 'Variant
  loc_1085318: var_A0 = MemVar_1F950B4 & "\ForeignExMast.RPT"
  loc_1085321: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108532C: MemVar_1F951E8 = var_C8
  loc_1085347: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108534F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108535B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1085374:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108537C:   Call 0.Method_arg_20 (var_138)
  loc_1085384:   Call 0.Method_arg_30 (var_A0)
  loc_10853CA:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10853E0:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10853E8:     Call 0.Method_arg_20 (var_138)
  loc_10853F0:     Call 0.Method_arg_38 ("'Forex Master'")
  loc_10853FC:   End If
  loc_10853FF: Next var_132 'Integer
  loc_108541D: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1085425: Call 0.Method_arg_2C (var_DC)
  loc_1085433: Call 0.Method_arg_150 (var_FC)
  loc_108543E: Call 0.Method_arg_50 (var_A0)
  loc_1085448: Set var_138 = Nothing
  loc_1085462: Set var_C8 = MemVar_1F951E8 
  loc_108546E: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_1085479: MemVar_1F951E8 = var_C8
  loc_108548C: Set var_88 = Nothing
  loc_108548F: Exit Sub
  loc_1085490: ' Referenced from: 1085244
  loc_1085498: Set var_C8 = Err()
  loc_108549E: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10854A9: Call 0.Method_arg_50 (var_A4)
  loc_10854C5: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_10854D8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B098
  'Data Table: 4469BC
  Dim Me As Recordset15
  loc_E0B08F: Me.Requery -1
  loc_E0B094: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12DD6C0
  'Data Table: 4469BC
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_4469CE As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_114 As TextBox
  Dim var_288 As Double
  Dim var_B0 As Variant
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_1F8 As Variant
  Dim var_238 As Variant
  Dim var_1E8 As Variant
  loc_12DD054: On Error Goto loc_12DD66C
  loc_12DD05B: var_86 = CByte(0) 'Byte
  loc_12DD06A: Set var_90 = Me.Txt
  loc_12DD070: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_12DD099: If (Proc_183_19_E8E68C(var_94, "Name") = 0) Then
  loc_12DD0A3:   Call Txt_GotFocus(CInt(0))
  loc_12DD0A8:   Exit Sub
  loc_12DD0A9: End If
  loc_12DD0B4: Set var_90 = Me.Txt
  loc_12DD0BA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_12DD0E3: If (Proc_183_19_E8E68C(var_94, "Rate") = 0) Then
  loc_12DD0ED:   Call Txt_GotFocus(CInt(1))
  loc_12DD0F2:   Exit Sub
  loc_12DD0F3: End If
  loc_12DD0F7: Set var_90 = Me.TopCtrl1
  loc_12DD0FD: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_12DD116: If (CStr() = "Add") Then
  loc_12DD121:   If (MemVar_1F953B0 = "A") Then
  loc_12DD12A:     var_D4 = 0
  loc_12DD147:     var_9C = "Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From ForEx WHERE SITE_CODE='" & MemVar_1F95070
  loc_12DD157:     unk_4469CE.Execute CStr() & "'", var_B0, -1
  loc_12DD15F:     var_90 = var_90.Fields
  loc_12DD167:     var_D4 = var_94.Item(var_94)
  loc_12DD16F:     var_98 = var_98.Value
  loc_12DD17E:     global_64 = CStr(var_E4)
  loc_12DD19E:   Else
  loc_12DD1A6:     If (MemVar_1F953B0 = "S") Then
  loc_12DD1AF:       var_D4 = 0
  loc_12DD1CC:       var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From ForEx WHERE SITE_CODE='" & MemVar_1F95070
  loc_12DD1D3:       var_B4 = CStr() & "'"
  loc_12DD1DC:       unk_4469CE.Execute var_B4, var_B0, -1
  loc_12DD1E4:       var_90 = var_90.Fields
  loc_12DD1EC:       var_D4 = var_94.Item(var_94)
  loc_12DD1F4:       var_98 = var_98.Value
  loc_12DD203:       global_64 = CStr(var_E4)
  loc_12DD220:     End If
  loc_12DD220:   End If
  loc_12DD22D:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_12DD25B:   var_108 = (1 + Format(global_64, "000"))
  loc_12DD266:   global_64 = CStr(var_108)
  loc_12DD27B: Else
  loc_12DD281:   var_C4 = "Code"
  loc_12DD298:   var_94 = Me.Fields.Item(var_C4)
  loc_12DD2AF:   global_64 = CStr(var_94.Value)
  loc_12DD2C0: End If
  loc_12DD2C9: unk_4469CE.BeginTrans var_10C
  loc_12DD2D2: var_86 = CByte(1) 'Byte
  loc_12DD2DA: Set var_90 = Me.TopCtrl1
  loc_12DD2E0: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_12DD2F9: If (CStr(var_F8) = "Add") Then
  loc_12DD30A:   Set var_90 = Me.Txt
  loc_12DD310:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4)
  loc_12DD318:   var_E4 = var_94.Text
  loc_12DD32B:   Set var_98 = Me.Txt
  loc_12DD331:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114)
  loc_12DD339:   var_118 = var_114.Text
  loc_12DD37B:   Proc_6_7_F26918(var_1E8, Date, 1)
  loc_12DD397:   var_9C = "Insert Into ForEx(Code,Name,Rate,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_64
  loc_12DD3D8:   var_1A8 = CVar(var_9C & "','" & var_B4 & "',") & Format(CVar(Val(var_118)), "0.000") & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_12DD3E1:   var_1C8 = var_1A8 & "'," 
  loc_12DD3FB:   var_238 = var_1C8 & var_1E8 & ",'A','" & CVar(MemVar_1F95078) 
  loc_12DD412:   unk_4469CE.Execute CStr(var_238 & "')"), var_27C, -1
  loc_12DD45B: Else
  loc_12DD469:   Set var_90 = Me.Txt
  loc_12DD46F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, var_280)
  loc_12DD477:   1 = var_94.Text
  loc_12DD48A:   Set var_98 = Me.Txt
  loc_12DD490:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_12DD498:   var_288 = var_114.Text
  loc_12DD4A5:   var_288 = Val(var_118)
  loc_12DD4B7:   var_E4 = "0.000"
  loc_12DD4C7:   var_F8 = Format(CVar(var_288), var_E4)
  loc_12DD4DA:   Proc_6_7_F26918(var_1C8, Date, 1)
  loc_12DD508:   var_108 = CVar("UPDATE ForEx SET Name='" & var_9C & "',SITE_CODE='" & MemVar_1F95070 & "',Rate=") 'String
  loc_12DD547:   var_1F8 = var_108 & var_F8 & ",U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_1C8 & " ,U_AE='E' WHERE Code='" & CVar(global_64) 
  loc_12DD55E:   unk_4469CE.Execute CStr(var_1F8 & "'"), var_238, -1
  loc_12DD5A0: End If
  loc_12DD5A6: unk_4469CE.CommitTrans
  loc_12DD5AF: var_86 = CByte(0) 'Byte
  loc_12DD5BE: Me.Requery -1
  loc_12DD5CE: Me.Requery -1
  loc_12DD5FB: Me.Find "Code='" & global_64 & "'", 0, 1
  loc_12DD60B: Set var_90 = Me.TopCtrl1
  loc_12DD611: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_12DD62A: If (CStr(var_280) = "Add") Then
  loc_12DD62D:   Call TopCtrl1_UnknownEvent_A()
  loc_12DD632:   Exit Sub
  loc_12DD633: End If
  loc_12DD648: var_9C = "INI"
  loc_12DD656: Call Proc_321_27_E7BC7C(Proc_5_1_100EC1C(var_9C, Me, global_52), 1)
  loc_12DD661: Call Proc_321_31_E876C0(var_288)
  loc_12DD666: Call Proc_321_29_11F7438(var_E4)
  loc_12DD66B: Exit Sub
  loc_12DD66C: ' Referenced from: 12DD054
  loc_12DD675: If (CInt(var_86) = 1) Then
  loc_12DD67E:   unk_4469CE.RollbackTrans
  loc_12DD683: End If
  loc_12DD68B: Set var_90 = Err()
  loc_12DD691: Call 0.Method_arg_2C (var_9C)
  loc_12DD6AA: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_12DD6BD: Exit Sub
  loc_12DD6BE: Exit Sub
End Sub

Private Sub Form_Load() 'FBD3D8
  'Data Table: 4469BC
  Dim var_8C As Label
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_4469CE As Connection15
  Dim var_B4 As Variant
  loc_FBD234: On Error Goto loc_FBD394
  loc_FBD23E: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_FBD252: Me.LblUser.Left = CDbl(13500)
  loc_FBD269: Me.LblUser.Top = CDbl(7800)
  loc_FBD280: Me.LblLDt.Top = CDbl(8160)
  loc_FBD291: Set var_8C = Me.LblLDt
  loc_FBD297: var_8C.Left = CDbl(13500)
  loc_FBD29F: Call Proc_321_32_EDC174()
  loc_FBD2C8: unk_4469CE.Execute "SELECT Code,Name FROM ForEx WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_FBD2F7: CVarUnk
  loc_FBD2FC: VerifyVarObj
  loc_FBD308: LateIdStAd
  loc_FBD331: var_94 = "SELECT E.*,E.Code as SearchCode FROM ForEx E WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') order by Name"
  loc_FBD33A: unk_4469CE.Execute var_94, var_B4, -1
  loc_FBD375: var_90 = "INI"
  loc_FBD383: Call Proc_321_27_E7BC7C(Proc_5_1_100EC1C(var_90, Me, Me.DGHelp, Me), Me)
  loc_FBD38E: Call Proc_321_29_11F7438(Me)
  loc_FBD393: Exit Sub
  loc_FBD394: ' Referenced from: FBD234
  loc_FBD39C: Set var_8C = Err()
  loc_FBD3A2: Call 0.Method_arg_2C (var_90)
  loc_FBD3C3: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_FBD3D6: Exit Sub
  loc_FBD3D7: Exit Sub
End Sub

Private Sub Form_Resize() 'DFD180
  'Data Table: 4469BC
  loc_DFD17C: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2B504
  'Data Table: 4469BC
  Dim arg_7FFF As Double
  loc_E2B4E7: Set global_52 = Nothing
  loc_E2B4F9: Set global_56 = Nothing
  loc_E2B500: Exit Sub
  loc_E2B501: arg_7FFF = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A6A4
  'Data Table: 4469BC
  loc_E2A67C: On Error Goto loc_E2A69B
  loc_E2A693: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2A69B: ' Referenced from: E2A67C
  loc_E2A69B: Proc_6_60_E63754(Shift)
  loc_E2A6A0: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE674C
  'Data Table: 4469BC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE66A3: Me.DGHelp.Visible = False
  loc_EE66C2: If (Me.RecordCount > 0) Then
  loc_EE66E2:   var_B0 = Me.Fields.Item("Name")
  loc_EE6701:   Set var_B4 = Me.Txt
  loc_EE6707:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE670F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE6725: End If
  loc_EE6730: Set var_A8 = Me.Txt
  loc_EE6736: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE673E: var_B0.SetFocus
  loc_EE674A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'F01D3C
  'Data Table: 4469BC
  Dim var_9C As DataGrid
  Dim var_BC As Variant
  loc_F01C64: Set var_88 = Me.DGHelp
  loc_F01C7D: Me.DGHelp.InsertColumnLabels DGHelp.DispID_1D, 
  loc_F01CB6: If (CDbl(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF)))) < CDbl(CLng(var_AC))) Then
  loc_F01CBD:   Set var_88 = Me.DGHelp
  loc_F01CE7:   var_BC = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_F01CEF:   Set var_9C = Me.DGHelp
  loc_F01D04: End If
  loc_F01D2B: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_F01D39: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E2ED44
  'Data Table: 4469BC
  Dim arg_6CFF As Double
  loc_E2ED38: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E2ED3B:   Call DGHelp_UnknownEvent_9()
  loc_E2ED40: End If
  loc_E2ED40: Exit Sub
  loc_E2ED41: arg_6CFF = 
End Sub

Public Sub SEARCHBACK(MyValue) 'EC31F4
  'Data Table: 4469BC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC316A: On Error Goto loc_EC31AF
  loc_EC3173: Me.MoveFirst
  loc_EC318D: var_8C = "code='" & MyValue
  loc_EC319D: Me.Find var_8C & "'", 0, 1
  loc_EC31A9: Call Proc_321_29_11F7438(var_A0)
  loc_EC31AE: Exit Sub
  loc_EC31AF: ' Referenced from: EC316A
  loc_EC31B7: Set var_A4 = Err()
  loc_EC31BD: Call 0.Method_arg_2C (var_8C)
  loc_EC31DE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC31F1: Exit Sub
  loc_EC31F2: Exit Sub
End Sub

Public Sub Proc_321_27_E7BC7C(arg_C) 'E7BC7C
  'Data Table: 4469BC
  Dim var_98 As TextBox
  loc_E7BC2A: Set var_8C = Me.Txt
  loc_E7BC30: Call 0.Method_Proc_321_27_E7BC7CC (var_8E, var_86)
  loc_E7BC40: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7BC56:   Set var_8C = Me.Txt
  loc_E7BC5C:   Call 0.Method_Proc_321_27_E7BC7C0 (CInt(var_86), var_98)
  loc_E7BC64:   var_98.Enabled = arg_C
  loc_E7BC73: Next var_92 'Byte
  loc_E7BC79: Exit Sub
End Sub

Public Sub Proc_321_28_E7A4BC
  'Data Table: 4469BC
  Dim var_98 As TextBox
  Dim Proc_321_28_E7A4BC4FF As Double
  loc_E7A46A: Set var_8C = Me.Txt
  loc_E7A470: Call 0.Method_Proc_321_28_E7A4BCC (var_8E, var_86)
  loc_E7A480: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A496:   Set var_8C = Me.Txt
  loc_E7A49C:   Call 0.Method_Proc_321_28_E7A4BC0 (CInt(var_86), var_98)
  loc_E7A4A4:   var_98.Text = vbNullString
  loc_E7A4B3: Next var_92 'Byte
  loc_E7A4B9: Exit Sub
  loc_E7A4BA: Proc_321_28_E7A4BC4FF = 
End Sub

Public Sub Proc_321_29_11F7438
  'Data Table: 4469BC
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B8 As Fields15
  Dim var_B4 As String
  Dim var_CC As TextBox
  loc_11F6FCC: On Error Goto loc_11F73F3
  loc_11F6FD5: Proc_183_45_E5CCA8(global_52)
  loc_11F6FF1: If (Me.RecordCount <= 0) Then
  loc_11F6FF4:   Call Proc_321_28_E7A4BC()
  loc_11F6FFC: Else
  loc_11F70A5:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_11F70ED:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_Name")))))
  loc_11F716D:   var_CC = Me.Fields.Item("U_AE")
  loc_11F71CE:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_CC)) = "E"), "Last Update :   ", "entdt :   "))
  loc_11F7216:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_EntDt")))))
  loc_11F7282:   global_64 = CStr(Me.Fields.Item("Name").Value)
  loc_11F72CF:   Set var_B8 = Me.Txt
  loc_11F72D5:   Call 0.Method_Proc_321_29_11F74380 (CInt(0), var_CC)
  loc_11F72DD:   var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11F732F:   Set var_B8 = Me.Txt
  loc_11F7335:   Call 0.Method_Proc_321_29_11F74380 (CInt(0), var_CC)
  loc_11F733D:   var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_11F7381:   var_B4 = CStr(Me.Fields.Item("Rate").Value)
  loc_11F739B:   var_110 = "0.000"
  loc_11F73AB:   var_130 = Format(CVar(Val(var_B4)), var_110)
  loc_11F73C2:   Set var_B8 = Me.Txt
  loc_11F73C8:   Call 0.Method_Proc_321_29_11F74380 (CInt(1), var_CC, CStr(var_130))
  loc_11F73D0:   var_CC.Text = 1
  loc_11F73F2: End If
  loc_11F73F2: Exit Sub
  loc_11F73F3: ' Referenced from: 11F6FCC
  loc_11F73FB: Set var_8C = Err()
  loc_11F7401: Call 0.Method_arg_2C (var_B4, 1)
  loc_11F7422: MsgBox(CVar(var_B4), &H40, "Information", var_110, var_130)
  loc_11F7435: Exit Sub
End Sub

Public Sub Proc_321_30_10EFE44
  'Data Table: 4469BC
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4469CE As Connection15
  Dim var_D8 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_180 As Fields15
  Dim var_194 As Field20
  loc_10EFB7B: If (Me.RecordCount = 0) Then
  loc_10EFB7E:   Proc_321_30_10EFE44 = 
  loc_10EFB84: End If
  loc_10EFB88: Set var_90 = Me.TopCtrl1
  loc_10EFB8E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10EFBA7: If (CStr() = "Add") Then
  loc_10EFBE5:   Set var_90 = Me.Txt
  loc_10EFBEB:   Call 0.Method_Proc_321_30_10EFE440 (CInt(0), var_A8, var_AC, "Select Count(*) From ForEx Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10EFC1A:   unk_4469CE.Execute var_D8 & var_AC & "' and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')", 0, var_EC
  loc_10EFC2A:    = var_D8.Item()
  loc_10EFC32:    = var_EC.Value
  loc_10EFC67:   If (var_A8.Text.Fields > 0) Then
  loc_10EFC8B:     MsgBox("Duplicate Name", &H40, "Information", var_11C, var_13C)
  loc_10EFCA6:     Set var_90 = Me.Txt
  loc_10EFCAC:     Call 0.Method_Proc_321_30_10EFE440 (CInt(0))
  loc_10EFCB4:     var_A8.SetFocus
  loc_10EFCC5:     Proc_321_30_10EFE44 = &HFF
  loc_10EFCCB:   End If
  loc_10EFCCE: Else
  loc_10EFD09:   Set var_90 = Me.Txt
  loc_10EFD0F:   Call 0.Method_Proc_321_30_10EFE440 (CInt(0), var_A8, var_AC, "Select Count(*) From ForEx Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_17C, -1)
  loc_10EFD57:   var_11C = CVar(var_180 & var_AC & "' And Name<>'") & Me.Fields.Item("Name").Value 
  loc_10EFD60:   var_13C = var_11C & "' and (LOGSITE_CODE='" 
  loc_10EFD81:   unk_4469CE.Execute CStr(var_13C & CVar(MemVar_1F95078) & "' or LOGSITE_CODE='HO')"), 0, var_194
  loc_10EFD91:    = var_180.Item(var_A8)
  loc_10EFD99:    = var_194.Value
  loc_10EFDDA:   If (var_A8.Text.Fields > 0) Then
  loc_10EFDFE:     MsgBox("Duplicate Name", &H40, "Information", var_11C, var_13C)
  loc_10EFE19:     Set var_90 = Me.Txt
  loc_10EFE1F:     Call 0.Method_Proc_321_30_10EFE440 (CInt(0))
  loc_10EFE27:     var_A8.SetFocus
  loc_10EFE38:     Proc_321_30_10EFE44 = &HFF
  loc_10EFE3E:   End If
  loc_10EFE3E: End If
  loc_10EFE3E: Proc_321_30_10EFE44 = var_A8
End Sub

Public Sub Proc_321_31_E876C0
  'Data Table: 4469BC
  loc_E8766C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E8767E:   Me.DGHelp.Visible = False
  loc_E87686: End If
  loc_E876A2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E876B4:   Me.FGPoint.Visible = False
  loc_E876BC: End If
  loc_E876BC: Exit Sub
  loc_E876BD: CExtInstUnk
End Sub

Public Sub Proc_321_32_EDC174
  'Data Table: 4469BC
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_EDC0D2: Set var_88 = Me.Txt
  loc_EDC0D8: Call 0.Method_Proc_321_32_EDC1740 (CInt(0), var_8C)
  loc_EDC0F7: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_EDC113: Set var_B4 = Me.Txt
  loc_EDC119: Call 0.Method_Proc_321_32_EDC1740 (CInt(0), var_B8)
  loc_EDC134: Set var_88 = Me.Txt
  loc_EDC13A: Call 0.Method_Proc_321_32_EDC1740 (CInt(0), var_8C)
  loc_EDC152: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_EDC161: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_EDC173: Exit Sub
End Sub
