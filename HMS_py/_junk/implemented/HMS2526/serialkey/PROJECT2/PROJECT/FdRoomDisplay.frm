VERSION 5.00
Begin VB.Form FdRoomDisplay
  Caption = "Room View"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Picture = "FdRoomDisplay.frx":0
  Icon = "FdRoomDisplay.frx":52A
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 14190
  ClientHeight = 8355
  Begin Frame FrmPic
    BackColor = &HCBFCF9&
    ForeColor = &HFF0000&
    Left = 15
    Top = 1305
    Width = 12855
    Height = 7590
    TabIndex = 1
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin Image Picture1
      Left = 0
      Top = 0
      Width = 11160
      Height = 7545
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin Frame FrmRoom
    BackColor = &HFFC0FF&
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 19875
    Height = 11070
    TabIndex = 0
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin BtnEnh BtnExit
      Left = 10065
      Top = 525
      Width = 1350
      Height = 735
      TabIndex = 3
    End
    Begin BtnEnh Cmd
      Index = 1
      Left = 15
      Top = 540
      Width = 1350
      Height = 735
      TabIndex = 2
    End
    Begin Label LblFormCaption
      BackColor = &HC0FFFF&
      Left = 0
      Top = 0
      Width = 180
      Height = 540
      TabIndex = 4
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
  End
End

Attribute VB_Name = "FdRoomDisplay"


