VERSION 5.00
Begin VB.Form fdPaymentCharge
  Caption = "Post Charges & Payment"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "fdPaymentCharge.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 11655
  ClientHeight = 9270
  LockControls = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Frame FrTxnNo
    BackColor = &HFFC0C0&
    Left = 75
    Top = 8190
    Width = 6000
    Height = 285
    Visible = 0   'False
    TabIndex = 127
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
    Begin TextBox Txt
      Index = 43
      BackColor = &HFFFFFF&
      Left = 1650
      Top = 30
      Width = 4005
      Height = 255
      TabIndex = 17
      BorderStyle = 0 'None
      MaxLength = 20
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
    Begin Label LblName
      Caption = "Txn. No."
      Index = 3
      ForeColor = &HC00000&
      Left = 15
      Top = 30
      Width = 675
      Height = 225
      TabIndex = 128
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
  Begin TextBox Txt
    Index = 42
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 9480
    Top = 1725
    Width = 510
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 9
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
  Begin DataGrid DGChrgPayment
    Left = 13830
    Top = 630
    Width = 5490
    Height = 3465
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8820
    Width = 11655
    Height = 450
    Visible = 0   'False
    TabIndex = 125
  End
  Begin Frame FrReference
    Caption = "Reference"
    Left = 6900
    Top = 3375
    Width = 4695
    Height = 3810
    TabIndex = 120
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox Txt
      Index = 41
      BackColor = &HFFFFFF&
      Left = 60
      Top = 255
      Width = 4515
      Height = 4260
      TabIndex = 121
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 1000
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
  Begin CommandButton CmdReference
    Caption = "..."
    Left = 11295
    Top = 2040
    Width = 300
    Height = 270
    TabIndex = 119
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGCCurreny
    Left = 11655
    Top = 3075
    Width = 2430
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 114
  End
  Begin Frame exFrame
    Left = 16485
    Top = 1005
    Width = 3450
    Height = 1995
    Visible = 0   'False
    TabIndex = 108
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin CommandButton Command1
      Caption = "Hide"
      Left = 1020
      Top = 1155
      Width = 1005
      Height = 285
      TabIndex = 116
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
      Index = 40
      BackColor = &HFFFFFF&
      Left = 1155
      Top = 570
      Width = 1755
      Height = 285
      TabIndex = 113
      MaxLength = 50
      Locked = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Foreign Currency Calculator"
      Index = 4
      BackColor = &H4040&
      ForeColor = &HFFFFFF&
      Left = 15
      Top = 30
      Width = 2970
      Height = 225
      TabIndex = 117
      Alignment = 2 'Center
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
    Begin Label LTxt
      Caption = "Currency"
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &H800000&
      Left = 90
      Top = 600
      Width = 1050
      Height = 255
      TabIndex = 115
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Shape Shape2
      Left = 45
      Top = 30
      Width = 2970
      Height = 1455
      BorderWidth = 2
    End
    Begin Label LTxt
      Caption = "Converted"
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &H800000&
      Left = 90
      Top = 870
      Width = 1050
      Height = 255
      TabIndex = 112
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LTxt
      Index = 5
      BackColor = &HFFFFFF&
      ForeColor = &H800000&
      Left = 1155
      Top = 870
      Width = 1275
      Height = 255
      TabIndex = 111
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LTxt
      Caption = "Amount"
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &H800000&
      Left = 90
      Top = 315
      Width = 1050
      Height = 255
      TabIndex = 110
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LTxt
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &H800000&
      Left = 1155
      Top = 315
      Width = 1275
      Height = 255
      TabIndex = 109
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin DataGrid DGMember
    Left = 15690
    Top = 4245
    Width = 4215
    Height = 2640
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 107
  End
  Begin Frame FrMember
    BackColor = &HFFC0C0&
    Left = 75
    Top = 7260
    Width = 6000
    Height = 330
    Visible = 0   'False
    TabIndex = 105
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 39
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1650
      Top = 30
      Width = 4000
      Height = 285
      TabIndex = 34
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
    Begin Label LblName
      Caption = "Member"
      Index = 2
      ForeColor = &HC00000&
      Left = 15
      Top = 30
      Width = 705
      Height = 225
      TabIndex = 106
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
  Begin PictureBox Picture1
    Picture = "fdPaymentCharge.frx":442
    Left = 13500
    Top = 30
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 102
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
    Begin CommandButton Command2
      Caption = "Command2"
      Left = -15
      Top = 675
      Width = 270
      Height = 240
      TabIndex = 118
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
  Begin TextBox Txt
    Index = 38
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3135
    Top = 1050
    Width = 870
    Height = 285
    Visible = 0   'False
    TabIndex = 101
    BorderStyle = 0 'None
    MaxLength = 5
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 36
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3225
    Top = 2295
    Width = 765
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 98
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
  End
  Begin Timer Timer1
    Interval = 1000
    Left = 10350
    Top = 0
  End
  Begin PictureBox Picture2
    Picture = "fdPaymentCharge.frx":790
    Left = 13170
    Top = 30
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 97
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
  Begin DataGrid DGRoom
    Left = 14685
    Top = 3150
    Width = 3885
    Height = 1830
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 47
  End
  Begin CommandButton frmcmd
    Caption = "&Exit"
    Index = 3
    BackColor = &HFFC0C0&
    Left = 13455
    Top = 7230
    Width = 1575
    Height = 360
    Visible = 0   'False
    TabIndex = 96
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Display Folio"
    MaskColor = &HFFC0C0&
    Style = 1
  End
  Begin CommandButton frmcmd
    Caption = "&Save"
    Index = 2
    BackColor = &HFFC0C0&
    Left = 13455
    Top = 6870
    Width = 1575
    Height = 360
    Visible = 0   'False
    TabIndex = 95
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Display Folio"
    MaskColor = &HFFC0C0&
    Style = 1
  End
End
Begin DataGrid DGRoomNo
  Left = 13680
  Top = 3570
  Width = 2580
  Height = 1575
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 23
End
Begin DataGrid DGEmp
  Left = 14745
  Top = 240
  Width = 4170
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 48
End
Begin TextBox Txt
  Index = 35
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 10350
  Top = 1725
  Width = 900
  Height = 285
  TabIndex = 6
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
  MaxLength = 9
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin CommandButton frmcmd
  Caption = "&Receipt Print"
  Index = 1
  BackColor = &HDEE6FE&
  Left = 12030
  Top = 2670
  Width = 1575
  Height = 360
  Visible = 0   'False
  TabIndex = 90
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  ToolTipText = "Reciept Printing"
  MaskColor = &HFFC0C0&
End
Begin TextBox Txt
  Index = 11
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1560
  Top = 1980
  Width = 2445
  Height = 285
  Enabled = 0   'False
  TabIndex = 73
  BorderStyle = 0 'None
  MaxLength = 16
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 13
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2010
  Top = 2295
  Width = 420
  Height = 285
  Enabled = 0   'False
  TabIndex = 72
  BorderStyle = 0 'None
  MaxLength = 2
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 12
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1560
  Top = 2295
  Width = 420
  Height = 285
  Enabled = 0   'False
  TabIndex = 71
  BorderStyle = 0 'None
  MaxLength = 2
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 14
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 14175
  Top = 8100
  Width = 480
  Height = 285
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 70
  BorderStyle = 0 'None
  MaxLength = 1
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 15
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1560
  Top = 2610
  Width = 870
  Height = 285
  Enabled = 0   'False
  TabIndex = 69
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
End
Begin TextBox Txt
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3975
  Top = 615
  Width = 750
  Height = 285
  TabIndex = 0
  BorderStyle = 0 'None
  MaxLength = 5
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
Begin TextBox Txt
  Index = 1
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1560
  Top = 1350
  Width = 1545
  Height = 285
  Enabled = 0   'False
  TabIndex = 68
  BorderStyle = 0 'None
  MaxLength = 11
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 7
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 3405
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 67
  BorderStyle = 0 'None
  MaxLength = 50
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 8
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 4665
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 66
  BorderStyle = 0 'None
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 9
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 5925
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 65
  BorderStyle = 0 'None
  MaxLength = 8
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 3
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3585
  Top = 1350
  Width = 420
  Height = 285
  Enabled = 0   'False
  TabIndex = 64
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  DataFormat = 80
  DataFormat = 38
End
Begin TextBox Txt
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3135
  Top = 1350
  Width = 420
  Height = 285
  Enabled = 0   'False
  TabIndex = 63
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  DataFormat = 80
  DataFormat = 38
End
Begin TextBox Txt
  Index = 10
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1560
  Top = 1035
  Width = 1545
  Height = 285
  Enabled = 0   'False
  TabIndex = 62
  BorderStyle = 0 'None
  MaxLength = 5
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 30
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3135
  Top = 1665
  Width = 420
  Height = 285
  Enabled = 0   'False
  TabIndex = 61
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  DataFormat = 80
  DataFormat = 38
End
Begin TextBox Txt
  Index = 29
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3585
  Top = 1665
  Width = 420
  Height = 285
  Enabled = 0   'False
  TabIndex = 60
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  DataFormat = 80
  DataFormat = 38
End
Begin TextBox Txt
  Index = 31
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1560
  Top = 1665
  Width = 1545
  Height = 285
  Enabled = 0   'False
  TabIndex = 59
  BorderStyle = 0 'None
  MaxLength = 11
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 34
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 5610
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 58
  BorderStyle = 0 'None
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 33
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 5295
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 57
  BorderStyle = 0 'None
  MaxLength = 50
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 32
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 4980
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 56
  BorderStyle = 0 'None
  MaxLength = 16
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 28
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 4350
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 55
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
End
Begin TextBox Txt
  Index = 27
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 4035
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 54
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
End
Begin TextBox Txt
  Index = 26
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 3720
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 53
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
End
Begin DataGrid DGCompany
  Left = 14415
  Top = -525
  Width = 4215
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 51
End
Begin Frame FrComp
  BackColor = &HFFC0C0&
  Left = 75
  Top = 7890
  Width = 6000
  Height = 330
  Visible = 0   'False
  TabIndex = 49
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
  Begin PictureBox Picture4
    Picture = "fdPaymentCharge.frx":ADE
    Left = 5685
    Top = 30
    Width = 300
    Height = 270
    TabIndex = 104
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
  Begin TextBox Txt
    Index = 25
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 30
    Width = 4000
    Height = 285
    TabIndex = 16
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
  Begin Label LblName
    Caption = "Company"
    Index = 27
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 795
    Height = 225
    TabIndex = 50
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
Begin Frame FrCCDet
  BackColor = &HFFC0C0&
  Left = 5595
  Top = 2325
  Width = 6000
  Height = 960
  Visible = 0   'False
  TabIndex = 43
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
  Begin TextBox Txt
    Index = 37
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4155
    Top = 660
    Width = 1500
    Height = 285
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 660
    Width = 1500
    Height = 285
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 345
    Width = 4000
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 30
    Width = 4000
    Height = 285
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin Label LblName
    Caption = "Batch No."
    Index = 0
    ForeColor = &HC00000&
    Left = 3240
    Top = 690
    Width = 810
    Height = 225
    TabIndex = 100
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
  Begin Label LblName
    Caption = "Exp.Dt."
    Index = 20
    ForeColor = &HC00000&
    Left = 15
    Top = 675
    Width = 585
    Height = 225
    TabIndex = 46
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
  Begin Label LblName
    Caption = "Holder"
    Index = 19
    ForeColor = &HC00000&
    Left = 15
    Top = 345
    Width = 555
    Height = 225
    TabIndex = 45
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
  Begin Label LblName
    Caption = "C.C. No."
    Index = 18
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 645
    Height = 225
    TabIndex = 44
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
Begin Frame FrEmp
  BackColor = &HFFC0C0&
  Left = 75
  Top = 7575
  Width = 6000
  Height = 330
  Visible = 0   'False
  TabIndex = 41
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
  Begin PictureBox Picture3
    Picture = "fdPaymentCharge.frx":E2C
    Left = 5685
    Top = 15
    Width = 300
    Height = 270
    TabIndex = 103
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
  Begin TextBox Txt
    Index = 23
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 30
    Width = 4000
    Height = 285
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin Label LblName
    Caption = "Staff"
    Index = 22
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 405
    Height = 225
    TabIndex = 42
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
Begin Frame FrSendRoom
  BackColor = &HFFC0C0&
  Left = 75
  Top = 6390
  Width = 6000
  Height = 315
  Visible = 0   'False
  TabIndex = 39
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
  Begin TextBox Txt
    Index = 24
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 15
    Width = 2000
    Height = 285
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin Label LblName
    Caption = "Room No.#"
    Index = 26
    ForeColor = &HC00000&
    Left = 0
    Top = 30
    Width = 915
    Height = 225
    TabIndex = 40
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
Begin Frame FrChqDet
  BackColor = &HFFC0C0&
  Left = 75
  Top = 6690
  Width = 6000
  Height = 585
  Visible = 0   'False
  TabIndex = 36
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
  Begin TextBox Txt
    Index = 22
    BackColor = &HFFFFFF&
    Left = 1650
    Top = 315
    Width = 2000
    Height = 255
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 21
    BackColor = &HFFFFFF&
    Left = 1650
    Top = 30
    Width = 2000
    Height = 255
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin Label LblName
    Caption = "Cheque Dt."
    Index = 16
    ForeColor = &HC00000&
    Left = 15
    Top = 330
    Width = 915
    Height = 225
    TabIndex = 38
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
  Begin Label LblName
    Caption = "Cheque No."
    Index = 15
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 960
    Height = 225
    TabIndex = 37
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
Begin CommandButton frmcmd
  Caption = "&Display Folio"
  Index = 0
  BackColor = &HFFC0C0&
  Left = 13455
  Top = 6510
  Width = 1575
  Height = 360
  Visible = 0   'False
  TabIndex = 35
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  ToolTipText = "Display Folio"
  MaskColor = &HFFC0C0&
  Style = 1
End
Begin TextBox Txt
  Index = 17
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7245
  Top = 1095
  Width = 1500
  Height = 285
  Enabled = 0   'False
  TabIndex = 1
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
  Index = 16
  BackColor = &HFFFFFF&
  Left = 12915
  Top = 330
  Width = 990
  Height = 255
  Visible = 0   'False
  TabIndex = 25
  BorderStyle = 0 'None
  MaxLength = 21
  BeginProperty Font
    Name = "MS Sans Serif"
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
  Index = 6
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7245
  Top = 1725
  Width = 1500
  Height = 285
  TabIndex = 4
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
  MaxLength = 11
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox Txt
  Index = 5
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7245
  Top = 2040
  Width = 4000
  Height = 285
  TabIndex = 7
  BorderStyle = 0 'None
  MaxLength = 1000
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
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7245
  Top = 1410
  Width = 4000
  Height = 285
  TabIndex = 3
  BorderStyle = 0 'None
  MaxLength = 50
  Locked = -1  'True
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
Begin MaskEdBox txtVTime
  Left = 8790
  Top = 1095
  Width = 645
  Height = 285
  TabIndex = 2
End
Begin MSHFlexGrid FGrid
  Left = 6090
  Top = 3720
  Width = 6015
  Height = 2430
  TabIndex = 92
End
Begin MSFlexGrid FGPoint
  Left = 16485
  Top = 7275
  Width = 1980
  Height = 1440
  Visible = 0   'False
  TabIndex = 94
End
Begin BtnEnh CmdExit
  Left = 8850
  Top = 7650
  Width = 1350
  Height = 1050
  TabIndex = 123
End
Begin BtnEnh BtnSave
  Left = 6930
  Top = 7680
  Width = 1350
  Height = 1050
  TabIndex = 124
End
Begin Label Lbl
  Caption = "Tax Inc."
  Index = 18
  ForeColor = &HC00000&
  Left = 8790
  Top = 1740
  Width = 660
  Height = 225
  TabIndex = 126
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
Begin Line Line1
  BorderColor = &HC00000&
  X1 = 6945
  Y1 = 7050
  X2 = 10200
  Y2 = 7050
  BorderWidth = 2
End
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 0
  Width = 180
  Height = 540
  TabIndex = 122
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
  Caption = "Payment/Charges Details"
  Index = 0
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 5460
  Top = 600
  Width = 5880
  Height = 375
  TabIndex = 19
  Alignment = 2 'Center
End
Begin Label Lbl
  Caption = "Bill No"
  Index = 17
  ForeColor = &HC00000&
  Left = 2580
  Top = 2340
  Width = 630
  Height = 240
  Visible = 0   'False
  TabIndex = 99
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Label1
  Caption = "Payment/Charges Details"
  Index = 3
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 5535
  Top = 3330
  Width = 5940
  Height = 375
  TabIndex = 93
  Alignment = 2 'Center
End
Begin Line Line3
  X1 = 5520
  Y1 = 3690
  X2 = 11040
  Y2 = 3690
End
Begin Label Lbl
  Caption = "Tip"
  Index = 15
  ForeColor = &HC00000&
  Left = 10035
  Top = 1725
  Width = 255
  Height = 225
  TabIndex = 91
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
Begin Label Label1
  Caption = "Guest Details"
  Index = 2
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 90
  Top = 2985
  Width = 5145
  Height = 375
  TabIndex = 89
  Alignment = 2 'Center
End
Begin Label Lbl
  Caption = "Adult/Child"
  Index = 16
  ForeColor = &HC00000&
  Left = 135
  Top = 2340
  Width = 1050
  Height = 240
  TabIndex = 88
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Rate Code"
  Index = 14
  ForeColor = &HC00000&
  Left = 13110
  Top = 8115
  Width = 990
  Height = 240
  Visible = 0   'False
  TabIndex = 87
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Room Rate"
  Index = 12
  ForeColor = &HC00000&
  Left = 135
  Top = 2655
  Width = 1050
  Height = 240
  TabIndex = 86
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Room Type"
  Index = 34
  ForeColor = &HC00000&
  Left = 135
  Top = 2025
  Width = 1080
  Height = 240
  TabIndex = 85
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Check In Date"
  Index = 26
  ForeColor = &HC00000&
  Left = 135
  Top = 1365
  Width = 1320
  Height = 240
  TabIndex = 84
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblCheckInDay
  Caption = "."
  BackColor = &HFFC0C0&
  ForeColor = &H40C0&
  Left = 4065
  Top = 1365
  Width = 1140
  Height = 240
  TabIndex = 83
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Guest Name"
  Index = 11
  ForeColor = &HC00000&
  Left = 135
  Top = 3420
  Width = 1155
  Height = 240
  TabIndex = 82
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Company"
  Index = 10
  ForeColor = &HC00000&
  Left = 165
  Top = 4680
  Width = 900
  Height = 240
  TabIndex = 81
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Status"
  Index = 9
  ForeColor = &HC00000&
  Left = 180
  Top = 5940
  Width = 585
  Height = 240
  TabIndex = 80
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Guest Folio No"
  Index = 6
  ForeColor = &HC00000&
  Left = 135
  Top = 1035
  Width = 1395
  Height = 240
  TabIndex = 79
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Depature Date"
  Index = 5
  ForeColor = &HC00000&
  Left = 135
  Top = 1695
  Width = 1365
  Height = 240
  TabIndex = 78
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Comment1"
  Index = 3
  ForeColor = &HC00000&
  Left = 165
  Top = 4995
  Width = 1020
  Height = 240
  TabIndex = 77
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Comment2"
  Index = 1
  ForeColor = &HC00000&
  Left = 165
  Top = 5310
  Width = 1020
  Height = 240
  TabIndex = 76
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Comment3"
  Index = 13
  ForeColor = &HC00000&
  Left = 180
  Top = 5625
  Width = 1020
  Height = 240
  TabIndex = 75
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Address"
  Index = 2
  ForeColor = &HC00000&
  Left = 165
  Top = 3735
  Width = 750
  Height = 240
  TabIndex = 74
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblNature
  Caption = "."
  BackColor = &HFFC0C0&
  ForeColor = &H4080&
  Left = 11325
  Top = 1425
  Width = 1080
  Height = 240
  TabIndex = 52
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LTxt
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 8520
  Top = 6375
  Width = 1605
  Height = 285
  TabIndex = 33
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LTxt
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 8520
  Top = 7125
  Width = 1605
  Height = 285
  TabIndex = 32
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LTxt
  Index = 1
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 8520
  Top = 6690
  Width = 1605
  Height = 285
  TabIndex = 31
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LblName
  Caption = "Total Amount"
  Index = 23
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 6990
  Top = 6390
  Width = 1500
  Height = 285
  TabIndex = 30
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Shape Shape5
  BorderColor = &HC00000&
  Left = 6930
  Top = 6300
  Width = 3270
  Height = 1230
  BorderWidth = 2
  FillColor = &HC0FFC0&
End
Begin Label LblName
  Caption = "Paid Amount"
  Index = 24
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 6990
  Top = 6705
  Width = 1500
  Height = 285
  TabIndex = 29
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LblName
  Caption = "Balance"
  Index = 17
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 6990
  Top = 7125
  Width = 1500
  Height = 285
  TabIndex = 28
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label Lbl
  Caption = "Vr. Date"
  Index = 8
  ForeColor = &HC00000&
  Left = 5600
  Top = 1125
  Width = 675
  Height = 225
  TabIndex = 27
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
Begin Label LblVPrefix
  Caption = "."
  ForeColor = &H4080&
  Left = 12405
  Top = 615
  Width = 1530
  Height = 240
  Visible = 0   'False
  TabIndex = 26
  AutoSize = -1  'True
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
Begin Label Lbl
  Caption = "Amount"
  Index = 7
  ForeColor = &HC00000&
  Left = 5600
  Top = 1740
  Width = 660
  Height = 225
  TabIndex = 22
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
Begin Label Lbl
  Caption = "Reference"
  Index = 4
  ForeColor = &HC00000&
  Left = 5600
  Top = 2055
  Width = 885
  Height = 225
  TabIndex = 21
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
Begin Label Lbl
  Caption = "Charge/Payment"
  Index = 0
  ForeColor = &HC00000&
  Left = 5600
  Top = 1425
  Width = 1410
  Height = 225
  TabIndex = 20
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
Begin Label Label1
  Caption = "Room Details for Room No."
  Index = 1
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 90
  Top = 585
  Width = 5100
  Height = 375
  TabIndex = 18
  Alignment = 2 'Center
End
End

Attribute VB_Name = "fdPaymentCharge"

Private global_192 As Integer
Private global_52 As Integer
Private global_152 As Long

Private Sub txtVTime_UnknownEvent_8 'EC7804
  'Data Table: 544E80
  Dim Cancel As Integer
  loc_EC77E2: If ((CDbl(Val(CStr(Left(CVar(Me.txtVTime), 2)))) > CDbl(&H17)) Or (CDbl(Val(CStr(Right(CVar(Me.txtVTime), 2)))) > CDbl(&H3B))) Then
  loc_EC77E7:   Cancel = &HFF
  loc_EC77EA:   Exit Sub
  loc_EC77EB: End If
  loc_EC77F9: Proc_303_0_FBACC8("	", 0)
  loc_EC7801: Exit Sub
End Sub

Private Sub txtVTime_UnknownEvent_B 'E0BC48
  'Data Table: 544E80
  loc_E0BC3A: If (Cancel = &HD) Then
  loc_E0BC42:   Call txtVTime_UnknownEvent_8()
  loc_E0BC47: End If
  loc_E0BC47: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F5DC28
  'Data Table: 544E80
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5DB11: Set var_A8 = Me.DGEmp
  loc_F5DB17: var_A8.Visible = False
  loc_F5DB39: If (Me.var_A8.RecordCount > 0) Then
  loc_F5DB7B:   Set var_B4 = Me.Txt
  loc_F5DB81:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H17), var_B8)
  loc_F5DB89:   var_B8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_F5DBBF:   var_B0 = Me.Recordset15.Fields.Item("Code")
  loc_F5DBDE:   Set var_B4 = Me.Txt
  loc_F5DBE4:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H17), var_B8)
  loc_F5DBEC:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5DC02: End If
  loc_F5DC0D: Set var_A8 = Me.Txt
  loc_F5DC13: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H17))
  loc_F5DC1B: var_B0.SetFocus
  loc_F5DC27: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EFBAE8
  'Data Table: 544E80
  loc_EFBA24: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_EFBA27:   Call DGCompany_UnknownEvent_9()
  loc_EFBA2C: End If
  loc_EFBA48: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EFBA4B:   Call DGRoom_UnknownEvent_9()
  loc_EFBA50: End If
  loc_EFBA6C: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_EFBA6F:   Call DGEmp_UnknownEvent_9()
  loc_EFBA74: End If
  loc_EFBA90: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_EFBA93:   Call DGChrgPayment_UnknownEvent_9()
  loc_EFBA98: End If
  loc_EFBAB4: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EFBAB7:   Call DGRoomNo_UnknownEvent_9()
  loc_EFBABC: End If
  loc_EFBAD8: If (CBool(Me.DGCCurreny.Visible) = &HFF) Then
  loc_EFBADB:   Call DGCCurreny_UnknownEvent_9()
  loc_EFBAE0: End If
  loc_EFBAE0: Call Proc_61_47_F6EF2C()
  loc_EFBAE5: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1CA90
  'Data Table: 544E80
  loc_E1CA85: Me.Global.Unload Me
  loc_E1CA8D: Exit Sub
End Sub

Private Sub Timer1_Timer() '1051C5C
  'Data Table: 544E80
  Dim var_8C As TextBox
  loc_10519F2: Set var_88 = Me.Txt
  loc_10519F8: Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1051A15: If (var_8C.BackColor = &HD3B3FF) Then
  loc_1051A26:   Set var_88 = Me.Txt
  loc_1051A2C:   Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1051A4B:   If (var_8C.Text <> vbNullString) Then
  loc_1051A5E:     Set var_88 = Me.Txt
  loc_1051A64:     Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1051A6C:     var_8C.BackColor = &HFFFFFF
  loc_1051A78:   End If
  loc_1051A86:   Set var_88 = Me.Txt
  loc_1051A8C:   Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_1051AAB:   If (var_8C.Text <> vbNullString) Then
  loc_1051ABE:     Set var_88 = Me.Txt
  loc_1051AC4:     Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_1051ACC:     var_8C.BackColor = &HFFFFFF
  loc_1051AD8:   End If
  loc_1051AE6:   Set var_88 = Me.Txt
  loc_1051AEC:   Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_1051B0B:   If (var_8C.Text <> vbNullString) Then
  loc_1051B1E:     Set var_88 = Me.Txt
  loc_1051B24:     Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_1051B2C:     var_8C.BackColor = &HFFFFFF
  loc_1051B38:   End If
  loc_1051B3B: Else
  loc_1051B49:   Set var_88 = Me.Txt
  loc_1051B4F:   Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1051B6E:   If (var_8C.Text <> vbNullString) Then
  loc_1051B81:     Set var_88 = Me.Txt
  loc_1051B87:     Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1051B8F:     var_8C.BackColor = &HD3B3FF
  loc_1051B9B:   End If
  loc_1051BA9:   Set var_88 = Me.Txt
  loc_1051BAF:   Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_1051BCE:   If (var_8C.Text <> vbNullString) Then
  loc_1051BE1:     Set var_88 = Me.Txt
  loc_1051BE7:     Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_1051BEF:     var_8C.BackColor = &HD3B3FF
  loc_1051BFB:   End If
  loc_1051C09:   Set var_88 = Me.Txt
  loc_1051C0F:   Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_1051C2E:   If (var_8C.Text <> vbNullString) Then
  loc_1051C41:     Set var_88 = Me.Txt
  loc_1051C47:     Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_1051C4F:     var_8C.BackColor = &HD3B3FF
  loc_1051C5B:   End If
  loc_1051C5B: End If
  loc_1051C5B: Exit Sub
End Sub

Private Sub btnsave_UnknownEvent_9 'DFEBBC
  'Data Table: 544E80
  loc_DFEBB4: Call TopCtrl1_UnknownEvent_16()
  loc_DFEBB9: Exit Sub
End Sub

