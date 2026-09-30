VERSION 5.00
Begin VB.Form frmSeasonMast
  Caption = "Season Master"
  BackColor = &HFFC0C0&
  ForeColor = &H800000&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8295
  ClientHeight = 4935
  ShowInTaskbar = 0   'False
  Begin Frame framhold
    BackColor = &HFFC0C0&
    ForeColor = &H800000&
    Left = 465
    Top = 1845
    Width = 5190
    Height = 3375
    TabIndex = 13
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HFFFFFF&
      Left = 75
      Top = 165
      Width = 915
      Height = 225
      Visible = 0   'False
      TabIndex = 2
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin MSFlexGrid FGrid
      Left = 15
      Top = 120
      Width = 5160
      Height = 3240
      TabIndex = 1
    End
  End
  Begin TextBox txt
    Index = 0
    ForeColor = &H800000&
    Left = 1575
    Top = 1440
    Width = 930
    Height = 270
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame framWeek
    Caption = "WeekEnd"
    BackColor = &HC0FFFF&
    ForeColor = &H800000&
    Left = 5880
    Top = 1815
    Width = 2055
    Height = 3375
    TabIndex = 10
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    Begin CheckBox chkday
      Caption = "Sunday"
      Index = 6
      BackColor = &H8080FF&
      ForeColor = &H404000&
      Left = 180
      Top = 2895
      Width = 1260
      Height = 255
      TabIndex = 9
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 5
      BackColor = &HFFC0FF&
      ForeColor = &H404000&
      Left = 180
      Top = 2475
      Width = 1365
      Height = 255
      TabIndex = 8
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 4
      BackColor = &HFFC0C0&
      ForeColor = &H404000&
      Left = 180
      Top = 2055
      Width = 1125
      Height = 255
      TabIndex = 7
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 3
      BackColor = &HFFFFC0&
      ForeColor = &H404000&
      Left = 180
      Top = 1635
      Width = 1425
      Height = 255
      TabIndex = 6
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 2
      BackColor = &HC0FFC0&
      ForeColor = &H404000&
      Left = 180
      Top = 1215
      Width = 1680
      Height = 255
      TabIndex = 5
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 1
      BackColor = &HC0E0FF&
      ForeColor = &H404000&
      Left = 180
      Top = 795
      Width = 1410
      Height = 255
      TabIndex = 4
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 0
      BackColor = &HC0C0FF&
      ForeColor = &H404000&
      Left = 180
      Top = 375
      Width = 1305
      Height = 255
      TabIndex = 3
      BeginProperty Font
        Name = "MS Sans Serif"
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
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8295
    Height = 375
    TabIndex = 11
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4320
    Top = 6360
    Width = 2790
    Height = 285
    TabIndex = 16
    Alignment = 2 'Center
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
  Begin Shape Shape2
    BorderColor = &HC00000&
    Left = 4200
    Top = 6240
    Width = 3135
    Height = 615
    Shape = 4
    BorderWidth = 2
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 945
    Top = 6360
    Width = 2880
    Height = 255
    TabIndex = 15
    Alignment = 2 'Center
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
  Begin Shape Shape1
    BorderColor = &HC00000&
    Left = 840
    Top = 6240
    Width = 3135
    Height = 615
    Shape = 4
    BorderWidth = 2
  End
  Begin Label Label1
    Caption = "Season Master"
    BackColor = &HC0FFFF&
    Left = 1920
    Top = 720
    Width = 3000
    Height = 540
    TabIndex = 14
    BorderStyle = 1 'Fixed Single
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
  Begin Label lblyear
    Caption = "For Year"
    ForeColor = &H404000&
    Left = 495
    Top = 1455
    Width = 915
    Height = 240
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmSeasonMast"

Private global_64 As Integer
Private global_56 As Integer

