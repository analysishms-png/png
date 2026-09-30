VERSION 5.00
Begin VB.Form pHappyHours
  Caption = "Happy Hours"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 9015
  ClientHeight = 7290
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 10
    Left = 4125
    Top = 1230
    Width = 1290
    Height = 240
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin CheckBox Check1
    Caption = "Active all"
    Left = 4440
    Top = 1740
    Width = 1050
    Height = 255
    TabIndex = 12
  End
  Begin TextBox Txt
    Index = 9
    Left = 3480
    Top = 1740
    Width = 345
    Height = 240
    TabIndex = 11
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 12
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
  Begin TextBox Txt
    Index = 8
    Left = 3120
    Top = 1740
    Width = 345
    Height = 240
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 12
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
  Begin TextBox Txt
    Index = 7
    Left = 1785
    Top = 1740
    Width = 345
    Height = 240
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 12
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
  Begin TextBox Txt
    Index = 6
    Left = 1425
    Top = 1740
    Width = 345
    Height = 240
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 12
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
  Begin CommandButton Cmd
    Caption = "E&xit"
    Index = 2
    BackColor = &H70E0FC&
    Left = 5970
    Top = 1560
    Width = 1335
    Height = 525
    Visible = 0   'False
    TabIndex = 22
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
  Begin CommandButton Cmd
    Caption = "&Save "
    Index = 1
    BackColor = &H70E0FC&
    Left = 5970
    Top = 1035
    Width = 1335
    Height = 525
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 21
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
  Begin CommandButton Cmd
    Caption = "&Fill Grid"
    Index = 0
    BackColor = &H70E0FC&
    Left = 5970
    Top = 510
    Width = 1335
    Height = 525
    TabIndex = 13
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
  Begin TextBox Txt
    Index = 1
    Left = 1425
    Top = 720
    Width = 3990
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin TextBox Txt
    Index = 3
    Left = 1425
    Top = 1230
    Width = 1290
    Height = 240
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 2
    Left = 1425
    Top = 975
    Width = 3990
    Height = 240
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 40
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
  Begin TextBox Txt
    Index = 5
    Left = 4350
    Top = 1485
    Width = 1065
    Height = 240
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 12
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
  Begin TextBox Txt
    Index = 4
    Left = 1425
    Top = 1485
    Width = 1290
    Height = 240
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 7
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
  Begin TextBox Txt
    Index = 0
    Left = 1425
    Top = 465
    Width = 3990
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 8235
    Top = 690
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin PictureBox Picture3
    Picture = "pHappyHours.frx":0
    Left = 5430
    Top = 465
    Width = 300
    Height = 270
    TabIndex = 15
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture1
    Picture = "pHappyHours.frx":34E
    Left = 5430
    Top = 720
    Width = 300
    Height = 270
    TabIndex = 14
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture2
    Picture = "pHappyHours.frx":69C
    Left = 5430
    Top = 975
    Width = 300
    Height = 270
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin DataGrid DGItemCat
    Left = 4230
    Top = 4080
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 16
  End
  Begin MSFlexGrid FGPoint
    Left = 8880
    Top = 7560
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 17
  End
  Begin DataGrid DGRest
    Left = 840
    Top = 4095
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGItemGrp
    Left = 1980
    Top = 3555
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 19
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9015
    Height = 375
    TabIndex = 23
  End
  Begin MSHFlexGrid FGrid
    Left = 120
    Top = 2160
    Width = 11700
    Height = 4830
    TabIndex = 24
  End
  Begin Label Label1
    Caption = "End Date"
    Index = 9
    ForeColor = &H0&
    Left = 3180
    Top = 1230
    Width = 765
    Height = 240
    TabIndex = 34
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
  Begin Label Label1
    Caption = "To Time"
    Index = 8
    ForeColor = &H0&
    Left = 2235
    Top = 1740
    Width = 720
    Height = 240
    TabIndex = 33
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
  Begin Label Label1
    Caption = "From Time"
    Index = 7
    ForeColor = &H0&
    Left = 165
    Top = 1740
    Width = 945
    Height = 240
    TabIndex = 32
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
  Begin Label Label1
    Caption = "Item Group"
    Index = 0
    ForeColor = &H0&
    Left = 165
    Top = 705
    Width = 960
    Height = 240
    TabIndex = 31
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
  Begin Label Label1
    Caption = "Start Date"
    Index = 1
    ForeColor = &H0&
    Left = 165
    Top = 1230
    Width = 870
    Height = 240
    TabIndex = 30
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
  Begin Label Label1
    Caption = "Item Category"
    Index = 2
    ForeColor = &H0&
    Left = 165
    Top = 975
    Width = 1215
    Height = 240
    TabIndex = 29
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
  Begin Label Label1
    Caption = "Value"
    Index = 3
    ForeColor = &H0&
    Left = 3765
    Top = 1485
    Width = 480
    Height = 240
    TabIndex = 28
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
  Begin Label Label1
    Caption = "Value Type"
    Index = 4
    ForeColor = &H0&
    Left = 165
    Top = 1485
    Width = 960
    Height = 240
    TabIndex = 27
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
  Begin Label Label1
    Caption = "Outlet Name"
    Index = 5
    ForeColor = &H0&
    Left = 165
    Top = 450
    Width = 1065
    Height = 240
    TabIndex = 26
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
  Begin Label Label1
    Caption = "Per/Amt"
    Index = 6
    ForeColor = &H0&
    Left = 2760
    Top = 1500
    Width = 735
    Height = 195
    TabIndex = 25
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "pHappyHours"

Private global_80 As Integer
Private global_82 As Integer

Private Sub DGItemCat_UnknownEvent_9 'F3D494
  'Data Table: 4CA7F4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3D38B: Me.DGItemCat.Visible = False
  loc_F3D3AA: If (Me.RecordCount > 0) Then
  loc_F3D3E9:   Set var_B4 = Me.Txt
  loc_F3D3EF:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3D3F7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3D42A:   var_B0 = Me.Fields.Item("Name")
  loc_F3D449:   Set var_B4 = Me.Txt
  loc_F3D44F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3D457:   var_B8.Text = CStr(var_B0.Value)
  loc_F3D46D: End If
  loc_F3D478: Set var_A8 = Me.Txt
  loc_F3D47E: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2))
  loc_F3D486: var_B0.SetFocus
  loc_F3D492: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_1F 'EA7200
  'Data Table: 4CA7F4
  Dim var_A8 As Variant
  loc_EA7180: Set var_88 = Me.DGItemCat
  loc_EA71AA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA71B2: Set var_BC = Me.DGItemCat
  loc_EA71EE: Proc_6_138_106E830(Me.DGItemCat, global_52, CInt(2), Me.FGPoint)
  loc_EA71FC: Exit Sub
  loc_EA71FD: DGItemCat.DispID_1B = var_A8
End Sub

Private Sub DGItemGrp_UnknownEvent_9 'F37714
  'Data Table: 4CA7F4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3760B: Me.DGItemGrp.Visible = False
  loc_F3762A: If (Me.RecordCount > 0) Then
  loc_F37669:   Set var_B4 = Me.Txt
  loc_F3766F:   Call 0.Method_DGItemGrp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F37677:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F376AA:   var_B0 = Me.Fields.Item("Name")
  loc_F376C9:   Set var_B4 = Me.Txt
  loc_F376CF:   Call 0.Method_DGItemGrp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F376D7:   var_B8.Text = CStr(var_B0.Value)
  loc_F376ED: End If
  loc_F376F8: Set var_A8 = Me.Txt
  loc_F376FE: Call 0.Method_DGItemGrp_UnknownEvent_90 (CInt(1))
  loc_F37706: var_B0.SetFocus
  loc_F37712: Exit Sub
End Sub

Private Sub DGItemGrp_UnknownEvent_1F 'EA713C
  'Data Table: 4CA7F4
  Dim var_A8 As Variant
  loc_EA70BC: Set var_88 = Me.DGItemGrp
  loc_EA70E6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA70EE: Set var_BC = Me.DGItemGrp
  loc_EA712A: Proc_6_138_106E830(Me.DGItemGrp, global_56, CInt(1), Me.FGPoint)
  loc_EA7138: Exit Sub
  loc_EA7139: DGItemGrp.DispID_1B = var_A8
End Sub

