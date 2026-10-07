VERSION 5.00
Begin VB.Form TelCallTypeMast
  Caption = "Call Type Mast"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8790
  ClientHeight = 4035
  Begin DataGrid DGHelp
    Left = 3735
    Top = 2145
    Width = 3810
    Height = 1995
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin DataGrid DGLedgerAc
    Left = 585
    Top = 2370
    Width = 4650
    Height = 1995
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2355
    Top = 825
    Width = 3165
    Height = 255
    TabIndex = 0
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
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2355
    Top = 1635
    Width = 3990
    Height = 255
    TabIndex = 3
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
    Left = 2355
    Top = 1365
    Width = 3990
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2355
    Top = 1095
    Width = 1005
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 5
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
  Begin MSFlexGrid FGPoint
    Left = 870
    Top = 2085
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGTaxStru
    Left = 2295
    Top = 1890
    Width = 4650
    Height = 1995
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8790
    Height = 510
    TabIndex = 12
  End
  Begin Label LblName
    Caption = "Call Type"
    Index = 0
    ForeColor = &H0&
    Left = 825
    Top = 825
    Width = 795
    Height = 240
    TabIndex = 7
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
  Begin Label LblLedgerAc
    Caption = "Tax Structure"
    Index = 0
    ForeColor = &H0&
    Left = 810
    Top = 1635
    Width = 1170
    Height = 240
    TabIndex = 6
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
    Caption = "A/C Name"
    Index = 2
    ForeColor = &H0&
    Left = 810
    Top = 1365
    Width = 870
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
  Begin Label LblLedgerAc
    Caption = "Short Name"
    Index = 2
    ForeColor = &H0&
    Left = 810
    Top = 1095
    Width = 1020
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

Attribute VB_Name = "TelCallTypeMast"


