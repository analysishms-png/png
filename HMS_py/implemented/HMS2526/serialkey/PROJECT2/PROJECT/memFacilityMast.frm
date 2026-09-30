VERSION 5.00
Begin VB.Form memFacilityMast
  Caption = "Facility Master"
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
  ClientWidth = 8925
  ClientHeight = 7995
  Begin DataGrid DGTaxStru
    Left = 15720
    Top = 3195
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin DataGrid DGHelp
    Left = 16170
    Top = 1695
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8925
    Height = 450
    TabIndex = 41
  End
  Begin PictureBox Picture1
    Picture = "memFacilityMast.frx":0
    Left = 13215
    Top = 8880
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 40
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 1590
    Width = 4380
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 2220
    Width = 1185
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 25
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
    Left = 3945
    Top = 2535
    Width = 1185
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 3165
    Width = 1185
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 3480
    Width = 1185
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 2850
    Width = 1185
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 1905
    Width = 1185
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 3795
    Width = 1185
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 4110
    Width = 1185
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin Frame FrmList
    Left = 13905
    Top = 6945
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 19
    End
  End
  Begin PictureBox Picture2
    Picture = "memFacilityMast.frx":34E
    Left = 13215
    Top = 8610
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 17
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 4425
    Width = 3180
    Height = 285
    TabIndex = 9
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
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 4740
    Width = 3180
    Height = 285
    TabIndex = 10
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 5055
    Width = 675
    Height = 285
    TabIndex = 12
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
    Index = 12
    BackColor = &HFFFFFF&
    Left = 8670
    Top = 9015
    Width = 1380
    Height = 255
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
    Appearance = 0 'Flat
  End
  Begin Frame FrmList1
    Left = 14115
    Top = 5205
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Begin ListView ListView1
      Left = 0
      Top = 0
      Width = 1680
      Height = 1815
      TabStop = 0   'False
      TabIndex = 15
    End
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    Left = 10365
    Top = 9075
    Width = 2505
    Height = 255
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin DataGrid DGRevenue
    Left = 15375
    Top = 945
    Width = 5655
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 16
  End
  Begin MSFlexGrid FGPoint
    Left = 13590
    Top = 8175
    Width = 1935
    Height = 1065
    Visible = 0   'False
    TabIndex = 21
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 345
    Top = 8055
    Width = 2520
    Height = 255
    TabIndex = 43
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
    Left = 330
    Top = 8385
    Width = 2430
    Height = 285
    TabIndex = 42
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
  Begin Label Label2
    Caption = "Yes/No"
    ForeColor = &HC0&
    Left = 4695
    Top = 5070
    Width = 645
    Height = 240
    TabIndex = 39
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
  Begin Label LblLedgerAc
    Caption = "Name"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2415
    Top = 1590
    Width = 555
    Height = 240
    TabIndex = 38
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
    Caption = "Fixed Rate"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2415
    Top = 2535
    Width = 1035
    Height = 240
    TabIndex = 37
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
  Begin Label LblLedgerAc
    Caption = "Account Name"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2415
    Top = 4740
    Width = 1380
    Height = 240
    TabIndex = 36
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
    Caption = "Add. Adult"
    Index = 6
    ForeColor = &HFF0000&
    Left = 2415
    Top = 3795
    Width = 990
    Height = 240
    TabIndex = 35
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
  Begin Label LblLedgerAc
    Caption = "Primary Member"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2415
    Top = 2850
    Width = 1590
    Height = 240
    TabIndex = 34
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
    Caption = "Tax Strcture "
    Index = 4
    ForeColor = &HFF0000&
    Left = 2415
    Top = 4440
    Width = 1230
    Height = 240
    TabIndex = 33
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
    Caption = "Short Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2415
    Top = 1905
    Width = 1125
    Height = 240
    TabIndex = 32
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
  Begin Label LblSysYN
    Caption = "SysYN"
    ForeColor = &H0&
    Left = 12450
    Top = 8610
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 31
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
  Begin Label LblLedgerAc
    Caption = "Spouse"
    Index = 3
    ForeColor = &HFF0000&
    Left = 2415
    Top = 3165
    Width = 705
    Height = 240
    TabIndex = 30
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
  Begin Label LblLedgerAc
    Caption = "Child "
    Index = 4
    ForeColor = &HFF0000&
    Left = 2415
    Top = 3480
    Width = 555
    Height = 240
    TabIndex = 29
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
    Caption = "Yes/No"
    ForeColor = &H0&
    Left = 12195
    Top = 8130
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 28
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
  Begin Label LblName
    Caption = "Add. Child"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2415
    Top = 4110
    Width = 990
    Height = 240
    TabIndex = 27
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
  Begin Label LblLedgerAc
    Caption = "Active"
    Index = 5
    ForeColor = &HFF0000&
    Left = 2415
    Top = 5040
    Width = 585
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
  Begin Label LblLedgerAc
    Caption = "Extra Adult"
    Index = 6
    ForeColor = &H0&
    Left = 7140
    Top = 8730
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 25
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
  Begin Label LblLedgerAc
    Caption = "Extra Child"
    Index = 7
    ForeColor = &H0&
    Left = 7140
    Top = 9000
    Width = 915
    Height = 240
    Visible = 0   'False
    TabIndex = 24
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
    Caption = "Facility Type"
    Index = 3
    ForeColor = &HFF0000&
    Left = 2415
    Top = 2220
    Width = 1215
    Height = 240
    TabIndex = 23
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

Attribute VB_Name = "memFacilityMast"


