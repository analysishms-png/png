VERSION 5.00
Begin VB.Form TelExtensionMast
  Caption = "Extension Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10020
  ClientHeight = 6540
  Begin MSFlexGrid FGPoint
    Left = 5445
    Top = 4860
    Width = 4155
    Height = 330
    Visible = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGDept
    Left = 6390
    Top = 1980
    Width = 3600
    Height = 1995
    Visible = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGHelp
    Left = 660
    Top = 5160
    Width = 3660
    Height = 1995
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 19
  End
  Begin TextBox txt
    Index = 5
    BackColor = &HFFFFFF&
    Left = 6255
    Top = 1290
    Width = 2925
    Height = 240
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
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
    BackColor = &HFFFFFF&
    Left = 1995
    Top = 1530
    Width = 1290
    Height = 240
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 10860
    Top = 1725
    Width = 1950
    Height = 2475
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 75
      Top = 30
      Width = 1800
      Height = 2340
      TabStop = 0   'False
      TabIndex = 16
    End
  End
  Begin TextBox txt
    Index = 4
    BackColor = &HFFFFFF&
    Left = 6255
    Top = 1305
    Width = 2265
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
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
    BackColor = &HFFFFFF&
    Left = 6255
    Top = 1305
    Width = 2865
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
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
    Index = 2
    BackColor = &HFFFFFF&
    Left = 1995
    Top = 1275
    Width = 2385
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
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
    BackColor = &HFFFFFF&
    Left = 1995
    Top = 1020
    Width = 1275
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
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
    BackColor = &HFFFFFF&
    Left = 1995
    Top = 765
    Width = 4275
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGRoom
    Left = 495
    Top = 2115
    Width = 3570
    Height = 1995
    Visible = 0   'False
    TabIndex = 13
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10020
    Height = 510
    TabIndex = 20
  End
  Begin Label lblNumber
    Caption = "Department"
    Index = 5
    ForeColor = &H0&
    Left = 4575
    Top = 1500
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 17
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lblNumber
    Caption = "Shop Desc."
    Index = 4
    ForeColor = &H0&
    Left = 4500
    Top = 1050
    Width = 960
    Height = 240
    Visible = 0   'False
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Rate For 1 Pulse"
    Index = 4
    ForeColor = &H0&
    Left = 435
    Top = 1530
    Width = 1410
    Height = 240
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lblNumber
    Caption = "Room Number"
    Index = 3
    ForeColor = &H0&
    Left = 4545
    Top = 1290
    Width = 1230
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Type"
    Index = 2
    ForeColor = &H0&
    Left = 435
    Top = 1275
    Width = 420
    Height = 240
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Extension"
    Index = 1
    ForeColor = &H0&
    Left = 435
    Top = 1020
    Width = 810
    Height = 240
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Description"
    Index = 0
    ForeColor = &H0&
    Left = 435
    Top = 765
    Width = 945
    Height = 240
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "TelExtensionMast"


Private Sub DGDept_UnknownEvent_9 'F434D4
  'Data Table: 472628
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F433CB: Me.DGDept.Visible = False
  loc_F433EA: If (Me.RecordCount > 0) Then
  loc_F43427:   Set var_B4 = Me.txt
  loc_F4342D:   Call 0.Method_DGDept_UnknownEvent_90 (5, var_B8)
  loc_F43435:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F43468:   var_B0 = Me.Fields.Item("Code")
  loc_F43485:   Set var_B4 = Me.txt
  loc_F4348B:   Call 0.Method_DGDept_UnknownEvent_90 (5, var_B8)
  loc_F43493:   var_B8.Tag = CStr(var_B0.Value)
  loc_F434A9: End If
  loc_F434B2: Set var_A8 = Me.txt
  loc_F434B8: Call 0.Method_DGDept_UnknownEvent_90 (5)
  loc_F434C0: var_B0.SetFocus
  loc_F434CC: Call Proc_93_39_EF68A8(var_B0)
  loc_F434D1: Exit Sub
End Sub

Private Sub DGDept_UnknownEvent_1F 'E749E0
  'Data Table: 472628
  loc_E7499E: Proc_6_153_E91D24(Me.DGDept, arg_14)
  loc_E749B5: Set var_8C = Me.FGPoint
  loc_E749CF: Proc_6_138_106E830(Me.DGDept, global_76, 5)
  loc_E749DD: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE5D4C
  'Data Table: 472628
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE5CA3: Me.DGHelp.Visible = False
  loc_EE5CC2: If (Me.RecordCount > 0) Then
  loc_EE5CE2:   var_B0 = Me.Fields.Item("Description")
  loc_EE5CFF:   Set var_B4 = Me.txt
  loc_EE5D05:   Call 0.Method_DGHelp_UnknownEvent_90 (0, var_B8)
  loc_EE5D0D:   var_B8.Text = CStr(var_B0.Value)
  loc_EE5D23: End If
  loc_EE5D2C: Set var_A8 = Me.txt
  loc_EE5D32: Call 0.Method_DGHelp_UnknownEvent_90 (0)
  loc_EE5D3A: var_B0.SetFocus
  loc_EE5D46: Call Proc_93_39_EF68A8(var_B0)
  loc_EE5D4B: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E754DC
  'Data Table: 472628
  loc_E7549A: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E754B1: Set var_8C = Me.FGPoint
  loc_E754CB: Proc_6_138_106E830(Me.DGHelp, global_80, 0)
  loc_E754D9: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F43634
  'Data Table: 472628
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4352B: Me.DGRoom.Visible = False
  loc_F4354A: If (Me.RecordCount > 0) Then
  loc_F43587:   Set var_B4 = Me.txt
  loc_F4358D:   Call 0.Method_DGRoom_UnknownEvent_90 (3, var_B8)
  loc_F43595:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_F435C8:   var_B0 = Me.Fields.Item("Code")
  loc_F435E5:   Set var_B4 = Me.txt
  loc_F435EB:   Call 0.Method_DGRoom_UnknownEvent_90 (3, var_B8)
  loc_F435F3:   var_B8.Tag = CStr(var_B0.Value)
  loc_F43609: End If
  loc_F43612: Set var_A8 = Me.txt
  loc_F43618: Call 0.Method_DGRoom_UnknownEvent_90 (3)
  loc_F43620: var_B0.SetFocus
  loc_F4362C: Call Proc_93_39_EF68A8(var_B0)
  loc_F43631: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'E74B9C
  'Data Table: 472628
  loc_E74B5A: Proc_6_153_E91D24(Me.DGRoom, arg_14)
  loc_E74B8B: Proc_6_138_106E830(Me.DGRoom, global_72, 3)
  loc_E74B99: Exit Sub
  loc_E74B9A: Loop Until Me.FGPoint 'do at: E6FBC7
End Sub