Private Sub DGLedgerAc_UnknownEvent_9 'F48F94
  'Data Table: 4623F8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F48E8B: Me.DGLedgerAc.Visible = False
  loc_F48EAA: If (Me.RecordCount > 0) Then
  loc_F48EE9:   Set var_B4 = Me.Txt
  loc_F48EEF:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_F48EF7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F48F2A:   var_B0 = Me.Fields.Item("Name")
  loc_F48F49:   Set var_B4 = Me.Txt
  loc_F48F4F:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_F48F57:   var_B8.Text = CStr(var_B0.Value)
  loc_F48F6D: End If
  loc_F48F78: Set var_A8 = Me.Txt
  loc_F48F7E: Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(2))
  loc_F48F86: var_B0.SetFocus
  loc_F48F92: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_1F 'E751F8
  'Data Table: 4623F8
  loc_E751B6: Proc_6_153_E91D24(Me.DGLedgerAc, arg_14)
  loc_E751CD: Set var_8C = Me.FGPoint
  loc_E751E9: Proc_6_138_106E830(Me.DGLedgerAc, global_60, CInt(2))
  loc_E751F7: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F3D074
  'Data Table: 4623F8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3CF6B: Me.DGTaxStru.Visible = False
  loc_F3CF8A: If (Me.RecordCount > 0) Then
  loc_F3CFC9:   Set var_B4 = Me.Txt
  loc_F3CFCF:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3CFD7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3D00A:   var_B0 = Me.Fields.Item("Name")
  loc_F3D029:   Set var_B4 = Me.Txt
  loc_F3D02F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3D037:   var_B8.Text = CStr(var_B0.Value)
  loc_F3D04D: End If
  loc_F3D058: Set var_A8 = Me.Txt
  loc_F3D05E: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3))
  loc_F3D066: var_B0.SetFocus
  loc_F3D072: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'E75320
  'Data Table: 4623F8
  loc_E752DE: Proc_6_153_E91D24(Me.DGTaxStru, arg_14)
  loc_E752F5: Set var_8C = Me.FGPoint
  loc_E75311: Proc_6_138_106E830(Me.DGTaxStru, global_64, CInt(3))
  loc_E7531F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ECE55C
  'Data Table: 4623F8
  Dim var_94 As TextBox
  loc_ECE4BC: On Error Goto loc_ECE518
  loc_ECE4BF: Call Proc_92_33_E7BE44()
  loc_ECE4D9: var_88 = "ADD"
  loc_ECE4E7: Call Proc_92_32_E7BF74(Proc_5_1_100EC1C(var_88, Me))
  loc_ECE4FD: Set var_8C = Me.Txt
  loc_ECE503: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_ECE50B: var_94.SetFocus
  loc_ECE517: Exit Sub
  loc_ECE518: ' Referenced from: ECE4BC
  loc_ECE520: Set var_8C = Err()
  loc_ECE526: Call 0.Method_arg_2C (var_88)
  loc_ECE547: MsgBox(CVar(var_88), &H40, "Information", var_E4, var_104)
  loc_ECE55A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC533C
  'Data Table: 4623F8
  loc_EC52A4: On Error Goto loc_EC5334
  loc_EC52DE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC52ED:   Set var_110 = Me
  loc_EC5304:   Call Proc_92_32_E7BF74(Proc_5_1_100EC1C("INI", var_110))
  loc_EC530F:   Call Proc_92_34_11117EC(global_52)
  loc_EC5317: Else
  loc_EC531D:   Call 0.Method_arg_1E8 (var_110)
  loc_EC5325:   Call var_110.SetFocus
  loc_EC532E: End If
  loc_EC532E: Call Proc_92_37_EF87E0()
  loc_EC5333: Exit Sub
  loc_EC5334: ' Referenced from: EC52A4
  loc_EC5334: Proc_6_60_E63754()
  loc_EC5339: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12CC14C
  'Data Table: 4623F8
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_46240B As Connection15
  Dim var_9C As Recordset15
  Dim var_144 As Integer
  Dim var_12C As Recordset15
  Dim var_134 As Fields15
  Dim var_148 As Field20
  Dim var_96 As Integer
  loc_12CBB08: On Error Goto loc_12CC0F4
  loc_12CBB19: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_12CBB1C:   Exit Sub
  loc_12CBB1D: End If
  loc_12CBB5C: var_E4 = "select SysYN From RevMast Where Code='" & Me.Fields.Item("Code").Value 
  loc_12CBB65: var_104 = var_E4 & "'" 
  loc_12CBB73: unk_46240B.Execute CStr(var_104), var_128, -1
  loc_12CBB7E: Set var_9C = var_12C
  loc_12CBB9E: var_130 = var_9C.RecordCount
  loc_12CBBAC: If (var_130 > 0) Then
  loc_12CBBEB:   If (var_9C.Fields.Item("SysYN").Value = "Y") Then
  loc_12CBC07:     MsgBox("SYSTEM ENTRY CAN'T BE DELETED", 0, var_E4, var_104, var_128)
  loc_12CBC17:     Exit Sub
  loc_12CBC18:   End If
  loc_12CBC18: End If
  loc_12CBC1E: var_144 = 0
  loc_12CBC6F: var_104 = "SELECT Count(*) FROM TelCallCode WHERE CallTypeCode='" & Me.Fields.Item("Code").Value & "'" 
  loc_12CBC7D: unk_46240B.Execute CStr(var_104), var_128, -1
  loc_12CBC85: var_12C = var_12C.Fields
  loc_12CBC8D: var_144 = var_134.Item(var_134)
  loc_12CBC95: var_148 = var_148.Value
  loc_12CBCC2: If (var_158 > 0) Then
  loc_12CBCE6:   MsgBox(" This call Type is present in Call Codes Master,you can't Delete it.", &H40, "Information", var_104, var_128)
  loc_12CBCF6:   Exit Sub
  loc_12CBCF7: End If
  loc_12CBD2E: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_104, var_128) = 6) Then
  loc_12CBD33:   var_96 = 0
  loc_12CBD3F:   unk_46240B.BeginTrans var_130
  loc_12CBD46:   var_96 = &HFF
  loc_12CBD5A:   var_94 = Me.Bookmark 'Variant
  loc_12CBDB4:   unk_46240B.Execute CStr("Delete From RevMast Where Code='" & Me.Fields.Item("Code").Value & "'"), var_128, -1
  loc_12CBDFF:   var_1B0 = 0
  loc_12CBE12:   var_1A8 = 0
  loc_12CBE1D:   var_1A4 = 0
  loc_12CBE30:   var_19C = 0
  loc_12CBE3B:   var_198 = 0
  loc_12CBE4E:   var_190 = 0
  loc_12CBE97:   Proc_154_5_10E3BD4(MemVar_1F95044, "RevMast", "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_12CBF07:   var_104 = "Delete From TelCallType Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_12CBF15:   unk_46240B.Execute CStr(var_104), var_128, -1
  loc_12CBF60:   var_1B0 = 0
  loc_12CBF73:   var_1A8 = 0
  loc_12CBF7E:   var_1A4 = 0
  loc_12CBF91:   var_19C = 0
  loc_12CBF9C:   var_198 = 0
  loc_12CBFAF:   var_190 = 0
  loc_12CBFEF:   var_108 = "TelCallType"
  loc_12CBFF8:   Proc_154_5_10E3BD4(MemVar_1F95044, var_108, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_12CC026:   unk_46240B.CommitTrans
  loc_12CC02D:   var_96 = 0
  loc_12CC03B:   Me.Requery -1
  loc_12CC04B:   Me.Requery -1
  loc_12CC05B:   Me.Requery -1
  loc_12CC06B:   Me.Requery -1
  loc_12CC08B:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12CC098:     Me.Bookmark = var_94
  loc_12CC0A0:   Else
  loc_12CC0B4:     If (Me.EOF = 0) Then
  loc_12CC0BD:       Me.MoveLast
  loc_12CC0C2:     End If
  loc_12CC0C2:   End If
  loc_12CC0C2:   Call Proc_92_34_11117EC(var_96, var_190, 0, var_198, var_19C)
  loc_12CC0E3:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_12CC0EB: End If
  loc_12CC0F0: Set var_9C = Nothing
  loc_12CC0F3: Exit Sub
  loc_12CC0F4: ' Referenced from: 12CBB08
  loc_12CC0FA: If (var_96 = &HFF) Then
  loc_12CC103:   unk_46240B.RollbackTrans
  loc_12CC108: End If
  loc_12CC110: Set var_A0 = Err()
  loc_12CC116: Call 0.Method_arg_2C (var_108, 0, var_1A4)
  loc_12CC137: MsgBox(CVar(var_108), &H30, " Deletion Error ", var_104, var_128)
  loc_12CC14A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F28694
  'Data Table: 4623F8
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F28598: On Error Goto loc_F2864F
  loc_F285A9: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F285AC:   Exit Sub
  loc_F285AD: End If
  loc_F285C4: If (Me.RecordCount > 0) Then
  loc_F285DC:   var_8C = "EDIT"
  loc_F285EA:   Call Proc_92_32_E7BF74(Proc_5_1_100EC1C(var_8C, Me))
  loc_F28600:   Set var_90 = Me.Txt
  loc_F28606:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F2860E:   var_98.SetFocus
  loc_F2861D: Else
  loc_F2863E:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F2864E: End If
  loc_F2864E: Exit Sub
  loc_F2864F: ' Referenced from: F28598
  loc_F28657: Set var_90 = Err()
  loc_F2865D: Call 0.Method_arg_2C (var_8C)
  loc_F2867E: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F28691: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A4DC
  'Data Table: 4623F8
  loc_E1A4D1: Me.Global.Unload Me
  loc_E1A4D9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F28550
  'Data Table: 4623F8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  Dim TopCtrl1_UnknownEvent_FFF As Double
  loc_F28450: On Error Goto loc_F284E8
  loc_F2845C: var_88 = Me.RecordCount
  loc_F2846A: If (var_88 <= 0) Then
  loc_F28473:   var_B8 = "Information"
  loc_F2848E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F2849E:   Exit Sub
  loc_F2849F: End If
  loc_F284A6: var_10C = "Select TelCallType.Code As SearchCode,TelCallType.CallType ,TelCallType.ShortName FROM TelCallType WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_F284AD: MemVar_1F950E4 = var_10C & "' or LOGSITE_CODE='HO') Order by TelCallType.CallType"
  loc_F284B7: var_10C = "3000,1000"
  loc_F284BD: Proc_6_126_F1C850(var_10C)
  loc_F284CB: MemVar_1F95120 = Me
  loc_F284E2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F284E7: Exit Sub
  loc_F284E8: ' Referenced from: F28450
  loc_F284F0: Set var_110 = Err()
  loc_F284F6: Call 0.Method_arg_1C (var_88)
  loc_F28507: If (var_88 <> 0) Then
  loc_F28512:   Set var_110 = Err()
  loc_F28518:   Call 0.Method_arg_2C (var_10C)
  loc_F28539:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F2854C: End If
  loc_F2854C: Exit Sub
  loc_F2854D: TopCtrl1_UnknownEvent_FFF = MemVar_1F950E4
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2D548
  'Data Table: 4623F8
  loc_E2D538: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D540: Call Proc_92_34_11117EC(global_52)
  loc_E2D545: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2C468
  'Data Table: 4623F8
  loc_E2C458: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C460: Call Proc_92_34_11117EC(global_52)
  loc_E2C465: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2C4C8
  'Data Table: 4623F8
  loc_E2C4B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C4C0: Call Proc_92_34_11117EC(global_52)
  loc_E2C4C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2D368
  'Data Table: 4623F8
  loc_E2D358: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D360: Call Proc_92_34_11117EC(global_52)
  loc_E2D365: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10860AC
  'Data Table: 4623F8
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_46240B As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1085E14: On Error Goto loc_1086060
  loc_1085E2B: var_A0 = "Select TelCallType.Code As SearchCode,TelCallType.CallType as [Call Type],TelCallType.ShortName as [Short Name] FROM TelCallType WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_1085E3B: unk_46240B.Execute var_A0 & "' or LOGSITE_CODE='HO') Order by TelCallType.CallType", var_C4, -1
  loc_1085E46: Set var_88 = var_C8
  loc_1085E5C: var_CC = var_88.RecordCount
  loc_1085E6A: If (var_CC = 0) Then
  loc_1085E86:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1085E96:   Exit Sub
  loc_1085E97: End If
  loc_1085EA6: var_A4 = MemVar_1F950B4 & "\CallTypeMast.ttx"
  loc_1085EAD: Set var_C8 = var_88 
  loc_1085EB9: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1085EC3: Set var_88 = var_C8
  loc_1085EC9: var_B4 = CVar(var_12E) 'Integer
  loc_1085ECC: var_98 = var_B4 'Variant
  loc_1085EE8: var_A0 = MemVar_1F950B4 & "\CallTypeMast.RPT"
  loc_1085EF1: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1085EFC: MemVar_1F951E8 = var_C8
  loc_1085F17: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1085F1F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1085F2B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1085F44:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1085F4C:   Call 0.Method_arg_20 (var_138)
  loc_1085F54:   Call 0.Method_arg_30 (var_A0)
  loc_1085F9A:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1085FB0:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1085FB8:     Call 0.Method_arg_20 (var_138)
  loc_1085FC0:     Call 0.Method_arg_38 ("'Call Type Master'")
  loc_1085FCC:   End If
  loc_1085FCF: Next var_132 'Integer
  loc_1085FED: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1085FF5: Call 0.Method_arg_2C (var_DC)
  loc_1086003: Call 0.Method_arg_150 (var_FC)
  loc_108600E: Call 0.Method_arg_50 (var_A0)
  loc_1086018: Set var_138 = Nothing
  loc_1086032: Set var_C8 = MemVar_1F951E8 
  loc_108603E: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_1086049: MemVar_1F951E8 = var_C8
  loc_108605C: Set var_88 = Nothing
  loc_108605F: Exit Sub
  loc_1086060: ' Referenced from: 1085E14
  loc_1086068: Set var_C8 = Err()
  loc_108606E: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1086079: Call 0.Method_arg_50 (var_A4)
  loc_1086095: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_10860A8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E433B4
  'Data Table: 4623F8
  Dim Me As Recordset15
  loc_E4338B: Me.Requery -1
  loc_E4339B: Me.Requery -1
  loc_E433AB: Me.Requery -1
  loc_E433B0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '141E124
  'Data Table: 4623F8
  Dim var_A0 As String
  Dim var_D8 As Variant
  Dim var_B8 As String
  Dim unk_46240B As Connection15
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_9C As Field20
  Dim var_EC As String
  Dim var_FC As Variant
  Dim var_C8 As Variant
  Dim var_10C As Variant
  Dim Me As Recordset15
  Dim var_114 As String
  Dim var_120 As String
  Dim var_118 As TextBox
  Dim var_134 As String
  Dim var_12C As TextBox
  Dim var_140 As TextBox
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_11C As String
  Dim var_130 As String
  Dim var_B4 As Variant
  loc_141D6FC: On Error Goto loc_141E0D2
  loc_141D703: var_86 = CByte(0) 'Byte
  loc_141D712: Set var_94 = Me.Txt
  loc_141D718: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_141D741: If (Proc_183_19_E8E68C(var_98, "Call Type") = 0) Then
  loc_141D74B:   Call Txt_GotFocus()
  loc_141D750:   Exit Sub
  loc_141D751: End If
  loc_141D75C: Set var_94 = Me.Txt
  loc_141D762: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_141D78B: If (Proc_183_19_E8E68C(var_98, "Short Name") = 0) Then
  loc_141D795:   Call Txt_GotFocus()
  loc_141D79A:   Exit Sub
  loc_141D79B: End If
  loc_141D7A6: Set var_94 = Me.Txt
  loc_141D7AC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, CInt(1))
  loc_141D7D5: If (Proc_183_19_E8E68C(var_98, "Ledger Name") = 0) Then
  loc_141D7DF:   Call Txt_GotFocus()
  loc_141D7E4:   Exit Sub
  loc_141D7E5: End If
  loc_141D7F0: Set var_94 = Me.Txt
  loc_141D7F6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98, CInt(2))
  loc_141D81F: If (Proc_183_19_E8E68C(var_98, "Tax Stucture Name") = 0) Then
  loc_141D829:   Call Txt_GotFocus()
  loc_141D82E:   Exit Sub
  loc_141D82F: End If
  loc_141D833: Set var_94 = Me.TopCtrl1
  loc_141D839: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(CInt(3))
  loc_141D852: If (CStr(CInt(0)) = "Add") Then
  loc_141D85B:   var_D8 = 0
  loc_141D878:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From RevMast Where SITE_CODE='" & MemVar_1F95070
  loc_141D87F:   var_B8 = CStr(CInt(0)) & "' AND SysYn<>'Y'"
  loc_141D888:   unk_46240B.Execute var_B8, var_B4, -1
  loc_141D890:   var_94 = var_94.Fields
  loc_141D898:   var_D8 = var_98.Item(var_98)
  loc_141D8A0:   var_9C = var_9C.Value
  loc_141D8D9:   var_FC = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_141D8FF:   var_E8 = Format(CStr(var_E8), "000")
  loc_141D907:   var_10C = (1 + var_E8)
  loc_141D912:   global_72 = CStr(var_10C)
  loc_141D927: Else
  loc_141D944:   var_98 = Me.Fields.Item("Code")
  loc_141D95B:   global_72 = CStr(var_98.Value)
  loc_141D96C: End If
  loc_141D975: unk_46240B.BeginTrans var_110
  loc_141D97E: var_86 = CByte(1) 'Byte
  loc_141D986: Set var_94 = Me.TopCtrl1
  loc_141D98C: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(1)
  loc_141D9A5: If (CStr(var_FC) = "Add") Then
  loc_141D9BF:   var_A0 = "Insert Into RevMast(Code,Name,ShortName,ACCode,TaxStru,SysYN,AppMode,FieldType,U_Name,U_EntDt,U_AE,FlagType,FlagAmr,DeskCode,Type,Site_Code,LOGSITE_CODE) Values('" & global_72
  loc_141D9D7:   Set var_94 = Me.Txt
  loc_141D9DD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_B8, var_A0 & "','", var_238)
  loc_141D9E5:   -1 = var_98.Text
  loc_141D9F5:   var_120 = var_23C & var_B8 & "','"
  loc_141DA06:   Set var_9C = Me.Txt
  loc_141DA0C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118, var_11C)
  loc_141DA14:   var_120 = var_118.Text
  loc_141DA24:   var_134 = var_E8 & var_11C & "','"
  loc_141DA35:   Set var_128 = Me.Txt
  loc_141DA3B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C, var_130)
  loc_141DA43:   var_134 = var_12C.Tag
  loc_141DA64:   Set var_13C = Me.Txt
  loc_141DA6A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_141DAA1:   Proc_6_7_F26918(var_E8, Date)
  loc_141DAB2:   var_164 = CVar(var_98 & var_130 & "','" & var_140.Tag & "','N','Amount','C','" & MemVar_1F950C8 & "',") & var_E8 & ",'A','FOM','Detail','" 
  loc_141DAF9:   unk_46240B.Execute CStr(var_164 & CVar(MemVar_1F95078) & "FOM','Cr','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_141DB68:   var_A0 = "Insert Into TelCallType(Code,CallType,ShortName,ACCode,TaxStru,U_Name,U_EntDt,U_AE,sITE_cODE,LOGSITE_CODE) Values('" & global_72
  loc_141DB6F:   var_EC = var_A0 & "','"
  loc_141DB80:   Set var_94 = Me.Txt
  loc_141DB86:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_B8, var_EC)
  loc_141DB8E:   var_1F4 = var_98.Text
  loc_141DB97:   var_114 = -1 & var_B8
  loc_141DB9E:   var_120 = var_23C & var_B8 & "','"
  loc_141DBAF:   Set var_9C = Me.Txt
  loc_141DBB5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118, var_11C)
  loc_141DBBD:   var_120 = var_118.Text
  loc_141DBDE:   Set var_128 = Me.Txt
  loc_141DBE4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_141DC0D:   Set var_13C = Me.Txt
  loc_141DC13:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_141DC4A:   Proc_6_7_F26918(var_E8, Date)
  loc_141DC65:   var_174 = CVar(var_23C & var_11C & "','" & var_12C.Tag & "','" & var_140.Tag & "','" & MemVar_1F950C8 & "',") & var_E8 & ",'A','" & CVar(MemVar_1F95070) 
  loc_141DC8F:   unk_46240B.Execute CStr(var_174 & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_141DCE6: Else
  loc_141DD04:   Set var_94 = Me.Txt
  loc_141DD0A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, "UPDATE RevMast SET Name='")
  loc_141DD12:   var_1F4 = var_98.Text
  loc_141DD1B:   var_B8 = -1 & var_A0
  loc_141DD22:   var_114 = var_B8 & "',ShortName='"
  loc_141DD33:   Set var_9C = Me.Txt
  loc_141DD39:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118, var_EC)
  loc_141DD41:   var_114 = var_118.Text
  loc_141DD62:   Set var_128 = Me.Txt
  loc_141DD68:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_141DD91:   Set var_13C = Me.Txt
  loc_141DD97:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_141DDBD:   var_FC = CVar(var_23C & var_EC & "',ACCode='" & var_12C.Tag & "',TaxStru='" & var_140.Tag & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_141DDCE:   Proc_6_7_F26918(var_E8, Date)
  loc_141DE08:   var_1D4 = var_FC & var_E8 & ",U_AE='E',FIELDTYPE='C',SITE_CODE='" & CVar(MemVar_1F95070) & "' WHERE Code='" & CVar(global_72) & "'" 
  loc_141DE16:   unk_46240B.Execute CStr(var_1D4), , 
  loc_141DE84:   Set var_94 = Me.Txt
  loc_141DE8A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, "UPDATE TelCallType SET CallType='")
  loc_141DE92:   var_1F4 = var_98.Text
  loc_141DE9B:   var_B8 = -1 & var_A0
  loc_141DEA2:   var_114 = var_B8 & "',ShortName='"
  loc_141DEB3:   Set var_9C = Me.Txt
  loc_141DEB9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118, var_EC)
  loc_141DEC1:   var_114 = var_118.Text
  loc_141DEE2:   Set var_128 = Me.Txt
  loc_141DEE8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_141DF11:   Set var_13C = Me.Txt
  loc_141DF17:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_141DF3D:   var_FC = CVar(var_23C & var_EC & "',ACCode='" & var_12C.Tag & "',TaxStru='" & var_140.Tag & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_141DF4E:   Proc_6_7_F26918(var_E8, Date)
  loc_141DF56:   var_10C = var_FC & var_E8 
  loc_141DF5A:   var_C8 = ",U_AE='E',SITE_CODE='"
  loc_141DF96:   unk_46240B.Execute CStr(var_10C & var_C8 & CVar(MemVar_1F95070) & "' WHERE Code='" & CVar(global_72) & "'"), , 
  loc_141DFE6: End If
  loc_141DFEC: unk_46240B.CommitTrans
  loc_141DFF5: var_86 = CByte(0) 'Byte
  loc_141E004: Me.Requery -1
  loc_141E014: Me.Requery -1
  loc_141E024: Me.Requery -1
  loc_141E034: Me.Requery -1
  loc_141E061: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_141E071: Set var_94 = Me.TopCtrl1
  loc_141E077: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_C8)
  loc_141E090: If (CStr() = "Add") Then
  loc_141E093:   Call TopCtrl1_UnknownEvent_A()
  loc_141E098:   Exit Sub
  loc_141E099: End If
  loc_141E0AE: var_A0 = "INI"
  loc_141E0BC: Call Proc_92_32_E7BF74(Proc_5_1_100EC1C(var_A0, Me))
  loc_141E0C7: Call Proc_92_37_EF87E0(global_52)
  loc_141E0CC: Call Proc_92_34_11117EC()
  loc_141E0D1: Exit Sub
  loc_141E0D2: ' Referenced from: 141D6FC
  loc_141E0DB: If (CInt(var_86) = 1) Then
  loc_141E0E4:   unk_46240B.RollbackTrans
  loc_141E0E9: End If
  loc_141E0F1: Set var_94 = Err()
  loc_141E0F7: Call 0.Method_arg_2C (var_A0)
  loc_141E110: MsgBox(CVar(var_A0), &H10, var_E8, var_FC, var_10C)
  loc_141E123: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11A72E0
  'Data Table: 4623F8
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_11A6ED2: Set var_88 = Me.Txt
  loc_11A6ED8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11A6EE6: Proc_6_74_E23240(var_8C)
  loc_11A6EF2: Call Proc_92_37_EF87E0(var_8C)
  loc_11A6EF7: On Error Goto loc_11A7299
  loc_11A6EFD: var_92 = Index
  loc_11A6F08: If (var_92 = CInt(0)) Then
  loc_11A6F22:   If (Me.RecordCount > 0) Then
  loc_11A6F30:     Set var_8C = Me.FGPoint
  loc_11A6F48:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_11A6F56:   End If
  loc_11A6F59: Else
  loc_11A6F61:   If (var_92 = CInt(2)) Then
  loc_11A6F7B:     If (Me.RecordCount > 0) Then
  loc_11A6F89:       Set var_8C = Me.FGPoint
  loc_11A6FA1:       Proc_6_137_1192FDC(Me.DGLedgerAc, global_60, Index)
  loc_11A6FAF:     End If
  loc_11A6FFD:     Set var_88 = Me.Txt
  loc_11A7003:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_11A700B:     var_8C = var_8C.Text
  loc_11A7023:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_11A7026:       Exit Sub
  loc_11A7027:     End If
  loc_11A7034:     Set var_88 = Me.Txt
  loc_11A703A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11A7042:     var_A0 = var_8C.Text
  loc_11A7054:     var_B0 = "Name"
  loc_11A708F:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_11A7098:       Me.MoveFirst
  loc_11A70BB:       Set var_88 = Me.Txt
  loc_11A70C1:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_11A70C9:       0 = var_8C.Text
  loc_11A70E2:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_11A70F7:     End If
  loc_11A70FA:   Else
  loc_11A7102:     If (var_92 = CInt(3)) Then
  loc_11A711C:       If (Me.RecordCount > 0) Then
  loc_11A712A:         Set var_8C = Me.FGPoint
  loc_11A7142:         Proc_6_137_1192FDC(Me.DGTaxStru, global_64)
  loc_11A7150:       End If
  loc_11A719E:       Set var_88 = Me.Txt
  loc_11A71A4:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11A71AC:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11A71C4:       If (Index Or (var_A0 = vbNullString)) Then
  loc_11A71C7:         Exit Sub
  loc_11A71C8:       End If
  loc_11A71D5:       Set var_88 = Me.Txt
  loc_11A71DB:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11A71E3:       var_A0 = var_8C.Text
  loc_11A71F5:       var_B0 = "Name"
  loc_11A7230:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_11A7239:         Me.MoveFirst
  loc_11A725C:         Set var_88 = Me.Txt
  loc_11A7262:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_11A726A:         0 = var_8C.Text
  loc_11A7283:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_11A7298:       End If
  loc_11A7298:     End If
  loc_11A7298:   End If
  loc_11A7298: End If
  loc_11A7298: Exit Sub
  loc_11A7299: ' Referenced from: 11A6EF7
  loc_11A72A1: Set var_88 = Err()
  loc_11A72A7: Call 0.Method_arg_2C (var_A0)
  loc_11A72C8: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_11C)
  loc_11A72DB: Exit Sub
  loc_11A72DC: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11B2670
  'Data Table: 4623F8
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  Dim var_E4 As Variant
  loc_11B2252: If (CLng(Shift) = &H1B) Then
  loc_11B2255:   Call Proc_92_37_EF87E0()
  loc_11B225A:   Exit Sub
  loc_11B225B: End If
  loc_11B225E: var_86 = KeyCode
  loc_11B2269: If (var_86 = CInt(0)) Then
  loc_11B2289:   Set var_98 = Me.FGPoint
  loc_11B22B7:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift)
  loc_11B2324:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11B234A:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_11B2358:   End If
  loc_11B235B: Else
  loc_11B2363:   If (var_86 = CInt(2)) Then
  loc_11B238E:     Set var_98 = Nothing
  loc_11B23C0:     Proc_6_69_134A630(Me.DGLedgerAc, Me.Txt, CInt(2), global_60, Shift, 0, 1)
  loc_11B242F:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11B2436:       Set var_98 = Me.DGLedgerAc
  loc_11B2455:       Proc_6_138_106E830(var_98, global_60, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_11B2463:     End If
  loc_11B2466:   Else
  loc_11B246E:     If (var_86 = CInt(3)) Then
  loc_11B24CB:       Proc_6_69_134A630(Me.DGTaxStru, Me.Txt, CInt(3), global_64, Shift, 0, 1, Nothing)
  loc_11B253A:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11B2560:         Proc_6_138_106E830(Me.DGTaxStru, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_11B256E:       End If
  loc_11B256E:     End If
  loc_11B256E:   End If
  loc_11B256E: End If
  loc_11B259F: Set var_98 = Me.DGTaxStru
  loc_11B25A5: var_E4 = var_98.Visible
  loc_11B25C4: If (((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGLedgerAc.Visible) = 0)) And (CBool(var_E4) = 0)) Then
  loc_11B25E5:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_11B261F:     If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_134) = 6) Then
  loc_11B2622:       Call TopCtrl1_UnknownEvent_16()
  loc_11B2627:     End If
  loc_11B2627:     Exit Sub
  loc_11B2628:   End If
  loc_11B263D:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11B2646:     Proc_6_75_E5335C(Shift, arg_14, 0, 1)
  loc_11B264B:   End If
  loc_11B265E:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_11B2667:     Proc_6_76_E533C8(Shift, arg_14, var_98)
  loc_11B266C:   End If
  loc_11B266C: End If
  loc_11B266C: Exit Sub
  loc_11B266D: CExtInstUnk
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F7F904
  'Data Table: 4623F8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_F7F7BA: Proc_6_133_E7FB08(var_94)
  loc_F7F7C3: arg_10 = CInt(var_94)
  loc_F7F7CC: Proc_6_58_E06050(arg_10, arg_10)
  loc_F7F7D4: var_96 = KeyAscii
  loc_F7F7DF: If (var_96 = CInt(2)) Then
  loc_F7F7FE:   If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_F7F810:     var_A0 = "Name"
  loc_F7F82B:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10)
  loc_F7F85D:     Proc_6_138_106E830(Me.DGLedgerAc, global_60, KeyAscii, Me.FGPoint)
  loc_F7F86B:   End If
  loc_F7F86E: Else
  loc_F7F876:   If (var_96 = CInt(3)) Then
  loc_F7F895:     If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F7F8C2:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_F7F8F4:       Proc_6_138_106E830(Me.DGTaxStru, global_64, KeyAscii, Me.FGPoint, 0)
  loc_F7F902:     End If
  loc_F7F902:   End If
  loc_F7F902: End If
  loc_F7F902: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'ED9E30
  'Data Table: 4623F8
  Dim Me As Recordset15
  loc_ED9D8E: If (KeyCode = CInt(0)) Then
  loc_ED9DAD:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_ED9DC7:     If (Me.RecordCount > 0) Then
  loc_ED9DD4:       var_A4 = "CallType"
  loc_ED9DEF:       Proc_6_80_FF1F20(Me.Txt, KeyCode, global_56)
  loc_ED9E21:       Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_ED9E2F:     End If
  loc_ED9E2F:   End If
  loc_ED9E2F: End If
  loc_ED9E2F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4908C
  'Data Table: 4623F8
  loc_E4906A: Set var_88 = Me.Txt
  loc_E49070: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4907E: Proc_6_73_E23294(var_8C)
  loc_E4908A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1110D20
  'Data Table: 4623F8
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_11109DC: On Error Goto loc_1110CDC
  loc_11109E2: var_86 = Cancel
  loc_11109ED: If (var_86 = CInt(0)) Then
  loc_11109F3:   Call Proc_92_35_10B2F58(var_88)
  loc_11109FE:   If (var_88 = &HFF) Then
  loc_1110A03:     arg_10 = &HFF
  loc_1110A06:     Exit Sub
  loc_1110A07:   End If
  loc_1110A0A: Else
  loc_1110A12:   If (var_86 = CInt(1)) Then
  loc_1110A18:     Call Proc_92_36_106E540(var_88, arg_10)
  loc_1110A23:     If (var_88 = &HFF) Then
  loc_1110A28:       arg_10 = &HFF
  loc_1110A2B:       Exit Sub
  loc_1110A2C:     End If
  loc_1110A2F:   Else
  loc_1110A37:     If (var_86 = CInt(2)) Then
  loc_1110A88:       Set var_94 = Me.Txt
  loc_1110A8E:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1110A96:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1110AAE:       If (arg_10 Or (var_9C = vbNullString)) Then
  loc_1110AB1:         Exit Sub
  loc_1110AB2:       End If
  loc_1110AED:       Set var_B0 = Me.Txt
  loc_1110AF3:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1110AFB:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1110B2E:       var_98 = Me.Fields.Item("Code")
  loc_1110B3F:       var_9C = CStr(var_98.Value)
  loc_1110B4C:       Set var_B0 = Me.Txt
  loc_1110B52:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1110B5A:       var_B4.Tag = var_9C
  loc_1110B73:     Else
  loc_1110B7B:       If (var_86 = CInt(3)) Then
  loc_1110BCC:         Set var_94 = Me.Txt
  loc_1110BD2:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1110BDA:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1110BF2:         If (var_86 Or (var_9C = vbNullString)) Then
  loc_1110C02:           Set var_94 = Me.Txt
  loc_1110C08:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1110C10:           var_98.Tag = vbNullString
  loc_1110C1C:           Exit Sub
  loc_1110C1D:         End If
  loc_1110C58:         Set var_B0 = Me.Txt
  loc_1110C5E:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1110C66:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1110CAA:         var_9C = CStr(Me.Fields.Item("Code").Value)
  loc_1110CB7:         Set var_B0 = Me.Txt
  loc_1110CBD:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1110CC5:         var_B4.Tag = var_9C
  loc_1110CDB:       End If
  loc_1110CDB:     End If
  loc_1110CDB:   End If
  loc_1110CDB: End If
  loc_1110CDB: Exit Sub
  loc_1110CDC: ' Referenced from: 11109DC
  loc_1110CE4: Set var_94 = Err()
  loc_1110CEA: Call 0.Method_arg_2C (var_9C)
  loc_1110D0B: MsgBox(CVar(var_9C), &H40, "Information", var_F4, var_114)
  loc_1110D1E: Exit Sub
  loc_1110D1F: Exit Sub
