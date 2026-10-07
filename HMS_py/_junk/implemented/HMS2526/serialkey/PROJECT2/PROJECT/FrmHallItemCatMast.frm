VERSION 5.00
Begin VB.Form FrmHallItemCatMast
  Caption = "Category and Charge Master"
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
  ClientWidth = 9300
  ClientHeight = 6345
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6210
    Top = 2115
    Width = 2370
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 13
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
    Left = 4275
    Top = 3060
    Width = 1515
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 10
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
    Width = 9300
    Height = 450
    TabIndex = 25
  End
  Begin MSFlexGrid FGPoint
    Left = 2025
    Top = 5805
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 19
  End
  Begin DataGrid DGHelp
    Left = 4020
    Top = 7275
    Width = 5175
    Height = 1590
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGSaleAc
    Left = 2640
    Top = 7140
    Width = 4230
    Height = 1950
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin DataGrid DGSaleTax
    Left = 2625
    Top = 6795
    Width = 4230
    Height = 1650
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin PictureBox Picture4
    Picture = "FrmHallItemCatMast.frx":0
    Left = 13335
    Top = 7515
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 22
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin PictureBox Picture2
    Picture = "FrmHallItemCatMast.frx":34E
    Left = 13545
    Top = 7185
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 21
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin PictureBox Picture1
    Picture = "FrmHallItemCatMast.frx":69C
    Left = 13230
    Top = 7125
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 20
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Frame FrmList
    Left = 9045
    Top = 6285
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 17
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 18
    End
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6210
    Top = 2115
    Width = 2370
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 13
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
    Left = 4275
    Top = 2115
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 8
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
    Left = 4275
    Top = 2430
    Width = 4300
    Height = 285
    TabIndex = 5
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 2745
    Width = 4300
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 35
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
    Left = 4275
    Top = 1800
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 3
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
    Left = 4275
    Top = 1485
    Width = 4300
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 40
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
    Caption = "Status"
    Index = 7
    ForeColor = &HFF0000&
    Left = 2550
    Top = 3075
    Width = 585
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 435
    Width = 180
    Height = 540
    TabIndex = 28
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
    Left = 270
    Top = 8790
    Width = 2430
    Height = 285
    TabIndex = 27
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 285
    Top = 8460
    Width = 2520
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
  Begin Label Label2
    Caption = "Type"
    ForeColor = &HFF0000&
    Left = 5685
    Top = 2115
    Width = 465
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
  Begin Label LblName
    Caption = "Category/Charge"
    Index = 5
    ForeColor = &HFF0000&
    Left = 2550
    Top = 2115
    Width = 1605
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 16
    ForeColor = &HFF0000&
    Left = 5640
    Top = 1815
    Width = 885
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
    Caption = "Post in Account"
    Index = 4
    ForeColor = &HFF0000&
    Left = 2550
    Top = 2430
    Width = 1470
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
    Caption = "Tax Structure"
    Index = 3
    ForeColor = &HFF0000&
    Left = 2550
    Top = 2745
    Width = 1290
    Height = 240
    TabIndex = 12
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
    Caption = "Round Off"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2550
    Top = 1800
    Width = 945
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
  Begin Label LblName
    Caption = "Category Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2550
    Top = 1485
    Width = 1470
    Height = 240
    TabIndex = 8
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
  Begin Label LblCatType
    Caption = "Type"
    ForeColor = &HFF0000&
    Left = 5685
    Top = 2115
    Width = 465
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
End

Attribute VB_Name = "FrmHallItemCatMast"


