VERSION 5.00
Begin VB.Form frmGodrejLockSettings
  Caption = "Godrej Lock Settings"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 7920
  ClientHeight = 3585
  LockControls = -1  'True
  StartUpPosition = 1 'CenterOwner
  Begin CommandButton CmdSaveExit
    Caption = "Save && Exit"
    Left = 4155
    Top = 2880
    Width = 1335
    Height = 495
    TabIndex = 77
  End
  Begin CheckBox ckbLift
    Caption = "Lift Information"
    Left = 255
    Top = 5640
    Width = 1815
    Height = 255
    TabIndex = 76
  End
  Begin CheckBox ckbPs
    Caption = "PowerSwitch Content"
    Left = 240
    Top = 7650
    Width = 2055
    Height = 255
    TabIndex = 75
  End
  Begin CheckBox ckbData
    Caption = "Data"
    Left = 240
    Top = 9435
    Width = 735
    Height = 255
    TabIndex = 74
  End
  Begin Frame Frame4
    Caption = "Frame4"
    Left = 120
    Top = 9480
    Width = 7695
    Height = 975
    TabIndex = 70
    Begin TextBox txtData
      Left = 840
      Top = 360
      Width = 6735
      Height = 270
      TabIndex = 72
    End
    Begin Label Label19
      Caption = "Data:"
      Left = 120
      Top = 360
      Width = 855
      Height = 255
      TabIndex = 71
    End
  End
  Begin Frame Frame3
    Caption = "Frame3"
    Left = 120
    Top = 7680
    Width = 7695
    Height = 1695
    TabIndex = 57
    Begin TextBox txtPWET
      Left = 5640
      Top = 1200
      Width = 1935
      Height = 270
      Text = "100313120000"
      TabIndex = 69
      MaxLength = 12
    End
    Begin TextBox txtGuestName
      Left = 5640
      Top = 720
      Width = 1935
      Height = 270
      Text = "abcdefgh"
      TabIndex = 68
    End
    Begin TextBox txtPWLC
      Left = 5640
      Top = 240
      Width = 1935
      Height = 270
      Text = "000001"
      TabIndex = 67
    End
    Begin TextBox txtPWBT
      Left = 1560
      Top = 1200
      Width = 1935
      Height = 270
      Text = "100312120000"
      TabIndex = 66
    End
    Begin TextBox txtGuestSex
      Left = 1560
      Top = 720
      Width = 1935
      Height = 270
      Text = "0"
      TabIndex = 65
    End
    Begin TextBox txtPWCN
      Left = 1560
      Top = 240
      Width = 1935
      Height = 270
      Text = "1"
      TabIndex = 64
    End
    Begin Label Label18
      Caption = "BeginTime:"
      Left = 4200
      Top = 1200
      Width = 975
      Height = 255
      TabIndex = 63
    End
    Begin Label Label17
      Caption = "GuestName:"
      Left = 4200
      Top = 720
      Width = 855
      Height = 255
      TabIndex = 62
    End
    Begin Label Label16
      Caption = "DoorID:"
      Left = 4200
      Top = 240
      Width = 975
      Height = 255
      TabIndex = 61
    End
    Begin Label Label15
      Caption = "BeginTime:"
      Left = 120
      Top = 1200
      Width = 975
      Height = 255
      TabIndex = 60
    End
    Begin Label Label14
      Caption = "GuestSex:"
      Left = 120
      Top = 720
      Width = 855
      Height = 255
      TabIndex = 59
    End
    Begin Label Label13
      Caption = "CardNo:"
      Left = 120
      Top = 360
      Width = 615
      Height = 255
      TabIndex = 58
    End
  End
  Begin Frame Frame2
    Caption = "Lift Information"
    Left = 120
    Top = 5655
    Width = 7095
    Height = 1935
    TabIndex = 32
    Begin TextBox Text7
      Left = 4080
      Top = 720
      Width = 1575
      Height = 270
      Text = "97"
      TabIndex = 42
      MaxLength = 4
    End
    Begin TextBox Text6
      Left = 4080
      Top = 1080
      Width = 1575
      Height = 270
      Text = "97"
      TabIndex = 41
    End
    Begin TextBox Text5
      Left = 1200
      Top = 1080
      Width = 1575
      Height = 270
      Text = "96"
      TabIndex = 40
      MaxLength = 8
    End
    Begin TextBox Text4
      Left = 1200
      Top = 1440
      Width = 4455
      Height = 270
      Text = "FFFF"
      TabIndex = 39
    End
    Begin TextBox Text3
      Left = 1200
      Top = 360
      Width = 1575
      Height = 270
      Text = "1"
      TabIndex = 35
    End
    Begin TextBox Text2
      Left = 1200
      Top = 720
      Width = 1575
      Height = 270
      Text = "0708181500"
      TabIndex = 34
      MaxLength = 10
    End
    Begin TextBox Text1
      Left = 4080
      Top = 360
      Width = 1575
      Height = 270
      Text = "0708191500"
      TabIndex = 33
      MaxLength = 10
    End
    Begin Label Label7
      Caption = "MaxAddr:"
      Left = 3000
      Top = 720
      Width = 855
      Height = 255
      TabIndex = 46
    End
    Begin Label Label6
      Caption = "EndAddr:"
      Left = 3000
      Top = 1080
      Width = 855
      Height = 255
      TabIndex = 45
    End
    Begin Label Label5
      Caption = "BeginAddr:"
      Left = 240
      Top = 1080
      Width = 855
      Height = 255
      TabIndex = 44
    End
    Begin Label Label4
      Caption = "Data:"
      Left = 240
      Top = 1440
      Width = 975
      Height = 255
      TabIndex = 43
    End
    Begin Label Label3
      Caption = "CN:"
      Left = 360
      Top = 360
      Width = 495
      Height = 255
      TabIndex = 38
    End
    Begin Label Label2
      Caption = "BT:"
      Left = 360
      Top = 720
      Width = 615
      Height = 255
      TabIndex = 37
    End
    Begin Label Label1
      Caption = "ET:"
      Left = 3000
      Top = 360
      Width = 855
      Height = 255
      TabIndex = 36
    End
  End
  Begin TextBox txtRepeatTimes
    Left = 1800
    Top = 2160
    Width = 1695
    Height = 285
    Text = "1"
    TabIndex = 31
    MaxLength = 6
  End
  Begin CommandButton comExit
    Caption = "Exit"
    Left = 5850
    Top = 2865
    Width = 1335
    Height = 495
    TabIndex = 13
  End
  Begin CommandButton comWrite
    Caption = "Write"
    Left = 7350
    Top = 4755
    Width = 1320
    Height = 495
    TabIndex = 12
  End
  Begin CommandButton comRead
    Caption = "Read"
    Left = 7335
    Top = 4170
    Width = 1335
    Height = 540
    TabIndex = 11
  End
  Begin Frame Frame1
    Caption = "Card Information"
    Left = 120
    Top = 3660
    Width = 7095
    Height = 1935
    TabIndex = 10
    Begin TextBox txtET
      Left = 4200
      Top = 1440
      Width = 1575
      Height = 270
      Text = "0708191500"
      TabIndex = 29
      MaxLength = 10
    End
    Begin TextBox txtGN
      Left = 4200
      Top = 1080
      Width = 1575
      Height = 270
      Text = "1"
      TabIndex = 28
    End
    Begin TextBox txtMC
      Left = 4200
      Top = 720
      Width = 1575
      Height = 270
      Text = "00000000"
      TabIndex = 27
      MaxLength = 8
    End
    Begin TextBox txtLC
      Left = 4200
      Top = 360
      Width = 1575
      Height = 270
      Text = "000001"
      TabIndex = 26
      MaxLength = 6
    End
    Begin TextBox txtBT
      Left = 1080
      Top = 1440
      Width = 1575
      Height = 270
      Text = "0708181500"
      TabIndex = 25
      MaxLength = 10
    End
    Begin TextBox txtGI
      Left = 1080
      Top = 1080
      Width = 1575
      Height = 270
      Text = "1"
      TabIndex = 24
    End
    Begin TextBox txtNC
      Left = 1080
      Top = 720
      Width = 1575
      Height = 270
      Text = "0000"
      TabIndex = 23
      MaxLength = 4
    End
    Begin TextBox txtCN
      Left = 1080
      Top = 360
      Width = 1575
      Height = 270
      Text = "1"
      TabIndex = 22
    End
    Begin Label lblET
      Caption = "ET:"
      Left = 3240
      Top = 1440
      Width = 855
      Height = 255
      TabIndex = 21
    End
    Begin Label lblGN
      Caption = "GN:"
      Left = 3240
      Top = 1080
      Width = 975
      Height = 255
      TabIndex = 20
    End
    Begin Label lblMC
      Caption = "MC:"
      Left = 3240
      Top = 720
      Width = 855
      Height = 255
      TabIndex = 19
    End
    Begin Label lblLC
      Caption = "LC:"
      Left = 3240
      Top = 360
      Width = 735
      Height = 255
      TabIndex = 18
    End
    Begin Label lblBT
      Caption = "BT:"
      Left = 360
      Top = 1440
      Width = 615
      Height = 255
      TabIndex = 17
    End
    Begin Label lblGI
      Caption = "GI:"
      Left = 360
      Top = 1080
      Width = 495
      Height = 255
      TabIndex = 16
    End
    Begin Label lblNC
      Caption = "NC:"
      Left = 360
      Top = 720
      Width = 495
      Height = 255
      TabIndex = 15
    End
    Begin Label lblCN
      Caption = "CN:"
      Left = 360
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
    Width = 4095
    Height = 2535
    TabIndex = 5
    Begin TextBox txtDataSectorNo
      Left = 2040
      Top = 2160
      Width = 1935
      Height = 270
      Text = "3"
      TabIndex = 56
    End
    Begin TextBox txtDataPWD
      Left = 2040
      Top = 1800
      Width = 1935
      Height = 270
      Text = "FFFFFFFFFFFF"
      TabIndex = 55
    End
    Begin TextBox txtPSSectorNo
      Left = 2040
      Top = 1440
      Width = 1935
      Height = 270
      Text = "15"
      TabIndex = 54
    End
    Begin TextBox txtPSW
      Left = 2040
      Top = 1080
      Width = 1935
      Height = 270
      Text = "FFFFFFFFFFFF"
      TabIndex = 53
    End
    Begin TextBox txtSectorNo
      Left = 2040
      Top = 720
      Width = 1935
      Height = 285
      Text = "0"
      TabIndex = 9
      MaxLength = 2
    End
    Begin TextBox txtSystemPassword
      Left = 2040
      Top = 360
      Width = 1935
      Height = 285
      TabIndex = 8
      MaxLength = 6
    End
    Begin Label Label12
      Caption = "DataSectorNo:"
      Left = 120
      Top = 2160
      Width = 1215
      Height = 255
      TabIndex = 52
    End
    Begin Label Label11
      Caption = "DataSectorPwd:"
      Left = 120
      Top = 1800
      Width = 1215
      Height = 255
      TabIndex = 51
    End
    Begin Label Label10
      Caption = "PowerSwitchSectorNo:"
      Left = 120
      Top = 1440
      Width = 1815
      Height = 255
      TabIndex = 50
    End
    Begin Label Label9
      Caption = "PowerSwitchPwd:"
      Left = 120
      Top = 1080
      Width = 1335
      Height = 255
      TabIndex = 49
    End
    Begin Label lblSectorNo
      Caption = "Sector No:"
      Left = 120
      Top = 720
      Width = 1095
      Height = 255
      TabIndex = 7
    End
    Begin Label lblsystemPwd
      Caption = "System Password:"
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
    Height = 2535
    TabIndex = 0
    Begin ComboBox cmbPM
      Left = 1680
      Top = 1500
      Width = 1695
      Height = 300
      Text = "8602-1M-57BA"
      TabIndex = 48
      List = "frmGodrejLockSettings.frx":0
      ItemData = "frmGodrejLockSettings.frx":20
    End
    Begin ComboBox cmbDP
      Left = 1680
      Top = 930
      Width = 1695
      Height = 300
      Text = "COM1"
      TabIndex = 4
      List = "frmGodrejLockSettings.frx":2A
      ItemData = "frmGodrejLockSettings.frx":46
    End
    Begin ComboBox cmbDM
      Left = 1680
      Top = 360
      Width = 1695
      Height = 300
      Text = "RW-21"
      TabIndex = 3
      List = "frmGodrejLockSettings.frx":56
      ItemData = "frmGodrejLockSettings.frx":80
    End
    Begin Label Label8
      Caption = "PowerSwitchType:"
      Left = 120
      Top = 1500
      Width = 1455
      Height = 255
      TabIndex = 47
    End
    Begin Label lblRepeatTimes
      Caption = "Repeat Times:"
      Left = 120
      Top = 2040
      Width = 1215
      Height = 255
      TabIndex = 30
    End
    Begin Label lblPortNo
      Caption = "Port No:"
      Left = 120
      Top = 930
      Width = 735
      Height = 255
      TabIndex = 2
    End
    Begin Label lblReaderModel
      Caption = "Reader Model:"
      Left = 120
      Top = 360
      Width = 1215
      Height = 255
      TabIndex = 1
    End
  End
  Begin Label lReturnValue
    Left = 7350
    Top = 3840
    Width = 1335
    Height = 255
    TabIndex = 73
  End
