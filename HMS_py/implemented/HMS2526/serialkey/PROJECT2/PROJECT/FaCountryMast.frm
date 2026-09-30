VERSION 5.00
Begin VB.Form FaCountryMast
  Caption = "Country Master"
  BackColor = &HFFC0C0&
  ForeColor = &HC00000&
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  FillColor = &HC00000&
  'Icon = n/a
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12705
  ClientHeight = 9030
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12705
    Height = 450
    TabIndex = 14
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4455
    Top = 2430
    Width = 3285
    Height = 285
    TabIndex = 3
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
    Left = 5595
    Top = 2865
    Width = 4410
    Height = 3150
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 2820
    Top = 3270
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 60
      Top = 45
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 9
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4455
    Top = 2115
    Width = 1170
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 7
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
    Left = 4455
    Top = 1800
    Width = 1170
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 6
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
    Left = 4455
    Top = 1485
    Width = 4245
    Height = 285
    TabIndex = 0
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 6870
    Top = 6150
    Width = 2790
    Height = 285
    TabIndex = 13
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
    Left = 3495
    Top = 6150
    Width = 2880
    Height = 255
    TabIndex = 12
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
    TabIndex = 11
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
    Caption = "Nationality"
    Index = 1
    ForeColor = &HC00000&
    Left = 3090
    Top = 2445
    Width = 1020
    Height = 240
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
  Begin Label LblName
    Caption = "Country Type"
    Index = 3
    ForeColor = &HC00000&
    Left = 3090
    Top = 2115
    Width = 1260
    Height = 240
    TabIndex = 6
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
    Caption = "Short Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 3090
    Top = 1800
    Width = 1125
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
    Caption = "Country Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 3090
    Top = 1485
    Width = 1350
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
End

Attribute VB_Name = "FaCountryMast"

Private global_60 As Variant