Private Sub ListView1_UnknownEvent_13 'F5EE64
  'Data Table: 4C41BC
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5ED86: If (Me.ListView1.ListItems.Count > 0) Then
  loc_F5ED8D:   Set var_A8 = Me.ListView1
  loc_F5EDD7:   Set var_C0 = Me.Txt
  loc_F5EDDD:   Call 0.Method_ListView1_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5EDE5:   var_C4.Text = Me.ListView1.SelectedItem.Text
  loc_F5EE05: End If
  loc_F5EE11: Me.FrmList1.Visible = False
  loc_F5EE41: Set var_9C = Me.Txt
  loc_F5EE47: Call 0.Method_ListView1_UnknownEvent_130 (CInt(Val(CStr(Me.ListView1.Tag))), var_A8)
  loc_F5EE4F: var_A8.SetFocus
  loc_F5EE63: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F49EB4
  'Data Table: 4C41BC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F49DAB: Me.DGTaxStru.Visible = False
  loc_F49DCA: If (Me.RecordCount > 0) Then
  loc_F49E09:   Set var_B4 = Me.Txt
  loc_F49E0F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(9), var_B8)
  loc_F49E17:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F49E4A:   var_B0 = Me.Fields.Item("Name")
  loc_F49E69:   Set var_B4 = Me.Txt
  loc_F49E6F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(9), var_B8)
  loc_F49E77:   var_B8.Text = CStr(var_B0.Value)
  loc_F49E8D: End If
  loc_F49E98: Set var_A8 = Me.Txt
  loc_F49E9E: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(9))
  loc_F49EA6: var_B0.SetFocus
  loc_F49EB2: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'EA6748
  'Data Table: 4C41BC
  Dim var_A8 As Variant
  loc_EA66C8: Set var_88 = Me.DGTaxStru
  loc_EA66F2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA66FA: Set var_BC = Me.DGTaxStru
  loc_EA6736: Proc_6_138_106E830(Me.DGTaxStru, global_64, CInt(9), Me.FGPoint)
  loc_EA6744: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E648E0
  'Data Table: 4C41BC
  loc_E648B0: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E648B3:   Call DGHelp_UnknownEvent_9()
  loc_E648B8: End If
  loc_E648D4: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_E648D7:   Call DGTaxStru_UnknownEvent_9()
  loc_E648DC: End If
  loc_E648DC: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1151964
  'Data Table: 4C41BC
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  Dim var_88 As ListView
  loc_11515E6: Set var_88 = Me.Txt
  loc_11515EC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11515FA: Proc_6_74_E23240(var_8C)
  loc_1151606: Call Proc_267_35_F22A88(var_8C)
  loc_115160B: On Error Goto loc_1151920
  loc_1151611: var_92 = Index
  loc_115161C: If (var_92 = CInt(&HA)) Then
  loc_1151636:   If (Me.RecordCount > 0) Then
  loc_1151644:     Set var_8C = Me.FGPoint
  loc_115165C:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_115166A:   End If
  loc_115166D: Else
  loc_1151675:   If (var_92 = CInt(9)) Then
  loc_115168F:     If (Me.RecordCount > 0) Then
  loc_115169D:       Set var_8C = Me.FGPoint
  loc_11516B5:       Proc_6_137_1192FDC(Me.DGTaxStru, global_64, Index)
  loc_11516C3:     End If
  loc_1151711:     Set var_88 = Me.Txt
  loc_1151717:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_115171F:     var_8C = var_8C.Text
  loc_1151737:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_115173A:       Exit Sub
  loc_115173B:     End If
  loc_1151748:     Set var_88 = Me.Txt
  loc_115174E:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1151756:     var_A0 = var_8C.Text
  loc_1151768:     var_B0 = "Name"
  loc_11517A3:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_11517AC:       Me.MoveFirst
  loc_11517CF:       Set var_88 = Me.Txt
  loc_11517D5:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_11517DD:       0 = var_8C.Text
  loc_11517F6:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_115180B:     End If
  loc_115180E:   Else
  loc_1151816:     If (var_92 = CInt(2)) Then
  loc_1151826:       ReDim var_F0(0 To 1)
  loc_115183D:       var_F0(0) = "Fixed"
  loc_115184C:       var_F0(1) = "Memberwise"
  loc_1151863:       global_76 = Array(var_F0)
  loc_115187C:       Me.ListView.Tag = CVar(CStr(2))
  loc_115188B:       Set var_B4 = Me.ListView
  loc_11518A6:       Set var_8C = Me.Txt
  loc_11518C0:       Set global_92 = Proc_6_66_F0048C(var_B4, var_8C, Index)
  loc_11518DE:       Set var_88 = Me.Txt
  loc_11518E4:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11518EC:       global_76 = var_8C.Text
  loc_11518FE:       Set var_90 = Me.Txt
  loc_1151904:       Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_115190C:       var_B4.Tag = 2
  loc_115191F:     End If
  loc_115191F:   End If
  loc_115191F: End If
  loc_115191F: Exit Sub
  loc_1151920: ' Referenced from: 115160B
  loc_1151928: Set var_88 = Err()
  loc_115192E: Call 0.Method_arg_2C (var_A0)
  loc_115194F: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_124)
  loc_1151962: Exit Sub
  loc_1151963: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12D3CF8
  'Data Table: 4C41BC
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_110 As Variant
  Dim var_A4 As Frame
  loc_12D368E: If (CLng(Shift) = &H1B) Then
  loc_12D3691:   Call Proc_267_35_F22A88()
  loc_12D3696:   Exit Sub
  loc_12D3697: End If
  loc_12D369A: var_86 = KeyCode
  loc_12D36A5: If (var_86 = CInt(&HA)) Then
  loc_12D36C5:   Set var_98 = Me.FGPoint
  loc_12D36F3:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift)
  loc_12D3760:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12D3786:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_12D3794:   End If
  loc_12D3797: Else
  loc_12D379F:   If (var_86 = CInt(9)) Then
  loc_12D37AD:     Set var_A8 = Me.Txt
  loc_12D37BF:     Set var_A0 = Me.FGPoint
  loc_12D37CA:     Set var_98 = Nothing
  loc_12D37FC:     Proc_6_69_134A630(Me.DGTaxStru, var_A8, CInt(9), global_64, Shift, 0, 1)
  loc_12D381B:     var_AC = Me.RecordCount
  loc_12D386B:     If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12D3872:       Set var_98 = Me.DGTaxStru
  loc_12D3879:       Set var_90 = Me.FGPoint
  loc_12D3891:       Proc_6_138_106E830(var_98, global_64, KeyCode, var_90, var_98, var_A0)
  loc_12D389F:     End If
  loc_12D38A2:   Else
  loc_12D38AA:     If (var_86 = CInt(2)) Then
  loc_12D38CF:       Set var_8C = Me.Txt
  loc_12D38D5:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_12D38DD:       1 = var_90.Left
  loc_12D38EF:       Set var_98 = Me.Txt
  loc_12D38F5:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_12D38FD:       var_98 = var_A0.Top
  loc_12D390F:       Set var_A4 = Me.Txt
  loc_12D3915:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_BC)
  loc_12D391D:       0 = var_A8.Height
  loc_12D392F:       Set var_B4 = Me.Txt
  loc_12D3935:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12D3985:       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12D39B1:       If (KeyCode = CInt(2)) Then
  loc_12D39C1:         Set var_8C = Me.Txt
  loc_12D39C7:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E0, CInt(var_AC))
  loc_12D39CF:         CInt((var_B8 + var_BC)) = var_90.Text
  loc_12D39E6:         If (var_E0 = "Fixed") Then
  loc_12D39F6:           Set var_8C = Me.Txt
  loc_12D39FC:           Call 0.Method_Txt_KeyDown0 (CInt(3), var_90, &HFF)
  loc_12D3A04:           var_90.Enabled = CInt(var_C0.Width)
  loc_12D3A1D:           Set var_8C = Me.Txt
  loc_12D3A23:           Call 0.Method_Txt_KeyDown0 (CInt(4), var_90, 0)
  loc_12D3A2B:           var_90.Enabled = True
  loc_12D3A44:           Set var_8C = Me.Txt
  loc_12D3A4A:           Call 0.Method_Txt_KeyDown0 (CInt(5), var_90)
  loc_12D3A52:           var_90.Enabled = False
  loc_12D3A6B:           Set var_8C = Me.Txt
  loc_12D3A71:           Call 0.Method_Txt_KeyDown0 (CInt(6), var_90)
  loc_12D3A79:           var_90.Enabled = False
  loc_12D3A92:           Set var_8C = Me.Txt
  loc_12D3A98:           Call 0.Method_Txt_KeyDown0 (CInt(7), var_90)
  loc_12D3AA0:           var_90.Enabled = False
  loc_12D3AB9:           Set var_8C = Me.Txt
  loc_12D3ABF:           Call 0.Method_Txt_KeyDown0 (CInt(8), var_90)
  loc_12D3AC7:           var_90.Enabled = False
  loc_12D3AD6:         Else
  loc_12D3AE3:           Set var_8C = Me.Txt
  loc_12D3AE9:           Call 0.Method_Txt_KeyDown0 (CInt(3), var_90)
  loc_12D3AF1:           var_90.Enabled = False
  loc_12D3B0A:           Set var_8C = Me.Txt
  loc_12D3B10:           Call 0.Method_Txt_KeyDown0 (CInt(4), var_90)
  loc_12D3B18:           var_90.Enabled = True
  loc_12D3B31:           Set var_8C = Me.Txt
  loc_12D3B37:           Call 0.Method_Txt_KeyDown0 (CInt(5), var_90)
  loc_12D3B3F:           var_90.Enabled = True
  loc_12D3B58:           Set var_8C = Me.Txt
  loc_12D3B5E:           Call 0.Method_Txt_KeyDown0 (CInt(6), var_90)
  loc_12D3B66:           var_90.Enabled = True
  loc_12D3B7F:           Set var_8C = Me.Txt
  loc_12D3B85:           Call 0.Method_Txt_KeyDown0 (CInt(7), var_90)
  loc_12D3B8D:           var_90.Enabled = True
  loc_12D3BA6:           Set var_8C = Me.Txt
  loc_12D3BAC:           Call 0.Method_Txt_KeyDown0 (CInt(8), var_90)
  loc_12D3BB4:           var_90.Enabled = True
  loc_12D3BC0:         End If
  loc_12D3BC0:       End If
  loc_12D3BC0:     End If
  loc_12D3BC0:   End If
  loc_12D3BC0: End If
  loc_12D3BF7: var_110 = Me.DGTaxStru.Visible
  loc_12D3C4C: If (((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGRevenue.Visible) = 0)) And (CBool(var_110) = 0)) And (Me.FrmList.Visible = 0)) And (Me.FrmList1.Visible = 0)) Then
  loc_12D3C6D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HB))) Then
  loc_12D3CA7:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_160) = 6) Then
  loc_12D3CAA:       Call TopCtrl1_UnknownEvent_16()
  loc_12D3CAF:     End If
  loc_12D3CAF:     Exit Sub
  loc_12D3CB0:   End If
  loc_12D3CC5:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12D3CCE:     Proc_6_75_E5335C(Shift, arg_14)
  loc_12D3CD3:   End If
  loc_12D3CE6:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_12D3CEF:     Proc_6_76_E533C8(Shift, arg_14)
  loc_12D3CF4:   End If
  loc_12D3CF4: End If
  loc_12D3CF4: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1023694
  'Data Table: 4C41BC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_102346E: Proc_6_133_E7FB08(var_94)
  loc_1023477: arg_10 = CInt(var_94)
  loc_1023480: Proc_6_58_E06050(arg_10, arg_10)
  loc_1023488: var_96 = KeyAscii
  loc_1023493: If (var_96 = CInt(9)) Then
  loc_10234B2:   If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_10234C4:     var_A0 = "Name"
  loc_10234DF:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10)
  loc_10234F9:     Set var_A8 = Me.FGPoint
  loc_1023511:     Proc_6_138_106E830(Me.DGTaxStru, global_64, KeyAscii, var_A8)
  loc_102351F:   End If
  loc_1023522: Else
  loc_102352A:   If (var_96 = CInt(3)) Then
  loc_1023537:     Set var_9C = Me.Txt
  loc_102353D:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_1023558:     Proc_6_42_129B55C(var_A8, arg_10, 6, 2)
  loc_1023567:   Else
  loc_102356F:     If Not (var_96 = CInt(4)) Then
  loc_102357A:       If Not (var_96 = CInt(5)) Then
  loc_1023585:         If Not (var_96 = CInt(6)) Then
  loc_1023590:           If Not (var_96 = CInt(7)) Then
  loc_102359B:             If (var_96 = CInt(8)) Then
  loc_102359E:             End If
  loc_102359E:           End If
  loc_102359E:         End If
  loc_102359E:       End If
  loc_10235A8:       Set var_9C = Me.Txt
  loc_10235AE:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_10235C9:       Proc_6_42_129B55C(var_A8, arg_10, 6)
  loc_10235D8:     Else
  loc_10235E0:       If (var_96 = CInt(&HB)) Then
  loc_102360C:         If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_102361C:           Set var_9C = Me.Txt
  loc_1023622:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_102362A:           var_A8.Text = 2
  loc_1023639:         Else
  loc_1023662:           If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1023672:             Set var_9C = Me.Txt
  loc_1023678:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_1023680:             var_A8.Text = var_96
  loc_102368C:           End If
  loc_102368C:         End If
  loc_102368E:         arg_10 = 0
  loc_1023691:       End If
  loc_1023691:     End If
  loc_1023691:   End If
  loc_1023691: End If
  loc_1023691: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EBE008
  'Data Table: 4C41BC
  loc_EBDF7E: If (KeyCode = CInt(&HA)) Then
  loc_EBDF9D:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBDFAA:     var_A0 = "Name"
  loc_EBDFC5:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_56)
  loc_EBDFF7:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EBE005:   End If
  loc_EBE005: End If
  loc_EBE005: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D59C
  'Data Table: 4C41BC
  loc_E4D57A: Set var_88 = Me.Txt
  loc_E4D580: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D58E: Proc_6_73_E23294(var_8C)
  loc_E4D59A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '11B65FC
  'Data Table: 4C41BC
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_DC As String
  Dim var_D8 As TextBox
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_8C As Fields15
  loc_11B61C4: On Error Goto loc_11B65B8
  loc_11B61CA: var_86 = Cancel
  loc_11B61D5: If (var_86 = CInt(0)) Then
  loc_11B61DB:   Call Proc_267_34_1099EC0(var_88)
  loc_11B61E6:   If (var_88 = &HFF) Then
  loc_11B61EB:     arg_10 = &HFF
  loc_11B61EE:     Exit Sub
  loc_11B61EF:   End If
  loc_11B61F2: Else
  loc_11B61FA:   If (var_86 = CInt(2)) Then
  loc_11B6208:     Set var_8C = Me.Txt
  loc_11B620E:     Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_11B623A:     var_DC = CStr(Format(CVar(var_90), "0.00"))
  loc_11B6249:     Set var_D4 = Me.Txt
  loc_11B624F:     Call 0.Method_Txt_Validate0 (CInt(2), var_D8, var_DC, 1)
  loc_11B6257:     var_D8.Text = 1
  loc_11B6274:   Else
  loc_11B627C:     If (var_86 = CInt(9)) Then
  loc_11B62CD:       Set var_8C = Me.Txt
  loc_11B62D3:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_DC)
  loc_11B62DB:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_11B62F3:       If (arg_10 Or (var_DC = vbNullString)) Then
  loc_11B6303:         Set var_8C = Me.Txt
  loc_11B6309:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11B6311:         var_90.Tag = vbNullString
  loc_11B631D:         Exit Sub
  loc_11B631E:       End If
  loc_11B6359:       Set var_D4 = Me.Txt
  loc_11B635F:       Call 0.Method_Txt_Validate0 (Cancel, var_D8)
  loc_11B6367:       var_D8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11B639A:       var_90 = Me.Fields.Item("Code")
  loc_11B63B8:       Set var_D4 = Me.Txt
  loc_11B63BE:       Call 0.Method_Txt_Validate0 (Cancel, var_D8)
  loc_11B63C6:       var_D8.Tag = CStr(var_90.Value)
  loc_11B63DF:     Else
  loc_11B63E7:       If (var_86 = CInt(3)) Then
  loc_11B63F5:         Set var_8C = Me.Txt
  loc_11B63FB:         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_11B6436:         Set var_D4 = Me.Txt
  loc_11B643C:         Call 0.Method_Txt_Validate0 (CInt(3), var_D8, CStr(Format(CVar(var_90), "0.00")))
  loc_11B6444:         var_D8.Text = 1
  loc_11B6461:       Else
  loc_11B6469:         If Not (var_86 = CInt(4)) Then
  loc_11B6474:           If Not (var_86 = CInt(5)) Then
  loc_11B647F:             If Not (var_86 = CInt(6)) Then
  loc_11B648A:               If Not (var_86 = CInt(7)) Then
  loc_11B6495:                 If (var_86 = CInt(8)) Then
  loc_11B6498:                 End If
  loc_11B6498:               End If
  loc_11B6498:             End If
  loc_11B6498:           End If
  loc_11B64A2:           Set var_8C = Me.Txt
  loc_11B64A8:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11B64D4:           var_DC = CStr(Format(CVar(var_90), "0.00"))
  loc_11B64E2:           Set var_D4 = Me.Txt
  loc_11B64E8:           Call 0.Method_Txt_Validate0 (Cancel, var_D8, var_DC, 1)
  loc_11B64F0:           var_D8.Text = 1
  loc_11B650D:         Else
  loc_11B6515:           If (var_86 = CInt(&HB)) Then
  loc_11B6522:             Set var_8C = Me.Txt
  loc_11B6528:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11B6547:             var_D0 = Ucase(Left(CVar(var_90), 1))
  loc_11B6563:             If (var_D0 = "Y") Then
  loc_11B6573:               Set var_8C = Me.Txt
  loc_11B6579:               Call 0.Method_Txt_Validate0 (Cancel, var_90, "Yes")
  loc_11B6581:               var_90.Text = 1
  loc_11B6590:             Else
  loc_11B659D:               Set var_8C = Me.Txt
  loc_11B65A3:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11B65AB:               var_90.Text = "No"
  loc_11B65B7:             End If
  loc_11B65B7:           End If
  loc_11B65B7:         End If
  loc_11B65B7:       End If
  loc_11B65B7:     End If
  loc_11B65B7:   End If
  loc_11B65B7: End If
  loc_11B65B7: Exit Sub
  loc_11B65B8: ' Referenced from: 11B61C4
  loc_11B65C0: Set var_8C = Err()
  loc_11B65C6: Call 0.Method_arg_2C (var_DC)
  loc_11B65E7: MsgBox(CVar(var_DC), &H40, "Information", var_D0, var_F4)
  loc_11B65FA: Exit Sub
  loc_11B65FB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFE464
  'Data Table: 4C41BC
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFE398: On Error Goto loc_EFE41E
  loc_EFE39B: Call Proc_267_31_E79D04()
  loc_EFE3AD: Me.LblUser.Caption = vbNullString
  loc_EFE3C2: Me.LblLDt.Caption = vbNullString
  loc_EFE3DF: var_8C = "ADD"
  loc_EFE3ED: Call Proc_267_30_E79C6C(Proc_5_1_100EC1C(var_8C, Me))
  loc_EFE403: Set var_88 = Me.Txt
  loc_EFE409: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_EFE411: var_94.SetFocus
  loc_EFE41D: Exit Sub
  loc_EFE41E: ' Referenced from: EFE398
  loc_EFE426: Set var_88 = Err()
  loc_EFE42C: Call 0.Method_arg_2C (var_8C)
  loc_EFE44D: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFE460: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBE374
  'Data Table: 4C41BC
  loc_EBE2E0: On Error Goto loc_EBE36B
  loc_EBE31A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBE329:   Set var_110 = Me
  loc_EBE340:   Call Proc_267_30_E79C6C(Proc_5_1_100EC1C("INI", var_110))
  loc_EBE34B:   Call Proc_267_32_13E6454(global_52)
  loc_EBE353: Else
  loc_EBE359:   Call 0.Method_arg_1E8 (var_110)
  loc_EBE361:   Call var_110.SetFocus
  loc_EBE36A: End If
  loc_EBE36A: Exit Sub
  loc_EBE36B: ' Referenced from: EBE2E0
  loc_EBE36B: Proc_6_60_E63754()
  loc_EBE370: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10DB60C
  'Data Table: 4C41BC
  Dim var_96 As Integer
  Dim unk_4C41CF As Connection15
  Dim Me As Recordset15
  Dim var_124 As Fields15
  Dim var_FC As Variant
  Dim var_12C As String
  loc_10DB334: On Error Goto loc_10DB5B5
  loc_10DB345: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_10DB348:   Exit Sub
  loc_10DB349: End If
  loc_10DB380: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_11C) = 6) Then
  loc_10DB385:   var_96 = 0
  loc_10DB391:   unk_4C41CF.BeginTrans var_120
  loc_10DB398:   var_96 = &HFF
  loc_10DB3AC:   var_94 = Me.Bookmark 'Variant
  loc_10DB3F8:   var_FC = "Delete From MemFacilityMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10DB406:   unk_4C41CF.Execute CStr(var_FC), var_11C, -1
  loc_10DB451:   var_168 = 0
  loc_10DB464:   var_160 = 0
  loc_10DB46F:   var_15C = 0
  loc_10DB482:   var_154 = 0
  loc_10DB48D:   var_150 = 0
  loc_10DB4A0:   var_148 = 0
  loc_10DB4E0:   var_12C = "FixedCharge"
  loc_10DB4E9:   Proc_154_5_10E3BD4(MemVar_1F95044, var_12C, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10DB517:   unk_4C41CF.CommitTrans
  loc_10DB51E:   var_96 = 0
  loc_10DB52C:   Me.Requery -1
  loc_10DB54C:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10DB559:     Me.Bookmark = var_94
  loc_10DB561:   Else
  loc_10DB575:     If (Me.EOF = 0) Then
  loc_10DB57E:       Me.MoveLast
  loc_10DB583:     End If
  loc_10DB583:   End If
  loc_10DB583:   Call Proc_267_32_13E6454(var_96, var_148, 0, var_150, var_154)
  loc_10DB5A4:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_10DB5AC: End If
  loc_10DB5B1: Set var_9C = Nothing
  loc_10DB5B4: Exit Sub
  loc_10DB5B5: ' Referenced from: 10DB334
  loc_10DB5BB: If (var_96 = &HFF) Then
  loc_10DB5C4:   unk_4C41CF.RollbackTrans
  loc_10DB5C9: End If
  loc_10DB5D1: Set var_124 = Err()
  loc_10DB5D7: Call 0.Method_arg_2C (var_12C, 0, var_15C)
  loc_10DB5F8: MsgBox(CVar(var_12C), &H30, " Deletion Error ", var_FC, var_11C)
  loc_10DB60B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F6417C
  'Data Table: 4C41BC
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F64058: On Error Goto loc_F64139
  loc_F64069: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F6406C:   Exit Sub
  loc_F6406D: End If
  loc_F64084: If (Me.RecordCount > 0) Then
  loc_F6409C:   var_8C = "EDIT"
  loc_F640AA:   Call Proc_267_30_E79C6C(Proc_5_1_100EC1C(var_8C, Me))
  loc_F640C0:   Set var_90 = Me.Txt
  loc_F640C6:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F640CE:   var_98.SetFocus
  loc_F640DD: Else
  loc_F640FE:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F6410E: End If
  loc_F6411B: Me.LblUser.Caption = vbNullString
  loc_F64130: Me.LblLDt.Caption = vbNullString
  loc_F64138: Exit Sub
  loc_F64139: ' Referenced from: F64058
  loc_F64141: Set var_90 = Err()
  loc_F64147: Call 0.Method_arg_2C (var_8C)
  loc_F64168: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F6417B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BA88
  'Data Table: 4C41BC
  loc_E1BA7D: Me.Global.Unload Me
  loc_E1BA85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F27B10
  'Data Table: 4C41BC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F27A10: On Error Goto loc_F27AA8
  loc_F27A1C: var_88 = Me.RecordCount
  loc_F27A2A: If (var_88 <= 0) Then
  loc_F27A33:   var_B8 = "Information"
  loc_F27A4E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F27A5E:   Exit Sub
  loc_F27A5F: End If
  loc_F27A6D: MemVar_1F950E4 = "Select MemFacilityMast.Code As SearchCode,MemFacilityMast.Name FROM MemFacilityMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by MemFacilityMast.Name"
  loc_F27A77: var_10C = "3000"
  loc_F27A7D: Proc_6_126_F1C850(var_10C)
  loc_F27A8B: MemVar_1F95120 = Me
  loc_F27AA2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F27AA7: Exit Sub
  loc_F27AA8: ' Referenced from: F27A10
  loc_F27AB0: Set var_110 = Err()
  loc_F27AB6: Call 0.Method_arg_1C (var_88)
  loc_F27AC7: If (var_88 <> 0) Then
  loc_F27AD2:   Set var_110 = Err()
  loc_F27AD8:   Call 0.Method_arg_2C (var_10C)
  loc_F27AF9:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F27B0C: End If
  loc_F27B0C: Exit Sub
  loc_F27B0D: MemVar_1F950E4 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2CE88
  'Data Table: 4C41BC
  loc_E2CE78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2CE80: Call Proc_267_32_13E6454(global_52)
  loc_E2CE85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2D2A8
  'Data Table: 4C41BC
  loc_E2D298: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D2A0: Call Proc_267_32_13E6454(global_52)
  loc_E2D2A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2D0C8
  'Data Table: 4C41BC
  loc_E2D0B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D0C0: Call Proc_267_32_13E6454(global_52)
  loc_E2D0C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2CEE8
  'Data Table: 4C41BC
  loc_E2CED8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2CEE0: Call Proc_267_32_13E6454(global_52)
  loc_E2CEE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108B650
  'Data Table: 4C41BC
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4C41CF As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_108B3B8: On Error Goto loc_108B604
  loc_108B3CF: var_A0 = "SELECT DISTINCT MF.Code, MF.Name , MF.SName , MF.ChargeType , MF.FixedRate , MF.PrimaryMember , MF.Spouse, MF.Child,MF.AddAdult,MF.AddChild,TS.Code As TCode , TS.Name As TName , SB.SubCode As ACode , SB.Name as AName  , CASE MF.ActiveYN WHEN 'Y' then 'Yes' ELSE 'No' END, MF.LOGSITE_CODE , MF.Site_Code FROM MemFacilityMast MF LEFT join TaxStru TS On MF.TaxStru = TS.Code LEFT join SubGroup SB on MF.ACCode = SB.SubCode WHERE (MF.LOGSITE_CODE='" & MemVar_1F95078
  loc_108B3DF: unk_4C41CF.Execute var_A0 & "' or MF.LOGSITE_CODE='HO')", var_C4, -1
  loc_108B3EA: Set var_88 = var_C8
  loc_108B400: var_CC = var_88.RecordCount
  loc_108B40E: If (var_CC = 0) Then
  loc_108B42A:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108B43A:   Exit Sub
  loc_108B43B: End If
  loc_108B44A: var_A4 = MemVar_1F950B4 & "\MemFacilityMast.ttx"
  loc_108B451: Set var_C8 = var_88 
  loc_108B45D: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108B467: Set var_88 = var_C8
  loc_108B46D: var_B4 = CVar(var_12E) 'Integer
  loc_108B470: var_98 = var_B4 'Variant
  loc_108B48C: var_A0 = MemVar_1F950B4 & "\MemFacilityMast.RPT"
  loc_108B495: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108B4A0: MemVar_1F951E8 = var_C8
  loc_108B4BB: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108B4C3: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108B4CF: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108B4E8:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108B4F0:   Call 0.Method_arg_20 (var_138)
  loc_108B4F8:   Call 0.Method_arg_30 (var_A0)
  loc_108B53E:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108B554:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108B55C:     Call 0.Method_arg_20 (var_138)
  loc_108B564:     Call 0.Method_arg_38 ("'Member Facility Master'")
  loc_108B570:   End If
  loc_108B573: Next var_132 'Integer
  loc_108B591: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108B599: Call 0.Method_arg_2C (var_DC)
  loc_108B5A7: Call 0.Method_arg_150 (var_FC)
  loc_108B5B2: Call 0.Method_arg_50 (var_A0)
  loc_108B5BC: Set var_138 = Nothing
  loc_108B5D6: Set var_C8 = MemVar_1F951E8 
  loc_108B5E2: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_108B5ED: MemVar_1F951E8 = var_C8
  loc_108B600: Set var_88 = Nothing
  loc_108B603: Exit Sub
  loc_108B604: ' Referenced from: 108B3B8
  loc_108B60C: Set var_C8 = Err()
  loc_108B612: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108B61D: Call 0.Method_arg_50 (var_A4)
  loc_108B639: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108B64C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E451C8
  'Data Table: 4C41BC
  Dim Me As Recordset15
  loc_E4519F: Me.Requery -1
  loc_E451AF: Me.Requery -1
  loc_E451BF: Me.Requery -1
  loc_E451C4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15644EC
  'Data Table: 4C41BC
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_D4 As Variant
  Dim unk_4C41CF As Connection15
  Dim var_94 As Variant
  Dim var_9C As Field20
  Dim var_F4 As Variant
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim Me As Recordset15
  Dim var_118 As TextBox
  Dim var_12C As TextBox
  Dim var_140 As TextBox
  Dim var_37C As Double
  Dim var_158 As TextBox
  Dim var_384 As Double
  Dim var_170 As TextBox
  Dim var_38C As Double
  Dim var_188 As TextBox
  Dim var_394 As Double
  Dim var_1A0 As TextBox
  Dim var_39C As Double
  Dim var_1B8 As TextBox
  Dim var_3A4 As Double
  Dim var_1D0 As TextBox
  Dim var_1E4 As TextBox
  Dim var_1F8 As TextBox
  Dim var_2CC As Variant
  Dim var_138 As String
  Dim var_14C As String
  Dim var_164 As String
  Dim var_180 As String
  Dim var_1F0 As String
  Dim var_25C As Variant
  Dim var_32C As Variant
  Dim var_B4 As Variant
  Dim var_4C4 As Variant
  Dim var_15C As String
  Dim var_2DC As Variant
  Dim var_370 As Variant
  Dim var_3D4 As Variant
  Dim var_494 As Variant
  Dim var_564 As Variant
  loc_15635D0: On Error Goto loc_1564499
  loc_15635D7: var_86 = CByte(0) 'Byte
  loc_15635E6: Set var_94 = Me.Txt
  loc_15635EC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1563615: If (Proc_183_19_E8E68C(var_98, "Name") = 0) Then
  loc_156361F:   Call Txt_GotFocus(CInt(1))
  loc_1563624:   Exit Sub
  loc_1563625: End If
  loc_1563630: Set var_94 = Me.Txt
  loc_1563636: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_156365F: If (Proc_183_19_E8E68C(var_98, "Short Name") = 0) Then
  loc_1563669:   Call Txt_GotFocus(CInt(0))
  loc_156366E:   Exit Sub
  loc_156366F: End If
  loc_156367A: Set var_94 = Me.Txt
  loc_1563680: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_15636A9: If (Proc_183_19_E8E68C(var_98, "Facility Type") = 0) Then
  loc_15636B3:   Call Txt_GotFocus(CInt(2))
  loc_15636B8:   Exit Sub
  loc_15636B9: End If
  loc_15636C4: Set var_94 = Me.Txt
  loc_15636CA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_98)
  loc_15636F3: If (Proc_183_19_E8E68C(var_98, "Tax Structure") = 0) Then
  loc_15636FD:   Call Txt_GotFocus(CInt(9))
  loc_1563702:   Exit Sub
  loc_1563703: End If
  loc_156370E: Set var_94 = Me.Txt
  loc_1563714: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98)
  loc_156373D: If (Proc_183_19_E8E68C(var_98, "Ledger A/C") = 0) Then
  loc_1563747:   Call Txt_GotFocus(CInt(&HA))
  loc_156374C:   Exit Sub
  loc_156374D: End If
  loc_156375B: Set var_94 = Me.Txt
  loc_1563761: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_1563780: If (var_98.Text = "Fixed") Then
  loc_1563791:   Set var_94 = Me.Txt
  loc_1563797:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_156379F:   var_98.Text = "0.00"
  loc_15637B9:   Set var_94 = Me.Txt
  loc_15637BF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_15637C7:   var_98.Text = "0.00"
  loc_15637E1:   Set var_94 = Me.Txt
  loc_15637E7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_98)
  loc_15637EF:   var_98.Text = "0.00"
  loc_1563809:   Set var_94 = Me.Txt
  loc_156380F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_98)
  loc_1563817:   var_98.Text = "0.00"
  loc_1563831:   Set var_94 = Me.Txt
  loc_1563837:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_98)
  loc_156383F:   var_98.Text = "0.00"
  loc_1563856:   Set var_94 = Me.Txt
  loc_156385C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98)
  loc_1563885:   If (Proc_183_19_E8E68C(var_98, "Fixed Rate") = 0) Then
  loc_156388F:     Call Txt_GotFocus(CInt(3))
  loc_1563894:     Exit Sub
  loc_1563895:   End If
  loc_1563895: End If
  loc_15638A3: Set var_94 = Me.Txt
  loc_15638A9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_15638C8: If (var_98.Text <> "Fixed") Then
  loc_15638D9:   Set var_94 = Me.Txt
  loc_15638DF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98)
  loc_15638E7:   var_98.Text = "0.00"
  loc_15638FE:   Set var_94 = Me.Txt
  loc_1563904:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_156392D:   If (Proc_183_19_E8E68C(var_98, "Member Rate") = 0) Then
  loc_1563937:     Call Txt_GotFocus(CInt(4))
  loc_156393C:     Exit Sub
  loc_156393D:   End If
  loc_1563948:   Set var_94 = Me.Txt
  loc_156394E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_1563977:   If (Proc_183_19_E8E68C(var_98, "Spose Rate") = 0) Then
  loc_1563981:     Call Txt_GotFocus(CInt(5))
  loc_1563986:     Exit Sub
  loc_1563987:   End If
  loc_1563992:   Set var_94 = Me.Txt
  loc_1563998:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_98)
  loc_15639C1:   If (Proc_183_19_E8E68C(var_98, "Child Rate") = 0) Then
  loc_15639CB:     Call Txt_GotFocus(CInt(6))
  loc_15639D0:     Exit Sub
  loc_15639D1:   End If
  loc_15639DC:   Set var_94 = Me.Txt
  loc_15639E2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_98)
  loc_1563A0B:   If (Proc_183_19_E8E68C(var_98, "Additiona Adult Rate") = 0) Then
  loc_1563A15:     Call Txt_GotFocus(CInt(7))
  loc_1563A1A:     Exit Sub
  loc_1563A1B:   End If
  loc_1563A26:   Set var_94 = Me.Txt
  loc_1563A2C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_98)
  loc_1563A55:   If (Proc_183_19_E8E68C(var_98, "Additiona Child Rate") = 0) Then
  loc_1563A5F:     Call Txt_GotFocus(CInt(8))
  loc_1563A64:     Exit Sub
  loc_1563A65:   End If
  loc_1563A65: End If
  loc_1563A69: Set var_94 = Me.TopCtrl1
  loc_1563A6F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_1563A88: If (CStr() = "Add") Then
  loc_1563A91:   var_D4 = 0
  loc_1563AB0:   unk_4C41CF.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From MemFacilityMast ", var_B4, -1
  loc_1563AB8:   var_94 = var_94.Fields
  loc_1563AC0:   var_D4 = var_98.Item(var_98)
  loc_1563AC8:   var_9C = var_9C.Value
  loc_1563AFB:   var_F4 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1563B29:   var_104 = (1 + Format(CStr(var_E4), "0000"))
  loc_1563B34:   global_72 = CStr(var_104)
  loc_1563B49: Else
  loc_1563B66:   var_98 = Me.Fields.Item("Code")
  loc_1563B7D:   global_72 = CStr(var_98.Value)
  loc_1563B8E: End If
  loc_1563B97: unk_4C41CF.BeginTrans var_108
  loc_1563BA0: var_86 = CByte(1) 'Byte
  loc_1563BA8: Set var_94 = Me.TopCtrl1
  loc_1563BAE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_1563BC7: If (CStr(var_F4) = "Add") Then
  loc_1563BD8:   Set var_94 = Me.Txt
  loc_1563BDE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_1563BF9:   Set var_9C = Me.Txt
  loc_1563BFF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_118)
  loc_1563C1A:   Set var_128 = Me.Txt
  loc_1563C20:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_1563C3B:   Set var_13C = Me.Txt
  loc_1563C41:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_1563C56:   var_37C = Val(var_140.Text)
  loc_1563C67:   Set var_154 = Me.Txt
  loc_1563C6D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_158, var_15C)
  loc_1563C82:   var_384 = Val(var_15C)
  loc_1563C93:   Set var_16C = Me.Txt
  loc_1563C99:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_170, var_174)
  loc_1563CAE:   var_38C = Val(var_174)
  loc_1563CBF:   Set var_184 = Me.Txt
  loc_1563CC5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_188, var_18C)
  loc_1563CDA:   var_394 = Val(var_18C)
  loc_1563CEB:   Set var_19C = Me.Txt
  loc_1563CF1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1A0, var_1A4)
  loc_1563D06:   var_39C = Val(var_1A4)
  loc_1563D17:   Set var_1B4 = Me.Txt
  loc_1563D1D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1B8, var_1BC)
  loc_1563D32:   var_3A4 = Val(var_1BC)
  loc_1563D43:   Set var_1CC = Me.Txt
  loc_1563D49:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1D0, var_1D4)
  loc_1563D64:   Set var_1E0 = Me.Txt
  loc_1563D6A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1E4)
  loc_1563D85:   Set var_1F4 = Me.Txt
  loc_1563D8B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_1F8)
  loc_1563D9D:   var_E4 = "N"
  loc_1563DB6:   var_C4 = (var_1F8.Text = "Yes")
  loc_1563DC7:   var_2CC = CVar(Proc_6_15_EF37AC(var_E4)) 'String
  loc_1563DCD:   Proc_6_7_F26918(var_2DC)
  loc_1563DE9:   var_A0 = "Insert Into MemFacilityMast(Code,Name,SName,ChargeType,FixedRate,PrimaryMember,Spouse,Child,AddAdult,AddChild,TaxStru,ACCode,ActiveYN,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_72
  loc_1563E22:   var_14C = CStr(var_158.Text)
  loc_1563E35:   var_164 = CStr(var_170.Text)
  loc_1563E4C:   var_180 = var_A0 & "','" & var_98.Text & "','" & var_118.Text & "','" & var_12C.Text & "'," & var_14C & "," & var_164 & "," & CStr(var_188.Text)
  loc_1563EA1:   var_1F0 = var_180 & "," & CStr(var_1A0.Text) & "," & CStr(var_1B8.Text) & "," & CStr(var_1D0.Tag) & ",'" & var_1D4 & "','" & var_1E4.Tag
  loc_1563EC1:   var_25C = CVar(var_1F0 & "','") & IIf(var_C4, "Y", var_E4) & "','" & CVar(MemVar_1F95070) 
  loc_1563EF7:   var_32C = var_25C & "','" & CVar(MemVar_1F950C8) & "'," & var_2DC & ",'A','" & CVar(MemVar_1F95078) 
  loc_1563F0E:   unk_4C41CF.Execute CStr(var_32C & "')"), var_370, -1
  loc_1563FC9: Else
  loc_1563FD7:   Set var_94 = Me.Txt
  loc_1563FDD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_A0)
  loc_1563FE5:   var_374 = var_98.Text
  loc_1563FF8:   Set var_9C = Me.Txt
  loc_1563FFE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_118)
  loc_1564019:   Set var_128 = Me.Txt
  loc_156401F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_156403A:   Set var_13C = Me.Txt
  loc_1564040:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_1564055:   var_37C = Val(var_140.Text)
  loc_1564066:   Set var_154 = Me.Txt
  loc_156406C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_158, var_14C)
  loc_1564081:   var_384 = Val(var_14C)
  loc_1564092:   Set var_16C = Me.Txt
  loc_1564098:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_170, var_164)
  loc_15640B4:   Proc_6_39_E7D3A0(var_E4, CVar(Val(var_164)))
  loc_15640C7:   Set var_184 = Me.Txt
  loc_15640CD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_188)
  loc_15640E9:   Proc_6_39_E7D3A0(var_25C, CVar(Val(var_188.Text)))
  loc_15640FC:   Set var_19C = Me.Txt
  loc_1564102:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1A0)
  loc_156411E:   Proc_6_39_E7D3A0(var_2CC, CVar(Val(var_1A0.Text)))
  loc_1564131:   Set var_1B4 = Me.Txt
  loc_1564137:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1B8)
  loc_1564153:   Proc_6_39_E7D3A0(var_32C, CVar(Val(var_1B8.Text)))
  loc_1564166:   Set var_1CC = Me.Txt
  loc_156416C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1D0)
  loc_1564187:   Set var_1E0 = Me.Txt
  loc_156418D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1E4)
  loc_15641A8:   Set var_1F4 = Me.Txt
  loc_15641AE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_1F8)
  loc_15641EA:   var_4C4 = CVar(Proc_6_15_EF37AC(var_2CC)) 'String
  loc_15641F0:   Proc_6_7_F26918(var_4D4)
  loc_156422C:   var_138 = "UPDATE MemFacilityMast SET Name='" & var_A0 & "',Sname='" & var_118.Text & "',ChargeType='" & var_12C.Text & "',FixedRate="
  loc_1564252:   var_F4 = CVar(var_138 & CStr(var_158.Text) & ",PrimaryMember=" & CStr(var_170.Text) & ",Spouse=") 'String
  loc_1564258:   var_104 = var_F4 & var_E4 
  loc_15642A4:   var_3D4 = var_104 & ",Child=" & var_25C & ",AddAdult=" & var_2CC & ",AddChild=" & var_32C & ",TaxStru='" & CVar(var_1D0.Tag) & "',ACCode='" 
  loc_15642D1:   var_494 = var_3D4 & CVar(var_1E4.Tag) & "',ActiveYN='" & IIf((var_1F8.Text = "Yes"), "Y", "N") & "',U_name='" & CVar(MemVar_1F950C8) 
  loc_156430A:   var_564 = var_494 & "',U_EntDt=" & var_4D4 & ",U_AE='E',Site_Code='" & CVar(MemVar_1F95070) & "' WHERE Code='" & CVar(global_72) 
  loc_1564321:   unk_4C41CF.Execute CStr(var_564 & "'"), var_5A4, -1
  loc_15643DD: End If
  loc_15643E3: unk_4C41CF.CommitTrans
  loc_15643EC: var_86 = CByte(0) 'Byte
  loc_15643F0: Call Proc_267_35_F22A88(var_374)
  loc_1564400: Me.Requery -1
  loc_156442D: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_156443D: Set var_94 = Me.TopCtrl1
  loc_1564443: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C4)
  loc_156445C: If (CStr(var_4C4) = "Add") Then
  loc_156445F:   Call TopCtrl1_UnknownEvent_A()
  loc_1564464:   Exit Sub
  loc_1564465: End If
  loc_156447A: var_A0 = "INI"
  loc_1564488: Call Proc_267_30_E79C6C(Proc_5_1_100EC1C(var_A0, Me))
  loc_1564493: Call Proc_267_32_13E6454(global_52)
  loc_1564498: Exit Sub
  loc_1564499: ' Referenced from: 15635D0
  loc_15644A2: If (CInt(var_86) = 1) Then
  loc_15644AB:   unk_4C41CF.RollbackTrans
  loc_15644B0: End If
  loc_15644B8: Set var_94 = Err()
  loc_15644BE: Call 0.Method_arg_2C (var_A0)
  loc_15644D7: MsgBox(CVar(var_A0), &H10, var_E4, var_F4, var_104)
  loc_15644EA: Exit Sub