Private Sub TopCtrl1_UnknownEvent_11 'E801EC
  'Data Table: 46862C
  Dim var_94 As TextBox
  loc_E80188: On Error Goto loc_E801E4
  loc_E801AE: Call Proc_20_32_E88AB0(Proc_5_1_100EC1C("ADD", Me))
  loc_E801B9: Call Proc_20_33_F1C35C(global_52)
  loc_E801C9: Set var_8C = Me.txt
  loc_E801CF: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_E801D7: var_94.SetFocus
  loc_E801E3: Exit Sub
  loc_E801E4: ' Referenced from: E80188
  loc_E801E4: Proc_6_60_E63754(var_94)
  loc_E801E9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'EA9930
  'Data Table: 46862C
  Dim var_9C As TextBox
  loc_EA98A8: On Error Goto loc_EA9928
  loc_EA98B9: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_EA98BC:   Exit Sub
  loc_EA98BD: End If
  loc_EA98E0: Call Proc_20_32_E88AB0(Proc_5_1_100EC1C("EDIT", Me))
  loc_EA98EF: Set var_94 = Me.FGrid
  loc_EA990D: Set var_94 = Me.txt
  loc_EA9913: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_9C, 0)
  loc_EA991B: var_9C.Enabled = FGrid.DispID_8001
  loc_EA9927: Exit Sub
  loc_EA9928: ' Referenced from: EA98A8
  loc_EA9928: Proc_6_60_E63754(global_52)
  loc_EA992D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '1080B10
  'Data Table: 46862C
  Dim unk_468639 As Connection15
  Dim Me As Recordset15
  Dim var_120 As TextBox
  Dim var_128 As String
  Dim var_B4 As Variant
  Dim var_4B01 As String
  loc_10808A0: On Error Goto loc_1080ABF
  loc_10808B1: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_10808B4:   Exit Sub
  loc_10808B5: End If
  loc_10808EC: If (MsgBox("This Action Will Delete All The Entries Associated With This Year. Are You Sure?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_10808F8:   unk_468639.BeginTrans var_118
  loc_108090E:   var_94 = Me.Bookmark 'Variant
  loc_1080930:   Set var_11C = Me.txt
  loc_1080936:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_120, var_124, "Delete From SeasonMast Where Year(Fromdate) = '")
  loc_108093E:   var_B4 = var_120.Text
  loc_1080947:   var_128 = -1 & var_124
  loc_1080965:   unk_468639.Execute var_128 & "' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')", var_138, 
  loc_1080991:   Set var_11C = Me.txt
  loc_1080997:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_120)
  loc_108099F:   var_124 = var_120.Text
  loc_10809A9:   var_164 = 0
  loc_10809BC:   var_15C = 0
  loc_10809C7:   var_158 = 0
  loc_1080A40:   Proc_154_5_10E3BD4(MemVar_1F95044, "SeasonMast", "Fromdate", 3, var_124, 0, 0, 0)
  loc_1080A6B:   unk_468639.CommitTrans
  loc_1080A7B:   Me.Requery -1
  loc_1080A80:   Call Proc_20_34_124CBE0(0, 0, 0, 0)
  loc_1080AA1:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_1080AAD:   Set var_11C = Me.FGrid
  loc_1080ABE: End If
  loc_1080ABE: Exit Sub
  loc_1080ABF: ' Referenced from: 10808A0
  loc_1080AC5: unk_468639.RollbackTrans
  loc_1080AD2: Set var_11C = Err()
  loc_1080AD8: Call 0.Method_arg_2C (var_124, FGrid.DispID_8001, 0)
  loc_1080AF9: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_1080B0C: Exit Sub
  loc_1080B0E: var_4B01 = CCur(var_158)
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E165EC
  'Data Table: 46862C
  loc_E165E1: Me.Global.Unload Me
  loc_E165E9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2E7A8
  'Data Table: 46862C
  loc_E2E798: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2E7A0: Call Proc_20_34_124CBE0(global_52)
  loc_E2E7A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E2E6E8
  'Data Table: 46862C
  loc_E2E6D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2E6E0: Call Proc_20_34_124CBE0(global_52)
  loc_E2E6E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E2E688
  'Data Table: 46862C
  loc_E2E678: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2E680: Call Proc_20_34_124CBE0(global_52)
  loc_E2E685: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E2E628
  'Data Table: 46862C
  loc_E2E618: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2E620: Call Proc_20_34_124CBE0(global_52)
  loc_E2E625: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '14F50F8
  'Data Table: 46862C
  Dim var_A0 As MSFlexGrid
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_108 As String
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_14C As MSFlexGrid
  Dim var_15C As Variant
  Dim var_160 As String
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_20C As Variant
  Dim unk_468639 As Connection15
  Dim var_1EC As Variant
  Dim var_128 As Variant
  Dim var_1DC As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_264 As Variant
  Dim var_274 As Variant
  Dim var_284 As Variant
  Dim var_294 As Variant
  Dim var_2C4 As Variant
  Dim var_348 As String
  Dim Me As Recordset15
  loc_14F430C: On Error Goto loc_14F50A5
  loc_14F4313: var_86 = CByte(0) 'Byte
  loc_14F4321: var_B0 = Me.FGrid.Rows
  loc_14F4330: var_C0 = 1
  loc_14F433C: var_E0 = CVar(CLng(1)) 'Long
  loc_14F4345: Set var_F4 = Me.FGrid
  loc_14F4356: var_108 = CStr(var_F4.TextMatrix))
  loc_14F43A2: Set var_1A4 = Me.FGrid
  loc_14F43A8: var_1B4 = var_1A4.TextMatrix)
  loc_14F43C5: Set var_1BC = Me.TopCtrl1
  loc_14F43CB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E((1 And (CVar(CLng(3)) And (CStr(var_1B4) = vbNullString))))
  loc_14F4407: If CBool(1 And ((CVar(CLng(2)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString)) <> "Add")) Then
  loc_14F440A:   Call TopCtrl1_UnknownEvent_13()
  loc_14F440F:   Exit Sub
  loc_14F4410: End If
  loc_14F441B: Set var_A0 = Me.txt
  loc_14F4421: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_F4, (var_108 = vbNullString))
  loc_14F444A: If (Proc_6_27_EA61EC(var_F4, "Year", var_E0) = 0) Then
  loc_14F4454:   Call Txt_GotFocus()
  loc_14F4459:   Exit Sub
  loc_14F445A: End If
  loc_14F4482: For var_212 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_9A = var_212 'Byte
  loc_14F448C:   var_9C = CByte(1) 'Byte
  loc_14F4495:   var_C0 = CVar(CLng(var_9A)) 'Long
  loc_14F449F:   var_E0 = CVar(CLng(var_9C)) 'Long
  loc_14F44B9:   var_108 = CStr(Me.FGrid.TextMatrix))
  loc_14F44C6:   var_118 = CVar(CLng(var_9A)) 'Long
  loc_14F44D5:   var_138 = CVar(CLng((CInt(var_9C) + 1))) 'Long
  loc_14F44DE:   Set var_F4 = Me.FGrid
  loc_14F44EF:   var_160 = CStr(var_F4.TextMatrix))
  loc_14F44FD:   var_170 = CVar(CLng(var_9A)) 'Long
  loc_14F450C:   var_190 = CVar(CLng((CInt(var_9C) + 2))) 'Long
  loc_14F451B:   var_15C = Me.FGrid.TextMatrix)
  loc_14F454B:   If Not((CVar(CLng(3)) And (CStr(var_15C) = vbNullString))) Then
  loc_14F4576:     For var_216 = CByte(1) To CByte((CLng(Me.FGrid.Cols) - 2)): var_9C = var_216 'Byte
  loc_14F4581:       var_C0 = CVar(CLng(var_9A)) 'Long
  loc_14F458B:       var_E0 = CVar(CLng(var_9C)) 'Long
  loc_14F45B6:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_14F45DF:         MsgBox(CVar("Value Required In Row " & CStr(var_9A)), &H40, "Data Missing", var_15C, var_1B4)
  loc_14F45F2:         Exit Sub
  loc_14F45F3:       End If
  loc_14F45F6:     Next var_216 'Byte
  loc_14F45FC:   End If
  loc_14F45FF: Next var_212 'Byte
  loc_14F4610: For var_21A = CByte(0) To CByte(6): var_9A = var_21A 'Byte
  loc_14F4626:   Set var_A0 = Me.chkday
  loc_14F462C:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(var_9A), var_F4)
  loc_14F464A:   If (CLng(var_F4.Value) = 1) Then
  loc_14F4654:     var_90 = var_90 & "*"
  loc_14F465A:   Else
  loc_14F4661:     var_90 = var_90 & " "
  loc_14F4664:   End If
  loc_14F4667: Next var_21A 'Byte
  loc_14F4676: unk_468639.BeginTrans var_220
  loc_14F467F: var_86 = CByte(1) 'Byte
  loc_14F4687: Set var_A0 = Me.TopCtrl1
  loc_14F468D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_14F46A2: If ( = "Add") Then
  loc_14F46CD:   For var_224 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_9A = var_224 'Byte
  loc_14F46D8:     var_C0 = CVar(CLng(var_9A)) 'Long
  loc_14F46E0:     var_E0 = CVar(CLng(1)) 'Long
  loc_14F46FA:     var_108 = CStr(Me.FGrid.TextMatrix))
  loc_14F470B:     If (var_108 <> vbNullString) Then
  loc_14F4713:       var_C0 = CVar(CLng(var_9A)) 'Long
  loc_14F471B:       var_E0 = CVar(CLng(1)) 'Long
  loc_14F472A:       var_B0 = Me.FGrid.TextMatrix)
  loc_14F4752:       var_1EC = Me.FGrid.TextMatrix)
  loc_14F477F:       var_1DC = (Mid(CVar(CStr(var_B0)), 1, 2) + "/")
  loc_14F47A8:       var_254 = CVar(Proc_6_119_F75C1C(CInt(Mid(CVar(CStr(var_1EC)), 3, 2)), var_1DC, var_1EC, CVar(CLng(1)), CVar(CLng(var_9A)), var_B0)) 'String
  loc_14F47AB:       var_264 = (var_E0 + var_254)
  loc_14F47B4:       var_274 = (var_264 + "/")
  loc_14F47C6:       Set var_14C = Me.txt
  loc_14F47CC:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1A4, var_108, var_274)
  loc_14F47D4:       var_C0 = var_1A4.Text
  loc_14F47DF:       var_294 = (var_E0 + CVar(var_108))
  loc_14F481E:       var_E0 = CVar(CLng(2)) 'Long
  loc_14F482D:       var_B0 = Me.FGrid.TextMatrix)
  loc_14F484F:       Set var_F4 = Me.FGrid
  loc_14F4855:       var_1EC = var_F4.TextMatrix)
  loc_14F4875:       var_1B4 = Mid(CVar(CStr(var_B0)), 1, 2)
  loc_14F4882:       var_1DC = (var_1B4 + "/")
  loc_14F48AB:       var_254 = CVar(Proc_6_119_F75C1C(CInt(Mid(CVar(CStr(var_1EC)), 3, 2)), var_1DC, var_1EC, CVar(CLng(2)), CVar(CLng(var_9A)))) 'String
  loc_14F48AE:       var_264 = (var_B0 + var_254)
  loc_14F48B7:       var_274 = (var_264 + "/")
  loc_14F48C9:       Set var_14C = Me.txt
  loc_14F48CF:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1A4, var_108, var_274)
  loc_14F48D7:       var_E0 = var_1A4.Text
  loc_14F48E2:       var_294 = (CVar(CLng(var_9A)) + CVar(var_108))
  loc_14F491F:       Proc_183_7_EB17D4(var_B0, CStr(var_294))
  loc_14F492F:       Proc_183_7_EB17D4(var_1B4, CStr(var_294))
  loc_14F4939:       var_128 = CVar(CLng(var_9A)) 'Long
  loc_14F494A:       Set var_A0 = Me.FGrid
  loc_14F4950:       var_20C = var_A0.TextMatrix)
  loc_14F496A:       Proc_6_7_F26918(var_2B4, Date, var_20C, CVar(CLng(3)))
  loc_14F4984:       var_104 = "Insert Into SeasonMast(FromDate,ToDate,RateCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values(" & var_B0 
  loc_14F49A5:       var_234 = CVar(CStr(var_20C)) 'String
  loc_14F49DE:       var_2C4 = var_104 & "," & var_1B4 & ",'" & var_234 & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_2B4 
  loc_14F4A08:       unk_468639.Execute CStr(var_2C4 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_344, -1
  loc_14F4A44:     End If
  loc_14F4A47:   Next var_224 'Byte
  loc_14F4A71:   unk_468639.Execute "Delete from SeasonMast1 WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')", var_B0, -1
  loc_14F4A97:   var_108 = "Insert Into SeasonMast1(Weekend,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & var_90
  loc_14F4ACB:   Proc_6_7_F26918(var_104, Date, CVar(var_108 & "','" & MemVar_1F95078 & "','" & MemVar_1F950C8 & "',"), var_234)
  loc_14F4AD3:   var_1B4 = -1 & var_104 
  loc_14F4AFD:   unk_468639.Execute CStr(var_1B4 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_A0, var_A0
  loc_14F4B2A: Else
  loc_14F4B48:   Set var_A0 = Me.txt
  loc_14F4B4E:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_F4, var_108, "Delete From SeasonMast Where year(Fromdate) = '")
  loc_14F4B56:   var_B0 = var_F4.Text
  loc_14F4B5F:   var_160 = -1 & var_108
  loc_14F4B7D:   unk_468639.Execute var_108 & "','" & "' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')", var_14C, 
  loc_14F4BC3:   For var_354 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):   var_9A = var_354 'Byte
  loc_14F4BCE:     var_C0 = CVar(CLng(var_9A)) 'Long
  loc_14F4BD6:     var_E0 = CVar(CLng(1)) 'Long
  loc_14F4BF0:     var_108 = CStr(Me.FGrid.TextMatrix))
  loc_14F4C01:     If (var_108 <> vbNullString) Then
  loc_14F4C09:       var_C0 = CVar(CLng(var_9A)) 'Long
  loc_14F4C48:       var_1EC = Me.FGrid.TextMatrix)
  loc_14F4C75:       var_1DC = (Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, 2) + "/")
  loc_14F4C95:       var_254 = (Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, 2) & ",'A','" + Mid(CVar(CStr(var_1EC)), 4, 3))
  loc_14F4C9E:       var_264 = (CVar(CStr(Me.FGrid.TextMatrix))) & "," & Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, 2) & ",'" & 3 & "','" + "/")
  loc_14F4CB0:       Set var_14C = Me.txt
  loc_14F4CB6:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1A4, var_108, CVar(CStr(Me.FGrid.TextMatrix))) & "," & Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, 2) & ",'" & 3 & "','" & CVar(MemVar_1F95070), var_1EC, CVar(CLng(1)), CVar(CLng(var_9A)))
  loc_14F4CBE:       var_B0 = var_1A4.Text
  loc_14F4CC9:       var_284 = (CVar(CLng(1)) + CVar(var_108))
  loc_14F4CCE:       var_94 = CStr(CVar(CStr(Me.FGrid.TextMatrix))) & "," & Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, 2) & ",'" & 3 & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8))
  loc_14F4CFE:       var_C0 = CVar(CLng(var_9A)) 'Long
  loc_14F4D06:       var_E0 = CVar(CLng(2)) 'Long
  loc_14F4D37:       Set var_F4 = Me.FGrid
  loc_14F4D3D:       var_1EC = var_F4.TextMatrix)
  loc_14F4D5D:       var_1B4 = Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, 2)
  loc_14F4D6A:       var_1DC = (var_1B4 + "/")
  loc_14F4D8A:       var_254 = (var_1B4 & ",'A','" + Mid(CVar(CStr(var_1EC)), 4, 3))
  loc_14F4D93:       var_264 = (CVar(CStr(Me.FGrid.TextMatrix))) & "," & var_1B4 & ",'" & 3 & "','" + "/")
  loc_14F4DA5:       Set var_14C = Me.txt
  loc_14F4DAB:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1A4, var_108, CVar(CStr(Me.FGrid.TextMatrix))) & "," & var_1B4 & ",'" & 3 & "','" & CVar(MemVar_1F95070), var_1EC, CVar(CLng(2)), CVar(CLng(var_9A)))
  loc_14F4DB3:       var_B0 = var_1A4.Text
  loc_14F4DBE:       var_284 = (var_E0 + CVar(var_108))
  loc_14F4DC3:       var_98 = CStr(CVar(CStr(Me.FGrid.TextMatrix))) & "," & var_1B4 & ",'" & 3 & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8))
  loc_14F4DF9:       Proc_183_7_EB17D4(var_B0, var_94, var_94, var_94)
  loc_14F4E09:       Proc_183_7_EB17D4(var_1B4, var_98, var_E0)
  loc_14F4E13:       var_128 = CVar(CLng(var_9A)) 'Long
  loc_14F4E24:       Set var_A0 = Me.FGrid
  loc_14F4E2A:       var_20C = var_A0.TextMatrix)
  loc_14F4E44:       Proc_6_7_F26918(var_2B4, Date, var_20C, CVar(CLng(3)))
  loc_14F4E5E:       var_104 = "Insert Into SeasonMast(FromDate,ToDate,RateCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values(" & var_B0 
  loc_14F4E7F:       var_234 = CVar(CStr(var_20C)) 'String
  loc_14F4EB8:       var_2C4 = var_104 & "," & var_1B4 & ",'" & var_234 & "','" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "'," & var_2B4 
  loc_14F4EE2:       unk_468639.Execute CStr(var_2C4 & ",'E','" & CVar(MemVar_1F95078) & "')"), var_344, -1
  loc_14F4F1E:     End If
  loc_14F4F21:   Next var_354 'Byte
  loc_14F4F4B:   unk_468639.Execute "Delete from SeasonMast1 WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')", var_B0, -1
  loc_14F4F86:   var_348 = "Insert Into SeasonMast1(Weekend,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & var_90 & "','" & MemVar_1F95070 & "','"
  loc_14F4F94:   var_15C = CVar(var_348 & MemVar_1F950C8 & "',") 'String
  loc_14F4FA5:   Proc_6_7_F26918(var_104, Date, var_15C, var_234)
  loc_14F4FAD:   var_1B4 = -1 & var_104 
  loc_14F4FD7:   unk_468639.Execute CStr(var_1B4 & ",'E','" & CVar(MemVar_1F95078) & "')"), var_A0, var_A0
  loc_14F5001: End If
  loc_14F5007: unk_468639.CommitTrans
  loc_14F5010: var_86 = CByte(0) 'Byte
  loc_14F501F: Me.Requery -1
  loc_14F5028: Set var_A0 = Me.TopCtrl1
  loc_14F502E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_14F5043: If ( = "Add") Then
  loc_14F5046:   Call TopCtrl1_UnknownEvent_11()
  loc_14F504B:   Exit Sub
  loc_14F504C: End If
  loc_14F5061: var_108 = "INI"
  loc_14F506F: Call Proc_20_32_E88AB0(Proc_5_1_100EC1C(var_108, Me))
  loc_14F5085: Set var_A0 = Me.TxtGrid
  loc_14F508B: Call 0.Method_TopCtrl1_UnknownEvent_190 (0, var_F4)
  loc_14F5093: var_F4.Visible = False
  loc_14F509F: Call Proc_20_34_124CBE0(global_52)
  loc_14F50A4: Exit Sub
  loc_14F50A5: ' Referenced from: 14F430C
  loc_14F50AE: If (CInt(var_86) = 1) Then
  loc_14F50B7:   unk_468639.RollbackTrans
  loc_14F50BC: End If
  loc_14F50C4: Set var_A0 = Err()
  loc_14F50CA: Call 0.Method_arg_2C (var_108)
  loc_14F50E3: MsgBox(CVar(var_108), &H10, var_104, var_15C, var_1B4)
  loc_14F50F6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EFC6DC
  'Data Table: 46862C
  Dim var_118 As TextBox
  loc_EFC610: On Error Goto loc_EFC6D5
  loc_EFC64A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EFC670:   Call Proc_20_32_E88AB0(Proc_5_1_100EC1C("INI", Me))
  loc_EFC67B:   Call Proc_20_34_124CBE0(global_52)
  loc_EFC684:   Set var_110 = Me.FGrid
  loc_EFC6A0:   Set var_110 = Me.TxtGrid
  loc_EFC6A6:   Call 0.Method_TopCtrl1_UnknownEvent_1A0 (0, var_118)
  loc_EFC6AE:   var_118.Visible = False
  loc_EFC6BD: Else
  loc_EFC6C3:   Call 0.Method_arg_1E8 (var_110)
  loc_EFC6CB:   Call var_110.SetFocus
  loc_EFC6D4: End If
  loc_EFC6D4: Exit Sub
  loc_EFC6D5: ' Referenced from: EFC610
  loc_EFC6D5: Proc_6_60_E63754(FGrid.DispID_8001)
  loc_EFC6DA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'F11E0C
  'Data Table: 46862C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F11D20: On Error Goto loc_F11DA7
  loc_F11D2C: var_88 = Me.RecordCount
  loc_F11D3A: If (var_88 <= 0) Then
  loc_F11D43:   var_B8 = "Information"
  loc_F11D5E:   MsgBox("No Records Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F11D6E:   Exit Sub
  loc_F11D6F: End If
  loc_F11D76: var_10C = "Select CONVERT(VARCHAR(11), FromDate,103) As SearchCode,CONVERT(VARCHAR(11), FromDate,103) AS FromDate,CONVERT(VARCHAR(11), TODATE,103) AS ToDate,RateCode from SeasonMast where (LOGSITE_CODE='" & MemVar_1F95078
  loc_F11D7D: MemVar_1F950E4 = var_10C & "' or LOGSITE_CODE='HO') Order by FromDate desc"
  loc_F11D8A: MemVar_1F95120 = Me
  loc_F11DA1: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F11DA6: Exit Sub
  loc_F11DA7: ' Referenced from: F11D20
  loc_F11DAF: Set var_110 = Err()
  loc_F11DB5: Call 0.Method_arg_1C (var_88)
  loc_F11DC6: If (var_88 <> 0) Then
  loc_F11DD1:   Set var_110 = Err()
  loc_F11DD7:   Call 0.Method_arg_2C (var_10C)
  loc_F11DF8:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F11E0B: End If
  loc_F11E0B: Exit Sub
End Sub

Private Sub Form_Load() 'F77488
  'Data Table: 46862C
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim var_E4 As String
  Dim unk_468639 As Connection15
  loc_F77350: On Error Goto loc_F77442
  loc_F7735D: Set var_AC = Me.TopCtrl1
  loc_F77363: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_F77371: Call 0.Method_arg_50 (var_B0)
  loc_F77379: var_C0 = CVar(var_B0) 'String
  loc_F77387: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000F(var_C0)
  loc_F77390: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_F7739F: Call Proc_20_31_F7D814()
  loc_F773BF: var_E4 = "SELECT Distinct(year(FromDate)) as SYear,SITE_CODE,LOGSITE_CODE FROM SeasonMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY year(FromDate) desc"
  loc_F773C8: unk_468639.Execute var_E4, var_C0, -1
  loc_F773FA: Set var_AC = Me
  loc_F77403: var_B0 = "INI"
  loc_F77411: Call Proc_20_32_E88AB0(Proc_5_1_100EC1C(var_B0, var_AC), Me.TopCtrl1)
  loc_F7741C: Call Proc_20_34_124CBE0(var_AC)
  loc_F77439: Proc_6_23_DFC5B8(Me, 5340)
  loc_F77441: Exit Sub
  loc_F77442: ' Referenced from: F77350
  loc_F7744A: Set var_AC = Err()
  loc_F77450: Call 0.Method_arg_2C (var_B0)
  loc_F77471: MsgBox(CVar(var_B0), &H40, "Information", var_E0, var_10C)
  loc_F77484: Exit Sub
  loc_F77485: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0DDC4
  'Data Table: 46862C
  loc_E0DDBB: Set global_52 = Nothing
  loc_E0DDC2: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8A020
  'Data Table: 46862C
  loc_E89FBC: On Error Goto loc_E89FDC
  loc_E89FD3: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E89FDB: Exit Sub
  loc_E89FDC: ' Referenced from: E89FBC
  loc_E89FE4: Set var_88 = Err()
  loc_E89FEA: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8A00B: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8A01E: Exit Sub
  loc_E8A01F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E4D944
  'Data Table: 46862C
  loc_E4D922: Set var_88 = Me.txt
  loc_E4D928: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E4D936: Proc_6_74_E23240(var_8C)
  loc_E4D942: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '103D614
  'Data Table: 46862C
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  loc_103D3CA: If (CLng(Shift) = &H1B) Then
  loc_103D3CD:   Exit Sub
  loc_103D3CE: End If
  loc_103D3D1: var_88 = KeyCode
  loc_103D3DC: If (var_88 = CInt(0)) Then
  loc_103D3FD:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_103D40E:     Set var_8C = Me.txt
  loc_103D414:     Call 0.Method_Txt_KeyDown0 (CInt(0), var_90)
  loc_103D41C:     var_94 = var_90.Text
  loc_103D435:     If (Len(var_94) = 1) Then
  loc_103D449:       Set var_8C = Me.txt
  loc_103D44F:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_90, var_94)
  loc_103D457:       "200" = var_90.Text
  loc_103D46E:       Set var_98 = Me.txt
  loc_103D474:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_9C)
  loc_103D47C:       var_9C.Text = var_88 & var_94
  loc_103D496:     Else
  loc_103D4A4:       Set var_8C = Me.txt
  loc_103D4AA:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_90)
  loc_103D4CB:       If (Len(var_90.Text) = 2) Then
  loc_103D4DF:         Set var_8C = Me.txt
  loc_103D4E5:         Call 0.Method_Txt_KeyDown0 (CInt(0), var_90)
  loc_103D504:         Set var_98 = Me.txt
  loc_103D50A:         Call 0.Method_Txt_KeyDown0 (CInt(0), var_9C)
  loc_103D512:         var_9C.Text = "20" & var_90.Text
  loc_103D52C:       Else
  loc_103D53A:         Set var_8C = Me.txt
  loc_103D540:         Call 0.Method_Txt_KeyDown0 (CInt(0), var_90)
  loc_103D561:         If (Len(var_90.Text) = 3) Then
  loc_103D575:           Set var_8C = Me.txt
  loc_103D57B:           Call 0.Method_Txt_KeyDown0 (CInt(0), var_90)
  loc_103D59A:           Set var_98 = Me.txt
  loc_103D5A0:           Call 0.Method_Txt_KeyDown0 (CInt(0), var_9C)
  loc_103D5A8:           var_9C.Text = "2" & var_90.Text
  loc_103D5BF:         End If
  loc_103D5BF:       End If
  loc_103D5BF:     End If
  loc_103D5C5:     Call Txt_Validate(KeyCode)
  loc_103D5D0:     If (var_86 = &HFF) Then
  loc_103D5DE:       Set var_8C = Me.txt
  loc_103D5E4:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_90)
  loc_103D5EC:       var_90.SetFocus
  loc_103D5F8:       Exit Sub
  loc_103D5FC:     Else
  loc_103D600:       Set var_8C = Me.FGrid
  loc_103D611:     End If
  loc_103D611:   End If
  loc_103D611: End If
  loc_103D611: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E695A4
  'Data Table: 46862C
  loc_E69566: If (KeyAscii = CInt(0)) Then
  loc_E69574:   Set var_8C = Me.txt
  loc_E6957A:   Call 0.Method_Txt_KeyPress0 (CInt(0), var_90)
  loc_E69595:   Proc_6_42_129B55C(var_90, arg_10, 4)
  loc_E695A1: End If
  loc_E695A1: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F414
  'Data Table: 46862C
  loc_E4F3F2: Set var_88 = Me.txt
  loc_E4F3F8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F406: Proc_6_73_E23294(var_8C)
  loc_E4F412: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E0C3FC
  'Data Table: 46862C
  loc_E0C3F6: If (Cancel = CInt(0)) Then
  loc_E0C3F9: End If
  loc_E0C3F9: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F9BE18
  'Data Table: 46862C
  Dim var_88 As MSFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_10E As Integer
  Dim var_114 As Long
  loc_F9BCC3: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F9BCCC: Set var_9C = Me.FGrid
  loc_F9BD02: Set var_104 = Me.TxtGrid
  loc_F9BD08: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F9BD10: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_F9BD3D: Set var_88 = Me.TxtGrid
  loc_F9BD43: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_F9BD4B: var_9C.MaxLength = 0
  loc_F9BD5A: var_10E = Index
  loc_F9BD63: If (var_10E = 0) Then
  loc_F9BD79:   var_114 = CLng(Me.FGrid.Col)
  loc_F9BD89:   If Not (var_114 = CLng(1)) Then
  loc_F9BD93:     If (var_114 = CLng(2)) Then
  loc_F9BD96:     End If
  loc_F9BDA4:     Set var_88 = Me.TxtGrid
  loc_F9BDAA:     Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, 4)
  loc_F9BDB2:     var_9C.MaxLength = var_114
  loc_F9BDC7:     If (global_56 = 0) Then
  loc_F9BDD2:       var_10C = "{Home}+{End}"
  loc_F9BDD8:       Proc_303_0_FBACC8(CStr(Me.FGrid.TextMatrix)), 0)
  loc_F9BDE0:     End If
  loc_F9BDE3:   Else
  loc_F9BDEA:     If (var_114 = CLng(3)) Then
  loc_F9BDFB:       Set var_88 = Me.TxtGrid
  loc_F9BE01:       Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, 1)
  loc_F9BE09:       var_9C.MaxLength = var_10E
  loc_F9BE15:     End If
  loc_F9BE15:   End If
  loc_F9BE15: End If
  loc_F9BE15: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11766E0
  'Data Table: 46862C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSFlexGrid
  Dim var_B0 As Long
  Dim var_C8 As Variant
  Dim var_E8 As Long
  Dim var_108 As String
  loc_1176314: If (KeyCode = 0) Then
  loc_1176321:   If (CLng(Shift) = &H1B) Then
  loc_1176331:     Set var_8C = Me.TxtGrid
  loc_1176337:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1176351:     Set var_98 = Me.TxtGrid
  loc_1176357:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_117635F:     var_9C.Text = var_90.Tag
  loc_1176376:     Set var_8C = Me.FGrid
  loc_1176393:     Set var_8C = Me.TxtGrid
  loc_1176399:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_11763A1:     var_90.Visible = FGrid.DispID_8001
  loc_11763BB:     Set var_8C = Me.TxtGrid
  loc_11763C1:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_11763C9:     var_90.MaxLength = 0
  loc_11763D5:     Exit Sub
  loc_11763D6:   End If
  loc_11763E9:   var_B0 = CLng(Me.FGrid.Col)
  loc_11763F9:   If (var_B0 = CLng(1)) Then
  loc_117643C:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_1176445:       Call Proc_20_38_122255C(KeyCode, var_B2)
  loc_1176450:       If (var_B2 = &HFF) Then
  loc_1176496:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 3)
  loc_11764B9:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11764BE:         var_E8 = 0
  loc_11764C7:         var_108 = vbNullString
  loc_11764D1:         Set var_90 = Me.FGrid
  loc_11764D7:         LateIdCallSt
  loc_11764E9:       End If
  loc_11764E9:     End If
  loc_11764EC:   Else
  loc_11764F3:     If (var_B0 = CLng(2)) Then
  loc_1176536:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_117653F:         Call Proc_20_38_122255C(KeyCode, var_B2, var_90, var_108, var_E8, var_C8)
  loc_117654A:         If (var_B2 = &HFF) Then
  loc_1176590:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 3, 0)
  loc_11765B3:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11765B8:           var_E8 = 0
  loc_11765C1:           var_108 = vbNullString
  loc_11765CB:           Set var_90 = Me.FGrid
  loc_11765D1:           LateIdCallSt
  loc_11765E3:         End If
  loc_11765E3:       End If
  loc_11765E6:     Else
  loc_11765ED:       If (var_B0 = CLng(3)) Then
  loc_1176630:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_1176639:           Call Proc_20_38_122255C(KeyCode, var_B2, var_90, var_108, var_E8, var_C8, 3)
  loc_1176644:           If (var_B2 = &HFF) Then
  loc_117668A:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 3, 0, 0)
  loc_11766AD:             var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11766B2:             var_E8 = 0
  loc_11766BB:             var_108 = vbNullString
  loc_11766C5:             Set var_90 = Me.FGrid
  loc_11766CB:             LateIdCallSt
  loc_11766DD:           End If
  loc_11766DD:         End If
  loc_11766DD:       End If
  loc_11766DD:     End If
  loc_11766DD:   End If
  loc_11766DD: End If
  loc_11766DD: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EA0DE0
  'Data Table: 46862C
  Dim var_8C As MSFlexGrid
  Dim var_A0 As Long
  loc_EA0D63: Proc_6_58_E06050(arg_10)
  loc_EA0D74: If (KeyAscii = 0) Then
  loc_EA0D8A:   var_A0 = CLng(Me.FGrid.Col)
  loc_EA0D9A:   If Not (var_A0 = CLng(1)) Then
  loc_EA0DA4:     If (var_A0 = CLng(2)) Then
  loc_EA0DA7:     End If
  loc_EA0DB1:     Set var_8C = Me.TxtGrid
  loc_EA0DB7:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_EA0DD2:     Proc_6_42_129B55C(var_A4, arg_10, 4)
  loc_EA0DDE:   End If
  loc_EA0DDE: End If
  loc_EA0DDE: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23684
  'Data Table: 46862C
  Dim arg_10 As Integer
  loc_E2366C: If (Cancel = 0) Then
  loc_E23675:   Call Proc_20_38_122255C(Cancel, var_88)
  loc_E2367E:   arg_10 = Not(var_88)
  loc_E23681: End If
  loc_E23681: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E2E4A4
  'Data Table: 46862C
  Dim var_8C As TextBox
  loc_E2E487: Set var_88 = Me.TxtGrid
  loc_E2E48D: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E2E495: var_8C.Visible = False
  loc_E2E4A1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6B490
  'Data Table: 46862C
  Dim var_88 As MSFlexGrid
  Dim var_9C As TextBox
  loc_E6B440: Call Proc_20_37_E2E1A0()
  loc_E6B464: If (CLng(Me.FGrid.Col) = 0) Then
  loc_E6B472:   Set var_88 = Me.TxtGrid
  loc_E6B478:   Call 0.Method_FGrid_UnknownEvent_90 (0, var_9C)
  loc_E6B480:   var_9C.Visible = False
  loc_E6B48C: End If
  loc_E6B48C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '101826C
  'Data Table: 46862C
  Dim var_98 As Variant
  Dim var_E4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1018054: Set var_88 = Me.TopCtrl1
  loc_101805A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_10180AA: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10180B3:   Call Form_KeyDown(Cancel, arg_10)
  loc_10180B8: End If
  loc_10180BC: Set var_88 = Me.TopCtrl1
  loc_10180C2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_10180D7: If ( = "Browse") Then
  loc_10180DA:   Exit Sub
  loc_10180DB: End If
  loc_101814F: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_101815A:   var_DC = "+{Tab}"
  loc_1018160:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_101816A:   Cancel = 0
  loc_101816D: End If
  loc_1018173: global_64 = Cancel
  loc_1018199: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10181BD: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10181D3:   var_EC = CLng(Me.FGrid.Col)
  loc_10181E3:   If Not (var_EC = CLng(1)) Then
  loc_10181ED:     If Not (var_EC = CLng(2)) Then
  loc_10181F7:       If (var_EC = CLng(3)) Then
  loc_10181FA:       End If
  loc_10181FA:     End If
  loc_101820D:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1018225:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_101822A:     var_11C = vbNullString
  loc_1018234:     Set var_E4 = Me.FGrid
  loc_101823A:     LateIdCallSt
  loc_1018252:   End If
  loc_1018252: End If
  loc_1018258: If (Cancel = &HD) Then
  loc_1018260:   global_56 = 0
  loc_1018263: End If
  loc_1018265: Cancel = 0
  loc_1018268: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0C700
  'Data Table: 46862C
  loc_E0C6F1: Call FGrid_UnknownEvent_C()
  loc_E0C6FB: global_56 = 0
  loc_E0C6FE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1017D98
  'Data Table: 46862C
  Dim var_88 As MSFlexGrid
  Dim var_BC As Long
  Dim var_D8 As String
  Dim var_DC As Integer
  Dim var_C0 As TextBox
  Dim var_D0 As TextBox
  loc_1017B84: Set var_88 = Me.TopCtrl1
  loc_1017B8A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1017B9F: If ( = "Browse") Then
  loc_1017BA2:   Exit Sub
  loc_1017BA3: End If
  loc_1017BB6: var_BC = CLng(Me.FGrid.Col)
  loc_1017BC6: If Not (var_BC = CLng(1)) Then
  loc_1017BD0:   If (var_BC = CLng(2)) Then
  loc_1017BD3:   End If
  loc_1017C11:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1017C26: Else
  loc_1017C2D:   If (var_BC = CLng(3)) Then
  loc_1017C34:     Set var_D0 = Me.FGrid
  loc_1017C58:     var_D8 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1017C61:     var_DC = Asc(var_D8)
  loc_1017C85:     Set var_C0 = var_D0
  loc_1017C97:     Proc_6_63_110B734(Me, var_C0, Me.TxtGrid, 0, 0, var_DC)
  loc_1017CBF:     Set var_88 = Me.TxtGrid
  loc_1017CC5:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C0, var_D8, 0, var_DC)
  loc_1017CCD:     &HFF = var_C0.Text
  loc_1017CE6:     If (Len(var_D8) <= 1) Then
  loc_1017CF5:       Set var_88 = Me.TxtGrid
  loc_1017CFB:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C0, var_D8)
  loc_1017D03:       Cancel = var_C0.Text
  loc_1017D14:       Set var_C4 = Me.TxtGrid
  loc_1017D1A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D0, var_D8)
  loc_1017D22:       var_D0.Text = 0
  loc_1017D35:     End If
  loc_1017D41:     Set var_88 = Me.TxtGrid
  loc_1017D47:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C0)
  loc_1017D61:     Set var_C4 = Me.TxtGrid
  loc_1017D67:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D0)
  loc_1017D6F:     var_D0.SelStart = Len(var_C0.Text)
  loc_1017D82:   End If
  loc_1017D82: End If
  loc_1017D8C: If (CLng(Cancel) <> &HD) Then
  loc_1017D94:   global_56 = &HFF
  loc_1017D97: End If
  loc_1017D97: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FD3134
  'Data Table: 46862C
  Dim var_9C As Variant
  Dim var_8C As MSFlexGrid
  Dim var_BC As Variant
  loc_FD2F70: Set var_8C = Me.TopCtrl1
  loc_FD2F76: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_FD2F8B: If ( = "Browse") Then
  loc_FD2F8E:   Exit Sub
  loc_FD2F8F: End If
  loc_FD2FAC: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FD2FAF:   Exit Sub
  loc_FD2FB0: End If
  loc_FD2FC1: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FD2FE3:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FD301D:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FD303F:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FD3055:         var_9C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FD305E:         Set var_110 = Me.FGrid
  loc_FD3079:       Else
  loc_FD308C:         Me.FGrid.Rows = 1
  loc_FD30A9:         var_BC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FD30B1:         Set var_110 = Me.FGrid
  loc_FD30E0:         Me.FGrid.FixedRows = 1
  loc_FD30E8:       End If
  loc_FD30E8:     End If
  loc_FD30EB:   Else
  loc_FD310C:     MsgBox("No Entries To Delete", &H10, "Delete !", var_EC, var_10C)
  loc_FD311C:   End If
  loc_FD3120:   Set var_8C = Me.FGrid
  loc_FD3131: End If
  loc_FD3131: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E2E444
  'Data Table: 46862C
  Dim var_8C As TextBox
  loc_E2E427: Set var_88 = Me.TxtGrid
  loc_E2E42D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E2E435: var_8C.Visible = False
  loc_E2E441: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EDE3FC
  'Data Table: 46862C
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_EC As String
  loc_EDE356: On Error Goto loc_EDE3B8
  loc_EDE35F: Me.MoveFirst
  loc_EDE393: var_E8 = "SYear='" & Year(MyValue) & "'" 
  loc_EDE397: var_EC = CStr(var_E8)
  loc_EDE3A1: Me.Find var_EC, 0, 1
  loc_EDE3B2: Call Proc_20_34_124CBE0(var_FC)
  loc_EDE3B7: Exit Sub
  loc_EDE3B8: ' Referenced from: EDE356
  loc_EDE3C0: Set var_100 = Err()
  loc_EDE3C6: Call 0.Method_arg_2C (var_EC)
  loc_EDE3E7: MsgBox(CVar(var_EC), &H40, "Information", var_E8, var_110)
  loc_EDE3FA: Exit Sub
  loc_EDE3FB: Exit Sub