End Sub

Private Sub Form_Load() '10531E8
  'Data Table: 4623F8
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_46240B As Connection15
  Dim var_B8 As Variant
  loc_1052F84: On Error Goto loc_10531A4
  loc_1052F99: Set var_8C = Me
  loc_1052F9F: Proc_6_23_DFC5B8(var_8C, 4500)
  loc_1052FA7: Call Proc_92_38_10038DC(8000)
  loc_1052FD0: unk_46240B.Execute "SELECT Code,CallType FROM TelCallType WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY CallType", var_B8, -1
  loc_1052FFF: CVarUnk
  loc_1053004: VerifyVarObj
  loc_1053010: LateIdStAd
  loc_1053039: var_98 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_1053042: unk_46240B.Execute var_98, var_B8, -1
  loc_1053071: CVarUnk
  loc_1053076: VerifyVarObj
  loc_1053082: LateIdStAd
  loc_10530B4: unk_46240B.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B8, -1
  loc_10530E3: CVarUnk
  loc_10530E8: VerifyVarObj
  loc_10530EE: Set var_8C = Me.DGTaxStru
  loc_10530F4: LateIdStAd
  loc_1053116: var_94 = "SELECT distinct R.*,R.Code as SearchCode,S.SubCode as LedgerCode ,S.Name as LedgerName,T.Code as TaxCode,T.Name as TaxName FROM ((TelCallType R Left Join TaxStru T on T.Code=R.TaxStru) Left join Subgroup S on S.SubCode=R.ACCode) WHERE (R.LOGSITE_CODE='" & MemVar_1F95078
  loc_1053126: unk_46240B.Execute var_94 & "' or R.LOGSITE_CODE='HO')", var_B8, -1
  loc_105314C: Call Proc_92_31_EE267C(var_8C, var_8C, Me.DGLedgerAc, var_8C, var_8C)
  loc_105315D: Set var_8C = Me
  loc_1053166: var_94 = "INI"
  loc_1053174: Call Proc_92_32_E7BF74(Proc_5_1_100EC1C(var_94, var_8C, var_8C, Me.DGHelp), var_8C, var_8C)
  loc_1053188: Call 0.Method_arg_160 (var_8C, var_8C)
  loc_1053196: Call 0.Method_arg_164 (var_8C)
  loc_105319E: Call Proc_92_34_11117EC(var_8C)
  loc_10531A3: Exit Sub
  loc_10531A4: ' Referenced from: 1052F84
  loc_10531AC: Set var_8C = Err()
  loc_10531B2: Call 0.Method_arg_2C (var_94)
  loc_10531D3: MsgBox(CVar(var_94), &H40, "Information", var_EC, var_10C)
  loc_10531E6: Exit Sub
  loc_10531E7: Exit Sub