End

Attribute VB_Name = "frmGodrejLockSettings"


Private Sub comExit_Click() 'E1697C
  'Data Table: 58053C
  loc_E16971: Me.Global.Unload Me
  loc_E16979: Exit Sub
End Sub

Private Sub CmdSaveExit_Click() '118106C
  'Data Table: 58053C
  Dim unk_58053D As Connection15
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim var_A8 As String
  Dim var_F0 As String
  Dim var_134 As Variant
  Dim var_104 As Variant
  loc_1180CEC: On Error Goto loc_1181050
  loc_1180CF8: unk_58053D.BeginTrans var_94
  loc_1180CFF: var_86 = &HFF
  loc_1180D0E: var_94 = Me.Recordset15.RecordCount
  loc_1180D1C: If (var_94 = 0) Then
  loc_1180D2C:   var_9E = Me.cmbDM.ListIndex
  loc_1180D3E:   var_B6 = Me.cmbDP.ListIndex
  loc_1180D51:   var_A8 = "Insert into DoorLockEnviro " & " (ReaderType,ReaderPort,CardSector,AlarmCount,HotelID,HotelPwd,LogSite_Code) " & " values ("
  loc_1180D64:   var_9E = Me.cmbDM.ItemData
  loc_1180D8C:   var_B6 = Me.cmbDP.ItemData
  loc_1180DF5:   var_134 = CVar(var_C0 & CStr(var_C0) & "," & CStr(Val(Me.txtSectorNo.Text)) & "," & CStr(Val(Me.txtRepeatTimes.Text)) & ",'',") 'String
  loc_1180DFC:   var_104 = CVar(Me.txtSystemPassword) 'Address
  loc_1180E0E:   Proc_6_17_EAAE40(var_124, Trim(var_104), var_134)
  loc_1180E2E:   Proc_6_17_EAAE40(var_184, MemVar_1F95078, var_94 & CStr(var_94) & "," & var_124 & ",")
  loc_1180EA2:   unk_58053D.Execute CStr(var_A8 & var_184 & ")"), var_104, -1
  loc_1180EB0: Else
  loc_1180EB7:   Set var_9C = Me.cmbDM
  loc_1180EBD:   var_9E = var_9C.ListIndex
  loc_1180ECF:   var_B6 = Me.cmbDP.ListIndex
  loc_1180EEE:   var_9E = Me.cmbDM.ItemData
  loc_1180F16:   var_B6 = Me.cmbDP.ItemData
  loc_1180F78:   var_F0 = var_C0 & CStr(var_C0) & ",CardSector=" & CStr(Val(Me.txtSectorNo.Text)) & ",AlarmCount=" & CStr(Val(Me.txtRepeatTimes.Text))
  loc_1180F86:   var_104 = CVar(Me.txtSystemPassword) 'Address
  loc_1180F98:   Proc_6_17_EAAE40(var_124, Trim(var_104), CVar(var_F0 & ",HotelID='',HotelPwd="), var_94 & CStr(var_94) & ",ReaderPort=")
  loc_1180FB8:   Proc_6_17_EAAE40(var_184, MemVar_1F95078, "Update DoorLockEnviro Set " & " ReaderType=" & var_124 & " Where LogSite_Code=")
  loc_118101F:   unk_58053D.Execute CStr(var_9C & var_184), var_104, -1
  loc_118102A: End If
  loc_1181030: unk_58053D.CommitTrans
  loc_1181037: var_86 = 0
  loc_118103D: var_9C = Me
  loc_1181047: Me.Global.Unload var_9C
  loc_118104F: Exit Sub
  loc_1181050: ' Referenced from: 1180CEC
  loc_1181056: If (var_86 = &HFF) Then
  loc_118105F:   unk_58053D.RollbackTrans
  loc_1181064: End If
  loc_1181064: Proc_6_60_E63754(var_86, var_9C)
  loc_1181069: Exit Sub