Private Sub Form_Load() '142BDEC
  'Data Table: 544E80
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_B8 As String
  Dim var_BC As String
  Dim var_88 As Recordset15
  Dim var_CC As Variant
  Dim unk_544EAC As Connection15
  Dim var_B4 As TextBox
  Dim var_D4 As Variant
  Dim var_D8 As Variant
  Dim var_E0 As DataGrid
  Dim Me As Recordset15
  loc_142B328: On Error Goto loc_142BDE4
  loc_142B333: Call 0.Method_arg_7C (CDbl(1450))
  loc_142B340: Call 0.Method_arg_74 (CDbl(1625))
  loc_142B34D: Call 0.Method_MeC (CDbl(9200))
  loc_142B35A: Call 0.Method_Me4 (CDbl(17000))
  loc_142B366: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_142B37E: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_142B394: Me.FrSendRoom.BackColor = CLng(MemVar_1F951B4)
  loc_142B3AA: Me.FrTxnNo.BackColor = CLng(MemVar_1F951B4)
  loc_142B3C0: Me.FrChqDet.BackColor = CLng(MemVar_1F951B4)
  loc_142B3D6: Me.FrCCDet.BackColor = CLng(MemVar_1F951B4)
  loc_142B3EC: Me.FrComp.BackColor = CLng(MemVar_1F951B4)
  loc_142B402: Me.FrEmp.BackColor = CLng(MemVar_1F951B4)
  loc_142B418: Me.FrMember.BackColor = CLng(MemVar_1F951B4)
  loc_142B425: global_192 = 0
  loc_142B434: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_142B445: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_142B456: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_142B467: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_142B478: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_142B489: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_142B49A: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_142B4AB: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_142B4BC: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_142B4CD: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_142B4E7: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_142B4F5: Set var_B0 = MemVar_1F95044
  loc_142B504: Call 0.Method_Form_Load8 (var_B0)
  loc_142B51A: Me.Recordset20.Clone
  loc_142B534: Call 0.Method_arg_50 (var_B0, -1)
  loc_142B564: Me.Connection15.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_CC, -1
  loc_142B58E: var_B0 = var_B0.Fields
  loc_142B596: var_B4 = var_B0.Item("CreditCardInfoMandatory")
  loc_142B59E: var_CC = CVar(var_B4) 'Address
  loc_142B5B8: If (Proc_6_38_E69628(var_CC, var_B0) = "Y") Then
  loc_142B5C1:   global_88 = "Y"
  loc_142B5C5: End If
  loc_142B5E0: var_BC = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and  (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_142B5E9: unk_544EAC.Execute var_BC, var_CC, -1
  loc_142B5FA: Set global_116 = var_B0
  loc_142B61B: CVarUnk
  loc_142B620: VerifyVarObj
  loc_142B626: Set var_B0 = Me.DGCompany
  loc_142B62C: LateIdStAd
  loc_142B64E: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0, Me.Txt)
  loc_142B656: global_116 = var_B4.Left
  loc_142B66D: Me.DGCompany.Left = CVar(var_D0)
  loc_142B689: Set var_D4 = Me.Txt
  loc_142B68F: Call 0.Method_Form_Load0 (CInt(&H19), var_D8, var_DC)
  loc_142B697: var_B0 = var_D8.Height
  loc_142B6AA: Set var_B0 = Me.Txt
  loc_142B6B0: Call 0.Method_Form_Load0 (CInt(&H19), var_B4, var_D0)
  loc_142B6B8: var_B0 = var_B4.Top
  loc_142B6C8: var_9C = CVar(((var_D0 + var_DC) + CDbl(&H1E))) 'Single
  loc_142B6D7: Me.DGCompany.Top = CVar(var_D0)
  loc_142B6F7: Set var_B0 = Me.Txt
  loc_142B6FD: Call 0.Method_Form_Load0 (CInt(4), var_B4)
  loc_142B71C: Me.DGChrgPayment.Left = CVar(var_B4.Left)
  loc_142B738: Set var_D4 = Me.Txt
  loc_142B73E: Call 0.Method_Form_Load0 (CInt(4), var_D8)
  loc_142B746: var_DC = var_D8.Height
  loc_142B75F: Call 0.Method_Form_Load0 (CInt(4), var_B4)
  loc_142B767: var_D0 = var_B4.Top
  loc_142B773: var_9C = CVar((var_D0 + var_DC)) 'Single
  loc_142B782: Me.DGChrgPayment.Top = CVar(var_B4.Left)
  loc_142B7B8: unk_544EAC.Execute "SELECT Code,Name FROM Employee WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "') ORDER BY Name", var_CC, -1
  loc_142B7C9: Set global_120 = Me.Txt
  loc_142B7EA: CVarUnk
  loc_142B7EF: VerifyVarObj
  loc_142B7F5: Set var_B0 = Me.DGEmp
  loc_142B7FB: LateIdStAd
  loc_142B81D: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0, Me.Txt)
  loc_142B825: global_120 = var_B4.Left
  loc_142B83C: Me.DGEmp.Left = CVar(var_D0)
  loc_142B858: Set var_D4 = Me.Txt
  loc_142B85E: Call 0.Method_Form_Load0 (CInt(&H17), var_D8, var_DC)
  loc_142B866: var_B0 = var_D8.Height
  loc_142B87F: Call 0.Method_Form_Load0 (CInt(&H17), var_B4)
  loc_142B887: var_D0 = var_B4.Top
  loc_142B897: var_9C = CVar(((var_D0 + var_DC) + CDbl(&H1E))) 'Single
  loc_142B8A6: Me.DGEmp.Top = CVar(var_D0)
  loc_142B8D3: var_BC = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_142B8EA: unk_544EAC.Execute var_BC & MemVar_1F95078 & "') Order By Name", var_CC, -1
  loc_142B8FB: Set global_124 = Me.Txt
  loc_142B920: CVarUnk
  loc_142B925: VerifyVarObj
  loc_142B92B: Set var_B0 = Me.DGMember
  loc_142B931: LateIdStAd
  loc_142B95F: If (fdPaymentCharge.ParentForm = "Check Out") Then
  loc_142B96C:   Set global_100 = New 
  loc_142B97E:   Me.DGMember.CursorLocation = 3
  loc_142B9A1:   var_B8 = "SELECT DP.PayCode as Code, RevMast.name as Name, revmast.Type as Flag, revMast.PayType as Paytype, revMast.SaleRate as SaleRate, revMast.Cost as Cost,RevMast.TaxInc FROM DepartPay as DP LEFT OUTER JOIN RevMast ON DP.PayCode = RevMast.code where (DP.LOGSITE_CODE='" & MemVar_1F95078
  loc_142B9C0:   Me.Open CVar(var_B8 & "') AND restcode='" & MemVar_1F95078 & "Fom" & "' And Active<>'No' ORDER BY NAME "), CVar(MemVar_1F95044), 2
  loc_142B9DA:   CVarUnk
  loc_142B9DF:   VerifyVarObj
  loc_142B9E5:   Set var_B0 = Me.DGChrgPayment
  loc_142B9EB:   LateIdStAd
  loc_142B9FC: Else
  loc_142BA06:   Set global_100 = New 
  loc_142BA18:   Me.CursorLocation = 3
  loc_142BA42:   var_BC = "Select Code,Name,Type as Flag,PayType,SaleRate,Cost,TaxInc From RevMast where Code Not In ('" & MemVar_1F95078 & "ROFF') And (LOGSITE_CODE='"
  loc_142BA50:   var_CC = CVar(var_BC & MemVar_1F95078 & "') AND ((Fieldtype in ('C','P')  AND FLAGTYPE='FOM') OR (PAYTYPE Not In ('Hold','Company') AND PAYTYPE<>'' AND PAYTYPE IS NOT NULL)) And Active<>'No' ORDER BY NAME ") 'String
  loc_142BA5A:   Me.Open var_CC, CVar(MemVar_1F95044), 2
  loc_142BA74:   CVarUnk
  loc_142BA79:   VerifyVarObj
  loc_142BA7F:   Set var_B0 = Me.DGChrgPayment
  loc_142BA85:   LateIdStAd
  loc_142BA93: End If
  loc_142BA9C: CVarUnk
  loc_142BAA1: VerifyVarObj
  loc_142BAA7: Set var_B0 = Me.DGCCurreny
  loc_142BAAD: LateIdStAd
  loc_142BAC7: Set var_B0 = Me.Txt
  loc_142BACD: Call 0.Method_Form_Load0 (&H28, var_B4, var_D0, var_B0, global_128, var_B0, global_100)
  loc_142BAD5: 3 = var_B4.Left
  loc_142BAEC: Me.DGCCurreny.Left = CVar(var_D0)
  loc_142BB06: Set var_D4 = Me.Txt
  loc_142BB0C: Call 0.Method_Form_Load0 (&H28, var_D8, var_DC, -1, var_B0)
  loc_142BB14: global_100 = var_D8.Height
  loc_142BB25: Set var_B0 = Me.Txt
  loc_142BB2B: Call 0.Method_Form_Load0 (&H28, var_B4, var_D0)
  loc_142BB33: 3 = var_B4.Top
  loc_142BB43: var_9C = CVar(((var_D0 + var_DC) + CDbl(&H1E))) 'Single
  loc_142BB52: Me.DGCCurreny.Top = CVar(var_D0)
  loc_142BB72: Set var_B0 = Me.Txt
  loc_142BB78: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0)
  loc_142BB80: -1 = var_B4.Left
  loc_142BB97: Me.DGRoomNo.Left = CVar(var_D0)
  loc_142BBB3: Set var_D4 = Me.Txt
  loc_142BBB9: Call 0.Method_Form_Load0 (CInt(0), var_D8)
  loc_142BBD4: Set var_B0 = Me.Txt
  loc_142BBDA: Call 0.Method_Form_Load0 (CInt(0), var_B4)
  loc_142BBE2: var_D0 = var_B4.Top
  loc_142BBF2: var_9C = CVar(((var_D0 + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_142BBFB: Set var_E0 = Me.DGRoomNo
  loc_142BC01: var_E0.Top = CVar(var_D0)
  loc_142BC1D: Set global_96 = New 
  loc_142BC2F: Me.var_E0.CursorLocation = 3
  loc_142BC52: var_B8 = "SELECT RoomMast.Code AS SearchCode,RoomMast.Code AS RoomNo,RoomMast.Name AS Quot,RoomOcc.Docid, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name AS GuestName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName,RoomOcc.ChkOutDate, RoomOcc.ChkOutTime,GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, " & "GuestProf.GuestStatus, SubGroup.Name AS CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode AS CompanyCode, GuestFolio.FolioNo AS FolioNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GUESTSTAT.NAME AS STATUSNAME,RoomOcc.PlanCode FROM (((((RoomMast RIGHT JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) LEFT JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) LEFT JOIN RoomCat ON RoomOcc.RoomCat=RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS WHERE (RoomOcc.LOGSITE_CODE='"
  loc_142BC6A: Me.Open CVar(var_B8 & MemVar_1F95078 & "') AND CHKOUTDATE IS NULL AND ROOMMAST.TYPE='RO' ORDER BY RoomMast.Code"), CVar(MemVar_1F95044), 2
  loc_142BC82: CVarUnk
  loc_142BC87: VerifyVarObj
  loc_142BC8D: Set var_B0 = Me.DGRoomNo
  loc_142BC93: LateIdStAd
  loc_142BCBD: Me.DGRoomNo.CursorLocation = 3
  loc_142BCE7: var_CC = CVar("SELECT RoomOcc.DocId as Code,RoomOcc.RoomNo,RoomOcc.FolioNo From RoomOcc WHERE (RoomOcc.LOGSITE_CODE='" & MemVar_1F95078 & "') AND CHKOUTDATE IS NULL Order by RoomOcc.RoomNo") 'String
  loc_142BCF1: Me.Open var_CC, CVar(MemVar_1F95044), 2
  loc_142BD05: CVarUnk
  loc_142BD0A: VerifyVarObj
  loc_142BD10: Set var_B0 = Me.DGRoom
  loc_142BD16: LateIdStAd
  loc_142BD38: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0, Me.Txt, New, 3)
  loc_142BD40: -1 = var_B4.Left
  loc_142BD57: Me.DGRoom.Left = CVar(var_D0)
  loc_142BD8B: Call 0.Method_Form_Load0 (CInt(&H18), var_B4, var_D0, Me.Txt)
  loc_142BD93: global_96 = var_B4.Height
  loc_142BDA3: var_9C = CVar(((var_D0 + Me.FrSendRoom.Top) + CDbl(&H1E))) 'Single
  loc_142BDB2: Me.DGRoom.Top = CVar(var_D0)
  loc_142BDC2: Call Proc_61_51_121DBB4(3, -1)
  loc_142BDCD: Set var_B0 = Me.FrReference
  loc_142BDD3: var_B0.Visible = False
  loc_142BDE0: Set var_88 = Nothing
  loc_142BDE3: Exit Sub
  loc_142BDE4: ' Referenced from: 142B328
  loc_142BDE4: Proc_6_60_E63754(var_B0)
  loc_142BDE9: Exit Sub
End Sub

Private Sub Form_Resize() 'E72E24
  'Data Table: 544E80
  loc_E72DCE: Call 0.Method_arg_50 (var_88)
  loc_E72DE0: Me.LblFormCaption.Caption = var_88
  loc_E72DF9: Me.LblFormCaption.Left = CDbl(0)
  loc_E72E07: Call 0.Method_arg_100 (var_90)
  loc_E72E19: Me.LblFormCaption.Width = var_90
  loc_E72E21: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E43AB8
  'Data Table: 544E80
  loc_E43A93: Set global_96 = Nothing
  loc_E43AA5: Set global_100 = Nothing
  loc_E43AB1: global_52 = 0
  loc_E43AB4: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'EA636C
  'Data Table: 544E80
  Dim var_94 As Variant
  Dim var_B4 As Long
  Dim Cancel As Integer
  loc_EA62F0: var_94 = 1
  loc_EA62F9: var_B4 = 1
  loc_EA6328: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_EA635A:   If (MsgBox("Exit without Saving Transaction?", &H121, var_EC, var_FC, var_10C) = 2) Then
  loc_EA635F:     Cancel = 1
  loc_EA6362:     Exit Sub
  loc_EA6366:   Else
  loc_EA6368:     Cancel = 0
  loc_EA636B:   End If
  loc_EA636B: End If
  loc_EA636B: Exit Sub
End Sub

Private Sub Form_Activate() 'EC33C0
  'Data Table: 544E80
  Dim var_98 As TextBox
  loc_EC3324: On Error Goto loc_EC33BA
  loc_EC333B: If (fdPaymentCharge.OpenMode = 1) Then
  loc_EC334A:   Call Txt_Validate(CInt(0))
  loc_EC335A:   Set var_94 = Me.Txt
  loc_EC3360:   Call 0.Method_Form_Activate0 (CInt(4), var_98)
  loc_EC3368:   var_98.SetFocus
  loc_EC338A:   If (fdPaymentCharge.ParentForm = "Check Out") Then
  loc_EC3393:     global_164 = "S"
  loc_EC3397:   End If
  loc_EC3397: End If
  loc_EC339B: Set var_94 = Me.TopCtrl1
  loc_EC33A1: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_68030000(0)
  loc_EC33B6: If (CLng(CInt()) = &H2D) Then
  loc_EC33B9: End If
  loc_EC33B9: Exit Sub
  loc_EC33BA: ' Referenced from: EC3324
  loc_EC33BA: Proc_6_60_E63754()
  loc_EC33BF: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2675C
  'Data Table: 544E80
  loc_E26741: If (global_52 = &HFF) Then
  loc_E26751:   Me.Global.Unload Me
  loc_E26759: End If
  loc_E26759: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F5D7F4
  'Data Table: 544E80
  Dim var_88 As Variant
  Dim var_8C As Variant
  Dim var_98 As Label
  loc_F5D6D0: On Error Goto loc_F5D7ED
  loc_F5D6E8: If ((CLng(KeyCode) = &H45) And (CLng(Shift) = 2)) Then
  loc_F5D6F7:   Me.exFrame.Visible = True
  loc_F5D70B:   Set var_88 = Me.LTxt
  loc_F5D711:   Call 0.Method_Form_KeyDown0 (2, var_8C)
  loc_F5D72A:   Set var_94 = Me.LTxt
  loc_F5D730:   Call 0.Method_Form_KeyDown0 (3, var_98)
  loc_F5D738:   var_98.Caption = var_8C.Caption
  loc_F5D75A:   Set var_88 = Me.LTxt
  loc_F5D760:   Call 0.Method_Form_KeyDown0 (3, var_8C)
  loc_F5D779:   Call Proc_61_56_F018B4(Val(var_8C.Caption))
  loc_F5D793:   Set var_88 = Me.Txt
  loc_F5D799:   Call 0.Method_Form_KeyDown0 (CInt(&H28), var_8C)
  loc_F5D7A1:   var_8C.SetFocus
  loc_F5D7AD: End If
  loc_F5D7B7: If (CLng(KeyCode) = &H79) Then
  loc_F5D7C7:   Me.Global.Unload Me
  loc_F5D7CF:   Exit Sub
  loc_F5D7D0: End If
  loc_F5D7E4: Proc_6_88_FE8F6C(Me, KeyCode, Shift)
  loc_F5D7EC: Exit Sub
  loc_F5D7ED: ' Referenced from: F5D6D0
  loc_F5D7ED: Proc_6_60_E63754(0)
  loc_F5D7F2: Exit Sub
End Sub

Private Sub Command1_Click() 'E597C0
  'Data Table: 544E80
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_E59790: Me.exFrame.Visible = False
  loc_E597A3: Set var_88 = Me.Txt
  loc_E597A9: Call 0.Method_Command1_Click0 (CInt(4))
  loc_E597B1: var_8C.SetFocus
  loc_E597BD: Exit Sub
End Sub

Private Sub DGCCurreny_UnknownEvent_9 'FD0E24
  'Data Table: 544E80
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As Variant
  Dim var_B4 As Fields15
  Dim var_104 As Label
  loc_FD0C87: Me.DGCCurreny.Visible = False
  loc_FD0CA6: If (Me.RecordCount > 0) Then
  loc_FD0CE5:   Set var_B4 = Me.Txt
  loc_FD0CEB:   Call 0.Method_DGCCurreny_UnknownEvent_90 (CInt(&H28), var_B8)
  loc_FD0CF3:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD0D26:   var_B0 = Me.Fields.Item("Name")
  loc_FD0D45:   Set var_B4 = Me.Txt
  loc_FD0D4B:   Call 0.Method_DGCCurreny_UnknownEvent_90 (CInt(&H28), var_B8)
  loc_FD0D53:   var_B8.Text = CStr(var_B0.Value)
  loc_FD0D75:   Set var_A8 = Me.LTxt
  loc_FD0D7B:   Call 0.Method_DGCCurreny_UnknownEvent_90 (3, var_B0)
  loc_FD0DEF:   Set var_100 = Me.LTxt
  loc_FD0DF5:   Call 0.Method_DGCCurreny_UnknownEvent_90 (5, var_104)
  loc_FD0DFD:   var_104.Caption = CStr(Round((CVar(Val(var_B0.Caption)) / Me.Fields.Item("Rate").Value), 2))
  loc_FD0E21: End If
  loc_FD0E21: Exit Sub
End Sub

Private Sub DGCCurreny_UnknownEvent_1F 'E9D1E0
  'Data Table: 544E80
  Dim var_A8 As Variant
  loc_E9D164: Set var_88 = Me.DGCCurreny
  loc_E9D18E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9D196: Set var_BC = Me.DGCCurreny
  loc_E9D1D0: Proc_6_138_106E830(Me.DGCCurreny, global_128, 0, Me.FGPoint)
  loc_E9D1DE: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F36954
  'Data Table: 544E80
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3684B: Me.DGRoom.Visible = False
  loc_F3686A: If (Me.RecordCount > 0) Then
  loc_F368A9:   Set var_B4 = Me.Txt
  loc_F368AF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F368B7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F368EA:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F36909:   Set var_B4 = Me.Txt
  loc_F3690F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F36917:   var_B8.Text = CStr(var_B0.Value)
  loc_F3692D: End If
  loc_F36938: Set var_A8 = Me.Txt
  loc_F3693E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H18))
  loc_F36946: var_B0.SetFocus
  loc_F36952: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E80F08
  'Data Table: 544E80
  Dim var_8C As Label
  Dim var_98 As TextBox
  loc_E80EA8: Call Proc_61_50_13A4CD8()
  loc_E80EB9: Call Txt_Validate(CInt(4))
  loc_E80ED7: Call Proc_61_49_129DBA0(Me.LblNature.Caption)
  loc_E80EED: Set var_8C = Me.Txt
  loc_E80EF3: Call 0.Method_FGrid_UnknownEvent_90 (CInt(6), var_98)
  loc_E80EFB: var_98.SetFocus
  loc_E80F07: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F151C4
  'Data Table: 544E80
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F150DC: On Error Goto loc_F15181
  loc_F150F6: If (Me.RecordCount > 0) Then
  loc_F1510E:   var_8C = "EDIT"
  loc_F1511C:   Call Proc_61_45_E79E34(Proc_5_1_100EC1C(var_8C, Me))
  loc_F15132:   Set var_90 = Me.Txt
  loc_F15138:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F15140:   var_98.SetFocus
  loc_F1514F: Else
  loc_F15170:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F15180: End If
  loc_F15180: Exit Sub
  loc_F15181: ' Referenced from: F150DC
  loc_F15189: Set var_90 = Err()
  loc_F1518F: Call 0.Method_arg_2C (var_8C)
  loc_F151B0: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F151C3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ECBEFC
  'Data Table: 544E80
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F950E4 As String
  loc_ECBE58: On Error Goto loc_ECBEF3
  loc_ECBE72: If (Me.RecordCount <= 0) Then
  loc_ECBE7B:   var_B8 = "Information"
  loc_ECBE96:   MsgBox("No Records Found", &H40, var_B8, var_E8, var_108)
  loc_ECBEA6:   Exit Sub
  loc_ECBEA7: End If
  loc_ECBEB8: MemVar_1F950E4 = "SELECT DocId AS SearchCode FROM GuestFolio where VType='" & global_56 & "' ORDER BY VDate"
  loc_ECBEC5: MemVar_1F95120 = Me
  loc_ECBED2: Proc_6_126_F1C850("2000,2000,2000,2000")
  loc_ECBEED: Call 0.Method_arg_2B0 (1, var_B8)
  loc_ECBEF2: Exit Sub
  loc_ECBEF3: ' Referenced from: ECBE58
  loc_ECBEF3: Proc_6_60_E63754(MemVar_1F950E4)
  loc_ECBEF8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1C95750
  'Data Table: 544E80
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_E8 As Variant
  Dim var_154 As Variant
  Dim var_F0 As Variant
  Dim var_124 As Variant
  Dim var_180 As String
  Dim var_184 As String
  Dim unk_544EAC As Connection15
  Dim var_EC As Variant
  Dim var_188 As Variant
  Dim var_18C As Variant
  Dim var_178 As String
  Dim MemVar_1F950EC As Double
  Dim var_9A As Variant
  Dim var_1A4 As String
  Dim var_174 As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_A8 As Variant
  Dim var_1D4 As String
  Dim var_1F4 As Variant
  Dim var_BC As Variant
  Dim var_164 As Variant
  Dim var_1E4 As Variant
  Dim var_D8 As Variant
  Dim var_D0 As Variant
  Dim var_294 As TextBox
  Dim var_2DC As Variant
  Dim var_2EC As Variant
  Dim var_33C As Variant
  Dim var_35C As Variant
  Dim var_370 As MSHFlexGrid
  Dim var_380 As Variant
  Dim var_410 As Variant
  Dim var_430 As Variant
  Dim var_444 As Variant
  Dim var_454 As Variant
  Dim var_4A4 As Variant
  Dim var_4C4 As Long
  Dim var_578 As Variant
  Dim var_598 As Variant
  Dim var_5C0 As String
  Dim var_610 As Variant
  Dim var_630 As Variant
  Dim var_654 As Variant
  Dim var_6C4 As Variant
  Dim var_6E4 As Variant
  Dim var_708 As Variant
  Dim var_79C As Variant
  Dim var_7E4 As Variant
  Dim var_838 As Variant
  Dim var_86C As Variant
  Dim var_87C As Variant
  Dim var_8CC As Variant
  Dim var_900 As Variant
  Dim var_910 As Variant
  Dim var_A38 As Variant
  Dim var_ACC As MSHFlexGrid
  Dim var_ADC As Variant
  Dim var_B70 As Variant
  Dim var_B80 As Variant
  Dim var_D34 As Variant
  Dim var_D44 As Variant
  Dim var_1F8 As String
  Dim var_1FC As String
  Dim var_208 As String
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_2C8 As Variant
  Dim var_30C As Variant
  Dim var_31C As Variant
  Dim var_3A0 As Variant
  Dim var_3C0 As Variant
  Dim var_3D0 As Variant
  Dim var_3E0 As Variant
  Dim var_3F0 As Variant
  Dim var_400 As Variant
  Dim var_474 As Variant
  Dim var_484 As Variant
  Dim var_508 As Variant
  Dim var_528 As Variant
  Dim var_538 As Variant
  Dim var_548 As Variant
  Dim var_568 As Variant
  Dim var_5D0 As Variant
  Dim var_5E0 As Variant
  Dim var_600 As Variant
  Dim var_674 As Variant
  Dim var_684 As Variant
  Dim var_694 As Variant
  Dim var_728 As Variant
  Dim var_738 As Variant
  Dim var_7BC As Variant
  Dim var_7CC As Variant
  Dim var_7DC As Variant
  Dim var_808 As Variant
  Dim var_818 As Variant
  Dim var_89C As Variant
  Dim var_930 As Variant
  Dim var_9C4 As Variant
  Dim var_B2C As Variant
  Dim var_BB0 As Variant
  Dim var_BD0 As Variant
  Dim var_BF0 As Variant
  Dim var_C10 As Variant
  Dim var_C60 As Variant
  Dim var_CC0 As Variant
  Dim var_CE0 As Variant
  Dim var_DA0 As Variant
  Dim var_DB0 As Variant
  Dim var_DE0 As Variant
  Dim var_DF0 As Variant
  Dim var_E10 As Variant
  Dim var_E14 As String
  Dim var_34C As Variant
  Dim var_260 As Variant
  Dim var_36C As Variant
  Dim var_EA0 As Double
  Dim var_4B4 As Variant
  Dim var_EA8 As Double
  Dim var_4D4 As Variant
  Dim var_7E0 As MSHFlexGrid
  Dim var_EB0 As Double
  Dim var_768 As Variant
  Dim var_788 As Variant
  Dim var_7E8 As String
  Dim var_868 As Variant
  Dim var_A58 As Variant
  Dim var_AFC As Variant
  Dim var_BA0 As Variant
  Dim var_E24 As Variant
  Dim var_C30 As Variant
  Dim var_D54 As Variant
  Dim var_D90 As String
  Dim var_DC As Recordset15
  Dim var_420 As Long
  Dim var_E38 As Variant
  Dim var_E58 As String
  Dim var_A4 As Double
  Dim Me As Variant
  loc_1C8F0E0: On Error Goto loc_1C956FB
  loc_1C8F0E7: var_86 = CByte(0) 'Byte
  loc_1C8F0F6: Set var_E4 = Me.Txt
  loc_1C8F0FC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1C8F10D: Set var_EC = var_E8
  loc_1C8F125: If (Proc_6_27_EA61EC(var_EC, "Room No") = 0) Then
  loc_1C8F12F:   Call Txt_GotFocus()
  loc_1C8F134:   Exit Sub
  loc_1C8F135: End If
  loc_1C8F13F: var_104 = Me.FGrid.Rows
  loc_1C8F14E: var_114 = 1
  loc_1C8F164: Set var_E8 = Me.FGrid
  loc_1C8F16A: var_154 = var_E8.TextMatrix)
  loc_1C8F18F: If (1 And (CStr(var_154) = vbNullString)) Then
  loc_1C8F1A5:   var_104 = "Nill Details Can't be Saved"
  loc_1C8F1AB:   MsgBox(var_104, 0, var_154, var_164, var_174)
  loc_1C8F1BB:   Exit Sub
  loc_1C8F1BC: End If
  loc_1C8F1D2: If (fdPaymentCharge.ParentForm = "Check Out") Then
  loc_1C8F210:   Set var_E4 = Me.Txt
  loc_1C8F216:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E8, var_178, "Select Count(*) from Paycharge where LogSite_Code='" & MemVar_1F95078 & "' and folionoDocid='", var_104, -1, var_EC)
  loc_1C8F237:   unk_544EAC.Execute 0 & var_178 & "' And IsNull(Bill_NO,'')<>'' And Settledate Is Not Null", var_18C, var_154
  loc_1C8F23F:   var_114 = var_EC.Fields
  loc_1C8F247:   CInt(0) = var_E8.Tag.Item((CLng(var_104) = 2))
  loc_1C8F24F:    = var_18C.Value
  loc_1C8F280:   If (var_154 > 0) Then
  loc_1C8F29C:     MsgBox("Already Settled", &H40, var_154, var_164, var_174)
  loc_1C8F2AC:     Exit Sub
  loc_1C8F2AD:   End If
  loc_1C8F2B9:   Set var_E4 = Me.LTxt
  loc_1C8F2BF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_E8)
  loc_1C8F2E3:   If (CDbl(Val(var_E8.Caption)) <> CDbl(0)) Then
  loc_1C8F2F9:     var_104 = "Balance Amount must be zero to settle this Bill"
  loc_1C8F2FF:     MsgBox(var_104, &H40, var_154, var_164, var_174)
  loc_1C8F30F:     Exit Sub
  loc_1C8F310:   End If
  loc_1C8F310: End If
  loc_1C8F319: unk_544EAC.BeginTrans var_190
  loc_1C8F322: var_86 = CByte(1) 'Byte
  loc_1C8F32C: var_124 = 0
  loc_1C8F359: unk_544EAC.Execute "Select NCUR from enviro where LOGsite_code='" & MemVar_1F95078 & "'", var_104, -1
  loc_1C8F361: var_E4 = var_E4.Fields
  loc_1C8F369: var_124 = var_E8.Item(var_E8)
  loc_1C8F371: var_EC = var_EC.Value
  loc_1C8F37B: MemVar_1F950EC = CDate(var_154)
  loc_1C8F397: var_9A = 0
  loc_1C8F3BF: For var_194 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9C = var_194 'Integer
  loc_1C8F3DB:   Set var_E4 = Me.FGrid
  loc_1C8F3E1:   var_104 = var_E4.TextMatrix)
  loc_1C8F3EC:   var_F0 = CStr(var_104)
  loc_1C8F3FD:   If (var_F0 = "Dr") Then
  loc_1C8F406:     global_56 = "REC"
  loc_1C8F410:     Call Proc_61_48_10AE728(MemVar_1F95044, var_F0, 3, CVar(CLng(var_9C)))
  loc_1C8F41A:     var_9A = 1
  loc_1C8F441:     unk_544EAC.Execute "Select Name,ShortName from depart where code='" & MemVar_1F95078 & "FOM'", var_104, -1
  loc_1C8F44C:     Set var_A8 = var_E4
  loc_1C8F460:     var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F465:     var_134 = 1
  loc_1C8F4BA:     unk_544EAC.Execute CStr("Select * From RevMAst where code='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_1E4, -1
  loc_1C8F4C5:     Set var_BC = var_E8
  loc_1C8F4F5:     If (var_A8.RecordCount > 0) Then
  loc_1C8F4FC:       var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F504:       var_134 = CVar(CLng(&HF)) 'Long
  loc_1C8F540:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1C8F547:         var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F54C:         var_134 = 3
  loc_1C8F57B:         If (CStr(Me.FGrid.TextMatrix)) = "Cash") Then
  loc_1C8F581:           var_C8 = "CASH RECD."
  loc_1C8F587:         Else
  loc_1C8F58B:           var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F590:           var_134 = 2
  loc_1C8F5BF:           If (CStr(Me.FGrid.TextMatrix)) = "Credit Card") Then
  loc_1C8F5C2:             var_1A4 = "C.CNo. "
  loc_1C8F5CB:             var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F609:             var_C8 = CStr(CVar(CLng(&HA)) & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & vbNullString)
  loc_1C8F61F:           Else
  loc_1C8F623:             var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F628:             var_134 = 2
  loc_1C8F657:             If (CStr(Me.FGrid.TextMatrix)) = "Cheque") Then
  loc_1C8F65A:               var_1A4 = "C.CNo. "
  loc_1C8F663:               var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F6A1:               var_C8 = CStr(CVar(CLng(&HA)) & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & vbNullString)
  loc_1C8F6B7:             Else
  loc_1C8F6BB:               var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F6C0:               var_134 = 2
  loc_1C8F6EF:               If (CStr(Me.FGrid.TextMatrix)) = "Staff") Then
  loc_1C8F6F2:                 var_1A4 = "STAFF SETTELMENT ("
  loc_1C8F6FB:                 var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F739:                 var_C8 = CStr(CVar(CLng(&H10)) & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ")")
  loc_1C8F74F:               Else
  loc_1C8F753:                 var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F758:                 var_134 = 2
  loc_1C8F787:                 If (CStr(Me.FGrid.TextMatrix)) = "Company") Then
  loc_1C8F78A:                   var_1A4 = "COMPANY SETTELMENT ("
  loc_1C8F793:                   var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F7D1:                   var_C8 = CStr(CVar(CLng(&H16)) & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ")")
  loc_1C8F7E7:                 Else
  loc_1C8F7EB:                   var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F7F0:                   var_134 = 2
  loc_1C8F81F:                   If (CStr(Me.FGrid.TextMatrix)) = "Member") Then
  loc_1C8F822:                     var_1A4 = "MEMBER SETTELMENT ("
  loc_1C8F82B:                     var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F84D:                     var_154 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C8F853:                     var_164 = Trim(var_154)
  loc_1C8F869:                     var_C8 = CStr(CVar(CLng(&H16)) & var_164 & ")")
  loc_1C8F87F:                   Else
  loc_1C8F883:                     var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F888:                     var_134 = 2
  loc_1C8F8B7:                     If (CStr(Me.FGrid.TextMatrix)) = "Room") Then
  loc_1C8F8BE:                       var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F8C6:                       var_134 = CVar(CLng(&H19)) 'Long
  loc_1C8F8E1:                       var_1D4 = " ROOM ADJUSTMENT ("
  loc_1C8F8EC:                       var_1B4 = 0
  loc_1C8F910:                       var_178 = "SELECT IsNull(Max(RoomOcc.RoomNo),'') From RoomOcc WHERE (RoomOcc.LOGSITE_CODE='" & MemVar_1F95078 & "') AND CHKOUTDATE IS NULL And DOCID='"
  loc_1C8F92B:                       unk_544EAC.Execute var_178 & CStr(Me.FGrid.TextMatrix)) & "'", var_154, -1
  loc_1C8F933:                       var_E8 = var_E8.Fields
  loc_1C8F93B:                       var_1B4 = var_EC.Item(var_EC)
  loc_1C8F943:                       var_188 = var_188.Value
  loc_1C8F959:                       var_C8 = CStr(var_164 & var_164 & ")")
  loc_1C8F984:                     Else
  loc_1C8F988:                       var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F98D:                       var_134 = 2
  loc_1C8F9BC:                       If (CStr(Me.FGrid.TextMatrix)) = "Void") Then
  loc_1C8F9C2:                         var_C8 = "VOID SETTELMENT"
  loc_1C8F9C8:                       Else
  loc_1C8F9FB:                         var_164 = (Trim(CVar(var_BC.Fields.Item("ShortName"))) + " (")
  loc_1C8FA11:                         var_EC = var_A8.Fields
  loc_1C8FA19:                         var_188 = var_EC.Item("ShortName")
  loc_1C8FA21:                         var_174 = var_188.Value
  loc_1C8FA29:                         var_1C4 = (var_164 + var_174)
  loc_1C8FA32:                         var_1E4 = (var_164 & var_164 & ")" + ")")
  loc_1C8FA37:                         var_C8 = CStr(var_1E4)
  loc_1C8FA52:                       End If
  loc_1C8FA52:                     End If
  loc_1C8FA52:                   End If
  loc_1C8FA52:                 End If
  loc_1C8FA52:               End If
  loc_1C8FA52:             End If
  loc_1C8FA52:           End If
  loc_1C8FA52:         End If
  loc_1C8FA55:       Else
  loc_1C8FA59:         var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8FA61:         var_134 = CVar(CLng(&HF)) 'Long
  loc_1C8FA8A:         var_C8 = CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_1C8FA99:       End If
  loc_1C8FA99:     End If
  loc_1C8FA9D:     var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8FAA5:     var_134 = CVar(CLng(9)) 'Long
  loc_1C8FAE7:     If (var_BC.RecordCount > 0) Then
  loc_1C8FB26:       If (var_BC.Fields.Item("TaxInc").Value = "Yes") Then
  loc_1C8FB36:         var_124 = "Select sum(TaxStru.Rate) as Rate from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='"
  loc_1C8FB72:         var_F0 = CStr(var_124 & var_BC.Fields.Item("TaxStru").Value & "' Group By Taxstru.Nature ")
  loc_1C8FB7C:         unk_544EAC.Execute var_F0, var_174, -1
  loc_1C8FB87:         Set var_D0 = var_EC
  loc_1C8FBB5:         If (var_D0.RecordCount > 0) Then
  loc_1C8FBBE:           var_114 = "Rate"
  loc_1C8FBD2:           var_E8 = var_D0.Fields.Item(var_114)
  loc_1C8FBF3:           var_154 = (100 + var_E8.Value)
  loc_1C8FC17:           var_D8 = CSng(Round(((CVar(Val(CStr(Me.FGrid.TextMatrix)))) / 100 & var_BC.Fields.Item("TaxStru").Value) * 100), 2))
  loc_1C8FC2C:         End If
  loc_1C8FC3A:         Set var_E4 = Me.Txt
  loc_1C8FC40:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_D8, var_EC, var_D8)
  loc_1C8FC68:         Set var_EC = Me.Txt
  loc_1C8FC6E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_188, var_114, var_E8.Text)
  loc_1C8FC7D:         Proc_6_7_F26918(var_220, CVar(var_188), var_114)
  loc_1C8FCB8:         Set var_18C = Me.Txt
  loc_1C8FCBE:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_294, var_298, 1)
  loc_1C8FCC6:         1 = var_294.Tag
  loc_1C8FCCF:         var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C8FCD7:         var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C8FCE0:         Set var_2DC = Me.FGrid
  loc_1C8FCF6:         var_33C = CVar(CLng(var_9C)) 'Long
  loc_1C8FCFE:         var_35C = CVar(CLng(&H15)) 'Long
  loc_1C8FD1D:         var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C8FD22:         var_430 = 1
  loc_1C8FD45:         var_4A4 = CVar(CLng(var_9C)) 'Long
  loc_1C8FD4A:         var_4C4 = 2
  loc_1C8FD6D:         var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C8FD75:         var_598 = CVar(CLng(&H12)) 'Long
  loc_1C8FD9E:         var_610 = CVar(CLng(var_9C)) 'Long
  loc_1C8FDA3:         var_630 = 5
  loc_1C8FDC6:         var_6C4 = CVar(CLng(var_9C)) 'Long
  loc_1C8FDCB:         var_6E4 = 6
  loc_1C8FDDE:         var_708 = Me.FGrid.TextMatrix)
  loc_1C8FE05:         var_79C = Me.FGrid.TextMatrix)
  loc_1C8FE1F:         Set var_7E0 = Me.Txt
  loc_1C8FE25:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_7E4, var_7E8, var_79C, CVar(CLng(7)), CVar(CLng(var_9C)), var_708)
  loc_1C8FE2D:         var_6E4 = var_7E4.Text
  loc_1C8FE47:         Set var_86C = Me.FGrid
  loc_1C8FE4D:         var_87C = var_86C.TextMatrix)
  loc_1C8FE74:         var_910 = Me.FGrid.TextMatrix)
  loc_1C8FE9B:         var_9A4 = Me.FGrid.TextMatrix)
  loc_1C8FED3:         Proc_6_7_F26918(var_A58, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9A4, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_910)
  loc_1C8FF04:         Proc_6_17_EAAE40(var_AFC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1C8FF1E:         Set var_B70 = Me.FGrid
  loc_1C8FF35:         Proc_6_7_F26918(var_BA0, CVar(CStr(var_B70.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), var_87C)
  loc_1C8FF48:         Proc_6_7_F26918(var_C30, Date, CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_1C8FF79:         Proc_6_39_E7D3A0(var_D54, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H18)), CVar(CLng(var_9C)))
  loc_1C8FF8C:         Set var_D88 = Me.Txt
  loc_1C8FF92:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_D8C, var_D90)
  loc_1C8FF9A:         var_6C4 = var_D8C.Tag
  loc_1C8FFB3:         var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,ModeSet,BatchNo,FolioNoDocid,LogSite_Code) Values ('" & var_F0
  loc_1C8FFC2:         var_180 = CStr(var_9A)
  loc_1C8FFC6:         var_184 = var_178 & "'," & var_180
  loc_1C8FFD7:         var_1FC = var_184 & ",'" & global_56
  loc_1C8FFED:         var_208 = var_1FC & "','" & CStr(global_108)
  loc_1C9002B:         var_280 = CVar(var_208 & "','" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_220 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1C90066:         var_3A0 = var_280 & "','" & CVar(var_298) & "','" & CVar(CStr(var_2DC.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C900A1:         var_508 = var_3A0 & "','" & CVar(var_C8) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C900DD:         var_674 = var_508 & "',0," & CVar(var_D8) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C90135:         var_89C = var_674 & "'," & "'" & CVar(CStr(var_708)) & "','" & CVar(CStr(var_79C)) & "'," & CVar(var_7E8) & ",'" & CVar(CStr(var_87C)) 
  loc_1C9018D:         var_BB0 = var_89C & "','" & CVar(CStr(var_910)) & "','" & CVar(CStr(var_9A4)) & "'," & var_A58 & "," & var_AFC & "," & var_BA0 
  loc_1C901D9:         var_CC0 = var_BB0 & ",'" & CVar(MemVar_1F950C8) & "'," & var_C30 & ",'A','" & CVar(MemVar_1F95078) & "FOM','" & CVar(global_164) 
  loc_1C90226:         unk_544EAC.Execute CStr(var_CC0 & "'," & var_D54 & ",'" & CVar(var_D90) & "','" & CVar(MemVar_1F95078) & "')"), var_E34, -1
  loc_1C90358:         var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C90370:         var_104 = Me.FGrid.TextMatrix)
  loc_1C9038A:         Set var_E8 = Me.Txt
  loc_1C90390:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_1FC, var_104, 1)
  loc_1C90398:         var_114 = var_EC.Text
  loc_1C903BB:         Set var_188 = Me.Txt
  loc_1C903C1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_18C, var_208)
  loc_1C903C9:         var_E38 = var_18C.Text
  loc_1C903F9:         var_220 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_1C9040C:         Set var_294 = Me.Txt
  loc_1C90412:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2DC, var_F0, 1)
  loc_1C9041A:         1 = var_2DC.Tag
  loc_1C90423:         var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C9042B:         var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C9044B:         var_250 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C90454:         var_31C = CVar(CLng(var_9C)) 'Long
  loc_1C90459:         var_34C = 1
  loc_1C9046C:         var_260 = Me.FGrid.TextMatrix)
  loc_1C9047C:         var_36C = CVar(CLng(var_9C)) 'Long
  loc_1C90481:         var_3D0 = 1
  loc_1C90494:         var_270 = Me.FGrid.TextMatrix)
  loc_1C904A4:         var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C904AC:         var_430 = CVar(CLng(9)) 'Long
  loc_1C904CE:         var_EA0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C904D5:         var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C904DD:         var_4B4 = CVar(CLng(&H12)) 'Long
  loc_1C904FF:         var_EA8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C90506:         var_4D4 = CVar(CLng(var_9C)) 'Long
  loc_1C9050B:         var_538 = 5
  loc_1C9052F:         var_2C8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C90538:         var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C90561:         var_30C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C9059B:         Set var_7E4 = Me.Txt
  loc_1C905A1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_86C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1C905A9:         var_578 = var_86C.Text
  loc_1C905B6:         var_EB0 = Val(var_180)
  loc_1C905BD:         var_630 = CVar(CLng(var_9C)) 'Long
  loc_1C905C5:         var_684 = CVar(CLng(&HA)) 'Long
  loc_1C905D4:         var_380 = Me.FGrid.TextMatrix)
  loc_1C905E4:         var_6C4 = CVar(CLng(var_9C)) 'Long
  loc_1C905EC:         var_6E4 = CVar(CLng(&HB)) 'Long
  loc_1C90631:         var_3C0 = Date
  loc_1C90639:         var_3E0 = Date
  loc_1C90641:         var_400 = Date
  loc_1C90654:         Set var_ACC = Me.Txt
  loc_1C9065A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B70, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1C90662:         var_6E4 = var_B70.Tag
  loc_1C9066B:         var_788 = CVar(CLng(var_9C)) 'Long
  loc_1C90670:         var_818 = 3
  loc_1C90683:         var_454 = Me.FGrid.TextMatrix)
  loc_1C90697:         var_E94 = 0
  loc_1C906AA:         var_E8C = 0
  loc_1C906C8:         var_E80 = "A"
  loc_1C90737:         var_D90 = vbNullString
  loc_1C90796:         Proc_96_8_1CC4F08(CStr(var_104), var_1FC, var_9A, global_56, global_108, MemVar_1F95070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_208))
  loc_1C9083F:       Else
  loc_1C9084D:         Set var_E4 = Me.Txt
  loc_1C90853:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, CStr(var_220), var_F0, CStr(var_250))
  loc_1C9085B:         CStr(var_260) = var_E8.Text
  loc_1C9087B:         Set var_EC = Me.Txt
  loc_1C90881:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_188, CStr(var_270))
  loc_1C90890:         Proc_6_7_F26918(var_220, CVar(var_188), var_D90)
  loc_1C908BA:         var_E3C = Format$(Time, "HH:mm")
  loc_1C908CB:         Set var_18C = Me.Txt
  loc_1C908D1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_294, var_298, 1)
  loc_1C908D9:         1 = var_294.Tag
  loc_1C908E2:         var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C908EA:         var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C908F3:         Set var_2DC = Me.FGrid
  loc_1C90909:         var_33C = CVar(CLng(var_9C)) 'Long
  loc_1C90911:         var_35C = CVar(CLng(&H15)) 'Long
  loc_1C90930:         var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C90935:         var_430 = 1
  loc_1C90958:         var_4A4 = CVar(CLng(var_9C)) 'Long
  loc_1C9095D:         var_4C4 = 2
  loc_1C90980:         var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C90988:         var_598 = CVar(CLng(&H12)) 'Long
  loc_1C909B1:         var_610 = CVar(CLng(var_9C)) 'Long
  loc_1C909B6:         var_630 = 5
  loc_1C909D9:         var_6C4 = CVar(CLng(var_9C)) 'Long
  loc_1C909DE:         var_6E4 = 6
  loc_1C909F1:         var_708 = Me.FGrid.TextMatrix)
  loc_1C90A18:         var_79C = Me.FGrid.TextMatrix)
  loc_1C90A32:         Set var_7E0 = Me.Txt
  loc_1C90A38:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_7E4, var_7E8, var_79C, CVar(CLng(7)), CVar(CLng(var_9C)), var_708)
  loc_1C90A40:         var_6E4 = var_7E4.Text
  loc_1C90A5A:         Set var_86C = Me.FGrid
  loc_1C90A60:         var_87C = var_86C.TextMatrix)
  loc_1C90A87:         var_910 = Me.FGrid.TextMatrix)
  loc_1C90AAE:         var_9A4 = Me.FGrid.TextMatrix)
  loc_1C90AE6:         Proc_6_7_F26918(var_A58, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9A4, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_910)
  loc_1C90B17:         Proc_6_17_EAAE40(var_AFC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1C90B31:         Set var_B70 = Me.FGrid
  loc_1C90B48:         Proc_6_7_F26918(var_BA0, CVar(CStr(var_B70.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), var_87C)
  loc_1C90B5B:         Proc_6_7_F26918(var_C30, Date, CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_1C90B8C:         Proc_6_39_E7D3A0(var_D54, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H18)), CVar(CLng(var_9C)))
  loc_1C90B9F:         Set var_D88 = Me.Txt
  loc_1C90BA5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_D8C, var_D90)
  loc_1C90BAD:         var_6C4 = var_D8C.Tag
  loc_1C90BC6:         var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,ModeSet,BatchNo,FolioNoDocid,LogSite_Code) Values ('" & var_F0
  loc_1C90BD5:         var_180 = CStr(var_9A)
  loc_1C90BD9:         var_184 = var_178 & "'," & var_180
  loc_1C90BEA:         var_1FC = var_184 & ",'" & global_56
  loc_1C90C00:         var_208 = var_1FC & "','" & CStr(global_108)
  loc_1C90C47:         var_290 = CVar(var_208 & "','" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_220 & ",'" & CVar(var_E3C) & "','" 
  loc_1C90C82:         var_3C0 = var_290 & CVar(var_298) & "','" & CVar(CStr(var_2DC.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_1C90CBD:         var_528 = var_3C0 & CVar(var_C8) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," 
  loc_1C90CF9:         var_694 = var_528 & CVar(var_D8) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," 
  loc_1C90D48:         var_89C = var_694 & "'" & CVar(CStr(var_708)) & "','" & CVar(CStr(var_79C)) & "'," & CVar(var_7E8) & ",'" & CVar(CStr(var_87C)) 
  loc_1C90D89:         var_A88 = var_89C & "','" & CVar(CStr(var_910)) & "','" & CVar(CStr(var_9A4)) & "'," & var_A58 & "," 
  loc_1C90D99:         var_B2C = var_A88 & var_AFC & "," 
  loc_1C90DA9:         var_BD0 = var_B2C & var_BA0 & ",'" 
  loc_1C90DCC:         var_C60 = var_BD0 & CVar(MemVar_1F950C8) & "'," & var_C30 & ",'A','" 
  loc_1C90E0F:         var_DB0 = var_C60 & CVar(MemVar_1F95078) & "FOM','" & CVar(global_164) & "'," & var_D54 & ",'" & CVar(var_D90) 
  loc_1C90E2B:         var_E10 = var_DB0 & "','" & CVar(MemVar_1F95078) & "')" 
  loc_1C90E39:         unk_544EAC.Execute CStr(var_E10), var_E34, -1
  loc_1C90F6B:         var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C90F83:         var_104 = Me.FGrid.TextMatrix)
  loc_1C90F9D:         Set var_E8 = Me.Txt
  loc_1C90FA3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_1FC, var_104, 1)
  loc_1C90FAB:         var_114 = var_EC.Text
  loc_1C90FCE:         Set var_188 = Me.Txt
  loc_1C90FD4:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_18C, var_208)
  loc_1C90FDC:         var_E38 = var_18C.Text
  loc_1C9100C:         var_220 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_1C9101F:         Set var_294 = Me.Txt
  loc_1C91025:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2DC, var_F0, 1)
  loc_1C9102D:         1 = var_2DC.Tag
  loc_1C91036:         var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C9103E:         var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C9105E:         var_250 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C91067:         var_31C = CVar(CLng(var_9C)) 'Long
  loc_1C9106C:         var_34C = 1
  loc_1C9107F:         var_260 = Me.FGrid.TextMatrix)
  loc_1C9108F:         var_36C = CVar(CLng(var_9C)) 'Long
  loc_1C91094:         var_3D0 = 1
  loc_1C910A7:         var_270 = Me.FGrid.TextMatrix)
  loc_1C910B7:         var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C910BF:         var_430 = CVar(CLng(9)) 'Long
  loc_1C910E1:         var_EA0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C910E8:         var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C910F0:         var_4B4 = CVar(CLng(&H12)) 'Long
  loc_1C91112:         var_EA8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C91119:         var_4D4 = CVar(CLng(var_9C)) 'Long
  loc_1C9111E:         var_538 = 5
  loc_1C91142:         var_2C8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C9114B:         var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C91174:         var_30C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C911AE:         Set var_7E4 = Me.Txt
  loc_1C911B4:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_86C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1C911BC:         var_578 = var_86C.Text
  loc_1C911C9:         var_EB0 = Val(var_180)
  loc_1C911D0:         var_630 = CVar(CLng(var_9C)) 'Long
  loc_1C911D8:         var_684 = CVar(CLng(&HA)) 'Long
  loc_1C911E7:         var_380 = Me.FGrid.TextMatrix)
  loc_1C911F7:         var_6C4 = CVar(CLng(var_9C)) 'Long
  loc_1C911FF:         var_6E4 = CVar(CLng(&HB)) 'Long
  loc_1C91244:         var_3C0 = Date
  loc_1C9124C:         var_3E0 = Date
  loc_1C91254:         var_400 = Date
  loc_1C91267:         Set var_ACC = Me.Txt
  loc_1C9126D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B70, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1C91275:         var_6E4 = var_B70.Tag
  loc_1C9127E:         var_788 = CVar(CLng(var_9C)) 'Long
  loc_1C91283:         var_818 = 3
  loc_1C91296:         var_454 = Me.FGrid.TextMatrix)
  loc_1C912AA:         var_E94 = 0
  loc_1C912BD:         var_E8C = 0
  loc_1C912DB:         var_E80 = "A"
  loc_1C9134A:         var_D90 = vbNullString
  loc_1C913A9:         Proc_96_8_1CC4F08(CStr(var_104), var_1FC, var_9A, global_56, global_108, MemVar_1F95070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_208))
  loc_1C9144F:       End If
  loc_1C9144F:     End If
  loc_1C91459:     If (Len(var_C0) = 0) Then
  loc_1C9146D:       Set var_E4 = Me.Txt
  loc_1C91473:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_C0, CStr(var_220), var_F0)
  loc_1C9147B:       CStr(var_250) = var_E8.Text
  loc_1C91484:       var_C0 = CStr(var_260) & var_F0
  loc_1C91494:     Else
  loc_1C914AC:       Set var_E4 = Me.Txt
  loc_1C914B2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_C0 & "','")
  loc_1C914BA:       CStr(var_270) = var_E8.Text
  loc_1C914C3:       var_C0 = var_D90 & var_F0
  loc_1C914D4:     End If
  loc_1C914E2:     Set var_E4 = Me.Txt
  loc_1C914E8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E8, var_F0)
  loc_1C914F0:     var_EA0 = var_E8.Tag
  loc_1C914F8:     var_C4 = var_F0
  loc_1C91506:     var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C9150B:     var_134 = 2
  loc_1C91529:     var_F0 = CStr(Me.FGrid.TextMatrix))
  loc_1C9153A:     If (var_F0 = "Room") Then
  loc_1C9153D:       var_1A4 = " ROOM ADJUSTMENT ("
  loc_1C9154E:       var_134 = CVar(CLng(&H13)) 'Long
  loc_1C91584:       var_C8 = CStr(var_134 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ")")
  loc_1C9159D:       var_9A = (var_9A + 1)
  loc_1C915AE:       Set var_E4 = Me.Txt
  loc_1C915B4:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_9A, CVar(CLng(var_9C)))
  loc_1C915BC:       var_1A4 = var_E8.Text
  loc_1C915DC:       Set var_EC = Me.Txt
  loc_1C915E2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_188, var_134)
  loc_1C915F1:       Proc_6_7_F26918(var_220, CVar(var_188))
  loc_1C9162C:       Set var_18C = Me.Txt
  loc_1C91632:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_294, var_298, 1)
  loc_1C9163A:       1 = var_294.Tag
  loc_1C91643:       var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C9164B:       var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C9166A:       var_33C = CVar(CLng(var_9C)) 'Long
  loc_1C91672:       var_35C = CVar(CLng(&H15)) 'Long
  loc_1C91691:       var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C91696:       var_430 = 1
  loc_1C916A3:       Set var_444 = Me.FGrid
  loc_1C916B9:       var_4A4 = CVar(CLng(var_9C)) 'Long
  loc_1C916BE:       var_4C4 = 2
  loc_1C916E1:       var_538 = CVar(CLng(var_9C)) 'Long
  loc_1C916E9:       var_578 = CVar(CLng(9)) 'Long
  loc_1C91703:       var_5C0 = CStr(Me.FGrid.TextMatrix))
  loc_1C91712:       var_5D0 = CVar(CLng(var_9C)) 'Long
  loc_1C9171A:       var_610 = CVar(CLng(&H12)) 'Long
  loc_1C91743:       var_684 = CVar(CLng(var_9C)) 'Long
  loc_1C91748:       var_6C4 = 5
  loc_1C9176B:       var_738 = CVar(CLng(var_9C)) 'Long
  loc_1C91770:       var_768 = 6
  loc_1C91793:       var_7CC = CVar(CLng(var_9C)) 'Long
  loc_1C9179B:       var_838 = CVar(CLng(7)) 'Long
  loc_1C917BA:       var_868 = CVar(CLng(var_9C)) 'Long
  loc_1C917C2:       var_8CC = CVar(CLng(&H17)) 'Long
  loc_1C917F8:       var_89C = Me.FGrid.TextMatrix)
  loc_1C91819:       Set var_900 = Me.FGrid
  loc_1C9181F:       var_930 = var_900.TextMatrix)
  loc_1C91846:       var_9C4 = Me.FGrid.TextMatrix)
  loc_1C9186D:       var_A58 = Me.FGrid.TextMatrix)
  loc_1C9187E:       Proc_6_7_F26918(var_A88, CVar(CStr(var_A58)), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9C4, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_930)
  loc_1C9189E:       var_AFC = Me.FGrid.TextMatrix)
  loc_1C918AF:       Proc_6_17_EAAE40(var_B2C, CVar(CStr(var_AFC)), CVar(CLng(&H1B)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1C918CF:       var_BA0 = Me.FGrid.TextMatrix)
  loc_1C918E0:       Proc_6_7_F26918(var_BD0, CVar(CStr(var_BA0)), CVar(CLng(&HC)), CVar(CLng(var_9C)), var_89C)
  loc_1C918F3:       Proc_6_7_F26918(var_C60, Date, CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_1C918FC:       var_DE0 = CVar(CLng(var_9C)) 'Long
  loc_1C91904:       var_E24 = CVar(CLng(&H19)) 'Long
  loc_1C91913:       var_D34 = Me.FGrid.TextMatrix)
  loc_1C91933:       var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LogSite_Code) Values ('" & var_F0
  loc_1C91982:       var_164 = CVar(var_178 & "'," & CStr(var_9A) & ",'" & global_56 & "','" & CStr(global_108) & "','" & MemVar_1F95070 & "','") 'String
  loc_1C919C7:       var_2C8 = var_164 & Trim(CVar(Me.LblVPrefix)) & "'," & var_220 & ",'" & CVar(Format$(Time, "HH:mm")) & "','" & CVar(var_298) & "','" 
  loc_1C91A0D:       var_474 = var_2C8 & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(var_C8) & "','" & CVar(CStr(var_444.TextMatrix))) 
  loc_1C91A49:       var_600 = var_474 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(var_5C0)) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C91A8E:       var_7DC = var_600 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C91ADE:       var_A38 = var_7DC & "'," & CVar(CStr(Me.FGrid.TextMatrix))) & ",'" & CVar(CStr(var_89C)) & "','" & CVar(CStr(var_930)) & "','" & CVar(CStr(var_9C4)) 
  loc_1C91B2A:       var_C30 = var_A38 & "'," & var_A88 & "," & var_B2C & "," & var_BD0 & ",'" & CVar(MemVar_1F950C8) & "'," 
  loc_1C91B74:       var_DA0 = var_C30 & var_C60 & ",'A','" & CVar(MemVar_1F95078) & "FOM','" & CVar(CStr(var_D34)) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_1C91B82:       unk_544EAC.Execute CStr(var_DA0), var_DB0, -1
  loc_1C91CA6:     End If
  loc_1C91CA9:   Else
  loc_1C91CD0:     var_F0 = CStr(Me.FGrid.TextMatrix))
  loc_1C91CE1:     If (var_F0 = "Cr") Then
  loc_1C91CEA:       global_56 = "REV"
  loc_1C91CF4:       Call Proc_61_48_10AE728(MemVar_1F95044, var_F0, 3, CVar(CLng(var_9C)), var_D88, var_D34)
  loc_1C91CFE:       var_9A = 1
  loc_1C91D0F:       Set var_E4 = Me.Txt
  loc_1C91D15:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E8, var_F0, var_9A, var_E24)
  loc_1C91D1D:       var_DE0 = var_E8.Tag
  loc_1C91D26:       var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C91D2B:       var_134 = 1
  loc_1C91D38:       Set var_EC = Me.FGrid
  loc_1C91D75:       var_1C4 = CVar("Select * from PlanDetails where docid='" & var_F0 & "' and Revcode='") & Trim(CVar(CStr(var_EC.TextMatrix)))) 
  loc_1C91D8C:       unk_544EAC.Execute CStr(var_1C4 & "'"), var_220, -1
  loc_1C91D97:       Set var_A8 = var_188
  loc_1C91DD3:       If (var_A8.RecordCount > 0) Then
  loc_1C91DD9:         var_CC = "Yes"
  loc_1C91DE0:         var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C91DE8:         var_134 = CVar(CLng(9)) 'Long
  loc_1C91E52:         If (var_A8.Fields.Item("TaxInc").Value = "Yes") Then
  loc_1C91E9E:           var_174 = "SELECT * FROM REVMAST WHERE CODE='" & Trim(CVar(var_A8.Fields.Item("RevCode"))) & "'" 
  loc_1C91EAC:           unk_544EAC.Execute CStr(var_174), var_1C4, -1
  loc_1C91EB7:           Set var_DC = var_EC
  loc_1C91EE5:           If (var_DC.RecordCount > 0) Then
  loc_1C91EF5:             var_124 = "Select sum(TaxStru.Rate) as Rate from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='"
  loc_1C91F31:             var_F0 = CStr(var_124 & var_DC.Fields.Item("TaxStru").Value & "' Group By Taxstru.Nature ")
  loc_1C91F3B:             unk_544EAC.Execute var_F0, var_174, -1
  loc_1C91F46:             Set var_D0 = var_EC
  loc_1C91F74:             If (var_D0.RecordCount > 0) Then
  loc_1C91F7D:               var_114 = "Rate"
  loc_1C91F91:               var_E8 = var_D0.Fields.Item(var_114)
  loc_1C91FA6:               var_134 = CVar(Val(CStr(Me.FGrid.TextMatrix)))) 'Double
  loc_1C91FB2:               var_154 = (100 + var_E8.Value)
  loc_1C91FD6:               var_D8 = CSng(Round(((var_134 / 100 & var_DC.Fields.Item("TaxStru").Value) * 100), 2))
  loc_1C91FEB:             End If
  loc_1C91FEB:           End If
  loc_1C91FF9:           Set var_E4 = Me.Txt
  loc_1C91FFF:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_D8, var_EC, var_EC)
  loc_1C92007:           var_D8 = var_E8.Text
  loc_1C92027:           Set var_EC = Me.Txt
  loc_1C9202D:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_188, var_134, var_114)
  loc_1C9203C:           Proc_6_7_F26918(var_220, CVar(var_188), var_188)
  loc_1C92077:           Set var_18C = Me.Txt
  loc_1C9207D:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_294, var_298, 1)
  loc_1C92085:           1 = var_294.Tag
  loc_1C9208E:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C92096:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C9209F:           Set var_2DC = Me.FGrid
  loc_1C920A5:           var_2EC = var_2DC.TextMatrix)
  loc_1C920BF:           Set var_370 = Me.Txt
  loc_1C920C5:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_444, var_5C0, var_2EC)
  loc_1C920CD:           var_1F4 = var_444.Tag
  loc_1C920D6:           var_34C = CVar(CLng(var_9C)) 'Long
  loc_1C920DE:           var_36C = CVar(CLng(&HF)) 'Long
  loc_1C920FD:           var_3F0 = CVar(CLng(var_9C)) 'Long
  loc_1C92102:           var_420 = 1
  loc_1C92125:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C9212D:           var_4B4 = CVar(CLng(9)) 'Long
  loc_1C92166:           var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C9216E:           var_598 = CVar(CLng(&H12)) 'Long
  loc_1C92188:           var_E14 = CStr(Me.FGrid.TextMatrix))
  loc_1C92197:           var_610 = CVar(CLng(var_9C)) 'Long
  loc_1C9219C:           var_630 = 5
  loc_1C921AF:           var_654 = Me.FGrid.TextMatrix)
  loc_1C921C4:           var_6E4 = 6
  loc_1C921D7:           var_708 = Me.FGrid.TextMatrix)
  loc_1C921FE:           var_79C = Me.FGrid.TextMatrix)
  loc_1C92218:           Set var_86C = Me.Txt
  loc_1C9221E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_900, var_E3C, var_79C, CVar(CLng(7)), CVar(CLng(var_9C)), var_708)
  loc_1C92226:           var_6E4 = var_900.Text
  loc_1C92246:           var_87C = Me.FGrid.TextMatrix)
  loc_1C9226D:           var_910 = Me.FGrid.TextMatrix)
  loc_1C92294:           var_9A4 = Me.FGrid.TextMatrix)
  loc_1C922B5:           Set var_B70 = Me.FGrid
  loc_1C922BB:           var_A38 = var_B70.TextMatrix)
  loc_1C922CC:           Proc_6_7_F26918(var_A58, CVar(CStr(var_A38)), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9A4, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_910)
  loc_1C922EC:           var_ADC = Me.FGrid.TextMatrix)
  loc_1C922FD:           Proc_6_17_EAAE40(var_AFC, CVar(CStr(var_ADC)), CVar(CLng(&H1B)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1C9231D:           var_B80 = Me.FGrid.TextMatrix)
  loc_1C9232E:           Proc_6_7_F26918(var_BA0, CVar(CStr(var_B80)), CVar(CLng(&HC)), CVar(CLng(var_9C)), var_87C)
  loc_1C92341:           Proc_6_7_F26918(var_C30, Date, CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_1C9238B:           Set var_F04 = Me.Txt
  loc_1C92391:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_F08, var_E58)
  loc_1C923B2:           var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FixedChargeCode,FolioNoDocid,LogSite_Code) Values ('" & var_F0
  loc_1C923C1:           var_180 = CStr(var_9A)
  loc_1C923C5:           var_184 = var_178 & "'," & var_180
  loc_1C923D6:           var_1FC = var_184 & ",'" & global_56
  loc_1C923EC:           var_208 = var_1FC & "','" & CStr(global_108)
  loc_1C9242A:           var_280 = CVar(var_208 & "','" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_220 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1C92478:           var_400 = var_280 & "','" & CVar(var_298) & "','" & CVar(CStr(var_2EC)) & "','" & CVar(var_5C0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C924B4:           var_548 = var_400 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_D8))) 
  loc_1C9250D:           var_7BC = var_548 & "," & CVar(Val(var_E14)) & ",'" & CVar(CStr(var_F08.Tag)) & "'," & "'" & CVar(CStr(var_708)) & "','" & CVar(CStr(var_79C)) 
  loc_1C9255C:           var_9C4 = var_7BC & "'," & CVar(var_E3C) & ",'" & CVar(CStr(var_87C)) & "','" & CVar(CStr(var_910)) & "','" & CVar(CStr(var_9A4)) 
  loc_1C925A8:           var_C10 = var_9C4 & "'," & var_A58 & "," & var_AFC & "," & var_BA0 & ",'" & CVar(MemVar_1F950C8) & "'," 
  loc_1C925D5:           var_CE0 = var_C10 & var_C30 & ",'A','" & CVar(MemVar_1F95078) & "FOM','" & CVar(Proc_6_38_E69628(var_CC, CVar(CLng(var_9C)))) 
  loc_1C92614:           var_DF0 = var_CE0 & "','" & var_A8.Fields.Item("ChrgCode").Value & "','" & CVar(var_E58) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_1C92622:           unk_544EAC.Execute CStr(var_DF0), var_E10, -1
  loc_1C9275E:           var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C92763:           var_134 = 1
  loc_1C92776:           var_104 = Me.FGrid.TextMatrix)
  loc_1C92790:           Set var_E8 = Me.Txt
  loc_1C92796:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_1FC, var_104)
  loc_1C9279E:           var_134 = var_EC.Text
  loc_1C927C1:           Set var_188 = Me.Txt
  loc_1C927C7:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_18C, var_208)
  loc_1C927CF:           var_114 = var_18C.Text
  loc_1C927FF:           var_220 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_1C92812:           Set var_294 = Me.Txt
  loc_1C92818:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2DC, var_F0, 1)
  loc_1C92820:           1 = var_2DC.Tag
  loc_1C92829:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C92831:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C92851:           var_250 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C9285A:           var_31C = CVar(CLng(var_9C)) 'Long
  loc_1C9285F:           var_34C = 1
  loc_1C9286C:           Set var_444 = Me.FGrid
  loc_1C92872:           var_260 = var_444.TextMatrix)
  loc_1C92882:           var_36C = CVar(CLng(var_9C)) 'Long
  loc_1C92887:           var_3D0 = 1
  loc_1C9289A:           var_270 = Me.FGrid.TextMatrix)
  loc_1C928AA:           var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C928B2:           var_430 = CVar(CLng(9)) 'Long
  loc_1C928D4:           var_EA0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C928DB:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C928E3:           var_4B4 = CVar(CLng(&H12)) 'Long
  loc_1C92905:           var_EA8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C9290C:           var_4D4 = CVar(CLng(var_9C)) 'Long
  loc_1C92911:           var_538 = 5
  loc_1C92935:           var_2C8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C9293E:           var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C92967:           var_30C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C929A1:           Set var_7E4 = Me.Txt
  loc_1C929A7:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_86C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1C929AF:           var_578 = var_86C.Text
  loc_1C929BC:           var_EB0 = Val(var_180)
  loc_1C929C3:           var_630 = CVar(CLng(var_9C)) 'Long
  loc_1C929D4:           Set var_900 = Me.FGrid
  loc_1C929F2:           var_6E4 = CVar(CLng(&HB)) 'Long
  loc_1C92A37:           var_3C0 = Date
  loc_1C92A3F:           var_3E0 = Date
  loc_1C92A47:           var_400 = Date
  loc_1C92A5A:           Set var_ACC = Me.Txt
  loc_1C92A60:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B70, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1C92A68:           var_6E4 = var_B70.Tag
  loc_1C92A95:           var_F10 = Proc_6_38_E69628(CVar(var_A8.Fields.Item("ChrgCode")), CVar(CLng(var_9C)), var_900.TextMatrix), CVar(CLng(&HA)))
  loc_1C92A9D:           var_E98 = 0
  loc_1C92AA8:           var_E94 = 0
  loc_1C92AD5:           var_E80 = "A"
  loc_1C92B44:           var_D90 = vbNullString
  loc_1C92BA3:           Proc_96_8_1CC4F08(CStr(var_104), var_1FC, var_9A, global_56, global_108, MemVar_1F95070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_208))
  loc_1C92C4E:         Else
  loc_1C92C5C:           Set var_E4 = Me.Txt
  loc_1C92C62:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, CStr(var_220), var_F0, CStr(var_250))
  loc_1C92C6A:           CStr(var_260) = var_E8.Text
  loc_1C92C8A:           Set var_EC = Me.Txt
  loc_1C92C90:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_188, CStr(var_270))
  loc_1C92C9F:           Proc_6_7_F26918(var_220, CVar(var_188), var_D90)
  loc_1C92CDA:           Set var_18C = Me.Txt
  loc_1C92CE0:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_294, var_298, 1)
  loc_1C92CE8:           1 = var_294.Tag
  loc_1C92CF1:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C92CF9:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C92D02:           Set var_2DC = Me.FGrid
  loc_1C92D08:           var_2EC = var_2DC.TextMatrix)
  loc_1C92D22:           Set var_370 = Me.Txt
  loc_1C92D28:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_444, var_5C0, var_2EC)
  loc_1C92D30:           var_1F4 = var_444.Tag
  loc_1C92D39:           var_34C = CVar(CLng(var_9C)) 'Long
  loc_1C92D41:           var_36C = CVar(CLng(&HF)) 'Long
  loc_1C92D60:           var_3F0 = CVar(CLng(var_9C)) 'Long
  loc_1C92D65:           var_420 = 1
  loc_1C92D88:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C92D90:           var_4B4 = CVar(CLng(9)) 'Long
  loc_1C92DB9:           var_538 = CVar(CLng(var_9C)) 'Long
  loc_1C92DC1:           var_578 = CVar(CLng(&H12)) 'Long
  loc_1C92DEA:           var_5D0 = CVar(CLng(var_9C)) 'Long
  loc_1C92DEF:           var_610 = 5
  loc_1C92E02:           var_5E0 = Me.FGrid.TextMatrix)
  loc_1C92E17:           var_6C4 = 6
  loc_1C92E2A:           var_694 = Me.FGrid.TextMatrix)
  loc_1C92E51:           var_728 = Me.FGrid.TextMatrix)
  loc_1C92E6B:           Set var_86C = Me.Txt
  loc_1C92E71:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_900, var_E14, var_728, CVar(CLng(7)), CVar(CLng(var_9C)), var_694)
  loc_1C92E79:           var_6C4 = var_900.Text
  loc_1C92E99:           var_808 = Me.FGrid.TextMatrix)
  loc_1C92EC0:           var_89C = Me.FGrid.TextMatrix)
  loc_1C92EE7:           var_930 = Me.FGrid.TextMatrix)
  loc_1C92F08:           Set var_B70 = Me.FGrid
  loc_1C92F1F:           Proc_6_7_F26918(var_A38, CVar(CStr(var_B70.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_930, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_89C)
  loc_1C92F50:           Proc_6_17_EAAE40(var_ADC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1C92F81:           Proc_6_7_F26918(var_B80, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), var_808)
  loc_1C92F94:           Proc_6_7_F26918(var_C10, Date, CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_1C92FC0:           var_E38 = var_A8.Fields.Item("ChrgCode")
  loc_1C92FE2:           Set var_F04 = Me.Txt
  loc_1C92FE8:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_F08)
  loc_1C92FF0:           var_E3C = var_F08.Tag
  loc_1C93009:           var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FixedChargeCode,FolioNoDocid,LogSite_Code) Values ('" & var_F0
  loc_1C93018:           var_180 = CStr(var_9A)
  loc_1C9301C:           var_184 = var_178 & "'," & var_180
  loc_1C9302D:           var_1FC = var_184 & ",'" & global_56
  loc_1C93043:           var_208 = var_1FC & "','" & CStr(global_108)
  loc_1C93081:           var_280 = CVar(var_208 & "','" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_220 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1C930CF:           var_400 = var_280 & "','" & CVar(var_298) & "','" & CVar(CStr(var_2EC)) & "','" & CVar(var_5C0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C9310B:           var_568 = var_400 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C93163:           var_7DC = var_568 & ",'" & CVar(CStr(var_5E0)) & "'," & "'" & CVar(CStr(var_694)) & "','" & CVar(CStr(var_728)) & "'," & CVar(var_E14) 
  loc_1C931B8:           var_A58 = var_7DC & ",'" & CVar(CStr(var_808)) & "','" & CVar(CStr(var_89C)) & "','" & CVar(CStr(var_930)) & "'," & var_A38 & "," 
  loc_1C931C8:           var_AFC = var_A58 & var_ADC & "," 
  loc_1C931D8:           var_BA0 = var_AFC & var_B80 & ",'" 
  loc_1C931FB:           var_C30 = var_BA0 & CVar(MemVar_1F950C8) & "'," & var_C10 & ",'A','" 
  loc_1C9322B:           var_D44 = var_C30 & CVar(MemVar_1F95078) & "FOM','" & CVar(Proc_6_38_E69628(var_CC, CVar(CLng(var_9C)))) & "','" & CVar(Proc_6_38_E69628(CVar(var_E38), var_5E0)) 
  loc_1C93251:           var_DB0 = var_D44 & "','" & CVar(var_E3C) & "','" & CVar(MemVar_1F95078) 
  loc_1C93268:           unk_544EAC.Execute CStr(var_DB0 & "')"), var_DF0, -1
  loc_1C933A0:           var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C933A5:           var_134 = 1
  loc_1C933B8:           var_104 = Me.FGrid.TextMatrix)
  loc_1C933D2:           Set var_E8 = Me.Txt
  loc_1C933D8:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_1FC, var_104)
  loc_1C933E0:           var_134 = var_EC.Text
  loc_1C93403:           Set var_188 = Me.Txt
  loc_1C93409:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_18C, var_208)
  loc_1C93411:           var_114 = var_18C.Text
  loc_1C9343B:           var_1E4 = CVar(Format$(Time, "HH:mm")) 'String
  loc_1C93441:           var_220 = Trim(var_1E4)
  loc_1C93454:           Set var_294 = Me.Txt
  loc_1C9345A:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2DC, var_F0, 1)
  loc_1C93462:           1 = var_2DC.Tag
  loc_1C9346B:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C93473:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C93493:           var_250 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C9349C:           var_31C = CVar(CLng(var_9C)) 'Long
  loc_1C934A1:           var_34C = 1
  loc_1C934AE:           Set var_444 = Me.FGrid
  loc_1C934B4:           var_260 = var_444.TextMatrix)
  loc_1C934C4:           var_36C = CVar(CLng(var_9C)) 'Long
  loc_1C934C9:           var_3D0 = 1
  loc_1C934DC:           var_270 = Me.FGrid.TextMatrix)
  loc_1C934EC:           var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C934F4:           var_430 = CVar(CLng(9)) 'Long
  loc_1C93516:           var_EA0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C9351D:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C93525:           var_4B4 = CVar(CLng(&H12)) 'Long
  loc_1C93547:           var_EA8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C9354E:           var_4D4 = CVar(CLng(var_9C)) 'Long
  loc_1C93553:           var_538 = 5
  loc_1C93577:           var_2C8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C93580:           var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C935A9:           var_30C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C935E3:           Set var_7E4 = Me.Txt
  loc_1C935E9:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_86C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1C935F1:           var_578 = var_86C.Text
  loc_1C935FE:           var_EB0 = Val(var_180)
  loc_1C93605:           var_630 = CVar(CLng(var_9C)) 'Long
  loc_1C93616:           Set var_900 = Me.FGrid
  loc_1C93634:           var_6E4 = CVar(CLng(&HB)) 'Long
  loc_1C93679:           var_3C0 = Date
  loc_1C93681:           var_3E0 = Date
  loc_1C93689:           var_400 = Date
  loc_1C9369C:           Set var_ACC = Me.Txt
  loc_1C936A2:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B70, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1C936AA:           var_6E4 = var_B70.Tag
  loc_1C936D7:           var_F10 = Proc_6_38_E69628(CVar(var_A8.Fields.Item("ChrgCode")), CVar(CLng(var_9C)), var_900.TextMatrix), CVar(CLng(&HA)))
  loc_1C936DF:           var_E98 = 0
  loc_1C936EA:           var_E94 = 0
  loc_1C93717:           var_E80 = "A"
  loc_1C93786:           var_D90 = vbNullString
  loc_1C937E5:           Proc_96_8_1CC4F08(CStr(var_104), var_1FC, var_9A, global_56, global_108, MemVar_1F95070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_208))
  loc_1C9388D:         End If
  loc_1C93890:       Else
  loc_1C93893:         var_CC = vbNullString
  loc_1C9389A:         var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C938A2:         var_134 = CVar(CLng(9)) 'Long
  loc_1C938D4:         var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C938DC:         var_134 = CVar(CLng(&H1A)) 'Long
  loc_1C93907:         If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1C9390E:           var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C93913:           var_134 = 1
  loc_1C93951:           var_174 = "SELECT * FROM REVMAST WHERE CODE='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C93968:           unk_544EAC.Execute CStr(var_174 & "'"), var_1E4, -1
  loc_1C93973:           Set var_DC = var_E8
  loc_1C939A3:           If (var_DC.RecordCount > 0) Then
  loc_1C939B3:             var_124 = "Select sum(TaxStru.Rate) as Rate from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='"
  loc_1C939EF:             var_F0 = CStr(var_124 & var_DC.Fields.Item("TaxStru").Value & "' Group By Taxstru.Nature ")
  loc_1C939F9:             unk_544EAC.Execute var_F0, var_174, -1
  loc_1C93A04:             Set var_D0 = var_EC
  loc_1C93A32:             If (var_D0.RecordCount > 0) Then
  loc_1C93A3B:               var_114 = "Rate"
  loc_1C93A4F:               var_E8 = var_D0.Fields.Item(var_114)
  loc_1C93A70:               var_154 = (100 + var_E8.Value)
  loc_1C93A94:               var_D8 = CSng(Round(((CVar(Val(CStr(Me.FGrid.TextMatrix)))) / 100 & var_DC.Fields.Item("TaxStru").Value) * 100), 2))
  loc_1C93AA9:             End If
  loc_1C93AA9:           End If
  loc_1C93AB7:           Set var_E4 = Me.Txt
  loc_1C93ABD:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_D8, var_EC, var_E8)
  loc_1C93AE5:           Set var_EC = Me.Txt
  loc_1C93AEB:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_188, var_114, var_E8.Text)
  loc_1C93AFA:           Proc_6_7_F26918(var_220, CVar(var_188), var_114)
  loc_1C93B35:           Set var_18C = Me.Txt
  loc_1C93B3B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_294, var_298, 1)
  loc_1C93B43:           1 = var_294.Tag
  loc_1C93B4C:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C93B54:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C93B5D:           Set var_2DC = Me.FGrid
  loc_1C93B63:           var_2EC = var_2DC.TextMatrix)
  loc_1C93B7D:           Set var_370 = Me.Txt
  loc_1C93B83:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_444, var_5C0, var_2EC)
  loc_1C93B8B:           var_1F4 = var_444.Tag
  loc_1C93B94:           var_34C = CVar(CLng(var_9C)) 'Long
  loc_1C93B9C:           var_36C = CVar(CLng(&HF)) 'Long
  loc_1C93BBB:           var_3F0 = CVar(CLng(var_9C)) 'Long
  loc_1C93BC0:           var_420 = 1
  loc_1C93BE3:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C93BEB:           var_4B4 = CVar(CLng(9)) 'Long
  loc_1C93C14:           var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C93C1C:           var_598 = CVar(CLng(&H12)) 'Long
  loc_1C93C45:           var_610 = CVar(CLng(var_9C)) 'Long
  loc_1C93C4A:           var_630 = 5
  loc_1C93C5D:           var_654 = Me.FGrid.TextMatrix)
  loc_1C93C72:           var_6E4 = 6
  loc_1C93C85:           var_708 = Me.FGrid.TextMatrix)
  loc_1C93CAC:           var_79C = Me.FGrid.TextMatrix)
  loc_1C93CC6:           Set var_86C = Me.Txt
  loc_1C93CCC:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_900, var_E14, var_79C, CVar(CLng(7)), CVar(CLng(var_9C)), var_708)
  loc_1C93CD4:           var_6E4 = var_900.Text
  loc_1C93CF4:           var_87C = Me.FGrid.TextMatrix)
  loc_1C93D1B:           var_910 = Me.FGrid.TextMatrix)
  loc_1C93D42:           var_9A4 = Me.FGrid.TextMatrix)
  loc_1C93D63:           Set var_B70 = Me.FGrid
  loc_1C93D7A:           Proc_6_7_F26918(var_A58, CVar(CStr(var_B70.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9A4, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_910)
  loc_1C93DAB:           Proc_6_17_EAAE40(var_AFC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1C93DDC:           Proc_6_7_F26918(var_BA0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), var_87C)
  loc_1C93DEF:           Proc_6_7_F26918(var_C30, Date, CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_1C93E12:           Set var_D8C = Me.Txt
  loc_1C93E18:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E38, var_E3C)
  loc_1C93E39:           var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FolioNoDocid,LogSite_Code) Values ('" & var_F0
  loc_1C93E48:           var_180 = CStr(var_9A)
  loc_1C93E4C:           var_184 = var_178 & "'," & var_180
  loc_1C93E5D:           var_1FC = var_184 & ",'" & global_56
  loc_1C93E73:           var_208 = var_1FC & "','" & CStr(global_108)
  loc_1C93EB1:           var_280 = CVar(var_208 & "','" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_220 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1C93EFF:           var_400 = var_280 & "','" & CVar(var_298) & "','" & CVar(CStr(var_2EC)) & "','" & CVar(var_5C0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C93F3B:           var_548 = var_400 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_D8) 
  loc_1C93F80:           var_728 = var_548 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_E38.Tag)) & "'," & "'" & CVar(CStr(var_708)) 
  loc_1C93FCF:           var_930 = var_728 & "','" & CVar(CStr(var_79C)) & "'," & CVar(var_E14) & ",'" & CVar(CStr(var_87C)) & "','" & CVar(CStr(var_910)) 
  loc_1C94026:           var_BF0 = var_930 & "','" & CVar(CStr(var_9A4)) & "'," & var_A58 & "," & var_AFC & "," & var_BA0 & ",'" & CVar(MemVar_1F950C8) 
  loc_1C9405C:           var_CE0 = var_BF0 & "'," & var_C30 & ",'A','" & CVar(MemVar_1F95078) & "FOM','" & CVar(Proc_6_38_E69628(var_CC, CVar(CLng(var_9C)))) 
  loc_1C94099:           unk_544EAC.Execute CStr(var_CE0 & "','" & CVar(var_E3C) & "','" & CVar(MemVar_1F95078) & "')"), var_DB0, -1
  loc_1C941C9:           var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C941CE:           var_134 = 1
  loc_1C941E1:           var_104 = Me.FGrid.TextMatrix)
  loc_1C941FB:           Set var_E8 = Me.Txt
  loc_1C94201:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_1FC, var_104)
  loc_1C94209:           var_134 = var_EC.Text
  loc_1C9422C:           Set var_188 = Me.Txt
  loc_1C94232:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_18C, var_208)
  loc_1C9423A:           var_114 = var_18C.Text
  loc_1C9426A:           var_220 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_1C9427D:           Set var_294 = Me.Txt
  loc_1C94283:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2DC, var_F0, 1)
  loc_1C9428B:           1 = var_2DC.Tag
  loc_1C94294:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C9429C:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C942BC:           var_250 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C942C5:           var_31C = CVar(CLng(var_9C)) 'Long
  loc_1C942CA:           var_34C = 1
  loc_1C942D7:           Set var_444 = Me.FGrid
  loc_1C942DD:           var_260 = var_444.TextMatrix)
  loc_1C942ED:           var_36C = CVar(CLng(var_9C)) 'Long
  loc_1C942F2:           var_3D0 = 1
  loc_1C94305:           var_270 = Me.FGrid.TextMatrix)
  loc_1C94315:           var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C9431D:           var_430 = CVar(CLng(9)) 'Long
  loc_1C9433F:           var_EA0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C94346:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C9434E:           var_4B4 = CVar(CLng(&H12)) 'Long
  loc_1C94370:           var_EA8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C94377:           var_4D4 = CVar(CLng(var_9C)) 'Long
  loc_1C9437C:           var_538 = 5
  loc_1C943A0:           var_2C8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C943A9:           var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C943D2:           var_30C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C9440C:           Set var_7E4 = Me.Txt
  loc_1C94412:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_86C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1C9441A:           var_578 = var_86C.Text
  loc_1C94427:           var_EB0 = Val(var_180)
  loc_1C9442E:           var_630 = CVar(CLng(var_9C)) 'Long
  loc_1C94436:           var_684 = CVar(CLng(&HA)) 'Long
  loc_1C9443F:           Set var_900 = Me.FGrid
  loc_1C94445:           var_380 = var_900.TextMatrix)
  loc_1C94455:           var_6C4 = CVar(CLng(var_9C)) 'Long
  loc_1C9445D:           var_6E4 = CVar(CLng(&HB)) 'Long
  loc_1C944A2:           var_3C0 = Date
  loc_1C944AA:           var_3E0 = Date
  loc_1C944B2:           var_400 = Date
  loc_1C944C5:           Set var_ACC = Me.Txt
  loc_1C944CB:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B70, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1C944D3:           var_6E4 = var_B70.Tag
  loc_1C944DD:           var_E98 = 0
  loc_1C944E8:           var_E94 = 0
  loc_1C944FB:           var_E8C = 0
  loc_1C94519:           var_E80 = "A"
  loc_1C94588:           var_D90 = vbNullString
  loc_1C945E7:           Proc_96_8_1CC4F08(CStr(var_104), var_1FC, var_9A, global_56, global_108, MemVar_1F95070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_208))
  loc_1C9468C:         Else
  loc_1C9469A:           Set var_E4 = Me.Txt
  loc_1C946A0:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, CStr(var_220), var_F0, CStr(var_250))
  loc_1C946A8:           CStr(var_260) = var_E8.Text
  loc_1C946C8:           Set var_EC = Me.Txt
  loc_1C946CE:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_188, CStr(var_270))
  loc_1C946DD:           Proc_6_7_F26918(var_220, CVar(var_188), var_D90)
  loc_1C94718:           Set var_18C = Me.Txt
  loc_1C9471E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_294, var_298, 1)
  loc_1C94726:           1 = var_294.Tag
  loc_1C9472F:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C94737:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C94740:           Set var_2DC = Me.FGrid
  loc_1C94746:           var_2EC = var_2DC.TextMatrix)
  loc_1C94760:           Set var_370 = Me.Txt
  loc_1C94766:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_444, var_5C0, var_2EC)
  loc_1C9476E:           var_1F4 = var_444.Tag
  loc_1C94777:           var_34C = CVar(CLng(var_9C)) 'Long
  loc_1C9477F:           var_36C = CVar(CLng(&HF)) 'Long
  loc_1C9479E:           var_3F0 = CVar(CLng(var_9C)) 'Long
  loc_1C947A3:           var_420 = 1
  loc_1C947C6:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C947CE:           var_4B4 = CVar(CLng(9)) 'Long
  loc_1C947F7:           var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C947FF:           var_598 = CVar(CLng(&H12)) 'Long
  loc_1C94828:           var_610 = CVar(CLng(var_9C)) 'Long
  loc_1C9482D:           var_630 = 5
  loc_1C94840:           var_654 = Me.FGrid.TextMatrix)
  loc_1C94855:           var_6E4 = 6
  loc_1C94868:           var_708 = Me.FGrid.TextMatrix)
  loc_1C9488F:           var_79C = Me.FGrid.TextMatrix)
  loc_1C948A9:           Set var_86C = Me.Txt
  loc_1C948AF:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_900, var_E14, var_79C, CVar(CLng(7)), CVar(CLng(var_9C)), var_708)
  loc_1C948B7:           var_6E4 = var_900.Text
  loc_1C948D7:           var_87C = Me.FGrid.TextMatrix)
  loc_1C948FE:           var_910 = Me.FGrid.TextMatrix)
  loc_1C94925:           var_9A4 = Me.FGrid.TextMatrix)
  loc_1C94946:           Set var_B70 = Me.FGrid
  loc_1C9495D:           Proc_6_7_F26918(var_A58, CVar(CStr(var_B70.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9A4, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_910)
  loc_1C9498E:           Proc_6_17_EAAE40(var_AFC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1C949BF:           Proc_6_7_F26918(var_BA0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), var_87C)
  loc_1C949D2:           Proc_6_7_F26918(var_C30, Date, CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_1C949F5:           Set var_D8C = Me.Txt
  loc_1C949FB:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E38, var_E3C)
  loc_1C94A1C:           var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FolioNoDocid,LogSite_Code) Values ('" & var_F0
  loc_1C94A2B:           var_180 = CStr(var_9A)
  loc_1C94A2F:           var_184 = var_178 & "'," & var_180
  loc_1C94A36:           var_1F8 = var_184 & ",'"
  loc_1C94A40:           var_1FC = var_1F8 & global_56
  loc_1C94A56:           var_208 = var_1FC & "','" & CStr(global_108)
  loc_1C94A94:           var_280 = CVar(var_208 & "','" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_220 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1C94AE2:           var_400 = var_280 & "','" & CVar(var_298) & "','" & CVar(CStr(var_2EC)) & "','" & CVar(var_5C0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C94B1E:           var_548 = var_400 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_D8) 
  loc_1C94B63:           var_728 = var_548 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_E38.Tag)) & "'," & "'" & CVar(CStr(var_708)) 
  loc_1C94BB2:           var_930 = var_728 & "','" & CVar(CStr(var_79C)) & "'," & CVar(var_E14) & ",'" & CVar(CStr(var_87C)) & "','" & CVar(CStr(var_910)) 
  loc_1C94C09:           var_BF0 = var_930 & "','" & CVar(CStr(var_9A4)) & "'," & var_A58 & "," & var_AFC & "," & var_BA0 & ",'" & CVar(MemVar_1F950C8) 
  loc_1C94C3F:           var_CE0 = var_BF0 & "'," & var_C30 & ",'A','" & CVar(MemVar_1F95078) & "FOM','" & CVar(Proc_6_38_E69628(var_CC, CVar(CLng(var_9C)))) 
  loc_1C94C7C:           unk_544EAC.Execute CStr(var_CE0 & "','" & CVar(var_E3C) & "','" & CVar(MemVar_1F95078) & "')"), var_DB0, -1
  loc_1C94DAC:           var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C94DB1:           var_134 = 1
  loc_1C94DC4:           var_104 = Me.FGrid.TextMatrix)
  loc_1C94DDE:           Set var_E8 = Me.Txt
  loc_1C94DE4:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_1FC, var_104)
  loc_1C94DEC:           var_134 = var_EC.Text
  loc_1C94DF5:           var_154 = CVar(Me.LblVPrefix) 'Address
  loc_1C94E0F:           Set var_188 = Me.Txt
  loc_1C94E15:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_18C, var_208)
  loc_1C94E1D:           var_114 = var_18C.Text
  loc_1C94E47:           var_1E4 = CVar(Format$(Time, "HH:mm")) 'String
  loc_1C94E4D:           var_220 = Trim(var_1E4)
  loc_1C94E60:           Set var_294 = Me.Txt
  loc_1C94E66:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2DC, var_F0, 1)
  loc_1C94E6E:           1 = var_2DC.Tag
  loc_1C94E77:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C94E7F:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C94E9F:           var_250 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C94EA8:           var_31C = CVar(CLng(var_9C)) 'Long
  loc_1C94EAD:           var_34C = 1
  loc_1C94EC0:           var_260 = Me.FGrid.TextMatrix)
  loc_1C94ED0:           var_36C = CVar(CLng(var_9C)) 'Long
  loc_1C94ED5:           var_3D0 = 1
  loc_1C94EE8:           var_270 = Me.FGrid.TextMatrix)
  loc_1C94EF8:           var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C94F00:           var_430 = CVar(CLng(9)) 'Long
  loc_1C94F22:           var_EA0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C94F29:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C94F31:           var_4B4 = CVar(CLng(&H12)) 'Long
  loc_1C94F53:           var_EA8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C94F5A:           var_4D4 = CVar(CLng(var_9C)) 'Long
  loc_1C94F5F:           var_538 = 5
  loc_1C94F83:           var_2C8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C94F8C:           var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C94FB5:           var_30C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C94FEF:           Set var_7E4 = Me.Txt
  loc_1C94FF5:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_86C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1C94FFD:           var_578 = var_86C.Text
  loc_1C9500A:           var_EB0 = Val(var_180)
  loc_1C95011:           var_630 = CVar(CLng(var_9C)) 'Long
  loc_1C95019:           var_684 = CVar(CLng(&HA)) 'Long
  loc_1C95028:           var_380 = Me.FGrid.TextMatrix)
  loc_1C95038:           var_6C4 = CVar(CLng(var_9C)) 'Long
  loc_1C95040:           var_6E4 = CVar(CLng(&HB)) 'Long
  loc_1C95085:           var_3C0 = Date
  loc_1C9508D:           var_3E0 = Date
  loc_1C95095:           var_400 = Date
  loc_1C950A8:           Set var_ACC = Me.Txt
  loc_1C950AE:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B70, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1C950B6:           var_6E4 = var_B70.Tag
  loc_1C950C0:           var_E98 = 0
  loc_1C950CB:           var_E94 = 0
  loc_1C950DE:           var_E8C = 0
  loc_1C950FC:           var_E80 = "A"
  loc_1C9516B:           var_D90 = vbNullString
  loc_1C951CA:           Proc_96_8_1CC4F08(CStr(var_104), var_1FC, var_9A, global_56, global_108, MemVar_1F95070, CStr(Trim(var_154)), CDate(var_208))
  loc_1C9526C:         End If
  loc_1C9526C:       End If
  loc_1C95270:       var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C95278:       var_134 = CVar(CLng(9)) 'Long
  loc_1C95281:       Set var_E4 = Me.FGrid
  loc_1C9529A:       var_E44 = Val(CStr(var_E4.TextMatrix)))
  loc_1C952A4:       var_A4 = (var_A4 + var_E44)
  loc_1C952B0:     End If
  loc_1C952B0:   End If
  loc_1C952C4:   var_F0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1C952EA:   var_164 = CVar(var_F0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_56 & "' And VP.Date_From<=") 'String
  loc_1C95301:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_E8, var_1F8, var_164, var_1E4, -1, var_EC)
  loc_1C95309:   var_A4 = var_E8.Text
  loc_1C95317:   Proc_6_7_F26918(var_154, CVar(var_1F8), var_E44, var_134)
  loc_1C95328:   var_1C4 = " Order By VP.Date_From DESC" & var_154 & " Order By VP.Date_From DESC" 
  loc_1C95336:   unk_544EAC.Execute CStr(var_1C4), CStr(var_220), var_F0
  loc_1C95341:   Set var_8C = var_EC
  loc_1C95382:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1C953B6:     var_184 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(global_108) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1C953D5:     var_164 = CVar(var_184 & MemVar_1F95078 & "') and V_Type='" & global_56 & "' and Date_From=") 'String
  loc_1C953F2:     var_E8 = Me.Recordset15.Fields.Item("Date_From")
  loc_1C953FA:     var_104 = CVar(var_E8) 'Address
  loc_1C95401:     Proc_6_7_F26918(var_154, var_104, var_164, var_1C4)
  loc_1C95409:     var_174 = -1 & var_154 
  loc_1C95417:     unk_544EAC.Execute CStr("Date_From" & var_154), var_EC, CStr(var_250)
  loc_1C95445:   End If
  loc_1C95448: Next var_194 'Integer
  loc_1C95453: unk_544EAC.CommitTrans
  loc_1C9545C: var_86 = CByte(0) 'Byte
  loc_1C95460: Call Proc_61_46_F06FC4()
  loc_1C95470: Me.Requery -1
  loc_1C95475: Call Proc_61_51_121DBB4()
  loc_1C9547F: Set var_94 = Nothing
  loc_1C95487: Set var_8C = Nothing
  loc_1C9548F: Set var_A8 = Nothing
  loc_1C95497: Set var_D0 = Nothing
  loc_1C9549F: Set var_DC = Nothing
  loc_1C954AD: Set var_E4 = Me.Txt
  loc_1C954B3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1C954BB: var_E8.SetFocus
  loc_1C954EC: Proc_6_17_EAAE40(var_104, MemVar_1F95078, "Select PrintRcpt,RcptPrinting from Enviro WHERE LOGSITE_CODE=", var_164)
  loc_1C954F4: var_154 = -1 & var_104 
  loc_1C95502: unk_544EAC.Execute CStr(var_154), var_E4, &HFF
  loc_1C9550D: Set var_A8 = var_E4
  loc_1C9556D: var_E4 = var_A8.Fields
  loc_1C9558A: var_B0 = Proc_6_38_E69628(var_E4.Item(1).Value)
  loc_1C9559D: var_F0 = fdPaymentCharge.ParentForm
  loc_1C955AD: If (var_F0 = "Check Out") Then
  loc_1C955B8:   If (Proc_6_38_E69628(var_A8.Fields.Item(0).Value) <> "Yes") Then
  loc_1C955BB:     GoTo loc_1C956CD
  loc_1C955BE:   End If
  loc_1C955D1:   var_104 = "Want Print Receipt ?"
  loc_1C955ED:   If (MsgBox(var_104, &H24, var_154, var_164, "Want Print Receipt ?" & var_154) = 7) Then
  loc_1C955F0:     GoTo loc_1C956CD
  loc_1C955F3:   End If
  loc_1C955F9:   Call 0.Method_arg_50 (var_F0)
  loc_1C9560B:   Proc_146_2_1317B24(var_C4, var_B0)
  loc_1C95616: Else
  loc_1C9562A:   var_F0 = "SELECT MAX(P.VNO) AS RECTNO,MAX(P.VDATE) AS RECTDATE,MAX(P.PAYTYPE) AS RECTMODE,MAX(P.AMTCR) AS RECTAMT,MAX(P.ROOMNO) AS ROOMNO,MAX(P.FOLIONO) AS GRCNO,MAX(GP.NAME) AS GUESTNAME,MAX(P.BILL_NO) AS BILLNO,MAX(P.SETTLEDATE) AS SETTLEDATE FROM (GUESTPROF GP left join GUESTFOLIO GF ON GF.GUESTPROF=GP.CODE) LEFT JOIN PAYCHARGE P ON GF.DOCID=P.FOLIONODOCID " & " WHERE P.DOCID IN ('"
  loc_1C95641:   unk_544EAC.Execute var_F0 & var_C0 & "') AND P.VTYPE='REC' Group By P.DocId", var_104, -1
  loc_1C95672:   If (var_E4.RecordCount <= 0) Then
  loc_1C95675:     GoTo loc_1C956CD
  loc_1C95678:   End If
  loc_1C956A7:   If (MsgBox("Want Print Receipt ?", &H24, var_154, var_164, "Want Print Receipt ?" & var_154) = 7) Then
  loc_1C956AA:     GoTo loc_1C956CD
  loc_1C956AD:   End If
  loc_1C956B3:   Call 0.Method_arg_50 (var_F0, var_E4)
  loc_1C956C5:   Proc_146_1_1334D58(var_C0, var_B0, var_F0)
  loc_1C956CD:   ' Referenced from:   1C956AA
  loc_1C956CD:   ' Referenced from:   1C95675
  loc_1C956CD: End If
  loc_1C956CD: ' Referenced from: 1C955F0
  loc_1C956CD: ' Referenced from: 1C955BB
  loc_1C956E1: If (fdPaymentCharge.OpenMode = 1) Then
  loc_1C956F1:   Me.Global.Unload Me
  loc_1C956F9:   Exit Sub
  loc_1C956FA: End If
  loc_1C956FA: Exit Sub
  loc_1C956FB: ' Referenced from: 1C8F0E0
  loc_1C95704: If (CInt(var_86) = 1) Then
  loc_1C9570D:   unk_544EAC.RollbackTrans
  loc_1C95712: End If
  loc_1C9571A: Set var_E4 = Err()
  loc_1C95720: Call 0.Method_arg_2C (var_F0, var_F0)
  loc_1C95739: MsgBox(CVar(var_F0), &H10, var_154, var_164, "Want Print Receipt ?" & var_154)
  loc_1C9574C: Exit Sub
