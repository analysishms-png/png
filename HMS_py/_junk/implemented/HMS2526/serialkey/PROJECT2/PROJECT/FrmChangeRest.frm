VERSION 5.00
Begin VB.Form FrmChangeRest
  Caption = "Restaurant Change Master"
  BackColor = &HEF9F5F&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "form4"
  MaxButton = 0   'False
  MinButton = 0   'False
  Visible = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 0
  ClientTop = 285
  ClientWidth = 4560
  ClientHeight = 2370
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
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin CommandButton CmdOK
    Caption = "&OK"
    Left = 1800
    Top = 1515
    Width = 900
    Height = 360
    TabIndex = 2
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4560
    Height = 375
    Visible = 0   'False
    TabIndex = 1
  End
  Begin DataCombo TXT_REST
    Left = 930
    Top = 660
    Width = 2985
    Height = 360
    TabIndex = 3
  End
  Begin Shape Shape1
    BorderColor = &H0&
    Left = 1230
    Top = 1350
    Width = 2160
    Height = 705
    Shape = 4
    FillColor = &HF8D1B1&
    FillStyle = 0
  End
  Begin Label Label1
    Caption = "Name"
    Index = 0
    ForeColor = &H0&
    Left = 195
    Top = 705
    Width = 510
    Height = 225
    TabIndex = 0
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmChangeRest"

Private global_52 As Integer
Private global_54 As Integer

Private Sub TopCtrl1_UnknownEvent_19 'F810A4
  'Data Table: 42450C
  Dim var_86 As Integer
  Dim unk_424517 As Connection15
  Dim MemVar_1F951A8 As String
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_E0 As Boolean
  loc_F80F60: On Error Goto loc_F81088
  loc_F80F6D: var_94 = "Name"
  loc_F80F8E: If (Proc_6_27_EA61EC(Me.TXT_REST) = 0) Then
  loc_F80F91:   Exit Sub
  loc_F80F92: End If
  loc_F80F94: var_86 = &HFF
  loc_F80FA0: unk_424517.BeginTrans var_9C
  loc_F80FB8: If (PSalePoint = "PointOfSale") Then
  loc_F80FDC:   MemVar_1F951A8 = CStr(Trim(CVar(CStr(Me.TXT_REST.BoundText))))
  loc_F80FEF: Else
  loc_F81002:   If (PSalePoint = "DirectSale") Then
  loc_F81005:   End If
  loc_F81005: End If
  loc_F8100B: unk_424517.CommitTrans
  loc_F8102D: var_86 = 0
  loc_F8103B: Me.Requery -1
  loc_F81065: Me.Find "SearchCode ='" & CStr(Me.TXT_REST.BoundText) & "'", 0, 1
  loc_F81071: var_E0 = True
  loc_F8107F: Me.TXT_REST.Enabled = var_E0
  loc_F81087: Exit Sub
  loc_F81088: ' Referenced from: F80F60
  loc_F8108E: If (var_86 = &HFF) Then
  loc_F81097:   unk_424517.RollbackTrans
  loc_F8109C: End If
  loc_F8109C: Proc_6_60_E63754(var_E0, var_86, MemVar_1F951A8)
  loc_F810A1: Exit Sub
  loc_F810A2: Exit Sub
End Sub

Private Sub CmdOK_Click() '1054A40
  'Data Table: 42450C
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim unk_424517 As Connection15
  Dim var_88 As Recordset15
  Dim MemVar_1F951AC As String
  Dim MemVar_1F951B0 As String
  loc_10547FB: If (CStr(Me.TXT_REST.defText) <> vbNullString) Then
  loc_1054811:   If (PSalePoint = "PointOfSale") Then
  loc_1054818:     Set var_8C = Me.TXT_REST
  loc_105481E:     var_9C = var_8C.BoundText
  loc_1054869:     unk_424517.Execute "Select RestType,BackColor From Depart Where Code='" & CStr(Trim(CVar(CStr(var_9C)))) & "'", var_9C, -1
  loc_1054874:     Set var_88 = var_8C
  loc_1054898:     If (var_88.RecordCount > 0) Then
  loc_10548C6:       MemVar_1F951AC = CStr(var_88.Fields.Item(0).Value)
  loc_10548FF:       MemVar_1F951B0 = CStr(var_88.Fields.Item(1).Value)
  loc_105490D:     End If
  loc_1054910:   Else
  loc_1054923:     If (PSalePoint = "DirectSale") Then
  loc_105492A:       Set var_8C = Me.TXT_REST
  loc_1054930:       var_9C = var_8C.BoundText
  loc_105497B:       unk_424517.Execute "Select RestType,BackColor From Depart Where Code='" & CStr(Trim(CVar(CStr(var_9C)))) & "'", var_9C, -1
  loc_1054986:       Set var_88 = var_8C
  loc_10549AA:       If (var_88.RecordCount > 0) Then
  loc_10549D8:         MemVar_1F951AC = CStr(var_88.Fields.Item(0).Value)
  loc_1054A11:         MemVar_1F951B0 = CStr(var_88.Fields.Item(1).Value)
  loc_1054A1F:       End If
  loc_1054A1F:     End If
  loc_1054A1F:   End If
  loc_1054A2C:   Me.Global.Unload Me
  loc_1054A34: End If
  loc_1054A39: Set var_88 = Nothing
  loc_1054A3C: Exit Sub
End Sub