End Sub

Private Sub Form_Load() '108E5A8
  'Data Table: 4C41BC
  Dim var_8C As Label
  Dim var_90 As String
  Dim unk_4C41CF As Connection15
  Dim var_B4 As Variant
  loc_108E300: On Error Goto loc_108E563
  loc_108E30A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_108E31E: Me.LblUser.Left = CDbl(13500)
  loc_108E335: Me.LblUser.Top = CDbl(7800)
  loc_108E34C: Me.LblLDt.Top = CDbl(8160)
  loc_108E35D: Set var_8C = Me.LblLDt
  loc_108E363: var_8C.Left = CDbl(13500)
  loc_108E36B: Call Proc_267_36_F8D760()
  loc_108E394: unk_4C41CF.Execute "SELECT SubCode AS Code,Name FROM SubGroup WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_108E3C3: CVarUnk
  loc_108E3C8: VerifyVarObj
  loc_108E3D4: LateIdStAd
  loc_108E3F6: var_90 = "SELECT  distinct Revmast.Code as Code,RevMast.Name as Name,RevMast.taxstru as TaxCode,TaxStru.name as Taxname FROM RevMast left join TaxStru on  Taxstru.Code=Revmast.Taxstru where (Revmast.LOGSITE_CODE='" & MemVar_1F95078
  loc_108E406: unk_4C41CF.Execute var_90 & "' or RevMast.LOGSITE_CODE='HO') AND FlagType='FOM' AND FlagAMR='Detail' ORDER BY Revmast.Name", var_B4, -1
  loc_108E435: CVarUnk
  loc_108E43A: VerifyVarObj
  loc_108E446: LateIdStAd
  loc_108E478: unk_4C41CF.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_108E4A7: CVarUnk
  loc_108E4AC: VerifyVarObj
  loc_108E4B8: LateIdStAd
  loc_108E4DA: var_90 = "SELECT DISTINCT MF.Code,MF.Name,MF.SName,MF.U_AE,MF.U_Name,MF.U_EntDt,MF.ChargeType,MF.FixedRate,MF.PrimaryMember,MF.Spouse, MF.Child,MF.AddAdult,MF.AddChild,TS.Code As TCode , TS.Name As TName , SB.SubCode As ACode , SB.Name as AName  , MF.ActiveYN, MF.LOGSITE_CODE , MF.Site_Code FROM MemFacilityMast MF LEFT join TaxStru TS On MF.TaxStru = TS.Code LEFT join SubGroup SB on MF.ACCode = SB.SubCode WHERE (MF.LOGSITE_CODE='" & MemVar_1F95078
  loc_108E4EA: unk_4C41CF.Execute var_90 & "' or MF.LOGSITE_CODE='HO')", var_B4, -1
  loc_108E51C: Set var_8C = Me
  loc_108E525: var_90 = "INI"
  loc_108E533: Call Proc_267_30_E79C6C(Proc_5_1_100EC1C(var_90, var_8C, Me.DGTaxStru, var_8C, var_8C, Me.DGRevenue, var_8C), var_8C, Me.DGHelp, var_8C)
  loc_108E547: Call 0.Method_arg_160 (var_8C, var_8C)
  loc_108E555: Call 0.Method_arg_164 (var_8C, var_8C)
  loc_108E55D: Call Proc_267_32_13E6454(var_8C)
  loc_108E562: Exit Sub
  loc_108E563: ' Referenced from: 108E300
  loc_108E56B: Set var_8C = Err()
  loc_108E571: Call 0.Method_arg_2C (var_90)
  loc_108E592: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_108E5A5: Exit Sub
  loc_108E5A6: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E627C8
  'Data Table: 4C41BC
  loc_E62787: Set global_52 = Nothing
  loc_E62799: Set global_56 = Nothing
  loc_E627AB: Set global_60 = Nothing
  loc_E627BD: Set global_64 = Nothing
  loc_E627C4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27B28
  'Data Table: 4C41BC
  loc_E27B00: On Error Goto loc_E27B1F
  loc_E27B17: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E27B1F: ' Referenced from: E27B00
  loc_E27B1F: Proc_6_60_E63754(Shift)
  loc_E27B24: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F41694
  'Data Table: 4C41BC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4158B: Me.DGHelp.Visible = False
  loc_F415AA: If (Me.RecordCount > 0) Then
  loc_F415E9:   Set var_B4 = Me.Txt
  loc_F415EF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_F415F7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4162A:   var_B0 = Me.Fields.Item("Name")
  loc_F41649:   Set var_B4 = Me.Txt
  loc_F4164F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_F41657:   var_B8.Text = CStr(var_B0.Value)
  loc_F4166D: End If
  loc_F41678: Set var_A8 = Me.Txt
  loc_F4167E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(&HA))
  loc_F41686: var_B0.SetFocus
  loc_F41692: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA65C0
  'Data Table: 4C41BC
  Dim var_A8 As Variant
  loc_EA6540: Set var_88 = Me.DGHelp
  loc_EA656A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6572: Set var_BC = Me.DGHelp
  loc_EA65AE: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(&HA), Me.FGPoint)
  loc_EA65BC: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 '1130590
  'Data Table: 4C41BC
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_BC As String
  Dim var_CC As Double
  Dim var_C4 As TextBox
  loc_1130252: If (Me.ListView.ListItems.Count > 0) Then
  loc_1130259:   Set var_A8 = Me.ListView
  loc_1130267:   var_BC = CStr(var_A8.Tag)
  loc_11302A3:   Set var_C0 = Me.Txt
  loc_11302A9:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(var_BC)), var_C4)
  loc_11302B1:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_11302D1: End If
  loc_11302DD: Me.FrmList.Visible = False
  loc_113030D: If (CDbl(Val(CStr(Me.ListView.Tag))) = CDbl(2)) Then
  loc_113033B:   Set var_9C = Me.Txt
  loc_1130341:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8, var_BC)
  loc_1130349:   var_CC = var_A8.Text
  loc_1130369:   If (var_BC = "Fixed") Then
  loc_1130379:     Set var_88 = Me.Txt
  loc_113037F:     Call 0.Method_ListView_UnknownEvent_130 (CInt(3), var_9C)
  loc_1130387:     var_9C.Enabled = True
  loc_11303A0:     Set var_88 = Me.Txt
  loc_11303A6:     Call 0.Method_ListView_UnknownEvent_130 (CInt(4), var_9C)
  loc_11303AE:     var_9C.Enabled = False
  loc_11303C7:     Set var_88 = Me.Txt
  loc_11303CD:     Call 0.Method_ListView_UnknownEvent_130 (CInt(5), var_9C)
  loc_11303D5:     var_9C.Enabled = False
  loc_11303EE:     Set var_88 = Me.Txt
  loc_11303F4:     Call 0.Method_ListView_UnknownEvent_130 (CInt(6), var_9C)
  loc_11303FC:     var_9C.Enabled = False
  loc_1130415:     Set var_88 = Me.Txt
  loc_113041B:     Call 0.Method_ListView_UnknownEvent_130 (CInt(7), var_9C)
  loc_1130423:     var_9C.Enabled = False
  loc_113043C:     Set var_88 = Me.Txt
  loc_1130442:     Call 0.Method_ListView_UnknownEvent_130 (CInt(8), var_9C)
  loc_113044A:     var_9C.Enabled = False
  loc_1130459:   Else
  loc_1130466:     Set var_88 = Me.Txt
  loc_113046C:     Call 0.Method_ListView_UnknownEvent_130 (CInt(3), var_9C)
  loc_1130474:     var_9C.Enabled = False
  loc_113048D:     Set var_88 = Me.Txt
  loc_1130493:     Call 0.Method_ListView_UnknownEvent_130 (CInt(4), var_9C)
  loc_113049B:     var_9C.Enabled = True
  loc_11304B4:     Set var_88 = Me.Txt
  loc_11304BA:     Call 0.Method_ListView_UnknownEvent_130 (CInt(5), var_9C)
  loc_11304C2:     var_9C.Enabled = True
  loc_11304DB:     Set var_88 = Me.Txt
  loc_11304E1:     Call 0.Method_ListView_UnknownEvent_130 (CInt(6), var_9C)
  loc_11304E9:     var_9C.Enabled = True
  loc_1130502:     Set var_88 = Me.Txt
  loc_1130508:     Call 0.Method_ListView_UnknownEvent_130 (CInt(7), var_9C)
  loc_1130510:     var_9C.Enabled = True
  loc_1130529:     Set var_88 = Me.Txt
  loc_113052F:     Call 0.Method_ListView_UnknownEvent_130 (CInt(8), var_9C)
  loc_1130537:     var_9C.Enabled = True
  loc_1130543:   End If
  loc_1130543: End If
  loc_113056B: Set var_9C = Me.Txt
  loc_1130571: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_1130579: var_A8.SetFocus
  loc_113058D: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC6054
  'Data Table: 4C41BC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC5FCA: On Error Goto loc_EC600F
  loc_EC5FD3: Me.MoveFirst
  loc_EC5FED: var_8C = "code='" & MyValue
  loc_EC5FFD: Me.Find var_8C & "'", 0, 1
  loc_EC6009: Call Proc_267_32_13E6454(var_A0)
  loc_EC600E: Exit Sub
  loc_EC600F: ' Referenced from: EC5FCA
  loc_EC6017: Set var_A4 = Err()
  loc_EC601D: Call 0.Method_arg_2C (var_8C)
  loc_EC603E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC6051: Exit Sub
  loc_EC6052: Exit Sub
