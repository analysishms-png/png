VERSION 5.00
Begin VB.Form FaGrEnt
  Caption = "Group Accounts Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaGrEnt.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 9675
  ClientHeight = 6525
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9675
    Height = 450
    TabIndex = 23
  End
  Begin DataGrid DGUnderAc
    Left = 2265
    Top = 4200
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin DataGrid DGAcAlias
    Left = 3390
    Top = 3705
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGAcName
    Left = 885
    Top = 4755
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 2460
    Top = 2250
    Width = 1740
    Height = 285
    TabIndex = 6
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
    ToolTipText = "Group behavior"
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    Left = 7215
    Top = 4020
    Width = 2325
    Height = 2370
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 15
      Top = 30
      Width = 2295
      Height = 2310
      TabIndex = 17
    End
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HC00000&
    Left = 2460
    Top = 1935
    Width = 1740
    Height = 285
    TabIndex = 5
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
    ToolTipText = "Group behavior"
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 2460
    Top = 1620
    Width = 4980
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 50
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
    ToolTipText = "Parent Group Account Name"
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 8805
    Top = 2205
    Width = 4980
    Height = 285
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 50
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
    Index = 2
    ForeColor = &HC00000&
    Left = 8805
    Top = 1890
    Width = 4980
    Height = 285
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 50
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
    ToolTipText = "Alias Group Account Name"
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 8805
    Top = 1575
    Width = 4980
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 50
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
    ToolTipText = "Group Account Name (BiLangual)"
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 2460
    Top = 1305
    Width = 4980
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 50
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
    ToolTipText = "Group Account Name"
  End
  Begin Label Label3
    Caption = "Note:- Run Current Balance Updation After Making Changes In Group Accounts"
    BackColor = &H80000005&
    ForeColor = &HFF&
    Left = 945
    Top = 6750
    Width = 11715
    Height = 525
    TabIndex = 26
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 0
    Top = 0
    Width = 2880
    Height = 255
    TabIndex = 25
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
    TabIndex = 24
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HC00000&
    Left = 945
    Top = 9495
    Width = 2790
    Height = 285
    TabIndex = 22
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
    Left = 1050
    Top = 8940
    Width = 2880
    Height = 255
    TabIndex = 21
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
    TabIndex = 20
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
  Begin Label Lbl
    Caption = "Trading A/C"
    Index = 6
    ForeColor = &HC00000&
    Left = 1320
    Top = 2235
    Width = 1125
    Height = 240
    TabIndex = 19
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
  Begin Label Lbl
    Index = 3
    ForeColor = &HC00000&
    Left = 7560
    Top = 1290
    Width = 45
    Height = 240
    TabIndex = 18
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblAliasBiLang
    Caption = "(Hindi)"
    ForeColor = &HC00000&
    Left = 7665
    Top = 2190
    Width = 645
    Height = 270
    Visible = 0   'False
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Comic Sans MS"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNameBiLang
    Caption = "(Hindi)"
    ForeColor = &HC00000&
    Left = 7665
    Top = 1560
    Width = 645
    Height = 270
    Visible = 0   'False
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Comic Sans MS"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Alias Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 7665
    Top = 1875
    Width = 1080
    Height = 240
    Visible = 0   'False
    TabIndex = 10
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
  Begin Label Lbl
    Caption = "Nature"
    Index = 5
    ForeColor = &HC00000&
    Left = 1320
    Top = 1920
    Width = 630
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
  Begin Label Lbl
    Caption = "Under"
    Index = 4
    ForeColor = &HC00000&
    Left = 1320
    Top = 1605
    Width = 570
    Height = 240
    TabIndex = 8
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
  Begin Label Lbl
    Caption = "Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1320
    Top = 1290
    Width = 555
    Height = 240
    TabIndex = 7
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

Attribute VB_Name = "FaGrEnt"


Private Sub TopCtrl1_UnknownEvent_A 'F61AB4
  'Data Table: 4B4150
  Dim var_94 As Variant
  Dim var_8C As Label
  loc_F61988: On Error Goto loc_F61A8C
  loc_F6198B: Call Proc_201_30_EB267C()
  loc_F619A5: var_88 = "ADD"
  loc_F619B3: Call Proc_201_29_F2E584(Proc_5_1_100EC1C(var_88, Me))
  loc_F619CB: Set var_8C = Me.Txt
  loc_F619D1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_F619D9: var_94.Enabled = True
  loc_F619F2: Set var_8C = Me.Txt
  loc_F619F8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_94)
  loc_F61A00: var_94.Enabled = True
  loc_F61A12: global_64 = "N"
  loc_F61A22: Set var_8C = Me.Lbl
  loc_F61A28: Call 0.Method_TopCtrl1_UnknownEvent_A0 (3, var_94)
  loc_F61A30: var_94.Caption = "User Defined"
  loc_F61A47: Set var_8C = Me.Txt
  loc_F61A4D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_F61A55: var_94.SetFocus
  loc_F61A6E: Me.LblUser.Caption = vbNullString
  loc_F61A83: Me.LblLDt.Caption = vbNullString
  loc_F61A8B: Exit Sub
  loc_F61A8C: ' Referenced from: F61988
  loc_F61A92: Call 0.Method_arg_50 (var_88)
  loc_F61AA7: Proc_183_57_104B0BC(var_88, "TopCtrl1_eAdd")
  loc_F61AB3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F6E190
  'Data Table: 4B4150
  Dim var_11C As TextBox
  loc_F6E064: On Error Goto loc_F6E165
  loc_F6E067: Call Proc_201_28_EF3498()
  loc_F6E0A3: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_F6E0BB:   var_10C = "INI"
  loc_F6E0C9:   Call Proc_201_29_F2E584(Proc_5_1_100EC1C(var_10C, Me))
  loc_F6E0D4:   Call Proc_201_31_14D21D0(global_96)
  loc_F6E0E7:   Set var_110 = Me.Txt
  loc_F6E0ED:   Call 0.Method_TopCtrl1_UnknownEvent_BC (var_112, var_86)
  loc_F6E0FD:   For var_116 =  To CByte((var_112 - 1)): CByte(0) = var_116 'Byte
  loc_F6E115:     Set var_110 = Me.Txt
  loc_F6E11B:     Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_F6E123:     var_11C.BackColor = -2147483643
  loc_F6E141:     Set var_110 = Me.Txt
  loc_F6E147:     Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_F6E14F:     var_11C.ForeColor = &HC00000
  loc_F6E15E:   Next var_116 'Byte
  loc_F6E164: End If
  loc_F6E164: Exit Sub
  loc_F6E165: ' Referenced from: F6E064
  loc_F6E16B: Call 0.Method_arg_50 (var_10C)
  loc_F6E173: var_124 = "TopCtrl1_eCancel"
  loc_F6E180: Proc_183_57_104B0BC(var_10C)
  loc_F6E18C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'E0074C
  'Data Table: 4B4150
  loc_E00744: Call Proc_201_33_123011C()
  loc_E00749: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '107E250
  'Data Table: 4B4150
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As String
  loc_107DFB8: On Error Goto loc_107E226
  loc_107DFD2: If (Me.RecordCount > 0) Then
  loc_107DFE3:   If (Proc_183_55_FE8490(global_96) = &HFF) Then
  loc_107DFE6:     Exit Sub
  loc_107DFE7:   End If
  loc_107E01B:   global_76 = CStr(Me.Fields.Item("GroupCode").Value)
  loc_107E049:   var_A0 = Me.Fields.Item("GroupName")
  loc_107E060:   global_68 = CStr(var_A0.Value)
  loc_107E086:   var_B4 = "EDIT"
  loc_107E094:   Call Proc_201_29_F2E584(Proc_5_1_100EC1C(var_B4, Me))
  loc_107E0AA:   If (global_64 = "Y") Then
  loc_107E0BA:     Set var_8C = Me.Txt
  loc_107E0C0:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_A0)
  loc_107E0C8:     var_A0.Enabled = False
  loc_107E0E1:     Set var_8C = Me.Txt
  loc_107E0E7:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_A0)
  loc_107E0EF:     var_A0.Enabled = False
  loc_107E101:     If (MemVar_1F9508C = &HFF) Then
  loc_107E10F:       Set var_8C = Me.Txt
  loc_107E115:       Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_A0)
  loc_107E11D:       var_A0.SetFocus
  loc_107E12C:     Else
  loc_107E137:       Set var_8C = Me.Txt
  loc_107E13D:       Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_A0)
  loc_107E145:       var_A0.SetFocus
  loc_107E151:     End If
  loc_107E154:   Else
  loc_107E161:     Set var_8C = Me.Txt
  loc_107E167:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_A0)
  loc_107E16F:     var_A0.Enabled = True
  loc_107E188:     Set var_8C = Me.Txt
  loc_107E18E:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_A0)
  loc_107E196:     var_A0.Enabled = True
  loc_107E1AD:     Set var_8C = Me.Txt
  loc_107E1B3:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_A0)
  loc_107E1BB:     var_A0.SetFocus
  loc_107E1C7:   End If
  loc_107E1CA: Else
  loc_107E1EB:   MsgBox("There Is No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_107E1FB: End If
  loc_107E208: Me.LblUser.Caption = vbNullString
  loc_107E21D: Me.LblLDt.Caption = vbNullString
  loc_107E225: Exit Sub
  loc_107E226: ' Referenced from: 107DFB8
  loc_107E22C: Call 0.Method_arg_50 (var_B4)
  loc_107E241: Proc_183_57_104B0BC(var_B4, "TopCtrl1_eEdit")
  loc_107E24D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B284
  'Data Table: 4B4150
  loc_E1B279: Me.Global.Unload Me
  loc_E1B281: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF12E4
  'Data Table: 4B4150
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EF1224: On Error Goto loc_EF12BC
  loc_EF123E: If (Me.RecordCount <= 0) Then
  loc_EF1247:   var_B8 = "Information"
  loc_EF1262:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EF1272:   Exit Sub
  loc_EF1273: End If
  loc_EF1281: MemVar_1F950E4 = "Select GROUPCODE As SearchCode,GroupName,GroupNature,Nature FROM AcGroup Where (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') AND AliasYN<>'Y' Order by GroupName"
  loc_EF128E: MemVar_1F95120 = Me
  loc_EF1295: var_10C = "2000,2000,1000"
  loc_EF129B: Proc_6_126_F1C850(var_10C)
  loc_EF12B6: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EF12BB: Exit Sub
  loc_EF12BC: ' Referenced from: EF1224
  loc_EF12C2: Call 0.Method_arg_50 (var_10C)
  loc_EF12D7: Proc_183_57_104B0BC(var_10C, "TopCtrl1_eFind")
  loc_EF12E3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3CFC8
  'Data Table: 4B4150
  loc_E3CFB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3CFC0: Call Proc_201_31_14D21D0(global_96)
  loc_E3CFC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E395A8
  'Data Table: 4B4150
  loc_E39598: Proc_5_0_1107AD0(&HFF, Me)
  loc_E395A0: Call Proc_201_31_14D21D0(global_96)
  loc_E395A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E39608
  'Data Table: 4B4150
  loc_E395F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39600: Call Proc_201_31_14D21D0(global_96)
  loc_E39605: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E396C8
  'Data Table: 4B4150
  loc_E396B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E396C0: Call Proc_201_31_14D21D0(global_96)
  loc_E396C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10932F4
  'Data Table: 4B4150
  Dim var_A0 As String
  Dim unk_4B415D As Connection15
  Dim var_88 As Recordset15
  Dim var_12E As Integer
  Dim var_DC As String
  Dim var_C4 As Variant
  loc_1093058: On Error Goto loc_10932C9
  loc_109306F: var_A0 = "select SYSGROUP,GroupName,Nature,GNature= CASE GroupNature WHEN 'A' THEN 'A S S E T S' WHEN 'E' THEN 'E X P E N D I T U R E' WHEN 'L' THEN 'L I A B I L I T Y' WHEN 'R' THEN 'R E V E N U E' ELSE 'Others' END,MainGrCode from acgroup WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_109307F: unk_4B415D.Execute var_A0 & "' OR LOGSITE_CODE='HO') order by groupname", var_C4, -1
  loc_109308A: Set var_88 = var_C8
  loc_10930A0: var_CC = var_88.RecordCount
  loc_10930AE: If (var_CC = 0) Then
  loc_10930CA:   MsgBox("No record Found to Print", 0, var_EC, var_10C, var_12C)
  loc_10930DA:   Exit Sub
  loc_10930DB: End If
  loc_10930E4: var_A0 = MemVar_1F953B4 & "\FaGrplist.ttx"
  loc_10930F1: Set var_C8 = var_88 
  loc_10930FD: var_12E = CreateFieldDefFile(var_C8, var_A0)
  loc_1093107: Set var_88 = var_C8
  loc_1093110: var_98 = CVar(var_12E) 'Variant
  loc_1093124: var_DC = "A/C Group List"
  loc_1093155: If (MsgBox("Do You Want Tree Like List", &H24, var_DC, var_10C, var_12C) = 6) Then
  loc_1093164:   Call 0.Method_arg_130 (var_C8, var_12E)
  loc_109316F:   MemVar_1F951E8 = var_C8
  loc_1093179: Else
  loc_1093185:   Call 0.Method_arg_124 (var_C8, &HFF)
  loc_1093190:   MemVar_1F951E8 = var_C8
  loc_1093197: End If
  loc_10931A8: Call 0.Method_arg_90 (var_C8, var_CC, var_9A)
  loc_10931B0: Call 0.Method_arg_24 (1)
  loc_10931BC: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_10931D5:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10931DD:   Call 0.Method_arg_20 (var_138)
  loc_10931E5:   Call 0.Method_arg_30 (var_A0)
  loc_109322B:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1093241:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1093249:     Call 0.Method_arg_20 (var_138)
  loc_1093251:     Call 0.Method_arg_38 ("'Group List'")
  loc_109325D:   End If
  loc_1093260: Next var_132 'Integer
  loc_109327E: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1093286: Call 0.Method_arg_2C (var_DC)
  loc_1093294: Call 0.Method_arg_150 (var_FC)
  loc_109329F: Call 0.Method_arg_50 (var_A0)
  loc_10932B8: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_10932C5: Set var_88 = Nothing
  loc_10932C8: Exit Sub
  loc_10932C9: ' Referenced from: 1093058
  loc_10932CF: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_10932E4: Proc_183_57_104B0BC(var_A0, "TopCtrl1_ePrn")
  loc_10932F0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E58120
  'Data Table: 4B4150
  Dim Me As Recordset15
  loc_E580E7: Me.Requery -1
  loc_E580F7: Me.Requery -1
  loc_E58107: Me.Requery -1
  loc_E58117: Me.Requery -1
  loc_E5811C: Exit Sub
  loc_E5811D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '10AAC3C
  'Data Table: 4B4150
  Dim var_8C As TextBox
  Dim var_9C As TextBox
  Dim var_B0 As String
  Dim var_94 As String
  Dim Me As Recordset15
  Dim var_A0 As String
  loc_10AA97C: On Error Goto loc_10AAC14
  loc_10AA97F: Call Proc_201_28_EF3498()
  loc_10AA98F: Set var_88 = Me.Txt
  loc_10AA995: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_10AA9BE: If (Proc_183_19_E8E68C(var_8C, "Group Name") = 0) Then
  loc_10AA9C1:   Exit Sub
  loc_10AA9C2: End If
  loc_10AA9CD: Set var_88 = Me.Txt
  loc_10AA9D3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_8C)
  loc_10AA9FC: If (Proc_183_19_E8E68C(var_8C, "Under Group") = 0) Then
  loc_10AA9FF:   Exit Sub
  loc_10AAA00: End If
  loc_10AAA0E: Set var_88 = Me.Txt
  loc_10AAA14: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_8C)
  loc_10AAA1C: var_96 = var_8C.Enabled
  loc_10AAA2E: If (var_96 = &HFF) Then
  loc_10AAA3C:   Set var_88 = Me.Txt
  loc_10AAA42:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_8C)
  loc_10AAA4A:   var_94 = "Nature"
  loc_10AAA6B:   If (Proc_183_19_E8E68C(var_8C, var_94) = 0) Then
  loc_10AAA6E:     Exit Sub
  loc_10AAA6F:   End If
  loc_10AAA6F: End If
  loc_10AAA7D: Set var_88 = Me.Txt
  loc_10AAA83: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_8C)
  loc_10AAA8B: var_A0 = var_8C.Text
  loc_10AAAA1: Set var_90 = Me.Txt
  loc_10AAAA7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_9C, var_94)
  loc_10AAAAF: var_A0 = var_9C.Text
  loc_10AAACB: If (var_8C = var_94) Then
  loc_10AAADC:   var_B0 = "A/c Group And Under group Can not be same"
  loc_10AAAE7:   MsgBox(var_B0, 0, var_E0, var_100, var_120)
  loc_10AAB02:   Set var_88 = Me.Txt
  loc_10AAB08:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4))
  loc_10AAB10:   var_8C.SetFocus
  loc_10AAB1C:   Exit Sub
  loc_10AAB1D: End If
  loc_10AAB21: Set var_88 = Me.TopCtrl1
  loc_10AAB27: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8C)
  loc_10AAB2F: var_94 = CStr()
  loc_10AAB40: If (var_94 = "Add") Then
  loc_10AAB59:   Call 0.Method_arg_5C (Me)
  loc_10AAB67:   If (var_96 = &HFF) Then
  loc_10AAB70:     Call 0.Method_arg_1C0 (var_94)
  loc_10AAB8D:     Me.Recordset15.Requery -1
  loc_10AAB9D:     Me.Requery -1
  loc_10AABAD:     Me.Requery -1
  loc_10AABBD:     Me.Requery -1
  loc_10AABCD:     Me.Requery -1
  loc_10AABEA:     var_94 = "SearchCode='" & var_94
  loc_10AABFA:     Me.Find var_94 & "'", 0, 1
  loc_10AAC06:     Call TopCtrl1_UnknownEvent_A()
  loc_10AAC0B:   End If
  loc_10AAC0E: Else
  loc_10AAC0E:   Call Proc_201_34_15C35EC(var_B0)
  loc_10AAC13: End If
  loc_10AAC13: Exit Sub
  loc_10AAC14: ' Referenced from: 10AA97C
  loc_10AAC1A: Call 0.Method_arg_50 (var_94)
  loc_10AAC2F: Proc_183_57_104B0BC(var_94, "TopCtrl1_eSave")
  loc_10AAC3B: Exit Sub
