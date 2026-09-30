VERSION 5.00
Begin VB.Form FrmMeterReading
  Caption = "Meter Reading"
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
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 420
    TabIndex = 10
  End
  Begin DataGrid DGFacility
    Left = 7440
    Top = 3045
    Width = 4515
    Height = 2985
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin DataGrid DGLocation
    Left = 7440
    Top = 2505
    Width = 4515
    Height = 2985
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1815
    Top = 900
    Width = 4080
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 30
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
    ForeColor = &HFF0000&
    Left = 1815
    Top = 630
    Width = 4080
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    ForeColor = &HFF0000&
    Left = 2250
    Top = 2430
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 1200
    Top = 4005
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 4
    End
  End
  Begin MSHFlexGrid FGrid
    Left = 1815
    Top = 1230
    Width = 4500
    Height = 7500
    TabIndex = 2
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 8370
    Top = 7365
    Width = 3375
    Height = 285
    TabIndex = 12
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
    Left = 8370
    Top = 7650
    Width = 3330
    Height = 255
    TabIndex = 11
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
    Caption = "Facility Name"
    Index = 1
    ForeColor = &HFF0000&
    Left = 225
    Top = 900
    Width = 1140
    Height = 240
    TabIndex = 9
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
    Caption = "Location Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 225
    Top = 630
    Width = 1260
    Height = 240
    TabIndex = 8
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

Attribute VB_Name = "FrmMeterReading"

Private MasterFormExit As Integer
Private global_68 As Integer
Private global_70 As Integer

