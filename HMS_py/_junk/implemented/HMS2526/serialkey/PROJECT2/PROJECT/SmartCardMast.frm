VERSION 5.00
Begin VB.Form SmartCardMast
  Caption = "Smart Card Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 8130
  ClientHeight = 8100
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin BtnEnh ChkOpenning
    Left = 3015
    Top = 960
    Width = 1350
    Height = 360
    TabIndex = 16
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 7800
    Width = 8130
    Height = 300
    Visible = 0   'False
    TabIndex = 15
  End
  Begin MSFlexGrid FGPoint
    Left = 12525
    Top = 6825
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 13
  End
  Begin DataGrid DGPurchBill
    Left = 9525
    Top = 3870
    Width = 6735
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 8205
    Top = 165
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 3045
    Top = 1440
    Width = 1290
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
    Index = 4
    ForeColor = &HC00000&
    Left = 3045
    Top = 2700
    Width = 1290
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 11
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
    Left = 3045
    Top = 2070
    Width = 1290
    Height = 285
    TabIndex = 2
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
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 3045
    Top = 2385
    Width = 1290
    Height = 285
    TabIndex = 3
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
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 3045
    Top = 1755
    Width = 1290
    Height = 285
    TabIndex = 1
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
  Begin MSHFlexGrid FGrid
    Left = 4410
    Top = 1425
    Width = 4260
    Height = 4830
    TabIndex = 5
  End
  Begin BtnEnh cmd
    Index = 1
    Left = 1455
    Top = 6390
    Width = 1140
    Height = 1050
    TabIndex = 18
  End
  Begin BtnEnh CmdExit
    Left = 4455
    Top = 6390
    Width = 1140
    Height = 1050
    TabIndex = 19
  End
  Begin BtnEnh cmd
    Index = 0
    Left = 2940
    Top = 6390
    Width = 1140
    Height = 1050
    TabIndex = 20
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 17
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
  Begin Label LblSmartCardItem
    ForeColor = &H80&
    Left = 735
    Top = 1035
    Width = 2190
    Height = 285
    Visible = 0   'False
    TabIndex = 14
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Purchase Bill No"
    Index = 5
    ForeColor = &HC00000&
    Left = 660
    Top = 1455
    Width = 1575
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
  Begin Label Label1
    Caption = "Entry Date"
    Index = 4
    ForeColor = &HC00000&
    Left = 660
    Top = 2715
    Width = 975
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
  Begin Label Label1
    Caption = "Inserted Smart Card"
    Index = 2
    ForeColor = &HC00000&
    Left = 660
    Top = 2085
    Width = 1905
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
  Begin Label Label1
    Caption = "User Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 660
    Top = 2400
    Width = 1035
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
  Begin Label Label1
    Caption = "Purchase Smart Card"
    Index = 0
    ForeColor = &HC00000&
    Left = 660
    Top = 1770
    Width = 2025
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
End

Attribute VB_Name = "SmartCardMast"


Private Sub DGPurchBill_UnknownEvent_9 'FA7090
  'Data Table: 44FE94
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_C8 As Variant
  loc_FA6F1F: Me.DGPurchBill.Visible = False
  loc_FA6F3E: If (Me.RecordCount > 0) Then
  loc_FA6F7D:   Set var_B4 = Me.Txt
  loc_FA6F83:   Call 0.Method_DGPurchBill_UnknownEvent_90 (CInt(0), var_B8)
  loc_FA6F8B:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FA6FDD:   Set var_B4 = Me.Txt
  loc_FA6FE3:   Call 0.Method_DGPurchBill_UnknownEvent_90 (CInt(0), var_B8)
  loc_FA6FEB:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA701B:   var_B0 = Me.Fields.Item("QtyRec")
  loc_FA7023:   var_C8 = CVar(var_B0) 'Address
  loc_FA702A:   Proc_6_39_E7D3A0(var_DC)
  loc_FA7041:   Set var_B4 = Me.Txt
  loc_FA7047:   Call 0.Method_DGPurchBill_UnknownEvent_90 (CInt(1), var_B8)
  loc_FA704F:   var_B8.Text = CStr(var_DC)
  loc_FA7067: End If
  loc_FA7072: Set var_A8 = Me.Txt
  loc_FA7078: Call 0.Method_DGPurchBill_UnknownEvent_90 (CInt(0), var_B0)
  loc_FA7080: var_B0.SetFocus
  loc_FA708C: Exit Sub
End Sub

Private Sub DGPurchBill_UnknownEvent_1F 'EA496C
  'Data Table: 44FE94
  Dim var_A8 As Variant
  loc_EA48EC: Set var_88 = Me.DGPurchBill
  loc_EA4916: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA491E: Set var_BC = Me.DGPurchBill
  loc_EA495A: Proc_6_138_106E830(Me.DGPurchBill, global_52, CInt(0), Me.FGPoint)
  loc_EA4968: Exit Sub
  loc_EA4969: DGPurchBill.DispID_1B = var_A8
End Sub

