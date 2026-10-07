VERSION 5.00
Begin VB.Form FrmWaiterMast
  Caption = "Server Master"
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2265
    Top = 1350
    Width = 4215
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
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
    Index = 2
    BackColor = &HFFFFFF&
    Left = 2265
    Top = 1950
    Width = 540
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8070
    Height = 450
    TabIndex = 9
  End
  Begin DataGrid DGHelp
    Left = 2730
    Top = 4245
    Width = 4230
    Height = 1530
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2265
    Top = 1635
    Width = 4215
    Height = 285
    TabIndex = 1
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
    TabIndex = 5
  End
  Begin DataGrid DGRest
    Left = 900
    Top = 2745
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin Label LblName
    Caption = "Restaurant"
    Index = 0
    ForeColor = &HC00000&
    Left = 960
    Top = 1350
    Width = 1020
    Height = 240
    TabIndex = 12
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
  Begin Label LblName
    Caption = "Active"
    Index = 2
    ForeColor = &HC00000&
    Left = 960
    Top = 1950
    Width = 585
    Height = 240
    TabIndex = 11
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 3
    ForeColor = &H0&
    Left = 2820
    Top = 1980
    Width = 900
    Height = 195
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
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
    Top = 435
    Width = 180
    Height = 540
    TabIndex = 8
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
    TabIndex = 7
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
  Begin Label LblName
    Caption = "Server Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 930
    Top = 1665
    Width = 1245
    Height = 240
    TabIndex = 3
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

Attribute VB_Name = "FrmWaiterMast"


Private Sub DGHelp_UnknownEvent_9 'EE4F4C
  'Data Table: 45ECFC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE4EA3: Me.DGHelp.Visible = False
  loc_EE4EC2: If (Me.RecordCount > 0) Then
  loc_EE4EE2:   var_B0 = Me.Fields.Item("Name")
  loc_EE4F01:   Set var_B4 = Me.Txt
  loc_EE4F07:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_B8)
  loc_EE4F0F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE4F25: End If
  loc_EE4F30: Set var_A8 = Me.Txt
  loc_EE4F36: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1))
  loc_EE4F3E: var_B0.SetFocus
  loc_EE4F4A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E71950
  'Data Table: 45ECFC
  loc_E7190E: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E71925: Set var_8C = Me.FGPoint
  loc_E71941: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(1))
  loc_E7194F: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F50314
  'Data Table: 45ECFC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5020B: Me.DGRest.Visible = False
  loc_F5022A: If (Me.RecordCount > 0) Then
  loc_F50269:   Set var_B4 = Me.Txt
  loc_F5026F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(0), var_B8)
  loc_F50277:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F502AA:   var_B0 = Me.Fields.Item("Code")
  loc_F502C9:   Set var_B4 = Me.Txt
  loc_F502CF:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(0), var_B8)
  loc_F502D7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F502ED: End If
  loc_F502F8: Set var_A8 = Me.Txt
  loc_F502FE: Call 0.Method_DGRest_UnknownEvent_90 (CInt(0))
  loc_F50306: var_B0.SetFocus
  loc_F50312: Exit Sub
  loc_F50313: var_B0() = 
End Sub

