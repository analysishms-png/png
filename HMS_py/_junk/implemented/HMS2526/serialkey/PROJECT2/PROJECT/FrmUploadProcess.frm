VERSION 5.00
Begin VB.Form FrmUploadProcess
  Caption = "Upload Process"
  BackColor = &HDECCBE&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6300
  ClientHeight = 3090
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2865
    Width = 6300
    Height = 225
    Visible = 0   'False
    TabIndex = 9
  End
  Begin ProgressBar PBar1
    Left = 2580
    Top = 4410
    Width = 8085
    Height = 255
    Visible = 0   'False
    TabIndex = 5
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 7035
    Top = 1950
    Width = 1485
    Height = 285
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 4620
    Top = 1935
    Width = 1425
    Height = 285
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin BtnEnh CmdExit
    Left = 8625
    Top = 3600
    Width = 2070
    Height = 690
    TabIndex = 7
  End
  Begin BtnEnh Cmd
    Index = 0
    Left = 4455
    Top = 3600
    Width = 4155
    Height = 690
    TabIndex = 8
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 6
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
    Caption = "To Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 6225
    Top = 1965
    Width = 795
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
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
  Begin Label lblDisplay
    Caption = "."
    Left = 3165
    Top = 2700
    Width = 5835
    Height = 510
    TabIndex = 3
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "From Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 3540
    Top = 1920
    Width = 990
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
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

Attribute VB_Name = "FrmUploadProcess"


Private Sub Txt_GotFocus(Index As Integer) 'ECB24C
  'Data Table: 42EEB8
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECB1B2: Set var_88 = Me.Txt
  loc_ECB1B8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_ECB1C6: Proc_6_74_E23240(var_8C)
  loc_ECB1E1: Set var_88 = Me.Txt
  loc_ECB1E7: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_ECB1EF: var_8C.SelStart = 0
  loc_ECB208: Set var_88 = Me.Txt
  loc_ECB20E: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_ECB229: Set var_90 = Me.Txt
  loc_ECB22F: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_ECB237: var_98.SelLength = Len(var_8C.Text)
  loc_ECB24A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E41E98
  'Data Table: 42EEB8
  loc_E41E6E: If (Shift = &HD) Then
  loc_E41E79:   Call Txt_Validate(KeyCode)
  loc_E41E8C:   Proc_303_0_FBACC8("	", 0)
  loc_E41E94: End If
  loc_E41E94: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50C0C
  'Data Table: 42EEB8
  loc_E50BEA: Set var_88 = Me.Txt
  loc_E50BF0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E50BFE: Proc_6_73_E23294(var_8C)
  loc_E50C0A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'EB0528
  'Data Table: 42EEB8
  Dim var_8A As Integer
  Dim var_94 As TextBox
  Dim var_A4 As TextBox
  loc_EB04AF: var_8A = Cancel
  loc_EB04BA: If Not (var_8A = CInt(0)) Then
  loc_EB04C5:   If (var_8A = CInt(1)) Then
  loc_EB04C8:   End If
  loc_EB04D5:   Set var_90 = Me.Txt
  loc_EB04DB:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_EB0501:   Set var_A0 = Me.Txt
  loc_EB0507:   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_EB050F:   var_A4.Text = Proc_6_34_14EEAAC(var_94.Text)
  loc_EB0526: End If
  loc_EB0526: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 'E14A10
  'Data Table: 42EEB8
  Dim var_86 As Integer
  loc_E149FB: var_86 = Cancel
  loc_E14A04: If (var_86 = 0) Then
  loc_E14A07:   Call Proc_334_16_13ED550(var_86)
  loc_E14A0C: End If
  loc_E14A0C: Exit Sub
  loc_E14A0D: Exit Sub
End Sub

Private Sub Form_Load() 'ECB084
  'Data Table: 42EEB8
  Dim var_A8 As ProgressBar
  Dim var_B0 As TextBox
  loc_ECAFE7: Me.PBar1.Visible = False
  loc_ECAFEF: On Error Goto loc_ECB07D
  loc_ECB008: Proc_6_23_DFC5B8(Me, 0)
  loc_ECB017: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_ECB02F: Set var_A8 = Me.Txt
  loc_ECB035: Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_ECB03D: var_B0.Text = CStr(MemVar_1F950EC)
  loc_ECB05F: Set var_A8 = Me.Txt
  loc_ECB065: Call 0.Method_Form_Load0 (CInt(1), var_B0)
  loc_ECB06D: var_B0.Text = CStr(MemVar_1F950EC)
  loc_ECB07C: Exit Sub
  loc_ECB07D: ' Referenced from: ECAFEF
  loc_ECB07D: Proc_6_60_E63754(0)
  loc_ECB082: Exit Sub
