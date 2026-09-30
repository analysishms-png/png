VERSION 5.00
Begin VB.Form TelCallCodeMast
  Caption = "Call Code Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8805
  ClientHeight = 4830
  BeginProperty Font
    Name = "Tahoma"
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
    Width = 8805
    Height = 510
    TabIndex = 11
  End
  Begin DataGrid DGHelp
    Left = 5280
    Top = 540
    Width = 2550
    Height = 2000
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2355
    Top = 825
    Width = 1890
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2355
    Top = 1635
    Width = 780
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 2355
    Top = 1365
    Width = 4020
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2355
    Top = 1095
    Width = 4020
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSFlexGrid FGPoint
    Left = 195
    Top = 2550
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGCallType
    Left = 3360
    Top = 2580
    Width = 3645
    Height = 1995
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin Label LblName
    Caption = "STD Code"
    Index = 0
    ForeColor = &H0&
    Left = 690
    Top = 840
    Width = 855
    Height = 240
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblLedgerAc
    Caption = "Pulse In Seconds"
    Index = 0
    ForeColor = &H0&
    Left = 690
    Top = 1665
    Width = 1455
    Height = 240
    TabIndex = 6
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Description"
    Index = 2
    ForeColor = &H0&
    Left = 690
    Top = 1395
    Width = 945
    Height = 240
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblLedgerAc
    Caption = "Call Type"
    Index = 2
    ForeColor = &H0&
    Left = 690
    Top = 1125
    Width = 795
    Height = 240
    TabIndex = 4
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "TelCallCodeMast"


