VERSION 5.00
Begin VB.Form UserMast
  Caption = "User Master"
  BackColor = &HFFC0C0&
  ForeColor = &H0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 105
  ClientTop = 600
  ClientWidth = 9870
  ClientHeight = 7200
  LockControls = -1  'True
  WhatsThisHelp = -1  'True
  PaletteMode = 1
  Begin TextBox TXT
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4800
    Top = 2820
    Width = 1455
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    PasswordChar = "#"
    MaxLength = 8
  End
  Begin MainCtrl topCtrl1
    Left = 0
    Top = 0
    Width = 9870
    Height = 450
    TabIndex = 18
  End
  Begin TextBox TXT
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4785
    Top = 4065
    Width = 510
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin TextBox TXT
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4800
    Top = 2505
    Width = 1455
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin TextBox TXT
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4800
    Top = 3450
    Width = 1455
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    PasswordChar = "#"
    MaxLength = 8
  End
  Begin TextBox TXT
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4800
    Top = 3135
    Width = 1455
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    PasswordChar = "#"
    MaxLength = 8
  End
  Begin TextBox TXT
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4800
    Top = 3765
    Width = 510
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin TextBox TXT
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4800
    Top = 2190
    Width = 2070
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 10
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
  Begin CommonDialog CDLG
  End
  Begin Label Label
    Caption = "Old Password"
    Index = 8
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 3000
    Top = 2820
    Width = 1305
    Height = 240
    TabIndex = 19
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Shape Shape1
    BorderColor = &HC00000&
    Left = 4785
    Top = 4395
    Width = 4335
    Height = 435
    BorderWidth = 2
  End
  Begin Label Label1
    Index = 14
    BackColor = &H8080FF&
    ForeColor = &H0&
    Left = 4800
    Top = 4395
    Width = 4290
    Height = 405
    TabIndex = 17
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Color Selection"
    Index = 13
    ForeColor = &HC0&
    Left = 3045
    Top = 4530
    Width = 1470
    Height = 240
    TabIndex = 16
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
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 15
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
  Begin Label Label
    Caption = "(Y)es/(N)o"
    Index = 7
    BackColor = &H80000005&
    ForeColor = &H80&
    Left = 5325
    Top = 4080
    Width = 885
    Height = 240
    TabIndex = 14
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Active"
    Index = 6
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 3000
    Top = 4095
    Width = 585
    Height = 240
    TabIndex = 13
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "(Y)es/(N)o"
    Index = 5
    BackColor = &H80000005&
    ForeColor = &H80&
    Left = 5325
    Top = 3780
    Width = 885
    Height = 240
    TabIndex = 12
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Short Name"
    Index = 4
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 2985
    Top = 2505
    Width = 1125
    Height = 240
    TabIndex = 11
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Confirm Password"
    Index = 3
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 3000
    Top = 3450
    Width = 1725
    Height = 240
    TabIndex = 10
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Password"
    Index = 2
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 3000
    Top = 3135
    Width = 915
    Height = 240
    TabIndex = 9
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Supervisor"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 3000
    Top = 3765
    Width = 1020
    Height = 240
    TabIndex = 8
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "User Name"
    Index = 0
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 3000
    Top = 2190
    Width = 1035
    Height = 240
    TabIndex = 7
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "UserMast"