Private Sub DGHelp_UnknownEvent_9 'F490F4
  'Data Table: 4C7EB8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F48FEB: Me.DGHelp.Visible = False
  loc_F4900A: If (Me.RecordCount > 0) Then
  loc_F49049:   Set var_B4 = Me.Txt
  loc_F4904F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F49057:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4908A:   var_B0 = Me.Fields.Item("Code")
  loc_F490A9:   Set var_B4 = Me.Txt
  loc_F490AF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F490B7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F490CD: End If
  loc_F490D8: Set var_A8 = Me.Txt
  loc_F490DE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F490E6: var_B0.SetFocus
  loc_F490F2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E72C64
  'Data Table: 4C7EB8
  loc_E72C22: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E72C39: Set var_8C = Me.FGPoint
  loc_E72C55: Proc_6_138_106E830(Me.DGHelp, global_60, CInt(0))
  loc_E72C63: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1360138
  'Data Table: 4C7EB8
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_135F912: Set var_88 = Me.Txt
  loc_135F918: Call 0.Method_Txt_GotFocus0 (Index)
  loc_135F926: Proc_6_74_E23240(var_8C)
  loc_135F932: Call Proc_116_38_F22068(var_8C)
  loc_135F93A: var_92 = Index
  loc_135F945: If (var_92 = CInt(0)) Then
  loc_135F95F:   If (Me.RecordCount > 0) Then
  loc_135F96D:     Set var_8C = Me.FGPoint
  loc_135F985:     Proc_6_137_1192FDC(Me.DGHelp, global_60, Index)
  loc_135F993:   End If
  loc_135F996: Else
  loc_135F99E:   If (var_92 = CInt(3)) Then
  loc_135F9B8:     If (Me.RecordCount > 0) Then
  loc_135F9C6:       Set var_8C = Me.FGPoint
  loc_135F9DE:       Proc_6_137_1192FDC(Me.DGSaleAc, global_64, Index)
  loc_135F9EC:     End If
  loc_135FA3A:     Set var_88 = Me.Txt
  loc_135FA40:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_135FA48:     var_8C = var_8C.Text
  loc_135FA60:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_135FA70:       Set var_88 = Me.Txt
  loc_135FA76:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_135FA7E:       var_8C.Tag = vbNullString
  loc_135FA8A:       Exit Sub
  loc_135FA8B:     End If
  loc_135FA98:     Set var_88 = Me.Txt
  loc_135FA9E:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_135FAA6:     var_A0 = var_8C.Text
  loc_135FAB8:     var_B0 = "Name"
  loc_135FAF3:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_135FAFC:       Me.MoveFirst
  loc_135FB1F:       Set var_88 = Me.Txt
  loc_135FB25:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_135FB2D:       0 = var_8C.Text
  loc_135FB46:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_135FB5B:     End If
  loc_135FB5E:   Else
  loc_135FB66:     If (var_92 = CInt(4)) Then
  loc_135FB80:       If (Me.RecordCount > 0) Then
  loc_135FB8E:         Set var_8C = Me.FGPoint
  loc_135FBA6:         Proc_6_137_1192FDC(Me.DGSaleTax, global_68)
  loc_135FBB4:       End If
  loc_135FC02:       Set var_88 = Me.Txt
  loc_135FC08:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_135FC10:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_135FC28:       If (Index Or (var_A0 = vbNullString)) Then
  loc_135FC38:         Set var_88 = Me.Txt
  loc_135FC3E:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_135FC46:         var_8C.Tag = vbNullString
  loc_135FC52:         Exit Sub
  loc_135FC53:       End If
  loc_135FC60:       Set var_88 = Me.Txt
  loc_135FC66:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_135FC6E:       var_A0 = var_8C.Text
  loc_135FC80:       var_B0 = "Name"
  loc_135FC97:       var_B4 = Me.Fields.Item(var_B0)
  loc_135FCBB:       If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_135FCC4:         Me.MoveFirst
  loc_135FCE7:         Set var_88 = Me.Txt
  loc_135FCED:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_135FCF5:         0 = var_8C.Text
  loc_135FD0E:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_135FD23:       End If
  loc_135FD26:     Else
  loc_135FD2E:       If (var_92 = CInt(2)) Then
  loc_135FD40:         Set var_88 = Me.Txt
  loc_135FD46:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_135FD4E:         var_8C.SelStart = 0
  loc_135FD67:         Set var_88 = Me.Txt
  loc_135FD6D:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_135FD88:         Set var_90 = Me.Txt
  loc_135FD8E:         Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_135FD96:         var_B4.SelLength = Len(var_8C.Text)
  loc_135FDB6:         Set var_88 = Me.Txt
  loc_135FDBC:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_135FDC4:         var_A0 = var_8C.Text
  loc_135FDD6:         Set var_90 = Me.Txt
  loc_135FDDC:         Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_135FDE4:         var_B4.Tag = var_A0
  loc_135FDFA:       Else
  loc_135FE02:         If (var_92 = CInt(5)) Then
  loc_135FE12:           ReDim var_F0(0 To 1)
  loc_135FE29:           var_F0(0) = "Category"
  loc_135FE38:           var_F0(1) = "Charge"
  loc_135FE4F:           global_96 = Array(var_F0)
  loc_135FE5A:           Set var_B4 = Me.ListView
  loc_135FE75:           Set var_8C = Me.Txt
  loc_135FE8F:           Set global_112 = Proc_6_66_F0048C(var_B4, var_8C, Index)
  loc_135FEAD:           Set var_88 = Me.Txt
  loc_135FEB3:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_135FEBB:           global_96 = var_8C.Text
  loc_135FECD:           Set var_90 = Me.Txt
  loc_135FED3:           Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_135FEDB:           var_B4.Tag = 2
  loc_135FEF1:         Else
  loc_135FEF9:           If (var_92 = CInt(6)) Then
  loc_135FF09:             ReDim var_F0(0 To 7)
  loc_135FF20:             var_F0(0) = "Food"
  loc_135FF2F:             var_F0(1) = "Liquor"
  loc_135FF3E:             var_F0(2) = "Confectionary"
  loc_135FF4D:             var_F0(3) = "Beverage"
  loc_135FF5C:             var_F0(4) = "Miscellaneous"
  loc_135FF6B:             var_F0(5) = "Tobacco"
  loc_135FF7A:             var_F0(6) = "Other Items  (Non Eatable)"
  loc_135FF89:             var_F0(7) = "Hall Rent"
  loc_135FFA0:             global_96 = Array(var_F0)
  loc_135FFAB:             Set var_B4 = Me.ListView
  loc_135FFC6:             Set var_8C = Me.Txt
  loc_135FFE0:             Set global_112 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_96)
  loc_135FFFE:             Set var_88 = Me.Txt
  loc_1360004:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_136000C:             8 = var_8C.Text
  loc_136001E:             Set var_90 = Me.Txt
  loc_1360024:             Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_136002C:             var_B4.Tag = global_96
  loc_1360042:           Else
  loc_136004A:             If (var_92 = CInt(1)) Then
  loc_136005A:               ReDim var_F0(0 To 1)
  loc_1360071:               var_F0(0) = "Dr"
  loc_1360080:               var_F0(1) = "Cr"
  loc_1360097:               global_96 = Array(var_F0)
  loc_13600A2:               Set var_B4 = Me.ListView
  loc_13600BD:               Set var_8C = Me.Txt
  loc_13600D7:               Set global_112 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_96)
  loc_13600F5:               Set var_88 = Me.Txt
  loc_13600FB:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1360103:               2 = var_8C.Text
  loc_1360115:               Set var_90 = Me.Txt
  loc_136011B:               Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_1360123:               var_B4.Tag = global_96
  loc_1360136:             End If
  loc_1360136:           End If
  loc_1360136:         End If
  loc_1360136:       End If
  loc_1360136:     End If
  loc_1360136:   End If
  loc_1360136: End If
  loc_1360136: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '131006C
  'Data Table: 4C7EB8
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_9C As DataGrid
  loc_130F94E: If (CLng(Shift) = &H1B) Then
  loc_130F951:   Call Proc_116_38_F22068()
  loc_130F956:   Exit Sub
  loc_130F957: End If
  loc_130F95A: var_88 = KeyCode
  loc_130F965: If (var_88 = CInt(0)) Then
  loc_130F985:   Set var_9C = Me.FGPoint
  loc_130F9B7:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_60, Shift)
  loc_130FA24:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_130FA4A:     Proc_6_138_106E830(Me.DGHelp, global_60, KeyCode, Me.FGPoint, 0)
  loc_130FA58:   End If
  loc_130FA5B: Else
  loc_130FA63:   If (var_88 = CInt(3)) Then
  loc_130FA8E:     Set var_9C = Nothing
  loc_130FABC:     Proc_6_69_134A630(Me.DGSaleAc, Me.Txt, KeyCode, global_64, Shift, 0, 1)
  loc_130FB2B:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_130FB32:       Set var_9C = Me.DGSaleAc
  loc_130FB51:       Proc_6_138_106E830(var_9C, global_64, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_130FB5F:     End If
  loc_130FB62:   Else
  loc_130FB6A:     If (var_88 = CInt(4)) Then
  loc_130FB78:       Set var_AC = Me.Txt
  loc_130FB8A:       Set var_A4 = Me.FGPoint
  loc_130FBC3:       Proc_6_69_134A630(Me.DGSaleTax, var_AC, KeyCode, global_68, Shift, 0, 1, Nothing)
  loc_130FBE2:       var_B0 = Me.RecordCount
  loc_130FC32:       If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_130FC40:         Set var_90 = Me.FGPoint
  loc_130FC58:         Proc_6_138_106E830(Me.DGSaleTax, global_68, KeyCode, var_90, var_A4, 0)
  loc_130FC66:       End If
  loc_130FC69:     Else
  loc_130FC71:       If (var_88 = CInt(6)) Then
  loc_130FC96:         Set var_8C = Me.Txt
  loc_130FC9C:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 0)
  loc_130FCA4:         1 = var_90.Left
  loc_130FCB6:         Set var_9C = Me.Txt
  loc_130FCBC:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_130FCC4:         var_9C = var_A4.Top
  loc_130FCD6:         Set var_A8 = Me.Txt
  loc_130FCDC:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_130FCE4:         0 = var_AC.Height
  loc_130FCF6:         Set var_B4 = Me.Txt
  loc_130FCFC:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_130FD04:         var_C4 = var_C0.Width
  loc_130FD4C:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_130FD73:       Else
  loc_130FD7B:         If (var_88 = CInt(1)) Then
  loc_130FDA0:           Set var_8C = Me.Txt
  loc_130FDA6:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_130FDAE:           CInt((var_B8 + var_BC)) = var_90.Left
  loc_130FDC0:           Set var_9C = Me.Txt
  loc_130FDC6:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_130FDCE:           CInt(var_C4) = var_A4.Top
  loc_130FDE0:           Set var_A8 = Me.Txt
  loc_130FDE6:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_130FDEE:           2160 = var_AC.Height
  loc_130FE00:           Set var_B4 = Me.Txt
  loc_130FE06:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_130FE0E:           var_C4 = var_C0.Width
  loc_130FE56:           Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_130FE7D:         Else
  loc_130FE85:           If (var_88 = CInt(5)) Then
  loc_130FEAA:             Set var_8C = Me.Txt
  loc_130FEB0:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_130FEB8:             CInt((var_B8 + var_BC)) = var_90.Left
  loc_130FECA:             Set var_9C = Me.Txt
  loc_130FED0:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_130FED8:             CInt(var_C4) = var_A4.Top
  loc_130FEEA:             Set var_A8 = Me.Txt
  loc_130FEF0:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_130FEF8:             680 = var_AC.Height
  loc_130FF0A:             Set var_B4 = Me.Txt
  loc_130FF10:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_130FF18:             var_C4 = var_C0.Width
  loc_130FF60:             Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_130FF84:           End If
  loc_130FF84:         End If
  loc_130FF84:       End If
  loc_130FF84:     End If
  loc_130FF84:   End If
  loc_130FF84: End If
  loc_130FFF5: If ((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGSaleAc.Visible) = 0)) And (CBool(Me.DGSaleTax.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_1310016:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(7))) Then
  loc_131001C:     Call Proc_116_39_E9106C(KeyCode, CInt(var_B0), CInt((var_B8 + var_BC)))
  loc_1310024:   Else
  loc_1310039:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1310042:       Proc_6_75_E5335C(Shift, arg_14, CInt(var_C4))
  loc_131004A:     Else
  loc_131005D:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_1310066:         Proc_6_76_E533C8(Shift, arg_14)
  loc_131006B:       End If
  loc_131006B:     End If
  loc_131006B:   End If
  loc_131006B: End If
  loc_131006B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10B32AC
  'Data Table: 4C7EB8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  Dim var_CC As DataGrid
  Dim var_94 As Variant
  loc_10B2FDA: Proc_6_133_E7FB08(var_94)
  loc_10B2FEF: If (CInt(var_94) = &HD) Then
  loc_10B2FF4:   arg_10 = 0
  loc_10B2FF7: End If
  loc_10B2FFA: Proc_6_58_E06050(arg_10, arg_10)
  loc_10B3002: var_96 = KeyAscii
  loc_10B300D: If (var_96 = CInt(2)) Then
  loc_10B3039:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_10B3049:     Set var_CC = Me.Txt
  loc_10B304F:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_10B3057:     var_D0.Text = var_96
  loc_10B3066:   Else
  loc_10B308F:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_10B309F:       Set var_CC = Me.Txt
  loc_10B30A5:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "No")
  loc_10B30AD:       var_D0.Text = arg_10
  loc_10B30B9:     End If
  loc_10B30B9:   End If
  loc_10B30BB:   arg_10 = 0
  loc_10B30C1: Else
  loc_10B30C9:   If (var_96 = CInt(3)) Then
  loc_10B30E8:     If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_10B30FA:       var_D4 = "Name"
  loc_10B3115:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10)
  loc_10B3147:       Proc_6_138_106E830(Me.DGSaleAc, global_64, KeyAscii, Me.FGPoint)
  loc_10B3155:     End If
  loc_10B3158:   Else
  loc_10B3160:     If (var_96 = CInt(4)) Then
  loc_10B317F:       If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_10B3191:         var_D4 = "Name"
  loc_10B31AC:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, var_D4)
  loc_10B31C6:         Set var_D0 = Me.FGPoint
  loc_10B31DE:         Proc_6_138_106E830(Me.DGSaleTax, global_68, KeyAscii, var_D0, 0)
  loc_10B31EC:       End If
  loc_10B31EF:     Else
  loc_10B31F7:       If (var_96 = CInt(7)) Then
  loc_10B3223:         If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_10B3233:           Set var_CC = Me.Txt
  loc_10B3239:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Active", var_D4)
  loc_10B3241:           var_D0.Text = 0
  loc_10B3250:         Else
  loc_10B3279:           If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_10B3289:             Set var_CC = Me.Txt
  loc_10B328F:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Non Active")
  loc_10B3297:             var_D0.Text = arg_10
  loc_10B32A3:           End If
  loc_10B32A3:         End If
  loc_10B32A5:         arg_10 = 0
  loc_10B32A8:       End If
  loc_10B32A8:     End If
  loc_10B32A8:   End If
  loc_10B32A8: End If
  loc_10B32A8: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F32AB8
  'Data Table: 4C7EB8
  Dim var_86 As Integer
  loc_F329AB: var_86 = KeyCode
  loc_F329B6: If (var_86 = CInt(0)) Then
  loc_F329D5:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F329E2:     var_A4 = "Name"
  loc_F32A01:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_60)
  loc_F32A33:     Proc_6_138_106E830(Me.DGHelp, global_60, KeyCode, Me.FGPoint)
  loc_F32A41:   End If
  loc_F32A44: Else
  loc_F32A4C:   If Not (var_86 = CInt(1)) Then
  loc_F32A57:     If (var_86 = CInt(6)) Then
  loc_F32A5A:     End If
  loc_F32A75:     If (Me.FrmList.Visible = &HFF) Then
  loc_F32AA4:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F32AB4:     End If
  loc_F32AB4:   End If
  loc_F32AB4: End If
  loc_F32AB4: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47A34
  'Data Table: 4C7EB8
  loc_E47A12: Set var_88 = Me.Txt
  loc_E47A18: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47A26: Proc_6_73_E23294(var_8C)
  loc_E47A32: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12BF064
  'Data Table: 4C7EB8
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_12BEA0F: var_86 = Cancel
  loc_12BEA1A: If (var_86 = CInt(0)) Then
  loc_12BEA20:   Call Proc_116_37_10B3BEC(var_88)
  loc_12BEA2B:   If (var_88 = &HFF) Then
  loc_12BEA30:     arg_10 = &HFF
  loc_12BEA33:     Exit Sub
  loc_12BEA34:   End If
  loc_12BEA37: Else
  loc_12BEA3F:   If (var_86 = CInt(3)) Then
  loc_12BEA90:     Set var_94 = Me.Txt
  loc_12BEA96:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_12BEA9E:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_12BEAB6:     If (arg_10 Or (var_9C = vbNullString)) Then
  loc_12BEAC6:       Set var_94 = Me.Txt
  loc_12BEACC:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BEAD4:       var_98.Tag = vbNullString
  loc_12BEAE0:       Exit Sub
  loc_12BEAE1:     End If
  loc_12BEB1C:     Set var_B0 = Me.Txt
  loc_12BEB22:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_12BEB2A:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12BEB5D:     var_98 = Me.Fields.Item("Code")
  loc_12BEB6E:     var_9C = CStr(var_98.Value)
  loc_12BEB7B:     Set var_B0 = Me.Txt
  loc_12BEB81:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_12BEB89:     var_B4.Tag = var_9C
  loc_12BEBA2:   Else
  loc_12BEBAA:     If (var_86 = CInt(4)) Then
  loc_12BEBFB:       Set var_94 = Me.Txt
  loc_12BEC01:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_12BEC09:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_12BEC21:       If (var_86 Or (var_9C = vbNullString)) Then
  loc_12BEC31:         Set var_94 = Me.Txt
  loc_12BEC37:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BEC3F:         var_98.Tag = vbNullString
  loc_12BEC4B:         Exit Sub
  loc_12BEC4C:       End If
  loc_12BEC87:       Set var_B0 = Me.Txt
  loc_12BEC8D:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_12BEC95:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12BECC8:       var_98 = Me.Fields.Item("Code")
  loc_12BECE6:       Set var_B0 = Me.Txt
  loc_12BECEC:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_12BECF4:       var_B4.Tag = CStr(var_98.Value)
  loc_12BED0D:     Else
  loc_12BED15:       If (var_86 = CInt(2)) Then
  loc_12BED22:         Set var_94 = Me.Txt
  loc_12BED28:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_12BED63:         If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_12BED73:           Set var_94 = Me.Txt
  loc_12BED79:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BED81:           var_98.Text = "Yes"
  loc_12BED90:         Else
  loc_12BED9D:           Set var_94 = Me.Txt
  loc_12BEDA3:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BEDAB:           var_98.Text = "No"
  loc_12BEDB7:         End If
  loc_12BEDBA:       Else
  loc_12BEDC2:         If Not (var_86 = CInt(1)) Then
  loc_12BEDCD:           If (var_86 = CInt(6)) Then
  loc_12BEDD0:           End If
  loc_12BEDDD:           Set var_94 = Me.Txt
  loc_12BEDE3:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BEE02:           If (var_98.Text <> vbNullString) Then
  loc_12BEE1D:             Set var_98 = Me.ListView.SelectedItem
  loc_12BEE35:             Set var_B0 = Me.Txt
  loc_12BEE3B:             Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_12BEE43:             var_B4.Text = var_98.Text
  loc_12BEE59:           End If
  loc_12BEE5C:         Else
  loc_12BEE64:           If (var_86 = CInt(5)) Then
  loc_12BEE75:             Set var_94 = Me.Txt
  loc_12BEE7B:             Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_12BEE9A:             If (var_98.Text = "Category") Then
  loc_12BEEA9:               Me.LblCatType.Visible = True
  loc_12BEEBE:               Set var_94 = Me.Txt
  loc_12BEEC4:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_12BEECC:               var_98.Visible = True
  loc_12BEEE4:               Me.Label2.Visible = False
  loc_12BEEF9:               Set var_94 = Me.Txt
  loc_12BEEFF:               Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_12BEF07:               var_98.Visible = False
  loc_12BEF16:             Else
  loc_12BEF22:               Me.Label2.Visible = True
  loc_12BEF37:               Set var_94 = Me.Txt
  loc_12BEF3D:               Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_12BEF45:               var_98.Visible = True
  loc_12BEF5D:               Me.LblCatType.Visible = False
  loc_12BEF72:               Set var_94 = Me.Txt
  loc_12BEF78:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_12BEF80:               var_98.Visible = False
  loc_12BEF9A:               Set var_94 = Me.Txt
  loc_12BEFA0:               Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_12BEFA8:               var_98.Text = "Cr"
  loc_12BEFB4:             End If
  loc_12BEFB7:           Else
  loc_12BEFBF:             If (var_86 = CInt(7)) Then
  loc_12BEFCC:               Set var_94 = Me.Txt
  loc_12BEFD2:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BF00D:               If (Ucase(Left(CVar(var_98), 1)) = "A") Then
  loc_12BF01D:                 Set var_94 = Me.Txt
  loc_12BF023:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BF02B:                 var_98.Text = "Active"
  loc_12BF03A:               Else
  loc_12BF047:                 Set var_94 = Me.Txt
  loc_12BF04D:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BF055:                 var_98.Text = "Non Active"
  loc_12BF061:               End If
  loc_12BF061:             End If
  loc_12BF061:           End If
  loc_12BF061:         End If
  loc_12BF061:       End If
  loc_12BF061:     End If
  loc_12BF061:   End If
  loc_12BF061: End If
  loc_12BF061: Exit Sub