Private Sub DGHelp_UnknownEvent_9 'F4D714
  'Data Table: 445DA4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4D60B: Me.DGHelp.Visible = False
  loc_F4D62A: If (Me.RecordCount > 0) Then
  loc_F4D669:   Set var_B4 = Me.Txt
  loc_F4D66F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4D677:   var_B8.Tag = CStr(Me.Fields.Item("STDCode").Value)
  loc_F4D6AA:   var_B0 = Me.Fields.Item("STDCode")
  loc_F4D6C9:   Set var_B4 = Me.Txt
  loc_F4D6CF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4D6D7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4D6ED: End If
  loc_F4D6F8: Set var_A8 = Me.Txt
  loc_F4D6FE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F4D706: var_B0.SetFocus
  loc_F4D712: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E7753C
  'Data Table: 445DA4
  loc_E774FA: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E77511: Set var_8C = Me.FGPoint
  loc_E7752D: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E7753B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E64124
  'Data Table: 445DA4
  loc_E640F4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E640F7:   Call DGHelp_UnknownEvent_9()
  loc_E640FC: End If
  loc_E64118: If (CBool(Me.DGCallType.Visible) = &HFF) Then
  loc_E6411B:   Call DGCallType_UnknownEvent_9()
  loc_E64120: End If
  loc_E64120: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ECE90C
  'Data Table: 445DA4
  Dim var_94 As TextBox
  loc_ECE86C: On Error Goto loc_ECE8C8
  loc_ECE86F: Call Proc_91_31_E7A424()
  loc_ECE889: var_88 = "ADD"
  loc_ECE897: Call Proc_91_30_E7A554(Proc_5_1_100EC1C(var_88, Me))
  loc_ECE8AD: Set var_8C = Me.Txt
  loc_ECE8B3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_ECE8BB: var_94.SetFocus
  loc_ECE8C7: Exit Sub
  loc_ECE8C8: ' Referenced from: ECE86C
  loc_ECE8D0: Set var_8C = Err()
  loc_ECE8D6: Call 0.Method_arg_2C (var_88)
  loc_ECE8F7: MsgBox(CVar(var_88), &H40, "Information", var_E4, var_104)
  loc_ECE90A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBFE5C
  'Data Table: 445DA4
  loc_EBFDC4: On Error Goto loc_EBFE54
  loc_EBFDFE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBFE0D:   Set var_110 = Me
  loc_EBFE24:   Call Proc_91_30_E7A554(Proc_5_1_100EC1C("INI", var_110))
  loc_EBFE2F:   Call Proc_91_32_1044EE8(global_52)
  loc_EBFE37: Else
  loc_EBFE3D:   Call 0.Method_arg_1E8 (var_110)
  loc_EBFE45:   Call var_110.SetFocus
  loc_EBFE4E: End If
  loc_EBFE4E: Call Proc_91_34_EBCC50()
  loc_EBFE53: Exit Sub
  loc_EBFE54: ' Referenced from: EBFDC4
  loc_EBFE54: Proc_6_60_E63754()
  loc_EBFE59: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10E8378
  'Data Table: 445DA4
  Dim var_96 As Integer
  Dim unk_445DB7 As Connection15
  Dim Me As Recordset15
  Dim var_124 As Fields15
  Dim var_FC As Variant
  Dim var_12C As String
  loc_10E8090: On Error Goto loc_10E8321
  loc_10E80A1: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_10E80A4:   Exit Sub
  loc_10E80A5: End If
  loc_10E80DC: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_11C) = 6) Then
  loc_10E80E1:   var_96 = 0
  loc_10E80ED:   unk_445DB7.BeginTrans var_120
  loc_10E80F4:   var_96 = &HFF
  loc_10E8108:   var_94 = Me.Bookmark 'Variant
  loc_10E8154:   var_FC = "Delete From TelCallCode Where STDCODE='" & Me.Fields.Item("STDCode").Value & "'" 
  loc_10E8162:   unk_445DB7.Execute CStr(var_FC), var_11C, -1
  loc_10E81AD:   var_168 = 0
  loc_10E81C0:   var_160 = 0
  loc_10E81CB:   var_15C = 0
  loc_10E81DE:   var_154 = 0
  loc_10E81E9:   var_150 = 0
  loc_10E81FC:   var_148 = 0
  loc_10E823C:   var_12C = "TelCallCode"
  loc_10E8245:   Proc_154_5_10E3BD4(MemVar_1F95044, var_12C, "STDCode", &HC8, CStr(Me.Fields.Item("STDCode").Value), 0, 0, 0)
  loc_10E8273:   unk_445DB7.CommitTrans
  loc_10E827A:   var_96 = 0
  loc_10E8288:   Me.Requery -1
  loc_10E8298:   Me.Requery -1
  loc_10E82B8:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10E82C5:     Me.Bookmark = var_94
  loc_10E82CD:   Else
  loc_10E82E1:     If (Me.EOF = 0) Then
  loc_10E82EA:       Me.MoveLast
  loc_10E82EF:     End If
  loc_10E82EF:   End If
  loc_10E82EF:   Call Proc_91_32_1044EE8(var_96, var_148, 0, var_150, var_154)
  loc_10E8310:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_10E8318: End If
  loc_10E831D: Set var_9C = Nothing
  loc_10E8320: Exit Sub
  loc_10E8321: ' Referenced from: 10E8090
  loc_10E8327: If (var_96 = &HFF) Then
  loc_10E8330:   unk_445DB7.RollbackTrans
  loc_10E8335: End If
  loc_10E833D: Set var_124 = Err()
  loc_10E8343: Call 0.Method_arg_2C (var_12C, 0, var_15C)
  loc_10E8364: MsgBox(CVar(var_12C), &H30, " Deletion Error ", var_FC, var_11C)
  loc_10E8377: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F235DC
  'Data Table: 445DA4
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F234E0: On Error Goto loc_F23597
  loc_F234F1: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F234F4:   Exit Sub
  loc_F234F5: End If
  loc_F2350C: If (Me.RecordCount > 0) Then
  loc_F23524:   var_8C = "EDIT"
  loc_F23532:   Call Proc_91_30_E7A554(Proc_5_1_100EC1C(var_8C, Me))
  loc_F23548:   Set var_90 = Me.Txt
  loc_F2354E:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F23556:   var_98.SetFocus
  loc_F23565: Else
  loc_F23586:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F23596: End If
  loc_F23596: Exit Sub
  loc_F23597: ' Referenced from: F234E0
  loc_F2359F: Set var_90 = Err()
  loc_F235A5: Call 0.Method_arg_2C (var_8C)
  loc_F235C6: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F235D9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17CC8
  'Data Table: 445DA4
  loc_E17CBD: Me.Global.Unload Me
  loc_E17CC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F19998
  'Data Table: 445DA4
  Dim Me As Recordset15
  loc_F198A8: On Error Goto loc_F19932
  loc_F198B4: var_88 = Me.RecordCount
  loc_F198C2: If (var_88 <= 0) Then
  loc_F198E6:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F198F6:   Exit Sub
  loc_F198F7: End If
  loc_F198FA: MemVar_1F950E4 = "Select TelCallCode.STDCode As SearchCode,CAST(TelCallCode.STDCode AS VARCHAR(11)) AS STDCODE ,TelCallType.CallType ,TelCallCode.description ,CAST(TelCallCode.pulseinsec AS VARCHAR(5))  FROM TelCallCode INNER JOIN TelCallType ON TelCallCode.CallTypeCode=TelCallType.Code Order by TelCallCode.STDCode"
  loc_F19904: MemVar_1F95120 = Me
  loc_F1990B: var_10C = "3000,1000,2000,1000"
  loc_F19911: Proc_6_126_F1C850(var_10C)
  loc_F1992C: Call 0.Method_arg_2B0 (1)
  loc_F19931: Exit Sub
  loc_F19932: ' Referenced from: F198A8
  loc_F1993A: Set var_110 = Err()
  loc_F19940: Call 0.Method_arg_1C (var_88)
  loc_F19951: If (var_88 <> 0) Then
  loc_F1995C:   Set var_110 = Err()
  loc_F19962:   Call 0.Method_arg_2C (var_10C)
  loc_F19983:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F19996: End If
  loc_F19996: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E30008
  'Data Table: 445DA4
  loc_E2FFF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30000: Call Proc_91_32_1044EE8(global_52)
  loc_E30005: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2FEE8
  'Data Table: 445DA4
  loc_E2FED8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2FEE0: Call Proc_91_32_1044EE8(global_52)
  loc_E2FEE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2FF48
  'Data Table: 445DA4
  loc_E2FF38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2FF40: Call Proc_91_32_1044EE8(global_52)
  loc_E2FF45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2FFA8
  'Data Table: 445DA4
  loc_E2FF98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2FFA0: Call Proc_91_32_1044EE8(global_52)
  loc_E2FFA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10715B4
  'Data Table: 445DA4
  Dim unk_445DB7 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_1071334: On Error Goto loc_107156B
  loc_107134D: unk_445DB7.Execute "SELECT TCC.*,TCT.CallType FROM TelCallCode AS TCC LEFT JOIN TelCallType AS TCT ON TCC.CallTypeCode=TCT.Code ORDER BY TCT.CallType,TCC.STDCode,TCC.Description", var_BC, -1
  loc_1071358: Set var_88 = var_C0
  loc_1071367: var_C4 = var_88.RecordCount
  loc_1071375: If (var_C4 = 0) Then
  loc_1071391:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_10713A1:   Exit Sub
  loc_10713A2: End If
  loc_10713B1: var_12C = MemVar_1F950B4 & "\CallCodeMast.ttx"
  loc_10713B8: Set var_C0 = var_88 
  loc_10713C4: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_10713CE: Set var_88 = var_C0
  loc_10713D4: var_AC = CVar(var_12E) 'Integer
  loc_10713D7: var_98 = var_AC 'Variant
  loc_10713F3: var_128 = MemVar_1F950B4 & "\CallCodeMast.RPT"
  loc_10713FC: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_1071407: MemVar_1F951E8 = var_C0
  loc_1071422: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_107142A: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1071436: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_107144F:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1071457:   Call 0.Method_arg_20 (var_138)
  loc_107145F:   Call 0.Method_arg_30 (var_128)
  loc_10714A5:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_10714BB:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10714C3:     Call 0.Method_arg_20 (var_138)
  loc_10714CB:     Call 0.Method_arg_38 ("'Call Code Master'")
  loc_10714D7:   End If
  loc_10714DA: Next var_132 'Integer
  loc_10714F8: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1071500: Call 0.Method_arg_2C (var_D4)
  loc_107150E: Call 0.Method_arg_150 (var_F4)
  loc_1071519: Call 0.Method_arg_50 (var_128)
  loc_1071523: Set var_138 = Nothing
  loc_107153D: Set var_C0 = MemVar_1F951E8 
  loc_1071549: Proc_6_99_1484404(var_C0, 0, var_128)
  loc_1071554: MemVar_1F951E8 = var_C0
  loc_1071567: Set var_88 = Nothing
  loc_107156A: Exit Sub
  loc_107156B: ' Referenced from: 1071334
  loc_1071573: Set var_C0 = Err()
  loc_1071579: Call 0.Method_arg_2C (var_128, &HFF)
  loc_1071584: Call 0.Method_arg_50 (var_12C)
  loc_10715A0: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_10715B3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E22EA4
  'Data Table: 445DA4
  Dim Me As Recordset15
  loc_E22E8B: Me.Requery -1
  loc_E22E9B: Me.Requery -1
  loc_E22EA0: Exit Sub
  loc_E22EA1: Result  End Sub 'Currency
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '127F7AC
  'Data Table: 445DA4
  Dim unk_445DB7 As Connection15
  Dim var_A0 As String
  Dim var_98 As TextBox
  Dim var_C0 As TextBox
  Dim var_D4 As TextBox
  Dim var_E8 As TextBox
  Dim var_200 As Double
  Dim var_BC As String
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_140 As String
  Dim var_150 As Variant
  Dim var_1D0 As Variant
  Dim var_244 As TextBox
  Dim var_1F4 As Variant
  Dim var_240 As Variant
  Dim Me As Recordset15
  loc_127F280: On Error Goto loc_127F759
  loc_127F287: var_86 = CByte(0) 'Byte
  loc_127F296: Set var_94 = Me.Txt
  loc_127F29C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_127F2C5: If (Proc_183_19_E8E68C(var_98, "STD Code") = 0) Then
  loc_127F2CF:   Call Txt_GotFocus()
  loc_127F2D4:   Exit Sub
  loc_127F2D5: End If
  loc_127F2DE: unk_445DB7.BeginTrans var_A8
  loc_127F2E7: var_86 = CByte(1) 'Byte
  loc_127F2EF: Set var_94 = Me.TopCtrl1
  loc_127F2F5: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(0))
  loc_127F30E: If (CStr(var_98) = "Add") Then
  loc_127F31F:   Set var_94 = Me.Txt
  loc_127F325:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_127F32D:   var_A0 = var_98.Text
  loc_127F340:   Set var_9C = Me.Txt
  loc_127F346:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_C0)
  loc_127F361:   Set var_D0 = Me.Txt
  loc_127F367:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_D4)
  loc_127F382:   Set var_E4 = Me.Txt
  loc_127F388:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_E8)
  loc_127F39D:   var_200 = Val(var_E8.Text)
  loc_127F3AE:   Proc_6_7_F26918(var_110, Date)
  loc_127F3C7:   var_BC = "Insert Into TelCallCode(STDCode,CallTypeCode,Description,PulseInSec,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) Values('" & var_A0
  loc_127F415:   var_140 = ",'A','"
  loc_127F41A:   var_150 = CVar(var_BC & "','" & var_C0.Tag & "','" & var_D4.Text & "'," & CStr(var_200) & ",'" & MemVar_1F950C8 & "',") & var_110 & var_140 
  loc_127F440:   var_1D0 = var_150 & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_127F44E:   unk_445DB7.Execute CStr(var_1D0), var_1F4, -1
  loc_127F4A3: Else
  loc_127F4B1:   Set var_94 = Me.Txt
  loc_127F4B7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_127F4BF:   var_1F8 = var_98.Text
  loc_127F4D2:   Set var_9C = Me.Txt
  loc_127F4D8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_C0)
  loc_127F4F3:   Set var_D0 = Me.Txt
  loc_127F4F9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_D4)
  loc_127F514:   Set var_E4 = Me.Txt
  loc_127F51A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_E8)
  loc_127F536:   Proc_6_39_E7D3A0(var_110, CVar(Val(var_E8.Text)))
  loc_127F549:   Proc_6_7_F26918(var_1D0, Date)
  loc_127F55C:   Set var_1F8 = Me.Txt
  loc_127F562:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_244)
  loc_127F5A6:   var_120 = CVar("UPDATE TelCallCode SET STDCode='" & var_A0 & "',CallTypeCode='" & var_C0.Tag & "',Description='" & var_D4.Text & "',PulseInSec=") 'String
  loc_127F5AC:   var_130 = var_120 & var_110 
  loc_127F5EB:   var_240 = var_130 & ",U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_1D0 & ",U_AE='E',SITE_CODE='" & CVar(MemVar_1F95070) & "' WHERE StdCode='" 
  loc_127F60C:   unk_445DB7.Execute CStr(var_240 & CVar(var_244.Text) & "'"), var_2A4, -1
  loc_127F666: End If
  loc_127F66C: unk_445DB7.CommitTrans
  loc_127F675: var_86 = CByte(0) 'Byte
  loc_127F684: Me.Requery -1
  loc_127F694: Me.Requery -1
  loc_127F6B8: Set var_94 = Me.Txt
  loc_127F6BE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, "StdCode='", 0)
  loc_127F6C6: 1 = var_98.Text
  loc_127F6DF: Me.Find var_140 & var_A0 & "'", var_2A8, var_200
  loc_127F6F8: Set var_94 = Me.TopCtrl1
  loc_127F6FE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_127F717: If (CStr() = "Add") Then
  loc_127F71A:   Call TopCtrl1_UnknownEvent_A()
  loc_127F71F:   Exit Sub
  loc_127F720: End If
  loc_127F735: var_A0 = "INI"
  loc_127F743: Call Proc_91_30_E7A554(Proc_5_1_100EC1C(var_A0, Me))
  loc_127F74E: Call Proc_91_34_EBCC50(global_52)
  loc_127F753: Call Proc_91_32_1044EE8()
  loc_127F758: Exit Sub
  loc_127F759: ' Referenced from: 127F280
  loc_127F762: If (CInt(var_86) = 1) Then
  loc_127F76B:   unk_445DB7.RollbackTrans
  loc_127F770: End If
  loc_127F778: Set var_94 = Err()
  loc_127F77E: Call 0.Method_arg_2C (var_A0)
  loc_127F797: MsgBox(CVar(var_A0), &H10, var_110, var_120, var_130)
  loc_127F7AA: Exit Sub