Private Sub DGRest_UnknownEvent_1F 'E71D5C
  'Data Table: 45ECFC
  loc_E71D1A: Proc_6_153_E91D24(Me.DGRest, arg_14)
  loc_E71D31: Set var_8C = Me.FGPoint
  loc_E71D4D: Proc_6_138_106E830(Me.DGRest, global_60, CInt(0))
  loc_E71D5B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '104C100
  'Data Table: 45ECFC
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_104BEB6: Set var_88 = Me.Txt
  loc_104BEBC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_104BECA: Proc_6_74_E23240(var_8C)
  loc_104BED6: Call Proc_16_33_EBC494(var_8C)
  loc_104BEDE: var_92 = Index
  loc_104BEE9: If (var_92 = CInt(0)) Then
  loc_104BF03:   If (Me.RecordCount > 0) Then
  loc_104BF11:     Set var_8C = Me.FGPoint
  loc_104BF29:     Proc_6_137_1192FDC(Me.DGRest, global_60, Index)
  loc_104BF37:   End If
  loc_104BF85:   Set var_88 = Me.Txt
  loc_104BF8B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_104BF93:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_104BFAB:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_104BFBB:     Set var_88 = Me.Txt
  loc_104BFC1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_104BFC9:     var_8C.Tag = vbNullString
  loc_104BFD5:     Exit Sub
  loc_104BFD6:   End If
  loc_104BFE3:   Set var_88 = Me.Txt
  loc_104BFE9:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_104BFF1:   var_A0 = var_8C.Text
  loc_104C003:   var_B0 = "Name"
  loc_104C03E:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_104C047:     Me.MoveFirst
  loc_104C06A:     Set var_88 = Me.Txt
  loc_104C070:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_104C078:     0 = var_8C.Text
  loc_104C091:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_104C0A6:   End If
  loc_104C0A9: Else
  loc_104C0B1:   If (var_92 = CInt(1)) Then
  loc_104C0CB:     If (Me.RecordCount > 0) Then
  loc_104C0D9:       Set var_8C = Me.FGPoint
  loc_104C0F1:       Proc_6_137_1192FDC(Me.DGHelp, global_56)
  loc_104C0FF:     End If
  loc_104C0FF:   End If
  loc_104C0FF: End If
  loc_104C0FF: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '110DE64
  'Data Table: 45ECFC
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As Variant
  loc_110DB36: If (CLng(Shift) = &H1B) Then
  loc_110DB39:   Call Proc_16_33_EBC494()
  loc_110DB3E:   Exit Sub
  loc_110DB3F: End If
  loc_110DB42: var_86 = KeyCode
  loc_110DB4D: If (var_86 = CInt(0)) Then
  loc_110DB6D:   Set var_9C = Me.FGPoint
  loc_110DB78:   Set var_98 = Nothing
  loc_110DBA6:   Proc_6_69_134A630(Me.DGRest, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_110DC15:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_110DC3B:     Proc_6_138_106E830(Me.DGRest, global_60, KeyCode, Me.FGPoint, 1)
  loc_110DC49:   End If
  loc_110DC4C: Else
  loc_110DC54:   If (var_86 = CInt(1)) Then
  loc_110DC5B:     Set var_9C = Me.DGHelp
  loc_110DC74:     Set var_98 = Me.FGPoint
  loc_110DCA6:     Proc_6_79_11AD564(var_9C, Me.Txt, CInt(1), global_56, Shift, 0, 1)
  loc_110DD13:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_110DD1A:       Set var_98 = Me.DGHelp
  loc_110DD39:       Proc_6_138_106E830(var_98, global_56, KeyCode, Me.FGPoint, var_98)
  loc_110DD47:     End If
  loc_110DD47:   End If
  loc_110DD47: End If
  loc_110DD61: Set var_90 = Me.DGRest
  loc_110DD82: If ((CBool(Me.DGHelp.Visible) = 0) And (CBool(var_90.Visible) = 0)) Then
  loc_110DDA3:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(2))) Then
  loc_110DDA9:     Call Proc_16_32_1136028(var_92, 0, var_98)
  loc_110DDB4:     If (var_92 = &HFF) Then
  loc_110DDC4:       Set var_8C = Me.Txt
  loc_110DDCA:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_110DDD2:       var_90.Text = var_9C
  loc_110DDDE:       Exit Sub
  loc_110DDDF:     End If
  loc_110DE16:     If (MsgBox("Save Record ?", 4, "Save Data", var_114, var_134) = 6) Then
  loc_110DE19:       Call TopCtrl1_UnknownEvent_16()
  loc_110DE1E:     End If
  loc_110DE1E:     Exit Sub
  loc_110DE1F:   End If
  loc_110DE34:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_110DE3D:     Proc_6_75_E5335C(Shift, arg_14)
  loc_110DE42:   End If
  loc_110DE55:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_110DE5E:     Proc_6_76_E533C8(Shift, arg_14)
  loc_110DE63:   End If
  loc_110DE63: End If
  loc_110DE63: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FA89F0
  'Data Table: 45ECFC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_FA8872: Proc_6_133_E7FB08(var_94)
  loc_FA8887: If (CInt(var_94) = &HD) Then
  loc_FA888C:   arg_10 = 0
  loc_FA888F: End If
  loc_FA8892: Proc_6_58_E06050(arg_10, arg_10)
  loc_FA889A: var_96 = KeyAscii
  loc_FA88A5: If (var_96 = CInt(0)) Then
  loc_FA88C4:   If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_FA88F1:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_FA890B:     Set var_A8 = Me.FGPoint
  loc_FA8923:     Proc_6_138_106E830(Me.DGRest, global_60, KeyAscii, var_A8)
  loc_FA8931:   End If
  loc_FA8934: Else
  loc_FA893C:   If (var_96 = CInt(2)) Then
  loc_FA8968:     If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_FA8978:       Set var_9C = Me.Txt
  loc_FA897E:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes", 0)
  loc_FA8986:       var_A8.Text = var_96
  loc_FA8995:     Else
  loc_FA89BE:       If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_FA89CE:         Set var_9C = Me.Txt
  loc_FA89D4:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_FA89DC:         var_A8.Text = arg_10
  loc_FA89E8:       End If
  loc_FA89E8:     End If
  loc_FA89EA:     arg_10 = 0
  loc_FA89ED:   End If
  loc_FA89ED: End If
  loc_FA89ED: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC3C80
  'Data Table: 45ECFC
  loc_EC3BF2: If (KeyCode = CInt(1)) Then
  loc_EC3C11:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC3C1E:     var_A4 = "Name"
  loc_EC3C3D:     Proc_6_80_FF1F20(Me.Txt, CInt(1), global_56)
  loc_EC3C6F:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC3C7D:   End If
  loc_EC3C7D: End If
  loc_EC3C7D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F8F4
  'Data Table: 45ECFC
  loc_E4F8D2: Set var_88 = Me.Txt
  loc_E4F8D8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F8E6: Proc_6_73_E23294(var_8C)
  loc_E4F8F2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '103B424
  'Data Table: 45ECFC
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim arg_10 As Integer
  loc_103B1E3: var_86 = Cancel
  loc_103B1EE: If (var_86 = CInt(0)) Then
  loc_103B211:   var_8E = Me.EOF
  loc_103B23F:   Set var_94 = Me.Txt
  loc_103B245:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_103B24D:   ((Me.RecordCount = 0) Or ((var_8E = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_103B265:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_103B275:     Set var_94 = Me.Txt
  loc_103B27B:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_103B283:     var_98.Tag = vbNullString
  loc_103B28F:     Exit Sub
  loc_103B290:   End If
  loc_103B2CB:   Set var_B0 = Me.Txt
  loc_103B2D1:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_103B2D9:   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_103B30C:   var_98 = Me.Fields.Item("Code")
  loc_103B32A:   Set var_B0 = Me.Txt
  loc_103B330:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_103B338:   var_B4.Tag = CStr(var_98.Value)
  loc_103B351: Else
  loc_103B359:   If (var_86 = CInt(1)) Then
  loc_103B35F:     Call Proc_16_32_1136028(var_8E)
  loc_103B36A:     If (var_8E = &HFF) Then
  loc_103B36F:       arg_10 = &HFF
  loc_103B372:       Exit Sub
  loc_103B373:     End If
  loc_103B376:   Else
  loc_103B37E:     If (var_86 = CInt(2)) Then
  loc_103B38B:       Set var_94 = Me.Txt
  loc_103B391:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_103B3CC:       If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_103B3DC:         Set var_94 = Me.Txt
  loc_103B3E2:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_103B3EA:         var_98.Text = "Yes"
  loc_103B3F9:       Else
  loc_103B406:         Set var_94 = Me.Txt
  loc_103B40C:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_103B414:         var_98.Text = "No"
  loc_103B420:       End If
  loc_103B420:     End If
  loc_103B420:   End If
  loc_103B420: End If
  loc_103B420: Exit Sub
End Sub

Private Sub Form_Load() 'FE0F1C
  'Data Table: 45ECFC
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_45ED0E As Connection15
  Dim var_B8 As Variant
  loc_FE0D4C: On Error Goto loc_FE0ED6
  loc_FE0D61: Set var_8C = Me
  loc_FE0D67: Proc_6_23_DFC5B8(var_8C, 3810)
  loc_FE0D6F: Call Proc_16_34_F8BEC4(7485)
  loc_FE0D98: unk_45ED0E.Execute "SELECT Code,Name FROM Waiter where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B8, -1
  loc_FE0DC7: CVarUnk
  loc_FE0DCC: VerifyVarObj
  loc_FE0DD8: LateIdStAd
  loc_FE0E01: var_98 = "Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' And RestType in('Outlet','Room Service','Production') Order by Name"
  loc_FE0E0A: unk_45ED0E.Execute var_98, var_B8, -1
  loc_FE0E39: CVarUnk
  loc_FE0E3E: VerifyVarObj
  loc_FE0E4A: LateIdStAd
  loc_FE0E73: var_98 = "SELECT W.*,D.Name As RestName FROM Waiter W Left Join Depart D ON W.RestCode=D.Code WHere (W.LOGSITE_CODE='" & MemVar_1F95078 & "' or W.LOGSITE_CODE='HO') Order by D.Name,W.Name"
  loc_FE0E7C: unk_45ED0E.Execute var_98, var_B8, -1
  loc_FE0EAE: Set var_8C = Me
  loc_FE0EB7: var_94 = "INI"
  loc_FE0EC5: Call Proc_16_29_E7A1C4(Proc_5_1_100EC1C(var_94, var_8C, Me.DGRest, var_8C, var_8C), Me.DGHelp, var_8C)
  loc_FE0ED0: Call Proc_16_31_1078288(var_8C, var_8C)
  loc_FE0ED5: Exit Sub
  loc_FE0ED6: ' Referenced from: FE0D4C
  loc_FE0EDE: Set var_8C = Err()
  loc_FE0EE4: Call 0.Method_arg_2C (var_94)
  loc_FE0F05: MsgBox(CVar(var_94), &H40, "Information", var_EC, var_10C)
  loc_FE0F18: Exit Sub
  loc_FE0F19: Exit Sub
End Sub

Private Sub Form_Resize() 'DFD118
  'Data Table: 45ECFC
  loc_DFD114: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E51C28
  'Data Table: 45ECFC
  loc_E51BFB: Set global_52 = Nothing
  loc_E51C0D: Set global_56 = Nothing
  loc_E51C1F: Set global_60 = Nothing
  loc_E51C26: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28A40
  'Data Table: 45ECFC
  loc_E28A18: On Error Goto loc_E28A37
  loc_E28A2F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E28A37: ' Referenced from: E28A18
  loc_E28A37: Proc_6_60_E63754(Shift)
  loc_E28A3C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FA11FC
  'Data Table: 45ECFC
  Dim var_94 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_88 As String
  Dim var_C0 As TextBox
  loc_FA108C: On Error Goto loc_FA11B8
  loc_FA108F: Call Proc_16_30_E9F0A8()
  loc_FA10B7: Call Proc_16_29_E7A1C4(Proc_5_1_100EC1C("ADD", Me))
  loc_FA10CD: Set var_8C = Me.Txt
  loc_FA10D3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_FA10DB: var_94.SetFocus
  loc_FA10FE: If (Me.RecordCount > 0) Then
  loc_FA113A:   Set var_BC = Me.Txt
  loc_FA1140:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C0)
  loc_FA1148:   var_C0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_FA1187:   var_88 = Proc_6_38_E69628(CVar(Me.Fields.Item("Code")))
  loc_FA1195:   Set var_BC = Me.Txt
  loc_FA119B:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C0)
  loc_FA11A3:   var_C0.Tag = var_88
  loc_FA11B7: End If
  loc_FA11B7: Exit Sub
  loc_FA11B8: ' Referenced from: FA108C
  loc_FA11C0: Set var_8C = Err()
  loc_FA11C6: Call 0.Method_arg_2C (var_88)
  loc_FA11E7: MsgBox(CVar(var_88), &H40, "Information", var_F0, var_110)
  loc_FA11FA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC01DC
  'Data Table: 45ECFC
  Dim var_7B01 As Integer
  loc_EC0144: On Error Goto loc_EC01D4
  loc_EC017E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC0181:   Call Proc_16_33_EBC494()
  loc_EC0192:   Set var_110 = Me
  loc_EC01A9:   Call Proc_16_29_E7A1C4(Proc_5_1_100EC1C("INI", var_110))
  loc_EC01B4:   Call Proc_16_31_1078288(global_52)
  loc_EC01BC: Else
  loc_EC01C2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC01CA:   Call var_110.SetFocus
  loc_EC01D3: End If
  loc_EC01D3: Exit Sub
  loc_EC01D4: ' Referenced from: EC0144
  loc_EC01D4: Proc_6_60_E63754()
  loc_EC01D9: Exit Sub
  loc_EC01DA: var_7B01 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10E0678
  'Data Table: 45ECFC
  Dim var_96 As Integer
  Dim unk_45ED0E As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10E0398: On Error Goto loc_10E0621
  loc_10E03A9: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_10E03AC:   Exit Sub
  loc_10E03AD: End If
  loc_10E03E4: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10E03E9:   var_96 = 0
  loc_10E03F5:   unk_45ED0E.BeginTrans var_11C
  loc_10E03FC:   var_96 = &HFF
  loc_10E0410:   var_94 = Me.Bookmark 'Variant
  loc_10E045C:   var_F8 = "Delete From Waiter Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10E046A:   unk_45ED0E.Execute CStr(var_F8), var_118, -1
  loc_10E04B5:   var_164 = 0
  loc_10E04C8:   var_15C = 0
  loc_10E04D3:   var_158 = 0
  loc_10E04E6:   var_150 = 0
  loc_10E04F1:   var_14C = 0
  loc_10E0504:   var_144 = 0
  loc_10E0544:   var_128 = "Waiter"
  loc_10E054D:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10E057B:   unk_45ED0E.CommitTrans
  loc_10E0582:   var_96 = 0
  loc_10E0590:   Me.Requery -1
  loc_10E05A0:   Me.Requery -1
  loc_10E05C0:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10E05CD:     Me.Bookmark = var_94
  loc_10E05D5:   Else
  loc_10E05E9:     If (Me.EOF = 0) Then
  loc_10E05F2:       Me.MoveLast
  loc_10E05F7:     End If
  loc_10E05F7:   End If
  loc_10E05F7:   Call Proc_16_31_1078288(var_96, var_144, 0, var_14C, var_150)
  loc_10E0618:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_10E0620: End If
  loc_10E0620: Exit Sub
  loc_10E0621: ' Referenced from: 10E0398
  loc_10E0627: If (var_96 = &HFF) Then
  loc_10E0630:   unk_45ED0E.RollbackTrans
  loc_10E0635: End If
  loc_10E063D: Set var_120 = Err()
  loc_10E0643: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10E0664: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10E0677: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F23724
  'Data Table: 45ECFC
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F23628: On Error Goto loc_F236DF
  loc_F23639: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F2363C:   Exit Sub
  loc_F2363D: End If
  loc_F23654: If (Me.RecordCount > 0) Then
  loc_F2366C:   var_8C = "EDIT"
  loc_F2367A:   Call Proc_16_29_E7A1C4(Proc_5_1_100EC1C(var_8C, Me))
  loc_F23690:   Set var_90 = Me.Txt
  loc_F23696:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_F2369E:   var_98.SetFocus
  loc_F236AD: Else
  loc_F236CE:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F236DE: End If
  loc_F236DE: Exit Sub
  loc_F236DF: ' Referenced from: F23628
  loc_F236E7: Set var_90 = Err()
  loc_F236ED: Call 0.Method_arg_2C (var_8C)
  loc_F2370E: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F23721: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C6B4
  'Data Table: 45ECFC
  loc_E1C6A9: Me.Global.Unload Me
  loc_E1C6B1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F24168
  'Data Table: 45ECFC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F24068: On Error Goto loc_F24100
  loc_F24074: var_88 = Me.RecordCount
  loc_F24082: If (var_88 <= 0) Then
  loc_F2408B:   var_B8 = "Information"
  loc_F240A6:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F240B6:   Exit Sub
  loc_F240B7: End If
  loc_F240BE: var_10C = "Select W.Code As SearchCode,D.Name As RestName,W.Name,W.ActiveYN FROM Waiter W Left Join Depart D ON W.RestCode=D.Code Where (W.LOGSITE_CODE='" & MemVar_1F95078
  loc_F240C5: MemVar_1F950E4 = var_10C & "' or W.LOGSITE_CODE='HO') Order by D.Name,W.Name"
  loc_F240CF: var_10C = "3000,3000"
  loc_F240D5: Proc_6_126_F1C850(var_10C)
  loc_F240E3: MemVar_1F95120 = Me
  loc_F240FA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F240FF: Exit Sub
  loc_F24100: ' Referenced from: F24068
  loc_F24108: Set var_110 = Err()
  loc_F2410E: Call 0.Method_arg_1C (var_88)
  loc_F2411F: If (var_88 <> 0) Then
  loc_F2412A:   Set var_110 = Err()
  loc_F24130:   Call 0.Method_arg_2C (var_10C)
  loc_F24151:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F24164: End If
  loc_F24164: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E379E8
  'Data Table: 45ECFC
  loc_E379D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E379E0: Call Proc_16_31_1078288(global_52)
  loc_E379E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E375C8
  'Data Table: 45ECFC
  loc_E375B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E375C0: Call Proc_16_31_1078288(global_52)
  loc_E375C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E37688
  'Data Table: 45ECFC
  loc_E37678: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37680: Call Proc_16_31_1078288(global_52)
  loc_E37685: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E37868
  'Data Table: 45ECFC
  loc_E37858: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37860: Call Proc_16_31_1078288(global_52)
  loc_E37865: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1087264
  'Data Table: 45ECFC
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_45ED0E As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1086FCC: On Error Goto loc_1087218
  loc_1086FE3: var_A0 = "SELECT D.Name As RestName,W.* from Waiter W Left Join Depart D ON W.RestCode=D.Code Where (W.LOGSITE_CODE='" & MemVar_1F95078
  loc_1086FF3: unk_45ED0E.Execute var_A0 & "' or W.LOGSITE_CODE='HO') order by D.Name,W.Name", var_C4, -1
  loc_1086FFE: Set var_88 = var_C8
  loc_1087014: var_CC = var_88.RecordCount
  loc_1087022: If (var_CC = 0) Then
  loc_108703E:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108704E:   Exit Sub
  loc_108704F: End If
  loc_108705E: var_A4 = MemVar_1F950B4 & "\WaiterMast.ttx"
  loc_1087065: Set var_C8 = var_88 
  loc_1087071: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108707B: Set var_88 = var_C8
  loc_1087081: var_B4 = CVar(var_12E) 'Integer
  loc_1087084: var_98 = var_B4 'Variant
  loc_10870A0: var_A0 = MemVar_1F950B4 & "\WaiterMast.RPT"
  loc_10870A9: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_10870B4: MemVar_1F951E8 = var_C8
  loc_10870CF: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_10870D7: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10870E3: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_10870FC:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1087104:   Call 0.Method_arg_20 (var_138)
  loc_108710C:   Call 0.Method_arg_30 (var_A0)
  loc_1087152:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1087168:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1087170:     Call 0.Method_arg_20 (var_138)
  loc_1087178:     Call 0.Method_arg_38 ("'Waiter Master'")
  loc_1087184:   End If
  loc_1087187: Next var_132 'Integer
  loc_10871A5: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_10871AD: Call 0.Method_arg_2C (var_DC)
  loc_10871BB: Call 0.Method_arg_150 (var_FC)
  loc_10871C6: Call 0.Method_arg_50 (var_A0)
  loc_10871D0: Set var_138 = Nothing
  loc_10871EA: Set var_C8 = MemVar_1F951E8 
  loc_10871F6: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_1087201: MemVar_1F951E8 = var_C8
  loc_1087214: Set var_88 = Nothing
  loc_1087217: Exit Sub
  loc_1087218: ' Referenced from: 1086FCC
  loc_1087220: Set var_C8 = Err()
  loc_1087226: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1087231: Call 0.Method_arg_50 (var_A4)
  loc_108724D: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1087260: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2483C
  'Data Table: 45ECFC
  Dim Me As Recordset15
  loc_E24823: Me.Requery -1
  loc_E24833: Me.Requery -1
  loc_E24838: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12CFEA4
  'Data Table: 45ECFC
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_45ED0E As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_B0 As Variant
  Dim var_164 As TextBox
  Dim var_178 As Variant
  Dim var_1B0 As TextBox
  loc_12CF888: On Error Goto loc_12CFE4F
  loc_12CF88F: var_86 = CByte(0) 'Byte
  loc_12CF89E: Set var_90 = Me.Txt
  loc_12CF8A4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_12CF8CD: If (Proc_183_19_E8E68C(var_94, "Name") = 0) Then
  loc_12CF8D7:   Call Txt_GotFocus(CInt(1))
  loc_12CF8DC:   Exit Sub
  loc_12CF8DD: End If
  loc_12CF8E1: Set var_90 = Me.TopCtrl1
  loc_12CF8E7: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_94)
  loc_12CF900: If (CStr() = "Add") Then
  loc_12CF90B:   If (MemVar_1F953B0 = "A") Then
  loc_12CF914:     var_D4 = 0
  loc_12CF931:     var_9C = "Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From Waiter WHERE SITE_CODE='" & MemVar_1F95070
  loc_12CF941:     unk_45ED0E.Execute CStr() & "'", var_B0, -1
  loc_12CF949:     var_90 = var_90.Fields
  loc_12CF951:     var_D4 = var_94.Item(var_94)
  loc_12CF959:     var_98 = var_98.Value
  loc_12CF968:     global_68 = CStr(var_E4)
  loc_12CF988:   Else
  loc_12CF990:     If (MemVar_1F953B0 = "S") Then
  loc_12CF999:       var_D4 = 0
  loc_12CF9B6:       var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From Waiter WHERE SITE_CODE='" & MemVar_1F95070
  loc_12CF9BD:       var_B4 = CStr() & "'"
  loc_12CF9C6:       unk_45ED0E.Execute var_B4, var_B0, -1
  loc_12CF9CE:       var_90 = var_90.Fields
  loc_12CF9D6:       var_D4 = var_94.Item(var_94)
  loc_12CF9DE:       var_98 = var_98.Value
  loc_12CF9ED:       global_68 = CStr(var_E4)
  loc_12CFA0A:     End If
  loc_12CFA0A:   End If
  loc_12CFA17:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_12CFA3D:   var_E4 = Format(global_68, "000")
  loc_12CFA45:   var_108 = (1 + var_E4)
  loc_12CFA50:   global_68 = CStr(var_108)
  loc_12CFA65: Else
  loc_12CFA82:   var_94 = Me.Fields.Item("Code")
  loc_12CFA99:   global_68 = CStr(var_94.Value)
  loc_12CFAAA: End If
  loc_12CFAB3: unk_45ED0E.BeginTrans var_10C
  loc_12CFABC: var_86 = CByte(1) 'Byte
  loc_12CFAC4: Set var_90 = Me.TopCtrl1
  loc_12CFACA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_12CFAE3: If (CStr(var_F8) = "Add") Then
  loc_12CFAFD:   var_9C = "Insert Into Waiter(Code,Name,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,RestCode,ActiveYN) Values('" & global_68
  loc_12CFB04:   var_E8 = var_9C & "','"
  loc_12CFB15:   Set var_90 = Me.Txt
  loc_12CFB1B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_B4, var_E8, var_218)
  loc_12CFB23:   -1 = var_94.Text
  loc_12CFB5D:   Proc_6_7_F26918(var_E4, CVar(Proc_6_15_EF37AC(CVar(var_21C & var_B4 & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',"), var_E4)))
  loc_12CFB93:   Set var_98 = Me.Txt
  loc_12CFB99:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_164)
  loc_12CFBC7:   Set var_1AC = Me.Txt
  loc_12CFBCD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1B0)
  loc_12CFBF7:   unk_45ED0E.Execute CStr(var_E4 & var_E4 & ",'A','" & CVar(MemVar_1F95078) & "','" & CVar(var_164.Tag) & "','" & CVar(var_1B0.Text) & "' )"), , 
  loc_12CFC44: Else
  loc_12CFC62:   Set var_90 = Me.Txt
  loc_12CFC68:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE Waiter SET RestCode='")
  loc_12CFC70:   var_178 = var_94.Tag
  loc_12CFC79:   var_B4 = -1 & var_9C
  loc_12CFC80:   var_110 = var_B4 & "',Name='"
  loc_12CFC91:   Set var_98 = Me.Txt
  loc_12CFC97:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_164, var_E8)
  loc_12CFC9F:   var_110 = var_164.Text
  loc_12CFCC0:   Set var_1AC = Me.Txt
  loc_12CFCC6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1B0)
  loc_12CFCFA:   var_F8 = CVar(var_21C & var_E8 & "',ActiveYN='" & var_1B0.Text & "',SITE_CODE='" & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_12CFD08:   Proc_6_7_F26918(var_E4)
  loc_12CFD10:   var_108 = CVar(Proc_6_15_EF37AC(var_F8)) & var_E4 
  loc_12CFD14:   var_C4 = " ,U_AE='E' WHERE Code='"
  loc_12CFD3D:   unk_45ED0E.Execute CStr(var_108 & var_C4 & CVar(global_68) & "'"), , 
  loc_12CFD83: End If
  loc_12CFD89: unk_45ED0E.CommitTrans
  loc_12CFD92: var_86 = CByte(0) 'Byte
  loc_12CFDA1: Me.Requery -1
  loc_12CFDB1: Me.Requery -1
  loc_12CFDDE: Me.Find "Code='" & global_68 & "'", 0, 1
  loc_12CFDEE: Set var_90 = Me.TopCtrl1
  loc_12CFDF4: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C4)
  loc_12CFE0D: If (CStr() = "Add") Then
  loc_12CFE10:   Call TopCtrl1_UnknownEvent_A()
  loc_12CFE15:   Exit Sub
  loc_12CFE16: End If
  loc_12CFE2B: var_9C = "INI"
  loc_12CFE39: Call Proc_16_29_E7A1C4(Proc_5_1_100EC1C(var_9C, Me))
  loc_12CFE44: Call Proc_16_33_EBC494(global_52)
  loc_12CFE49: Call Proc_16_31_1078288()
  loc_12CFE4E: Exit Sub
  loc_12CFE4F: ' Referenced from: 12CF888
  loc_12CFE58: If (CInt(var_86) = 1) Then
  loc_12CFE61:   unk_45ED0E.RollbackTrans
  loc_12CFE66: End If
  loc_12CFE6E: Set var_90 = Err()
  loc_12CFE74: Call 0.Method_arg_2C (var_9C)
  loc_12CFE8D: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_12CFEA0: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E635CC
  'Data Table: 45ECFC
  loc_E6359C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E6359F:   Call DGHelp_UnknownEvent_9()
  loc_E635A4: End If
  loc_E635C0: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E635C3:   Call DGRest_UnknownEvent_9()
  loc_E635C8: End If
  loc_E635C8: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC08D4
  'Data Table: 45ECFC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC084A: On Error Goto loc_EC088F
  loc_EC0853: Me.MoveFirst
  loc_EC086D: var_8C = "code='" & MyValue
  loc_EC087D: Me.Find var_8C & "'", 0, 1
  loc_EC0889: Call Proc_16_31_1078288(var_A0)
  loc_EC088E: Exit Sub
  loc_EC088F: ' Referenced from: EC084A
  loc_EC0897: Set var_A4 = Err()
  loc_EC089D: Call 0.Method_arg_2C (var_8C)
  loc_EC08BE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC08D1: Exit Sub
  loc_EC08D2: Exit Sub