End Sub

Private Sub Form_Load() '13C4DBC
  'Data Table: 4B4150
  Dim var_8C As Variant
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_CC As ListItems
  Dim unk_4B415D As Connection15
  loc_13C443C: On Error Goto loc_13C4D94
  loc_13C4446: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_13C445A: Me.LblUser.Left = CDbl(13500)
  loc_13C4471: Me.LblUser.Top = CDbl(7800)
  loc_13C4488: Me.LblLDt.Top = CDbl(8160)
  loc_13C449F: Me.LblLDt.Left = CDbl(13500)
  loc_13C44B1: Set var_8C = Me.TopCtrl1
  loc_13C44B7: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_13C44C5: Call 0.Method_arg_50 (var_B0)
  loc_13C44D5: Set var_8C = Me.TopCtrl1
  loc_13C44DB: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_13C44F2: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_13C4503: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_13C4514: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_13C4525: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_13C4536: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_13C4547: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_13C4558: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_13C4569: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_13C457A: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_13C458B: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_13C45A5: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_13C45B3: Set var_8C = MemVar_1F95044
  loc_13C45C2: Call 0.Method_Form_Load8 (var_8C)
  loc_13C45D8: Me.TopCtrl1.Clone
  loc_13C45F2: Call 0.Method_arg_50 (var_8C, -1)
  loc_13C4601: Call Proc_201_32_10F696C(MemVar_1F9508C)
  loc_13C4628: Proc_183_1_F5BEA0(Me, CStr(-2147483643))
  loc_13C4641: Set global_100 = New 
  loc_13C4653: Me.Recordset15.CursorLocation = 3
  loc_13C4676: var_B0 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup Where MainGrCode<>'999' AND (LOGSITE_CODE='" & MemVar_1F95078
  loc_13C469B: CVarUnk
  loc_13C46A0: VerifyVarObj
  loc_13C46A6: Set var_8C = Me.DGAcName
  loc_13C46AC: LateIdStAd
  loc_13C46C3: Set global_108 = global_100
  loc_13C46D0: CVarUnk
  loc_13C46D5: VerifyVarObj
  loc_13C46DB: Set var_8C = Me.DGAcAlias
  loc_13C46E1: LateIdStAd
  loc_13C46F8: Set global_112 = global_100
  loc_13C4705: CVarUnk
  loc_13C470A: VerifyVarObj
  loc_13C4710: Set var_8C = Me.DGUnderAc
  loc_13C4716: LateIdStAd
  loc_13C472E: Set global_104 = New 
  loc_13C4740: Me.DGUnderAc.CursorLocation = 3
  loc_13C476A: var_C0 = CVar("Select ID,GroupCode,GroupName,GroupHelp,Nature From AcGroup Where MainGrCode<>'999' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by GroupHelp") 'String
  loc_13C4774: ar("Select ID,GroupCode,GroupName,GroupHelp,Nature From AcGroup Where MainGrCode<>'999' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by GroupName"), CVar(MemVar_1F951E0), 2 var_C0, CVar(MemVar_1F951E0), 2
  loc_13C4783: Set var_8C = Me.ListView
  loc_13C4789: var_C0 = var_8C.ListItems
  loc_13C4794: Set var_CC = var_C0
  loc_13C47BA: var_CC.Add var_C0, var_DC, "Bank", var_11C, var_13C
  loc_13C47CB: Set global_84 = var_8C
  loc_13C4800: var_CC.Add var_C0, var_DC, "Broker", var_11C, var_13C
  loc_13C4811: Set global_84 = var_8C
  loc_13C4846: var_CC.Add var_C0, var_DC, "Cash", var_11C, var_13C
  loc_13C4857: Set global_84 = var_8C
  loc_13C488C: var_CC.Add var_C0, var_DC, "Customer", var_11C, var_13C
  loc_13C489D: Set global_84 = var_8C
  loc_13C48D2: var_CC.Add var_C0, var_DC, "Electrician", var_11C, var_13C
  loc_13C48E3: Set global_84 = var_8C
  loc_13C4918: var_CC.Add var_C0, var_DC, "Employee", var_11C, var_13C
  loc_13C4929: Set global_84 = var_8C
  loc_13C495E: var_CC.Add var_C0, var_DC, "Expenses", var_11C, var_13C
  loc_13C496F: Set global_84 = var_8C
  loc_13C49A4: var_CC.Add var_C0, var_DC, "Mukadim", var_11C, var_13C
  loc_13C49B5: Set global_84 = var_8C
  loc_13C49EA: var_CC.Add var_C0, var_DC, "Others", var_11C, var_13C
  loc_13C49FB: Set global_84 = var_8C
  loc_13C4A30: var_CC.Add var_C0, var_DC, "PDC", var_11C, var_13C
  loc_13C4A41: Set global_84 = var_8C
  loc_13C4A76: var_CC.Add var_C0, var_DC, "Purchase", var_11C, var_13C
  loc_13C4A87: Set global_84 = var_8C
  loc_13C4ABC: var_CC.Add var_C0, var_DC, "Revenue", var_11C, var_13C
  loc_13C4ACD: Set global_84 = var_8C
  loc_13C4B02: var_CC.Add var_C0, var_DC, "Sale", var_11C, var_13C
  loc_13C4B13: Set global_84 = var_8C
  loc_13C4B48: var_CC.Add var_C0, var_DC, "SalesMan", var_11C, var_13C
  loc_13C4B59: Set global_84 = var_8C
  loc_13C4B8E: var_CC.Add var_C0, var_DC, "SalesRep", var_11C, var_13C
  loc_13C4B9F: Set global_84 = var_8C
  loc_13C4BD4: var_CC.Add var_C0, var_DC, "Supplier", var_11C, var_13C
  loc_13C4BE5: Set global_84 = var_8C
  loc_13C4C1A: var_CC.Add var_C0, var_DC, "T.D.S.", var_11C, var_13C
  loc_13C4C2B: Set global_84 = var_8C
  loc_13C4C71: Set global_84 = var_8C
  loc_13C4CA6: r_C0, var_DC, "Transporter", var_11C, var_13C var_C0, var_DC, "Unsecured Loan", var_11C, var_13C
  loc_13C4CB7: Set global_84 = var_8C
  loc_13C4CD1: Set var_CC = Nothing 
  loc_13C4CDF: Set global_96 = New 
  loc_13C4CF1: Me.Recordset15.LockType = 3
  loc_13C4D01: Me.CursorLocation = 3
  loc_13C4D11: Me.CursorType = 2
  loc_13C4D2A: var_B0 = "Select GROUPCODE as SearchCode,ID,Site_Code,GroupCode,GroupName,GroupNameBiLang,GroupNature,MainGrCode,CurrentBalance,SubLedYN,BlOrd,AliasYN,GroupHelp,Nature,SysGroup,TRADINGYN,LogSite_Code From AcGroup Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_13C4D3A: unk_4B415D.Execute var_B0 & "' OR LOGSITE_CODE='HO') AND AliasYN<>'Y' Order by GroupName", var_C0, -1
  loc_13C4D60: Call Proc_201_31_14D21D0(var_8C, var_8C, var_8C, var_8C, var_8C, var_8C)
  loc_13C4D71: Set var_8C = Me
  loc_13C4D7A: var_B0 = "INI"
  loc_13C4D88: Call Proc_201_29_F2E584(Proc_5_1_100EC1C(var_B0, var_8C, var_8C, var_8C), var_8C, var_8C)
  loc_13C4D93: Exit Sub
  loc_13C4D94: ' Referenced from: 13C443C
  loc_13C4D9A: Call 0.Method_arg_50 (var_B0, var_8C)
  loc_13C4DAF: Proc_183_57_104B0BC(var_B0, "Form_Load")
  loc_13C4DBB: Exit Sub
End Sub

Private Sub Form_Resize() 'E72AAC
  'Data Table: 4B4150
  loc_E72A56: Call 0.Method_arg_50 (var_88)
  loc_E72A68: Me.LblFormCaption.Caption = var_88
  loc_E72A81: Me.LblFormCaption.Left = CDbl(0)
  loc_E72A8F: Call 0.Method_arg_100 (var_90)
  loc_E72AA1: Me.LblFormCaption.Width = var_90
  loc_E72AA9: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E817EC
  'Data Table: 4B4150
  loc_E81787: Set global_96 = Nothing
  loc_E81799: Set global_100 = Nothing
  loc_E817AB: Set global_104 = Nothing
  loc_E817BD: Set global_108 = Nothing
  loc_E817CF: Set global_112 = Nothing
  loc_E817E1: Set global_116 = Nothing
  loc_E817E8: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'FCF5A0
  'Data Table: 4B4150
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_8C As DataGrid
  Dim KeyCode As Integer
  loc_FCF3F8: On Error Goto loc_FCF578
  loc_FCF3FE: var_86 = KeyCode
  loc_FCF40B: If Not (var_86 = CInt(&HD)) Then
  loc_FCF418:   If Not (var_86 = CInt(&H28)) Then
  loc_FCF425:     If (var_86 = CInt(&H26)) Then
  loc_FCF428:     End If
  loc_FCF428:   End If
  loc_FCF42B:   var_88 = KeyCode
  loc_FCF438:   If Not (var_88 = CInt(&H28)) Then
  loc_FCF445:     If (var_88 = CInt(&H26)) Then
  loc_FCF448:     End If
  loc_FCF44C:     Set var_8C = Me.DGAcName
  loc_FCF499:     var_CA = Me.FrmList.Visible
  loc_FCF4D4:     If (((((CBool(var_8C.Visible) = &HFF) Or (CBool(Me.DGAcAlias.Visible) = &HFF)) Or (CBool(Me.DGUnderAc.Visible) = &HFF)) Or (var_CA = &HFF)) Or (CBool(Me.ListView.Visible) = &HFF)) Then
  loc_FCF4D7:       Exit Sub
  loc_FCF4D8:     End If
  loc_FCF4D8:   End If
  loc_FCF4DE:   Call 0.Method_arg_1E8 (var_8C, var_88)
  loc_FCF4ED:   If TypeOf var_8C Is arg_5 Then
  loc_FCF4F6:     Call 0.Method_arg_1E8 (var_8C)
  loc_FCF511:     Call Txt_Validate(CInt(var_8C.index))
  loc_FCF51C:   End If
  loc_FCF538:   Call 0.Method_arg_58 (Me, KeyCode, Shift, var_CA)
  loc_FCF546:   If (var_CA = &HFF) Then
  loc_FCF550:     Call Proc_201_27_F600DC(CInt(5), 0)
  loc_FCF555:   End If
  loc_FCF557:   KeyCode = 0
  loc_FCF55D: Else
  loc_FCF56F:   Proc_183_40_F3169C(Me, KeyCode, Shift)
  loc_FCF577: End If
  loc_FCF577: Exit Sub
  loc_FCF578: ' Referenced from: FCF3F8
  loc_FCF57E: Call 0.Method_arg_50 (var_E8, KeyCode)
  loc_FCF593: Proc_183_57_104B0BC(var_E8, "Form_KeyDown")
  loc_FCF59F: Exit Sub
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'E17184
  'Data Table: 4B4150
  Dim KeyAscii As Integer
  Dim Form_KeyPressFF As Integer
  loc_E17178: If (KeyAscii = CInt(&HD)) Then
  loc_E1717D:   KeyAscii = 0
  loc_E17180: End If
  loc_E17180: Exit Sub
  loc_E17181: Form_KeyPressFF = KeyAscii
End Sub

Private Sub Txt_GotFocus(Index As Integer) '122F0E4
  'Data Table: 4B4150
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_EC As String
  loc_122EBD4: On Error Goto loc_122F0B9
  loc_122EBE1: Set var_88 = Me.Txt
  loc_122EBE7: Call 0.Method_Txt_GotFocus0 (Index)
  loc_122EBF5: Proc_183_28_E216B0(var_8C)
  loc_122EC01: Call Proc_201_28_EF3498(var_8C)
  loc_122EC09: var_92 = Index
  loc_122EC14: If (var_92 = CInt(0)) Then
  loc_122EC65:   Set var_88 = Me.Txt
  loc_122EC6B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_122EC73:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_122EC8B:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_122EC8E:     Exit Sub
  loc_122EC8F:   End If
  loc_122EC9C:   Set var_88 = Me.Txt
  loc_122ECA2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_122ECAA:   var_A0 = var_8C.Text
  loc_122ECBC:   var_B0 = "Name"
  loc_122ECF7:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_122ED00:     Me.MoveFirst
  loc_122ED23:     Set var_88 = Me.Txt
  loc_122ED29:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_122ED31:     0 = var_8C.Text
  loc_122ED4A:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_122ED5F:   End If
  loc_122ED62: Else
  loc_122ED6A:   If (var_92 = CInt(2)) Then
  loc_122EDBB:     Set var_88 = Me.Txt
  loc_122EDC1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_122EDE1:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_122EDE4:       Exit Sub
  loc_122EDE5:     End If
  loc_122EDF2:     Set var_88 = Me.Txt
  loc_122EDF8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_122EE00:     var_A0 = var_8C.Text
  loc_122EE12:     var_B0 = "Name"
  loc_122EE4D:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_122EE56:       Me.MoveFirst
  loc_122EE79:       Set var_88 = Me.Txt
  loc_122EE7F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_122EE87:       0 = var_8C.Text
  loc_122EEA0:       Me.Find 1 & var_A0 & "'", var_B0, 
  loc_122EEB5:     End If
  loc_122EEB8:   Else
  loc_122EEC0:     If (var_92 = CInt(4)) Then
  loc_122EEE3:       var_9A = Me.EOF
  loc_122EF11:       Set var_88 = Me.Txt
  loc_122EF17:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_122EF37:       If (((Me.RecordCount = 0) Or ((var_9A = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_122EF3A:         Exit Sub
  loc_122EF3B:       End If
  loc_122EF48:       Set var_88 = Me.Txt
  loc_122EF4E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_122EF56:       var_A0 = var_8C.Text
  loc_122EF68:       var_B0 = "Name"
  loc_122EFA3:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_122EFAC:         Me.MoveFirst
  loc_122EFCF:         Set var_88 = Me.Txt
  loc_122EFD5:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_122EFDD:         0 = var_8C.Text
  loc_122EFF6:         Me.Find 1 & var_A0 & "'", var_B0, 
  loc_122F00B:       End If
  loc_122F00E:     Else
  loc_122F016:       If (var_92 = CInt(5)) Then
  loc_122F026:         Set var_88 = Me.Txt
  loc_122F02C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_122F034:         var_A0 = var_8C.Text
  loc_122F096:         If (Me.ListView.FindItem 1, var_11C, 0, CVar(var_A0)) Is Nothing) Then
  loc_122F099:           Exit Sub
  loc_122F09D:         Else
  loc_122F0A6:           Me.EnsureVisible var_9A
  loc_122F0B3:           Me.Selected = True
  loc_122F0B8:         End If
  loc_122F0B8:       End If
  loc_122F0B8:     End If
  loc_122F0B8:   End If
  loc_122F0B8: End If
  loc_122F0B8: Exit Sub
  loc_122F0B9: ' Referenced from: 122EBD4
  loc_122F0BF: Call 0.Method_arg_50 (var_A0)
  loc_122F0C7: var_EC = "Txt_GotFocus"
  loc_122F0D4: Proc_183_57_104B0BC(var_A0)
  loc_122F0E0: Exit Sub
  loc_122F0E1: var_EC = arg_30FF
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1328DB0
  'Data Table: 4B4150
  Dim var_92 As Integer
  Dim var_BC As String
  Dim var_9C As Variant
  Dim var_B8 As Variant
  Dim var_A8 As TextBox
  Dim var_F0 As Variant
  Dim var_124 As String
  Dim unk_4B415D As Connection15
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_E0 As String
  Dim var_9E As Integer
  Dim var_A4 As Fields15
  Dim var_DC As Variant
  Dim var_184 As TextBox
  loc_1328664: On Error Goto loc_1328D88
  loc_1328671: If (CLng(Shift) = &H1B) Then
  loc_1328674:   Call Proc_201_28_EF3498()
  loc_1328679:   Exit Sub
  loc_132867A: End If
  loc_132867D: var_92 = KeyCode
  loc_1328688: If (var_92 = CInt(0)) Then
  loc_13286C1:   Proc_183_31_100957C(Me.DGAcName, Me.Txt, KeyCode, global_100)
  loc_13286D4: Else
  loc_13286DC:   If (var_92 = CInt(2)) Then
  loc_13286EA:     Set var_A8 = Me.Txt
  loc_1328706:     Set var_9C = var_A8
  loc_1328715:     Proc_183_31_100957C(Me.DGAcAlias, var_9C, KeyCode, global_108, Shift, 0)
  loc_1328730:     If (global_64 = "Y") Then
  loc_132873D:       If (CLng(Shift) = &HD) Then
  loc_1328744:         Set var_98 = Me.TopCtrl1
  loc_132874A:         Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1328752:         var_BC = CStr(Shift)
  loc_1328763:         If (var_BC = "Edit") Then
  loc_1328774:           Set var_98 = Me.Txt
  loc_132877A:           Call 0.Method_Txt_KeyDown0 (CInt(2), var_9C, var_BC)
  loc_1328782:           0 = var_9C.Text
  loc_132879B:           var_DC = Ucase(Trim(CVar(var_BC)))
  loc_13287B1:           Set var_A4 = Me.Txt
  loc_13287B7:           Call 0.Method_Txt_KeyDown0 (CInt(0), var_A8, var_E0)
  loc_13287BF:           var_DC = var_A8.Text
  loc_13287C7:           var_F0 = CVar(var_E0) 'String
  loc_13287FC:           If (1 = Ucase(Trim(var_F0))) Then
  loc_1328803:             var_8A = CByte(1) 'Byte
  loc_1328807:           End If
  loc_1328825:           Set var_98 = Me.Txt
  loc_132882B:           Call 0.Method_Txt_KeyDown0 (CInt(2), var_9C, var_BC, "Select GroupHelp From AcGroup Where GroupHelp='")
  loc_1328833:           var_B8 = var_9C.Text
  loc_1328844:           var_124 = Proc_183_20_FB48CC(var_BC, -1)
  loc_1328871:           unk_4B415D.Execute var_92 & Proc_183_20_FB48CC(global_56, var_A4 & var_124 & "' and GroupHelp<>'") & "'", , 
  loc_13288B0:           If (var_A4.RecordCount > 0) Then
  loc_13288B7:             var_8C = CByte(1) 'Byte
  loc_13288BB:           End If
  loc_13288CE:           If ((CInt(var_8A) = 1) Or (CInt(var_8C) = 1)) Then
  loc_13288F2:             MsgBox("Duplicate Alias not Allowed", &H40, "Validation", var_DC, var_F0)
  loc_132890D:             Set var_98 = Me.Txt
  loc_1328913:             Call 0.Method_Txt_KeyDown0 (CInt(2))
  loc_132891B:             var_9C.SetFocus
  loc_1328927:             Exit Sub
  loc_1328928:           End If
  loc_1328928:         End If
  loc_1328928:       End If
  loc_1328928:     End If
  loc_132892B:   Else
  loc_1328933:     If (var_92 = CInt(4)) Then
  loc_132895D:       Set var_9C = Me.Txt
  loc_132896C:       Proc_183_34_1307118(Me.DGUnderAc, var_9C, KeyCode, global_112)
  loc_1328988:       If (CInt(global_60) = 0) Then
  loc_1328995:         If (CLng(Shift) = &HD) Then
  loc_13289E6:           Set var_98 = Me.Txt
  loc_13289EC:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_BC, ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))))
  loc_13289F4:           Shift = var_9C.Text
  loc_1328A0C:           If (0 Or (var_BC <> vbNullString)) Then
  loc_1328A24:             var_98 = Me.Fields
  loc_1328A34:             var_B8 = var_98.Item("Code").Value
  loc_1328A6E:             unk_4B415D.Execute "Select GroupCode,GroupName,MainGrCode,Nature,AliasYN From AcGroup Where GroupCode='" & CStr(var_B8) & "'", var_B8, -1
  loc_1328A79:             Set var_88 = var_98
  loc_1328A9D:             If (var_88.RecordCount > 0) Then
  loc_1328AAF:               var_98 = var_88.Fields
  loc_1328AC8:               var_9E = IsNull(CVar(var_98.Item("Nature")))
  loc_1328AE2:               var_A8 = var_88.Fields.Item("Nature")
  loc_1328B1A:               Set var_180 = Me.Txt
  loc_1328B20:               Call 0.Method_Txt_KeyDown0 (CInt(5), var_184, CStr(IIf(var_9E, vbNullString, CVar(var_A8))), var_9E)
  loc_1328B28:               var_184.Text = var_98
  loc_1328B48:               ' Referenced from:     1328C96
  loc_1328B57:               If Not(var_88.EOF) Then
  loc_1328B96:                 If (var_88.Fields.Item("AliasYN").Value = "N") Then
  loc_1328BD6:                   Set var_A4 = Me.Txt
  loc_1328BDC:                   Call 0.Method_Txt_KeyDown0 (CInt(4), var_A8, CStr(Trim(CVar(var_88.Fields.Item("GroupName")))))
  loc_1328BE4:                   var_A8.Text = 1
  loc_1328C16:                   var_9C = var_88.Fields.Item("GroupCode")
  loc_1328C35:                   Set var_A4 = Me.Txt
  loc_1328C3B:                   Call 0.Method_Txt_KeyDown0 (CInt(4), var_A8)
  loc_1328C43:                   var_A8.Tag = CStr(var_9C.Value)
  loc_1328C67:                   Set var_98 = Me.Txt
  loc_1328C6D:                   Call 0.Method_Txt_KeyDown0 (CInt(4), var_9C)
  loc_1328C75:                   var_BC = var_9C.Text
  loc_1328C80:                   global_92 = var_BC
  loc_1328C8E:                 End If
  loc_1328C91:                 var_88.MoveNext
  loc_1328C96:                 GoTo loc_1328B48
  loc_1328C99:               End If
  loc_1328C99:             End If
  loc_1328C99:           End If
  loc_1328C99:           Exit Sub
  loc_1328C9A:         End If
  loc_1328C9A:       End If
  loc_1328C9D:     Else
  loc_1328CA5:       If (var_92 = CInt(5)) Then
  loc_1328CCA:         Set var_98 = Me.Txt
  loc_1328CD0:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_1328CD8:         var_14C = var_9C.Left
  loc_1328CEA:         Set var_A4 = Me.Txt
  loc_1328CF0:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_1328CF8:         var_188 = var_A8.Width
  loc_1328D0A:         Set var_180 = Me.Txt
  loc_1328D10:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_184)
  loc_1328D18:         var_18C = var_184.Width
  loc_1328D5F:         Proc_183_36_114A39C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1328D7F:       End If
  loc_1328D7F:     End If
  loc_1328D7F:   End If
  loc_1328D7F: End If
  loc_1328D84: Set var_88 = Nothing
  loc_1328D87: Exit Sub
  loc_1328D88: ' Referenced from: 1328664
  loc_1328D8E: Call 0.Method_arg_50 (var_BC, CInt((var_14C + var_188)), 700)
  loc_1328DA3: Proc_183_57_104B0BC(var_BC, "Txt_KeyDown", CInt(var_18C))
  loc_1328DAF: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'ECFA94
  'Data Table: 4B4150
  Dim arg_10 As Integer
  loc_ECF9F0: On Error Goto loc_ECFA6C
  loc_ECF9F9: If (arg_10 = &H27) Then
  loc_ECF9FE:   arg_10 = 0
  loc_ECFA01:   Exit Sub
  loc_ECFA02: End If
  loc_ECFA10: If (KeyAscii = CInt(4)) Then
  loc_ECFA2F:   If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_ECFA41:     var_A0 = "Name"
  loc_ECFA5C:     Proc_183_41_145A968(Me.Txt, KeyAscii, global_112, arg_10)
  loc_ECFA6B:   End If
  loc_ECFA6B: End If
  loc_ECFA6B: Exit Sub
  loc_ECFA6C: ' Referenced from: ECF9F0
  loc_ECFA72: Call 0.Method_arg_50 (var_A0, var_A0, 0)
  loc_ECFA87: Proc_183_57_104B0BC(var_A0, "TXT_KeyPress")
  loc_ECFA93: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F92BE4
  'Data Table: 4B4150
  Dim var_86 As Integer
  loc_F92A88: On Error Goto loc_F92BB9
  loc_F92A8E: var_86 = KeyCode
  loc_F92A99: If (var_86 = CInt(0)) Then
  loc_F92AB8:   If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F92AC5:     var_A0 = "Name"
  loc_F92AE0:     Proc_183_32_FE97F0(Me.Txt, KeyCode, global_100)
  loc_F92AEF:   End If
  loc_F92AF2: Else
  loc_F92AFA:   If (var_86 = CInt(2)) Then
  loc_F92B19:     If (CBool(Me.DGAcAlias.Visible) = &HFF) Then
  loc_F92B26:       var_A0 = "Name"
  loc_F92B41:       Proc_183_32_FE97F0(Me.Txt, KeyCode, global_108, Shift)
  loc_F92B50:     End If
  loc_F92B53:   Else
  loc_F92B5B:     If (var_86 = CInt(5)) Then
  loc_F92B79:       If (Me.FrmList.Visible = &HFF) Then
  loc_F92BA8:         Proc_183_35_F2A594(Me.ListView, Me.Txt, KeyCode, Shift, global_88)
  loc_F92BB8:       End If
  loc_F92BB8:     End If
  loc_F92BB8:   End If
  loc_F92BB8: End If
  loc_F92BB8: Exit Sub
  loc_F92BB9: ' Referenced from: F92A88
  loc_F92BBF: Call 0.Method_arg_50 (var_A0, var_A0, Shift)
  loc_F92BD4: Proc_183_57_104B0BC(var_A0, "Txt_KeyUp")
  loc_F92BE0: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48D4C
  'Data Table: 4B4150
  loc_E48D2A: Set var_88 = Me.Txt
  loc_E48D30: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48D3E: Proc_183_27_E23198(var_8C)
  loc_E48D4A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '148771C
  'Data Table: 4B4150
  Dim var_92 As Integer
  Dim var_9C As Variant
  Dim var_A0 As String
  Dim var_B8 As String
  Dim unk_4B415D As Connection15
  Dim var_88 As Recordset15
  Dim arg_10 As Integer
  Dim var_140 As String
  Dim var_144 As String
  Dim var_B0 As Variant
  Dim var_148 As Variant
  Dim var_138 As Variant
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_17A As Integer
  Dim var_D4 As Fields15
  Dim var_118 As Variant
  Dim var_184 As TextBox
  loc_1486AEC: On Error Goto loc_14876F1
  loc_1486AF3: var_8A = CByte(0) 'Byte
  loc_1486AFB: var_8C = CByte(0) 'Byte
  loc_1486B02: var_92 = Cancel
  loc_1486B0D: If (var_92 = CInt(0)) Then
  loc_1486B1D:   Set var_98 = Me.Txt
  loc_1486B23:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1486B42:   If (var_9C.Text = vbNullString) Then
  loc_1486B45:     Exit Sub
  loc_1486B46:   End If
  loc_1486B4A:   Set var_98 = Me.TopCtrl1
  loc_1486B50:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_92)
  loc_1486B58:   var_A0 = CStr()
  loc_1486B69:   If (var_A0 = "Add") Then
  loc_1486B8A:     Set var_98 = Me.Txt
  loc_1486B90:     Call 0.Method_Txt_Validate0 (CInt(0), var_9C, var_A0, "Select GroupHelp From AcGroup Where GroupHelp='")
  loc_1486B98:     var_B0 = var_9C.Text
  loc_1486BA9:     var_B8 = Proc_183_20_FB48CC(var_A0, -1)
  loc_1486BBD:     unk_4B415D.Execute var_D4 & var_B8 & "'", , 
  loc_1486BF6:     If (var_D4.RecordCount > 0) Then
  loc_1486C14:       var_B0 = "Duplicate Account Group not Allowed"
  loc_1486C1A:       MsgBox(var_B0, &H40, "Validation", var_118, var_138)
  loc_1486C35:       Set var_98 = Me.Txt
  loc_1486C3B:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_1486C43:       var_9C.SetFocus
  loc_1486C51:       arg_10 = &HFF
  loc_1486C54:       Exit Sub
  loc_1486C55:     End If
  loc_1486C69:     var_A0 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup Where MainGrCode<>'999' AND (LOGSITE_CODE='" & MemVar_1F95078
  loc_1486C79:     unk_4B415D.Execute var_A0 & "' OR LOGSITE_CODE='HO')  Order by GroupName", var_B0, -1
  loc_1486C8A:     Set global_112 = var_98
  loc_1486CA8:     CVarUnk
  loc_1486CAD:     VerifyVarObj
  loc_1486CB3:     Set var_98 = Me.DGUnderAc
  loc_1486CB9:     LateIdStAd
  loc_1486CCA:   Else
  loc_1486CD4:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(Me.TopCtrl1)
  loc_1486CDC:     var_A0 = CStr(global_112)
  loc_1486CED:     If (var_A0 = "Edit") Then
  loc_1486D14:       Call 0.Method_Txt_Validate0 (CInt(0), var_9C, var_A0, "Select GroupHelp From AcGroup Where GroupHelp='", var_B0)
  loc_1486D1C:       -1 = var_9C.Text
  loc_1486D4A:       var_140 = var_9C & Proc_183_20_FB48CC(global_68, arg_10 & Proc_183_20_FB48CC(var_A0, var_D4, Me.Txt) & "' and GroupHelp<>'")
  loc_1486D5A:       unk_4B415D.Execute var_140 & "'", , 
  loc_1486D99:       If (var_D4.RecordCount > 0) Then
  loc_1486DBD:         MsgBox("Duplicate Account Group not Allowed", &H40, "Validation", var_118, var_138)
  loc_1486DD8:         Set var_98 = Me.Txt
  loc_1486DDE:         Call 0.Method_Txt_Validate0 (CInt(0))
  loc_1486DE6:         var_9C.SetFocus
  loc_1486DF4:         arg_10 = &HFF
  loc_1486DF7:         Exit Sub
  loc_1486DF8:       End If
  loc_1486DF8:     End If
  loc_1486DF8:   End If
  loc_1486DFB: Else
  loc_1486E03:   If (var_92 = CInt(2)) Then
  loc_1486E13:     Set var_98 = Me.Txt
  loc_1486E19:     Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_1486E21:     arg_10 = var_9C.Text
  loc_1486E38:     If (var_A0 = vbNullString) Then
  loc_1486E3B:       Exit Sub
  loc_1486E3C:     End If
  loc_1486E40:     Set var_98 = Me.TopCtrl1
  loc_1486E46:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_1486E5F:     If (CStr() = "Add") Then
  loc_1486E70:       Set var_98 = Me.Txt
  loc_1486E76:       Call 0.Method_Txt_Validate0 (CInt(2), var_9C)
  loc_1486E7E:       var_A0 = var_9C.Text
  loc_1486E97:       var_118 = Ucase(Trim(CVar(var_A0)))
  loc_1486EAD:       Set var_D4 = Me.Txt
  loc_1486EB3:       Call 0.Method_Txt_Validate0 (CInt(0), var_148)
  loc_1486EC3:       var_138 = CVar(var_148.Text) 'String
  loc_1486EF8:       If (var_118 = Ucase(Trim(var_138))) Then
  loc_1486EFF:         var_8A = CByte(1) 'Byte
  loc_1486F03:       End If
  loc_1486F21:       Set var_98 = Me.Txt
  loc_1486F27:       Call 0.Method_Txt_Validate0 (CInt(2), var_9C, var_A0, "Select GroupHelp From AcGroup Where GroupHelp='")
  loc_1486F2F:       var_B0 = var_9C.Text
  loc_1486F40:       var_B8 = Proc_183_20_FB48CC(var_A0, -1)
  loc_1486F54:       unk_4B415D.Execute var_D4 & Proc_183_20_FB48CC(var_A0, var_D4, Me.Txt) & "'", , 
  loc_1486F8D:       If (var_D4.RecordCount > 0) Then
  loc_1486F94:         var_8C = CByte(1) 'Byte
  loc_1486F98:       End If
  loc_1486FAB:       If ((CInt(var_8A) = 1) Or (CInt(var_8C) = 1)) Then
  loc_1486FCF:         MsgBox("Duplicate Alias not Allowed", &H40, "Validation", var_118, var_138)
  loc_1486FEA:         Set var_98 = Me.Txt
  loc_1486FF0:         Call 0.Method_Txt_Validate0 (CInt(2))
  loc_1486FF8:         var_9C.SetFocus
  loc_1487006:         arg_10 = &HFF
  loc_1487009:         Exit Sub
  loc_148700A:       End If
  loc_148700D:     Else
  loc_1487011:       Set var_98 = Me.TopCtrl1
  loc_1487017:       Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_1487030:       If (CStr(var_9C) = "Edit") Then
  loc_1487041:         Set var_98 = Me.Txt
  loc_1487047:         Call 0.Method_Txt_Validate0 (CInt(2), var_9C)
  loc_148704F:         var_A0 = var_9C.Text
  loc_1487068:         var_118 = Ucase(Trim(CVar(var_A0)))
  loc_148707E:         Set var_D4 = Me.Txt
  loc_1487084:         Call 0.Method_Txt_Validate0 (CInt(0), var_148)
  loc_1487094:         var_138 = CVar(var_148.Text) 'String
  loc_14870C9:         If (var_118 = Ucase(Trim(var_138))) Then
  loc_14870D0:           var_8A = CByte(1) 'Byte
  loc_14870D4:         End If
  loc_14870F2:         Set var_98 = Me.Txt
  loc_14870F8:         Call 0.Method_Txt_Validate0 (CInt(2), var_9C, var_A0, "Select GroupHelp From AcGroup Where GroupHelp='")
  loc_1487100:         var_B0 = var_9C.Text
  loc_1487111:         var_B8 = Proc_183_20_FB48CC(var_A0, -1)
  loc_1487135:         var_144 = var_D4 & Proc_183_20_FB48CC(var_A0, var_D4, Me.Txt) & "' and GroupHelp<>'" & Proc_183_20_FB48CC(global_56) & "'"
  loc_148713E:         unk_4B415D.Execute var_144, , 
  loc_148717D:         If (var_D4.RecordCount > 0) Then
  loc_1487184:           var_8C = CByte(1) 'Byte
  loc_1487188:         End If
  loc_148719B:         If ((CInt(var_8A) = 1) Or (CInt(var_8C) = 1)) Then
  loc_14871BF:           MsgBox("Duplicate Alias not Allowed", &H40, "Validation", var_118, var_138)
  loc_14871DA:           Set var_98 = Me.Txt
  loc_14871E0:           Call 0.Method_Txt_Validate0 (CInt(2))
  loc_14871E8:           var_9C.SetFocus
  loc_14871F6:           arg_10 = &HFF
  loc_14871F9:           Exit Sub
  loc_14871FA:         End If
  loc_14871FA:       End If
  loc_14871FA:     End If
  loc_14871FD:   Else
  loc_1487205:     If (var_92 = CInt(4)) Then
  loc_1487215:       Set var_98 = Me.Txt
  loc_148721B:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_1487223:       arg_10 = var_9C.Text
  loc_148723A:       If (var_A0 = vbNullString) Then
  loc_148723D:         Exit Sub
  loc_148723E:       End If
  loc_148728C:       Set var_98 = Me.Txt
  loc_1487292:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_148729A:       ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) = var_9C.Text
  loc_14872B2:       If (var_9C Or (var_A0 <> vbNullString)) Then
  loc_14872CA:         var_98 = Me.Fields
  loc_14872DA:         var_B0 = var_98.Item("Code").Value
  loc_1487304:         var_A0 = "Select GroupCode,GroupName,MainGrCode,Nature,AliasYN,TRADINGYN,GroupNature From AcGroup Where GroupCode='" & CStr(var_B0)
  loc_1487314:         unk_4B415D.Execute var_A0 & "'", var_B0, -1
  loc_148731F:         Set var_88 = var_98
  loc_1487343:         If (var_88.RecordCount > 0) Then
  loc_148736E:           var_17A = IsNull(CVar(var_88.Fields.Item("Nature")))
  loc_1487388:           var_148 = var_88.Fields.Item("Nature")
  loc_14873C0:           Set var_180 = Me.Txt
  loc_14873C6:           Call 0.Method_Txt_Validate0 (CInt(5), var_184, CStr(IIf(var_17A, vbNullString, CVar(var_148))))
  loc_14873CE:           var_184.Text = var_17A
  loc_14873EE:           ' Referenced from:     1487683
  loc_14873FD:           If Not(var_88.EOF) Then
  loc_148743C:             If (var_88.Fields.Item("AliasYN").Value = "N") Then
  loc_148747C:               Set var_D4 = Me.Txt
  loc_1487482:               Call 0.Method_Txt_Validate0 (CInt(4), var_148)
  loc_148748A:               var_148.Text = CStr(Trim(CVar(var_88.Fields.Item("GroupName"))))
  loc_14874BC:               var_9C = var_88.Fields.Item("GroupCode")
  loc_14874DB:               Set var_D4 = Me.Txt
  loc_14874E1:               Call 0.Method_Txt_Validate0 (CInt(4), var_148)
  loc_14874E9:               var_148.Tag = CStr(var_9C.Value)
  loc_148750D:               Set var_98 = Me.Txt
  loc_1487513:               Call 0.Method_Txt_Validate0 (CInt(4), var_9C)
  loc_1487526:               global_92 = var_9C.Text
  loc_1487582:               var_148 = var_88.Fields.Item("GroupNature")
  loc_14875B4:               If CBool((var_88.Fields.Item("GroupNature").Value = "E") Or (var_148.Value = "R")) Then
  loc_14875D1:                 var_9C = var_88.Fields.Item("TradingYN")
  loc_1487622:                 Set var_D4 = Me.Txt
  loc_1487628:                 Call 0.Method_Txt_Validate0 (CInt(6), var_148)
  loc_1487630:                 var_148.Text = CStr(IIf((var_9C.Value = "Y"), "Yes", "No"))
  loc_1487653:               Else
  loc_1487661:                 Set var_98 = Me.Txt
  loc_1487667:                 Call 0.Method_Txt_Validate0 (CInt(6), var_9C)
  loc_148766F:                 var_9C.Text = vbNullString
  loc_148767B:               End If
  loc_148767B:             End If
  loc_148767E:             var_88.MoveNext
  loc_1487683:             GoTo loc_14873EE
  loc_1487686:           End If
  loc_1487686:         End If
  loc_1487686:       End If
  loc_1487689:     Else
  loc_1487691:       If (var_92 = CInt(5)) Then
  loc_14876B2:         var_A0 = Me.ListView.SelectedItem.Text
  loc_14876C4:         Set var_D4 = Me.Txt
  loc_14876CA:         Call 0.Method_Txt_Validate0 (Cancel, var_148)
  loc_14876D2:         var_148.Text = var_A0
  loc_14876E8:       End If
  loc_14876E8:     End If
  loc_14876E8:   End If
  loc_14876E8: End If
  loc_14876ED: Set var_88 = Nothing
  loc_14876F0: Exit Sub
  loc_14876F1: ' Referenced from: 1486AEC
  loc_14876F7: Call 0.Method_arg_50 (var_A0)
  loc_148770C: Proc_183_57_104B0BC(var_A0, "Txt_Validate")
  loc_1487718: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F49504
  'Data Table: 4B4150
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F493FC: On Error Goto loc_F494DA
  loc_F49403: Set var_A4 = Me.ListView
  loc_F4944D: Set var_BC = Me.Txt
  loc_F49453: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F4945B: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F49487: Me.FrmList.Visible = False
  loc_F494A1: var_A0 = CStr(Me.ListView.Tag)
  loc_F494A9: var_C8 = Val(var_A0)
  loc_F494B7: Set var_9C = Me.Txt
  loc_F494BD: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F494C5: var_A4.SetFocus
  loc_F494D9: Exit Sub
  loc_F494DA: ' Referenced from: F493FC
  loc_F494E0: Call 0.Method_arg_50 (var_A0, var_C8)
  loc_F494F5: Proc_183_57_104B0BC(var_A0, "ListView_Click")
  loc_F49501: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_9 'F80A54
  'Data Table: 4B4150
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F80910: On Error Goto loc_F80A2A
  loc_F80922: Me.DGUnderAc.Visible = False
  loc_F80941: If (Me.RecordCount > 0) Then
  loc_F80980:   Set var_B4 = Me.Txt
  loc_F80986:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(4), var_B8)
  loc_F8098E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F809C1:   var_B0 = Me.Fields.Item("Code")
  loc_F809D2:   var_CC = CStr(var_B0.Value)
  loc_F809E0:   Set var_B4 = Me.Txt
  loc_F809E6:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(4), var_B8)
  loc_F809EE:   var_B8.Tag = var_CC
  loc_F80A04: End If
  loc_F80A0F: Set var_A8 = Me.Txt
  loc_F80A15: Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(4))
  loc_F80A1D: var_B0.SetFocus
  loc_F80A29: Exit Sub
  loc_F80A2A: ' Referenced from: F80910
  loc_F80A30: Call 0.Method_arg_50 (var_CC)
  loc_F80A45: Proc_183_57_104B0BC(var_CC, "DGUnderAc_Click")
  loc_F80A51: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBBBF0
  'Data Table: 4B4150
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EBBB5E: On Error Goto loc_EBBBC7
  loc_EBBB67: Me.MoveFirst
  loc_EBBB81: var_8C = "SearchCode='" & MyValue
  loc_EBBB91: Me.Find var_8C & "'", 0, 1
  loc_EBBB9D: Call Proc_201_31_14D21D0(var_A0)
  loc_EBBBBE: Proc_5_0_1107AD0(&HFF, Me)
  loc_EBBBC6: Exit Sub
  loc_EBBBC7: ' Referenced from: EBBB5E
  loc_EBBBCD: Call 0.Method_arg_50 (var_8C, global_96)
  loc_EBBBE2: Proc_183_57_104B0BC(var_8C, "SEARCHBACK")
  loc_EBBBEE: Exit Sub