Private Sub TopCtrl1_UnknownEvent_A 'ECF518
  'Data Table: 49A594
  Dim var_94 As TextBox
  loc_ECF468: On Error Goto loc_ECF512
  loc_ECF48E: Call Proc_327_53_E7B984(Proc_5_1_100EC1C("ADD", Me))
  loc_ECF499: Call Proc_327_51_F173D8(global_72)
  loc_ECF4AB: Set var_8C = Me.Txt
  loc_ECF4B1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_ECF4B9: var_94.Enabled = True
  loc_ECF4D2: Set var_8C = Me.Txt
  loc_ECF4D8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_ECF4E0: var_94.Enabled = True
  loc_ECF4F7: Set var_8C = Me.Txt
  loc_ECF4FD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ECF505: var_94.SetFocus
  loc_ECF511: Exit Sub
  loc_ECF512: ' Referenced from: ECF468
  loc_ECF512: Proc_6_60_E63754(var_94)
  loc_ECF517: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9FED8
  'Data Table: 49A594
  loc_E9FE60: On Error Goto loc_E9FED1
  loc_E9FE9A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9FEC0:   Call Proc_327_53_E7B984(Proc_5_1_100EC1C("INI", Me))
  loc_E9FECB:   Call Proc_327_52_12D7B78(global_72)
  loc_E9FED0: End If
  loc_E9FED0: Exit Sub
  loc_E9FED1: ' Referenced from: E9FE60
  loc_E9FED1: Proc_6_60_E63754()
  loc_E9FED6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11C3120
  'Data Table: 49A594
  Dim unk_49A5AC As Connection15
  Dim Me As Recordset15
  Dim var_12C As Fields15
  Dim var_104 As Variant
  Dim var_134 As String
  loc_11C2CFC: On Error Goto loc_11C30CF
  loc_11C2D0D: If (Proc_183_56_FE8B08(global_72) = &HFF) Then
  loc_11C2D10:   Exit Sub
  loc_11C2D11: End If
  loc_11C2D48: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_104, var_124) = 6) Then
  loc_11C2D54:   unk_49A5AC.BeginTrans var_128
  loc_11C2D6A:   var_94 = Me.Bookmark 'Variant
  loc_11C2DC4:   unk_49A5AC.Execute CStr("Delete From FMReading Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_11C2E0F:   var_170 = 0
  loc_11C2E22:   var_168 = 0
  loc_11C2E2D:   var_164 = 0
  loc_11C2E40:   var_15C = 0
  loc_11C2E4B:   var_158 = 0
  loc_11C2E5E:   var_150 = 0
  loc_11C2EA7:   Proc_154_5_10E3BD4(MemVar_1F95044, "FMReading", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11C2F17:   var_104 = "Delete From FMReading1 Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_11C2F25:   unk_49A5AC.Execute CStr(var_104), var_124, -1
  loc_11C2F70:   var_170 = 0
  loc_11C2F83:   var_168 = 0
  loc_11C2F8E:   var_164 = 0
  loc_11C2FA1:   var_15C = 0
  loc_11C2FAC:   var_158 = 0
  loc_11C2FBF:   var_150 = 0
  loc_11C2FFF:   var_134 = "FMReading1"
  loc_11C3008:   Proc_154_5_10E3BD4(MemVar_1F95044, var_134, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11C3036:   unk_49A5AC.CommitTrans
  loc_11C3046:   Me.Requery -1
  loc_11C3066:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11C3073:     Me.Bookmark = var_94
  loc_11C307B:   Else
  loc_11C308F:     If (Me.EOF = 0) Then
  loc_11C3098:       Me.MoveLast
  loc_11C309D:     End If
  loc_11C309D:   End If
  loc_11C309D:   Call Proc_327_52_12D7B78(var_150, 0, var_158, var_15C)
  loc_11C30BE:   Proc_5_0_1107AD0(&HFF, Me, global_72, 0)
  loc_11C30C6: End If
  loc_11C30CB: Set var_98 = Nothing
  loc_11C30CE: Exit Sub
  loc_11C30CF: ' Referenced from: 11C2CFC
  loc_11C30D5: unk_49A5AC.RollbackTrans
  loc_11C30E2: Set var_12C = Err()
  loc_11C30E8: Call 0.Method_arg_2C (var_134, 0, var_164)
  loc_11C3109: MsgBox(CVar(var_134), &H10, " Deletion Message", var_104, var_124)
  loc_11C311C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F2F948
  'Data Table: 49A594
  Dim var_94 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  loc_F2F838: On Error Goto loc_F2F93F
  loc_F2F85E: Call Proc_327_53_E7B984(Proc_5_1_100EC1C("EDIT", Me))
  loc_F2F876: Set var_8C = Me.Txt
  loc_F2F87C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F2F884: var_94.Enabled = False
  loc_F2F89D: Set var_8C = Me.Txt
  loc_F2F8A3: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F2F8AB: var_94.Enabled = False
  loc_F2F8D0: var_B4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_F2F8D8: var_D4 = CVar(CLng(1)) 'Long
  loc_F2F90B: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_F2F90E:   var_B4 = vbNullString
  loc_F2F918:   Set var_8C = Me.FGrid
  loc_F2F929: End If
  loc_F2F92D: Set var_8C = Me.FGrid
  loc_F2F93E: Exit Sub
  loc_F2F93F: ' Referenced from: F2F838
  loc_F2F93F: Proc_6_60_E63754(FGrid.DispID_8001, FGrid.DispID_10000, var_B4)
  loc_F2F944: Exit Sub
  loc_F2F945: DOC
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19818
  'Data Table: 49A594
  loc_E1980D: Me.Global.Unload Me
  loc_E19815: Exit Sub
  loc_E19816: CopyBytes 7168
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC9C94
  'Data Table: 49A594
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EC9BF4: On Error Goto loc_EC9C8C
  loc_EC9C0E: If (Me.RecordCount <= 0) Then
  loc_EC9C17:   var_B8 = "Information"
  loc_EC9C32:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC9C42:   Exit Sub
  loc_EC9C43: End If
  loc_EC9C4A: var_10C = "Select FM.Code AS SearchCode,LM.Name As LocationName,F.Name As FacilityName From ((FMReading FM Left Join LocationMast LM On FM.LocationCode=LM.Code) Left Join FacilityMast F On FM.FacilityCode=F.Code) Where (FM.LOGSITE_CODE='" & MemVar_1F95078
  loc_EC9C51: MemVar_1F950E4 = var_10C & "' or FM.LOGSITE_CODE='HO') Order By FM.Code"
  loc_EC9C5E: MemVar_1F95120 = Me
  loc_EC9C6B: Proc_6_126_F1C850("4000,3000")
  loc_EC9C86: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC9C8B: Exit Sub
  loc_EC9C8C: ' Referenced from: EC9BF4
  loc_EC9C8C: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC9C91: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E33668
  'Data Table: 49A594
  loc_E33658: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33660: Call Proc_327_52_12D7B78(global_72)
  loc_E33665: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E336C8
  'Data Table: 49A594
  Dim arg_1CFF As Double
  loc_E336B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E336C0: Call Proc_327_52_12D7B78(global_72)
  loc_E336C5: Exit Sub
  loc_E336C6: arg_1CFF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E33728
  'Data Table: 49A594
  Dim arg_1CFF As Double
  loc_E33718: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33720: Call Proc_327_52_12D7B78(global_72)
  loc_E33725: Exit Sub
  loc_E33726: arg_1CFF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E337E8
  'Data Table: 49A594
  loc_E337D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E337E0: Call Proc_327_52_12D7B78(global_72)
  loc_E337E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10C93D0
  'Data Table: 49A594
  Dim var_A0 As String
  Dim var_E0 As Variant
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_AC As Fields15
  Dim var_C0 As Field20
  Dim var_F0 As Variant
  Dim var_100 As String
  Dim var_110 As Variant
  Dim unk_49A5AC As Connection15
  Dim var_88 As Recordset15
  Dim var_14E As Integer
  loc_10C90FC: On Error Goto loc_10C93A8
  loc_10C9113: var_A0 = "Select FM1.Code,LM.Name As LocationName,F.Name As FacilityName,FM1.ForDate,FM1.Reading From (((FMReading1 FM1 Left Join FMReading FM On FM1.Code=Fm.Code)Left Join LocationMast LM On FM.LocationCode=LM.Code) Left Join FacilityMast F On FM.FacilityCode=F.Code) Where FM.LogSite_Code='" & MemVar_1F95078
  loc_10C9128: var_E0 = CVar(var_A0 & "' and FM.Site_Code='" & MemVar_1F95070 & "' and FM.Code='") 'String
  loc_10C9148: var_C0 = Me.Fields.Item("SearchCode")
  loc_10C9158: var_F0 = var_E0 & var_C0.Value 
  loc_10C915C: var_100 = "' Order By FM1.ForDate"
  loc_10C9161: var_110 = var_F0 & var_100 
  loc_10C916F: unk_49A5AC.Execute CStr(var_110), var_134, -1
  loc_10C917A: Set var_88 = var_138
  loc_10C91A4: var_13C = var_88.RecordCount
  loc_10C91B2: If (var_13C = 0) Then
  loc_10C91CE:   MsgBox("No Record Present For Printing", 0, var_E0, var_F0, var_110)
  loc_10C91DE:   Exit Sub
  loc_10C91DF: End If
  loc_10C91F5: Set var_AC = var_88 
  loc_10C9201: var_14E = CreateFieldDefFile(var_AC, MemVar_1F950B4 & "\FMReading.ttx")
  loc_10C920B: Set var_88 = var_AC
  loc_10C9211: var_BC = CVar(var_14E) 'Integer
  loc_10C9214: var_98 = var_BC 'Variant
  loc_10C9230: var_A0 = MemVar_1F950B4 & "\FMReading.RPT"
  loc_10C9239: Call 0.Method_arg_1C (var_A0, var_BC, var_AC)
  loc_10C9244: MemVar_1F951E8 = var_AC
  loc_10C925F: Call 0.Method_arg_90 (var_AC, var_13C, var_9A, 1)
  loc_10C9267: Call 0.Method_arg_24 (var_14E, &HFF)
  loc_10C9273: For var_152 =  To CInt(var_13C): var_138 = var_152 'Integer
  loc_10C928C:   Call 0.Method_arg_90 (var_AC, CLng(var_9A))
  loc_10C9294:   Call 0.Method_arg_20 (var_C0)
  loc_10C929C:   Call 0.Method_arg_30 (var_A0)
  loc_10C92E2:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10C92F8:     Call 0.Method_arg_90 (var_AC, CLng(var_9A))
  loc_10C9300:     Call 0.Method_arg_20 (var_C0)
  loc_10C9308:     Call 0.Method_arg_38 ("'Facility Meter Reading'")
  loc_10C9314:   End If
  loc_10C9317: Next var_152 'Integer
  loc_10C9335: Call 0.Method_arg_64 (var_AC, CVar(var_88))
  loc_10C933D: Call 0.Method_arg_2C (var_100)
  loc_10C934B: Call 0.Method_arg_150 (var_124)
  loc_10C9356: Call 0.Method_arg_50 (var_A0)
  loc_10C9360: Set var_C0 = Nothing
  loc_10C937A: Set var_AC = MemVar_1F951E8 
  loc_10C9386: Proc_6_99_1484404(var_AC, 0, var_A0)
  loc_10C9391: MemVar_1F951E8 = var_AC
  loc_10C93A4: Set var_88 = Nothing
  loc_10C93A7: Exit Sub
  loc_10C93A8: ' Referenced from: 10C90FC
  loc_10C93AE: Call 0.Method_arg_50 (var_A0, &HFF)
  loc_10C93C3: Proc_183_57_104B0BC(var_A0, "TopCtrl1_ePrn")
  loc_10C93CF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2222C
  'Data Table: 49A594
  Dim Me As Recordset15
  loc_E22213: Me.Requery -1
  loc_E22223: Me.Requery -1
  loc_E22228: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '139ACE4
  'Data Table: 49A594
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_49A5FB As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E4 As Variant
  Dim var_11C As Variant
  Dim unk_49A5AC As Connection15
  Dim var_14C As TextBox
  Dim var_1A0 As Variant
  Dim var_210 As Variant
  Dim var_368 As Double
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_2B4 As Variant
  loc_139A458: On Error Goto loc_139AC90
  loc_139A45F: var_86 = CByte(0) 'Byte
  loc_139A46E: Set var_90 = Me.Txt
  loc_139A474: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_139A49D: If (Proc_6_27_EA61EC(var_94, "Location Name") = 0) Then
  loc_139A4A7:   Call Txt_GotFocus()
  loc_139A4AC:   Exit Sub
  loc_139A4AD: End If
  loc_139A4B8: Set var_90 = Me.Txt
  loc_139A4BE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_139A4E7: If (Proc_6_27_EA61EC(var_94, "Facility Name") = 0) Then
  loc_139A4F1:   Call Txt_GotFocus()
  loc_139A4F6:   Exit Sub
  loc_139A4F7: End If
  loc_139A4FB: Set var_90 = Me.TopCtrl1
  loc_139A501: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(CInt(1))
  loc_139A51A: If (CStr(CInt(0)) = "Add") Then
  loc_139A520:   Call Proc_327_48_FC4CC4(var_9E)
  loc_139A52B:   If (var_9E = &HFF) Then
  loc_139A52E:     Exit Sub
  loc_139A52F:   End If
  loc_139A537:   If (MemVar_1F953B0 = "A") Then
  loc_139A540:     var_D4 = 0
  loc_139A55D:     var_9C = "Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From FMReading WHERE SITE_CODE='" & MemVar_1F95070
  loc_139A56D:     unk_49A5FB.Execute CStr(CInt(0)) & "'", var_B0, -1
  loc_139A575:     var_90 = var_90.Fields
  loc_139A57D:     var_D4 = var_94.Item(var_94)
  loc_139A585:     var_98 = var_98.Value
  loc_139A594:     global_64 = CStr(var_E4)
  loc_139A5B4:   Else
  loc_139A5BC:     If (MemVar_1F953B0 = "S") Then
  loc_139A5C5:       var_D4 = 0
  loc_139A5E2:       var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From FMReading WHERE SITE_CODE='" & MemVar_1F95070
  loc_139A5F2:       unk_49A5FB.Execute CStr(CInt(0)) & "'", var_B0, -1
  loc_139A5FA:       var_90 = var_90.Fields
  loc_139A602:       var_D4 = var_94.Item(var_94)
  loc_139A60A:       var_98 = var_98.Value
  loc_139A613:       var_E8 = CStr(var_E4)
  loc_139A619:       global_64 = var_E8
  loc_139A636:     End If
  loc_139A636:   End If
  loc_139A643:   var_F8 = CVar(Proc_183_15_EAD490(MemVar_1F95070, 2, var_E4)) 'String
  loc_139A671:   var_108 = (1 + Format(global_64, "0000"))
  loc_139A67C:   global_64 = CStr(var_108)
  loc_139A691: Else
  loc_139A6C5:   global_64 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_139A6D6: End If
  loc_139A6FB: For var_10C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_10C 'Integer
  loc_139A72A:   Set var_94 = Me.FGrid
  loc_139A74E:   If (((var_88 > 0) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Or (CLng(var_94.Rows) = 2)) Then
  loc_139A755:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_139A75D:     var_11C = CVar(CLng(1)) 'Long
  loc_139A777:     var_E4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_139A77D:     var_F8 = Trim(var_E4)
  loc_139A799:     If (var_F8 = vbNullString) Then
  loc_139A7AF:       var_B0 = "Define For Date "
  loc_139A7B5:       MsgBox(var_B0, &H40, var_E4, var_F8, var_108)
  loc_139A7C5:       Exit Sub
  loc_139A7C6:     End If
  loc_139A7C6:   End If
  loc_139A7C9: Next var_10C 'Integer
  loc_139A7D7: unk_49A5AC.BeginTrans var_140
  loc_139A7E0: var_86 = CByte(1) 'Byte
  loc_139A80B: unk_49A5AC.Execute "Delete From FMReading Where Code='" & global_64 & "'", var_B0, -1
  loc_139A844: unk_49A5AC.Execute "Delete From FMReading1 Where Code='" & global_64 & "'", var_B0, -1
  loc_139A864: Set var_90 = Me.Txt
  loc_139A86A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_E8)
  loc_139A885: Set var_98 = Me.Txt
  loc_139A88B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_14C)
  loc_139A89C: Set var_15C = Me.TopCtrl1
  loc_139A8A2: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_94.Tag)
  loc_139A8B0: var_F8 = "E"
  loc_139A8DC: var_1D0 = Date
  loc_139A8E7: Proc_6_7_F26918(var_1E0)
  loc_139A90A: var_B4 = "Insert Into FMReading (Code,LocationCode,FacilityCode,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('" & global_64
  loc_139A946: var_1A0 = CVar(var_B4 & "','" & var_E8 & "','" & var_14C.Tag & "','") & IIf((CStr(var_B0) = "Add"), "A", var_F8) & "','" & CVar(MemVar_1F950C8) 
  loc_139A95F: var_210 = var_1A0 & "'," & var_1E0 & ",'" 
  loc_139A993: unk_49A5AC.Execute CStr(var_210 & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_2B4, -1
  loc_139AA0C: For var_2BC = 1 To CInt((CLng(Me.FGrid.Rows) - 2)): var_88 = var_2BC 'Integer
  loc_139AA16:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_139AA1E:   var_11C = CVar(CLng(1)) 'Long
  loc_139AA2D:   var_B0 = Me.FGrid.TextMatrix)
  loc_139AA54:   var_E4 = Me.FGrid.TextMatrix)
  loc_139AA67:   var_368 = Val(CStr(var_E4))
  loc_139AA6E:   Set var_98 = Me.TopCtrl1
  loc_139AA74:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_368)
  loc_139AA8D:   var_108 = "A"
  loc_139AAB9:   Proc_6_7_F26918(var_210, Date, CVar(CLng(2)), CVar(CLng(var_88)), var_B0)
  loc_139AADC:   var_B4 = "Insert Into FMReading1 (Code,ForDate,Reading,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('" & global_64
  loc_139AB21:   var_1D0 = CVar(var_B4 & "','" & CStr(var_B0) & "'," & CStr(var_368) & ",'") & IIf((CStr(var_F8) = "Add"), var_108, "E") & "','" & CVar(MemVar_1F950C8) 
  loc_139AB6E:   unk_49A5AC.Execute CStr(var_1D0 & "'," & var_210 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_360, -1
  loc_139ABC7: Next var_2BC 'Integer
  loc_139ABD2: unk_49A5AC.CommitTrans
  loc_139ABDB: var_86 = CByte(0) 'Byte
  loc_139ABF7: Me.Requery -1
  loc_139AC24: Me.Find "SearchCode ='" & global_64 & "'", 0, 1
  loc_139AC34: Set var_90 = Me.TopCtrl1
  loc_139AC3A: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_C4)
  loc_139AC53: If (CStr() = "Add") Then
  loc_139AC56:   Call TopCtrl1_UnknownEvent_A()
  loc_139AC5B:   Exit Sub
  loc_139AC5C: End If
  loc_139AC71: var_9C = "INI"
  loc_139AC7F: Call Proc_327_53_E7B984(Proc_5_1_100EC1C(var_9C, Me))
  loc_139AC8A: Call Proc_327_52_12D7B78(global_72)
  loc_139AC8F: Exit Sub
  loc_139AC90: ' Referenced from: 139A458
  loc_139AC99: If (CInt(var_86) = 1) Then
  loc_139ACA2:   unk_49A5AC.RollbackTrans
  loc_139ACA7: End If
  loc_139ACAF: Set var_90 = Err()
  loc_139ACB5: Call 0.Method_arg_2C (var_9C)
  loc_139ACCE: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_139ACE1: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F59E3C
  'Data Table: 49A594
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F59D5E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F59D65:   Set var_A8 = Me.ListView
  loc_F59DAF:   Set var_C0 = Me.TxtGrid
  loc_F59DB5:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F59DBD:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F59DDD: End If
  loc_F59DE9: Me.FrmList.Visible = False
  loc_F59E19: Set var_9C = Me.TxtGrid
  loc_F59E1F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F59E27: var_A8.SetFocus
  loc_F59E3B: Exit Sub
