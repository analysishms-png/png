VERSION 5.00
Begin VB.Form FrmVenueFeat
  Caption = "VenueFeature"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10440
  ClientHeight = 5610
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3315
    Top = 1950
    Width = 1005
    Height = 285
    Text = "Active"
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10440
    Height = 450
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3315
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
  Begin DataGrid DGHelp
    Left = 9870
    Top = 3990
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin MSFlexGrid FGPoint
    Left = 10185
    Top = 2250
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 4
  End
  Begin Label LbStatus
    Caption = "Status"
    Index = 1
    ForeColor = &HFF0000&
    Left = 1965
    Top = 1950
    Width = 585
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 420
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 135
    Top = 8805
    Width = 2430
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
    Left = 150
    Top = 8475
    Width = 2520
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
  Begin Label LblName
    Caption = "Venu Feature"
    Index = 0
    ForeColor = &HFF0000&
    Left = 1965
    Top = 1635
    Width = 1290
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

Attribute VB_Name = "FrmVenueFeat"


Private Sub TopCtrl1_UnknownEvent_A 'ED5064
  'Data Table: 44E534
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_ED4FB0: On Error Goto loc_ED505E
  loc_ED4FD6: Call Proc_238_28_E7A12C(Proc_5_1_100EC1C("ADD", Me))
  loc_ED4FE1: Call Proc_238_27_EB060C(global_52)
  loc_ED4FF1: Set var_8C = Me.Txt
  loc_ED4FF7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED4FFF: var_94.SetFocus
  loc_ED5019: Set var_8C = Me.Txt
  loc_ED501F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_ED5027: var_94.Text = "Active"
  loc_ED5040: Me.LblUser.Caption = vbNullString
  loc_ED5055: Me.LblLDt.Caption = vbNullString
  loc_ED505D: Exit Sub
  loc_ED505E: ' Referenced from: ED4FB0
  loc_ED505E: Proc_6_60_E63754(var_94)
  loc_ED5063: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC4C3C
  'Data Table: 44E534
  loc_EC4BA4: On Error Goto loc_EC4C34
  loc_EC4BDE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC4BED:   Set var_110 = Me
  loc_EC4C04:   Call Proc_238_28_E7A12C(Proc_5_1_100EC1C("INI", var_110))
  loc_EC4C0F:   Call Proc_238_29_E87618(global_52)
  loc_EC4C14:   Call Proc_238_30_120E89C()
  loc_EC4C1C: Else
  loc_EC4C22:   Call 0.Method_arg_1E8 (var_110)
  loc_EC4C2A:   Call var_110.SetFocus
  loc_EC4C33: End If
  loc_EC4C33: Exit Sub
  loc_EC4C34: ' Referenced from: EC4BA4
  loc_EC4C34: Proc_6_60_E63754()
  loc_EC4C39: Exit Sub
  loc_EC4C3A:  = 
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1144254
  'Data Table: 44E534
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_44E540 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  Dim var_43F8 As String
  loc_1143EF4: On Error Goto loc_11441FB
  loc_1143F05: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_1143F08:   Exit Sub
  loc_1143F09: End If
  loc_1143F3B: var_D4 = "Venue Master"
  loc_1143F83: If (Proc_6_108_101061C(MemVar_1F95044, "VenueFeatures", "Feature", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_1143F86:   Exit Sub
  loc_1143F87: End If
  loc_1143FBE: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_1143FC3:   var_96 = 0
  loc_1143FCF:   unk_44E540.BeginTrans var_D0
  loc_1143FD6:   var_96 = &HFF
  loc_1143FEA:   var_94 = Me.Bookmark 'Variant
  loc_1144036:   var_118 = "Delete From FeatureMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_1144044:   unk_44E540.Execute CStr(var_118), var_138, -1
  loc_114408F:   var_168 = 0
  loc_11440A2:   var_160 = 0
  loc_11440AD:   var_15C = 0
  loc_11440C0:   var_154 = 0
  loc_11440CB:   var_150 = 0
  loc_11440DE:   var_148 = 0
  loc_114411E:   var_B4 = "FeatureMast"
  loc_1144127:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1144155:   unk_44E540.CommitTrans
  loc_114415C:   var_96 = 0
  loc_114416A:   Me.Requery -1
  loc_114417A:   Me.Requery -1
  loc_114419A:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11441A7:     Me.Bookmark = var_94
  loc_11441AF:   Else
  loc_11441C3:     If (Me.EOF = 0) Then
  loc_11441CC:       Me.MoveLast
  loc_11441D1:     End If
  loc_11441D1:   End If
  loc_11441D1:   Call Proc_238_30_120E89C(var_96, var_148, 0, var_150, var_154)
  loc_11441F2:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_11441FA: End If
  loc_11441FA: Exit Sub
  loc_11441FB: ' Referenced from: 1143EF4
  loc_1144201: If (var_96 = &HFF) Then
  loc_114420A:   unk_44E540.RollbackTrans
  loc_114420F: End If
  loc_1144217: Set var_9C = Err()
  loc_114421D: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_114423E: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_1144251: Exit Sub
  loc_1144252: var_43F8 = var_160
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EEF068
  'Data Table: 44E534
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EEEF98: On Error Goto loc_EEF060
  loc_EEEFA9: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_EEEFAC:   Exit Sub
  loc_EEEFAD: End If
  loc_EEEFD0: Call Proc_238_28_E7A12C(Proc_5_1_100EC1C("EDIT", Me))
  loc_EEEFE9: Set var_8C = Me.Txt
  loc_EEEFEF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EEF002: global_64 = var_94.Text
  loc_EEF01B: Set var_8C = Me.Txt
  loc_EEF021: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EEF029: var_94.SetFocus
  loc_EEF042: Me.LblUser.Caption = vbNullString
  loc_EEF057: Me.LblLDt.Caption = vbNullString
  loc_EEF05F: Exit Sub
  loc_EEF060: ' Referenced from: EEEF98
  loc_EEF060: Proc_6_60_E63754(global_52)
  loc_EEF065: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19650
  'Data Table: 44E534
  loc_E19645: Me.Global.Unload Me
  loc_E1964D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F28D00
  'Data Table: 44E534
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F28C00: On Error Goto loc_F28C98
  loc_F28C0C: var_88 = Me.RecordCount
  loc_F28C1A: If (var_88 <= 0) Then
  loc_F28C23:   var_B8 = "Information"
  loc_F28C3E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F28C4E:   Exit Sub
  loc_F28C4F: End If
  loc_F28C56: var_10C = "Select FeatureMast.Code As SearchCode,FeatureMast.Name,FeatureMast.Status FROM FeatureMast Where LogSite_Code in ('" & MemVar_1F95078
  loc_F28C5D: MemVar_1F950E4 = var_10C & "','HO') Order by FeatureMast.Name"
  loc_F28C6A: MemVar_1F95120 = Me
  loc_F28C71: var_10C = "4000,1300"
  loc_F28C77: Proc_6_126_F1C850(var_10C)
  loc_F28C92: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F28C97: Exit Sub
  loc_F28C98: ' Referenced from: F28C00
  loc_F28CA0: Set var_110 = Err()
  loc_F28CA6: Call 0.Method_arg_1C (var_88)
  loc_F28CB7: If (var_88 <> 0) Then
  loc_F28CC2:   Set var_110 = Err()
  loc_F28CC8:   Call 0.Method_arg_2C (var_10C)
  loc_F28CE9:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F28CFC: End If
  loc_F28CFC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3CAE8
  'Data Table: 44E534
  loc_E3CAD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3CAE0: Call Proc_238_30_120E89C(global_52)
  loc_E3CAE5: Exit Sub
  loc_E3CAE6: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3CB48
  'Data Table: 44E534
  loc_E3CB38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3CB40: Call Proc_238_30_120E89C(global_52)
  loc_E3CB45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E39488
  'Data Table: 44E534
  loc_E39478: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39480: Call Proc_238_30_120E89C(global_52)
  loc_E39485: Exit Sub
  loc_E39486: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E39A28
  'Data Table: 44E534
  loc_E39A18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39A20: Call Proc_238_30_120E89C(global_52)
  loc_E39A25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1086988
  'Data Table: 44E534
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_44E540 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_10866F0: On Error Goto loc_108693C
  loc_1086717: unk_44E540.Execute "select * FROM FeatureMast Where LogSite_Code in ('" & MemVar_1F95078 & "','HO')order by Name", var_C4, -1
  loc_1086722: Set var_88 = var_C8
  loc_1086738: var_CC = var_88.RecordCount
  loc_1086746: If (var_CC = 0) Then
  loc_1086762:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1086772:   Exit Sub
  loc_1086773: End If
  loc_1086782: var_A4 = MemVar_1F950B4 & "\VenueFeat.ttx"
  loc_1086789: Set var_C8 = var_88 
  loc_1086795: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108679F: Set var_88 = var_C8
  loc_10867A5: var_B4 = CVar(var_12E) 'Integer
  loc_10867A8: var_98 = var_B4 'Variant
  loc_10867C4: var_A0 = MemVar_1F950B4 & "\VenueFeat.RPT"
  loc_10867CD: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_10867D8: MemVar_1F951E8 = var_C8
  loc_10867F3: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_10867FB: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1086807: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1086820:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1086828:   Call 0.Method_arg_20 (var_138)
  loc_1086830:   Call 0.Method_arg_30 (var_A0)
  loc_1086876:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108688C:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1086894:     Call 0.Method_arg_20 (var_138)
  loc_108689C:     Call 0.Method_arg_38 ("'Venue Feature'")
  loc_10868A8:   End If
  loc_10868AB: Next var_132 'Integer
  loc_10868C9: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_10868D1: Call 0.Method_arg_2C (var_DC)
  loc_10868DF: Call 0.Method_arg_150 (var_FC)
  loc_10868EA: Call 0.Method_arg_50 (var_A0)
  loc_10868F4: Set var_138 = Nothing
  loc_108690E: Set var_C8 = MemVar_1F951E8 
  loc_108691A: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_1086925: MemVar_1F951E8 = var_C8
  loc_1086938: Set var_88 = Nothing
  loc_108693B: Exit Sub
  loc_108693C: ' Referenced from: 10866F0
  loc_1086944: Set var_C8 = Err()
  loc_108694A: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1086955: Call 0.Method_arg_50 (var_A4)
  loc_1086971: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1086984: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A74C
  'Data Table: 44E534
  Dim Me As Recordset15
  loc_E0A743: Me.Requery -1
  loc_E0A748: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '124B544
  'Data Table: 44E534
  Dim var_9C As String
  Dim var_D0 As Variant
  Dim unk_44E540 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F0 As Variant
  Dim var_C0 As Variant
  Dim var_100 As Variant
  Dim Me As Recordset15
  Dim var_10C As String
  Dim var_110 As String
  Dim var_11C As String
  Dim var_114 As TextBox
  Dim var_E0 As Variant
  Dim var_108 As String
  Dim var_118 As String
  Dim var_B0 As Variant
  loc_124B03C: On Error Goto loc_124B4F1
  loc_124B043: var_86 = CByte(0) 'Byte
  loc_124B052: Set var_90 = Me.Txt
  loc_124B058: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_124B081: If (Proc_6_27_EA61EC(var_94, "Name") = 0) Then
  loc_124B08B:   Call Txt_GotFocus()
  loc_124B090:   Exit Sub
  loc_124B091: End If
  loc_124B094: Call Proc_238_32_1088114(var_9E, CInt(0))
  loc_124B09F: If (var_9E = &HFF) Then
  loc_124B0A2:   Exit Sub
  loc_124B0A3: End If
  loc_124B0A7: Set var_90 = Me.TopCtrl1
  loc_124B0AD: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_124B0C6: If (CStr() = "Add") Then
  loc_124B0CF:   var_D0 = 0
  loc_124B0EE:   unk_44E540.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From FeatureMast", var_B0, -1
  loc_124B0F6:   var_90 = var_90.Fields
  loc_124B0FE:   var_D0 = var_94.Item(var_94)
  loc_124B106:   var_98 = var_98.Value
  loc_124B139:   var_F0 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_124B167:   var_100 = (1 + Format(CStr(var_E0), "000"))
  loc_124B172:   global_60 = CStr(var_100)
  loc_124B187: Else
  loc_124B1A4:   var_94 = Me.Fields.Item("Code")
  loc_124B1AC:   var_B0 = var_94.Value
  loc_124B1BB:   global_60 = CStr(var_B0)
  loc_124B1CC: End If
  loc_124B1D5: unk_44E540.BeginTrans var_104
  loc_124B1DE: var_86 = CByte(1) 'Byte
  loc_124B1E6: Set var_90 = Me.TopCtrl1
  loc_124B1EC: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_124B205: If (CStr(var_F0) = "Add") Then
  loc_124B21F:   var_9C = "Insert Into FeatureMast(Code,Name,Status,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_60
  loc_124B226:   var_10C = var_9C & "','"
  loc_124B237:   Set var_90 = Me.Txt
  loc_124B23D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_108, var_10C)
  loc_124B245:   var_194 = var_94.Text
  loc_124B24E:   var_110 = -1 & var_108
  loc_124B255:   var_11C = var_110 & "','"
  loc_124B266:   Set var_98 = Me.Txt
  loc_124B26C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_124B274:   var_11C = var_114.Text
  loc_124B2A0:   var_E0 = CVar(var_198 & var_118 & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") 'String
  loc_124B2AE:   Proc_183_7_EB17D4(var_B0, MemVar_1F950EC)
  loc_124B2E0:   unk_44E540.Execute CStr(var_E0 & var_B0 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_E0, 
  loc_124B321: Else
  loc_124B33F:   Set var_90 = Me.Txt
  loc_124B345:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE FeatureMast SET Name='")
  loc_124B34D:   var_194 = var_94.Text
  loc_124B356:   var_108 = -1 & var_9C
  loc_124B35D:   var_110 = var_108 & "',Status='"
  loc_124B36E:   Set var_98 = Me.Txt
  loc_124B374:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_10C)
  loc_124B37C:   var_110 = var_114.Text
  loc_124B3A8:   var_E0 = CVar(var_198 & var_10C & "',SITE_CODE='" & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_124B3AE:   var_C0 = MemVar_1F950EC
  loc_124B3B6:   Proc_183_7_EB17D4(var_B0, var_C0)
  loc_124B3BE:   var_F0 = var_E0 & var_B0 
  loc_124B3C7:   var_100 = var_F0 & " ,U_AE='E' WHERE Code='" 
  loc_124B3EB:   unk_44E540.Execute CStr(var_100 & CVar(global_60) & "'"), , 
  loc_124B425: End If
  loc_124B42B: unk_44E540.CommitTrans
  loc_124B434: var_86 = CByte(0) 'Byte
  loc_124B443: Me.Requery -1
  loc_124B453: Me.Requery -1
  loc_124B480: Me.Find "Code='" & global_60 & "'", 0, 1
  loc_124B490: Set var_90 = Me.TopCtrl1
  loc_124B496: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_124B4AF: If (CStr() = "Add") Then
  loc_124B4B2:   Call TopCtrl1_UnknownEvent_A()
  loc_124B4B7:   Exit Sub
  loc_124B4B8: End If
  loc_124B4CD: var_9C = "INI"
  loc_124B4DB: Call Proc_238_28_E7A12C(Proc_5_1_100EC1C(var_9C, Me))
  loc_124B4E6: Call Proc_238_29_E87618(global_52)
  loc_124B4EB: Call Proc_238_30_120E89C()
  loc_124B4F0: Exit Sub
  loc_124B4F1: ' Referenced from: 124B03C
  loc_124B4FA: If (CInt(var_86) = 1) Then
  loc_124B503:   unk_44E540.RollbackTrans
  loc_124B508: End If
  loc_124B510: Set var_90 = Err()
  loc_124B516: Call 0.Method_arg_2C (var_9C)
  loc_124B52F: MsgBox(CVar(var_9C), &H10, var_E0, var_F0, var_100)
  loc_124B542: Exit Sub
  loc_124B543: () = 
End Sub

Private Sub Form_Load() '107DC70
  'Data Table: 44E534
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_D8 As Variant
  Dim var_C8 As String
  Dim unk_44E540 As Connection15
  loc_107D9E0: On Error Goto loc_107DC29
  loc_107D9EA: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_107D9FE: Me.LblUser.Left = CDbl(13500)
  loc_107DA15: Me.LblUser.Top = CDbl(7800)
  loc_107DA2C: Me.LblLDt.Top = CDbl(8160)
  loc_107DA43: Me.LblLDt.Left = CDbl(13500)
  loc_107DA59: Set var_8C = Me.Txt
  loc_107DA5F: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107DA7E: Me.DGHelp.Left = CVar(var_90.Left)
  loc_107DA9A: Set var_B8 = Me.Txt
  loc_107DAA0: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_107DABB: Set var_8C = Me.Txt
  loc_107DAC1: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107DAD9: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_107DAE8: Me.DGHelp.Top = CVar(var_90.Left)
  loc_107DB04: Set var_8C = Me.TopCtrl1
  loc_107DB0A: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_107DB18: Call 0.Method_arg_50 (var_C8)
  loc_107DB20: var_D8 = CVar(var_C8) 'String
  loc_107DB2E: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D8)
  loc_107DB5D: unk_44E540.Execute "SELECT Code,Name FROM FeatureMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107DB8C: CVarUnk
  loc_107DB91: VerifyVarObj
  loc_107DB9D: LateIdStAd
  loc_107DBCF: unk_44E540.Execute "SELECT * FROM FeatureMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107DC0A: var_C8 = "INI"
  loc_107DC18: Call Proc_238_28_E7A12C(Proc_5_1_100EC1C(var_C8, Me, Me.DGHelp, Me), Me)
  loc_107DC23: Call Proc_238_30_120E89C(Me.TopCtrl1)
  loc_107DC28: Exit Sub
  loc_107DC29: ' Referenced from: 107D9E0
  loc_107DC31: Set var_8C = Err()
  loc_107DC37: Call 0.Method_arg_2C (var_C8)
  loc_107DC58: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_107DC6B: Exit Sub
  loc_107DC6C: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4F68
  'Data Table: 44E534
  Dim var_8C As Label
  Dim var_4301 As Double
  loc_ED4EC6: Call 0.Method_arg_50 (var_88)
  loc_ED4ED8: Me.LblFormCaption.Caption = var_88
  loc_ED4EF1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED4EFD: Set var_A0 = Me.TopCtrl1
  loc_ED4F03: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED4F10: Set var_8C = Me.TopCtrl1
  loc_ED4F16: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED4F30: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED4F4B: Call 0.Method_arg_100 (var_B8)
  loc_ED4F5D: Me.LblFormCaption.Width = var_B8
  loc_ED4F65: Exit Sub
  loc_ED4F66: var_4301 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E28594
  'Data Table: 44E534
  loc_E28577: Set global_52 = Nothing
  loc_E28589: Set global_56 = Nothing
  loc_E28590: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8A2D0
  'Data Table: 44E534
  loc_E8A26C: On Error Goto loc_E8A28C
  loc_E8A283: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8A28B: Exit Sub
  loc_E8A28C: ' Referenced from: E8A26C
  loc_E8A294: Set var_88 = Err()
  loc_E8A29A: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8A2BB: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8A2CE: Exit Sub
  loc_E8A2CF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EAACBC
  'Data Table: 44E534
  Dim Me As Recordset15
  loc_EAAC3A: Set var_88 = Me.Txt
  loc_EAAC40: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EAAC4E: Proc_6_74_E23240(var_8C)
  loc_EAAC5A: Call Proc_238_29_E87618(var_8C)
  loc_EAAC6D: If (Index = CInt(0)) Then
  loc_EAAC87:   If (Me.RecordCount > 0) Then
  loc_EAAC95:     Set var_8C = Me.FGPoint
  loc_EAACAD:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_EAACBB:   End If
  loc_EAACBB: End If
  loc_EAACBB: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FC04B0
  'Data Table: 44E534
  Dim Me As Recordset15
  loc_FC0312: If (CLng(Shift) = &H1B) Then
  loc_FC0315:   Call Proc_238_29_E87618()
  loc_FC031A:   Exit Sub
  loc_FC031B: End If
  loc_FC0329: If (KeyCode = CInt(0)) Then
  loc_FC0349:   Set var_9C = Me.FGPoint
  loc_FC037B:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_FC03E8:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FC03EF:     Set var_9C = Me.DGHelp
  loc_FC040E:     Proc_6_138_106E830(var_9C, global_56, KeyCode, Me.FGPoint, 0)
  loc_FC041C:   End If
  loc_FC041C: End If
  loc_FC0438: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FC0459:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_FC045F:     Call Proc_238_31_E90ACC(KeyCode, 1, var_9C)
  loc_FC0467:   Else
  loc_FC047C:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FC0485:       Proc_6_75_E5335C(Shift, arg_14)
  loc_FC048D:     Else
  loc_FC04A0:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FC04A9:         Proc_6_76_E533C8(Shift, arg_14)
  loc_FC04AE:       End If
  loc_FC04AE:     End If
  loc_FC04AE:   End If
  loc_FC04AE: End If
  loc_FC04AE: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EFED40
  'Data Table: 44E534
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EFEC76: If (KeyAscii = CInt(1)) Then
  loc_EFECA2:   If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_EFECB2:     Set var_CC = Me.Txt
  loc_EFECB8:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFECC0:     var_D0.Text = "Active"
  loc_EFECCF:   Else
  loc_EFECD6:     var_98 = Chr(CLng(arg_10))
  loc_EFECF8:     If (Ucase(var_98) = "N") Then
  loc_EFED08:       Set var_CC = Me.Txt
  loc_EFED0E:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFED16:       var_D0.Text = "Non Active"
  loc_EFED22:     End If
  loc_EFED22:   End If
  loc_EFED24:   arg_10 = 0
  loc_EFED27: End If
  loc_EFED2D: Proc_6_133_E7FB08(var_98, arg_10)
  loc_EFED36: arg_10 = CInt(var_98)
  loc_EFED3C: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC4380
  'Data Table: 44E534
  loc_EC42F2: If (KeyCode = CInt(0)) Then
  loc_EC4311:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC431E:     var_A4 = "Name"
  loc_EC433D:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_EC436F:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC437D:   End If
  loc_EC437D: End If
  loc_EC437D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48FBC
  'Data Table: 44E534
  loc_E48F9A: Set var_88 = Me.Txt
  loc_E48FA0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48FAE: Proc_6_73_E23294(var_8C)
  loc_E48FBA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F03718
  'Data Table: 44E534
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As TextBox
  loc_F03643: var_86 = Cancel
  loc_F0364E: If (var_86 = CInt(0)) Then
  loc_F03654:   Call Proc_238_32_1088114(var_88)
  loc_F0365F:   If (var_88 = &HFF) Then
  loc_F03664:     arg_10 = &HFF
  loc_F03667:     Exit Sub
  loc_F03668:   End If
  loc_F0366B: Else
  loc_F03673:   If (var_86 = CInt(1)) Then
  loc_F03680:     Set var_8C = Me.Txt
  loc_F03686:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F036C1:     If (Ucase(Left(CVar(var_90), 1)) = "Active") Then
  loc_F036D1:       Set var_8C = Me.Txt
  loc_F036D7:       Call 0.Method_Txt_Validate0 (Cancel, var_90, "Active")
  loc_F036DF:       var_90.Text = arg_10
  loc_F036EE:     Else
  loc_F036FB:       Set var_8C = Me.Txt
  loc_F03701:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F03709:       var_90.Text = "Non Active"
  loc_F03715:     End If
  loc_F03715:   End If
  loc_F03715: End If
  loc_F03715: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE394C
  'Data Table: 44E534
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE38A3: Me.DGHelp.Visible = False
  loc_EE38C2: If (Me.RecordCount > 0) Then
  loc_EE38E2:   var_B0 = Me.Fields.Item("Name")
  loc_EE3901:   Set var_B4 = Me.Txt
  loc_EE3907:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE390F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE3925: End If
  loc_EE3930: Set var_A8 = Me.Txt
  loc_EE3936: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE393E: var_B0.SetFocus
  loc_EE394A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E7347C
  'Data Table: 44E534
  loc_E7343A: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E73451: Set var_8C = Me.FGPoint
  loc_E7346D: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E7347B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3CA84
  'Data Table: 44E534
  loc_E3CA78: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3CA7B:   Call DGHelp_UnknownEvent_9()
  loc_E3CA80: End If
  loc_E3CA80: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBFC94
  'Data Table: 44E534
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBFC0A: On Error Goto loc_EBFC4F
  loc_EBFC13: Me.MoveFirst
  loc_EBFC2D: var_8C = "code='" & MyValue
  loc_EBFC3D: Me.Find var_8C & "'", 0, 1
  loc_EBFC49: Call Proc_238_30_120E89C(var_A0)
  loc_EBFC4E: Exit Sub
  loc_EBFC4F: ' Referenced from: EBFC0A
  loc_EBFC57: Set var_A4 = Err()
  loc_EBFC5D: Call 0.Method_arg_2C (var_8C)
  loc_EBFC7E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBFC91: Exit Sub
  loc_EBFC92: Exit Sub
End Sub

Public Sub Proc_238_27_EB060C
  'Data Table: 44E534
  Dim var_98 As TextBox
  loc_EB057E: global_64 = vbNullString
  loc_EB0590: Set var_8C = Me.Txt
  loc_EB0596: Call 0.Method_Proc_238_27_EB060CC (var_8E, var_86)
  loc_EB05A6: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB05BC:   Set var_8C = Me.Txt
  loc_EB05C2:   Call 0.Method_Proc_238_27_EB060C0 (CInt(var_86), var_98)
  loc_EB05CA:   var_98.Text = vbNullString
  loc_EB05E6:   Set var_8C = Me.Txt
  loc_EB05EC:   Call 0.Method_Proc_238_27_EB060C0 (CInt(var_86), var_98)
  loc_EB05F4:   var_98.Tag = vbNullString
  loc_EB0603: Next var_92 'Byte
  loc_EB0609: Exit Sub
End Sub

Public Sub Proc_238_28_E7A12C(arg_C) 'E7A12C
  'Data Table: 44E534
  Dim var_98 As TextBox
  loc_E7A0DA: Set var_8C = Me.Txt
  loc_E7A0E0: Call 0.Method_Proc_238_28_E7A12CC (var_8E, var_86)
  loc_E7A0F0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A106:   Set var_8C = Me.Txt
  loc_E7A10C:   Call 0.Method_Proc_238_28_E7A12C0 (CInt(var_86), var_98)
  loc_E7A114:   var_98.Enabled = arg_C
  loc_E7A123: Next var_92 'Byte
  loc_E7A129: Exit Sub
End Sub

Public Sub Proc_238_29_E87618
  'Data Table: 44E534
  loc_E875C4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E875D6:   Me.DGHelp.Visible = False
  loc_E875DE: End If
  loc_E875FA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E8760C:   Me.FGPoint.Visible = False
  loc_E87614: End If
  loc_E87614: Exit Sub
End Sub

Public Sub Proc_238_30_120E89C
  'Data Table: 44E534
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_44E540 As Connection15
  Dim var_88 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_120E40C: On Error Goto loc_120E857
  loc_120E415: Proc_183_45_E5CCA8(global_52)
  loc_120E431: If (Me.RecordCount <= 0) Then
  loc_120E434:   Call Proc_238_27_EB060C()
  loc_120E43C: Else
  loc_120E492:   unk_44E540.Execute CStr("Select U_Name,U_AE,U_EntDt From FeatureMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1
  loc_120E49D:   Set var_88 = var_11C
  loc_120E4F1:   var_11C = var_88.Fields
  loc_120E55A:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_120E59F:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_120E619:   var_120 = var_88.Fields.Item("U_AE")
  loc_120E632:   var_118 = "entdt :   "
  loc_120E63D:   var_F4 = "Last Update :   "
  loc_120E67A:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_120)) = "E"), var_F4, var_118))
  loc_120E6BF:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_120E72B:   global_60 = CStr(Me.Fields.Item("Name").Value)
  loc_120E776:   Set var_11C = Me.Txt
  loc_120E77C:   Call 0.Method_Proc_238_30_120E89C0 (0, var_120)
  loc_120E784:   var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_120E7D4:   Set var_11C = Me.Txt
  loc_120E7DA:   Call 0.Method_Proc_238_30_120E89C0 (0, var_120)
  loc_120E7E2:   var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_120E823:   var_F8 = Proc_6_38_E69628(CVar(Me.Fields.Item("Status")))
  loc_120E82F:   Set var_11C = Me.Txt
  loc_120E835:   Call 0.Method_Proc_238_30_120E89C0 (1, var_120)
  loc_120E83D:   var_120.Text = var_F8
  loc_120E851: End If
  loc_120E851: Call Proc_238_29_E87618()
  loc_120E856: Exit Sub
  loc_120E857: ' Referenced from: 120E40C
  loc_120E85F: Set var_90 = Err()
  loc_120E865: Call 0.Method_arg_2C (var_F8)
  loc_120E886: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_120E899: Exit Sub