End Sub

Private Sub Form_Load() '1236E54
  'Data Table: 4C7EB8
  Dim var_88 As Label
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_4C7ED1 As Connection15
  loc_123693C: On Error Goto loc_1236E10
  loc_1236946: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_123695A: Me.LblUser.Left = CDbl(13500)
  loc_1236971: Me.LblUser.Top = CDbl(7800)
  loc_1236988: Me.LblLDt.Top = CDbl(8160)
  loc_123699F: Me.LblLDt.Left = CDbl(13500)
  loc_12369B5: Set var_88 = Me.Txt
  loc_12369BB: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_12369DA: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_12369F6: Set var_B4 = Me.Txt
  loc_12369FC: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_1236A17: Set var_88 = Me.Txt
  loc_1236A1D: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_1236A35: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1236A44: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1236A60: Set var_88 = Me.TopCtrl1
  loc_1236A66: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_1236A74: Call 0.Method_arg_50 (var_C4)
  loc_1236A7C: var_D4 = CVar(var_C4) 'String
  loc_1236A84: Set var_88 = Me.TopCtrl1
  loc_1236A8A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(var_D4)
  loc_1236AA3: Set var_88 = Me.Txt
  loc_1236AA9: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_1236AC8: Me.DGSaleAc.Left = CVar(var_8C.Left)
  loc_1236AE4: Set var_B4 = Me.Txt
  loc_1236AEA: Call 0.Method_Form_Load0 (CInt(3), var_B8)
  loc_1236B05: Set var_88 = Me.Txt
  loc_1236B0B: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_1236B23: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1236B32: Me.DGSaleAc.Top = CVar(var_8C.Left)
  loc_1236B52: Set var_88 = Me.Txt
  loc_1236B58: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_1236B77: Me.DGSaleTax.Left = CVar(var_8C.Left)
  loc_1236B93: Set var_B4 = Me.Txt
  loc_1236B99: Call 0.Method_Form_Load0 (CInt(4), var_B8)
  loc_1236BBA: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_1236BD2: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1236BE1: Me.DGSaleTax.Top = CVar(var_8C.Left)
  loc_1236C0E: var_D8 = "SELECT ItemCatMast.Code, ItemCatMast.Name FROM ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and ItemCatMast.RestCode='"
  loc_1236C28: unk_4C7ED1.Execute var_D8 & global_52 & "' ORDER BY ItemCatMast.Name", var_D4, -1
  loc_1236C5B: CVarUnk
  loc_1236C60: VerifyVarObj
  loc_1236C66: Set var_88 = Me.DGHelp
  loc_1236C6C: LateIdStAd
  loc_1236C8E: var_C4 = "SELECT distinct IC.Code,IC.Name AS ItemCat,IC.RoundOff,IC.AcName,IC.TaxStru As TaxStruCode,IC.Status as Status,IC.Flag,IC.CatType,IC.RestCode,IC.TaxStru,VS.Name As SaleAc,TaxStru.Name As TaxStructure,IC.Drcr,IC.SITE_CODE,IC.LOGSITE_CODE FROM ((ItemCatMast IC Inner Join ViewSubGroup VS On IC.AcName=VS.SubCode) Inner Join TaxStru On IC.TaxStru=TaxStru.Code) Where (IC.LOGSITE_CODE='" & MemVar_1F95078
  loc_1236CAF: unk_4C7ED1.Execute var_C4 & "' or IC.LOGSITE_CODE='HO') and IC.RestCode='" & global_52 & "' ORDER BY IC.Name", var_D4, -1
  loc_1236CF4: var_D8 = "Select SubCode As Code,Name From ViewSubGroup Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Left(MainGrCodeS,3) IN ('230','240','250','260','270','280') Order by Name"
  loc_1236CFD: unk_4C7ED1.Execute var_D8, var_D4, -1
  loc_1236D2C: CVarUnk
  loc_1236D31: VerifyVarObj
  loc_1236D3D: LateIdStAd
  loc_1236D66: var_D8 = "Select distinct Code As Code,Name From TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_1236D6F: unk_4C7ED1.Execute var_D8, var_D4, -1
  loc_1236D9E: CVarUnk
  loc_1236DA3: VerifyVarObj
  loc_1236DA9: Set var_88 = Me.DGSaleTax
  loc_1236DAF: LateIdStAd
  loc_1236DC9: Set var_88 = Me
  loc_1236DD2: var_C4 = "INI"
  loc_1236DE0: Call Proc_116_34_E7C7C4(Proc_5_1_100EC1C(var_C4, var_88, var_88, var_88, Me.DGSaleAc, var_88, var_88), var_88, var_88, var_88)
  loc_1236DF4: Call 0.Method_arg_160 (var_88, var_88)
  loc_1236E02: Call 0.Method_arg_164 (var_88, Me.Txt)
  loc_1236E0A: Call Proc_116_36_139EE98(var_88)
  loc_1236E0F: Exit Sub
  loc_1236E10: ' Referenced from: 123693C
  loc_1236E18: Set var_88 = Err()
  loc_1236E1E: Call 0.Method_arg_2C (var_C4)
  loc_1236E3F: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_1236E52: Exit Sub
  loc_1236E53: Exit Sub