End Sub

Public Sub Proc_201_27_F600DC(arg_C) 'F600DC
  'Data Table: 4B4150
  Dim var_8C As TextBox
  loc_F5FFC8: On Error Goto loc_F600B3
  loc_F5FFCB: Call Proc_201_28_EF3498()
  loc_F5FFDB: Set var_88 = Me.Txt
  loc_F5FFE1: Call 0.Method_Proc_201_27_F600DC0 (CInt(0))
  loc_F6000A: If (Proc_183_19_E8E68C(var_8C, "Group Name") = 0) Then
  loc_F6000D:   Exit Sub
  loc_F6000E: End If
  loc_F60019: Set var_88 = Me.Txt
  loc_F6001F: Call 0.Method_Proc_201_27_F600DC0 (CInt(4), var_8C)
  loc_F60027: var_94 = "Under Group"
  loc_F60048: If (Proc_183_19_E8E68C(var_8C, var_94) = 0) Then
  loc_F6004B:   Exit Sub
  loc_F6004C: End If
  loc_F60083: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F60086:   Call TopCtrl1_UnknownEvent_16()
  loc_F6008E: Else
  loc_F60098:   Set var_88 = Me.Txt
  loc_F6009E:   Call 0.Method_Proc_201_27_F600DC0 (arg_C, var_8C)
  loc_F600A6:   var_8C.SetFocus
  loc_F600B2: End If
  loc_F600B2: Exit Sub
  loc_F600B3: ' Referenced from: F5FFC8
  loc_F600B9: Call 0.Method_arg_50 (var_94)
  loc_F600CE: Proc_183_57_104B0BC(var_94, "SaveMsg")
  loc_F600DA: Exit Sub