End Sub

Private Sub Form_Load() 'FFC460
  'Data Table: 445DA4
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_445DB7 As Connection15
  Dim var_B8 As Variant
  loc_FFC26C: On Error Goto loc_FFC41A
  loc_FFC281: Set var_8C = Me
  loc_FFC287: Proc_6_23_DFC5B8(var_8C, 4500)
  loc_FFC28F: Call Proc_91_35_F8AB20(7215)
  loc_FFC2AF: var_98 = "SELECT StdCode,StdCode FROM TelCallCode WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY TelCallCode.STDCODE"
  loc_FFC2B8: unk_445DB7.Execute var_98, var_B8, -1
  loc_FFC2E7: CVarUnk
  loc_FFC2EC: VerifyVarObj
  loc_FFC2F8: LateIdStAd
  loc_FFC321: var_98 = "SELECT Code as Code,CallType FROM TelCallType WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY CallType"
  loc_FFC32A: unk_445DB7.Execute var_98, var_B8, -1
  loc_FFC359: CVarUnk
  loc_FFC35E: VerifyVarObj
  loc_FFC364: Set var_8C = Me.DGCallType
  loc_FFC36A: LateIdStAd
  loc_FFC38C: var_94 = "SELECT TCC.*,TCT.CallType as CallType FROM TelCallCode as TCC LEFT JOIN TelCallType as TCT ON TCC.CallTypeCode=TCT.Code WHERE (TCC.LOGSITE_CODE='" & MemVar_1F95078
  loc_FFC39C: unk_445DB7.Execute var_94 & "' or TCC.LOGSITE_CODE='HO')", var_B8, -1
  loc_FFC3C2: Call Proc_91_29_F2D708(var_8C, var_8C, Me.DGHelp, var_8C)
  loc_FFC3D3: Set var_8C = Me
  loc_FFC3DC: var_94 = "INI"
  loc_FFC3EA: Call Proc_91_30_E7A554(Proc_5_1_100EC1C(var_94, var_8C, var_8C), var_8C)
  loc_FFC3FE: Call 0.Method_arg_160 (var_8C, var_8C)
  loc_FFC40C: Call 0.Method_arg_164 (var_8C)
  loc_FFC414: Call Proc_91_32_1044EE8(var_8C)
  loc_FFC419: Exit Sub
  loc_FFC41A: ' Referenced from: FFC26C
  loc_FFC422: Set var_8C = Err()
  loc_FFC428: Call 0.Method_arg_2C (var_94)
  loc_FFC449: MsgBox(CVar(var_94), &H40, "Information", var_EC, var_10C)
  loc_FFC45C: Exit Sub
  loc_FFC45D: Exit Sub