End Sub

Private Sub Form_Resize() 'ED57D8
  'Data Table: 4C7EB8
  Dim var_8C As Label
  loc_ED5736: Call 0.Method_arg_50 (var_88)
  loc_ED5748: Me.LblFormCaption.Caption = var_88
  loc_ED5761: Me.LblFormCaption.Left = CDbl(0)
  loc_ED576D: Set var_A0 = Me.TopCtrl1
  loc_ED5773: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED5780: Set var_8C = Me.TopCtrl1
  loc_ED5786: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED57A0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED57BB: Call 0.Method_arg_100 (var_B8)
  loc_ED57CD: Me.LblFormCaption.Width = var_B8
  loc_ED57D5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E606C8
  'Data Table: 4C7EB8
  loc_E60687: Set global_56 = Nothing
  loc_E60699: Set global_64 = Nothing
  loc_E606AB: Set global_68 = Nothing
  loc_E606BD: Set global_60 = Nothing
  loc_E606C4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8B5A0
  'Data Table: 4C7EB8
  loc_E8B53C: On Error Goto loc_E8B55C
  loc_E8B553: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8B55B: Exit Sub
  loc_E8B55C: ' Referenced from: E8B53C
  loc_E8B564: Set var_88 = Err()
  loc_E8B56A: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8B58B: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8B59E: Exit Sub
  loc_E8B59F: Exit Sub
End Sub

Private Sub DGSaleTax_UnknownEvent_9 'F467B4
  'Data Table: 4C7EB8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F466AB: Me.DGSaleTax.Visible = False
  loc_F466CA: If (Me.RecordCount > 0) Then
  loc_F46709:   Set var_B4 = Me.Txt
  loc_F4670F:   Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4), var_B8)
  loc_F46717:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4674A:   var_B0 = Me.Fields.Item("Code")
  loc_F46769:   Set var_B4 = Me.Txt
  loc_F4676F:   Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4), var_B8)
  loc_F46777:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4678D: End If
  loc_F46798: Set var_A8 = Me.Txt
  loc_F4679E: Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4))
  loc_F467A6: var_B0.SetFocus
  loc_F467B2: Exit Sub
End Sub

