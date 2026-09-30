VERSION 5.00
Begin VB.Form frmLockGodrejSettings
  Caption = "Godrej Locks"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = -15
  ClientTop = 375
  ClientWidth = 10395
  ClientHeight = 7470
  LockControls = -1  'True
  StartUpPosition = 1 'CenterOwner
  Begin CommandButton comSave
    Caption = "Save && Exit"
    Left = 3810
    Top = 2040
    Width = 1575
    Height = 495
    TabIndex = 32
  End
  Begin TextBox txtRepeatTimes
    Left = 1680
    Top = 1440
    Width = 1695
    Height = 285
    Enabled = 0   'False
    Text = "1"
    TabIndex = 31
    MaxLength = 6
  End
  Begin CommandButton comExit
    Caption = "Exit"
    Left = 5520
    Top = 2040
    Width = 1575
    Height = 495
    TabIndex = 13
  End
  Begin CommandButton comWrite
    Caption = "Write"
    Left = 4560
    Top = 4440
    Width = 1215
    Height = 495
    Visible = 0   'False
    TabIndex = 12
  End
  Begin CommandButton comRead
    Caption = "Read"
    Left = 3120
    Top = 4440
    Width = 1335
    Height = 495
    Visible = 0   'False
    TabIndex = 11
  End
  Begin Frame Frame1
    Caption = "Card Information"
    Left = 120
    Top = 2655
    Width = 7095
    Height = 2295
    Visible = 0   'False
    TabIndex = 10
    Begin TextBox txtET
      Left = 4200
      Top = 1680
      Width = 1575
      Height = 375
      Text = "0708191500"
      TabIndex = 29
      MaxLength = 10
    End
    Begin TextBox txtGN
      Left = 4200
      Top = 1200
      Width = 1575
      Height = 375
      Text = "1"
      TabIndex = 28
    End
    Begin TextBox txtMC
      Left = 4200
      Top = 720
      Width = 1575
      Height = 375
      Text = "00000000"
      TabIndex = 27
      MaxLength = 8
    End
    Begin TextBox txtLC
      Left = 4200
      Top = 240
      Width = 1575
      Height = 375
      Text = "000001"
      TabIndex = 26
      MaxLength = 6
    End
    Begin TextBox txtBT
      Left = 1680
      Top = 1680
      Width = 1575
      Height = 375
      Text = "0708181500"
      TabIndex = 25
      MaxLength = 10
    End
    Begin TextBox txtGI
      Left = 1680
      Top = 1200
      Width = 1575
      Height = 375
      Text = "1"
      TabIndex = 24
    End
    Begin TextBox txtNC
      Left = 1680
      Top = 720
      Width = 1575
      Height = 375
      Text = "0000"
      TabIndex = 23
      MaxLength = 4
    End
    Begin TextBox txtCN
      Left = 1680
      Top = 240
      Width = 1575
      Height = 375
      Text = "1"
      TabIndex = 22
    End
    Begin Label lblET
      Caption = "ET:"
      Left = 3600
      Top = 1800
      Width = 855
      Height = 255
      TabIndex = 21
    End
    Begin Label lblGN
      Caption = "GN:"
      Left = 3600
      Top = 1320
      Width = 975
      Height = 255
      TabIndex = 20
    End
    Begin Label lblMC
      Caption = "MC:"
      Left = 3600
      Top = 840
      Width = 855
      Height = 255
      TabIndex = 19
    End
    Begin Label lblLC
      Caption = "LC:"
      Left = 3600
      Top = 360
      Width = 735
      Height = 255
      TabIndex = 18
    End
    Begin Label lblBT
      Caption = "BT:"
      Left = 960
      Top = 1800
      Width = 615
      Height = 255
      TabIndex = 17
    End
    Begin Label lblGI
      Caption = "GI:"
      Left = 960
      Top = 1320
      Width = 495
      Height = 255
      TabIndex = 16
    End
    Begin Label lblNC
      Caption = "NC:"
      Left = 960
      Top = 840
      Width = 495
      Height = 255
      TabIndex = 15
    End
    Begin Label lblCN
      Caption = "CN:"
      Left = 960
      Top = 360
      Width = 495
      Height = 255
      TabIndex = 14
    End
  End
  Begin Frame freSystemSetting
    Caption = "System Setting"
    Left = 3720
    Top = 120
    Width = 3495
    Height = 1815
    TabIndex = 5
    Begin TextBox txtSectorNo
      Left = 1680
      Top = 360
      Width = 1695
      Height = 285
      Enabled = 0   'False
      Text = "0"
      TabIndex = 9
      MaxLength = 6
    End
    Begin TextBox txtSystemPassword
      Left = 1680
      Top = 840
      Width = 1695
      Height = 285
      TabIndex = 8
      MaxLength = 6
    End
    Begin Label lblSectorNo
      Caption = "System Pwd No:"
      Left = 120
      Top = 840
      Width = 1455
      Height = 255
      TabIndex = 7
    End
    Begin Label lblsystemPwd
      Caption = "Sector No:"
      Left = 120
      Top = 360
      Width = 1455
      Height = 255
      TabIndex = 6
    End
  End
  Begin Frame freconnection
    Caption = "Connection Setting"
    Left = 120
    Top = 120
    Width = 3495
    Height = 1815
    TabIndex = 0
    Begin ComboBox cmbDP
      Left = 1560
      Top = 840
      Width = 1695
      Height = 300
      Text = "COM1"
      TabIndex = 4
      List = "frmLockGodrejSettings.frx":0
      ItemData = "frmLockGodrejSettings.frx":1C
    End
    Begin ComboBox cmbDM
      Left = 1560
      Top = 360
      Width = 1695
      Height = 315
      Text = "ZYMSR100"
      TabIndex = 3
      List = "frmLockGodrejSettings.frx":2C
      ItemData = "frmLockGodrejSettings.frx":59
    End
    Begin Label lblRepeatTimes
      Caption = "Repeat Times:"
      Left = 240
      Top = 1320
      Width = 1215
      Height = 255
      TabIndex = 30
    End
    Begin Label lblPortNo
      Caption = "Port No:"
      Left = 240
      Top = 840
      Width = 735
      Height = 255
      TabIndex = 2
    End
    Begin Label lblReaderModel
      Caption = "Reader Model:"
      Left = 240
      Top = 360
      Width = 1215
      Height = 255
      TabIndex = 1
    End
  End