End Sub

Public Sub Proc_20_31_F7D814
  'Data Table: 46862C
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_F7D6BC: Set var_88 = Me.FGrid
  loc_F7D6BF: var_98 = 0
  loc_F7D6C8: var_B8 = &H1F4
  loc_F7D6D4: LateIdCallSt
  loc_F7D6DC: var_98 = 0
  loc_F7D6EB: var_B8 = CVar(CInt(4)) 'Integer
  loc_F7D6F2: LateIdCallSt
  loc_F7D6FA: var_98 = 0
  loc_F7D706: var_B8 = CVar(CLng(1)) 'Long
  loc_F7D70B: var_D8 = "From Date (DDMM)"
  loc_F7D714: LateIdCallSt
  loc_F7D71F: var_98 = CVar(CLng(1)) 'Long
  loc_F7D724: var_B8 = &H6A4
  loc_F7D730: LateIdCallSt
  loc_F7D73B: var_98 = CVar(CLng(1)) 'Long
  loc_F7D746: var_B8 = CVar(CInt(4)) 'Integer
  loc_F7D74D: LateIdCallSt
  loc_F7D755: var_98 = 0
  loc_F7D761: var_B8 = CVar(CLng(2)) 'Long
  loc_F7D766: var_D8 = "To Date (DDMM)"
  loc_F7D76F: LateIdCallSt
  loc_F7D77A: var_98 = CVar(CLng(2)) 'Long
  loc_F7D77F: var_B8 = &H6A4
  loc_F7D78B: LateIdCallSt
  loc_F7D796: var_98 = CVar(CLng(2)) 'Long
  loc_F7D7A1: var_B8 = CVar(CInt(4)) 'Integer
  loc_F7D7A8: LateIdCallSt
  loc_F7D7B0: var_98 = 0
  loc_F7D7BC: var_B8 = CVar(CLng(3)) 'Long
  loc_F7D7C1: var_D8 = "Rate"
  loc_F7D7CA: LateIdCallSt
  loc_F7D7D5: var_98 = CVar(CLng(3)) 'Long
  loc_F7D7DA: var_B8 = &H3E8
  loc_F7D7E6: LateIdCallSt
  loc_F7D7F1: var_98 = CVar(CLng(3)) 'Long
  loc_F7D7FC: var_B8 = CVar(CInt(4)) 'Integer
  loc_F7D803: LateIdCallSt
  loc_F7D80D: Set var_88 = Nothing 
  loc_F7D811: Exit Sub