Private Sub DGSaleTax_UnknownEvent_1F 'E72A14
  'Data Table: 4C7EB8
  loc_E729D2: Proc_6_153_E91D24(Me.DGSaleTax, arg_14)
  loc_E729E9: Set var_8C = Me.FGPoint
  loc_E72A05: Proc_6_138_106E830(Me.DGSaleTax, global_68, CInt(4))
  loc_E72A13: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED8B74
  'Data Table: 4C7EB8
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_ED8AC0: On Error Goto loc_ED8B6E
  loc_ED8AE6: Call Proc_116_34_E7C7C4(Proc_5_1_100EC1C("ADD", Me))
  loc_ED8AF1: Call Proc_116_35_EDB7F8(global_56)
  loc_ED8B04: Set var_8C = Me.Txt
  loc_ED8B0A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_94)
  loc_ED8B12: var_94.Text = "Active"
  loc_ED8B2B: Me.LblUser.Caption = vbNullString
  loc_ED8B40: Me.LblLDt.Caption = vbNullString
  loc_ED8B53: Set var_8C = Me.Txt
  loc_ED8B59: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED8B61: var_94.SetFocus
  loc_ED8B6D: Exit Sub
  loc_ED8B6E: ' Referenced from: ED8AC0
  loc_ED8B6E: Proc_6_60_E63754(var_94)
  loc_ED8B73: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC5CDC
  'Data Table: 4C7EB8
  loc_EC5C44: On Error Goto loc_EC5CD4
  loc_EC5C7E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC5C8D:   Set var_10C = Me
  loc_EC5CA4:   Call Proc_116_34_E7C7C4(Proc_5_1_100EC1C("INI", var_10C))
  loc_EC5CAF:   Call Proc_116_38_F22068(global_56)
  loc_EC5CB4:   Call Proc_116_36_139EE98()
  loc_EC5CBC: Else
  loc_EC5CC2:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC5CCA:   Call var_10C.SetFocus
  loc_EC5CD3: End If
  loc_EC5CD3: Exit Sub
  loc_EC5CD4: ' Referenced from: EC5C44
  loc_EC5CD4: Proc_6_60_E63754()
  loc_EC5CD9: Exit Sub
  loc_EC5CDA:  = 
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1290620
  'Data Table: 4C7EB8
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_A4 As String
  Dim unk_4C7ED1 As Connection15
  Dim var_98 As Recordset15
  Dim var_118 As Variant
  Dim var_C8 As Variant
  loc_1290068: On Error Goto loc_12905D0
  loc_1290079: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_129007C:   Exit Sub
  loc_129007D: End If
  loc_129008B: Set var_9C = Me.Txt
  loc_1290091: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(5), var_A0)
  loc_12900B0: If (var_A0.Text = "Category") Then
  loc_12900C8:   var_9C = Me.Fields
  loc_12900D8:   var_C8 = var_9C.Item("Code").Value
  loc_12900E5:   var_D4 = "Item Master"
  loc_129012D:   If (Proc_6_108_101061C(MemVar_1F95044, "ItemMast", "ItemCatCode", CStr(var_C8)) = 0) Then
  loc_1290130:     Exit Sub
  loc_1290131:   End If
  loc_1290131: End If
  loc_1290158: unk_4C7ED1.Execute "Select Code From RevMast Where Name='" & global_72 & "'", var_C8, -1
  loc_1290163: Set var_98 = var_9C
  loc_1290179: var_D0 = var_98.RecordCount
  loc_1290187: If (var_D0 > 0) Then
  loc_12901CF:   var_118 = "Select Count(*) from PayCharge Where PayType='" & var_98.Fields.Item(0).Value & "'" 
  loc_12901DD:   unk_4C7ED1.Execute CStr(var_118), var_138, -1
  loc_129023E:   If (var_13C.Fields.Item(0).Value > 0) Then
  loc_1290262:     MsgBox("Related Record Exist, Entry Can't Be Deleted", &H40, "Validation Check", var_118, var_138)
  loc_1290272:     Exit Sub
  loc_1290273:   End If
  loc_1290273: End If
  loc_12902AA: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_12902B6:   unk_4C7ED1.BeginTrans var_D0
  loc_12902CC:   var_94 = Me.Bookmark 'Variant
  loc_1290318:   var_118 = "Delete From ItemCatMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_1290326:   unk_4C7ED1.Execute CStr(var_118), var_138, -1
  loc_1290367:   var_C8 = Me.Fields.Item("Code").Value
  loc_1290371:   var_168 = 0
  loc_1290384:   var_160 = 0
  loc_129038F:   var_15C = 0
  loc_12903A2:   var_154 = 0
  loc_12903AD:   var_150 = 0
  loc_12903C0:   var_148 = 0
  loc_1290409:   Proc_154_5_10E3BD4(MemVar_1F95044, "ItemCatMast", "Code", &HC8, CStr(var_C8), 0, 0, 0)
  loc_1290458:   unk_4C7ED1.Execute "Delete From RevMast Where Name='" & global_72 & "'", var_C8, -1
  loc_129046F:   var_160 = 0
  loc_1290482:   var_15C = 0
  loc_129048D:   var_154 = 0
  loc_12904A0:   var_150 = 0
  loc_12904AB:   var_148 = 0
  loc_12904BE:   var_144 = 0
  loc_12904FC:   var_A4 = "RevMast"
  loc_1290505:   Proc_154_5_10E3BD4(MemVar_1F95044, var_A4, "Name", &HC8, global_72, 0, 0, 0)
  loc_1290527:   unk_4C7ED1.CommitTrans
  loc_1290537:   Me.Requery -1
  loc_1290547:   Me.Requery -1
  loc_1290567:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1290574:     Me.Bookmark = var_94
  loc_129057C:   Else
  loc_1290590:     If (Me.EOF = 0) Then
  loc_1290599:       Me.MoveLast
  loc_129059E:     End If
  loc_129059E:   End If
  loc_129059E:   Call Proc_116_36_139EE98(var_144, 0, var_148, var_150)
  loc_12905BF:   Proc_5_0_1107AD0(&HFF, Me, global_56, 0)
  loc_12905C7: End If
  loc_12905CC: Set var_98 = Nothing
  loc_12905CF: Exit Sub
  loc_12905D0: ' Referenced from: 1290068
  loc_12905D6: unk_4C7ED1.RollbackTrans
  loc_12905E3: Set var_9C = Err()
  loc_12905E9: Call 0.Method_arg_2C (var_A4, 0, var_154)
  loc_129060A: MsgBox(CVar(var_A4), &H30, " Deletion Error ", var_118, var_138)
  loc_129061D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F12684
  'Data Table: 4C7EB8
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F1258C: On Error Goto loc_F1267B
  loc_F1259D: If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_F125A0:   Exit Sub
  loc_F125A1: End If
  loc_F125C4: Call Proc_116_34_E7C7C4(Proc_5_1_100EC1C("EDIT", Me))
  loc_F125DD: Set var_8C = Me.Txt
  loc_F125E3: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F125F6: global_92 = var_94.Text
  loc_F12611: Set var_8C = Me.Txt
  loc_F12617: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_F1261F: var_94.Enabled = False
  loc_F12636: Set var_8C = Me.Txt
  loc_F1263C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F12644: var_94.SetFocus
  loc_F1265D: Me.LblUser.Caption = vbNullString
  loc_F12672: Me.LblLDt.Caption = vbNullString
  loc_F1267A: Exit Sub
  loc_F1267B: ' Referenced from: F1258C
  loc_F1267B: Proc_6_60_E63754(global_56)
  loc_F12680: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BEB0
  'Data Table: 4C7EB8
  loc_E1BEA5: Me.Global.Unload Me
  loc_E1BEAD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F53228
  'Data Table: 4C7EB8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F53114: On Error Goto loc_F531C3
  loc_F53120: var_88 = Me.RecordCount
  loc_F5312E: If (var_88 <= 0) Then
  loc_F53137:   var_B8 = "Information"
  loc_F53152:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F53162:   Exit Sub
  loc_F53163: End If
  loc_F5316A: var_10C = "SELECT Distinct IC.Code AS SearchCode,'Banquet' As Outlet,IC.Name AS ItemCategory,IC.CatType As Type,IC.RoundOff As RO,IC.Flag,VS.Name As SaleAc,TaxStru.Name As TaxStructure,IC.Status as Status FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Where (IC.LOGSITE_CODE='" & MemVar_1F95078
  loc_F53182: MemVar_1F950E4 = var_10C & "' or IC.LOGSITE_CODE='HO') AND IC.RestCode='" & global_52 & "' ORDER BY IC.Name"
  loc_F53195: MemVar_1F95120 = Me
  loc_F5319C: var_10C = "1000,2000,1000,500,1000,2000,2000,1200"
  loc_F531A2: Proc_6_126_F1C850(var_10C)
  loc_F531BD: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F531C2: Exit Sub
  loc_F531C3: ' Referenced from: F53114
  loc_F531CB: Set var_118 = Err()
  loc_F531D1: Call 0.Method_arg_1C (var_88)
  loc_F531E2: If (var_88 <> 0) Then
  loc_F531ED:   Set var_118 = Err()
  loc_F531F3:   Call 0.Method_arg_2C (var_10C)
  loc_F53214:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F53227: End If
  loc_F53227: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3B828
  'Data Table: 4C7EB8
  loc_E3B818: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B820: Call Proc_116_36_139EE98(global_56)
  loc_E3B825: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3C008
  'Data Table: 4C7EB8
  loc_E3BFF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C000: Call Proc_116_36_139EE98(global_56)
  loc_E3C005: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3DE68
  'Data Table: 4C7EB8
  loc_E3DE58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3DE60: Call Proc_116_36_139EE98(global_56)
  loc_E3DE65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3BA68
  'Data Table: 4C7EB8
  loc_E3BA58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3BA60: Call Proc_116_36_139EE98(global_56)
  loc_E3BA65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10A1E6C
  'Data Table: 4C7EB8
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4C7ED1 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_136 As Integer
  Dim var_CC As Variant
  Dim var_F4 As Variant
  loc_10A1BC0: On Error Goto loc_10A1E21
  loc_10A1BD7: var_A0 = "SELECT distinct IC.Code,IC.Name AS ItemCat,IC.RoundOff,IC.AcName,IC.TaxStru As TaxStruCode,IC.Status,IC.Flag,IC.CatType,IC.RestCode,IC.TaxStru,VS.Name As SaleAc,TaxStru.Name As TaxStructure,IC.Drcr FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Where (IC.LOGSITE_CODE='" & MemVar_1F95078
  loc_10A1BF8: unk_4C7ED1.Execute var_A0 & "' or IC.LOGSITE_CODE='HO') and IC.RestCode='" & global_52 & "' ORDER BY IC.Name", var_CC, -1
  loc_10A1C03: Set var_88 = var_D0
  loc_10A1C1D: var_D4 = var_88.RecordCount
  loc_10A1C2B: If (var_D4 = 0) Then
  loc_10A1C47:   MsgBox("No Record Present For Printing", 0, var_F4, var_114, var_134)
  loc_10A1C57:   Exit Sub
  loc_10A1C58: End If
  loc_10A1C67: var_A4 = MemVar_1F950B4 & "\HallItemCatMast.ttx"
  loc_10A1C6E: Set var_D0 = var_88 
  loc_10A1C7A: var_136 = CreateFieldDefFile(var_D0, var_A4)
  loc_10A1C84: Set var_88 = var_D0
  loc_10A1C8A: var_BC = CVar(var_136) 'Integer
  loc_10A1C8D: var_98 = var_BC 'Variant
  loc_10A1CA9: var_A0 = MemVar_1F950B4 & "\HallItemCatMast.RPT"
  loc_10A1CB2: Call 0.Method_arg_1C (var_A0, var_BC, var_D0)
  loc_10A1CBD: MemVar_1F951E8 = var_D0
  loc_10A1CD8: Call 0.Method_arg_90 (var_D0, var_D4, var_9A, 1)
  loc_10A1CE0: Call 0.Method_arg_24 (var_136, &HFF)
  loc_10A1CEC: For var_13A =  To CInt(var_D4): var_D0 = var_13A 'Integer
  loc_10A1D05:   Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_10A1D0D:   Call 0.Method_arg_20 (var_140)
  loc_10A1D15:   Call 0.Method_arg_30 (var_A0)
  loc_10A1D5B:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10A1D71:     Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_10A1D79:     Call 0.Method_arg_20 (var_140)
  loc_10A1D81:     Call 0.Method_arg_38 ("'Hall Item Category Master'")
  loc_10A1D8D:   End If
  loc_10A1D90: Next var_13A 'Integer
  loc_10A1DAE: Call 0.Method_arg_64 (var_D0, CVar(var_88))
  loc_10A1DB6: Call 0.Method_arg_2C (var_E4)
  loc_10A1DC4: Call 0.Method_arg_150 (var_104)
  loc_10A1DCF: Call 0.Method_arg_50 (var_A0)
  loc_10A1DD9: Set var_140 = Nothing
  loc_10A1DF3: Set var_D0 = MemVar_1F951E8 
  loc_10A1DFF: Proc_6_99_1484404(var_D0, 0, var_A0)
  loc_10A1E0A: MemVar_1F951E8 = var_D0
  loc_10A1E1D: Set var_88 = Nothing
  loc_10A1E20: Exit Sub
  loc_10A1E21: ' Referenced from: 10A1BC0
  loc_10A1E29: Set var_D0 = Err()
  loc_10A1E2F: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10A1E3A: Call 0.Method_arg_50 (var_A4)
  loc_10A1E56: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_114, var_134)
  loc_10A1E69: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E465B4
  'Data Table: 4C7EB8
  Dim Me As Recordset15
  loc_E4658B: Me.Requery -1
  loc_E4659B: Me.Requery -1
  loc_E465AB: Me.Requery -1
  loc_E465B0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14D051C
  'Data Table: 4C7EB8
  Dim var_A0 As String
  Dim var_D8 As Variant
  Dim var_B8 As String
  Dim unk_4C7ED1 As Connection15
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_9C As Field20
  Dim var_F8 As Variant
  Dim var_C8 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_B4 As Variant
  Dim var_134 As Variant
  Dim var_168 As Variant
  Dim var_1A8 As Variant
  Dim var_1B0 As TextBox
  Dim var_1F4 As Variant
  Dim var_1FC As TextBox
  Dim var_240 As Variant
  Dim var_248 As TextBox
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_294 As TextBox
  Dim var_2E0 As TextBox
  Dim var_304 As Variant
  Dim var_394 As Variant
  Dim var_3BC As TextBox
  Dim var_460 As Variant
  Dim var_4A0 As Variant
  Dim var_114 As String
  Dim var_1B4 As String
  Dim var_200 As String
  Dim var_E8 As Variant
  Dim var_158 As TextBox
  Dim var_178 As Variant
  Dim var_384 As Variant
  loc_14CF880: On Error Goto loc_14D04C8
  loc_14CF887: var_86 = CByte(0) 'Byte
  loc_14CF896: Set var_94 = Me.Txt
  loc_14CF89C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_14CF8C5: If (Proc_6_27_EA61EC(var_98, "Name") = 0) Then
  loc_14CF8CF:   Call Txt_GotFocus(CInt(0))
  loc_14CF8D4:   Exit Sub
  loc_14CF8D5: End If
  loc_14CF8E0: Set var_94 = Me.Txt
  loc_14CF8E6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98)
  loc_14CF90F: If (Proc_6_27_EA61EC(var_98, "Post in A/c") = 0) Then
  loc_14CF919:   Call Txt_GotFocus(CInt(3))
  loc_14CF91E:   Exit Sub
  loc_14CF91F: End If
  loc_14CF92A: Set var_94 = Me.Txt
  loc_14CF930: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_14CF959: If (Proc_6_27_EA61EC(var_98, "Tax Structure") = 0) Then
  loc_14CF963:   Call Txt_GotFocus(CInt(4))
  loc_14CF968:   Exit Sub
  loc_14CF969: End If
  loc_14CF96C: Call Proc_116_37_10B3BEC(var_A2)
  loc_14CF977: If (var_A2 = &HFF) Then
  loc_14CF97A:   Exit Sub
  loc_14CF97B: End If
  loc_14CF97F: Set var_94 = Me.TopCtrl1
  loc_14CF985: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_14CF99E: If (CStr() = "Add") Then
  loc_14CF9A7:   var_D8 = 0
  loc_14CF9C4:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemCatMast WHERE ISNUMERIC(SUBSTRING(Code,3,4))=1 AND rtrim(U_Name)<>'Analysis' and SITE_CODE='" & MemVar_1F95070
  loc_14CF9D4:   unk_4C7ED1.Execute CStr() & "'", var_B4, -1
  loc_14CF9DC:   var_94 = var_94.Fields
  loc_14CF9E4:   var_D8 = var_98.Item(var_98)
  loc_14CF9EC:   var_9C = var_9C.Value
  loc_14CFA1C:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_14CFA3F:   var_E8 = Format(CStr(var_E8), "0000")
  loc_14CFA47:   var_108 = (1 + var_E8)
  loc_14CFA4C:   var_8C = CStr(var_108)
  loc_14CFA5D: Else
  loc_14CFA7A:   var_98 = Me.Fields.Item("Code")
  loc_14CFA8B:   var_8C = CStr(var_98.Value)
  loc_14CFA98: End If
  loc_14CFAA1: unk_4C7ED1.BeginTrans var_10C
  loc_14CFAAA: var_86 = CByte(1) 'Byte
  loc_14CFAB2: Set var_94 = Me.TopCtrl1
  loc_14CFAB8: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_14CFAC0: var_A0 = CStr(var_F8)
  loc_14CFAD1: If (var_A0 = "Add") Then
  loc_14CFAE5:   Set var_94 = Me.Txt
  loc_14CFAEB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_14CFAFF:   Call Proc_116_40_F735F0(var_A0)
  loc_14CFB07:   var_90 = var_98.Text
  loc_14CFB28:   var_A0 = "Insert Into ItemCatMast(Code,Name,RestCode,RoundOff,AcName,TaxStru,Flag,CatType,Status,OutletYN," & " U_Name,U_EntDt,U_AE,Drcr,RevCode,SITE_CODE,LOGSITE_CODE)"
  loc_14CFB2F:   var_B8 = var_A0 & " Values('"
  loc_14CFB4E:   Set var_94 = Me.Txt
  loc_14CFB54:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_114, CVar(var_B8 & var_8C & "',"))
  loc_14CFB5C:   var_4E4 = var_98.Text
  loc_14CFB64:   var_B4 = CVar(var_114) 'String
  loc_14CFB6A:   Proc_6_17_EAAE40(var_E8, var_B4, -1)
  loc_14CFBA0:   Set var_9C = Me.Txt
  loc_14CFBA6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_158)
  loc_14CFBB5:   Proc_6_17_EAAE40(var_178, CVar(var_158))
  loc_14CFBC6:   var_1A8 = var_4E8 & var_E8 & ",'" & CVar(global_52) & "'," & var_178 & ",'" 
  loc_14CFBD8:   Set var_1AC = Me.Txt
  loc_14CFBDE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B0, var_1B4)
  loc_14CFBE6:   var_1A8 = var_1B0.Tag
  loc_14CFC0C:   Set var_1F8 = Me.Txt
  loc_14CFC12:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1FC)
  loc_14CFC46:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_248)
  loc_14CFC56:   var_25C = CVar(var_248.Text) 'String
  loc_14CFC74:   Set var_290 = Me.Txt
  loc_14CFC7A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_294)
  loc_14CFCA8:   Set var_2DC = Me.Txt
  loc_14CFCAE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2E0)
  loc_14CFCC1:   var_304 = var_E8 & CVar(var_1B4) & "','" & CVar(var_1FC.Tag) & "','" & var_25C & "','" & CVar(var_294.Text) & "','" & CVar(var_2E0.Text) 
  loc_14CFCEC:   Proc_6_7_F26918(var_384, MemVar_1F950EC)
  loc_14CFCF4:   var_394 = var_304 & "','Y','" & CVar(MemVar_1F950C8) & "'," & var_384 
  loc_14CFD0F:   Set var_3B8 = Me.Txt
  loc_14CFD15:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_3BC)
  loc_14CFD61:   var_4A0 = var_394 & ",'A','" & CVar(var_3BC.Text) & "','" & CVar(var_90) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) 
  loc_14CFD78:   unk_4C7ED1.Execute CStr(var_4A0 & "')"), , 
  loc_14CFE14:   var_A0 = "Insert Into RevMast(Code,Name,ShortName,SysYN,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,FieldType,DeskCode,TaxStru,Type,AcCode,LOGSITE_CODE) Values ('" & var_90
  loc_14CFE1B:   var_114 = var_A0 & "','"
  loc_14CFE25:   var_110 = "BANQ" & " - "
  loc_14CFE36:   Set var_94 = Me.Txt
  loc_14CFE3C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_B8, var_B8 & var_8C)
  loc_14CFE44:   var_114 = var_98.Text
  loc_14CFE51:   var_200 = -1 & var_25C & var_B8
  loc_14CFE74:   var_E8 = CVar(var_1FC.Tag & "','BANQ','Y','Amount','Detail','POS','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") 'String
  loc_14CFE7A:   Proc_6_104_ED68A8(var_B4, var_E8)
  loc_14CFEA1:   var_134 = Me.Txt & var_B4 & ",'A','C','" & CVar(global_52) & "','" 
  loc_14CFEB3:   Set var_9C = Me.Txt
  loc_14CFEB9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_158)
  loc_14CFEE7:   Set var_1AC = Me.Txt
  loc_14CFEED:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B0)
  loc_14CFF1B:   Set var_1F8 = Me.Txt
  loc_14CFF21:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1FC)
  loc_14CFF50:   var_240 = var_134 & CVar(var_158.Tag) & "','" & CVar(var_1B0.Text) & "','" & CVar(var_1FC.Tag) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_14CFF5E:   unk_4C7ED1.Execute CStr(var_240), , 
  loc_14CFFBB: Else
  loc_14CFFD8:   Set var_94 = Me.Txt
  loc_14CFFDE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, "UPDATE ItemCatMast SET Name=")
  loc_14CFFE6:   var_B4 = CVar(var_98) 'Address
  loc_14CFFED:   Proc_6_17_EAAE40(var_E8, var_B4, var_4A0)
  loc_14CFFF5:   var_F8 = -1 & var_E8 
  loc_14D000D:   Set var_9C = Me.Txt
  loc_14D0013:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_158)
  loc_14D0022:   Proc_6_17_EAAE40(var_134, CVar(var_158))
  loc_14D0033:   var_168 = Me.Txt & var_B4 & ",RoundOff=" & var_134 & ",AcName='" 
  loc_14D0045:   Set var_1AC = Me.Txt
  loc_14D004B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B0, var_A0)
  loc_14D0053:   var_168 = var_1B0.Tag
  loc_14D0079:   Set var_1F8 = Me.Txt
  loc_14D007F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1FC)
  loc_14D00B3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_248)
  loc_14D00E1:   Set var_290 = Me.Txt
  loc_14D00E7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_294)
  loc_14D00FA:   var_26C = var_4E8 & CVar(var_A0) & "',TaxStru='" & CVar(var_1FC.Tag) & "',Flag='" & CVar(var_248.Text) & "',CatType='" & CVar(var_294.Text) 
  loc_14D0115:   Set var_2DC = Me.Txt
  loc_14D011B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2E0)
  loc_14D0149:   Set var_3B8 = Me.Txt
  loc_14D014F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_3BC)
  loc_14D0187:   var_384 = var_26C & "',Status='" & CVar(var_2E0.Text) & "',DrCr='" & CVar(var_3BC.Text) & "'," & " U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" 
  loc_14D0196:   Proc_6_7_F26918(var_394, MemVar_1F950EC)
  loc_14D01D7:   var_460 = var_384 & var_394 & " ,U_AE='E',RevCode='" & global_76 & "',SITE_CODE='" & CVar(MemVar_1F95070) & "' WHERE Code='" & CVar(var_8C) 
  loc_14D01EE:   unk_4C7ED1.Execute CStr(var_460 & "'"), , 
  loc_14D0286:   Set var_94 = Me.Txt
  loc_14D028C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, "Update RevMast Set Name='BANQ - ")
  loc_14D0294:   var_25C = var_98.Text
  loc_14D029D:   var_B8 = -1 & var_A0
  loc_14D02AB:   var_114 = var_1FC.Tag & " ',ShortName='BANQ',SysYN='Y',AppMode='Amount',FlagAMR='Detail',FlagType='POS',Site_Code='" & MemVar_1F95070
  loc_14D02C0:   var_E8 = CVar(var_114 & "',U_Name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_14D02C6:   Proc_6_104_ED68A8(var_B4, var_E8)
  loc_14D02CE:   var_F8 = Me.Txt & var_B4 
  loc_14D02D2:   var_C8 = ",U_AE='E',FieldType='C',DeskCode='"
  loc_14D02D7:   var_108 = var_F8 & var_C8 
  loc_14D02FF:   Set var_9C = Me.Txt
  loc_14D0305:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_158)
  loc_14D0333:   Set var_1AC = Me.Txt
  loc_14D0339:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B0)
  loc_14D0367:   Set var_1F8 = Me.Txt
  loc_14D036D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1FC)
  loc_14D0380:   var_1F4 = var_108 & CVar(global_52) & "',TaxStru='" & CVar(var_158.Tag) & "',Type='" & CVar(var_1B0.Text) & "',AcCode='" & CVar(var_1FC.Tag) 
  loc_14D03AD:   unk_4C7ED1.Execute CStr(var_1F4 & "' Where Name='" & CVar(global_72) & "'"), , 
  loc_14D03FF: End If
  loc_14D0405: unk_4C7ED1.CommitTrans
  loc_14D040E: var_86 = CByte(0) 'Byte
  loc_14D041D: Me.Requery -1
  loc_14D042D: Me.Requery -1
  loc_14D0457: Me.Find "Code='" & var_8C & "'", 0, 1
  loc_14D0467: Set var_94 = Me.TopCtrl1
  loc_14D046D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C8)
  loc_14D0486: If (CStr() = "Add") Then
  loc_14D0489:   Call TopCtrl1_UnknownEvent_A()
  loc_14D048E:   Exit Sub
  loc_14D048F: End If
  loc_14D04A4: var_A0 = "INI"
  loc_14D04B2: Call Proc_116_34_E7C7C4(Proc_5_1_100EC1C(var_A0, Me))
  loc_14D04BD: Call Proc_116_38_F22068(global_56)
  loc_14D04C2: Call Proc_116_36_139EE98()
  loc_14D04C7: Exit Sub
  loc_14D04C8: ' Referenced from: 14CF880
  loc_14D04D1: If (CInt(var_86) = 1) Then
  loc_14D04DA:   unk_4C7ED1.RollbackTrans
  loc_14D04DF: End If
  loc_14D04E7: Set var_94 = Err()
  loc_14D04ED: Call 0.Method_arg_2C (var_A0)
  loc_14D0506: MsgBox(CVar(var_A0), &H10, var_E8, var_F8, var_108)
  loc_14D0519: Exit Sub