End Sub

Private Sub Form_Resize() 'E6F32C
  'Data Table: 42EEB8
  Dim Form_Resize0FF As Variant
  loc_E6F2D6: Call 0.Method_arg_50 (var_88)
  loc_E6F2E8: Me.LblFormCaption.Caption = var_88
  loc_E6F301: Me.LblFormCaption.Left = CDbl(0)
  loc_E6F30F: Call 0.Method_arg_100 (var_90)
  loc_E6F321: Me.LblFormCaption.Width = var_90
  loc_E6F329: Exit Sub
  loc_E6F32A: Form_Resize0FF = CVar() 'Integer
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E02E18
  'Data Table: 42EEB8
  loc_E02E14: Exit Sub
  loc_E02E15: Set var_A8 = 0
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5BCA4
  'Data Table: 42EEB8
  loc_E5BC6C: Set var_88 = Me.TopCtrl1
  loc_E5BC72: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5BC95: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5BC9D:   Call Form_Unload(&HFF)
  loc_E5BCA2: End If
  loc_E5BCA2: Exit Sub
End Sub

Private Sub Form_Activate() 'E4F2DC
  'Data Table: 42EEB8
  loc_E4F2B0: On Error Goto loc_E4F2D6
  loc_E4F2B7: Set var_8C = Me.TopCtrl1
  loc_E4F2BD: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4F2D2: If (CLng(CInt()) = &H2D) Then
  loc_E4F2D5: End If
  loc_E4F2D5: Exit Sub
  loc_E4F2D6: ' Referenced from: E4F2B0
  loc_E4F2D6: Proc_6_60_E63754()
  loc_E4F2DB: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2557C
  'Data Table: 42EEB8
  loc_E25561: If (MasterFormExit = &HFF) Then
  loc_E25571:   Me.Global.Unload Me
  loc_E25579: End If
  loc_E25579: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E62648
  'Data Table: 42EEB8
  loc_E625FC: On Error Goto loc_E6263F
  loc_E62609: If (CLng(KeyCode) = &H1B) Then
  loc_E62619:   Me.Global.Unload Me
  loc_E62621:   Exit Sub
  loc_E62622: End If
  loc_E62636: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E6263E: Exit Sub
  loc_E6263F: ' Referenced from: E625FC
  loc_E6263F: Proc_6_60_E63754(Shift)
  loc_E62644: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1AD78
  'Data Table: 42EEB8
  loc_E1AD6D: Me.Global.Unload Me
  loc_E1AD75: Exit Sub
End Sub

Public Function MasterFormExitGet() '42F61C
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '42F62B
  MasterFormExit = Value
End Sub

Public Sub Proc_334_15_10B8AFC(arg_C) '10B8AFC
  'Data Table: 42EEB8
  Dim var_8C As Recordset15
  loc_10B8815: Set var_8C = arg_C 
  loc_10B883D: var_8C.Fields.Append "SupplierGSTIN", &HC8, &H14
  loc_10B8869: var_8C.Fields.Append "SupplierName", &HC8, &H64
  loc_10B8895: var_8C.Fields.Append "InvoiceNo", &HC8, &H28
  loc_10B88C1: var_8C.Fields.Append "InvoiceType", &HC8, &H23
  loc_10B88ED: var_8C.Fields.Append "InvoiceDate", &HC8, &HB
  loc_10B8919: var_8C.Fields.Append "InvoiceValue", 5, 0
  loc_10B8945: var_8C.Fields.Append "PlaceOfSupply", &HC8, &H23
  loc_10B8971: var_8C.Fields.Append "ReverseCharge", &HC8, 1
  loc_10B899D: var_8C.Fields.Append "TaxRate", 5, 0
  loc_10B89C9: var_8C.Fields.Append "TaxableValue", 5, 0
  loc_10B89F5: var_8C.Fields.Append "IGST", 5, 0
  loc_10B8A21: var_8C.Fields.Append "CGST", 5, 0
  loc_10B8A4D: var_8C.Fields.Append "SGST", 5, 0
  loc_10B8A79: var_8C.Fields.Append "Cess", 5, 0
  loc_10B8AA5: var_8C.Fields.Append "ReturnStatus", &HC8, &H14
  loc_10B8AB5: var_8C.CursorType = 3
  loc_10B8AC2: var_8C.LockType = 3
  loc_10B8AE1: var_8C.Open var_A0, var_B0, -1
  loc_10B8AE8: Set var_8C = Nothing 
  loc_10B8AEF: Set var_88 = arg_C 
  loc_10B8AF3: Proc_334_15_10B8AFC = -1
  loc_10B8AFA: CExtInstUnk