Private Sub Txt_GotFocus(Index As Integer) '121A21C
  'Data Table: 472628
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_1219D5E: Set var_88 = Me.txt
  loc_1219D64: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1219D72: Proc_6_74_E23240(var_8C)
  loc_1219D81: var_92 = Index
  loc_1219D8A: If (var_92 = 0) Then
  loc_1219DA4:   If (Me.RecordCount > 0) Then
  loc_1219DB2:     Set var_8C = Me.FGPoint
  loc_1219DCA:     Proc_6_137_1192FDC(Me.DGHelp, global_80, Index)
  loc_1219DD8:   End If
  loc_1219DDB: Else
  loc_1219DE1:   If (var_92 = 3) Then
  loc_1219DFB:     If (Me.RecordCount > 0) Then
  loc_1219E09:       Set var_8C = Me.FGPoint
  loc_1219E21:       Proc_6_137_1192FDC(Me.DGRoom, global_72, Index, var_8C)
  loc_1219E2F:     End If
  loc_1219E7D:     Set var_88 = Me.txt
  loc_1219E83:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1219E8B:     var_8C = var_8C.Text
  loc_1219EA3:     If (var_92 Or (var_A0 = vbNullString)) Then
  loc_1219EA6:       Exit Sub
  loc_1219EA7:     End If
  loc_1219EB4:     Set var_88 = Me.txt
  loc_1219EBA:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1219EC2:     var_A0 = var_8C.Text
  loc_1219ED4:     var_B0 = "Code"
  loc_1219F0F:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1219F18:       Me.MoveFirst
  loc_1219F3B:       Set var_88 = Me.txt
  loc_1219F41:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Code='")
  loc_1219F49:       0 = var_8C.Text
  loc_1219F62:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1219F77:     End If
  loc_1219F7A:   Else
  loc_1219F80:     If (var_92 = 5) Then
  loc_1219F9A:       If (Me.RecordCount > 0) Then
  loc_1219FA8:         Set var_8C = Me.FGPoint
  loc_1219FC0:         Proc_6_137_1192FDC(Me.DGDept, global_76)
  loc_1219FCE:       End If
  loc_121A01C:       Set var_88 = Me.txt
  loc_121A022:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_121A02A:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_121A042:       If (Index Or (var_A0 = vbNullString)) Then
  loc_121A045:         Exit Sub
  loc_121A046:       End If
  loc_121A053:       Set var_88 = Me.txt
  loc_121A059:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_121A061:       var_A0 = var_8C.Text
  loc_121A073:       var_B0 = "Name"
  loc_121A0AE:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_121A0B7:         Me.MoveFirst
  loc_121A0DA:         Set var_88 = Me.txt
  loc_121A0E0:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_121A0E8:         0 = var_8C.Text
  loc_121A101:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_121A116:       End If
  loc_121A119:     Else
  loc_121A11F:       If (var_92 = 2) Then
  loc_121A12F:         ReDim var_F0(0 To 2)
  loc_121A146:         var_F0(0) = "Department"
  loc_121A155:         var_F0(1) = "Room"
  loc_121A164:         var_F0(2) = "Shop"
  loc_121A17B:         global_56 = Array(var_F0)
  loc_121A186:         Set var_B4 = Me.ListView
  loc_121A1A3:         Set var_8C = Me.txt
  loc_121A1BD:         Set global_52 = Proc_6_66_F0048C(var_B4, var_8C, 2)
  loc_121A1DA:         Set var_88 = Me.txt
  loc_121A1E0:         Call 0.Method_Txt_GotFocus0 (2, var_8C, var_A0)
  loc_121A1E8:         global_56 = var_8C.Text
  loc_121A1F9:         Set var_90 = Me.txt
  loc_121A1FF:         Call 0.Method_Txt_GotFocus0 (2, var_B4, var_A0)
  loc_121A207:         var_B4.Tag = 3
  loc_121A21A:       End If
  loc_121A21A:     End If
  loc_121A21A:   End If
  loc_121A21A: End If
  loc_121A21A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '136AE94
  'Data Table: 472628
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_E0 As String
  Dim var_8C As DataGrid
  Dim var_9C As DataGrid
  Dim var_134 As Variant
  loc_136A666: If (CLng(Shift) = &H1B) Then
  loc_136A669:   Call Proc_93_39_EF68A8()
  loc_136A66E:   Exit Sub
  loc_136A66F: End If
  loc_136A672: var_88 = KeyCode
  loc_136A67B: If (var_88 = 0) Then
  loc_136A682:   Set var_A4 = Me.DGHelp
  loc_136A690:   Set var_AC = Me.FGPoint
  loc_136A69B:   Set var_9C = var_AC
  loc_136A6CB:   Proc_6_79_11AD564(var_A4, Me.txt, 0, global_80, Shift)
  loc_136A6E8:   var_B0 = Me.RecordCount
  loc_136A738:   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_136A746:     Set var_90 = Me.FGPoint
  loc_136A75E:     Proc_6_138_106E830(Me.DGHelp, global_80, KeyCode, var_90, 0)
  loc_136A76C:   End If
  loc_136A76F: Else
  loc_136A775:   If (var_88 = 2) Then
  loc_136A79A:     Set var_8C = Me.txt
  loc_136A7A0:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 1)
  loc_136A7A8:     var_9C = var_90.Left
  loc_136A7BA:     Set var_9C = Me.txt
  loc_136A7C0:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B4)
  loc_136A7C8:     0 = var_A4.Top
  loc_136A7DA:     Set var_A8 = Me.txt
  loc_136A7E0:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_136A7FA:     Set var_BC = Me.txt
  loc_136A800:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_136A850:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.txt, KeyCode, Shift, arg_14)
  loc_136A880:     Set var_8C = Me.txt
  loc_136A886:     Call 0.Method_Txt_KeyDown0 (2, var_90, var_E0, CInt(var_B0))
  loc_136A88E:     CInt((var_B4 + var_AC.Height)) = var_90.Text
  loc_136A896:     var_E4 = var_E0
  loc_136A8C1:     If (var_E4 = CStr(global_56(0))) Then
  loc_136A8D0:       Set var_8C = Me.txt
  loc_136A8D6:       Call 0.Method_Txt_KeyDown0 (3, var_90, vbNullString)
  loc_136A8DE:       var_90.Text = CInt(var_C0.Width)
  loc_136A8F6:       Set var_8C = Me.txt
  loc_136A8FC:       Call 0.Method_Txt_KeyDown0 (4, var_90, vbNullString)
  loc_136A904:       var_90.Text = 780
  loc_136A91C:       Set var_8C = Me.txt
  loc_136A922:       Call 0.Method_Txt_KeyDown0 (3, var_90)
  loc_136A92A:       var_90.Tag = vbNullString
  loc_136A942:       Set var_8C = Me.txt
  loc_136A948:       Call 0.Method_Txt_KeyDown0 (4, var_90)
  loc_136A950:       var_90.Tag = vbNullString
  loc_136A961:       Call Proc_93_36_1195AC8(5)
  loc_136A969:     Else
  loc_136A98A:       If (var_E4 = CStr(global_56(1))) Then
  loc_136A999:         Set var_8C = Me.txt
  loc_136A99F:         Call 0.Method_Txt_KeyDown0 (5, var_90)
  loc_136A9A7:         var_90.Text = vbNullString
  loc_136A9BF:         Set var_8C = Me.txt
  loc_136A9C5:         Call 0.Method_Txt_KeyDown0 (4, var_90)
  loc_136A9CD:         var_90.Text = vbNullString
  loc_136A9E5:         Set var_8C = Me.txt
  loc_136A9EB:         Call 0.Method_Txt_KeyDown0 (5, var_90)
  loc_136A9F3:         var_90.Tag = vbNullString
  loc_136AA0B:         Set var_8C = Me.txt
  loc_136AA11:         Call 0.Method_Txt_KeyDown0 (4, var_90)
  loc_136AA19:         var_90.Tag = vbNullString
  loc_136AA2A:         Call Proc_93_36_1195AC8(3)
  loc_136AA32:       Else
  loc_136AA53:         If (var_E4 = CStr(global_56(2))) Then
  loc_136AA62:           Set var_8C = Me.txt
  loc_136AA68:           Call 0.Method_Txt_KeyDown0 (3, var_90)
  loc_136AA70:           var_90.Text = vbNullString
  loc_136AA88:           Set var_8C = Me.txt
  loc_136AA8E:           Call 0.Method_Txt_KeyDown0 (5, var_90)
  loc_136AA96:           var_90.Text = vbNullString
  loc_136AAAE:           Set var_8C = Me.txt
  loc_136AAB4:           Call 0.Method_Txt_KeyDown0 (3, var_90)
  loc_136AABC:           var_90.Tag = vbNullString
  loc_136AAD4:           Set var_8C = Me.txt
  loc_136AADA:           Call 0.Method_Txt_KeyDown0 (5, var_90)
  loc_136AAE2:           var_90.Tag = vbNullString
  loc_136AAF3:           Call Proc_93_36_1195AC8(4)
  loc_136AAF8:         End If
  loc_136AAF8:       End If
  loc_136AAF8:     End If
  loc_136AAFB:   Else
  loc_136AB01:     If (var_88 = 3) Then
  loc_136AB1B:       If (Me.RecordCount > 0) Then
  loc_136AB3B:         Set var_A4 = Me.FGPoint
  loc_136AB46:         Set var_9C = Nothing
  loc_136AB74:         Proc_6_69_134A630(Me.DGRoom, Me.txt, KeyCode, global_72, Shift, 0)
  loc_136AB8A:       End If
  loc_136ABE3:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_136AC09:         Proc_6_138_106E830(Me.DGRoom, global_72, KeyCode, Me.FGPoint, 1)
  loc_136AC17:       End If
  loc_136AC1A:     Else
  loc_136AC20:       If (var_88 = 5) Then
  loc_136AC3A:         If (Me.RecordCount > 0) Then
  loc_136AC5A:           Set var_A4 = Me.FGPoint
  loc_136AC65:           Set var_9C = Nothing
  loc_136AC93:           Proc_6_69_134A630(Me.DGDept, Me.txt, KeyCode, global_76, Shift, 0, 1)
  loc_136ACA9:         End If
  loc_136AD02:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_136AD09:           Set var_9C = Me.DGDept
  loc_136AD28:           Proc_6_138_106E830(var_9C, global_76, KeyCode, Me.FGPoint, var_9C, var_A4)
  loc_136AD36:         End If
  loc_136AD36:       End If
  loc_136AD36:     End If
  loc_136AD36:   End If
  loc_136AD36: End If
  loc_136AD50: Set var_90 = Me.DGDept
  loc_136AD67: Set var_9C = Me.DGRoom
  loc_136AD6D: var_134 = var_9C.Visible
  loc_136AD81: Set var_A4 = Me.FrmList
  loc_136ADA7: If ((((CBool(Me.DGHelp.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (CBool(var_134) = 0)) And (var_A4.Visible = 0)) Then
  loc_136ADC6:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = 6)) Then
  loc_136ADD2:     If (var_144 = True) Then
  loc_136ADE2:       Set var_8C = Me.txt
  loc_136ADE8:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString, 0)
  loc_136ADF0:       var_90.Text = var_9C
  loc_136ADFC:       Exit Sub
  loc_136ADFD:     End If
  loc_136AE34:     If (MsgBox("Save Record ?", 4, "Save Data", var_134, var_174) = 6) Then
  loc_136AE37:       Call TopCtrl1_UnknownEvent_16()
  loc_136AE3C:     End If
  loc_136AE3C:     Exit Sub
  loc_136AE3D:   End If
  loc_136AE52:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_136AE5B:     Proc_6_75_E5335C(Shift, arg_14, var_A4)
  loc_136AE60:   End If
  loc_136AE85:   If CBool((CLng(Shift) = &H26) And (CVar(KeyCode) <> var_184)) Then
  loc_136AE8E:     Proc_6_76_E533C8(Shift, arg_14)
  loc_136AE93:   End If
  loc_136AE93: End If
  loc_136AE93: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FC6088
  'Data Table: 472628
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FC5ED7: var_86 = KeyAscii
  loc_FC5EE0: If (var_86 = 3) Then
  loc_FC5EFF:   If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_FC5F11:     var_A0 = "Code"
  loc_FC5F2C:     Proc_6_89_1470B00(Me.txt, KeyAscii, global_72, arg_10)
  loc_FC5F5E:     Proc_6_138_106E830(Me.DGRoom, global_72, KeyAscii, Me.FGPoint)
  loc_FC5F6C:   End If
  loc_FC5F6F: Else
  loc_FC5F75:   If (var_86 = 5) Then
  loc_FC5F94:     If (CBool(Me.DGDept.Visible) = &HFF) Then
  loc_FC5FA6:       var_A0 = "Name"
  loc_FC5FC1:       Proc_6_89_1470B00(Me.txt, KeyAscii, global_76, arg_10, var_A0)
  loc_FC5FDB:       Set var_A8 = Me.FGPoint
  loc_FC5FF3:       Proc_6_138_106E830(Me.DGDept, global_76, KeyAscii, var_A8)
  loc_FC6001:     End If
  loc_FC6004:   Else
  loc_FC600A:     If (var_86 = 1) Then
  loc_FC6017:       Set var_8C = Me.txt
  loc_FC601D:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_FC6038:       Proc_6_42_129B55C(var_A8, arg_10, 5, 0)
  loc_FC6047:     Else
  loc_FC604D:       If (var_86 = 6) Then
  loc_FC605A:         Set var_8C = Me.txt
  loc_FC6060:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_FC607B:         Proc_6_42_129B55C(var_A8, arg_10, 4)
  loc_FC6087:       End If
  loc_FC6087:     End If
  loc_FC6087:   End If
  loc_FC6087: End If
  loc_FC6087: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '11978F4
  'Data Table: 472628
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A8 As TextBox
  Dim var_A4 As String
  loc_11974EF: var_86 = KeyCode
  loc_11974F8: If (var_86 = 0) Then
  loc_1197517:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_1197524:     var_A4 = "Description"
  loc_1197541:     Proc_6_80_FF1F20(Me.txt, 0, global_80)
  loc_1197573:     Proc_6_138_106E830(Me.DGHelp, global_80, KeyCode, Me.FGPoint)
  loc_1197581:   End If
  loc_1197584: Else
  loc_119758A:   If (var_86 = 2) Then
  loc_11975A8:     If (Me.FrmList.Visible = &HFF) Then
  loc_11975C8:       Set var_A8 = Me.txt
  loc_11975D7:       Proc_6_64_F299E8(Me.ListView, var_A8, KeyCode, Shift)
  loc_11975E7:     End If
  loc_11975F3:     Set var_8C = Me.txt
  loc_11975F9:     Call 0.Method_Txt_KeyUp0 (2, var_A8, var_A4, global_52)
  loc_1197601:     Shift = var_A8.Text
  loc_1197609:     var_B4 = var_A4
  loc_1197629:     var_A4 = CStr(global_56(0))
  loc_1197634:     If (var_B4 = var_A4) Then
  loc_1197643:       Set var_8C = Me.txt
  loc_1197649:       Call 0.Method_Txt_KeyUp0 (3, var_A8, vbNullString)
  loc_1197651:       var_A8.Text = var_A4
  loc_1197669:       Set var_8C = Me.txt
  loc_119766F:       Call 0.Method_Txt_KeyUp0 (4, var_A8)
  loc_1197677:       var_A8.Text = vbNullString
  loc_119768F:       Set var_8C = Me.txt
  loc_1197695:       Call 0.Method_Txt_KeyUp0 (3, var_A8)
  loc_119769D:       var_A8.Tag = vbNullString
  loc_11976B5:       Set var_8C = Me.txt
  loc_11976BB:       Call 0.Method_Txt_KeyUp0 (4, var_A8)
  loc_11976C3:       var_A8.Tag = vbNullString
  loc_11976D4:       Call Proc_93_36_1195AC8(5)
  loc_11976DC:     Else
  loc_11976FD:       If (var_B4 = CStr(global_56(1))) Then
  loc_119770C:         Set var_8C = Me.txt
  loc_1197712:         Call 0.Method_Txt_KeyUp0 (5, var_A8)
  loc_119771A:         var_A8.Text = vbNullString
  loc_1197732:         Set var_8C = Me.txt
  loc_1197738:         Call 0.Method_Txt_KeyUp0 (4, var_A8)
  loc_1197740:         var_A8.Text = vbNullString
  loc_1197758:         Set var_8C = Me.txt
  loc_119775E:         Call 0.Method_Txt_KeyUp0 (5, var_A8)
  loc_1197766:         var_A8.Tag = vbNullString
  loc_119777E:         Set var_8C = Me.txt
  loc_1197784:         Call 0.Method_Txt_KeyUp0 (4, var_A8)
  loc_119778C:         var_A8.Tag = vbNullString
  loc_119779D:         Call Proc_93_36_1195AC8(3)
  loc_11977A5:       Else
  loc_11977C6:         If (var_B4 = CStr(global_56(2))) Then
  loc_11977D5:           Set var_8C = Me.txt
  loc_11977DB:           Call 0.Method_Txt_KeyUp0 (3, var_A8)
  loc_11977E3:           var_A8.Text = vbNullString
  loc_11977FB:           Set var_8C = Me.txt
  loc_1197801:           Call 0.Method_Txt_KeyUp0 (5, var_A8)
  loc_1197809:           var_A8.Text = vbNullString
  loc_1197821:           Set var_8C = Me.txt
  loc_1197827:           Call 0.Method_Txt_KeyUp0 (3, var_A8)
  loc_119782F:           var_A8.Tag = vbNullString
  loc_1197847:           Set var_8C = Me.txt
  loc_119784D:           Call 0.Method_Txt_KeyUp0 (5, var_A8)
  loc_1197855:           var_A8.Tag = vbNullString
  loc_1197866:           Call Proc_93_36_1195AC8(4)
  loc_119786B:         End If
  loc_119786B:       End If
  loc_119786B:     End If
  loc_119786E:   Else
  loc_1197874:     If (var_86 = 3) Then
  loc_1197888:       var_A4 = "Code"
  loc_11978AC:       Proc_6_68_12A2818(Me.DGRoom, Me.txt, KeyCode, global_72)
  loc_11978E2:       Proc_6_138_106E830(Me.DGHelp, global_72, KeyCode, Me.FGPoint)
  loc_11978F0:     End If
  loc_11978F0:   End If
  loc_11978F0: End If
  loc_11978F0: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46F3C
  'Data Table: 472628
  loc_E46F1A: Set var_88 = Me.txt
  loc_E46F20: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46F2E: Proc_6_73_E23294(var_8C)
  loc_E46F3A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E259F8
  'Data Table: 472628
  Dim arg_10 As Integer
  loc_E259DC: If (Cancel = 0) Then
  loc_E259E2:   Call Proc_93_33_107E520(var_88)
  loc_E259ED:   If (var_88 = &HFF) Then
  loc_E259F2:     arg_10 = &HFF
  loc_E259F5:     Exit Sub
  loc_E259F6:   End If
  loc_E259F6: End If
  loc_E259F6: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 '1182170
  'Data Table: 472628
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_C4 As TextBox
  Dim var_A4 As String
  loc_1181DD2: If (Me.ListView.ListItems.Count > 0) Then
  loc_1181E0B:   If (Me.ListView.ListItems.Count > 0) Then
  loc_1181E12:     Set var_A8 = Me.ListView
  loc_1181E5C:     Set var_C0 = Me.txt
  loc_1181E62:     Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_1181E6A:     var_C4.Text = Me.ListView.SelectedItem.Text
  loc_1181E8A:   End If
  loc_1181E96:   Me.FrmList.Visible = False
  loc_1181EB0:   var_A4 = CStr(Me.ListView.Tag)
  loc_1181EC6:   Set var_9C = Me.txt
  loc_1181ECC:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(var_A4)), var_A8)
  loc_1181ED4:   var_A8.SetFocus
  loc_1181EE8: End If
  loc_1181EF4: Set var_88 = Me.txt
  loc_1181EFA: Call 0.Method_ListView_UnknownEvent_130 (2, var_9C, var_A4)
  loc_1181F02: var_CC = var_9C.Text
  loc_1181F0A: var_D0 = var_A4
  loc_1181F35: If (var_D0 = CStr(global_56(0))) Then
  loc_1181F44:   Set var_88 = Me.txt
  loc_1181F4A:   Call 0.Method_ListView_UnknownEvent_130 (3, var_9C)
  loc_1181F52:   var_9C.Text = vbNullString
  loc_1181F6A:   Set var_88 = Me.txt
  loc_1181F70:   Call 0.Method_ListView_UnknownEvent_130 (4, var_9C)
  loc_1181F78:   var_9C.Text = vbNullString
  loc_1181F90:   Set var_88 = Me.txt
  loc_1181F96:   Call 0.Method_ListView_UnknownEvent_130 (3, var_9C)
  loc_1181F9E:   var_9C.Tag = vbNullString
  loc_1181FB6:   Set var_88 = Me.txt
  loc_1181FBC:   Call 0.Method_ListView_UnknownEvent_130 (4, var_9C)
  loc_1181FC4:   var_9C.Tag = vbNullString
  loc_1181FD5:   Call Proc_93_36_1195AC8(5)
  loc_1181FDD: Else
  loc_1181FFE:   If (var_D0 = CStr(global_56(1))) Then
  loc_118200D:     Set var_88 = Me.txt
  loc_1182013:     Call 0.Method_ListView_UnknownEvent_130 (5, var_9C)
  loc_118201B:     var_9C.Text = vbNullString
  loc_1182033:     Set var_88 = Me.txt
  loc_1182039:     Call 0.Method_ListView_UnknownEvent_130 (4, var_9C)
  loc_1182041:     var_9C.Text = vbNullString
  loc_1182059:     Set var_88 = Me.txt
  loc_118205F:     Call 0.Method_ListView_UnknownEvent_130 (5, var_9C)
  loc_1182067:     var_9C.Tag = vbNullString
  loc_118207F:     Set var_88 = Me.txt
  loc_1182085:     Call 0.Method_ListView_UnknownEvent_130 (4, var_9C)
  loc_118208D:     var_9C.Tag = vbNullString
  loc_118209E:     Call Proc_93_36_1195AC8(3)
  loc_11820A6:   Else
  loc_11820C7:     If (var_D0 = CStr(global_56(2))) Then
  loc_11820D6:       Set var_88 = Me.txt
  loc_11820DC:       Call 0.Method_ListView_UnknownEvent_130 (3, var_9C)
  loc_11820E4:       var_9C.Text = vbNullString
  loc_11820FC:       Set var_88 = Me.txt
  loc_1182102:       Call 0.Method_ListView_UnknownEvent_130 (5, var_9C)
  loc_118210A:       var_9C.Text = vbNullString
  loc_1182122:       Set var_88 = Me.txt
  loc_1182128:       Call 0.Method_ListView_UnknownEvent_130 (3, var_9C)
  loc_1182130:       var_9C.Tag = vbNullString
  loc_1182148:       Set var_88 = Me.txt
  loc_118214E:       Call 0.Method_ListView_UnknownEvent_130 (5, var_9C)
  loc_1182156:       var_9C.Tag = vbNullString
  loc_1182167:       Call Proc_93_36_1195AC8(4)
  loc_118216C:     End If
  loc_118216C:   End If
  loc_118216C: End If
  loc_118216C: Exit Sub
