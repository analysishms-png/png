VERSION 5.00
Begin VB.Form FrmGrcBlank
  Caption = "Guest Registration  Card"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 120
  ClientTop = 900
  ClientWidth = 4680
  ClientHeight = 3090
  LockControls = -1  'True
  Begin Frame FrGuestInfo
    Caption = "Frame1"
    Left = 4845
    Top = 3960
    Width = 6090
    Height = 600
    TabIndex = 13
    BorderStyle = 0 'None
    Begin TextBox txt
      Index = 1
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 315
      Width = 1785
      Height = 255
      TabIndex = 15
      BorderStyle = 0 'None
      MaxLength = 12
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 0
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 4860
      Height = 255
      TabIndex = 14
      BorderStyle = 0 'None
      MaxLength = 50
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Guest Name :"
      Index = 0
      ForeColor = &H80&
      Left = 0
      Top = 30
      Width = 1125
      Height = 225
      TabIndex = 17
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
    Begin Label Label
      Caption = "Mobile No. :"
      Index = 1
      ForeColor = &H80&
      Left = 0
      Top = 345
      Width = 960
      Height = 225
      TabIndex = 16
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
  End
  Begin Frame FrReserv
    Caption = "Frame1"
    Left = 4845
    Top = 3600
    Width = 3930
    Height = 330
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Begin TextBox TxtResv
      ForeColor = &HFF0000&
      Left = 2970
      Top = 0
      Width = 840
      Height = 315
      TabIndex = 9
      BorderStyle = 0 'None
      Alignment = 2 'Center
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
    Begin BtnEnh BtnEnh2
      Left = 0
      Top = 0
      Width = 2955
      Height = 330
      TabIndex = 12
    End
  End
  Begin BtnEnh BtnEnh1
    Left = 4845
    Top = 3195
    Width = 2955
    Height = 330
    TabIndex = 10
  End
  Begin TextBox TxtRS
    ForeColor = &HFF0000&
    Left = 7815
    Top = 3195
    Width = 840
    Height = 315
    Text = "1"
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 2 'Center
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
  Begin CheckBox ChkSix
    Caption = "For First Guest"
    BackColor = &H4000&
    ForeColor = &HFFFFFF&
    Left = 975
    Top = 3060
    Width = 2535
    Height = 285
    Visible = 0   'False
    TabIndex = 7
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
  Begin CheckBox ChkFift
    Caption = "For First Guest"
    BackColor = &H4000&
    ForeColor = &HFFFFFF&
    Left = 975
    Top = 2760
    Width = 2535
    Height = 285
    Visible = 0   'False
    TabIndex = 6
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
  Begin CheckBox ChkFourth
    Caption = "For First Guest"
    BackColor = &H4000&
    ForeColor = &HFFFFFF&
    Left = 975
    Top = 2460
    Width = 2535
    Height = 285
    Visible = 0   'False
    TabIndex = 5
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
  Begin CheckBox Chk3
    Caption = "For First Guest"
    BackColor = &H4000&
    ForeColor = &HFFFFFF&
    Left = 975
    Top = 2160
    Width = 2535
    Height = 285
    Visible = 0   'False
    TabIndex = 4
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
  Begin CheckBox Chk2
    Caption = "For Secound Guest"
    BackColor = &H4000&
    ForeColor = &HFFFFFF&
    Left = 975
    Top = 1860
    Width = 2535
    Height = 285
    Visible = 0   'False
    TabIndex = 3
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
  Begin CheckBox Chk1
    Caption = "For First Guest"
    BackColor = &H4000&
    ForeColor = &HFFFFFF&
    Left = 990
    Top = 1560
    Width = 2535
    Height = 285
    Visible = 0   'False
    TabIndex = 2
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
  Begin BtnEnh CmdExit
    Left = 7245
    Top = 5205
    Width = 1470
    Height = 1065
    TabIndex = 0
  End
  Begin BtnEnh CmdNew
    Index = 4
    Left = 4830
    Top = 5205
    Width = 1470
    Height = 1065
    TabIndex = 1
  End
End

Attribute VB_Name = "FrmGrcBlank"


