VERSION 5.00
Begin VB.Form Outbox
  Caption = "Intelligent Outbox"
  BackColor = &HE0E0E0&
  ForeColor = &H404040&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  BorderStyle = 1 'Fixed Single
  Icon = "Outbox.frx":0
  LinkTopic = "form4"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 615
  ClientWidth = 11145
  ClientHeight = 6975
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
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HF5F0E2&
    Left = -30
    Top = 0
    Width = 10890
    Height = 6930
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Begin CheckBox cmdSend
      Caption = "Send"
      BackColor = &H4000&
      ForeColor = &HFFFF&
      Left = 7350
      Top = 6015
      Width = 1560
      Height = 825
      TabIndex = 14
      Appearance = 0 'Flat
      Picture = "Outbox.frx":442
      Style = 1
    End
    Begin CheckBox BtnClose
      Caption = "Exit"
      BackColor = &H4000&
      ForeColor = &HFFFF&
      Left = 9045
      Top = 6015
      Width = 1620
      Height = 825
      TabIndex = 13
      Appearance = 0 'Flat
      Picture = "Outbox.frx":14C4
      Style = 1
    End
    Begin DataGrid DGName
      Left = 3330
      Top = 675
      Width = 3630
      Height = 2265
      Visible = 0   'False
      TabIndex = 10
    End
    Begin TextBox Txt
      Index = 3
      Left = 150
      Top = 885
      Width = 10560
      Height = 4935
      TabIndex = 2
      BorderStyle = 0 'None
      MultiLine = -1  'True
      BeginProperty Font
        Name = "Tahoma"
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
      Index = 2
      Left = 1050
      Top = 90
      Width = 9660
      Height = 240
      TabIndex = 0
      BorderStyle = 0 'None
      BeginProperty Font
        Name = "Tahoma"
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
      Left = 1050
      Top = 360
      Width = 9660
      Height = 240
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 50
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Message"
      Index = 5
      ForeColor = &H0&
      Left = 135
      Top = 615
      Width = 855
      Height = 240
      TabIndex = 9
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "To"
      Index = 4
      ForeColor = &H0&
      Left = 135
      Top = 105
      Width = 225
      Height = 210
      TabIndex = 8
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
      Caption = "Subject"
      Index = 1
      ForeColor = &H0&
      Left = 135
      Top = 375
      Width = 705
      Height = 210
      TabIndex = 7
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
  End
  Begin DataGrid DGMem
    Left = 6990
    Top = 8430
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin MSHFlexGrid FGrid
    Left = 0
    Top = 0
    Width = 10785
    Height = 5895
    TabIndex = 3
  End
  Begin CheckBox BtnExit
    Caption = "Exit"
    BackColor = &H4000&
    ForeColor = &HFFFF&
    Left = 1935
    Top = 6030
    Width = 1620
    Height = 585
    TabIndex = 12
    Appearance = 0 'Flat
    Style = 1
  End
  Begin CheckBox BtnCompose
    Caption = "Compose"
    BackColor = &H4000&
    ForeColor = &HFFFF&
    Left = 240
    Top = 6030
    Width = 1560
    Height = 585
    TabIndex = 11
    Appearance = 0 'Flat
    Style = 1
  End
  Begin Label LblLogInDate
    Caption = "LogIn Date"
    ForeColor = &H0&
    Left = 3705
    Top = 6930
    Width = 1035
    Height = 210
    Visible = 0   'False
    TabIndex = 5
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
End

Attribute VB_Name = "Outbox"

Private global_76 As Integer

Private Sub BtnClose_Click() 'E5D274
  'Data Table: 43C5D4
  loc_E5D247: If (Me.BtnClose.Value = 1) Then
  loc_E5D256:   Me.BtnClose.Value = 0
  loc_E5D26A:   Me.Frame1.Visible = False
  loc_E5D272: End If
  loc_E5D272: Exit Sub
End Sub

