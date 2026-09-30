VERSION 5.00
Begin VB.Form MemBillPrintingModule
  Caption = "Member Bill Printing"
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
  Begin Frame FrMultiBill
    ForeColor = &HFF0000&
    Left = 1155
    Top = 2400
    Width = 10635
    Height = 3885
    TabIndex = 0
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin DataCombo TXT_FROMBILLNO
      Left = 1245
      Top = 405
      Width = 2985
      Height = 345
      TabIndex = 1
    End
    Begin DataCombo TXT_TOBILLNO
      Left = 5445
      Top = 435
      Width = 2985
      Height = 360
      TabIndex = 2
    End
    Begin BtnEnh CmdmultiPrint
      Left = 3420
      Top = 2640
      Width = 1080
      Height = 570
      TabIndex = 5
    End
    Begin BtnEnh CmdExit
      Left = 5340
      Top = 2640
      Width = 1080
      Height = 570
      TabIndex = 6
    End
    Begin Label LblFrom
      Caption = "Bill No.From"
      ForeColor = &H80&
      Left = 180
      Top = 450
      Width = 1065
      Height = 210
      TabIndex = 4
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblTo
      Caption = "Bill No.To"
      ForeColor = &H80&
      Left = 4575
      Top = 480
      Width = 840
      Height = 210
      TabIndex = 3
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
End

Attribute VB_Name = "MemBillPrintingModule"

Private mREFRESH As Integer

