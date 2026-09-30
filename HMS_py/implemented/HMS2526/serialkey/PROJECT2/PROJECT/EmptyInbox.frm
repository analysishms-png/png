VERSION 5.00
Begin VB.Form EmptyInbox
  Caption = "Inbox"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "EmptyInbox.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11610
  ClientHeight = 6705
  Begin CommandButton Command1
    Caption = "Exit"
    BackColor = &HC0E0FF&
    Left = 9990
    Top = 6075
    Width = 1380
    Height = 570
    TabIndex = 10
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin DataGrid DGSender
    Left = 1680
    Top = 870
    Width = 3630
    Height = 1305
    Visible = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGReceiver
    Left = 6255
    Top = 1080
    Width = 3630
    Height = 1305
    Visible = 0   'False
    TabIndex = 9
  End
  Begin CommandButton CmdShow
    Caption = "Show"
    BackColor = &HFDCAF5&
    Left = 4245
    Top = 225
    Width = 1380
    Height = 570
    TabIndex = 2
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1110
    Top = 450
    Width = 2685
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1110
    Top = 135
    Width = 2685
    Height = 285
    TabIndex = 0
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
  Begin CommandButton BtnDelete
    Caption = "Delete"
    BackColor = &HC0E0FF&
    Left = 6525
    Top = 6090
    Width = 1380
    Height = 570
    TabIndex = 4
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton BtnClose
    Caption = "Close"
    BackColor = &HC0E0FF&
    Left = 8310
    Top = 6090
    Width = 1380
    Height = 570
    TabIndex = 5
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin MSHFlexGrid FGrid
    Left = 60
    Top = 810
    Width = 11505
    Height = 5160
    TabIndex = 3
  End
  Begin Label Label1
    Caption = "Receiver"
    Index = 0
    ForeColor = &HC00000&
    Left = 210
    Top = 465
    Width = 840
    Height = 240
    TabIndex = 7
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
    Caption = "Sender"
    Index = 4
    ForeColor = &HC00000&
    Left = 210
    Top = 150
    Width = 690
    Height = 240
    TabIndex = 6
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

Attribute VB_Name = "EmptyInbox"


Private Sub DGSender_UnknownEvent_9 'FAA1A8
  'Data Table: 4314CC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FAA028: On Error Goto loc_FAA142
  loc_FAA03A: Me.DGSender.Visible = False
  loc_FAA04B: var_AC = Me.RecordCount
  loc_FAA059: If (var_AC > 0) Then
  loc_FAA098:   Set var_B4 = Me.Txt
  loc_FAA09E:   Call 0.Method_DGSender_UnknownEvent_90 (CInt(1), var_B8)
  loc_FAA0A6:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FAA0D9:   var_B0 = Me.Fields.Item("Code")
  loc_FAA0EA:   var_CC = CStr(var_B0.Value)
  loc_FAA0F8:   Set var_B4 = Me.Txt
  loc_FAA0FE:   Call 0.Method_DGSender_UnknownEvent_90 (CInt(1), var_B8)
  loc_FAA106:   var_B8.Tag = var_CC
  loc_FAA11C: End If
  loc_FAA127: Set var_A8 = Me.Txt
  loc_FAA12D: Call 0.Method_DGSender_UnknownEvent_90 (CInt(1))
  loc_FAA135: var_B0.SetFocus
  loc_FAA141: Exit Sub
  loc_FAA142: ' Referenced from: FAA028
  loc_FAA14A: Set var_A8 = Err()
  loc_FAA150: Call 0.Method_arg_1C (var_AC)
  loc_FAA161: If (var_AC <> 0) Then
  loc_FAA16C:   Set var_A8 = Err()
  loc_FAA172:   Call 0.Method_arg_2C (var_CC)
  loc_FAA193:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FAA1A6: End If
  loc_FAA1A6: Exit Sub
End Sub