End Sub

Public Sub Proc_16_29_E7A1C4(arg_C) 'E7A1C4
  'Data Table: 45ECFC
  Dim var_98 As TextBox
  loc_E7A172: Set var_8C = Me.Txt
  loc_E7A178: Call 0.Method_Proc_16_29_E7A1C4C (var_8E, var_86)
  loc_E7A188: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A19E:   Set var_8C = Me.Txt
  loc_E7A1A4:   Call 0.Method_Proc_16_29_E7A1C40 (CInt(var_86), var_98)
  loc_E7A1AC:   var_98.Enabled = arg_C
  loc_E7A1BB: Next var_92 'Byte
  loc_E7A1C1: Exit Sub
End Sub

Public Sub Proc_16_30_E9F0A8
  'Data Table: 45ECFC
  Dim var_98 As TextBox
  loc_E9F02E: Set var_8C = Me.Txt
  loc_E9F034: Call 0.Method_Proc_16_30_E9F0A8C (var_8E, var_86)
  loc_E9F044: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9F05A:   Set var_8C = Me.Txt
  loc_E9F060:   Call 0.Method_Proc_16_30_E9F0A80 (CInt(var_86), var_98)
  loc_E9F068:   var_98.Text = vbNullString
  loc_E9F077: Next var_92 'Byte
  loc_E9F08B: Set var_8C = Me.Txt
  loc_E9F091: Call 0.Method_Proc_16_30_E9F0A80 (CInt(2), var_98)
  loc_E9F099: var_98.Text = "Yes"
  loc_E9F0A5: Exit Sub