Private Sub Cmd_UnknownEvent_9 '110A550
  'Data Table: 44FE94
  Dim var_88 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As String
  Dim var_128 As MSHFlexGrid
  Dim var_114 As Variant
  Dim var_138 As String
  Dim var_14C As Variant
  loc_110A22C: Set var_88 = Err()
  loc_110A232: Call 0.Method_arg_1C (var_8C)
  loc_110A23E: OnGoto
  loc_110A248: Next arg_6BFF 'Integer
  loc_110A250: If (CInt(var_8C) = 0) Then
  loc_110A25E:   If (Proc_275_10_10A64F0(var_98) = &HFF) Then
  loc_110A286:     For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_B0 'Integer
  loc_110A290:       var_C0 = CVar(CLng(var_9A)) 'Long
  loc_110A298:       var_E0 = CVar(CLng(2)) 'Long
  loc_110A2C3:       If (CStr(Me.FGrid.TextMatrix)) = var_98) Then
  loc_110A2E7:         MsgBox("Hardware Id Already Inserted!", &H10, "Smart Card Verification", var_114, var_124)
  loc_110A2F7:         Exit Sub
  loc_110A2F8:       End If
  loc_110A2FB:     Next var_B0 'Integer
  loc_110A308:     If (Proc_275_9_1191648() = 0) Then
  loc_110A30B:       Exit Sub
  loc_110A30C:     End If
  loc_110A310:     Set var_128 = Me.FGrid
  loc_110A325:     var_C0 = CVar((CLng(var_128.Rows) - 1)) 'Long
  loc_110A32D:     var_E0 = CVar(CLng(0)) 'Long
  loc_110A346:     var_114 = CVar(CStr((CLng(var_128.Rows) - 1))) 'String
  loc_110A34D:     LateIdCallSt
  loc_110A370:     var_C0 = CVar((CLng(var_128.Rows) - 1)) 'Long
  loc_110A378:     var_E0 = CVar(CLng(1)) 'Long
  loc_110A37D:     var_138 = vbNullString
  loc_110A386:     LateIdCallSt
  loc_110A3A3:     var_C0 = CVar((CLng(var_128.Rows) - 1)) 'Long
  loc_110A3AB:     var_E0 = CVar(CLng(2)) 'Long
  loc_110A3BA:     LateIdCallSt
  loc_110A3D7:     var_C0 = CVar((CLng(var_128.Rows) - 1)) 'Long
  loc_110A3DF:     var_E0 = CVar(CLng(3)) 'Long
  loc_110A3E4:     var_138 = vbNullString
  loc_110A3ED:     LateIdCallSt
  loc_110A40A:     var_C0 = CVar((CLng(var_128.Rows) - 1)) 'Long
  loc_110A412:     var_E0 = CVar(CLng(4)) 'Long
  loc_110A417:     var_138 = vbNullString
  loc_110A420:     LateIdCallSt
  loc_110A43F:     var_F4 = CStr((CLng(var_128.Rows) - 1))
  loc_110A44D:     Set var_88 = Me.Txt
  loc_110A453:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(2), var_14C, CStr(Me.FGrid.TextMatrix)), var_128, var_138, var_E0, "Hardware Id Already Inserted!")
  loc_110A45B:     var_14C.Text = var_128
  loc_110A46F:     Set var_128 = Nothing 
  loc_110A48C:     var_C0 = CVar((CLng(Me.FGrid.Rows) + 1)) 'Long
  loc_110A49B:     Me.FGrid.Rows = "Hardware Id Already Inserted!"
  loc_110A4AA:   End If
  loc_110A4AD: Else
  loc_110A4B3:   If (var_9C = 1) Then
  loc_110A4B6:     Call Proc_283_22_120AB50(var_138, var_E0, "Hardware Id Already Inserted!")
  loc_110A4BE:   Else
  loc_110A4C4:     If (var_9C = 2) Then
  loc_110A4D4:       Me.Global.Unload Me
  loc_110A4DC:     End If
  loc_110A4DC:   End If
  loc_110A4DC: End If
  loc_110A4DC: Exit Sub
  loc_110A4E5: Set var_88 = Err()
  loc_110A4EB: Call 0.Method_arg_1C (var_8C, var_128)
  loc_110A4F8: Set var_14C = Err()
  loc_110A4FE: Call 0.Method_arg_2C (var_150, var_98)
  loc_110A52F: MsgBox(CVar(CStr(var_8C) & " : " & var_150), &H10, "Message ", var_114, var_124)
  loc_110A54F: Exit Sub
End Sub