Private Sub Form_Load() 'FFB248
  'Data Table: 4282D4
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim unk_428307 As Connection15
  loc_FFB06C: On Error Goto loc_FFB240
  loc_FFB072: var_98 = MemVar_1F950F4
  loc_FFB07A: Proc_6_7_F26918(var_A8)
  loc_FFB08A: Proc_6_7_F26918(var_108, MemVar_1F950FC)
  loc_FFB099: var_148 = "CODE"
  loc_FFB0BF: var_B8 = CVar("SELECT  convert(Char,VNo) AS CODE, convert(Char,VNo) as Name  FROM MemBill WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "') AND VDate between ") 'String
  loc_FFB0E7: Proc_6_92_EF7BF4(CStr(var_B8 & var_A8 & " and " & var_108 & " order by (VNo)"), Me.TXT_FROMBILLNO, "Name")
  loc_FFB112: var_98 = MemVar_1F950F4
  loc_FFB11A: Proc_6_7_F26918(var_A8, var_98)
  loc_FFB12A: Proc_6_7_F26918(var_108, MemVar_1F950FC)
  loc_FFB139: var_148 = "CODE"
  loc_FFB14B: Set var_140 = Me.TXT_TOBILLNO
  loc_FFB15F: var_B8 = CVar("SELECT  convert(Char,VNo) AS CODE, convert(Char,VNo) as Name  FROM MemBill WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "') AND VDate between ") 'String
  loc_FFB187: Proc_6_92_EF7BF4(CStr(var_B8 & var_A8 & " and " & var_108 & " order by (VNo)"), var_140, "Name")
  loc_FFB1D3: unk_428307.Execute "Select * from MemEnviro where LogSite_Code='" & MemVar_1F95078 & "'", var_A8, -1
  loc_FFB1E4: Set global_60 = var_140
  loc_FFB1F9: Call Proc_280_11_E76E48(var_140, var_148)
  loc_FFB207: Call 0.Method_arg_160 (var_140, var_148)
  loc_FFB215: Call 0.Method_arg_164 (var_140)
  loc_FFB224: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_FFB231: Set var_140 = Me.PictShortCuts
  loc_FFB237: MDIForm1.PictShortCuts.BackColor = CLng(MemVar_1F951B4)
  loc_FFB23F: Exit Sub
  loc_FFB240: ' Referenced from: FFB06C
  loc_FFB240: Proc_6_60_E63754(var_98)
  loc_FFB245: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E421B8
  'Data Table: 4282D4
  loc_E4219B: Set global_56 = Nothing
  loc_E421AD: Set global_60 = Nothing
  loc_E421B4: Exit Sub
  loc_E421B5: var_148 = 0
End Sub

Private Sub Form_Activate() 'E544E0
  'Data Table: 4282D4
  loc_E544AD: If (mREFRESH = &HFF) Then
  loc_E544BA:   Proc_6_93_EACCB4(Me.TXT_FROMBILLNO)
  loc_E544CC:   Proc_6_93_EACCB4(Me.TXT_TOBILLNO)
  loc_E544D9:   mREFRESH = 0
  loc_E544DC: End If
  loc_E544DC: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E30368
  'Data Table: 4282D4
  loc_E30345: If (MasterFormExit = &HFF) Then
  loc_E30355:   Me.Global.Unload Me
  loc_E3035D: End If
  loc_E30362: mREFRESH = &HFF
  loc_E30365: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E01798
  'Data Table: 4282D4
  loc_E0178C: On Error Goto loc_E01790
  loc_E0178F: Exit Sub
  loc_E01790: ' Referenced from: E0178C
  loc_E01790: Proc_6_60_E63754()
  loc_E01795: Exit Sub
End Sub

Private Sub CmdmultiPrint_UnknownEvent_9 '118CDDC
  'Data Table: 4282D4
  Dim var_9C As Variant
  Dim var_124 As Double
  Dim var_110 As Variant
  Dim var_88 As Long
  Dim var_8C As Long
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_10C As Variant
  Dim var_144 As Variant
  Dim unk_4282F0 As Connection15
  loc_118CA32: If (Trim(CVar(Me.TXT_FROMBILLNO)) = vbNullString) Then
  loc_118CA56:   MsgBox("Bill No # From", &H40, "Validation", var_CC, var_10C)
  loc_118CA6A:   Set var_110 = Me.TXT_FROMBILLNO
  loc_118CA7B:   Exit Sub
  loc_118CA7C: End If
  loc_118CA9E: If (Trim(CVar(Me.TXT_TOBILLNO)) = vbNullString) Then
  loc_118CAC2:   MsgBox("Bill No # To", &H40, "Validation", var_CC, var_10C)
  loc_118CAD6:   Set var_110 = Me.TXT_TOBILLNO
  loc_118CAE7:   Exit Sub
  loc_118CAE8: End If
  loc_118CB02: var_124 = Val(CStr(Me.TXT_TOBILLNO.BoundText))
  loc_118CB3A: If (CDbl(Val(CStr(Me.TXT_FROMBILLNO.BoundText))) > CDbl(var_124)) Then
  loc_118CB5E:   MsgBox("Bill No # From Should be less then To", &H40, "Validation", var_CC, var_10C)
  loc_118CB72:   Set var_110 = Me.TXT_FROMBILLNO
  loc_118CB83:   Exit Sub
  loc_118CB84: End If
  loc_118CB9F: var_88 = CLng(Val(CStr(Me.TXT_FROMBILLNO.BoundText)))
  loc_118CBC6: var_8C = CLng(Val(CStr(Me.TXT_TOBILLNO.BoundText)))
  loc_118CBE4: var_110 = Me.Fields
  loc_118CBF4: var_9C = CVar(var_110.Item("NilAmountMemberBillPrintingYN")) 'Address
  loc_118CC0E: If (Proc_6_38_E69628(var_9C, var_8C, var_88, TXT_FROMBILLNO.DispID_8001) = "No") Then
  loc_118CC3A:   Proc_6_7_F26918(var_9C, MemVar_1F950F4, CVar("SELECT DocId As SearchCode FROM MemBill WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "') AND VDate between "), var_1F4, -1)
  loc_118CC5A:   Proc_6_7_F26918(var_134, MemVar_1F950FC, var_110 & var_9C & " and ")
  loc_118CCA1:   unk_4282F0.Execute CStr(var_124 & var_134 & "AND VNO between " & CVar(var_88) & " and " & CVar(var_8C) & " And Amount<>0 order by (VNo)"), TXT_TOBILLNO.DispID_8001, TXT_FROMBILLNO.DispID_8001
  loc_118CCB2:   Set global_56 = var_110
  loc_118CCE2: Else
  loc_118CD0B:   Proc_6_7_F26918(var_9C, MemVar_1F950F4, CVar("SELECT DocId As SearchCode FROM MemBill WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "') AND VDate between "))
  loc_118CD2B:   Proc_6_7_F26918(var_134, MemVar_1F950FC, var_1F4 & var_9C & " and ")
  loc_118CD33:   var_144 = -1 & var_134 
  loc_118CD72:   unk_4282F0.Execute CStr(var_124 & var_134 & "AND VNO between " & CVar(var_88) & " and " & CVar(var_8C) & " order by (VNo)"), var_110, 
  loc_118CD83:   Set global_56 = var_110
  loc_118CDB0:   ' Referenced from:   118CDD5
  loc_118CDB0: End If
  loc_118CDC2: If Not(Me.EOF) Then
  loc_118CDC5:   Call Proc_280_12_F12B4C()
  loc_118CDD0:   Me.MoveNext
  loc_118CDD5:   GoTo loc_118CDB0
  loc_118CDD8: End If
  loc_118CDD8: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E18A70
  'Data Table: 4282D4
  loc_E18A65: Me.Global.Unload Me
  loc_E18A6D: Exit Sub
End Sub

Public Function MasterFormExitGet() '4288E0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4288EF
  MasterFormExit = Value
End Sub

Public Function mREFRESHGet() '4288FE
  mREFRESHGet = mREFRESH
End Function

Public Sub mREFRESHPut(Value) '42890D
  mREFRESH = Value
End Sub

Public Sub Proc_280_11_E76E48
  'Data Table: 4282D4
  loc_E76DF4: On Error Goto loc_E76E45
  loc_E76E03: Call 0.Method_Proc_280_11_E76E488 ("C:\REPTMP")
  loc_E76E0E: If (var_8E = 0) Then
  loc_E76E1D:   Call 0.Method_arg_74 ("C:\REPTMP", var_94)
  loc_E76E25: End If
  loc_E76E3D: Call 0.Method_arg_5C ("C:\REPTMP\MBILL*" & ".TXT", 0)
  loc_E76E45: ' Referenced from: E76DF4
  loc_E76E45: Exit Sub
End Sub

Public Sub Proc_280_12_F12B4C
  'Data Table: 4282D4
  Dim Me As Recordset15
  loc_F12A5C: On Error Goto loc_F12B44
  loc_F12A9B: If (Proc_6_38_E69628(CVar(Me.Fields.Item("Bill_PrintType"))) = "W") Then
  loc_F12ACB:   var_B4 = "R"
  loc_F12AD9:   Proc_272_1_19C7874(CStr(Me.Fields.Item("SearchCode").Value))
  loc_F12AF2: Else
  loc_F12B1F:   var_B4 = "R"
  loc_F12B2D:   Proc_272_2_1705054(CStr(Me.Fields.Item("SearchCode").Value), var_B4)
  loc_F12B43: End If
  loc_F12B43: Exit Sub
  loc_F12B44: ' Referenced from: F12A5C
  loc_F12B44: Proc_6_60_E63754(var_B4)
  loc_F12B49: Exit Sub
End Sub