End Sub

Public Sub Proc_267_30_E79C6C(arg_C) 'E79C6C
  'Data Table: 4C41BC
  Dim var_98 As TextBox
  loc_E79C1A: Set var_8C = Me.Txt
  loc_E79C20: Call 0.Method_Proc_267_30_E79C6CC (var_8E, var_86)
  loc_E79C30: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79C46:   Set var_8C = Me.Txt
  loc_E79C4C:   Call 0.Method_Proc_267_30_E79C6C0 (CInt(var_86), var_98)
  loc_E79C54:   var_98.Enabled = arg_C
  loc_E79C63: Next var_92 'Byte
  loc_E79C69: Exit Sub
  loc_E79C6A: Set Proc_267_30_E79C6C400 = 
End Sub

Public Sub Proc_267_31_E79D04
  'Data Table: 4C41BC
  Dim var_98 As TextBox
  loc_E79CB2: Set var_8C = Me.Txt
  loc_E79CB8: Call 0.Method_Proc_267_31_E79D04C (var_8E, var_86)
  loc_E79CC8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79CDE:   Set var_8C = Me.Txt
  loc_E79CE4:   Call 0.Method_Proc_267_31_E79D040 (CInt(var_86), var_98)
  loc_E79CEC:   var_98.Text = vbNullString
  loc_E79CFB: Next var_92 'Byte
  loc_E79D01: Exit Sub
  loc_E79D02: Set Proc_267_31_E79D04400 = 