End Sub

Private Sub Form_Resize() 'DFE18C
  'Data Table: 4623F8
  loc_DFE188: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5FE48
  'Data Table: 4623F8
  loc_E5FE07: Set global_52 = Nothing
  loc_E5FE19: Set global_56 = Nothing
  loc_E5FE2B: Set global_60 = Nothing
  loc_E5FE3D: Set global_64 = Nothing
  loc_E5FE44: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2836C
  'Data Table: 4623F8
  loc_E28344: On Error Goto loc_E28363
  loc_E2835B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E28363: ' Referenced from: E28344
  loc_E28363: Proc_6_60_E63754(Shift)
  loc_E28368: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E868F8
  'Data Table: 4623F8
  loc_E868A4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E868A7:   Call DGHelp_UnknownEvent_9()
  loc_E868AC: End If
  loc_E868C8: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_E868CB:   Call DGTaxStru_UnknownEvent_9()
  loc_E868D0: End If
  loc_E868EC: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_E868EF:   Call DGLedgerAc_UnknownEvent_9()
  loc_E868F4: End If
  loc_E868F4: Exit Sub
  loc_E868F5: DestructRecord
End Sub

Private Sub DGHelp_UnknownEvent_9 'F3CAF4
  'Data Table: 4623F8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3C9EB: Me.DGHelp.Visible = False
  loc_F3CA0A: If (Me.RecordCount > 0) Then
  loc_F3CA49:   Set var_B4 = Me.Txt
  loc_F3CA4F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3CA57:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3CA8A:   var_B0 = Me.Fields.Item("CallType")
  loc_F3CAA9:   Set var_B4 = Me.Txt
  loc_F3CAAF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3CAB7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3CACD: End If
  loc_F3CAD8: Set var_A8 = Me.Txt
  loc_F3CADE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F3CAE6: var_B0.SetFocus
  loc_F3CAF2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E750D0
  'Data Table: 4623F8
  loc_E7508E: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E750A5: Set var_8C = Me.FGPoint
  loc_E750C1: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E750CF: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC55D4
  'Data Table: 4623F8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC554A: On Error Goto loc_EC558F
  loc_EC5553: Me.MoveFirst
  loc_EC556D: var_8C = "code='" & MyValue
  loc_EC557D: Me.Find var_8C & "'", 0, 1
  loc_EC5589: Call Proc_92_34_11117EC(var_A0)
  loc_EC558E: Exit Sub
  loc_EC558F: ' Referenced from: EC554A
  loc_EC5597: Set var_A4 = Err()
  loc_EC559D: Call 0.Method_arg_2C (var_8C)
  loc_EC55BE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC55D1: Exit Sub
  loc_EC55D2: Exit Sub
