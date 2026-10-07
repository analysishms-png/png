VERSION 5.00
Begin VB.Form FaTDSChal
  Caption = "T.D.S.Challan Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaTDSChal.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 165
  ClientTop = 450
  ClientWidth = 11415
  ClientHeight = 6525
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11415
    Height = 450
    TabIndex = 28
  End
  Begin DataGrid DGVType
    Left = 10410
    Top = 5130
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGParty
    Left = 9990
    Top = 4710
    Width = 5100
    Height = 2670
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin TextBox Txt
    Index = 9
    ForeColor = &HC00000&
    Left = 6315
    Top = 1575
    Width = 3840
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 40
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
  Begin CommandButton btsadd
    Left = 10185
    Top = 1455
    Width = 390
    Height = 420
    TabIndex = 23
    Picture = "FaTDSChal.frx":442
    DisabledPicture = "FaTDSChal.frx":884
    ToolTipText = "Add T.D.S. Entries"
    Style = 1
  End
  Begin TextBox Txt
    Index = 8
    ForeColor = &HC00000&
    Left = 6315
    Top = 1260
    Width = 1080
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
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
    Index = 7
    ForeColor = &HC00000&
    Left = 8925
    Top = 1260
    Width = 1230
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 6
    ForeColor = &HC00000&
    Left = 12240
    Top = 1440
    Width = 2040
    Height = 285
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 21
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
    Index = 5
    ForeColor = &HC00000&
    Left = 1965
    Top = 945
    Width = 3075
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 50
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
    Left = 1800
    Top = 5670
    Width = 1230
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
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
    Left = 8925
    Top = 945
    Width = 1230
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 13
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
    Left = 1965
    Top = 1575
    Width = 1125
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
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
    Left = 1965
    Top = 1260
    Width = 3075
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 50
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
    Index = 0
    ForeColor = &HC00000&
    Left = 6315
    Top = 945
    Width = 1080
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
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
    Left = 585
    Top = 1905
    Width = 15075
    Height = 3645
    TabIndex = 8
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1890
    Top = 6435
    Width = 2880
    Height = 255
    TabIndex = 27
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5265
    Top = 6435
    Width = 2790
    Height = 285
    TabIndex = 26
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 25
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
  Begin Label Label1
    Caption = "Bank Name (TDS Deposited)"
    Index = 9
    ForeColor = &HC00000&
    Left = 3600
    Top = 1590
    Width = 2670
    Height = 240
    TabIndex = 24
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
    Caption = "Cheque No."
    Index = 8
    ForeColor = &HC00000&
    Left = 5130
    Top = 1275
    Width = 1110
    Height = 240
    TabIndex = 22
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
    Caption = "Cheque Date"
    Index = 7
    ForeColor = &HC00000&
    Left = 7650
    Top = 1275
    Width = 1230
    Height = 240
    TabIndex = 21
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
    Caption = "DOC ID"
    Index = 3
    ForeColor = &HFF&
    Left = 11580
    Top = 1440
    Width = 585
    Height = 210
    Visible = 0   'False
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Challan Type"
    Index = 2
    ForeColor = &HC00000&
    Left = 540
    Top = 960
    Width = 1260
    Height = 240
    TabIndex = 17
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 12810
    Top = 2310
    Width = 645
    Height = 195
    Visible = 0   'False
    TabIndex = 16
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
  Begin Label Label1
    Caption = "Net Amount"
    Index = 6
    ForeColor = &HFF&
    Left = 630
    Top = 5685
    Width = 1125
    Height = 195
    TabIndex = 14
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
  Begin Label Label1
    Caption = "Challan Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 7650
    Top = 975
    Width = 1230
    Height = 240
    TabIndex = 13
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
    Caption = "Month && Year"
    Index = 1
    ForeColor = &HC00000&
    Left = 540
    Top = 1590
    Width = 1275
    Height = 240
    TabIndex = 12
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
    Caption = "Cash/Bank A/C"
    Index = 5
    ForeColor = &HC00000&
    Left = 525
    Top = 1275
    Width = 1395
    Height = 240
    TabIndex = 11
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
    Caption = "Challan No."
    Index = 4
    ForeColor = &HC00000&
    Left = 5145
    Top = 960
    Width = 1110
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
End

Attribute VB_Name = "FaTDSChal"