Private Sub Form_Load() 'FD5438
  'Data Table: 44519C
  Dim var_8C As Variant
  Dim var_94 As String
  Dim unk_4451B3 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  loc_FD527C: On Error Goto loc_FD53F3
  loc_FD5295: Proc_6_23_DFC5B8(Me, 0)
  loc_FD52A4: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_FD52B7: Me.FrReserv.BackColor = CLng(MemVar_1F951B4)
  loc_FD52C7: Set var_8C = Me.FrGuestInfo
  loc_FD52CD: var_8C.BackColor = CLng(MemVar_1F951B4)
  loc_FD52F9: unk_4451B3.Execute "Select IncReservationInBlankGRC from Enviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_B8, -1
  loc_FD5304: Set var_88 = var_8C
  loc_FD5328: If (var_88.RecordCount > 0) Then
  loc_FD533A:   var_8C = var_88.Fields
  loc_FD5353:   var_94 = Proc_6_38_E69628(CVar(var_8C.Item("IncReservationInBlankGRC")), var_8C)
  loc_FD5359:   global_56 = var_94
  loc_FD5366: End If
  loc_FD5385: Me.FrGuestInfo.Top = Me.FrReserv.Top
  loc_FD53B0: Me.FrGuestInfo.Left = Me.FrReserv.Left
  loc_FD53C7: If (global_56 = "Yes") Then
  loc_FD53D6:   Me.FrReserv.Visible = True
  loc_FD53EA:   Me.FrGuestInfo.Visible = False
  loc_FD53F2: End If
  loc_FD53F2: Exit Sub
  loc_FD53F3: ' Referenced from: FD527C
  loc_FD53FB: Set var_8C = Err()
  loc_FD5401: Call 0.Method_arg_2C (var_94)
  loc_FD5422: MsgBox(CVar(var_94), &H40, "Information", var_F0, var_110)
  loc_FD5435: Exit Sub
  loc_FD5436: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E67DBC
  'Data Table: 44519C
  loc_E67D7E: If (KeyAscii = CInt(1)) Then
  loc_E67D8B:   Set var_8C = Me.txt
  loc_E67D91:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_E67DAC:   Proc_6_42_129B55C(var_90, arg_10, &HC)
  loc_E67DB8: End If
  loc_E67DB8: Exit Sub
End Sub