End Sub

Public Sub Proc_16_31_1078288
  'Data Table: 45ECFC
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_BC As TextBox
  loc_1077FFC: On Error Goto loc_1078243
  loc_1078005: Proc_183_45_E5CCA8(global_52)
  loc_1078021: If (Me.RecordCount <= 0) Then
  loc_1078024:   Call Proc_16_30_E9F0A8()
  loc_107802C: Else
  loc_1078060:   global_68 = CStr(Me.Fields.Item("Name").Value)
  loc_10780AA:   Set var_B8 = Me.Txt
  loc_10780B0:   Call 0.Method_Proc_16_31_10782880 (CInt(0), var_BC)
  loc_10780B8:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RestName")))
  loc_1078105:   Set var_B8 = Me.Txt
  loc_107810B:   Call 0.Method_Proc_16_31_10782880 (CInt(0), var_BC)
  loc_1078113:   var_BC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")))
  loc_1078160:   Set var_B8 = Me.Txt
  loc_1078166:   Call 0.Method_Proc_16_31_10782880 (CInt(2), var_BC)
  loc_107816E:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ActiveYN")))
  loc_10781BE:   Set var_B8 = Me.Txt
  loc_10781C4:   Call 0.Method_Proc_16_31_10782880 (CInt(1), var_BC)
  loc_10781CC:   var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1078210:   var_B4 = CStr(Me.Fields.Item("Code").Value)
  loc_107821E:   Set var_B8 = Me.Txt
  loc_1078224:   Call 0.Method_Proc_16_31_10782880 (CInt(1), var_BC)
  loc_107822C:   var_BC.Tag = var_B4
  loc_1078242: End If
  loc_1078242: Exit Sub
  loc_1078243: ' Referenced from: 1077FFC
  loc_107824B: Set var_8C = Err()
  loc_1078251: Call 0.Method_arg_2C (var_B4)
  loc_1078272: MsgBox(CVar(var_B4), &H40, "Information", var_EC, var_10C)
  loc_1078285: Exit Sub