Private Sub TopCtrl1_UnknownEvent_A 'FA6780
  'Data Table: 487AD4
  Dim var_8C As Variant
  Dim var_D0 As Integer
  Dim var_88 As String
  Dim var_98 As String
  Dim unk_487AE7 As Connection15
  Dim var_C0 As Variant
  Dim var_D4 As Field20
  Dim var_EC As TextBox
  loc_FA6614: On Error Goto loc_FA6758
  loc_FA663A: Call Proc_190_29_E9C168(Proc_5_1_100EC1C("ADD", Me))
  loc_FA6645: Call Proc_190_28_F18278(global_72)
  loc_FA6656: Me.btsadd.Visible = False
  loc_FA6664: var_D0 = 0
  loc_FA668F: var_98 = "Select Description From Voucher_Type Where NCat='TDSCH' AND SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_FA669F: unk_487AE7.Execute var_98 & "'", var_BC, -1
  loc_FA66A7: var_8C = var_8C.Fields
  loc_FA66AF: var_D0 = var_C0.Item(var_C0)
  loc_FA66B7: var_D4 = var_D4.Value
  loc_FA66CE: Set var_E8 = Me.Txt
  loc_FA66D4: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_EC)
  loc_FA66DC: var_EC.Text = CStr(var_E4)
  loc_FA6707: var_88 = CStr(MemVar_1F950EC)
  loc_FA6715: Set var_8C = Me.Txt
  loc_FA671B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C0)
  loc_FA6723: var_C0.Text = var_88
  loc_FA673D: Set var_8C = Me.Txt
  loc_FA6743: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_C0)
  loc_FA674B: var_C0.SetFocus
  loc_FA6757: Exit Sub
  loc_FA6758: ' Referenced from: FA6614
  loc_FA675E: Call 0.Method_arg_50 (var_88)
  loc_FA6773: Proc_183_57_104B0BC(var_88, "TopCtrl1_eAdd")
  loc_FA677F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'ECEF7C
  'Data Table: 487AD4
  loc_ECEEE0: On Error Goto loc_ECEF51
  loc_ECEF1A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_ECEF32:   var_108 = "INI"
  loc_ECEF40:   Call Proc_190_29_E9C168(Proc_5_1_100EC1C(var_108, Me))
  loc_ECEF4B:   Call Proc_190_31_153F0F8(global_72)
  loc_ECEF50: End If
  loc_ECEF50: Exit Sub
  loc_ECEF51: ' Referenced from: ECEEE0
  loc_ECEF57: Call 0.Method_arg_50 (var_108)
  loc_ECEF5F: var_118 = "TopCtrl1_eCancel"
  loc_ECEF6C: Proc_183_57_104B0BC(var_108)
  loc_ECEF78: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11BA188
  'Data Table: 487AD4
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As String
  Dim unk_487AE7 As Connection15
  Dim var_130 As Variant
  Dim var_134 As String
  Dim var_98 As Recordset15
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_13C As Fields15
  Dim var_154 As Variant
  loc_11B9D5C: On Error Goto loc_11BA153
  loc_11B9D68: var_A0 = Me.RecordCount
  loc_11B9D76: If (var_A0 > 0) Then
  loc_11B9D9E:   For var_B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_B8 'Integer
  loc_11B9DA8:     var_C8 = CVar(CLng(var_9A)) 'Long
  loc_11B9DB0:     var_E8 = CVar(CLng(&HC)) 'Long
  loc_11B9DCA:     var_FC = CStr(Me.FGrid.TextMatrix))
  loc_11B9DDB:     If (var_FC <> vbNullString) Then
  loc_11B9DF7:       MsgBox("Some Certificate(s) of this challan are already made", 0, var_10C, var_11C, var_12C)
  loc_11B9E07:       Exit Sub
  loc_11B9E08:     End If
  loc_11B9E0B:   Next var_B8 'Integer
  loc_11B9E47:   If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_11C, var_12C) = 6) Then
  loc_11B9E53:     unk_487AE7.BeginTrans var_A0
  loc_11B9E69:     var_94 = Me.Bookmark 'Variant
  loc_11B9E8B:     Set var_A4 = Me.Txt
  loc_11B9E91:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(6), var_130, var_FC, "SELECT * From TDSCHAL1 Where DocID='")
  loc_11B9E99:     var_B4 = var_130.Text
  loc_11B9EA2:     var_134 = -1 & var_FC
  loc_11B9EB2:     unk_487AE7.Execute var_134 & "'", var_13C, 
  loc_11B9EBD:     Set var_98 = var_13C
  loc_11B9ED5:     ' Referenced from: 11B9F94
  loc_11B9EE4:     If Not(var_98.EOF) Then
  loc_11B9F13:       var_130 = var_98.Fields.Item("TDSDocId")
  loc_11B9F42:       var_13C = var_98.Fields
  loc_11B9F5A:       var_154 = "UPDATE LEDGERTDS SET TDSPOST='' WHERE TDSDocId='" & var_130.Value & "' AND TDSV_Sno=" & var_13C.Item("TDSVSno").Value 
  loc_11B9F5E:       var_FC = CStr(var_154)
  loc_11B9F68:       unk_487AE7.Execute var_FC, var_174, -1
  loc_11B9F8F:       var_98.MoveNext
  loc_11B9F94:       GoTo loc_11B9ED5
  loc_11B9F97:     End If
  loc_11B9FB5:     Set var_A4 = Me.Txt
  loc_11B9FBB:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(6), var_130, var_FC, "Delete From TDSCHAL1 Where DocID='")
  loc_11B9FC3:     var_B4 = var_130.Text
  loc_11B9FCC:     var_134 = -1 & var_FC
  loc_11B9FDC:     unk_487AE7.Execute var_134 & "'", var_13C, var_178
  loc_11BA014:     Set var_A4 = Me.Txt
  loc_11BA01A:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(6), var_130, var_FC, "Delete From TDSCHAL  Where DocID='")
  loc_11BA022:     var_B4 = var_130.Text
  loc_11BA02B:     var_134 = -1 & var_FC
  loc_11BA03B:     unk_487AE7.Execute var_134 & "'", var_13C, 
  loc_11BA073:     Set var_A4 = Me.Txt
  loc_11BA079:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(6), var_130, var_FC, "Delete From LEDGER   Where DocID='")
  loc_11BA081:     var_B4 = var_130.Text
  loc_11BA08A:     var_134 = -1 & var_FC
  loc_11BA09A:     unk_487AE7.Execute var_134 & "'", var_13C, 
  loc_11BA0BA:     unk_487AE7.CommitTrans
  loc_11BA0CA:     Me.Requery -1
  loc_11BA0EA:     If (CVar(Me.RecordCount) >= var_94) Then
  loc_11BA0F7:       Me.Bookmark = var_94
  loc_11BA0FF:     Else
  loc_11BA113:       If (Me.EOF = 0) Then
  loc_11BA11C:         Me.MoveLast
  loc_11BA121:       End If
  loc_11BA121:     End If
  loc_11BA121:     Call Proc_190_31_153F0F8()
  loc_11BA142:     Proc_5_0_1107AD0(&HFF, Me)
  loc_11BA14A:   End If
  loc_11BA14A: End If
  loc_11BA14F: Set var_98 = Nothing
  loc_11BA152: Exit Sub
  loc_11BA153: ' Referenced from: 11B9D5C
  loc_11BA159: unk_487AE7.RollbackTrans
  loc_11BA164: Call 0.Method_arg_50 (var_FC, global_72)
  loc_11BA179: Proc_183_57_104B0BC(var_FC, "TopCtrl1_eDel")
  loc_11BA185: Exit Sub
  loc_11BA186: 0 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F08FD0
  'Data Table: 487AD4
  Dim var_8C As CommandButton
  Dim var_94 As TextBox
  loc_F08EEC: On Error Goto loc_F08FA5
  loc_F08F04: var_88 = "EDIT"
  loc_F08F12: Call Proc_190_29_E9C168(Proc_5_1_100EC1C(var_88, Me))
  loc_F08F29: Me.btsadd.Visible = True
  loc_F08F3E: Set var_8C = Me.Txt
  loc_F08F44: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_F08F4C: var_94.Enabled = False
  loc_F08F65: Set var_8C = Me.Txt
  loc_F08F6B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F08F73: var_94.Enabled = False
  loc_F08F8A: Set var_8C = Me.Txt
  loc_F08F90: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F08F98: var_94.SetFocus
  loc_F08FA4: Exit Sub
  loc_F08FA5: ' Referenced from: F08EEC
  loc_F08FAB: Call 0.Method_arg_50 (var_88)
  loc_F08FC0: Proc_183_57_104B0BC(var_88, "TopCtrl1_eEdit")
  loc_F08FCC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19488
  'Data Table: 487AD4
  loc_E1947D: Me.Global.Unload Me
  loc_E19485: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE2F50
  'Data Table: 487AD4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EE2EA0: On Error Goto loc_EE2F27
  loc_EE2EBA: If (Me.RecordCount <= 0) Then
  loc_EE2EC3:   var_B8 = "Information"
  loc_EE2EDE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EE2EEE:   Exit Sub
  loc_EE2EEF: End If
  loc_EE2EF6: var_10C = "SELECT DocID as SearchCode,CHALTYPE,ChalNo,ChalDate,MonthNo,Name As Bank,TDSAmt FROM TDSChal INNER JOIN SubGroup ON TDSChal.BankCode=SubGroup.SubCode WHERE TDSCHAL.LOGSITE_CODE='" & MemVar_1F95078
  loc_EE2EFD: MemVar_1F950E4 = var_10C & "' ORDER BY CHALNO"
  loc_EE2F0A: MemVar_1F95120 = Me
  loc_EE2F21: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EE2F26: Exit Sub
  loc_EE2F27: ' Referenced from: EE2EA0
  loc_EE2F2D: Call 0.Method_arg_50 (var_10C)
  loc_EE2F42: Proc_183_57_104B0BC(var_10C, "TopCtrl1_eFind")
  loc_EE2F4E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E39188
  'Data Table: 487AD4
  loc_E39178: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39180: Call Proc_190_31_153F0F8(global_72)
  loc_E39185: Exit Sub
  loc_E39186: BranchFVar 23807
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E39128
  'Data Table: 487AD4
  loc_E39118: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39120: Call Proc_190_31_153F0F8(global_72)
  loc_E39125: Exit Sub
  loc_E39126: Set arg_5C00 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E38F48
  'Data Table: 487AD4
  loc_E38F38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38F40: Call Proc_190_31_153F0F8(global_72)
  loc_E38F45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E38E88
  'Data Table: 487AD4
  loc_E38E78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38E80: Call Proc_190_31_153F0F8(global_72)
  loc_E38E85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10C2FD0
  'Data Table: 487AD4
  Dim Me As Recordset15
  Dim var_114 As String
  Dim var_E4 As String
  Dim var_C4 As String
  Dim var_1B4 As Variant
  Dim var_1C4 As String
  Dim var_1D8 As Fields15
  Dim var_1EC As Field20
  Dim unk_487AE7 As Connection15
  Dim var_D4 As Variant
  loc_10C2D24: On Error Goto loc_10C2FA7
  loc_10C2D30: var_A4 = Me.RecordCount
  loc_10C2D3E: If (var_A4 <= 0) Then
  loc_10C2D41:   Exit Sub
  loc_10C2D42: End If
  loc_10C2D42: var_114 = "Select T.CHALTYPE,T.ChalNo,T.ChalDate,T.MonthNo,T.TDSAmt,SG.NAME as Bank,SGA.NAme as AcName,T1.Amt,T1.TDS,T1.TDSAmt as TDSAmt1,T1.CertiNo,T1.CertiDate ,"
  loc_10C2D47: var_E4 = "SUBSTRING(LT.DocID, 4, 5)"
  loc_10C2D52: var_C4 = "Mid(LT.DocID, 4, 5)"
  loc_10C2D57: var_D4 = var_C4
  loc_10C2DAE: var_1B4 = var_114 & IIf((MemVar_1F953B0 = "A"), var_D4, var_E4) & " AS LTV_TYPE," & IIf((MemVar_1F953B0 = "A"), "Mid(LT.DocID, 14, 8)", "SUBSTRING(LT.DocID, 14, 8)") 
  loc_10C2DB2: var_1C4 = " AS LTV_NO,LT.V_DATE,T.BankName FROM (((TdsChal as T Left Join TDSChal1 as T1 On T.DOCID=T1.DOCID )  Left Join SubGroup as SG On SG.SubCode=T.BankCode )  Left Join Subgroup as SGA On T1.AcCode=SGA.SubCode) LEFT JOIN LEDGERTDS LT ON (LT.TDSDOCID=T1.TDSDOCID) AND (LT.TDSV_SNO=T1.TDSVSNO) Where T.DOCID='"
  loc_10C2DD0: var_1D8 = Me.Fields
  loc_10C2DD8: var_1EC = var_1D8.Item("DocID")
  loc_10C2DF6: var_88 = CStr(var_1B4 & var_1C4 & var_1EC.Value & "' Order By T.DOCID,T1.VSno")
  loc_10C2E29: If (var_88 = vbNullString) Then
  loc_10C2E2C:   Exit Sub
  loc_10C2E2D: End If
  loc_10C2E43: unk_487AE7.Execute var_88, var_D4, -1
  loc_10C2E4E: Set var_9C = var_1D8
  loc_10C2E63: Call 0.Method_arg_104 (var_1D8)
  loc_10C2E6E: MemVar_1F951E8 = var_1D8
  loc_10C2E86: Call 0.Method_arg_90 (var_1D8, var_A4, var_9E)
  loc_10C2E8E: Call 0.Method_arg_24 (1)
  loc_10C2E9A: For var_230 =  To CInt(var_A4): var_1D8 = var_230 'Integer
  loc_10C2EB3:   Call 0.Method_arg_90 (var_1D8, CLng(var_9E))
  loc_10C2EBB:   Call 0.Method_arg_20 (var_1EC)
  loc_10C2EC3:   Call 0.Method_arg_30 (var_234)
  loc_10C2F09:   If (Ucase(CVar(var_234)) = Ucase("TITLE")) Then
  loc_10C2F1F:     Call 0.Method_arg_90 (var_1D8, CLng(var_9E))
  loc_10C2F27:     Call 0.Method_arg_20 (var_1EC)
  loc_10C2F2F:     Call 0.Method_arg_38 ("'TDS Challan'")
  loc_10C2F3B:   End If
  loc_10C2F3E: Next var_230 'Integer
  loc_10C2F5C: Call 0.Method_arg_64 (var_1D8, CVar(var_9C))
  loc_10C2F64: Call 0.Method_arg_2C (var_C4)
  loc_10C2F72: Call 0.Method_arg_150 (var_E4)
  loc_10C2F7D: Call 0.Method_arg_50 (var_234)
  loc_10C2F96: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_10C2FA3: Set var_9C = Nothing
  loc_10C2FA6: Exit Sub
  loc_10C2FA7: ' Referenced from: 10C2D24
  loc_10C2FAD: Call 0.Method_arg_50 (var_234, var_234)
  loc_10C2FC2: Proc_183_57_104B0BC(var_234, "TopCtrl1_ePrn")
  loc_10C2FCE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B054
  'Data Table: 487AD4
  Dim Me As Recordset15
  loc_E0B04B: Me.Requery -1
  loc_E0B050: Exit Sub
  loc_E0B051: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '16E9588
  'Data Table: 487AD4
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_98 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_A4 As String
  Dim var_9C As Variant
  Dim var_13C As String
  Dim var_140 As String
  Dim unk_487AE7 As Connection15
  Dim var_A0 As Variant
  Dim var_144 As Variant
  Dim var_148 As Variant
  Dim var_8A As Variant
  Dim var_88 As Variant
  Dim var_118 As Variant
  Dim var_178 As TextBox
  Dim var_524 As Double
  Dim var_1A8 As Variant
  Dim var_1F4 As Variant
  Dim var_230 As Variant
  Dim var_52C As Double
  Dim var_174 As String
  Dim var_188 As String
  Dim var_138 As Variant
  Dim var_16C As Variant
  Dim var_228 As Variant
  Dim var_244 As Variant
  Dim var_254 As Variant
  Dim var_264 As Variant
  Dim var_284 As Variant
  Dim var_294 As Variant
  Dim var_2F4 As Variant
  Dim var_304 As Variant
  Dim var_38C As Variant
  Dim var_3AC As Variant
  Dim var_404 As Variant
  Dim var_43C As Variant
  Dim var_4B4 As Variant
  Dim var_4D4 As Variant
  Dim var_4F8 As String
  Dim var_1A4 As Variant
  Dim var_968 As Double
  Dim var_1F0 As Variant
  Dim var_540 As Variant
  Dim var_560 As Variant
  Dim var_590 As Variant
  Dim var_5B0 As Variant
  Dim var_22C As Variant
  Dim var_5F0 As Variant
  Dim var_610 As Variant
  Dim var_624 As String
  Dim var_978 As Double
  Dim var_308 As MSHFlexGrid
  Dim var_3B0 As MSHFlexGrid
  Dim var_42C As Variant
  Dim var_3B4 As MSHFlexGrid
  Dim var_484 As Variant
  Dim var_408 As MSHFlexGrid
  Dim var_518 As Variant
  Dim var_2D4 As Variant
  Dim var_318 As Variant
  Dim var_34C As Variant
  Dim var_3D4 As Variant
  Dim var_858 As Variant
  Dim var_92 As Integer
  Dim Me As Recordset15
  loc_16E7C0C: On Error Goto loc_16E9549
  loc_16E7C1A: Set var_98 = Me.Txt
  loc_16E7C20: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5))
  loc_16E7C49: If (Proc_183_19_E8E68C(var_9C, "Challan Type") = 0) Then
  loc_16E7C4C:   Exit Sub
  loc_16E7C4D: End If
  loc_16E7C58: Set var_98 = Me.Txt
  loc_16E7C5E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_16E7C87: If (Proc_183_19_E8E68C(var_9C, "Challan No") = 0) Then
  loc_16E7C8A:   Exit Sub
  loc_16E7C8B: End If
  loc_16E7C96: Set var_98 = Me.Txt
  loc_16E7C9C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_16E7CC5: If (Proc_183_19_E8E68C(var_9C, "Challan Date") = 0) Then
  loc_16E7CC8:   Exit Sub
  loc_16E7CC9: End If
  loc_16E7CD4: Set var_98 = Me.Txt
  loc_16E7CDA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C)
  loc_16E7D03: If (Proc_183_19_E8E68C(var_9C, "Bank") = 0) Then
  loc_16E7D06:   Exit Sub
  loc_16E7D07: End If
  loc_16E7D12: Set var_98 = Me.Txt
  loc_16E7D18: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_9C)
  loc_16E7D29: Set var_A0 = var_9C
  loc_16E7D41: If (Proc_183_19_E8E68C(var_A0, "Month & Year") = 0) Then
  loc_16E7D44:   Exit Sub
  loc_16E7D45: End If
  loc_16E7D48: Call Proc_190_33_F652AC(var_A6)
  loc_16E7D53: If (var_A6 = &HFF) Then
  loc_16E7D56:   Exit Sub
  loc_16E7D57: End If
  loc_16E7D57: var_B8 = 1
  loc_16E7D60: var_D8 = 1
  loc_16E7D7E: var_108 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_16E7D84: var_118 = Trim(var_108)
  loc_16E7DA0: If (var_118 = vbNullString) Then
  loc_16E7DB6:   var_F8 = "Item Detail Required "
  loc_16E7DBC:   MsgBox(var_F8, 0, var_108, var_118, var_138)
  loc_16E7DDF:   Me.FGrid.Row = 1
  loc_16E7DEB:   Set var_98 = Me.FGrid
  loc_16E7E0F:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_16E7E17:   Exit Sub
  loc_16E7E18: End If
  loc_16E7E1C: Set var_98 = Me.TopCtrl1
  loc_16E7E22: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(FGrid.DispID_8001)
  loc_16E7E2A: var_A4 = CStr(var_D8)
  loc_16E7E3B: If (var_A4 = "Add") Then
  loc_16E7E6B:   Set var_98 = Me.Txt
  loc_16E7E71:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4, "Select Count(*) From TDSChal Where DocID='", var_F8, -1, var_A0)
  loc_16E7E92:   unk_487AE7.Execute 0 & var_A4 & "'", var_148, var_108
  loc_16E7E9A:   var_B8 = var_A0.Fields
  loc_16E7EA2:    = var_9C.Text.Item(var_9C)
  loc_16E7EAA:    = var_148.Value
  loc_16E7ED7:   If (var_108 > 0) Then
  loc_16E7EE0:     Call Proc_190_34_119743C(MemVar_1F951E0)
  loc_16E7EF3:     Set var_98 = Me.Txt
  loc_16E7EF9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C)
  loc_16E7F01:     var_9C.Text = var_A4
  loc_16E7F10:     Exit Sub
  loc_16E7F11:   End If
  loc_16E7F11: End If
  loc_16E7F13: var_8A = &HFF
  loc_16E7F1F: unk_487AE7.BeginTrans var_14C
  loc_16E7F42: Set var_98 = Me.Txt
  loc_16E7F48: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4, "SELECT * From TDSCHAL1 Where DocID='", var_F8)
  loc_16E7F50: -1 = var_9C.Text
  loc_16E7F69: unk_487AE7.Execute var_A0 & var_A4 & "'", var_8A, var_A4
  loc_16E7F74: Set var_88 = var_A0
  loc_16E7F8C: ' Referenced from: 16E804B
  loc_16E7F9B: If Not(var_88.EOF) Then
  loc_16E7FCA:   var_9C = var_88.Fields.Item("TDSDocId")
  loc_16E7FDA:   var_108 = "UPDATE LEDGERTDS SET TDSPOST='' WHERE TDSDocId='" & var_9C.Value 
  loc_16E7FF9:   var_A0 = var_88.Fields
  loc_16E8001:   var_144 = var_A0.Item("TDSVSno")
  loc_16E8015:   var_A4 = CStr(var_108 & "' AND TDSV_Sno=" & var_144.Value)
  loc_16E801F:   unk_487AE7.Execute var_A4, var_16C, -1
  loc_16E8046:   var_88.MoveNext
  loc_16E804B:   GoTo loc_16E7F8C
  loc_16E804E: End If
  loc_16E806C: Set var_98 = Me.Txt
  loc_16E8072: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4, "Delete From TDSCHAL1 Where  DocID='")
  loc_16E807A: var_F8 = var_9C.Text
  loc_16E8083: var_13C = -1 & var_A4
  loc_16E8093: unk_487AE7.Execute var_A0 & var_A4 & "'", var_A0, var_148
  loc_16E80CB: Set var_98 = Me.Txt
  loc_16E80D1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4, "Delete From TDSCHAL  Where  DocID='")
  loc_16E80D9: var_F8 = var_9C.Text
  loc_16E80E2: var_13C = -1 & var_A4
  loc_16E80F2: unk_487AE7.Execute var_A0 & var_A4 & "'", var_A0, 
  loc_16E812A: Set var_98 = Me.Txt
  loc_16E8130: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4, "Delete From LEDGER   Where  DocID='")
  loc_16E8138: var_F8 = var_9C.Text
  loc_16E8141: var_13C = -1 & var_A4
  loc_16E8151: unk_487AE7.Execute var_A0 & var_A4 & "'", var_A0, 
  loc_16E8179: Set var_98 = Me.Txt
  loc_16E817F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C)
  loc_16E8187: var_A4 = var_9C.Text
  loc_16E819A: Set var_A0 = Me.Txt
  loc_16E81A0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_144)
  loc_16E81A8: var_140 = var_144.Tag
  loc_16E81BB: Set var_148 = Me.Txt
  loc_16E81C1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_178)
  loc_16E81F6: Set var_19C = Me.Txt
  loc_16E81FC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A0)
  loc_16E820B: Proc_183_7_EB17D4(var_108, CVar(var_1A0))
  loc_16E821E: Set var_1A4 = Me.Txt
  loc_16E8224: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1A8)
  loc_16E823F: Set var_1F0 = Me.Txt
  loc_16E8245: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1F4)
  loc_16E8260: Set var_22C = Me.Txt
  loc_16E8266: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_230)
  loc_16E827B: var_52C = Val(var_230.Text)
  loc_16E8289: Proc_183_7_EB17D4(var_2D4, MemVar_1F950EC)
  loc_16E8292: Set var_308 = Me.TopCtrl1
  loc_16E8298: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_52C)
  loc_16E82DA: Set var_3B0 = Me.Txt
  loc_16E82E0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_3B4)
  loc_16E82EF: Proc_183_9_EAB2F0(var_3D4, CVar(var_3B4))
  loc_16E82FF: Set var_408 = Me.Txt
  loc_16E8305: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_40C)
  loc_16E8314: Proc_183_7_EB17D4(var_42C, CVar(var_40C))
  loc_16E8324: Set var_460 = Me.Txt
  loc_16E832A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_464)
  loc_16E8339: Proc_183_9_EAB2F0(var_484, CVar(var_464))
  loc_16E8352: var_13C = "Insert Into TDSCHAL (DOCID,ChalType,ChalNo,V_Prefix,ChalDate,BankCode,Site_Code,MonthNo,TDSAmt,u_name,U_ENTDt,U_AE,CHQ_NO,CHQ_DATE,BANKNAME,LOGSITE_CODE) Values ('" & var_A4
  loc_16E8388: var_118 = CVar(var_13C & "','" & var_140 & "'," & CStr(Val(var_178.Text)) & ",'" & Me.LblVPrefix.Caption & "',") 'String
  loc_16E83DB: var_254 = var_118 & var_108 & ",'" & CVar(var_1A8.Tag) & "','" & CVar(MemVar_1F95070) & "','" & CVar(var_1F4.Text) & "'," & CVar(var_52C) 
  loc_16E83EE: var_294 = var_254 & ",'" & CVar(MemVar_1F950C8) 
  loc_16E8447: var_4B4 = var_294 & "'," & var_2D4 & ",'" & IIf((CStr(var_318) = "Add"), "A", "E") & "'," & var_3D4 & "," & var_42C & "," & var_484 & ",'" 
  loc_16E8468: unk_487AE7.Execute CStr(var_4B4 & CVar(MemVar_1F95078) & "')"), var_518, -1
  loc_16E8533: For var_530 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_530 'Integer
  loc_16E8547:   Set var_98 = Me.Txt
  loc_16E854D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4)
  loc_16E8555:   1 = var_9C.Text
  loc_16E8568:   Set var_A0 = Me.Txt
  loc_16E856E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_144, var_140)
  loc_16E8576:   var_51C = var_144.Tag
  loc_16E8589:   Set var_148 = Me.Txt
  loc_16E858F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_178)
  loc_16E85D5:   var_52C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16E85E3:   Set var_19C = Me.Txt
  loc_16E85E9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A0, var_52C, CVar(CLng(0)))
  loc_16E85F8:   Proc_183_7_EB17D4(var_118, CVar(var_1A0), CVar(CLng(var_92)))
  loc_16E8601:   var_244 = CVar(CLng(var_92)) 'Long
  loc_16E8609:   var_284 = CVar(CLng(1)) 'Long
  loc_16E8628:   var_2F4 = CVar(CLng(var_92)) 'Long
  loc_16E8652:   var_968 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16E8681:   Proc_183_7_EB17D4(var_294, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_92)), var_968, CVar(CLng(2)))
  loc_16E868A:   var_540 = CVar(CLng(var_92)) 'Long
  loc_16E8692:   var_560 = CVar(CLng(7)) 'Long
  loc_16E86B1:   var_590 = CVar(CLng(var_92)) 'Long
  loc_16E86B9:   var_5B0 = CVar(CLng(9)) 'Long
  loc_16E86E2:   var_5F0 = CVar(CLng(var_92)) 'Long
  loc_16E86EA:   var_610 = CVar(CLng(&HA)) 'Long
  loc_16E86F3:   Set var_230 = Me.FGrid
  loc_16E8704:   var_624 = CStr(var_230.TextMatrix))
  loc_16E870C:   var_978 = Val(var_624)
  loc_16E873D:   var_980 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16E8755:   Set var_3B0 = Me.FGrid
  loc_16E875B:   var_42C = var_3B0.TextMatrix)
  loc_16E8793:   Proc_183_7_EB17D4(var_4B4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_92)), var_42C, CVar(CLng(&HC)), CVar(CLng(var_92)), var_980)
  loc_16E87AD:   Set var_408 = Me.FGrid
  loc_16E87B3:   var_518 = var_408.TextMatrix)
  loc_16E87CA:   Proc_183_7_EB17D4(var_828, MemVar_1F950EC, var_518, CVar(CLng(&HE)), CVar(CLng(var_92)), CVar(CLng(&HB)), CVar(CLng(var_92)))
  loc_16E87D3:   Set var_40C = Me.TopCtrl1
  loc_16E87D9:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_978)
  loc_16E8824:   var_13C = "Insert Into TDSCHAL1 (DOCID,CHALTYPE,ChalNo,VSno,Site_Code,ChalDate,TDSDocId,TDSVSno,V_Date,ACCode,Amt,TDS,TDSAmt,CertiNo,CertiDate,TDSCODE,u_name,U_ENTDt,U_AE,LOGSITE_CODE) Values ('" & var_A4
  loc_16E886D:   var_138 = CVar(var_13C & "','" & var_140 & "'," & CStr(Val(var_178.Text)) & "," & CStr(var_52C) & ",'" & MemVar_1F95070 & "',") 'String
  loc_16E88BC:   var_304 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_16E88C8:   var_34C = var_138 & var_118 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_968) & "," & var_294 & ",'" & var_304 & "'," 
  loc_16E88FB:   var_404 = var_34C & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_978) & "," & CVar(var_980) 
  loc_16E890C:   var_43C = CVar(CStr(var_42C)) 'String
  loc_16E895F:   var_858 = var_404 & ",'" & var_43C & "'," & var_4B4 & ",'" & CVar(CStr(var_518)) & "','" & CVar(MemVar_1F950C8) & "'," & var_828 & ",'" 
  loc_16E8990:   unk_487AE7.Execute CStr(var_858 & IIf((CStr(var_868) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_960, -1
  loc_16E8A6A:   var_B8 = CVar(CLng(var_92)) 'Long
  loc_16E8A72:   var_D8 = CVar(CLng(1)) 'Long
  loc_16E8A91:   var_128 = CVar(CLng(var_92)) 'Long
  loc_16E8A99:   var_264 = CVar(CLng(2)) 'Long
  loc_16E8AA2:   Set var_9C = Me.FGrid
  loc_16E8AA8:   var_108 = var_9C.TextMatrix)
  loc_16E8AD2:   var_A4 = CStr(Me.FGrid.TextMatrix))
  loc_16E8AF9:   unk_487AE7.Execute "UPDATE LEDGERTDS SET TDSPOST='Y' WHERE TDSDocId='" & var_A4 & "' AND TDSV_Sno=" & CStr(Val(CStr(var_108))) & vbNullString, var_118, -1
  loc_16E8B24: Next var_530 'Integer
  loc_16E8B4C: Set var_98 = Me.Txt
  loc_16E8B52: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4, "SELECT SUM(TDSAMT)AS TDSAMOUNT,TDSCODE FROM TDSCHAL1 Where DocID='")
  loc_16E8B5A: var_F8 = var_9C.Text
  loc_16E8B63: var_13C = -1 & var_A4
  loc_16E8B78: var_174 = "UPDATE LEDGERTDS SET TDSPOST='Y' WHERE TDSDocId='" & var_A4 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "' GROUP BY TDSCODE"
  loc_16E8B81: unk_487AE7.Execute var_174, var_A0, 0
  loc_16E8B8C: Set var_88 = var_A0
  loc_16E8BA8: ' Referenced from: 16E934C
  loc_16E8BB7: If Not(var_88.EOF) Then
  loc_16E8BC0:   var_92 = (var_92 + 1)
  loc_16E8BD1:   Set var_98 = Me.Txt
  loc_16E8BD7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C)
  loc_16E8BDF:   var_A4 = var_9C.Text
  loc_16E8BF2:   Set var_A0 = Me.Txt
  loc_16E8BF8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_144)
  loc_16E8C13:   Set var_148 = Me.Txt
  loc_16E8C19:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_178)
  loc_16E8C2E:   var_524 = Val(var_178.Text)
  loc_16E8C4E:   Set var_19C = Me.Txt
  loc_16E8C54:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A0)
  loc_16E8C63:   Proc_183_7_EB17D4(var_108, CVar(var_1A0))
  loc_16E8C82:   var_1A8 = var_88.Fields.Item("TDSCODE")
  loc_16E8CC4:   Set var_22C = Me.Txt
  loc_16E8CCA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_230, var_624)
  loc_16E8CE2:   Set var_308 = Me.Txt
  loc_16E8CE8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_3B0)
  loc_16E8CF7:   Proc_183_9_EAB2F0(var_294, CVar(var_3B0))
  loc_16E8D07:   Set var_3B4 = Me.Txt
  loc_16E8D0D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_408)
  loc_16E8D1C:   Proc_183_7_EB17D4(var_304, CVar(var_408))
  loc_16E8D2C:   Set var_40C = Me.Txt
  loc_16E8D32:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_460)
  loc_16E8D51:   Proc_183_7_EB17D4(var_404, MemVar_1F950EC)
  loc_16E8D5A:   Set var_464 = Me.TopCtrl1
  loc_16E8D60:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_16E8DAB:   var_13C = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Chq_No,Chq_Date,Narration,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & var_A4
  loc_16E8DFB:   var_4F8 = var_13C & "'," & CStr(0) & ",'" & var_144.Tag & "'," & CStr(var_230.Tag) & ",'" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070
  loc_16E8E3B:   var_228 = CVar(var_4F8 & "',") & var_108 & ",'" & var_1A8.Value & "',0," & var_88.Fields.Item("TDSAMOUNT").Value & ",'" & CVar(var_624) 
  loc_16E8E70:   var_38C = ("T.D.S. Challan " + Trim(CVar(var_460)))
  loc_16E8E74:   var_3AC = var_228 & "'," & var_294 & "," & var_304 & ",'" & var_228 & "'," & var_294 & "," & var_304 & ",'" & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_16E8EBA:   var_4D4 = var_3AC & "','" & CVar(MemVar_1F950C8) & "'," & var_404 & ",'" & IIf((CStr(var_43C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) 
  loc_16E8ED1:   unk_487AE7.Execute CStr(var_4D4 & "')"), var_518, -1
  loc_16E8F85:   var_92 = (var_92 + 1)
  loc_16E8F96:   Set var_98 = Me.Txt
  loc_16E8F9C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4)
  loc_16E8FB7:   Set var_A0 = Me.Txt
  loc_16E8FBD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_144)
  loc_16E8FD8:   Set var_148 = Me.Txt
  loc_16E8FDE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_178)
  loc_16E8FF3:   var_524 = Val(var_178.Text)
  loc_16E9013:   Set var_19C = Me.Txt
  loc_16E9019:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A0)
  loc_16E9021:   var_F8 = CVar(var_1A0) 'Address
  loc_16E9028:   Proc_183_7_EB17D4(var_108, var_F8)
  loc_16E903B:   Set var_1A4 = Me.Txt
  loc_16E9041:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1A8, var_624)
  loc_16E90A7:   Set var_308 = Me.Txt
  loc_16E90AD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_3B0)
  loc_16E90BC:   Proc_183_9_EAB2F0(var_294, CVar(var_3B0))
  loc_16E90CC:   Set var_3B4 = Me.Txt
  loc_16E90D2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_408)
  loc_16E90E1:   Proc_183_7_EB17D4(var_304, CVar(var_408))
  loc_16E90F1:   Set var_40C = Me.Txt
  loc_16E90F7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_460)
  loc_16E9116:   Proc_183_7_EB17D4(var_404, MemVar_1F950EC)
  loc_16E911F:   Set var_464 = Me.TopCtrl1
  loc_16E9125:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_51C)
  loc_16E9170:   var_13C = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Chq_No,Chq_Date,Narration,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & var_A4
  loc_16E91C0:   var_4F8 = var_13C & "'," & CStr(var_9C.Text) & ",'" & var_144.Tag & "'," & CStr(var_1A8.Tag) & ",'" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070
  loc_16E91D1:   var_B8 = ",'"
  loc_16E9200:   var_228 = CVar(var_4F8 & "',") & var_108 & var_B8 & CVar(var_624) & "'," & var_88.Fields.Item("TDSAMOUNT").Value & ",0,'" & var_88.Fields.Item("TDSCODE").Value 
  loc_16E9235:   var_38C = ("T.D.S. Challan " + Trim(CVar(var_460)))
  loc_16E9239:   var_3AC = var_228 & "'," & var_294 & "," & var_304 & ",'" & var_228 & "'," & var_294 & "," & var_304 & ",'" & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_16E927F:   var_4D4 = var_3AC & "','" & CVar(MemVar_1F950C8) & "'," & var_404 & ",'" & IIf((CStr(var_43C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) 
  loc_16E9296:   unk_487AE7.Execute CStr(var_4D4 & "')"), var_518, -1
  loc_16E9347:   var_88.MoveNext
  loc_16E934C:   GoTo loc_16E8BA8
  loc_16E934F: End If
  loc_16E9353: Set var_98 = Me.TopCtrl1
  loc_16E9359: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_51C)
  loc_16E9372: If (CStr() = "Add") Then
  loc_16E9383:   Set var_98 = Me.Txt
  loc_16E9389:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_16E9391:   var_A4 = var_9C.Text
  loc_16E939E:   var_524 = Val(var_A4)
  loc_16E93AF:   Set var_A0 = Me.Txt
  loc_16E93B5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_144)
  loc_16E9409:   var_188 = "UPDATE VOUCHER_Prefix SET Start_Srl_No=" & CStr(var_524) & " WHERE V_Type='" & var_144.Tag & "' and Prefix='" & Me.LblVPrefix.Caption
  loc_16E9435:   unk_487AE7.Execute var_188 & "' AND SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "' ", var_F8, -1
  loc_16E946B: End If
  loc_16E9471: unk_487AE7.CommitTrans
  loc_16E9478: var_8A = 0
  loc_16E9486: Me.Requery -1
  loc_16E94AA: Set var_98 = Me.Txt
  loc_16E94B0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4, "SearchCode ='", 0)
  loc_16E94B8: 1 = var_9C.Text
  loc_16E94D1: Me.Find var_B8 & var_A4 & "'", var_8A, var_178
  loc_16E94EA: Set var_98 = Me.TopCtrl1
  loc_16E94F0: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_524)
  loc_16E9509: If (CStr() = "Add") Then
  loc_16E950C:   Call TopCtrl1_UnknownEvent_A()
  loc_16E9511:   Exit Sub
  loc_16E9512: End If
  loc_16E9527: var_A4 = "INI"
  loc_16E9535: Call Proc_190_29_E9C168(Proc_5_1_100EC1C(var_A4, Me))
  loc_16E9545: Set var_88 = Nothing
  loc_16E9548: Exit Sub
  loc_16E9549: ' Referenced from: 16E7C0C
  loc_16E954F: If (var_8A = &HFF) Then
  loc_16E9558:   unk_487AE7.RollbackTrans
  loc_16E955D: End If
  loc_16E9563: Call 0.Method_arg_50 (var_A4)
  loc_16E9578: Proc_183_57_104B0BC(var_A4, "TopCtrl1_eSave")
  loc_16E9584: Exit Sub
  loc_16E9585: Exit Sub