Private Sub TopCtrl1_UnknownEvent_A 'EEC8FC
  'Data Table: 452568
  Dim var_88 As Label
  Dim var_98 As TextBox
  Dim var_F01 As Integer
  loc_EEC838: On Error Goto loc_EEC8D2
  loc_EEC848: Me.LblUser.Caption = vbNullString
  loc_EEC85D: Me.LblLDt.Caption = vbNullString
  loc_EEC87A: var_8C = "ADD"
  loc_EEC888: Call Proc_196_28_E7BB4C(Proc_5_1_100EC1C(var_8C, Me))
  loc_EEC893: Call Proc_196_29_EB3700(global_52)
  loc_EEC8A9: If (OpenMode = 2) Then
  loc_EEC8B7:   Set var_88 = Me.Txt
  loc_EEC8BD:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EEC8C5:   var_98.SetFocus
  loc_EEC8D1: End If
  loc_EEC8D1: Exit Sub
  loc_EEC8D2: ' Referenced from: EEC838
  loc_EEC8D8: Call 0.Method_arg_50 (var_8C)
  loc_EEC8ED: Proc_183_57_104B0BC(var_8C, "TopCtrl1_eAdd")
  loc_EEC8F9: Exit Sub
  loc_EEC8FA: var_F01 = var_98
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EED658
  'Data Table: 452568
  loc_EED5A0: On Error Goto loc_EED630
  loc_EED5DA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EED5E9:   Set var_110 = Me
  loc_EED5F2:   var_10C = "INI"
  loc_EED600:   Call Proc_196_28_E7BB4C(Proc_5_1_100EC1C(var_10C, var_110))
  loc_EED60B:   Call Proc_196_30_125AF78(global_52)
  loc_EED610:   Call Proc_196_33_E83938()
  loc_EED618: Else
  loc_EED61E:   Call 0.Method_arg_1E8 (var_110)
  loc_EED626:   Call var_110.SetFocus
  loc_EED62F: End If
  loc_EED62F: Exit Sub
  loc_EED630: ' Referenced from: EED5A0
  loc_EED636: Call 0.Method_arg_50 (var_10C)
  loc_EED63E: var_11C = "TopCtrl1_eCancel"
  loc_EED64B: Proc_183_57_104B0BC(var_10C)
  loc_EED657: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '118320C
  'Data Table: 452568
  Dim Me As Recordset15
  Dim unk_452575 As Connection15
  Dim var_96 As Integer
  Dim var_114 As Variant
  Dim var_B4 As String
  Dim var_C8 As Variant
  loc_1182E58: On Error Goto loc_11831CD
  loc_1182E69: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_1182E6C:   Exit Sub
  loc_1182E6D: End If
  loc_1182E92: var_C8 = Me.Fields.Item("Code").Value
  loc_1182E9A: var_D4 = "State Master"
  loc_1182EE2: If (Proc_183_53_FE0460(MemVar_1F951E0, "State", "Country") = 0) Then
  loc_1182EE5:   Exit Sub
  loc_1182EE6: End If
  loc_1182F13: var_D4 = "Guest Profile"
  loc_1182F5B: If (Proc_183_53_FE0460(MemVar_1F951E0, "GuestProfFor", "Nationality", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_1182F5E:   Exit Sub
  loc_1182F5F: End If
  loc_1182F96: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_1182FA2:   unk_452575.BeginTrans var_D0
  loc_1182FA9:   var_96 = &HFF
  loc_118301B:   unk_452575.Execute CStr("Delete From Country Where Code='" & Me.Fields.Item("Code").Value & "'"), var_134, -1
  loc_1183066:   var_164 = 0
  loc_1183079:   var_15C = 0
  loc_1183084:   var_158 = 0
  loc_1183097:   var_150 = 0
  loc_11830A2:   var_14C = 0
  loc_11830B5:   var_144 = 0
  loc_11830F5:   var_B4 = "Country"
  loc_11830FE:   Proc_154_5_10E3BD4(MemVar_1F951E0, var_B4, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_118312C:   unk_452575.CommitTrans
  loc_1183133:   var_96 = 0
  loc_1183141:   Me.Requery -1
  loc_1183151:   Me.Requery -1
  loc_118316D:   If (Me.RecordCount > 0) Then
  loc_1183187:     If (Me.AbsolutePosition > 1) Then
  loc_1183192:       var_C8 = (CVar(Me.AbsolutePosition) - 1)
  loc_118319E:       Me.AbsolutePosition = CLng(Me.Fields.Item("Code").Value)
  loc_11831A3:     End If
  loc_11831A3:   End If
  loc_11831A3:   Call Proc_196_30_125AF78(var_96, var_144, 0, var_14C, var_150)
  loc_11831C4:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_11831CC: End If
  loc_11831CC: Exit Sub
  loc_11831CD: ' Referenced from: 1182E58
  loc_11831D3: If (var_96 = &HFF) Then
  loc_11831DC:   unk_452575.RollbackTrans
  loc_11831E1: End If
  loc_11831E7: Call 0.Method_arg_50 (var_B4, 0, var_158)
  loc_11831FC: Proc_183_57_104B0BC(var_B4, "TopCtrl1_eDel")
  loc_1183208: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F5EFE0
  'Data Table: 452568
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_F5EEB8: On Error Goto loc_F5EFB5
  loc_F5EEC8: Me.LblUser.Caption = vbNullString
  loc_F5EEDD: Me.LblLDt.Caption = vbNullString
  loc_F5EEF3: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F5EEF6:   Exit Sub
  loc_F5EEF7: End If
  loc_F5EF1A: Call Proc_196_28_E7BB4C(Proc_5_1_100EC1C("EDIT", Me))
  loc_F5EF33: Set var_88 = Me.Txt
  loc_F5EF39: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F5EF4C: global_84 = var_94.Text
  loc_F5EF68: Set var_88 = Me.Txt
  loc_F5EF6E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F5EF76: var_8C = var_94.Text
  loc_F5EF81: global_88 = var_8C
  loc_F5EF9A: Set var_88 = Me.Txt
  loc_F5EFA0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F5EFA8: var_94.SetFocus
  loc_F5EFB4: Exit Sub
  loc_F5EFB5: ' Referenced from: F5EEB8
  loc_F5EFBB: Call 0.Method_arg_50 (var_8C)
  loc_F5EFD0: Proc_183_57_104B0BC(var_8C, "TopCtrl1_eEdit")
  loc_F5EFDC: Exit Sub
  loc_F5EFDF: global_52() = 
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AA34
  'Data Table: 452568
  loc_E1AA29: Me.Global.Unload Me
  loc_E1AA31: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEF488
  'Data Table: 452568
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EEF3C8: On Error Goto loc_EEF460
  loc_EEF3E2: If (Me.RecordCount <= 0) Then
  loc_EEF3EB:   var_B8 = "Information"
  loc_EEF406:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_EEF416:   Exit Sub
  loc_EEF417: End If
  loc_EEF41E: var_10C = "Select Country.Code As SearchCode,Country.Name,Country.ShortName,Country.Type,Country.Nationality FROM Country WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_EEF425: MemVar_1F950E4 = var_10C & "' OR LOGSITE_CODE='HO') Order by Country.Name"
  loc_EEF432: MemVar_1F95120 = Me
  loc_EEF439: var_10C = "3500,1000,1000,2000"
  loc_EEF43F: Proc_183_54_F1EA10(var_10C)
  loc_EEF45A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEF45F: Exit Sub
  loc_EEF460: ' Referenced from: EEF3C8
  loc_EEF466: Call 0.Method_arg_50 (var_10C)
  loc_EEF47B: Proc_183_57_104B0BC(var_10C, "TopCtrl1_eFind")
  loc_EEF487: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E36008
  'Data Table: 452568
  loc_E35FF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36000: Call Proc_196_30_125AF78(global_52)
  loc_E36005: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3B5E8
  'Data Table: 452568
  loc_E3B5D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B5E0: Call Proc_196_30_125AF78(global_52)
  loc_E3B5E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3B648
  'Data Table: 452568
  loc_E3B638: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B640: Call Proc_196_30_125AF78(global_52)
  loc_E3B645: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3B6A8
  'Data Table: 452568
  loc_E3B698: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B6A0: Call Proc_196_30_125AF78(global_52)
  loc_E3B6A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '104C8FC
  'Data Table: 452568
  Dim var_A0 As String
  Dim unk_452575 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  loc_104C6B0: On Error Goto loc_104C8D4
  loc_104C6D7: unk_452575.Execute "select * FROM Country WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_104C6E2: Set var_88 = var_C8
  loc_104C6F8: var_CC = var_88.RecordCount
  loc_104C706: If (var_CC = 0) Then
  loc_104C722:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_104C732:   Exit Sub
  loc_104C733: End If
  loc_104C749: Set var_C8 = var_88 
  loc_104C755: var_12E = CreateFieldDefFile(var_C8, MemVar_1F950B4 & "\Country.ttx")
  loc_104C75F: Set var_88 = var_C8
  loc_104C765: var_B4 = CVar(var_12E) 'Integer
  loc_104C768: var_98 = var_B4 'Variant
  loc_104C784: var_A0 = MemVar_1F950B4 & "\Country.RPT"
  loc_104C78D: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_104C798: MemVar_1F951E8 = var_C8
  loc_104C7B3: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_104C7BB: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_104C7C7: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_104C7E0:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_104C7E8:   Call 0.Method_arg_20 (var_138)
  loc_104C7F0:   Call 0.Method_arg_30 (var_A0)
  loc_104C836:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_104C84C:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_104C854:     Call 0.Method_arg_20 (var_138)
  loc_104C85C:     Call 0.Method_arg_38 ("'Country Master'")
  loc_104C868:   End If
  loc_104C86B: Next var_132 'Integer
  loc_104C889: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_104C891: Call 0.Method_arg_2C (var_DC)
  loc_104C89F: Call 0.Method_arg_150 (var_FC)
  loc_104C8AA: Call 0.Method_arg_50 (var_A0)
  loc_104C8C3: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_104C8D0: Set var_88 = Nothing
  loc_104C8D3: Exit Sub
  loc_104C8D4: ' Referenced from: 104C6B0
  loc_104C8DA: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_104C8EF: Proc_183_57_104B0BC(var_A0, "TopCtrl1_ePrn")
  loc_104C8FB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0AC9C
  'Data Table: 452568
  Dim Me As Recordset15
  loc_E0AC93: Me.Requery -1
  loc_E0AC98: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1303520
  'Data Table: 452568
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_452575 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_11C As String
  Dim var_114 As TextBox
  Dim var_130 As String
  Dim var_128 As TextBox
  Dim var_13C As TextBox
  Dim var_14C As String
  Dim var_168 As Variant
  Dim var_118 As String
  Dim var_12C As String
  Dim var_1BC As Variant
  loc_1302E7C: On Error Goto loc_13034DE
  loc_1302E83: var_86 = CByte(0) 'Byte
  loc_1302E92: Set var_90 = Me.Txt
  loc_1302E98: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1302EC1: If (Proc_183_19_E8E68C(var_94, "Name") = 0) Then
  loc_1302ECB:   Call Txt_GotFocus()
  loc_1302ED0:   Exit Sub
  loc_1302ED1: End If
  loc_1302EDC: Set var_90 = Me.Txt
  loc_1302EE2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_1302F0B: If (Proc_183_19_E8E68C(var_94, "Short Name") = 0) Then
  loc_1302F15:   Call Txt_GotFocus()
  loc_1302F1A:   Exit Sub
  loc_1302F1B: End If
  loc_1302F26: Set var_90 = Me.Txt
  loc_1302F2C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, CInt(1))
  loc_1302F55: If (Proc_183_19_E8E68C(var_94, "Type") = 0) Then
  loc_1302F5F:   Call Txt_GotFocus()
  loc_1302F64:   Exit Sub
  loc_1302F65: End If
  loc_1302F68: Call Proc_196_31_1090638(var_9E, CInt(2))
  loc_1302F73: If (var_9E = &HFF) Then
  loc_1302F76:   Exit Sub
  loc_1302F77: End If
  loc_1302F7B: Set var_90 = Me.TopCtrl1
  loc_1302F81: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(CInt(0))
  loc_1302F9A: If (CStr(var_94) = "Add") Then
  loc_1302FA3:   var_D4 = 0
  loc_1302FC0:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From Country WHERE SITE_CODE='" & MemVar_1F95070
  loc_1302FC7:   var_B4 = CStr(var_94) & "'"
  loc_1302FD0:   unk_452575.Execute var_B4, var_B0, -1
  loc_1302FD8:   var_90 = var_90.Fields
  loc_1302FE0:   var_D4 = var_94.Item(var_94)
  loc_1302FE8:   var_98 = var_98.Value
  loc_1303021:   var_F8 = CVar(Proc_183_15_EAD490(MemVar_1F95070, 2)) 'String
  loc_1303047:   var_E4 = Format(CStr(var_E4), "0000")
  loc_130304F:   var_108 = (1 + var_E4)
  loc_130305A:   global_80 = CStr(var_108)
  loc_130306F: Else
  loc_130308C:   var_94 = Me.Fields.Item("Code")
  loc_13030A3:   global_80 = CStr(var_94.Value)
  loc_13030B4: End If
  loc_13030BD: unk_452575.BeginTrans var_10C
  loc_13030C6: var_86 = CByte(1) 'Byte
  loc_13030CE: Set var_90 = Me.TopCtrl1
  loc_13030D4: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(1)
  loc_13030ED: If (CStr(var_F8) = "Add") Then
  loc_1303107:   var_9C = "Insert Into Country(Code,Name,ShortName,Type,Nationality,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_80
  loc_130310E:   var_E8 = var_9C & "','"
  loc_130311F:   Set var_90 = Me.Txt
  loc_1303125:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_E8)
  loc_130312D:   var_1BC = var_94.Text
  loc_1303136:   var_110 = -1 & var_B4
  loc_130313D:   var_11C = var_110 & "','"
  loc_130314E:   Set var_98 = Me.Txt
  loc_1303154:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_130315C:   var_11C = var_114.Text
  loc_130316C:   var_130 = var_1C0 & var_118 & "','"
  loc_130317D:   Set var_124 = Me.Txt
  loc_1303183:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128, var_12C)
  loc_130318B:   var_130 = var_128.Text
  loc_13031AC:   Set var_138 = Me.Txt
  loc_13031B2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_13C)
  loc_13031F7:   Proc_183_7_EB17D4(var_E4, Date)
  loc_1303208:   var_168 = CVar(var_E4 & var_12C & "','" & var_13C.Text & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") & var_E4 & ",'A','" 
  loc_1303229:   unk_452575.Execute CStr(var_168 & CVar(MemVar_1F95078) & "')"), , 
  loc_1303280: Else
  loc_130329E:   Set var_90 = Me.Txt
  loc_13032A4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE Country SET Name='")
  loc_13032AC:   var_200 = var_94.Text
  loc_13032B5:   var_B4 = -1 & var_9C
  loc_13032BC:   var_110 = var_B4 & "',ShortName = '"
  loc_13032CD:   Set var_98 = Me.Txt
  loc_13032D3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_E8)
  loc_13032DB:   var_110 = var_114.Text
  loc_13032FC:   Set var_124 = Me.Txt
  loc_1303302:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128)
  loc_130332B:   Set var_138 = Me.Txt
  loc_1303331:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_13C)
  loc_1303357:   var_14C = var_1C0 & var_E8 & "',Type='" & var_128.Text & "',Nationality='" & var_13C.Text & "',SITE_CODE='" & MemVar_1F95070 & "',U_name='"
  loc_1303376:   Proc_183_7_EB17D4(var_E4, Date)
  loc_1303382:   var_C4 = ",U_AE='E',LOGSITE_CODE='"
  loc_13033A7:   var_1BC = CVar(var_14C & MemVar_1F950C8 & "',U_EntDt=") & var_E4 & var_C4 & CVar(MemVar_1F95078) & "' WHERE Code='" & CVar(global_80) 
  loc_13033BE:   unk_452575.Execute CStr(var_1BC & "'"), , 
  loc_1303412: End If
  loc_1303418: unk_452575.CommitTrans
  loc_1303421: var_86 = CByte(0) 'Byte
  loc_1303430: Me.Requery -1
  loc_1303440: Me.Requery -1
  loc_130346D: Me.Find "Code='" & global_80 & "'", 0, 1
  loc_130347D: Set var_90 = Me.TopCtrl1
  loc_1303483: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_C4)
  loc_130349C: If (CStr() = "Add") Then
  loc_130349F:   Call TopCtrl1_UnknownEvent_A()
  loc_13034A4:   Exit Sub
  loc_13034A5: End If
  loc_13034BA: var_9C = "INI"
  loc_13034C8: Call Proc_196_28_E7BB4C(Proc_5_1_100EC1C(var_9C, Me))
  loc_13034D3: Call Proc_196_33_E83938(global_52)
  loc_13034D8: Call Proc_196_30_125AF78()
  loc_13034DD: Exit Sub
  loc_13034DE: ' Referenced from: 1302E7C
  loc_13034E7: If (CInt(var_86) = 1) Then
  loc_13034F0:   unk_452575.RollbackTrans
  loc_13034F5: End If
  loc_13034FB: Call 0.Method_arg_50 (var_9C)
  loc_1303503: var_E8 = "TopCtrl1_eSave"
  loc_1303510: Proc_183_57_104B0BC(var_9C)
  loc_130351C: Exit Sub
