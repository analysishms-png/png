VERSION 5.00
Begin VB.Form FrmLostFound
  Caption = "Lost && Found"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12015
  ClientHeight = 6585
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2745
    Top = 5670
    Width = 3210
    Height = 285
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 15
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
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2730
    Top = 5355
    Width = 1485
    Height = 285
    TabIndex = 8
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
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4845
    Top = 5355
    Width = 1110
    Height = 285
    TabIndex = 9
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
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2745
    Top = 2790
    Width = 1500
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12015
    Height = 450
    TabIndex = 19
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2745
    Top = 5040
    Width = 3210
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 15
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2745
    Top = 3105
    Width = 1500
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 15
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2745
    Top = 3420
    Width = 1500
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 9
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2745
    Top = 2160
    Width = 3210
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 15
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
    ForeColor = &HFF0000&
    Left = 4845
    Top = 1845
    Width = 1110
    Height = 285
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2745
    Top = 1845
    Width = 1485
    Height = 285
    TabIndex = 0
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
  Begin MSFlexGrid FGPoint
    Left = 8880
    Top = 3600
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 12
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2745
    Top = 2475
    Width = 3990
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 255
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
  Begin Label LblName
    Caption = "Place"
    Index = 10
    ForeColor = &HFF0000&
    Left = 1395
    Top = 5715
    Width = 540
    Height = 240
    TabIndex = 26
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
  Begin Label LblName
    Caption = "Date"
    Index = 9
    ForeColor = &HFF0000&
    Left = 1395
    Top = 5370
    Width = 435
    Height = 240
    TabIndex = 25
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
  Begin Label LblName
    Caption = "Time"
    Index = 3
    ForeColor = &HFF0000&
    Left = 4305
    Top = 5370
    Width = 480
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
    Caption = "Found Details"
    Index = 1
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 270
    Top = 4350
    Width = 7920
    Height = 375
    TabIndex = 23
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
  End
  Begin Label Label1
    Caption = "Lost Details"
    Index = 0
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 270
    Top = 1110
    Width = 7920
    Height = 375
    TabIndex = 22
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
  End
  Begin Label LblName
    Caption = "Approx Value"
    Index = 0
    ForeColor = &HFF0000&
    Left = 1395
    Top = 2790
    Width = 1305
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 450
    Width = 180
    Height = 540
    TabIndex = 20
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
  Begin Label LblName
    Caption = "Finder"
    Index = 8
    ForeColor = &HFF0000&
    Left = 1395
    Top = 5040
    Width = 615
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
  Begin Label LblName
    Caption = "Status"
    Index = 7
    ForeColor = &HFF0000&
    Left = 1395
    Top = 3105
    Width = 585
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
  Begin Label LblName
    Caption = "User"
    Index = 6
    ForeColor = &HFF0000&
    Left = 1395
    Top = 3420
    Width = 420
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
  Begin Label LblName
    Caption = "Place"
    Index = 5
    ForeColor = &HFF0000&
    Left = 1395
    Top = 2205
    Width = 540
    Height = 240
    TabIndex = 15
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
  Begin Label LblName
    Caption = "Time"
    Index = 4
    ForeColor = &HFF0000&
    Left = 4320
    Top = 1845
    Width = 480
    Height = 240
    TabIndex = 14
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
  Begin Label LblName
    Caption = "Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 1395
    Top = 1845
    Width = 435
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
  Begin Label LblName
    Caption = "Article"
    Index = 2
    ForeColor = &HFF0000&
    Left = 1395
    Top = 2490
    Width = 615
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
End

Attribute VB_Name = "FrmLostFound"