End Sub

Private Sub Form_Load() '118DEFC
  'Data Table: 487AD4
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_A8 As Variant
  loc_118DB0C: On Error Goto loc_118DED1
  loc_118DB19: Set var_A8 = Me.TopCtrl1
  loc_118DB1F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_118DB2D: Call 0.Method_arg_50 (var_AC)
  loc_118DB3D: Set var_A8 = Me.TopCtrl1
  loc_118DB43: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_118DB5A: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_118DB6B: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_118DB7C: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_118DB8D: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_118DB9E: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_118DBAF: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_118DBC0: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_118DBD1: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_118DBE2: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_118DBF3: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_118DC0D: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_118DC1B: Set var_A8 = MemVar_1F95044
  loc_118DC2A: Call 0.Method_Form_Load8 (var_A8)
  loc_118DC40: Me.TopCtrl1.Clone
  loc_118DC5A: Call 0.Method_arg_50 (var_A8, -1)
  loc_118DC82: Me.Recordset15.CursorLocation = 3
  loc_118DCA5: var_AC = "Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where Category in ('TDSCH') AND SITE_CODE='" & MemVar_1F95070
  loc_118DCC4: Me.Open CVar(var_AC & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "' Order by Description"), CVar(MemVar_1F951E0), 2
  loc_118DCDE: CVarUnk
  loc_118DCE3: VerifyVarObj
  loc_118DCE9: Set var_A8 = Me.DGVType
  loc_118DCEF: LateIdStAd
  loc_118DD19: Me.DGVType.CursorLocation = 3
  loc_118DD3C: var_AC = "Select SubCode As Code,Name From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where Nature in ('Bank','Cash') AND (SubGroup.LOGSITE_CODE='" & MemVar_1F95078
  loc_118DD61: CVarUnk
  loc_118DD66: VerifyVarObj
  loc_118DD6C: Set var_A8 = Me.DGParty
  loc_118DD72: LateIdStAd
  loc_118DD9C: Me.DGParty.CursorLocation = 3
  loc_118DDBF: var_AC = "Select DocID as SearchCode,TDSChal.*,SUBGROUP.NAME AS BankAcName,VOUCHER_tYPE.Description From (TDSChal LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=TDSCHAL.BANKCODE) LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=TDSCHAL.CHALTYPE WHERE VOUCHER_TYPE.SITE_CODE='" & MemVar_1F95070
  loc_118DDE2: var_BC = CVar(var_AC & "' AND VOUCHER_TYPE.LOGSITE_CODE='" & MemVar_1F95078 & "' AND TDSCHAL.LOGSITE_CODE='" & MemVar_1F95078 & "' Order By DocID") 'String
  loc_118DDEC: ar(var_AC & "' OR SubGroup.LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F951E0), 2 var_BC, CVar(MemVar_1F951E0), 2
  loc_118DE16: var_AC = "INI"
  loc_118DE24: Call Proc_190_29_E9C168(Proc_5_1_100EC1C(var_AC, Me, New, 3, -1, Me, New), 3, -1, Me)
  loc_118DE3B: Me.btsadd.Visible = False
  loc_118DE43: Call Proc_190_27_1339EB4(New, 3)
  loc_118DE48: Call Proc_190_31_153F0F8(-1)
  loc_118DE5C: Me.LblUser.Left = CDbl(13500)
  loc_118DE73: Me.LblUser.Top = CDbl(7800)
  loc_118DE8A: Me.LblLDt.Top = CDbl(8160)
  loc_118DEA1: Me.LblLDt.Left = CDbl(13500)
  loc_118DEB0: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_118DEC8: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_118DED0: Exit Sub
  loc_118DED1: ' Referenced from: 118DB0C
  loc_118DED7: Call 0.Method_arg_50 (var_AC)
  loc_118DEEC: Proc_183_57_104B0BC(var_AC, "Form_Load")
  loc_118DEF8: Exit Sub
End Sub

Private Sub Form_Resize() 'E712F8
  'Data Table: 487AD4
  loc_E712A2: Call 0.Method_arg_50 (var_88)
  loc_E712B4: Me.LblFormCaption.Caption = var_88
  loc_E712CD: Me.LblFormCaption.Left = CDbl(0)
  loc_E712DB: Call 0.Method_arg_100 (var_90)
  loc_E712ED: Me.LblFormCaption.Width = var_90
  loc_E712F5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5EF48
  'Data Table: 487AD4
  loc_E5EF07: Set global_72 = Nothing
  loc_E5EF19: Set global_68 = Nothing
  loc_E5EF2B: Set global_76 = Nothing
  loc_E5EF3D: Set global_80 = Nothing
  loc_E5EF44: Exit Sub
End Sub

Private Sub Form_Activate() 'E30A84
  'Data Table: 487AD4
  loc_E30A60: Set var_88 = Me.TopCtrl1
  loc_E30A66: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E30A7B: If (CLng(CInt()) = &H2D) Then
  loc_E30A7E:   Call TopCtrl1_UnknownEvent_15()
  loc_E30A83: End If
  loc_E30A83: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E69AF0
  'Data Table: 487AD4
  loc_E69AA8: On Error Goto loc_E69AC6
  loc_E69ABD: Proc_183_40_F3169C(Me, KeyCode)
  loc_E69AC5: Exit Sub
  loc_E69AC6: ' Referenced from: E69AA8
  loc_E69ACC: Call 0.Method_arg_50 (var_8C)
  loc_E69AE1: Proc_183_57_104B0BC(var_8C, "Form_KeyDown")
  loc_E69AED: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F4F3F4
  'Data Table: 487AD4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4F2EB: Me.DGParty.Visible = False
  loc_F4F30A: If (Me.RecordCount > 0) Then
  loc_F4F349:   Set var_B4 = Me.Txt
  loc_F4F34F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4F357:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4F38A:   var_B0 = Me.Fields.Item("Name")
  loc_F4F3A9:   Set var_B4 = Me.Txt
  loc_F4F3AF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4F3B7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4F3CD: End If
  loc_F4F3D8: Set var_A8 = Me.Txt
  loc_F4F3DE: Call 0.Method_DGParty_UnknownEvent_90 (CInt(2))
  loc_F4F3E6: var_B0.SetFocus
  loc_F4F3F2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '112EB20
  'Data Table: 487AD4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_B0 As String
  loc_112E7B4: On Error Goto loc_112EAF6
  loc_112E7C1: Set var_88 = Me.Txt
  loc_112E7C7: Call 0.Method_Txt_GotFocus0 (Index)
  loc_112E7D5: Proc_183_28_E216B0(var_8C)
  loc_112E7E1: Call Proc_190_30_E85008(var_8C)
  loc_112E7E9: var_92 = Index
  loc_112E7F4: If (var_92 = CInt(5)) Then
  loc_112E845:   Set var_88 = Me.Txt
  loc_112E84B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_112E853:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_112E86B:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_112E86E:     Exit Sub
  loc_112E86F:   End If
  loc_112E87C:   Set var_88 = Me.Txt
  loc_112E882:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_112E88A:   var_A0 = var_8C.Text
  loc_112E89C:   var_B0 = "Name"
  loc_112E8D7:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_112E8E0:     Me.MoveFirst
  loc_112E903:     Set var_88 = Me.Txt
  loc_112E909:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_112E911:     0 = var_8C.Text
  loc_112E92A:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_112E93F:   End If
  loc_112E942: Else
  loc_112E94A:   If (var_92 = CInt(2)) Then
  loc_112E99B:     Set var_88 = Me.Txt
  loc_112E9A1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_112E9C1:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_112E9C4:       Exit Sub
  loc_112E9C5:     End If
  loc_112E9D2:     Set var_88 = Me.Txt
  loc_112E9D8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_112E9E0:     var_A0 = var_8C.Text
  loc_112E9E8:     var_D4 = CVar(var_A0) 'String
  loc_112EA2D:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_112EA36:       Me.MoveFirst
  loc_112EA5B:       Set var_88 = Me.Txt
  loc_112EA61:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_112EA69:       0 = var_8C.Text
  loc_112EA77:       Proc_183_9_EAB2F0(var_D4, CVar(var_A0))
  loc_112EA8D:       Me.Find CStr(1 & var_D4), var_FC, 
  loc_112EAA5:     End If
  loc_112EAA8:   Else
  loc_112EAB0:     If Not (var_92 = CInt(0)) Then
  loc_112EABB:       If Not (var_92 = CInt(1)) Then
  loc_112EAC6:         If Not (var_92 = CInt(3)) Then
  loc_112EAD1:           If Not (var_92 = CInt(7)) Then
  loc_112EADC:             If (var_92 = CInt(8)) Then
  loc_112EADF:             End If
  loc_112EADF:           End If
  loc_112EADF:         End If
  loc_112EADF:       End If
  loc_112EAE7:       var_A0 = "{Home}+{End}"
  loc_112EAED:       Proc_303_0_FBACC8(var_A0)
  loc_112EAF5:     End If
  loc_112EAF5:   End If
  loc_112EAF5: End If
  loc_112EAF5: Exit Sub
  loc_112EAF6: ' Referenced from: 112E7B4
  loc_112EAFC: Call 0.Method_arg_50 (var_A0)
  loc_112EB11: Proc_183_57_104B0BC(var_A0, "Txt_GotFocus")
  loc_112EB1D: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10048E8
  'Data Table: 487AD4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_C0 As String
  loc_10046F0: On Error Goto loc_10048C0
  loc_10046FD: If (CLng(Shift) = &H1B) Then
  loc_1004700:   Call Proc_190_30_E85008()
  loc_1004705:   Exit Sub
  loc_1004706: End If
  loc_1004709: var_86 = KeyCode
  loc_1004714: If (var_86 = CInt(5)) Then
  loc_100474D:   Proc_183_34_1307118(Me.DGVType, Me.Txt, KeyCode, global_76)
  loc_1004760: Else
  loc_1004768:   If (var_86 = CInt(2)) Then
  loc_10047A1:     Proc_183_34_1307118(Me.DGParty, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_10047B1:   End If
  loc_10047B1: End If
  loc_10047EC: If ((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) Then
  loc_1004804:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_100480D:     Proc_183_29_E53794(Shift, arg_14, 1, Shift)
  loc_1004812:   End If
  loc_1004816:   Set var_8C = Me.TopCtrl1
  loc_100481C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_1004835:   If (CStr(1) = "Add") Then
  loc_100484D:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1004856:       Proc_183_30_E53D10(Shift, arg_14)
  loc_100485B:     End If
  loc_100485E:   Else
  loc_1004862:     Set var_8C = Me.TopCtrl1
  loc_1004868:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_1004870:     var_C0 = CStr()
  loc_1004881:     If (var_C0 = "Edit") Then
  loc_1004899:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10048A2:         Proc_183_30_E53D10(Shift)
  loc_10048A7:       End If
  loc_10048A7:     End If
  loc_10048A7:   End If
  loc_10048BC:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10048BF:   End If
  loc_10048BF: End If
  loc_10048BF: Exit Sub
  loc_10048C0: ' Referenced from: 10046F0
  loc_10048C6: Call 0.Method_arg_50 (var_C0)
  loc_10048DB: Proc_183_57_104B0BC(var_C0, "Txt_KeyDown")
  loc_10048E7: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F9966C
  'Data Table: 487AD4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F99504: On Error Goto loc_F99642
  loc_F9950A: Proc_183_46_E07C50(arg_10)
  loc_F99512: var_86 = KeyAscii
  loc_F9951D: If (var_86 = CInt(5)) Then
  loc_F9953C:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F99552:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_F99561:     Set var_B8 = Me.Txt
  loc_F9956C:     var_B0 = "Name"
  loc_F99587:     Proc_183_41_145A968(var_B8, KeyAscii, global_76, arg_10)
  loc_F99596:   End If
  loc_F99599: Else
  loc_F995A1:   If (var_86 = CInt(0)) Then
  loc_F995AE:     Set var_8C = Me.Txt
  loc_F995B4:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_F995CF:     Proc_183_22_129BBAC(var_B8, arg_10, 8)
  loc_F995DE:   Else
  loc_F995E6:     If (var_86 = CInt(2)) Then
  loc_F99605:       If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F99617:         var_B0 = "Name"
  loc_F99632:         Proc_183_41_145A968(Me.Txt, KeyAscii, global_68, arg_10, var_B0)
  loc_F99641:       End If
  loc_F99641:     End If
  loc_F99641:   End If
  loc_F99641: End If
  loc_F99641: Exit Sub
  loc_F99642: ' Referenced from: F99504
  loc_F99648: Call 0.Method_arg_50 (var_B0, 0, 0)
  loc_F9965D: Proc_183_57_104B0BC(var_B0, "TXT_KeyPress")
  loc_F99669: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4CFEC
  'Data Table: 487AD4
  loc_E4CFCA: Set var_88 = Me.Txt
  loc_E4CFD0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4CFDE: Proc_183_27_E23198(var_8C)
  loc_E4CFEA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1344258
  'Data Table: 487AD4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_94 As Label
  Dim var_EC As TextBox
  Dim var_FC As String
  Dim var_108 As TextBox
  loc_1343AAC: On Error Goto loc_134422D
  loc_1343AB2: var_86 = Cancel
  loc_1343ABD: If (var_86 = CInt(5)) Then
  loc_1343ACB:   Set var_8C = Me.Txt
  loc_1343AD1:   Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_1343AD9:   var_98 = "Challan Type"
  loc_1343AFA:   If (Proc_183_19_E8E68C(var_90, var_98) = 0) Then
  loc_1343B08:     Set var_8C = Me.Txt
  loc_1343B0E:     Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_1343B16:     var_90.SetFocus
  loc_1343B24:     arg_10 = &HFF
  loc_1343B27:     Exit Sub
  loc_1343B28:   End If
  loc_1343B48:   var_9E = Me.EOF
  loc_1343B76:   Set var_8C = Me.Txt
  loc_1343B7C:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1343B84:   ((Me.RecordCount = 0) Or ((var_9E = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1343B9C:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_1343BAC:     Set var_8C = Me.Txt
  loc_1343BB2:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1343BBA:     var_90.Text = vbNullString
  loc_1343BD3:     Set var_8C = Me.Txt
  loc_1343BD9:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1343BE1:     var_90.Tag = vbNullString
  loc_1343BF0:   Else
  loc_1343C2B:     Set var_94 = Me.Txt
  loc_1343C31:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1343C39:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1343C6C:     var_90 = Me.Fields.Item("Code")
  loc_1343C8A:     Set var_94 = Me.Txt
  loc_1343C90:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1343C98:     var_B4.Tag = CStr(var_90.Value)
  loc_1343CB2:     Set var_8C = Me.TopCtrl1
  loc_1343CB8:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_1343CC0:     var_98 = CStr()
  loc_1343CD1:     If (var_98 = "Add") Then
  loc_1343CDA:       Call Proc_190_34_119743C(MemVar_1F951E0)
  loc_1343CED:       Set var_8C = Me.Txt
  loc_1343CF3:       Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_1343CFB:       var_90.Text = var_98
  loc_1343D0A:     End If
  loc_1343D0A:   End If
  loc_1343D0D: Else
  loc_1343D15:   If (var_86 = CInt(0)) Then
  loc_1343D23:     Set var_8C = Me.Txt
  loc_1343D29:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1343D52:     If (Proc_183_19_E8E68C(var_90, "Challan No") = 0) Then
  loc_1343D60:       Set var_8C = Me.Txt
  loc_1343D66:       Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1343D6E:       var_90.SetFocus
  loc_1343D7C:       arg_10 = &HFF
  loc_1343D7F:       Exit Sub
  loc_1343D80:     End If
  loc_1343D8B:     Set var_8C = Me.Txt
  loc_1343D91:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1343D9D:     Proc_183_6_EA3B94(CVar(var_90), arg_10)
  loc_1343DB2:     Set var_94 = Me.Txt
  loc_1343DB8:     Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_1343DC0:     var_B4.Text = CStr(var_98)
  loc_1343DD8:     Set var_8C = Me.TopCtrl1
  loc_1343DDE:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1343DF7:     If (CStr() = "Add") Then
  loc_1343E08:       Set var_8C = Me.Txt
  loc_1343E0E:       Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_1343E3B:       Set var_B4 = Me.Txt
  loc_1343E41:       Call 0.Method_Txt_Validate0 (CInt(0), var_EC)
  loc_1343E92:       var_FC = MemVar_1F9506C & Proc_183_15_EAD490(MemVar_1F95070, 2) & Proc_183_15_EAD490(var_90.Tag, 5) & Proc_183_15_EAD490(Me.LblVPrefix.Caption, 5)
  loc_1343EB8:       Set var_104 = Me.Txt
  loc_1343EBE:       Call 0.Method_Txt_Validate0 (CInt(6), var_108)
  loc_1343EC6:       var_108.Text = var_FC & Proc_183_16_EAF86C(var_EC.Text, 8)
  loc_1343EF5:     End If
  loc_1343EF8:     Call Proc_190_33_F652AC(var_9E)
  loc_1343F03:     If (var_9E = &HFF) Then
  loc_1343F08:       arg_10 = &HFF
  loc_1343F0B:       Exit Sub
  loc_1343F0C:     End If
  loc_1343F0F:   Else
  loc_1343F17:     If Not (var_86 = CInt(1)) Then
  loc_1343F22:       If (var_86 = CInt(7)) Then
  loc_1343F25:       End If
  loc_1343F32:       Set var_8C = Me.Txt
  loc_1343F38:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1343F70:       If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_1343F78:         var_98 = CStr(MemVar_1F950EC)
  loc_1343F85:         Set var_8C = Me.Txt
  loc_1343F8B:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1343F93:         var_90.Text = var_98
  loc_1343FA5:       Else
  loc_1343FB2:         Set var_8C = Me.Txt
  loc_1343FB8:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1343FCF:         Call 0.Method_arg_184 (var_90, var_98)
  loc_1343FE1:         Set var_B4 = Me.Txt
  loc_1343FE7:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1343FEF:         Me.Txt.Text = var_98
  loc_1344002:       End If
  loc_1344005:     Else
  loc_134400D:       If (var_86 = CInt(3)) Then
  loc_134401D:         Set var_8C = Me.Txt
  loc_1344023:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134403A:         Call 0.Method_arg_194 (var_90, var_98)
  loc_134404C:         Set var_B4 = Me.Txt
  loc_1344052:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134405A:         Me.Txt.Text = var_98
  loc_1344071:         Set var_8C = Me.TopCtrl1
  loc_1344077:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_1344090:         If (CStr() = "Add") Then
  loc_1344093:           Call Proc_190_32_1389008()
  loc_1344098:         End If
  loc_134409B:       Else
  loc_13440A3:         If (var_86 = CInt(2)) Then
  loc_13440F4:           Set var_8C = Me.Txt
  loc_13440FA:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134411A:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_134412A:             Set var_8C = Me.Txt
  loc_1344130:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1344138:             var_90.Text = vbNullString
  loc_1344151:             Set var_8C = Me.Txt
  loc_1344157:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134415F:             var_90.Tag = vbNullString
  loc_134416E:           Else
  loc_13441A9:             Set var_94 = Me.Txt
  loc_13441AF:             Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13441B7:             var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13441FB:             var_98 = CStr(Me.Fields.Item("Code").Value)
  loc_1344208:             Set var_94 = Me.Txt
  loc_134420E:             Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1344216:             var_B4.Tag = var_98
  loc_134422C:           End If
  loc_134422C:         End If
  loc_134422C:       End If
  loc_134422C:     End If
  loc_134422C:   End If
  loc_134422C: End If
  loc_134422C: Exit Sub
  loc_134422D: ' Referenced from: 1343AAC
  loc_1344233: Call 0.Method_arg_50 (var_98)
  loc_134423B: var_CC = "Txt_Validate"
  loc_1344248: Proc_183_57_104B0BC(var_98)
  loc_1344254: Exit Sub
  loc_1344255: EraseDestruct
End Sub

Private Sub btsadd_Click() '1407C24
  'Data Table: 487AD4
  Dim var_C0 As Variant
  Dim var_A4 As Variant
  Dim var_8A As Integer
  Dim var_A0 As Integer
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_B0 As String
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_D0 As Variant
  Dim var_114 As Variant
  Dim var_104 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim unk_487AE7 As Connection15
  Dim var_88 As Recordset15
  Dim var_9E As Integer
  Dim var_1E8 As Fields15
  Dim var_A8 As Variant
  Dim var_218 As Double
  Dim var_1FC As TextBox
  loc_14071FC: On Error Goto loc_1407BF9
  loc_140720A: Set var_A4 = Me.Txt
  loc_1407210: Call 0.Method_btsadd_Click0 (CInt(3))
  loc_1407239: If (Proc_183_19_E8E68C(var_A8, "Month & Year") = 0) Then
  loc_140723C:   Exit Sub
  loc_140723D: End If
  loc_140724C: Me.FGrid.Redraw = False
  loc_1407256: var_8A = 0
  loc_140725B: var_A0 = 0
  loc_1407283: For var_E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A0 = var_E4 'Integer
  loc_140728D:   var_C0 = CVar(CLng(var_A0)) 'Long
  loc_1407295:   var_F4 = CVar(CLng(0)) 'Long
  loc_14072B4:   var_8A = CInt(CStr(Me.FGrid.TextMatrix)))
  loc_14072C3: Next var_E4 'Integer
  loc_14072CE: var_8A = (var_8A + 1)
  loc_14072E1: Set var_A4 = Me.Txt
  loc_14072E7: Call 0.Method_btsadd_Click0 (CInt(3), var_A8)
  loc_1407318: var_124 = ("01/" + Trim(CVar(var_A8)))
  loc_140731E: var_134 = CDate(CDate(var_124))
  loc_140732F: var_94 = CDate(Format(var_134, "DD/MMM/YYYY"))
  loc_1407358: var_E0 = DateAdd("M", CDbl(1), var_94)
  loc_1407362: var_9C = CDate(var_E0)
  loc_1407370: var_9C = CDate((var_9C - CDbl(1)))
  loc_1407380: var_D0 = "Select LEDGERtds.*,SUBGROUP.NAME AS ACNAME From LEDGERTDS Left Join SUBGROUP On SUBGROUP.SUBCODE=LEDGERTDS.TDSDRCODE Where (TDSPOST='' OR TDSPOST IS NULL) AND V_DATE BETWEEN "
  loc_1407390: Proc_183_7_EB17D4(var_E0, var_94, var_D0, var_1C4, -1, var_A4, var_9C)
  loc_14073B0: Proc_183_7_EB17D4(var_134, var_9C, var_9C & var_E0 & " AND ", var_94)
  loc_14073B8: var_144 = 1 & var_134 
  loc_14073E2: unk_487AE7.Execute CStr(var_144 & " AND LEDGERtds.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' Order by TDSDOCID,TDSV_SNO"), 1, 0
  loc_14073ED: Set var_88 = var_A4
  loc_140740B: ' Referenced from: 1407B3C
  loc_140741A: If Not(var_88.EOF) Then
  loc_140741F:   var_9E = 0
  loc_1407447:   For var_1CA = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A0 = var_1CA 'Integer
  loc_1407475:     var_B0 = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("TDSDocId")), 1)
  loc_14074E8:     var_1FC = var_88.Fields.Item("TDSV_Sno")
  loc_14074F7:     Proc_183_3_E7DD58(var_144, CVar(var_1FC), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(0)))
  loc_140752C:     If CBool(CVar(CLng(0)) And ((CVar(CLng(1)) = CStr(Me.FGrid.TextMatrix))) = var_144)) Then
  loc_1407531:       var_9E = &HFF
  loc_1407534:     End If
  loc_1407537:   Next var_1CA 'Integer
  loc_1407542:   If (var_9E = 0) Then
  loc_1407545:     var_C0 = vbNullString
  loc_140754F:     Set var_A4 = Me.FGrid
  loc_1407564:     Set var_210 = Me.FGrid
  loc_140756B:     var_C0 = CVar(CLng(var_8A)) 'Long
  loc_1407573:     var_F4 = CVar(CLng(0)) 'Long
  loc_140757D:     var_E0 = CVar(CStr(var_8A)) 'String
  loc_1407584:     LateIdCallSt
  loc_14075C8:     var_114 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("TDSDocId")), CVar(CLng(1)), CVar(CLng(var_8A)), var_210, CVar(var_88.Fields.Item("TDSDocId")))) 'String
  loc_14075CF:     LateIdCallSt
  loc_1407618:     Proc_183_3_E7DD58(var_114, CVar(var_88.Fields.Item("TDSV_Sno")), CVar(CLng(2)), CVar(CLng(var_8A)), var_210)
  loc_1407621:     var_124 = CVar(CStr(var_114)) 'String
  loc_1407628:     LateIdCallSt
  loc_140765C:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1407664:     var_164 = CVar(CLng(3)) 'Long
  loc_1407686:     var_134 = CVar(CStr(Mid(CVar(var_88.Fields.Item("DocID")), 4, 5))) 'String
  loc_140768D:     LateIdCallSt
  loc_14076C3:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_14076CB:     var_164 = CVar(CLng(4)) 'Long
  loc_14076ED:     var_134 = CVar(CStr(Mid(CVar(var_88.Fields.Item("DocID")), &HE, 8))) 'String
  loc_14076F4:     LateIdCallSt
  loc_140770E:     var_D0 = CVar(CLng(var_8A)) 'Long
  loc_1407716:     var_104 = CVar(CLng(5)) 'Long
  loc_1407746:     var_114 = CVar(CStr(var_88.Fields.Item("V_SNo").Value)) 'String
  loc_140774D:     LateIdCallSt
  loc_1407767:     var_D0 = CVar(CLng(var_8A)) 'Long
  loc_140776F:     var_104 = CVar(CLng(6)) 'Long
  loc_140779F:     var_114 = CVar(CStr(var_88.Fields.Item("V_DATE").Value)) 'String
  loc_14077A6:     LateIdCallSt
  loc_14077C0:     var_D0 = CVar(CLng(var_8A)) 'Long
  loc_14077C8:     var_104 = CVar(CLng(7)) 'Long
  loc_14077F8:     var_114 = CVar(CStr(var_88.Fields.Item("TDSDRCODE").Value)) 'String
  loc_14077FF:     LateIdCallSt
  loc_1407819:     var_D0 = CVar(CLng(var_8A)) 'Long
  loc_1407821:     var_104 = CVar(CLng(8)) 'Long
  loc_1407851:     var_114 = CVar(CStr(var_88.Fields.Item("AcName").Value)) 'String
  loc_1407858:     LateIdCallSt
  loc_140788E:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1407896:     var_164 = CVar(CLng(9)) 'Long
  loc_14078C3:     var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("ONAmt")), "0.00"))) 'String
  loc_14078CA:     LateIdCallSt
  loc_1407900:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1407908:     var_164 = CVar(CLng(&HA)) 'Long
  loc_1407935:     var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("TDS")), "0.0000"))) 'String
  loc_140793C:     LateIdCallSt
  loc_1407972:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_140797A:     var_164 = CVar(CLng(&HB)) 'Long
  loc_14079A7:     var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("TDSAmt")), "0.00"))) 'String
  loc_14079AE:     LateIdCallSt
  loc_14079C8:     var_C0 = CVar(CLng(var_8A)) 'Long
  loc_14079D0:     var_F4 = CVar(CLng(&HC)) 'Long
  loc_14079D5:     var_164 = vbNullString
  loc_14079DE:     LateIdCallSt
  loc_14079EA:     var_C0 = CVar(CLng(var_8A)) 'Long
  loc_14079F2:     var_F4 = CVar(CLng(&HD)) 'Long
  loc_1407A00:     LateIdCallSt
  loc_1407A33:     var_A8 = var_88.Fields.Item("TDSCODE")
  loc_1407A4B:     LateIdCallSt
  loc_1407A75:     Set var_A4 = Me.Txt
  loc_1407A7B:     Call 0.Method_btsadd_Click0 (CInt(4), var_A8, var_B0, Nothing, CVar(CStr(var_A8.Value)), CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_1407A83:     var_210 = var_A8.Text
  loc_1407A90:     var_218 = Val(var_B0)
  loc_1407AC4:     var_F4 = "0.00"
  loc_1407AD9:     var_114 = (CVar(var_218) + var_88.Fields.Item("TDSAmt").Value)
  loc_1407AF7:     Set var_1E8 = Me.Txt
  loc_1407AFD:     Call 0.Method_btsadd_Click0 (CInt(4), var_1FC, CStr(Format(CVar(CStr(var_A8.Value)), var_F4)), 1, 1, var_218)
  loc_1407B05:     var_1FC.Text = vbNullString
  loc_1407B31:     var_8A = (var_8A + 1)
  loc_1407B34:   End If
  loc_1407B37:   var_88.MoveNext
  loc_1407B3C:   GoTo loc_140740B
  loc_1407B3F: End If
  loc_1407B45: If (var_8A = 1) Then
  loc_1407B5B:   Me.FGrid.Rows = 2
  loc_1407B78:   var_114 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1407B80:   Set var_A8 = Me.FGrid
  loc_1407BAF:   Me.FGrid.FixedRows = 1
  loc_1407BBA: Else
  loc_1407BCD:   Me.FGrid.FixedRows = 1
  loc_1407BD5: End If
  loc_1407BD5: var_C0 = True
  loc_1407BE3: Me.FGrid.Redraw = var_C0
  loc_1407BEB: Call Proc_190_30_E85008(FGrid.DispID_10000, var_114, var_8A, var_F4)
  loc_1407BF5: Set var_88 = Nothing
  loc_1407BF8: Exit Sub
  loc_1407BF9: ' Referenced from: 14071FC
  loc_1407BFF: Call 0.Method_arg_50 (var_B0, var_C0, var_210)
  loc_1407C14: Proc_183_57_104B0BC(var_B0, "btsadd_Click")
  loc_1407C20: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) '10D1A58
  'Data Table: 487AD4
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_114 As TextBox
  Dim var_134 As Double
  Dim var_12C As String
  Dim var_128 As TextBox
  loc_10D176C: On Error Goto loc_10D1A2E
  loc_10D1773: Set var_8C = Me.TopCtrl1
  loc_10D1779: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10D1781: var_A0 = CStr()
  loc_10D1792: If (var_A0 = "Browse") Then
  loc_10D1795:   Exit Sub
  loc_10D1796: End If
  loc_10D17B3: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_10D17B6:   Exit Sub
  loc_10D17B7: End If
  loc_10D17C8: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_10D17EA:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10D1824:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_10D1846:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10D185C:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D1865:         Set var_114 = Me.FGrid
  loc_10D1880:       Else
  loc_10D1893:         Me.FGrid.Rows = 1
  loc_10D18B0:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_10D18B8:         Set var_114 = Me.FGrid
  loc_10D18E7:         Me.FGrid.FixedRows = 1
  loc_10D18EF:       End If
  loc_10D18FD:       Set var_8C = Me.Txt
  loc_10D1903:       Call 0.Method_FGrid_UnknownEvent_D0 (CInt(4), var_114, vbNullString, FGrid.DispID_10000)
  loc_10D193C:       For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_10D1946:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_10D1970:         var_134 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10D1981:         Set var_8C = Me.Txt
  loc_10D1987:         Call 0.Method_FGrid_UnknownEvent_D0 (CInt(4), var_114, var_A0, var_134, CVar(CLng(&HB)))
  loc_10D198F:         var_B0 = var_D0
  loc_10D19A2:         var_12C = CStr((Val(var_A0) + var_134))
  loc_10D19B0:         Set var_124 = Me.Txt
  loc_10D19B6:         Call 0.Method_FGrid_UnknownEvent_D0 (CInt(4), var_128, var_12C)
  loc_10D19BE:         var_128.Text = 1
  loc_10D19DF:       Next var_118 'Integer
  loc_10D19E4:     End If
  loc_10D19E7:   Else
  loc_10D1A08:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_10D1A18:   End If
  loc_10D1A1C:   Set var_8C = Me.FGrid
  loc_10D1A2D: End If
  loc_10D1A2D: Exit Sub
  loc_10D1A2E: ' Referenced from: 10D176C
  loc_10D1A34: Call 0.Method_arg_50 (var_A0)
  loc_10D1A49: Proc_183_57_104B0BC(var_A0, "FGrid_KeyUp")
  loc_10D1A55: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBEA58
  'Data Table: 487AD4
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EBE9C6: On Error Goto loc_EBEA2F
  loc_EBE9CF: Me.MoveFirst
  loc_EBE9E9: var_8C = "SearchCode='" & MyValue
  loc_EBE9F9: Me.Find var_8C & "'", 0, 1
  loc_EBEA21: Proc_5_0_1107AD0(&HFF, Me, global_72)
  loc_EBEA29: Call Proc_190_31_153F0F8(0)
  loc_EBEA2E: Exit Sub
  loc_EBEA2F: ' Referenced from: EBE9C6
  loc_EBEA35: Call 0.Method_arg_50 (var_8C)
  loc_EBEA4A: Proc_183_57_104B0BC(var_8C, "SEARCHBACK")
  loc_EBEA56: Exit Sub