Private Sub Form_Load() '1264BE0
  'Data Table: 44FE94
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_B8 As Variant
  Dim var_AC As Variant
  Dim var_D8 As Variant
  Dim var_DC As String
  Dim unk_44FEB7 As Connection15
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_104 As Variant
  Dim var_120 As Variant
  Dim var_128 As Variant
  Dim var_FC As Variant
  Dim var_114 As Variant
  Dim var_17C As Variant
  loc_1264680: On Error Goto loc_1264BD8
  loc_126468A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_126469D: Me.LblSmartCardItem.BackColor = CLng(MemVar_1F951B4)
  loc_12646B0: Set var_8C = Me.ChkOpenning
  loc_12646B6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_2D(CVar(MemVar_1F951B4))
  loc_12646D1: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12646E6: Set var_8C = Me.DGPurchBill
  loc_1264700: Set var_8C = Me.Txt
  loc_1264706: Call 0.Method_Form_LoadC (var_AE, var_86, 0)
  loc_1264714: For var_B2 = CVar(CLng(MemVar_1F951B4)) To (var_AE - 1): DGPurchBill.DispID_FFFFFE0B = var_B2 'Integer
  loc_1264729:   Set var_8C = Me.Txt
  loc_126472F:   Call 0.Method_Form_Load0 (var_86, var_B8)
  loc_1264737:   var_B8.BackColor = -2147483643
  loc_1264752:   Set var_8C = Me.Txt
  loc_1264758:   Call 0.Method_Form_Load0 (var_86, var_B8)
  loc_1264760:   var_B8.ForeColor = &HC00000
  loc_126477B:   Set var_8C = Me.Txt
  loc_1264781:   Call 0.Method_Form_Load0 (var_86, var_B8)
  loc_1264789:   var_B8.BackColor = -2147483643
  loc_12647A4:   Set var_8C = Me.Txt
  loc_12647AA:   Call 0.Method_Form_Load0 (var_86, var_B8)
  loc_12647B2:   var_B8.ForeColor = &HC00000
  loc_12647C1: Next var_B2 'Integer
  loc_12647CD: Set var_8C = Me.LblSmartCardItem
  loc_12647D3: var_8C.Caption = vbNullString
  loc_12647F8: Proc_6_17_EAAE40(var_C8, MemVar_1F95078, "Select * From Enviro WHERE LOGSITE_CODE=")
  loc_126480E: unk_44FEB7.Execute CStr(var_FC & var_C8), -1, var_8C
  loc_126481F: Set global_56 = var_8C
  loc_126484D: If (Me.RecordCount > 0) Then
  loc_1264882:   Set var_104 = Me.LblSmartCardItem
  loc_1264888:   var_104.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("SmartCardItem")))
  loc_126489A: End If
  loc_12648A7: var_DC = Me.LblSmartCardItem.Tag
  loc_12648BA: If (var_DC = vbNullString) Then
  loc_12648C3:   Call 0.Method_arg_50 (var_DC)
  loc_12648D1:   var_D8 = CVar(var_DC) 'String
  loc_12648DE:   var_C8 = "Plz. Define Smart Card Item In Parameter Settings."
  loc_12648E4:   MsgBox(var_C8, &H10, var_D8, var_FC, var_114)
  loc_12648F4: End If
  loc_12648FA: var_AC = 0
  loc_1264939: unk_44FEB7.Execute "Select IsNull(Max(Name),'') From ItemMast Where Code='" & Me.LblSmartCardItem.Tag & "'", var_C8, -1
  loc_1264941: var_B8 = var_B8.Fields
  loc_1264949: var_AC = var_104.Item(var_104)
  loc_1264951: var_120 = var_120.Value
  loc_1264967: Me.LblSmartCardItem.Caption = CStr(var_D8)
  loc_1264999: Set var_8C = Me.Txt
  loc_126499F: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_12649BE: Me.DGPurchBill.Left = CVar(var_B8.Left)
  loc_12649DA: Set var_104 = Me.Txt
  loc_12649E0: Call 0.Method_Form_Load0 (CInt(0), var_120)
  loc_12649FB: Set var_8C = Me.Txt
  loc_1264A01: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_1264A19: var_9C = CVar(((var_B8.Top + var_120.Height) + CDbl(&H1E))) 'Single
  loc_1264A22: Set var_128 = Me.DGPurchBill
  loc_1264A28: var_128.Top = CVar(var_B8.Left)
  loc_1264A56: Me.var_128.CursorLocation = 3
  loc_1264A66: Proc_6_7_F26918(var_C8, MemVar_1F950F4)
  loc_1264A94: var_AC = "Select DISTINCT P.DocId Code,Cast(P.Vno As Varchar) BillNo,Convert(Varchar(11),P.Vdate,103) BillDate,P1.CashParty PartyName,P.QtyRec From Purch2 P  Inner Join Purch1 P1 On P.DocId=P1.DocId Inner JOIN VOUCHER_TYPE V ON (P.VTYPE=V.V_TYPE And P.logSite_Code=V.LogSite_Code) WHERE P.DocId Not In (Select Distinct ContraDocId From SmartCardMaster) And P.VDATE>="
  loc_1264A9C: var_D8 = var_AC & var_C8 
  loc_1264AC2: var_17C = var_D8 & " AND P.LogSite_Code='" & CVar(MemVar_1F95078) & "' AND v.category='PURCHBILL' AND P.Item='" & CVar(Me.LblSmartCardItem.Tag) 
  loc_1264AD6: Me.Open var_17C & "' ORDER BY P.DOCID", CVar(MemVar_1F95044), 2
  loc_1264AFA: CVarUnk
  loc_1264AFF: VerifyVarObj
  loc_1264B0B: LateIdStAd
  loc_1264B19: Call Proc_283_21_1065BA0(Me.DGPurchBill, New, 3)
  loc_1264B28: Set var_8C = Me.TopCtrl1
  loc_1264B2E: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_6803000C("Add")
  loc_1264B36: Call Proc_283_18_F53EB0(-1)
  loc_1264B48: Set var_8C = Me.Txt
  loc_1264B4E: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_1264B56: var_B8.Enabled = False
  loc_1264B6F: Set var_8C = Me.Txt
  loc_1264B75: Call 0.Method_Form_Load0 (CInt(2), var_B8)
  loc_1264B7D: var_B8.Enabled = False
  loc_1264B96: Set var_8C = Me.Txt
  loc_1264B9C: Call 0.Method_Form_Load0 (CInt(3), var_B8)
  loc_1264BA4: var_B8.Enabled = False
  loc_1264BBD: Set var_8C = Me.Txt
  loc_1264BC3: Call 0.Method_Form_Load0 (CInt(4), var_B8)
  loc_1264BCB: var_B8.Enabled = False
  loc_1264BD7: Exit Sub
  loc_1264BD8: ' Referenced from: 1264680
  loc_1264BD8: Proc_6_60_E63754(var_D8)
  loc_1264BDD: Exit Sub