Private Sub Cmd_Click() '15E5EF4
  'Data Table: 4CA7F4
  Dim var_C0 As Variant
  Dim var_E4 As Variant
  Dim var_F0 As String
  Dim var_F4 As String
  Dim var_F8 As TextBox
  Dim var_104 As String
  Dim var_10C As TextBox
  Dim var_88 As Variant
  Dim var_EC As String
  Dim var_138 As Variant
  Dim var_D0 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_128 As Variant
  Dim var_1D8 As Variant
  Dim var_230 As Variant
  Dim var_240 As Variant
  Dim var_248 As TextBox
  Dim var_268 As Variant
  Dim var_278 As String
  Dim unk_4CA816 As Connection15
  Dim var_AC As Recordset15
  Dim var_E8 As Fields15
  Dim var_E0 As Variant
  Dim var_96 As Integer
  Dim var_94 As Recordset15
  Dim Me As Recordset15
  loc_15E4BD8: Set var_88 = Err()
  loc_15E4BDE: Call 0.Method_arg_1C (var_8C)
  loc_15E4BEA: OnGoto
  loc_15E4BF4: CInt(var_8C)() = 
  loc_15E4BF7: () = 
  loc_15E4BFC: If  Then
  loc_15E4C03:   Set var_88 = Me.TopCtrl1
  loc_15E4C09:   Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_15E4C1E:   If ( = "Browse") Then
  loc_15E4C21:     Exit Sub
  loc_15E4C22:   End If
  loc_15E4C2D:   Set var_88 = Me.Txt
  loc_15E4C33:   Call 0.Method_Cmd_Click0 (CInt(3))
  loc_15E4C5C:   If (Proc_6_27_EA61EC(var_E4, "Start Date") = 0) Then
  loc_15E4C5F:     Exit Sub
  loc_15E4C60:   End If
  loc_15E4C6B:   Set var_88 = Me.Txt
  loc_15E4C71:   Call 0.Method_Cmd_Click0 (CInt(&HA), var_E4)
  loc_15E4C9A:   If (Proc_6_27_EA61EC(var_E4, "End Date") = 0) Then
  loc_15E4C9D:     Exit Sub
  loc_15E4C9E:   End If
  loc_15E4CAC:   Set var_88 = Me.Txt
  loc_15E4CB2:   Call 0.Method_Cmd_Click0 (CInt(1), var_E4)
  loc_15E4CD1:   If (var_E4.Text <> vbNullString) Then
  loc_15E4CE2:     Set var_88 = Me.Txt
  loc_15E4CE8:     Call 0.Method_Cmd_Click0 (CInt(2), var_E4)
  loc_15E4CF0:     var_EC = var_E4.Text
  loc_15E4D07:     If (var_EC <> vbNullString) Then
  loc_15E4D11:       var_F0 = var_9C & "Where ItemCatCode='"
  loc_15E4D22:       Set var_88 = Me.Txt
  loc_15E4D28:       Call 0.Method_Cmd_Click0 (CInt(2), var_E4, var_EC)
  loc_15E4D30:       var_F0 = var_E4.Tag
  loc_15E4D51:       Set var_E8 = Me.Txt
  loc_15E4D57:       Call 0.Method_Cmd_Click0 (CInt(1), var_F8)
  loc_15E4D80:       Set var_108 = Me.Txt
  loc_15E4D86:       Call 0.Method_Cmd_Click0 (CInt(0), var_10C)
  loc_15E4D9E:       var_9C = var_E4 & var_EC & "' And ItemGroup='" & var_F8.Tag & "' And RestCode='" & var_10C.Tag & "'"
  loc_15E4DC8:     Else
  loc_15E4DE0:       Set var_88 = Me.Txt
  loc_15E4DE6:       Call 0.Method_Cmd_Click0 (CInt(1), var_E4)
  loc_15E4E0F:       Set var_E8 = Me.Txt
  loc_15E4E15:       Call 0.Method_Cmd_Click0 (CInt(0), var_F8)
  loc_15E4E2D:       var_9C = var_9C & "Where ItemGroup='" & var_E4.Tag & "' And RestCode='" & var_F8.Tag & "'"
  loc_15E4E4A:     End If
  loc_15E4E4D:   Else
  loc_15E4E5B:     Set var_88 = Me.Txt
  loc_15E4E61:     Call 0.Method_Cmd_Click0 (CInt(2), var_E4)
  loc_15E4E80:     If (var_E4.Text <> vbNullString) Then
  loc_15E4E9B:       Set var_88 = Me.Txt
  loc_15E4EA1:       Call 0.Method_Cmd_Click0 (CInt(2), var_E4)
  loc_15E4ECA:       Set var_E8 = Me.Txt
  loc_15E4ED0:       Call 0.Method_Cmd_Click0 (CInt(0), var_F8)
  loc_15E4EE8:       var_9C = var_9C & "Where ItemCatCode='" & var_E4.Tag & "' And RestCode='" & var_F8.Tag & "'"
  loc_15E4F08:     Else
  loc_15E4F19:       Set var_88 = Me.Txt
  loc_15E4F1F:       Call 0.Method_Cmd_Click0 (CInt(0), var_E4)
  loc_15E4F37:       var_9C = "Where RestCode='" & var_E4.Tag & "'"
  loc_15E4F48:     End If
  loc_15E4F48:   End If
  loc_15E4F5B:   Me.FGrid.Rows = 1
  loc_15E4F67:   Set var_88 = Me.TopCtrl1
  loc_15E4F6D:   Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_15E4F82:   If ( = "Edit") Then
  loc_15E4F85:     GoTo loc_15E5431
  loc_15E4F88:   End If
  loc_15E4F9D:   var_F4 = "Select HappyHours.* From HappyHours Where ItemCode In (Select Code From ItemMast " & var_9C & " AND (LOGSITE_CODE='" & MemVar_1F95078
  loc_15E4FB2:   var_138 = CVar(var_F4 & "' or LOGSITE_CODE='HO')) AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And (AppDate Between ") 'String
  loc_15E4FC6:   Call 0.Method_Cmd_Click0 (CInt(3), var_E4)
  loc_15E4FCE:   var_D0 = CVar(var_E4) 'Address
  loc_15E4FD5:   Proc_6_7_F26918(var_E0, var_D0)
  loc_15E4FDD:   var_148 = var_138 & var_E0 
  loc_15E4FE6:   var_158 = var_148 & " And " 
  loc_15E4FF5:   Set var_E8 = Me.Txt
  loc_15E4FFB:   Call 0.Method_Cmd_Click0 (CInt(&HA), var_F8)
  loc_15E5003:   var_168 = CVar(var_F8) 'Address
  loc_15E500A:   Proc_6_7_F26918(var_178, var_168)
  loc_15E502A:   Set var_108 = Me.Txt
  loc_15E5030:   Call 0.Method_Cmd_Click0 (CInt(3), var_10C)
  loc_15E503F:   Proc_6_7_F26918(var_1B8, CVar(var_10C))
  loc_15E505F:   Set var_1EC = Me.Txt
  loc_15E5065:   Call 0.Method_Cmd_Click0 (CInt(&HA), var_1F0)
  loc_15E5074:   Proc_6_7_F26918(var_210, CVar(var_1F0))
  loc_15E5097:   Set var_244 = Me.Txt
  loc_15E509D:   Call 0.Method_Cmd_Click0 (CInt(0), var_248)
  loc_15E50B0:   var_268 = var_158 & var_178 & " Or EndDate Between " & var_1B8 & " And " & var_210 & ") And isNull(Active,'')='Y' And RestCode='" & CVar(var_248.Tag) 
  loc_15E511E:   unk_4CA816.Execute CStr(var_268 & "'"), var_D0, -1
  loc_15E5129:   Set var_AC = Me.Txt
  loc_15E5146:   If (var_AC.RecordCount > 0) Then
  loc_15E516B:     var_E4 = var_AC.Fields.Item("AppDate")
  loc_15E5196:     var_F8 = var_AC.Fields.Item("EndDate")
  loc_15E519E:     var_E0 = CVar(var_F8) 'Address
  loc_15E51DC:     var_104 = "In " & CStr(var_AC.RecordCount) & " Item discount is Already Applicable Between Date " & Proc_6_38_E69628(CVar(var_E4)) & " And "
  loc_15E5231:     If (MsgBox(CVar(var_104 & Proc_6_38_E69628(var_E0) & vbCrLf & "Do You Continue with rest of Items."), &H144, var_148, var_158, var_168) = 6) Then
  loc_15E5249:       var_F4 = "Select ItemCode From HappyHours Where ItemCode In (Select Code From ItemMast " & var_9C & " AND (LOGSITE_CODE='" & MemVar_1F95078
  loc_15E525E:       var_138 = CVar(var_F4 & "' or LOGSITE_CODE='HO')) AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And (AppDate Between ") 'String
  loc_15E526C:       Set var_88 = Me.Txt
  loc_15E5272:       Call 0.Method_Cmd_Click0 (CInt(3), var_E4)
  loc_15E527A:       var_D0 = CVar(var_E4) 'Address
  loc_15E5281:       Proc_6_7_F26918(var_E0, var_D0)
  loc_15E5289:       var_148 = var_138 & var_E0 
  loc_15E52A1:       Set var_E8 = Me.Txt
  loc_15E52A7:       Call 0.Method_Cmd_Click0 (CInt(&HA), var_F8)
  loc_15E52B6:       Proc_6_7_F26918(var_178, CVar(var_F8))
  loc_15E52D6:       Set var_108 = Me.Txt
  loc_15E52DC:       Call 0.Method_Cmd_Click0 (CInt(3), var_10C)
  loc_15E52EB:       Proc_6_7_F26918(var_1B8, CVar(var_10C))
  loc_15E530B:       Set var_1EC = Me.Txt
  loc_15E5311:       Call 0.Method_Cmd_Click0 (CInt(&HA), var_1F0)
  loc_15E5320:       Proc_6_7_F26918(var_210, CVar(var_1F0))
  loc_15E5331:       var_240 = var_148 & " And " & var_178 & " Or EndDate Between " & var_1B8 & " And " & var_210 & ") And isNull(Active,'')='Y' And RestCode='" 
  loc_15E5343:       Set var_244 = Me.Txt
  loc_15E5349:       Call 0.Method_Cmd_Click0 (CInt(0), var_248, var_104)
  loc_15E5351:       var_240 = var_248.Tag
  loc_15E53CF:       var_F0 = "Select DispCode,Code As ItemCode,Name As ItemName,ItemCatCode,ItemGroup From ItemMast " & var_9C & " And Code Not In ("
  loc_15E53EB:       var_104 = var_F0 & CStr(var_88 & CVar(var_104) & "'") & ") AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Code "
  loc_15E53F4:       unk_4CA816.Execute var_104, var_D0, -1
  loc_15E5405:       Set global_64 = var_88
  loc_15E5425:     Else
  loc_15E542A:       Set var_AC = Nothing
  loc_15E542D:       Exit Sub
  loc_15E542E:     End If
  loc_15E542E:     GoTo loc_15E548D
  loc_15E5431:     ' Referenced from: 15E4F85
  loc_15E5431:   End If
  loc_15E5445:   var_EC = "Select DispCode,Code As ItemCode,Name As ItemName,ItemCatCode,ItemGroup From ItemMast " & var_9C
  loc_15E5463:   unk_4CA816.Execute var_EC & " AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Code ", var_D0, -1
  loc_15E5474:   Set global_64 = var_88
  loc_15E548D:   ' Referenced from: 15E542E
  loc_15E54B1:   Call 0.Method_Cmd_Click0 (CInt(0), var_E4, var_EC, "Select ItemCode,Rate,AppDate From ItemRate Where RestCode='", var_D0)
  loc_15E54B9:   -1 = var_E4.Tag
  loc_15E54C2:   var_F0 = var_E8 & var_EC
  loc_15E54E0:   unk_4CA816.Execute var_F0 & "' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By AppDate Desc,ItemCode ", Me.Txt, Me.Txt
  loc_15E54EB:   Set var_94 = var_E8
  loc_15E5509:   var_96 = 1
  loc_15E5520:   If (var_94.RecordCount <= 0) Then
  loc_15E553A:     If (Me.RecordCount > 0) Then
  loc_15E553D:       ' Referenced from: 15E5839
  loc_15E554F:       If Not(Me.EOF) Then
  loc_15E5552:         var_C0 = vbNullString
  loc_15E555C:         Set var_88 = Me.FGrid
  loc_15E5571:         Set var_298 = Me.FGrid
  loc_15E5578:         var_C0 = CVar(CLng(var_96)) 'Long
  loc_15E5580:         var_1D8 = CVar(CLng(0)) 'Long
  loc_15E558A:         var_D0 = CVar(CStr(var_96)) 'String
  loc_15E5591:         LateIdCallSt
  loc_15E55D8:         var_E0 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DispCode")), CVar(CLng(1)), CVar(CLng(var_96)), var_298, CVar(Me.Fields.Item("DispCode")))) 'String
  loc_15E55DF:         LateIdCallSt
  loc_15E55F5:         var_128 = CVar(CLng(var_96)) 'Long
  loc_15E55FD:         var_230 = CVar(CLng(2)) 'Long
  loc_15E5630:         var_E0 = CVar(CStr(Me.Fields.Item("ItemCode").Value)) 'String
  loc_15E5637:         LateIdCallSt
  loc_15E5651:         var_128 = CVar(CLng(var_96)) 'Long
  loc_15E5659:         var_230 = CVar(CLng(3)) 'Long
  loc_15E567B:         var_E4 = Me.Fields.Item("ItemName")
  loc_15E568C:         var_E0 = CVar(CStr(var_E4.Value)) 'String
  loc_15E5693:         LateIdCallSt
  loc_15E56C5:         LateIdCallSt
  loc_15E56DE:         Set var_88 = Me.Txt
  loc_15E56E4:         Call 0.Method_Cmd_Click0 (CInt(4), var_E4, var_EC, var_298, CVar(CStr(0)), CVar(CLng(4)), CVar(CLng(var_96)))
  loc_15E56EC:         var_298 = var_E4.Text
  loc_15E5703:         If (var_EC = "Amount") Then
  loc_15E5706:           var_C0 = 0
  loc_15E5712:           var_1D8 = CVar(CLng(5)) 'Long
  loc_15E5720:           LateIdCallSt
  loc_15E572C:           var_C0 = CVar(CLng(var_96)) 'Long
  loc_15E5747:           Set var_88 = Me.Txt
  loc_15E574D:           Call 0.Method_Cmd_Click0 (CInt(5), var_E4, var_EC, CVar(CLng(5)), var_C0, var_298, "Discount Amount")
  loc_15E5755:           var_1D8 = var_E4.Text
  loc_15E575D:           var_D0 = CVar(var_EC) 'String
  loc_15E5764:           LateIdCallSt
  loc_15E5779:         Else
  loc_15E5787:           Set var_88 = Me.Txt
  loc_15E578D:           Call 0.Method_Cmd_Click0 (CInt(4), var_E4, var_EC, var_298, var_D0, var_C0)
  loc_15E5795:           var_E0 = var_E4.Text
  loc_15E57AC:           If (var_EC = "Percent") Then
  loc_15E57AF:             var_C0 = 0
  loc_15E57BB:             var_1D8 = CVar(CLng(5)) 'Long
  loc_15E57C9:             LateIdCallSt
  loc_15E57F0:             Set var_88 = Me.Txt
  loc_15E57F6:             Call 0.Method_Cmd_Click0 (CInt(5), var_E4, var_EC, CVar(CLng(5)), CVar(CLng(var_96)), var_298, "Discount Percent")
  loc_15E57FE:             var_1D8 = var_E4.Text
  loc_15E5806:             var_D0 = CVar(var_EC) 'String
  loc_15E580D:             LateIdCallSt
  loc_15E581F:           End If
  loc_15E581F:         End If
  loc_15E5821:         Set var_298 = Nothing 
  loc_15E582B:         var_96 = (var_96 + 1)
  loc_15E5834:         Me.MoveNext
  loc_15E5839:         GoTo loc_15E553D
  loc_15E583C:       End If
  loc_15E583C:     End If
  loc_15E583C:     GoTo loc_15E5D2B
  loc_15E583F:     ' Referenced from: 15E5D28
  loc_15E583F:   End If
  loc_15E5851:   If Not(Me.EOF) Then
  loc_15E5854:     var_C0 = vbNullString
  loc_15E585E:     Set var_88 = Me.FGrid
  loc_15E5873:     Set var_2AC = Me.FGrid
  loc_15E587A:     var_C0 = CVar(CLng(var_96)) 'Long
  loc_15E588C:     var_D0 = CVar(CStr(var_96)) 'String
  loc_15E5893:     LateIdCallSt
  loc_15E58B2:     var_C0 = "DispCode"
  loc_15E58DA:     var_E0 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_C0)), CVar(CLng(1)), CVar(CLng(var_96)), var_2AC, CVar(Me.Fields.Item(var_C0)), CVar(CLng(0)), var_C0)) 'String
  loc_15E58E1:     LateIdCallSt
  loc_15E58F7:     var_128 = CVar(CLng(var_96)) 'Long
  loc_15E58FF:     var_230 = CVar(CLng(2)) 'Long
  loc_15E5932:     var_E0 = CVar(CStr(Me.Fields.Item("ItemCode").Value)) 'String
  loc_15E5939:     LateIdCallSt
  loc_15E5953:     var_128 = CVar(CLng(var_96)) 'Long
  loc_15E598E:     var_E0 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_15E5995:     LateIdCallSt
  loc_15E59AE:     var_94.MoveFirst
  loc_15E59E3:     var_E4 = Me.Fields.Item("ItemCode")
  loc_15E59F3:     var_E0 = "ItemCode='" & var_E4.Value 
  loc_15E59FC:     var_138 = var_E0 & "'" 
  loc_15E5A00:     var_EC = CStr(var_138)
  loc_15E5A07:     var_94.Find var_EC, 0, 1
  loc_15E5A42:     If ((var_94.EOF = 0) And (var_94.BOF = 0)) Then
  loc_15E5A53:       Set var_88 = Me.Txt
  loc_15E5A59:       Call 0.Method_Cmd_Click0 (CInt(4), var_E4, var_EC, CVar(CLng(3)), var_2AC, var_E0)
  loc_15E5A61:       var_230 = var_E4.Text
  loc_15E5A78:       If (var_EC = "Amount") Then
  loc_15E5A7F:         var_128 = CVar(CLng(var_96)) 'Long
  loc_15E5A87:         var_230 = CVar(CLng(4)) 'Long
  loc_15E5AB7:         var_E0 = CVar(CStr(var_94.Fields.Item("Rate").Value)) 'String
  loc_15E5ABE:         LateIdCallSt
  loc_15E5AD7:       Else
  loc_15E5ADB:         var_128 = CVar(CLng(var_96)) 'Long
  loc_15E5AE3:         var_230 = CVar(CLng(4)) 'Long
  loc_15E5B02:         var_E4 = var_94.Fields.Item("Rate")
  loc_15E5B13:         var_E0 = CVar(CStr(var_E4.Value)) 'String
  loc_15E5B1A:         LateIdCallSt
  loc_15E5B30:       End If
  loc_15E5B33:     Else
  loc_15E5B37:       var_C0 = CVar(CLng(var_96)) 'Long
  loc_15E5B3F:       var_1D8 = CVar(CLng(4)) 'Long
  loc_15E5B48:       var_D0 = CVar(CStr(0)) 'String
  loc_15E5B4F:       LateIdCallSt
  loc_15E5B5A:     End If
  loc_15E5B68:     Set var_88 = Me.Txt
  loc_15E5B6E:     Call 0.Method_Cmd_Click0 (CInt(4), var_E4, var_EC, var_2AC, var_D0, var_1D8, var_C0)
  loc_15E5B76:     var_2AC = var_E4.Text
  loc_15E5B8D:     If (var_EC = "Amount") Then
  loc_15E5B90:       var_C0 = 0
  loc_15E5B9C:       var_1D8 = CVar(CLng(5)) 'Long
  loc_15E5BAA:       LateIdCallSt
  loc_15E5BB6:       var_C0 = CVar(CLng(var_96)) 'Long
  loc_15E5BD1:       Set var_88 = Me.Txt
  loc_15E5BD7:       Call 0.Method_Cmd_Click0 (CInt(5), var_E4, var_EC, CVar(CLng(5)), var_C0, var_2AC, "Discount Amount")
  loc_15E5BDF:       var_1D8 = var_E4.Text
  loc_15E5BE7:       var_D0 = CVar(var_EC) 'String
  loc_15E5BEE:       LateIdCallSt
  loc_15E5C03:     Else
  loc_15E5C11:       Set var_88 = Me.Txt
  loc_15E5C17:       Call 0.Method_Cmd_Click0 (CInt(4), var_E4, var_EC, var_2AC, var_D0, var_C0)
  loc_15E5C1F:       var_E0 = var_E4.Text
  loc_15E5C36:       If (var_EC = "Percent") Then
  loc_15E5C39:         var_C0 = 0
  loc_15E5C45:         var_1D8 = CVar(CLng(5)) 'Long
  loc_15E5C53:         LateIdCallSt
  loc_15E5C7A:         Set var_88 = Me.Txt
  loc_15E5C80:         Call 0.Method_Cmd_Click0 (CInt(5), var_E4, var_EC, CVar(CLng(5)), CVar(CLng(var_96)), var_2AC, "Discount Percent")
  loc_15E5C88:         var_1D8 = var_E4.Text
  loc_15E5C90:         var_D0 = CVar(var_EC) 'String
  loc_15E5C97:         LateIdCallSt
  loc_15E5CA9:       End If
  loc_15E5CA9:     End If
  loc_15E5CC4:     If (Me.Check1.Value = 1) Then
  loc_15E5CCB:       var_C0 = CVar(CLng(var_96)) 'Long
  loc_15E5CD3:       var_1D8 = CVar(CLng(6)) 'Long
  loc_15E5CD8:       var_278 = "Yes"
  loc_15E5CE1:       LateIdCallSt
  loc_15E5CEC:     Else
  loc_15E5CF0:       var_C0 = CVar(CLng(var_96)) 'Long
  loc_15E5CF8:       var_1D8 = CVar(CLng(6)) 'Long
  loc_15E5CFD:       var_278 = "No"
  loc_15E5D06:       LateIdCallSt
  loc_15E5D0E:     End If
  loc_15E5D10:     Set var_2AC = Nothing 
  loc_15E5D1A:     var_96 = (var_96 + 1)
  loc_15E5D23:     Me.MoveNext
  loc_15E5D28:     GoTo loc_15E583F
  loc_15E5D2B:     ' Referenced from: 15E583C
  loc_15E5D2B:   End If
  loc_15E5D34:   var_8C = Me.RecordCount
  loc_15E5D42:   If (var_8C > 0) Then
  loc_15E5D58:     Me.FGrid.FixedRows = 1
  loc_15E5D60:   End If
  loc_15E5D66:   If (var_96 = 1) Then
  loc_15E5D7C:     Me.FGrid.Rows = 1
  loc_15E5D99:     var_E0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_15E5DA1:     Set var_E4 = Me.FGrid
  loc_15E5DD0:     Me.FGrid.FixedRows = 1
  loc_15E5DE6:     var_C0 = "* Nothig To Examine *"
  loc_15E5DF1:     MsgBox(var_C0, 0, var_E0, var_138, var_148)
  loc_15E5E0C:     Set var_88 = Me.Cmd
  loc_15E5E12:     Call 0.Method_Cmd_Click0 (1, var_E4, 0, FGrid.DispID_10000, var_E0, var_96, var_2AC)
  loc_15E5E1A:     var_E4.Enabled = var_278
  loc_15E5E29:   Else
  loc_15E5E34:     Set var_88 = Me.Cmd
  loc_15E5E3A:     Call 0.Method_Cmd_Click0 (1, var_E4, &HFF, var_1D8, var_C0)
  loc_15E5E42:     var_E4.Enabled = var_2AC
  loc_15E5E4E:   End If
  loc_15E5E51: Else
  loc_15E5E57:   If (var_AE = 1) Then
  loc_15E5E5A:     Call Proc_180_56_1797CD0(var_278, var_1D8)
  loc_15E5E62:   Else
  loc_15E5E68:     If (var_AE = 2) Then
  loc_15E5E78:       Me.Global.Unload Me
  loc_15E5E80:     End If
  loc_15E5E80:   End If
  loc_15E5E80: End If
  loc_15E5E80: Exit Sub
  loc_15E5E89: Set var_88 = Err()
  loc_15E5E8F: Call 0.Method_arg_1C (var_8C)
  loc_15E5E9C: Set var_E4 = Err()
  loc_15E5EA2: Call 0.Method_arg_2C (var_F0)
  loc_15E5ED3: MsgBox(CVar(CStr(var_8C) & " : " & var_F0), &H10, "Message ", var_138, var_148)
  loc_15E5EF3: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F80594
  'Data Table: 4CA7F4
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F80454: Call Proc_180_54_EF7AF0()
  loc_F8046C: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F80475: Set var_9C = Me.FGrid
  loc_F804AB: Set var_104 = Me.TxtGrid
  loc_F804B1: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F804B9: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_F804EA: var_110 = CLng(Me.FGrid.Col)
  loc_F804FA: If (var_110 = CLng(4)) Then
  loc_F8050C:   Set var_88 = Me.TxtGrid
  loc_F80512:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C, &HB)
  loc_F8051A:   var_9C.MaxLength = var_110
  loc_F80529: Else
  loc_F80530:   If (var_110 = CLng(5)) Then
  loc_F80542:     Set var_88 = Me.TxtGrid
  loc_F80548:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_F80550:     var_9C.MaxLength = &HB
  loc_F8055F:   Else
  loc_F80566:     If (var_110 = CLng(6)) Then
  loc_F80578:       Set var_88 = Me.TxtGrid
  loc_F8057E:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_F80586:       var_9C.MaxLength = 3
  loc_F80592:     End If
  loc_F80592:   End If
  loc_F80592: End If
  loc_F80592: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10C7394
  'Data Table: 4CA7F4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_10C70A0: On Error Goto loc_10C738B
  loc_10C70AD: If (CLng(Shift) = &H1B) Then
  loc_10C70BD:   Set var_88 = Me.TxtGrid
  loc_10C70C3:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_10C70DD:   Set var_94 = Me.TxtGrid
  loc_10C70E3:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_10C70EB:   var_98.Text = var_8C.Tag
  loc_10C7107:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10C710C:   Call Proc_180_54_EF7AF0(arg_14)
  loc_10C7115:   Set var_88 = Me.FGrid
  loc_10C7132:   Set var_88 = Me.TxtGrid
  loc_10C7138:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_10C7140:   var_8C.Visible = False
  loc_10C714C:   Exit Sub
  loc_10C714D: End If
  loc_10C7160: var_AC = CLng(Me.FGrid.Col)
  loc_10C7170: If (var_AC = CLng(4)) Then
  loc_10C71B3:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_82 = &HFF))) Then
  loc_10C71BC:     Call Proc_180_51_10712D4(KeyCode, var_AE)
  loc_10C71C7:     If (var_AE = &HFF) Then
  loc_10C720D:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82, 4)
  loc_10C721D:     End If
  loc_10C721D:   End If
  loc_10C7220: Else
  loc_10C7227:   If (var_AC = CLng(5)) Then
  loc_10C726A:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_82 = &HFF))) Then
  loc_10C7273:       Call Proc_180_51_10712D4(KeyCode, var_AE, 0, 0)
  loc_10C727E:       If (var_AE = &HFF) Then
  loc_10C72C4:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82, 5)
  loc_10C72D4:       End If
  loc_10C72D4:     End If
  loc_10C72D7:   Else
  loc_10C72DE:     If (var_AC = CLng(6)) Then
  loc_10C7321:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_82 = &HFF))) Then
  loc_10C732A:         Call Proc_180_51_10712D4(KeyCode, var_AE, 0, 0)
  loc_10C7335:         If (var_AE = &HFF) Then
  loc_10C737B:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82, 6, 0)
  loc_10C738B:         End If
  loc_10C738B:       End If
  loc_10C738B:       ' Referenced from: 10C70A0
  loc_10C738B:     End If
  loc_10C738B:   End If
  loc_10C738B: End If
  loc_10C738B: Proc_6_60_E63754(0, 0, 0)
  loc_10C7390: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F836E4
  'Data Table: 4CA7F4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As MSHFlexGrid
  Dim var_94 As Variant
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  loc_F83597: Proc_6_58_E06050(arg_10)
  loc_F835A2: Proc_6_133_E7FB08(var_94)
  loc_F835AB: arg_10 = CInt(var_94)
  loc_F835B4: var_96 = KeyAscii
  loc_F835BD: If (var_96 = 0) Then
  loc_F835D3:   var_A0 = CLng(Me.FGrid.Col)
  loc_F835E3:   If Not (var_A0 = CLng(4)) Then
  loc_F835ED:     If (var_A0 = CLng(5)) Then
  loc_F835F0:     End If
  loc_F835FA:     Set var_9C = Me.TxtGrid
  loc_F83600:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, var_A0)
  loc_F8361B:     Proc_6_42_129B55C(var_A4, arg_10, 8, 2)
  loc_F8362A:   Else
  loc_F83631:     If (var_A0 = CLng(6)) Then
  loc_F8365D:       If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_F8366D:         Set var_9C = Me.TxtGrid
  loc_F83673:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, "Yes")
  loc_F8367B:         var_A4.Text = var_96
  loc_F8368A:       Else
  loc_F836B3:         If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_F836C3:           Set var_9C = Me.TxtGrid
  loc_F836C9:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, "No")
  loc_F836D1:           var_A4.Text = arg_10
  loc_F836DD:         End If
  loc_F836DD:       End If
  loc_F836DF:       arg_10 = 0
  loc_F836E2:     End If
  loc_F836E2:   End If
  loc_F836E2: End If
  loc_F836E2: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E33304
  'Data Table: 4CA7F4
  Dim var_9C As Long
  loc_E332DC: On Error Goto loc_E332FC
  loc_E332F2: var_9C = CLng(Me.FGrid.Col)
  loc_E332FB: Exit Sub
  loc_E332FC: ' Referenced from: E332DC
  loc_E332FC: Proc_6_60_E63754(var_9C)
  loc_E33301: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E24A34
  'Data Table: 4CA7F4
  Dim arg_10 As Integer
  loc_E24A1C: If (Cancel = 0) Then
  loc_E24A25:   Call Proc_180_51_10712D4(Cancel, var_88)
  loc_E24A2E:   arg_10 = Not(var_88)
  loc_E24A31: End If
  loc_E24A31: Exit Sub
  loc_E24A32: BranchFVar 31999
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1392BBC
  'Data Table: 4CA7F4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  Dim var_A0 As String
  loc_13922E6: Set var_88 = Me.Txt
  loc_13922EC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_13922FA: Proc_6_74_E23240(var_8C)
  loc_1392306: Call Proc_180_54_EF7AF0(var_8C)
  loc_139230E: var_92 = Index
  loc_1392319: If (var_92 = CInt(0)) Then
  loc_1392333:   If (Me.RecordCount > 0) Then
  loc_1392341:     Set var_8C = Me.FGPoint
  loc_1392359:     Proc_6_137_1192FDC(Me.DGRest, global_60, Index)
  loc_1392367:   End If
  loc_13923B5:   Set var_88 = Me.Txt
  loc_13923BB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13923C3:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13923DB:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_13923DE:     Exit Sub
  loc_13923DF:   End If
  loc_13923EC:   Set var_88 = Me.Txt
  loc_13923F2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13923FA:   var_A0 = var_8C.Text
  loc_1392402:   var_D4 = CVar(var_A0) 'String
  loc_1392447:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1392450:     Me.MoveFirst
  loc_1392475:     Set var_88 = Me.Txt
  loc_139247B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1392483:     0 = var_8C.Text
  loc_1392491:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_13924A7:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_13924BF:   End If
  loc_13924C2: Else
  loc_13924CA:   If (var_92 = CInt(2)) Then
  loc_13924DC:     Me.Filter = 0
  loc_13924F2:     Set var_88 = Me.Txt
  loc_13924F8:     Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1392500:     var_A0 = var_8C.Tag
  loc_139251A:     Me.Filter = CVar("RestCode='" & var_A0 & "'")
  loc_1392547:     If (Me.RecordCount > 0) Then
  loc_1392555:       Set var_8C = Me.FGPoint
  loc_139256D:       Proc_6_137_1192FDC(Me.DGItemCat, global_52)
  loc_139257B:     End If
  loc_13925C9:     Set var_88 = Me.Txt
  loc_13925CF:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13925D7:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13925EF:     If (Index Or (var_A0 = vbNullString)) Then
  loc_13925F2:       Exit Sub
  loc_13925F3:     End If
  loc_1392600:     Set var_88 = Me.Txt
  loc_1392606:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_139260E:     var_A0 = var_8C.Text
  loc_1392616:     var_D4 = CVar(var_A0) 'String
  loc_139265B:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1392664:       Me.MoveFirst
  loc_1392689:       Set var_88 = Me.Txt
  loc_139268F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1392697:       0 = var_8C.Text
  loc_13926A5:       Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_13926BB:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_13926D3:     End If
  loc_13926D6:   Else
  loc_13926DE:     If (var_92 = CInt(1)) Then
  loc_13926F0:       Me.Filter = 0
  loc_1392706:       Set var_88 = Me.Txt
  loc_139270C:       Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1392714:       var_A0 = var_8C.Tag
  loc_139272E:       Me.Filter = CVar("RestCode='" & var_A0 & "'")
  loc_139275B:       If (Me.RecordCount > 0) Then
  loc_1392769:         Set var_8C = Me.FGPoint
  loc_1392781:         Proc_6_137_1192FDC(Me.DGItemGrp, global_56)
  loc_139278F:       End If
  loc_13927DD:       Set var_88 = Me.Txt
  loc_13927E3:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13927EB:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1392803:       If (Index Or (var_A0 = vbNullString)) Then
  loc_1392806:         Exit Sub
  loc_1392807:       End If
  loc_1392814:       Set var_88 = Me.Txt
  loc_139281A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1392822:       var_A0 = var_8C.Text
  loc_139282A:       var_D4 = CVar(var_A0) 'String
  loc_139284B:       var_B4 = Me.Fields.Item("Name")
  loc_139286F:       If CBool(var_D4 <> var_B4.Value) Then
  loc_1392878:         Me.MoveFirst
  loc_139289D:         Set var_88 = Me.Txt
  loc_13928A3:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_13928AB:         0 = var_8C.Text
  loc_13928B9:         Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_13928CF:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_13928E7:       End If
  loc_13928EA:     Else
  loc_13928F2:       If (var_92 = CInt(6)) Then
  loc_1392902:         Set var_88 = Me.Txt
  loc_1392908:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1392910:         var_8C.Text = vbNullString
  loc_1392956:         Set var_88 = Me.Txt
  loc_139295C:         Call 0.Method_Txt_GotFocus0 (CInt(6), var_8C, CStr(Format(Time, "HH")))
  loc_1392964:         var_8C.Text = 1
  loc_139297F:       Else
  loc_1392987:         If (var_92 = CInt(8)) Then
  loc_1392997:           Set var_88 = Me.Txt
  loc_139299D:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13929A5:           var_8C.Text = vbNullString
  loc_13929EB:           Set var_88 = Me.Txt
  loc_13929F1:           Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C, CStr(Format(Time, "HH")))
  loc_13929F9:           var_8C.Text = 1
  loc_1392A14:         Else
  loc_1392A1C:           If (var_92 = CInt(7)) Then
  loc_1392A2C:             Set var_88 = Me.Txt
  loc_1392A32:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, vbNullString)
  loc_1392A3A:             var_8C.Text = 1
  loc_1392A80:             Set var_88 = Me.Txt
  loc_1392A86:             Call 0.Method_Txt_GotFocus0 (CInt(7), var_8C, CStr(Format(Time, "NN")))
  loc_1392A8E:             var_8C.Text = 1
  loc_1392AA9:           Else
  loc_1392AB1:             If (var_92 = CInt(9)) Then
  loc_1392AC1:               Set var_88 = Me.Txt
  loc_1392AC7:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, vbNullString)
  loc_1392ACF:               var_8C.Text = 1
  loc_1392B06:               var_A0 = CStr(Format(Time, "NN"))
  loc_1392B15:               Set var_88 = Me.Txt
  loc_1392B1B:               Call 0.Method_Txt_GotFocus0 (CInt(9), var_8C, var_A0)
  loc_1392B23:               var_8C.Text = 1
  loc_1392B3E:             Else
  loc_1392B46:               If Not (var_92 = CInt(6)) Then
  loc_1392B51:                 If Not (var_92 = CInt(8)) Then
  loc_1392B5C:                   If Not (var_92 = CInt(7)) Then
  loc_1392B67:                     If (var_92 = CInt(9)) Then
  loc_1392B6A:                     End If
  loc_1392B6A:                   End If
  loc_1392B6A:                 End If
  loc_1392B77:                 Set var_88 = Me.Txt
  loc_1392B7D:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1392B85:                 1 = var_8C.Text
  loc_1392B97:                 Set var_90 = Me.Txt
  loc_1392B9D:                 Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_1392BA5:                 var_B4.SelText = var_A0
  loc_1392BB8:               End If
  loc_1392BB8:             End If
  loc_1392BB8:           End If
  loc_1392BB8:         End If
  loc_1392BB8:       End If
  loc_1392BB8:     End If
  loc_1392BB8:   End If
  loc_1392BB8: End If
  loc_1392BB8: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '117B960
  'Data Table: 4CA7F4
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  loc_117B59E: If (CLng(Shift) = &H1B) Then
  loc_117B5A1:   Call Proc_180_54_EF7AF0()
  loc_117B5A6:   Exit Sub
  loc_117B5A7: End If
  loc_117B5AA: var_86 = KeyCode
  loc_117B5B5: If (var_86 = CInt(0)) Then
  loc_117B5D5:   Set var_9C = Me.FGPoint
  loc_117B5E0:   Set var_98 = Nothing
  loc_117B60E:   Proc_6_69_134A630(Me.DGRest, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_117B67D:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_117B6A3:     Proc_6_138_106E830(Me.DGRest, global_60, KeyCode, Me.FGPoint, 1)
  loc_117B6B1:   End If
  loc_117B6B4: Else
  loc_117B6BC:   If (var_86 = CInt(2)) Then
  loc_117B6E7:     Set var_98 = Nothing
  loc_117B715:     Proc_6_69_134A630(Me.DGItemCat, Me.Txt, KeyCode, global_52, Shift, 0, 1)
  loc_117B784:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_117B78B:       Set var_98 = Me.DGItemCat
  loc_117B7AA:       Proc_6_138_106E830(var_98, global_52, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_117B7B8:     End If
  loc_117B7BB:   Else
  loc_117B7C3:     If (var_86 = CInt(1)) Then
  loc_117B7E3:       Set var_9C = Me.FGPoint
  loc_117B81C:       Proc_6_69_134A630(Me.DGItemGrp, Me.Txt, KeyCode, global_56, Shift, 0, 1, Nothing)
  loc_117B88B:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_117B8B1:         Proc_6_138_106E830(Me.DGItemGrp, global_56, KeyCode, Me.FGPoint, var_9C, 0)
  loc_117B8BF:       End If
  loc_117B8BF:     End If
  loc_117B8BF:   End If
  loc_117B8BF: End If
  loc_117B8F0: Set var_98 = Me.DGRest
  loc_117B915: If (((CBool(Me.DGItemCat.Visible) = 0) And (CBool(Me.DGItemGrp.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_117B92B:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_117B934:     Proc_6_76_E533C8(Shift, arg_14, 0, var_98)
  loc_117B939:   End If
  loc_117B94E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_117B957:     Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_117B95C:   End If
  loc_117B95C: End If
  loc_117B95C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1112A00
  'Data Table: 4CA7F4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_11126B3: Proc_6_58_E06050(arg_10)
  loc_11126BE: Proc_6_133_E7FB08(var_94)
  loc_11126C7: arg_10 = CInt(var_94)
  loc_11126D0: var_96 = KeyAscii
  loc_11126DB: If (var_96 = CInt(0)) Then
  loc_11126FA:   If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_1112727:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_1112759:     Proc_6_138_106E830(Me.DGRest, global_60, KeyAscii, Me.FGPoint)
  loc_1112767:   End If
  loc_111276A: Else
  loc_1112772:   If (var_96 = CInt(2)) Then
  loc_1112791:     If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_11127BE:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_52, arg_10, "Name")
  loc_11127F0:       Proc_6_138_106E830(Me.DGItemCat, global_52, KeyAscii, Me.FGPoint, 0)
  loc_11127FE:     End If
  loc_1112801:   Else
  loc_1112809:     If (var_96 = CInt(1)) Then
  loc_1112828:       If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_1112855:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_111286F:         Set var_A8 = Me.FGPoint
  loc_1112887:         Proc_6_138_106E830(Me.DGItemGrp, global_56, KeyAscii, var_A8, 0)
  loc_1112895:       End If
  loc_1112898:     Else
  loc_11128A0:       If (var_96 = CInt(4)) Then
  loc_11128CC:         If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_11128DC:           Set var_9C = Me.Txt
  loc_11128E2:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Amount", 0)
  loc_11128EA:           var_A8.Text = var_96
  loc_11128F9:         Else
  loc_1112922:           If (Ucase(Chr(CLng(arg_10))) = "P") Then
  loc_1112932:             Set var_9C = Me.Txt
  loc_1112938:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Percent")
  loc_1112940:             var_A8.Text = arg_10
  loc_111294C:           End If
  loc_111294C:         End If
  loc_111294E:         arg_10 = 0
  loc_1112954:       Else
  loc_111295C:         If (var_96 = CInt(5)) Then
  loc_1112969:           Set var_9C = Me.Txt
  loc_111296F:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_111298A:           Proc_6_42_129B55C(var_A8, arg_10, 8)
  loc_1112999:         Else
  loc_11129A1:           If Not (var_96 = CInt(6)) Then
  loc_11129AC:             If Not (var_96 = CInt(7)) Then
  loc_11129B7:               If Not (var_96 = CInt(8)) Then
  loc_11129C2:                 If (var_96 = CInt(9)) Then
  loc_11129C5:                 End If
  loc_11129C5:               End If
  loc_11129C5:             End If
  loc_11129CF:             Set var_9C = Me.Txt
  loc_11129D5:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 2)
  loc_11129F0:             Proc_6_42_129B55C(var_A8, arg_10, 2)
  loc_11129FC:           End If
  loc_11129FC:         End If
  loc_11129FC:       End If
  loc_11129FC:     End If
  loc_11129FC:   End If
  loc_11129FC: End If
  loc_11129FC: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B51C
  'Data Table: 4CA7F4
  loc_E4B4FA: Set var_88 = Me.Txt
  loc_E4B500: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B50E: Proc_6_73_E23294(var_8C)
  loc_E4B51A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13CBA98
  'Data Table: 4CA7F4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_A0 As TextBox
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_9C As TextBox
  loc_13CB107: var_86 = Cancel
  loc_13CB112: If Not (var_86 = CInt(3)) Then
  loc_13CB11D:   If (var_86 = CInt(&HA)) Then
  loc_13CB120:   End If
  loc_13CB12D:   Set var_8C = Me.Txt
  loc_13CB133:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CB152:   If (var_90.Text <> vbNullString) Then
  loc_13CB15F:     Set var_8C = Me.Txt
  loc_13CB165:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CB185:     Set var_9C = Me.Txt
  loc_13CB18B:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_13CB193:     var_A0.Text = Proc_6_33_15125B8(var_90)
  loc_13CB1A9:   Else
  loc_13CB1BB:     Set var_8C = Me.Txt
  loc_13CB1C1:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CB1C9:     var_90.Text = CStr(MemVar_1F950EC)
  loc_13CB1D8:   End If
  loc_13CB1DB: Else
  loc_13CB1E3:   If (var_86 = CInt(0)) Then
  loc_13CB1F1:     Set var_8C = Me.Txt
  loc_13CB1F7:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_13CB1FF:     var_94 = "Rest Name"
  loc_13CB220:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_13CB225:       arg_10 = &HFF
  loc_13CB228:       Exit Sub
  loc_13CB229:     End If
  loc_13CB277:     Set var_8C = Me.Txt
  loc_13CB27D:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CB285:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_13CB29D:     If (arg_10 Or (var_94 = vbNullString)) Then
  loc_13CB2AD:       Set var_8C = Me.Txt
  loc_13CB2B3:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CB2BB:       var_90.Text = vbNullString
  loc_13CB2D4:       Set var_8C = Me.Txt
  loc_13CB2DA:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CB2E2:       var_90.Tag = vbNullString
  loc_13CB2F1:     Else
  loc_13CB32C:       Set var_98 = Me.Txt
  loc_13CB332:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_13CB33A:       var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13CB36D:       var_90 = Me.Fields.Item("Code")
  loc_13CB37E:       var_94 = CStr(var_90.Value)
  loc_13CB38B:       Set var_98 = Me.Txt
  loc_13CB391:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_13CB399:       var_9C.Tag = var_94
  loc_13CB3AF:     End If
  loc_13CB3B2:   Else
  loc_13CB3BA:     If (var_86 = CInt(2)) Then
  loc_13CB40B:       Set var_8C = Me.Txt
  loc_13CB411:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CB419:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_13CB431:       If (var_86 Or (var_94 = vbNullString)) Then
  loc_13CB441:         Set var_8C = Me.Txt
  loc_13CB447:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CB44F:         var_90.Text = vbNullString
  loc_13CB468:         Set var_8C = Me.Txt
  loc_13CB46E:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CB476:         var_90.Tag = vbNullString
  loc_13CB485:       Else
  loc_13CB4C0:         Set var_98 = Me.Txt
  loc_13CB4C6:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_13CB4CE:         var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13CB501:         var_90 = Me.Fields.Item("Code")
  loc_13CB51F:         Set var_98 = Me.Txt
  loc_13CB525:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_13CB52D:         var_9C.Tag = CStr(var_90.Value)
  loc_13CB543:       End If
  loc_13CB546:     Else
  loc_13CB54E:       If (var_86 = CInt(1)) Then
  loc_13CB59F:         Set var_8C = Me.Txt
  loc_13CB5A5:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CB5C5:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_13CB5D5:           Set var_8C = Me.Txt
  loc_13CB5DB:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CB5E3:           var_90.Text = vbNullString
  loc_13CB5FC:           Set var_8C = Me.Txt
  loc_13CB602:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CB60A:           var_90.Tag = vbNullString
  loc_13CB619:         Else
  loc_13CB654:           Set var_98 = Me.Txt
  loc_13CB65A:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_13CB662:           var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13CB695:           var_90 = Me.Fields.Item("Code")
  loc_13CB6B3:           Set var_98 = Me.Txt
  loc_13CB6B9:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_13CB6C1:           var_9C.Tag = CStr(var_90.Value)
  loc_13CB6D7:         End If
  loc_13CB6DA:       Else
  loc_13CB6E2:         If (var_86 = CInt(4)) Then
  loc_13CB6EF:           Set var_8C = Me.Txt
  loc_13CB6F5:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_13CB730:           If (Ucase(Left(CVar(var_90), 1)) = "P") Then
  loc_13CB740:             Set var_8C = Me.Txt
  loc_13CB746:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CB74E:             var_90.Text = "Percent"
  loc_13CB75D:           Else
  loc_13CB76A:             Set var_8C = Me.Txt
  loc_13CB770:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CB778:             var_90.Text = "Amount"
  loc_13CB784:           End If
  loc_13CB787:         Else
  loc_13CB78F:           If (var_86 = CInt(5)) Then
  loc_13CB79C:             Set var_8C = Me.Txt
  loc_13CB7A2:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CB7CE:             var_94 = CStr(Format(CVar(var_90), "0.00"))
  loc_13CB7DC:             Set var_98 = Me.Txt
  loc_13CB7E2:             Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_94)
  loc_13CB7EA:             var_9C.Text = 1
  loc_13CB807:           Else
  loc_13CB80F:             If Not (var_86 = CInt(6)) Then
  loc_13CB81A:               If (var_86 = CInt(8)) Then
  loc_13CB81D:               End If
  loc_13CB82A:               Set var_8C = Me.Txt
  loc_13CB830:               Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CB838:               1 = var_90.Text
  loc_13CB84F:               If (var_94 = vbNullString) Then
  loc_13CB87D:                 var_94 = CStr(Format(Time, "HH"))
  loc_13CB88B:                 Set var_8C = Me.Txt
  loc_13CB891:                 Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CB899:                 var_90.Text = 1
  loc_13CB8B1:                 Exit Sub
  loc_13CB8B2:               End If
  loc_13CB8BF:               Set var_8C = Me.Txt
  loc_13CB8C5:               Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CB8CD:               1 = var_90.Text
  loc_13CB8E9:               If (CDbl(Val(var_94)) > CDbl(&H18)) Then
  loc_13CB917:                 var_94 = CStr(Format(Time, "HH"))
  loc_13CB925:                 Set var_8C = Me.Txt
  loc_13CB92B:                 Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CB933:                 var_90.Text = 1
  loc_13CB94B:                 Exit Sub
  loc_13CB94C:               End If
  loc_13CB94F:             Else
  loc_13CB957:               If Not (var_86 = CInt(7)) Then
  loc_13CB962:                 If (var_86 = CInt(9)) Then
  loc_13CB965:                 End If
  loc_13CB972:                 Set var_8C = Me.Txt
  loc_13CB978:                 Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CB980:                 1 = var_90.Text
  loc_13CB997:                 If (var_94 = vbNullString) Then
  loc_13CB9C5:                   var_94 = CStr(Format(Time, "NN"))
  loc_13CB9D3:                   Set var_8C = Me.Txt
  loc_13CB9D9:                   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CB9E1:                   var_90.Text = 1
  loc_13CB9F9:                   Exit Sub
  loc_13CB9FA:                 End If
  loc_13CBA07:                 Set var_8C = Me.Txt
  loc_13CBA0D:                 Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CBA15:                 1 = var_90.Text
  loc_13CBA31:                 If (CDbl(Val(var_94)) > CDbl(&H3C)) Then
  loc_13CBA6D:                   Set var_8C = Me.Txt
  loc_13CBA73:                   Call 0.Method_Txt_Validate0 (Cancel, var_90, CStr(Format(Time, "NN")))
  loc_13CBA7B:                   var_90.Text = 1
  loc_13CBA93:                   Exit Sub
  loc_13CBA94:                 End If
  loc_13CBA94:               End If
  loc_13CBA94:             End If
  loc_13CBA94:           End If
  loc_13CBA94:         End If
  loc_13CBA94:       End If
  loc_13CBA94:     End If
  loc_13CBA94:   End If
  loc_13CBA94: End If
  loc_13CBA94: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F3CDB4
  'Data Table: 4CA7F4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3CCAB: Me.DGRest.Visible = False
  loc_F3CCCA: If (Me.RecordCount > 0) Then
  loc_F3CD09:   Set var_B4 = Me.Txt
  loc_F3CD0F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3CD17:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3CD4A:   var_B0 = Me.Fields.Item("Name")
  loc_F3CD69:   Set var_B4 = Me.Txt
  loc_F3CD6F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3CD77:   var_B8.Text = CStr(var_B0.Value)
  loc_F3CD8D: End If
  loc_F3CD98: Set var_A8 = Me.Txt
  loc_F3CD9E: Call 0.Method_DGRest_UnknownEvent_90 (CInt(0))
  loc_F3CDA6: var_B0.SetFocus
  loc_F3CDB2: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'EA6FB4
  'Data Table: 4CA7F4
  Dim var_A8 As Variant
  loc_EA6F34: Set var_88 = Me.DGRest
  loc_EA6F5E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6F66: Set var_BC = Me.DGRest
  loc_EA6FA2: Proc_6_138_106E830(Me.DGRest, global_60, CInt(0), Me.FGPoint)
  loc_EA6FB0: Exit Sub
  loc_EA6FB1: DGRest.DispID_1B = var_A8
End Sub

Private Sub FGrid_UnknownEvent_0 'E444DC
  'Data Table: 4CA7F4
  Dim var_8C As TextBox
  loc_E444BB: Set var_88 = Me.TxtGrid
  loc_E444C1: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E444C9: var_8C.Visible = False
  loc_E444D5: Call Proc_180_54_EF7AF0()
  loc_E444DA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'DFD800
  'Data Table: 4CA7F4
  loc_DFD7FC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'DFC2E0
  'Data Table: 4CA7F4
  loc_DFC2DC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF16C
  'Data Table: 4CA7F4
  loc_DFF164: Call Proc_180_50_DFDB40()
  loc_DFF169: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '102E508
  'Data Table: 4CA7F4
  Dim var_B4 As MSHFlexGrid
  Dim var_9C As String
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_102E340: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_102E34B:   var_9C = "+{Tab}"
  loc_102E351:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_102E35B:   Cancel = 0
  loc_102E361: Else
  loc_102E3B8:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_102E3BB:   End If
  loc_102E3BB: End If
  loc_102E3C1: global_80 = Cancel
  loc_102E3E7: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_102E40B: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_102E421:   var_DC = CLng(Me.FGrid.Col)
  loc_102E431:   If (var_DC = CLng(4)) Then
  loc_102E447:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102E45F:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_102E464:     var_11C = vbNullString
  loc_102E46E:     Set var_B4 = Me.FGrid
  loc_102E474:     LateIdCallSt
  loc_102E48F:   Else
  loc_102E496:     If (var_DC = CLng(5)) Then
  loc_102E4AC:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102E4C4:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_102E4C9:       var_11C = vbNullString
  loc_102E4D3:       Set var_B4 = Me.FGrid
  loc_102E4D9:       LateIdCallSt
  loc_102E4F1:     End If
  loc_102E4F1:   End If
  loc_102E4F1: End If
  loc_102E4F7: If (Cancel = &HD) Then
  loc_102E4FF:   global_82 = 0
  loc_102E502: End If
  loc_102E504: Cancel = 0
  loc_102E507: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10D98
  'Data Table: 4CA7F4
  loc_E10D89: Call FGrid_UnknownEvent_C()
  loc_E10D93: global_82 = 0
  loc_E10D96: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'FBED3C
  'Data Table: 4CA7F4
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_B0 As String
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_FBEBAB: var_9C = CLng(Me.FGrid.Col)
  loc_FBEBBB: If Not (var_9C = CLng(4)) Then
  loc_FBEBC5:   If Not (var_9C = CLng(5)) Then
  loc_FBEBCF:     If (var_9C = CLng(6)) Then
  loc_FBEBD2:     End If
  loc_FBEBD2:   End If
  loc_FBEBD6:   Set var_C4 = Me.FGrid
  loc_FBEBFA:   var_B0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_FBEC27:   Set var_B4 = var_C4
  loc_FBEC39:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_FBEC61:   Set var_88 = Me.TxtGrid
  loc_FBEC67:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_B0, Asc(var_B0))
  loc_FBEC6F:   0 = var_B4.Text
  loc_FBEC88:   If (Len(var_B0) <= 1) Then
  loc_FBEC97:     Set var_88 = Me.TxtGrid
  loc_FBEC9D:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_B0)
  loc_FBECA5:     var_CA = var_B4.Text
  loc_FBECB6:     Set var_B8 = Me.TxtGrid
  loc_FBECBC:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FBECC4:     var_C4.Text = var_B0
  loc_FBECD7:   End If
  loc_FBECE3:   Set var_88 = Me.TxtGrid
  loc_FBECE9:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_FBED03:   Set var_B8 = Me.TxtGrid
  loc_FBED09:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FBED11:   var_C4.SelStart = Len(var_B4.Text)
  loc_FBED24: End If
  loc_FBED2E: If (CLng(Cancel) <> &HD) Then
  loc_FBED36:   global_82 = &HFF
  loc_FBED39: End If
  loc_FBED39: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'E28CC0
  'Data Table: 4CA7F4
  loc_E28CB9: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_E28CBC:   Exit Sub
  loc_E28CBD: End If
  loc_E28CBD: Exit Sub
  loc_E28CBE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9C750
  'Data Table: 4CA7F4
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9C6F3: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9C70B: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9C733: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9C74E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'DFC5EC
  'Data Table: 4CA7F4
  loc_DFC5E8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'DFC688
  'Data Table: 4CA7F4
  loc_DFC684: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E007BC
  'Data Table: 4CA7F4
  loc_E007B4: Call Proc_180_54_EF7AF0()
  loc_E007B9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'ED9D44
  'Data Table: 4CA7F4
  Dim var_8C As MSHFlexGrid
  Dim var_B4 As TextBox
  loc_ED9C90: On Error Goto loc_ED9D3C
  loc_ED9CB6: Call Proc_180_53_EB6210(Proc_5_1_100EC1C("ADD", Me))
  loc_ED9CC1: Call Proc_180_52_E9D4E8(global_68)
  loc_ED9CEE: Me.FGrid.Rows = 2
  loc_ED9D09: Me.FGrid.FixedRows = 1
  loc_ED9D11: Call Proc_180_55_10FA100(Me.FGrid.Text)
  loc_ED9D21: Set var_8C = Me.Txt
  loc_ED9D27: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_ED9D2F: var_B4.SetFocus
  loc_ED9D3B: Exit Sub
  loc_ED9D3C: ' Referenced from: ED9C90
  loc_ED9D3C: Proc_6_60_E63754(var_B4)
  loc_ED9D41: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E7870C
  'Data Table: 4CA7F4
  loc_E786AC: On Error Goto loc_E78705
  loc_E786BD: If (Proc_183_55_FE8490(global_68) = &HFF) Then
  loc_E786C0:   Exit Sub
  loc_E786C1: End If
  loc_E786E4: Call Proc_180_53_EB6210(Proc_5_1_100EC1C("EDIT", Me))
  loc_E786F3: Set var_8C = Me.FGrid
  loc_E78704: Exit Sub
  loc_E78705: ' Referenced from: E786AC
  loc_E78705: Proc_6_60_E63754(FGrid.DispID_8001)
  loc_E7870A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '1115C68
  'Data Table: 4CA7F4
  Dim unk_4CA816 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_144 As String
  loc_111594C: On Error Goto loc_1115C19
  loc_111595D: If (Proc_183_56_FE8B08(global_68) = &HFF) Then
  loc_1115960:   Exit Sub
  loc_1115961: End If
  loc_1115998: If (MsgBox("This Action Will Delete All The Entries Associated With This Scheme . Are You Sure?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_11159A4:   unk_4CA816.BeginTrans var_118
  loc_11159BA:   var_94 = Me.Bookmark 'Variant
  loc_1115A10:   var_114 = "Delete From HappyHours Where schemeCode = '" & Me.Fields.Item("Code").Value & "' AND   (LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1115A27:   unk_4CA816.Execute CStr(var_114 & "' or LOGSITE_CODE='HO')"), var_164, -1
  loc_1115A8F:   var_F4 = "Delete from HappyHoursHead WHERE schemeCode ='" & Me.Fields.Item("Code").Value & "' AND (LOGSITE_CODE='" 
  loc_1115A99:   var_114 = var_F4 & CVar(MemVar_1F95078) 
  loc_1115AB0:   unk_4CA816.Execute CStr(var_114 & "' or LOGSITE_CODE='HO') "), var_164, -1
  loc_1115AFF:   var_1A0 = 0
  loc_1115B12:   var_198 = 0
  loc_1115B1D:   var_194 = 0
  loc_1115B8E:   var_144 = "HappyHoursHead"
  loc_1115B97:   Proc_154_5_10E3BD4(MemVar_1F95044, var_144, "SchemeCode", 2, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1115BC5:   unk_4CA816.CommitTrans
  loc_1115BD5:   Me.Requery -1
  loc_1115BDA:   Call Proc_180_48_15C2370(0, 0, 0, 0)
  loc_1115BFB:   Proc_5_0_1107AD0(&HFF, Me, global_68, 0)
  loc_1115C07:   Set var_11C = Me.FGrid
  loc_1115C18: End If
  loc_1115C18: Exit Sub
  loc_1115C19: ' Referenced from: 111594C
  loc_1115C1F: unk_4CA816.RollbackTrans
  loc_1115C2C: Set var_11C = Err()
  loc_1115C32: Call 0.Method_arg_2C (var_144, FGrid.DispID_8001, 0)
  loc_1115C53: MsgBox(CVar(var_144), &H30, " Deletion Error ", var_F4, var_114)
  loc_1115C66: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E17808
  'Data Table: 4CA7F4
  loc_E177FD: Me.Global.Unload Me
  loc_E17805: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E329A8
  'Data Table: 4CA7F4
  loc_E32998: Proc_5_0_1107AD0(&HFF, Me)
  loc_E329A0: Call Proc_180_48_15C2370(global_68)
  loc_E329A5: Exit Sub
  loc_E329A6: Set arg_7C00 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E32DC8
  'Data Table: 4CA7F4
  loc_E32DB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32DC0: Call Proc_180_48_15C2370(global_68)
  loc_E32DC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E32B28
  'Data Table: 4CA7F4
  loc_E32B18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32B20: Call Proc_180_48_15C2370(global_68)
  loc_E32B25: Exit Sub
  loc_E32B26: Set arg_7C00 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E32AC8
  'Data Table: 4CA7F4
  loc_E32AB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32AC0: Call Proc_180_48_15C2370(global_68)
  loc_E32AC5: Exit Sub
  loc_E32AC6: Set arg_7C00 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_19 'DFFD3C
  'Data Table: 4CA7F4
  loc_DFFD34: Call Proc_180_56_1797CD0()
  loc_DFFD39: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EC4A7C
  'Data Table: 4CA7F4
  loc_EC49E4: On Error Goto loc_EC4A74
  loc_EC4A1E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC4A2D:   Set var_110 = Me
  loc_EC4A44:   Call Proc_180_53_EB6210(Proc_5_1_100EC1C("INI", var_110))
  loc_EC4A4F:   Call Proc_180_48_15C2370(global_68)
  loc_EC4A54:   Call Proc_180_54_EF7AF0()
  loc_EC4A5C: Else
  loc_EC4A62:   Call 0.Method_arg_1E8 (var_110)
  loc_EC4A6A:   Call var_110.SetFocus
  loc_EC4A73: End If
  loc_EC4A73: Exit Sub
  loc_EC4A74: ' Referenced from: EC49E4
  loc_EC4A74: Proc_6_60_E63754()
  loc_EC4A79: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'F178B0
  'Data Table: 4CA7F4
  Dim Me As Recordset15
  loc_F177C0: On Error Goto loc_F1784A
  loc_F177CC: var_88 = Me.RecordCount
  loc_F177DA: If (var_88 <= 0) Then
  loc_F177FE:   MsgBox("No Records Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F1780E:   Exit Sub
  loc_F1780F: End If
  loc_F17812: MemVar_1F950E4 = "SELECT HP.SchemeCode as SearchCode, Convert(Varchar(11),HP.AppDate,103) As StartDate, Convert(Varchar(11),HP.EndDate,103) As EndDate,  Depart.Name as DeptName, ItemCatMast.Name as CatName , ItemGrp.Name as GrpName, HP.DiscountType AS DiscountType , HP.DiscountValue AS DiscountValue  , HP.FromTime AS FromTime ,HP.ToTime AS ToTime FROM HappyHoursHead HP LEFT JOIN Depart on HP.RestCode = Depart.Code LEFT JOIN ItemCatMast on HP.ItemCat = ItemCatMast.Code LEFT JOIN ItemGrp on HP.ItemGroup = ItemGrp.Code "
  loc_F1781C: MemVar_1F95120 = Me
  loc_F17823: var_10C = "1000,1000,2000,1500,1500,1000,1200,800,800"
  loc_F17829: Proc_6_126_F1C850(var_10C)
  loc_F17844: Call 0.Method_arg_2B0 (1)
  loc_F17849: Exit Sub
  loc_F1784A: ' Referenced from: F177C0
  loc_F17852: Set var_110 = Err()
  loc_F17858: Call 0.Method_arg_1C (var_88)
  loc_F17869: If (var_88 <> 0) Then
  loc_F17874:   Set var_110 = Err()
  loc_F1787A:   Call 0.Method_arg_2C (var_10C)
  loc_F1789B:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F178AE: End If
  loc_F178AE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E58D5C
  'Data Table: 4CA7F4
  Dim Me As Recordset15
  loc_E58D23: Me.Requery -1
  loc_E58D33: Me.Requery -1
  loc_E58D43: Me.Requery -1
  loc_E58D53: Me.Requery -1
  loc_E58D58: Exit Sub
  loc_E58D59: Exit Sub
End Sub

Private Sub Form_Load() '123DC90
  'Data Table: 4CA7F4
  Dim var_B0 As Variant
  Dim var_DC As TextBox
  Dim var_98 As Variant
  Dim var_F4 As DataGrid
  Dim var_F8 As TextBox
  Dim var_100 As DataGrid
  Dim var_A0 As String
  Dim Me As Recordset15
  loc_123D75C: On Error Goto loc_123DC88
  loc_123D76A: Set var_9C = Me.TopCtrl1
  loc_123D770: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(MemVar_1F950BC)
  loc_123D77E: Call 0.Method_arg_50 (var_A0)
  loc_123D78E: Set var_9C = Me.TopCtrl1
  loc_123D794: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_6803000F(CVar(var_A0))
  loc_123D79D: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_123D7B8: Set var_9C = Me.Txt
  loc_123D7BE: Call 0.Method_Form_LoadC (var_D2, var_86)
  loc_123D7CC: For var_D6 =  To (var_D2 - 1): 0 = var_D6 'Integer
  loc_123D7E1:   Set var_9C = Me.Txt
  loc_123D7E7:   Call 0.Method_Form_Load0 (var_86, var_DC)
  loc_123D7EF:   var_DC.BackColor = -2147483643
  loc_123D80A:   Set var_9C = Me.Txt
  loc_123D810:   Call 0.Method_Form_Load0 (var_86, var_DC)
  loc_123D818:   var_DC.ForeColor = &HC00000
  loc_123D827: Next var_D6 'Integer
  loc_123D83A: Set var_9C = Me.Txt
  loc_123D840: Call 0.Method_Form_Load0 (CInt(0), var_DC)
  loc_123D85F: Me.DGRest.Left = CVar(var_DC.Left)
  loc_123D87B: Set var_F4 = Me.Txt
  loc_123D881: Call 0.Method_Form_Load0 (CInt(0), var_F8)
  loc_123D89C: Set var_9C = Me.Txt
  loc_123D8A2: Call 0.Method_Form_Load0 (CInt(0), var_DC)
  loc_123D8BA: var_98 = CVar(((var_DC.Top + var_F8.Height) + CDbl(&H1E))) 'Single
  loc_123D8C9: Me.DGRest.Top = CVar(var_DC.Left)
  loc_123D8E9: Set var_9C = Me.Txt
  loc_123D8EF: Call 0.Method_Form_Load0 (CInt(2), var_DC)
  loc_123D90E: Me.DGItemCat.Left = CVar(var_DC.Left)
  loc_123D92A: Set var_F4 = Me.Txt
  loc_123D930: Call 0.Method_Form_Load0 (CInt(2), var_F8)
  loc_123D94B: Set var_9C = Me.Txt
  loc_123D951: Call 0.Method_Form_Load0 (CInt(2), var_DC)
  loc_123D969: var_98 = CVar(((var_DC.Top + var_F8.Height) + CDbl(&H1E))) 'Single
  loc_123D978: Me.DGItemCat.Top = CVar(var_DC.Left)
  loc_123D998: Set var_9C = Me.Txt
  loc_123D99E: Call 0.Method_Form_Load0 (CInt(1), var_DC)
  loc_123D9BD: Me.DGItemGrp.Left = CVar(var_DC.Left)
  loc_123D9D9: Set var_F4 = Me.Txt
  loc_123D9DF: Call 0.Method_Form_Load0 (CInt(1), var_F8)
  loc_123D9FA: Set var_9C = Me.Txt
  loc_123DA00: Call 0.Method_Form_Load0 (CInt(1), var_DC)
  loc_123DA18: var_98 = CVar(((var_DC.Top + var_F8.Height) + CDbl(&H1E))) 'Single
  loc_123DA21: Set var_100 = Me.DGItemGrp
  loc_123DA27: var_100.Top = CVar(var_DC.Left)
  loc_123DA55: Me.var_100.CursorLocation = 3
  loc_123DA7F: var_B0 = CVar("Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' Order By Name") 'String
  loc_123DA89: Me.Open var_B0, CVar(MemVar_1F95044), 2
  loc_123DA9D: CVarUnk
  loc_123DAA2: VerifyVarObj
  loc_123DAA8: Set var_9C = Me.DGRest
  loc_123DAAE: LateIdStAd
  loc_123DAD8: Me.DGRest.CursorLocation = 3
  loc_123DB0C: Me.Open CVar("Select Code,Name,RestCode From ItemCatMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')"), CVar(MemVar_1F95044), 2
  loc_123DB20: CVarUnk
  loc_123DB25: VerifyVarObj
  loc_123DB2B: Set var_9C = Me.DGItemCat
  loc_123DB31: LateIdStAd
  loc_123DB5B: Me.DGItemCat.CursorLocation = 3
  loc_123DB85: var_B0 = CVar("Select Code,Name,RestCode From ItemGrp where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_123DBA3: CVarUnk
  loc_123DBA8: VerifyVarObj
  loc_123DBAE: Set var_9C = Me.DGItemGrp
  loc_123DBB4: LateIdStAd
  loc_123DBDE: Me.DGItemGrp.CursorLocation = 3
  loc_123DBFA: var_98 = "SELECT HP.SchemeCode as Code,Depart.Code As DeptCode, Depart.Name as DeptName, ItemCatMast.Code as CatCode , ItemCatMast.Name as CatName , ItemGrp.Code as GrpCode, ItemGrp.Name as GrpName, HP.AppDate As AppDate, HP.EndDate As EndDate, HP.DiscountType AS DiscountType , HP.DiscountValue AS DiscountValue  , HP.FromTime AS FromTime ,HP.ToTime AS ToTime, HP.Site_Code , HP.LogSite_Code FROM HappyHoursHead HP LEFT JOIN Depart on HP.RestCode = Depart.Code LEFT JOIN ItemCatMast on HP.ItemCat = ItemCatMast.Code LEFT JOIN ItemGrp on HP.ItemGroup = ItemGrp.Code "
  loc_123DC06: r_B0, CVar(MemVar_1F95044), 2 var_98, CVar(MemVar_1F95044), 3
  loc_123DC2E: Call Proc_180_53_EB6210(Proc_5_1_100EC1C("INI", Me, New, 3, -1, Me, New, 3), -1, Me, New)
  loc_123DC39: Call Proc_180_55_10FA100(3, -1)
  loc_123DC48: Set var_9C = Me.TopCtrl1
  loc_123DC4E: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_6803000E("Add")
  loc_123DC57: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_0(New)
  loc_123DC62: Call Proc_180_48_15C2370()
  loc_123DC7F: Proc_6_23_DFC5B8(Me, 7590)
  loc_123DC87: Exit Sub
  loc_123DC88: ' Referenced from: 123D75C
  loc_123DC88: Proc_6_60_E63754(8600)
  loc_123DC8D: Exit Sub
  loc_123DC8E: Exit Sub
End Sub

Private Sub Form_Resize() 'DFD6FC
  'Data Table: 4CA7F4
  loc_DFD6F8: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E53140
  'Data Table: 4CA7F4
  loc_E53113: Set global_60 = Nothing
  loc_E53125: Set global_52 = Nothing
  loc_E53137: Set global_56 = Nothing
  loc_E5313E: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28424
  'Data Table: 4CA7F4
  loc_E283FC: On Error Goto loc_E2841C
  loc_E28413: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2841B: Exit Sub
  loc_E2841C: ' Referenced from: E283FC
  loc_E2841C: Proc_6_60_E63754(Shift)
  loc_E28421: Exit Sub
  loc_E28422: Result 0 End Sub 'Currency
End Sub

Private Sub Check1_Click() 'F19D50
  'Data Table: 4CA7F4
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_F19C6B: If (Me.Check1.Value = 1) Then
  loc_F19C93:   For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F19C9D:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_F19CA5:     var_D4 = CVar(CLng(6)) 'Long
  loc_F19CAA:     var_F4 = "Yes"
  loc_F19CB4:     Set var_8C = Me.FGrid
  loc_F19CBA:     LateIdCallSt
  loc_F19CC8:   Next var_A4 'Integer
  loc_F19CD0: Else
  loc_F19CEB:   If (Me.Check1.Value = 0) Then
  loc_F19D13:     For var_108 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_86 = var_108 'Integer
  loc_F19D1D:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_F19D25:       var_D4 = CVar(CLng(6)) 'Long
  loc_F19D2A:       var_F4 = "No"
  loc_F19D34:       Set var_8C = Me.FGrid
  loc_F19D3A:       LateIdCallSt
  loc_F19D48:     Next var_108 'Integer
  loc_F19D4D:   End If
  loc_F19D4D: End If
  loc_F19D4D: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E86CE8
  'Data Table: 4CA7F4
  loc_E86C94: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E86C97:   Call DGRest_UnknownEvent_9()
  loc_E86C9C: End If
  loc_E86CB8: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_E86CBB:   Call DGItemCat_UnknownEvent_9()
  loc_E86CC0: End If
  loc_E86CDC: If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_E86CDF:   Call DGItemGrp_UnknownEvent_9()
  loc_E86CE4: End If
  loc_E86CE4: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC4D14
  'Data Table: 4CA7F4
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC4C8A: On Error Goto loc_EC4CCF
  loc_EC4C93: Me.MoveFirst
  loc_EC4CAD: var_8C = "Code='" & MyValue
  loc_EC4CBD: Me.Find var_8C & "'", 0, 1
  loc_EC4CC9: Call Proc_180_48_15C2370(var_A0)
  loc_EC4CCE: Exit Sub
  loc_EC4CCF: ' Referenced from: EC4C8A
  loc_EC4CD7: Set var_A4 = Err()
  loc_EC4CDD: Call 0.Method_arg_2C (var_8C)
  loc_EC4CFE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC4D11: Exit Sub
  loc_EC4D12: Exit Sub
End Sub

Public Sub Proc_180_48_15C2370
  'Data Table: 4CA7F4
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_C4 As String
  Dim var_B0 As TextBox
  Dim var_C0 As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim unk_4CA816 As Connection15
  Dim var_86 As Integer
  Dim var_8C As Recordset15
  Dim var_AC As Fields15
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_15C1080: On Error Goto loc_15C232D
  loc_15C1089: Proc_183_45_E5CCA8(global_68)
  loc_15C10A5: If (Me.RecordCount <= 0) Then
  loc_15C10A8:   Call Proc_180_52_E9D4E8()
  loc_15C10B0: Else
  loc_15C10EC:   Set var_AC = Me.Txt
  loc_15C10F2:   Call 0.Method_Proc_180_48_15C23700 (CInt(0), var_B0)
  loc_15C10FA:   var_B0.Text = CStr(Me.Fields.Item("DeptName").Value)
  loc_15C114C:   Set var_AC = Me.Txt
  loc_15C1152:   Call 0.Method_Proc_180_48_15C23700 (CInt(0), var_B0)
  loc_15C115A:   var_B0.Tag = CStr(Me.Fields.Item("DeptCode").Value)
  loc_15C11A2:   If Not(IsNull(CVar(Me.Fields.Item("GrpName")))) Then
  loc_15C11E1:     Set var_AC = Me.Txt
  loc_15C11E7:     Call 0.Method_Proc_180_48_15C23700 (CInt(1), var_B0)
  loc_15C11EF:     var_B0.Text = CStr(Me.Fields.Item("GrpName").Value)
  loc_15C1241:     Set var_AC = Me.Txt
  loc_15C1247:     Call 0.Method_Proc_180_48_15C23700 (CInt(1), var_B0)
  loc_15C124F:     var_B0.Tag = CStr(Me.Fields.Item("GrpCode").Value)
  loc_15C1265:   End If
  loc_15C1297:   If Not(IsNull(CVar(Me.Fields.Item("CatName")))) Then
  loc_15C12D6:     Set var_AC = Me.Txt
  loc_15C12DC:     Call 0.Method_Proc_180_48_15C23700 (CInt(2), var_B0)
  loc_15C12E4:     var_B0.Text = CStr(Me.Fields.Item("CatName").Value)
  loc_15C1336:     Set var_AC = Me.Txt
  loc_15C133C:     Call 0.Method_Proc_180_48_15C23700 (CInt(2), var_B0)
  loc_15C1344:     var_B0.Tag = CStr(Me.Fields.Item("CatCode").Value)
  loc_15C135A:   End If
  loc_15C1393:   Set var_AC = Me.Txt
  loc_15C1399:   Call 0.Method_Proc_180_48_15C23700 (CInt(3), var_B0)
  loc_15C13A1:   var_B0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("AppDate")))
  loc_15C13EE:   Set var_AC = Me.Txt
  loc_15C13F4:   Call 0.Method_Proc_180_48_15C23700 (CInt(&HA), var_B0)
  loc_15C13FC:   var_B0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("EndDate")))
  loc_15C144C:   Set var_AC = Me.Txt
  loc_15C1452:   Call 0.Method_Proc_180_48_15C23700 (CInt(4), var_B0)
  loc_15C145A:   var_B0.Text = CStr(Me.Fields.Item("DiscountType").Value)
  loc_15C14AC:   Set var_AC = Me.Txt
  loc_15C14B2:   Call 0.Method_Proc_180_48_15C23700 (CInt(5), var_B0)
  loc_15C14BA:   var_B0.Text = CStr(Me.Fields.Item("DiscountValue").Value)
  loc_15C1515:   Set var_AC = Me.Txt
  loc_15C151B:   Call 0.Method_Proc_180_48_15C23700 (CInt(6), var_B0)
  loc_15C1523:   var_B0.Text = CStr(Left(CVar(Me.Fields.Item("FromTime")), 2))
  loc_15C1580:   Set var_AC = Me.Txt
  loc_15C1586:   Call 0.Method_Proc_180_48_15C23700 (CInt(7), var_B0)
  loc_15C158E:   var_B0.Text = CStr(Right(CVar(Me.Fields.Item("FromTime")), 2))
  loc_15C15EB:   Set var_AC = Me.Txt
  loc_15C15F1:   Call 0.Method_Proc_180_48_15C23700 (CInt(8), var_B0)
  loc_15C15F9:   var_B0.Text = CStr(Left(CVar(Me.Fields.Item("ToTime")), 2))
  loc_15C1656:   Set var_AC = Me.Txt
  loc_15C165C:   Call 0.Method_Proc_180_48_15C23700 (CInt(9), var_B0)
  loc_15C1664:   var_B0.Text = CStr(Right(CVar(Me.Fields.Item("ToTime")), 2))
  loc_15C168F:   Me.FGrid.Rows = 1
  loc_15C16A4:   var_E4 = "Select IM.DispCode,IM.Code As ItemCode,IM.Name As ItemName, IM.ItemCatCode , IM.ItemGroup, HP.DiscountType,HP.DiscountValue,HP.Active From ItemMast IM Left outer join HappyHours HP on IM.Code = HP.ItemCode And IM.RestCode=HP.RestCode WHERE HP.SchemeCode='"
  loc_15C16F2:   var_144 = var_E4 & Me.Fields.Item("Code").Value & "' AND (HP.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' or HP.LOGSITE_CODE='HO') Order By IM.Code " 
  loc_15C1700:   unk_4CA816.Execute CStr(var_144), var_164, -1
  loc_15C1711:   Set global_64 = var_AC
  loc_15C177A:   var_104 = "Select ItemCode,Rate,AppDate From ItemRate Where RestCode='" & Me.Fields.Item("DeptCode").Value & "' AND (LOGSITE_CODE='" 
  loc_15C179B:   unk_4CA816.Execute CStr(var_104 & CVar(MemVar_1F95078) & "' or LOGSITE_CODE='HO') Order By AppDate Desc,ItemCode "), var_164, -1
  loc_15C17A6:   Set var_8C = var_AC
  loc_15C17C6:   var_86 = 1
  loc_15C17DD:   If (var_8C.RecordCount <= 0) Then
  loc_15C17F7:     If (Me.RecordCount > 0) Then
  loc_15C17FA:       ' Referenced from:   15C1CB9
  loc_15C180C:       If Not(Me.EOF) Then
  loc_15C180F:         var_A4 = vbNullString
  loc_15C1819:         Set var_94 = Me.FGrid
  loc_15C1835:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_15C1847:         var_C0 = CVar(CStr(var_86)) 'String
  loc_15C184E:         LateIdCallSt
  loc_15C1895:         var_D4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DispCode")), CVar(CLng(1)), CVar(CLng(var_86)), Me.FGrid, CVar(Me.Fields.Item("DispCode")), CVar(CLng(0)))) 'String
  loc_15C189C:         LateIdCallSt
  loc_15C18B2:         var_E4 = CVar(CLng(var_86)) 'Long
  loc_15C18BA:         var_114 = CVar(CLng(2)) 'Long
  loc_15C18ED:         var_D4 = CVar(CStr(Me.Fields.Item("ItemCode").Value)) 'String
  loc_15C18F4:         LateIdCallSt
  loc_15C190E:         var_E4 = CVar(CLng(var_86)) 'Long
  loc_15C1916:         var_114 = CVar(CLng(3)) 'Long
  loc_15C1949:         var_D4 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_15C1950:         LateIdCallSt
  loc_15C19E5:         If CBool((Me.Fields.Item("DiscountType").Value = "Amount") And Not(IsNull(CVar(Me.Fields.Item("DiscountType"))))) Then
  loc_15C19E8:           var_A4 = 0
  loc_15C19F4:           var_F4 = CVar(CLng(5)) 'Long
  loc_15C19F9:           var_134 = "Discount Amount"
  loc_15C1A02:           LateIdCallSt
  loc_15C1A0E:           var_E4 = CVar(CLng(var_86)) 'Long
  loc_15C1A16:           var_114 = CVar(CLng(5)) 'Long
  loc_15C1A49:           var_D4 = CVar(CStr(Me.Fields.Item("DiscountValue").Value)) 'String
  loc_15C1A50:           LateIdCallSt
  loc_15C1A6A:           var_A4 = CVar(CLng(var_86)) 'Long
  loc_15C1A72:           var_F4 = CVar(CLng(7)) 'Long
  loc_15C1A77:           var_134 = "N"
  loc_15C1A80:           LateIdCallSt
  loc_15C1A8B:         Else
  loc_15C1B0A:           If CBool((Me.Fields.Item("DiscountType").Value = "Percent") And Not(IsNull(CVar(Me.Fields.Item("DiscountType"))))) Then
  loc_15C1B0D:             var_A4 = 0
  loc_15C1B19:             var_F4 = CVar(CLng(5)) 'Long
  loc_15C1B1E:             var_134 = "Discount Percent"
  loc_15C1B27:             LateIdCallSt
  loc_15C1B33:             var_E4 = CVar(CLng(var_86)) 'Long
  loc_15C1B3B:             var_114 = CVar(CLng(5)) 'Long
  loc_15C1B6E:             var_D4 = CVar(CStr(Me.Fields.Item("DiscountValue").Value)) 'String
  loc_15C1B75:             LateIdCallSt
  loc_15C1B8F:             var_A4 = CVar(CLng(var_86)) 'Long
  loc_15C1B97:             var_F4 = CVar(CLng(7)) 'Long
  loc_15C1B9C:             var_134 = "N"
  loc_15C1BA5:             LateIdCallSt
  loc_15C1BAD:           End If
  loc_15C1BAD:         End If
  loc_15C1BDF:         If Not(IsNull(CVar(Me.Fields.Item("Active")))) Then
  loc_15C1C10:           var_134 = CVar(CLng(var_86)) 'Long
  loc_15C1C18:           var_17C = CVar(CLng(6)) 'Long
  loc_15C1C53:           var_19C = CVar(CStr(IIf((Me.Fields.Item("Active").Value = "Y"), "Yes", "No"))) 'String
  loc_15C1C5A:           LateIdCallSt
  loc_15C1C78:         End If
  loc_15C1C7C:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_15C1C84:         var_F4 = CVar(CLng(4)) 'Long
  loc_15C1C8D:         var_C0 = CVar(CStr(0)) 'String
  loc_15C1C94:         LateIdCallSt
  loc_15C1CA1:         Set var_16C = Nothing 
  loc_15C1CAB:         var_86 = (var_86 + 1)
  loc_15C1CB4:         Me.MoveNext
  loc_15C1CB9:         GoTo loc_15C17FA
  loc_15C1CBC:       End If
  loc_15C1CBC:     End If
  loc_15C1CBC:     GoTo loc_15C2309
  loc_15C1CBF:     ' Referenced from:   15C2306
  loc_15C1CBF:   End If
  loc_15C1CD1:   If Not(Me.EOF) Then
  loc_15C1CD4:     var_A4 = vbNullString
  loc_15C1CDE:     Set var_94 = Me.FGrid
  loc_15C1CF3:     Set var_1B0 = Me.FGrid
  loc_15C1CFA:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_15C1D0C:     var_C0 = CVar(CStr(var_86)) 'String
  loc_15C1D13:     LateIdCallSt
  loc_15C1D32:     var_A4 = "DispCode"
  loc_15C1D5A:     var_D4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_A4)), CVar(CLng(1)), CVar(CLng(var_86)), var_1B0, CVar(Me.Fields.Item(var_A4)), CVar(CLng(0)), var_A4)) 'String
  loc_15C1D61:     LateIdCallSt
  loc_15C1D77:     var_E4 = CVar(CLng(var_86)) 'Long
  loc_15C1D7F:     var_114 = CVar(CLng(2)) 'Long
  loc_15C1DB2:     var_D4 = CVar(CStr(Me.Fields.Item("ItemCode").Value)) 'String
  loc_15C1DB9:     LateIdCallSt
  loc_15C1DD3:     var_E4 = CVar(CLng(var_86)) 'Long
  loc_15C1E0E:     var_D4 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_15C1E15:     LateIdCallSt
  loc_15C1E2E:     var_8C.MoveFirst
  loc_15C1E63:     var_A8 = Me.Fields.Item("ItemCode")
  loc_15C1E73:     var_D4 = "ItemCode='" & var_A8.Value 
  loc_15C1E80:     var_C4 = CStr(var_D4 & "'")
  loc_15C1E87:     var_8C.Find var_C4, 0, 1
  loc_15C1EC2:     If ((var_8C.EOF = 0) And (var_8C.BOF = 0)) Then
  loc_15C1ED3:       Set var_94 = Me.Txt
  loc_15C1ED9:       Call 0.Method_Proc_180_48_15C23700 (CInt(4), var_A8, var_C4, CVar(CLng(3)), var_1B0, var_D4)
  loc_15C1EE1:       var_114 = var_A8.Text
  loc_15C1EF8:       If (var_C4 = "Amount") Then
  loc_15C1EFF:         var_E4 = CVar(CLng(var_86)) 'Long
  loc_15C1F07:         var_114 = CVar(CLng(4)) 'Long
  loc_15C1F37:         var_D4 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_15C1F3E:         LateIdCallSt
  loc_15C1F57:       Else
  loc_15C1F5B:         var_E4 = CVar(CLng(var_86)) 'Long
  loc_15C1F63:         var_114 = CVar(CLng(4)) 'Long
  loc_15C1F93:         var_D4 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_15C1F9A:         LateIdCallSt
  loc_15C1FB0:       End If
  loc_15C1FB3:     Else
  loc_15C1FB7:       var_A4 = CVar(CLng(var_86)) 'Long
  loc_15C1FBF:       var_F4 = CVar(CLng(4)) 'Long
  loc_15C1FC8:       var_C0 = CVar(CStr(0)) 'String
  loc_15C1FCF:       LateIdCallSt
  loc_15C1FDA:     End If
  loc_15C2059:     If CBool((Me.Fields.Item("DiscountType").Value = "Amount") And Not(IsNull(CVar(Me.Fields.Item("DiscountType"))))) Then
  loc_15C205C:       var_A4 = 0
  loc_15C2068:       var_F4 = CVar(CLng(5)) 'Long
  loc_15C206D:       var_134 = "Discount Amount"
  loc_15C2076:       LateIdCallSt
  loc_15C2082:       var_E4 = CVar(CLng(var_86)) 'Long
  loc_15C208A:       var_114 = CVar(CLng(5)) 'Long
  loc_15C20BD:       var_D4 = CVar(CStr(Me.Fields.Item("DiscountValue").Value)) 'String
  loc_15C20C4:       LateIdCallSt
  loc_15C20DE:       var_A4 = CVar(CLng(var_86)) 'Long
  loc_15C20E6:       var_F4 = CVar(CLng(7)) 'Long
  loc_15C20EB:       var_134 = "N"
  loc_15C20F4:       LateIdCallSt
  loc_15C20FF:     Else
  loc_15C217E:       If CBool((Me.Fields.Item("DiscountType").Value = "Percent") And Not(IsNull(CVar(Me.Fields.Item("DiscountType"))))) Then
  loc_15C2181:         var_A4 = 0
  loc_15C218D:         var_F4 = CVar(CLng(5)) 'Long
  loc_15C2192:         var_134 = "Discount Percent"
  loc_15C219B:         LateIdCallSt
  loc_15C21A7:         var_E4 = CVar(CLng(var_86)) 'Long
  loc_15C21AF:         var_114 = CVar(CLng(5)) 'Long
  loc_15C21E2:         var_D4 = CVar(CStr(Me.Fields.Item("DiscountValue").Value)) 'String
  loc_15C21E9:         LateIdCallSt
  loc_15C2203:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_15C220B:         var_F4 = CVar(CLng(7)) 'Long
  loc_15C2210:         var_134 = "N"
  loc_15C2219:         LateIdCallSt
  loc_15C2221:       End If
  loc_15C2221:     End If
  loc_15C2253:     If Not(IsNull(CVar(Me.Fields.Item("Active")))) Then
  loc_15C2284:       var_134 = CVar(CLng(var_86)) 'Long
  loc_15C228C:       var_17C = CVar(CLng(6)) 'Long
  loc_15C22A1:       var_124 = "Yes"
  loc_15C22B4:       var_104 = (Me.Fields.Item("Active").Value = "Y") 'Variant
  loc_15C22C7:       var_19C = CVar(CStr(IIf(var_104, var_124, "No"))) 'String
  loc_15C22CE:       LateIdCallSt
  loc_15C22EC:     End If
  loc_15C22EE:     Set var_1B0 = Nothing 
  loc_15C22F8:     var_86 = (var_86 + 1)
  loc_15C2301:     Me.MoveNext
  loc_15C2306:     GoTo loc_15C1CBF
  loc_15C2309:     ' Referenced from:   15C1CBC
  loc_15C2309:   End If
  loc_15C2309: End If
  loc_15C231C: Me.FGrid.FixedRows = 1
  loc_15C2329: Set var_8C = Nothing
  loc_15C232C: Exit Sub
  loc_15C232D: ' Referenced from: 15C1080
  loc_15C2335: Set var_94 = Err()
  loc_15C233B: Call 0.Method_arg_2C (var_C4, var_86, var_1B0, var_19C, var_17C, var_134, var_1B0)
  loc_15C235C: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_15C236F: Exit Sub