End Sub

Private Sub DGSaleAc_UnknownEvent_9 'F45314
  'Data Table: 4C7EB8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4520B: Me.DGSaleAc.Visible = False
  loc_F4522A: If (Me.RecordCount > 0) Then
  loc_F45269:   Set var_B4 = Me.Txt
  loc_F4526F:   Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F45277:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F452AA:   var_B0 = Me.Fields.Item("Code")
  loc_F452C9:   Set var_B4 = Me.Txt
  loc_F452CF:   Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F452D7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F452ED: End If
  loc_F452F8: Set var_A8 = Me.Txt
  loc_F452FE: Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3))
  loc_F45306: var_B0.SetFocus
  loc_F45312: Exit Sub
End Sub

Private Sub DGSaleAc_UnknownEvent_1F 'E72BD0
  'Data Table: 4C7EB8
  loc_E72B8E: Proc_6_153_E91D24(Me.DGSaleAc, arg_14)
  loc_E72BA5: Set var_8C = Me.FGPoint
  loc_E72BC1: Proc_6_138_106E830(Me.DGSaleAc, global_64, CInt(3))
  loc_E72BCF: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F179DC
  'Data Table: 4C7EB8
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F178F8: On Error Goto loc_F179D6
  loc_F178FF: Set var_A4 = Me.ListView
  loc_F17949: Set var_BC = Me.Txt
  loc_F1794F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F17957: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F17983: Me.FrmList.Visible = False
  loc_F179A5: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F179B3: Set var_9C = Me.Txt
  loc_F179B9: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F179C1: var_A4.SetFocus
  loc_F179D5: Exit Sub
  loc_F179D6: ' Referenced from: F178F8
  loc_F179D6: Proc_6_60_E63754(var_C8)
  loc_F179DB: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E87570
  'Data Table: 4C7EB8
  loc_E8751C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E8751F:   Call DGHelp_UnknownEvent_9()
  loc_E87524: End If
  loc_E87540: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_E87543:   Call DGSaleAc_UnknownEvent_9()
  loc_E87548: End If
  loc_E87564: If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_E87567:   Call DGSaleTax_UnknownEvent_9()
  loc_E8756C: End If
  loc_E8756C: Exit Sub