End Sub

Public Sub Proc_20_32_E88AB0(arg_C) 'E88AB0
  'Data Table: 46862C
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_E88A4A: Set var_8C = Me.txt
  loc_E88A50: Call 0.Method_Proc_20_32_E88AB0C (var_8E, var_86)
  loc_E88A60: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E88A76:   Set var_8C = Me.txt
  loc_E88A7C:   Call 0.Method_Proc_20_32_E88AB00 (CInt(var_86), var_98)
  loc_E88A84:   var_98.Enabled = arg_C
  loc_E88A93: Next var_92 'Byte
  loc_E88AA6: Me.framWeek.Enabled = arg_C
  loc_E88AAE: Exit Sub
End Sub

Public Sub Proc_20_33_F1C35C
  'Data Table: 46862C
  Dim var_98 As TextBox
  Dim var_A8 As Long
  Dim var_8C As MSFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_F1C266: Set var_8C = Me.txt
  loc_F1C26C: Call 0.Method_Proc_20_33_F1C35CC (var_8E, var_86)
  loc_F1C27C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1C292:   Set var_8C = Me.txt
  loc_F1C298:   Call 0.Method_Proc_20_33_F1C35C0 (CInt(var_86), var_98)
  loc_F1C2A0:   var_98.Text = vbNullString
  loc_F1C2BC:   Set var_8C = Me.txt
  loc_F1C2C2:   Call 0.Method_Proc_20_33_F1C35C0 (CInt(var_86), var_98)
  loc_F1C2CA:   var_98.Tag = vbNullString
  loc_F1C2D9: Next var_92 'Byte
  loc_F1C2F2: Me.FGrid.FixedRows = 1
  loc_F1C30D: Me.FGrid.Rows = 2
  loc_F1C31C: For var_BC = 1 To 3: var_86 = var_BC 'Byte
  loc_F1C322:   var_A8 = 1
  loc_F1C330:   var_CC = CVar(CLng(var_86)) 'Long
  loc_F1C335:   var_EC = vbNullString
  loc_F1C33F:   Set var_8C = Me.FGrid
  loc_F1C345:   LateIdCallSt
  loc_F1C353: Next var_BC 'Byte
  loc_F1C359: Exit Sub