End Sub

Private Sub Form_Resize() 'EBB0C8
  'Data Table: 44FE94
  Dim var_8C As Label
  loc_EBB032: Call 0.Method_arg_50 (var_88)
  loc_EBB044: Me.LblFormCaption.Caption = var_88
  loc_EBB05D: Me.LblFormCaption.Left = CDbl(0)
  loc_EBB069: Set var_8C = Me.TopCtrl1
  loc_EBB06F: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010006()
  loc_EBB07E: Call 0.Method_arg_78 (var_90)
  loc_EBB097: Me.LblFormCaption.Top = (var_90 + CDbl(var_A0))
  loc_EBB0AC: Call 0.Method_arg_100 (var_90)
  loc_EBB0BE: Me.LblFormCaption.Width = var_90
  loc_EBB0C6: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E278A4
  'Data Table: 44FE94
  loc_E27887: Set global_52 = Nothing
  loc_E27899: Set global_56 = Nothing
  loc_E278A0: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E02DDC
  'Data Table: 44FE94
  loc_E02DD0: On Error Goto loc_E02DD4
  loc_E02DD3: Exit Sub
  loc_E02DD4: ' Referenced from: E02DD0
  loc_E02DD4: Proc_6_60_E63754()
  loc_E02DD9: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FFF898
  'Data Table: 44FE94
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FFF6AE: Set var_88 = Me.Txt
  loc_FFF6B4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FFF6C2: Proc_6_74_E23240(var_8C)
  loc_FFF6CE: Call Proc_283_20_E84390(var_8C)
  loc_FFF6D6: var_92 = Index
  loc_FFF6E1: If (var_92 = CInt(0)) Then
  loc_FFF6EF:   Me.Requery -1
  loc_FFF70B:   If (Me.RecordCount > 0) Then
  loc_FFF719:     Set var_8C = Me.FGPoint
  loc_FFF731:     Proc_6_137_1192FDC(Me.DGPurchBill, global_52, Index)
  loc_FFF73F:   End If
  loc_FFF78D:   Set var_88 = Me.Txt
  loc_FFF793:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FFF79B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FFF7B3:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FFF7B6:     Exit Sub
  loc_FFF7B7:   End If
  loc_FFF7C4:   Set var_88 = Me.Txt
  loc_FFF7CA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FFF7D2:   var_A0 = var_8C.Text
  loc_FFF7DA:   var_D4 = CVar(var_A0) 'String
  loc_FFF81F:   If CBool(var_D4 <> Me.Fields.Item("BillNo").Value) Then
  loc_FFF828:     Me.MoveFirst
  loc_FFF84D:     Set var_88 = Me.Txt
  loc_FFF853:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "BillNo =")
  loc_FFF85B:     0 = var_8C.Text
  loc_FFF869:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_FFF87F:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_FFF897:   End If
  loc_FFF897: End If
  loc_FFF897: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FAB04C
  'Data Table: 44FE94
  Dim Me As Recordset15
  loc_FAAED2: If (CLng(Shift) = &H1B) Then
  loc_FAAED5:   Call Proc_283_20_E84390()
  loc_FAAEDA:   Exit Sub
  loc_FAAEDB: End If
  loc_FAAEE9: If (KeyCode = CInt(0)) Then
  loc_FAAF09:   Set var_9C = Me.FGPoint
  loc_FAAF14:   Set var_98 = Nothing
  loc_FAAF42:   Proc_6_69_134A630(Me.DGPurchBill, Me.Txt, KeyCode, global_52, Shift, 0)
  loc_FAAFB1:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FAAFB8:     Set var_98 = Me.DGPurchBill
  loc_FAAFD7:     Proc_6_138_106E830(var_98, global_52, KeyCode, Me.FGPoint, 1)
  loc_FAAFE5:   End If
  loc_FAAFE5: End If
  loc_FAB001: If (CBool(Me.DGPurchBill.Visible) = 0) Then
  loc_FAB017:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FAB020:     Proc_6_76_E533C8(Shift, arg_14, var_98)
  loc_FAB025:   End If
  loc_FAB03A:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FAB043:     Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_FAB048:   End If
  loc_FAB048: End If
  loc_FAB048: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F1F698
  'Data Table: 44FE94
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F1F59B: Proc_6_58_E06050(arg_10)
  loc_F1F5A6: Proc_6_133_E7FB08(var_94)
  loc_F1F5AF: arg_10 = CInt(var_94)
  loc_F1F5B8: var_96 = KeyAscii
  loc_F1F5C3: If (var_96 = CInt(0)) Then
  loc_F1F5E2:   If (CBool(Me.DGPurchBill.Visible) = &HFF) Then
  loc_F1F60F:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_52, arg_10, "BillNo")
  loc_F1F629:     Set var_A8 = Me.FGPoint
  loc_F1F641:     Proc_6_138_106E830(Me.DGPurchBill, global_52, KeyAscii, var_A8)
  loc_F1F64F:   End If
  loc_F1F652: Else
  loc_F1F65A:   If (var_96 = CInt(1)) Then
  loc_F1F667:     Set var_9C = Me.Txt
  loc_F1F66D:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_F1F688:     Proc_6_42_129B55C(var_A8, arg_10, 3, 0)
  loc_F1F694:   End If
  loc_F1F694: End If
  loc_F1F694: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D25C
  'Data Table: 44FE94
  loc_E4D23A: Set var_88 = Me.Txt
  loc_E4D240: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D24E: Proc_6_73_E23294(var_8C)
  loc_E4D25A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1001D4C
  'Data Table: 44FE94
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim var_C4 As Variant
  loc_1001B4F: var_86 = Cancel
  loc_1001B5A: If (var_86 = CInt(0)) Then
  loc_1001BAB:   Set var_94 = Me.Txt
  loc_1001BB1:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1001BB9:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1001BD1:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_1001BE1:     Set var_94 = Me.Txt
  loc_1001BE7:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1001BEF:     var_98.Text = vbNullString
  loc_1001C08:     Set var_94 = Me.Txt
  loc_1001C0E:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1001C16:     var_98.Tag = vbNullString
  loc_1001C25:   Else
  loc_1001C60:     Set var_B0 = Me.Txt
  loc_1001C66:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1001C6E:     var_B4.Text = CStr(Me.Fields.Item("BillNo").Value)
  loc_1001CBF:     Set var_B0 = Me.Txt
  loc_1001CC5:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1001CCD:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1001D05:     var_C4 = CVar(Me.Fields.Item("QtyRec")) 'Address
  loc_1001D0C:     Proc_6_39_E7D3A0(var_D4)
  loc_1001D23:     Set var_B0 = Me.Txt
  loc_1001D29:     Call 0.Method_Txt_Validate0 (CInt(1), var_B4)
  loc_1001D31:     var_B4.Text = CStr(var_D4)
  loc_1001D49:   End If
  loc_1001D49: End If
  loc_1001D49: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EEC3E0
  'Data Table: 44FE94
  Dim var_8C As TextBox
  loc_EEC310: On Error Goto loc_EEC3DA
  loc_EEC313: Call Proc_283_18_F53EB0()
  loc_EEC325: Set var_88 = Me.Txt
  loc_EEC32B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_8C)
  loc_EEC333: var_8C.Enabled = False
  loc_EEC34C: Set var_88 = Me.Txt
  loc_EEC352: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_8C)
  loc_EEC35A: var_8C.Enabled = False
  loc_EEC373: Set var_88 = Me.Txt
  loc_EEC379: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_8C)
  loc_EEC381: var_8C.Enabled = False
  loc_EEC39A: Set var_88 = Me.Txt
  loc_EEC3A0: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_8C)
  loc_EEC3A8: var_8C.Enabled = False
  loc_EEC3BF: Set var_88 = Me.Txt
  loc_EEC3C5: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EEC3CD: var_8C.SetFocus
  loc_EEC3D9: Exit Sub
  loc_EEC3DA: ' Referenced from: EEC310
  loc_EEC3DA: Proc_6_60_E63754(var_8C)
  loc_EEC3DF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E195B8
  'Data Table: 44FE94
  loc_E195AD: Me.Global.Unload Me
  loc_E195B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A3D8
  'Data Table: 44FE94
  Dim Me As Recordset15
  loc_E0A3CF: Me.Requery -1
  loc_E0A3D4: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1930C
  'Data Table: 44FE94
  loc_E19301: Me.Global.Unload Me
  loc_E19309: Exit Sub