End Sub

Public Sub Proc_267_32_13E6454
  'Data Table: 4C41BC
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B0 As Variant
  Dim var_B8 As Fields15
  Dim var_DC As Variant
  Dim var_B4 As String
  Dim var_CC As TextBox
  loc_13E5A88: On Error Goto loc_13E640F
  loc_13E5A91: Proc_183_45_E5CCA8(global_52)
  loc_13E5AAD: If (Me.RecordCount <= 0) Then
  loc_13E5AB0:   Call Proc_267_31_E79D04()
  loc_13E5AB8: Else
  loc_13E5B61:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_13E5BA9:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_Name")))))
  loc_13E5C29:   var_CC = Me.Fields.Item("U_AE")
  loc_13E5C31:   var_DC = CVar(var_CC) 'Address
  loc_13E5C8A:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(var_DC) = "E"), "Last Update :   ", "entdt :   "))
  loc_13E5CD2:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_EntDt")))))
  loc_13E5D3E:   global_72 = CStr(Me.Fields.Item("Code").Value)
  loc_13E5D8B:   Set var_B8 = Me.Txt
  loc_13E5D91:   Call 0.Method_Proc_267_32_13E64540 (CInt(1), var_CC)
  loc_13E5D99:   var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13E5DEB:   Set var_B8 = Me.Txt
  loc_13E5DF1:   Call 0.Method_Proc_267_32_13E64540 (CInt(1), var_CC)
  loc_13E5DF9:   var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_13E5E4B:   Set var_B8 = Me.Txt
  loc_13E5E51:   Call 0.Method_Proc_267_32_13E64540 (CInt(0), var_CC)
  loc_13E5E59:   var_CC.Text = CStr(Me.Fields.Item("SName").Value)
  loc_13E5EA8:   Set var_B8 = Me.Txt
  loc_13E5EAE:   Call 0.Method_Proc_267_32_13E64540 (CInt(2), var_CC)
  loc_13E5EB6:   var_CC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ChargeType")))
  loc_13E5EEC:   var_B0 = CVar(Me.Fields.Item("FixedRate")) 'Address
  loc_13E5EF3:   Proc_6_39_E7D3A0(var_DC)
  loc_13E5F2A:   Set var_B8 = Me.Txt
  loc_13E5F30:   Call 0.Method_Proc_267_32_13E64540 (CInt(3), var_CC, CStr(Format(var_DC, "0.00")))
  loc_13E5F38:   var_CC.Text = 1
  loc_13E5F7D:   Proc_6_39_E7D3A0(var_DC, CVar(Me.Fields.Item("PrimaryMember")))
  loc_13E5FB4:   Set var_B8 = Me.Txt
  loc_13E5FBA:   Call 0.Method_Proc_267_32_13E64540 (CInt(4), var_CC, CStr(Format(var_DC, "0.00")), 1)
  loc_13E5FC2:   var_CC.Text = 1
  loc_13E6007:   Proc_6_39_E7D3A0(var_DC, CVar(Me.Fields.Item("Spouse")))
  loc_13E603E:   Set var_B8 = Me.Txt
  loc_13E6044:   Call 0.Method_Proc_267_32_13E64540 (CInt(5), var_CC, CStr(Format(var_DC, "0.00")), 1)
  loc_13E604C:   var_CC.Text = 1
  loc_13E6091:   Proc_6_39_E7D3A0(var_DC, CVar(Me.Fields.Item("Child")))
  loc_13E60C8:   Set var_B8 = Me.Txt
  loc_13E60CE:   Call 0.Method_Proc_267_32_13E64540 (CInt(6), var_CC, CStr(Format(var_DC, "0.00")), 1)
  loc_13E60D6:   var_CC.Text = 1
  loc_13E611B:   Proc_6_39_E7D3A0(var_DC, CVar(Me.Fields.Item("AddAdult")))
  loc_13E6152:   Set var_B8 = Me.Txt
  loc_13E6158:   Call 0.Method_Proc_267_32_13E64540 (CInt(7), var_CC, CStr(Format(var_DC, "0.00")), 1)
  loc_13E6160:   var_CC.Text = 1
  loc_13E61A5:   Proc_6_39_E7D3A0(var_DC, CVar(Me.Fields.Item("addChild")))
  loc_13E61DC:   Set var_B8 = Me.Txt
  loc_13E61E2:   Call 0.Method_Proc_267_32_13E64540 (CInt(8), var_CC, CStr(Format(var_DC, "0.00")), 1)
  loc_13E61EA:   var_CC.Text = 1
  loc_13E623F:   Set var_B8 = Me.Txt
  loc_13E6245:   Call 0.Method_Proc_267_32_13E64540 (CInt(9), var_CC)
  loc_13E624D:   var_CC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("TName")), 1)
  loc_13E629A:   Set var_B8 = Me.Txt
  loc_13E62A0:   Call 0.Method_Proc_267_32_13E64540 (CInt(9), var_CC)
  loc_13E62A8:   var_CC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("TCode")))
  loc_13E62F5:   Set var_B8 = Me.Txt
  loc_13E62FB:   Call 0.Method_Proc_267_32_13E64540 (CInt(&HA), var_CC)
  loc_13E6303:   var_CC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("ACode")))
  loc_13E6350:   Set var_B8 = Me.Txt
  loc_13E6356:   Call 0.Method_Proc_267_32_13E64540 (CInt(&HA), var_CC)
  loc_13E635E:   var_CC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("AName")))
  loc_13E63AC:   var_130 = "Yes"
  loc_13E63BF:   var_110 = (Me.Fields.Item("ActiveYN").Value = "Y") 'Variant
  loc_13E63D1:   var_B4 = CStr(IIf(var_110, var_130, "No"))
  loc_13E63E0:   Set var_B8 = Me.Txt
  loc_13E63E6:   Call 0.Method_Proc_267_32_13E64540 (CInt(&HB), var_CC)
  loc_13E63EE:   var_CC.Text = var_B4
  loc_13E640E: End If
  loc_13E640E: Exit Sub
  loc_13E640F: ' Referenced from: 13E5A88
  loc_13E6417: Set var_8C = Err()
  loc_13E641D: Call 0.Method_arg_2C (var_B4)
  loc_13E643E: MsgBox(CVar(var_B4), &H40, "Information", var_110, var_130)
  loc_13E6451: Exit Sub
