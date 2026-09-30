VERSION 5.00
Begin VB.Form FrmChangeDepart
  Caption = "Department Change Master"
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
    Left = 1860
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
  Begin Shape Shape2
    Left = 15
    Top = 0
    Width = 4395
    Height = 2355
  End
  Begin Shape Shape1
    BorderColor = &H0&
    Left = 1230
    Top = 1350
    Width = 2160
    Height = 705
    Shape = 4
    FillColor = &HAFC0DA&
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

Attribute VB_Name = "FrmChangeDepart"

Private global_52 As Integer
Private global_54 As Integer

Private Sub TopCtrl1_UnknownEvent_19 'F267D8
  'Data Table: 42392C
  Dim var_86 As Integer
  Dim unk_423934 As Connection15
  Dim MemVar_1F951BC As String
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_C0 As Boolean
  loc_F266D8: On Error Goto loc_F267BC
  loc_F266E5: var_94 = "Name"
  loc_F26706: If (Proc_6_27_EA61EC(Me.TXT_REST) = 0) Then
  loc_F26709:   Exit Sub
  loc_F2670A: End If
  loc_F2670C: var_86 = &HFF
  loc_F26718: unk_423934.BeginTrans var_9C
  loc_F2672F: MemVar_1F951BC = CStr(Me.TXT_REST.BoundText)
  loc_F2673F: unk_423934.CommitTrans
  loc_F26761: var_86 = 0
  loc_F2676F: Me.Requery -1
  loc_F26799: Me.Find "SearchCode ='" & CStr(Me.TXT_REST.BoundText) & "'", 0, 1
  loc_F267A5: var_C0 = True
  loc_F267B3: Me.TXT_REST.Enabled = var_C0
  loc_F267BB: Exit Sub
  loc_F267BC: ' Referenced from: F266D8
  loc_F267C2: If (var_86 = &HFF) Then
  loc_F267CB:   unk_423934.RollbackTrans
  loc_F267D0: End If
  loc_F267D0: Proc_6_60_E63754(var_C0, var_86, MemVar_1F951BC)
  loc_F267D5: Exit Sub
  loc_F267D6: Exit Sub
End Sub

Private Sub CmdOK_Click() 'F61940
  'Data Table: 42392C
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim unk_423934 As Connection15
  Dim var_88 As Recordset15
  Dim MemVar_1F951C0 As String
  Dim MemVar_1F951C4 As String
  loc_F6183B: If (CStr(Me.TXT_REST.defText) <> vbNullString) Then
  loc_F61842:   Set var_8C = Me.TXT_REST
  loc_F61848:   var_9C = var_8C.BoundText
  loc_F6187E:   unk_423934.Execute "Select RestType,BackColor From Depart Where Code='" & CStr(var_9C) & "'", var_9C, -1
  loc_F61889:   Set var_88 = var_8C
  loc_F618AD:   If (var_88.RecordCount > 0) Then
  loc_F618DB:     MemVar_1F951C0 = CStr(var_88.Fields.Item(0).Value)
  loc_F61914:     MemVar_1F951C4 = CStr(var_88.Fields.Item(1).Value)
  loc_F61922:   End If
  loc_F6192F:   Me.Global.Unload Me
  loc_F61937: End If
  loc_F6193C: Set var_88 = Nothing
  loc_F6193F: Exit Sub
End Sub