Private Sub TopCtrl1_UnknownEvent_A 'F52DF8
  'Data Table: 436470
  Dim var_94 As TextBox
  Dim var_9C As TextBox
  loc_F52CE8: On Error Goto loc_F52DBD
  loc_F52D0E: Call Proc_153_34_FA3904(Proc_5_1_100EC1C("ADD", Me))
  loc_F52D24: Set var_8C = Me.TXT
  loc_F52D2A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (6, var_94)
  loc_F52D32: var_94.Enabled = False
  loc_F52D3E: Call Proc_153_33_F624BC(global_64)
  loc_F52D4F: Set var_8C = Me.TXT
  loc_F52D55: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_94)
  loc_F52D5D: var_88 = var_94.Text
  loc_F52D6E: Set var_98 = Me.TXT
  loc_F52D74: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_9C)
  loc_F52D7C: var_9C.Tag = var_88
  loc_F52D94: Call Txt_GotFocus()
  loc_F52DA2: Set var_8C = Me.TXT
  loc_F52DA8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_94)
  loc_F52DB0: var_94.SetFocus
  loc_F52DBC: Exit Sub
  loc_F52DBD: ' Referenced from: F52CE8
  loc_F52DC5: Set var_8C = Err()
  loc_F52DCB: Call 0.Method_arg_2C (var_88)
  loc_F52DE4: MsgBox(CVar(var_88), &H10, var_CC, var_EC, var_10C)
  loc_F52DF7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EDB048
  'Data Table: 436470
  loc_EDAF9C: On Error Goto loc_EDB00D
  loc_EDAFAA: var_C4 = "Confirmation"
  loc_EDAFD6: If (MsgBox("Are You Sure To Cancel Changes", 4, var_C4, var_E4, var_104) = 6) Then
  loc_EDAFEE:   var_108 = "INI"
  loc_EDAFFC:   Call Proc_153_34_FA3904(Proc_5_1_100EC1C(var_108, Me))
  loc_EDB007:   Call Proc_153_32_12A9540(global_64)
  loc_EDB00C: End If
  loc_EDB00C: Exit Sub
  loc_EDB00D: ' Referenced from: EDAF9C
  loc_EDB015: Set var_10C = Err()
  loc_EDB01B: Call 0.Method_arg_2C (var_108)
  loc_EDB034: MsgBox(CVar(var_108), &H10, var_C4, var_E4, var_104)
  loc_EDB047: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10D8438
  'Data Table: 436470
  Dim Me As Recordset15
  Dim unk_436489 As Connection15
  Dim var_120 As TextBox
  Dim var_128 As String
  Dim var_B8 As Variant
  loc_10D8140: On Error Goto loc_10D83C5
  loc_10D814C: var_98 = Me.RecordCount
  loc_10D815A: If (var_98 > 0) Then
  loc_10D8194:   If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_10D81A8:     var_94 = Me.Bookmark 'Variant
  loc_10D81B5:     unk_436489.BeginTrans var_98
  loc_10D81D6:     Set var_11C = Me.TXT
  loc_10D81DC:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (0, var_120, var_124, "delete from user1 where user_name='")
  loc_10D81E4:     var_B8 = var_120.Text
  loc_10D81ED:     var_128 = -1 & var_124
  loc_10D81FD:     unk_436489.Execute var_128 & "'", var_130, 
  loc_10D8233:     Set var_11C = Me.TXT
  loc_10D8239:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (0, var_120, var_124, "delete from user2 where user_name='")
  loc_10D8241:     var_B8 = var_120.Text
  loc_10D824A:     var_128 = -1 & var_124
  loc_10D825A:     unk_436489.Execute var_128 & "'", var_130, 
  loc_10D8290:     Set var_11C = Me.TXT
  loc_10D8296:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (0, var_120, var_124, "delete from menuhelp1 where username='")
  loc_10D829E:     var_B8 = var_120.Text
  loc_10D82A7:     var_128 = -1 & var_124
  loc_10D82B7:     unk_436489.Execute var_128 & "'", var_130, 
  loc_10D82ED:     Set var_11C = Me.TXT
  loc_10D82F3:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (0, var_120, var_124, "delete from userMAST where user_name='")
  loc_10D82FB:     var_B8 = var_120.Text
  loc_10D8304:     var_128 = -1 & var_124
  loc_10D8314:     unk_436489.Execute var_128 & "'", var_130, 
  loc_10D8334:     unk_436489.CommitTrans
  loc_10D8344:     Me.Requery -1
  loc_10D8352:     var_98 = Me.RecordCount
  loc_10D8364:     If (CVar(var_98) >= var_94) Then
  loc_10D8371:       Me.Bookmark = var_94
  loc_10D8379:     Else
  loc_10D838D:       If (Me.EOF = 0) Then
  loc_10D8396:         Me.MoveLast
  loc_10D839B:       End If
  loc_10D839B:     End If
  loc_10D839B:     Call Proc_153_32_12A9540()
  loc_10D83BC:     Proc_5_0_1107AD0(&HFF, Me)
  loc_10D83C4:   End If
  loc_10D83C4: End If
  loc_10D83C4: Exit Sub
  loc_10D83C5: ' Referenced from: 10D8140
  loc_10D83CD: Set var_11C = Err()
  loc_10D83D3: Call 0.Method_arg_1C (var_98, global_64)
  loc_10D83E4: If (var_98 <> 0) Then
  loc_10D83ED:   unk_436489.RollbackTrans
  loc_10D83F2: End If
  loc_10D83FA: Set var_11C = Err()
  loc_10D8400: Call 0.Method_arg_2C (var_124)
  loc_10D8421: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F8, var_118)
  loc_10D8434: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FEEA74
  'Data Table: 436470
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim var_B0 As TextBox
  loc_FEE8A4: On Error Goto loc_FEEA2E
  loc_FEE8BE: If (Me.RecordCount > 0) Then
  loc_FEE8E4:   Call Proc_153_34_FA3904(Proc_5_1_100EC1C("EDIT", Me))
  loc_FEE8FB:   Set var_A0 = Me.TXT
  loc_FEE901:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_A8)
  loc_FEE909:   var_9C = var_A8.Text
  loc_FEE91A:   Set var_AC = Me.TXT
  loc_FEE920:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_B0)
  loc_FEE928:   var_B0.Tag = var_9C
  loc_FEE940:   Set var_88 = Nothing
  loc_FEE961:   If (Ucase(MemVar_1F950C8) = "SA") Then
  loc_FEE96F:     Set var_A0 = Me.TXT
  loc_FEE975:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (6, var_A8)
  loc_FEE97D:     var_A8.Enabled = False
  loc_FEE98C:   Else
  loc_FEE997:     Set var_A0 = Me.TXT
  loc_FEE99D:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (2, var_A8)
  loc_FEE9A5:     var_A8.Enabled = False
  loc_FEE9BC:     Set var_A0 = Me.TXT
  loc_FEE9C2:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (3, var_A8)
  loc_FEE9CA:     var_A8.Enabled = False
  loc_FEE9D6:   End If
  loc_FEE9DF:   Set var_A0 = Me.TXT
  loc_FEE9E5:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_A8)
  loc_FEE9ED:   var_A8.SetFocus
  loc_FEE9FC: Else
  loc_FEEA1D:   MsgBox("There Is No Record To Edit.", &H40, "Information", var_110, var_130)
  loc_FEEA2D: End If
  loc_FEEA2D: Exit Sub
  loc_FEEA2E: ' Referenced from: FEE8A4
  loc_FEEA36: Set var_A0 = Err()
  loc_FEEA3C: Call 0.Method_arg_2C (var_9C)
  loc_FEEA5D: MsgBox(CVar(var_9C), &H30, " Editing Error ", var_110, var_130)
  loc_FEEA70: Exit Sub
  loc_FEEA71: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E8D1E4
  'Data Table: 436470
  Dim var_88 As Variant
  loc_E8D17C: On Error Goto loc_E8D1A7
  loc_E8D18A: Set global_64 = Nothing
  loc_E8D19E: Me.Global.Unload Me
  loc_E8D1A6: Exit Sub
  loc_E8D1A7: ' Referenced from: E8D17C
  loc_E8D1AF: Set var_88 = Err()
  loc_E8D1B5: Call 0.Method_arg_2C (var_8C)
  loc_E8D1CE: MsgBox(CVar(var_8C), &H10, var_BC, var_DC, var_FC)
  loc_E8D1E1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F59470
  'Data Table: 436470
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  Dim var_A8 As Variant
  Dim var_7FF As Double
  loc_F59350: On Error Goto loc_F5942F
  loc_F5936A: If (Me.RecordCount <= 0) Then
  loc_F5938E:   MsgBox("No Records To Search.", &H40, "Information", var_E8, var_108)
  loc_F5939E:   Exit Sub
  loc_F5939F: End If
  loc_F593B2: var_B8 = "SA"
  loc_F593BD: If (Ucase(MemVar_1F950C8) = var_B8) Then
  loc_F593C3:   MemVar_1F950E4 = "select user_name as searchcode,User_Name+SPACE(20-LEN(User_Name)) AS UserName,Label FROM USERMAST ORDER BY USER_NAME"
  loc_F593CA: Else
  loc_F593D0:   If (MemVar_1F950B8 = 1) Then
  loc_F593D6:     MemVar_1F950E4 = "select user_name as searchcode,User_Name+SPACE(20-LEN(User_Name)) AS UserName,Label FROM USERMAST where User_name <>'SA'ORDER BY USER_NAME"
  loc_F593DD:   Else
  loc_F593E3:     If (MemVar_1F950B8 = 0) Then
  loc_F593ED:       var_10C = "select user_name as searchcode,User_Name+SPACE(20-LEN(User_Name)) AS UserName,Label FROM USERMAST where User_name='" & MemVar_1F950C8
  loc_F593F4:       MemVar_1F950E4 = var_10C & "' ORDER BY USER_NAME"
  loc_F593FB:     End If
  loc_F593FB:   End If
  loc_F593FB: End If
  loc_F59401: MemVar_1F95120 = Me
  loc_F5940E: Proc_6_126_F1C850("3000,500")
  loc_F59429: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F5942E: Exit Sub
  loc_F5942F: ' Referenced from: F59350
  loc_F5943A: var_A8 = Err().Name
  loc_F5945A: MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F5946D: Exit Sub
  loc_F5946E: var_7FF = var_A8
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2DC08
  'Data Table: 436470
  loc_E2DBF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2DC00: Call Proc_153_32_12A9540(global_64)
  loc_E2DC05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2DA88
  'Data Table: 436470
  loc_E2DA78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2DA80: Call Proc_153_32_12A9540(global_64)
  loc_E2DA85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2DAE8
  'Data Table: 436470
  Dim var_701 As Double
  loc_E2DAD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2DAE0: Call Proc_153_32_12A9540(global_64)
  loc_E2DAE5: Exit Sub
  loc_E2DAE6: var_701 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2D848
  'Data Table: 436470
  loc_E2D838: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D840: Call Proc_153_32_12A9540(global_64)
  loc_E2D845: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1072C94
  'Data Table: 436470
  Dim unk_436489 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_1072A14: On Error Goto loc_1072C4B
  loc_1072A2D: unk_436489.Execute "SELECT *,User_Name as Name,Label as Label,ActiveYN as Active FROM UserMast ", var_BC, -1
  loc_1072A38: Set var_88 = var_C0
  loc_1072A47: var_C4 = var_88.RecordCount
  loc_1072A55: If (var_C4 = 0) Then
  loc_1072A71:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1072A81:   Exit Sub
  loc_1072A82: End If
  loc_1072A91: var_12C = MemVar_1F950B4 & "\userMast.ttx"
  loc_1072A98: Set var_C0 = var_88 
  loc_1072AA4: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_1072AAE: Set var_88 = var_C0
  loc_1072AB4: var_AC = CVar(var_12E) 'Integer
  loc_1072AB7: var_98 = var_AC 'Variant
  loc_1072AD3: var_128 = MemVar_1F950B4 & "\UserMast.RPT"
  loc_1072ADC: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_1072AE7: MemVar_1F951E8 = var_C0
  loc_1072B02: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_1072B0A: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1072B16: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_1072B2F:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1072B37:   Call 0.Method_arg_20 (var_138)
  loc_1072B3F:   Call 0.Method_arg_30 (var_128)
  loc_1072B85:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_1072B9B:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1072BA3:     Call 0.Method_arg_20 (var_138)
  loc_1072BAB:     Call 0.Method_arg_38 ("'User Master'")
  loc_1072BB7:   End If
  loc_1072BBA: Next var_132 'Integer
  loc_1072BD8: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1072BE0: Call 0.Method_arg_2C (var_D4)
  loc_1072BEE: Call 0.Method_arg_150 (var_F4)
  loc_1072BF9: Call 0.Method_arg_50 (var_128)
  loc_1072C03: Set var_138 = Nothing
  loc_1072C1D: Set var_C0 = MemVar_1F951E8 
  loc_1072C29: Proc_6_99_1484404(var_C0, 0, var_128)
  loc_1072C34: MemVar_1F951E8 = var_C0
  loc_1072C47: Set var_88 = Nothing
  loc_1072C4A: Exit Sub
  loc_1072C4B: ' Referenced from: 1072A14
  loc_1072C53: Set var_C0 = Err()
  loc_1072C59: Call 0.Method_arg_2C (var_128, &HFF)
  loc_1072C64: Call 0.Method_arg_50 (var_12C)
  loc_1072C80: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1072C93: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B5A4
  'Data Table: 436470
  Dim Me As Recordset15
  loc_E0B59B: Me.Requery -1
  loc_E0B5A0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1439DF0
  'Data Table: 436470
  Dim var_AC As Variant
  Dim var_A4 As TextBox
  Dim var_E8 As Variant
  Dim var_C8 As String
  Dim unk_436489 As Connection15
  Dim var_B4 As String
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_190 As TextBox
  Dim var_294 As Variant
  Dim var_340 As Variant
  Dim var_108 As Variant
  Dim var_F8 As String
  Dim var_128 As Variant
  Dim var_214 As Variant
  Dim var_28C As Variant
  Dim var_338 As Variant
  Dim var_3AC As TextBox
  Dim var_3A4 As Variant
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_14393B0: On Error Goto loc_1439D8D
  loc_14393B7: var_92 = CByte(0) 'Byte
  loc_14393C4: Set var_A0 = Me.TXT
  loc_14393CA: Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_14393DB: Set var_A8 = Me.Label
  loc_14393E1: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_AC)
  loc_1439414: If (Proc_183_19_E8E68C(var_A4, var_AC.Caption) = 0) Then
  loc_1439417:   Exit Sub
  loc_1439418: End If
  loc_1439421: Set var_A0 = Me.TXT
  loc_1439427: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_A4)
  loc_1439438: Set var_A8 = Me.Label
  loc_143943E: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_AC)
  loc_1439471: If (Proc_183_19_E8E68C(var_A4, var_AC.Caption) = 0) Then
  loc_1439474:   Exit Sub
  loc_1439475: End If
  loc_143947E: Set var_A0 = Me.TXT
  loc_1439484: Call 0.Method_TopCtrl1_UnknownEvent_160 (4, var_A4)
  loc_1439495: Set var_A8 = Me.Label
  loc_143949B: Call 0.Method_TopCtrl1_UnknownEvent_160 (4, var_AC)
  loc_14394A3: var_B4 = var_AC.Caption
  loc_14394CE: If (Proc_183_19_E8E68C(var_A4, var_B4) = 0) Then
  loc_14394D1:   Exit Sub
  loc_14394D2: End If
  loc_14394DE: Set var_A0 = Me.TXT
  loc_14394E4: Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_A4)
  loc_14394EC: var_B8 = var_A4.Text
  loc_1439500: Set var_A8 = Me.TXT
  loc_1439506: Call 0.Method_TopCtrl1_UnknownEvent_160 (3, var_AC, var_B4)
  loc_143950E: var_B8 = var_AC.Text
  loc_143952A: If (var_A4 <> var_B4) Then
  loc_1439533:   Call 0.Method_arg_50 (var_B4)
  loc_1439541:   var_E8 = CVar(var_B4) 'String
  loc_1439554:   MsgBox("Password Not Confirmed", &H10, var_E8, var_108, var_128)
  loc_1439564:   Exit Sub
  loc_1439565: End If
  loc_143956E: unk_436489.BeginTrans var_12C
  loc_1439577: var_92 = CByte(1) 'Byte
  loc_143957F: Set var_A0 = Me.topCtrl1
  loc_1439585: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_143959E: If (CStr() = "Add") Then
  loc_14395AA:   Set var_A0 = Me.TXT
  loc_14395B0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_14395BF:   Proc_183_9_EAB2F0(var_E8, CVar(var_A4))
  loc_14395D3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_AC)
  loc_14395DB:   var_13C = CVar(var_AC) 'Address
  loc_14395F2:   Call Proc_153_30_EEFAD0(CStr(RTrim(var_13C)), var_B8)
  loc_1439600:   Proc_183_9_EAB2F0(var_16C, CVar(var_B8))
  loc_1439611:   Set var_B0 = Me.TXT
  loc_1439617:   Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_190)
  loc_1439634:   var_1C4 = "1"
  loc_1439654:   Proc_183_9_EAB2F0(var_204, IIf((var_190.Text = "Yes"), var_1C4, "0"))
  loc_1439662:   Set var_238 = Me.TXT
  loc_1439668:   Call 0.Method_TopCtrl1_UnknownEvent_160 (4, var_23C)
  loc_1439677:   Proc_183_9_EAB2F0(var_25C, CVar(var_23C))
  loc_1439688:   Set var_290 = Me.TXT
  loc_143968E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (5, var_294)
  loc_14396CB:   Proc_183_9_EAB2F0(var_308, IIf((var_294.Text = "Yes"), "Y", "N"))
  loc_14396DC:   Set var_33C = Me.Label1
  loc_14396E2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_340)
  loc_1439724:   var_214 = "INSERT INTO USERMAST (user_name,PASSWD,Label,shortname,ActiveYN,backcolor) VALUES (" & var_E8 & "," & var_16C & "," & var_204 
  loc_143974D:   var_338 = var_214 & "," & var_25C & "," & var_308 & "," 
  loc_143976F:   unk_436489.Execute CStr(var_338 & CVar(var_340.BackColor) & ")"), var_3A4, -1
  loc_14397F2:   Set var_A0 = Me.TXT
  loc_14397F8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, "Insert into userpermission (username,CompCode,Site_Code,LogSite_Code) values (", var_204)
  loc_1439807:   Proc_183_9_EAB2F0(var_E8, CVar(var_A4), -1)
  loc_1439827:   Proc_6_17_EAAE40(var_13C, MemVar_1F95128, Me.TXT & var_E8 & ",")
  loc_1439847:   Proc_6_17_EAAE40(var_16C, MemVar_1F95070)
  loc_1439867:   Proc_6_17_EAAE40(var_1C4, MemVar_1F95078)
  loc_1439886:   unk_436489.Execute CStr(var_3A8 & var_13C & "," & var_16C & "," & var_1C4 & ")"), var_A4, 
  loc_14398B7: Else
  loc_14398BB:   Set var_A0 = Me.topCtrl1
  loc_14398C1:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14398DA:   If (CStr() = "Edit") Then
  loc_14398E6:     Set var_A0 = Me.TXT
  loc_14398EC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_14398FB:     Proc_183_9_EAB2F0(var_E8, CVar(var_A4))
  loc_1439909:     Set var_A8 = Me.TXT
  loc_143990F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_AC)
  loc_143992E:     Call Proc_153_30_EEFAD0(CStr(RTrim(CVar(var_AC))), var_B8)
  loc_1439936:     var_15C = CVar(var_B8) 'String
  loc_143993C:     Proc_183_9_EAB2F0(var_16C, var_15C)
  loc_143994D:     Set var_B0 = Me.TXT
  loc_1439953:     Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_190)
  loc_1439990:     Proc_183_9_EAB2F0(var_204, IIf((var_190.Text = "Yes"), "1", "0"))
  loc_143999E:     Set var_238 = Me.TXT
  loc_14399A4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (4, var_23C)
  loc_14399B3:     Proc_183_9_EAB2F0(var_25C, CVar(var_23C))
  loc_14399C4:     Set var_290 = Me.Label1
  loc_14399CA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_294)
  loc_14399E3:     Set var_33C = Me.TXT
  loc_14399E9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (5, var_340)
  loc_1439A26:     Proc_183_9_EAB2F0(var_338, IIf((var_340.Text = "Yes"), "Y", "N"))
  loc_1439A37:     Set var_3A8 = Me.TXT
  loc_1439A3D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_3AC)
  loc_1439A98:     var_28C = "UPDATE USERMAST SET user_name=" & var_E8 & ",PASSWD=" & var_16C & ",Label=" & var_204 & ",shortname=" & var_25C & ",BackColor=" 
  loc_1439ADD:     unk_436489.Execute CStr(var_28C & CVar(var_294.BackColor) & ",ActiveYN=" & var_338 & " where user_name='" & CVar(var_3AC.Text) & "'"), var_3F0, -1
  loc_1439B4F:   End If
  loc_1439B4F: End If
  loc_1439B6A: Set var_A0 = Me.TXT
  loc_1439B70: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, "DELETE FROM User2 WHERE User_Name=", var_15C)
  loc_1439B7F: Proc_183_9_EAB2F0(var_E8, CVar(var_A4), -1)
  loc_1439BB1: unk_436489.Execute CStr(var_A8 & var_E8 & " AND Comp_Code='" & CVar(MemVar_1F95128) & "'"), var_3F4, var_A4
  loc_1439BDE: var_C8 = "INSERT INTO User2 (User_Name,Comp_Code,Param_Str) VALUES ("
  loc_1439BEC: Set var_A0 = Me.TXT
  loc_1439BF2: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, var_C8)
  loc_1439C01: Proc_183_9_EAB2F0(var_E8, CVar(var_A4), var_15C)
  loc_1439C09: var_108 = -1 & var_E8 
  loc_1439C0D: var_F8 = ",'"
  loc_1439C12: var_128 = var_A8 & var_E8 & var_F8 
  loc_1439C33: unk_436489.Execute CStr(var_128 & CVar(MemVar_1F95128) & "','*')"), var_A8, 
  loc_1439C59: unk_436489.CommitTrans
  loc_1439C62: var_92 = CByte(0) 'Byte
  loc_1439C71: Me.Requery -1
  loc_1439C7A: Set var_A0 = Me.topCtrl1
  loc_1439C80: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1439C88: var_B4 = CStr()
  loc_1439C99: If (var_B4 = "Add") Then
  loc_1439CB9:   Set var_A0 = Me.TXT
  loc_1439CBF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, var_B4, "SearchCode ='")
  loc_1439CC7:   0 = var_A4.Text
  loc_1439CD0:   var_B8 = 1 & var_B4
  loc_1439CE0:   Me.Find var_B8 & "'", var_C8, 
  loc_1439CF5:   Call TopCtrl1_UnknownEvent_A()
  loc_1439CFA:   Exit Sub
  loc_1439CFE: Else
  loc_1439D1A:   Set var_A0 = Me.TXT
  loc_1439D20:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, "User_Name=")
  loc_1439D2F:   Proc_183_9_EAB2F0(var_E8, CVar(var_A4), 0)
  loc_1439D37:   var_108 = 1 & var_E8 
  loc_1439D45:   Me.Find CStr(var_108), var_F8, 
  loc_1439D59: End If
  loc_1439D6E: var_B4 = "INI"
  loc_1439D7C: Call Proc_153_34_FA3904(Proc_5_1_100EC1C(var_B4, Me))
  loc_1439D87: Call Proc_153_32_12A9540(global_64)
  loc_1439D8C: Exit Sub
  loc_1439D8D: ' Referenced from: 14393B0
  loc_1439D96: If (CInt(var_92) = 1) Then
  loc_1439D9F:   unk_436489.RollbackTrans
  loc_1439DA4: End If
  loc_1439DAC: Set var_A0 = Err()
  loc_1439DB2: Call 0.Method_arg_2C (var_B4)
  loc_1439DBD: Call 0.Method_arg_50 (var_B8)
  loc_1439DD9: MsgBox(CVar(var_B4), &H10, CVar(var_B8), var_108, var_128)
  loc_1439DEC: Exit Sub