Private Sub DGReceiver_UnknownEvent_9 'FA9FD4
  'Data Table: 4314CC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FA9E54: On Error Goto loc_FA9F6E
  loc_FA9E66: Me.DGReceiver.Visible = False
  loc_FA9E77: var_AC = Me.RecordCount
  loc_FA9E85: If (var_AC > 0) Then
  loc_FA9EC4:   Set var_B4 = Me.Txt
  loc_FA9ECA:   Call 0.Method_DGReceiver_UnknownEvent_90 (CInt(0), var_B8)
  loc_FA9ED2:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA9F05:   var_B0 = Me.Fields.Item("Code")
  loc_FA9F16:   var_CC = CStr(var_B0.Value)
  loc_FA9F24:   Set var_B4 = Me.Txt
  loc_FA9F2A:   Call 0.Method_DGReceiver_UnknownEvent_90 (CInt(0), var_B8)
  loc_FA9F32:   var_B8.Tag = var_CC
  loc_FA9F48: End If
  loc_FA9F53: Set var_A8 = Me.Txt
  loc_FA9F59: Call 0.Method_DGReceiver_UnknownEvent_90 (CInt(0))
  loc_FA9F61: var_B0.SetFocus
  loc_FA9F6D: Exit Sub
  loc_FA9F6E: ' Referenced from: FA9E54
  loc_FA9F76: Set var_A8 = Err()
  loc_FA9F7C: Call 0.Method_arg_1C (var_AC)
  loc_FA9F8D: If (var_AC <> 0) Then
  loc_FA9F98:   Set var_A8 = Err()
  loc_FA9F9E:   Call 0.Method_arg_2C (var_CC)
  loc_FA9FBF:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FA9FD2: End If
  loc_FA9FD2: Exit Sub
End Sub

Private Sub Form_Load() '11493F4
  'Data Table: 4314CC
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim Me As Recordset15
  Dim var_D0 As TextBox
  Dim var_D8 As DataGrid
  Dim var_DC As TextBox
  Dim var_D4 As Long
  loc_1149063: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1149075: Set var_B8 = Me.FGrid
  loc_114907B: var_B8.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_114908D: Set global_56 = New 
  loc_114909F: Me.var_B8.CursorLocation = 3
  loc_11490C9: var_CC = CVar("Select user_name as Code,user_name as Name From USERMAST where user_name<>'" & MemVar_1F950C8 & "' Order by user_name") 'String
  loc_11490E7: CVarUnk
  loc_11490EC: VerifyVarObj
  loc_11490F2: Set var_B8 = Me.DGSender
  loc_11490F8: LateIdStAd
  loc_1149122: Me.DGSender.CursorLocation = 3
  loc_114914C: var_CC = CVar("Select user_name as Code,user_name as Name From USERMAST where user_name<>'" & MemVar_1F950C8 & "' Order by user_name") 'String
  loc_1149156: r_CC, CVar(MemVar_1F95044), 2 var_CC, CVar(MemVar_1F95044), 2
  loc_114916A: CVarUnk
  loc_114916F: VerifyVarObj
  loc_1149175: Set var_B8 = Me.DGReceiver
  loc_114917B: LateIdStAd
  loc_1149197: Set var_B8 = Me.Txt
  loc_114919D: Call 0.Method_Form_Load0 (CInt(0), var_D0, var_D4, var_B8, New, 3)
  loc_11491A5: -1 = var_D0.Left
  loc_11491BC: Me.DGReceiver.Left = CVar(var_D4)
  loc_11491D8: Set var_D8 = Me.Txt
  loc_11491DE: Call 0.Method_Form_Load0 (CInt(0), var_DC, var_E0, var_B8)
  loc_11491E6: global_56 = var_DC.Height
  loc_11491F9: Set var_B8 = Me.Txt
  loc_11491FF: Call 0.Method_Form_Load0 (CInt(0), var_D0, var_D4)
  loc_1149207: 3 = var_D0.Top
  loc_1149217: var_A4 = CVar(((var_D4 + var_E0) + CDbl(&H1E))) 'Single
  loc_1149226: Me.DGReceiver.Top = CVar(var_D4)
  loc_1149246: Set var_B8 = Me.Txt
  loc_114924C: Call 0.Method_Form_Load0 (CInt(1), var_D0)
  loc_114926B: Me.DGSender.Left = CVar(var_D0.Left)
  loc_1149287: Set var_D8 = Me.Txt
  loc_114928D: Call 0.Method_Form_Load0 (CInt(1), var_DC)
  loc_11492A8: Set var_B8 = Me.Txt
  loc_11492AE: Call 0.Method_Form_Load0 (CInt(1), var_D0)
  loc_11492C6: var_A4 = CVar(((var_D0.Top + var_DC.Height) + CDbl(&H1E))) 'Single
  loc_11492D5: Me.DGSender.Top = CVar(var_D0.Left)
  loc_1149335: SetWindowRgn(Me.CmdShow.hWnd, CLng(CVar(CreateRoundRectRgn(5, 4, &H58, &H23, &H12, &H28))), &HFF)
  loc_114938C: SetWindowRgn(Me.BtnDelete.hWnd, CLng(CVar(CreateRoundRectRgn(5, 4, &H58, &H23, &H12, &H28))), &HFF)
  loc_11493D4: var_D4 = Me.BtnClose.hWnd
  loc_11493E3: SetWindowRgn(var_D4, CLng(CVar(CreateRoundRectRgn(5, 4, &H58, &H23, &H12, &H28))), &HFF)
  loc_11493EC: Call Proc_149_14_11237FC(var_D4, var_D4)
  loc_11493F1: Exit Sub
  loc_11493F2: DOC