End Sub

Private Sub Form_Resize() 'DFCF10
  'Data Table: 445DA4
  loc_DFCF0C: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E53BCC
  'Data Table: 445DA4
  loc_E53B9F: Set global_52 = Nothing
  loc_E53BB1: Set global_56 = Nothing
  loc_E53BC3: Set global_60 = Nothing
  loc_E53BCA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2978C
  'Data Table: 445DA4
  loc_E29764: On Error Goto loc_E29783
  loc_E2977B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E29783: ' Referenced from: E29764
  loc_E29783: Proc_6_60_E63754(Shift)
  loc_E29788: Exit Sub
  loc_E29789: If 0 Then Exit Sub
  loc_E29789: End If
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1068858
  'Data Table: 445DA4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_10685EE: Set var_88 = Me.Txt
  loc_10685F4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1068602: Proc_6_74_E23240(var_8C)
  loc_106860E: Call Proc_91_34_EBCC50(var_8C)
  loc_1068613: On Error Goto loc_1068814
  loc_1068619: var_92 = Index
  loc_1068624: If (var_92 = CInt(0)) Then
  loc_106863E:   If (Me.RecordCount > 0) Then
  loc_106864C:     Set var_8C = Me.FGPoint
  loc_1068664:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_1068672:   End If
  loc_1068675: Else
  loc_106867D:   If (var_92 = CInt(1)) Then
  loc_1068697:     If (Me.RecordCount > 0) Then
  loc_10686A5:       Set var_8C = Me.FGPoint
  loc_10686BD:       Proc_6_137_1192FDC(Me.DGCallType, global_60, Index)
  loc_10686CB:     End If
  loc_1068719:     Set var_88 = Me.Txt
  loc_106871F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1068727:     var_8C = var_8C.Text
  loc_106873F:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1068742:       Exit Sub
  loc_1068743:     End If
  loc_1068750:     Set var_88 = Me.Txt
  loc_1068756:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_106875E:     var_A0 = var_8C.Text
  loc_1068770:     var_B0 = "CallType"
  loc_10687AB:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_10687B4:       Me.MoveFirst
  loc_10687D7:       Set var_88 = Me.Txt
  loc_10687DD:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "CallType ='")
  loc_10687E5:       0 = var_8C.Text
  loc_10687FE:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1068813:     End If
  loc_1068813:   End If
  loc_1068813: End If
  loc_1068813: Exit Sub
  loc_1068814: ' Referenced from: 1068613
  loc_106881C: Set var_88 = Err()
  loc_1068822: Call 0.Method_arg_2C (var_A0)
  loc_1068843: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_11C)
  loc_1068856: Exit Sub
  loc_1068857: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10DCD98
  'Data Table: 445DA4
  Dim var_86 As Integer
  Dim Me As Recordset15
  loc_10DCAA6: If (CLng(Shift) = &H1B) Then
  loc_10DCAA9:   Call Proc_91_34_EBCC50()
  loc_10DCAAE:   Exit Sub
  loc_10DCAAF: End If
  loc_10DCAB2: var_86 = KeyCode
  loc_10DCABD: If (var_86 = CInt(0)) Then
  loc_10DCADD:   Set var_98 = Me.FGPoint
  loc_10DCB0B:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift)
  loc_10DCB78:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10DCB9E:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_10DCBAC:   End If
  loc_10DCBAF: Else
  loc_10DCBB7:   If (var_86 = CInt(1)) Then
  loc_10DCBE2:     Set var_98 = Nothing
  loc_10DCC10:     Proc_6_69_134A630(Me.DGCallType, Me.Txt, KeyCode, global_60, Shift, 0, 1)
  loc_10DCC7F:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10DCC86:       Set var_98 = Me.DGCallType
  loc_10DCCA5:       Proc_6_138_106E830(var_98, global_60, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_10DCCB3:     End If
  loc_10DCCB3:   End If
  loc_10DCCB3: End If
  loc_10DCCEE: If ((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGCallType.Visible) = 0)) Then
  loc_10DCD0F:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_10DCD49:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_10DCD4C:       Call TopCtrl1_UnknownEvent_16()
  loc_10DCD51:     End If
  loc_10DCD51:     Exit Sub
  loc_10DCD52:   End If
  loc_10DCD67:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10DCD70:     Proc_6_75_E5335C(Shift, arg_14, 0, 1)
  loc_10DCD75:   End If
  loc_10DCD88:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_10DCD91:     Proc_6_76_E533C8(Shift, arg_14, var_98)
  loc_10DCD96:   End If
  loc_10DCD96: End If
  loc_10DCD96: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F76B64
  'Data Table: 445DA4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F76A26: Proc_6_133_E7FB08(var_94)
  loc_F76A2F: arg_10 = CInt(var_94)
  loc_F76A38: Proc_6_58_E06050(arg_10, arg_10)
  loc_F76A40: var_96 = KeyAscii
  loc_F76A4B: If (var_96 = CInt(0)) Then
  loc_F76A58:   Set var_9C = Me.Txt
  loc_F76A5E:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_F76A79:   Proc_6_42_129B55C(var_A0, arg_10, &HA)
  loc_F76A88: Else
  loc_F76A90:   If (var_96 = CInt(1)) Then
  loc_F76AAF:     If (CBool(Me.DGCallType.Visible) = &HFF) Then
  loc_F76ADC:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10, "CallType")
  loc_F76AF6:       Set var_A0 = Me.FGPoint
  loc_F76B0E:       Proc_6_138_106E830(Me.DGCallType, global_60, KeyAscii, var_A0)
  loc_F76B1C:     End If
  loc_F76B1F:   Else
  loc_F76B27:     If (var_96 = CInt(3)) Then
  loc_F76B34:       Set var_9C = Me.Txt
  loc_F76B3A:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 0)
  loc_F76B55:       Proc_6_42_129B55C(var_A0, arg_10, 4, 2)
  loc_F76B61:     End If
  loc_F76B61:   End If
  loc_F76B61: End If
  loc_F76B61: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EBCB68
  'Data Table: 445DA4
  loc_EBCADE: If (KeyCode = CInt(0)) Then
  loc_EBCAFD:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBCB0A:     var_A0 = "STDCode"
  loc_EBCB25:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_56)
  loc_EBCB57:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EBCB65:   End If
  loc_EBCB65: End If
  loc_EBCB65: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48A0C
  'Data Table: 445DA4
  loc_E489EA: Set var_88 = Me.Txt
  loc_E489F0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E489FE: Proc_6_73_E23294(var_8C)
  loc_E48A0A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E94788
  'Data Table: 445DA4
  Dim arg_10 As Integer
  loc_E94718: On Error Goto loc_E94744
  loc_E94729: If (Cancel = CInt(0)) Then
  loc_E9472F:   Call Proc_91_33_10B38C4(var_88)
  loc_E9473A:   If (var_88 = &HFF) Then
  loc_E9473F:     arg_10 = &HFF
  loc_E94742:     Exit Sub
  loc_E94743:   End If
  loc_E94743: End If
  loc_E94743: Exit Sub
  loc_E94744: ' Referenced from: E94718
  loc_E9474C: Set var_8C = Err()
  loc_E94752: Call 0.Method_arg_2C (var_90, arg_10)
  loc_E94773: MsgBox(CVar(var_90), &H40, "Information", var_E0, var_100)
  loc_E94786: Exit Sub
  loc_E94787: Exit Sub