End Sub

Public Sub Proc_20_34_124CBE0
  'Data Table: 46862C
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_468639 As Connection15
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Variant
  Dim Me As Recordset15
  Dim var_110 As TextBox
  Dim var_114 As String
  Dim var_118 As String
  Dim var_88 As Recordset15
  Dim var_144 As Variant
  Dim var_D8 As Variant
  Dim var_164 As Variant
  Dim var_134 As Variant
  Dim var_E8 As Variant
  loc_124C6B0: On Error Goto loc_124CB9A
  loc_124C6CE: var_98 = "SELECT Weekend FROM SeasonMast1 WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'"
  loc_124C6D7: unk_468639.Execute var_98, var_B8, -1
  loc_124C6E2: Set var_8C = var_BC
  loc_124C707: If Not((var_8C.RecordCount <= 0)) Then
  loc_124C724:   var_C4 = var_8C.Fields.Item("WeekEnd")
  loc_124C758:   For var_C8 = CByte(1) To CByte(7): var_8E = var_C8 'Byte
  loc_124C774:     Set var_BC = Me.chkday
  loc_124C77A:     Call 0.Method_Proc_20_34_124CBE00 ((CInt(var_8E) - 1), var_C4, CInt(0))
  loc_124C782:     var_C4.Value = CByte(1)
  loc_124C7BD:     If (Mid(CStr(var_C4.Value), CLng(var_8E), 1) = "*") Then
  loc_124C7D6:       Set var_BC = Me.chkday
  loc_124C7DC:       Call 0.Method_Proc_20_34_124CBE00 ((CInt(var_8E) - 1), var_C4)
  loc_124C7E4:       var_C4.Value = CInt(1)
  loc_124C7F0:     End If
  loc_124C7F3:   Next var_C8 'Byte
  loc_124C7F9: End If
  loc_124C7FF: Proc_183_45_E5CCA8(global_52)
  loc_124C81B: If (Me.RecordCount <= 0) Then
  loc_124C81E:   Call Proc_20_33_F1C35C()
  loc_124C826: Else
  loc_124C843:   var_C4 = Me.Fields.Item("SYear")
  loc_124C863:   Set var_10C = Me.txt
  loc_124C869:   Call 0.Method_Proc_20_34_124CBE00 (CInt(0), var_110)
  loc_124C871:   var_110.Text = CStr(var_C4.Value)
  loc_124C8A2:   var_114 = "Select FromDate,ToDate,RateCode from SeasonMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Year(FromDate)='"
  loc_124C8B3:   Set var_BC = Me.txt
  loc_124C8B9:   Call 0.Method_Proc_20_34_124CBE00 (CInt(0), var_C4, var_98, var_114)
  loc_124C8C1:   var_B8 = var_C4.Text
  loc_124C8CA:   var_118 = -1 & var_98
  loc_124C8DA:   unk_468639.Execute var_118 & "'", var_10C, 
  loc_124C8E5:   Set var_88 = var_10C
  loc_124C915:   If (var_88.RecordCount > 0) Then
  loc_124C91C:     var_8E = CByte(1) 'Byte
  loc_124C933:     Me.FGrid.FixedRows = 1
  loc_124C94F:     var_A8 = CVar((var_88.RecordCount + 1)) 'Long
  loc_124C95E:     Me.FGrid.Rows = 1
  loc_124C966:     ' Referenced from:   124CADC
  loc_124C975:     If Not(var_88.EOF) Then
  loc_124C97C:       Set var_124 = Me.FGrid
  loc_124C9A0:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_124C9A8:       var_144 = CVar(CLng(1)) 'Long
  loc_124C9D5:       var_164 = CVar(CStr(Format(CVar(var_88.Fields.Item("FromDate")), "DD/MMM"))) 'String
  loc_124C9DC:       LateIdCallSt
  loc_124CA13:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_124CA1B:       var_144 = CVar(CLng(2)) 'Long
  loc_124CA3F:       var_108 = Format(CVar(var_88.Fields.Item("ToDate")), "DD/MMM")
  loc_124CA48:       var_164 = CVar(CStr(var_108)) 'String
  loc_124CA4F:       LateIdCallSt
  loc_124CA6A:       var_D8 = CVar(CLng(var_8E)) 'Long
  loc_124CA72:       var_134 = CVar(CLng(3)) 'Long
  loc_124CA91:       var_C4 = var_88.Fields.Item("RateCode")
  loc_124CA99:       var_B8 = var_C4.Value
  loc_124CAA2:       var_E8 = CVar(CStr(var_B8)) 'String
  loc_124CAA9:       LateIdCallSt
  loc_124CAC1:       Set var_124 = Nothing 
  loc_124CAD0:       var_8E = CByte((CInt(var_8E) + 1)) 'Byte
  loc_124CAD7:       var_88.MoveNext
  loc_124CADC:       GoTo loc_124C966
  loc_124CADF:     End If
  loc_124CADF:   End If
  loc_124CADF: End If
  loc_124CAF3: var_94 = "Select FromDate,ToDate,RateCode from SeasonMast where (LOGSITE_CODE='" & MemVar_1F95078
  loc_124CB0B: Set var_BC = Me.txt
  loc_124CB11: Call 0.Method_Proc_20_34_124CBE00 (CInt(0), var_C4, var_98, var_94 & "' or LOGSITE_CODE='HO') and Year(FromDate)='", var_B8, -1, var_10C)
  loc_124CB32: unk_468639.Execute var_E8 & var_98 & "'", var_134, var_D8
  loc_124CB6E: If Not((var_10C.RecordCount > 0)) Then
  loc_124CB7F:   Set var_BC = Me.txt
  loc_124CB85:   Call 0.Method_Proc_20_34_124CBE00 (CInt(0), var_C4, vbNullString)
  loc_124CB8D:   var_C4.Text = var_C4.Text
  loc_124CB99: End If
  loc_124CB99: Exit Sub
  loc_124CB9A: ' Referenced from: 124C6B0
  loc_124CBA2: Set var_BC = Err()
  loc_124CBA8: Call 0.Method_arg_2C (var_94, var_164)
  loc_124CBC9: MsgBox(CVar(var_94), &H40, "Information", var_108, var_164)
  loc_124CBDC: Exit Sub