Private Sub CmdNew_UnknownEvent_9 '126B4FC
  'Data Table: 44519C
  Dim var_A4 As Integer
  Dim var_C8 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_158 As String
  Dim var_1E8 As Variant
  Dim var_23C As String
  Dim unk_4451B3 As Connection15
  Dim var_88 As Recordset15
  Dim var_CC As Variant
  Dim var_114 As TextBox
  Dim var_90 As Long
  Dim var_288 As Double
  Dim var_264 As String
  Dim var_278 As String
  Dim var_D0 As Field20
  Dim var_E0 As Variant
  loc_126AFD8: On Error Goto loc_126B4B1
  loc_126AFEF: var_A4 = CInt(Trim(MemVar_1F9512C))
  loc_126B012: Set var_CC = Me.txt
  loc_126B018: Call 0.Method_CmdNew_UnknownEvent_90 (CInt(0), var_D0, "Select Max(IsNull(VP.Start_Srl_No,0)) Start_Srl_No,Convert(VarChar(50),", var_25C)
  loc_126B027: Proc_6_17_EAAE40(var_E0, CVar(var_D0), -1)
  loc_126B038: var_110 = var_260 & var_E0 & ") As BlankGuestName,Convert(VarChar(15)," 
  loc_126B047: Set var_114 = Me.txt
  loc_126B04D: Call 0.Method_CmdNew_UnknownEvent_90 (CInt(1), var_118)
  loc_126B05C: Proc_6_17_EAAE40(var_138, CVar(var_118))
  loc_126B068: var_158 = ") As BlankMobileNo From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='"
  loc_126B093: var_1E8 = var_110 & var_138 & var_158 & CVar(MemVar_1F95070) & "' AND VP.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "') and  VP.V_Type='CHK' And " 
  loc_126B0A2: Proc_6_7_F26918(var_208, MemVar_1F950EC)
  loc_126B0C1: unk_4451B3.Execute CStr(var_1E8 & var_208 & " Between VP.Date_From And VP.Date_To"), var_A4, 
  loc_126B115: var_D0 = var_260.Fields.Item("start_srl_no")
  loc_126B124: Proc_6_39_E7D3A0(var_E0)
  loc_126B146: var_100 = CVar(Val(Me.TxtRS.Text)) 'Double
  loc_126B14A: var_F0 = (var_E0 + var_100)
  loc_126B150: var_90 = CLng(var_260 & var_E0)
  loc_126B171: If (global_56 = "Yes") Then
  loc_126B181:   var_23C = Me.TxtResv.Text
  loc_126B18E:   var_288 = Val(var_23C)
  loc_126B1C4:   var_278 = "Select DocId From Booking Where (Vtype='RES' and BookNo=" & CStr(var_288) & " and vprefix='" & CStr(var_A4) & "' and LOGSITE_CODE='"
  loc_126B1DB:   unk_4451B3.Execute var_278 & MemVar_1F95078 & "' or LOGSITE_CODE='HO')", CVar(var_D0), -1
  loc_126B1E6:   Set var_88 = var_D0
  loc_126B20E:   var_28C = var_88.RecordCount
  loc_126B21C:   If (var_28C > 0) Then
  loc_126B239:     var_D0 = var_88.Fields.Item("DocID")
  loc_126B24A:     var_A8 = CStr(var_D0.Value)
  loc_126B257:   End If
  loc_126B25D:   Call 0.Method_arg_50 (var_23C, var_D0, var_288)
  loc_126B278:   Proc_146_4_1AA9270(var_A8, "FolioPrintBlank", var_23C)
  loc_126B287: Else
  loc_126B28C:   var_29C = "FolionoBank" 'Variant
  loc_126B2B3:   var_264 = CStr(CVar(MemVar_1F950B4 & "\") & var_29C & ".ttx")
  loc_126B2BA:   Set var_CC = var_88 
  loc_126B2C1:   CreateFieldDefFile(var_CC, var_264, &HFF)
  loc_126B2CD:   Set var_88 = var_CC
  loc_126B300:   var_F0 = CVar(MemVar_1F950B4 & "\") & var_29C & ".RPT" 
  loc_126B304:   var_23C = CStr(var_F0)
  loc_126B30E:   Call 0.Method_arg_1C (var_23C, var_100, var_CC)
  loc_126B319:   MemVar_1F951E8 = var_CC
  loc_126B33D:   Call 0.Method_arg_90 (var_CC, var_28C, var_A2, 1)
  loc_126B345:   Call 0.Method_arg_24 (var_90, var_90)
  loc_126B351:   For var_2A0 =  To CInt(var_28C):   var_C8 = var_2A0 'Integer
  loc_126B36A:     Call 0.Method_arg_90 (var_CC, CLng(var_A2))
  loc_126B372:     Call 0.Method_arg_20 (var_D0)
  loc_126B37A:     Call 0.Method_arg_30 (var_23C)
  loc_126B3C0:     If (Ucase(CVar(var_23C)) = Ucase("GRCNO")) Then
  loc_126B3D9:       Proc_6_17_EAAE40(var_F0)
  loc_126B3E1:       var_23C = CStr(var_F0)
  loc_126B3F5:       Call 0.Method_arg_90 (var_CC, CLng(var_A2), var_D0)
  loc_126B3FD:       Call 0.Method_arg_20 (var_23C)
  loc_126B405:       Call 0.Method_arg_38 (Trim(CVar(CStr(var_90))))
  loc_126B41D:     End If
  loc_126B420:   Next var_2A0 'Integer
  loc_126B43E:   Call 0.Method_arg_64 (var_CC, CVar(var_88))
  loc_126B446:   Call 0.Method_arg_2C (var_100)
  loc_126B454:   Call 0.Method_arg_150 (var_158)
  loc_126B45F:   Call 0.Method_arg_50 (var_23C)
  loc_126B469:   Set var_D0 = Nothing
  loc_126B483:   Set var_CC = MemVar_1F951E8 
  loc_126B48F:   Proc_6_99_1484404(var_CC, 0, var_23C)
  loc_126B49A:   MemVar_1F951E8 = var_CC
  loc_126B4A8: End If
  loc_126B4AD: Set var_88 = Nothing
  loc_126B4B0: Exit Sub
  loc_126B4B1: ' Referenced from: 126AFD8
  loc_126B4B9: Set var_CC = Err()
  loc_126B4BF: Call 0.Method_arg_2C (var_23C, &HFF)
  loc_126B4CA: Call 0.Method_arg_50 (var_264)
  loc_126B4E6: MsgBox(CVar(var_23C), &H10, CVar(var_264), var_F0, var_110)
  loc_126B4F9: Exit Sub
End Sub

Private Sub Chk1_Click() 'EBFA00
  'Data Table: 44519C
  loc_EBF97F: If (Me.Chk1.Value = 1) Then
  loc_EBF9B5:   Me.TxtRS.Text = CStr(Format(1, "0"))
  loc_EBF9C9: End If
  loc_EBF9E4: If (Me.Chk1.Value = 0) Then
  loc_EBF9F4:   Me.TxtRS.Text = vbNullString
  loc_EBF9FC: End If
  loc_EBF9FC: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E18220
  'Data Table: 44519C
  loc_E18215: Me.Global.Unload Me
  loc_E1821D: Exit Sub
End Sub

Private Sub Chk2_Click() 'EBF4C0
  'Data Table: 44519C
  loc_EBF43F: If (Me.Chk2.Value = 1) Then
  loc_EBF475:   Me.TxtRS.Text = CStr(Format(2, "0"))
  loc_EBF489: End If
  loc_EBF4A4: If (Me.Chk2.Value = 0) Then
  loc_EBF4B4:   Me.TxtRS.Text = vbNullString
  loc_EBF4BC: End If
  loc_EBF4BC: Exit Sub
End Sub