Private Sub TopCtrl1_UnknownEvent_A '107AB08
  'Data Table: 430164
  Dim var_94 As TextBox
  loc_107A868: On Error Goto loc_107AB00
  loc_107A88E: Call Proc_144_22_E79254(Proc_5_1_100EC1C("ADD", Me))
  loc_107A8A6: Set var_8C = Me.Txt
  loc_107A8AC: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_107A8B4: var_94.Enabled = False
  loc_107A8CD: Set var_8C = Me.Txt
  loc_107A8D3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_107A8DB: var_94.Enabled = False
  loc_107A8F4: Set var_8C = Me.Txt
  loc_107A8FA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94)
  loc_107A902: var_94.Enabled = False
  loc_107A91B: Set var_8C = Me.Txt
  loc_107A921: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_94)
  loc_107A929: var_94.Enabled = False
  loc_107A935: Call Proc_144_23_EB5328(global_52)
  loc_107A94D: Set var_8C = Me.Txt
  loc_107A953: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_107A95B: var_94.Text = CStr(MemVar_1F950EC)
  loc_107A9A4: Set var_8C = Me.Txt
  loc_107A9AA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94, CStr(Format(Time, "HH:MM")))
  loc_107A9B2: var_94.Text = 1
  loc_107AA04: Set var_8C = Me.Txt
  loc_107AA0A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_94, CStr(Format(Date, "dd/MMM/yyyy")))
  loc_107AA12: var_94.Text = 1
  loc_107AA64: Set var_8C = Me.Txt
  loc_107AA6A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9), var_94, CStr(Format(Time, "HH:MM")), 1)
  loc_107AA72: var_94.Text = 1
  loc_107AA98: Set var_8C = Me.Txt
  loc_107AA9E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94, MemVar_1F950C8)
  loc_107AAA6: var_94.Text = 1
  loc_107AAC0: Set var_8C = Me.Txt
  loc_107AAC6: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_94)
  loc_107AACE: var_94.Text = "Pending"
  loc_107AAE5: Set var_8C = Me.Txt
  loc_107AAEB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94)
  loc_107AAF3: var_94.SetFocus
  loc_107AAFF: Exit Sub
  loc_107AB00: ' Referenced from: 107A868
  loc_107AB00: Proc_6_60_E63754(1)
  loc_107AB05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBECE8
  'Data Table: 430164
  loc_EBEC54: On Error Goto loc_EBECDF
  loc_EBEC8E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBEC9D:   Set var_110 = Me
  loc_EBECB4:   Call Proc_144_22_E79254(Proc_5_1_100EC1C("INI", var_110))
  loc_EBECBF:   Call Proc_144_24_1245100(global_52)
  loc_EBECC7: Else
  loc_EBECCD:   Call 0.Method_arg_1E8 (var_110)
  loc_EBECD5:   Call var_110.SetFocus
  loc_EBECDE: End If
  loc_EBECDE: Exit Sub
  loc_EBECDF: ' Referenced from: EBEC54
  loc_EBECDF: Proc_6_60_E63754()
  loc_EBECE4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10E1AA0
  'Data Table: 430164
  Dim var_96 As Integer
  Dim unk_430170 As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10E17C0: On Error Goto loc_10E1A49
  loc_10E17D1: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_10E17D4:   Exit Sub
  loc_10E17D5: End If
  loc_10E180C: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10E1811:   var_96 = 0
  loc_10E181D:   unk_430170.BeginTrans var_11C
  loc_10E1824:   var_96 = &HFF
  loc_10E1838:   var_94 = Me.Bookmark 'Variant
  loc_10E1884:   var_F8 = "Delete From LostFoundDetail Where Code='" & Me.Fields.Item("SCode").Value & "'" 
  loc_10E1892:   unk_430170.Execute CStr(var_F8), var_118, -1
  loc_10E18DD:   var_164 = 0
  loc_10E18F0:   var_15C = 0
  loc_10E18FB:   var_158 = 0
  loc_10E190E:   var_150 = 0
  loc_10E1919:   var_14C = 0
  loc_10E192C:   var_144 = 0
  loc_10E196C:   var_128 = "LostFoundDetail"
  loc_10E1975:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "Code", &HC8, CStr(Me.Fields.Item("SCode").Value), 0, 0, 0)
  loc_10E19A3:   unk_430170.CommitTrans
  loc_10E19AA:   var_96 = 0
  loc_10E19B8:   Me.Requery -1
  loc_10E19C8:   Me.Requery -1
  loc_10E19E8:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10E19F5:     Me.Bookmark = var_94
  loc_10E19FD:   Else
  loc_10E1A11:     If (Me.EOF = 0) Then
  loc_10E1A1A:       Me.MoveLast
  loc_10E1A1F:     End If
  loc_10E1A1F:   End If
  loc_10E1A1F:   Call Proc_144_24_1245100(var_96, var_144, 0, var_14C, var_150)
  loc_10E1A40:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_10E1A48: End If
  loc_10E1A48: Exit Sub
  loc_10E1A49: ' Referenced from: 10E17C0
  loc_10E1A4F: If (var_96 = &HFF) Then
  loc_10E1A58:   unk_430170.RollbackTrans
  loc_10E1A5D: End If
  loc_10E1A65: Set var_120 = Err()
  loc_10E1A6B: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10E1A8C: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10E1A9F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1015738
  'Data Table: 430164
  Dim var_94 As TextBox
  loc_101551C: On Error Goto loc_1015731
  loc_101552D: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_1015530:   Exit Sub
  loc_1015531: End If
  loc_1015554: Call Proc_144_22_E79254(Proc_5_1_100EC1C("EDIT", Me))
  loc_101556C: Set var_8C = Me.Txt
  loc_1015572: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_101557A: var_94.Enabled = False
  loc_1015593: Set var_8C = Me.Txt
  loc_1015599: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_10155A1: var_94.Enabled = False
  loc_10155BA: Set var_8C = Me.Txt
  loc_10155C0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_10155C8: var_94.Enabled = False
  loc_10155E1: Set var_8C = Me.Txt
  loc_10155E7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_94)
  loc_10155EF: var_94.Enabled = False
  loc_1015635: Set var_8C = Me.Txt
  loc_101563B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(8), var_94, CStr(Format(Date, "dd/MMM/yyyy")))
  loc_1015643: var_94.Text = 1
  loc_1015695: Set var_8C = Me.Txt
  loc_101569B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(9), var_94, CStr(Format(Time, "HH:MM")), 1)
  loc_10156A3: var_94.Text = 1
  loc_10156C9: Set var_8C = Me.Txt
  loc_10156CF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94, MemVar_1F950C8)
  loc_10156D7: var_94.Text = 1
  loc_10156F1: Set var_8C = Me.Txt
  loc_10156F7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_94)
  loc_10156FF: var_94.Text = "Pending"
  loc_1015716: Set var_8C = Me.Txt
  loc_101571C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_1015724: var_94.SetFocus
  loc_1015730: Exit Sub
  loc_1015731: ' Referenced from: 101551C
  loc_1015731: Proc_6_60_E63754(global_52)
  loc_1015736: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18BA0
  'Data Table: 430164
  loc_E18B95: Me.Global.Unload Me
  loc_E18B9D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F17B20
  'Data Table: 430164
  Dim Me As Recordset15
  loc_F17A30: On Error Goto loc_F17ABA
  loc_F17A3C: var_88 = Me.RecordCount
  loc_F17A4A: If (var_88 <= 0) Then
  loc_F17A6E:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F17A7E:   Exit Sub
  loc_F17A7F: End If
  loc_F17A82: MemVar_1F950E4 = "Select Code AS SCode, Description,FArea AS [Item Lost/Found Area] FROM LostFoundDetail"
  loc_F17A8C: MemVar_1F95120 = Me
  loc_F17A93: var_10C = "3500,800,1500"
  loc_F17A99: Proc_6_126_F1C850(var_10C)
  loc_F17AB4: Call 0.Method_arg_2B0 (1)
  loc_F17AB9: Exit Sub
  loc_F17ABA: ' Referenced from: F17A30
  loc_F17AC2: Set var_110 = Err()
  loc_F17AC8: Call 0.Method_arg_1C (var_88)
  loc_F17AD9: If (var_88 <> 0) Then
  loc_F17AE4:   Set var_110 = Err()
  loc_F17AEA:   Call 0.Method_arg_2C (var_10C)
  loc_F17B0B:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F17B1E: End If
  loc_F17B1E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E360C8
  'Data Table: 430164
  loc_E360B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E360C0: Call Proc_144_24_1245100(global_52)
  loc_E360C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E36248
  'Data Table: 430164
  loc_E36238: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36240: Call Proc_144_24_1245100(global_52)
  loc_E36245: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E361E8
  'Data Table: 430164
  loc_E361D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E361E0: Call Proc_144_24_1245100(global_52)
  loc_E361E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E36128
  'Data Table: 430164
  loc_E36118: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36120: Call Proc_144_24_1245100(global_52)
  loc_E36125: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1072400
  'Data Table: 430164
  Dim unk_430170 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_1072180: On Error Goto loc_10723B7
  loc_1072199: unk_430170.Execute "SELECT FDate,FTime,FArea,FindBy,Description,UName1,Status FROM LostFoundDetail Order BY Code", var_BC, -1
  loc_10721A4: Set var_88 = var_C0
  loc_10721B3: var_C4 = var_88.RecordCount
  loc_10721C1: If (var_C4 = 0) Then
  loc_10721DD:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_10721ED:   Exit Sub
  loc_10721EE: End If
  loc_10721FD: var_12C = MemVar_1F950B4 & "\LostFound.ttx"
  loc_1072204: Set var_C0 = var_88 
  loc_1072210: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_107221A: Set var_88 = var_C0
  loc_1072220: var_AC = CVar(var_12E) 'Integer
  loc_1072223: var_98 = var_AC 'Variant
  loc_107223F: var_128 = MemVar_1F950B4 & "\LostFound.RPT"
  loc_1072248: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_1072253: MemVar_1F951E8 = var_C0
  loc_107226E: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_1072276: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1072282: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_107229B:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10722A3:   Call 0.Method_arg_20 (var_138)
  loc_10722AB:   Call 0.Method_arg_30 (var_128)
  loc_10722F1:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_1072307:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_107230F:     Call 0.Method_arg_20 (var_138)
  loc_1072317:     Call 0.Method_arg_38 ("'Lost/Found Report'")
  loc_1072323:   End If
  loc_1072326: Next var_132 'Integer
  loc_1072344: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_107234C: Call 0.Method_arg_2C (var_D4)
  loc_107235A: Call 0.Method_arg_150 (var_F4)
  loc_1072365: Call 0.Method_arg_50 (var_128)
  loc_107236F: Set var_138 = Nothing
  loc_1072389: Set var_C0 = MemVar_1F951E8 
  loc_1072395: Proc_6_99_1484404(var_C0, 0, var_128)
  loc_10723A0: MemVar_1F951E8 = var_C0
  loc_10723B3: Set var_88 = Nothing
  loc_10723B6: Exit Sub
  loc_10723B7: ' Referenced from: 1072180
  loc_10723BF: Set var_C0 = Err()
  loc_10723C5: Call 0.Method_arg_2C (var_128, &HFF)
  loc_10723D0: Call 0.Method_arg_50 (var_12C)
  loc_10723EC: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_10723FF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E228BC
  'Data Table: 430164
  Dim Me As Recordset15
  loc_E228A3: Me.Requery -1
  loc_E228B3: Me.Requery -1
  loc_E228B8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13D8CAC
  'Data Table: 430164
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_430170 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_E4 As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_150 As TextBox
  Dim var_19C As TextBox
  Dim var_1E8 As TextBox
  Dim var_234 As TextBox
  Dim var_248 As Variant
  Dim var_278 As Variant
  Dim var_2D0 As Variant
  Dim var_2D8 As TextBox
  Dim var_324 As TextBox
  Dim var_338 As Variant
  Dim var_3B0 As TextBox
  Dim var_3C4 As Variant
  Dim var_414 As Variant
  Dim var_280 As TextBox
  Dim var_2A0 As Variant
  Dim var_B0 As Variant
  loc_13D83DC: On Error Goto loc_13D8C58
  loc_13D83E3: var_86 = CByte(0) 'Byte
  loc_13D83F2: Set var_90 = Me.Txt
  loc_13D83F8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_13D8421: If (Proc_183_19_E8E68C(var_94, "Area") = 0) Then
  loc_13D842B:   Call Txt_GotFocus()
  loc_13D8430:   Exit Sub
  loc_13D8431: End If
  loc_13D843C: Set var_90 = Me.Txt
  loc_13D8442: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_94)
  loc_13D846B: If (Proc_183_19_E8E68C(var_94, "Lost/Found Status") = 0) Then
  loc_13D8475:   Call Txt_GotFocus()
  loc_13D847A:   Exit Sub
  loc_13D847B: End If
  loc_13D8486: Set var_90 = Me.Txt
  loc_13D848C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, CInt(6))
  loc_13D84B5: If (Proc_183_19_E8E68C(var_94, "Description") = 0) Then
  loc_13D84BF:   Call Txt_GotFocus()
  loc_13D84C4:   Exit Sub
  loc_13D84C5: End If
  loc_13D84C9: Set var_90 = Me.TopCtrl1
  loc_13D84CF: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(CInt(4))
  loc_13D84E8: If (CStr(CInt(2)) = "Add") Then
  loc_13D84F1:   var_D4 = 0
  loc_13D850E:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From LostFoundDetail where Site_Code='" & MemVar_1F95070
  loc_13D851E:   unk_430170.Execute CStr(CInt(2)) & "'", var_B0, -1
  loc_13D8526:   var_90 = var_90.Fields
  loc_13D852E:   var_D4 = var_94.Item(var_94)
  loc_13D8536:   var_98 = var_98.Value
  loc_13D853F:   var_E8 = CStr(var_E4)
  loc_13D856F:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_13D859D:   var_108 = (1 + Format(var_E8, "000000"))
  loc_13D85A8:   global_56 = CStr(var_108)
  loc_13D85BD: Else
  loc_13D85DA:   var_94 = Me.Fields.Item("SCode")
  loc_13D85E2:   var_B0 = var_94.Value
  loc_13D85F1:   global_56 = CStr(var_B0)
  loc_13D8602: End If
  loc_13D860B: unk_430170.BeginTrans var_10C
  loc_13D8614: var_86 = CByte(1) 'Byte
  loc_13D861C: Set var_90 = Me.TopCtrl1
  loc_13D8622: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(1)
  loc_13D863B: If (CStr(var_F8) = "Add") Then
  loc_13D8652:   var_9C = "Insert Into LostFoundDetail(Code,FDate,FTime,FArea,AppValue,Description,FindBy,FFDate,FFTime,FPlace,UName1,Status,Site_Code,U_EntDt,U_AE,LogSite_Code) " & "Values('"
  loc_13D865C:   var_B4 = var_9C & global_56
  loc_13D8663:   var_E4 = CVar(var_B4 & "',") 'String
  loc_13D8671:   Proc_183_7_EB17D4(var_B0, MemVar_1F950EC, var_E4, var_4E8)
  loc_13D8679:   var_F8 = -1 & var_B0 
  loc_13D8694:   Set var_90 = Me.Txt
  loc_13D869A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_E8, var_F8 & ",'")
  loc_13D86A2:   var_4EC = var_94.Text
  loc_13D86B6:   var_14C = var_E4 & CVar(var_E8) & "','" 
  loc_13D86C8:   Set var_98 = Me.Txt
  loc_13D86CE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_150, var_154)
  loc_13D86D6:   var_14C = var_150.Text
  loc_13D86FC:   Set var_198 = Me.Txt
  loc_13D8702:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_19C)
  loc_13D8730:   Set var_1E4 = Me.Txt
  loc_13D8736:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1E8)
  loc_13D8764:   Set var_230 = Me.Txt
  loc_13D876A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_234)
  loc_13D877A:   var_248 = CVar(var_234.Text) 'String
  loc_13D8795:   Set var_27C = Me.Txt
  loc_13D879B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_280)
  loc_13D87AA:   Proc_6_7_F26918(var_2A0, CVar(var_280))
  loc_13D87BB:   var_2D0 = var_94 & CVar(var_154) & "','" & CVar(var_19C.Text) & "','" & CVar(var_1E8.Text) & "','" & var_248 & "'," & var_2A0 & ",'" 
  loc_13D87CD:   Set var_2D4 = Me.Txt
  loc_13D87D3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_2D8)
  loc_13D8801:   Set var_320 = Me.Txt
  loc_13D8807:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_324)
  loc_13D8848:   Set var_3AC = Me.Txt
  loc_13D884E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_3B0)
  loc_13D885E:   var_3C4 = CVar(var_3B0.Text) 'String
  loc_13D8874:   var_414 = var_2D0 & CVar(var_2D8.Text) & "','" & CVar(var_324.Text) & "','" & CVar(MemVar_1F950C8) & "','" & var_3C4 & "','" & CVar(MemVar_1F95078) 
  loc_13D888F:   Proc_6_7_F26918(var_454, Date)
  loc_13D88C1:   unk_430170.Execute CStr(var_414 & "'," & var_454 & ",'A','" & CVar(MemVar_1F95078) & "')"), , 
  loc_13D8952: Else
  loc_13D8967:   var_C4 = MemVar_1F950EC
  loc_13D896F:   Proc_183_7_EB17D4(var_B0, var_C4, "UPDATE LostFoundDetail SET FDate=")
  loc_13D8977:   var_E4 = var_3C4 & var_B0 
  loc_13D8980:   var_F8 = var_E4 & ", Description='" 
  loc_13D8992:   Set var_90 = Me.Txt
  loc_13D8998:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C)
  loc_13D89A0:   var_F8 = var_94.Text
  loc_13D89A8:   var_108 = CVar(var_9C) 'String
  loc_13D89AB:   var_11C = -1 & var_108 
  loc_13D89B4:   var_12C = CVar(var_E8) & "',Status = '" 
  loc_13D89C6:   Set var_98 = Me.Txt
  loc_13D89CC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_150, var_B4)
  loc_13D89D4:   var_12C = var_150.Text
  loc_13D89FA:   Set var_198 = Me.Txt
  loc_13D8A00:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_19C)
  loc_13D8A2E:   Set var_1E4 = Me.Txt
  loc_13D8A34:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1E8)
  loc_13D8A5F:   Set var_230 = Me.Txt
  loc_13D8A65:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_234)
  loc_13D8A74:   Proc_6_7_F26918(var_248, CVar(var_234))
  loc_13D8A85:   var_278 = var_320 & CVar(var_B4) & "',AppValue='" & CVar(var_19C.Text) & "',FindBy='" & CVar(var_1E8.Text) & "',FFdate=" & var_248 & ",FFTime='" 
  loc_13D8A97:   Set var_27C = Me.Txt
  loc_13D8A9D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_280)
  loc_13D8ACB:   Set var_2D4 = Me.Txt
  loc_13D8AD1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_2D8)
  loc_13D8B00:   var_338 = var_278 & CVar(var_280.Text) & "',FPlace='" & CVar(var_2D8.Text) & "', UName1='" & CVar(MemVar_1F950C8) & "',U_AE='E',Site_Code='" 
  loc_13D8B37:   unk_430170.Execute CStr(var_338 & CVar(MemVar_1F95070) & "' WHERE Code='" & CVar(global_56) & "'"), , 
  loc_13D8BA1: End If
  loc_13D8BA7: unk_430170.CommitTrans
  loc_13D8BB0: var_86 = CByte(0) 'Byte
  loc_13D8BBF: Me.Requery -1
  loc_13D8BEC: Me.Find "SCode='" & global_56 & "'", 0, 1
  loc_13D8BFC: Set var_90 = Me.TopCtrl1
  loc_13D8C02: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_C4)
  loc_13D8C1B: If (CStr() = "Add") Then
  loc_13D8C1E:   Call TopCtrl1_UnknownEvent_A()
  loc_13D8C23:   Exit Sub
  loc_13D8C24: End If
  loc_13D8C39: var_9C = "INI"
  loc_13D8C47: Call Proc_144_22_E79254(Proc_5_1_100EC1C(var_9C, Me))
  loc_13D8C52: Call Proc_144_24_1245100(global_52)
  loc_13D8C57: Exit Sub
  loc_13D8C58: ' Referenced from: 13D83DC
  loc_13D8C61: If (CInt(var_86) = 1) Then
  loc_13D8C6A:   unk_430170.RollbackTrans
  loc_13D8C6F: End If
  loc_13D8C77: Set var_90 = Err()
  loc_13D8C7D: Call 0.Method_arg_2C (var_9C)
  loc_13D8C96: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_13D8CA9: Exit Sub