End Sub

Public Sub Proc_180_49_FE88DC
  'Data Table: 4CA7F4
  Dim var_9C As TextBox
  Dim var_A8 As Double
  Dim var_90 As TextBox
  Dim var_86 As Integer
  loc_FE871A: Set var_98 = Me.Txt
  loc_FE8720: Call 0.Method_Proc_180_49_FE88DC0 (CInt(8), var_9C)
  loc_FE8746: Set var_8C = Me.Txt
  loc_FE874C: Call 0.Method_Proc_180_49_FE88DC0 (CInt(6), var_90)
  loc_FE8754: var_94 = var_90.Text
  loc_FE8779: If (CDbl(Val(var_94)) = CDbl(Val(var_9C.Text))) Then
  loc_FE878A:   Set var_98 = Me.Txt
  loc_FE8790:   Call 0.Method_Proc_180_49_FE88DC0 (CInt(9), var_9C)
  loc_FE87A5:   var_A8 = Val(var_9C.Text)
  loc_FE87B6:   Set var_8C = Me.Txt
  loc_FE87BC:   Call 0.Method_Proc_180_49_FE88DC0 (CInt(7), var_90, var_94)
  loc_FE87E9:   If (CDbl(Val(var_94)) > CDbl(var_90.Text)) Then
  loc_FE880D:     MsgBox("'To Time' Should be greater than 'From Time'", &H40, "TIME", var_108, var_128)
  loc_FE8822:     Proc_180_49_FE88DC = 0
  loc_FE8828:   End If
  loc_FE8828: End If
  loc_FE8836: Set var_98 = Me.Txt
  loc_FE883C: Call 0.Method_Proc_180_49_FE88DC0 (CInt(8), var_9C)
  loc_FE8851: var_A8 = Val(var_9C.Text)
  loc_FE8862: Set var_8C = Me.Txt
  loc_FE8868: Call 0.Method_Proc_180_49_FE88DC0 (CInt(6), var_90, var_94)
  loc_FE8895: If (CDbl(Val(var_94)) > CDbl(var_90.Text)) Then
  loc_FE88B9:   MsgBox("'To Time' Should be greater than 'From Time'", &H40, "TIME", var_108, var_128)
  loc_FE88CB:   var_86 = 0
  loc_FE88CE: End If
  loc_FE88D3: Proc_180_49_FE88DC = &HFF