End Sub

Private Sub BtnDelete_Click() '10CCB54
  'Data Table: 4314CC
  Dim var_A4 As Variant
  Dim unk_4314D3 As Connection15
  Dim var_11C As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As MSHFlexGrid
  Dim var_128 As String
  Dim var_150 As Double
  Dim var_12C As String
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  loc_10CC87C: On Error Goto loc_10CCAF1
  loc_10CC883: var_86 = CByte(0) 'Byte
  loc_10CC892: var_D4 = "Inbox Deleted..."
  loc_10CC8BE: If (MsgBox("Are you sure to delete selected mails.", &H144, var_D4, var_F4, var_114) = 7) Then
  loc_10CC8C1:   Exit Sub
  loc_10CC8C2: End If
  loc_10CC8CB: unk_4314D3.BeginTrans var_118
  loc_10CC8D4: var_86 = CByte(1) 'Byte
  loc_10CC8DC: Set var_11C = Me.FGrid
  loc_10CC8FA: For var_120 = 1 To CInt((CLng(var_11C.Rows) - 1)): var_8E = var_120 'Integer
  loc_10CC904:   var_A4 = CVar(CLng(var_8E)) 'Long
  loc_10CC90C:   var_E4 = CVar(CLng(3)) 'Long
  loc_10CC937:   If (CStr(Me.FGrid.TextMatrix)) = "ü") Then
  loc_10CC93E:     var_A4 = CVar(CLng(var_8E)) 'Long
  loc_10CC946:     var_E4 = CVar(CLng(1)) 'Long
  loc_10CC994:     unk_4314D3.Execute "Delete from Messaging where vno=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & vbNullString, var_D4, -1
  loc_10CC9E0:     var_150 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10CCA14:     var_114 = "00000000"
  loc_10CCA1D:     var_F4 = CVar(var_150) 'Double
  loc_10CCA52:     var_128 = MemVar_1F95080 & "\"
  loc_10CCA59:     var_12C = var_128 & MemVar_1F9507C
  loc_10CCA6E:     var_94 = var_12C & "\" & CStr(1 & Format(var_F4, var_114)) & ".WAV"
  loc_10CCA88:     Call 0.Method_BtnDelete_Click4 (var_94, var_1D2, 1, CVar(CStr(var_11C.TextMatrix))), CVar(CLng(0)), CVar(CLng(var_8E)), var_150)
  loc_10CCA93:     If (var_1D2 = &HFF) Then
  loc_10CCAA1:       Call 0.Method_arg_5C (var_94, 0, CVar(CLng(1)), CVar(CLng(var_8E)), var_148)
  loc_10CCAA6:     End If
  loc_10CCAA6:   End If
  loc_10CCAA9: Next var_120 'Integer
  loc_10CCAB0: Set var_11C = Nothing 
  loc_10CCABA: unk_4314D3.CommitTrans
  loc_10CCAE0: MsgBox("Inbox Message Deleted Successfully.", &H40, "Inbox Deleted...", var_F4, var_114)
  loc_10CCAF0: Exit Sub
  loc_10CCAF1: ' Referenced from: 10CC87C
  loc_10CCAFA: If (CInt(var_86) = 1) Then
  loc_10CCB03:   unk_4314D3.RollbackTrans
  loc_10CCB08: End If
  loc_10CCB10: Set var_124 = Err()
  loc_10CCB16: Call 0.Method_arg_2C (var_128)
  loc_10CCB21: Call 0.Method_arg_50 (var_12C)
  loc_10CCB3D: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_F4, var_114)
  loc_10CCB50: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10D7058
  'Data Table: 4314CC
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_10D6D66: Set var_88 = Me.Txt
  loc_10D6D6C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10D6D7A: Proc_6_74_E23240(var_8C)
  loc_10D6D89: var_92 = Index
  loc_10D6D94: If (var_92 = CInt(1)) Then
  loc_10D6DE5:   Set var_88 = Me.Txt
  loc_10D6DEB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_10D6DF3:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10D6E0B:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_10D6E0E:     Exit Sub
  loc_10D6E0F:   End If
  loc_10D6E1C:   Set var_88 = Me.Txt
  loc_10D6E22:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10D6E2A:   var_A0 = var_8C.Text
  loc_10D6E32:   var_D4 = CVar(var_A0) 'String
  loc_10D6E77:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10D6E80:     Me.MoveFirst
  loc_10D6EA5:     Set var_88 = Me.Txt
  loc_10D6EAB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_10D6EB3:     0 = var_8C.Text
  loc_10D6EC1:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_10D6ED7:     Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_10D6EEF:   End If
  loc_10D6EF2: Else
  loc_10D6EFA:   If (var_92 = CInt(0)) Then
  loc_10D6F4B:     Set var_88 = Me.Txt
  loc_10D6F51:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10D6F71:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_10D6F74:       Exit Sub
  loc_10D6F75:     End If
  loc_10D6F82:     Set var_88 = Me.Txt
  loc_10D6F88:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10D6F90:     var_A0 = var_8C.Text
  loc_10D6F98:     var_D4 = CVar(var_A0) 'String
  loc_10D6FDD:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10D6FE6:       Me.MoveFirst
  loc_10D700B:       Set var_88 = Me.Txt
  loc_10D7011:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_10D7019:       0 = var_8C.Text
  loc_10D7027:       Proc_6_17_EAAE40(var_D4, CVar(var_A0))
  loc_10D703D:       Me.Find CStr(1 & var_D4), var_F8, 
  loc_10D7055:     End If
  loc_10D7055:   End If
  loc_10D7055: End If
  loc_10D7055: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F95790
  'Data Table: 4314CC
  Dim var_86 As Integer
  loc_F9563A: If (CLng(Shift) = &H1B) Then
  loc_F9563D:   Call Proc_149_13_E859E0()
  loc_F95642:   Exit Sub
  loc_F95643: End If
  loc_F95646: var_86 = KeyCode
  loc_F95651: If (var_86 = CInt(1)) Then
  loc_F9566C:   Set var_9C = Nothing
  loc_F95677:   Set var_98 = Nothing
  loc_F956A5:   Proc_6_69_134A630(Me.DGSender, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_F956BC: Else
  loc_F956C4:   If (var_86 = CInt(0)) Then
  loc_F956DF:     Set var_9C = Nothing
  loc_F95718:     Proc_6_69_134A630(Me.DGReceiver, Me.Txt, KeyCode, global_52, Shift, 0, 1, Nothing)
  loc_F9572C:   End If
  loc_F9572C: End If
  loc_F95767: If ((CBool(Me.DGReceiver.Visible) = 0) And (CBool(Me.DGSender.Visible) = 0)) Then
  loc_F9577F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F95788:     Proc_6_75_E5335C(Shift, arg_14, var_9C, 0, 1)
  loc_F9578D:   End If
  loc_F9578D: End If
  loc_F9578D: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EEBDA8
  'Data Table: 4314CC
  Dim var_86 As Integer
  loc_EEBCE3: var_86 = KeyCode
  loc_EEBCEE: If (var_86 = CInt(1)) Then
  loc_EEBD0D:   If (CBool(Me.DGSender.Visible) = &HFF) Then
  loc_EEBD1A:     var_A0 = "Name"
  loc_EEBD35:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_56)
  loc_EEBD44:   End If
  loc_EEBD47: Else
  loc_EEBD4F:   If (var_86 = CInt(0)) Then
  loc_EEBD6E:     If (CBool(Me.DGReceiver.Visible) = &HFF) Then
  loc_EEBD7B:       var_A0 = "Name"
  loc_EEBD96:       Proc_6_80_FF1F20(Me.Txt, KeyCode, global_52, Shift)
  loc_EEBDA5:     End If
  loc_EEBDA5:   End If
  loc_EEBDA5: End If
  loc_EEBDA5: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4CE4C
  'Data Table: 4314CC
  loc_E4CE2A: Set var_88 = Me.Txt
  loc_E4CE30: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4CE3E: Proc_6_73_E23294(var_8C)
  loc_E4CE4A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '11AE2DC
  'Data Table: 4314CC
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim var_C4 As TextBox
  loc_11ADEA7: var_86 = Cancel
  loc_11ADEB2: If (var_86 = CInt(0)) Then
  loc_11ADED1:   If (CBool(Me.DGReceiver.Visible) = 0) Then
  loc_11ADEDE:     Set var_8C = Me.Txt
  loc_11ADEE4:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11ADEEC:     var_A8 = "Receiver Name"
  loc_11ADF0D:     If (Proc_6_27_EA61EC(var_A0, var_A8) = 0) Then
  loc_11ADF1A:       Set var_8C = Me.Txt
  loc_11ADF20:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11ADF28:       var_A0.SetFocus
  loc_11ADF36:       arg_10 = &HFF
  loc_11ADF39:       Exit Sub
  loc_11ADF3A:     End If
  loc_11ADF3A:   End If
  loc_11ADF88:   Set var_8C = Me.Txt
  loc_11ADF8E:   Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A8)
  loc_11ADF96:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_11ADFAE:   If (arg_10 Or (var_A8 = vbNullString)) Then
  loc_11ADFBE:     Set var_8C = Me.Txt
  loc_11ADFC4:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11ADFCC:     var_A0.Text = vbNullString
  loc_11ADFE5:     Set var_8C = Me.Txt
  loc_11ADFEB:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11ADFF3:     var_A0.Tag = vbNullString
  loc_11AE002:   Else
  loc_11AE03D:     Set var_A4 = Me.Txt
  loc_11AE043:     Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_11AE04B:     var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11AE07E:     var_A0 = Me.Fields.Item("Code")
  loc_11AE09C:     Set var_A4 = Me.Txt
  loc_11AE0A2:     Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_11AE0AA:     var_C4.Tag = CStr(var_A0.Value)
  loc_11AE0C0:   End If
  loc_11AE0C3: Else
  loc_11AE0CB:   If (var_86 = CInt(1)) Then
  loc_11AE0EA:     If (CBool(Me.DGSender.Visible) = 0) Then
  loc_11AE0F7:       Set var_8C = Me.Txt
  loc_11AE0FD:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11AE105:       var_A8 = "Sender Name"
  loc_11AE126:       If (Proc_6_27_EA61EC(var_A0, var_A8) = 0) Then
  loc_11AE133:         Set var_8C = Me.Txt
  loc_11AE139:         Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11AE141:         var_A0.SetFocus
  loc_11AE14F:         arg_10 = &HFF
  loc_11AE152:         Exit Sub
  loc_11AE153:       End If
  loc_11AE153:     End If
  loc_11AE1A1:     Set var_8C = Me.Txt
  loc_11AE1A7:     Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A8)
  loc_11AE1AF:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_11AE1C7:     If (arg_10 Or (var_A8 = vbNullString)) Then
  loc_11AE1D7:       Set var_8C = Me.Txt
  loc_11AE1DD:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11AE1E5:       var_A0.Text = vbNullString
  loc_11AE1FE:       Set var_8C = Me.Txt
  loc_11AE204:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11AE20C:       var_A0.Tag = vbNullString
  loc_11AE21B:     Else
  loc_11AE256:       Set var_A4 = Me.Txt
  loc_11AE25C:       Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_11AE264:       var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11AE2B5:       Set var_A4 = Me.Txt
  loc_11AE2BB:       Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_11AE2C3:       var_C4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_11AE2D9:     End If
  loc_11AE2D9:   End If
  loc_11AE2D9: End If
  loc_11AE2D9: Exit Sub