End Sub

Private Sub Form_Load() '1040CFC
  'Data Table: 472628
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_47263A As Connection15
  Dim var_B8 As Variant
  loc_1040AAC: On Error Goto loc_1040CAB
  loc_1040ABF: Set var_8C = Me
  loc_1040AC5: Proc_6_23_DFC5B8(var_8C, 0)
  loc_1040ACD: Call Proc_93_34_ECE650(0)
  loc_1040AF6: unk_47263A.Execute "SELECT Code,Description FROM TelExt WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Description", var_B8, -1
  loc_1040B25: CVarUnk
  loc_1040B2A: VerifyVarObj
  loc_1040B36: LateIdStAd
  loc_1040B5F: var_98 = "SELECT Code,Code FROM RoomMast WHERE Type='RO' and  (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY RoomMast.Code"
  loc_1040B68: unk_47263A.Execute var_98, var_B8, -1
  loc_1040B97: CVarUnk
  loc_1040B9C: VerifyVarObj
  loc_1040BA8: LateIdStAd
  loc_1040BDA: unk_47263A.Execute "SELECT code,Name FROM Depart WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B8, -1
  loc_1040C09: CVarUnk
  loc_1040C0E: VerifyVarObj
  loc_1040C14: Set var_8C = Me.DGDept
  loc_1040C1A: LateIdStAd
  loc_1040C3C: var_94 = "SELECT T.*,R.Code as RName,D.Name as DName FROM (TelExt as T LEFT JOIN RoomMast as R ON T.RoomNo=R.Code) LEFT JOIN Depart as D ON T.DepCode=D.Code WHERE (T.LOGSITE_CODE='" & MemVar_1F95078
  loc_1040C4C: unk_47263A.Execute var_94 & "' or T.LOGSITE_CODE='HO') ORDER BY T.Description", var_B8, -1
  loc_1040C72: Call Proc_93_35_F1B20C(var_8C, var_8C, Me.DGRoom, var_8C, var_8C)
  loc_1040C8C: var_94 = "INI"
  loc_1040C9A: Call Proc_93_38_E78CFC(Proc_5_1_100EC1C(var_94, Me, Me, Me.DGHelp), Me, Me)
  loc_1040CA5: Call Proc_93_37_1179014(Me)
  loc_1040CAA: Exit Sub
  loc_1040CAB: ' Referenced from: 1040AAC
  loc_1040CB3: Set var_8C = Err()
  loc_1040CB9: Call 0.Method_arg_2C (var_94)
  loc_1040CD7: MsgBox(CVar(var_94), &H40, 0, var_EC, var_10C)
  loc_1040CEF: Set var_8C = Err()
  loc_1040CF5: VCallFPR8
  loc_1040CFB: Exit Sub