End Sub

Public Sub Proc_20_35_F88A80
  'Data Table: 46862C
  Dim var_C4 As TextBox
  Dim unk_468639 As Connection15
  Dim var_DC As Fields15
  Dim var_F0 As Field20
  loc_F8894C: Set var_8C = Me.TopCtrl1
  loc_F88952: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_F88967: If ( = "Add") Then
  loc_F889A5:   Set var_8C = Me.txt
  loc_F889AB:   Call 0.Method_Proc_20_35_F88A800 (CInt(0), var_C4, var_C8, "Select Count(*) From SeasonMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and year(fromdate)='", var_AC, -1)
  loc_F889CC:   unk_468639.Execute var_DC & var_C8 & "'", 0, var_F0
  loc_F889DC:    = var_DC.Item()
  loc_F889E4:    = var_F0.Value
  loc_F88A15:   If (var_C4.Text.Fields > 0) Then
  loc_F88A39:     MsgBox("Duplicate Year", &H40, "Information", var_110, var_130)
  loc_F88A54:     Set var_8C = Me.txt
  loc_F88A5A:     Call 0.Method_Proc_20_35_F88A800 (CInt(0))
  loc_F88A62:     var_C4.SetFocus
  loc_F88A73:     Proc_20_35_F88A80 = &HFF
  loc_F88A79:   End If
  loc_F88A79: End If
  loc_F88A79: Proc_20_35_F88A80 = var_C4
End Sub