End Sub

Private Sub DGLocation_UnknownEvent_9 'F44554
  'Data Table: 49A594
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4444B: Me.DGLocation.Visible = False
  loc_F4446A: If (Me.RecordCount > 0) Then
  loc_F444A9:   Set var_B4 = Me.Txt
  loc_F444AF:   Call 0.Method_DGLocation_UnknownEvent_90 (CInt(1), var_B8)
  loc_F444B7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F444EA:   var_B0 = Me.Fields.Item("Code")
  loc_F44509:   Set var_B4 = Me.Txt
  loc_F4450F:   Call 0.Method_DGLocation_UnknownEvent_90 (CInt(1), var_B8)
  loc_F44517:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4452D: End If
  loc_F44538: Set var_A8 = Me.Txt
  loc_F4453E: Call 0.Method_DGLocation_UnknownEvent_90 (CInt(1))
  loc_F44546: var_B0.SetFocus
  loc_F44552: Exit Sub
End Sub

Private Sub DGFacility_UnknownEvent_9 'F37194
  'Data Table: 49A594
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3708B: Me.DGFacility.Visible = False
  loc_F370AA: If (Me.RecordCount > 0) Then
  loc_F370E9:   Set var_B4 = Me.Txt
  loc_F370EF:   Call 0.Method_DGFacility_UnknownEvent_90 (CInt(0), var_B8)
  loc_F370F7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3712A:   var_B0 = Me.Fields.Item("Code")
  loc_F37149:   Set var_B4 = Me.Txt
  loc_F3714F:   Call 0.Method_DGFacility_UnknownEvent_90 (CInt(0), var_B8)
  loc_F37157:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3716D: End If
  loc_F37178: Set var_A8 = Me.Txt
  loc_F3717E: Call 0.Method_DGFacility_UnknownEvent_90 (CInt(0))
  loc_F37186: var_B0.SetFocus
  loc_F37192: Exit Sub
End Sub