End Sub

Private Sub Txt_Change(Index As Integer) 'EEAE2C
  'Data Table: 544E80
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_98 As TextBox
  loc_EEAD6F: var_86 = Index
  loc_EEAD7A: If (var_86 = CInt(5)) Then
  loc_EEAD8A:   Set var_8C = Me.Txt
  loc_EEAD90:   Call 0.Method_Txt_Change0 (Index, var_90)
  loc_EEADAB:   Set var_94 = Me.Txt
  loc_EEADB1:   Call 0.Method_Txt_Change0 (CInt(&H29), var_98)
  loc_EEADB9:   var_98.Text = var_90.Text
  loc_EEADCF: Else
  loc_EEADD7:   If (var_86 = CInt(&H29)) Then
  loc_EEADE7:     Set var_8C = Me.Txt
  loc_EEADED:     Call 0.Method_Txt_Change0 (Index, var_90)
  loc_EEAE08:     Set var_94 = Me.Txt
  loc_EEAE0E:     Call 0.Method_Txt_Change0 (CInt(5), var_98)
  loc_EEAE16:     var_98.Text = var_90.Text
  loc_EEAE29:   End If
  loc_EEAE29: End If
  loc_EEAE29: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1557CEC
  'Data Table: 544E80
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As Variant
  Dim var_C4 As Variant
  Dim var_90 As Variant
  Dim var_C8 As Variant
  Dim var_88 As Frame
  Dim var_104 As TextBox
  loc_1556CAA: Set var_88 = Me.Txt
  loc_1556CB0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1556CBE: Proc_6_74_E23240(var_8C)
  loc_1556CCA: Call Proc_61_47_F6EF2C(var_8C)
  loc_1556CD2: var_92 = Index
  loc_1556CDD: If (var_92 = CInt(0)) Then
  loc_1556CF7:   If (Me.RecordCount > 0) Then
  loc_1556D05:     Set var_8C = Me.FGPoint
  loc_1556D1D:     Proc_6_137_1192FDC(Me.DGRoomNo, global_96, Index)
  loc_1556D2B:   End If
  loc_1556D79:   Set var_88 = Me.Txt
  loc_1556D7F:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1556D87:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1556DAD:   If (var_92 Or (Proc_6_38_E69628(CVar(var_A0), var_8C) = vbNullString)) Then
  loc_1556DB0:     Exit Sub
  loc_1556DB1:   End If
  loc_1556DBE:   Set var_88 = Me.Txt
  loc_1556DC4:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1556DCC:   var_A0 = var_8C.Text
  loc_1556DDE:   var_C4 = "RoomNo"
  loc_1556E19:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_1556E22:     Me.MoveFirst
  loc_1556E45:     Set var_88 = Me.Txt
  loc_1556E4B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_1556E53:     0 = var_8C.Text
  loc_1556E6C:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_1556E81:   End If
  loc_1556E84: Else
  loc_1556E8C:   If (var_92 = CInt(4)) Then
  loc_1556EA6:     If (Me.RecordCount > 0) Then
  loc_1556EB4:       Set var_8C = Me.FGPoint
  loc_1556ECC:       Proc_6_137_1192FDC(Me.DGChrgPayment, global_100)
  loc_1556EDA:     End If
  loc_1556F28:     Set var_88 = Me.Txt
  loc_1556F2E:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1556F36:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1556F5C:     If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_1556F5F:       Exit Sub
  loc_1556F60:     End If
  loc_1556F6D:     Set var_88 = Me.Txt
  loc_1556F73:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1556F7B:     var_A0 = var_8C.Text
  loc_1556F8D:     var_C4 = "Name"
  loc_1556FC8:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_1556FD1:       Me.MoveFirst
  loc_1556FF4:       Set var_88 = Me.Txt
  loc_1556FFA:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1557002:       0 = var_8C.Text
  loc_155701B:       Me.Find 1 & var_A0 & "'", var_C4, 
  loc_1557030:     End If
  loc_1557033:   Else
  loc_155703B:     If (var_92 = CInt(&H18)) Then
  loc_1557069:       var_C4 = CVar((Me.FrSendRoom.Top + Me.FrSendRoom.Height)) 'Single
  loc_1557072:       Set var_90 = Me.DGRoom
  loc_1557078:       var_90.Top = var_C4
  loc_1557094:       Set var_8C = Me.Txt
  loc_155709A:       Call 0.Method_Txt_GotFocus0 (CInt(&H18), var_90)
  loc_15570C0:       var_C4 = CVar((Me.FrSendRoom.Left + var_90.Left)) 'Single
  loc_15570CF:       Me.DGRoom.Left = var_C4
  loc_15570F6:       If (Me.RecordCount > 0) Then
  loc_1557104:         Set var_8C = Me.FGPoint
  loc_155711C:         Proc_6_137_1192FDC(Me.DGRoom, global_112)
  loc_155712A:       End If
  loc_1557178:       Set var_88 = Me.Txt
  loc_155717E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1557186:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15571AC:       If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_15571BC:         Set var_88 = Me.Txt
  loc_15571C2:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15571CA:         var_8C.Tag = vbNullString
  loc_15571D6:         Exit Sub
  loc_15571D7:       End If
  loc_15571E4:       Set var_88 = Me.Txt
  loc_15571EA:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15571F2:       var_A0 = var_8C.Text
  loc_1557204:       var_C4 = "RoomNo"
  loc_155723F:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_1557248:         Me.MoveFirst
  loc_155726B:         Set var_88 = Me.Txt
  loc_1557271:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1557279:         0 = var_8C.Text
  loc_1557292:         Me.Find 1 & var_A0 & "'", var_C4, 
  loc_15572A7:       End If
  loc_15572AA:     Else
  loc_15572B2:       If (var_92 = CInt(&H17)) Then
  loc_15572E0:         var_C4 = CVar((Me.FrEmp.Top + Me.FrEmp.Height)) 'Single
  loc_15572E9:         Set var_90 = Me.DGEmp
  loc_15572EF:         var_90.Top = var_C4
  loc_155730B:         Set var_8C = Me.Txt
  loc_1557311:         Call 0.Method_Txt_GotFocus0 (CInt(&H17), var_90)
  loc_1557337:         var_C4 = CVar((Me.FrEmp.Left + var_90.Left)) 'Single
  loc_1557340:         Set var_C8 = Me.DGEmp
  loc_1557346:         var_C8.Left = var_C4
  loc_1557370:         If (Me.var_C8.RecordCount > 0) Then
  loc_155737E:           Set var_8C = Me.FGPoint
  loc_155739A:           Proc_6_137_1192FDC(Me.DGEmp, global_120)
  loc_15573A8:         End If
  loc_15573FF:         Set var_88 = Me.Txt
  loc_1557405:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_155740D:         ((global_120.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_1557433:         If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_1557436:           Exit Sub
  loc_1557437:         End If
  loc_1557444:         Set var_88 = Me.Txt
  loc_155744A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1557452:         var_A0 = var_8C.Text
  loc_1557464:         var_C4 = "Name"
  loc_15574A2:         If CBool(CVar(var_A0) <> Me.Recordset15.Fields.Item(var_C4).Value) Then
  loc_15574AE:           Me.Recordset15.MoveFirst
  loc_15574D1:           Set var_88 = Me.Txt
  loc_15574D7:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_15574DF:           0 = var_8C.Text
  loc_15574FB:           Me.Recordset15.Find 1 & var_A0 & "'", var_C4, 
  loc_1557510:         End If
  loc_1557513:       Else
  loc_155751B:         If (var_92 = CInt(&H19)) Then
  loc_1557549:           var_C4 = CVar((Me.FrComp.Top + Me.FrComp.Height)) 'Single
  loc_1557552:           Set var_90 = Me.DGCompany
  loc_1557558:           var_90.Top = var_C4
  loc_1557574:           Set var_8C = Me.Txt
  loc_155757A:           Call 0.Method_Txt_GotFocus0 (CInt(&H19), var_90)
  loc_15575A0:           var_C4 = CVar((Me.FrComp.Left + var_90.Left)) 'Single
  loc_15575A9:           Set var_C8 = Me.DGCompany
  loc_15575AF:           var_C8.Left = var_C4
  loc_15575D9:           If (Me.var_C8.RecordCount > 0) Then
  loc_15575E7:             Set var_8C = Me.FGPoint
  loc_1557603:             Proc_6_137_1192FDC(Me.DGCompany, global_116)
  loc_1557611:           End If
  loc_1557668:           Set var_88 = Me.Txt
  loc_155766E:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1557676:           ((global_116.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_155769C:           If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_155769F:             Exit Sub
  loc_15576A0:           End If
  loc_15576AD:           Set var_88 = Me.Txt
  loc_15576B3:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15576BB:           var_A0 = var_8C.Text
  loc_15576CD:           var_C4 = "Name"
  loc_155770B:           If CBool(CVar(var_A0) <> Me.Recordset15.Fields.Item(var_C4).Value) Then
  loc_1557717:             Me.Recordset15.MoveFirst
  loc_155773A:             Set var_88 = Me.Txt
  loc_1557740:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1557748:             0 = var_8C.Text
  loc_1557764:             Me.Recordset15.Find 1 & var_A0 & "'", var_C4, 
  loc_1557779:           End If
  loc_155777C:         Else
  loc_1557784:           If (var_92 = CInt(&H27)) Then
  loc_15577B2:             var_C4 = CVar((Me.FrMember.Top + Me.FrMember.Height)) 'Single
  loc_15577BB:             Set var_90 = Me.DGMember
  loc_15577C1:             var_90.Top = var_C4
  loc_15577DD:             Set var_8C = Me.Txt
  loc_15577E3:             Call 0.Method_Txt_GotFocus0 (CInt(&H27), var_90)
  loc_1557809:             var_C4 = CVar((Me.FrMember.Left + var_90.Left)) 'Single
  loc_1557812:             Set var_C8 = Me.DGMember
  loc_1557818:             var_C8.Left = var_C4
  loc_1557842:             If (Me.var_C8.RecordCount > 0) Then
  loc_1557850:               Set var_8C = Me.FGPoint
  loc_155786C:               Proc_6_137_1192FDC(Me.DGMember, global_124)
  loc_155787A:             End If
  loc_15578D1:             Set var_88 = Me.Txt
  loc_15578D7:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_15578DF:             ((global_124.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_1557905:             If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_1557908:               Exit Sub
  loc_1557909:             End If
  loc_1557916:             Set var_88 = Me.Txt
  loc_155791C:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1557924:             var_A0 = var_8C.Text
  loc_1557936:             var_C4 = "Name"
  loc_1557948:             var_90 = Me.Recordset15.Fields
  loc_1557974:             If CBool(CVar(var_A0) <> var_90.Item(var_C4).Value) Then
  loc_1557980:               Me.Recordset15.MoveFirst
  loc_15579A3:               Set var_88 = Me.Txt
  loc_15579A9:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_15579B1:               0 = var_8C.Text
  loc_15579CD:               Me.Recordset15.Find 1 & var_A0 & "'", var_C4, 
  loc_15579E2:             End If
  loc_15579E5:           Else
  loc_15579ED:             If (var_92 = CInt(&H28)) Then
  loc_15579FE:               Set var_8C = Me.Txt
  loc_1557A04:               Call 0.Method_Txt_GotFocus0 (CInt(&H28), var_90)
  loc_1557A1F:               Set var_C8 = Me.Txt
  loc_1557A25:               Call 0.Method_Txt_GotFocus0 (CInt(&H28), var_104)
  loc_1557A4F:               var_C4 = CVar(((Me.exFrame.Top + var_90.Top) + var_104.Height)) 'Single
  loc_1557A5E:               Me.DGCCurreny.Top = var_C4
  loc_1557A80:               Set var_8C = Me.Txt
  loc_1557A86:               Call 0.Method_Txt_GotFocus0 (CInt(&H28), var_90)
  loc_1557AAC:               var_C4 = CVar((Me.exFrame.Left + var_90.Left)) 'Single
  loc_1557ABB:               Me.DGCCurreny.Left = var_C4
  loc_1557AE2:               If (Me.RecordCount > 0) Then
  loc_1557AF0:                 Set var_8C = Me.FGPoint
  loc_1557B08:                 Proc_6_137_1192FDC(Me.DGCCurreny, global_128)
  loc_1557B16:               End If
  loc_1557B64:               Set var_88 = Me.Txt
  loc_1557B6A:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1557B72:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1557B98:               If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_1557B9B:                 Exit Sub
  loc_1557B9C:               End If
  loc_1557BA9:               Set var_88 = Me.Txt
  loc_1557BAF:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1557BB7:               var_A0 = var_8C.Text
  loc_1557BC9:               var_C4 = "Name"
  loc_1557BE0:               var_C8 = Me.Fields.Item(var_C4)
  loc_1557C04:               If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_1557C0D:                 Me.MoveFirst
  loc_1557C30:                 Set var_88 = Me.Txt
  loc_1557C36:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1557C3E:                 0 = var_8C.Text
  loc_1557C57:                 Me.Find 1 & var_A0 & "'", var_C4, 
  loc_1557C6C:               End If
  loc_1557C6C:             End If
  loc_1557C6C:           End If
  loc_1557C6C:         End If
  loc_1557C6C:       End If
  loc_1557C6C:     End If
  loc_1557C6C:   End If
  loc_1557C6C: End If
  loc_1557C7B: Set var_88 = Me.Txt
  loc_1557C81: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1557C89: var_8C.SelStart = 0
  loc_1557CA2: Set var_88 = Me.Txt
  loc_1557CA8: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1557CC3: Set var_90 = Me.Txt
  loc_1557CC9: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1557CD1: var_C8.SelLength = Len(var_8C.Text)
  loc_1557CE4: Call Proc_61_47_F6EF2C()
  loc_1557CE9: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '153E0C8
  'Data Table: 544E80
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  loc_153D0F3: var_88 = Shift
  loc_153D100: If (CLng(Shift) = &H1B) Then
  loc_153D103:   Call Proc_61_47_F6EF2C(var_88)
  loc_153D108:   Exit Sub
  loc_153D109: End If
  loc_153D10C: var_8A = KeyCode
  loc_153D117: If (var_8A = CInt(0)) Then
  loc_153D132:   Set var_A4 = Nothing
  loc_153D13D:   Set var_A0 = Nothing
  loc_153D16F:   Proc_6_69_134A630(Me.DGRoomNo, Me.Txt, CInt(0), global_96, Shift, 0)
  loc_153D1DC:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_153D202:     Proc_6_138_106E830(Me.DGRoomNo, global_96, KeyCode, Me.FGPoint, 1)
  loc_153D210:   End If
  loc_153D213: Else
  loc_153D21B:   If (var_8A = CInt(4)) Then
  loc_153D236:     Set var_A4 = Nothing
  loc_153D241:     Set var_A0 = Nothing
  loc_153D273:     Proc_6_69_134A630(Me.DGChrgPayment, Me.Txt, CInt(4), global_100, Shift, 0, 1)
  loc_153D2E0:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_153D2E7:       Set var_A0 = Me.DGChrgPayment
  loc_153D2EE:       Set var_94 = Me.FGPoint
  loc_153D306:       Proc_6_138_106E830(var_A0, global_100, KeyCode, var_94, var_A0, var_A4)
  loc_153D314:     End If
  loc_153D317:   Else
  loc_153D31F:     If (var_8A = CInt(6)) Then
  loc_153D32C:       Set var_90 = Me.Txt
  loc_153D332:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, 0, var_A0)
  loc_153D34D:       Proc_6_41_FA1734(var_94, Shift, 8, 2)
  loc_153D35C:     Else
  loc_153D364:       If (var_8A = CInt(&H23)) Then
  loc_153D371:         Set var_90 = Me.Txt
  loc_153D377:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_A4)
  loc_153D392:         Proc_6_41_FA1734(var_94, Shift, 6)
  loc_153D3A1:       Else
  loc_153D3A9:         If (var_8A = CInt(&H18)) Then
  loc_153D3C4:           Set var_A4 = Nothing
  loc_153D3CF:           Set var_A0 = Nothing
  loc_153D401:           Proc_6_69_134A630(Me.DGRoom, Me.Txt, CInt(&H18), global_112, Shift, 0, 1)
  loc_153D46E:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_153D475:             Set var_A0 = Me.DGRoom
  loc_153D494:             Proc_6_138_106E830(var_A0, global_112, KeyCode, Me.FGPoint, var_A0)
  loc_153D4A2:           End If
  loc_153D4A5:         Else
  loc_153D4AD:           If (var_8A = CInt(&H17)) Then
  loc_153D509:             Proc_6_69_134A630(Me.DGEmp, Me.Txt, CInt(&H17), global_120, Shift, 0, 1, Nothing)
  loc_153D579:             If ((Me.Txt.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_153D5A3:               Proc_6_138_106E830(Me.DGEmp, global_120, KeyCode, Me.FGPoint, Nothing, 0)
  loc_153D5B1:             End If
  loc_153D5B4:           Else
  loc_153D5BC:             If (var_8A = CInt(&H19)) Then
  loc_153D618:               Proc_6_69_134A630(Me.DGCompany, Me.Txt, CInt(&H19), global_116, Shift, 0, 1, Nothing)
  loc_153D688:               If ((Me.Txt.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_153D6B2:                 Proc_6_138_106E830(Me.DGCompany, global_116, KeyCode, Me.FGPoint, Nothing, 0)
  loc_153D6C0:               End If
  loc_153D6C3:             Else
  loc_153D6CB:               If (var_8A = CInt(&H27)) Then
  loc_153D727:                 Proc_6_69_134A630(Me.DGMember, Me.Txt, CInt(&H27), global_124, Shift, 0, 1, Nothing)
  loc_153D797:                 If ((Me.Txt.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_153D7C1:                   Proc_6_138_106E830(Me.DGMember, global_124, KeyCode, Me.FGPoint, Nothing, 0)
  loc_153D7CF:                 End If
  loc_153D7D2:               Else
  loc_153D7DA:                 If (var_8A = CInt(&H28)) Then
  loc_153D7F5:                   Set var_A4 = Nothing
  loc_153D832:                   Proc_6_69_134A630(Me.DGCCurreny, Me.Txt, CInt(&H28), global_128, Shift, 0, 1, Nothing)
  loc_153D89F:                   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_153D8AD:                     Set var_94 = Me.FGPoint
  loc_153D8C5:                     Proc_6_138_106E830(Me.DGCCurreny, global_128, KeyCode, var_94, var_A4, 0)
  loc_153D8D3:                   End If
  loc_153D8DF:                   Set var_90 = Me.LTxt
  loc_153D8E5:                   Call 0.Method_Txt_KeyDown0 (3, var_94, var_B8, var_A4)
  loc_153D8ED:                   0 = var_94.Caption
  loc_153D8FE:                   Call Proc_61_56_F018B4(CDbl(var_B8), var_C8, 2)
  loc_153D914:                   Set var_A0 = Me.LTxt
  loc_153D91A:                   Call 0.Method_Txt_KeyDown0 (5, var_A4, CStr(var_C8))
  loc_153D922:                   var_A4.Caption = 0
  loc_153D93C:                 Else
  loc_153D944:                   If Not (var_8A = CInt(5)) Then
  loc_153D94F:                     If (var_8A = CInt(&H29)) Then
  loc_153D952:                     End If
  loc_153D95C:                     If (CLng(Shift) = &H2D) Then
  loc_153D96C:                       Set var_90 = Me.Txt
  loc_153D972:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_153D985:                       Call Proc_61_55_EE6448(var_B8, var_94.Text)
  loc_153D99B:                       Set var_A0 = Me.Txt
  loc_153D9A1:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_153D9A9:                       var_A4.Text = var_8A & var_B8
  loc_153D9CF:                       Set var_90 = Me.Txt
  loc_153D9D5:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_153D9DD:                       var_B8 = var_94.Text
  loc_153D9F0:                       Set var_A0 = Me.Txt
  loc_153D9F6:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_153D9FE:                       var_A4.SelStart = Len(var_B8)
  loc_153DA11:                       Exit Sub
  loc_153DA12:                     End If
  loc_153DA15:                   Else
  loc_153DA1D:                     If (var_8A = CInt(&H25)) Then
  loc_153DA2A:                       Set var_90 = Me.Txt
  loc_153DA30:                       Call 0.Method_Txt_KeyDown0 (KeyCode)
  loc_153DA4B:                       Proc_6_41_FA1734(var_94, Shift, 8)
  loc_153DA57:                     End If
  loc_153DA57:                   End If
  loc_153DA57:                 End If
  loc_153DA57:               End If
  loc_153DA57:             End If
  loc_153DA57:           End If
  loc_153DA57:         End If
  loc_153DA57:       End If
  loc_153DA57:     End If
  loc_153DA57:   End If
  loc_153DA57: End If
  loc_153DA8E: var_100 = Me.DGCompany.Visible
  loc_153DAA5: var_110 = Me.DGEmp.Visible
  loc_153DB19: If (((((((CBool(Me.DGCCurreny.Visible) = 0) And (CBool(Me.DGMember.Visible) = 0)) And (CBool(var_100) = 0)) And (CBool(var_110) = 0)) And (CBool(Me.DGRoom.Visible) = 0)) And (CBool(Me.DGRoomNo.Visible) = 0)) And (CBool(Me.DGChrgPayment.Visible) = 0)) Then
  loc_153DB50:   Set var_94 = Me.FrComp
  loc_153DBFA:   If ((((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (((((((Me.FrCCDet.Visible = 0) And (var_94.Visible = 0)) And (Me.FrTxnNo.Visible = 0)) And (Me.FrChqDet.Visible = 0)) And (Me.FrSendRoom.Visible = 0)) And (Me.FrEmp.Visible = 0)) And (Me.FrMember.Visible = 0))) And (KeyCode = CInt(5))) Then
  loc_153DC03:     Call Txt_Validate(KeyCode)
  loc_153DC0E:     If (var_86 = &HFF) Then
  loc_153DC11:       Exit Sub
  loc_153DC12:     End If
  loc_153DC12:     Call Proc_61_52_15B1714(var_86, 0)
  loc_153DC20:     If (global_192 = 0) Then
  loc_153DC2E:       Set var_90 = Me.Txt
  loc_153DC34:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_153DC3C:       var_94.SetFocus
  loc_153DC48:     End If
  loc_153DC48:     Exit Sub
  loc_153DC49:   End If
  loc_153DC70:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(&H16)) Or (KeyCode = CInt(&H2B)))) Then
  loc_153DC79:     Call Txt_Validate(KeyCode)
  loc_153DC8D:     Me.FGPoint.Visible = False
  loc_153DC9B:     If (var_86 = &HFF) Then
  loc_153DC9E:       Exit Sub
  loc_153DC9F:     End If
  loc_153DCD6:     If (MsgBox("Add Record ?", 4, "Save Data", var_100, var_110) = 6) Then
  loc_153DCD9:       Call Proc_61_52_15B1714(var_86)
  loc_153DCDE:     End If
  loc_153DCE7:     If (global_192 = 0) Then
  loc_153DCF5:       Set var_90 = Me.Txt
  loc_153DCFB:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_153DD03:       var_94.SetFocus
  loc_153DD0F:     End If
  loc_153DD0F:     Exit Sub
  loc_153DD10:   End If
  loc_153DD2E:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H18))) Then
  loc_153DD37:     Call Txt_Validate(KeyCode)
  loc_153DD4B:     Me.FGPoint.Visible = False
  loc_153DD59:     If (var_86 = &HFF) Then
  loc_153DD5C:       Exit Sub
  loc_153DD5D:     End If
  loc_153DD94:     If (MsgBox("Add Record ?", 4, "Save Data", var_100, var_110) = 6) Then
  loc_153DD97:       Call Proc_61_52_15B1714(var_86)
  loc_153DD9C:     End If
  loc_153DDA5:     If (global_192 = 0) Then
  loc_153DDB3:       Set var_90 = Me.Txt
  loc_153DDB9:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_153DDC1:       var_94.SetFocus
  loc_153DDCD:     End If
  loc_153DDCD:     Exit Sub
  loc_153DDCE:   End If
  loc_153DDEC:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H17))) Then
  loc_153DDF5:     Call Txt_Validate(KeyCode)
  loc_153DE00:     If (var_86 = &HFF) Then
  loc_153DE03:       Exit Sub
  loc_153DE04:     End If
  loc_153DE3B:     If (MsgBox("Add Record ?", 4, "Save Data", var_100, var_110) = 6) Then
  loc_153DE3E:       Call Proc_61_52_15B1714(var_86)
  loc_153DE43:     End If
  loc_153DE4C:     If (global_192 = 0) Then
  loc_153DE5A:       Set var_90 = Me.Txt
  loc_153DE60:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_153DE68:       var_94.SetFocus
  loc_153DE74:     End If
  loc_153DE74:     Exit Sub
  loc_153DE75:   End If
  loc_153DE9C:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(&H19)) Or (KeyCode = CInt(&H27)))) Then
  loc_153DEA5:     Call Txt_Validate(KeyCode)
  loc_153DECA:     Set var_90 = Me.Txt
  loc_153DED0:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_B8, 0)
  loc_153DED8:     (var_86 = &HFF) = var_94.Tag
  loc_153DF01:     If (var_94 Or (Proc_96_1_F8D0C4(Proc_6_38_E69628(CVar(var_B8), var_86)) = 0)) Then
  loc_153DF0A:       Call 0.Method_arg_50 (var_B8)
  loc_153DF2B:       MsgBox("Credit Not Allowed to this company.", &H10, CVar(var_B8), var_100, var_110)
  loc_153DF3B:       Exit Sub
  loc_153DF3C:     End If
  loc_153DF73:     If (MsgBox("Add Record ?", 4, "Save Data", var_100, var_110) = 6) Then
  loc_153DF76:       Call Proc_61_52_15B1714()
  loc_153DF7B:     End If
  loc_153DF84:     If (global_192 = 0) Then
  loc_153DF92:       Set var_90 = Me.Txt
  loc_153DF98:       Call 0.Method_Txt_KeyDown0 (CInt(4))
  loc_153DFA0:       var_94.SetFocus
  loc_153DFAC:     End If
  loc_153DFAC:     Exit Sub
  loc_153DFAD:   End If
  loc_153DFCB:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H25))) Then
  loc_153DFD4:     Call Txt_Validate(KeyCode)
  loc_153DFDF:     If (var_86 = &HFF) Then
  loc_153DFE2:       Exit Sub
  loc_153DFE3:     End If
  loc_153E01A:     If (MsgBox("Add Record ?", 4, "Save Data", var_100, var_110) = 6) Then
  loc_153E01D:       Call Proc_61_52_15B1714(var_86)
  loc_153E022:     End If
  loc_153E02B:     If (global_192 = 0) Then
  loc_153E039:       Set var_90 = Me.Txt
  loc_153E03F:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_153E047:       var_94.SetFocus
  loc_153E053:     End If
  loc_153E053:     Exit Sub
  loc_153E054:   End If
  loc_153E085:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (Me.FrReference.Visible = 0)) Then
  loc_153E08E:     Proc_6_75_E5335C(Shift, arg_14)
  loc_153E093:   End If
  loc_153E0B9:   If ((CLng(Shift) = &H26) And (Me.FrReference.Visible = 0)) Then
  loc_153E0C2:     Proc_6_76_E533C8(Shift, arg_14)
  loc_153E0C7:   End If
  loc_153E0C7: End If
  loc_153E0C7: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1231C74
  'Data Table: 544E80
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_123174B: Proc_6_58_E06050(arg_10)
  loc_1231756: Proc_6_133_E7FB08(var_94)
  loc_123175F: arg_10 = CInt(var_94)
  loc_1231768: var_96 = KeyAscii
  loc_1231773: If (var_96 = CInt(0)) Then
  loc_1231792:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_12317BF:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_96, arg_10, "RoomNo")
  loc_12317F1:     Proc_6_138_106E830(Me.DGRoomNo, global_96, KeyAscii, Me.FGPoint)
  loc_12317FF:   End If
  loc_1231802: Else
  loc_123180A:   If (var_96 = CInt(4)) Then
  loc_1231829:     If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_1231856:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_100, arg_10, "Name")
  loc_1231888:       Proc_6_138_106E830(Me.DGChrgPayment, global_100, KeyAscii, Me.FGPoint, 0)
  loc_1231896:     End If
  loc_1231899:   Else
  loc_12318A1:     If (var_96 = CInt(&H18)) Then
  loc_12318C0:       If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_12318ED:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_112, arg_10, "RoomNo")
  loc_1231907:         Set var_A8 = Me.FGPoint
  loc_123191F:         Proc_6_138_106E830(Me.DGRoom, global_112, KeyAscii, var_A8, 0)
  loc_123192D:       End If
  loc_1231930:     Else
  loc_1231938:       If (var_96 = CInt(6)) Then
  loc_1231945:         Set var_9C = Me.Txt
  loc_123194B:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_1231966:         Proc_6_42_129B55C(var_A8, arg_10, 8, 2)
  loc_1231975:       Else
  loc_123197D:         If (var_96 = CInt(&H23)) Then
  loc_123198A:           Set var_9C = Me.Txt
  loc_1231990:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_96)
  loc_12319AB:           Proc_6_42_129B55C(var_A8, arg_10, 6)
  loc_12319BA:         Else
  loc_12319C2:           If (var_96 = CInt(&H17)) Then
  loc_12319E1:             If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_1231A12:               Proc_6_89_1470B00(Me.Txt, KeyAscii, global_120, arg_10, "Name")
  loc_1231A48:               Proc_6_138_106E830(Me.DGEmp, global_120, KeyAscii, Me.FGPoint)
  loc_1231A56:             End If
  loc_1231A59:           Else
  loc_1231A61:             If (var_96 = CInt(&H19)) Then
  loc_1231A80:               If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_1231AB1:                 Proc_6_89_1470B00(Me.Txt, KeyAscii, global_116, arg_10, "Name")
  loc_1231AE7:                 Proc_6_138_106E830(Me.DGCompany, global_116, KeyAscii, Me.FGPoint, 0)
  loc_1231AF5:               End If
  loc_1231AF8:             Else
  loc_1231B00:               If (var_96 = CInt(&H27)) Then
  loc_1231B1F:                 If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_1231B50:                   Proc_6_89_1470B00(Me.Txt, KeyAscii, global_124, arg_10, "Name")
  loc_1231B86:                   Proc_6_138_106E830(Me.DGMember, global_124, KeyAscii, Me.FGPoint, 0)
  loc_1231B94:                 End If
  loc_1231B97:               Else
  loc_1231B9F:                 If (var_96 = CInt(&H28)) Then
  loc_1231BBE:                   If (CBool(Me.DGCCurreny.Visible) = &HFF) Then
  loc_1231BEB:                     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_128, arg_10, "Name")
  loc_1231C05:                     Set var_A8 = Me.FGPoint
  loc_1231C1D:                     Proc_6_138_106E830(Me.DGCCurreny, global_128, KeyAscii, var_A8, 0)
  loc_1231C2B:                   End If
  loc_1231C2E:                 Else
  loc_1231C36:                   If (var_96 = CInt(&H25)) Then
  loc_1231C43:                     Set var_9C = Me.Txt
  loc_1231C49:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_1231C64:                     Proc_6_42_129B55C(var_A8, arg_10, 8, 0)
  loc_1231C70:                   End If
  loc_1231C70:                 End If
  loc_1231C70:               End If
  loc_1231C70:             End If
  loc_1231C70:           End If
  loc_1231C70:         End If
  loc_1231C70:       End If
  loc_1231C70:     End If
  loc_1231C70:   End If
  loc_1231C70: End If
  loc_1231C70: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '11196C0
  'Data Table: 544E80
  Dim var_86 As Integer
  loc_1119367: var_86 = KeyCode
  loc_1119372: If (var_86 = CInt(0)) Then
  loc_1119391:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_11193A5:     var_A8 = "RoomNO"
  loc_11193CD:     Proc_6_68_12A2818(Me.DGRoomNo, Me.Txt, CInt(0), global_96)
  loc_11193E0:   End If
  loc_11193E3: Else
  loc_11193EB:   If (var_86 = CInt(4)) Then
  loc_111940A:     If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_111941E:       var_A8 = "Name"
  loc_1119446:       Proc_6_68_12A2818(Me.DGChrgPayment, Me.Txt, CInt(4), global_100, Shift)
  loc_1119459:     End If
  loc_111945C:   Else
  loc_1119464:     If (var_86 = CInt(&H17)) Then
  loc_1119483:       If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_1119497:         var_A8 = "Name"
  loc_11194C3:         Proc_6_68_12A2818(Me.DGEmp, Me.Txt, CInt(&H17), global_120, Shift)
  loc_11194D6:       End If
  loc_11194D9:     Else
  loc_11194E1:       If (var_86 = CInt(&H18)) Then
  loc_1119500:         If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_1119538:           Proc_6_68_12A2818(Me.DGRoom, Me.Txt, KeyCode, global_112, Shift, "RoomNo")
  loc_111954B:         End If
  loc_111954E:       Else
  loc_1119556:         If (var_86 = CInt(&H19)) Then
  loc_1119575:           If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_11195B5:             Proc_6_68_12A2818(Me.DGCompany, Me.Txt, CInt(&H19), global_116, Shift, "Name")
  loc_11195C8:           End If
  loc_11195CB:         Else
  loc_11195D3:           If (var_86 = CInt(&H27)) Then
  loc_11195F2:             If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_1119632:               Proc_6_68_12A2818(Me.DGMember, Me.Txt, CInt(&H27), global_124, Shift, "Name")
  loc_1119645:             End If
  loc_1119648:           Else
  loc_1119650:             If (var_86 = CInt(&H28)) Then
  loc_111966F:               If (CBool(Me.DGCCurreny.Visible) = &HFF) Then
  loc_11196AB:                 Proc_6_68_12A2818(Me.DGCCurreny, Me.Txt, CInt(&H28), global_128, Shift, "Name")
  loc_11196BE:               End If
  loc_11196BE:             End If
  loc_11196BE:           End If
  loc_11196BE:         End If
  loc_11196BE:       End If
  loc_11196BE:     End If
  loc_11196BE:   End If
  loc_11196BE: End If
  loc_11196BE: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48CE4
  'Data Table: 544E80
  loc_E48CC2: Set var_88 = Me.Txt
  loc_E48CC8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48CD6: Proc_6_73_E23294(var_8C)
  loc_E48CE2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '179DCCC
  'Data Table: 544E80
  Dim var_DA As Integer
  Dim var_E4 As Variant
  Dim var_EC As String
  Dim Me As Variant
  Dim var_100 As String
  Dim var_E0 As Variant
  Dim var_E8 As String
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_10C As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_168 As Variant
  Dim var_18C As Variant
  Dim var_1B0 As String
  Dim var_1AC As TextBox
  Dim unk_544EAC As Connection15
  Dim var_D8 As Recordset15
  Dim var_1B8 As Double
  Dim var_1C0 As Double
  Dim var_17C As Label
  Dim var_160 As Variant
  Dim arg_10 As Integer
  Dim var_106 As Integer
  loc_179BDB3: var_DA = Cancel
  loc_179BDBE: If (var_DA = CInt(0)) Then
  loc_179BDCD:   If (global_152 = 1) Then
  loc_179BDDE:     Set var_E0 = Me.Txt
  loc_179BDE4:     Call 0.Method_Txt_Validate0 (CInt(0), var_E4)
  loc_179BDEC:     var_E8 = var_E4.Text
  loc_179BE03:     If (var_E8 <> vbNullString) Then
  loc_179BE25:       Set var_E0 = Me.Txt
  loc_179BE2B:       Call 0.Method_Txt_Validate0 (CInt(0), var_E4, var_E8, "roomNo='")
  loc_179BE33:       0 = var_E4.Text
  loc_179BE4C:       Me.Find 1 & var_E8 & "'", var_100, var_DA
  loc_179BE61:     End If
  loc_179BE61:   End If
  loc_179BE61:   Call Proc_61_51_121DBB4()
  loc_179BEB4:   Set var_E0 = Me.Txt
  loc_179BEBA:   Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179BEDA:   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_E4.Text = vbNullString)) Then
  loc_179BEEA:     Set var_E0 = Me.Txt
  loc_179BEF0:     Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179BEF8:     var_E4.Tag = vbNullString
  loc_179BF04:     Exit Sub
  loc_179BF05:   End If
  loc_179BF40:   Set var_10C = Me.Txt
  loc_179BF46:   Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_179BF4E:   var_110.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_179BF9F:   Set var_10C = Me.Txt
  loc_179BFA5:   Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_179BFAD:   var_110.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_179BFFC:   Set var_10C = Me.Txt
  loc_179C002:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_179C00A:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("FolioNo")))
  loc_179C057:   Set var_10C = Me.Txt
  loc_179C05D:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_179C065:   var_110.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("DocID")))
  loc_179C093:   var_E4 = Me.Fields.Item("ChkInDate")
  loc_179C0B2:   Set var_10C = Me.Txt
  loc_179C0B8:   Call 0.Method_Txt_Validate0 (CInt(1), var_110)
  loc_179C0C0:   var_110.Text = Proc_6_38_E69628(CVar(var_E4))
  loc_179C0DF:   Set var_E0 = Me.Txt
  loc_179C0E5:   Call 0.Method_Txt_Validate0 (CInt(1))
  loc_179C11F:   Me.LblCheckInDay.Caption = CStr(Format(CVar(var_E4), "DDDD"))
  loc_179C18A:   Set var_10C = Me.Txt
  loc_179C190:   Call 0.Method_Txt_Validate0 (CInt(2), var_110, CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_179C198:   var_110.Text = 1
  loc_179C1EC:   var_130 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")))) 'String
  loc_179C209:   Set var_10C = Me.Txt
  loc_179C20F:   Call 0.Method_Txt_Validate0 (CInt(3), var_110)
  loc_179C217:   var_110.Text = CStr(Right(var_130, 2))
  loc_179C26E:   Set var_10C = Me.Txt
  loc_179C274:   Call 0.Method_Txt_Validate0 (CInt(7), var_110)
  loc_179C27C:   var_110.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("GuestCode")))
  loc_179C2C9:   Set var_10C = Me.Txt
  loc_179C2CF:   Call 0.Method_Txt_Validate0 (CInt(7), var_110)
  loc_179C2D7:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("GuestName")))
  loc_179C324:   Set var_10C = Me.Txt
  loc_179C32A:   Call 0.Method_Txt_Validate0 (CInt(8), var_110)
  loc_179C332:   var_110.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("companyCode")))
  loc_179C37F:   Set var_10C = Me.Txt
  loc_179C385:   Call 0.Method_Txt_Validate0 (CInt(8), var_110)
  loc_179C38D:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CompanyName")))
  loc_179C3CA:   Proc_6_39_E7D3A0(var_130, CVar(Me.Fields.Item("RoomRate")))
  loc_179C3E1:   Set var_10C = Me.Txt
  loc_179C3E7:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_110)
  loc_179C3EF:   var_110.Text = CStr(var_130)
  loc_179C440:   Set var_10C = Me.Txt
  loc_179C446:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_110)
  loc_179C44E:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RateCode")))
  loc_179C49B:   Set var_10C = Me.Txt
  loc_179C4A1:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_110)
  loc_179C4A9:   var_110.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCatCode")))
  loc_179C4F6:   Set var_10C = Me.Txt
  loc_179C4FC:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_110)
  loc_179C504:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCat")))
  loc_179C551:   Set var_10C = Me.Txt
  loc_179C557:   Call 0.Method_Txt_Validate0 (CInt(&H26), var_110)
  loc_179C55F:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("PlanCode")))
  loc_179C579:   global_140 = "RO"
  loc_179C5AE:   global_136 = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCatCode")))
  loc_179C5F4:   Set var_10C = Me.Txt
  loc_179C5FA:   Call 0.Method_Txt_Validate0 (CInt(9), var_110)
  loc_179C602:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("STATUSNAME")))
  loc_179C63F:   Proc_6_39_E7D3A0(var_130, CVar(Me.Fields.Item("OldAdult")))
  loc_179C656:   Set var_10C = Me.Txt
  loc_179C65C:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_110)
  loc_179C664:   var_110.Text = CStr(var_130)
  loc_179C696:   var_E4 = Me.Fields.Item("OldChild")
  loc_179C6A5:   Proc_6_39_E7D3A0(var_130, CVar(var_E4))
  loc_179C6BC:   Set var_10C = Me.Txt
  loc_179C6C2:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_110)
  loc_179C6CA:   var_110.Text = CStr(var_130)
  loc_179C6F5:   Set var_E0 = Me.Txt
  loc_179C6FB:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_E4)
  loc_179C703:   var_E4.Text = CStr(MemVar_1F950EC)
  loc_179C74B:   Set var_10C = Me.Txt
  loc_179C751:   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_110)
  loc_179C759:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Add1")))
  loc_179C7A6:   Set var_10C = Me.Txt
  loc_179C7AC:   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_110)
  loc_179C7B4:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Add2")))
  loc_179C7E2:   var_E4 = Me.Fields.Item("CityName")
  loc_179C822:   var_110 = Me.Fields.Item("StateName")
  loc_179C866:   var_17C = Me.Fields.Item("CountryName")
  loc_179C886:   var_1B0 = var_E4 & Proc_6_38_E69628(Trim(CVar(var_110)), Proc_6_38_E69628(Trim(CVar(var_E4))) & ",") & "," & Proc_6_38_E69628(Trim(CVar(var_17C)))
  loc_179C894:   Set var_1A8 = Me.Txt
  loc_179C89A:   Call 0.Method_Txt_Validate0 (CInt(&H1C), var_1AC)
  loc_179C8A2:   var_1AC.Text = var_1B0
  loc_179C90D:   Set var_10C = Me.Txt
  loc_179C913:   Call 0.Method_Txt_Validate0 (CInt(&H1F), var_110)
  loc_179C91B:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DepDate")))
  loc_179C982:   Set var_10C = Me.Txt
  loc_179C988:   Call 0.Method_Txt_Validate0 (CInt(&H1E), var_110)
  loc_179C990:   var_110.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_179C9E4:   var_130 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))) 'String
  loc_179CA01:   Set var_10C = Me.Txt
  loc_179CA07:   Call 0.Method_Txt_Validate0 (CInt(&H1D), var_110)
  loc_179CA0F:   var_110.Text = CStr(Right(var_130, 2))
  loc_179CA66:   Set var_10C = Me.Txt
  loc_179CA6C:   Call 0.Method_Txt_Validate0 (CInt(&H20), var_110)
  loc_179CA74:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments1")))
  loc_179CAC1:   Set var_10C = Me.Txt
  loc_179CAC7:   Call 0.Method_Txt_Validate0 (CInt(&H21), var_110)
  loc_179CACF:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments2")))
  loc_179CAFD:   var_E4 = Me.Fields.Item("Comments3")
  loc_179CB0E:   var_E8 = Proc_6_38_E69628(CVar(var_E4))
  loc_179CB1C:   Set var_10C = Me.Txt
  loc_179CB22:   Call 0.Method_Txt_Validate0 (CInt(&H22), var_110)
  loc_179CB2A:   var_110.Text = var_E8
  loc_179CB5C:   Set var_E0 = Me.Txt
  loc_179CB62:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_E4, var_E8, "Select Sum(AmtDr) as DrAmt,Sum(AmtCr) as CrAmt from paycharge where (ContraDocid is NULL or ContraDocid ='' ) and folioNoDocid='")
  loc_179CB6A:   var_120 = var_E4.Tag
  loc_179CB73:   var_EC = -1 & var_E8
  loc_179CB91:   unk_544EAC.Execute Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime"))) & "' and site_code='" & MemVar_1F95070 & "'", var_10C, 
  loc_179CB9C:   Set var_D8 = var_10C
  loc_179CBCC:   If (var_D8.RecordCount > 0) Then
  loc_179CBE6:     var_E4 = var_D8.Fields.Item("DrAmt")
  loc_179CBEE:     var_120 = CVar(var_E4) 'Address
  loc_179CBF5:     Proc_6_39_E7D3A0(var_130)
  loc_179CC1D:     var_E8 = CStr(Format(var_130, "0.00"))
  loc_179CC2C:     Set var_10C = Me.LTxt
  loc_179CC32:     Call 0.Method_Txt_Validate0 (CInt(0), var_110, var_E8)
  loc_179CC3A:     var_110.Caption = 1
  loc_179CC64:     Set var_E0 = Me.LTxt
  loc_179CC6A:     Call 0.Method_Txt_Validate0 (CInt(0), var_E4, var_E8)
  loc_179CC72:     1 = var_E4.Caption
  loc_179CC82:     global_168 = Val(var_E8)
  loc_179CCA6:     var_E4 = var_D8.Fields.Item("CrAmt")
  loc_179CCB5:     Proc_6_39_E7D3A0(var_130, CVar(var_E4))
  loc_179CCDD:     var_E8 = CStr(Format(var_130, "0.00"))
  loc_179CCEC:     Set var_10C = Me.LTxt
  loc_179CCF2:     Call 0.Method_Txt_Validate0 (CInt(1), var_110, var_E8, 1)
  loc_179CCFA:     var_110.Caption = 1
  loc_179CD24:     Set var_E0 = Me.LTxt
  loc_179CD2A:     Call 0.Method_Txt_Validate0 (CInt(1), var_E4, var_E8)
  loc_179CD32:     global_168 = var_E4.Caption
  loc_179CD42:     global_176 = Val(var_E8)
  loc_179CD4F:   End If
  loc_179CD5D:   Set var_E0 = Me.LTxt
  loc_179CD63:   Call 0.Method_Txt_Validate0 (CInt(0), var_E4, var_E8)
  loc_179CD6B:   global_176 = var_E4.Caption
  loc_179CD78:   var_1B8 = Val(var_E8)
  loc_179CD89:   Set var_10C = Me.LTxt
  loc_179CD8F:   Call 0.Method_Txt_Validate0 (CInt(1), var_110, Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime"))))
  loc_179CDC3:   var_120 = CVar((var_110.Caption - Val(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))))) 'Double
  loc_179CDE1:   Set var_168 = Me.LTxt
  loc_179CDE7:   Call 0.Method_Txt_Validate0 (CInt(2), var_17C, CStr(Format(CVar(var_E4), "0.00")), 1)
  loc_179CDEF:   var_17C.Caption = 1
  loc_179CE23:   Set var_E0 = Me.LTxt
  loc_179CE29:   Call 0.Method_Txt_Validate0 (CInt(2), var_E4, var_E8)
  loc_179CE31:   var_1C0 = var_E4.Caption
  loc_179CE3E:   var_1B8 = Val(var_E8)
  loc_179CE6C:   global_184 = CSng(Format(CVar(var_1B8), "0.00"))
  loc_179CEA5:   var_140 = Format(Time, "HH:mm")
  loc_179CEAE:   var_160 = CVar(CStr(var_140)) 'String
  loc_179CEBC:   Me.txtVTime.defaultText = var_160
  loc_179CED2: Else
  loc_179CEDA:   If (var_DA = CInt(&H18)) Then
  loc_179CF2B:     Set var_E0 = Me.Txt
  loc_179CF31:     Call 0.Method_Txt_Validate0 (Cancel, var_E4, var_E8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), 1, 1)
  loc_179CF39:     global_184 = var_E4.Text
  loc_179CF51:     If (1 Or (var_E8 = vbNullString)) Then
  loc_179CF61:       Set var_E0 = Me.Txt
  loc_179CF67:       Call 0.Method_Txt_Validate0 (Cancel, var_E4, vbNullString)
  loc_179CF6F:       var_E4.Tag = 1
  loc_179CF7B:       Exit Sub
  loc_179CF7C:     End If
  loc_179CF9E:     var_120 = CVar(Me.Fields.Item("RoomNo")) 'Address
  loc_179CFA7:     var_EC = Proc_6_38_E69628(var_120, var_1B8)
  loc_179CFB8:     Set var_10C = Me.Txt
  loc_179CFBE:     Call 0.Method_Txt_Validate0 (CInt(0), var_110, var_E8)
  loc_179CFC6:     var_EC = var_110.Text
  loc_179CFE3:     If (var_120 = var_E8) Then
  loc_179CFEC:       Call 0.Method_arg_50 (var_E8)
  loc_179D00D:       MsgBox("Invalid Room No.", &H10, CVar(var_E8), var_140, var_160)
  loc_179D01F:       arg_10 = &HFF
  loc_179D022:       Exit Sub
  loc_179D023:     End If
  loc_179D05E:     Set var_10C = Me.Txt
  loc_179D064:     Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_179D06C:     var_110.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_179D09F:     var_E4 = Me.Fields.Item("Code")
  loc_179D0BD:     Set var_10C = Me.Txt
  loc_179D0C3:     Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_179D0CB:     var_110.Tag = CStr(var_E4.Value)
  loc_179D0E4:   Else
  loc_179D0EC:     If (var_DA = CInt(&H11)) Then
  loc_179D101:       Set var_E0 = Me.Txt
  loc_179D107:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179D12B:       Set var_E0 = Me.Txt
  loc_179D131:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179D151:       If (CDate(CStr(MemVar_1F950EC)) < MemVar_1F950EC) Then
  loc_179D156:         arg_10 = &HFF
  loc_179D159:         Exit Sub
  loc_179D15A:       End If
  loc_179D194:       Me.txtVTime.defaultText = CVar(CStr(Format(Time, "HH:mm")))
  loc_179D1AA:     Else
  loc_179D1B2:       If (var_DA = CInt(4)) Then
  loc_179D241:         Me.LblNature.Caption = CStr(Trim(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("PayType")), 1, 1))))
  loc_179D292:         Set var_10C = Me.Txt
  loc_179D298:         Call 0.Method_Txt_Validate0 (CInt(&H2A), var_110)
  loc_179D2A0:         var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxInc")), arg_10)
  loc_179D306:         var_18C = arg_10 And (Trim(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("PayType")), (CStr(Me.Fields.Item("Flag").Value) = "Cr")))) = vbNullString)
  loc_179D31A:         If CBool(var_18C) Then
  loc_179D372:           Set var_10C = Me.Txt
  loc_179D378:           Call 0.Method_Txt_Validate0 (CInt(6), var_110, CStr(Format(CVar(Me.Fields.Item("SaleRate")), "0.00")))
  loc_179D380:           var_110.Text = 1
  loc_179D39A:         End If
  loc_179D3E7:         var_110 = Me.Fields.Item("PayType")
  loc_179D419:         If CBool(Not(IsNull(CVar(Me.Fields.Item("PayType")))) And (var_110.Value <> vbNullString)) Then
  loc_179D44E:           Call Proc_61_49_129DBA0(CStr(Me.Fields.Item("PayType").Value))
  loc_179D463:         Else
  loc_179D46F:           Me.FrTxnNo.Visible = False
  loc_179D483:           Me.FrChqDet.Visible = False
  loc_179D497:           Me.FrCCDet.Visible = False
  loc_179D4AB:           Me.FrEmp.Visible = False
  loc_179D4BF:           Me.FrComp.Visible = False
  loc_179D4D3:           Me.FrMember.Visible = False
  loc_179D4E7:           Me.FrSendRoom.Visible = False
  loc_179D4EF:         End If
  loc_179D524:         var_E4 = Me.Fields.Item("Flag")
  loc_179D552:         If CBool((fdPaymentCharge.OpenMode = 1) And (var_E4.Value = "Dr")) Then
  loc_179D560:           Set var_E0 = Me.LTxt
  loc_179D566:           Call 0.Method_Txt_Validate0 (CInt(2), var_E4)
  loc_179D592:           var_E8 = CStr(Format(CVar(var_E4), "0.00"))
  loc_179D5A1:           Set var_10C = Me.Txt
  loc_179D5A7:           Call 0.Method_Txt_Validate0 (CInt(6), var_110, var_E8)
  loc_179D5AF:           var_110.Text = 1
  loc_179D5C9:         End If
  loc_179D5E6:         var_E4 = Me.Fields.Item("PayType")
  loc_179D60B:         Set var_10C = Me.Txt
  loc_179D611:         Call 0.Method_Txt_Validate0 (CInt(5), var_110, (var_E4.Value = "Cash"))
  loc_179D64A:         If CBool(1 And (Trim(CVar(var_110)) = vbNullString)) Then
  loc_179D65B:           Set var_E0 = Me.Txt
  loc_179D661:           Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_179D669:           var_E4.Text = "CASH RECD."
  loc_179D678:         Else
  loc_179D695:           var_E4 = Me.Fields.Item("PayType")
  loc_179D6BD:           Set var_10C = Me.Txt
  loc_179D6C3:           Call 0.Method_Txt_Validate0 (CInt(5), var_110, var_E8)
  loc_179D6CB:           (var_E4.Value <> "Cash") = var_110.Text
  loc_179D6F7:           If CBool(1 And (var_E8 = "CASH RECD.")) Then
  loc_179D708:             Set var_E0 = Me.Txt
  loc_179D70E:             Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_179D716:             var_E4.Text = vbNullString
  loc_179D725:           Else
  loc_179D742:             var_E4 = Me.Fields.Item("PayType")
  loc_179D76A:             Set var_10C = Me.Txt
  loc_179D770:             Call 0.Method_Txt_Validate0 (CInt(6), var_110)
  loc_179D7A9:             If CBool((var_E4.Value = "Cash") And (CDbl(Val(var_110.Text)) < CDbl(0))) Then
  loc_179D7BA:               Set var_E0 = Me.Txt
  loc_179D7C0:               Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_179D7C8:               var_E4.Text = "CASH PAID "
  loc_179D7D4:             End If
  loc_179D7D4:           End If
  loc_179D7D4:         End If
  loc_179D813:         If (Me.Fields.Item("Flag").Value = "Cr") Then
  loc_179D852:           Set var_10C = Me.Txt
  loc_179D858:           Call 0.Method_Txt_Validate0 (CInt(5), var_110)
  loc_179D860:           var_110.Text = CStr(Me.Fields.Item("Name").Value)
  loc_179D876:         End If
  loc_179D890:         var_E4 = Me.Fields.Item("PayType")
  loc_179D8A1:         var_106 = IsNull(CVar(var_E4))
  loc_179D8BE:         var_110 = Me.Fields.Item("PayType")
  loc_179D8C6:         var_140 = CVar(var_110) 'Address
  loc_179D903:         If (IIf(var_106, vbNullString, var_140) = vbNullString) Then
  loc_179D913:           Set var_E0 = Me.Txt
  loc_179D919:           Call 0.Method_Txt_Validate0 (CInt(&H23), var_E4)
  loc_179D921:           var_E4.Visible = False
  loc_179D938:           Set var_E0 = Me.Lbl
  loc_179D93E:           Call 0.Method_Txt_Validate0 (&HF, var_E4)
  loc_179D946:           var_E4.Visible = False
  loc_179D955:         Else
  loc_179D962:           Set var_E0 = Me.Txt
  loc_179D968:           Call 0.Method_Txt_Validate0 (CInt(&H23), var_E4)
  loc_179D970:           var_E4.Visible = True
  loc_179D987:           Set var_E0 = Me.Lbl
  loc_179D98D:           Call 0.Method_Txt_Validate0 (&HF, var_E4)
  loc_179D995:           var_E4.Visible = True
  loc_179D9A1:         End If
  loc_179D9A4:       Else
  loc_179D9AC:         If (var_DA = CInt(&H16)) Then
  loc_179D9BC:           Set var_E0 = Me.Txt
  loc_179D9C2:           Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179D9E8:           Set var_10C = Me.Txt
  loc_179D9EE:           Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_179D9F6:           var_110.Text = Proc_6_34_14EEAAC(var_E4.Text)
  loc_179DA10:         Else
  loc_179DA18:           If (var_DA = CInt(&H14)) Then
  loc_179DA28:             Set var_E0 = Me.Txt
  loc_179DA2E:             Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179DA4D:             If (var_E4.Text = vbNullString) Then
  loc_179DA52:               arg_10 = &HFF
  loc_179DA55:               Exit Sub
  loc_179DA56:             End If
  loc_179DA60:             Set var_E0 = Me.Txt
  loc_179DA66:             Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179DA79:             var_E8 = Proc_6_33_15125B8(var_E4, arg_10)
  loc_179DA86:             Set var_110 = Me.Txt
  loc_179DA8C:             Call 0.Method_Txt_Validate0 (Cancel, var_168)
  loc_179DA94:             var_168.Text = var_E8
  loc_179DAAA:           Else
  loc_179DAB2:             If (var_DA = CInt(6)) Then
  loc_179DADE:               var_130 = Trim(CVar(Me.Fields.Item("PayType")))
  loc_179DAFE:               Set var_10C = Me.Txt
  loc_179DB04:               Call 0.Method_Txt_Validate0 (CInt(6), var_110, var_E8)
  loc_179DB0C:               (var_130 <> vbNullString) = var_110.Text
  loc_179DB22:               var_160 = var_106 And (CDbl(Val(var_E8)) < CDbl(0))
  loc_179DB3D:               If CBool(var_160) Then
  loc_179DB5D:                 var_E4 = Me.Fields.Item("PayType")
  loc_179DB7F:                 If (var_E4.Value = "Cash") Then
  loc_179DB90:                   Set var_E0 = Me.Txt
  loc_179DB96:                   Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_179DB9E:                   var_E4.Text = "CASH PAID "
  loc_179DBAA:                 End If
  loc_179DBAA:               End If
  loc_179DBD1:               Set var_E4 = Me.Txt
  loc_179DBD7:               Call 0.Method_Txt_Validate0 (Cancel, var_10C)
  loc_179DC18:               If (((Me.LblNature.Caption = "Credit Card") And (CDbl(Val(var_10C.Text)) <= CDbl(0))) And (fdPaymentCharge.ParentForm = "Check Out")) Then
  loc_179DC34:                 MsgBox("Negative Settlement is not allowed", &H40, var_130, var_140, var_160)
  loc_179DC46:                 arg_10 = &HFF
  loc_179DC49:               End If
  loc_179DC53:               Set var_E0 = Me.Txt
  loc_179DC59:               Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179DC93:               Set var_10C = Me.Txt
  loc_179DC99:               Call 0.Method_Txt_Validate0 (Cancel, var_110, CStr(Format(CVar(var_E4), "0.00")))
  loc_179DCA1:               var_110.Text = 1
  loc_179DCBB:             End If
  loc_179DCBB:           End If
  loc_179DCBB:         End If
  loc_179DCBB:       End If
  loc_179DCBB:     End If
  loc_179DCBB:   End If
  loc_179DCBB: End If
  loc_179DCBB: Call Proc_61_47_F6EF2C(1)
  loc_179DCC5: Set var_D8 = Nothing
  loc_179DCC8: Exit Sub