End Sub

Private Sub Form_Load() 'F0743C
  'Data Table: 430164
  Dim var_8C As String
  Dim unk_430170 As Connection15
  Dim var_B0 As Variant
  loc_F07368: On Error Goto loc_F073F5
  loc_F07372: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F0738B: var_8C = "SELECT Code AS Scode,FDate,FTime,FArea,Description,Appvalue,FindBy,FFDate,FFTime,FPlace,UName1,Status,Site_Code,LogSite_code FROM LostFoundDetail Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_F0739B: unk_430170.Execute var_8C & "' or LOGSITE_CODE='HO') Order BY Code", var_B0, -1
  loc_F073CD: Set var_B4 = Me
  loc_F073D6: var_8C = "INI"
  loc_F073E4: Call Proc_144_22_E79254(Proc_5_1_100EC1C(var_8C, var_B4), var_B4)
  loc_F073EF: Call Proc_144_24_1245100(var_B4)
  loc_F073F4: Exit Sub
  loc_F073F5: ' Referenced from: F07368
  loc_F073FD: Set var_B4 = Err()
  loc_F07403: Call 0.Method_arg_2C (var_8C)
  loc_F07424: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_F07437: Exit Sub
  loc_F07438: Exit Sub
End Sub

Private Sub Form_Resize() 'ED9B58
  'Data Table: 430164
  Dim var_8C As Label
  loc_ED9AB6: Call 0.Method_arg_50 (var_88)
  loc_ED9AC8: Me.LblFormCaption.Caption = var_88
  loc_ED9AE1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED9AED: Set var_A0 = Me.TopCtrl1
  loc_ED9AF3: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010006()
  loc_ED9B00: Set var_8C = Me.TopCtrl1
  loc_ED9B06: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010004()
  loc_ED9B20: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED9B3B: Call 0.Method_arg_100 (var_B8)
  loc_ED9B4D: Me.LblFormCaption.Width = var_B8
  loc_ED9B55: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0EFC4
  'Data Table: 430164
  loc_E0EFBB: Set global_52 = Nothing
  loc_E0EFC2: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8CB20
  'Data Table: 430164
  loc_E8CABC: On Error Goto loc_E8CADC
  loc_E8CAD3: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8CADB: Exit Sub
  loc_E8CADC: ' Referenced from: E8CABC
  loc_E8CAE4: Set var_88 = Err()
  loc_E8CAEA: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8CB0B: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8CB1E: Exit Sub
  loc_E8CB1F: Exit Sub