Private Sub Form_Load() '10FC3B0
  'Data Table: 49A594
  Dim var_C0 As Variant
  Dim var_88 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_C4 As TextBox
  Dim var_C8 As String
  Dim var_138 As Variant
  loc_10FC08C: On Error Goto loc_10FC3AA
  loc_10FC0A5: Proc_6_23_DFC5B8(Me, 0)
  loc_10FC0B7: Set var_88 = Me.TopCtrl1
  loc_10FC0BD: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AEDP")
  loc_10FC0CB: Call 0.Method_arg_50 (var_B0)
  loc_10FC0DB: Set var_88 = Me.TopCtrl1
  loc_10FC0E1: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030007(CVar(var_B0))
  loc_10FC0F3: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10FC10B: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_10FC122: Me.LblUser.Left = CDbl(13500)
  loc_10FC139: Me.LblUser.Top = CDbl(7800)
  loc_10FC150: Me.LblLDt.Top = CDbl(8160)
  loc_10FC167: Me.LblLDt.Left = CDbl(13500)
  loc_10FC179: Set global_76 = New 
  loc_10FC18B: Me.Recordset15.CursorLocation = 3
  loc_10FC1AE: var_B0 = "Select Code,Name From LocationMast Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_10FC1B5: var_C0 = CVar(var_B0 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10FC1BF: Me.Open var_C0, CVar(MemVar_1F95044), 3
  loc_10FC1D3: CVarUnk
  loc_10FC1D8: VerifyVarObj
  loc_10FC1DE: Set var_88 = Me.DGLocation
  loc_10FC1E4: LateIdStAd
  loc_10FC20E: Me.DGLocation.CursorLocation = 3
  loc_10FC227: Call 0.Method_Form_Load0 (CInt(0), var_C4, var_B0, Me.Txt)
  loc_10FC22F: global_76 = var_C4.Tag
  loc_10FC23F: Proc_6_7_F26918(var_C0, MemVar_1F950EC, 1)
  loc_10FC262: var_C8 = "Select Distinct LF.FcCode As Code,FM.Name from locationfacility  LF Left Join FacilityMast FM On LF.FcCode=FM.Code Where FM.MeterReading='Y' And FM.ChargeType='Calculated' And appdate in (select top 1 Appdate from LocationFacility where lccode='" & var_B0
  loc_10FC28B: var_138 = CVar(var_C8 & "' and appdate<=") & var_C0 & " order by appdate desc) And (LF.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' or LF.LOGSITE_CODE='HO') Order By Name" 
  loc_10FC2C1: CVarUnk
  loc_10FC2C6: VerifyVarObj
  loc_10FC2CC: Set var_88 = Me.DGFacility
  loc_10FC2D2: LateIdStAd
  loc_10FC2FC: Me.DGFacility.CursorLocation = 3
  loc_10FC326: var_C0 = CVar("Select Code AS SearchCode,site_code,logsite_code From FMReading FM Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Code") 'String
  loc_10FC330: r_138, CVar(MemVar_1F95044), 3 var_C0, CVar(MemVar_1F95044), 3
  loc_10FC35E: Call Proc_327_53_E7B984(Proc_5_1_100EC1C("INI", Me, New, 1, -1, Me), New, 1)
  loc_10FC369: Call Proc_327_47_10A7DDC(-1, -1)
  loc_10FC36E: Call Proc_327_52_12D7B78(0)
  loc_10FC386: Me.FGrid.Left = CVar(CDbl(1800))
  loc_10FC3A1: Me.FGrid.Top = CVar(CDbl(1340))
  loc_10FC3A9: Exit Sub
  loc_10FC3AA: ' Referenced from: 10FC08C
  loc_10FC3AA: Proc_6_60_E63754()
  loc_10FC3AF: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E57384
  'Data Table: 49A594
  loc_E5734F: Set global_76 = Nothing
  loc_E57361: Set global_72 = Nothing
  loc_E57373: Set global_80 = Nothing
  loc_E5737F: MasterFormExit = 0
  loc_E57382: Exit Sub
End Sub

