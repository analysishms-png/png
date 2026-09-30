VERSION 5.00
Begin VB.Form RsTableMast
  Caption = "Table Master"
  BackColor = &HFFC0C0&
  ForeColor = &HFF0000&
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
  ClientWidth = 7995
  ClientHeight = 8790
  BeginProperty Font
    Name = "MS Sans Serif"
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
    Width = 7995
    Height = 450
    TabIndex = 11
  End
  Begin DataGrid DGRest
    Left = 5880
    Top = 3465
    Width = 4230
    Height = 1725
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 1890
    Width = 4215
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 2205
    Width = 1875
    Height = 285
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 2520
    Width = 1875
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 15
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
    Left = 6120
    Top = 2040
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 7
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 10
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
    Left = 4080
    Top = 5400
    Width = 2790
    Height = 285
    TabIndex = 9
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
    Left = 705
    Top = 5400
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
  Begin Label LblName
    Caption = "Outlet Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 1920
    Top = 1890
    Width = 1185
    Height = 240
    TabIndex = 5
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
    Caption = "Table Code"
    Index = 0
    ForeColor = &HC00000&
    Left = 1920
    Top = 2205
    Width = 1095
    Height = 240
    TabIndex = 4
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
  Begin Label LblLedgerAc
    Caption = "Table Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 1920
    Top = 2520
    Width = 1155
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

Attribute VB_Name = "RsTableMast"