End Sub

Private Sub ChkOpenning_UnknownEvent_9 'FBBC7C
  'Data Table: 44FE94
  Dim var_8C As TextBox
  loc_FBBAC8: Call Proc_283_20_E84390()
  loc_FBBADB: Set var_88 = Me.Txt
  loc_FBBAE1: Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(0), var_8C)
  loc_FBBAE9: var_8C.Text = vbNullString
  loc_FBBB03: Set var_88 = Me.Txt
  loc_FBBB09: Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(0), var_8C)
  loc_FBBB11: var_8C.Tag = vbNullString
  loc_FBBB2B: Set var_88 = Me.Txt
  loc_FBBB31: Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(1), var_8C)
  loc_FBBB39: var_8C.Text = vbNullString
  loc_FBBB53: Set var_88 = Me.Txt
  loc_FBBB59: Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(1), var_8C)
  loc_FBBB61: var_8C.Tag = vbNullString
  loc_FBBB71: Set var_88 = Me.ChkOpenning
  loc_FBBB77: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_69()
  loc_FBBB88: If (CInt() = 1) Then
  loc_FBBB99:   Set var_88 = Me.Txt
  loc_FBBB9F:   Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(0), var_8C)
  loc_FBBBA7:   var_8C.Text = "OPEN"
  loc_FBBBC1:   Set var_88 = Me.Txt
  loc_FBBBC7:   Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(0), var_8C)
  loc_FBBBCF:   var_8C.Tag = "OPENNING"
  loc_FBBBE8:   Set var_88 = Me.Txt
  loc_FBBBEE:   Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(0), var_8C)
  loc_FBBBF6:   var_8C.Enabled = False
  loc_FBBC0F:   Set var_88 = Me.Txt
  loc_FBBC15:   Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(1), var_8C)
  loc_FBBC1D:   var_8C.Enabled = True
  loc_FBBC2C: Else
  loc_FBBC39:   Set var_88 = Me.Txt
  loc_FBBC3F:   Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(0), var_8C)
  loc_FBBC47:   var_8C.Enabled = True
  loc_FBBC60:   Set var_88 = Me.Txt
  loc_FBBC66:   Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(1), var_8C)
  loc_FBBC6E:   var_8C.Enabled = False
  loc_FBBC7A: End If
  loc_FBBC7A: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E33424
  'Data Table: 44FE94
  loc_E33418: If (CBool(Me.DGPurchBill.Visible) = &HFF) Then
  loc_E3341B:   Call DGPurchBill_UnknownEvent_9()
  loc_E33420: End If
  loc_E33420: Exit Sub
  loc_E33422: Result  &  End Sub 'Currency