Private Sub Form_Activate() 'E4C7D0
  'Data Table: 49A594
  loc_E4C7A0: On Error Goto loc_E4C7CA
  loc_E4C7A7: Set var_88 = Me.TopCtrl1
  loc_E4C7AD: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030000()
  loc_E4C7C2: If (CLng(CInt()) = &H2D) Then
  loc_E4C7C5:   Call TopCtrl1_UnknownEvent_15()
  loc_E4C7CA:   ' Referenced from: E4C7A0
  loc_E4C7CA: End If
  loc_E4C7CA: Proc_6_60_E63754()
  loc_E4C7CF: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24B84
  'Data Table: 49A594
  loc_E24B69: If (MasterFormExit = &HFF) Then
  loc_E24B79:   Me.Global.Unload Me
  loc_E24B81: End If
  loc_E24B81: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27DAC
  'Data Table: 49A594
  loc_E27D84: On Error Goto loc_E27DA4
  loc_E27D9B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E27DA3: Exit Sub
  loc_E27DA4: ' Referenced from: E27D84
  loc_E27DA4: Proc_6_60_E63754(Shift)
  loc_E27DA9: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E53EB8
  'Data Table: 49A594
  loc_E53E92: Set var_88 = Me.Txt
  loc_E53E98: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E53EA6: Proc_6_74_E23240(var_8C)
  loc_E53EB2: Call Proc_327_54_EB970C(var_8C)
  loc_E53EB7: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FB7118
  'Data Table: 49A594
  Dim var_86 As Integer
  Dim var_98 As Frame
  loc_FB6F86: If (CLng(Shift) = &H1B) Then
  loc_FB6F89:   Call Proc_327_54_EB970C()
  loc_FB6F8E:   Exit Sub
  loc_FB6F8F: End If
  loc_FB6F92: var_86 = KeyCode
  loc_FB6F9D: If (var_86 = CInt(0)) Then
  loc_FB6FB8:   Set var_9C = Nothing
  loc_FB6FC3:   Set var_98 = Nothing
  loc_FB6FF1:   Proc_6_69_134A630(Me.DGLocation, Me.Txt, KeyCode, global_76, Shift, 0)
  loc_FB7008: Else
  loc_FB7010:   If (var_86 = CInt(1)) Then
  loc_FB702B:     Set var_9C = Nothing
  loc_FB7064:     Proc_6_69_134A630(Me.DGFacility, Me.Txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_FB7078:   End If
  loc_FB7078: End If
  loc_FB70AC: Set var_98 = Me.FrmList
  loc_FB70CE: If (((CBool(Me.DGLocation.Visible) = 0) And (CBool(Me.DGFacility.Visible) = 0)) And (var_98.Visible = 0)) Then
  loc_FB70E6:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FB70EF:     Proc_6_75_E5335C(Shift, arg_14, var_9C, 0, 1)
  loc_FB70F4:   End If
  loc_FB7109:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FB7112:     Proc_6_76_E533C8(Shift, arg_14, var_98)
  loc_FB7117:   End If
  loc_FB7117: End If
  loc_FB7117: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E08710
  'Data Table: 49A594
  Dim var_86 As Integer
  loc_E08703: Proc_6_58_E06050(arg_10)
  loc_E0870B: var_86 = KeyAscii
  loc_E0870E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F1A490
  'Data Table: 49A594
  Dim var_86 As Integer
  loc_F1A3A3: var_86 = KeyCode
  loc_F1A3AE: If (var_86 = CInt(0)) Then
  loc_F1A3CD:   If (CBool(Me.DGLocation.Visible) = &HFF) Then
  loc_F1A3E1:     var_A4 = "Name"
  loc_F1A405:     Proc_6_68_12A2818(Me.DGLocation, Me.Txt, KeyCode, global_76)
  loc_F1A418:   End If
  loc_F1A41B: Else
  loc_F1A423:   If (var_86 = CInt(1)) Then
  loc_F1A442:     If (CBool(Me.DGFacility.Visible) = &HFF) Then
  loc_F1A456:       var_A4 = "Name"
  loc_F1A47A:       Proc_6_68_12A2818(Me.DGFacility, Me.Txt, KeyCode, global_80, Shift)
  loc_F1A48D:     End If
  loc_F1A48D:   End If
  loc_F1A48D: End If
  loc_F1A48D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E29C
  'Data Table: 49A594
  loc_E4E27A: Set var_88 = Me.Txt
  loc_E4E280: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E28E: Proc_6_73_E23294(var_8C)
  loc_E4E29A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '121F5CC
  'Data Table: 49A594
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_C8 As String
  Dim var_148 As Variant
  Dim unk_49A5AC As Connection15
  loc_121F0F3: var_86 = Cancel
  loc_121F0FE: If (var_86 = CInt(0)) Then
  loc_121F10C:   Set var_8C = Me.Txt
  loc_121F112:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_121F11A:   var_98 = "Location Name"
  loc_121F13B:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_121F149:     Set var_8C = Me.Txt
  loc_121F14F:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_121F157:     var_90.SetFocus
  loc_121F165:     arg_10 = &HFF
  loc_121F168:     Exit Sub
  loc_121F169:   End If
  loc_121F1B7:   Set var_8C = Me.Txt
  loc_121F1BD:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_121F1C5:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_121F1DD:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_121F1ED:     Set var_8C = Me.Txt
  loc_121F1F3:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_121F1FB:     var_90.Text = vbNullString
  loc_121F214:     Set var_8C = Me.Txt
  loc_121F21A:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_121F222:     var_90.Tag = vbNullString
  loc_121F231:   Else
  loc_121F26C:     Set var_94 = Me.Txt
  loc_121F272:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_121F27A:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_121F2AD:     var_90 = Me.Fields.Item("Code")
  loc_121F2B5:     var_C4 = var_90.Value
  loc_121F2BE:     var_98 = CStr(var_C4)
  loc_121F2CB:     Set var_94 = Me.Txt
  loc_121F2D1:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_121F2D9:     var_B4.Tag = var_98
  loc_121F2EF:   End If
  loc_121F30C:   Set var_8C = Me.Txt
  loc_121F312:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98, "Select Distinct LF.FcCode As Code,FM.Name from locationfacility  LF Left Join FacilityMast FM On LF.FcCode=FM.Code Where FM.MeterReading='Y' And FM.ChargeType='Calculated' And appdate in (select top 1 Appdate from LocationFacility where lccode='")
  loc_121F31A:   var_16C = var_90.Tag
  loc_121F323:   var_C8 = -1 & var_98
  loc_121F338:   Proc_6_7_F26918(var_C4, MemVar_1F950EC, CVar(var_C8 & "' and appdate<="))
  loc_121F35C:   var_148 = var_94 & var_C4 & " order by appdate desc) And (LF.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' or LF.LOGSITE_CODE='HO') Order By Name" 
  loc_121F36A:   unk_49A5AC.Execute CStr(var_148), var_86, 
  loc_121F37B:   Set global_80 = var_94
  loc_121F3AD:   CVarUnk
  loc_121F3B2:   VerifyVarObj
  loc_121F3B8:   Set var_8C = Me.DGFacility
  loc_121F3BE:   LateIdStAd
  loc_121F3CF: Else
  loc_121F3D7:   If (var_86 = CInt(1)) Then
  loc_121F3E5:     Set var_8C = Me.Txt
  loc_121F3EB:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_121F3F3:     var_98 = "Facility Name"
  loc_121F414:     If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_121F422:       Set var_8C = Me.Txt
  loc_121F428:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_121F430:       var_90.SetFocus
  loc_121F43E:       arg_10 = &HFF
  loc_121F441:       Exit Sub
  loc_121F442:     End If
  loc_121F496:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_121F49E:     arg_10 = var_90.Text
  loc_121F4B6:     If (Me.Txt Or (var_98 = vbNullString)) Then
  loc_121F4C6:       Set var_8C = Me.Txt
  loc_121F4CC:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_121F4D4:       var_90.Text = vbNullString
  loc_121F4ED:       Set var_8C = Me.Txt
  loc_121F4F3:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_121F4FB:       var_90.Tag = vbNullString
  loc_121F50A:     Else
  loc_121F545:       Set var_94 = Me.Txt
  loc_121F54B:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_121F553:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_121F5A4:       Set var_94 = Me.Txt
  loc_121F5AA:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_121F5B2:       var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_121F5C8:     End If
  loc_121F5C8:   End If
  loc_121F5C8: End If
  loc_121F5C8: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F86F08
  'Data Table: 49A594
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F86DC0: Call Proc_327_54_EB970C()
  loc_F86DD8: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_F86DF3: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F86DFC: Set var_BC = Me.FGrid
  loc_F86E32: Set var_104 = Me.TxtGrid
  loc_F86E38: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F86E40: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_F86E71: var_110 = CLng(Me.FGrid.Col)
  loc_F86E81: If (var_110 = CLng(1)) Then
  loc_F86E93:   Set var_A8 = Me.TxtGrid
  loc_F86E99:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB)
  loc_F86EA1:   var_BC.MaxLength = var_110
  loc_F86EB0: Else
  loc_F86EB7:   If (var_110 = CLng(2)) Then
  loc_F86EC9:     Set var_A8 = Me.TxtGrid
  loc_F86ECF:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_F86ED7:     var_BC.MaxLength = &HC
  loc_F86EEC:     If (global_70 = 0) Then
  loc_F86EF7:       var_10C = "{Home}+{End}"
  loc_F86EFD:       Proc_303_0_FBACC8(CStr(Me.FGrid.TextMatrix)), 0)
  loc_F86F05:     End If
  loc_F86F05:   End If
  loc_F86F05: End If
  loc_F86F05: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1001F9C
  'Data Table: 49A594
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_1001D98: On Error Goto loc_1001F96
  loc_1001DA5: If (CLng(Shift) = &H1B) Then
  loc_1001DB5:   Set var_88 = Me.TxtGrid
  loc_1001DBB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1001DD5:   Set var_94 = Me.TxtGrid
  loc_1001DDB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_1001DE3:   var_98.Text = var_8C.Tag
  loc_1001DFF:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1001E04:   Call Proc_327_54_EB970C(arg_14)
  loc_1001E0D:   Set var_88 = Me.FGrid
  loc_1001E2A:   Set var_88 = Me.TxtGrid
  loc_1001E30:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1001E38:   var_8C.Visible = False
  loc_1001E44:   Exit Sub
  loc_1001E45: End If
  loc_1001E58: var_AC = CLng(Me.FGrid.Col)
  loc_1001E68: If (var_AC = CLng(1)) Then
  loc_1001E75:   If (CLng(Shift) = &HD) Then
  loc_1001E7E:     Call Proc_327_50_10521A0(KeyCode, var_AE)
  loc_1001E89:     If (var_AE = &HFF) Then
  loc_1001ECF:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, 2)
  loc_1001EDF:     End If
  loc_1001EDF:   End If
  loc_1001EE2: Else
  loc_1001EE9:   If (var_AC = CLng(2)) Then
  loc_1001F2C:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_1001F35:       Call Proc_327_50_10521A0(KeyCode, var_AE, 0, 2)
  loc_1001F40:       If (var_AE = &HFF) Then
  loc_1001F86:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, 2)
  loc_1001F96:       End If
  loc_1001F96:       ' Referenced from: 1001D98
  loc_1001F96:     End If
  loc_1001F96:   End If
  loc_1001F96: End If
  loc_1001F96: Proc_6_60_E63754(0, 2, 0)
  loc_1001F9B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EA4598
  'Data Table: 49A594
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  loc_EA4517: Proc_6_58_E06050(arg_10)
  loc_EA4528: If (KeyAscii = 0) Then
  loc_EA453E:   var_A0 = CLng(Me.FGrid.Col)
  loc_EA454E:   If (var_A0 = CLng(1)) Then
  loc_EA4551:     GoTo loc_EA4595
  loc_EA4554:   End If
  loc_EA455B:   If (var_A0 = CLng(2)) Then
  loc_EA4568:     Set var_8C = Me.TxtGrid
  loc_EA456E:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_EA4589:     Proc_6_42_129B55C(var_A4, arg_10, 8)
  loc_EA4595:     ' Referenced from: EA4551
  loc_EA4595:   End If
  loc_EA4595: End If
  loc_EA4595: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E4EAC0
  'Data Table: 49A594
  Dim var_9C As Long
  loc_E4EA90: On Error Goto loc_E4EABA
  loc_E4EAA6: var_9C = CLng(Me.FGrid.Col)
  loc_E4EAB6: If (var_9C = CLng(1)) Then
  loc_E4EAB9: End If
  loc_E4EAB9: Exit Sub
  loc_E4EABA: ' Referenced from: E4EA90
  loc_E4EABA: Proc_6_60_E63754(var_9C)
  loc_E4EABF: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21CEC
  'Data Table: 49A594
  Dim arg_10 As Integer
  loc_E21CD4: If (Cancel = 0) Then
  loc_E21CDD:   Call Proc_327_50_10521A0(Cancel, var_88)
  loc_E21CE6:   arg_10 = Not(var_88)
  loc_E21CE9: End If
  loc_E21CE9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E86700
  'Data Table: 49A594
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E866A3: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E866B6: Set var_A8 = Me.TxtGrid
  loc_E866BC: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E866C4: var_AC.Visible = False
  loc_E866DE: Set var_A8 = Me.TxtGrid
  loc_E866E4: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E866EC: var_AC.MaxLength = 0
  loc_E866F8: Call Proc_327_54_EB970C()
  loc_E866FD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69058
  'Data Table: 49A594
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69014: Set var_88 = Me.TxtGrid
  loc_E6901A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E69034: If (var_8C.Visible = 0) Then
  loc_E6904D:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E69055: End If
  loc_E69055: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E20260
  'Data Table: 49A594
  loc_E20257: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E2025F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFFE1C
  'Data Table: 49A594
  loc_DFFE14: Call Proc_327_49_E45734()
  loc_DFFE19: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10CEF8C
  'Data Table: 49A594
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_10CEC98: Set var_88 = Me.TopCtrl1
  loc_10CEC9E: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_10CECE3: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10CECEC:   Call Form_KeyDown(Cancel, arg_10)
  loc_10CECF1: End If
  loc_10CECF5: Set var_88 = Me.TopCtrl1
  loc_10CECFB: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_10CED14: If (CStr() = "Browse") Then
  loc_10CED17:   Exit Sub
  loc_10CED18: End If
  loc_10CED35: var_C4 = Me.FGrid.Rows
  loc_10CED8C: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_10CEDA2:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10CEDB2:   var_9C = "+{Tab}"
  loc_10CEDB8:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_10CEDC2:   Cancel = 0
  loc_10CEDC8: Else
  loc_10CEDD2:   var_B0 = Me.FGrid.Rows
  loc_10CEE1F:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_10CEE35:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10CEE4B:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_10CEE55:     Cancel = 0
  loc_10CEE8F:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_10CEE92:       Call TopCtrl1_UnknownEvent_16()
  loc_10CEE97:     End If
  loc_10CEE97:   End If
  loc_10CEE97: End If
  loc_10CEE9D: global_68 = Cancel
  loc_10CEEC3: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10CEEE7: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10CEEFD:   var_11C = CLng(Me.FGrid.Col)
  loc_10CEF0D:   If Not (var_11C = CLng(1)) Then
  loc_10CEF17:     If (var_11C = CLng(2)) Then
  loc_10CEF1A:     End If
  loc_10CEF2D:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CEF45:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10CEF4A:     var_12C = vbNullString
  loc_10CEF54:     Set var_B4 = Me.FGrid
  loc_10CEF5A:     LateIdCallSt
  loc_10CEF72:   End If
  loc_10CEF72: End If
  loc_10CEF78: If (Cancel = &HD) Then
  loc_10CEF80:   global_70 = 0
  loc_10CEF83: End If
  loc_10CEF88: Exit Sub
  loc_10CEF89: Set var_8C = 0