Private Sub Form_Load() 'FF0D90
  'Data Table: 42450C
  Dim var_AC As Variant
  Dim Me As Recordset15
  loc_FF0BA8: On Error Goto loc_FF0D8A
  loc_FF0BBE: If (PSalePoint = "PointOfSale") Then
  loc_FF0BCB:   var_98 = "CODE"
  loc_FF0BDD:   Set var_90 = Me.TXT_REST
  loc_FF0BF5:   Proc_6_92_EF7BF4("SELECT CODE ,NAME FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "') AND RestType in ('Outlet','Room Service','Production') ORDER BY NAME", var_90)
  loc_FF0C16:   Set global_60 = New 
  loc_FF0C28:   Me.TXT_REST.CursorLocation = 3
  loc_FF0C52:   var_AC = CVar("Select R.Code as SearchCode,R.Name  From Depart R Where (LOGSITE_CODE='" & MemVar_1F95078 & "') AND RestType in ('Outlet','Room Service','Production') Order by R.Name") 'String
  loc_FF0C5C:   Me.Open var_AC, CVar(MemVar_1F95044), 3
  loc_FF0C70:   Call 0.Method_arg_160 (var_90, 1, -1)
  loc_FF0C7E:   Call 0.Method_arg_164 (var_90, "NAME")
  loc_FF0C89: Else
  loc_FF0C9C:   If (PSalePoint = "DirectSale") Then
  loc_FF0CA9:     var_98 = "CODE"
  loc_FF0CBB:     Set var_90 = Me.TXT_REST
  loc_FF0CD3:     Proc_6_92_EF7BF4("SELECT CODE ,NAME FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "') AND RestType in ('Direct Sale') ORDER BY NAME", var_90, "NAME")
  loc_FF0CF4:     Set global_60 = New 
  loc_FF0D06:     Me.TXT_REST.CursorLocation = 3
  loc_FF0D30:     var_AC = CVar("Select R.Code as SearchCode,R.Name  From Depart R Where (LOGSITE_CODE='" & MemVar_1F95078 & "') AND RestType in ('Direct Sale') Order by R.Name") 'String
  loc_FF0D3A:     Me.Open var_AC, CVar(MemVar_1F95044), 3
  loc_FF0D4E:     Call 0.Method_arg_160 (var_90, 1, -1)
  loc_FF0D5C:     Call 0.Method_arg_164 (var_90, var_98)
  loc_FF0D64:   End If
  loc_FF0D64: End If
  loc_FF0D64: Call Proc_48_17_EA287C(var_98)
  loc_FF0D81: Proc_6_23_DFC5B8(Me, 2370)
  loc_FF0D89: Exit Sub
  loc_FF0D8A: ' Referenced from: FF0BA8
  loc_FF0D8A: Proc_6_60_E63754(4410)
  loc_FF0D8F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1F590
  'Data Table: 42450C
  loc_E1F57F: Set global_60 = Nothing
  loc_E1F58B: global_52 = 0
  loc_E1F58E: Exit Sub
End Sub

Private Sub Form_Activate() 'E29CF0
  'Data Table: 42450C
  loc_E29CD1: If (global_54 = &HFF) Then
  loc_E29CDE:   Proc_6_93_EACCB4(Me.TXT_REST)
  loc_E29CEB:   global_54 = 0
  loc_E29CEE: End If
  loc_E29CEE: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E30AE8
  'Data Table: 42450C
  loc_E30AC5: If (global_52 = &HFF) Then
  loc_E30AD5:   Me.Global.Unload Me
  loc_E30ADD: End If
  loc_E30AE2: global_54 = &HFF
  loc_E30AE5: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E30B48
  'Data Table: 42450C
  loc_E30B1C: On Error Goto loc_E30B40
  loc_E30B37: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E30B3F: Exit Sub
  loc_E30B40: ' Referenced from: E30B1C
  loc_E30B40: Proc_6_60_E63754(Shift)
  loc_E30B45: Exit Sub
End Sub

Public Function global_52Get() '424964
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '424973
  global_52 = Value
End Sub

Public Function global_54Get() '424982
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '424991
  global_54 = Value
End Sub

Public Function global_56Get() '4249A0
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4249AF
  global_56 = Value
End Sub

Public Property Let PSalePoint(vNewValue) 'E124EC
  'Data Table: 42450C
  loc_E124E4: global_56 = vNewValue
  loc_E124E8: Exit Sub
End Sub

Public Property Get PSalePoint() 'E12774
  'Data Table: 42450C
  loc_E12768: var_88 = global_56
  loc_E1276B: PSalePoint = 
End Sub

Public Sub Proc_48_15_E17050
  'Data Table: 42450C
  loc_E17045: Me.Global.Unload Me
  loc_E1704D: Exit Sub
End Sub

Public Sub Proc_48_16_E1F630
  'Data Table: 42450C
  loc_E1F624: Me.TXT_REST.BoundText = vbNullString
  loc_E1F62C: Exit Sub
End Sub

Public Sub Proc_48_17_EA287C
  'Data Table: 42450C
  Dim Me As Recordset15
  loc_EA27FC: On Error Goto loc_EA2873
  loc_EA2816: If (Me.RecordCount > 0) Then
  loc_EA2855:   Me.TXT_REST.BoundText = CVar(CStr(Me.Fields.Item("SearchCode").Value))
  loc_EA286D: Else
  loc_EA286D:   Call Proc_48_16_E1F630()
  loc_EA2872: End If
  loc_EA2872: Exit Sub
  loc_EA2873: ' Referenced from: EA27FC
  loc_EA2873: Proc_6_60_E63754()
  loc_EA2878: Exit Sub
  loc_EA2879: StAryRecCopy
End Sub

Public Sub Proc_48_18_E1F5E0(arg_C) 'E1F5E0
  'Data Table: 42450C
  loc_E1F5D5: Me.TXT_REST.Enabled = arg_C
  loc_E1F5DD: Exit Sub
End Sub