End Sub

Public Sub Proc_180_50_DFDB40
  'Data Table: 4CA7F4
  loc_DFDB3C: Exit Sub
End Sub

Public Sub Proc_180_51_10712D4
  'Data Table: 4CA7F4
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  loc_107106B: var_A0 = CLng(Me.FGrid.Col)
  loc_107107B: If (var_A0 = CLng(4)) Then
  loc_107108A:   Set var_8C = Me.TxtGrid
  loc_1071090:   Call 0.Method_Proc_180_51_10712D40 (0, var_A4)
  loc_1071098:   var_A8 = var_A4.Text
  loc_10710BB:   var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10710D3:   var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1071100:   var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_1071108:   Set var_174 = Me.FGrid
  loc_107110E:   LateIdCallSt
  loc_1071138: Else
  loc_107113F:   If (var_A0 = CLng(5)) Then
  loc_107114E:     Set var_8C = Me.TxtGrid
  loc_1071154:     Call 0.Method_Proc_180_51_10712D40 (0, var_A4, var_A8, var_174, var_160, 1)
  loc_107115C:     1 = var_A4.Text
  loc_107117F:     var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1071197:     var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10711C4:     var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_10711CC:     Set var_174 = Me.FGrid
  loc_10711D2:     LateIdCallSt
  loc_10711FC:   Else
  loc_1071203:     If (var_A0 = CLng(6)) Then
  loc_1071242:       Set var_8C = Me.TxtGrid
  loc_1071248:       Call 0.Method_Proc_180_51_10712D40 (0, var_A4, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_174, var_160)
  loc_1071250:       1 = var_A4.Text
  loc_1071258:       var_E8 = CVar(var_A8) 'String
  loc_1071260:       Set var_174 = Me.FGrid
  loc_1071266:       LateIdCallSt
  loc_1071284:     End If
  loc_1071284:   End If
  loc_1071284: End If
  loc_1071297: var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_107129F: var_120 = CVar(CLng(7)) 'Long
  loc_10712A4: var_140 = "Y"
  loc_10712AE: Set var_A4 = Me.FGrid
  loc_10712B4: LateIdCallSt
  loc_10712CB: Proc_180_51_10712D4 = &HFF
  loc_10712D1: StAryRecMove