Private Sub cmdSend_Click() '12D6628
  'Data Table: 43C5D4
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim var_E4 As Variant
  Dim unk_43C5F4 As Connection15
  Dim var_9C As Field20
  Dim var_114 As Variant
  Dim var_11C As String
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_210 As Variant
  Dim var_294 As Variant
  Dim var_304 As Variant
  Dim var_354 As Variant
  Dim var_398 As String
  Dim var_264 As TextBox
  Dim var_2D4 As Variant
  Dim var_324 As Variant
  Dim var_3B8 As Variant
  Dim var_3D4 As String
  loc_12D6043: If (Me.cmdSend.Value = 1) Then
  loc_12D6052:   Me.cmdSend.Value = 0
  loc_12D6065:   Set var_90 = Me.Txt
  loc_12D606B:   Call 0.Method_cmdSend_Click0 (CInt(3))
  loc_12D6094:   If (Proc_6_27_EA61EC(var_98, "Message") = 0) Then
  loc_12D6097:     Exit Sub
  loc_12D6098:   End If
  loc_12D60A3:   Set var_90 = Me.Txt
  loc_12D60A9:   Call 0.Method_cmdSend_Click0 (CInt(2), var_98)
  loc_12D60D2:   If (Proc_6_27_EA61EC(var_98, "Receiver") = 0) Then
  loc_12D60D5:     Exit Sub
  loc_12D60D6:   End If
  loc_12D60E4:   Set var_90 = Me.Txt
  loc_12D60EA:   Call 0.Method_cmdSend_Click0 (CInt(2), var_98)
  loc_12D6106:   var_C0 = ","
  loc_12D6112:   var_D0 = Split(var_98.Text, var_C0, -1, 0)
  loc_12D6124:   var_88 = var_D0
  loc_12D613D:   var_E4 = 0
  loc_12D615C:   unk_43C5F4.Execute "Select max(VNo) From Messaging Where VType='INBOX'", var_C0, -1
  loc_12D6164:   var_90 = var_90.Fields
  loc_12D616C:   var_E4 = var_98.Item(var_98)
  loc_12D6174:   var_9C = var_9C.Value
  loc_12D617F:   Proc_6_39_E7D3A0(var_F4, var_D0)
  loc_12D618C:   var_114 = (var_F4 + 1)
  loc_12D6194:   global_76 = CInt(var_114)
  loc_12D61B8:   For var_118 = 0 To CInt(UBound(var_88, 1)): var_8A = var_118 'Integer
  loc_12D61C7:     unk_43C5F4.BeginTrans var_D4
  loc_12D61D4:     If (MemVar_1F953B0 = "A") Then
  loc_12D61E2:       Proc_6_7_F26918(var_C0, MemVar_1F950EC, 0)
  loc_12D6222:       Proc_6_17_EAAE40(var_1E0, var_88(CLng(var_8A)), 1, 1)
  loc_12D6235:       Set var_90 = Me.Txt
  loc_12D623B:       Call 0.Method_cmdSend_Click0 (CInt(1), var_98, global_76)
  loc_12D624A:       Proc_6_17_EAAE40(var_230, CVar(var_98))
  loc_12D625A:       Set var_9C = Me.Txt
  loc_12D6260:       Call 0.Method_cmdSend_Click0 (CInt(3), var_264)
  loc_12D626F:       Proc_6_17_EAAE40(var_284, CVar(var_264))
  loc_12D627F:       Proc_6_17_EAAE40(var_2D4, MemVar_1F950C8)
  loc_12D6292:       Proc_6_7_F26918(var_324, Date)
  loc_12D62B3:       var_11C = "Insert Into Messaging (VType,VNO,VDate,VTime,Sender,Receiver,Cleared , ClearedDate, ClearedTime, ReadYN, ReadDate, ReadTime, Subject, Message, U_Name, U_EntDt, Site_Code, U_AE) Values ('INBOX'," & CStr(global_76)
  loc_12D62FC:       var_210 = CVar(var_11C & ",") & var_C0 & ",'" & Format(Now, "hh:mm") & "','" & CVar(MemVar_1F950C8) & "'," & var_1E0 & ",'N',Null,Null,'N',Null,Null," 
  loc_12D632C:       var_304 = var_210 & var_230 & "," & var_284 & "," & var_2D4 & "," 
  loc_12D633C:       var_354 = var_304 & var_324 & ",'" 
  loc_12D6353:       var_398 = CStr(var_354 & CVar(MemVar_1F95070) & "','A')")
  loc_12D635D:       unk_43C5F4.Execute var_398, var_3B8, -1
  loc_12D63BA:     Else
  loc_12D63C5:       Proc_6_7_F26918(var_C0, MemVar_1F950EC, var_3BC)
  loc_12D6405:       Proc_6_17_EAAE40(var_1E0, var_88(CLng(var_8A)), 1)
  loc_12D6418:       Set var_90 = Me.Txt
  loc_12D641E:       Call 0.Method_cmdSend_Click0 (CInt(1), var_98, 1)
  loc_12D642D:       Proc_6_17_EAAE40(var_230, CVar(var_98))
  loc_12D6440:       Set var_9C = Me.Txt
  loc_12D6446:       Call 0.Method_cmdSend_Click0 (CInt(3), var_264, var_398)
  loc_12D644E:       var_D0 = var_264.Text
  loc_12D6482:       var_294 = (Chr(&HD) + Chr(&HA))
  loc_12D6495:       var_3E8 = Replace(var_398, vbCrLf, CStr(var_210 & var_230 & "," & Chr(&HA)), 1, -1, 0)
  loc_12D64A3:       Proc_6_17_EAAE40(var_304, MemVar_1F950C8)
  loc_12D64B6:       Proc_6_7_F26918(var_354, Date)
  loc_12D64D7:       var_11C = "Insert Into Messaging (VType,VNO,VDate,VTime,Sender,Receiver,Cleared , ClearedDate, ClearedTime, ReadYN, ReadDate, ReadTime, Subject, Message, U_Name, U_EntDt, Site_Code, U_AE) Values ('INBOX'," & CStr(global_76)
  loc_12D6520:       var_210 = CVar(var_11C & ",") & var_C0 & ",'" & Format(Now, "hh:mm") & "','" & CVar(MemVar_1F950C8) & "'," & var_1E0 & ",'N',Null,Null,'N',Null,Null," 
  loc_12D657A:       var_3D4 = CStr(var_210 & var_230 & ",'" & CVar(var_3E8) & "'," & var_304 & "," & var_354 & ",'" & CVar(MemVar_1F95070) & "','A')")
  loc_12D6584:       unk_43C5F4.Execute var_3D4, var_3E4, -1
  loc_12D65EA:     End If
  loc_12D65F0:     unk_43C5F4.CommitTrans
  loc_12D6601:     global_76 = (global_76 + 1)
  loc_12D6607:   Next var_118 'Integer
  loc_12D6618:   Me.Frame1.Visible = False
  loc_12D6620:   Call Proc_301_16_11F2094()
  loc_12D6625: End If
  loc_12D6625: Exit Sub
  loc_12D6626: Set arg_5C64 = 