End Sub

Public Sub Proc_283_18_F53EB0
  'Data Table: 44FE94
  Dim var_98 As TextBox
  loc_F53DA6: Set var_8C = Me.Txt
  loc_F53DAC: Call 0.Method_Proc_283_18_F53EB0C (var_8E, var_86)
  loc_F53DBC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F53DD2:   Set var_8C = Me.Txt
  loc_F53DD8:   Call 0.Method_Proc_283_18_F53EB00 (CInt(var_86), var_98)
  loc_F53DE0:   var_98.Text = vbNullString
  loc_F53DFC:   Set var_8C = Me.Txt
  loc_F53E02:   Call 0.Method_Proc_283_18_F53EB00 (CInt(var_86), var_98)
  loc_F53E0A:   var_98.Tag = vbNullString
  loc_F53E19: Next var_92 'Byte
  loc_F53E2D: Set var_8C = Me.Txt
  loc_F53E33: Call 0.Method_Proc_283_18_F53EB00 (CInt(3), var_98)
  loc_F53E3B: var_98.Text = MemVar_1F950C8
  loc_F53E84: Set var_8C = Me.Txt
  loc_F53E8A: Call 0.Method_Proc_283_18_F53EB00 (CInt(4), var_98, CStr(Format(CVar(Proc_6_15_EF37AC()), "dd/MMM/yyyy")))
  loc_F53E92: var_98.Text = 1
  loc_F53EAE: Exit Sub
End Sub

Public Sub Proc_283_19_F12554(arg_C) 'F12554
  'Data Table: 44FE94
  Dim var_98 As TextBox
  loc_F12466: Set var_8C = Me.Txt
  loc_F1246C: Call 0.Method_Proc_283_19_F12554C (var_8E, var_86)
  loc_F1247C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F12492:   Set var_8C = Me.Txt
  loc_F12498:   Call 0.Method_Proc_283_19_F125540 (CInt(var_86), var_98)
  loc_F124A0:   var_98.Enabled = arg_C
  loc_F124AF: Next var_92 'Byte
  loc_F124C2: Set var_8C = Me.Txt
  loc_F124C8: Call 0.Method_Proc_283_19_F125540 (CInt(1), var_98)
  loc_F124D0: var_98.Enabled = False
  loc_F124E9: Set var_8C = Me.Txt
  loc_F124EF: Call 0.Method_Proc_283_19_F125540 (CInt(2), var_98)
  loc_F124F7: var_98.Enabled = False
  loc_F12510: Set var_8C = Me.Txt
  loc_F12516: Call 0.Method_Proc_283_19_F125540 (CInt(3), var_98)
  loc_F1251E: var_98.Enabled = False
  loc_F12537: Set var_8C = Me.Txt
  loc_F1253D: Call 0.Method_Proc_283_19_F125540 (CInt(4), var_98)
  loc_F12545: var_98.Enabled = False
  loc_F12551: Exit Sub