End Sub

Private Sub Label1_Click(Index As Integer) 'E98BEC
  'Data Table: 436470
  Dim var_88 As CommonDialog
  Dim arg_20 As Variant
  Dim var_A4 As Label
  loc_E98B78: Set var_88 = Me.topCtrl1
  loc_E98B7E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E98B97: If (CStr() <> "Browse") Then
  loc_E98BA4:   arg_20 = Me.CDLG._Action
  loc_E98BCC:   Set var_A0 = Me.Label1
  loc_E98BD2:   Call 0.Method_Label1_Click0 (Index, var_A4)
  loc_E98BDA:   var_A4.BackColor = CLng(Me.CDLG.Color)
  loc_E98BEB: End If
  loc_E98BEB: Exit Sub
End Sub

Private Sub Form_Load() '11436E8
  'Data Table: 436470
  Dim var_D4 As String
  Dim unk_436489 As Connection15
  Dim var_90 As Variant
  Dim var_B0 As Variant
  loc_1143360: On Error Goto loc_11436AA
  loc_114336A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_114337B: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_114338C: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_114339D: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_11433AE: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_11433BF: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_11433D0: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_11433E1: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_11433F2: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_1143403: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_1143414: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_114342E: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_114343C: Set var_8C = MemVar_1F95044
  loc_114344B: Call 0.Method_Form_Load8 (var_8C)
  loc_1143461: Me.Recordset20.Clone
  loc_114347B: Call 0.Method_Form_LoadC (var_8C, -1)
  loc_1143495: Me.Recordset20.Clone
  loc_11434A0: Set var_90 = var_8C
  loc_11434AF: Call 0.Method_arg_50 (var_90, -1)
  loc_11434C6: var_B0 = Ucase(MemVar_1F950C8)
  loc_11434D9: If (var_B0 = "SA") Then
  loc_11434F2:   Me.Connection15.Execute "select user_name as searchcode,User_Name,PASSWD,SHORTNAME,Label,ActiveYN,backcolor FROM USERMAST ORDER BY USER_NAME", var_B0, -1
  loc_1143503:   Set global_64 = var_8C
  loc_1143514: Else
  loc_1143528:   var_D4 = "select user_name as searchcode,User_Name,PASSWD,SHORTNAME,Label,ActiveYN,backcolor FROM USERMAST where user_name='" & MemVar_1F950C8
  loc_1143538:   unk_436489.Execute var_D4 & "' ORDER BY USER_NAME", var_B0, -1
  loc_1143549:   Set global_64 = var_8C
  loc_114355E: End If
  loc_1143564: If (MemVar_1F950B8 <> 1) Then
  loc_1143572:   Set var_8C = Me.TXT
  loc_1143578:   Call 0.Method_Form_Load0 (5, var_90, 0, var_8C)
  loc_1143580:   var_90.Visible = var_8C
  loc_114359D:   Call 0.Method_Form_Load0 (1, var_90, 0)
  loc_11435A5:   var_90.Visible = Me.TXT
  loc_11435BC:   Set var_8C = Me.Label
  loc_11435C2:   Call 0.Method_Form_Load0 (6, var_90)
  loc_11435CA:   var_90.Visible = False
  loc_11435E1:   Set var_8C = Me.Label
  loc_11435E7:   Call 0.Method_Form_Load0 (7, var_90)
  loc_11435EF:   var_90.Visible = False
  loc_1143606:   Set var_8C = Me.Label
  loc_114360C:   Call 0.Method_Form_Load0 (1, var_90)
  loc_1143614:   var_90.Visible = False
  loc_114362B:   Set var_8C = Me.Label
  loc_1143631:   Call 0.Method_Form_Load0 (5, var_90)
  loc_1143639:   var_90.Visible = False
  loc_1143645: End If
  loc_1143667: Proc_183_1_F5BEA0(Me, CStr(-2147483643))
  loc_1143682: Set var_8C = Me
  loc_114368B: var_D4 = "INI"
  loc_1143699: Call Proc_153_34_FA3904(Proc_5_1_100EC1C(var_D4, var_8C, global_64), CStr(&HC00000))
  loc_11436A4: Call Proc_153_32_12A9540(var_8C)
  loc_11436A9: Exit Sub
  loc_11436AA: ' Referenced from: 1143360
  loc_11436B2: Set var_8C = Err()
  loc_11436B8: Call 0.Method_arg_2C (var_D4)
  loc_11436D1: MsgBox(CVar(var_D4), &H10, var_D0, var_EC, var_10C)
  loc_11436E4: Exit Sub