End Sub

Private Sub Form_Resize() 'DFD660
  'Data Table: 472628
  Dim MeFF As Double
  loc_DFD65C: Exit Sub
  loc_DFD65D: MeFF = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E52138
  'Data Table: 472628
  loc_E5210B: Set global_84 = Nothing
  loc_E5211D: Set global_72 = Nothing
  loc_E5212F: Set global_76 = Nothing
  loc_E52136: Exit Sub
End Sub

Private Sub Form_Activate() 'DFD9A0
  'Data Table: 472628
  loc_DFD99C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28AF8
  'Data Table: 472628
  loc_E28AD0: On Error Goto loc_E28AEF
  loc_E28AE7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E28AEF: ' Referenced from: E28AD0
  loc_E28AEF: Proc_6_60_E63754(Shift)
  loc_E28AF4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E8CBD8
  'Data Table: 472628
  Dim var_94 As TextBox
  loc_E8CB68: On Error Goto loc_E8CBD1
  loc_E8CB8E: Call Proc_93_38_E78CFC(Proc_5_1_100EC1C("ADD", Me))
  loc_E8CBA5: Proc_6_21_E5FB3C(Me)
  loc_E8CBB6: Set var_8C = Me.txt
  loc_E8CBBC: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_94)
  loc_E8CBC4: var_94.SetFocus
  loc_E8CBD0: Exit Sub
  loc_E8CBD1: ' Referenced from: E8CB68
  loc_E8CBD1: Proc_6_60_E63754(global_84)
  loc_E8CBD6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'ECB500
  'Data Table: 472628
  loc_ECB460: On Error Goto loc_ECB4FA
  loc_ECB49A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_ECB4A9:   Set var_110 = Me
  loc_ECB4C0:   Call Proc_93_38_E78CFC(Proc_5_1_100EC1C("INI", var_110))
  loc_ECB4CB:   Call Proc_93_39_EF68A8(global_84)
  loc_ECB4D0:   Call Proc_93_37_1179014()
  loc_ECB4D8: Else
  loc_ECB4DE:   Call 0.Method_arg_1E8 (var_110)
  loc_ECB4E6:   Call var_110.SetFocus
  loc_ECB4EF: End If
  loc_ECB4EF: Call Proc_93_39_EF68A8()
  loc_ECB4F4: Call Proc_93_40_E84D68()
  loc_ECB4F9: Exit Sub
  loc_ECB4FA: ' Referenced from: ECB460
  loc_ECB4FA: Proc_6_60_E63754()
  loc_ECB4FF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10EE660
  'Data Table: 472628
  Dim var_96 As Integer
  Dim unk_47263A As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10EE370: On Error Goto loc_10EE607
  loc_10EE3AA: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10EE3AF:   var_96 = 0
  loc_10EE3BB:   unk_47263A.BeginTrans var_11C
  loc_10EE3C2:   var_96 = &HFF
  loc_10EE3D6:   var_94 = Me.Bookmark 'Variant
  loc_10EE422:   var_F8 = "Delete From TelExt Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10EE430:   unk_47263A.Execute CStr(var_F8), var_118, -1
  loc_10EE47B:   var_164 = 0
  loc_10EE48E:   var_15C = 0
  loc_10EE499:   var_158 = 0
  loc_10EE4AC:   var_150 = 0
  loc_10EE4B7:   var_14C = 0
  loc_10EE4CA:   var_144 = 0
  loc_10EE50A:   var_128 = "TelExt"
  loc_10EE513:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10EE541:   unk_47263A.CommitTrans
  loc_10EE548:   var_96 = 0
  loc_10EE556:   Me.Requery -1
  loc_10EE566:   Me.Requery -1
  loc_10EE576:   Me.Requery -1
  loc_10EE586:   Me.Requery -1
  loc_10EE5A6:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10EE5B3:     Me.Bookmark = var_94
  loc_10EE5BB:   Else
  loc_10EE5CF:     If (Me.EOF = 0) Then
  loc_10EE5D8:       Me.MoveLast
  loc_10EE5DD:     End If
  loc_10EE5DD:   End If
  loc_10EE5DD:   Call Proc_93_37_1179014(var_96, var_144, 0, var_14C, var_150)
  loc_10EE5FE:   Proc_5_0_1107AD0(&HFF, Me, global_84, 0)
  loc_10EE606: End If
  loc_10EE606: Exit Sub
  loc_10EE607: ' Referenced from: 10EE370
  loc_10EE60D: If (var_96 = &HFF) Then
  loc_10EE616:   unk_47263A.RollbackTrans
  loc_10EE61B: End If
  loc_10EE623: Set var_120 = Err()
  loc_10EE629: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10EE64A: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10EE65D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA6970
  'Data Table: 472628
  Dim var_94 As TextBox
  loc_FA67E0: On Error Goto loc_FA6967
  loc_FA6806: Call Proc_93_38_E78CFC(Proc_5_1_100EC1C("EDIT", Me))
  loc_FA681D: Set var_8C = Me.txt
  loc_FA6823: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_94)
  loc_FA6836: global_88 = var_94.Text
  loc_FA6850: Set var_8C = Me.txt
  loc_FA6856: Call 0.Method_TopCtrl1_UnknownEvent_D0 (2, var_94)
  loc_FA6869: global_96 = var_94.Text
  loc_FA6883: Set var_8C = Me.txt
  loc_FA6889: Call 0.Method_TopCtrl1_UnknownEvent_D0 (3, var_94)
  loc_FA689C: global_100 = var_94.Text
  loc_FA68B6: Set var_8C = Me.txt
  loc_FA68BC: Call 0.Method_TopCtrl1_UnknownEvent_D0 (5, var_94)
  loc_FA68CF: global_104 = var_94.Text
  loc_FA68E9: Set var_8C = Me.txt
  loc_FA68EF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (4, var_94)
  loc_FA6902: global_108 = var_94.Text
  loc_FA691C: Set var_8C = Me.txt
  loc_FA6922: Call 0.Method_TopCtrl1_UnknownEvent_D0 (6, var_94)
  loc_FA6935: global_112 = var_94.Text
  loc_FA694C: Set var_8C = Me.txt
  loc_FA6952: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_94)
  loc_FA695A: var_94.SetFocus
  loc_FA6966: Exit Sub
  loc_FA6967: ' Referenced from: FA67E0
  loc_FA6967: Proc_6_60_E63754(global_84)
  loc_FA696C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19AC4
  'Data Table: 472628
  loc_E19AB9: Me.Global.Unload Me
  loc_E19AC1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F24918
  'Data Table: 472628
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F24818: On Error Goto loc_F248B0
  loc_F24824: var_88 = Me.RecordCount
  loc_F24832: If (var_88 <= 0) Then
  loc_F2483B:   var_B8 = "Information"
  loc_F24856:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F24866:   Exit Sub
  loc_F24867: End If
  loc_F2486E: var_10C = "Select TelExt.Code As SearchCode,TelExt.Description , TelExt.Extension , TelExt.Type, cast(PulseRate as VArchar(5)) as PulseRate FROM (TelExt Left JOIN RoomMast ON (TelExt.RoomNo=RoomMast.Code and TelExt.LogSite_Code=RoomMast.LogSite_Code)) Left JOIN Depart ON (TelExt.DepCode=Depart.Code and TelExt.LogSite_Code=Depart.LogSite_Code) where TelExt.LogSite_Code='" & MemVar_1F95078
  loc_F24875: MemVar_1F950E4 = var_10C & "' ORDER BY TelExt.Description"
  loc_F24882: MemVar_1F95120 = Me
  loc_F24889: var_10C = "2000,800,1000,2000,900"
  loc_F2488F: Proc_6_126_F1C850(var_10C)
  loc_F248AA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F248AF: Exit Sub
  loc_F248B0: ' Referenced from: F24818
  loc_F248B8: Set var_110 = Err()
  loc_F248BE: Call 0.Method_arg_1C (var_88)
  loc_F248CF: If (var_88 <> 0) Then
  loc_F248DA:   Set var_110 = Err()
  loc_F248E0:   Call 0.Method_arg_2C (var_10C)
  loc_F24901:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F24914: End If
  loc_F24914: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2CD68
  'Data Table: 472628
  loc_E2CD58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2CD60: Call Proc_93_37_1179014(global_84)
  loc_E2CD65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2CDC8
  'Data Table: 472628
  loc_E2CDB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2CDC0: Call Proc_93_37_1179014(global_84)
  loc_E2CDC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2FBE8
  'Data Table: 472628
  loc_E2FBD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2FBE0: Call Proc_93_37_1179014(global_84)
  loc_E2FBE5: Exit Sub
  loc_E2FBE6: Set var_5000 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2CD08
  'Data Table: 472628
  loc_E2CCF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2CD00: Call Proc_93_37_1179014(global_84)
  loc_E2CD05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1073804
  'Data Table: 472628
  Dim unk_47263A As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_1073584: On Error Goto loc_10737BB
  loc_107359D: unk_47263A.Execute "Select TelExt.Code As SearchCode,TelExt.Description , TelExt.Extension , TelExt.Type , TelExt.ShopNo & RoomMast.Code & Depart.Name as Nos,TelExt.PulseRate FROM (TelExt LEFT JOIN RoomMast ON TelExt.RoomNo=RoomMast.Code) LEFT JOIN Depart ON TelExt.DepCode=Depart.Code ORDER BY TelExt.Description", var_BC, -1
  loc_10735A8: Set var_88 = var_C0
  loc_10735B7: var_C4 = var_88.RecordCount
  loc_10735C5: If (var_C4 = 0) Then
  loc_10735E1:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_10735F1:   Exit Sub
  loc_10735F2: End If
  loc_1073601: var_12C = MemVar_1F950B4 & "\TelExt.ttx"
  loc_1073608: Set var_C0 = var_88 
  loc_1073614: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_107361E: Set var_88 = var_C0
  loc_1073624: var_AC = CVar(var_12E) 'Integer
  loc_1073627: var_98 = var_AC 'Variant
  loc_1073643: var_128 = MemVar_1F950B4 & "\TelExt.RPT"
  loc_107364C: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_1073657: MemVar_1F951E8 = var_C0
  loc_1073672: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_107367A: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1073686: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_107369F:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10736A7:   Call 0.Method_arg_20 (var_138)
  loc_10736AF:   Call 0.Method_arg_30 (var_128)
  loc_10736F5:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_107370B:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1073713:     Call 0.Method_arg_20 (var_138)
  loc_107371B:     Call 0.Method_arg_38 ("'Extension Master'")
  loc_1073727:   End If
  loc_107372A: Next var_132 'Integer
  loc_1073748: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1073750: Call 0.Method_arg_2C (var_D4)
  loc_107375E: Call 0.Method_arg_150 (var_F4)
  loc_1073769: Call 0.Method_arg_50 (var_128)
  loc_1073773: Set var_138 = Nothing
  loc_107378D: Set var_C0 = MemVar_1F951E8 
  loc_1073799: Proc_6_99_1484404(var_C0, 0, var_128)
  loc_10737A4: MemVar_1F951E8 = var_C0
  loc_10737B7: Set var_88 = Nothing
  loc_10737BA: Exit Sub
  loc_10737BB: ' Referenced from: 1073584
  loc_10737C3: Set var_C0 = Err()
  loc_10737C9: Call 0.Method_arg_2C (var_128, &HFF)
  loc_10737D4: Call 0.Method_arg_50 (var_12C)
  loc_10737F0: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1073803: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'DFC3E4
  'Data Table: 472628
  loc_DFC3E0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '146214C
  'Data Table: 472628
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D0 As String
  Dim var_CC As TextBox
  Dim var_F0 As Variant
  Dim var_E0 As Variant
  Dim var_A4 As String
  Dim unk_47263A As Connection15
  Dim var_94 As Variant
  Dim var_C8 As Field20
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim Me As Recordset15
  Dim var_168 As TextBox
  Dim var_1A4 As TextBox
  Dim var_1E0 As TextBox
  Dim var_22C As TextBox
  Dim var_278 As TextBox
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_36C As Variant
  Dim var_38C As Variant
  loc_1461658: On Error Goto loc_14620F7
  loc_146165F: var_86 = CByte(0) 'Byte
  loc_1461671: Set var_94 = Me.txt
  loc_1461677: Call 0.Method_TopCtrl1_UnknownEvent_16C (var_96, var_88)
  loc_1461687: For var_9A =  To CByte((var_96 - 1)): CByte(0) = var_9A 'Byte
  loc_146169D:   Set var_94 = Me.txt
  loc_14616A3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_A0)
  loc_14616D2:   Set var_C8 = Me.txt
  loc_14616D8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_CC)
  loc_14616E0:   var_CC.Text = CStr(Trim(CVar(var_A0.Text)))
  loc_14616FD: Next var_9A 'Byte
  loc_146170C: Set var_94 = Me.txt
  loc_1461712: Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_146173B: If (Proc_183_19_E8E68C(var_A0, "Description") = 0) Then
  loc_1461743:   Call Txt_GotFocus(0)
  loc_1461748:   Exit Sub
  loc_1461749: End If
  loc_1461752: Set var_94 = Me.txt
  loc_1461758: Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_A0)
  loc_1461781: If (Proc_183_19_E8E68C(var_A0, "Type") = 0) Then
  loc_1461789:   Call Txt_GotFocus(2)
  loc_146178E:   Exit Sub
  loc_146178F: End If
  loc_1461798: Set var_94 = Me.txt
  loc_146179E: Call 0.Method_TopCtrl1_UnknownEvent_160 (6, var_A0)
  loc_14617C7: If (Proc_183_19_E8E68C(var_A0, "Rate For 1 Pulse") = 0) Then
  loc_14617CF:   Call Txt_GotFocus(6)
  loc_14617D4:   Exit Sub
  loc_14617D5: End If
  loc_14617DE: Set var_94 = Me.txt
  loc_14617E4: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_A0)
  loc_146180D: If (Proc_183_19_E8E68C(var_A0, "Extension") = 0) Then
  loc_1461815:   Call Txt_GotFocus(1)
  loc_146181A:   Exit Sub
  loc_146181B: End If
  loc_1461827: Set var_94 = Me.txt
  loc_146182D: Call 0.Method_TopCtrl1_UnknownEvent_160 (6, var_A0)
  loc_1461851: If (CDbl(Val(var_A0.Text)) <= CDbl(0)) Then
  loc_1461875:   MsgBox("Rate For 1 pulse must be Greater than zero", &H40, "Information", var_110, var_130)
  loc_146188A:   Call Txt_GotFocus(6)
  loc_146188F:   Exit Sub
  loc_1461890: End If
  loc_146189C: Set var_94 = Me.txt
  loc_14618A2: Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_A0)
  loc_14618B2: var_B4 = CVar(var_A0.Text) 'String
  loc_14618B8: var_C4 = Trim(var_B4)
  loc_14618C0: var_140 = var_C4 'Variant
  loc_14618D9: If (var_140 = "Department") Then
  loc_14618E5:   Set var_94 = Me.txt
  loc_14618EB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (5, var_A0)
  loc_1461914:   If (Proc_183_19_E8E68C(var_A0, "Department Number") = 0) Then
  loc_146191C:     Call Txt_GotFocus(5)
  loc_1461921:     Exit Sub
  loc_1461922:   End If
  loc_1461925: Else
  loc_1461930:   If (var_140 = "Shop") Then
  loc_146193C:     Set var_94 = Me.txt
  loc_1461942:     Call 0.Method_TopCtrl1_UnknownEvent_160 (4, var_A0)
  loc_146196B:     If (Proc_183_19_E8E68C(var_A0, "Shop Description") = 0) Then
  loc_1461973:       Call Txt_GotFocus(4)
  loc_1461978:       Exit Sub
  loc_1461979:     End If
  loc_146197C:   Else
  loc_1461987:     If (var_140 = "Room") Then
  loc_1461993:       Set var_94 = Me.txt
  loc_1461999:       Call 0.Method_TopCtrl1_UnknownEvent_160 (3, var_A0)
  loc_14619C2:       If (Proc_183_19_E8E68C(var_A0, "Room Number") = 0) Then
  loc_14619CA:         Call Txt_GotFocus(3)
  loc_14619CF:         Exit Sub
  loc_14619D0:       End If
  loc_14619D0:     End If
  loc_14619D0:   End If
  loc_14619D0: End If
  loc_14619D4: Set var_94 = Me.TopCtrl1
  loc_14619DA: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_A0)
  loc_14619F3: If (CStr() = "Add") Then
  loc_14619FC:   var_F0 = 0
  loc_1461A1B:   unk_47263A.Execute "Select IsNull(Max(Cast(SubString(Code,3,5) as Numeric)),0)+1 AS MyCode From TelExt", var_B4, -1
  loc_1461A23:   var_94 = var_94.Fields
  loc_1461A2B:   var_F0 = var_A0.Item(var_A0)
  loc_1461A33:   var_C8 = var_C8.Value
  loc_1461A5C:   var_110 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1461A7F:   var_C4 = Format(CStr(var_C4), "000")
  loc_1461A87:   var_130 = (1 + var_C4)
  loc_1461A8C:   var_90 = CStr(var_130)
  loc_1461A9D: Else
  loc_1461AA3:   var_E0 = "Code"
  loc_1461ABA:   var_A0 = Me.Fields.Item(var_E0)
  loc_1461ACB:   var_90 = CStr(var_A0.Value)
  loc_1461AD8: End If
  loc_1461AE1: unk_47263A.BeginTrans var_144
  loc_1461AEA: var_86 = CByte(1) 'Byte
  loc_1461AF2: Set var_94 = Me.TopCtrl1
  loc_1461AF8: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(1)
  loc_1461B11: If (CStr(var_110) = "Add") Then
  loc_1461B20:   Set var_94 = Me.txt
  loc_1461B26:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A0)
  loc_1461B2E:   var_D0 = var_A0.Text
  loc_1461B3F:   Set var_C8 = Me.txt
  loc_1461B45:   Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_CC)
  loc_1461B61:   Proc_6_39_E7D3A0(var_C4, CVar(Val(var_CC.Text)))
  loc_1461B72:   Set var_164 = Me.txt
  loc_1461B78:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_168)
  loc_1461B91:   Set var_1A0 = Me.txt
  loc_1461B97:   Call 0.Method_TopCtrl1_UnknownEvent_160 (3, var_1A4)
  loc_1461BB0:   Set var_1DC = Me.txt
  loc_1461BB6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (4, var_1E0)
  loc_1461BCF:   Set var_228 = Me.txt
  loc_1461BD5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (5, var_22C)
  loc_1461BEE:   Set var_274 = Me.txt
  loc_1461BF4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (6, var_278)
  loc_1461C10:   Proc_6_39_E7D3A0(var_2AC, CVar(Val(var_278.Text)))
  loc_1461C23:   Proc_6_7_F26918(var_33C, Date)
  loc_1461C3C:   var_A4 = "Insert Into TelExt(CODE ,DESCRIPTION,EXTENSION ,TYPE,RoomNo,ShopNo,DepCode,PulseRate,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) Values('" & var_90
  loc_1461C90:   var_204 = CVar(var_A4 & "','" & var_D0 & "',") & var_C4 & ",'" & CVar(var_168.Text) & "','" & CVar(var_1A4.Tag) & "','" & CVar(var_1E0.Text) 
  loc_1461CE9:   var_38C = var_204 & "','" & CVar(var_22C.Tag) & "'," & var_2AC & ",'" & CVar(MemVar_1F950C8) & "'," & var_33C & ",'A','" & CVar(MemVar_1F95070) 
  loc_1461D13:   unk_47263A.Execute CStr(var_38C & "','" & CVar(MemVar_1F95078) & "')"), var_410, -1
  loc_1461D90: Else
  loc_1461D9C:   Set var_94 = Me.txt
  loc_1461DA2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A0, var_D0)
  loc_1461DAA:   var_414 = var_A0.Text
  loc_1461DBB:   Set var_C8 = Me.txt
  loc_1461DC1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_CC)
  loc_1461DDD:   Proc_6_39_E7D3A0(var_C4, CVar(Val(var_CC.Text)))
  loc_1461DEE:   Set var_164 = Me.txt
  loc_1461DF4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_168)
  loc_1461E0D:   Set var_1A0 = Me.txt
  loc_1461E13:   Call 0.Method_TopCtrl1_UnknownEvent_160 (3, var_1A4)
  loc_1461E2C:   Set var_1DC = Me.txt
  loc_1461E32:   Call 0.Method_TopCtrl1_UnknownEvent_160 (4, var_1E0)
  loc_1461E4B:   Set var_228 = Me.txt
  loc_1461E51:   Call 0.Method_TopCtrl1_UnknownEvent_160 (5, var_22C)
  loc_1461E6A:   Set var_274 = Me.txt
  loc_1461E70:   Call 0.Method_TopCtrl1_UnknownEvent_160 (6, var_278)
  loc_1461E8C:   Proc_6_39_E7D3A0(var_2AC, CVar(Val(var_278.Text)))
  loc_1461E9F:   Proc_6_7_F26918(var_33C, Date)
  loc_1461ECD:   var_110 = CVar("UPDATE TelExt SET CODE='" & var_90 & "' ,DESCRIPTION='" & var_D0 & "',EXTENSION=") 'String
  loc_1461ED3:   var_130 = var_110 & var_C4 
  loc_1461F15:   var_224 = var_130 & " ,TYPE='" & CVar(var_168.Text) & "',RoomNo='" & CVar(var_1A4.Tag) & "',ShopNo='" & CVar(var_1E0.Text) & "',DepCode='" 
  loc_1461F5B:   var_36C = var_224 & CVar(var_22C.Tag) & "',PulseRate=" & var_2AC & ",U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_33C & ",U_AE='E',SITE_CODE='" 
  loc_1461F8F:   unk_47263A.Execute CStr(var_36C & CVar(MemVar_1F95070) & "' WHERE Code='" & CVar(var_90) & "'"), var_410, -1
  loc_1462009: End If
  loc_146200F: unk_47263A.CommitTrans
  loc_1462018: var_86 = CByte(0) 'Byte
  loc_1462027: Me.Requery -1
  loc_1462037: Me.Requery -1
  loc_1462047: Me.Requery -1
  loc_1462057: Me.Requery -1
  loc_1462081: Me.Find "Code='" & var_90 & "'", 0, 1
  loc_1462091: Set var_94 = Me.TopCtrl1
  loc_1462097: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_E0)
  loc_14620B0: If (CStr(var_414) = "Add") Then
  loc_14620B3:   Call TopCtrl1_UnknownEvent_A()
  loc_14620B8:   Exit Sub
  loc_14620B9: End If
  loc_14620CE: var_A4 = "INI"
  loc_14620DC: Call Proc_93_38_E78CFC(Proc_5_1_100EC1C(var_A4, Me), global_84)
  loc_14620E7: Call Proc_93_39_EF68A8(var_C4)
  loc_14620EC: Call Proc_93_37_1179014()
  loc_14620F1: Call Proc_93_40_E84D68()
  loc_14620F6: Exit Sub
  loc_14620F7: ' Referenced from: 1461658
  loc_1462100: If (CInt(var_86) = 1) Then
  loc_1462109:   unk_47263A.RollbackTrans
  loc_146210E: End If
  loc_1462116: Set var_94 = Err()
  loc_146211C: Call 0.Method_arg_2C (var_A4)
  loc_1462135: MsgBox(CVar(var_A4), &H10, var_C4, var_110, var_130)
  loc_1462148: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E865B0
  'Data Table: 472628
  Dim arg_AFF As Double
  loc_E8655C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E8655F:   Call DGHelp_UnknownEvent_9()
  loc_E86564: End If
  loc_E86580: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_E86583:   Call DGRoom_UnknownEvent_9()
  loc_E86588: End If
  loc_E865A4: If (CBool(Me.DGDept.Visible) = &HFF) Then
  loc_E865A7:   Call DGDept_UnknownEvent_9()
  loc_E865AC: End If
  loc_E865AC: Exit Sub
  loc_E865AD: arg_AFF = 
