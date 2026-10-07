VERSION 5.00
Begin VB.Form FrmChangeKitch
  Caption = "Kitchen Change Master"
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

Attribute VB_Name = "FrmChangeKitch"

Private global_52 As Integer
Private global_54 As Integer

Private Sub TopCtrl1_UnknownEvent_19 'F51D4C
  'Data Table: 422DA4
  Dim var_86 As Integer
  Dim unk_422DAD As Connection15
  Dim MemVar_1F951A8 As String
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_E0 As Boolean
  loc_F51C38: On Error Goto loc_F51D31
  loc_F51C45: var_94 = "Name"
  loc_F51C66: If (Proc_6_27_EA61EC(Me.TXT_REST) = 0) Then
  loc_F51C69:   Exit Sub
  loc_F51C6A: End If
  loc_F51C6C: var_86 = &HFF
  loc_F51C78: unk_422DAD.BeginTrans var_9C
  loc_F51C9E: MemVar_1F951A8 = CStr(Trim(CVar(CStr(Me.TXT_REST.BoundText))))
  loc_F51CB4: unk_422DAD.CommitTrans
  loc_F51CD6: var_86 = 0
  loc_F51CE4: Me.Requery -1
  loc_F51D0E: Me.Find "SearchCode ='" & CStr(Me.TXT_REST.BoundText) & "'", 0, 1
  loc_F51D1A: var_E0 = True
  loc_F51D28: Me.TXT_REST.Enabled = var_E0
  loc_F51D30: Exit Sub
  loc_F51D31: ' Referenced from: F51C38
  loc_F51D37: If (var_86 = &HFF) Then
  loc_F51D40:   unk_422DAD.RollbackTrans
  loc_F51D45: End If
  loc_F51D45: Proc_6_60_E63754(var_E0, var_86, MemVar_1F951A8)
  loc_F51D4A: Exit Sub
  loc_F51D4B: Exit Sub
End Sub

Private Sub CmdOK_Click() 'F63600
  'Data Table: 422DA4
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim MemVar_1F951C8 As String
  Dim unk_422DAD As Connection15
  Dim var_88 As Recordset15
  Dim MemVar_1F951CC As String
  Dim MemVar_1F951D0 As String
  loc_F634FB: If (CStr(Me.TXT_REST.defText) <> vbNullString) Then
  loc_F63502:   Set var_8C = Me.TXT_REST
  loc_F63508:   var_9C = var_8C.BoundText
  loc_F63510:   MemVar_1F951C8 = CStr(var_9C)
  loc_F6353E:   unk_422DAD.Execute "Select RestType,BackColor From Depart Where Code='" & MemVar_1F951A8 & "'", var_9C, -1
  loc_F63549:   Set var_88 = var_8C
  loc_F6356D:   If (var_88.RecordCount > 0) Then
  loc_F6359B:     MemVar_1F951CC = CStr(var_88.Fields.Item(0).Value)
  loc_F635D4:     MemVar_1F951D0 = CStr(var_88.Fields.Item(1).Value)
  loc_F635E2:   End If
  loc_F635EF:   Me.Global.Unload Me
  loc_F635F7: End If
  loc_F635FC: Set var_88 = Nothing
  loc_F635FF: Exit Sub
End Sub

Private Sub Form_Load() 'F2AFF0
  'Data Table: 422DA4
  Dim Me As Recordset15
  loc_F2AEE8: On Error Goto loc_F2AFE7
  loc_F2AF07: Set var_8C = Me.TXT_REST
  loc_F2AF16: Proc_6_92_EF7BF4("SELECT CODE ,NAME FROM Depart Where RestType in ('Kitchen','Store') ORDER BY NAME", var_8C)
  loc_F2AF47: Me.TXT_REST.CursorLocation = 3
  loc_F2AF6F: Me.Open "Select R.Code as SearchCode,R.Name  From Depart R Where RestType in ('Kitchen','Store') Order by R.Name", CVar(MemVar_1F95044), 3
  loc_F2AF7D: Call 0.Method_arg_160 (var_8C, 1, -1)
  loc_F2AF8B: Call 0.Method_arg_164 (var_8C, "NAME")
  loc_F2AFB6: Call Proc_85_14_E1D420(Proc_5_1_100EC1C("ADD", Me), New)
  loc_F2AFC1: Call Proc_85_13_EA3580("CODE")
  loc_F2AFDE: Proc_6_23_DFC5B8(Me, 2370)
  loc_F2AFE6: Exit Sub
  loc_F2AFE7: ' Referenced from: F2AEE8
  loc_F2AFE7: Proc_6_60_E63754(4410)
  loc_F2AFEC: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1EA00
  'Data Table: 422DA4
  loc_E1E9EF: Set global_56 = Nothing
  loc_E1E9FB: global_52 = 0
  loc_E1E9FE: Exit Sub
End Sub

Private Sub Form_Activate() 'E2AA3C
  'Data Table: 422DA4
  loc_E2AA1D: If (global_54 = &HFF) Then
  loc_E2AA2A:   Proc_6_93_EACCB4(Me.TXT_REST)
  loc_E2AA37:   global_54 = 0
  loc_E2AA3A: End If
  loc_E2AA3A: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2DF68
  'Data Table: 422DA4
  loc_E2DF45: If (global_52 = &HFF) Then
  loc_E2DF55:   Me.Global.Unload Me
  loc_E2DF5D: End If
  loc_E2DF62: global_54 = &HFF
  loc_E2DF65: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2C5E8
  'Data Table: 422DA4
  loc_E2C5BC: On Error Goto loc_E2C5E0
  loc_E2C5D7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2C5DF: Exit Sub
  loc_E2C5E0: ' Referenced from: E2C5BC
  loc_E2C5E0: Proc_6_60_E63754(Shift)
  loc_E2C5E5: Exit Sub
End Sub

Public Function global_52Get() '4231D0
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4231DF
  global_52 = Value
End Sub

Public Function global_54Get() '4231EE
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '4231FD
  global_54 = Value
End Sub

Public Sub Proc_85_11_E15ECC
  'Data Table: 422DA4
  loc_E15EC1: Me.Global.Unload Me
  loc_E15EC9: Exit Sub
End Sub

Public Sub Proc_85_12_E1F860
  'Data Table: 422DA4
  loc_E1F854: Me.TXT_REST.BoundText = vbNullString
  loc_E1F85C: Exit Sub
End Sub

Public Sub Proc_85_13_EA3580
  'Data Table: 422DA4
  Dim Me As Recordset15
  loc_EA3500: On Error Goto loc_EA3577
  loc_EA351A: If (Me.RecordCount > 0) Then
  loc_EA3559:   Me.TXT_REST.BoundText = CVar(CStr(Me.Fields.Item("SearchCode").Value))
  loc_EA3571: Else
  loc_EA3571:   Call Proc_85_12_E1F860()
  loc_EA3576: End If
  loc_EA3576: Exit Sub
  loc_EA3577: ' Referenced from: EA3500
  loc_EA3577: Proc_6_60_E63754()
  loc_EA357C: Exit Sub
  loc_EA357D: Put , , 
End Sub

Public Sub Proc_85_14_E1D420(arg_C) 'E1D420
  'Data Table: 422DA4
  loc_E1D415: Me.TXT_REST.Enabled = arg_C
  loc_E1D41D: Exit Sub
  loc_E1D41E: If  Then Exit Sub
  loc_E1D41E: End If
End Sub