Private Sub TopCtrl1_UnknownEvent_A 'F087C0
  'Data Table: 44B334
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_F086D4: On Error Goto loc_F087B8
  loc_F086E4: Me.LblUser.Caption = vbNullString
  loc_F086F9: Me.LblLDt.Caption = vbNullString
  loc_F08724: Call Proc_40_26_E7AB44(Proc_5_1_100EC1C("ADD", Me))
  loc_F0872F: Call Proc_40_27_EB50AC(global_52)
  loc_F08742: Set var_88 = Me.Txt
  loc_F08748: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94)
  loc_F08767: If (var_94.Text = vbNullString) Then
  loc_F08775:   Set var_88 = Me.Txt
  loc_F0877B:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2))
  loc_F08783:   var_94.SetFocus
  loc_F08792: Else
  loc_F0879D:   Set var_88 = Me.Txt
  loc_F087A3:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_F087AB:   var_94.SetFocus
  loc_F087B7: End If
  loc_F087B7: Exit Sub
  loc_F087B8: ' Referenced from: F086D4
  loc_F087B8: Proc_6_60_E63754(var_94)
  loc_F087BD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC701C
  'Data Table: 44B334
  loc_EC6F84: On Error Goto loc_EC7014
  loc_EC6FBE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC6FCD:   Set var_110 = Me
  loc_EC6FE4:   Call Proc_40_26_E7AB44(Proc_5_1_100EC1C("INI", var_110))
  loc_EC6FEF:   Call Proc_40_28_1244B38(global_52)
  loc_EC6FF4:   Call Proc_40_31_E87420()
  loc_EC6FFC: Else
  loc_EC7002:   Call 0.Method_arg_1E8 (var_110)
  loc_EC700A:   Call var_110.SetFocus
  loc_EC7013: End If
  loc_EC7013: Exit Sub
  loc_EC7014: ' Referenced from: EC6F84
  loc_EC7014: Proc_6_60_E63754()
  loc_EC7019: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '100140C
  'Data Table: 44B334
  Dim unk_44B34B As Connection15
  Dim var_96 As Integer
  Dim Me As Recordset15
  Dim var_120 As String
  Dim var_124 As Fields15
  Dim var_F8 As Variant
  Dim var_118 As Variant
  loc_100121C: On Error Goto loc_10013B3
  loc_100122D: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_1001230:   Exit Sub
  loc_1001231: End If
  loc_1001268: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_1001274:   unk_44B34B.BeginTrans var_11C
  loc_100127B:   var_96 = &HFF
  loc_100128F:   var_94 = Me.Bookmark 'Variant
  loc_10012A7:   var_120 = "Delete From RoomMast Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_10012DE:   var_F8 = CVar(var_120 & "' or LOGSITE_CODE='HO') and Code='") & Me.Fields.Item("Code").Value 
  loc_10012E7:   var_118 = var_F8 & "' And Type='TB'" 
  loc_10012F5:   unk_44B34B.Execute CStr(var_118), var_13C, -1
  loc_100131D:   unk_44B34B.CommitTrans
  loc_1001324:   var_96 = 0
  loc_1001332:   Me.Requery -1
  loc_1001352:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_100135F:     Me.Bookmark = var_94
  loc_1001367:   Else
  loc_100137B:     If (Me.EOF = 0) Then
  loc_1001384:       Me.MoveLast
  loc_1001389:     End If
  loc_1001389:   End If
  loc_1001389:   Call Proc_40_28_1244B38(var_96, var_140)
  loc_10013AA:   Proc_5_0_1107AD0(&HFF, Me, global_52)
  loc_10013B2: End If
  loc_10013B2: Exit Sub
  loc_10013B3: ' Referenced from: 100121C
  loc_10013B9: If (var_96 = &HFF) Then
  loc_10013C2:   unk_44B34B.RollbackTrans
  loc_10013C7: End If
  loc_10013CF: Set var_124 = Err()
  loc_10013D5: Call 0.Method_arg_2C (var_120, 0)
  loc_10013F6: MsgBox(CVar(var_120), &H30, " Deletion Error ", var_F8, var_118)
  loc_1001409: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F7A60C
  'Data Table: 44B334
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_F7A4B8: On Error Goto loc_F7A603
  loc_F7A4C8: Me.LblUser.Caption = vbNullString
  loc_F7A4DD: Me.LblLDt.Caption = vbNullString
  loc_F7A4F3: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F7A4F6:   Exit Sub
  loc_F7A4F7: End If
  loc_F7A51A: Call Proc_40_26_E7AB44(Proc_5_1_100EC1C("EDIT", Me))
  loc_F7A533: Set var_88 = Me.Txt
  loc_F7A539: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F7A54C: global_64 = var_94.Text
  loc_F7A568: Set var_88 = Me.Txt
  loc_F7A56E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F7A581: global_60 = var_94.Text
  loc_F7A59C: Set var_88 = Me.Txt
  loc_F7A5A2: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F7A5AA: var_94.Enabled = False
  loc_F7A5C3: Set var_88 = Me.Txt
  loc_F7A5C9: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F7A5D1: var_94.Enabled = False
  loc_F7A5E8: Set var_88 = Me.Txt
  loc_F7A5EE: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F7A5F6: var_94.SetFocus
  loc_F7A602: Exit Sub
  loc_F7A603: ' Referenced from: F7A4B8
  loc_F7A603: Proc_6_60_E63754(global_52)
  loc_F7A608: Exit Sub
  loc_F7A609: StAryRecMove
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BAD4
  'Data Table: 44B334
  loc_E1BAC9: Me.Global.Unload Me
  loc_E1BAD1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F28E48
  'Data Table: 44B334
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F28D48: On Error Goto loc_F28DE0
  loc_F28D54: var_88 = Me.RecordCount
  loc_F28D62: If (var_88 <= 0) Then
  loc_F28D6B:   var_B8 = "Information"
  loc_F28D86:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F28D96:   Exit Sub
  loc_F28D97: End If
  loc_F28DA5: MemVar_1F950E4 = "Select RoomMast.Code As SearchCode,RoomMast.code,RoomMast.Name FROM RoomMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type='TB' Order by RoomMast.Name"
  loc_F28DB2: MemVar_1F95120 = Me
  loc_F28DB9: var_10C = "1000,1200"
  loc_F28DBF: Proc_6_126_F1C850(var_10C)
  loc_F28DDA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F28DDF: Exit Sub
  loc_F28DE0: ' Referenced from: F28D48
  loc_F28DE8: Set var_110 = Err()
  loc_F28DEE: Call 0.Method_arg_1C (var_88)
  loc_F28DFF: If (var_88 <> 0) Then
  loc_F28E0A:   Set var_110 = Err()
  loc_F28E10:   Call 0.Method_arg_2C (var_10C)
  loc_F28E31:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F28E44: End If
  loc_F28E44: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E36608
  'Data Table: 44B334
  loc_E365F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36600: Call Proc_40_28_1244B38(global_52)
  loc_E36605: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E364E8
  'Data Table: 44B334
  loc_E364D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E364E0: Call Proc_40_28_1244B38(global_52)
  loc_E364E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E36548
  'Data Table: 44B334
  loc_E36538: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36540: Call Proc_40_28_1244B38(global_52)
  loc_E36545: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E365A8
  'Data Table: 44B334
  loc_E36598: Proc_5_0_1107AD0(&HFF, Me)
  loc_E365A0: Call Proc_40_28_1244B38(global_52)
  loc_E365A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10A7AB4
  'Data Table: 44B334
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_44B34B As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_10A77FC: On Error Goto loc_10A7A6A
  loc_10A7813: var_A0 = "select ROOMMAST.*,DEPART.NAME AS RestName FROM (RoomMast LEFT JOIN DEPART ON DEPART.CODE=ROOMMAST.RESTCODE) Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_10A7823: unk_44B34B.Execute var_A0 & "' or RoomMast.LOGSITE_CODE='HO') and Type='TB' order by ROOMMAST.Name", var_C4, -1
  loc_10A782E: Set var_88 = var_C8
  loc_10A7844: var_CC = var_88.RecordCount
  loc_10A7852: If (var_CC = 0) Then
  loc_10A786E:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_10A787E:   Exit Sub
  loc_10A787F: End If
  loc_10A7895: Set var_C8 = var_88 
  loc_10A78A1: var_12E = CreateFieldDefFile(var_C8, MemVar_1F950B4 & "\TableMast.ttx")
  loc_10A78AB: Set var_88 = var_C8
  loc_10A78B1: var_B4 = CVar(var_12E) 'Integer
  loc_10A78B4: var_98 = var_B4 'Variant
  loc_10A78D0: var_A0 = MemVar_1F950B4 & "\TableMast.RPT"
  loc_10A78D9: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_10A78E4: MemVar_1F951E8 = var_C8
  loc_10A78FF: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_10A7907: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10A7913: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_10A792C:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10A7934:   Call 0.Method_arg_20 (var_138)
  loc_10A793C:   Call 0.Method_arg_30 (var_A0)
  loc_10A7982:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10A798E:     Call 0.Method_arg_50 (var_A0)
  loc_10A7997:     var_A4 = "'" & var_A0
  loc_10A79B1:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10A79B9:     Call 0.Method_arg_20 (var_138)
  loc_10A79C1:     Call 0.Method_arg_38 (var_A4 & "'")
  loc_10A79D6:   End If
  loc_10A79D9: Next var_132 'Integer
  loc_10A79F7: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_10A79FF: Call 0.Method_arg_2C (var_DC)
  loc_10A7A0D: Call 0.Method_arg_150 (var_FC)
  loc_10A7A18: Call 0.Method_arg_50 (var_A0)
  loc_10A7A22: Set var_138 = Nothing
  loc_10A7A3C: Set var_C8 = MemVar_1F951E8 
  loc_10A7A48: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_10A7A53: MemVar_1F951E8 = var_C8
  loc_10A7A66: Set var_88 = Nothing
  loc_10A7A69: Exit Sub
  loc_10A7A6A: ' Referenced from: 10A77FC
  loc_10A7A72: Set var_C8 = Err()
  loc_10A7A78: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10A7A83: Call 0.Method_arg_50 (var_A4)
  loc_10A7A9F: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_10A7AB2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '123BB10
  'Data Table: 44B334
  Dim unk_44B34B As Connection15
  Dim var_9C As String
  Dim var_94 As TextBox
  Dim var_B8 As String
  Dim var_C4 As String
  Dim var_BC As TextBox
  Dim var_D0 As TextBox
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_12C As String
  Dim var_13C As Variant
  Dim var_1A0 As Variant
  Dim Me As Recordset15
  Dim var_C0 As String
  loc_123B634: On Error Goto loc_123BABD
  loc_123B63B: var_86 = CByte(0) 'Byte
  loc_123B64A: Set var_90 = Me.Txt
  loc_123B650: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_123B679: If (Proc_6_27_EA61EC(var_94, "Code") = 0) Then
  loc_123B683:   Call Txt_GotFocus()
  loc_123B688:   Exit Sub
  loc_123B689: End If
  loc_123B694: Set var_90 = Me.Txt
  loc_123B69A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_123B6C3: If (Proc_6_27_EA61EC(var_94, "Name") = 0) Then
  loc_123B6CD:   Call Txt_GotFocus()
  loc_123B6D2:   Exit Sub
  loc_123B6D3: End If
  loc_123B6DE: Set var_90 = Me.Txt
  loc_123B6E4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, CInt(1))
  loc_123B70D: If (Proc_6_27_EA61EC(var_94, "Outlet Name") = 0) Then
  loc_123B717:   Call Txt_GotFocus()
  loc_123B71C:   Exit Sub
  loc_123B71D: End If
  loc_123B720: Call Proc_40_29_10DDAD0(var_9E, CInt(2))
  loc_123B72B: If (var_9E = &HFF) Then
  loc_123B72E:   Exit Sub
  loc_123B72F: End If
  loc_123B738: unk_44B34B.BeginTrans var_A4
  loc_123B741: var_86 = CByte(1) 'Byte
  loc_123B749: Set var_90 = Me.TopCtrl1
  loc_123B74F: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(CInt(0))
  loc_123B757: var_9C = CStr(var_94)
  loc_123B768: If (var_9C = "Add") Then
  loc_123B789:   Set var_90 = Me.Txt
  loc_123B78F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "Insert Into RoomMast(Type,Code,Name,RoomCat,InclCount,RestCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('TB','")
  loc_123B797:   var_1A0 = var_94.Text
  loc_123B7A0:   var_B8 = -1 & var_9C
  loc_123B7A7:   var_C4 = var_B8 & "','"
  loc_123B7B8:   Set var_98 = Me.Txt
  loc_123B7BE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_BC, var_C0)
  loc_123B7C6:   var_C4 = var_BC.Text
  loc_123B7E7:   Set var_CC = Me.Txt
  loc_123B7ED:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_D0)
  loc_123B832:   Proc_6_7_F26918(var_FC, Date)
  loc_123B843:   var_13C = CVar(var_1A4 & var_C0 & "','TABLE','N','" & var_D0.Tag & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") & var_FC & ",'A','" 
  loc_123B864:   unk_44B34B.Execute CStr(var_13C & CVar(MemVar_1F95078) & "')"), , 
  loc_123B8AD: Else
  loc_123B8CB:   Set var_90 = Me.Txt
  loc_123B8D1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_9C, "UPDATE RoomMast SET Name='")
  loc_123B8D9:   var_1B4 = var_94.Text
  loc_123B8E2:   var_B8 = -1 & var_9C
  loc_123B8E9:   var_C4 = var_B8 & "',RestCode='"
  loc_123B8FA:   Set var_98 = Me.Txt
  loc_123B900:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC, var_C0)
  loc_123B908:   var_C4 = var_BC.Tag
  loc_123B934:   var_10C = CVar(var_1A4 & var_C0 & "',SITE_CODE='" & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_123B945:   Proc_6_7_F26918(var_FC, Date)
  loc_123B94D:   var_11C = var_10C & var_FC 
  loc_123B951:   var_12C = " ,U_AE='E' WHERE Code='"
  loc_123B968:   Set var_CC = Me.Txt
  loc_123B96E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D0)
  loc_123B998:   unk_44B34B.Execute CStr(var_11C & var_12C & CVar(var_D0.Text) & "' and Type='TB'"), , 
  loc_123B9DA: End If
  loc_123B9E0: unk_44B34B.CommitTrans
  loc_123B9E9: var_86 = CByte(0) 'Byte
  loc_123B9F8: Me.Requery -1
  loc_123BA1C: Set var_90 = Me.Txt
  loc_123BA22: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "Code='")
  loc_123BA2A: 0 = var_94.Text
  loc_123BA43: Me.Find 1 & var_9C & "'", var_12C, 
  loc_123BA5C: Set var_90 = Me.TopCtrl1
  loc_123BA62: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_123BA7B: If (CStr() = "Add") Then
  loc_123BA7E:   Call TopCtrl1_UnknownEvent_A()
  loc_123BA83:   Exit Sub
  loc_123BA84: End If
  loc_123BA99: var_9C = "INI"
  loc_123BAA7: Call Proc_40_26_E7AB44(Proc_5_1_100EC1C(var_9C, Me))
  loc_123BAB2: Call Proc_40_31_E87420(global_52)
  loc_123BAB7: Call Proc_40_28_1244B38()
  loc_123BABC: Exit Sub
  loc_123BABD: ' Referenced from: 123B634
  loc_123BAC6: If (CInt(var_86) = 1) Then
  loc_123BACF:   unk_44B34B.RollbackTrans
  loc_123BAD4: End If
  loc_123BADC: Set var_90 = Err()
  loc_123BAE2: Call 0.Method_arg_2C (var_9C)
  loc_123BAFB: MsgBox(CVar(var_9C), &H10, var_FC, var_10C, var_11C)
  loc_123BB0E: Exit Sub