Public Sub Proc_20_36_E8E104(arg_C) 'E8E104
  'Data Table: 46862C
  Dim var_10C As TextBox
  loc_E8E0D3: If (MsgBox("Save Data ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8E0D6:   Call TopCtrl1_UnknownEvent_19()
  loc_E8E0DE: Else
  loc_E8E0E8:   Set var_108 = Me.txt
  loc_E8E0EE:   Call 0.Method_Proc_20_36_E8E1040 (arg_C)
  loc_E8E0F6:   var_10C.SetFocus
  loc_E8E102: End If
  loc_E8E102: Exit Sub
End Sub

Public Sub Proc_20_37_E2E1A0
  'Data Table: 46862C
  loc_E2E180: Set var_88 = Me.TopCtrl1
  loc_E2E186: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E2E19B: If ( = "Browse") Then
  loc_E2E19E:   Exit Sub
  loc_E2E19F: End If
  loc_E2E19F: Exit Sub
End Sub

Public Sub Proc_20_38_122255C(arg_C) '122255C
  'Data Table: 46862C
  Dim var_94 As MSFlexGrid
  Dim var_A8 As Long
  Dim var_B0 As TextBox
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_118 As MSFlexGrid
  Dim var_128 As Variant
  Dim var_B4 As String
  Dim var_13C As Variant
  Dim var_14C As Variant
  loc_1222078: If (arg_C = 0) Then
  loc_122208E:   var_A8 = CLng(Me.FGrid.Col)
  loc_122209E:   If (var_A8 = CLng(1)) Then
  loc_12220A4:     Call Proc_20_39_1078B34(var_AA, var_A8)
  loc_12220AF:     If (var_AA = 0) Then
  loc_12220B7:       Proc_20_38_122255C = 0
  loc_12220BD:     End If
  loc_12220C0:     Call Proc_20_40_11F6F38(var_AA)
  loc_12220CB:     If (var_AA = &HFF) Then
  loc_12220D3:       Proc_20_38_122255C = 0
  loc_12220D9:     End If
  loc_12220DC:     Call Proc_20_42_10BE660(var_AA)
  loc_12220E7:     If (var_AA = &HFF) Then
  loc_12220EF:       Proc_20_38_122255C = 0
  loc_12220F5:     End If
  loc_1222102:     Set var_94 = Me.TxtGrid
  loc_1222108:     Call 0.Method_Proc_20_38_122255C0 (arg_C, var_B0)
  loc_1222110:     var_B4 = var_B0.Text
  loc_1222127:     If (var_B4 = vbNullString) Then
  loc_122213D:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1222145:       var_E4 = CVar(CLng(1)) 'Long
  loc_122214A:       var_104 = vbNullString
  loc_1222154:       Set var_B0 = Me.FGrid
  loc_122215A:       LateIdCallSt
  loc_122216F:     Else
  loc_1222182:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122218A:       var_E4 = CVar(CLng(1)) 'Long
  loc_122219C:       Set var_94 = Me.TxtGrid
  loc_12221A2:       Call 0.Method_Proc_20_38_122255C0 (arg_C, var_B0, var_B4, var_E4, var_C4)
  loc_12221AA:       var_B0 = var_B0.Text
  loc_12221B2:       var_128 = CVar(var_B4) 'String
  loc_12221BA:       Set var_12C = Me.FGrid
  loc_12221C0:       LateIdCallSt
  loc_12221DA:     End If
  loc_12221DD:   Else
  loc_12221E4:     If (var_A8 = CLng(2)) Then
  loc_12221EA:       Call Proc_20_39_1078B34(var_AA, var_12C, var_128, var_104)
  loc_12221F5:       If (var_AA = 0) Then
  loc_12221FD:         Proc_20_38_122255C = 0
  loc_1222203:       End If
  loc_1222206:       Call Proc_20_40_11F6F38(var_AA, var_E4)
  loc_1222211:       If (var_AA = &HFF) Then
  loc_1222219:         Proc_20_38_122255C = 0
  loc_122221F:       End If
  loc_1222222:       Call Proc_20_41_1074064(var_AA, var_C4)
  loc_122222D:       If (var_AA = &HFF) Then
  loc_1222235:         Proc_20_38_122255C = 0
  loc_122223B:       End If
  loc_1222248:       Set var_94 = Me.TxtGrid
  loc_122224E:       Call 0.Method_Proc_20_38_122255C0 (arg_C, var_B0)
  loc_1222256:       var_B4 = var_B0.Text
  loc_122226D:       If (var_B4 = vbNullString) Then
  loc_1222283:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122228B:         var_E4 = CVar(CLng(2)) 'Long
  loc_1222290:         var_104 = vbNullString
  loc_122229A:         Set var_B0 = Me.FGrid
  loc_12222A0:         LateIdCallSt
  loc_12222B5:       Else
  loc_12222D0:         var_E4 = CVar(CLng(2)) 'Long
  loc_12222E2:         Set var_94 = Me.TxtGrid
  loc_12222E8:         Call 0.Method_Proc_20_38_122255C0 (arg_C, var_B0, var_B4, var_E4, CVar(CLng(Me.FGrid.Row)))
  loc_12222F0:         var_B0 = var_B0.Text
  loc_12222F8:         var_128 = CVar(var_B4) 'String
  loc_1222300:         Set var_12C = Me.FGrid
  loc_1222306:         LateIdCallSt
  loc_1222320:       End If
  loc_1222323:     Else
  loc_122232A:       If (var_A8 = CLng(3)) Then
  loc_1222337:         Set var_94 = Me.TxtGrid
  loc_122233D:         Call 0.Method_Proc_20_38_122255C0 (arg_C, var_B0, var_12C, var_128)
  loc_1222366:         If (Trim(CVar(var_B0)) = vbNullString) Then
  loc_122236E:           Proc_20_38_122255C = 0
  loc_1222377:         Else
  loc_1222381:           Set var_94 = Me.TxtGrid
  loc_1222387:           Call 0.Method_Proc_20_38_122255C0 (arg_C, var_B0, var_104)
  loc_1222396:           var_128 = Ucase(CVar(var_B0))
  loc_122239E:           var_B4 = CStr(var_128)
  loc_12223B4:           Set var_118 = Me.TxtGrid
  loc_12223BA:           Call 0.Method_Proc_20_38_122255C0 (arg_C, var_12C, (Asc(var_B4) < &H41))
  loc_12223C2:           var_13C = CVar(var_12C) 'Address
  loc_12223C9:           var_14C = Ucase(var_13C)
  loc_12223F7:           If (var_E4 Or (Asc(CStr(var_14C)) > &H5A)) Then
  loc_1222413:             MsgBox("Select Valid Rate Code", &H40, var_128, var_13C, var_14C)
  loc_1222428:             Proc_20_38_122255C = 0
  loc_1222431:           Else
  loc_122243E:             Set var_94 = Me.TxtGrid
  loc_1222444:             Call 0.Method_Proc_20_38_122255C0 (arg_C, var_B0, var_B4)
  loc_122244C:             var_C4 = var_B0.Text
  loc_1222463:             If (var_B4 = vbNullString) Then
  loc_1222479:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1222481:               var_E4 = CVar(CLng(3)) 'Long
  loc_1222486:               var_104 = vbNullString
  loc_1222490:               Set var_B0 = Me.FGrid
  loc_1222496:               LateIdCallSt
  loc_12224AB:             Else
  loc_12224D8:               Set var_94 = Me.TxtGrid
  loc_12224DE:               Call 0.Method_Proc_20_38_122255C0 (arg_C, var_B0, var_B4, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_12224E6:               var_B0 = var_B0.Text
  loc_12224FD:               var_14C = CVar(CStr(Ucase(CVar(var_B4)))) 'String
  loc_1222505:               Set var_12C = Me.FGrid
  loc_122250B:               LateIdCallSt
  loc_1222529:             End If
  loc_1222529:           End If
  loc_1222529:         End If
  loc_1222529:       End If
  loc_1222529:     End If
  loc_1222529:   End If
  loc_1222529: End If
  loc_122253C: Set var_94 = Me.TxtGrid
  loc_1222542: Call 0.Method_Proc_20_38_122255C0 (0, var_B0, 0, &HFF, var_12C)
  loc_122254A: var_B0.MaxLength = var_14C
  loc_1222556: Proc_20_38_122255C = var_104
End Sub

Public Sub Proc_20_39_1078B34
  'Data Table: 46862C
  Dim var_90 As Integer
  Dim var_92 As Integer
  Dim var_9C As TextBox
  Dim var_98 As MSFlexGrid
  Dim var_B4 As Long
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim var_8C As Integer
  Dim var_EA As Integer
  Dim var_86 As Integer
  loc_107889E: var_90 = 0
  loc_10788A3: var_92 = 0
  loc_10788B2: Set var_98 = Me.TxtGrid
  loc_10788B8: Call 0.Method_Proc_20_39_1078B340 (0, var_9C, var_A0)
  loc_10788C0: var_92 = var_9C.Text
  loc_10788DA: If Not((Len(var_A0) < 4)) Then
  loc_10788F0:   var_B4 = CLng(Me.FGrid.Col)
  loc_1078900:   If Not (var_B4 = CLng(1)) Then
  loc_107890A:     If (var_B4 = CLng(2)) Then
  loc_107890D:     End If
  loc_1078919:     Set var_98 = Me.TxtGrid
  loc_107891F:     Call 0.Method_Proc_20_39_1078B340 (0, var_9C, var_A0)
  loc_1078927:     var_B4 = var_9C.Text
  loc_1078949:     var_88 = CInt(Mid(CVar(var_A0), 3, 2))
  loc_107896A:     Set var_98 = Me.TxtGrid
  loc_1078970:     Call 0.Method_Proc_20_39_1078B340 (0, var_9C, var_A0)
  loc_1078978:     var_88 = var_9C.Text
  loc_1078990:     var_E4 = Mid(CVar(var_A0), 1, 2)
  loc_107899A:     var_8A = CInt(var_E4)
  loc_10789BD:     Set var_98 = Me.txt
  loc_10789C3:     Call 0.Method_Proc_20_39_1078B340 (CInt(0), var_9C, var_A0)
  loc_10789CB:     var_8A = var_9C.Text
  loc_10789E5:     If ((CInt(var_A0) Mod 4) = 0) Then
  loc_10789EA:       var_8C = &H1D
  loc_10789F0:     Else
  loc_10789F2:       var_8C = &H1C
  loc_10789F5:     End If
  loc_10789FC:     For var_E8 = 1 To &HC: var_8E = var_E8 'Integer
  loc_1078A09:       If (var_88 = var_8E) Then
  loc_1078A0E:         var_90 = &HFF
  loc_1078A11:         Exit For
  loc_1078A14:       End If
  loc_1078A17:     Next var_E8 'Integer
  loc_1078A1C:     ' Referenced from: 1078A11
  loc_1078A22:     If (var_90 = &HFF) Then
  loc_1078A28:       var_EA = var_88
  loc_1078A31:       If Not (var_EA = 1) Then
  loc_1078A3A:         If Not (var_EA = 3) Then
  loc_1078A43:           If Not (var_EA = 5) Then
  loc_1078A4C:             If Not (var_EA = 7) Then
  loc_1078A55:               If Not (var_EA = 8) Then
  loc_1078A5E:                 If Not (var_EA = &HA) Then
  loc_1078A67:                   If (var_EA = &HC) Then
  loc_1078A6A:                   End If
  loc_1078A6A:                 End If
  loc_1078A6A:               End If
  loc_1078A6A:             End If
  loc_1078A6A:           End If
  loc_1078A6A:         End If
  loc_1078A77:         If ((var_8A >= 1) And (var_8A <= &H1F)) Then
  loc_1078A7C:           var_92 = &HFF
  loc_1078A7F:         End If
  loc_1078A82:       Else
  loc_1078A88:         If Not (var_EA = 4) Then
  loc_1078A91:           If Not (var_EA = 6) Then
  loc_1078A9A:             If Not (var_EA = 9) Then
  loc_1078AA3:               If (var_EA = &HB) Then
  loc_1078AA6:               End If
  loc_1078AA6:             End If
  loc_1078AA6:           End If
  loc_1078AB3:           If ((var_8A >= 1) And (var_8A <= &H1E)) Then
  loc_1078AB8:             var_92 = &HFF
  loc_1078ABB:           End If
  loc_1078ABE:         Else
  loc_1078AC4:           If (var_EA = 2) Then
  loc_1078AD5:             If ((var_8A >= 1) And (var_8A <= var_8C)) Then
  loc_1078ADA:               var_92 = &HFF
  loc_1078ADD:             End If
  loc_1078ADD:           End If
  loc_1078ADD:         End If
  loc_1078ADD:       End If
  loc_1078ADD:     End If
  loc_1078AEA:     If ((var_90 = &HFF) And (var_92 = &HFF)) Then
  loc_1078AEF:       var_86 = &HFF
  loc_1078AF5:     Else
  loc_1078B16:       MsgBox("InValid Date (DDMM Required)", &H40, "Validation", var_E4, var_12C)
  loc_1078B28:       var_86 = 0
  loc_1078B2B:     End If
  loc_1078B2B:   End If
  loc_1078B2B: End If
  loc_1078B2B: Proc_20_39_1078B34 = var_86
End Sub

Public Sub Proc_20_40_11F6F38
  'Data Table: 46862C
  Dim var_86 As Integer
  Dim var_A8 As MSFlexGrid
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_100 As String
  Dim var_144 As Variant
  Dim var_158 As String
  Dim var_1B8 As Variant
  Dim var_168 As Integer
  Dim var_188 As Variant
  Dim var_20C As Variant
  Dim var_21C As Variant
  Dim var_23C As Variant
  Dim var_244 As TextBox
  Dim var_264 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_26C As TextBox
  Dim var_178 As Variant
  Dim var_1F8 As Variant
  loc_11F6ADA: var_86 = 0
  loc_11F6B05: For var_BC = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 2)): var_A2 = var_BC 'Byte
  loc_11F6B2B:   If Not((CLng(var_A2) = CLng(Me.FGrid.Row))) Then
  loc_11F6B33:     var_CC = CVar(CLng(var_A2)) 'Long
  loc_11F6B3B:     var_EC = CVar(CLng(1)) 'Long
  loc_11F6B55:     var_100 = CStr(Me.FGrid.TextMatrix))
  loc_11F6B84:     var_158 = CStr(Me.FGrid.TextMatrix))
  loc_11F6BA2:     If (CVar(CLng(2)) And (var_158 <> vbNullString)) Then
  loc_11F6BB2:       var_EC = CVar(CLng(1)) 'Long
  loc_11F6BC1:       var_B8 = Me.FGrid.TextMatrix)
  loc_11F6BE9:       var_1B8 = Me.FGrid.TextMatrix)
  loc_11F6C16:       var_188 = (Mid(CVar(CStr(var_B8)), 1, 2) + "/")
  loc_11F6C3F:       var_20C = CVar(Proc_6_119_F75C1C(CInt(Mid(CVar(CStr(var_1B8)), 3, 2)), var_188, var_1B8, CVar(CLng(1)), CVar(CLng(var_A2)), var_B8, var_EC)) 'String
  loc_11F6C42:       var_21C = (CVar(CLng(var_A2)) + var_20C)
  loc_11F6C4B:       var_23C = (var_21C + "/")
  loc_11F6C5D:       Set var_240 = Me.txt
  loc_11F6C63:       Call 0.Method_Proc_20_40_11F6F380 (CInt(0), var_244, var_100, var_23C, CVar(CLng(var_A2)))
  loc_11F6C6B:       (var_100 <> vbNullString) = var_244.Text
  loc_11F6C76:       var_264 = (var_EC + CVar(var_100))
  loc_11F6C7C:       var_90 = CDate(var_264)
  loc_11F6CB0:       var_CC = CVar(CLng(var_A2)) 'Long
  loc_11F6CC7:       var_B8 = Me.FGrid.TextMatrix)
  loc_11F6CE9:       Set var_144 = Me.FGrid
  loc_11F6CEF:       var_1B8 = var_144.TextMatrix)
  loc_11F6D1C:       var_188 = (Mid(CVar(CStr(var_B8)), 1, 2) + "/")
  loc_11F6D45:       var_20C = CVar(Proc_6_119_F75C1C(CInt(Mid(CVar(CStr(var_1B8)), 3, 2)), var_188, var_1B8, CVar(CLng(2)), CVar(CLng(var_A2)), var_B8)) 'String
  loc_11F6D48:       var_21C = (CVar(CLng(2)) + var_20C)
  loc_11F6D51:       var_23C = (var_21C + "/")
  loc_11F6D63:       Set var_240 = Me.txt
  loc_11F6D69:       Call 0.Method_Proc_20_40_11F6F380 (CInt(0), var_244, var_100, var_23C)
  loc_11F6D71:       var_CC = var_244.Text
  loc_11F6D7C:       var_264 = (var_90 + CVar(var_100))
  loc_11F6D82:       var_98 = CDate(var_264)
  loc_11F6DBD:       Set var_A8 = Me.TxtGrid
  loc_11F6DC3:       Call 0.Method_Proc_20_40_11F6F380 (0, var_144, var_100)
  loc_11F6DE3:       var_168 = Mid(CVar(var_100), 1, 2)
  loc_11F6DF4:       Set var_240 = Me.TxtGrid
  loc_11F6DFA:       Call 0.Method_Proc_20_40_11F6F380 (0, var_244, var_158)
  loc_11F6E02:       var_CC = var_244.Text
  loc_11F6E3C:       Set var_268 = Me.txt
  loc_11F6E42:       Call 0.Method_Proc_20_40_11F6F380 (CInt(0), var_26C)
  loc_11F6E6C:       var_178 = (var_168 + "/")
  loc_11F6E76:       var_1F8 = (Mid(CVar(CStr(CVar(var_100))), 1, 2) + CVar(Proc_6_119_F75C1C(CInt(Mid(CVar(var_158), 3, 2)))))
  loc_11F6E7F:       var_20C = (Mid(CVar(CStr(2)), 3, 2) + "/")
  loc_11F6E89:       var_23C = (var_20C + CVar(var_26C.Text))
  loc_11F6EE8:       If ((CDate(Format(CVar(CStr(var_23C)), "Short Date")) >= var_90) And (CDate(Format(CVar(CStr(var_23C)), "Short Date")) <= var_144.Text)) Then
  loc_11F6F0C:         MsgBox("Date Already Feeded", &H40, "Validation", var_168, Mid(CVar(CStr("Date Already Feeded")), 1, 2))
  loc_11F6F21:         Proc_20_40_11F6F38 = &HFF
  loc_11F6F27:       End If
  loc_11F6F27:     End If
  loc_11F6F27:   End If
  loc_11F6F2A: Next var_BC 'Byte
  loc_11F6F30: Proc_20_40_11F6F38 = 