End Sub

Private Sub Form_Load() 'E8B85C
  'Data Table: 58053C
  loc_E8B7EC: On Error Goto loc_E8B856
  loc_E8B7F9: Set global_52 = New 
  loc_E8B80E: Me.Recordset15.CursorLocation = 3
  loc_E8B845: Me.Recordset15.Open CVar("Select * From DoorLockEnviro WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "')"), CVar(MemVar_1F95044), 2
  loc_E8B850: Call Proc_337_4_1055A8C(3)
  loc_E8B855: Exit Sub
  loc_E8B856: ' Referenced from: E8B7EC
  loc_E8B856: Proc_6_60_E63754(-1)
  loc_E8B85B: Exit Sub
End Sub

Private Sub Form_Initialize() 'E59838
  'Data Table: 58053C
  loc_E59804: Me.cmbDM.ListIndex = 0
  loc_E59818: Me.cmbDP.ListIndex = 0
  loc_E5982C: Me.cmbPM.ListIndex = 0
  loc_E59834: Exit Sub
End Sub

Public Sub Proc_337_4_1055A8C
  'Data Table: 58053C
  Dim var_BC As Variant
  Dim var_EC As Variant
  loc_1055828: On Error Goto loc_1055A86
  loc_1055845: If (Me.Recordset15.RecordCount > 0) Then
  loc_105586D:   var_BC = CVar(Me.Recordset15.Fields.Item("ReaderType")) 'Address
  loc_1055874:   Proc_6_39_E7D3A0(var_CC)
  loc_1055881:   var_EC = (var_CC - 1)
  loc_1055890:   Me.cmbDM.ListIndex = CInt(var_EC)
  loc_10558CF:   Proc_6_39_E7D3A0(var_CC, CVar(Me.Recordset15.Fields.Item("Readerport")))
  loc_10558DC:   var_EC = (var_CC - 1)
  loc_10558EB:   Me.cmbDP.ListIndex = CInt(var_EC)
  loc_1055932:   Me.cmbDM.Text = Me.cmbDM.List(Me.cmbDM.ListIndex)
  loc_1055977:   Me.cmbDP.Text = Me.cmbDP.List(Me.cmbDP.ListIndex)
  loc_10559B4:   Proc_6_39_E7D3A0(var_CC, CVar(Me.Recordset15.Fields.Item("CardSector")))
  loc_10559CA:   Me.txtSectorNo.Text = CStr(var_CC)
  loc_1055A0C:   Proc_6_39_E7D3A0(var_CC, CVar(Me.Recordset15.Fields.Item("AlarmCount")))
  loc_1055A22:   Me.txtRepeatTimes.Text = CStr(var_CC)
  loc_1055A5D:   var_BC = CVar(Me.Recordset15.Fields.Item("HotelPwd")) 'Address
  loc_1055A73:   Me.txtSystemPassword.Text = Proc_6_38_E69628(var_BC)
  loc_1055A85: End If
  loc_1055A85: Exit Sub
  loc_1055A86: ' Referenced from: 1055828
  loc_1055A86: Proc_6_60_E63754(var_BC)
  loc_1055A8B: Exit Sub
End Sub
