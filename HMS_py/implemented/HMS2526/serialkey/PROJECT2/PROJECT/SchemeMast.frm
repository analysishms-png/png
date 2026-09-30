VERSION 5.00
Begin VB.Form SchemeMast
  Caption = "Scheme Master"
  BackColor = &HFFC0C0&
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
  ClientWidth = 13800
  ClientHeight = 7890
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13800
    Height = 450
    TabIndex = 28
  End
  Begin TextBox txt
    Index = 2
    ForeColor = &HC00000&
    Left = 3810
    Top = 2235
    Width = 1395
    Height = 285
    TabIndex = 2
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
  Begin TextBox txt
    Index = 7
    ForeColor = &HC00000&
    Left = 3810
    Top = 3180
    Width = 780
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 6
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
  Begin TextBox txt
    Index = 0
    ForeColor = &HC00000&
    Left = 3810
    Top = 1605
    Width = 4215
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
  Begin TextBox txt
    Index = 6
    ForeColor = &HC00000&
    Left = 4215
    Top = 2865
    Width = 375
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 4
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
  Begin TextBox txt
    Index = 5
    ForeColor = &HC00000&
    Left = 3810
    Top = 2865
    Width = 375
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 4
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
  Begin TextBox txt
    Index = 4
    ForeColor = &HC00000&
    Left = 4215
    Top = 2550
    Width = 375
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 4
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
  Begin TextBox txt
    Index = 3
    ForeColor = &HC00000&
    Left = 3810
    Top = 2550
    Width = 375
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 4
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
  Begin TextBox txt
    Index = 1
    ForeColor = &HC00000&
    Left = 3810
    Top = 1920
    Width = 1395
    Height = 285
    TabIndex = 1
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
  Begin Frame framWeek
    Caption = "Days"
    BackColor = &HFF80FF&
    ForeColor = &HC0&
    Left = 5535
    Top = 2025
    Width = 3510
    Height = 1920
    TabIndex = 8
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
    Begin CheckBox chkday
      Caption = "Sunday"
      Index = 1
      BackColor = &HFFFFFF&
      ForeColor = &H404000&
      Left = 195
      Top = 330
      Width = 1305
      Height = 255
      TabIndex = 9
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
    Begin CheckBox chkday
      Caption = "Monday"
      Index = 2
      BackColor = &HC0FFC0&
      ForeColor = &H404000&
      Left = 1755
      Top = 330
      Width = 1440
      Height = 255
      TabIndex = 10
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
    Begin CheckBox chkday
      Caption = "Tuesday"
      Index = 3
      BackColor = &HC0C0FF&
      ForeColor = &H404000&
      Left = 195
      Top = 660
      Width = 1320
      Height = 255
      TabIndex = 11
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
    Begin CheckBox chkday
      Caption = "Wednesday"
      Index = 4
      BackColor = &HFFFFC0&
      ForeColor = &H404000&
      Left = 1755
      Top = 660
      Width = 1455
      Height = 255
      TabIndex = 12
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
    Begin CheckBox chkday
      Caption = "Thursday"
      Index = 5
      BackColor = &HC0E0FF&
      ForeColor = &H404000&
      Left = 210
      Top = 960
      Width = 1305
      Height = 255
      TabIndex = 13
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
    Begin CheckBox chkday
      Caption = "Friday"
      Index = 6
      BackColor = &HFFC0FF&
      ForeColor = &H404000&
      Left = 1755
      Top = 990
      Width = 1455
      Height = 255
      TabIndex = 14
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
    Begin CheckBox chkday
      Caption = "Saturday"
      Index = 7
      BackColor = &HC0FFFF&
      ForeColor = &H404000&
      Left = 195
      Top = 1305
      Width = 1320
      Height = 255
      TabIndex = 15
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
  End
  Begin MSFlexGrid FGPoint
    Left = 8685
    Top = 4050
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 23
  End
  Begin DataGrid DGHelp
    Left = 9030
    Top = 4245
    Width = 4230
    Height = 1035
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 27
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 6375
    Top = 5700
    Width = 2790
    Height = 285
    TabIndex = 25
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
  Begin Label Label1
    Caption = "End Date :"
    Index = 2
    ForeColor = &HC00000&
    Left = 2310
    Top = 2250
    Width = 975
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
  Begin Label Label2
    Caption = "Yes/No"
    ForeColor = &HC0&
    Left = 4635
    Top = 3225
    Width = 645
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
    Caption = "Active :"
    Index = 5
    ForeColor = &HC00000&
    Left = 2310
    Top = 3210
    Width = 705
    Height = 240
    TabIndex = 20
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
    Caption = "Scheme Name:"
    Index = 0
    ForeColor = &HC00000&
    Left = 2310
    Top = 1620
    Width = 1455
    Height = 240
    TabIndex = 19
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
    Caption = "To Time :"
    Index = 4
    ForeColor = &HC00000&
    Left = 2310
    Top = 2895
    Width = 900
    Height = 240
    TabIndex = 18
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
    Caption = "From Time:"
    Index = 3
    ForeColor = &HC00000&
    Left = 2310
    Top = 2580
    Width = 1095
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
  Begin Label Label1
    Caption = "Start Date :"
    Index = 1
    ForeColor = &HC00000&
    Left = 2310
    Top = 1935
    Width = 1065
    Height = 240
    TabIndex = 16
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 2985
    Top = 5700
    Width = 2880
    Height = 255
    TabIndex = 26
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
End

Attribute VB_Name = "SchemeMast"