End Sub

Public Sub Proc_190_27_1339EB4
  'Data Table: 487AD4
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_D8 As String
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_13396EC: On Error Goto loc_1339E8A
  loc_1339702: Me.FGrid.Left = CVar(CDbl(525))
  loc_133971D: Me.FGrid.Top = CVar(CDbl(1925))
  loc_1339738: Me.FGrid.Width = CVar(CDbl(16400))
  loc_133974E: Set var_A8 = Me.Txt
  loc_1339754: Call 0.Method_Proc_190_27_1339EB40 (CInt(2), var_AC)
  loc_1339773: Me.DGParty.Left = CVar(var_AC.Left)
  loc_133978F: Set var_B4 = Me.Txt
  loc_1339795: Call 0.Method_Proc_190_27_1339EB40 (CInt(2), var_B8)
  loc_13397B0: Set var_A8 = Me.Txt
  loc_13397B6: Call 0.Method_Proc_190_27_1339EB40 (CInt(2), var_AC)
  loc_13397CA: var_94 = CVar((var_AC.Top + var_B8.Height)) 'Single
  loc_13397D9: Me.DGParty.Top = CVar(var_AC.Left)
  loc_13397F9: Set var_A8 = Me.Txt
  loc_13397FF: Call 0.Method_Proc_190_27_1339EB40 (CInt(5), var_AC)
  loc_133981E: Me.DGVType.Left = CVar(var_AC.Left)
  loc_133983A: Set var_B4 = Me.Txt
  loc_1339840: Call 0.Method_Proc_190_27_1339EB40 (CInt(5), var_B8)
  loc_133985B: Set var_A8 = Me.Txt
  loc_1339861: Call 0.Method_Proc_190_27_1339EB40 (CInt(5), var_AC)
  loc_1339875: var_94 = CVar((var_AC.Top + var_B8.Height)) 'Single
  loc_1339884: Me.DGVType.Top = CVar(var_AC.Left)
  loc_13398A9: Me.DGParty.Height = CVar(CDbl(5640))
  loc_13398B5: Set var_C4 = Me.FGrid
  loc_13398C6: var_D8 = CStr(CLng(var_C4.BackColor))
  loc_13398CC: global_52 = var_D8
  loc_13398E2: var_C4.Cols = &HF
  loc_13398EA: var_94 = CVar(CLng(0)) 'Long
  loc_13398EF: var_E8 = &HFA
  loc_13398FB: LateIdCallSt
  loc_1339903: var_94 = 0
  loc_133990F: var_E8 = CVar(CLng(1)) 'Long
  loc_1339914: var_108 = "TDS DOCID"
  loc_133991D: LateIdCallSt
  loc_1339928: var_94 = CVar(CLng(1)) 'Long
  loc_133992D: var_E8 = 0
  loc_1339939: LateIdCallSt
  loc_1339941: var_94 = 0
  loc_133994D: var_E8 = CVar(CLng(2)) 'Long
  loc_1339952: var_108 = "FTDSVSno"
  loc_133995B: LateIdCallSt
  loc_1339966: var_94 = CVar(CLng(2)) 'Long
  loc_133996B: var_E8 = 0
  loc_1339977: LateIdCallSt
  loc_133997F: var_94 = 0
  loc_133998B: var_E8 = CVar(CLng(3)) 'Long
  loc_1339990: var_108 = "Vr.Type"
  loc_1339999: LateIdCallSt
  loc_13399A4: var_94 = CVar(CLng(3)) 'Long
  loc_13399AF: var_E8 = CVar(CInt(1)) 'Integer
  loc_13399B6: LateIdCallSt
  loc_13399C1: var_94 = CVar(CLng(3)) 'Long
  loc_13399CC: var_E8 = CVar(CInt(1)) 'Integer
  loc_13399D3: LateIdCallSt
  loc_13399DE: var_94 = CVar(CLng(3)) 'Long
  loc_13399E3: var_E8 = &H384
  loc_13399EF: LateIdCallSt
  loc_13399F7: var_94 = 0
  loc_1339A03: var_E8 = CVar(CLng(4)) 'Long
  loc_1339A08: var_108 = "Vr.No."
  loc_1339A11: LateIdCallSt
  loc_1339A1C: var_94 = CVar(CLng(4)) 'Long
  loc_1339A27: var_E8 = CVar(CInt(7)) 'Integer
  loc_1339A2E: LateIdCallSt
  loc_1339A39: var_94 = CVar(CLng(4)) 'Long
  loc_1339A44: var_E8 = CVar(CInt(7)) 'Integer
  loc_1339A4B: LateIdCallSt
  loc_1339A56: var_94 = CVar(CLng(4)) 'Long
  loc_1339A5B: var_E8 = &H352
  loc_1339A67: LateIdCallSt
  loc_1339A6F: var_94 = 0
  loc_1339A7B: var_E8 = CVar(CLng(5)) 'Long
  loc_1339A80: var_108 = "S.No"
  loc_1339A89: LateIdCallSt
  loc_1339A94: var_94 = CVar(CLng(5)) 'Long
  loc_1339A9F: var_E8 = CVar(CInt(7)) 'Integer
  loc_1339AA6: LateIdCallSt
  loc_1339AB1: var_94 = CVar(CLng(5)) 'Long
  loc_1339ABC: var_E8 = CVar(CInt(7)) 'Integer
  loc_1339AC3: LateIdCallSt
  loc_1339ACE: var_94 = CVar(CLng(5)) 'Long
  loc_1339AD3: var_E8 = &H258
  loc_1339ADF: LateIdCallSt
  loc_1339AE7: var_94 = 0
  loc_1339AF3: var_E8 = CVar(CLng(6)) 'Long
  loc_1339AF8: var_108 = "Date"
  loc_1339B01: LateIdCallSt
  loc_1339B0C: var_94 = CVar(CLng(6)) 'Long
  loc_1339B17: var_E8 = CVar(CInt(1)) 'Integer
  loc_1339B1E: LateIdCallSt
  loc_1339B29: var_94 = CVar(CLng(6)) 'Long
  loc_1339B34: var_E8 = CVar(CInt(1)) 'Integer
  loc_1339B3B: LateIdCallSt
  loc_1339B46: var_94 = CVar(CLng(6)) 'Long
  loc_1339B4B: var_E8 = &H3B6
  loc_1339B57: LateIdCallSt
  loc_1339B62: var_94 = CVar(CLng(7)) 'Long
  loc_1339B67: var_E8 = 0
  loc_1339B73: LateIdCallSt
  loc_1339B7B: var_94 = 0
  loc_1339B87: var_E8 = CVar(CLng(8)) 'Long
  loc_1339B8C: var_108 = "A/C Name"
  loc_1339B95: LateIdCallSt
  loc_1339BA0: var_94 = CVar(CLng(8)) 'Long
  loc_1339BAB: var_E8 = CVar(CInt(1)) 'Integer
  loc_1339BB2: LateIdCallSt
  loc_1339BBD: var_94 = CVar(CLng(8)) 'Long
  loc_1339BC8: var_E8 = CVar(CInt(1)) 'Integer
  loc_1339BCF: LateIdCallSt
  loc_1339BDA: var_94 = CVar(CLng(8)) 'Long
  loc_1339BDF: var_E8 = &HDAC
  loc_1339BEB: LateIdCallSt
  loc_1339BF6: var_94 = CVar(CLng(9)) 'Long
  loc_1339BFB: var_E8 = 0
  loc_1339C07: LateIdCallSt
  loc_1339C0F: var_94 = 0
  loc_1339C1B: var_E8 = CVar(CLng(9)) 'Long
  loc_1339C20: var_108 = "On Amount"
  loc_1339C29: LateIdCallSt
  loc_1339C34: var_94 = CVar(CLng(9)) 'Long
  loc_1339C3F: var_E8 = CVar(CInt(7)) 'Integer
  loc_1339C46: LateIdCallSt
  loc_1339C51: var_94 = CVar(CLng(9)) 'Long
  loc_1339C5C: var_E8 = CVar(CInt(7)) 'Integer
  loc_1339C63: LateIdCallSt
  loc_1339C6E: var_94 = CVar(CLng(9)) 'Long
  loc_1339C73: var_E8 = &H4B0
  loc_1339C7F: LateIdCallSt
  loc_1339C87: var_94 = 0
  loc_1339C93: var_E8 = CVar(CLng(&HA)) 'Long
  loc_1339C98: var_108 = "T.D.S. %"
  loc_1339CA1: LateIdCallSt
  loc_1339CAC: var_94 = CVar(CLng(&HA)) 'Long
  loc_1339CB7: var_E8 = CVar(CInt(7)) 'Integer
  loc_1339CBE: LateIdCallSt
  loc_1339CC9: var_94 = CVar(CLng(&HA)) 'Long
  loc_1339CD4: var_E8 = CVar(CInt(7)) 'Integer
  loc_1339CDB: LateIdCallSt
  loc_1339CE6: var_94 = CVar(CLng(&HA)) 'Long
  loc_1339CEB: var_E8 = &H3E8
  loc_1339CF7: LateIdCallSt
  loc_1339CFF: var_94 = 0
  loc_1339D0B: var_E8 = CVar(CLng(&HB)) 'Long
  loc_1339D10: var_108 = "T.D.S.Amt"
  loc_1339D19: LateIdCallSt
  loc_1339D24: var_94 = CVar(CLng(&HB)) 'Long
  loc_1339D2F: var_E8 = CVar(CInt(7)) 'Integer
  loc_1339D36: LateIdCallSt
  loc_1339D41: var_94 = CVar(CLng(&HB)) 'Long
  loc_1339D4C: var_E8 = CVar(CInt(7)) 'Integer
  loc_1339D53: LateIdCallSt
  loc_1339D5E: var_94 = CVar(CLng(&HB)) 'Long
  loc_1339D63: var_E8 = &H3E8
  loc_1339D6F: LateIdCallSt
  loc_1339D77: var_94 = 0
  loc_1339D83: var_E8 = CVar(CLng(&HC)) 'Long
  loc_1339D88: var_108 = "Certi.No."
  loc_1339D91: LateIdCallSt
  loc_1339D9C: var_94 = CVar(CLng(&HC)) 'Long
  loc_1339DA7: var_E8 = CVar(CInt(1)) 'Integer
  loc_1339DAE: LateIdCallSt
  loc_1339DB9: var_94 = CVar(CLng(&HC)) 'Long
  loc_1339DC4: var_E8 = CVar(CInt(1)) 'Integer
  loc_1339DCB: LateIdCallSt
  loc_1339DD6: var_94 = CVar(CLng(&HC)) 'Long
  loc_1339DDB: var_E8 = &H3E8
  loc_1339DE7: LateIdCallSt
  loc_1339DEF: var_94 = 0
  loc_1339DFB: var_E8 = CVar(CLng(&HD)) 'Long
  loc_1339E00: var_108 = "Certi.Date"
  loc_1339E09: LateIdCallSt
  loc_1339E14: var_94 = CVar(CLng(&HD)) 'Long
  loc_1339E1F: var_E8 = CVar(CInt(1)) 'Integer
  loc_1339E26: LateIdCallSt
  loc_1339E31: var_94 = CVar(CLng(&HD)) 'Long
  loc_1339E3C: var_E8 = CVar(CInt(1)) 'Integer
  loc_1339E43: LateIdCallSt
  loc_1339E4E: var_94 = CVar(CLng(&HD)) 'Long
  loc_1339E53: var_E8 = &H3E8
  loc_1339E5F: LateIdCallSt
  loc_1339E6A: var_94 = CVar(CLng(&HE)) 'Long
  loc_1339E6F: var_E8 = 0
  loc_1339E7B: LateIdCallSt
  loc_1339E85: Set var_C4 = Nothing 
  loc_1339E89: Exit Sub
  loc_1339E8A: ' Referenced from: 13396EC
  loc_1339E90: Call 0.Method_arg_50 (var_D8, var_C4, var_E8, var_94, var_C4, var_E8, var_94, var_C4)
  loc_1339EA5: Proc_183_57_104B0BC(var_D8, "Ini_Grid", var_E8, var_94, var_C4)
  loc_1339EB1: Exit Sub
  loc_1339EB2: GoTo loc_133F3EB