End Sub

Public Sub Proc_16_32_1136028
  'Data Table: 45ECFC
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As Variant
  Dim unk_45ED0E As Connection15
  Dim var_E0 As Recordset15
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_19C As Integer
  Dim var_108 As Variant
  Dim var_B8 As Fields15
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_18C As Fields15
  Dim var_1A0 As Field20
  loc_1135D0F: If (Me.RecordCount = 0) Then
  loc_1135D12:   Proc_16_32_1136028 = 
  loc_1135D18: End If
  loc_1135D1C: Set var_90 = Me.TopCtrl1
  loc_1135D22: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1135D3B: If (CStr() = "Add") Then
  loc_1135D44:   var_F4 = 0
  loc_1135D79:   Set var_90 = Me.Txt
  loc_1135D7F:   Call 0.Method_Proc_16_32_11360280 (CInt(1), var_A8, var_AC, "Select Count(*) From Waiter Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1135DA8:   Set var_B8 = Me.Txt
  loc_1135DAE:   Call 0.Method_Proc_16_32_11360280 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' And RestCode='")
  loc_1135DB6:   var_F4 = var_BC.Tag
  loc_1135DCF:   unk_45ED0E.Execute var_F8 & var_C0 & "'", var_108, 
  loc_1135DD7:    = var_A8.Text.Fields
  loc_1135DDF:    = var_E4.Item()
  loc_1135DE7:    = var_F8.Value
  loc_1135E22:   If (var_108 > 0) Then
  loc_1135E46:     MsgBox("Duplicate Name", &H40, "Information", var_128, var_148)
  loc_1135E61:     Set var_90 = Me.Txt
  loc_1135E67:     Call 0.Method_Proc_16_32_11360280 (CInt(1))
  loc_1135E6F:     var_A8.SetFocus
  loc_1135E80:     Proc_16_32_1136028 = &HFF
  loc_1135E86:   End If
  loc_1135E89: Else
  loc_1135E8F:   var_19C = 0
  loc_1135EC4:   Set var_90 = Me.Txt
  loc_1135ECA:   Call 0.Method_Proc_16_32_11360280 (CInt(1), var_A8, var_AC, "Select Count(*) From Waiter Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (Name='", var_188, -1)
  loc_1135F12:   var_128 = CVar(var_18C & var_AC & "' And Name<>'") & Me.Fields.Item("Name").Value 
  loc_1135F1B:   var_148 = var_128 & "') And RestCode='" 
  loc_1135F2D:   Set var_E0 = Me.Txt
  loc_1135F33:   Call 0.Method_Proc_16_32_11360280 (CInt(0), var_E4, var_C0, var_148)
  loc_1135F3B:   var_19C = var_E4.Tag
  loc_1135F5D:   unk_45ED0E.Execute CStr(var_1A0 & CVar(var_C0) & "'"), var_1B0, var_A8
  loc_1135F65:    = var_A8.Text.Fields
  loc_1135F6D:    = var_18C.Item()
  loc_1135F75:    = var_1A0.Value
  loc_1135FBC:   If (var_1B0 > 0) Then
  loc_1135FE0:     MsgBox("Duplicate Name", &H40, "Information", var_128, var_148)
  loc_1135FFB:     Set var_90 = Me.Txt
  loc_1136001:     Call 0.Method_Proc_16_32_11360280 (CInt(1))
  loc_1136009:     var_A8.SetFocus
  loc_113601A:     Proc_16_32_1136028 = &HFF
  loc_1136020:   End If
  loc_1136020: End If
  loc_1136020: Proc_16_32_1136028 = var_A8
End Sub

Public Sub Proc_16_33_EBC494
  'Data Table: 45ECFC
  loc_EBC40C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBC41E:   Me.DGHelp.Visible = False
  loc_EBC426: End If
  loc_EBC442: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EBC454:   Me.DGRest.Visible = False
  loc_EBC45C: End If
  loc_EBC478: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBC48A:   Me.FGPoint.Visible = False
  loc_EBC492: End If
  loc_EBC492: Exit Sub
End Sub

Public Sub Proc_16_34_F8BEC4
  'Data Table: 45ECFC
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_F8BD72: Set var_88 = Me.Txt
  loc_F8BD78: Call 0.Method_Proc_16_34_F8BEC40 (CInt(1), var_8C)
  loc_F8BD97: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_F8BDB3: Set var_B4 = Me.Txt
  loc_F8BDB9: Call 0.Method_Proc_16_34_F8BEC40 (CInt(1), var_B8)
  loc_F8BDD4: Set var_88 = Me.Txt
  loc_F8BDDA: Call 0.Method_Proc_16_34_F8BEC40 (CInt(1), var_8C)
  loc_F8BDF2: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_F8BE01: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_F8BE21: Set var_88 = Me.Txt
  loc_F8BE27: Call 0.Method_Proc_16_34_F8BEC40 (CInt(0), var_8C)
  loc_F8BE46: Me.DGRest.Left = CVar(var_8C.Left)
  loc_F8BE62: Set var_B4 = Me.Txt
  loc_F8BE68: Call 0.Method_Proc_16_34_F8BEC40 (CInt(0), var_B8)
  loc_F8BE83: Set var_88 = Me.Txt
  loc_F8BE89: Call 0.Method_Proc_16_34_F8BEC40 (CInt(0), var_8C)
  loc_F8BEA1: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_F8BEB0: Me.DGRest.Top = CVar(var_8C.Left)
  loc_F8BEC2: Exit Sub
End Sub