End Sub

Private Sub Form_Load() '106DFB4
  'Data Table: 452568
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_452575 As Connection15
  loc_106DD34: On Error Goto loc_106DF89
  loc_106DD3E: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_106DD52: Me.LblUser.Left = CDbl(13500)
  loc_106DD69: Me.LblUser.Top = CDbl(7800)
  loc_106DD80: Me.LblLDt.Top = CDbl(8160)
  loc_106DD97: Me.LblLDt.Left = CDbl(13500)
  loc_106DDA7: Call 0.Method_MeC (CDbl(6000))
  loc_106DDB4: Call 0.Method_Me4 (CDbl(17000))
  loc_106DDC7: Set var_8C = Me.Txt
  loc_106DDCD: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_106DDEC: Me.DGHelp.Left = CVar(var_90.Left)
  loc_106DE08: Set var_B8 = Me.Txt
  loc_106DE0E: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_106DE2F: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_106DE47: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_106DE56: Me.DGHelp.Top = CVar(var_90.Left)
  loc_106DE8C: unk_452575.Execute "SELECT Code,Name FROM Country WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_106DEBB: CVarUnk
  loc_106DEC0: VerifyVarObj
  loc_106DECC: LateIdStAd
  loc_106DEFE: unk_452575.Execute "SELECT * FROM Country WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_106DF39: var_C8 = "INI"
  loc_106DF47: Call Proc_196_28_E7BB4C(Proc_5_1_100EC1C(var_C8, Me, Me.DGHelp, Me), Me)
  loc_106DF52: Call Proc_196_30_125AF78(Me.Txt)
  loc_106DF68: If (OpenMode = 1) Then
  loc_106DF75:   Set var_8C = Me.TopCtrl1
  loc_106DF7B:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AE*P")
  loc_106DF83:   Call TopCtrl1_UnknownEvent_A()
  loc_106DF88: End If
  loc_106DF88: Exit Sub
  loc_106DF89: ' Referenced from: 106DD34
  loc_106DF8F: Call 0.Method_arg_50 (var_C8)
  loc_106DFA4: Proc_183_57_104B0BC(var_C8, "Form_Load")
  loc_106DFB0: Exit Sub