End Sub

Public Sub SEARCHBACK(MyValue) 'EC02B4
  'Data Table: 472628
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC022A: On Error Goto loc_EC026F
  loc_EC0233: Me.MoveFirst
  loc_EC024D: var_8C = "Code='" & MyValue
  loc_EC025D: Me.Find var_8C & "'", 0, 1
  loc_EC0269: Call Proc_93_37_1179014(var_A0)
  loc_EC026E: Exit Sub
  loc_EC026F: ' Referenced from: EC022A
  loc_EC0277: Set var_A4 = Err()
  loc_EC027D: Call 0.Method_arg_2C (var_8C)
  loc_EC029E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC02B1: Exit Sub
  loc_EC02B2: Exit Sub
End Sub

Public Sub Proc_93_33_107E520
  'Data Table: 472628
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_47263A As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_107E2BB: If (Me.RecordCount = 0) Then
  loc_107E2BE:   Proc_93_33_107E520 = 
  loc_107E2C4: End If
  loc_107E2C8: Set var_90 = Me.TopCtrl1
  loc_107E2CE: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_107E2E7: If (CStr() = "Add") Then
  loc_107E323:   Set var_90 = Me.txt
  loc_107E329:   Call 0.Method_Proc_93_33_107E5200 (0, var_A8, var_AC, "Select Count(*) From TelExt Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Description='", var_A0, -1)
  loc_107E34A:   unk_47263A.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_107E35A:    = var_D0.Item()
  loc_107E362:    = var_E4.Value
  loc_107E393:   If (var_A8.Text.Fields > 0) Then
  loc_107E3B1:     var_A0 = "Duplicate Name"
  loc_107E3B7:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_107E3D0:     Set var_90 = Me.txt
  loc_107E3D6:     Call 0.Method_Proc_93_33_107E5200 (0)
  loc_107E3DE:     var_A8.SetFocus
  loc_107E3EF:     Proc_93_33_107E520 = &HFF
  loc_107E3F5:   End If
  loc_107E3F8: Else
  loc_107E431:   Set var_90 = Me.txt
  loc_107E437:   Call 0.Method_Proc_93_33_107E5200 (0, var_A8, var_AC, "Select Count(*) From TelExt Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Description='", var_A0, -1)
  loc_107E469:   unk_47263A.Execute var_D0 & var_AC & "' And Description<>'" & global_88 & "'", 0, var_E4
  loc_107E479:    = var_D0.Item(var_A8)
  loc_107E481:    = var_E4.Value
  loc_107E4B6:   If (var_A8.Text.Fields > 0) Then
  loc_107E4DA:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_107E4F3:     Set var_90 = Me.txt
  loc_107E4F9:     Call 0.Method_Proc_93_33_107E5200 (0)
  loc_107E501:     var_A8.SetFocus
  loc_107E512:     Proc_93_33_107E520 = &HFF
  loc_107E518:   End If
  loc_107E518: End If
  loc_107E518: Proc_93_33_107E520 = var_A8