End Sub

Public Sub Proc_283_20_E84390
  'Data Table: 44FE94
  loc_E8433C: If (CBool(Me.DGPurchBill.Visible) = &HFF) Then
  loc_E8434E:   Me.DGPurchBill.Visible = False
  loc_E84356: End If
  loc_E84372: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E84384:   Me.FGPoint.Visible = False
  loc_E8438C: End If
  loc_E8438C: Exit Sub
End Sub

Public Sub Proc_283_21_1065BA0
  'Data Table: 44FE94
  Dim var_94 As Variant
  Dim var_C8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_100 As String
  loc_106592B: Me.FGrid.Width = CVar(CDbl(4400))
  loc_1065946: Me.FGrid.Rows = 1
  loc_1065963: var_C8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_106596B: Set var_CC = Me.FGrid
  loc_106599A: Me.FGrid.FixedRows = 1
  loc_10659B5: Me.FGrid.Cols = 5
  loc_10659BD: var_94 = CVar(CLng(0)) 'Long
  loc_10659C2: var_E0 = &H190
  loc_10659CE: LateIdCallSt
  loc_10659D6: var_94 = 0
  loc_10659E2: var_E0 = CVar(CLng(1)) 'Long
  loc_10659E7: var_100 = "PurchDocId"
  loc_10659F0: LateIdCallSt
  loc_10659FB: var_94 = CVar(CLng(1)) 'Long
  loc_1065A06: var_E0 = CVar(CInt(1)) 'Integer
  loc_1065A0D: LateIdCallSt
  loc_1065A18: var_94 = CVar(CLng(1)) 'Long
  loc_1065A1D: var_E0 = 0
  loc_1065A29: LateIdCallSt
  loc_1065A31: var_94 = 0
  loc_1065A3D: var_E0 = CVar(CLng(2)) 'Long
  loc_1065A42: var_100 = "Card Hardware ID"
  loc_1065A4B: LateIdCallSt
  loc_1065A56: var_94 = CVar(CLng(2)) 'Long
  loc_1065A61: var_E0 = CVar(CInt(1)) 'Integer
  loc_1065A68: LateIdCallSt
  loc_1065A73: var_94 = CVar(CLng(2)) 'Long
  loc_1065A7E: var_E0 = CVar(CInt(1)) 'Integer
  loc_1065A85: LateIdCallSt
  loc_1065A90: var_94 = CVar(CLng(2)) 'Long
  loc_1065A95: var_E0 = &H9C4
  loc_1065AA1: LateIdCallSt
  loc_1065AA9: var_94 = 0
  loc_1065AB5: var_E0 = CVar(CLng(3)) 'Long
  loc_1065ABA: var_100 = "Member Code"
  loc_1065AC3: LateIdCallSt
  loc_1065ACE: var_94 = CVar(CLng(3)) 'Long
  loc_1065AD9: var_E0 = CVar(CInt(1)) 'Integer
  loc_1065AE0: LateIdCallSt
  loc_1065AEB: var_94 = CVar(CLng(3)) 'Long
  loc_1065AF6: var_E0 = CVar(CInt(1)) 'Integer
  loc_1065AFD: LateIdCallSt
  loc_1065B08: var_94 = CVar(CLng(3)) 'Long
  loc_1065B0D: var_E0 = 0
  loc_1065B19: LateIdCallSt
  loc_1065B21: var_94 = 0
  loc_1065B2D: var_E0 = CVar(CLng(4)) 'Long
  loc_1065B32: var_100 = vbNullString
  loc_1065B3B: LateIdCallSt
  loc_1065B46: var_94 = CVar(CLng(4)) 'Long
  loc_1065B51: var_E0 = CVar(CInt(7)) 'Integer
  loc_1065B58: LateIdCallSt
  loc_1065B63: var_94 = CVar(CLng(4)) 'Long
  loc_1065B6E: var_E0 = CVar(CInt(7)) 'Integer
  loc_1065B75: LateIdCallSt
  loc_1065B80: var_94 = CVar(CLng(4)) 'Long
  loc_1065B85: var_E0 = 0
  loc_1065B91: LateIdCallSt
  loc_1065B9B: Set var_D0 = Nothing 
  loc_1065B9F: Exit Sub
End Sub