End Sub

Public Function global_52Get() '4C8FB0
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4C8FBF
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC2F54
  'Data Table: 4C7EB8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC2ECA: On Error Goto loc_EC2F0F
  loc_EC2ED3: Me.MoveFirst
  loc_EC2EED: var_8C = "code='" & MyValue
  loc_EC2EFD: Me.Find var_8C & "'", 0, 1
  loc_EC2F09: Call Proc_116_36_139EE98(var_A0)
  loc_EC2F0E: Exit Sub
  loc_EC2F0F: ' Referenced from: EC2ECA
  loc_EC2F17: Set var_A4 = Err()
  loc_EC2F1D: Call 0.Method_arg_2C (var_8C)
  loc_EC2F3E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC2F51: Exit Sub
  loc_EC2F52: Exit Sub
End Sub

Public Sub Proc_116_34_E7C7C4(arg_C) 'E7C7C4
  'Data Table: 4C7EB8
  Dim var_98 As TextBox
  loc_E7C772: Set var_8C = Me.Txt
  loc_E7C778: Call 0.Method_Proc_116_34_E7C7C4C (var_8E, var_86)
  loc_E7C788: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C79E:   Set var_8C = Me.Txt
  loc_E7C7A4:   Call 0.Method_Proc_116_34_E7C7C40 (CInt(var_86), var_98)
  loc_E7C7AC:   var_98.Enabled = arg_C
  loc_E7C7BB: Next var_92 'Byte
  loc_E7C7C1: Exit Sub
  loc_E7C7C2: Set Proc_116_34_E7C7C4000 = 
End Sub

Public Sub Proc_116_35_EDB7F8
  'Data Table: 4C7EB8
  Dim var_98 As TextBox
  loc_EDB742: global_92 = vbNullString
  loc_EDB754: Set var_8C = Me.Txt
  loc_EDB75A: Call 0.Method_Proc_116_35_EDB7F8C (var_8E, var_86)
  loc_EDB76A: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EDB780:   Set var_8C = Me.Txt
  loc_EDB786:   Call 0.Method_Proc_116_35_EDB7F80 (CInt(var_86), var_98)
  loc_EDB78E:   var_98.Text = vbNullString
  loc_EDB7AA:   Set var_8C = Me.Txt
  loc_EDB7B0:   Call 0.Method_Proc_116_35_EDB7F80 (CInt(var_86), var_98)
  loc_EDB7B8:   var_98.Tag = vbNullString
  loc_EDB7C7: Next var_92 'Byte
  loc_EDB7DB: Set var_8C = Me.Txt
  loc_EDB7E1: Call 0.Method_Proc_116_35_EDB7F80 (CInt(1), var_98)
  loc_EDB7E9: var_98.Text = "Dr"
  loc_EDB7F5: Exit Sub
  loc_EDB7F6: Set Proc_116_35_EDB7F8000 = 
End Sub