End Sub

Private Sub DGCallType_UnknownEvent_9 'F4C3D4
  'Data Table: 445DA4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4C2CB: Me.DGCallType.Visible = False
  loc_F4C2EA: If (Me.RecordCount > 0) Then
  loc_F4C329:   Set var_B4 = Me.Txt
  loc_F4C32F:   Call 0.Method_DGCallType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4C337:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4C36A:   var_B0 = Me.Fields.Item("CallType")
  loc_F4C389:   Set var_B4 = Me.Txt
  loc_F4C38F:   Call 0.Method_DGCallType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4C397:   var_B8.Text = CStr(var_B0.Value)
  loc_F4C3AD: End If
  loc_F4C3B8: Set var_A8 = Me.Txt
  loc_F4C3BE: Call 0.Method_DGCallType_UnknownEvent_90 (CInt(1))
  loc_F4C3C6: var_B0.SetFocus
  loc_F4C3D2: Exit Sub
End Sub

Private Sub DGCallType_UnknownEvent_1F 'E76DB8
  'Data Table: 445DA4
  loc_E76D76: Proc_6_153_E91D24(Me.DGCallType, arg_14)
  loc_E76D8D: Set var_8C = Me.FGPoint
  loc_E76DA9: Proc_6_138_106E830(Me.DGCallType, global_60, CInt(2))
  loc_E76DB7: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC0014
  'Data Table: 445DA4
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBFF8A: On Error Goto loc_EBFFCF
  loc_EBFF93: Me.MoveFirst
  loc_EBFFAD: var_8C = "STDcode='" & MyValue
  loc_EBFFBD: Me.Find var_8C & "'", 0, 1
  loc_EBFFC9: Call Proc_91_32_1044EE8(var_A0)
  loc_EBFFCE: Exit Sub
  loc_EBFFCF: ' Referenced from: EBFF8A
  loc_EBFFD7: Set var_A4 = Err()
  loc_EBFFDD: Call 0.Method_arg_2C (var_8C)
  loc_EBFFFE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC0011: Exit Sub
  loc_EC0012: Exit Sub