Private Sub Form_Load() '12FCE10
  'Data Table: 421CA0
  Dim var_98 As String
  Dim unk_421CA9 As Connection15
  Dim var_8C As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_C8 As Variant
  Dim var_F0 As Variant
  Dim var_BC As Variant
  Dim var_8E As Integer
  Dim var_90 As Integer
  Dim var_92 As Integer
  Dim var_DC As Image
  loc_12FC71C: On Error Goto loc_12FCDCA
  loc_12FC733: var_98 = "select * from roommast where logsite_code='" & MemVar_1F95078
  loc_12FC743: unk_421CA9.Execute var_98 & "' and type='RO' and inclcount='Y' order by Code", var_BC, -1
  loc_12FC74E: Set var_8C = var_C0
  loc_12FC772: If (var_8C.RecordCount > 0) Then
  loc_12FC778:   var_8C.MoveFirst
  loc_12FC78A:   Set var_C0 = Me.Cmd
  loc_12FC790:   Call 0.Method_Form_Load0 (1, var_C8)
  loc_12FC798:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010007(True)
  loc_12FC7DC:   Set var_DC = Me.Cmd
  loc_12FC7E2:   Call 0.Method_Form_Load0 (1, var_E0)
  loc_12FC7EA:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_8001000B(CVar(CStr(var_8C.Fields.Item("Code").Value)))
  loc_12FC818:   var_C8 = var_8C.Fields.Item("Code")
  loc_12FC82E:   Set var_DC = Me.Cmd
  loc_12FC834:   Call 0.Method_Form_Load0 (1, var_E0)
  loc_12FC83C:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(CVar(var_C8))
  loc_12FC850:   var_8C.MoveNext
  loc_12FC857:   var_8E = 9
  loc_12FC85C:   var_90 = 0
  loc_12FC878:   For var_F4 = 2 To CInt(var_8C.RecordCount): var_86 = var_F4 'Integer
  loc_12FC888:     Set var_C0 = Me.Cmd
  loc_12FC88E:     Call 0.Method_Form_Load0 (var_86, var_C8, 2, 0)
  loc_12FC89F:     Me.Cmd.Load var_C8
  loc_12FC8C5:     var_C8 = var_8C.Fields.Item("Code")
  loc_12FC8D6:     var_F0 = CVar(CStr(var_C8.Value)) 'String
  loc_12FC8E4:     Set var_DC = Me.Cmd
  loc_12FC8EA:     Call 0.Method_Form_Load0 (var_86, var_E0, var_F0)
  loc_12FC8F2:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_8001000B(var_90)
  loc_12FC917:     Set var_C0 = Me.Cmd
  loc_12FC91D:     Call 0.Method_Form_Load0 (var_86, var_C8, True)
  loc_12FC925:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010007(var_8E)
  loc_12FC940:     var_C0 = var_8C.Fields
  loc_12FC948:     var_C8 = var_C0.Item("Code")
  loc_12FC95F:     Set var_DC = Me.Cmd
  loc_12FC965:     Call 0.Method_Form_Load0 (var_86, var_E0)
  loc_12FC96D:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(CVar(var_C8))
  loc_12FC98B:     Set var_DC = Me.Cmd
  loc_12FC991:     Call 0.Method_Form_Load0 ((var_86 - 1), var_E0)
  loc_12FC999:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010006(var_C0)
  loc_12FC9AF:     Set var_C0 = Me.Cmd
  loc_12FC9B5:     Call 0.Method_Form_Load0 ((var_86 - 1))
  loc_12FC9BD:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_C8)
  loc_12FC9CC:     var_AC = CVar((CDbl() + CDbl(var_F0))) 'Single
  loc_12FC9DB:     Set var_F8 = Me.Cmd
  loc_12FC9E1:     Call 0.Method_Form_Load0 (var_86, var_FC)
  loc_12FC9E9:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004("Code")
  loc_12FCA11:     Set var_C0 = Me.Cmd
  loc_12FCA17:     Call 0.Method_Form_Load0 ((var_86 - 1))
  loc_12FCA1F:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_C8)
  loc_12FCA37:     Set var_DC = Me.Cmd
  loc_12FCA3D:     Call 0.Method_Form_Load0 (var_86, var_E0)
  loc_12FCA45:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(CVar(CDbl()))
  loc_12FCA63:     If ((var_86 Mod var_8E) = var_90) Then
  loc_12FCA73:       Set var_DC = Me.Cmd
  loc_12FCA79:       Call 0.Method_Form_Load0 ((var_86 - 8))
  loc_12FCA81:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010005(var_E0)
  loc_12FCA97:       Set var_C0 = Me.Cmd
  loc_12FCA9D:       Call 0.Method_Form_Load0 ((var_86 - 8))
  loc_12FCAA5:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_C8)
  loc_12FCAB4:       var_AC = CVar((CDbl() + CDbl(var_F0))) 'Single
  loc_12FCAC3:       Set var_F8 = Me.Cmd
  loc_12FCAC9:       Call 0.Method_Form_Load0 (var_86, var_FC)
  loc_12FCAD1:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(CVar(CDbl()))
  loc_12FCAF9:       Set var_C0 = Me.Cmd
  loc_12FCAFF:       Call 0.Method_Form_Load0 ((var_86 - 8))
  loc_12FCB07:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_C8)
  loc_12FCB1F:       Set var_DC = Me.Cmd
  loc_12FCB25:       Call 0.Method_Form_Load0 (var_86, var_E0)
  loc_12FCB2D:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_12FCB46:       var_92 = (var_92 + 1)
  loc_12FCB50:       var_90 = (var_8E - 0)
  loc_12FCB53:     End If
  loc_12FCB56:     var_8C.MoveNext
  loc_12FCB5E:   Next var_F4 'Integer
  loc_12FCB63: End If
  loc_12FCB69: Set var_C0 = Me.FrmPic
  loc_12FCB6F: var_C0.Visible = False
  loc_12FCB95: Me.Global.LoadPicture var_AC, var_D8, var_10C, var_11C, var_12C
  loc_12FCBAA: Me.Picture1.Picture = var_C0
  loc_12FCBC3: Me.Picture1.Tag = vbNullString
  loc_12FCBDA: Me.FrmRoom.Height = CDbl(7500)
  loc_12FCBF1: Me.FrmRoom.Width = CDbl(11580)
  loc_12FCC18: Me.FrmPic.Height = Me.FrmRoom.Height
  loc_12FCC43: Me.FrmPic.Width = Me.FrmRoom.Width
  loc_12FCC6E: Me.Picture1.Height = Me.FrmPic.Height
  loc_12FCC99: Me.Picture1.Width = Me.FrmPic.Width
  loc_12FCCB3: Me.FrmRoom.Top = CDbl(&HA)
  loc_12FCCC9: Me.FrmRoom.Left = CDbl(&HF)
  loc_12FCCF0: Me.FrmPic.Top = Me.FrmRoom.Top
  loc_12FCD1B: Me.FrmPic.Left = Me.FrmRoom.Left
  loc_12FCD46: Me.Picture1.Top = Me.FrmPic.Top
  loc_12FCD71: Me.Picture1.Left = Me.FrmPic.Left
  loc_12FCD89: Me.Picture1.Visible = False
  loc_12FCD98: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_12FCDAB: Me.FrmPic.BackColor = CLng(MemVar_1F951B4)
  loc_12FCDC1: Me.FrmRoom.BackColor = CLng(MemVar_1F951B4)
  loc_12FCDC9: Exit Sub
  loc_12FCDCA: ' Referenced from: 12FC71C
  loc_12FCDD2: Set var_C0 = Err()
  loc_12FCDD8: Call 0.Method_arg_2C (var_98)
  loc_12FCDF9: MsgBox(CVar(var_98), &H10, "Information", var_13C, var_14C)
  loc_12FCE0C: Exit Sub
  loc_12FCE0D: Exit Sub
End Sub