End Sub

Public Sub Proc_93_34_ECE650
  'Data Table: 472628
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_88 As TextBox
  Dim var_BC As TextBox
  loc_ECE5AC: Set var_88 = Me.DGHelp
  loc_ECE5BB: Set var_8C = Me.txt
  loc_ECE5C1: Call 0.Method_Proc_93_34_ECE6500 (0, var_90)
  loc_ECE5D9: var_88.Left = CVar(var_90.Left)
  loc_ECE5F1: Set var_B8 = Me.txt
  loc_ECE5F7: Call 0.Method_Proc_93_34_ECE6500 (0, var_BC)
  loc_ECE610: Set var_8C = Me.txt
  loc_ECE616: Call 0.Method_Proc_93_34_ECE6500 (0, var_90)
  loc_ECE62E: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_ECE636: var_88.Top = CVar(var_90.Left)
  loc_ECE648: Set var_88 = Nothing 
  loc_ECE64C: Exit Sub
End Sub

Public Sub Proc_93_35_F1B20C
  'Data Table: 472628
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_F1B12D: var_9C = Me.Fields.Item("Description")
  loc_F1B146: Set var_A4 = Me.txt
  loc_F1B14C: Call 0.Method_Proc_93_35_F1B20C0 (0, var_A8)
  loc_F1B154: var_A8.MaxLength = var_9C.DefinedSize
  loc_F1B172: Set var_88 = Me.txt
  loc_F1B178: Call 0.Method_Proc_93_35_F1B20C0 (1, var_9C)
  loc_F1B180: var_9C.MaxLength = 5
  loc_F1B1A9: var_9C = Me.Fields.Item("ShopNo")
  loc_F1B1C2: Set var_A4 = Me.txt
  loc_F1B1C8: Call 0.Method_Proc_93_35_F1B20C0 (4, var_A8)
  loc_F1B1D0: var_A8.MaxLength = var_9C.DefinedSize
  loc_F1B1EE: Set var_88 = Me.txt
  loc_F1B1F4: Call 0.Method_Proc_93_35_F1B20C0 (6, var_9C)
  loc_F1B1FC: var_9C.MaxLength = 7
  loc_F1B208: Exit Sub
  loc_F1B209: CExtInstUnk