End Sub

Private Sub Form_Load() '104B64C
  'Data Table: 44B334
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim var_CC As String
  Dim unk_44B34B As Connection15
  Dim var_DC As Variant
  loc_104B3FC: On Error Goto loc_104B606
  loc_104B40E: Me.LblUser.Left = CDbl(13500)
  loc_104B425: Me.LblUser.Top = CDbl(7800)
  loc_104B43C: Me.LblLDt.Top = CDbl(8160)
  loc_104B453: Me.LblLDt.Left = CDbl(13500)
  loc_104B462: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_104B475: Set var_8C = Me.Txt
  loc_104B47B: Call 0.Method_Form_Load0 (CInt(2), var_90)
  loc_104B49A: Me.DGRest.Left = CVar(var_90.Left)
  loc_104B4B6: Set var_B8 = Me.Txt
  loc_104B4BC: Call 0.Method_Form_Load0 (CInt(2), var_BC)
  loc_104B4D7: Set var_8C = Me.Txt
  loc_104B4DD: Call 0.Method_Form_Load0 (CInt(2), var_90)
  loc_104B4F5: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_104B504: Me.DGRest.Top = CVar(var_90.Left)
  loc_104B52A: var_C8 = "SELECT RoomMast.Code,RoomMast.Name,RestCode,D.Name as RestName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_104B53A: unk_44B34B.Execute var_C8 & "' or RoomMast.LOGSITE_CODE='HO') and RoomMast.type='TB' ORDER BY RoomMast.Name", var_DC, -1
  loc_104B57B: var_CC = "Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' aND RestType not in ('Room Service','Banquet') Order by Name"
  loc_104B584: unk_44B34B.Execute var_CC, var_DC, -1
  loc_104B5B3: CVarUnk
  loc_104B5B8: VerifyVarObj
  loc_104B5BE: Set var_8C = Me.DGRest
  loc_104B5C4: LateIdStAd
  loc_104B5DE: Set var_8C = Me
  loc_104B5E7: var_C8 = "INI"
  loc_104B5F5: Call Proc_40_26_E7AB44(Proc_5_1_100EC1C(var_C8, var_8C, var_8C, var_8C), var_8C)
  loc_104B600: Call Proc_40_28_1244B38(var_8C)
  loc_104B605: Exit Sub
  loc_104B606: ' Referenced from: 104B3FC
  loc_104B60E: Set var_8C = Err()
  loc_104B614: Call 0.Method_arg_2C (var_C8)
  loc_104B635: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_104B648: Exit Sub
  loc_104B649: Exit Sub