End Sub

Private Sub BtnClose_Click() 'E1A6A4
  'Data Table: 4314CC
  loc_E1A699: Me.Global.Unload Me
  loc_E1A6A1: Exit Sub
End Sub

Private Sub CmdShow_Click() '12A81F0
  'Data Table: 4314CC
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_AC As String
  Dim var_A4 As Variant
  Dim unk_4314D3 As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_D4 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_98 As Fields15
  Dim var_114 As Variant
  Dim var_104 As Variant
  Dim var_194 As Variant
  Dim var_164 As Variant
  loc_12A7BFF: Set var_90 = Me.Txt
  loc_12A7C05: Call 0.Method_CmdShow_Click0 (CInt(0))
  loc_12A7C2E: If (Proc_6_27_EA61EC(var_94, "Receiver Name") = 0) Then
  loc_12A7C3C:   Set var_90 = Me.Txt
  loc_12A7C42:   Call 0.Method_CmdShow_Click0 (CInt(0), var_94)
  loc_12A7C4A:   var_94.SetFocus
  loc_12A7C56:   Exit Sub
  loc_12A7C57: End If
  loc_12A7C62: Set var_90 = Me.Txt
  loc_12A7C68: Call 0.Method_CmdShow_Click0 (CInt(1), var_94)
  loc_12A7C70: var_9C = "Sender Name"
  loc_12A7C91: If (Proc_6_27_EA61EC(var_94, var_9C) = 0) Then
  loc_12A7C9F:   Set var_90 = Me.Txt
  loc_12A7CA5:   Call 0.Method_CmdShow_Click0 (CInt(1), var_94)
  loc_12A7CAD:   var_94.SetFocus
  loc_12A7CB9:   Exit Sub
  loc_12A7CBA: End If
  loc_12A7CD8: Set var_90 = Me.Txt
  loc_12A7CDE: Call 0.Method_CmdShow_Click0 (CInt(1), var_94, var_9C, "Select * from Messaging where Sender='")
  loc_12A7CE6: var_D4 = var_94.Tag
  loc_12A7CEF: var_A0 = -1 & var_9C
  loc_12A7CF6: var_AC = var_A0 & "' and Receiver='"
  loc_12A7D07: Set var_98 = Me.Txt
  loc_12A7D0D: Call 0.Method_CmdShow_Click0 (CInt(0), var_A4, var_A8)
  loc_12A7D15: var_AC = var_A4.Tag
  loc_12A7D2E: unk_4314D3.Execute var_D8 & var_A8 & "' and Cleared='Y'", var_94, 
  loc_12A7D39: Set var_88 = var_D8
  loc_12A7D5F: Set var_DC = Me.FGrid
  loc_12A7D64: var_8A = 1
  loc_12A7D73: var_DC.Rows = 1
  loc_12A7D8C: If (var_88.RecordCount > 0) Then
  loc_12A7D8F:   ' Referenced from: 12A81C1
  loc_12A7D9E:   If Not(var_88.EOF) Then
  loc_12A7DA1:     var_C4 = vbNullString
  loc_12A7DE1:     var_154 = CVar(CLng(var_8A)) 'Long
  loc_12A7DE9:     var_174 = CVar(CLng(0)) 'Long
  loc_12A7E2F:     var_194 = CVar(CStr(IIf(IsNull(CVar(var_88.Fields.Item("vType"))), vbNullString, CVar(var_88.Fields.Item("vType"))))) 'String
  loc_12A7E36:     LateIdCallSt
  loc_12A7E83:     var_154 = CVar(CLng(var_8A)) 'Long
  loc_12A7E8B:     var_174 = CVar(CLng(1)) 'Long
  loc_12A7ED1:     var_194 = CVar(CStr(IIf(IsNull(CVar(var_88.Fields.Item("VNo"))), vbNullString, CVar(var_88.Fields.Item("VNo"))))) 'String
  loc_12A7ED8:     LateIdCallSt
  loc_12A7EFA:     var_C4 = CVar(CLng(var_8A)) 'Long
  loc_12A7F02:     var_104 = CVar(CLng(2)) 'Long
  loc_12A7F0C:     var_D4 = CVar(CStr(var_8A)) 'String
  loc_12A7F13:     LateIdCallSt
  loc_12A7F22:     var_C4 = CVar(CLng(var_8A)) 'Long
  loc_12A7F2A:     var_104 = CVar(CLng(3)) 'Long
  loc_12A7F2F:     var_154 = vbNullString
  loc_12A7F38:     LateIdCallSt
  loc_12A7F44:     var_114 = CVar(CLng(var_8A)) 'Long
  loc_12A7F4C:     var_164 = CVar(CLng(4)) 'Long
  loc_12A7FB3:     var_194 = CVar(CStr(var_88.Fields.Item("VDate").Value & " " & var_88.Fields.Item("VTIME").Value)) 'String
  loc_12A7FBA:     LateIdCallSt
  loc_12A7FDE:     var_114 = CVar(CLng(var_8A)) 'Long
  loc_12A7FE6:     var_164 = CVar(CLng(5)) 'Long
  loc_12A804D:     var_194 = CVar(CStr(var_88.Fields.Item("ReadDate").Value & " " & var_88.Fields.Item("ReadTime").Value)) 'String
  loc_12A8054:     LateIdCallSt
  loc_12A8078:     var_114 = CVar(CLng(var_8A)) 'Long
  loc_12A8080:     var_164 = CVar(CLng(6)) 'Long
  loc_12A80E7:     var_194 = CVar(CStr(var_88.Fields.Item("ClearedDate").Value & " " & var_88.Fields.Item("ClearedTime").Value)) 'String
  loc_12A80EE:     LateIdCallSt
  loc_12A813D:     var_154 = CVar(CLng(var_8A)) 'Long
  loc_12A8145:     var_174 = CVar(CLng(7)) 'Long
  loc_12A818B:     var_194 = CVar(CStr(IIf(IsNull(CVar(var_88.Fields.Item("Message"))), vbNullString, CVar(var_88.Fields.Item("Message"))))) 'String
  loc_12A8192:     LateIdCallSt
  loc_12A81B3:     var_88.MoveNext
  loc_12A81BE:     var_8A = (var_8A + 1)
  loc_12A81C1:     GoTo loc_12A7D8F
  loc_12A81C4:   End If
  loc_12A81C7: Else
  loc_12A81C7:   var_C4 = vbNullString
  loc_12A81D8: End If
  loc_12A81E4: var_DC.FixedRows = 1
  loc_12A81EB: Set var_DC = Nothing 
  loc_12A81EF: Exit Sub