End Sub

Private Sub frmcmd_Click(Index As Integer) 'F60C50
  'Data Table: 544E80
  Dim var_8A As Integer
  Dim var_94 As TextBox
  Dim var_90 As Variant
  loc_F60B2B: var_8A = Index
  loc_F60B34: If (var_8A = 0) Then
  loc_F60B45:   Set var_90 = Me.Txt
  loc_F60B4B:   Call 0.Method_frmcmd_Click0 (CInt(0), var_94)
  loc_F60B6A:   If (var_94.Text = vbNullString) Then
  loc_F60B6D:     Exit Sub
  loc_F60B6E:   End If
  loc_F60B80:   fdDisplayFolio.OpenMode = 1
  loc_F60B93:   Set var_90 = Me.FrmAdjust
  loc_F60B99:   Call 0.Method_frmcmd_Click0 (CInt(0), var_94)
  loc_F60BB9:   Set var_9C = New fdDisplayFolio.Txt
  loc_F60BBF:   Call 0.Method_frmcmd_Click0 (CInt(0), var_A0)
  loc_F60BC7:   fdDisplayFolio.Txt.Text = fdDisplayFolio.FrmAdjust.Text
  loc_F60BEC:   Call fdDisplayFolio.Txt_Validate(CInt(0))
  loc_F60C04:   Call 0.Method_arg_2B0 (1, var_C4)
  loc_F60C0E:   Set var_88 = Nothing
  loc_F60C14: Else
  loc_F60C1A:   If (var_8A = 1) Then
  loc_F60C1D:     GoTo loc_F60C4F
  loc_F60C20:   End If
  loc_F60C26:   If (var_8A = 2) Then
  loc_F60C29:     Call TopCtrl1_UnknownEvent_16()
  loc_F60C31:   Else
  loc_F60C37:     If (var_8A = 3) Then
  loc_F60C47:       Me.Global.Unload Me
  loc_F60C4F:     End If
  loc_F60C4F:     ' Referenced from:   F60C1D
  loc_F60C4F:   End If
  loc_F60C4F: End If
  loc_F60C4F: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F3AB54
  'Data Table: 544E80
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3AA4B: Me.DGRoomNo.Visible = False
  loc_F3AA6A: If (Me.RecordCount > 0) Then
  loc_F3AAA9:   Set var_B4 = Me.Txt
  loc_F3AAAF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3AAB7:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F3AAEA:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F3AB09:   Set var_B4 = Me.Txt
  loc_F3AB0F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3AB17:   var_B8.Text = CStr(var_B0.Value)
  loc_F3AB2D: End If
  loc_F3AB38: Set var_A8 = Me.Txt
  loc_F3AB3E: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F3AB46: var_B0.SetFocus
  loc_F3AB52: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9B260
  'Data Table: 544E80
  Dim var_A8 As Variant
  loc_E9B1E4: Set var_88 = Me.DGRoomNo
  loc_E9B20E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9B216: Set var_BC = Me.DGRoomNo
  loc_E9B250: Proc_6_138_106E830(Me.DGRoomNo, global_96, 0, Me.FGPoint)
  loc_E9B25E: Exit Sub