End

Attribute VB_Name = "frmLockGodrejSettings"


Private Sub comExit_Click() 'E189D8
  'Data Table: 4CBC94
  loc_E189CD: Me.Global.Unload Me
  loc_E189D5: Exit Sub
End Sub

Private Sub comSave_Click() '1180C40
  'Data Table: 4CBC94
  Dim unk_4CBC98 As Connection15
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim var_A8 As String
  Dim var_F0 As String
  Dim var_134 As Variant
  Dim var_104 As Variant
  loc_11808C0: On Error Goto loc_1180C24
  loc_11808CC: unk_4CBC98.BeginTrans var_94
  loc_11808D3: var_86 = &HFF
  loc_11808E2: var_94 = Me.Recordset15.RecordCount
  loc_11808F0: If (var_94 = 0) Then
  loc_1180900:   var_9E = Me.cmbDM.ListIndex
  loc_1180912:   var_B6 = Me.cmbDP.ListIndex
  loc_1180925:   var_A8 = "Insert into DoorLockEnviro " & " (ReaderType,ReaderPort,CardSector,AlarmCount,HotelID,HotelPwd,LogSite_Code) " & " values ("
  loc_1180938:   var_9E = Me.cmbDM.ItemData
  loc_1180960:   var_B6 = Me.cmbDP.ItemData
  loc_11809C9:   var_134 = CVar(var_C0 & CStr(var_C0) & "," & CStr(Val(Me.txtSectorNo.Text)) & "," & CStr(Val(Me.txtRepeatTimes.Text)) & ",'',") 'String
  loc_11809D0:   var_104 = CVar(Me.txtSystemPassword) 'Address
  loc_11809E2:   Proc_6_17_EAAE40(var_124, Trim(var_104), var_134)
  loc_1180A02:   Proc_6_17_EAAE40(var_184, MemVar_1F95078, var_94 & CStr(var_94) & "," & var_124 & ",")
  loc_1180A76:   unk_4CBC98.Execute CStr(var_A8 & var_184 & ")"), var_104, -1
  loc_1180A84: Else
  loc_1180A8B:   Set var_9C = Me.cmbDM
  loc_1180A91:   var_9E = var_9C.ListIndex
  loc_1180AA3:   var_B6 = Me.cmbDP.ListIndex
  loc_1180AC2:   var_9E = Me.cmbDM.ItemData
  loc_1180AEA:   var_B6 = Me.cmbDP.ItemData
  loc_1180B4C:   var_F0 = var_C0 & CStr(var_C0) & ",CardSector=" & CStr(Val(Me.txtSectorNo.Text)) & ",AlarmCount=" & CStr(Val(Me.txtRepeatTimes.Text))
  loc_1180B5A:   var_104 = CVar(Me.txtSystemPassword) 'Address
  loc_1180B6C:   Proc_6_17_EAAE40(var_124, Trim(var_104), CVar(var_F0 & ",HotelID='',HotelPwd="), var_94 & CStr(var_94) & ",ReaderPort=")
  loc_1180B8C:   Proc_6_17_EAAE40(var_184, MemVar_1F95078, "Update DoorLockEnviro Set " & " ReaderType=" & var_124 & " Where LogSite_Code=")
  loc_1180BF3:   unk_4CBC98.Execute CStr(var_9C & var_184), var_104, -1
  loc_1180BFE: End If
  loc_1180C04: unk_4CBC98.CommitTrans
  loc_1180C0B: var_86 = 0
  loc_1180C11: var_9C = Me
  loc_1180C1B: Me.Global.Unload var_9C
  loc_1180C23: Exit Sub
  loc_1180C24: ' Referenced from: 11808C0
  loc_1180C2A: If (var_86 = &HFF) Then
  loc_1180C33:   unk_4CBC98.RollbackTrans
  loc_1180C38: End If
  loc_1180C38: Proc_6_60_E63754(var_86, var_9C)
  loc_1180C3D: Exit Sub