End Sub

Private Sub Txt_GotFocus() 'DFD048
  'Data Table: 430164
  loc_DFD044: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EAC370
  'Data Table: 430164
  loc_EAC2E2: If (CLng(Shift) = &H1B) Then
  loc_EAC2E5:   Exit Sub
  loc_EAC2E6: End If
  loc_EAC2FB: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EAC304:   Proc_6_76_E533C8(Shift)
  loc_EAC309: End If
  loc_EAC327: If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_EAC330:   Call Txt_Validate(KeyCode)
  loc_EAC33B:   If (var_86 = 0) Then
  loc_EAC344:     Call Proc_144_25_E8DC34(KeyCode, var_86)
  loc_EAC349:   End If
  loc_EAC34C: Else
  loc_EAC361:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EAC36A:     Proc_6_75_E5335C(Shift, arg_14)
  loc_EAC36F:   End If
  loc_EAC36F: End If
  loc_EAC36F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B724
  'Data Table: 430164
  loc_E4B702: Set var_88 = Me.Txt
  loc_E4B708: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B716: Proc_6_73_E23294(var_8C)
  loc_E4B722: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'DFCF78
  'Data Table: 430164
  Dim arg_7FFF As Double
  loc_DFCF74: Exit Sub
  loc_DFCF75: arg_7FFF = 