Private Sub DGHelp_UnknownEvent_9 'F48E34
  'Data Table: 4631E0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F48D2B: Me.DGHelp.Visible = False
  loc_F48D4A: If (Me.RecordCount > 0) Then
  loc_F48D89:   Set var_B4 = Me.txt
  loc_F48D8F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F48D97:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F48DCA:   var_B0 = Me.Fields.Item("Name")
  loc_F48DE9:   Set var_B4 = Me.txt
  loc_F48DEF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F48DF7:   var_B8.Text = CStr(var_B0.Value)
  loc_F48E0D: End If
  loc_F48E18: Set var_A8 = Me.txt
  loc_F48E1E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F48E26: var_B0.SetFocus
  loc_F48E32: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EB6978
  'Data Table: 4631E0
  Dim var_A8 As Variant
  loc_EB68EC: Set var_88 = Me.DGHelp
  loc_EB6916: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EB691E: Set var_BC = Me.DGHelp
  loc_EB693E: Call 0.Method_DGHelp_UnknownEvent_1F8 (var_C0, DGHelp.DispID_1B)
  loc_EB6947: Set var_BC = Me.FGPoint
  loc_EB6964: Proc_6_138_106E830(Me.DGHelp, global_64, CInt(var_C0))
  loc_EB6975: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED3174
  'Data Table: 4631E0
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_ED30C0: On Error Goto loc_ED316E
  loc_ED30E6: Call Proc_215_25_E886A8(Proc_5_1_100EC1C("ADD", Me))
  loc_ED30F1: Call Proc_215_26_EF39E8(global_52)
  loc_ED3104: Set var_8C = Me.txt
  loc_ED310A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_94)
  loc_ED3112: var_94.Text = "Yes"
  loc_ED3129: Set var_8C = Me.txt
  loc_ED312F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED3137: var_94.SetFocus
  loc_ED3150: Me.LblUser.Caption = vbNullString
  loc_ED3165: Me.LblLDt.Caption = vbNullString
  loc_ED316D: Exit Sub
  loc_ED316E: ' Referenced from: ED30C0
  loc_ED316E: Proc_6_60_E63754(var_94)
  loc_ED3173: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBE1BC
  'Data Table: 4631E0
  loc_EBE128: On Error Goto loc_EBE1B3
  loc_EBE162: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBE171:   Set var_110 = Me
  loc_EBE188:   Call Proc_215_25_E886A8(Proc_5_1_100EC1C("INI", var_110))
  loc_EBE193:   Call Proc_215_27_1375EA8(global_52)
  loc_EBE19B: Else
  loc_EBE1A1:   Call 0.Method_arg_1E8 (var_110)
  loc_EBE1A9:   Call var_110.SetFocus
  loc_EBE1B2: End If
  loc_EBE1B2: Exit Sub
  loc_EBE1B3: ' Referenced from: EBE128
  loc_EBE1B3: Proc_6_60_E63754()
  loc_EBE1B8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11BD430
  'Data Table: 4631E0
  Dim var_9C As TextBox
  Dim var_A4 As String
  Dim unk_4631F6 As Connection15
  Dim var_D4 As Recordset15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  Dim var_FC As Variant
  Dim var_A0 As String
  Dim var_D0 As Variant
  Dim Me As Recordset15
  loc_11BD018: On Error Goto loc_11BD3E0
  loc_11BD029: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_11BD02C:   Exit Sub
  loc_11BD02D: End If
  loc_11BD05A: Set var_98 = Me.txt
  loc_11BD060: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C, var_A0, "Select Count(*) From Stock WHERE IsNull(DelFlag,'') Not In ('D','Y') And IsNull(FreeSno,0)<>0 And IsNull(SchemeCode,'') ='", var_D0, -1)
  loc_11BD071: var_A4 = var_D8 & var_A0
  loc_11BD08F: unk_4631F6.Execute var_A4 & "' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')", 0, var_EC
  loc_11BD097: var_FC = var_9C.Tag.Fields
  loc_11BD09F:  = var_D8.Item()
  loc_11BD0A7:  = var_EC.Value
  loc_11BD0B2: Proc_6_39_E7D3A0(var_10C)
  loc_11BD0E5: If (var_10C > 0) Then
  loc_11BD0EE:   Call 0.Method_arg_50 (var_A4)
  loc_11BD10B:   var_A0 = "Related Entry Exists In Stock." & vbCrLf
  loc_11BD112:   var_D0 = CVar(var_A0 & "Record Can't Be Deleted!") 'String
  loc_11BD115:   MsgBox(var_D0, &H10, CVar(var_A4), var_10C, var_12C)
  loc_11BD128:   Exit Sub
  loc_11BD129: End If
  loc_11BD156: Set var_98 = Me.txt
  loc_11BD15C: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C, var_A0, "Select Count(*) From SchemeItemDetail WHERE IsNull(SchemeCode,'') ='", var_D0, -1)
  loc_11BD164: var_D4 = var_9C.Tag
  loc_11BD16D: var_A4 = var_D8 & var_A0
  loc_11BD18B: unk_4631F6.Execute var_A4 & "' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')", 0, var_EC
  loc_11BD19B:  = var_D8.Item(var_D4.Fields)
  loc_11BD1A3:  = var_EC.Value
  loc_11BD1AE: Proc_6_39_E7D3A0(var_10C)
  loc_11BD1E1: If (var_10C > 0) Then
  loc_11BD1EA:   Call 0.Method_arg_50 (var_A4)
  loc_11BD1F8:   var_FC = CVar(var_A4) 'String
  loc_11BD207:   var_A0 = "Related Entry Exists In Scheme Item Detail." & vbCrLf
  loc_11BD211:   MsgBox(CVar(var_A0 & "Record Can't Be Deleted!"), &H10, var_FC, var_10C, var_12C)
  loc_11BD224:   Exit Sub
  loc_11BD225: End If
  loc_11BD22E: unk_4631F6.BeginTrans var_130
  loc_11BD244: var_94 = Me.Bookmark 'Variant
  loc_11BD266: Set var_98 = Me.txt
  loc_11BD26C: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C, var_A0, "Delete from SchemeMast WHERE Code ='")
  loc_11BD274: var_D0 = var_9C.Tag
  loc_11BD27D: var_A4 = -1 & var_A0
  loc_11BD29B: unk_4631F6.Execute var_A4 & "' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ", var_D4, var_FC
  loc_11BD2C7: Set var_98 = Me.txt
  loc_11BD2CD: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C)
  loc_11BD2D5: var_A0 = var_9C.Tag
  loc_11BD2DF: var_15C = 0
  loc_11BD2F2: var_154 = 0
  loc_11BD2FD: var_150 = 0
  loc_11BD376: Proc_154_5_10E3BD4(MemVar_1F95044, "SchemeMast", "Code", 2, var_A0, 0, 0, 0)
  loc_11BD3A1: unk_4631F6.CommitTrans
  loc_11BD3B1: Me.Requery -1
  loc_11BD3B6: Call Proc_215_27_1375EA8(0, 0, 0, 0)
  loc_11BD3D7: Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_11BD3DF: Exit Sub
  loc_11BD3E0: ' Referenced from: 11BD018
  loc_11BD3E6: unk_4631F6.RollbackTrans
  loc_11BD3F3: Set var_98 = Err()
  loc_11BD3F9: Call 0.Method_arg_2C (var_A0, 0, var_150)
  loc_11BD41A: MsgBox(CVar(var_A0), &H30, " Deletion Error ", var_10C, var_12C)
  loc_11BD42D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'ECEBDC
  'Data Table: 4631E0
  Dim var_9C As TextBox
  Dim var_94 As Label
  loc_ECEB30: On Error Goto loc_ECEBD3
  loc_ECEB41: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_ECEB44:   Exit Sub
  loc_ECEB45: End If
  loc_ECEB68: Call Proc_215_25_E886A8(Proc_5_1_100EC1C("EDIT", Me))
  loc_ECEB81: Set var_94 = Me.txt
  loc_ECEB87: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_9C)
  loc_ECEB9A: global_60 = var_9C.Tag
  loc_ECEBB5: Me.LblUser.Caption = vbNullString
  loc_ECEBCA: Me.LblLDt.Caption = vbNullString
  loc_ECEBD2: Exit Sub
  loc_ECEBD3: ' Referenced from: ECEB30
  loc_ECEBD3: Proc_6_60_E63754(global_52)
  loc_ECEBD8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16470
  'Data Table: 4631E0
  loc_E16465: Me.Global.Unload Me
  loc_E1646D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F27880
  'Data Table: 4631E0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F27780: On Error Goto loc_F27818
  loc_F2778C: var_88 = Me.RecordCount
  loc_F2779A: If (var_88 <= 0) Then
  loc_F277A3:   var_B8 = "Information"
  loc_F277BE:   MsgBox("No Records Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F277CE:   Exit Sub
  loc_F277CF: End If
  loc_F277D6: var_10C = "SELECT Code As SearchCode, Name as SchemeName ,Convert(Varchar(11),StartDate,103) As StartDate,Convert(Varchar(11),EndDate,103) As EndDate, FromTime , ToTime  , Days As Days, Active FROM SchemeMast WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_F277DD: MemVar_1F950E4 = var_10C & "' or LOGSITE_CODE='HO')  Order By StartDate"
  loc_F277EA: MemVar_1F95120 = Me
  loc_F277F1: var_10C = "2000,1100,1100,1050,900,900,800"
  loc_F277F7: Proc_6_126_F1C850(var_10C)
  loc_F27812: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F27817: Exit Sub
  loc_F27818: ' Referenced from: F27780
  loc_F27820: Set var_110 = Err()
  loc_F27826: Call 0.Method_arg_1C (var_88)
  loc_F27837: If (var_88 <> 0) Then
  loc_F27842:   Set var_110 = Err()
  loc_F27848:   Call 0.Method_arg_2C (var_10C)
  loc_F27869:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F2787C: End If
  loc_F2787C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E30BA8
  'Data Table: 4631E0
  loc_E30B98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30BA0: Call Proc_215_27_1375EA8(global_52)
  loc_E30BA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E30F68
  'Data Table: 4631E0
  loc_E30F58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30F60: Call Proc_215_27_1375EA8(global_52)
  loc_E30F65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E30E48
  'Data Table: 4631E0
  loc_E30E38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30E40: Call Proc_215_27_1375EA8(global_52)
  loc_E30E45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E30DE8
  'Data Table: 4631E0
  loc_E30DD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30DE0: Call Proc_215_27_1375EA8(global_52)
  loc_E30DE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E16340
  'Data Table: 4631E0
  loc_E1632C: Set var_88 = Me.DGHelp
  loc_E1633D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '151A120
  'Data Table: 4631E0
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_130 As Variant
  Dim var_A0 As Long
  Dim unk_4631F6 As Connection15
  Dim var_138 As String
  Dim var_13C As String
  Dim var_12C As Variant
  Dim var_140 As Field20
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim Me As Recordset15
  Dim var_C4 As Variant
  Dim var_158 As TextBox
  Dim var_16C As Variant
  Dim var_1A4 As TextBox
  Dim var_1B8 As Variant
  Dim var_1F0 As TextBox
  Dim var_1FC As TextBox
  Dim var_204 As String
  Dim var_26C As TextBox
  Dim var_278 As TextBox
  Dim var_280 As String
  Dim var_2F8 As TextBox
  Dim var_1D8 As Variant
  Dim var_244 As Variant
  Dim var_2F0 As Variant
  Dim var_3AC As Variant
  Dim var_42C As Variant
  Dim var_4DC As Variant
  Dim var_1F4 As String
  Dim var_270 As String
  Dim var_17C As Variant
  Dim var_1C8 As Variant
  Dim var_234 As Variant
  Dim var_35C As Variant
  Dim var_46C As Variant
  Dim var_500 As Variant
  Dim var_2B0 As Variant
  loc_15192E0: On Error Goto loc_151A0CE
  loc_15192E3: Call Proc_215_28_E43478()
  loc_15192EC: var_86 = CByte(0) 'Byte
  loc_15192F3: Call Proc_215_31_E72294(var_A2)
  loc_15192FE: If (var_A2 = 0) Then
  loc_151930C:   var_E4 = "Days Required"
  loc_151931C:   var_C4 = "Choose atleast One Day for Scheme !"
  loc_1519322:   MsgBox(var_C4, &H40, var_E4, var_104, var_124)
  loc_1519332:   Exit Sub
  loc_1519336: Else
  loc_1519341:   For var_128 = CByte(1) To CByte(7):   var_9A = var_128 'Byte
  loc_1519357:     Set var_12C = Me.chkday
  loc_151935D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_9A), var_130)
  loc_151937B:     If (CLng(var_130.Value) = 1) Then
  loc_151938D:       var_A0 = ((var_A0 * &HA) + CLng(var_9A))
  loc_1519390:     End If
  loc_1519393:   Next var_128 'Byte
  loc_1519399: End If
  loc_15193A2: unk_4631F6.BeginTrans var_134
  loc_15193AB: var_86 = CByte(1) 'Byte
  loc_15193B3: Set var_12C = Me.TopCtrl1
  loc_15193B9: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_15193D2: If (CStr() = "Add") Then
  loc_15193DB:   var_D4 = 0
  loc_15193F8:   var_138 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From SchemeMast Where SITE_CODE='" & MemVar_1F95070
  loc_1519408:   unk_4631F6.Execute CStr() & "'", var_C4, -1
  loc_1519410:   var_12C = var_12C.Fields
  loc_1519418:   var_D4 = var_130.Item(var_130)
  loc_1519420:   var_140 = var_140.Value
  loc_1519459:   var_104 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1519487:   var_124 = (1 + Format(CStr(var_E4), "0000"))
  loc_1519492:   global_80 = CStr(var_124)
  loc_15194A7: Else
  loc_15194C4:   var_130 = Me.Fields.Item("Code")
  loc_15194DB:   global_80 = CStr(var_130.Value)
  loc_15194EC: End If
  loc_15194F0: Set var_12C = Me.TopCtrl1
  loc_15194F6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_151950F: If (CStr(var_104) = "Add") Then
  loc_1519520:   Set var_12C = Me.txt
  loc_1519526:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_130)
  loc_151954F:   Set var_140 = Me.txt
  loc_1519555:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_158)
  loc_1519565:   var_16C = CVar(var_158.Text) 'String
  loc_151956B:   Proc_6_7_F26918(var_17C, var_16C)
  loc_151957E:   Set var_1A0 = Me.txt
  loc_1519584:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1A4)
  loc_1519594:   var_1B8 = CVar(var_1A4.Text) 'String
  loc_151959A:   Proc_6_7_F26918(var_1C8, var_1B8)
  loc_15195AD:   Set var_1EC = Me.txt
  loc_15195B3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1F0)
  loc_15195CE:   Set var_1F8 = Me.txt
  loc_15195D4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1FC)
  loc_15195DC:   var_200 = var_1FC.Text
  loc_15195FD:   var_204 = var_1F0.Text & ":"
  loc_151961D:   Set var_268 = Me.txt
  loc_1519623:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_26C, var_270)
  loc_151962B:   1 = var_26C.Text
  loc_151963E:   Set var_274 = Me.txt
  loc_1519644:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_278, var_27C)
  loc_151964C:   1 = var_278.Text
  loc_151968D:   Set var_2F4 = Me.txt
  loc_1519693:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2F8, var_2FC)
  loc_151969B:   1 = var_2F8.Text
  loc_15196CD:   var_45C = Date
  loc_15196D8:   Proc_6_7_F26918(var_46C, var_45C)
  loc_15196F1:   var_138 = "Insert into Schememast(Code,Name,Startdate,EndDate,FromTime,ToTime,Active, " & "Days,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_15196FB:   var_13C = var_138 & global_80
  loc_1519738:   var_244 = CVar(var_13C & "','") & Trim(CVar(var_130.Text)) & "'," & var_17C & "," & var_1C8 & ",'" & Format(CVar(var_204 & var_200), "HH:nn") 
  loc_151976C:   var_3AC = var_244 & "','" & Format(CVar(var_270 & ":" & var_27C), "HH:nn") & "','" & IIf((var_2FC = "Yes"), "Y", "N") & "'," & CVar(var_A0) 
  loc_15197BE:   var_4DC = var_3AC & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_46C & ",'A','" & CVar(MemVar_1F95078) & "')" 
  loc_15197CC:   unk_4631F6.Execute CStr(var_4DC), var_500, -1
  loc_1519867: Else
  loc_1519875:   Set var_12C = Me.txt
  loc_151987B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_130, var_138)
  loc_1519883:   var_504 = var_130.Text
  loc_1519891:   var_E4 = Trim(CVar(var_138))
  loc_15198A4:   Set var_140 = Me.txt
  loc_15198AA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_158, var_13C)
  loc_15198B2:   1 = var_158.Text
  loc_15198C0:   Proc_6_7_F26918(var_16C, CVar(var_13C))
  loc_15198D3:   Set var_1A0 = Me.txt
  loc_15198D9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1A4)
  loc_15198EF:   Proc_6_7_F26918(var_1B8, CVar(var_1A4.Text))
  loc_1519902:   Set var_1EC = Me.txt
  loc_1519908:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1F0)
  loc_1519923:   Set var_1F8 = Me.txt
  loc_1519929:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1FC)
  loc_1519952:   var_1F4 = var_1F0.Text & ":"
  loc_1519972:   Set var_268 = Me.txt
  loc_1519978:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_26C, var_200)
  loc_1519980:   1 = var_26C.Text
  loc_1519993:   Set var_274 = Me.txt
  loc_1519999:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_278, var_204)
  loc_15199A1:   1 = var_278.Text
  loc_15199E2:   Set var_2F4 = Me.txt
  loc_15199E8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2F8, var_27C)
  loc_15199F0:   1 = var_2F8.Text
  loc_1519A05:   var_2F0 = "Y"
  loc_1519A2D:   Proc_6_7_F26918(var_45C, Date)
  loc_1519A77:   var_234 = "UpDate Schememast Set Name='" & var_E4 & "',Startdate=" & var_16C & ",EndDate=" & var_1B8 & ",FromTime='" & Format(CVar(var_1F4 & var_1FC.Text), "HH:nn") 
  loc_1519A97:   var_35C = var_234 & "',ToTime='" & Format(CVar(var_200 & ":" & var_204), "HH:nn") & "',Active='" & IIf((var_27C = "Yes"), var_2F0, "N") 
  loc_1519ADA:   var_42C = var_35C & "',Days=" & CVar(var_A0) & ",Site_Code='" & CVar(MemVar_1F95070) & "',U_Name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" 
  loc_1519B17:   var_280 = CStr(var_42C & var_45C & ",U_AE='E',LogSite_Code='" & CVar(MemVar_1F95078) & "' Where Code='" & CVar(global_60) & "'")
  loc_1519B21:   unk_4631F6.Execute var_280, var_544, -1
  loc_1519BC5:   Set var_12C = Me.txt
  loc_1519BCB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_130, var_138)
  loc_1519BD3:   var_504 = var_130.Text
  loc_1519BE1:   Proc_6_7_F26918(var_E4, CVar(var_138))
  loc_1519BF4:   Set var_140 = Me.txt
  loc_1519BFA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_158, var_13C)
  loc_1519C02:   1 = var_158.Text
  loc_1519C10:   Proc_6_7_F26918(var_16C, CVar(var_13C))
  loc_1519C23:   Set var_1A0 = Me.txt
  loc_1519C29:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A4)
  loc_1519C44:   Set var_1EC = Me.txt
  loc_1519C4A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1F0)
  loc_1519C93:   Set var_1F8 = Me.txt
  loc_1519C99:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1FC, var_1F4)
  loc_1519CA1:   1 = var_1FC.Text
  loc_1519CB4:   Set var_268 = Me.txt
  loc_1519CBA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_26C, var_200)
  loc_1519CC2:   1 = var_26C.Text
  loc_1519D2A:   var_1D8 = "Update SchemeItemDetail Set AppDate=" & var_E4 & ",EndDate=" & var_16C & ",FromTime='" & Format(CVar(var_1A4.Text & ":" & var_1F0.Text), "HH:nn") 
  loc_1519D57:   var_2B0 = var_1D8 & "',ToTime='" & Format(CVar(var_1F4 & ":" & var_200), "HH:nn") & "',Days=" & CVar(var_A0) & " Where SchemeCode='" 
  loc_1519D7B:   unk_4631F6.Execute CStr(var_2B0 & CVar(global_60) & "'"), var_2F0, -1
  loc_1519DED:   Set var_12C = Me.txt
  loc_1519DF3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_130, var_138, var_274)
  loc_1519DFB:   1 = var_130.Text
  loc_1519E09:   Proc_6_7_F26918(var_E4, CVar(var_138))
  loc_1519E1C:   Set var_140 = Me.txt
  loc_1519E22:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_158, var_13C)
  loc_1519E2A:   1 = var_158.Text
  loc_1519E38:   Proc_6_7_F26918(var_16C, CVar(var_13C))
  loc_1519E4B:   Set var_1A0 = Me.txt
  loc_1519E51:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A4)
  loc_1519E6C:   Set var_1EC = Me.txt
  loc_1519E72:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1F0)
  loc_1519EBB:   Set var_1F8 = Me.txt
  loc_1519EC1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1FC, var_1F4)
  loc_1519EC9:   1 = var_1FC.Text
  loc_1519EDC:   Set var_268 = Me.txt
  loc_1519EE2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_26C, var_200)
  loc_1519EEA:   1 = var_26C.Text
  loc_1519F2A:   var_B4 = "Update SchemeOutletDiscount Set AppDate="
  loc_1519F32:   var_104 = var_B4 & var_E4 
  loc_1519F3B:   var_124 = var_104 & ",EndDate=" 
  loc_1519F62:   var_244 = var_124 & var_16C & ",FromTime='" & Format(CVar(var_1A4.Text & ":" & var_1F0.Text), "HH:nn") & "',ToTime='" & Format(CVar(var_1F4 & ":" & var_200), "HH:nn") 
  loc_1519FA3:   unk_4631F6.Execute CStr(var_244 & "',Days=" & CVar(var_A0) & " Where SchemeCode='" & CVar(global_60) & "'"), var_2F0, -1
  loc_151A007: End If
  loc_151A00D: unk_4631F6.CommitTrans
  loc_151A016: var_86 = CByte(0) 'Byte
  loc_151A025: Me.Requery -1
  loc_151A035: Me.Requery -1
  loc_151A062: Me.Find "Code='" & global_80 & "'", 0, 1
  loc_151A072: Set var_12C = Me.TopCtrl1
  loc_151A078: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_B4)
  loc_151A091: If (CStr(var_274) = "Add") Then
  loc_151A094:   Call TopCtrl1_UnknownEvent_A()
  loc_151A099:   Exit Sub
  loc_151A09A: End If
  loc_151A0AF: var_138 = "INI"
  loc_151A0BD: Call Proc_215_25_E886A8(Proc_5_1_100EC1C(var_138, Me, global_52), 1)
  loc_151A0C8: Call Proc_215_27_1375EA8(1)
  loc_151A0CD: Exit Sub
  loc_151A0CE: ' Referenced from: 15192E0
  loc_151A0D7: If (CInt(var_86) = 1) Then
  loc_151A0E0:   unk_4631F6.RollbackTrans
  loc_151A0E5: End If
  loc_151A0ED: Set var_12C = Err()
  loc_151A0F3: Call 0.Method_arg_2C (var_138)
  loc_151A10C: MsgBox(CVar(var_138), &H10, var_E4, var_104, var_124)
  loc_151A11F: Exit Sub