End Sub

Private Sub DGChrgPayment_UnknownEvent_9 'F85EFC
  'Data Table: 544E80
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F85DB7: Me.DGChrgPayment.Visible = False
  loc_F85DD6: If (Me.RecordCount > 0) Then
  loc_F85E15:   Set var_B4 = Me.Txt
  loc_F85E1B:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(4), var_B8)
  loc_F85E23:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F85E56:   var_B0 = Me.Fields.Item("Name")
  loc_F85E75:   Set var_B4 = Me.Txt
  loc_F85E7B:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(4), var_B8)
  loc_F85E83:   var_B8.Text = CStr(var_B0.Value)
  loc_F85E99: End If
  loc_F85E99: Call Proc_61_47_F6EF2C()
  loc_F85EBA: If (CBool(Me.FGPoint.Visible) = 0) Then
  loc_F85ECC:   Me.FGPoint.Visible = False
  loc_F85ED4: End If
  loc_F85EDF: Set var_A8 = Me.Txt
  loc_F85EE5: Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(4))
  loc_F85EED: var_B0.SetFocus
  loc_F85EF9: Exit Sub
End Sub

Private Sub DGChrgPayment_UnknownEvent_1F 'E9D120
  'Data Table: 544E80
  Dim var_A8 As Variant
  loc_E9D0A4: Set var_88 = Me.DGChrgPayment
  loc_E9D0CE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9D0D6: Set var_BC = Me.DGChrgPayment
  loc_E9D110: Proc_6_138_106E830(Me.DGChrgPayment, global_100, 0, Me.FGPoint)
  loc_E9D11E: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F5C2D8
  'Data Table: 544E80
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5C1C1: Set var_A8 = Me.DGMember
  loc_F5C1C7: var_A8.Visible = False
  loc_F5C1E9: If (Me.var_A8.RecordCount > 0) Then
  loc_F5C22B:   Set var_B4 = Me.Txt
  loc_F5C231:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H27), var_B8)
  loc_F5C239:   var_B8.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_F5C26F:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_F5C28E:   Set var_B4 = Me.Txt
  loc_F5C294:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H27), var_B8)
  loc_F5C29C:   var_B8.Text = CStr(var_B0.Value)
  loc_F5C2B2: End If
  loc_F5C2BD: Set var_A8 = Me.Txt
  loc_F5C2C3: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H27))
  loc_F5C2CB: var_B0.SetFocus
  loc_F5C2D7: Exit Sub