End Sub

Public Sub Proc_92_31_EE267C
  'Data Table: 4623F8
  Dim var_88 As Recordset15
  Dim var_AC As TextBox
  loc_EE25CA: Set var_88 = global_52 
  loc_EE2603: Set var_A8 = Me.Txt
  loc_EE2609: Call 0.Method_Proc_92_31_EE267C0 (CInt(0), var_AC)
  loc_EE2611: var_AC.MaxLength = var_88.Fields.Item("CallType").DefinedSize
  loc_EE2656: Set var_A8 = Me.Txt
  loc_EE265C: Call 0.Method_Proc_92_31_EE267C0 (CInt(1), var_AC)
  loc_EE2664: var_AC.MaxLength = var_88.Fields.Item("ShortName").DefinedSize
  loc_EE2676: Set var_88 = Nothing 
  loc_EE267A: Exit Sub
End Sub

Public Sub Proc_92_32_E7BF74(arg_C) 'E7BF74
  'Data Table: 4623F8
  Dim var_98 As TextBox
  loc_E7BF22: Set var_8C = Me.Txt
  loc_E7BF28: Call 0.Method_Proc_92_32_E7BF74C (var_8E, var_86)
  loc_E7BF38: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7BF4E:   Set var_8C = Me.Txt
  loc_E7BF54:   Call 0.Method_Proc_92_32_E7BF740 (CInt(var_86), var_98)
  loc_E7BF5C:   var_98.Enabled = arg_C
  loc_E7BF6B: Next var_92 'Byte
  loc_E7BF71: Exit Sub