End Sub

Private Sub Form_Load() '10A36F4
  'Data Table: 4631E0
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_C4 As TextBox
  Dim var_CC As DataGrid
  Dim var_D0 As TextBox
  Dim unk_4631F6 As Connection15
  loc_10A3440: On Error Goto loc_10A36B0
  loc_10A3452: Me.LblUser.Left = CDbl(13500)
  loc_10A3469: Me.LblUser.Top = CDbl(7800)
  loc_10A3480: Me.LblLDt.Top = CDbl(8160)
  loc_10A3497: Me.LblLDt.Left = CDbl(13500)
  loc_10A34A6: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10A34B9: Me.framWeek.BackColor = CLng(MemVar_1F951B4)
  loc_10A34CB: Set var_8C = Me.TopCtrl1
  loc_10A34D1: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_10A34DF: Call 0.Method_arg_50 (var_B0)
  loc_10A34EF: Set var_8C = Me.TopCtrl1
  loc_10A34F5: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(CVar(var_B0))
  loc_10A350A: Set global_64 = New 
  loc_10A351C: Me.TopCtrl1.CursorLocation = 3
  loc_10A3546: var_C0 = CVar("SELECT Code, Name  FROM SchemeMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_10A3550: Me.Open var_C0, CVar(MemVar_1F95044), 2
  loc_10A3564: CVarUnk
  loc_10A3569: VerifyVarObj
  loc_10A356F: Set var_8C = Me.DGHelp
  loc_10A3575: LateIdStAd
  loc_10A3597: Call 0.Method_Form_Load0 (CInt(0), var_C4, var_C8, Me.txt)
  loc_10A359F: global_64 = var_C4.Left
  loc_10A35B6: Me.DGHelp.Left = CVar(var_C8)
  loc_10A35D2: Set var_CC = Me.txt
  loc_10A35D8: Call 0.Method_Form_Load0 (CInt(0), var_D0, var_D4)
  loc_10A35E0: 3 = var_D0.Height
  loc_10A35F9: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_10A3611: var_9C = CVar(((var_C4.Top + var_D4) + CDbl(&H1E))) 'Single
  loc_10A3620: Me.DGHelp.Top = CVar(var_C4.Top)
  loc_10A3646: var_B0 = "SELECT Code, Name as SchemeName ,StartDate,EndDate, FromTime , ToTime  , Days As DayCode, Active , Site_Code, LOGSITE_CODE  FROM SchemeMast WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_10A3656: unk_4631F6.Execute var_B0 & "' or LOGSITE_CODE='HO') ", var_C0, -1
  loc_10A3691: var_B0 = "INI"
  loc_10A369F: Call Proc_215_25_E886A8(Proc_5_1_100EC1C(var_B0, Me, Me.txt), Me)
  loc_10A36AA: Call Proc_215_27_1375EA8(-1)
  loc_10A36AF: Exit Sub
  loc_10A36B0: ' Referenced from: 10A3440
  loc_10A36B8: Set var_8C = Err()
  loc_10A36BE: Call 0.Method_arg_2C (var_B0)
  loc_10A36DF: MsgBox(CVar(var_B0), &H40, "Information", var_100, var_120)
  loc_10A36F2: Exit Sub
  loc_10A36F3: Exit Sub
End Sub

Private Sub Form_Resize() 'ED2808
  'Data Table: 4631E0
  Dim var_8C As Label
  loc_ED2766: Call 0.Method_arg_50 (var_88)
  loc_ED2778: Me.LblFormCaption.Caption = var_88
  loc_ED2791: Me.LblFormCaption.Left = CDbl(0)
  loc_ED279D: Set var_A0 = Me.TopCtrl1
  loc_ED27A3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED27B0: Set var_8C = Me.TopCtrl1
  loc_ED27B6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED27D0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED27EB: Call 0.Method_arg_100 (var_B8)
  loc_ED27FD: Me.LblFormCaption.Width = var_B8
  loc_ED2805: Exit Sub
  loc_ED2806: DOC
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2AD78
  'Data Table: 4631E0
  loc_E2AD5B: Set global_64 = Nothing
  loc_E2AD6D: Set global_52 = Nothing
  loc_E2AD74: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8A784
  'Data Table: 4631E0
  loc_E8A720: On Error Goto loc_E8A740
  loc_E8A737: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8A73F: Exit Sub
  loc_E8A740: ' Referenced from: E8A720
  loc_E8A748: Set var_88 = Err()
  loc_E8A74E: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8A76F: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8A782: Exit Sub
  loc_E8A783: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E30A24
  'Data Table: 4631E0
  loc_E30A18: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E30A1B:   Call DGHelp_UnknownEvent_9()
  loc_E30A20: End If
  loc_E30A20: Exit Sub
  loc_E30A22: Result  &  End Sub 'Currency
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FED058
  'Data Table: 4631E0
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_FECE8E: Set var_88 = Me.txt
  loc_FECE94: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FECEA2: Proc_6_74_E23240(var_8C)
  loc_FECEAE: Call Proc_215_28_E43478(var_8C)
  loc_FECEB6: var_92 = Index
  loc_FECEC1: If (var_92 = CInt(0)) Then
  loc_FECEDB:   If (Me.RecordCount > 0) Then
  loc_FECEE9:     Set var_8C = Me.FGPoint
  loc_FECF01:     Proc_6_137_1192FDC(Me.DGHelp, global_64, Index)
  loc_FECF0F:   End If
  loc_FECF5D:   Set var_88 = Me.txt
  loc_FECF63:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FECF6B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FECF83:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FECF86:     Exit Sub
  loc_FECF87:   End If
  loc_FECF94:   Set var_88 = Me.txt
  loc_FECF9A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FECFA2:   var_A0 = var_8C.Text
  loc_FECFB4:   var_B0 = "Name"
  loc_FECFEF:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FECFF8:     Me.MoveFirst
  loc_FED01B:     Set var_88 = Me.txt
  loc_FED021:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FED029:     0 = var_8C.Text
  loc_FED042:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FED057:   End If
  loc_FED057: End If
  loc_FED057: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FB5288
  'Data Table: 4631E0
  Dim Me As Recordset15
  loc_FB50F6: If (CLng(Shift) = &H1B) Then
  loc_FB50F9:   Call Proc_215_28_E43478()
  loc_FB50FE:   Exit Sub
  loc_FB50FF: End If
  loc_FB510D: If (KeyCode = CInt(0)) Then
  loc_FB5132:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_FB5152:     Set var_9C = Me.FGPoint
  loc_FB5180:     Proc_6_79_11AD564(Me.DGHelp, Me.txt, KeyCode, global_64, Shift)
  loc_FB5194:   End If
  loc_FB51ED:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FB51F4:     Set var_9C = Me.DGHelp
  loc_FB5213:     Proc_6_138_106E830(var_9C, global_64, KeyCode, Me.FGPoint, 0)
  loc_FB5221:   End If
  loc_FB5221: End If
  loc_FB523D: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FB5253:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FB525C:     Proc_6_76_E533C8(Shift, arg_14, 1)
  loc_FB5261:   End If
  loc_FB5276:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FB527F:     Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_FB5284:   End If
  loc_FB5284: End If
  loc_FB5284: Exit Sub
  loc_FB5285: CExtInstUnk
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FBF708
  'Data Table: 4631E0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_FBF55F: Proc_6_58_E06050(arg_10)
  loc_FBF56A: Proc_6_133_E7FB08(var_94)
  loc_FBF57F: If (CInt(var_94) = &HD) Then
  loc_FBF584:   arg_10 = 0
  loc_FBF587: End If
  loc_FBF58A: var_96 = KeyAscii
  loc_FBF595: If (var_96 = CInt(0)) Then
  loc_FBF5B4:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FBF5C2:     Set var_A0 = Me.FGPoint
  loc_FBF5DA:     Proc_6_138_106E830(Me.DGHelp, global_64, KeyAscii, var_A0)
  loc_FBF5E8:   End If
  loc_FBF5EB: Else
  loc_FBF5F3:   If Not (var_96 = CInt(3)) Then
  loc_FBF5FE:     If Not (var_96 = CInt(4)) Then
  loc_FBF609:       If Not (var_96 = CInt(5)) Then
  loc_FBF614:         If (var_96 = CInt(6)) Then
  loc_FBF617:         End If
  loc_FBF617:       End If
  loc_FBF617:     End If
  loc_FBF621:     Set var_9C = Me.txt
  loc_FBF627:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_FBF642:     Proc_6_42_129B55C(var_A0, arg_10, 2, 0)
  loc_FBF651:   Else
  loc_FBF659:     If (var_96 = CInt(7)) Then
  loc_FBF682:       If (Ucase(CVar(Chr$(CLng(arg_10)))) = "Y") Then
  loc_FBF692:         Set var_9C = Me.txt
  loc_FBF698:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_FBF6A0:         var_A0.Text = arg_10
  loc_FBF6AF:       Else
  loc_FBF6D5:         If (Ucase(CVar(Chr$(CLng(arg_10)))) = "N") Then
  loc_FBF6E5:           Set var_9C = Me.txt
  loc_FBF6EB:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No")
  loc_FBF6F3:           var_A0.Text = arg_10
  loc_FBF6FF:         End If
  loc_FBF6FF:       End If
  loc_FBF701:       arg_10 = 0
  loc_FBF704:     End If
  loc_FBF704:   End If
  loc_FBF704: End If
  loc_FBF704: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4ECC4
  'Data Table: 4631E0
  loc_E4ECA2: Set var_88 = Me.txt
  loc_E4ECA8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4ECB6: Proc_6_73_E23294(var_8C)
  loc_E4ECC2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13DC098
  'Data Table: 4631E0
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_94 As String
  Dim var_A0 As TextBox
  Dim var_9C As TextBox
  Dim arg_10 As Integer
  Dim var_100 As Double
  Dim var_F8 As String
  loc_13DB6BF: var_86 = Cancel
  loc_13DB6CA: If Not (var_86 = CInt(1)) Then
  loc_13DB6D5:   If (var_86 = CInt(2)) Then
  loc_13DB6D8:   End If
  loc_13DB6E5:   Set var_8C = Me.txt
  loc_13DB6EB:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DB70A:   If (var_90.Text <> vbNullString) Then
  loc_13DB717:     Set var_8C = Me.txt
  loc_13DB71D:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DB73D:     Set var_9C = Me.txt
  loc_13DB743:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_13DB74B:     var_A0.Text = Proc_6_33_15125B8(var_90)
  loc_13DB761:   Else
  loc_13DB773:     Set var_8C = Me.txt
  loc_13DB779:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DB781:     var_90.Text = CStr(MemVar_1F950EC)
  loc_13DB790:   End If
  loc_13DB793: Else
  loc_13DB79B:   If (var_86 = CInt(0)) Then
  loc_13DB7A9:     Set var_8C = Me.txt
  loc_13DB7AF:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_13DB7D5:     Set var_98 = Me.txt
  loc_13DB7DB:     Call 0.Method_Txt_Validate0 (CInt(0), var_9C)
  loc_13DB7E3:     var_9C.Text = CStr(Trim(CVar(var_90)))
  loc_13DB7FE:     Call Proc_215_29_108A484(var_C2)
  loc_13DB809:     If (var_C2 = &HFF) Then
  loc_13DB80E:       arg_10 = &HFF
  loc_13DB811:       Exit Sub
  loc_13DB812:     End If
  loc_13DB81D:     Set var_8C = Me.txt
  loc_13DB823:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_13DB82B:     var_94 = "Name"
  loc_13DB84C:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_13DB851:       arg_10 = &HFF
  loc_13DB854:       Exit Sub
  loc_13DB855:     End If
  loc_13DB858:   Else
  loc_13DB860:     If (var_86 = CInt(3)) Then
  loc_13DB870:       Set var_8C = Me.txt
  loc_13DB876:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DB87E:       arg_10 = var_90.Text
  loc_13DB895:       If (var_94 = vbNullString) Then
  loc_13DB8C3:         var_94 = CStr(Format(Time, "HH"))
  loc_13DB8D1:         Set var_8C = Me.txt
  loc_13DB8D7:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94, 1)
  loc_13DB8DF:         var_90.Text = 1
  loc_13DB8F7:       End If
  loc_13DB904:       Set var_8C = Me.txt
  loc_13DB90A:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DB912:       arg_10 = var_90.Text
  loc_13DB957:       Set var_98 = Me.txt
  loc_13DB95D:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, CStr(Format(CVar(Val(var_94)), "00")), 1)
  loc_13DB965:       var_9C.Text = 1
  loc_13DB992:       Set var_8C = Me.txt
  loc_13DB998:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DB9A0:       var_100 = var_90.Text
  loc_13DB9BC:       If (CDbl(Val(var_94)) > CDbl(&H17)) Then
  loc_13DB9CC:         Set var_8C = Me.txt
  loc_13DB9D2:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DB9DA:         var_90.Text = "24"
  loc_13DB9E6:       End If
  loc_13DB9F3:       Set var_8C = Me.txt
  loc_13DB9F9:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DBA1D:       If (CDbl(Val(var_90.Text)) = CDbl(&H18)) Then
  loc_13DBA2E:         Set var_8C = Me.txt
  loc_13DBA34:         Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_13DBA3C:         var_90.Text = "00"
  loc_13DBA48:       End If
  loc_13DBA4B:     Else
  loc_13DBA53:       If (var_86 = CInt(5)) Then
  loc_13DBA63:         Set var_8C = Me.txt
  loc_13DBA69:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DBA88:         If (var_90.Text = vbNullString) Then
  loc_13DBAB6:           var_94 = CStr(Format(Time, "HH"))
  loc_13DBAC4:           Set var_8C = Me.txt
  loc_13DBACA:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DBAD2:           var_90.Text = 1
  loc_13DBAEA:         End If
  loc_13DBAF7:         Set var_8C = Me.txt
  loc_13DBAFD:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DBB05:         1 = var_90.Text
  loc_13DBB4A:         Set var_98 = Me.txt
  loc_13DBB50:         Call 0.Method_Txt_Validate0 (Cancel, var_9C, CStr(Format(CVar(Val(var_94)), "00")), 1)
  loc_13DBB58:         var_9C.Text = 1
  loc_13DBB85:         Set var_8C = Me.txt
  loc_13DBB8B:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DBB93:         var_100 = var_90.Text
  loc_13DBBAF:         If (CDbl(Val(var_94)) > CDbl(&H17)) Then
  loc_13DBBBF:           Set var_8C = Me.txt
  loc_13DBBC5:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DBBCD:           var_90.Text = "24"
  loc_13DBBD9:         End If
  loc_13DBBE6:         Set var_8C = Me.txt
  loc_13DBBEC:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DBC10:         If (CDbl(Val(var_90.Text)) = CDbl(&H18)) Then
  loc_13DBC21:           Set var_8C = Me.txt
  loc_13DBC27:           Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_13DBC2F:           var_90.Text = "00"
  loc_13DBC3B:         End If
  loc_13DBC3E:       Else
  loc_13DBC46:         If (var_86 = CInt(4)) Then
  loc_13DBC56:           Set var_8C = Me.txt
  loc_13DBC5C:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DBC7B:           If (var_90.Text = vbNullString) Then
  loc_13DBCA9:             var_94 = CStr(Format(Time, "NN"))
  loc_13DBCB7:             Set var_8C = Me.txt
  loc_13DBCBD:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DBCC5:             var_90.Text = 1
  loc_13DBCDD:           End If
  loc_13DBCEA:           Set var_8C = Me.txt
  loc_13DBCF0:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DBCF8:           1 = var_90.Text
  loc_13DBD2F:           var_F8 = CStr(Format(CVar(Val(var_94)), "00"))
  loc_13DBD3D:           Set var_98 = Me.txt
  loc_13DBD43:           Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_F8, 1)
  loc_13DBD79:           Set var_8C = Me.txt
  loc_13DBD7F:           Call 0.Method_Txt_Validate0 (CInt(3), var_90, var_94)
  loc_13DBD87:           var_100 = var_90.Text
  loc_13DBDA6:           Set var_98 = Me.txt
  loc_13DBDAC:           Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_F8)
  loc_13DBDB4:           (CDbl(Val(var_94)) < CDbl(&H18)) = 1
  loc_13DBDD9:           If (var_86 And (CDbl(Val(var_F8)) > CDbl(&H3B))) Then
  loc_13DBDE9:             Set var_8C = Me.txt
  loc_13DBDEF:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DBDF7:             var_90.Text = "59"
  loc_13DBE06:           Else
  loc_13DBE14:             Set var_8C = Me.txt
  loc_13DBE1A:             Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_13DBE3E:             If (CDbl(Val(var_90.Text)) = CDbl(&H18)) Then
  loc_13DBE4E:               Set var_8C = Me.txt
  loc_13DBE54:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DBE5C:               var_90.Text = "00"
  loc_13DBE68:             End If
  loc_13DBE68:           End If
  loc_13DBE6B:         Else
  loc_13DBE73:           If (var_86 = CInt(6)) Then
  loc_13DBE83:             Set var_8C = Me.txt
  loc_13DBE89:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DBEA8:             If (var_90.Text = vbNullString) Then
  loc_13DBEE4:               Set var_8C = Me.txt
  loc_13DBEEA:               Call 0.Method_Txt_Validate0 (Cancel, var_90, CStr(Format(Time, "NN")))
  loc_13DBEF2:               var_90.Text = 1
  loc_13DBF0A:             End If
  loc_13DBF17:             Set var_8C = Me.txt
  loc_13DBF1D:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DBF25:             var_94 = var_90.Text
  loc_13DBF5C:             var_F8 = CStr(Format(CVar(Val(var_94)), "00"))
  loc_13DBF6A:             Set var_98 = Me.txt
  loc_13DBF70:             Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_F8, 1)
  loc_13DBFA6:             Set var_8C = Me.txt
  loc_13DBFAC:             Call 0.Method_Txt_Validate0 (CInt(5), var_90, var_94)
  loc_13DBFB4:             var_100 = var_90.Text
  loc_13DBFD3:             Set var_98 = Me.txt
  loc_13DBFD9:             Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_F8)
  loc_13DBFE1:             (CDbl(Val(var_94)) < CDbl(&H18)) = 1
  loc_13DC006:             If (1 And (CDbl(Val(var_F8)) > CDbl(&H3B))) Then
  loc_13DC016:               Set var_8C = Me.txt
  loc_13DC01C:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DC024:               var_90.Text = "59"
  loc_13DC033:             Else
  loc_13DC041:               Set var_8C = Me.txt
  loc_13DC047:               Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_13DC06B:               If (CDbl(Val(var_90.Text)) = CDbl(&H18)) Then
  loc_13DC07B:                 Set var_8C = Me.txt
  loc_13DC081:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DC089:                 var_90.Text = "00"
  loc_13DC095:               End If
  loc_13DC095:             End If
  loc_13DC095:           End If
  loc_13DC095:         End If
  loc_13DC095:       End If
  loc_13DC095:     End If
  loc_13DC095:   End If
  loc_13DC095: End If
  loc_13DC095: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC0394
  'Data Table: 4631E0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC030A: On Error Goto loc_EC034F
  loc_EC0313: Me.MoveFirst
  loc_EC032D: var_8C = "Code='" & MyValue
  loc_EC033D: Me.Find var_8C & "'", 0, 1
  loc_EC0349: Call Proc_215_27_1375EA8(var_A0)
  loc_EC034E: Exit Sub
  loc_EC034F: ' Referenced from: EC030A
  loc_EC0357: Set var_A4 = Err()
  loc_EC035D: Call 0.Method_arg_2C (var_8C)
  loc_EC037E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC0391: Exit Sub
  loc_EC0392: Exit Sub