End Sub

Private Sub Form_Resize() 'ED8898
  'Data Table: 436470
  Dim var_8C As Label
  loc_ED87F6: Call 0.Method_arg_50 (var_88)
  loc_ED8808: Me.LblFormCaption.Caption = var_88
  loc_ED8821: Me.LblFormCaption.Left = CDbl(0)
  loc_ED882D: Set var_A0 = Me.topCtrl1
  loc_ED8833: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED8840: Set var_8C = Me.topCtrl1
  loc_ED8846: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED8860: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED887B: Call 0.Method_arg_100 (var_B8)
  loc_ED888D: Me.LblFormCaption.Width = var_B8
  loc_ED8895: Exit Sub
  loc_ED8896: BranchFVar -1793
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EEE1B8
  'Data Table: 436470
  Dim var_C8 As Variant
  Dim var_CC As String
  Dim unk_436489 As Connection15
  Dim var_A8 As Variant
  loc_EEE0F8: On Error Goto loc_EEE17A
  loc_EEE106: Set global_96 = Nothing
  loc_EEE113: If (Cancel = 0) Then
  loc_EEE121:   Set global_64 = Nothing
  loc_EEE128: End If
  loc_EEE145: Proc_183_9_EAB2F0(var_A8, MemVar_1F950C8, "select name as form_name,user1.* from user1 left join USER_module on USER_module.srno=user1.srno where user_name=")
  loc_EEE14D: var_C8 = var_EC & var_A8 
  loc_EEE151: var_CC = CStr(var_C8)
  loc_EEE15B: unk_436489.Execute var_CC, -1, var_88
  loc_EEE166: MemVar_1F95068 = var_88
  loc_EEE179: Exit Sub
  loc_EEE17A: ' Referenced from: EEE0F8
  loc_EEE182: Set var_88 = Err()
  loc_EEE188: Call 0.Method_arg_2C (var_CC)
  loc_EEE1A1: MsgBox(CVar(var_CC), &H10, var_C8, var_EC, var_FC)
  loc_EEE1B4: Exit Sub