End Sub

Public Sub Proc_91_29_F2D708
  'Data Table: 445DA4
  Dim var_88 As Recordset15
  Dim var_AC As TextBox
  loc_F2D602: Set var_88 = global_52 
  loc_F2D63B: Set var_A8 = Me.Txt
  loc_F2D641: Call 0.Method_Proc_91_29_F2D7080 (CInt(0), var_AC)
  loc_F2D649: var_AC.MaxLength = var_88.Fields.Item("STDCode").DefinedSize
  loc_F2D68E: Set var_A8 = Me.Txt
  loc_F2D694: Call 0.Method_Proc_91_29_F2D7080 (CInt(2), var_AC)
  loc_F2D69C: var_AC.MaxLength = var_88.Fields.Item("Description").DefinedSize
  loc_F2D6E1: Set var_A8 = Me.Txt
  loc_F2D6E7: Call 0.Method_Proc_91_29_F2D7080 (CInt(3), var_AC)
  loc_F2D6EF: var_AC.MaxLength = var_88.Fields.Item("PulseInSec").DefinedSize
  loc_F2D701: Set var_88 = Nothing 
  loc_F2D705: Exit Sub
End Sub

Public Sub Proc_91_30_E7A554(arg_C) 'E7A554
  'Data Table: 445DA4
  Dim var_98 As TextBox
  loc_E7A502: Set var_8C = Me.Txt
  loc_E7A508: Call 0.Method_Proc_91_30_E7A554C (var_8E, var_86)
  loc_E7A518: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A52E:   Set var_8C = Me.Txt
  loc_E7A534:   Call 0.Method_Proc_91_30_E7A5540 (CInt(var_86), var_98)
  loc_E7A53C:   var_98.Enabled = arg_C
  loc_E7A54B: Next var_92 'Byte
  loc_E7A551: Exit Sub