End Sub

Public Sub SEARCHBACK(MyValue) 'EC5174
  'Data Table: 430164
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC50EA: On Error Goto loc_EC512F
  loc_EC50F3: Me.MoveFirst
  loc_EC510D: var_8C = "SCode='" & MyValue
  loc_EC511D: Me.Find var_8C & "'", 0, 1
  loc_EC5129: Call Proc_144_24_1245100(var_A0)
  loc_EC512E: Exit Sub
  loc_EC512F: ' Referenced from: EC50EA
  loc_EC5137: Set var_A4 = Err()
  loc_EC513D: Call 0.Method_arg_2C (var_8C)
  loc_EC515E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC5171: Exit Sub
  loc_EC5172: Exit Sub
End Sub

Public Sub Proc_144_22_E79254(arg_C) 'E79254
  'Data Table: 430164
  Dim var_98 As TextBox
  loc_E79202: Set var_8C = Me.Txt
  loc_E79208: Call 0.Method_Proc_144_22_E79254C (var_8E, var_86)
  loc_E79218: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7922E:   Set var_8C = Me.Txt
  loc_E79234:   Call 0.Method_Proc_144_22_E792540 (CInt(var_86), var_98)
  loc_E7923C:   var_98.Enabled = arg_C
  loc_E7924B: Next var_92 'Byte
  loc_E79251: Exit Sub