End Sub

Private Sub Command1_Click() 'E167B4
  'Data Table: 4314CC
  loc_E167A9: Me.Global.Unload Me
  loc_E167B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'FB1BB4
  'Data Table: 4314CC
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  loc_FB1A51: If (CLng(Me.FGrid.Col) <> CLng(3)) Then
  loc_FB1A54:   Exit Sub
  loc_FB1A55: End If
  loc_FB1A68: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB1A70: var_C8 = CVar(CLng(1)) 'Long
  loc_FB1AA3: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_FB1AA6:   Exit Sub
  loc_FB1AA7: End If
  loc_FB1AB9: Me.FGrid.Col = CVar(CLng(3))
  loc_FB1AD1: Me.FGrid.CellFontName = "wingdings"
  loc_FB1AEB: Me.FGrid.CellFontSize = CVar(CDbl(&H10))
  loc_FB1B06: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB1B0E: var_C8 = CVar(CLng(3)) 'Long
  loc_FB1B3C: var_174 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB1B44: var_194 = CVar(CLng(3)) 'Long
  loc_FB1B7B: var_1B4 = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = " "), "ü", " "))) 'String
  loc_FB1B83: Set var_1C8 = Me.FGrid
  loc_FB1B89: LateIdCallSt
  loc_FB1BB2: Exit Sub