End Sub

Public Sub Proc_91_31_E7A424
  'Data Table: 445DA4
  Dim var_98 As TextBox
  loc_E7A3D2: Set var_8C = Me.Txt
  loc_E7A3D8: Call 0.Method_Proc_91_31_E7A424C (var_8E, var_86)
  loc_E7A3E8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A3FE:   Set var_8C = Me.Txt
  loc_E7A404:   Call 0.Method_Proc_91_31_E7A4240 (CInt(var_86), var_98)
  loc_E7A40C:   var_98.Text = vbNullString
  loc_E7A41B: Next var_92 'Byte
  loc_E7A421: Exit Sub
  loc_E7A422: Set arg_2C00 = 
End Sub

Public Sub Proc_91_32_1044EE8
  'Data Table: 445DA4
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_BC As String
  Dim var_A8 As TextBox
  Dim var_B8 As Variant
  loc_1044C98: On Error Goto loc_1044EA5
  loc_1044CA1: Proc_183_45_E5CCA8(global_52)
  loc_1044CBD: If (Me.RecordCount <= 0) Then
  loc_1044CC0:   Call Proc_91_31_E7A424()
  loc_1044CC8: Else
  loc_1044D04:   Set var_A4 = Me.Txt
  loc_1044D0A:   Call 0.Method_Proc_91_32_1044EE80 (CInt(0), var_A8)
  loc_1044D12:   var_A8.Text = CStr(Me.Fields.Item("STDCode").Value)
  loc_1044D64:   Set var_A4 = Me.Txt
  loc_1044D6A:   Call 0.Method_Proc_91_32_1044EE80 (CInt(0), var_A8)
  loc_1044D72:   var_A8.Tag = CStr(Me.Fields.Item("STDCode").Value)
  loc_1044DC1:   Set var_A4 = Me.Txt
  loc_1044DC7:   Call 0.Method_Proc_91_32_1044EE80 (CInt(1), var_A8)
  loc_1044DCF:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CallType")))
  loc_1044E1C:   Set var_A4 = Me.Txt
  loc_1044E22:   Call 0.Method_Proc_91_32_1044EE80 (CInt(2), var_A8)
  loc_1044E2A:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Description")))
  loc_1044E60:   var_B8 = CVar(Me.Fields.Item("PulseInSec")) 'Address
  loc_1044E67:   Proc_6_39_E7D3A0(var_CC)
  loc_1044E6F:   var_BC = CStr(var_CC)
  loc_1044E7E:   Set var_A4 = Me.Txt
  loc_1044E84:   Call 0.Method_Proc_91_32_1044EE80 (CInt(3), var_A8)
  loc_1044E8C:   var_A8.Text = var_BC
  loc_1044EA4: End If
  loc_1044EA4: Exit Sub
  loc_1044EA5: ' Referenced from: 1044C98
  loc_1044EAD: Set var_8C = Err()
  loc_1044EB3: Call 0.Method_arg_2C (var_BC)
  loc_1044ED4: MsgBox(CVar(var_BC), &H40, "Information", var_EC, var_10C)
  loc_1044EE7: Exit Sub
End Sub