End Sub

Public Sub Proc_93_36_1195AC8(arg_C) '1195AC8
  'Data Table: 472628
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_94 As DataGrid
  Dim var_A0 As DataGrid
  loc_11956CF: Set var_88 = Me.txt
  loc_11956D5: Call 0.Method_Proc_93_36_1195AC80 (5, var_8C)
  loc_11956DD: var_8C.Visible = False
  loc_11956F4: Set var_88 = Me.txt
  loc_11956FA: Call 0.Method_Proc_93_36_1195AC80 (3, var_8C)
  loc_1195702: var_8C.Visible = False
  loc_1195719: Set var_88 = Me.txt
  loc_119571F: Call 0.Method_Proc_93_36_1195AC80 (4, var_8C)
  loc_1195727: var_8C.Visible = False
  loc_119573E: Set var_88 = Me.lblNumber
  loc_1195744: Call 0.Method_Proc_93_36_1195AC80 (5, var_8C)
  loc_119574C: var_8C.Visible = False
  loc_1195763: Set var_88 = Me.lblNumber
  loc_1195769: Call 0.Method_Proc_93_36_1195AC80 (3, var_8C)
  loc_1195771: var_8C.Visible = False
  loc_1195788: Set var_88 = Me.lblNumber
  loc_119578E: Call 0.Method_Proc_93_36_1195AC80 (4, var_8C)
  loc_1195796: var_8C.Visible = False
  loc_11957AE: Set var_88 = Me.txt
  loc_11957B4: Call 0.Method_Proc_93_36_1195AC80 (arg_C, var_8C)
  loc_11957BC: var_8C.Visible = True
  loc_11957D4: Set var_88 = Me.lblNumber
  loc_11957DA: Call 0.Method_Proc_93_36_1195AC80 (arg_C, var_8C)
  loc_11957E2: var_8C.Visible = True
  loc_11957FA: Set var_94 = Me.txt
  loc_1195800: Call 0.Method_Proc_93_36_1195AC80 (2, var_98)
  loc_1195819: Set var_88 = Me.txt
  loc_119581F: Call 0.Method_Proc_93_36_1195AC80 (2, var_8C)
  loc_1195843: Set var_A0 = Me.lblNumber
  loc_1195849: Call 0.Method_Proc_93_36_1195AC80 (arg_C, var_A4)
  loc_1195851: var_A4.Left = ((var_8C.Left + var_98.Width) + CDbl(150))
  loc_1195871: Set var_88 = Me.txt
  loc_1195877: Call 0.Method_Proc_93_36_1195AC80 (2, var_8C)
  loc_1195891: Set var_94 = Me.lblNumber
  loc_1195897: Call 0.Method_Proc_93_36_1195AC80 (arg_C, var_98)
  loc_119589F: var_98.Top = var_8C.Top
  loc_11958BC: Set var_94 = Me.lblNumber
  loc_11958C2: Call 0.Method_Proc_93_36_1195AC80 (arg_C, var_98)
  loc_11958DC: Set var_88 = Me.lblNumber
  loc_11958E2: Call 0.Method_Proc_93_36_1195AC80 (arg_C, var_8C)
  loc_1195906: Set var_A0 = Me.txt
  loc_119590C: Call 0.Method_Proc_93_36_1195AC80 (arg_C, var_A4)
  loc_1195914: var_A4.Left = ((var_8C.Left + var_98.Width) + CDbl(150))
  loc_1195934: Set var_88 = Me.txt
  loc_119593A: Call 0.Method_Proc_93_36_1195AC80 (2, var_8C)
  loc_1195954: Set var_94 = Me.txt
  loc_119595A: Call 0.Method_Proc_93_36_1195AC80 (arg_C, var_98)
  loc_1195962: var_98.Top = var_8C.Top
  loc_119597E: Set var_88 = Me.txt
  loc_1195984: Call 0.Method_Proc_93_36_1195AC80 (3, var_8C)
  loc_11959A3: Me.DGRoom.Left = CVar(var_8C.Left)
  loc_11959BD: Set var_94 = Me.txt
  loc_11959C3: Call 0.Method_Proc_93_36_1195AC80 (3, var_98)
  loc_11959DC: Set var_88 = Me.txt
  loc_11959E2: Call 0.Method_Proc_93_36_1195AC80 (3, var_8C)
  loc_11959FA: var_B4 = CVar(((var_8C.Top + var_98.Height) + CDbl(&H1E))) 'Single
  loc_1195A09: Me.DGRoom.Top = CVar(var_8C.Left)
  loc_1195A27: Set var_88 = Me.txt
  loc_1195A2D: Call 0.Method_Proc_93_36_1195AC80 (5, var_8C)
  loc_1195A4C: Me.DGDept.Left = CVar(var_8C.Left)
  loc_1195A66: Set var_94 = Me.txt
  loc_1195A6C: Call 0.Method_Proc_93_36_1195AC80 (5, var_98)
  loc_1195A85: Set var_88 = Me.txt
  loc_1195A8B: Call 0.Method_Proc_93_36_1195AC80 (5, var_8C)
  loc_1195AA3: var_B4 = CVar(((var_8C.Top + var_98.Height) + CDbl(&H1E))) 'Single
  loc_1195AB2: Me.DGDept.Top = CVar(var_8C.Left)
  loc_1195AC4: Exit Sub