Public Sub Proc_116_36_139EE98
  'Data Table: 4C7EB8
  Dim Me As Variant
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_C0 As String
  Dim var_AC As TextBox
  Dim var_BC As Variant
  Dim var_C4 As String
  Dim var_CC As String
  Dim unk_4C7ED1 As Connection15
  Dim var_88 As Recordset15
  Dim var_A8 As Fields15
  loc_139E5C4: On Error Goto loc_139EE54
  loc_139E5CD: Proc_183_45_E5CCA8(global_56)
  loc_139E5E9: If (Me.RecordCount <= 0) Then
  loc_139E5EC:   Call Proc_116_35_EDB7F8()
  loc_139E5F4: Else
  loc_139E630:   Set var_A8 = Me.Txt
  loc_139E636:   Call 0.Method_Proc_116_36_139EE980 (CInt(0), var_AC)
  loc_139E63E:   var_AC.Text = CStr(Me.Fields.Item("ItemCat").Value)
  loc_139E690:   Set var_A8 = Me.Txt
  loc_139E696:   Call 0.Method_Proc_116_36_139EE980 (CInt(0), var_AC)
  loc_139E69E:   var_AC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_139E6ED:   Set var_A8 = Me.Txt
  loc_139E6F3:   Call 0.Method_Proc_116_36_139EE980 (CInt(2), var_AC)
  loc_139E6FB:   var_AC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")))
  loc_139E748:   Set var_A8 = Me.Txt
  loc_139E74E:   Call 0.Method_Proc_116_36_139EE980 (CInt(3), var_AC)
  loc_139E756:   var_AC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAc")))
  loc_139E7A3:   Set var_A8 = Me.Txt
  loc_139E7A9:   Call 0.Method_Proc_116_36_139EE980 (CInt(3), var_AC)
  loc_139E7B1:   var_AC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("AcName")))
  loc_139E7FE:   Set var_A8 = Me.Txt
  loc_139E804:   Call 0.Method_Proc_116_36_139EE980 (CInt(4), var_AC)
  loc_139E80C:   var_AC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStructure")))
  loc_139E859:   Set var_A8 = Me.Txt
  loc_139E85F:   Call 0.Method_Proc_116_36_139EE980 (CInt(4), var_AC)
  loc_139E867:   var_AC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStruCode")))
  loc_139E8B4:   Set var_A8 = Me.Txt
  loc_139E8BA:   Call 0.Method_Proc_116_36_139EE980 (CInt(5), var_AC)
  loc_139E8C2:   var_AC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Flag")))
  loc_139E90F:   Set var_A8 = Me.Txt
  loc_139E915:   Call 0.Method_Proc_116_36_139EE980 (CInt(6), var_AC)
  loc_139E91D:   var_AC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CatType")))
  loc_139E96A:   Set var_A8 = Me.Txt
  loc_139E970:   Call 0.Method_Proc_116_36_139EE980 (CInt(1), var_AC)
  loc_139E978:   var_AC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DrCr")))
  loc_139E9A6:   var_A4 = Me.Fields.Item("Status")
  loc_139E9AE:   var_BC = CVar(var_A4) 'Address
  loc_139E9C5:   Set var_A8 = Me.Txt
  loc_139E9CB:   Call 0.Method_Proc_116_36_139EE980 (CInt(7), var_AC)
  loc_139E9D3:   var_AC.Text = Proc_6_38_E69628(var_BC)
  loc_139E9EE:   var_C4 = "BANQ" & " - "
  loc_139EA05:   Call 0.Method_Proc_116_36_139EE980 (CInt(0), var_A4)
  loc_139EA5C:   var_CC = "Select * from Revmast where Name ='" & "Select * from Revmast where Name ='" & var_C4 & var_A4.Text & "' and site_code='" & var_A4.Text & "' and site_code='" & MemVar_1F95070 & "'"
  loc_139EA65:   unk_4C7ED1.Execute var_CC, var_BC, -1
  loc_139EA70:   Set var_88 = Me.Txt
  loc_139EA98:   If (var_88.RecordCount > 0) Then
  loc_139EAAA:     var_90 = var_88.Fields
  loc_139EB3E:     var_18C = IIf((Proc_6_38_E69628(CVar(var_90.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_139EB83:     Me.LblUser.Caption = CStr(var_90 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_18C)))
  loc_139EC16:     var_13C = "entdt :   "
  loc_139EC21:     var_11C = "Last Update :   "
  loc_139EC5E:     var_18C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), var_11C, var_13C))
  loc_139ECA3:     Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_139ECF2:     var_A4 = var_88.Fields.Item("Code")
  loc_139ED09:     global_76 = CVar(Proc_6_38_E69628(CVar(var_A4)))
  loc_139ED1A:   Else
  loc_139ED22:     global_76 = vbNullString
  loc_139ED26:   End If
  loc_139ED2B:   Set var_88 = Nothing
  loc_139ED3C:   Set var_90 = Me.Txt
  loc_139ED42:   Call 0.Method_Proc_116_36_139EE980 (CInt(5), var_A4)
  loc_139ED4A:   var_C0 = var_A4.Text
  loc_139ED61:   If (var_C0 = "Category") Then
  loc_139ED70:     Me.LblCatType.Visible = True
  loc_139ED85:     Set var_90 = Me.Txt
  loc_139ED8B:     Call 0.Method_Proc_116_36_139EE980 (CInt(6), var_A4)
  loc_139ED93:     var_A4.Visible = True
  loc_139EDAB:     Me.Label2.Visible = False
  loc_139EDC0:     Set var_90 = Me.Txt
  loc_139EDC6:     Call 0.Method_Proc_116_36_139EE980 (CInt(1), var_A4)
  loc_139EDCE:     var_A4.Visible = False
  loc_139EDDD:   Else
  loc_139EDE9:     Me.Label2.Visible = True
  loc_139EDFE:     Set var_90 = Me.Txt
  loc_139EE04:     Call 0.Method_Proc_116_36_139EE980 (CInt(1), var_A4)
  loc_139EE0C:     var_A4.Visible = True
  loc_139EE24:     Me.LblCatType.Visible = False
  loc_139EE39:     Set var_90 = Me.Txt
  loc_139EE3F:     Call 0.Method_Proc_116_36_139EE980 (CInt(6), var_A4)
  loc_139EE47:     var_A4.Visible = False
  loc_139EE53:   End If
  loc_139EE53: End If
  loc_139EE53: Exit Sub
  loc_139EE54: ' Referenced from: 139E5C4
  loc_139EE5C: Set var_90 = Err()
  loc_139EE62: Call 0.Method_arg_2C (var_C0)
  loc_139EE83: MsgBox(CVar(var_C0), &H40, "Information", var_11C, var_13C)
  loc_139EE96: Exit Sub
End Sub

Public Sub Proc_116_37_10B3BEC
  'Data Table: 4C7EB8
  Dim Me As Recordset15
  Dim var_AC As String
  Dim var_B0 As TextBox
  Dim unk_4C7ED1 As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  loc_10B3957: If (Me.RecordCount = 0) Then
  loc_10B395A:   Proc_116_37_10B3BEC = 
  loc_10B3960: End If
  loc_10B3964: Set var_90 = Me.TopCtrl1
  loc_10B396A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10B3983: If (CStr() = "Add") Then
  loc_10B39BA:   var_AC = "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and restcode='" & global_52
  loc_10B39D2:   Set var_90 = Me.Txt
  loc_10B39D8:   Call 0.Method_Proc_116_37_10B3BEC0 (CInt(0), var_B0, var_B4, var_AC & "' and Name='", var_A0, -1)
  loc_10B39F9:   unk_4C7ED1.Execute var_D8 & var_B4 & "'", 0, var_EC
  loc_10B3A09:    = var_D8.Item()
  loc_10B3A11:    = var_EC.Value
  loc_10B3A46:   If (var_B0.Text.Fields > 0) Then
  loc_10B3A64:     var_A0 = "Duplicate Name"
  loc_10B3A6A:     MsgBox(var_A0, &H40, "Information", var_11C, var_13C)
  loc_10B3A85:     Set var_90 = Me.Txt
  loc_10B3A8B:     Call 0.Method_Proc_116_37_10B3BEC0 (CInt(0))
  loc_10B3A93:     var_B0.SetFocus
  loc_10B3AA4:     Proc_116_37_10B3BEC = &HFF
  loc_10B3AAA:   End If
  loc_10B3AAD: Else
  loc_10B3AE1:   var_AC = "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and restcode='" & global_52
  loc_10B3AF9:   Set var_90 = Me.Txt
  loc_10B3AFF:   Call 0.Method_Proc_116_37_10B3BEC0 (CInt(0), var_B0, var_B4, var_AC & "' and Name='", var_A0, -1)
  loc_10B3B31:   unk_4C7ED1.Execute var_D8 & var_B4 & "' And Name<>'" & global_92 & "'", 0, var_EC
  loc_10B3B41:    = var_D8.Item(var_B0)
  loc_10B3B49:    = var_EC.Value
  loc_10B3B82:   If (var_B0.Text.Fields > 0) Then
  loc_10B3BA6:     MsgBox("Duplicate Name", &H40, "Information", var_11C, var_13C)
  loc_10B3BC1:     Set var_90 = Me.Txt
  loc_10B3BC7:     Call 0.Method_Proc_116_37_10B3BEC0 (CInt(0))
  loc_10B3BCF:     var_B0.SetFocus
  loc_10B3BE0:     Proc_116_37_10B3BEC = &HFF
  loc_10B3BE6:   End If
  loc_10B3BE6: End If
  loc_10B3BE6: Proc_116_37_10B3BEC = var_B0
End Sub

Public Sub Proc_116_38_F22068
  'Data Table: 4C7EB8
  loc_F21F78: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F21F8A:   Me.DGHelp.Visible = False
  loc_F21F92: End If
  loc_F21FAE: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_F21FC0:   Me.DGSaleAc.Visible = False
  loc_F21FC8: End If
  loc_F21FE4: If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_F21FF6:   Me.DGSaleTax.Visible = False
  loc_F21FFE: End If
  loc_F22019: If (Me.FrmList.Visible = &HFF) Then
  loc_F22028:   Me.FrmList.Visible = False
  loc_F22030: End If
  loc_F2204C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F2205E:   Me.FGPoint.Visible = False
  loc_F22066: End If
  loc_F22066: Exit Sub
End Sub

Public Sub Proc_116_39_E9106C(arg_C) 'E9106C
  'Data Table: 4C7EB8
  Dim var_10C As TextBox
  loc_E91000: Call Proc_116_38_F22068()
  loc_E9103C: If (MsgBox("Save Category ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E9103F:   Call TopCtrl1_UnknownEvent_16()
  loc_E91047: Else
  loc_E91051:   Set var_108 = Me.Txt
  loc_E91057:   Call 0.Method_Proc_116_39_E9106C0 (arg_C)
  loc_E9105F:   var_10C.SetFocus
  loc_E9106B: End If
  loc_E9106B: Exit Sub
End Sub

Public Sub Proc_116_40_F735F0(arg_C) 'F735F0
  'Data Table: 4C7EB8
  Dim var_148 As Integer
  Dim var_8C As String
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim unk_4C7ED1 As Connection15
  Dim var_134 As Recordset15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  Dim var_130 As Variant
  loc_F734ED: var_148 = 0
  loc_F7350A: var_8C = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast WHERE Site_Code='" & MemVar_1F95070
  loc_F7351D: var_CC = (CVar(MemVar_1F95070) + Left(arg_C, 1))
  loc_F73538: unk_4C7ED1.Execute CStr(CVar(var_8C & "' and isnumeric(SUBSTRING(Code,4,3))=1 and SUBSTRING(Code,1,3) ='") & var_CC & "'"), var_130, -1
  loc_F73540: var_134 = var_134.Fields
  loc_F73548: var_148 = var_138.Item(var_138)
  loc_F73550: var_14C = var_14C.Value
  loc_F735A5: var_DC = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) + Left(arg_C, 1))
  loc_F735D1: var_130 = (1 + Format(CStr(var_15C), "000"))
  loc_F735D6: var_88 = CStr(var_130)
  loc_F735EE: Set Proc_116_40_F735F0000 = CVar(var_8C & "' and isnumeric(SUBSTRING(Code,4,3))=1 and SUBSTRING(Code,1,3) ='")
End Sub