Private Sub Form_Load() 'F2B7B8
  'Data Table: 42392C
  Dim Me As Recordset15
  loc_F2B6B0: On Error Goto loc_F2B7AF
  loc_F2B6CF: Set var_8C = Me.TXT_REST
  loc_F2B6DE: Proc_6_92_EF7BF4("SELECT CODE ,NAME FROM Depart Where OutletYN<>'Y' and RestType='House Keeping' ORDER BY NAME", var_8C)
  loc_F2B70F: Me.TXT_REST.CursorLocation = 3
  loc_F2B737: Me.Open "Select R.Code as SearchCode,R.Name  From Depart R Where OutletYN<>'Y' and RestType='House Keeping' Order by R.Name", CVar(MemVar_1F95044), 3
  loc_F2B745: Call 0.Method_arg_160 (var_8C, 1, -1)
  loc_F2B753: Call 0.Method_arg_164 (var_8C, "NAME")
  loc_F2B77E: Call Proc_83_15_E1E690(Proc_5_1_100EC1C("ADD", Me), New)
  loc_F2B789: Call Proc_83_14_EA5298("CODE")
  loc_F2B7A6: Proc_6_23_DFC5B8(Me, 2370)
  loc_F2B7AE: Exit Sub
  loc_F2B7AF: ' Referenced from: F2B6B0
  loc_F2B7AF: Proc_6_60_E63754(4410)
  loc_F2B7B4: Exit Sub
End Sub

Private Sub Form_Resize() 'E5D2E8
  'Data Table: 42392C
  loc_E5D2D6: Proc_6_135_12AA86C(var_A8, Me, "DU")
  loc_E5D2E4: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1E9B0
  'Data Table: 42392C
  loc_E1E99F: Set global_56 = Nothing
  loc_E1E9AB: global_52 = 0
  loc_E1E9AE: Exit Sub
End Sub

Private Sub Form_Activate() 'E2AEE8
  'Data Table: 42392C
  loc_E2AEC9: If (global_54 = &HFF) Then
  loc_E2AED6:   Proc_6_93_EACCB4(Me.TXT_REST)
  loc_E2AEE3:   global_54 = 0
  loc_E2AEE6: End If
  loc_E2AEE6: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E36968
  'Data Table: 42392C
  loc_E36945: If (global_52 = &HFF) Then
  loc_E36955:   Me.Global.Unload Me
  loc_E3695D: End If
  loc_E36962: global_54 = &HFF
  loc_E36965: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E36A28
  'Data Table: 42392C
  loc_E369FC: On Error Goto loc_E36A20
  loc_E36A17: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E36A1F: Exit Sub
  loc_E36A20: ' Referenced from: E369FC
  loc_E36A20: Proc_6_60_E63754(Shift)
  loc_E36A25: Exit Sub
End Sub

Public Function global_52Get() '423D60
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '423D6F
  global_52 = Value
End Sub

Public Function global_54Get() '423D7E
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '423D8D
  global_54 = Value
End Sub

Public Sub Proc_83_12_E18CD0
  'Data Table: 42392C
  loc_E18CC5: Me.Global.Unload Me
  loc_E18CCD: Exit Sub
End Sub

Public Sub Proc_83_13_E1E780
  'Data Table: 42392C
  loc_E1E774: Me.TXT_REST.BoundText = vbNullString
  loc_E1E77C: Exit Sub
  loc_E1E77D: var_8C = 
End Sub

Public Sub Proc_83_14_EA5298
  'Data Table: 42392C
  Dim Me As Recordset15
  loc_EA5218: On Error Goto loc_EA528F
  loc_EA5232: If (Me.RecordCount > 0) Then
  loc_EA5271:   Me.TXT_REST.BoundText = CVar(CStr(Me.Fields.Item("SearchCode").Value))
  loc_EA5289: Else
  loc_EA5289:   Call Proc_83_13_E1E780()
  loc_EA528E: End If
  loc_EA528E: Exit Sub
  loc_EA528F: ' Referenced from: EA5218
  loc_EA528F: Proc_6_60_E63754()
  loc_EA5294: Exit Sub
End Sub

Public Sub Proc_83_15_E1E690(arg_C) 'E1E690
  'Data Table: 42392C
  loc_E1E685: Me.TXT_REST.Enabled = arg_C
  loc_E1E68D: Exit Sub
  loc_E1E68E: Loop Until  'do at: E19AE5
End Sub