End Sub

Public Sub Proc_92_33_E7BE44
  'Data Table: 4623F8
  Dim var_98 As TextBox
  loc_E7BDF2: Set var_8C = Me.Txt
  loc_E7BDF8: Call 0.Method_Proc_92_33_E7BE44C (var_8E, var_86)
  loc_E7BE08: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7BE1E:   Set var_8C = Me.Txt
  loc_E7BE24:   Call 0.Method_Proc_92_33_E7BE440 (CInt(var_86), var_98)
  loc_E7BE2C:   var_98.Text = vbNullString
  loc_E7BE3B: Next var_92 'Byte
  loc_E7BE41: Exit Sub
  loc_E7BE42: BranchFVar -32513
End Sub

Public Sub Proc_92_34_11117EC
  'Data Table: 4623F8
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_BC As TextBox
  loc_11114A4: On Error Goto loc_11117A6
  loc_11114AD: Proc_183_45_E5CCA8(global_52)
  loc_11114C9: If (Me.RecordCount <= 0) Then
  loc_11114CC:   Call Proc_92_33_E7BE44()
  loc_11114D4: Else
  loc_1111508:   global_72 = CStr(Me.Fields.Item("CallType").Value)
  loc_1111555:   Set var_B8 = Me.Txt
  loc_111155B:   Call 0.Method_Proc_92_34_11117EC0 (CInt(0), var_BC)
  loc_1111563:   var_BC.Text = CStr(Me.Fields.Item("CallType").Value)
  loc_11115B5:   Set var_B8 = Me.Txt
  loc_11115BB:   Call 0.Method_Proc_92_34_11117EC0 (CInt(0), var_BC)
  loc_11115C3:   var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1111615:   Set var_B8 = Me.Txt
  loc_111161B:   Call 0.Method_Proc_92_34_11117EC0 (CInt(1), var_BC)
  loc_1111623:   var_BC.Text = CStr(Me.Fields.Item("ShortName").Value)
  loc_1111672:   Set var_B8 = Me.Txt
  loc_1111678:   Call 0.Method_Proc_92_34_11117EC0 (CInt(2), var_BC)
  loc_1111680:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LedgerName")))
  loc_11116CD:   Set var_B8 = Me.Txt
  loc_11116D3:   Call 0.Method_Proc_92_34_11117EC0 (CInt(2), var_BC)
  loc_11116DB:   var_BC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("LedgerCode")))
  loc_1111728:   Set var_B8 = Me.Txt
  loc_111172E:   Call 0.Method_Proc_92_34_11117EC0 (CInt(3), var_BC)
  loc_1111736:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxName")))
  loc_1111775:   var_B4 = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxCode")))
  loc_1111783:   Set var_B8 = Me.Txt
  loc_1111789:   Call 0.Method_Proc_92_34_11117EC0 (CInt(3), var_BC)
  loc_1111791:   var_BC.Tag = var_B4
  loc_11117A5: End If
  loc_11117A5: Exit Sub
  loc_11117A6: ' Referenced from: 11114A4
  loc_11117AE: Set var_8C = Err()
  loc_11117B4: Call 0.Method_arg_2C (var_B4)
  loc_11117D5: MsgBox(CVar(var_B4), &H40, "Information", var_EC, var_10C)
  loc_11117E8: Exit Sub