Private Sub Form_Resize() 'E76EE4
  'Data Table: 421CA0
  loc_E76E8E: Call 0.Method_arg_50 (var_88)
  loc_E76EA0: Me.LblFormCaption.Caption = var_88
  loc_E76EB9: Me.LblFormCaption.Left = CDbl(0)
  loc_E76EC7: Call 0.Method_arg_100 (var_90)
  loc_E76ED9: Me.LblFormCaption.Width = var_90
  loc_E76EE1: Exit Sub
  loc_E76EE2:  = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5D464
  'Data Table: 421CA0
  loc_E5D426: If (CLng(KeyCode) = &H1B) Then
  loc_E5D435:   Me.FrmPic.Visible = False
  loc_E5D43D:   Exit Sub
  loc_E5D441: Else
  loc_E5D44B:   If (CLng(KeyCode) = &H79) Then
  loc_E5D45B:     Me.Global.Unload Me
  loc_E5D463:   End If
  loc_E5D463: End If
  loc_E5D463: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 '11881B0
  'Data Table: 421CA0
  Dim var_B0 As String
  Dim unk_421CA9 As Connection15
  Dim var_88 As Recordset15
  Dim var_C8 As Variant
  Dim var_94 As Variant
  Dim var_134 As Variant
  Dim var_F0 As String
  Dim var_DC As Variant
  Dim var_D8 As Variant
  Dim var_114 As String
  Dim var_1B4 As Variant
  Dim var_98 As Field20
  loc_1187E2C: Set var_94 = Me.Cmd
  loc_1187E32: Call 0.Method_Cmd_UnknownEvent_90 (KeyCode, var_98, "Select PicPath From RoomMast Where LogSite_Code='" & MemVar_1F95078 & "' and type='RO' and inclcount='Y' and Code='")
  loc_1187E3A: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_8001000B(var_D8)
  loc_1187E42: var_B0 = CStr(-1)
  loc_1187E56: unk_421CA9.Execute var_DC & var_B0 & "'", , 
  loc_1187E61: Set var_88 = var_DC
  loc_1187E95: If (var_88.RecordCount > 0) Then
  loc_1187EA7:   var_94 = var_88.Fields
  loc_1187EC0:   var_134 = IsNull(CVar(var_94.Item("PicPath")))
  loc_1187EC7:   var_F0 = "PicPath"
  loc_1187EF2:   var_114 = vbNullString
  loc_1187F14:   If CBool(var_134 Or (Trim(CVar(var_88.Fields.Item(var_F0))) = var_114)) Then
  loc_1187F35:     Me.Global.LoadPicture var_C8, var_F0, var_114, var_134, var_154
  loc_1187F4A:     Me.Picture1.Picture = var_94
  loc_1187F59:   Else
  loc_1187F87:     var_114 = "PicPath"
  loc_1187FCD:     var_F0 = "DAT"
  loc_1187FF5:     var_134 = "AVI"
  loc_1187FFF:     var_1B4 = (Ucase(Right(Trim(CVar(var_88.Fields.Item("PicPath"))), 3)) = var_F0) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_114))), 3)) = var_134)
  loc_118801F:     If CBool(var_1B4) Then
  loc_118802E:       Me.Picture1.Visible = False
  loc_1188039:     Else
  loc_1188045:       Me.Picture1.Visible = True
  loc_1188085:       Me.Picture1.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_11880A2:       var_C8 = "PicPath"
  loc_11880B6:       var_98 = var_88.Fields.Item(var_C8)
  loc_11880D0:       Call 0.Method_Cmd_UnknownEvent_94 (CStr(var_98.Value), var_1B6)
  loc_11880E5:       If var_1B6 Then
  loc_1188102:         Set var_94 = Me.Picture1
  loc_118811A:         Me.Global.LoadPicture CVar(Me.Picture1.Tag), var_C8, var_F0, var_114, var_134
  loc_118812F:         Me.Picture1.Picture = var_98
  loc_1188144:         Set var_94 = Me.Picture1
  loc_118814A:         var_94.Refresh
  loc_1188155:       Else
  loc_1188173:         Me.Global.LoadPicture var_C8, var_F0, var_114, var_134, var_154
  loc_1188188:         Me.Picture1.Picture = var_94
  loc_1188194:       End If
  loc_1188194:       Call Proc_104_5_EB1570(var_94, var_98)
  loc_1188199:     End If
  loc_1188199:   End If
  loc_11881A5:   Me.FrmPic.Visible = True
  loc_11881AD: End If
  loc_11881AD: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E16094
  'Data Table: 421CA0
  loc_E16089: Me.Global.Unload Me
  loc_E16091: Exit Sub
End Sub

Public Sub Proc_104_5_EB1570
  'Data Table: 421CA0
  loc_EB1516: Me.Picture1.Top = ((Me.FrmPic.Height - Me.Picture1.Height) / CDbl(2))
  loc_EB155E: Me.Picture1.Left = ((Me.FrmPic.Width - Me.Picture1.Width) / CDbl(2))
  loc_EB156C: Exit Sub
End Sub