End Sub

Private Sub Form_Activate() 'E8CE7C
  'Data Table: 436470
  loc_E8CE18: On Error Goto loc_E8CE40
  loc_E8CE21: Call 0.Method_arg_1C0 (var_88)
  loc_E8CE31: If (var_88 <> "INI") Then
  loc_E8CE3A:   Call 0.Method_arg_1C4 (vbNullString)
  loc_E8CE3F: End If
  loc_E8CE3F: Exit Sub
  loc_E8CE40: ' Referenced from: E8CE18
  loc_E8CE48: Set var_8C = Err()
  loc_E8CE4E: Call 0.Method_arg_2C (var_88)
  loc_E8CE67: MsgBox(CVar(var_88), &H10, var_BC, var_DC, var_FC)
  loc_E8CE7A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8C468
  'Data Table: 436470
  loc_E8C404: On Error Goto loc_E8C422
  loc_E8C419: Proc_183_40_F3169C(Me, KeyCode)
  loc_E8C421: Exit Sub
  loc_E8C422: ' Referenced from: E8C404
  loc_E8C42A: Set var_8C = Err()
  loc_E8C430: Call 0.Method_arg_2C (var_90)
  loc_E8C451: MsgBox(CVar(var_90), &H40, "Information", var_E0, var_100)
  loc_E8C464: Exit Sub
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'E1B074
  'Data Table: 436470
  Dim KeyAscii As Integer
  Dim MemVar_4013A2 As Integer
  loc_E1B068: If (KeyAscii = CInt(&HD)) Then
  loc_E1B06D:   KeyAscii = 0
  loc_E1B070: End If
  loc_E1B070: Exit Sub
  loc_E1B071: MemVar_4013A2 = KeyAscii
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EB87C4
  'Data Table: 436470
  Dim var_92 As Integer
  loc_EB873C: On Error Goto loc_EB8789
  loc_EB8745: Call 0.Method_arg_1C4 (vbNullString)
  loc_EB874A: Call Grid_Hide()
  loc_EB8759: Set var_88 = Me.TXT
  loc_EB875F: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EB876D: Proc_183_28_E216B0(var_8C)
  loc_EB877C: var_92 = Index
  loc_EB8785: If (var_92 = 1) Then
  loc_EB8788: End If
  loc_EB8788: Exit Sub
  loc_EB8789: ' Referenced from: EB873C
  loc_EB8791: Set var_88 = Err()
  loc_EB8797: Call 0.Method_arg_2C (var_98, var_92)
  loc_EB87B0: MsgBox(CVar(var_98), &H10, var_C8, var_E8, var_108)
  loc_EB87C3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '100AA50
  'Data Table: 436470
  Dim var_86 As Integer
  Dim var_E8 As Variant
  Dim var_110 As TextBox
  loc_100A854: On Error Goto loc_100AA12
  loc_100A863: If (KeyCode = 6) Then
  loc_100A866: End If
  loc_100A882: If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = 5)) Then
  loc_100A8BC:   If (MsgBox("Save Record ?", 4, "Save Data", var_E8, var_108) = 6) Then
  loc_100A8C9:     Set var_10C = Me.TXT
  loc_100A8CF:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_110)
  loc_100A8DD:     Proc_6_73_E23294(var_110)
  loc_100A8E9:     Call TopCtrl1_UnknownEvent_16()
  loc_100A8EE:   End If
  loc_100A8F1: Else
  loc_100A90D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = 6)) Then
  loc_100A919:     Set var_10C = Me.TXT
  loc_100A91F:     Call 0.Method_Txt_KeyDown0 (2, var_110)
  loc_100A92E:     var_C8 = Ucase(CVar(var_110))
  loc_100A93F:     Set var_114 = Me.TXT
  loc_100A945:     Call 0.Method_Txt_KeyDown0 (6, var_118)
  loc_100A94D:     var_E8 = CVar(var_118) 'Address
  loc_100A954:     var_108 = Ucase(var_E8)
  loc_100A970:     If (var_C8 = var_108) Then
  loc_100A97E:       Set var_10C = Me.TXT
  loc_100A984:       Call 0.Method_Txt_KeyDown0 (2, var_110)
  loc_100A98C:       var_110.Enabled = True
  loc_100A9A3:       Set var_10C = Me.TXT
  loc_100A9A9:       Call 0.Method_Txt_KeyDown0 (3, var_110)
  loc_100A9B1:       var_110.Enabled = True
  loc_100A9BD:     End If
  loc_100A9C3:     Proc_183_29_E53794(Shift, arg_14)
  loc_100A9CB:   Else
  loc_100A9E0:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_100A9E9:       Proc_183_29_E53794(Shift, arg_14)
  loc_100A9EE:     End If
  loc_100A9EE:   End If
  loc_100A9EE: End If
  loc_100A9F8: If (CLng(Shift) = &H26) Then
  loc_100AA01:   Proc_183_30_E53D10(Shift, arg_14)
  loc_100AA06: End If
  loc_100AA0C: Call 0.Method_arg_1C4 (vbNullString)
  loc_100AA11: Exit Sub
  loc_100AA12: ' Referenced from: 100A854
  loc_100AA1A: Set var_10C = Err()
  loc_100AA20: Call 0.Method_arg_2C (var_12C)
  loc_100AA39: MsgBox(CVar(var_12C), &H10, var_C8, var_E8, var_108)
  loc_100AA4C: Exit Sub
  loc_100AA4D: var_86 = 
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '109C028
  'Data Table: 436470
  Dim var_86 As Integer
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_109BD6B: Proc_6_58_E06050(arg_10)
  loc_109BD73: var_86 = KeyAscii
  loc_109BD7C: If (var_86 = 1) Then
  loc_109BDA8:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_109BDB8:     Set var_CC = Me.TXT
  loc_109BDBE:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_109BDC6:     var_D0.Text = "Yes"
  loc_109BDD5:   Else
  loc_109BDFE:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_109BE0E:       Set var_CC = Me.TXT
  loc_109BE14:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_109BE1C:       var_D0.Text = "No"
  loc_109BE28:     End If
  loc_109BE28:   End If
  loc_109BE2A:   arg_10 = 0
  loc_109BE30: Else
  loc_109BE36:   If (var_86 = 5) Then
  loc_109BE45:     Set var_CC = Me.TXT
  loc_109BE4B:     Call 0.Method_Txt_KeyPress0 (0, var_D0, var_D4)
  loc_109BE53:     arg_10 = var_D0.Text
  loc_109BE6A:     If (var_D4 <> "SA") Then
  loc_109BE96:       If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_109BEA6:         Set var_CC = Me.TXT
  loc_109BEAC:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_109BEB4:         var_D0.Text = "Yes"
  loc_109BEC3:       Else
  loc_109BEEC:         If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_109BEFC:           Set var_CC = Me.TXT
  loc_109BF02:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_109BF0A:           var_D0.Text = "No"
  loc_109BF16:         End If
  loc_109BF16:       End If
  loc_109BF19:     Else
  loc_109BF25:       Set var_CC = Me.TXT
  loc_109BF2B:       Call 0.Method_Txt_KeyPress0 (0, var_D0)
  loc_109BF4A:       If (var_D0.Text = "SA") Then
  loc_109BF76:         If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_109BF86:           Set var_CC = Me.TXT
  loc_109BF8C:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_109BF94:           var_D0.Text = "Yes"
  loc_109BFA3:         Else
  loc_109BFCC:           If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_109BFDC:             Set var_CC = Me.TXT
  loc_109BFE2:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_109BFEA:             var_D0.Text = "Yes"
  loc_109BFF9:           Else
  loc_109C006:             Set var_CC = Me.TXT
  loc_109C00C:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_109C014:             var_D0.Text = "Yes"
  loc_109C020:           End If
  loc_109C020:         End If
  loc_109C020:       End If
  loc_109C020:     End If
  loc_109C022:     arg_10 = 0
  loc_109C025:   End If
  loc_109C025: End If
  loc_109C025: Exit Sub
  loc_109C026: Set var_7CC = arg_10
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E779EC
  'Data Table: 436470
  loc_E7799C: On Error Goto loc_E779AF
  loc_E779AB: If (KeyCode = 1) Then
  loc_E779AE: End If
  loc_E779AE: Exit Sub
  loc_E779AF: ' Referenced from: E7799C
  loc_E779B7: Set var_8C = Err()
  loc_E779BD: Call 0.Method_arg_2C (var_90)
  loc_E779D6: MsgBox(CVar(var_90), &H10, var_C0, var_E0, var_100)
  loc_E779E9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E98A68
  'Data Table: 436470
  loc_E989FC: On Error Goto loc_E98A2A
  loc_E98A09: Set var_88 = Me.TXT
  loc_E98A0F: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E98A1D: Proc_183_27_E23198(var_8C)
  loc_E98A29: Exit Sub
  loc_E98A2A: ' Referenced from: E989FC
  loc_E98A32: Set var_88 = Err()
  loc_E98A38: Call 0.Method_arg_2C (var_94)
  loc_E98A51: MsgBox(CVar(var_94), &H10, var_C4, var_E4, var_104)
  loc_E98A64: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1151574
  'Data Table: 436470
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_90 As Variant
  Dim var_CC As String
  Dim unk_436489 As Connection15
  Dim var_C4 As Recordset15
  Dim var_144 As Field20
  Dim var_110 As String
  Dim arg_10 As Integer
  loc_11511E8: On Error Goto loc_1151538
  loc_11511EE: var_86 = Cancel
  loc_11511F7: If (var_86 = 0) Then
  loc_1151205:   If (CurrMode = "Edit") Then
  loc_1151212:     Set var_8C = Me.TXT
  loc_1151218:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1151232:     var_C0 = Ucase(Trim(CVar(var_90)))
  loc_1151247:     Set var_C4 = Me.TXT
  loc_115124D:     Call 0.Method_Txt_Validate0 (Cancel, var_C8, var_CC)
  loc_1151255:     var_C0 = var_C8.Tag
  loc_1151263:     var_EC = Trim(CVar(var_CC))
  loc_115126E:     var_FC = Ucase(var_EC)
  loc_1151290:     If (var_86 = var_FC) Then
  loc_1151293:       Exit Sub
  loc_1151294:     End If
  loc_1151294:   End If
  loc_11512AB:   If ((CurrMode <> "Display") And (CurrMode <> "Find")) Then
  loc_11512BA:     Set var_8C = Me.TXT
  loc_11512C0:     Call 0.Method_Txt_Validate0 (0, var_90)
  loc_11512DC:     Set var_C4 = Me.TXT
  loc_11512E2:     Call 0.Method_Txt_Validate0 (0, var_C8)
  loc_1151306:     If (var_90.Text <> var_C8.Tag) Then
  loc_1151333:       Set var_8C = Me.TXT
  loc_1151339:       Call 0.Method_Txt_Validate0 (0, var_90, "select count(*) FROM userMAST WHERE USER_NAME = ", var_EC, -1)
  loc_1151348:       var_B0 = Trim(CVar(var_90))
  loc_1151353:       Proc_183_9_EAB2F0(var_C0, var_B0, var_C4, var_C8)
  loc_115135B:       var_DC = 0 & var_C0 
  loc_115135F:       var_CC = CStr(var_DC)
  loc_1151369:       unk_436489.Execute var_CC, var_144, var_FC
  loc_1151371:        = var_C4.Fields
  loc_1151379:        = var_C8.Item()
  loc_1151381:        = var_144.Value
  loc_11513AE:       If (var_FC > 0) Then
  loc_11513CE:         Set var_8C = Me.Label
  loc_11513D4:         Call 0.Method_Txt_Validate0 (0, var_90, var_CC, "* ")
  loc_11513DC:         0 = var_90.Caption
  loc_11513EF:         MsgBox(CVar(var_B0 & var_CC & " Already Exist *"), var_C0, var_DC, , )
  loc_115141A:         Set var_8C = Me.TXT
  loc_1151420:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1151428:         var_90.Text = vbNullString
  loc_1151436:         arg_10 = &HFF
  loc_1151439:         Exit Sub
  loc_115143A:       End If
  loc_115143A:     End If
  loc_115143A:   End If
  loc_115143D: Else
  loc_1151443:   If (var_86 = 1) Then
  loc_1151446:     GoTo loc_1151537
  loc_1151449:   End If
  loc_115144F:   If (var_86 = 3) Then
  loc_115145F:     Set var_8C = Me.TXT
  loc_1151465:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_115146D:     var_110 = var_90.Text
  loc_1151481:     Set var_C4 = Me.TXT
  loc_1151487:     Call 0.Method_Txt_Validate0 (2, var_C8, var_CC)
  loc_115148F:     var_110 = var_C8.Text
  loc_11514AB:     If (arg_10 <> var_CC) Then
  loc_11514CB:       Set var_8C = Me.Label
  loc_11514D1:       Call 0.Method_Txt_Validate0 (0, var_90, var_CC, "* ")
  loc_11514D9:       0 = var_90.Caption
  loc_11514EC:       MsgBox(CVar(var_B0 & var_CC & " Already Exist *"), var_C0, var_DC, , )
  loc_1151517:       Set var_8C = Me.TXT
  loc_115151D:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1151525:       var_90.Text = vbNullString
  loc_1151533:       arg_10 = &HFF
  loc_1151536:       Exit Sub
  loc_1151537:       ' Referenced from:   1151446
  loc_1151537:     End If
  loc_1151537:   End If
  loc_1151537: End If
  loc_1151537: Exit Sub
  loc_1151538: ' Referenced from: 11511E8
  loc_1151540: Set var_8C = Err()
  loc_1151546: Call 0.Method_arg_2C (var_CC)
  loc_115155F: MsgBox(CVar(var_CC), &H10, var_B0, var_C0, var_DC)
  loc_1151572: Exit Sub