End Sub

Private Sub FGrid_UnknownEvent_B 'E0D870
  'Data Table: 49A594
  loc_E0D861: Call FGrid_UnknownEvent_C()
  loc_E0D86B: global_70 = 0
  loc_E0D86E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1108574
  'Data Table: 49A594
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_110823C: Set var_88 = Me.TopCtrl1
  loc_1108242: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_110825B: If (CStr() = "Browse") Then
  loc_110825E:   Exit Sub
  loc_110825F: End If
  loc_1108263: Set var_88 = Me.TopCtrl1
  loc_1108269: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1108282: If (CStr() = "Browse") Then
  loc_1108285:   Exit Sub
  loc_1108286: End If
  loc_1108299: var_A0 = CLng(Me.FGrid.Col)
  loc_11082A9: If (var_A0 = CLng(1)) Then
  loc_11082B0:   Set var_C4 = Me.FGrid
  loc_11082D4:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1108301:   Set var_B4 = var_C4
  loc_1108313:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_110833B:   Set var_88 = Me.TxtGrid
  loc_1108341:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1108349:   0 = var_B4.Text
  loc_1108362:   If (Len(var_9C) <= 1) Then
  loc_1108371:     Set var_88 = Me.TxtGrid
  loc_1108377:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_110837F:     var_CA = var_B4.Text
  loc_1108390:     Set var_B8 = Me.TxtGrid
  loc_1108396:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_110839E:     var_C4.Text = var_9C
  loc_11083B1:   End If
  loc_11083BD:   Set var_88 = Me.TxtGrid
  loc_11083C3:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_11083DD:   Set var_B8 = Me.TxtGrid
  loc_11083E3:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_11083EB:   var_C4.SelStart = Len(var_B4.Text)
  loc_1108401: Else
  loc_1108408:   If (var_A0 = CLng(2)) Then
  loc_110840F:     Set var_C4 = Me.FGrid
  loc_1108433:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1108460:     Set var_B4 = var_C4
  loc_1108472:     Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_110849A:     Set var_88 = Me.TxtGrid
  loc_11084A0:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_11084A8:     0 = var_B4.Text
  loc_11084C1:     If (Len(var_9C) <= 1) Then
  loc_11084D0:       Set var_88 = Me.TxtGrid
  loc_11084D6:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_11084DE:       var_CA = var_B4.Text
  loc_11084EF:       Set var_B8 = Me.TxtGrid
  loc_11084F5:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_11084FD:       var_C4.Text = var_9C
  loc_1108510:     End If
  loc_110851C:     Set var_88 = Me.TxtGrid
  loc_1108522:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_110853C:     Set var_B8 = Me.TxtGrid
  loc_1108542:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_110854A:     var_C4.SelStart = Len(var_B4.Text)
  loc_110855D:   End If
  loc_110855D: End If
  loc_1108567: If (CLng(Cancel) <> &HD) Then
  loc_110856F:   global_70 = &HFF
  loc_1108572: End If
  loc_1108572: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E202B0
  'Data Table: 49A594
  loc_E202A7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E202AF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E20210
  'Data Table: 49A594
  loc_E20207: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E2020F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E45544
  'Data Table: 49A594
  Dim var_8C As TextBox
  loc_E45518: Call Proc_327_54_EB970C()
  loc_E45528: Set var_88 = Me.TxtGrid
  loc_E4552E: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E45536: var_8C.Visible = False
  loc_E45542: Exit Sub
End Sub

Public Function MasterFormExitGet() '49B1F0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '49B1FF
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '49B20E
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '49B21D
  SearchCode = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E943F8
  'Data Table: 49A594
  Dim Me As Recordset15
  loc_E94386: On Error Goto loc_E943EF
  loc_E9438F: Me.MoveFirst
  loc_E943B9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E943E1: Proc_5_0_1107AD0(&HFF, Me, global_72)
  loc_E943E9: Call Proc_327_52_12D7B78(0)
  loc_E943EE: Exit Sub
  loc_E943EF: ' Referenced from: E94386
  loc_E943EF: Proc_6_60_E63754(var_A0)
  loc_E943F4: Exit Sub
End Sub