End Sub

Private Sub Form_Load() 'FE9C50
  'Data Table: 43C5D4
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As TextBox
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C4 As DataGrid
  Dim var_D8 As Variant
  Dim Me As Recordset15
  loc_FE9A74: On Error Goto loc_FE9C49
  loc_FE9A81: Set global_52 = New 
  loc_FE9A93: Me.Recordset15.CursorLocation = 3
  loc_FE9A9F: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_FE9AB7: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_FE9AC3: var_9C = CVar(CLng(MemVar_1F951B4)) 'Long
  loc_FE9ACC: Set var_8C = Me.DGName
  loc_FE9AE1: Call 0.Method_arg_7C (CDbl(0), DGName.DispID_FFFFFE0B)
  loc_FE9AED: Call 0.Method_arg_74 (CDbl(0))
  loc_FE9AFA: Call 0.Method_MeC (CDbl(9180))
  loc_FE9B07: Call 0.Method_Me4 (CDbl(11000))
  loc_FE9B1A: Set var_8C = Me.Txt
  loc_FE9B20: Call 0.Method_Form_Load0 (CInt(2), var_B0)
  loc_FE9B3F: Me.DGName.Left = CVar(var_B0.Left)
  loc_FE9B5B: Set var_B8 = Me.Txt
  loc_FE9B61: Call 0.Method_Form_Load0 (CInt(2), var_BC)
  loc_FE9B7C: Set var_8C = Me.Txt
  loc_FE9B82: Call 0.Method_Form_Load0 (CInt(2), var_B0)
  loc_FE9B9A: var_9C = CVar(((var_B0.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_FE9BA3: Set var_C4 = Me.DGName
  loc_FE9BA9: var_C4.Top = CVar(var_B0.Left)
  loc_FE9BBB: Call Proc_301_15_10E3278(CVar(var_B0.Left))
  loc_FE9BDC: Me.var_C4.CursorLocation = 3
  loc_FE9C06: var_D8 = CVar("Select user_name as Code,user_name as Name From USERMAST where user_name<>'" & MemVar_1F950C8 & "' Order by user_name") 'String
  loc_FE9C10: Me.Open var_D8, CVar(MemVar_1F95044), 2
  loc_FE9C24: CVarUnk
  loc_FE9C29: VerifyVarObj
  loc_FE9C35: LateIdStAd
  loc_FE9C43: Call Proc_301_16_11F2094(Me.DGName, New)
  loc_FE9C48: Exit Sub
  loc_FE9C49: ' Referenced from: FE9A74
  loc_FE9C49: Proc_6_60_E63754(3)
  loc_FE9C4E: Exit Sub
End Sub

Private Sub Form_Resize() 'DFDEB4
  'Data Table: 43C5D4
  loc_DFDEB0: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E112EC
  'Data Table: 43C5D4
  loc_E112E3: Set global_52 = Nothing
  loc_E112EA: Exit Sub
End Sub

Private Sub BtnCompose_Click() 'E7AA18
  'Data Table: 43C5D4
  loc_E7A9CF: If (Me.BtnCompose.Value = 1) Then
  loc_E7A9DE:   Me.BtnCompose.Value = 0
  loc_E7A9F2:   Me.Frame1.Visible = True
  loc_E7AA0A:   Me.Frame1.ZOrder 0
  loc_E7AA12:   Call Proc_301_16_11F2094()
  loc_E7AA17: End If
  loc_E7AA17: Exit Sub
End Sub

Private Sub btnExit_Click() 'E5D36C
  'Data Table: 43C5D4
  loc_E5D33F: If (Me.BtnExit.Value = 1) Then
  loc_E5D34E:   Me.BtnExit.Value = 0
  loc_E5D363:   Me.Global.Unload Me
  loc_E5D36B: End If
  loc_E5D36B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FB5098
  'Data Table: 43C5D4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FB4F0E: Set var_88 = Me.Txt
  loc_FB4F14: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FB4F22: Proc_6_74_E23240(var_8C)
  loc_FB4F31: var_92 = Index
  loc_FB4F3C: If (var_92 = CInt(2)) Then
  loc_FB4F8D:   Set var_88 = Me.Txt
  loc_FB4F93:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FB4F9B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FB4FB3:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_FB4FB6:     Exit Sub
  loc_FB4FB7:   End If
  loc_FB4FC4:   Set var_88 = Me.Txt
  loc_FB4FCA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FB4FD2:   var_A0 = var_8C.Text
  loc_FB4FDA:   var_D4 = CVar(var_A0) 'String
  loc_FB501F:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FB5028:     Me.MoveFirst
  loc_FB504D:     Set var_88 = Me.Txt
  loc_FB5053:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_FB505B:     0 = var_8C.Text
  loc_FB5069:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_FB507F:     Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_FB5097:   End If
  loc_FB5097: End If
  loc_FB5097: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F068D8
  'Data Table: 43C5D4
  loc_F0680A: If (CLng(Shift) = &H1B) Then
  loc_F0680D:   Call Proc_301_18_E54AFC()
  loc_F06812:   Exit Sub
  loc_F06813: End If
  loc_F06821: If (KeyCode = CInt(2)) Then
  loc_F0683C:   Set var_9C = Nothing
  loc_F06847:   Set var_98 = Nothing
  loc_F06875:   Proc_6_69_134A630(Me.DGName, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_F06889: End If
  loc_F068A5: If (CBool(Me.DGName.Visible) = 0) Then
  loc_F068C6:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(3))) Then
  loc_F068CF:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_F068D4:   End If
  loc_F068D4: End If
  loc_F068D4: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E8920C
  'Data Table: 43C5D4
  loc_E891AE: If (KeyCode = CInt(2)) Then
  loc_E891CD:   If (CBool(Me.DGName.Visible) = &HFF) Then
  loc_E891DA:     var_A4 = "Name"
  loc_E891F9:     Proc_6_80_FF1F20(Me.Txt, CInt(2), global_60)
  loc_E89208:   End If
  loc_E89208: End If
  loc_E89208: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B3E4
  'Data Table: 43C5D4
  loc_E4B3C2: Set var_88 = Me.Txt
  loc_E4B3C8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B3D6: Proc_6_73_E23294(var_8C)
  loc_E4B3E2: Exit Sub
  loc_E4B3E3: var_8C() = 
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1018008
  'Data Table: 43C5D4
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim var_C4 As TextBox
  loc_1017DF6: If (Cancel = CInt(2)) Then
  loc_1017E15:   If (CBool(Me.DGName.Visible) = 0) Then
  loc_1017E22:     Set var_8C = Me.Txt
  loc_1017E28:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1017E30:     var_A8 = "To Name"
  loc_1017E51:     If (Proc_6_27_EA61EC(var_A0, var_A8) = 0) Then
  loc_1017E5E:       Set var_8C = Me.Txt
  loc_1017E64:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1017E6C:       var_A0.SetFocus
  loc_1017E7A:       arg_10 = &HFF
  loc_1017E7D:       Exit Sub
  loc_1017E7E:     End If
  loc_1017E7E:   End If
  loc_1017ECC:   Set var_8C = Me.Txt
  loc_1017ED2:   Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A8)
  loc_1017EDA:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_1017EF2:   If (arg_10 Or (var_A8 = vbNullString)) Then
  loc_1017F02:     Set var_8C = Me.Txt
  loc_1017F08:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1017F10:     var_A0.Text = vbNullString
  loc_1017F29:     Set var_8C = Me.Txt
  loc_1017F2F:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1017F37:     var_A0.Tag = vbNullString
  loc_1017F46:   Else
  loc_1017F81:     Set var_A4 = Me.Txt
  loc_1017F87:     Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1017F8F:     var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1017FE0:     Set var_A4 = Me.Txt
  loc_1017FE6:     Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1017FEE:     var_C4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1018004:   End If
  loc_1018004: End If
  loc_1018004: Exit Sub
  loc_1018005: var_86 = 
End Sub

Private Sub FGrid_UnknownEvent_B 'E9E6DC
  'Data Table: 43C5D4
  Dim var_A8 As Variant
  loc_E9E673: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9E6AE: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_E9E6C8:   Call Proc_301_17_106D720(CInt(CLng(Me.FGrid.Row)), CVar(CLng(4)))
  loc_E9E6D3: End If
  loc_E9E6D3: Call Proc_301_16_11F2094(var_A8)
  loc_E9E6D8: Exit Sub
End Sub

Private Sub DGName_UnknownEvent_9 'FA9884
  'Data Table: 43C5D4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FA9704: On Error Goto loc_FA981E
  loc_FA9716: Me.DGName.Visible = False
  loc_FA9727: var_AC = Me.RecordCount
  loc_FA9735: If (var_AC > 0) Then
  loc_FA9774:   Set var_B4 = Me.Txt
  loc_FA977A:   Call 0.Method_DGName_UnknownEvent_90 (CInt(2), var_B8)
  loc_FA9782:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA97B5:   var_B0 = Me.Fields.Item("Code")
  loc_FA97C6:   var_CC = CStr(var_B0.Value)
  loc_FA97D4:   Set var_B4 = Me.Txt
  loc_FA97DA:   Call 0.Method_DGName_UnknownEvent_90 (CInt(2), var_B8)
  loc_FA97E2:   var_B8.Tag = var_CC
  loc_FA97F8: End If
  loc_FA9803: Set var_A8 = Me.Txt
  loc_FA9809: Call 0.Method_DGName_UnknownEvent_90 (CInt(2))
  loc_FA9811: var_B0.SetFocus
  loc_FA981D: Exit Sub
  loc_FA981E: ' Referenced from: FA9704
  loc_FA9826: Set var_A8 = Err()
  loc_FA982C: Call 0.Method_arg_1C (var_AC)
  loc_FA983D: If (var_AC <> 0) Then
  loc_FA9848:   Set var_A8 = Err()
  loc_FA984E:   Call 0.Method_arg_2C (var_CC)
  loc_FA986F:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FA9882: End If
  loc_FA9882: Exit Sub
End Sub

Public Property Let ShowCompose(temp) 'E008D4
  'Data Table: 43C5D4
  Dim arg_5C7A As Integer
  loc_E008CC: Call BtnCompose_Click()
  loc_E008D1: Exit Sub
  loc_E008D2: arg_5C7A = 
End Sub

Public Sub Proc_301_15_10E3278
  'Data Table: 43C5D4
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_10E2F58: Set var_88 = Me.FGrid
  loc_10E2F67: var_88.FixedRows = 1
  loc_10E2F80: global_64 = CStr(CLng(var_88.BackColor))
  loc_10E2F96: var_88.Cols = 8
  loc_10E2F9E: var_98 = CVar(CLng(0)) 'Long
  loc_10E2FA3: var_CC = 0
  loc_10E2FAF: LateIdCallSt
  loc_10E2FB7: var_98 = 0
  loc_10E2FC3: var_CC = CVar(CLng(1)) 'Long
  loc_10E2FC8: var_EC = "Check"
  loc_10E2FD1: LateIdCallSt
  loc_10E2FDC: var_98 = CVar(CLng(1)) 'Long
  loc_10E2FE7: var_CC = CVar(CInt(1)) 'Integer
  loc_10E2FEE: LateIdCallSt
  loc_10E2FF9: var_98 = CVar(CLng(1)) 'Long
  loc_10E2FFE: var_CC = 0
  loc_10E300A: LateIdCallSt
  loc_10E3012: var_98 = 0
  loc_10E301E: var_CC = CVar(CLng(3)) 'Long
  loc_10E3023: var_EC = "Subject"
  loc_10E302C: LateIdCallSt
  loc_10E3037: var_98 = CVar(CLng(3)) 'Long
  loc_10E3042: var_CC = CVar(CInt(1)) 'Integer
  loc_10E3049: LateIdCallSt
  loc_10E3054: var_98 = CVar(CLng(3)) 'Long
  loc_10E305F: var_CC = CVar(CInt(1)) 'Integer
  loc_10E3066: LateIdCallSt
  loc_10E3071: var_98 = CVar(CLng(3)) 'Long
  loc_10E3076: var_CC = &H157C
  loc_10E3082: LateIdCallSt
  loc_10E308A: var_98 = 0
  loc_10E3096: var_CC = CVar(CLng(2)) 'Long
  loc_10E309B: var_EC = "To"
  loc_10E30A4: LateIdCallSt
  loc_10E30AF: var_98 = CVar(CLng(2)) 'Long
  loc_10E30BA: var_CC = CVar(CInt(1)) 'Integer
  loc_10E30C1: LateIdCallSt
  loc_10E30CC: var_98 = CVar(CLng(2)) 'Long
  loc_10E30D7: var_CC = CVar(CInt(1)) 'Integer
  loc_10E30DE: LateIdCallSt
  loc_10E30E9: var_98 = CVar(CLng(2)) 'Long
  loc_10E30EE: var_CC = &HDAC
  loc_10E30FA: LateIdCallSt
  loc_10E3102: var_98 = 0
  loc_10E310E: var_CC = CVar(CLng(4)) 'Long
  loc_10E3113: var_EC = "Send Date"
  loc_10E311C: LateIdCallSt
  loc_10E3127: var_98 = CVar(CLng(4)) 'Long
  loc_10E3132: var_CC = CVar(CInt(1)) 'Integer
  loc_10E3139: LateIdCallSt
  loc_10E3144: var_98 = CVar(CLng(4)) 'Long
  loc_10E314F: var_CC = CVar(CInt(1)) 'Integer
  loc_10E3156: LateIdCallSt
  loc_10E3161: var_98 = CVar(CLng(4)) 'Long
  loc_10E3166: var_CC = &H5DC
  loc_10E3172: LateIdCallSt
  loc_10E317A: var_98 = 0
  loc_10E3186: var_CC = CVar(CLng(5)) 'Long
  loc_10E318B: var_EC = "Read"
  loc_10E3194: LateIdCallSt
  loc_10E319F: var_98 = CVar(CLng(5)) 'Long
  loc_10E31AA: var_CC = CVar(CInt(1)) 'Integer
  loc_10E31B1: LateIdCallSt
  loc_10E31BC: var_98 = CVar(CLng(5)) 'Long
  loc_10E31C7: var_CC = CVar(CInt(1)) 'Integer
  loc_10E31CE: LateIdCallSt
  loc_10E31D9: var_98 = CVar(CLng(5)) 'Long
  loc_10E31DE: var_CC = 0
  loc_10E31EA: LateIdCallSt
  loc_10E31F2: var_98 = 0
  loc_10E31FE: var_CC = CVar(CLng(6)) 'Long
  loc_10E3203: var_EC = "VType"
  loc_10E320C: LateIdCallSt
  loc_10E3217: var_98 = CVar(CLng(6)) 'Long
  loc_10E321C: var_CC = 0
  loc_10E3228: LateIdCallSt
  loc_10E3230: var_98 = 0
  loc_10E323C: var_CC = CVar(CLng(7)) 'Long
  loc_10E3241: var_EC = "VNo"
  loc_10E324A: LateIdCallSt
  loc_10E3255: var_98 = CVar(CLng(7)) 'Long
  loc_10E325A: var_CC = 0
  loc_10E3266: LateIdCallSt
  loc_10E3270: Set var_88 = Nothing 
  loc_10E3274: Exit Sub
End Sub

Public Sub Proc_301_16_11F2094
  'Data Table: 43C5D4
  Dim var_A4 As String
  Dim unk_43C5F4 As Connection15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_C4 As Variant
  Dim var_114 As Variant
  Dim var_DC As Variant
  Dim var_104 As Variant
  Dim var_CC As Field20
  Dim var_134 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  loc_11F1C20: On Error Goto loc_11F208B
  loc_11F1C3E: var_A4 = "SELECT * FROM Messaging Where Sender='" & MemVar_1F950C8 & "' And (ReadYN is Null  Or ReadYN='' Or ReadYN='N') Order By VDATE DESC,VType DESC,VNo DESC,Sender"
  loc_11F1C47: unk_43C5F4.Execute var_A4, var_C4, -1
  loc_11F1C58: Set global_52 = var_C8
  loc_11F1C7C: Me.FGrid.Redraw = False
  loc_11F1C97: Me.FGrid.Rows = 1
  loc_11F1CA1: var_8A = 1
  loc_11F1CA4: ' Referenced from: 11F1FAD
  loc_11F1CB6: If Not(Me.EOF) Then
  loc_11F1CB9:   var_B4 = vbNullString
  loc_11F1CC3:   Set var_C8 = Me.FGrid
  loc_11F1CDF:   var_B4 = CVar(CLng(var_8A)) 'Long
  loc_11F1CE7:   var_F4 = CVar(CLng(0)) 'Long
  loc_11F1CF1:   var_C4 = CVar(CStr(var_8A)) 'String
  loc_11F1CF8:   LateIdCallSt
  loc_11F1D07:   var_B4 = CVar(CLng(var_8A)) 'Long
  loc_11F1D0F:   var_F4 = CVar(CLng(1)) 'Long
  loc_11F1D14:   var_114 = vbNullString
  loc_11F1D1D:   LateIdCallSt
  loc_11F1D29:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_11F1D31:   var_104 = CVar(CLng(3)) 'Long
  loc_11F1D64:   var_134 = CVar(CStr(Me.Fields.Item("Subject").Value)) 'String
  loc_11F1D6B:   LateIdCallSt
  loc_11F1D85:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_11F1D8D:   var_104 = CVar(CLng(2)) 'Long
  loc_11F1DC0:   var_134 = CVar(CStr(Me.Fields.Item("Receiver").Value)) 'String
  loc_11F1DC7:   LateIdCallSt
  loc_11F1E1C:   var_134 = CVar(CStr(Me.Fields.Item("VDate").Value)) 'String
  loc_11F1E23:   LateIdCallSt
  loc_11F1E64:   var_134 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Readyn")), Me.FGrid, var_134, CVar(CLng(4)), CVar(CLng(var_8A)), Me.FGrid, var_134)) 'String
  loc_11F1E73:   var_114 = CVar(CLng(var_8A)) 'Long
  loc_11F1E7B:   var_1A4 = CVar(CLng(5)) 'Long
  loc_11F1EB6:   var_1C4 = CVar(CStr(IIf((Ucase(var_134) = "Y"), "Yes", "No"))) 'String
  loc_11F1EBD:   LateIdCallSt
  loc_11F1EDF:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_11F1EE7:   var_104 = CVar(CLng(6)) 'Long
  loc_11F1F1A:   var_134 = CVar(CStr(Me.Fields.Item("vType").Value)) 'String
  loc_11F1F21:   LateIdCallSt
  loc_11F1F3B:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_11F1F43:   var_104 = CVar(CLng(7)) 'Long
  loc_11F1F76:   var_134 = CVar(CStr(Me.Fields.Item("VNo").Value)) 'String
  loc_11F1F7D:   LateIdCallSt
  loc_11F1F95:   Set var_E4 = Nothing 
  loc_11F1F9F:   var_8A = (var_8A + 1)
  loc_11F1FA8:   Me.MoveNext
  loc_11F1FAD:   GoTo loc_11F1CA4
  loc_11F1FB0: End If
  loc_11F1FCF: If (CLng(Me.FGrid.Rows) > 1) Then
  loc_11F1FE5:   Me.FGrid.FixedRows = 1
  loc_11F1FED: End If
  loc_11F1FFB: Me.FGrid.Redraw = True
  loc_11F2009: If (var_8A = 1) Then
  loc_11F201F:   Me.FGrid.Rows = 1
  loc_11F2045:   var_C4 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_8A, var_E4, var_134, var_104, var_DC, var_E4))) 'String
  loc_11F204D:   Set var_CC = Me.FGrid
  loc_11F207A:   Me.FGrid.FixedRows = 1
  loc_11F2082: End If
  loc_11F2087: Set var_88 = Nothing
  loc_11F208A: Exit Sub
  loc_11F208B: ' Referenced from: 11F1C20
  loc_11F208B: Proc_6_60_E63754(FGrid.DispID_10000, var_C4, var_134, var_104, var_DC)
  loc_11F2090: Exit Sub