End Sub

Public Sub Proc_201_28_EF3498
  'Data Table: 4B4150
  loc_EF33DC: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_EF33EE:   Me.DGAcName.Visible = False
  loc_EF33F6: End If
  loc_EF3412: If (CBool(Me.DGAcAlias.Visible) = &HFF) Then
  loc_EF3424:   Me.DGAcAlias.Visible = False
  loc_EF342C: End If
  loc_EF3448: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_EF345A:   Me.DGUnderAc.Visible = False
  loc_EF3462: End If
  loc_EF347D: If (Me.FrmList.Visible = &HFF) Then
  loc_EF348C:   Me.FrmList.Visible = False
  loc_EF3494: End If
  loc_EF3494: Exit Sub
  loc_EF3495:  = 
End Sub

Public Sub Proc_201_29_F2E584(arg_C) 'F2E584
  'Data Table: 4B4150
  Dim var_8C As TextBox
  loc_F2E47A: Set var_88 = Me.Txt
  loc_F2E480: Call 0.Method_Proc_201_29_F2E5840 (CInt(0), var_8C)
  loc_F2E488: var_8C.Enabled = arg_C
  loc_F2E4A2: Set var_88 = Me.Txt
  loc_F2E4A8: Call 0.Method_Proc_201_29_F2E5840 (CInt(1), var_8C)
  loc_F2E4B0: var_8C.Enabled = arg_C
  loc_F2E4CA: Set var_88 = Me.Txt
  loc_F2E4D0: Call 0.Method_Proc_201_29_F2E5840 (CInt(2), var_8C)
  loc_F2E4D8: var_8C.Enabled = arg_C
  loc_F2E4F2: Set var_88 = Me.Txt
  loc_F2E4F8: Call 0.Method_Proc_201_29_F2E5840 (CInt(3), var_8C)
  loc_F2E500: var_8C.Enabled = arg_C
  loc_F2E51A: Set var_88 = Me.Txt
  loc_F2E520: Call 0.Method_Proc_201_29_F2E5840 (CInt(4), var_8C)
  loc_F2E528: var_8C.Enabled = arg_C
  loc_F2E542: Set var_88 = Me.Txt
  loc_F2E548: Call 0.Method_Proc_201_29_F2E5840 (CInt(5), var_8C)
  loc_F2E550: var_8C.Enabled = arg_C
  loc_F2E569: Set var_88 = Me.Txt
  loc_F2E56F: Call 0.Method_Proc_201_29_F2E5840 (CInt(6), var_8C)
  loc_F2E577: var_8C.Enabled = False
  loc_F2E583: Exit Sub