Public Sub Proc_327_47_10A7DDC
  'Data Table: 49A594
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_104 As TextBox
  Dim var_10C As DataGrid
  Dim var_110 As TextBox
  loc_10A7B14: On Error Goto loc_10A7DD5
  loc_10A7B1B: Set var_88 = Me.FGrid
  loc_10A7B2A: var_88.Height = CVar(CDbl(6000))
  loc_10A7B3B: var_88.Width = CVar(CDbl(4500))
  loc_10A7B4C: var_88.Cols = 3
  loc_10A7B5D: var_88.Rows = 2
  loc_10A7B76: global_60 = CStr(CLng(var_88.BackColor))
  loc_10A7B80: var_98 = 0
  loc_10A7B89: var_CC = &H64
  loc_10A7B95: LateIdCallSt
  loc_10A7BA0: var_98 = CVar(CLng(1)) 'Long
  loc_10A7BA5: var_CC = &H898
  loc_10A7BB1: LateIdCallSt
  loc_10A7BB9: var_98 = 0
  loc_10A7BC5: var_CC = CVar(CLng(1)) 'Long
  loc_10A7BCA: var_EC = "For Date"
  loc_10A7BD3: LateIdCallSt
  loc_10A7BDE: var_98 = CVar(CLng(1)) 'Long
  loc_10A7BE9: var_CC = CVar(CInt(1)) 'Integer
  loc_10A7BF0: LateIdCallSt
  loc_10A7BFB: var_98 = CVar(CLng(2)) 'Long
  loc_10A7C00: var_CC = &H708
  loc_10A7C0C: LateIdCallSt
  loc_10A7C14: var_98 = 0
  loc_10A7C20: var_CC = CVar(CLng(2)) 'Long
  loc_10A7C25: var_EC = "Reading"
  loc_10A7C2E: LateIdCallSt
  loc_10A7C39: var_98 = CVar(CLng(2)) 'Long
  loc_10A7C44: var_CC = CVar(CInt(7)) 'Integer
  loc_10A7C4B: LateIdCallSt
  loc_10A7C68: LateIdCallSt
  loc_10A7C72: Set var_88 = Nothing 
  loc_10A7C84: Set var_100 = Me.Txt
  loc_10A7C8A: Call 0.Method_Proc_327_47_10A7DDC0 (CInt(0), var_104, var_108, var_88, CVar(CInt(7)), CVar(CLng(2)), var_88)
  loc_10A7C92: var_CC = var_104.Left
  loc_10A7C9A: var_98 = CVar(var_108) 'Single
  loc_10A7CA9: Me.DGLocation.Left = var_98
  loc_10A7CC5: Set var_10C = Me.Txt
  loc_10A7CCB: Call 0.Method_Proc_327_47_10A7DDC0 (CInt(0), var_110, var_114, var_98, var_88)
  loc_10A7CD3: var_EC = var_110.Height
  loc_10A7CE6: Set var_100 = Me.Txt
  loc_10A7CEC: Call 0.Method_Proc_327_47_10A7DDC0 (CInt(0), var_104, var_108)
  loc_10A7CF4: var_CC = var_104.Top
  loc_10A7D04: var_98 = CVar(((var_108 + var_114) + CDbl(&H19))) 'Single
  loc_10A7D13: Me.DGLocation.Top = var_98
  loc_10A7D33: Set var_100 = Me.Txt
  loc_10A7D39: Call 0.Method_Proc_327_47_10A7DDC0 (CInt(1), var_104, var_108)
  loc_10A7D41: var_98 = var_104.Left
  loc_10A7D58: Me.DGFacility.Left = CVar(var_108)
  loc_10A7D74: Set var_10C = Me.Txt
  loc_10A7D7A: Call 0.Method_Proc_327_47_10A7DDC0 (CInt(1), var_110)
  loc_10A7D95: Set var_100 = Me.Txt
  loc_10A7D9B: Call 0.Method_Proc_327_47_10A7DDC0 (CInt(1), var_104)
  loc_10A7DB3: var_98 = CVar(((var_104.Top + var_110.Height) + CDbl(&H19))) 'Single
  loc_10A7DC2: Me.DGFacility.Top = CVar(var_104.Top)
  loc_10A7DD4: Exit Sub
  loc_10A7DD5: ' Referenced from: 10A7B14
  loc_10A7DD5: Proc_6_60_E63754(var_88)
  loc_10A7DDA: Exit Sub
End Sub

Public Sub Proc_327_48_FC4CC4
  'Data Table: 49A594
  Dim Me As Recordset15
  Dim var_F4 As Integer
  Dim var_98 As TextBox
  Dim var_AC As TextBox
  Dim unk_49A5AC As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_DC As Variant
  loc_FC4B63: If (Me.RecordCount = 0) Then
  loc_FC4B66:   Proc_327_48_FC4CC4 = 
  loc_FC4B6C: End If
  loc_FC4B72: var_F4 = 0
  loc_FC4BA7: Set var_94 = Me.Txt
  loc_FC4BAD: Call 0.Method_Proc_327_48_FC4CC40 (CInt(0), var_98, var_9C, "Select Count(*) From FMReading Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (LocationCode='", var_DC, -1)
  loc_FC4BD6: Set var_A8 = Me.Txt
  loc_FC4BDC: Call 0.Method_Proc_327_48_FC4CC40 (CInt(1), var_AC, var_B0, var_E4 & var_9C & "' And FacilityCode='")
  loc_FC4BE4: var_F4 = var_AC.Tag
  loc_FC4BFD: unk_49A5AC.Execute var_F8 & var_B0 & "')", var_108, 
  loc_FC4C05:  = var_98.Tag.Fields
  loc_FC4C0D:  = var_E4.Item()
  loc_FC4C15:  = var_F8.Value
  loc_FC4C50: If (var_108 > 0) Then
  loc_FC4C7A:   MsgBox(CVar("Facility Meter Reading Entry Point Already Exists" & vbCrLf & "Please Find & Edit for More Entries"), &H40, "Information", var_128, var_138)
  loc_FC4C98:   Set var_94 = Me.Txt
  loc_FC4C9E:   Call 0.Method_Proc_327_48_FC4CC40 (CInt(0))
  loc_FC4CA6:   var_98.SetFocus
  loc_FC4CB7:   Proc_327_48_FC4CC4 = &HFF
  loc_FC4CBD: End If
  loc_FC4CBD: Proc_327_48_FC4CC4 = var_98
End Sub

Public Sub Proc_327_49_E45734
  'Data Table: 49A594
  loc_E45710: Set var_88 = Me.TopCtrl1
  loc_E45716: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_E4572F: If (CStr() = "Browse") Then
  loc_E45732:   Exit Sub
  loc_E45733: End If
  loc_E45733: Exit Sub
End Sub

Public Sub Proc_327_50_10521A0
  'Data Table: 49A594
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_B4 As String
  Dim var_B0 As TextBox
  Dim var_D4 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_F4 As Variant
  Dim var_A4 As Variant
  Dim var_124 As Variant
  Dim var_168 As Variant
  loc_1051F5F: var_A0 = CLng(Me.FGrid.Col)
  loc_1051F6F: If (var_A0 = CLng(1)) Then
  loc_1051F7B:   Set var_8C = Me.TxtGrid
  loc_1051F81:   Call 0.Method_Proc_327_50_10521A00 (0, var_A4)
  loc_1051F94:   var_B4 = Proc_6_33_15125B8(var_A4)
  loc_1051FA0:   Set var_AC = Me.TxtGrid
  loc_1051FA6:   Call 0.Method_Proc_327_50_10521A00 (0, var_B0)
  loc_1051FAE:   var_B0.Text = var_B4
  loc_1051FD4:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1051FEC:   var_F4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1051FFD:   Set var_8C = Me.TxtGrid
  loc_1052003:   Call 0.Method_Proc_327_50_10521A00 (0, var_A4, var_B4)
  loc_105200B:   var_F4 = var_A4.Text
  loc_1052021:   LateIdCallSt
  loc_1052042:   Call Proc_327_55_FCC378(var_126, Me.FGrid, CVar(var_B4))
  loc_105204D:   If (var_126 = 0) Then
  loc_1052055:     Proc_327_50_10521A0 = 0
  loc_105205B:   End If
  loc_1052074:   var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1052079:   var_F4 = 1
  loc_1052086:   Set var_A4 = Me.FGrid
  loc_1052097:   var_B4 = CStr(var_A4.TextMatrix))
  loc_10520B0:   If (var_B4 <> vbNullString) Then
  loc_10520B3:     var_D4 = vbNullString
  loc_10520BD:     Set var_8C = Me.FGrid
  loc_10520CE:   End If
  loc_10520D1: Else
  loc_10520D8:   If (var_A0 = CLng(2)) Then
  loc_10520E7:     Set var_8C = Me.TxtGrid
  loc_10520ED:     Call 0.Method_Proc_327_50_10521A00 (0, var_A4, var_B4, FGrid.DispID_10000, var_D4)
  loc_10520F5:     var_F4 = var_A4.Text
  loc_1052118:     var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1052130:     var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_105215D:     var_168 = CVar(CStr(Format(CVar(Val(var_B4)), "0.000"))) 'String
  loc_1052165:     Set var_B0 = Me.FGrid
  loc_105216B:     LateIdCallSt
  loc_1052192:   End If
  loc_1052192: End If
  loc_1052197: Proc_327_50_10521A0 = &HFF
End Sub

Public Sub Proc_327_51_F173D8
  'Data Table: 49A594
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F172EE: Set var_8C = Me.Txt
  loc_F172F4: Call 0.Method_Proc_327_51_F173D8C (var_8E, var_86)
  loc_F17304: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1731A:   Set var_8C = Me.Txt
  loc_F17320:   Call 0.Method_Proc_327_51_F173D80 (CInt(var_86), var_98)
  loc_F17328:   var_98.Text = vbNullString
  loc_F17344:   Set var_8C = Me.Txt
  loc_F1734A:   Call 0.Method_Proc_327_51_F173D80 (CInt(var_86), var_98)
  loc_F17352:   var_98.Tag = vbNullString
  loc_F17361: Next var_92 'Byte
  loc_F1737A: Me.FGrid.Rows = 1
  loc_F17397: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F1739F: Set var_98 = Me.FGrid
  loc_F173CE: Me.FGrid.FixedRows = 1
  loc_F173D6: Exit Sub
End Sub