Public Sub Proc_283_22_120AB50
  'Data Table: 44FE94
  Dim var_8C As TextBox
  Dim var_A4 As Variant
  Dim var_118 As TextBox
  Dim var_124 As Double
  Dim unk_44FEB7 As Connection15
  Dim var_88 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_94 As String
  Dim var_90 As MSHFlexGrid
  Dim var_144 As TextBox
  Dim var_11C As String
  Dim var_114 As Variant
  loc_120A6CC: On Error Goto loc_120AA9F
  loc_120A6DA: Set var_88 = Me.Txt
  loc_120A6E0: Call 0.Method_Proc_283_22_120AB500 (CInt(0))
  loc_120A709: If (Proc_6_27_EA61EC(var_8C, "Agst. Purchase Bill") = 0) Then
  loc_120A70C:   Exit Sub
  loc_120A70D: End If
  loc_120A71B: Set var_88 = Me.Txt
  loc_120A721: Call 0.Method_Proc_283_22_120AB500 (CInt(0), var_8C)
  loc_120A740: If (var_8C.Tag = vbNullString) Then
  loc_120A764:   MsgBox("Agst. Purchase Bill is a required field.", &H10, "Validation Error", var_F4, var_114)
  loc_120A774:   Exit Sub
  loc_120A775: End If
  loc_120A783: Set var_88 = Me.Txt
  loc_120A789: Call 0.Method_Proc_283_22_120AB500 (CInt(2), var_8C)
  loc_120A791: var_94 = var_8C.Text
  loc_120A7AD: If (CDbl(Val(var_94)) = CDbl(0)) Then
  loc_120A7D1:   MsgBox("None Of the Card Inserted Yet.", &H40, "Validation Error", var_F4, var_114)
  loc_120A7E1:   Exit Sub
  loc_120A7E2: End If
  loc_120A7F0: Set var_90 = Me.Txt
  loc_120A7F6: Call 0.Method_Proc_283_22_120AB500 (CInt(2), var_118)
  loc_120A80B: var_124 = Val(var_118.Text)
  loc_120A81C: Set var_88 = Me.Txt
  loc_120A822: Call 0.Method_Proc_283_22_120AB500 (CInt(1), var_8C, var_94)
  loc_120A84F: If (CDbl(Val(var_94)) <> CDbl(var_8C.Text)) Then
  loc_120A873:   MsgBox("No. Of Purchase Card & Inserted Card should be equal.", &H40, "Validation Error", var_F4, var_114)
  loc_120A883:   Exit Sub
  loc_120A884: End If
  loc_120A892: Set var_88 = Me.cmd
  loc_120A898: Call 0.Method_Proc_283_22_120AB500 (1, var_8C)
  loc_120A8A0: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_120A8B5: unk_44FEB7.BeginTrans var_12C
  loc_120A8BE: var_128 = CByte(1) 'Byte
  loc_120A8E7: For var_130 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_126 = var_130 'Integer
  loc_120A8F1:   var_A4 = CVar(CLng(var_126)) 'Long
  loc_120A913:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_120A924:   If (var_94 <> vbNullString) Then
  loc_120A935:     Set var_88 = Me.Txt
  loc_120A93B:     Call 0.Method_Proc_283_22_120AB500 (CInt(0), var_8C, var_94, CVar(CLng(2)))
  loc_120A943:     var_A4 = var_8C.Tag
  loc_120A954:     var_E4 = CVar(CLng(2)) 'Long
  loc_120A963:     var_B4 = Me.FGrid.TextMatrix)
  loc_120A97D:     Set var_118 = Me.Txt
  loc_120A983:     Call 0.Method_Proc_283_22_120AB500 (CInt(3), var_144, var_148, var_B4)
  loc_120A98B:     var_E4 = var_144.Text
  loc_120A99B:     Set var_154 = Me.Txt
  loc_120A9A1:     Call 0.Method_Proc_283_22_120AB500 (CInt(4), var_158, CVar(CLng(var_126)))
  loc_120A9B0:     Proc_6_7_F26918(var_F4, CVar(var_158))
  loc_120A9C9:     var_11C = "Insert Into SmartCardMaster(ContraDocid,HW_Id,U_Name,U_EntDt,U_AE)" & " Values('"
  loc_120A9F7:     var_114 = CVar(var_11C & var_94 & "','" & CStr(var_B4) & "','" & var_148 & "',") 'String
  loc_120AA14:     unk_44FEB7.Execute CStr(var_114 & var_F4 & ",'A')"), var_1AC, -1
  loc_120AA52:   End If
  loc_120AA55: Next var_130 'Integer
  loc_120AA60: unk_44FEB7.CommitTrans
  loc_120AA69: var_128 = CByte(0) 'Byte
  loc_120AA7A: Set var_88 = Me.cmd
  loc_120AA80: Call 0.Method_Proc_283_22_120AB500 (1, var_8C)
  loc_120AA88: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_120AA94: Call Proc_283_21_1065BA0()
  loc_120AA99: Call Proc_283_18_F53EB0()
  loc_120AA9E: Exit Sub
  loc_120AA9F: ' Referenced from: 120A6CC
  loc_120AAAC: Set var_88 = Me.cmd
  loc_120AAB2: Call 0.Method_Proc_283_22_120AB500 (1, var_8C)
  loc_120AABA: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_120AACF: If (CInt(var_128) = 1) Then
  loc_120AAD8:   unk_44FEB7.RollbackTrans
  loc_120AADD: End If
  loc_120AAE5: Set var_88 = Err()
  loc_120AAEB: Call 0.Method_arg_1C (var_12C)
  loc_120AAF8: Set var_8C = Err()
  loc_120AAFE: Call 0.Method_arg_2C (var_11C)
  loc_120AB2F: MsgBox(CVar(CStr(var_12C) & " : " & var_11C), &H10, "Message ", var_F4, var_114)
  loc_120AB4F: Exit Sub
End Sub