End Sub

Private Sub Form_Resize() 'ED5D78
  'Data Table: 44B334
  Dim var_8C As Label
  Dim var_4301 As Double
  loc_ED5CD6: Call 0.Method_arg_50 (var_88)
  loc_ED5CE8: Me.LblFormCaption.Caption = var_88
  loc_ED5D01: Me.LblFormCaption.Left = CDbl(0)
  loc_ED5D0D: Set var_A0 = Me.TopCtrl1
  loc_ED5D13: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006()
  loc_ED5D20: Set var_8C = Me.TopCtrl1
  loc_ED5D26: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_ED5D40: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED5D5B: Call 0.Method_arg_100 (var_B8)
  loc_ED5D6D: Me.LblFormCaption.Width = var_B8
  loc_ED5D75: Exit Sub
  loc_ED5D76: var_4301 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E11574
  'Data Table: 44B334
  loc_E1156B: Set global_52 = Nothing
  loc_E11572: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8AA34
  'Data Table: 44B334
  loc_E8A9D0: On Error Goto loc_E8A9F0
  loc_E8A9E7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8A9EF: Exit Sub
  loc_E8A9F0: ' Referenced from: E8A9D0
  loc_E8A9F8: Set var_88 = Err()
  loc_E8A9FE: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8AA1F: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8AA32: Exit Sub
  loc_E8AA33: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '100ACA4
  'Data Table: 44B334
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_100AAB2: Set var_88 = Me.Txt
  loc_100AAB8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_100AAC6: Proc_6_74_E23240(var_8C)
  loc_100AAD2: Call Proc_40_31_E87420(var_8C)
  loc_100AADA: var_92 = Index
  loc_100AAE5: If (var_92 = CInt(2)) Then
  loc_100AAFF:   If (Me.RecordCount > 0) Then
  loc_100AB0D:     Set var_8C = Me.FGPoint
  loc_100AB25:     Proc_6_137_1192FDC(Me.DGRest, global_68, Index)
  loc_100AB33:   End If
  loc_100AB81:   Set var_88 = Me.Txt
  loc_100AB87:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_100AB8F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_100ABA7:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_100ABB7:     Set var_88 = Me.Txt
  loc_100ABBD:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_100ABC5:     var_8C.Tag = vbNullString
  loc_100ABD1:     Exit Sub
  loc_100ABD2:   End If
  loc_100ABDF:   Set var_88 = Me.Txt
  loc_100ABE5:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_100ABED:   var_A0 = var_8C.Text
  loc_100ABFF:   var_B0 = "Name"
  loc_100AC3A:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_100AC43:     Me.MoveFirst
  loc_100AC66:     Set var_88 = Me.Txt
  loc_100AC6C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_100AC74:     0 = var_8C.Text
  loc_100AC8D:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_100ACA2:   End If
  loc_100ACA2: End If
  loc_100ACA2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '100C410
  'Data Table: 44B334
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_100C21E: If (CLng(Shift) = &H1B) Then
  loc_100C221:   Call Proc_40_31_E87420()
  loc_100C226:   Exit Sub
  loc_100C227: End If
  loc_100C22A: var_88 = KeyCode
  loc_100C235: If (var_88 = CInt(2)) Then
  loc_100C255:   Set var_9C = Me.FGPoint
  loc_100C260:   Set var_98 = Nothing
  loc_100C28E:   Proc_6_69_134A630(Me.DGRest, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_100C2FD:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_100C304:     Set var_98 = Me.DGRest
  loc_100C323:     Proc_6_138_106E830(var_98, global_68, KeyCode, Me.FGPoint, 1)
  loc_100C331:   End If
  loc_100C331: End If
  loc_100C34D: If (CBool(Me.DGRest.Visible) = 0) Then
  loc_100C363:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_100C36C:     Proc_6_76_E533C8(Shift, arg_14, var_98)
  loc_100C371:   End If
  loc_100C38F:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(1))) Then
  loc_100C398:     Call Txt_Validate(KeyCode)
  loc_100C3A3:     If (var_86 = 0) Then
  loc_100C3DD:       If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_100C3E0:         Call TopCtrl1_UnknownEvent_16()
  loc_100C3E5:       End If
  loc_100C3E5:       Exit Sub
  loc_100C3E6:     End If
  loc_100C3E9:   Else
  loc_100C3FE:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_100C407:       Proc_6_75_E5335C(Shift, arg_14, var_86)
  loc_100C40C:     End If
  loc_100C40C:   End If
  loc_100C40C: End If
  loc_100C40C: Exit Sub
  loc_100C40D: Get , var_88, 0 'get var_9C bytes
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EDB328
  'Data Table: 44B334
  Dim var_94 As Variant
  loc_EDB27E: Proc_6_133_E7FB08(var_94)
  loc_EDB29B: If (KeyAscii = CInt(2)) Then
  loc_EDB2BA:   If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EDB2E7:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, CInt(Me.DGRest.Visible), "Name")
  loc_EDB319:     Proc_6_138_106E830(Me.DGRest, global_68, KeyAscii, Me.FGPoint)
  loc_EDB327:   End If
  loc_EDB327: End If
  loc_EDB327: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E00F2C
  'Data Table: 44B334
  Dim var_86 As Integer
  loc_E00F27: var_86 = KeyCode
  loc_E00F2A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4FFDC
  'Data Table: 44B334
  loc_E4FFBA: Set var_88 = Me.Txt
  loc_E4FFC0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4FFCE: Proc_6_73_E23294(var_8C)
  loc_E4FFDA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FCDF7C
  'Data Table: 44B334
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_FCDDC3: var_86 = Cancel
  loc_FCDDCE: If (var_86 = CInt(0)) Then
  loc_FCDDD4:   Call Proc_40_29_10DDAD0(var_88)
  loc_FCDDDF:   If (var_88 = &HFF) Then
  loc_FCDDE4:     arg_10 = &HFF
  loc_FCDDE7:     Exit Sub
  loc_FCDDE8:   End If
  loc_FCDDEB: Else
  loc_FCDDF3:   If (var_86 = CInt(1)) Then
  loc_FCDDF9:     Call Proc_40_30_10DC6C0(var_88, arg_10)
  loc_FCDE04:     If (var_88 = &HFF) Then
  loc_FCDE09:       arg_10 = &HFF
  loc_FCDE0C:       Exit Sub
  loc_FCDE0D:     End If
  loc_FCDE10:   Else
  loc_FCDE18:     If (var_86 = CInt(2)) Then
  loc_FCDE69:       Set var_94 = Me.Txt
  loc_FCDE6F:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_FCDE77:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_FCDE8F:       If (arg_10 Or (var_9C = vbNullString)) Then
  loc_FCDE9F:         Set var_94 = Me.Txt
  loc_FCDEA5:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_FCDEAD:         var_98.Tag = vbNullString
  loc_FCDEB9:         Exit Sub
  loc_FCDEBA:       End If
  loc_FCDEF5:       Set var_B0 = Me.Txt
  loc_FCDEFB:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_FCDF03:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FCDF54:       Set var_B0 = Me.Txt
  loc_FCDF5A:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_FCDF62:       var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FCDF78:     End If
  loc_FCDF78:   End If
  loc_FCDF78: End If
  loc_FCDF78: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F4B774
  'Data Table: 44B334
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4B66B: Me.DGRest.Visible = False
  loc_F4B68A: If (Me.RecordCount > 0) Then
  loc_F4B6C9:   Set var_B4 = Me.Txt
  loc_F4B6CF:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4B6D7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4B70A:   var_B0 = Me.Fields.Item("Code")
  loc_F4B729:   Set var_B4 = Me.Txt
  loc_F4B72F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4B737:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4B74D: End If
  loc_F4B758: Set var_A8 = Me.Txt
  loc_F4B75E: Call 0.Method_DGRest_UnknownEvent_90 (CInt(2))
  loc_F4B766: var_B0.SetFocus
  loc_F4B772: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E6F578
  'Data Table: 44B334
  loc_E6F536: Proc_6_153_E91D24(Me.DGRest, arg_14)
  loc_E6F54D: Set var_8C = Me.FGPoint
  loc_E6F569: Proc_6_138_106E830(Me.DGRest, global_68, CInt(2))
  loc_E6F577: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E36BA4
  'Data Table: 44B334
  loc_E36B98: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E36B9B:   Call DGRest_UnknownEvent_9()
  loc_E36BA0: End If
  loc_E36BA0: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC5794
  'Data Table: 44B334
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC570A: On Error Goto loc_EC574F
  loc_EC5713: Me.MoveFirst
  loc_EC572D: var_8C = "code='" & MyValue
  loc_EC573D: Me.Find var_8C & "'", 0, 1
  loc_EC5749: Call Proc_40_28_1244B38(var_A0)
  loc_EC574E: Exit Sub
  loc_EC574F: ' Referenced from: EC570A
  loc_EC5757: Set var_A4 = Err()
  loc_EC575D: Call 0.Method_arg_2C (var_8C)
  loc_EC577E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC5791: Exit Sub
  loc_EC5792: Exit Sub