End Sub

Public Sub Proc_201_30_EB267C
  'Data Table: 4B4150
  Dim var_98 As TextBox
  loc_EB25FA: Set var_8C = Me.Txt
  loc_EB2600: Call 0.Method_Proc_201_30_EB267CC (var_8E, var_86)
  loc_EB2610: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB2626:   Set var_8C = Me.Txt
  loc_EB262C:   Call 0.Method_Proc_201_30_EB267C0 (CInt(var_86), var_98)
  loc_EB2634:   var_98.Text = vbNullString
  loc_EB2643: Next var_92 'Byte
  loc_EB266B: Proc_183_1_F5BEA0(Me, CStr(-2147483643))
  loc_EB267A: Exit Sub
End Sub

Public Sub Proc_201_31_14D21D0
  'Data Table: 4B4150
  Dim Me As Variant
  Dim var_8C As Fields15
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_4B41A5 As Connection15
  Dim var_88 As Recordset15
  Dim var_B0 As Variant
  Dim var_118 As Fields15
  Dim var_120 As String
  Dim var_160 As Variant
  Dim var_184 As Variant
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_1CC As String
  Dim var_1D0 As Variant
  Dim var_11C As Variant
  Dim var_1DE As Integer
  Dim var_198 As Variant
  Dim unk_4B415D As Connection15
  Dim var_114 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1E8 As TextBox
  loc_14D146C: On Error Goto loc_14D21A5
  loc_14D14C5: unk_4B41A5.Execute CStr("Select U_Name,U_AE,U_EntDt From Acgroup where groupCode='" & Me.Fields.Item("GroupCode").Value & "'  "), var_114, -1
  loc_14D14D0: Set var_88 = var_118
  loc_14D1524: var_118 = var_88.Fields
  loc_14D158D: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_14D15D2: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_14D164C: var_11C = var_88.Fields.Item("U_AE")
  loc_14D16AD: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_14D16CC: var_198 = var_88.Fields.Item("U_EntDt")
  loc_14D16D4: var_1A8 = CVar(var_198) 'Address
  loc_14D16DD: var_1B8 = CVar(Proc_6_38_E69628(var_1A8)) 'String
  loc_14D16F2: Me.LblLDt.Caption = CStr(var_180 & var_1B8)
  loc_14D1741: If (Me.RecordCount > 0) Then
  loc_14D17B0:   Set var_118 = Me.Lbl
  loc_14D17B6:   Call 0.Method_Proc_201_31_14D21D00 (3, var_11C)
  loc_14D17BE:   var_11C.Caption = CStr(IIf((Me.Fields.Item("SysGroup").Value = "Y"), "System Defined", "User Defined"))
  loc_14D181A:   Set var_118 = Me.Txt
  loc_14D1820:   Call 0.Method_Proc_201_31_14D21D00 (CInt(0), var_11C)
  loc_14D1828:   var_11C.Tag = CStr(Me.Fields.Item("GroupCode").Value)
  loc_14D185B:   var_A0 = Me.Fields.Item("GroupName")
  loc_14D187A:   Set var_118 = Me.Txt
  loc_14D1880:   Call 0.Method_Proc_201_31_14D21D00 (CInt(0), var_11C)
  loc_14D1888:   var_11C.Text = CStr(var_A0.Value)
  loc_14D18AC:   Set var_8C = Me.Txt
  loc_14D18B2:   Call 0.Method_Proc_201_31_14D21D00 (CInt(0), var_A0)
  loc_14D18C5:   global_68 = var_A0.Text
  loc_14D1953:   Set var_184 = Me.Txt
  loc_14D1959:   Call 0.Method_Proc_201_31_14D21D00 (CInt(1), var_198)
  loc_14D1961:   var_198.Text = CStr(IIf(IsNull(CVar(Me.Fields.Item("GroupNameBiLang"))), vbNullString, CVar(Me.Fields.Item("GroupNameBiLang"))))
  loc_14D19AC:   var_1DE = IsNull(CVar(Me.Fields.Item("Nature")))
  loc_14D1A01:   Set var_184 = Me.Txt
  loc_14D1A07:   Call 0.Method_Proc_201_31_14D21D00 (CInt(5), var_198, CStr(IIf(var_1DE, vbNullString, CVar(Me.Fields.Item("Nature")))))
  loc_14D1A0F:   var_198.Text = var_1DE
  loc_14D1A83:   var_11C = Me.Fields.Item("GroupNature")
  loc_14D1AB5:   If CBool((Me.Fields.Item("GroupNature").Value = "E") Or (var_11C.Value = "R")) Then
  loc_14D1AD5:     var_A0 = Me.Fields.Item("TradingYN")
  loc_14D1B26:     Set var_118 = Me.Txt
  loc_14D1B2C:     Call 0.Method_Proc_201_31_14D21D00 (CInt(6), var_11C)
  loc_14D1B34:     var_11C.Text = CStr(IIf((var_A0.Value = "Y"), "Yes", "No"))
  loc_14D1B57:   Else
  loc_14D1B65:     Set var_8C = Me.Txt
  loc_14D1B6B:     Call 0.Method_Proc_201_31_14D21D00 (CInt(6), var_A0)
  loc_14D1B73:     var_A0.Text = vbNullString
  loc_14D1B7F:   End If
  loc_14D1B9C:   var_A0 = Me.Fields.Item("SysGroup")
  loc_14D1BAD:   var_F4 = CStr(var_A0.Value)
  loc_14D1BB3:   global_64 = var_F4
  loc_14D1BE2:   Set var_8C = Me.Txt
  loc_14D1BE8:   Call 0.Method_Proc_201_31_14D21D00 (CInt(0), var_A0, var_F4, "Select ID,GroupCode,GroupName,GroupNameBiLang,MainGrCode,Nature,SubLedYN,AliasYN,GroupHelp From AcGroup Where GroupCode='")
  loc_14D1BF0:   var_B0 = var_A0.Tag
  loc_14D1BF9:   var_120 = -1 & var_F4
  loc_14D1C09:   unk_4B415D.Execute Proc_6_38_E69628(CVar(var_11C)) & "'", var_118, var_1DE
  loc_14D1C14:   Set var_88 = var_118
  loc_14D1C40:   If (var_88.RecordCount > 0) Then
  loc_14D1C5D:     var_A0 = var_88.Fields.Item("MainGrCode")
  loc_14D1C83:     If (Len(var_A0.Value) = 3) Then
  loc_14D1C8D:       global_60 = CByte(1)
  loc_14D1C9F:       Set var_8C = Me.Txt
  loc_14D1CA5:       Call 0.Method_Proc_201_31_14D21D00 (CInt(4), var_A0)
  loc_14D1CAD:       var_A0.Text = "Basic Group"
  loc_14D1CC6:       Set var_8C = Me.Txt
  loc_14D1CCC:       Call 0.Method_Proc_201_31_14D21D00 (CInt(4), var_A0)
  loc_14D1CD4:       var_A0.Enabled = False
  loc_14D1CE3:     Else
  loc_14D1CEA:       global_60 = CByte(0)
  loc_14D1D3D:       var_F0 = (Len(var_88.Fields.Item("MainGrCode").Value) - 3)
  loc_14D1D58:       var_160 = 0
  loc_14D1D76:       var_170 = "Select GroupName From AcGroup Where MainGrCode='" & Left(CVar(var_88.Fields.Item("MainGrCode")), CLng((var_88.Fields.Item("MainGrCode").Value = "Y"))) 
  loc_14D1D8D:       unk_4B415D.Execute CStr(var_170 & "'"), var_1A8, -1
  loc_14D1D95:       var_184 = var_184.Fields
  loc_14D1D9D:       var_160 = var_198.Item(var_198)
  loc_14D1DA5:       var_1D0 = var_1D0.Value
  loc_14D1DBC:       Set var_1E4 = Me.Txt
  loc_14D1DC2:       Call 0.Method_Proc_201_31_14D21D00 (CInt(4), var_1E8, CStr(var_1B8))
  loc_14D1DCA:       var_1E8.Text = var_1B8
  loc_14D1E11:       var_A0 = var_88.Fields.Item("MainGrCode")
  loc_14D1E30:       var_11C = var_88.Fields.Item("MainGrCode")
  loc_14D1E49:       var_F0 = (Len(var_11C.Value) - 3)
  loc_14D1E64:       var_160 = 0
  loc_14D1E8F:       var_F4 = CStr("Select GroupCode From AcGroup Where MainGrCode='" & Left(CVar(var_A0), CLng((var_A0.Value = "Y"))) & "'")
  loc_14D1E99:       unk_4B415D.Execute var_F4, var_1A8, -1
  loc_14D1EA1:       var_184 = var_184.Fields
  loc_14D1EA9:       var_160 = var_198.Item(var_198)
  loc_14D1EB1:       var_1D0 = var_1D0.Value
  loc_14D1EC8:       Set var_1E4 = Me.Txt
  loc_14D1ECE:       Call 0.Method_Proc_201_31_14D21D00 (CInt(4), var_1E8, CStr(var_1B8))
  loc_14D1ED6:       var_1E8.Tag = var_1B8
  loc_14D1F06:     End If
  loc_14D1F14:     Set var_8C = Me.Txt
  loc_14D1F1A:     Call 0.Method_Proc_201_31_14D21D00 (CInt(4), var_A0, var_F4)
  loc_14D1F22:     global_60 = var_A0.Text
  loc_14D1F2D:     global_72 = var_F4
  loc_14D1F49:     Set var_8C = Me.Txt
  loc_14D1F4F:     Call 0.Method_Proc_201_31_14D21D00 (CInt(4), var_A0)
  loc_14D1F62:     global_80 = var_A0.Tag
  loc_14D1F70:     ' Referenced from: 14D2191
  loc_14D1F7F:     If Not(var_88.EOF) Then
  loc_14D1FE2:       If CBool((var_88.RecordCount > 1) And (var_88.Fields.Item("AliasYN").Value = "Y")) Then
  loc_14D201E:         Set var_118 = Me.Txt
  loc_14D2024:         Call 0.Method_Proc_201_31_14D21D00 (CInt(2), var_11C)
  loc_14D202C:         var_11C.Text = CStr(var_88.Fields.Item("GroupName").Value)
  loc_14D2073:         global_56 = CStr(var_88.Fields.Item("GroupName").Value)
  loc_14D209B:         var_A0 = var_88.Fields.Item("GroupNameBiLang")
  loc_14D20AC:         var_1DE = IsNull(CVar(var_A0))
  loc_14D20EF:         var_F4 = CStr(IIf(var_1DE, vbNullString, CVar(var_88.Fields.Item("GroupNameBiLang"))))
  loc_14D20FE:         Set var_184 = Me.Txt
  loc_14D2104:         Call 0.Method_Proc_201_31_14D21D00 (CInt(3), var_198, var_F4)
  loc_14D210C:         var_198.Text = var_1DE
  loc_14D212F:       Else
  loc_14D213D:         Set var_8C = Me.Txt
  loc_14D2143:         Call 0.Method_Proc_201_31_14D21D00 (CInt(2), var_A0)
  loc_14D214B:         var_A0.Text = vbNullString
  loc_14D215D:         global_56 = vbNullString
  loc_14D216F:         Set var_8C = Me.Txt
  loc_14D2175:         Call 0.Method_Proc_201_31_14D21D00 (CInt(3), var_A0)
  loc_14D217D:         var_A0.Text = vbNullString
  loc_14D2189:       End If
  loc_14D218C:       var_88.MoveNext
  loc_14D2191:       GoTo loc_14D1F70
  loc_14D2194:     End If
  loc_14D2194:   End If
  loc_14D2197: Else
  loc_14D2197:   Call Proc_201_30_EB267C(global_60)
  loc_14D219C: End If
  loc_14D21A1: Set var_88 = Nothing
  loc_14D21A4: Exit Sub
  loc_14D21A5: ' Referenced from: 14D146C
  loc_14D21AB: Call 0.Method_arg_50 (var_F4)
  loc_14D21B3: var_1CC = "MoveRec"
  loc_14D21C0: Proc_183_57_104B0BC(var_F4)
  loc_14D21CC: Exit Sub