Public Sub Proc_327_52_12D7B78
  'Data Table: 49A594
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim var_104 As Variant
  Dim unk_49A5AC As Connection15
  Dim var_88 As Recordset15
  Dim var_130 As TextBox
  Dim var_12C As Fields15
  Dim var_150 As Variant
  Dim var_118 As Variant
  Dim var_8A As Integer
  Dim var_128 As Variant
  loc_12D750C: On Error Goto loc_12D7B6F
  loc_12D7526: If (Me.RecordCount > 0) Then
  loc_12D7529:   Call Proc_327_51_F173D8()
  loc_12D7542:   var_94 = "Select FM.*,FM1.ForDate,FM1.Reading,LM.Name As LocationName,F.Name As FacilityName From (((FMReading1 FM1 Left Join FMReading FM On FM1.Code=Fm.Code)Left Join LocationMast LM On FM.LocationCode=LM.Code) Left Join FacilityMast F On FM.FacilityCode=F.Code) Where FM.LogSite_Code='" & MemVar_1F95078
  loc_12D7590:   var_104 = CVar(var_94 & "' and FM.Site_Code='" & MemVar_1F95070 & "' and FM.Code='") & Me.Fields.Item("SearchCode").Value & "' Order By FM1.ForDate" 
  loc_12D759E:   unk_49A5AC.Execute CStr(var_104), var_128, -1
  loc_12D75A9:   Set var_88 = var_12C
  loc_12D75E1:   If (var_88.RecordCount > 0) Then
  loc_12D761A:     Set var_12C = Me.Txt
  loc_12D7620:     Call 0.Method_Proc_327_52_12D7B780 (CInt(0), var_130)
  loc_12D7628:     var_130.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("LocationCode")))
  loc_12D7672:     Set var_12C = Me.Txt
  loc_12D7678:     Call 0.Method_Proc_327_52_12D7B780 (CInt(0), var_130)
  loc_12D7680:     var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("LocationName")))
  loc_12D76CA:     Set var_12C = Me.Txt
  loc_12D76D0:     Call 0.Method_Proc_327_52_12D7B780 (CInt(1), var_130)
  loc_12D76D8:     var_130.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("FacilityCode")))
  loc_12D7722:     Set var_12C = Me.Txt
  loc_12D7728:     Call 0.Method_Proc_327_52_12D7B780 (CInt(1), var_130)
  loc_12D7730:     var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("FacilityName")))
  loc_12D777E:     var_12C = var_88.Fields
  loc_12D77E7:     var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_12C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_12D782C:     Me.LblUser.Caption = CStr(var_12C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_12D7907:     var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_12D794C:     Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_12D7986:     var_8A = 1
  loc_12D799C:     Me.FGrid.Rows = 1
  loc_12D79A4:     ' Referenced from: 12D7AE6
  loc_12D79B3:     If Not(var_88.EOF) Then
  loc_12D79B6:       var_B0 = vbNullString
  loc_12D79C0:       Set var_A0 = Me.FGrid
  loc_12D79D5:       Set var_1E8 = Me.FGrid
  loc_12D7A07:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_12D7A0F:       var_150 = CVar(CLng(1)) 'Long
  loc_12D7A3B:       var_128 = CVar(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ForDate")), FGrid.DispID_10000)), "dd/MMM/yyyy"))) 'String
  loc_12D7A42:       LateIdCallSt
  loc_12D7A7D:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_12D7A85:       var_150 = CVar(CLng(2)) 'Long
  loc_12D7AB2:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("Reading")), "0.000"))) 'String
  loc_12D7AB9:       LateIdCallSt
  loc_12D7AD1:       Set var_1E8 = Nothing 
  loc_12D7ADB:       var_8A = (var_8A + 1)
  loc_12D7AE1:       var_88.MoveNext
  loc_12D7AE6:       GoTo loc_12D79A4
  loc_12D7AE9:     End If
  loc_12D7AE9:   End If
  loc_12D7AE9:   var_B0 = 0
  loc_12D7AF3:   Set var_A0 = Me.FGrid
  loc_12D7B20:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_12D7B23:     var_B0 = "1"
  loc_12D7B2D:     Set var_A0 = Me.FGrid
  loc_12D7B3E:   End If
  loc_12D7B3E:   var_B0 = 1
  loc_12D7B51:   Me.FGrid.FixedRows = var_B0
  loc_12D7B5C: Else
  loc_12D7B5C:   Call Proc_327_51_F173D8(FGrid.DispID_10000, var_B0, FGrid.DispID_2E, var_B0, var_8A, var_1E8, var_104)
  loc_12D7B61: End If
  loc_12D7B61: Call Proc_327_54_EB970C(1, 1, var_150)
  loc_12D7B6B: Set var_88 = Nothing
  loc_12D7B6E: Exit Sub
  loc_12D7B6F: ' Referenced from: 12D750C
  loc_12D7B6F: Proc_6_60_E63754(var_118, var_1E8)
  loc_12D7B74: Exit Sub
  loc_12D7B75: var_128 = 
End Sub

Public Sub Proc_327_53_E7B984(arg_C) 'E7B984
  'Data Table: 49A594
  Dim var_98 As TextBox
  loc_E7B932: Set var_8C = Me.Txt
  loc_E7B938: Call 0.Method_Proc_327_53_E7B984C (var_8E, var_86)
  loc_E7B948: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7B95E:   Set var_8C = Me.Txt
  loc_E7B964:   Call 0.Method_Proc_327_53_E7B9840 (CInt(var_86), var_98)
  loc_E7B96C:   var_98.Enabled = arg_C
  loc_E7B97B: Next var_92 'Byte
  loc_E7B981: Exit Sub
End Sub

Public Sub Proc_327_54_EB970C
  'Data Table: 49A594
  loc_EB9688: If (CBool(Me.DGLocation.Visible) = &HFF) Then
  loc_EB969A:   Me.DGLocation.Visible = False
  loc_EB96A2: End If
  loc_EB96BE: If (CBool(Me.DGFacility.Visible) = &HFF) Then
  loc_EB96D0:   Me.DGFacility.Visible = False
  loc_EB96D8: End If
  loc_EB96F3: If (Me.FrmList.Visible = &HFF) Then
  loc_EB9702:   Me.FrmList.Visible = False
  loc_EB970A: End If
  loc_EB970A: Exit Sub
End Sub

Public Sub Proc_327_55_FCC378
  'Data Table: 49A594
  Dim var_A0 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_B8 As TextBox
  loc_FCC1E3: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FCC1E8:   var_9A = 1 'Byte
  loc_FCC1EC: End If
  loc_FCC1F5: Set var_A0 = Me.TxtGrid
  loc_FCC1FB: Call 0.Method_Proc_327_55_FCC3780 (0, var_B8)
  loc_FCC224: If (Trim(CVar(var_B8)) = vbNullString) Then
  loc_FCC227:   GoTo loc_FCC36A
  loc_FCC22A: End If
  loc_FCC233: Set var_A0 = Me.TxtGrid
  loc_FCC239: Call 0.Method_Proc_327_55_FCC3780 (0, var_B8)
  loc_FCC252: var_90 = CDate(Trim(CVar(var_B8)))
  loc_FCC286: For var_EC = 1 To CInt((CLng(Me.FGrid.Rows) - 2)): var_88 = var_EC 'Integer
  loc_FCC2AA:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FCC2AD:     GoTo loc_FCC362
  loc_FCC2B0:   End If
  loc_FCC2B4:   var_D8 = CVar(CLng(var_88)) 'Long
  loc_FCC2DE:   var_E8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FCC2E8:   var_98 = CDate(var_E8)
  loc_FCC300:   If (var_90 = var_98) Then
  loc_FCC324:     MsgBox("Duplicate For Date Not Allowed", &H40, "Validation", var_E8, var_12C)
  loc_FCC33D:     Set var_A0 = Me.TxtGrid
  loc_FCC343:     Call 0.Method_Proc_327_55_FCC3780 (0, var_B8, var_98, CVar(CLng(var_9A)))
  loc_FCC34B:     var_B8.SetFocus
  loc_FCC35C:     Proc_327_55_FCC378 = 0
  loc_FCC362:     ' Referenced from: FCC2AD
  loc_FCC362:   End If
  loc_FCC365: Next var_EC 'Integer
  loc_FCC36A: ' Referenced from: FCC227
  loc_FCC36F: Proc_327_55_FCC378 = &HFF
  loc_FCC375: DOC
End Sub