End Sub

Public Function CurrModeGet() '436BB8
  CurrModeGet = CurrMode
End Function

Public Sub CurrModePut(Value) '436BC7
  CurrMode = Value
End Sub

Public Sub Grid_Hide() 'E6AAD8
  'Data Table: 436470
  loc_E6AA98: On Error Goto loc_E6AA9C
  loc_E6AA9B: Exit Sub
  loc_E6AA9C: ' Referenced from: E6AA98
  loc_E6AAA4: Set var_88 = Err()
  loc_E6AAAA: Call 0.Method_arg_2C (var_8C)
  loc_E6AAC3: MsgBox(CVar(var_8C), &H10, var_BC, var_DC, var_FC)
  loc_E6AAD6: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'ED92DC
  'Data Table: 436470
  Dim unk_436489 As Connection15
  Dim var_B0 As Variant
  loc_ED9246: On Error Goto loc_ED9299
  loc_ED926D: unk_436489.Execute "select * FROM USERMAST where user_name ='" & MyValue & "' ORDER BY USER_NAME", var_B0, -1
  loc_ED927E: Set global_64 = var_B4
  loc_ED9293: Call Proc_153_32_12A9540(var_B4)
  loc_ED9298: Exit Sub
  loc_ED9299: ' Referenced from: ED9246
  loc_ED92C4: MsgBox(Err().Name, &H40, "Information", var_E8, var_108)
  loc_ED92D7: Exit Sub
  loc_ED92D8: Exit Sub
