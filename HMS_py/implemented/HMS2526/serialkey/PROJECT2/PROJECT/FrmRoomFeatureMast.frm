VERSION 5.00
Begin VB.Form FrmRoomFeatureMast
  Caption = "Room Features Master"
  BackColor = &HFFC0C0&
  ForeColor = &HC00000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC00000&
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11550
  ClientHeight = 7200
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11550
    Height = 450
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3705
    Top = 1935
    Width = 4365
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
  Begin DataGrid DGHelp
    Left = 6405
    Top = 5595
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin MSFlexGrid FGPoint
    Left = 7410
    Top = 4635
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5685
    Top = 4410
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
    Left = 2310
    Top = 4410
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
    Top = 360
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
    Caption = "Room Feature "
    Index = 0
    ForeColor = &HC00000&
    Left = 2325
    Top = 1935
    Width = 1410
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

Attribute VB_Name = "FrmRoomFeatureMast"


Private Sub Txt_GotFocus(Index As Integer) 'F08434
  'Data Table: 4475D4
  Dim Me As Recordset15
  loc_F0836A: Set var_88 = Me.Txt
  loc_F08370: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F0837E: Proc_6_74_E23240(var_8C)
  loc_F0838A: Call Proc_18_31_E86268(var_8C)
  loc_F0838F: On Error Goto loc_F083EF
  loc_F083A0: If (Index = CInt(0)) Then
  loc_F083BA:   If (Me.RecordCount > 0) Then
  loc_F083C8:     Set var_8C = Me.FGPoint
  loc_F083E0:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_F083EE:   End If
  loc_F083EE: End If
  loc_F083EE: Exit Sub
  loc_F083EF: ' Referenced from: F0838F
  loc_F083F7: Set var_88 = Err()
  loc_F083FD: Call 0.Method_arg_2C (var_9C, var_8C)
  loc_F0841E: MsgBox(CVar(var_9C), &H40, "Information", var_EC, var_10C)
  loc_F08431: Exit Sub
  loc_F08432: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '101B7A8
  'Data Table: 4475D4
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As TextBox
  loc_101B59E: If (CLng(Shift) = &H1B) Then
  loc_101B5A1:   Call Proc_18_31_E86268()
  loc_101B5A6:   Exit Sub
  loc_101B5A7: End If
  loc_101B5B5: If (KeyCode = CInt(0)) Then
  loc_101B5D5:   Set var_9C = Me.FGPoint
  loc_101B607:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_101B674:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_101B67B:     Set var_9C = Me.DGHelp
  loc_101B682:     Set var_90 = Me.FGPoint
  loc_101B69A:     Proc_6_138_106E830(var_9C, global_56, KeyCode, var_90, 0)
  loc_101B6A8:   End If
  loc_101B6A8: End If
  loc_101B6C4: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_101B6E5:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_101B6EB:     Call Proc_18_30_1087B2C(var_92, 1, var_9C)
  loc_101B6F6:     If (var_92 = &HFF) Then
  loc_101B706:       Set var_8C = Me.Txt
  loc_101B70C:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_101B714:       var_90.Text = 0
  loc_101B720:       Exit Sub
  loc_101B721:     End If
  loc_101B758:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_101B75B:       Call TopCtrl1_UnknownEvent_16()
  loc_101B760:     End If
  loc_101B760:     Exit Sub
  loc_101B761:   End If
  loc_101B776:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_101B77F:     Proc_6_75_E5335C(Shift, arg_14)
  loc_101B784:   End If
  loc_101B797:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_101B7A0:     Proc_6_76_E533C8(Shift, arg_14)
  loc_101B7A5:   End If
  loc_101B7A5: End If
  loc_101B7A5: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E23920
  'Data Table: 4475D4
  loc_E23906: Proc_6_133_E7FB08(var_94)
  loc_E23918: Proc_6_58_E06050(CInt(var_94), CInt(var_94))
  loc_E2391D: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC2780
  'Data Table: 4475D4
  loc_EC26F2: If (KeyCode = CInt(0)) Then
  loc_EC2711:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC271E:     var_A4 = "Name"
  loc_EC273D:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_EC276F:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC277D:   End If
  loc_EC277D: End If
  loc_EC277D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E505F4
  'Data Table: 4475D4
  loc_E505D2: Set var_88 = Me.Txt
  loc_E505D8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E505E6: Proc_6_73_E23294(var_8C)
  loc_E505F2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E2AB54
  'Data Table: 4475D4
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E2AB2B: var_86 = Cancel
  loc_E2AB36: If (var_86 = CInt(0)) Then
  loc_E2AB3C:   Call Proc_18_30_1087B2C(var_88)
  loc_E2AB47:   If (var_88 = &HFF) Then
  loc_E2AB4C:     arg_10 = &HFF
  loc_E2AB4F:     Exit Sub
  loc_E2AB50:   End If
  loc_E2AB50: End If
  loc_E2AB50: Exit Sub
  loc_E2AB51: Get , , var_86 'get arg_10 bytes
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFDEEC
  'Data Table: 4475D4
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFDE20: On Error Goto loc_EFDEA6
  loc_EFDE30: Me.LblUser.Caption = vbNullString
  loc_EFDE45: Me.LblLDt.Caption = vbNullString
  loc_EFDE4D: Call Proc_18_28_E7AE3C()
  loc_EFDE67: var_8C = "ADD"
  loc_EFDE75: Call Proc_18_27_E7C00C(Proc_5_1_100EC1C(var_8C, Me))
  loc_EFDE8B: Set var_88 = Me.Txt
  loc_EFDE91: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFDE99: var_94.SetFocus
  loc_EFDEA5: Exit Sub
  loc_EFDEA6: ' Referenced from: EFDE20
  loc_EFDEAE: Set var_88 = Err()
  loc_EFDEB4: Call 0.Method_arg_2C (var_8C)
  loc_EFDED5: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFDEE8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC269C
  'Data Table: 4475D4
  loc_EC2604: On Error Goto loc_EC2694
  loc_EC263E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC2641:   Call Proc_18_31_E86268()
  loc_EC2652:   Set var_110 = Me
  loc_EC2669:   Call Proc_18_27_E7C00C(Proc_5_1_100EC1C("INI", var_110))
  loc_EC2674:   Call Proc_18_29_11D3DE4(global_52)
  loc_EC267C: Else
  loc_EC2682:   Call 0.Method_arg_1E8 (var_110)
  loc_EC268A:   Call var_110.SetFocus
  loc_EC2693: End If
  loc_EC2693: Exit Sub
  loc_EC2694: ' Referenced from: EC2604
  loc_EC2694: Proc_6_60_E63754()
  loc_EC2699: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '112C554
  'Data Table: 4475D4
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_4475E6 As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_112C20C: On Error Goto loc_112C504
  loc_112C21D: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_112C220:   Exit Sub
  loc_112C221: End If
  loc_112C253: var_D0 = "Room Master"
  loc_112C29B: If (Proc_6_108_101061C(MemVar_1F95044, "RoomMast1", "RoomFeat", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_112C29E:   Exit Sub
  loc_112C29F: End If
  loc_112C2D6: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_112C2E2:   unk_4475E6.BeginTrans var_CC
  loc_112C2F8:   var_94 = Me.Bookmark 'Variant
  loc_112C344:   var_114 = "Delete From RoomFeature Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_112C352:   unk_4475E6.Execute CStr(var_114), var_134, -1
  loc_112C39D:   var_164 = 0
  loc_112C3B0:   var_15C = 0
  loc_112C3BB:   var_158 = 0
  loc_112C3CE:   var_150 = 0
  loc_112C3D9:   var_14C = 0
  loc_112C3EC:   var_144 = 0
  loc_112C42C:   var_B0 = "RoomFeature"
  loc_112C435:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B0, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_112C463:   unk_4475E6.CommitTrans
  loc_112C473:   Me.Requery -1
  loc_112C483:   Me.Requery -1
  loc_112C4A3:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_112C4B0:     Me.Bookmark = var_94
  loc_112C4B8:   Else
  loc_112C4CC:     If (Me.EOF = 0) Then
  loc_112C4D5:       Me.MoveLast
  loc_112C4DA:     End If
  loc_112C4DA:   End If
  loc_112C4DA:   Call Proc_18_29_11D3DE4(var_144, 0, var_14C, var_150)
  loc_112C4FB:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_112C503: End If
  loc_112C503: Exit Sub
  loc_112C504: ' Referenced from: 112C20C
  loc_112C50A: unk_4475E6.RollbackTrans
  loc_112C517: Set var_98 = Err()
  loc_112C51D: Call 0.Method_arg_2C (var_B0, 0, var_158)
  loc_112C53E: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_112C551: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F63E9C
  'Data Table: 4475D4
  Dim var_88 As Label
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F63D78: On Error Goto loc_F63E59
  loc_F63D88: Me.LblUser.Caption = vbNullString
  loc_F63D9D: Me.LblLDt.Caption = vbNullString
  loc_F63DB3: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F63DB6:   Exit Sub
  loc_F63DB7: End If
  loc_F63DCE: If (Me.RecordCount > 0) Then
  loc_F63DE6:   var_90 = "EDIT"
  loc_F63DF4:   Call Proc_18_27_E7C00C(Proc_5_1_100EC1C(var_90, Me))
  loc_F63E0A:   Set var_88 = Me.Txt
  loc_F63E10:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F63E18:   var_98.SetFocus
  loc_F63E27: Else
  loc_F63E48:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F63E58: End If
  loc_F63E58: Exit Sub
  loc_F63E59: ' Referenced from: F63D78
  loc_F63E61: Set var_88 = Err()
  loc_F63E67: Call 0.Method_arg_2C (var_90)
  loc_F63E88: MsgBox(CVar(var_90), &H30, " Editing Error ", var_F8, var_118)
  loc_F63E9B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1625C
  'Data Table: 4475D4
  Dim arg_5C00 As Integer
  loc_E16251: Me.Global.Unload Me
  loc_E16259: Exit Sub
  loc_E1625A: arg_5C00 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F27C58
  'Data Table: 4475D4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F27B58: On Error Goto loc_F27BF0
  loc_F27B64: var_88 = Me.RecordCount
  loc_F27B72: If (var_88 <= 0) Then
  loc_F27B7B:   var_B8 = "Information"
  loc_F27B96:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F27BA6:   Exit Sub
  loc_F27BA7: End If
  loc_F27BB5: MemVar_1F950E4 = "Select Code As SearchCode,Name FROM RoomFeature where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_F27BBF: var_10C = "3000"
  loc_F27BC5: Proc_6_126_F1C850(var_10C)
  loc_F27BD3: MemVar_1F95120 = Me
  loc_F27BEA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F27BEF: Exit Sub
  loc_F27BF0: ' Referenced from: F27B58
  loc_F27BF8: Set var_110 = Err()
  loc_F27BFE: Call 0.Method_arg_1C (var_88)
  loc_F27C0F: If (var_88 <> 0) Then
  loc_F27C1A:   Set var_110 = Err()
  loc_F27C20:   Call 0.Method_arg_2C (var_10C)
  loc_F27C41:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F27C54: End If
  loc_F27C54: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2DFC8
  'Data Table: 4475D4
  loc_E2DFB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2DFC0: Call Proc_18_29_11D3DE4(global_52)
  loc_E2DFC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2DDE8
  'Data Table: 4475D4
  loc_E2DDD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2DDE0: Call Proc_18_29_11D3DE4(global_52)
  loc_E2DDE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2DE48
  'Data Table: 4475D4
  loc_E2DE38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2DE40: Call Proc_18_29_11D3DE4(global_52)
  loc_E2DE45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2DEA8
  'Data Table: 4475D4
  loc_E2DE98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2DEA0: Call Proc_18_29_11D3DE4(global_52)
  loc_E2DEA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1086F70
  'Data Table: 4475D4
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4475E6 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1086CD8: On Error Goto loc_1086F24
  loc_1086CFF: unk_4475E6.Execute "SELECT * from RoomFeature where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_1086D0A: Set var_88 = var_C8
  loc_1086D20: var_CC = var_88.RecordCount
  loc_1086D2E: If (var_CC = 0) Then
  loc_1086D4A:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1086D5A:   Exit Sub
  loc_1086D5B: End If
  loc_1086D6A: var_A4 = MemVar_1F950B4 & "\RoomFeatureMast.ttx"
  loc_1086D71: Set var_C8 = var_88 
  loc_1086D7D: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1086D87: Set var_88 = var_C8
  loc_1086D8D: var_B4 = CVar(var_12E) 'Integer
  loc_1086D90: var_98 = var_B4 'Variant
  loc_1086DAC: var_A0 = MemVar_1F950B4 & "\RoomFeatureMast.RPT"
  loc_1086DB5: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1086DC0: MemVar_1F951E8 = var_C8
  loc_1086DDB: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1086DE3: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1086DEF: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1086E08:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1086E10:   Call 0.Method_arg_20 (var_138)
  loc_1086E18:   Call 0.Method_arg_30 (var_A0)
  loc_1086E5E:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1086E74:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1086E7C:     Call 0.Method_arg_20 (var_138)
  loc_1086E84:     Call 0.Method_arg_38 ("'Room Features Master'")
  loc_1086E90:   End If
  loc_1086E93: Next var_132 'Integer
  loc_1086EB1: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1086EB9: Call 0.Method_arg_2C (var_DC)
  loc_1086EC7: Call 0.Method_arg_150 (var_FC)
  loc_1086ED2: Call 0.Method_arg_50 (var_A0)
  loc_1086EDC: Set var_138 = Nothing
  loc_1086EF6: Set var_C8 = MemVar_1F951E8 
  loc_1086F02: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_1086F0D: MemVar_1F951E8 = var_C8
  loc_1086F20: Set var_88 = Nothing
  loc_1086F23: Exit Sub
  loc_1086F24: ' Referenced from: 1086CD8
  loc_1086F2C: Set var_C8 = Err()
  loc_1086F32: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1086F3D: Call 0.Method_arg_50 (var_A4)
  loc_1086F59: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1086F6C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B62C
  'Data Table: 4475D4
  Dim Me As Recordset15
  loc_E0B623: Me.Requery -1
  loc_E0B628: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '120F800
  'Data Table: 4475D4
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_4475E6 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_B0 As Variant
  loc_120F364: On Error Goto loc_120F7AE
  loc_120F36B: var_86 = CByte(0) 'Byte
  loc_120F37A: Set var_90 = Me.Txt
  loc_120F380: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_120F3A9: If (Proc_183_19_E8E68C(var_94, "Name") = 0) Then
  loc_120F3B3:   Call Txt_GotFocus(CInt(0))
  loc_120F3B8:   Exit Sub
  loc_120F3B9: End If
  loc_120F3BD: Set var_90 = Me.TopCtrl1
  loc_120F3C3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_120F3DC: If (CStr() = "Add") Then
  loc_120F3E5:   var_D4 = 0
  loc_120F402:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From RoomFeature WHERE SITE_CODE='" & MemVar_1F95070
  loc_120F409:   var_B4 = CStr() & "'"
  loc_120F412:   unk_4475E6.Execute var_B4, var_B0, -1
  loc_120F41A:   var_90 = var_90.Fields
  loc_120F422:   var_D4 = var_94.Item(var_94)
  loc_120F42A:   var_98 = var_98.Value
  loc_120F463:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_120F489:   var_E4 = Format(CStr(var_E4), "000")
  loc_120F491:   var_108 = (1 + var_E4)
  loc_120F49C:   global_64 = CStr(var_108)
  loc_120F4B1: Else
  loc_120F4CE:   var_94 = Me.Fields.Item("Code")
  loc_120F4E5:   global_64 = CStr(var_94.Value)
  loc_120F4F6: End If
  loc_120F4FF: unk_4475E6.BeginTrans var_10C
  loc_120F508: var_86 = CByte(1) 'Byte
  loc_120F510: Set var_90 = Me.TopCtrl1
  loc_120F516: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_120F52F: If (CStr(var_F8) = "Add") Then
  loc_120F549:   var_9C = "Insert Into RoomFeature(Code,Name,Site_Code,U_Name,U_EntDt,U_AE,Logsite_Code) Values('" & global_64
  loc_120F561:   Set var_90 = Me.Txt
  loc_120F567:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_9C & "','")
  loc_120F56F:   var_184 = var_94.Text
  loc_120F578:   var_110 = -1 & var_B4
  loc_120F5AC:   Proc_6_7_F26918(var_E4, Date, CVar(var_110 & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',"))
  loc_120F5DE:   unk_4475E6.Execute CStr(var_98 & var_E4 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_E4, 
  loc_120F617: Else
  loc_120F635:   Set var_90 = Me.Txt
  loc_120F63B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE RoomFeature SET Name='")
  loc_120F643:   var_184 = var_94.Text
  loc_120F64C:   var_B4 = -1 & var_9C
  loc_120F66F:   var_F8 = CVar(var_B4 & "',SITE_CODE='" & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_120F680:   Proc_6_7_F26918(var_E4, Date)
  loc_120F688:   var_108 = var_F8 & var_E4 
  loc_120F68C:   var_C4 = " ,U_AE='E' WHERE Code='"
  loc_120F6B5:   unk_4475E6.Execute CStr(var_108 & var_C4 & CVar(global_64) & "'"), var_98, 
  loc_120F6E7: End If
  loc_120F6ED: unk_4475E6.CommitTrans
  loc_120F6F6: var_86 = CByte(0) 'Byte
  loc_120F705: Me.Requery -1
  loc_120F715: Me.Requery -1
  loc_120F742: Me.Find "Code='" & global_64 & "'", 0, 1
  loc_120F752: Set var_90 = Me.TopCtrl1
  loc_120F758: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_120F771: If (CStr() = "Add") Then
  loc_120F774:   Call TopCtrl1_UnknownEvent_A()
  loc_120F779:   Exit Sub
  loc_120F77A: End If
  loc_120F78F: var_9C = "INI"
  loc_120F79D: Call Proc_18_27_E7C00C(Proc_5_1_100EC1C(var_9C, Me))
  loc_120F7A8: Call Proc_18_29_11D3DE4(global_52)
  loc_120F7AD: Exit Sub
  loc_120F7AE: ' Referenced from: 120F364
  loc_120F7B7: If (CInt(var_86) = 1) Then
  loc_120F7C0:   unk_4475E6.RollbackTrans
  loc_120F7C5: End If
  loc_120F7CD: Set var_90 = Err()
  loc_120F7D3: Call 0.Method_arg_2C (var_9C)
  loc_120F7EC: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_120F7FF: Exit Sub
End Sub

Private Sub Form_Load() 'FBCDFC
  'Data Table: 4475D4
  Dim var_8C As Label
  Dim var_90 As String
  Dim unk_4475E6 As Connection15
  Dim var_B4 As Variant
  loc_FBCC58: On Error Goto loc_FBCDB8
  loc_FBCC6A: Me.LblUser.Left = CDbl(13500)
  loc_FBCC81: Me.LblUser.Top = CDbl(7800)
  loc_FBCC98: Me.LblLDt.Top = CDbl(8160)
  loc_FBCCA9: Set var_8C = Me.LblLDt
  loc_FBCCAF: var_8C.Left = CDbl(13500)
  loc_FBCCBE: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_FBCCC3: Call Proc_18_33_EDD29C()
  loc_FBCCEC: unk_4475E6.Execute "SELECT Code,Name FROM RoomFeature WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_FBCD1B: CVarUnk
  loc_FBCD20: VerifyVarObj
  loc_FBCD2C: LateIdStAd
  loc_FBCD5E: unk_4475E6.Execute "SELECT * FROM RoomFeature WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name", var_B4, -1
  loc_FBCD99: var_90 = "INI"
  loc_FBCDA7: Call Proc_18_27_E7C00C(Proc_5_1_100EC1C(var_90, Me, Me.DGHelp, Me), Me)
  loc_FBCDB2: Call Proc_18_29_11D3DE4(Me)
  loc_FBCDB7: Exit Sub
  loc_FBCDB8: ' Referenced from: FBCC58
  loc_FBCDC0: Set var_8C = Err()
  loc_FBCDC6: Call 0.Method_arg_2C (var_90)
  loc_FBCDE7: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_FBCDFA: Exit Sub
  loc_FBCDFB: Exit Sub
End Sub

Private Sub Form_Resize() 'ED94C8
  'Data Table: 4475D4
  Dim var_8C As Label
  Dim arg_5C38 As Double
  loc_ED9426: Call 0.Method_arg_50 (var_88)
  loc_ED9438: Me.LblFormCaption.Caption = var_88
  loc_ED9451: Me.LblFormCaption.Left = CDbl(0)
  loc_ED945D: Set var_A0 = Me.TopCtrl1
  loc_ED9463: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED9470: Set var_8C = Me.TopCtrl1
  loc_ED9476: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED9490: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED94AB: Call 0.Method_arg_100 (var_B8)
  loc_ED94BD: Me.LblFormCaption.Width = var_B8
  loc_ED94C5: Exit Sub
  loc_ED94C6: arg_5C38 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2AA98
  'Data Table: 4475D4
  loc_E2AA7B: Set global_52 = Nothing
  loc_E2AA8D: Set global_56 = Nothing
  loc_E2AA94: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A9E0
  'Data Table: 4475D4
  loc_E2A9B8: On Error Goto loc_E2A9D7
  loc_E2A9CF: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2A9D7: ' Referenced from: E2A9B8
  loc_E2A9D7: Proc_6_60_E63754(Shift)
  loc_E2A9DC: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE694C
  'Data Table: 4475D4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE68A3: Me.DGHelp.Visible = False
  loc_EE68C2: If (Me.RecordCount > 0) Then
  loc_EE68E2:   var_B0 = Me.Fields.Item("Name")
  loc_EE6901:   Set var_B4 = Me.Txt
  loc_EE6907:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE690F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE6925: End If
  loc_EE6930: Set var_A8 = Me.Txt
  loc_EE6936: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE693E: var_B0.SetFocus
  loc_EE694A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E56F68
  'Data Table: 4475D4
  loc_E56F3B: Set var_90 = Me.FGPoint
  loc_E56F57: Proc_6_138_106E830(Me.DGHelp, global_56)
  loc_E56F65: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E2E0E4
  'Data Table: 4475D4
  loc_E2E0D8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E2E0DB:   Call DGHelp_UnknownEvent_9()
  loc_E2E0E0: End If
  loc_E2E0E0: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC24D4
  'Data Table: 4475D4
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC244A: On Error Goto loc_EC248F
  loc_EC2453: Me.MoveFirst
  loc_EC246D: var_8C = "code='" & MyValue
  loc_EC247D: Me.Find var_8C & "'", 0, 1
  loc_EC2489: Call Proc_18_29_11D3DE4(var_A0)
  loc_EC248E: Exit Sub
  loc_EC248F: ' Referenced from: EC244A
  loc_EC2497: Set var_A4 = Err()
  loc_EC249D: Call 0.Method_arg_2C (var_8C)
  loc_EC24BE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC24D1: Exit Sub
  loc_EC24D2: Exit Sub
End Sub

Public Sub Proc_18_27_E7C00C(arg_C) 'E7C00C
  'Data Table: 4475D4
  Dim var_98 As TextBox
  loc_E7BFBA: Set var_8C = Me.Txt
  loc_E7BFC0: Call 0.Method_Proc_18_27_E7C00CC (var_8E, var_86)
  loc_E7BFD0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7BFE6:   Set var_8C = Me.Txt
  loc_E7BFEC:   Call 0.Method_Proc_18_27_E7C00C0 (CInt(var_86), var_98)
  loc_E7BFF4:   var_98.Enabled = arg_C
  loc_E7C003: Next var_92 'Byte
  loc_E7C009: Exit Sub
End Sub

Public Sub Proc_18_28_E7AE3C
  'Data Table: 4475D4
  Dim var_98 As TextBox
  loc_E7ADEA: Set var_8C = Me.Txt
  loc_E7ADF0: Call 0.Method_Proc_18_28_E7AE3CC (var_8E, var_86)
  loc_E7AE00: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7AE16:   Set var_8C = Me.Txt
  loc_E7AE1C:   Call 0.Method_Proc_18_28_E7AE3C0 (CInt(var_86), var_98)
  loc_E7AE24:   var_98.Text = vbNullString
  loc_E7AE33: Next var_92 'Byte
  loc_E7AE39: Exit Sub
End Sub

Public Sub Proc_18_29_11D3DE4
  'Data Table: 4475D4
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_4475E6 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_11C As TextBox
  loc_11D39B0: On Error Goto loc_11D3DA1
  loc_11D39B9: Proc_183_45_E5CCA8(global_52)
  loc_11D3A14: unk_4475E6.Execute CStr("Select U_Name,U_AE,U_EntDt From RoomFeature where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_11D3A1F: Set var_88 = var_118
  loc_11D3A73: var_118 = var_88.Fields
  loc_11D3ADC: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_11D3B21: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_11D3B9B: var_11C = var_88.Fields.Item("U_AE")
  loc_11D3BB4: var_114 = "entdt : "
  loc_11D3BBF: var_F0 = "Last Update : "
  loc_11D3BFC: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), var_F0, var_114))
  loc_11D3C41: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_11D3C90: If (Me.RecordCount <= 0) Then
  loc_11D3C93:   Call Proc_18_28_E7AE3C()
  loc_11D3C9B: Else
  loc_11D3CCF:   global_64 = CStr(Me.Fields.Item("Name").Value)
  loc_11D3D1C:   Set var_118 = Me.Txt
  loc_11D3D22:   Call 0.Method_Proc_18_29_11D3DE40 (CInt(0), var_11C)
  loc_11D3D2A:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11D3D6E:   var_F4 = CStr(Me.Fields.Item("Code").Value)
  loc_11D3D7C:   Set var_118 = Me.Txt
  loc_11D3D82:   Call 0.Method_Proc_18_29_11D3DE40 (CInt(0), var_11C)
  loc_11D3D8A:   var_11C.Tag = var_F4
  loc_11D3DA0: End If
  loc_11D3DA0: Exit Sub
  loc_11D3DA1: ' Referenced from: 11D39B0
  loc_11D3DA9: Set var_8C = Err()
  loc_11D3DAF: Call 0.Method_arg_2C (var_F4)
  loc_11D3DD0: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_11D3DE3: Exit Sub
End Sub

Public Sub Proc_18_30_1087B2C
  'Data Table: 4475D4
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4475E6 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_10878BF: If (Me.RecordCount = 0) Then
  loc_10878C2:   Proc_18_30_1087B2C = 
  loc_10878C8: End If
  loc_10878CC: Set var_90 = Me.TopCtrl1
  loc_10878D2: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10878EB: If (CStr() = "Add") Then
  loc_1087929:   Set var_90 = Me.Txt
  loc_108792F:   Call 0.Method_Proc_18_30_1087B2C0 (CInt(0), var_A8, var_AC, "Select Count(*) From RoomFeature Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1087950:   unk_4475E6.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1087960:    = var_D0.Item()
  loc_1087968:    = var_E4.Value
  loc_1087999:   If (var_A8.Text.Fields > 0) Then
  loc_10879B7:     var_A0 = "Duplicate Feature Name"
  loc_10879BD:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_10879D8:     Set var_90 = Me.Txt
  loc_10879DE:     Call 0.Method_Proc_18_30_1087B2C0 (CInt(0))
  loc_10879E6:     var_A8.SetFocus
  loc_10879F7:     Proc_18_30_1087B2C = &HFF
  loc_10879FD:   End If
  loc_1087A00: Else
  loc_1087A3B:   Set var_90 = Me.Txt
  loc_1087A41:   Call 0.Method_Proc_18_30_1087B2C0 (CInt(0), var_A8, var_AC, "Select Count(*) From RoomFeature Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1087A73:   unk_4475E6.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_1087A83:    = var_D0.Item(var_A8)
  loc_1087A8B:    = var_E4.Value
  loc_1087AC0:   If (var_A8.Text.Fields > 0) Then
  loc_1087AE4:     MsgBox("Duplicate Feature Name", &H40, "Information", var_114, var_134)
  loc_1087AFF:     Set var_90 = Me.Txt
  loc_1087B05:     Call 0.Method_Proc_18_30_1087B2C0 (CInt(0))
  loc_1087B0D:     var_A8.SetFocus
  loc_1087B1E:     Proc_18_30_1087B2C = &HFF
  loc_1087B24:   End If
  loc_1087B24: End If
  loc_1087B24: Proc_18_30_1087B2C = var_A8
End Sub

Public Sub Proc_18_31_E86268
  'Data Table: 4475D4
  Dim arg_2A00 As Integer
  loc_E86214: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E86226:   Me.DGHelp.Visible = False
  loc_E8622E: End If
  loc_E8624A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E8625C:   Me.FGPoint.Visible = False
  loc_E86264: End If
  loc_E86264: Exit Sub
  loc_E86265: arg_2A00 = 
End Sub

Public Sub Proc_18_32_EE1C98(arg_C) 'EE1C98
  'Data Table: 4475D4
  Dim var_8C As TextBox
  loc_EE1BEC: Call Proc_18_31_E86268()
  loc_EE1BFC: Set var_88 = Me.Txt
  loc_EE1C02: Call 0.Method_Proc_18_32_EE1C980 (CInt(0))
  loc_EE1C2B: If (Proc_6_27_EA61EC(var_8C, "Feature Name") = 0) Then
  loc_EE1C2E:   Exit Sub
  loc_EE1C2F: End If
  loc_EE1C66: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE1C69:   Call TopCtrl1_UnknownEvent_16()
  loc_EE1C71: Else
  loc_EE1C7B:   Set var_88 = Me.Txt
  loc_EE1C81:   Call 0.Method_Proc_18_32_EE1C980 (arg_C, var_8C)
  loc_EE1C89:   var_8C.SetFocus
  loc_EE1C95: End If
  loc_EE1C95: Exit Sub
End Sub

Public Sub Proc_18_33_EDD29C
  'Data Table: 4475D4
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_EDD1FA: Set var_88 = Me.Txt
  loc_EDD200: Call 0.Method_Proc_18_33_EDD29C0 (CInt(0), var_8C)
  loc_EDD21F: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_EDD23B: Set var_B4 = Me.Txt
  loc_EDD241: Call 0.Method_Proc_18_33_EDD29C0 (CInt(0), var_B8)
  loc_EDD25C: Set var_88 = Me.Txt
  loc_EDD262: Call 0.Method_Proc_18_33_EDD29C0 (CInt(0), var_8C)
  loc_EDD27A: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_EDD289: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_EDD29B: Exit Sub
End Sub