End Sub

Public Sub Proc_215_25_E886A8(arg_C) 'E886A8
  'Data Table: 4631E0
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_E88642: Set var_8C = Me.txt
  loc_E88648: Call 0.Method_Proc_215_25_E886A8C (var_8E, var_86)
  loc_E88658: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E8866E:   Set var_8C = Me.txt
  loc_E88674:   Call 0.Method_Proc_215_25_E886A80 (CInt(var_86), var_98)
  loc_E8867C:   var_98.Enabled = arg_C
  loc_E8868B: Next var_92 'Byte
  loc_E8869E: Me.framWeek.Enabled = arg_C
  loc_E886A6: Exit Sub
End Sub

Public Sub Proc_215_26_EF39E8
  'Data Table: 4631E0
  Dim var_98 As Variant
  loc_EF3916: global_60 = vbNullString
  loc_EF3928: Set var_8C = Me.txt
  loc_EF392E: Call 0.Method_Proc_215_26_EF39E8C (var_8E, var_86)
  loc_EF393E: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EF3954:   Set var_8C = Me.txt
  loc_EF395A:   Call 0.Method_Proc_215_26_EF39E80 (CInt(var_86), var_98)
  loc_EF3962:   var_98.Text = vbNullString
  loc_EF397E:   Set var_8C = Me.txt
  loc_EF3984:   Call 0.Method_Proc_215_26_EF39E80 (CInt(var_86), var_98)
  loc_EF398C:   var_98.Tag = vbNullString
  loc_EF399B: Next var_92 'Byte
  loc_EF39AC: For var_9C = CByte(1) To CByte(7): var_86 = var_9C 'Byte
  loc_EF39C1:   Set var_8C = Me.chkday
  loc_EF39C7:   Call 0.Method_Proc_215_26_EF39E80 (CInt(var_86), var_98)
  loc_EF39CF:   var_98.Value = 0
  loc_EF39DE: Next var_9C 'Byte
  loc_EF39E4: Exit Sub