End Sub

Private Sub CmdReference_Click() 'EAD96C
  'Data Table: 544E80
  Dim var_88 As Frame
  Dim var_90 As TextBox
  loc_EAD8F3: If (Me.FrReference.Visible = &HFF) Then
  loc_EAD902:   Me.FrReference.Visible = False
  loc_EAD915:   Set var_88 = Me.Txt
  loc_EAD91B:   Call 0.Method_CmdReference_Click0 (CInt(5))
  loc_EAD923:   var_90.SetFocus
  loc_EAD932: Else
  loc_EAD93E:   Me.FrReference.Visible = True
  loc_EAD951:   Set var_88 = Me.Txt
  loc_EAD957:   Call 0.Method_CmdReference_Click0 (CInt(&H29), var_90)
  loc_EAD95F:   var_90.SetFocus
  loc_EAD96B: End If
  loc_EAD96B: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F5B798
  'Data Table: 544E80
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5B681: Set var_A8 = Me.DGCompany
  loc_F5B687: var_A8.Visible = False
  loc_F5B6A9: If (Me.var_A8.RecordCount > 0) Then
  loc_F5B6EB:   Set var_B4 = Me.Txt
  loc_F5B6F1:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H19), var_B8)
  loc_F5B6F9:   var_B8.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_F5B72F:   var_B0 = Me.Recordset15.Fields.Item("RoomNo")
  loc_F5B74E:   Set var_B4 = Me.Txt
  loc_F5B754:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H19), var_B8)
  loc_F5B75C:   var_B8.Text = CStr(var_B0.Value)
  loc_F5B772: End If
  loc_F5B77D: Set var_A8 = Me.Txt
  loc_F5B783: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H19))
  loc_F5B78B: var_B0.SetFocus
  loc_F5B797: Exit Sub