End Sub

Public Sub Proc_190_28_F18278
  'Data Table: 487AD4
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F1818E: Set var_8C = Me.Txt
  loc_F18194: Call 0.Method_Proc_190_28_F18278C (var_8E, var_86)
  loc_F181A4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F181BA:   Set var_8C = Me.Txt
  loc_F181C0:   Call 0.Method_Proc_190_28_F182780 (CInt(var_86), var_98)
  loc_F181C8:   var_98.Text = vbNullString
  loc_F181E4:   Set var_8C = Me.Txt
  loc_F181EA:   Call 0.Method_Proc_190_28_F182780 (CInt(var_86), var_98)
  loc_F181F2:   var_98.Tag = vbNullString
  loc_F18201: Next var_92 'Byte
  loc_F1821A: Me.FGrid.Rows = 1
  loc_F18237: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F1823F: Set var_98 = Me.FGrid
  loc_F1826E: Me.FGrid.FixedRows = 1
  loc_F18276: Exit Sub
End Sub

Public Sub Proc_190_29_E9C168(arg_C) 'E9C168
  'Data Table: 487AD4
  Dim var_98 As TextBox
  loc_E9C0EE: Set var_8C = Me.Txt
  loc_E9C0F4: Call 0.Method_Proc_190_29_E9C168C (var_8E, var_86)
  loc_E9C104: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9C11A:   Set var_8C = Me.Txt
  loc_E9C120:   Call 0.Method_Proc_190_29_E9C1680 (CInt(var_86), var_98)
  loc_E9C128:   var_98.Enabled = arg_C
  loc_E9C137: Next var_92 'Byte
  loc_E9C14A: Set var_8C = Me.Txt
  loc_E9C150: Call 0.Method_Proc_190_29_E9C1680 (CInt(4), var_98)
  loc_E9C158: var_98.Enabled = False
  loc_E9C164: Exit Sub