End Sub

Public Sub Proc_40_26_E7AB44(arg_C) 'E7AB44
  'Data Table: 44B334
  Dim var_98 As TextBox
  loc_E7AAF2: Set var_8C = Me.Txt
  loc_E7AAF8: Call 0.Method_Proc_40_26_E7AB44C (var_8E, var_86)
  loc_E7AB08: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7AB1E:   Set var_8C = Me.Txt
  loc_E7AB24:   Call 0.Method_Proc_40_26_E7AB440 (CInt(var_86), var_98)
  loc_E7AB2C:   var_98.Enabled = arg_C
  loc_E7AB3B: Next var_92 'Byte
  loc_E7AB41: Exit Sub
End Sub

Public Sub Proc_40_27_EB50AC
  'Data Table: 44B334
  Dim var_98 As TextBox
  loc_EB5016: global_60 = vbNullString
  loc_EB5028: Set var_8C = Me.Txt
  loc_EB502E: Call 0.Method_Proc_40_27_EB50ACC (var_8E, var_86)
  loc_EB503E: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB504B:   If (var_86 <> 2) Then
  loc_EB505E:     Set var_8C = Me.Txt
  loc_EB5064:     Call 0.Method_Proc_40_27_EB50AC0 (CInt(var_86), var_98)
  loc_EB506C:     var_98.Text = vbNullString
  loc_EB5088:     Set var_8C = Me.Txt
  loc_EB508E:     Call 0.Method_Proc_40_27_EB50AC0 (CInt(var_86), var_98)
  loc_EB5096:     var_98.Tag = vbNullString
  loc_EB50A2:   End If
  loc_EB50A5: Next var_92 'Byte
  loc_EB50AB: Exit Sub