End Sub

Public Sub Proc_301_17_106D720(arg_C) '106D720
  'Data Table: 43C5D4
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim var_178 As Double
  Dim unk_43C5F4 As Connection15
  Dim var_88 As Recordset15
  Dim var_180 As TextBox
  loc_106D4C4: Me.Frame1.Visible = True
  loc_106D4D0: var_9C = CVar(CLng(arg_C)) 'Long
  loc_106D521: var_178 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_106D55F: unk_43C5F4.Execute "Select * From Messaging Where VType='" & CStr(Me.FGrid.TextMatrix)) & "' And VNo=" & CStr(var_178) & vbNullString, var_16C, -1
  loc_106D56A: Set var_88 = var_170
  loc_106D5A4: If (var_88.RecordCount > 0) Then
  loc_106D5E6:   Call 0.Method_Proc_301_17_106D7200 (CInt(1), var_180, CStr(var_88.Fields.Item("Subject").Value), Me.Txt, var_178)
  loc_106D5EE:   var_180.Text = CVar(CLng(7))
  loc_106D626:   var_DC = var_88.Fields.Item("VNo").Value
  loc_106D63D:   Set var_170 = Me.Txt
  loc_106D643:   Call 0.Method_Proc_301_17_106D7200 (CInt(1), var_180, CStr(var_DC), CVar(CLng(arg_C)))
  loc_106D64B:   var_180.Tag = var_DC
  loc_106D697:   Set var_170 = Me.Txt
  loc_106D69D:   Call 0.Method_Proc_301_17_106D7200 (CInt(2), var_180)
  loc_106D6A5:   var_180.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Receiver")), CVar(CLng(6)))
  loc_106D6F2:   Set var_170 = Me.Txt
  loc_106D6F8:   Call 0.Method_Proc_301_17_106D7200 (CInt(3), var_180)
  loc_106D700:   var_180.Text = CStr(var_88.Fields.Item("Message").Value)
  loc_106D716: End If
  loc_106D71B: Set var_88 = Nothing
  loc_106D71E: Exit Sub
End Sub

Public Sub Proc_301_18_E54AFC
  'Data Table: 43C5D4
  loc_E54AE0: If (CBool(Me.DGName.Visible) = &HFF) Then
  loc_E54AF2:   Me.DGName.Visible = False
  loc_E54AFA: End If
  loc_E54AFA: Exit Sub
End Sub