End Sub

Public Sub Proc_149_13_E859E0
  'Data Table: 4314CC
  loc_E8598C: If (CBool(Me.DGSender.Visible) = &HFF) Then
  loc_E8599E:   Me.DGSender.Visible = False
  loc_E859A6: End If
  loc_E859C2: If (CBool(Me.DGReceiver.Visible) = &HFF) Then
  loc_E859D4:   Me.DGReceiver.Visible = False
  loc_E859DC: End If
  loc_E859DC: Exit Sub
End Sub

Public Sub Proc_149_14_11237FC
  'Data Table: 4314CC
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_112348C: Set var_88 = Me.FGrid
  loc_112349B: var_88.FixedRows = 1
  loc_11234B0: var_C8 = CVar(CLng(var_88.BackColor)) 'Variant
  loc_11234C3: var_88.Cols = 8
  loc_11234D4: var_88.FixedCols = 1
  loc_11234E5: var_88.RowHeightMin = &H12C
  loc_11234ED: var_98 = CVar(CLng(0)) 'Long
  loc_11234F2: var_D8 = 0
  loc_11234FE: LateIdCallSt
  loc_1123509: var_98 = CVar(CLng(1)) 'Long
  loc_112350E: var_D8 = 0
  loc_112351A: LateIdCallSt
  loc_1123522: var_98 = 0
  loc_112352E: var_D8 = CVar(CLng(2)) 'Long
  loc_1123533: var_F8 = "SlNo."
  loc_112353C: LateIdCallSt
  loc_1123547: var_98 = CVar(CLng(2)) 'Long
  loc_1123552: var_D8 = CVar(CInt(7)) 'Integer
  loc_1123559: LateIdCallSt
  loc_1123564: var_98 = CVar(CLng(2)) 'Long
  loc_112356F: var_D8 = CVar(CInt(7)) 'Integer
  loc_1123576: LateIdCallSt
  loc_1123581: var_98 = CVar(CLng(2)) 'Long
  loc_1123586: var_D8 = &H1F4
  loc_1123592: LateIdCallSt
  loc_112359A: var_98 = 0
  loc_11235A6: var_D8 = CVar(CLng(3)) 'Long
  loc_11235AB: var_F8 = "Del."
  loc_11235B4: LateIdCallSt
  loc_11235BF: var_98 = CVar(CLng(3)) 'Long
  loc_11235CA: var_D8 = CVar(CInt(7)) 'Integer
  loc_11235D1: LateIdCallSt
  loc_11235DC: var_98 = CVar(CLng(3)) 'Long
  loc_11235E7: var_D8 = CVar(CInt(7)) 'Integer
  loc_11235EE: LateIdCallSt
  loc_11235F9: var_98 = CVar(CLng(3)) 'Long
  loc_11235FE: var_D8 = &H1C2
  loc_112360A: LateIdCallSt
  loc_1123612: var_98 = 0
  loc_112361E: var_D8 = CVar(CLng(4)) 'Long
  loc_1123623: var_F8 = "Send Dt./Time"
  loc_112362C: LateIdCallSt
  loc_1123637: var_98 = CVar(CLng(4)) 'Long
  loc_1123642: var_D8 = CVar(CInt(1)) 'Integer
  loc_1123649: LateIdCallSt
  loc_1123654: var_98 = CVar(CLng(4)) 'Long
  loc_112365F: var_D8 = CVar(CInt(1)) 'Integer
  loc_1123666: LateIdCallSt
  loc_1123671: var_98 = CVar(CLng(4)) 'Long
  loc_1123676: var_D8 = &H79E
  loc_1123682: LateIdCallSt
  loc_112368A: var_98 = 0
  loc_1123696: var_D8 = CVar(CLng(5)) 'Long
  loc_112369B: var_F8 = "Read Dt./Time"
  loc_11236A4: LateIdCallSt
  loc_11236AF: var_98 = CVar(CLng(5)) 'Long
  loc_11236BA: var_D8 = CVar(CInt(1)) 'Integer
  loc_11236C1: LateIdCallSt
  loc_11236CC: var_98 = CVar(CLng(5)) 'Long
  loc_11236D7: var_D8 = CVar(CInt(1)) 'Integer
  loc_11236DE: LateIdCallSt
  loc_11236E9: var_98 = CVar(CLng(5)) 'Long
  loc_11236EE: var_D8 = &H79E
  loc_11236FA: LateIdCallSt
  loc_1123702: var_98 = 0
  loc_112370E: var_D8 = CVar(CLng(6)) 'Long
  loc_1123713: var_F8 = "Deleted Dt./Time"
  loc_112371C: LateIdCallSt
  loc_1123727: var_98 = CVar(CLng(6)) 'Long
  loc_1123732: var_D8 = CVar(CInt(1)) 'Integer
  loc_1123739: LateIdCallSt
  loc_1123744: var_98 = CVar(CLng(6)) 'Long
  loc_112374F: var_D8 = CVar(CInt(1)) 'Integer
  loc_1123756: LateIdCallSt
  loc_1123761: var_98 = CVar(CLng(6)) 'Long
  loc_1123766: var_D8 = &H79E
  loc_1123772: LateIdCallSt
  loc_112377A: var_98 = 0
  loc_1123786: var_D8 = CVar(CLng(7)) 'Long
  loc_112378B: var_F8 = "Message"
  loc_1123794: LateIdCallSt
  loc_112379F: var_98 = CVar(CLng(7)) 'Long
  loc_11237AA: var_D8 = CVar(CInt(1)) 'Integer
  loc_11237B1: LateIdCallSt
  loc_11237BC: var_98 = CVar(CLng(7)) 'Long
  loc_11237C7: var_D8 = CVar(CInt(1)) 'Integer
  loc_11237CE: LateIdCallSt
  loc_11237D9: var_98 = CVar(CLng(7)) 'Long
  loc_11237DE: var_D8 = &H10CC
  loc_11237EA: LateIdCallSt
  loc_11237F4: Set var_88 = Nothing 
  loc_11237F8: Exit Sub
End Sub