End Sub

Public Sub Proc_215_27_1375EA8
  'Data Table: 4631E0
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim var_F8 As Variant
  Dim var_FC As String
  Dim unk_4631F6 As Connection15
  Dim var_128 As TextBox
  Dim var_158 As Double
  Dim var_90 As Recordset15
  Dim var_120 As Fields15
  Dim var_1E4 As Variant
  loc_137565C: On Error Goto loc_1375E65
  loc_13756B5: unk_4631F6.Execute CStr("Select U_Name,U_AE,U_EntDt From schememast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_11C, -1
  loc_13756C0: Set var_90 = var_120
  loc_13756E0: Proc_183_45_E5CCA8(global_52)
  loc_13756FC: If (Me.RecordCount <= 0) Then
  loc_13756FF:   Call Proc_215_26_EF39E8(var_120)
  loc_1375707: Else
  loc_1375743:   Set var_120 = Me.txt
  loc_1375749:   Call 0.Method_Proc_215_27_1375EA80 (CInt(0), var_128)
  loc_1375751:   var_128.Text = CStr(Me.Fields.Item("SchemeName").Value)
  loc_13757A3:   Set var_120 = Me.txt
  loc_13757A9:   Call 0.Method_Proc_215_27_1375EA80 (CInt(0), var_128)
  loc_13757B1:   var_128.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_137581C:   Set var_120 = Me.txt
  loc_1375822:   Call 0.Method_Proc_215_27_1375EA80 (CInt(1), var_128, CStr(Format(CVar(Me.Fields.Item("StartDate")), "DD/MMM/YYYY")))
  loc_137582A:   var_128.Text = 1
  loc_1375899:   Set var_120 = Me.txt
  loc_137589F:   Call 0.Method_Proc_215_27_1375EA80 (CInt(2), var_128, CStr(Format(CVar(Me.Fields.Item("EndDate")), "DD/MMM/YYYY")))
  loc_13758A7:   var_128.Text = 1
  loc_1375906:   Set var_120 = Me.txt
  loc_137590C:   Call 0.Method_Proc_215_27_1375EA80 (CInt(3), var_128, CStr(Left(CVar(Me.Fields.Item("FromTime")), 2)))
  loc_1375914:   var_128.Text = 1
  loc_1375971:   Set var_120 = Me.txt
  loc_1375977:   Call 0.Method_Proc_215_27_1375EA80 (CInt(4), var_128)
  loc_137597F:   var_128.Text = CStr(Right(CVar(Me.Fields.Item("FromTime")), 2))
  loc_13759DC:   Set var_120 = Me.txt
  loc_13759E2:   Call 0.Method_Proc_215_27_1375EA80 (CInt(5), var_128)
  loc_13759EA:   var_128.Text = CStr(Left(CVar(Me.Fields.Item("ToTime")), 2))
  loc_1375A47:   Set var_120 = Me.txt
  loc_1375A4D:   Call 0.Method_Proc_215_27_1375EA80 (CInt(6), var_128)
  loc_1375A55:   var_128.Text = CStr(Right(CVar(Me.Fields.Item("ToTime")), 2))
  loc_1375ADB:   Set var_120 = Me.txt
  loc_1375AE1:   Call 0.Method_Proc_215_27_1375EA80 (CInt(7), var_128)
  loc_1375AE9:   var_128.Text = CStr(IIf((Me.Fields.Item("Active").Value = "Y"), "Yes", "No"))
  loc_1375B23:   var_A8 = Me.Fields.Item("DAYcode")
  loc_1375B3B:   var_8C = CStr(Str(CVar(var_A8)))
  loc_1375B53:   For var_14C = CByte(1) To CByte(7):   var_86 = var_14C 'Byte
  loc_1375B68:     Set var_94 = Me.chkday
  loc_1375B6E:     Call 0.Method_Proc_215_27_1375EA80 (CInt(var_86), var_A8, 0)
  loc_1375B76:     var_A8.Value = CByte(1)
  loc_1375B85:   Next var_14C 'Byte
  loc_1375BAE:   For var_150 = CByte(1) To CByte(Len(Trim(var_8C))):   var_86 = var_150 'Byte
  loc_1375BE5:     var_158 = Val(CStr(Mid(Trim(var_8C), CLng(var_86), 1)))
  loc_1375BF5:     Set var_94 = Me.chkday
  loc_1375BFB:     Call 0.Method_Proc_215_27_1375EA80 (CInt(var_158), var_A8, 1)
  loc_1375C03:     var_A8.Value = var_158
  loc_1375C1E:   Next var_150 'Byte
  loc_1375C24: End If
  loc_1375CC7: var_19C = IIf((Proc_6_38_E69628(CVar(var_90.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_90.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1375D0C: Me.LblUser.Caption = CStr(var_19C & CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("U_Name")))))
  loc_1375D9F: var_11C = "entdt : "
  loc_1375DAA: var_F8 = "Last Update : "
  loc_1375DD8: var_FC = Proc_6_38_E69628(CVar(var_90.Fields.Item("U_AE")))
  loc_1375E1A: var_1E4 = IIf((var_FC = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_90.Fields.Item("U_AE"))) = "E"), var_F8, var_11C)) & CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("U_EntDt")))) 
  loc_1375E2C: Me.LblLDt.Caption = CStr(var_1E4)
  loc_1375E64: Exit Sub
  loc_1375E65: ' Referenced from: 137565C
  loc_1375E6D: Set var_94 = Err()
  loc_1375E73: Call 0.Method_arg_2C (var_FC)
  loc_1375E94: MsgBox(CVar(var_FC), &H40, "Information", var_F8, var_11C)
  loc_1375EA7: Exit Sub