End Sub

Private Sub Form_Resize() 'ED59B8
  'Data Table: 452568
  Dim var_8C As Label
  loc_ED5916: Call 0.Method_arg_50 (var_88)
  loc_ED5928: Me.LblFormCaption.Caption = var_88
  loc_ED5941: Me.LblFormCaption.Left = CDbl(0)
  loc_ED594D: Set var_A0 = Me.TopCtrl1
  loc_ED5953: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006()
  loc_ED5960: Set var_8C = Me.TopCtrl1
  loc_ED5966: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_ED5980: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED599B: Call 0.Method_arg_100 (var_B8)
  loc_ED59AD: Me.LblFormCaption.Width = var_B8
  loc_ED59B5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2B840
  'Data Table: 452568
  loc_E2B823: Set global_52 = Nothing
  loc_E2B835: Set global_56 = Nothing
  loc_E2B83C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E6A1D8
  'Data Table: 452568
  loc_E6A190: On Error Goto loc_E6A1AE
  loc_E6A1A5: Proc_183_40_F3169C(Me, KeyCode)
  loc_E6A1AD: Exit Sub
  loc_E6A1AE: ' Referenced from: E6A190
  loc_E6A1B4: Call 0.Method_arg_50 (var_8C)
  loc_E6A1C9: Proc_183_57_104B0BC(var_8C, "Form_KeyDown")
  loc_E6A1D5: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F9A418
  'Data Table: 452568
  Dim var_8C As TextBox
  Dim var_D0 As TextBox
  loc_F9A2C0: On Error Goto loc_F9A3ED
  loc_F9A2CD: Set var_88 = Me.Txt
  loc_F9A2D3: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F9A2E1: Proc_183_28_E216B0(var_8C)
  loc_F9A2ED: Call Proc_196_33_E83938(var_8C)
  loc_F9A300: If (Index = CInt(2)) Then
  loc_F9A310:   ReDim var_98(0 To 1)
  loc_F9A327:   var_98(0) = "India"
  loc_F9A336:   var_98(1) = "Foreign"
  loc_F9A34D:   global_60 = Array(var_98)
  loc_F9A358:   Set var_D0 = Me.ListView
  loc_F9A373:   Set var_8C = Me.Txt
  loc_F9A38D:   Set global_76 = Proc_183_37_EFEF78(var_D0, var_8C, Index, global_60)
  loc_F9A3AB:   Set var_88 = Me.Txt
  loc_F9A3B1:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_F9A3B9:   2 = var_8C.Text
  loc_F9A3CB:   Set var_90 = Me.Txt
  loc_F9A3D1:   Call 0.Method_Txt_GotFocus0 (Index, var_D0, var_D8)
  loc_F9A3D9:   var_D0.Tag = global_60
  loc_F9A3EC: End If
  loc_F9A3EC: Exit Sub
  loc_F9A3ED: ' Referenced from: F9A2C0
  loc_F9A3F3: Call 0.Method_arg_50 (var_D8)
  loc_F9A408: Proc_183_57_104B0BC(var_D8, "Txt_GotFocus")
  loc_F9A414: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10B2C2C
  'Data Table: 452568
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_A0 As TextBox
  Dim var_B0 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As ListView
  loc_10B298C: On Error Goto loc_10B2C02
  loc_10B2999: If (CLng(Shift) = &H1B) Then
  loc_10B299C:   Call Proc_196_33_E83938()
  loc_10B29A1:   Exit Sub
  loc_10B29A2: End If
  loc_10B29A5: var_88 = KeyCode
  loc_10B29B0: If (var_88 = CInt(0)) Then
  loc_10B29BE:   Set var_A0 = Me.Txt
  loc_10B29DE:   Set var_90 = var_A0
  loc_10B29ED:   Proc_183_31_100957C(Me.DGHelp, var_90, CInt(0), global_56)
  loc_10B2A00: Else
  loc_10B2A08:   If (var_88 = CInt(2)) Then
  loc_10B2A2D:     Set var_8C = Me.Txt
  loc_10B2A33:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_A4, Shift)
  loc_10B2A3B:     0 = var_90.Left
  loc_10B2A4D:     Set var_9C = Me.Txt
  loc_10B2A53:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_A8)
  loc_10B2A5B:     1 = var_A0.Top
  loc_10B2A6D:     Set var_AC = Me.Txt
  loc_10B2A73:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0)
  loc_10B2A7B:     var_B4 = var_B0.Height
  loc_10B2A8D:     Set var_B8 = Me.Txt
  loc_10B2A93:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_10B2A9B:     var_C0 = var_BC.Width
  loc_10B2AE3:     Proc_183_36_114A39C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_10B2B07:   End If
  loc_10B2B07: End If
  loc_10B2B42: If ((CBool(Me.ListView.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) Then
  loc_10B2B58:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_10B2B61:     Proc_183_30_E53D10(Shift, arg_14, CInt(var_A4), CInt((var_A8 + var_B4)))
  loc_10B2B66:   End If
  loc_10B2B84:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_10B2B8D:     Call Txt_Validate(KeyCode)
  loc_10B2B98:     If (var_86 = 0) Then
  loc_10B2BD2:       If (MsgBox("Save Record ?", 4, "Save Data", var_13C, var_15C) = 6) Then
  loc_10B2BD5:         Call TopCtrl1_UnknownEvent_16()
  loc_10B2BDA:       End If
  loc_10B2BDA:       Exit Sub
  loc_10B2BDB:     End If
  loc_10B2BDE:   Else
  loc_10B2BF3:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10B2BFC:       Proc_183_29_E53794(Shift, arg_14, var_86)
  loc_10B2C01:     End If
  loc_10B2C01:   End If
  loc_10B2C01: End If
  loc_10B2C01: Exit Sub
  loc_10B2C02: ' Referenced from: 10B298C
  loc_10B2C08: Call 0.Method_arg_50 (var_160, CInt(var_C0))
  loc_10B2C1D: Proc_183_57_104B0BC(var_160, "Txt_KeyDown")
  loc_10B2C29: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E1A99C
  'Data Table: 452568
  Dim arg_10 As Integer
  loc_E1A98A: Proc_183_52_E80008(var_94)
  loc_E1A993: arg_10 = CInt(var_94)
  loc_E1A999: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F2BA44
  'Data Table: 452568
  Dim var_86 As Integer
  loc_F2B948: On Error Goto loc_F2BA1C
  loc_F2B94E: var_86 = KeyCode
  loc_F2B959: If (var_86 = CInt(0)) Then
  loc_F2B978:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F2B985:     var_A4 = "Name"
  loc_F2B9A4:     Proc_183_32_FE97F0(Me.Txt, CInt(0), global_56)
  loc_F2B9B3:   End If
  loc_F2B9B6: Else
  loc_F2B9BE:   If (var_86 = CInt(2)) Then
  loc_F2B9DC:     If (Me.FrmList.Visible = &HFF) Then
  loc_F2BA0B:       Proc_183_35_F2A594(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F2BA1B:     End If
  loc_F2BA1B:   End If
  loc_F2BA1B: End If
  loc_F2BA1B: Exit Sub
  loc_F2BA1C: ' Referenced from: F2B948
  loc_F2BA22: Call 0.Method_arg_50 (var_A4, global_76, Shift)
  loc_F2BA37: Proc_183_57_104B0BC(var_A4, "Txt_KeyUp")
  loc_F2BA43: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4AAF4
  'Data Table: 452568
  loc_E4AAD2: Set var_88 = Me.Txt
  loc_E4AAD8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4AAE6: Proc_183_27_E23198(var_8C)
  loc_E4AAF2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F493AC
  'Data Table: 452568
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim var_8C As ListView
  Dim var_AC As TextBox
  loc_F4929C: On Error Goto loc_F49384
  loc_F492A2: var_86 = Cancel
  loc_F492AD: If (var_86 = CInt(0)) Then
  loc_F492B3:   Call Proc_196_31_1090638(var_88)
  loc_F492BE:   If (var_88 = &HFF) Then
  loc_F492C3:     arg_10 = &HFF
  loc_F492C6:     Exit Sub
  loc_F492C7:   End If
  loc_F492CA: Else
  loc_F492D2:   If (var_86 = CInt(1)) Then
  loc_F492D8:     Call Proc_196_32_106F37C(var_88, arg_10)
  loc_F492E3:     If (var_88 = &HFF) Then
  loc_F492E8:       arg_10 = &HFF
  loc_F492EB:       Exit Sub
  loc_F492EC:     End If
  loc_F492EF:   Else
  loc_F492F7:     If (var_86 = CInt(2)) Then
  loc_F49307:       Set var_8C = Me.Txt
  loc_F4930D:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_F49315:       arg_10 = var_90.Text
  loc_F4932C:       If (var_94 <> vbNullString) Then
  loc_F4934D:         var_94 = Me.ListView.SelectedItem.Text
  loc_F4935F:         Set var_A8 = Me.Txt
  loc_F49365:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_F4936D:         var_AC.Text = var_94
  loc_F49383:       End If
  loc_F49383:     End If
  loc_F49383:   End If
  loc_F49383: End If
  loc_F49383: Exit Sub
  loc_F49384: ' Referenced from: F4929C
  loc_F4938A: Call 0.Method_arg_50 (var_94)
  loc_F4939F: Proc_183_57_104B0BC(var_94, "Txt_Validate")
  loc_F493AB: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F8386C
  'Data Table: 452568
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_C4 As TextBox
  Dim var_A4 As String
  loc_F8372C: On Error Goto loc_F83843
  loc_F83765: If (Me.ListView.ListItems.Count > 0) Then
  loc_F8376C:   Set var_A8 = Me.ListView
  loc_F837B6:   Set var_C0 = Me.Txt
  loc_F837BC:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F837C4:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F837E4: End If
  loc_F837F0: Me.FrmList.Visible = False
  loc_F8380A: var_A4 = CStr(Me.ListView.Tag)
  loc_F83812: var_CC = Val(var_A4)
  loc_F83820: Set var_9C = Me.Txt
  loc_F83826: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_CC), var_A8)
  loc_F8382E: var_A8.SetFocus
  loc_F83842: Exit Sub
  loc_F83843: ' Referenced from: F8372C
  loc_F83849: Call 0.Method_arg_50 (var_A4, var_CC)
  loc_F8385E: Proc_183_57_104B0BC(var_A4, "ListView_Click")
  loc_F8386A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F1555C
  'Data Table: 452568
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F15478: On Error Goto loc_F15532
  loc_F1548A: Me.DGHelp.Visible = False
  loc_F154A9: If (Me.RecordCount > 0) Then
  loc_F154C9:   var_B0 = Me.Fields.Item("Name")
  loc_F154DA:   var_CC = CStr(var_B0.Value)
  loc_F154E8:   Set var_B4 = Me.Txt
  loc_F154EE:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F154F6:   var_B8.Text = var_CC
  loc_F1550C: End If
  loc_F15517: Set var_A8 = Me.Txt
  loc_F1551D: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F15525: var_B0.SetFocus
  loc_F15531: Exit Sub
  loc_F15532: ' Referenced from: F15478
  loc_F15538: Call 0.Method_arg_50 (var_CC)
  loc_F1554D: Proc_183_57_104B0BC(var_CC, "DGHelp_Click")
  loc_F15559: Exit Sub
End Sub

Public Property Get OpenMode() 'E05190
  'Data Table: 452568
  loc_E05189: OpenMode = global_92
End Sub

Public Property Let OpenMode(vNewValue) 'E0274C
  'Data Table: 452568
  Dim MemVar_5F8528 As Integer
  loc_E02749: Exit Sub
  loc_E0274A: MemVar_5F8528 = vNewValue
End Sub

Public Sub SEARCHBACK(MyValue) 'E920A0
  'Data Table: 452568
  Dim Me As Recordset15
  Dim var_8C As String
  loc_E92032: On Error Goto loc_E92077
  loc_E9203B: Me.MoveFirst
  loc_E92055: var_8C = "code='" & MyValue
  loc_E92065: Me.Find var_8C & "'", 0, 1
  loc_E92071: Call Proc_196_30_125AF78(var_A0)
  loc_E92076: Exit Sub
  loc_E92077: ' Referenced from: E92032
  loc_E9207D: Call 0.Method_arg_50 (var_8C)
  loc_E92085: var_A4 = "SEARCHBACK"
  loc_E92092: Proc_183_57_104B0BC(var_8C)
  loc_E9209E: Exit Sub
End Sub

Public Sub Proc_196_28_E7BB4C(arg_C) 'E7BB4C
  'Data Table: 452568
  Dim var_98 As TextBox
  loc_E7BAFA: Set var_8C = Me.Txt
  loc_E7BB00: Call 0.Method_Proc_196_28_E7BB4CC (var_8E, var_86)
  loc_E7BB10: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7BB26:   Set var_8C = Me.Txt
  loc_E7BB2C:   Call 0.Method_Proc_196_28_E7BB4C0 (CInt(var_86), var_98)
  loc_E7BB34:   var_98.Enabled = arg_C
  loc_E7BB43: Next var_92 'Byte
  loc_E7BB49: Exit Sub
End Sub

Public Sub Proc_196_29_EB3700
  'Data Table: 452568
  Dim var_98 As TextBox
  loc_EB366A: global_84 = vbNullString
  loc_EB3674: global_88 = vbNullString
  loc_EB3686: Set var_8C = Me.Txt
  loc_EB368C: Call 0.Method_Proc_196_29_EB3700C (var_8E, var_86)
  loc_EB369C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB36B2:   Set var_8C = Me.Txt
  loc_EB36B8:   Call 0.Method_Proc_196_29_EB37000 (CInt(var_86), var_98)
  loc_EB36C0:   var_98.Text = vbNullString
  loc_EB36DC:   Set var_8C = Me.Txt
  loc_EB36E2:   Call 0.Method_Proc_196_29_EB37000 (CInt(var_86), var_98)
  loc_EB36EA:   var_98.Tag = vbNullString
  loc_EB36F9: Next var_92 'Byte
  loc_EB36FF: Exit Sub
End Sub

Public Sub Proc_196_30_125AF78
  'Data Table: 452568
  Dim Me As Recordset15
  Dim var_F4 As String
  Dim unk_45258E As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_1CC As String
  Dim var_11C As TextBox
  loc_125AA44: On Error Goto loc_125AF50
  loc_125AA4D: Proc_183_45_E5CCA8(global_52)
  loc_125AAA8: unk_45258E.Execute CStr("Select U_Name,U_AE,U_EntDt From country where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_125AAB3: Set var_88 = var_118
  loc_125AB07: var_118 = var_88.Fields
  loc_125AB70: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_125ABB5: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_125AC2F: var_11C = var_88.Fields.Item("U_AE")
  loc_125AC90: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_125ACD5: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_125AD24: If (Me.RecordCount <= 0) Then
  loc_125AD27:   Call Proc_196_29_EB3700()
  loc_125AD2F: Else
  loc_125AD63:   global_80 = CStr(Me.Fields.Item("Name").Value)
  loc_125ADB0:   Set var_118 = Me.Txt
  loc_125ADB6:   Call 0.Method_Proc_196_30_125AF780 (CInt(0), var_11C)
  loc_125ADBE:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_125AE10:   Set var_118 = Me.Txt
  loc_125AE16:   Call 0.Method_Proc_196_30_125AF780 (CInt(0), var_11C)
  loc_125AE1E:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_125AE70:   Set var_118 = Me.Txt
  loc_125AE76:   Call 0.Method_Proc_196_30_125AF780 (CInt(1), var_11C)
  loc_125AE7E:   var_11C.Text = CStr(Me.Fields.Item("ShortName").Value)
  loc_125AED0:   Set var_118 = Me.Txt
  loc_125AED6:   Call 0.Method_Proc_196_30_125AF780 (CInt(2), var_11C)
  loc_125AEDE:   var_11C.Text = CStr(Me.Fields.Item("Type").Value)
  loc_125AF1F:   var_F4 = Proc_6_38_E69628(CVar(Me.Fields.Item("Nationality")))
  loc_125AF2D:   Set var_118 = Me.Txt
  loc_125AF33:   Call 0.Method_Proc_196_30_125AF780 (CInt(3), var_11C)
  loc_125AF3B:   var_11C.Text = var_F4
  loc_125AF4F: End If
  loc_125AF4F: Exit Sub
  loc_125AF50: ' Referenced from: 125AA44
  loc_125AF56: Call 0.Method_arg_50 (var_F4)
  loc_125AF5E: var_1CC = "MoveRec"
  loc_125AF6B: Proc_183_57_104B0BC(var_F4)
  loc_125AF77: Exit Sub
End Sub

Public Sub Proc_196_31_1090638
  'Data Table: 452568
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_452575 As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_10903A8: On Error Goto loc_1090609
  loc_10903C2: If (Me.RecordCount = 0) Then
  loc_10903C5:   Proc_196_31_1090638 = 
  loc_10903CB: End If
  loc_10903CF: Set var_90 = Me.TopCtrl1
  loc_10903D5: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_10903DD: var_A4 = CStr()
  loc_10903EE: If (var_A4 = "Add") Then
  loc_109041E:   Set var_90 = Me.Txt
  loc_1090424:   Call 0.Method_Proc_196_31_10906380 (CInt(0), var_A8, var_A4, "Select Count(*) From Country Where Name='", var_A0, -1)
  loc_1090445:   unk_452575.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_1090455:    = var_C8.Item()
  loc_109045D:    = var_DC.Value
  loc_109048A:   If (var_A8.Text.Fields > 0) Then
  loc_10904A8:     var_A0 = "Duplicate Name"
  loc_10904AE:     MsgBox(var_A0, &H40, "Information", var_10C, var_12C)
  loc_10904C9:     Set var_90 = Me.Txt
  loc_10904CF:     Call 0.Method_Proc_196_31_10906380 (CInt(0))
  loc_10904D7:     var_A8.SetFocus
  loc_10904E8:     Proc_196_31_1090638 = &HFF
  loc_10904EE:   End If
  loc_10904F1: Else
  loc_109051E:   Set var_90 = Me.Txt
  loc_1090524:   Call 0.Method_Proc_196_31_10906380 (CInt(0), var_A8, var_A4, "Select Count(*) From Country Where Name='", var_A0, -1)
  loc_1090556:   unk_452575.Execute var_C8 & var_A4 & "' And Name<>'" & global_84 & "'", 0, var_DC
  loc_1090566:    = var_C8.Item(var_A8)
  loc_109056E:    = var_DC.Value
  loc_109059F:   If (var_A8.Text.Fields > 0) Then
  loc_10905C3:     MsgBox("Duplicate Name", &H40, "Information", var_10C, var_12C)
  loc_10905DE:     Set var_90 = Me.Txt
  loc_10905E4:     Call 0.Method_Proc_196_31_10906380 (CInt(0))
  loc_10905EC:     var_A8.SetFocus
  loc_10905FD:     Proc_196_31_1090638 = &HFF
  loc_1090603:   End If
  loc_1090603: End If
  loc_1090603: Proc_196_31_1090638 = var_A8
  loc_1090609: ' Referenced from: 10903A8
  loc_109060F: Call 0.Method_arg_50 (var_A4)
  loc_1090624: Proc_183_57_104B0BC(var_A4)
  loc_1090630: Proc_196_31_1090638 = "ValidateName"
End Sub

Public Sub Proc_196_32_106F37C
  'Data Table: 452568
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_452575 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_106F10C: On Error Goto loc_106F34D
  loc_106F113: Set var_8C = Me.TopCtrl1
  loc_106F119: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_106F121: var_A0 = CStr()
  loc_106F132: If (var_A0 = "Add") Then
  loc_106F162:   Set var_8C = Me.Txt
  loc_106F168:   Call 0.Method_Proc_196_32_106F37C0 (CInt(1), var_A4, var_A0, "Select Count(*) From Country Where ShortName='", var_9C, -1)
  loc_106F189:   unk_452575.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_106F199:    = var_C4.Item()
  loc_106F1A1:    = var_D8.Value
  loc_106F1CE:   If (var_A4.Text.Fields > 0) Then
  loc_106F1EC:     var_9C = "Duplicate Short Name"
  loc_106F1F2:     MsgBox(var_9C, &H40, "Information", var_108, var_128)
  loc_106F20D:     Set var_8C = Me.Txt
  loc_106F213:     Call 0.Method_Proc_196_32_106F37C0 (CInt(1))
  loc_106F21B:     var_A4.SetFocus
  loc_106F22C:     Proc_196_32_106F37C = &HFF
  loc_106F232:   End If
  loc_106F235: Else
  loc_106F262:   Set var_8C = Me.Txt
  loc_106F268:   Call 0.Method_Proc_196_32_106F37C0 (CInt(1), var_A4, var_A0, "Select Count(*) From Country Where ShortName='", var_9C, -1)
  loc_106F29A:   unk_452575.Execute var_C4 & var_A0 & "' And ShortName<>'" & global_88 & "'", 0, var_D8
  loc_106F2AA:    = var_C4.Item(var_A4)
  loc_106F2B2:    = var_D8.Value
  loc_106F2E3:   If (var_A4.Text.Fields > 0) Then
  loc_106F307:     MsgBox("Duplicate Short Name", &H40, "Information", var_108, var_128)
  loc_106F322:     Set var_8C = Me.Txt
  loc_106F328:     Call 0.Method_Proc_196_32_106F37C0 (CInt(1))
  loc_106F330:     var_A4.SetFocus
  loc_106F341:     Proc_196_32_106F37C = &HFF
  loc_106F347:   End If
  loc_106F347: End If
  loc_106F347: Proc_196_32_106F37C = var_A4
  loc_106F34D: ' Referenced from: 106F10C
  loc_106F353: Call 0.Method_arg_50 (var_A0)
  loc_106F368: Proc_183_57_104B0BC(var_A0)
  loc_106F374: Proc_196_32_106F37C = "ValidateSName"
End Sub

Public Sub Proc_196_33_E83938
  'Data Table: 452568
  loc_E838E8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E838FA:   Me.DGHelp.Visible = False
  loc_E83902: End If
  loc_E8391D: If (Me.FrmList.Visible = &HFF) Then
  loc_E8392C:   Me.FrmList.Visible = False
  loc_E83934: End If
  loc_E83934: Exit Sub
End Sub