End Sub

Public Sub Proc_201_32_10F696C(arg_C) '10F696C
  'Data Table: 4B4150
  Dim var_8C As Variant
  Dim var_94 As Variant
  Dim var_88 As Label
  Dim var_98 As TextBox
  Dim var_9C As String
  Dim var_B0 As Variant
  loc_10F6640: On Error Goto loc_10F6944
  loc_10F6649: If (arg_C = &HFF) Then
  loc_10F6658:   Set var_88 = Me.Lbl
  loc_10F665E:   Call 0.Method_Proc_201_32_10F696C0 (0, var_8C)
  loc_10F6678:   Me.LblNameBiLang.Left = var_8C.Left
  loc_10F6695:   Me.LblNameBiLang.Top = CDbl(1300)
  loc_10F66AB:   Set var_88 = Me.Txt
  loc_10F66B1:   Call 0.Method_Proc_201_32_10F696C0 (CInt(0), var_8C)
  loc_10F66CC:   Set var_94 = Me.Txt
  loc_10F66D2:   Call 0.Method_Proc_201_32_10F696C0 (CInt(1), var_98)
  loc_10F66DA:   var_98.Left = var_8C.Left
  loc_10F66FA:   Set var_88 = Me.Txt
  loc_10F6700:   Call 0.Method_Proc_201_32_10F696C0 (CInt(1), var_8C)
  loc_10F6708:   var_8C.Top = CDbl(1315)
  loc_10F6720:   Set var_88 = Me.Lbl
  loc_10F6726:   Call 0.Method_Proc_201_32_10F696C0 (0, var_8C)
  loc_10F6740:   Me.LblAliasBiLang.Left = var_8C.Left
  loc_10F675D:   Me.LblAliasBiLang.Top = CDbl(1440)
  loc_10F6773:   Set var_88 = Me.Txt
  loc_10F6779:   Call 0.Method_Proc_201_32_10F696C0 (CInt(0), var_8C)
  loc_10F6794:   Set var_94 = Me.Txt
  loc_10F679A:   Call 0.Method_Proc_201_32_10F696C0 (CInt(3), var_98)
  loc_10F67A2:   var_98.Left = var_8C.Left
  loc_10F67C2:   Set var_88 = Me.Txt
  loc_10F67C8:   Call 0.Method_Proc_201_32_10F696C0 (CInt(3), var_8C)
  loc_10F67D0:   var_8C.Top = CDbl(1455)
  loc_10F67F7:   Me.LblNameBiLang.Caption = "(" & MemVar_1F95090 & ")"
  loc_10F6809:   var_B0 = CVar(MemVar_1F95094) 'String
  loc_10F681B:   Set var_88 = Me.Txt
  loc_10F6821:   Call 0.Method_Proc_201_32_10F696C0 (CInt(1), var_8C)
  loc_10F6831:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_10F6846:   var_9C = "(" & MemVar_1F95090
  loc_10F685A:   Me.LblAliasBiLang.Caption = var_9C & ")"
  loc_10F686C:   var_B0 = CVar(MemVar_1F95094) 'String
  loc_10F687E:   Set var_88 = Me.Txt
  loc_10F6884:   Call 0.Method_Proc_201_32_10F696C0 (CInt(3), var_8C, var_8C.Font)
  loc_10F688C:   var_B0 = var_8C.Font
  loc_10F6894:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_10F68AE:   Me.LblNameBiLang.Visible = True
  loc_10F68C2:   Me.LblAliasBiLang.Visible = True
  loc_10F68CD: Else
  loc_10F68D9:   Me.LblNameBiLang.Visible = False
  loc_10F68EE:   Set var_88 = Me.Txt
  loc_10F68F4:   Call 0.Method_Proc_201_32_10F696C0 (CInt(1), var_8C)
  loc_10F68FC:   var_8C.Visible = False
  loc_10F6914:   Me.LblAliasBiLang.Visible = False
  loc_10F6929:   Set var_88 = Me.Txt
  loc_10F692F:   Call 0.Method_Proc_201_32_10F696C0 (CInt(3), var_8C)
  loc_10F6937:   var_8C.Visible = False
  loc_10F6943: End If
  loc_10F6943: Exit Sub
  loc_10F6944: ' Referenced from: 10F6640
  loc_10F694A: Call 0.Method_arg_50 (var_9C)
  loc_10F695F: Proc_183_57_104B0BC(var_9C, "ConvBiLanguage")
  loc_10F696B: Exit Sub