End Sub

Public Sub Proc_215_28_E43478
  'Data Table: 4631E0
  loc_E43457: Me.DGHelp.Visible = False
  loc_E4346E: Me.FGPoint.Visible = False
  loc_E43476: Exit Sub
End Sub

Public Sub Proc_215_29_108A484
  'Data Table: 4631E0
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4631F6 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108A217: If (Me.RecordCount = 0) Then
  loc_108A21A:   Proc_215_29_108A484 = 
  loc_108A220: End If
  loc_108A224: Set var_90 = Me.TopCtrl1
  loc_108A22A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_108A243: If (CStr() = "Add") Then
  loc_108A281:   Set var_90 = Me.txt
  loc_108A287:   Call 0.Method_Proc_215_29_108A4840 (CInt(0), var_A8, var_AC, "Select Count(*) From SchemeMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Name='", var_A0, -1)
  loc_108A2A8:   unk_4631F6.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_108A2B8:    = var_D0.Item()
  loc_108A2C0:    = var_E4.Value
  loc_108A2F1:   If (var_A8.Text.Fields > 0) Then
  loc_108A30F:     var_A0 = "Duplicate Name"
  loc_108A315:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_108A330:     Set var_90 = Me.txt
  loc_108A336:     Call 0.Method_Proc_215_29_108A4840 (CInt(0))
  loc_108A33E:     var_A8.SetFocus
  loc_108A34F:     Proc_215_29_108A484 = &HFF
  loc_108A355:   End If
  loc_108A358: Else
  loc_108A393:   Set var_90 = Me.txt
  loc_108A399:   Call 0.Method_Proc_215_29_108A4840 (CInt(0), var_A8, var_AC, "Select Count(*) From SchemeMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Code='", var_A0, -1)
  loc_108A3CB:   unk_4631F6.Execute var_D0 & var_AC & "' And Code<>'" & global_60 & "'", 0, var_E4
  loc_108A3DB:    = var_D0.Item(var_A8)
  loc_108A3E3:    = var_E4.Value
  loc_108A418:   If (var_A8.Tag.Fields > 0) Then
  loc_108A43C:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108A457:     Set var_90 = Me.txt
  loc_108A45D:     Call 0.Method_Proc_215_29_108A4840 (CInt(0))
  loc_108A465:     var_A8.SetFocus
  loc_108A476:     Proc_215_29_108A484 = &HFF
  loc_108A47C:   End If
  loc_108A47C: End If
  loc_108A47C: Proc_215_29_108A484 = var_A8
End Sub

Public Sub Proc_215_30_E8DA24(arg_C) 'E8DA24
  'Data Table: 4631E0
  Dim var_10C As TextBox
  loc_E8D9F3: If (MsgBox("Save Data ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8D9F6:   Call TopCtrl1_UnknownEvent_16()
  loc_E8D9FE: Else
  loc_E8DA08:   Set var_108 = Me.txt
  loc_E8DA0E:   Call 0.Method_Proc_215_30_E8DA240 (arg_C)
  loc_E8DA16:   var_10C.SetFocus
  loc_E8DA22: End If
  loc_E8DA22: Exit Sub
End Sub

Public Sub Proc_215_31_E72294
  'Data Table: 4631E0
  Dim var_94 As CheckBox
  loc_E7223F: For var_8C = 1 To 7: var_88 = var_8C 'Integer
  loc_E72252:   Set var_90 = Me.chkday
  loc_E72258:   Call 0.Method_Proc_215_31_E722940 (var_88, var_94)
  loc_E72272:   If (var_94.Value = 1) Then
  loc_E7227A:     Proc_215_31_E72294 = &HFF
  loc_E72280:   End If
  loc_E72283: Next var_8C 'Integer
  loc_E7228D: Proc_215_31_E72294 = 0
End Sub