End Sub

Public Sub Proc_92_35_10B2F58
  'Data Table: 4623F8
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_A8 As TextBox
  Dim var_B8 As String
  Dim unk_46240B As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_144 As Fields15
  Dim var_148 As Field20
  loc_10B2CC7: If (Me.RecordCount = 0) Then
  loc_10B2CCA:   Proc_92_35_10B2F58 = 
  loc_10B2CD0: End If
  loc_10B2CD4: Set var_90 = Me.TopCtrl1
  loc_10B2CDA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_10B2CF3: If (CStr() = "Add") Then
  loc_10B2D31:   Set var_90 = Me.Txt
  loc_10B2D37:   Call 0.Method_Proc_92_35_10B2F580 (CInt(0), var_A8, var_AC, "Select Count(*) From TelCallType Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and CallType='", var_A0, -1)
  loc_10B2D4F:   var_B8 = var_D0 & var_AC & "'"
  loc_10B2D58:   unk_46240B.Execute var_B8, 0, var_E4
  loc_10B2D68:    = var_D0.Item()
  loc_10B2D70:    = var_E4.Value
  loc_10B2DA1:   If (var_A8.Text.Fields > 0) Then
  loc_10B2DAF:     var_F4 = "Information"
  loc_10B2DBF:     var_A0 = "Duplicate Call Type"
  loc_10B2DC5:     MsgBox(var_A0, &H40, var_F4, var_114, var_134)
  loc_10B2DE0:     Set var_90 = Me.Txt
  loc_10B2DE6:     Call 0.Method_Proc_92_35_10B2F580 (CInt(0))
  loc_10B2DEE:     var_A8.SetFocus
  loc_10B2DFF:     Proc_92_35_10B2F58 = &HFF
  loc_10B2E05:   End If
  loc_10B2E08: Else
  loc_10B2E0E:   var_E0 = 0
  loc_10B2E43:   Set var_90 = Me.Txt
  loc_10B2E49:   Call 0.Method_Proc_92_35_10B2F580 (CInt(0), var_A8, var_AC, "Select Count(*) From TelCallType Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and CallType='", var_A0, -1)
  loc_10B2E72:   Set var_CC = Me.Txt
  loc_10B2E78:   Call 0.Method_Proc_92_35_10B2F580 (CInt(0), var_D0, var_B8, var_144 & var_AC & "' And CallType<>'")
  loc_10B2E80:   var_E0 = var_D0.Text
  loc_10B2E99:   unk_46240B.Execute var_148 & var_B8 & "'", var_F4, var_A8
  loc_10B2EA1:    = var_A8.Text.Fields
  loc_10B2EA9:    = var_144.Item()
  loc_10B2EB1:    = var_148.Value
  loc_10B2EEC:   If (var_F4 > 0) Then
  loc_10B2F10:     MsgBox("Duplicate Call Type", &H40, "Information", var_114, var_134)
  loc_10B2F2B:     Set var_90 = Me.Txt
  loc_10B2F31:     Call 0.Method_Proc_92_35_10B2F580 (CInt(0))
  loc_10B2F39:     var_A8.SetFocus
  loc_10B2F4A:     Proc_92_35_10B2F58 = &HFF
  loc_10B2F50:   End If
  loc_10B2F50: End If
  loc_10B2F50: Proc_92_35_10B2F58 = var_A8
End Sub