End Sub

Public Sub Proc_40_28_1244B38
  'Data Table: 44B334
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_44B34B As Connection15
  Dim var_88 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_1244634: On Error Goto loc_1244AF5
  loc_124464E: If (Me.RecordCount > 0) Then
  loc_12446A7:   unk_44B34B.Execute CStr("Select U_Name,U_AE,U_EntDt From roommast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1
  loc_12446B2:   Set var_88 = var_11C
  loc_1244706:   var_11C = var_88.Fields
  loc_124476F:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_12447B4:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_124482E:   var_120 = var_88.Fields.Item("U_AE")
  loc_1244847:   var_118 = "entdt : "
  loc_1244852:   var_F4 = "Last Update : "
  loc_124488F:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_120)) = "E"), var_F4, var_118))
  loc_12448D4:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_124490C: End If
  loc_1244912: Proc_183_45_E5CCA8(global_52)
  loc_124492E: If (Me.RecordCount <= 0) Then
  loc_1244931:   Call Proc_40_27_EB50AC()
  loc_1244939: Else
  loc_124496D:   global_56 = CStr(Me.Fields.Item("Name").Value)
  loc_12449BA:   Set var_11C = Me.Txt
  loc_12449C0:   Call 0.Method_Proc_40_28_1244B380 (CInt(0), var_120)
  loc_12449C8:   var_120.Text = CStr(Me.Fields.Item("Code").Value)
  loc_1244A1A:   Set var_11C = Me.Txt
  loc_1244A20:   Call 0.Method_Proc_40_28_1244B380 (CInt(1), var_120)
  loc_1244A28:   var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1244A77:   Set var_11C = Me.Txt
  loc_1244A7D:   Call 0.Method_Proc_40_28_1244B380 (CInt(2), var_120)
  loc_1244A85:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RestName")))
  loc_1244AC4:   var_F8 = Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")))
  loc_1244AD2:   Set var_11C = Me.Txt
  loc_1244AD8:   Call 0.Method_Proc_40_28_1244B380 (CInt(2), var_120)
  loc_1244AE0:   var_120.Tag = var_F8
  loc_1244AF4: End If
  loc_1244AF4: Exit Sub
  loc_1244AF5: ' Referenced from: 1244634
  loc_1244AFD: Set var_90 = Err()
  loc_1244B03: Call 0.Method_arg_2C (var_F8)
  loc_1244B24: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_1244B37: Exit Sub