End Sub

Public Sub Proc_201_33_123011C
  'Data Table: 4B4150
  Dim var_C8 As String
  Dim var_13C As Integer
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_124 As String
  Dim unk_4B415D As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Fields15
  Dim var_140 As Field20
  Dim var_96 As Integer
  Dim var_B8 As Variant
  loc_122FC18: On Error Goto loc_12300DF
  loc_122FC29: If (Proc_183_56_FE8B08(global_96) = &HFF) Then
  loc_122FC2C:   Exit Sub
  loc_122FC2D: End If
  loc_122FC38: If (global_64 = "Y") Then
  loc_122FC5C:   MsgBox("System Group, Can not be Deleted", &H40, "Validation Check", var_F8, var_118)
  loc_122FC6C:   Exit Sub
  loc_122FC6D: End If
  loc_122FC73: var_13C = 0
  loc_122FC89: var_C8 = "SELECT COUNT(*) from ACGROUP WHERE LEFT(MAINGRCODE,LEN(MAINGRCODE)-3) ='"
  loc_122FCBB: var_D8 = "Validation Check" & Me.Fields.Item("MainGrCode").Value 
  loc_122FCC4: var_F8 = var_D8 & "'" 
  loc_122FCD2: unk_4B415D.Execute CStr(var_F8), var_118, -1
  loc_122FCDA: var_128 = var_128.Fields
  loc_122FCE2: var_13C = var_12C.Item(var_12C)
  loc_122FCEA: var_140 = var_140.Value
  loc_122FD17: If (var_150 > 0) Then
  loc_122FD33:   MsgBox("Childs Exist Can't Delete it", 0, var_D8, var_F8, var_118)
  loc_122FD43:   Exit Sub
  loc_122FD44: End If
  loc_122FD4A: var_13C = 0
  loc_122FD92: var_D8 = "SELECT COUNT(*) from SUBGROUP WHERE GROUPCODE='" & Me.Fields.Item("GroupCode").Value 
  loc_122FD9B: var_F8 = var_D8 & "'" 
  loc_122FDA9: unk_4B415D.Execute CStr(var_F8), var_118, -1
  loc_122FDB1: var_128 = var_128.Fields
  loc_122FDB9: var_13C = var_12C.Item(var_12C)
  loc_122FDC1: var_140 = var_140.Value
  loc_122FDEE: If (var_150 > 0) Then
  loc_122FE0A:   MsgBox("Ledger A/c Exist Can't Delete it", 0, var_D8, var_F8, var_118)
  loc_122FE1A:   Exit Sub
  loc_122FE1B: End If
  loc_122FE21: var_13C = 0
  loc_122FE69: var_D8 = "SELECT COUNT(*) from LEDGER WHERE GROUPCODE='" & Me.Fields.Item("GroupCode").Value 
  loc_122FE72: var_F8 = var_D8 & "'" 
  loc_122FE80: unk_4B415D.Execute CStr(var_F8), var_118, -1
  loc_122FE88: var_128 = var_128.Fields
  loc_122FE90: var_13C = var_12C.Item(var_12C)
  loc_122FE98: var_140 = var_140.Value
  loc_122FEC5: If (var_150 > 0) Then
  loc_122FEE1:   MsgBox("Ledger Entries Exist Can't Delete it", 0, var_D8, var_F8, var_118)
  loc_122FEF1:   Exit Sub
  loc_122FEF2: End If
  loc_122FF09: If (Me.RecordCount > 0) Then
  loc_122FF43:   If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_122FF4F:     var_174 = Me.AbsolutePosition
  loc_122FF68:     unk_4B415D.BeginTrans var_174
  loc_122FF6F:     var_96 = &HFF
  loc_122FFBA:     var_F8 = "Delete From AcGroup Where GroupCode='" & Me.Fields.Item("GroupCode").Value & "'" 
  loc_122FFBE:     var_124 = CStr(var_F8)
  loc_122FFC8:     unk_4B415D.Execute var_124, var_118, -1
  loc_122FFEA:     unk_4B415D.CommitTrans
  loc_122FFF1:     var_96 = 0
  loc_122FFFF:     Me.Requery -1
  loc_123000F:     Me.Requery -1
  loc_123001F:     Me.Requery -1
  loc_123002F:     Me.Requery -1
  loc_123004B:     If (Me.RecordCount > 0) Then
  loc_1230065:       If (Me.AbsolutePosition > 1) Then
  loc_1230070:         var_B8 = (CVar(Me.AbsolutePosition) - 1)
  loc_123007C:         Me.AbsolutePosition = CLng(Me.Fields.Item("GroupCode").Value)
  loc_1230081:       End If
  loc_1230081:     End If
  loc_123009D:     Proc_5_0_1107AD0(&HFF, Me, global_96, 0, var_96)
  loc_12300A5:     Call Proc_201_31_14D21D0(var_128, var_96, var_150)
  loc_12300AA:   End If
  loc_12300AD: Else
  loc_12300CE:   MsgBox("No Records To Delete!", &H40, "Information", var_F8, var_118)
  loc_12300DE: End If
  loc_12300DE: Exit Sub
  loc_12300DF: ' Referenced from: 122FC18
  loc_12300E5: If (var_96 = &HFF) Then
  loc_12300EE:   unk_4B415D.RollbackTrans
  loc_12300F3: End If
  loc_12300F9: Call 0.Method_arg_50 (var_124, var_150)
  loc_123010E: Proc_183_57_104B0BC(var_124, "UpdateDataBaseDelete")
  loc_123011A: Exit Sub
End Sub

