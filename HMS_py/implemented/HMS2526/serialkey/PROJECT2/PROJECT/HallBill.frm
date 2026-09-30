VERSION 5.00
Begin VB.Form HallBill
  Caption = "Hall Bill Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "HallBill.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 8880
  ClientHeight = 8490
  LockControls = -1  'True
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
  Begin CommandButton CmdGeneInvoice
    Caption = "Gen eInvoice"
    Left = 9165
    Top = 8070
    Width = 1650
    Height = 375
    Visible = 0   'False
    TabIndex = 96
  End
  Begin CommandButton CmdeInvoiceJson
    Caption = "eInvoice Json"
    Left = 9165
    Top = 7695
    Width = 1650
    Height = 375
    Visible = 0   'False
    TabIndex = 95
  End
  Begin CommandButton CmdeInvoiceSql
    Caption = "eInvoice Sql"
    Left = 10875
    Top = 8235
    Width = 1665
    Height = 375
    Visible = 0   'False
    TabIndex = 94
  End
  Begin Frame FreInvInfo
    Caption = "eInvoice Info:"
    Left = 8520
    Top = 6555
    Width = 6735
    Height = 1095
    Visible = 0   'False
    TabIndex = 87
    Begin TextBox TxteInvInfo
      Index = 0
      Left = 795
      Top = 255
      Width = 5800
      Height = 240
      TabIndex = 90
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox TxteInvInfo
      Index = 1
      Left = 795
      Top = 510
      Width = 5800
      Height = 240
      TabIndex = 89
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox TxteInvInfo
      Index = 2
      Left = 795
      Top = 765
      Width = 5800
      Height = 240
      TabIndex = 88
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LbleInvInfo
      Caption = "Ack.Dt.:"
      Index = 2
      Left = 90
      Top = 765
      Width = 600
      Height = 195
      TabIndex = 93
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LbleInvInfo
      Caption = "Ack.No.:"
      Index = 1
      Left = 90
      Top = 510
      Width = 630
      Height = 195
      TabIndex = 92
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LbleInvInfo
      Caption = "IRN:"
      Index = 0
      Left = 90
      Top = 255
      Width = 330
      Height = 195
      TabIndex = 91
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin BtnEnh Command1
    Left = 4950
    Top = 8055
    Width = 510
    Height = 630
    TabIndex = 84
  End
  Begin TextBox Txt
    Index = 26
    ForeColor = &HFF0000&
    Left = 3645
    Top = 7650
    Width = 1290
    Height = 360
    TabIndex = 79
    Alignment = 1 'Right Justify
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
  Begin BtnEnh BtnEnh1
    Left = 8205
    Top = 1305
    Width = 1065
    Height = 300
    TabIndex = 78
  End
  Begin BtnEnh CmdBooking
    Left = 7140
    Top = 1290
    Width = 915
    Height = 315
    TabIndex = 77
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 450
    TabIndex = 74
  End
  Begin DataGrid DGVType
    Left = 17625
    Top = 4755
    Width = 4215
    Height = 3645
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 38
  End
  Begin DataGrid DGParty
    Left = 17055
    Top = 2385
    Width = 11805
    Height = 5640
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin DataGrid DGItem
    Left = 16725
    Top = 1620
    Width = 9405
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 28
  End
  Begin DataGrid DGHall
    Left = 16065
    Top = 660
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 27
  End
  Begin TextBox Txt
    Index = 25
    ForeColor = &HFF0000&
    Left = 1335
    Top = 2250
    Width = 5760
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 75
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
    Index = 24
    ForeColor = &HFF0000&
    Left = 1335
    Top = 1935
    Width = 5760
    Height = 285
    TabIndex = 4
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
    Index = 23
    Left = 5745
    Top = 2895
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 71
    BorderStyle = 0 'None
    MaxLength = 12
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
  Begin DataGrid DGBookNo
    Left = 16635
    Top = 165
    Width = 6300
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 44
  End
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 870
    Top = 2895
    Width = 885
    Height = 225
    Visible = 0   'False
    TabIndex = 70
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 22
    ForeColor = &HFF0000&
    Left = 13185
    Top = 10065
    Width = 975
    Height = 240
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin MSHFlexGrid FGCat
    Left = 7350
    Top = 2355
    Width = 7905
    Height = 1425
    Visible = 0   'False
    TabIndex = 56
  End
  Begin TextBox Txt
    Index = 21
    ForeColor = &H0&
    Left = 3300
    Top = 10485
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 65
    BorderStyle = 0 'None
    MaxLength = 12
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
    Index = 20
    ForeColor = &HFF0000&
    Left = 3645
    Top = 8370
    Width = 1290
    Height = 315
    TabIndex = 63
    Alignment = 1 'Right Justify
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
  Begin TextBox Txt
    Index = 19
    ForeColor = &H0&
    Left = 2250
    Top = 10740
    Width = 3060
    Height = 240
    Visible = 0   'False
    TabIndex = 19
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
  Begin TextBox Txt
    Index = 18
    ForeColor = &HFF0000&
    Left = 6240
    Top = 1305
    Width = 855
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 17
    ForeColor = &HFF0000&
    Left = 3705
    Top = 1305
    Width = 885
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TextGt
    Index = 1
    ForeColor = &HFF0000&
    Left = 2295
    Top = 3885
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 12
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
  Begin TextBox TextPer
    Index = 1
    ForeColor = &HFF0000&
    Left = 1605
    Top = 3885
    Width = 495
    Height = 285
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 4
    Left = 8895
    Top = 60
    Width = 1860
    Height = 255
    Visible = 0   'False
    TabIndex = 26
    BorderStyle = 0 'None
    MaxLength = 40
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
    Index = 16
    ForeColor = &H0&
    Left = 4080
    Top = 9150
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 54
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtPer
    Index = 1
    ForeColor = &HFF0000&
    Left = 5295
    Top = 3885
    Width = 495
    Height = 285
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtGt
    Index = 1
    ForeColor = &HFF0000&
    Left = 5985
    Top = 3885
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 12
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
    Index = 13
    ForeColor = &H0&
    Left = 10305
    Top = 10725
    Width = 1290
    Height = 240
    Visible = 0   'False
    TabIndex = 50
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 14
    ForeColor = &H0&
    Left = 10305
    Top = 10470
    Width = 1290
    Height = 240
    Visible = 0   'False
    TabIndex = 49
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 15
    ForeColor = &H0&
    Left = 10320
    Top = 10230
    Width = 1290
    Height = 240
    Visible = 0   'False
    TabIndex = 48
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 7
    ForeColor = &HFF0000&
    Left = 1335
    Top = 1305
    Width = 885
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
  Begin MaskEdBox txtM
    Index = 1
    Left = 4560
    Top = 10230
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 18
  End
  Begin TextBox Txt
    Index = 11
    ForeColor = &H0&
    Left = 4080
    Top = 9405
    Width = 3915
    Height = 240
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 10
    ForeColor = &HFF0000&
    Left = 11355
    Top = 1290
    Width = 1050
    Height = 285
    Visible = 0   'False
    TabIndex = 23
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
    Index = 9
    ForeColor = &HFF0000&
    Left = 10665
    Top = 1290
    Width = 690
    Height = 285
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    Alignment = 2 'Center
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
    ForeColor = &HFF0000&
    Left = 3645
    Top = 8040
    Width = 1290
    Height = 315
    Enabled = 0   'False
    TabIndex = 21
    Alignment = 1 'Right Justify
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
  Begin TextBox Txt
    Index = 12
    ForeColor = &H0&
    Left = 4080
    Top = 9660
    Width = 3915
    Height = 240
    Visible = 0   'False
    TabIndex = 25
    BorderStyle = 0 'None
    MaxLength = 35
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
    Index = 6
    ForeColor = &H0&
    Left = 3300
    Top = 10230
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 12
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
    Index = 0
    ForeColor = &HFF0000&
    Left = 1335
    Top = 990
    Width = 2295
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 30
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
    ForeColor = &HFF0000&
    Left = 4650
    Top = 990
    Width = 1005
    Height = 285
    TabIndex = 13
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
    Index = 2
    ForeColor = &HFF0000&
    Left = 7080
    Top = 990
    Width = 1095
    Height = 285
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 12
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 8130
    Top = 1965
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
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
    ForeColor = &HFF0000&
    Left = 1335
    Top = 1620
    Width = 5760
    Height = 285
    TabIndex = 3
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
    Index = 5
    ForeColor = &H0&
    Left = 3300
    Top = 9975
    Width = 2010
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
  Begin MSHFlexGrid FGrid
    Left = 7335
    Top = 1635
    Width = 7905
    Height = 2670
    TabIndex = 8
  End
  Begin MaskEdBox txtM
    Index = 0
    Left = 4560
    Top = 10485
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 64
  End
  Begin MaskEdBox txtMEd
    Index = 0
    Left = 3075
    Top = 3090
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 69
  End
  Begin MSHFlexGrid FGrid1
    Left = 60
    Top = 2565
    Width = 7110
    Height = 1170
    TabIndex = 11
  End
  Begin BtnEnh BtnEnh4
    Left = 1965
    Top = 7680
    Width = 1695
    Height = 330
    TabIndex = 80
  End
  Begin BtnEnh BtnEnh2
    Left = 1965
    Top = 8025
    Width = 1695
    Height = 330
    TabIndex = 81
  End
  Begin BtnEnh BtnEnh3
    Left = 1965
    Top = 8370
    Width = 1695
    Height = 345
    TabIndex = 82
  End
  Begin BtnEnh LBLRectno
    Left = 9270
    Top = 1275
    Width = 1410
    Height = 330
    Visible = 0   'False
    TabIndex = 83
  End
  Begin Image QrImage
    Left = 15315
    Top = 3795
    Width = 1800
    Height = 1350
    Visible = 0   'False
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 13170
    Top = 8490
    Width = 2520
    Height = 255
    TabIndex = 86
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
    Left = 13155
    Top = 8820
    Width = 2430
    Height = 285
    TabIndex = 85
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
  Begin Label Label1
    Caption = "Bill Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 6225
    Top = 1020
    Width = 810
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
  Begin Label Label1
    Caption = "Bill No."
    Index = 3
    ForeColor = &HFF0000&
    Left = 3900
    Top = 1020
    Width = 690
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
  Begin Label Label2
    BackColor = &HFFFFFF&
    Left = 0
    Top = 990
    Width = 9270
    Height = 285
    TabIndex = 76
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 420
    Width = 180
    Height = 540
    TabIndex = 75
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
  Begin Label Label1
    Caption = "Remark"
    Index = 20
    ForeColor = &HFF0000&
    Left = 195
    Top = 2250
    Width = 735
    Height = 240
    TabIndex = 73
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
    Caption = "Partciular"
    Index = 19
    ForeColor = &HFF0000&
    Left = 195
    Top = 1935
    Width = 930
    Height = 240
    TabIndex = 72
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
    Caption = "Total"
    Index = 18
    ForeColor = &H0&
    Left = 12210
    Top = 10335
    Width = 420
    Height = 210
    Visible = 0   'False
    TabIndex = 68
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &H0&
    Left = 7425
    Top = 10455
    Width = 315
    Height = 435
    Visible = 0   'False
    TabIndex = 67
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "To Booking  Date And Time"
    Index = 17
    ForeColor = &H0&
    Left = 750
    Top = 10500
    Width = 2295
    Height = 210
    Visible = 0   'False
    TabIndex = 66
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Particulars"
    Index = 14
    ForeColor = &H0&
    Left = 765
    Top = 10755
    Width = 810
    Height = 210
    Visible = 0   'False
    TabIndex = 62
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Pax @ Rate"
    Index = 13
    ForeColor = &HFF0000&
    Left = 5040
    Top = 1320
    Width = 1125
    Height = 240
    TabIndex = 61
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
    Caption = "No Of Paxs"
    Index = 11
    ForeColor = &HFF0000&
    Left = 2580
    Top = 1320
    Width = 1050
    Height = 240
    TabIndex = 60
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
  Begin Label LableCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 180
    Top = 3885
    Width = 480
    Height = 240
    TabIndex = 59
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
  Begin Label LableAt
    Caption = "%"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2115
    Top = 3885
    Width = 165
    Height = 240
    Visible = 0   'False
    TabIndex = 58
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
  Begin Label LableDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &H0&
    Left = 45
    Top = 3885
    Width = 165
    Height = 180
    Visible = 0   'False
    TabIndex = 57
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
    Caption = "DocID"
    Index = 12
    ForeColor = &HC00000&
    Left = 8730
    Top = 90
    Width = 555
    Height = 210
    TabIndex = 31
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
    Caption = "Balance"
    Index = 9
    ForeColor = &H0&
    Left = 2520
    Top = 9165
    Width = 615
    Height = 210
    Visible = 0   'False
    TabIndex = 55
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &H0&
    Left = 3645
    Top = 3885
    Width = 165
    Height = 180
    Visible = 0   'False
    TabIndex = 53
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &HFF0000&
    Left = 5805
    Top = 3885
    Width = 150
    Height = 240
    Visible = 0   'False
    TabIndex = 52
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
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 3780
    Top = 3885
    Width = 480
    Height = 240
    TabIndex = 51
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
    Caption = "Cash Recd."
    Index = 8
    ForeColor = &H0&
    Left = 8310
    Top = 10230
    Width = 900
    Height = 210
    Visible = 0   'False
    TabIndex = 47
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Tip Amount"
    Index = 7
    ForeColor = &H0&
    Left = 8310
    Top = 10485
    Width = 975
    Height = 210
    Visible = 0   'False
    TabIndex = 46
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "To Refund"
    Index = 2
    ForeColor = &H0&
    Left = 8310
    Top = 10740
    Width = 870
    Height = 210
    Visible = 0   'False
    TabIndex = 45
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "BookingNo"
    Index = 35
    ForeColor = &HFF0000&
    Left = 195
    Top = 1305
    Width = 1035
    Height = 240
    TabIndex = 43
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
    Caption = "Credit Card No."
    Index = 26
    ForeColor = &H0&
    Left = 2520
    Top = 9420
    Width = 1245
    Height = 210
    Visible = 0   'False
    TabIndex = 42
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Rect.Date"
    Index = 24
    ForeColor = &H0&
    Left = 105
    Top = 9675
    Width = 825
    Height = 210
    Visible = 0   'False
    TabIndex = 41
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Credit Card Holder"
    Index = 21
    ForeColor = &H0&
    Left = 2520
    Top = 9675
    Width = 1485
    Height = 210
    Visible = 0   'False
    TabIndex = 40
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "From Booking  Date And Time"
    Index = 10
    ForeColor = &H0&
    Left = 765
    Top = 10245
    Width = 2475
    Height = 210
    Visible = 0   'False
    TabIndex = 39
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Rect.No."
    Index = 15
    ForeColor = &H0&
    Left = 105
    Top = 9420
    Width = 720
    Height = 210
    Visible = 0   'False
    TabIndex = 37
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "V.Type "
    Index = 4
    ForeColor = &HFF0000&
    Left = 12240
    Top = 10590
    Width = 720
    Height = 240
    Visible = 0   'False
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 13080
    Top = 10515
    Width = 645
    Height = 210
    Visible = 0   'False
    TabIndex = 33
    Alignment = 1 'Right Justify
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
    Caption = "Party Name"
    Index = 5
    ForeColor = &HFF0000&
    Left = 195
    Top = 1635
    Width = 1110
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
  Begin Label Label1
    Caption = "Hall Name"
    Index = 0
    ForeColor = &H0&
    Left = 765
    Top = 10005
    Width = 795
    Height = 210
    Visible = 0   'False
    TabIndex = 30
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Menu Popup
    Visible = 0   'False
    Caption = ""
    NegotiatePosition = -1  'True
    Begin Menu PopupEnt
      Index = 0
      Caption = "Estimate Entry"
    End
  End
End

Attribute VB_Name = "HallBill"

Private global_148 As Integer
Private global_150 As Integer
Private global_52 As Integer
Private global_168 As Double
Private global_116 As Integer
Private global_136 As Integer

Private Sub TextPer_GotFocus(Index As Integer) 'ED0694
  'Data Table: 59EE5C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED05F6: Set var_88 = Me.TextPer
  loc_ED05FC: Call 0.Method_TextPer_GotFocus0 (Index)
  loc_ED060A: Proc_6_74_E23240(var_8C)
  loc_ED0616: Call Proc_124_87_F294C0(var_8C)
  loc_ED062A: Set var_88 = Me.TextPer
  loc_ED0630: Call 0.Method_TextPer_GotFocus0 (Index, var_8C)
  loc_ED0638: var_8C.SelStart = 0
  loc_ED0651: Set var_88 = Me.TextPer
  loc_ED0657: Call 0.Method_TextPer_GotFocus0 (Index, var_8C)
  loc_ED0672: Set var_90 = Me.TextPer
  loc_ED0678: Call 0.Method_TextPer_GotFocus0 (Index, var_98)
  loc_ED0680: var_98.SelLength = Len(var_8C.Text)
  loc_ED0693: Exit Sub
End Sub

Private Sub TextPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B0F8
  'Data Table: 59EE5C
  loc_E5B0C5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5B0CE:   Proc_6_75_E5335C(Shift)
  loc_E5B0D3: End If
  loc_E5B0E8: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5B0F1:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5B0F6: End If
  loc_E5B0F6: Exit Sub
End Sub

Private Sub TextPer_KeyPress(KeyAscii As Integer) 'E563A0
  'Data Table: 59EE5C
  loc_E56372: Set var_88 = Me.TextPer
  loc_E56378: Call 0.Method_TextPer_KeyPress0 (KeyAscii)
  loc_E56393: Proc_6_42_129B55C(var_8C, arg_10, 2)
  loc_E5639F: Exit Sub
End Sub

Private Sub TextPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E0238C
  'Data Table: 59EE5C
  loc_E02386: Call Proc_124_95_14FC7CC(KeyCode)
  loc_E0238B: Exit Sub
End Sub

Private Sub TextPer_LostFocus(Index As Integer) 'E4ED94
  'Data Table: 59EE5C
  loc_E4ED72: Set var_88 = Me.TextPer
  loc_E4ED78: Call 0.Method_TextPer_LostFocus0 (Index)
  loc_E4ED86: Proc_6_73_E23294(var_8C)
  loc_E4ED92: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '13246B4
  'Data Table: 59EE5C
  Dim var_90 As TextBox
  Dim var_9C As Variant
  Dim var_9E As Integer
  Dim var_8C As DataGrid
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_98 As Fields15
  Dim var_94 As String
  loc_1323F37: Set var_8C = Me.Txt
  loc_1323F3D: Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1323F45: var_90.SelStart = 0
  loc_1323F5E: Set var_8C = Me.Txt
  loc_1323F64: Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1323F6C: var_94 = var_90.Text
  loc_1323F7F: Set var_98 = Me.Txt
  loc_1323F85: Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_1323F8D: var_9C.SelLength = Len(var_94)
  loc_1323FAA: Set var_8C = Me.Txt
  loc_1323FB0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1323FBE: Proc_6_74_E23240(var_90)
  loc_1323FCA: Call Proc_124_87_F294C0(var_90)
  loc_1323FD2: var_9E = Index
  loc_1323FDD: If (var_9E = CInt(0)) Then
  loc_1323FF3:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_132404C:   Set var_8C = Me.Txt
  loc_1324052:   Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94)
  loc_132405A:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1324072:   If (var_9E Or (var_94 = vbNullString)) Then
  loc_1324075:     Exit Sub
  loc_1324076:   End If
  loc_1324083:   Set var_8C = Me.Txt
  loc_1324089:   Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1324091:   var_94 = var_90.Text
  loc_1324099:   var_D8 = CVar(var_94) 'String
  loc_13240DE:   If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_13240E7:     Me.MoveFirst
  loc_132410C:     Set var_8C = Me.Txt
  loc_1324112:     Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_132411A:     0 = var_90.Text
  loc_1324128:     Proc_6_17_EAAE40(var_D8, CVar(var_94))
  loc_132413E:     Me.Find CStr(1 & var_D8), var_FC, 
  loc_1324156:   End If
  loc_1324159: Else
  loc_1324161:   If (var_9E = CInt(3)) Then
  loc_13241B2:     Set var_8C = Me.Txt
  loc_13241B8:     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_13241D8:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_13241DB:       Exit Sub
  loc_13241DC:     End If
  loc_13241E9:     Set var_8C = Me.Txt
  loc_13241EF:     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_13241F7:     var_94 = var_90.Text
  loc_13241FF:     var_D8 = CVar(var_94) 'String
  loc_1324244:     If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_132424D:       Me.MoveFirst
  loc_1324272:       Set var_8C = Me.Txt
  loc_1324278:       Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_1324280:       0 = var_90.Text
  loc_132428E:       Proc_6_17_EAAE40(var_D8, CVar(var_94))
  loc_13242A4:       Me.Find CStr(1 & var_D8), var_FC, 
  loc_13242BC:     End If
  loc_13242BF:   Else
  loc_13242C7:     If (var_9E = CInt(5)) Then
  loc_1324318:       Set var_8C = Me.Txt
  loc_132431E:       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_132433E:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_1324341:         Exit Sub
  loc_1324342:       End If
  loc_132434F:       Set var_8C = Me.Txt
  loc_1324355:       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_132435D:       var_94 = var_90.Text
  loc_1324365:       var_D8 = CVar(var_94) 'String
  loc_13243AA:       If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_13243B3:         Me.MoveFirst
  loc_13243D8:         Set var_8C = Me.Txt
  loc_13243DE:         Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_13243E6:         0 = var_90.Text
  loc_13243F4:         Proc_6_17_EAAE40(var_D8, CVar(var_94))
  loc_132440A:         Me.Find CStr(1 & var_D8), var_FC, 
  loc_1324422:       End If
  loc_1324425:     Else
  loc_132442D:       If (var_9E = CInt(7)) Then
  loc_132444C:         Me.Recordset15.CursorLocation = 3
  loc_1324472:         var_94 = "Select DocId As Code, Convert(varchar(10),VNo) As Name,PartyName as Party,Vdate From HallBook where RestCode ='" & global_56
  loc_1324483:         Me.Open CVar(var_94 & "' and Docid not in (Select BookDocId from HallSale1) Order by VNo"), CVar(MemVar_1F95044), 3
  loc_1324497:         CVarUnk
  loc_132449C:         VerifyVarObj
  loc_13244A2:         Set var_8C = Me.DGBookNo
  loc_13244A8:         LateIdStAd
  loc_1324504:         Set var_8C = Me.Txt
  loc_132450A:         Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1324512:         var_8C = var_90.Text
  loc_132452A:         If (New Or (var_94 = vbNullString)) Then
  loc_132452D:           Exit Sub
  loc_132452E:         End If
  loc_132453B:         Set var_8C = Me.Txt
  loc_1324541:         Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94)
  loc_1324549:         1 = var_90.Text
  loc_1324551:         var_D8 = CVar(var_94) 'String
  loc_1324572:         var_9C = Me.Fields.Item("Name")
  loc_1324596:         If CBool(var_D8 <> var_9C.Value) Then
  loc_132459F:           Me.MoveFirst
  loc_13245C4:           Set var_8C = Me.Txt
  loc_13245CA:           Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_13245D2:           0 = var_90.Text
  loc_13245E0:           Proc_6_17_EAAE40(var_D8, CVar(var_94), 1)
  loc_13245F6:           Me.Find CStr(var_FC & var_D8), -1, 
  loc_132460E:         End If
  loc_1324611:       Else
  loc_1324619:         If Not (var_9E = CInt(&HF)) Then
  loc_1324624:           If Not (var_9E = CInt(&HE)) Then
  loc_132462F:             If (var_9E = CInt(&HD)) Then
  loc_1324632:             End If
  loc_1324632:           End If
  loc_1324641:           Set var_8C = Me.Txt
  loc_1324647:           Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_132464F:           var_90.SelStart = 0
  loc_1324668:           Set var_8C = Me.Txt
  loc_132466E:           Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1324689:           Set var_98 = Me.Txt
  loc_132468F:           Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_1324697:           var_9C.SelLength = Len(var_90.Text)
  loc_13246AA:         End If
  loc_13246AA:       End If
  loc_13246AA:     End If
  loc_13246AA:   End If
  loc_13246AA: End If
  loc_13246AF: Set var_88 = Nothing
  loc_13246B2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1130D14
  'Data Table: 59EE5C
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_11309B6: If (CLng(Shift) = &H1B) Then
  loc_11309B9:   Call Proc_124_87_F294C0()
  loc_11309BE:   Exit Sub
  loc_11309BF: End If
  loc_11309C2: var_86 = KeyCode
  loc_11309CD: If (var_86 = CInt(0)) Then
  loc_11309E8:   Set var_9C = Nothing
  loc_11309F3:   Set var_98 = Nothing
  loc_1130A21:   Proc_6_69_134A630(Me.DGVType, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_1130A38: Else
  loc_1130A40:   If (var_86 = CInt(3)) Then
  loc_1130A5B:     Set var_98 = Nothing
  loc_1130A8D:     Proc_6_79_11AD564(Me.DGParty, Me.Txt, CInt(3), global_68, Shift, &HFF, 1)
  loc_1130AA2:   Else
  loc_1130AAA:     If (var_86 = CInt(5)) Then
  loc_1130AC5:       Set var_9C = Nothing
  loc_1130AFE:       Proc_6_69_134A630(Me.DGHall, Me.Txt, KeyCode, global_72, Shift, 0, 1, Nothing)
  loc_1130B15:     Else
  loc_1130B1D:       If (var_86 = CInt(7)) Then
  loc_1130B38:         Set var_9C = Nothing
  loc_1130B71:         Proc_6_69_134A630(Me.DGBookNo, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_1130B85:       End If
  loc_1130B85:     End If
  loc_1130B85:   End If
  loc_1130B85: End If
  loc_1130BB6: Set var_98 = Me.DGItem
  loc_1130BCD: Set var_9C = Me.DGBookNo
  loc_1130C11: If (((((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGHall.Visible) = 0)) Then
  loc_1130C32:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HC))) Then
  loc_1130C3B:     Proc_6_75_E5335C(Shift, arg_14, var_9C, 0, var_9C)
  loc_1130C40:   End If
  loc_1130C44:   Set var_8C = Me.TopCtrl1
  loc_1130C4A:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_1130C6C:   If ((CStr(var_98) = "Add") And (KeyCode <> CInt(0))) Then
  loc_1130C84:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1130C8D:       Proc_6_76_E533C8(Shift, arg_14, 0)
  loc_1130C92:     End If
  loc_1130C95:   Else
  loc_1130C99:     Set var_8C = Me.TopCtrl1
  loc_1130C9F:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1130CC1:     If ((CStr(var_98) = "Edit") And (KeyCode <> CInt(2))) Then
  loc_1130CD9:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1130CE2:         Proc_6_76_E533C8(Shift)
  loc_1130CE7:       End If
  loc_1130CE7:     End If
  loc_1130CE7:   End If
  loc_1130D05:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HC))) Then
  loc_1130D0B:     Call Proc_124_88_F0CECC(KeyCode)
  loc_1130D10:   End If
  loc_1130D10: End If
  loc_1130D10: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FFB6E8
  'Data Table: 59EE5C
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FFB4EC: On Error Goto loc_FFB6E0
  loc_FFB4F2: Proc_6_58_E06050(arg_10)
  loc_FFB4FA: var_86 = KeyAscii
  loc_FFB505: If (var_86 = CInt(0)) Then
  loc_FFB524:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_FFB53A:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_FFB549:     Set var_B8 = Me.Txt
  loc_FFB554:     var_B0 = "Name"
  loc_FFB56F:     Proc_6_89_1470B00(var_B8, KeyAscii, global_60, arg_10)
  loc_FFB57E:   End If
  loc_FFB581: Else
  loc_FFB589:   If (var_86 = CInt(1)) Then
  loc_FFB596:     Set var_8C = Me.Txt
  loc_FFB59C:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_FFB5B7:     Proc_6_42_129B55C(var_B8, arg_10, 8)
  loc_FFB5C6:   Else
  loc_FFB5CE:     If (var_86 = CInt(7)) Then
  loc_FFB5ED:       If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_FFB61A:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_FFB629:       End If
  loc_FFB62C:     Else
  loc_FFB634:       If (var_86 = CInt(5)) Then
  loc_FFB653:         If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_FFB65A:           Set var_B8 = Me.Txt
  loc_FFB680:           Proc_6_89_1470B00(var_B8, KeyAscii, global_72, arg_10, "Name")
  loc_FFB68F:         End If
  loc_FFB692:       Else
  loc_FFB69A:         If Not (var_86 = CInt(&HF)) Then
  loc_FFB6A5:           If (var_86 = CInt(&HE)) Then
  loc_FFB6A8:           End If
  loc_FFB6B2:           Set var_8C = Me.Txt
  loc_FFB6B8:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0, 0)
  loc_FFB6D3:           Proc_6_42_129B55C(var_B8, arg_10, 8, 2)
  loc_FFB6DF:         End If
  loc_FFB6DF:       End If
  loc_FFB6DF:     End If
  loc_FFB6DF:   End If
  loc_FFB6DF: End If
  loc_FFB6DF: Exit Sub
  loc_FFB6E0: ' Referenced from: FFB4EC
  loc_FFB6E0: Proc_6_60_E63754(0, 0)
  loc_FFB6E5: Exit Sub
  loc_FFB6E6: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '102A0FC
  'Data Table: 59EE5C
  Dim var_86 As Integer
  Dim var_98 As TextBox
  Dim var_12C As Double
  Dim var_AC As TextBox
  Dim var_134 As Double
  Dim var_B8 As TextBox
  Dim var_13C As Double
  Dim var_C4 As TextBox
  Dim var_144 As Double
  Dim var_E8 As Variant
  Dim var_120 As TextBox
  Dim var_8C As DataGrid
  loc_1029EFF: var_86 = KeyCode
  loc_1029F0A: If Not (var_86 = CInt(&HF)) Then
  loc_1029F15:   If (var_86 = CInt(&HE)) Then
  loc_1029F18:   End If
  loc_1029F1F:   Set var_8C = Me.TxtGt
  loc_1029F25:   Call 0.Method_Txt_KeyUp8 (var_8E)
  loc_1029F37:   Set var_94 = Me.TxtGt
  loc_1029F3D:   Call 0.Method_Txt_KeyUp0 (var_8E, var_98)
  loc_1029F52:   var_12C = Val(var_98.Text)
  loc_1029F5C:   Set var_A0 = Me.TextGt
  loc_1029F62:   Call 0.Method_Txt_KeyUp8 (var_A2, var_12C)
  loc_1029F74:   Set var_A8 = Me.TextGt
  loc_1029F7A:   Call 0.Method_Txt_KeyUp0 (var_A2, var_AC)
  loc_1029F8F:   var_134 = Val(var_AC.Text)
  loc_1029FA0:   Set var_B4 = Me.Txt
  loc_1029FA6:   Call 0.Method_Txt_KeyUp0 (CInt(&HF), var_B8, var_BC)
  loc_1029FBB:   var_13C = Val(var_BC)
  loc_1029FCC:   Set var_C0 = Me.Txt
  loc_1029FD2:   Call 0.Method_Txt_KeyUp0 (CInt(8), var_C4, var_C8)
  loc_1029FE7:   var_144 = Val(var_C8)
  loc_102A00E:   var_E8 = CVar((((var_12C + var_B8.Text) - var_C4.Text) - var_144)) 'Double
  loc_102A02C:   Set var_11C = Me.Txt
  loc_102A032:   Call 0.Method_Txt_KeyUp0 (CInt(&HD), var_120, CStr(Format(var_E8, "0.00")), 1)
  loc_102A03A:   var_120.Text = 1
  loc_102A073: Else
  loc_102A07B:   If Not (var_86 = CInt(&H12)) Then
  loc_102A086:     If (var_86 = CInt(&H11)) Then
  loc_102A089:     End If
  loc_102A08E:     Call Proc_124_95_14FC7CC(&H32, var_144)
  loc_102A096:   Else
  loc_102A09E:     If (var_86 = CInt(3)) Then
  loc_102A0BD:       If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_102A0CA:         var_9C = "Name"
  loc_102A0E9:         Proc_6_80_FF1F20(Me.Txt, CInt(3), global_68)
  loc_102A0F8:       End If
  loc_102A0F8:     End If
  loc_102A0F8:   End If
  loc_102A0F8: End If
  loc_102A0F8: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4CC44
  'Data Table: 59EE5C
  loc_E4CC22: Set var_88 = Me.Txt
  loc_E4CC28: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4CC36: Proc_6_73_E23294(var_8C)
  loc_E4CC42: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '19195DC
  'Data Table: 59EE5C
  Dim var_9C As Integer
  Dim var_A4 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_C4 As Variant
  Dim var_A0 As Variant
  Dim var_AC As String
  Dim var_C8 As Variant
  Dim var_140 As String
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_16C As TextBox
  Dim var_190 As Variant
  Dim var_198 As TextBox
  Dim var_1BC As Variant
  Dim var_E8 As Variant
  Dim var_13C As String
  Dim unk_59EE7B As Connection15
  Dim var_A8 As Variant
  Dim var_168 As Variant
  Dim var_108 As Variant
  Dim var_D8 As Variant
  Dim var_92 As Integer
  Dim var_98 As Recordset15
  Dim var_8C As Recordset15
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_144 As String
  Dim var_138 As Variant
  Dim var_224 As TextBox
  Dim Txt_Validate2 As Variant
  Dim var_22C As Double
  Dim var_244 As Double
  Dim var_24C As Double
  Dim var_234 As TextBox
  Dim var_254 As Double
  Dim var_170 As String
  Dim var_23C As TextBox
  loc_1916AA8: On Error Goto loc_19195D4
  loc_1916AAE: var_9C = Cancel
  loc_1916AB9: If (var_9C = CInt(0)) Then
  loc_1916AC7:   Set var_A0 = Me.Txt
  loc_1916ACD:   Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_1916AD5:   var_AC = "Voucher Type"
  loc_1916AF6:   If (Proc_6_27_EA61EC(var_A4, var_AC) = 0) Then
  loc_1916B04:     Set var_A0 = Me.Txt
  loc_1916B0A:     Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_1916B12:     var_A4.SetFocus
  loc_1916B20:     arg_10 = &HFF
  loc_1916B23:     Exit Sub
  loc_1916B24:   End If
  loc_1916B72:   Set var_A0 = Me.Txt
  loc_1916B78:   Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_AC)
  loc_1916B80:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A4.Text
  loc_1916B98:   If (arg_10 Or (var_AC = vbNullString)) Then
  loc_1916BA8:     Set var_A0 = Me.Txt
  loc_1916BAE:     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1916BB6:     var_A4.Text = vbNullString
  loc_1916BCF:     Set var_A0 = Me.Txt
  loc_1916BD5:     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1916BDD:     var_A4.Tag = vbNullString
  loc_1916BEF:     global_120 = vbNullString
  loc_1916BF6:   Else
  loc_1916C31:     Set var_A8 = Me.Txt
  loc_1916C37:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_1916C3F:     var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1916C90:     Set var_A8 = Me.Txt
  loc_1916C96:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_1916C9E:     var_C8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1916CD1:     var_A4 = Me.Fields.Item("NCat")
  loc_1916CE8:     global_120 = CStr(var_A4.Value)
  loc_1916CF9:   End If
  loc_1916CFD:   Set var_A0 = Me.TopCtrl1
  loc_1916D03:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_1916D0B:   var_AC = CStr()
  loc_1916D1C:   If (var_AC = "Add") Then
  loc_1916D25:     Call Proc_124_90_11C0734(MemVar_1F95044)
  loc_1916D38:     Set var_A0 = Me.Txt
  loc_1916D3E:     Call 0.Method_Txt_Validate0 (CInt(4), var_A4)
  loc_1916D46:     var_A4.Text = var_AC
  loc_1916D55:   End If
  loc_1916D59:   Set var_A0 = Me.TopCtrl1
  loc_1916D5F:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC)
  loc_1916D78:   If (CStr() = "Add") Then
  loc_1916D86:     If (global_156 = "Automatic") Then
  loc_1916D96:       Set var_A0 = Me.Txt
  loc_1916D9C:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_1916DA4:       var_A4.Enabled = False
  loc_1916DB3:     Else
  loc_1916DC0:       Set var_A0 = Me.Txt
  loc_1916DC6:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_1916DCE:       var_A4.Enabled = True
  loc_1916DE5:       Set var_A0 = Me.Txt
  loc_1916DEB:       Call 0.Method_Txt_Validate0 (CInt(1))
  loc_1916DF3:       var_A4.SetFocus
  loc_1916DFF:     End If
  loc_1916DFF:   End If
  loc_1916E02: Else
  loc_1916E0A:   If (var_9C = CInt(1)) Then
  loc_1916E18:     Set var_A0 = Me.Txt
  loc_1916E1E:     Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_1916E26:     var_AC = "Vr. No"
  loc_1916E47:     If (Proc_6_27_EA61EC(var_A4, var_AC) = 0) Then
  loc_1916E55:       Set var_A0 = Me.Txt
  loc_1916E5B:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_1916E63:       var_A4.SetFocus
  loc_1916E71:       arg_10 = &HFF
  loc_1916E74:       Exit Sub
  loc_1916E75:     End If
  loc_1916E83:     Set var_A0 = Me.Txt
  loc_1916E89:     Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_AC)
  loc_1916E91:     arg_10 = var_A4.Text
  loc_1916EA9:     If (CDbl(var_AC) = CDbl(0)) Then
  loc_1916EC5:       MsgBox("Vr. No Can Not Be 0", 0, var_F8, var_118, var_138)
  loc_1916EDF:       Set var_A0 = Me.Txt
  loc_1916EE5:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1916EED:       var_A4.SetFocus
  loc_1916EFB:       arg_10 = &HFF
  loc_1916EFE:       Exit Sub
  loc_1916EFF:     End If
  loc_1916F03:     Set var_A0 = Me.TopCtrl1
  loc_1916F09:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_1916F22:     If (CStr(var_A4) = "Add") Then
  loc_1916F4A:       Set var_A0 = Me.Txt
  loc_1916F50:       Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_1916F77:       Set var_A8 = Me.Txt
  loc_1916F7D:       Call 0.Method_Txt_Validate0 (CInt(0), var_C8, var_144)
  loc_1916F85:       5 = var_C8.Tag
  loc_1916F92:       var_D8 = Space((CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_A4.Tag) - Len(var_144)))
  loc_1916F9A:       var_118 = ( + "Vr. No Can Not Be 0")
  loc_1916FAE:       var_138 = Space((5 - Len(global_112)))
  loc_1916FB6:       var_154 = (var_118 + var_138)
  loc_1916FC3:       var_164 = (var_154 + CVar(global_112))
  loc_1916FDA:       Set var_168 = Me.Txt
  loc_1916FE0:       Call 0.Method_Txt_Validate0 (CInt(1), var_16C, var_170)
  loc_1916FE8:       8 = var_16C.Text
  loc_1916FF5:       var_180 = Space((var_164 - Len(var_170)))
  loc_1916FFD:       var_190 = ( + var_180)
  loc_191700F:       Set var_194 = Me.Txt
  loc_1917015:       Call 0.Method_Txt_Validate0 (CInt(1), var_198)
  loc_1917028:       var_1BC = (var_190 + CVar(var_198.Text))
  loc_1917081:       Set var_A0 = Me.Txt
  loc_1917087:       Call 0.Method_Txt_Validate0 (CInt(4), var_A4)
  loc_191708F:       var_A4.Text = CStr(var_1BC)
  loc_19170AB:       Me.LblVPrefix.Caption = global_112
  loc_19170B3:     End If
  loc_19170B7:     Set var_A0 = Me.TopCtrl1
  loc_19170BD:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_19170C5:     var_AC = CStr()
  loc_19170D6:     If (var_AC = "Add") Then
  loc_1917106:       Set var_A0 = Me.Txt
  loc_191710C:       Call 0.Method_Txt_Validate0 (CInt(4), var_A4, var_AC, "Select Count(*) From HallSale1 Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_191711D:       var_13C = var_C8 & var_AC
  loc_191712D:       unk_59EE7B.Execute var_13C & "'", 0, var_168
  loc_191713D:        = var_C8.Item()
  loc_1917145:        = var_168.Value
  loc_1917172:       If (var_A4.Text.Fields > 0) Then
  loc_191717B:         Call 0.Method_arg_50 (var_AC)
  loc_191719C:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_AC), var_118, var_138)
  loc_19171B2:         Call Proc_124_90_11C0734(MemVar_1F95044)
  loc_19171C2:         If (var_AC = vbNullString) Then
  loc_19171CF:           Set var_A0 = Me.Txt
  loc_19171D5:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_19171DD:           var_A4.SetFocus
  loc_19171EB:           arg_10 = &HFF
  loc_19171EE:           Exit Sub
  loc_19171EF:         End If
  loc_19171F5:         Call Proc_124_90_11C0734(MemVar_1F95044, var_AC)
  loc_1917208:         Set var_A0 = Me.Txt
  loc_191720E:         Call 0.Method_Txt_Validate0 (CInt(4), var_A4, var_AC)
  loc_1917216:         var_A4.Text = arg_10
  loc_1917227:         arg_10 = &HFF
  loc_191722A:         Exit Sub
  loc_191722B:       End If
  loc_191722B:     End If
  loc_191722E:   Else
  loc_1917236:     If (var_9C = CInt(2)) Then
  loc_1917247:       Set var_A0 = Me.Txt
  loc_191724D:       Call 0.Method_Txt_Validate0 (CInt(2), var_A4, var_AC)
  loc_1917255:       arg_10 = var_A4.Text
  loc_191726B:       var_118 = Len(Trim(CVar(var_AC)))
  loc_1917285:       If (var_118 = 0) Then
  loc_191729B:         Set var_A0 = Me.Txt
  loc_19172A1:         Call 0.Method_Txt_Validate0 (CInt(2), var_A4)
  loc_19172A9:         var_A4.Text = CStr(MemVar_1F950EC)
  loc_19172BB:       Else
  loc_19172C5:         Set var_A0 = Me.Txt
  loc_19172CB:         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_19172EB:         Set var_C8 = Me.Txt
  loc_19172F1:         Call 0.Method_Txt_Validate0 (Cancel, var_168)
  loc_19172F9:         var_168.Text = Proc_6_33_15125B8(var_A4)
  loc_191730C:       End If
  loc_1917319:       Set var_A0 = Me.Txt
  loc_191731F:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1917327:       var_AC = var_A4.Text
  loc_1917342:       Set var_A8 = Me.Txt
  loc_1917348:       Call 0.Method_Txt_Validate0 (Cancel, var_C8, var_13C)
  loc_1917350:       (CDate(var_AC) >= MemVar_1F950F4) = var_C8.Text
  loc_1917372:       If Not((var_AC And (CDate(var_13C) <= MemVar_1F950FC))) Then
  loc_1917380:         var_F8 = "Date Validate"
  loc_191738B:         var_C4 = "V.Date Not Between Current Fin. Year"
  loc_1917396:         MsgBox(var_C4, 0, var_F8, var_118, var_138)
  loc_19173B0:         Set var_A0 = Me.Txt
  loc_19173B6:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_19173BE:         var_A4.SetFocus
  loc_19173CC:         arg_10 = &HFF
  loc_19173CF:         Exit Sub
  loc_19173D0:       End If
  loc_19173D4:       Set var_A0 = Me.TopCtrl1
  loc_19173DA:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_19173E2:       var_AC = CStr(var_A4)
  loc_19173F8:       Set var_A4 = Me.Txt
  loc_19173FE:       Call 0.Method_Txt_Validate0 (CInt(1), var_A8)
  loc_1917427:       If ((var_AC = "Add") And (var_A8.Text = vbNullString)) Then
  loc_1917430:         Call Proc_124_90_11C0734(MemVar_1F95044)
  loc_1917443:         Set var_A0 = Me.Txt
  loc_1917449:         Call 0.Method_Txt_Validate0 (CInt(4), var_A4)
  loc_1917451:         var_A4.Text = var_AC
  loc_1917460:       End If
  loc_1917463:     Else
  loc_191746B:       If (var_9C = CInt(3)) Then
  loc_1917485:         If (Me.RecordCount <= 0) Then
  loc_1917488:           GoTo loc_1917604
  loc_191748B:         End If
  loc_1917491:         Me.MoveFirst
  loc_19174A3:         Set var_A0 = Me.Txt
  loc_19174A9:         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_19174B1:         var_AC = var_A4.Text
  loc_19174C8:         If (var_AC <> vbNullString) Then
  loc_19174EA:           Set var_A0 = Me.Txt
  loc_19174F0:           Call 0.Method_Txt_Validate0 (CInt(3), var_A4, var_AC, "Name like '")
  loc_19174F8:           0 = var_A4.Text
  loc_1917511:           Me.Find 1 & var_AC & "*'", var_C4, var_AC
  loc_1917529:         Else
  loc_191752C:         Else
  loc_1917543:           If (Me.AbsolutePosition > 0) Then
  loc_1917581:             Set var_A8 = Me.Txt
  loc_1917587:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_191758F:             var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_19175C2:             var_A4 = Me.Fields.Item("Code")
  loc_19175E0:             Set var_A8 = Me.Txt
  loc_19175E6:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_19175EE:             var_C8.Tag = CStr(var_A4.Value)
  loc_1917604:           End If
  loc_1917604:           ' Referenced from:       1917488
  loc_1917604:         End If
  loc_1917607:       Else
  loc_191760F:         If (var_9C = CInt(7)) Then
  loc_1917632:           var_B2 = Me.EOF
  loc_1917660:           Set var_A0 = Me.Txt
  loc_1917666:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1917686:           If (((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) Or (var_A4.Text = vbNullString)) Then
  loc_1917696:             Set var_A0 = Me.Txt
  loc_191769C:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_19176A4:             var_A4.Text = vbNullString
  loc_19176BD:             Set var_A0 = Me.Txt
  loc_19176C3:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_19176CB:             var_A4.Tag = vbNullString
  loc_19176DA:           Else
  loc_1917715:             Set var_A8 = Me.Txt
  loc_191771B:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_1917774:             Set var_A8 = Me.Txt
  loc_191777A:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_1917782:             var_C8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_19177D3:             Set var_A8 = Me.Txt
  loc_19177D9:             Call 0.Method_Txt_Validate0 (CInt(2), var_C8)
  loc_1917803:             If (Me.Fields.Item("VDate").Value > CDate(CDate(CStr(Me.Fields.Item("Name").Value)))) Then
  loc_191781F:               MsgBox("Bill Date can't be before Booking Date", 0, var_F8, var_118, var_138)
  loc_1917831:               arg_10 = &HFF
  loc_1917834:               Exit Sub
  loc_1917835:             End If
  loc_1917835:           End If
  loc_1917835:           Call Proc_124_85_10378B8(arg_10)
  loc_191783E:           Set var_A0 = Me.TopCtrl1
  loc_1917844:           Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_191784C:           var_AC = CStr()
  loc_1917862:           Set var_A4 = Me.Txt
  loc_1917868:           Call 0.Method_Txt_Validate0 (CInt(1), var_A8)
  loc_1917891:           If ((var_AC = "Add") And (var_A8.Text = vbNullString)) Then
  loc_191789A:             Call Proc_124_90_11C0734(MemVar_1F95044)
  loc_19178AD:             Set var_A0 = Me.Txt
  loc_19178B3:             Call 0.Method_Txt_Validate0 (CInt(4), var_A4)
  loc_19178BB:             var_A4.Text = var_AC
  loc_19178CA:           End If
  loc_19178D9:           Me.FGrid.Redraw = False
  loc_19178EE:           Set var_A0 = Me.FGrid
  loc_19178F4:           var_A0.Rows = 1
  loc_19178FE:           var_92 = 1
  loc_1917905:           Set var_98 = New 
  loc_1917910:           Me.var_A0.CursorLocation = 3
  loc_1917923:           Set var_A0 = Me.Txt
  loc_1917929:           Call 0.Method_Txt_Validate0 (CInt(7), var_A4, var_AC)
  loc_1917931:           var_92 = var_A4.Tag
  loc_1917954:           var_13C = "Select H.*,H1.QTYISS,H1.ITEM,H1.REMARKS,H1.AMOUNT AS AMOUNT1,H1.Rate as Rate1,H1.TaxAmt as Tax1,H1.Total as Total1,I.NAME AS ITEMNAME,I.RateEdit,IR.Rate as IRate,H1.TaxPer,IC.TAXSTRU,H.advance AS Advance,H.RECTNO,H.RECTDATE From (((HallBook H  LEFT JOIN HallBook1 H1 on H.DocId=H1.DocId)LEFT JOIN ITEMMAST I ON H1.ITEM=I.CODE And H1.RoomNo = I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=H1.RoomNo and IR.ItemCode=H1.Item WHERE H.DOCID='" & var_AC
  loc_1917962:           var_98.Open CVar(var_13C & "' and H1.Rate<>0 Order by H1.DOCID,H1.SNo"), CVar(MemVar_1F95044), 3
  loc_191798C:           If (var_98.RecordCount > 0) Then
  loc_191799C:             var_E8 = "SELECT Sum(AmtCr-AmtDr) AS Advance FROM PayChargeH WHERE VType In ('AD','AR') AND ContraDocId='"
  loc_19179E2:             unk_59EE7B.Execute CStr(CDate(CDate(CStr(Me.Fields.Item("Name").Value))) & var_98.Fields.Item("DocID").Value & "'"), var_138, -1
  loc_19179ED:             Set var_8C = var_A8
  loc_1917A4D:             If ((var_8C.RecordCount > 0) And (IsNull(CVar(var_8C.Fields.Item("Advance"))) = 0)) Then
  loc_1917A6A:               var_A4 = var_8C.Fields.Item("Advance")
  loc_1917A7B:               var_AC = CStr(var_A4.Value)
  loc_1917A8F:               Call 0.Method_Txt_Validate0 (CInt(8), var_C8, var_AC, Me.Txt)
  loc_1917A97:               var_C8.Text = 1
  loc_1917AB0:             Else
  loc_1917ABE:               Set var_A0 = Me.Txt
  loc_1917AC4:               Call 0.Method_Txt_Validate0 (CInt(8), var_A4, "0.00")
  loc_1917ACC:               var_A4.Text = -1
  loc_1917AD8:             End If
  loc_1917AE4:             Set var_A0 = Me.TxtGt
  loc_1917AEA:             Call 0.Method_Txt_Validate8 (var_B2, var_94)
  loc_1917AF5:             For var_1C4 = var_AC To var_B2:         1 = var_1C4 'Integer
  loc_1917B08:               Set var_A0 = Me.LblCap
  loc_1917B0E:               Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1917B2D:               If (var_A4.Tag = "STOT") Then
  loc_1917B4A:                 var_A4 = var_98.Fields.Item("Total")
  loc_1917B68:                 Set var_A8 = Me.TxtGt
  loc_1917B6E:                 Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1917B76:                 var_C8.Text = CStr(var_A4.Value)
  loc_1917B8F:               Else
  loc_1917B9C:                 Set var_A0 = Me.LblCap
  loc_1917BA2:                 Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1917BC1:                 If (var_A4.Tag = "HLR") Then
  loc_1917BDE:                   var_A4 = var_98.Fields.Item("HallRent")
  loc_1917BFC:                   Set var_A8 = Me.TxtGt
  loc_1917C02:                   Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1917C0A:                   var_C8.Text = CStr(var_A4.Value)
  loc_1917C23:                 Else
  loc_1917C30:                   Set var_A0 = Me.LblCap
  loc_1917C36:                   Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1917C55:                   If (var_A4.Tag = "HLP") Then
  loc_1917C72:                     var_A4 = var_98.Fields.Item("TotalPerCover")
  loc_1917C90:                     Set var_A8 = Me.TxtGt
  loc_1917C96:                     Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1917C9E:                     var_C8.Text = CStr(var_A4.Value)
  loc_1917CB7:                   Else
  loc_1917CC4:                     Set var_A0 = Me.LblCap
  loc_1917CCA:                     Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1917CE9:                     If (var_A4.Tag = "SDIS") Then
  loc_1917D24:                       Set var_A8 = Me.TxtPer
  loc_1917D2A:                       Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1917D32:                       var_C8.Text = CStr(var_98.Fields.Item("DiscPer").Value)
  loc_1917D62:                       var_A4 = var_98.Fields.Item("DiscAmt")
  loc_1917D80:                       Set var_A8 = Me.TxtGt
  loc_1917D86:                       Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1917D8E:                       var_C8.Text = CStr(var_A4.Value)
  loc_1917DA7:                     Else
  loc_1917DB4:                       Set var_A0 = Me.LblCap
  loc_1917DBA:                       Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1917DD9:                       If (var_A4.Tag = "SST") Then
  loc_1917DF6:                         var_A4 = var_98.Fields.Item("Tax")
  loc_1917E14:                         Set var_A8 = Me.TxtGt
  loc_1917E1A:                         Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1917E22:                         var_C8.Text = CStr(var_A4.Value)
  loc_1917E3B:                       Else
  loc_1917E48:                         Set var_A0 = Me.LblCap
  loc_1917E4E:                         Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1917E6D:                         If (var_A4.Tag = "SSTX") Then
  loc_1917E70:                           GoTo loc_1918154
  loc_1917E73:                         End If
  loc_1917E80:                         Set var_A0 = Me.LblCap
  loc_1917E86:                         Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1917EA5:                         If (var_A4.Tag = "SSCH") Then
  loc_1917EC2:                           var_A4 = var_98.Fields.Item("Servicecharge")
  loc_1917EE0:                           Set var_A8 = Me.TxtGt
  loc_1917EE6:                           Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1917EEE:                           var_C8.Text = CStr(var_A4.Value)
  loc_1917F07:                         Else
  loc_1917F14:                           Set var_A0 = Me.LblCap
  loc_1917F1A:                           Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1917F39:                           If (var_A4.Tag = "SADD") Then
  loc_1917F56:                             var_A4 = var_98.Fields.Item("AddAmt")
  loc_1917F74:                             Set var_A8 = Me.TxtGt
  loc_1917F7A:                             Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1917F82:                             var_C8.Text = CStr(var_A4.Value)
  loc_1917F9B:                           Else
  loc_1917FA8:                             Set var_A0 = Me.LblCap
  loc_1917FAE:                             Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1917FCD:                             If (var_A4.Tag = "SDED") Then
  loc_1917FEA:                               var_A4 = var_98.Fields.Item("DedAmt")
  loc_1918008:                               Set var_A8 = Me.TxtGt
  loc_191800E:                               Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1918016:                               var_C8.Text = CStr(var_A4.Value)
  loc_191802F:                             Else
  loc_191803C:                               Set var_A0 = Me.LblCap
  loc_1918042:                               Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1918061:                               If (var_A4.Tag = "SROFF") Then
  loc_191807E:                                 var_A4 = var_98.Fields.Item("RoundOff")
  loc_191809C:                                 Set var_A8 = Me.TxtGt
  loc_19180A2:                                 Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_19180AA:                                 var_C8.Text = CStr(var_A4.Value)
  loc_19180C3:                               Else
  loc_19180D0:                                 Set var_A0 = Me.LblCap
  loc_19180D6:                                 Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_19180F5:                                 If (var_A4.Tag = "SNET") Then
  loc_1918123:                                   var_AC = CStr(var_98.Fields.Item("NetAmt").Value)
  loc_1918130:                                   Set var_A8 = Me.TxtGt
  loc_1918136:                                   Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_191813E:                                   var_C8.Text = var_AC
  loc_1918154:                                 End If
  loc_1918154:                               End If
  loc_1918154:                             End If
  loc_1918154:                           End If
  loc_1918154:                           ' Referenced from:                   1917E70
  loc_1918154:                         End If
  loc_1918154:                       End If
  loc_1918154:                     End If
  loc_1918154:                   End If
  loc_1918154:                 End If
  loc_1918154:               End If
  loc_1918157:             Next var_1C4 'Integer
  loc_191815C:             ' Referenced from:         1918601
  loc_191816B:             If Not(var_98.EOF) Then
  loc_1918196:               For var_1C8 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):         var_9A = var_1C8 'Byte
  loc_19181A9:                 var_108 = CVar(CLng(&H14)) 'Long
  loc_19181D4:                 Set var_A4 = Me.Txt
  loc_19181DA:                 Call 0.Method_Txt_Validate0 (CInt(1), var_A8, var_AC, CStr(Me.FGrid.TextMatrix)))
  loc_19181E2:                 var_108 = var_A8.Text
  loc_1918265:                 If ((CVar(CLng(var_9A)) = var_AC) And (CVar(CLng(var_9A)) = Proc_6_38_E69628(CVar(var_98.Fields.Item("Item")), CStr(Me.FGrid.TextMatrix)), CVar(CLng(9))))) Then
  loc_1918268:                   GoTo loc_19185F9
  loc_191826B:                 End If
  loc_191826E:               Next var_1C8 'Byte
  loc_1918274:               var_C4 = vbNullString
  loc_191827E:               Set var_A0 = Me.FGrid
  loc_1918293:               Set var_21C = Me.FGrid
  loc_191829A:               var_C4 = CVar(CLng(var_92)) 'Long
  loc_19182A2:               var_108 = CVar(CLng(0)) 'Long
  loc_19182AC:               var_D8 = CVar(CStr(var_92)) 'String
  loc_19182B3:               LateIdCallSt
  loc_19182F7:               var_F8 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Item")), CVar(CLng(9)), CVar(CLng(var_92)), var_21C, CVar(var_98.Fields.Item("Item")))) 'String
  loc_19182FE:               LateIdCallSt
  loc_1918349:               var_F8 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_92)), var_21C, var_F8)) 'String
  loc_1918350:               LateIdCallSt
  loc_1918382:               var_108 = CVar(CLng(var_92)) 'Long
  loc_191838A:               var_1D8 = CVar(CLng(3)) 'Long
  loc_19183B7:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_19183BE:               LateIdCallSt
  loc_19183F4:               var_108 = CVar(CLng(var_92)) 'Long
  loc_19183FC:               var_1D8 = CVar(CLng(4)) 'Long
  loc_1918429:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("Rate1")), "0.00"))) 'String
  loc_1918430:               LateIdCallSt
  loc_1918466:               var_108 = CVar(CLng(var_92)) 'Long
  loc_191846E:               var_1D8 = CVar(CLng(5)) 'Long
  loc_191849B:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("Amount1")), "0.00"))) 'String
  loc_19184A2:               LateIdCallSt
  loc_19184D8:               var_108 = CVar(CLng(var_92)) 'Long
  loc_19184E0:               var_1D8 = CVar(CLng(8)) 'Long
  loc_191850D:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("TOTAL1")), "0.00"))) 'String
  loc_1918514:               LateIdCallSt
  loc_1918541:               var_A4 = var_98.Fields.Item("TaxStru")
  loc_191854A:               var_108 = CVar(CLng(var_92)) 'Long
  loc_1918552:               var_1D8 = CVar(CLng(&H10)) 'Long
  loc_1918586:               LateIdCallSt
  loc_19185A8:               var_108 = CVar(CLng(&H14)) 'Long
  loc_19185BB:               Set var_A0 = Me.Txt
  loc_19185C1:               Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_AC, var_108, CVar(CLng(var_92)), var_21C, CVar(CStr(Format(CVar(var_A4), "0.00"))))
  loc_19185C9:               1 = var_A4.Text
  loc_19185D1:               var_D8 = CVar(var_AC) 'String
  loc_19185D8:               LateIdCallSt
  loc_19185EC:               Set var_21C = Nothing 
  loc_19185F6:               var_92 = (var_92 + 1)
  loc_19185F9:               ' Referenced from:         1918268
  loc_19185FC:               var_98.MoveNext
  loc_1918601:               GoTo loc_191815C
  loc_1918604:             End If
  loc_1918617:             Me.FGrid.FixedRows = 1
  loc_1918622:           Else
  loc_1918630:             Me.FGrid.Redraw = True
  loc_191863E:             If (var_92 = 1) Then
  loc_1918654:               Me.FGrid.Rows = 1
  loc_1918660:               Set var_A8 = Me.FGrid
  loc_191867A:               var_D8 = CVar(CStr(Proc_6_127_F25B10(var_A8, CInt(0), var_92, var_21C, var_D8, 1))) 'String
  loc_1918682:               Set var_A4 = Me.FGrid
  loc_19186AF:               Me.FGrid.FixedRows = 1
  loc_19186B7:             End If
  loc_19186B7:           End If
  loc_19186D5:           Set var_A0 = Me.Txt
  loc_19186DB:           Call 0.Method_Txt_Validate0 (CInt(7), var_A4, var_AC, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='", var_D8, -1, var_A8)
  loc_19186E3:           FGrid.DispID_10000 = var_A4.Tag
  loc_19186FC:           unk_59EE7B.Execute var_D8 & var_AC & "'", var_1D8, var_108
  loc_1918707:           Set var_98 = var_A8
  loc_191871F:           ' Referenced from:         1918BFB
  loc_191872E:           If Not(var_98.EOF) Then
  loc_191874A:             var_C4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_1918759:             Me.FGrid1.Row = 1
  loc_1918790:             For var_220 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)):         var_9A = var_220 'Byte
  loc_191879B:               var_C4 = CVar(CLng(var_9A)) 'Long
  loc_19187CF:               Set var_A4 = Me.Txt
  loc_19187D5:               Call 0.Method_Txt_Validate0 (CInt(1), var_A8, var_AC, CStr(Me.FGrid1.TextMatrix)), 7)
  loc_19187DD:               var_C4 = var_A8.Text
  loc_19187FE:               Set var_C8 = Me.FGrid1
  loc_1918829:               var_16C = var_98.Fields.Item("VenueName")
  loc_191883A:               var_144 = Proc_6_38_E69628(CVar(var_16C), CStr(var_C8.TextMatrix)), 1, CVar(CLng(var_9A)))
  loc_1918861:               If (var_21C And ((CByte(1) = var_AC) = var_144)) Then
  loc_1918864:                 GoTo loc_1918BF3
  loc_1918867:               End If
  loc_191886A:             Next var_220 'Byte
  loc_1918874:             Set var_224 = Me.FGrid1
  loc_191888A:             var_1D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_191888F:             var_1F8 = 0
  loc_19188B1:             var_C4 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_19188B6:             var_108 = 0
  loc_19188D4:             var_AC = CStr(Me.FGrid1.TextMatrix))
  loc_19188E2:             var_138 = CVar(CStr((Val(var_AC) + CDbl(1)))) 'String
  loc_19188E9:             LateIdCallSt
  loc_1918951:             var_118 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("VenueName")), 1, CVar(CLng(Me.FGrid1.Row)), var_224, CVar(CStr(Format(CVar(var_98.Fields.Item("VenueName")), "0.00"))))) 'String
  loc_1918958:             LateIdCallSt
  loc_19189B9:             var_118 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_19189C0:             LateIdCallSt
  loc_1918A21:             var_118 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_1918A28:             LateIdCallSt
  loc_1918A89:             var_118 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_1918A90:             LateIdCallSt
  loc_1918AF1:             var_118 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_1918AF8:             LateIdCallSt
  loc_1918B48:             var_A4 = var_98.Fields.Item("VenuCode")
  loc_1918B59:             var_118 = CVar(Proc_6_38_E69628(CVar(var_A4), 6, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_1918B60:             LateIdCallSt
  loc_1918B7C:             Set var_A8 = Me.FGrid1
  loc_1918BA7:             Set var_A0 = Me.Txt
  loc_1918BAD:             Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_AC, 7, CVar(CLng(var_A8.Row)), var_224)
  loc_1918BB5:             var_118 = var_A4.Text
  loc_1918BBD:             var_F8 = CVar(var_AC) 'String
  loc_1918BC4:             LateIdCallSt
  loc_1918BDC:             var_C4 = vbNullString
  loc_1918BE5:             Txt_Validate2 = var_224.Name
  loc_1918BEF:             Set var_224 = Nothing 
  loc_1918BF3:             ' Referenced from:         1918864
  loc_1918BF6:             var_98.MoveNext
  loc_1918BFB:             GoTo loc_191871F
  loc_1918BFE:           End If
  loc_1918C02:           Set var_98 = New 
  loc_1918C0D:           var_98.CursorLocation = 3
  loc_1918C20:           Set var_A0 = Me.Txt
  loc_1918C26:           Call 0.Method_Txt_Validate0 (CInt(7), var_A4, var_AC, Txt_Validate2, var_C4, var_224)
  loc_1918C2E:           var_F8 = var_A4.Tag
  loc_1918C5F:           var_98.Open CVar("Select * From HallBook H  WHERE H.DOCID='" & var_AC & "'"), CVar(MemVar_1F95044), 3
  loc_1918C89:           If (var_98.RecordCount > 0) Then
  loc_1918C99:             var_E8 = "SELECT Sum(AmtCr-AmtDr) AS Advance FROM PayChargeH WHERE VType In ('AD','AR') AND ContraDocId='"
  loc_1918CC8:             var_F8 = CVar(CLng(Me.FGrid1.Row)) & var_98.Fields.Item("DocID").Value 
  loc_1918CCC:             var_108 = "'"
  loc_1918CDF:             unk_59EE7B.Execute CStr(var_F8 & var_108), CVar(CStr(Format(CVar(var_98.Fields.Item("DocID")), "0.00"))), -1
  loc_1918CEA:             Set var_8C = var_A8
  loc_1918D4A:             If ((var_8C.RecordCount > 0) And (IsNull(CVar(var_8C.Fields.Item("Advance"))) = 0)) Then
  loc_1918D53:               var_C4 = "Advance"
  loc_1918D67:               var_A4 = var_8C.Fields.Item(var_C4)
  loc_1918D8C:               Call 0.Method_Txt_Validate0 (CInt(8), var_C8, CStr(var_A4.Value), Me.Txt, 1)
  loc_1918D94:               var_C8.Text = -1
  loc_1918DAD:             Else
  loc_1918DBB:               Set var_A0 = Me.Txt
  loc_1918DC1:               Call 0.Method_Txt_Validate0 (CInt(8), var_A4, "0.00", var_108)
  loc_1918DC9:               var_A4.Text = var_C4
  loc_1918DD5:             End If
  loc_1918DEC:             var_A4 = var_98.Fields.Item("GuarAtt")
  loc_1918DFB:             Proc_6_39_E7D3A0(var_F8, CVar(var_A4))
  loc_1918E12:             Set var_A8 = Me.Txt
  loc_1918E18:             Call 0.Method_Txt_Validate0 (CInt(&H11), var_C8, CStr(var_F8))
  loc_1918E20:             var_C8.Text = var_1F8
  loc_1918E43:             Set var_A0 = Me.Txt
  loc_1918E49:             Call 0.Method_Txt_Validate0 (CInt(3), var_A4)
  loc_1918E58:             var_F8 = Trim(CVar(var_A4))
  loc_1918E72:             If (var_F8 = vbNullString) Then
  loc_1918EAE:               Set var_A8 = Me.Txt
  loc_1918EB4:               Call 0.Method_Txt_Validate0 (CInt(3), var_C8)
  loc_1918EBC:               var_C8.Text = CStr(var_98.Fields.Item("PartyName").Value)
  loc_1918ED2:             End If
  loc_1918EE9:             var_A4 = var_98.Fields.Item("CoverRate")
  loc_1918EF8:             Proc_6_39_E7D3A0(var_F8, CVar(var_A4))
  loc_1918F0F:             Set var_A8 = Me.Txt
  loc_1918F15:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_C8)
  loc_1918F1D:             var_C8.Text = CStr(var_F8)
  loc_1918F43:             Set var_A0 = Me.Txt
  loc_1918F49:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_A4)
  loc_1918F51:             var_A4.Text = vbNullString
  loc_1918F74:             var_A4 = var_98.Fields.Item("Remark")
  loc_1918F85:             var_AC = Proc_6_38_E69628(CVar(var_A4))
  loc_1918F93:             Set var_A8 = Me.Txt
  loc_1918F99:             Call 0.Method_Txt_Validate0 (CInt(&H19), var_C8)
  loc_1918FC3:             Set var_A8 = Me.Txt
  loc_1918FC9:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_C8)
  loc_1918FDE:             var_22C = Val(var_AC)
  loc_1918FEF:             Set var_A0 = Me.Txt
  loc_1918FF5:             Call 0.Method_Txt_Validate0 (CInt(&H11), var_A4, var_AC)
  loc_1919010:             var_140 = CStr((Val(var_AC) * var_A4.Text))
  loc_191901C:             Set var_168 = Me.TextGt
  loc_1919022:             Call 0.Method_Txt_Validate0 (1, var_16C)
  loc_191902A:             var_16C.Text = var_140
  loc_1919055:             Set var_A0 = Me.Txt
  loc_191905B:             Call 0.Method_Txt_Validate0 (CInt(8), var_A4)
  loc_191907F:             If (CDbl(Val(var_A4.Text)) > CDbl(0)) Then
  loc_19190B8:               Set var_A8 = Me.Txt
  loc_19190BE:               Call 0.Method_Txt_Validate0 (CInt(&HA), var_C8)
  loc_19190C6:               var_C8.Text = Proc_6_38_E69628(CVar(var_98.Fields.Item("RectDate")))
  loc_1919100:               Proc_6_39_E7D3A0(var_F8, CVar(var_98.Fields.Item("RectNo")))
  loc_1919117:               Set var_A8 = Me.Txt
  loc_191911D:               Call 0.Method_Txt_Validate0 (CInt(9), var_C8)
  loc_1919125:               var_C8.Text = CStr(var_F8)
  loc_191913D:             End If
  loc_191913D:           End If
  loc_191914B:           Me.FGrid.Redraw = True
  loc_1919159:           If (var_92 = 1) Then
  loc_191916F:             Me.FGrid.Rows = 1
  loc_1919195:             var_D8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_191919D:             Set var_A4 = Me.FGrid
  loc_19191CA:             Me.FGrid.FixedRows = 1
  loc_19191D2:           End If
  loc_19191D7:           Call Proc_124_94_1745CC0(&H32, FGrid.DispID_10000)
  loc_19191E1:           Call Proc_124_95_14FC7CC(&H32, var_D8)
  loc_19191E9:         Else
  loc_19191F1:           If (var_9C = CInt(5)) Then
  loc_19191FF:             Set var_A0 = Me.Txt
  loc_1919205:             Call 0.Method_Txt_Validate0 (CInt(5), var_A4)
  loc_191920D:             var_AC = "HallName"
  loc_191922E:             If (Proc_6_27_EA61EC(var_A4, var_AC) = 0) Then
  loc_191923C:               Set var_A0 = Me.Txt
  loc_1919242:               Call 0.Method_Txt_Validate0 (CInt(5), var_A4)
  loc_191924A:               var_A4.SetFocus
  loc_1919258:               arg_10 = &HFF
  loc_191925B:               Exit Sub
  loc_191925C:             End If
  loc_191927C:             var_B2 = Me.EOF
  loc_1919290:             var_B4 = Me.BOF
  loc_19192AA:             Set var_A0 = Me.Txt
  loc_19192B0:             Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_AC)
  loc_19192B8:             ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (var_B4 = &HFF))) = var_A4.Text
  loc_19192D0:             If (arg_10 Or (var_AC = vbNullString)) Then
  loc_19192E0:               Set var_A0 = Me.Txt
  loc_19192E6:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_19192EE:               var_A4.Text = vbNullString
  loc_1919307:               Set var_A0 = Me.Txt
  loc_191930D:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1919315:               var_A4.Tag = vbNullString
  loc_1919324:             Else
  loc_191935F:               Set var_A8 = Me.Txt
  loc_1919365:               Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_191936D:               var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_19193A0:               var_A4 = Me.Fields.Item("Code")
  loc_19193BE:               Set var_A8 = Me.Txt
  loc_19193C4:               Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_19193CC:               var_C8.Tag = CStr(var_A4.Value)
  loc_19193E2:             End If
  loc_19193E5:           Else
  loc_19193ED:             If Not (var_9C = CInt(&HF)) Then
  loc_19193F8:               If (var_9C = CInt(&HE)) Then
  loc_19193FB:               End If
  loc_1919408:               Set var_A0 = Me.Txt
  loc_191940E:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1919427:               Proc_6_40_EA5C80(CVar(Val(var_A4.Text)))
  loc_191943B:               Set var_A8 = Me.Txt
  loc_1919441:               Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_1919449:               var_C8.Text = CStr(var_1D8)
  loc_191946A:               Set var_A0 = Me.TxtGt
  loc_1919470:               Call 0.Method_Txt_Validate8 (var_B2)
  loc_1919482:               Set var_A4 = Me.TxtGt
  loc_1919488:               Call 0.Method_Txt_Validate0 (var_B2, var_A8)
  loc_19194A7:               Set var_C8 = Me.TextGt
  loc_19194AD:               Call 0.Method_Txt_Validate8 (var_B4)
  loc_19194BF:               Set var_168 = Me.TextGt
  loc_19194C5:               Call 0.Method_Txt_Validate0 (var_B4, var_16C)
  loc_19194DA:               var_244 = Val(var_16C.Text)
  loc_19194EB:               Set var_194 = Me.Txt
  loc_19194F1:               Call 0.Method_Txt_Validate0 (CInt(&HF), var_198, var_140)
  loc_1919506:               var_24C = Val(var_140)
  loc_1919517:               Set var_230 = Me.Txt
  loc_191951D:               Call 0.Method_Txt_Validate0 (CInt(8), var_234, var_144)
  loc_1919532:               var_254 = Val(var_144)
  loc_1919559:               var_D8 = CVar((((Val(var_A8.Text) + var_198.Text) - var_234.Text) - var_254)) 'Double
  loc_1919577:               Set var_238 = Me.Txt
  loc_191957D:               Call 0.Method_Txt_Validate0 (CInt(&HD), var_23C, CStr(Format(CVar(Val(var_A4.Text)), "0.00")), 1)
  loc_1919585:               var_23C.Text = 1
  loc_19195BB:             End If
  loc_19195BB:           End If
  loc_19195BB:         End If
  loc_19195BB:       End If
  loc_19195BB:     End If
  loc_19195BB:   End If
  loc_19195BB: End If
  loc_19195C0: Set var_88 = Nothing
  loc_19195C8: Set var_8C = Nothing
  loc_19195D0: Set var_98 = Nothing
  loc_19195D3: Exit Sub
  loc_19195D4: ' Referenced from: 1916AA8
  loc_19195D4: Proc_6_60_E63754(var_254)
  loc_19195D9: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ED05A8
  'Data Table: 59EE5C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED050A: Set var_88 = Me.TxtPer
  loc_ED0510: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ED051E: Proc_6_74_E23240(var_8C)
  loc_ED052A: Call Proc_124_87_F294C0(var_8C)
  loc_ED053E: Set var_88 = Me.TxtPer
  loc_ED0544: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ED054C: var_8C.SelStart = 0
  loc_ED0565: Set var_88 = Me.TxtPer
  loc_ED056B: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ED0586: Set var_90 = Me.TxtPer
  loc_ED058C: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ED0594: var_98.SelLength = Len(var_8C.Text)
  loc_ED05A7: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B008
  'Data Table: 59EE5C
  loc_E5AFD5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5AFDE:   Proc_6_75_E5335C(Shift)
  loc_E5AFE3: End If
  loc_E5AFF8: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5B001:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5B006: End If
  loc_E5B006: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E56AE0
  'Data Table: 59EE5C
  loc_E56AB2: Set var_88 = Me.TxtPer
  loc_E56AB8: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E56AD3: Proc_6_42_129B55C(var_8C, arg_10, 2)
  loc_E56ADF: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E02350
  'Data Table: 59EE5C
  loc_E0234A: Call Proc_124_94_1745CC0(KeyCode)
  loc_E0234F: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E4B9FC
  'Data Table: 59EE5C
  loc_E4B9DA: Set var_88 = Me.TxtPer
  loc_E4B9E0: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E4B9EE: Proc_6_73_E23294(var_8C)
  loc_E4B9FA: Exit Sub
End Sub

Private Sub DGHall_UnknownEvent_9 'F5C878
  'Data Table: 59EE5C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5C758: On Error Goto loc_F5C872
  loc_F5C76A: Me.DGHall.Visible = False
  loc_F5C789: If (Me.RecordCount > 0) Then
  loc_F5C7C8:   Set var_B4 = Me.Txt
  loc_F5C7CE:   Call 0.Method_DGHall_UnknownEvent_90 (CInt(5), var_B8)
  loc_F5C7D6:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5C809:   var_B0 = Me.Fields.Item("Code")
  loc_F5C828:   Set var_B4 = Me.Txt
  loc_F5C82E:   Call 0.Method_DGHall_UnknownEvent_90 (CInt(5), var_B8)
  loc_F5C836:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5C84C: End If
  loc_F5C857: Set var_A8 = Me.Txt
  loc_F5C85D: Call 0.Method_DGHall_UnknownEvent_90 (CInt(5))
  loc_F5C865: var_B0.SetFocus
  loc_F5C871: Exit Sub
  loc_F5C872: ' Referenced from: F5C758
  loc_F5C872: Proc_6_60_E63754(var_B0)
  loc_F5C877: Exit Sub
End Sub

Private Sub DGBookNo_UnknownEvent_9 'F5C9E0
  'Data Table: 59EE5C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5C8C0: On Error Goto loc_F5C9DA
  loc_F5C8D2: Me.DGBookNo.Visible = False
  loc_F5C8F1: If (Me.RecordCount > 0) Then
  loc_F5C930:   Set var_B4 = Me.Txt
  loc_F5C936:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B8)
  loc_F5C93E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5C971:   var_B0 = Me.Fields.Item("Code")
  loc_F5C990:   Set var_B4 = Me.Txt
  loc_F5C996:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B8)
  loc_F5C99E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5C9B4: End If
  loc_F5C9BF: Set var_A8 = Me.Txt
  loc_F5C9C5: Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7))
  loc_F5C9CD: var_B0.SetFocus
  loc_F5C9D9: Exit Sub
  loc_F5C9DA: ' Referenced from: F5C8C0
  loc_F5C9DA: Proc_6_60_E63754(var_B0)
  loc_F5C9DF: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD4BF8
  'Data Table: 59EE5C
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD4A3C: On Error Goto loc_FD4BF0
  loc_FD4A4E: Me.DGVType.Visible = False
  loc_FD4A6D: If (Me.RecordCount > 0) Then
  loc_FD4ABF:   Set var_CC = Me.Txt
  loc_FD4AC5:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD4ACD:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD4B25:   Set var_B4 = Me.DGVType
  loc_FD4B3C:   Set var_CC = Me.Txt
  loc_FD4B42:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD4B4A:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD4B9E:   global_120 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD4BAF: End If
  loc_FD4BCD: Set var_B0 = Me.Txt
  loc_FD4BD3: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD4BDB: var_B4.SetFocus
  loc_FD4BEF: Exit Sub
  loc_FD4BF0: ' Referenced from: FD4A3C
  loc_FD4BF0: Proc_6_60_E63754(var_B4)
  loc_FD4BF5: Exit Sub
End Sub

Public Sub txtM_UnknownEvent_0(Index As Integer) 'E524FC
  'Data Table: 59EE5C
  loc_E524D6: Set var_88 = Me.txtM
  loc_E524DC: Call 0.Method_txtM_UnknownEvent_00 (Index)
  loc_E524EA: Proc_6_74_E23240(var_8C)
  loc_E524F6: Call Proc_124_87_F294C0(var_8C)
  loc_E524FB: Exit Sub
End Sub

Public Sub txtM_UnknownEvent_1(Index As Integer) 'E4F684
  'Data Table: 59EE5C
  loc_E4F662: Set var_88 = Me.txtM
  loc_E4F668: Call 0.Method_txtM_UnknownEvent_10 (Index)
  loc_E4F676: Proc_6_73_E23294(var_8C)
  loc_E4F682: Exit Sub
End Sub

Public Sub txtM_UnknownEvent_8(arg_C, arg_10) 'E55658
  'Data Table: 59EE5C
  Dim arg_10 As Integer
  loc_E5562E: Set var_88 = Me.txtM
  loc_E55634: Call 0.Method_txtM_UnknownEvent_80 (arg_C)
  loc_E5564E: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E55653:   arg_10 = &HFF
  loc_E55656: End If
  loc_E55656: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E634CC
  'Data Table: 59EE5C
  loc_E63486: If (CLng(arg_10) = &H1B) Then
  loc_E63489:   Call Proc_124_87_F294C0()
  loc_E6348E:   Exit Sub
  loc_E6348F: End If
  loc_E634A4: If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_E634AD:   Proc_6_75_E5335C(arg_10)
  loc_E634B2: End If
  loc_E634BC: If (CLng(arg_10) = &H26) Then
  loc_E634C5:   Proc_6_76_E533C8(arg_10, arg_14)
  loc_E634CA: End If
  loc_E634CA: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F363D4
  'Data Table: 59EE5C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F362CB: Me.DGParty.Visible = False
  loc_F362EA: If (Me.RecordCount > 0) Then
  loc_F36329:   Set var_B4 = Me.Txt
  loc_F3632F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F36337:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3636A:   var_B0 = Me.Fields.Item("Code")
  loc_F36389:   Set var_B4 = Me.Txt
  loc_F3638F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F36397:   var_B8.Tag = CStr(var_B0.Value)
  loc_F363AD: End If
  loc_F363B8: Set var_A8 = Me.Txt
  loc_F363BE: Call 0.Method_DGParty_UnknownEvent_90 (CInt(3))
  loc_F363C6: var_B0.SetFocus
  loc_F363D2: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '105AF68
  'Data Table: 59EE5C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_14C As Variant
  loc_105AD0F: Me.DGItem.Visible = False
  loc_105AD2E: If (Me.RecordCount > 0) Then
  loc_105AD6B:   Set var_B4 = Me.TxtGrid
  loc_105AD71:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_105AD79:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_105ADA2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105ADAA:   var_EC = CVar(CLng(1)) 'Long
  loc_105ADDD:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_105ADE5:   Set var_B8 = Me.FGrid
  loc_105ADEB:   LateIdCallSt
  loc_105AE1A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105AE22:   var_EC = CVar(CLng(9)) 'Long
  loc_105AE55:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_105AE5D:   Set var_B8 = Me.FGrid
  loc_105AE63:   LateIdCallSt
  loc_105AE99:   var_B0 = Me.Fields.Item("IRate")
  loc_105AEB1:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105AEB9:   var_FC = CVar(CLng(4)) 'Long
  loc_105AEE6:   var_14C = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_105AEEE:   Set var_B8 = Me.FGrid
  loc_105AEF4:   LateIdCallSt
  loc_105AF12: End If
  loc_105AF1E: Set var_A8 = Me.TxtGrid
  loc_105AF24: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_14C, 1, 1)
  loc_105AF2C: var_FC = var_B0.Visible
  loc_105AF3E: If (var_15E = &HFF) Then
  loc_105AF4A:   Set var_A8 = Me.TxtGrid
  loc_105AF50:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_DC, var_B8)
  loc_105AF58:   var_B0.SetFocus
  loc_105AF64: End If
  loc_105AF64: Exit Sub
  loc_105AF65: CExtInstUnk
End Sub

Private Sub Command1_UnknownEvent_9 '101CF94
  'Data Table: 59EE5C
  Dim var_8C As TextBox
  Dim var_94 As TextBox
  Dim var_9C As TextBox
  Dim var_A4 As TextBox
  Dim var_B4 As TextBox
  Dim var_118 As Double
  Dim var_C8 As TextBox
  Dim var_120 As Double
  Dim var_D4 As TextBox
  Dim var_128 As Double
  loc_101CDDA: Set var_88 = Me.Txt
  loc_101CDE0: Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_8C)
  loc_101CDFB: Set var_90 = Me.Txt
  loc_101CE01: Call 0.Method_Command1_UnknownEvent_90 (CInt(4), var_94)
  loc_101CE1C: Set var_98 = Me.Txt
  loc_101CE22: Call 0.Method_Command1_UnknownEvent_90 (CInt(3), var_9C)
  loc_101CE3D: Set var_A0 = Me.Txt
  loc_101CE43: Call 0.Method_Command1_UnknownEvent_90 (CInt(7), var_A4)
  loc_101CE57: Set var_A8 = Me.TxtGt
  loc_101CE5D: Call 0.Method_Command1_UnknownEvent_98 (var_AA)
  loc_101CE6F: Set var_B0 = Me.TxtGt
  loc_101CE75: Call 0.Method_Command1_UnknownEvent_90 (var_AA, var_B4)
  loc_101CE8A: var_118 = Val(var_B4.Text)
  loc_101CE94: Set var_BC = Me.TextGt
  loc_101CE9A: Call 0.Method_Command1_UnknownEvent_98 (var_BE)
  loc_101CEAC: Set var_C4 = Me.TextGt
  loc_101CEB2: Call 0.Method_Command1_UnknownEvent_90 (var_BE, var_C8)
  loc_101CEC7: var_120 = Val(var_C8.Text)
  loc_101CED8: Set var_D0 = Me.Txt
  loc_101CEDE: Call 0.Method_Command1_UnknownEvent_90 (CInt(8), var_D4, var_D8)
  loc_101CEE6: var_120 = var_D4.Text
  loc_101CEF3: var_128 = Val(var_D8)
  loc_101CF01: Set var_110 = Nothing
  loc_101CF0C: var_10C = 0
  loc_101CF53: Proc_263_0_F73920(1, 6, global_132, var_8C.Text, var_94.Text, var_9C.Text, var_A4.Text)
  loc_101CF90: Exit Sub
End Sub

Private Sub CmdBooking_UnknownEvent_9 'E8DD9C
  'Data Table: 59EE5C
  loc_E8DD30: Set var_88 = Me.TopCtrl1
  loc_E8DD36: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E8DD4F: If (CStr() <> "Add") Then
  loc_E8DD52:   Exit Sub
  loc_E8DD53: End If
  loc_E8DD57: Set var_A0 = New HallBooking
  loc_E8DD75: var_A0.MDIRestCode = CVar(Proc_6_45_EADFB8(MemVar_1F95078) & "BANQ")
  loc_E8DD8B: var_A0.OpenMode = 1
  loc_E8DD92: Call var_A0.Show
  loc_E8DD98: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '112AEF0
  'Data Table: 59EE5C
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_112AB9A: Set var_88 = Me.TxtGrid
  loc_112ABA0: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_112ABAE: Proc_6_74_E23240(var_8C)
  loc_112ABBA: Call Proc_124_87_F294C0(var_8C)
  loc_112ABCB: If (Index = 0) Then
  loc_112ABE4:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_112ABFF:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_112AC3E:   Set var_108 = Me.TxtGrid
  loc_112AC44:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_112AC4C:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_112AC74:   var_C4 = Me.FGrid.Col
  loc_112AC7D:   var_114 = CLng(var_C4)
  loc_112AC8D:   If (var_114 = CLng(1)) Then
  loc_112AC9A:     Set global_64 = New 
  loc_112ACAC:     Me.var_C4.CursorLocation = 3
  loc_112ACD2:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,IR.Rate as IRate,IC.TAXSTRU,IC.TAXSTRU ,I.Unit,I.DiscApp,I.RateEdit,I.Kitchen,i.SChrgApp From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.ItemCode=I.Code And IR.RestCode=I.RestCode) where IR.RestCode ='" & global_56
  loc_112ACE3:     Me.Open CVar(var_110 & "' Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_112ACF7:     CVarUnk
  loc_112ACFC:     VerifyVarObj
  loc_112AD02:     Set var_88 = Me.DGItem
  loc_112AD08:     LateIdStAd
  loc_112AD57:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_112AD5A:       Exit Sub
  loc_112AD5B:     End If
  loc_112AD61:     Me.MoveFirst
  loc_112AD79:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_112AD81:     var_E4 = CVar(CLng(9)) 'Long
  loc_112AD8A:     Set var_8C = Me.FGrid
  loc_112AD90:     var_D4 = var_8C.TextMatrix)
  loc_112ADC5:     Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_112ADF5:     If (Me.EOF = &HFF) Then
  loc_112ADFE:       Me.MoveFirst
  loc_112AE03:     End If
  loc_112AE0C:     CVarUnk
  loc_112AE11:     VerifyVarObj
  loc_112AE17:     Set var_88 = Me.DGItem
  loc_112AE1D:     LateIdStAd
  loc_112AE2E:   Else
  loc_112AE35:     If (var_114 = CLng(2)) Then
  loc_112AE4D:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H32, Me.TxtGrid, global_64, var_134, var_D4)
  loc_112AE55:       var_8C.MaxLength = var_E4
  loc_112AE76:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, CDbl(960), var_A4, Me.TxtGrid)
  loc_112AE7E:       var_8C.Height = global_64
  loc_112AE8D:     Else
  loc_112AE94:       If Not (var_114 = CLng(3)) Then
  loc_112AE9E:         If (var_114 = CLng(4)) Then
  loc_112AEA1:         End If
  loc_112AEB0:         Set var_88 = Me.TxtGrid
  loc_112AEB6:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_112AEBE:         var_8C.MaxLength = 1
  loc_112AED3:         If (global_150 = 0) Then
  loc_112AEDE:           var_110 = "{Home}+{End}"
  loc_112AEE4:           Proc_303_0_FBACC8(CStr(var_D4), 0)
  loc_112AEEC:         End If
  loc_112AEEC:       End If
  loc_112AEEC:     End If
  loc_112AEEC:   End If
  loc_112AEEC: End If
  loc_112AEEC: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '113C770
  'Data Table: 59EE5C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_113C3F8: If (KeyCode = 0) Then
  loc_113C405:   If (CLng(Shift) = &H1B) Then
  loc_113C415:     Set var_8C = Me.TxtGrid
  loc_113C41B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_113C435:     Set var_98 = Me.TxtGrid
  loc_113C43B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_113C443:     var_9C.Text = var_90.Tag
  loc_113C45F:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_113C464:     Call Proc_124_87_F294C0(arg_14)
  loc_113C46D:     Set var_8C = Me.FGrid
  loc_113C48A:     Set var_8C = Me.TxtGrid
  loc_113C490:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_113C498:     var_90.Visible = FGrid.DispID_8001
  loc_113C4A4:     Exit Sub
  loc_113C4A5:   End If
  loc_113C4B8:   var_B0 = CLng(Me.FGrid.Col)
  loc_113C4C8:   If (var_B0 = CLng(1)) Then
  loc_113C4E3:     Set var_9C = Nothing
  loc_113C51C:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_113C53A:     If (CLng(Shift) = &HD) Then
  loc_113C543:       Call Proc_124_81_1423928(KeyCode, var_B2, 1, Nothing)
  loc_113C54E:       If (var_B2 = &HFF) Then
  loc_113C59B:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(5) + 1)), 0)
  loc_113C5AB:       End If
  loc_113C5AB:     End If
  loc_113C5AE:   Else
  loc_113C5B5:     If (var_B0 = CLng(2)) Then
  loc_113C5C2:       If (CLng(Shift) = &HD) Then
  loc_113C5CB:         Call Proc_124_81_1423928(KeyCode, var_B2, 0, 0)
  loc_113C5D6:         If (var_B2 = &HFF) Then
  loc_113C623:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(3) + 1)), 0)
  loc_113C633:         End If
  loc_113C633:       End If
  loc_113C636:     Else
  loc_113C63D:       If (var_B0 = CLng(4)) Then
  loc_113C646:         Call Proc_124_81_1423928(KeyCode, var_B2, 0, 0)
  loc_113C651:         If (var_B2 = &HFF) Then
  loc_113C69E:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(4) + 1)), 0)
  loc_113C6AE:         End If
  loc_113C6B1:       Else
  loc_113C6B8:         If (var_B0 = CLng(3)) Then
  loc_113C6FB:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_150 = &HFF))) Then
  loc_113C704:             Call Proc_124_81_1423928(KeyCode, var_B2, 0, 0)
  loc_113C70F:             If (var_B2 = &HFF) Then
  loc_113C75C:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(5) + 1)), 0)
  loc_113C76C:             End If
  loc_113C76C:           End If
  loc_113C76C:         End If
  loc_113C76C:       End If
  loc_113C76C:     End If
  loc_113C76C:   End If
  loc_113C76C: End If
  loc_113C76C: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F83EE0
  'Data Table: 59EE5C
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_F83D8F: Proc_6_58_E06050(arg_10)
  loc_F83DA0: If (KeyAscii = 0) Then
  loc_F83DB6:   var_A0 = CLng(Me.FGrid.Col)
  loc_F83DC6:   If (var_A0 = CLng(1)) Then
  loc_F83DE5:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F83DEC:       Set var_AC = Me.TxtGrid
  loc_F83DF7:       var_A4 = "Name"
  loc_F83E12:       Proc_6_89_1470B00(var_AC, KeyAscii, global_64, arg_10)
  loc_F83E21:     End If
  loc_F83E24:   Else
  loc_F83E2B:     If (var_A0 = CLng(3)) Then
  loc_F83E38:       Set var_8C = Me.TxtGrid
  loc_F83E3E:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F83E59:       Proc_6_42_129B55C(var_AC, arg_10, 8, 3)
  loc_F83E68:     Else
  loc_F83E6F:       If (var_A0 = CLng(4)) Then
  loc_F83E7C:         Set var_8C = Me.TxtGrid
  loc_F83E82:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F83E9D:         Proc_6_42_129B55C(var_AC, arg_10, 8)
  loc_F83EAC:       Else
  loc_F83EB3:         If (var_A0 = CLng(2)) Then
  loc_F83EC5:           Set var_8C = Me.TxtGrid
  loc_F83ECB:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, &H32)
  loc_F83ED3:           var_AC.MaxLength = 2
  loc_F83EDF:         End If
  loc_F83EDF:       End If
  loc_F83EDF:     End If
  loc_F83EDF:   End If
  loc_F83EDF: End If
  loc_F83EDF: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F7D024
  'Data Table: 59EE5C
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_114 As Variant
  loc_F7CEE8: On Error Goto loc_F7D01E
  loc_F7CEF7: If (KeyCode = 0) Then
  loc_F7CF0D:   var_A0 = CLng(Me.FGrid.Col)
  loc_F7CF1D:   If (var_A0 = CLng(1)) Then
  loc_F7CF43:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F7CF54:       Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_F7CF5D:       Set var_AC = Me.TxtGrid
  loc_F7CF68:       var_A8 = "Name"
  loc_F7CF83:       Proc_6_89_1470B00(var_AC, KeyCode, global_64, Shift, var_A8)
  loc_F7CF92:     End If
  loc_F7CF95:   Else
  loc_F7CF9C:     If (var_A0 = CLng(2)) Then
  loc_F7CFDB:       Set var_8C = Me.TxtGrid
  loc_F7CFE1:       Call 0.Method_TxtGrid_KeyUp0 (0, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_F7CFE9:       &HFF = var_AC.Text
  loc_F7CFF1:       var_114 = CVar(var_A8) 'String
  loc_F7CFF9:       Set var_128 = Me.FGrid
  loc_F7CFFF:       LateIdCallSt
  loc_F7D01D:     End If
  loc_F7D01D:   End If
  loc_F7D01D: End If
  loc_F7D01D: Exit Sub
  loc_F7D01E: ' Referenced from: F7CEE8
  loc_F7D01E: Proc_6_60_E63754(var_128, var_114, 0)
  loc_F7D023: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22718
  'Data Table: 59EE5C
  Dim arg_10 As Integer
  loc_E22700: If (Cancel = 0) Then
  loc_E22709:   Call Proc_124_81_1423928(Cancel, var_88)
  loc_E22712:   arg_10 = Not(var_88)
  loc_E22715: End If
  loc_E22715: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ED04BC
  'Data Table: 59EE5C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED041E: Set var_88 = Me.TxtGt
  loc_ED0424: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ED0432: Proc_6_74_E23240(var_8C)
  loc_ED043E: Call Proc_124_87_F294C0(var_8C)
  loc_ED0452: Set var_88 = Me.TxtGt
  loc_ED0458: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ED0460: var_8C.SelStart = 0
  loc_ED0479: Set var_88 = Me.TxtGt
  loc_ED047F: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ED049A: Set var_90 = Me.TxtGt
  loc_ED04A0: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ED04A8: var_98.SelLength = Len(var_8C.Text)
  loc_ED04BB: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5AF90
  'Data Table: 59EE5C
  loc_E5AF5D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5AF66:   Proc_6_75_E5335C(Shift)
  loc_E5AF6B: End If
  loc_E5AF80: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5AF89:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5AF8E: End If
  loc_E5AF8E: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'E56BC8
  'Data Table: 59EE5C
  loc_E56B9A: Set var_88 = Me.TxtGt
  loc_E56BA0: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_E56BBB: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E56BC7: Exit Sub
End Sub

Private Sub TxtGt_KeyUp(KeyCode As Integer, Shift As Integer) 'E022D8
  'Data Table: 59EE5C
  loc_E022D2: Call Proc_124_94_1745CC0(KeyCode)
  loc_E022D7: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E4BD3C
  'Data Table: 59EE5C
  loc_E4BD1A: Set var_88 = Me.TxtGt
  loc_E4BD20: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E4BD2E: Proc_6_73_E23294(var_8C)
  loc_E4BD3A: Exit Sub
End Sub

Private Sub TextGt_GotFocus(Index As Integer) 'ED0958
  'Data Table: 59EE5C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED08BA: Set var_88 = Me.TextGt
  loc_ED08C0: Call 0.Method_TextGt_GotFocus0 (Index)
  loc_ED08CE: Proc_6_74_E23240(var_8C)
  loc_ED08DA: Call Proc_124_87_F294C0(var_8C)
  loc_ED08EE: Set var_88 = Me.TextGt
  loc_ED08F4: Call 0.Method_TextGt_GotFocus0 (Index, var_8C)
  loc_ED08FC: var_8C.SelStart = 0
  loc_ED0915: Set var_88 = Me.TextGt
  loc_ED091B: Call 0.Method_TextGt_GotFocus0 (Index, var_8C)
  loc_ED0936: Set var_90 = Me.TextGt
  loc_ED093C: Call 0.Method_TextGt_GotFocus0 (Index, var_98)
  loc_ED0944: var_98.SelLength = Len(var_8C.Text)
  loc_ED0957: Exit Sub
End Sub

Private Sub TextGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B080
  'Data Table: 59EE5C
  loc_E5B04D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5B056:   Proc_6_75_E5335C(Shift)
  loc_E5B05B: End If
  loc_E5B070: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5B079:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5B07E: End If
  loc_E5B07E: Exit Sub
End Sub

Private Sub TextGt_KeyPress(KeyAscii As Integer) 'E56244
  'Data Table: 59EE5C
  loc_E56216: Set var_88 = Me.TextGt
  loc_E5621C: Call 0.Method_TextGt_KeyPress0 (KeyAscii)
  loc_E56237: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E56243: Exit Sub
End Sub

Private Sub TextGt_LostFocus(Index As Integer) 'E4F004
  'Data Table: 59EE5C
  loc_E4EFE2: Set var_88 = Me.TextGt
  loc_E4EFE8: Call 0.Method_TextGt_LostFocus0 (Index)
  loc_E4EFF6: Proc_6_73_E23294(var_8C)
  loc_E4F002: Exit Sub
End Sub

Private Sub TextGt_Validate(Cancel As Boolean) 'E019B4
  'Data Table: 59EE5C
  loc_E019AE: Call Proc_124_95_14FC7CC(Cancel)
  loc_E019B3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA1E90
  'Data Table: 59EE5C
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA1E2B: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_100)) Then
  loc_EA1E41:   Me.FGrid.Col = 1
  loc_EA1E49: End If
  loc_EA1E5C: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA1E6F: Set var_88 = Me.TxtGrid
  loc_EA1E75: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA1E7D: var_BC.Visible = False
  loc_EA1E89: Call Proc_124_87_F294C0()
  loc_EA1E8E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66E58
  'Data Table: 59EE5C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E66E14: Set var_88 = Me.TxtGrid
  loc_E66E1A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E66E34: If (var_8C.Visible = 0) Then
  loc_E66E4D:   Me.FGrid.BackColorSel = CVar(CLng(global_100))
  loc_E66E55: End If
  loc_E66E55: Exit Sub
  loc_E66E56: Loop Until  'do at: E65284
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE91C
  'Data Table: 59EE5C
  loc_DFE914: Call Proc_124_80_E45414()
  loc_DFE919: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '11F659C
  'Data Table: 59EE5C
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_11F60FC: Set var_88 = Me.TopCtrl1
  loc_11F6102: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11F6147: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_11F6150:   Call Form_KeyDown(Cancel, arg_10)
  loc_11F6155: End If
  loc_11F6159: Set var_88 = Me.TopCtrl1
  loc_11F615F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11F6178: If (CStr() = "Browse") Then
  loc_11F617B:   Exit Sub
  loc_11F617C: End If
  loc_11F61F0: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11F6209:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11F6219:   var_9C = "+{Tab}"
  loc_11F621F:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_11F6229:   Cancel = 0
  loc_11F622F: Else
  loc_11F6239:   var_B0 = Me.FGrid.Rows
  loc_11F6286:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_11F629F:     Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11F62AB:     Set var_88 = Me.TopCtrl1
  loc_11F62B1:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_B0)
  loc_11F62CA:     If (CStr(Cancel) = "Add") Then
  loc_11F62DB:       Proc_303_0_FBACC8("{Tab}", 0)
  loc_11F62E5:       Cancel = 0
  loc_11F62EB:     Else
  loc_11F62F0:       Call Proc_124_88_F0CECC(0, Cancel)
  loc_11F62F5:     End If
  loc_11F62F5:   End If
  loc_11F62F5: End If
  loc_11F62FB: global_148 = Cancel
  loc_11F6321: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11F6345: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_11F635B:   var_EC = CLng(Me.FGrid.Col)
  loc_11F636B:   If (var_EC = CLng(1)) Then
  loc_11F6381:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F6399:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11F639E:     var_11C = vbNullString
  loc_11F63A8:     Set var_B4 = Me.FGrid
  loc_11F63AE:     LateIdCallSt
  loc_11F63D9:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F63E1:     var_FC = CVar(CLng(9)) 'Long
  loc_11F63E6:     var_11C = vbNullString
  loc_11F63F0:     Set var_A0 = Me.FGrid
  loc_11F63F6:     LateIdCallSt
  loc_11F641B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F6423:     var_FC = CVar(CLng(3)) 'Long
  loc_11F6428:     var_11C = vbNullString
  loc_11F6432:     Set var_A0 = Me.FGrid
  loc_11F6438:     LateIdCallSt
  loc_11F644D:   Else
  loc_11F6454:     If (var_EC = CLng(3)) Then
  loc_11F6473:       Set var_A0 = Me.FGrid
  loc_11F6497:       LateIdCallSt
  loc_11F64AF:       Call Proc_124_89_11540FC(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11F64B7:     Else
  loc_11F64BE:       If (var_EC = CLng(4)) Then
  loc_11F64DD:         Set var_A0 = Me.FGrid
  loc_11F6501:         LateIdCallSt
  loc_11F6519:         Call Proc_124_89_11540FC(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString)
  loc_11F6521:       Else
  loc_11F6528:         If (var_EC = CLng(2)) Then
  loc_11F653E:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F6556:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11F655B:           var_11C = vbNullString
  loc_11F6565:           Set var_B4 = Me.FGrid
  loc_11F656B:           LateIdCallSt
  loc_11F6583:         End If
  loc_11F6583:       End If
  loc_11F6583:     End If
  loc_11F6583:   End If
  loc_11F6583: End If
  loc_11F6589: If (Cancel = &HD) Then
  loc_11F6591:   global_150 = 0
  loc_11F6594: End If
  loc_11F6596: Cancel = 0
  loc_11F6599: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E131E0
  'Data Table: 59EE5C
  loc_E131D1: Call FGrid_UnknownEvent_C()
  loc_E131DB: global_150 = 0
  loc_E131DE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '10655FC
  'Data Table: 59EE5C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1065384: Set var_88 = Me.TopCtrl1
  loc_106538A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10653A3: If (CStr() = "Browse") Then
  loc_10653A6:   Exit Sub
  loc_10653A7: End If
  loc_10653BA: var_A0 = CLng(Me.FGrid.Col)
  loc_10653CA: If (var_A0 = CLng(1)) Then
  loc_10653D1:   Set var_C4 = Me.FGrid
  loc_10653F5:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1065422:   Set var_B4 = var_C4
  loc_1065434:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_106545C:   Set var_88 = Me.TxtGrid
  loc_1065462:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_106546A:   0 = var_B4.Text
  loc_1065483:   If (Len(var_9C) <= 1) Then
  loc_1065492:     Set var_88 = Me.TxtGrid
  loc_1065498:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_10654A0:     var_CA = var_B4.Text
  loc_10654B1:     Set var_B8 = Me.TxtGrid
  loc_10654B7:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_10654BF:     var_C4.Text = var_9C
  loc_10654D2:   End If
  loc_10654DE:   Set var_88 = Me.TxtGrid
  loc_10654E4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_10654FE:   Set var_B8 = Me.TxtGrid
  loc_1065504:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_106550C:   var_C4.SelStart = Len(var_B4.Text)
  loc_1065522: Else
  loc_1065529:   If Not (var_A0 = CLng(3)) Then
  loc_1065533:     If (var_A0 = CLng(4)) Then
  loc_1065536:     End If
  loc_1065574:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1065589:   Else
  loc_1065590:     If (var_A0 = CLng(2)) Then
  loc_10655D1:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Cancel)
  loc_10655E3:     End If
  loc_10655E3:   End If
  loc_10655E3: End If
  loc_10655ED: If (CLng(Cancel) <> &HD) Then
  loc_10655F5:   global_150 = &HFF
  loc_10655F8: End If
  loc_10655F8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FFB018
  'Data Table: 59EE5C
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FFAE30: Set var_90 = Me.TopCtrl1
  loc_FFAE36: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FFAE4F: If (CStr() = "Browse") Then
  loc_FFAE52:   Exit Sub
  loc_FFAE53: End If
  loc_FFAE70: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FFAE73:   Exit Sub
  loc_FFAE74: End If
  loc_FFAE85: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FFAEA7:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FFAEE1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FFAF03:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FFAF19:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFAF22:         Set var_118 = Me.FGrid
  loc_FFAF3D:       Else
  loc_FFAF50:         Me.FGrid.Rows = 1
  loc_FFAF76:         var_A0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FFAF7E:         Set var_118 = Me.FGrid
  loc_FFAFAB:         Me.FGrid.FixedRows = 1
  loc_FFAFB3:       End If
  loc_FFAFB3:       Call Proc_124_89_11540FC(FGrid.DispID_10000, var_A0)
  loc_FFAFBD:       Call Proc_124_94_1745CC0(&H32, FGrid.DispID_10000)
  loc_FFAFC2:     End If
  loc_FFAFC5:   Else
  loc_FFAFE6:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FFAFF6:   End If
  loc_FFAFFA:   Set var_90 = Me.FGrid
  loc_FFB00B: End If
  loc_FFB010: Set var_8C = Nothing
  loc_FFB013: Exit Sub
  loc_FFB014: Exit Sub
  loc_FFB015: StAryRecCopy
End Sub

Private Sub FGrid_UnknownEvent_15 'E45F08
  'Data Table: 59EE5C
  Dim var_8C As TextBox
  loc_E45EDC: Call Proc_124_87_F294C0()
  loc_E45EEC: Set var_88 = Me.TxtGrid
  loc_E45EF2: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E45EFA: var_8C.Visible = False
  loc_E45F06: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '10992E0
  'Data Table: 59EE5C
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim unk_59EE7B As Connection15
  Dim var_88 As Recordset15
  Dim var_C8 As TextBox
  loc_1099030: On Error Goto loc_10992D9
  loc_1099056: Call Proc_124_86_10C6048(Proc_5_1_100EC1C("ADD", Me))
  loc_1099061: Call Proc_124_84_1049910(global_80)
  loc_1099073: Me.LblUser.Caption = vbNullString
  loc_1099088: Me.LblLDt.Caption = vbNullString
  loc_109909E: Set var_90 = Me.Txt
  loc_10990A4: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_98)
  loc_10990AC: var_98.Text = "Cooked Foods"
  loc_10990D1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_10990D9: var_98.Text = CStr(MemVar_1F950EC)
  loc_109910F: unk_59EE7B.Execute "Select Description,V_Type From Voucher_Type Where NCat='BBILL' AND rESTCODE='" & global_56 & "'", var_BC, -1
  loc_109911A: Set var_88 = Me.Txt
  loc_109913E: If (var_88.RecordCount > 0) Then
  loc_109917A:   Set var_C4 = Me.Txt
  loc_1099180:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_1099188:   var_C8.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_10991B8:   var_98 = var_88.Fields.Item("V_Type")
  loc_10991D7:   Set var_C4 = Me.Txt
  loc_10991DD:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_10991E5:   var_C8.Tag = CStr(var_98.Value)
  loc_10991FB: End If
  loc_1099208: Set var_90 = Me.Txt
  loc_109920E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_98)
  loc_1099216: var_98.Enabled = False
  loc_109922F: Set var_90 = Me.Txt
  loc_1099235: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98)
  loc_109923D: var_98.Enabled = False
  loc_1099258: Set var_90 = Me.Txt
  loc_109925E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98)
  loc_1099266: var_98.FontSize = CDbl(&HC)
  loc_109927D: Set var_90 = Me.Txt
  loc_1099283: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_98)
  loc_109928B: var_98.SetFocus
  loc_10992A5: Set var_90 = Me.Txt
  loc_10992AB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_10992C1: Call Proc_124_93_1A8A2AC(CDate(var_98.Text))
  loc_10992D5: Set var_88 = Nothing
  loc_10992D8: Exit Sub
  loc_10992D9: ' Referenced from: 1099030
  loc_10992D9: Proc_6_60_E63754(var_90)
  loc_10992DE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA23E0
  'Data Table: 59EE5C
  loc_EA2364: On Error Goto loc_EA23DA
  loc_EA239E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA23A1:   Call Proc_124_84_1049910()
  loc_EA23C9:   Call Proc_124_86_10C6048(Proc_5_1_100EC1C("INI", Me))
  loc_EA23D4:   Call Proc_124_82_18ACBAC(global_80)
  loc_EA23D9: End If
  loc_EA23D9: Exit Sub
  loc_EA23DA: ' Referenced from: EA2364
  loc_EA23DA: Proc_6_60_E63754()
  loc_EA23DF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '13B58F4
  'Data Table: 59EE5C
  Dim var_138 As Integer
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_59EE7B As Connection15
  Dim var_124 As Recordset15
  Dim var_128 As Fields15
  Dim var_13C As Field20
  loc_13B4FD0: On Error Goto loc_13B58A3
  loc_13B4FE1: If (Proc_183_56_FE8B08(global_80) = &HFF) Then
  loc_13B4FE4:   Exit Sub
  loc_13B4FE5: End If
  loc_13B4FEB: var_138 = 0
  loc_13B503C: var_FC = "Select Count(*) From PAYCHARGEH Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_13B5040: var_100 = CStr(var_FC)
  loc_13B504A: unk_59EE7B.Execute var_100, var_120, -1
  loc_13B5052: var_124 = var_124.Fields
  loc_13B505A: var_138 = var_128.Item(var_128)
  loc_13B5062: var_13C = var_13C.Value
  loc_13B508F: If (var_14C > 0) Then
  loc_13B5098:   Call 0.Method_arg_50 (var_100)
  loc_13B50B9:   MsgBox("First Delete Settlement.", &H10, CVar(var_100), var_FC, var_120)
  loc_13B50C9:   Exit Sub
  loc_13B50CA: End If
  loc_13B5101: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_120) = 6) Then
  loc_13B510D:   unk_59EE7B.BeginTrans var_170
  loc_13B5123:   var_94 = Me.Bookmark 'Variant
  loc_13B517D:   unk_59EE7B.Execute CStr("Delete From SunTran Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_13B51C8:   var_1A8 = 0
  loc_13B51DB:   var_1A0 = 0
  loc_13B51E6:   var_19C = 0
  loc_13B51F9:   var_194 = 0
  loc_13B5204:   var_190 = 0
  loc_13B5217:   var_188 = 0
  loc_13B5260:   Proc_154_5_10E3BD4(MemVar_1F95044, "SunTran", "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13B52DE:   unk_59EE7B.Execute CStr("Delete From SunTranH Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_13B5329:   var_1A8 = 0
  loc_13B533C:   var_1A0 = 0
  loc_13B5347:   var_19C = 0
  loc_13B535A:   var_194 = 0
  loc_13B5365:   var_190 = 0
  loc_13B5378:   var_188 = 0
  loc_13B53C1:   Proc_154_5_10E3BD4(MemVar_1F95044, "SunTranH", "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13B543F:   unk_59EE7B.Execute CStr("Delete From HallStock Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_13B548A:   var_1A8 = 0
  loc_13B549D:   var_1A0 = 0
  loc_13B54A8:   var_19C = 0
  loc_13B54BB:   var_194 = 0
  loc_13B54C6:   var_190 = 0
  loc_13B54D9:   var_188 = 0
  loc_13B5522:   Proc_154_5_10E3BD4(MemVar_1F95044, "HallStock", "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13B55A0:   unk_59EE7B.Execute CStr("Delete From HallSale1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_13B55EB:   var_1A8 = 0
  loc_13B55FE:   var_1A0 = 0
  loc_13B5609:   var_19C = 0
  loc_13B561C:   var_194 = 0
  loc_13B5627:   var_190 = 0
  loc_13B563A:   var_188 = 0
  loc_13B5683:   Proc_154_5_10E3BD4(MemVar_1F95044, "HallSale1", "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13B56F3:   var_FC = "Delete From Ledger Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_13B5701:   unk_59EE7B.Execute CStr(var_FC), var_120, -1
  loc_13B574C:   var_1A8 = 0
  loc_13B575F:   var_1A0 = 0
  loc_13B576A:   var_19C = 0
  loc_13B577D:   var_194 = 0
  loc_13B5788:   var_190 = 0
  loc_13B579B:   var_188 = 0
  loc_13B57DB:   var_100 = "Ledger"
  loc_13B57E4:   Proc_154_5_10E3BD4(MemVar_1F95044, var_100, "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13B5812:   unk_59EE7B.CommitTrans
  loc_13B5822:   Me.Requery -1
  loc_13B5842:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_13B584F:     Me.Bookmark = var_94
  loc_13B5857:   Else
  loc_13B586B:     If (Me.EOF = 0) Then
  loc_13B5874:       Me.MoveLast
  loc_13B5879:     End If
  loc_13B5879:   End If
  loc_13B5879:   Call Proc_124_82_18ACBAC(var_188, 0, var_190, var_194)
  loc_13B589A:   Proc_5_0_1107AD0(&HFF, Me, global_80, 0)
  loc_13B58A2: End If
  loc_13B58A2: Exit Sub
  loc_13B58A3: ' Referenced from: 13B4FD0
  loc_13B58A9: unk_59EE7B.RollbackTrans
  loc_13B58B6: Set var_98 = Err()
  loc_13B58BC: Call 0.Method_arg_2C (var_100, 0, var_19C)
  loc_13B58DD: MsgBox(CVar(var_100), &H10, " Deletion Message", var_FC, var_120)
  loc_13B58F0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1167D44
  'Data Table: 59EE5C
  Dim var_12C As Integer
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_E0 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F4 As String
  Dim unk_59EE7B As Connection15
  Dim var_118 As Recordset15
  Dim var_11C As Fields15
  Dim var_130 As Field20
  loc_11679A1: Call Proc_124_105_E67D30(global_160)
  loc_11679AC: If (var_86 = 0) Then
  loc_11679AF:   Exit Sub
  loc_11679B0: End If
  loc_11679B0: On Error Goto loc_1167D3D
  loc_11679C1: If (Proc_183_55_FE8490(global_80) = &HFF) Then
  loc_11679C4:   Exit Sub
  loc_11679C5: End If
  loc_11679F2: If CBool(Trim(Ucase(MemVar_1F950C8)) <> "SA") Then
  loc_11679FB:   var_12C = 0
  loc_1167A33:   var_E0 = Me.Fields.Item("SearchCode")
  loc_1167A43:   var_B8 = "SELECT COUNT(*) FROM PAYCHARGEH WHERE dOCID='" & var_E0.Value 
  loc_1167A4C:   var_D8 = var_B8 & "'" 
  loc_1167A5A:   unk_59EE7B.Execute CStr(var_D8), var_114, -1
  loc_1167A62:   var_118 = var_118.Fields
  loc_1167A6A:   var_12C = var_11C.Item(var_11C)
  loc_1167A72:   var_130 = var_130.Value
  loc_1167A9F:   If (var_140 > 0) Then
  loc_1167ABB:     MsgBox("Entry Can't be Modified,Bill Already Settled ", 0, var_B8, var_D8, var_114)
  loc_1167ACB:     Exit Sub
  loc_1167ACC:   End If
  loc_1167ACC: End If
  loc_1167AE1: var_F4 = "EDIT"
  loc_1167AEF: Call Proc_124_86_10C6048(Proc_5_1_100EC1C(var_F4, Me, global_80), var_140)
  loc_1167B07: Set var_DC = Me.Txt
  loc_1167B0D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_E0)
  loc_1167B15: var_E0.Enabled = False
  loc_1167B2E: Set var_DC = Me.Txt
  loc_1167B34: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_E0)
  loc_1167B3C: var_E0.Enabled = False
  loc_1167B55: Set var_DC = Me.Txt
  loc_1167B5B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_E0)
  loc_1167B63: var_E0.Enabled = False
  loc_1167B7C: Set var_DC = Me.Txt
  loc_1167B82: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_E0)
  loc_1167B8A: var_E0.Enabled = False
  loc_1167BA3: Set var_DC = Me.Txt
  loc_1167BA9: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HF), var_E0)
  loc_1167BB1: var_E0.Enabled = False
  loc_1167BCA: Set var_DC = Me.Txt
  loc_1167BD0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HE), var_E0)
  loc_1167BD8: var_E0.Enabled = False
  loc_1167BF1: Set var_DC = Me.Txt
  loc_1167BF7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HD), var_E0)
  loc_1167BFF: var_E0.Enabled = False
  loc_1167C18: Set var_DC = Me.Txt
  loc_1167C1E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HC), var_E0)
  loc_1167C26: var_E0.Enabled = False
  loc_1167C3F: Set var_DC = Me.Txt
  loc_1167C45: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HB), var_E0)
  loc_1167C4D: var_E0.Enabled = False
  loc_1167C66: Set var_DC = Me.Txt
  loc_1167C6C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_E0)
  loc_1167C74: var_E0.Enabled = False
  loc_1167C84: Set var_DC = Me.FGrid
  loc_1167CA2: Me.LblUser.Caption = vbNullString
  loc_1167CB7: Me.LblLDt.Caption = vbNullString
  loc_1167CCD: Set var_DC = Me.Txt
  loc_1167CD3: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_E0, var_F4)
  loc_1167CDB: FGrid.DispID_8001 = var_E0.Text
  loc_1167CE9: Call Proc_124_93_1A8A2AC(CDate(var_F4))
  loc_1167D2A: Call Proc_124_103_13E5A24(CStr(Me.Fields.Item("SearchCode").Value))
  loc_1167D3C: Exit Sub
  loc_1167D3D: ' Referenced from: 11679B0
  loc_1167D3D: Proc_6_60_E63754(var_86)
  loc_1167D42: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B7DC
  'Data Table: 59EE5C
  loc_E1B7D1: Me.Global.Unload Me
  loc_E1B7D9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F32EB4
  'Data Table: 59EE5C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim MemVar_1F950E4 As String
  loc_F32DB0: On Error Goto loc_F32EAB
  loc_F32DCA: If (Me.RecordCount <= 0) Then
  loc_F32DE8:   var_A8 = "No Records To Search."
  loc_F32DEE:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F32DFE:   Exit Sub
  loc_F32DFF: End If
  loc_F32E06: var_10C = "Select Docid as SearchCode,CAST(S.VNo AS vARcHAR(11)) as VNo ,CAST(S.VDate AS VARCHAR(11)) AS vdate ,S.Party " & " From HallSale1 S Where S.RESTCODE ='"
  loc_F32E25: Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_F32E31: var_B8 = " and "
  loc_F32E45: Proc_6_7_F26918(var_120, MemVar_1F950FC)
  loc_F32E5B: MemVar_1F950E4 = CStr(CVar(var_10C & global_56 & "' AND S.VDate between ") & var_A8 & var_B8 & var_120 & " Order By S.docid")
  loc_F32E7D: MemVar_1F95120 = Me
  loc_F32E8A: Proc_6_126_F1C850("1000,1200,2000")
  loc_F32EA5: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F32EAA: Exit Sub
  loc_F32EAB: ' Referenced from: F32DB0
  loc_F32EAB: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F32EB0: Exit Sub
  loc_F32EB1: EraseDestruct
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E38BE8
  'Data Table: 59EE5C
  loc_E38BD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38BE0: Call Proc_124_82_18ACBAC(global_80)
  loc_E38BE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E38CA8
  'Data Table: 59EE5C
  loc_E38C98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38CA0: Call Proc_124_82_18ACBAC(global_80)
  loc_E38CA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E38D08
  'Data Table: 59EE5C
  loc_E38CF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38D00: Call Proc_124_82_18ACBAC(global_80)
  loc_E38D05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E38D68
  'Data Table: 59EE5C
  loc_E38D58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38D60: Call Proc_124_82_18ACBAC(global_80)
  loc_E38D65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFFEC4
  'Data Table: 59EE5C
  loc_DFFEBC: Call Proc_124_102_1B7F3C4()
  loc_DFFEC1: Exit Sub
  loc_DFFEC2: On Error Goto loc_DFE32B
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E8E48C
  'Data Table: 59EE5C
  Dim Me As Recordset15
  Dim var_1BFC As Variant
  loc_E8E417: If Not((global_64 Is Nothing)) Then
  loc_E8E425:   Me.Requery -1
  loc_E8E42A: End If
  loc_E8E435: Me.Requery -1
  loc_E8E445: Me.Requery -1
  loc_E8E455: Me.Requery -1
  loc_E8E465: Me.Requery -1
  loc_E8E475: If Not((global_64 Is Nothing)) Then
  loc_E8E483:   Me.Requery -1
  loc_E8E488: End If
  loc_E8E488: Exit Sub
  loc_E8E489: var_1BFC = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1AB4BEC
  'Data Table: 59EE5C
  Dim var_1B8 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_1B0 As Variant
  Dim var_210 As Variant
  Dim var_220 As Variant
  Dim var_1BC As String
  Dim var_25C As Double
  Dim var_A4 As Variant
  Dim var_AC As Double
  Dim var_1E0 As Variant
  Dim var_1B4 As Variant
  Dim var_264 As String
  Dim var_270 As String
  Dim var_268 As Variant
  Dim var_274 As String
  Dim var_278 As String
  Dim unk_59EE7B As Connection15
  Dim var_27C As Variant
  Dim var_280 As Variant
  Dim var_284 As Variant
  Dim var_B4 As Double
  Dim var_CC As Variant
  Dim var_BC As Double
  Dim var_C4 As Variant
  Dim var_DC As Double
  Dim var_E4 As Variant
  Dim var_FC As Double
  Dim var_D4 As Variant
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_10C As Variant
  Dim var_184 As Double
  Dim var_18C As Double
  Dim var_194 As Double
  Dim var_124 As Variant
  Dim var_13C As Double
  Dim var_12C As Double
  Dim var_134 As Double
  Dim var_14C As Double
  Dim var_154 As Double
  Dim var_16C As Double
  Dim var_144 As Double
  Dim var_15C As Double
  Dim var_164 As Double
  Dim var_174 As Double
  Dim var_17C As Double
  Dim var_19C As Double
  Dim var_1A4 As Double
  Dim var_1AC As Double
  Dim var_26C As String
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_2C4 As TextBox
  Dim var_2FC As Label
  Dim var_358 As Variant
  Dim var_3C4 As Variant
  Dim var_454 As Variant
  Dim var_F14 As Double
  Dim var_468 As Variant
  Dim var_F1C As Double
  Dim var_7DC As Variant
  Dim var_F24 As Double
  Dim var_7F0 As Variant
  Dim var_F2C As Double
  Dim var_894 As Variant
  Dim var_944 As MaskEdBox
  Dim var_954 As Variant
  Dim var_9BC As TextBox
  Dim var_A08 As TextBox
  Dim var_A54 As TextBox
  Dim var_F34 As Double
  Dim var_AF8 As TextBox
  Dim var_F3C As Double
  Dim var_B64 As Variant
  Dim var_D9C As Variant
  Dim var_D7C As String
  Dim var_E14 As TextBox
  Dim var_E60 As TextBox
  Dim var_2B0 As String
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_2D8 As Variant
  Dim var_2E8 As Variant
  Dim var_2F8 As Variant
  Dim var_340 As Variant
  Dim var_350 As Variant
  Dim var_37C As Variant
  Dim var_3E8 As Variant
  Dim var_408 As Variant
  Dim var_438 As Variant
  Dim var_47C As Variant
  Dim var_49C As Variant
  Dim var_4AC As Variant
  Dim var_4BC As Variant
  Dim var_4CC As Variant
  Dim var_4DC As Variant
  Dim var_4FC As Variant
  Dim var_50C As Variant
  Dim var_52C As Variant
  Dim var_53C As Variant
  Dim var_54C As Variant
  Dim var_57C As Variant
  Dim var_58C As Variant
  Dim var_59C As Variant
  Dim var_5BC As Variant
  Dim var_5DC As Variant
  Dim var_5FC As Variant
  Dim var_60C As Variant
  Dim var_62C As Variant
  Dim var_63C As Variant
  Dim var_66C As Variant
  Dim var_67C As Variant
  Dim var_68C As Variant
  Dim var_6BC As Variant
  Dim var_6DC As Variant
  Dim var_6FC As Variant
  Dim var_71C As Variant
  Dim var_72C As Variant
  Dim var_75C As Variant
  Dim var_78C As Variant
  Dim var_79C As Variant
  Dim var_804 As Variant
  Dim var_814 As Variant
  Dim var_88C As Variant
  Dim var_8C4 As Variant
  Dim var_92C As Variant
  Dim var_974 As Variant
  Dim var_9A4 As Variant
  Dim var_A1C As Variant
  Dim var_A2C As Variant
  Dim var_A98 As Variant
  Dim var_AE0 As Variant
  Dim var_B2C As Variant
  Dim var_CA4 As Variant
  Dim var_CE4 As Variant
  Dim var_CF4 As Variant
  Dim var_DFC As Variant
  Dim var_E84 As Variant
  Dim var_ED4 As Variant
  Dim var_3C0 As Variant
  Dim var_44C As Variant
  Dim var_450 As MSHFlexGrid
  Dim var_45C As MSHFlexGrid
  Dim var_464 As Variant
  Dim var_7D0 As Variant
  Dim var_7D8 As MSHFlexGrid
  Dim var_F58 As Variant
  Dim var_7E4 As MSHFlexGrid
  Dim var_F9C As Variant
  Dim var_FBC As Variant
  Dim var_7EC As Variant
  Dim var_1000 As Variant
  Dim var_1020 As Variant
  Dim var_1064 As Variant
  Dim var_1084 As Variant
  Dim var_838 As MSHFlexGrid
  Dim var_1254 As Double
  Dim var_83C As MSHFlexGrid
  Dim var_125C As Double
  Dim var_890 As MSHFlexGrid
  Dim var_298 As String
  Dim var_300 As String
  Dim var_46C As String
  Dim var_7E0 As String
  Dim var_A0C As String
  Dim var_AFC As String
  Dim var_85C As Variant
  Dim var_90C As Variant
  Dim var_354 As Variant
  Dim var_9C0 As String
  Dim var_88 As Recordset15
  loc_1AB10C8: On Error Goto loc_1AB4BD1
  loc_1AB10D6: Set var_1B0 = Me.Txt
  loc_1AB10DC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1AB1105: If (Proc_6_27_EA61EC(var_1B4, "Voucher Date") = 0) Then
  loc_1AB1108:   Exit Sub
  loc_1AB1109: End If
  loc_1AB1114: Set var_1B0 = Me.Txt
  loc_1AB111A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B4)
  loc_1AB1143: If (Proc_6_27_EA61EC(var_1B4, "Voucher No") = 0) Then
  loc_1AB1146:   Exit Sub
  loc_1AB1147: End If
  loc_1AB1152: Set var_1B0 = Me.Txt
  loc_1AB1158: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B4)
  loc_1AB1181: If (Proc_6_27_EA61EC(var_1B4, "Party name") = 0) Then
  loc_1AB1184:   Exit Sub
  loc_1AB1185: End If
  loc_1AB1190: Set var_1B0 = Me.Txt
  loc_1AB1196: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1B4)
  loc_1AB11A7: Set var_1B8 = var_1B4
  loc_1AB11BF: If (Proc_6_27_EA61EC(var_1B8, "Booking No") = 0) Then
  loc_1AB11C2:   Exit Sub
  loc_1AB11C3: End If
  loc_1AB11CA: Set var_1B0 = Me.TxtGt
  loc_1AB11D0: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_1BE)
  loc_1AB11E2: Set var_1B4 = Me.TxtGt
  loc_1AB11E8: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1BE, var_1B8)
  loc_1AB120E: If (CDbl(Val(var_1B8.Text)) > CDbl(0)) Then
  loc_1AB1211:   var_1D0 = 1
  loc_1AB121A:   var_1F0 = 1
  loc_1AB1238:   var_220 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1AB123E:   var_230 = Trim(var_220)
  loc_1AB125A:   If (var_230 = vbNullString) Then
  loc_1AB1276:     MsgBox("Fill Item Name ", 0, var_220, var_230, var_250)
  loc_1AB1299:     Me.FGrid.Row = 1
  loc_1AB12A5:     Set var_1B0 = Me.FGrid
  loc_1AB12C9:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1AB12D1:     Exit Sub
  loc_1AB12D2:   End If
  loc_1AB12D2:   var_1D0 = 1
  loc_1AB12DB:   var_1F0 = 3
  loc_1AB12F9:   var_220 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1AB12FF:   var_230 = Trim(var_220)
  loc_1AB131B:   If (var_230 = vbNullString) Then
  loc_1AB1337:     MsgBox("Item Detail Required ", 0, var_220, var_230, var_250)
  loc_1AB135A:     Me.FGrid.Row = 1
  loc_1AB1366:     Set var_1B0 = Me.FGrid
  loc_1AB138A:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1AB1392:     Exit Sub
  loc_1AB1393:   End If
  loc_1AB1393: End If
  loc_1AB13B8: For var_254 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_254 'Integer
  loc_1AB13C2:   var_1D0 = CVar(CLng(var_92)) 'Long
  loc_1AB13CA:   var_1F0 = CVar(CLng(7)) 'Long
  loc_1AB13FA:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_1AB1401:     var_1D0 = CVar(CLng(var_92)) 'Long
  loc_1AB1409:     var_1F0 = CVar(CLng(5)) 'Long
  loc_1AB1435:     var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1AB1444:   Else
  loc_1AB1448:     var_1D0 = CVar(CLng(var_92)) 'Long
  loc_1AB1450:     var_1F0 = CVar(CLng(8)) 'Long
  loc_1AB145F:     var_210 = Me.FGrid.TextMatrix)
  loc_1AB146A:     var_1BC = CStr(var_210)
  loc_1AB147C:     var_AC = (var_AC + Val(var_1BC))
  loc_1AB1488:   End If
  loc_1AB148B: Next var_254 'Integer
  loc_1AB149C: Set var_1B0 = Me.TxtGt
  loc_1AB14A2: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1BE, var_92)
  loc_1AB14AD: For var_260 =  To var_1BE: 1 = var_260 'Integer
  loc_1AB14B9:   var_1E0 = 0
  loc_1AB14DF:   Set var_1B0 = Me.LblCap
  loc_1AB14E5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_210, -1)
  loc_1AB150E:   Set var_1B8 = Me.Txt
  loc_1AB1514:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_268, var_26C, var_280 & var_1BC & "' And V_Type='")
  loc_1AB151C:   var_1E0 = var_268.Tag
  loc_1AB1535:   unk_59EE7B.Execute var_284 & var_26C & "'", var_220, 
  loc_1AB153D:    = var_1B4.Tag.Fields
  loc_1AB1545:    = var_280.Item()
  loc_1AB154D:    = var_284.Value
  loc_1AB1587:   var_288 = Proc_6_38_E69628(var_220)
  loc_1AB1592:   If (var_288 = "Addition") Then
  loc_1AB15A2:     Set var_1B0 = Me.TxtGt
  loc_1AB15A8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4)
  loc_1AB15B0:     var_1BC = var_1B4.Text
  loc_1AB15C7:     var_B4 = (var_B4 + Val(var_1BC))
  loc_1AB15E1:     Set var_1B0 = Me.TxtPer
  loc_1AB15E7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC)
  loc_1AB15EF:     var_B4 = var_1B4.Text
  loc_1AB1606:     var_CC = (var_CC + Val(var_1BC))
  loc_1AB1616:   Else
  loc_1AB161E:     If (var_288 = "Deduction") Then
  loc_1AB162E:       Set var_1B0 = Me.TxtGt
  loc_1AB1634:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC)
  loc_1AB163C:       var_CC = var_1B4.Text
  loc_1AB1653:       var_BC = (var_BC + Val(var_1BC))
  loc_1AB166D:       Set var_1B0 = Me.TxtPer
  loc_1AB1673:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_BC)
  loc_1AB167B:       var_25C = var_1B4.Text
  loc_1AB1692:       var_C4 = (var_C4 + Val(var_1BC))
  loc_1AB16A2:     Else
  loc_1AB16AA:       If (var_288 = "Discount") Then
  loc_1AB16BA:         Set var_1B0 = Me.TxtGt
  loc_1AB16C0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_C4)
  loc_1AB16C8:         var_25C = var_1B4.Text
  loc_1AB16DF:         var_DC = (var_DC + Val(var_1BC))
  loc_1AB16F9:         Set var_1B0 = Me.TxtPer
  loc_1AB16FF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_DC)
  loc_1AB1707:         var_25C = var_1B4.Text
  loc_1AB171E:         var_E4 = (var_E4 + Val(var_1BC))
  loc_1AB172E:       Else
  loc_1AB1736:         If (var_288 = "Luxury Tax") Then
  loc_1AB1746:           Set var_1B0 = Me.TxtGt
  loc_1AB174C:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_E4)
  loc_1AB1754:           var_25C = var_1B4.Text
  loc_1AB176B:           var_FC = (var_FC + Val(var_1BC))
  loc_1AB1785:           Set var_1B0 = Me.TxtPer
  loc_1AB178B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_FC)
  loc_1AB1793:           var_25C = var_1B4.Text
  loc_1AB17AA:           var_D4 = (var_D4 + Val(var_1BC))
  loc_1AB17BA:         Else
  loc_1AB17C2:           If (var_288 = "Round Off") Then
  loc_1AB17D2:             Set var_1B0 = Me.TxtGt
  loc_1AB17D8:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_D4)
  loc_1AB17E0:             var_25C = var_1B4.Text
  loc_1AB17F7:             var_EC = (var_EC + Val(var_1BC))
  loc_1AB1811:             Set var_1B0 = Me.TxtPer
  loc_1AB1817:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_EC)
  loc_1AB181F:             var_25C = var_1B4.Text
  loc_1AB1836:             var_F4 = (var_F4 + Val(var_1BC))
  loc_1AB1846:           Else
  loc_1AB184E:             If (var_288 = "Sale Tax") Then
  loc_1AB185E:               Set var_1B0 = Me.TxtGt
  loc_1AB1864:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_F4)
  loc_1AB186C:               var_25C = var_1B4.Text
  loc_1AB1883:               var_FC = (var_FC + Val(var_1BC))
  loc_1AB189D:               Set var_1B0 = Me.TxtPer
  loc_1AB18A3:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_FC)
  loc_1AB18AB:               var_25C = var_1B4.Text
  loc_1AB18C2:               var_D4 = (var_D4 + Val(var_1BC))
  loc_1AB18D2:             Else
  loc_1AB18DA:               If (var_288 = "Service Charge") Then
  loc_1AB18EA:                 Set var_1B0 = Me.TxtGt
  loc_1AB18F0:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_D4)
  loc_1AB18F8:                 var_25C = var_1B4.Text
  loc_1AB190F:                 var_104 = (var_104 + Val(var_1BC))
  loc_1AB1929:                 Set var_1B0 = Me.TxtPer
  loc_1AB192F:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_104)
  loc_1AB1937:                 var_25C = var_1B4.Text
  loc_1AB194E:                 var_10C = (var_10C + Val(var_1BC))
  loc_1AB195E:               Else
  loc_1AB1966:                 If (var_288 = "Service Tax") Then
  loc_1AB1976:                   Set var_1B0 = Me.TxtGt
  loc_1AB197C:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_10C)
  loc_1AB1984:                   var_25C = var_1B4.Text
  loc_1AB199B:                   var_FC = (var_FC + Val(var_1BC))
  loc_1AB19B5:                   Set var_1B0 = Me.TxtPer
  loc_1AB19BB:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_FC)
  loc_1AB19C3:                   var_25C = var_1B4.Text
  loc_1AB19DA:                   var_D4 = (var_D4 + Val(var_1BC))
  loc_1AB19EA:                 Else
  loc_1AB19F2:                   If (var_288 = "CGST") Then
  loc_1AB1A02:                     Set var_1B0 = Me.TxtGt
  loc_1AB1A08:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_D4)
  loc_1AB1A10:                     var_25C = var_1B4.Text
  loc_1AB1A27:                     var_184 = (var_184 + Val(var_1BC))
  loc_1AB1A37:                   Else
  loc_1AB1A3F:                     If (var_288 = "SGST") Then
  loc_1AB1A4F:                       Set var_1B0 = Me.TxtGt
  loc_1AB1A55:                       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_184)
  loc_1AB1A5D:                       var_25C = var_1B4.Text
  loc_1AB1A74:                       var_18C = (var_18C + Val(var_1BC))
  loc_1AB1A84:                     Else
  loc_1AB1A8C:                       If (var_288 = "IGST") Then
  loc_1AB1A9C:                         Set var_1B0 = Me.TxtGt
  loc_1AB1AA2:                         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_18C)
  loc_1AB1AAA:                         var_25C = var_1B4.Text
  loc_1AB1AC1:                         var_194 = (var_194 + Val(var_1BC))
  loc_1AB1ACE:                         GoTo loc_1AB1AD1
  loc_1AB1AD1:                         ' Referenced from:                     1AB1ACE
  loc_1AB1AD1:                       End If
  loc_1AB1AD1:                     End If
  loc_1AB1AD1:                   End If
  loc_1AB1AD1:                 End If
  loc_1AB1AD1:               End If
  loc_1AB1AD1:             End If
  loc_1AB1AD1:           End If
  loc_1AB1AD1:         End If
  loc_1AB1AD1:       End If
  loc_1AB1AD1:     End If
  loc_1AB1AD1:   End If
  loc_1AB1AD4: Next var_260 'Integer
  loc_1AB1AE5: Set var_1B0 = Me.TextGt
  loc_1AB1AEB: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1BE, var_92)
  loc_1AB1AF6: For var_28C =  To var_1BE: 1 = var_28C 'Integer
  loc_1AB1B02:   var_1E0 = 0
  loc_1AB1B28:   Set var_1B0 = Me.LableCap
  loc_1AB1B2E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_210, -1)
  loc_1AB1B36:   var_27C = var_1B4.Tag
  loc_1AB1B57:   Set var_1B8 = Me.Txt
  loc_1AB1B5D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_268, var_26C, var_280 & var_1BC & "' And V_Type='")
  loc_1AB1B65:   var_1E0 = var_268.Tag
  loc_1AB1B7E:   unk_59EE7B.Execute var_284 & var_26C & "'", var_220, 
  loc_1AB1B86:    = var_27C.Fields
  loc_1AB1B8E:    = var_280.Item()
  loc_1AB1B96:    = var_284.Value
  loc_1AB1BD0:   var_290 = Proc_6_38_E69628(var_220)
  loc_1AB1BDB:   If (var_290 = "Addition") Then
  loc_1AB1BEB:     Set var_1B0 = Me.TextGt
  loc_1AB1BF1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4)
  loc_1AB1BF9:     var_1BC = var_1B4.Text
  loc_1AB1C10:     var_124 = (var_124 + Val(var_1BC))
  loc_1AB1C2A:     Set var_1B0 = Me.TextPer
  loc_1AB1C30:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC)
  loc_1AB1C38:     var_124 = var_1B4.Text
  loc_1AB1C4F:     var_13C = (var_13C + Val(var_1BC))
  loc_1AB1C5F:   Else
  loc_1AB1C67:     If (var_290 = "Deduction") Then
  loc_1AB1C77:       Set var_1B0 = Me.TextGt
  loc_1AB1C7D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC)
  loc_1AB1C85:       var_13C = var_1B4.Text
  loc_1AB1C9C:       var_12C = (var_12C + Val(var_1BC))
  loc_1AB1CB6:       Set var_1B0 = Me.TextPer
  loc_1AB1CBC:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_12C)
  loc_1AB1CC4:       var_25C = var_1B4.Text
  loc_1AB1CDB:       var_134 = (var_134 + Val(var_1BC))
  loc_1AB1CEB:     Else
  loc_1AB1CF3:       If (var_290 = "Discount") Then
  loc_1AB1D03:         Set var_1B0 = Me.TextGt
  loc_1AB1D09:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_134)
  loc_1AB1D11:         var_25C = var_1B4.Text
  loc_1AB1D28:         var_14C = (var_14C + Val(var_1BC))
  loc_1AB1D42:         Set var_1B0 = Me.TextPer
  loc_1AB1D48:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_14C)
  loc_1AB1D50:         var_25C = var_1B4.Text
  loc_1AB1D67:         var_154 = (var_154 + Val(var_1BC))
  loc_1AB1D77:       Else
  loc_1AB1D7F:         If (var_290 = "Luxury Tax") Then
  loc_1AB1D8F:           Set var_1B0 = Me.TextGt
  loc_1AB1D95:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_154)
  loc_1AB1D9D:           var_25C = var_1B4.Text
  loc_1AB1DB4:           var_16C = (var_16C + Val(var_1BC))
  loc_1AB1DCE:           Set var_1B0 = Me.TextPer
  loc_1AB1DD4:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_16C)
  loc_1AB1DDC:           var_25C = var_1B4.Text
  loc_1AB1DF3:           var_144 = (var_144 + Val(var_1BC))
  loc_1AB1E03:         Else
  loc_1AB1E0B:           If (var_290 = "Round Off") Then
  loc_1AB1E1B:             Set var_1B0 = Me.TextGt
  loc_1AB1E21:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_144)
  loc_1AB1E29:             var_25C = var_1B4.Text
  loc_1AB1E40:             var_15C = (var_15C + Val(var_1BC))
  loc_1AB1E5A:             Set var_1B0 = Me.TextPer
  loc_1AB1E60:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_15C)
  loc_1AB1E68:             var_25C = var_1B4.Text
  loc_1AB1E7F:             var_164 = (var_164 + Val(var_1BC))
  loc_1AB1E8F:           Else
  loc_1AB1E97:             If (var_290 = "Sale Tax") Then
  loc_1AB1EA7:               Set var_1B0 = Me.TextGt
  loc_1AB1EAD:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_164)
  loc_1AB1EB5:               var_25C = var_1B4.Text
  loc_1AB1ECC:               var_16C = (var_16C + Val(var_1BC))
  loc_1AB1EE6:               Set var_1B0 = Me.TextPer
  loc_1AB1EEC:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_16C)
  loc_1AB1EF4:               var_25C = var_1B4.Text
  loc_1AB1F0B:               var_144 = (var_144 + Val(var_1BC))
  loc_1AB1F1B:             Else
  loc_1AB1F23:               If (var_290 = "Service Charge") Then
  loc_1AB1F33:                 Set var_1B0 = Me.TextGt
  loc_1AB1F39:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_144)
  loc_1AB1F41:                 var_25C = var_1B4.Text
  loc_1AB1F58:                 var_174 = (var_174 + Val(var_1BC))
  loc_1AB1F72:                 Set var_1B0 = Me.TextPer
  loc_1AB1F78:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_174)
  loc_1AB1F80:                 var_25C = var_1B4.Text
  loc_1AB1F97:                 var_17C = (var_17C + Val(var_1BC))
  loc_1AB1FA7:               Else
  loc_1AB1FAF:                 If (var_290 = "Service Tax") Then
  loc_1AB1FBF:                   Set var_1B0 = Me.TextGt
  loc_1AB1FC5:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_17C)
  loc_1AB1FCD:                   var_25C = var_1B4.Text
  loc_1AB1FE4:                   var_16C = (var_16C + Val(var_1BC))
  loc_1AB1FFE:                   Set var_1B0 = Me.TextPer
  loc_1AB2004:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_16C)
  loc_1AB200C:                   var_25C = var_1B4.Text
  loc_1AB2023:                   var_144 = (var_144 + Val(var_1BC))
  loc_1AB2033:                 Else
  loc_1AB203B:                   If (var_290 = "CGST") Then
  loc_1AB204B:                     Set var_1B0 = Me.TxtGt
  loc_1AB2051:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_144)
  loc_1AB2059:                     var_25C = var_1B4.Text
  loc_1AB2070:                     var_19C = (var_19C + Val(var_1BC))
  loc_1AB2080:                   Else
  loc_1AB2088:                     If (var_290 = "SGST") Then
  loc_1AB2098:                       Set var_1B0 = Me.TxtGt
  loc_1AB209E:                       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_19C)
  loc_1AB20A6:                       var_25C = var_1B4.Text
  loc_1AB20BD:                       var_1A4 = (var_1A4 + Val(var_1BC))
  loc_1AB20CD:                     Else
  loc_1AB20D5:                       If (var_290 = "IGST") Then
  loc_1AB20E5:                         Set var_1B0 = Me.TxtGt
  loc_1AB20EB:                         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_1A4)
  loc_1AB20F3:                         var_25C = var_1B4.Text
  loc_1AB210A:                         var_1AC = (var_1AC + Val(var_1BC))
  loc_1AB2117:                         GoTo loc_1AB211A
  loc_1AB211A:                         ' Referenced from:                     1AB2117
  loc_1AB211A:                       End If
  loc_1AB211A:                     End If
  loc_1AB211A:                   End If
  loc_1AB211A:                 End If
  loc_1AB211A:               End If
  loc_1AB211A:             End If
  loc_1AB211A:           End If
  loc_1AB211A:         End If
  loc_1AB211A:       End If
  loc_1AB211A:     End If
  loc_1AB211A:   End If
  loc_1AB211D: Next var_28C 'Integer
  loc_1AB2129: Set var_1B0 = Me.TextGt
  loc_1AB212F: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_1BE)
  loc_1AB2141: Set var_1B4 = Me.TextGt
  loc_1AB2147: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1BE, var_1B8)
  loc_1AB215C: var_25C = Val(var_1B8.Text)
  loc_1AB2166: var_A4 = (var_A4 + var_25C)
  loc_1AB2178: var_9C = vbNullString
  loc_1AB217E: Call Proc_124_83_11332DC(var_1BE, var_A4)
  loc_1AB2189: If (var_1BE = 0) Then
  loc_1AB218C:   Exit Sub
  loc_1AB218D: End If
  loc_1AB2198: Set var_1B0 = Me.TxtGrid
  loc_1AB219E: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_1B4)
  loc_1AB21A6: var_1B4.Visible = False
  loc_1AB21B2: Call Proc_124_87_F294C0(var_25C)
  loc_1AB21C5: Set var_1B0 = Me.Txt
  loc_1AB21CB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1B4)
  loc_1AB21F3: If (Proc_6_91_EF38D0(CDate(var_1B4.Text)) = 0) Then
  loc_1AB2201:   Set var_1B0 = Me.Txt
  loc_1AB2207:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1AB220F:   var_1B4.SetFocus
  loc_1AB221B:   Exit Sub
  loc_1AB221C: End If
  loc_1AB2220: Set var_1B0 = Me.TopCtrl1
  loc_1AB2226: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1B4)
  loc_1AB222E: var_1BC = CStr()
  loc_1AB223F: If (var_1BC = "Add") Then
  loc_1AB226F:   Set var_1B0 = Me.Txt
  loc_1AB2275:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, "Select Count(*) From HallSale1 Where DocID='", var_210, -1)
  loc_1AB227D:   var_1B8 = var_1B4.Text
  loc_1AB2296:   unk_59EE7B.Execute var_268 & var_1BC & "'", 0, var_27C
  loc_1AB229E:   var_220 = var_1B8.Fields
  loc_1AB22A6:    = var_268.Item()
  loc_1AB22AE:    = var_27C.Value
  loc_1AB22DB:   If (var_220 > 0) Then
  loc_1AB22E4:     Call Proc_124_90_11C0734(MemVar_1F95044)
  loc_1AB22F7:     Set var_1B0 = Me.Txt
  loc_1AB22FD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4)
  loc_1AB2305:     var_1B4.Text = var_1BC
  loc_1AB2314:     Exit Sub
  loc_1AB2315:   End If
  loc_1AB2318: Else
  loc_1AB2335:   var_1B4 = Me.Fields.Item("DocID")
  loc_1AB233D:   var_210 = var_1B4.Value
  loc_1AB2346:   var_1BC = CStr(var_210)
  loc_1AB234C:   global_104 = var_1BC
  loc_1AB235D: End If
  loc_1AB235F: var_8A = &HFF
  loc_1AB236B: unk_59EE7B.BeginTrans var_294
  loc_1AB238E: Set var_1B0 = Me.Txt
  loc_1AB2394: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, "Delete From SunTran Where DocID='", var_210)
  loc_1AB239C: -1 = var_1B4.Text
  loc_1AB23B5: unk_59EE7B.Execute var_1B8 & var_1BC & "'", var_8A, var_1BC
  loc_1AB23ED: Set var_1B0 = Me.Txt
  loc_1AB23F3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, "Delete From SunTranH Where DocID='")
  loc_1AB23FB: var_210 = var_1B4.Text
  loc_1AB2404: var_264 = -1 & var_1BC
  loc_1AB2414: unk_59EE7B.Execute var_1B8 & var_1BC & "'", var_1B8, 
  loc_1AB244C: Set var_1B0 = Me.Txt
  loc_1AB2452: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, "Delete From HallStock Where DocID='")
  loc_1AB245A: var_210 = var_1B4.Text
  loc_1AB2463: var_264 = -1 & var_1BC
  loc_1AB2473: unk_59EE7B.Execute var_1B8 & var_1BC & "'", var_1B8, 
  loc_1AB24AB: Set var_1B0 = Me.Txt
  loc_1AB24B1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, "Delete From HallSale1 Where DocID='")
  loc_1AB24B9: var_210 = var_1B4.Text
  loc_1AB24C2: var_264 = -1 & var_1BC
  loc_1AB24D2: unk_59EE7B.Execute var_1B8 & var_1BC & "'", var_1B8, 
  loc_1AB250A: Set var_1B0 = Me.Txt
  loc_1AB2510: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, "Delete From HallSale2 Where DocID='")
  loc_1AB2518: var_210 = var_1B4.Text
  loc_1AB2521: var_264 = -1 & var_1BC
  loc_1AB2531: unk_59EE7B.Execute var_1B8 & var_1BC & "'", var_1B8, 
  loc_1AB2559: Set var_1B0 = Me.Txt
  loc_1AB255F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4)
  loc_1AB257A: Set var_1B8 = Me.Txt
  loc_1AB2580: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_268)
  loc_1AB2595: var_25C = Val(var_268.Text)
  loc_1AB25A3: Set var_27C = Me.Txt
  loc_1AB25A9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_280)
  loc_1AB25B8: Proc_6_7_F26918(var_220, CVar(var_280))
  loc_1AB25CB: Set var_284 = Me.Txt
  loc_1AB25D1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_2C4)
  loc_1AB25FE: Set var_354 = Me.Txt
  loc_1AB2604: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_358)
  loc_1AB261F: Set var_3C0 = Me.Txt
  loc_1AB2625: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_3C4)
  loc_1AB2639: Set var_44C = Me.TextGt
  loc_1AB263F: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_1BE)
  loc_1AB2651: Set var_450 = Me.TextGt
  loc_1AB2657: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1BE, var_454)
  loc_1AB266C: var_F14 = Val(var_454.Text)
  loc_1AB2676: Set var_45C = Me.TxtGt
  loc_1AB267C: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_45E, var_F14)
  loc_1AB268E: Set var_464 = Me.TxtGt
  loc_1AB2694: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_45E, var_468)
  loc_1AB26A9: var_F1C = Val(var_468.Text)
  loc_1AB26B3: Set var_7D0 = Me.TextGt
  loc_1AB26B9: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_7D2, var_F1C)
  loc_1AB26CB: Set var_7D8 = Me.TextGt
  loc_1AB26D1: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_7D2, var_7DC)
  loc_1AB26E6: var_F24 = Val(var_7DC.Text)
  loc_1AB26F0: Set var_7E4 = Me.TxtGt
  loc_1AB26F6: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_7E6, var_F24)
  loc_1AB2708: Set var_7EC = Me.TxtGt
  loc_1AB270E: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_7E6, var_7F0)
  loc_1AB2723: var_F2C = Val(var_7F0.Text)
  loc_1AB2731: Set var_838 = Me.Txt
  loc_1AB2737: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_83C)
  loc_1AB2746: Proc_6_7_F26918(var_85C, CVar(var_83C))
  loc_1AB2754: Set var_890 = Me.txtM
  loc_1AB275A: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_894)
  loc_1AB2762: var_8A4 = var_894.defaultText
  loc_1AB2776: Set var_8E8 = Me.Txt
  loc_1AB277C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_8EC, var_8A4)
  loc_1AB278B: Proc_6_7_F26918(var_90C, CVar(var_8EC))
  loc_1AB2799: Set var_940 = Me.txtM
  loc_1AB279F: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_944)
  loc_1AB27A7: var_954 = var_944.defaultText
  loc_1AB27BE: Set var_9B8 = Me.Txt
  loc_1AB27C4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_9BC, var_9C0)
  loc_1AB27DF: Set var_A04 = Me.Txt
  loc_1AB27E5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_A08, var_A0C)
  loc_1AB2800: Set var_A50 = Me.Txt
  loc_1AB2806: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A54)
  loc_1AB281B: var_F34 = Val(var_A54.Text)
  loc_1AB2829: Set var_A9C = Me.Txt
  loc_1AB282F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AA0)
  loc_1AB283E: Proc_6_7_F26918(var_AC0, CVar(var_AA0))
  loc_1AB2851: Set var_AF4 = Me.Txt
  loc_1AB2857: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_AF8, var_AFC)
  loc_1AB286C: var_F3C = Val(var_AFC)
  loc_1AB287A: Set var_B40 = Me.Txt
  loc_1AB2880: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_B44)
  loc_1AB2891: var_B64 = CVar(Proc_6_38_E69628(CVar(var_B44), var_F3C)) 'String
  loc_1AB28A7: Set var_BA8 = Me.Txt
  loc_1AB28AD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_BAC)
  loc_1AB28BC: Proc_6_39_E7D3A0(var_BCC, CVar(var_BAC))
  loc_1AB28CC: Set var_C00 = Me.Txt
  loc_1AB28D2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_C04)
  loc_1AB28E1: Proc_6_39_E7D3A0(var_C24, CVar(var_C04))
  loc_1AB28ED: Set var_C58 = Me.TextGt
  loc_1AB28F3: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_C5A)
  loc_1AB2902: Set var_C60 = Me.TextGt
  loc_1AB2908: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C5A, var_C64)
  loc_1AB2917: Proc_6_39_E7D3A0(var_C84, CVar(var_C64))
  loc_1AB2927: Proc_6_7_F26918(var_D34, MemVar_1F950EC)
  loc_1AB2930: Set var_D68 = Me.TopCtrl1
  loc_1AB2936: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_25C)
  loc_1AB2959: var_D7C = CStr(var_D78)
  loc_1AB297B: Set var_E10 = Me.Txt
  loc_1AB2981: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_E14)
  loc_1AB299C: Set var_E5C = Me.Txt
  loc_1AB29A2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_E60)
  loc_1AB29D1: var_26C = "Insert Into HallSale1(" & "Docid,VNo,VDate,VType,VPrefix,Site_Code,BookDocId," & "Party,RestCode,Total," & "DiscPer,DiscAmt,NonTaxable,Taxable,Tax,CGST,SGST,IGST,ServiceCharge,RoundOff,AddAmt,DEDAMT,NetAmt,FrBookDate,FrBookTime,ToBookDate,ToBookTime,"
  loc_1AB29DF: var_274 = var_26C & "CrCardNo,CrCardHolder,RectNo,Rectdate,ADVANCE,Remarks,NoOfPax,RatePerPax,TotalPerCover," & "U_Name, U_EntDt, U_AE, Narration, Narration1,LogSite_Code) "
  loc_1AB29E6: var_278 = var_274 & " Values("
  loc_1AB2A07: var_2B0 = var_278 & "'" & var_1B4.Text & "'," & CStr(var_25C)
  loc_1AB2A4D: var_340 = CVar(var_2B0 & ",") & var_220 & ",'" & CVar(var_2C4.Tag) & "','" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F95070) 
  loc_1AB2AA6: var_47C = CVar((var_F14 + var_F1C)) 'Double
  loc_1AB2AB3: var_4AC = var_340 & "','" & CVar(var_358.Tag) & "'," & "'" & CVar(var_3C4.Text) & "','" & CVar(global_56) & "'," & var_47C & "," 
  loc_1AB2ABE: var_4BC = CVar((var_154 + var_E4)) 'Double
  loc_1AB2AD6: var_4FC = CVar((var_14C + var_DC)) 'Double
  loc_1AB2AEE: var_53C = CVar((var_11C + var_AC)) 'Double
  loc_1AB2B06: var_57C = CVar((var_114 + var_A4)) 'Double
  loc_1AB2B1E: var_5BC = CVar((var_16C + var_FC)) 'Double
  loc_1AB2B36: var_5FC = CVar((var_19C + var_184)) 'Double
  loc_1AB2B4E: var_63C = CVar((var_1A4 + var_18C)) 'Double
  loc_1AB2B66: var_67C = CVar((var_1AC + var_194)) 'Double
  loc_1AB2B6A: var_68C = var_4AC & var_4BC & "," & var_4FC & "," & var_53C & "," & var_57C & "," & var_5BC & "," & var_5FC & "," & var_63C & "," & var_67C 
  loc_1AB2B7E: var_6BC = CVar((var_174 + var_104)) 'Double
  loc_1AB2B96: var_6FC = CVar((var_15C + var_EC)) 'Double
  loc_1AB2BB7: var_75C = CVar((var_124 + var_B4)) 'Double
  loc_1AB2BCF: var_79C = CVar((var_12C + var_BC)) 'Double
  loc_1AB2BE7: var_804 = CVar((var_F24 + var_A08.Text)) 'Double
  loc_1AB2C04: var_88C = var_68C & "," & var_6BC & "," & var_6FC & "," & vbNullString & var_75C & "," & var_79C & "," & var_804 & "," & var_85C & ",'" 
  loc_1AB2C62: var_A2C = var_88C & CVar(CStr(var_8A4)) & "'," & var_90C & ",'" & CVar(CStr(var_9BC.Text)) & "'," & "'" & CVar(var_9C0) & "','" & CVar(var_A0C) 
  loc_1AB2C7F: var_A98 = var_A2C & "'," & CVar(var_AF8.Text) & "," 
  loc_1AB2CF6: var_CF4 = var_A98 & var_AC0 & "," & CVar(var_F3C) & ",'" & Trim(var_B64) & "'," & var_BCC & "," & var_C24 & "," & var_C84 & "," & "'" & CVar(MemVar_1F950C8) 
  loc_1AB2D3C: var_E84 = var_CF4 & "'," & var_D34 & ",'" & IIf((var_D7C = "Add"), "A", "E") & "','" & CVar(var_E14.Text) & "','" & CVar(var_E60.Text) 
  loc_1AB2D66: unk_59EE7B.Execute CStr(var_E84 & "','" & CVar(MemVar_1F95078) & "')"), var_F08, -1
  loc_1AB2F19: For var_F40 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_F40 'Integer
  loc_1AB2F23:   var_1D0 = CVar(CLng(var_92)) 'Long
  loc_1AB2F2B:   var_1F0 = CVar(CLng(1)) 'Long
  loc_1AB2F4B:   var_230 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1AB2F72:   Set var_1B4 = Me.FGrid
  loc_1AB2FB1:   If CBool(CVar(CLng(3)) And (CDbl(Val(CStr(var_1B4.TextMatrix)))) <> CDbl(0))) Then
  loc_1AB2FC2:     Set var_1B0 = Me.Txt
  loc_1AB2FC8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_278, CVar(CLng(var_92)), (var_230 <> vbNullString))
  loc_1AB2FD0:     var_1F0 = var_1B4.Text
  loc_1AB2FD9:     var_1D0 = CVar(CLng(var_92)) 'Long
  loc_1AB3003:     var_25C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AB3014:     Set var_268 = Me.Txt
  loc_1AB301A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_27C, var_2B0, var_25C, CVar(CLng(0)))
  loc_1AB3022:     var_1D0 = var_27C.Tag
  loc_1AB3047:     Set var_284 = Me.Txt
  loc_1AB304D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_2C4, var_9C0)
  loc_1AB3055:     var_1D0 = var_2C4.Text
  loc_1AB3062:     var_F14 = Val(var_9C0)
  loc_1AB3070:     Set var_2FC = Me.Txt
  loc_1AB3076:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_354, var_F14)
  loc_1AB3085:     Proc_6_7_F26918(var_230, CVar(var_354))
  loc_1AB3098:     Set var_358 = Me.Txt
  loc_1AB309E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_3C0, var_D7C)
  loc_1AB30A6:     1 = var_3C0.Text
  loc_1AB30AF:     var_438 = CVar(CLng(var_92)) 'Long
  loc_1AB30B7:     var_49C = CVar(CLng(9)) 'Long
  loc_1AB30D6:     var_4FC = CVar(CLng(var_92)) 'Long
  loc_1AB30DE:     var_53C = CVar(CLng(&HD)) 'Long
  loc_1AB30FD:     var_59C = CVar(CLng(var_92)) 'Long
  loc_1AB3105:     var_5DC = CVar(CLng(&H13)) 'Long
  loc_1AB3124:     var_63C = CVar(CLng(var_92)) 'Long
  loc_1AB312C:     var_67C = CVar(CLng(&HE)) 'Long
  loc_1AB3135:     Set var_454 = Me.FGrid
  loc_1AB313B:     var_4CC = var_454.TextMatrix)
  loc_1AB314B:     var_6DC = CVar(CLng(var_92)) 'Long
  loc_1AB3153:     var_71C = CVar(CLng(&HA)) 'Long
  loc_1AB3172:     var_79C = CVar(CLng(var_92)) 'Long
  loc_1AB317A:     var_804 = CVar(CLng(3)) 'Long
  loc_1AB3183:     Set var_464 = Me.FGrid
  loc_1AB31A3:     var_92C = CVar(CLng(var_92)) 'Long
  loc_1AB31AB:     var_9A4 = CVar(CLng(4)) 'Long
  loc_1AB31D4:     var_AE0 = CVar(CLng(var_92)) 'Long
  loc_1AB31DC:     var_B2C = CVar(CLng(5)) 'Long
  loc_1AB31E5:     Set var_7D0 = Me.FGrid
  loc_1AB3205:     var_CA4 = CVar(CLng(var_92)) 'Long
  loc_1AB320D:     var_CE4 = CVar(CLng(6)) 'Long
  loc_1AB3236:     var_D9C = CVar(CLng(var_92)) 'Long
  loc_1AB323E:     var_DFC = CVar(CLng(7)) 'Long
  loc_1AB3247:     Set var_7DC = Me.FGrid
  loc_1AB3267:     var_ED4 = CVar(CLng(var_92)) 'Long
  loc_1AB326F:     var_F58 = CVar(CLng(&HB)) 'Long
  loc_1AB3298:     var_F9C = CVar(CLng(var_92)) 'Long
  loc_1AB32A0:     var_FBC = CVar(CLng(&HC)) 'Long
  loc_1AB32A9:     Set var_7EC = Me.FGrid
  loc_1AB32C9:     var_1000 = CVar(CLng(var_92)) 'Long
  loc_1AB32D1:     var_1020 = CVar(CLng(&H15)) 'Long
  loc_1AB32FA:     var_1064 = CVar(CLng(var_92)) 'Long
  loc_1AB3302:     var_1084 = CVar(CLng(&H16)) 'Long
  loc_1AB3324:     var_1254 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AB333C:     Set var_83C = Me.FGrid
  loc_1AB3355:     var_125C = Val(CStr(var_83C.TextMatrix)))
  loc_1AB3373:     var_974 = Me.FGrid.TextMatrix)
  loc_1AB338A:     Proc_6_7_F26918(var_A2C, MemVar_1F950EC, var_974, CVar(CLng(2)), CVar(CLng(var_92)), var_125C, CVar(CLng(8)), CVar(CLng(var_92)))
  loc_1AB3393:     Set var_894 = Me.TopCtrl1
  loc_1AB3399:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1254)
  loc_1AB33EB:     var_264 = "Insert Into HallStock(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,Party,Item,DiscApp,SChrgApp,RoundOff,"
  loc_1AB33F9:     var_270 = var_264 & "UNIT,QtyIss,Rate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,SChrgPer,SChrgAmt,Total,Remarks," & "U_Name,U_EntDt,U_AE,LogSite_Code) "
  loc_1AB3444:     var_46C = var_270 & "Values(" & "'" & var_278 & "'," & CStr(var_25C) & ",'" & var_2B0 & "','" & Me.LblVPrefix.Caption & "','"
  loc_1AB346C:     var_250 = CVar(var_46C & MemVar_1F95070 & "'," & vbNullString & CStr(var_F14) & ",") 'String
  loc_1AB34B8:     var_37C = var_250 & var_230 & ",'" & CVar(global_56) & "','" & CVar(var_D7C) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1AB34F4:     var_50C = var_37C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_4CC)) 
  loc_1AB34FD:     var_52C = var_50C & "','" 
  loc_1AB352E:     var_62C = var_52C & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & vbNullString & CVar(Val(CStr(var_464.TextMatrix)))) & "," 
  loc_1AB3539:     var_66C = var_62C & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1AB357C:     var_78C = var_66C & "," & vbNullString & CVar(Val(CStr(var_7D0.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & vbNullString 
  loc_1AB3590:     var_814 = var_78C & CVar(Val(CStr(var_7DC.TextMatrix)))) & "," 
  loc_1AB35C3:     var_8C4 = var_814 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_7EC.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1AB3624:     var_A1C = var_8C4 & "," & CVar(var_1254) & "," & CVar(var_125C) & ",'" & CVar(CStr(var_974)) & "'," & "'" & CVar(MemVar_1F950C8) & "'," 
  loc_1AB3665:     unk_59EE7B.Execute CStr(var_A1C & var_A2C & ",'" & IIf((CStr(var_A98) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_B64, -1
  loc_1AB37A1:   End If
  loc_1AB37A4: Next var_F40 'Integer
  loc_1AB37CE: For var_1260 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_92 = var_1260 'Integer
  loc_1AB37D8:   var_1D0 = CVar(CLng(var_92)) 'Long
  loc_1AB37E0:   var_1F0 = CVar(CLng(2)) 'Long
  loc_1AB3827:   Set var_1B4 = Me.FGCat
  loc_1AB3838:   var_1BC = CStr(var_1B4.TextMatrix))
  loc_1AB3866:   If CBool(CVar(CLng(6)) And (CDbl(Val(var_1BC)) <> CDbl(0))) Then
  loc_1AB3877:     Set var_1B0 = Me.Txt
  loc_1AB387D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, CVar(CLng(var_92)))
  loc_1AB3885:     (Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) = var_1B4.Text
  loc_1AB38B8:     var_25C = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1AB38D0:     Set var_268 = Me.FGCat
  loc_1AB38D6:     var_220 = var_268.TextMatrix)
  loc_1AB38E9:     var_F14 = Val(CStr(var_220))
  loc_1AB390C:     Set var_280 = Me.Txt
  loc_1AB3912:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_284, var_46C, var_F14, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1AB3927:     var_F1C = Val(var_46C)
  loc_1AB3935:     Set var_2C4 = Me.Txt
  loc_1AB393B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2FC, var_F1C, CVar(CLng(1)))
  loc_1AB394A:     Proc_6_7_F26918(var_250, CVar(var_2FC), CVar(CLng(var_92)))
  loc_1AB3953:     var_49C = CVar(CLng(var_92)) 'Long
  loc_1AB395B:     var_4DC = CVar(CLng(2)) 'Long
  loc_1AB3964:     Set var_354 = Me.FGCat
  loc_1AB397A:     var_53C = CVar(CLng(var_92)) 'Long
  loc_1AB3982:     var_57C = CVar(CLng(4)) 'Long
  loc_1AB39A4:     var_F24 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1AB39BC:     Set var_3C0 = Me.FGCat
  loc_1AB39D5:     var_F2C = Val(CStr(var_3C0.TextMatrix)))
  loc_1AB3A06:     var_F34 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1AB3A14:     Proc_6_7_F26918(var_4CC, MemVar_1F950EC, var_F34, CVar(CLng(6)), CVar(CLng(var_92)), var_F2C, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_1AB3A1D:     Set var_44C = Me.TopCtrl1
  loc_1AB3A23:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_F24)
  loc_1AB3A55:     var_58C = IIf((CStr(var_52C) = "Add"), "A", "E")
  loc_1AB3A6E:     var_264 = "Insert Into HallSale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_1AB3AB3:     var_300 = var_264 & var_1BC & "'," & CStr(var_284.Text) & "," & CStr(var_F14) & ",'" & global_132 & "','"
  loc_1AB3ACF:     var_7E0 = var_300 & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "',"
  loc_1AB3B1B:     var_350 = CVar(var_7E0 & CStr(var_F1C) & ",") & var_250 & ",'" & CVar(global_56) & "','" & CVar(CStr(var_354.TextMatrix))) & "'," 
  loc_1AB3B7A:     var_50C = var_350 & CVar(var_F24) & "," & CVar(var_F2C) & "," & CVar(var_F34) & ",'" & CVar(MemVar_1F950C8) & "'," & var_4CC & ",'" 
  loc_1AB3BAB:     unk_59EE7B.Execute CStr(var_50C & var_58C & "','N','" & CVar(MemVar_1F95078) & "')"), var_62C, -1
  loc_1AB3C55:   End If
  loc_1AB3C58: Next var_1260 'Integer
  loc_1AB3C69: Set var_1B0 = Me.TxtGt
  loc_1AB3C6F: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1BE, var_92)
  loc_1AB3C7A: For var_1264 =  To var_1BE: 1 = var_1264 'Integer
  loc_1AB3C8E:   Set var_1B0 = Me.Txt
  loc_1AB3C94:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4)
  loc_1AB3CAF:   Set var_1B8 = Me.Txt
  loc_1AB3CB5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_268)
  loc_1AB3CD0:   Set var_27C = Me.Txt
  loc_1AB3CD6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_280)
  loc_1AB3CF9:   Set var_284 = Me.Txt
  loc_1AB3CFF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2C4)
  loc_1AB3D0E:   Proc_6_7_F26918(var_220, CVar(var_2C4))
  loc_1AB3D20:   Set var_2FC = Me.LblCap
  loc_1AB3D26:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_354)
  loc_1AB3D40:   Set var_358 = Me.TxtPer
  loc_1AB3D46:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_3C0)
  loc_1AB3D5B:   var_F14 = Val(var_3C0.Tag)
  loc_1AB3D6B:   Set var_3C4 = Me.LblCap
  loc_1AB3D71:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_44C, var_300)
  loc_1AB3D8B:   Set var_450 = Me.LblAt
  loc_1AB3D91:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_454)
  loc_1AB3DAB:   Set var_45C = Me.TxtGt
  loc_1AB3DB1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_464)
  loc_1AB3DCB:   Set var_468 = Me.TxtPer
  loc_1AB3DD1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7D0)
  loc_1AB3DE6:   var_F1C = Val(var_7D0.Text)
  loc_1AB3DF6:   Set var_7D8 = Me.TxtGt
  loc_1AB3DFC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7DC, var_46C)
  loc_1AB3E11:   var_F24 = Val(var_46C)
  loc_1AB3E21:   Set var_7E4 = Me.LblDummy
  loc_1AB3E27:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7EC, var_7E0)
  loc_1AB3E3C:   var_F2C = Val(var_7E0)
  loc_1AB3E4A:   Proc_6_7_F26918(var_52C, MemVar_1F950EC)
  loc_1AB3E53:   Set var_7F0 = Me.TopCtrl1
  loc_1AB3E59:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_F2C)
  loc_1AB3E9B:   Set var_838 = Me.Txt
  loc_1AB3EA1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_83C)
  loc_1AB3EB0:   Proc_6_7_F26918(var_66C, CVar(var_83C))
  loc_1AB3EC2:   Set var_890 = Me.LblDummy
  loc_1AB3EC8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_894)
  loc_1AB3EE9:   var_264 = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LogSite_Code) Values ('" & var_1B4.Text
  loc_1AB3F3D:   var_2E8 = CVar(var_264 & "'," & CStr(var_92) & ",'" & var_268.Tag & "'," & CStr(Val(var_280.Text)) & ",") & var_220 & ",'" & CVar(var_354.Tag) 
  loc_1AB3F93:   var_3E8 = var_2E8 & "'," & CVar(var_44C.Caption) & ",'" & CVar(var_300) & "','" & CVar(var_454.Tag) & "','" & CVar(var_464.Tag) & "'," 
  loc_1AB3FE9:   var_54C = var_3E8 & CVar(var_7DC.Text) & "," & CVar(var_7EC.Caption) & "," & CVar(var_F2C) & ",'" & CVar(MemVar_1F950C8) & "'," & var_52C 
  loc_1AB4032:   var_72C = var_54C & ",'" & IIf((CStr(var_58C) = "Add"), "A", "E") & "'," & var_66C & ",'" & CVar(var_894.Tag) & "','" & CVar(global_56) 
  loc_1AB406F:   unk_59EE7B.Execute CStr(var_72C & "','N','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_814, -1
  loc_1AB4142: Next var_1264 'Integer
  loc_1AB4153: Set var_1B0 = Me.TextGt
  loc_1AB4159: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1BE, var_92)
  loc_1AB4164: For var_1268 =  To var_1BE: 1 = var_1268 'Integer
  loc_1AB4178:   Set var_1B0 = Me.Txt
  loc_1AB417E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4)
  loc_1AB4199:   Set var_1B8 = Me.Txt
  loc_1AB419F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_268)
  loc_1AB41BA:   Set var_27C = Me.Txt
  loc_1AB41C0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_280)
  loc_1AB41E3:   Set var_284 = Me.Txt
  loc_1AB41E9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2C4)
  loc_1AB41F8:   Proc_6_7_F26918(var_220, CVar(var_2C4))
  loc_1AB420A:   Set var_2FC = Me.LableCap
  loc_1AB4210:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_354)
  loc_1AB422A:   Set var_358 = Me.TextPer
  loc_1AB4230:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_3C0)
  loc_1AB4245:   var_F14 = Val(var_3C0.Tag)
  loc_1AB4255:   Set var_3C4 = Me.LableCap
  loc_1AB425B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_44C, var_300)
  loc_1AB4275:   Set var_450 = Me.LableAt
  loc_1AB427B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_454)
  loc_1AB4295:   Set var_45C = Me.TextGt
  loc_1AB429B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_464)
  loc_1AB42B5:   Set var_468 = Me.TextPer
  loc_1AB42BB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7D0)
  loc_1AB42D0:   var_F1C = Val(var_7D0.Text)
  loc_1AB42E0:   Set var_7D8 = Me.TextGt
  loc_1AB42E6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7DC, var_46C)
  loc_1AB42FB:   var_F24 = Val(var_46C)
  loc_1AB430B:   Set var_7E4 = Me.LableDummy
  loc_1AB4311:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7EC, var_7E0)
  loc_1AB4326:   var_F2C = Val(var_7E0)
  loc_1AB4334:   Proc_6_7_F26918(var_52C, MemVar_1F950EC)
  loc_1AB433D:   Set var_7F0 = Me.TopCtrl1
  loc_1AB4343:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_F2C)
  loc_1AB4385:   Set var_838 = Me.Txt
  loc_1AB438B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_83C)
  loc_1AB439A:   Proc_6_7_F26918(var_66C, CVar(var_83C))
  loc_1AB43AC:   Set var_890 = Me.LableDummy
  loc_1AB43B2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_894)
  loc_1AB43D3:   var_264 = "Insert Into SunTranH (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LogSite_Code) Values ('" & var_1B4.Text
  loc_1AB43E2:   var_270 = CStr(var_92)
  loc_1AB43ED:   var_298 = var_264 & "'," & var_270 & ",'"
  loc_1AB4430:   var_2F8 = CVar(var_298 & var_268.Tag & "'," & CStr(Val(var_280.Text)) & ",") & var_220 & ",'" & CVar(var_354.Tag) & "'," 
  loc_1AB4488:   var_408 = var_2F8 & CVar(var_44C.Caption) & ",'" & CVar(var_300) & "','" & CVar(var_454.Tag) & "','" & CVar(var_464.Tag) & "'," & CVar(var_7DC.Text) 
  loc_1AB44E3:   var_60C = var_408 & "," & CVar(var_7EC.Caption) & "," & CVar(var_F2C) & ",'" & CVar(MemVar_1F950C8) & "'," & var_52C & ",'" & IIf((CStr(var_58C) = "Add"), "A", "E") 
  loc_1AB4538:   var_78C = var_60C & "'," & var_66C & ",'" & CVar(var_894.Tag) & "','" & CVar(global_56) & "','N','" & CVar(MemVar_1F95070) & "','" 
  loc_1AB4559:   unk_59EE7B.Execute CStr(var_78C & CVar(MemVar_1F95078) & "')"), var_814, -1
  loc_1AB462C: Next var_1268 'Integer
  loc_1AB4635: Set var_1B0 = Me.TopCtrl1
  loc_1AB463B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1AB4654: If (CStr() = "Add") Then
  loc_1AB466B:   var_1BC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1AB4691:   Set var_1B0 = Me.Txt
  loc_1AB4697:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B4, var_270, var_1BC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='")
  loc_1AB469F:   var_2D8 = var_1B4.Tag
  loc_1AB46A8:   var_278 = -1 & var_270
  loc_1AB46AF:   var_230 = CVar(var_268.Tag & "' And VP.Date_From<=") 'String
  loc_1AB46C0:   Set var_1B8 = Me.Txt
  loc_1AB46C6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_268, var_298)
  loc_1AB46CE:   var_230 = var_268.Text
  loc_1AB46DC:   Proc_6_7_F26918(var_220, CVar(var_298))
  loc_1AB46FB:   unk_59EE7B.Execute CStr(var_27C & var_220 & " Order By VP.Date_From DESC"), , 
  loc_1AB4706:   Set var_88 = var_27C
  loc_1AB473C:   var_294 = var_88.RecordCount
  loc_1AB474A:   If (var_294 > 0) Then
  loc_1AB475B:     Set var_1B0 = Me.Txt
  loc_1AB4761:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B4)
  loc_1AB4776:     var_25C = Val(var_1B4.Text)
  loc_1AB478B:     var_1B8 = var_88.Fields
  loc_1AB479B:     var_210 = var_1B8.Item("V_Type").Value
  loc_1AB47C6:     Proc_6_7_F26918(var_2D8, CVar(var_88.Fields.Item("Date_From")))
  loc_1AB47EB:     var_270 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_25C) & " Where (SITE_CODE='"
  loc_1AB4816:     var_250 = CVar(var_270 & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='") & var_210 & "' and Date_From=" 
  loc_1AB481D:     var_2E8 = var_250 & var_2D8 
  loc_1AB482B:     unk_59EE7B.Execute CStr(var_2E8), var_2F8, -1
  loc_1AB4865:   End If
  loc_1AB4865: End If
  loc_1AB4869: Set var_1B0 = Me.TopCtrl1
  loc_1AB486F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_284)
  loc_1AB4888: If (CStr(var_25C) = "Add") Then
  loc_1AB48AE:   var_1BC = "SELECT COUNT(*) FROM LASTVOU WHERE Logsite_Code='" & MemVar_1F95078
  loc_1AB48CC:   Call 0.Method_arg_50 (var_270, var_1BC & "' and UNAME='" & MemVar_1F950C8 & "' AND ENAME='", var_210, -1, var_1B0)
  loc_1AB48DC:   var_298 = var_1B4 & var_270 & "' "
  loc_1AB48E5:   unk_59EE7B.Execute var_298, 0, var_1B8
  loc_1AB48F5:    = var_1B4.Item()
  loc_1AB48FD:    = var_1B8.Value
  loc_1AB492E:   If (var_1B0.Fields > 0) Then
  loc_1AB494F:     Set var_1B0 = Me.Txt
  loc_1AB4955:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, "UPDATE LASTVOU  SET DOCID='")
  loc_1AB495D:     var_210 = var_1B4.Text
  loc_1AB4966:     var_264 = -1 & var_1BC
  loc_1AB497B:     var_274 = var_1BC & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F95078 & "' and UNAME='"
  loc_1AB4992:     Call 0.Method_arg_50 (var_298, var_274 & MemVar_1F950C8 & "' AND ENAME='")
  loc_1AB49AB:     unk_59EE7B.Execute var_1B8 & var_298 & "'  ", , 
  loc_1AB49D6:   Else
  loc_1AB49EA:     var_1BC = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8
  loc_1AB49FA:     Call 0.Method_arg_50 (var_1BC & "' and UNAME='", var_1BC & "','", var_2E8)
  loc_1AB4A03:     var_270 = -1 & var_1BC & "' and UNAME='"
  loc_1AB4A0A:     var_278 = var_1BC & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F95078 & "','"
  loc_1AB4A1B:     Set var_1B0 = Me.Txt
  loc_1AB4A21:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_274)
  loc_1AB4A29:     var_278 = var_1B4.Text
  loc_1AB4A4D:     var_1D0 = MemVar_1F950EC
  loc_1AB4A55:     Proc_6_7_F26918(var_210, var_1D0)
  loc_1AB4A87:     unk_59EE7B.Execute CStr(CVar(var_1B8 & var_274 & "','" & MemVar_1F95070 & "',") & var_210 & ",'A','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1AB4ABD:   End If
  loc_1AB4ABD: End If
  loc_1AB4AC3: unk_59EE7B.CommitTrans
  loc_1AB4ACA: var_8A = 0
  loc_1AB4AD6: unk_59EE7B.BeginTrans var_294
  loc_1AB4AE0: Call Proc_124_101_18C64B4(&HFF)
  loc_1AB4AEB: unk_59EE7B.CommitTrans
  loc_1AB4AF2: var_8A = 0
  loc_1AB4B03: Set var_1B0 = Me.Txt
  loc_1AB4B09: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC)
  loc_1AB4B11: var_8A = var_1B4.Text
  loc_1AB4B25: var_8A = 0
  loc_1AB4B33: Me.Requery -1
  loc_1AB4B5D: Me.Find "SearchCode ='" & "SearchCode ='" & var_1BC & "'", 0, 1
  loc_1AB4B6D: Set var_1B0 = Me.TopCtrl1
  loc_1AB4B73: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1D0)
  loc_1AB4B8C: If (CStr(var_8A) = "Add") Then
  loc_1AB4B8F:   Call TopCtrl1_UnknownEvent_A()
  loc_1AB4B94:   Exit Sub
  loc_1AB4B95: End If
  loc_1AB4BB8: Call Proc_124_86_10C6048(Proc_5_1_100EC1C("INI", Me), global_80)
  loc_1AB4BC3: Call Proc_124_82_18ACBAC(var_8A)
  loc_1AB4BCD: Set var_88 = Nothing
  loc_1AB4BD0: Exit Sub
  loc_1AB4BD1: ' Referenced from: 1AB10C8
  loc_1AB4BD7: If (var_8A = &HFF) Then
  loc_1AB4BE0:   unk_59EE7B.RollbackTrans
  loc_1AB4BE5: End If
  loc_1AB4BE5: Proc_6_60_E63754()
  loc_1AB4BEA: Exit Sub
End Sub

Private Sub CmdGeneInvoice_Click() 'EAD568
  'Data Table: 59EE5C
  Dim var_94 As TextBox
  loc_EAD4E5: Call Proc_124_105_E67D30(global_160)
  loc_EAD4F0: If (var_86 = 0) Then
  loc_EAD4F3:   Exit Sub
  loc_EAD4F4: End If
  loc_EAD502: Set var_90 = Me.Txt
  loc_EAD508: Call 0.Method_CmdGeneInvoice_Click0 (CInt(4), var_94)
  loc_EAD518: var_8C = var_94.Text
  loc_EAD52A: Proc_348_15_E114A0(var_8C, 0)
  loc_EAD554: Proc_348_21_12A8ED8(var_8C, Me.QrImage, global_160)
  loc_EAD560: Call Proc_124_104_FAAAD4(global_164, global_168)
  loc_EAD565: Exit Sub
End Sub

Private Sub CmdeInvoiceSql_Click() '1B10380
  'Data Table: 59EE5C
  Dim var_148 As Variant
  Dim var_140 As Variant
  Dim var_14C As String
  Dim var_150 As Variant
  Dim unk_59EE7B As Connection15
  Dim var_B0 As Double
  Dim var_B8 As Variant
  Dim var_C0 As Variant
  Dim var_C8 As Variant
  Dim var_D0 As Variant
  Dim var_D8 As Variant
  Dim var_E0 As Variant
  Dim var_E8 As Variant
  Dim var_F0 As Variant
  Dim var_F8 As Double
  Dim var_100 As Variant
  Dim var_108 As Variant
  Dim var_110 As Variant
  Dim var_184 As Variant
  Dim var_160 As String
  Dim var_88 As Variant
  Dim var_13C As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_144 As Variant
  Dim var_94 As Variant
  Dim var_170 As Variant
  Dim var_A6 As Variant
  Dim var_1E4 As Variant
  Dim var_174 As Variant
  Dim var_1E8 As Variant
  Dim var_1D4 As Variant
  Dim var_1EC As Variant
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_214 As Variant
  Dim var_218 As Variant
  Dim var_21C As String
  Dim var_220 As Variant
  Dim var_224 As Variant
  Dim var_98 As Variant
  Dim var_210 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_1C4 As Variant
  Dim var_264 As Variant
  Dim var_274 As Variant
  Dim var_2DC As Variant
  Dim var_344 As Variant
  Dim var_454 As Variant
  Dim var_47C As Variant
  Dim var_4BC As Variant
  Dim var_4E4 As Variant
  Dim var_56C As Variant
  Dim var_5B4 As Variant
  Dim var_5D4 As Variant
  Dim var_5F8 As Fields15
  Dim var_65C As Variant
  Dim var_6A4 As Variant
  Dim var_6EC As Variant
  Dim var_70C As Variant
  Dim var_754 As Variant
  Dim var_794 As Variant
  Dim var_AB4 As Variant
  Dim var_DAC As Variant
  Dim var_10CC As Variant
  Dim var_13A4 As Variant
  Dim var_167C As Variant
  Dim var_1954 As Variant
  Dim var_1C2C As Variant
  Dim var_21DC As Variant
  Dim var_24B4 As Variant
  Dim var_9E As Integer
  Dim var_424 As Variant
  Dim var_244 As Variant
  Dim var_284 As Variant
  Dim var_2EC As Variant
  Dim var_354 As Variant
  Dim var_3BC As Variant
  Dim var_48C As Variant
  Dim var_4F4 As Variant
  Dim var_55C As Variant
  Dim var_8C As Recordset15
  Dim var_118 As Double
  Dim var_120 As Double
  Dim var_128 As Double
  Dim var_130 As Double
  Dim var_138 As Double
  Dim var_9C As Recordset15
  Dim var_5C4 As Variant
  Dim var_62C As Variant
  Dim var_764 As Variant
  loc_1B0C5AC: var_148 = "Select S1.DocId,S1.VNo,S1.Vdate,S1.Vtype,'996334' As SACCode,S1.Narration,S1.NoOfPax,S1.RatePerPax,S1.Taxable,SG.Name AS CompanyName,SG.Add1 AS CompAdd1,SG.Add2 AS CompAdd2,SG.Add3 AS CompAdd3,C.CityName,ST.ShortName StateCode,ST.Name State,SG.GSTIN,SG.PIN,SG.Mobile,SG.Email,SG.LegalName,SG.TradeName " & "FROM HallSale1 S1 LEFT JOIN HallBook HB ON HB.DocId=S1.BookDocId LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode Left Join City C on SG.CityCode=C.CityCode Left Join State ST on C.State=ST.Code WHERE S1.DocId='"
  loc_1B0C5BD: Set var_13C = Me.Txt
  loc_1B0C5C3: Call 0.Method_CmdeInvoiceSql_Click0 (CInt(4), var_140, var_144, var_148)
  loc_1B0C5CB: var_170 = var_140.Text
  loc_1B0C5D4: var_14C = -1 & var_144
  loc_1B0C5E4: unk_59EE7B.Execute var_14C & "'", var_174, 
  loc_1B0C60C: var_B0 = CDbl(0)
  loc_1B0C612: var_B8 = CDbl(0)
  loc_1B0C618: var_C0 = CDbl(0)
  loc_1B0C61E: var_C8 = CDbl(0)
  loc_1B0C624: var_D0 = CDbl(0)
  loc_1B0C62A: var_D8 = CDbl(0)
  loc_1B0C630: var_E0 = CDbl(0)
  loc_1B0C636: var_E8 = CDbl(0)
  loc_1B0C63C: var_F0 = CDbl(0)
  loc_1B0C642: var_F8 = CDbl(0)
  loc_1B0C648: var_100 = CDbl(0)
  loc_1B0C64E: var_108 = CDbl(0)
  loc_1B0C654: var_110 = CDbl(0)
  loc_1B0C664: var_184 = "SELECT SM.Nature,ST.SValue,ST.Amt As Amount FROM SunTransaction AS ST INNER JOIN SundryMast SM ON ST.SunCode=SM.Code WHERE DocId='"
  loc_1B0C693: var_194 = var_184 & var_174.Fields.Item("DocID").Value 
  loc_1B0C6AA: unk_59EE7B.Execute CStr(var_194 & "' Order by SNo"), var_1D4, -1
  loc_1B0C6B5: Set var_94 = var_174
  loc_1B0C6CF: ' Referenced from: 1B0CCDA
  loc_1B0C6DE: If Not(var_94.EOF) Then
  loc_1B0C709:   var_1DC = Proc_6_38_E69628(CVar(var_94.Fields.Item("Nature")), var_174, var_110, var_108, var_100)
  loc_1B0C71A:   If (var_1DC = "Amount") Then
  loc_1B0C74A:     Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_B0), var_F8)
  loc_1B0C752:     var_1B4 = (var_F0 + var_194)
  loc_1B0C757:     var_B0 = CSng(var_194 & "' Order by SNo")
  loc_1B0C769:   Else
  loc_1B0C771:     If (var_1DC = "Net Amount") Then
  loc_1B0C7A1:       Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_B8))
  loc_1B0C7A9:       var_1B4 = (var_B0 + var_194)
  loc_1B0C7AE:       var_B8 = CSng(var_194 & "' Order by SNo")
  loc_1B0C7C0:     Else
  loc_1B0C7C8:       If (var_1DC = "Addition") Then
  loc_1B0C7F8:         Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_C0))
  loc_1B0C800:         var_1B4 = (var_B8 + var_194)
  loc_1B0C805:         var_C0 = CSng(var_194 & "' Order by SNo")
  loc_1B0C817:       Else
  loc_1B0C81F:         If (var_1DC = "Deduction") Then
  loc_1B0C84F:           Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_C8))
  loc_1B0C857:           var_1B4 = (var_C0 + var_194)
  loc_1B0C85C:           var_C8 = CSng(var_194 & "' Order by SNo")
  loc_1B0C86E:         Else
  loc_1B0C876:           If (var_1DC = "Discount") Then
  loc_1B0C8A6:             Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_D0))
  loc_1B0C8AE:             var_1B4 = (var_C8 + var_194)
  loc_1B0C8B3:             var_D0 = CSng(var_194 & "' Order by SNo")
  loc_1B0C8C5:           Else
  loc_1B0C8CD:             If Not (var_1DC = "Sale Tax") Then
  loc_1B0C8D8:               If (var_1DC = "Luxury Tax") Then
  loc_1B0C8DB:               End If
  loc_1B0C908:               Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_D8))
  loc_1B0C910:               var_1B4 = (var_D0 + var_194)
  loc_1B0C915:               var_D8 = CSng(var_194 & "' Order by SNo")
  loc_1B0C927:             Else
  loc_1B0C92F:               If (var_1DC = "Round Off") Then
  loc_1B0C95F:                 Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_E8))
  loc_1B0C967:                 var_1B4 = (var_D8 + var_194)
  loc_1B0C96C:                 var_E8 = CSng(var_194 & "' Order by SNo")
  loc_1B0C97E:               Else
  loc_1B0C986:                 If (var_1DC = "Service Charge") Then
  loc_1B0C9B6:                   Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_F0))
  loc_1B0C9BE:                   var_1B4 = (var_E8 + var_194)
  loc_1B0C9C3:                   var_F0 = CSng(var_194 & "' Order by SNo")
  loc_1B0C9D5:                 Else
  loc_1B0C9DD:                   If (var_1DC = "Service Tax") Then
  loc_1B0CA0D:                     Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_F8))
  loc_1B0CA15:                     var_1B4 = (var_F0 + var_194)
  loc_1B0CA1A:                     var_F8 = CSng(var_194 & "' Order by SNo")
  loc_1B0CA2C:                   Else
  loc_1B0CA34:                     If (var_1DC = "CGST") Then
  loc_1B0CA5D:                       Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), var_F8)
  loc_1B0CA77:                       If CBool(var_194 <> 0) Then
  loc_1B0CAA7:                         Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("SValue")), CVar(var_E0))
  loc_1B0CAAF:                         var_1B4 = (var_E8 + var_194)
  loc_1B0CAB4:                         var_E0 = CSng(var_194 & "' Order by SNo")
  loc_1B0CAC3:                       End If
  loc_1B0CAF0:                       Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_100))
  loc_1B0CAF8:                       var_1B4 = (var_E0 + var_194)
  loc_1B0CAFD:                       var_100 = CSng(var_194 & "' Order by SNo")
  loc_1B0CB0F:                     Else
  loc_1B0CB17:                       If (var_1DC = "SGST") Then
  loc_1B0CB40:                         Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")))
  loc_1B0CB5A:                         If CBool(var_194 <> 0) Then
  loc_1B0CB8A:                           Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("SValue")), CVar(var_E0))
  loc_1B0CB92:                           var_1B4 = (var_100 + var_194)
  loc_1B0CB97:                           var_E0 = CSng(var_194 & "' Order by SNo")
  loc_1B0CBA6:                         End If
  loc_1B0CBD3:                         Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_108))
  loc_1B0CBDB:                         var_1B4 = (var_E0 + var_194)
  loc_1B0CBE0:                         var_108 = CSng(var_194 & "' Order by SNo")
  loc_1B0CBF2:                       Else
  loc_1B0CBFA:                         If (var_1DC = "IGST") Then
  loc_1B0CC23:                           Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")))
  loc_1B0CC3D:                           If CBool(var_194 <> 0) Then
  loc_1B0CC6D:                             Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("SValue")), CVar(var_E0))
  loc_1B0CC75:                             var_1B4 = (var_108 + var_194)
  loc_1B0CC7A:                             var_E0 = CSng(var_194 & "' Order by SNo")
  loc_1B0CC89:                           End If
  loc_1B0CC8C:                           var_184 = CVar(var_110) 'Double
  loc_1B0CCB6:                           Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), var_184)
  loc_1B0CCBE:                           var_1B4 = (var_E0 + var_194)
  loc_1B0CCC3:                           var_110 = CSng(var_194 & "' Order by SNo")
  loc_1B0CCD2:                         End If
  loc_1B0CCD2:                       End If
  loc_1B0CCD2:                     End If
  loc_1B0CCD2:                   End If
  loc_1B0CCD2:                 End If
  loc_1B0CCD2:               End If
  loc_1B0CCD2:             End If
  loc_1B0CCD2:           End If
  loc_1B0CCD2:         End If
  loc_1B0CCD2:       End If
  loc_1B0CCD2:     End If
  loc_1B0CCD2:   End If
  loc_1B0CCD5:   var_94.MoveNext
  loc_1B0CCDA:   GoTo loc_1B0C6CF
  loc_1B0CCDD: End If
  loc_1B0CD04: If (((((var_D8 = CDbl(0)) And (var_F8 = CDbl(0))) And (var_100 = CDbl(0))) And (var_108 = CDbl(0))) And (var_110 = CDbl(0))) Then
  loc_1B0CD15:   var_160 = "This is Not a Tax Invoice"
  loc_1B0CD20:   MsgBox(var_160, &H10, var_194, var_194 & "' Order by SNo", var_1D4)
  loc_1B0CD35:   Set var_88 = Nothing
  loc_1B0CD3D:   Set var_94 = Nothing
  loc_1B0CD40:   Exit Sub
  loc_1B0CD41: End If
  loc_1B0CD45: Set var_98 = New 
  loc_1B0CD50: Set var_98 = Proc_96_103_1576B2C(var_98, var_110)
  loc_1B0CD55: var_A6 = &HFF
  loc_1B0CD61: unk_59EE7B.BeginTrans var_1E0
  loc_1B0CD66: ' Referenced from: 1B10352
  loc_1B0CD6C: var_1D6 = var_88.EOF
  loc_1B0CD75: If Not(var_1D6) Then
  loc_1B0CD7B:   Set var_1E4 = var_98 
  loc_1B0CD8A:   var_1E4.AddNew var_160, var_184
  loc_1B0CDB5:   var_1E4.Fields.Item("UserGSTIN").Value = CVar(MemVar_1F95154)
  loc_1B0CE04:   var_1E4.Fields.Item("DocId").Value = CVar(var_88.Fields.Item("DocID"))
  loc_1B0CE3A:   var_1E4.Fields.Item("TranDtls_TaxSch").Value = "GST"
  loc_1B0CE6B:   var_1E4.Fields.Item("TranDtls_SupTyp").Value = "B2B"
  loc_1B0CE9C:   var_1E4.Fields.Item("TranDtls_RegRev").Value = "N"
  loc_1B0CECD:   var_1E4.Fields.Item("TranDtls_EcmGstin").Value = vbNullString
  loc_1B0CEFE:   var_1E4.Fields.Item("TranDtls_IgstOnIntra").Value = "N"
  loc_1B0CF2F:   var_1E4.Fields.Item("DocDtls_Typ").Value = "INV"
  loc_1B0CF8C:   Proc_6_39_E7D3A0(CVar(var_88.Fields.Item("VNo")) & "' Order by SNo", CVar(var_88.Fields.Item("VNo")))
  loc_1B0CFA0:   var_1D4 = CVar(Proc_96_43_F99D14(Proc_6_38_E69628(CVar(var_88.Fields.Item("vType")), var_A6), CVar(var_88.Fields.Item("VNo")) & "' Order by SNo")) 'String
  loc_1B0CFC3:   var_1E4.Fields.Item("DocDtls_No").Value = var_1D4
  loc_1B0D02E:   var_1D4 = Format(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VDate")))), "dd/MM/yyyy")
  loc_1B0D056:   var_1E4.Fields.Item("DocDtls_Dt").Value = var_1D4
  loc_1B0D098:   var_1E4.Fields.Item("SellerDtls_Gstin").Value = CVar(MemVar_1F95154)
  loc_1B0D0CA:   var_1E4.Fields.Item("SellerDtls_LglNm").Value = CVar(MemVar_1F95188)
  loc_1B0D0FC:   var_1E4.Fields.Item("SellerDtls_TrdNm").Value = CVar(MemVar_1F9518C)
  loc_1B0D12E:   var_1E4.Fields.Item("SellerDtls_Addr1").Value = CVar(MemVar_1F95134)
  loc_1B0D160:   var_1E4.Fields.Item("SellerDtls_Addr2").Value = CVar(MemVar_1F95138)
  loc_1B0D192:   var_1E4.Fields.Item("SellerDtls_Loc").Value = CVar(MemVar_1F95184)
  loc_1B0D1C4:   var_1E4.Fields.Item("SellerDtls_Pin").Value = CVar(MemVar_1F95178)
  loc_1B0D1F6:   var_1E4.Fields.Item("SellerDtls_Stcd").Value = CVar(MemVar_1F95158)
  loc_1B0D228:   var_1E4.Fields.Item("SellerDtls_Ph").Value = CVar(MemVar_1F9517C)
  loc_1B0D25A:   var_1E4.Fields.Item("SellerDtls_Em").Value = CVar(MemVar_1F95180)
  loc_1B0D2B1:   var_1E4.Fields.Item("BuyerDtls_Gstin").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("GSTIN")), 1))
  loc_1B0D311:   var_1E4.Fields.Item("BuyerDtls_LglNm").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Legalname")), 1))
  loc_1B0D371:   var_1E4.Fields.Item("BuyerDtls_TrdNm").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TradeName"))))
  loc_1B0D3AC:   var_1E4.Fields.Item("BuyerDtls_Pos").Value = CVar(MemVar_1F95158)
  loc_1B0D403:   var_1E4.Fields.Item("BuyerDtls_Addr1").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CompAdd1"))))
  loc_1B0D463:   var_1E4.Fields.Item("BuyerDtls_Addr2").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CompAdd2"))))
  loc_1B0D4C3:   var_1E4.Fields.Item("BuyerDtls_Loc").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName"))))
  loc_1B0D523:   var_1E4.Fields.Item("BuyerDtls_Pin").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Pin"))))
  loc_1B0D583:   var_1E4.Fields.Item("BuyerDtls_Stcd").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("StateCode"))))
  loc_1B0D5E3:   var_1E4.Fields.Item("BuyerDtls_Ph").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Mobile"))))
  loc_1B0D620:   var_194 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Email")))) 'String
  loc_1B0D643:   var_1E4.Fields.Item("BuyerDtls_Em").Value = var_194
  loc_1B0D67E:   Proc_6_39_E7D3A0(var_194, CVar(var_88.Fields.Item("Taxable")))
  loc_1B0D69E:   var_1E8 = var_1E4.Fields.Item("ValDtls_AssVal")
  loc_1B0D6A6:   var_1E8.Value = var_194
  loc_1B0D6E2:   var_1E4.Fields.Item("ValDtls_CgstVal").Value = CVar(var_100)
  loc_1B0D715:   var_1E4.Fields.Item("ValDtls_SgstVal").Value = CVar(var_108)
  loc_1B0D748:   var_1E4.Fields.Item("ValDtls_IgstVal").Value = CVar(var_110)
  loc_1B0D77B:   var_1E4.Fields.Item("ValDtls_CesVal").Value = CVar(var_F8)
  loc_1B0D7AE:   var_1E4.Fields.Item("ValDtls_StCesVal").Value = CVar(var_D8)
  loc_1B0D7DF:   var_1E4.Fields.Item("ValDtls_Discount").Value = 0
  loc_1B0D7F2:   var_184 = CVar((var_F0 + var_C0)) 'Double
  loc_1B0D816:   var_1E4.Fields.Item("ValDtls_OthChrg").Value = 0
  loc_1B0D849:   var_1E4.Fields.Item("ValDtls_RndOffAmt").Value = CVar(var_E8)
  loc_1B0D87C:   var_1E4.Fields.Item("ValDtls_TotInvVal").Value = CVar(var_B8)
  loc_1B0D88F:   var_184 = CVar((var_B8 - var_E8)) 'Double
  loc_1B0D897:   var_160 = "ValDtls_TotInvValFc"
  loc_1B0D8B3:   var_1E4.Fields.Item(var_160).Value = CVar(var_B8)
  loc_1B0D8CA:   var_1E4.Update var_160, CVar(var_B8)
  loc_1B0D8D1:   Set var_1E4 = Nothing 
  loc_1B0D8DB:   var_200 = 0
  loc_1B0D937:   unk_59EE7B.Execute CStr("Select Count(*) From eInvoiceBill1 Where DocId='" & var_88.Fields.Item("DocID").Value & "' And Isnull(IRN,'')=''"), var_1D4, -1
  loc_1B0D93F:   var_174 = var_174.Fields
  loc_1B0D947:   var_200 = var_1E8.Item(var_1E8)
  loc_1B0D94F:   var_1EC = var_1EC.Value
  loc_1B0D976:   If CBool(var_210) Then
  loc_1B0D9CC:     unk_59EE7B.Execute CStr("Delete From eInvoiceBill1 Where DocId='" & var_88.Fields.Item("DocID").Value & "'"), var_1D4, -1
  loc_1B0DA24:     var_194 = "Delete From eInvoiceBill2 Where DocId='" & var_88.Fields.Item("DocID").Value 
  loc_1B0DA3B:     unk_59EE7B.Execute CStr(var_194 & "'"), var_1D4, -1
  loc_1B0DA57:   End If
  loc_1B0DA6B:   var_144 = "INSERT INTO eInvoiceBill1 ([UserGSTIN],[DocId],[TranDtls_TaxSch],[TranDtls_SupTyp],[TranDtls_RegRev],[TranDtls_EcmGstin],[TranDtls_IgstOnIntra],[DocDtls_Typ],[DocDtls_No],[DocDtls_Dt]" & ",[SellerDtls_Gstin],[SellerDtls_LglNm],[SellerDtls_TrdNm],[SellerDtls_Addr1],[SellerDtls_Addr2],[SellerDtls_Loc],[SellerDtls_Pin],[SellerDtls_Stcd],[SellerDtls_Ph],[SellerDtls_Em]"
  loc_1B0DA72:   var_148 = var_144 & ",[BuyerDtls_Gstin],[BuyerDtls_LglNm],[BuyerDtls_TrdNm],[BuyerDtls_Pos],[BuyerDtls_Addr1],[BuyerDtls_Addr2],[BuyerDtls_Loc],[BuyerDtls_Pin],[BuyerDtls_Stcd],[BuyerDtls_Ph],[BuyerDtls_Em]"
  loc_1B0DA79:   var_14C = var_148 & ",[DispDtls_Nm],[DispDtls_Addr1],[DispDtls_Addr2],[DispDtls_Loc],[DispDtls_Pin],[DispDtls_Stcd]"
  loc_1B0DA80:   var_150 = var_14C & ",[ShipDtls_Gstin],[ShipDtls_LglNm],[ShipDtls_TrdNm],[ShipDtls_Addr1],[ShipDtls_Addr2],[ShipDtls_Loc],[ShipDtls_Pin],[ShipDtls_Stcd]"
  loc_1B0DA87:   var_214 = var_150 & ",[ValDtls_AssVal],[ValDtls_Cgstval],[ValDtls_Sgstval],[ValDtls_Igstval],[ValDtls_Cesval],[ValDtls_StCesVal],[ValDtls_Discount],[ValDtls_OthChrg],[ValDtls_RndOffAmt],[ValDtls_TotInvVal],[ValDtls_TotInvValFc]"
  loc_1B0DA8E:   var_218 = var_214 & ",[RefDtls_InvRm],[RefDtls_DocPerdDtls_InvStDt],[RefDtls_DocPerdDtls_InvEndDt],[RefDtls_PrecDocDtls_InvNo],[RefDtls_PrecDocDtls_InvDt],[RefDtls_PrecDocDtls_OthRefNo]"
  loc_1B0DA95:   var_21C = var_218 & ",[RefDtls_ContrDtls_RecAdvRefr],[RefDtls_ContrDtls_RecAdvDt],[RefDtls_ContrDtls_TendRefr],[RefDtls_ContrDtls_Contrrefr],[RefDtls_ContrDtls_Extrefr],[RefDtls_ContrDtls_Projrefr],[RefDtls_ContrDtls_Porefr],[RefDtls_ContrDtls_PoRefDt]"
  loc_1B0DA9C:   var_220 = var_21C & ",[PayDtls_Nm],[PayDtls_AccDet],[PayDtls_Mode],[PayDtls_Fininsbr],[PayDtls_PayTerm],[PayDtls_PayInstr],[PayDtls_CrTrn],[PayDtls_DirDr],[PayDtls_CrDay],[PayDtls_PaidAmt],[PayDtls_Paymtdue]"
  loc_1B0DAA3:   var_224 = var_220 & ",[EwbDtls_TransId],[EwbDtls_TransName],[EwbDtls_Distance],[EwbDtls_TransDocNo],[EwbDtls_TransDocDt],[EwbDtls_VehNo],[EwbDtls_VehType],[EwbDtls_TransMode]) VALUES "
  loc_1B0DAAA:   var_1B4 = CVar(var_224 & "(") 'String
  loc_1B0DAB0:   var_160 = "UserGSTIN"
  loc_1B0DABC:   var_13C = var_98.Fields
  loc_1B0DAC4:   var_140 = var_13C.Item(var_160)
  loc_1B0DACC:   var_170 = CVar(var_140) 'Address
  loc_1B0DAD3:   Proc_6_17_EAAE40(var_194, var_170, var_1B4, var_25C8, -1)
  loc_1B0DADB:   var_1D4 = var_25CC & var_194 
  loc_1B0DADF:   var_184 = ","
  loc_1B0DAE4:   var_210 = var_1D4 & var_184 
  loc_1B0DAEB:   var_1A4 = "DocID"
  loc_1B0DAF7:   var_174 = var_98.Fields
  loc_1B0DAFF:   var_1E8 = var_174.Item(var_1A4)
  loc_1B0DB07:   var_234 = CVar(var_1E8) 'Address
  loc_1B0DB0E:   Proc_6_17_EAAE40(var_244, var_234, var_210, var_174)
  loc_1B0DB16:   var_254 = var_174 & var_244 
  loc_1B0DB1A:   var_1C4 = ","
  loc_1B0DB26:   var_200 = "TranDtls_TaxSch"
  loc_1B0DB32:   var_1EC = var_98.Fields
  loc_1B0DB3A:   var_1F0 = var_1EC.Item(var_200)
  loc_1B0DB42:   var_274 = CVar(var_1F0) 'Address
  loc_1B0DB49:   Proc_6_17_EAAE40(var_284, var_274, var_254 & var_1C4)
  loc_1B0DB7D:   var_2DC = CVar(var_98.Fields.Item("TranDtls_SupTyp")) 'Address
  loc_1B0DB84:   Proc_6_17_EAAE40(var_2EC, var_2DC)
  loc_1B0DBBF:   Proc_6_17_EAAE40(var_354, CVar(var_98.Fields.Item("TranDtls_RegRev")))
  loc_1B0DBFA:   Proc_6_17_EAAE40(var_3BC, CVar(var_98.Fields.Item("TranDtls_EcmGstin")))
  loc_1B0DC35:   Proc_6_17_EAAE40(var_424, CVar(var_98.Fields.Item("TranDtls_IgstOnIntra")))
  loc_1B0DC70:   Proc_6_17_EAAE40(var_48C, CVar(var_98.Fields.Item("DocDtls_Typ")))
  loc_1B0DCAB:   Proc_6_17_EAAE40(var_4F4, CVar(var_98.Fields.Item("DocDtls_No")))
  loc_1B0DCE6:   Proc_6_7_F26918(var_55C, CVar(var_98.Fields.Item("DocDtls_Dt")))
  loc_1B0DCEE:   var_56C = var_210 & var_284 & "," & var_2EC & "," & var_354 & "," & var_3BC & "," & var_424 & "," & var_48C & "," & var_4F4 & "," & var_55C 
  loc_1B0DD1A:   var_5B4 = CVar(var_98.Fields.Item("SellerDtls_Gstin")) 'Address
  loc_1B0DD21:   Proc_6_17_EAAE40(var_5C4, var_5B4)
  loc_1B0DD45:   var_5F8 = var_98.Fields
  loc_1B0DD5C:   Proc_6_17_EAAE40(var_62C, CVar(var_5F8.Item("SellerDtls_LglNm")))
  loc_1B0DD6D:   var_65C = var_56C & "," & var_5C4 & "," & var_62C & "," 
  loc_1B0DD97:   Proc_6_17_EAAE40(var_694, CVar(var_98.Fields.Item("SellerDtls_TrdNm")))
  loc_1B0DDD2:   Proc_6_17_EAAE40(var_6FC, CVar(var_98.Fields.Item("SellerDtls_Addr1")))
  loc_1B0DE0D:   Proc_6_17_EAAE40(var_764, CVar(var_98.Fields.Item("SellerDtls_Addr2")))
  loc_1B0DE1E:   var_794 = var_65C & var_694 & "," & var_6FC & "," & var_764 & "," 
  loc_1B0DE48:   Proc_6_17_EAAE40(var_7CC, CVar(var_98.Fields.Item("SellerDtls_Loc")))
  loc_1B0DE83:   Proc_6_17_EAAE40(var_834, CVar(var_98.Fields.Item("SellerDtls_Pin")))
  loc_1B0DEBE:   Proc_6_17_EAAE40(var_89C, CVar(var_98.Fields.Item("SellerDtls_Stcd")))
  loc_1B0DEF9:   Proc_6_17_EAAE40(var_904, CVar(var_98.Fields.Item("SellerDtls_Ph")))
  loc_1B0DF34:   Proc_6_17_EAAE40(var_96C, CVar(var_98.Fields.Item("SellerDtls_Em")))
  loc_1B0DF6F:   Proc_6_17_EAAE40(var_9D4, CVar(var_98.Fields.Item("BuyerDtls_Gstin")))
  loc_1B0DFAA:   Proc_6_17_EAAE40(var_A3C, CVar(var_98.Fields.Item("BuyerDtls_LglNm")))
  loc_1B0DFE5:   Proc_6_17_EAAE40(var_AA4, CVar(var_98.Fields.Item("BuyerDtls_TrdNm")))
  loc_1B0DFED:   var_AB4 = var_794 & var_7CC & "," & var_834 & "," & var_89C & "," & var_904 & "," & var_96C & "," & var_9D4 & "," & var_A3C & "," & var_AA4 
  loc_1B0E020:   Proc_6_17_EAAE40(var_B0C, CVar(var_98.Fields.Item("BuyerDtls_Pos")))
  loc_1B0E05B:   Proc_6_17_EAAE40(var_B74, CVar(var_98.Fields.Item("BuyerDtls_Addr1")))
  loc_1B0E096:   Proc_6_17_EAAE40(var_BDC, CVar(var_98.Fields.Item("BuyerDtls_Addr2")))
  loc_1B0E0D1:   Proc_6_17_EAAE40(var_C44, CVar(var_98.Fields.Item("BuyerDtls_Loc")))
  loc_1B0E10C:   Proc_6_17_EAAE40(var_CAC, CVar(var_98.Fields.Item("BuyerDtls_Pin")))
  loc_1B0E147:   Proc_6_17_EAAE40(var_D14, CVar(var_98.Fields.Item("BuyerDtls_Stcd")))
  loc_1B0E182:   Proc_6_17_EAAE40(var_D7C, CVar(var_98.Fields.Item("BuyerDtls_Ph")))
  loc_1B0E193:   var_DAC = var_AB4 & "," & var_B0C & "," & var_B74 & "," & var_BDC & "," & var_C44 & "," & var_CAC & "," & var_D14 & "," & var_D7C & "," 
  loc_1B0E1BD:   Proc_6_17_EAAE40(var_DE4, CVar(var_98.Fields.Item("BuyerDtls_Em")))
  loc_1B0E1F8:   Proc_6_17_EAAE40(var_E4C, CVar(var_98.Fields.Item("DispDtls_Nm")))
  loc_1B0E233:   Proc_6_17_EAAE40(var_EB4, CVar(var_98.Fields.Item("DispDtls_Addr1")))
  loc_1B0E26E:   Proc_6_17_EAAE40(var_F1C, CVar(var_98.Fields.Item("DispDtls_Addr2")))
  loc_1B0E2A9:   Proc_6_17_EAAE40(var_F84, CVar(var_98.Fields.Item("DispDtls_Loc")))
  loc_1B0E2E4:   Proc_6_17_EAAE40(var_FEC, CVar(var_98.Fields.Item("DispDtls_Pin")))
  loc_1B0E31F:   Proc_6_17_EAAE40(var_1054, CVar(var_98.Fields.Item("DispDtls_Stcd")))
  loc_1B0E35A:   Proc_6_17_EAAE40(var_10BC, CVar(var_98.Fields.Item("ShipDtls_Gstin")))
  loc_1B0E362:   var_10CC = var_DAC & var_DE4 & "," & var_E4C & "," & var_EB4 & "," & var_F1C & "," & var_F84 & "," & var_FEC & "," & var_1054 & "," & var_10BC 
  loc_1B0E395:   Proc_6_17_EAAE40(var_1124, CVar(var_98.Fields.Item("ShipDtls_LglNm")))
  loc_1B0E3D0:   Proc_6_17_EAAE40(var_118C, CVar(var_98.Fields.Item("ShipDtls_TrdNm")))
  loc_1B0E40B:   Proc_6_17_EAAE40(var_11F4, CVar(var_98.Fields.Item("ShipDtls_Addr1")))
  loc_1B0E446:   Proc_6_17_EAAE40(var_125C, CVar(var_98.Fields.Item("ShipDtls_Addr2")))
  loc_1B0E481:   Proc_6_17_EAAE40(var_12C4, CVar(var_98.Fields.Item("ShipDtls_Loc")))
  loc_1B0E4BC:   Proc_6_17_EAAE40(var_132C, CVar(var_98.Fields.Item("ShipDtls_Pin")))
  loc_1B0E4F7:   Proc_6_17_EAAE40(var_1394, CVar(var_98.Fields.Item("ShipDtls_Stcd")))
  loc_1B0E4FF:   var_13A4 = var_10CC & "," & var_1124 & "," & var_118C & "," & var_11F4 & "," & var_125C & "," & var_12C4 & "," & var_132C & "," & var_1394 
  loc_1B0E532:   Proc_6_39_E7D3A0(var_13FC, CVar(var_98.Fields.Item("ValDtls_AssVal")))
  loc_1B0E56D:   Proc_6_39_E7D3A0(var_1464, CVar(var_98.Fields.Item("ValDtls_CgstVal")))
  loc_1B0E5A8:   Proc_6_39_E7D3A0(var_14CC, CVar(var_98.Fields.Item("ValDtls_SgstVal")))
  loc_1B0E5E3:   Proc_6_39_E7D3A0(var_1534, CVar(var_98.Fields.Item("ValDtls_IgstVal")))
  loc_1B0E61E:   Proc_6_39_E7D3A0(var_159C, CVar(var_98.Fields.Item("ValDtls_CesVal")))
  loc_1B0E659:   Proc_6_39_E7D3A0(var_1604, CVar(var_98.Fields.Item("ValDtls_StCesVal")))
  loc_1B0E694:   Proc_6_39_E7D3A0(var_166C, CVar(var_98.Fields.Item("ValDtls_Discount")))
  loc_1B0E69C:   var_167C = var_13A4 & "," & var_13FC & "," & var_1464 & "," & var_14CC & "," & var_1534 & "," & var_159C & "," & var_1604 & "," & var_166C 
  loc_1B0E6CF:   Proc_6_39_E7D3A0(var_16D4, CVar(var_98.Fields.Item("ValDtls_OthChrg")))
  loc_1B0E70A:   Proc_6_39_E7D3A0(var_173C, CVar(var_98.Fields.Item("ValDtls_RndOffAmt")))
  loc_1B0E745:   Proc_6_39_E7D3A0(var_17A4, CVar(var_98.Fields.Item("ValDtls_TotInvVal")))
  loc_1B0E780:   Proc_6_39_E7D3A0(var_180C, CVar(var_98.Fields.Item("ValDtls_TotInvValFc")))
  loc_1B0E7BB:   Proc_6_17_EAAE40(var_1874, CVar(var_98.Fields.Item("RefDtls_InvRm")))
  loc_1B0E7F6:   Proc_6_7_F26918(var_18DC, CVar(var_98.Fields.Item("RefDtls_DocPerdDtls_InvStDt")))
  loc_1B0E831:   Proc_6_7_F26918(var_1944, CVar(var_98.Fields.Item("RefDtls_DocPerdDtls_InvEndDt")))
  loc_1B0E839:   var_1954 = var_167C & "," & var_16D4 & "," & var_173C & "," & var_17A4 & "," & var_180C & "," & var_1874 & "," & var_18DC & "," & var_1944 
  loc_1B0E86C:   Proc_6_17_EAAE40(var_19AC, CVar(var_98.Fields.Item("RefDtls_PrecDocDtls_InvNo")))
  loc_1B0E8A7:   Proc_6_7_F26918(var_1A14, CVar(var_98.Fields.Item("RefDtls_PrecDocDtls_InvDt")))
  loc_1B0E8E2:   Proc_6_17_EAAE40(var_1A7C, CVar(var_98.Fields.Item("RefDtls_PrecDocDtls_OthRefNo")))
  loc_1B0E91D:   Proc_6_17_EAAE40(var_1AE4, CVar(var_98.Fields.Item("RefDtls_ContrDtls_RecAdvRefr")))
  loc_1B0E958:   Proc_6_7_F26918(var_1B4C, CVar(var_98.Fields.Item("RefDtls_ContrDtls_RecAdvDt")))
  loc_1B0E993:   Proc_6_17_EAAE40(var_1BB4, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Tendrefr")))
  loc_1B0E9CE:   Proc_6_17_EAAE40(var_1C1C, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Contrrefr")))
  loc_1B0E9D6:   var_1C2C = var_1954 & "," & var_19AC & "," & var_1A14 & "," & var_1A7C & "," & var_1AE4 & "," & var_1B4C & "," & var_1BB4 & "," & var_1C1C 
  loc_1B0EA09:   Proc_6_17_EAAE40(var_1C84, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Extrefr")))
  loc_1B0EA44:   Proc_6_17_EAAE40(var_1CEC, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Projrefr")))
  loc_1B0EA7F:   Proc_6_17_EAAE40(var_1D54, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Porefr")))
  loc_1B0EABA:   Proc_6_7_F26918(var_1DBC, CVar(var_98.Fields.Item("RefDtls_ContrDtls_PoRefDt")))
  loc_1B0EAF5:   Proc_6_17_EAAE40(var_1E24, CVar(var_98.Fields.Item("PayDtls_Nm")))
  loc_1B0EB30:   Proc_6_17_EAAE40(var_1E8C, CVar(var_98.Fields.Item("PayDtls_Accdet")))
  loc_1B0EB6B:   Proc_6_17_EAAE40(var_1EF4, CVar(var_98.Fields.Item("PayDtls_Mode")))
  loc_1B0EB73:   var_1F04 = var_1C2C & "," & var_1C84 & "," & var_1CEC & "," & var_1D54 & "," & var_1DBC & "," & var_1E24 & "," & var_1E8C & "," & var_1EF4 
  loc_1B0EBA6:   Proc_6_17_EAAE40(var_1F5C, CVar(var_98.Fields.Item("PayDtls_Fininsbr")))
  loc_1B0EBE1:   Proc_6_17_EAAE40(var_1FC4, CVar(var_98.Fields.Item("PayDtls_Payterm")))
  loc_1B0EC1C:   Proc_6_17_EAAE40(var_202C, CVar(var_98.Fields.Item("PayDtls_Payinstr")))
  loc_1B0EC57:   Proc_6_17_EAAE40(var_2094, CVar(var_98.Fields.Item("PayDtls_Crtrn")))
  loc_1B0EC92:   Proc_6_17_EAAE40(var_20FC, CVar(var_98.Fields.Item("PayDtls_Dirdr")))
  loc_1B0ECCD:   Proc_6_39_E7D3A0(var_2164, CVar(var_98.Fields.Item("PayDtls_Crday")))
  loc_1B0ED08:   Proc_6_39_E7D3A0(var_21CC, CVar(var_98.Fields.Item("PayDtls_Paidamt")))
  loc_1B0ED10:   var_21DC = var_1F04 & "," & var_1F5C & "," & var_1FC4 & "," & var_202C & "," & var_2094 & "," & var_20FC & "," & var_2164 & "," & var_21CC 
  loc_1B0ED43:   Proc_6_39_E7D3A0(var_2234, CVar(var_98.Fields.Item("PayDtls_Paymtdue")))
  loc_1B0ED7E:   Proc_6_17_EAAE40(var_229C, CVar(var_98.Fields.Item("EwbDtls_TransId")))
  loc_1B0EDB9:   Proc_6_17_EAAE40(var_2304, CVar(var_98.Fields.Item("EwbDtls_TransName")))
  loc_1B0EDF4:   Proc_6_39_E7D3A0(var_236C, CVar(var_98.Fields.Item("EwbDtls_Distance")))
  loc_1B0EE2F:   Proc_6_17_EAAE40(var_23D4, CVar(var_98.Fields.Item("EwbDtls_TransDocNo")))
  loc_1B0EE6A:   Proc_6_7_F26918(var_243C, CVar(var_98.Fields.Item("EwbDtls_TransDocDt")))
  loc_1B0EEA5:   Proc_6_17_EAAE40(var_24A4, CVar(var_98.Fields.Item("EwbDtls_VehNo")))
  loc_1B0EEAD:   var_24B4 = var_21DC & "," & var_2234 & "," & var_229C & "," & var_2304 & "," & var_236C & "," & var_23D4 & "," & var_243C & "," & var_24A4 
  loc_1B0EEE0:   Proc_6_17_EAAE40(var_250C, CVar(var_98.Fields.Item("EwbDtls_VehType")))
  loc_1B0EF1B:   Proc_6_17_EAAE40(var_2574, CVar(var_98.Fields.Item("EwbDtls_TransMode")))
  loc_1B0EF3A:   unk_59EE7B.Execute CStr(var_24B4 & "," & var_250C & "," & var_2574 & ")"), var_E0, 
  loc_1B0F2DF:   var_B0 = CDbl(0)
  loc_1B0F2E5:   var_B8 = CDbl(0)
  loc_1B0F2EB:   var_C0 = CDbl(0)
  loc_1B0F2F1:   var_C8 = CDbl(0)
  loc_1B0F2F7:   var_D0 = CDbl(0)
  loc_1B0F2FD:   var_D8 = CDbl(0)
  loc_1B0F303:   var_E0 = CDbl(0)
  loc_1B0F309:   var_E8 = CDbl(0)
  loc_1B0F30F:   var_F0 = CDbl(0)
  loc_1B0F315:   var_F8 = CDbl(0)
  loc_1B0F31B:   var_100 = CDbl(0)
  loc_1B0F321:   var_108 = CDbl(0)
  loc_1B0F327:   var_110 = CDbl(0)
  loc_1B0F366:   var_194 = "SELECT SM.Nature,ST.SValue,ST.Amount FROM SunTranH AS ST INNER JOIN SundryMast SM ON ST.SunCode=SM.Code WHERE DocId='" & var_88.Fields.Item("DocID").Value 
  loc_1B0F37D:   unk_59EE7B.Execute CStr(var_194 & "' Order by SNo"), var_1D4, -1
  loc_1B0F388:   Set var_94 = var_174
  loc_1B0F3A2:   ' Referenced from: 1B0F9AD
  loc_1B0F3B1:   If Not(var_94.EOF) Then
  loc_1B0F3DC:     var_25D0 = Proc_6_38_E69628(CVar(var_94.Fields.Item("Nature")), var_174, var_110, var_108, var_100)
  loc_1B0F3ED:     If (var_25D0 = "Amount") Then
  loc_1B0F41D:       Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_C0), var_F8)
  loc_1B0F425:       var_1B4 = (var_F0 + var_194)
  loc_1B0F42A:       var_B0 = CSng(var_194 & "' Order by SNo")
  loc_1B0F43C:     Else
  loc_1B0F444:       If (var_25D0 = "Net Amount") Then
  loc_1B0F474:         Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_C0))
  loc_1B0F47C:         var_1B4 = (var_B0 + var_194)
  loc_1B0F481:         var_B8 = CSng(var_194 & "' Order by SNo")
  loc_1B0F493:       Else
  loc_1B0F49B:         If (var_25D0 = "Addition") Then
  loc_1B0F4CB:           Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_C0))
  loc_1B0F4D3:           var_1B4 = (var_B8 + var_194)
  loc_1B0F4D8:           var_C0 = CSng(var_194 & "' Order by SNo")
  loc_1B0F4EA:         Else
  loc_1B0F4F2:           If (var_25D0 = "Deduction") Then
  loc_1B0F522:             Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_C8))
  loc_1B0F52A:             var_1B4 = (var_C0 + var_194)
  loc_1B0F52F:             var_C8 = CSng(var_194 & "' Order by SNo")
  loc_1B0F541:           Else
  loc_1B0F549:             If (var_25D0 = "Discount") Then
  loc_1B0F579:               Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_D0))
  loc_1B0F581:               var_1B4 = (var_C8 + var_194)
  loc_1B0F586:               var_D0 = CSng(var_194 & "' Order by SNo")
  loc_1B0F598:             Else
  loc_1B0F5A0:               If Not (var_25D0 = "Sale Tax") Then
  loc_1B0F5AB:                 If (var_25D0 = "Luxury Tax") Then
  loc_1B0F5AE:                 End If
  loc_1B0F5DB:                 Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_D8))
  loc_1B0F5E3:                 var_1B4 = (var_D0 + var_194)
  loc_1B0F5E8:                 var_D8 = CSng(var_194 & "' Order by SNo")
  loc_1B0F5FA:               Else
  loc_1B0F602:                 If (var_25D0 = "Round Off") Then
  loc_1B0F632:                   Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_E8))
  loc_1B0F63A:                   var_1B4 = (var_D8 + var_194)
  loc_1B0F63F:                   var_E8 = CSng(var_194 & "' Order by SNo")
  loc_1B0F651:                 Else
  loc_1B0F659:                   If (var_25D0 = "Service Charge") Then
  loc_1B0F689:                     Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_F0))
  loc_1B0F691:                     var_1B4 = (var_E8 + var_194)
  loc_1B0F696:                     var_F0 = CSng(var_194 & "' Order by SNo")
  loc_1B0F6A8:                   Else
  loc_1B0F6B0:                     If (var_25D0 = "Service Tax") Then
  loc_1B0F6E0:                       Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_F8))
  loc_1B0F6E8:                       var_1B4 = (var_F0 + var_194)
  loc_1B0F6ED:                       var_F8 = CSng(var_194 & "' Order by SNo")
  loc_1B0F6FF:                     Else
  loc_1B0F707:                       If (var_25D0 = "CGST") Then
  loc_1B0F730:                         Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), var_F8)
  loc_1B0F74A:                         If CBool(var_194 <> 0) Then
  loc_1B0F77A:                           Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("SValue")), CVar(var_E0))
  loc_1B0F782:                           var_1B4 = (var_E8 + var_194)
  loc_1B0F787:                           var_E0 = CSng(var_194 & "' Order by SNo")
  loc_1B0F796:                         End If
  loc_1B0F7C3:                         Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_100))
  loc_1B0F7CB:                         var_1B4 = (var_E0 + var_194)
  loc_1B0F7D0:                         var_100 = CSng(var_194 & "' Order by SNo")
  loc_1B0F7E2:                       Else
  loc_1B0F7EA:                         If (var_25D0 = "SGST") Then
  loc_1B0F813:                           Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")))
  loc_1B0F82D:                           If CBool(var_194 <> 0) Then
  loc_1B0F85D:                             Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("SValue")), CVar(var_E0))
  loc_1B0F865:                             var_1B4 = (var_100 + var_194)
  loc_1B0F86A:                             var_E0 = CSng(var_194 & "' Order by SNo")
  loc_1B0F879:                           End If
  loc_1B0F8A6:                           Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_108))
  loc_1B0F8AE:                           var_1B4 = (var_E0 + var_194)
  loc_1B0F8B3:                           var_108 = CSng(var_194 & "' Order by SNo")
  loc_1B0F8C5:                         Else
  loc_1B0F8CD:                           If (var_25D0 = "IGST") Then
  loc_1B0F8F6:                             Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")))
  loc_1B0F910:                             If CBool(var_194 <> 0) Then
  loc_1B0F940:                               Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("SValue")), CVar(var_E0))
  loc_1B0F948:                               var_1B4 = (var_108 + var_194)
  loc_1B0F94D:                               var_E0 = CSng(var_194 & "' Order by SNo")
  loc_1B0F95C:                             End If
  loc_1B0F989:                             Proc_6_39_E7D3A0(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_110))
  loc_1B0F991:                             var_1B4 = (var_E0 + var_194)
  loc_1B0F996:                             var_110 = CSng(var_194 & "' Order by SNo")
  loc_1B0F9A5:                           End If
  loc_1B0F9A5:                         End If
  loc_1B0F9A5:                       End If
  loc_1B0F9A5:                     End If
  loc_1B0F9A5:                   End If
  loc_1B0F9A5:                 End If
  loc_1B0F9A5:               End If
  loc_1B0F9A5:             End If
  loc_1B0F9A5:           End If
  loc_1B0F9A5:         End If
  loc_1B0F9A5:       End If
  loc_1B0F9A5:     End If
  loc_1B0F9A8:     var_94.MoveNext
  loc_1B0F9AD:     GoTo loc_1B0F3A2
  loc_1B0F9B0:   End If
  loc_1B0F9B7:   If (var_B8 <> CDbl(0)) Then
  loc_1B0F9BC:     var_9E = 1
  loc_1B0F9E5:     Proc_6_17_EAAE40(var_194, CVar(var_88.Fields.Item("DocID")), var_9E)
  loc_1B0F9F9:     var_174 = var_88.Fields
  loc_1B0FA09:     var_264 = CVar(var_174.Item("Narration")) 'Address
  loc_1B0FA10:     Proc_6_17_EAAE40(var_274, var_264)
  loc_1B0FA24:     var_1EC = var_88.Fields
  loc_1B0FA3B:     Proc_6_17_EAAE40(var_2DC, CVar(var_1EC.Item("SACCode")))
  loc_1B0FA9A:     var_424 = CVar((var_B0 - var_D0)) 'Double
  loc_1B0FAC5:     var_144 = "INSERT INTO eInvoiceBill2 ([DocId],[SlNo],[PrdDesc],[IsServc],[HsnCd],[Qty],[Unit]," & "[UnitPrice],[TotAmt],[Discount],[PreTaxVal],[AssAmt],[GstRt],[IgstAmt],[CgstAmt],[SgstAmt],[TotItemVal]) "
  loc_1B0FAD2:     var_1D4 = CVar(var_144 & "VALUES (") & var_194 
  loc_1B0FB20:     var_354 = var_1D4 & "," & CVar(CStr(var_9E)) & "," & var_274 & ",'Y'," & var_2DC & "," & var_88.Fields.Item("NoofPax").Value & ",'OTH'," 
  loc_1B0FB5F:     var_47C = var_354 & var_88.Fields.Item("RatePerPax").Value & "," & CVar(var_B0) & "," & CVar(var_D0) & ",1," & IIf((var_E0 <> CDbl(0)), var_424, 0) 
  loc_1B0FB68:     var_48C = var_47C & "," 
  loc_1B0FB7C:     var_4BC = var_48C & CVar(var_E0) & "," 
  loc_1B0FBDA:     unk_59EE7B.Execute CStr(var_4BC & CVar(var_110) & "," & CVar(var_100) & "," & CVar(var_108) & "," & CVar(var_B8) & ")"), var_5B4, -1
  loc_1B0FC52:   End If
  loc_1B0FC58:   var_9E = (var_9E + 1)
  loc_1B0FC68:   var_184 = "SELECT S.DocId,S.SNo,I.Name AS ItemName,I.CommodityCode AS HSNCode,S.QtyIss As Qty,S.Rate As UnitRate,S.Amount,S.DiscAmt FROM HallStock AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code And S.RestCode = I.RestCode Where S.DocId='"
  loc_1B0FC97:   var_194 = var_184 & var_88.Fields.Item("DocID").Value 
  loc_1B0FCAE:   unk_59EE7B.Execute CStr(var_194 & "' AND QTYIss>0"), var_1D4, -1
  loc_1B0FCB9:   Set var_8C = var_174
  loc_1B0FCE7:   If (var_8C.RecordCount > 0) Then
  loc_1B0FCED:     var_8C.MoveFirst
  loc_1B0FCF2:     ' Referenced from: 1B10347
  loc_1B0FD01:     If Not(var_8C.EOF) Then
  loc_1B0FD07:       var_118 = CDbl(0)
  loc_1B0FD36:       var_144 = "Select Q.DocId,IsNull(Sum(Q.IGST),0) IGST,IsNull(Sum(Q.CGST),0) CGST,IsNull(Sum(Q.SGST),0) SGST,IsNull(Sum(Q.TaxPer),0) TaxPer,IsNull(Sum(Q.TaxAmt),0) TaxAmt From (Select DocId,SNo,Case When S.Nature='IGST' Then " & "S2.TaxAmt End IGST,Case When S.Nature='CGST' Then S2.TaxAmt End CGST,Case When S.Nature='SGST' Then S2.TaxAmt End SGST,S2.TaxPer,S2.TaxAmt From HallSale2 S2 "
  loc_1B0FD3D:       var_1B4 = CVar(var_144 & "Left Join RevMast R On R.Code=S2.Taxcode Left Join SundryMast S On S.Code=R.Sundry Where Docid=") 'String
  loc_1B0FD66:       Proc_6_17_EAAE40(var_194, CVar(var_8C.Fields.Item("DocID")), var_1B4, var_264, -1, var_1EC, CDbl(0))
  loc_1B0FDBC:       unk_59EE7B.Execute CStr(CDbl(0) & var_194 & " And SNo=" & var_8C.Fields.Item("SNo").Value & ")Q Group By DocId,SNo"), CDbl(0), CDbl(0)
  loc_1B0FDC7:       Set var_9C = var_1EC
  loc_1B0FE05:       If (var_9C.RecordCount > 0) Then
  loc_1B0FE33:         var_118 = CSng(var_9C.Fields.Item("IGST").Value)
  loc_1B0FE6B:         var_120 = CSng(var_9C.Fields.Item("CGST").Value)
  loc_1B0FEA3:         var_128 = CSng(var_9C.Fields.Item("SGST").Value)
  loc_1B0FEDB:         var_130 = CSng(var_9C.Fields.Item("TaxPer").Value)
  loc_1B0FF13:         var_138 = CSng(var_9C.Fields.Item("TaxAmt").Value)
  loc_1B0FF20:       End If
  loc_1B0FF46:       Proc_6_17_EAAE40(var_194, CVar(var_8C.Fields.Item("DocID")), var_138, var_130, var_128, var_120)
  loc_1B0FF5A:       var_174 = var_8C.Fields
  loc_1B0FF71:       Proc_6_17_EAAE40(var_274, CVar(var_174.Item("ItemName")), var_118, var_118)
  loc_1B0FF9C:       Proc_6_17_EAAE40(var_2DC, CVar(var_8C.Fields.Item("HSNCode")), var_174)
  loc_1B1003C:       Proc_6_39_E7D3A0(var_424, CVar(var_8C.Fields.Item("DiscAmt")))
  loc_1B10067:       Proc_6_39_E7D3A0(var_48C, CVar(var_8C.Fields.Item("Amount")))
  loc_1B10092:       Proc_6_39_E7D3A0(var_4BC, CVar(var_8C.Fields.Item("DiscAmt")))
  loc_1B100A2:       var_4E4 = (var_48C - var_4BC)
  loc_1B100E6:       Proc_6_39_E7D3A0(var_65C, CVar(var_8C.Fields.Item("Amount")))
  loc_1B10111:       Proc_6_39_E7D3A0(var_694, CVar(var_8C.Fields.Item("DiscAmt")))
  loc_1B10169:       var_144 = "INSERT INTO eInvoiceBill2 ([DocId],[SlNo],[PrdDesc],[IsServc],[HsnCd],[Qty],[Unit]," & "[UnitPrice],[TotAmt],[Discount],[PreTaxVal],[AssAmt],[GstRt],[IgstAmt],[CgstAmt],[SgstAmt],[TotItemVal]) "
  loc_1B101BB:       var_344 = CVar(var_144 & "VALUES (") & var_194 & "," & CVar(CStr(var_9E)) & "," & var_274 & ",'Y'," & var_2DC & "," & var_8C.Fields.Item("qty").Value 
  loc_1B101F4:       var_454 = var_344 & ",'OTH'," & var_8C.Fields.Item("UnitRate").Value & "," & var_8C.Fields.Item("Amount").Value & "," & var_424 & ",1," 
  loc_1B10237:       var_5D4 = var_454 & IIf((var_130 <> CDbl(0)), var_4BC & CVar(var_110), 0) & "," & CVar(var_130) & "," & CVar(var_118) & "," & CVar(var_120) 
  loc_1B1025E:       var_6A4 = (var_65C - var_694)
  loc_1B10265:       var_6EC = (var_65C & var_694 + Round(var_118, 2))
  loc_1B1026C:       var_70C = (CVar(var_98.Fields.Item("SellerDtls_Addr1")) + Round(var_120, 2))
  loc_1B10273:       var_754 = (var_65C & var_694 & "," & Round(var_120, 2) + Round(var_128, 2))
  loc_1B1028E:       unk_59EE7B.Execute CStr(var_5D4 & "," & CVar(var_128) & "," & CVar(var_98.Fields.Item("SellerDtls_Addr2")) & ")"), var_794, -1
  loc_1B1033C:       var_9E = (var_9E + 1)
  loc_1B10342:       var_8C.MoveNext
  loc_1B10347:       GoTo loc_1B0FCF2
  loc_1B1034A:     End If
  loc_1B1034A:   End If
  loc_1B1034D:   var_88.MoveNext
  loc_1B10352:   GoTo loc_1B0CD66
  loc_1B10355: End If
  loc_1B1035B: unk_59EE7B.CommitTrans
  loc_1B10362: var_A6 = 0
  loc_1B10365: Exit Sub
  loc_1B1036C: If (var_A6 = &HFF) Then
  loc_1B10375:   unk_59EE7B.RollbackTrans
  loc_1B1037A: End If
  loc_1B1037A: Proc_6_60_E63754(var_A6, var_9E, var_5F8)
  loc_1B1037F: Exit Sub
End Sub

Private Sub CmdeInvoiceJson_Click() 'E77D84
  'Data Table: 59EE5C
  Dim var_90 As TextBox
  loc_E77D35: Call Proc_124_105_E67D30(global_160)
  loc_E77D40: If (var_86 = 0) Then
  loc_E77D43:   Exit Sub
  loc_E77D44: End If
  loc_E77D44: Call CmdeInvoiceSql_Click()
  loc_E77D57: Set var_8C = Me.Txt
  loc_E77D5D: Call 0.Method_CmdeInvoiceJson_Click0 (CInt(4), var_90)
  loc_E77D71: Proc_96_104_1896028(var_90.Text)
  loc_E77D80: Exit Sub
End Sub

Private Sub Form_Load() '12EDDE0
  'Data Table: 59EE5C
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_59EE7B As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_16C As Variant
  Dim var_DC As Variant
  Dim var_BC As Fields15
  loc_12ED730: On Error Goto loc_12EDDDA
  loc_12ED748: If (global_56 = MemVar_1F95070 & "BANQ") Then
  loc_12ED751:   global_108 = "IBOOK"
  loc_12ED758: Else
  loc_12ED76D:   If (global_56 = MemVar_1F95070 & "ODC") Then
  loc_12ED776:     global_108 = "OBOOK"
  loc_12ED77A:   End If
  loc_12ED77A: End If
  loc_12ED7A1: unk_59EE7B.Execute "Select * from Depart where Code='" & global_56 & "'", var_B0, -1
  loc_12ED7AC: Set var_88 = var_B4
  loc_12ED7D0: If (var_88.RecordCount > 0) Then
  loc_12ED7EA:   var_BC = var_88.Fields.Item("Name")
  loc_12ED802:   Set var_C0 = Me.LblRest
  loc_12ED808:   var_C0.Caption = Proc_6_38_E69628(CVar(var_BC))
  loc_12ED81A: End If
  loc_12ED822: If (MemVar_1F95190 = "Yes") Then
  loc_12ED831:   Me.QrImage.Visible = True
  loc_12ED845:   Me.FreInvInfo.Visible = True
  loc_12ED859:   Me.CmdeInvoiceJson.Visible = True
  loc_12ED86D:   Me.CmdGeneInvoice.Visible = True
  loc_12ED875: End If
  loc_12ED87F: Set global_60 = New 
  loc_12ED891: Me.CursorLocation = 3
  loc_12ED8BB: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type Where Site_Code='" & MemVar_1F95070 & "' And LogSite_Code='"
  loc_12ED8E4: Me.Open CVar(var_90 & MemVar_1F95078 & "' and NCAT in('BBILL') and RestCode='" & global_56 & "' Order by Description"), CVar(MemVar_1F95044), 3
  loc_12ED902: CVarUnk
  loc_12ED907: VerifyVarObj
  loc_12ED90D: Set var_B4 = Me.DGVType
  loc_12ED913: LateIdStAd
  loc_12ED92B: Set global_72 = New 
  loc_12ED93D: Me.DGVType.CursorLocation = 3
  loc_12ED967: var_B0 = CVar("Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.logSite_Code='" & MemVar_1F95078 & "' and  H.RESTTYPE IN('Banquet') Order by H.Name") 'String
  loc_12ED971: Me.Open var_B0, CVar(MemVar_1F95044), 3
  loc_12ED985: CVarUnk
  loc_12ED98A: VerifyVarObj
  loc_12ED990: Set var_B4 = Me.DGHall
  loc_12ED996: LateIdStAd
  loc_12ED9AE: Set global_68 = New 
  loc_12ED9C0: Me.DGHall.CursorLocation = 3
  loc_12ED9D0: If (global_108 = "IBOOK") Then
  loc_12ED9F1:   var_8C = "Select '' As Code,PartyName as Name,(Add1+' '+Add2) As Address,City From HALLBOOK WHERE LogSite_Code='" & MemVar_1F95078
  loc_12ED9F8:   var_B0 = CVar("Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.logSite_Code='" & MemVar_1F95078 & "' and VType='IBOOK' Order by pARTYName") 'String
  loc_12EDA02:   Me.Open var_B0, CVar(MemVar_1F95044), 2
  loc_12EDA10: Else
  loc_12EDA2E:   var_8C = "Select '' As Code,PartyName as Name,(Add1+' '+Add2) As Address,City From HALLBOOK WHERE LogSite_Code='" & MemVar_1F95078
  loc_12EDA35:   var_B0 = CVar("Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.logSite_Code='" & MemVar_1F95078 & "' and VType='OBOOK' Order by pARTYName") 'String
  loc_12EDA3F:   Me.Open var_B0, CVar(MemVar_1F95044), 2
  loc_12EDA4A: End If
  loc_12EDA53: CVarUnk
  loc_12EDA58: VerifyVarObj
  loc_12EDA5E: Set var_B4 = Me.DGParty
  loc_12EDA64: LateIdStAd
  loc_12EDA7C: Set global_80 = New 
  loc_12EDA8E: Me.DGParty.CursorLocation = 3
  loc_12EDA9E: Proc_6_7_F26918(var_B0, MemVar_1F950F4, var_B4, global_68, 3, -1, 3, -1)
  loc_12EDAAE: Proc_6_7_F26918(var_12C, MemVar_1F950FC, var_B4, global_72, 1)
  loc_12EDAD1: var_8C = "Select S.DocId as SearchCode,S.DocID,S.BookDocId,S.LogSite_Code,S.Site_Code From HallSale1 S Inner JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE and S.LogSite_Code=V.LogSite_Code) WHERE S.LogSite_Code='" & MemVar_1F95078
  loc_12EDAD8: var_90 = var_8C & "' and V.NCAT IN ('BBILL') and V.RestCode='"
  loc_12EDAE9: var_DC = CVar(var_90 & global_56 & "' AND S.VDate between ") 'String
  loc_12EDB13: Me.Open var_DC & var_B0 & " and " & var_12C & " Order by S.Docid", CVar(MemVar_1F95044), 3
  loc_12EDB65: Call 0.Method_arg_50 (var_90, "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078 & "' and ENAME='", var_B0, -1, var_B4, var_BC, 0, var_C0)
  loc_12EDB8C: unk_59EE7B.Execute var_DC & var_90 & "' AND UNAME='" & MemVar_1F950C8 & "'", 1, -1
  loc_12EDB94: -1 = var_B4.Fields
  loc_12EDB9C: global_60 = var_BC.Item(var_B4)
  loc_12EDBA4: 1 = var_C0.Value
  loc_12EDBD5: If (var_DC > 0) Then
  loc_12EDC1E:   Call 0.Method_arg_50 (var_90, "SELECT DOCID FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078 & "' and ENAME='", var_B0, -1, var_B4, var_BC, 0)
  loc_12EDC45:   unk_59EE7B.Execute var_C0 & var_90 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_DC, "SearchCode='"
  loc_12EDC4D:   0 = var_B4.Fields
  loc_12EDC55:   var_16C = var_BC.Item(1)
  loc_12EDC5D:    = var_C0.Value
  loc_12EDC7C:   Me.Find CStr(var_DC & "'"), , 
  loc_12EDCA8: End If
  loc_12EDCBF: If (Me.RecordCount > 0) Then
  loc_12EDCD6:   If (Me.EOF = &HFF) Then
  loc_12EDCDF:     Me.MoveLast
  loc_12EDCE4:   End If
  loc_12EDCE4: End If
  loc_12EDCED: Call 0.Method_arg_160 (var_B4)
  loc_12EDCFB: Call 0.Method_arg_164 (var_B4)
  loc_12EDD26: Call Proc_124_86_10C6048(Proc_5_1_100EC1C("INI", Me))
  loc_12EDD38: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_12EDD50: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12EDD6B: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12EDD82: Me.LblUser.Left = CDbl(13500)
  loc_12EDD99: Me.LblUser.Top = CDbl(7800)
  loc_12EDDB0: Me.LblLDt.Top = CDbl(8160)
  loc_12EDDC7: Me.LblLDt.Left = CDbl(13500)
  loc_12EDDCF: Call Proc_124_79_1482B14(global_80)
  loc_12EDDD4: Call Proc_124_82_18ACBAC()
  loc_12EDDD9: Exit Sub
  loc_12EDDDA: ' Referenced from: 12ED730
  loc_12EDDDA: Proc_6_60_E63754()
  loc_12EDDDF: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3CA8
  'Data Table: 59EE5C
  Dim var_8C As Label
  loc_ED3C06: Call 0.Method_arg_50 (var_88)
  loc_ED3C18: Me.LblFormCaption.Caption = var_88
  loc_ED3C31: Me.LblFormCaption.Left = CDbl(0)
  loc_ED3C3D: Set var_A0 = Me.TopCtrl1
  loc_ED3C43: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED3C50: Set var_8C = Me.TopCtrl1
  loc_ED3C56: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED3C70: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED3C8B: Call 0.Method_arg_100 (var_B8)
  loc_ED3C9D: Me.LblFormCaption.Width = var_B8
  loc_ED3CA5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E77A98
  'Data Table: 59EE5C
  loc_E77A3F: Set global_72 = Nothing
  loc_E77A51: Set global_64 = Nothing
  loc_E77A63: Set global_84 = Nothing
  loc_E77A75: Set global_88 = Nothing
  loc_E77A87: Set global_76 = Nothing
  loc_E77A93: global_52 = 0
  loc_E77A96: Exit Sub
End Sub

Private Sub Form_Activate() '1004698
  'Data Table: 59EE5C
  Dim var_90 As String
  Dim unk_59EE7B As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As Variant
  Dim var_CC As Integer
  Dim var_120 As Field20
  loc_10044C2: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE NCAT='BBILL' AND RestCode='" & global_56 & "' Order by Description"
  loc_10044CB: unk_59EE7B.Execute var_90, var_B0, -1
  loc_10044D6: Set var_88 = var_B4
  loc_10044FA: If (var_88.RecordCount > 0) Then
  loc_1004517:   var_BC = var_88.Fields.Item(0)
  loc_100452E:   global_132 = CStr(var_BC.Value)
  loc_1004542: Else
  loc_1004555:   var_B0 = "Point of Sale Not Configured for selected Restaurant"
  loc_100455B:   MsgBox(var_B0, 0, var_DC, var_FC, var_11C)
  loc_1004578:   Me.Global.Unload Me
  loc_1004580:   Exit Sub
  loc_1004581: End If
  loc_1004587: var_CC = 0
  loc_10045B7: unk_59EE7B.Execute "Select Count(*) From SundryType WHERE V_Type='" & global_132 & "'", var_B0, -1
  loc_10045BF: var_B4 = var_B4.Fields
  loc_10045C7: var_CC = var_BC.Item(var_BC)
  loc_10045CF: var_120 = var_120.Value
  loc_10045F6: If (var_DC <= 0) Then
  loc_1004612:   MsgBox("Voucher wise Sundry not defined", 0, var_DC, var_FC, var_11C)
  loc_100462F:   Me.Global.Unload Me
  loc_1004637:   Exit Sub
  loc_1004638: End If
  loc_100463D: Set var_88 = Nothing
  loc_100464E: Set var_B4 = Me.Txt
  loc_1004654: Call 0.Method_Form_Activate0 (CInt(7), var_BC, var_122)
  loc_100465C: var_DC = var_BC.Enabled
  loc_100466E: If (var_122 = &HFF) Then
  loc_100467C:   Set var_B4 = Me.Txt
  loc_1004682:   Call 0.Method_Form_Activate0 (CInt(7), var_BC)
  loc_100468A:   var_BC.SetFocus
  loc_1004696: End If
  loc_1004696: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26864
  'Data Table: 59EE5C
  loc_E26849: If (global_52 = &HFF) Then
  loc_E26859:   Me.Global.Unload Me
  loc_E26861: End If
  loc_E26861: Exit Sub
  loc_E26862: GoTo loc_E24C40
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E38B88
  'Data Table: 59EE5C
  loc_E38B5C: On Error Goto loc_E38B80
  loc_E38B77: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E38B7F: Exit Sub
  loc_E38B80: ' Referenced from: E38B5C
  loc_E38B80: Proc_6_60_E63754(Shift)
  loc_E38B85: Exit Sub
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E28148
  'Data Table: 59EE5C
  loc_E28129: If ((Button = 2) And (Shift = 2)) Then
  loc_E2813F:   Call 0.Method_arg_2B0 (1)
  loc_E28144: End If
  loc_E28144: Exit Sub
End Sub

Public Function global_52Get() '5A1AE0
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '5A1AEF
  global_52 = Value
End Sub

Public Function global_56Get() '5A1AFE
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '5A1B0D
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E76B6C
  'Data Table: 59EE5C
  Dim Me As Recordset15
  loc_E76B16: Me.MoveFirst
  loc_E76B40: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E76B60: If (Me.EOF = 0) Then
  loc_E76B63:   Call Proc_124_82_18ACBAC(var_9C)
  loc_E76B68: End If
  loc_E76B68: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E95BB0
  'Data Table: 59EE5C
  Dim Me As Recordset15
  loc_E95B3E: On Error Goto loc_E95BA7
  loc_E95B47: Me.MoveFirst
  loc_E95B71: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95B99: Proc_5_0_1107AD0(&HFF, Me, global_80)
  loc_E95BA1: Call Proc_124_82_18ACBAC(0)
  loc_E95BA6: Exit Sub
  loc_E95BA7: ' Referenced from: E95B3E
  loc_E95BA7: Proc_6_60_E63754(var_A0)
  loc_E95BAC: Exit Sub
End Sub

Public Sub Proc_124_79_1482B14
  'Data Table: 59EE5C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C8 As TextBox
  Dim var_C4 As DataGrid
  Dim var_D4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_120 As MSHFlexGrid
  loc_1481ED7: Me.FGrid.Left = CVar(CDbl(7260))
  loc_1481EF2: Me.FGrid.Top = CVar(CDbl(1635))
  loc_1481F0D: Me.FGrid.Height = CVar(CDbl(5700))
  loc_1481F28: Me.FGrid.Width = CVar(CDbl(8005))
  loc_1481F43: Me.DGItem.Left = CVar(CDbl(7300))
  loc_1481F62: var_94 = CVar((CDbl(Me.FGrid.Height) + CDbl(&HA))) 'Single
  loc_1481F6B: Set var_BC = Me.DGItem
  loc_1481F71: var_BC.Top = CVar(CDbl(7300))
  loc_1481F92: Me.DGParty.Left = CVar(CDbl(&HF))
  loc_1481FA8: Set var_C4 = Me.Txt
  loc_1481FAE: Call 0.Method_Proc_124_79_1482B140 (CInt(3), var_C8)
  loc_1481FC9: Set var_A8 = Me.Txt
  loc_1481FCF: Call 0.Method_Proc_124_79_1482B140 (CInt(3), var_BC)
  loc_1481FE7: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1481FF6: Me.DGParty.Top = CVar(CDbl(&HF))
  loc_1482016: Set var_A8 = Me.Txt
  loc_148201C: Call 0.Method_Proc_124_79_1482B140 (CInt(5), var_BC)
  loc_148203B: Me.DGHall.Left = CVar(var_BC.Left)
  loc_1482057: Set var_C4 = Me.Txt
  loc_148205D: Call 0.Method_Proc_124_79_1482B140 (CInt(5), var_C8)
  loc_1482078: Set var_A8 = Me.Txt
  loc_148207E: Call 0.Method_Proc_124_79_1482B140 (CInt(5), var_BC)
  loc_1482096: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_14820A5: Me.DGHall.Top = CVar(var_BC.Left)
  loc_14820C5: Set var_A8 = Me.Txt
  loc_14820CB: Call 0.Method_Proc_124_79_1482B140 (CInt(7), var_BC)
  loc_14820EA: Me.DGBookNo.Left = CVar(var_BC.Left)
  loc_1482106: Set var_C4 = Me.Txt
  loc_148210C: Call 0.Method_Proc_124_79_1482B140 (CInt(7), var_C8)
  loc_1482127: Set var_A8 = Me.Txt
  loc_148212D: Call 0.Method_Proc_124_79_1482B140 (CInt(7), var_BC)
  loc_1482145: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1482154: Me.DGBookNo.Top = CVar(var_BC.Left)
  loc_1482174: Set var_A8 = Me.Txt
  loc_148217A: Call 0.Method_Proc_124_79_1482B140 (CInt(0), var_BC)
  loc_1482199: Me.DGVType.Left = CVar(var_BC.Left)
  loc_14821B5: Set var_C4 = Me.Txt
  loc_14821BB: Call 0.Method_Proc_124_79_1482B140 (CInt(0), var_C8)
  loc_14821D6: Set var_A8 = Me.Txt
  loc_14821DC: Call 0.Method_Proc_124_79_1482B140 (CInt(0), var_BC)
  loc_14821F4: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1482203: Me.DGVType.Top = CVar(var_BC.Left)
  loc_1482219: Set var_D4 = Me.FGrid
  loc_1482230: global_100 = CStr(CLng(var_D4.BackColor))
  loc_1482246: var_D4.Cols = &H17
  loc_148224E: var_94 = CVar(CLng(0)) 'Long
  loc_1482253: var_E8 = &H190
  loc_148225F: LateIdCallSt
  loc_1482267: var_94 = 0
  loc_1482273: var_E8 = CVar(CLng(1)) 'Long
  loc_1482278: var_108 = "Item Name"
  loc_1482281: LateIdCallSt
  loc_148228C: var_94 = CVar(CLng(1)) 'Long
  loc_1482297: var_E8 = CVar(CInt(1)) 'Integer
  loc_148229E: LateIdCallSt
  loc_14822A9: var_94 = CVar(CLng(1)) 'Long
  loc_14822AE: var_E8 = &H9C4
  loc_14822BA: LateIdCallSt
  loc_14822C2: var_94 = 0
  loc_14822CE: var_E8 = CVar(CLng(2)) 'Long
  loc_14822D3: var_108 = "Remarks"
  loc_14822DC: LateIdCallSt
  loc_14822E7: var_94 = CVar(CLng(2)) 'Long
  loc_14822F2: var_E8 = CVar(CInt(1)) 'Integer
  loc_14822F9: LateIdCallSt
  loc_1482304: var_94 = CVar(CLng(2)) 'Long
  loc_1482309: var_E8 = &H61D
  loc_1482315: LateIdCallSt
  loc_148231D: var_94 = 0
  loc_1482329: var_E8 = CVar(CLng(3)) 'Long
  loc_148232E: var_108 = "Qty"
  loc_1482337: LateIdCallSt
  loc_1482342: var_94 = CVar(CLng(3)) 'Long
  loc_148234D: var_E8 = CVar(CInt(7)) 'Integer
  loc_1482354: LateIdCallSt
  loc_148235F: var_94 = CVar(CLng(3)) 'Long
  loc_148236A: var_E8 = CVar(CInt(7)) 'Integer
  loc_1482371: LateIdCallSt
  loc_148237C: var_94 = CVar(CLng(3)) 'Long
  loc_1482381: var_E8 = &H46A
  loc_148238D: LateIdCallSt
  loc_1482395: var_94 = 0
  loc_14823A1: var_E8 = CVar(CLng(4)) 'Long
  loc_14823A6: var_108 = "Rate"
  loc_14823AF: LateIdCallSt
  loc_14823BA: var_94 = CVar(CLng(4)) 'Long
  loc_14823C5: var_E8 = CVar(CInt(7)) 'Integer
  loc_14823CC: LateIdCallSt
  loc_14823D7: var_94 = CVar(CLng(4)) 'Long
  loc_14823E2: var_E8 = CVar(CInt(7)) 'Integer
  loc_14823E9: LateIdCallSt
  loc_14823F4: var_94 = CVar(CLng(4)) 'Long
  loc_14823F9: var_E8 = &H44C
  loc_1482405: LateIdCallSt
  loc_148240D: var_94 = 0
  loc_1482419: var_E8 = CVar(CLng(6)) 'Long
  loc_148241E: var_108 = "%"
  loc_1482427: LateIdCallSt
  loc_1482432: var_94 = CVar(CLng(6)) 'Long
  loc_148243D: var_E8 = CVar(CInt(7)) 'Integer
  loc_1482444: LateIdCallSt
  loc_148244F: var_94 = CVar(CLng(6)) 'Long
  loc_148245A: var_E8 = CVar(CInt(7)) 'Integer
  loc_1482461: LateIdCallSt
  loc_148246C: var_94 = CVar(CLng(6)) 'Long
  loc_1482471: var_E8 = 0
  loc_148247D: LateIdCallSt
  loc_1482485: var_94 = 0
  loc_1482491: var_E8 = CVar(CLng(7)) 'Long
  loc_1482496: var_108 = "Tax"
  loc_148249F: LateIdCallSt
  loc_14824AA: var_94 = CVar(CLng(7)) 'Long
  loc_14824B5: var_E8 = CVar(CInt(7)) 'Integer
  loc_14824BC: LateIdCallSt
  loc_14824C7: var_94 = CVar(CLng(7)) 'Long
  loc_14824D2: var_E8 = CVar(CInt(7)) 'Integer
  loc_14824D9: LateIdCallSt
  loc_14824E4: var_94 = CVar(CLng(7)) 'Long
  loc_14824E9: var_E8 = 0
  loc_14824F5: LateIdCallSt
  loc_14824FD: var_94 = 0
  loc_1482509: var_E8 = CVar(CLng(5)) 'Long
  loc_148250E: var_108 = "Amount"
  loc_1482517: LateIdCallSt
  loc_1482522: var_94 = CVar(CLng(5)) 'Long
  loc_148252D: var_E8 = CVar(CInt(7)) 'Integer
  loc_1482534: LateIdCallSt
  loc_148253F: var_94 = CVar(CLng(5)) 'Long
  loc_148254A: var_E8 = CVar(CInt(7)) 'Integer
  loc_1482551: LateIdCallSt
  loc_148255C: var_94 = CVar(CLng(5)) 'Long
  loc_1482561: var_E8 = &H46A
  loc_148256D: LateIdCallSt
  loc_1482575: var_94 = 0
  loc_1482581: var_E8 = CVar(CLng(8)) 'Long
  loc_1482586: var_108 = "Total"
  loc_148258F: LateIdCallSt
  loc_148259A: var_94 = CVar(CLng(8)) 'Long
  loc_14825A5: var_E8 = CVar(CInt(7)) 'Integer
  loc_14825AC: LateIdCallSt
  loc_14825B7: var_94 = CVar(CLng(8)) 'Long
  loc_14825C2: var_E8 = CVar(CInt(7)) 'Integer
  loc_14825C9: LateIdCallSt
  loc_14825D4: var_94 = CVar(CLng(8)) 'Long
  loc_14825D9: var_E8 = 0
  loc_14825E5: LateIdCallSt
  loc_14825F0: var_94 = CVar(CLng(9)) 'Long
  loc_14825F5: var_E8 = 0
  loc_1482601: LateIdCallSt
  loc_148260C: var_94 = CVar(CLng(&HA)) 'Long
  loc_1482611: var_E8 = 0
  loc_148261D: LateIdCallSt
  loc_1482628: var_94 = CVar(CLng(&HB)) 'Long
  loc_148262D: var_E8 = 0
  loc_1482639: LateIdCallSt
  loc_1482644: var_94 = CVar(CLng(&HC)) 'Long
  loc_1482649: var_E8 = 0
  loc_1482655: LateIdCallSt
  loc_1482660: var_94 = CVar(CLng(&HD)) 'Long
  loc_1482665: var_E8 = 0
  loc_1482671: LateIdCallSt
  loc_148267C: var_94 = CVar(CLng(&HF)) 'Long
  loc_1482681: var_E8 = 0
  loc_148268D: LateIdCallSt
  loc_1482698: var_94 = CVar(CLng(&HE)) 'Long
  loc_148269D: var_E8 = 0
  loc_14826A9: LateIdCallSt
  loc_14826B4: var_94 = CVar(CLng(&H10)) 'Long
  loc_14826B9: var_E8 = 0
  loc_14826C5: LateIdCallSt
  loc_14826D0: var_94 = CVar(CLng(&H11)) 'Long
  loc_14826D5: var_E8 = 0
  loc_14826E1: LateIdCallSt
  loc_14826EC: var_94 = CVar(CLng(&H12)) 'Long
  loc_14826F1: var_E8 = 0
  loc_14826FD: LateIdCallSt
  loc_1482708: var_94 = CVar(CLng(&H13)) 'Long
  loc_148270D: var_E8 = 0
  loc_1482719: LateIdCallSt
  loc_1482724: var_94 = CVar(CLng(&H14)) 'Long
  loc_1482729: var_E8 = 0
  loc_1482735: LateIdCallSt
  loc_1482740: var_94 = CVar(CLng(&H15)) 'Long
  loc_1482745: var_E8 = 0
  loc_1482751: LateIdCallSt
  loc_148275C: var_94 = CVar(CLng(&H16)) 'Long
  loc_1482761: var_E8 = 0
  loc_148276D: LateIdCallSt
  loc_1482777: Set var_D4 = Nothing 
  loc_148277F: Set var_11C = Me.FGCat
  loc_1482796: global_100 = CStr(CLng(var_11C.BackColor))
  loc_14827A3: var_94 = CVar(CLng(3)) 'Long
  loc_14827A8: var_E8 = &H7D0
  loc_14827B4: LateIdCallSt
  loc_14827C8: var_11C.Cols = 8
  loc_14827CF: Set var_11C = Nothing 
  loc_14827E6: Me.FGrid1.Cols = 8
  loc_14827EB: var_94 = 0
  loc_14827F4: var_E8 = 0
  loc_14827FD: var_108 = "SNo"
  loc_1482806: LateIdCallSt
  loc_148280E: var_94 = 0
  loc_148281D: var_E8 = CVar(CInt(1)) 'Integer
  loc_1482824: LateIdCallSt
  loc_148282C: var_94 = 0
  loc_148283B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1482842: LateIdCallSt
  loc_148284A: var_94 = 0
  loc_1482853: var_E8 = &H1C2
  loc_148285F: LateIdCallSt
  loc_1482867: var_94 = 0
  loc_1482870: var_E8 = 1
  loc_1482879: var_108 = "Venue Name"
  loc_1482882: LateIdCallSt
  loc_148288A: var_94 = 1
  loc_1482899: var_E8 = CVar(CInt(1)) 'Integer
  loc_14828A0: LateIdCallSt
  loc_14828A8: var_94 = 1
  loc_14828B7: var_E8 = CVar(CInt(1)) 'Integer
  loc_14828BE: LateIdCallSt
  loc_14828C6: var_94 = 1
  loc_14828CF: var_E8 = &H960
  loc_14828DB: LateIdCallSt
  loc_14828E3: var_94 = 0
  loc_14828EC: var_E8 = 2
  loc_14828F5: var_108 = "Date From"
  loc_14828FE: LateIdCallSt
  loc_1482906: var_94 = 2
  loc_1482915: var_E8 = CVar(CInt(1)) 'Integer
  loc_148291C: LateIdCallSt
  loc_1482924: var_94 = 2
  loc_1482933: var_E8 = CVar(CInt(1)) 'Integer
  loc_148293A: LateIdCallSt
  loc_1482942: var_94 = 2
  loc_148294B: var_E8 = &H47E
  loc_1482957: LateIdCallSt
  loc_148295F: var_94 = 0
  loc_1482968: var_E8 = 3
  loc_1482971: var_108 = "Timefrom"
  loc_148297A: LateIdCallSt
  loc_1482982: var_94 = 3
  loc_1482991: var_E8 = CVar(CInt(1)) 'Integer
  loc_1482998: LateIdCallSt
  loc_14829A0: var_94 = 3
  loc_14829AF: var_E8 = CVar(CInt(1)) 'Integer
  loc_14829B6: LateIdCallSt
  loc_14829BE: var_94 = 3
  loc_14829C7: var_E8 = &H3E8
  loc_14829D3: LateIdCallSt
  loc_14829DB: var_94 = 0
  loc_14829E4: var_E8 = 4
  loc_14829ED: var_108 = "Date To"
  loc_14829F6: LateIdCallSt
  loc_14829FE: var_94 = 4
  loc_1482A0D: var_E8 = CVar(CInt(1)) 'Integer
  loc_1482A14: LateIdCallSt
  loc_1482A1C: var_94 = 4
  loc_1482A2B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1482A32: LateIdCallSt
  loc_1482A3A: var_94 = 4
  loc_1482A43: var_E8 = &H47E
  loc_1482A4F: LateIdCallSt
  loc_1482A57: var_94 = 0
  loc_1482A60: var_E8 = 5
  loc_1482A69: var_108 = "Time To"
  loc_1482A72: LateIdCallSt
  loc_1482A7A: var_94 = 5
  loc_1482A89: var_E8 = CVar(CInt(1)) 'Integer
  loc_1482A90: LateIdCallSt
  loc_1482A98: var_94 = 5
  loc_1482AA7: var_E8 = CVar(CInt(1)) 'Integer
  loc_1482AAE: LateIdCallSt
  loc_1482AB6: var_94 = 5
  loc_1482ABF: var_E8 = &H384
  loc_1482ACB: LateIdCallSt
  loc_1482AD3: var_94 = 6
  loc_1482ADC: var_E8 = 0
  loc_1482AE8: LateIdCallSt
  loc_1482AF0: var_94 = 7
  loc_1482AF9: var_E8 = 0
  loc_1482B05: LateIdCallSt
  loc_1482B0F: Set var_120 = Nothing 
  loc_1482B13: Exit Sub
End Sub

Public Sub Proc_124_80_E45414
  'Data Table: 59EE5C
  loc_E453F0: Set var_88 = Me.TopCtrl1
  loc_E453F6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4540F: If (CStr() = "Browse") Then
  loc_E45412:   Exit Sub
  loc_E45413: End If
  loc_E45413: Exit Sub
End Sub

Public Sub Proc_124_81_1423928(arg_C) '1423928
  'Data Table: 59EE5C
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_BC As String
  Dim var_130 As MSHFlexGrid
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_164 As MSHFlexGrid
  Dim var_174 As Variant
  Dim var_178 As String
  Dim var_18C As Variant
  Dim var_92 As Integer
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_1422EB0: If (arg_C = 0) Then
  loc_1422EC6:   var_AC = CLng(Me.FGrid.Col)
  loc_1422ED6:   If (var_AC = CLng(1)) Then
  loc_1422EF9:     var_B2 = Me.EOF
  loc_1422F27:     Set var_98 = Me.TxtGrid
  loc_1422F2D:     Call 0.Method_Proc_124_81_14239280 (arg_C, var_B8, var_BC)
  loc_1422F35:     ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_1422F4D:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_1422F63:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1422F6B:       var_EC = CVar(CLng(1)) 'Long
  loc_1422F70:       var_10C = vbNullString
  loc_1422F7A:       Set var_B8 = Me.FGrid
  loc_1422F80:       LateIdCallSt
  loc_1422FA5:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1422FAD:       var_EC = CVar(CLng(9)) 'Long
  loc_1422FB2:       var_10C = vbNullString
  loc_1422FBC:       Set var_B8 = Me.FGrid
  loc_1422FC2:       LateIdCallSt
  loc_1422FE7:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1422FEF:       var_EC = CVar(CLng(4)) 'Long
  loc_1422FF4:       var_10C = vbNullString
  loc_1422FFE:       Set var_B8 = Me.FGrid
  loc_1423004:       LateIdCallSt
  loc_1423029:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1423031:       var_EC = CVar(CLng(&HA)) 'Long
  loc_1423036:       var_10C = vbNullString
  loc_1423040:       Set var_B8 = Me.FGrid
  loc_1423046:       LateIdCallSt
  loc_142305B:     Else
  loc_142305E:       Call Proc_124_92_FC6858(var_B2, var_B8, var_10C, var_EC, var_CC, var_B8, var_10C, var_EC)
  loc_1423069:       If (var_B2 = 0) Then
  loc_1423071:         Proc_124_81_1423928 = 0
  loc_1423077:       End If
  loc_1423090:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1423098:       var_EC = CVar(CLng(9)) 'Long
  loc_14230B2:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_14230D0:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14230D8:       var_150 = CVar(CLng(9)) 'Long
  loc_14230F2:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_142315D:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1423174:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1423190:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1423198:         var_FC = CVar(CLng(1)) 'Long
  loc_14231CB:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_14231D3:         Set var_164 = Me.FGrid
  loc_14231D9:         LateIdCallSt
  loc_1423208:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1423210:         var_FC = CVar(CLng(9)) 'Long
  loc_1423243:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_142324B:         Set var_164 = Me.FGrid
  loc_1423251:         LateIdCallSt
  loc_1423280:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1423288:         var_EC = CVar(CLng(3)) 'Long
  loc_14232A2:         var_BC = CStr(Me.FGrid.TextMatrix))
  loc_14232C0:         If (CDbl(Val(var_BC)) <= CDbl(0)) Then
  loc_14232F5:           var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14232FD:           var_10C = CVar(CLng(4)) 'Long
  loc_1423311:           var_12C = "0.00"
  loc_142332A:           var_18C = CVar(CStr(Format(CVar(Me.Fields.Item("IRate")), var_12C))) 'String
  loc_1423332:           Set var_164 = Me.FGrid
  loc_1423338:           LateIdCallSt
  loc_1423356:         End If
  loc_142335A:         var_CC = CVar(CLng(var_92)) 'Long
  loc_142336C:         var_A8 = CVar(CStr(var_92)) 'String
  loc_1423374:         Set var_98 = Me.FGrid
  loc_142337A:         LateIdCallSt
  loc_14233BA:         var_98 = Me.Fields
  loc_14233D1:         Proc_6_39_E7D3A0(var_12C, CVar(var_98.Item("TaxStru")), CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)), var_98, CVar(var_98.Item("TaxStru")), CVar(CLng(0)))
  loc_14233DA:         var_174 = CVar(CStr(var_12C)) 'String
  loc_14233E2:         Set var_164 = Me.FGrid
  loc_14233E8:         LateIdCallSt
  loc_1423417:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142341F:         var_FC = CVar(CLng(&HA)) 'Long
  loc_1423452:         var_140 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_142345A:         Set var_164 = Me.FGrid
  loc_1423460:         LateIdCallSt
  loc_142348F:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1423497:         var_FC = CVar(CLng(&HD)) 'Long
  loc_14234CA:         var_140 = CVar(CStr(Me.Fields.Item("DiscApp").Value)) 'String
  loc_14234D2:         Set var_164 = Me.FGrid
  loc_14234D8:         LateIdCallSt
  loc_1423526:         var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142352E:         var_10C = CVar(CLng(&H11)) 'Long
  loc_1423569:         LateIdCallSt
  loc_14235C3:         var_12C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H12)), CVar(CLng(var_92)), Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("RateEdit")), "0.00"))), 1, 1)) 'String
  loc_14235CB:         Set var_130 = Me.FGrid
  loc_14235D1:         LateIdCallSt
  loc_14235EB:         Set var_130 = Me.FGrid
  loc_14235F1:         var_140 = var_130.Row
  loc_1423621:         var_B8 = Me.Fields.Item("SChrgApp")
  loc_1423630:         Proc_6_39_E7D3A0(var_12C, CVar(var_B8), CVar(CLng(&H13)), CVar(CLng(var_140)), var_130, var_12C)
  loc_1423639:         var_174 = CVar(CStr(var_12C)) 'String
  loc_1423641:         Set var_164 = Me.FGrid
  loc_1423647:         LateIdCallSt
  loc_1423663:       End If
  loc_1423663:     End If
  loc_1423663:     Call Proc_124_89_11540FC(var_164, var_174, var_10C, var_EC)
  loc_142366B:   Else
  loc_1423672:     If (var_AC = CLng(2)) Then
  loc_14236A1:       Set var_98 = Me.TxtGrid
  loc_14236A7:       Call 0.Method_Proc_124_81_14239280 (0, var_B8, var_BC, CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)))
  loc_14236AF:       var_164 = var_B8.Text
  loc_14236B7:       var_12C = CVar(var_BC) 'String
  loc_14236BF:       Set var_164 = Me.FGrid
  loc_14236C5:       LateIdCallSt
  loc_14236E2:     Else
  loc_14236E9:       If (var_AC = CLng(3)) Then
  loc_14236F6:         Set var_98 = Me.TxtGrid
  loc_14236FC:         Call 0.Method_Proc_124_81_14239280 (arg_C, var_B8, var_164, var_12C)
  loc_1423714:         If Not(IsNumeric(CVar(var_B8))) Then
  loc_142371B:           var_BC = CStr(0)
  loc_1423728:           Set var_98 = Me.TxtGrid
  loc_142372E:           Call 0.Method_Proc_124_81_14239280 (arg_C, var_B8, var_BC)
  loc_1423736:           var_B8.Text = var_140
  loc_1423745:         End If
  loc_1423752:         Set var_98 = Me.TxtGrid
  loc_1423758:         Call 0.Method_Proc_124_81_14239280 (arg_C, var_B8, var_BC)
  loc_1423760:         var_FC = var_B8.Text
  loc_1423778:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14237CA:         LateIdCallSt
  loc_14237EE:         Call Proc_124_89_11540FC(Me.FGrid, CVar(CStr(Format(CVar(var_BC), "0.000"))), 1, 1)
  loc_14237F8:         Call Proc_124_94_1745CC0(&H32, CVar(CLng(Me.FGrid.Col)))
  loc_1423800:       Else
  loc_1423807:         If (var_AC = CLng(4)) Then
  loc_1423814:           Set var_98 = Me.TxtGrid
  loc_142381A:           Call 0.Method_Proc_124_81_14239280 (arg_C, var_B8)
  loc_1423832:           If Not(IsNumeric(CVar(var_B8))) Then
  loc_1423846:             Set var_98 = Me.TxtGrid
  loc_142384C:             Call 0.Method_Proc_124_81_14239280 (arg_C, var_B8, CStr(0))
  loc_1423854:             var_B8.Text = var_DC
  loc_1423863:           End If
  loc_1423870:           Set var_98 = Me.TxtGrid
  loc_1423876:           Call 0.Method_Proc_124_81_14239280 (arg_C, var_B8)
  loc_1423896:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14238E8:           LateIdCallSt
  loc_142390C:           Call Proc_124_89_11540FC(Me.FGrid, CVar(CStr(Format(CVar(var_B8.Text), "0.00"))), 1, 1)
  loc_1423916:           Call Proc_124_94_1745CC0(&H32, CVar(CLng(Me.FGrid.Col)))
  loc_142391B:         End If
  loc_142391B:       End If
  loc_142391B:     End If
  loc_142391B:   End If
  loc_142391B: End If
  loc_1423920: Proc_124_81_1423928 = &HFF
End Sub

Public Sub Proc_124_82_18ACBAC
  'Data Table: 59EE5C
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_59EE7B As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_128 As Variant
  Dim var_140 As Variant
  Dim var_114 As Variant
  Dim var_130 As String
  Dim var_194 As Fields15
  Dim var_1D8 As Variant
  Dim var_1DC As String
  Dim var_1E0 As Label
  Dim var_1EC As Recordset15
  Dim var_12C As Variant
  Dim var_94 As Recordset15
  Dim var_8C As Recordset15
  Dim var_124 As Variant
  Dim var_200 As Double
  Dim var_208 As Double
  Dim var_1A8 As TextBox
  Dim var_210 As Double
  Dim var_1F8 As TextBox
  Dim var_8E As Integer
  Dim var_21C As TextBox
  Dim Proc_124_82_18ACBAC2 As Variant
  Dim var_238 As TextBox
  loc_18AA3BC: On Error Goto loc_18ACBA6
  loc_18AA3D6: If (Me.RecordCount > 0) Then
  loc_18AA42F:   unk_59EE7B.Execute CStr("Select S.* From HallSale1 S Where S.Docid='" & Me.Fields.Item("DocID").Value & "'"), var_124, -1
  loc_18AA43A:   Set var_88 = var_128
  loc_18AA48E:   var_128 = var_88.Fields
  loc_18AA4F7:   var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_128.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_18AA53C:   Me.LblUser.Caption = CStr(var_128 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_18AA5B6:   var_12C = var_88.Fields.Item("U_AE")
  loc_18AA5F2:   var_150 = IIf((Proc_6_38_E69628(CVar(var_12C)) = "E"), "Last Update : ", "entdt : ")
  loc_18AA636:   var_1A8 = var_88.Fields.Item("U_EntDt")
  loc_18AA64A:   var_1D8 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", var_150) & CVar(Proc_6_38_E69628(CVar(var_1A8))) 
  loc_18AA65C:   Me.LblLDt.Caption = CStr(var_1D8)
  loc_18AA697:   Set var_1EC = var_88 
  loc_18AA6D4:   Set var_128 = Me.Txt
  loc_18AA6DA:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(4), var_12C)
  loc_18AA6E2:   var_12C.Text = CStr(var_1EC.Fields.Item("DocID").Value)
  loc_18AA712:   var_B0 = var_1EC.Fields.Item("vType")
  loc_18AA723:   var_104 = CStr(var_B0.Value)
  loc_18AA731:   Set var_128 = Me.Txt
  loc_18AA737:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(0), var_12C)
  loc_18AA73F:   var_12C.Tag = var_104
  loc_18AA773:   Set var_9C = Me.Txt
  loc_18AA779:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(0), var_B0, var_104, "Select Description,NCAT From Voucher_Type Where V_Type='")
  loc_18AA781:   var_C0 = var_B0.Tag
  loc_18AA78A:   var_130 = -1 & var_104
  loc_18AA79A:   unk_59EE7B.Execute Proc_6_38_E69628(CVar(var_12C)) & "'", var_128, 
  loc_18AA7A5:   Set var_94 = var_128
  loc_18AA7D1:   If (var_94.RecordCount > 0) Then
  loc_18AA802:     global_120 = Proc_6_38_E69628(CVar(var_94.Fields.Item("NCat")))
  loc_18AA845:     Set var_128 = Me.Txt
  loc_18AA84B:     Call 0.Method_Proc_124_82_18ACBAC0 (CInt(0), var_12C)
  loc_18AA853:     var_12C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Description")))
  loc_18AA867:   End If
  loc_18AA8A0:   Set var_128 = Me.Txt
  loc_18AA8A6:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(1), var_12C)
  loc_18AA8AE:   var_12C.Text = CStr(var_1EC.Fields.Item("VNo").Value)
  loc_18AA916:   Set var_128 = Me.Txt
  loc_18AA91C:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(2), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_18AA924:   var_12C.Text = 1
  loc_18AA976:   Me.LblVPrefix.Caption = CStr(var_1EC.Fields.Item("vPrefix").Value)
  loc_18AA9C3:   Set var_128 = Me.Txt
  loc_18AA9C9:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(3), var_12C)
  loc_18AA9D1:   var_12C.Text = CStr(var_1EC.Fields.Item("Party").Value)
  loc_18AAA01:   var_B0 = var_1EC.Fields.Item("Party")
  loc_18AAA12:   var_104 = CStr(var_B0.Value)
  loc_18AAA20:   Set var_128 = Me.Txt
  loc_18AAA26:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(3), var_12C)
  loc_18AAA2E:   var_12C.Tag = var_104
  loc_18AAA62:   Set var_9C = Me.Txt
  loc_18AAA68:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(3), var_B0, var_104, "Select Name From SubGroup Where SubCode='")
  loc_18AAA70:   var_C0 = var_B0.Tag
  loc_18AAA79:   var_130 = -1 & var_104
  loc_18AAA89:   unk_59EE7B.Execute Proc_6_38_E69628(CVar(var_12C)) & "'", var_128, 1
  loc_18AAA94:   Set var_8C = var_128
  loc_18AAAC0:   If (var_8C.RecordCount > 0) Then
  loc_18AAAF9:     Set var_128 = Me.Txt
  loc_18AAAFF:     Call 0.Method_Proc_124_82_18ACBAC0 (CInt(3), var_12C)
  loc_18AAB07:     var_12C.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name")))
  loc_18AAB1B:   End If
  loc_18AAB43:   var_104 = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("RestCode")))
  loc_18AAB51:   Set var_128 = Me.Txt
  loc_18AAB57:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(5), var_12C)
  loc_18AAB5F:   var_12C.Tag = var_104
  loc_18AAB8D:   var_B0 = var_1EC.Fields.Item("RestCode")
  loc_18AABAF:   If CBool(var_B0.Value <> vbNullString) Then
  loc_18AABD0:     Set var_9C = Me.Txt
  loc_18AABD6:     Call 0.Method_Proc_124_82_18ACBAC0 (CInt(5), var_B0, var_104, "Select Name From Depart Where Code='")
  loc_18AABDE:     var_C0 = var_B0.Tag
  loc_18AABE7:     var_130 = -1 & var_104
  loc_18AABEE:     var_1DC = Proc_6_38_E69628(CVar(var_12C)) & "'"
  loc_18AABF7:     unk_59EE7B.Execute var_1DC, var_128, 
  loc_18AAC02:     Set var_94 = var_128
  loc_18AAC2E:     If (var_94.RecordCount > 0) Then
  loc_18AAC67:       Set var_128 = Me.Txt
  loc_18AAC6D:       Call 0.Method_Proc_124_82_18ACBAC0 (CInt(5), var_12C)
  loc_18AAC75:       var_12C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Name")))
  loc_18AAC89:     End If
  loc_18AAC89:   End If
  loc_18AACBF:   Set var_128 = Me.Txt
  loc_18AACC5:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(7), var_12C)
  loc_18AACCD:   var_12C.Tag = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("BOOKDOCID")))
  loc_18AAD32:   Set var_128 = Me.Txt
  loc_18AAD38:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(7), var_12C)
  loc_18AAD40:   var_12C.Text = Proc_6_38_E69628(Trim(Right(CVar(var_1EC.Fields.Item("BOOKDOCID")), 8)))
  loc_18AADAC:   Set var_128 = Me.Txt
  loc_18AADB2:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(&H15), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("ToBookDate")), "DD/MMM/YYYY")))
  loc_18AADBA:   var_12C.Text = 1
  loc_18AAE25:   Set var_128 = Me.txtM
  loc_18AAE2B:   Call 0.Method_Proc_124_82_18ACBAC0 (1, var_12C, CVar(CStr(Format(CVar(var_1EC.Fields.Item("FrBookTime")), "hh:mm"))))
  loc_18AAE33:   var_12C.defaultText = 1
  loc_18AAE9E:   Set var_128 = Me.Txt
  loc_18AAEA4:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(6), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("FrBookDate")), "DD/MMM/YYYY")), 1)
  loc_18AAEAC:   var_12C.Text = 1
  loc_18AAEF1:   var_E0 = "hh:mm"
  loc_18AAF0A:   var_124 = CVar(CStr(Format(CVar(var_1EC.Fields.Item("ToBookTime")), var_E0))) 'String
  loc_18AAF17:   Set var_128 = Me.txtM
  loc_18AAF1D:   Call 0.Method_Proc_124_82_18ACBAC0 (0, var_12C, var_124, 1)
  loc_18AAF25:   var_12C.defaultText = 1
  loc_18AAF74:   Set var_128 = Me.Txt
  loc_18AAF7A:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(&H13), var_12C)
  loc_18AAF82:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Remarks")), 1)
  loc_18AAFBC:   Proc_6_39_E7D3A0(var_E0, CVar(var_1EC.Fields.Item("NoofPax")))
  loc_18AAFD3:   Set var_128 = Me.Txt
  loc_18AAFD9:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(&H11), var_12C)
  loc_18AAFE1:   var_12C.Text = CStr(var_E0)
  loc_18AB01F:   Proc_6_39_E7D3A0(var_E0, CVar(var_1EC.Fields.Item("RatePerPax")))
  loc_18AB036:   Set var_128 = Me.Txt
  loc_18AB03C:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(&H12), var_12C)
  loc_18AB044:   var_12C.Text = CStr(var_E0)
  loc_18AB087:   var_E0 = "0.00"
  loc_18AB0AE:   Set var_128 = Me.Txt
  loc_18AB0B4:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(8), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("Advance")), var_E0)))
  loc_18AB0BC:   var_12C.Text = 1
  loc_18AB0FC:   Proc_6_39_E7D3A0(var_E0, CVar(var_1EC.Fields.Item("RectNo")))
  loc_18AB113:   Set var_128 = Me.Txt
  loc_18AB119:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(9), var_12C, CStr(var_E0))
  loc_18AB121:   var_12C.Text = 1
  loc_18AB18B:   Set var_128 = Me.Txt
  loc_18AB191:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(&HA), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("RectDate")), "DD/MMM/YYYY")))
  loc_18AB199:   var_12C.Text = 1
  loc_18AB1E9:   Set var_128 = Me.Txt
  loc_18AB1EF:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(&HC), var_12C)
  loc_18AB1F7:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("CrCardHoldER")), 1)
  loc_18AB241:   Set var_128 = Me.Txt
  loc_18AB247:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(&HB), var_12C)
  loc_18AB24F:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("CrCardNo")))
  loc_18AB299:   Set var_128 = Me.Txt
  loc_18AB29F:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(&H18), var_12C)
  loc_18AB2A7:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Narration")))
  loc_18AB2D2:   var_B0 = var_1EC.Fields.Item("Narration1")
  loc_18AB2F1:   Set var_128 = Me.Txt
  loc_18AB2F7:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(&H19), var_12C)
  loc_18AB315:   Set var_1EC = Nothing 
  loc_18AB325:   Set var_9C = Me.TxtGt
  loc_18AB32B:   Call 0.Method_Proc_124_82_18ACBAC8 (var_1EE, var_8E)
  loc_18AB336:   For var_1F2 = 1 To var_1EE: 2 = var_1F2 'Integer
  loc_18AB349:     Set var_9C = Me.LblCap
  loc_18AB34F:     Call 0.Method_Proc_124_82_18ACBAC0 (var_8E, var_B0)
  loc_18AB36E:     If (var_B0.Tag = "SNET") Then
  loc_18AB37E:       Set var_9C = Me.TxtGt
  loc_18AB384:       Call 0.Method_Proc_124_82_18ACBAC0 (var_8E, var_B0)
  loc_18AB399:       var_200 = Val(var_B0.Text)
  loc_18AB3AA:       Set var_128 = Me.Txt
  loc_18AB3B0:       Call 0.Method_Proc_124_82_18ACBAC0 (CInt(&HF), var_12C, Proc_6_38_E69628(CVar(var_12C)))
  loc_18AB3C5:       var_208 = Val(Proc_6_38_E69628(CVar(var_12C)))
  loc_18AB3D6:       Set var_194 = Me.Txt
  loc_18AB3DC:       Call 0.Method_Proc_124_82_18ACBAC0 (CInt(8), var_1A8, var_1DC)
  loc_18AB414:       var_C0 = CVar((Proc_6_38_E69628(CVar(var_B0)) - (var_1A8.Text + Val(var_1DC)))) 'Double
  loc_18AB432:       Set var_1E0 = Me.Txt
  loc_18AB438:       Call 0.Method_Proc_124_82_18ACBAC0 (CInt(&H10), var_1F8, CStr(Format(CVar(var_B0), "0.00")), 1)
  loc_18AB440:       var_1F8.Text = 1
  loc_18AB46C:     End If
  loc_18AB46F:   Next var_1F2 'Integer
  loc_18AB482:   Set var_9C = Me.Txt
  loc_18AB488:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(2), var_B0)
  loc_18AB49E:   Call Proc_124_93_1A8A2AC(CDate(var_B0.Text))
  loc_18AB4DF:   Call Proc_124_103_13E5A24(CStr(Me.Fields.Item("SearchCode").Value))
  loc_18AB500:   Me.FGrid.Redraw = False
  loc_18AB51B:   Me.FGrid.Rows = 1
  loc_18AB525:   var_8E = 1
  loc_18AB535:   var_D0 = "Select S.*,I.Name as ItemName,IC.TaxStru,I.DiscApp,I.RateEdit,I.Kitchen,I.SChrgApp From HallStock S Left Join ItemMast I On (S.Item=I.Code And S.RestCode = I.RestCode) Left Join ItemCatMast IC on IC.Code=I.ItemCatCode Where S.DocId='"
  loc_18AB57E:   unk_59EE7B.Execute CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_18AB589:   Set var_88 = var_128
  loc_18AB5B7:   If (var_88.RecordCount > 0) Then
  loc_18AB5BA:     ' Referenced from: 18ABD44
  loc_18AB5C9:     If Not(var_88.EOF) Then
  loc_18AB5CC:       var_AC = vbNullString
  loc_18AB5D6:       Set var_9C = Me.FGrid
  loc_18AB5EB:       Set var_214 = Me.FGrid
  loc_18AB5F2:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_18AB5FA:       var_114 = CVar(CLng(0)) 'Long
  loc_18AB62A:       var_E0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_18AB631:       LateIdCallSt
  loc_18AB64B:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_18AB653:       var_114 = CVar(CLng(9)) 'Long
  loc_18AB683:       var_E0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_18AB68A:       LateIdCallSt
  loc_18AB6D9:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_214, var_E0, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_18AB6E0:       LateIdCallSt
  loc_18AB712:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AB71A:       var_140 = CVar(CLng(3)) 'Long
  loc_18AB747:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_18AB74E:       LateIdCallSt
  loc_18AB784:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AB78C:       var_140 = CVar(CLng(4)) 'Long
  loc_18AB7B9:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_18AB7C0:       LateIdCallSt
  loc_18AB7F6:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AB7FE:       var_140 = CVar(CLng(5)) 'Long
  loc_18AB82B:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_18AB832:       LateIdCallSt
  loc_18AB868:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AB870:       var_140 = CVar(CLng(7)) 'Long
  loc_18AB89D:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_18AB8A4:       LateIdCallSt
  loc_18AB8DA:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AB8E2:       var_140 = CVar(CLng(6)) 'Long
  loc_18AB90F:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_18AB916:       LateIdCallSt
  loc_18AB94C:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AB988:       LateIdCallSt
  loc_18AB9D7:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(2)), CVar(CLng(var_8E)), var_214, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_18AB9DE:       LateIdCallSt
  loc_18ABA27:       Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("TaxStru")), CVar(CLng(&H10)), CVar(CLng(var_8E)), var_214, var_E0)
  loc_18ABA37:       LateIdCallSt
  loc_18ABA84:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(&HA)), CVar(CLng(var_8E)), var_214, CVar(CStr(var_E0)), CVar(CLng(8)))) 'String
  loc_18ABA8B:       LateIdCallSt
  loc_18ABAD6:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DiscApp")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ABADD:       LateIdCallSt
  loc_18ABB28:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DiscPer")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ABB2F:       LateIdCallSt
  loc_18ABB7A:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DiscAmt")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ABB81:       LateIdCallSt
  loc_18ABBCC:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H11)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ABBD3:       LateIdCallSt
  loc_18ABC1E:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Kitchen")), CVar(CLng(&H12)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ABC25:       LateIdCallSt
  loc_18ABC70:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SChrgApp")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ABC77:       LateIdCallSt
  loc_18ABCC2:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SChrgPer")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ABCC9:       LateIdCallSt
  loc_18ABD14:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SChrgAmt")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ABD1B:       LateIdCallSt
  loc_18ABD2F:       Set var_214 = Nothing 
  loc_18ABD39:       var_8E = (var_8E + 1)
  loc_18ABD3F:       var_88.MoveNext
  loc_18ABD44:       GoTo loc_18AB5BA
  loc_18ABD47:     End If
  loc_18ABD5A:     Me.FGrid.FixedRows = 1
  loc_18ABD62:   End If
  loc_18ABD70:   Me.FGrid.Redraw = True
  loc_18ABD8C:   var_E0 = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM HallSale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_18ABDC9:   var_104 = CStr(var_E0 & Me.Fields.Item("SearchCode").Value & "'")
  loc_18ABDD3:   unk_59EE7B.Execute var_104, var_150, -1
  loc_18ABDDE:   Set var_88 = var_128
  loc_18ABE0D:   Me.FGCat.Rows = 1
  loc_18ABE29:   If (var_88.RecordCount > 0) Then
  loc_18ABE2C:     ' Referenced from: 18AC1F4
  loc_18ABE3B:     If Not(var_88.EOF) Then
  loc_18ABE42:       Set var_218 = Me.FGCat
  loc_18ABE45:       var_AC = vbNullString
  loc_18ABE6F:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18ABE77:       var_114 = CVar(CLng(0)) 'Long
  loc_18ABEA7:       var_100 = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_18ABEAE:       LateIdCallSt
  loc_18ABEE1:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18ABEE9:       var_114 = CVar(CLng(1)) 'Long
  loc_18ABF19:       var_100 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_18ABF20:       LateIdCallSt
  loc_18ABF53:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18ABF5B:       var_114 = CVar(CLng(2)) 'Long
  loc_18ABF8B:       var_100 = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_18ABF92:       LateIdCallSt
  loc_18ABFC5:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18ABFCD:       var_114 = CVar(CLng(3)) 'Long
  loc_18ABFFD:       var_100 = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_18AC004:       LateIdCallSt
  loc_18AC037:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AC03F:       var_114 = CVar(CLng(4)) 'Long
  loc_18AC06F:       var_100 = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_18AC076:       LateIdCallSt
  loc_18AC0A9:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AC0B1:       var_114 = CVar(CLng(5)) 'Long
  loc_18AC0E1:       var_100 = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_18AC0E8:       LateIdCallSt
  loc_18AC11B:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AC123:       var_114 = CVar(CLng(6)) 'Long
  loc_18AC153:       var_100 = CVar(CStr(var_88.Fields.Item("TaxAmt").Value)) 'String
  loc_18AC15A:       LateIdCallSt
  loc_18AC18D:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AC195:       var_114 = CVar(CLng(7)) 'Long
  loc_18AC1C5:       var_100 = CVar(CStr(var_88.Fields.Item("Sundry").Value)) 'String
  loc_18AC1CC:       LateIdCallSt
  loc_18AC1E8:       Set var_218 = Nothing 
  loc_18AC1EF:       var_88.MoveNext
  loc_18AC1F4:       GoTo loc_18ABE2C
  loc_18AC1F7:     End If
  loc_18AC1F7:   End If
  loc_18AC1FD:   If (var_8E = 1) Then
  loc_18AC213:     Me.FGrid.Rows = 1
  loc_18AC21F:     Set var_128 = Me.FGrid
  loc_18AC239:     var_C0 = CVar(CStr(Proc_6_127_F25B10(var_128, CInt(0), var_218, var_100, var_114, "'", var_218, var_100))) 'String
  loc_18AC241:     Set var_B0 = Me.FGrid
  loc_18AC26E:     Me.FGrid.FixedRows = 1
  loc_18AC276:   End If
  loc_18AC294:   Set var_9C = Me.Txt
  loc_18AC29A:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(7), var_B0, var_104, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='", var_C0, -1, var_128)
  loc_18AC2A2:   FGrid.DispID_10000 = var_B0.Tag
  loc_18AC2AB:   var_130 = var_C0 & var_104
  loc_18AC2B2:   var_1DC = var_130 & "'"
  loc_18AC2BB:   unk_59EE7B.Execute var_1DC, var_114, "'"
  loc_18AC2C6:   Set var_88 = var_128
  loc_18AC2ED:   Me.FGrid1.Redraw = False
  loc_18AC308:   Me.FGrid1.Rows = 1
  loc_18AC310:   var_AC = vbNullString
  loc_18AC31A:   Set var_9C = Me.FGrid1
  loc_18AC33E:   Me.FGrid1.FixedRows = 1
  loc_18AC346:   ' Referenced from: 18AC71A
  loc_18AC34C:   var_1EE = var_88.EOF
  loc_18AC355:   If Not(var_1EE) Then
  loc_18AC371:     var_AC = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_18AC380:     Me.FGrid1.Row = 1
  loc_18AC393:     Set var_21C = Me.FGrid1
  loc_18AC3A9:     var_140 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_18AC3D0:     var_AC = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_18AC3F3:     var_104 = CStr(Me.FGrid1.TextMatrix))
  loc_18AC401:     var_124 = CVar(CStr((Val(var_104) + CDbl(1)))) 'String
  loc_18AC408:     LateIdCallSt
  loc_18AC44B:     var_AC = "VenueName"
  loc_18AC470:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_AC)), 1, CVar(CLng(Me.FGrid1.Row)), var_21C, Me.FGrid1.Row & Me.Fields.Item("SearchCode").Value & "'", 0, var_AC)) 'String
  loc_18AC477:     LateIdCallSt
  loc_18AC4D8:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_21C, var_100, 0)) 'String
  loc_18AC4DF:     LateIdCallSt
  loc_18AC540:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_21C, var_100)) 'String
  loc_18AC547:     LateIdCallSt
  loc_18AC5A8:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_21C, var_100)) 'String
  loc_18AC5AF:     LateIdCallSt
  loc_18AC610:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_21C, var_100)) 'String
  loc_18AC617:     LateIdCallSt
  loc_18AC667:     var_B0 = var_88.Fields.Item("VenuCode")
  loc_18AC678:     var_100 = CVar(Proc_6_38_E69628(CVar(var_B0), 6, CVar(CLng(Me.FGrid1.Row)), var_21C, var_100)) 'String
  loc_18AC67F:     LateIdCallSt
  loc_18AC69B:     Set var_128 = Me.FGrid1
  loc_18AC6C6:     Set var_9C = Me.Txt
  loc_18AC6CC:     Call 0.Method_Proc_124_82_18ACBAC0 (CInt(1), var_B0, var_104, 7, CVar(CLng(var_128.Row)), var_21C)
  loc_18AC6D4:     var_100 = var_B0.Text
  loc_18AC6DC:     var_E0 = CVar(var_104) 'String
  loc_18AC6E3:     LateIdCallSt
  loc_18AC6FB:     var_AC = vbNullString
  loc_18AC704:     Proc_124_82_18ACBAC2 = var_21C.Name
  loc_18AC70E:     Set var_21C = Nothing 
  loc_18AC715:     var_88.MoveNext
  loc_18AC71A:     GoTo loc_18AC346
  loc_18AC71D:   End If
  loc_18AC724:   Set var_9C = Me.TxtGt
  loc_18AC72A:   Call 0.Method_Proc_124_82_18ACBAC8 (var_1EE, Proc_124_82_18ACBAC2, var_AC, var_21C, var_E0)
  loc_18AC73C:   Set var_B0 = Me.TxtGt
  loc_18AC742:   Call 0.Method_Proc_124_82_18ACBAC0 (var_1EE, var_128, var_104, var_140)
  loc_18AC74A:   FGrid1.DispID_10000 = var_128.Text
  loc_18AC757:   var_200 = Val(var_104)
  loc_18AC761:   Set var_12C = Me.TextGt
  loc_18AC767:   Call 0.Method_Proc_124_82_18ACBAC8 (var_22E, var_200, var_AC)
  loc_18AC779:   Set var_194 = Me.TextGt
  loc_18AC77F:   Call 0.Method_Proc_124_82_18ACBAC0 (var_22E, var_1A8, var_130)
  loc_18AC787:   var_218 = var_1A8.Text
  loc_18AC794:   var_208 = Val(var_130)
  loc_18AC7A5:   Set var_1E0 = Me.Txt
  loc_18AC7AB:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(8), var_1F8, var_1DC)
  loc_18AC7C0:   var_210 = Val(var_1DC)
  loc_18AC7E3:   var_C0 = CVar(((var_200 + var_1F8.Text) - var_210)) 'Double
  loc_18AC801:   Set var_234 = Me.Txt
  loc_18AC807:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(&H14), var_238, CStr(Format(var_128.Row, "0.00")), 1)
  loc_18AC80F:   var_238.Text = 1
  loc_18AC846:   Set var_9C = Me.TxtGt
  loc_18AC84C:   Call 0.Method_Proc_124_82_18ACBAC8 (var_1EE, var_210)
  loc_18AC85E:   Set var_B0 = Me.TxtGt
  loc_18AC864:   Call 0.Method_Proc_124_82_18ACBAC0 (var_1EE, var_128)
  loc_18AC879:   var_200 = Val(var_128.Text)
  loc_18AC883:   Set var_12C = Me.TextGt
  loc_18AC889:   Call 0.Method_Proc_124_82_18ACBAC8 (var_22E, var_200)
  loc_18AC89B:   Set var_194 = Me.TextGt
  loc_18AC8A1:   Call 0.Method_Proc_124_82_18ACBAC0 (var_22E, var_1A8)
  loc_18AC8B6:   var_208 = Val(var_1A8.Text)
  loc_18AC8D5:   var_C0 = CVar((var_200 + var_208)) 'Double
  loc_18AC8DC:   var_100 = Format(var_128.Row, "0.00")
  loc_18AC8F3:   Set var_1E0 = Me.Txt
  loc_18AC8F9:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(&H1A), var_1F8, CStr(var_100), 1)
  loc_18AC901:   var_1F8.Text = 1
  loc_18AC939:   Me.FGrid1.Redraw = True
  loc_18AC994:   Proc_348_21_12A8ED8(CStr(Me.Fields.Item("DocID").Value), Me.QrImage, global_160, global_164)
  loc_18AC9AD: Else
  loc_18AC9AD:   Call Proc_124_84_1049910(global_168, var_208)
  loc_18AC9B6:   Set var_B0 = Me.QrImage
  loc_18AC9CB:   var_130 = 0
  loc_18AC9D6:   var_104 = 0
  loc_18AC9E8:   Proc_348_21_12A8ED8(vbNullString, var_B0, var_104)
  loc_18AC9FB: End If
  loc_18ACA09: Set var_9C = Me.Txt
  loc_18ACA0F: Call 0.Method_Proc_124_82_18ACBAC0 (CInt(8), var_B0, var_104)
  loc_18ACA17: var_130 = var_B0.Text
  loc_18ACA33: If (CDbl(Val(var_104)) = CDbl(0)) Then
  loc_18ACA3F:   Set var_9C = Me.LBLRectno
  loc_18ACA45:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_18ACA5A:   Set var_9C = Me.Txt
  loc_18ACA60:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(9), var_B0, 0)
  loc_18ACA68:   var_B0.Visible = False
  loc_18ACA81:   Set var_9C = Me.Txt
  loc_18ACA87:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(&HA), var_B0)
  loc_18ACA8F:   var_B0.Visible = False
  loc_18ACA9E: Else
  loc_18ACAA6:   Set var_9C = Me.LBLRectno
  loc_18ACAAC:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_18ACAC1:   Set var_9C = Me.Txt
  loc_18ACAC7:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(9), var_B0)
  loc_18ACACF:   var_B0.Visible = True
  loc_18ACAE8:   Set var_9C = Me.Txt
  loc_18ACAEE:   Call 0.Method_Proc_124_82_18ACBAC0 (CInt(&HA), var_B0)
  loc_18ACAF6:   var_B0.Visible = True
  loc_18ACB02: End If
  loc_18ACB10: Set var_9C = Me.Txt
  loc_18ACB16: Call 0.Method_Proc_124_82_18ACBAC0 (CInt(3), var_B0)
  loc_18ACB35: If (var_B0.Tag = vbNullString) Then
  loc_18ACB44:   Me.CmdeInvoiceJson.Enabled = False
  loc_18ACB58:   Me.CmdGeneInvoice.Enabled = False
  loc_18ACB63: Else
  loc_18ACB6F:   Me.CmdeInvoiceJson.Enabled = True
  loc_18ACB83:   Me.CmdGeneInvoice.Enabled = True
  loc_18ACB8B: End If
  loc_18ACB8B: Call Proc_124_104_FAAAD4(var_100)
  loc_18ACB90: Call Proc_124_87_F294C0()
  loc_18ACB9A: Set var_88 = Nothing
  loc_18ACBA2: Set var_94 = Nothing
  loc_18ACBA5: Exit Sub
  loc_18ACBA6: ' Referenced from: 18AA3BC
  loc_18ACBA6: Proc_6_60_E63754()
  loc_18ACBAB: Exit Sub
End Sub

Public Sub Proc_124_83_11332DC
  'Data Table: 59EE5C
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_59EE7B As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_1132F85: Set var_9C = Me.TopCtrl1
  loc_1132F8B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_1132F93: var_B0 = CStr()
  loc_1132FA4: If (var_B0 = "Add") Then
  loc_1132FD4:   Set var_9C = Me.Txt
  loc_1132FDA:   Call 0.Method_Proc_124_83_11332DC0 (CInt(4), var_B4, var_B0, "Select Count(*) From HallSale1 Where DocID='", var_AC, -1)
  loc_1132FFB:   unk_59EE7B.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_113300B:    = var_D4.Item()
  loc_1133013:    = var_E8.Value
  loc_1133040:   If (var_B4.Text.Fields > 0) Then
  loc_1133049:     Call 0.Method_arg_50 (var_B0)
  loc_113306A:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_1133080:     Call Proc_124_90_11C0734(MemVar_1F95044)
  loc_1133093:     Set var_9C = Me.Txt
  loc_1133099:     Call 0.Method_Proc_124_83_11332DC0 (CInt(4), var_B4)
  loc_11330A1:     var_B4.Text = var_B0
  loc_11330B5:     Proc_124_83_11332DC = 0
  loc_11330BB:   End If
  loc_11330BB: End If
  loc_11330E0: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_11330EA:   var_CC = CVar(CLng(var_88)) 'Long
  loc_11330F2:   var_108 = CVar(CLng(1)) 'Long
  loc_1133112:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_113312E:   If CBool(var_118 <> vbNullString) Then
  loc_1133135:     var_CC = CVar(CLng(var_88)) 'Long
  loc_113313D:     var_108 = CVar(CLng(3)) 'Long
  loc_113316D:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1133195:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_11331BB:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_11331C7:       Set var_9C = Me.FGrid
  loc_11331EB:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_11331F8:       Proc_124_83_11332DC = 0
  loc_11331FE:     End If
  loc_1133202:     var_CC = CVar(CLng(var_88)) 'Long
  loc_113320A:     var_108 = CVar(CLng(4)) 'Long
  loc_113323A:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1133262:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1133288:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1133294:       Set var_9C = Me.FGrid
  loc_11332B8:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_11332C5:       Proc_124_83_11332DC = 0
  loc_11332CB:     End If
  loc_11332CB:   End If
  loc_11332CE: Next var_12C 'Integer
  loc_11332D3: Proc_124_83_11332DC = 
End Sub

Public Sub Proc_124_84_1049910
  'Data Table: 59EE5C
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_C8 As Variant
  loc_10496B5: Me.LblVPrefix.Caption = vbNullString
  loc_10496CB: Set var_8C = Me.Txt
  loc_10496D1: Call 0.Method_Proc_124_84_1049910C (var_8E, var_86)
  loc_10496E1: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10496F7:   Set var_8C = Me.Txt
  loc_10496FD:   Call 0.Method_Proc_124_84_10499100 (CInt(var_86), var_98)
  loc_1049705:   var_98.Text = vbNullString
  loc_1049721:   Set var_8C = Me.Txt
  loc_1049727:   Call 0.Method_Proc_124_84_10499100 (CInt(var_86), var_98)
  loc_104972F:   var_98.Tag = vbNullString
  loc_104973E: Next var_92 'Byte
  loc_1049753: Set var_8C = Me.txtM
  loc_1049759: Call 0.Method_Proc_124_84_10499100 (0, var_98)
  loc_1049761: var_98.Text = "0:00"
  loc_104977C: Set var_8C = Me.txtM
  loc_1049782: Call 0.Method_Proc_124_84_10499100 (0, var_98)
  loc_104978A: var_98.Tag = vbNullString
  loc_10497A5: Set var_8C = Me.txtM
  loc_10497AB: Call 0.Method_Proc_124_84_10499100 (1, var_98)
  loc_10497B3: var_98.Text = "0:00"
  loc_10497CE: Set var_8C = Me.txtM
  loc_10497D4: Call 0.Method_Proc_124_84_10499100 (1, var_98)
  loc_10497DC: var_98.Tag = vbNullString
  loc_10497EE: global_160 = vbNullString
  loc_10497F8: global_164 = vbNullString
  loc_1049806: global_168 = CDate(CDbl(1))
  loc_104981C: Me.FGrid.Rows = 1
  loc_1049842: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_104984A: Set var_98 = Me.FGrid
  loc_1049877: Me.FGrid.FixedRows = 1
  loc_1049892: Me.FGrid1.Rows = 1
  loc_10498B6: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid1, 0, FGrid.DispID_10000))) 'String
  loc_10498BE: Set var_98 = Me.FGrid1
  loc_10498EB: Me.FGrid1.FixedRows = 1
  loc_1049906: Me.FGCat.Rows = 0
  loc_104990E: Exit Sub
End Sub

Public Sub Proc_124_85_10378B8
  'Data Table: 59EE5C
  Dim var_98 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_1037672: Set var_8C = Me.Txt
  loc_1037678: Call 0.Method_Proc_124_85_10378B8C (var_8E, var_86)
  loc_1037688: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10376C6:   If Not((((((((var_86 = 0) Or (var_86 = 2)) Or (var_86 = 1)) Or (var_86 = 4)) Or (var_86 = 7)) Or (var_86 = &H17)) Or (var_86 = &H18))) Then
  loc_10376D9:     Set var_8C = Me.Txt
  loc_10376DF:     Call 0.Method_Proc_124_85_10378B80 (CInt(var_86), var_98)
  loc_10376E7:     var_98.Text = vbNullString
  loc_1037703:     Set var_8C = Me.Txt
  loc_1037709:     Call 0.Method_Proc_124_85_10378B80 (CInt(var_86), var_98)
  loc_1037711:     var_98.Tag = vbNullString
  loc_103771D:   End If
  loc_1037720: Next var_92 'Byte
  loc_1037735: Set var_8C = Me.txtM
  loc_103773B: Call 0.Method_Proc_124_85_10378B80 (0, var_98)
  loc_1037743: var_98.Text = "0:00"
  loc_103775E: Set var_8C = Me.txtM
  loc_1037764: Call 0.Method_Proc_124_85_10378B80 (0, var_98)
  loc_103776C: var_98.Tag = vbNullString
  loc_1037787: Set var_8C = Me.txtM
  loc_103778D: Call 0.Method_Proc_124_85_10378B80 (1, var_98)
  loc_1037795: var_98.Text = "0:00"
  loc_10377B0: Set var_8C = Me.txtM
  loc_10377B6: Call 0.Method_Proc_124_85_10378B80 (1, var_98)
  loc_10377BE: var_98.Tag = vbNullString
  loc_10377DD: Me.FGrid.Rows = 1
  loc_1037803: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_103780B: Set var_98 = Me.FGrid
  loc_1037838: Me.FGrid.FixedRows = 1
  loc_1037853: Me.FGrid1.Rows = 1
  loc_1037877: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid1, 0, FGrid.DispID_10000))) 'String
  loc_103787F: Set var_98 = Me.FGrid1
  loc_10378AC: Me.FGrid1.FixedRows = 1
  loc_10378B4: Exit Sub
  loc_10378B5: StAryRecMove
End Sub

Public Sub Proc_124_86_10C6048(arg_C) '10C6048
  'Data Table: 59EE5C
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_8C As Variant
  loc_10C5D5A: Set var_8C = Me.Txt
  loc_10C5D60: Call 0.Method_Proc_124_86_10C6048C (var_8E, var_86)
  loc_10C5D70: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10C5D86:   Set var_8C = Me.Txt
  loc_10C5D8C:   Call 0.Method_Proc_124_86_10C60480 (CInt(var_86), var_98)
  loc_10C5D94:   var_98.Enabled = arg_C
  loc_10C5DA3: Next var_92 'Byte
  loc_10C5DB7: Set var_8C = Me.txtM
  loc_10C5DBD: Call 0.Method_Proc_124_86_10C60480 (0, var_98)
  loc_10C5DC5: var_98.Enabled = False
  loc_10C5DDF: Set var_8C = Me.txtM
  loc_10C5DE5: Call 0.Method_Proc_124_86_10C60480 (1, var_98)
  loc_10C5DED: var_98.Enabled = False
  loc_10C5E06: Set var_8C = Me.Txt
  loc_10C5E0C: Call 0.Method_Proc_124_86_10C60480 (CInt(&H15), var_98)
  loc_10C5E14: var_98.Enabled = False
  loc_10C5E2D: Set var_8C = Me.Txt
  loc_10C5E33: Call 0.Method_Proc_124_86_10C60480 (CInt(6), var_98)
  loc_10C5E3B: var_98.Enabled = False
  loc_10C5E54: Set var_8C = Me.Txt
  loc_10C5E5A: Call 0.Method_Proc_124_86_10C60480 (CInt(4), var_98)
  loc_10C5E62: var_98.Enabled = False
  loc_10C5E7B: Set var_8C = Me.Txt
  loc_10C5E81: Call 0.Method_Proc_124_86_10C60480 (CInt(8), var_98)
  loc_10C5E89: var_98.Enabled = False
  loc_10C5EA2: Set var_8C = Me.Txt
  loc_10C5EA8: Call 0.Method_Proc_124_86_10C60480 (CInt(&HA), var_98)
  loc_10C5EB0: var_98.Enabled = False
  loc_10C5EC9: Set var_8C = Me.Txt
  loc_10C5ECF: Call 0.Method_Proc_124_86_10C60480 (CInt(9), var_98)
  loc_10C5ED7: var_98.Enabled = False
  loc_10C5EF0: Set var_8C = Me.Txt
  loc_10C5EF6: Call 0.Method_Proc_124_86_10C60480 (CInt(&H10), var_98)
  loc_10C5EFE: var_98.Enabled = False
  loc_10C5F17: Set var_8C = Me.Txt
  loc_10C5F1D: Call 0.Method_Proc_124_86_10C60480 (CInt(&H14), var_98)
  loc_10C5F25: var_98.Enabled = False
  loc_10C5F3E: Set var_8C = Me.Txt
  loc_10C5F44: Call 0.Method_Proc_124_86_10C60480 (CInt(&H1A), var_98)
  loc_10C5F4C: var_98.Enabled = False
  loc_10C5F65: Set var_8C = Me.Txt
  loc_10C5F6B: Call 0.Method_Proc_124_86_10C60480 (CInt(&HC), var_98)
  loc_10C5F73: var_98.Enabled = False
  loc_10C5F8C: Set var_8C = Me.Txt
  loc_10C5F92: Call 0.Method_Proc_124_86_10C60480 (CInt(&HB), var_98)
  loc_10C5F9A: var_98.Enabled = False
  loc_10C5FB3: Set var_8C = Me.Command1
  loc_10C5FB9: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000D(Not(arg_C))
  loc_10C5FD2: Me.CmdeInvoiceJson.Enabled = Not(arg_C)
  loc_10C5FE8: Me.CmdGeneInvoice.Enabled = Not(arg_C)
  loc_10C5FF8: Set var_8C = Me.FreInvInfo
  loc_10C5FFE: var_8C.Visible = Not(arg_C)
  loc_10C6024: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_10C6039: Me.QrImage.Picture = var_8C
  loc_10C6045: Exit Sub
  loc_10C6046: GoTo loc_10C41A8
End Sub

Public Sub Proc_124_87_F294C0
  'Data Table: 59EE5C
  loc_F293CC: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F293DE:   Me.DGParty.Visible = False
  loc_F293E6: End If
  loc_F29402: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F29414:   Me.DGVType.Visible = False
  loc_F2941C: End If
  loc_F29438: If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_F2944A:   Me.DGHall.Visible = False
  loc_F29452: End If
  loc_F2946E: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F29480:   Me.DGItem.Visible = False
  loc_F29488: End If
  loc_F294A4: If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_F294B6:   Me.DGBookNo.Visible = False
  loc_F294BE: End If
  loc_F294BE: Exit Sub
End Sub

Public Sub Proc_124_88_F0CECC
  'Data Table: 59EE5C
  loc_F0CDF0: Call Proc_124_87_F294C0()
  loc_F0CE00: Set var_88 = Me.Txt
  loc_F0CE06: Call 0.Method_Proc_124_88_F0CECC0 (CInt(2))
  loc_F0CE2F: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0CE32:   Exit Sub
  loc_F0CE33: End If
  loc_F0CE3E: Set var_88 = Me.Txt
  loc_F0CE44: Call 0.Method_Proc_124_88_F0CECC0 (CInt(1), var_8C)
  loc_F0CE6D: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0CE70:   Exit Sub
  loc_F0CE71: End If
  loc_F0CEA8: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0CEAB:   Call TopCtrl1_UnknownEvent_16()
  loc_F0CEB3: Else
  loc_F0CEB9:   Call 0.Method_arg_1E8 (var_88)
  loc_F0CEC1:   Call var_88.SetFocus
  loc_F0CECA: End If
  loc_F0CECA: Exit Sub
End Sub

Public Sub Proc_124_89_11540FC
  'Data Table: 59EE5C
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_17C As Variant
  Dim var_210 As Variant
  loc_1153D8B: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153D93: var_C8 = CVar(CLng(4)) 'Long
  loc_1153DCB: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153DD3: var_134 = CVar(CLng(3)) 'Long
  loc_1153E0B: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153E13: var_1F0 = CVar(CLng(5)) 'Long
  loc_1153E44: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_1153E4C: Set var_224 = Me.FGrid
  loc_1153E52: LateIdCallSt
  loc_1153E98: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153EA0: var_C8 = CVar(CLng(6)) 'Long
  loc_1153ED8: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1153EEE:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153EF6:   var_C8 = CVar(CLng(5)) 'Long
  loc_1153F2E:   var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153F36:   var_134 = CVar(CLng(6)) 'Long
  loc_1153F6E:   var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153F76:   var_1F0 = CVar(CLng(7)) 'Long
  loc_1153FAB:   var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_1153FB3:   Set var_224 = Me.FGrid
  loc_1153FB9:   LateIdCallSt
  loc_1153FEC: End If
  loc_1153FFF: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154007: var_C8 = CVar(CLng(5)) 'Long
  loc_115403F: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154047: var_134 = CVar(CLng(7)) 'Long
  loc_115407F: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154087: var_1F0 = CVar(CLng(8)) 'Long
  loc_11540A8: var_17C = CVar((Val(CStr(Me.FGrid.TextMatrix))) + Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_11540B8: var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_11540C0: Set var_224 = Me.FGrid
  loc_11540C6: LateIdCallSt
  loc_11540F9: Exit Sub
End Sub

Public Sub Proc_124_90_11C0734
  'Data Table: 59EE5C
  Dim var_98 As Variant
  Dim var_9C As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_11C0328: Set var_94 = Me.Txt
  loc_11C032E: Call 0.Method_Proc_124_90_11C07340 (CInt(0), var_98)
  loc_11C033E: var_90 = var_98.Tag
  loc_11C035C: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_11C038D: Set var_94 = Me.Txt
  loc_11C0393: Call 0.Method_Proc_124_90_11C07340 (CInt(2), var_98, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_11C03A2: Proc_6_7_F26918(var_CC, CVar(var_98), var_130)
  loc_11C03AA: var_EC = -1 & var_CC 
  loc_11C03BE: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_11C03C9: Set var_8C = var_134
  loc_11C0405: If (var_8C.RecordCount > 0) Then
  loc_11C0436:   global_156 = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Number_Method")))
  loc_11C047F:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_11C04B3:     global_112 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11C04DE:     var_98 = var_8C.Fields.Item("start_srl_no")
  loc_11C04F3:     var_CC = (var_98.Value + 1)
  loc_11C04FB:     global_116 = CInt(var_CC)
  loc_11C0519:     Set var_94 = Me.Txt
  loc_11C051F:     Call 0.Method_Proc_124_90_11C07340 (CInt(1), var_98)
  loc_11C0527:     var_98.Enabled = False
  loc_11C0540:     Set var_94 = Me.Txt
  loc_11C0546:     Call 0.Method_Proc_124_90_11C07340 (CInt(2), var_98)
  loc_11C054E:     var_98.Enabled = False
  loc_11C055D:   Else
  loc_11C058E:     global_112 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11C05B9:     var_98 = var_8C.Fields.Item("start_srl_no")
  loc_11C05CE:     var_CC = (var_98.Value + 1)
  loc_11C05D6:     global_116 = CInt(var_CC)
  loc_11C05E7:   End If
  loc_11C05E7: End If
  loc_11C0612: var_BC = Space((5 - Len(var_90)))
  loc_11C061A: var_DC = (CVar(global_116 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_98.Value)
  loc_11C062E: var_EC = Space((5 - Len(global_112)))
  loc_11C0636: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_11C0643: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_112))
  loc_11C065C: var_14C = Space((8 - Len(CStr(global_116))))
  loc_11C0664: var_15C = (var_130 + var_14C)
  loc_11C0673: var_17C = (var_15C + CVar(CStr(global_116)))
  loc_11C067E: global_104 = CStr(var_17C)
  loc_11C06B4: Me.LblVPrefix.Caption = global_112
  loc_11C06CD: Set var_94 = Me.Txt
  loc_11C06D3: Call 0.Method_Proc_124_90_11C07340 (CInt(4), var_98)
  loc_11C06DB: var_98.Text = global_104
  loc_11C06FD: Set var_94 = Me.Txt
  loc_11C0703: Call 0.Method_Proc_124_90_11C07340 (CInt(1), var_98)
  loc_11C070B: var_98.Text = CStr(global_116)
  loc_11C0720: var_88 = global_104
  loc_11C0728: Set var_8C = Nothing
  loc_11C072B: Proc_124_90_11C0734 = global_116
  loc_11C0731: () = 
End Sub

Public Sub Proc_124_91_10B9DA0(arg_C, arg_10, arg_14) '10B9DA0
  'Data Table: 59EE5C
  Dim unk_59EE7B As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B9B0E: If (arg_C = "HSBIL") Then
  loc_10B9B35:   unk_59EE7B.Execute "Select Distinct DocId,V_Type,V_No From HallSale1 Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B9B40:   Set var_8C = var_C4
  loc_10B9B53:   var_94 = "Sale Bill "
  loc_10B9B59: Else
  loc_10B9B5E:   Proc_124_91_10B9DA0 = &HFF
  loc_10B9B64: End If
  loc_10B9B78: If (var_8C.RecordCount > 0) Then
  loc_10B9B7B:   ' Referenced from: 10B9CF4
  loc_10B9B8A:   If Not(var_8C.EOF) Then
  loc_10B9B95:     If (var_90 = vbNullString) Then
  loc_10B9BD8:       var_D4 = "V.Type :-> " & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B9BDF:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B9C11:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B9C36:     Else
  loc_10B9C72:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B9C92:       var_10C = CVar(var_120 & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B9CBF:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B9CC4:       var_90 = CStr(var_11C)
  loc_10B9CEC:     End If
  loc_10B9CEF:     var_8C.MoveNext
  loc_10B9CF4:     GoTo loc_10B9B7B
  loc_10B9CF7:   End If
  loc_10B9CFD:   Call 0.Method_arg_50 (var_138)
  loc_10B9D59:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B9D5C:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B9D8B:   Set var_8C = Nothing
  loc_10B9D8E:   Proc_124_91_10B9DA0 = 0
  loc_10B9D94: End If
  loc_10B9D99: Proc_124_91_10B9DA0 = &HFF
End Sub

Public Sub Proc_124_92_FC6858
  'Data Table: 59EE5C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_86 As Integer
  loc_FC66D7: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FC66DC:   var_92 = 1 'Byte
  loc_FC66E0: End If
  loc_FC66E9: Set var_98 = Me.TxtGrid
  loc_FC66EF: Call 0.Method_Proc_124_92_FC68580 (0, var_B0)
  loc_FC6712: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC6746: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC676A:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC676D:     GoTo loc_FC6842
  loc_FC6770:   End If
  loc_FC6774:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC677E:   var_104 = CVar(CLng(var_92)) 'Long
  loc_FC679E:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC67A8:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC67DD:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC6817:     If (MsgBox("Do U Want To Add A Duplicate Item.", &H44, "Validation", var_D0, var_124) = 7) Then
  loc_FC681E:       Set var_98 = Me.FGrid
  loc_FC6831:       var_86 = 0
  loc_FC6837:     Else
  loc_FC6839:       var_86 = &HFF
  loc_FC683C:     End If
  loc_FC683C:     Proc_124_92_FC6858 = var_86
  loc_FC6842:     ' Referenced from: FC676D
  loc_FC6842:   End If
  loc_FC6845: Next var_D4 'Integer
  loc_FC684F: Proc_124_92_FC6858 = &HFF
End Sub

Public Sub Proc_124_93_1A8A2AC(arg_C) '1A8A2AC
  'Data Table: 59EE5C
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_A0 As String
  Dim var_B8 As String
  Dim var_EC As Variant
  Dim var_CC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim unk_59EE7B As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_154 As Variant
  Dim var_150 As Fields15
  Dim var_15C As Variant
  Dim var_140 As Boolean
  Dim var_158 As Fields15
  Dim var_1A4 As Variant
  Dim var_1B4 As TextBox
  Dim var_DC As Variant
  loc_1A86618: Set var_90 = Me.TextGt
  loc_1A8661E: Call 0.Method_Proc_124_93_1A8A2AC0 (1, var_94)
  loc_1A86626: var_96 = var_94.TabIndex
  loc_1A8662E: var_8A = var_96
  loc_1A86653: var_A0 = "Select * From SundryType WHERE LogSite_Code='" & MemVar_1F95078 & "' and V_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE Site_Code='"
  loc_1A86680: var_B8 = var_A0 & MemVar_1F95070 & "' and LogSite_Code='" & MemVar_1F95078 & "' and NCAT='BBILL' AND RESTCODE='" & global_56 & "') aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='BBILL' AND RESTCODE='"
  loc_1A8669F: Proc_6_7_F26918(var_DC, arg_C, CVar(var_B8 & global_56 & "') aND AppDate<="), var_140)
  loc_1A866A7: var_FC = -1 & var_DC 
  loc_1A866BE: unk_59EE7B.Execute CStr(var_FC & "  Order by AppDate Desc) Order by SNO"), var_90, var_8A
  loc_1A866C9: Set var_88 = var_90
  loc_1A866FA: Set var_90 = Me.LableCap
  loc_1A86700: Call 0.Method_Proc_124_93_1A8A2AC8 (var_96)
  loc_1A86730: If ((CLng(var_96) > var_88.RecordCount) And (var_88.RecordCount > 1)) Then
  loc_1A86752:   Set var_90 = Me.LableCap
  loc_1A86758:   Call 0.Method_Proc_124_93_1A8A2AC8 (var_96, var_8C)
  loc_1A86763:   For var_14C =  To var_96: CInt((var_88.RecordCount + 1)) = var_14C 'Integer
  loc_1A86773:     Set var_90 = Me.LableCap
  loc_1A86779:     Call 0.Method_Proc_124_93_1A8A2AC0 (var_8C)
  loc_1A8678A:     Me.LableCap.Unload var_94
  loc_1A867A0:     Set var_90 = Me.LableDummy
  loc_1A867A6:     Call 0.Method_Proc_124_93_1A8A2AC0 (var_8C, var_94)
  loc_1A867B7:     Me.LableDummy.Unload var_94
  loc_1A867CD:     Set var_90 = Me.LableAt
  loc_1A867D3:     Call 0.Method_Proc_124_93_1A8A2AC0 (var_8C, var_94)
  loc_1A867E4:     Me.LableAt.Unload var_94
  loc_1A867FA:     Set var_90 = Me.TextPer
  loc_1A86800:     Call 0.Method_Proc_124_93_1A8A2AC0 (var_8C, var_94)
  loc_1A86811:     Me.TextPer.Unload var_94
  loc_1A86827:     Set var_90 = Me.TextGt
  loc_1A8682D:     Call 0.Method_Proc_124_93_1A8A2AC0 (var_8C, var_94)
  loc_1A8683E:     Me.TextGt.Unload var_94
  loc_1A8684D:   Next var_14C 'Integer
  loc_1A86852: End If
  loc_1A86866: If (var_88.RecordCount > 0) Then
  loc_1A868A2:   Set var_150 = Me.Txt
  loc_1A868A8:   Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(&H17), var_154)
  loc_1A868B0:   var_154.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_1A868C6:   ' Referenced from: 1A883CD
  loc_1A868CC:   var_96 = var_88.EOF
  loc_1A868D5:   If Not(var_96) Then
  loc_1A86914:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1A86948:       Set var_150 = Me.LableDummy
  loc_1A8694E:       Call 0.Method_Proc_124_93_1A8A2AC8 (var_96)
  loc_1A86968:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A8699D:         Set var_150 = Me.LableDummy
  loc_1A869A3:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A869B4:         Me.LableDummy.Load var_154
  loc_1A869C7:       End If
  loc_1A86A12:       var_154 = var_88.Fields.Item("SNo")
  loc_1A86A27:       Set var_158 = Me.LableDummy
  loc_1A86A2D:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_154.Value), var_15C)
  loc_1A86A35:       var_15C.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1A86A84:       Set var_150 = Me.TextPer
  loc_1A86A8A:       Call 0.Method_Proc_124_93_1A8A2AC8 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A86AA4:       If (var_154 > CVar(var_96)) Then
  loc_1A86AD9:         Set var_150 = Me.TextPer
  loc_1A86ADF:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A86AF0:         Me.TextPer.Load var_154
  loc_1A86B03:       End If
  loc_1A86B3B:       Set var_150 = Me.TextPer
  loc_1A86B41:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A86B49:       var_154.TabIndex = (var_8A + 1)
  loc_1A86B62:       var_8A = (var_8A + 1)
  loc_1A86BA6:       var_154 = var_88.Fields.Item("SNo")
  loc_1A86BE6:       Set var_158 = Me.TextPer
  loc_1A86BEC:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_154.Value), var_15C, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1A86BF4:       var_15C.Visible = var_8A
  loc_1A86C53:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A86CB2:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A86CBB:         Set var_1A0 = Me.TextPer
  loc_1A86CC1:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(True), var_1A4)
  loc_1A86D03:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A86D0C:         Set var_150 = Me.TextPer
  loc_1A86D12:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A86D36:         Set var_1B0 = Me.TextPer
  loc_1A86D3C:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_1B4)
  loc_1A86D44:         var_1B4.Top = ((var_154.Top + var_1A4.Height) + CDbl(&HF))
  loc_1A86D6D:       End If
  loc_1A86DA9:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A86E08:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A86E11:         Set var_150 = Me.TextPer
  loc_1A86E17:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A86E32:         Set var_1A0 = Me.TextPer
  loc_1A86E38:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A86E40:         var_1A4.Left = var_154.Left
  loc_1A86E5F:       End If
  loc_1A86EBC:       var_15C = var_88.Fields.Item("SNo")
  loc_1A86F09:       Set var_1A0 = Me.TextPer
  loc_1A86F0F:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_15C.Value), var_1A4)
  loc_1A86F17:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A86F8A:       var_154 = var_88.Fields.Item("SNo")
  loc_1A86F9F:       Set var_158 = Me.TextPer
  loc_1A86FA5:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_154.Value), var_15C)
  loc_1A86FAD:       var_15C.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1A87004:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A8703B:         Set var_150 = Me.TextPer
  loc_1A87041:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A87049:         var_154.FontBold = True
  loc_1A8705F:       Else
  loc_1A87093:         Set var_150 = Me.TextPer
  loc_1A87099:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A870A1:         var_154.FontBold = False
  loc_1A870B4:       End If
  loc_1A870ED:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A87124:         Set var_150 = Me.TextPer
  loc_1A8712A:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A87132:         var_154.Enabled = False
  loc_1A87148:       Else
  loc_1A8717C:         Set var_150 = Me.TextPer
  loc_1A87182:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8718A:         var_154.Enabled = True
  loc_1A8719D:       End If
  loc_1A871A1:       Set var_90 = Me.TopCtrl1
  loc_1A871A7:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A871C0:       If (CStr() = "Browse") Then
  loc_1A871F7:         Set var_150 = Me.TextPer
  loc_1A871FD:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A87205:         var_154.Enabled = False
  loc_1A87218:       End If
  loc_1A87254:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A8728B:         Set var_150 = Me.TextPer
  loc_1A87291:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A87299:         var_154.Enabled = False
  loc_1A872AC:       End If
  loc_1A872DD:       Set var_150 = Me.LableCap
  loc_1A872E3:       Call 0.Method_Proc_124_93_1A8A2AC8 (var_96)
  loc_1A872FD:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A87332:         Set var_150 = Me.LableCap
  loc_1A87338:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A87349:         Me.LableCap.Load var_154
  loc_1A8735C:       End If
  loc_1A87390:       Set var_150 = Me.LableCap
  loc_1A87396:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8739E:       var_154.Visible = True
  loc_1A8740D:       Set var_150 = Me.TextPer
  loc_1A87413:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8742E:       Set var_1A0 = Me.LableCap
  loc_1A87434:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A8743C:       var_1A4.Top = var_154.Top
  loc_1A87497:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A874DB:         var_15C = var_88.Fields.Item("SNo")
  loc_1A874F6:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A874FF:         Set var_150 = Me.LableCap
  loc_1A87505:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A87520:         Set var_1A0 = Me.LableCap
  loc_1A87526:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_15C.Value), var_1A4)
  loc_1A8752E:         var_1A4.Left = var_154.Left
  loc_1A8754D:       End If
  loc_1A875AD:       Set var_158 = Me.LableCap
  loc_1A875B3:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_1A875BB:       var_15C.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1A87624:       var_154 = var_88.Fields.Item("SNo")
  loc_1A87639:       Set var_158 = Me.LableCap
  loc_1A8763F:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_154.Value), var_15C)
  loc_1A87647:       var_15C.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1A8769E:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A876D5:         Set var_150 = Me.LableCap
  loc_1A876DB:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A876E3:         var_154.FontBold = True
  loc_1A876F9:       Else
  loc_1A8772D:         Set var_150 = Me.LableCap
  loc_1A87733:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8773B:         var_154.FontBold = False
  loc_1A8774E:       End If
  loc_1A8777F:       Set var_150 = Me.LableAt
  loc_1A87785:       Call 0.Method_Proc_124_93_1A8A2AC8 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A8779F:       If (var_154 > CVar(var_96)) Then
  loc_1A877D4:         Set var_150 = Me.LableAt
  loc_1A877DA:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A877EB:         Me.LableAt.Load var_154
  loc_1A877FE:       End If
  loc_1A8783F:       var_154 = var_88.Fields.Item("SNo")
  loc_1A8787F:       Set var_158 = Me.LableAt
  loc_1A87885:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_154.Value), var_15C)
  loc_1A8788D:       var_15C.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1A878F1:       var_15C = var_88.Fields.Item("SNo")
  loc_1A8790C:       Set var_150 = Me.TextPer
  loc_1A87912:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8792D:       Set var_1A0 = Me.LableAt
  loc_1A87933:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_15C.Value), var_1A4)
  loc_1A8793B:       var_1A4.Top = var_154.Top
  loc_1A87993:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A879CA:         Set var_150 = Me.LableAt
  loc_1A879D0:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A879D8:         var_154.FontBold = True
  loc_1A879EE:       Else
  loc_1A87A22:         Set var_150 = Me.LableAt
  loc_1A87A28:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A87A30:         var_154.FontBold = False
  loc_1A87A43:       End If
  loc_1A87A8E:       var_154 = var_88.Fields.Item("SNo")
  loc_1A87AA3:       Set var_158 = Me.LableAt
  loc_1A87AA9:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_154.Value), var_15C)
  loc_1A87AB1:       var_15C.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_1A87B0B:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A87B6A:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A87B73:         Set var_150 = Me.LableAt
  loc_1A87B79:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("RoundOff").Value), var_154)
  loc_1A87B94:         Set var_1A0 = Me.LableAt
  loc_1A87B9A:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A87BA2:         var_1A4.Left = var_154.Left
  loc_1A87BC1:       End If
  loc_1A87BF2:       Set var_150 = Me.TextGt
  loc_1A87BF8:       Call 0.Method_Proc_124_93_1A8A2AC8 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A87C12:       If (var_154 > CVar(var_96)) Then
  loc_1A87C47:         Set var_150 = Me.TextGt
  loc_1A87C4D:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A87C5E:         Me.TextGt.Load var_154
  loc_1A87C71:       End If
  loc_1A87CA9:       Set var_150 = Me.TextGt
  loc_1A87CAF:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A87CB7:       var_154.TabIndex = (var_8A + 1)
  loc_1A87CD0:       var_8A = (var_8A + 1)
  loc_1A87D07:       Set var_150 = Me.TextGt
  loc_1A87D0D:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154, &HFF)
  loc_1A87D15:       var_154.Visible = var_8A
  loc_1A87D84:       Set var_150 = Me.TextPer
  loc_1A87D8A:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A87DA5:       Set var_1A0 = Me.TextGt
  loc_1A87DAB:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A87DB3:       var_1A4.Top = var_154.Top
  loc_1A87E0E:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A87E6D:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A87E76:         Set var_150 = Me.TextGt
  loc_1A87E7C:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A87E97:         Set var_1A0 = Me.TextGt
  loc_1A87E9D:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A87EA5:         var_1A4.Left = var_154.Left
  loc_1A87EC4:       End If
  loc_1A87F21:       var_15C = var_88.Fields.Item("SNo")
  loc_1A87F6E:       Set var_1A0 = Me.TextGt
  loc_1A87F74:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_15C.Value), var_1A4)
  loc_1A87F7C:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A87FEC:       var_154 = var_88.Fields.Item("SNo")
  loc_1A88001:       Set var_158 = Me.TextGt
  loc_1A88007:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_154.Value), var_15C)
  loc_1A8800F:       var_15C.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1A88064:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A8809B:         Set var_150 = Me.TextGt
  loc_1A880A1:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A880A9:         var_154.FontBold = True
  loc_1A880BF:       Else
  loc_1A880F3:         Set var_150 = Me.TextGt
  loc_1A880F9:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A88101:         var_154.FontBold = False
  loc_1A88114:       End If
  loc_1A8814D:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A88184:         Set var_150 = Me.TextGt
  loc_1A8818A:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A88192:         var_154.Enabled = False
  loc_1A881A8:       Else
  loc_1A881DC:         Set var_150 = Me.TextGt
  loc_1A881E2:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A881EA:         var_154.Enabled = True
  loc_1A881FD:       End If
  loc_1A88232:       Set var_150 = Me.LableCap
  loc_1A88238:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8825E:       If (var_154.Tag = "SROFF") Then
  loc_1A88295:         Set var_150 = Me.TextGt
  loc_1A8829B:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A882A3:         var_154.Enabled = False
  loc_1A882B6:       End If
  loc_1A882BA:       Set var_90 = Me.TopCtrl1
  loc_1A882C0:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A882D9:       If (CStr() = "Browse") Then
  loc_1A88310:         Set var_150 = Me.TextGt
  loc_1A88316:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8831E:         var_154.Enabled = False
  loc_1A88331:       End If
  loc_1A8836D:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A8838F:         var_94 = var_88.Fields.Item("SNo")
  loc_1A883A4:         Set var_150 = Me.TextGt
  loc_1A883AA:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_94.Value), var_154)
  loc_1A883B2:         var_154.Enabled = False
  loc_1A883C5:       End If
  loc_1A883C5:     End If
  loc_1A883C8:     var_88.MoveNext
  loc_1A883CD:     GoTo loc_1A868C6
  loc_1A883D0:   End If
  loc_1A883D0: End If
  loc_1A883D7: Set var_90 = Me.LblCap
  loc_1A883DD: Call 0.Method_Proc_124_93_1A8A2AC8 (var_96)
  loc_1A8840D: If ((CLng(var_96) > var_88.RecordCount) And (var_88.RecordCount > 1)) Then
  loc_1A8842F:   Set var_90 = Me.LblCap
  loc_1A88435:   Call 0.Method_Proc_124_93_1A8A2AC8 (var_96, var_8C)
  loc_1A88440:   For var_1B8 =  To var_96: CInt((var_88.RecordCount + 1)) = var_1B8 'Integer
  loc_1A88450:     Set var_90 = Me.LblCap
  loc_1A88456:     Call 0.Method_Proc_124_93_1A8A2AC0 (var_8C)
  loc_1A88467:     Me.LblCap.Unload var_94
  loc_1A8847D:     Set var_90 = Me.LblDummy
  loc_1A88483:     Call 0.Method_Proc_124_93_1A8A2AC0 (var_8C, var_94)
  loc_1A88494:     Me.LblDummy.Unload var_94
  loc_1A884AA:     Set var_90 = Me.LblAt
  loc_1A884B0:     Call 0.Method_Proc_124_93_1A8A2AC0 (var_8C, var_94)
  loc_1A884C1:     Me.LblAt.Unload var_94
  loc_1A884D7:     Set var_90 = Me.TxtPer
  loc_1A884DD:     Call 0.Method_Proc_124_93_1A8A2AC0 (var_8C, var_94)
  loc_1A884EE:     Me.TxtPer.Unload var_94
  loc_1A88504:     Set var_90 = Me.TxtGt
  loc_1A8850A:     Call 0.Method_Proc_124_93_1A8A2AC0 (var_8C, var_94)
  loc_1A8851B:     Me.TxtGt.Unload var_94
  loc_1A8852A:   Next var_1B8 'Integer
  loc_1A8852F: End If
  loc_1A88535: var_8A = (var_8A + 1)
  loc_1A88549: Me.FGrid.TabIndex = var_8A
  loc_1A88557: var_8A = (var_8A + 1)
  loc_1A88566: Set var_90 = Me.TxtGrid
  loc_1A8856C: Call 0.Method_Proc_124_93_1A8A2AC0 (0, var_94, var_8A)
  loc_1A88574: var_94.TabIndex = var_8A
  loc_1A88583: var_88.MoveFirst
  loc_1A8859C: If (var_88.RecordCount > 0) Then
  loc_1A8859F:   ' Referenced from: 1A8A132
  loc_1A885A5:   var_96 = var_88.EOF
  loc_1A885AE:   If Not(var_96) Then
  loc_1A885ED:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1A88621:       Set var_150 = Me.LblDummy
  loc_1A88627:       Call 0.Method_Proc_124_93_1A8A2AC8 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A88641:       If (var_8A > CVar(var_96)) Then
  loc_1A88676:         Set var_150 = Me.LblDummy
  loc_1A8867C:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A8868D:         Me.LblDummy.Load var_154
  loc_1A886A0:       End If
  loc_1A886EB:       var_154 = var_88.Fields.Item("SNo")
  loc_1A88700:       Set var_158 = Me.LblDummy
  loc_1A88706:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_154.Value), var_15C)
  loc_1A8870E:       var_15C.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1A8875D:       Set var_150 = Me.TxtPer
  loc_1A88763:       Call 0.Method_Proc_124_93_1A8A2AC8 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A8877D:       If (var_154 > CVar(var_96)) Then
  loc_1A887B2:         Set var_150 = Me.TxtPer
  loc_1A887B8:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A887C9:         Me.TxtPer.Load var_154
  loc_1A887DC:       End If
  loc_1A88814:       Set var_150 = Me.TxtPer
  loc_1A8881A:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A88822:       var_154.TabIndex = (var_8A + 1)
  loc_1A8883B:       var_8A = (var_8A + 1)
  loc_1A8887F:       var_154 = var_88.Fields.Item("SNo")
  loc_1A888BF:       Set var_158 = Me.TxtPer
  loc_1A888C5:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_154.Value), var_15C, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1A888CD:       var_15C.Visible = var_8A
  loc_1A8892C:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A8898B:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A88994:         Set var_1A0 = Me.TxtPer
  loc_1A8899A:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(True), var_1A4)
  loc_1A889DC:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A889E5:         Set var_150 = Me.TxtPer
  loc_1A889EB:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A88A0F:         Set var_1B0 = Me.TxtPer
  loc_1A88A15:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_1B4)
  loc_1A88A1D:         var_1B4.Top = ((var_154.Top + var_1A4.Height) + CDbl(&HF))
  loc_1A88A46:       End If
  loc_1A88A82:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A88AE1:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A88AEA:         Set var_150 = Me.TxtPer
  loc_1A88AF0:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A88B0B:         Set var_1A0 = Me.TxtPer
  loc_1A88B11:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A88B19:         var_1A4.Left = var_154.Left
  loc_1A88B38:       End If
  loc_1A88B95:       var_15C = var_88.Fields.Item("SNo")
  loc_1A88BE2:       Set var_1A0 = Me.TxtPer
  loc_1A88BE8:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_15C.Value), var_1A4)
  loc_1A88BF0:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A88C63:       var_154 = var_88.Fields.Item("SNo")
  loc_1A88C78:       Set var_158 = Me.TxtPer
  loc_1A88C7E:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_154.Value), var_15C)
  loc_1A88C86:       var_15C.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1A88CDD:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A88D14:         Set var_150 = Me.TxtPer
  loc_1A88D1A:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A88D22:         var_154.FontBold = True
  loc_1A88D38:       Else
  loc_1A88D6C:         Set var_150 = Me.TxtPer
  loc_1A88D72:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A88D7A:         var_154.FontBold = False
  loc_1A88D8D:       End If
  loc_1A88DC6:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A88DFD:         Set var_150 = Me.TxtPer
  loc_1A88E03:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A88E0B:         var_154.Enabled = False
  loc_1A88E21:       Else
  loc_1A88E55:         Set var_150 = Me.TxtPer
  loc_1A88E5B:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A88E63:         var_154.Enabled = True
  loc_1A88E76:       End If
  loc_1A88E7A:       Set var_90 = Me.TopCtrl1
  loc_1A88E80:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A88E99:       If (CStr() = "Browse") Then
  loc_1A88ED0:         Set var_150 = Me.TxtPer
  loc_1A88ED6:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A88EDE:         var_154.Enabled = False
  loc_1A88EF1:       End If
  loc_1A88F2D:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A88F64:         Set var_150 = Me.TxtPer
  loc_1A88F6A:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A88F72:         var_154.Enabled = False
  loc_1A88F85:       End If
  loc_1A88FB6:       Set var_150 = Me.LblCap
  loc_1A88FBC:       Call 0.Method_Proc_124_93_1A8A2AC8 (var_96)
  loc_1A88FD6:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A8900B:         Set var_150 = Me.LblCap
  loc_1A89011:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A89022:         Me.LblCap.Load var_154
  loc_1A89035:       End If
  loc_1A89069:       Set var_150 = Me.LblCap
  loc_1A8906F:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A89077:       var_154.Visible = True
  loc_1A890E6:       Set var_150 = Me.TxtPer
  loc_1A890EC:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A89107:       Set var_1A0 = Me.LblCap
  loc_1A8910D:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A89115:       var_1A4.Top = var_154.Top
  loc_1A89170:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A891B4:         var_15C = var_88.Fields.Item("SNo")
  loc_1A891CF:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A891D8:         Set var_150 = Me.LblCap
  loc_1A891DE:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A891F9:         Set var_1A0 = Me.LblCap
  loc_1A891FF:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_15C.Value), var_1A4)
  loc_1A89207:         var_1A4.Left = var_154.Left
  loc_1A89226:       End If
  loc_1A89286:       Set var_158 = Me.LblCap
  loc_1A8928C:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_1A89294:       var_15C.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1A89312:       Set var_158 = Me.LblCap
  loc_1A89318:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_1A89320:       var_15C.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1A89389:       var_154 = var_88.Fields.Item("SNo")
  loc_1A8939E:       Set var_158 = Me.LblDummy
  loc_1A893A4:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_154.Value), var_15C)
  loc_1A893AC:       var_15C.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1A89403:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A8943A:         Set var_150 = Me.LblCap
  loc_1A89440:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A89448:         var_154.FontBold = True
  loc_1A8945E:       Else
  loc_1A89492:         Set var_150 = Me.LblCap
  loc_1A89498:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A894A0:         var_154.FontBold = False
  loc_1A894B3:       End If
  loc_1A894E4:       Set var_150 = Me.LblAt
  loc_1A894EA:       Call 0.Method_Proc_124_93_1A8A2AC8 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A89504:       If (var_154 > CVar(var_96)) Then
  loc_1A89539:         Set var_150 = Me.LblAt
  loc_1A8953F:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A89550:         Me.LblAt.Load var_154
  loc_1A89563:       End If
  loc_1A895A4:       var_154 = var_88.Fields.Item("SNo")
  loc_1A895E4:       Set var_158 = Me.LblAt
  loc_1A895EA:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_154.Value), var_15C)
  loc_1A895F2:       var_15C.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1A89656:       var_15C = var_88.Fields.Item("SNo")
  loc_1A89671:       Set var_150 = Me.TxtPer
  loc_1A89677:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A89692:       Set var_1A0 = Me.LblAt
  loc_1A89698:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_15C.Value), var_1A4)
  loc_1A896A0:       var_1A4.Top = var_154.Top
  loc_1A896F8:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A8972F:         Set var_150 = Me.LblAt
  loc_1A89735:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8973D:         var_154.FontBold = True
  loc_1A89753:       Else
  loc_1A89787:         Set var_150 = Me.LblAt
  loc_1A8978D:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A89795:         var_154.FontBold = False
  loc_1A897A8:       End If
  loc_1A897F3:       var_154 = var_88.Fields.Item("SNo")
  loc_1A89808:       Set var_158 = Me.LblAt
  loc_1A8980E:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_154.Value), var_15C)
  loc_1A89816:       var_15C.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_1A89870:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A898CF:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A898D8:         Set var_150 = Me.LblAt
  loc_1A898DE:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("RoundOff").Value), var_154)
  loc_1A898F9:         Set var_1A0 = Me.LblAt
  loc_1A898FF:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A89907:         var_1A4.Left = var_154.Left
  loc_1A89926:       End If
  loc_1A89957:       Set var_150 = Me.TxtGt
  loc_1A8995D:       Call 0.Method_Proc_124_93_1A8A2AC8 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A89977:       If (var_154 > CVar(var_96)) Then
  loc_1A899AC:         Set var_150 = Me.TxtGt
  loc_1A899B2:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A899C3:         Me.TxtGt.Load var_154
  loc_1A899D6:       End If
  loc_1A89A0E:       Set var_150 = Me.TxtGt
  loc_1A89A14:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A89A1C:       var_154.TabIndex = (var_8A + 1)
  loc_1A89A35:       var_8A = (var_8A + 1)
  loc_1A89A6C:       Set var_150 = Me.TxtGt
  loc_1A89A72:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154, &HFF)
  loc_1A89A7A:       var_154.Visible = var_8A
  loc_1A89AE9:       Set var_150 = Me.TxtPer
  loc_1A89AEF:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A89B0A:       Set var_1A0 = Me.TxtGt
  loc_1A89B10:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A89B18:       var_1A4.Top = var_154.Top
  loc_1A89B73:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A89BD2:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A89BDB:         Set var_150 = Me.TxtGt
  loc_1A89BE1:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A89BFC:         Set var_1A0 = Me.TxtGt
  loc_1A89C02:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A89C0A:         var_1A4.Left = var_154.Left
  loc_1A89C29:       End If
  loc_1A89C86:       var_15C = var_88.Fields.Item("SNo")
  loc_1A89CD3:       Set var_1A0 = Me.TxtGt
  loc_1A89CD9:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_15C.Value), var_1A4)
  loc_1A89CE1:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A89D51:       var_154 = var_88.Fields.Item("SNo")
  loc_1A89D66:       Set var_158 = Me.TxtGt
  loc_1A89D6C:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_154.Value), var_15C)
  loc_1A89D74:       var_15C.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1A89DC9:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A89E00:         Set var_150 = Me.TxtGt
  loc_1A89E06:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A89E0E:         var_154.FontBold = True
  loc_1A89E24:       Else
  loc_1A89E58:         Set var_150 = Me.TxtGt
  loc_1A89E5E:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A89E66:         var_154.FontBold = False
  loc_1A89E79:       End If
  loc_1A89EB2:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A89EE9:         Set var_150 = Me.TxtGt
  loc_1A89EEF:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A89EF7:         var_154.Enabled = False
  loc_1A89F0D:       Else
  loc_1A89F41:         Set var_150 = Me.TxtGt
  loc_1A89F47:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A89F4F:         var_154.Enabled = True
  loc_1A89F62:       End If
  loc_1A89F97:       Set var_150 = Me.LblCap
  loc_1A89F9D:       Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A89FC3:       If (var_154.Tag = "SROFF") Then
  loc_1A89FFA:         Set var_150 = Me.TxtGt
  loc_1A8A000:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8A008:         var_154.Enabled = False
  loc_1A8A01B:       End If
  loc_1A8A01F:       Set var_90 = Me.TopCtrl1
  loc_1A8A025:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A8A03E:       If (CStr() = "Browse") Then
  loc_1A8A075:         Set var_150 = Me.TxtGt
  loc_1A8A07B:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8A083:         var_154.Enabled = False
  loc_1A8A096:       End If
  loc_1A8A0D2:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A8A0F4:         var_94 = var_88.Fields.Item("SNo")
  loc_1A8A109:         Set var_150 = Me.TxtGt
  loc_1A8A10F:         Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(var_94.Value), var_154)
  loc_1A8A117:         var_154.Enabled = False
  loc_1A8A12A:       End If
  loc_1A8A12A:     End If
  loc_1A8A12D:     var_88.MoveNext
  loc_1A8A132:     GoTo loc_1A8859F
  loc_1A8A135:   End If
  loc_1A8A135: End If
  loc_1A8A146: Set var_90 = Me.Txt
  loc_1A8A14C: Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(&HF), var_94)
  loc_1A8A154: var_94.TabIndex = (var_8A + 1)
  loc_1A8A171: Set var_90 = Me.Txt
  loc_1A8A177: Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(&HE), var_94)
  loc_1A8A17F: var_94.TabIndex = (var_8A + 2)
  loc_1A8A19C: Set var_90 = Me.Txt
  loc_1A8A1A2: Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(&HD), var_94)
  loc_1A8A1AA: var_94.TabIndex = (var_8A + 3)
  loc_1A8A1BC: var_CC = CVar((var_8A + 3)) 'Integer
  loc_1A8A1C4: Set var_90 = Me.Command1
  loc_1A8A1CA: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000F("SNo")
  loc_1A8A1E3: Set var_90 = Me.Txt
  loc_1A8A1E9: Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(8), var_94)
  loc_1A8A1F1: var_94.TabIndex = (var_8A + 4)
  loc_1A8A20E: Set var_90 = Me.Txt
  loc_1A8A214: Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(9), var_94)
  loc_1A8A21C: var_94.TabIndex = (var_8A + 5)
  loc_1A8A239: Set var_90 = Me.Txt
  loc_1A8A23F: Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(&HA), var_94)
  loc_1A8A247: var_94.TabIndex = (var_8A + 6)
  loc_1A8A264: Set var_90 = Me.Txt
  loc_1A8A26A: Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(&HB), var_94)
  loc_1A8A272: var_94.TabIndex = (var_8A + 7)
  loc_1A8A28F: Set var_90 = Me.Txt
  loc_1A8A295: Call 0.Method_Proc_124_93_1A8A2AC0 (CInt(&HC), var_94)
  loc_1A8A29D: var_94.TabIndex = (var_8A + 8)
  loc_1A8A2A9: Exit Sub
End Sub

Public Sub Proc_124_94_1745CC0(arg_C) '1745CC0
  'Data Table: 59EE5C
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_154 As Variant
  Dim var_B4 As String
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_11C As String
  Dim unk_59EE7B As Connection15
  Dim var_140 As Variant
  Dim var_144 As Variant
  Dim var_168 As Variant
  Dim var_1A8 As Variant
  Dim var_A4 As Variant
  Dim var_F8 As String
  Dim var_2A8 As Double
  Dim var_1E0 As Variant
  Dim var_D4 As Variant
  Dim var_2B0 As Double
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_2B8 As Double
  Dim var_260 As Variant
  Dim var_280 As Variant
  Dim var_158 As Variant
  Dim var_240 As Variant
  Dim var_13C As Variant
  Dim var_90 As Double
  Dim var_304 As Double
  Dim var_30C As Double
  Dim var_9C As Recordset15
  Dim var_330 As TextBox
  Dim var_338 As TextBox
  Dim var_340 As TextBox
  loc_1743FD0: Set var_A4 = Me.TxtGt
  loc_1743FD6: Call 0.Method_Proc_124_94_1745CC08 (var_A6, var_86)
  loc_1743FE1: For var_AA =  To var_A6: 1 = var_AA 'Integer
  loc_1743FF4:   Set var_A4 = Me.TxtGt
  loc_1743FFA:   Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0)
  loc_1744002:   var_B0.Text = vbNullString
  loc_174401B:   Set var_A4 = Me.LblCap
  loc_1744021:   Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0)
  loc_174405C:   If (Trim(CVar(var_B0.Tag)) = CVar(MemVar_1F95070 & "DIS")) Then
  loc_1744064:     var_92 = CByte(var_86) 'Byte
  loc_1744068:   End If
  loc_1744075:   Set var_A4 = Me.LblCap
  loc_174407B:   Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0)
  loc_17440B6:   If (Trim(CVar(var_B0.Tag)) = CVar(MemVar_1F95070 & "SCH")) Then
  loc_17440BE:     var_94 = CByte(var_86) 'Byte
  loc_17440C2:   End If
  loc_17440F9:   Set var_A4 = Me.LableCap
  loc_17440FF:   Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, var_F8, CVar("Select Count(*) from SundryMast where Logsite_code='" & MemVar_1F95078 & "' and Code='"), var_13C)
  loc_1744107:   -1 = var_B0.Tag
  loc_1744134:   unk_59EE7B.Execute CStr(var_140 & Trim(CVar(var_F8)) & "' And Nature In ('Sale Tax','CGST','SGST','IGST')"), var_144, 0
  loc_174413C:   var_158 = var_140.Fields
  loc_1744144:    = var_144.Item()
  loc_174419F:   If CBool((Trim(CVar(var_158)) > 0) And (CInt(var_96) = 0)) Then
  loc_17441A7:     var_96 = CByte(var_86) 'Byte
  loc_17441B1:     global_136 = var_86
  loc_17441B4:   End If
  loc_17441B7: Next var_AA 'Integer
  loc_17441CF: Me.FGCat.Rows = 1
  loc_17441DB: Set var_A4 = Me.TopCtrl1
  loc_17441E1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17441FA: If (CStr() = "Add") Then
  loc_17441FD:   Call Proc_124_99_DFFF68()
  loc_1744202: End If
  loc_174420E: Set var_A4 = Me.TxtGt
  loc_1744214: Call 0.Method_Proc_124_94_1745CC08 (var_A6, var_86)
  loc_174421F: For var_1BC =  To var_A6: 2 = var_1BC 'Integer
  loc_1744232:   Set var_A4 = Me.LblCap
  loc_1744238:   Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0)
  loc_1744262:   If (var_B0.Tag = MemVar_1F95070 & "DIS") Then
  loc_1744272:     Set var_A4 = Me.TxtGt
  loc_1744278:     Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0)
  loc_1744280:     var_B0.Text = vbNullString
  loc_1744296:     If (var_96 > var_92) Then
  loc_17442BE:       For var_1C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_1C0 'Integer
  loc_17442D1:         Set var_A4 = Me.LblCap
  loc_17442D7:         Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0)
  loc_1744301:         If (var_B0.Tag = MemVar_1F95070 & "DIS") Then
  loc_1744308:           var_108 = CVar(CLng(var_88)) 'Long
  loc_1744310:           var_154 = CVar(CLng(&HD)) 'Long
  loc_174432A:           var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_174433B:           If (var_B4 = "Y") Then
  loc_1744342:             var_108 = CVar(CLng(var_88)) 'Long
  loc_174435C:             Set var_A4 = Me.TxtPer
  loc_1744362:             Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, var_B4, CVar(CLng(&HB)))
  loc_174436A:             var_108 = var_B0.Text
  loc_1744379:             var_C4 = CVar(CStr(Val(var_B4))) 'String
  loc_1744381:             Set var_140 = Me.FGrid
  loc_1744387:             LateIdCallSt
  loc_174439E:           End If
  loc_174439E:         End If
  loc_17443A2:         var_108 = CVar(CLng(var_88)) 'Long
  loc_17443AA:         var_154 = CVar(CLng(3)) 'Long
  loc_17443D3:         var_1A8 = CVar(CLng(var_88)) 'Long
  loc_17443DB:         var_1E0 = CVar(CLng(4)) 'Long
  loc_1744404:         var_200 = CVar(CLng(var_88)) 'Long
  loc_174440C:         var_220 = CVar(CLng(&HB)) 'Long
  loc_1744435:         var_260 = CVar(CLng(var_88)) 'Long
  loc_174443D:         var_280 = CVar(CLng(&HC)) 'Long
  loc_1744466:         var_F4 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_1744476:         var_168 = CVar(CStr(Format(var_F4, "0.00"))) 'String
  loc_174447E:         Set var_144 = Me.FGrid
  loc_1744484:         LateIdCallSt
  loc_17444B5:         var_1A8 = CVar(CLng(var_88)) 'Long
  loc_17444BD:         var_1E0 = CVar(CLng(3)) 'Long
  loc_17444E6:         var_200 = CVar(CLng(var_88)) 'Long
  loc_17444EE:         var_220 = CVar(CLng(5)) 'Long
  loc_17444F7:         var_108 = CVar(CLng(var_88)) 'Long
  loc_17444FF:         var_154 = CVar(CLng(4)) 'Long
  loc_174452F:         Set var_140 = Me.FGrid
  loc_1744535:         LateIdCallSt
  loc_1744562:         var_154 = CVar(CLng(5)) 'Long
  loc_1744593:         Set var_B0 = Me.LblDummy
  loc_1744599:         Call 0.Method_Proc_124_94_1745CC00 (var_86, var_140, CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_154, CVar(CLng(var_88)), var_140, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_17445A1:         var_140.Caption = var_154
  loc_17445BD:         var_108 = CVar(CLng(var_88)) 'Long
  loc_17445C5:         var_154 = CVar(CLng(5)) 'Long
  loc_17445DF:         var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_17445EE:         var_1A8 = CVar(CLng(var_88)) 'Long
  loc_17445F6:         var_1E0 = CVar(CLng(&HC)) 'Long
  loc_17445FF:         Set var_B0 = Me.FGrid
  loc_174461F:         var_200 = CVar(CLng(var_88)) 'Long
  loc_1744627:         var_220 = CVar(CLng(7)) 'Long
  loc_1744649:         var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1744658:         var_280 = CVar(CLng(8)) 'Long
  loc_174467D:         var_F4 = CVar(((Val(var_B4) - Val(CStr(var_B0.TextMatrix)))) + var_2B8)) 'Double
  loc_174469B:         LateIdCallSt
  loc_17446D5:         Set var_A4 = Me.LblCap
  loc_17446DB:         Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, var_B4, Me.FGrid, CVar(CStr(Format(var_F4, "0.00"))), 1, 1)
  loc_17446E3:         var_280 = var_B0.Tag
  loc_1744705:         If (var_B4 = MemVar_1F95070 & "DIS") Then
  loc_1744715:           Set var_A4 = Me.TxtGt
  loc_174471B:           Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, var_B4, CVar(CLng(var_88)), var_2B8)
  loc_1744723:           var_220 = var_B0.Text
  loc_1744737:           var_108 = CVar(CLng(var_88)) 'Long
  loc_1744761:           var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1744780:           var_D4 = CVar((Val(var_B4) + var_2B0)) 'Double
  loc_174479D:           Set var_144 = Me.TxtGt
  loc_17447A3:           Call 0.Method_Proc_124_94_1745CC00 (var_86, var_158, CStr(Format(var_B0.TextMatrix), "0.00")), 1, 1, var_2B0)
  loc_17447AB:           var_158.Text = CVar(CLng(&HC))
  loc_17447D1:         End If
  loc_17447D4:       Next var_1C0 'Integer
  loc_17447DC:     Else
  loc_1744801:       For var_2BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_2BC 'Integer
  loc_1744814:         Set var_A4 = Me.LblCap
  loc_174481A:         Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0)
  loc_1744844:         If (var_B0.Tag = MemVar_1F95070 & "DIS") Then
  loc_174484B:           var_108 = CVar(CLng(var_88)) 'Long
  loc_1744853:           var_154 = CVar(CLng(&HD)) 'Long
  loc_174486D:           var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_174487E:           If (var_B4 = "Y") Then
  loc_1744885:             var_108 = CVar(CLng(var_88)) 'Long
  loc_174489F:             Set var_A4 = Me.TxtPer
  loc_17448A5:             Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, var_B4, CVar(CLng(&HB)))
  loc_17448AD:             var_108 = var_B0.Text
  loc_17448BC:             var_C4 = CVar(CStr(Val(var_B4))) 'String
  loc_17448C4:             Set var_140 = Me.FGrid
  loc_17448CA:             LateIdCallSt
  loc_17448E1:           End If
  loc_17448E1:         End If
  loc_174491E:         Set var_B0 = Me.LblDummy
  loc_1744924:         Call 0.Method_Proc_124_94_1745CC00 (var_86, var_140, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(5)), CVar(CLng(var_88)))
  loc_174492C:         var_140.Caption = var_140
  loc_1744948:         var_108 = CVar(CLng(var_88)) 'Long
  loc_1744950:         var_154 = CVar(CLng(5)) 'Long
  loc_174496A:         var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_1744979:         var_1A8 = CVar(CLng(var_88)) 'Long
  loc_1744981:         var_1E0 = CVar(CLng(&HB)) 'Long
  loc_174498A:         Set var_B0 = Me.FGrid
  loc_17449A3:         var_2B0 = Val(CStr(var_B0.TextMatrix)))
  loc_17449B2:         var_240 = CVar(CLng(&HC)) 'Long
  loc_17449F5:         LateIdCallSt
  loc_1744A29:         Set var_A4 = Me.LblCap
  loc_1744A2F:         Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, var_B4, Me.FGrid, CVar(CStr(Format(CVar(((Val(var_B4) * var_2B0) / CDbl(&H64))), "0.00"))), 1, 1)
  loc_1744A37:         var_240 = var_B0.Tag
  loc_1744A59:         If (var_B4 = MemVar_1F95070 & "DIS") Then
  loc_1744A69:           Set var_A4 = Me.TxtGt
  loc_1744A6F:           Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, var_B4, CVar(CLng(var_88)), var_2B0)
  loc_1744A77:           var_1E0 = var_B0.Text
  loc_1744A84:           var_2A8 = Val(var_B4)
  loc_1744A8B:           var_108 = CVar(CLng(var_88)) 'Long
  loc_1744AB5:           var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1744AD4:           var_D4 = CVar((var_2A8 + var_2B0)) 'Double
  loc_1744AF1:           Set var_144 = Me.TxtGt
  loc_1744AF7:           Call 0.Method_Proc_124_94_1745CC00 (var_86, var_158, CStr(Format(var_B0.TextMatrix), "0.00")), 1, 1, var_2B0)
  loc_1744AFF:           var_158.Text = CVar(CLng(&HC))
  loc_1744B25:         End If
  loc_1744B28:       Next var_2BC 'Integer
  loc_1744B2D:     End If
  loc_1744B30:   Else
  loc_1744B3D:     Set var_A4 = Me.TxtPer
  loc_1744B43:     Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0)
  loc_1744B4B:     var_A6 = var_B0.Enabled
  loc_1744B5D:     If (var_A6 = &HFF) Then
  loc_1744B66:       Call Proc_124_96_1321F1C(var_86)
  loc_1744B6E:       var_90 = var_2A8
  loc_1744B7E:       Set var_A4 = Me.TxtPer
  loc_1744B84:       Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, var_B4)
  loc_1744B8C:       var_90 = var_B0.Text
  loc_1744B99:       var_2A8 = Val(var_B4)
  loc_1744BD9:       Set var_140 = Me.TxtGt
  loc_1744BDF:       Call 0.Method_Proc_124_94_1745CC00 (var_86, var_144, CStr(Format(CVar(((var_90 * var_2A8) / CDbl(&H64))), "0.00")), 1)
  loc_1744BE7:       var_144.Text = 1
  loc_1744C19:       Set var_A4 = Me.LblDummy
  loc_1744C1F:       Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, CStr(var_90))
  loc_1744C27:       var_B0.Caption = var_2A8
  loc_1744C36:     End If
  loc_1744C36:   End If
  loc_1744C39: Next var_1BC 'Integer
  loc_1744C63: For var_2C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2C0 'Integer
  loc_1744C6D:   var_108 = CVar(CLng(var_86)) 'Long
  loc_1744C75:   var_154 = CVar(CLng(3)) 'Long
  loc_1744C8F:   var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_1744C9E:   var_1A8 = CVar(CLng(var_86)) 'Long
  loc_1744CA6:   var_1E0 = CVar(CLng(4)) 'Long
  loc_1744CAF:   Set var_B0 = Me.FGrid
  loc_1744CCF:   var_220 = CVar(CLng(var_86)) 'Long
  loc_1744CD7:   var_240 = CVar(CLng(5)) 'Long
  loc_1744D16:   LateIdCallSt
  loc_1744D49:   Set var_A4 = Me.TxtGt
  loc_1744D4F:   Call 0.Method_Proc_124_94_1745CC00 (1, var_B0, var_B4, Me.FGrid, CVar(CStr(Format(CVar((Val(var_B4) * Val(CStr(var_B0.TextMatrix))))), "0.00"))), 1, 1)
  loc_1744D57:   var_240 = var_B0.Text
  loc_1744D64:   var_2A8 = Val(var_B4)
  loc_1744D95:   var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1744DB4:   var_D4 = CVar((var_2A8 + var_2B0)) 'Double
  loc_1744DD0:   Set var_144 = Me.TxtGt
  loc_1744DD6:   Call 0.Method_Proc_124_94_1745CC00 (1, var_158, CStr(Format(var_B0.TextMatrix), "0.00")), 1, 1, var_2B0, CVar(CLng(5)))
  loc_1744DDE:   var_158.Text = CVar(CLng(var_86))
  loc_1744E07: Next var_2C0 'Integer
  loc_1744E1F: Me.FGCat.Rows = 1
  loc_1744E4C: For var_2C4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2C4 'Integer
  loc_1744E5C:   If (var_96 > var_92) Then
  loc_1744E73:     If ((var_94 < var_96) And (CInt(var_94) <> 0)) Then
  loc_1744E7A:       var_108 = CVar(CLng(var_86)) 'Long
  loc_1744E82:       var_154 = CVar(CLng(&H10)) 'Long
  loc_1744EA1:       var_1A8 = CVar(CLng(var_86)) 'Long
  loc_1744EA9:       var_1E0 = CVar(CLng(4)) 'Long
  loc_1744ED2:       var_200 = CVar(CLng(var_86)) 'Long
  loc_1744EDA:       var_220 = CVar(CLng(3)) 'Long
  loc_1744F03:       var_240 = CVar(CLng(var_86)) 'Long
  loc_1744F0B:       var_260 = CVar(CLng(&HC)) 'Long
  loc_1744F50:       var_118 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_1744F71:       Set var_158 = Me.FGrid
  loc_1744FA7:       Call Proc_124_100_17F8C88(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"), "0.00")), Val(CStr(var_158.TextMatrix))), Val(CStr(var_158.TextMatrix))), CVar(CLng(&H16)), CVar(CLng(var_86)), 1)
  loc_1744FDC:     Else
  loc_1744FE0:       var_108 = CVar(CLng(var_86)) 'Long
  loc_1744FE8:       var_154 = CVar(CLng(&H10)) 'Long
  loc_1745007:       var_1A8 = CVar(CLng(var_86)) 'Long
  loc_174500F:       var_1E0 = CVar(CLng(4)) 'Long
  loc_1745038:       var_200 = CVar(CLng(var_86)) 'Long
  loc_1745040:       var_220 = CVar(CLng(3)) 'Long
  loc_1745069:       var_240 = CVar(CLng(var_86)) 'Long
  loc_1745093:       var_30C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17450B6:       var_118 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_30C)) 'Double
  loc_17450E2:       Call Proc_124_100_17F8C88(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"), "0.00")), 0, 1, 1, var_30C, CVar(CLng(&HC)))
  loc_174510E:     End If
  loc_1745111:   Else
  loc_1745125:     If ((var_94 < var_96) And (CInt(var_94) <> 0)) Then
  loc_174512C:       var_108 = CVar(CLng(var_86)) 'Long
  loc_1745134:       var_154 = CVar(CLng(&H10)) 'Long
  loc_1745153:       var_1A8 = CVar(CLng(var_86)) 'Long
  loc_174515B:       var_1E0 = CVar(CLng(4)) 'Long
  loc_1745184:       var_200 = CVar(CLng(var_86)) 'Long
  loc_174518C:       var_220 = CVar(CLng(3)) 'Long
  loc_17451EE:       Set var_144 = Me.FGrid
  loc_1745224:       Call Proc_124_100_17F8C88(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00")), Val(CStr(var_144.TextMatrix))), Val(CStr(var_144.TextMatrix))), CVar(CLng(&H16)), CVar(CLng(var_86)), 1)
  loc_1745253:     Else
  loc_1745257:       var_108 = CVar(CLng(var_86)) 'Long
  loc_174525F:       var_154 = CVar(CLng(&H10)) 'Long
  loc_174527E:       var_1A8 = CVar(CLng(var_86)) 'Long
  loc_1745286:       var_1E0 = CVar(CLng(4)) 'Long
  loc_17452AF:       var_200 = CVar(CLng(var_86)) 'Long
  loc_17452D9:       var_304 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1745324:       Call Proc_124_100_17F8C88(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_304)), "0.00")), 0, 1, 1, var_304, CVar(CLng(3)))
  loc_174534A:     End If
  loc_174534A:   End If
  loc_174534D: Next var_2C4 'Integer
  loc_1745356: Set var_A4 = Me.TopCtrl1
  loc_174535C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1745370: Set var_B0 = Me.TopCtrl1
  loc_1745376: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Add"))
  loc_174539C: If ( Or (CStr() = "Edit")) Then
  loc_17453AB:   Set var_A4 = Me.TxtGt
  loc_17453B1:   Call 0.Method_Proc_124_94_1745CC08 (var_A6, var_86)
  loc_17453BC:   For var_318 =  To var_A6: 2 = var_318 'Integer
  loc_17453CF:     Set var_A4 = Me.TxtPer
  loc_17453D5:     Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0)
  loc_17453DD:     var_A6 = var_B0.Visible
  loc_17453F5:     Set var_140 = Me.LblCap
  loc_17453FB:     Call 0.Method_Proc_124_94_1745CC00 (var_86, var_144)
  loc_1745403:     var_B4 = var_144.Tag
  loc_174542A:     If ((var_A6 = &HFF) And (var_B4 = MemVar_1F95070 & "SCH")) Then
  loc_1745433:       Call Proc_124_96_1321F1C(var_86)
  loc_174543B:       var_90 = var_2A8
  loc_174544B:       Set var_A4 = Me.TxtPer
  loc_1745451:       Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, var_B4)
  loc_1745459:       var_90 = var_B0.Text
  loc_1745466:       var_2A8 = Val(var_B4)
  loc_17454A6:       Set var_140 = Me.TxtGt
  loc_17454AC:       Call 0.Method_Proc_124_94_1745CC00 (var_86, var_144, CStr(Format(CVar(((var_90 * var_2A8) / CDbl(&H64))), "0.00")), 1)
  loc_17454B4:       var_144.Text = 1
  loc_17454D9:       var_B4 = CStr(var_90)
  loc_17454E6:       Set var_A4 = Me.LblDummy
  loc_17454EC:       Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, var_B4)
  loc_17454F4:       var_B0.Caption = var_2A8
  loc_1745503:     End If
  loc_1745506:   Next var_318 'Integer
  loc_174550B: End If
  loc_174552A: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_1745540:   Me.FGCat.FixedRows = 1
  loc_1745548: End If
  loc_174555D: Set var_A4 = Me.TxtGt
  loc_1745563: Call 0.Method_Proc_124_94_1745CC08 (var_A6, var_86)
  loc_174556E: For var_31C = CDbl(0) To var_A6: 1 = var_31C 'Integer
  loc_1745599:   For var_320 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_320 'Integer
  loc_17455AC:     Set var_A4 = Me.LblCap
  loc_17455B2:     Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, var_B4)
  loc_17455BA:     0 = var_B0.Tag
  loc_17455C8:     var_D4 = Trim(CVar(var_B4))
  loc_17455D4:     var_108 = CVar(CLng(var_88)) 'Long
  loc_174561C:     If (CVar(CLng(7)) = Trim(CVar(CStr(Me.FGCat.TextMatrix))))) Then
  loc_1745623:       var_108 = CVar(CLng(var_88)) 'Long
  loc_174564D:       var_2A8 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_174565D:       Set var_A4 = Me.TxtGt
  loc_1745663:       Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, var_B4, var_2A8, CVar(CLng(6)))
  loc_174567E:       var_11C = CStr((Val(var_B4) + var_2A8))
  loc_174568B:       Set var_144 = Me.TxtGt
  loc_1745691:       Call 0.Method_Proc_124_94_1745CC00 (var_86, var_158, CStr(var_144.TextMatrix)))
  loc_1745699:       var_158.Text = var_B0.Text
  loc_17456B7:     End If
  loc_17456BA:   Next var_320 'Integer
  loc_17456CC:   Set var_A4 = Me.TxtGt
  loc_17456D2:   Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0)
  loc_17456E7:   var_2A8 = Val(var_B0.Text)
  loc_1745702:   var_C4 = CVar(var_2A8) 'Double
  loc_174571F:   Set var_140 = Me.TxtGt
  loc_1745725:   Call 0.Method_Proc_124_94_1745CC00 (var_86, var_144, CStr(Format(var_C4, "0.00")))
  loc_174572D:   var_144.Text = 1
  loc_1745750: Next var_31C 'Integer
  loc_1745761: Set var_A4 = Me.TxtGt
  loc_1745767: Call 0.Method_Proc_124_94_1745CC08 (var_A6, var_86)
  loc_1745772: For var_324 =  To var_A6: 2 = var_324 'Integer
  loc_1745785:   Set var_A4 = Me.LblCap
  loc_174578B:   Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0)
  loc_17457B5:   If (var_B0.Tag = MemVar_1F95070 & "ROFF") Then
  loc_17457BE:     Call Proc_124_96_1321F1C(var_86)
  loc_17457C6:     var_90 = var_2A8
  loc_17457E1:     Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, CStr(var_90))
  loc_17457E9:     var_B0.Caption = var_90
  loc_174581C:     unk_59EE7B.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Banquet Bill' And LogSite_Code='" & MemVar_1F95078 & "'", var_C4, -1
  loc_1745827:     Set var_9C = Me.LblDummy
  loc_174584B:     If (var_9C.RecordCount > 0) Then
  loc_1745865:       var_B0 = var_9C.Fields.Item("RoundOffType")
  loc_1745897:       Proc_6_142_14A62A0(var_90, CByte(0), CStr(Left(CVar(var_B0), 1)))
  loc_17458D4:       Set var_140 = Me.TxtGt
  loc_17458DA:       Call 0.Method_Proc_124_94_1745CC00 (var_86, var_144, CStr(Format(CVar(2), "0.00")), 1)
  loc_17458E2:       var_144.Text = 1
  loc_1745907:     Else
  loc_1745910:       var_B4 = "U"
  loc_1745921:       Proc_6_142_14A62A0(var_90, CByte(0), var_B4, 2)
  loc_1745950:       var_F8 = CStr(Format(CVar(var_2A8), "0.00"))
  loc_174595E:       Set var_A4 = Me.TxtGt
  loc_1745964:       Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, var_F8, 1)
  loc_174596C:       var_B0.Text = 1
  loc_1745988:     End If
  loc_174598D:     Set var_9C = Nothing
  loc_1745993:   Else
  loc_174599A:     If (var_86 <> arg_C) Then
  loc_17459B0:       Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, var_B4)
  loc_17459B8:       var_2A8 = var_B0.Tag
  loc_17459EA:       Set var_140 = Me.LblCap
  loc_17459F0:       Call 0.Method_Proc_124_94_1745CC00 (var_86, var_144, var_F8)
  loc_17459F8:       (Trim(CVar(var_B4)) = CVar(MemVar_1F95070 & "TOT")) = var_144.Tag
  loc_1745A3D:       If CBool(Me.LblCap Or (Trim(CVar(var_F8)) = CVar(MemVar_1F95070 & "NET"))) Then
  loc_1745A46:         Call Proc_124_96_1321F1C(var_86, var_2A8)
  loc_1745A80:         Set var_A4 = Me.TxtGt
  loc_1745A86:         Call 0.Method_Proc_124_94_1745CC00 (var_86, var_B0, CStr(Format(CVar(var_2A8), "0.00")))
  loc_1745A8E:         var_B0.Text = 1
  loc_1745AA6:       End If
  loc_1745AA6:     End If
  loc_1745AA6:   End If
  loc_1745AA9: Next var_324 'Integer
  loc_1745AB5: Set var_A4 = Me.TxtGt
  loc_1745ABB: Call 0.Method_Proc_124_94_1745CC08 (var_A6)
  loc_1745ACD: Set var_B0 = Me.TxtGt
  loc_1745AD3: Call 0.Method_Proc_124_94_1745CC00 (var_A6, var_140)
  loc_1745AF2: Set var_144 = Me.TextGt
  loc_1745AF8: Call 0.Method_Proc_124_94_1745CC08 (var_32A)
  loc_1745B0A: Set var_158 = Me.TextGt
  loc_1745B10: Call 0.Method_Proc_124_94_1745CC00 (var_32A, var_330)
  loc_1745B25: var_2B0 = Val(var_330.Text)
  loc_1745B36: Set var_334 = Me.Txt
  loc_1745B3C: Call 0.Method_Proc_124_94_1745CC00 (CInt(8), var_338, CStr(var_144.TextMatrix)))
  loc_1745B51: var_2B8 = Val(CStr(var_144.TextMatrix)))
  loc_1745B74: var_C4 = CVar(((Val(var_140.Text) + var_338.Text) - var_2B8)) 'Double
  loc_1745B92: Set var_33C = Me.Txt
  loc_1745B98: Call 0.Method_Proc_124_94_1745CC00 (CInt(&H14), var_340, CStr(Format(CVar(Val(var_140.Text)), "0.00")), 1)
  loc_1745BA0: var_340.Text = 1
  loc_1745BD7: Set var_A4 = Me.TxtGt
  loc_1745BDD: Call 0.Method_Proc_124_94_1745CC08 (var_A6, var_2B8)
  loc_1745BEF: Set var_B0 = Me.TxtGt
  loc_1745BF5: Call 0.Method_Proc_124_94_1745CC00 (var_A6, var_140)
  loc_1745C0A: var_2A8 = Val(var_140.Text)
  loc_1745C14: Set var_144 = Me.TextGt
  loc_1745C1A: Call 0.Method_Proc_124_94_1745CC08 (var_32A, var_2A8)
  loc_1745C2C: Set var_158 = Me.TextGt
  loc_1745C32: Call 0.Method_Proc_124_94_1745CC00 (var_32A, var_330)
  loc_1745C66: var_C4 = CVar((var_2A8 + Val(var_330.Text))) 'Double
  loc_1745C84: Set var_334 = Me.Txt
  loc_1745C8A: Call 0.Method_Proc_124_94_1745CC00 (CInt(&H1A), var_338, CStr(Format(CVar(var_2A8), "0.00")), 1)
  loc_1745C92: var_338.Text = 1
  loc_1745CBC: Exit Sub
End Sub

Public Sub Proc_124_95_14FC7CC(arg_C) '14FC7CC
  'Data Table: 59EE5C
  Dim var_A4 As Variant
  Dim var_118 As Double
  Dim var_B0 As Variant
  Dim var_120 As Double
  Dim var_D4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_B4 As String
  Dim var_168 As Variant
  Dim var_A8 As String
  Dim var_C4 As Variant
  Dim unk_59EE7B As Connection15
  Dim var_AC As Variant
  Dim var_90 As Double
  Dim var_F4 As Variant
  Dim var_108 As TextBox
  Dim var_98 As Recordset15
  Dim var_A0 As Fields15
  Dim var_1F4 As TextBox
  Dim var_208 As Double
  Dim var_1FC As TextBox
  loc_14FB986: Set var_A0 = Me.Txt
  loc_14FB98C: Call 0.Method_Proc_124_95_14FC7CC0 (CInt(&H11), var_A4)
  loc_14FB9A1: var_118 = Val(var_A4.Text)
  loc_14FB9B2: Set var_AC = Me.Txt
  loc_14FB9B8: Call 0.Method_Proc_124_95_14FC7CC0 (CInt(&H12), var_B0)
  loc_14FBA08: Set var_108 = Me.TextGt
  loc_14FBA0E: Call 0.Method_Proc_124_95_14FC7CC0 (1, var_10C, CStr(Format(CVar((var_118 * Val(var_B0.Text))), "0.00")), 1)
  loc_14FBA16: var_10C.Text = 1
  loc_14FBA48: Set var_A0 = Me.TextGt
  loc_14FBA4E: Call 0.Method_Proc_124_95_14FC7CC8 (var_122, var_86, 1)
  loc_14FBA59: For var_126 = var_118 To var_122: var_120 = var_126 'Integer
  loc_14FBA6C:   Set var_A0 = Me.LableCap
  loc_14FBA72:   Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4)
  loc_14FBA89:   var_B4 = MemVar_1F95070 & "DIS"
  loc_14FBA9C:   If (var_A4.Tag = var_B4) Then
  loc_14FBAA4:     var_92 = CByte(var_86) 'Byte
  loc_14FBAA8:   End If
  loc_14FBADF:   Set var_A0 = Me.LableCap
  loc_14FBAE5:   Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4, var_B4, CVar("Select Count(*) from SundryMast where Logsite_code='" & MemVar_1F95078 & "' and Code='"), var_158, -1)
  loc_14FBB1A:   unk_59EE7B.Execute CStr(var_B0 & Trim(CVar(var_B4)) & "' And Nature In ('Sale Tax','CGST','SGST','IGST')"), 0, var_108
  loc_14FBB22:   var_118 = var_A4.Tag.Fields
  loc_14FBB2A:    = var_B0.Item()
  loc_14FBB85:   If CBool((Trim(CVar(var_108)) > 0) And (CInt(var_94) = 0)) Then
  loc_14FBB8D:     var_94 = CByte(var_86) 'Byte
  loc_14FBB97:     global_136 = var_86
  loc_14FBB9A:   End If
  loc_14FBB9D: Next var_126 'Integer
  loc_14FBBAE: Set var_A0 = Me.TextGt
  loc_14FBBB4: Call 0.Method_Proc_124_95_14FC7CC8 (var_122, var_86)
  loc_14FBBBF: For var_1CC =  To var_122: 2 = var_1CC 'Integer
  loc_14FBBD2:   Set var_A0 = Me.LableCap
  loc_14FBBD8:   Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4)
  loc_14FBC02:   If (var_A4.Tag = MemVar_1F95070 & "DIS") Then
  loc_14FBC0F:     If (var_94 > var_92) Then
  loc_14FBC1F:       Set var_A0 = Me.TextPer
  loc_14FBC25:       Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4)
  loc_14FBC2D:       var_122 = var_A4.Visible
  loc_14FBC3F:       If (var_122 = &HFF) Then
  loc_14FBC4F:         Set var_A0 = Me.TextPer
  loc_14FBC55:         Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4)
  loc_14FBC5D:         var_A8 = var_A4.Text
  loc_14FBC79:         If (CDbl(Val(var_A8)) <> CDbl(0)) Then
  loc_14FBC82:           Call Proc_124_97_1031F30(var_86)
  loc_14FBC8A:           var_90 = var_118
  loc_14FBC9A:           Set var_A0 = Me.TextPer
  loc_14FBCA0:           Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4, var_A8)
  loc_14FBCA8:           var_90 = var_A4.Text
  loc_14FBCB5:           var_118 = Val(var_A8)
  loc_14FBCF5:           Set var_AC = Me.TextGt
  loc_14FBCFB:           Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_B0, CStr(Format(CVar(((var_90 * var_118) / CDbl(&H64))), "0.00")), 1)
  loc_14FBD03:           var_B0.Text = 1
  loc_14FBD35:           Set var_A0 = Me.LableDummy
  loc_14FBD3B:           Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4, CStr(var_90))
  loc_14FBD43:           var_A4.Caption = var_118
  loc_14FBD55:         Else
  loc_14FBD62:           Set var_A0 = Me.TextGt
  loc_14FBD68:           Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4)
  loc_14FBD70:           var_A8 = var_A4.Text
  loc_14FBDB5:           Set var_AC = Me.TextGt
  loc_14FBDBB:           Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_B0, CStr(Format(CVar(Val(var_A8)), "0.00")), 1)
  loc_14FBDC3:           var_B0.Text = 1
  loc_14FBDE3:         End If
  loc_14FBDE6:       Else
  loc_14FBDF3:         Set var_A0 = Me.LableCap
  loc_14FBDF9:         Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4, var_A8)
  loc_14FBE01:         var_118 = var_A4.Tag
  loc_14FBE23:         If (var_A8 = MemVar_1F95070 & "DIS") Then
  loc_14FBE33:           Set var_A0 = Me.TextGt
  loc_14FBE39:           Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4)
  loc_14FBE41:           var_A8 = var_A4.Text
  loc_14FBE86:           Set var_AC = Me.TextGt
  loc_14FBE8C:           Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_B0, CStr(Format(CVar(Val(var_A8)), "0.00")), 1)
  loc_14FBE94:           var_B0.Text = 1
  loc_14FBEB4:         End If
  loc_14FBEB4:       End If
  loc_14FBEB7:     Else
  loc_14FBEC4:       Set var_A0 = Me.LableCap
  loc_14FBECA:       Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4, var_A8)
  loc_14FBED2:       var_118 = var_A4.Tag
  loc_14FBEF4:       If (var_A8 = MemVar_1F95070 & "DIS") Then
  loc_14FBF04:         Set var_A0 = Me.TextGt
  loc_14FBF0A:         Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4)
  loc_14FBF12:         var_A8 = var_A4.Text
  loc_14FBF1F:         var_118 = Val(var_A8)
  loc_14FBF26:         var_C4 = CVar(CLng(var_88)) 'Long
  loc_14FBF2E:         var_168 = CVar(CLng(&HC)) 'Long
  loc_14FBF50:         var_120 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14FBF6F:         var_F4 = CVar((var_118 + var_120)) 'Double
  loc_14FBF7E:         var_110 = CStr(Format("0.00", "0.00"))
  loc_14FBF8C:         Set var_B0 = Me.TextGt
  loc_14FBF92:         Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_108, var_110, 1, 1)
  loc_14FBF9A:         var_108.Text = var_120
  loc_14FBFC0:       End If
  loc_14FBFC0:     End If
  loc_14FBFC3:   Else
  loc_14FBFD0:     Set var_A0 = Me.TextPer
  loc_14FBFD6:     Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4, var_122, var_168)
  loc_14FBFDE:     var_C4 = var_A4.Visible
  loc_14FBFF0:     If (var_122 = &HFF) Then
  loc_14FBFF9:       Call Proc_124_97_1031F30(var_86, var_118)
  loc_14FC001:       var_90 = var_118
  loc_14FC011:       Set var_A0 = Me.TextPer
  loc_14FC017:       Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4, var_A8)
  loc_14FC01F:       var_90 = var_A4.Text
  loc_14FC02C:       var_118 = Val(var_A8)
  loc_14FC06C:       Set var_AC = Me.TextGt
  loc_14FC072:       Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_B0, CStr(Format(CVar(((var_90 * var_118) / CDbl(&H64))), "0.00")), 1)
  loc_14FC07A:       var_B0.Text = 1
  loc_14FC0AC:       Set var_A0 = Me.LableDummy
  loc_14FC0B2:       Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4, CStr(var_90))
  loc_14FC0BA:       var_A4.Caption = var_118
  loc_14FC0C9:     End If
  loc_14FC0C9:   End If
  loc_14FC0CC: Next var_1CC 'Integer
  loc_14FC0D5: Set var_A0 = Me.TopCtrl1
  loc_14FC0DB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14FC0F4: If (CStr() = "Add") Then
  loc_14FC103:   Set var_A0 = Me.TextGt
  loc_14FC109:   Call 0.Method_Proc_124_95_14FC7CC8 (var_122, var_86)
  loc_14FC114:   For var_1E0 =  To var_122: 2 = var_1E0 'Integer
  loc_14FC127:     Set var_A0 = Me.TextPer
  loc_14FC12D:     Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4)
  loc_14FC135:     var_122 = var_A4.Visible
  loc_14FC14D:     Set var_AC = Me.LableCap
  loc_14FC153:     Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_B0)
  loc_14FC15B:     var_A8 = var_B0.Tag
  loc_14FC182:     If ((var_122 = &HFF) And (var_A8 = MemVar_1F95070 & "SCH")) Then
  loc_14FC18B:       Call Proc_124_97_1031F30(var_86)
  loc_14FC193:       var_90 = var_118
  loc_14FC1A3:       Set var_A0 = Me.TextPer
  loc_14FC1A9:       Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4, var_A8)
  loc_14FC1B1:       var_90 = var_A4.Text
  loc_14FC1BE:       var_118 = Val(var_A8)
  loc_14FC1E1:       var_D4 = CVar(((var_90 * var_118) / CDbl(&H64))) 'Double
  loc_14FC1FE:       Set var_AC = Me.TextGt
  loc_14FC204:       Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_B0, CStr(Format(var_D4, "0.00")), 1)
  loc_14FC20C:       var_B0.Text = 1
  loc_14FC23E:       Set var_A0 = Me.LableDummy
  loc_14FC244:       Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4, CStr(var_90))
  loc_14FC24C:       var_A4.Caption = var_118
  loc_14FC25B:     End If
  loc_14FC25E:   Next var_1E0 'Integer
  loc_14FC263: End If
  loc_14FC26F: Set var_A0 = Me.TextGt
  loc_14FC275: Call 0.Method_Proc_124_95_14FC7CC8 (var_122, var_86)
  loc_14FC280: For var_1E4 =  To var_122: 2 = var_1E4 'Integer
  loc_14FC293:   Set var_A0 = Me.LableCap
  loc_14FC299:   Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4)
  loc_14FC2C3:   If (var_A4.Tag = MemVar_1F95070 & "ROFF") Then
  loc_14FC2CC:     Call Proc_124_97_1031F30(var_86)
  loc_14FC2D4:     var_90 = var_118
  loc_14FC2EF:     Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4, CStr(var_90))
  loc_14FC2F7:     var_A4.Caption = var_90
  loc_14FC32A:     unk_59EE7B.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Banquet Bill' And LogSite_Code='" & MemVar_1F95078 & "'", var_D4, -1
  loc_14FC335:     Set var_98 = Me.LableDummy
  loc_14FC359:     If (var_98.RecordCount > 0) Then
  loc_14FC373:       var_A4 = var_98.Fields.Item("RoundOffType")
  loc_14FC3A5:       Proc_6_142_14A62A0(var_90, CByte(0), CStr(Left(CVar(var_A4), 1)))
  loc_14FC3E2:       Set var_AC = Me.TextGt
  loc_14FC3E8:       Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_B0, CStr(Format(CVar(2), "0.00")), 1)
  loc_14FC3F0:       var_B0.Text = 1
  loc_14FC415:     Else
  loc_14FC41E:       var_A8 = "U"
  loc_14FC42F:       Proc_6_142_14A62A0(var_90, CByte(0), var_A8, 2)
  loc_14FC45E:       var_B4 = CStr(Format(CVar(var_118), "0.00"))
  loc_14FC46C:       Set var_A0 = Me.TextGt
  loc_14FC472:       Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4, var_B4, 1)
  loc_14FC47A:       var_A4.Text = 1
  loc_14FC496:     End If
  loc_14FC49B:     Set var_98 = Nothing
  loc_14FC4A1:   Else
  loc_14FC4A8:     If (var_86 <> arg_C) Then
  loc_14FC4BE:       Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4, var_A8)
  loc_14FC4C6:       var_118 = var_A4.Tag
  loc_14FC4F8:       Set var_AC = Me.LableCap
  loc_14FC4FE:       Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_B0, var_B4)
  loc_14FC506:       (Trim(CVar(var_A8)) = CVar(MemVar_1F95070 & "TOT")) = var_B0.Tag
  loc_14FC54B:       If CBool(Me.LableCap Or (Trim(CVar(var_B4)) = CVar(MemVar_1F95070 & "NET"))) Then
  loc_14FC554:         Call Proc_124_97_1031F30(var_86, var_118)
  loc_14FC58E:         Set var_A0 = Me.TextGt
  loc_14FC594:         Call 0.Method_Proc_124_95_14FC7CC0 (var_86, var_A4, CStr(Format(CVar(var_118), "0.00")))
  loc_14FC59C:         var_A4.Text = 1
  loc_14FC5B4:       End If
  loc_14FC5B4:     End If
  loc_14FC5B4:   End If
  loc_14FC5B7: Next var_1E4 'Integer
  loc_14FC5C3: Set var_A0 = Me.TxtGt
  loc_14FC5C9: Call 0.Method_Proc_124_95_14FC7CC8 (var_122)
  loc_14FC5DB: Set var_A4 = Me.TxtGt
  loc_14FC5E1: Call 0.Method_Proc_124_95_14FC7CC0 (var_122, var_AC)
  loc_14FC600: Set var_B0 = Me.TextGt
  loc_14FC606: Call 0.Method_Proc_124_95_14FC7CC8 (var_1EA)
  loc_14FC618: Set var_108 = Me.TextGt
  loc_14FC61E: Call 0.Method_Proc_124_95_14FC7CC0 (var_1EA, var_10C)
  loc_14FC633: var_120 = Val(var_10C.Text)
  loc_14FC644: Set var_1F0 = Me.Txt
  loc_14FC64A: Call 0.Method_Proc_124_95_14FC7CC0 (CInt(8), var_1F4, var_110)
  loc_14FC65F: var_208 = Val(var_110)
  loc_14FC682: var_D4 = CVar(((Val(var_AC.Text) + var_1F4.Text) - var_208)) 'Double
  loc_14FC6A0: Set var_1F8 = Me.Txt
  loc_14FC6A6: Call 0.Method_Proc_124_95_14FC7CC0 (CInt(&H14), var_1FC, CStr(Format(CVar(Val(var_AC.Text)), "0.00")), 1)
  loc_14FC6AE: var_1FC.Text = 1
  loc_14FC6E5: Set var_A0 = Me.TxtGt
  loc_14FC6EB: Call 0.Method_Proc_124_95_14FC7CC8 (var_122, var_208)
  loc_14FC6FD: Set var_A4 = Me.TxtGt
  loc_14FC703: Call 0.Method_Proc_124_95_14FC7CC0 (var_122, var_AC)
  loc_14FC718: var_118 = Val(var_AC.Text)
  loc_14FC722: Set var_B0 = Me.TextGt
  loc_14FC728: Call 0.Method_Proc_124_95_14FC7CC8 (var_1EA, var_118)
  loc_14FC73A: Set var_108 = Me.TextGt
  loc_14FC740: Call 0.Method_Proc_124_95_14FC7CC0 (var_1EA, var_10C)
  loc_14FC774: var_D4 = CVar((var_118 + Val(var_10C.Text))) 'Double
  loc_14FC792: Set var_1F0 = Me.Txt
  loc_14FC798: Call 0.Method_Proc_124_95_14FC7CC0 (CInt(&H1A), var_1F4, CStr(Format(CVar(var_118), "0.00")), 1)
  loc_14FC7A0: var_1F4.Text = 1
  loc_14FC7CA: Exit Sub
End Sub

Public Sub Proc_124_96_1321F1C(arg_C) '1321F1C
  'Data Table: 59EE5C
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_D4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_164 As Double
  Dim var_128 As Variant
  Dim var_14C As Variant
  Dim var_D0 As Variant
  Dim var_16C As Double
  Dim var_A0 As Double
  Dim var_170 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_194 As Variant
  Dim var_214 As Variant
  Dim var_12C As TextBox
  Dim var_184 As Variant
  Dim var_1C4 As Variant
  Dim var_23C As Label
  Dim var_8C As Double
  Dim var_1B4 As Variant
  loc_13217C9: Set var_A8 = Me.TxtGt
  loc_13217CF: Call 0.Method_Proc_124_96_1321F1C0 (arg_C, var_AC)
  loc_13217EE: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_132180C: Set var_A8 = Me.LblCap
  loc_1321812: Call 0.Method_Proc_124_96_1321F1C0 (arg_C, var_AC)
  loc_132183C: If (var_AC.Tag = MemVar_1F95078 & "SCH") Then
  loc_1321864:   For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_D8 'Integer
  loc_132186E:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_1321876:     var_108 = CVar(CLng(&H13)) 'Long
  loc_1321890:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_13218A1:     If (var_B0 = "Y") Then
  loc_13218A8:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_13218C2:       Set var_A8 = Me.TxtPer
  loc_13218C8:       Call 0.Method_Proc_124_96_1321F1C0 (arg_C, var_AC, var_B0, CVar(CLng(&H15)))
  loc_13218D0:       var_E8 = var_AC.Text
  loc_13218DF:       var_C0 = CVar(CStr(Val(var_B0))) 'String
  loc_13218E7:       Set var_12C = Me.FGrid
  loc_13218ED:       LateIdCallSt
  loc_1321918:       If CBool(InStr(1, var_90, "1-2", 0)) Then
  loc_132191F:         var_E8 = CVar(CLng(var_A2)) 'Long
  loc_1321927:         var_108 = CVar(CLng(5)) 'Long
  loc_1321950:         var_128 = CVar(CLng(var_A2)) 'Long
  loc_1321958:         var_14C = CVar(CLng(&HC)) 'Long
  loc_1321988:         var_A0 = ((var_A0 + Val(CStr(Me.FGrid.TextMatrix)))) - Val(CStr(Me.FGrid.TextMatrix))))
  loc_13219A4:         var_E8 = CVar(CLng(var_A2)) 'Long
  loc_13219AC:         var_108 = CVar(CLng(5)) 'Long
  loc_13219CE:         var_164 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_13219F7:         var_D4 = CStr(Me.FGrid.TextMatrix))
  loc_13219FF:         var_16C = Val(var_D4)
  loc_1321A0F:         Set var_12C = Me.TxtPer
  loc_1321A15:         Call 0.Method_Proc_124_96_1321F1C0 (arg_C, var_170, var_174, var_16C, CVar(CLng(&HC)), CVar(CLng(var_A2)), var_164)
  loc_1321A1D:         var_108 = var_170.Text
  loc_1321A31:         var_1D4 = CVar(CLng(var_A2)) 'Long
  loc_1321A39:         var_1F4 = CVar(CLng(&H16)) 'Long
  loc_1321A62:         var_194 = CVar((((var_164 - var_16C) * Val(var_174)) / CDbl(&H64))) 'Double
  loc_1321A72:         var_214 = CVar(CStr(Format(var_194, "0.00"))) 'String
  loc_1321A7A:         Set var_228 = Me.FGrid
  loc_1321A80:         LateIdCallSt
  loc_1321AB0:       Else
  loc_1321AB4:         var_E8 = CVar(CLng(var_A2)) 'Long
  loc_1321ABC:         var_108 = CVar(CLng(5)) 'Long
  loc_1321AE8:         var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1321B32:         Set var_AC = Me.TxtPer
  loc_1321B38:         Call 0.Method_Proc_124_96_1321F1C0 (arg_C, var_12C, var_D4, Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_A2)), var_A0)
  loc_1321B54:         var_14C = CVar(CLng(var_A2)) 'Long
  loc_1321B5C:         var_184 = CVar(CLng(&H16)) 'Long
  loc_1321B91:         var_1C4 = CVar(CStr(Format(CVar(((var_12C.Text * Val(var_D4)) / CDbl(&H64))), "0.00"))) 'String
  loc_1321B99:         Set var_170 = Me.FGrid
  loc_1321B9F:         LateIdCallSt
  loc_1321BC6:       End If
  loc_1321BC6:     End If
  loc_1321BC9:   Next var_D8 'Integer
  loc_1321BD1: Else
  loc_1321BF6:   For var_234 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_A2 = var_234 'Integer
  loc_1321C00:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_1321C08:     var_108 = CVar(CLng(5)) 'Long
  loc_1321C34:     var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1321C43:   Next var_234 'Integer
  loc_1321C48: End If
  loc_1321C52: If (Len(var_90) > 0) Then
  loc_1321C84:   Set var_A8 = Me.LblCap
  loc_1321C8A:   Call 0.Method_Proc_124_96_1321F1C0 (arg_C, var_AC)
  loc_1321CA1:   var_D4 = MemVar_1F95078 & "SCH"
  loc_1321CB3:   Set var_12C = Me.LblCap
  loc_1321CB9:   Call 0.Method_Proc_124_96_1321F1C0 (arg_C, var_170, var_174)
  loc_1321CC1:   (var_AC.Tag = var_D4) = var_170.Tag
  loc_1321CE3:   Set var_228 = Me.LblCap
  loc_1321CE9:   Call 0.Method_Proc_124_96_1321F1C0 (arg_C, var_23C)
  loc_1321D35:   If CBool( And (((Left(var_90, 1) = "1") Or (var_174 = MemVar_1F95078 & "ADD")) Or (var_23C.Tag = MemVar_1F95070 & "DED"))) Then
  loc_1321D3B:     var_8C = var_A0
  loc_1321D41:   Else
  loc_1321D59:     var_B0 = CStr(Left(var_90, 1))
  loc_1321D73:     Set var_A8 = Me.TxtGt
  loc_1321D79:     Call 0.Method_Proc_124_96_1321F1C0 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_1321D81:     var_164 = var_AC.Text
  loc_1321D8E:     var_8C = Val(var_D4)
  loc_1321DA2:   End If
  loc_1321DC3:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1321DCD:   ' Referenced from: 1321F12
  loc_1321DD7:   If (Len(var_90) > 0) Then
  loc_1321E1A:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1321E64:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1321E7B:     Set var_A8 = Me.TxtGt
  loc_1321E81:     Call 0.Method_Proc_124_96_1321F1C0 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_1321E96:     var_164 = Val(var_B0)
  loc_1321EAD:     Set var_12C = Me.TxtGt
  loc_1321EB3:     Call 0.Method_Proc_124_96_1321F1C0 (var_AC.Text, var_170, var_D4, CVar(var_8C))
  loc_1321EC9:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_1321EDC:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_1321EEB:     var_1B4 = (var_8C + IIf(var_90, CVar(var_170.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_1321EF0:     var_8C = CSng(Format(CVar(((var_12C.Text * Val(var_D4)) / CDbl(&H64))), "0.00"))
  loc_1321F12:     GoTo loc_1321DCD
  loc_1321F15:   End If
  loc_1321F15: End If
  loc_1321F15: Proc_124_96_1321F1C = var_8C
End Sub

Public Sub Proc_124_97_1031F30(arg_C) '1031F30
  'Data Table: 59EE5C
  Dim var_A0 As TextBox
  Dim var_D4 As Variant
  Dim var_A4 As String
  Dim var_E0 As Double
  Dim var_8C As Double
  Dim var_F8 As TextBox
  Dim var_C4 As Variant
  Dim var_138 As Variant
  loc_1031D11: Set var_9C = Me.TextGt
  loc_1031D17: Call 0.Method_Proc_124_97_1031F300 (arg_C, var_A0)
  loc_1031D36: var_90 = CStr(Trim(CVar(var_A0.Tag)))
  loc_1031D51: If (Len(var_90) > 0) Then
  loc_1031D6C:   var_A4 = CStr(Left(var_90, 1))
  loc_1031D86:   Set var_9C = Me.TextGt
  loc_1031D8C:   Call 0.Method_Proc_124_97_1031F300 (CInt(Val(var_A4)), var_A0)
  loc_1031D94:   var_D8 = var_A0.Text
  loc_1031DA1:   var_8C = Val(var_D8)
  loc_1031DD6:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1031DE0:   ' Referenced from: 1031F25
  loc_1031DEA:   If (Len(var_90) > 0) Then
  loc_1031E2D:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1031E77:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1031E8E:     Set var_9C = Me.TextGt
  loc_1031E94:     Call 0.Method_Proc_124_97_1031F300 (CInt(Left(var_90, 1)), var_A0, var_A4)
  loc_1031EA9:     var_E0 = Val(var_A4)
  loc_1031EC0:     Set var_F4 = Me.TextGt
  loc_1031EC6:     Call 0.Method_Proc_124_97_1031F300 (var_A0.Text, var_F8, var_D8, CVar(var_8C))
  loc_1031EDC:     var_C4 = CVar(-Val(var_D8)) 'Double
  loc_1031EEF:     var_D4 = (CStr(Left(var_90, 1)) = "+")
  loc_1031EFE:     var_138 = (var_8C + IIf(var_90, CVar(var_F8.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_1031F03:     var_8C = CSng(var_138)
  loc_1031F25:     GoTo loc_1031DE0
  loc_1031F28:   End If
  loc_1031F28: End If
  loc_1031F28: Proc_124_97_1031F30 = var_8C
End Sub

Public Sub Proc_124_98_10A4980
  'Data Table: 59EE5C
  Dim var_9C As Variant
  loc_10A46B8: Set var_90 = Me.TxtGt
  loc_10A46BE: Call 0.Method_Proc_124_98_10A49808 (var_92, var_86)
  loc_10A46C9: For var_96 =  To var_92: 1 = var_96 'Integer
  loc_10A46DC:   Set var_90 = Me.LblCap
  loc_10A46E2:   Call 0.Method_Proc_124_98_10A49800 (var_86, var_9C)
  loc_10A4701:   If (var_9C.Tag = "STOT") Then
  loc_10A4711:     Set var_90 = Me.TxtGt
  loc_10A4717:     Call 0.Method_Proc_124_98_10A49800 (var_86, var_9C)
  loc_10A471F:     var_9C.Text = vbNullString
  loc_10A472E:   Else
  loc_10A473B:     Set var_90 = Me.LblCap
  loc_10A4741:     Call 0.Method_Proc_124_98_10A49800 (var_86, var_9C)
  loc_10A4760:     If (var_9C.Tag = "SDIS") Then
  loc_10A4770:       Set var_90 = Me.TxtGt
  loc_10A4776:       Call 0.Method_Proc_124_98_10A49800 (var_86, var_9C)
  loc_10A477E:       var_9C.Text = vbNullString
  loc_10A478D:     Else
  loc_10A479A:       Set var_90 = Me.LblCap
  loc_10A47A0:       Call 0.Method_Proc_124_98_10A49800 (var_86, var_9C)
  loc_10A47BF:       If (var_9C.Tag = "SST") Then
  loc_10A47CF:         Set var_90 = Me.TxtGt
  loc_10A47D5:         Call 0.Method_Proc_124_98_10A49800 (var_86, var_9C)
  loc_10A47DD:         var_9C.Text = vbNullString
  loc_10A47EC:       Else
  loc_10A47F9:         Set var_90 = Me.LblCap
  loc_10A47FF:         Call 0.Method_Proc_124_98_10A49800 (var_86, var_9C)
  loc_10A481E:         If (var_9C.Tag = "SSTX") Then
  loc_10A4821:           GoTo loc_10A4976
  loc_10A4824:         End If
  loc_10A4831:         Set var_90 = Me.LblCap
  loc_10A4837:         Call 0.Method_Proc_124_98_10A49800 (var_86, var_9C)
  loc_10A4856:         If (var_9C.Tag = "SSCH") Then
  loc_10A4859:           GoTo loc_10A4976
  loc_10A485C:         End If
  loc_10A4869:         Set var_90 = Me.LblCap
  loc_10A486F:         Call 0.Method_Proc_124_98_10A49800 (var_86, var_9C)
  loc_10A488E:         If (var_9C.Tag = "SADD") Then
  loc_10A489E:           Set var_90 = Me.TxtGt
  loc_10A48A4:           Call 0.Method_Proc_124_98_10A49800 (var_86, var_9C)
  loc_10A48AC:           var_9C.Text = vbNullString
  loc_10A48BB:         Else
  loc_10A48C8:           Set var_90 = Me.LblCap
  loc_10A48CE:           Call 0.Method_Proc_124_98_10A49800 (var_86, var_9C)
  loc_10A48ED:           If (var_9C.Tag = "SDED") Then
  loc_10A48FD:             Set var_90 = Me.TxtGt
  loc_10A4903:             Call 0.Method_Proc_124_98_10A49800 (var_86, var_9C)
  loc_10A490B:             var_9C.Text = vbNullString
  loc_10A491A:           Else
  loc_10A4927:             Set var_90 = Me.LblCap
  loc_10A492D:             Call 0.Method_Proc_124_98_10A49800 (var_86, var_9C)
  loc_10A494C:             If (var_9C.Tag = "SNET") Then
  loc_10A495C:               Set var_90 = Me.TxtGt
  loc_10A4962:               Call 0.Method_Proc_124_98_10A49800 (var_86, var_9C)
  loc_10A496A:               var_9C.Text = vbNullString
  loc_10A4976:             End If
  loc_10A4976:           End If
  loc_10A4976:           ' Referenced from:       10A4859
  loc_10A4976:           ' Referenced from:       10A4821
  loc_10A4976:         End If
  loc_10A4976:       End If
  loc_10A4976:     End If
  loc_10A4976:   End If
  loc_10A4979: Next var_96 'Integer
  loc_10A497E: Exit Sub
End Sub

Public Sub Proc_124_99_DFFF68
  'Data Table: 59EE5C
  loc_DFFF64: Exit Sub
End Sub

Public Sub Proc_124_100_17F8C88(arg_C, arg_10, arg_14, arg_18) '17F8C88
  'Data Table: 59EE5C
  Dim var_E4 As String
  Dim var_E8 As String
  Dim unk_59EE7B As Connection15
  Dim var_D8 As Recordset15
  Dim var_100 As Variant
  Dim var_114 As Variant
  Dim var_110 As Variant
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_144 As Variant
  Dim var_134 As Variant
  Dim var_C0 As Recordset15
  Dim var_178 As Variant
  Dim var_154 As Variant
  Dim var_18C As Variant
  Dim var_1A0 As Variant
  Dim var_1D4 As Variant
  Dim var_D0 As Double
  Dim var_208 As Double
  Dim var_174 As Variant
  Dim var_E0 As Recordset15
  Dim var_124 As MSHFlexGrid
  Dim var_1FC As Double
  Dim var_9C As Double
  Dim var_1C4 As Variant
  loc_17F6A91: unk_59EE7B.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "' And DeskCode='" & global_56 & "'", var_110, -1
  loc_17F6A9C: Set var_D8 = var_114
  loc_17F6AC4: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_17F6AD4: unk_59EE7B.Execute var_E4 & "'", var_110, -1
  loc_17F6ADF: Set var_8C = var_114
  loc_17F6B03: If (var_D8.RecordCount > 0) Then
  loc_17F6B1B:   var_114 = var_D8.Fields
  loc_17F6B42:   If (var_114 <> Proc_6_38_E69628(CVar(var_114.Item("RestCode")), global_56)) Then
  loc_17F6B47:     var_DA = &HFF
  loc_17F6B4D:   Else
  loc_17F6B4F:     var_DA = 0
  loc_17F6B52:   End If
  loc_17F6B55: Else
  loc_17F6B57:   var_DA = 0
  loc_17F6B5A: End If
  loc_17F6B5D: var_94 = arg_14
  loc_17F6B62: var_86 = 1
  loc_17F6B68: var_A8 = var_94
  loc_17F6B6E: var_B0 = var_94
  loc_17F6B74: var_B8 = CDbl(0)
  loc_17F6B8B: If (var_8C.RecordCount > 0) Then
  loc_17F6B8E:   ' Referenced from: 17F8C5B
  loc_17F6B9D:   If Not(var_8C.EOF) Then
  loc_17F6BA4:     Set var_124 = Me.FGCat
  loc_17F6BA7:     var_100 = vbNullString
  loc_17F6BCC:     If (var_8C.RecordCount > 0) Then
  loc_17F6BD5:       var_D2 = (var_D2 + 1)
  loc_17F6BDB:       var_100 = "Nature"
  loc_17F6C00:       var_144 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_100)), var_D2, FGCat.DispID_10000, var_100, var_B8, var_B0, var_A8)) 'String
  loc_17F6C0E:       var_164 = Trim(var_144) 'Variant
  loc_17F6C27:       If (var_164 = "On Base Amt") Then
  loc_17F6C52:         var_144 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CondApp")), var_86, var_94, var_DA)) 'String
  loc_17F6C74:         If (Trim(var_144) = "Room Rate") Then
  loc_17F6C82:           If (global_56 = "Room Service") Then
  loc_17F6CAB:             Proc_6_39_E7D3A0(var_144, CVar(var_8C.Fields.Item("Limit")), var_DA)
  loc_17F6CD9:             Proc_6_39_E7D3A0(var_174, CVar(var_C0.Fields.Item("RoomRate")), var_144)
  loc_17F6CE1:             var_18C = (var_DA <= var_174)
  loc_17F6D0B:             Proc_6_39_E7D3A0(var_1C4, CVar(var_8C.Fields.Item("Rate")))
  loc_17F6D3B:             If CBool(var_18C And (var_1C4 > 0)) Then
  loc_17F6D7E:               If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_17F6DC0:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_18)) / CDbl(&H64))
  loc_17F6DD3:               Else
  loc_17F6E06:                 var_208 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_17F6E33:                 Proc_6_142_14A62A0(((var_208 * (var_A8 + arg_18)) / CDbl(&H64)), CByte(0), "U", 2)
  loc_17F6E38:                 var_D0 = var_208
  loc_17F6E4C:               End If
  loc_17F6E53:               If (var_D0 > CDbl(0)) Then
  loc_17F6E6F:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F6E77:                 var_1A0 = CVar(CLng(0)) 'Long
  loc_17F6E81:                 var_144 = CVar(CStr(var_86)) 'String
  loc_17F6E88:                 LateIdCallSt
  loc_17F6EB3:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F6EBB:                 var_1A0 = CVar(CLng(1)) 'Long
  loc_17F6EC5:                 var_144 = CVar(CStr(arg_10)) 'String
  loc_17F6ECC:                 LateIdCallSt
  loc_17F6EE4:                 If (var_DA = 0) Then
  loc_17F6EEB:                   Set var_178 = Me.FGCat
  loc_17F6F00:                   var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_17F6F08:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_17F6F38:                   var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17F6F3F:                   LateIdCallSt
  loc_17F6F5C:                 Else
  loc_17F6F77:                   var_E8 = "Select RevCode as Code from SundryType where LogSite_Code='" & MemVar_1F95078 & "' and v_type in (Select V_Type from Voucher_Type where Restcode='"
  loc_17F6FB5:                   var_154 = CVar(var_E8 & global_56 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_17F6FCC:                   unk_59EE7B.Execute CStr(var_154 & "')"), var_18C, -1
  loc_17F6FD7:                   Set var_E0 = var_178
  loc_17F700F:                   If (var_E0.RecordCount > 0) Then
  loc_17F702B:                     var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7033:                     var_1D4 = CVar(CLng(2)) 'Long
  loc_17F7063:                     var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17F706A:                     LateIdCallSt
  loc_17F7084:                   End If
  loc_17F7084:                 End If
  loc_17F709D:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F70A5:                 var_1D4 = CVar(CLng(3)) 'Long
  loc_17F70D5:                 var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17F70DC:                 LateIdCallSt
  loc_17F710F:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7117:                 var_1A0 = CVar(CLng(4)) 'Long
  loc_17F7125:                 var_144 = CVar(CStr((var_A8 + arg_18))) 'String
  loc_17F712C:                 LateIdCallSt
  loc_17F7157:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F715F:                 var_1D4 = CVar(CLng(5)) 'Long
  loc_17F718F:                 var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17F7196:                 LateIdCallSt
  loc_17F71C9:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F71D1:                 var_1A0 = CVar(CLng(6)) 'Long
  loc_17F71DB:                 var_144 = CVar(CStr(var_D0)) 'String
  loc_17F71E2:                 LateIdCallSt
  loc_17F720D:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7215:                 var_1D4 = CVar(CLng(7)) 'Long
  loc_17F7245:                 var_154 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_17F724C:                 LateIdCallSt
  loc_17F7269:               Else
  loc_17F726F:                 var_86 = (var_86 - 1)
  loc_17F7285:                 var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17F729B:               End If
  loc_17F72B4:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F72BC:               var_1A0 = CVar(CLng(6)) 'Long
  loc_17F72E1:               var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_17F730A:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7312:               var_1A0 = CVar(CLng(6)) 'Long
  loc_17F732D:               var_1FC = Val(CStr(var_124.TextMatrix)))
  loc_17F7337:               var_94 = (var_94 + var_1FC)
  loc_17F734E:               var_B0 = (var_B0 + var_D0)
  loc_17F7354:               var_B8 = var_D0
  loc_17F735E:               var_B0 = (var_B0 + var_D0)
  loc_17F7364:               var_B8 = var_D0
  loc_17F7367:             End If
  loc_17F7367:           End If
  loc_17F736A:         Else
  loc_17F7390:           var_144 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_17F73AA:           If (var_144 = "No") Then
  loc_17F73EC:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_18)) / CDbl(&H64))
  loc_17F73FF:           Else
  loc_17F745F:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_18)) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8)
  loc_17F7464:             var_D0 = var_B0
  loc_17F7478:           End If
  loc_17F749E:           Proc_6_39_E7D3A0(var_144, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B8, var_B0)
  loc_17F74D8:           Proc_6_39_E7D3A0(var_18C, CVar(var_8C.Fields.Item("Rate")), (var_144 <= CVar(var_94)), var_94)
  loc_17F7502:           If CBool(var_1FC And (var_18C > 0)) Then
  loc_17F750C:             If (var_D0 > CDbl(0)) Then
  loc_17F7528:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7530:               var_1A0 = CVar(CLng(0)) 'Long
  loc_17F753A:               var_144 = CVar(CStr(var_86)) 'String
  loc_17F7541:               LateIdCallSt
  loc_17F756C:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7574:               var_1A0 = CVar(CLng(1)) 'Long
  loc_17F757E:               var_144 = CVar(CStr(arg_10)) 'String
  loc_17F7585:               LateIdCallSt
  loc_17F759D:               If (var_DA = 0) Then
  loc_17F75A4:                 Set var_178 = Me.FGCat
  loc_17F75B9:                 var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_17F75C1:                 var_1D4 = CVar(CLng(2)) 'Long
  loc_17F75F1:                 var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17F75F8:                 LateIdCallSt
  loc_17F7615:               Else
  loc_17F762C:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_17F7660:                 var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_17F7677:                 unk_59EE7B.Execute CStr(var_154 & "')"), var_18C, -1
  loc_17F7682:                 Set var_E0 = var_178
  loc_17F76B6:                 If (var_E0.RecordCount > 0) Then
  loc_17F76D2:                   var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F76DA:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_17F770A:                   var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17F7711:                   LateIdCallSt
  loc_17F772B:                 End If
  loc_17F772B:               End If
  loc_17F7744:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F774C:               var_1D4 = CVar(CLng(3)) 'Long
  loc_17F777C:               var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17F7783:               LateIdCallSt
  loc_17F77B6:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F77BE:               var_1A0 = CVar(CLng(4)) 'Long
  loc_17F77CC:               var_144 = CVar(CStr((var_A8 + arg_18))) 'String
  loc_17F77D3:               LateIdCallSt
  loc_17F77FE:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7806:               var_1D4 = CVar(CLng(5)) 'Long
  loc_17F7836:               var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17F783D:               LateIdCallSt
  loc_17F7870:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7882:               var_144 = CVar(CStr(var_D0)) 'String
  loc_17F7889:               LateIdCallSt
  loc_17F78A5:               var_144 = Me.FGCat.Rows
  loc_17F78B4:               var_134 = CVar((CLng(var_144) - 1)) 'Long
  loc_17F78C4:               var_100 = "Sundry"
  loc_17F78E9:               var_154 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_100)), CVar(CLng(7)), "')", var_124, var_144, CVar(CLng(6)), var_100)) 'String
  loc_17F78F0:               LateIdCallSt
  loc_17F7908:             End If
  loc_17F7921:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7929:             var_1A0 = CVar(CLng(6)) 'Long
  loc_17F794E:             var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_17F7977:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F797F:             var_1A0 = CVar(CLng(6)) 'Long
  loc_17F799A:             var_1FC = Val(CStr(var_124.TextMatrix)))
  loc_17F79A4:             var_94 = (var_94 + var_1FC)
  loc_17F79BB:             var_B0 = (var_B0 + var_D0)
  loc_17F79C1:             var_B8 = var_D0
  loc_17F79C4:           End If
  loc_17F79C4:         End If
  loc_17F79C7:       Else
  loc_17F79D2:         If (var_164 = "On Running Total") Then
  loc_17F79FB:           var_144 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_17F7A15:           If (var_144 = "No") Then
  loc_17F7A53:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_17F7A66:           Else
  loc_17F7AC2:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_17F7AC7:             var_D0 = var_94
  loc_17F7ADB:           End If
  loc_17F7B01:           Proc_6_39_E7D3A0(var_144, CVar(var_8C.Fields.Item("Rate")), var_D0, var_1FC, var_1A0)
  loc_17F7B1B:           If (var_144 > 0) Then
  loc_17F7B25:             If (var_D0 > CDbl(0)) Then
  loc_17F7B41:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7B49:               var_1A0 = CVar(CLng(0)) 'Long
  loc_17F7B53:               var_144 = CVar(CStr(var_86)) 'String
  loc_17F7B5A:               LateIdCallSt
  loc_17F7B85:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7B8D:               var_1A0 = CVar(CLng(1)) 'Long
  loc_17F7B97:               var_144 = CVar(CStr(arg_10)) 'String
  loc_17F7B9E:               LateIdCallSt
  loc_17F7BB6:               If (var_DA = 0) Then
  loc_17F7BBD:                 Set var_178 = Me.FGCat
  loc_17F7BD2:                 var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_17F7BDA:                 var_1D4 = CVar(CLng(2)) 'Long
  loc_17F7C0A:                 var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17F7C11:                 LateIdCallSt
  loc_17F7C2E:               Else
  loc_17F7C45:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_17F7C79:                 var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_17F7C90:                 unk_59EE7B.Execute CStr(var_154 & "')"), var_18C, -1
  loc_17F7C9B:                 Set var_E0 = var_178
  loc_17F7CCF:                 If (var_E0.RecordCount > 0) Then
  loc_17F7CEB:                   var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7CF3:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_17F7D23:                   var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17F7D2A:                   LateIdCallSt
  loc_17F7D44:                 End If
  loc_17F7D44:               End If
  loc_17F7D5D:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7D65:               var_1D4 = CVar(CLng(3)) 'Long
  loc_17F7D95:               var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17F7D9C:               LateIdCallSt
  loc_17F7DCF:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7DD7:               var_1A0 = CVar(CLng(4)) 'Long
  loc_17F7DE1:               var_144 = CVar(CStr(var_B0)) 'String
  loc_17F7DE8:               LateIdCallSt
  loc_17F7E13:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7E1B:               var_1D4 = CVar(CLng(5)) 'Long
  loc_17F7E4B:               var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17F7E52:               LateIdCallSt
  loc_17F7E85:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7E8D:               var_1A0 = CVar(CLng(6)) 'Long
  loc_17F7E97:               var_144 = CVar(CStr(var_D0)) 'String
  loc_17F7E9E:               LateIdCallSt
  loc_17F7EC9:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7ED1:               var_1D4 = CVar(CLng(7)) 'Long
  loc_17F7F01:               var_154 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_17F7F08:               LateIdCallSt
  loc_17F7F22:             End If
  loc_17F7F3B:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7F43:             var_1A0 = CVar(CLng(6)) 'Long
  loc_17F7F68:             var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_17F7F91:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F7F99:             var_1A0 = CVar(CLng(6)) 'Long
  loc_17F7FBE:             var_94 = (var_94 + Val(CStr(var_124.TextMatrix))))
  loc_17F7FD5:             var_B0 = (var_B0 + var_D0)
  loc_17F7FDB:             var_B8 = var_D0
  loc_17F7FDE:           End If
  loc_17F7FE1:         Else
  loc_17F7FEC:           If (var_164 = "On Prev. Tax Amt") Then
  loc_17F802F:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_17F806D:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_17F8080:             Else
  loc_17F80DC:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_17F80E1:               var_D0 = var_94
  loc_17F80F5:             End If
  loc_17F80FC:             If (var_D0 > CDbl(0)) Then
  loc_17F8118:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F8120:               var_1A0 = CVar(CLng(0)) 'Long
  loc_17F812A:               var_144 = CVar(CStr(var_86)) 'String
  loc_17F8131:               LateIdCallSt
  loc_17F815C:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F8164:               var_1A0 = CVar(CLng(1)) 'Long
  loc_17F816E:               var_144 = CVar(CStr(arg_10)) 'String
  loc_17F8175:               LateIdCallSt
  loc_17F818D:               If (var_DA = 0) Then
  loc_17F8194:                 Set var_178 = Me.FGCat
  loc_17F81A9:                 var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_17F81B1:                 var_1D4 = CVar(CLng(2)) 'Long
  loc_17F81E1:                 var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17F81E8:                 LateIdCallSt
  loc_17F8205:               Else
  loc_17F821C:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_17F8250:                 var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_17F8267:                 unk_59EE7B.Execute CStr(var_154 & "')"), var_18C, -1
  loc_17F8272:                 Set var_E0 = var_178
  loc_17F82A6:                 If (var_E0.RecordCount > 0) Then
  loc_17F82C2:                   var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F82CA:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_17F82FA:                   var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17F8301:                   LateIdCallSt
  loc_17F831B:                 End If
  loc_17F831B:               End If
  loc_17F8334:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F833C:               var_1D4 = CVar(CLng(3)) 'Long
  loc_17F836C:               var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17F8373:               LateIdCallSt
  loc_17F83A6:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F83AE:               var_1A0 = CVar(CLng(4)) 'Long
  loc_17F83B8:               var_144 = CVar(CStr(var_B8)) 'String
  loc_17F83BF:               LateIdCallSt
  loc_17F83EA:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F83F2:               var_1D4 = CVar(CLng(5)) 'Long
  loc_17F8422:               var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17F8429:               LateIdCallSt
  loc_17F845C:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F8464:               var_1A0 = CVar(CLng(6)) 'Long
  loc_17F846E:               var_144 = CVar(CStr(var_D0)) 'String
  loc_17F8475:               LateIdCallSt
  loc_17F84A0:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F84A8:               var_1D4 = CVar(CLng(7)) 'Long
  loc_17F84D8:               var_154 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_17F84DF:               LateIdCallSt
  loc_17F84F9:             End If
  loc_17F8512:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F851A:             var_1A0 = CVar(CLng(6)) 'Long
  loc_17F853F:             var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_17F8568:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F8570:             var_1A0 = CVar(CLng(6)) 'Long
  loc_17F858B:             var_1FC = Val(CStr(var_124.TextMatrix)))
  loc_17F8595:             var_94 = (var_94 + var_1FC)
  loc_17F85AC:             var_B0 = (var_B0 + var_D0)
  loc_17F85B2:             var_B8 = var_D0
  loc_17F85B8:           Else
  loc_17F85DE:             var_144 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_17F85F8:             If (var_144 = "No") Then
  loc_17F863A:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_18)) / CDbl(&H64))
  loc_17F864D:             Else
  loc_17F86AD:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_18)) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8)
  loc_17F86B2:               var_D0 = var_B0
  loc_17F86C6:             End If
  loc_17F86C9:             var_100 = "Limit"
  loc_17F86EC:             Proc_6_39_E7D3A0(var_144, CVar(var_8C.Fields.Item(var_100)), var_D0, var_94, var_1FC)
  loc_17F8703:             var_1A0 = "Rate"
  loc_17F8726:             Proc_6_39_E7D3A0(var_18C, CVar(var_8C.Fields.Item(var_1A0)), (var_144 <= CVar(var_94)), var_1A0)
  loc_17F8750:             If CBool(var_100 And (var_18C > 0)) Then
  loc_17F875A:               If (var_D0 > CDbl(0)) Then
  loc_17F8776:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F877E:                 var_1A0 = CVar(CLng(0)) 'Long
  loc_17F8788:                 var_144 = CVar(CStr(var_86)) 'String
  loc_17F878F:                 LateIdCallSt
  loc_17F87BA:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F87C2:                 var_1A0 = CVar(CLng(1)) 'Long
  loc_17F87CC:                 var_144 = CVar(CStr(arg_10)) 'String
  loc_17F87D3:                 LateIdCallSt
  loc_17F87EB:                 If (var_DA = 0) Then
  loc_17F87F2:                   Set var_178 = Me.FGCat
  loc_17F8807:                   var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_17F880F:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_17F883F:                   var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17F8846:                   LateIdCallSt
  loc_17F8863:                 Else
  loc_17F887A:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_17F88AE:                   var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_17F88C5:                   unk_59EE7B.Execute CStr(var_154 & "')"), var_18C, -1
  loc_17F88D0:                   Set var_E0 = var_178
  loc_17F8904:                   If (var_E0.RecordCount > 0) Then
  loc_17F8920:                     var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F8928:                     var_1D4 = CVar(CLng(2)) 'Long
  loc_17F8958:                     var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17F895F:                     LateIdCallSt
  loc_17F8979:                   End If
  loc_17F8979:                 End If
  loc_17F8992:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F899A:                 var_1D4 = CVar(CLng(3)) 'Long
  loc_17F89CA:                 var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17F89D1:                 LateIdCallSt
  loc_17F8A04:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F8A0C:                 var_1A0 = CVar(CLng(4)) 'Long
  loc_17F8A1A:                 var_144 = CVar(CStr((var_A8 + arg_18))) 'String
  loc_17F8A21:                 LateIdCallSt
  loc_17F8A4C:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F8A54:                 var_1D4 = CVar(CLng(5)) 'Long
  loc_17F8A84:                 var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17F8A8B:                 LateIdCallSt
  loc_17F8ABE:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F8AD0:                 var_144 = CVar(CStr(var_D0)) 'String
  loc_17F8AD7:                 LateIdCallSt
  loc_17F8AF3:                 var_144 = Me.FGCat.Rows
  loc_17F8B02:                 var_134 = CVar((CLng(var_144) - 1)) 'Long
  loc_17F8B12:                 var_100 = "Sundry"
  loc_17F8B37:                 var_154 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_100)), CVar(CLng(7)), "')", var_124, var_144, CVar(CLng(6)), var_100)) 'String
  loc_17F8B3E:                 LateIdCallSt
  loc_17F8B56:               End If
  loc_17F8B6F:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F8B77:               var_1A0 = CVar(CLng(6)) 'Long
  loc_17F8B9C:               var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_17F8BC5:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17F8BCD:               var_1A0 = CVar(CLng(6)) 'Long
  loc_17F8BF2:               var_94 = (var_94 + Val(CStr(var_124.TextMatrix))))
  loc_17F8C09:               var_B0 = (var_B0 + var_D0)
  loc_17F8C0F:               var_B8 = var_D0
  loc_17F8C12:             End If
  loc_17F8C12:           End If
  loc_17F8C12:         End If
  loc_17F8C12:       End If
  loc_17F8C12:     End If
  loc_17F8C18:     var_86 = (var_86 + 1)
  loc_17F8C1D:     Set var_124 = Nothing 
  loc_17F8C25:     var_100 = CVar(CLng(arg_10)) 'Long
  loc_17F8C2D:     var_1A0 = CVar(CLng(7)) 'Long
  loc_17F8C37:     var_110 = CVar(CStr(var_9C)) 'String
  loc_17F8C3F:     Set var_114 = Me.FGrid
  loc_17F8C45:     LateIdCallSt
  loc_17F8C56:     var_8C.MoveNext
  loc_17F8C5B:     GoTo loc_17F6B8E
  loc_17F8C5E:   End If
  loc_17F8C63:   Set var_8C = Nothing
  loc_17F8C6B:   Set var_C4 = Nothing
  loc_17F8C73:   Set var_C0 = Nothing
  loc_17F8C7B:   Set var_D8 = Nothing
  loc_17F8C83:   Set var_E0 = Nothing
  loc_17F8C86: End If
  loc_17F8C86: Exit Sub
End Sub

Public Sub Proc_124_101_18C64B4
  'Data Table: 59EE5C
  Dim unk_59EE7B As Connection15
  Dim var_94 As Recordset15
  Dim var_C8 As String
  Dim var_C0 As Fields15
  Dim var_BC As Variant
  Dim var_D4 As TextBox
  Dim var_CC As Variant
  Dim var_D8 As String
  Dim var_DC As String
  Dim var_9A As Integer
  Dim var_E0 As String
  Dim var_E4 As String
  Dim var_8C As Recordset15
  Dim var_104 As Variant
  Dim var_11C As TextBox
  Dim var_1AC As Variant
  Dim var_124 As TextBox
  Dim var_128 As Fields15
  Dim var_114 As Variant
  Dim var_14C As Variant
  Dim var_154 As Variant
  Dim var_160 As TextBox
  Dim var_158 As String
  Dim var_168 As String
  Dim var_188 As Variant
  Dim var_12C As Variant
  Dim var_130 As Fields15
  Dim var_1F0 As TextBox
  Dim var_164 As String
  Dim var_198 As Variant
  Dim var_15C As Variant
  Dim var_98 As Recordset15
  Dim var_134 As Field20
  Dim var_148 As Fields15
  Dim var_150 As Fields15
  Dim var_F4 As Variant
  loc_18C3CA6: unk_59EE7B.Execute "Select * from Enviro", var_BC, -1
  loc_18C3CB1: Set var_94 = var_C0
  loc_18C3CCE: If (var_94.RecordCount > 0) Then
  loc_18C3CE6:   If (global_56 = MemVar_1F95070 & "BANQ") Then
  loc_18C3D1F:     Set var_D0 = Me.Txt
  loc_18C3D25:     Call 0.Method_Proc_124_101_18C64B40 (CInt(3), var_D4)
  loc_18C3D2D:     var_D4.Tag = Proc_6_38_E69628(CVar(var_94.Fields.Item("IndoorPartyAC")))
  loc_18C3D69:     var_88 = Proc_6_38_E69628(CVar(var_94.Fields.Item("IndoorSaleAC")))
  loc_18C3D75:   Else
  loc_18C3D9D:     var_C8 = Proc_6_38_E69628(CVar(var_94.Fields.Item("OutDoorPartyAC")))
  loc_18C3DAB:     Set var_D0 = Me.Txt
  loc_18C3DB1:     Call 0.Method_Proc_124_101_18C64B40 (CInt(3), var_D4)
  loc_18C3DB9:     var_D4.Tag = var_C8
  loc_18C3DE4:     var_CC = var_94.Fields.Item("OutDoorSaleAC")
  loc_18C3DF5:     var_88 = Proc_6_38_E69628(CVar(var_CC))
  loc_18C3DFE:   End If
  loc_18C3DFE: End If
  loc_18C3E22: Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_C8, "Delete From Ledger where DocID='")
  loc_18C3E2A: var_BC = var_CC.Text
  loc_18C3E33: var_D8 = -1 & var_C8
  loc_18C3E43: unk_59EE7B.Execute var_D8 & "'", var_D0, Me.Txt
  loc_18C3E5F: var_9A = 1
  loc_18C3E91: Set var_C0 = Me.Txt
  loc_18C3E97: Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_D8, "select Sum(TotalPERCOVER) as RevAmt from HallSale1 Where RestCode='" & global_56 & "' And DocID='")
  loc_18C3E9F: var_BC = var_CC.Text
  loc_18C3EA8: var_E0 = -1 & var_D8
  loc_18C3EB8: unk_59EE7B.Execute var_E0 & "'", var_D0, var_9A
  loc_18C3EC3: Set var_8C = var_D0
  loc_18C3EF3: If (var_8C.RecordCount > 0) Then
  loc_18C3F0D:   var_CC = var_8C.Fields.Item("RevAmt")
  loc_18C3F15:   var_BC = CVar(var_CC) 'Address
  loc_18C3F1C:   Proc_6_39_E7D3A0(var_F4)
  loc_18C3F36:   If (var_F4 > 0) Then
  loc_18C3F47:     Set var_C0 = Me.Txt
  loc_18C3F4D:     Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC)
  loc_18C3F68:     Set var_D0 = Me.Txt
  loc_18C3F6E:     Call 0.Method_Proc_124_101_18C64B40 (CInt(0), var_D4)
  loc_18C3F76:     var_C8 = var_D4.Tag
  loc_18C3F89:     Set var_118 = Me.Txt
  loc_18C3F8F:     Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_11C)
  loc_18C3FA9:     var_1B0 = Me.LblVPrefix.Caption
  loc_18C3FBC:     Set var_120 = Me.Txt
  loc_18C3FC2:     Call 0.Method_Proc_124_101_18C64B40 (CInt(2), var_124)
  loc_18C3FE6:     var_12C = var_8C.Fields.Item("RevAmt")
  loc_18C3FF5:     Proc_6_39_E7D3A0(var_F4, CVar(var_12C))
  loc_18C4005:     Set var_130 = Me.Txt
  loc_18C400B:     Call 0.Method_Proc_124_101_18C64B40 (CInt(3), var_134)
  loc_18C402D:     Set var_148 = Me.Txt
  loc_18C4033:     Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_14C)
  loc_18C404E:     Set var_150 = Me.Txt
  loc_18C4054:     Call 0.Method_Proc_124_101_18C64B40 (CInt(&H11), var_154)
  loc_18C406F:     Set var_15C = Me.Txt
  loc_18C4075:     Call 0.Method_Proc_124_101_18C64B40 (CInt(&H12), var_160)
  loc_18C4085:     var_198 = Now
  loc_18C408F:     var_1EC = 0
  loc_18C409A:     var_1E8 = 0
  loc_18C40A5:     var_1E4 = 0
  loc_18C40AE:     var_1E0 = "A"
  loc_18C40E9:     var_188 = Trim(CVar(var_134)) & CVar("As Per Bill No :" & var_14C.Text & " No of Paxs :" & var_154.Text & " @ " & var_160.Text) 
  loc_18C40F5:     var_1D0 = vbNullString
  loc_18C4139:     Proc_6_140_12DA4E8(MemVar_1F95044, var_CC.Text, var_9A, var_C8, CLng(var_11C.Text), var_1B0, MemVar_1F95070, var_124.Text)
  loc_18C419E:   Else
  loc_18C41B5:     var_CC = var_8C.Fields.Item("RevAmt")
  loc_18C41C4:     Proc_6_39_E7D3A0(var_F4, CVar(var_CC), var_88, CDbl(0), CSng(var_F4))
  loc_18C41DE:     If (var_F4 < 0) Then
  loc_18C41EF:       Set var_C0 = Me.Txt
  loc_18C41F5:       Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_1A0, var_1D0)
  loc_18C41FD:       CStr(var_188) = var_CC.Text
  loc_18C4210:       Set var_D0 = Me.Txt
  loc_18C4216:       Call 0.Method_Proc_124_101_18C64B40 (CInt(0), var_D4, var_C8)
  loc_18C421E:       MemVar_1F950C8 = var_D4.Tag
  loc_18C4231:       Set var_118 = Me.Txt
  loc_18C4237:       Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_11C, var_1B0)
  loc_18C423F:       CDate(var_198) = var_11C.Text
  loc_18C4264:       Set var_120 = Me.Txt
  loc_18C426A:       Call 0.Method_Proc_124_101_18C64B40 (CInt(2), var_124)
  loc_18C4285:       Set var_128 = Me.Txt
  loc_18C428B:       Call 0.Method_Proc_124_101_18C64B40 (CInt(3), var_12C)
  loc_18C4293:       var_D8 = var_12C.Tag
  loc_18C42B7:       var_BC = CVar(var_8C.Fields.Item("RevAmt")) 'Address
  loc_18C42BE:       Proc_6_39_E7D3A0(var_F4, var_BC)
  loc_18C42CE:       Set var_148 = Me.Txt
  loc_18C42D4:       Call 0.Method_Proc_124_101_18C64B40 (CInt(3), var_14C)
  loc_18C42F6:       Set var_150 = Me.Txt
  loc_18C42FC:       Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_154)
  loc_18C4317:       Set var_15C = Me.Txt
  loc_18C431D:       Call 0.Method_Proc_124_101_18C64B40 (CInt(&H11), var_160)
  loc_18C4338:       Set var_1AC = Me.Txt
  loc_18C433E:       Call 0.Method_Proc_124_101_18C64B40 (CInt(&H12), var_1F0)
  loc_18C434E:       var_200 = Now
  loc_18C4358:       var_20C = 0
  loc_18C4363:       var_208 = 0
  loc_18C436E:       var_1EC = 0
  loc_18C4377:       var_1E8 = "A"
  loc_18C4393:       var_E0 = "As Per Bill No :" & var_154.Text
  loc_18C43B2:       var_198 = Trim(CVar(var_14C)) & CVar(var_E0 & " No of Paxs :" & var_160.Text & " @ " & var_1F0.Text) 
  loc_18C43BE:       var_1E0 = vbNullString
  loc_18C43C7:       var_114 = Abs(var_F4)
  loc_18C440A:       Proc_6_140_12DA4E8(MemVar_1F95044, var_1A0, var_9A, var_C8, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F95070, var_124.Text)
  loc_18C4472:     End If
  loc_18C4472:   End If
  loc_18C4478:   var_9A = (var_9A + 1)
  loc_18C447B: End If
  loc_18C4492: var_C8 = "SELECT Sum(SunTransaction.Amt) AS RevAmt,max(SUNCODE) as SundryCode FROM (SunTransaction  LEFT JOIN RevMast ON SunTransaction.RevCode = RevMast.Code) LEFT JOIN Depart ON SunTransaction.RestCode = Depart.Code Where RestCode='" & global_56
  loc_18C4499: var_D8 = var_C8 & "'And SUNCODE='"
  loc_18C44B8: Set var_C0 = Me.Txt
  loc_18C44BE: Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_E0, var_D8 & MemVar_1F95070 & "NET' and DocID='", var_BC, -1, var_D0)
  loc_18C44C6: var_9A = var_CC.Text
  loc_18C44DF: unk_59EE7B.Execute var_D8 & var_E0 & "' Group By RestCode,Revcode Order by RestCode", CDbl(0), CSng(var_114)
  loc_18C44EA: Set var_8C = var_D0
  loc_18C451E: If (var_8C.RecordCount > 0) Then
  loc_18C4538:   var_CC = var_8C.Fields.Item("RevAmt")
  loc_18C4547:   Proc_6_39_E7D3A0(var_F4, CVar(var_CC), var_1E0)
  loc_18C4561:   If (var_F4 > 0) Then
  loc_18C4572:     Set var_C0 = Me.Txt
  loc_18C4578:     Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_E0)
  loc_18C4580:     CStr(var_198) = var_CC.Text
  loc_18C4593:     Set var_D0 = Me.Txt
  loc_18C4599:     Call 0.Method_Proc_124_101_18C64B40 (CInt(0), var_D4)
  loc_18C45A1:     var_C8 = var_D4.Tag
  loc_18C45B4:     Set var_118 = Me.Txt
  loc_18C45BA:     Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_11C)
  loc_18C45C2:     var_164 = var_11C.Text
  loc_18C45E7:     Set var_120 = Me.Txt
  loc_18C45ED:     Call 0.Method_Proc_124_101_18C64B40 (CInt(2), var_124)
  loc_18C4608:     Set var_128 = Me.Txt
  loc_18C460E:     Call 0.Method_Proc_124_101_18C64B40 (CInt(3), var_12C)
  loc_18C4616:     var_D8 = var_12C.Tag
  loc_18C4641:     Proc_6_39_E7D3A0(var_F4, CVar(var_8C.Fields.Item("RevAmt")))
  loc_18C4651:     Set var_148 = Me.Txt
  loc_18C4657:     Call 0.Method_Proc_124_101_18C64B40 (CInt(3), var_14C)
  loc_18C4679:     Set var_150 = Me.Txt
  loc_18C467F:     Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_154)
  loc_18C468F:     var_198 = Now
  loc_18C4699:     var_1D4 = 0
  loc_18C46A4:     var_1D0 = 0
  loc_18C46AF:     var_1BC = 0
  loc_18C46B8:     var_1B8 = "A"
  loc_18C46D7:     var_188 = Trim(CVar(var_14C)) & CVar("As Per Bill No :" & var_154.Text) 
  loc_18C46E3:     var_1B0 = vbNullString
  loc_18C472B:     Proc_6_140_12DA4E8(MemVar_1F95044, var_E0, var_9A, var_C8, CLng(var_164), Me.LblVPrefix.Caption, MemVar_1F95070, var_124.Text)
  loc_18C4782:   Else
  loc_18C4799:     var_CC = var_8C.Fields.Item("RevAmt")
  loc_18C47A8:     Proc_6_39_E7D3A0(var_F4, CVar(var_CC), var_D8, CSng(var_F4), CDbl(0))
  loc_18C47C2:     If (var_F4 < 0) Then
  loc_18C47D3:       Set var_C0 = Me.Txt
  loc_18C47D9:       Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_E0, var_1B0)
  loc_18C47E1:       CStr(var_188) = var_CC.Text
  loc_18C47F4:       Set var_D0 = Me.Txt
  loc_18C47FA:       Call 0.Method_Proc_124_101_18C64B40 (CInt(0), var_D4, var_C8)
  loc_18C4802:       MemVar_1F950C8 = var_D4.Tag
  loc_18C4815:       Set var_118 = Me.Txt
  loc_18C481B:       Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_11C, var_164)
  loc_18C4823:       CDate(var_198) = var_11C.Text
  loc_18C4848:       Set var_120 = Me.Txt
  loc_18C484E:       Call 0.Method_Proc_124_101_18C64B40 (CInt(2), var_124)
  loc_18C4869:       Set var_128 = Me.Txt
  loc_18C486F:       Call 0.Method_Proc_124_101_18C64B40 (CInt(3), var_12C)
  loc_18C4877:       var_D8 = var_12C.Tag
  loc_18C489B:       var_BC = CVar(var_8C.Fields.Item("RevAmt")) 'Address
  loc_18C48A2:       Proc_6_39_E7D3A0(var_F4, var_BC)
  loc_18C48B2:       Set var_148 = Me.Txt
  loc_18C48B8:       Call 0.Method_Proc_124_101_18C64B40 (CInt(3), var_14C)
  loc_18C48DA:       Set var_150 = Me.Txt
  loc_18C48E0:       Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_154)
  loc_18C48F0:       var_200 = Now
  loc_18C48FA:       var_1D4 = 0
  loc_18C4905:       var_1D0 = 0
  loc_18C4910:       var_1BC = 0
  loc_18C4919:       var_1B8 = "A"
  loc_18C4938:       var_198 = Trim(CVar(var_14C)) & CVar(" As Per Bill No :" & var_154.Text) 
  loc_18C4944:       var_1B0 = vbNullString
  loc_18C494D:       var_114 = Abs(var_F4)
  loc_18C4990:       Proc_6_140_12DA4E8(MemVar_1F95044, var_E0, var_9A, var_C8, CLng(var_164), Me.LblVPrefix.Caption, MemVar_1F95070, var_124.Text)
  loc_18C49E4:     End If
  loc_18C49E4:   End If
  loc_18C49EA:   var_9A = (var_9A + 1)
  loc_18C49ED: End If
  loc_18C4A01: var_C8 = "SELECT Sum(S.Amt) AS RevAmt, S.RevCode, Max(S.Vdate) AS VDate, Max(R.Name) AS Revenue, Max(S.SunCode) AS SundryCode, Max(R.ACCode) AS ACode,Max(ST.CalcSign) as CSign " & " FROM ((SunTransaction as S LEFT JOIN RevMast AS R ON S.RevCode = R.Code) LEFT JOIN Depart AS D ON S.RestCode = D.Code) LEFT JOIN SundryType AS ST ON S.SunAppDate = ST.AppDate AND ST.V_Type=S.Vtype and s.SunCode=st.sundrycode "
  loc_18C4A08: var_DC = var_C8 & " WHERE (((S.RevCode) Is Not Null And (S.RevCode)<>'') AND ((S.DocId)='"
  loc_18C4A19: Set var_C0 = Me.Txt
  loc_18C4A1F: Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_D8, var_DC, var_BC, -1, var_D0)
  loc_18C4A27: var_9A = var_CC.Text
  loc_18C4A47: unk_59EE7B.Execute var_D8 & var_D8 & "')) " & " GROUP BY S.RevCode, S.RestCode ORDER BY S.RestCode", CDbl(0), CSng(var_114)
  loc_18C4A52: Set var_8C = var_D0
  loc_18C4A84: If (var_8C.RecordCount > 0) Then
  loc_18C4A87:   ' Referenced from: 18C544F
  loc_18C4A96:   If Not(var_8C.EOF) Then
  loc_18C4ABF:     Proc_6_39_E7D3A0(var_F4, CVar(var_8C.Fields.Item("RevAmt")), var_1B0)
  loc_18C4AD9:     If (var_F4 > 0) Then
  loc_18C4AF6:       var_CC = var_8C.Fields.Item("CSign")
  loc_18C4B06:       var_104 = "-"
  loc_18C4B18:       If (var_CC.Value = 0) Then
  loc_18C4B29:         Set var_C0 = Me.Txt
  loc_18C4B2F:         Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_DC)
  loc_18C4B37:         CStr(var_198) = var_CC.Text
  loc_18C4B4A:         Set var_D0 = Me.Txt
  loc_18C4B50:         Call 0.Method_Proc_124_101_18C64B40 (CInt(0), var_D4)
  loc_18C4B58:         var_C8 = var_D4.Tag
  loc_18C4B6B:         Set var_118 = Me.Txt
  loc_18C4B71:         Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_11C)
  loc_18C4B79:         var_158 = var_11C.Text
  loc_18C4B9E:         Set var_120 = Me.Txt
  loc_18C4BA4:         Call 0.Method_Proc_124_101_18C64B40 (CInt(2), var_124)
  loc_18C4BD3:         var_200 = var_8C.Fields.Item("ACode").Value
  loc_18C4BFE:         Proc_6_39_E7D3A0(var_F4, CVar(var_8C.Fields.Item("RevAmt")))
  loc_18C4C0E:         Set var_148 = Me.Txt
  loc_18C4C14:         Call 0.Method_Proc_124_101_18C64B40 (CInt(3), var_14C)
  loc_18C4C36:         Set var_150 = Me.Txt
  loc_18C4C3C:         Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_154)
  loc_18C4C4C:         var_198 = Now
  loc_18C4C56:         var_1D0 = 0
  loc_18C4C61:         var_1BC = 0
  loc_18C4C6C:         var_1B8 = 0
  loc_18C4C75:         var_1B4 = "A"
  loc_18C4C94:         var_188 = Trim(CVar(var_14C)) & CVar(" As Per Bill No :" & var_154.Text) 
  loc_18C4CA0:         var_1A8 = vbNullString
  loc_18C4CE9:         Proc_6_140_12DA4E8(MemVar_1F95044, var_DC, var_9A, var_C8, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F95070, var_124.Text)
  loc_18C4D42:       Else
  loc_18C4D50:         Set var_C0 = Me.Txt
  loc_18C4D56:         Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_DC, CStr(var_200), CSng(var_F4), CDbl(0))
  loc_18C4D5E:         var_1A8 = var_CC.Text
  loc_18C4D71:         Set var_D0 = Me.Txt
  loc_18C4D77:         Call 0.Method_Proc_124_101_18C64B40 (CInt(0), var_D4, var_C8, CStr(var_188))
  loc_18C4D7F:         MemVar_1F950C8 = var_D4.Tag
  loc_18C4D92:         Set var_118 = Me.Txt
  loc_18C4D98:         Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_11C, var_158)
  loc_18C4DA0:         CDate(var_198) = var_11C.Text
  loc_18C4DC5:         Set var_120 = Me.Txt
  loc_18C4DCB:         Call 0.Method_Proc_124_101_18C64B40 (CInt(2), var_124)
  loc_18C4DFA:         var_200 = var_8C.Fields.Item("ACode").Value
  loc_18C4E25:         Proc_6_39_E7D3A0(var_F4, CVar(var_8C.Fields.Item("RevAmt")))
  loc_18C4E35:         Set var_148 = Me.Txt
  loc_18C4E3B:         Call 0.Method_Proc_124_101_18C64B40 (CInt(3), var_14C)
  loc_18C4E5D:         Set var_150 = Me.Txt
  loc_18C4E63:         Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_154)
  loc_18C4E73:         var_198 = Now
  loc_18C4E7D:         var_1D0 = 0
  loc_18C4E88:         var_1BC = 0
  loc_18C4E93:         var_1B8 = 0
  loc_18C4E9C:         var_1B4 = "A"
  loc_18C4EBB:         var_188 = Trim(CVar(var_14C)) & CVar(" As Per Bill No :" & var_154.Text) 
  loc_18C4EC7:         var_1A8 = vbNullString
  loc_18C4F10:         Proc_6_140_12DA4E8(MemVar_1F95044, var_DC, var_9A, var_C8, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F95070, var_124.Text)
  loc_18C4F66:       End If
  loc_18C4F69:     Else
  loc_18C4F8F:       Proc_6_39_E7D3A0(var_F4, CVar(var_8C.Fields.Item("RevAmt")), CStr(var_200), CDbl(0), CSng(var_F4))
  loc_18C4FA9:       If (var_F4 < 0) Then
  loc_18C4FC6:         var_CC = var_8C.Fields.Item("CSign")
  loc_18C4FD6:         var_104 = "-"
  loc_18C4FE8:         If (var_CC.Value = 0) Then
  loc_18C4FF9:           Set var_C0 = Me.Txt
  loc_18C4FFF:           Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_DC, var_1A8)
  loc_18C5007:           CStr(var_188) = var_CC.Text
  loc_18C501A:           Set var_D0 = Me.Txt
  loc_18C5020:           Call 0.Method_Proc_124_101_18C64B40 (CInt(0), var_D4, var_C8)
  loc_18C5028:           MemVar_1F950C8 = var_D4.Tag
  loc_18C503B:           Set var_118 = Me.Txt
  loc_18C5041:           Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_11C, var_158)
  loc_18C5049:           CDate(var_198) = var_11C.Text
  loc_18C506E:           Set var_120 = Me.Txt
  loc_18C5074:           Call 0.Method_Proc_124_101_18C64B40 (CInt(2), var_124)
  loc_18C50A3:           var_220 = var_8C.Fields.Item("ACode").Value
  loc_18C50CE:           Proc_6_39_E7D3A0(var_F4, CVar(var_8C.Fields.Item("RevAmt")))
  loc_18C50DE:           Set var_148 = Me.Txt
  loc_18C50E4:           Call 0.Method_Proc_124_101_18C64B40 (CInt(3), var_14C)
  loc_18C5106:           Set var_150 = Me.Txt
  loc_18C510C:           Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_154)
  loc_18C511C:           var_200 = Now
  loc_18C5126:           var_1D0 = 0
  loc_18C5131:           var_1BC = 0
  loc_18C513C:           var_1B8 = 0
  loc_18C5145:           var_1B4 = "A"
  loc_18C5164:           var_198 = Trim(CVar(var_14C)) & CVar("As Per Bill No :" & var_154.Text) 
  loc_18C5170:           var_1A8 = vbNullString
  loc_18C5179:           var_114 = Abs(var_F4)
  loc_18C51BD:           Proc_6_140_12DA4E8(MemVar_1F95044, var_DC, var_9A, var_C8, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F95070, var_124.Text)
  loc_18C5216:         Else
  loc_18C5224:           Set var_C0 = Me.Txt
  loc_18C522A:           Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_DC, CStr(var_220), CDbl(0), CSng(var_114))
  loc_18C5232:           var_1A8 = var_CC.Text
  loc_18C5245:           Set var_D0 = Me.Txt
  loc_18C524B:           Call 0.Method_Proc_124_101_18C64B40 (CInt(0), var_D4, var_C8, CStr(var_198))
  loc_18C5253:           MemVar_1F950C8 = var_D4.Tag
  loc_18C5266:           Set var_118 = Me.Txt
  loc_18C526C:           Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_11C, var_158)
  loc_18C5274:           CDate(var_200) = var_11C.Text
  loc_18C5299:           Set var_120 = Me.Txt
  loc_18C529F:           Call 0.Method_Proc_124_101_18C64B40 (CInt(2), var_124)
  loc_18C52CE:           var_220 = var_8C.Fields.Item("ACode").Value
  loc_18C52F2:           var_BC = CVar(var_8C.Fields.Item("RevAmt")) 'Address
  loc_18C52F9:           Proc_6_39_E7D3A0(var_F4, var_BC)
  loc_18C5309:           Set var_148 = Me.Txt
  loc_18C530F:           Call 0.Method_Proc_124_101_18C64B40 (CInt(3), var_14C)
  loc_18C5331:           Set var_150 = Me.Txt
  loc_18C5337:           Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_154)
  loc_18C5347:           var_200 = Now
  loc_18C5351:           var_1D0 = 0
  loc_18C535C:           var_1BC = 0
  loc_18C5367:           var_1B8 = 0
  loc_18C5370:           var_1B4 = "A"
  loc_18C538F:           var_198 = Trim(CVar(var_14C)) & CVar(" As Per Bill No :" & var_154.Text) 
  loc_18C539B:           var_1A8 = vbNullString
  loc_18C53AB:           var_114 = Abs(var_F4)
  loc_18C53E8:           Proc_6_140_12DA4E8(MemVar_1F95044, var_DC, var_9A, var_C8, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F95070, var_124.Text)
  loc_18C543E:         End If
  loc_18C543E:       End If
  loc_18C543E:     End If
  loc_18C5444:     var_9A = (var_9A + 1)
  loc_18C544A:     var_8C.MoveNext
  loc_18C544F:     GoTo loc_18C4A87
  loc_18C5452:   End If
  loc_18C5452: End If
  loc_18C5466: var_D8 = "SELECT Sum(P.aMOUNT) as Amount, Max(IC.AcName) as AccName " & " FROM HALLSTOCK AS P LEFT JOIN (ItemMast AS I LEFT JOIN ItemCatMast AS IC ON I.ItemCatCode = IC.Code) ON P.Item = I.Code Where DocID='"
  loc_18C5477: Set var_C0 = Me.Txt
  loc_18C547D: Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_C8, var_D8, var_BC, -1, var_D0)
  loc_18C5485: var_9A = var_CC.Text
  loc_18C548E: var_DC = CStr(var_220) & var_C8
  loc_18C549E: unk_59EE7B.Execute var_DC & "' Group By IC.Code ", CSng(var_114), CDbl(0)
  loc_18C54A9: Set var_8C = var_D0
  loc_18C54D7: If (var_8C.RecordCount > 0) Then
  loc_18C54DA:   ' Referenced from: 18C59D2
  loc_18C54E9:   If Not(var_8C.EOF) Then
  loc_18C5503:     var_CC = var_8C.Fields.Item("Amount")
  loc_18C5512:     Proc_6_39_E7D3A0(var_F4, CVar(var_CC), var_1A8)
  loc_18C552C:     If (var_F4 > 0) Then
  loc_18C553D:       Set var_C0 = Me.Txt
  loc_18C5543:       Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_DC)
  loc_18C554B:       CStr(var_198) = var_CC.Text
  loc_18C555E:       Set var_D0 = Me.Txt
  loc_18C5564:       Call 0.Method_Proc_124_101_18C64B40 (CInt(0), var_D4)
  loc_18C556C:       var_C8 = var_D4.Tag
  loc_18C557F:       Set var_118 = Me.Txt
  loc_18C5585:       Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_11C)
  loc_18C558D:       var_158 = var_11C.Text
  loc_18C55B2:       Set var_120 = Me.Txt
  loc_18C55B8:       Call 0.Method_Proc_124_101_18C64B40 (CInt(2), var_124)
  loc_18C55E7:       var_200 = var_8C.Fields.Item("ACCNAME").Value
  loc_18C5612:       Proc_6_39_E7D3A0(var_F4, CVar(var_8C.Fields.Item("Amount")))
  loc_18C5622:       Set var_148 = Me.Txt
  loc_18C5628:       Call 0.Method_Proc_124_101_18C64B40 (CInt(3), var_14C)
  loc_18C564A:       Set var_150 = Me.Txt
  loc_18C5650:       Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_154)
  loc_18C5660:       var_198 = Now
  loc_18C566A:       var_1D0 = 0
  loc_18C5675:       var_1BC = 0
  loc_18C5680:       var_1B8 = 0
  loc_18C5689:       var_1B4 = "A"
  loc_18C56A8:       var_188 = Trim(CVar(var_14C)) & CVar(" As Per Bill No :" & var_154.Text) 
  loc_18C56B4:       var_1A8 = vbNullString
  loc_18C56FD:       Proc_6_140_12DA4E8(MemVar_1F95044, var_DC, var_9A, var_C8, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F95070, var_124.Text)
  loc_18C5756:     Else
  loc_18C576D:       var_CC = var_8C.Fields.Item("Amount")
  loc_18C577C:       Proc_6_39_E7D3A0(var_F4, CVar(var_CC), CStr(var_200), CDbl(0), CSng(var_F4))
  loc_18C5796:       If (var_F4 < 0) Then
  loc_18C57A7:         Set var_C0 = Me.Txt
  loc_18C57AD:         Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_DC, var_1A8)
  loc_18C57B5:         CStr(var_188) = var_CC.Text
  loc_18C57C8:         Set var_D0 = Me.Txt
  loc_18C57CE:         Call 0.Method_Proc_124_101_18C64B40 (CInt(0), var_D4, var_C8)
  loc_18C57D6:         MemVar_1F950C8 = var_D4.Tag
  loc_18C57E9:         Set var_118 = Me.Txt
  loc_18C57EF:         Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_11C, var_158)
  loc_18C57F7:         CDate(var_198) = var_11C.Text
  loc_18C581C:         Set var_120 = Me.Txt
  loc_18C5822:         Call 0.Method_Proc_124_101_18C64B40 (CInt(2), var_124)
  loc_18C5851:         var_220 = var_8C.Fields.Item("ACCNAME").Value
  loc_18C5875:         var_BC = CVar(var_8C.Fields.Item("Amount")) 'Address
  loc_18C587C:         Proc_6_39_E7D3A0(var_F4, var_BC)
  loc_18C588C:         Set var_148 = Me.Txt
  loc_18C5892:         Call 0.Method_Proc_124_101_18C64B40 (CInt(3), var_14C)
  loc_18C58B4:         Set var_150 = Me.Txt
  loc_18C58BA:         Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_154)
  loc_18C58CA:         var_200 = Now
  loc_18C58D4:         var_1D0 = 0
  loc_18C58DF:         var_1BC = 0
  loc_18C58EA:         var_1B8 = 0
  loc_18C58F3:         var_1B4 = "A"
  loc_18C5912:         var_198 = Trim(CVar(var_14C)) & CVar(" As Per Bill No :" & var_154.Text) 
  loc_18C591E:         var_1A8 = vbNullString
  loc_18C592E:         var_114 = Abs(var_F4)
  loc_18C596B:         Proc_6_140_12DA4E8(MemVar_1F95044, var_DC, var_9A, var_C8, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F95070, var_124.Text)
  loc_18C59C1:       End If
  loc_18C59C1:     End If
  loc_18C59C7:     var_9A = (var_9A + 1)
  loc_18C59CD:     var_8C.MoveNext
  loc_18C59D2:     GoTo loc_18C54DA
  loc_18C59D5:   End If
  loc_18C59D5: End If
  loc_18C59F3: Set var_C0 = Me.Txt
  loc_18C59F9: Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_C8, "Select (AmtCr-AmtDr) as CreditAmt,PayCode,Comments,Accode,CardNo,RestCode,PaychargeH.PayType,revmast.name as RevenueName,revmast.PayableAc,PaychargeH.ChqNo as ChqNo,PaychargeH.ChqDate as ChqDate from PaychargeH Left Join RevMast on Revmast.Code=PayChargeH.PayCode where PayChargeH.Docid In (SELECT Distinct PH.DocId FROM PayChargeH PH Left Join HallSale1 HS On PH.ContraDocid=HS.BookDocId WHERE PH.VType In ('AD','AR') AND HS.DocId ='", var_BC, -1, var_D0)
  loc_18C5A01: var_9A = var_CC.Text
  loc_18C5A0A: var_D8 = CStr(var_220) & var_C8
  loc_18C5A30: var_164 = var_D8 & "') And PaychargeH.SITE_CODE='" & MemVar_1F95070 & "' AND RestCode='" & global_56 & "' And IsNull(revmast.PayableAc,'')<>''"
  loc_18C5A39: unk_59EE7B.Execute var_164, CSng(var_114), CDbl(0)
  loc_18C5A44: Set var_98 = var_D0
  loc_18C5A64: ' Referenced from: 18C64B0
  loc_18C5A73: If Not(var_98.EOF) Then
  loc_18C5A90:   var_CC = var_98.Fields.Item("CreditAmt")
  loc_18C5AB2:   If (var_CC.Value < 0) Then
  loc_18C5ABB:     var_9A = (var_9A + 1)
  loc_18C5ACC:     Set var_C0 = Me.Txt
  loc_18C5AD2:     Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_D8, var_9A)
  loc_18C5ADA:     var_1A8 = var_CC.Text
  loc_18C5AED:     Set var_D0 = Me.Txt
  loc_18C5AF3:     Call 0.Method_Proc_124_101_18C64B40 (CInt(0), var_D4, var_C8)
  loc_18C5AFB:     CStr(var_198) = var_D4.Tag
  loc_18C5B0E:     Set var_118 = Me.Txt
  loc_18C5B14:     Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_11C)
  loc_18C5B1C:     var_E4 = var_11C.Text
  loc_18C5B41:     Set var_120 = Me.Txt
  loc_18C5B47:     Call 0.Method_Proc_124_101_18C64B40 (CInt(2), var_124)
  loc_18C5B4F:     var_168 = var_124.Text
  loc_18C5C20:     var_1D0 = Proc_6_38_E69628(CVar(var_98.Fields.Item("ChqNo")))
  loc_18C5C4B:     var_1D4 = Proc_6_38_E69628(CVar(var_98.Fields.Item("ChqDate")))
  loc_18C5C53:     var_1BC = 0
  loc_18C5C6A:     var_1B0 = "A"
  loc_18C5CD3:     Proc_6_140_12DA4E8(MemVar_1F95044, var_D8, var_9A, var_C8, CLng(var_E4), Me.LblVPrefix.Caption, MemVar_1F95070, var_168)
  loc_18C5D37:     var_9A = (var_9A + 1)
  loc_18C5D48:     Set var_C0 = Me.Txt
  loc_18C5D4E:     Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_D8, var_9A, CStr(var_98.Fields.Item("PayableAc").Value), CSng(Abs(var_98.Fields.Item("CreditAmt").Value)))
  loc_18C5D56:     CDbl(0) = var_CC.Text
  loc_18C5D69:     Set var_D0 = Me.Txt
  loc_18C5D6F:     Call 0.Method_Proc_124_101_18C64B40 (CInt(0), var_D4, var_C8, CStr(var_98.Fields.Item("AcCode").Value))
  loc_18C5D77:     CStr(var_98.Fields.Item("Comments").Value) = var_D4.Tag
  loc_18C5D8A:     Set var_118 = Me.Txt
  loc_18C5D90:     Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_11C, var_E4)
  loc_18C5D98:     MemVar_1F950C8 = var_11C.Text
  loc_18C5DBD:     Set var_120 = Me.Txt
  loc_18C5DC3:     Call 0.Method_Proc_124_101_18C64B40 (CInt(2), var_124, var_168)
  loc_18C5DCB:     CDate(Now) = var_124.Text
  loc_18C5DF2:     var_188 = var_98.Fields.Item("AcCode").Value
  loc_18C5E40:     var_198 = var_98.Fields.Item("PayableAc").Value
  loc_18C5E67:     var_200 = var_98.Fields.Item("Comments").Value
  loc_18C5E6F:     var_114 = Now
  loc_18C5E9C:     var_1D0 = Proc_6_38_E69628(CVar(var_98.Fields.Item("ChqNo")))
  loc_18C5EC7:     var_1D4 = Proc_6_38_E69628(CVar(var_98.Fields.Item("ChqDate")))
  loc_18C5ECF:     var_1BC = 0
  loc_18C5EE6:     var_1B0 = "A"
  loc_18C5F0B:     var_F4 = Abs(var_98.Fields.Item("CreditAmt").Value)
  loc_18C5F4F:     Proc_6_140_12DA4E8(MemVar_1F95044, var_D8, var_9A, var_C8, CLng(var_E4), Me.LblVPrefix.Caption, MemVar_1F95070, var_168)
  loc_18C5FB0:   Else
  loc_18C5FB6:     var_9A = (var_9A + 1)
  loc_18C5FC7:     Set var_C0 = Me.Txt
  loc_18C5FCD:     Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_D8, var_9A, CStr(var_188), CDbl(0))
  loc_18C5FD5:     CSng(var_F4) = var_CC.Text
  loc_18C5FE8:     Set var_D0 = Me.Txt
  loc_18C5FEE:     Call 0.Method_Proc_124_101_18C64B40 (CInt(0), var_D4, var_C8, CStr(var_198))
  loc_18C5FF6:     CStr(var_200) = var_D4.Tag
  loc_18C6009:     Set var_118 = Me.Txt
  loc_18C600F:     Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_11C, var_E4)
  loc_18C6017:     MemVar_1F950C8 = var_11C.Text
  loc_18C603C:     Set var_120 = Me.Txt
  loc_18C6042:     Call 0.Method_Proc_124_101_18C64B40 (CInt(2), var_124, var_168)
  loc_18C604A:     CDate(var_114) = var_124.Text
  loc_18C611B:     var_1D0 = Proc_6_38_E69628(CVar(var_98.Fields.Item("ChqNo")))
  loc_18C6146:     var_1D4 = Proc_6_38_E69628(CVar(var_98.Fields.Item("ChqDate")))
  loc_18C614E:     var_1BC = 0
  loc_18C6165:     var_1B0 = "A"
  loc_18C61CE:     Proc_6_140_12DA4E8(MemVar_1F95044, var_D8, var_9A, var_C8, CLng(var_E4), Me.LblVPrefix.Caption, MemVar_1F95070, var_168)
  loc_18C6232:     var_9A = (var_9A + 1)
  loc_18C6243:     Set var_C0 = Me.Txt
  loc_18C6249:     Call 0.Method_Proc_124_101_18C64B40 (CInt(4), var_CC, var_D8, var_9A, CStr(var_98.Fields.Item("AcCode").Value), CSng(Abs(var_98.Fields.Item("CreditAmt").Value)))
  loc_18C6251:     CDbl(0) = var_CC.Text
  loc_18C6264:     Set var_D0 = Me.Txt
  loc_18C626A:     Call 0.Method_Proc_124_101_18C64B40 (CInt(0), var_D4, var_C8, CStr(var_98.Fields.Item("PayableAc").Value))
  loc_18C6272:     CStr(var_98.Fields.Item("Comments").Value) = var_D4.Tag
  loc_18C6285:     Set var_118 = Me.Txt
  loc_18C628B:     Call 0.Method_Proc_124_101_18C64B40 (CInt(1), var_11C, var_E4)
  loc_18C6293:     MemVar_1F950C8 = var_11C.Text
  loc_18C62B8:     Set var_120 = Me.Txt
  loc_18C62BE:     Call 0.Method_Proc_124_101_18C64B40 (CInt(2), var_124, var_168)
  loc_18C62C6:     CDate(Now) = var_124.Text
  loc_18C62ED:     var_188 = var_98.Fields.Item("PayableAc").Value
  loc_18C633B:     var_198 = var_98.Fields.Item("AcCode").Value
  loc_18C6362:     var_200 = var_98.Fields.Item("Comments").Value
  loc_18C636A:     var_114 = Now
  loc_18C6397:     var_1D0 = Proc_6_38_E69628(CVar(var_98.Fields.Item("ChqNo")))
  loc_18C63C2:     var_1D4 = Proc_6_38_E69628(CVar(var_98.Fields.Item("ChqDate")))
  loc_18C63CA:     var_1BC = 0
  loc_18C63E1:     var_1B0 = "A"
  loc_18C6406:     var_F4 = Abs(var_98.Fields.Item("CreditAmt").Value)
  loc_18C644A:     Proc_6_140_12DA4E8(MemVar_1F95044, var_D8, var_9A, var_C8, CLng(var_E4), Me.LblVPrefix.Caption, MemVar_1F95070, var_168)
  loc_18C64A8:   End If
  loc_18C64AB:   var_98.MoveNext
  loc_18C64B0:   GoTo loc_18C5A64
  loc_18C64B3: End If
  loc_18C64B3: Exit Sub
End Sub

Public Sub Proc_124_102_1B7F3C4
  'Data Table: 59EE5C
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_59F0E8 As Connection15
  Dim var_EE As Integer
  Dim var_238 As Recordset15
  Dim var_B4 As Fields
  Dim unk_59EE7B As Connection15
  Dim var_24C As Variant
  Dim var_250 As String
  Dim var_260 As String
  Dim var_258 As Variant
  Dim var_E8 As Recordset15
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_248 As Variant
  Dim var_280 As Variant
  Dim var_2A0 As Variant
  Dim var_2B0 As Variant
  Dim var_2C0 As Variant
  Dim var_2D0 As Variant
  Dim var_2E0 As Variant
  Dim var_2F0 As Variant
  Dim var_290 As Variant
  Dim var_120 As Recordset15
  Dim var_EC As Recordset15
  Dim var_254 As Variant
  Dim var_144 As Double
  Dim var_100 As Recordset15
  Dim var_2F8 As Recordset15
  Dim var_14C As Double
  Dim var_2FC As Recordset15
  Dim var_118 As Recordset15
  Dim MemVar_1F953C4 As String
  Dim MemVar_1F953C8 As String
  Dim MemVar_1F953CC As String
  Dim Me As Recordset15
  Dim var_184 As Recordset15
  Dim var_32C As Variant
  Dim var_35C As String
  Dim var_36C As Variant
  Dim var_37C As String
  Dim var_26C As Variant
  Dim var_B6 As Integer
  Dim var_124 As Recordset15
  Dim var_188 As Recordset15
  loc_1B7A488: unk_59F0E8.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F95070 & "FOM'", var_B0, -1
  loc_1B7A493: Set var_88 = var_B4
  loc_1B7A4A3: On Error Goto loc_1B7F3A8
  loc_1B7A4A8: var_EE = 1
  loc_1B7A4B1: Set var_238 = var_234 
  loc_1B7A4D9: var_238.Fields.Append "mLine", &HC8, &HA
  loc_1B7A505: var_238.Fields.Append "SNo", &HC8, &HA
  loc_1B7A531: var_238.Fields.Append "HSNCode", &HC8, &H1E
  loc_1B7A55D: var_238.Fields.Append "Item", &HC8, &H32
  loc_1B7A589: var_238.Fields.Append "ItemRemark", &HC8, &H4B
  loc_1B7A5B5: var_238.Fields.Append "Qty", &HC8, &HA
  loc_1B7A5E1: var_238.Fields.Append "Rate", &HC8, &HA
  loc_1B7A60D: var_238.Fields.Append "Amount", &HC8, &HA
  loc_1B7A639: var_238.Fields.Append "Mark", &HC8, &HA
  loc_1B7A65D: var_B4 = var_238.Fields
  loc_1B7A665: var_B4.Append "QRImage", &HCD, &H3E8
  loc_1B7A675: var_238.CursorType = 3
  loc_1B7A682: var_238.LockType = 3
  loc_1B7A6A1: var_238.Open var_A0, var_248, -1
  loc_1B7A6A8: Set var_238 = Nothing 
  loc_1B7A6C0: var_8C = "Select * from Enviro where LOgSite_code='" & MemVar_1F95078
  loc_1B7A6D0: unk_59EE7B.Execute var_8C & "'", var_B0, -1
  loc_1B7A6DB: Set var_120 = var_B4
  loc_1B7A709: Set var_B4 = Me.Txt
  loc_1B7A70F: Call 0.Method_Proc_124_102_1B7F3C40 (CInt(4), var_24C, var_8C, "select max(Q.name) as TaxName,Q.code,Q.TaxPer,sum(Q.TaxAmt) as TaxAmt,sum(Q.BaseValue) as TaxableAmt from (select Revmast.name,Revmast.code,TaxPer,TaxAmt,BaseValue from HallSale2 left join revmast on revmast.code=HallSale2.Taxcode where HallSale2.DocID='", var_B0, -1, var_26C)
  loc_1B7A717: var_B4 = var_24C.Text
  loc_1B7A720: var_90 = -1 & var_8C
  loc_1B7A72E: var_260 = var_8C & "'" & "' Union All " & "select Revmast.name,Revmast.code,Svalue,Amount,BaseAmount from SunTranH left join revmast on revmast.code=SunTranH.RevCode Where revmast.FieldType='T' And SValue>0 And Amount>0 And DocId='"
  loc_1B7A73F: Set var_254 = Me.Txt
  loc_1B7A745: Call 0.Method_Proc_124_102_1B7F3C40 (CInt(4), var_258, var_25C, var_260, -1)
  loc_1B7A74D: &H20 = var_258.Text
  loc_1B7A766: unk_59EE7B.Execute var_A0 & var_25C & "')Q  group by Q.code,Q.TaxPer Order by Q.TaxPer", &H20, var_A0
  loc_1B7A771: Set var_188 = var_26C
  loc_1B7A7B3: Set var_B4 = Me.Txt
  loc_1B7A7B9: Call 0.Method_Proc_124_102_1B7F3C40 (CInt(4), var_24C, var_8C, "SELECT S.*, I.Name AS ItemName, I.CommodityCode AS HSNCode, I.Type, ItemCatMast.CatType FROM (HallStock AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code And S.RestCode = I.RestCode) LEFT JOIN ItemCatMast ON I.ItemCatCode = ItemCatMast.Code Where S.DocId='")
  loc_1B7A7C1: var_B0 = var_24C.Text
  loc_1B7A7CA: var_90 = -1 & var_8C
  loc_1B7A7DA: unk_59EE7B.Execute var_8C & "'" & "' AND QTYIss>0", var_254, 
  loc_1B7A7E5: Set var_100 = var_254
  loc_1B7A81B: Set var_B4 = Me.Txt
  loc_1B7A821: Call 0.Method_Proc_124_102_1B7F3C40 (CInt(7), var_24C, var_8C, "Select HB.*, SG.Name AS CompanyName, SG.Add1 AS CompanyAdd1, SG.Add2 AS CompanyAdd2, SG.Add3 AS CompanyAdd3,C.CityName,ST.ShortName StateCode,ST.Name State,SG.GSTIN,SG.PANNo CompPANNo,SG.PIN CompPIN,F.Name As FunctionName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode left join FunctionType F On HB.Func_Name=F.Code Left Join City C on SG.CityCode=C.CityCode Left Join State ST on C.State=ST.Code WHERE HB.DocId='")
  loc_1B7A829: var_B0 = var_24C.Tag
  loc_1B7A832: var_90 = -1 & var_8C
  loc_1B7A842: unk_59EE7B.Execute var_8C & "'" & "'", var_254, 
  loc_1B7A84D: Set var_E8 = var_254
  loc_1B7A883: Set var_B4 = Me.Txt
  loc_1B7A889: Call 0.Method_Proc_124_102_1B7F3C40 (CInt(7), var_24C, var_8C, "SELECT * FROM Hallsale1 WHERE BookDocId='")
  loc_1B7A891: var_B0 = var_24C.Tag
  loc_1B7A89A: var_90 = -1 & var_8C
  loc_1B7A8AA: unk_59EE7B.Execute var_8C & "'" & "'", var_254, 
  loc_1B7A8B5: Set var_EC = var_254
  loc_1B7A8EB: Set var_B4 = Me.Txt
  loc_1B7A8F1: Call 0.Method_Proc_124_102_1B7F3C40 (CInt(7), var_24C, var_8C, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='")
  loc_1B7A8F9: var_B0 = var_24C.Tag
  loc_1B7A902: var_90 = -1 & var_8C
  loc_1B7A912: unk_59EE7B.Execute var_8C & "'" & "'", var_254, 
  loc_1B7A91D: Set var_124 = var_254
  loc_1B7A949: If (var_E8.RecordCount <= 0) Then
  loc_1B7A94C:   Exit Sub
  loc_1B7A94D: End If
  loc_1B7A984: var_158 = CStr(Mid(CVar(var_E8.Fields.Item("RestCode")), 2, var_280))
  loc_1B7A9AB: var_280 = ("UPTT No. :" + Trim(MemVar_1F95148))
  loc_1B7A9B0: var_18C = CStr(var_280)
  loc_1B7A9D2: var_280 = ("CST No.  :" + Trim(MemVar_1F9514C))
  loc_1B7A9D7: var_190 = CStr(var_280)
  loc_1B7A9E4: var_1AC = MemVar_1F95130
  loc_1B7A9FF: var_280 = (Trim(MemVar_1F95134) + " ")
  loc_1B7AA16: var_2B0 = (var_280 + Trim(MemVar_1F9513C))
  loc_1B7AA1F: var_2D0 = (var_2B0 + " ")
  loc_1B7AA29: var_2F0 = (var_2D0 + CVar(MemVar_1F9515C))
  loc_1B7AA2E: var_1A8 = CStr(var_2F0)
  loc_1B7AA55: var_1BC = "Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144
  loc_1B7AA77: var_280 = ("SUBJECT TO " + Trim(MemVar_1F9513C))
  loc_1B7AA80: var_290 = (var_280 + " JURISDITION")
  loc_1B7AA85: var_10C = CStr(Trim(MemVar_1F9513C))
  loc_1B7AAB9: var_1A0 = Proc_6_38_E69628(CVar(var_120.Fields.Item("Bill_Header")))
  loc_1B7AAF9: var_15C = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_E8.Fields.Item("FunctionName"))))))
  loc_1B7AB5A: var_D8 = CStr(Format(CVar(Proc_6_38_E69628(CVar(var_E8.Fields.Item("VDate")))), "dd/MMM/yyyy"))
  loc_1B7AB9C: var_290 = Trim(CVar(Proc_6_38_E69628(CVar(var_E8.Fields.Item("PanNo")), 1)))
  loc_1B7ABA5: var_160 = CStr(var_290)
  loc_1B7ABCB: var_24C = var_EC.Fields.Item("Party")
  loc_1B7ABF0: var_19C = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_24C)), &H4B)
  loc_1B7AC0E: Set var_B4 = Me.Txt
  loc_1B7AC14: Call 0.Method_Proc_124_102_1B7F3C40 (CInt(1), var_24C)
  loc_1B7AC24: var_194 = var_24C.Text
  loc_1B7AC7F: Proc_6_39_E7D3A0(var_290, CVar(var_EC.Fields.Item("VNo")))
  loc_1B7AC93: var_FC = Proc_96_43_F99D14(Proc_6_38_E69628(CVar(var_EC.Fields.Item("vType"))), var_290)
  loc_1B7ACE4: var_1F0 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_E8.Fields.Item("Add1"))))))
  loc_1B7AD2A: var_1F4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_E8.Fields.Item("Add2"))))))
  loc_1B7AD70: var_1F8 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_E8.Fields.Item("City"))))))
  loc_1B7ADB6: var_1FC = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_E8.Fields.Item("PinCode"))))))
  loc_1B7ADED: var_1B0 = Proc_6_38_E69628(CVar(var_E8.Fields.Item("CompanyAdd1")))
  loc_1B7AE1E: var_1B4 = Proc_6_38_E69628(CVar(var_E8.Fields.Item("CompanyAdd2")))
  loc_1B7AE4F: var_1B8 = Proc_6_38_E69628(CVar(var_E8.Fields.Item("CompanyAdd3")))
  loc_1B7AE80: var_128 = Proc_6_38_E69628(CVar(var_E8.Fields.Item("CityName")))
  loc_1B7AEB1: var_12C = Proc_6_38_E69628(CVar(var_E8.Fields.Item("StateCode")))
  loc_1B7AEE2: var_130 = Proc_6_38_E69628(CVar(var_E8.Fields.Item("State")))
  loc_1B7AF13: var_134 = Proc_6_38_E69628(CVar(var_E8.Fields.Item("GSTIN")))
  loc_1B7AF44: var_138 = Proc_6_38_E69628(CVar(var_E8.Fields.Item("CompPanNo")))
  loc_1B7AF64: var_24C = var_E8.Fields.Item("CompPIN")
  loc_1B7AF75: var_13C = Proc_6_38_E69628(CVar(var_24C))
  loc_1B7AF89: Set var_B4 = Me.Txt
  loc_1B7AF8F: Call 0.Method_Proc_124_102_1B7F3C40 (CInt(2), var_24C)
  loc_1B7AF9E: var_A0 = "dd-MMM-yyyy"
  loc_1B7AFCB: var_198 = Proc_6_45_EADFB8(CStr(Format(CVar(var_24C), "CompPIN")), &HB, 1)
  loc_1B7AFF6: var_24C = var_EC.Fields.Item("U_Name")
  loc_1B7B007: var_110 = Proc_6_38_E69628(CVar(var_24C), 1)
  loc_1B7B01B: Set var_B4 = Me.Txt
  loc_1B7B021: Call 0.Method_Proc_124_102_1B7F3C40 (CInt(&H19), var_24C)
  loc_1B7B030: var_280 = Trim(CVar(var_24C))
  loc_1B7B039: var_17C = CStr(var_280)
  loc_1B7B05A: If (var_EC.RecordCount > 0) Then
  loc_1B7B083:   Proc_6_39_E7D3A0(var_280, CVar(var_EC.Fields.Item("Advance")))
  loc_1B7B0AC:   var_164 = CStr(Format(var_280, "0.00"))
  loc_1B7B102:   If (CDbl(Val(CStr(var_EC.Fields.Item("NoofPax").Value))) > CDbl(0)) Then
  loc_1B7B130:     Proc_6_39_E7D3A0(var_280, CVar(var_EC.Fields.Item("TotalPerCover")), 1)
  loc_1B7B141:     var_144 = Val(CStr(var_280))
  loc_1B7B1AC:     var_280 = "Pax " & var_EC.Fields.Item("NoofPax").Value 
  loc_1B7B1CA:     var_168 = Proc_6_45_EADFB8(CStr(var_280 & " @ " & var_EC.Fields.Item("RatePerPax").Value), &H1D, var_144)
  loc_1B7B20E:     Proc_6_39_E7D3A0(var_280, CVar(var_EC.Fields.Item("NoofPax")), 1)
  loc_1B7B217:     var_16C = CStr(var_280)
  loc_1B7B23B:     var_24C = var_EC.Fields.Item("RatePerPax")
  loc_1B7B24A:     Proc_6_39_E7D3A0(var_280, CVar(var_24C))
  loc_1B7B273:     var_170 = CStr(Format(var_280, "0.00"))
  loc_1B7B28E:     var_248 = "0.00"
  loc_1B7B29C:     var_A0 = var_144
  loc_1B7B2AD:     var_174 = CStr(Format(var_A0, var_248))
  loc_1B7B2C2:     Set var_B4 = Me.Txt
  loc_1B7B2C8:     Call 0.Method_Proc_124_102_1B7F3C40 (CInt(&H18), var_24C, 1, 1)
  loc_1B7B2D7:     var_280 = Trim(CVar(var_24C))
  loc_1B7B2F5:     If (CStr(var_280) = vbNullString) Then
  loc_1B7B2FB:       var_178 = var_168
  loc_1B7B2FE:     End If
  loc_1B7B301:   Else
  loc_1B7B303:     var_EE = 0
  loc_1B7B306:   End If
  loc_1B7B306: End If
  loc_1B7B31A: If (var_100.RecordCount = 0) Then
  loc_1B7B323:   Set var_2F8 = var_234 
  loc_1B7B332:   var_2F8.AddNew var_A0, var_248
  loc_1B7B34D:   Set var_24C = var_234 
  loc_1B7B35D:   Proc_142_0_F977BC(Me.QrImage, var_24C, "QrImage", var_EE)
  loc_1B7B368:   Set var_234 = var_24C
  loc_1B7B382:   var_2F8.Update var_A0, var_248
  loc_1B7B389:   Set var_2F8 = Nothing 
  loc_1B7B38D:   ' Referenced from: 1B7B7B3
  loc_1B7B38D: End If
  loc_1B7B39C: If Not(var_100.EOF) Then
  loc_1B7B3A5:   var_EE = (var_EE + 1)
  loc_1B7B3AB:   var_A0 = "Amount"
  loc_1B7B3CE:   Proc_6_39_E7D3A0(var_280, CVar(var_100.Fields.Item(var_A0)), var_EE, 1)
  loc_1B7B3DF:   var_14C = Val(CStr(var_280))
  loc_1B7B3F6:   var_144 = (var_144 + var_14C)
  loc_1B7B3FF:   Set var_2FC = var_234 
  loc_1B7B40E:   var_2FC.AddNew var_A0, var_248
  loc_1B7B438:   var_2FC.Fields.Item("mLine").Value = vbNullString
  loc_1B7B473:   var_2FC.Fields.Item("SNo").Value = CVar(CStr(var_EE) & ".")
  loc_1B7B4D0:   var_2FC.Fields.Item("HSNCode").Value = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("HSNCode")), var_144, var_14C))
  loc_1B7B530:   var_2FC.Fields.Item("Item").Value = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("ItemName")), 1))
  loc_1B7B572:   var_280 = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("Remarks")), "(")) 'String
  loc_1B7B580:   var_2B0 = (1 + Trim(var_280))
  loc_1B7B589:   var_2D0 = (Format(var_280, "0.00") + ")")
  loc_1B7B5AD:   var_2FC.Fields.Item("ItemRemark").Value = var_280 & " @ " & var_EC.Fields.Item("RatePerPax").Value
  loc_1B7B5EE:   Proc_6_39_E7D3A0(var_280, CVar(var_100.Fields.Item("QtyIss")))
  loc_1B7B616:   var_2FC.Fields.Item("qty").Value = var_280
  loc_1B7B651:   Proc_6_39_E7D3A0(var_280, CVar(var_100.Fields.Item("Rate")))
  loc_1B7B671:   var_2B0 = Format(var_280, "0.00")
  loc_1B7B699:   var_2FC.Fields.Item("Rate").Value = var_2B0
  loc_1B7B6FA:   var_2FC.Fields.Item("Amount").Value = Format(var_14C, "0.00")
  loc_1B7B70D:   var_248 = "*"
  loc_1B7B716:   var_A0 = "Mark"
  loc_1B7B732:   var_2FC.Fields.Item(var_A0).Value = var_248
  loc_1B7B752:   If (var_100.AbsolutePosition = 1) Then
  loc_1B7B759:     Set var_254 = Me.QrImage
  loc_1B7B76B:     Set var_24C = var_234 
  loc_1B7B77B:     Proc_142_0_F977BC(var_254, var_24C, "QrImage", 1)
  loc_1B7B786:     Set var_234 = var_24C
  loc_1B7B795:   End If
  loc_1B7B7A0:   var_2FC.Update var_A0, var_248
  loc_1B7B7A7:   Set var_2FC = Nothing 
  loc_1B7B7AE:   var_100.MoveNext
  loc_1B7B7B3:   GoTo loc_1B7B38D
  loc_1B7B7B6: End If
  loc_1B7B7BE: var_100.Requery -1
  loc_1B7B7C6: var_EC.MoveFirst
  loc_1B7B7D8: var_248 = "SELECT ST.SNo,ST.SunCode,ST.DispName,ST.Svalue,ST.Amt AS Amount,SM.Name AS SName FROM SunTransaction AS ST INNER JOIN SundryMast SM ON ST.SunCode=SM.Code WHERE DocId='"
  loc_1B7B81E: unk_59EE7B.Execute CStr(var_248 & var_EC.Fields.Item("DocID").Value & "' Order by SNo"), var_2B0, -1
  loc_1B7B829: Set var_118 = var_254
  loc_1B7B849: var_270 = var_118.RecordCount
  loc_1B7B857: If (var_270 > 0) Then
  loc_1B7B85D:   var_118.MoveFirst
  loc_1B7B862:   ' Referenced from: 1B7C039
  loc_1B7B871:   If Not(var_118.EOF) Then
  loc_1B7B8C8:     If (Ucase(Trim(CVar(var_118.Fields.Item("SunCode")))) = CVar(MemVar_1F95078 & "NET")) Then
  loc_1B7B8FB:       var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B7B904:       var_218 = CStr(var_280)
  loc_1B7B937:       Proc_6_39_E7D3A0(var_280, CVar(var_118.Fields.Item("Amount")), var_254, 1)
  loc_1B7B960:       var_1E0 = CStr(Format(var_280, "0.00"))
  loc_1B7B974:       var_118.MoveNext
  loc_1B7B98A:       If (var_118.EOF = &HFF) Then
  loc_1B7B98D:         GoTo loc_1B7C03C
  loc_1B7B990:       End If
  loc_1B7B990:     End If
  loc_1B7B9BA:     var_30C = var_118.Fields.Item("SNo").Value 'Variant
  loc_1B7B9D0:     If (var_30C = 1) Then
  loc_1B7BA03:       var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B7BA0C:       var_200 = CStr(var_280)
  loc_1B7BA3F:       Proc_6_39_E7D3A0(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B7BA68:       var_1C0 = CStr(Format(var_280, "0.00"))
  loc_1B7BA7C:     Else
  loc_1B7BA87:       If (var_30C = 2) Then
  loc_1B7BABA:         var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B7BAC3:         var_204 = CStr(var_280)
  loc_1B7BAF6:         Proc_6_39_E7D3A0(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B7BB1F:         var_1C4 = CStr(Format(var_280, "0.00"))
  loc_1B7BB33:       Else
  loc_1B7BB3E:         If (var_30C = 3) Then
  loc_1B7BB71:           var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B7BB7A:           var_210 = CStr(var_280)
  loc_1B7BBAD:           Proc_6_39_E7D3A0(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B7BBD6:           var_1D8 = CStr(Format(var_280, "0.00"))
  loc_1B7BBEA:         Else
  loc_1B7BBF5:           If (var_30C = 4) Then
  loc_1B7BC28:             var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B7BC31:             var_208 = CStr(var_280)
  loc_1B7BC64:             Proc_6_39_E7D3A0(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B7BC8D:             var_1C8 = CStr(Format(var_280, "0.00"))
  loc_1B7BCA1:           Else
  loc_1B7BCAC:             If (var_30C = 5) Then
  loc_1B7BCDF:               var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B7BCE8:               var_20C = CStr(var_280)
  loc_1B7BD1B:               Proc_6_39_E7D3A0(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B7BD44:               var_1CC = CStr(Format(var_280, "0.00"))
  loc_1B7BD58:             Else
  loc_1B7BD63:               If (var_30C = 6) Then
  loc_1B7BD96:                 var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B7BD9F:                 var_214 = CStr(var_280)
  loc_1B7BDD2:                 Proc_6_39_E7D3A0(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B7BDFB:                 var_1DC = CStr(Format(var_280, "0.00"))
  loc_1B7BE0F:               Else
  loc_1B7BE1A:                 If (var_30C = 7) Then
  loc_1B7BE4D:                   var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B7BE56:                   var_21C = CStr(var_280)
  loc_1B7BE89:                   Proc_6_39_E7D3A0(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B7BEB2:                   var_1E4 = CStr(Format(var_280, "0.00"))
  loc_1B7BEC6:                 Else
  loc_1B7BED1:                   If (var_30C = 8) Then
  loc_1B7BF04:                     var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B7BF0D:                     var_220 = CStr(var_280)
  loc_1B7BF40:                     Proc_6_39_E7D3A0(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B7BF69:                     var_1D0 = CStr(Format(var_280, "0.00"))
  loc_1B7BF7D:                   Else
  loc_1B7BF88:                     If (var_30C = 9) Then
  loc_1B7BFBB:                       var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B7BFC4:                       var_224 = CStr(var_280)
  loc_1B7BFE0:                       var_B4 = var_118.Fields
  loc_1B7BFF7:                       Proc_6_39_E7D3A0(var_280, CVar(var_B4.Item("Amount")), 1, 1)
  loc_1B7C020:                       var_1D4 = CStr(Format(var_280, "0.00"))
  loc_1B7C031:                     End If
  loc_1B7C031:                   End If
  loc_1B7C031:                 End If
  loc_1B7C031:               End If
  loc_1B7C031:             End If
  loc_1B7C031:           End If
  loc_1B7C031:         End If
  loc_1B7C031:       End If
  loc_1B7C031:     End If
  loc_1B7C034:     var_118.MoveNext
  loc_1B7C039:     GoTo loc_1B7B862
  loc_1B7C03C:     ' Referenced from: 1B7B98D
  loc_1B7C03C:   End If
  loc_1B7C03C: End If
  loc_1B7C076: var_B0 = CVar(Proc_6_43_1003B24(Abs(Val(var_1E0)), "Rs.", vbNullString, Val(var_1E0), 1)) 'String
  loc_1B7C085: var_1E8 = CStr(StrConv(var_B0, 3, 0))
  loc_1B7C0A6: var_1EC = "Regardless of charge instructions I agree to be held" & vbCrLf & "personally liable for payment of the total amount of this bill."
  loc_1B7C0C2: unk_59EE7B.Execute "Select * From FAEnviro", var_B0, -1
  loc_1B7C0CD: Set var_120 = var_B4
  loc_1B7C0E5: var_B4 = var_120.Fields
  loc_1B7C149: var_2D0 = IIf((Proc_6_38_E69628(CVar(var_B4.Item("daterfill")), var_B4, 1) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_120.Fields.Item("daterfill")), 1)))
  loc_1B7C152: MemVar_1F953C4 = CStr(var_2D0)
  loc_1B7C1E6: var_2D0 = IIf((Proc_6_38_E69628(CVar(var_120.Fields.Item("pagenofill")), MemVar_1F953C4) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_120.Fields.Item("pagenofill")), 1)))
  loc_1B7C1EF: MemVar_1F953C8 = CStr(var_2D0)
  loc_1B7C24A: var_254 = var_120.Fields
  loc_1B7C263: var_2B0 = CVar(Proc_6_38_E69628(CVar(var_254.Item("titlerfill")))) 'String
  loc_1B7C28C: MemVar_1F953CC = CStr(IIf((Proc_6_38_E69628(CVar(var_120.Fields.Item("titlerfill")), MemVar_1F953C8) = vbNullString), "M", var_2B0))
  loc_1B7C2BA: var_248 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGEH AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='"
  loc_1B7C2EC: var_280 = var_248 & Me.Fields.Item("SearchCode").Value 
  loc_1B7C303: unk_59EE7B.Execute CStr(var_280 & "' And AmtCr>0"), var_2B0, -1
  loc_1B7C30E: Set var_184 = var_254
  loc_1B7C328: ' Referenced from: 1B7C539
  loc_1B7C337: If Not(var_184.EOF) Then
  loc_1B7C373:   If (Proc_6_38_E69628(CVar(var_184.Fields.Item("CompName")), var_254) <> vbNullString) Then
  loc_1B7C39C:     Proc_6_39_E7D3A0(var_280, CVar(var_184.Fields.Item("AmtCr")))
  loc_1B7C3CE:     var_2C0 = "-"
  loc_1B7C40B:     var_36C = CVar(var_180) & CVar(Proc_6_38_E69628(CVar(var_184.Fields.Item("CompName")), 1 & Format(var_280, "0.00") & "M", 1)) & " (" 
  loc_1B7C426:     var_380 = var_184.Fields.Item("PayName")
  loc_1B7C448:     var_180 = CStr(MemVar_1F953CC & CVar(Proc_6_38_E69628(CVar(var_380), var_36C)) & "), ")
  loc_1B7C476:   Else
  loc_1B7C48D:     var_24C = var_184.Fields.Item("AmtCr")
  loc_1B7C49C:     Proc_6_39_E7D3A0(var_280, CVar(var_24C))
  loc_1B7C4E6:     var_254 = var_184.Fields
  loc_1B7C4EE:     var_258 = var_254.Item("PayName")
  loc_1B7C510:     var_180 = CStr(CVar(var_180) & CVar(Proc_6_38_E69628(CVar(var_258), 1 & Format(var_280, "0.00") & " (", 1)) & "), ")
  loc_1B7C531:   End If
  loc_1B7C534:   var_184.MoveNext
  loc_1B7C539:   GoTo loc_1B7C328
  loc_1B7C53C: End If
  loc_1B7C53F: var_A0 = var_180
  loc_1B7C54F: var_248 = var_180
  loc_1B7C567: var_2D0 = Trim(var_180)
  loc_1B7C57D: var_32C = (Len(var_2D0) - 1)
  loc_1B7C58F: var_2A0 = 0
  loc_1B7C5BC: var_180 = CStr(Left(Trim(var_A0), CLng(IIf((Len(Trim(var_248)) > var_2A0), CVar(var_258), 0))))
  loc_1B7C5D2: On Error Goto loc_1B7F3A8
  loc_1B7C5D8: var_F4 = "SaleBillHall"
  loc_1B7C5DE: var_F8 = "Sales Bill Report"
  loc_1B7C608: Set var_B4 = var_234 
  loc_1B7C60F: CreateFieldDefFile(var_B4, MemVar_1F950B4 & "\" & var_F4 & ".ttx")
  loc_1B7C63D: var_8C = "\" & var_F4
  loc_1B7C651: Call 0.Method_arg_1C (MemVar_1F950B4 & var_8C & ".RPT", var_A0, var_B4)
  loc_1B7C65C: MemVar_1F951E8 = var_B4
  loc_1B7C688: Call 0.Method_arg_64 (var_B4, CVar(var_B4), var_248)
  loc_1B7C690: Call 0.Method_arg_2C (var_2A0, &HFF)
  loc_1B7C69E: Call 0.Method_arg_150 (1)
  loc_1B7C6A5: var_B6 = 1
  loc_1B7C6AB: var_124.MoveFirst
  loc_1B7C6B0: ' Referenced from: 1B7CA74
  loc_1B7C6BF: If Not(var_124.EOF) Then
  loc_1B7C6D3:   Call 0.Method_arg_90 (var_B4, var_270, var_EE)
  loc_1B7C6DB:   Call 0.Method_arg_24 (1)
  loc_1B7C6E7:   For var_3D4 =  To CInt(var_270): var_B6 = var_3D4 'Integer
  loc_1B7C700:     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7C708:     Call 0.Method_arg_20 (var_24C)
  loc_1B7C710:     Call 0.Method_arg_30 (var_8C)
  loc_1B7C726:     var_3E4 = Ucase(CVar(var_8C)) 'Variant
  loc_1B7C75D:     If (var_3E4 = Ucase(CVar("lblVenueName" & CStr(var_B6)))) Then
  loc_1B7C7A9:       Call 0.Method_arg_90 (var_254, CLng(var_EE))
  loc_1B7C7B1:       Call 0.Method_arg_20 (var_258)
  loc_1B7C7B9:       Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_124.Fields.Item("VenueName"))) & "'")
  loc_1B7C7D6:     Else
  loc_1B7C7FF:       If (var_3E4 = Ucase(CVar("lblFromDate" & CStr(var_B6)))) Then
  loc_1B7C84B:         Call 0.Method_arg_90 (var_254, CLng(var_EE))
  loc_1B7C853:         Call 0.Method_arg_20 (var_258)
  loc_1B7C85B:         Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_124.Fields.Item("FromDate"))) & "'")
  loc_1B7C878:       Else
  loc_1B7C8A1:         If (var_3E4 = Ucase(CVar("lblFromTime" & CStr(var_B6)))) Then
  loc_1B7C8ED:           Call 0.Method_arg_90 (var_254, CLng(var_EE))
  loc_1B7C8F5:           Call 0.Method_arg_20 (var_258)
  loc_1B7C8FD:           Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_124.Fields.Item("FromTime"))) & "'")
  loc_1B7C91A:         Else
  loc_1B7C943:           If (var_3E4 = Ucase(CVar("lblToDate" & CStr(var_B6)))) Then
  loc_1B7C98F:             Call 0.Method_arg_90 (var_254, CLng(var_EE))
  loc_1B7C997:             Call 0.Method_arg_20 (var_258)
  loc_1B7C99F:             Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_124.Fields.Item("ToDate"))) & "'")
  loc_1B7C9BC:           Else
  loc_1B7C9E5:             If (var_3E4 = Ucase(CVar("lblToTime" & CStr(var_B6)))) Then
  loc_1B7CA13:               var_8C = Proc_6_38_E69628(CVar(var_124.Fields.Item("ToTime")))
  loc_1B7CA31:               Call 0.Method_arg_90 (var_254, CLng(var_EE))
  loc_1B7CA39:               Call 0.Method_arg_20 (var_258)
  loc_1B7CA41:               Call 0.Method_arg_38 ("'" & var_8C & "'")
  loc_1B7CA5B:             End If
  loc_1B7CA5B:           End If
  loc_1B7CA5B:         End If
  loc_1B7CA5B:       End If
  loc_1B7CA5B:     End If
  loc_1B7CA5E:   Next var_3D4 'Integer
  loc_1B7CA66:   var_124.MoveNext
  loc_1B7CA71:   var_B6 = (var_B6 + 1)
  loc_1B7CA74:   GoTo loc_1B7C6B0
  loc_1B7CA77: End If
  loc_1B7CA7D: var_270 = var_118.RecordCount
  loc_1B7CA8B: If (var_270 > 0) Then
  loc_1B7CA91:   var_118.MoveFirst
  loc_1B7CA96:   ' Referenced from: 1B7D211
  loc_1B7CAA5:   If Not(var_118.EOF) Then
  loc_1B7CACE:     var_280 = Trim(CVar(var_118.Fields.Item("SunCode")))
  loc_1B7CAFC:     If (Ucase(var_280) = CVar(MemVar_1F95078 & "NET")) Then
  loc_1B7CB3F:       var_B4 = var_118.Fields
  loc_1B7CB47:       var_24C = var_B4.Item("Amount")
  loc_1B7CB56:       Proc_6_39_E7D3A0(var_280, CVar(var_24C))
  loc_1B7CB7F:       var_230 = CStr(Format(var_280, "0.00"))
  loc_1B7CBA1:       Call 0.Method_arg_90 (var_B4, var_270, var_EE, 1)
  loc_1B7CBA9:       Call 0.Method_arg_24 (1, 1)
  loc_1B7CBB5:       For var_3E8 =  To CInt(var_270): var_B6 = var_3E8 'Integer
  loc_1B7CBCE:         Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7CBD6:         Call 0.Method_arg_20 (var_24C)
  loc_1B7CBDE:         Call 0.Method_arg_30 (var_8C)
  loc_1B7CBF4:         var_3F8 = Ucase(CVar(var_8C)) 'Variant
  loc_1B7CC0A:         var_B0 = "lblNetAmount"
  loc_1B7CC24:         If (var_3F8 = Ucase(var_B0)) Then
  loc_1B7CC32:           Proc_6_17_EAAE40(var_B0)
  loc_1B7CC4E:           Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7CC56:           Call 0.Method_arg_20 (CStr(var_B0))
  loc_1B7CC5E:           Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_118.Fields.Item("DispName"))))
  loc_1B7CC73:         Else
  loc_1B7CC7B:           var_B0 = "NetAmount"
  loc_1B7CC95:           If (var_3F8 = Ucase(var_B0)) Then
  loc_1B7CCA3:             Proc_6_17_EAAE40(var_B0)
  loc_1B7CCAB:             var_8C = CStr(var_B0)
  loc_1B7CCBF:             Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7CCC7:             Call 0.Method_arg_20 (var_8C)
  loc_1B7CCCF:             Call 0.Method_arg_38 (var_230)
  loc_1B7CCE1:           End If
  loc_1B7CCE1:         End If
  loc_1B7CCE4:       Next var_3E8 'Integer
  loc_1B7CCEC:     Else
  loc_1B7CD12:       var_280 = Trim(CVar(var_118.Fields.Item("SunCode")))
  loc_1B7CD40:       If (Ucase(var_280) = CVar(MemVar_1F95078 & "TOT")) Then
  loc_1B7CD83:         var_B4 = var_118.Fields
  loc_1B7CD8B:         var_24C = var_B4.Item("Amount")
  loc_1B7CD93:         var_B0 = CVar(var_24C) 'Address
  loc_1B7CD9A:         Proc_6_39_E7D3A0(var_280)
  loc_1B7CDC3:         var_230 = CStr(Format(var_280, "0.00"))
  loc_1B7CDE5:         Call 0.Method_arg_90 (var_B4, var_270, var_EE, 1)
  loc_1B7CDED:         Call 0.Method_arg_24 (1, 1)
  loc_1B7CDF9:         For var_3FC =  To CInt(var_270):   var_B0 = var_3FC 'Integer
  loc_1B7CE12:           Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7CE1A:           Call 0.Method_arg_20 (var_24C)
  loc_1B7CE22:           Call 0.Method_arg_30 (var_8C)
  loc_1B7CE38:           var_40C = Ucase(CVar(var_8C)) 'Variant
  loc_1B7CE4E:           var_B0 = "lblTotal"
  loc_1B7CE68:           If (var_40C = Ucase(var_B0)) Then
  loc_1B7CE76:             Proc_6_17_EAAE40(var_B0)
  loc_1B7CE92:             Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7CE9A:             Call 0.Method_arg_20 (CStr(var_B0))
  loc_1B7CEA2:             Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_118.Fields.Item("DispName"))))
  loc_1B7CEB7:           Else
  loc_1B7CEBF:             var_B0 = "Total"
  loc_1B7CEC8:             var_280 = Ucase(var_B0)
  loc_1B7CED9:             If (var_40C = var_280) Then
  loc_1B7CEE7:               Proc_6_17_EAAE40(var_B0)
  loc_1B7CEEF:               var_8C = CStr(var_B0)
  loc_1B7CF03:               Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7CF0B:               Call 0.Method_arg_20 (var_8C)
  loc_1B7CF13:               Call 0.Method_arg_38 (var_230)
  loc_1B7CF25:             End If
  loc_1B7CF25:           End If
  loc_1B7CF28:         Next var_3FC 'Integer
  loc_1B7CF30:       Else
  loc_1B7CF80:         var_B0 = CVar(var_118.Fields.Item("SValue")) 'Address
  loc_1B7CF87:         Proc_6_39_E7D3A0(var_280)
  loc_1B7CFB0:         var_22C = CStr(Format(var_280, "0.00"))
  loc_1B7CFD0:         var_B4 = var_118.Fields
  loc_1B7CFD8:         var_24C = var_B4.Item("Amount")
  loc_1B7CFE0:         var_B0 = CVar(var_24C) 'Address
  loc_1B7CFE7:         Proc_6_39_E7D3A0(var_280, var_B0, 1)
  loc_1B7CFFB:         var_290 = "0.00"
  loc_1B7D007:         var_2B0 = Format(var_280, var_290)
  loc_1B7D010:         var_230 = CStr(var_2B0)
  loc_1B7D027:         var_B6 = (var_B6 + 1)
  loc_1B7D03B:         Call 0.Method_arg_90 (var_B4, var_270, var_EE, 1, var_B6)
  loc_1B7D043:         Call 0.Method_arg_24 (1, 1)
  loc_1B7D04F:         For var_410 = var_B0 To CInt(var_270):     1 = var_410 'Integer
  loc_1B7D068:           Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7D070:           Call 0.Method_arg_20 (var_8C)
  loc_1B7D078:           Call 0.Method_arg_30 (var_B0)
  loc_1B7D08E:           var_420 = Ucase(CVar(var_8C)) 'Variant
  loc_1B7D0AB:           var_B0 = CVar("lblSunName" & CStr(var_B6)) 'String
  loc_1B7D0C5:           If (var_420 = Ucase(var_B0)) Then
  loc_1B7D0D3:             Proc_6_17_EAAE40(var_B0)
  loc_1B7D0EF:             Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7D0F7:             Call 0.Method_arg_20 (CStr(var_B0))
  loc_1B7D0FF:             Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_118.Fields.Item("DispName"))))
  loc_1B7D114:           Else
  loc_1B7D123:             var_B0 = CVar("SunPer" & CStr(var_B6)) 'String
  loc_1B7D13D:             If (var_420 = Ucase(var_B0)) Then
  loc_1B7D14B:               Proc_6_17_EAAE40(var_B0)
  loc_1B7D167:               Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7D16F:               Call 0.Method_arg_20 (CStr(var_B0))
  loc_1B7D177:               Call 0.Method_arg_38 (var_22C)
  loc_1B7D18C:             Else
  loc_1B7D19B:               var_B0 = CVar("SunAmt" & CStr(var_B6)) 'String
  loc_1B7D1B5:               If (var_420 = Ucase(var_B0)) Then
  loc_1B7D1C3:                 Proc_6_17_EAAE40(var_B0)
  loc_1B7D1CB:                 var_8C = CStr(var_B0)
  loc_1B7D1DF:                 Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7D1E7:                 Call 0.Method_arg_20 (var_8C)
  loc_1B7D1EF:                 Call 0.Method_arg_38 (var_230)
  loc_1B7D201:               End If
  loc_1B7D201:             End If
  loc_1B7D201:           End If
  loc_1B7D204:         Next var_410 'Integer
  loc_1B7D209:       End If
  loc_1B7D209:     End If
  loc_1B7D20C:     var_118.MoveNext
  loc_1B7D211:     GoTo loc_1B7CA96
  loc_1B7D214:   End If
  loc_1B7D214: End If
  loc_1B7D21A: var_270 = var_188.RecordCount
  loc_1B7D228: If (var_270 > 0) Then
  loc_1B7D22D:   var_B6 = 1
  loc_1B7D233:   var_188.MoveFirst
  loc_1B7D238:   ' Referenced from: 1B7D5C3
  loc_1B7D247:   If Not(var_188.EOF) Then
  loc_1B7D25B:     Call 0.Method_arg_90 (var_B4, var_270, var_EE)
  loc_1B7D263:     Call 0.Method_arg_24 (1)
  loc_1B7D26F:     For var_424 =  To CInt(var_270): var_B6 = var_424 'Integer
  loc_1B7D288:       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7D290:       Call 0.Method_arg_20 (var_24C)
  loc_1B7D298:       Call 0.Method_arg_30 (var_8C)
  loc_1B7D2AE:       var_434 = Ucase(CVar(var_8C)) 'Variant
  loc_1B7D2E5:       If (var_434 = Ucase(CVar("STName" & CStr(var_B6)))) Then
  loc_1B7D316:         Proc_6_17_EAAE40(var_290)
  loc_1B7D332:         Call 0.Method_arg_90 (var_254, CLng(var_EE), var_258)
  loc_1B7D33A:         Call 0.Method_arg_20 (CStr(var_290))
  loc_1B7D342:         Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_188.Fields.Item("TaxName")))))
  loc_1B7D35F:       Else
  loc_1B7D374:         var_280 = Ucase(CVar("STPer" & CStr(var_B6)))
  loc_1B7D388:         If (var_434 = var_280) Then
  loc_1B7D3B1:           Proc_6_39_E7D3A0(var_280)
  loc_1B7D3C8:           Proc_6_17_EAAE40(var_2B0, CVar(CStr(var_280) & ") 'String)
  loc_1B7D3E4:           Call 0.Method_arg_90 (var_254, CLng(var_EE), var_258)
  loc_1B7D3EC:           Call 0.Method_arg_20 (CStr(var_2B0))
  loc_1B7D3F4:           Call 0.Method_arg_38 (CVar(var_188.Fields.Item("TaxPer")))
  loc_1B7D419:         Else
  loc_1B7D42E:           var_280 = Ucase(CVar("STAmt" & CStr(var_B6)))
  loc_1B7D442:           If (var_434 = var_280) Then
  loc_1B7D46B:             Proc_6_39_E7D3A0(var_280)
  loc_1B7D496:             Proc_6_17_EAAE40(var_2D0, Format(var_280, "0.00"), 1)
  loc_1B7D4B2:             Call 0.Method_arg_90 (var_254, CLng(var_EE), var_258)
  loc_1B7D4BA:             Call 0.Method_arg_20 (CStr(var_2D0), 1)
  loc_1B7D4C2:             Call 0.Method_arg_38 (CVar(var_188.Fields.Item("TaxAmt")))
  loc_1B7D4E3:           Else
  loc_1B7D4F8:             var_280 = Ucase(CVar("STAbleAmt" & CStr(var_B6)))
  loc_1B7D50C:             If (var_434 = var_280) Then
  loc_1B7D51E:               var_B4 = var_188.Fields
  loc_1B7D526:               var_24C = var_B4.Item("TaxableAmt")
  loc_1B7D535:               Proc_6_39_E7D3A0(var_280)
  loc_1B7D555:               var_2B0 = Format(var_280, "0.00")
  loc_1B7D560:               Proc_6_17_EAAE40(var_2D0, var_2B0, 1)
  loc_1B7D568:               var_8C = CStr(var_2D0)
  loc_1B7D57C:               Call 0.Method_arg_90 (var_254, CLng(var_EE), var_258)
  loc_1B7D584:               Call 0.Method_arg_20 (var_8C, 1)
  loc_1B7D58C:               Call 0.Method_arg_38 (CVar(var_24C))
  loc_1B7D5AA:             End If
  loc_1B7D5AA:           End If
  loc_1B7D5AA:         End If
  loc_1B7D5AA:       End If
  loc_1B7D5AD:     Next var_424 'Integer
  loc_1B7D5B8:     var_B6 = (var_B6 + 1)
  loc_1B7D5BE:     var_188.MoveNext
  loc_1B7D5C3:     GoTo loc_1B7D238
  loc_1B7D5C6:   End If
  loc_1B7D5C6: End If
  loc_1B7D5D7: Call 0.Method_arg_90 (var_B4, var_270, var_EE)
  loc_1B7D5DF: Call 0.Method_arg_24 (1)
  loc_1B7D5EB: For var_438 =  To CInt(var_270): var_B6 = var_438 'Integer
  loc_1B7D604:   Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7D60C:   Call 0.Method_arg_20 (var_24C)
  loc_1B7D614:   Call 0.Method_arg_30 (var_8C)
  loc_1B7D62A:   var_448 = Ucase(CVar(var_8C)) 'Variant
  loc_1B7D65A:   If (var_448 = Ucase("upttno")) Then
  loc_1B7D67E:     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7D686:     Call 0.Method_arg_20 (var_24C)
  loc_1B7D68E:     Call 0.Method_arg_38 ("'" & var_18C & "'")
  loc_1B7D6A4:   Else
  loc_1B7D6C6:     If (var_448 = Ucase("csttno")) Then
  loc_1B7D6EA:       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7D6F2:       Call 0.Method_arg_20 (var_24C)
  loc_1B7D6FA:       Call 0.Method_arg_38 ("'" & var_190 & "'")
  loc_1B7D710:     Else
  loc_1B7D732:       If (var_448 = Ucase("comp_name")) Then
  loc_1B7D756:         Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7D75E:         Call 0.Method_arg_20 (var_24C)
  loc_1B7D766:         Call 0.Method_arg_38 ("'" & var_1AC & "'")
  loc_1B7D77C:       Else
  loc_1B7D79E:         If (var_448 = Ucase("compaddress")) Then
  loc_1B7D7C2:           Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7D7CA:           Call 0.Method_arg_20 (var_24C)
  loc_1B7D7D2:           Call 0.Method_arg_38 ("'" & var_1A8 & "'")
  loc_1B7D7E8:         Else
  loc_1B7D80A:           If (var_448 = Ucase("comp_phone")) Then
  loc_1B7D82E:             Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7D836:             Call 0.Method_arg_20 (var_24C)
  loc_1B7D83E:             Call 0.Method_arg_38 ("'" & var_1BC & "'")
  loc_1B7D854:           Else
  loc_1B7D876:             If (var_448 = Ucase("BillHeader")) Then
  loc_1B7D89A:               Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7D8A2:               Call 0.Method_arg_20 (var_24C)
  loc_1B7D8AA:               Call 0.Method_arg_38 ("'" & var_1A0 & "'")
  loc_1B7D8C0:             Else
  loc_1B7D8E2:               If (var_448 = Ucase("name")) Then
  loc_1B7D906:                 Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7D90E:                 Call 0.Method_arg_20 (var_24C)
  loc_1B7D916:                 Call 0.Method_arg_38 ("'" & var_19C & "'")
  loc_1B7D92C:               Else
  loc_1B7D94E:                 If (var_448 = Ucase("address1")) Then
  loc_1B7D972:                   Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7D97A:                   Call 0.Method_arg_20 (var_24C)
  loc_1B7D982:                   Call 0.Method_arg_38 ("'" & var_1F0 & "'")
  loc_1B7D998:                 Else
  loc_1B7D9BA:                   If (var_448 = Ucase("address2")) Then
  loc_1B7D9DE:                     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7D9E6:                     Call 0.Method_arg_20 (var_24C)
  loc_1B7D9EE:                     Call 0.Method_arg_38 ("'" & var_1F4 & "'")
  loc_1B7DA04:                   Else
  loc_1B7DA26:                     If (var_448 = Ucase("address3")) Then
  loc_1B7DA4A:                       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7DA52:                       Call 0.Method_arg_20 (var_24C)
  loc_1B7DA5A:                       Call 0.Method_arg_38 ("'" & var_1F8 & "'")
  loc_1B7DA70:                     Else
  loc_1B7DA92:                       If (var_448 = Ucase("Pincode")) Then
  loc_1B7DAB6:                         Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7DABE:                         Call 0.Method_arg_20 (var_24C)
  loc_1B7DAC6:                         Call 0.Method_arg_38 ("'" & var_1FC & "'")
  loc_1B7DADC:                       Else
  loc_1B7DAED:                         var_280 = Ucase("CompanyAdd1")
  loc_1B7DAFE:                         If (var_448 = var_280) Then
  loc_1B7DB17:                           Proc_6_17_EAAE40(var_280)
  loc_1B7DB33:                           Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7DB3B:                           Call 0.Method_arg_20 (CStr(var_280))
  loc_1B7DB43:                           Call 0.Method_arg_38 (Trim(var_1B0))
  loc_1B7DB5C:                         Else
  loc_1B7DB6D:                           var_280 = Ucase("CompanyAdd2")
  loc_1B7DB7E:                           If (var_448 = var_280) Then
  loc_1B7DB97:                             Proc_6_17_EAAE40(var_280)
  loc_1B7DBB3:                             Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7DBBB:                             Call 0.Method_arg_20 (CStr(var_280))
  loc_1B7DBC3:                             Call 0.Method_arg_38 (Trim(var_1B4))
  loc_1B7DBDC:                           Else
  loc_1B7DBED:                             var_280 = Ucase("CompanyAdd3")
  loc_1B7DBFE:                             If (var_448 = var_280) Then
  loc_1B7DC17:                               Proc_6_17_EAAE40(var_280)
  loc_1B7DC33:                               Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7DC3B:                               Call 0.Method_arg_20 (CStr(var_280))
  loc_1B7DC43:                               Call 0.Method_arg_38 (Trim(var_1B8))
  loc_1B7DC5C:                             Else
  loc_1B7DC6D:                               var_280 = Ucase("CompanyCity")
  loc_1B7DC7E:                               If (var_448 = var_280) Then
  loc_1B7DC97:                                 Proc_6_17_EAAE40(var_280)
  loc_1B7DCB3:                                 Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7DCBB:                                 Call 0.Method_arg_20 (CStr(var_280))
  loc_1B7DCC3:                                 Call 0.Method_arg_38 (Trim(var_128))
  loc_1B7DCDC:                               Else
  loc_1B7DCED:                                 var_280 = Ucase("CompanyStateCode")
  loc_1B7DCFE:                                 If (var_448 = var_280) Then
  loc_1B7DD17:                                   Proc_6_17_EAAE40(var_280)
  loc_1B7DD33:                                   Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7DD3B:                                   Call 0.Method_arg_20 (CStr(var_280))
  loc_1B7DD43:                                   Call 0.Method_arg_38 (Trim(var_12C))
  loc_1B7DD5C:                                 Else
  loc_1B7DD6D:                                   var_280 = Ucase("CompanyState")
  loc_1B7DD7E:                                   If (var_448 = var_280) Then
  loc_1B7DD97:                                     Proc_6_17_EAAE40(var_280)
  loc_1B7DDB3:                                     Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7DDBB:                                     Call 0.Method_arg_20 (CStr(var_280))
  loc_1B7DDC3:                                     Call 0.Method_arg_38 (Trim(var_130))
  loc_1B7DDDC:                                   Else
  loc_1B7DDED:                                     var_280 = Ucase("CompanyGSTIN")
  loc_1B7DDFE:                                     If (var_448 = var_280) Then
  loc_1B7DE17:                                       Proc_6_17_EAAE40(var_280)
  loc_1B7DE33:                                       Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7DE3B:                                       Call 0.Method_arg_20 (CStr(var_280))
  loc_1B7DE43:                                       Call 0.Method_arg_38 (Trim(var_134))
  loc_1B7DE5C:                                     Else
  loc_1B7DE6D:                                       var_280 = Ucase("CompanyPAN")
  loc_1B7DE7E:                                       If (var_448 = var_280) Then
  loc_1B7DE97:                                         Proc_6_17_EAAE40(var_280)
  loc_1B7DEB3:                                         Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7DEBB:                                         Call 0.Method_arg_20 (CStr(var_280))
  loc_1B7DEC3:                                         Call 0.Method_arg_38 (Trim(var_138))
  loc_1B7DEDC:                                       Else
  loc_1B7DEED:                                         var_280 = Ucase("CompanyPIN")
  loc_1B7DEFE:                                         If (var_448 = var_280) Then
  loc_1B7DF17:                                           Proc_6_17_EAAE40(var_280)
  loc_1B7DF33:                                           Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7DF3B:                                           Call 0.Method_arg_20 (CStr(var_280))
  loc_1B7DF43:                                           Call 0.Method_arg_38 (Trim(var_13C))
  loc_1B7DF5C:                                         Else
  loc_1B7DF7E:                                           If (var_448 = Ucase("eInvIRN")) Then
  loc_1B7DFA5:                                             Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7DFAD:                                             Call 0.Method_arg_20 (var_24C)
  loc_1B7DFB5:                                             Call 0.Method_arg_38 ("'" & global_160 & "'")
  loc_1B7DFCB:                                           Else
  loc_1B7DFED:                                             If (var_448 = Ucase("eInvAckNo")) Then
  loc_1B7E014:                                               Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E01C:                                               Call 0.Method_arg_20 (var_24C)
  loc_1B7E024:                                               Call 0.Method_arg_38 ("'" & global_164 & "'")
  loc_1B7E03A:                                             Else
  loc_1B7E05C:                                               If (var_448 = Ucase("eInvAckDt")) Then
  loc_1B7E08F:                                                 Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E097:                                                 Call 0.Method_arg_20 (var_24C)
  loc_1B7E09F:                                                 Call 0.Method_arg_38 (CStr("'" & CDate(global_168) & "'"))
  loc_1B7E0B8:                                               Else
  loc_1B7E0DA:                                                 If (var_448 = Ucase("Function")) Then
  loc_1B7E0FE:                                                   Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E106:                                                   Call 0.Method_arg_20 (var_24C)
  loc_1B7E10E:                                                   Call 0.Method_arg_38 ("'" & var_15C & "'")
  loc_1B7E124:                                                 Else
  loc_1B7E146:                                                   If (var_448 = Ucase("PanNo")) Then
  loc_1B7E16A:                                                     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E172:                                                     Call 0.Method_arg_20 (var_24C)
  loc_1B7E17A:                                                     Call 0.Method_arg_38 ("'" & var_160 & "'")
  loc_1B7E190:                                                   Else
  loc_1B7E1B2:                                                     If (var_448 = Ucase("PAX_Par")) Then
  loc_1B7E1D6:                                                       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E1DE:                                                       Call 0.Method_arg_20 (var_24C)
  loc_1B7E1E6:                                                       Call 0.Method_arg_38 ("'" & var_168 & "'")
  loc_1B7E1FC:                                                     Else
  loc_1B7E21E:                                                       If (var_448 = Ucase("NARATION")) Then
  loc_1B7E242:                                                         Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E24A:                                                         Call 0.Method_arg_20 (var_24C)
  loc_1B7E252:                                                         Call 0.Method_arg_38 ("'" & var_178 & "'")
  loc_1B7E268:                                                       Else
  loc_1B7E28A:                                                         If (var_448 = Ucase("NARATION1")) Then
  loc_1B7E2AE:                                                           Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E2B6:                                                           Call 0.Method_arg_20 (var_24C)
  loc_1B7E2BE:                                                           Call 0.Method_arg_38 ("'" & var_17C & "'")
  loc_1B7E2D4:                                                         Else
  loc_1B7E2F6:                                                           If (var_448 = Ucase("PAX_Qty")) Then
  loc_1B7E31A:                                                             Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E322:                                                             Call 0.Method_arg_20 (var_24C)
  loc_1B7E32A:                                                             Call 0.Method_arg_38 ("'" & var_16C & "'")
  loc_1B7E340:                                                           Else
  loc_1B7E362:                                                             If (var_448 = Ucase("PAX_Rate")) Then
  loc_1B7E386:                                                               Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E38E:                                                               Call 0.Method_arg_20 (var_24C)
  loc_1B7E396:                                                               Call 0.Method_arg_38 ("'" & var_170 & "'")
  loc_1B7E3AC:                                                             Else
  loc_1B7E3CE:                                                               If (var_448 = Ucase("PAX_Amount")) Then
  loc_1B7E3F2:                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E3FA:                                                                 Call 0.Method_arg_20 (var_24C)
  loc_1B7E402:                                                                 Call 0.Method_arg_38 ("'" & var_174 & "'")
  loc_1B7E418:                                                               Else
  loc_1B7E43A:                                                                 If (var_448 = Ucase("billno")) Then
  loc_1B7E45E:                                                                   Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E466:                                                                   Call 0.Method_arg_20 (var_24C)
  loc_1B7E46E:                                                                   Call 0.Method_arg_38 ("'" & var_194 & "'")
  loc_1B7E484:                                                                 Else
  loc_1B7E4A6:                                                                   If (var_448 = Ucase("BillVou")) Then
  loc_1B7E4CA:                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E4D2:                                                                     Call 0.Method_arg_20 (var_24C)
  loc_1B7E4DA:                                                                     Call 0.Method_arg_38 ("'" & var_FC & "'")
  loc_1B7E4F0:                                                                   Else
  loc_1B7E512:                                                                     If (var_448 = Ucase("billdate")) Then
  loc_1B7E536:                                                                       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E53E:                                                                       Call 0.Method_arg_20 (var_24C)
  loc_1B7E546:                                                                       Call 0.Method_arg_38 ("'" & var_198 & "'")
  loc_1B7E55C:                                                                     Else
  loc_1B7E57E:                                                                       If (var_448 = Ucase("strRupee")) Then
  loc_1B7E5A2:                                                                         Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E5AA:                                                                         Call 0.Method_arg_20 (var_24C)
  loc_1B7E5B2:                                                                         Call 0.Method_arg_38 ("'" & var_1E8 & "'")
  loc_1B7E5C8:                                                                       Else
  loc_1B7E5EA:                                                                         If (var_448 = Ucase("lblamount")) Then
  loc_1B7E60E:                                                                           Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E616:                                                                           Call 0.Method_arg_20 (var_24C)
  loc_1B7E61E:                                                                           Call 0.Method_arg_38 ("'" & var_200 & "'")
  loc_1B7E634:                                                                         Else
  loc_1B7E656:                                                                           If (var_448 = Ucase("amount")) Then
  loc_1B7E67A:                                                                             Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E682:                                                                             Call 0.Method_arg_20 (var_24C)
  loc_1B7E68A:                                                                             Call 0.Method_arg_38 ("'" & var_1C0 & "'")
  loc_1B7E6A0:                                                                           Else
  loc_1B7E6C2:                                                                             If (var_448 = Ucase("lbldiscount")) Then
  loc_1B7E6E6:                                                                               Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E6EE:                                                                               Call 0.Method_arg_20 (var_24C)
  loc_1B7E6F6:                                                                               Call 0.Method_arg_38 ("'" & var_204 & "'")
  loc_1B7E70C:                                                                             Else
  loc_1B7E72E:                                                                               If (var_448 = Ucase("discount")) Then
  loc_1B7E752:                                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E75A:                                                                                 Call 0.Method_arg_20 (var_24C)
  loc_1B7E762:                                                                                 Call 0.Method_arg_38 ("'" & var_1C4 & "'")
  loc_1B7E778:                                                                               Else
  loc_1B7E79A:                                                                                 If (var_448 = Ucase("lbldevelopmenttax")) Then
  loc_1B7E7BE:                                                                                   Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E7C6:                                                                                   Call 0.Method_arg_20 (var_24C)
  loc_1B7E7CE:                                                                                   Call 0.Method_arg_38 ("'" & var_210 & "'")
  loc_1B7E7E4:                                                                                 Else
  loc_1B7E806:                                                                                   If (var_448 = Ucase("developmenttax")) Then
  loc_1B7E82A:                                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E832:                                                                                     Call 0.Method_arg_20 (var_24C)
  loc_1B7E83A:                                                                                     Call 0.Method_arg_38 ("'" & var_1D8 & "'")
  loc_1B7E850:                                                                                   Else
  loc_1B7E872:                                                                                     If (var_448 = Ucase("lbltradetax")) Then
  loc_1B7E896:                                                                                       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E89E:                                                                                       Call 0.Method_arg_20 (var_24C)
  loc_1B7E8A6:                                                                                       Call 0.Method_arg_38 ("'" & var_208 & "'")
  loc_1B7E8BC:                                                                                     Else
  loc_1B7E8DE:                                                                                       If (var_448 = Ucase("tradetax")) Then
  loc_1B7E902:                                                                                         Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E90A:                                                                                         Call 0.Method_arg_20 (var_24C)
  loc_1B7E912:                                                                                         Call 0.Method_arg_38 ("'" & var_1C8 & "'")
  loc_1B7E928:                                                                                       Else
  loc_1B7E94A:                                                                                         If (var_448 = Ucase("lblservicecharge")) Then
  loc_1B7E96E:                                                                                           Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E976:                                                                                           Call 0.Method_arg_20 (var_24C)
  loc_1B7E97E:                                                                                           Call 0.Method_arg_38 ("'" & var_20C & "'")
  loc_1B7E994:                                                                                         Else
  loc_1B7E9B6:                                                                                           If (var_448 = Ucase("servicecharge")) Then
  loc_1B7E9DA:                                                                                             Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7E9E2:                                                                                             Call 0.Method_arg_20 (var_24C)
  loc_1B7E9EA:                                                                                             Call 0.Method_arg_38 ("'" & var_1CC & "'")
  loc_1B7EA00:                                                                                           Else
  loc_1B7EA22:                                                                                             If (var_448 = Ucase("lblroundoff")) Then
  loc_1B7EA46:                                                                                               Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7EA4E:                                                                                               Call 0.Method_arg_20 (var_24C)
  loc_1B7EA56:                                                                                               Call 0.Method_arg_38 ("'" & var_214 & "'")
  loc_1B7EA6C:                                                                                             Else
  loc_1B7EA8E:                                                                                               If (var_448 = Ucase("roundoff")) Then
  loc_1B7EAB2:                                                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7EABA:                                                                                                 Call 0.Method_arg_20 (var_24C)
  loc_1B7EAC2:                                                                                                 Call 0.Method_arg_38 ("'" & var_1DC & "'")
  loc_1B7EAD8:                                                                                               Else
  loc_1B7EAFA:                                                                                                 If (var_448 = Ucase("lblServiceTax")) Then
  loc_1B7EB1E:                                                                                                   Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7EB26:                                                                                                   Call 0.Method_arg_20 (var_24C)
  loc_1B7EB2E:                                                                                                   Call 0.Method_arg_38 ("'" & var_21C & "'")
  loc_1B7EB44:                                                                                                 Else
  loc_1B7EB66:                                                                                                   If (var_448 = Ucase("ServiceTax")) Then
  loc_1B7EB8A:                                                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7EB92:                                                                                                     Call 0.Method_arg_20 (var_24C)
  loc_1B7EB9A:                                                                                                     Call 0.Method_arg_38 ("'" & var_1E4 & "'")
  loc_1B7EBB0:                                                                                                   Else
  loc_1B7EBD2:                                                                                                     If (var_448 = Ucase("lblnetamount")) Then
  loc_1B7EBF6:                                                                                                       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7EBFE:                                                                                                       Call 0.Method_arg_20 (var_24C)
  loc_1B7EC06:                                                                                                       Call 0.Method_arg_38 ("'" & var_218 & "'")
  loc_1B7EC1C:                                                                                                     Else
  loc_1B7EC3E:                                                                                                       If (var_448 = Ucase("netamount")) Then
  loc_1B7EC62:                                                                                                         Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7EC6A:                                                                                                         Call 0.Method_arg_20 (var_24C)
  loc_1B7EC72:                                                                                                         Call 0.Method_arg_38 ("'" & var_1E0 & "'")
  loc_1B7EC88:                                                                                                       Else
  loc_1B7ECAA:                                                                                                         If (var_448 = Ucase("lblTax8")) Then
  loc_1B7ECCE:                                                                                                           Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7ECD6:                                                                                                           Call 0.Method_arg_20 (var_24C)
  loc_1B7ECDE:                                                                                                           Call 0.Method_arg_38 ("'" & var_220 & "'")
  loc_1B7ECF4:                                                                                                         Else
  loc_1B7ED16:                                                                                                           If (var_448 = Ucase("Tax8Amt")) Then
  loc_1B7ED27:                                                                                                             var_90 = "'" & var_1D0 & "'"
  loc_1B7ED3A:                                                                                                             Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7ED42:                                                                                                             Call 0.Method_arg_20 (var_24C)
  loc_1B7ED4A:                                                                                                             Call 0.Method_arg_38 (var_90)
  loc_1B7ED60:                                                                                                           Else
  loc_1B7ED82:                                                                                                             If (var_448 = Ucase("lblTax9")) Then
  loc_1B7ED93:                                                                                                               var_90 = "'" & var_224 & "'"
  loc_1B7EDA6:                                                                                                               Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7EDAE:                                                                                                               Call 0.Method_arg_20 (var_24C)
  loc_1B7EDB6:                                                                                                               Call 0.Method_arg_38 (var_90)
  loc_1B7EDCC:                                                                                                             Else
  loc_1B7EDDD:                                                                                                               var_280 = Ucase("Tax9Amt")
  loc_1B7EDEE:                                                                                                               If (var_448 = var_280) Then
  loc_1B7EDFF:                                                                                                                 var_90 = "'" & var_1D4 & "'"
  loc_1B7EE12:                                                                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7EE1A:                                                                                                                 Call 0.Method_arg_20 (var_24C)
  loc_1B7EE22:                                                                                                                 Call 0.Method_arg_38 (var_90)
  loc_1B7EE38:                                                                                                               Else
  loc_1B7EE3B:                                                                                                                 var_A0 = "FunctionDate"
  loc_1B7EE49:                                                                                                                 var_280 = Ucase(var_A0)
  loc_1B7EE5A:                                                                                                                 If (var_448 = var_280) Then
  loc_1B7EE64:                                                                                                                   var_8C = "'" & var_D8
  loc_1B7EE6B:                                                                                                                   var_90 = var_8C & "'"
  loc_1B7EE7E:                                                                                                                   Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7EE86:                                                                                                                   Call 0.Method_arg_20 (var_24C)
  loc_1B7EE8E:                                                                                                                   Call 0.Method_arg_38 (var_90)
  loc_1B7EEA4:                                                                                                                 Else
  loc_1B7EEB5:                                                                                                                   var_280 = Ucase("Title")
  loc_1B7EEC6:                                                                                                                   If (var_448 = var_280) Then
  loc_1B7EED2:                                                                                                                     Call 0.Method_arg_50 (var_8C)
  loc_1B7EEDB:                                                                                                                     var_90 = "'" & var_8C
  loc_1B7EEE2:                                                                                                                     var_250 = var_90 & "'"
  loc_1B7EEF5:                                                                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7EEFD:                                                                                                                     Call 0.Method_arg_20 (var_24C)
  loc_1B7EF05:                                                                                                                     Call 0.Method_arg_38 (var_250)
  loc_1B7EF1D:                                                                                                                   Else
  loc_1B7EF20:                                                                                                                     var_A0 = "Jurisdition"
  loc_1B7EF2E:                                                                                                                     var_280 = Ucase(var_A0)
  loc_1B7EF3F:                                                                                                                     If (var_448 = var_280) Then
  loc_1B7EF49:                                                                                                                       var_8C = "'" & var_10C
  loc_1B7EF50:                                                                                                                       var_90 = var_8C & "'"
  loc_1B7EF63:                                                                                                                       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7EF6B:                                                                                                                       Call 0.Method_arg_20 (var_24C)
  loc_1B7EF73:                                                                                                                       Call 0.Method_arg_38 (var_90)
  loc_1B7EF89:                                                                                                                     Else
  loc_1B7EF8C:                                                                                                                       var_A0 = "User_Name"
  loc_1B7EF91:                                                                                                                       var_B0 = var_A0
  loc_1B7EF9A:                                                                                                                       var_280 = Ucase(var_B0)
  loc_1B7EFAB:                                                                                                                       If (var_448 = var_280) Then
  loc_1B7EFB1:                                                                                                                         var_A0 = var_110
  loc_1B7EFB9:                                                                                                                         Proc_6_17_EAAE40(var_B0)
  loc_1B7EFC1:                                                                                                                         var_8C = CStr(var_B0)
  loc_1B7EFD5:                                                                                                                         Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7EFDD:                                                                                                                         Call 0.Method_arg_20 (var_8C)
  loc_1B7EFE5:                                                                                                                         Call 0.Method_arg_38 (var_A0)
  loc_1B7EFFA:                                                                                                                       Else
  loc_1B7EFFD:                                                                                                                         var_A0 = "Dater"
  loc_1B7F002:                                                                                                                         var_B0 = var_A0
  loc_1B7F00B:                                                                                                                         var_280 = Ucase(var_B0)
  loc_1B7F01C:                                                                                                                         If (var_448 = var_280) Then
  loc_1B7F026:                                                                                                                           var_8C = "'" & MemVar_1F953C4
  loc_1B7F02D:                                                                                                                           var_90 = var_8C & "'"
  loc_1B7F040:                                                                                                                           Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7F048:                                                                                                                           Call 0.Method_arg_20 (var_24C)
  loc_1B7F050:                                                                                                                           Call 0.Method_arg_38 (var_90)
  loc_1B7F066:                                                                                                                         Else
  loc_1B7F069:                                                                                                                           var_A0 = "Pager"
  loc_1B7F06E:                                                                                                                           var_B0 = var_A0
  loc_1B7F077:                                                                                                                           var_280 = Ucase(var_B0)
  loc_1B7F088:                                                                                                                           If (var_448 = var_280) Then
  loc_1B7F092:                                                                                                                             var_8C = "'" & MemVar_1F953C8
  loc_1B7F099:                                                                                                                             var_90 = var_8C & "'"
  loc_1B7F0AC:                                                                                                                             Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7F0B4:                                                                                                                             Call 0.Method_arg_20 (var_24C)
  loc_1B7F0BC:                                                                                                                             Call 0.Method_arg_38 (var_90)
  loc_1B7F0D2:                                                                                                                           Else
  loc_1B7F0D5:                                                                                                                             var_A0 = "billfooter"
  loc_1B7F0DA:                                                                                                                             var_B0 = var_A0
  loc_1B7F0E3:                                                                                                                             var_280 = Ucase(var_B0)
  loc_1B7F0F4:                                                                                                                             If (var_448 = var_280) Then
  loc_1B7F0FE:                                                                                                                               var_8C = "'" & var_1A4
  loc_1B7F105:                                                                                                                               var_90 = var_8C & "'"
  loc_1B7F118:                                                                                                                               Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7F120:                                                                                                                               Call 0.Method_arg_20 (var_24C)
  loc_1B7F128:                                                                                                                               Call 0.Method_arg_38 (var_90)
  loc_1B7F13E:                                                                                                                             Else
  loc_1B7F141:                                                                                                                               var_A0 = "AdvanceDetail"
  loc_1B7F146:                                                                                                                               var_B0 = var_A0
  loc_1B7F14F:                                                                                                                               var_280 = Ucase(var_B0)
  loc_1B7F160:                                                                                                                               If (var_448 = var_280) Then
  loc_1B7F16A:                                                                                                                                 var_8C = "'" & var_164
  loc_1B7F171:                                                                                                                                 var_90 = var_8C & "'"
  loc_1B7F184:                                                                                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7F18C:                                                                                                                                 Call 0.Method_arg_20 (var_24C)
  loc_1B7F194:                                                                                                                                 Call 0.Method_arg_38 (var_90)
  loc_1B7F1AA:                                                                                                                               Else
  loc_1B7F1AD:                                                                                                                                 var_A0 = "comp_party"
  loc_1B7F1B2:                                                                                                                                 var_B0 = var_A0
  loc_1B7F1BB:                                                                                                                                 var_280 = Ucase(var_B0)
  loc_1B7F1CC:                                                                                                                                 If (var_448 = var_280) Then
  loc_1B7F1CF:                                                                                                                                   var_35C = "'"
  loc_1B7F1DA:                                                                                                                                   var_2E0 = 0
  loc_1B7F1F0:                                                                                                                                   var_248 = "Select ('Company:                                                                                                                               ' + SG.Name) AS CompanyName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode WHERE HB.DocId='"
  loc_1B7F1FB:                                                                                                                                   var_A0 = "DocID"
  loc_1B7F207:                                                                                                                                   var_B4 = var_E8.Fields
  loc_1B7F20F:                                                                                                                                   var_24C = var_B4.Item(var_A0)
  loc_1B7F217:                                                                                                                                   var_B0 = var_24C.Value
  loc_1B7F21F:                                                                                                                                   var_280 = CDate(global_168) & var_B0 
  loc_1B7F223:                                                                                                                                   var_2A0 = "'"
  loc_1B7F228:                                                                                                                                   var_290 = var_280 & var_2A0 
  loc_1B7F22C:                                                                                                                                   var_8C = CStr(var_290)
  loc_1B7F236:                                                                                                                                   unk_59EE7B.Execute var_8C, var_2B0, -1
  loc_1B7F23E:                                                                                                                                   var_254 = var_254.Fields
  loc_1B7F246:                                                                                                                                   var_2E0 = var_258.Item(var_258)
  loc_1B7F24E:                                                                                                                                   var_26C = var_26C.Value
  loc_1B7F256:                                                                                                                                   var_2F0 = var_2D0 & var_2D0 
  loc_1B7F25A:                                                                                                                                   var_37C = "'"
  loc_1B7F25F:                                                                                                                                   var_32C = var_2F0 & var_37C 
  loc_1B7F263:                                                                                                                                   var_90 = CStr(var_32C)
  loc_1B7F277:                                                                                                                                   Call 0.Method_arg_90 (var_380, CLng(var_EE), var_44C)
  loc_1B7F27F:                                                                                                                                   Call 0.Method_arg_20 (var_90)
  loc_1B7F287:                                                                                                                                   Call 0.Method_arg_38 (var_35C)
  loc_1B7F2B8:                                                                                                                                 Else
  loc_1B7F2BB:                                                                                                                                   var_A0 = "SettlementMode"
  loc_1B7F2C0:                                                                                                                                   var_B0 = var_A0
  loc_1B7F2C9:                                                                                                                                   var_280 = Ucase(var_B0)
  loc_1B7F2DA:                                                                                                                                   If (var_448 = var_280) Then
  loc_1B7F2E4:                                                                                                                                     var_8C = "'" & var_180
  loc_1B7F2EB:                                                                                                                                     var_90 = var_8C & "'"
  loc_1B7F2FE:                                                                                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7F306:                                                                                                                                     Call 0.Method_arg_20 (var_24C)
  loc_1B7F30E:                                                                                                                                     Call 0.Method_arg_38 (var_90)
  loc_1B7F321:                                                                                                                                   End If
  loc_1B7F321:                                                                                                                                 End If
  loc_1B7F321:                                                                                                                               End If
  loc_1B7F321:                                                                                                                             End If
  loc_1B7F321:                                                                                                                           End If
  loc_1B7F321:                                                                                                                         End If
  loc_1B7F321:                                                                                                                       End If
  loc_1B7F321:                                                                                                                     End If
  loc_1B7F321:                                                                                                                   End If
  loc_1B7F321:                                                                                                                 End If
  loc_1B7F321:                                                                                                               End If
  loc_1B7F321:                                                                                                             End If
  loc_1B7F321:                                                                                                           End If
  loc_1B7F321:                                                                                                         End If
  loc_1B7F321:                                                                                                       End If
  loc_1B7F321:                                                                                                     End If
  loc_1B7F321:                                                                                                   End If
  loc_1B7F321:                                                                                                 End If
  loc_1B7F321:                                                                                               End If
  loc_1B7F321:                                                                                             End If
  loc_1B7F321:                                                                                           End If
  loc_1B7F321:                                                                                         End If
  loc_1B7F321:                                                                                       End If
  loc_1B7F321:                                                                                     End If
  loc_1B7F321:                                                                                   End If
  loc_1B7F321:                                                                                 End If
  loc_1B7F321:                                                                               End If
  loc_1B7F321:                                                                             End If
  loc_1B7F321:                                                                           End If
  loc_1B7F321:                                                                         End If
  loc_1B7F321:                                                                       End If
  loc_1B7F321:                                                                     End If
  loc_1B7F321:                                                                   End If
  loc_1B7F321:                                                                 End If
  loc_1B7F321:                                                               End If
  loc_1B7F321:                                                             End If
  loc_1B7F321:                                                           End If
  loc_1B7F321:                                                         End If
  loc_1B7F321:                                                       End If
  loc_1B7F321:                                                     End If
  loc_1B7F321:                                                   End If
  loc_1B7F321:                                                 End If
  loc_1B7F321:                                               End If
  loc_1B7F321:                                             End If
  loc_1B7F321:                                           End If
  loc_1B7F321:                                         End If
  loc_1B7F321:                                       End If
  loc_1B7F321:                                     End If
  loc_1B7F321:                                   End If
  loc_1B7F321:                                 End If
  loc_1B7F321:                               End If
  loc_1B7F321:                             End If
  loc_1B7F321:                           End If
  loc_1B7F321:                         End If
  loc_1B7F321:                       End If
  loc_1B7F321:                     End If
  loc_1B7F321:                   End If
  loc_1B7F321:                 End If
  loc_1B7F321:               End If
  loc_1B7F321:             End If
  loc_1B7F321:           End If
  loc_1B7F321:         End If
  loc_1B7F321:       End If
  loc_1B7F321:     End If
  loc_1B7F321:   End If
  loc_1B7F324: Next var_438 'Integer
  loc_1B7F32E: Set var_24C = Nothing
  loc_1B7F344: Set var_B4 = MemVar_1F951E8 
  loc_1B7F350: Proc_6_99_1484404(var_B4, 0, var_F8)
  loc_1B7F35B: MemVar_1F951E8 = var_B4
  loc_1B7F36B: MemVar_1F951E8 = Nothing
  loc_1B7F374: Set var_120 = Nothing
  loc_1B7F37C: Set var_234 = Nothing
  loc_1B7F384: Set var_118 = Nothing
  loc_1B7F38C: Set var_E8 = Nothing
  loc_1B7F394: Set var_100 = Nothing
  loc_1B7F39C: Set var_124 = Nothing
  loc_1B7F3A4: Set var_188 = Nothing
  loc_1B7F3A7: Exit Sub
  loc_1B7F3A8: ' Referenced from: 1B7C5D2
  loc_1B7F3A8: ' Referenced from: 1B7A4A3
  loc_1B7F3AE: If (var_104 = &HFF) Then
  loc_1B7F3B7:   unk_59EE7B.RollbackTrans
  loc_1B7F3BC: End If
  loc_1B7F3BC: Proc_6_60_E63754(&HFF)
  loc_1B7F3C1: Exit Sub
End Sub

Public Sub Proc_124_103_13E5A24(arg_C) '13E5A24
  'Data Table: 59EE5C
  Dim unk_59EE7B As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  Dim var_F0 As Variant
  Dim var_B0 As Variant
  loc_13E5060: unk_59EE7B.Execute "Select S.* From SunTran S Where S.DocId='" & arg_C & "' Order By SNo", var_B0, -1
  loc_13E506B: Set var_88 = var_B4
  loc_13E508F: If (var_88.RecordCount > 0) Then
  loc_13E5092:   ' Referenced from: 13E552B
  loc_13E50A1:   If Not(var_88.EOF) Then
  loc_13E5104:     Set var_EC = Me.LblCap
  loc_13E510A:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E5112:     var_F0.Tag = CStr(var_88.Fields.Item("SunCode").Value)
  loc_13E5190:     Set var_EC = Me.TxtPer
  loc_13E5196:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E519E:     var_F0.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_13E521C:     Set var_EC = Me.LblCap
  loc_13E5222:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E522A:     var_F0.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_13E52A8:     Set var_EC = Me.LblAt
  loc_13E52AE:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E52B6:     var_F0.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_13E5334:     Set var_EC = Me.TxtGt
  loc_13E533A:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E5342:     var_F0.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_13E53C0:     Set var_EC = Me.TxtPer
  loc_13E53C6:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E53CE:     var_F0.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_13E543E:     var_E8 = "0.00"
  loc_13E5465:     Set var_EC = Me.TxtGt
  loc_13E546B:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_E8)))
  loc_13E5473:     var_F0.Text = 1
  loc_13E54A2:     var_B4 = var_88.Fields
  loc_13E54B2:     var_B0 = CVar(var_B4.Item("BaseAmount")) 'Address
  loc_13E54B9:     Proc_6_39_E7D3A0(var_E8, var_B0)
  loc_13E54F7:     Set var_EC = Me.LblDummy
  loc_13E54FD:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0, CStr(var_E8))
  loc_13E5505:     var_F0.Caption = 1
  loc_13E5526:     var_88.MoveNext
  loc_13E552B:     GoTo loc_13E5092
  loc_13E552E:   End If
  loc_13E552E: End If
  loc_13E5552: unk_59EE7B.Execute "Select S.* From SunTranH S Where S.DocId='" & arg_C & "' Order By SNo", var_B0, -1
  loc_13E555D: Set var_88 = var_B4
  loc_13E5581: If (var_88.RecordCount > 0) Then
  loc_13E5584:   ' Referenced from: 13E5A1D
  loc_13E5593:   If Not(var_88.EOF) Then
  loc_13E55A8:     var_B4 = var_88.Fields
  loc_13E55F6:     Set var_EC = Me.LableCap
  loc_13E55FC:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0, CStr(var_B4.Item("SunCode").Value))
  loc_13E5604:     var_F0.Tag = var_B4
  loc_13E5682:     Set var_EC = Me.TextPer
  loc_13E5688:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E5690:     var_F0.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_13E570E:     Set var_EC = Me.LableCap
  loc_13E5714:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E571C:     var_F0.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_13E579A:     Set var_EC = Me.LableAt
  loc_13E57A0:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E57A8:     var_F0.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_13E5826:     Set var_EC = Me.TextGt
  loc_13E582C:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E5834:     var_F0.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_13E58B2:     Set var_EC = Me.TextPer
  loc_13E58B8:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E58C0:     var_F0.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_13E5930:     var_E8 = "0.00"
  loc_13E5957:     Set var_EC = Me.TextGt
  loc_13E595D:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_E8)))
  loc_13E5965:     var_F0.Text = 1
  loc_13E59AB:     Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("BaseAmount")))
  loc_13E59E9:     Set var_EC = Me.LableDummy
  loc_13E59EF:     Call 0.Method_Proc_124_103_13E5A240 (CInt(var_88.Fields.Item("SNo").Value), var_F0, CStr(var_E8))
  loc_13E59F7:     var_F0.Caption = 1
  loc_13E5A18:     var_88.MoveNext
  loc_13E5A1D:     GoTo loc_13E5584
  loc_13E5A20:   End If
  loc_13E5A20: End If
  loc_13E5A20: Exit Sub
End Sub

Public Sub Proc_124_104_FAAAD4
  'Data Table: 59EE5C
  Dim var_DC As TextBox
  Dim var_D8 As Frame
  loc_FAA989: Set var_D8 = Me.TxteInvInfo
  loc_FAA98F: Call 0.Method_Proc_124_104_FAAAD40 (0, var_DC)
  loc_FAA997: var_DC.Text = CStr(IIf((global_160 <> vbNullString), global_160, vbNullString))
  loc_FAA9EC: Set var_D8 = Me.TxteInvInfo
  loc_FAA9F2: Call 0.Method_Proc_124_104_FAAAD40 (1, var_DC)
  loc_FAA9FA: var_DC.Text = CStr(IIf((global_164 <> vbNullString), global_164, vbNullString))
  loc_FAAA70: Set var_D8 = Me.TxteInvInfo
  loc_FAAA76: Call 0.Method_Proc_124_104_FAAAD40 (2, var_DC, CStr(IIf((global_168 <> CDate("31/Dec/1899")), Format(global_168, "dd/mm/yyyy hh:nn:ss"), vbNullString)))
  loc_FAAA7E: var_DC.Text = 1
  loc_FAAAA5: If (global_160 <> vbNullString) Then
  loc_FAAAB4:   Me.FreInvInfo.Visible = True
  loc_FAAABF: Else
  loc_FAAACB:   Me.FreInvInfo.Visible = False
  loc_FAAAD3: End If
  loc_FAAAD3: Exit Sub
End Sub

Public Sub Proc_124_105_E67D30(arg_C) 'E67D30
  'Data Table: 59EE5C
  loc_E67CF0: If (arg_C <> vbNullString) Then
  loc_E67D0C:   MsgBox("eInvoice already generated.", &H10, var_C8, var_E8, var_108)
  loc_E67D1C:   Proc_124_105_E67D30 = 
  loc_E67D22: End If
  loc_E67D27: Proc_124_105_E67D30 = &HFF
End Sub