Public Sub Proc_91_33_10B38C4
  'Data Table: 445DA4
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_A8 As TextBox
  Dim var_B8 As String
  Dim unk_445DB7 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_144 As Fields15
  Dim var_148 As Field20
  loc_10B3633: If (Me.RecordCount = 0) Then
  loc_10B3636:   Proc_91_33_10B38C4 = 
  loc_10B363C: End If
  loc_10B3640: Set var_90 = Me.TopCtrl1
  loc_10B3646: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10B365F: If (CStr() = "Add") Then
  loc_10B369D:   Set var_90 = Me.Txt
  loc_10B36A3:   Call 0.Method_Proc_91_33_10B38C40 (CInt(0), var_A8, var_AC, "Select Count(*) From TelCallCode Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and StdCode='", var_A0, -1)
  loc_10B36BB:   var_B8 = var_D0 & var_AC & "'"
  loc_10B36C4:   unk_445DB7.Execute var_B8, 0, var_E4
  loc_10B36D4:    = var_D0.Item()
  loc_10B36DC:    = var_E4.Value
  loc_10B370D:   If (var_A8.Text.Fields > 0) Then
  loc_10B371B:     var_F4 = "Information"
  loc_10B372B:     var_A0 = "Duplicate STD Code"
  loc_10B3731:     MsgBox(var_A0, &H40, var_F4, var_114, var_134)
  loc_10B374C:     Set var_90 = Me.Txt
  loc_10B3752:     Call 0.Method_Proc_91_33_10B38C40 (CInt(0))
  loc_10B375A:     var_A8.SetFocus
  loc_10B376B:     Proc_91_33_10B38C4 = &HFF
  loc_10B3771:   End If
  loc_10B3774: Else
  loc_10B377A:   var_E0 = 0
  loc_10B37AF:   Set var_90 = Me.Txt
  loc_10B37B5:   Call 0.Method_Proc_91_33_10B38C40 (CInt(0), var_A8, var_AC, "Select Count(*) From TelCallCode Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and StdCode='", var_A0, -1)
  loc_10B37DE:   Set var_CC = Me.Txt
  loc_10B37E4:   Call 0.Method_Proc_91_33_10B38C40 (CInt(0), var_D0, var_B8, var_144 & var_AC & "' And STDCODE<>'")
  loc_10B37EC:   var_E0 = var_D0.Text
  loc_10B3805:   unk_445DB7.Execute var_148 & var_B8 & "'", var_F4, var_A8
  loc_10B380D:    = var_A8.Text.Fields
  loc_10B3815:    = var_144.Item()
  loc_10B381D:    = var_148.Value
  loc_10B3858:   If (var_F4 > 0) Then
  loc_10B387C:     MsgBox("Duplicate Std Code", &H40, "Information", var_114, var_134)
  loc_10B3897:     Set var_90 = Me.Txt
  loc_10B389D:     Call 0.Method_Proc_91_33_10B38C40 (CInt(0))
  loc_10B38A5:     var_A8.SetFocus
  loc_10B38B6:     Proc_91_33_10B38C4 = &HFF
  loc_10B38BC:   End If
  loc_10B38BC: End If
  loc_10B38BC: Proc_91_33_10B38C4 = var_A8
End Sub

Public Sub Proc_91_34_EBCC50
  'Data Table: 445DA4
  loc_EBCBC8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBCBDA:   Me.DGHelp.Visible = False
  loc_EBCBE2: End If
  loc_EBCBFE: If (CBool(Me.DGCallType.Visible) = &HFF) Then
  loc_EBCC10:   Me.DGCallType.Visible = False
  loc_EBCC18: End If
  loc_EBCC34: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBCC46:   Me.FGPoint.Visible = False
  loc_EBCC4E: End If
  loc_EBCC4E: Exit Sub
End Sub

Public Sub Proc_91_35_F8AB20
  'Data Table: 445DA4
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_88 As TextBox
  Dim var_BC As TextBox
  Dim var_C4 As TextBox
  loc_F8A9CC: Set var_88 = Me.DGHelp
  loc_F8A9DD: Set var_8C = Me.Txt
  loc_F8A9E3: Call 0.Method_Proc_91_35_F8AB200 (CInt(0), var_90)
  loc_F8A9FB: var_88.Left = CVar(var_90.Left)
  loc_F8AA15: Set var_B8 = Me.Txt
  loc_F8AA1B: Call 0.Method_Proc_91_35_F8AB200 (CInt(0), var_BC)
  loc_F8AA36: Set var_8C = Me.Txt
  loc_F8AA3C: Call 0.Method_Proc_91_35_F8AB200 (CInt(0), var_90)
  loc_F8AA54: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H19))) 'Single
  loc_F8AA5C: var_88.Top = CVar(var_90.Left)
  loc_F8AA6E: Set var_88 = Nothing 
  loc_F8AA76: Set var_C4 = Me.DGCallType
  loc_F8AA87: Set var_8C = Me.Txt
  loc_F8AA8D: Call 0.Method_Proc_91_35_F8AB200 (CInt(1), var_90)
  loc_F8AAA5: var_C4.Left = CVar(var_90.Left)
  loc_F8AABF: Set var_B8 = Me.Txt
  loc_F8AAC5: Call 0.Method_Proc_91_35_F8AB200 (CInt(1), var_BC)
  loc_F8AAE0: Set var_8C = Me.Txt
  loc_F8AAE6: Call 0.Method_Proc_91_35_F8AB200 (CInt(1), var_90)
  loc_F8AAFE: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H19))) 'Single
  loc_F8AB06: var_C4.Top = CVar(var_90.Left)
  loc_F8AB18: Set var_C4 = Nothing 
  loc_F8AB1C: Exit Sub
End Sub