End Sub

Public Sub Proc_153_30_EEFAD0(arg_C) 'EEFAD0
  'Data Table: 436470
  Dim var_90 As Integer
  Dim var_B0 As Integer
  Dim var_10C As Variant
  loc_EEFA15: Randomize(var_B0)
  loc_EEFA36: var_90 = CInt(Int(((CDbl(&H63) * Rnd(var_B0)) + CDbl(1))))
  loc_EEFA46: var_B0 = Chr(CLng((var_90 + &H1B)))
  loc_EEFA5F: For var_B8 = 1 To CInt(Len(arg_C)): var_8E = var_B8 'Integer
  loc_EEFA9B:   var_EC = Chr(CLng(((Asc(CStr(Mid(arg_C, CLng(var_8E), 1))) + &H1B) + var_90)))
  loc_EEFAA3:   var_10C = (CVar(CStr(1)) + var_EC)
  loc_EEFAA8:   var_8C = CStr(var_10C)
  loc_EEFABC: Next var_B8 'Integer
  loc_EEFAC4: var_88 = var_8C
  loc_EEFAC7: Proc_153_30_EEFAD0 = 
  loc_EEFACD: ThisVCallHidden
End Sub

Public Sub Proc_153_31_EFEE54(arg_C) 'EFEE54
  'Data Table: 436470
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EFED8E: If (arg_C = vbNullString) Then
  loc_EFED94:   var_88 = vbNullString
  loc_EFED97:   Proc_153_31_EFEE54 = 
  loc_EFED9D: End If
  loc_EFEDC1: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EFEDE0: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EFEE03:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EFEE1F:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EFEE27:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EFEE2C:   var_8C = CStr(var_108)
  loc_EFEE40: Next var_B8 'Integer
  loc_EFEE48: var_88 = var_8C
  loc_EFEE4B: Proc_153_31_EFEE54 = 
End Sub