End Sub

Public Function global_52Get() '546D44
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '546D53
  global_52 = Value
End Sub

Public Function global_56Get() '546D62
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '546D71
  global_56 = Value
End Sub

Public Property Get OpenMode() 'E04890
  'Data Table: 544E80
  loc_E04889: OpenMode = global_152
End Sub

Public Property Let OpenMode(vNewValue) 'E010CC
  'Data Table: 544E80
  loc_E010C6: global_152 = vNewValue
  loc_E010C9: Exit Sub
End Sub

Public Property Get ParentForm() 'E0DEE4
  'Data Table: 544E80
  loc_E0DED8: var_88 = global_160
  loc_E0DEDB: ParentForm = 
End Sub

Public Property Let ParentForm(vNewValue) 'E0E8BC
  'Data Table: 544E80
  loc_E0E8B4: global_160 = vNewValue
  loc_E0E8B8: Exit Sub
End Sub

Public Sub Proc_61_45_E79E34(arg_C) 'E79E34
  'Data Table: 544E80
  Dim var_98 As TextBox
  loc_E79DE2: Set var_8C = Me.Txt
  loc_E79DE8: Call 0.Method_Proc_61_45_E79E34C (var_8E, var_86)
  loc_E79DF8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79E0E:   Set var_8C = Me.Txt
  loc_E79E14:   Call 0.Method_Proc_61_45_E79E340 (CInt(var_86), var_98)
  loc_E79E1C:   var_98.Enabled = arg_C
  loc_E79E2B: Next var_92 'Byte
  loc_E79E31: Exit Sub
End Sub

Public Sub Proc_61_46_F06FC4
  'Data Table: 544E80
  Dim var_98 As Variant
  loc_F06EE6: Set var_8C = Me.Txt
  loc_F06EEC: Call 0.Method_Proc_61_46_F06FC4C (var_8E, var_86)
  loc_F06EFC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F06F12:   Set var_8C = Me.Txt
  loc_F06F18:   Call 0.Method_Proc_61_46_F06FC40 (CInt(var_86), var_98)
  loc_F06F20:   var_98.Text = vbNullString
  loc_F06F3C:   Set var_8C = Me.Txt
  loc_F06F42:   Call 0.Method_Proc_61_46_F06FC40 (CInt(var_86), var_98)
  loc_F06F4A:   var_98.Tag = vbNullString
  loc_F06F59: Next var_92 'Byte
  loc_F06F6D: Set var_8C = Me.LTxt
  loc_F06F73: Call 0.Method_Proc_61_46_F06FC4C (var_8E, var_86)
  loc_F06F83: For var_9C =  To CByte((var_8E - 1)): CByte(0) = var_9C 'Byte
  loc_F06F99:   Set var_8C = Me.LTxt
  loc_F06F9F:   Call 0.Method_Proc_61_46_F06FC40 (CInt(var_86), var_98)
  loc_F06FA7:   var_98.Caption = vbNullString
  loc_F06FB6: Next var_9C 'Byte
  loc_F06FBC: Call Proc_61_51_121DBB4()
  loc_F06FC1: Exit Sub
End Sub

Public Sub Proc_61_47_F6EF2C
  'Data Table: 544E80
  loc_F6EE00: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F6EE12:   Me.DGRoomNo.Visible = False
  loc_F6EE1A: End If
  loc_F6EE36: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_F6EE48:   Me.DGChrgPayment.Visible = False
  loc_F6EE50: End If
  loc_F6EE6C: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F6EE7E:   Me.DGRoom.Visible = False
  loc_F6EE86: End If
  loc_F6EEA2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6EEB4:   Me.FGPoint.Visible = False
  loc_F6EEBC: End If
  loc_F6EED8: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_F6EEEA:   Me.DGMember.Visible = False
  loc_F6EEF2: End If
  loc_F6EF0E: If (CBool(Me.DGCCurreny.Visible) = &HFF) Then
  loc_F6EF20:   Me.DGCCurreny.Visible = False
  loc_F6EF28: End If
  loc_F6EF28: Exit Sub
End Sub

Public Sub Proc_61_48_10AE728
  'Data Table: 544E80
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_96 As Integer
  Dim var_13C As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  loc_10AE4A0: var_90 = global_56
  loc_10AE4B7: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10AE4E8: Set var_B4 = Me.Txt
  loc_10AE4EE: Call 0.Method_Proc_61_48_10AE7280 (CInt(&H11), var_B8, CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10AE4FD: Proc_6_7_F26918(var_D8, CVar(var_B8), var_13C)
  loc_10AE505: var_F8 = -1 & var_D8 
  loc_10AE519: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_10AE524: Set var_8C = var_140
  loc_10AE560: If (var_8C.RecordCount > 0) Then
  loc_10AE59F:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_10AE5A2:     GoTo loc_10AE622
  loc_10AE5A5:   End If
  loc_10AE5D0:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10AE5F7:   var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_10AE60C:   var_D8 = (var_B8.Value + 1)
  loc_10AE611:   var_96 = CInt(var_D8)
  loc_10AE622:   ' Referenced from: 10AE5A2
  loc_10AE622: End If
  loc_10AE64D: var_C8 = Space((5 - Len(var_90)))
  loc_10AE655: var_E8 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_B8.Value)
  loc_10AE666: var_F8 = Space((5 - Len(var_94)))
  loc_10AE66E: var_118 = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_F8)
  loc_10AE678: var_13C = (var_F8 & " Order By VP.Date_From DESC" + CVar(var_94))
  loc_10AE68E: var_158 = Space((8 - Len(CStr(var_96))))
  loc_10AE696: var_168 = (var_13C + var_158)
  loc_10AE6A2: var_188 = (var_168 + CVar(CStr(var_96)))
  loc_10AE6A7: var_9C = CStr(var_188)
  loc_10AE6D7: Me.LblVPrefix.Caption = var_94
  loc_10AE6ED: Set var_B4 = Me.Txt
  loc_10AE6F3: Call 0.Method_Proc_61_48_10AE7280 (CInt(&H10), var_B8)
  loc_10AE6FB: var_B8.Text = var_9C
  loc_10AE714: var_88 = var_9C
  loc_10AE71C: Set var_8C = Nothing
  loc_10AE71F: Proc_61_48_10AE728 = CLng(var_96)
End Sub

Public Sub Proc_61_49_129DBA0(arg_C) '129DBA0
  'Data Table: 544E80
  Dim var_88 As Frame
  Dim var_8C As Variant
  Dim var_9C As TextBox
  Dim var_98 As Frame
  loc_129D598: Me.FrTxnNo.Visible = False
  loc_129D5AC: Me.FrChqDet.Visible = False
  loc_129D5C0: Me.FrCCDet.Visible = False
  loc_129D5D4: Me.FrEmp.Visible = False
  loc_129D5E8: Me.FrComp.Visible = False
  loc_129D5FC: Me.FrMember.Visible = False
  loc_129D610: Me.FrSendRoom.Visible = False
  loc_129D626: Set var_88 = Me.Txt
  loc_129D62C: Call 0.Method_Proc_61_49_129DBA00 (CInt(&H18), var_8C)
  loc_129D634: var_8C.Tag = vbNullString
  loc_129D643: var_90 = arg_C
  loc_129D64E: If (var_90 = "Cheque") Then
  loc_129D65D:   Me.FrChqDet.Visible = True
  loc_129D673:   Set var_98 = Me.Txt
  loc_129D679:   Call 0.Method_Proc_61_49_129DBA00 (CInt(5), var_9C)
  loc_129D694:   Set var_88 = Me.Txt
  loc_129D69A:   Call 0.Method_Proc_61_49_129DBA00 (CInt(5), var_8C)
  loc_129D6B9:   Me.FrChqDet.Top = (var_8C.Top + var_9C.Height)
  loc_129D6D7:   Set var_88 = Me.Lbl
  loc_129D6DD:   Call 0.Method_Proc_61_49_129DBA00 (4, var_8C)
  loc_129D6F7:   Me.FrChqDet.Left = var_8C.Left
  loc_129D708: Else
  loc_129D710:   If (var_90 = "Credit Card") Then
  loc_129D71E:     If (global_88 = "Y") Then
  loc_129D72D:       Me.FrCCDet.Visible = True
  loc_129D743:       Set var_98 = Me.Txt
  loc_129D749:       Call 0.Method_Proc_61_49_129DBA00 (CInt(5), var_9C)
  loc_129D764:       Set var_88 = Me.Txt
  loc_129D76A:       Call 0.Method_Proc_61_49_129DBA00 (CInt(5), var_8C)
  loc_129D789:       Me.FrCCDet.Top = (var_8C.Top + var_9C.Height)
  loc_129D7A7:       Set var_88 = Me.Lbl
  loc_129D7AD:       Call 0.Method_Proc_61_49_129DBA00 (4, var_8C)
  loc_129D7C7:       Me.FrCCDet.Left = var_8C.Left
  loc_129D7D5:     End If
  loc_129D7D8:   Else
  loc_129D7E0:     If (var_90 = "Staff") Then
  loc_129D7EF:       Me.FrEmp.Visible = True
  loc_129D805:       Set var_98 = Me.Txt
  loc_129D80B:       Call 0.Method_Proc_61_49_129DBA00 (CInt(5), var_9C)
  loc_129D826:       Set var_88 = Me.Txt
  loc_129D82C:       Call 0.Method_Proc_61_49_129DBA00 (CInt(5), var_8C)
  loc_129D84B:       Me.FrEmp.Top = (var_8C.Top + var_9C.Height)
  loc_129D869:       Set var_88 = Me.Lbl
  loc_129D86F:       Call 0.Method_Proc_61_49_129DBA00 (4, var_8C)
  loc_129D889:       Me.FrEmp.Left = var_8C.Left
  loc_129D89A:     Else
  loc_129D8A2:       If (var_90 = "Company") Then
  loc_129D8B1:         Me.FrComp.Visible = True
  loc_129D8C7:         Set var_98 = Me.Txt
  loc_129D8CD:         Call 0.Method_Proc_61_49_129DBA00 (CInt(5), var_9C)
  loc_129D8E8:         Set var_88 = Me.Txt
  loc_129D8EE:         Call 0.Method_Proc_61_49_129DBA00 (CInt(5), var_8C)
  loc_129D90D:         Me.FrComp.Top = (var_8C.Top + var_9C.Height)
  loc_129D92B:         Set var_88 = Me.Lbl
  loc_129D931:         Call 0.Method_Proc_61_49_129DBA00 (4, var_8C)
  loc_129D94B:         Me.FrComp.Left = var_8C.Left
  loc_129D95C:       Else
  loc_129D964:         If (var_90 = "Room") Then
  loc_129D973:           Me.FrSendRoom.Visible = True
  loc_129D989:           Set var_98 = Me.Txt
  loc_129D98F:           Call 0.Method_Proc_61_49_129DBA00 (CInt(5), var_9C)
  loc_129D9AA:           Set var_88 = Me.Txt
  loc_129D9B0:           Call 0.Method_Proc_61_49_129DBA00 (CInt(5), var_8C)
  loc_129D9CF:           Me.FrSendRoom.Top = (var_8C.Top + var_9C.Height)
  loc_129D9ED:           Set var_88 = Me.Lbl
  loc_129D9F3:           Call 0.Method_Proc_61_49_129DBA00 (4, var_8C)
  loc_129DA0D:           Me.FrSendRoom.Left = var_8C.Left
  loc_129DA1E:         Else
  loc_129DA26:           If (var_90 = "Member") Then
  loc_129DA35:             Me.FrMember.Visible = True
  loc_129DA4B:             Set var_98 = Me.Txt
  loc_129DA51:             Call 0.Method_Proc_61_49_129DBA00 (CInt(5), var_9C)
  loc_129DA6C:             Set var_88 = Me.Txt
  loc_129DA72:             Call 0.Method_Proc_61_49_129DBA00 (CInt(5), var_8C)
  loc_129DA91:             Me.FrMember.Top = (var_8C.Top + var_9C.Height)
  loc_129DAAF:             Set var_88 = Me.Lbl
  loc_129DAB5:             Call 0.Method_Proc_61_49_129DBA00 (4, var_8C)
  loc_129DACF:             Me.FrMember.Left = var_8C.Left
  loc_129DAE0:           Else
  loc_129DAE8:             If (var_90 = "UPI") Then
  loc_129DAF7:               Me.FrTxnNo.Visible = True
  loc_129DB0D:               Set var_98 = Me.Txt
  loc_129DB13:               Call 0.Method_Proc_61_49_129DBA00 (CInt(5), var_9C)
  loc_129DB2E:               Set var_88 = Me.Txt
  loc_129DB34:               Call 0.Method_Proc_61_49_129DBA00 (CInt(5), var_8C)
  loc_129DB53:               Me.FrTxnNo.Top = (var_8C.Top + var_9C.Height)
  loc_129DB71:               Set var_88 = Me.Lbl
  loc_129DB77:               Call 0.Method_Proc_61_49_129DBA00 (4, var_8C)
  loc_129DB91:               Me.FrTxnNo.Left = var_8C.Left
  loc_129DB9F:             End If
  loc_129DB9F:           End If
  loc_129DB9F:         End If
  loc_129DB9F:       End If
  loc_129DB9F:     End If
  loc_129DB9F:   End If
  loc_129DB9F: End If
  loc_129DB9F: Exit Sub
End Sub

Public Sub Proc_61_50_13A4CD8
  'Data Table: 544E80
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_F0 As String
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As TextBox
  Dim Me As Variant
  loc_13A43CF: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A43D4: var_C8 = 1
  loc_13A440B: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13A4412:   Set var_F4 = Me.FGrid
  loc_13A4428:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A442D:   var_C8 = 1
  loc_13A4444:   var_F0 = CStr(var_F4.TextMatrix))
  loc_13A4452:   Set var_DC = Me.Txt
  loc_13A4458:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(4), var_F8, var_F0, var_C8)
  loc_13A4460:   var_F8.Tag = var_A8
  loc_13A448F:   If (Me.RecordCount > 0) Then
  loc_13A4498:     Me.MoveFirst
  loc_13A44B4:     If (Me.AbsolutePosition > 0) Then
  loc_13A44D6:       Set var_88 = Me.Txt
  loc_13A44DC:       Call 0.Method_Proc_61_50_13A4CD80 (CInt(4), var_DC, var_F0, "Code='", 0)
  loc_13A44E4:       1 = var_DC.Tag
  loc_13A44FD:       Me.Find var_A8 & var_F0 & "'", var_C8, var_A8
  loc_13A4512:     End If
  loc_13A4512:   End If
  loc_13A4525:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A452A:   var_C8 = 3
  loc_13A4547:   global_144 = CStr(var_F4.TextMatrix))
  loc_13A4595:   Set var_DC = Me.Txt
  loc_13A459B:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(4), var_F8, CStr(var_F4.TextMatrix)), 4)
  loc_13A45A3:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A45F7:   Set var_DC = Me.Txt
  loc_13A45FD:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(&H2A), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H1A)))
  loc_13A4605:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4630:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A4635:   var_C8 = 5
  loc_13A4652:   global_136 = CStr(var_F4.TextMatrix))
  loc_13A4676:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A467B:   var_C8 = 6
  loc_13A4698:   global_140 = CStr(var_F4.TextMatrix))
  loc_13A46BC:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A46E5:   Set var_DC = Me.Txt
  loc_13A46EB:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(6), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)), var_A8, CVar(CLng(9)))
  loc_13A46F3:   var_F8.Text = var_A8
  loc_13A4726:   var_C8 = CVar(CLng(&HA)) 'Long
  loc_13A4747:   Set var_DC = Me.Txt
  loc_13A474D:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_13A4755:   var_F8.Text = var_C8
  loc_13A47A9:   Set var_DC = Me.Txt
  loc_13A47AF:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(&H13), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_13A47B7:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A480B:   Set var_DC = Me.Txt
  loc_13A4811:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(&H14), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_13A4819:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A486D:   Set var_DC = Me.Txt
  loc_13A4873:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(&H2B), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H1B)))
  loc_13A487B:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A48CF:   Set var_DC = Me.Txt
  loc_13A48D5:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(&H15), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_13A48DD:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4931:   Set var_DC = Me.Txt
  loc_13A4937:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(&H25), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H18)))
  loc_13A493F:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4993:   Set var_DC = Me.Txt
  loc_13A4999:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(&H16), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_13A49A1:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A49F5:   Set var_DC = Me.Txt
  loc_13A49FB:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(5), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_13A4A03:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4A57:   Set var_DC = Me.Txt
  loc_13A4A5D:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(&H17), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_13A4A65:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4AB9:   Set var_DC = Me.Txt
  loc_13A4ABF:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(&H17), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H11)))
  loc_13A4AC7:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13A4B1B:   Set var_DC = Me.Txt
  loc_13A4B21:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(&H23), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H12)))
  loc_13A4B29:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4B7D:   Set var_DC = Me.Txt
  loc_13A4B83:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(0), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H17)))
  loc_13A4B8B:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13A4BDF:   Set var_DC = Me.Txt
  loc_13A4BE5:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(0), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(7)))
  loc_13A4BED:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4C41:   Set var_DC = Me.Txt
  loc_13A4C47:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(&H19), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H15)))
  loc_13A4C4F:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13A4CA3:   Set var_DC = Me.Txt
  loc_13A4CA9:   Call 0.Method_Proc_61_50_13A4CD80 (CInt(&H19), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H16)))
  loc_13A4CB1:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4CCE:   global_132 = &HFF
  loc_13A4CD3:   Set var_F4 = Nothing 
  loc_13A4CD7: End If
  loc_13A4CD7: Exit Sub
End Sub

Public Sub Proc_61_51_121DBB4
  'Data Table: 544E80
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_EC As MSHFlexGrid
  Dim var_FC As Variant
  loc_121D6B4: Set var_88 = Me.FGrid
  loc_121D6C3: var_88.Cols = &H1B
  loc_121D6D4: var_88.Rows = 1
  loc_121D6DC: var_98 = CVar(CLng(&HA)) 'Long
  loc_121D6E1: var_B8 = 0
  loc_121D6ED: LateIdCallSt
  loc_121D6F8: var_98 = CVar(CLng(&HB)) 'Long
  loc_121D6FD: var_B8 = 0
  loc_121D709: LateIdCallSt
  loc_121D714: var_98 = CVar(CLng(&HC)) 'Long
  loc_121D719: var_B8 = 0
  loc_121D725: LateIdCallSt
  loc_121D730: var_98 = CVar(CLng(&H1B)) 'Long
  loc_121D735: var_B8 = 0
  loc_121D741: LateIdCallSt
  loc_121D74C: var_98 = CVar(CLng(&HD)) 'Long
  loc_121D751: var_B8 = 0
  loc_121D75D: LateIdCallSt
  loc_121D768: var_98 = CVar(CLng(&HE)) 'Long
  loc_121D76D: var_B8 = 0
  loc_121D779: LateIdCallSt
  loc_121D784: var_98 = CVar(CLng(&HF)) 'Long
  loc_121D789: var_B8 = 0
  loc_121D795: LateIdCallSt
  loc_121D7A0: var_98 = CVar(CLng(&H10)) 'Long
  loc_121D7A5: var_B8 = 0
  loc_121D7B1: LateIdCallSt
  loc_121D7BC: var_98 = CVar(CLng(&H11)) 'Long
  loc_121D7C1: var_B8 = 0
  loc_121D7CD: LateIdCallSt
  loc_121D7D8: var_98 = CVar(CLng(&H12)) 'Long
  loc_121D7DD: var_B8 = 0
  loc_121D7E9: LateIdCallSt
  loc_121D7F1: var_98 = 1
  loc_121D7FA: var_B8 = 0
  loc_121D806: LateIdCallSt
  loc_121D80E: var_98 = 2
  loc_121D817: var_B8 = 0
  loc_121D823: LateIdCallSt
  loc_121D82B: var_98 = 5
  loc_121D834: var_B8 = 0
  loc_121D840: LateIdCallSt
  loc_121D848: var_98 = 6
  loc_121D851: var_B8 = 0
  loc_121D85D: LateIdCallSt
  loc_121D868: var_98 = CVar(CLng(7)) 'Long
  loc_121D86D: var_B8 = 0
  loc_121D879: LateIdCallSt
  loc_121D884: var_98 = CVar(CLng(8)) 'Long
  loc_121D889: var_B8 = 0
  loc_121D895: LateIdCallSt
  loc_121D89D: var_98 = 3
  loc_121D8A6: var_B8 = 0
  loc_121D8B2: LateIdCallSt
  loc_121D8BD: var_98 = CVar(CLng(&H17)) 'Long
  loc_121D8C2: var_B8 = 0
  loc_121D8CE: LateIdCallSt
  loc_121D8D6: var_98 = 0
  loc_121D8DF: var_B8 = &HFA
  loc_121D8EB: LateIdCallSt
  loc_121D8F3: var_98 = 0
  loc_121D8FC: var_B8 = 0
  loc_121D905: var_D8 = "SNo"
  loc_121D90E: LateIdCallSt
  loc_121D916: var_98 = 0
  loc_121D91F: var_B8 = &H1C2
  loc_121D92B: LateIdCallSt
  loc_121D933: var_98 = 0
  loc_121D93C: var_B8 = 4
  loc_121D945: var_D8 = "Payment Type"
  loc_121D94E: LateIdCallSt
  loc_121D956: var_98 = 4
  loc_121D965: var_B8 = CVar(CInt(1)) 'Integer
  loc_121D96C: LateIdCallSt
  loc_121D974: var_98 = 4
  loc_121D97D: var_B8 = &HCE4
  loc_121D989: LateIdCallSt
  loc_121D991: var_98 = 0
  loc_121D99D: var_B8 = CVar(CLng(9)) 'Long
  loc_121D9A2: var_D8 = "Amount"
  loc_121D9AB: LateIdCallSt
  loc_121D9B6: var_98 = CVar(CLng(9)) 'Long
  loc_121D9C1: var_B8 = CVar(CInt(7)) 'Integer
  loc_121D9C8: LateIdCallSt
  loc_121D9D3: var_98 = CVar(CLng(9)) 'Long
  loc_121D9DE: var_B8 = CVar(CInt(7)) 'Integer
  loc_121D9E5: LateIdCallSt
  loc_121D9F0: var_98 = CVar(CLng(9)) 'Long
  loc_121D9F5: var_B8 = &H424
  loc_121DA01: LateIdCallSt
  loc_121DA09: var_98 = 0
  loc_121DA15: var_B8 = CVar(CLng(&H12)) 'Long
  loc_121DA1A: var_D8 = "Tip"
  loc_121DA23: LateIdCallSt
  loc_121DA2E: var_98 = CVar(CLng(&H12)) 'Long
  loc_121DA39: var_B8 = CVar(CInt(7)) 'Integer
  loc_121DA40: LateIdCallSt
  loc_121DA4B: var_98 = CVar(CLng(&H12)) 'Long
  loc_121DA56: var_B8 = CVar(CInt(7)) 'Integer
  loc_121DA5D: LateIdCallSt
  loc_121DA68: var_98 = CVar(CLng(&H12)) 'Long
  loc_121DA6D: var_B8 = 0
  loc_121DA79: LateIdCallSt
  loc_121DA84: var_98 = CVar(CLng(&H13)) 'Long
  loc_121DA89: var_B8 = 0
  loc_121DA95: LateIdCallSt
  loc_121DAA0: var_98 = CVar(CLng(&H14)) 'Long
  loc_121DAA5: var_B8 = 0
  loc_121DAB1: LateIdCallSt
  loc_121DABC: var_98 = CVar(CLng(&H15)) 'Long
  loc_121DAC1: var_B8 = 0
  loc_121DACD: LateIdCallSt
  loc_121DAD8: var_98 = CVar(CLng(&H16)) 'Long
  loc_121DADD: var_B8 = 0
  loc_121DAE9: LateIdCallSt
  loc_121DAF4: var_98 = CVar(CLng(&H18)) 'Long
  loc_121DAF9: var_B8 = 0
  loc_121DB05: LateIdCallSt
  loc_121DB10: var_98 = CVar(CLng(&H19)) 'Long
  loc_121DB15: var_B8 = 0
  loc_121DB21: LateIdCallSt
  loc_121DB2C: var_98 = CVar(CLng(&H1A)) 'Long
  loc_121DB31: var_B8 = 0
  loc_121DB3D: LateIdCallSt
  loc_121DB47: Set var_88 = Nothing 
  loc_121DB4B: var_98 = vbNullString
  loc_121DB55: Set var_EC = Me.FGrid
  loc_121DB79: Me.FGrid.FixedRows = 1
  loc_121DB81: var_98 = 1
  loc_121DB8A: var_B8 = 0
  loc_121DB97: var_FC = CVar(CStr(1)) 'String
  loc_121DB9F: Set var_EC = Me.FGrid
  loc_121DBA5: LateIdCallSt
  loc_121DBB3: Exit Sub