End Sub

Public Sub Proc_190_30_E85008
  'Data Table: 487AD4
  loc_E84FB4: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_E84FC6:   Me.DGParty.Visible = False
  loc_E84FCE: End If
  loc_E84FEA: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_E84FFC:   Me.DGVType.Visible = False
  loc_E85004: End If
  loc_E85004: Exit Sub
End Sub

Public Sub Proc_190_31_153F0F8
  'Data Table: 487AD4
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Variant
  Dim var_BC As String
  Dim var_C0 As Variant
  Dim var_C4 As TextBox
  Dim var_8A As Integer
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim unk_487AE7 As Connection15
  Dim var_88 As Recordset15
  Dim var_138 As Variant
  Dim var_114 As Variant
  Dim var_148 As Variant
  Dim var_124 As Variant
  loc_153E13C: On Error Goto loc_153F0CD
  loc_153E156: If (Me.RecordCount > 0) Then
  loc_153E165:   Me.btsadd.Visible = False
  loc_153E1A8:   Me.LblVPrefix.Caption = CStr(Me.Fields.Item("v_Prefix").Value)
  loc_153E1F8:   Set var_C0 = Me.Txt
  loc_153E1FE:   Call 0.Method_Proc_190_31_153F0F80 (CInt(6), var_C4)
  loc_153E206:   var_C4.Text = CStr(Me.Fields.Item("DocID").Value)
  loc_153E258:   Set var_C0 = Me.Txt
  loc_153E25E:   Call 0.Method_Proc_190_31_153F0F80 (CInt(5), var_C4)
  loc_153E266:   var_C4.Tag = CStr(Me.Fields.Item("ChalType").Value)
  loc_153E2B8:   Set var_C0 = Me.Txt
  loc_153E2BE:   Call 0.Method_Proc_190_31_153F0F80 (CInt(5), var_C4)
  loc_153E2C6:   var_C4.Text = CStr(Me.Fields.Item("Description").Value)
  loc_153E318:   Set var_C0 = Me.Txt
  loc_153E31E:   Call 0.Method_Proc_190_31_153F0F80 (CInt(0), var_C4)
  loc_153E326:   var_C4.Text = CStr(Me.Fields.Item("ChalNo").Value)
  loc_153E378:   Set var_C0 = Me.Txt
  loc_153E37E:   Call 0.Method_Proc_190_31_153F0F80 (CInt(1), var_C4)
  loc_153E386:   var_C4.Text = CStr(Me.Fields.Item("ChalDate").Value)
  loc_153E3D8:   Set var_C0 = Me.Txt
  loc_153E3DE:   Call 0.Method_Proc_190_31_153F0F80 (CInt(2), var_C4)
  loc_153E3E6:   var_C4.Tag = CStr(Me.Fields.Item("BankCode").Value)
  loc_153E438:   Set var_C0 = Me.Txt
  loc_153E43E:   Call 0.Method_Proc_190_31_153F0F80 (CInt(2), var_C4)
  loc_153E446:   var_C4.Text = CStr(Me.Fields.Item("BankAcName").Value)
  loc_153E498:   Set var_C0 = Me.Txt
  loc_153E49E:   Call 0.Method_Proc_190_31_153F0F80 (CInt(3), var_C4)
  loc_153E4A6:   var_C4.Text = CStr(Me.Fields.Item("MonthNo").Value)
  loc_153E4F8:   Set var_C0 = Me.Txt
  loc_153E4FE:   Call 0.Method_Proc_190_31_153F0F80 (CInt(4), var_C4)
  loc_153E506:   var_C4.Text = CStr(Me.Fields.Item("TDSAmt").Value)
  loc_153E555:   Set var_C0 = Me.Txt
  loc_153E55B:   Call 0.Method_Proc_190_31_153F0F80 (CInt(9), var_C4)
  loc_153E563:   var_C4.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("BankName")))
  loc_153E5A9:   If Not(IsNull(CVar(Me.Fields.Item("Chq_Date")))) Then
  loc_153E5C9:     var_A8 = Me.Fields.Item("Chq_Date")
  loc_153E5E8:     Set var_C0 = Me.Txt
  loc_153E5EE:     Call 0.Method_Proc_190_31_153F0F80 (CInt(7), var_C4)
  loc_153E5F6:     var_C4.Text = CStr(var_A8.Value)
  loc_153E60F:   Else
  loc_153E61D:     Set var_94 = Me.Txt
  loc_153E623:     Call 0.Method_Proc_190_31_153F0F80 (CInt(7), var_A8)
  loc_153E62B:     var_A8.Text = vbNullString
  loc_153E637:   End If
  loc_153E670:   Set var_C0 = Me.Txt
  loc_153E676:   Call 0.Method_Proc_190_31_153F0F80 (CInt(8), var_C4)
  loc_153E67E:   var_C4.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("Chq_No")))
  loc_153E6A1:   Me.FGrid.Redraw = False
  loc_153E6BC:   Me.FGrid.Rows = 1
  loc_153E6C6:   var_8A = 1
  loc_153E6D6:   var_D4 = "Select TDSCHAL1.*,SUBGROUP.NAME AS ACNAME,LEDGERTDS.DOCID AS LDOCID,LEDGERTDS.V_SNO AS LV_SNO,LEDGERTDS.V_DATE AS LV_DATE From (TDSCHAL1 LEFT Join SUBGROUP on SUBGROUP.SUBCODE=TDSCHAL1.ACCODE) LEFT JOIN LEDGERTDS ON (TDSCHAL1.TDSVSno=LEDGERTDS.TDSV_SNo) AND (TDSCHAL1.TDSDocId=LEDGERTDS.TDSDocId) WHERE TDSCHAL1.DOCID='"
  loc_153E71F:   unk_487AE7.Execute CStr(var_D4 & Me.Fields.Item("DocID").Value & "' ORDER BY VSNO"), var_124, -1
  loc_153E72A:   Set var_88 = var_C0
  loc_153E7E7:   var_188 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), var_88.Fields) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_153E82C:   Me.LblUser.Caption = CStr(var_8A & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_188)))
  loc_153E907:   var_188 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_153E94C:   Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_153E984:   ' Referenced from: 153F00B
  loc_153E993:   If Not(var_88.EOF) Then
  loc_153E996:     var_A4 = vbNullString
  loc_153E9A0:     Set var_94 = Me.FGrid
  loc_153E9B5:     Set var_1E8 = Me.FGrid
  loc_153E9BC:     var_D4 = CVar(CLng(var_8A)) 'Long
  loc_153E9C4:     var_114 = CVar(CLng(0)) 'Long
  loc_153E9F4:     var_E4 = CVar(CStr(var_88.Fields.Item("VSno").Value)) 'String
  loc_153E9FB:     LateIdCallSt
  loc_153EA4A:     var_E4 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("TDSDocId")), CVar(CLng(1)), CVar(CLng(var_8A)), var_1E8, var_E4)) 'String
  loc_153EA51:     LateIdCallSt
  loc_153EA9A:     Proc_183_3_E7DD58(var_E4, CVar(var_88.Fields.Item("TDSVSno")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1E8)
  loc_153EAAA:     LateIdCallSt
  loc_153EB16:     var_148 = CVar(CStr(Mid(CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("LDocID")), var_1E8, CVar(CStr(CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("LDocID")), var_1E8, CVar(CStr(var_E4)), var_E4)))), CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("LDocID")), var_1E8, CVar(CStr(var_E4)), var_E4)))), 4, 5))) 'String
  loc_153EB1D:     LateIdCallSt
  loc_153EB60:     var_BC = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("LDocID")), var_1E8, var_148, CVar(CLng(3)), CVar(CLng(var_8A)))
  loc_153EB67:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_153EB6F:     var_138 = CVar(CLng(4)) 'Long
  loc_153EB81:     var_E4 = CVar(var_BC) 'String
  loc_153EB97:     LateIdCallSt
  loc_153EBE9:     Proc_183_3_E7DD58(var_E4, CVar(var_88.Fields.Item("LV_SNO")), CVar(CLng(5)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(Mid(var_E4, &HE, 8))))
  loc_153EBF2:     var_104 = CVar(CStr(var_E4)) 'String
  loc_153EBF9:     LateIdCallSt
  loc_153EC3C:     If Not(IsNull(CVar(var_88.Fields.Item("LV_Date")))) Then
  loc_153EC43:       var_D4 = CVar(CLng(var_8A)) 'Long
  loc_153EC4B:       var_114 = CVar(CLng(6)) 'Long
  loc_153EC7B:       var_E4 = CVar(CStr(var_88.Fields.Item("LV_Date").Value)) 'String
  loc_153EC82:       LateIdCallSt
  loc_153EC98:     End If
  loc_153EC9C:     var_D4 = CVar(CLng(var_8A)) 'Long
  loc_153ECA4:     var_114 = CVar(CLng(7)) 'Long
  loc_153ECD4:     var_E4 = CVar(CStr(var_88.Fields.Item("AcCode").Value)) 'String
  loc_153ECDB:     LateIdCallSt
  loc_153ECF5:     var_D4 = CVar(CLng(var_8A)) 'Long
  loc_153ECFD:     var_114 = CVar(CLng(8)) 'Long
  loc_153ED2D:     var_E4 = CVar(CStr(var_88.Fields.Item("AcName").Value)) 'String
  loc_153ED34:     LateIdCallSt
  loc_153ED6A:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_153ED72:     var_138 = CVar(CLng(9)) 'Long
  loc_153ED9F:     var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amt")), "0.00"))) 'String
  loc_153EDA6:     LateIdCallSt
  loc_153EDDC:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_153EDE4:     var_138 = CVar(CLng(&HA)) 'Long
  loc_153EE11:     var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TDS")), "0.0000"))) 'String
  loc_153EE18:     LateIdCallSt
  loc_153EE4E:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_153EE8A:     LateIdCallSt
  loc_153EED9:     var_E4 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("CertiNo")), CVar(CLng(&HC)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(Format(CVar(var_88.Fields.Item("TDSAmt")), "0.00"))), 1, 1)) 'String
  loc_153EEE0:     LateIdCallSt
  loc_153EF2B:     var_E4 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("TDSCODE")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_1E8, var_E4, CVar(CLng(&HB)))) 'String
  loc_153EF32:     LateIdCallSt
  loc_153EF73:     If Not(IsNull(CVar(var_88.Fields.Item("CertiDate")))) Then
  loc_153EF7A:       var_D4 = CVar(CLng(var_8A)) 'Long
  loc_153EF82:       var_114 = CVar(CLng(&HD)) 'Long
  loc_153EFB2:       var_E4 = CVar(CStr(var_88.Fields.Item("CertiDate").Value)) 'String
  loc_153EFB9:       LateIdCallSt
  loc_153EFD2:     Else
  loc_153EFD6:       var_A4 = CVar(CLng(var_8A)) 'Long
  loc_153EFDE:       var_F4 = CVar(CLng(&HD)) 'Long
  loc_153EFE3:       var_138 = vbNullString
  loc_153EFEC:       LateIdCallSt
  loc_153EFF4:     End If
  loc_153EFF6:     Set var_1E8 = Nothing 
  loc_153F000:     var_8A = (var_8A + 1)
  loc_153F006:     var_88.MoveNext
  loc_153F00B:     GoTo loc_153E984
  loc_153F00E:   End If
  loc_153F021:   Me.FGrid.FixedRows = 1
  loc_153F037:   Me.FGrid.Redraw = True
  loc_153F045:   If (var_8A = 1) Then
  loc_153F05B:     Me.FGrid.Rows = 1
  loc_153F078:     var_E4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_153F080:     Set var_A8 = Me.FGrid
  loc_153F09C:     var_A4 = 1
  loc_153F0AF:     Me.FGrid.FixedRows = var_A4
  loc_153F0B7:   End If
  loc_153F0BA: Else
  loc_153F0BA:   Call Proc_190_28_F18278(FGrid.DispID_10000, var_E4, var_8A, var_1E8, var_138, var_F4, var_A4)
  loc_153F0BF: End If
  loc_153F0BF: Call Proc_190_30_E85008(var_1E8, var_E4, var_114)
  loc_153F0C9: Set var_88 = Nothing
  loc_153F0CC: Exit Sub
  loc_153F0CD: ' Referenced from: 153E13C
  loc_153F0D3: Call 0.Method_arg_50 (var_BC, var_D4)
  loc_153F0E8: Proc_183_57_104B0BC(var_BC, "MoveRec")
  loc_153F0F4: Exit Sub