End Sub

Public Sub Proc_267_33_1089E9C
  'Data Table: 4C41BC
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4C41CF As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1089C2F: If (Me.RecordCount = 0) Then
  loc_1089C32:   Proc_267_33_1089E9C = 
  loc_1089C38: End If
  loc_1089C3C: Set var_90 = Me.TopCtrl1
  loc_1089C42: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1089C5B: If (CStr() = "Add") Then
  loc_1089C99:   Set var_90 = Me.Txt
  loc_1089C9F:   Call 0.Method_Proc_267_33_1089E9C0 (CInt(1), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1089CC0:   unk_4C41CF.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1089CD0:    = var_D0.Item()
  loc_1089CD8:    = var_E4.Value
  loc_1089D09:   If (var_A8.Text.Fields > 0) Then
  loc_1089D27:     var_A0 = "Duplicate Name"
  loc_1089D2D:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1089D48:     Set var_90 = Me.Txt
  loc_1089D4E:     Call 0.Method_Proc_267_33_1089E9C0 (CInt(1))
  loc_1089D56:     var_A8.SetFocus
  loc_1089D67:     Proc_267_33_1089E9C = &HFF
  loc_1089D6D:   End If
  loc_1089D70: Else
  loc_1089DAB:   Set var_90 = Me.Txt
  loc_1089DB1:   Call 0.Method_Proc_267_33_1089E9C0 (CInt(1), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1089DE3:   unk_4C41CF.Execute var_D0 & var_AC & "' And Name<>'" & global_72 & "'", 0, var_E4
  loc_1089DF3:    = var_D0.Item(var_A8)
  loc_1089DFB:    = var_E4.Value
  loc_1089E30:   If (var_A8.Text.Fields > 0) Then
  loc_1089E54:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1089E6F:     Set var_90 = Me.Txt
  loc_1089E75:     Call 0.Method_Proc_267_33_1089E9C0 (CInt(1))
  loc_1089E7D:     var_A8.SetFocus
  loc_1089E8E:     Proc_267_33_1089E9C = &HFF
  loc_1089E94:   End If
  loc_1089E94: End If
  loc_1089E94: Proc_267_33_1089E9C = var_A8
End Sub

Public Sub Proc_267_34_1099EC0
  'Data Table: 4C41BC
  Dim var_DC As Variant
  Dim var_A4 As TextBox
  Dim var_B4 As String
  Dim unk_4C41CF As Connection15
  Dim var_C8 As Recordset15
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_140 As Fields15
  Dim var_144 As Field20
  loc_1099C3C: Set var_8C = Me.TopCtrl1
  loc_1099C42: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1099C5B: If (CStr() = "Add") Then
  loc_1099C99:   Set var_8C = Me.Txt
  loc_1099C9F:   Call 0.Method_Proc_267_34_1099EC00 (CInt(0), var_A4, var_A8, "Select Count(*) From MemFacilityMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and SName='", var_9C, -1)
  loc_1099CB7:   var_B4 = var_CC & var_A8 & "'"
  loc_1099CC0:   unk_4C41CF.Execute var_B4, 0, var_E0
  loc_1099CD0:    = var_CC.Item()
  loc_1099CD8:    = var_E0.Value
  loc_1099D09:   If (var_A4.Text.Fields > 0) Then
  loc_1099D17:     var_F0 = "Information"
  loc_1099D27:     var_9C = "Duplicate Short Name"
  loc_1099D2D:     MsgBox(var_9C, &H40, var_F0, var_110, var_130)
  loc_1099D48:     Set var_8C = Me.Txt
  loc_1099D4E:     Call 0.Method_Proc_267_34_1099EC00 (CInt(0))
  loc_1099D56:     var_A4.SetFocus
  loc_1099D67:     Proc_267_34_1099EC0 = &HFF
  loc_1099D6D:   End If
  loc_1099D70: Else
  loc_1099D76:   var_DC = 0
  loc_1099DAB:   Set var_8C = Me.Txt
  loc_1099DB1:   Call 0.Method_Proc_267_34_1099EC00 (CInt(0), var_A4, var_A8, "Select Count(*) From MemFacilityMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and SName='", var_9C, -1)
  loc_1099DDA:   Set var_C8 = Me.Txt
  loc_1099DE0:   Call 0.Method_Proc_267_34_1099EC00 (CInt(1), var_CC, var_B4, var_140 & var_A8 & "' And Code<>'")
  loc_1099DE8:   var_DC = var_CC.Tag
  loc_1099E01:   unk_4C41CF.Execute var_144 & var_B4 & "'", var_F0, var_A4
  loc_1099E09:    = var_A4.Text.Fields
  loc_1099E11:    = var_140.Item()
  loc_1099E19:    = var_144.Value
  loc_1099E54:   If (var_F0 > 0) Then
  loc_1099E78:     MsgBox("Duplicate Short Name", &H40, "Information", var_110, var_130)
  loc_1099E93:     Set var_8C = Me.Txt
  loc_1099E99:     Call 0.Method_Proc_267_34_1099EC00 (CInt(0))
  loc_1099EA1:     var_A4.SetFocus
  loc_1099EB2:     Proc_267_34_1099EC0 = &HFF
  loc_1099EB8:   End If
  loc_1099EB8: End If
  loc_1099EB8: Proc_267_34_1099EC0 = var_A4
End Sub

Public Sub Proc_267_35_F22A88
  'Data Table: 4C41BC
  loc_F22998: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F229AA:   Me.DGHelp.Visible = False
  loc_F229B2: End If
  loc_F229CE: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_F229E0:   Me.DGRevenue.Visible = False
  loc_F229E8: End If
  loc_F22A04: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F22A16:   Me.DGTaxStru.Visible = False
  loc_F22A1E: End If
  loc_F22A39: If (Me.FrmList.Visible = &HFF) Then
  loc_F22A48:   Me.FrmList.Visible = False
  loc_F22A50: End If
  loc_F22A6C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F22A7E:   Me.FGPoint.Visible = False
  loc_F22A86: End If
  loc_F22A86: Exit Sub
  loc_F22A87: Exit Sub
End Sub

Public Sub Proc_267_36_F8D760
  'Data Table: 4C41BC
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_F8D60E: Set var_88 = Me.Txt
  loc_F8D614: Call 0.Method_Proc_267_36_F8D7600 (CInt(&HA), var_8C)
  loc_F8D633: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_F8D64F: Set var_B4 = Me.Txt
  loc_F8D655: Call 0.Method_Proc_267_36_F8D7600 (CInt(&HA), var_B8)
  loc_F8D670: Set var_88 = Me.Txt
  loc_F8D676: Call 0.Method_Proc_267_36_F8D7600 (CInt(&HA), var_8C)
  loc_F8D68E: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_F8D69D: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_F8D6BD: Set var_88 = Me.Txt
  loc_F8D6C3: Call 0.Method_Proc_267_36_F8D7600 (CInt(9), var_8C)
  loc_F8D6E2: Me.DGTaxStru.Left = CVar(var_8C.Left)
  loc_F8D6FE: Set var_B4 = Me.Txt
  loc_F8D704: Call 0.Method_Proc_267_36_F8D7600 (CInt(9), var_B8)
  loc_F8D71F: Set var_88 = Me.Txt
  loc_F8D725: Call 0.Method_Proc_267_36_F8D7600 (CInt(9), var_8C)
  loc_F8D73D: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_F8D74C: Me.DGTaxStru.Top = CVar(var_8C.Left)
  loc_F8D75E: Exit Sub
End Sub