Public Sub Proc_201_34_15C35EC
  'Data Table: 4B4150
  Dim var_CC As String
  Dim var_D0 As String
  Dim var_D4 As String
  Dim var_D8 As String
  Dim unk_4B415D As Connection15
  Dim var_8C As Recordset15
  Dim var_E8 As Variant
  Dim Me As Recordset15
  Dim var_FC As Variant
  Dim var_104 As Variant
  Dim var_F8 As Variant
  Dim var_94 As Integer
  Dim var_96 As Integer
  Dim var_11C As TextBox
  Dim var_120 As String
  Dim var_90 As Recordset15
  Dim var_A8 As Integer
  Dim var_A6 As Integer
  Dim var_148 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_118 As Field20
  Dim var_92 As Integer
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_1BC As Variant
  Dim var_1CC As String
  Dim var_1DC As Variant
  Dim var_20C As String
  Dim var_21C As Variant
  Dim var_2AC As Variant
  Dim var_2DC As String
  Dim var_2EC As Variant
  Dim var_33C As Variant
  Dim var_360 As String
  Dim var_364 As String
  Dim var_368 As String
  Dim var_370 As String
  Dim var_374 As String
  Dim var_380 As String
  Dim var_378 As TextBox
  Dim var_398 As String
  Dim var_38C As TextBox
  Dim var_114 As Variant
  Dim var_26C As Variant
  Dim var_30C As Variant
  Dim var_37C As String
  Dim var_390 As String
  Dim var_3B4 As TextBox
  Dim var_3C0 As String
  loc_15C23DC: On Error Goto loc_15C35B0
  loc_15C23ED: If (Proc_183_55_FE8490(global_96) = &HFF) Then
  loc_15C23F0:   Exit Sub
  loc_15C23F1: End If
  loc_15C2408: var_CC = "Select * FROM ACGROUP WHERE GROUPCODE='" & global_76
  loc_15C2419: var_D4 = var_CC & "' AND GROUPNAME='" & global_68
  loc_15C2429: unk_4B415D.Execute var_D4 & "'", var_F8, -1
  loc_15C2434: Set var_8C = var_FC
  loc_15C245C: If (var_8C.RecordCount > 0) Then
  loc_15C248D:   var_B8 = CStr(Me.Fields.Item("GroupCode").Value)
  loc_15C24C0:   Proc_183_3_E7DD58(var_114, CVar(var_8C.Fields.Item("CURRENTBALANCE")))
  loc_15C2501:   var_C4 = CStr(var_8C.Fields.Item("MainGrCode").Value)
  loc_15C2536:   var_AC = Proc_183_2_E5AE94(CVar(var_8C.Fields.Item("SysGroup")), CSng(var_114))
  loc_15C256A:   var_94 = CInt(var_8C.Fields.Item("ID").Value)
  loc_15C25A2:   var_96 = CInt(var_8C.Fields.Item("ID").Value)
  loc_15C25C9:   var_104 = var_8C.Fields.Item("Site_Code")
  loc_15C25D1:   var_F8 = var_104.Value
  loc_15C25DA:   var_C8 = CStr(var_F8)
  loc_15C25F5:   Set var_FC = Me.Txt
  loc_15C25FB:   Call 0.Method_Proc_201_34_15C35EC0 (CInt(4), var_104, var_CC)
  loc_15C2603:   var_96 = var_104.Tag
  loc_15C261D:   If (var_CC <> global_80) Then
  loc_15C2644:     Call 0.Method_Proc_201_34_15C35EC0 (CInt(4), var_104, var_CC, "Select * FROM ACGROUP WHERE GROUPCODE='", var_F8)
  loc_15C264C:     -1 = var_104.Tag
  loc_15C265C:     var_D8 = var_128 & var_CC & "' AND GROUPNAME='"
  loc_15C266D:     Set var_118 = Me.Txt
  loc_15C2673:     Call 0.Method_Proc_201_34_15C35EC0 (CInt(4), var_11C, var_D4)
  loc_15C267B:     var_D8 = var_11C.Text
  loc_15C2694:     unk_4B415D.Execute var_94 & var_D4 & "'", Me.Txt, 
  loc_15C269F:     Set var_90 = var_128
  loc_15C26C7:     var_100 = var_90.RecordCount
  loc_15C26D5:     If (var_100 > 0) Then
  loc_15C26E6:       Set var_FC = Me.Txt
  loc_15C26EC:       Call 0.Method_Proc_201_34_15C35EC0 (CInt(4), var_104)
  loc_15C26FF:       global_92 = var_104.Text
  loc_15C2738:       var_9C = CStr(var_90.Fields.Item("GroupNature").Value)
  loc_15C2764:       var_F8 = CVar(var_90.Fields.Item("BLORD")) 'Address
  loc_15C276B:       Proc_183_3_E7DD58(var_114)
  loc_15C2774:       var_A8 = CInt(var_114)
  loc_15C27AC:       var_B0 = CStr(var_90.Fields.Item("TradingYN").Value)
  loc_15C27D3:       var_104 = var_90.Fields.Item("MainGrCode")
  loc_15C27E4:       var_B4 = CStr(var_104.Value)
  loc_15C27F3:       var_A6 = 1
  loc_15C27F6:       ' Referenced from: 15C28BE
  loc_15C27F8:       If &HFF Then
  loc_15C27FE:         var_148 = CVar(var_B4) 'String
  loc_15C2810:         var_F8 = "000"
  loc_15C2821:         var_114 = Format(var_A6, var_F8)
  loc_15C2840:         var_138 = 0
  loc_15C285D:         var_CC = "Select COUNT(*) from AcGroup Where MAINGRCODE='" & CStr(1 & var_114)
  loc_15C286D:         unk_4B415D.Execute var_CC & "'", var_F8, -1
  loc_15C2875:         var_FC = var_FC.Fields
  loc_15C287D:         var_138 = var_104.Item(var_104)
  loc_15C2885:         var_118 = var_118.Value
  loc_15C288D:         var_148 = 0
  loc_15C28AC:         If (var_114 > var_148) Then
  loc_15C28B5:           var_A6 = (var_A6 + 1)
  loc_15C28BB:         Else
  loc_15C28BE:         Else
  loc_15C28BE:           GoTo loc_15C27F6
  loc_15C28C1:         End If
  loc_15C28C1:       End If
  loc_15C28C1:     End If
  loc_15C28C4:   Else
  loc_15C28DE:     var_104 = var_8C.Fields.Item("MainGrCode")
  loc_15C28EF:     var_A4 = CStr(var_104.Value)
  loc_15C290A:     Set var_FC = Me.Txt
  loc_15C2910:     Call 0.Method_Proc_201_34_15C35EC0 (CInt(4), var_104, var_CC, var_A6, var_114)
  loc_15C2918:     1 = var_104.Text
  loc_15C2923:     global_92 = var_CC
  loc_15C295C:     var_9C = CStr(var_8C.Fields.Item("GroupNature").Value)
  loc_15C298F:     Proc_183_3_E7DD58(var_114, CVar(var_8C.Fields.Item("BLORD")), var_148)
  loc_15C2998:     var_A8 = CInt(var_114)
  loc_15C29B4:     var_FC = var_8C.Fields
  loc_15C29C4:     var_F8 = CVar(var_FC.Item("TradingYN")) 'Address
  loc_15C29CD:     var_B0 = Proc_183_2_E5AE94(var_F8, var_A8, var_A6)
  loc_15C29D6:   End If
  loc_15C29D6: End If
  loc_15C29DF: unk_4B415D.BeginTrans var_100
  loc_15C29E6: var_92 = &HFF
  loc_15C2A1B: unk_4B415D.Execute "SELECT * FROM ACGROUP WHERE LEFT(MAINGRCODE,LEN('" & var_C4 & "'))='" & var_C4 & "'", var_F8, -1
  loc_15C2A26: Set var_8C = var_FC
  loc_15C2A4E: If (var_8C.RecordCount > 0) Then
  loc_15C2A54:   var_8C.MoveFirst
  loc_15C2A59:   ' Referenced from: 15C2BD7
  loc_15C2A68:   If Not(var_8C.EOF) Then
  loc_15C2A7B:     var_F8 = "MID"
  loc_15C2ABA:     var_27C = IIf((MemVar_1F953B0 = "A"), "MID", "SUBSTRING")
  loc_15C2AD9:     var_104 = var_8C.Fields.Item("MainGrCode")
  loc_15C2AFA:     var_CC = "UPDATE ACGROUP SET SITE_CODE='" & MemVar_1F95070
  loc_15C2B08:     var_D4 = var_CC & "',MainGrLen=LEN('" & var_A4
  loc_15C2B0F:     var_16C = CVar(var_D4 & "'+") 'String
  loc_15C2B28:     var_1BC = var_16C & IIf((MemVar_1F953B0 = "A"), var_F8, "SUBSTRING") & "(MAINGRCODE,LEN('" & CVar(var_C4) 
  loc_15C2B2C:     var_1CC = "')+1,255)),MAINGRCODE='"
  loc_15C2B3F:     var_20C = "'+"
  loc_15C2B44:     var_21C = var_1BC & var_1CC & CVar(var_A4) & var_20C 
  loc_15C2B62:     var_2DC = "')+1,255) WHERE MAINGRCODE='"
  loc_15C2B77:     var_33C = var_21C & var_27C & "(MAINGRCODE,LEN('" & CVar(var_C4) & var_2DC & var_104.Value & "'" 
  loc_15C2B85:     unk_4B415D.Execute CStr(var_33C), var_35C, -1
  loc_15C2BD2:     var_8C.MoveNext
  loc_15C2BD7:     GoTo loc_15C2A59
  loc_15C2BDA:   End If
  loc_15C2BDA: End If
  loc_15C2BF8: Set var_FC = Me.Txt
  loc_15C2BFE: Call 0.Method_Proc_201_34_15C35EC0 (CInt(0), var_104, var_CC, "Update AcGroup Set GroupName='", var_33C, -1)
  loc_15C2C06: var_3B0 = var_104.Text
  loc_15C2C0F: var_D0 = var_118 & var_CC
  loc_15C2C27: Set var_118 = Me.Txt
  loc_15C2C2D: Call 0.Method_Proc_201_34_15C35EC0 (CInt(1), var_11C, var_D4, var_D0 & "',GroupNameBiLang='")
  loc_15C2C35: var_FC = var_11C.Text
  loc_15C2C53: var_364 = var_92 & var_D4 & "',GroupNature='" & var_9C & "',MainGrCode='"
  loc_15C2C6A: var_370 = CStr(Len(var_A4))
  loc_15C2C75: var_380 = var_364 & var_A4 & "',MainGrLEN=" & var_370 & ",Nature='"
  loc_15C2C86: Set var_128 = Me.Txt
  loc_15C2C8C: Call 0.Method_Proc_201_34_15C35EC0 (CInt(5), var_378, var_37C)
  loc_15C2C94: var_380 = var_378.Text
  loc_15C2CA4: var_398 = var_A8 & var_37C & "',AliasYN='N',GroupHelp='"
  loc_15C2CB5: Set var_388 = Me.Txt
  loc_15C2CBB: Call 0.Method_Proc_201_34_15C35EC0 (CInt(0), var_38C, var_390)
  loc_15C2CC3: var_398 = var_38C.Text
  loc_15C2CFB: Proc_183_7_EB17D4(var_F8, MemVar_1F950EC)
  loc_15C2D16: var_17C = CVar(var_F8 & Proc_183_20_FB48CC(var_390) & "',U_Name='" & MemVar_1F950C8 & "',U_EntDt=") & var_F8 & ",U_AE='E',BlOrd=" & CVar(var_A8) 
  loc_15C2D2E: Proc_183_9_EAB2F0(var_1BC, var_AC)
  loc_15C2D4E: Proc_183_9_EAB2F0(var_21C, var_B0)
  loc_15C2D6E: Proc_183_9_EAB2F0(var_27C, MemVar_1F95070)
  loc_15C2D92: var_2EC = var_17C & ",SysGroup=" & var_1BC & ",TradingYN=" & var_21C & ",Site_Code=" & var_27C & " Where ID=" & CVar(var_94) & " AND SITE_CODE='" 
  loc_15C2DB3: unk_4B415D.Execute CStr(var_2EC & CVar(var_C8) & "'"), , 
  loc_15C2E53: Set var_FC = Me.Txt
  loc_15C2E59: Call 0.Method_Proc_201_34_15C35EC0 (CInt(5), var_104, var_D0, "Update AcGroup Set GroupNature='" & var_9C & "',Nature='")
  loc_15C2E61: var_26C = var_104.Text
  loc_15C2E6A: var_D8 = -1 & var_D0
  loc_15C2E7F: Proc_183_9_EAB2F0(var_F8, var_B0)
  loc_15C2E9F: Proc_183_9_EAB2F0(var_17C, MemVar_1F95070)
  loc_15C2EBA: var_1DC = CVar(var_D0 & "',GroupNameBiLang='" & "',TradingYN=") & var_F8 & ",Site_Code=" & var_17C & " WHERE LEFT(MAINGRCODE,LEN('" & CVar(var_A4) 
  loc_15C2ECD: var_21C = var_1DC & "'))='" & CVar(var_A4) 
  loc_15C2EE4: unk_4B415D.Execute CStr(var_21C & "'"), var_118, 
  loc_15C2F46: Set var_FC = Me.Txt
  loc_15C2F4C: Call 0.Method_Proc_201_34_15C35EC0 (CInt(5), var_104, var_D0, "Update SubGroup Set SubGroup.GroupNature='" & var_9C & "',SubGroup.Nature='")
  loc_15C2F54: var_1BC = var_104.Text
  loc_15C2F5D: var_D8 = -1 & var_D0
  loc_15C2F72: Proc_183_9_EAB2F0(var_F8, MemVar_1F95070)
  loc_15C2F83: var_16C = CVar(var_D0 & "',GroupNameBiLang='" & "',Site_Code=") & var_F8 & " WHERE GROUPCODE='" 
  loc_15C2F90: var_17C = var_16C & CVar(global_76) 
  loc_15C2F9D: var_120 = CStr(var_17C & "'")
  loc_15C2FA7: unk_4B415D.Execute var_120, var_118, 
  loc_15C3008: unk_4B415D.Execute "UPDATE LEDGER SET GROUPNATURE='" & var_9C & "' Where GROUPCODE='" & global_76 & "'", var_F8, -1
  loc_15C304A: Proc_183_9_EAB2F0(var_F8, MemVar_1F95070, CVar("Select ID From AcGroup Where GroupName='" & global_56 & "' AND Site_Code="), var_16C)
  loc_15C3052: var_158 = -1 & var_F8 
  loc_15C3060: unk_4B415D.Execute CStr(CVar(var_D0 & "',GroupNameBiLang='" & "',Site_Code=") & var_F8), var_FC, var_FC
  loc_15C3097: If (var_FC.RecordCount > 0) Then
  loc_15C30D5:   Proc_183_9_EAB2F0(var_F8, MemVar_1F95070, CVar("Select ID From AcGroup Where GroupName='" & global_56 & "' AND Site_Code="), var_16C, -1)
  loc_15C30EB:   unk_4B415D.Execute CStr(var_FC & var_F8), var_104, 0
  loc_15C30F3:   var_118 = var_FC.Fields
  loc_15C30FB:    = var_104.Item(var_17C)
  loc_15C3103:    = var_118.Value
  loc_15C310C:   var_94 = CInt(var_17C)
  loc_15C315A:   Proc_183_9_EAB2F0(var_F8, MemVar_1F95070, CVar("Delete From AcGroup Where ID=" & CStr(var_94) & " AND Site_Code="), var_16C)
  loc_15C3162:   var_158 = -1 & var_F8 
  loc_15C3170:   unk_4B415D.Execute CStr(var_FC & var_F8), var_FC, var_94
  loc_15C318C: End If
  loc_15C3197: Set var_FC = Me.Txt
  loc_15C319D: Call 0.Method_Proc_201_34_15C35EC0 (CInt(2))
  loc_15C31A5: var_F8 = CVar(var_104) 'Address
  loc_15C31C6: If CBool(Trim(var_F8) <> vbNullString) Then
  loc_15C31F5:   Proc_183_9_EAB2F0(var_F8, MemVar_1F95070, "Select isnull(max(ID),0) From AcGroup WHERE Site_Code=", var_FC & var_F8, -1, var_FC)
  loc_15C320B:   unk_4B415D.Execute CStr(var_104 & var_F8), 0, var_118
  loc_15C321B:    = var_104.Item(var_104)
  loc_15C3223:    = var_118.Value
  loc_15C3230:   var_17C = (var_FC.Fields + 1)
  loc_15C3235:   var_94 = CInt(var_17C)
  loc_15C326A:   var_D0 = "Insert Into AcGroup (ID,Site_Code,GroupCode,GroupName,GroupNameBiLang,GroupNature,MainGrCode,Nature,AliasYN,GroupHelp,U_Name,U_EntDt,U_AE,BlOrd,SysGroup,TradingYN,LOGSITE_CODE,MAINGRLEN) Values (" & CStr(var_94)
  loc_15C3290:   Set var_FC = Me.Txt
  loc_15C3296:   Call 0.Method_Proc_201_34_15C35EC0 (CInt(0), var_104, var_120, var_D0 & ",'" & MemVar_1F95070 & "','")
  loc_15C329E:   var_30C = var_104.Tag
  loc_15C32A7:   var_360 = -1 & var_120
  loc_15C32AE:   var_368 = var_92 & var_D0 & ",'" & "',GroupNature='" & var_9C & "','"
  loc_15C32BF:   Set var_118 = Me.Txt
  loc_15C32C5:   Call 0.Method_Proc_201_34_15C35EC0 (CInt(2), var_11C, var_364)
  loc_15C32CD:   var_368 = var_11C.Text
  loc_15C32DD:   var_374 = var_3CC & var_364 & "','"
  loc_15C32EE:   Set var_128 = Me.Txt
  loc_15C32F4:   Call 0.Method_Proc_201_34_15C35EC0 (CInt(3), var_378, var_370)
  loc_15C32FC:   var_374 = var_378.Text
  loc_15C3339:   Set var_388 = Me.Txt
  loc_15C333F:   Call 0.Method_Proc_201_34_15C35EC0 (CInt(5), var_38C)
  loc_15C3368:   Set var_3B0 = Me.Txt
  loc_15C336E:   Call 0.Method_Proc_201_34_15C35EC0 (CInt(2), var_3B4)
  loc_15C3392:   var_3C0 = var_94 & var_370 & "','" & var_9C & "','" & var_A4 & "','" & var_38C.Text & "','Y','" & Proc_183_20_FB48CC(var_3B4.Text) & "','"
  loc_15C33A6:   var_E8 = MemVar_1F950EC
  loc_15C33AE:   Proc_183_7_EB17D4(var_F8, var_E8)
  loc_15C33E1:   Proc_183_9_EAB2F0(var_1BC, var_AC)
  loc_15C3401:   Proc_183_9_EAB2F0(var_21C, var_B0)
  loc_15C3421:   Proc_183_9_EAB2F0(var_27C, MemVar_1F95078)
  loc_15C3432:   var_2AC = CVar(var_3C0 & MemVar_1F950C8 & "',") & var_F8 & ",'E'," & CVar(var_A8) & "," & var_1BC & "," & var_21C & "," & var_27C & "," 
  loc_15C3455:   unk_4B415D.Execute CStr(var_2AC & CVar(Len(var_A4)) & ")"), , 
  loc_15C34D3: End If
  loc_15C34D9: unk_4B415D.CommitTrans
  loc_15C34E0: var_92 = 0
  loc_15C34EE: Me.Requery -1
  loc_15C34FE: Me.Requery -1
  loc_15C350E: Me.Requery -1
  loc_15C351E: Me.Requery -1
  loc_15C352E: Me.Requery -1
  loc_15C3558: Me.Find "SearchCode='" & var_B8 & "'", 0, 1
  loc_15C3579: var_CC = "INI"
  loc_15C3587: Call Proc_201_29_F2E584(Proc_5_1_100EC1C(var_CC, Me, global_96))
  loc_15C3592: Call Proc_201_31_14D21D0(var_E8)
  loc_15C359C: Set var_8C = Nothing
  loc_15C35A4: Set var_90 = Nothing
  loc_15C35AC: Set var_88 = Nothing
  loc_15C35AF: Exit Sub
  loc_15C35B0: ' Referenced from: 15C23DC
  loc_15C35B6: If (var_92 = &HFF) Then
  loc_15C35BF:   unk_4B415D.RollbackTrans
  loc_15C35C4: End If
  loc_15C35CA: Call 0.Method_arg_50 (var_CC)
  loc_15C35DF: Proc_183_57_104B0BC(var_CC, "UpdateDataBaseEdit")
  loc_15C35EB: Exit Sub
End Sub