End Sub

Public Sub Proc_190_32_1389008
  'Data Table: 487AD4
  Dim var_BC As Variant
  Dim var_A0 As Variant
  Dim var_8A As Integer
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_AC As String
  Dim unk_487AE7 As Connection15
  Dim var_88 As Recordset15
  Dim var_A4 As Variant
  Dim var_1DC As Double
  Dim var_1D0 As TextBox
  loc_138876C: On Error Goto loc_1388FDF
  loc_138877A: Set var_A0 = Me.Txt
  loc_1388780: Call 0.Method_Proc_190_32_13890080 (CInt(3))
  loc_13887A9: If (Proc_183_19_E8E68C(var_A4, "Month & Year") = 0) Then
  loc_13887AC:   Exit Sub
  loc_13887AD: End If
  loc_13887BC: Me.FGrid.Redraw = False
  loc_13887D7: Me.FGrid.Rows = 1
  loc_13887E1: var_8A = 1
  loc_13887EF: Set var_A0 = Me.Txt
  loc_13887F5: Call 0.Method_Proc_190_32_13890080 (CInt(3), var_A4)
  loc_1388826: var_FC = ("01/" + Trim(CVar(var_A4)))
  loc_138882C: var_10C = CDate(CDate(var_FC))
  loc_138883D: var_94 = CDate(Format(var_10C, "DD/MMM/YYYY"))
  loc_1388866: var_DC = DateAdd("M", CDbl(1), var_94)
  loc_1388870: var_9C = CDate(var_DC)
  loc_138887E: var_9C = CDate((var_9C - CDbl(1)))
  loc_138888E: var_CC = "Select LEDGERtds.*,SUBGROUP.NAME AS ACNAME From LEDGERTDS Left Join SUBGROUP On SUBGROUP.SUBCODE=LEDGERTDS.TDSDRCODE Where (TDSPOST='' OR TDSPOST IS NULL) AND V_DATE BETWEEN "
  loc_138889E: Proc_183_7_EB17D4(var_DC, var_94, var_CC, var_1BC, -1, var_A0, var_9C)
  loc_13888BE: Proc_183_7_EB17D4(var_10C, var_9C, var_9C & var_DC & " AND ", var_94)
  loc_13888E6: var_AC = CStr(1 & var_10C & " AND LEDGERtds.LOGSITE_cODE='" & CVar(MemVar_1F95078) & "' Order by TDSDOCID,TDSV_SNO")
  loc_13888F0: unk_487AE7.Execute var_AC, 1, var_8A
  loc_13888FB: Set var_88 = var_A0
  loc_1388919: ' Referenced from: 1388F22
  loc_1388928: If Not(var_88.EOF) Then
  loc_138892B:   var_BC = vbNullString
  loc_1388935:   Set var_A0 = Me.FGrid
  loc_138894A:   Set var_1C4 = Me.FGrid
  loc_1388951:   var_BC = CVar(CLng(var_8A)) 'Long
  loc_1388959:   var_11C = CVar(CLng(0)) 'Long
  loc_1388963:   var_DC = CVar(CStr(var_8A)) 'String
  loc_138896A:   LateIdCallSt
  loc_13889AE:   var_EC = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("TDSDocId")), CVar(CLng(1)), CVar(CLng(var_8A)), var_1C4, CVar(var_88.Fields.Item("TDSDocId")))) 'String
  loc_13889B5:   LateIdCallSt
  loc_13889FE:   Proc_183_3_E7DD58(var_EC, CVar(var_88.Fields.Item("TDSV_Sno")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1C4, var_EC)
  loc_1388A07:   var_FC = CVar(CStr(var_EC)) 'String
  loc_1388A0E:   LateIdCallSt
  loc_1388A42:   var_11C = CVar(CLng(var_8A)) 'Long
  loc_1388A4A:   var_15C = CVar(CLng(3)) 'Long
  loc_1388A6C:   var_10C = CVar(CStr(Mid(CVar(var_88.Fields.Item("DocID")), 4, 5))) 'String
  loc_1388A73:   LateIdCallSt
  loc_1388AA9:   var_11C = CVar(CLng(var_8A)) 'Long
  loc_1388AB1:   var_15C = CVar(CLng(4)) 'Long
  loc_1388AD3:   var_10C = CVar(CStr(Mid(CVar(var_88.Fields.Item("DocID")), &HE, 8))) 'String
  loc_1388ADA:   LateIdCallSt
  loc_1388AF4:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_1388AFC:   var_14C = CVar(CLng(5)) 'Long
  loc_1388B2C:   var_EC = CVar(CStr(var_88.Fields.Item("V_SNo").Value)) 'String
  loc_1388B33:   LateIdCallSt
  loc_1388B4D:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_1388B55:   var_14C = CVar(CLng(6)) 'Long
  loc_1388B85:   var_EC = CVar(CStr(var_88.Fields.Item("V_DATE").Value)) 'String
  loc_1388B8C:   LateIdCallSt
  loc_1388BA6:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_1388BAE:   var_14C = CVar(CLng(7)) 'Long
  loc_1388BDE:   var_EC = CVar(CStr(var_88.Fields.Item("TDSDRCODE").Value)) 'String
  loc_1388BE5:   LateIdCallSt
  loc_1388BFF:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_1388C07:   var_14C = CVar(CLng(8)) 'Long
  loc_1388C37:   var_EC = CVar(CStr(var_88.Fields.Item("AcName").Value)) 'String
  loc_1388C3E:   LateIdCallSt
  loc_1388C74:   var_11C = CVar(CLng(var_8A)) 'Long
  loc_1388C7C:   var_15C = CVar(CLng(9)) 'Long
  loc_1388CA9:   var_10C = CVar(CStr(Format(CVar(var_88.Fields.Item("ONAmt")), "0.00"))) 'String
  loc_1388CB0:   LateIdCallSt
  loc_1388CE6:   var_11C = CVar(CLng(var_8A)) 'Long
  loc_1388CEE:   var_15C = CVar(CLng(&HA)) 'Long
  loc_1388D1B:   var_10C = CVar(CStr(Format(CVar(var_88.Fields.Item("TDS")), "0.0000"))) 'String
  loc_1388D22:   LateIdCallSt
  loc_1388D58:   var_11C = CVar(CLng(var_8A)) 'Long
  loc_1388D60:   var_15C = CVar(CLng(&HB)) 'Long
  loc_1388D8D:   var_10C = CVar(CStr(Format(CVar(var_88.Fields.Item("TDSAmt")), "0.00"))) 'String
  loc_1388D94:   LateIdCallSt
  loc_1388DAE:   var_BC = CVar(CLng(var_8A)) 'Long
  loc_1388DB6:   var_11C = CVar(CLng(&HC)) 'Long
  loc_1388DBB:   var_15C = vbNullString
  loc_1388DC4:   LateIdCallSt
  loc_1388DD0:   var_BC = CVar(CLng(var_8A)) 'Long
  loc_1388DD8:   var_11C = CVar(CLng(&HD)) 'Long
  loc_1388DE6:   LateIdCallSt
  loc_1388E19:   var_A4 = var_88.Fields.Item("TDSCODE")
  loc_1388E31:   LateIdCallSt
  loc_1388E5B:   Set var_A0 = Me.Txt
  loc_1388E61:   Call 0.Method_Proc_190_32_13890080 (CInt(4), var_A4, var_AC, Nothing, CVar(CStr(var_A4.Value)), CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_1388E69:   var_1C4 = var_A4.Text
  loc_1388E76:   var_1DC = Val(var_AC)
  loc_1388EAA:   var_11C = "0.00"
  loc_1388EBF:   var_EC = (CVar(var_1DC) + var_88.Fields.Item("TDSAmt").Value)
  loc_1388EDD:   Set var_1CC = Me.Txt
  loc_1388EE3:   Call 0.Method_Proc_190_32_13890080 (CInt(4), var_1D0, CStr(Format(CVar(CStr(var_A4.Value)), var_11C)), 1, 1, var_1DC)
  loc_1388EEB:   var_1D0.Text = vbNullString
  loc_1388F17:   var_8A = (var_8A + 1)
  loc_1388F1D:   var_88.MoveNext
  loc_1388F22:   GoTo loc_1388919
  loc_1388F25: End If
  loc_1388F2B: If (var_8A = 1) Then
  loc_1388F41:   Me.FGrid.Rows = 2
  loc_1388F5E:   var_EC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1388F66:   Set var_A4 = Me.FGrid
  loc_1388F95:   Me.FGrid.FixedRows = 1
  loc_1388FA0: Else
  loc_1388FB3:   Me.FGrid.FixedRows = 1
  loc_1388FBB: End If
  loc_1388FBB: var_BC = True
  loc_1388FC9: Me.FGrid.Redraw = var_BC
  loc_1388FD1: Call Proc_190_30_E85008(FGrid.DispID_10000, var_EC, var_8A, var_11C)
  loc_1388FDB: Set var_88 = Nothing
  loc_1388FDE: Exit Sub
  loc_1388FDF: ' Referenced from: 138876C
  loc_1388FE5: Call 0.Method_arg_50 (var_AC, var_BC, var_1C4)
  loc_1388FFA: Proc_183_57_104B0BC(var_AC, "FillDetail")
  loc_1389006: Exit Sub
End Sub

Public Sub Proc_190_33_F652AC
  'Data Table: 487AD4
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_487AE7 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  loc_F651A4: Set var_9C = Me.TopCtrl1
  loc_F651AA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F651B2: var_B0 = CStr()
  loc_F651C3: If (var_B0 = "Add") Then
  loc_F651F3:   Set var_9C = Me.Txt
  loc_F651F9:   Call 0.Method_Proc_190_33_F652AC0 (CInt(6), var_B4, var_B0, "Select Count(*) From TDSCHAL Where DOCID='", var_AC, -1)
  loc_F6521A:   unk_487AE7.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_F6522A:    = var_D4.Item()
  loc_F65232:    = var_E8.Value
  loc_F6525F:   If (var_B4.Text.Fields > 0) Then
  loc_F65268:     Call 0.Method_arg_50 (var_B0)
  loc_F65289:     MsgBox("Duplicate Challan No.", &H40, CVar(var_B0), var_118, var_128)
  loc_F6529E:     Proc_190_33_F652AC = &HFF
  loc_F652A4:   End If
  loc_F652A4: End If
  loc_F652A4: Proc_190_33_F652AC = 
End Sub

Public Sub Proc_190_34_119743C
  'Data Table: 487AD4
  Dim var_A4 As Variant
  Dim var_A8 As String
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_148 As Variant
  Dim var_188 As Variant
  Dim var_1C8 As Variant
  Dim var_8C As Recordset15
  Dim var_A0 As Variant
  Dim var_C8 As Variant
  Dim var_94 As Long
  Dim var_22C As Long
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_2A8 As Variant
  loc_119709A: On Error Goto loc_119740D
  loc_11970AB: Set var_A0 = Me.Txt
  loc_11970B1: Call 0.Method_Proc_190_34_119743C0 (CInt(5), var_A4)
  loc_11970C1: var_90 = var_A4.Tag
  loc_11970DF: var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VP.V_Type='" & var_90
  loc_11970F4: Set var_A0 = Me.Txt
  loc_11970FA: Call 0.Method_Proc_190_34_119743C0 (CInt(1), var_A4, CVar(var_A8 & "' And VP.Date_From<="))
  loc_1197109: Proc_183_7_EB17D4(var_C8, CVar(var_A4), var_22C)
  loc_1197111: var_E8 = -1 & var_C8 
  loc_1197140: var_188 = var_E8 & " AND VT.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND VT.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' AND VP.SITE_CODE='" 
  loc_1197171: Me.Txt.Execute CStr(var_188 & CVar(MemVar_1F95070) & "' AND VP.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'  Order By VP.Date_From DESC"), var_230, 
  loc_119717C: Set var_8C = var_230
  loc_11971C0: If (var_8C.RecordCount > 0) Then
  loc_11971FF:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1197202:     GoTo loc_1197283
  loc_1197205:   End If
  loc_1197230:   var_98 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1197257:   var_A4 = var_8C.Fields.Item("start_srl_no")
  loc_119726C:   var_C8 = (var_A4.Value + 1)
  loc_1197272:   var_94 = CLng(var_C8)
  loc_1197283:   ' Referenced from: 1197202
  loc_1197283: End If
  loc_11972AD: var_D8 = (CVar(MemVar_1F9506C & Proc_183_15_EAD490(MemVar_1F95070, 2)) + Trim(var_90))
  loc_11972D1: var_148 = (5 - Len(Trim(CVar(var_90))))
  loc_11972E2: var_188 = (CVar(Proc_183_15_EAD490(MemVar_1F95070, 2) & "' And VP.Date_From<=") + Space(CLng(CVar(var_90) & " AND VT.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND VT.LOGSITE_CODE='")))
  loc_11972F9: var_1C8 = (var_188 + Trim(var_98))
  loc_119731D: var_248 = (5 - Len(Trim(CVar(var_98))))
  loc_119732E: var_268 = (var_188 & CVar(MemVar_1F95070) & "' AND VP.LOGSITE_CODE='" + Space(CLng(var_248)))
  loc_1197344: var_278 = Space((8 - Len(CStr(var_94))))
  loc_119734C: var_288 = (var_268 + var_278)
  loc_1197358: var_2A8 = (var_288 + CVar(CStr(var_94)))
  loc_119735D: var_9C = CStr(var_2A8)
  loc_1197399: Me.LblVPrefix.Caption = var_98
  loc_11973AF: Set var_A0 = Me.Txt
  loc_11973B5: Call 0.Method_Proc_190_34_119743C0 (CInt(6), var_A4)
  loc_11973BD: var_A4.Text = var_9C
  loc_11973CE: var_A8 = CStr(var_94)
  loc_11973DC: Set var_A0 = Me.Txt
  loc_11973E2: Call 0.Method_Proc_190_34_119743C0 (CInt(0), var_A4)
  loc_11973EA: var_A4.Text = var_A8
  loc_11973FC: var_88 = var_9C
  loc_1197404: Set var_8C = Nothing
  loc_1197407: Proc_190_34_119743C = var_94
  loc_119740D: ' Referenced from: 119709A
  loc_1197413: Call 0.Method_arg_50 (var_A8)
  loc_1197428: Proc_183_57_104B0BC(var_A8)
  loc_1197434: Proc_190_34_119743C = "VoucherNo"
End Sub