End Sub

Private Sub Form_Load() 'E88D5C
  'Data Table: 4CBC94
  loc_E88CEC: On Error Goto loc_E88D56
  loc_E88CF9: Set global_52 = New 
  loc_E88D0E: Me.Recordset15.CursorLocation = 3
  loc_E88D45: Me.Recordset15.Open CVar("Select * From DoorLockEnviro WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "')"), CVar(MemVar_1F95044), 2
  loc_E88D50: Call Proc_335_4_1054FAC(3)
  loc_E88D55: Exit Sub
  loc_E88D56: ' Referenced from: E88CEC
  loc_E88D56: Proc_6_60_E63754(-1)
  loc_E88D5B: Exit Sub
End Sub

Private Sub Form_Initialize() 'E33248
  'Data Table: 4CBC94
  loc_E33228: Me.cmbDM.ListIndex = 0
  loc_E3323C: Me.cmbDP.ListIndex = 0
  loc_E33244: Exit Sub
End Sub

Public Sub Proc_335_4_1054FAC
  'Data Table: 4CBC94
  Dim var_BC As Variant
  Dim var_EC As Variant
  loc_1054D48: On Error Goto loc_1054FA6
  loc_1054D65: If (Me.Recordset15.RecordCount > 0) Then
  loc_1054D8D:   var_BC = CVar(Me.Recordset15.Fields.Item("ReaderType")) 'Address
  loc_1054D94:   Proc_6_39_E7D3A0(var_CC)
  loc_1054DA1:   var_EC = (var_CC - 1)
  loc_1054DB0:   Me.cmbDM.ListIndex = CInt(var_EC)
  loc_1054DEF:   Proc_6_39_E7D3A0(var_CC, CVar(Me.Recordset15.Fields.Item("Readerport")))
  loc_1054DFC:   var_EC = (var_CC - 1)
  loc_1054E0B:   Me.cmbDP.ListIndex = CInt(var_EC)
  loc_1054E52:   Me.cmbDM.Text = Me.cmbDM.List(Me.cmbDM.ListIndex)
  loc_1054E97:   Me.cmbDP.Text = Me.cmbDP.List(Me.cmbDP.ListIndex)
  loc_1054ED4:   Proc_6_39_E7D3A0(var_CC, CVar(Me.Recordset15.Fields.Item("CardSector")))
  loc_1054EEA:   Me.txtSectorNo.Text = CStr(var_CC)
  loc_1054F2C:   Proc_6_39_E7D3A0(var_CC, CVar(Me.Recordset15.Fields.Item("AlarmCount")))
  loc_1054F42:   Me.txtRepeatTimes.Text = CStr(var_CC)
  loc_1054F7D:   var_BC = CVar(Me.Recordset15.Fields.Item("HotelPwd")) 'Address
  loc_1054F93:   Me.txtSystemPassword.Text = Proc_6_38_E69628(var_BC)
  loc_1054FA5: End If
  loc_1054FA5: Exit Sub
  loc_1054FA6: ' Referenced from: 1054D48
  loc_1054FA6: Proc_6_60_E63754(var_BC)
  loc_1054FAB: Exit Sub
End Sub