End Sub

Public Sub Proc_61_52_15B1714
  'Data Table: 544E80
  Dim var_90 As Variant
  Dim var_AC As Variant
  Dim Me As Variant
  Dim var_8C As Variant
  Dim var_CC As Variant
  Dim var_E0 As TextBox
  Dim var_F0 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_98 As String
  Dim var_86 As Integer
  Dim var_140 As Variant
  loc_15B04B3: Set var_8C = Me.Txt
  loc_15B04B9: Call 0.Method_Proc_61_52_15B17140 (CInt(4))
  loc_15B04E2: If (Proc_6_27_EA61EC(var_90, "Charge/Payment") = 0) Then
  loc_15B04E5:   Exit Sub
  loc_15B04E6: End If
  loc_15B04F4: Set var_8C = Me.Txt
  loc_15B04FA: Call 0.Method_Proc_61_52_15B17140 (CInt(6), var_90)
  loc_15B051E: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_15B052F:   Set var_8C = Me.Txt
  loc_15B0535:   Call 0.Method_Proc_61_52_15B17140 (CInt(6), var_90)
  loc_15B053D:   var_90.Text = vbNullString
  loc_15B0549: End If
  loc_15B0557: Set var_8C = Me.Txt
  loc_15B055D: Call 0.Method_Proc_61_52_15B17140 (CInt(6), var_90)
  loc_15B0577: If (var_90.Visible = &HFF) Then
  loc_15B0585:   Set var_8C = Me.Txt
  loc_15B058B:   Call 0.Method_Proc_61_52_15B17140 (CInt(6), var_90)
  loc_15B0593:   var_98 = "Amount"
  loc_15B05B4:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_15B05B7:     Exit Sub
  loc_15B05B8:   End If
  loc_15B05B8: End If
  loc_15B05D5: var_90 = Me.Fields.Item("PayType")
  loc_15B05FD: Set var_94 = Me.Txt
  loc_15B0603: Call 0.Method_Proc_61_52_15B17140 (CInt(&H17), var_E0, var_98)
  loc_15B060B: (var_90.Value = "Staff") = var_E0.Text
  loc_15B0637: If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15B0645:   Set var_8C = Me.Txt
  loc_15B064B:   Call 0.Method_Proc_61_52_15B17140 (CInt(&H17))
  loc_15B0653:   var_98 = "Staff Name"
  loc_15B0674:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_15B0677:     Exit Sub
  loc_15B0678:   End If
  loc_15B0678: End If
  loc_15B0695: var_90 = Me.Fields.Item("PayType")
  loc_15B06BD: Set var_94 = Me.Txt
  loc_15B06C3: Call 0.Method_Proc_61_52_15B17140 (CInt(&H18), var_E0, var_98)
  loc_15B06CB: (var_90.Value = "Room") = var_E0.Text
  loc_15B06F7: If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15B0705:   Set var_8C = Me.Txt
  loc_15B070B:   Call 0.Method_Proc_61_52_15B17140 (CInt(&H18))
  loc_15B0713:   var_98 = "Room No."
  loc_15B0734:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_15B0737:     Exit Sub
  loc_15B0738:   End If
  loc_15B0738: End If
  loc_15B0755: var_90 = Me.Fields.Item("PayType")
  loc_15B077D: Set var_94 = Me.Txt
  loc_15B0783: Call 0.Method_Proc_61_52_15B17140 (CInt(&H19), var_E0, var_98)
  loc_15B078B: (var_90.Value = "Company") = var_E0.Text
  loc_15B07B7: If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15B07C5:   Set var_8C = Me.Txt
  loc_15B07CB:   Call 0.Method_Proc_61_52_15B17140 (CInt(&H19))
  loc_15B07D3:   var_98 = "Company Name"
  loc_15B07F4:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_15B07F7:     Exit Sub
  loc_15B07F8:   End If
  loc_15B07F8: End If
  loc_15B0815: var_90 = Me.Fields.Item("PayType")
  loc_15B083D: Set var_94 = Me.Txt
  loc_15B0843: Call 0.Method_Proc_61_52_15B17140 (CInt(&H27), var_E0, var_98)
  loc_15B084B: (var_90.Value = "Member") = var_E0.Text
  loc_15B0877: If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15B0885:   Set var_8C = Me.Txt
  loc_15B088B:   Call 0.Method_Proc_61_52_15B17140 (CInt(&H27))
  loc_15B0893:   var_98 = "Member Name"
  loc_15B08B4:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_15B08B7:     Exit Sub
  loc_15B08B8:   End If
  loc_15B08B8: End If
  loc_15B08C3: If (global_88 = "Y") Then
  loc_15B08E3:   var_90 = Me.Fields.Item("PayType")
  loc_15B090B:   Set var_94 = Me.Txt
  loc_15B0911:   Call 0.Method_Proc_61_52_15B17140 (CInt(&H12), var_E0, var_98)
  loc_15B0919:   (var_90.Value = "Credit Card") = var_E0.Text
  loc_15B0945:   If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15B0953:     Set var_8C = Me.Txt
  loc_15B0959:     Call 0.Method_Proc_61_52_15B17140 (CInt(&H12))
  loc_15B0961:     var_98 = "Credit Card No."
  loc_15B0982:     If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_15B0985:       Exit Sub
  loc_15B0986:     End If
  loc_15B0986:   End If
  loc_15B09A3:   var_90 = Me.Fields.Item("PayType")
  loc_15B09CB:   Set var_94 = Me.Txt
  loc_15B09D1:   Call 0.Method_Proc_61_52_15B17140 (CInt(&H13), var_E0, var_98)
  loc_15B09D9:   (var_90.Value = "Credit Card") = var_E0.Text
  loc_15B0A05:   If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15B0A13:     Set var_8C = Me.Txt
  loc_15B0A19:     Call 0.Method_Proc_61_52_15B17140 (CInt(&H13))
  loc_15B0A42:     If (Proc_6_27_EA61EC(var_90, "Holder's Name") = 0) Then
  loc_15B0A45:       Exit Sub
  loc_15B0A46:     End If
  loc_15B0A46:   End If
  loc_15B0A63:   var_90 = Me.Fields.Item("PayType")
  loc_15B0A88:   Set var_94 = Me.Txt
  loc_15B0A8E:   Call 0.Method_Proc_61_52_15B17140 (CInt(&H25), var_E0)
  loc_15B0AC7:   If CBool((var_90.Value = "Credit Card") And (Trim(CVar(var_E0)) = vbNullString)) Then
  loc_15B0AD5:     Set var_8C = Me.Txt
  loc_15B0ADB:     Call 0.Method_Proc_61_52_15B17140 (CInt(&H25), var_90)
  loc_15B0AE3:     var_98 = "Batch No"
  loc_15B0B04:     If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_15B0B12:       Set var_8C = Me.Txt
  loc_15B0B18:       Call 0.Method_Proc_61_52_15B17140 (CInt(&H25), var_90)
  loc_15B0B20:       var_90.SetFocus
  loc_15B0B2C:       Exit Sub
  loc_15B0B2D:     End If
  loc_15B0B2D:   End If
  loc_15B0B2D: End If
  loc_15B0B4A: var_90 = Me.Fields.Item("PayType")
  loc_15B0B72: Set var_94 = Me.Txt
  loc_15B0B78: Call 0.Method_Proc_61_52_15B17140 (CInt(&H2B), var_E0, var_98)
  loc_15B0B80: (var_90.Value = "UPI") = var_E0.Text
  loc_15B0BAC: If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15B0BBA:   Set var_8C = Me.Txt
  loc_15B0BC0:   Call 0.Method_Proc_61_52_15B17140 (CInt(&H2B))
  loc_15B0BC8:   var_98 = "Txn. No."
  loc_15B0BE9:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_15B0BEC:     Exit Sub
  loc_15B0BED:   End If
  loc_15B0BED: End If
  loc_15B0C0A: var_90 = Me.Fields.Item("PayType")
  loc_15B0C32: Set var_94 = Me.Txt
  loc_15B0C38: Call 0.Method_Proc_61_52_15B17140 (CInt(&H15), var_E0, var_98)
  loc_15B0C40: (var_90.Value = "Cheque") = var_E0.Text
  loc_15B0C6C: If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15B0C7A:   Set var_8C = Me.Txt
  loc_15B0C80:   Call 0.Method_Proc_61_52_15B17140 (CInt(&H15))
  loc_15B0C88:   var_98 = "Cheque No."
  loc_15B0CA9:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_15B0CAC:     Exit Sub
  loc_15B0CAD:   End If
  loc_15B0CAD: End If
  loc_15B0CCA: var_90 = Me.Fields.Item("PayType")
  loc_15B0CF2: Set var_94 = Me.Txt
  loc_15B0CF8: Call 0.Method_Proc_61_52_15B17140 (CInt(&H16), var_E0, var_98)
  loc_15B0D00: (var_90.Value = "Cheque") = var_E0.Text
  loc_15B0D2C: If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15B0D3A:   Set var_8C = Me.Txt
  loc_15B0D40:   Call 0.Method_Proc_61_52_15B17140 (CInt(&H16))
  loc_15B0D69:   If (Proc_6_27_EA61EC(var_90, "Cheque Dt.") = 0) Then
  loc_15B0D6C:     Exit Sub
  loc_15B0D6D:   End If
  loc_15B0D6D: End If
  loc_15B0D76: If (global_132 = 0) Then
  loc_15B0D92:   var_AC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15B0DB5:   var_98 = CStr(Me.FGrid.TextMatrix))
  loc_15B0DCE:   If (var_98 <> vbNullString) Then
  loc_15B0DED:     var_BC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, 4))) 'String
  loc_15B0DF5:     Set var_90 = Me.FGrid
  loc_15B0E0F:   End If
  loc_15B0E29:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15B0E35: Else
  loc_15B0E49:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_15B0E52: End If
  loc_15B0E56: Set var_144 = Me.FGrid
  loc_15B0E79: Set var_8C = Me.Txt
  loc_15B0E7F: Call 0.Method_Proc_61_52_15B17140 (CInt(4), var_90, var_98, 1, CVar(CLng(var_86)), var_86)
  loc_15B0E87: var_86 = var_90.Tag
  loc_15B0E8F: var_BC = CVar(var_98) 'String
  loc_15B0E96: LateIdCallSt
  loc_15B0EAC: var_AC = CVar(CLng(var_86)) 'Long
  loc_15B0EB1: var_F0 = 3
  loc_15B0EC7: LateIdCallSt
  loc_15B0EEF: Set var_8C = Me.Txt
  loc_15B0EF5: Call 0.Method_Proc_61_52_15B17140 (CInt(4), var_90, var_98, 4, CVar(CLng(var_86)), var_144, global_144)
  loc_15B0EFD: var_F0 = var_90.Text
  loc_15B0F0C: LateIdCallSt
  loc_15B0F3D: Set var_8C = Me.Txt
  loc_15B0F43: Call 0.Method_Proc_61_52_15B17140 (CInt(&H2A), var_90, var_98, CVar(CLng(&H1A)), CVar(CLng(var_86)), var_144, CVar(var_98))
  loc_15B0F4B: var_AC = var_90.Text
  loc_15B0F53: var_BC = CVar(var_98) 'String
  loc_15B0F5A: LateIdCallSt
  loc_15B0FA9: var_DC = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("PayType")), 2, CVar(CLng(var_86)), var_144, CVar(Me.Fields.Item("PayType")))) 'String
  loc_15B0FB0: LateIdCallSt
  loc_15B0FC6: var_CC = CVar(CLng(var_86)) 'Long
  loc_15B0FCE: var_140 = CVar(CLng(&H17)) 'Long
  loc_15B0FF0: var_90 = Me.Fields.Item("FolioNo")
  loc_15B1008: LateIdCallSt
  loc_15B103D: Set var_8C = Me.Txt
  loc_15B1043: Call 0.Method_Proc_61_52_15B17140 (CInt(&H18), var_90, var_98, CVar(CLng(&H19)), CVar(CLng(var_86)), var_144, CVar(CStr(var_90.Value)))
  loc_15B104B: var_140 = var_90.Tag
  loc_15B105A: LateIdCallSt
  loc_15B108B: Set var_8C = Me.Txt
  loc_15B1091: Call 0.Method_Proc_61_52_15B17140 (CInt(5), var_90, var_98, CVar(CLng(&HF)), CVar(CLng(var_86)), var_144, CVar(var_98))
  loc_15B1099: var_CC = var_90.Text
  loc_15B10A1: var_BC = CVar(var_98) 'String
  loc_15B10A8: LateIdCallSt
  loc_15B10BE: var_AC = CVar(CLng(var_86)) 'Long
  loc_15B10C3: var_F0 = 5
  loc_15B10D9: LateIdCallSt
  loc_15B10E5: var_AC = CVar(CLng(var_86)) 'Long
  loc_15B10EA: var_F0 = 6
  loc_15B1100: LateIdCallSt
  loc_15B1127: Set var_8C = Me.Txt
  loc_15B112D: Call 0.Method_Proc_61_52_15B17140 (CInt(0), var_90, var_98, CVar(CLng(7)), CVar(CLng(var_86)), var_144, global_140)
  loc_15B1135: var_F0 = var_90.Text
  loc_15B1144: LateIdCallSt
  loc_15B1175: Set var_8C = Me.Txt
  loc_15B117B: Call 0.Method_Proc_61_52_15B17140 (CInt(6), var_90, var_98, CVar(CLng(9)), CVar(CLng(var_86)), var_144, CVar(var_98))
  loc_15B1183: var_AC = var_90.Text
  loc_15B118B: var_BC = CVar(var_98) 'String
  loc_15B1192: LateIdCallSt
  loc_15B11C3: Set var_8C = Me.Txt
  loc_15B11C9: Call 0.Method_Proc_61_52_15B17140 (CInt(&H23), var_90, var_98, CVar(CLng(&H12)), CVar(CLng(var_86)), var_144)
  loc_15B11D1: var_BC = var_90.Text
  loc_15B11D9: var_BC = CVar(var_98) 'String
  loc_15B11E0: LateIdCallSt
  loc_15B1211: Set var_8C = Me.Txt
  loc_15B1217: Call 0.Method_Proc_61_52_15B17140 (CInt(&H12), var_90, var_98, CVar(CLng(&HA)), CVar(CLng(var_86)), var_144)
  loc_15B121F: var_BC = var_90.Text
  loc_15B1227: var_BC = CVar(var_98) 'String
  loc_15B122E: LateIdCallSt
  loc_15B125F: Set var_8C = Me.Txt
  loc_15B1265: Call 0.Method_Proc_61_52_15B17140 (CInt(&H13), var_90, var_98, CVar(CLng(&HB)), CVar(CLng(var_86)), var_144)
  loc_15B126D: var_BC = var_90.Text
  loc_15B1275: var_BC = CVar(var_98) 'String
  loc_15B127C: LateIdCallSt
  loc_15B12AD: Set var_8C = Me.Txt
  loc_15B12B3: Call 0.Method_Proc_61_52_15B17140 (CInt(&H14), var_90, var_98, CVar(CLng(&HC)), CVar(CLng(var_86)), var_144)
  loc_15B12BB: var_BC = var_90.Text
  loc_15B12C3: var_BC = CVar(var_98) 'String
  loc_15B12CA: LateIdCallSt
  loc_15B12FB: Set var_8C = Me.Txt
  loc_15B1301: Call 0.Method_Proc_61_52_15B17140 (CInt(&H25), var_90, var_98, CVar(CLng(&H18)), CVar(CLng(var_86)), var_144)
  loc_15B1309: var_BC = var_90.Text
  loc_15B1311: var_BC = CVar(var_98) 'String
  loc_15B1318: LateIdCallSt
  loc_15B1349: Set var_8C = Me.Txt
  loc_15B134F: Call 0.Method_Proc_61_52_15B17140 (CInt(&H2B), var_90, var_98, CVar(CLng(&H1B)), CVar(CLng(var_86)), var_144)
  loc_15B1357: var_BC = var_90.Text
  loc_15B135F: var_BC = CVar(var_98) 'String
  loc_15B1366: LateIdCallSt
  loc_15B1397: Set var_8C = Me.Txt
  loc_15B139D: Call 0.Method_Proc_61_52_15B17140 (CInt(&H15), var_90, var_98, CVar(CLng(&HD)), CVar(CLng(var_86)), var_144)
  loc_15B13A5: var_BC = var_90.Text
  loc_15B13AD: var_BC = CVar(var_98) 'String
  loc_15B13B4: LateIdCallSt
  loc_15B13E5: Set var_8C = Me.Txt
  loc_15B13EB: Call 0.Method_Proc_61_52_15B17140 (CInt(&H16), var_90, var_98, CVar(CLng(&HE)), CVar(CLng(var_86)), var_144)
  loc_15B13F3: var_BC = var_90.Text
  loc_15B13FB: var_BC = CVar(var_98) 'String
  loc_15B1402: LateIdCallSt
  loc_15B1433: Set var_8C = Me.Txt
  loc_15B1439: Call 0.Method_Proc_61_52_15B17140 (CInt(&H17), var_90, var_98, CVar(CLng(&H10)), CVar(CLng(var_86)), var_144)
  loc_15B1441: var_BC = var_90.Text
  loc_15B1449: var_BC = CVar(var_98) 'String
  loc_15B1450: LateIdCallSt
  loc_15B1481: Set var_8C = Me.Txt
  loc_15B1487: Call 0.Method_Proc_61_52_15B17140 (CInt(&H17), var_90, var_98, CVar(CLng(&H11)), CVar(CLng(var_86)), var_144)
  loc_15B148F: var_BC = var_90.Tag
  loc_15B1497: var_BC = CVar(var_98) 'String
  loc_15B149E: LateIdCallSt
  loc_15B14CF: Set var_8C = Me.Txt
  loc_15B14D5: Call 0.Method_Proc_61_52_15B17140 (CInt(0), var_90, var_98, CVar(CLng(&H13)), CVar(CLng(var_86)), var_144)
  loc_15B14DD: var_BC = var_90.Tag
  loc_15B14E5: var_BC = CVar(var_98) 'String
  loc_15B14EC: LateIdCallSt
  loc_15B151D: Set var_8C = Me.Txt
  loc_15B1523: Call 0.Method_Proc_61_52_15B17140 (CInt(0), var_90, var_98, CVar(CLng(&H14)), CVar(CLng(var_86)), var_144)
  loc_15B152B: var_BC = var_90.Text
  loc_15B1533: var_BC = CVar(var_98) 'String
  loc_15B153A: LateIdCallSt
  loc_15B1550: var_AC = CVar(CLng(var_86)) 'Long
  loc_15B1555: var_F0 = 2
  loc_15B156C: var_98 = CStr(Txt.DispID_41)
  loc_15B157A: If (var_98 = "Member") Then
  loc_15B159C:   Set var_8C = Me.Txt
  loc_15B15A2:   Call 0.Method_Proc_61_52_15B17140 (CInt(&H27), var_90, var_98, CVar(CLng(&H15)), CVar(CLng(var_86)), CVar(CLng(&H15)), CVar(CLng(var_86)))
  loc_15B15AA:   var_144 = var_90.Tag
  loc_15B15B9:   LateIdCallSt
  loc_15B15EA:   Set var_8C = Me.Txt
  loc_15B15F0:   Call 0.Method_Proc_61_52_15B17140 (CInt(&H27), var_90, var_98, CVar(CLng(&H16)), CVar(CLng(var_86)), var_144, CVar(var_98))
  loc_15B15F8:   var_BC = var_90.Text
  loc_15B1600:   var_BC = CVar(var_98) 'String
  loc_15B1607:   LateIdCallSt
  loc_15B161C: Else
  loc_15B163B:   Set var_8C = Me.Txt
  loc_15B1641:   Call 0.Method_Proc_61_52_15B17140 (CInt(&H19), var_90, var_98, CVar(CLng(&H15)), CVar(CLng(var_86)), var_144)
  loc_15B1649:   var_BC = var_90.Tag
  loc_15B1651:   var_BC = CVar(var_98) 'String
  loc_15B1658:   LateIdCallSt
  loc_15B166E:   var_AC = CVar(CLng(var_86)) 'Long
  loc_15B1689:   Set var_8C = Me.Txt
  loc_15B168F:   Call 0.Method_Proc_61_52_15B17140 (CInt(&H19), var_90, var_98, CVar(CLng(&H16)), var_AC, var_144)
  loc_15B1697:   var_BC = var_90.Text
  loc_15B169F:   var_BC = CVar(var_98) 'String
  loc_15B16A6:   LateIdCallSt
  loc_15B16B8: End If
  loc_15B16BE: Call Proc_61_53_12078B0(Nothing, var_BC, Nothing, global_136)
  loc_15B16D1: Set var_8C = Me.LTxt
  loc_15B16D7: Call 0.Method_Proc_61_52_15B17140 (CInt(2), var_90, var_98)
  loc_15B16DF: var_F0 = var_90.Caption
  loc_15B16FB: If (CDbl(Val(var_98)) = CDbl(0)) Then
  loc_15B16FE:   Call TopCtrl1_UnknownEvent_16()
  loc_15B1703:   Exit Sub
  loc_15B1704: End If
  loc_15B1704: Call Proc_61_54_1038ACC(var_AC)
  loc_15B170E: global_132 = 0
  loc_15B1711: Exit Sub
End Sub

Public Sub Proc_61_53_12078B0
  'Data Table: 544E80
  Dim var_98 As Variant
  Dim var_D4 As String
  Dim var_D0 As Label
  Dim var_CC As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_154 As Double
  Dim var_FC As MSHFlexGrid
  Dim var_100 As String
  Dim var_15C As Double
  Dim var_C8 As Variant
  Dim var_148 As Label
  Dim var_144 As Label
  Dim var_160 As Label
  loc_120743A: Set var_CC = Me.LTxt
  loc_1207440: Call 0.Method_Proc_61_53_12078B00 (CInt(1), var_D0, CStr(Format(global_176, "0.00")))
  loc_1207448: var_D0.Caption = 1
  loc_1207498: Set var_CC = Me.LTxt
  loc_120749E: Call 0.Method_Proc_61_53_12078B00 (CInt(0), var_D0, CStr(Format(global_168, "0.00")))
  loc_12074A6: var_D0.Caption = 1
  loc_12074F6: Set var_CC = Me.LTxt
  loc_12074FC: Call 0.Method_Proc_61_53_12078B00 (CInt(2), var_D0, CStr(Format(global_184, "0.00")), 1)
  loc_1207504: var_D0.Caption = 1
  loc_120753F: For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D8 'Integer
  loc_1207549:   var_98 = CVar(CLng(var_86)) 'Long
  loc_120756C:   var_D4 = CStr(Me.FGrid.TextMatrix))
  loc_120757D:   If (var_D4 = "Dr") Then
  loc_120758E:     Set var_CC = Me.LTxt
  loc_1207594:     Call 0.Method_Proc_61_53_12078B00 (CInt(1), var_D0, var_D4, 3)
  loc_120759C:     var_98 = var_D0.Caption
  loc_12075D2:     var_100 = CStr(Me.FGrid.TextMatrix))
  loc_12075DA:     var_15C = Val(var_100)
  loc_12075F9:     var_C8 = CVar((Val(var_D4) + var_15C)) 'Double
  loc_1207617:     Set var_144 = Me.LTxt
  loc_120761D:     Call 0.Method_Proc_61_53_12078B00 (CInt(1), var_148, CStr(Format(Format(global_184, "0.00"), "0.00")), 1, 1, var_15C)
  loc_1207625:     var_148.Caption = CVar(CLng(9))
  loc_1207659:     Set var_CC = Me.LTxt
  loc_120765F:     Call 0.Method_Proc_61_53_12078B00 (CInt(0), var_D0, var_D4, CVar(CLng(var_86)))
  loc_1207667:     var_154 = var_D0.Caption
  loc_1207674:     var_154 = Val(var_D4)
  loc_1207685:     Set var_FC = Me.LTxt
  loc_120768B:     Call 0.Method_Proc_61_53_12078B00 (CInt(1), var_144, var_100, var_154)
  loc_1207693:     1 = var_144.Caption
  loc_12076BF:     var_B8 = CVar((var_154 - Val(var_100))) 'Double
  loc_12076DD:     Set var_148 = Me.LTxt
  loc_12076E3:     Call 0.Method_Proc_61_53_12078B00 (CInt(2), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_12076EB:     var_160.Caption = 1
  loc_1207714:   Else
  loc_1207722:     Set var_CC = Me.LTxt
  loc_1207728:     Call 0.Method_Proc_61_53_12078B00 (CInt(0), var_D0, var_D4)
  loc_1207730:     var_15C = var_D0.Caption
  loc_1207766:     var_100 = CStr(Me.FGrid.TextMatrix))
  loc_120776E:     var_15C = Val(var_100)
  loc_120778D:     var_C8 = CVar((Val(var_D4) + var_15C)) 'Double
  loc_12077AB:     Set var_144 = Me.LTxt
  loc_12077B1:     Call 0.Method_Proc_61_53_12078B00 (CInt(0), var_148, CStr(Format("0.00", "0.00")), 1, 1, var_15C)
  loc_12077B9:     var_148.Caption = CVar(CLng(9))
  loc_12077ED:     Set var_CC = Me.LTxt
  loc_12077F3:     Call 0.Method_Proc_61_53_12078B00 (CInt(0), var_D0, var_D4, CVar(CLng(var_86)))
  loc_12077FB:     var_154 = var_D0.Caption
  loc_1207808:     var_154 = Val(var_D4)
  loc_1207819:     Set var_FC = Me.LTxt
  loc_120781F:     Call 0.Method_Proc_61_53_12078B00 (CInt(1), var_144, var_100)
  loc_1207853:     var_B8 = CVar((var_144.Caption - Val(var_100))) 'Double
  loc_1207871:     Set var_148 = Me.LTxt
  loc_1207877:     Call 0.Method_Proc_61_53_12078B00 (CInt(2), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_120787F:     var_160.Caption = 1
  loc_12078A5:   End If
  loc_12078A8: Next var_D8 'Integer
  loc_12078AD: Exit Sub
End Sub

Public Sub Proc_61_54_1038ACC
  'Data Table: 544E80
  Dim var_8C As TextBox
  loc_103887E: Set var_88 = Me.Txt
  loc_1038884: Call 0.Method_Proc_61_54_1038ACC0 (CInt(&H17), var_8C)
  loc_103888C: var_8C.Text = vbNullString
  loc_10388A6: Set var_88 = Me.Txt
  loc_10388AC: Call 0.Method_Proc_61_54_1038ACC0 (CInt(&H17), var_8C)
  loc_10388B4: var_8C.Tag = vbNullString
  loc_10388CE: Set var_88 = Me.Txt
  loc_10388D4: Call 0.Method_Proc_61_54_1038ACC0 (CInt(5), var_8C)
  loc_10388DC: var_8C.Text = vbNullString
  loc_10388F6: Set var_88 = Me.Txt
  loc_10388FC: Call 0.Method_Proc_61_54_1038ACC0 (CInt(&H12), var_8C)
  loc_1038904: var_8C.Text = vbNullString
  loc_103891E: Set var_88 = Me.Txt
  loc_1038924: Call 0.Method_Proc_61_54_1038ACC0 (CInt(&H13), var_8C)
  loc_103892C: var_8C.Text = vbNullString
  loc_1038946: Set var_88 = Me.Txt
  loc_103894C: Call 0.Method_Proc_61_54_1038ACC0 (CInt(&H14), var_8C)
  loc_1038954: var_8C.Text = vbNullString
  loc_103896E: Set var_88 = Me.Txt
  loc_1038974: Call 0.Method_Proc_61_54_1038ACC0 (CInt(&H25), var_8C)
  loc_103897C: var_8C.Text = vbNullString
  loc_1038996: Set var_88 = Me.Txt
  loc_103899C: Call 0.Method_Proc_61_54_1038ACC0 (CInt(&H2B), var_8C)
  loc_10389A4: var_8C.Text = vbNullString
  loc_10389BE: Set var_88 = Me.Txt
  loc_10389C4: Call 0.Method_Proc_61_54_1038ACC0 (CInt(&H15), var_8C)
  loc_10389CC: var_8C.Text = vbNullString
  loc_10389E6: Set var_88 = Me.Txt
  loc_10389EC: Call 0.Method_Proc_61_54_1038ACC0 (CInt(&H19), var_8C)
  loc_10389F4: var_8C.Text = vbNullString
  loc_1038A0E: Set var_88 = Me.Txt
  loc_1038A14: Call 0.Method_Proc_61_54_1038ACC0 (CInt(&H19), var_8C)
  loc_1038A1C: var_8C.Tag = vbNullString
  loc_1038A36: Set var_88 = Me.Txt
  loc_1038A3C: Call 0.Method_Proc_61_54_1038ACC0 (CInt(&H16), var_8C)
  loc_1038A44: var_8C.Text = vbNullString
  loc_1038A5E: Set var_88 = Me.Txt
  loc_1038A64: Call 0.Method_Proc_61_54_1038ACC0 (CInt(4), var_8C)
  loc_1038A6C: var_8C.Tag = vbNullString
  loc_1038A86: Set var_88 = Me.Txt
  loc_1038A8C: Call 0.Method_Proc_61_54_1038ACC0 (CInt(4), var_8C)
  loc_1038A94: var_8C.Text = vbNullString
  loc_1038AAE: Set var_88 = Me.Txt
  loc_1038AB4: Call 0.Method_Proc_61_54_1038ACC0 (CInt(6), var_8C)
  loc_1038ABC: var_8C.Text = vbNullString
  loc_1038AC8: Exit Sub
End Sub

Public Sub Proc_61_55_EE6448
  'Data Table: 544E80
  loc_EE6396: On Error Goto loc_EE63DC
  loc_EE63AE: Call 0.Method_arg_18C (var_8C)
  loc_EE63B6: Call var_8C.Show
  loc_EE63CB: Call 0.Method_arg_188 (var_B0)
  loc_EE63D3: var_88 = var_B0
  loc_EE63D6: Proc_61_55_EE6448 = 1
  loc_EE63DC: ' Referenced from: EE6396
  loc_EE63E4: Set var_8C = Err()
  loc_EE63EA: Call 0.Method_arg_1C (var_B4)
  loc_EE63FB: If (var_B4 <> 0) Then
  loc_EE6406:   Set var_8C = Err()
  loc_EE640C:   Call 0.Method_arg_2C (var_B0)
  loc_EE642D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE6440: End If
  loc_EE6440: Proc_61_55_EE6448 = 
End Sub

Public Sub Proc_61_56_F018B4(arg_C) 'F018B4
  'Data Table: 544E80
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_94 As Double
  loc_F017F7: If (Me.AbsolutePosition > 0) Then
  loc_F0181C:   var_C0 = CVar(Me.Fields.Item("Rate")) 'Address
  loc_F01823:   Proc_6_39_E7D3A0(var_D0)
  loc_F0183D:   If (var_D0 > 0) Then
  loc_F01869:     Proc_6_39_E7D3A0(var_D0, CVar(Me.Fields.Item("Rate")))
  loc_F01894:     var_94 = CSng(Round((CVar(arg_C) / var_D0), 1))
  loc_F018A5:   End If
  loc_F018A5: End If
  loc_F018AB: Proc_61_56_F018B4 = var_94
End Sub