End Sub

Public Sub Proc_20_41_1074064
  'Data Table: 46862C
  Dim var_86 As Integer
  Dim var_9C As MSFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_164 As MSFlexGrid
  Dim var_184 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_130 As Variant
  Dim var_110 As Variant
  Dim var_160 As Variant
  Dim var_1D8 As Variant
  Dim var_218 As Variant
  Dim var_238 As Variant
  Dim var_240 As TextBox
  Dim var_264 As Variant
  Dim var_90 As Double
  Dim var_208 As Variant
  loc_1073E30: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1073E38: var_DC = CVar(CLng(1)) 'Long
  loc_1073E41: Set var_F0 = Me.FGrid
  loc_1073E47: var_100 = var_F0.TextMatrix)
  loc_1073E66: var_184 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1073E77: Set var_1B8 = Me.FGrid
  loc_1073E7D: var_1C8 = var_1B8.TextMatrix)
  loc_1073EAA: var_160 = (Mid(CVar(CStr(var_100)), 1, 2) + "/")
  loc_1073ECA: var_218 = (var_160 + Mid(CVar(CStr(var_1C8)), 3, 2))
  loc_1073ED3: var_238 = (var_218 + "/")
  loc_1073EE5: Set var_23C = Me.txt
  loc_1073EEB: Call 0.Method_Proc_20_41_10740640 (CInt(0), var_240, var_244, var_238, var_1C8, CVar(CLng(1)))
  loc_1073EF3: var_184 = var_240.Text
  loc_1073EFE: var_264 = (var_100 + CVar(var_244))
  loc_1073F04: var_90 = CDate(var_264)
  loc_1073F45: Set var_9C = Me.TxtGrid
  loc_1073F4B: Call 0.Method_Proc_20_41_10740640 (0, var_F0, var_244, var_90)
  loc_1073F53: var_DC = var_F0.Text
  loc_1073F64: Set var_164 = Me.TxtGrid
  loc_1073F6A: Call 0.Method_Proc_20_41_10740640 (0, var_1B8, var_268)
  loc_1073F72: var_BC = var_1B8.Text
  loc_1073F8A: var_110 = Mid(CVar(var_244), 1, 2)
  loc_1073F97: var_130 = (var_110 + "/")
  loc_1073FB6: var_1C8 = (2 + Mid(CVar(var_268), 3, 2))
  loc_1073FBF: var_1D8 = (var_1C8 + "/")
  loc_1073FD1: Set var_23C = Me.txt
  loc_1073FD7: Call 0.Method_Proc_20_41_10740640 (CInt(0), var_240, var_26C)
  loc_1073FDF: var_1D8 = var_240.Text
  loc_1073FEA: var_208 = (0 + CVar(var_26C))
  loc_1074024: If (CDate(Mid(CVar(CStr(var_1C8)), 3, 2)) <= var_90) Then
  loc_1074048:   MsgBox("To Date Must Be Greater Than From Date", &H40, "Validation", var_110, 2)
  loc_107405A:   var_86 = &HFF
  loc_107405D: End If
  loc_107405D: Proc_20_41_1074064 = var_86
End Sub

Public Sub Proc_20_42_10BE660
  'Data Table: 46862C
  Dim var_86 As Integer
  Dim var_9C As MSFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim var_12C As Variant
  Dim var_124 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_188 As TextBox
  Dim var_1AC As Variant
  Dim var_128 As MSFlexGrid
  Dim var_1DC As Variant
  Dim var_114 As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_26C As Variant
  loc_10BE3DC: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10BE3E4: var_DC = CVar(CLng(2)) 'Long
  loc_10BE3ED: Set var_F0 = Me.FGrid
  loc_10BE3FE: var_104 = CStr(var_F0.TextMatrix))
  loc_10BE417: If (var_104 <> vbNullString) Then
  loc_10BE426:   Set var_9C = Me.TxtGrid
  loc_10BE42C:   Call 0.Method_Proc_20_42_10BE6600 (0, var_F0, var_104)
  loc_10BE434:   var_DC = var_F0.Text
  loc_10BE445:   Set var_128 = Me.TxtGrid
  loc_10BE44B:   Call 0.Method_Proc_20_42_10BE6600 (0, var_12C, var_130)
  loc_10BE453:   var_BC = var_12C.Text
  loc_10BE478:   var_124 = (Mid(CVar(var_104), 1, 2) + "/")
  loc_10BE497:   var_170 = (var_124 + Mid(CVar(var_130), 3, 2))
  loc_10BE4A0:   var_180 = (var_170 + "/")
  loc_10BE4B2:   Set var_184 = Me.txt
  loc_10BE4B8:   Call 0.Method_Proc_20_42_10BE6600 (CInt(0), var_188, var_18C)
  loc_10BE4C0:   var_180 = var_188.Text
  loc_10BE4CB:   var_1AC = (0 + CVar(var_18C))
  loc_10BE511:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10BE519:   var_DC = CVar(CLng(2)) 'Long
  loc_10BE528:   var_100 = Me.FGrid.TextMatrix)
  loc_10BE547:   var_1DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10BE55E:   var_170 = Me.FGrid.TextMatrix)
  loc_10BE56A:   var_124 = 2
  loc_10BE578:   var_114 = CVar(CStr(var_100)) 'String
  loc_10BE58B:   var_150 = (Mid(var_114, 1, var_124) + "/")
  loc_10BE5AB:   var_22C = (2 + Mid(CVar(CStr(var_170)), 3, 2))
  loc_10BE5B4:   var_24C = (var_22C + "/")
  loc_10BE5C6:   Set var_184 = Me.txt
  loc_10BE5CC:   Call 0.Method_Proc_20_42_10BE6600 (CInt(0), var_188, var_104, var_24C, var_170, CVar(CLng(2)))
  loc_10BE5D4:   var_1DC = var_188.Text
  loc_10BE5DF:   var_26C = (var_100 + CVar(var_104))
  loc_10BE621:   If (CDate(Mid(CVar(CStr(var_170)), 3, 2)) >= CDate(var_26C)) Then
  loc_10BE645:     MsgBox("From Date Must Be Lesser Than To Date", &H40, "Validation", var_114, var_124)
  loc_10BE657:     var_86 = &HFF
  loc_10BE65A:   End If
  loc_10BE65A: End If
  loc_10BE65A: Proc_20_42_10BE660 = var_86
End Sub