End Sub

Public Sub Proc_334_16_13ED550
  'Data Table: 42EEB8
  Dim var_E4 As Variant
  Dim MemVar_1F9E69C As Global
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_B0 As Long
  Dim var_CC As String
  Dim var_144 As Variant
  Dim var_F4 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_B4 As Recordset15
  Dim var_C8 As Fields15
  Dim var_248 As Variant
  Dim unk_42EEFE As Connection15
  Dim var_268 As Variant
  Dim var_26C As Fields15
  Dim var_318 As Variant
  Dim var_498 As Variant
  Dim var_5A0 As Variant
  loc_13ECCA4: On Error Goto loc_13ED513
  loc_13ECCBC: Set var_94 = CreateObject("Excel.Application", 0) 
  loc_13ECCD0: Call Proc_334_15_10B8AFC(New)
  loc_13ECCD8: Set var_B4 = var_C8
  loc_13ECCEA: var_C8 = Me.Global.App
  loc_13ECD07: Call 0.Method_Proc_334_16_13ED5504 (App.Path & "\EGST\R2A\R2A.ini", var_D2)
  loc_13ECD1C: If (var_D2 = 0) Then
  loc_13ECD38:   MsgBox("R2A ini File Missing.Contact to Software windor", &H10, var_104, var_124, var_144)
  loc_13ECD48:   End
  loc_13ECD4A: End If
  loc_13ECD65: var_C8 = MemVar_1F9E69C.App
  loc_13ECD6D: var_CC = App.Path
  loc_13ECD82: Call 0.Method_arg_7C (var_CC & "\EGST\R2A\R2A.ini", 1, 0)
  loc_13ECD8D: Set var_90 = var_148
  loc_13ECDA4: Call 0.Method_arg_24 (var_D2, 0)
  loc_13ECDAD: If Not(var_D2) Then
  loc_13ECDB6:   Call 0.Method_arg_30 (var_CC, var_148)
  loc_13ECDBE:   var_A8 = var_CC
  loc_13ECDC1:   ' Referenced from: 13ECF22
  loc_13ECDC1: End If
  loc_13ECDC9: If (var_A8 <> var_AC) Then
  loc_13ECDD4:   If (var_AC <> vbNullString) Then
  loc_13ECDDA:     var_A8 = var_AC
  loc_13ECDDD:   End If
  loc_13ECDE9:   var_C8 = MemVar_1F9E69C.App
  loc_13ECE04:   var_C4 = CVar(App.Path & "\EGST\R2A\" & var_A8) 'String
  loc_13ECE1A:   Set var_98 = var_94.Workbooks.Open 
  loc_13ECE44:   Set var_9C = var_98.Worksheets 
  loc_13ECE50:   var_B0 = 7
  loc_13ECE5B:   var_CC = CStr(var_B0)
  loc_13ECE7C:   var_C4 = CVar("A" & CStr(var_B0)) 'String
  loc_13ECE83:   var_104 = var_9C.Range
  loc_13ECE8B:   VarLateMemCallLdRfVar
  loc_13ECE99:   var_16C = var_C4 & var_104.Address 
  loc_13ECEDD:   Call Proc_334_17_12B2430(var_B4, var_9C.Range.Value, var_16C, &HB, CVar("A" & var_CC & ":"))
  loc_13ECEE4:   Set var_9C = Nothing 
  loc_13ECEEB:   Call var_98.Close
  loc_13ECEF7:   Call 0.Method_arg_24 (var_D2, var_B0, 2)
  loc_13ECF00:   If Not(var_D2) Then
  loc_13ECF09:     Call 0.Method_arg_30 (var_CC, var_C4)
  loc_13ECF11:     var_AC = var_CC
  loc_13ECF14:   End If
  loc_13ECF1C:   If (var_AC = vbNullString) Then
  loc_13ECF1F:     GoTo loc_13ECF25
  loc_13ECF22:   End If
  loc_13ECF22:   GoTo loc_13ECDC1
  loc_13ECF25:   ' Referenced from: 13ECF1F
  loc_13ECF25: End If
  loc_13ECF2A: Set var_8C = Nothing
  loc_13ECF39: var_B4.Filter = 0
  loc_13ECF3E: var_E4 = "TaxRate<>-1"
  loc_13ECF47: var_B4.Filter = 0
  loc_13ECF60: If (var_B4.RecordCount > 0) Then
  loc_13ECF66:   var_B4.MoveFirst
  loc_13ECF6B:   ' Referenced from: 13ED4D5
  loc_13ECF7A:   If Not(var_B4.EOF) Then
  loc_13ECF9E:     var_C8 = var_B4.Fields
  loc_13ECFB5:     Proc_6_17_EAAE40(var_104, CVar(var_C8.Item("SupplierGSTIN")), "Delete From Table_GSTR2A Where SupplierGSTIN=", var_268)
  loc_13ECFBD:     var_124 = -1 & var_104 
  loc_13ECFF0:     Proc_6_17_EAAE40(var_16C, CVar(var_B4.Fields.Item("InvoiceNo")), var_94.Workbooks.Open & " And InvoiceNo=")
  loc_13ED02B:     Proc_6_7_F26918(var_1E0, CVar(var_B4.Fields.Item("InvoiceDate")))
  loc_13ED06A:     var_248 = var_26C & var_16C & " And InvoiceDate=" & var_1E0 & " And TaxRate=" & var_B4.Fields.Item("TaxRate").Value 
  loc_13ED078:     unk_42EEFE.Execute CStr(var_248), var_C8, 
  loc_13ED0BD:     var_F4 = "Insert into Table_GSTR2A (SupplierGSTIN,SupplierName,InvoiceNo,InvoiceType,InvoiceDate,InvoiceValue,PlaceOfSupply,ReverseCharge,TaxRate,TaxableValue,IGST,CGST,SGST,Cess,ReturnStatus) Values ("
  loc_13ED0E8:     Proc_6_17_EAAE40(var_104, CVar(var_B4.Fields.Item("SupplierGSTIN")), var_F4)
  loc_13ED0F0:     var_124 = var_6A0 & var_104 
  loc_13ED0F9:     var_144 = var_124 & "," 
  loc_13ED123:     Proc_6_17_EAAE40(var_16C, CVar(var_B4.Fields.Item("SupplierName")), var_144)
  loc_13ED12B:     var_17C = -1 & var_16C 
  loc_13ED15E:     Proc_6_17_EAAE40(var_1E0, CVar(var_B4.Fields.Item("InvoiceNo")))
  loc_13ED199:     Proc_6_17_EAAE40(var_248, CVar(var_B4.Fields.Item("InvoiceType")))
  loc_13ED1D4:     Proc_6_7_F26918(var_2B0, CVar(var_B4.Fields.Item("InvoiceDate")))
  loc_13ED213:     var_318 = var_B4.Fields & var_16C & "," & var_1E0 & "," & var_248 & "," & var_2B0 & "," & var_B4.Fields.Item("InvoiceValue").Value 
  loc_13ED246:     Proc_6_17_EAAE40(var_370, CVar(var_B4.Fields.Item("PlaceOfSupply")))
  loc_13ED281:     Proc_6_17_EAAE40(var_3D8, CVar(var_B4.Fields.Item("ReverseCharge")))
  loc_13ED2F7:     var_498 = var_318 & "," & var_370 & "," & var_3D8 & "," & var_B4.Fields.Item("TaxRate").Value & "," & var_B4.Fields.Item("TaxableValue").Value 
  loc_13ED39C:     var_5A0 = var_498 & "," & var_B4.Fields.Item("IGST").Value & "," & var_B4.Fields.Item("CGST").Value & "," & var_B4.Fields.Item("SGST").Value 
  loc_13ED406:     Proc_6_17_EAAE40(var_650, CVar(var_B4.Fields.Item("ReturnStatus")))
  loc_13ED41B:     var_CC = CStr(var_5A0 & "," & var_B4.Fields.Item("Cess").Value & "," & var_650 & ")")
  loc_13ED425:     unk_42EEFE.Execute var_CC, var_6A4, 
  loc_13ED4D0:     var_B4.MoveNext
  loc_13ED4D5:     GoTo loc_13ECF6B
  loc_13ED4D8:   End If
  loc_13ED4D8: End If
  loc_13ED4DD: Set var_B4 = Nothing
  loc_13ED4E3: Call var_94.Quit
  loc_13ED502: MsgBox("Upload Process Completed SuccessFully.", &H40, var_104, var_124, var_144)
  loc_13ED512: Exit Sub
  loc_13ED513: ' Referenced from: 13ECCA4
  loc_13ED529: Set var_C8 = Err()
  loc_13ED52F: Call 0.Method_arg_2C (var_CC, 0, var_104)
  loc_13ED53A: MsgBox(CVar(var_CC), var_124, var_144, , )
  loc_13ED54D: Exit Sub
End Sub

Public Sub Proc_334_17_12B2430
  'Data Table: 42EEB8
  Dim var_A0 As String
  Dim var_108 As Double
  Dim var_B0 As String
  Dim var_128 As Integer
  loc_12B1E1C: For var_90 = LBound(arg_10, 1) To UBound(arg_10, 1): var_88 = var_90 'Long
  loc_12B1E2D:   Me.Recordset15.AddNew var_A0, var_B0
  loc_12B1E66:   Me.Recordset15.Fields.Item("SupplierGSTIN").Value = arg_10(var_88, 1).global_0
  loc_12B1EA9:   Me.Recordset15.Fields.Item("SupplierName").Value = arg_10(var_88, 2).global_0
  loc_12B1EEC:   Me.Recordset15.Fields.Item("InvoiceNo").Value = arg_10(var_88, 3).global_0
  loc_12B1F2F:   Me.Recordset15.Fields.Item("InvoiceType").Value = arg_10(var_88, 4).global_0
  loc_12B1F7D:   Me.Recordset15.Fields.Item("InvoiceDate").Value = CVar(Proc_6_34_14EEAAC(CStr(arg_10(var_88, 5).global_0)))
  loc_12B1FF3:   Me.Recordset15.Fields.Item("InvoiceValue").Value = Format(CVar(Val(CStr(arg_10(var_88, 6).global_0))), "0.00")
  loc_12B203F:   Me.Recordset15.Fields.Item("PlaceOfSupply").Value = arg_10(var_88, 7).global_0
  loc_12B2082:   Me.Recordset15.Fields.Item("ReverseCharge").Value = arg_10(var_88, 8).global_0
  loc_12B20A2:   var_128 = -1
  loc_12B20D3:   var_B0 = "-"
  loc_12B20FF:   var_108 = Val(CStr(IIf((arg_10(var_88, 9).global_0 = vbNullString) Or (arg_10(var_88, 9).global_0 = "0.00"), var_128, arg_10(var_88, 9))))
  loc_12B2149:   Me.Recordset15.Fields.Item("TaxRate").Value = Format(CVar(var_108), "0.00")
  loc_12B21CB:   Me.Recordset15.Fields.Item("TaxableValue").Value = Format(CVar(Val(CStr(arg_10(var_88, &HA).global_0))), "0.00")
  loc_12B2247:   Me.Recordset15.Fields.Item("IGST").Value = Format(CVar(Val(CStr(arg_10(var_88, &HB).global_0))), "0.00")
  loc_12B22C3:   Me.Recordset15.Fields.Item("CGST").Value = Format(CVar(Val(CStr(arg_10(var_88, &HC).global_0))), "0.00")
  loc_12B233F:   Me.Recordset15.Fields.Item("SGST").Value = Format(CVar(Val(CStr(arg_10(var_88, &HD).global_0))), "0.00")
  loc_12B237E:   var_B0 = "0.00"
  loc_12B23BB:   Me.Recordset15.Fields.Item("Cess").Value = Format(CVar(Val(CStr(arg_10(var_88, &HE).global_0))), var_B0)
  loc_12B23EB:   var_A0 = "ReturnStatus"
  loc_12B2407:   Me.Recordset15.Fields.Item(var_A0).Value = arg_10(var_88, &HF).global_0
  loc_12B2421:   Me.Recordset15.Update var_A0, var_B0
  loc_12B2429: Next var_90 'Long
  loc_12B242E: Exit Sub
End Sub