End Sub

Public Sub Proc_180_52_E9D4E8
  'Data Table: 4CA7F4
  Dim var_98 As TextBox
  loc_E9D46E: Set var_8C = Me.Txt
  loc_E9D474: Call 0.Method_Proc_180_52_E9D4E8C (var_8E, var_86)
  loc_E9D484: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9D49A:   Set var_8C = Me.Txt
  loc_E9D4A0:   Call 0.Method_Proc_180_52_E9D4E80 (CInt(var_86), var_98)
  loc_E9D4A8:   var_98.Text = vbNullString
  loc_E9D4C4:   Set var_8C = Me.Txt
  loc_E9D4CA:   Call 0.Method_Proc_180_52_E9D4E80 (CInt(var_86), var_98)
  loc_E9D4D2:   var_98.Tag = vbNullString
  loc_E9D4E1: Next var_92 'Byte
  loc_E9D4E7: Exit Sub
End Sub

Public Sub Proc_180_53_EB6210(arg_C) 'EB6210
  'Data Table: 4CA7F4
  Dim var_98 As Variant
  Dim var_8C As CheckBox
  loc_EB6182: Set var_8C = Me.Txt
  loc_EB6188: Call 0.Method_Proc_180_53_EB6210C (var_8E, var_86)
  loc_EB6198: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB61AE:   Set var_8C = Me.Txt
  loc_EB61B4:   Call 0.Method_Proc_180_53_EB62100 (CInt(var_86), var_98)
  loc_EB61BC:   var_98.Enabled = arg_C
  loc_EB61CB: Next var_92 'Byte
  loc_EB61DE: Me.Check1.Enabled = arg_C
  loc_EB61F2: Set var_8C = Me.Cmd
  loc_EB61F8: Call 0.Method_Proc_180_53_EB62100 (0, var_98)
  loc_EB6200: var_98.Enabled = arg_C
  loc_EB620C: Exit Sub