End Sub

Public Sub Proc_238_31_E90ACC(arg_C) 'E90ACC
  'Data Table: 44E534
  Dim var_10C As TextBox
  loc_E90A60: Call Proc_238_29_E87618()
  loc_E90A9C: If (MsgBox("Save Venu Feature ?", 4, "Save", var_E4, var_104) = 6) Then
  loc_E90A9F:   Call TopCtrl1_UnknownEvent_16()
  loc_E90AA7: Else
  loc_E90AB1:   Set var_108 = Me.Txt
  loc_E90AB7:   Call 0.Method_Proc_238_31_E90ACC0 (arg_C)
  loc_E90ABF:   var_10C.SetFocus
  loc_E90ACB: End If
  loc_E90ACB: Exit Sub
End Sub

Public Sub Proc_238_32_1088114
  'Data Table: 44E534
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_44E540 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1087EA7: If (Me.RecordCount = 0) Then
  loc_1087EAA:   Proc_238_32_1088114 = 
  loc_1087EB0: End If
  loc_1087EB4: Set var_90 = Me.TopCtrl1
  loc_1087EBA: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1087ED3: If (CStr() = "Add") Then
  loc_1087F11:   Set var_90 = Me.Txt
  loc_1087F17:   Call 0.Method_Proc_238_32_10881140 (CInt(0), var_A8, var_AC, "Select Count(*) From FeatureMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1087F38:   unk_44E540.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1087F48:    = var_D0.Item()
  loc_1087F50:    = var_E4.Value
  loc_1087F81:   If (var_A8.Text.Fields > 0) Then
  loc_1087F9F:     var_A0 = "Duplicate Name"
  loc_1087FA5:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1087FC0:     Set var_90 = Me.Txt
  loc_1087FC6:     Call 0.Method_Proc_238_32_10881140 (CInt(0))
  loc_1087FCE:     var_A8.SetFocus
  loc_1087FDF:     Proc_238_32_1088114 = &HFF
  loc_1087FE5:   End If
  loc_1087FE8: Else
  loc_1088023:   Set var_90 = Me.Txt
  loc_1088029:   Call 0.Method_Proc_238_32_10881140 (CInt(0), var_A8, var_AC, "Select Count(*) From FeatureMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108805B:   unk_44E540.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_108806B:    = var_D0.Item(var_A8)
  loc_1088073:    = var_E4.Value
  loc_10880A8:   If (var_A8.Text.Fields > 0) Then
  loc_10880CC:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_10880E7:     Set var_90 = Me.Txt
  loc_10880ED:     Call 0.Method_Proc_238_32_10881140 (CInt(0))
  loc_10880F5:     var_A8.SetFocus
  loc_1088106:     Proc_238_32_1088114 = &HFF
  loc_108810C:   End If
  loc_108810C: End If
  loc_108810C: Proc_238_32_1088114 = var_A8
End Sub