End Sub

Public Sub Proc_93_37_1179014
  'Data Table: 472628
  Dim Me As Recordset15
  Dim var_98 As Recordset15
  Dim var_94 As Fields15
  Dim var_BC As Variant
  Dim var_C8 As String
  Dim var_C4 As TextBox
  Dim var_AC As Variant
  Dim var_8A As Integer
  loc_1178C5F: If (Me.RecordCount <= 0) Then
  loc_1178C6E:   Proc_6_21_E5FB3C(Me)
  loc_1178C79: Else
  loc_1178C7F:   Set var_98 = global_84 
  loc_1178CB7:   Set var_C0 = Me.txt
  loc_1178CBD:   Call 0.Method_Proc_93_37_11790140 (0, var_C4)
  loc_1178CC5:   var_C4.Text = Proc_6_38_E69628(CVar(var_98.Fields.Item("Description")))
  loc_1178D10:   Set var_C0 = Me.txt
  loc_1178D16:   Call 0.Method_Proc_93_37_11790140 (0, var_C4)
  loc_1178D1E:   var_C4.Tag = CStr(var_98.Fields.Item("Code").Value)
  loc_1178D53:   var_BC = CVar(var_98.Fields.Item("Extension")) 'Address
  loc_1178D5A:   Proc_6_39_E7D3A0(var_D8)
  loc_1178D6F:   Set var_C0 = Me.txt
  loc_1178D75:   Call 0.Method_Proc_93_37_11790140 (1, var_C4)
  loc_1178D7D:   var_C4.Text = CStr(var_D8)
  loc_1178DAC:   var_AC = var_98.Fields.Item("Type")
  loc_1178DC9:   Set var_C0 = Me.txt
  loc_1178DCF:   Call 0.Method_Proc_93_37_11790140 (2, var_C4)
  loc_1178DD7:   var_C4.Text = Proc_6_38_E69628(CVar(var_AC))
  loc_1178DF7:   Set var_94 = Me.txt
  loc_1178DFD:   Call 0.Method_Proc_93_37_11790140 (2, var_AC)
  loc_1178E05:   var_C8 = var_AC.Text
  loc_1178E1C:   If (var_C8 = "Department") Then
  loc_1178E21:     var_8A = 5
  loc_1178E27:   Else
  loc_1178E33:     Set var_94 = Me.txt
  loc_1178E39:     Call 0.Method_Proc_93_37_11790140 (2, var_AC, var_C8)
  loc_1178E41:     var_8A = var_AC.Text
  loc_1178E58:     If (var_C8 = "Room") Then
  loc_1178E5D:       var_8A = 3
  loc_1178E63:     Else
  loc_1178E6F:       Set var_94 = Me.txt
  loc_1178E75:       Call 0.Method_Proc_93_37_11790140 (2, var_AC, var_C8)
  loc_1178E7D:       var_8A = var_AC.Text
  loc_1178E94:       If (var_C8 = "Shop") Then
  loc_1178E99:         var_8A = 4
  loc_1178E9C:       End If
  loc_1178E9C:     End If
  loc_1178E9C:   End If
  loc_1178EA2:   Call Proc_93_36_1195AC8(var_8A)
  loc_1178EDB:   Set var_C0 = Me.txt
  loc_1178EE1:   Call 0.Method_Proc_93_37_11790140 (3, var_C4)
  loc_1178EE9:   var_C4.Text = Proc_6_38_E69628(CVar(var_98.Fields.Item("RName")), var_8A)
  loc_1178F31:   Set var_C0 = Me.txt
  loc_1178F37:   Call 0.Method_Proc_93_37_11790140 (5, var_C4)
  loc_1178F3F:   var_C4.Text = Proc_6_38_E69628(CVar(var_98.Fields.Item("Dname")))
  loc_1178F87:   Set var_C0 = Me.txt
  loc_1178F8D:   Call 0.Method_Proc_93_37_11790140 (4, var_C4)
  loc_1178F95:   var_C4.Text = Proc_6_38_E69628(CVar(var_98.Fields.Item("ShopNo")))
  loc_1178FCF:   Proc_6_39_E7D3A0(var_D8, CVar(var_98.Fields.Item("PulseRate")))
  loc_1178FE4:   Set var_C0 = Me.txt
  loc_1178FEA:   Call 0.Method_Proc_93_37_11790140 (6, var_C4)
  loc_1178FF2:   var_C4.Text = CStr(var_D8)
  loc_117900C:   Set var_98 = Nothing 
  loc_1179010: End If
  loc_1179010: Exit Sub
End Sub

Public Sub Proc_93_38_E78CFC(arg_C) 'E78CFC
  'Data Table: 472628
  Dim var_98 As TextBox
  loc_E78CAA: Set var_8C = Me.txt
  loc_E78CB0: Call 0.Method_Proc_93_38_E78CFCC (var_8E, var_86)
  loc_E78CC0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78CD6:   Set var_8C = Me.txt
  loc_E78CDC:   Call 0.Method_Proc_93_38_E78CFC0 (CInt(var_86), var_98)
  loc_E78CE4:   var_98.Enabled = arg_C
  loc_E78CF3: Next var_92 'Byte
  loc_E78CF9: Exit Sub
End Sub

Public Sub Proc_93_39_EF68A8
  'Data Table: 472628
  loc_EF67EC: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EF67FE:   Me.DGRoom.Visible = False
  loc_EF6806: End If
  loc_EF6822: If (CBool(Me.DGDept.Visible) = &HFF) Then
  loc_EF6834:   Me.DGDept.Visible = False
  loc_EF683C: End If
  loc_EF6857: If (Me.FrmList.Visible = &HFF) Then
  loc_EF6866:   Me.FrmList.Visible = False
  loc_EF686E: End If
  loc_EF688A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF689C:   Me.FGPoint.Visible = False
  loc_EF68A4: End If
  loc_EF68A4: Exit Sub
End Sub

Public Sub Proc_93_40_E84D68
  'Data Table: 472628
  Dim var_8C As TextBox
  loc_E84D03: Set var_88 = Me.txt
  loc_E84D09: Call 0.Method_Proc_93_40_E84D680 (3, var_8C)
  loc_E84D11: var_8C.Enabled = False
  loc_E84D28: Set var_88 = Me.txt
  loc_E84D2E: Call 0.Method_Proc_93_40_E84D680 (4, var_8C)
  loc_E84D36: var_8C.Enabled = False
  loc_E84D4D: Set var_88 = Me.txt
  loc_E84D53: Call 0.Method_Proc_93_40_E84D680 (5, var_8C)
  loc_E84D5B: var_8C.Enabled = False
  loc_E84D67: Exit Sub
End Sub