End Sub

Public Sub Proc_180_54_EF7AF0
  'Data Table: 4CA7F4
  loc_EF7A30: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF7A42:   Me.DGRest.Visible = False
  loc_EF7A4A: End If
  loc_EF7A66: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_EF7A78:   Me.DGItemCat.Visible = False
  loc_EF7A80: End If
  loc_EF7A9C: If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_EF7AAE:   Me.DGItemGrp.Visible = False
  loc_EF7AB6: End If
  loc_EF7AD2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF7AE4:   Me.FGPoint.Visible = False
  loc_EF7AEC: End If
  loc_EF7AEC: Exit Sub
End Sub

Public Sub Proc_180_55_10FA100
  'Data Table: 4CA7F4
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_10F9DD2: Me.FGrid.Left = CVar(CDbl(&H23))
  loc_10F9DED: Me.FGrid.Width = CVar(CDbl(10700))
  loc_10F9E08: Me.FGrid.Cols = 8
  loc_10F9E10: var_94 = CVar(CLng(0)) 'Long
  loc_10F9E15: var_BC = &H190
  loc_10F9E21: LateIdCallSt
  loc_10F9E29: var_94 = 0
  loc_10F9E35: var_BC = CVar(CLng(1)) 'Long
  loc_10F9E3A: var_DC = "Code"
  loc_10F9E43: LateIdCallSt
  loc_10F9E4E: var_94 = CVar(CLng(1)) 'Long
  loc_10F9E59: var_BC = CVar(CInt(1)) 'Integer
  loc_10F9E60: LateIdCallSt
  loc_10F9E6B: var_94 = CVar(CLng(1)) 'Long
  loc_10F9E70: var_BC = &H5DC
  loc_10F9E7C: LateIdCallSt
  loc_10F9E87: var_94 = CVar(CLng(2)) 'Long
  loc_10F9E8C: var_BC = 0
  loc_10F9E98: LateIdCallSt
  loc_10F9EA0: var_94 = 0
  loc_10F9EAC: var_BC = CVar(CLng(3)) 'Long
  loc_10F9EB1: var_DC = "Item Name"
  loc_10F9EBA: LateIdCallSt
  loc_10F9EC5: var_94 = CVar(CLng(3)) 'Long
  loc_10F9ED0: var_BC = CVar(CInt(1)) 'Integer
  loc_10F9ED7: LateIdCallSt
  loc_10F9EE2: var_94 = CVar(CLng(3)) 'Long
  loc_10F9EED: var_BC = CVar(CInt(1)) 'Integer
  loc_10F9EF4: LateIdCallSt
  loc_10F9EFF: var_94 = CVar(CLng(3)) 'Long
  loc_10F9F04: var_BC = &HDAC
  loc_10F9F10: LateIdCallSt
  loc_10F9F18: var_94 = 0
  loc_10F9F24: var_BC = CVar(CLng(4)) 'Long
  loc_10F9F29: var_DC = "Rate"
  loc_10F9F32: LateIdCallSt
  loc_10F9F3D: var_94 = CVar(CLng(4)) 'Long
  loc_10F9F48: var_BC = CVar(CInt(7)) 'Integer
  loc_10F9F4F: LateIdCallSt
  loc_10F9F5A: var_94 = CVar(CLng(4)) 'Long
  loc_10F9F65: var_BC = CVar(CInt(7)) 'Integer
  loc_10F9F6C: LateIdCallSt
  loc_10F9F77: var_94 = CVar(CLng(4)) 'Long
  loc_10F9F7C: var_BC = &H5DC
  loc_10F9F88: LateIdCallSt
  loc_10F9F90: var_94 = 0
  loc_10F9F9C: var_BC = CVar(CLng(5)) 'Long
  loc_10F9FA1: var_DC = "Discount"
  loc_10F9FAA: LateIdCallSt
  loc_10F9FB5: var_94 = CVar(CLng(5)) 'Long
  loc_10F9FC0: var_BC = CVar(CInt(7)) 'Integer
  loc_10F9FC7: LateIdCallSt
  loc_10F9FD2: var_94 = CVar(CLng(5)) 'Long
  loc_10F9FDD: var_BC = CVar(CInt(7)) 'Integer
  loc_10F9FE4: LateIdCallSt
  loc_10F9FEF: var_94 = CVar(CLng(5)) 'Long
  loc_10F9FF4: var_BC = &H7D0
  loc_10FA000: LateIdCallSt
  loc_10FA008: var_94 = 0
  loc_10FA014: var_BC = CVar(CLng(6)) 'Long
  loc_10FA019: var_DC = "Active"
  loc_10FA022: LateIdCallSt
  loc_10FA02D: var_94 = CVar(CLng(6)) 'Long
  loc_10FA038: var_BC = CVar(CInt(7)) 'Integer
  loc_10FA03F: LateIdCallSt
  loc_10FA04A: var_94 = CVar(CLng(6)) 'Long
  loc_10FA055: var_BC = CVar(CInt(7)) 'Integer
  loc_10FA05C: LateIdCallSt
  loc_10FA067: var_94 = CVar(CLng(6)) 'Long
  loc_10FA06C: var_BC = &H320
  loc_10FA078: LateIdCallSt
  loc_10FA080: var_94 = 0
  loc_10FA08C: var_BC = CVar(CLng(7)) 'Long
  loc_10FA091: var_DC = "Updated"
  loc_10FA09A: LateIdCallSt
  loc_10FA0A5: var_94 = CVar(CLng(7)) 'Long
  loc_10FA0B0: var_BC = CVar(CInt(7)) 'Integer
  loc_10FA0B7: LateIdCallSt
  loc_10FA0C2: var_94 = CVar(CLng(7)) 'Long
  loc_10FA0CD: var_BC = CVar(CInt(7)) 'Integer
  loc_10FA0D4: LateIdCallSt
  loc_10FA0DF: var_94 = CVar(CLng(7)) 'Long
  loc_10FA0E4: var_BC = 0
  loc_10FA0F0: LateIdCallSt
  loc_10FA0FA: Set var_AC = Nothing 
  loc_10FA0FE: Exit Sub