Public Sub Proc_92_36_106E540
  'Data Table: 4623F8
  Dim var_A4 As TextBox
  Dim unk_46240B As Connection15
  Dim var_CC As Fields15
  Dim var_E0 As Field20
  loc_106E2E0: Set var_8C = Me.TopCtrl1
  loc_106E2E6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_106E2FF: If (CStr() = "Add") Then
  loc_106E33D:   Set var_8C = Me.Txt
  loc_106E343:   Call 0.Method_Proc_92_36_106E5400 (CInt(1), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and ShortName='", var_9C, -1)
  loc_106E364:   unk_46240B.Execute var_CC & var_A8 & "'", 0, var_E0
  loc_106E374:    = var_CC.Item()
  loc_106E37C:    = var_E0.Value
  loc_106E3AD:   If (var_A4.Text.Fields > 0) Then
  loc_106E3CB:     var_9C = "Duplicate Short Name"
  loc_106E3D1:     MsgBox(var_9C, &H40, "Information", var_110, var_130)
  loc_106E3EC:     Set var_8C = Me.Txt
  loc_106E3F2:     Call 0.Method_Proc_92_36_106E5400 (CInt(1))
  loc_106E3FA:     var_A4.SetFocus
  loc_106E40B:     Proc_92_36_106E540 = &HFF
  loc_106E411:   End If
  loc_106E414: Else
  loc_106E44F:   Set var_8C = Me.Txt
  loc_106E455:   Call 0.Method_Proc_92_36_106E5400 (CInt(1), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and ShortName='", var_9C, -1)
  loc_106E487:   unk_46240B.Execute var_CC & var_A8 & "' And ShortName<>'" & global_72 & "'", 0, var_E0
  loc_106E497:    = var_CC.Item(var_A4)
  loc_106E49F:    = var_E0.Value
  loc_106E4D4:   If (var_A4.Text.Fields > 0) Then
  loc_106E4F8:     MsgBox("Duplicate Short Name", &H40, "Information", var_110, var_130)
  loc_106E513:     Set var_8C = Me.Txt
  loc_106E519:     Call 0.Method_Proc_92_36_106E5400 (CInt(1))
  loc_106E521:     var_A4.SetFocus
  loc_106E532:     Proc_92_36_106E540 = &HFF
  loc_106E538:   End If
  loc_106E538: End If
  loc_106E538: Proc_92_36_106E540 = var_A4
End Sub

Public Sub Proc_92_37_EF87E0
  'Data Table: 4623F8
  loc_EF8720: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF8732:   Me.DGHelp.Visible = False
  loc_EF873A: End If
  loc_EF8756: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_EF8768:   Me.DGLedgerAc.Visible = False
  loc_EF8770: End If
  loc_EF878C: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_EF879E:   Me.DGTaxStru.Visible = False
  loc_EF87A6: End If
  loc_EF87C2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF87D4:   Me.FGPoint.Visible = False
  loc_EF87DC: End If
  loc_EF87DC: Exit Sub
  loc_EF87DD:  = 
End Sub

Public Sub Proc_92_38_10038DC
  'Data Table: 4623F8
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_88 As TextBox
  Dim var_BC As TextBox
  Dim var_C4 As TextBox
  Dim var_C8 As TextBox
  loc_10036E0: Set var_88 = Me.DGHelp
  loc_10036F1: Set var_8C = Me.Txt
  loc_10036F7: Call 0.Method_Proc_92_38_10038DC0 (CInt(0), var_90)
  loc_100370F: var_88.Left = CVar(var_90.Left)
  loc_1003729: Set var_B8 = Me.Txt
  loc_100372F: Call 0.Method_Proc_92_38_10038DC0 (CInt(0), var_BC)
  loc_100374A: Set var_8C = Me.Txt
  loc_1003750: Call 0.Method_Proc_92_38_10038DC0 (CInt(0), var_90)
  loc_1003768: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H19))) 'Single
  loc_1003770: var_88.Top = CVar(var_90.Left)
  loc_1003782: Set var_88 = Nothing 
  loc_100378A: Set var_C4 = Me.DGLedgerAc
  loc_100379B: Set var_8C = Me.Txt
  loc_10037A1: Call 0.Method_Proc_92_38_10038DC0 (CInt(2), var_90)
  loc_10037B9: var_C4.Left = CVar(var_90.Left)
  loc_10037D3: Set var_B8 = Me.Txt
  loc_10037D9: Call 0.Method_Proc_92_38_10038DC0 (CInt(2), var_BC)
  loc_10037F4: Set var_8C = Me.Txt
  loc_10037FA: Call 0.Method_Proc_92_38_10038DC0 (CInt(2), var_90)
  loc_1003812: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H19))) 'Single
  loc_100381A: var_C4.Top = CVar(var_90.Left)
  loc_100382C: Set var_C4 = Nothing 
  loc_1003834: Set var_C8 = Me.DGTaxStru
  loc_1003845: Set var_8C = Me.Txt
  loc_100384B: Call 0.Method_Proc_92_38_10038DC0 (CInt(3), var_90)
  loc_1003863: var_C8.Left = CVar(var_90.Left)
  loc_100387D: Set var_B8 = Me.Txt
  loc_1003883: Call 0.Method_Proc_92_38_10038DC0 (CInt(3), var_BC)
  loc_100389E: Set var_8C = Me.Txt
  loc_10038A4: Call 0.Method_Proc_92_38_10038DC0 (CInt(3), var_90)
  loc_10038BC: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H19))) 'Single
  loc_10038C4: var_C8.Top = CVar(var_90.Left)
  loc_10038D6: Set var_C8 = Nothing 
  loc_10038DA: Exit Sub
End Sub

Public Sub Proc_92_39_1095FC0
  'Data Table: 4623F8
  Dim unk_46240B As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_90 As Recordset15
  Dim var_188 As Integer
  Dim var_114 As Variant
  Dim var_174 As Recordset15
  Dim var_178 As Fields15
  Dim var_18C As Field20
  loc_1095D6C: unk_46240B.Execute CStr("Select taxcode from taxstru where code='" & Trim(arg_14) & "'"), var_114, -1
  loc_1095D77: Set var_88 = var_118
  loc_1095D8B: ' Referenced from: 1095FB9
  loc_1095D9A: If Not(var_88.EOF) Then
  loc_1095E02:   var_150 = "Select Code from taxstru where taxcode='" & var_88.Fields.Item("TaxCode").Value & "' and Code not in ('" & Trim(arg_14) & "')" 
  loc_1095E10:   unk_46240B.Execute CStr(var_150), var_170, -1
  loc_1095E1B:   Set var_90 = var_174
  loc_1095E3B:   ' Referenced from: 1095F19
  loc_1095E4A:   If Not(var_90.EOF) Then
  loc_1095E53:     var_188 = 0
  loc_1095EB4:     var_130 = "Select Count(*) from RevMast where TaxStru='" & var_90.Fields.Item("Code").Value & "' and DeskCode='" & CVar(arg_10) & "'" 
  loc_1095EC2:     unk_46240B.Execute CStr(var_130), var_150, -1
  loc_1095ECA:     var_174 = var_174.Fields
  loc_1095ED2:     var_188 = var_178.Item(var_178)
  loc_1095EDA:     var_18C = var_18C.Value
  loc_1095F0B:     If (var_170 > 0) Then
  loc_1095F0E:       GoTo loc_1095FB1
  loc_1095F11:     End If
  loc_1095F14:     var_90.MoveNext
  loc_1095F19:     GoTo loc_1095E3B
  loc_1095F1C:   End If
  loc_1095F8F:   unk_46240B.Execute CStr("Delete From RevMast Where TaxCode='" & var_88.Fields.Item("TaxCode").Value & "' and DeskCode='" & Trim(arg_10) & "'"), var_170, -1
  loc_1095FB1:   ' Referenced from: 1095F0E
  loc_1095FB4:   var_88.MoveNext
  loc_1095FB9:   GoTo loc_1095D8B
  loc_1095FBC: End If
  loc_1095FBC: Exit Sub
End Sub