End Sub

Public Sub Proc_40_29_10DDAD0
  'Data Table: 44B334
  Dim var_F0 As Variant
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim var_B8 As TextBox
  Dim unk_44B34B As Connection15
  Dim var_E0 As Fields15
  Dim var_F4 As Field20
  loc_10DD800: Set var_8C = Me.TopCtrl1
  loc_10DD806: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_10DD81F: If (CStr() = "Add") Then
  loc_10DD828:   var_F0 = 0
  loc_10DD84C:   var_AC = "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type='TB' And Restcode='"
  loc_10DD85D:   Set var_8C = Me.Txt
  loc_10DD863:   Call 0.Method_Proc_40_29_10DDAD00 (CInt(2), var_A4, var_A8, var_AC, var_9C, -1)
  loc_10DD88C:   Set var_B4 = Me.Txt
  loc_10DD892:   Call 0.Method_Proc_40_29_10DDAD00 (CInt(0), var_B8, var_BC, var_E0 & var_A8 & "' and COde='")
  loc_10DD89A:   var_F0 = var_B8.Text
  loc_10DD8B3:   unk_44B34B.Execute var_F4 & var_BC & "'", var_104, 
  loc_10DD8BB:    = var_A4.Tag.Fields
  loc_10DD8C3:    = var_E0.Item()
  loc_10DD8CB:    = var_F4.Value
  loc_10DD906:   If (var_104 > 0) Then
  loc_10DD914:     var_104 = "Information"
  loc_10DD924:     var_9C = "Duplicate  Name"
  loc_10DD92A:     MsgBox(var_9C, &H40, var_104, var_124, var_144)
  loc_10DD945:     Set var_8C = Me.Txt
  loc_10DD94B:     Call 0.Method_Proc_40_29_10DDAD00 (CInt(1))
  loc_10DD953:     var_A4.SetFocus
  loc_10DD964:     Proc_40_29_10DDAD0 = &HFF
  loc_10DD96A:   End If
  loc_10DD96D: Else
  loc_10DD973:   var_F0 = 0
  loc_10DD997:   var_AC = "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type='TB' And Restcode='"
  loc_10DD9A8:   Set var_8C = Me.Txt
  loc_10DD9AE:   Call 0.Method_Proc_40_29_10DDAD00 (CInt(2), var_A4, var_A8, var_AC, var_9C, -1)
  loc_10DD9D7:   Set var_B4 = Me.Txt
  loc_10DD9DD:   Call 0.Method_Proc_40_29_10DDAD00 (CInt(0), var_B8, var_BC, var_E0 & var_A8 & "'  And COde='")
  loc_10DD9E5:   var_F0 = var_B8.Text
  loc_10DDA0F:   unk_44B34B.Execute var_F4 & var_BC & "' And Code<>'" & global_64 & "'", var_104, var_A4
  loc_10DDA17:    = var_A4.Tag.Fields
  loc_10DDA1F:    = var_E0.Item()
  loc_10DDA27:    = var_F4.Value
  loc_10DDA66:   If (var_104 > 0) Then
  loc_10DDA8A:     MsgBox("Duplicate  Name", &H40, "Information", var_124, var_144)
  loc_10DDAA5:     Set var_8C = Me.Txt
  loc_10DDAAB:     Call 0.Method_Proc_40_29_10DDAD00 (CInt(1))
  loc_10DDAB3:     var_A4.SetFocus
  loc_10DDAC4:     Proc_40_29_10DDAD0 = &HFF
  loc_10DDACA:   End If
  loc_10DDACA: End If
  loc_10DDACA: Proc_40_29_10DDAD0 = var_A4