End Sub

Public Sub Proc_180_56_1797CD0
  'Data Table: 4CA7F4
  Dim unk_4CA816 As Connection15
  Dim var_A4 As Variant
  Dim var_E0 As Variant
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_94 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_118 As Variant
  Dim var_C4 As Variant
  Dim var_130 As Variant
  Dim var_1A0 As Variant
  Dim var_1F8 As Variant
  Dim var_204 As Variant
  Dim var_254 As TextBox
  Dim var_260 As TextBox
  Dim var_370 As TextBox
  Dim var_3BC As TextBox
  Dim var_48C As Double
  Dim var_10C As String
  Dim var_110 As String
  Dim var_114 As String
  Dim var_120 As String
  Dim var_124 As String
  Dim var_128 As String
  Dim var_138 As String
  Dim var_13C As String
  Dim var_140 As String
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_21C As Variant
  Dim var_24C As Variant
  Dim var_278 As Variant
  Dim var_288 As Variant
  Dim var_2A8 As Variant
  Dim var_2C8 As Variant
  Dim var_2D8 As Variant
  Dim var_2E8 As Variant
  Dim var_308 As Variant
  Dim var_348 As Variant
  Dim var_368 As Variant
  Dim var_384 As Variant
  Dim var_394 As Variant
  Dim var_3B4 As Variant
  Dim var_400 As Variant
  Dim var_430 As Variant
  Dim var_450 As Variant
  Dim var_11C As String
  Dim var_158 As Variant
  Dim var_134 As String
  Dim var_1B0 As Variant
  Dim var_464 As Variant
  Dim var_420 As Variant
  Dim var_148 As Variant
  Dim var_190 As TextBox
  Dim var_4F0 As Variant
  Dim var_510 As Variant
  Dim var_25C As Variant
  Dim var_36C As TextBox
  Dim var_4B0 As Variant
  Dim var_4D0 As Variant
  Dim var_474 As Variant
  Dim var_560 As Variant
  Dim var_1FC As String
  Dim var_250 As MSHFlexGrid
  Dim var_144 As Variant
  Dim var_12C As Variant
  Dim var_18C As TextBox
  Dim var_1F4 As TextBox
  Dim var_200 As TextBox
  Dim var_208 As String
  Dim var_264 As String
  loc_1795ED4: On Error Goto loc_1797C45
  loc_1795EDA: Call Proc_180_49_FE88DC(var_8A)
  loc_1795EE2: If var_8A Then
  loc_1795EEE:   unk_4CA816.BeginTrans var_90
  loc_1795EF7:   var_88 = CByte(1) 'Byte
  loc_1795EFF:   Set var_94 = Me.TopCtrl1
  loc_1795F05:   Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1795F1A:   If ( = "Add") Then
  loc_1795F23:     var_E0 = 0
  loc_1795F40:     var_C8 = "Select IsNull(Max(CAST(SUBSTRING(SchemeCode,3,4) AS INT)),1)+1 AS MyCode From HappyHours Where SITE_CODE='" & MemVar_1F95070
  loc_1795F50:     unk_4CA816.Execute var_C8 & "'", var_B4, -1
  loc_1795F58:     var_94 = var_94.Fields
  loc_1795F60:     var_E0 = var_D0.Item(var_D0)
  loc_1795F68:     var_E4 = var_E4.Value
  loc_1795FA1:     var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1795FCF:     var_108 = (1 + Format(CStr(var_C4), "0000"))
  loc_1795FDA:     global_76 = CStr(var_108)
  loc_1795FEF:   Else
  loc_179600C:     var_D0 = Me.Fields.Item("Code")
  loc_1796023:     global_76 = CStr(var_D0.Value)
  loc_1796034:   End If
  loc_1796038:   Set var_94 = Me.TopCtrl1
  loc_179603E:   Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(1)
  loc_1796053:   If (var_F8 = "Add") Then
  loc_1796064:     Set var_94 = Me.Txt
  loc_179606A:     Call 0.Method_Proc_180_56_1797CD00 (CInt(2), var_D0)
  loc_1796093:     Set var_E4 = Me.Txt
  loc_1796099:     Call 0.Method_Proc_180_56_1797CD00 (CInt(1), var_118)
  loc_17960A9:     var_C4 = CVar(var_118.Tag) 'String
  loc_17960C2:     Set var_12C = Me.Txt
  loc_17960C8:     Call 0.Method_Proc_180_56_1797CD00 (CInt(0), var_130)
  loc_17960EE:     Set var_144 = Me.Txt
  loc_17960F4:     Call 0.Method_Proc_180_56_1797CD00 (CInt(3), var_148)
  loc_1796103:     Proc_6_7_F26918(var_158, CVar(var_148))
  loc_1796113:     Set var_18C = Me.Txt
  loc_1796119:     Call 0.Method_Proc_180_56_1797CD00 (CInt(&HA), var_190)
  loc_1796128:     Proc_6_7_F26918(var_1B0, CVar(var_190))
  loc_179613B:     Set var_1F4 = Me.Txt
  loc_1796141:     Call 0.Method_Proc_180_56_1797CD00 (CInt(6), var_1F8)
  loc_179615C:     Set var_200 = Me.Txt
  loc_1796162:     Call 0.Method_Proc_180_56_1797CD00 (CInt(7), var_204)
  loc_179617D:     Set var_250 = Me.Txt
  loc_1796183:     Call 0.Method_Proc_180_56_1797CD00 (CInt(8), var_254)
  loc_179618B:     var_258 = var_254.Text
  loc_179619E:     Set var_25C = Me.Txt
  loc_17961A4:     Call 0.Method_Proc_180_56_1797CD00 (CInt(9), var_260)
  loc_17961BF:     Set var_36C = Me.Txt
  loc_17961C5:     Call 0.Method_Proc_180_56_1797CD00 (CInt(4), var_370)
  loc_17961E0:     Set var_3B8 = Me.Txt
  loc_17961E6:     Call 0.Method_Proc_180_56_1797CD00 (CInt(5), var_3BC)
  loc_17961FB:     var_48C = Val(var_3BC.Text)
  loc_179620C:     Proc_6_7_F26918(var_420, Now)
  loc_1796225:     var_C8 = "Insert into HappyHoursHead(SchemeCode,ItemCat,ItemGroup,RestCode,AppDate,EndDate,FromTime,ToTime,U_Name,U_AE,Site_Code,LogSite_Code,DiscountType,DiscountValue,U_EntDt) " & " Values ('"
  loc_1796262:     var_140 = var_C8 & global_76 & "','" & Proc_6_38_E69628(CVar(var_D0.Tag)) & "','" & Proc_6_38_E69628(var_C4) & "','" & Proc_6_38_E69628(CVar(var_130.Tag))
  loc_179626F:     var_178 = CVar(var_140 & "',") & var_158 
  loc_17962C4:     var_288 = var_178 & "," & var_1B0 & "," & "'" & CVar(var_1F8.Text & ":" & var_204.Text) & "','" & CVar(var_258 & ":" & var_260.Text) 
  loc_1796310:     var_394 = var_288 & "','" & CVar(MemVar_1F950C8) & "','A','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "','" & CVar(var_370.Text) 
  loc_1796319:     var_3B4 = var_394 & "'," 
  loc_1796334:     var_430 = var_3B4 & CVar(var_48C) & "," & var_420 
  loc_179634B:     unk_4CA816.Execute CStr(var_430 & ")"), var_474, -1
  loc_17963F8:   Else
  loc_17963FC:     Set var_94 = Me.TopCtrl1
  loc_1796402:     Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_478)
  loc_1796417:     If (var_48C = "Edit") Then
  loc_1796428:       Set var_94 = Me.Txt
  loc_179642E:       Call 0.Method_Proc_180_56_1797CD00 (CInt(2), var_D0)
  loc_1796449:       Set var_E4 = Me.Txt
  loc_179644F:       Call 0.Method_Proc_180_56_1797CD00 (CInt(1), var_118)
  loc_179646A:       Set var_12C = Me.Txt
  loc_1796470:       Call 0.Method_Proc_180_56_1797CD00 (CInt(0), var_130)
  loc_1796488:       Set var_144 = Me.Txt
  loc_179648E:       Call 0.Method_Proc_180_56_1797CD00 (CInt(3), var_148)
  loc_179649D:       Proc_6_7_F26918(var_C4, CVar(var_148))
  loc_17964AD:       Set var_18C = Me.Txt
  loc_17964B3:       Call 0.Method_Proc_180_56_1797CD00 (CInt(&HA), var_190)
  loc_17964C2:       Proc_6_7_F26918(var_178, CVar(var_190))
  loc_17964D5:       Set var_1F4 = Me.Txt
  loc_17964DB:       Call 0.Method_Proc_180_56_1797CD00 (CInt(6), var_1F8)
  loc_17964E3:       var_124 = var_1F8.Text
  loc_17964F6:       Set var_200 = Me.Txt
  loc_17964FC:       Call 0.Method_Proc_180_56_1797CD00 (CInt(7), var_204)
  loc_1796517:       Set var_250 = Me.Txt
  loc_179651D:       Call 0.Method_Proc_180_56_1797CD00 (CInt(8), var_254)
  loc_1796525:       var_138 = var_254.Text
  loc_1796538:       Set var_25C = Me.Txt
  loc_179653E:       Call 0.Method_Proc_180_56_1797CD00 (CInt(9), var_260)
  loc_1796559:       Set var_36C = Me.Txt
  loc_179655F:       Call 0.Method_Proc_180_56_1797CD00 (CInt(4), var_370)
  loc_179657A:       Set var_3B8 = Me.Txt
  loc_1796580:       Call 0.Method_Proc_180_56_1797CD00 (CInt(5), var_3BC)
  loc_17965A6:       Proc_6_7_F26918(var_3B4, Date)
  loc_17965C6:       var_10C = "UPDATE HappyHoursHead SET ItemCat ='" & var_D0.Tag & "', ItemGroup='"
  loc_17965DB:       var_120 = var_10C & var_118.Tag & "',RestCode='" & var_130.Tag
  loc_179661F:       var_1D0 = CVar(var_120 & "', AppDate=") & var_C4 & ", EndDate=" & var_178 & ", FromTime='" & CVar(var_124 & ":" & var_204.Text) & "', ToTime='" 
  loc_179662A:       var_140 = var_138 & ":"
  loc_1796634:       var_21C = var_1D0 & CVar(var_140 & var_260.Text) 
  loc_179665A:       var_288 = var_21C & "',U_Name='" & CVar(MemVar_1F950C8) & "', U_AE='E',Site_Code='" & CVar(MemVar_1F95070) 
  loc_179667D:       var_308 = CVar(var_370.Text) 'String
  loc_1796694:       var_368 = var_288 & "', LogSite_Code='" & CVar(MemVar_1F95078) & "',DiscountType='" & var_308 & "',DiscountValue=" & CVar(Val(var_3BC.Text)) 
  loc_179669D:       var_384 = var_368 & ",U_EntDt=" 
  loc_17966AD:       var_400 = var_384 & var_3B4 & " WHERE SchemeCode='" 
  loc_17966D1:       unk_4CA816.Execute CStr(var_400 & CVar(global_76) & "'"), var_430, -1
  loc_179676B:     End If
  loc_179676B:   End If
  loc_1796790:   For var_4A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_4A0 'Integer
  loc_179679A:     Set var_94 = Me.TopCtrl1
  loc_17967A0:     Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(1)
  loc_17967B5:     If (var_478 = "Edit") Then
  loc_17967BC:       var_A4 = CVar(CLng(var_86)) 'Long
  loc_17967DE:       var_C8 = CStr(Me.FGrid.TextMatrix))
  loc_17967EF:       If (var_C8 <> vbNullString) Then
  loc_1796800:         Set var_94 = Me.Txt
  loc_1796806:         Call 0.Method_Proc_180_56_1797CD00 (CInt(4), var_D0, var_C8, CVar(CLng(5)))
  loc_179680E:         var_A4 = var_D0.Text
  loc_1796825:         If (var_C8 <> vbNullString) Then
  loc_179682C:           var_A4 = CVar(CLng(var_86)) 'Long
  loc_1796834:           var_1E0 = CVar(CLng(5)) 'Long
  loc_1796856:           var_48C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1796867:           Set var_D0 = Me.Txt
  loc_179686D:           Call 0.Method_Proc_180_56_1797CD00 (CInt(4), var_E4, var_10C, var_48C)
  loc_1796875:           var_1E0 = var_E4.Text
  loc_179688F:           Set var_118 = Me.FGrid
  loc_1796895:           var_C4 = var_118.TextMatrix)
  loc_17968DD:           Proc_6_7_F26918(var_21C, Date, var_C4, CVar(CLng(6)))
  loc_17968F0:           Set var_12C = Me.Txt
  loc_17968F6:           Call 0.Method_Proc_180_56_1797CD00 (CInt(6), var_130, var_120, CVar(CLng(var_86)))
  loc_17968FE:           var_A4 = var_130.Text
  loc_179690A:           var_128 = var_120 & ":"
  loc_179691B:           Set var_144 = Me.Txt
  loc_1796921:           Call 0.Method_Proc_180_56_1797CD00 (CInt(7), var_148, var_124)
  loc_1796929:           var_128 = var_148.Text
  loc_1796938:           Proc_6_17_EAAE40(var_288, CVar(var_48C & var_124))
  loc_179694B:           Set var_18C = Me.Txt
  loc_1796951:           Call 0.Method_Proc_180_56_1797CD00 (CInt(8), var_190)
  loc_1796959:           var_134 = var_190.Text
  loc_1796965:           var_13C = var_134 & ":"
  loc_1796976:           Set var_1F4 = Me.Txt
  loc_179697C:           Call 0.Method_Proc_180_56_1797CD00 (CInt(9), var_1F8, var_138)
  loc_1796984:           var_13C = var_1F8.Text
  loc_179698D:           var_2E8 = CVar(var_C4 & var_138) 'String
  loc_1796993:           Proc_6_17_EAAE40(var_308)
  loc_17969A3:           Set var_200 = Me.Txt
  loc_17969A9:           Call 0.Method_Proc_180_56_1797CD00 (CInt(3), var_204)
  loc_17969B8:           Proc_6_7_F26918(var_384, CVar(var_204))
  loc_17969C8:           Set var_250 = Me.Txt
  loc_17969CE:           Call 0.Method_Proc_180_56_1797CD00 (CInt(&HA), var_254)
  loc_17969DD:           Proc_6_7_F26918(var_400, CVar(var_254))
  loc_17969E6:           var_4F0 = CVar(CLng(var_86)) 'Long
  loc_17969EE:           var_510 = CVar(CLng(2)) 'Long
  loc_17969F7:           Set var_25C = Me.FGrid
  loc_17969FD:           var_430 = var_25C.TextMatrix)
  loc_1796A17:           Set var_260 = Me.Txt
  loc_1796A1D:           Call 0.Method_Proc_180_56_1797CD00 (CInt(0), var_36C, var_140, var_430)
  loc_1796A25:           var_510 = var_36C.Tag
  loc_1796A4A:           var_110 = "Update HappyHours Set DiscountValue=" & CStr(var_48C) & ",DiscountType='"
  loc_1796A51:           var_114 = var_110 & var_10C
  loc_1796A7A:           var_1B0 = CVar(var_114 & "', Active='") & IIf((CStr(var_C4) = "Yes"), "Y", "N") & "', Site_Code='" & CVar(MemVar_1F95070) & "',U_name='" 
  loc_1796ABD:           var_348 = var_1B0 & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_21C & ",U_AE='E',FromTime=" & var_288 & ", ToTime=" & var_308 & ", AppDate=" 
  loc_1796AFB:           var_560 = var_348 & var_384 & ", EndDate=" & var_400 & " Where ItemCode='" & CVar(CStr(var_430)) & "' And RestCode='" & CVar(var_140) 
  loc_1796B28:           unk_4CA816.Execute CStr(var_560 & "' And SchemeCode='" & CVar(global_76) & "'"), var_5E0, -1
  loc_1796BCF:         Else
  loc_1796BD3:           var_A4 = CVar(CLng(var_86)) 'Long
  loc_1796BFD:           var_48C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1796C15:           Set var_D0 = Me.FGrid
  loc_1796C1B:           var_C4 = var_D0.TextMatrix)
  loc_1796C37:           var_F8 = "Y"
  loc_1796C58:           var_1F0 = Date
  loc_1796C63:           Proc_6_7_F26918(var_21C, var_1F0, var_C4, CVar(CLng(6)), CVar(CLng(var_86)), var_48C)
  loc_1796C76:           Set var_E4 = Me.Txt
  loc_1796C7C:           Call 0.Method_Proc_180_56_1797CD00 (CInt(6), var_118, var_110, CVar(CLng(5)))
  loc_1796C84:           var_A4 = var_118.Text
  loc_1796CA1:           Set var_12C = Me.Txt
  loc_1796CA7:           Call 0.Method_Proc_180_56_1797CD00 (CInt(7), var_130, var_114, var_110 & ":")
  loc_1796CAF:           var_370 = var_130.Text
  loc_1796CB8:           var_278 = CVar(var_4F0 & var_114) 'String
  loc_1796CBE:           Proc_6_17_EAAE40(var_288, var_278)
  loc_1796CD1:           Set var_144 = Me.Txt
  loc_1796CD7:           Call 0.Method_Proc_180_56_1797CD00 (CInt(8), var_148)
  loc_1796CDF:           var_120 = var_148.Text
  loc_1796CEB:           var_128 = var_120 & ":"
  loc_1796CFC:           Set var_18C = Me.Txt
  loc_1796D02:           Call 0.Method_Proc_180_56_1797CD00 (CInt(9), var_190, var_124)
  loc_1796D0A:           var_128 = var_190.Text
  loc_1796D13:           var_2E8 = CVar(var_2E8 & var_124) 'String
  loc_1796D19:           Proc_6_17_EAAE40(var_308)
  loc_1796D29:           Set var_1F4 = Me.Txt
  loc_1796D2F:           Call 0.Method_Proc_180_56_1797CD00 (CInt(3), var_1F8)
  loc_1796D3E:           Proc_6_7_F26918(var_384, CVar(var_1F8))
  loc_1796D4E:           Set var_200 = Me.Txt
  loc_1796D54:           Call 0.Method_Proc_180_56_1797CD00 (CInt(&HA), var_204)
  loc_1796D63:           Proc_6_7_F26918(var_400, CVar(var_204))
  loc_1796D6C:           var_4F0 = CVar(CLng(var_86)) 'Long
  loc_1796D74:           var_510 = CVar(CLng(2)) 'Long
  loc_1796D83:           var_430 = Me.FGrid.TextMatrix)
  loc_1796D9D:           Set var_254 = Me.Txt
  loc_1796DA3:           Call 0.Method_Proc_180_56_1797CD00 (CInt(0), var_25C, var_134, var_430)
  loc_1796DAB:           var_510 = var_25C.Tag
  loc_1796DC9:           var_E8 = "Update HappyHours Set DiscountValue=" & CStr(var_48C)
  loc_1796DD6:           var_178 = CVar(var_E8 & ", Active='") & IIf((CStr(var_C4) = "Yes"), var_F8, "N") 
  loc_1796DDF:           var_188 = var_178 & "', Site_Code='" 
  loc_1796E15:           var_24C = var_188 & CVar(MemVar_1F95070) & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_21C & ",U_AE='E',FromTime=" 
  loc_1796E55:           var_420 = var_24C & var_288 & ", ToTime=" & var_308 & ", AppDate=" & var_384 & ", EndDate=" & var_400 & " Where ItemCode='" 
  loc_1796E5D:           var_450 = CVar(CStr(var_430)) 'String
  loc_1796E60:           var_474 = var_420 & var_450 
  loc_1796E96:           var_138 = CStr(var_474 & "' And RestCode='" & CVar(var_134) & "' AND SchemeCode='" & CVar(global_76) & "'")
  loc_1796EA0:           unk_4CA816.Execute var_138, var_5E0, -1
  loc_1796F3A:         End If
  loc_1796F3A:       End If
  loc_1796F3A:     End If
  loc_1796F3E:     Set var_94 = Me.TopCtrl1
  loc_1796F44:     Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_260)
  loc_1796F59:     If (var_4F0 = "Add") Then
  loc_1796F67:       Set var_94 = Me.Txt
  loc_1796F6D:       Call 0.Method_Proc_180_56_1797CD00 (CInt(4), var_D0)
  loc_1796F96:       If (Proc_183_19_E8E68C(var_D0, "Discount Type") = 0) Then
  loc_1796FA0:         Call Txt_GotFocus(CInt(4))
  loc_1796FA5:         Exit Sub
  loc_1796FA6:       End If
  loc_1796FB1:       Set var_94 = Me.Txt
  loc_1796FB7:       Call 0.Method_Proc_180_56_1797CD00 (CInt(5), var_D0)
  loc_1796FC8:       Set var_E4 = var_D0
  loc_1796FE0:       If (Proc_183_19_E8E68C(var_E4, "Discount Value") = 0) Then
  loc_1796FEA:         Call Txt_GotFocus(CInt(5))
  loc_1796FEF:         Exit Sub
  loc_1796FF0:       End If
  loc_1796FF4:       var_A4 = CVar(CLng(var_86)) 'Long
  loc_1796FFC:       var_1E0 = CVar(CLng(2)) 'Long
  loc_179700B:       var_B4 = Me.FGrid.TextMatrix)
  loc_1797025:       Set var_D0 = Me.Txt
  loc_179702B:       Call 0.Method_Proc_180_56_1797CD00 (CInt(0), var_E4, var_E8, var_B4)
  loc_1797033:       var_1E0 = var_E4.Tag
  loc_1797043:       Set var_118 = Me.Txt
  loc_1797049:       Call 0.Method_Proc_180_56_1797CD00 (CInt(3), var_12C)
  loc_1797058:       Proc_6_7_F26918(var_F8, CVar(var_12C))
  loc_1797063:       var_2D8 = 0
  loc_1797099:       var_108 = CVar("Select count(*) From HappyHours Where ItemCode='" & CStr(var_B4) & "' And RestCode='" & var_E8 & "' And AppDate=") 'String
  loc_179709F:       var_158 = var_108 & var_F8 
  loc_17970B6:       unk_4CA816.Execute CStr(var_158 & vbNullString), var_178, -1
  loc_17970BE:       var_130 = var_130.Fields
  loc_17970C6:       var_2D8 = var_144.Item(var_144)
  loc_17970CE:       var_148 = var_148.Value
  loc_1797111:       If (var_188 > 0) Then
  loc_1797118:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_179712F:         var_B4 = Me.FGrid.TextMatrix)
  loc_1797150:         var_C8 = CStr(var_B4)
  loc_1797165:         var_10C = " !" & vbCrLf & " Change Previous One !"
  loc_1797192:         If (MsgBox(CVar("Entry Already Exist For Item Code " & var_C8 & var_10C), &H44, var_F8, var_108, var_158) = 6) Then
  loc_17971A3:           Set var_94 = Me.Txt
  loc_17971A9:           Call 0.Method_Proc_180_56_1797CD00 (CInt(4), var_D0, var_C8, var_B4, CVar(CLng(1)))
  loc_17971B1:           var_A4 = var_D0.Text
  loc_17971C8:           If (var_C8 <> vbNullString) Then
  loc_17971D9:             Set var_94 = Me.Txt
  loc_17971DF:             Call 0.Method_Proc_180_56_1797CD00 (CInt(5), var_D0, var_C8)
  loc_17971E7:             var_188 = var_D0.Text
  loc_17971F4:             var_48C = Val(var_C8)
  loc_1797205:             Set var_E4 = Me.Txt
  loc_179720B:             Call 0.Method_Proc_180_56_1797CD00 (CInt(4), var_118, var_10C)
  loc_179721C:             var_A4 = CVar(CLng(var_86)) 'Long
  loc_179722D:             Set var_12C = Me.FGrid
  loc_1797233:             var_B4 = var_12C.TextMatrix)
  loc_1797259:             var_11C = CStr(var_B4)
  loc_179727B:             Proc_6_7_F26918(var_1F0, Date, var_B4, CVar(CLng(6)))
  loc_179728E:             Set var_130 = Me.Txt
  loc_1797294:             Call 0.Method_Proc_180_56_1797CD00 (CInt(6), var_144, var_120)
  loc_17972A8:             var_128 = var_120 & ":"
  loc_17972B9:             Set var_148 = Me.Txt
  loc_17972BF:             Call 0.Method_Proc_180_56_1797CD00 (CInt(7), var_18C, var_124)
  loc_17972C7:             var_128 = var_18C.Text
  loc_17972D6:             Proc_6_17_EAAE40(var_278, CVar(var_144.Text & var_124))
  loc_17972E9:             Set var_190 = Me.Txt
  loc_17972EF:             Call 0.Method_Proc_180_56_1797CD00 (CInt(8), var_1F4)
  loc_1797303:             var_13C = var_1F4.Text & ":"
  loc_1797314:             Set var_1F8 = Me.Txt
  loc_179731A:             Call 0.Method_Proc_180_56_1797CD00 (CInt(9), var_200, var_138)
  loc_1797322:             var_13C = var_200.Text
  loc_179732B:             var_2C8 = CVar(var_2E8 & var_138) 'String
  loc_1797331:             Proc_6_17_EAAE40(var_2E8)
  loc_179733A:             var_464 = CVar(CLng(var_86)) 'Long
  loc_1797342:             var_4B0 = CVar(CLng(2)) 'Long
  loc_179734B:             Set var_204 = Me.FGrid
  loc_1797351:             var_348 = var_204.TextMatrix)
  loc_179736B:             Set var_250 = Me.Txt
  loc_1797371:             Call 0.Method_Proc_180_56_1797CD00 (CInt(0), var_254, var_140, var_348)
  loc_1797379:             var_4B0 = var_254.Tag
  loc_1797389:             Set var_25C = Me.Txt
  loc_179738F:             Call 0.Method_Proc_180_56_1797CD00 (CInt(3), var_260)
  loc_179739E:             Proc_6_7_F26918(var_420, CVar(var_260))
  loc_17973CA:             var_114 = "Update HappyHours Set DiscountValue=" & CStr(var_118.Text) & ",DiscountType='" & var_10C
  loc_17973F3:             var_1A0 = CVar(var_114 & "', Active='") & IIf((var_11C = "Yes"), "Y", "N") & "', Site_Code='" & CVar(MemVar_1F95070) & "',U_name='" 
  loc_179742D:             var_308 = var_1A0 & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_1F0 & ",U_AE='E',FromTime=" & var_278 & ", ToTime=" & var_2E8 
  loc_1797464:             var_430 = var_308 & "  Where ItemCode='" & CVar(CStr(var_348)) & "' And RestCode='" & CVar(var_140) & "' And AppDate=" & var_420 
  loc_1797468:             var_1FC = CStr(var_430)
  loc_1797472:             unk_4CA816.Execute var_1FC, var_450, -1
  loc_1797509:           Else
  loc_1797517:             Set var_94 = Me.Txt
  loc_179751D:             Call 0.Method_Proc_180_56_1797CD00 (CInt(5), var_D0, var_C8)
  loc_1797525:             var_36C = var_D0.Text
  loc_179753C:             var_48C = Val(CStr(Val(var_C8)))
  loc_1797554:             Set var_E4 = Me.FGrid
  loc_179755A:             var_B4 = var_E4.TextMatrix)
  loc_179758F:             var_108 = IIf((CStr(var_B4) = "Yes"), "Y", "N")
  loc_17975A2:             Proc_6_7_F26918(var_1F0, Date, var_B4, CVar(CLng(6)))
  loc_17975B5:             Set var_118 = Me.Txt
  loc_17975BB:             Call 0.Method_Proc_180_56_1797CD00 (CInt(6), var_12C, var_114, CVar(CLng(var_86)))
  loc_17975CF:             var_120 = var_114 & ":"
  loc_17975E0:             Set var_130 = Me.Txt
  loc_17975E6:             Call 0.Method_Proc_180_56_1797CD00 (CInt(7), var_144, var_11C)
  loc_17975EE:             var_120 = var_144.Text
  loc_17975FD:             Proc_6_17_EAAE40(var_278, CVar(var_464 & var_11C))
  loc_1797610:             Set var_148 = Me.Txt
  loc_1797616:             Call 0.Method_Proc_180_56_1797CD00 (CInt(8), var_18C)
  loc_179762A:             var_134 = var_18C.Text & ":"
  loc_179763B:             Set var_190 = Me.Txt
  loc_1797641:             Call 0.Method_Proc_180_56_1797CD00 (CInt(9), var_1F4, var_128)
  loc_1797649:             var_134 = var_1F4.Text
  loc_1797652:             var_2C8 = CVar(var_2C8 & var_128) 'String
  loc_1797658:             Proc_6_17_EAAE40(var_2E8)
  loc_1797661:             var_464 = CVar(CLng(var_86)) 'Long
  loc_1797669:             var_4B0 = CVar(CLng(2)) 'Long
  loc_1797672:             Set var_1F8 = Me.FGrid
  loc_1797678:             var_348 = var_1F8.TextMatrix)
  loc_1797692:             Set var_200 = Me.Txt
  loc_1797698:             Call 0.Method_Proc_180_56_1797CD00 (CInt(0), var_204, var_138, var_348)
  loc_17976A0:             var_4B0 = var_204.Tag
  loc_17976B0:             Set var_250 = Me.Txt
  loc_17976B6:             Call 0.Method_Proc_180_56_1797CD00 (CInt(3), var_254)
  loc_17976C5:             Proc_6_7_F26918(var_420, CVar(var_254))
  loc_1797703:             var_188 = CVar("Update HappyHours Set DiscountValue=" & CStr(var_12C.Text) & ", Active='") & var_108 & "', Site_Code='" & CVar(MemVar_1F95070) 
  loc_179773F:             var_2A8 = var_188 & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_1F0 & ",U_AE='E',FromTime=" & var_278 & ", ToTime=" 
  loc_1797746:             var_308 = var_2A8 & var_2E8 
  loc_179775A:             var_384 = var_308 & "  Where ItemCode='" & CVar(CStr(var_348)) 
  loc_1797781:             var_13C = CStr(var_384 & "' And RestCode='" & CVar(var_138) & "' And AppDate=" & var_420)
  loc_179778B:             unk_4CA816.Execute var_13C, var_450, -1
  loc_1797817:           End If
  loc_1797817:         End If
  loc_179781A:       Else
  loc_179781E:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_1797835:         var_B4 = Me.FGrid.TextMatrix)
  loc_179784F:         Set var_D0 = Me.Txt
  loc_1797855:         Call 0.Method_Proc_180_56_1797CD00 (CInt(0), var_E4, var_114, var_B4, CVar(CLng(2)))
  loc_179785D:         var_A4 = var_E4.Tag
  loc_179787D:         var_C4 = Me.FGrid.TextMatrix)
  loc_1797890:         var_48C = Val(CStr(var_C4))
  loc_179789E:         Set var_12C = Me.Txt
  loc_17978A4:         Call 0.Method_Proc_180_56_1797CD00 (CInt(3), var_130, var_48C, CVar(CLng(5)))
  loc_17978AC:         var_F8 = CVar(var_130) 'Address
  loc_17978B3:         Proc_6_7_F26918(var_108, var_F8, CVar(CLng(var_86)))
  loc_17978C6:         Proc_6_7_F26918(var_1F0, Date, var_25C)
  loc_17978D9:         Set var_144 = Me.Txt
  loc_17978DF:         Call 0.Method_Proc_180_56_1797CD00 (CInt(4), var_148, var_13C)
  loc_17978E7:         var_464 = var_148.Text
  loc_17978FA:         Set var_18C = Me.Txt
  loc_1797900:         Call 0.Method_Proc_180_56_1797CD00 (CInt(6), var_190)
  loc_1797914:         var_208 = var_190.Text & ":"
  loc_1797925:         Set var_1F4 = Me.Txt
  loc_179792B:         Call 0.Method_Proc_180_56_1797CD00 (CInt(7), var_1F8, var_1FC)
  loc_1797933:         var_208 = var_1F8.Text
  loc_1797942:         Proc_6_17_EAAE40(var_308)
  loc_1797955:         Set var_200 = Me.Txt
  loc_179795B:         Call 0.Method_Proc_180_56_1797CD00 (CInt(8), var_204)
  loc_179796F:         var_264 = var_204.Text & ":"
  loc_1797980:         Set var_250 = Me.Txt
  loc_1797986:         Call 0.Method_Proc_180_56_1797CD00 (CInt(9), var_254, var_258)
  loc_179798E:         var_264 = var_254.Text
  loc_1797997:         var_368 = CVar(CVar(var_2C8 & var_1FC) & var_258) 'String
  loc_179799D:         Proc_6_17_EAAE40(var_384)
  loc_17979A6:         var_4D0 = CVar(CLng(var_86)) 'Long
  loc_17979AE:         var_4F0 = CVar(CLng(6)) 'Long
  loc_1797A0B:         var_C8 = "Insert Into HappyHours(SchemeCode,ItemCode,RestCode,DiscountValue,AppDate,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE,DiscountType,FromTime,ToTime,Active)" & " Values('"
  loc_1797A15:         var_CC = var_C8 & global_76
  loc_1797A68:         var_188 = CVar(var_CC & "','" & CStr(var_B4) & "','" & var_114 & "'," & CStr(var_48C) & ",") & var_108 & ",'" & CVar(MemVar_1F95070) 
  loc_1797ABA:         var_2C8 = var_188 & "','" & CVar(MemVar_1F950C8) & "'," & var_1F0 & ",'A','" & CVar(MemVar_1F95078) & "','" & CVar(var_13C) & "'," 
  loc_1797AF8:         unk_4CA816.Execute CStr(var_2C8 & var_308 & "," & var_384 & ",'" & IIf((CStr(Me.FGrid.TextMatrix)) = "Yes"), "Y", "N") & "')"), var_474, -1
  loc_1797B98:       End If
  loc_1797B98:     End If
  loc_1797B9B:   Next var_4A0 'Integer
  loc_1797BA0: End If
  loc_1797BA6: unk_4CA816.CommitTrans
  loc_1797BAF: var_88 = CByte(0) 'Byte
  loc_1797BBE: Me.Requery -1
  loc_1797BE6: Call Proc_180_53_EB6210(Proc_5_1_100EC1C("INI", Me))
  loc_1797BFC: Set var_94 = Me.TxtGrid
  loc_1797C02: Call 0.Method_Proc_180_56_1797CD00 (0, var_D0)
  loc_1797C0A: var_D0.Visible = False
  loc_1797C2F: MsgBox("Record Saved !!", &H40, var_C4, var_F8, var_108)
  loc_1797C3F: Call Proc_180_48_15C2370(global_68)
  loc_1797C44: Exit Sub
  loc_1797C45: ' Referenced from: 1795ED4
  loc_1797C4E: If (CInt(var_88) = 1) Then
  loc_1797C57:   unk_4CA816.RollbackTrans
  loc_1797C5C: End If
  loc_1797C64: Set var_94 = Err()
  loc_1797C6A: Call 0.Method_arg_1C (var_90)
  loc_1797C77: Set var_D0 = Err()
  loc_1797C7D: Call 0.Method_arg_2C (var_CC)
  loc_1797CAE: MsgBox(CVar(CStr(var_90) & " : " & var_CC), &H10, "Message ", var_F8, var_108)
  loc_1797CCE: Exit Sub
End Sub