Public Sub Proc_153_32_12A9540
  'Data Table: 436470
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_C4 As String
  Dim var_C0 As Variant
  Dim var_A8 As Variant
  Dim var_D4 As String
  Dim var_1BE As Integer
  Dim var_BC As Fields15
  Dim var_E4 As Variant
  Dim var_1C0 As Integer
  Dim var_114 As Variant
  Dim var_1B8 As TextBox
  Dim var_F4 As Variant
  Dim var_88 As Recordset15
  loc_12A8F50: On Error Goto loc_12A9505
  loc_12A8F57: Set var_88 = New 
  loc_12A8F60: Proc_183_45_E5CCA8(global_64)
  loc_12A8F7C: If (Me.Recordset15.RecordCount <= 0) Then
  loc_12A8F7F:   Call Proc_153_33_F624BC()
  loc_12A8F87: Else
  loc_12A8FBE:   Set var_BC = Me.TXT
  loc_12A8FC4:   Call 0.Method_Proc_153_32_12A95400 (0, var_C0)
  loc_12A8FCC:   var_C0.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("USER_NAME")))
  loc_12A9017:   Set var_BC = Me.TXT
  loc_12A901D:   Call 0.Method_Proc_153_32_12A95400 (0, var_C0)
  loc_12A9025:   var_C0.Tag = Proc_183_2_E5AE94(CVar(Me.Fields.Item("USER_NAME")))
  loc_12A90A5:   Set var_BC = Me.TXT
  loc_12A90AB:   Call 0.Method_Proc_153_32_12A95400 (1, var_C0)
  loc_12A90B3:   var_C0.Text = CStr(IIf((Me.Fields.Item("Label").Value = "1"), "Yes", "No"))
  loc_12A9185:   Call Proc_153_31_EFEE54(CStr(RTrim(IIf(IsNull(CVar(Me.Fields.Item("PASSWD"))), vbNullString, CVar(Me.Fields.Item("PASSWD"))))))
  loc_12A91BA:   Set var_1B4 = Me.TXT
  loc_12A91C0:   Call 0.Method_Proc_153_32_12A95400 (2, var_1B8, CStr(IIf(IsNull(CVar(Me.Fields.Item("PASSWD"))), vbNullString, CVar(var_160))))
  loc_12A91C8:   var_1B8.Text = var_160
  loc_12A9225:   var_1BE = IsNull(CVar(Me.Fields.Item("PASSWD")))
  loc_12A9242:   var_C0 = Me.Fields.Item("PASSWD")
  loc_12A924A:   var_E4 = CVar(var_C0) 'Address
  loc_12A9253:   var_1C0 = IsNull(var_E4)
  loc_12A9278:   var_114 = CVar(Me.Fields.Item("PASSWD")) 'Address
  loc_12A92AC:   Call Proc_153_31_EFEE54(CStr(RTrim(IIf(var_1C0, vbNullString, var_114))))
  loc_12A92E1:   Set var_1B4 = Me.TXT
  loc_12A92E7:   Call 0.Method_Proc_153_32_12A95400 (3, var_1B8, CStr(IIf(var_1BE, vbNullString, CVar(var_160))), var_160)
  loc_12A92EF:   var_1B8.Text = var_1C0
  loc_12A9358:   Set var_BC = Me.TXT
  loc_12A935E:   Call 0.Method_Proc_153_32_12A95400 (4, var_C0, Proc_183_2_E5AE94(CVar(Me.Fields.Item("ShortName")), var_1BE))
  loc_12A9366:   var_C0.Text = var_1C0
  loc_12A9394:   var_A8 = Me.Fields.Item("ActiveYN")
  loc_12A93A5:   var_C4 = Proc_183_2_E5AE94(CVar(var_A8))
  loc_12A93B6:   If (var_C4 <> "N") Then
  loc_12A93C5:     Set var_94 = Me.TXT
  loc_12A93CB:     Call 0.Method_Proc_153_32_12A95400 (5, var_A8)
  loc_12A93D3:     var_A8.Text = "Yes"
  loc_12A93E2:   Else
  loc_12A93EE:     Set var_94 = Me.TXT
  loc_12A93F4:     Call 0.Method_Proc_153_32_12A95400 (5, var_A8)
  loc_12A93FC:     var_A8.Text = "No"
  loc_12A9408:   End If
  loc_12A9414:   Set var_94 = Me.TXT
  loc_12A941A:   Call 0.Method_Proc_153_32_12A95400 (6, var_A8)
  loc_12A9422:   var_A8.Text = vbNullString
  loc_12A9457:   Proc_6_39_E7D3A0(var_E4, CVar(Me.Fields.Item("BackColor")))
  loc_12A946A:   Set var_BC = Me.Label1
  loc_12A9470:   Call 0.Method_Proc_153_32_12A95400 (&HE, var_C0)
  loc_12A9478:   var_C0.BackColor = CLng(var_E4)
  loc_12A94CE:   var_D4 = "SHAPE {select ID,MAX(Module_Name) AS MainMenu from USER_MODULE GROUP BY ID} APPEND ({select ID,NAME,USER_module.srno,'Allow' = CASE WHEN right(param_str,1) = 'P' THEN 'ü' else ''  END , 'Ins' = CASE WHEN left(param_str,1) = 'A' THEN 'ü' else ''  END ,'Edit' = CASE WHEN substring(param_str,2,1) = 'E' THEN 'ü' else ''  END,'Del' = CASE WHEN substring(param_str,3,1) = 'D' THEN 'ü' else ''  END,flag,CODE,NAME from USER_MODULE left join user1 on user1.srno=USER_module.srno where user_name='"
  loc_12A94D6:   var_E4 = var_D4 & Me.Fields.Item("USER_NAME").Value 
  loc_12A94DF:   var_F4 = var_E4 & "' or user_name is null} RELATE ID TO ID) AS AA" 
  loc_12A94E7:   var_88.Open var_F4, CVar(MemVar_1F95044), -1
  loc_12A94FC: End If
  loc_12A9501: Set var_88 = Nothing
  loc_12A9504: Exit Sub
  loc_12A9505: ' Referenced from: 12A8F50
  loc_12A950D: Set var_94 = Err()
  loc_12A9513: Call 0.Method_arg_2C (var_C4, -1)
  loc_12A952C: MsgBox(CVar(var_C4), &H10, var_E4, var_F4, var_114)
  loc_12A953F: Exit Sub
End Sub

Public Sub Proc_153_33_F624BC
  'Data Table: 436470
  Dim var_8C As TextBox
  loc_F62398: On Error Goto loc_F62480
  loc_F623A7: Set var_88 = Me.TXT
  loc_F623AD: Call 0.Method_Proc_153_33_F624BC0 (0, var_8C)
  loc_F623B5: var_8C.Text = vbNullString
  loc_F623CD: Set var_88 = Me.TXT
  loc_F623D3: Call 0.Method_Proc_153_33_F624BC0 (1, var_8C)
  loc_F623DB: var_8C.Text = vbNullString
  loc_F623F3: Set var_88 = Me.TXT
  loc_F623F9: Call 0.Method_Proc_153_33_F624BC0 (2, var_8C)
  loc_F62401: var_8C.Text = vbNullString
  loc_F62419: Set var_88 = Me.TXT
  loc_F6241F: Call 0.Method_Proc_153_33_F624BC0 (3, var_8C)
  loc_F62427: var_8C.Text = vbNullString
  loc_F6243F: Set var_88 = Me.TXT
  loc_F62445: Call 0.Method_Proc_153_33_F624BC0 (4, var_8C)
  loc_F6244D: var_8C.Text = vbNullString
  loc_F62465: Set var_88 = Me.TXT
  loc_F6246B: Call 0.Method_Proc_153_33_F624BC0 (6, var_8C)
  loc_F62473: var_8C.Text = vbNullString
  loc_F6247F: Exit Sub
  loc_F62480: ' Referenced from: F62398
  loc_F62488: Set var_88 = Err()
  loc_F6248E: Call 0.Method_arg_2C (var_90)
  loc_F624A7: MsgBox(CVar(var_90), &H10, var_C0, var_E0, var_100)
  loc_F624BA: Exit Sub
End Sub

Public Sub Proc_153_34_FA3904(arg_C) 'FA3904
  'Data Table: 436470
  Dim var_8C As TextBox
  loc_FA3788: On Error Goto loc_FA38C9
  loc_FA3797: Set var_88 = Me.TXT
  loc_FA379D: Call 0.Method_Proc_153_34_FA39040 (0, var_8C)
  loc_FA37A5: var_8C.Enabled = arg_C
  loc_FA37BD: Set var_88 = Me.TXT
  loc_FA37C3: Call 0.Method_Proc_153_34_FA39040 (1, var_8C)
  loc_FA37CB: var_8C.Enabled = arg_C
  loc_FA37E3: Set var_88 = Me.TXT
  loc_FA37E9: Call 0.Method_Proc_153_34_FA39040 (2, var_8C)
  loc_FA37F1: var_8C.Enabled = arg_C
  loc_FA3809: Set var_88 = Me.TXT
  loc_FA380F: Call 0.Method_Proc_153_34_FA39040 (3, var_8C)
  loc_FA3817: var_8C.Enabled = arg_C
  loc_FA382F: Set var_88 = Me.TXT
  loc_FA3835: Call 0.Method_Proc_153_34_FA39040 (4, var_8C)
  loc_FA383D: var_8C.Enabled = arg_C
  loc_FA3855: Set var_88 = Me.TXT
  loc_FA385B: Call 0.Method_Proc_153_34_FA39040 (5, var_8C)
  loc_FA3863: var_8C.Enabled = arg_C
  loc_FA387B: Set var_88 = Me.TXT
  loc_FA3881: Call 0.Method_Proc_153_34_FA39040 (6, var_8C)
  loc_FA3889: var_8C.Enabled = arg_C
  loc_FA38A0: If (CurrMode = "Find") Then
  loc_FA38AE:   Set var_88 = Me.TXT
  loc_FA38B4:   Call 0.Method_Proc_153_34_FA39040 (0, var_8C)
  loc_FA38BC:   var_8C.Enabled = True
  loc_FA38C8: End If
  loc_FA38C8: Exit Sub
  loc_FA38C9: ' Referenced from: FA3788
  loc_FA38D1: Set var_88 = Err()
  loc_FA38D7: Call 0.Method_arg_2C (var_90)
  loc_FA38F0: MsgBox(CVar(var_90), &H10, var_C0, var_E0, var_100)
  loc_FA3903: Exit Sub
End Sub