End Sub

Public Sub Proc_40_30_10DC6C0
  'Data Table: 44B334
  Dim var_F0 As Variant
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim var_B8 As TextBox
  Dim unk_44B34B As Connection15
  Dim var_E0 As Fields15
  Dim var_F4 As Field20
  loc_10DC3F0: Set var_8C = Me.TopCtrl1
  loc_10DC3F6: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_10DC40F: If (CStr() = "Add") Then
  loc_10DC418:   var_F0 = 0
  loc_10DC43C:   var_AC = "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type='TB' And Restcode='"
  loc_10DC44D:   Set var_8C = Me.Txt
  loc_10DC453:   Call 0.Method_Proc_40_30_10DC6C00 (CInt(2), var_A4, var_A8, var_AC, var_9C, -1)
  loc_10DC47C:   Set var_B4 = Me.Txt
  loc_10DC482:   Call 0.Method_Proc_40_30_10DC6C00 (CInt(1), var_B8, var_BC, var_E0 & var_A8 & "' And Name='")
  loc_10DC48A:   var_F0 = var_B8.Text
  loc_10DC4A3:   unk_44B34B.Execute var_F4 & var_BC & "'", var_104, 
  loc_10DC4AB:    = var_A4.Tag.Fields
  loc_10DC4B3:    = var_E0.Item()
  loc_10DC4BB:    = var_F4.Value
  loc_10DC4F6:   If (var_104 > 0) Then
  loc_10DC504:     var_104 = "Information"
  loc_10DC514:     var_9C = "Duplicate  Name"
  loc_10DC51A:     MsgBox(var_9C, &H40, var_104, var_124, var_144)
  loc_10DC535:     Set var_8C = Me.Txt
  loc_10DC53B:     Call 0.Method_Proc_40_30_10DC6C00 (CInt(1))
  loc_10DC543:     var_A4.SetFocus
  loc_10DC554:     Proc_40_30_10DC6C0 = &HFF
  loc_10DC55A:   End If
  loc_10DC55D: Else
  loc_10DC563:   var_F0 = 0
  loc_10DC587:   var_AC = "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type='TB' And Restcode='"
  loc_10DC598:   Set var_8C = Me.Txt
  loc_10DC59E:   Call 0.Method_Proc_40_30_10DC6C00 (CInt(2), var_A4, var_A8, var_AC, var_9C, -1)
  loc_10DC5C7:   Set var_B4 = Me.Txt
  loc_10DC5CD:   Call 0.Method_Proc_40_30_10DC6C00 (CInt(1), var_B8, var_BC, var_E0 & var_A8 & "' And Name='")
  loc_10DC5D5:   var_F0 = var_B8.Text
  loc_10DC5FF:   unk_44B34B.Execute var_F4 & var_BC & "' And Name<>'" & global_60 & "'", var_104, var_A4
  loc_10DC607:    = var_A4.Tag.Fields
  loc_10DC60F:    = var_E0.Item()
  loc_10DC617:    = var_F4.Value
  loc_10DC656:   If (var_104 > 0) Then
  loc_10DC67A:     MsgBox("Duplicate  Name", &H40, "Information", var_124, var_144)
  loc_10DC695:     Set var_8C = Me.Txt
  loc_10DC69B:     Call 0.Method_Proc_40_30_10DC6C00 (CInt(1))
  loc_10DC6A3:     var_A4.SetFocus
  loc_10DC6B4:     Proc_40_30_10DC6C0 = &HFF
  loc_10DC6BA:   End If
  loc_10DC6BA: End If
  loc_10DC6BA: Proc_40_30_10DC6C0 = var_A4
End Sub

Public Sub Proc_40_31_E87420
  'Data Table: 44B334
  loc_E873CC: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E873DE:   Me.DGRest.Visible = False
  loc_E873E6: End If
  loc_E87402: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E87414:   Me.FGPoint.Visible = False
  loc_E8741C: End If
  loc_E8741C: Exit Sub
End Sub