End Sub

Public Sub Proc_144_23_EB5328
  'Data Table: 430164
  Dim var_98 As TextBox
  loc_EB5292: global_60 = vbNullString
  loc_EB529C: global_64 = vbNullString
  loc_EB52AE: Set var_8C = Me.Txt
  loc_EB52B4: Call 0.Method_Proc_144_23_EB5328C (var_8E, var_86)
  loc_EB52C4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB52DA:   Set var_8C = Me.Txt
  loc_EB52E0:   Call 0.Method_Proc_144_23_EB53280 (CInt(var_86), var_98)
  loc_EB52E8:   var_98.Text = vbNullString
  loc_EB5304:   Set var_8C = Me.Txt
  loc_EB530A:   Call 0.Method_Proc_144_23_EB53280 (CInt(var_86), var_98)
  loc_EB5312:   var_98.Tag = vbNullString
  loc_EB5321: Next var_92 'Byte
  loc_EB5327: Exit Sub
End Sub

Public Sub Proc_144_24_1245100
  'Data Table: 430164
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_BC As TextBox
  loc_1244BC4: On Error Goto loc_12450BA
  loc_1244BCD: Proc_183_45_E5CCA8(global_52)
  loc_1244BE9: If (Me.RecordCount <= 0) Then
  loc_1244BEC:   Call Proc_144_23_EB5328()
  loc_1244BF4: Else
  loc_1244C28:   global_56 = CStr(Me.Fields.Item("SCode").Value)
  loc_1244C75:   Set var_B8 = Me.Txt
  loc_1244C7B:   Call 0.Method_Proc_144_24_12451000 (CInt(0), var_BC)
  loc_1244C83:   var_BC.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_1244CD5:   Set var_B8 = Me.Txt
  loc_1244CDB:   Call 0.Method_Proc_144_24_12451000 (CInt(0), var_BC)
  loc_1244CE3:   var_BC.Text = CStr(Me.Fields.Item("Fdate").Value)
  loc_1244D35:   Set var_B8 = Me.Txt
  loc_1244D3B:   Call 0.Method_Proc_144_24_12451000 (CInt(1), var_BC)
  loc_1244D43:   var_BC.Text = CStr(Me.Fields.Item("FTime").Value)
  loc_1244D95:   Set var_B8 = Me.Txt
  loc_1244D9B:   Call 0.Method_Proc_144_24_12451000 (CInt(2), var_BC)
  loc_1244DA3:   var_BC.Text = CStr(Me.Fields.Item("FArea").Value)
  loc_1244DF5:   Set var_B8 = Me.Txt
  loc_1244DFB:   Call 0.Method_Proc_144_24_12451000 (CInt(4), var_BC)
  loc_1244E03:   var_BC.Text = CStr(Me.Fields.Item("Description").Value)
  loc_1244E55:   Set var_B8 = Me.Txt
  loc_1244E5B:   Call 0.Method_Proc_144_24_12451000 (CInt(3), var_BC)
  loc_1244E63:   var_BC.Text = CStr(Me.Fields.Item("Appvalue").Value)
  loc_1244EB5:   Set var_B8 = Me.Txt
  loc_1244EBB:   Call 0.Method_Proc_144_24_12451000 (CInt(7), var_BC)
  loc_1244EC3:   var_BC.Text = CStr(Me.Fields.Item("FindBy").Value)
  loc_1244F15:   Set var_B8 = Me.Txt
  loc_1244F1B:   Call 0.Method_Proc_144_24_12451000 (CInt(8), var_BC)
  loc_1244F23:   var_BC.Text = CStr(Me.Fields.Item("FFDate").Value)
  loc_1244F75:   Set var_B8 = Me.Txt
  loc_1244F7B:   Call 0.Method_Proc_144_24_12451000 (CInt(9), var_BC)
  loc_1244F83:   var_BC.Text = CStr(Me.Fields.Item("FFTime").Value)
  loc_1244FD5:   Set var_B8 = Me.Txt
  loc_1244FDB:   Call 0.Method_Proc_144_24_12451000 (CInt(&HA), var_BC)
  loc_1244FE3:   var_BC.Text = CStr(Me.Fields.Item("FPlace").Value)
  loc_1245035:   Set var_B8 = Me.Txt
  loc_124503B:   Call 0.Method_Proc_144_24_12451000 (CInt(6), var_BC)
  loc_1245043:   var_BC.Text = CStr(Me.Fields.Item("Status").Value)
  loc_1245087:   var_B4 = CStr(Me.Fields.Item("UName1").Value)
  loc_1245095:   Set var_B8 = Me.Txt
  loc_124509B:   Call 0.Method_Proc_144_24_12451000 (CInt(5), var_BC)
  loc_12450A3:   var_BC.Text = var_B4
  loc_12450B9: End If
  loc_12450B9: Exit Sub
  loc_12450BA: ' Referenced from: 1244BC4
  loc_12450C2: Set var_8C = Err()
  loc_12450C8: Call 0.Method_arg_2C (var_B4)
  loc_12450E9: MsgBox(CVar(var_B4), &H40, "Information", var_EC, var_10C)
  loc_12450FC: Exit Sub
  loc_12450FD: var_130C = 
End Sub

Public Sub Proc_144_25_E8DC34(arg_C) 'E8DC34
  'Data Table: 430164
  Dim var_10C As TextBox
  loc_E8DC03: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8DC06:   Call TopCtrl1_UnknownEvent_16()
  loc_E8DC0E: Else
  loc_E8DC18:   Set var_108 = Me.Txt
  loc_E8DC1E:   Call 0.Method_Proc_144_25_E8DC340 (arg_C)
  loc_E8DC26:   var_10C.SetFocus
  loc_E8DC32: End If
  loc_E8DC32: Exit Sub
End Sub
