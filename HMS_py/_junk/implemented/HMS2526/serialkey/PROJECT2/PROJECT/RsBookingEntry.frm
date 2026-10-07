VERSION 5.00
Begin VB.Form RsBookingEntry
  Caption = "Booking Entry"
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
  ClientWidth = 10620
  ClientHeight = 8595
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10620
    Height = 450
    TabIndex = 80
  End
  Begin Frame FrFinish
    Caption = "Finish Items :"
    Left = 6735
    Top = 7785
    Width = 5940
    Height = 1950
    Visible = 0   'False
    TabIndex = 77
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin MSFlexGrid FGridFinish
      Left = 180
      Top = 255
      Width = 5595
      Height = 1530
      TabIndex = 78
    End
  End
  Begin DataGrid DGItem
    Left = 6090
    Top = 10110
    Width = 7110
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin TextBox Txt
    Index = 20
    Left = 1455
    Top = 7545
    Width = 6075
    Height = 240
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 75
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
  Begin CommandButton CmdCustDetails
    Caption = "..."
    Left = 5160
    Top = 1005
    Width = 255
    Height = 255
    TabIndex = 74
    TabStop = 0   'False
  End
  Begin Frame FrCustInfo
    Caption = "Customer Info."
    BackColor = &H80FF&
    Left = 1455
    Top = 7890
    Width = 5055
    Height = 1030
    Enabled = 0   'False
    TabIndex = 65
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox TxtCust
      Index = 7
      Left = 1380
      Top = 1815
      Width = 3645
      Height = 240
      TabIndex = 84
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
    Begin TextBox TxtCust
      Index = 6
      Left = 1380
      Top = 1560
      Width = 3645
      Height = 240
      TabIndex = 83
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
    Begin TextBox TxtCust
      Index = 5
      Left = 1380
      Top = 1305
      Width = 3645
      Height = 240
      TabIndex = 82
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
    Begin TextBox TxtCust
      Index = 4
      Left = 1380
      Top = 1050
      Width = 3645
      Height = 240
      TabIndex = 81
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
    Begin TextBox TxtCust
      Index = 1
      Left = 1380
      Top = 270
      Width = 3645
      Height = 240
      TabIndex = 69
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
    Begin TextBox TxtCust
      Index = 2
      Left = 1380
      Top = 525
      Width = 3645
      Height = 240
      TabIndex = 68
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
    Begin TextBox TxtCust
      Index = 3
      Left = 1380
      Top = 780
      Width = 3645
      Height = 240
      TabIndex = 67
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
    Begin TextBox TxtCust
      Index = 0
      Left = 1380
      Top = 15
      Width = 2245
      Height = 240
      TabIndex = 66
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
      Locked = -1  'True
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
      Caption = "Customer Name"
      Index = 23
      ForeColor = &HFF0000&
      Left = 15
      Top = 285
      Width = 1380
      Height = 225
      TabIndex = 73
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
      Caption = "Address1"
      Index = 20
      ForeColor = &HFF0000&
      Left = 15
      Top = 555
      Width = 825
      Height = 225
      TabIndex = 72
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
      Caption = "Address2"
      Index = 12
      ForeColor = &HFF0000&
      Left = 15
      Top = 810
      Width = 825
      Height = 225
      TabIndex = 71
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
      Caption = "Phone No"
      Index = 6
      ForeColor = &HFF0000&
      Left = 30
      Top = 30
      Width = 810
      Height = 225
      TabIndex = 70
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
    Index = 19
    Left = 10935
    Top = 2445
    Width = 1185
    Height = 255
    TabIndex = 62
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 30
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
  Begin MSHFlexGrid FGCat
    Left = 15
    Top = 4545
    Width = 8750
    Height = 2355
    Visible = 0   'False
    TabIndex = 11
  End
  Begin TextBox Txt
    Index = 18
    Left = 8325
    Top = 90
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 55
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
  Begin TextBox TxtPer
    Index = 1
    Left = 10245
    Top = 1620
    Width = 510
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 8
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
  Begin TextBox TxtGt
    Index = 1
    Left = 10935
    Top = 1620
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 1
    Left = 1545
    Top = 1005
    Width = 3600
    Height = 240
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 30
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
    Index = 17
    Left = 6705
    Top = 1260
    Width = 2625
    Height = 240
    Visible = 0   'False
    TabIndex = 51
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
  Begin CheckBox ChkNCBOOKING
    Caption = "NC Booking"
    BackColor = &HDEE6FE&
    ForeColor = &H40&
    Left = 5505
    Top = 990
    Width = 1395
    Height = 240
    TabIndex = 50
    Alignment = 1 'Right Justify
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
  Begin DataGrid DGNCType
    Left = 2370
    Top = 1710
    Width = 4155
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 49
  End
  Begin TextBox Txt
    Index = 16
    Left = 4440
    Top = 495
    Width = 705
    Height = 240
    Enabled = 0   'False
    TabIndex = 47
    BorderStyle = 0 'None
    MaxLength = 30
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
    Left = 10935
    Top = 2175
    Width = 1185
    Height = 255
    TabIndex = 23
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 30
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
  Begin TextBox Txt
    Index = 14
    Left = 1665
    Top = 9750
    Width = 555
    Height = 240
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 5
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
    Index = 13
    Left = 1665
    Top = 9495
    Width = 555
    Height = 240
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 5
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
    Index = 12
    Left = 1665
    Top = 10515
    Width = 1650
    Height = 255
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 30
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
    Index = 11
    Left = 1665
    Top = 10260
    Width = 1650
    Height = 240
    Visible = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 10
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
    Left = 4440
    Top = 9285
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 10
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
    Index = 9
    Left = 1665
    Top = 10005
    Width = 1650
    Height = 240
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 10
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
    Index = 8
    Left = 2385
    Top = 9750
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 30
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
    Left = 2385
    Top = 9495
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 30
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
    Left = 1665
    Top = 9240
    Width = 1650
    Height = 240
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 30
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
  Begin CommandButton CmdAdvance
    Caption = "&Advance Rect."
    Left = 9390
    Top = 5415
    Width = 2400
    Height = 600
    TabIndex = 12
    TabStop = 0   'False
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
    Index = 5
    Left = 3435
    Top = 9825
    Width = 2805
    Height = 240
    Visible = 0   'False
    TabIndex = 34
    BorderStyle = 0 'None
    MaxLength = 30
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
    Left = 3435
    Top = 9555
    Width = 2805
    Height = 240
    Visible = 0   'False
    TabIndex = 33
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 735
    Top = 2100
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    Left = 1545
    Top = 495
    Width = 705
    Height = 240
    Enabled = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 30
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
    Index = 4
    Left = 1545
    Top = 1260
    Width = 1575
    Height = 240
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 3
    Left = 1545
    Top = 750
    Width = 1575
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
  Begin MaskEdBox TxtMask
    Index = 1
    Left = 4440
    Top = 1260
    Width = 705
    Height = 240
    TabIndex = 5
  End
  Begin MaskEdBox TxtMask
    Index = 0
    Left = 4440
    Top = 750
    Width = 705
    Height = 240
    TabIndex = 2
  End
  Begin MSHFlexGrid FGrid
    Left = 15
    Top = 1605
    Width = 8750
    Height = 5520
    TabIndex = 6
  End
  Begin MSFlexGrid FGPoint
    Left = 150
    Top = 2775
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 35
  End
  Begin TextBox TxtGt1
    Index = 1
    Left = 3315
    Top = 4290
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 56
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtPer1
    Index = 1
    Left = 2655
    Top = 4305
    Width = 435
    Height = 240
    Visible = 0   'False
    TabIndex = 57
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 8
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
  Begin Label LblColor
    Caption = "Item Cancelled"
    Index = 1
    BackColor = &H8080FF&
    Left = 1425
    Top = 7200
    Width = 1335
    Height = 285
    TabIndex = 79
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Caption = "(Order Booking)"
    ForeColor = &HFF0000&
    Left = 8970
    Top = 840
    Width = 2055
    Height = 330
    TabIndex = 76
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Times New Roman"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Remark :"
    Index = 24
    ForeColor = &HFF0000&
    Left = 630
    Top = 7545
    Width = 765
    Height = 225
    TabIndex = 75
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
  Begin Label LblColor
    Caption = "Item Billed"
    Index = 0
    BackColor = &HC0E0FF&
    Left = 60
    Top = 7200
    Width = 1335
    Height = 285
    TabIndex = 64
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNetAmtPayable
    Caption = "Net Amt. Payable :"
    ForeColor = &HFF0000&
    Left = 8895
    Top = 2460
    Width = 1815
    Height = 240
    TabIndex = 63
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 8895
    Top = 1620
    Width = 465
    Height = 240
    TabIndex = 13
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 10770
    Top = 1620
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 60
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
    ForeColor = &HFF0000&
    Left = 8895
    Top = 1935
    Width = 750
    Height = 210
    Visible = 0   'False
    TabIndex = 54
    BeginProperty Font
      Name = "System"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Customer Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 105
    Top = 990
    Width = 1380
    Height = 225
    TabIndex = 53
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
    Caption = "NC Category"
    Index = 22
    ForeColor = &H40&
    Left = 5520
    Top = 1260
    Width = 1050
    Height = 225
    Visible = 0   'False
    TabIndex = 52
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
    Caption = "Token No."
    Index = 21
    ForeColor = &HFF0000&
    Left = 3525
    Top = 480
    Width = 840
    Height = 225
    TabIndex = 48
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
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0FFFF&
    ForeColor = &H80&
    Left = 9900
    Top = 450
    Width = 195
    Height = 390
    TabIndex = 46
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblAdvRecd
    Caption = "Advance Recd. :"
    ForeColor = &HFF0000&
    Left = 8895
    Top = 2190
    Width = 1590
    Height = 240
    TabIndex = 45
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "%"
    Index = 19
    ForeColor = &H0&
    Left = 2220
    Top = 9750
    Width = 180
    Height = 210
    Visible = 0   'False
    TabIndex = 44
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
    Caption = "%"
    Index = 18
    ForeColor = &H0&
    Left = 2220
    Top = 9510
    Width = 180
    Height = 210
    Visible = 0   'False
    TabIndex = 43
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
    Caption = "Net Amount :"
    Index = 17
    ForeColor = &H0&
    Left = 345
    Top = 10530
    Width = 1290
    Height = 240
    Visible = 0   'False
    TabIndex = 42
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
    Caption = "Round Off :"
    Index = 16
    ForeColor = &H0&
    Left = 645
    Top = 10275
    Width = 990
    Height = 240
    Visible = 0   'False
    TabIndex = 41
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
    Caption = "Deduction :"
    Index = 15
    ForeColor = &H0&
    Left = 3450
    Top = 9255
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 40
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
    Caption = "Addition :"
    Index = 13
    ForeColor = &H0&
    Left = 810
    Top = 10020
    Width = 825
    Height = 240
    Visible = 0   'False
    TabIndex = 39
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
    Caption = "Tax :"
    Index = 11
    ForeColor = &H0&
    Left = 1185
    Top = 9750
    Width = 450
    Height = 240
    Visible = 0   'False
    TabIndex = 38
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
    Caption = "Discount :"
    Index = 9
    ForeColor = &H0&
    Left = 780
    Top = 9495
    Width = 855
    Height = 240
    Visible = 0   'False
    TabIndex = 37
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
    Caption = "Total :"
    Index = 8
    ForeColor = &H0&
    Left = 1065
    Top = 9240
    Width = 570
    Height = 240
    Visible = 0   'False
    TabIndex = 36
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
    Caption = "From"
    Index = 5
    ForeColor = &H0&
    Left = 7770
    Top = 4065
    Width = 450
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
    Caption = "From"
    Index = 3
    ForeColor = &H0&
    Left = 7770
    Top = 4065
    Width = 450
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
    Caption = "From"
    Index = 2
    ForeColor = &H0&
    Left = 7770
    Top = 4065
    Width = 765
    Height = 420
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
    Caption = "Time "
    Index = 1
    ForeColor = &HFF0000&
    Left = 3900
    Top = 750
    Width = 465
    Height = 225
    TabIndex = 28
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
    Caption = "Time"
    Index = 14
    ForeColor = &HFF0000&
    Left = 3900
    Top = 1245
    Width = 420
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
  Begin Label Label1
    Caption = "Booking No."
    Index = 4
    ForeColor = &HFF0000&
    Left = 105
    Top = 480
    Width = 1005
    Height = 225
    TabIndex = 26
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
    Caption = "Booking Date"
    Index = 7
    ForeColor = &HFF0000&
    Left = 105
    Top = 735
    Width = 1125
    Height = 225
    TabIndex = 25
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
    Caption = "Delivery Date"
    Index = 10
    ForeColor = &HFF0000&
    Left = 105
    Top = 1245
    Width = 1110
    Height = 225
    TabIndex = 24
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
  Begin Label LblCap1
    Caption = "Total"
    Index = 1
    ForeColor = &H0&
    Left = 1170
    Top = 4335
    Width = 465
    Height = 240
    TabIndex = 61
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
  Begin Label LblAt1
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 3120
    Top = 4305
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 59
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
  Begin Label LblDummy1
    Caption = "Label2"
    Index = 1
    Left = 1125
    Top = 4635
    Width = 750
    Height = 210
    Visible = 0   'False
    TabIndex = 58
    BeginProperty Font
      Name = "System"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "RsBookingEntry"

Private global_80 As Double
Private global_96 As Integer
Private global_156 As Integer

Private Sub CmdCustDetails_Click() 'E7E4B0
  'Data Table: 56D3A8
  loc_E7E458: Set var_88 = Me.TopCtrl1
  loc_E7E45E: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E7E477: If (CStr() = "Browse") Then
  loc_E7E47A:   Exit Sub
  loc_E7E47B: End If
  loc_E7E485: Set var_A0 = New RsPOSCustInfo
  loc_E7E496: var_A0.ParentForm = CVar(Me)
  loc_E7E4AA: var_A0.Show 1, var_C0
  loc_E7E4AF: Exit Sub
End Sub

Private Sub Form_Load() '1237EC8
  'Data Table: 56D3A8
  Dim var_94 As Variant
  Dim var_B8 As Variant
  Dim var_90 As String
  Dim unk_56D3B3 As Connection15
  Dim var_88 As Recordset15
  Dim var_CC As Variant
  Dim Me As Recordset15
  Dim var_130 As String
  loc_12379B6: global_160 = "ORDER"
  loc_12379F1: global_124 = global_52
  loc_1237A05: Me.LblRest.Caption = global_116
  loc_1237A14: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), Proc_96_17_FDCB2C(global_52, global_112, global_116))
  loc_1237A2C: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1237A47: Me.FGridFinish.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1237A5C: Set var_94 = Me.Txt
  loc_1237A62: Call 0.Method_Form_Load0 (CInt(&HC), var_B8, &HFF)
  loc_1237A6A: var_B8.Locked = 0
  loc_1237A83: Set var_94 = Me.Txt
  loc_1237A89: Call 0.Method_Form_Load0 (CInt(8), var_B8)
  loc_1237A91: var_B8.Locked = True
  loc_1237AB0: Call 0.Method_Form_Load0 (CInt(7), var_B8)
  loc_1237AB8: var_B8.Locked = True
  loc_1237AEB: unk_56D3B3.Execute "Select AutoSplit,KOtYn from depart where Code='" & global_52 & "'", var_CC, -1
  loc_1237AF6: Set var_88 = Me.Txt
  loc_1237B1A: If (var_88.RecordCount > 0) Then
  loc_1237B2C:   var_94 = var_88.Fields
  loc_1237B4B:   global_104 = Proc_6_38_E69628(CVar(var_94.Item("AutoSplit")), var_94)
  loc_1237B67:   var_94 = var_88.Fields
  loc_1237B77:   var_CC = CVar(var_94.Item("KotYN")) 'Address
  loc_1237B86:   global_108 = Proc_6_38_E69628(var_CC)
  loc_1237B93: End If
  loc_1237BB7: unk_56D3B3.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_CC, -1
  loc_1237BC8: Set global_128 = var_94
  loc_1237BE7: Set global_100 = New 
  loc_1237BF9: Me.Recordset15.CursorLocation = 3
  loc_1237C6D: If CBool((Me.Fields.Item("MultiBillGeneration").Value = "Yes") And (global_104 = "Yes") And (global_108 = "N")) Then
  loc_1237C91:   var_90 = "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.Unit,IsNull(U.PriceType,0) As PriceType,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,I.SChrgApp,I.RateIncTax,I.ConvRatio,D.ShortName From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode Where I.Type='Finish' And I.ItemType<>'Store' And I.DispCode <>9999 and I.ActiveYN<>'No' And I.RestCode In (Select AssociatedRestCode From Depart1 Where DepartCode='" & global_52
  loc_1237CB0:   Me.Open CVar(var_90 & "' And LOGSITE_CODE='" & MemVar_1F95078 & "' And IsNull(AssociatedRestCode,'')<>'') Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_1237CC4: Else
  loc_1237CE5:   var_90 = "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.Unit,IsNull(U.PriceType,0) As PriceType,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,I.SChrgApp,I.RateIncTax,I.ConvRatio,D.ShortName From ((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode LEFT Join UnitMast U On U.NAME=I.Unit Where I.Type='Finish' And I.ItemType<>'Store' And I.DispCode <>9999 and I.ActiveYN<>'No' And I.RestCode='" & global_52
  loc_1237CF6:   Me.Open CVar(var_90 & "' Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_1237D01: End If
  loc_1237D0A: CVarUnk
  loc_1237D0F: VerifyVarObj
  loc_1237D15: Set var_94 = Me.DGItem
  loc_1237D1B: LateIdStAd
  loc_1237D45: Me.DGItem.CursorLocation = 3
  loc_1237D7B: CVarUnk
  loc_1237D80: VerifyVarObj
  loc_1237D86: Set var_94 = Me.DGNCType
  loc_1237D8C: LateIdStAd
  loc_1237DB6: Me.DGNCType.CursorLocation = 3
  loc_1237DD9: var_90 = "Select P.Docid as SearchCode,P.DocID,P.Site_Code,P.LogSite_Code From PackingOrder P Inner Join Voucher_Type V On (P.VType= V.V_Type And P.LogSite_Code=V.LogSite_Code) Where v.Site_Code='" & MemVar_1F95070
  loc_1237DFC: var_130 = var_90 & "' and V.LogSite_Code='" & MemVar_1F95078 & "' and V.Ncat= 'ORDER' And P.Site_Code='" & MemVar_1F95070 & "' and P.RestCode='"
  loc_1237E17: ELECT NCType,NcPer FROM NCTypeMast ORDER BY NCType", CVar(MemVar_1F95044), 3 CVar(var_130 & global_52 & "' Order by Docid "), CVar(MemVar_1F95044), 3
  loc_1237E53: Call Proc_169_89_1006BAC(Proc_5_1_100EC1C("INI", Me, New, 1, -1, Me, New, 1), -1, Me, global_100)
  loc_1237E6E: Set var_94 = Me
  loc_1237E74: Proc_6_23_DFC5B8(var_94, 0, 0, 1)
  loc_1237E85: Call 0.Method_arg_160 (var_94, -1)
  loc_1237E93: Call 0.Method_arg_164 (var_94, 1)
  loc_1237E9B: Call Proc_169_86_13A693C(-1)
  loc_1237EA0: Call Proc_169_85_10631B8()
  loc_1237EB9: If (RsBookingEntry.OpenMode = 1) Then
  loc_1237EBC:   GoTo loc_1237EC4
  loc_1237EBF: End If
  loc_1237EBF: Call Proc_169_93_18AA338()
  loc_1237EC4: ' Referenced from: 1237EBC
  loc_1237EC4: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2A700
  'Data Table: 56D3A8
  Dim var_9C As String
  loc_E2A6E3: Set global_136 = Nothing
  loc_E2A6F5: Set global_128 = Nothing
  loc_E2A6FC: Exit Sub
  loc_E2A6FD: var_9C = 
End Sub

Private Sub Form_Activate() '1019A88
  'Data Table: 56D3A8
  Dim var_D8 As Variant
  Dim var_9C As String
  Dim unk_56D3B3 As Connection15
  Dim var_C4 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Field20
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_EC As Variant
  loc_101989C: var_D8 = 0
  loc_10198BC: var_9C = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_10198CC: unk_56D3B3.Execute var_9C & "'", var_C0, -1
  loc_10198D4: var_C4 = var_C4.Fields
  loc_10198DC: var_D8 = var_C8.Item(var_C8)
  loc_10198E4: var_DC = var_DC.Value
  loc_10198EC: var_10C = var_EC & var_EC 
  loc_10198F5: var_12C = var_10C & "' Order by Description" 
  loc_1019903: unk_56D3B3.Execute CStr(var_12C), "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE V_Type='", var_150
  loc_101990E: Set var_88 = var_154
  loc_1019946: If (var_88.RecordCount > 0) Then
  loc_1019963:   var_C8 = var_88.Fields.Item(0)
  loc_1019973:   var_98 = var_C8.Value 'Variant
  loc_1019981: Else
  loc_101999A:   MsgBox("Point of Sale Not Configured for selected Restaurant", 0, var_EC, var_10C, var_12C)
  loc_10199B7:   Me.Global.Unload Me
  loc_10199BF:   Exit Sub
  loc_10199C0: End If
  loc_10199C6: var_11C = 0
  loc_10199ED: var_EC = "Select Count(*) From SundryType WHERE V_Type='" & var_98 & "'" 
  loc_10199FB: unk_56D3B3.Execute CStr(var_EC), var_10C, -1
  loc_1019A03: var_C4 = var_C4.Fields
  loc_1019A0B: var_11C = var_C8.Item(var_C8)
  loc_1019A13: var_DC = var_DC.Value
  loc_1019A3A: If (var_12C <= 0) Then
  loc_1019A56:   MsgBox("Voucher wise Sundry not defined", 0, var_EC, var_10C, var_12C)
  loc_1019A73:   Me.Global.Unload Me
  loc_1019A7B:   Exit Sub
  loc_1019A7C: End If
  loc_1019A81: Set var_88 = Nothing
  loc_1019A84: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E263EC
  'Data Table: 56D3A8
  loc_E263D1: If (global_132 = &HFF) Then
  loc_E263E1:   Me.Global.Unload Me
  loc_E263E9: End If
  loc_E263E9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E39428
  'Data Table: 56D3A8
  loc_E393FC: On Error Goto loc_E39420
  loc_E39417: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E3941F: Exit Sub
  loc_E39420: ' Referenced from: E393FC
  loc_E39420: Proc_6_60_E63754(Shift)
  loc_E39425: Exit Sub
End Sub

Private Sub Form_Paint() '128FFE8
  'Data Table: 56D3A8
  Dim var_8C As Variant
  Dim var_9C As String
  Dim unk_56D3B3 As Connection15
  Dim var_94 As Recordset15
  Dim var_B8 As Variant
  Dim var_88 As Variant
  Dim var_C8 As Variant
  Dim var_90 As String
  Dim var_E4 As TextBox
  Dim var_CC As Variant
  Dim var_144 As Variant
  Dim var_124 As Variant
  Dim var_16C As TextBox
  Dim Me As Recordset15
  Dim var_114 As Variant
  Dim var_E0 As Variant
  loc_128FA42: Set var_88 = Me.Txt
  loc_128FA48: Call 0.Method_Form_Paint0 (CInt(2), var_8C)
  loc_128FA50: var_90 = var_8C.Text
  loc_128FA67: If (var_90 = vbNullString) Then
  loc_128FA6A:   Exit Sub
  loc_128FA6B: End If
  loc_128FA89: Set var_88 = Me.Txt
  loc_128FA8F: Call 0.Method_Form_Paint0 (CInt(2), var_8C, var_90, "Select AdvAmt,NetAmt From PackingOrder P Where DocID='")
  loc_128FA97: var_C8 = var_8C.Text
  loc_128FAA0: var_9C = -1 & var_90
  loc_128FAC1: unk_56D3B3.Execute var_9C & "' And RestCode='" & global_52 & "'", var_CC, 
  loc_128FACC: Set var_94 = var_CC
  loc_128FAFC: If (var_94.RecordCount > 0) Then
  loc_128FB1E:   var_C8 = CVar(var_94.Fields.Item("AdvAmt")) 'Address
  loc_128FB25:   Proc_6_47_EF6560(var_E0)
  loc_128FB3C:   Set var_CC = Me.Txt
  loc_128FB42:   Call 0.Method_Form_Paint0 (CInt(&HF), var_E4)
  loc_128FB4A:   var_E4.Text = CStr(var_E0)
  loc_128FB88:   Proc_6_39_E7D3A0(var_E0, CVar(var_94.Fields.Item("NetAmt")))
  loc_128FB9C:   var_CC = var_94.Fields
  loc_128FBB3:   Proc_6_39_E7D3A0(var_114, CVar(var_CC.Item("AdvAmt")))
  loc_128FBD3:   var_124 = (var_E0 - var_114)
  loc_128FBE9:   var_90 = CStr(Format(var_124, "0.00"))
  loc_128FBF8:   Set var_168 = Me.Txt
  loc_128FBFE:   Call 0.Method_Form_Paint0 (CInt(&H13), var_16C, var_90)
  loc_128FC06:   var_16C.Text = 1
  loc_128FC2A: End If
  loc_128FC47: var_8C = Me.Fields.Item("MultiBillGeneration")
  loc_128FC4F: var_C8 = var_8C.Value
  loc_128FC99: If CBool((var_C8 = "Yes") And (global_104 = "Yes") And (global_108 = "N")) Then
  loc_128FCBA:   Set var_88 = Me.Txt
  loc_128FCC0:   Call 0.Method_Form_Paint0 (CInt(2), var_8C, var_90, "Select KotDocId,KotSno From SplitStock Where KotDocID='", var_C8)
  loc_128FCC8:   -1 = var_8C.Text
  loc_128FCF2:   unk_56D3B3.Execute var_CC & var_90 & "' And RestCode='" & global_52 & "' Order By Sno", 1, var_C8
  loc_128FCFD:   Set var_94 = var_CC
  loc_128FD1C: Else
  loc_128FD3A:   Set var_88 = Me.Txt
  loc_128FD40:   Call 0.Method_Form_Paint0 (CInt(2), var_8C, var_90, "Select KotDocId,KotSno From Stock Where KotDocID='")
  loc_128FD48:   var_C8 = var_8C.Text
  loc_128FD51:   var_9C = -1 & var_90
  loc_128FD72:   unk_56D3B3.Execute var_CC & var_90 & "' And RestCode='" & global_52 & "' Order By Sno", var_CC, 
  loc_128FD7D:   Set var_94 = var_CC
  loc_128FD99:   ' Referenced from:   128FED1
  loc_128FD99: End If
  loc_128FDA8: If Not(var_94.EOF) Then
  loc_128FDD0:   For var_182 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_96 = var_182 'Integer
  loc_128FDDA:     var_B8 = CVar(CLng(var_96)) 'Long
  loc_128FDE2:     var_144 = CVar(CLng(0)) 'Long
  loc_128FE1C:     var_8C = var_94.Fields
  loc_128FE52:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(CStr(var_8C.Item("kotSNo").Value))) Then
  loc_128FE55:       GoTo loc_128FE60
  loc_128FE58:     End If
  loc_128FE5B:   Next var_182 'Integer
  loc_128FE60:   ' Referenced from: 128FE55
  loc_128FE7E:   If (CLng(var_96) <> CLng(Me.FGrid.Rows)) Then
  loc_128FE94:     Set var_88 = Me.LblColor
  loc_128FE9A:     Call 0.Method_Form_Paint0 (0, var_8C)
  loc_128FEA2:     var_D0 = var_8C.BackColor
  loc_128FEB9:     Proc_96_0_E6CA28(Me.FGrid, var_96)
  loc_128FEC9:   End If
  loc_128FECC:   var_94.MoveNext
  loc_128FED1:   GoTo loc_128FD99
  loc_128FED4: End If
  loc_128FEF9: For var_19C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_96 = var_19C 'Integer
  loc_128FF03:   var_B8 = CVar(CLng(var_96)) 'Long
  loc_128FF0B:   var_144 = CVar(CLng(&HA)) 'Long
  loc_128FF52:   Set var_8C = Me.FGrid
  loc_128FF8C:   If CBool(CVar(CLng(&HC)) And (CStr(var_8C.TextMatrix)) <> vbNullString)) Then
  loc_128FFA2:     Set var_88 = Me.LblColor
  loc_128FFA8:     Call 0.Method_Form_Paint0 (1, var_8C, var_D0, CVar(CLng(var_96)), (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Yes"))
  loc_128FFB0:     var_144 = var_8C.BackColor
  loc_128FFC7:     Proc_96_0_E6CA28(Me.FGrid, var_96, var_D0)
  loc_128FFD7:   End If
  loc_128FFDA: Next var_19C 'Integer
  loc_128FFE4: Set var_94 = Nothing
  loc_128FFE7: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EAD704
  'Data Table: 56D3A8
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_BC As TextBox
  loc_EAD67E: var_98 = Me.FGrid.BackColorSel
  loc_EAD697: If (CDbl(CLng(var_98)) = CDbl(global_68)) Then
  loc_EAD6AD:   Me.FGrid.Col = 2
  loc_EAD6B5: End If
  loc_EAD6C8: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EAD6DB: Set var_88 = Me.TxtGrid
  loc_EAD6E1: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EAD6E9: var_BC.Visible = False
  loc_EAD6F8: Call Proc_169_87_E5D6C8(var_98)
  loc_EAD700: Exit Sub
  loc_EAD701: StAryRecMove
End Sub

Private Sub FGrid_UnknownEvent_1 'E686C8
  'Data Table: 56D3A8
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68684: Set var_88 = Me.TxtGrid
  loc_E6868A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E686A4: If (var_8C.Visible = 0) Then
  loc_E686BD:   Me.FGrid.BackColorSel = CVar(CLng(global_68))
  loc_E686C5: End If
  loc_E686C5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E005FC
  'Data Table: 56D3A8
  loc_E005F4: Call Proc_169_84_E996F0()
  loc_E005F9: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '1386284
  'Data Table: 56D3A8
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_F0 As String
  Dim Me As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_11C As Variant
  Dim var_198 As Double
  Dim var_15C As Integer
  Dim unk_56D3B3 As Connection15
  Dim var_148 As Variant
  Dim var_14C As Variant
  Dim var_160 As Field20
  Dim var_F2 As Integer
  Dim arg_C As Integer
  Dim var_1A0 As Long
  Dim var_144 As String
  loc_1385A25: Call Proc_169_96_11D7724(CStr(Me.FGrid.TextMatrix)), CVar(CLng(1)))
  loc_1385A3F: Set var_88 = Me.TopCtrl1
  loc_1385A45: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(Me.FGrid.Row)))
  loc_1385A8A: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_1385A93:   Call Form_KeyDown(arg_C, arg_10)
  loc_1385A98: End If
  loc_1385A9C: Set var_88 = Me.TopCtrl1
  loc_1385AA2: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1385ABB: If (CStr() = "Browse") Then
  loc_1385ABE:   Exit Sub
  loc_1385ABF: End If
  loc_1385ADC: var_DC = Me.Fields.Item("MultiBillGeneration")
  loc_1385B05: var_104 = (var_DC.Value = "Yes") And (global_104 = "Yes")
  loc_1385B18: var_114 = var_104 And (global_108 = "N")
  loc_1385B2E: If CBool(var_114) Then
  loc_1385B3F:   Set var_88 = Me.Txt
  loc_1385B45:   Call 0.Method_FGrid_UnknownEvent_A0 (CInt(2), var_DC)
  loc_1385B4D:   var_F0 = var_DC.Text
  loc_1385B56:   Set var_11C = Me.FGrid
  loc_1385B5C:   var_98 = var_11C.Row
  loc_1385B65:   var_A8 = CVar(CLng(var_98)) 'Long
  loc_1385B6D:   var_C8 = CVar(CLng(0)) 'Long
  loc_1385B7C:   var_EC = Me.FGrid.TextMatrix)
  loc_1385B98:   var_15C = 0
  loc_1385BD8:   unk_56D3B3.Execute "Select Count(*) from SplitStock where KOtDocId='" & var_F0 & "' And KotSno=" & CStr(Val(CStr(var_EC))) & vbNullString, var_104, -1
  loc_1385BE0:   var_148 = var_148.Fields
  loc_1385BE8:   var_15C = var_14C.Item(var_14C)
  loc_1385BF0:   var_160 = var_160.Value
  loc_1385BFB:   Proc_6_39_E7D3A0(var_170, var_114, var_114)
  loc_1385C3A:   If (var_170 > 0) Then
  loc_1385C3D:     Exit Sub
  loc_1385C3E:   End If
  loc_1385C6B:   Set var_88 = Me.Txt
  loc_1385C71:   Call 0.Method_FGrid_UnknownEvent_A0 (CInt(2), var_DC, var_F0, "Select Max(KOTSno) from SplitStock where KOtDocId='", var_98, -1, var_11C)
  loc_1385C92:   unk_56D3B3.Execute 0 & var_F0 & "'", var_148, var_EC
  loc_1385C9A:   var_198 = var_11C.Fields
  loc_1385CA2:   var_A8 = var_DC.Text.Item(var_C8)
  loc_1385CAA:    = var_148.Value
  loc_1385CB5:   Proc_6_39_E7D3A0(var_104)
  loc_1385CC1:   Set var_14C = Me.FGrid
  loc_1385CC7:   var_114 = var_14C.Row
  loc_1385CFA:   If (var_104 >= CVar(CLng(var_114))) Then
  loc_1385CFF:     var_F2 = &HFF
  loc_1385D02:   End If
  loc_1385D05: Else
  loc_1385D13:   Set var_88 = Me.Txt
  loc_1385D19:   Call 0.Method_FGrid_UnknownEvent_A0 (CInt(2), var_DC, var_F0)
  loc_1385D21:   var_F2 = var_DC.Text
  loc_1385D2A:   Set var_11C = Me.FGrid
  loc_1385D30:   var_98 = var_11C.Row
  loc_1385D39:   var_A8 = CVar(CLng(var_98)) 'Long
  loc_1385D41:   var_C8 = CVar(CLng(0)) 'Long
  loc_1385D50:   var_EC = Me.FGrid.TextMatrix)
  loc_1385D63:   var_198 = Val(CStr(var_EC))
  loc_1385D6C:   var_15C = 0
  loc_1385DAC:   unk_56D3B3.Execute "Select Count(*) from Stock where KOtDocId='" & var_F0 & "' And KotSno=" & CStr(var_198) & vbNullString, var_104, -1
  loc_1385DB4:   var_148 = var_148.Fields
  loc_1385DBC:   var_15C = var_14C.Item(var_14C)
  loc_1385DC4:   var_160 = var_160.Value
  loc_1385DCF:   Proc_6_39_E7D3A0(var_170, var_114, var_114, var_198)
  loc_1385E0E:   If (var_170 > 0) Then
  loc_1385E11:     Exit Sub
  loc_1385E12:   End If
  loc_1385E3F:   Set var_88 = Me.Txt
  loc_1385E45:   Call 0.Method_FGrid_UnknownEvent_A0 (CInt(2), var_DC, var_F0, "Select Max(KOTSno) from Stock where KOtDocId='", var_98, -1, var_11C)
  loc_1385E66:   unk_56D3B3.Execute 0 & var_F0 & "'", var_148, var_EC
  loc_1385E6E:   var_C8 = var_11C.Fields
  loc_1385E76:   var_EC = var_DC.Text.Item(var_A8)
  loc_1385E7E:    = var_148.Value
  loc_1385E89:   Proc_6_39_E7D3A0(var_104)
  loc_1385ECE:   If (var_104 >= CVar(CLng(Me.FGrid.Row))) Then
  loc_1385ED3:     var_F2 = &HFF
  loc_1385ED6:   End If
  loc_1385ED6: End If
  loc_1385EF3: var_104 = Me.FGrid.Rows
  loc_1385F4A: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_104) - 1))))) Then
  loc_1385F63:   Me.FGrid.CellBackColor = CVar(CLng(global_68))
  loc_1385F73:   var_F0 = "+{Tab}"
  loc_1385F79:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0, var_104)
  loc_1385F83:   arg_C = 0
  loc_1385F89: Else
  loc_1385F93:   var_EC = Me.FGrid.Rows
  loc_1385FE0:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_EC) - 1)))) Then
  loc_1385FF9:     Me.FGrid.CellBackColor = CVar(CLng(global_68))
  loc_138600F:     Proc_303_0_FBACC8("{Tab}", 0, var_EC, arg_C)
  loc_1386019:     arg_C = 0
  loc_138601C:   End If
  loc_138601C: End If
  loc_1386022: global_74 = arg_C
  loc_1386048: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_138606C: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_1386082:   var_1A0 = CLng(Me.FGrid.Col)
  loc_1386092:   If (var_1A0 = CLng(3)) Then
  loc_138609B:     If (var_F2 = 0) Then
  loc_13860B1:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13860C9:       var_C8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13860CE:       var_144 = vbNullString
  loc_13860D8:       Set var_11C = Me.FGrid
  loc_13860DE:       LateIdCallSt
  loc_1386109:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1386111:       var_C8 = CVar(CLng(1)) 'Long
  loc_1386116:       var_144 = vbNullString
  loc_1386120:       Set var_DC = Me.FGrid
  loc_1386126:       LateIdCallSt
  loc_138614B:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1386153:       var_C8 = CVar(CLng(6)) 'Long
  loc_1386158:       var_144 = vbNullString
  loc_1386162:       Set var_DC = Me.FGrid
  loc_1386168:       LateIdCallSt
  loc_138617A:     End If
  loc_138617D:   Else
  loc_1386184:     If Not (var_1A0 = CLng(2)) Then
  loc_138618E:       If (var_1A0 = CLng(5)) Then
  loc_1386191:       End If
  loc_1386197:       If (var_F2 = 0) Then
  loc_13861AD:         var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13861C5:         var_C8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13861CA:         var_144 = vbNullString
  loc_13861D4:         Set var_11C = Me.FGrid
  loc_13861DA:         LateIdCallSt
  loc_13861F2:       End If
  loc_13861F5:     Else
  loc_13861FC:       If (var_1A0 = CLng(7)) Then
  loc_13861FF:         GoTo loc_138626D
  loc_1386202:       End If
  loc_1386209:       If (var_1A0 = CLng(&HA)) Then
  loc_1386212:         If (var_F2 = 0) Then
  loc_1386228:           var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1386240:           var_C8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1386245:           var_144 = vbNullString
  loc_138624F:           Set var_11C = Me.FGrid
  loc_1386255:           LateIdCallSt
  loc_138626D:           ' Referenced from:     13861FF
  loc_138626D:         End If
  loc_138626D:       End If
  loc_138626D:     End If
  loc_138626D:   End If
  loc_138626D: End If
  loc_1386273: If (arg_C = &HD) Then
  loc_138627B:   global_72 = 0
  loc_138627E: End If
  loc_1386280: arg_C = 0
  loc_1386283: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B '11BE21C
  'Data Table: 56D3A8
  Dim var_9C As String
  Dim var_AC As Variant
  Dim Me As Variant
  Dim var_88 As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_118 As MSHFlexGrid
  Dim var_194 As Double
  Dim var_158 As Integer
  Dim var_130 As String
  Dim unk_56D3B3 As Connection15
  Dim var_144 As Recordset15
  Dim var_148 As Fields15
  Dim var_15C As Field20
  Dim var_140 As String
  loc_11BDDFC: Set var_88 = Me.TopCtrl1
  loc_11BDE02: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11BDE1B: If (CStr() = "Browse") Then
  loc_11BDE1E:   Exit Sub
  loc_11BDE1F: End If
  loc_11BDE3C: var_B0 = Me.Fields.Item("MultiBillGeneration")
  loc_11BDE65: var_F0 = (var_B0.Value = "Yes") And (global_104 = "Yes")
  loc_11BDE78: var_110 = var_F0 And (global_108 = "N")
  loc_11BDE8E: If CBool(var_110) Then
  loc_11BDE9F:   Set var_88 = Me.Txt
  loc_11BDEA5:   Call 0.Method_FGrid_UnknownEvent_B0 (CInt(2), var_B0)
  loc_11BDEAD:   var_9C = var_B0.Text
  loc_11BDEC5:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BDECD:   var_E0 = CVar(CLng(0)) 'Long
  loc_11BDEF8:   var_158 = 0
  loc_11BDF2F:   var_130 = "Select Count(*) from SplitStock where KOtDocId='" & var_9C & "' And KotSno=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & vbNullString
  loc_11BDF38:   unk_56D3B3.Execute var_130, var_F0, -1
  loc_11BDF40:   var_144 = var_144.Fields
  loc_11BDF48:   var_158 = var_148.Item(var_148)
  loc_11BDF50:   var_15C = var_15C.Value
  loc_11BDF5B:   Proc_6_39_E7D3A0(var_16C, var_110, var_110)
  loc_11BDF9A:   If (var_16C > 0) Then
  loc_11BDF9D:     Exit Sub
  loc_11BDF9E:   End If
  loc_11BDFA1: Else
  loc_11BDFAF:   Set var_88 = Me.Txt
  loc_11BDFB5:   Call 0.Method_FGrid_UnknownEvent_B0 (CInt(2), var_B0, var_9C)
  loc_11BDFBD:   var_194 = var_B0.Text
  loc_11BDFD5:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BDFDD:   var_E0 = CVar(CLng(0)) 'Long
  loc_11BDFFF:   var_194 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_11BE008:   var_158 = 0
  loc_11BE048:   unk_56D3B3.Execute "Select Count(*) from Stock where KOtDocId='" & var_9C & "' And KotSno=" & CStr(var_194) & vbNullString, var_F0, -1
  loc_11BE050:   var_144 = var_144.Fields
  loc_11BE058:   var_158 = var_148.Item(var_148)
  loc_11BE060:   var_15C = var_15C.Value
  loc_11BE06B:   Proc_6_39_E7D3A0(var_16C, var_110, var_110, var_194)
  loc_11BE0AA:   If (var_16C > 0) Then
  loc_11BE0AD:     Exit Sub
  loc_11BE0AE:   End If
  loc_11BE0AE: End If
  loc_11BE0CB: If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_11BE0E1:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BE0F9:   var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11BE13F:   If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "YES") Then
  loc_11BE155:     var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BE16D:     var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11BE172:     var_140 = "No"
  loc_11BE17C:     Set var_118 = Me.FGrid
  loc_11BE182:     LateIdCallSt
  loc_11BE19D:   Else
  loc_11BE1B0:     var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BE1C8:     var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11BE1CD:     var_140 = "Yes"
  loc_11BE1D7:     Set var_118 = Me.FGrid
  loc_11BE1DD:     LateIdCallSt
  loc_11BE1F5:   End If
  loc_11BE1FA:   Call Proc_169_70_190E6A8(&H32, var_118, var_140, var_E0, var_AC, var_118, var_140, var_E0)
  loc_11BE202: Else
  loc_11BE20B:   Call FGrid_UnknownEvent_C()
  loc_11BE215:   global_72 = 0
  loc_11BE218: End If
  loc_11BE218: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '1427020
  'Data Table: 56D3A8
  Dim var_A0 As String
  Dim var_B0 As Variant
  Dim Me As Variant
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_11C As Variant
  Dim var_9C As Variant
  Dim var_120 As Variant
  Dim var_D4 As Variant
  Dim var_198 As Double
  Dim var_15C As Integer
  Dim unk_56D3B3 As Connection15
  Dim var_148 As Variant
  Dim var_14C As Variant
  Dim var_160 As Field20
  Dim var_86 As Integer
  Dim var_19C As Long
  Dim var_1A6 As Integer
  Dim var_144 As Variant
  loc_142659C: Set var_8C = Me.TopCtrl1
  loc_14265A2: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14265BB: If (CStr() = "Browse") Then
  loc_14265BE:   Exit Sub
  loc_14265BF: End If
  loc_14265DC: var_B4 = Me.Fields.Item("MultiBillGeneration")
  loc_1426605: var_F4 = (var_B4.Value = "Yes") And (global_104 = "Yes")
  loc_1426618: var_114 = var_F4 And (global_108 = "N")
  loc_142662E: If CBool(var_114) Then
  loc_142663F:   Set var_8C = Me.Txt
  loc_1426645:   Call 0.Method_FGrid_UnknownEvent_C0 (CInt(2), var_B4)
  loc_142664D:   var_A0 = var_B4.Text
  loc_1426656:   Set var_11C = Me.FGrid
  loc_142665C:   var_9C = var_11C.Row
  loc_1426665:   var_B0 = CVar(CLng(var_9C)) 'Long
  loc_142666D:   var_E4 = CVar(CLng(0)) 'Long
  loc_142667C:   var_D4 = Me.FGrid.TextMatrix)
  loc_1426698:   var_15C = 0
  loc_14266D8:   unk_56D3B3.Execute "Select Count(*) from SplitStock where KOtDocId='" & var_A0 & "' And KotSno=" & CStr(Val(CStr(var_D4))) & vbNullString, var_F4, -1
  loc_14266E0:   var_148 = var_148.Fields
  loc_14266E8:   var_15C = var_14C.Item(var_14C)
  loc_14266F0:   var_160 = var_160.Value
  loc_14266FB:   Proc_6_39_E7D3A0(var_170, var_114, var_114)
  loc_142673A:   If (var_170 > 0) Then
  loc_142673D:     Exit Sub
  loc_142673E:   End If
  loc_142676B:   Set var_8C = Me.Txt
  loc_1426771:   Call 0.Method_FGrid_UnknownEvent_C0 (CInt(2), var_B4, var_A0, "Select Max(KOTSno) from SplitStock where KOtDocId='", var_9C, -1, var_11C)
  loc_1426792:   unk_56D3B3.Execute 0 & var_A0 & "'", var_148, var_D4
  loc_142679A:   var_198 = var_11C.Fields
  loc_14267A2:   var_B0 = var_B4.Text.Item(var_E4)
  loc_14267AA:    = var_148.Value
  loc_14267B5:   Proc_6_39_E7D3A0(var_F4)
  loc_14267C1:   Set var_14C = Me.FGrid
  loc_14267C7:   var_114 = var_14C.Row
  loc_14267FA:   If (var_F4 >= CVar(CLng(var_114))) Then
  loc_14267FF:     var_86 = &HFF
  loc_1426802:   End If
  loc_1426805: Else
  loc_1426813:   Set var_8C = Me.Txt
  loc_1426819:   Call 0.Method_FGrid_UnknownEvent_C0 (CInt(2), var_B4, var_A0)
  loc_1426821:   var_86 = var_B4.Text
  loc_142682A:   Set var_11C = Me.FGrid
  loc_1426830:   var_9C = var_11C.Row
  loc_1426839:   var_B0 = CVar(CLng(var_9C)) 'Long
  loc_1426841:   var_E4 = CVar(CLng(0)) 'Long
  loc_1426850:   var_D4 = Me.FGrid.TextMatrix)
  loc_1426863:   var_198 = Val(CStr(var_D4))
  loc_142686C:   var_15C = 0
  loc_14268AC:   unk_56D3B3.Execute "Select Count(*) from Stock where KOtDocId='" & var_A0 & "' And KotSno=" & CStr(var_198) & vbNullString, var_F4, -1
  loc_14268B4:   var_148 = var_148.Fields
  loc_14268BC:   var_15C = var_14C.Item(var_14C)
  loc_14268C4:   var_160 = var_160.Value
  loc_14268CF:   Proc_6_39_E7D3A0(var_170, var_114, var_114, var_198)
  loc_142690E:   If (var_170 > 0) Then
  loc_1426911:     Exit Sub
  loc_1426912:   End If
  loc_142693F:   Set var_8C = Me.Txt
  loc_1426945:   Call 0.Method_FGrid_UnknownEvent_C0 (CInt(2), var_B4, var_A0, "Select Max(KOTSno) from Stock where KOtDocId='", var_9C, -1, var_11C)
  loc_1426966:   unk_56D3B3.Execute 0 & var_A0 & "'", var_148, var_D4
  loc_142696E:   var_E4 = var_11C.Fields
  loc_1426976:   var_D4 = var_B4.Text.Item(var_B0)
  loc_142697E:    = var_148.Value
  loc_1426989:   Proc_6_39_E7D3A0(var_F4)
  loc_14269CE:   If (var_F4 >= CVar(CLng(Me.FGrid.Row))) Then
  loc_14269D3:     var_86 = &HFF
  loc_14269D6:   End If
  loc_14269D6: End If
  loc_14269E9: var_19C = CLng(Me.FGrid.Col)
  loc_14269F9: If (var_19C = CLng(2)) Then
  loc_1426A02:   If (var_86 = 0) Then
  loc_1426A20:     If (((Index >= &H41) And (Index <= &H5A)) Or ((Index >= &H61) And (Index <= &H7A))) Then
  loc_1426A35:       Me.FGrid.Col = CVar(CLng(3))
  loc_1426A3D:     End If
  loc_1426A7B:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_1426A8D:   End If
  loc_1426A90: Else
  loc_1426A97:   If (var_19C = CLng(3)) Then
  loc_1426AA0:     If (var_86 = 0) Then
  loc_1426AA7:       Set var_120 = Me.FGrid
  loc_1426ACB:       var_A0 = CStr(Ucase(Chr(CLng(Index))))
  loc_1426AD4:       var_1A6 = Asc(var_A0)
  loc_1426AF8:       Set var_B4 = var_120
  loc_1426B0A:       Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0, var_1A6, 0)
  loc_1426B32:       Set var_8C = Me.TxtGrid
  loc_1426B38:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_A0, var_1A6, Index)
  loc_1426B40:       0 = var_B4.Text
  loc_1426B59:       If (Len(var_A0) <= 1) Then
  loc_1426B68:         Set var_8C = Me.TxtGrid
  loc_1426B6E:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_A0)
  loc_1426B76:         var_19C = var_B4.Text
  loc_1426B87:         Set var_11C = Me.TxtGrid
  loc_1426B8D:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_120, var_A0)
  loc_1426B95:         var_120.Text = var_86
  loc_1426BA8:       End If
  loc_1426BB4:       Set var_8C = Me.TxtGrid
  loc_1426BBA:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1426BD4:       Set var_11C = Me.TxtGrid
  loc_1426BDA:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_120)
  loc_1426BE2:       var_120.SelStart = Len(var_B4.Text)
  loc_1426BF5:     End If
  loc_1426BF8:   Else
  loc_1426BFF:     If (var_19C = CLng(5)) Then
  loc_1426C06:       Set var_120 = Me.FGrid
  loc_1426C2A:       var_A0 = CStr(Ucase(Chr(CLng(Index))))
  loc_1426C57:       Set var_B4 = var_120
  loc_1426C69:       Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1426C91:       Set var_8C = Me.TxtGrid
  loc_1426C97:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_A0, Asc(var_A0))
  loc_1426C9F:       0 = var_B4.Text
  loc_1426CB8:       If (Len(var_A0) <= 1) Then
  loc_1426CC7:         Set var_8C = Me.TxtGrid
  loc_1426CCD:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_A0)
  loc_1426CD5:         var_1A6 = var_B4.Text
  loc_1426CE6:         Set var_11C = Me.TxtGrid
  loc_1426CEC:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_120)
  loc_1426CF4:         var_120.Text = var_A0
  loc_1426D07:       End If
  loc_1426D13:       Set var_8C = Me.TxtGrid
  loc_1426D19:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1426D33:       Set var_11C = Me.TxtGrid
  loc_1426D39:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_120)
  loc_1426D41:       var_120.SelStart = Len(var_B4.Text)
  loc_1426D57:     Else
  loc_1426D5E:       If (var_19C = CLng(6)) Then
  loc_1426D65:         Set var_120 = Me.FGrid
  loc_1426D89:         var_A0 = CStr(Ucase(Chr(CLng(Index))))
  loc_1426DB6:         Set var_B4 = var_120
  loc_1426DC8:         Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_1426DF0:         Set var_8C = Me.TxtGrid
  loc_1426DF6:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_A0, Asc(var_A0))
  loc_1426DFE:         0 = var_B4.Text
  loc_1426E17:         If (Len(var_A0) <= 1) Then
  loc_1426E26:           Set var_8C = Me.TxtGrid
  loc_1426E2C:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_A0)
  loc_1426E34:           var_1A6 = var_B4.Text
  loc_1426E45:           Set var_11C = Me.TxtGrid
  loc_1426E4B:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_120)
  loc_1426E53:           var_120.Text = var_A0
  loc_1426E66:         End If
  loc_1426E72:         Set var_8C = Me.TxtGrid
  loc_1426E78:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1426E92:         Set var_11C = Me.TxtGrid
  loc_1426E98:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_120)
  loc_1426EA0:         var_120.SelStart = Len(var_B4.Text)
  loc_1426EB6:       Else
  loc_1426EBD:         If (var_19C = CLng(7)) Then
  loc_1426ED3:           var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1426EDB:           var_E4 = CVar(CLng(&H17)) 'Long
  loc_1426EF5:           var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_1426F10:           var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1426F58:           If (CVar(CLng(&H17)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_1426F99:             Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index)
  loc_1426FAB:           End If
  loc_1426FAE:         Else
  loc_1426FB5:           If (var_19C = CLng(&HA)) Then
  loc_1426FF6:             Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index, 0)
  loc_1427008:           End If
  loc_1427008:         End If
  loc_1427008:       End If
  loc_1427008:     End If
  loc_1427008:   End If
  loc_1427008: End If
  loc_1427012: If (CLng(Index) <> &HD) Then
  loc_142701A:   global_72 = &HFF
  loc_142701D: End If
  loc_142701D: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) '1186CCC
  'Data Table: 56D3A8
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim unk_56D3B3 As Connection15
  Dim var_124 As Fields15
  Dim var_128 As Field20
  Dim var_D4 As Variant
  loc_1186904: Set var_8C = Me.TopCtrl1
  loc_118690A: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1186912: var_A0 = CStr()
  loc_1186923: If (var_A0 = "Browse") Then
  loc_1186926:   Exit Sub
  loc_1186927: End If
  loc_1186944: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1186947:   Exit Sub
  loc_1186948: End If
  loc_1186959: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_118697B:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_118699B:     var_B4 = Me.Fields.Item("MultiBillGeneration")
  loc_11869A3:     var_9C = var_B4.Value
  loc_11869C4:     var_F4 = (var_9C = "Yes") And (global_104 = "Yes")
  loc_11869ED:     If CBool(var_F4 And (global_108 = "N")) Then
  loc_1186A1D:       Set var_8C = Me.Txt
  loc_1186A23:       Call 0.Method_FGrid_UnknownEvent_D0 (CInt(2), var_B4, var_A0, "Select Max(KOTSno) from SplitStock where KOtDocId='", var_9C, -1)
  loc_1186A44:       unk_56D3B3.Execute var_124 & var_A0 & "'", 0, var_128
  loc_1186A4C:       var_D4 = var_B4.Text.Fields
  loc_1186A54:        = var_124.Item()
  loc_1186A5C:        = var_128.Value
  loc_1186A67:       Proc_6_39_E7D3A0(var_F4)
  loc_1186AAC:       If (var_F4 >= CVar(CLng(Me.FGrid.Row))) Then
  loc_1186AAF:         Exit Sub
  loc_1186AB0:       End If
  loc_1186AB3:     Else
  loc_1186AE0:       Set var_8C = Me.Txt
  loc_1186AE6:       Call 0.Method_FGrid_UnknownEvent_D0 (CInt(2), var_B4, var_A0, "Select Max(KOTSno) from Stock where KOtDocId='", var_9C, -1)
  loc_1186B07:       unk_56D3B3.Execute var_124 & var_A0 & "'", 0, var_128
  loc_1186B17:        = var_124.Item(var_B4.Text.Fields)
  loc_1186B1F:        = var_128.Value
  loc_1186B2A:       Proc_6_39_E7D3A0(var_F4)
  loc_1186B3C:       var_114 = Me.FGrid.Row
  loc_1186B6F:       If (var_F4 >= CVar(CLng(var_114))) Then
  loc_1186B72:         Exit Sub
  loc_1186B73:       End If
  loc_1186B73:     End If
  loc_1186BAA:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_1186BCC:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1186BE2:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1186BEB:         Set var_B4 = Me.FGrid
  loc_1186C06:       Else
  loc_1186C19:         Me.FGrid.Rows = 1
  loc_1186C36:         var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1186C3E:         Set var_B4 = Me.FGrid
  loc_1186C6D:         Me.FGrid.FixedRows = 1
  loc_1186C75:       End If
  loc_1186C75:     End If
  loc_1186C78:   Else
  loc_1186C83:     var_D4 = "Delete Module"
  loc_1186C99:     MsgBox("No Entries To Delete", &H10, var_D4, var_F4, var_114)
  loc_1186CA9:   End If
  loc_1186CAD:   Set var_8C = Me.FGrid
  loc_1186CC3:   Call Proc_169_70_190E6A8(&H32, FGrid.DispID_8001, FGrid.DispID_10000, var_D4)
  loc_1186CC8: End If
  loc_1186CC8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E54388
  'Data Table: 56D3A8
  Dim var_9C As TextBox
  loc_E54357: Call Proc_169_87_E5D6C8(var_94)
  loc_E5436A: Set var_98 = Me.TxtGrid
  loc_E54370: Call 0.Method_FGrid_UnknownEvent_150 (0, var_9C)
  loc_E54378: var_9C.Visible = False
  loc_E54384: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1180428
  'Data Table: 56D3A8
  Dim var_8C As String
  Dim var_98 As Variant
  Dim var_A4 As String
  Dim unk_56D3B3 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_D8 As TextBox
  Dim var_D4 As TextBox
  Dim var_CC As Variant
  Dim var_F0 As Variant
  loc_1180068: On Error Goto loc_1180422
  loc_118008E: Call Proc_169_89_1006BAC(Proc_5_1_100EC1C("ADD", Me))
  loc_1180099: Call Proc_169_88_FCD388(global_56)
  loc_11800B1: Set var_90 = Me.Txt
  loc_11800B7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_98)
  loc_11800BF: var_98.Text = CStr(MemVar_1F950EC)
  loc_11800E1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98)
  loc_11800E9: var_98.Enabled = False
  loc_1180121: var_A4 = "Select Description,V_Type From Voucher_Type Where RestCode='" & global_52 & "' and logSite_Code='" & MemVar_1F95078 & "' and Site_Code='"
  loc_1180138: unk_56D3B3.Execute var_A4 & MemVar_1F95070 & "' and NCat='ORDER'", var_CC, -1
  loc_1180143: Set var_88 = Me.Txt
  loc_118016F: If (var_88.RecordCount > 0) Then
  loc_11801AB:   Set var_D4 = Me.Txt
  loc_11801B1:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_D8)
  loc_11801B9:   var_D8.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_11801E9:   var_98 = var_88.Fields.Item("V_Type")
  loc_1180208:   Set var_D4 = Me.Txt
  loc_118020E:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_D8)
  loc_1180216:   var_D8.Tag = CStr(var_98.Value)
  loc_118022C: End If
  loc_118023F: Set var_90 = Me.Txt
  loc_1180245: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_98)
  loc_118024D: var_98.Text = CStr(MemVar_1F950EC)
  loc_1180266: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(Me.TopCtrl1)
  loc_118026E: var_8C = CStr()
  loc_1180284: Set var_98 = Me.Txt
  loc_118028A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_D4)
  loc_11802B3: If ((var_8C = "Add") And (var_D4.Text = vbNullString)) Then
  loc_11802BC:   Call Proc_169_92_1184B18(MemVar_1F95044)
  loc_11802CF:   Set var_90 = Me.Txt
  loc_11802D5:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_11802DD:   var_98.Text = var_8C
  loc_11802EC: End If
  loc_11802FA: Set var_90 = Me.Txt
  loc_1180300: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_98)
  loc_1180316: Call Proc_169_69_1B19AA4(CDate(var_98.Text))
  loc_1180360: Set var_90 = Me.TxtMask
  loc_1180366: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98, CVar(CStr(Format(Time, "hh:nn"))))
  loc_118036E: var_98.defaultText = 1
  loc_1180398: Me.FGrid.Rows = 1
  loc_11803B5: var_F0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11803BD: Set var_98 = Me.FGrid
  loc_11803EC: Me.FGrid.FixedRows = 1
  loc_11803FF: Set var_90 = Me.Txt
  loc_1180405: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_98, FGrid.DispID_10000)
  loc_118040D: var_98.SetFocus
  loc_118041E: Set var_88 = Nothing
  loc_1180421: Exit Sub
  loc_1180422: ' Referenced from: 1180068
  loc_1180422: Proc_6_60_E63754(var_F0, 1)
  loc_1180427: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EE0500
  'Data Table: 56D3A8
  loc_EE044C: On Error Goto loc_EE04FA
  loc_EE046A: var_A4 = "Cancel ?"
  loc_EE0486: If (MsgBox(var_A4, 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE04AC:   Call Proc_169_89_1006BAC(Proc_5_1_100EC1C("INI", Me))
  loc_EE04B7:   Call Proc_169_93_18AA338(global_56)
  loc_EE04BC: End If
  loc_EE04BF: Call Proc_169_87_E5D6C8(var_A4)
  loc_EE04E2: If (Me.FrFinish.Visible = &HFF) Then
  loc_EE04F1:   Me.FrFinish.Visible = False
  loc_EE04F9: End If
  loc_EE04F9: Exit Sub
  loc_EE04FA: ' Referenced from: EE044C
  loc_EE04FA: Proc_6_60_E63754()
  loc_EE04FF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12FDCA4
  'Data Table: 56D3A8
  Dim var_A8 As Variant
  Dim unk_56D3B3 As Connection15
  Dim Me As Recordset15
  Dim var_A4 As Fields15
  Dim var_118 As Variant
  Dim var_AC As String
  loc_12FD5D0: On Error Goto loc_12FDC55
  loc_12FD5E1: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_12FD5E4:   Exit Sub
  loc_12FD5E5: End If
  loc_12FD5F3: Set var_A4 = Me.Txt
  loc_12FD5F9: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(2), var_A8)
  loc_12FD60C: var_B4 = "Delete"
  loc_12FD61F: Call Proc_169_81_FCF7A4(global_160, var_A8.Text)
  loc_12FD638: If (var_B6 = 0) Then
  loc_12FD63B:   Exit Sub
  loc_12FD63C: End If
  loc_12FD673: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_118, var_138) = 6) Then
  loc_12FD67F:   unk_56D3B3.BeginTrans var_13C
  loc_12FD6DA:   unk_56D3B3.Execute CStr("Delete From PackingOrderDetail2 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_12FD725:   var_170 = 0
  loc_12FD738:   var_168 = 0
  loc_12FD743:   var_164 = 0
  loc_12FD756:   var_15C = 0
  loc_12FD761:   var_158 = 0
  loc_12FD774:   var_150 = 0
  loc_12FD7BD:   Proc_154_5_10E3BD4(MemVar_1F95044, "PackingOrderDetail2", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FD83B:   unk_56D3B3.Execute CStr("Delete From PackingOrderDetail1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_12FD886:   var_170 = 0
  loc_12FD899:   var_168 = 0
  loc_12FD8A4:   var_164 = 0
  loc_12FD8B7:   var_15C = 0
  loc_12FD8C2:   var_158 = 0
  loc_12FD8D5:   var_150 = 0
  loc_12FD91E:   Proc_154_5_10E3BD4(MemVar_1F95044, "PackingOrderDetail1", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FD99C:   unk_56D3B3.Execute CStr("Delete From PackingOrderDetail Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_12FD9E7:   var_170 = 0
  loc_12FD9FA:   var_168 = 0
  loc_12FDA05:   var_164 = 0
  loc_12FDA18:   var_15C = 0
  loc_12FDA23:   var_158 = 0
  loc_12FDA36:   var_150 = 0
  loc_12FDA7F:   Proc_154_5_10E3BD4(MemVar_1F95044, "PackingOrderDetail", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FDAEF:   var_118 = "Delete From PackingOrder Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12FDAFD:   unk_56D3B3.Execute CStr(var_118), var_138, -1
  loc_12FDB48:   var_170 = 0
  loc_12FDB5B:   var_168 = 0
  loc_12FDB66:   var_164 = 0
  loc_12FDBD7:   var_AC = "PackingOrder"
  loc_12FDBE0:   Proc_154_5_10E3BD4(MemVar_1F95044, var_AC, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FDC0E:   unk_56D3B3.CommitTrans
  loc_12FDC1E:   Me.Requery -1
  loc_12FDC23:   Call Proc_169_93_18AA338(0, 0, 0, 0)
  loc_12FDC44:   Proc_5_0_1107AD0(&HFF, Me, global_56, 0)
  loc_12FDC4C: End If
  loc_12FDC51: Set var_98 = Nothing
  loc_12FDC54: Exit Sub
  loc_12FDC55: ' Referenced from: 12FD5D0
  loc_12FDC5B: unk_56D3B3.RollbackTrans
  loc_12FDC68: Set var_A4 = Err()
  loc_12FDC6E: Call 0.Method_arg_2C (var_AC, 0, var_164)
  loc_12FDC8F: MsgBox(CVar(var_AC), &H10, " Deletion Message", var_118, var_138)
  loc_12FDCA2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '101658C
  'Data Table: 56D3A8
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_E4 As Variant
  loc_1016374: On Error Goto loc_1016586
  loc_1016385: Set var_88 = Me.Txt
  loc_101638B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_8C)
  loc_101639E: var_98 = "Edit"
  loc_10163B1: Call Proc_169_82_F2C344(global_160, var_8C.Text)
  loc_10163CA: If (var_9A = 0) Then
  loc_10163CD:   Exit Sub
  loc_10163CE: End If
  loc_10163F1: Call Proc_169_89_1006BAC(Proc_5_1_100EC1C("EDIT", Me, global_56), var_98)
  loc_10163FC: Call Proc_169_95_DFE0F0(var_9A)
  loc_101640E: Set var_88 = Me.Txt
  loc_1016414: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_8C)
  loc_101641C: var_8C.Enabled = False
  loc_1016435: Set var_88 = Me.Txt
  loc_101643B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_8C)
  loc_1016443: var_8C.Enabled = False
  loc_101645F: Set var_88 = Me.TxtMask
  loc_1016465: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_8C)
  loc_101646D: var_8C.Enabled = False
  loc_1016486: Set var_88 = Me.Txt
  loc_101648C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_8C)
  loc_1016494: var_8C.Enabled = True
  loc_10164AD: Set var_88 = Me.Txt
  loc_10164B3: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_8C)
  loc_10164BB: var_8C.Enabled = True
  loc_10164D4: Set var_88 = Me.Txt
  loc_10164DA: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_8C)
  loc_10164E2: var_8C.Enabled = False
  loc_10164FC: Set var_88 = Me.Txt
  loc_1016502: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H12), var_8C)
  loc_1016518: Call Proc_169_69_1B19AA4(CDate(var_8C.Text))
  loc_1016532: Set var_88 = Me.Txt
  loc_1016538: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4))
  loc_1016540: var_8C.SetFocus
  loc_1016561: var_E4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1016569: Set var_8C = Me.FGrid
  loc_1016585: Exit Sub
  loc_1016586: ' Referenced from: 1016374
  loc_1016586: Proc_6_60_E63754(FGrid.DispID_10000, var_E4)
  loc_101658B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E242A4
  'Data Table: 56D3A8
  loc_E24284: On Error Goto loc_E2429C
  loc_E24294: Me.Global.Unload Me
  loc_E2429C: ' Referenced from: E24284
  loc_E2429C: Proc_6_60_E63754()
  loc_E242A1: Exit Sub
  loc_E242A2: Result  End Sub 'Long
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F13870
  'Data Table: 56D3A8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_120 As String
  Dim MemVar_1F950E4 As String
  loc_F13798: On Error Goto loc_F13868
  loc_F137B2: If (Me.RecordCount <= 0) Then
  loc_F137BB:   var_B8 = "Information"
  loc_F137D6:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F137E6:   Exit Sub
  loc_F137E7: End If
  loc_F137EE: var_10C = "SELECT  Distinct P.Docid AS SearchCode, V.Description AS BookingType, cast(P.VNo as Int) AS BookingNo, CAST(P.VDate AS VarChar(11)) AS BookingDate, " & "P.CustName AS CustomerName, PD.ContraDocID FROM  PackingOrder P INNER JOIN Voucher_Type V ON P.VType = V.V_Type AND P.LogSite_Code = V.LogSite_Code AND V.Site_Code = '"
  loc_F13811: var_120 = var_10C & MemVar_1F95070 & "' AND V.LogSite_Code = '" & MemVar_1F95078 & "' AND " & "V.Category IN ('ORDER') AND P.LogSite_Code = '"
  loc_F1381F: MemVar_1F950E4 = var_120 & MemVar_1F95078 & "' INNER JOIN PackingOrderDetail PD ON P.Docid = PD.DocID WHERE  (PD.ContraDocID IS NOT NULL) OR (PD.ContraDocID = '') ORDER BY P.Docid, cast(P.VNo as Int)"
  loc_F1383A: MemVar_1F95120 = Me
  loc_F13847: Proc_6_126_F1C850("1000,1000,1000,4000")
  loc_F13862: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F13867: Exit Sub
  loc_F13868: ' Referenced from: F13798
  loc_F13868: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F1386D: Exit Sub
  loc_F1386E: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32D08
  'Data Table: 56D3A8
  loc_E32CF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32D00: Call Proc_169_93_18AA338(global_56)
  loc_E32D05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E32BE8
  'Data Table: 56D3A8
  loc_E32BD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32BE0: Call Proc_169_93_18AA338(global_56)
  loc_E32BE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E39F68
  'Data Table: 56D3A8
  loc_E39F58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39F60: Call Proc_169_93_18AA338(global_56)
  loc_E39F65: Exit Sub
  loc_E39F66: arg_3068 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E352E8
  'Data Table: 56D3A8
  loc_E352D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E352E0: Call Proc_169_93_18AA338(global_56)
  loc_E352E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'FAE004
  'Data Table: 56D3A8
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_56D3B3 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Fields15
  Dim var_B4 As Variant
  Dim var_C0 As TextBox
  loc_FADE9C: var_90 = "Select OrderBookingPrintType from Enviro where LOGSite_code='" & MemVar_1F95078
  loc_FADEAC: unk_56D3B3.Execute var_90 & "'", var_B4, -1
  loc_FADEB7: Set var_88 = var_B8
  loc_FADEDB: If (var_88.RecordCount > 0) Then
  loc_FADEED:   var_B8 = var_88.Fields
  loc_FADEF5:   var_C0 = var_B8.Item("OrderBookingPrintType")
  loc_FADF15:   var_8C = CStr(Ucase(CVar(Proc_6_38_E69628(CVar(var_C0)))))
  loc_FADF24: End If
  loc_FADF29: Set var_88 = Nothing
  loc_FADF34: If (var_8C = "W") Then
  loc_FADF37:   Call Proc_169_100_199CF68(var_B8)
  loc_FADF5A:   Set var_B8 = Me.Txt
  loc_FADF60:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2), var_C0, var_90, "Update PackingOrder Set PrintedYN='Y' Where DocId='")
  loc_FADF68:   var_B4 = var_C0.Text
  loc_FADF71:   var_94 = -1 & var_90
  loc_FADF81:   unk_56D3B3.Execute var_90 & "'" & "'", var_E8, 
  loc_FADF9E: Else
  loc_FADF9E:   Call Proc_169_83_161889C()
  loc_FADFC1:   Set var_B8 = Me.Txt
  loc_FADFC7:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2), var_C0, var_90, "Update PackingOrder Set PrintedYN='Y' Where DocId='")
  loc_FADFCF:   var_B4 = var_C0.Text
  loc_FADFD8:   var_94 = -1 & var_90
  loc_FADFE8:   unk_56D3B3.Execute var_90 & "'" & "'", var_E8, 
  loc_FAE002: End If
  loc_FAE002: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0C484
  'Data Table: 56D3A8
  Dim Me As Recordset15
  loc_E0C47B: Me.Requery -1
  loc_E0C480: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '19ED36C
  'Data Table: 56D3A8
  Dim var_11C As Variant
  Dim var_120 As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_13C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1D0 As Variant
  Dim var_210 As Variant
  Dim var_128 As String
  Dim var_230 As Variant
  Dim var_15C As Variant
  Dim var_234 As String
  Dim unk_56D3B3 As Connection15
  Dim var_124 As Variant
  Dim var_23C As Variant
  Dim var_240 As Variant
  Dim Me As Recordset15
  Dim var_24C As Double
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_B4 As Variant
  Dim var_D0 As Variant
  Dim var_C0 As Double
  Dim var_C8 As Variant
  Dim var_E0 As Double
  Dim var_E8 As Variant
  Dim var_100 As Double
  Dim var_D8 As Variant
  Dim var_F0 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_110 As Variant
  Dim var_8A As Variant
  Dim var_27C As Variant
  Dim var_88 As Variant
  Dim var_26C As String
  Dim var_294 As String
  Dim var_298 As String
  Dim var_2A0 As TextBox
  Dim var_2C8 As Variant
  Dim var_2E0 As Variant
  Dim var_318 As Variant
  Dim var_328 As Variant
  Dim var_360 As Variant
  Dim var_3A0 As Variant
  Dim var_4E0 As Variant
  Dim var_A74 As Double
  Dim var_5CC As String
  Dim var_98C As Variant
  Dim var_2BC As String
  Dim var_290 As Variant
  Dim var_300 As Variant
  Dim var_338 As Variant
  Dim var_348 As Variant
  Dim var_17C As Variant
  Dim var_358 As Variant
  Dim var_374 As Variant
  Dim var_1E0 As Variant
  Dim var_3C4 As Variant
  Dim var_3D4 As Variant
  Dim var_3F4 As Variant
  Dim var_414 As Variant
  Dim var_424 As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_464 As Variant
  Dim var_474 As Variant
  Dim var_4C4 As Variant
  Dim var_4D4 As Variant
  Dim var_514 As Variant
  Dim var_524 As Variant
  Dim var_564 As Variant
  Dim var_594 As Variant
  Dim var_65C As Variant
  Dim var_67C As Variant
  Dim var_6FC As Variant
  Dim var_794 As Variant
  Dim var_844 As Variant
  Dim var_89C As Variant
  Dim var_924 As Variant
  Dim var_9CC As Variant
  Dim var_A34 As Variant
  Dim var_B8 As Recordset15
  Dim var_2F0 As Variant
  Dim var_2A4 As MSHFlexGrid
  Dim var_2C0 As Variant
  Dim var_1290 As Double
  Dim var_2C4 As MSHFlexGrid
  Dim var_1298 As Double
  Dim var_12A0 As Double
  Dim var_2CC As MSHFlexGrid
  Dim var_314 As MSHFlexGrid
  Dim var_A94 As Variant
  Dim var_61C As Variant
  Dim var_12AC As Double
  Dim var_AF8 As Variant
  Dim var_B18 As Variant
  Dim var_35C As MSHFlexGrid
  Dim var_B5C As Variant
  Dim var_B7C As Variant
  Dim var_BAC As Variant
  Dim var_BCC As Variant
  Dim var_398 As MSHFlexGrid
  Dim var_BFC As Variant
  Dim var_C1C As Variant
  Dim var_39C As Variant
  Dim var_C4C As Variant
  Dim var_C6C As Variant
  Dim var_C9C As Variant
  Dim var_CBC As Variant
  Dim var_4D8 As Variant
  Dim var_CEC As Variant
  Dim var_4DC As MSHFlexGrid
  Dim var_D3C As Variant
  Dim var_D5C As Variant
  Dim var_DAC As Variant
  Dim var_5B8 As MSHFlexGrid
  Dim var_DDC As Variant
  Dim var_DFC As Variant
  Dim var_760 As MSHFlexGrid
  Dim var_E2C As Variant
  Dim var_E4C As Variant
  Dim var_764 As MSHFlexGrid
  Dim var_A68 As Variant
  Dim var_EB0 As Variant
  Dim var_ED0 As Variant
  Dim var_7B8 As MSHFlexGrid
  Dim var_F44 As Variant
  Dim var_F64 As Variant
  Dim var_7BC As Variant
  Dim var_FD8 As Variant
  Dim var_FF8 As Variant
  Dim var_810 As MSHFlexGrid
  Dim var_106C As Variant
  Dim var_814 As MSHFlexGrid
  Dim var_1120 As Variant
  Dim var_868 As MSHFlexGrid
  Dim var_11E4 As Variant
  Dim var_86C As MSHFlexGrid
  Dim var_364 As String
  Dim var_3A4 As String
  Dim var_584 As Variant
  Dim var_5C8 As Variant
  Dim var_784 As Variant
  Dim var_7DC As Variant
  Dim var_834 As Variant
  Dim var_8E4 As Variant
  Dim var_A14 As Variant
  Dim var_F14 As Variant
  Dim var_10D0 As Variant
  Dim var_1264 As Variant
  Dim var_2D0 As Variant
  Dim var_2AC As String
  loc_19EA38B: Set var_11C = Me.Txt
  loc_19EA391: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_19EA3BA: If (Proc_6_27_EA61EC(var_120, "Booking Date") = 0) Then
  loc_19EA3BD:   Exit Sub
  loc_19EA3BE: End If
  loc_19EA3C9: Set var_11C = Me.TxtMask
  loc_19EA3CF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120)
  loc_19EA3F8: If (Proc_6_27_EA61EC(var_120, "Booking Time") = 0) Then
  loc_19EA3FB:   Exit Sub
  loc_19EA3FC: End If
  loc_19EA407: Set var_11C = Me.Txt
  loc_19EA40D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_120)
  loc_19EA436: If (Proc_6_27_EA61EC(var_120, "Delivery Date") = 0) Then
  loc_19EA439:   Exit Sub
  loc_19EA43A: End If
  loc_19EA445: Set var_11C = Me.TxtMask
  loc_19EA44B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120)
  loc_19EA474: If (Proc_6_27_EA61EC(var_120, "Delivery Time") = 0) Then
  loc_19EA477:   Exit Sub
  loc_19EA478: End If
  loc_19EA483: Set var_11C = Me.Txt
  loc_19EA489: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120)
  loc_19EA4B2: If (Proc_6_27_EA61EC(var_120, "Customer Name") = 0) Then
  loc_19EA4B5:   Exit Sub
  loc_19EA4B6: End If
  loc_19EA4C3: var_12A = Me.ChkNCBOOKING.Value
  loc_19EA4D1: If (var_12A = 1) Then
  loc_19EA4DF:   Set var_11C = Me.Txt
  loc_19EA4E5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_120)
  loc_19EA50E:   If (Proc_6_27_EA61EC(var_120, "NC Category") = 0) Then
  loc_19EA511:     Exit Sub
  loc_19EA512:   End If
  loc_19EA512: End If
  loc_19EA515: Call Proc_169_94_10BF008(var_12A)
  loc_19EA520: If (var_12A = 0) Then
  loc_19EA523:   Exit Sub
  loc_19EA524: End If
  loc_19EA530: Call Txt_Validate(CInt(0))
  loc_19EA540: Set var_11C = Me.TxtGrid
  loc_19EA546: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_120, 0)
  loc_19EA54E: var_120.Visible = True
  loc_19EA55D: Call Proc_169_87_E5D6C8(var_13C)
  loc_19EA580: If (Me.FrFinish.Visible = &HFF) Then
  loc_19EA58F:   Me.FrFinish.Visible = False
  loc_19EA597: End If
  loc_19EA597: var_14C = 1
  loc_19EA5A0: var_16C = 1
  loc_19EA5BE: var_18C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_19EA5C4: var_19C = Trim(var_18C)
  loc_19EA5E0: If (var_19C = vbNullString) Then
  loc_19EA5FC:   MsgBox("Item Detail Required ", 0, var_18C, var_19C, var_1BC)
  loc_19EA61F:   Me.FGrid.Row = 1
  loc_19EA62B:   Set var_11C = Me.FGrid
  loc_19EA64F:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_19EA657:   Exit Sub
  loc_19EA658: End If
  loc_19EA67D: For var_1C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_1C0 'Integer
  loc_19EA687:   var_14C = CVar(CLng(var_92)) 'Long
  loc_19EA68F:   var_16C = CVar(CLng(3)) 'Long
  loc_19EA6A9:   var_18C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_19EA6B7:   var_1AC = vbNullString
  loc_19EA6C5:   var_1D0 = CVar(CLng(var_92)) 'Long
  loc_19EA6D6:   Set var_120 = Me.FGrid
  loc_19EA6F8:   var_230 = CVar(CLng(6)) And (CDbl(Val(CStr(var_120.TextMatrix)))) <> CDbl(0))
  loc_19EA715:   If CBool(var_230) Then
  loc_19EA731:     MsgBox("Item Name Required ", 0, var_18C, Trim(var_18C), var_1BC)
  loc_19EA754:     Me.FGrid.Row = 1
  loc_19EA760:     Set var_11C = Me.FGrid
  loc_19EA784:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_19EA78C:     Exit Sub
  loc_19EA78D:   End If
  loc_19EA790: Next var_1C0 'Integer
  loc_19EA7A2: var_12A = Me.ChkNCBOOKING.Value
  loc_19EA7B7: var_13C = "Y"
  loc_19EA7D3: var_114 = CStr(IIf((var_12A = 1), var_13C, "N"))
  loc_19EA7E8: Set var_11C = Me.TopCtrl1
  loc_19EA7EE: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_19EA7F6: var_128 = CStr()
  loc_19EA807: If (var_128 = "Add") Then
  loc_19EA837:   Set var_11C = Me.Txt
  loc_19EA83D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_128, "Select Count(*) From PackingOrder Where DocID='", var_13C, -1)
  loc_19EA84E:   var_234 = var_23C & var_128
  loc_19EA85E:   unk_56D3B3.Execute var_234 & "'", 0, var_240
  loc_19EA86E:    = var_23C.Item()
  loc_19EA876:    = var_240.Value
  loc_19EA8A3:   If (var_120.Text.Fields > 0) Then
  loc_19EA8AC:     Call Proc_169_92_1184B18(MemVar_1F95044)
  loc_19EA8BF:     Set var_11C = Me.Txt
  loc_19EA8C5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120)
  loc_19EA8CD:     var_120.Text = var_128
  loc_19EA8DC:     Exit Sub
  loc_19EA8DD:   End If
  loc_19EA8E0: Else
  loc_19EA8FD:   var_120 = Me.Fields.Item("DocID")
  loc_19EA914:   global_144 = CStr(var_120.Value)
  loc_19EA925: End If
  loc_19EA94A: For var_244 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_244 'Integer
  loc_19EA954:   var_14C = CVar(CLng(var_92)) 'Long
  loc_19EA95C:   var_16C = CVar(CLng(&H12)) 'Long
  loc_19EA98C:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_19EA993:     var_14C = CVar(CLng(var_92)) 'Long
  loc_19EA99B:     var_16C = CVar(CLng(9)) 'Long
  loc_19EA9C7:     var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_19EA9D6:   Else
  loc_19EA9DA:     var_14C = CVar(CLng(var_92)) 'Long
  loc_19EA9E2:     var_16C = CVar(CLng(9)) 'Long
  loc_19EAA0E:     var_AC = (var_AC + Val(CStr(Me.FGrid.TextMatrix))))
  loc_19EAA1A:   End If
  loc_19EAA1D: Next var_244 'Integer
  loc_19EAA2E: Set var_11C = Me.TxtGt
  loc_19EAA34: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_12A, var_92)
  loc_19EAA3F: For var_250 =  To var_12A: 1 = var_250 'Integer
  loc_19EAA7F:   Set var_11C = Me.LblCap
  loc_19EAA85:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_234, CVar("Select IsNull(Max(Nature),'') from SundryMast Where LOGSITE_CODE='" & MemVar_1F95078 & "' AND Code='"), var_230, -1)
  loc_19EAA8D:   var_124 = var_120.Tag
  loc_19EAABA:   unk_56D3B3.Execute CStr(var_23C & Trim(CVar(var_234)) & "'"), 0, var_240
  loc_19EAACA:    = var_23C.Item()
  loc_19EAAD2:    = var_240.Value
  loc_19EAADF:   var_9C = Proc_6_38_E69628(var_124.Fields)
  loc_19EAB0A:   var_264 = var_9C
  loc_19EAB15:   If (var_264 = "Addition") Then
  loc_19EAB25:     Set var_11C = Me.TxtGt
  loc_19EAB2B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120)
  loc_19EAB33:     var_128 = var_120.Text
  loc_19EAB4A:     var_B4 = (var_B4 + Val(var_128))
  loc_19EAB64:     Set var_11C = Me.TxtPer
  loc_19EAB6A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128)
  loc_19EAB72:     var_B4 = var_120.Text
  loc_19EAB89:     var_D0 = (var_D0 + Val(var_128))
  loc_19EAB99:   Else
  loc_19EABA1:     If (var_264 = "Deduction") Then
  loc_19EABB1:       Set var_11C = Me.TxtGt
  loc_19EABB7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128)
  loc_19EABBF:       var_D0 = var_120.Text
  loc_19EABD6:       var_C0 = (var_C0 + Val(var_128))
  loc_19EABF0:       Set var_11C = Me.TxtPer
  loc_19EABF6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_C0)
  loc_19EABFE:       var_24C = var_120.Text
  loc_19EAC15:       var_C8 = (var_C8 + Val(var_128))
  loc_19EAC25:     Else
  loc_19EAC2D:       If (var_264 = "Discount") Then
  loc_19EAC3D:         Set var_11C = Me.TxtGt
  loc_19EAC43:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_C8)
  loc_19EAC4B:         var_24C = var_120.Text
  loc_19EAC62:         var_E0 = (var_E0 + Val(var_128))
  loc_19EAC7C:         Set var_11C = Me.TxtPer
  loc_19EAC82:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_E0)
  loc_19EAC8A:         var_24C = var_120.Text
  loc_19EACA1:         var_E8 = (var_E8 + Val(var_128))
  loc_19EACB1:       Else
  loc_19EACB9:         If (var_264 = "Luxury Tax") Then
  loc_19EACC9:           Set var_11C = Me.TxtGt
  loc_19EACCF:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_E8)
  loc_19EACD7:           var_24C = var_120.Text
  loc_19EACEE:           var_100 = (var_100 + Val(var_128))
  loc_19EAD08:           Set var_11C = Me.TxtPer
  loc_19EAD0E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_100)
  loc_19EAD16:           var_24C = var_120.Text
  loc_19EAD2D:           var_D8 = (var_D8 + Val(var_128))
  loc_19EAD3D:         Else
  loc_19EAD45:           If (var_264 = "Round Off") Then
  loc_19EAD55:             Set var_11C = Me.TxtGt
  loc_19EAD5B:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_D8)
  loc_19EAD63:             var_24C = var_120.Text
  loc_19EAD7A:             var_F0 = (var_F0 + Val(var_128))
  loc_19EAD94:             Set var_11C = Me.TxtPer
  loc_19EAD9A:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_F0)
  loc_19EADA2:             var_24C = var_120.Text
  loc_19EADB9:             var_F8 = (var_F8 + Val(var_128))
  loc_19EADC9:           Else
  loc_19EADD1:             If (var_264 = "Sale Tax") Then
  loc_19EADE1:               Set var_11C = Me.TxtGt
  loc_19EADE7:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_F8)
  loc_19EADEF:               var_24C = var_120.Text
  loc_19EAE06:               var_100 = (var_100 + Val(var_128))
  loc_19EAE20:               Set var_11C = Me.TxtPer
  loc_19EAE26:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_100)
  loc_19EAE2E:               var_24C = var_120.Text
  loc_19EAE45:               var_D8 = (var_D8 + Val(var_128))
  loc_19EAE55:             Else
  loc_19EAE5D:               If (var_264 = "Service Charge") Then
  loc_19EAE6D:                 Set var_11C = Me.TxtGt
  loc_19EAE73:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_D8)
  loc_19EAE7B:                 var_24C = var_120.Text
  loc_19EAE92:                 var_108 = (var_108 + Val(var_128))
  loc_19EAEAC:                 Set var_11C = Me.TxtPer
  loc_19EAEB2:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_108)
  loc_19EAEBA:                 var_24C = var_120.Text
  loc_19EAED1:                 var_110 = (var_110 + Val(var_128))
  loc_19EAEE1:               Else
  loc_19EAEE9:                 If (var_264 = "Service Tax") Then
  loc_19EAEF9:                   Set var_11C = Me.TxtGt
  loc_19EAEFF:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_110)
  loc_19EAF07:                   var_24C = var_120.Text
  loc_19EAF1E:                   var_100 = (var_100 + Val(var_128))
  loc_19EAF38:                   Set var_11C = Me.TxtPer
  loc_19EAF3E:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_100)
  loc_19EAF46:                   var_24C = var_120.Text
  loc_19EAF5D:                   var_D8 = (var_D8 + Val(var_128))
  loc_19EAF6A:                 End If
  loc_19EAF6A:               End If
  loc_19EAF6A:             End If
  loc_19EAF6A:           End If
  loc_19EAF6A:         End If
  loc_19EAF6A:       End If
  loc_19EAF6A:     End If
  loc_19EAF6A:   End If
  loc_19EAF6D: Next var_250 'Integer
  loc_19EAF74: var_8A = &HFF
  loc_19EAF80: unk_56D3B3.BeginTrans var_268
  loc_19EAF89: Set var_11C = Me.TopCtrl1
  loc_19EAF8F: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8A)
  loc_19EAF97: var_128 = CStr()
  loc_19EAFA8: If (var_128 = "Add") Then
  loc_19EAFB1:   Call Proc_169_92_1184B18(MemVar_1F95044)
  loc_19EAFC4:   Set var_11C = Me.Txt
  loc_19EAFCA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120)
  loc_19EAFD2:   var_120.Text = var_128
  loc_19EAFF5:   var_128 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_19EB01B:   var_13C = Trim(global_164)
  loc_19EB03E:   Set var_11C = Me.Txt
  loc_19EB044:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120, var_26C, CVar(var_128 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='") & var_13C & "' And VP.Date_From<=")
  loc_19EB04C:   var_290 = var_120.Text
  loc_19EB05A:   Proc_6_7_F26918(var_230, CVar(var_26C), -1)
  loc_19EB06B:   var_27C = var_124 & var_230 & " Order By VP.Date_From DESC" 
  loc_19EB079:   unk_56D3B3.Execute CStr(var_27C), var_128, 
  loc_19EB084:   Set var_88 = var_124
  loc_19EB0C4:   If (var_88.RecordCount > 0) Then
  loc_19EB0D5:     Set var_11C = Me.Txt
  loc_19EB0DB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_120)
  loc_19EB0E3:     var_128 = var_120.Text
  loc_19EB12B:     var_298 = "Update Depart Set CurTokenNo=" & CStr(Val(var_128)) & " Where Logsite_Code='" & MemVar_1F95078 & "'And code='" & global_52
  loc_19EB13B:     unk_56D3B3.Execute var_298 & "'", var_13C, -1
  loc_19EB16D:     Set var_11C = Me.Txt
  loc_19EB173:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120, var_128)
  loc_19EB17B:     var_124 = var_120.Text
  loc_19EB188:     var_24C = Val(var_128)
  loc_19EB19D:     var_124 = var_88.Fields
  loc_19EB1A5:     var_23C = var_124.Item("V_Type")
  loc_19EB1AD:     var_13C = var_23C.Value
  loc_19EB1C9:     var_2A0 = var_88.Fields.Item("Date_From")
  loc_19EB1D8:     Proc_6_7_F26918(var_230, CVar(var_2A0))
  loc_19EB20B:     var_294 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_24C) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_19EB219:     var_18C = CVar(var_294 & MemVar_1F95078 & "') and V_Type='") 'String
  loc_19EB23D:     unk_56D3B3.Execute CStr(var_18C & var_13C & "' and Date_From=" & var_230), var_27C, -1
  loc_19EB277:   End If
  loc_19EB27A: Else
  loc_19EB298:   Set var_11C = Me.Txt
  loc_19EB29E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_128, "Delete From PackingOrder Where DocID='", var_13C)
  loc_19EB2A6:   -1 = var_120.Text
  loc_19EB2BF:   unk_56D3B3.Execute var_124 & var_128 & "'", var_2A4, var_24C
  loc_19EB2F7:   Set var_11C = Me.Txt
  loc_19EB2FD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_128, "Delete From PackingOrderDetail Where DocID='")
  loc_19EB305:   var_13C = var_120.Text
  loc_19EB30E:   var_234 = -1 & var_128
  loc_19EB31E:   unk_56D3B3.Execute var_124 & var_128 & "'", var_124, var_24C
  loc_19EB356:   Set var_11C = Me.Txt
  loc_19EB35C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_128, "Delete From PackingOrderDetail1 Where DocID='")
  loc_19EB364:   var_13C = var_120.Text
  loc_19EB36D:   var_234 = -1 & var_128
  loc_19EB37D:   unk_56D3B3.Execute var_124 & var_128 & "'", var_124, 
  loc_19EB3B5:   Set var_11C = Me.Txt
  loc_19EB3BB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_128, "Delete From PackingOrderDetail2 Where DocID='")
  loc_19EB3C3:   var_13C = var_120.Text
  loc_19EB3CC:   var_234 = -1 & var_128
  loc_19EB3DC:   unk_56D3B3.Execute var_124 & var_128 & "'", var_124, 
  loc_19EB3F6: End If
  loc_19EB404: Set var_11C = Me.Txt
  loc_19EB40A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120)
  loc_19EB425: Set var_124 = Me.Txt
  loc_19EB42B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_23C)
  loc_19EB446: Set var_240 = Me.Txt
  loc_19EB44C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2A0)
  loc_19EB454: var_2AC = var_2A0.Tag
  loc_19EB464: Set var_2A4 = Me.Txt
  loc_19EB46A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_19EB479: Proc_6_7_F26918(var_18C, CVar(var_2C0))
  loc_19EB489: Set var_2C4 = Me.TxtMask
  loc_19EB48F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_2C8)
  loc_19EB497: var_230 = var_2C8.defaultText
  loc_19EB4AB: Set var_2CC = Me.Txt
  loc_19EB4B1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0)
  loc_19EB4B9: var_2E0 = CVar(var_2D0) 'Address
  loc_19EB4C0: Proc_6_7_F26918(var_2F0, var_2E0)
  loc_19EB4D0: Set var_314 = Me.TxtMask
  loc_19EB4D6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_318)
  loc_19EB4DE: var_328 = var_318.defaultText
  loc_19EB4F5: Set var_35C = Me.Txt
  loc_19EB4FB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_360, var_364)
  loc_19EB50F: Set var_398 = Me.TxtGt
  loc_19EB515: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_12A, var_230)
  loc_19EB527: Set var_39C = Me.TxtGt
  loc_19EB52D: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_12A, var_3A0)
  loc_19EB542: var_24C = Val(var_3A0.Text)
  loc_19EB54C: Set var_4D8 = Me.TxtGt
  loc_19EB552: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_12C, var_24C)
  loc_19EB564: Set var_4DC = Me.TxtGt
  loc_19EB56A: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_12C, var_4E0)
  loc_19EB57F: var_A74 = Val(var_4E0.Text)
  loc_19EB590: Proc_6_7_F26918(var_584, Date)
  loc_19EB599: Set var_5B8 = Me.TopCtrl1
  loc_19EB59F: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A74)
  loc_19EB5E1: Set var_760 = Me.Txt
  loc_19EB5E7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_764)
  loc_19EB5F6: Proc_6_39_E7D3A0(var_784, CVar(var_764))
  loc_19EB606: Set var_7B8 = Me.TxtCust
  loc_19EB60C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_7BC)
  loc_19EB61B: Proc_6_17_EAAE40(var_7DC, CVar(var_7BC))
  loc_19EB62B: Set var_810 = Me.TxtCust
  loc_19EB631: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_814)
  loc_19EB640: Proc_6_17_EAAE40(var_834, CVar(var_814))
  loc_19EB650: Set var_868 = Me.TxtCust
  loc_19EB656: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_86C)
  loc_19EB665: Proc_6_17_EAAE40(var_88C, CVar(var_86C))
  loc_19EB675: Set var_8C0 = Me.Txt
  loc_19EB67B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_8C4)
  loc_19EB68A: Proc_6_39_E7D3A0(var_8E4, CVar(var_8C4))
  loc_19EB69A: Set var_958 = Me.Txt
  loc_19EB6A0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_95C)
  loc_19EB6E1: Set var_9F0 = Me.Txt
  loc_19EB6E7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_9F4)
  loc_19EB6F6: Proc_6_17_EAAE40(var_A14, CVar(var_9F4))
  loc_19EB70F: var_234 = "Insert into PackingOrder (DocID,VNo,VPrefix,VType,Site_Code,VDate,VTime,DDate,DTime,CustName,Total,Discount,Tax,Addition,Deduction,RoundOff,NetAmt " & " ,U_Name,U_EntDt,U_AE,LogSite_Code,RestCode,DiscPer,TaxPer,AdvAmt,PhoneNo,Addr1,Addr2,TokenNo,NCBOOKING,NCTYPE,Remark)values ('"
  loc_19EB75F: var_19C = CVar(var_234 & var_120.Text & "','" & var_23C.Text & "', " & "'" & global_152 & "','" & var_2AC & "','" & MemVar_1F95070 & "',") 'String
  loc_19EB76E: var_210 = var_19C & var_18C & ",'" 
  loc_19EB79A: var_338 = CVar(CStr(var_360.Text)) 'String
  loc_19EB7AD: var_374 = CVar(var_364) 'String
  loc_19EB7D8: var_3D4 = var_210 & CVar(CStr(var_230)) & "'," & var_2F0 & ",'" & var_338 & "','" & var_374 & "'," & CVar(var_24C) & "," & CVar(var_E0) 
  loc_19EB800: var_434 = var_3D4 & "," & CVar(var_100) & "," & CVar(var_B4) 
  loc_19EB845: var_524 = var_434 & "," & CVar(var_C0) & "," & CVar(var_F0) & "," & CVar(var_A74) & ",'" 
  loc_19EB882: var_67C = var_524 & CVar(MemVar_1F950C8) & "'," & var_584 & ",'" & IIf((CStr(var_5C8) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) 
  loc_19EB8F0: var_844 = var_67C & "','" & CVar(global_52) & "'," & CVar(var_E8) & "," & CVar(var_D8) & "," & var_784 & "," & var_7DC & "," & var_834 
  loc_19EB933: var_9CC = var_844 & "," & var_88C & "," & var_8E4 & ",'" & CVar(var_114) & "','" & IIf((var_114 = "Y"), Trim(CVar(var_95C)), vbNullString) 
  loc_19EB95A: unk_56D3B3.Execute CStr(var_9CC & "'," & var_A14 & ")"), var_A68, -1
  loc_19EBA83: Set var_11C = Me.TxtCust
  loc_19EBA89: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120)
  loc_19EBAB2: If CBool(Trim(CVar(var_120)) <> vbNullString) Then
  loc_19EBAD2:   Set var_11C = Me.TxtCust
  loc_19EBAD8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120, "Select count(*) from OrderPersonDetails Where PhoneNo='", var_210)
  loc_19EBAE7:   var_18C = Trim(CVar(var_120))
  loc_19EBAEF:   var_19C = -1 & var_18C 
  loc_19EBB06:   unk_56D3B3.Execute CStr(var_19C & "'"), var_124, var_A6C
  loc_19EBB45:   var_120 = var_124.Fields.Item(0)
  loc_19EBB67:   If (var_120.Value > 0) Then
  loc_19EBB87:     Set var_11C = Me.TxtCust
  loc_19EBB8D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120, "Update OrderPersonDetails Set CustName=", var_374)
  loc_19EBB9C:     Proc_6_17_EAAE40(var_18C, CVar(var_120), -1)
  loc_19EBBBC:     Set var_124 = Me.TxtCust
  loc_19EBBC2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_23C)
  loc_19EBBD1:     Proc_6_17_EAAE40(var_230, CVar(var_23C))
  loc_19EBBF1:     Set var_240 = Me.TxtCust
  loc_19EBBF7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2A0)
  loc_19EBC06:     Proc_6_17_EAAE40(var_2E0, CVar(var_2A0))
  loc_19EBC26:     Set var_2A4 = Me.TxtCust
  loc_19EBC2C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_2C0)
  loc_19EBC3B:     var_328 = Trim(CVar(var_2C0))
  loc_19EBC46:     Proc_6_17_EAAE40(var_338, var_328)
  loc_19EBC57:     var_358 = var_2C4 & var_18C & ",Addr1=" & var_230 & ",Addr2=" & var_2E0 & " Where Rtrim(Ltrim(PhoneNo))=" & var_338 & vbNullString 
  loc_19EBC65:     unk_56D3B3.Execute CStr(var_358), var_2C0, 
  loc_19EBCA4:   Else
  loc_19EBCC1:     Set var_11C = Me.TxtCust
  loc_19EBCC7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120, "Insert Into OrderPersonDetails (PhoneNo,CustName,Addr1,Addr2, U_AE, U_EntDt, U_Name, Site_Code, LogSite_Code) values(")
  loc_19EBCD6:     Proc_6_17_EAAE40(var_18C, CVar(var_120), var_434)
  loc_19EBCDE:     var_19C = -1 & var_18C 
  loc_19EBCF6:     Set var_124 = Me.TxtCust
  loc_19EBCFC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_23C)
  loc_19EBD0B:     Proc_6_17_EAAE40(var_230, CVar(var_23C))
  loc_19EBD2B:     Set var_240 = Me.TxtCust
  loc_19EBD31:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2A0)
  loc_19EBD40:     Proc_6_17_EAAE40(var_2E0, CVar(var_2A0))
  loc_19EBD60:     Set var_2A4 = Me.TxtCust
  loc_19EBD66:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2C0)
  loc_19EBD75:     Proc_6_17_EAAE40(var_328, CVar(var_2C0))
  loc_19EBD98:     Proc_6_7_F26918(var_374, Date)
  loc_19EBDBC:     var_3C4 = var_2C4 & var_18C & "," & var_230 & "," & var_2E0 & "," & var_328 & ",'A'," & var_374 & ",'" & CVar(MemVar_1F950C8) & "','" 
  loc_19EBDD9:     var_3F4 = var_3C4 & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) 
  loc_19EBDE6:     var_128 = CStr(var_3F4 & "')")
  loc_19EBDF0:     unk_56D3B3.Execute var_128, var_2C4, 
  loc_19EBE3E:   End If
  loc_19EBE43:   Set var_B8 = Nothing
  loc_19EBE46: End If
  loc_19EBE6B: For var_A78 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_A78 'Integer
  loc_19EBE75:   var_14C = CVar(CLng(var_92)) 'Long
  loc_19EBE7D:   var_16C = CVar(CLng(3)) 'Long
  loc_19EBE97:   var_18C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_19EBEB9:   If CBool(Trim(var_18C) <> vbNullString) Then
  loc_19EBECA:     Set var_11C = Me.Txt
  loc_19EBED0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_128)
  loc_19EBED8:     var_16C = var_120.Text
  loc_19EBEEA:     var_24C = Val(CStr(var_92))
  loc_19EBEFB:     Set var_124 = Me.Txt
  loc_19EBF01:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_23C, var_2AC)
  loc_19EBF16:     var_A74 = Val(var_2AC)
  loc_19EBF24:     Set var_240 = Me.Txt
  loc_19EBF2A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2A0, var_A74)
  loc_19EBF39:     Proc_6_7_F26918(var_18C, CVar(var_2A0))
  loc_19EBF42:     var_15C = CVar(CLng(var_92)) 'Long
  loc_19EBF4A:     var_17C = CVar(CLng(1)) 'Long
  loc_19EBF69:     var_1E0 = CVar(CLng(var_92)) 'Long
  loc_19EBF7A:     Set var_2C0 = Me.FGrid
  loc_19EBF93:     var_1290 = Val(CStr(var_2C0.TextMatrix)))
  loc_19EBFC4:     var_1298 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19EBFF5:     var_12A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19EC026:     var_12A4 = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_92)), var_12A0, CVar(CLng(9)), CVar(CLng(var_92)), var_1298, CVar(CLng(8)))
  loc_19EC02D:     Set var_2D0 = Me.TopCtrl1
  loc_19EC033:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(var_92)))
  loc_19EC065:     var_454 = IIf((CStr(var_3F4) = "Add"), "A", "E")
  loc_19EC078:     Proc_6_7_F26918(var_524, Date, var_1290, CVar(CLng(6)))
  loc_19EC081:     var_924 = CVar(CLng(var_92)) 'Long
  loc_19EC089:     var_98C = CVar(CLng(&HE)) 'Long
  loc_19EC098:     var_594 = Me.FGrid.TextMatrix)
  loc_19EC0A8:     var_A34 = CVar(CLng(var_92)) 'Long
  loc_19EC0B0:     var_A94 = CVar(CLng(&HD)) 'Long
  loc_19EC0B9:     Set var_318 = Me.FGrid
  loc_19EC0D9:     var_AF8 = CVar(CLng(var_92)) 'Long
  loc_19EC0E1:     var_B18 = CVar(CLng(7)) 'Long
  loc_19EC10A:     var_B5C = CVar(CLng(var_92)) 'Long
  loc_19EC112:     var_B7C = CVar(CLng(4)) 'Long
  loc_19EC11B:     Set var_360 = Me.FGrid
  loc_19EC121:     var_6FC = var_360.TextMatrix)
  loc_19EC131:     var_BAC = CVar(CLng(var_92)) 'Long
  loc_19EC139:     var_BCC = CVar(CLng(&H1A)) 'Long
  loc_19EC158:     var_BFC = CVar(CLng(var_92)) 'Long
  loc_19EC160:     var_C1C = CVar(CLng(&H17)) 'Long
  loc_19EC169:     Set var_39C = Me.FGrid
  loc_19EC17F:     var_C4C = CVar(CLng(var_92)) 'Long
  loc_19EC187:     var_C6C = CVar(CLng(&H19)) 'Long
  loc_19EC1A6:     var_C9C = CVar(CLng(var_92)) 'Long
  loc_19EC1AE:     var_CBC = CVar(CLng(&H14)) 'Long
  loc_19EC1B7:     Set var_4D8 = Me.FGrid
  loc_19EC1CD:     var_CEC = CVar(CLng(var_92)) 'Long
  loc_19EC1D5:     var_D0C = CVar(CLng(&H16)) 'Long
  loc_19EC1F4:     var_D3C = CVar(CLng(var_92)) 'Long
  loc_19EC1FC:     var_D5C = CVar(CLng(&H15)) 'Long
  loc_19EC205:     Set var_4E0 = Me.FGrid
  loc_19EC21B:     var_D8C = CVar(CLng(var_92)) 'Long
  loc_19EC223:     var_DAC = CVar(CLng(&H18)) 'Long
  loc_19EC242:     var_DDC = CVar(CLng(var_92)) 'Long
  loc_19EC24A:     var_DFC = CVar(CLng(&H18)) 'Long
  loc_19EC269:     var_E2C = CVar(CLng(var_92)) 'Long
  loc_19EC271:     var_E4C = CVar(CLng(&H11)) 'Long
  loc_19EC27A:     Set var_764 = Me.FGrid
  loc_19EC29A:     var_EB0 = CVar(CLng(var_92)) 'Long
  loc_19EC2A2:     var_ED0 = CVar(CLng(&H12)) 'Long
  loc_19EC2CB:     var_F44 = CVar(CLng(var_92)) 'Long
  loc_19EC2D3:     var_F64 = CVar(CLng(&HF)) 'Long
  loc_19EC2DC:     Set var_7BC = Me.FGrid
  loc_19EC2FC:     var_FD8 = CVar(CLng(var_92)) 'Long
  loc_19EC304:     var_FF8 = CVar(CLng(&H10)) 'Long
  loc_19EC32D:     var_106C = CVar(CLng(var_92)) 'Long
  loc_19EC335:     var_108C = CVar(CLng(&H13)) 'Long
  loc_19EC35E:     var_1100 = CVar(CLng(var_92)) 'Long
  loc_19EC366:     var_1120 = CVar(CLng(&HA)) 'Long
  loc_19EC3B3:     var_11E4 = CVar(CLng(var_92)) 'Long
  loc_19EC3BB:     var_1204 = CVar(CLng(&HB)) 'Long
  loc_19EC3EA:     var_234 = "insert into PackingOrderDetail (Docid,SNo,Vtype,VNo,Site_Code,VPrefix,vdate,ItemCode, Qty,Rate,Amount,Remark, " & " U_AE,U_Name,U_EntDt,Logsite_Code,ContraDocid,ContraSno,RestCode,ItemRate,Unit,RateIncTax,RateEdit,SChrgApp,DiscApp,TaxCode,TaxRoff,DepartCode,GodownCode,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,VoidYN,ItemRestCode) values ('"
  loc_19EC43D:     var_3A4 = var_234 & var_128 & "'," & CStr(var_23C.Text) & ",'" & global_164 & "'," & CStr(var_A74) & ",'" & MemVar_1F95070 & "', "
  loc_19EC44E:     var_5CC = var_3A4 & "'" & global_152
  loc_19EC45B:     var_1BC = CVar(var_5CC & "',") & var_18C 
  loc_19EC4B4:     var_374 = var_1BC & ", '" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_1290) & " ," & " " & CVar(var_1298) & "," & CVar(var_12A0) 
  loc_19EC503:     var_564 = var_374 & ",'" & CVar(var_12A4) & "','" & var_454 & "','" & CVar(MemVar_1F950C8) & "'," & var_524 & ",'" 
  loc_19EC54B:     var_65C = var_564 & CVar(MemVar_1F95078) & "','" & CVar(CStr(var_594)) & "'," & CVar(Val(CStr(var_318.TextMatrix)))) & ",'" & CVar(global_52) 
  loc_19EC587:     var_794 = var_65C & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_6FC)) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_19EC5C3:     var_89C = var_794 & "','" & CVar(CStr(var_39C.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_4D8.TextMatrix))) 
  loc_19EC5FF:     var_9CC = var_89C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_4E0.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_19EC63B:     var_F14 = var_9CC & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(var_764.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_19EC677:     var_10D0 = var_F14 & "," & CVar(Val(CStr(var_7BC.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_19EC6A4:     var_1264 = var_10D0 & ",'" & IIf((CStr(Me.FGrid.TextMatrix)) = "Yes"), "Y", "N") & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')" 
  loc_19EC6B2:     unk_56D3B3.Execute CStr(var_1264), var_1288, -1
  loc_19EC822:   End If
  loc_19EC825: Next var_A78 'Integer
  loc_19EC84F: For var_12E0 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_92 = var_12E0 'Integer
  loc_19EC859:   var_14C = CVar(CLng(var_92)) 'Long
  loc_19EC861:   var_16C = CVar(CLng(2)) 'Long
  loc_19EC8A8:   Set var_120 = Me.FGCat
  loc_19EC8B9:   var_128 = CStr(var_120.TextMatrix))
  loc_19EC8E7:   If CBool(CVar(CLng(6)) And (CDbl(Val(var_128)) <> CDbl(0))) Then
  loc_19EC8F8:     Set var_11C = Me.Txt
  loc_19EC8FE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_128, CVar(CLng(var_92)))
  loc_19EC906:     (Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) = var_120.Text
  loc_19EC939:     var_24C = Val(CStr(Me.FGCat.TextMatrix)))
  loc_19EC951:     Set var_23C = Me.FGCat
  loc_19EC957:     var_18C = var_23C.TextMatrix)
  loc_19EC96A:     var_A74 = Val(CStr(var_18C))
  loc_19EC97B:     Set var_240 = Me.Txt
  loc_19EC981:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_2A0, var_5CC, var_A74, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_19EC996:     var_1290 = Val(var_5CC)
  loc_19EC9A4:     Set var_2A4 = Me.Txt
  loc_19EC9AA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2C0, var_1290, CVar(CLng(1)))
  loc_19EC9B9:     Proc_6_7_F26918(var_1BC, CVar(var_2C0), CVar(CLng(var_92)))
  loc_19EC9C2:     var_424 = CVar(CLng(var_92)) 'Long
  loc_19EC9CA:     var_464 = CVar(CLng(2)) 'Long
  loc_19EC9E9:     var_4C4 = CVar(CLng(var_92)) 'Long
  loc_19EC9F1:     var_514 = CVar(CLng(4)) 'Long
  loc_19EC9FA:     Set var_2C8 = Me.FGCat
  loc_19ECA13:     var_1298 = Val(CStr(var_2C8.TextMatrix)))
  loc_19ECA44:     var_12A0 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_19ECA5C:     Set var_2D0 = Me.FGCat
  loc_19ECA75:     var_12AC = Val(CStr(var_2D0.TextMatrix)))
  loc_19ECA83:     Proc_6_7_F26918(var_3F4, MemVar_1F950EC, var_12AC, CVar(CLng(6)), CVar(CLng(var_92)), var_12A0, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_19ECA8C:     Set var_314 = Me.TopCtrl1
  loc_19ECA92:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1298)
  loc_19ECAAB:     var_474 = "A"
  loc_19ECADD:     var_234 = "Insert Into PackingOrderDetail1(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_19ECB22:     var_2BC = var_234 & var_128 & "'," & CStr(var_2A0.Text) & "," & CStr(var_A74) & ",'" & global_164 & "','"
  loc_19ECB41:     var_A48 = var_2BC & global_152 & "','" & MemVar_1F95070 & "',"
  loc_19ECB84:     var_300 = CVar(var_A48 & CStr(var_1290) & ",") & var_1BC & ",'" & CVar(global_52) & "','" & CVar(CStr(Me.FGCat.TextMatrix))) 
  loc_19ECBE3:     var_414 = var_300 & "'," & CVar(var_1298) & "," & CVar(var_12A0) & "," & CVar(var_12AC) & ",'" & CVar(MemVar_1F950C8) & "'," & var_3F4 
  loc_19ECBF3:     var_4D4 = var_414 & ",'" & IIf((CStr(var_454) = "Add"), var_474, "E") 
  loc_19ECC1D:     unk_56D3B3.Execute CStr(var_4D4 & "','N','" & CVar(MemVar_1F95078) & "')"), var_564, -1
  loc_19ECCC3:   End If
  loc_19ECCC6: Next var_12E0 'Integer
  loc_19ECCD7: Set var_11C = Me.TxtGt
  loc_19ECCDD: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_12A, var_92)
  loc_19ECCE8: For var_12E4 =  To var_12A: 1 = var_12E4 'Integer
  loc_19ECCFB:   Set var_11C = Me.TxtGt
  loc_19ECD01:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120)
  loc_19ECD09:   var_12A = var_120.Visible
  loc_19ECD1B:   If (var_12A = &HFF) Then
  loc_19ECD2C:     Set var_11C = Me.Txt
  loc_19ECD32:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120)
  loc_19ECD4D:     Set var_124 = Me.Txt
  loc_19ECD53:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_23C)
  loc_19ECD76:     Set var_240 = Me.Txt
  loc_19ECD7C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2A0)
  loc_19ECD84:     var_13C = CVar(var_2A0) 'Address
  loc_19ECD8B:     Proc_6_7_F26918(var_18C, var_13C)
  loc_19ECD9D:     Set var_2A4 = Me.LblCap
  loc_19ECDA3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_2C0)
  loc_19ECDCB:     Set var_2C4 = Me.TxtPer
  loc_19ECDD1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_2C8)
  loc_19ECDE6:     var_A74 = Val(var_2C8.Tag)
  loc_19ECDF6:     Set var_2CC = Me.LblCap
  loc_19ECDFC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_2D0, var_2BC)
  loc_19ECE16:     Set var_314 = Me.LblAt
  loc_19ECE1C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_318)
  loc_19ECE36:     Set var_35C = Me.TxtGt
  loc_19ECE3C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_360)
  loc_19ECE56:     Set var_398 = Me.TxtPer
  loc_19ECE5C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_39C)
  loc_19ECE71:     var_1290 = Val(var_39C.Text)
  loc_19ECE81:     Set var_3A0 = Me.TxtGt
  loc_19ECE87:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_4D8, var_5CC)
  loc_19ECE9C:     var_1298 = Val(var_5CC)
  loc_19ECEAC:     Set var_4DC = Me.LblDummy
  loc_19ECEB2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_4E0, var_A48)
  loc_19ECEC7:     var_12A0 = Val(var_A48)
  loc_19ECED5:     Proc_6_7_F26918(var_474, MemVar_1F950EC)
  loc_19ECEDE:     Set var_5B8 = Me.TopCtrl1
  loc_19ECEE4:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_12A0)
  loc_19ECF26:     Set var_760 = Me.Txt
  loc_19ECF2C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_764)
  loc_19ECF3B:     Proc_6_7_F26918(var_594, CVar(var_764))
  loc_19ECF4D:     Set var_7B8 = Me.LblDummy
  loc_19ECF53:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7BC)
  loc_19ECF74:     var_234 = "Insert Into PackingOrderDetail2(DocId,Sno,Vtype,VNo,Vdate,PartyCode,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LOGSITE_CODE) Values ('" & var_120.Text
  loc_19ECFB2:     var_19C = CVar(var_234 & "'," & CStr(var_92) & ",'" & global_164 & "'," & CStr(Val(var_23C.Text)) & ",") 'String
  loc_19ECFB8:     var_1BC = var_19C & var_18C 
  loc_19ECFBC:     var_14C = ",'','"
  loc_19ED002:     var_348 = var_1BC & var_14C & Trim(CVar(var_2C0.Tag)) & "'," & CVar(var_2D0.Caption) & ",'" & CVar(var_2BC) & "','" & CVar(var_318.Tag) 
  loc_19ED05A:     var_414 = var_348 & "','" & CVar(var_360.Tag) & "'," & CVar(var_4D8.Text) & "," & CVar(var_4E0.Caption) & "," & CVar(var_12A0) & ",'" 
  loc_19ED0A7:     var_61C = var_414 & CVar(MemVar_1F950C8) & "'," & var_474 & ",'" & IIf((CStr(var_4D4) = "Add"), "A", "E") & "'," & var_594 & ",'" & CVar(var_7BC.Tag) 
  loc_19ED0FA:     unk_56D3B3.Execute CStr(var_61C & "','" & CVar(global_52) & "','N','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_6FC, -1
  loc_19ED1C6:   End If
  loc_19ED1C9: Next var_12E4 'Integer
  loc_19ED1D4: unk_56D3B3.CommitTrans
  loc_19ED1DB: var_8A = 0
  loc_19ED1EC: Set var_11C = Me.Txt
  loc_19ED1F2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120)
  loc_19ED20E: var_8A = 0
  loc_19ED21C: Me.Requery -1
  loc_19ED246: Me.Find "SearchCode ='" & var_120.Text & "'", 0, 1
  loc_19ED275: Call Proc_169_89_1006BAC(Proc_5_1_100EC1C("INI", Me, global_56), var_14C)
  loc_19ED280: Call Proc_169_93_18AA338(var_8A)
  loc_19ED28B: var_15C = 0
  loc_19ED2BB: unk_56D3B3.Execute "Select Max(CKOTPrintYN) From Depart Where Code='" & global_52 & "'", var_13C, -1
  loc_19ED2C3: var_11C = var_11C.Fields
  loc_19ED2CB: var_15C = var_120.Item(var_120)
  loc_19ED2D3: var_124 = var_124.Value
  loc_19ED301: If (Proc_6_38_E69628(var_18C, var_18C) = "Y") Then
  loc_19ED304:   Call Proc_169_80_1C2A710(var_8A)
  loc_19ED309: End If
  loc_19ED340: If (MsgBox("Print Booking Slip ?", &H24, "Order Booking", var_19C, var_1BC) = 6) Then
  loc_19ED343:   Call TopCtrl1_UnknownEvent_14()
  loc_19ED348: End If
  loc_19ED34D: Set var_88 = Nothing
  loc_19ED350: Exit Sub
  loc_19ED357: If (var_8A = &HFF) Then
  loc_19ED360:   unk_56D3B3.RollbackTrans
  loc_19ED365: End If
  loc_19ED365: Proc_6_60_E63754()
  loc_19ED36A: Exit Sub
End Sub

Private Sub CmdAdvance_Click() '107464C
  'Data Table: 56D3A8
  Dim var_A8 As String
  Dim unk_56D3B3 As Connection15
  Dim var_88 As Fields15
  Dim var_C8 As Field20
  Dim var_98 As Variant
  loc_10743D4: Set var_88 = Me.TopCtrl1
  loc_10743DA: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10743F3: If (CStr() <> "Browse") Then
  loc_10743F6:   Exit Sub
  loc_10743F7: End If
  loc_1074412: var_A8 = "Select V_Type from Voucher_Type Where Ncat='PADV' And LOGSITE_CODE='" & MemVar_1F95078 & "' And RestCode='"
  loc_107442C: unk_56D3B3.Execute var_A8 & global_52 & "'", var_98, -1
  loc_1074437: Set var_A4 = var_88
  loc_1074462: If (Me.Recordset15.RecordCount > 0) Then
  loc_1074482:   var_C8 = Me.Recordset15.Fields.Item("V_Type")
  loc_107449C:   POSAdvanceDepDialog.AdvType = CStr(var_C8.Value)
  loc_10744B1: Else
  loc_10744B7:   Call 0.Method_arg_50 (var_A8)
  loc_10744DE:   MsgBox(CVar("Advance Voucher Type Not Exists." & vbCrLf & "Plz. Contact to your S/w vendor"), &H40, CVar(var_A8), var_E8, var_108)
  loc_10744F6:   Set var_A0 = Nothing
  loc_10744FE:   Set var_A4 = Nothing
  loc_1074501:   Exit Sub
  loc_1074502: End If
  loc_107450D: POSAdvanceDepDialog.OpenMode = 1
  loc_107451D: POSAdvanceDepDialog.OpenType = 5
  loc_1074530: Set var_88 = Me.Txt
  loc_1074536: Call 0.Method_CmdAdvance_Click0 (CInt(0), var_C8)
  loc_1074556: POSAdvanceDepDialog.IdNo = CStr(Val(POSAdvanceDepDialog.Txt.Text))
  loc_1074577: Set var_88 = Me.Txt
  loc_107457D: Call 0.Method_CmdAdvance_Click0 (CInt(2), var_C8)
  loc_1074593: POSAdvanceDepDialog.pDocId = POSAdvanceDepDialog.Txt.Text
  loc_10745B0: Set var_88 = Me.Txt
  loc_10745B6: Call 0.Method_CmdAdvance_Click0 (CInt(1), var_C8)
  loc_10745CC: POSAdvanceDepDialog.PTableOrRoomNo = POSAdvanceDepDialog.Txt.Text
  loc_10745E9: Set var_88 = Me.Txt
  loc_10745EF: Call 0.Method_CmdAdvance_Click0 (CInt(&HC), var_C8)
  loc_107460F: POSAdvanceDepDialog.PBillAmt = CStr(Val(POSAdvanceDepDialog.Txt.Text))
  loc_107462E: Call POSAdvanceDepDialog.global_52Put(global_52)
  loc_1074646: Call 0.Method_arg_2B0 (1, var_F8)
  loc_107464B: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'EDF570
  'Data Table: 56D3A8
  Dim var_8C As TextBox
  Dim var_A8 As TextBox
  Dim arg_3003 As Double
  loc_EDF4CA: Set var_88 = Me.TxtGt
  loc_EDF4D0: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_EDF4DE: Proc_6_74_E23240(var_8C)
  loc_EDF4ED: Call Proc_169_87_E5D6C8(var_A0)
  loc_EDF504: Set var_88 = Me.TxtGt
  loc_EDF50A: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_EDF512: var_8C.SelStart = 0
  loc_EDF52B: Set var_88 = Me.TxtGt
  loc_EDF531: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_EDF54C: Set var_90 = Me.TxtGt
  loc_EDF552: Call 0.Method_TxtGt_GotFocus0 (Index, var_A8)
  loc_EDF55A: var_A8.SelLength = Len(var_8C.Text)
  loc_EDF56D: Exit Sub
  loc_EDF56E: arg_3003 = var_8C
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A1F8
  'Data Table: 56D3A8
  loc_E5A1C5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5A1CE:   Proc_6_75_E5335C(Shift)
  loc_E5A1D3: End If
  loc_E5A1E8: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5A1F1:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5A1F6: End If
  loc_E5A1F6: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'F7BBD0
  'Data Table: 56D3A8
  Dim var_8C As Variant
  Dim arg_10 As Integer
  Dim var_FC As TextBox
  loc_F7BAA2: Set var_88 = Me.TxtGt
  loc_F7BAA8: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_F7BAC3: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_F7BACF: On Error Goto loc_F7BBCE
  loc_F7BADF: Set var_88 = Me.LblCap
  loc_F7BAE5: Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7BAED: 2 = var_8C.Tag
  loc_F7BB24: If (Trim(CVar(var_98)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_F7BB2D:   If (arg_10 = &H2D) Then
  loc_F7BB32:     arg_10 = 0
  loc_F7BB35:   End If
  loc_F7BB42:   Set var_88 = Me.TxtGt
  loc_F7BB48:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7BB50:   arg_10 = var_8C.Text
  loc_F7BBA0:   Set var_90 = Me.TxtPer
  loc_F7BBA6:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_FC, CStr(Format(CVar(((Val(var_98) * CDbl(&H64)) / global_80)), "0.00")), 1)
  loc_F7BBAE:   var_FC.Text = 1
  loc_F7BBCE:   ' Referenced from: F7BACF
  loc_F7BBCE: End If
  loc_F7BBCE: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E48E1C
  'Data Table: 56D3A8
  loc_E48DFA: Set var_88 = Me.TxtGt
  loc_E48E00: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E48E0E: Proc_6_73_E23294(var_8C)
  loc_E48E1A: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'ECD3DC
  'Data Table: 56D3A8
  Dim var_90 As Variant
  Dim arg_10 As Integer
  loc_ECD33E: Call Proc_169_70_190E6A8(Cancel)
  loc_ECD343: On Error Goto loc_ECD3DA
  loc_ECD353: Set var_8C = Me.LblCap
  loc_ECD359: Call 0.Method_TxtGt_Validate0 (Cancel, var_90)
  loc_ECD398: If (Trim(CVar(var_90.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_ECD3A8:   Set var_8C = Me.TxtPer
  loc_ECD3AE:   Call 0.Method_TxtGt_Validate0 (Cancel, var_90)
  loc_ECD3D2:   If (CDbl(Val(var_90.Text)) > CDbl(&H64)) Then
  loc_ECD3D7:     arg_10 = &HFF
  loc_ECD3DA:     ' Referenced from: ECD343
  loc_ECD3DA:   End If
  loc_ECD3DA: End If
  loc_ECD3DA: Exit Sub
End Sub

Private Sub ChkNCBOOKING_Click() 'F711B4
  'Data Table: 56D3A8
  Dim var_88 As CheckBox
  Dim var_A4 As Variant
  loc_F71074: Set var_88 = Me.TopCtrl1
  loc_F7107A: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F71093: If (CStr() = "Browse") Then
  loc_F71096:   Exit Sub
  loc_F71097: End If
  loc_F710B2: If (Me.ChkNCBOOKING.Value = 1) Then
  loc_F710C3:   Set var_88 = Me.Txt
  loc_F710C9:   Call 0.Method_ChkNCBOOKING_Click0 (CInt(&H11), var_A4)
  loc_F710E3:   If (var_A4.Visible = 0) Then
  loc_F710F3:     Set var_88 = Me.Txt
  loc_F710F9:     Call 0.Method_ChkNCBOOKING_Click0 (CInt(&H11), var_A4)
  loc_F71101:     var_A4.Visible = True
  loc_F71118:     Set var_88 = Me.Label1
  loc_F7111E:     Call 0.Method_ChkNCBOOKING_Click0 (&H16, var_A4)
  loc_F71126:     var_A4.Visible = True
  loc_F71132:   End If
  loc_F71135: Else
  loc_F71143:   Set var_88 = Me.Txt
  loc_F71149:   Call 0.Method_ChkNCBOOKING_Click0 (CInt(&H11), var_A4)
  loc_F71163:   If (var_A4.Visible = &HFF) Then
  loc_F71173:     Set var_88 = Me.Txt
  loc_F71179:     Call 0.Method_ChkNCBOOKING_Click0 (CInt(&H11), var_A4)
  loc_F71181:     var_A4.Visible = False
  loc_F71198:     Set var_88 = Me.Label1
  loc_F7119E:     Call 0.Method_ChkNCBOOKING_Click0 (&H16, var_A4)
  loc_F711A6:     var_A4.Visible = False
  loc_F711B2:   End If
  loc_F711B2: End If
  loc_F711B2: Exit Sub
End Sub

Public Sub TxtMask_UnknownEvent_0(Index As Integer) 'EE8894
  'Data Table: 56D3A8
  Dim var_8C As MaskEdBox
  Dim var_A0 As Variant
  Dim var_C8 As MaskEdBox
  loc_EE87E2: Set var_88 = Me.TxtMask
  loc_EE87E8: Call 0.Method_TxtMask_UnknownEvent_00 (Index)
  loc_EE87F6: Proc_6_74_E23240(var_8C)
  loc_EE8805: Call Proc_169_87_E5D6C8(var_A0)
  loc_EE8820: Set var_88 = Me.TxtMask
  loc_EE8826: Call 0.Method_TxtMask_UnknownEvent_00 (Index, var_8C)
  loc_EE882E: var_8C.SelStart = 0
  loc_EE8844: Set var_88 = Me.TxtMask
  loc_EE884A: Call 0.Method_TxtMask_UnknownEvent_00 (Index, var_8C)
  loc_EE886D: Set var_90 = Me.TxtMask
  loc_EE8873: Call 0.Method_TxtMask_UnknownEvent_00 (Index, var_C8)
  loc_EE887B: var_C8.SelLength = CVar(Len(CStr(var_8C.Text)))
  loc_EE8891: Exit Sub
End Sub

Public Sub TxtMask_UnknownEvent_1(Index As Integer) 'E49364
  'Data Table: 56D3A8
  loc_E49342: Set var_88 = Me.TxtMask
  loc_E49348: Call 0.Method_TxtMask_UnknownEvent_10 (Index)
  loc_E49356: Proc_6_73_E23294(var_8C)
  loc_E49362: Exit Sub
End Sub

Public Sub TxtMask_UnknownEvent_8(arg_C, arg_10) 'EDF474
  'Data Table: 56D3A8
  Dim var_86 As Integer
  Dim var_90 As MaskEdBox
  Dim arg_10 As Integer
  loc_EDF3CB: var_86 = arg_C
  loc_EDF3D6: If Not (var_86 = CInt(0)) Then
  loc_EDF3E1:   If (var_86 = CInt(1)) Then
  loc_EDF3E4:   End If
  loc_EDF3EE:   Set var_8C = Me.TxtMask
  loc_EDF3F4:   Call 0.Method_TxtMask_UnknownEvent_80 (arg_C, var_90)
  loc_EDF419:   If (CStr(var_90.defaultText) > "24:00") Then
  loc_EDF435:     MsgBox("Invalid Time", 0, var_D4, var_F4, var_114)
  loc_EDF447:     arg_10 = &HFF
  loc_EDF454:     Set var_8C = Me.TxtMask
  loc_EDF45A:     Call 0.Method_TxtMask_UnknownEvent_80 (arg_C, var_90)
  loc_EDF471:     Exit Sub
  loc_EDF472:   End If
  loc_EDF472: End If
  loc_EDF472: Exit Sub
End Sub

Public Sub TxtMask_UnknownEvent_B(arg_C, arg_10, arg_14) 'F9D304
  'Data Table: 56D3A8
  Dim var_86 As Integer
  Dim var_9C As DataGrid
  Dim var_98 As Variant
  loc_F9D183: var_86 = arg_10
  loc_F9D190: If (CLng(arg_10) = &H1B) Then
  loc_F9D196:   Call Proc_169_87_E5D6C8(var_98)
  loc_F9D19E:   Exit Sub
  loc_F9D19F: End If
  loc_F9D1BB: If (CBool(Me.DGItem.Visible) = 0) Then
  loc_F9D1DC:   If (((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) And (arg_C <> CInt(&HC))) Then
  loc_F9D1E5:     Proc_6_75_E5335C(arg_10, arg_14)
  loc_F9D1EA:   End If
  loc_F9D1EE:   Set var_9C = Me.TopCtrl1
  loc_F9D1F4:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_F9D216:   If ((CStr() = "Add") And (arg_C <> CInt(3))) Then
  loc_F9D22E:     If ((CLng(arg_10) = &H26) Or (CLng(arg_10) = &HD)) Then
  loc_F9D237:       Proc_6_76_E533C8(arg_10)
  loc_F9D23C:     End If
  loc_F9D23F:   Else
  loc_F9D254:     If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_F9D25D:       Proc_6_75_E5335C(arg_10, arg_14)
  loc_F9D262:     End If
  loc_F9D262:   End If
  loc_F9D266:   Set var_9C = Me.TopCtrl1
  loc_F9D26C:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_14)
  loc_F9D28E:   If ((CStr() = "Edit") And (arg_C <> CInt(4))) Then
  loc_F9D2A6:     If ((CLng(arg_10) = &H26) Or (CLng(arg_10) = &HD)) Then
  loc_F9D2AF:       Proc_6_76_E533C8(arg_10)
  loc_F9D2B4:     End If
  loc_F9D2B7:   Else
  loc_F9D2CC:     If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_F9D2D5:       Proc_6_75_E5335C(arg_10, arg_14)
  loc_F9D2DA:     End If
  loc_F9D2DA:   End If
  loc_F9D2F8:   If (((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) And (arg_C = CInt(&HC))) Then
  loc_F9D2FE:     Call Proc_169_91_FEA948(arg_C)
  loc_F9D303:   End If
  loc_F9D303: End If
  loc_F9D303: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E39364
  'Data Table: 56D3A8
  loc_E39358: If (CBool(Me.DGNCType.Visible) = &HFF) Then
  loc_E3935B:   Call DGNCType_UnknownEvent_9()
  loc_E39360: End If
  loc_E39360: Exit Sub
End Sub

Private Sub DGNCType_UnknownEvent_9 'F5CCB0
  'Data Table: 56D3A8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5CB90: On Error Goto loc_F5CCAA
  loc_F5CBA2: Me.DGNCType.Visible = False
  loc_F5CBC1: If (Me.RecordCount > 0) Then
  loc_F5CC00:   Set var_B4 = Me.Txt
  loc_F5CC06:   Call 0.Method_DGNCType_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F5CC0E:   var_B8.Text = CStr(Me.Fields.Item("NCType").Value)
  loc_F5CC41:   var_B0 = Me.Fields.Item("NCPer")
  loc_F5CC60:   Set var_B4 = Me.Txt
  loc_F5CC66:   Call 0.Method_DGNCType_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F5CC6E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5CC84: End If
  loc_F5CC8F: Set var_A8 = Me.Txt
  loc_F5CC95: Call 0.Method_DGNCType_UnknownEvent_90 (CInt(&H11))
  loc_F5CC9D: var_B0.SetFocus
  loc_F5CCA9: Exit Sub
  loc_F5CCAA: ' Referenced from: F5CB90
  loc_F5CCAA: Proc_6_60_E63754(var_B0)
  loc_F5CCAF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1054CF4
  'Data Table: 56D3A8
  Dim var_8C As TextBox
  Dim var_A8 As Variant
  Dim var_AA As Integer
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  Dim var_A0 As Variant
  loc_1054A9A: Set var_88 = Me.Txt
  loc_1054AA0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1054AAE: Proc_6_74_E23240(var_8C)
  loc_1054ABD: Call Proc_169_87_E5D6C8(var_A0)
  loc_1054AD4: Set var_88 = Me.Txt
  loc_1054ADA: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1054AE2: var_8C.SelStart = 0
  loc_1054AFB: Set var_88 = Me.Txt
  loc_1054B01: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1054B09: var_A4 = var_8C.Text
  loc_1054B1C: Set var_90 = Me.Txt
  loc_1054B22: Call 0.Method_Txt_GotFocus0 (Index, var_A8)
  loc_1054B2A: var_A8.SelLength = Len(var_A4)
  loc_1054B40: var_AA = Index
  loc_1054B4B: If (var_AA = CInt(&H11)) Then
  loc_1054B65:   If (Me.RecordCount > 0) Then
  loc_1054B73:     Set var_8C = Me.FGPoint
  loc_1054B8B:     Proc_6_137_1192FDC(Me.DGNCType, global_136, Index)
  loc_1054B99:   End If
  loc_1054BE7:   Set var_88 = Me.Txt
  loc_1054BED:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1054BF5:   var_8C = var_8C.Text
  loc_1054C0D:   If (var_AA Or (var_A4 = vbNullString)) Then
  loc_1054C10:     Exit Sub
  loc_1054C11:   End If
  loc_1054C1E:   Set var_88 = Me.Txt
  loc_1054C24:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1054C2C:   var_A4 = var_8C.Text
  loc_1054C34:   var_D4 = CVar(var_A4) 'String
  loc_1054C79:   If CBool(var_D4 <> Me.Fields.Item("NCType").Value) Then
  loc_1054C82:     Me.MoveFirst
  loc_1054CA7:     Set var_88 = Me.Txt
  loc_1054CAD:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A4, "NCType =")
  loc_1054CB5:     0 = var_8C.Text
  loc_1054CC3:     Proc_6_17_EAAE40(var_D4, CVar(var_A4), 1)
  loc_1054CD9:     Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1054CF1:   End If
  loc_1054CF1: End If
  loc_1054CF1: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11568C8
  'Data Table: 56D3A8
  Dim var_86 As Integer
  Dim var_9A As Integer
  Dim Me As Recordset15
  Dim var_A0 As DataGrid
  Dim var_98 As Variant
  Dim var_A4 As DataGrid
  Dim var_DE As Integer
  Dim var_182 As Boolean
  loc_115652B: var_86 = Shift
  loc_1156538: If (CLng(Shift) = &H1B) Then
  loc_115653E:   Call Proc_169_87_E5D6C8(var_98)
  loc_1156546:   Exit Sub
  loc_1156547: End If
  loc_115654A: var_9A = KeyCode
  loc_1156555: If (var_9A = CInt(&H11)) Then
  loc_1156575:   Set var_B4 = Me.FGPoint
  loc_1156580:   Set var_B0 = Nothing
  loc_11565B2:   Proc_6_69_134A630(Me.DGNCType, Me.Txt, CInt(&H11), global_136, Shift, 0)
  loc_1156621:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1156628:     Set var_B0 = Me.DGNCType
  loc_1156647:     Proc_6_138_106E830(var_B0, global_136, KeyCode, Me.FGPoint, 0)
  loc_1156655:   End If
  loc_1156655: End If
  loc_115666F: Set var_A4 = Me.DGNCType
  loc_1156690: If ((CBool(Me.DGItem.Visible) = 0) And (CBool(var_A4.Visible) = 0)) Then
  loc_11566B1:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HF))) Then
  loc_11566BA:     Proc_6_75_E5335C(Shift, arg_14, var_B0, var_B4)
  loc_11566BF:   End If
  loc_11566C3:   Set var_A0 = Me.TopCtrl1
  loc_11566C9:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_11566EB:   If ((CStr(var_9A) = "Add") And (KeyCode <> CInt(3))) Then
  loc_1156703:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_115670C:       Proc_6_76_E533C8(Shift, arg_14)
  loc_1156714:     Else
  loc_1156732:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HF))) Then
  loc_115673B:         Proc_6_75_E5335C(Shift, arg_14)
  loc_1156740:       End If
  loc_1156740:     End If
  loc_1156740:   End If
  loc_1156744:   Set var_A0 = Me.TopCtrl1
  loc_115674A:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_115676C:   If ((CStr() = "Edit") And (KeyCode <> CInt(4))) Then
  loc_1156784:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_115678D:       Proc_6_76_E533C8(Shift)
  loc_1156795:     Else
  loc_11567B3:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HF))) Then
  loc_11567BC:         Proc_6_75_E5335C(Shift, arg_14)
  loc_11567C1:       End If
  loc_11567C1:     End If
  loc_11567C1:   End If
  loc_11567DF:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HF))) Then
  loc_11567E5:     Call Proc_169_91_FEA948(KeyCode)
  loc_11567EA:   End If
  loc_11567EA: End If
  loc_11567ED: var_DE = KeyCode
  loc_11567F8: If Not (var_DE = CInt(9)) Then
  loc_1156803:   If Not (var_DE = CInt(&HA)) Then
  loc_115680E:     If Not (var_DE = CInt(6)) Then
  loc_1156819:       If Not (var_DE = CInt(&HC)) Then
  loc_1156824:         If (var_DE = CInt(&HF)) Then
  loc_1156827:         End If
  loc_1156827:       End If
  loc_1156827:     End If
  loc_1156827:   End If
  loc_1156831:   Set var_A0 = Me.Txt
  loc_1156837:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_1156852:   Proc_6_41_FA1734(var_A4, Shift, 8)
  loc_1156861: Else
  loc_1156869:   If Not (var_DE = CInt(7)) Then
  loc_1156874:     If Not (var_DE = CInt(8)) Then
  loc_115687F:       If Not (var_DE = CInt(&HD)) Then
  loc_115688A:         If (var_DE = CInt(&HE)) Then
  loc_115688D:         End If
  loc_115688D:       End If
  loc_115688D:     End If
  loc_1156897:     Set var_A0 = Me.Txt
  loc_115689D:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, 2)
  loc_11568B8:     Proc_6_41_FA1734(var_A4, Shift, 2)
  loc_11568C4:   End If
  loc_11568C4: End If
  loc_11568C4: Exit Sub
  loc_11568C5: var_182 = True
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'ED352C
  'Data Table: 56D3A8
  loc_ED3480: On Error Goto loc_ED3526
  loc_ED3486: Proc_6_58_E06050(arg_10)
  loc_ED3499: If (KeyAscii = CInt(&H11)) Then
  loc_ED34B8:   If (CBool(Me.DGNCType.Visible) = &HFF) Then
  loc_ED34CA:     var_A0 = "NCType"
  loc_ED34E5:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_136, arg_10)
  loc_ED3517:     Proc_6_138_106E830(Me.DGNCType, global_136, KeyAscii, Me.FGPoint)
  loc_ED3525:   End If
  loc_ED3525: End If
  loc_ED3525: Exit Sub
  loc_ED3526: ' Referenced from: ED3480
  loc_ED3526: Proc_6_60_E63754(var_A0, 0)
  loc_ED352B: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49B1C
  'Data Table: 56D3A8
  loc_E49AFA: Set var_88 = Me.Txt
  loc_E49B00: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49B0E: Proc_6_73_E23294(var_8C)
  loc_E49B1A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12CF824
  'Data Table: 56D3A8
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim var_9C As String
  Dim var_F8 As TextBox
  Dim var_F4 As Variant
  Dim var_F0 As TextBox
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Fields15
  loc_12CF1B0: On Error Goto loc_12CF81E
  loc_12CF1B6: var_8E = Cancel
  loc_12CF1C1: If (var_8E = CInt(0)) Then
  loc_12CF1C4:   GoTo loc_12CF815
  loc_12CF1C7: End If
  loc_12CF1CF: If (var_8E = CInt(3)) Then
  loc_12CF1E0:   Set var_94 = Me.Txt
  loc_12CF1E6:   Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_12CF21E:   If (Len(Trim(CVar(var_98.Text))) = 0) Then
  loc_12CF234:     Set var_94 = Me.Txt
  loc_12CF23A:     Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_12CF242:     var_98.Text = CStr(MemVar_1F950EC)
  loc_12CF254:   Else
  loc_12CF25E:     Set var_94 = Me.Txt
  loc_12CF264:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12CF284:     Set var_F4 = Me.Txt
  loc_12CF28A:     Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_12CF292:     var_F8.Text = Proc_6_33_15125B8(var_98)
  loc_12CF2A5:   End If
  loc_12CF2B0:   Set var_94 = Me.Txt
  loc_12CF2B6:   Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_12CF2DF:   If (Trim(CVar(var_98)) = vbNullString) Then
  loc_12CF2F0:     Set var_94 = Me.Txt
  loc_12CF2F6:     Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_12CF311:     Set var_F0 = Me.Txt
  loc_12CF317:     Call 0.Method_Txt_Validate0 (CInt(4), var_F4)
  loc_12CF31F:     var_F4.Text = var_98.Text
  loc_12CF36D:     Set var_94 = Me.TxtMask
  loc_12CF373:     Call 0.Method_Txt_Validate0 (CInt(1), var_98, CVar(CStr(Format(Time, "hh:mm"))))
  loc_12CF37B:     var_98.defaultText = 1
  loc_12CF392:   End If
  loc_12CF396:   Set var_94 = Me.TopCtrl1
  loc_12CF39C:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_12CF3A4:   var_9C = CStr(var_8E)
  loc_12CF3BA:   Set var_98 = Me.Txt
  loc_12CF3C0:   Call 0.Method_Txt_Validate0 (CInt(0), var_F0)
  loc_12CF3E9:   If ((var_9C = "Add") And (var_F0.Text = vbNullString)) Then
  loc_12CF3F2:     Call Proc_169_92_1184B18(MemVar_1F95044)
  loc_12CF405:     Set var_94 = Me.Txt
  loc_12CF40B:     Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_12CF413:     var_98.Text = var_9C
  loc_12CF422:   End If
  loc_12CF425: Else
  loc_12CF42D:   If (var_8E = CInt(4)) Then
  loc_12CF43A:     Set var_94 = Me.Txt
  loc_12CF440:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12CF460:     Set var_F4 = Me.Txt
  loc_12CF466:     Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_12CF46E:     var_F8.Text = Proc_6_33_15125B8(var_98)
  loc_12CF48C:     Set var_94 = Me.Txt
  loc_12CF492:     Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_12CF49A:     var_9C = "Delivery Date"
  loc_12CF4BB:     If (Proc_6_27_EA61EC(var_98, var_9C) = 0) Then
  loc_12CF4C9:       Set var_94 = Me.Txt
  loc_12CF4CF:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_12CF4D7:       var_98.SetFocus
  loc_12CF4E5:       arg_10 = &HFF
  loc_12CF4E8:       Exit Sub
  loc_12CF4E9:     End If
  loc_12CF4EC:   Else
  loc_12CF4F4:     If (var_8E = CInt(1)) Then
  loc_12CF502:       Set var_94 = Me.Txt
  loc_12CF508:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_12CF531:       If (Trim(CVar(var_98)) = vbNullString) Then
  loc_12CF534:         Call CmdCustDetails_Click()
  loc_12CF539:       End If
  loc_12CF544:       Set var_94 = Me.Txt
  loc_12CF54A:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_12CF573:       If (Trim(CVar(var_98)) = vbNullString) Then
  loc_12CF584:         Set var_94 = Me.Txt
  loc_12CF58A:         Call 0.Method_Txt_Validate0 (CInt(3), var_98, var_9C)
  loc_12CF592:         arg_10 = var_98.Text
  loc_12CF5A5:         Set var_F0 = Me.Txt
  loc_12CF5AB:         Call 0.Method_Txt_Validate0 (CInt(4), var_F4)
  loc_12CF5B3:         var_F4.Text = var_9C
  loc_12CF5D1:         Set var_94 = Me.TxtMask
  loc_12CF5D7:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_12CF5F6:         Set var_F0 = Me.TxtMask
  loc_12CF5FC:         Call 0.Method_Txt_Validate0 (CInt(1), var_F4)
  loc_12CF604:         var_F4.defaultText = CVar(CStr(var_98.defaultText))
  loc_12CF61B:       End If
  loc_12CF61E:     Else
  loc_12CF626:       If (var_8E = CInt(&H11)) Then
  loc_12CF633:         Set var_94 = Me.Txt
  loc_12CF639:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12CF641:         var_9C = "NC Category"
  loc_12CF662:         If (Proc_6_27_EA61EC(var_98, var_9C) = 0) Then
  loc_12CF66F:           Set var_94 = Me.Txt
  loc_12CF675:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12CF67D:           var_98.SetFocus
  loc_12CF68B:           arg_10 = &HFF
  loc_12CF68E:           Exit Sub
  loc_12CF68F:         End If
  loc_12CF6DD:         Set var_94 = Me.Txt
  loc_12CF6E3:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_12CF6EB:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_12CF703:         If (arg_10 Or (var_9C = vbNullString)) Then
  loc_12CF713:           Set var_94 = Me.Txt
  loc_12CF719:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12CF721:           var_98.Text = vbNullString
  loc_12CF73A:           Set var_94 = Me.Txt
  loc_12CF740:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12CF748:           var_98.Tag = vbNullString
  loc_12CF757:         Else
  loc_12CF792:           Set var_F0 = Me.Txt
  loc_12CF798:           Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_12CF7A0:           var_F4.Text = CStr(Me.Fields.Item("NCType").Value)
  loc_12CF7E4:           var_9C = CStr(Me.Fields.Item("NCPer").Value)
  loc_12CF7F1:           Set var_F0 = Me.Txt
  loc_12CF7F7:           Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_12CF7FF:           var_F4.Tag = var_9C
  loc_12CF815:         End If
  loc_12CF815:       End If
  loc_12CF815:     End If
  loc_12CF815:   End If
  loc_12CF815:   ' Referenced from: 12CF1C4
  loc_12CF815: End If
  loc_12CF81A: Set var_88 = Nothing
  loc_12CF81D: Exit Sub
  loc_12CF81E: ' Referenced from: 12CF1B0
  loc_12CF81E: Proc_6_60_E63754(var_9C)
  loc_12CF823: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '121AC90
  'Data Table: 56D3A8
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_94 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  Dim var_124 As Variant
  loc_121A7BB: Call Proc_169_87_E5D6C8(var_94)
  loc_121A7CF: If (Index = 0) Then
  loc_121A7E8:   Me.FGrid.CellBackColor = CVar(CLng(global_68))
  loc_121A803:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121A842:   Set var_108 = Me.TxtGrid
  loc_121A848:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_121A850:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_121A881:   var_114 = CLng(Me.FGrid.Col)
  loc_121A891:   If (var_114 = CLng(2)) Then
  loc_121A89A:     var_A8 = "MultiBillGeneration"
  loc_121A8B1:     var_C0 = Me.Fields.Item(var_A8)
  loc_121A8ED:     var_124 = (var_C0.Value = "Yes") And (global_104 = "Yes") And (global_108 = "N")
  loc_121A907:     If CBool(Not var_124) Then
  loc_121A925:       Me.Filter = CVar("OutletCode='" & global_52 & "'")
  loc_121A930:     End If
  loc_121A93E:     Set var_BC = Me.TxtGrid
  loc_121A944:     Call 0.Method_TxtGrid_GotFocus0 (0, var_C0, 4)
  loc_121A94C:     var_C0.MaxLength = var_114
  loc_121A95B:   Else
  loc_121A962:     If (var_114 = CLng(3)) Then
  loc_121A973:       Set var_BC = Me.TxtGrid
  loc_121A979:       Call 0.Method_TxtGrid_GotFocus0 (0, var_C0, &H23)
  loc_121A981:       var_C0.MaxLength = var_A8
  loc_121A9A0:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121A9A8:       var_E0 = CVar(CLng(1)) 'Long
  loc_121A9C8:       global_76 = CStr(Me.FGrid.TextMatrix))
  loc_121A9F4:       If (Me.RecordCount > 0) Then
  loc_121AA1A:         Proc_6_137_1192FDC(Me.DGItem, global_100, Index, Me.FGPoint)
  loc_121AA28:       End If
  loc_121AA69:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_121AA6C:         Exit Sub
  loc_121AA6D:       End If
  loc_121AA80:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121AA88:       var_E0 = CVar(CLng(3)) 'Long
  loc_121AABB:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_121AAC4:         Me.MoveFirst
  loc_121AADC:         var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121AAE4:         var_E0 = CVar(CLng(1)) 'Long
  loc_121AAED:         Set var_C0 = Me.FGrid
  loc_121AB04:         Proc_6_17_EAAE40(var_124, CVar(CStr(var_C0.TextMatrix))), var_E0, var_A8, var_E0)
  loc_121AB2D:         Me.Find CStr("Code =" & var_124), 0, 1
  loc_121AB5D:         If (Me.EOF = &HFF) Then
  loc_121AB66:           Me.MoveFirst
  loc_121AB6B:         End If
  loc_121AB74:         CVarUnk
  loc_121AB79:         VerifyVarObj
  loc_121AB7F:         Set var_BC = Me.DGItem
  loc_121AB85:         LateIdStAd
  loc_121AB93:       End If
  loc_121AB96:     Else
  loc_121AB9D:       If (var_114 = CLng(5)) Then
  loc_121ABB5:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, &H4B, Me.TxtGrid, global_100)
  loc_121ABBD:         var_C0.MaxLength = var_15C
  loc_121ABCC:       Else
  loc_121ABD3:         If (var_114 = CLng(6)) Then
  loc_121ABE5:           Set var_BC = Me.TxtGrid
  loc_121ABEB:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, &HA, var_A8)
  loc_121ABF3:           var_C0.MaxLength = var_E0
  loc_121AC02:         Else
  loc_121AC09:           If (var_114 = CLng(7)) Then
  loc_121AC1B:             Set var_BC = Me.TxtGrid
  loc_121AC21:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, &HA)
  loc_121AC29:             var_C0.MaxLength = var_A8
  loc_121AC3E:             If (global_72 = 0) Then
  loc_121AC49:               var_110 = "{Home}+{End}"
  loc_121AC4F:               Proc_303_0_FBACC8(CStr("Code =" & var_124), 0)
  loc_121AC57:             End If
  loc_121AC5A:           Else
  loc_121AC61:             If (var_114 = CLng(&HA)) Then
  loc_121AC73:               Set var_BC = Me.TxtGrid
  loc_121AC79:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_121AC81:               var_C0.MaxLength = 3
  loc_121AC8D:             End If
  loc_121AC8D:           End If
  loc_121AC8D:         End If
  loc_121AC8D:       End If
  loc_121AC8D:     End If
  loc_121AC8D:   End If
  loc_121AC8D: End If
  loc_121AC8D: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13512F4
  'Data Table: 56D3A8
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As Variant
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_98 As DataGrid
  Dim var_100 As Variant
  Dim Shift As Integer
  Dim var_94 As String
  loc_1350AF7: var_86 = Shift
  loc_1350B06: If (KeyCode = 0) Then
  loc_1350B13:   If (CLng(Shift) = &H1B) Then
  loc_1350B23:     Set var_8C = Me.TxtGrid
  loc_1350B29:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_1350B31:     var_88 = var_90.Tag
  loc_1350B43:     Set var_98 = Me.TxtGrid
  loc_1350B49:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1350B51:     var_9C.Text = var_94
  loc_1350B6D:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1350B75:     Call Proc_169_87_E5D6C8(var_AC, arg_14)
  loc_1350B81:     Set var_8C = Me.FGrid
  loc_1350B9E:     Set var_8C = Me.TxtGrid
  loc_1350BA4:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1350BAC:     var_90.Visible = FGrid.DispID_8001
  loc_1350BB8:     Exit Sub
  loc_1350BB9:   End If
  loc_1350BDC:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_1350BFC:     Set var_9C = Me.FGPoint
  loc_1350C07:     Set var_98 = Nothing
  loc_1350C35:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_100, Shift, &HFF)
  loc_1350C54:     var_C8 = Me.RecordCount
  loc_1350CA4:     If ((var_C8 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1350CAB:       Set var_98 = Me.DGItem
  loc_1350CCA:       Proc_6_138_106E830(var_98, global_100, KeyCode, Me.FGPoint, 1)
  loc_1350CE1:       var_B2 = Me.BOF
  loc_1350D01:       If ((var_B2 = &HFF) Or (Me.EOF = &HFF)) Then
  loc_1350D0A:         Me.MoveFirst
  loc_1350D0F:       End If
  loc_1350D2C:       var_90 = Me.Fields.Item("Code")
  loc_1350D41:       Call Proc_169_96_11D7724(CStr(var_90.Value), var_98, var_9C)
  loc_1350D53:     End If
  loc_1350D60:     Set var_98 = Me.TxtGrid
  loc_1350D66:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_DC)
  loc_1350D6E:     0 = var_9C.Height
  loc_1350D80:     Set var_8C = Me.TxtGrid
  loc_1350D86:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_1350D8E:     var_B0 = var_90.Top
  loc_1350D9A:     var_D8 = CVar((var_C8 + var_DC)) 'Single
  loc_1350DA9:     Me.DGItem.Top = "Code"
  loc_1350DC8:     Set var_8C = Me.TxtGrid
  loc_1350DCE:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1350DED:     Me.DGItem.Left = CVar(var_90.Left)
  loc_1350E05:     If (CLng(Shift) = &HD) Then
  loc_1350E0E:       Call Proc_169_90_187AC64(KeyCode, var_B2)
  loc_1350E19:       If (var_B2 = &HFF) Then
  loc_1350E66:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72)
  loc_1350ED3:         If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1350EE4:           Proc_303_0_FBACC8("{Tab}", 0, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), CByte((CInt(9) + 1)))
  loc_1350EEE:           Shift = 0
  loc_1350EF1:         End If
  loc_1350EF1:       End If
  loc_1350EF1:     End If
  loc_1350EF4:   Else
  loc_1350EFB:     If (var_B0 = CLng(5)) Then
  loc_1350F3E:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_1350F47:         Call Proc_169_90_187AC64(KeyCode, var_B2, Shift, 5)
  loc_1350F52:         If (var_B2 = &HFF) Then
  loc_1350F9F:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, CByte((CInt(9) + 1)))
  loc_1350FAF:         End If
  loc_1350FAF:       End If
  loc_1350FB2:     Else
  loc_1350FB9:       If (var_B0 = CLng(6)) Then
  loc_1350FFC:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_1351005:           Call Proc_169_90_187AC64(KeyCode, var_B2, 0, 0)
  loc_1351010:           If (var_B2 = &HFF) Then
  loc_135105D:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, 9, CByte((CInt(9) + 1)))
  loc_135106D:           End If
  loc_135106D:         End If
  loc_1351070:       Else
  loc_1351077:         If (var_B0 = CLng(7)) Then
  loc_13510BA:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_13510C3:             Call Proc_169_90_187AC64(KeyCode, var_B2, 0, 0)
  loc_13510CE:             If (var_B2 = &HFF) Then
  loc_135111B:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, 9, CByte((CInt(9) + 1)))
  loc_135112B:             End If
  loc_135112B:           End If
  loc_135112E:         Else
  loc_1351135:           If (var_B0 = CLng(2)) Then
  loc_1351142:             If (CLng(Shift) = &HD) Then
  loc_135114B:               Call Proc_169_90_187AC64(KeyCode, var_B2, 0, 0)
  loc_1351156:               If (var_B2 = &HFF) Then
  loc_13511A3:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, CByte((CInt(6) + 1)), 0)
  loc_13511C6:                 var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13511CE:                 var_100 = CVar(CLng(2)) 'Long
  loc_1351201:                 If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1351216:                   Me.FGrid.Col = CVar(CLng(3))
  loc_1351221:                 Else
  loc_1351224:                   var_D8 = CVar(CLng(5)) 'Long
  loc_1351233:                   Me.FGrid.Col = var_D8
  loc_135123B:                 End If
  loc_135123B:               End If
  loc_135123B:             End If
  loc_135123E:           Else
  loc_1351245:             If (var_B0 = CLng(&HA)) Then
  loc_1351288:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_1351291:                 Call Proc_169_90_187AC64(KeyCode, var_B2, var_100, var_D8, 0)
  loc_135129C:                 If (var_B2 = &HFF) Then
  loc_13512E2:                   Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, &HA, 0)
  loc_13512F2:                 End If
  loc_13512F2:               End If
  loc_13512F2:             End If
  loc_13512F2:           End If
  loc_13512F2:         End If
  loc_13512F2:       End If
  loc_13512F2:     End If
  loc_13512F2:   End If
  loc_13512F2: End If
  loc_13512F2: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '109C940
  'Data Table: 56D3A8
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_A4 As String
  loc_109C683: Proc_6_58_E06050(arg_10)
  loc_109C694: If (KeyAscii = 0) Then
  loc_109C6AA:   var_A0 = CLng(Me.FGrid.Col)
  loc_109C6BA:   If (var_A0 = CLng(3)) Then
  loc_109C6D9:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_109C706:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_100, arg_10)
  loc_109C738:       Proc_6_138_106E830(Me.DGItem, global_100, KeyAscii, Me.FGPoint)
  loc_109C778:       Call Proc_169_96_11D7724(CStr(Me.Fields.Item("Code").Value), "Name", 0)
  loc_109C78A:     End If
  loc_109C78D:   Else
  loc_109C794:     If (var_A0 = CLng(2)) Then
  loc_109C7B2:       If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_109C7C7:         Me.FGrid.Col = CVar(CLng(3))
  loc_109C7EB:         If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_109C7FD:           var_A4 = "Name"
  loc_109C818:           Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_100, arg_10)
  loc_109C827:         End If
  loc_109C827:       End If
  loc_109C82A:     Else
  loc_109C831:       If (var_A0 = CLng(6)) Then
  loc_109C858:         Set var_AC = Me.FGrid
  loc_109C869:         var_A4 = CStr(var_AC.TextMatrix))
  loc_109C887:         If (CDbl(Val(var_A4)) = CDbl(0)) Then
  loc_109C894:           Set var_8C = Me.TxtGrid
  loc_109C89A:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, CVar(CLng(&H1F)), CVar(CLng(Me.FGrid.Row)))
  loc_109C8B5:           Proc_6_42_129B55C(var_AC, arg_10, 7, 3)
  loc_109C8C4:         Else
  loc_109C8CE:           Set var_8C = Me.TxtGrid
  loc_109C8D4:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_109C8EF:           Proc_6_42_129B55C(var_AC, arg_10, 7, 0)
  loc_109C8FB:         End If
  loc_109C8FE:       Else
  loc_109C905:         If (var_A0 = CLng(7)) Then
  loc_109C912:           Set var_8C = Me.TxtGrid
  loc_109C918:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_109C933:           Proc_6_42_129B55C(var_AC, arg_10, 8)
  loc_109C93F:         End If
  loc_109C93F:       End If
  loc_109C93F:     End If
  loc_109C93F:   End If
  loc_109C93F: End If
  loc_109C93F: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1099BDC
  'Data Table: 56D3A8
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B0 As MSHFlexGrid
  Dim var_AC As TextBox
  Dim var_100 As Variant
  loc_1099934: On Error Goto loc_1099BD4
  loc_109993A: var_86 = KeyCode
  loc_1099943: If (var_86 = 0) Then
  loc_1099959:   var_A0 = CLng(Me.FGrid.Col)
  loc_1099969:   If (var_A0 = CLng(3)) Then
  loc_109998F:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_10999A0:       Call TxtGrid_KeyDown(KeyCode, global_74)
  loc_10999A5:     End If
  loc_10999A9:     Set var_AC = Me.TxtGrid
  loc_10999B4:     var_A8 = "Name"
  loc_10999CF:     Proc_6_89_1470B00(var_AC, KeyCode, global_100, Shift, var_A8)
  loc_10999E1:   Else
  loc_10999E8:     If (var_A0 = CLng(6)) Then
  loc_1099A18:       Set var_8C = Me.TxtGrid
  loc_1099A1E:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)))
  loc_1099A26:       &HFF = var_AC.Text
  loc_1099A35:       var_100 = CVar(CStr(Val(var_A8))) 'String
  loc_1099A3D:       Set var_114 = Me.FGrid
  loc_1099A43:       LateIdCallSt
  loc_1099A63:     Else
  loc_1099A6A:       If (var_A0 = CLng(&HA)) Then
  loc_1099A77:         Set var_B0 = Me.TxtGrid
  loc_1099A7D:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_114, var_114, var_100)
  loc_1099A8F:         Set var_8C = Me.TxtGrid
  loc_1099A95:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8)
  loc_1099A9D:         0 = var_AC.Text
  loc_1099B00:         If CBool((Len(var_A8) = 0) Or (Ucase(Mid(CVar(var_114), 1, 1)) = "Y")) Then
  loc_1099B10:           Set var_8C = Me.TxtGrid
  loc_1099B16:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, "Yes")
  loc_1099B1E:           var_AC.Text = var_A0
  loc_1099B2D:         Else
  loc_1099B37:           Set var_8C = Me.TxtGrid
  loc_1099B3D:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_1099B7F:           If (Ucase(Mid(CVar(var_AC), 1, 1)) = "N") Then
  loc_1099B8F:             Set var_8C = Me.TxtGrid
  loc_1099B95:             Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_1099B9D:             var_AC.Text = "No"
  loc_1099BAC:           Else
  loc_1099BB9:             Set var_8C = Me.TxtGrid
  loc_1099BBF:             Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_1099BC7:             var_AC.Text = "Yes"
  loc_1099BD3:           End If
  loc_1099BD3:         End If
  loc_1099BD3:       End If
  loc_1099BD3:     End If
  loc_1099BD3:   End If
  loc_1099BD3: End If
  loc_1099BD3: Exit Sub
  loc_1099BD4: ' Referenced from: 1099934
  loc_1099BD4: Proc_6_60_E63754(var_86)
  loc_1099BD9: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E24350
  'Data Table: 56D3A8
  Dim arg_10 As Integer
  loc_E24338: If (Cancel = 0) Then
  loc_E24341:   Call Proc_169_90_187AC64(Cancel, var_88)
  loc_E2434A:   arg_10 = Not(var_88)
  loc_E2434D: End If
  loc_E2434D: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A4C84
  'Data Table: 56D3A8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_10A49CF: Me.DGItem.Visible = False
  loc_10A49EE: If (Me.RecordCount > 0) Then
  loc_10A4A2B:   Set var_B4 = Me.TxtGrid
  loc_10A4A31:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A4A39:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10A4A62:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A4A6A:   var_EC = CVar(CLng(3)) 'Long
  loc_10A4A9D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A4AA5:   Set var_B8 = Me.FGrid
  loc_10A4AAB:   LateIdCallSt
  loc_10A4ADA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A4AE2:   var_EC = CVar(CLng(1)) 'Long
  loc_10A4B15:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A4B1D:   Set var_B8 = Me.FGrid
  loc_10A4B23:   LateIdCallSt
  loc_10A4B52:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A4B5A:   var_EC = CVar(CLng(2)) 'Long
  loc_10A4B8D:   var_11C = CVar(CStr(Me.Fields.Item("DisplayCode").Value)) 'String
  loc_10A4B95:   Set var_B8 = Me.FGrid
  loc_10A4B9B:   LateIdCallSt
  loc_10A4BCA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A4BD2:   var_EC = CVar(CLng(0)) 'Long
  loc_10A4BF4:   var_B0 = Me.Fields.Item("SNo")
  loc_10A4C05:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_10A4C0D:   Set var_B8 = Me.FGrid
  loc_10A4C13:   LateIdCallSt
  loc_10A4C2F: End If
  loc_10A4C3B: Set var_A8 = Me.TxtGrid
  loc_10A4C41: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC, var_A4)
  loc_10A4C49: var_B8 = var_B0.Visible
  loc_10A4C5B: If (var_12E = &HFF) Then
  loc_10A4C67:   Set var_A8 = Me.TxtGrid
  loc_10A4C6D:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_11C, var_EC)
  loc_10A4C75:   var_B0.SetFocus
  loc_10A4C81: End If
  loc_10A4C81: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'EDFE28
  'Data Table: 56D3A8
  Dim var_8C As TextBox
  Dim var_A8 As TextBox
  loc_EDFD82: Set var_88 = Me.TxtPer
  loc_EDFD88: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_EDFD96: Proc_6_74_E23240(var_8C)
  loc_EDFDA5: Call Proc_169_87_E5D6C8(var_A0)
  loc_EDFDBC: Set var_88 = Me.TxtPer
  loc_EDFDC2: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_EDFDCA: var_8C.SelStart = 0
  loc_EDFDE3: Set var_88 = Me.TxtPer
  loc_EDFDE9: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_EDFE04: Set var_90 = Me.TxtPer
  loc_EDFE0A: Call 0.Method_TxtPer_GotFocus0 (Index, var_A8)
  loc_EDFE12: var_A8.SelLength = Len(var_8C.Text)
  loc_EDFE25: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A180
  'Data Table: 56D3A8
  loc_E5A14D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5A156:   Proc_6_75_E5335C(Shift)
  loc_E5A15B: End If
  loc_E5A170: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5A179:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5A17E: End If
  loc_E5A17E: Exit Sub
  loc_E5A17F: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E6619C
  'Data Table: 56D3A8
  Dim arg_10 As Integer
  loc_E6615E: Set var_88 = Me.TxtPer
  loc_E66164: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E6617F: Proc_6_42_129B55C(var_8C, arg_10, 2)
  loc_E66191: If (arg_10 = &H2D) Then
  loc_E66196:   arg_10 = 0
  loc_E66199: End If
  loc_E66199: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E013D8
  'Data Table: 56D3A8
  loc_E013D2: Call Proc_169_70_190E6A8(KeyCode)
  loc_E013D7: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E49024
  'Data Table: 56D3A8
  loc_E49002: Set var_88 = Me.TxtPer
  loc_E49008: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E49016: Proc_6_73_E23294(var_8C)
  loc_E49022: Exit Sub
End Sub

Public Function global_52Get() '56F53C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '56F54B
  global_52 = Value
End Sub

Public Property Let PTableNo(vNewValue) 'E118D4
  'Data Table: 56D3A8
  loc_E118CC: global_172 = vNewValue
  loc_E118D0: Exit Sub
End Sub

Public Property Get PTableNo() 'E0E2D4
  'Data Table: 56D3A8
  loc_E0E2C8: var_88 = global_172
  loc_E0E2CB: PTableNo = 
  loc_E0E2D1: StAryRecCopy
End Sub

Public Property Let pRestCode(vNewValue) 'E10D4C
  'Data Table: 56D3A8
  loc_E10D44: global_176 = vNewValue
  loc_E10D48: Exit Sub
End Sub

Public Property Get pRestCode() 'E0DE54
  'Data Table: 56D3A8
  loc_E0DE48: var_88 = global_176
  loc_E0DE4B: pRestCode = 
End Sub

Public Property Get OpenMode() 'E06D50
  'Data Table: 56D3A8
  loc_E06D49: OpenMode = global_168
End Sub

Public Property Let OpenMode(vNewValue) 'E01EA0
  'Data Table: 56D3A8
  loc_E01E9D: Exit Sub
  loc_E01E9E: Set arg_3078 = vNewValue
End Sub

Public Property Get oVType() 'E10AC4
  'Data Table: 56D3A8
  loc_E10AB8: var_88 = global_164
  loc_E10ABB: oVType = 
End Sub

Public Property Let oVType(vNewValue) 'E1071C
  'Data Table: 56D3A8
  loc_E10714: global_164 = vNewValue
  loc_E10718: Exit Sub
End Sub

Public Sub UpdateDetail() 'E77E18
  'Data Table: 56D3A8
  Dim var_8C As TextBox
  Dim var_94 As TextBox
  loc_E77DD2: Set var_88 = Me.TxtCust
  loc_E77DD8: Call 0.Method_UpdateDetail0 (CInt(1), var_8C)
  loc_E77DF3: Set var_90 = Me.Txt
  loc_E77DF9: Call 0.Method_UpdateDetail0 (CInt(1), var_94)
  loc_E77E01: var_94.Text = var_8C.Text
  loc_E77E14: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E95760
  'Data Table: 56D3A8
  Dim Me As Recordset15
  loc_E956EE: On Error Goto loc_E95757
  loc_E956F7: Me.MoveFirst
  loc_E95721: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95749: Proc_5_0_1107AD0(&HFF, Me, global_56)
  loc_E95751: Call Proc_169_93_18AA338(0)
  loc_E95756: Exit Sub
  loc_E95757: ' Referenced from: E956EE
  loc_E95757: Proc_6_60_E63754(var_A0)
  loc_E9575C: Exit Sub
End Sub

Public Sub Proc_169_69_1B19AA4(arg_C) '1B19AA4
  'Data Table: 56D3A8
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_E8 As Variant
  Dim var_BC As String
  Dim unk_56D3B3 As Connection15
  Dim var_90 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_15C As Variant
  Dim var_1BC As Integer
  Dim var_180 As String
  Dim var_1A8 As Variant
  Dim var_1AC As Variant
  Dim var_1C0 As Variant
  Dim var_250 As Variant
  Dim var_88 As Recordset15
  Dim var_288 As Variant
  Dim var_FC As Variant
  Dim var_298 As TextBox
  Dim var_A8 As Variant
  Dim var_278 As Label
  loc_1B153B4: Set var_90 = Me.TxtGt
  loc_1B153BA: Call 0.Method_Proc_169_69_1B19AA40 (1, var_94)
  loc_1B153C2: var_96 = var_94.TabIndex
  loc_1B153CA: var_8A = var_96
  loc_1B153D8: Set var_90 = Me.TopCtrl1
  loc_1B153DE: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8A)
  loc_1B153F7: If (CStr() = "Add") Then
  loc_1B15406:   Set var_90 = Me.TxtPer
  loc_1B1540C:   Call 0.Method_Proc_169_69_1B19AA4C (var_96, var_8C)
  loc_1B15417:   For var_B0 =  To var_96: 1 = var_B0 'Integer
  loc_1B15429:     Set var_90 = Me.TxtPer
  loc_1B1542F:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B15437:     var_94.Visible = False
  loc_1B15446:   Next var_B0 'Integer
  loc_1B15457:   Set var_90 = Me.TxtGt
  loc_1B1545D:   Call 0.Method_Proc_169_69_1B19AA4C (var_96, var_8C)
  loc_1B15468:   For var_B4 =  To var_96: 1 = var_B4 'Integer
  loc_1B1547A:     Set var_90 = Me.TxtGt
  loc_1B15480:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B15488:     var_94.Visible = False
  loc_1B15497:   Next var_B4 'Integer
  loc_1B154A8:   Set var_90 = Me.LblCap
  loc_1B154AE:   Call 0.Method_Proc_169_69_1B19AA4C (var_96, var_8C)
  loc_1B154B9:   For var_B8 =  To var_96: 1 = var_B8 'Integer
  loc_1B154CB:     Set var_90 = Me.LblCap
  loc_1B154D1:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B154D9:     var_94.Visible = False
  loc_1B154E8:   Next var_B8 'Integer
  loc_1B154ED: End If
  loc_1B154F1: Set var_90 = Me.TopCtrl1
  loc_1B154F7: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1B15510: If (CStr() = "Add") Then
  loc_1B15537:   var_E8 = 0
  loc_1B15554:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F95078
  loc_1B15575:   unk_56D3B3.Execute var_BC & "' and Code='" & global_52 & "'", var_A8, -1
  loc_1B1557D:   var_90 = var_90.Fields
  loc_1B15585:   var_E8 = var_94.Item(var_94)
  loc_1B1558D:   var_EC = var_EC.Value
  loc_1B155A8:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1B155BB:   var_1BC = 0
  loc_1B155DB:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_1B155EB:   unk_56D3B3.Execute var_180 & "'", var_1A4, -1
  loc_1B155F3:   var_1A8 = var_1A8.Fields
  loc_1B155FB:   var_1BC = var_1AC.Item(var_1AC)
  loc_1B15603:   var_1C0 = var_1C0.Value
  loc_1B15623:   Proc_6_7_F26918(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate<=", var_15C & "' and V_Type='")
  loc_1B15634:   var_250 = CVar("Select * From SundryType WHERE logsite_code='" & MemVar_1F95078 & "' and V_Type='") & var_220 & "  Order by AppDate Desc) Order by SNO" 
  loc_1B15642:   unk_56D3B3.Execute CStr(var_250), var_274, -1
  loc_1B1564D:   Set var_88 = var_278
  loc_1B15698: Else
  loc_1B156BC:   var_E8 = 0
  loc_1B156D9:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F95078
  loc_1B156FA:   unk_56D3B3.Execute var_BC & "' and Code='" & global_52 & "'", var_A8, -1
  loc_1B15702:   var_90 = var_90.Fields
  loc_1B1570A:   var_E8 = var_94.Item(var_94)
  loc_1B15712:   var_EC = var_EC.Value
  loc_1B1572D:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1B15740:   var_1BC = 0
  loc_1B15760:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_1B15770:   unk_56D3B3.Execute var_180 & "'", var_1A4, -1
  loc_1B15778:   var_1A8 = var_1A8.Fields
  loc_1B15780:   var_1BC = var_1AC.Item(var_1AC)
  loc_1B15788:   var_1C0 = var_1C0.Value
  loc_1B157A8:   Proc_6_7_F26918(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate=", var_15C & "' and V_Type='", CVar("Select * From SundryType WHERE LogSite_Code='" & MemVar_1F95078 & "' and V_Type='"))
  loc_1B157C7:   unk_56D3B3.Execute CStr(var_274 & var_220 & "  Order by AppDate Desc) Order by SNO"), -1, var_278
  loc_1B157D2:   Set var_88 = var_278
  loc_1B1581A: End If
  loc_1B15821: Set var_90 = Me.LblCap
  loc_1B15827: Call 0.Method_Proc_169_69_1B19AA48 (var_96)
  loc_1B15857: If ((CLng(var_96) > var_88.RecordCount) And (var_88.RecordCount > 1)) Then
  loc_1B15879:   Set var_90 = Me.LblCap
  loc_1B1587F:   Call 0.Method_Proc_169_69_1B19AA48 (var_96, var_8C)
  loc_1B1588A:   For var_284 = var_278 To var_96: CInt((var_88.RecordCount + 1)) = var_284 'Integer
  loc_1B1589A:     Set var_90 = Me.LblCap
  loc_1B158A0:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B158B1:     Me.LblCap.Unload var_94
  loc_1B158C7:     Set var_90 = Me.LblDummy
  loc_1B158CD:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B158DE:     Me.LblDummy.Unload var_94
  loc_1B158F4:     Set var_90 = Me.LblAt
  loc_1B158FA:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B1590B:     Me.LblAt.Unload var_94
  loc_1B15921:     Set var_90 = Me.TxtPer
  loc_1B15927:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B15938:     Me.TxtPer.Unload var_94
  loc_1B1594E:     Set var_90 = Me.TxtGt
  loc_1B15954:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B15965:     Me.TxtGt.Unload var_94
  loc_1B15974:   Next var_284 'Integer
  loc_1B15979: End If
  loc_1B1598D: If (var_88.RecordCount > 0) Then
  loc_1B159C9:   Set var_EC = Me.Txt
  loc_1B159CF:   Call 0.Method_Proc_169_69_1B19AA40 (CInt(&H12), var_1A8)
  loc_1B159D7:   var_1A8.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_1B159ED:   ' Referenced from: 1B17613
  loc_1B159F3:   var_96 = var_88.EOF
  loc_1B159FC:   If Not(var_96) Then
  loc_1B15A3B:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1B15A6F:       Set var_EC = Me.LblDummy
  loc_1B15A75:       Call 0.Method_Proc_169_69_1B19AA48 (var_96)
  loc_1B15A8F:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1B15AC4:         Set var_EC = Me.LblDummy
  loc_1B15ACA:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B15ADB:         Me.LblDummy.Load var_1A8
  loc_1B15AEE:       End If
  loc_1B15B39:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B15B4E:       Set var_1AC = Me.LblDummy
  loc_1B15B54:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1A8.Value), var_1C0)
  loc_1B15B5C:       var_1C0.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1B15BAB:       Set var_EC = Me.TxtPer
  loc_1B15BB1:       Call 0.Method_Proc_169_69_1B19AA48 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1B15BCB:       If (var_1A8 > CVar(var_96)) Then
  loc_1B15C00:         Set var_EC = Me.TxtPer
  loc_1B15C06:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B15C17:         Me.TxtPer.Load var_1A8
  loc_1B15C2A:       End If
  loc_1B15C62:       Set var_EC = Me.TxtPer
  loc_1B15C68:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B15C70:       var_1A8.TabIndex = (var_8A + 1)
  loc_1B15C89:       var_8A = (var_8A + 1)
  loc_1B15CCD:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B15D0D:       Set var_1AC = Me.TxtPer
  loc_1B15D13:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1A8.Value), var_1C0, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1B15D1B:       var_1C0.Visible = var_8A
  loc_1B15D7A:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B15DD9:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B15DE2:         Set var_278 = Me.TxtPer
  loc_1B15DE8:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(True), var_288)
  loc_1B15E2A:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B15E33:         Set var_EC = Me.TxtPer
  loc_1B15E39:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("RevCode").Value), var_1A8)
  loc_1B15E5D:         Set var_294 = Me.TxtPer
  loc_1B15E63:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_298)
  loc_1B15E6B:         var_298.Top = ((var_1A8.Top + var_288.Height) + CDbl(&HF))
  loc_1B15E94:       End If
  loc_1B15ED0:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B15F2F:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B15F38:         Set var_EC = Me.TxtPer
  loc_1B15F3E:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("RevCode").Value), var_1A8)
  loc_1B15F59:         Set var_278 = Me.TxtPer
  loc_1B15F5F:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B15F67:         var_288.Left = var_1A8.Left
  loc_1B15F86:       End If
  loc_1B15F8A:       Set var_90 = Me.TopCtrl1
  loc_1B15F90:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1A8)
  loc_1B15FA9:       If (CStr() = "Add") Then
  loc_1B16009:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1B16056:         Set var_278 = Me.TxtPer
  loc_1B1605C:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1C0.Value), var_288)
  loc_1B16064:         var_288.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1B1608C:       End If
  loc_1B160D7:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B160EC:       Set var_1AC = Me.TxtPer
  loc_1B160F2:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1A8.Value), var_1C0)
  loc_1B160FA:       var_1C0.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1B16151:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B16188:         Set var_EC = Me.TxtPer
  loc_1B1618E:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16196:         var_1A8.FontBold = True
  loc_1B161AC:       Else
  loc_1B161E0:         Set var_EC = Me.TxtPer
  loc_1B161E6:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B161EE:         var_1A8.FontBold = False
  loc_1B16201:       End If
  loc_1B1623A:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B16271:         Set var_EC = Me.TxtPer
  loc_1B16277:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B1627F:         var_1A8.Enabled = False
  loc_1B16295:       Else
  loc_1B162C9:         Set var_EC = Me.TxtPer
  loc_1B162CF:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B162D7:         var_1A8.Enabled = True
  loc_1B162EA:       End If
  loc_1B162EE:       Set var_90 = Me.TopCtrl1
  loc_1B162F4:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1B1630D:       If (CStr() = "Browse") Then
  loc_1B16344:         Set var_EC = Me.TxtPer
  loc_1B1634A:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16352:         var_1A8.Enabled = False
  loc_1B16365:       End If
  loc_1B163A1:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1B163D8:         Set var_EC = Me.TxtPer
  loc_1B163DE:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B163E6:         var_1A8.Enabled = False
  loc_1B163F9:       End If
  loc_1B1642A:       Set var_EC = Me.LblCap
  loc_1B16430:       Call 0.Method_Proc_169_69_1B19AA48 (var_96)
  loc_1B1644A:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1B1647F:         Set var_EC = Me.LblCap
  loc_1B16485:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B16496:         Me.LblCap.Load var_1A8
  loc_1B164A9:       End If
  loc_1B164DD:       Set var_EC = Me.LblCap
  loc_1B164E3:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B164EB:       var_1A8.Visible = True
  loc_1B1655A:       Set var_EC = Me.TxtPer
  loc_1B16560:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B1657B:       Set var_278 = Me.LblCap
  loc_1B16581:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B16589:       var_288.Top = var_1A8.Top
  loc_1B165E4:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B16628:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1B16643:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B1664C:         Set var_EC = Me.LblCap
  loc_1B16652:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B1666D:         Set var_278 = Me.LblCap
  loc_1B16673:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1C0.Value), var_288)
  loc_1B1667B:         var_288.Left = var_1A8.Left
  loc_1B1669A:       End If
  loc_1B166FA:       Set var_1AC = Me.LblCap
  loc_1B16700:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1C0)
  loc_1B16708:       var_1C0.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1B16771:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B16786:       Set var_1AC = Me.LblCap
  loc_1B1678C:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1A8.Value), var_1C0)
  loc_1B16794:       var_1C0.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1B167EB:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B16822:         Set var_EC = Me.LblCap
  loc_1B16828:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16830:         var_1A8.FontBold = True
  loc_1B16846:       Else
  loc_1B1687A:         Set var_EC = Me.LblCap
  loc_1B16880:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16888:         var_1A8.FontBold = False
  loc_1B1689B:       End If
  loc_1B168CC:       Set var_EC = Me.LblAt
  loc_1B168D2:       Call 0.Method_Proc_169_69_1B19AA48 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1B168EC:       If (var_1A8 > CVar(var_96)) Then
  loc_1B16921:         Set var_EC = Me.LblAt
  loc_1B16927:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B16938:         Me.LblAt.Load var_1A8
  loc_1B1694B:       End If
  loc_1B1698C:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B169CC:       Set var_1AC = Me.LblAt
  loc_1B169D2:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1A8.Value), var_1C0)
  loc_1B169DA:       var_1C0.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1B16A3E:       var_1C0 = var_88.Fields.Item("SNo")
  loc_1B16A59:       Set var_EC = Me.TxtPer
  loc_1B16A5F:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16A7A:       Set var_278 = Me.LblAt
  loc_1B16A80:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1C0.Value), var_288)
  loc_1B16A88:       var_288.Top = var_1A8.Top
  loc_1B16AE0:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B16B17:         Set var_EC = Me.LblAt
  loc_1B16B1D:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16B25:         var_1A8.FontBold = True
  loc_1B16B3B:       Else
  loc_1B16B6F:         Set var_EC = Me.LblAt
  loc_1B16B75:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16B7D:         var_1A8.FontBold = False
  loc_1B16B90:       End If
  loc_1B16BDF:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B16BF4:       Set var_1AC = Me.LblAt
  loc_1B16BFA:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1A8.Value), var_1C0)
  loc_1B16C02:       var_1C0.Tag = CStr(Trim(CVar(var_88.Fields.Item("RoundOff"))))
  loc_1B16C5C:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B16CBB:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B16CC4:         Set var_EC = Me.LblAt
  loc_1B16CCA:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(Trim(CVar(var_88.Fields.Item("RoundOff")))), var_1A8)
  loc_1B16CE5:         Set var_278 = Me.LblAt
  loc_1B16CEB:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B16CF3:         var_288.Left = var_1A8.Left
  loc_1B16D12:       End If
  loc_1B16D43:       Set var_EC = Me.TxtGt
  loc_1B16D49:       Call 0.Method_Proc_169_69_1B19AA48 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1B16D63:       If (var_1A8 > CVar(var_96)) Then
  loc_1B16D98:         Set var_EC = Me.TxtGt
  loc_1B16D9E:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B16DAF:         Me.TxtGt.Load var_1A8
  loc_1B16DC2:       End If
  loc_1B16DFA:       Set var_EC = Me.TxtGt
  loc_1B16E00:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16E08:       var_1A8.TabIndex = (var_8A + 1)
  loc_1B16E21:       var_8A = (var_8A + 1)
  loc_1B16E58:       Set var_EC = Me.TxtGt
  loc_1B16E5E:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8, &HFF)
  loc_1B16E66:       var_1A8.Visible = var_8A
  loc_1B16ED5:       Set var_EC = Me.TxtPer
  loc_1B16EDB:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16EF6:       Set var_278 = Me.TxtGt
  loc_1B16EFC:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B16F04:       var_288.Top = var_1A8.Top
  loc_1B16F5F:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B16FBE:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B16FC7:         Set var_EC = Me.TxtGt
  loc_1B16FCD:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16FE8:         Set var_278 = Me.TxtGt
  loc_1B16FEE:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B16FF6:         var_288.Left = var_1A8.Left
  loc_1B17015:       End If
  loc_1B17019:       Set var_90 = Me.TopCtrl1
  loc_1B1701F:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1A8)
  loc_1B17038:       If (CStr() = "Add") Then
  loc_1B17098:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1B170E5:         Set var_278 = Me.TxtGt
  loc_1B170EB:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1C0.Value), var_288)
  loc_1B170F3:         var_288.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1B1711B:       End If
  loc_1B17163:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B1716B:       var_FC = var_1A8.Value
  loc_1B17178:       Set var_1AC = Me.TxtGt
  loc_1B1717E:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_FC), var_1C0)
  loc_1B17186:       var_1C0.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1B171DB:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B17212:         Set var_EC = Me.TxtGt
  loc_1B17218:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B17220:         var_1A8.FontBold = True
  loc_1B17236:       Else
  loc_1B1726A:         Set var_EC = Me.TxtGt
  loc_1B17270:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B17278:         var_1A8.FontBold = False
  loc_1B1728B:       End If
  loc_1B172C4:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B172FB:         Set var_EC = Me.TxtGt
  loc_1B17301:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B17309:         var_1A8.Enabled = False
  loc_1B1731F:       Else
  loc_1B17353:         Set var_EC = Me.TxtGt
  loc_1B17359:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B17361:         var_1A8.Enabled = True
  loc_1B17374:       End If
  loc_1B173A9:       Set var_EC = Me.LblCap
  loc_1B173AF:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B173E0:       If (var_1A8.Tag = MemVar_1F95078 & "ADV") Then
  loc_1B17417:         Set var_EC = Me.TxtGt
  loc_1B1741D:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B17425:         var_1A8.Enabled = False
  loc_1B17438:       End If
  loc_1B1746D:       Set var_EC = Me.LblCap
  loc_1B17473:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B174A4:       If (var_1A8.Tag = MemVar_1F95078 & "ROFF") Then
  loc_1B174DB:         Set var_EC = Me.TxtGt
  loc_1B174E1:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B174E9:         var_1A8.Enabled = False
  loc_1B174FC:       End If
  loc_1B17500:       Set var_90 = Me.TopCtrl1
  loc_1B17506:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1B1751F:       If (CStr() = "Browse") Then
  loc_1B17556:         Set var_EC = Me.TxtGt
  loc_1B1755C:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B17564:         var_1A8.Enabled = False
  loc_1B17577:       End If
  loc_1B175B3:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1B175DD:         var_A8 = var_88.Fields.Item("SNo").Value
  loc_1B175EA:         Set var_EC = Me.TxtGt
  loc_1B175F0:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_A8), var_1A8)
  loc_1B175F8:         var_1A8.Enabled = False
  loc_1B1760B:       End If
  loc_1B1760B:     End If
  loc_1B1760E:     var_88.MoveNext
  loc_1B17613:     GoTo loc_1B159ED
  loc_1B17616:   End If
  loc_1B17616: End If
  loc_1B1761D: Set var_90 = Me.TxtGt
  loc_1B17623: Call 0.Method_Proc_169_69_1B19AA48 (var_96)
  loc_1B1762F: Set var_1A8 = Me.TxtGt
  loc_1B17635: Call 0.Method_Proc_169_69_1B19AA48 (var_29A)
  loc_1B17647: Set var_1AC = Me.TxtGt
  loc_1B1764D: Call 0.Method_Proc_169_69_1B19AA40 (var_29A, var_1C0)
  loc_1B17667: Set var_94 = Me.TxtGt
  loc_1B1766D: Call 0.Method_Proc_169_69_1B19AA40 (var_96, var_EC)
  loc_1B17695: Set var_278 = Me.Txt
  loc_1B1769B: Call 0.Method_Proc_169_69_1B19AA40 (CInt(&HF), var_288)
  loc_1B176A3: var_288.Top = (var_EC.Top + ((var_1C0.Height + CDbl(&HF)) * CDbl(2)))
  loc_1B176C2: Set var_90 = Me.TxtGt
  loc_1B176C8: Call 0.Method_Proc_169_69_1B19AA48 (var_96)
  loc_1B176D4: Set var_1A8 = Me.TxtGt
  loc_1B176DA: Call 0.Method_Proc_169_69_1B19AA48 (var_29A)
  loc_1B176EC: Set var_1AC = Me.TxtGt
  loc_1B176F2: Call 0.Method_Proc_169_69_1B19AA40 (var_29A, var_1C0)
  loc_1B1770C: Set var_94 = Me.TxtGt
  loc_1B17712: Call 0.Method_Proc_169_69_1B19AA40 (var_96, var_EC)
  loc_1B17733: Set var_278 = Me.LblAdvRecd
  loc_1B17739: var_278.Top = (var_EC.Top + ((var_1C0.Height + CDbl(&HF)) * CDbl(2)))
  loc_1B1775D: Set var_EC = Me.Txt
  loc_1B17763: Call 0.Method_Proc_169_69_1B19AA40 (CInt(&HF), var_1A8)
  loc_1B1777E: Set var_90 = Me.Txt
  loc_1B17784: Call 0.Method_Proc_169_69_1B19AA40 (CInt(&HF), var_94)
  loc_1B177A8: Set var_1AC = Me.Txt
  loc_1B177AE: Call 0.Method_Proc_169_69_1B19AA40 (CInt(&H13), var_1C0)
  loc_1B177B6: var_1C0.Top = ((var_94.Top + var_1A8.Height) + CDbl(&HF))
  loc_1B177D8: Set var_EC = Me.Txt
  loc_1B177DE: Call 0.Method_Proc_169_69_1B19AA40 (CInt(&HF), var_1A8)
  loc_1B177F9: Set var_90 = Me.Txt
  loc_1B177FF: Call 0.Method_Proc_169_69_1B19AA40 (CInt(&HF), var_94)
  loc_1B1781C: Set var_1AC = Me.LblNetAmtPayable
  loc_1B17822: var_1AC.Top = ((var_94.Top + var_1A8.Height) + CDbl(&HF))
  loc_1B17845: Set var_90 = Me.Txt
  loc_1B1784B: Call 0.Method_Proc_169_69_1B19AA40 (CInt(&H14), var_94)
  loc_1B17853: var_94.TabIndex = (var_8A + 1)
  loc_1B17863: Set var_90 = Me.TopCtrl1
  loc_1B17869: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1B17882: If (CStr() = "Add") Then
  loc_1B17891:   Set var_90 = Me.TxtPer1
  loc_1B17897:   Call 0.Method_Proc_169_69_1B19AA4C (var_96, var_8C)
  loc_1B178A2:   For var_29E =  To var_96: 1 = var_29E 'Integer
  loc_1B178B4:     Set var_90 = Me.TxtPer1
  loc_1B178BA:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B178C2:     var_94.Visible = False
  loc_1B178D1:   Next var_29E 'Integer
  loc_1B178E2:   Set var_90 = Me.TxtGt1
  loc_1B178E8:   Call 0.Method_Proc_169_69_1B19AA4C (var_96, var_8C)
  loc_1B178F3:   For var_2A2 =  To var_96: 1 = var_2A2 'Integer
  loc_1B17905:     Set var_90 = Me.TxtGt1
  loc_1B1790B:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B17913:     var_94.Visible = False
  loc_1B17922:   Next var_2A2 'Integer
  loc_1B17933:   Set var_90 = Me.LblCap1
  loc_1B17939:   Call 0.Method_Proc_169_69_1B19AA4C (var_96, var_8C)
  loc_1B17944:   For var_2A6 =  To var_96: 1 = var_2A6 'Integer
  loc_1B17956:     Set var_90 = Me.LblCap1
  loc_1B1795C:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B17964:     var_94.Visible = False
  loc_1B17973:   Next var_2A6 'Integer
  loc_1B17978: End If
  loc_1B1797C: Set var_90 = Me.TopCtrl1
  loc_1B17982: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1B1799B: If (CStr() = "Add") Then
  loc_1B179C2:   var_E8 = 0
  loc_1B179DF:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F95078
  loc_1B17A00:   unk_56D3B3.Execute MemVar_1F95078 & "ROFF" & "' and Code='" & global_52 & "'", var_A8, -1
  loc_1B17A08:   var_90 = var_90.Fields
  loc_1B17A10:   var_E8 = var_94.Item(var_94)
  loc_1B17A18:   var_EC = var_EC.Value
  loc_1B17A33:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1B17A46:   var_1BC = 0
  loc_1B17A66:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_1B17A76:   unk_56D3B3.Execute var_180 & "'", var_1A4, -1
  loc_1B17A7E:   var_1A8 = var_1A8.Fields
  loc_1B17A86:   var_1BC = var_1AC.Item(var_1AC)
  loc_1B17A8E:   var_1C0 = var_1C0.Value
  loc_1B17AAE:   Proc_6_7_F26918(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate<=", var_15C & "' and V_Type='")
  loc_1B17ABF:   var_250 = CVar("Select * From SundryType WHERE logsite_code='" & MemVar_1F95078 & "' and V_Type='") & var_220 & "  Order by AppDate Desc) Order by SNO" 
  loc_1B17ACD:   unk_56D3B3.Execute CStr(var_250), var_274, -1
  loc_1B17AD8:   Set var_88 = var_278
  loc_1B17B23: Else
  loc_1B17B47:   var_E8 = 0
  loc_1B17B64:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F95078
  loc_1B17B85:   unk_56D3B3.Execute MemVar_1F95078 & "ROFF" & "' and Code='" & global_52 & "'", var_A8, -1
  loc_1B17B8D:   var_90 = var_90.Fields
  loc_1B17B95:   var_E8 = var_94.Item(var_94)
  loc_1B17B9D:   var_EC = var_EC.Value
  loc_1B17BB8:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1B17BCB:   var_1BC = 0
  loc_1B17BEB:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_1B17BFB:   unk_56D3B3.Execute var_180 & "'", var_1A4, -1
  loc_1B17C03:   var_1A8 = var_1A8.Fields
  loc_1B17C0B:   var_1BC = var_1AC.Item(var_1AC)
  loc_1B17C13:   var_1C0 = var_1C0.Value
  loc_1B17C33:   Proc_6_7_F26918(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate=", var_15C & "' and V_Type='", CVar("Select * From SundryType WHERE LogSite_Code='" & MemVar_1F95078 & "' and V_Type='"))
  loc_1B17C52:   unk_56D3B3.Execute CStr(var_274 & var_220 & "  Order by AppDate Desc) Order by SNO"), -1, var_278
  loc_1B17C5D:   Set var_88 = var_278
  loc_1B17CA5: End If
  loc_1B17CAC: Set var_90 = Me.LblCap1
  loc_1B17CB2: Call 0.Method_Proc_169_69_1B19AA48 (var_96)
  loc_1B17CE2: If ((CLng(var_96) > var_88.RecordCount) And (var_88.RecordCount > 1)) Then
  loc_1B17D04:   Set var_90 = Me.LblCap1
  loc_1B17D0A:   Call 0.Method_Proc_169_69_1B19AA48 (var_96, var_8C)
  loc_1B17D15:   For var_2AA = var_278 To var_96: CInt((var_88.RecordCount + 1)) = var_2AA 'Integer
  loc_1B17D25:     Set var_90 = Me.LblCap1
  loc_1B17D2B:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B17D3C:     Me.LblCap1.Unload var_94
  loc_1B17D52:     Set var_90 = Me.LblDummy1
  loc_1B17D58:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B17D69:     Me.LblDummy1.Unload var_94
  loc_1B17D7F:     Set var_90 = Me.LblAt1
  loc_1B17D85:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B17D96:     Me.LblAt1.Unload var_94
  loc_1B17DAC:     Set var_90 = Me.TxtPer1
  loc_1B17DB2:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B17DC3:     Me.TxtPer1.Unload var_94
  loc_1B17DD9:     Set var_90 = Me.TxtGt1
  loc_1B17DDF:     Call 0.Method_Proc_169_69_1B19AA40 (var_8C, var_94)
  loc_1B17DF0:     Me.TxtGt1.Unload var_94
  loc_1B17DFF:   Next var_2AA 'Integer
  loc_1B17E04: End If
  loc_1B17E18: If (var_88.RecordCount > 0) Then
  loc_1B17E54:   Set var_EC = Me.Txt
  loc_1B17E5A:   Call 0.Method_Proc_169_69_1B19AA40 (CInt(&H12), var_1A8)
  loc_1B17E62:   var_1A8.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_1B17E78:   ' Referenced from: 1B19A9E
  loc_1B17E7E:   var_96 = var_88.EOF
  loc_1B17E87:   If Not(var_96) Then
  loc_1B17EC6:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1B17EFA:       Set var_EC = Me.LblDummy1
  loc_1B17F00:       Call 0.Method_Proc_169_69_1B19AA48 (var_96)
  loc_1B17F1A:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1B17F4F:         Set var_EC = Me.LblDummy1
  loc_1B17F55:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B17F66:         Me.LblDummy1.Load var_1A8
  loc_1B17F79:       End If
  loc_1B17FC4:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B17FD9:       Set var_1AC = Me.LblDummy1
  loc_1B17FDF:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1A8.Value), var_1C0)
  loc_1B17FE7:       var_1C0.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1B18036:       Set var_EC = Me.TxtPer1
  loc_1B1803C:       Call 0.Method_Proc_169_69_1B19AA48 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1B18056:       If (var_1A8 > CVar(var_96)) Then
  loc_1B1808B:         Set var_EC = Me.TxtPer1
  loc_1B18091:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B180A2:         Me.TxtPer1.Load var_1A8
  loc_1B180B5:       End If
  loc_1B180ED:       Set var_EC = Me.TxtPer1
  loc_1B180F3:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B180FB:       var_1A8.TabIndex = (var_8A + 1)
  loc_1B18114:       var_8A = (var_8A + 1)
  loc_1B18158:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B18198:       Set var_1AC = Me.TxtPer1
  loc_1B1819E:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1A8.Value), var_1C0, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1B181A6:       var_1C0.Visible = var_8A
  loc_1B18205:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B18264:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B1826D:         Set var_278 = Me.TxtPer1
  loc_1B18273:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(True), var_288)
  loc_1B182B5:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B182BE:         Set var_EC = Me.TxtPer1
  loc_1B182C4:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("RevCode").Value), var_1A8)
  loc_1B182E8:         Set var_294 = Me.TxtPer1
  loc_1B182EE:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_298)
  loc_1B182F6:         var_298.Top = ((var_1A8.Top + var_288.Height) + CDbl(&HF))
  loc_1B1831F:       End If
  loc_1B1835B:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B183BA:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B183C3:         Set var_EC = Me.TxtPer1
  loc_1B183C9:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("RevCode").Value), var_1A8)
  loc_1B183E4:         Set var_278 = Me.TxtPer1
  loc_1B183EA:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B183F2:         var_288.Left = var_1A8.Left
  loc_1B18411:       End If
  loc_1B18415:       Set var_90 = Me.TopCtrl1
  loc_1B1841B:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1A8)
  loc_1B18434:       If (CStr() = "Add") Then
  loc_1B18494:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1B184E1:         Set var_278 = Me.TxtPer1
  loc_1B184E7:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1C0.Value), var_288)
  loc_1B184EF:         var_288.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1B18517:       End If
  loc_1B18562:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B18577:       Set var_1AC = Me.TxtPer1
  loc_1B1857D:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1A8.Value), var_1C0)
  loc_1B18585:       var_1C0.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1B185DC:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B18613:         Set var_EC = Me.TxtPer1
  loc_1B18619:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B18621:         var_1A8.FontBold = True
  loc_1B18637:       Else
  loc_1B1866B:         Set var_EC = Me.TxtPer1
  loc_1B18671:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B18679:         var_1A8.FontBold = False
  loc_1B1868C:       End If
  loc_1B186C5:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B186FC:         Set var_EC = Me.TxtPer1
  loc_1B18702:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B1870A:         var_1A8.Enabled = False
  loc_1B18720:       Else
  loc_1B18754:         Set var_EC = Me.TxtPer1
  loc_1B1875A:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B18762:         var_1A8.Enabled = True
  loc_1B18775:       End If
  loc_1B18779:       Set var_90 = Me.TopCtrl1
  loc_1B1877F:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1B18798:       If (CStr() = "Browse") Then
  loc_1B187CF:         Set var_EC = Me.TxtPer1
  loc_1B187D5:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B187DD:         var_1A8.Enabled = False
  loc_1B187F0:       End If
  loc_1B1882C:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1B18863:         Set var_EC = Me.TxtPer1
  loc_1B18869:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B18871:         var_1A8.Enabled = False
  loc_1B18884:       End If
  loc_1B188B5:       Set var_EC = Me.LblCap1
  loc_1B188BB:       Call 0.Method_Proc_169_69_1B19AA48 (var_96)
  loc_1B188D5:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1B1890A:         Set var_EC = Me.LblCap1
  loc_1B18910:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B18921:         Me.LblCap1.Load var_1A8
  loc_1B18934:       End If
  loc_1B18968:       Set var_EC = Me.LblCap1
  loc_1B1896E:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B18976:       var_1A8.Visible = True
  loc_1B189E5:       Set var_EC = Me.TxtPer1
  loc_1B189EB:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B18A06:       Set var_278 = Me.LblCap1
  loc_1B18A0C:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B18A14:       var_288.Top = var_1A8.Top
  loc_1B18A6F:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B18AB3:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1B18ACE:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B18AD7:         Set var_EC = Me.LblCap1
  loc_1B18ADD:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B18AF8:         Set var_278 = Me.LblCap1
  loc_1B18AFE:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1C0.Value), var_288)
  loc_1B18B06:         var_288.Left = var_1A8.Left
  loc_1B18B25:       End If
  loc_1B18B85:       Set var_1AC = Me.LblCap1
  loc_1B18B8B:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1C0)
  loc_1B18B93:       var_1C0.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1B18BFC:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B18C11:       Set var_1AC = Me.LblCap1
  loc_1B18C17:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1A8.Value), var_1C0)
  loc_1B18C1F:       var_1C0.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1B18C76:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B18CAD:         Set var_EC = Me.LblCap1
  loc_1B18CB3:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B18CBB:         var_1A8.FontBold = True
  loc_1B18CD1:       Else
  loc_1B18D05:         Set var_EC = Me.LblCap1
  loc_1B18D0B:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B18D13:         var_1A8.FontBold = False
  loc_1B18D26:       End If
  loc_1B18D57:       Set var_EC = Me.LblAt1
  loc_1B18D5D:       Call 0.Method_Proc_169_69_1B19AA48 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1B18D77:       If (var_1A8 > CVar(var_96)) Then
  loc_1B18DAC:         Set var_EC = Me.LblAt1
  loc_1B18DB2:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B18DC3:         Me.LblAt1.Load var_1A8
  loc_1B18DD6:       End If
  loc_1B18E17:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B18E57:       Set var_1AC = Me.LblAt1
  loc_1B18E5D:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1A8.Value), var_1C0)
  loc_1B18E65:       var_1C0.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1B18EC9:       var_1C0 = var_88.Fields.Item("SNo")
  loc_1B18EE4:       Set var_EC = Me.TxtPer1
  loc_1B18EEA:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B18F05:       Set var_278 = Me.LblAt1
  loc_1B18F0B:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1C0.Value), var_288)
  loc_1B18F13:       var_288.Top = var_1A8.Top
  loc_1B18F6B:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B18FA2:         Set var_EC = Me.LblAt1
  loc_1B18FA8:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B18FB0:         var_1A8.FontBold = True
  loc_1B18FC6:       Else
  loc_1B18FFA:         Set var_EC = Me.LblAt1
  loc_1B19000:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B19008:         var_1A8.FontBold = False
  loc_1B1901B:       End If
  loc_1B1906A:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B1907F:       Set var_1AC = Me.LblAt1
  loc_1B19085:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1A8.Value), var_1C0)
  loc_1B1908D:       var_1C0.Tag = CStr(Trim(CVar(var_88.Fields.Item("RoundOff"))))
  loc_1B190E7:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B19146:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B1914F:         Set var_EC = Me.LblAt1
  loc_1B19155:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(Trim(CVar(var_88.Fields.Item("RoundOff")))), var_1A8)
  loc_1B19170:         Set var_278 = Me.LblAt1
  loc_1B19176:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B1917E:         var_288.Left = var_1A8.Left
  loc_1B1919D:       End If
  loc_1B191CE:       Set var_EC = Me.TxtGt1
  loc_1B191D4:       Call 0.Method_Proc_169_69_1B19AA48 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1B191EE:       If (var_1A8 > CVar(var_96)) Then
  loc_1B19223:         Set var_EC = Me.TxtGt1
  loc_1B19229:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B1923A:         Me.TxtGt1.Load var_1A8
  loc_1B1924D:       End If
  loc_1B19285:       Set var_EC = Me.TxtGt1
  loc_1B1928B:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B19293:       var_1A8.TabIndex = (var_8A + 1)
  loc_1B192AC:       var_8A = (var_8A + 1)
  loc_1B192E3:       Set var_EC = Me.TxtGt1
  loc_1B192E9:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8, &HFF)
  loc_1B192F1:       var_1A8.Visible = var_8A
  loc_1B19360:       Set var_EC = Me.TxtPer1
  loc_1B19366:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B19381:       Set var_278 = Me.TxtGt1
  loc_1B19387:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B1938F:       var_288.Top = var_1A8.Top
  loc_1B193EA:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B19449:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B19452:         Set var_EC = Me.TxtGt1
  loc_1B19458:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B19473:         Set var_278 = Me.TxtGt1
  loc_1B19479:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B19481:         var_288.Left = var_1A8.Left
  loc_1B194A0:       End If
  loc_1B194A4:       Set var_90 = Me.TopCtrl1
  loc_1B194AA:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1A8)
  loc_1B194C3:       If (CStr() = "Add") Then
  loc_1B19523:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1B19570:         Set var_278 = Me.TxtGt1
  loc_1B19576:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1C0.Value), var_288)
  loc_1B1957E:         var_288.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1B195A6:       End If
  loc_1B195EE:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B19603:       Set var_1AC = Me.TxtGt1
  loc_1B19609:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_1A8.Value), var_1C0)
  loc_1B19611:       var_1C0.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1B19666:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B1969D:         Set var_EC = Me.TxtGt1
  loc_1B196A3:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B196AB:         var_1A8.FontBold = True
  loc_1B196C1:       Else
  loc_1B196F5:         Set var_EC = Me.TxtGt1
  loc_1B196FB:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B19703:         var_1A8.FontBold = False
  loc_1B19716:       End If
  loc_1B1974F:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B19786:         Set var_EC = Me.TxtGt1
  loc_1B1978C:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B19794:         var_1A8.Enabled = False
  loc_1B197AA:       Else
  loc_1B197DE:         Set var_EC = Me.TxtGt1
  loc_1B197E4:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B197EC:         var_1A8.Enabled = True
  loc_1B197FF:       End If
  loc_1B19834:       Set var_EC = Me.LblCap1
  loc_1B1983A:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B1986B:       If (var_1A8.Tag = MemVar_1F95078 & "ADV") Then
  loc_1B198A2:         Set var_EC = Me.TxtGt1
  loc_1B198A8:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B198B0:         var_1A8.Enabled = False
  loc_1B198C3:       End If
  loc_1B198F8:       Set var_EC = Me.LblCap1
  loc_1B198FE:       Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B1992F:       If (var_1A8.Tag = MemVar_1F95078 & "ROFF") Then
  loc_1B19966:         Set var_EC = Me.TxtGt1
  loc_1B1996C:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B19974:         var_1A8.Enabled = False
  loc_1B19987:       End If
  loc_1B1998B:       Set var_90 = Me.TopCtrl1
  loc_1B19991:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1B199AA:       If (CStr() = "Browse") Then
  loc_1B199E1:         Set var_EC = Me.TxtGt1
  loc_1B199E7:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B199EF:         var_1A8.Enabled = False
  loc_1B19A02:       End If
  loc_1B19A3E:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1B19A75:         Set var_EC = Me.TxtGt1
  loc_1B19A7B:         Call 0.Method_Proc_169_69_1B19AA40 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B19A83:         var_1A8.Enabled = False
  loc_1B19A96:       End If
  loc_1B19A96:     End If
  loc_1B19A99:     var_88.MoveNext
  loc_1B19A9E:     GoTo loc_1B17E78
  loc_1B19AA1:   End If
  loc_1B19AA1: End If
  loc_1B19AA1: Exit Sub
End Sub

Public Sub Proc_169_70_190E6A8(arg_C) '190E6A8
  'Data Table: 56D3A8
  Dim var_180 As Variant
  Dim var_DC As String
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_148 As String
  Dim unk_56D3B3 As Connection15
  Dim var_16C As Variant
  Dim var_170 As Variant
  Dim var_184 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_D0 As Variant
  Dim var_E4 As String
  Dim var_2A4 As Double
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_104 As Variant
  Dim var_2AC As Double
  Dim var_1FC As Variant
  Dim var_21C As Variant
  Dim var_2B4 As Double
  Dim var_25C As Variant
  Dim var_27C As Variant
  Dim var_194 As Variant
  Dim var_23C As Variant
  Dim var_310 As Double
  Dim var_29C As Variant
  Dim var_2D8 As Variant
  Dim var_2F8 As Variant
  Dim var_168 As Variant
  Dim var_B4 As Double
  Dim var_384 As Double
  Dim var_88 As Recordset15
  loc_190BB86: global_80 = CDbl(0)
  loc_190BB95: Set var_D0 = Me.TxtGt
  loc_190BB9B: Call 0.Method_Proc_169_70_190E6A88 (var_D2, var_AA)
  loc_190BBA6: For var_D6 = global_80 To var_D2: 1 = var_D6 'Integer
  loc_190BBE6:   Set var_D0 = Me.LblCap
  loc_190BBEC:   Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_E4, CVar("Select IsNull(Max(Nature),'') from SundryMast Where LOGSITE_CODE='" & MemVar_1F95078 & "' AND Code='"), var_168, -1)
  loc_190BC21:   unk_56D3B3.Execute CStr(var_170 & Trim(CVar(var_E4)) & "'"), 0, var_184
  loc_190BC31:    = var_170.Item(global_80)
  loc_190BC39:    = var_184.Value
  loc_190BC46:   var_C8 = Proc_6_38_E69628(var_E0.Tag.Fields)
  loc_190BC76:   If (var_C8 = "Addition") Then
  loc_190BC86:     Set var_D0 = Me.TxtGt
  loc_190BC8C:     Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0)
  loc_190BCB3:     Set var_16C = Me.TxtPer
  loc_190BCB9:     Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_170)
  loc_190BCE6:     If ((CDbl(Val(var_E0.Text)) > CDbl(0)) And (CDbl(Val(var_170.Text)) <= CDbl(0))) Then
  loc_190BCF6:       Set var_D0 = Me.TxtGt
  loc_190BCFC:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0)
  loc_190BD11:       var_90 = Val(var_E0.Text)
  loc_190BD1E:     End If
  loc_190BD21:   Else
  loc_190BD29:     If (var_C8 = "Advance") Then
  loc_190BD39:       Set var_D0 = Me.TxtGt
  loc_190BD3F:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0)
  loc_190BD47:       var_DC = var_E0.Text
  loc_190BD54:       var_98 = Val(var_DC)
  loc_190BD64:     Else
  loc_190BD6C:       If (var_C8 = "Redemption") Then
  loc_190BD7C:         Set var_D0 = Me.TxtGt
  loc_190BD82:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC)
  loc_190BD8A:         var_98 = var_E0.Text
  loc_190BD97:         var_A0 = Val(var_DC)
  loc_190BDA7:       Else
  loc_190BDAF:         If (var_C8 = "Deduction") Then
  loc_190BDBF:           Set var_D0 = Me.TxtGt
  loc_190BDC5:           Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC)
  loc_190BDCD:           var_A0 = var_E0.Text
  loc_190BDDA:           var_A8 = Val(var_DC)
  loc_190BDEA:         Else
  loc_190BDF2:           If (var_C8 = "Discount") Then
  loc_190BDFA:             var_B6 = CByte(var_AA) 'Byte
  loc_190BE01:           Else
  loc_190BE09:             If (var_C8 = "Service Charge") Then
  loc_190BE11:               var_C2 = CByte(var_AA) 'Byte
  loc_190BE18:             Else
  loc_190BE3B:               If ((((var_C8 = "Sale Tax") Or (var_C8 = "CGST")) Or (var_C8 = "SGST")) Or (var_C8 = "IGST")) Then
  loc_190BE43:                 var_B8 = CByte(var_AA) 'Byte
  loc_190BE4D:                 global_96 = var_AA
  loc_190BE50:               End If
  loc_190BE50:             End If
  loc_190BE50:           End If
  loc_190BE50:         End If
  loc_190BE50:       End If
  loc_190BE50:     End If
  loc_190BE50:   End If
  loc_190BE5D:   Set var_D0 = Me.TxtGt
  loc_190BE63:   Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, vbNullString)
  loc_190BE6B:   var_E0.Text = global_96
  loc_190BE7A: Next var_D6 'Integer
  loc_190BE92: Me.FGCat.Rows = 1
  loc_190BE9E: Set var_D0 = Me.TopCtrl1
  loc_190BEA4: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_190BEB8: Set var_E0 = Me.TopCtrl1
  loc_190BEBE: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Add"))
  loc_190BEE4: If ( Or (CStr() = "Edit")) Then
  loc_190BEE7:   Call Proc_169_71_12D74A4()
  loc_190BEEC: End If
  loc_190BEF8: Set var_D0 = Me.TxtGt
  loc_190BEFE: Call 0.Method_Proc_169_70_190E6A88 (var_D2, var_AA)
  loc_190BF09: For var_198 =  To var_D2: 2 = var_198 'Integer
  loc_190BF1C:   Set var_D0 = Me.LblCap
  loc_190BF22:   Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0)
  loc_190BF5D:   If (Trim(CVar(var_E0.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_190BF6D:     Set var_D0 = Me.TxtGt
  loc_190BF73:     Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0)
  loc_190BF7B:     var_E0.Text = vbNullString
  loc_190BF91:     If (var_B8 > var_B6) Then
  loc_190BFB9:       For var_19C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AC = var_19C 'Integer
  loc_190BFCC:         Set var_D0 = Me.LblCap
  loc_190BFD2:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0)
  loc_190C00D:         If (Trim(CVar(var_E0.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_190C014:           var_134 = CVar(CLng(var_AC)) 'Long
  loc_190C01C:           var_180 = CVar(CLng(&H14)) 'Long
  loc_190C036:           var_DC = CStr(Me.FGrid.TextMatrix))
  loc_190C047:           If (var_DC = "Y") Then
  loc_190C04E:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_190C068:             Set var_D0 = Me.TxtPer
  loc_190C06E:             Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC, CVar(CLng(&HF)))
  loc_190C076:             var_134 = var_E0.Text
  loc_190C085:             var_F4 = CVar(CStr(Val(var_DC))) 'String
  loc_190C08D:             Set var_16C = Me.FGrid
  loc_190C093:             LateIdCallSt
  loc_190C0C8:             Set var_D0 = Me.TxtPer
  loc_190C0CE:             Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC, CVar(CLng(&HF)), CVar(CLng(var_AC)))
  loc_190C0D6:             var_16C = var_E0.Text
  loc_190C0E5:             var_F4 = CVar(CStr(Val(var_DC))) 'String
  loc_190C0ED:             Set var_16C = Me.FGrid
  loc_190C0F3:             LateIdCallSt
  loc_190C10A:           End If
  loc_190C10A:         End If
  loc_190C114:         If (var_C2 < var_B8) Then
  loc_190C121:           If (var_B6 < var_C2) Then
  loc_190C128:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_190C130:             var_180 = CVar(CLng(6)) 'Long
  loc_190C159:             var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190C161:             var_1DC = CVar(CLng(8)) 'Long
  loc_190C18A:             var_1FC = CVar(CLng(var_AC)) 'Long
  loc_190C192:             var_21C = CVar(CLng(&HF)) 'Long
  loc_190C1BB:             var_25C = CVar(CLng(var_AC)) 'Long
  loc_190C1C3:             var_27C = CVar(CLng(&H10)) 'Long
  loc_190C1EC:             var_124 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_190C1FC:             var_194 = CVar(CStr(Format(var_124, "0.00"))) 'String
  loc_190C204:             Set var_170 = Me.FGrid
  loc_190C20A:             LateIdCallSt
  loc_190C23B:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_190C243:             var_180 = CVar(CLng(&HF)) 'Long
  loc_190C25D:             var_DC = CStr(Me.FGrid.TextMatrix))
  loc_190C26E:             var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190C2AE:             If (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) <> "Yes")) Then
  loc_190C2B5:               var_134 = CVar(CLng(var_AC)) 'Long
  loc_190C2BD:               var_180 = CVar(CLng(6)) 'Long
  loc_190C2E6:               var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190C2EE:               var_1DC = CVar(CLng(8)) 'Long
  loc_190C324:               global_80 = (global_80 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_190C33C:             End If
  loc_190C33F:           Else
  loc_190C343:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_190C34B:             var_180 = CVar(CLng(6)) 'Long
  loc_190C374:             var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190C37C:             var_1DC = CVar(CLng(8)) 'Long
  loc_190C3A5:             var_1FC = CVar(CLng(var_AC)) 'Long
  loc_190C3AD:             var_21C = CVar(CLng(&H1B)) 'Long
  loc_190C3D6:             var_23C = CVar(CLng(var_AC)) 'Long
  loc_190C3DE:             var_25C = CVar(CLng(&HF)) 'Long
  loc_190C407:             var_29C = CVar(CLng(var_AC)) 'Long
  loc_190C40F:             var_2D8 = CVar(CLng(&H10)) 'Long
  loc_190C43C:             var_144 = CVar(((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) + Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_190C44C:             var_2F8 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_190C454:             Set var_184 = Me.FGrid
  loc_190C45A:             LateIdCallSt
  loc_190C491:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_190C499:             var_180 = CVar(CLng(&HF)) 'Long
  loc_190C4B3:             var_DC = CStr(Me.FGrid.TextMatrix))
  loc_190C4C4:             var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190C504:             If (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) <> "Yes")) Then
  loc_190C50B:               var_134 = CVar(CLng(var_AC)) 'Long
  loc_190C513:               var_180 = CVar(CLng(6)) 'Long
  loc_190C53C:               var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190C544:               var_1DC = CVar(CLng(8)) 'Long
  loc_190C56D:               var_1FC = CVar(CLng(var_AC)) 'Long
  loc_190C575:               var_21C = CVar(CLng(&H1B)) 'Long
  loc_190C5AF:               global_80 = (global_80 + ((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) + Val(CStr(Me.FGrid.TextMatrix)))))
  loc_190C5CD:             End If
  loc_190C5CD:           End If
  loc_190C5D0:         Else
  loc_190C5D4:           var_134 = CVar(CLng(var_AC)) 'Long
  loc_190C5DC:           var_180 = CVar(CLng(6)) 'Long
  loc_190C605:           var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190C60D:           var_1DC = CVar(CLng(8)) 'Long
  loc_190C636:           var_1FC = CVar(CLng(var_AC)) 'Long
  loc_190C63E:           var_21C = CVar(CLng(&HF)) 'Long
  loc_190C667:           var_25C = CVar(CLng(var_AC)) 'Long
  loc_190C66F:           var_27C = CVar(CLng(&H10)) 'Long
  loc_190C698:           var_124 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_190C6A8:           var_194 = CVar(CStr(Format(var_124, "0.00"))) 'String
  loc_190C6B0:           Set var_170 = Me.FGrid
  loc_190C6B6:           LateIdCallSt
  loc_190C6E7:           var_134 = CVar(CLng(var_AC)) 'Long
  loc_190C6EF:           var_180 = CVar(CLng(&HF)) 'Long
  loc_190C709:           var_DC = CStr(Me.FGrid.TextMatrix))
  loc_190C71A:           var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190C75A:           If (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) <> "Yes")) Then
  loc_190C761:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_190C769:             var_180 = CVar(CLng(6)) 'Long
  loc_190C792:             var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190C79A:             var_1DC = CVar(CLng(8)) 'Long
  loc_190C7D0:             global_80 = (global_80 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_190C7E8:           End If
  loc_190C7E8:         End If
  loc_190C7EC:         var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190C7F4:         var_1DC = CVar(CLng(6)) 'Long
  loc_190C81D:         var_1FC = CVar(CLng(var_AC)) 'Long
  loc_190C82E:         var_134 = CVar(CLng(var_AC)) 'Long
  loc_190C836:         var_180 = CVar(CLng(8)) 'Long
  loc_190C866:         Set var_16C = Me.FGrid
  loc_190C86C:         LateIdCallSt
  loc_190C891:         var_134 = CVar(CLng(var_AC)) 'Long
  loc_190C899:         var_180 = CVar(CLng(9)) 'Long
  loc_190C8B3:         var_DC = CStr(Me.FGrid.TextMatrix))
  loc_190C8CA:         Set var_E0 = Me.LblDummy
  loc_190C8D0:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_16C, CStr(Val(var_DC)), var_180, var_134, var_16C, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_190C8D8:         var_16C.Caption = var_180
  loc_190C8FD:         Set var_D0 = Me.LblCap
  loc_190C903:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC, var_134, CVar(CLng(9)))
  loc_190C90B:         var_1FC = var_E0.Tag
  loc_190C93E:         If (Trim(CVar(var_DC)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_190C945:           var_134 = CVar(CLng(var_AC)) 'Long
  loc_190C967:           var_DC = CStr(Me.FGrid.TextMatrix))
  loc_190C978:           If (var_DC <> "Yes") Then
  loc_190C988:             Set var_D0 = Me.TxtGt
  loc_190C98E:             Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC, CVar(CLng(&HA)))
  loc_190C996:             var_134 = var_E0.Text
  loc_190C9AA:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_190C9D4:             var_2AC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_190C9F3:             var_104 = CVar((Val(var_DC) + var_2AC)) 'Double
  loc_190CA10:             Set var_170 = Me.TxtGt
  loc_190CA16:             Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_184, CStr(Format(Trim(CVar(var_DC)), "0.00")), 1, 1, var_2AC)
  loc_190CA1E:             var_184.Text = CVar(CLng(&H10))
  loc_190CA47:           Else
  loc_190CA54:             Set var_D0 = Me.TxtGt
  loc_190CA5A:             Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC, var_134)
  loc_190CA62:             var_2A4 = var_E0.Text
  loc_190CA6F:             var_2A4 = Val(var_DC)
  loc_190CAA7:             Set var_16C = Me.TxtGt
  loc_190CAAD:             Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_170, CStr(Format(CVar(var_2A4), "0.00")), 1, 1)
  loc_190CAB5:             var_170.Text = var_2A4
  loc_190CAD5:           End If
  loc_190CAD5:         End If
  loc_190CAD8:       Next var_19C 'Integer
  loc_190CAE0:     Else
  loc_190CB05:       For var_314 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_AC = var_314 'Integer
  loc_190CB18:         Set var_D0 = Me.LblCap
  loc_190CB1E:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0)
  loc_190CB59:         If (Trim(CVar(var_E0.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_190CB60:           var_134 = CVar(CLng(var_AC)) 'Long
  loc_190CB68:           var_180 = CVar(CLng(&H14)) 'Long
  loc_190CB82:           var_DC = CStr(Me.FGrid.TextMatrix))
  loc_190CB93:           If (var_DC = "Y") Then
  loc_190CB9A:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_190CBB4:             Set var_D0 = Me.TxtPer
  loc_190CBBA:             Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC, CVar(CLng(&HF)))
  loc_190CBC2:             var_134 = var_E0.Text
  loc_190CBD1:             var_F4 = CVar(CStr(Val(var_DC))) 'String
  loc_190CBD9:             Set var_16C = Me.FGrid
  loc_190CBDF:             LateIdCallSt
  loc_190CBF6:           End If
  loc_190CBF6:         End If
  loc_190CC33:         Set var_E0 = Me.LblDummy
  loc_190CC39:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_16C, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(9)), CVar(CLng(var_AC)))
  loc_190CC41:         var_16C.Caption = var_16C
  loc_190CC5D:         var_134 = CVar(CLng(var_AC)) 'Long
  loc_190CC65:         var_180 = CVar(CLng(9)) 'Long
  loc_190CC8E:         var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190CC96:         var_1DC = CVar(CLng(&HF)) 'Long
  loc_190CCBF:         var_21C = CVar(CLng(var_AC)) 'Long
  loc_190CCC7:         var_23C = CVar(CLng(&H10)) 'Long
  loc_190CCFC:         var_168 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_190CD04:         Set var_16C = Me.FGrid
  loc_190CD0A:         LateIdCallSt
  loc_190CD35:         var_134 = CVar(CLng(var_AC)) 'Long
  loc_190CD3D:         var_180 = CVar(CLng(&HF)) 'Long
  loc_190CD57:         var_DC = CStr(Me.FGrid.TextMatrix))
  loc_190CD68:         var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190CD79:         Set var_E0 = Me.FGrid
  loc_190CDA8:         If (CVar(CLng(&HA)) And (CStr(var_E0.TextMatrix)) <> "Yes")) Then
  loc_190CDAF:           var_134 = CVar(CLng(var_AC)) 'Long
  loc_190CDB7:           var_180 = CVar(CLng(9)) 'Long
  loc_190CDD1:           var_DC = CStr(Me.FGrid.TextMatrix))
  loc_190CDD9:           var_2A4 = Val(var_DC)
  loc_190CDE9:           global_80 = (global_80 + var_2A4)
  loc_190CDF5:         End If
  loc_190CE02:         Set var_D0 = Me.LblCap
  loc_190CE08:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC, global_80, var_2A4, var_180, var_134)
  loc_190CE10:         var_1BC = var_E0.Tag
  loc_190CE43:         If (Trim(CVar(var_DC)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_190CE6C:           var_DC = CStr(Me.FGrid.TextMatrix))
  loc_190CE7D:           If (var_DC <> "Yes") Then
  loc_190CE8D:             Set var_D0 = Me.TxtGt
  loc_190CE93:             Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC, CVar(CLng(&HA)), CVar(CLng(var_AC)), (CDbl(Val(var_DC)) <> CDbl(0)))
  loc_190CE9B:             var_180 = var_E0.Text
  loc_190CEA8:             var_2A4 = Val(var_DC)
  loc_190CED9:             var_2AC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_190CEF8:             var_104 = CVar((var_2A4 + var_2AC)) 'Double
  loc_190CF15:             Set var_170 = Me.TxtGt
  loc_190CF1B:             Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_184, CStr(Format(Trim(CVar(var_DC)), "0.00")), 1, 1, var_2AC, CVar(CLng(&H10)))
  loc_190CF23:             var_184.Text = CVar(CLng(var_AC))
  loc_190CF4C:           Else
  loc_190CF59:             Set var_D0 = Me.TxtGt
  loc_190CF5F:             Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC, var_2A4)
  loc_190CF67:             var_134 = var_E0.Text
  loc_190CF74:             var_2A4 = Val(var_DC)
  loc_190CFAC:             Set var_16C = Me.TxtGt
  loc_190CFB2:             Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_170, CStr(Format(CVar(var_2A4), "0.00")), 1, 1)
  loc_190CFBA:             var_170.Text = var_2A4
  loc_190CFDA:           End If
  loc_190CFDA:         End If
  loc_190CFDD:       Next var_314 'Integer
  loc_190CFE2:     End If
  loc_190CFE5:   Else
  loc_190CFF2:     Set var_D0 = Me.TxtPer
  loc_190CFF8:     Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0)
  loc_190D012:     If (var_E0.Visible = &HFF) Then
  loc_190D01B:       Call Proc_169_73_12B1080(var_AA)
  loc_190D023:       var_B4 = var_2A4
  loc_190D033:       Set var_D0 = Me.TxtPer
  loc_190D039:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC)
  loc_190D041:       var_B4 = var_E0.Text
  loc_190D08E:       Set var_16C = Me.TxtGt
  loc_190D094:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_170, CStr(Format(CVar(((var_B4 * Val(var_DC)) / CDbl(&H64))), "0.00")), 1)
  loc_190D09C:       var_170.Text = 1
  loc_190D0C9:       Set var_D0 = Me.LblCap
  loc_190D0CF:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC)
  loc_190D0D7:       var_2A4 = var_E0.Tag
  loc_190D11F:       If CBool((Trim(CVar(var_DC)) = CVar(MemVar_1F95078 & "ADD")) And (var_90 > CDbl(0))) Then
  loc_190D14A:         var_DC = CStr(Format(var_90, "0.00"))
  loc_190D158:         Set var_D0 = Me.TxtGt
  loc_190D15E:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC)
  loc_190D166:         var_E0.Text = 1
  loc_190D17C:       End If
  loc_190D189:       Set var_D0 = Me.LblCap
  loc_190D18F:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC)
  loc_190D197:       1 = var_E0.Tag
  loc_190D1DF:       If CBool((Trim(CVar(var_DC)) = CVar(MemVar_1F95078 & "ADV")) And (var_98 > CDbl(0))) Then
  loc_190D20A:         var_DC = CStr(Format(var_98, "0.00"))
  loc_190D218:         Set var_D0 = Me.TxtGt
  loc_190D21E:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC)
  loc_190D226:         var_E0.Text = 1
  loc_190D23C:       End If
  loc_190D249:       Set var_D0 = Me.LblCap
  loc_190D24F:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC)
  loc_190D257:       1 = var_E0.Tag
  loc_190D29F:       If CBool((Trim(CVar(var_DC)) = CVar(MemVar_1F95078 & "DED")) And (var_A8 > CDbl(0))) Then
  loc_190D2D8:         Set var_D0 = Me.TxtGt
  loc_190D2DE:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, CStr(Format(var_A8, "0.00")))
  loc_190D2E6:         var_E0.Text = 1
  loc_190D2FC:       End If
  loc_190D301:       var_DC = CStr(var_B4)
  loc_190D30E:       Set var_D0 = Me.LblDummy
  loc_190D314:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC)
  loc_190D31C:       var_E0.Caption = 1
  loc_190D32E:     Else
  loc_190D33B:       Set var_D0 = Me.TxtPer
  loc_190D341:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0)
  loc_190D354:       var_134 = (var_E0.Visible = 0)
  loc_190D365:       Set var_16C = Me.LblCap
  loc_190D36B:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_170, var_DC)
  loc_190D373:       var_134 = var_170.Tag
  loc_190D3B4:       If CBool(var_2A4 And (Trim(CVar(var_DC)) = CVar(MemVar_1F95078 & "ADD"))) Then
  loc_190D3DF:         var_DC = CStr(Format(var_90, "0.00"))
  loc_190D3ED:         Set var_D0 = Me.TxtGt
  loc_190D3F3:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC)
  loc_190D3FB:         var_E0.Text = 1
  loc_190D414:       Else
  loc_190D421:         Set var_D0 = Me.TxtPer
  loc_190D427:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0)
  loc_190D43A:         var_134 = (var_E0.Visible = 0)
  loc_190D44B:         Set var_16C = Me.LblCap
  loc_190D451:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_170, var_DC)
  loc_190D459:         var_134 = var_170.Tag
  loc_190D49A:         If CBool(1 And (Trim(CVar(var_DC)) = CVar(MemVar_1F95078 & "ADV"))) Then
  loc_190D4C5:           var_DC = CStr(Format(var_98, "0.00"))
  loc_190D4D3:           Set var_D0 = Me.TxtGt
  loc_190D4D9:           Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC)
  loc_190D4E1:           var_E0.Text = 1
  loc_190D4FA:         Else
  loc_190D507:           Set var_D0 = Me.TxtPer
  loc_190D50D:           Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0)
  loc_190D515:           var_D2 = var_E0.Visible
  loc_190D520:           var_134 = (var_D2 = 0)
  loc_190D531:           Set var_16C = Me.LblCap
  loc_190D537:           Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_170, var_DC)
  loc_190D53F:           var_134 = var_170.Tag
  loc_190D580:           If CBool(1 And (Trim(CVar(var_DC)) = CVar(MemVar_1F95078 & "DED"))) Then
  loc_190D5B9:             Set var_D0 = Me.TxtGt
  loc_190D5BF:             Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, CStr(Format(var_A8, "0.00")))
  loc_190D5C7:             var_E0.Text = 1
  loc_190D5DD:           End If
  loc_190D5DD:         End If
  loc_190D5DD:       End If
  loc_190D5DD:     End If
  loc_190D5DD:   End If
  loc_190D5E0: Next var_198 'Integer
  loc_190D60A: For var_318 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_318 'Integer
  loc_190D614:   var_134 = CVar(CLng(var_AA)) 'Long
  loc_190D61C:   var_180 = CVar(CLng(6)) 'Long
  loc_190D645:   var_1BC = CVar(CLng(var_AA)) 'Long
  loc_190D64D:   var_1DC = CVar(CLng(8)) 'Long
  loc_190D656:   Set var_E0 = Me.FGrid
  loc_190D676:   var_21C = CVar(CLng(var_AA)) 'Long
  loc_190D67E:   var_23C = CVar(CLng(9)) 'Long
  loc_190D6BD:   LateIdCallSt
  loc_190D70A:   var_DC = CStr(Me.FGrid.TextMatrix))
  loc_190D71B:   If (var_DC <> "Yes") Then
  loc_190D72A:     Set var_D0 = Me.TxtGt
  loc_190D730:     Call 0.Method_Proc_169_70_190E6A80 (1, var_E0, var_DC, CVar(CLng(&HA)), CVar(CLng(var_AA)), Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_E0.TextMatrix))))), "0.00"))))
  loc_190D738:     1 = var_E0.Text
  loc_190D745:     var_2A4 = Val(var_DC)
  loc_190D776:     var_2AC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_190D795:     var_104 = CVar((var_2A4 + var_2AC)) 'Double
  loc_190D7B1:     Set var_170 = Me.TxtGt
  loc_190D7B7:     Call 0.Method_Proc_169_70_190E6A80 (1, var_184, CStr(Format(var_E0.TextMatrix), "0.00")), 1, 1, var_2AC, CVar(CLng(9)))
  loc_190D7BF:     var_184.Text = CVar(CLng(var_AA))
  loc_190D7E8:   Else
  loc_190D7F4:     Set var_D0 = Me.TxtGt
  loc_190D7FA:     Call 0.Method_Proc_169_70_190E6A80 (1, var_E0, var_DC, var_2A4, 1)
  loc_190D802:     var_23C = var_E0.Text
  loc_190D80F:     var_2A4 = Val(var_DC)
  loc_190D846:     Set var_16C = Me.TxtGt
  loc_190D84C:     Call 0.Method_Proc_169_70_190E6A80 (1, var_170, CStr(Format(CVar(var_2A4), "0.00")), 1, 1)
  loc_190D854:     var_170.Text = var_2A4
  loc_190D874:   End If
  loc_190D877: Next var_318 'Integer
  loc_190D880: Set var_D0 = Me.TopCtrl1
  loc_190D886: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_190D89A: Set var_E0 = Me.TopCtrl1
  loc_190D8A0: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Add"))
  loc_190D8C6: If ( Or (CStr() = "Edit")) Then
  loc_190D8D5:   Set var_D0 = Me.TxtGt
  loc_190D8DB:   Call 0.Method_Proc_169_70_190E6A88 (var_D2, var_AA)
  loc_190D8E6:   For var_31C =  To var_D2: 2 = var_31C 'Integer
  loc_190D8F9:     Set var_D0 = Me.TxtPer
  loc_190D8FF:     Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0)
  loc_190D907:     var_D2 = var_E0.Visible
  loc_190D923:     Set var_16C = Me.LblCap
  loc_190D929:     Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_170)
  loc_190D931:     var_DC = var_170.Tag
  loc_190D972:     If CBool((var_D2 = &HFF) And (Trim(CVar(var_DC)) = CVar(MemVar_1F95078 & "SCH"))) Then
  loc_190D97B:       Call Proc_169_73_12B1080(var_AA)
  loc_190D983:       var_B4 = var_2A4
  loc_190D993:       Set var_D0 = Me.TxtPer
  loc_190D999:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC)
  loc_190D9A1:       var_B4 = var_E0.Text
  loc_190D9AE:       var_2A4 = Val(var_DC)
  loc_190D9EE:       Set var_16C = Me.TxtGt
  loc_190D9F4:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_170, CStr(Format(CVar(((var_B4 * var_2A4) / CDbl(&H64))), "0.00")), 1)
  loc_190D9FC:       var_170.Text = 1
  loc_190DA2E:       Set var_D0 = Me.LblDummy
  loc_190DA34:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, CStr(var_B4))
  loc_190DA3C:       var_E0.Caption = var_2A4
  loc_190DA4B:     End If
  loc_190DA4E:   Next var_31C 'Integer
  loc_190DA53: End If
  loc_190DA66: Me.FGCat.Rows = 1
  loc_190DA93: For var_320 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_320 'Integer
  loc_190DAA3:   If (var_B8 > var_B6) Then
  loc_190DAB0:     If (var_C2 < var_B8) Then
  loc_190DAB7:       var_134 = CVar(CLng(var_AA)) 'Long
  loc_190DABF:       var_180 = CVar(CLng(&H16)) 'Long
  loc_190DADE:       var_1BC = CVar(CLng(var_AA)) 'Long
  loc_190DAE6:       var_1DC = CVar(CLng(8)) 'Long
  loc_190DB0F:       var_1FC = CVar(CLng(var_AA)) 'Long
  loc_190DB17:       var_21C = CVar(CLng(6)) 'Long
  loc_190DB6A:       var_384 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_190DB8D:       var_144 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_384)) 'Double
  loc_190DBC7:       var_388 = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), 1, 1, var_384, CVar(CLng(&H10)), CVar(CLng(var_AA)))
  loc_190DC1C:       Call Proc_169_72_180ED9C(CStr(Me.FGrid.TextMatrix)), var_AA, CSng(Format((var_D2 = &HFF) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F95078 & "SCH")), "0.00")), var_388, Val(CStr(Me.FGrid.TextMatrix))), Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_AA)))
  loc_190DC5B:     Else
  loc_190DC5F:       var_134 = CVar(CLng(var_AA)) 'Long
  loc_190DC67:       var_180 = CVar(CLng(&H16)) 'Long
  loc_190DC86:       var_1BC = CVar(CLng(var_AA)) 'Long
  loc_190DC8E:       var_1DC = CVar(CLng(8)) 'Long
  loc_190DCB7:       var_1FC = CVar(CLng(var_AA)) 'Long
  loc_190DCBF:       var_21C = CVar(CLng(6)) 'Long
  loc_190DCE1:       var_310 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_190DD12:       var_384 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_190DD35:       var_144 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * var_310) - var_384)) 'Double
  loc_190DD6F:       var_37C = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), 1, 1, var_384, CVar(CLng(&H10)), CVar(CLng(var_AA)))
  loc_190DD99:       Call Proc_169_72_180ED9C(CStr(Me.FGrid.TextMatrix)), var_AA, CSng(Format((var_D2 = &HFF) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F95078 & "SCH")), "0.00")), var_37C, 0, var_310)
  loc_190DDCF:     End If
  loc_190DDD2:   Else
  loc_190DDDC:     If (var_C2 < var_B8) Then
  loc_190DDE3:       var_134 = CVar(CLng(var_AA)) 'Long
  loc_190DDEB:       var_180 = CVar(CLng(&H16)) 'Long
  loc_190DE0A:       var_1BC = CVar(CLng(var_AA)) 'Long
  loc_190DE12:       var_1DC = CVar(CLng(8)) 'Long
  loc_190DE65:       var_310 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_190DEBE:       var_37C = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), 1, 1, var_310, CVar(CLng(6)), CVar(CLng(var_AA)))
  loc_190DED6:       Set var_184 = Me.FGrid
  loc_190DF13:       Call Proc_169_72_180ED9C(CStr(Me.FGrid.TextMatrix)), var_AA, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_310)), "0.00")), var_37C, Val(CStr(var_184.TextMatrix))), Val(CStr(var_184.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_AA)))
  loc_190DF4C:     Else
  loc_190DF50:       var_134 = CVar(CLng(var_AA)) 'Long
  loc_190DF58:       var_180 = CVar(CLng(&H16)) 'Long
  loc_190DF77:       var_1BC = CVar(CLng(var_AA)) 'Long
  loc_190DF7F:       var_1DC = CVar(CLng(8)) 'Long
  loc_190DFA1:       var_2B4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_190DFD2:       var_310 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_190E02B:       var_378 = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), 1, 1, var_310, CVar(CLng(6)), CVar(CLng(var_AA)))
  loc_190E055:       Call Proc_169_72_180ED9C(CStr(Me.FGrid.TextMatrix)), var_AA, CSng(Format(CVar((var_2B4 * var_310)), "0.00")), var_378, 0, var_2B4)
  loc_190E085:     End If
  loc_190E085:   End If
  loc_190E088: Next var_320 'Integer
  loc_190E0AC: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_190E0C2:   Me.FGCat.FixedRows = 1
  loc_190E0CA: End If
  loc_190E0DF: Set var_D0 = Me.TxtGt
  loc_190E0E5: Call 0.Method_Proc_169_70_190E6A88 (var_D2, var_AA)
  loc_190E0F0: For var_394 = CDbl(0) To var_D2: 1 = var_394 'Integer
  loc_190E11B:   For var_398 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_AC = var_398 'Integer
  loc_190E125:     var_134 = CVar(CLng(var_AC)) 'Long
  loc_190E12D:     var_180 = CVar(CLng(1)) 'Long
  loc_190E147:     var_DC = CStr(Me.FGCat.TextMatrix))
  loc_190E161:     Set var_E0 = Me.FGrid
  loc_190E18F:     If (CStr(var_E0.TextMatrix)) <> "Yes") Then
  loc_190E19F:       Set var_D0 = Me.LblCap
  loc_190E1A5:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC, CVar(CLng(&HA)), CVar(CLng(Val(var_DC))))
  loc_190E1AD:       var_180 = var_E0.Tag
  loc_190E1C7:       var_134 = CVar(CLng(var_AC)) 'Long
  loc_190E20F:       If (CVar(CLng(7)) = Trim(CVar(CStr(Me.FGCat.TextMatrix))))) Then
  loc_190E240:         var_2A4 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_190E250:         Set var_D0 = Me.TxtGt
  loc_190E256:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC, var_2A4, CVar(CLng(6)), CVar(CLng(var_AC)))
  loc_190E271:         var_148 = CStr((Val(var_DC) + var_2A4))
  loc_190E27E:         Set var_170 = Me.TxtGt
  loc_190E284:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_184, CStr(var_184.TextMatrix)), Trim(CVar(var_DC)))
  loc_190E28C:         var_184.Text = var_E0.Text
  loc_190E2AA:       End If
  loc_190E2AA:     End If
  loc_190E2AD:   Next var_398 'Integer
  loc_190E2BF:   Set var_D0 = Me.TxtGt
  loc_190E2C5:   Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0)
  loc_190E2DA:   var_2A4 = Val(var_E0.Text)
  loc_190E312:   Set var_16C = Me.TxtGt
  loc_190E318:   Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_170, CStr(Format(CVar(var_2A4), "0.00")))
  loc_190E320:   var_170.Text = 1
  loc_190E343: Next var_394 'Integer
  loc_190E354: Set var_D0 = Me.TxtGt
  loc_190E35A: Call 0.Method_Proc_169_70_190E6A88 (var_D2, var_AA)
  loc_190E365: For var_39C =  To var_D2: 2 = var_39C 'Integer
  loc_190E378:   Set var_D0 = Me.LblCap
  loc_190E37E:   Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0)
  loc_190E38E:   var_F4 = CVar(var_E0.Tag) 'String
  loc_190E3B9:   If (Trim(var_F4) = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_190E3C2:     Call Proc_169_73_12B1080(var_AA)
  loc_190E3CA:     var_B4 = var_2A4
  loc_190E3E5:     Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, CStr(var_B4))
  loc_190E3ED:     var_E0.Caption = var_B4
  loc_190E420:     unk_56D3B3.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill' And LogSite_Code='" & MemVar_1F95078 & "'", var_F4, -1
  loc_190E42B:     Set var_88 = Me.LblDummy
  loc_190E44F:     If (var_88.RecordCount > 0) Then
  loc_190E461:       var_D0 = var_88.Fields
  loc_190E469:       var_E0 = var_D0.Item("RoundOffType")
  loc_190E495:       Proc_6_85_12628F0(var_B4, CByte(2), CStr(Left(CVar(var_E0), 1)))
  loc_190E4D2:       Set var_16C = Me.TxtGt
  loc_190E4D8:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_170, CStr(Format(CVar(var_D0), "0.00")), 1)
  loc_190E4E0:       var_170.Text = 1
  loc_190E505:     Else
  loc_190E508:       var_DC = "S"
  loc_190E519:       Proc_6_85_12628F0(var_B4, CByte(2), var_DC)
  loc_190E548:       var_E4 = CStr(Format(CVar(var_2A4), "0.00"))
  loc_190E556:       Set var_D0 = Me.TxtGt
  loc_190E55C:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_E4, 1)
  loc_190E564:       var_E0.Text = 1
  loc_190E580:     End If
  loc_190E583:   Else
  loc_190E58A:     If (var_AA <> arg_C) Then
  loc_190E59A:       Set var_D0 = Me.LblCap
  loc_190E5A0:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, var_DC)
  loc_190E5A8:       var_2A4 = var_E0.Tag
  loc_190E5DA:       Set var_16C = Me.LblCap
  loc_190E5E0:       Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_170, var_E4)
  loc_190E5E8:       (Trim(CVar(var_DC)) = CVar(MemVar_1F95078 & "TOT")) = var_170.Tag
  loc_190E62D:       If CBool(var_2A4 Or (Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "NET"))) Then
  loc_190E636:         Call Proc_169_73_12B1080(var_AA)
  loc_190E670:         Set var_D0 = Me.TxtGt
  loc_190E676:         Call 0.Method_Proc_169_70_190E6A80 (var_AA, var_E0, CStr(Format(CVar(var_2A4), "0.00")))
  loc_190E67E:         var_E0.Text = 1
  loc_190E696:       End If
  loc_190E696:     End If
  loc_190E696:   End If
  loc_190E699: Next var_39C 'Integer
  loc_190E6A3: Set var_88 = Nothing
  loc_190E6A6: Exit Sub
End Sub

Public Sub Proc_169_71_12D74A4
  'Data Table: 56D3A8
  Dim var_C4 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_9C As Double
  Dim var_120 As String
  Dim unk_56D3B3 As Connection15
  Dim var_8C As Recordset15
  Dim var_160 As Variant
  Dim var_148 As Variant
  Dim var_150 As Variant
  Dim var_164 As Field20
  Dim var_A4 As Double
  Dim var_188 As Variant
  Dim var_134 As Variant
  Dim var_174 As Variant
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_144 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_94 As Double
  loc_12D6E39: For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D8 'Integer
  loc_12D6E43:   var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D6E4B:   var_108 = CVar(CLng(7)) 'Long
  loc_12D6E6D:   var_9C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12D6E7D:   var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D6E85:   var_108 = CVar(CLng(&H16)) 'Long
  loc_12D6EB8:   var_120 = "SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code) Where TS.Code='" & CStr(Me.FGrid.TextMatrix))
  loc_12D6EC8:   unk_56D3B3.Execute var_120 & "' ORDER BY SNO DESC", var_144, -1
  loc_12D6ED3:   Set var_8C = var_148
  loc_12D6F01:   If (var_8C.RecordCount > 0) Then
  loc_12D6F08:     var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D6F10:     var_108 = CVar(CLng(&H16)) 'Long
  loc_12D6F31:     var_160 = 0
  loc_12D6F52:     var_120 = "SELECT IsNull(Sum(TS.Rate),0) FROM TaxStru AS TS inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code) Where TS.Code='" & CStr(Me.FGrid.TextMatrix))
  loc_12D6F62:     unk_56D3B3.Execute var_120 & "'", var_144, -1
  loc_12D6F6A:     var_148 = var_148.Fields
  loc_12D6F72:     var_160 = var_150.Item(var_150)
  loc_12D6F7A:     var_164 = var_164.Value
  loc_12D6FA7:     var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D6FAF:     var_108 = CVar(CLng(7)) 'Long
  loc_12D6FDD:     var_9C = ((Val(CStr(Me.FGrid.TextMatrix))) / (CDbl(&H64) + CSng(var_174))) * CDbl(&H64))
  loc_12D6FEC:     var_A4 = CDbl(0)
  loc_12D6FEF:     ' Referenced from: 12D70A8
  loc_12D6FFE:     If Not(var_8C.EOF) Then
  loc_12D7005:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D700D:       var_108 = CVar(CLng(6)) 'Long
  loc_12D7076:       var_AC = CSng(((CVar(Val(CStr(Me.FGrid.TextMatrix)))) * (CVar(var_9C) * var_8C.Fields.Item("Rate").Value)) / 100))
  loc_12D7093:       var_A4 = (var_AC + var_A4)
  loc_12D709D:       var_B4 = (var_B4 + var_AC)
  loc_12D70A3:       var_8C.MoveNext
  loc_12D70A8:       GoTo loc_12D6FEF
  loc_12D70AB:     End If
  loc_12D70AF:     var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D70B7:     var_108 = CVar(CLng(&H1A)) 'Long
  loc_12D70E2:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_12D70E9:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D70F1:       var_108 = CVar(CLng(8)) 'Long
  loc_12D70FB:       var_D4 = CVar(CStr(var_9C)) 'String
  loc_12D7103:       Set var_C4 = Me.FGrid
  loc_12D7109:       LateIdCallSt
  loc_12D711B:       var_134 = CVar(CLng(var_86)) 'Long
  loc_12D7123:       var_188 = CVar(CLng(6)) 'Long
  loc_12D714C:       var_1C8 = CVar(CLng(var_86)) 'Long
  loc_12D7154:       var_1E8 = CVar(CLng(9)) 'Long
  loc_12D715D:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D7165:       var_108 = CVar(CLng(8)) 'Long
  loc_12D718D:       var_174 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_12D7195:       Set var_150 = Me.FGrid
  loc_12D719B:       LateIdCallSt
  loc_12D71C0:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D71C8:       var_108 = CVar(CLng(9)) 'Long
  loc_12D71F4:       var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_12D7203:     Else
  loc_12D7207:       var_134 = CVar(CLng(var_86)) 'Long
  loc_12D720F:       var_188 = CVar(CLng(8)) 'Long
  loc_12D7218:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D7220:       var_108 = CVar(CLng(7)) 'Long
  loc_12D7244:       var_144 = CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))) 'String
  loc_12D724C:       Set var_148 = Me.FGrid
  loc_12D7252:       LateIdCallSt
  loc_12D726F:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D7277:       var_108 = CVar(CLng(8)) 'Long
  loc_12D7296:       var_160 = CVar(CLng(var_86)) 'Long
  loc_12D729E:       var_1A8 = CVar(CLng(8)) 'Long
  loc_12D72CB:       var_1B8 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_12D72D3:       Set var_148 = Me.FGrid
  loc_12D72D9:       LateIdCallSt
  loc_12D72F9:       var_134 = CVar(CLng(var_86)) 'Long
  loc_12D7301:       var_188 = CVar(CLng(6)) 'Long
  loc_12D732A:       var_1C8 = CVar(CLng(var_86)) 'Long
  loc_12D7332:       var_1E8 = CVar(CLng(9)) 'Long
  loc_12D733B:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D7343:       var_108 = CVar(CLng(8)) 'Long
  loc_12D736B:       var_174 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_12D7373:       Set var_150 = Me.FGrid
  loc_12D7379:       LateIdCallSt
  loc_12D739E:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D73A6:       var_108 = CVar(CLng(9)) 'Long
  loc_12D73C5:       var_160 = CVar(CLng(var_86)) 'Long
  loc_12D73CD:       var_1A8 = CVar(CLng(9)) 'Long
  loc_12D73FA:       var_1B8 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_12D7402:       Set var_148 = Me.FGrid
  loc_12D7408:       LateIdCallSt
  loc_12D7428:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D7430:       var_108 = CVar(CLng(9)) 'Long
  loc_12D745C:       var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_12D7468:     End If
  loc_12D746C:     var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D7474:     var_108 = CVar(CLng(&H12)) 'Long
  loc_12D747E:     var_D4 = CVar(CStr(var_A4)) 'String
  loc_12D7486:     Set var_C4 = Me.FGrid
  loc_12D748C:     LateIdCallSt
  loc_12D749A:   End If
  loc_12D749D: Next var_D8 'Integer
  loc_12D74A2: Exit Sub
End Sub

Public Sub Proc_169_72_180ED9C(arg_C, arg_10, arg_14) '180ED9C
  'Data Table: 56D3A8
  Dim var_E4 As String
  Dim var_E8 As String
  Dim unk_56D3B3 As Connection15
  Dim var_D8 As Recordset15
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_108 As Variant
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_13C As Variant
  Dim var_12C As Variant
  Dim var_C0 As Recordset15
  Dim var_170 As Variant
  Dim var_14C As Variant
  Dim var_184 As Variant
  Dim var_198 As Variant
  Dim var_1CC As Variant
  Dim var_D0 As Double
  Dim var_200 As Double
  Dim var_16C As Variant
  Dim var_E0 As Recordset15
  Dim var_11C As MSHFlexGrid
  Dim var_1F4 As Double
  Dim var_9C As Double
  Dim var_1BC As Variant
  loc_180CA8C: unk_56D3B3.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "'", var_108, -1
  loc_180CA97: Set var_D8 = var_10C
  loc_180CABB: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_180CACB: unk_56D3B3.Execute var_E4 & "'", var_108, -1
  loc_180CAD6: Set var_8C = var_10C
  loc_180CAFA: If (var_D8.RecordCount > 0) Then
  loc_180CB12:   var_10C = var_D8.Fields
  loc_180CB39:   If (var_10C <> Proc_6_38_E69628(CVar(var_10C.Item("RestCode")), global_52)) Then
  loc_180CB3E:     var_DA = &HFF
  loc_180CB44:   Else
  loc_180CB46:     var_DA = 0
  loc_180CB49:   End If
  loc_180CB4C: Else
  loc_180CB4E:   var_DA = 0
  loc_180CB51: End If
  loc_180CB54: var_94 = arg_14
  loc_180CB59: var_86 = 1
  loc_180CB5F: var_A8 = var_94
  loc_180CB65: var_B0 = var_94
  loc_180CB6B: var_B8 = CDbl(0)
  loc_180CB82: If (var_8C.RecordCount > 0) Then
  loc_180CB85:   ' Referenced from: 180ED70
  loc_180CB94:   If Not(var_8C.EOF) Then
  loc_180CB9B:     Set var_11C = Me.FGCat
  loc_180CB9E:     var_F8 = vbNullString
  loc_180CBC3:     If (var_8C.RecordCount > 0) Then
  loc_180CBCC:       var_D2 = (var_D2 + 1)
  loc_180CBD2:       var_F8 = "Nature"
  loc_180CBF7:       var_13C = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_F8)), var_D2, FGCat.DispID_10000, var_F8, var_B8, var_B0, var_A8)) 'String
  loc_180CC05:       var_15C = Trim(var_13C) 'Variant
  loc_180CC1E:       If (var_15C = "On Base Amt") Then
  loc_180CC49:         var_13C = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CondApp")), var_86, var_94, var_DA)) 'String
  loc_180CC6B:         If (Trim(var_13C) = "Room Rate") Then
  loc_180CC79:           If (global_112 = "Room Service") Then
  loc_180CCA2:             Proc_6_39_E7D3A0(var_13C, CVar(var_8C.Fields.Item("Limit")), var_DA)
  loc_180CCD0:             Proc_6_39_E7D3A0(var_16C, CVar(var_C0.Fields.Item("RoomRate")), var_13C)
  loc_180CCD8:             var_184 = (var_DA <= var_16C)
  loc_180CD02:             Proc_6_39_E7D3A0(var_1BC, CVar(var_8C.Fields.Item("Rate")))
  loc_180CD32:             If CBool(var_184 And (var_1BC > 0)) Then
  loc_180CD75:               If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_180CDB3:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_180CDC6:               Else
  loc_180CDF9:                 var_200 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_180CE22:                 Proc_6_142_14A62A0(((var_200 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_180CE27:                 var_D0 = var_200
  loc_180CE3B:               End If
  loc_180CE42:               If (var_D0 > CDbl(0)) Then
  loc_180CE5E:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180CE66:                 var_198 = CVar(CLng(0)) 'Long
  loc_180CE70:                 var_13C = CVar(CStr(var_86)) 'String
  loc_180CE77:                 LateIdCallSt
  loc_180CEA2:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180CEAA:                 var_198 = CVar(CLng(1)) 'Long
  loc_180CEB4:                 var_13C = CVar(CStr(arg_10)) 'String
  loc_180CEBB:                 LateIdCallSt
  loc_180CED3:                 If (var_DA = 0) Then
  loc_180CEDA:                   Set var_170 = Me.FGCat
  loc_180CEEF:                   var_12C = CVar((CLng(var_170.Rows) - 1)) 'Long
  loc_180CEF7:                   var_1CC = CVar(CLng(2)) 'Long
  loc_180CF27:                   var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_180CF2E:                   LateIdCallSt
  loc_180CF4B:                 Else
  loc_180CF66:                   var_E8 = "Select RevCode as Code from SundryType where LogSite_Code='" & MemVar_1F95078 & "' and v_type in (Select V_Type from Voucher_Type where Restcode='"
  loc_180CFA4:                   var_14C = CVar(var_E8 & global_52 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_180CFBB:                   unk_56D3B3.Execute CStr(var_14C & "')"), var_184, -1
  loc_180CFC6:                   Set var_E0 = var_170
  loc_180CFFE:                   If (var_E0.RecordCount > 0) Then
  loc_180D01A:                     var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D022:                     var_1CC = CVar(CLng(2)) 'Long
  loc_180D052:                     var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_180D059:                     LateIdCallSt
  loc_180D073:                   End If
  loc_180D073:                 End If
  loc_180D08C:                 var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D094:                 var_1CC = CVar(CLng(3)) 'Long
  loc_180D0C4:                 var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_180D0CB:                 LateIdCallSt
  loc_180D0FE:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D106:                 var_198 = CVar(CLng(4)) 'Long
  loc_180D110:                 var_13C = CVar(CStr(var_A8)) 'String
  loc_180D117:                 LateIdCallSt
  loc_180D142:                 var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D14A:                 var_1CC = CVar(CLng(5)) 'Long
  loc_180D17A:                 var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_180D181:                 LateIdCallSt
  loc_180D1B4:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D1BC:                 var_198 = CVar(CLng(6)) 'Long
  loc_180D1C6:                 var_13C = CVar(CStr(var_D0)) 'String
  loc_180D1CD:                 LateIdCallSt
  loc_180D1F8:                 var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D200:                 var_1CC = CVar(CLng(7)) 'Long
  loc_180D230:                 var_14C = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_180D237:                 LateIdCallSt
  loc_180D26A:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D272:                 var_198 = CVar(CLng(8)) 'Long
  loc_180D281:                 LateIdCallSt
  loc_180D292:               Else
  loc_180D298:                 var_86 = (var_86 - 1)
  loc_180D2AE:                 var_F8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_180D2C4:               End If
  loc_180D2DD:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D2E5:               var_198 = CVar(CLng(6)) 'Long
  loc_180D30A:               var_9C = (var_9C + Val(CStr(var_11C.TextMatrix))))
  loc_180D333:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D33B:               var_198 = CVar(CLng(6)) 'Long
  loc_180D356:               var_1F4 = Val(CStr(var_11C.TextMatrix)))
  loc_180D360:               var_94 = (var_94 + var_1F4)
  loc_180D377:               var_B0 = (var_B0 + var_D0)
  loc_180D37D:               var_B8 = var_D0
  loc_180D387:               var_B0 = (var_B0 + var_D0)
  loc_180D38D:               var_B8 = var_D0
  loc_180D390:             End If
  loc_180D390:           End If
  loc_180D393:         Else
  loc_180D3B9:           var_13C = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_180D3D3:           If (var_13C = "No") Then
  loc_180D415:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64))
  loc_180D428:           Else
  loc_180D488:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8)
  loc_180D48D:             var_D0 = var_B0
  loc_180D4A1:           End If
  loc_180D4C7:           Proc_6_39_E7D3A0(var_13C, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B8, var_B0)
  loc_180D501:           Proc_6_39_E7D3A0(var_184, CVar(var_8C.Fields.Item("Rate")), (var_13C <= CVar(var_94)), var_94)
  loc_180D52B:           If CBool(var_1F4 And (var_184 > 0)) Then
  loc_180D535:             If (var_D0 > CDbl(0)) Then
  loc_180D551:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D559:               var_198 = CVar(CLng(0)) 'Long
  loc_180D563:               var_13C = CVar(CStr(var_86)) 'String
  loc_180D56A:               LateIdCallSt
  loc_180D595:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D59D:               var_198 = CVar(CLng(1)) 'Long
  loc_180D5A7:               var_13C = CVar(CStr(arg_10)) 'String
  loc_180D5AE:               LateIdCallSt
  loc_180D5C6:               If (var_DA = 0) Then
  loc_180D5CD:                 Set var_170 = Me.FGCat
  loc_180D5E2:                 var_12C = CVar((CLng(var_170.Rows) - 1)) 'Long
  loc_180D5EA:                 var_1CC = CVar(CLng(2)) 'Long
  loc_180D61A:                 var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_180D621:                 LateIdCallSt
  loc_180D63E:               Else
  loc_180D655:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_52
  loc_180D689:                 var_14C = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_180D6A0:                 unk_56D3B3.Execute CStr(var_14C & "')"), var_184, -1
  loc_180D6AB:                 Set var_E0 = var_170
  loc_180D6DF:                 If (var_E0.RecordCount > 0) Then
  loc_180D6FB:                   var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D703:                   var_1CC = CVar(CLng(2)) 'Long
  loc_180D733:                   var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_180D73A:                   LateIdCallSt
  loc_180D754:                 End If
  loc_180D754:               End If
  loc_180D76D:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D775:               var_1CC = CVar(CLng(3)) 'Long
  loc_180D7A5:               var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_180D7AC:               LateIdCallSt
  loc_180D7DF:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D7E7:               var_198 = CVar(CLng(4)) 'Long
  loc_180D7F5:               var_13C = CVar(CStr((var_A8 + arg_1C))) 'String
  loc_180D7FC:               LateIdCallSt
  loc_180D827:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D82F:               var_1CC = CVar(CLng(5)) 'Long
  loc_180D85F:               var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_180D866:               LateIdCallSt
  loc_180D899:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D8AB:               var_13C = CVar(CStr(var_D0)) 'String
  loc_180D8B2:               LateIdCallSt
  loc_180D8CE:               var_13C = Me.FGCat.Rows
  loc_180D8DD:               var_12C = CVar((CLng(var_13C) - 1)) 'Long
  loc_180D8ED:               var_F8 = "Sundry"
  loc_180D912:               var_14C = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_F8)), CVar(CLng(7)), "')", var_11C, var_13C, CVar(CLng(6)), var_F8)) 'String
  loc_180D919:               LateIdCallSt
  loc_180D94A:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D952:               var_198 = CVar(CLng(8)) 'Long
  loc_180D961:               LateIdCallSt
  loc_180D96F:             End If
  loc_180D988:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D990:             var_198 = CVar(CLng(6)) 'Long
  loc_180D9B5:             var_9C = (var_9C + Val(CStr(var_11C.TextMatrix))))
  loc_180D9DE:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180D9E6:             var_198 = CVar(CLng(6)) 'Long
  loc_180DA01:             var_1F4 = Val(CStr(var_11C.TextMatrix)))
  loc_180DA0B:             var_94 = (var_94 + var_1F4)
  loc_180DA22:             var_B0 = (var_B0 + var_D0)
  loc_180DA28:             var_B8 = var_D0
  loc_180DA2B:           End If
  loc_180DA2B:         End If
  loc_180DA2E:       Else
  loc_180DA39:         If (var_15C = "On Running Total") Then
  loc_180DA62:           var_13C = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_180DA7C:           If (var_13C = "No") Then
  loc_180DABA:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_180DACD:           Else
  loc_180DB29:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_180DB2E:             var_D0 = var_94
  loc_180DB42:           End If
  loc_180DB68:           Proc_6_39_E7D3A0(var_13C, CVar(var_8C.Fields.Item("Rate")), var_D0, var_1F4, var_198)
  loc_180DB82:           If (var_13C > 0) Then
  loc_180DB8C:             If (var_D0 > CDbl(0)) Then
  loc_180DBA8:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180DBB0:               var_198 = CVar(CLng(0)) 'Long
  loc_180DBBA:               var_13C = CVar(CStr(var_86)) 'String
  loc_180DBC1:               LateIdCallSt
  loc_180DBEC:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180DBF4:               var_198 = CVar(CLng(1)) 'Long
  loc_180DBFE:               var_13C = CVar(CStr(arg_10)) 'String
  loc_180DC05:               LateIdCallSt
  loc_180DC1D:               If (var_DA = 0) Then
  loc_180DC24:                 Set var_170 = Me.FGCat
  loc_180DC39:                 var_12C = CVar((CLng(var_170.Rows) - 1)) 'Long
  loc_180DC41:                 var_1CC = CVar(CLng(2)) 'Long
  loc_180DC71:                 var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_180DC78:                 LateIdCallSt
  loc_180DC95:               Else
  loc_180DCAC:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_52
  loc_180DCE0:                 var_14C = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_180DCF7:                 unk_56D3B3.Execute CStr(var_14C & "')"), var_184, -1
  loc_180DD02:                 Set var_E0 = var_170
  loc_180DD36:                 If (var_E0.RecordCount > 0) Then
  loc_180DD52:                   var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180DD5A:                   var_1CC = CVar(CLng(2)) 'Long
  loc_180DD8A:                   var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_180DD91:                   LateIdCallSt
  loc_180DDAB:                 End If
  loc_180DDAB:               End If
  loc_180DDC4:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180DDCC:               var_1CC = CVar(CLng(3)) 'Long
  loc_180DDFC:               var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_180DE03:               LateIdCallSt
  loc_180DE36:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180DE3E:               var_198 = CVar(CLng(4)) 'Long
  loc_180DE48:               var_13C = CVar(CStr(var_B0)) 'String
  loc_180DE4F:               LateIdCallSt
  loc_180DE7A:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180DE82:               var_1CC = CVar(CLng(5)) 'Long
  loc_180DEB2:               var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_180DEB9:               LateIdCallSt
  loc_180DEEC:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180DEF4:               var_198 = CVar(CLng(6)) 'Long
  loc_180DEFE:               var_13C = CVar(CStr(var_D0)) 'String
  loc_180DF05:               LateIdCallSt
  loc_180DF30:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180DF38:               var_1CC = CVar(CLng(7)) 'Long
  loc_180DF68:               var_14C = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_180DF6F:               LateIdCallSt
  loc_180DFA2:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180DFAA:               var_198 = CVar(CLng(8)) 'Long
  loc_180DFB9:               LateIdCallSt
  loc_180DFC7:             End If
  loc_180DFE0:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180DFE8:             var_198 = CVar(CLng(6)) 'Long
  loc_180E00D:             var_9C = (var_9C + Val(CStr(var_11C.TextMatrix))))
  loc_180E036:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E03E:             var_198 = CVar(CLng(6)) 'Long
  loc_180E063:             var_94 = (var_94 + Val(CStr(var_11C.TextMatrix))))
  loc_180E07A:             var_B0 = (var_B0 + var_D0)
  loc_180E080:             var_B8 = var_D0
  loc_180E083:           End If
  loc_180E086:         Else
  loc_180E091:           If (var_15C = "On Prev. Tax Amt") Then
  loc_180E0D4:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_180E112:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_180E125:             Else
  loc_180E181:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_180E186:               var_D0 = var_94
  loc_180E19A:             End If
  loc_180E1A1:             If (var_D0 > CDbl(0)) Then
  loc_180E1BD:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E1C5:               var_198 = CVar(CLng(0)) 'Long
  loc_180E1CF:               var_13C = CVar(CStr(var_86)) 'String
  loc_180E1D6:               LateIdCallSt
  loc_180E201:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E209:               var_198 = CVar(CLng(1)) 'Long
  loc_180E213:               var_13C = CVar(CStr(arg_10)) 'String
  loc_180E21A:               LateIdCallSt
  loc_180E232:               If (var_DA = 0) Then
  loc_180E239:                 Set var_170 = Me.FGCat
  loc_180E24E:                 var_12C = CVar((CLng(var_170.Rows) - 1)) 'Long
  loc_180E256:                 var_1CC = CVar(CLng(2)) 'Long
  loc_180E286:                 var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_180E28D:                 LateIdCallSt
  loc_180E2AA:               Else
  loc_180E2C1:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_52
  loc_180E2F5:                 var_14C = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_180E30C:                 unk_56D3B3.Execute CStr(var_14C & "')"), var_184, -1
  loc_180E317:                 Set var_E0 = var_170
  loc_180E34B:                 If (var_E0.RecordCount > 0) Then
  loc_180E367:                   var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E36F:                   var_1CC = CVar(CLng(2)) 'Long
  loc_180E39F:                   var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_180E3A6:                   LateIdCallSt
  loc_180E3C0:                 End If
  loc_180E3C0:               End If
  loc_180E3D9:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E3E1:               var_1CC = CVar(CLng(3)) 'Long
  loc_180E411:               var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_180E418:               LateIdCallSt
  loc_180E44B:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E453:               var_198 = CVar(CLng(4)) 'Long
  loc_180E45D:               var_13C = CVar(CStr(var_B8)) 'String
  loc_180E464:               LateIdCallSt
  loc_180E48F:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E497:               var_1CC = CVar(CLng(5)) 'Long
  loc_180E4C7:               var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_180E4CE:               LateIdCallSt
  loc_180E501:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E509:               var_198 = CVar(CLng(6)) 'Long
  loc_180E513:               var_13C = CVar(CStr(var_D0)) 'String
  loc_180E51A:               LateIdCallSt
  loc_180E545:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E54D:               var_1CC = CVar(CLng(7)) 'Long
  loc_180E57D:               var_14C = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_180E584:               LateIdCallSt
  loc_180E5B7:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E5BF:               var_198 = CVar(CLng(8)) 'Long
  loc_180E5CE:               LateIdCallSt
  loc_180E5DC:             End If
  loc_180E5F5:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E5FD:             var_198 = CVar(CLng(6)) 'Long
  loc_180E622:             var_9C = (var_9C + Val(CStr(var_11C.TextMatrix))))
  loc_180E64B:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E653:             var_198 = CVar(CLng(6)) 'Long
  loc_180E66E:             var_1F4 = Val(CStr(var_11C.TextMatrix)))
  loc_180E678:             var_94 = (var_94 + var_1F4)
  loc_180E68F:             var_B0 = (var_B0 + var_D0)
  loc_180E695:             var_B8 = var_D0
  loc_180E69B:           Else
  loc_180E6C1:             var_13C = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_180E6DB:             If (var_13C = "No") Then
  loc_180E719:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_180E72C:             Else
  loc_180E788:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_180E78D:               var_D0 = var_94
  loc_180E7A1:             End If
  loc_180E7A4:             var_F8 = "Limit"
  loc_180E7C7:             Proc_6_39_E7D3A0(var_13C, CVar(var_8C.Fields.Item(var_F8)), var_D0, var_1F4, var_198)
  loc_180E801:             Proc_6_39_E7D3A0(var_184, CVar(var_8C.Fields.Item("Rate")), (var_13C <= CVar(var_94)), var_F8)
  loc_180E82B:             If CBool(var_9C And (var_184 > 0)) Then
  loc_180E835:               If (var_D0 > CDbl(0)) Then
  loc_180E851:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E859:                 var_198 = CVar(CLng(0)) 'Long
  loc_180E863:                 var_13C = CVar(CStr(var_86)) 'String
  loc_180E86A:                 LateIdCallSt
  loc_180E895:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E89D:                 var_198 = CVar(CLng(1)) 'Long
  loc_180E8A7:                 var_13C = CVar(CStr(arg_10)) 'String
  loc_180E8AE:                 LateIdCallSt
  loc_180E8C6:                 If (var_DA = 0) Then
  loc_180E8CD:                   Set var_170 = Me.FGCat
  loc_180E8E2:                   var_12C = CVar((CLng(var_170.Rows) - 1)) 'Long
  loc_180E8EA:                   var_1CC = CVar(CLng(2)) 'Long
  loc_180E91A:                   var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_180E921:                   LateIdCallSt
  loc_180E93E:                 Else
  loc_180E955:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_52
  loc_180E989:                   var_14C = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_180E9A0:                   unk_56D3B3.Execute CStr(var_14C & "')"), var_184, -1
  loc_180E9AB:                   Set var_E0 = var_170
  loc_180E9DF:                   If (var_E0.RecordCount > 0) Then
  loc_180E9FB:                     var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EA03:                     var_1CC = CVar(CLng(2)) 'Long
  loc_180EA33:                     var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_180EA3A:                     LateIdCallSt
  loc_180EA54:                   End If
  loc_180EA54:                 End If
  loc_180EA6D:                 var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EA75:                 var_1CC = CVar(CLng(3)) 'Long
  loc_180EAA5:                 var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_180EAAC:                 LateIdCallSt
  loc_180EADF:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EAE7:                 var_198 = CVar(CLng(4)) 'Long
  loc_180EAF1:                 var_13C = CVar(CStr(var_A8)) 'String
  loc_180EAF8:                 LateIdCallSt
  loc_180EB23:                 var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EB2B:                 var_1CC = CVar(CLng(5)) 'Long
  loc_180EB5B:                 var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_180EB62:                 LateIdCallSt
  loc_180EB95:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EBA7:                 var_13C = CVar(CStr(var_D0)) 'String
  loc_180EBAE:                 LateIdCallSt
  loc_180EBCA:                 var_13C = Me.FGCat.Rows
  loc_180EBD9:                 var_12C = CVar((CLng(var_13C) - 1)) 'Long
  loc_180EBE9:                 var_F8 = "Sundry"
  loc_180EC0E:                 var_14C = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_F8)), CVar(CLng(7)), "')", var_11C, var_13C, CVar(CLng(6)), var_F8)) 'String
  loc_180EC15:                 LateIdCallSt
  loc_180EC46:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EC4E:                 var_198 = CVar(CLng(8)) 'Long
  loc_180EC5D:                 LateIdCallSt
  loc_180EC6B:               End If
  loc_180EC84:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EC8C:               var_198 = CVar(CLng(6)) 'Long
  loc_180ECB1:               var_9C = (var_9C + Val(CStr(var_11C.TextMatrix))))
  loc_180ECDA:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180ECE2:               var_198 = CVar(CLng(6)) 'Long
  loc_180ED07:               var_94 = (var_94 + Val(CStr(var_11C.TextMatrix))))
  loc_180ED1E:               var_B0 = (var_B0 + var_D0)
  loc_180ED24:               var_B8 = var_D0
  loc_180ED27:             End If
  loc_180ED27:           End If
  loc_180ED27:         End If
  loc_180ED27:       End If
  loc_180ED27:     End If
  loc_180ED2D:     var_86 = (var_86 + 1)
  loc_180ED32:     Set var_11C = Nothing 
  loc_180ED3A:     var_F8 = CVar(CLng(arg_10)) 'Long
  loc_180ED42:     var_198 = CVar(CLng(&H12)) 'Long
  loc_180ED4C:     var_108 = CVar(CStr(var_9C)) 'String
  loc_180ED54:     Set var_10C = Me.FGrid
  loc_180ED5A:     LateIdCallSt
  loc_180ED6B:     var_8C.MoveNext
  loc_180ED70:     GoTo loc_180CB85
  loc_180ED73:   End If
  loc_180ED78:   Set var_8C = Nothing
  loc_180ED80:   Set var_C4 = Nothing
  loc_180ED88:   Set var_C0 = Nothing
  loc_180ED90:   Set var_D8 = Nothing
  loc_180ED98:   Set var_E0 = Nothing
  loc_180ED9B: End If
  loc_180ED9B: Exit Sub
End Sub

Public Sub Proc_169_73_12B1080(arg_C) '12B1080
  'Data Table: 56D3A8
  Dim var_AC As Variant
  Dim var_D4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_128 As Variant
  Dim var_D0 As Variant
  Dim var_160 As Double
  Dim var_A0 As Double
  Dim var_228 As Double
  Dim var_168 As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_18C As Variant
  Dim var_20C As Variant
  Dim var_23C As Label
  Dim var_8C As Double
  Dim var_1AC As Variant
  loc_12B0A89: Set var_A8 = Me.TxtGt
  loc_12B0A8F: Call 0.Method_Proc_169_73_12B10800 (arg_C, var_AC)
  loc_12B0AAE: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_12B0ACC: Set var_A8 = Me.LblCap
  loc_12B0AD2: Call 0.Method_Proc_169_73_12B10800 (arg_C, var_AC)
  loc_12B0AFC: If (var_AC.Tag = MemVar_1F95078 & "SCH") Then
  loc_12B0B24:   For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_D8 'Integer
  loc_12B0B2E:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_12B0B36:     var_108 = CVar(CLng(&H19)) 'Long
  loc_12B0B50:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_12B0B5C:     var_128 = CVar(CLng(var_A2)) 'Long
  loc_12B0B9C:     If (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) <> "Yes")) Then
  loc_12B0BA3:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_12B0BAB:       var_108 = CVar(CLng(9)) 'Long
  loc_12B0BD7:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_12B0BE7:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_12B0BEF:       var_108 = CVar(CLng(9)) 'Long
  loc_12B0C11:       var_160 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12B0C29:       Set var_AC = Me.FGrid
  loc_12B0C42:       var_228 = Val(CStr(var_AC.TextMatrix)))
  loc_12B0C52:       Set var_164 = Me.TxtPer
  loc_12B0C58:       Call 0.Method_Proc_169_73_12B10800 (arg_C, var_168, var_16C, var_228, CVar(CLng(&H10)), CVar(CLng(var_A2)), var_160)
  loc_12B0C60:       var_108 = var_168.Text
  loc_12B0C74:       var_1CC = CVar(CLng(var_A2)) 'Long
  loc_12B0C7C:       var_1EC = CVar(CLng(&H1B)) 'Long
  loc_12B0CA5:       var_18C = CVar((((var_160 - var_228) * Val(var_16C)) / CDbl(&H64))) 'Double
  loc_12B0CB5:       var_20C = CVar(CStr(Format(var_18C, "0.00"))) 'String
  loc_12B0CBD:       Set var_220 = Me.FGrid
  loc_12B0CC3:       LateIdCallSt
  loc_12B0CF0:     End If
  loc_12B0CF3:   Next var_D8 'Integer
  loc_12B0CFB: Else
  loc_12B0D20:   For var_234 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_A2 = var_234 'Integer
  loc_12B0D2A:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_12B0D32:     var_108 = CVar(CLng(&HA)) 'Long
  loc_12B0D5D:     If (CStr(Me.FGrid.TextMatrix)) <> "Yes") Then
  loc_12B0D64:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_12B0D6C:       var_108 = CVar(CLng(9)) 'Long
  loc_12B0D98:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_12B0DA4:     End If
  loc_12B0DA7:   Next var_234 'Integer
  loc_12B0DAC: End If
  loc_12B0DB6: If (Len(var_90) > 0) Then
  loc_12B0DE8:   Set var_A8 = Me.LblCap
  loc_12B0DEE:   Call 0.Method_Proc_169_73_12B10800 (arg_C, var_AC)
  loc_12B0E05:   var_D4 = MemVar_1F95078 & "SCH"
  loc_12B0E17:   Set var_164 = Me.LblCap
  loc_12B0E1D:   Call 0.Method_Proc_169_73_12B10800 (arg_C, var_168, var_16C)
  loc_12B0E25:   (var_AC.Tag = var_D4) = var_168.Tag
  loc_12B0E47:   Set var_220 = Me.LblCap
  loc_12B0E4D:   Call 0.Method_Proc_169_73_12B10800 (arg_C, var_23C)
  loc_12B0E99:   If CBool( And (((Left(var_90, 1) = "1") Or (var_16C = MemVar_1F95078 & "ADD")) Or (var_23C.Tag = MemVar_1F95070 & "DED"))) Then
  loc_12B0E9F:     var_8C = var_A0
  loc_12B0EA5:   Else
  loc_12B0EBD:     var_B0 = CStr(Left(var_90, 1))
  loc_12B0ED7:     Set var_A8 = Me.TxtGt
  loc_12B0EDD:     Call 0.Method_Proc_169_73_12B10800 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_12B0EE5:     var_160 = var_AC.Text
  loc_12B0EF2:     var_8C = Val(var_D4)
  loc_12B0F06:   End If
  loc_12B0F27:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_12B0F31:   ' Referenced from: 12B1076
  loc_12B0F3B:   If (Len(var_90) > 0) Then
  loc_12B0F7E:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_12B0FC8:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_12B0FDF:     Set var_A8 = Me.TxtGt
  loc_12B0FE5:     Call 0.Method_Proc_169_73_12B10800 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_12B0FFA:     var_160 = Val(var_B0)
  loc_12B1011:     Set var_164 = Me.TxtGt
  loc_12B1017:     Call 0.Method_Proc_169_73_12B10800 (var_AC.Text, var_168, var_D4, CVar(var_8C))
  loc_12B102D:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_12B1040:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_12B104F:     var_1AC = (var_8C + IIf(var_90, CVar(var_168.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_12B1054:     var_8C = CSng("0.00")
  loc_12B1076:     GoTo loc_12B0F31
  loc_12B1079:   End If
  loc_12B1079: End If
  loc_12B1079: Proc_169_73_12B1080 = var_8C
End Sub

Public Sub Proc_169_74_F218A8(arg_C, arg_10, arg_14) 'F218A8
  'Data Table: 56D3A8
  Dim unk_56D3B3 As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  loc_F217ED: Proc_6_7_F26918(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F2181F: unk_56D3B3.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(arg_14) & "' And Party='' Order by Appdate Desc"), -1, var_15C
  loc_F2182A: Set var_90 = var_15C
  loc_F2185C: If (var_90.RecordCount > 0) Then
  loc_F2188A:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F2189A: Else
  loc_F2189D:   var_8C = CDbl(0)
  loc_F218A0: End If
  loc_F218A0: Proc_169_74_F218A8 = var_8C
End Sub

Public Sub Proc_169_75_1299C10
  'Data Table: 56D3A8
  Dim Me As Recordset15
  Dim var_DC As String
  Dim var_E0 As String
  Dim unk_56D3B3 As Connection15
  Dim var_C0 As Recordset15
  Dim var_F0 As Variant
  Dim var_104 As Fields15
  Dim var_100 As Variant
  Dim var_C2 As Integer
  Dim var_11C As String
  Dim var_124 As String
  Dim var_108 As TextBox
  Dim var_A0 As Recordset15
  Dim var_118 As Variant
  Dim var_B4 As Recordset15
  Dim var_16A As Integer
  Dim var_138 As Variant
  Dim var_CE As Integer
  loc_1299664: On Error Goto loc_1299C08
  loc_129967E: If (Me.RecordCount <= 0) Then
  loc_1299681:   Exit Sub
  loc_1299682: End If
  loc_12996A9: unk_56D3B3.Execute "Select * from Depart Where Code='" & global_52 & "'", var_100, -1
  loc_12996B4: Set var_C0 = var_104
  loc_12996D8: If (var_C0.RecordCount > 0) Then
  loc_1299701:   Proc_6_39_E7D3A0(var_118, CVar(var_C0.Fields.Item("NoOfKot")))
  loc_129970A:   var_C2 = CInt(var_118)
  loc_129973F:   var_C8 = Proc_6_38_E69628(CVar(var_C0.Fields.Item("OrderBookCom1")), var_C2)
  loc_129975F:   var_108 = var_C0.Fields.Item("OrderBookCom2")
  loc_1299767:   var_100 = CVar(var_108) 'Address
  loc_1299770:   var_CC = Proc_6_38_E69628(var_100)
  loc_1299779:   ' Referenced from: 1299BCB
  loc_1299779: End If
  loc_1299780: var_DC = "SELECT     P.VNo as BookingNo,PD.SNo,P.CustName as CustomerName,P.PhoneNo,P.Addr1,P.Addr2, I.Name as ItemName, P.VDate as BookingDate, " & "P.VTime as BookingTime, P.DDate as DeliveryDate, P.DTime as DeliveryTime, PD.Qty as Quantity, "
  loc_1299787: var_E0 = var_DC & "PD.Rate, PD.Amount, P.Total,P.AdvAmt as Advance ,Discount, P.Tax, P.Addition, P.Deduction,P.RoundOff, P.NetAmt as NetAmount,P.TokenNo, "
  loc_129978E: var_11C = var_E0 & "PD.Remark, P.Site_Code,Isnull(P.NCBOOKING,'') As NCBOOKING,Isnull(P.NCTYPE,'') As NCTYPE,Isnull(P.PrintedYN,'') As PrintedYN FROM PackingOrder P INNER JOIN PackingOrderDetail  PD ON P.DocID = PD.DocID INNER JOIN "
  loc_1299795: var_124 = var_11C & "Voucher_Type V ON P.VType = V.V_Type AND P.LogSite_Code = V.LogSite_Code  INNER JOIN ItemMast I ON PD.ItemCode = I.Code And PD.ItemRestCode = I.RestCode where P.DocId='"
  loc_12997A6: Set var_104 = Me.Txt
  loc_12997AC: Call 0.Method_Proc_169_75_1299C100 (CInt(2), var_108, var_120)
  loc_12997B4: var_124 = var_108.Text
  loc_12997C4: var_88 = var_104 & var_120 & "' Order by PD.Sno"
  loc_12997E5: If (var_88 = vbNullString) Then
  loc_12997E8:   Exit Sub
  loc_12997E9: End If
  loc_12997FF: unk_56D3B3.Execute var_88, var_100, -1
  loc_129980A: Set var_A0 = var_104
  loc_1299827: If (var_A0.RecordCount <= 0) Then
  loc_1299830:   Call 0.Method_arg_50 (var_DC)
  loc_129984B:   var_100 = "** No Records Found to Print **"
  loc_1299851:   MsgBox(var_100, &H40, CVar(var_DC), var_148, var_168)
  loc_1299861:   Exit Sub
  loc_1299862: End If
  loc_1299868: If (var_CE = 0) Then
  loc_129986E:   var_D4 = var_C8
  loc_1299874: Else
  loc_1299877:   var_D4 = var_CC
  loc_129987A: End If
  loc_129989E: unk_56D3B3.Execute "Select BookingSlipFooter1,BookingSlipFooter2 from Enviro where LOGSite_code='" & MemVar_1F95078 & "'", var_100, -1
  loc_12998A9: Set var_B4 = var_104
  loc_12998BF: var_D8 = var_B4.RecordCount
  loc_12998CD: If (var_D8 > 0) Then
  loc_12998DF:   var_104 = var_B4.Fields
  loc_12998F8:   var_B8 = Proc_6_38_E69628(CVar(var_104.Item("BookingSlipFooter1")), var_104)
  loc_1299918:   var_108 = var_B4.Fields.Item("BookingSlipFooter2")
  loc_1299929:   var_BC = Proc_6_38_E69628(CVar(var_108))
  loc_1299932: End If
  loc_1299948: Set var_104 = var_A0 
  loc_1299954: var_16A = CreateFieldDefFile(var_104, MemVar_1F950B4 & "\OrderBooking.ttx")
  loc_129995E: Set var_A0 = var_104
  loc_1299964: var_F0 = CVar(var_16A) 'Integer
  loc_1299967: var_9C = var_F0 'Variant
  loc_1299983: var_DC = MemVar_1F950B4 & "\OrderBooking.RPT"
  loc_129998C: Call 0.Method_arg_1C (var_DC, var_F0, var_104)
  loc_1299997: MemVar_1F951E8 = var_104
  loc_12999B2: Call 0.Method_arg_90 (var_104, var_D8, var_AA, 1)
  loc_12999BA: Call 0.Method_arg_24 (var_16A, &HFF)
  loc_12999C6: For var_16E =  To CInt(var_D8): var_104 = var_16E 'Integer
  loc_12999DF:   Call 0.Method_arg_90 (var_104, CLng(var_AA))
  loc_12999E7:   Call 0.Method_arg_20 (var_108)
  loc_12999EF:   Call 0.Method_arg_30 (var_DC)
  loc_12999F7:   var_174 = var_DC
  loc_1299A09:   If (var_174 = "Title") Then
  loc_1299A1F:     Call 0.Method_arg_90 (var_104, CLng(var_AA))
  loc_1299A27:     Call 0.Method_arg_20 (var_108)
  loc_1299A2F:     Call 0.Method_arg_38 ("'Order Booking'")
  loc_1299A3E:   Else
  loc_1299A46:     If (var_174 = "BookingComment") Then
  loc_1299A6A:       Call 0.Method_arg_90 (var_104, CLng(var_AA))
  loc_1299A72:       Call 0.Method_arg_20 (var_108)
  loc_1299A7A:       Call 0.Method_arg_38 ("'" & var_D4 & "'")
  loc_1299A90:     Else
  loc_1299A98:       If (var_174 = "BookingSlipFooter1") Then
  loc_1299ABC:         Call 0.Method_arg_90 (var_104, CLng(var_AA))
  loc_1299AC4:         Call 0.Method_arg_20 (var_108)
  loc_1299ACC:         Call 0.Method_arg_38 ("'" & var_B8 & "'")
  loc_1299AE2:       Else
  loc_1299AEA:         If (var_174 = "BookingSlipFooter2") Then
  loc_1299B0E:           Call 0.Method_arg_90 (var_104, CLng(var_AA))
  loc_1299B16:           Call 0.Method_arg_20 (var_108)
  loc_1299B1E:           Call 0.Method_arg_38 ("'" & var_BC & "'")
  loc_1299B31:         End If
  loc_1299B31:       End If
  loc_1299B31:     End If
  loc_1299B31:   End If
  loc_1299B34: Next var_16E 'Integer
  loc_1299B52: Call 0.Method_arg_64 (var_104, CVar(var_A0))
  loc_1299B5A: Call 0.Method_arg_2C (var_138)
  loc_1299B68: Call 0.Method_arg_150 (var_158)
  loc_1299B73: If (var_C2 <= 1) Then
  loc_1299B93:   Call 0.Method_Me8 (False, 1, var_158)
  loc_1299B9B: Else
  loc_1299BA1:   If (var_CE = 0) Then
  loc_1299BC1:     Call 0.Method_Me8 (False, 1, var_158, var_184)
  loc_1299BC8:     var_CE = &HFF
  loc_1299BCB:     GoTo loc_1299779
  loc_1299BD1:   Else
  loc_1299BE3:     var_138 = CVar((var_C2 - 1)) 'Integer
  loc_1299BF2:     Call 0.Method_Me8 (False, 1, var_158, var_184, var_194)
  loc_1299BF7:   End If
  loc_1299BF7: End If
  loc_1299BFC: Set var_A0 = Nothing
  loc_1299C04: Set var_B0 = Nothing
  loc_1299C07: Exit Sub
  loc_1299C08: ' Referenced from: 1299664
  loc_1299C08: Proc_6_60_E63754(var_CE, var_194)
  loc_1299C0D: Exit Sub
End Sub

Public Sub Proc_169_76_F0F0D8(arg_C) 'F0F0D8
  'Data Table: 56D3A8
  Dim var_94 As Integer
  Dim var_96 As Integer
  Dim var_C8 As Variant
  loc_F0F007: var_94 = CInt(InStr(1, arg_C, ",", 0))
  loc_F0F030: var_96 = CInt(InStr((InStr(1, arg_C, ",", 0) + 1), arg_C, ",", 0))
  loc_F0F039: var_C8 = CVar((var_94 - 1)) 'Integer
  loc_F0F069: var_C8 = CVar((var_96 - (var_94 + 1))) 'Integer
  loc_F0F07E: var_D8 = Mid(arg_C, CLng((var_94 + 1)), var_C8)
  loc_F0F098: var_C8 = CVar((CInt(Len(arg_C)) - var_96)) 'Integer
  loc_F0F0AD: var_D8 = Mid(arg_C, CLng((var_96 + 1)), var_C8)
  loc_F0F0CF: Call 0.Method_MeC (CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)))
  loc_F0F0D4: Exit Sub
  loc_F0F0D5: StAryRecCopy
End Sub

Public Sub Proc_169_77_EFCFAC(arg_C) 'EFCFAC
  'Data Table: 56D3A8
  Dim var_8C As Recordset15
  Dim -1.global_31998 As Currency
  loc_EFCED5: Set var_8C = arg_C 
  loc_EFCEFD: var_8C.Fields.Append "mLine", &HC8, 1
  loc_EFCF29: var_8C.Fields.Append "Detail", &HC8, &H32
  loc_EFCF55: var_8C.Fields.Append "Mark", &HC8, 1
  loc_EFCF65: var_8C.CursorType = 3
  loc_EFCF72: var_8C.LockType = 3
  loc_EFCF91: var_8C.Open var_A0, var_B0, -1
  loc_EFCF98: Set var_8C = Nothing 
  loc_EFCF9F: Set var_88 = arg_C 
  loc_EFCFA3: Proc_169_77_EFCFAC = -1
  loc_EFCFA9: -1.global_31998 = &H20
End Sub

Public Sub Proc_169_78_F13020(arg_C, arg_10, arg_14, arg_18) 'F13020
  'Data Table: 56D3A8
  Dim var_88 As Recordset15
  Dim var_98 As Variant
  Dim var_A8 As String
  loc_F12F2F: Set var_88 = arg_C 
  loc_F12F3E: var_88.AddNew var_98, var_A8
  loc_F12F76: var_88.Fields.Item("mLine").Value = Trim(arg_10)
  loc_F12FB8: var_88.Fields.Item("Detail").Value = Trim(arg_14)
  loc_F12FCA: var_98 = arg_18
  loc_F12FDE: var_A8 = "Mark"
  loc_F12FFA: var_88.Fields.Item(var_A8).Value = Trim(var_98)
  loc_F13014: var_88.Update var_98, var_A8
  loc_F1301B: Set var_88 = Nothing 
  loc_F1301F: Exit Sub
End Sub

Public Sub Proc_169_79_1000F94(arg_C) '1000F94
  'Data Table: 56D3A8
  Dim var_8C As Recordset15
  loc_1000D89: Set var_8C = arg_C 
  loc_1000DB1: var_8C.Fields.Append "mLine", &HC8, 2
  loc_1000DDD: var_8C.Fields.Append "Sno", &HC8, 3
  loc_1000E09: var_8C.Fields.Append "DispCode", &HC8, 6
  loc_1000E35: var_8C.Fields.Append "ItemName", &HC8, &H32
  loc_1000E61: var_8C.Fields.Append "Description", &HC8, &H4B
  loc_1000E8D: var_8C.Fields.Append "Qty", &HC8, 8
  loc_1000EB9: var_8C.Fields.Append "Rate", &HC8, 8
  loc_1000EE5: var_8C.Fields.Append "Unit", &HC8, &H14
  loc_1000F11: var_8C.Fields.Append "VoidYN", &HC8, 1
  loc_1000F3D: var_8C.Fields.Append "Mark", &HC8, 1
  loc_1000F4D: var_8C.CursorType = 3
  loc_1000F5A: var_8C.LockType = 3
  loc_1000F79: var_8C.Open var_A0, var_B0, -1
  loc_1000F80: Set var_8C = Nothing 
  loc_1000F87: Set var_88 = arg_C 
  loc_1000F8B: Proc_169_79_1000F94 = -1
End Sub

Public Sub Proc_169_80_1C2A710
  'Data Table: 56D3A8
  Dim var_13C As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_150 As String
  Dim unk_56D3B3 As Connection15
  Dim var_100 As Recordset15
  Dim var_174 As Variant
  Dim var_12C As Variant
  Dim var_180 As String
  Dim var_10C As Recordset15
  Dim var_E6 As Integer
  Dim var_160 As Variant
  Dim var_194 As Fields15
  Dim var_190 As Variant
  Dim var_1D8 As Variant
  Dim var_170 As Variant
  Dim var_E8 As Integer
  Dim Me As Recordset15
  Dim var_17C As Field20
  Dim var_BC As Recordset15
  Dim var_198 As Field20
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_1FC As Variant
  Dim var_1E8 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_B8 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_284 As Variant
  Dim var_308 As String
  Dim var_310 As String
  Dim var_1A8 As Variant
  Dim var_368 As Variant
  Dim var_AE As Integer
  Dim var_36C As Recordset15
  Dim var_D0 As Recordset15
  Dim var_106 As Integer
  Dim var_370 As Recordset15
  Dim var_224 As Variant
  Dim var_304 As Variant
  Dim var_344 As Variant
  Dim var_30C As String
  Dim var_2D4 As Variant
  Dim var_2E4 As Variant
  Dim var_2F4 As Variant
  Dim var_2B4 As Variant
  Dim var_3AC As Variant
  Dim var_3C8 As Variant
  Dim var_3E8 As Variant
  Dim var_3F8 As Variant
  loc_1C24968: On Error Goto loc_1C2A709
  loc_1C24988: Proc_6_17_EAAE40(var_12C, MemVar_1F95078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1C2499E: unk_56D3B3.Execute CStr(var_170 & var_12C), -1, var_174
  loc_1C249A9: Set var_100 = var_174
  loc_1C249CF: If (var_100.RecordCount > 0) Then
  loc_1C24A09:   var_F0 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("KOTHeader1"))))))
  loc_1C24A4F:   var_F4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("KOTHeader2"))))))
  loc_1C24A95:   var_F8 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("KOTHeader3"))))))
  loc_1C24AB3:   var_174 = var_100.Fields
  loc_1C24AC3:   var_12C = CVar(var_174.Item("KOTHeader4")) 'Address
  loc_1C24ADB:   var_FC = CStr(Trim(CVar(Proc_6_38_E69628(var_12C))))
  loc_1C24AEA: End If
  loc_1C24B01: var_150 = "Select distinct(ShortName),Name,Code,PrintType,CKOTPrintYN,CKOTPrintPath As Printer,NoOfKot From Depart Where Code='" & global_52
  loc_1C24B11: unk_56D3B3.Execute var_150 & "'", var_12C, -1
  loc_1C24B1C: Set var_10C = var_174
  loc_1C24B40: If (var_10C.RecordCount > 0) Then
  loc_1C24B6B:   var_14C = CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("CKOTPrintYN")))) 'String
  loc_1C24B85:   var_E4 = CStr(Ucase(Trim(var_14C)))
  loc_1C24BBC:   Proc_6_39_E7D3A0(var_14C, CVar(var_10C.Fields.Item("NoOfKot")))
  loc_1C24BC5:   var_E6 = CInt(var_14C)
  loc_1C24BF8:   Proc_6_39_E7D3A0(var_14C, CVar(var_10C.Fields.Item("NoOfKot")))
  loc_1C24C0C:   var_194 = var_10C.Fields
  loc_1C24C1C:   var_190 = CVar(var_194.Item("NoOfKot")) 'Address
  loc_1C24C23:   Proc_6_39_E7D3A0(var_1A8, var_190)
  loc_1C24C39:   var_170 = (var_14C <= 0)
  loc_1C24C50:   var_E8 = CInt(IIf(var_170, 1, var_1A8))
  loc_1C24C6B: End If
  loc_1C24C73: If (var_E4 <> "Y") Then
  loc_1C24C7C:   Call 0.Method_arg_50 (var_150, var_E8)
  loc_1C24C9D:   MsgBox("Set Order Booking Printing 'Yes' In Outlet Master.", &H40, CVar(var_150), var_170, var_190)
  loc_1C24CB2:   Set var_10C = Nothing
  loc_1C24CB5:   Exit Sub
  loc_1C24CB6: End If
  loc_1C24CB9: MemVar_1F953C4 = "N"
  loc_1C24CC0: MemVar_1F953C8 = "N"
  loc_1C24CC7: MemVar_1F953CC = "K"
  loc_1C24CCB: var_13C = "Select DISTINCT P.Vtime,P.VNo,P.VDate,P.DDate,P.DTime,P.NCBooking, PD.Remark , PD.ContraDocId, D.ShortName,P.U_Name From ((PackingOrderDetail PD Left Join PackingOrder P on P.DocId=PD.DocId)Left Join Depart D on D.Code=PD.RestCode)Where PD.DocID='"
  loc_1C24D0B: var_88 = CStr(var_13C & Me.Fields.Item("SearchCode").Value & "'")
  loc_1C24D1E: var_13C = "Select PD.Sno,I.Name as ItemName,PD.Qty, Depart.ShortName From (PackingOrderDetail PD Left Join  ItemMast I on PD.ItemCode=I.Code And PD.ItemRestCode = I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code Where PD.DocID='"
  loc_1C24D38: var_174 = Me.Fields
  loc_1C24D48: var_12C = var_174.Item("SearchCode").Value
  loc_1C24D5E: var_8C = CStr(var_13C & var_12C & "'")
  loc_1C24D79: If (var_88 = vbNullString) Then
  loc_1C24D7C:   Exit Sub
  loc_1C24D7D: End If
  loc_1C24D85: If (var_8C = vbNullString) Then
  loc_1C24D88:   Exit Sub
  loc_1C24D89: End If
  loc_1C24D9F: unk_56D3B3.Execute var_88, var_12C, -1
  loc_1C24DAA: Set var_B4 = var_174
  loc_1C24DC2: var_174 = var_100.Fields
  loc_1C24DFD: If (Trim(CVar(Proc_6_38_E69628(CVar(var_174.Item("KOTPrinting")), var_174))) = "Seperate for All Kitchen") Then
  loc_1C24E14:   var_14C = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (PackingOrderDetail PD Left Join  ItemMast I on PD.ItemCode=I.Code And PD.ItemRestCode = I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where PD.DocID='") 'String
  loc_1C24E2C:   var_174 = Me.Fields
  loc_1C24E3C:   var_12C = var_174.Item("SearchCode").Value
  loc_1C24E5B:   unk_56D3B3.Execute CStr(var_14C & var_12C & "'"), var_1A8, -1
  loc_1C24E66:   Set var_BC = var_194
  loc_1C24E85: Else
  loc_1C24E99:   var_150 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_1C24EA9:   unk_56D3B3.Execute var_150 & "MK'", var_12C, -1
  loc_1C24EB4:   Set var_BC = var_174
  loc_1C24EC4:   ' Referenced from:   1C2A6CD
  loc_1C24EC4: End If
  loc_1C24ED3: If Not(var_BC.EOF) Then
  loc_1C24EE5:   var_174 = var_100.Fields
  loc_1C24F20:   If (Trim(CVar(Proc_6_38_E69628(CVar(var_174.Item("KOTPrinting")), var_174, var_194))) = "Seperate for All Kitchen") Then
  loc_1C24F2A:     var_14C = CVar("Select PD.Sno,I.DispCode,I.Name as ItemName,PD.ItemCode,PD.Unit,PD.Qty,PD.Rate,PD.Remark As Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,PD.VoidYN As Cancel,P.PrintedYN From ((PackingOrderDetail PD Inner Join PackingOrder P on PD.DocId=P.DocId) Left Join  ItemMast I on PD.ItemCode=I.Code And PD.ItemRestCode = I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where PD.DocID='") 'String
  loc_1C24FA3:     var_1E8 = var_14C & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C24FDF:     var_8C = CStr(var_1E8 & var_BC.Fields.Item("Code").Value & "'")
  loc_1C2500D:   Else
  loc_1C25014:     var_14C = CVar("Select PD.Sno,I.DispCode,I.Name as ItemName,PD.ItemCode,PD.Unit,PD.Qty,PD.Rate,PD.Remark As Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,PD.VoidYN As Cancel,P.PrintedYN From ((PackingOrderDetail PD Inner Join PackingOrder P on PD.DocId=P.DocId) Left Join  ItemMast I on PD.ItemCode=I.Code And PD.ItemRestCode = I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where PD.DocID='") 'String
  loc_1C2502C:     var_174 = Me.Fields
  loc_1C2503C:     var_12C = var_174.Item("SearchCode").Value
  loc_1C25052:     var_8C = CStr(var_14C & var_12C & "'")
  loc_1C25067:   End If
  loc_1C2507D:   unk_56D3B3.Execute var_8C, var_12C, -1
  loc_1C25088:   Set var_B8 = var_174
  loc_1C250A5:   If (var_B8.RecordCount > 0) Then
  loc_1C250B7:     var_174 = var_10C.Fields
  loc_1C250D6:     var_264 = Trim(CVar(var_174.Item("PrintType"))) 'Variant
  loc_1C250EB:     If (var_264 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1C250FB:       Call Proc_169_77_EFCFAC(New)
  loc_1C25103:       Set var_D4 = var_174
  loc_1C25109:       Me.Recordset15.MoveFirst
  loc_1C2510E:       ' Referenced from: 1C25C7A
  loc_1C2511D:       If Not(var_B4.EOF) Then
  loc_1C25122:         var_92 = 0
  loc_1C25139:         var_174 = var_B4.Fields
  loc_1C2519C:         var_1E8 = CVar(var_B4.Fields.Item("NCBOOKING")) 'Address
  loc_1C25240:         var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_174.Item("ShortName")), 1, var_92, var_174))), 1, 3)) = "LAU") 'Variant
  loc_1C2524A:         var_304 = IIf(var_2F4, IIf((Proc_6_38_E69628(var_1E8, var_174) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCBOOKING")), var_E6) = "Y"), "* NC BOOKING *", "* BOOKING *"))
  loc_1C25253:         var_90 = CStr(var_304)
  loc_1C25297:         If (var_92 = 0) Then
  loc_1C252B8:           Call Proc_169_78_F13020(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C252F4:           var_C0 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1C2532B:           var_14C = CVar(Me.LblRest.Caption) 'String
  loc_1C2532E:           var_170 = (Space(1) + var_14C)
  loc_1C25343:           Call Proc_169_78_F13020(var_D4, vbNullString, CStr(Trim(CVar(Proc_6_38_E69628(CVar(Me.LblRest.Item("ShortName")), 1, var_92, Me.LblRest)))), vbNullString)
  loc_1C25375:           Call Proc_169_78_F13020(var_D4, vbNullString, var_90, vbNullString)
  loc_1C253CD:           Call Proc_169_78_F13020(var_D4, vbNullString, Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name")), &H12), vbNullString)
  loc_1C25401:           Call Proc_169_78_F13020(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C25435:           Proc_6_39_E7D3A0(var_14C, CVar(var_B4.Fields.Item("VNo")))
  loc_1C25472:           Call Proc_169_78_F13020(var_D4, vbNullString, " BOOKING No.   : " & Proc_6_45_EADFB8(CStr(var_14C), &HA), vbNullString)
  loc_1C25542:           Call Proc_169_78_F13020(var_D4, vbNullString, " BOOKING Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))), &HC) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8), vbNullString)
  loc_1C25624:           Call Proc_169_78_F13020(var_D4, vbNullString, " DELIVERY Dt.  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("DDate"))), &HC) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("DTime"))), 8), vbNullString)
  loc_1C256B6:           Call Proc_169_78_F13020(var_D4, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remark"))), &H1E), vbNullString)
  loc_1C256EA:           Call Proc_169_78_F13020(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C256F6:         End If
  loc_1C2571C:         var_170 = (Space(1) + CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)))
  loc_1C25730:         var_1A8 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12, var_B4.Fields))) + Space(1))
  loc_1C2574A:         var_1D8 = (Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12, var_B4.Fields))), 1, 3) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1C2574F:         var_AC = CStr(CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'")
  loc_1C25782:         Call Proc_169_78_F13020(var_D4, vbNullString, var_AC, vbNullString)
  loc_1C257A6:         Call Proc_169_78_F13020(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C257B8:         var_92 = (var_92 + 4)
  loc_1C257BE:         var_B8.MoveFirst
  loc_1C257C3:         ' Referenced from: 1C25B44
  loc_1C257D2:         If Not(var_B8.EOF) Then
  loc_1C257FF:           var_13C = "qty"
  loc_1C25822:           Proc_6_39_E7D3A0(var_1E8, CVar(var_B8.Fields.Item(var_13C)))
  loc_1C25831:           var_160 = "0"
  loc_1C2584D:           var_1C8 = "Cancel"
  loc_1C25887:           var_1FC = "Y"
  loc_1C258C5:           var_190 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1C258D1:           var_1A8 = Space(1)
  loc_1C258D9:           var_1B8 = (Space(1) + var_1A8)
  loc_1C258F2:           var_284 = (&H12 + CVar(Proc_6_52_EAE084(CStr(Format(var_1E8, var_160)), 3, CVar(Proc_6_52_EAE084("Qty", 6)))))
  loc_1C2590B:           var_368 = (CVar(var_B4.Fields.Item("NCBOOKING")) + CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item(var_1C8).Value = var_1FC), "Void", vbNullString)), 5)))
  loc_1C2596A:           Call Proc_169_78_F13020(var_D4, vbNullString, CStr(var_368), vbNullString)
  loc_1C2597C:           var_92 = (var_92 + 1)
  loc_1C259B8:           If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C25A10:             Call Proc_169_78_F13020(var_D4, vbNullString, "(" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description"))) & ")", vbNullString)
  loc_1C25A30:             var_92 = (var_92 + 1)
  loc_1C25A33:           End If
  loc_1C25A3D:           If (&H12 = (&H45 - var_A6)) Then
  loc_1C25A58:             Call Proc_169_78_F13020(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C25A82:             Call Proc_169_78_F13020(var_D4, vbNullString, " Contd.", vbNullString)
  loc_1C25A96:             var_94 = (var_94 + 1)
  loc_1C25A9B:             var_92 = 0
  loc_1C25AB6:             Call Proc_169_78_F13020(var_D4, vbNullString, var_90, vbNullString)
  loc_1C25AC4:             var_92 = &H12
  loc_1C25ADF:             Call Proc_169_78_F13020(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C25B03:             Call Proc_169_78_F13020(var_D4, vbNullString, var_AC, vbNullString)
  loc_1C25B27:             Call Proc_169_78_F13020(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C25B39:             var_92 = (var_92 + 4)
  loc_1C25B3C:           End If
  loc_1C25B3F:           var_B8.MoveNext
  loc_1C25B44:           GoTo loc_1C257C3
  loc_1C25B47:         End If
  loc_1C25B51:         If (var_92 < (&H45 - var_A6)) Then
  loc_1C25B54:           ' Referenced from: 1C25B96
  loc_1C25B5E:           If (var_92 = (&H45 - var_A6)) Then
  loc_1C25B7F:             Call Proc_169_78_F13020(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C25B93:             var_92 = (var_92 + 1)
  loc_1C25B96:             GoTo loc_1C25B54
  loc_1C25B99:           End If
  loc_1C25B99:         End If
  loc_1C25BB1:         Call Proc_169_78_F13020(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C25BC0:         var_11C = "U_Name"
  loc_1C25C1F:         Call Proc_169_78_F13020(var_D4, vbNullString, " User : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item(var_11C)), var_92, var_92, var_92), &H14, var_92), vbNullString)
  loc_1C25C62:         Call Proc_169_78_F13020(var_D4, vbNullString, "** " & MemVar_1F95220 & " **", vbNullString)
  loc_1C25C75:         var_B4.MoveNext
  loc_1C25C7A:         GoTo loc_1C2510E
  loc_1C25C7D:       End If
  loc_1C25C80:       var_D8 = "WinBOOKINGPrint"
  loc_1C25CA7:       Set var_174 = var_D4 
  loc_1C25CAE:       CreateFieldDefFile(var_174, MemVar_1F950B4 & "\" & var_D8 & ".ttx", &HFF)
  loc_1C25CF0:       Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_D8 & ".RPT", var_11C, var_174)
  loc_1C25CFB:       MemVar_1F951E8 = var_174
  loc_1C25D24:       Call 0.Method_arg_64 (var_174, CVar(var_174), var_13C, var_160)
  loc_1C25D2C:       Call 0.Method_arg_2C (1, var_92)
  loc_1C25D6D:       If (Proc_6_38_E69628(CVar(var_10C.Fields.Item("Printer"))) <> vbNullString) Then
  loc_1C25DBA:         If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C25DCC:           var_174 = var_10C.Fields
  loc_1C25DE9:           Call Proc_169_76_F0F0D8(Proc_6_38_E69628(CVar(var_174.Item("Printer"))))
  loc_1C25DF7:         End If
  loc_1C25DF7:       End If
  loc_1C25E06:       var_13C = CVar(var_E8) 'Integer
  loc_1C25E15:       Call 0.Method_Me8 (False, var_13C, var_160)
  loc_1C25E1F:       Set var_D4 = Nothing
  loc_1C25E25:     Else
  loc_1C25E28:       var_11C = "ADJUSTABLE WINDOWS KOT PRINT"
  loc_1C25E30:       If (var_264 = var_11C) Then
  loc_1C25E40:         Call Proc_169_79_1000F94(New)
  loc_1C25E48:         Set var_104 = var_174
  loc_1C25E4E:         Me.Recordset15.MoveFirst
  loc_1C25E53:         ' Referenced from:   1C271CA
  loc_1C25E62:         If Not(var_B4.EOF) Then
  loc_1C25E67:           var_AE = 1
  loc_1C25E6D:           var_B8.MoveFirst
  loc_1C25E72:           ' Referenced from:   1C2656C
  loc_1C25E81:           If Not(var_B8.EOF) Then
  loc_1C25E87:             Set var_36C = var_104 
  loc_1C25E96:             var_36C.AddNew var_11C, var_13C
  loc_1C25EC0:             var_36C.Fields.Item("mLine").Value = "GF"
  loc_1C25EF4:             var_36C.Fields.Item("Sno").Value = CVar(CStr(var_AE))
  loc_1C25F52:             var_36C.Fields.Item("DispCode").Value = CVar(CStr(var_B8.Fields.Item("DispCode").Value))
  loc_1C25F78:             var_174 = var_B8.Fields
  loc_1C25FB4:             var_36C.Fields.Item("ItemName").Value = CVar(Proc_6_38_E69628(CVar(var_174.Item("ItemName")), var_AE, var_174))
  loc_1C25FF1:             var_14C = CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), var_1C8)) 'String
  loc_1C26014:             var_36C.Fields.Item("Description").Value = var_14C
  loc_1C2604F:             Proc_6_39_E7D3A0(var_14C, CVar(var_B8.Fields.Item("qty")))
  loc_1C26097:             var_36C.Fields.Item("Qty").Value = Format(var_14C, "0.000")
  loc_1C260D6:             Proc_6_39_E7D3A0(var_14C, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_1C2611E:             var_36C.Fields.Item("Rate").Value = Format(var_14C, "0.00")
  loc_1C26182:             var_36C.Fields.Item("Unit").Value = CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Unit")), 1, 1))
  loc_1C261D2:             var_194 = var_36C.Fields
  loc_1C261E2:             var_194.Item("VoidYN").Value = CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Cancel")), 1))
  loc_1C261F7:             var_13C = "*"
  loc_1C26200:             var_11C = "Mark"
  loc_1C2621C:             var_36C.Fields.Item(var_11C).Value = var_13C
  loc_1C26233:             var_36C.Update var_11C, var_13C
  loc_1C2623A:             Set var_36C = Nothing 
  loc_1C26252:             var_150 = "Select IM.Name As ItemName, IM.Unit , Qty  from ComboPackDetail Inner Join ItemMast IM On  ComboPackDetail.ItemCode = IM.Code And ComboPackDetail.RestCode = IM.RestCode where (ComboPackDetail.LOGSITE_CODE='" & MemVar_1F95078
  loc_1C26262:             var_11C = "ItemCode"
  loc_1C26286:             var_170 = CVar(var_150 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") & var_B8.Fields.Item(var_11C).Value 
  loc_1C2628A:             var_13C = "'"
  loc_1C2629D:             unk_56D3B3.Execute CStr(var_170 & var_13C), var_1A8, -1
  loc_1C262A8:             Set var_D0 = var_194
  loc_1C262CE:             var_178 = var_D0.RecordCount
  loc_1C262DC:             If (var_178 > 0) Then
  loc_1C262E1:               var_106 = 1
  loc_1C262E4:               ' Referenced from:   1C26550
  loc_1C262F3:               If Not(var_D0.EOF) Then
  loc_1C262F9:                 Set var_370 = var_104 
  loc_1C26308:                 var_370.AddNew var_11C, var_13C
  loc_1C26332:                 var_370.Fields.Item("mLine").Value = "SB"
  loc_1C26366:                 var_370.Fields.Item("Sno").Value = CVar(CStr(var_106))
  loc_1C2639D:                 var_14C = CVar(Proc_6_38_E69628(CVar(var_D0.Fields.Item("ItemName")), var_106, var_194)) 'String
  loc_1C263C0:                 var_370.Fields.Item("ItemName").Value = var_14C
  loc_1C263FB:                 Proc_6_51_EF4580(var_14C, CVar(var_D0.Fields.Item("qty")))
  loc_1C26423:                 var_370.Fields.Item("Qty").Value = var_14C
  loc_1C26483:                 var_370.Fields.Item("Unit").Value = CVar(Proc_6_38_E69628(CVar(var_D0.Fields.Item("Unit")), var_1FC))
  loc_1C264E3:                 var_370.Fields.Item("VoidYN").Value = CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Cancel"))))
  loc_1C264F8:                 var_13C = "*"
  loc_1C26501:                 var_11C = "Mark"
  loc_1C2651D:                 var_370.Fields.Item(var_11C).Value = var_13C
  loc_1C26534:                 var_370.Update var_11C, var_13C
  loc_1C2653B:                 Set var_370 = Nothing 
  loc_1C26545:                 var_106 = (var_106 + 1)
  loc_1C2654B:                 var_D0.MoveNext
  loc_1C26550:                 GoTo loc_1C262E4
  loc_1C26553:               End If
  loc_1C26553:             End If
  loc_1C26558:             Set var_D0 = Nothing
  loc_1C26561:             var_AE = (var_AE + 1)
  loc_1C26567:             var_B8.MoveNext
  loc_1C2656C:             GoTo loc_1C25E72
  loc_1C2656F:           End If
  loc_1C26572:           var_11C = "ShortName"
  loc_1C26586:           var_17C = var_B4.Fields.Item(var_11C)
  loc_1C265C5:           var_1C8 = "NCBOOKING"
  loc_1C265D1:           var_194 = var_B4.Fields
  loc_1C265D9:           var_198 = var_194.Item(var_1C8)
  loc_1C2660E:           var_1FC = (Proc_6_38_E69628(CVar(var_198), var_106) = "Y")
  loc_1C2667B:           var_160 = "LAU"
  loc_1C2668F:           var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_17C), var_AE))), 1, 3)) = var_160), IIf(var_1FC, "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC BOOKING *", "* BOOKING *"))
  loc_1C26698:           var_90 = CStr(var_304)
  loc_1C266D9:           var_D8 = "BOOKINGPrint"
  loc_1C26700:           Set var_174 = var_104 
  loc_1C26707:           CreateFieldDefFile(var_174, MemVar_1F950B4 & "\" & var_D8 & ".ttx")
  loc_1C26732:           var_150 = MemVar_1F950B4 & "\"
  loc_1C26749:           Call 0.Method_arg_1C (var_150 & var_D8 & ".RPT", var_11C, var_174)
  loc_1C26754:           MemVar_1F951E8 = var_174
  loc_1C2677D:           Call 0.Method_arg_64 (var_174, CVar(var_174), var_13C)
  loc_1C26785:           Call 0.Method_arg_2C (var_160, &HFF)
  loc_1C26793:           Call 0.Method_arg_150 (var_174)
  loc_1C267A9:           Call 0.Method_arg_90 (var_174, var_178)
  loc_1C267B1:           Call 0.Method_arg_24 (var_AE)
  loc_1C267BD:           For var_374 =  To CInt(var_178):   1 = var_374 'Integer
  loc_1C267D6:             Call 0.Method_arg_90 (var_174, CLng(var_AE))
  loc_1C267DE:             Call 0.Method_arg_20 (var_17C)
  loc_1C267E6:             Call 0.Method_arg_30 (var_150)
  loc_1C267FC:             var_384 = Ucase(CVar(var_150)) 'Variant
  loc_1C2682C:             If (var_384 = Ucase("comp_name")) Then
  loc_1C26850:               Call 0.Method_arg_90 (var_174, CLng(var_AE))
  loc_1C26858:               Call 0.Method_arg_20 (var_17C)
  loc_1C26860:               Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_1C26876:             Else
  loc_1C26898:               If (var_384 = Ucase("comp_add1")) Then
  loc_1C268BC:                 Call 0.Method_arg_90 (var_174, CLng(var_AE))
  loc_1C268C4:                 Call 0.Method_arg_20 (var_17C)
  loc_1C268CC:                 Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1C268E2:               Else
  loc_1C26904:                 If (var_384 = Ucase("comp_pin")) Then
  loc_1C26928:                   Call 0.Method_arg_90 (var_174, CLng(var_AE))
  loc_1C26930:                   Call 0.Method_arg_20 (var_17C)
  loc_1C26938:                   Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_1C2694E:                 Else
  loc_1C26970:                   If (var_384 = Ucase("comp_GSTIN")) Then
  loc_1C26994:                     Call 0.Method_arg_90 (var_174, CLng(var_AE))
  loc_1C2699C:                     Call 0.Method_arg_20 (var_17C)
  loc_1C269A4:                     Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1C269BA:                   Else
  loc_1C269DC:                     If (var_384 = Ucase("RestName")) Then
  loc_1C269E9:                       Set var_174 = Me.LblRest
  loc_1C26A12:                       Call 0.Method_arg_90 (var_17C, CLng(var_AE))
  loc_1C26A1A:                       Call 0.Method_arg_20 (var_194)
  loc_1C26A22:                       Call 0.Method_arg_38 ("'" & var_174.Caption & "'")
  loc_1C26A3C:                     Else
  loc_1C26A5E:                       If (var_384 = Ucase("mTitle")) Then
  loc_1C26A82:                         Call 0.Method_arg_90 (var_174, CLng(var_AE))
  loc_1C26A8A:                         Call 0.Method_arg_20 (var_17C)
  loc_1C26A92:                         Call 0.Method_arg_38 ("'" & var_90 & "'")
  loc_1C26AA8:                       Else
  loc_1C26AB0:                         var_12C = "Header1"
  loc_1C26ACA:                         If (var_384 = Ucase(var_12C)) Then
  loc_1C26AD8:                           Proc_6_17_EAAE40(var_12C)
  loc_1C26AF4:                           Call 0.Method_arg_90 (var_174, CLng(var_AE), var_17C)
  loc_1C26AFC:                           Call 0.Method_arg_20 (CStr(var_12C))
  loc_1C26B04:                           Call 0.Method_arg_38 (var_F0)
  loc_1C26B19:                         Else
  loc_1C26B21:                           var_12C = "Header2"
  loc_1C26B3B:                           If (var_384 = Ucase(var_12C)) Then
  loc_1C26B49:                             Proc_6_17_EAAE40(var_12C)
  loc_1C26B65:                             Call 0.Method_arg_90 (var_174, CLng(var_AE), var_17C)
  loc_1C26B6D:                             Call 0.Method_arg_20 (CStr(var_12C))
  loc_1C26B75:                             Call 0.Method_arg_38 (var_F4)
  loc_1C26B8A:                           Else
  loc_1C26B92:                             var_12C = "Header3"
  loc_1C26BAC:                             If (var_384 = Ucase(var_12C)) Then
  loc_1C26BBA:                               Proc_6_17_EAAE40(var_12C)
  loc_1C26BD6:                               Call 0.Method_arg_90 (var_174, CLng(var_AE), var_17C)
  loc_1C26BDE:                               Call 0.Method_arg_20 (CStr(var_12C))
  loc_1C26BE6:                               Call 0.Method_arg_38 (var_F8)
  loc_1C26BFB:                             Else
  loc_1C26C03:                               var_12C = "Header4"
  loc_1C26C1D:                               If (var_384 = Ucase(var_12C)) Then
  loc_1C26C2B:                                 Proc_6_17_EAAE40(var_12C)
  loc_1C26C47:                                 Call 0.Method_arg_90 (var_174, CLng(var_AE), var_17C)
  loc_1C26C4F:                                 Call 0.Method_arg_20 (CStr(var_12C))
  loc_1C26C57:                                 Call 0.Method_arg_38 (var_FC)
  loc_1C26C6C:                               Else
  loc_1C26C7D:                                 var_14C = Ucase("BOOKNo")
  loc_1C26C8E:                                 If (var_384 = var_14C) Then
  loc_1C26CBC:                                   Proc_6_39_E7D3A0(var_14C, CVar(var_B4.Fields.Item("VNo")))
  loc_1C26CC8:                                   var_160 = "'"
  loc_1C26CE5:                                   Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C26CED:                                   Call 0.Method_arg_20 (var_198)
  loc_1C26CF5:                                   Call 0.Method_arg_38 (CStr("'" & var_14C & var_160))
  loc_1C26D14:                                 Else
  loc_1C26D36:                                   If (var_384 = Ucase("BOOKDate")) Then
  loc_1C26D82:                                     Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C26D8A:                                     Call 0.Method_arg_20 (var_198)
  loc_1C26D92:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))) & "'")
  loc_1C26DAF:                                   Else
  loc_1C26DD1:                                     If (var_384 = Ucase("BOOKTime")) Then
  loc_1C26E1D:                                       Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C26E25:                                       Call 0.Method_arg_20 (var_198)
  loc_1C26E2D:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))) & "'")
  loc_1C26E4A:                                     Else
  loc_1C26E6C:                                       If (var_384 = Ucase("DELIDate")) Then
  loc_1C26EB8:                                         Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C26EC0:                                         Call 0.Method_arg_20 (var_198)
  loc_1C26EC8:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("DDate"))) & "'")
  loc_1C26EE5:                                       Else
  loc_1C26F07:                                         If (var_384 = Ucase("DELITime")) Then
  loc_1C26F53:                                           Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C26F5B:                                           Call 0.Method_arg_20 (var_198)
  loc_1C26F63:                                           Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("DTime"))) & "'")
  loc_1C26F80:                                         Else
  loc_1C26FA2:                                           If (var_384 = Ucase("Remarks")) Then
  loc_1C26FB7:                                             var_174 = var_B4.Fields
  loc_1C26FBF:                                             var_17C = var_174.Item("Remark")
  loc_1C26FEE:                                             Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C26FF6:                                             Call 0.Method_arg_20 (var_198)
  loc_1C26FFE:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_17C)) & "'")
  loc_1C2701B:                                           Else
  loc_1C2703D:                                             If (var_384 = Ucase("BOOKRemark")) Then
  loc_1C27061:                                               Call 0.Method_arg_90 (var_174, CLng(var_AE))
  loc_1C27069:                                               Call 0.Method_arg_20 (var_17C)
  loc_1C27071:                                               Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1C27087:                                             Else
  loc_1C270A9:                                               If (var_384 = Ucase("Kitchen")) Then
  loc_1C270F5:                                                 Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C270FD:                                                 Call 0.Method_arg_20 (var_198)
  loc_1C27105:                                                 Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name"))) & "'")
  loc_1C27122:                                               Else
  loc_1C27144:                                                 If (var_384 = Ucase("User")) Then
  loc_1C27190:                                                   Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C27198:                                                   Call 0.Method_arg_20 (var_198)
  loc_1C271A0:                                                   Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_Name"))) & "'")
  loc_1C271BA:                                                 End If
  loc_1C271BA:                                               End If
  loc_1C271BA:                                             End If
  loc_1C271BA:                                           End If
  loc_1C271BA:                                         End If
  loc_1C271BA:                                       End If
  loc_1C271BA:                                     End If
  loc_1C271BA:                                   End If
  loc_1C271BA:                                 End If
  loc_1C271BA:                               End If
  loc_1C271BA:                             End If
  loc_1C271BA:                           End If
  loc_1C271BA:                         End If
  loc_1C271BA:                       End If
  loc_1C271BA:                     End If
  loc_1C271BA:                   End If
  loc_1C271BA:                 End If
  loc_1C271BA:               End If
  loc_1C271BA:             End If
  loc_1C271BD:           Next var_374 'Integer
  loc_1C271C5:           var_B4.MoveNext
  loc_1C271CA:           GoTo loc_1C25E53
  loc_1C271CD:         End If
  loc_1C271F5:         var_150 = Proc_6_38_E69628(CVar(var_10C.Fields.Item("Printer")))
  loc_1C27206:         If (var_150 <> vbNullString) Then
  loc_1C27253:           If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C27282:             Call Proc_169_76_F0F0D8(Proc_6_38_E69628(CVar(var_10C.Fields.Item("Printer"))))
  loc_1C27290:           End If
  loc_1C27290:         End If
  loc_1C27296:         If (var_E6 <= 0) Then
  loc_1C2729F:           Call 0.Method_arg_50 (var_150)
  loc_1C272A9:           Set var_17C = Nothing
  loc_1C272C3:           Set var_174 = MemVar_1F951E8 
  loc_1C272CF:           Proc_6_99_1484404(var_174, 0, var_150)
  loc_1C272DA:           MemVar_1F951E8 = var_174
  loc_1C272EB:         Else
  loc_1C27309:           Call 0.Method_Me8 (False, CVar(var_E6), var_160, var_1C8)
  loc_1C2730E:         End If
  loc_1C27311:       Else
  loc_1C2731C:         If (var_264 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1C27321:           Close 1
  loc_1C27348:           Open "C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C27358:           var_B4.MoveFirst
  loc_1C2735D:           ' Referenced from:     1C28003
  loc_1C2736C:           If Not(var_B4.EOF) Then
  loc_1C27371:             var_92 = 0
  loc_1C273AC:             var_190 = 3
  loc_1C2744C:             var_30C = Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCBOOKING")), &HFF)
  loc_1C27468:             var_180 = var_30C
  loc_1C2748F:             var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92))), 1, var_190)) = "LAU") 'Variant
  loc_1C27499:             var_304 = IIf(var_2F4, IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCBOOKING")), (Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCBOOKING")), var_1FC) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_180 = "Y"), "* NC BOOKING *", "* BOOKING *"))
  loc_1C274A2:             var_90 = CStr(var_304)
  loc_1C274E6:             If (var_92 = 0) Then
  loc_1C274EB:               Print 1
  loc_1C2751F:               var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C27530:               If (var_F0 <> vbNullString) Then
  loc_1C27559:                 var_170 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1C2755F:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C27571:               End If
  loc_1C27579:               If (var_F4 <> vbNullString) Then
  loc_1C275A2:                 var_170 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1C275A8:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C275BA:               End If
  loc_1C275C2:               If (var_F8 <> vbNullString) Then
  loc_1C275EB:                 var_170 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1C275F1:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C27603:               End If
  loc_1C2760B:               If (var_FC <> vbNullString) Then
  loc_1C27634:                 var_170 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H28)))
  loc_1C2763A:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C2764C:               End If
  loc_1C2764E:               Print 1
  loc_1C27671:               var_308 = "D"
  loc_1C2767E:               Call Proc_169_97_10AB264(Me.LblRest.Caption, var_308, &H28)
  loc_1C27688:               Print 1, var_30C
  loc_1C276AE:               Call Proc_169_97_10AB264(var_90, "D", &H28)
  loc_1C276B8:               Print 1, var_180
  loc_1C276F2:               var_30C = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name")), &H12, var_180)
  loc_1C2770D:               Call Proc_169_97_10AB264(var_30C, "D", &H28)
  loc_1C27717:               Print 1, var_308
  loc_1C27730:               Print 1
  loc_1C27769:               Proc_6_39_E7D3A0(var_190, CVar(var_B4.Fields.Item("VNo")), var_308)
  loc_1C2778B:               var_14C = (Chr(&HF) + "BOOKING No.   :     ")
  loc_1C27795:               var_1B8 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_190), &HA)))
  loc_1C2779B:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, var_190))
  loc_1C2784D:               var_14C = (Chr(&HF) + "BOOKING Dt.   :     ")
  loc_1C27857:               var_1A8 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_30C), &HC)))
  loc_1C27860:               var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_30C), &HC))), &HA)) + " ")
  loc_1C2786A:               var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_30C), &HC)))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C27870:               Print 1, "* NC LOT *"
  loc_1C27915:               var_310 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("DTime")))
  loc_1C27934:               var_14C = (Chr(&HF) + "DELIVERY Dt.  :     ")
  loc_1C2793E:               var_1A8 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("DDate"))), &HC)))
  loc_1C27947:               var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("DDate"))), &HC))), &HA)) + " ")
  loc_1C27951:               var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("DDate"))), &HC)))) + CVar(Proc_6_45_EADFB8(var_310, 8)))
  loc_1C27957:               Print 1, "* NC LOT *"
  loc_1C279DC:               var_1B8 = Chr(&H12)
  loc_1C279E9:               var_14C = (Chr(&HF) + "Remarks :     ")
  loc_1C279F3:               var_1A8 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remark"))), &H32)))
  loc_1C279FA:               var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remark"))), &H32))), &HA)) + var_1B8)
  loc_1C27A00:               Print 1, CVar(var_B4.Fields.Item("DTime"))
  loc_1C27A39:               var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C27A3F:               Print 1, CVar(Proc_6_45_EADFB8(var_FC, &H28))
  loc_1C27A4C:             End If
  loc_1C27A72:             var_170 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1C27A7E:             var_180 = "Qty"
  loc_1C27A8C:             var_1A8 = (CVar(var_B4.Fields.Item("Remark")) + CVar(Proc_6_52_EAE084(var_180, 6)))
  loc_1C27A91:             var_AC = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(var_180, 6))), &HA)))
  loc_1C27ABE:             var_14C = (Chr(&HF) + CVar(var_AC))
  loc_1C27AC4:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1C27AE7:             var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C27AED:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1C27B00:             var_92 = (var_92 + 4)
  loc_1C27B06:             var_B8.MoveFirst
  loc_1C27B0B:             ' Referenced from:     1C27EAC
  loc_1C27B1A:             If Not(var_B8.EOF) Then
  loc_1C27B6A:               Proc_6_39_E7D3A0(var_1B8, CVar(var_B8.Fields.Item("qty")))
  loc_1C27C0D:               var_190 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1C27C26:               var_234 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1B8, "0.00")), 6, CVar(Proc_6_52_EAE084(var_180, 6)))))
  loc_1C27C3C:               var_304 = CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1C27C3F:               var_344 = (&H12 + var_304)
  loc_1C27C98:               var_14C = (Chr(&HF) + CVar(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1C27C9E:               Print 1, Space(3)
  loc_1C27CB1:               var_92 = (var_92 + 1)
  loc_1C27CED:               If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C27D30:                 var_14C = (Chr(&HF) + "(")
  loc_1C27D3A:                 var_1A8 = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1C27D43:                 var_1B8 = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1C27D49:                 Print 1, var_1B8
  loc_1C27D6A:                 var_92 = (var_92 + 1)
  loc_1C27D6D:               End If
  loc_1C27D77:               If (&H12 = (&H45 - var_A6)) Then
  loc_1C27D90:                 var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C27D96:                 Print 1, Space(3)
  loc_1C27DA8:                 Print 1, "Contd."
  loc_1C27DC0:                 Print 1, Chr(&HC)
  loc_1C27DCF:                 var_94 = (var_94 + 1)
  loc_1C27DE5:                 Call Proc_169_98_134BED8(1, 0, &H28, var_316)
  loc_1C27E04:                 Call Proc_169_97_10AB264(var_90, "B", &H28, var_180, var_316)
  loc_1C27E0E:                 Print 1, var_180
  loc_1C27E1D:                 var_92 = &H12
  loc_1C27E36:                 var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C27E3C:                 Print 1, Space(3)
  loc_1C27E5F:                 var_14C = (Chr(&HF) + CVar(var_AC))
  loc_1C27E65:                 Print 1, Space(3)
  loc_1C27E88:                 var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C27E8E:                 Print 1, Space(3)
  loc_1C27EA1:                 var_92 = (var_92 + 4)
  loc_1C27EA4:               End If
  loc_1C27EA7:               var_B8.MoveNext
  loc_1C27EAC:               GoTo loc_1C27B0B
  loc_1C27EAF:             End If
  loc_1C27EB9:             If (var_92 < (&H45 - var_A6)) Then
  loc_1C27EBC:               ' Referenced from:     1C27EDD
  loc_1C27EC6:               If (var_92 = (&H45 - var_A6)) Then
  loc_1C27ECE:                 Print 1, vbNullString
  loc_1C27EDA:                 var_92 = (var_92 + 1)
  loc_1C27EDD:                 GoTo loc_1C27EBC
  loc_1C27EE0:               End If
  loc_1C27EE0:             End If
  loc_1C27EF6:             var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C27EFC:             Print 1, Space(3)
  loc_1C27F5D:             var_14C = (Chr(&HF) + "User  :     ")
  loc_1C27F64:             var_190 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_Name")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1C27F67:             var_1A8 = (Space(3) + var_190)
  loc_1C27F6D:             Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_1C27FA1:             var_14C = (Chr(&HF) + "** ")
  loc_1C27FAB:             var_170 = (Space(3) + CVar(MemVar_1F95220))
  loc_1C27FB4:             var_190 = (CVar(var_B4.Fields.Item("U_Name")) + " **")
  loc_1C27FBA:             Print 1, var_190
  loc_1C27FCE:             var_B4.MoveNext
  loc_1C27FD5:             Print 1
  loc_1C27FDD:             Print 1
  loc_1C27FE5:             Print 1
  loc_1C27FED:             Print 1
  loc_1C27FF5:             Print 1
  loc_1C27FFD:             Print 1
  loc_1C28003:             GoTo loc_1C2735D
  loc_1C28006:           End If
  loc_1C28008:           Close 1
  loc_1C28043:           If (Proc_6_38_E69628(CVar(var_10C.Fields.Item("Printer")), 1) <> vbNullString) Then
  loc_1C2806B:             Open "C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C280C3:             var_170 = CVar("TYPE C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_10C.Fields.Item("Printer").Value 
  loc_1C280C9:             Print 1, var_170
  loc_1C280E9:           Else
  loc_1C2810E:             Open "C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C28145:             Print 1, "TYPE C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1C28156:           End If
  loc_1C28158:           Close 1
  loc_1C28162:           If (MemVar_1F953BC = "Y") Then
  loc_1C28194:             var_A4 = CVar(Shell(CVar("C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C281A5:           Else
  loc_1C281AD:             For var_388 = 1 To var_E8:       var_EA = var_388 'Integer
  loc_1C281E2:               var_A4 = CVar(Shell(CVar("C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C281F3:             Next var_388 'Integer
  loc_1C281F8:           End If
  loc_1C281FB:         Else
  loc_1C28206:           If (var_264 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1C2820B:             Close 1
  loc_1C28232:             Open "C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C28242:             var_B4.MoveFirst
  loc_1C28247:             ' Referenced from:       1C28F3D
  loc_1C28256:             If Not(var_B4.EOF) Then
  loc_1C28296:               var_190 = 3
  loc_1C282DE:               var_308 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCBOOKING")))
  loc_1C28379:               var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_190)) = "LAU") 'Variant
  loc_1C28383:               var_304 = IIf(var_2F4, IIf((var_308 = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC BOOKING *", "* BOOKING *"))
  loc_1C2838C:               var_90 = CStr(var_304)
  loc_1C283D0:               If (0 = 0) Then
  loc_1C283D5:                 Print 1
  loc_1C28409:                 var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C2841A:                 If (var_F0 <> vbNullString) Then
  loc_1C28443:                   var_170 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1C28449:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C2845B:                 End If
  loc_1C28463:                 If (var_F4 <> vbNullString) Then
  loc_1C2848C:                   var_170 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1C28492:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C284A4:                 End If
  loc_1C284AC:                 If (var_F8 <> vbNullString) Then
  loc_1C284D5:                   var_170 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1C284DB:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C284ED:                 End If
  loc_1C284F5:                 If (var_FC <> vbNullString) Then
  loc_1C2851E:                   var_170 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H28)))
  loc_1C28524:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C28536:                 End If
  loc_1C28538:                 Print 1
  loc_1C2857C:                 Call Proc_169_97_10AB264(Proc_6_45_EADFB8(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1C28586:                 Print 1, var_310
  loc_1C285C4:                 Call Proc_169_97_10AB264(Proc_6_45_EADFB8(var_90, &H14), "D", &H28)
  loc_1C285CE:                 Print 1, var_308
  loc_1C28627:                 Call Proc_169_97_10AB264(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name")), &H12, var_308), "D", &H28)
  loc_1C28631:                 Print 1, var_308
  loc_1C2864A:                 Print 1
  loc_1C28683:                 Proc_6_39_E7D3A0(var_190, CVar(var_B4.Fields.Item("VNo")), var_308)
  loc_1C286A5:                 var_14C = (Chr(&HF) + "BOOKING No.   :       ")
  loc_1C286AF:                 var_1B8 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_190), &HA)))
  loc_1C286B5:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_190))
  loc_1C28767:                 var_14C = (Chr(&HF) + "BOOKING Dt.   :       ")
  loc_1C2876E:                 var_190 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME")))), &HC)) 'String
  loc_1C28771:                 var_1A8 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + var_190)
  loc_1C2877A:                 var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(var_190), &HA)) + " ")
  loc_1C28784:                 var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_190)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C2878A:                 Print 1, "* NC LOT *"
  loc_1C2884E:                 var_14C = (Chr(&HF) + "DELIVERY Dt.  :       ")
  loc_1C28858:                 var_1A8 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("DDate"))), &HC)))
  loc_1C28861:                 var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("DDate"))), &HC))), &HA)) + " ")
  loc_1C2886B:                 var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("DDate"))), &HC)))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("DTime"))), 8)))
  loc_1C28871:                 Print 1, "* NC LOT *"
  loc_1C288F6:                 var_1B8 = Chr(&H12)
  loc_1C28903:                 var_14C = (Chr(&HF) + "Remarks :       ")
  loc_1C2890D:                 var_1A8 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remark"))), &H32)))
  loc_1C28914:                 var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remark"))), &H32))), &HA)) + var_1B8)
  loc_1C2891A:                 Print 1, CVar(var_B4.Fields.Item("DTime"))
  loc_1C28953:                 var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C28959:                 Print 1, CVar(Proc_6_45_EADFB8(var_FC, &H28))
  loc_1C28966:               End If
  loc_1C2898C:               var_170 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1C28998:               var_180 = "Qty"
  loc_1C289A6:               var_1A8 = (CVar(var_B4.Fields.Item("Remark")) + CVar(Proc_6_52_EAE084(var_180, 6)))
  loc_1C289AB:               var_AC = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(var_180, 6))), &HA)))
  loc_1C289D8:               var_14C = (Chr(&HF) + CVar(var_AC))
  loc_1C289DE:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1C28A01:               var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C28A07:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1C28A1A:               var_92 = (var_92 + 4)
  loc_1C28A20:               var_B8.MoveFirst
  loc_1C28A25:               ' Referenced from:       1C28DC6
  loc_1C28A34:               If Not(var_B8.EOF) Then
  loc_1C28A84:                 Proc_6_39_E7D3A0(var_1B8, CVar(var_B8.Fields.Item("qty")))
  loc_1C28B27:                 var_190 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1C28B40:                 var_234 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1B8, "0.00")), 6, CVar(Proc_6_52_EAE084(var_180, 6)))))
  loc_1C28B56:                 var_304 = CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1C28B59:                 var_344 = (&H12 + var_304)
  loc_1C28BB2:                 var_14C = (Chr(&HF) + CVar(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1C28BB8:                 Print 1, Space(3)
  loc_1C28BCB:                 var_92 = (var_92 + 1)
  loc_1C28C07:                 If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C28C4A:                   var_14C = (Chr(&HF) + "(")
  loc_1C28C54:                   var_1A8 = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1C28C5D:                   var_1B8 = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1C28C63:                   Print 1, var_1B8
  loc_1C28C84:                   var_92 = (var_92 + 1)
  loc_1C28C87:                 End If
  loc_1C28C91:                 If (&H12 = (&H45 - var_A6)) Then
  loc_1C28CAA:                   var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C28CB0:                   Print 1, Space(3)
  loc_1C28CC2:                   Print 1, "Contd."
  loc_1C28CDA:                   Print 1, Chr(&HC)
  loc_1C28CE9:                   var_94 = (var_94 + 1)
  loc_1C28CFF:                   Call Proc_169_98_134BED8(1, 0, &H28, var_316)
  loc_1C28D1E:                   Call Proc_169_97_10AB264(var_90, "B", &H28, var_180, var_316)
  loc_1C28D28:                   Print 1, var_180
  loc_1C28D37:                   var_92 = &H12
  loc_1C28D50:                   var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C28D56:                   Print 1, Space(3)
  loc_1C28D79:                   var_14C = (Chr(&HF) + CVar(var_AC))
  loc_1C28D7F:                   Print 1, Space(3)
  loc_1C28DA2:                   var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C28DA8:                   Print 1, Space(3)
  loc_1C28DBB:                   var_92 = (var_92 + 4)
  loc_1C28DBE:                 End If
  loc_1C28DC1:                 var_B8.MoveNext
  loc_1C28DC6:                 GoTo loc_1C28A25
  loc_1C28DC9:               End If
  loc_1C28DD3:               If (var_92 < (&H45 - var_A6)) Then
  loc_1C28DD6:                 ' Referenced from:       1C28DF7
  loc_1C28DE0:                 If (var_92 = (&H45 - var_A6)) Then
  loc_1C28DE8:                   Print 1, vbNullString
  loc_1C28DF4:                   var_92 = (var_92 + 1)
  loc_1C28DF7:                   GoTo loc_1C28DD6
  loc_1C28DFA:                 End If
  loc_1C28DFA:               End If
  loc_1C28E10:               var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C28E16:               Print 1, Space(3)
  loc_1C28E77:               var_14C = (Chr(&HF) + "User :       ")
  loc_1C28E7E:               var_190 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_Name")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1C28E81:               var_1A8 = (Space(3) + var_190)
  loc_1C28E87:               Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_1C28EBB:               var_14C = (Chr(&HF) + "** ")
  loc_1C28EC5:               var_170 = (Space(3) + CVar(MemVar_1F95220))
  loc_1C28ECE:               var_190 = (CVar(var_B4.Fields.Item("U_Name")) + " **")
  loc_1C28ED4:               Print 1, var_190
  loc_1C28EE8:               var_B4.MoveNext
  loc_1C28EEF:               Print 1
  loc_1C28EF7:               Print 1
  loc_1C28EFF:               Print 1
  loc_1C28F07:               Print 1
  loc_1C28F0F:               Print 1
  loc_1C28F17:               Print 1
  loc_1C28F1F:               Print 1
  loc_1C28F27:               Print 1
  loc_1C28F2F:               Print 1
  loc_1C28F37:               Print 1
  loc_1C28F3D:               GoTo loc_1C28247
  loc_1C28F40:             End If
  loc_1C28F42:             Close 1
  loc_1C28F7D:             If (Proc_6_38_E69628(CVar(var_10C.Fields.Item("Printer")), 1) <> vbNullString) Then
  loc_1C28FA5:               Open "C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C28FFD:               var_170 = CVar("TYPE C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_10C.Fields.Item("Printer").Value 
  loc_1C29003:               Print 1, var_170
  loc_1C29023:             Else
  loc_1C29048:               Open "C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C2907F:               Print 1, "TYPE C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1C29090:             End If
  loc_1C29092:             Close 1
  loc_1C2909C:             If (MemVar_1F953BC = "Y") Then
  loc_1C290CE:               var_A4 = CVar(Shell(CVar("C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C290DF:             Else
  loc_1C290E7:               For var_38C = 1 To var_E8:         var_EA = var_38C 'Integer
  loc_1C2911C:                 var_A4 = CVar(Shell(CVar("C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C2912D:               Next var_38C 'Integer
  loc_1C29132:             End If
  loc_1C29135:           Else
  loc_1C29140:             If Not (var_264 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1C2914E:               If (var_264 = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_1C29151:               End If
  loc_1C29153:               Close 1
  loc_1C2917A:               Open "C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C2918A:               var_B4.MoveFirst
  loc_1C2918F:               ' Referenced from:         1C2A3F6
  loc_1C2919E:               If Not(var_B4.EOF) Then
  loc_1C292CB:                 var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC BOOKING *", "* BOOKING *"))
  loc_1C292D4:                 var_90 = CStr(var_304)
  loc_1C29340:                 var_C0 = Replace(CStr(Space(&H2E)), " ", "-", 1, -1, 0)
  loc_1C2934F:                 If (0 = 0) Then
  loc_1C29354:                   Print 1
  loc_1C29362:                   If (var_F0 <> vbNullString) Then
  loc_1C29398:                     var_170 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H2E)))
  loc_1C2939F:                     var_1A8 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C293A5:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C293BB:                   End If
  loc_1C293C3:                   If (var_F4 <> vbNullString) Then
  loc_1C293F9:                     var_170 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H2E)))
  loc_1C29400:                     var_1A8 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C29406:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C2941C:                   End If
  loc_1C29424:                   If (var_F8 <> vbNullString) Then
  loc_1C2945A:                     var_170 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H2E)))
  loc_1C29461:                     var_1A8 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C29467:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C2947D:                   End If
  loc_1C29485:                   If (var_FC <> vbNullString) Then
  loc_1C294BB:                     var_170 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H2E)))
  loc_1C294C2:                     var_1A8 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C294C8:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C294DE:                   End If
  loc_1C294E0:                   Print 1
  loc_1C2950F:                   var_1A8 = (46 - Len(Trim(CVar(Me.LblRest))))
  loc_1C29552:                   var_2E4 = (46 - Len(Trim(CVar(Me.LblRest))))
  loc_1C2955B:                   var_2F4 = (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC BOOKING *", "* BOOKING *") / 2)
  loc_1C2957C:                   var_1E8 = (Chr(&HF) + Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))))
  loc_1C29583:                   var_254 = (CVar(var_B4.Fields.Item("NCBOOKING")) + Trim(CVar(Me.LblRest)))
  loc_1C2958A:                   var_344 = (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC LOT *", "* LOT *") + Space(CLng(var_2F4)))
  loc_1C29591:                   var_368 = (IIf((var_B8.Fields.Item(2).Value = (Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1C29597:                   Print 1, var_368
  loc_1C295E5:                   var_190 = (46 - Len(Trim(var_90)))
  loc_1C29618:                   var_254 = (46 - Len(Trim(var_90)))
  loc_1C2962A:                   var_2B4 = Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC LOT *", "* LOT *") / 2)))
  loc_1C29642:                   var_1D8 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1C2964C:                   var_1E8 = (Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))) + CVar(var_90))
  loc_1C29653:                   var_2D4 = (CVar(var_B4.Fields.Item("NCBOOKING")) + var_2B4)
  loc_1C2965A:                   var_2F4 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1C29660:                   Print 1, var_2F4
  loc_1C2967F:                   var_92 = &H12
  loc_1C296C2:                   var_190 = Trim(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name")), 46)))
  loc_1C296CE:                   var_1B8 = (var_92 - Len(var_190))
  loc_1C2974F:                   var_304 = (var_92 - Len(Trim(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name")), 46)))))
  loc_1C29779:                   var_224 = (Chr(&HF) + Space(CLng((Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) / 2))))
  loc_1C29783:                   var_284 = (Trim(var_90) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name")))))
  loc_1C2978A:                   var_368 = ((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC LOT *", "* LOT *") / 2) + Space(CLng((Space(CLng(Len(Trim(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name")), 46)))))) / 2))))
  loc_1C29791:                   var_3AC = (var_368 + Chr(&H12))
  loc_1C29797:                   Print 1, var_3AC
  loc_1C297CE:                   Print 1
  loc_1C29800:                   var_170 = CVar(var_B4.Fields.Item("VNo")) 'Address
  loc_1C29807:                   Proc_6_39_E7D3A0(var_190)
  loc_1C29836:                   var_14C = (Chr(&HF) + "BOOKING No. :         ")
  loc_1C29840:                   var_1B8 = (CVar(var_BC.Fields.Item("Name")) + CVar(Proc_6_45_EADFB8(CStr(var_190), &H20)))
  loc_1C29847:                   var_1E8 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1C2984D:                   Print 1, Space(CLng((Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) / 2)))
  loc_1C29910:                   var_14C = (Chr(&HF) + "BOOKING Dt. :         ")
  loc_1C2991A:                   var_1A8 = (CVar(var_BC.Fields.Item("Name")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))), &HC)))
  loc_1C29923:                   var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))), &HC))), &H20)) + "   Tm. :         ")
  loc_1C2992D:                   var_224 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), &HB)))
  loc_1C29934:                   var_254 = (Trim(var_90) + Chr(&H12))
  loc_1C2993A:                   Print 1, CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name"))))
  loc_1C29A0F:                   var_14C = (Chr(&HF) + "DELIVERY Dt.:         ")
  loc_1C29A19:                   var_1A8 = (CVar(var_BC.Fields.Item("Name")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("DDate"))), &HC)))
  loc_1C29A22:                   var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("DDate"))), &HC))), &H20)) + "   Tm. :         ")
  loc_1C29A2C:                   var_224 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("DTime"))), &HB)))
  loc_1C29A33:                   var_254 = (Trim(var_90) + Chr(&H12))
  loc_1C29A39:                   Print 1, CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name"))))
  loc_1C29ACF:                   var_14C = (Chr(&HF) + "Remarks :         ")
  loc_1C29AD9:                   var_1A8 = (CVar(var_BC.Fields.Item("Name")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remark"))), &H24)))
  loc_1C29AE0:                   var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remark"))), &H24))), &H20)) + Chr(&H12))
  loc_1C29AE6:                   Print 1, CVar(var_B4.Fields.Item("DTime"))
  loc_1C29B2C:                   var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C29B33:                   var_190 = (CVar(var_BC.Fields.Item("Name")) + Chr(&H12))
  loc_1C29B39:                   Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remark"))), &H24))
  loc_1C29B4A:                 End If
  loc_1C29B70:                 var_170 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H18)) + Space(1))
  loc_1C29B8A:                 var_1A8 = (Chr(&H12) + CVar(Proc_6_45_EADFB8("Unit", 8)))
  loc_1C29B9E:                 var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8("Unit", 8))), &H20)) + Space(1))
  loc_1C29BB8:                 var_224 = (CVar(var_B4.Fields.Item("DTime")) + CVar(Proc_6_52_EAE084("Qty", 7)))
  loc_1C29C01:                 var_14C = (Chr(&HF) + CVar(CStr(Trim(var_90))))
  loc_1C29C08:                 var_190 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H18)) + Chr(&H12))
  loc_1C29C0E:                 Print 1, CVar(Proc_6_45_EADFB8("Unit", 8))
  loc_1C29C42:                 var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C29C49:                 var_190 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H18)) + Chr(&H12))
  loc_1C29C4F:                 Print 1, CVar(Proc_6_45_EADFB8("Unit", 8))
  loc_1C29C66:                 var_92 = (var_92 + 4)
  loc_1C29C6C:                 var_B8.MoveFirst
  loc_1C29C71:                 ' Referenced from:         1C2A27B
  loc_1C29C80:                 If Not(var_B8.EOF) Then
  loc_1C29CB9:                   var_194 = var_B8.Fields
  loc_1C29CFB:                   Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name")))), CVar(var_B8.Fields.Item("qty")))
  loc_1C29D9E:                   var_190 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H18, 1)) + Space(1))
  loc_1C29DB3:                   var_1B8 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_194.Item("Unit")), var_92), 8, CVar(Proc_6_45_EADFB8("Unit", 8)))) 'String
  loc_1C29DB6:                   var_1D8 = (1 + var_1B8)
  loc_1C29DCA:                   var_224 = (CVar(var_B4.Fields.Item("DTime")) + Space(1))
  loc_1C29DE0:                   var_2D4 = CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name")))), "0.000")), 7)) 'String
  loc_1C29DE3:                   var_2E4 = (Trim(var_90) + var_2D4)
  loc_1C29DF9:                   var_3AC = CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)) 'String
  loc_1C29DFC:                   var_3C8 = (Trim(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name")), 46))) + var_3AC)
  loc_1C29E72:                   var_14C = (Chr(&HF) + CVar(CStr(var_3C8)))
  loc_1C29E79:                   var_190 = (Space(1) + Chr(&H12))
  loc_1C29E7F:                   Print 1, CVar(Proc_6_45_EADFB8("Unit", 8))
  loc_1C29E96:                   var_92 = (var_92 + 1)
  loc_1C29ED2:                   If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), var_92) <> vbNullString) Then
  loc_1C29F1B:                     var_1A8 = Left(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))), &H2C)
  loc_1C29F28:                     var_14C = (Chr(&HF) + "(")
  loc_1C29F2F:                     var_1B8 = (Space(1) + var_1A8)
  loc_1C29F38:                     var_1D8 = (var_1B8 + ")")
  loc_1C29F3E:                     Print 1, CVar(var_B4.Fields.Item("DTime"))
  loc_1C29F61:                     var_92 = (var_92 + 1)
  loc_1C29F64:                   End If
  loc_1C29F78:                   var_150 = "Select IM.Name As ItemName, IM.Unit , Qty  from ComboPackDetail Inner Join ItemMast IM On ComboPackDetail.ItemCode = IM.Code And ComboPackDetail.RestCode = IM.RestCode where (ComboPackDetail.LOGSITE_CODE='" & MemVar_1F95078
  loc_1C29FAC:                   var_170 = CVar(var_150 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") & var_B8.Fields.Item("ItemCode").Value 
  loc_1C29FC3:                   unk_56D3B3.Execute CStr(var_170 & "'"), var_1A8, -1
  loc_1C29FCE:                   Set var_D0 = var_194
  loc_1C2A002:                   If (var_D0.RecordCount > 0) Then
  loc_1C2A007:                     var_106 = 1
  loc_1C2A00A:                     ' Referenced from:         1C2A268
  loc_1C2A019:                     If Not(var_D0.EOF) Then
  loc_1C2A026:                       var_12C = Chr(CLng((&H60 + var_106)))
  loc_1C2A061:                       var_194 = var_D0.Fields
  loc_1C2A0A3:                       Proc_6_39_E7D3A0(var_2D4, CVar(var_D0.Fields.Item("qty")))
  loc_1C2A12E:                       var_14C = (var_B8.Fields.Item("ItemCode").Value + ")")
  loc_1C2A135:                       var_190 = (CVar(var_150 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") + var_D0.Fields.Item("ItemName").Value)
  loc_1C2A156:                       var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value & "'"), &H18, 1)) + Space(1))
  loc_1C2A16B:                       var_224 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_194.Item("Unit")), var_106, var_194), 8, CVar(var_B4.Fields.Item("DTime")))) 'String
  loc_1C2A16E:                       var_234 = (1 + var_224)
  loc_1C2A182:                       var_284 = (CVar(var_B8.Fields.Item("qty")) + Space(1))
  loc_1C2A19B:                       var_344 = (var_92 + CVar(Proc_6_52_EAE084(CStr(Format(var_2D4, "0.000")), 7, "0.000")))
  loc_1C2A1B1:                       var_3E8 = CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)) 'String
  loc_1C2A1B4:                       var_3F8 = ((var_B8.Fields.Item("Cancel").Value = "Y") + var_3E8)
  loc_1C2A230:                       var_14C = (Chr(&HF) + CVar(CStr(var_3F8)))
  loc_1C2A237:                       var_190 = (CVar(var_150 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") + Chr(&H12))
  loc_1C2A23D:                       Print 1, Chr(&H12) & "'"
  loc_1C2A254:                       var_92 = (var_92 + 1)
  loc_1C2A25D:                       var_106 = (var_106 + 1)
  loc_1C2A263:                       var_D0.MoveNext
  loc_1C2A268:                       GoTo loc_1C2A00A
  loc_1C2A26B:                     End If
  loc_1C2A26B:                   End If
  loc_1C2A270:                   Set var_D0 = Nothing
  loc_1C2A276:                   var_B8.MoveNext
  loc_1C2A27B:                   GoTo loc_1C29C71
  loc_1C2A27E:                 End If
  loc_1C2A2A1:                 var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C2A2A8:                 var_190 = (CVar(var_150 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") + Chr(&H12))
  loc_1C2A2AE:                 Print 1, Chr(&H12) & "'"
  loc_1C2A313:                 var_1B8 = Chr(&H12)
  loc_1C2A320:                 var_14C = (Chr(&HF) + "User :         ")
  loc_1C2A32A:                 var_1A8 = (CVar(var_150 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_Name")), var_106), &H14)))
  loc_1C2A331:                 var_1D8 = (Space(1) + var_1B8)
  loc_1C2A337:                 Print 1, CVar(var_B4.Fields.Item("DTime"))
  loc_1C2A36F:                 var_14C = (Chr(&HF) + "** ")
  loc_1C2A379:                 var_170 = (CVar(var_150 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") + CVar(MemVar_1F95220))
  loc_1C2A382:                 var_190 = (CVar(var_B4.Fields.Item("U_Name")) + " **")
  loc_1C2A388:                 Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_Name")), var_106), &H14))
  loc_1C2A39C:                 var_B4.MoveNext
  loc_1C2A3A3:                 Print 1
  loc_1C2A3AB:                 Print 1
  loc_1C2A3B3:                 Print 1
  loc_1C2A3BB:                 Print 1
  loc_1C2A3E1:                 var_170 = (Chr(&H1B) + Chr(&H6D))
  loc_1C2A3E7:                 Print 1, CVar(var_B4.Fields.Item("U_Name"))
  loc_1C2A3F6:                 GoTo loc_1C2918F
  loc_1C2A3F9:               End If
  loc_1C2A3FB:               Close 1
  loc_1C2A436:               If (Proc_6_38_E69628(CVar(var_10C.Fields.Item("Printer")), var_92) <> vbNullString) Then
  loc_1C2A45E:                 Open "C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C2A4B6:                 var_170 = CVar("TYPE C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_10C.Fields.Item("Printer").Value 
  loc_1C2A4BC:                 Print 1, var_170
  loc_1C2A4DC:               Else
  loc_1C2A501:                 Open "C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C2A538:                 Print 1, "TYPE C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1C2A549:               End If
  loc_1C2A54B:               Close 1
  loc_1C2A555:               If (MemVar_1F953BC = "Y") Then
  loc_1C2A587:                 var_A4 = CVar(Shell(CVar("C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C2A598:               Else
  loc_1C2A5A0:                 For var_3FC = 1 To var_E8:           var_EA = var_3FC 'Integer
  loc_1C2A5D5:                   var_A4 = CVar(Shell(CVar("C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C2A5E6:                 Next var_3FC 'Integer
  loc_1C2A5EB:               End If
  loc_1C2A5EB:             End If
  loc_1C2A5EB:           End If
  loc_1C2A5EB:         End If
  loc_1C2A5EB:       End If
  loc_1C2A5EB:     End If
  loc_1C2A641:     unk_56D3B3.Execute CStr("UPDATE PackingOrder SET PRINTEDYN='Y' WHERE DOCID='" & Me.Fields.Item("SearchCode").Value & "'"), CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_Name")), var_106), &H14)), -1
  loc_1C2A660:   Else
  loc_1C2A6AA:     MsgBox("Please Check Printer Setting of " & var_10C.Fields.Item("Name").Value & ".", &H40, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_Name")), var_106), &H14)), Space(1), var_1B8)
  loc_1C2A6C5:   End If
  loc_1C2A6C8:   var_BC.MoveNext
  loc_1C2A6CD:   GoTo loc_1C24EC4
  loc_1C2A6D0: End If
  loc_1C2A6D5: Set var_B4 = Nothing
  loc_1C2A6DD: Set var_B8 = Nothing
  loc_1C2A6E5: Set var_BC = Nothing
  loc_1C2A6ED: Set var_10C = Nothing
  loc_1C2A6F5: Set var_D0 = Nothing
  loc_1C2A6FD: Set var_DC = Nothing
  loc_1C2A705: Set var_100 = Nothing
  loc_1C2A708: Exit Sub
  loc_1C2A709: ' Referenced from: 1C24968
  loc_1C2A709: Proc_6_60_E63754(var_194)
  loc_1C2A70E: Exit Sub
End Sub

Public Sub Proc_169_81_FCF7A4(arg_C, arg_10, arg_14) 'FCF7A4
  'Data Table: 56D3A8
  Dim unk_56D3B3 As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Variant
  loc_FCF60E: If (arg_C = "ORDER") Then
  loc_FCF635:   unk_56D3B3.Execute "Select DocId,VType,VNo From PackingOrderDetail Where DocId='" & arg_10 & "' And isnull(Contradocid,'')<>''", var_C0, -1
  loc_FCF664:   If (var_C4.RecordCount > 0) Then
  loc_FCF66D:     Call 0.Method_arg_50 (var_D0)
  loc_FCF69F:     var_C0 = CVar("Bill Already Generated." & vbCrLf & "Can not " & arg_14 & " the Record") 'String
  loc_FCF6A2:     MsgBox(var_C0, &H10, CVar(var_D0), var_F0, var_110)
  loc_FCF6C5:     Set var_8C = Nothing
  loc_FCF6C8:     Proc_169_81_FCF7A4 = 0
  loc_FCF6CE:   End If
  loc_FCF6F2:   unk_56D3B3.Execute "Select DocId,VType,VNo From PayCharge Where ContraDocId='" & arg_10 & "'", var_C0, -1
  loc_FCF721:   If (var_C4.RecordCount > 0) Then
  loc_FCF72A:     Call 0.Method_arg_50 (var_D0, var_C4)
  loc_FCF75F:     MsgBox(CVar("Advance Entry Exists." & vbCrLf & "Can not " & arg_14 & " the Record"), &H10, CVar(var_D0), var_F0, var_110)
  loc_FCF782:     Set var_8C = Nothing
  loc_FCF785:     Proc_169_81_FCF7A4 = 0
  loc_FCF78B:   End If
  loc_FCF78E: Else
  loc_FCF793:   Proc_169_81_FCF7A4 = &HFF
  loc_FCF799: End If
  loc_FCF79E: Proc_169_81_FCF7A4 = &HFF
End Sub

Public Sub Proc_169_82_F2C344(arg_C, arg_10, arg_14) 'F2C344
  'Data Table: 56D3A8
  Dim unk_56D3B3 As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Variant
  loc_F2C26A: If (arg_C = "ORDER") Then
  loc_F2C291:   unk_56D3B3.Execute "Select DocId,VType,VNo From PackingOrderDetail Where DocId='" & arg_10 & "' And isnull(Contradocid,'')=''", var_C0, -1
  loc_F2C2C1:   If Not((var_C4.RecordCount > 0)) Then
  loc_F2C2CA:     Call 0.Method_arg_50 (var_D0)
  loc_F2C2FF:     MsgBox(CVar("Bill Already Generated." & vbCrLf & "Can Not " & arg_14 & " The Record"), &H10, CVar(var_D0), var_F0, var_110)
  loc_F2C322:     Set var_8C = Nothing
  loc_F2C325:     Proc_169_82_F2C344 = 0
  loc_F2C32B:   End If
  loc_F2C32E: Else
  loc_F2C333:   Proc_169_82_F2C344 = &HFF
  loc_F2C339: End If
  loc_F2C33E: Proc_169_82_F2C344 = &HFF
End Sub

Public Sub Proc_169_83_161889C
  'Data Table: 56D3A8
  Dim Me As Recordset15
  Dim var_F4 As String
  Dim var_F8 As String
  Dim unk_56D3B3 As Connection15
  Dim var_120 As String
  Dim var_12C As String
  Dim var_124 As Variant
  Dim var_8C As Recordset15
  Dim var_140 As Variant
  Dim var_D8 As Recordset15
  Dim var_11C As Fields15
  Dim var_118 As Variant
  Dim var_CE As Integer
  Dim var_D0 As Integer
  Dim var_E4 As Recordset15
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1A4 As Variant
  Dim var_1C0 As Variant
  Dim var_258 As Variant
  Dim var_210 As Variant
  Dim var_230 As Variant
  Dim var_268 As Variant
  Dim var_278 As Variant
  Dim var_194 As Variant
  Dim var_288 As Variant
  Dim var_298 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_94 As Double
  Dim var_A4 As Double
  Dim var_9C As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_36C As Variant
  Dim var_CC As Long
  loc_1617460: On Error Goto loc_1618894
  loc_161747A: If (Me.RecordCount <= 0) Then
  loc_161747D:   Exit Sub
  loc_161747E: End If
  loc_16174A5: unk_56D3B3.Execute "Select * from Depart Where Code='" & global_52 & "'", var_118, -1
  loc_16174B0: Set var_E4 = var_11C
  loc_16174C7: var_F4 = "SELECT     P.VNo as BookingNo,PD.SNo,P.CustName as CustomerName, I.Name as ItemName, P.VDate as BookingDate, " & "P.VTime as BookingTime, P.DDate as DeliveryDate, P.DTime as DeliveryTime, PD.Qty as Quantity, "
  loc_16174CE: var_F8 = var_F4 & "PD.Rate, PD.Amount, P.Total,P.AdvAmt as Advance ,Discount, P.Tax, P.Addition, P.Deduction,P.RoundOff, P.NetAmt as NetAmount,P.TokenNo, "
  loc_16174D5: var_120 = var_F8 & "PD.Remark, P.Site_Code,Isnull(P.NCBOOKING,'') As NCBOOKING,Isnull(P.NCTYPE,'') As NCTYPE FROM PackingOrder P INNER JOIN PackingOrderDetail  PD ON P.DocID = PD.DocID INNER JOIN "
  loc_16174DC: var_12C = var_120 & "Voucher_Type V ON P.VType = V.V_Type AND P.LogSite_Code = V.LogSite_Code  INNER JOIN ItemMast I ON PD.ItemCode = I.Code And PD.ItemRestCode = I.RestCode where P.DocId='"
  loc_16174ED: Set var_11C = Me.Txt
  loc_16174F3: Call 0.Method_Proc_169_83_161889C0 (CInt(2), var_124, var_128)
  loc_16174FB: var_12C = var_124.Text
  loc_161750B: var_88 = var_11C & var_128 & "' Order by PD.Sno"
  loc_161752C: If (var_88 = vbNullString) Then
  loc_161752F:   Exit Sub
  loc_1617530: End If
  loc_1617546: unk_56D3B3.Execute var_88, var_118, -1
  loc_1617551: Set var_8C = var_11C
  loc_161756E: If (var_8C.RecordCount <= 0) Then
  loc_1617577:   Call 0.Method_arg_50 (var_F4)
  loc_1617592:   var_118 = "** No Records Found to Print **"
  loc_1617598:   MsgBox(var_118, &H40, CVar(var_F4), var_160, var_180)
  loc_16175A8:   Exit Sub
  loc_16175A9: End If
  loc_16175CD: unk_56D3B3.Execute "Select BookingSlipFooter1,BookingSlipFooter2 from Enviro where LOGSite_code='" & MemVar_1F95078 & "'", var_118, -1
  loc_16175D8: Set var_D8 = var_11C
  loc_16175FC: If (var_D8.RecordCount > 0) Then
  loc_161760E:   var_11C = var_D8.Fields
  loc_1617627:   var_DC = Proc_6_38_E69628(CVar(var_11C.Item("BookingSlipFooter1")), var_11C)
  loc_1617658:   var_E0 = Proc_6_38_E69628(CVar(var_D8.Fields.Item("BookingSlipFooter2")))
  loc_1617661: End If
  loc_1617663: var_CE = 1
  loc_161766E: MemVar_1F953CC = "K"
  loc_1617674: Close 1
  loc_161767D: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16176BA: If (Proc_6_38_E69628(CVar(var_E4.Fields.Item("CstNo")), 1) <> vbNullString) Then
  loc_161771F:   var_180 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_E4.Fields.Item("CstNo")), var_CE), &H23)))
  loc_1617726:   var_1A4 = (var_180 + Chr(&H12))
  loc_161772C:   Print 1, var_1A4
  loc_1617753:   var_D0 = (var_D0 + 1)
  loc_1617756: End If
  loc_161778F: If (Proc_6_38_E69628(CVar(var_E4.Fields.Item("LstNo")), 1) <> vbNullString) Then
  loc_16177DB:   var_120 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_E4.Fields.Item("LstNo"))), &H23)
  loc_16177F4:   var_180 = (Chr(&HF) + CVar(var_120))
  loc_16177FB:   var_1A4 = (var_180 + Chr(&H12))
  loc_1617801:   Print 1, var_1A4
  loc_1617828:   var_D0 = (var_D0 + 1)
  loc_161782B: End If
  loc_1617839: Call Proc_169_98_134BED8(var_CE, 1, &H26)
  loc_161785E: Call Proc_169_97_10AB264("Booking Slip", "D", &H26, var_120)
  loc_1617868: Print 1, var_120
  loc_161787A: var_8C.MoveFirst
  loc_16178AD: var_C8 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_16178BB: Print 1, vbNullString
  loc_16178F4: Proc_6_39_E7D3A0(var_180, CVar(var_8C.Fields.Item("bookingno")), var_1A6)
  loc_1617986: var_210 = ("Date : " + Format(CVar(var_8C.Fields.Item("Bookingdate")), "dd/mm/yy"))
  loc_161798F: var_230 = (var_210 + " ")
  loc_1617999: var_278 = (var_230 + CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("BookingTime")), 1, 1)))
  loc_16179B2: var_140 = (Chr(&HF) + "Order No. : ")
  loc_16179BC: var_1A4 = (CVar(var_E4.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(CStr(var_180), 5, var_1A6)))
  loc_16179C6: var_298 = (var_1A4 + CVar(Proc_6_52_EAE084(CStr(var_278), &H17)))
  loc_16179CC: Print 1, var_298
  loc_1617A5C: var_140 = (Chr(&HF) + "Cust. Name: ")
  loc_1617A66: var_194 = (CVar(var_E4.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("CustomerName").Value), &H1C)))
  loc_1617A6C: Print 1, CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("CustomerName").Value), &H1C))), 5, var_1A6))
  loc_1617B12: var_1A4 = (Format(CVar(var_8C.Fields.Item("DeliveryDate")), "dd/mm/yy") + " ")
  loc_1617B1C: var_1F0 = (var_1A4 + CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("DeliveryTime")), 1, 1)))
  loc_1617B42: var_140 = (Chr(&HF) + "Del. Date : ")
  loc_1617B4C: var_230 = (CVar(var_E4.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(CStr(Format(CVar(var_8C.Fields.Item("Bookingdate")), "dd/mm/yy")), &H14)))
  loc_1617B53: var_268 = (var_230 + Chr(&H12))
  loc_1617B59: Print 1, CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("BookingTime")), 1, 1))
  loc_1617BEA: var_140 = (Chr(&HF) + "Token No. : ")
  loc_1617BF4: var_194 = (CVar(var_E4.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("TokenNo").Value), &HA)))
  loc_1617BFB: var_1C0 = (Format(CVar(var_8C.Fields.Item("DeliveryDate")), "dd/mm/yy") + Chr(&H12))
  loc_1617C01: Print 1, CVar(var_8C.Fields.Item("DeliveryTime"))
  loc_1617C3C: var_140 = (Chr(&HF) + CVar(var_C8))
  loc_1617C42: Print 1, CVar(var_E4.Fields.Item("LstNo"))
  loc_1617C9D: var_1E0 = Space(1)
  loc_1617CE4: var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_1617CEB: var_194 = (var_8C.Fields.Item("TokenNo").Value + Space(1))
  loc_1617CF5: var_1C0 = (Format(CVar(var_8C.Fields.Item("DeliveryDate")), "dd/mm/yy") + CVar(Proc_6_52_EAE084("Qty", 5)))
  loc_1617CFC: var_1F0 = (CVar(var_8C.Fields.Item("DeliveryTime")) + var_1E0)
  loc_1617D06: var_230 = (Format(CVar(var_8C.Fields.Item("Bookingdate")), "dd/mm/yy") + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_1617D0D: var_268 = (var_230 + Space(1))
  loc_1617D17: var_288 = (CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("BookingTime")), 1, 1)) + CVar(Proc_6_52_EAE084("Amount", 7)))
  loc_1617D1D: Print 1, CVar(Proc_6_52_EAE084(CStr(CVar(Proc_6_52_EAE084("Amount", 7))), &H17))
  loc_1617D6D: var_140 = (Chr(&HF) + CVar(var_C8))
  loc_1617D73: Print 1, CVar(Proc_6_45_EADFB8("Item Name", &H13))
  loc_1617DA6: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("Item Name", &H13)), CVar(var_8C.Fields.Item("Total")))
  loc_1617DAF: var_94 = CSng(CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_1617DE2: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("Item Name", &H13)), CVar(var_8C.Fields.Item("Tax")), var_94)
  loc_1617DEB: var_A4 = CSng(CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_1617E1E: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("Item Name", &H13)), CVar(var_8C.Fields.Item("Discount")), var_A4)
  loc_1617E27: var_9C = CSng(CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_1617E5A: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("Item Name", &H13)), CVar(var_8C.Fields.Item("NetAmount")), var_9C)
  loc_1617E63: var_AC = CSng(CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_1617E96: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("Item Name", &H13)), CVar(var_8C.Fields.Item("Advance")), var_AC)
  loc_1617E9F: var_B4 = CSng(CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_1617ED2: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("Item Name", &H13)), CVar(var_8C.Fields.Item("Addition")), var_B4)
  loc_1617EDB: var_BC = CSng(CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_1617F0E: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("Item Name", &H13)), CVar(var_8C.Fields.Item("RoundOff")), var_BC)
  loc_1617F17: var_C4 = CSng(CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_1617F4F: var_EC = CStr(var_8C.Fields.Item("NCBOOKING").Value)
  loc_1617F87: var_E8 = CStr(var_8C.Fields.Item("NCType").Value)
  loc_1617F94: ' Referenced from: 16181E1
  loc_1617FA3: If Not(var_8C.EOF) Then
  loc_1618022:   Proc_6_39_E7D3A0(var_1E0, CVar(var_8C.Fields.Item("Quantity")))
  loc_161808F:   Proc_6_39_E7D3A0(var_298, CVar(var_8C.Fields.Item("Rate")), 1)
  loc_16180FC:   Proc_6_39_E7D3A0(var_32C, CVar(var_8C.Fields.Item("Amount")), 1)
  loc_161813F:   var_180 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)))
  loc_1618146:   var_1A4 = (Space(1) + Space(1))
  loc_1618150:   var_258 = (CVar(Proc_6_52_EAE084("Qty", 5)) + CVar(Proc_6_52_EAE084(CStr(Format(var_1E0, "0.00")), 5, 1)))
  loc_1618157:   var_278 = (Space(1) + Space(1))
  loc_1618161:   var_2E4 = (CVar(Proc_6_52_EAE084("Amount", 7)) + CVar(Proc_6_52_EAE084(CStr(Format(var_298, "0.00")), 6, 1)))
  loc_1618168:   var_304 = (var_2E4 + Space(1))
  loc_1618172:   var_36C = (var_304 + CVar(Proc_6_52_EAE084(CStr(Format(var_32C, "0.00")), 7, 1)))
  loc_1618178:   Print 1, var_36C
  loc_16181DC:   var_8C.MoveNext
  loc_16181E1:   GoTo loc_1617F94
  loc_16181E4: End If
  loc_16181FA: var_140 = (Chr(&HF) + CVar(var_C8))
  loc_1618200: Print 1, var_8C.Fields.Item("ItemName").Value
  loc_1618267: var_160 = (Chr(&HF) + Space(&H11))
  loc_1618270: var_180 = (CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Total      : ")
  loc_161827A: var_1E0 = (Space(1) + CVar(Proc_6_52_EAE084(CStr(Format(var_94, "0.00")), &HA, 1, 1)))
  loc_1618280: Print 1, var_1E0
  loc_16182A7: If (var_9C > CDbl(0)) Then
  loc_1618304:   var_160 = (Chr(&HF) + Space(&H11))
  loc_161830D:   var_180 = (CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Discount   : ")
  loc_1618317:   var_1E0 = (Space(1) + CVar(Proc_6_52_EAE084(CStr(Format(var_9C, "0.00")), &HA, 1, 1)))
  loc_161831D:   Print 1, var_1E0
  loc_161833D: End If
  loc_1618344: If (var_A4 > CDbl(0)) Then
  loc_16183A1:   var_160 = (Chr(&HF) + Space(&H11))
  loc_16183AA:   var_180 = (CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Tax        : ")
  loc_16183B4:   var_1E0 = (Space(1) + CVar(Proc_6_52_EAE084(CStr(Format(var_A4, "0.00")), &HA, 1, 1)))
  loc_16183BA:   Print 1, var_1E0
  loc_16183DA: End If
  loc_16183E1: If (var_BC > CDbl(0)) Then
  loc_161843E:   var_160 = (Chr(&HF) + Space(&H11))
  loc_1618447:   var_180 = (CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Addition   : ")
  loc_1618451:   var_1E0 = (Space(1) + CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_1618457:   Print 1, var_1E0
  loc_1618477: End If
  loc_161847E: If (var_C4 > CDbl(0)) Then
  loc_16184DB:   var_160 = (Chr(&HF) + Space(&H11))
  loc_16184E4:   var_180 = (CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Round off  : ")
  loc_16184EE:   var_1E0 = (Space(1) + CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1, 1)))
  loc_16184F4:   Print 1, var_1E0
  loc_1618514: End If
  loc_161851B: If (var_AC > CDbl(0)) Then
  loc_1618578:   var_160 = (Chr(&HF) + Space(&H11))
  loc_1618581:   var_180 = (CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Net Amount : ")
  loc_161858B:   var_1E0 = (Space(1) + CVar(Proc_6_52_EAE084(CStr(Format(var_AC, "0.00")), &HA, 1, 1)))
  loc_1618591:   Print 1, var_1E0
  loc_16185B1: End If
  loc_16185C7: var_140 = (Chr(&HF) + CVar(var_C8))
  loc_16185CD: Print 1, Space(&H11)
  loc_16185E1: If (var_B4 > CDbl(0)) Then
  loc_1618633:   var_140 = (Chr(&HF) + "Advance Taken: ")
  loc_161863D:   var_1A4 = (Space(&H11) + CVar(Proc_6_52_EAE084(CStr(Format(var_B4, "0.00")), &HA, 1, 1)))
  loc_1618643:   Print 1, Format(var_AC, "0.00")
  loc_161865F: End If
  loc_1618664: Print 1, vbNullString
  loc_1618670: var_D0 = (var_D0 + 1)
  loc_161867B: If (var_EC = "Y") Then
  loc_16186A5:   Print 1, "**NON CHARGEABLE FOR " & Ucase(var_E8) & "**"
  loc_16186BA:   var_D0 = (var_D0 + 1)
  loc_16186BD: End If
  loc_16186C5: If (var_EC = "Y") Then
  loc_16186CD:   Print 1, vbNullString
  loc_16186D9:   var_D0 = (var_D0 + 1)
  loc_16186DC: End If
  loc_16186FA: If CBool(Trim(var_DC) <> vbNullString) Then
  loc_1618702:   Print 1, var_DC
  loc_161870E:   var_D0 = (var_D0 + 1)
  loc_1618711: End If
  loc_161872F: If CBool(Trim(var_E0) <> vbNullString) Then
  loc_1618737:   Print 1, var_E0
  loc_1618743:   var_D0 = (var_D0 + 1)
  loc_1618746: End If
  loc_161874B: Print 1, vbNullString
  loc_1618757: var_D0 = (var_D0 + 1)
  loc_161877D: var_140 = (Chr(&HF) + CVar(MemVar_1F95220))
  loc_1618784: var_180 = ("**NON CHARGEABLE FOR " & Ucase(var_E8) + Chr(&H12))
  loc_161878A: Print 1, Format(var_B4, "0.00")
  loc_16187A1: var_D0 = (var_D0 + 1)
  loc_16187A9: Print 1, vbNullString
  loc_16187B5: var_D0 = (var_D0 + 1)
  loc_16187BD: Print 1, vbNullString
  loc_16187C9: var_D0 = (var_D0 + 1)
  loc_16187D1: Print 1, vbNullString
  loc_16187DD: var_D0 = (var_D0 + 1)
  loc_1618800: var_160 = (Chr(&H1B) + Chr(&H6D))
  loc_1618806: Print 1, Chr(&H12)
  loc_1618817: Close 1
  loc_1618820: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1618830: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_161883B: Close 1
  loc_1618845: If (MemVar_1F953BC = "Y") Then
  loc_161885E:   var_CC = CLng(Shell("C:\reptmp\SBILL.PIF", 0))
  loc_1618867: Else
  loc_161887D:   var_CC = CLng(Shell("C:\reptmp\SBILL.BAT", 0))
  loc_1618883: End If
  loc_1618888: Set var_8C = Nothing
  loc_1618890: Set var_E4 = Nothing
  loc_1618893: Exit Sub
  loc_1618894: ' Referenced from: 1617460
  loc_1618894: Proc_6_60_E63754(var_CC, var_CC, var_1A6, var_1A6, var_1A6, var_1A6, var_1A6, var_1A6)
  loc_1618899: Exit Sub
End Sub

Public Sub Proc_169_84_E996F0
  'Data Table: 56D3A8
  Dim var_88 As MSHFlexGrid
  loc_E996B1: Call Proc_169_96_11D7724(CStr(Me.FGrid.TextMatrix)), CVar(CLng(1)))
  loc_E996CB: Set var_88 = Me.TopCtrl1
  loc_E996D1: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(Me.FGrid.Row)))
  loc_E996EA: If (CStr() = "Browse") Then
  loc_E996ED:   Exit Sub
  loc_E996EE: End If
  loc_E996EE: Exit Sub
End Sub

Public Sub Proc_169_85_10631B8
  'Data Table: 56D3A8
  Dim var_88 As MSFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_EC As String
  loc_1062F2C: On Error Goto loc_10631AF
  loc_1062F33: Set var_88 = Me.FGridFinish
  loc_1062F4A: global_68 = CStr(CLng(var_88.BackColor))
  loc_1062F60: var_88.Cols = 6
  loc_1062F68: var_AC = CVar(CLng(0)) 'Long
  loc_1062F6D: var_CC = &HFA
  loc_1062F79: LateIdCallSt
  loc_1062F81: var_AC = 0
  loc_1062F8D: var_CC = CVar(CLng(0)) 'Long
  loc_1062F92: var_EC = "SNo"
  loc_1062F9B: LateIdCallSt
  loc_1062FA3: var_AC = 1
  loc_1062FAF: var_CC = CVar(CLng(0)) 'Long
  loc_1062FB4: var_EC = "1"
  loc_1062FBD: LateIdCallSt
  loc_1062FC8: var_AC = CVar(CLng(0)) 'Long
  loc_1062FCD: var_CC = &H258
  loc_1062FD9: LateIdCallSt
  loc_1062FE1: var_AC = 0
  loc_1062FED: var_CC = CVar(CLng(1)) 'Long
  loc_1062FF2: var_EC = "Item Code"
  loc_1062FFB: LateIdCallSt
  loc_1063006: var_AC = CVar(CLng(1)) 'Long
  loc_1063011: var_CC = CVar(CInt(1)) 'Integer
  loc_1063018: LateIdCallSt
  loc_1063023: var_AC = CVar(CLng(1)) 'Long
  loc_1063028: var_CC = 0
  loc_1063034: LateIdCallSt
  loc_106303C: var_AC = 0
  loc_1063048: var_CC = CVar(CLng(2)) 'Long
  loc_106304D: var_EC = "Item Name"
  loc_1063056: LateIdCallSt
  loc_1063061: var_AC = CVar(CLng(2)) 'Long
  loc_106306C: var_CC = CVar(CInt(1)) 'Integer
  loc_1063073: LateIdCallSt
  loc_106307E: var_AC = CVar(CLng(2)) 'Long
  loc_1063083: var_CC = &HAF0
  loc_106308F: LateIdCallSt
  loc_1063097: var_AC = 0
  loc_10630A3: var_CC = CVar(CLng(3)) 'Long
  loc_10630A8: var_EC = "Unit"
  loc_10630B1: LateIdCallSt
  loc_10630BC: var_AC = CVar(CLng(3)) 'Long
  loc_10630C7: var_CC = CVar(CInt(1)) 'Integer
  loc_10630CE: LateIdCallSt
  loc_10630D9: var_AC = CVar(CLng(3)) 'Long
  loc_10630DE: var_CC = &H3E8
  loc_10630EA: LateIdCallSt
  loc_10630F2: var_AC = 0
  loc_10630FE: var_CC = CVar(CLng(4)) 'Long
  loc_1063103: var_EC = "Qty"
  loc_106310C: LateIdCallSt
  loc_1063117: var_AC = CVar(CLng(4)) 'Long
  loc_1063122: var_CC = CVar(CInt(7)) 'Integer
  loc_1063129: LateIdCallSt
  loc_1063134: var_AC = CVar(CLng(4)) 'Long
  loc_1063139: var_CC = &H384
  loc_1063145: LateIdCallSt
  loc_106314D: var_AC = 0
  loc_1063159: var_CC = CVar(CLng(5)) 'Long
  loc_106315E: var_EC = "ComboCode"
  loc_1063167: LateIdCallSt
  loc_1063172: var_AC = CVar(CLng(5)) 'Long
  loc_106317D: var_CC = CVar(CInt(7)) 'Integer
  loc_1063184: LateIdCallSt
  loc_106318F: var_AC = CVar(CLng(5)) 'Long
  loc_1063194: var_CC = 0
  loc_10631A0: LateIdCallSt
  loc_10631AA: Set var_88 = Nothing 
  loc_10631AE: Exit Sub
  loc_10631AF: ' Referenced from: 1062F2C
  loc_10631AF: Proc_6_60_E63754(var_88, var_CC, var_AC, var_88, var_CC, var_AC, var_88, var_EC)
  loc_10631B4: Exit Sub
End Sub

Public Sub Proc_169_86_13A693C
  'Data Table: 56D3A8
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  Dim var_104 As MSHFlexGrid
  loc_13A601E: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_13A6039: Me.FGrid.Top = CVar(CDbl(1605))
  loc_13A6054: Me.FGrid.Height = CVar(CDbl(5500))
  loc_13A606F: Me.FGrid.Width = CVar(CDbl(8700))
  loc_13A608A: Me.DGItem.Left = CVar(CDbl(3000))
  loc_13A60A5: Me.DGItem.Top = CVar(CDbl(3145))
  loc_13A60B1: Set var_AC = Me.FGrid
  loc_13A60C8: global_68 = CStr(CLng(var_AC.BackColor))
  loc_13A60DE: var_AC.Cols = &H20
  loc_13A60E3: var_94 = 0
  loc_13A60EF: var_D0 = CVar(CLng(0)) 'Long
  loc_13A60F4: var_F0 = vbNullString
  loc_13A60FD: LateIdCallSt
  loc_13A6108: var_94 = CVar(CLng(0)) 'Long
  loc_13A6113: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A611A: LateIdCallSt
  loc_13A6125: var_94 = CVar(CLng(0)) 'Long
  loc_13A612A: var_D0 = &H190
  loc_13A6136: LateIdCallSt
  loc_13A613E: var_94 = 0
  loc_13A614A: var_D0 = CVar(CLng(1)) 'Long
  loc_13A614F: var_F0 = "Item Code"
  loc_13A6158: LateIdCallSt
  loc_13A6163: var_94 = CVar(CLng(1)) 'Long
  loc_13A616E: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A6175: LateIdCallSt
  loc_13A6180: var_94 = CVar(CLng(1)) 'Long
  loc_13A6185: var_D0 = 0
  loc_13A6191: LateIdCallSt
  loc_13A6199: var_94 = 0
  loc_13A61A5: var_D0 = CVar(CLng(2)) 'Long
  loc_13A61AA: var_F0 = "Item Code"
  loc_13A61B3: LateIdCallSt
  loc_13A61BE: var_94 = CVar(CLng(2)) 'Long
  loc_13A61C9: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A61D0: LateIdCallSt
  loc_13A61DB: var_94 = CVar(CLng(2)) 'Long
  loc_13A61E0: var_D0 = &H258
  loc_13A61EC: LateIdCallSt
  loc_13A61F4: var_94 = 0
  loc_13A6200: var_D0 = CVar(CLng(3)) 'Long
  loc_13A6205: var_F0 = "Item Name"
  loc_13A620E: LateIdCallSt
  loc_13A6219: var_94 = CVar(CLng(3)) 'Long
  loc_13A6224: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A622B: LateIdCallSt
  loc_13A6236: var_94 = CVar(CLng(3)) 'Long
  loc_13A623B: var_D0 = &H8FC
  loc_13A6247: LateIdCallSt
  loc_13A624F: var_94 = 0
  loc_13A625B: var_D0 = CVar(CLng(4)) 'Long
  loc_13A6260: var_F0 = "Unit"
  loc_13A6269: LateIdCallSt
  loc_13A6274: var_94 = CVar(CLng(4)) 'Long
  loc_13A627F: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A6286: LateIdCallSt
  loc_13A6291: var_94 = CVar(CLng(4)) 'Long
  loc_13A6296: var_D0 = &H258
  loc_13A62A2: LateIdCallSt
  loc_13A62AA: var_94 = 0
  loc_13A62B6: var_D0 = CVar(CLng(5)) 'Long
  loc_13A62BB: var_F0 = "Remark"
  loc_13A62C4: LateIdCallSt
  loc_13A62CF: var_94 = CVar(CLng(5)) 'Long
  loc_13A62DA: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A62E1: LateIdCallSt
  loc_13A62EC: var_94 = CVar(CLng(5)) 'Long
  loc_13A62F7: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A62FE: LateIdCallSt
  loc_13A6309: var_94 = CVar(CLng(5)) 'Long
  loc_13A630E: var_D0 = &H514
  loc_13A631A: LateIdCallSt
  loc_13A6322: var_94 = 0
  loc_13A632E: var_D0 = CVar(CLng(6)) 'Long
  loc_13A6333: var_F0 = "Qty"
  loc_13A633C: LateIdCallSt
  loc_13A6347: var_94 = CVar(CLng(6)) 'Long
  loc_13A6352: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A6359: LateIdCallSt
  loc_13A6364: var_94 = CVar(CLng(6)) 'Long
  loc_13A636F: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A6376: LateIdCallSt
  loc_13A6381: var_94 = CVar(CLng(6)) 'Long
  loc_13A6386: var_D0 = &H320
  loc_13A6392: LateIdCallSt
  loc_13A639A: var_94 = 0
  loc_13A63A6: var_D0 = CVar(CLng(7)) 'Long
  loc_13A63AB: var_F0 = "Rate"
  loc_13A63B4: LateIdCallSt
  loc_13A63BF: var_94 = CVar(CLng(7)) 'Long
  loc_13A63CA: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A63D1: LateIdCallSt
  loc_13A63DC: var_94 = CVar(CLng(7)) 'Long
  loc_13A63E7: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A63EE: LateIdCallSt
  loc_13A63F9: var_94 = CVar(CLng(7)) 'Long
  loc_13A63FE: var_D0 = &H320
  loc_13A640A: LateIdCallSt
  loc_13A6412: var_94 = 0
  loc_13A641E: var_D0 = CVar(CLng(9)) 'Long
  loc_13A6423: var_F0 = "Amount"
  loc_13A642C: LateIdCallSt
  loc_13A6437: var_94 = CVar(CLng(9)) 'Long
  loc_13A6442: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A6449: LateIdCallSt
  loc_13A6454: var_94 = CVar(CLng(9)) 'Long
  loc_13A645F: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A6466: LateIdCallSt
  loc_13A646E: var_94 = 0
  loc_13A647A: var_D0 = CVar(CLng(&HA)) 'Long
  loc_13A647F: var_F0 = "Cancel"
  loc_13A6488: LateIdCallSt
  loc_13A6493: var_94 = CVar(CLng(&HA)) 'Long
  loc_13A649E: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A64A5: LateIdCallSt
  loc_13A64B0: var_94 = CVar(CLng(&HA)) 'Long
  loc_13A64BB: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A64C2: LateIdCallSt
  loc_13A64CD: var_94 = CVar(CLng(&HA)) 'Long
  loc_13A64D2: var_D0 = &H271
  loc_13A64DE: LateIdCallSt
  loc_13A64E6: var_94 = 0
  loc_13A64F2: var_D0 = CVar(CLng(8)) 'Long
  loc_13A64F7: var_F0 = "Rate1"
  loc_13A6500: LateIdCallSt
  loc_13A650B: var_94 = CVar(CLng(8)) 'Long
  loc_13A6516: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A651D: LateIdCallSt
  loc_13A6528: var_94 = CVar(CLng(8)) 'Long
  loc_13A6533: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A653A: LateIdCallSt
  loc_13A6545: var_94 = CVar(CLng(8)) 'Long
  loc_13A654A: var_D0 = 0
  loc_13A6556: LateIdCallSt
  loc_13A6561: var_94 = CVar(CLng(&HE)) 'Long
  loc_13A6566: var_D0 = 0
  loc_13A6572: LateIdCallSt
  loc_13A657D: var_94 = CVar(CLng(&HD)) 'Long
  loc_13A6582: var_D0 = 0
  loc_13A658E: LateIdCallSt
  loc_13A6599: var_94 = CVar(CLng(&HB)) 'Long
  loc_13A659E: var_D0 = 0
  loc_13A65AA: LateIdCallSt
  loc_13A65B5: var_94 = CVar(CLng(&HC)) 'Long
  loc_13A65BA: var_D0 = 0
  loc_13A65C6: LateIdCallSt
  loc_13A65D1: var_94 = CVar(CLng(&HF)) 'Long
  loc_13A65D6: var_D0 = 0
  loc_13A65E2: LateIdCallSt
  loc_13A65ED: var_94 = CVar(CLng(&H10)) 'Long
  loc_13A65F2: var_D0 = 0
  loc_13A65FE: LateIdCallSt
  loc_13A6609: var_94 = CVar(CLng(&H11)) 'Long
  loc_13A660E: var_D0 = 0
  loc_13A661A: LateIdCallSt
  loc_13A6625: var_94 = CVar(CLng(&H12)) 'Long
  loc_13A662A: var_D0 = 0
  loc_13A6636: LateIdCallSt
  loc_13A6641: var_94 = CVar(CLng(&H13)) 'Long
  loc_13A6646: var_D0 = 0
  loc_13A6652: LateIdCallSt
  loc_13A665D: var_94 = CVar(CLng(&H15)) 'Long
  loc_13A6662: var_D0 = 0
  loc_13A666E: LateIdCallSt
  loc_13A6679: var_94 = CVar(CLng(&H14)) 'Long
  loc_13A667E: var_D0 = 0
  loc_13A668A: LateIdCallSt
  loc_13A6695: var_94 = CVar(CLng(&H16)) 'Long
  loc_13A669A: var_D0 = 0
  loc_13A66A6: LateIdCallSt
  loc_13A66B1: var_94 = CVar(CLng(&H17)) 'Long
  loc_13A66B6: var_D0 = 0
  loc_13A66C2: LateIdCallSt
  loc_13A66CD: var_94 = CVar(CLng(&H18)) 'Long
  loc_13A66D2: var_D0 = 0
  loc_13A66DE: LateIdCallSt
  loc_13A66E6: var_94 = 0
  loc_13A66F2: var_D0 = CVar(CLng(&HC)) 'Long
  loc_13A66F7: var_F0 = "Item Code"
  loc_13A6700: LateIdCallSt
  loc_13A6708: var_94 = 0
  loc_13A6714: var_D0 = CVar(CLng(&HF)) 'Long
  loc_13A6719: var_F0 = "Disc %"
  loc_13A6722: LateIdCallSt
  loc_13A672A: var_94 = 0
  loc_13A6736: var_D0 = CVar(CLng(&H10)) 'Long
  loc_13A673B: var_F0 = "Disc Amt."
  loc_13A6744: LateIdCallSt
  loc_13A674C: var_94 = 0
  loc_13A6758: var_D0 = CVar(CLng(&H11)) 'Long
  loc_13A675D: var_F0 = "Tax %"
  loc_13A6766: LateIdCallSt
  loc_13A676E: var_94 = 0
  loc_13A677A: var_D0 = CVar(CLng(&H12)) 'Long
  loc_13A677F: var_F0 = "Tax Amt"
  loc_13A6788: LateIdCallSt
  loc_13A6790: var_94 = 0
  loc_13A679C: var_D0 = CVar(CLng(&H13)) 'Long
  loc_13A67A1: var_F0 = "Total"
  loc_13A67AA: LateIdCallSt
  loc_13A67B2: var_94 = 0
  loc_13A67BE: var_D0 = CVar(CLng(&H15)) 'Long
  loc_13A67C3: var_F0 = "R Off"
  loc_13A67CC: LateIdCallSt
  loc_13A67D4: var_94 = 0
  loc_13A67E0: var_D0 = CVar(CLng(&H14)) 'Long
  loc_13A67E5: var_F0 = "Disc Y/N"
  loc_13A67EE: LateIdCallSt
  loc_13A67F6: var_94 = 0
  loc_13A6802: var_D0 = CVar(CLng(&H16)) 'Long
  loc_13A6807: var_F0 = "Tax Cat Code"
  loc_13A6810: LateIdCallSt
  loc_13A681B: var_94 = CVar(CLng(&H19)) 'Long
  loc_13A6820: var_D0 = 0
  loc_13A682C: LateIdCallSt
  loc_13A6837: var_94 = CVar(CLng(&H1A)) 'Long
  loc_13A683C: var_D0 = 0
  loc_13A6848: LateIdCallSt
  loc_13A6853: var_94 = CVar(CLng(&H1B)) 'Long
  loc_13A6858: var_D0 = 0
  loc_13A6864: LateIdCallSt
  loc_13A686F: var_94 = CVar(CLng(&H1C)) 'Long
  loc_13A6874: var_D0 = 0
  loc_13A6880: LateIdCallSt
  loc_13A688B: var_94 = CVar(CLng(&H1D)) 'Long
  loc_13A6890: var_D0 = 0
  loc_13A689C: LateIdCallSt
  loc_13A68A7: var_94 = CVar(CLng(&H1E)) 'Long
  loc_13A68AC: var_D0 = 0
  loc_13A68B8: LateIdCallSt
  loc_13A68C3: var_94 = CVar(CLng(&H1F)) 'Long
  loc_13A68C8: var_D0 = 0
  loc_13A68D4: LateIdCallSt
  loc_13A68DE: Set var_AC = Nothing 
  loc_13A68E6: Set var_104 = Me.FGCat
  loc_13A68FD: global_68 = CStr(CLng(var_104.BackColor))
  loc_13A690A: var_94 = CVar(CLng(3)) 'Long
  loc_13A690F: var_D0 = &H7D0
  loc_13A691B: LateIdCallSt
  loc_13A692F: var_104.Cols = 9
  loc_13A6936: Set var_104 = Nothing 
  loc_13A693A: Exit Sub
End Sub

Public Sub Proc_169_87_E5D6C8
  'Data Table: 56D3A8
  loc_E5D6A6: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E5D6B8:   Me.DGItem.Visible = False
  loc_E5D6C0: End If
  loc_E5D6C0: Proc_169_87_E5D6C8 = 
End Sub

Public Sub Proc_169_88_FCD388
  'Data Table: 56D3A8
  Dim var_A0 As Variant
  Dim var_90 As Variant
  Dim var_8C As Variant
  loc_FCD1CF: Set var_8C = Me.TxtMask
  loc_FCD1D5: Call 0.Method_Proc_169_88_FCD3880 (0, var_90)
  loc_FCD1DD: var_90.Text = "__:__"
  loc_FCD1F8: Set var_8C = Me.TxtMask
  loc_FCD1FE: Call 0.Method_Proc_169_88_FCD3880 (1, var_90)
  loc_FCD206: var_90.Text = "__:__"
  loc_FCD220: Set var_8C = Me.Txt
  loc_FCD226: Call 0.Method_Proc_169_88_FCD388C (var_B2, var_86)
  loc_FCD236: For var_B6 =  To CByte((var_B2 - 1)): CByte(0) = var_B6 'Byte
  loc_FCD24C:   Set var_8C = Me.Txt
  loc_FCD252:   Call 0.Method_Proc_169_88_FCD3880 (CInt(var_86), var_90)
  loc_FCD25A:   var_90.Text = vbNullString
  loc_FCD276:   Set var_8C = Me.Txt
  loc_FCD27C:   Call 0.Method_Proc_169_88_FCD3880 (CInt(var_86), var_90)
  loc_FCD284:   var_90.Tag = vbNullString
  loc_FCD293: Next var_B6 'Byte
  loc_FCD2A7: Set var_8C = Me.TxtCust
  loc_FCD2AD: Call 0.Method_Proc_169_88_FCD388C (var_B2, var_86)
  loc_FCD2BD: For var_BA =  To CByte((var_B2 - 1)): CByte(0) = var_BA 'Byte
  loc_FCD2D3:   Set var_8C = Me.TxtCust
  loc_FCD2D9:   Call 0.Method_Proc_169_88_FCD3880 (CInt(var_86), var_90)
  loc_FCD2E1:   var_90.Text = vbNullString
  loc_FCD2FD:   Set var_8C = Me.TxtCust
  loc_FCD303:   Call 0.Method_Proc_169_88_FCD3880 (CInt(var_86), var_90)
  loc_FCD30B:   var_90.Tag = vbNullString
  loc_FCD31A: Next var_BA 'Byte
  loc_FCD333: Me.FGrid.Rows = 1
  loc_FCD33B: var_A0 = vbNullString
  loc_FCD345: Set var_8C = Me.FGrid
  loc_FCD369: Me.FGrid.FixedRows = 1
  loc_FCD37D: Me.ChkNCBOOKING.Value = 0
  loc_FCD385: Exit Sub
End Sub

Public Sub Proc_169_89_1006BAC(arg_C) '1006BAC
  'Data Table: 56D3A8
  Dim var_90 As Variant
  Dim var_8C As CheckBox
  loc_10069A4: Set var_8C = Me.TxtMask
  loc_10069AA: Call 0.Method_Proc_169_89_1006BAC0 (0, var_90)
  loc_10069B2: var_90.Enabled = arg_C
  loc_10069CE: Set var_8C = Me.TxtMask
  loc_10069D4: Call 0.Method_Proc_169_89_1006BAC0 (1, var_90)
  loc_10069DC: var_90.Enabled = arg_C
  loc_10069F6: Set var_8C = Me.Txt
  loc_10069FC: Call 0.Method_Proc_169_89_1006BACC (var_A2, var_86)
  loc_1006A0C: For var_A6 =  To CByte((var_A2 - 1)): CByte(0) = var_A6 'Byte
  loc_1006A22:   Set var_8C = Me.Txt
  loc_1006A28:   Call 0.Method_Proc_169_89_1006BAC0 (CInt(var_86), var_90)
  loc_1006A30:   var_90.Enabled = arg_C
  loc_1006A3F: Next var_A6 'Byte
  loc_1006A53: Set var_8C = Me.TxtPer
  loc_1006A59: Call 0.Method_Proc_169_89_1006BACC (var_A2, var_86)
  loc_1006A66: For var_AA =  To CByte(var_A2): CByte(1) = var_AA 'Byte
  loc_1006A7C:   Set var_8C = Me.TxtPer
  loc_1006A82:   Call 0.Method_Proc_169_89_1006BAC0 (CInt(var_86), var_90)
  loc_1006A8A:   var_90.Enabled = arg_C
  loc_1006A99: Next var_AA 'Byte
  loc_1006AAD: Set var_8C = Me.TxtGt
  loc_1006AB3: Call 0.Method_Proc_169_89_1006BACC (var_A2, var_86)
  loc_1006AC0: For var_AE =  To CByte(var_A2): CByte(1) = var_AE 'Byte
  loc_1006AD6:   Set var_8C = Me.TxtGt
  loc_1006ADC:   Call 0.Method_Proc_169_89_1006BAC0 (CInt(var_86), var_90)
  loc_1006AE4:   var_90.Enabled = arg_C
  loc_1006AF3: Next var_AE 'Byte
  loc_1006B06: Me.ChkNCBOOKING.Enabled = arg_C
  loc_1006B1B: Set var_8C = Me.Txt
  loc_1006B21: Call 0.Method_Proc_169_89_1006BAC0 (CInt(&H10), var_90)
  loc_1006B29: var_90.Enabled = False
  loc_1006B42: Set var_8C = Me.Txt
  loc_1006B48: Call 0.Method_Proc_169_89_1006BAC0 (CInt(2), var_90)
  loc_1006B50: var_90.Enabled = False
  loc_1006B69: Set var_8C = Me.Txt
  loc_1006B6F: Call 0.Method_Proc_169_89_1006BAC0 (CInt(&HF), var_90)
  loc_1006B77: var_90.Enabled = False
  loc_1006B90: Set var_8C = Me.Txt
  loc_1006B96: Call 0.Method_Proc_169_89_1006BAC0 (CInt(&H13), var_90)
  loc_1006B9E: var_90.Enabled = False
  loc_1006BAA: Exit Sub
End Sub

Public Sub Proc_169_90_187AC64(arg_C) '187AC64
  'Data Table: 56D3A8
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_11C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_B8 As String
  Dim var_8E As Integer
  Dim var_12C As Variant
  Dim var_140 As Variant
  Dim var_144 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_16C As Variant
  Dim var_118 As Variant
  Dim var_1B0 As Variant
  Dim var_14C As String
  Dim unk_56D3B3 As Connection15
  Dim var_8C As Recordset15
  Dim var_15C As Double
  loc_18785DC: If (arg_C = 0) Then
  loc_18785F2:   var_A8 = CLng(Me.FGrid.Col)
  loc_1878602:   If (var_A8 = CLng(3)) Then
  loc_1878653:     Set var_94 = Me.TxtGrid
  loc_1878659:     Call 0.Method_Proc_169_90_187AC640 (arg_C, var_B4, var_B8)
  loc_1878661:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_1878679:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_187868F:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1878697:       var_E8 = CVar(CLng(&HB)) 'Long
  loc_187869C:       var_108 = vbNullString
  loc_18786A6:       Set var_B4 = Me.FGrid
  loc_18786AC:       LateIdCallSt
  loc_18786D1:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18786D9:       var_E8 = CVar(CLng(3)) 'Long
  loc_18786DE:       var_108 = vbNullString
  loc_18786E8:       Set var_B4 = Me.FGrid
  loc_18786EE:       LateIdCallSt
  loc_1878713:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187871B:       var_E8 = CVar(CLng(1)) 'Long
  loc_1878720:       var_108 = vbNullString
  loc_187872A:       Set var_B4 = Me.FGrid
  loc_1878730:       LateIdCallSt
  loc_1878755:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187875D:       var_E8 = CVar(CLng(2)) 'Long
  loc_1878762:       var_108 = vbNullString
  loc_187876C:       Set var_B4 = Me.FGrid
  loc_1878772:       LateIdCallSt
  loc_1878797:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187879F:       var_E8 = CVar(CLng(4)) 'Long
  loc_18787A4:       var_108 = vbNullString
  loc_18787AE:       Set var_B4 = Me.FGrid
  loc_18787B4:       LateIdCallSt
  loc_18787D9:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18787E1:       var_E8 = CVar(CLng(7)) 'Long
  loc_18787E6:       var_108 = vbNullString
  loc_18787F0:       Set var_B4 = Me.FGrid
  loc_18787F6:       LateIdCallSt
  loc_187881B:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1878823:       var_E8 = CVar(CLng(8)) 'Long
  loc_1878828:       var_108 = vbNullString
  loc_1878832:       Set var_B4 = Me.FGrid
  loc_1878838:       LateIdCallSt
  loc_187885D:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1878865:       var_E8 = CVar(CLng(&H14)) 'Long
  loc_187886A:       var_108 = vbNullString
  loc_1878874:       Set var_B4 = Me.FGrid
  loc_187887A:       LateIdCallSt
  loc_187889F:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18788A7:       var_E8 = CVar(CLng(&H15)) 'Long
  loc_18788AC:       var_108 = vbNullString
  loc_18788B6:       Set var_B4 = Me.FGrid
  loc_18788BC:       LateIdCallSt
  loc_18788E1:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18788E9:       var_E8 = CVar(CLng(&H16)) 'Long
  loc_18788EE:       var_108 = vbNullString
  loc_18788F8:       Set var_B4 = Me.FGrid
  loc_18788FE:       LateIdCallSt
  loc_1878923:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187892B:       var_E8 = CVar(CLng(&H18)) 'Long
  loc_1878930:       var_108 = vbNullString
  loc_187893A:       Set var_B4 = Me.FGrid
  loc_1878940:       LateIdCallSt
  loc_1878965:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187896D:       var_E8 = CVar(CLng(&H19)) 'Long
  loc_1878972:       var_108 = vbNullString
  loc_187897C:       Set var_B4 = Me.FGrid
  loc_1878982:       LateIdCallSt
  loc_18789A7:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18789AF:       var_E8 = CVar(CLng(&H1A)) 'Long
  loc_18789B4:       var_108 = vbNullString
  loc_18789BE:       Set var_B4 = Me.FGrid
  loc_18789C4:       LateIdCallSt
  loc_18789D9:     Else
  loc_18789EC:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18789F4:       var_F8 = CVar(CLng(&HB)) 'Long
  loc_1878A27:       var_13C = CVar(CStr(Me.Fields.Item("OutletCode").Value)) 'String
  loc_1878A2F:       Set var_140 = Me.FGrid
  loc_1878A35:       LateIdCallSt
  loc_1878A85:       global_124 = CStr(Me.Fields.Item("OutletCode").Value)
  loc_1878AA9:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1878AB1:       var_F8 = CVar(CLng(3)) 'Long
  loc_1878AE4:       var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1878AEC:       Set var_140 = Me.FGrid
  loc_1878AF2:       LateIdCallSt
  loc_1878B21:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1878B29:       var_F8 = CVar(CLng(1)) 'Long
  loc_1878B5C:       var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1878B64:       Set var_140 = Me.FGrid
  loc_1878B6A:       LateIdCallSt
  loc_1878B99:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1878BA1:       var_F8 = CVar(CLng(2)) 'Long
  loc_1878BD4:       var_13C = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1878BDC:       Set var_140 = Me.FGrid
  loc_1878BE2:       LateIdCallSt
  loc_1878C11:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1878C19:       var_F8 = CVar(CLng(4)) 'Long
  loc_1878C4C:       var_13C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1878C54:       Set var_140 = Me.FGrid
  loc_1878C5A:       LateIdCallSt
  loc_1878C8A:       var_8E = CInt(CLng(Me.FGrid.Row))
  loc_1878C97:       var_C8 = CVar(CLng(var_8E)) 'Long
  loc_1878C9F:       var_E8 = CVar(CLng(0)) 'Long
  loc_1878CA9:       var_A4 = CVar(CStr(var_8E)) 'String
  loc_1878CB1:       Set var_94 = Me.FGrid
  loc_1878CB7:       LateIdCallSt
  loc_1878CD8:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1878CE0:       var_E8 = CVar(CLng(6)) 'Long
  loc_1878D18:       If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1878D2E:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1878D36:         var_E8 = CVar(CLng(6)) 'Long
  loc_1878D3B:         var_108 = "1.000"
  loc_1878D45:         Set var_B4 = Me.FGrid
  loc_1878D4B:         LateIdCallSt
  loc_1878D5D:       End If
  loc_1878D63:       var_C8 = "Code"
  loc_1878D7A:       var_B4 = Me.Fields.Item(var_C8)
  loc_1878D95:       Set var_11C = Me.Txt
  loc_1878D9B:       Call 0.Method_Proc_169_90_187AC640 (CInt(3), var_140, var_14C, var_B4, var_108, var_E8, var_C8)
  loc_1878DA3:       var_E8 = var_140.Text
  loc_1878DEC:       Call Proc_169_74_F218A8(CStr(var_B4.Value), var_14C, CStr(Me.Fields.Item("OutletCode").Value))
  loc_1878E04:       var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1878E0C:       var_1A0 = CVar(CLng(7)) 'Long
  loc_1878E47:       LateIdCallSt
  loc_1878EB4:       Set var_11C = Me.Txt
  loc_1878EBA:       Call 0.Method_Proc_169_90_187AC640 (CInt(3), var_140, var_14C, Me.FGrid, CVar(CStr(Format(CVar(var_15C), "0.00"))), 1, 1)
  loc_1878EC2:       var_1A0 = var_140.Text
  loc_1878F0B:       Call Proc_169_74_F218A8(CStr(Me.Fields.Item("Code").Value), var_14C, CStr(Me.Fields.Item("OutletCode").Value))
  loc_1878F23:       var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1878F66:       LateIdCallSt
  loc_1878FE6:       var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_15C), "0.00"))), 1, 1)) 'String
  loc_1878FF4:       LateIdCallSt
  loc_1879059:       var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C, CVar(CLng(8)))) 'String
  loc_1879067:       LateIdCallSt
  loc_18790CC:       var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_18790DA:       LateIdCallSt
  loc_187913F:       var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_187914D:       LateIdCallSt
  loc_18791B2:       var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_18791C0:       LateIdCallSt
  loc_1879225:       var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_1879233:       LateIdCallSt
  loc_1879257:       var_12C = Me.FGrid.Row
  loc_1879298:       var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H17)), CVar(CLng(var_12C)), Me.FGrid, var_13C)) 'String
  loc_18792A6:       LateIdCallSt
  loc_18792CA:       var_13C = Me.FGrid.Row
  loc_1879309:       Proc_6_39_E7D3A0(var_12C, CVar(Me.Fields.Item("PriceType")), CVar(CLng(&H1F)), CVar(CLng(var_13C)), Me.FGrid, var_13C)
  loc_1879312:       var_16C = CVar(CStr(var_12C)) 'String
  loc_187931A:       Set var_140 = Me.FGrid
  loc_1879320:       LateIdCallSt
  loc_187934F:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879357:       var_E8 = CVar(CLng(&H1F)) 'Long
  loc_187938F:       If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(1)) Then
  loc_18793A5:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18793AD:         var_E8 = CVar(CLng(6)) 'Long
  loc_18793BC:         var_12C = Me.FGrid.TextMatrix)
  loc_18793CC:         Set var_11C = Me.FGrid
  loc_18793DB:         var_118 = CVar(CLng(var_11C.Row)) 'Long
  loc_18793E3:         var_1B0 = CVar(CLng(6)) 'Long
  loc_1879410:         var_1C0 = CVar(CStr(Format(CVar(CStr(var_12C)), "0"))) 'String
  loc_1879418:         Set var_140 = Me.FGrid
  loc_187941E:         LateIdCallSt
  loc_1879442:       End If
  loc_187947D:       var_B8 = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_12C, -1, var_11C, var_140, var_1C0)
  loc_1879491:       unk_56D3B3.Execute 1 & CStr(Me.FGrid.TextMatrix)) & "'", 1, var_1B0
  loc_187949C:       Set var_8C = var_11C
  loc_18794CA:       If (var_8C.RecordCount > 0) Then
  loc_1879513:         Proc_6_39_E7D3A0(var_12C, CVar(var_8C.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_187951C:         var_16C = CVar(CStr(var_12C)) 'String
  loc_1879524:         Set var_140 = Me.FGrid
  loc_187952A:         LateIdCallSt
  loc_1879546:       End If
  loc_1879546:     End If
  loc_1879554:     Me.FGrid.Redraw = True
  loc_1879562:     If (var_88 = 1) Then
  loc_1879578:       Me.FGrid.Rows = 1
  loc_187959E:       var_A4 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_140, var_16C))) 'String
  loc_18795A6:       Set var_B4 = Me.FGrid
  loc_18795D3:       Me.FGrid.FixedRows = 1
  loc_18795DB:     End If
  loc_18795E5:     var_A4 = Me.FGrid.Row
  loc_18795FF:     Set var_B4 = Me.FGrid
  loc_1879614:     Call Proc_169_96_11D7724(CStr(var_B4.TextMatrix)), CVar(CLng(1)), CVar(CLng(var_A4)), FGrid.DispID_10000)
  loc_187962F:     Call Proc_169_70_190E6A8(&H32)
  loc_1879637:   Else
  loc_187963E:     If (var_A8 = CLng(2)) Then
  loc_187964D:       Set var_94 = Me.TxtGrid
  loc_1879653:       Call 0.Method_Proc_169_90_187AC640 (0, var_B4, CStr(Me.FGrid.TextMatrix)), var_A4)
  loc_187965B:       var_118 = var_B4.Text
  loc_1879672:       If (CStr(Me.FGrid.TextMatrix)) <> "9999") Then
  loc_187968C:         If (Me.RecordCount > 0) Then
  loc_1879695:           Me.MoveFirst
  loc_187969A:         End If
  loc_18796B1:         If (Me.RecordCount > 0) Then
  loc_18796C0:           Set var_94 = Me.TxtGrid
  loc_18796C6:           Call 0.Method_Proc_169_90_187AC640 (0, var_B4, CStr(Me.FGrid.TextMatrix)))
  loc_18796CE:           var_12C = var_B4.Text
  loc_18796DB:           var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1879701:           Me.Find "DispCode=" & CStr(var_15C), 0, 1
  loc_1879716:         End If
  loc_1879764:         Set var_94 = Me.TxtGrid
  loc_187976A:         Call 0.Method_Proc_169_90_187AC640 (arg_C, var_B4, CStr(Me.FGrid.TextMatrix)), ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1879772:         var_C8 = var_B4.Text
  loc_187978A:         If (var_15C Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_18797A0:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18797A8:           var_E8 = CVar(CLng(&HB)) 'Long
  loc_18797AD:           var_108 = vbNullString
  loc_18797B7:           Set var_B4 = Me.FGrid
  loc_18797BD:           LateIdCallSt
  loc_18797E2:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18797EA:           var_E8 = CVar(CLng(3)) 'Long
  loc_18797EF:           var_108 = vbNullString
  loc_18797F9:           Set var_B4 = Me.FGrid
  loc_18797FF:           LateIdCallSt
  loc_1879824:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187982C:           var_E8 = CVar(CLng(1)) 'Long
  loc_1879831:           var_108 = vbNullString
  loc_187983B:           Set var_B4 = Me.FGrid
  loc_1879841:           LateIdCallSt
  loc_1879866:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187986E:           var_E8 = CVar(CLng(2)) 'Long
  loc_1879873:           var_108 = vbNullString
  loc_187987D:           Set var_B4 = Me.FGrid
  loc_1879883:           LateIdCallSt
  loc_18798A8:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18798B0:           var_E8 = CVar(CLng(4)) 'Long
  loc_18798B5:           var_108 = vbNullString
  loc_18798BF:           Set var_B4 = Me.FGrid
  loc_18798C5:           LateIdCallSt
  loc_18798EA:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18798F2:           var_E8 = CVar(CLng(7)) 'Long
  loc_18798F7:           var_108 = vbNullString
  loc_1879901:           Set var_B4 = Me.FGrid
  loc_1879907:           LateIdCallSt
  loc_187992C:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879934:           var_E8 = CVar(CLng(8)) 'Long
  loc_1879939:           var_108 = vbNullString
  loc_1879943:           Set var_B4 = Me.FGrid
  loc_1879949:           LateIdCallSt
  loc_187996E:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879976:           var_E8 = CVar(CLng(&H14)) 'Long
  loc_187997B:           var_108 = vbNullString
  loc_1879985:           Set var_B4 = Me.FGrid
  loc_187998B:           LateIdCallSt
  loc_18799B0:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18799B8:           var_E8 = CVar(CLng(&H15)) 'Long
  loc_18799BD:           var_108 = vbNullString
  loc_18799C7:           Set var_B4 = Me.FGrid
  loc_18799CD:           LateIdCallSt
  loc_18799F2:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18799FA:           var_E8 = CVar(CLng(&H16)) 'Long
  loc_18799FF:           var_108 = vbNullString
  loc_1879A09:           Set var_B4 = Me.FGrid
  loc_1879A0F:           LateIdCallSt
  loc_1879A34:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879A3C:           var_E8 = CVar(CLng(&H18)) 'Long
  loc_1879A41:           var_108 = vbNullString
  loc_1879A4B:           Set var_B4 = Me.FGrid
  loc_1879A51:           LateIdCallSt
  loc_1879A76:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879A7E:           var_E8 = CVar(CLng(&H19)) 'Long
  loc_1879A83:           var_108 = vbNullString
  loc_1879A8D:           Set var_B4 = Me.FGrid
  loc_1879A93:           LateIdCallSt
  loc_1879AB8:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879AC0:           var_E8 = CVar(CLng(&H1A)) 'Long
  loc_1879AC5:           var_108 = vbNullString
  loc_1879ACF:           Set var_B4 = Me.FGrid
  loc_1879AD5:           LateIdCallSt
  loc_1879AEA:         Else
  loc_1879B03:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879B0B:           var_E8 = CVar(CLng(1)) 'Long
  loc_1879B25:           var_B8 = CStr(Me.FGrid.TextMatrix))
  loc_1879B43:           var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879B4B:           var_1A0 = CVar(CLng(1)) 'Long
  loc_1879B65:           var_14C = CStr(Me.FGrid.TextMatrix))
  loc_1879BD0:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1879BE6:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879BEE:             var_F8 = CVar(CLng(&HB)) 'Long
  loc_1879C21:             var_13C = CVar(CStr(Me.Fields.Item("OutletCode").Value)) 'String
  loc_1879C29:             Set var_140 = Me.FGrid
  loc_1879C2F:             LateIdCallSt
  loc_1879C7F:             global_124 = CStr(Me.Fields.Item("OutletCode").Value)
  loc_1879CA3:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879CAB:             var_F8 = CVar(CLng(3)) 'Long
  loc_1879CDE:             var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1879CE6:             Set var_140 = Me.FGrid
  loc_1879CEC:             LateIdCallSt
  loc_1879D1B:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879D23:             var_F8 = CVar(CLng(1)) 'Long
  loc_1879D56:             var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1879D5E:             Set var_140 = Me.FGrid
  loc_1879D64:             LateIdCallSt
  loc_1879D93:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879D9B:             var_F8 = CVar(CLng(2)) 'Long
  loc_1879DCE:             var_13C = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1879DD6:             Set var_140 = Me.FGrid
  loc_1879DDC:             LateIdCallSt
  loc_1879E0B:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879E13:             var_F8 = CVar(CLng(4)) 'Long
  loc_1879E46:             var_13C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1879E4E:             Set var_140 = Me.FGrid
  loc_1879E54:             LateIdCallSt
  loc_1879E84:             var_8E = CInt(CLng(Me.FGrid.Row))
  loc_1879E91:             var_C8 = CVar(CLng(var_8E)) 'Long
  loc_1879E99:             var_E8 = CVar(CLng(0)) 'Long
  loc_1879EA3:             var_A4 = CVar(CStr(var_8E)) 'String
  loc_1879EAB:             Set var_94 = Me.FGrid
  loc_1879EB1:             LateIdCallSt
  loc_1879ED2:             var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879EDA:             var_E8 = CVar(CLng(6)) 'Long
  loc_1879F12:             If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1879F28:               var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879F30:               var_E8 = CVar(CLng(6)) 'Long
  loc_1879F35:               var_108 = "1.000"
  loc_1879F3F:               Set var_B4 = Me.FGrid
  loc_1879F45:               LateIdCallSt
  loc_1879F57:             End If
  loc_1879F5D:             var_C8 = "Code"
  loc_1879F74:             var_B4 = Me.Fields.Item(var_C8)
  loc_1879F8F:             Set var_11C = Me.Txt
  loc_1879F95:             Call 0.Method_Proc_169_90_187AC640 (CInt(3), var_140, var_14C, var_B4, var_108, var_E8, var_C8)
  loc_1879F9D:             var_E8 = var_140.Text
  loc_1879FE6:             Call Proc_169_74_F218A8(CStr(var_B4.Value), var_14C, CStr(Me.Fields.Item("OutletCode").Value))
  loc_1879FFE:             var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A006:             var_1A0 = CVar(CLng(7)) 'Long
  loc_187A041:             LateIdCallSt
  loc_187A0AE:             Set var_11C = Me.Txt
  loc_187A0B4:             Call 0.Method_Proc_169_90_187AC640 (CInt(3), var_140, var_14C, Me.FGrid, CVar(CStr(Format(CVar(var_15C), "0.00"))), 1, 1)
  loc_187A0BC:             var_1A0 = var_140.Text
  loc_187A0D6:             var_144 = Me.Fields
  loc_187A105:             Call Proc_169_74_F218A8(CStr(Me.Fields.Item("Code").Value), var_14C, CStr(var_144.Item("OutletCode").Value))
  loc_187A11D:             var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A160:             LateIdCallSt
  loc_187A1E0:             var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_15C), "0.00"))), 1, 1)) 'String
  loc_187A1EE:             LateIdCallSt
  loc_187A253:             var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C, CVar(CLng(8)))) 'String
  loc_187A261:             LateIdCallSt
  loc_187A2C6:             var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_187A2D4:             LateIdCallSt
  loc_187A339:             var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_187A347:             LateIdCallSt
  loc_187A3AC:             var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_187A3BA:             LateIdCallSt
  loc_187A41F:             var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_187A42D:             LateIdCallSt
  loc_187A451:             var_12C = Me.FGrid.Row
  loc_187A492:             var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H17)), CVar(CLng(var_12C)), Me.FGrid, var_13C)) 'String
  loc_187A4A0:             LateIdCallSt
  loc_187A4C4:             var_13C = Me.FGrid.Row
  loc_187A503:             Proc_6_39_E7D3A0(var_12C, CVar(Me.Fields.Item("PriceType")), CVar(CLng(&H1F)), CVar(CLng(var_13C)), Me.FGrid, var_13C)
  loc_187A50C:             var_16C = CVar(CStr(var_12C)) 'String
  loc_187A514:             Set var_140 = Me.FGrid
  loc_187A51A:             LateIdCallSt
  loc_187A549:             var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A551:             var_E8 = CVar(CLng(&H1F)) 'Long
  loc_187A589:             If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(1)) Then
  loc_187A59F:               var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A5A7:               var_E8 = CVar(CLng(6)) 'Long
  loc_187A5B6:               var_12C = Me.FGrid.TextMatrix)
  loc_187A5C6:               Set var_11C = Me.FGrid
  loc_187A5D5:               var_118 = CVar(CLng(var_11C.Row)) 'Long
  loc_187A5DD:               var_1B0 = CVar(CLng(6)) 'Long
  loc_187A60A:               var_1C0 = CVar(CStr(Format(CVar(CStr(var_12C)), "0"))) 'String
  loc_187A612:               Set var_140 = Me.FGrid
  loc_187A618:               LateIdCallSt
  loc_187A63C:             End If
  loc_187A677:             var_B8 = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_12C, -1, var_11C, var_140, var_1C0)
  loc_187A67B:             var_14C = 1 & CStr(Me.FGrid.TextMatrix))
  loc_187A68B:             unk_56D3B3.Execute var_14C & "'", 1, var_1B0
  loc_187A696:             Set var_8C = var_11C
  loc_187A6C4:             If (var_8C.RecordCount > 0) Then
  loc_187A70D:               Proc_6_39_E7D3A0(var_12C, CVar(var_8C.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_187A716:               var_16C = CVar(CStr(var_12C)) 'String
  loc_187A71E:               Set var_140 = Me.FGrid
  loc_187A724:               LateIdCallSt
  loc_187A740:             End If
  loc_187A740:           End If
  loc_187A740:         End If
  loc_187A740:       End If
  loc_187A75B:       var_E8 = CVar(CLng(1)) 'Long
  loc_187A764:       Set var_B4 = Me.FGrid
  loc_187A76A:       var_12C = var_B4.TextMatrix)
  loc_187A779:       Call Proc_169_96_11D7724(CStr(var_12C), var_E8, CVar(CLng(Me.FGrid.Row)), var_140)
  loc_187A794:       Call Proc_169_70_190E6A8(&H32)
  loc_187A79C:     Else
  loc_187A7A3:       If (var_A8 = CLng(6)) Then
  loc_187A7B0:         Set var_94 = Me.TxtGrid
  loc_187A7B6:         Call 0.Method_Proc_169_90_187AC640 (arg_C, var_B4, var_16C)
  loc_187A7CC:         Set var_11C = Me.TopCtrl1
  loc_187A7D2:         Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(Not(IsNumeric(CVar(var_B4))))
  loc_187A7EF:         Set var_140 = Me.TxtGrid
  loc_187A7F5:         Call 0.Method_Proc_169_90_187AC640 (arg_C, var_144, var_14C)
  loc_187A7FD:         (CStr(var_118) = "Add") = var_144.Text
  loc_187A82A:         If (var_E8 Or (var_12C And (CDbl(Val(var_14C)) <= CDbl(0)))) Then
  loc_187A83E:           Set var_94 = Me.TxtGrid
  loc_187A844:           Call 0.Method_Proc_169_90_187AC640 (arg_C, var_B4)
  loc_187A84C:           var_B4.Text = CStr(0)
  loc_187A860:           Proc_169_90_187AC64 = 0
  loc_187A866:         End If
  loc_187A879:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A881:         var_E8 = CVar(CLng(&H1F)) 'Long
  loc_187A88A:         Set var_B4 = Me.FGrid
  loc_187A89B:         var_B8 = CStr(var_B4.TextMatrix))
  loc_187A8B9:         If (CDbl(Val(var_B8)) = CDbl(0)) Then
  loc_187A8C9:           Set var_94 = Me.TxtGrid
  loc_187A8CF:           Call 0.Method_Proc_169_90_187AC640 (arg_C, var_B4, var_B8)
  loc_187A8D7:           var_E8 = var_B4.Text
  loc_187A8EF:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A907:           var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_187A933:           var_190 = CVar(CStr(Format(CVar(var_B8), "0.000"))) 'String
  loc_187A93B:           Set var_144 = Me.FGrid
  loc_187A941:           LateIdCallSt
  loc_187A968:         Else
  loc_187A975:           Set var_94 = Me.TxtGrid
  loc_187A97B:           Call 0.Method_Proc_169_90_187AC640 (arg_C, var_B4, var_B8, var_144, var_190)
  loc_187A983:           1 = var_B4.Text
  loc_187A99B:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A9B3:           var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_187A9DF:           var_190 = CVar(CStr(Format(CVar(var_B8), "0"))) 'String
  loc_187A9E7:           Set var_144 = Me.FGrid
  loc_187A9ED:           LateIdCallSt
  loc_187AA11:         End If
  loc_187AA16:         Call Proc_169_70_190E6A8(&H32)
  loc_187AA1E:       Else
  loc_187AA25:         If (var_A8 = CLng(7)) Then
  loc_187AA32:           Set var_94 = Me.TxtGrid
  loc_187AA38:           Call 0.Method_Proc_169_90_187AC640 (arg_C, var_B4, var_144, var_190, 1, 1)
  loc_187AA50:           If Not(IsNumeric(CVar(var_B4))) Then
  loc_187AA57:             var_B8 = CStr(0)
  loc_187AA64:             Set var_94 = Me.TxtGrid
  loc_187AA6A:             Call 0.Method_Proc_169_90_187AC640 (arg_C, var_B4, var_B8, var_F8, var_D8)
  loc_187AA72:             var_B4.Text = 1
  loc_187AA81:           End If
  loc_187AA8E:           Set var_94 = Me.TxtGrid
  loc_187AA94:           Call 0.Method_Proc_169_90_187AC640 (arg_C, var_B4, var_B8)
  loc_187AA9C:           var_F8 = var_B4.Text
  loc_187AABF:           var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187AAD7:           var_108 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_187AB04:           var_190 = CVar(CStr(Format(CVar(Val(var_B8)), "0.00"))) 'String
  loc_187AB0C:           Set var_144 = Me.FGrid
  loc_187AB12:           LateIdCallSt
  loc_187AB3E:           Call Proc_169_70_190E6A8(&H32)
  loc_187AB46:         Else
  loc_187AB4D:           If (var_A8 = CLng(5)) Then
  loc_187AB8D:             Set var_94 = Me.TxtGrid
  loc_187AB93:             Call 0.Method_Proc_169_90_187AC640 (arg_C, var_B4, var_B8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_144, var_190)
  loc_187AB9B:             1 = var_B4.Text
  loc_187ABA3:             var_13C = CVar(var_B8) 'String
  loc_187ABAB:             Set var_144 = Me.FGrid
  loc_187ABB1:             LateIdCallSt
  loc_187ABD2:           Else
  loc_187ABD9:             If (var_A8 = CLng(&HA)) Then
  loc_187AC09:               Set var_94 = Me.TxtGrid
  loc_187AC0F:               Call 0.Method_Proc_169_90_187AC640 (arg_C, var_B4, var_B8, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_144, var_13C)
  loc_187AC17:               1 = var_B4.Text
  loc_187AC1F:               var_12C = CVar(var_B8) 'String
  loc_187AC27:               Set var_140 = Me.FGrid
  loc_187AC2D:               LateIdCallSt
  loc_187AC4C:               Call Proc_169_70_190E6A8(&H32)
  loc_187AC51:             End If
  loc_187AC51:           End If
  loc_187AC51:         End If
  loc_187AC51:       End If
  loc_187AC51:     End If
  loc_187AC51:   End If
  loc_187AC51: End If
  loc_187AC5B: Set var_8C = Nothing
  loc_187AC5E: Proc_169_90_187AC64 = &HFF
End Sub

Public Sub Proc_169_91_FEA948
  'Data Table: 56D3A8
  loc_FEA76F: Call Proc_169_87_E5D6C8(var_94)
  loc_FEA782: Set var_98 = Me.Txt
  loc_FEA788: Call 0.Method_Proc_169_91_FEA9480 (CInt(3))
  loc_FEA7B1: If (Proc_6_27_EA61EC(var_9C, "Booking Date") = 0) Then
  loc_FEA7B4:   Exit Sub
  loc_FEA7B5: End If
  loc_FEA7C0: Set var_98 = Me.Txt
  loc_FEA7C6: Call 0.Method_Proc_169_91_FEA9480 (CInt(0), var_9C)
  loc_FEA7EF: If (Proc_6_27_EA61EC(var_9C, "Booking Time") = 0) Then
  loc_FEA7F2:   Exit Sub
  loc_FEA7F3: End If
  loc_FEA7FE: Set var_98 = Me.Txt
  loc_FEA804: Call 0.Method_Proc_169_91_FEA9480 (CInt(0), var_9C)
  loc_FEA82D: If (Proc_6_27_EA61EC(var_9C, "Booking No") = 0) Then
  loc_FEA830:   Exit Sub
  loc_FEA831: End If
  loc_FEA83C: Set var_98 = Me.Txt
  loc_FEA842: Call 0.Method_Proc_169_91_FEA9480 (CInt(4), var_9C)
  loc_FEA86B: If (Proc_6_27_EA61EC(var_9C, "Delivery Date") = 0) Then
  loc_FEA86E:   Exit Sub
  loc_FEA86F: End If
  loc_FEA87A: Set var_98 = Me.Txt
  loc_FEA880: Call 0.Method_Proc_169_91_FEA9480 (CInt(1), var_9C)
  loc_FEA8A9: If (Proc_6_27_EA61EC(var_9C, "Delivery Time") = 0) Then
  loc_FEA8AC:   Exit Sub
  loc_FEA8AD: End If
  loc_FEA8B8: Set var_98 = Me.Txt
  loc_FEA8BE: Call 0.Method_Proc_169_91_FEA9480 (CInt(1), var_9C)
  loc_FEA8E7: If (Proc_6_27_EA61EC(var_9C, "Customer Name") = 0) Then
  loc_FEA8EA:   Exit Sub
  loc_FEA8EB: End If
  loc_FEA922: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_FEA925:   Call TopCtrl1_UnknownEvent_16()
  loc_FEA92D: Else
  loc_FEA933:   Call 0.Method_arg_1E8 (var_98)
  loc_FEA93B:   Call var_98.SetFocus
  loc_FEA944: End If
  loc_FEA944: Exit Sub
End Sub

Public Sub Proc_169_92_1184B18
  'Data Table: 56D3A8
  Dim var_B4 As String
  Dim var_C4 As String
  Dim var_EC As Variant
  Dim var_B0 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_110 As String
  Dim var_8C As Recordset15
  Dim var_C8 As Variant
  Dim var_CC As Variant
  Dim var_120 As Variant
  Dim var_DC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim unk_56D3B3 As Connection15
  Dim var_134 As Field20
  Dim var_184 As TextBox
  loc_1184791: var_90 = CStr(Trim(global_164))
  loc_11847AB: var_B4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_11847DC: Set var_C8 = Me.Txt
  loc_11847E2: Call 0.Method_Proc_169_92_1184B180 (CInt(3), var_CC, CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_11847F1: Proc_6_7_F26918(var_DC, CVar(var_CC), var_130)
  loc_11847F9: var_FC = -1 & var_DC 
  loc_118480D: Me.Txt.Execute CStr(var_FC & " Order By VP.Date_From DESC"), var_134, 
  loc_1184818: Set var_8C = var_134
  loc_1184854: If (var_8C.RecordCount > 0) Then
  loc_1184893:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_11848C7:     global_152 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11848F2:     var_CC = var_8C.Fields.Item("start_srl_no")
  loc_1184907:     var_DC = (var_CC.Value + 1)
  loc_118490F:     global_156 = CInt(var_DC)
  loc_1184920:   End If
  loc_1184920: End If
  loc_118493B: var_DC = CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) 'String
  loc_118494B: var_B0 = Space((5 - Len(var_90)))
  loc_1184953: var_EC = (var_DC + var_CC.Value)
  loc_1184967: var_FC = Space((5 - Len(global_152)))
  loc_118496F: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_FC)
  loc_118497C: var_130 = (var_FC & " Order By VP.Date_From DESC" + CVar(global_152))
  loc_1184995: var_14C = Space((8 - Len(CStr(global_156))))
  loc_118499D: var_15C = (var_130 + var_14C)
  loc_11849AC: var_17C = (var_15C + CVar(CStr(global_156)))
  loc_11849B7: global_144 = CStr(var_17C)
  loc_11849EE: Set var_C8 = Me.Txt
  loc_11849F4: Call 0.Method_Proc_169_92_1184B180 (CInt(2), var_CC)
  loc_11849FC: var_CC.Text = global_144
  loc_1184A0E: var_120 = 0
  loc_1184A4C: unk_56D3B3.Execute "Select CurTokenNo From Depart Where Logsite_code='" & MemVar_1F95078 & "' And Code='" & global_52 & "'", var_CC.Value, -1
  loc_1184A54: var_C8 = var_C8.Fields
  loc_1184A5C: var_120 = var_CC.Item(var_CC)
  loc_1184A64: var_134 = var_134.Value
  loc_1184A6F: Proc_6_39_E7D3A0(CVar("Select CurTokenNo From Depart Where Logsite_code='" & MemVar_1F95078 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="), var_DC)
  loc_1184A77: var_C4 = CStr(CVar("Select CurTokenNo From Depart Where Logsite_code='" & MemVar_1F95078 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_1184A86: var_110 = CStr((Val(var_C4) + CDbl(1)))
  loc_1184A94: Set var_180 = Me.Txt
  loc_1184A9A: Call 0.Method_Proc_169_92_1184B180 (CInt(&H10), var_184, CStr(var_FC & " Order By VP.Date_From DESC"))
  loc_1184AA2: var_184.Text = var_DC
  loc_1184AE2: Set var_C8 = Me.Txt
  loc_1184AE8: Call 0.Method_Proc_169_92_1184B180 (CInt(0), var_CC)
  loc_1184AF0: var_CC.Text = CStr(global_156)
  loc_1184B05: var_88 = global_144
  loc_1184B0D: Set var_8C = Nothing
  loc_1184B10: Proc_169_92_1184B18 = global_156
End Sub

Public Sub Proc_169_93_18AA338
  'Data Table: 56D3A8
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_56D3B3 As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Variant
  Dim var_BC As Variant
  Dim var_166 As Integer
  Dim var_124 As Variant
  Dim var_13C As Variant
  Dim var_110 As Variant
  Dim var_164 As Variant
  Dim var_178 As Variant
  Dim var_14C As Variant
  Dim var_120 As Variant
  Dim var_198 As Double
  Dim var_18C As String
  Dim var_8C As Recordset15
  Dim var_88 As Recordset15
  Dim var_8E As Integer
  Dim var_1AC As Variant
  Dim var_19C As MSHFlexGrid
  loc_18A7B20: On Error Goto loc_18AA330
  loc_18A7B3A: If (Me.RecordCount > 0) Then
  loc_18A7B7C:   var_DC = "Select P.* From PackingOrder P Where DocID='" & Me.Fields.Item("DocID").Value 
  loc_18A7B93:   unk_56D3B3.Execute CStr(var_DC & "'"), var_120, -1
  loc_18A7BBB:   Set var_128 = var_124 
  loc_18A7BF8:   Set var_124 = Me.Txt
  loc_18A7BFE:   Call 0.Method_Proc_169_93_18AA3380 (CInt(2), var_12C)
  loc_18A7C06:   var_12C.Text = CStr(var_128.Fields.Item("DocID").Value)
  loc_18A7C55:   Set var_124 = Me.Txt
  loc_18A7C5B:   Call 0.Method_Proc_169_93_18AA3380 (CInt(0), var_12C)
  loc_18A7C63:   var_12C.Text = CStr(var_128.Fields.Item("VNo").Value)
  loc_18A7C9F:   Proc_6_39_E7D3A0(var_DC, CVar(var_128.Fields.Item("TokenNo")))
  loc_18A7CB6:   Set var_124 = Me.Txt
  loc_18A7CBC:   Call 0.Method_Proc_169_93_18AA3380 (CInt(&H10), var_12C)
  loc_18A7CC4:   var_12C.Text = CStr(var_DC)
  loc_18A7D67:   var_100 = CStr(IIf(IsNull(CVar(var_128.Fields.Item("VDate"))), vbNullString, Format(CVar(var_128.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_18A7D76:   Set var_160 = Me.Txt
  loc_18A7D7C:   Call 0.Method_Proc_169_93_18AA3380 (CInt(3), var_164, var_100, 1)
  loc_18A7D84:   var_164.Text = 1
  loc_18A7E34:   var_178 = CVar(CStr(IIf(IsNull(CVar(var_128.Fields.Item("VTIME"))), vbNullString, Format(CVar(var_128.Fields.Item("VTIME")), "hh:mm")))) 'String
  loc_18A7E43:   Set var_160 = Me.TxtMask
  loc_18A7E49:   Call 0.Method_Proc_169_93_18AA3380 (CInt(0), var_164, var_178, 1)
  loc_18A7E51:   var_164.defaultText = 1
  loc_18A7E9C:   var_166 = IsNull(CVar(var_128.Fields.Item("DDate")))
  loc_18A7F0E:   Set var_160 = Me.Txt
  loc_18A7F14:   Call 0.Method_Proc_169_93_18AA3380 (CInt(4), var_164, CStr(IIf(var_166, vbNullString, Format(CVar(var_128.Fields.Item("DDate")), "DD/MMM/YYYY"))), 1, 1)
  loc_18A7F1C:   var_164.Text = var_166
  loc_18A7F68:   var_166 = IsNull(CVar(var_128.Fields.Item("DTime")))
  loc_18A7F82:   var_12C = var_128.Fields.Item("DTime")
  loc_18A7FCC:   var_178 = CVar(CStr(IIf(var_166, vbNullString, Format(CVar(var_12C), "hh:mm")))) 'String
  loc_18A7FDB:   Set var_160 = Me.TxtMask
  loc_18A7FE1:   Call 0.Method_Proc_169_93_18AA3380 (CInt(1), var_164, var_178, 1, 1)
  loc_18A7FE9:   var_164.defaultText = var_166
  loc_18A8042:   Set var_124 = Me.Txt
  loc_18A8048:   Call 0.Method_Proc_169_93_18AA3380 (CInt(1), var_12C, Proc_6_38_E69628(CVar(var_128.Fields.Item("CustName")), var_166))
  loc_18A8050:   var_12C.Text = var_166
  loc_18A809A:   Set var_124 = Me.Txt
  loc_18A80A0:   Call 0.Method_Proc_169_93_18AA3380 (CInt(&H14), var_12C)
  loc_18A80A8:   var_12C.Text = Proc_6_38_E69628(CVar(var_128.Fields.Item("Remark")))
  loc_18A80F2:   Set var_124 = Me.TxtCust
  loc_18A80F8:   Call 0.Method_Proc_169_93_18AA3380 (CInt(0), var_12C)
  loc_18A8100:   var_12C.Text = Proc_6_38_E69628(CVar(var_128.Fields.Item("PhoneNo")))
  loc_18A814A:   Set var_124 = Me.TxtCust
  loc_18A8150:   Call 0.Method_Proc_169_93_18AA3380 (CInt(1), var_12C)
  loc_18A8158:   var_12C.Text = Proc_6_38_E69628(CVar(var_128.Fields.Item("CustName")))
  loc_18A81A2:   Set var_124 = Me.TxtCust
  loc_18A81A8:   Call 0.Method_Proc_169_93_18AA3380 (CInt(2), var_12C)
  loc_18A81B0:   var_12C.Text = Proc_6_38_E69628(CVar(var_128.Fields.Item("Addr1")))
  loc_18A81FA:   Set var_124 = Me.TxtCust
  loc_18A8200:   Call 0.Method_Proc_169_93_18AA3380 (CInt(3), var_12C)
  loc_18A8208:   var_12C.Text = Proc_6_38_E69628(CVar(var_128.Fields.Item("Addr2")))
  loc_18A8236:   var_AC = var_128.Fields.Item("NCBOOKING")
  loc_18A8277:   Me.ChkNCBOOKING.Value = CInt(IIf((var_AC.Value = "Y"), 1, 0))
  loc_18A82AD:   If (Me.ChkNCBOOKING.Value = 1) Then
  loc_18A82BD:     Set var_98 = Me.Txt
  loc_18A82C3:     Call 0.Method_Proc_169_93_18AA3380 (CInt(&H11), var_AC)
  loc_18A82CB:     var_AC.Visible = True
  loc_18A82E2:     Set var_98 = Me.Label1
  loc_18A82E8:     Call 0.Method_Proc_169_93_18AA3380 (&H16, var_AC)
  loc_18A82F0:     var_AC.Visible = True
  loc_18A82FF:   Else
  loc_18A830C:     Set var_98 = Me.Txt
  loc_18A8312:     Call 0.Method_Proc_169_93_18AA3380 (CInt(&H11), var_AC)
  loc_18A831A:     var_AC.Visible = False
  loc_18A8331:     Set var_98 = Me.Label1
  loc_18A8337:     Call 0.Method_Proc_169_93_18AA3380 (&H16, var_AC)
  loc_18A833F:     var_AC.Visible = False
  loc_18A834B:   End If
  loc_18A8381:   Set var_124 = Me.Txt
  loc_18A8387:   Call 0.Method_Proc_169_93_18AA3380 (CInt(&H11), var_12C)
  loc_18A838F:   var_12C.Text = Proc_6_38_E69628(CVar(var_128.Fields.Item("NCType")))
  loc_18A83F5:   Set var_124 = Me.Txt
  loc_18A83FB:   Call 0.Method_Proc_169_93_18AA3380 (CInt(6), var_12C, CStr(Format(CVar(var_128.Fields.Item("Total")), "0.00")))
  loc_18A8403:   var_12C.Text = 1
  loc_18A846F:   Set var_124 = Me.Txt
  loc_18A8475:   Call 0.Method_Proc_169_93_18AA3380 (CInt(7), var_12C, CStr(Format(CVar(var_128.Fields.Item("Discount")), "0.00")), 1)
  loc_18A847D:   var_12C.Text = 1
  loc_18A84E9:   Set var_124 = Me.Txt
  loc_18A84EF:   Call 0.Method_Proc_169_93_18AA3380 (CInt(&HD), var_12C, CStr(Format(CVar(var_128.Fields.Item("DiscPer")), "0.00")), 1)
  loc_18A84F7:   var_12C.Text = 1
  loc_18A8563:   Set var_124 = Me.Txt
  loc_18A8569:   Call 0.Method_Proc_169_93_18AA3380 (CInt(8), var_12C, CStr(Format(CVar(var_128.Fields.Item("Tax")), "0.00")), 1)
  loc_18A8571:   var_12C.Text = 1
  loc_18A85DD:   Set var_124 = Me.Txt
  loc_18A85E3:   Call 0.Method_Proc_169_93_18AA3380 (CInt(&HE), var_12C, CStr(Format(CVar(var_128.Fields.Item("TaxPer")), "0.00")), 1)
  loc_18A85EB:   var_12C.Text = 1
  loc_18A8657:   Set var_124 = Me.Txt
  loc_18A865D:   Call 0.Method_Proc_169_93_18AA3380 (CInt(9), var_12C, CStr(Format(CVar(var_128.Fields.Item("Addition")), "0.00")), 1)
  loc_18A8665:   var_12C.Text = 1
  loc_18A86D1:   Set var_124 = Me.Txt
  loc_18A86D7:   Call 0.Method_Proc_169_93_18AA3380 (CInt(&HA), var_12C, CStr(Format(CVar(var_128.Fields.Item("Deduction")), "0.00")), 1)
  loc_18A86DF:   var_12C.Text = 1
  loc_18A874B:   Set var_124 = Me.Txt
  loc_18A8751:   Call 0.Method_Proc_169_93_18AA3380 (CInt(&HB), var_12C, CStr(Format(CVar(var_128.Fields.Item("RoundOff")), "0.00")), 1)
  loc_18A8759:   var_12C.Text = 1
  loc_18A87C5:   Set var_124 = Me.Txt
  loc_18A87CB:   Call 0.Method_Proc_169_93_18AA3380 (CInt(&HC), var_12C, CStr(Format(CVar(var_128.Fields.Item("NetAmt")), "0.00")), 1)
  loc_18A87D3:   var_12C.Text = 1
  loc_18A8804:   var_AC = var_128.Fields.Item("AdvAmt")
  loc_18A883F:   Set var_124 = Me.Txt
  loc_18A8845:   Call 0.Method_Proc_169_93_18AA3380 (CInt(&HF), var_12C, CStr(Format(CVar(var_AC), "0.00")), 1)
  loc_18A8875:   Set var_98 = Me.Txt
  loc_18A887B:   Call 0.Method_Proc_169_93_18AA3380 (CInt(&HC), var_AC, var_18C)
  loc_18A8883:   1 = var_AC.Text
  loc_18A8896:   Set var_124 = Me.Txt
  loc_18A889C:   Call 0.Method_Proc_169_93_18AA3380 (CInt(&HF), var_12C)
  loc_18A88B1:   var_198 = Val(1)
  loc_18A88D2:   var_BC = CVar((CDbl(var_18C) - var_198)) 'Double
  loc_18A88F0:   Set var_160 = Me.Txt
  loc_18A88F6:   Call 0.Method_Proc_169_93_18AA3380 (CInt(&H13), var_164, CStr(Format(CVar(var_AC), "0.00")), 1)
  loc_18A88FE:   var_164.Text = 1
  loc_18A893E:   var_AC = var_128.Fields.Item("vType")
  loc_18A894F:   var_100 = CStr(var_AC.Value)
  loc_18A895D:   Set var_124 = Me.Txt
  loc_18A8963:   Call 0.Method_Proc_169_93_18AA3380 (CInt(5), var_12C, var_100)
  loc_18A896B:   var_12C.Tag = var_198
  loc_18A89A1:   Set var_98 = Me.Txt
  loc_18A89A7:   Call 0.Method_Proc_169_93_18AA3380 (CInt(5), var_AC, var_100, "Select Description,NCat From Voucher_type Where V_Type='")
  loc_18A89AF:   var_14C = var_AC.Tag
  loc_18A89C5:   var_FC = -1 & Trim(CVar(var_100)) 
  loc_18A89CE:   var_120 = Format(CVar(var_AC), "0.00") & "'" 
  loc_18A89DC:   unk_56D3B3.Execute CStr(var_120), var_124, var_124
  loc_18A89E7:   Set var_8C = var_124
  loc_18A8A17:   If (var_8C.RecordCount > 0) Then
  loc_18A8A53:     Set var_124 = Me.Txt
  loc_18A8A59:     Call 0.Method_Proc_169_93_18AA3380 (CInt(5), var_12C)
  loc_18A8A61:     var_12C.Text = CStr(var_8C.Fields.Item("Description").Value)
  loc_18A8A91:     var_AC = var_8C.Fields.Item("NCat")
  loc_18A8AA8:     global_160 = CStr(var_AC.Value)
  loc_18A8ABC:   Else
  loc_18A8ACA:     Set var_98 = Me.Txt
  loc_18A8AD0:     Call 0.Method_Proc_169_93_18AA3380 (CInt(5), var_AC)
  loc_18A8AD8:     var_AC.Text = vbNullString
  loc_18A8AEA:     global_160 = vbNullString
  loc_18A8AEE:   End If
  loc_18A8B1F:   global_152 = CStr(var_128.Fields.Item("vPrefix").Value)
  loc_18A8B32:   Set var_128 = Nothing 
  loc_18A8B8C:   unk_56D3B3.Execute CStr("Select S.* From PackingOrderDetail2 S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_120, -1
  loc_18A8B97:   Set var_88 = var_124
  loc_18A8BC5:   If (var_88.RecordCount > 0) Then
  loc_18A8BF8:     Call Proc_169_69_1B19AA4(CDate(var_88.Fields.Item("SunAppDate").Value))
  loc_18A8C40:     Set var_124 = Me.Txt
  loc_18A8C46:     Call 0.Method_Proc_169_93_18AA3380 (CInt(&H12), var_12C)
  loc_18A8C4E:     var_12C.Text = CStr(var_88.Fields.Item("SunAppDate").Value)
  loc_18A8C64:     ' Referenced from: 18A90F8
  loc_18A8C73:     If Not(var_88.EOF) Then
  loc_18A8CD6:       Set var_160 = Me.LblCap
  loc_18A8CDC:       Call 0.Method_Proc_169_93_18AA3380 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_18A8CE4:       var_164.Tag = CStr(var_88.Fields.Item("SunCode").Value)
  loc_18A8D62:       Set var_160 = Me.TxtPer
  loc_18A8D68:       Call 0.Method_Proc_169_93_18AA3380 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_18A8D70:       var_164.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_18A8DEE:       Set var_160 = Me.LblCap
  loc_18A8DF4:       Call 0.Method_Proc_169_93_18AA3380 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_18A8DFC:       var_164.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_18A8E7A:       Set var_160 = Me.LblAt
  loc_18A8E80:       Call 0.Method_Proc_169_93_18AA3380 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_18A8E88:       var_164.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_18A8F03:       Set var_160 = Me.TxtGt
  loc_18A8F09:       Call 0.Method_Proc_169_93_18AA3380 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_18A8F11:       var_164.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_18A8F8D:       Set var_160 = Me.TxtPer
  loc_18A8F93:       Call 0.Method_Proc_169_93_18AA3380 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_18A8F9B:       var_164.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_18A900B:       var_DC = "0.00"
  loc_18A9032:       Set var_160 = Me.TxtGt
  loc_18A9038:       Call 0.Method_Proc_169_93_18AA3380 (CInt(var_88.Fields.Item("SNo").Value), var_164, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_DC)))
  loc_18A9040:       var_164.Text = 1
  loc_18A9086:       Proc_6_39_E7D3A0(var_DC, CVar(var_88.Fields.Item("BaseAmount")))
  loc_18A90A7:       var_124 = var_88.Fields
  loc_18A90C4:       Set var_160 = Me.LblDummy
  loc_18A90CA:       Call 0.Method_Proc_169_93_18AA3380 (CInt(var_124.Item("SNo").Value), var_164, CStr(var_DC))
  loc_18A90D2:       var_164.Caption = 1
  loc_18A90F3:       var_88.MoveNext
  loc_18A90F8:       GoTo loc_18A8C64
  loc_18A90FB:     End If
  loc_18A90FB:   End If
  loc_18A910A:   Me.FGrid.Redraw = False
  loc_18A9125:   Me.FGrid.Rows = 1
  loc_18A912F:   var_8E = 1
  loc_18A9146:   var_DC = CVar("SELECT PD.*,I.Code as Code, I.name  as  ItemName,IsNull(U.PriceType,0) As PriceType,I.DispCode as DispCode FROM         PackingOrderDetail PD  LEFT OUTER JOIN " & "ItemMast I ON PD.ItemCode = I.Code And PD.ItemRestCode = I.RestCode Left Join UnitMast U On U.NAME=PD.Unit Where PD.Docid='") 'String
  loc_18A91A3:   unk_56D3B3.Execute CStr(var_DC & Me.Fields.Item("SearchCode").Value & "' and PD.RestCode='" & CVar(global_52) & "'"), var_178, -1
  loc_18A91AE:   Set var_88 = var_124
  loc_18A91E2:   If (var_88.RecordCount > 0) Then
  loc_18A91E5:     ' Referenced from: 18A9DAF
  loc_18A91F4:     If Not(var_88.EOF) Then
  loc_18A91F7:       var_A8 = vbNullString
  loc_18A9201:       Set var_98 = Me.FGrid
  loc_18A9216:       Set var_19C = Me.FGrid
  loc_18A921D:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_18A9225:       var_110 = CVar(CLng(0)) 'Long
  loc_18A9255:       var_DC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_18A925C:       LateIdCallSt
  loc_18A9276:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_18A927E:       var_110 = CVar(CLng(1)) 'Long
  loc_18A92AE:       var_DC = CVar(CStr(var_88.Fields.Item("Code").Value)) 'String
  loc_18A92B5:       LateIdCallSt
  loc_18A9304:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemRestcode")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_19C, var_DC, CVar(CLng(&HB)), CVar(CLng(var_8E)))) 'String
  loc_18A930B:       LateIdCallSt
  loc_18A9356:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(2)), CVar(CLng(var_8E)), var_19C, var_DC, var_19C)) 'String
  loc_18A935D:       LateIdCallSt
  loc_18A93A8:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(3)), CVar(CLng(var_8E)), var_19C, var_DC)) 'String
  loc_18A93AF:       LateIdCallSt
  loc_18A93FA:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_19C, var_DC)) 'String
  loc_18A9401:       LateIdCallSt
  loc_18A945E:       var_124 = var_88.Fields
  loc_18A9493:       var_14C = CVar(CStr(IIf((IsNull(CVar(var_88.Fields.Item("Remark"))) = &HFF), vbNullString, CVar(var_124.Item("Remark"))))) 'String
  loc_18A949A:       LateIdCallSt
  loc_18A94F1:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PriceType")), CVar(CLng(&H1F)), CVar(CLng(var_8E)), var_19C, var_14C, CVar(CLng(5)), CVar(CLng(var_8E)))) 'String
  loc_18A94F8:       LateIdCallSt
  loc_18A950E:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_18A9516:       var_EC = CVar(CLng(&H1F)) 'Long
  loc_18A953C:       If (CDbl(Val(CStr(var_19C.TextMatrix)))) = CDbl(0)) Then
  loc_18A955F:         var_EC = CVar(CLng(var_8E)) 'Long
  loc_18A9567:         var_13C = CVar(CLng(6)) 'Long
  loc_18A9594:         var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0.000"))) 'String
  loc_18A959B:         LateIdCallSt
  loc_18A95B4:       Else
  loc_18A95D4:         var_EC = CVar(CLng(var_8E)) 'Long
  loc_18A95DC:         var_13C = CVar(CLng(6)) 'Long
  loc_18A9609:         var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0"))) 'String
  loc_18A9610:         LateIdCallSt
  loc_18A9626:       End If
  loc_18A9646:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_18A964E:       var_13C = CVar(CLng(7)) 'Long
  loc_18A967B:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00"))) 'String
  loc_18A9682:       LateIdCallSt
  loc_18A96B8:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_18A96C0:       var_13C = CVar(CLng(8)) 'Long
  loc_18A96ED:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_18A96F4:       LateIdCallSt
  loc_18A9766:       LateIdCallSt
  loc_18A97A4:       var_18C = Proc_6_38_E69628(CVar(var_88.Fields.Item("VoidYN")), var_19C, CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))), 1, 1, CVar(CLng(9)), CVar(CLng(var_8E)))
  loc_18A97AB:       var_13C = CVar(CLng(var_8E)) 'Long
  loc_18A97B3:       var_1AC = CVar(CLng(&HA)) 'Long
  loc_18A97E9:       var_14C = CVar(CStr(IIf((var_18C = "Y"), "Yes", "No"))) 'String
  loc_18A97F0:       LateIdCallSt
  loc_18A9815:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_18A981D:       var_110 = CVar(CLng(&HC)) 'Long
  loc_18A984D:       var_DC = CVar(CStr(var_88.Fields.Item("ItemCode").Value)) 'String
  loc_18A9854:       LateIdCallSt
  loc_18A988A:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_18A9892:       var_13C = CVar(CLng(&HF)) 'Long
  loc_18A98BF:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_18A98C6:       LateIdCallSt
  loc_18A98FC:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_18A9904:       var_13C = CVar(CLng(&H10)) 'Long
  loc_18A9931:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_18A9938:       LateIdCallSt
  loc_18A996E:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_18A9976:       var_13C = CVar(CLng(&H11)) 'Long
  loc_18A99A3:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_18A99AA:       LateIdCallSt
  loc_18A99E0:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_18A99E8:       var_13C = CVar(CLng(&H12)) 'Long
  loc_18A9A15:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_18A9A1C:       LateIdCallSt
  loc_18A9A52:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_18A9A8E:       LateIdCallSt
  loc_18A9ADD:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_19C, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_18A9AE4:       LateIdCallSt
  loc_18A9B2F:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxRoff")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_19C, var_DC, CVar(CLng(&H13)))) 'String
  loc_18A9B36:       LateIdCallSt
  loc_18A9B81:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_19C, var_DC)) 'String
  loc_18A9B88:       LateIdCallSt
  loc_18A9BD3:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_19C, var_DC)) 'String
  loc_18A9BDA:       LateIdCallSt
  loc_18A9C25:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ContraDocId")), CVar(CLng(&HE)), CVar(CLng(var_8E)), var_19C, var_DC)) 'String
  loc_18A9C2C:       LateIdCallSt
  loc_18A9C75:       Proc_6_39_E7D3A0(var_DC, CVar(var_88.Fields.Item("ContraSNo")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_19C, var_DC)
  loc_18A9C85:       LateIdCallSt
  loc_18A9CD2:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_19C, CVar(CStr(var_DC)))) 'String
  loc_18A9CD9:       LateIdCallSt
  loc_18A9D24:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RateIncTax")), CVar(CLng(&H1A)), CVar(CLng(var_8E)), var_19C, var_DC)) 'String
  loc_18A9D2B:       LateIdCallSt
  loc_18A9D74:       Proc_6_39_E7D3A0(var_DC, CVar(var_88.Fields.Item("SChrgApp")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_19C, var_DC)
  loc_18A9D7D:       var_FC = CVar(CStr(var_DC)) 'String
  loc_18A9D84:       LateIdCallSt
  loc_18A9D9A:       Set var_19C = Nothing 
  loc_18A9DA4:       var_8E = (var_8E + 1)
  loc_18A9DAA:       var_88.MoveNext
  loc_18A9DAF:       GoTo loc_18A91E5
  loc_18A9DB2:     End If
  loc_18A9DC5:     Me.FGrid.FixedRows = 1
  loc_18A9DCD:   End If
  loc_18A9DDB:   Me.FGrid.Redraw = True
  loc_18A9DF7:   var_DC = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM PackingOrderDetail1 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_18A9E3E:   unk_56D3B3.Execute CStr(var_DC & Me.Fields.Item("SearchCode").Value & "'"), var_14C, -1
  loc_18A9E49:   Set var_88 = var_124
  loc_18A9E78:   Me.FGCat.Rows = 1
  loc_18A9E94:   If (var_88.RecordCount > 0) Then
  loc_18A9E97:     ' Referenced from: 18AA25F
  loc_18A9EA6:     If Not(var_88.EOF) Then
  loc_18A9EAD:       Set var_1D0 = Me.FGCat
  loc_18A9EB0:       var_A8 = vbNullString
  loc_18A9EDA:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18A9EE2:       var_110 = CVar(CLng(0)) 'Long
  loc_18A9F12:       var_FC = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_18A9F19:       LateIdCallSt
  loc_18A9F4C:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18A9F54:       var_110 = CVar(CLng(1)) 'Long
  loc_18A9F84:       var_FC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_18A9F8B:       LateIdCallSt
  loc_18A9FBE:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18A9FC6:       var_110 = CVar(CLng(2)) 'Long
  loc_18A9FF6:       var_FC = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_18A9FFD:       LateIdCallSt
  loc_18AA030:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AA038:       var_110 = CVar(CLng(3)) 'Long
  loc_18AA068:       var_FC = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_18AA06F:       LateIdCallSt
  loc_18AA0A2:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AA0AA:       var_110 = CVar(CLng(4)) 'Long
  loc_18AA0DA:       var_FC = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_18AA0E1:       LateIdCallSt
  loc_18AA114:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AA11C:       var_110 = CVar(CLng(5)) 'Long
  loc_18AA14C:       var_FC = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_18AA153:       LateIdCallSt
  loc_18AA186:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AA18E:       var_110 = CVar(CLng(6)) 'Long
  loc_18AA1BE:       var_FC = CVar(CStr(var_88.Fields.Item("TaxAmt").Value)) 'String
  loc_18AA1C5:       LateIdCallSt
  loc_18AA1F8:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AA200:       var_110 = CVar(CLng(7)) 'Long
  loc_18AA230:       var_FC = CVar(CStr(var_88.Fields.Item("Sundry").Value)) 'String
  loc_18AA237:       LateIdCallSt
  loc_18AA253:       Set var_1D0 = Nothing 
  loc_18AA25A:       var_88.MoveNext
  loc_18AA25F:       GoTo loc_18A9E97
  loc_18AA262:     End If
  loc_18AA262:   End If
  loc_18AA268:   If (var_8E = 1) Then
  loc_18AA27E:     Me.FGrid.Rows = 1
  loc_18AA290:     var_BC = Me.FGrid.Rows
  loc_18AA29B:     var_DC = CVar(CStr(CLng(var_BC))) 'String
  loc_18AA2A3:     Set var_AC = Me.FGrid
  loc_18AA2D2:     Me.FGrid.FixedRows = 1
  loc_18AA2DA:   End If
  loc_18AA2DD: Else
  loc_18AA2DD:   Call Proc_169_88_FCD388(FGrid.DispID_10000, var_DC, var_1D0, var_FC, var_110, "'", var_1D0)
  loc_18AA2E2: End If
  loc_18AA2E5: Call Proc_169_87_E5D6C8(var_BC, var_FC, var_110, "'")
  loc_18AA308: If (Me.FrFinish.Visible = &HFF) Then
  loc_18AA317:   Me.FrFinish.Visible = False
  loc_18AA31F: End If
  loc_18AA324: Set var_88 = Nothing
  loc_18AA32C: Set var_8C = Nothing
  loc_18AA32F: Exit Sub
  loc_18AA330: ' Referenced from: 18A7B20
  loc_18AA330: Proc_6_60_E63754(var_1D0, var_FC)
  loc_18AA335: Exit Sub
End Sub

Public Sub Proc_169_94_10BF008
  'Data Table: 56D3A8
  Dim var_B0 As String
  Dim var_B4 As Variant
  Dim unk_56D3B3 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_10BED51: Set var_9C = Me.TopCtrl1
  loc_10BED57: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_10BED5F: var_B0 = CStr()
  loc_10BED70: If (var_B0 = "Add") Then
  loc_10BEDA0:   Set var_9C = Me.Txt
  loc_10BEDA6:   Call 0.Method_Proc_169_94_10BF0080 (CInt(2), var_B4, var_B0, "Select Count(*) From PackingOrder Where DocID='", var_AC, -1)
  loc_10BEDC7:   unk_56D3B3.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_10BEDD7:    = var_D4.Item()
  loc_10BEDDF:    = var_E8.Value
  loc_10BEE0C:   If (var_B4.Text.Fields > 0) Then
  loc_10BEE15:     Call 0.Method_arg_50 (var_B0)
  loc_10BEE36:     MsgBox("Duplicate booking No.", &H40, CVar(var_B0), var_118, var_128)
  loc_10BEE4C:     Call Proc_169_92_1184B18(MemVar_1F95044)
  loc_10BEE5F:     Set var_9C = Me.Txt
  loc_10BEE65:     Call 0.Method_Proc_169_94_10BF0080 (CInt(2), var_B4)
  loc_10BEE6D:     var_B4.Text = var_B0
  loc_10BEE81:     Proc_169_94_10BF008 = 0
  loc_10BEE87:   End If
  loc_10BEE87: End If
  loc_10BEEAC: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_10BEEDE:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_10BEEFA:   If CBool(var_118 <> vbNullString) Then
  loc_10BEF03:     var_150 = global_160
  loc_10BEF0A:     Set var_9C = Me.TopCtrl1
  loc_10BEF10:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(3)))
  loc_10BEF18:     var_B0 = CStr(CVar(CLng(var_88)))
  loc_10BEF24:     var_CC = CVar(CLng(var_88)) 'Long
  loc_10BEF69:     If (CVar(CLng(6)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0))) Then
  loc_10BEF91:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_10BEFB7:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_10BEFC3:       Set var_9C = Me.FGrid
  loc_10BEFE7:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_10BEFF4:       Proc_169_94_10BF008 = 0
  loc_10BEFFA:     End If
  loc_10BEFFA:   End If
  loc_10BEFFD: Next var_12C 'Integer
  loc_10BF002: Proc_169_94_10BF008 = 
End Sub

Public Sub Proc_169_95_DFE0F0
  'Data Table: 56D3A8
  loc_DFE0EC: Exit Sub
End Sub

Public Sub Proc_169_96_11D7724(arg_C) '11D7724
  'Data Table: 56D3A8
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_9C As String
  Dim var_B4 As String
  Dim unk_56D3B3 As Connection15
  Dim var_CC As Variant
  Dim var_A4 As Recordset15
  Dim var_F8 As Variant
  Dim var_A6 As Integer
  Dim var_10C As Variant
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  loc_11D72D2: var_98 = Me.FGridFinish.Tag
  loc_11D72F4: If ((CStr(var_98) = arg_C) And (arg_C <> vbNullString)) Then
  loc_11D7312:   If (Me.FrFinish.Visible = 0) Then
  loc_11D731B:     Set var_88 = Me.FrFinish
  loc_11D7321:     var_88.Visible = True
  loc_11D7329:   End If
  loc_11D7329:   Exit Sub
  loc_11D732A: End If
  loc_11D733E: var_9C = "Select ComboCode, ItemCode , IM.Name As ItemName, IM.Unit , Qty,IMC.Name As ComboItemName  from ComboPackDetail Inner Join ItemMast IM On ComboPackDetail.ItemCode = IM.Code And ComboPackDetail.RestCode = IM.RestCode Inner Join ItemMast IMC On  ComboPackDetail.ComboCode = IMC.Code And ComboPackDetail.RestCode = IMC.RestCode where (ComboPackDetail.LOGSITE_CODE='" & MemVar_1F95078
  loc_11D7356: var_B4 = var_9C & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.restCode='" & global_52 & "' AND ComboPackDetail.combocode='"
  loc_11D736D: unk_56D3B3.Execute var_B4 & arg_C & "'", var_98, -1
  loc_11D7378: Set var_A4 = var_88
  loc_11D73A5: Call Proc_169_85_10631B8(Me.FGridFinish.Text)
  loc_11D73BD: Me.FGridFinish.Rows = 2
  loc_11D73D8: Me.FGridFinish.FixedRows = 1
  loc_11D73F0: Me.FGridFinish.Tag = vbNullString
  loc_11D7404: Me.FrFinish.Visible = False
  loc_11D7420: If (var_A4.RecordCount > 0) Then
  loc_11D745F:   Me.FrFinish.Caption = Proc_6_38_E69628(CVar(var_A4.Fields.Item("ComboItemName"))) & " :"
  loc_11D74AE:   Me.FGridFinish.Tag = CVar(CStr(var_A4.Fields.Item("ComboCode").Value))
  loc_11D74CF:   Me.FrFinish.Visible = True
  loc_11D74D9:   var_A6 = 1
  loc_11D74F0:   var_CC = CVar((var_A4.RecordCount + 1)) 'Long
  loc_11D74FF:   Me.FGridFinish.Rows = "ComboCode"
  loc_11D7507:   ' Referenced from: 11D7717
  loc_11D7516:   If Not(var_A4.EOF) Then
  loc_11D751D:     Set var_FC = Me.FGridFinish
  loc_11D7524:     var_CC = CVar(CLng(var_A6)) 'Long
  loc_11D752C:     var_10C = CVar(CLng(0)) 'Long
  loc_11D7536:     var_98 = CVar(CStr(var_A6)) 'String
  loc_11D753D:     LateIdCallSt
  loc_11D754C:     var_DC = CVar(CLng(var_A6)) 'Long
  loc_11D7554:     var_11C = CVar(CLng(2)) 'Long
  loc_11D7584:     var_F8 = CVar(CStr(var_A4.Fields.Item("ItemName").Value)) 'String
  loc_11D758B:     LateIdCallSt
  loc_11D75DA:     var_F8 = CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("Unit")), CVar(CLng(3)), CVar(CLng(var_A6)), var_FC, var_F8, CVar(CLng(3)), CVar(CLng(var_A6)))) 'String
  loc_11D75E1:     LateIdCallSt
  loc_11D762A:     Proc_6_51_EF4580(var_F8, CVar(var_A4.Fields.Item("qty")), CVar(CLng(4)), CVar(CLng(var_A6)), var_FC, var_F8)
  loc_11D7633:     var_14C = CVar(CStr(var_F8)) 'String
  loc_11D763A:     LateIdCallSt
  loc_11D7652:     var_DC = CVar(CLng(var_A6)) 'Long
  loc_11D765A:     var_11C = CVar(CLng(1)) 'Long
  loc_11D768A:     var_F8 = CVar(CStr(var_A4.Fields.Item("ItemCode").Value)) 'String
  loc_11D7691:     LateIdCallSt
  loc_11D76AB:     var_DC = CVar(CLng(var_A6)) 'Long
  loc_11D76B3:     var_11C = CVar(CLng(5)) 'Long
  loc_11D76E3:     var_F8 = CVar(CStr(var_A4.Fields.Item("ComboCode").Value)) 'String
  loc_11D76EA:     LateIdCallSt
  loc_11D7702:     Set var_FC = Nothing 
  loc_11D770C:     var_A6 = (var_A6 + 1)
  loc_11D7712:     var_A4.MoveNext
  loc_11D7717:     GoTo loc_11D7507
  loc_11D771A:   End If
  loc_11D771A: End If
  loc_11D771F: Set var_A4 = Nothing
  loc_11D7722: Exit Sub
End Sub

Public Sub Proc_169_97_10AB264(arg_C, arg_10, arg_14) '10AB264
  'Data Table: 56D3A8
  Dim var_AC As Variant
  Dim var_8A As Integer
  Dim arg_14 As Integer
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  loc_10AAFB9: var_88 = vbNullString
  loc_10AAFD0: arg_C = CStr(Trim(arg_C))
  loc_10AAFDC: var_8A = CInt(Len(arg_C))
  loc_10AAFE2: var_C0 = arg_10
  loc_10AAFED: If (var_C0 = "A") Then
  loc_10AB00C:   var_AC = CVar(Int((CDbl((CInt(Int((CDbl(arg_14) / CDbl(2)))) - var_8A)) / CDbl(2)))) 'Double
  loc_10AB010:   var_9C = arg_C 'Variant
  loc_10AB066:   var_F0 = (Chr(&H12) + Chr(&HE))
  loc_10AB07A:   var_110 = (0 + Chr(&H1B))
  loc_10AB083:   var_120 = (var_110 + "G")
  loc_10AB097:   var_140 = (var_120 + Space(CLng(IIf((var_9C > 0), var_9C, 0))))
  loc_10AB0A1:   var_150 = (var_140 + CVar(arg_C))
  loc_10AB0B5:   var_170 = (var_150 + Chr(&H1B))
  loc_10AB0BE:   var_190 = (var_170 + "H")
  loc_10AB0C3:   var_88 = CStr(var_190)
  loc_10AB0E4: Else
  loc_10AB0EC:   If (var_C0 = "D") Then
  loc_10AB0FA:     arg_14 = CInt(Int((CDbl(arg_14) / CDbl(2))))
  loc_10AB10B:     var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10AB10F:     var_9C = "G" 'Variant
  loc_10AB165:     var_F0 = (Chr(&HE) + Chr(&HF))
  loc_10AB179:     var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10AB183:     var_120 = (var_110 + CVar(arg_C))
  loc_10AB188:     var_88 = CStr(var_120)
  loc_10AB19D:   Else
  loc_10AB1A5:     If (var_C0 = "E") Then
  loc_10AB1B6:       var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10AB1BA:       var_9C = CVar(arg_C) 'Variant
  loc_10AB210:       var_F0 = (Chr(&H12) + Chr(&HF))
  loc_10AB224:       var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10AB22E:       var_120 = (var_110 + CVar(arg_C))
  loc_10AB242:       var_140 = (var_120 + Chr(&H12))
  loc_10AB247:       var_88 = CStr(var_140)
  loc_10AB25D:     End If
  loc_10AB25D:   End If
  loc_10AB25D: End If
  loc_10AB25D: Proc_169_97_10AB264 = arg_14
End Sub

Public Sub Proc_169_98_134BED8(arg_C, arg_10, arg_14) '134BED8
  'Data Table: 56D3A8
  Dim var_F0 As String
  Dim var_144 As Variant
  Dim var_174 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_274 As Variant
  Dim unk_56D3B3 As Connection15
  Dim var_A8 As Recordset15
  Dim var_278 As Fields15
  Dim var_290 As Double
  Dim var_EC As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_DC As Variant
  Dim arg_10 As Integer
  loc_134B73D: var_90 = vbNullString
  loc_134B743: var_94 = vbNullString
  loc_134B749: var_98 = vbNullString
  loc_134B74F: var_9C = vbNullString
  loc_134B755: var_A0 = vbNullString
  loc_134B75B: var_A4 = vbNullString
  loc_134B766: If (MemVar_1F953C4 = "Y") Then
  loc_134B770:   var_F0 = vbNullString & "DATE "
  loc_134B7A1:   var_8C = 1 & CStr(Format(MemVar_1F950EC, "dd/MM/yy"))
  loc_134B7B4: End If
  loc_134B7BC: If (MemVar_1F953C8 = "Y") Then
  loc_134B7CE:   var_DC = "dd/MM/yy"
  loc_134B820:   var_174 = (CVar(arg_14) - IIf((MemVar_1F953C4 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F950EC, var_DC)))), 0))
  loc_134B847:   var_1C4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_134B84F:   var_1E4 = (var_174 - Len(var_1C4))
  loc_134B860:   var_214 = (CVar(var_8C) + Space(CLng(var_1E4)))
  loc_134B869:   var_234 = (var_214 + " PAGE NO ")
  loc_134B88B:   var_274 = (var_234 + Trim(Str(arg_C)))
  loc_134B890:   var_8C = CStr(var_274)
  loc_134B8BD: End If
  loc_134B8CE: var_AC = "Select R.NAME,R.HEADER1,R.HEADER2,R.COMPANYTITLE,R.OUTLETTITLE,R.PHONE From DEPART R  Where R.CODE='" & global_52 & "'"
  loc_134B8EA: unk_56D3B3.Execute var_AC, var_DC, -1
  loc_134B8F5: Set var_A8 = var_278
  loc_134B90C: If (MemVar_1F953CC = "K") Then
  loc_134B94B:   If (var_A8.Fields.Item("COMPANYTITLE").Value = "Y") Then
  loc_134B958:     If (Len(MemVar_1F95130) <= &H23) Then
  loc_134B984:       Call Proc_169_97_10AB264(MemVar_1F95130, "D", CInt(Val(CStr(arg_14))))
  loc_134B98D:       var_90 = var_288 & var_288
  loc_134B99C:     Else
  loc_134B9B2:       var_EC = (CVar(var_90) + Chr(&H12))
  loc_134B9C6:       var_144 = (Format(MemVar_1F950EC, Chr(&H12)) + Chr(&HE))
  loc_134B9DA:       var_174 = (0 + Chr(&HF))
  loc_134B9E4:       var_194 = (var_174 + CVar(MemVar_1F95130))
  loc_134B9F8:       var_1C4 = (Str(arg_C) + Chr(&H12))
  loc_134B9FD:       var_90 = CStr(var_1C4)
  loc_134BA15:     End If
  loc_134BA15:   End If
  loc_134BA51:   If (var_A8.Fields.Item("OutletTitle").Value = "Y") Then
  loc_134BA94:     If (Len(var_A8.Fields.Item("Name").Value) <= 35) Then
  loc_134BACB:       var_290 = Val(CStr(arg_14))
  loc_134BAEC:       Call Proc_169_97_10AB264(CStr(var_A8.Fields.Item("Name").Value), "D", CInt(var_290))
  loc_134BAF5:       var_94 = var_294 & var_294
  loc_134BB10:     Else
  loc_134BB26:       var_EC = (CVar(var_94) + Chr(&H12))
  loc_134BB3A:       var_144 = (Len(var_A8.Fields.Item("Name").Value) + Chr(&HE))
  loc_134BB4E:       var_174 = (0 + Chr(&HF))
  loc_134BB7C:       var_1A4 = (var_174 + var_A8.Fields.Item("Name").Value)
  loc_134BB90:       var_1D4 = (Chr(&H12) + Chr(&H12))
  loc_134BB95:       var_94 = CStr(Len(Chr(&H12)))
  loc_134BBB6:     End If
  loc_134BBB6:   End If
  loc_134BBCA:   If (var_A8.RecordCount > 0) Then
  loc_134BC06:     If (Proc_6_38_E69628(CVar(var_A8.Fields.Item("Header1")), var_94, var_290, var_90, var_290) <> vbNullString) Then
  loc_134BC3D:       var_290 = Val(CStr(arg_14))
  loc_134BC5E:       Call Proc_169_97_10AB264(CStr(var_A8.Fields.Item("Header1").Value), "D", CInt(var_290))
  loc_134BC67:       var_98 = var_294 & var_294
  loc_134BC7F:     End If
  loc_134BC8E:     var_278 = var_A8.Fields
  loc_134BCB8:     If (Proc_6_38_E69628(CVar(var_278.Item("Header2")), var_98, var_290, var_278) <> vbNullString) Then
  loc_134BCEF:       var_290 = Val(CStr(arg_14))
  loc_134BD10:       Call Proc_169_97_10AB264(CStr(var_A8.Fields.Item("Header2").Value), "D", CInt(var_290))
  loc_134BD19:       var_9C = var_294 & var_294
  loc_134BD31:     End If
  loc_134BD6A:     If (Proc_6_38_E69628(CVar(var_A8.Fields.Item("Phone")), var_9C, var_290, 1) <> vbNullString) Then
  loc_134BDC2:       Call Proc_169_97_10AB264(CStr(var_A8.Fields.Item("Phone").Value), "D", CInt(Val(CStr(arg_14))))
  loc_134BDCB:       var_A0 = var_294 & var_294
  loc_134BDE3:     End If
  loc_134BDE3:   End If
  loc_134BDE3: End If
  loc_134BDED: If (Len(var_8C) > 0) Then
  loc_134BDF5:   Print 1, var_8C
  loc_134BE01:   arg_10 = (arg_10 + 1)
  loc_134BE04: End If
  loc_134BE0E: If (Len(var_90) > 0) Then
  loc_134BE16:   Print 1, var_90
  loc_134BE22:   arg_10 = (arg_10 + 1)
  loc_134BE25: End If
  loc_134BE2F: If (Len(var_94) > 0) Then
  loc_134BE37:   Print 1, var_94
  loc_134BE43:   arg_10 = (arg_10 + 1)
  loc_134BE46: End If
  loc_134BE50: If (Len(var_98) > 0) Then
  loc_134BE58:   Print 1, var_98
  loc_134BE64:   arg_10 = (arg_10 + 1)
  loc_134BE67: End If
  loc_134BE71: If (Len(var_9C) > 0) Then
  loc_134BE79:   Print 1, var_9C
  loc_134BE85:   arg_10 = (arg_10 + 1)
  loc_134BE88: End If
  loc_134BE92: If (Len(var_A0) > 0) Then
  loc_134BE9A:   Print 1, var_A0
  loc_134BEA6:   arg_10 = (arg_10 + 1)
  loc_134BEA9: End If
  loc_134BEB3: If (Len(var_A4) > 0) Then
  loc_134BEBB:   Print 1, var_A4
  loc_134BEC7:   arg_10 = (arg_10 + 1)
  loc_134BECA: End If
  loc_134BED0: Proc_169_98_134BED8 = arg_10
End Sub

Public Sub Proc_169_99_10B979C(arg_C) '10B979C
  'Data Table: 56D3A8
  Dim var_8C As Recordset15
  loc_10B94B5: Set var_8C = arg_C 
  loc_10B94DD: var_8C.Fields.Append "mLine", &HC8, 2
  loc_10B9509: var_8C.Fields.Append "Sno", &HC8, 3
  loc_10B9535: var_8C.Fields.Append "DispCode", &HC8, 6
  loc_10B9561: var_8C.Fields.Append "Item", &HC8, &H32
  loc_10B958D: var_8C.Fields.Append "Remark", &HC8, &H4B
  loc_10B95B9: var_8C.Fields.Append "Qty", &HC8, 8
  loc_10B95E5: var_8C.Fields.Append "Rate", &HC8, 8
  loc_10B9611: var_8C.Fields.Append "TaxAmt", &HC8, 8
  loc_10B963D: var_8C.Fields.Append "Amount", &HC8, &HA
  loc_10B9669: var_8C.Fields.Append "TaxPer", &HC8, 8
  loc_10B9695: var_8C.Fields.Append "NonTaxable", &HC8, &HA
  loc_10B96C1: var_8C.Fields.Append "Taxable", &HC8, &HA
  loc_10B96ED: var_8C.Fields.Append "Unit", &HC8, &H14
  loc_10B9719: var_8C.Fields.Append "VoidYN", &HC8, 1
  loc_10B9745: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10B9755: var_8C.CursorType = 3
  loc_10B9762: var_8C.LockType = 3
  loc_10B9781: var_8C.Open var_A0, var_B0, -1
  loc_10B9788: Set var_8C = Nothing 
  loc_10B978F: Set var_88 = arg_C 
  loc_10B9793: Proc_169_99_10B979C = -1
End Sub

Public Sub Proc_169_100_199CF68
  'Data Table: 56D3A8
  Dim var_1A4 As String
  Dim var_1A8 As String
  Dim unk_56D3B3 As Connection15
  Dim var_1E0 As Variant
  Dim var_1B8 As Variant
  Dim Me As Recordset15
  Dim var_1CC As Fields15
  Dim var_1D0 As Field20
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_210 As Variant
  Dim var_1A0 As Recordset15
  Dim var_1C8 As Variant
  Dim var_BC As Recordset15
  Dim var_96 As Integer
  Dim var_100 As Recordset15
  Dim var_22C As Fields15
  Dim var_B2 As Integer
  Dim var_C4 As Recordset15
  Dim var_234 As Recordset15
  Dim var_194 As Recordset15
  Dim var_B6 As Integer
  Dim var_248 As Recordset15
  Dim var_CC As Double
  Dim var_178 As Double
  Dim var_180 As Double
  Dim var_11E As Integer
  Dim var_108 As Recordset15
  Dim var_B4 As Integer
  Dim var_18E As Integer
  loc_199A0D8: On Error Goto loc_199CF61
  loc_199A102: unk_56D3B3.Execute "Select * from Depart Where Code='" & global_52 & "'", var_1C8, -1
  loc_199A10D: Set var_100 = var_1CC
  loc_199A15D: var_88 = CStr("Select * From PackingOrder P Where P.DocID='" & Me.Fields.Item("SearchCode").Value & "'")
  loc_199A170: var_1E0 = "Select S.SNO AS SRNO,S.TAXPER AS TAXPER,S.TAXAMT AS TAXAMT,S.RATE AS RATE,S.QTY As QTY,S.AMOUNT AS AMT,S.REMARK,I.NAME AS ITEMNAME,S.ItemCode,I.DISPCODE As DISPCODE,Case When S.TAXAMT=0 THEN S.AMOUNT ELSE 0 END AS NONTAXABLE,Case When S.TAXAMT<>0 THEN S.AMOUNT ELSE 0 END AS TAXABLE,S.Unit As UNIT,IsNull(S.VoidYN,'') As VoidYN From PackingOrderDetail S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEMCODE And I.RestCODE=S.ItemRestCode Where S.DocID='"
  loc_199A1B0: var_8C = CStr(var_1E0 & Me.Fields.Item("SearchCode").Value & "' Order By S.Sno")
  loc_199A1E2: var_1CC = Me.Fields
  loc_199A1F2: var_1C8 = var_1CC.Item("SearchCode").Value
  loc_199A1FA: var_210 = CVar("Select st.sno,st.SunCode,st.dispname,st.sValue,St.AMOUNT From packingorderdetail2 St " & " Where St.DocID='") & var_1C8 
  loc_199A208: var_90 = CStr(var_210 & "' order by sno")
  loc_199A21D: ' Referenced from: 199CEC0
  loc_199A225: If (var_88 = vbNullString) Then
  loc_199A228:   Exit Sub
  loc_199A229: End If
  loc_199A231: If (var_8C = vbNullString) Then
  loc_199A234:   Exit Sub
  loc_199A235: End If
  loc_199A23D: If (var_90 = vbNullString) Then
  loc_199A240:   Exit Sub
  loc_199A241: End If
  loc_199A257: unk_56D3B3.Execute var_88, var_1C8, -1
  loc_199A262: Set var_BC = var_1CC
  loc_199A281: unk_56D3B3.Execute var_8C, var_1C8, -1
  loc_199A28C: Set var_C4 = var_1CC
  loc_199A2AB: unk_56D3B3.Execute var_90, var_1C8, -1
  loc_199A2B6: Set var_108 = var_1CC
  loc_199A2E3: unk_56D3B3.Execute "Select BookingSlipFooter1,BookingSlipFooter2 from Enviro where LOGSite_code='" & MemVar_1F95078 & "'", var_1C8, -1
  loc_199A2EE: Set var_1A0 = var_1CC
  loc_199A312: If (var_1A0.RecordCount > 0) Then
  loc_199A324:   var_1CC = var_1A0.Fields
  loc_199A33D:   var_198 = Proc_6_38_E69628(CVar(var_1CC.Item("BookingSlipFooter1")), var_1CC, var_1CC)
  loc_199A355:   var_1CC = var_1A0.Fields
  loc_199A36E:   var_19C = Proc_6_38_E69628(CVar(var_1CC.Item("BookingSlipFooter2")), var_1CC)
  loc_199A377: End If
  loc_199A384: Call Proc_169_99_10B979C(New)
  loc_199A38C: Set var_C0 = var_1CC
  loc_199A38F: ' Referenced from: 199CF35
  loc_199A39E: If Not(var_BC.EOF) Then
  loc_199A3A3:   var_96 = 0
  loc_199A3AC:   If (var_96 = 0) Then
  loc_199A3BE:     var_1CC = var_100.Fields
  loc_199A3D7:     var_114 = Proc_6_38_E69628(CVar(var_1CC.Item("CstNo")), var_96, var_1CC)
  loc_199A3EF:     var_1CC = var_100.Fields
  loc_199A408:     var_110 = Proc_6_38_E69628(CVar(var_1CC.Item("LstNo")), var_1CC)
  loc_199A426:     var_144 = "Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144
  loc_199A458:     var_148 = Proc_6_38_E69628(CVar(var_100.Fields.Item("Phone")))
  loc_199A470:     var_1CC = var_100.Fields
  loc_199A4B9:     var_1A8 = Proc_6_38_E69628(CVar(var_100.Fields.Item("COMPANYTITLE")), (Proc_6_38_E69628(CVar(var_1CC.Item("COMPANYTITLE"))) = "Y"))
  loc_199A4D7:     If (var_1CC Or (var_1A8 = vbNullString)) Then
  loc_199A4DD:       var_14C = "Y"
  loc_199A4E0:     End If
  loc_199A556:     If ((Proc_6_38_E69628(CVar(var_100.Fields.Item("OutletTitle"))) = "Y") Or (Proc_6_38_E69628(CVar(var_100.Fields.Item("OutletTitle"))) = vbNullString)) Then
  loc_199A588:       var_E4 = CStr(Trim(CVar(var_100.Fields.Item("Name"))))
  loc_199A595:     End If
  loc_199A5BD:     var_150 = Proc_6_38_E69628(CVar(var_100.Fields.Item("Header1")))
  loc_199A5EE:     var_154 = Proc_6_38_E69628(CVar(var_100.Fields.Item("Header2")))
  loc_199A61F:     var_158 = Proc_6_38_E69628(CVar(var_100.Fields.Item("Header3")))
  loc_199A650:     var_15C = Proc_6_38_E69628(CVar(var_100.Fields.Item("Header4")))
  loc_199A681:     var_12C = Proc_6_38_E69628(CVar(var_100.Fields.Item("Slogan1")))
  loc_199A6B2:     var_130 = Proc_6_38_E69628(CVar(var_100.Fields.Item("Slogan2")))
  loc_199A6EA:     var_138 = CStr(Trim(CVar(var_100.Fields.Item("OrderBookCom1"))))
  loc_199A726:     var_13C = CStr(Trim(CVar(var_100.Fields.Item("OrderBookCom2"))))
  loc_199A739:     If (var_18E = 0) Then
  loc_199A73F:       var_140 = var_138
  loc_199A745:     Else
  loc_199A748:       var_140 = var_13C
  loc_199A74B:     End If
  loc_199A79D:     var_F4 = CStr(Format(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")))), "dd/MM/yy"))
  loc_199A7D9:     var_F8 = Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME")), 1)
  loc_199A825:     var_1F0 = CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("DDate")))) 'String
  loc_199A834:     var_118 = CStr(Format(var_1F0, "dd/MM/yy"))
  loc_199A870:     var_11C = Proc_6_38_E69628(CVar(var_BC.Fields.Item("DTime")), 1)
  loc_199A89F:     Proc_6_39_E7D3A0(var_1F0, CVar(var_BC.Fields.Item("VNo")))
  loc_199A8A8:     var_FC = CStr(var_1F0)
  loc_199A8DD:     var_134 = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Remark")), 1)
  loc_199A90E:     var_164 = Proc_6_38_E69628(CVar(var_BC.Fields.Item("PhoneNo")))
  loc_199A93F:     var_168 = Proc_6_38_E69628(CVar(var_BC.Fields.Item("CustName")))
  loc_199A970:     var_16C = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Addr1")))
  loc_199A9A1:     var_170 = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Addr2")))
  loc_199A9AD:     var_1B8 = "AdvAmt"
  loc_199A9D0:     Proc_6_39_E7D3A0(var_1F0, CVar(var_BC.Fields.Item(var_1B8)))
  loc_199A9DF:     var_1E0 = "0.00"
  loc_199A9F9:     var_160 = CStr(Format(var_1F0, var_1E0))
  loc_199AA0A:   End If
  loc_199AA0C:   var_B2 = 1
  loc_199AA12:   var_C4.MoveFirst
  loc_199AA17:   ' Referenced from: 199B430
  loc_199AA26:   If Not(var_C4.EOF) Then
  loc_199AA2C:     Set var_234 = var_C0 
  loc_199AA3B:     var_234.AddNew var_1B8, var_1E0
  loc_199AA65:     var_234.Fields.Item("mLine").Value = "GF"
  loc_199AA99:     var_234.Fields.Item("Sno").Value = CVar(CStr(var_B2))
  loc_199AAF7:     var_234.Fields.Item("DispCode").Value = CVar(CStr(var_C4.Fields.Item("DispCode").Value))
  loc_199AB59:     var_234.Fields.Item("Item").Value = CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("ItemName")), var_B2, 1))
  loc_199AB96:     var_1F0 = CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Remark")), 1)) 'String
  loc_199ABB9:     var_234.Fields.Item("Remark").Value = var_1F0
  loc_199ABF4:     Proc_6_39_E7D3A0(var_1F0, CVar(var_C4.Fields.Item("qty")))
  loc_199AC3C:     var_234.Fields.Item("Qty").Value = Format(var_1F0, "0.000")
  loc_199AC7B:     Proc_6_39_E7D3A0(var_1F0, CVar(var_C4.Fields.Item("Rate")), 1)
  loc_199ACC3:     var_234.Fields.Item("Rate").Value = Format(var_1F0, "0.00")
  loc_199AD02:     Proc_6_39_E7D3A0(var_1F0, CVar(var_C4.Fields.Item("TaxAmt")), 1)
  loc_199AD4A:     var_234.Fields.Item("TaxAmt").Value = Format(var_1F0, "0.00")
  loc_199AD89:     Proc_6_39_E7D3A0(var_1F0, CVar(var_C4.Fields.Item("Amt")), 1, 1)
  loc_199AD9D:     var_210 = "0.00"
  loc_199ADB5:     var_200 = "Amount"
  loc_199ADD1:     var_234.Fields.Item(var_200).Value = Format(var_1F0, var_210)
  loc_199AE10:     Proc_6_39_E7D3A0(var_1F0, CVar(var_C4.Fields.Item("TaxPer")), 1, 1)
  loc_199AE1B:     Proc_6_47_EF6560(var_210, var_1F0, 1)
  loc_199AE43:     var_234.Fields.Item("TaxPer").Value = var_210
  loc_199AE80:     Proc_6_47_EF6560(var_1F0, CVar(var_C4.Fields.Item("nonTaxable")))
  loc_199AEA8:     var_234.Fields.Item("NonTaxable").Value = var_1F0
  loc_199AEE3:     Proc_6_47_EF6560(var_1F0, CVar(var_C4.Fields.Item("Taxable")))
  loc_199AF0B:     var_234.Fields.Item("Taxable").Value = var_1F0
  loc_199AF6B:     var_234.Fields.Item("Unit").Value = CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Unit")), 1))
  loc_199AFBB:     var_22C = var_234.Fields
  loc_199AFCB:     var_22C.Item("VoidYN").Value = CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("VoidYN"))))
  loc_199AFE0:     var_1E0 = "*"
  loc_199AFE9:     var_1B8 = "Mark"
  loc_199B005:     var_234.Fields.Item(var_1B8).Value = var_1E0
  loc_199B01C:     var_234.Update var_1B8, var_1E0
  loc_199B023:     Set var_234 = Nothing 
  loc_199B03B:     var_1A4 = "Select IM.Name As ItemName, IM.Unit , Qty  from ComboPackDetail Inner Join ItemMast IM On  ComboPackDetail.ItemCode = IM.Code And ComboPackDetail.RestCode = IM.RestCode where (ComboPackDetail.LOGSITE_CODE='" & MemVar_1F95078
  loc_199B04B:     var_1B8 = "ItemCode"
  loc_199B06F:     var_210 = CVar(var_1A4 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") & var_C4.Fields.Item(var_1B8).Value 
  loc_199B073:     var_1E0 = "'"
  loc_199B086:     unk_56D3B3.Execute CStr(var_210 & var_1E0), var_244, -1
  loc_199B091:     Set var_194 = var_22C
  loc_199B0B7:     var_224 = var_194.RecordCount
  loc_199B0C5:     If (var_224 > 0) Then
  loc_199B0CA:       var_B6 = 1
  loc_199B0CD:       ' Referenced from: 199B339
  loc_199B0DC:       If Not(var_194.EOF) Then
  loc_199B0E2:         Set var_248 = var_C0 
  loc_199B0F1:         var_248.AddNew var_1B8, var_1E0
  loc_199B11B:         var_248.Fields.Item("mLine").Value = "SB"
  loc_199B14F:         var_248.Fields.Item("Sno").Value = CVar(CStr(var_B6))
  loc_199B186:         var_1F0 = CVar(Proc_6_38_E69628(CVar(var_194.Fields.Item("ItemName")), var_B6)) 'String
  loc_199B1A9:         var_248.Fields.Item("Item").Value = var_1F0
  loc_199B1E4:         Proc_6_51_EF4580(var_1F0, CVar(var_194.Fields.Item("qty")))
  loc_199B1FC:         var_22C = var_248.Fields
  loc_199B20C:         var_22C.Item("Qty").Value = var_1F0
  loc_199B26C:         var_248.Fields.Item("Unit").Value = CVar(Proc_6_38_E69628(CVar(var_194.Fields.Item("Unit")), var_248.Fields))
  loc_199B2A9:         var_1F0 = CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("VoidYN")))) 'String
  loc_199B2CC:         var_248.Fields.Item("VoidYN").Value = var_1F0
  loc_199B2E1:         var_1E0 = "*"
  loc_199B2EA:         var_1B8 = "Mark"
  loc_199B306:         var_248.Fields.Item(var_1B8).Value = var_1E0
  loc_199B31D:         var_248.Update var_1B8, var_1E0
  loc_199B324:         Set var_248 = Nothing 
  loc_199B32E:         var_B6 = (var_B6 + 1)
  loc_199B334:         var_194.MoveNext
  loc_199B339:         GoTo loc_199B0CD
  loc_199B33C:       End If
  loc_199B33C:     End If
  loc_199B341:     Set var_194 = Nothing
  loc_199B371:     Proc_6_39_E7D3A0(var_1F0, CVar(var_C4.Fields.Item("Amt")), CVar(var_CC))
  loc_199B379:     var_210 = (var_B6 + var_1F0)
  loc_199B3BA:     Proc_6_39_E7D3A0(var_1F0, CVar(var_C4.Fields.Item("nonTaxable")), CVar(var_178))
  loc_199B3C2:     var_210 = (CSng(var_210) + var_1F0)
  loc_199B3C7:     var_178 = CSng(var_210)
  loc_199B3D9:     var_1E0 = CVar(var_180) 'Double
  loc_199B403:     Proc_6_39_E7D3A0(var_1F0, CVar(var_C4.Fields.Item("Taxable")), var_1E0)
  loc_199B40B:     var_210 = (var_178 + var_1F0)
  loc_199B410:     var_180 = CSng(var_210)
  loc_199B425:     var_B2 = (var_B2 + 1)
  loc_199B42B:     var_C4.MoveNext
  loc_199B430:     GoTo loc_199AA17
  loc_199B433:   End If
  loc_199B44A:   var_1D0 = var_BC.Fields.Item("U_Name")
  loc_199B45B:   var_10C = Proc_6_38_E69628(CVar(var_1D0), var_B2)
  loc_199B466:   var_11E = &HFF
  loc_199B46C:   var_124 = "OrderBooking"
  loc_199B46F:   var_1B8 = "Order Booking"
  loc_199B486:   var_128 = CStr(Ucase(var_1B8))
  loc_199B496:   If (var_11E = 0) Then
  loc_199B499:     Exit Sub
  loc_199B49A:   End If
  loc_199B4BE:   Set var_1CC = var_C0 
  loc_199B4C5:   CreateFieldDefFile(var_1CC, MemVar_1F950B4 & "\" & var_124 & ".ttx", &HFF)
  loc_199B4F0:   var_1A4 = MemVar_1F950B4 & "\"
  loc_199B507:   Call 0.Method_arg_1C (var_1A4 & var_124 & ".RPT", var_1B8, var_1CC)
  loc_199B512:   MemVar_1F951E8 = var_1CC
  loc_199B53B:   Call 0.Method_arg_64 (var_1CC, CVar(var_1CC), var_1E0, var_200)
  loc_199B543:   Call 0.Method_arg_2C (var_11E, var_180)
  loc_199B551:   Call 0.Method_arg_150 (1)
  loc_199B567:   Call 0.Method_arg_90 (var_1CC, var_224)
  loc_199B56F:   Call 0.Method_arg_24 (var_B2)
  loc_199B57B:   For var_254 =  To CInt(var_224): 1 = var_254 'Integer
  loc_199B594:     Call 0.Method_arg_90 (var_1CC, CLng(var_B2))
  loc_199B59C:     Call 0.Method_arg_20 (var_1D0)
  loc_199B5A4:     Call 0.Method_arg_30 (var_1A4)
  loc_199B5BA:     var_264 = Ucase(CVar(var_1A4)) 'Variant
  loc_199B5D0:     var_1C8 = "comp_name"
  loc_199B5EA:     If (var_264 = Ucase(var_1C8)) Then
  loc_199B5F8:       Proc_6_17_EAAE40(var_1C8)
  loc_199B614:       Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199B61C:       Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199B624:       Call 0.Method_arg_38 (MemVar_1F95130)
  loc_199B639:     Else
  loc_199B641:       var_1C8 = "comp_add1"
  loc_199B65B:       If (var_264 = Ucase(var_1C8)) Then
  loc_199B669:         Proc_6_17_EAAE40(var_1C8)
  loc_199B685:         Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199B68D:         Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199B695:         Call 0.Method_arg_38 (MemVar_1F95134)
  loc_199B6AA:       Else
  loc_199B6B2:         var_1C8 = "comp_pin"
  loc_199B6CC:         If (var_264 = Ucase(var_1C8)) Then
  loc_199B6DA:           Proc_6_17_EAAE40(var_1C8)
  loc_199B6F6:           Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199B6FE:           Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199B706:           Call 0.Method_arg_38 (MemVar_1F9513C)
  loc_199B71B:         Else
  loc_199B73D:           If (var_264 = Ucase("comp_GSTIN")) Then
  loc_199B761:             Call 0.Method_arg_90 (var_1CC, CLng(var_B2))
  loc_199B769:             Call 0.Method_arg_20 (var_1D0)
  loc_199B771:             Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_199B787:           Else
  loc_199B78F:             var_1C8 = "Comp_Phone_Fax"
  loc_199B7A9:             If (var_264 = Ucase(var_1C8)) Then
  loc_199B7B7:               Proc_6_17_EAAE40(var_1C8)
  loc_199B7D3:               Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199B7DB:               Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199B7E3:               Call 0.Method_arg_38 (var_144)
  loc_199B7F8:             Else
  loc_199B800:               var_1C8 = "Outl_Phone_Fax"
  loc_199B81A:               If (var_264 = Ucase(var_1C8)) Then
  loc_199B828:                 Proc_6_17_EAAE40(var_1C8)
  loc_199B844:                 Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199B84C:                 Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199B854:                 Call 0.Method_arg_38 (var_148)
  loc_199B869:               Else
  loc_199B871:                 var_1C8 = "CompTitleYN"
  loc_199B88B:                 If (var_264 = Ucase(var_1C8)) Then
  loc_199B899:                   Proc_6_17_EAAE40(var_1C8)
  loc_199B8B5:                   Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199B8BD:                   Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199B8C5:                   Call 0.Method_arg_38 (var_14C)
  loc_199B8DA:                 Else
  loc_199B8E2:                   var_1C8 = "Outlet_Title"
  loc_199B8FC:                   If (var_264 = Ucase(var_1C8)) Then
  loc_199B90A:                     Proc_6_17_EAAE40(var_1C8)
  loc_199B926:                     Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199B92E:                     Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199B936:                     Call 0.Method_arg_38 (var_E4)
  loc_199B94B:                   Else
  loc_199B953:                     var_1C8 = "Cst_No"
  loc_199B96D:                     If (var_264 = Ucase(var_1C8)) Then
  loc_199B97B:                       Proc_6_17_EAAE40(var_1C8)
  loc_199B997:                       Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199B99F:                       Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199B9A7:                       Call 0.Method_arg_38 (var_114)
  loc_199B9BC:                     Else
  loc_199B9C4:                       var_1C8 = "Lst_No"
  loc_199B9DE:                       If (var_264 = Ucase(var_1C8)) Then
  loc_199B9EC:                         Proc_6_17_EAAE40(var_1C8)
  loc_199BA08:                         Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199BA10:                         Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199BA18:                         Call 0.Method_arg_38 (var_110)
  loc_199BA2D:                       Else
  loc_199BA35:                         var_1C8 = "Title"
  loc_199BA4F:                         If (var_264 = Ucase(var_1C8)) Then
  loc_199BA5D:                           Proc_6_17_EAAE40(var_1C8)
  loc_199BA79:                           Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199BA81:                           Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199BA89:                           Call 0.Method_arg_38 (var_128)
  loc_199BA9E:                         Else
  loc_199BAA6:                           var_1C8 = "Booking_No"
  loc_199BAC0:                           If (var_264 = Ucase(var_1C8)) Then
  loc_199BACE:                             Proc_6_17_EAAE40(var_1C8)
  loc_199BAEA:                             Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199BAF2:                             Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199BAFA:                             Call 0.Method_arg_38 (var_FC)
  loc_199BB0F:                           Else
  loc_199BB17:                             var_1C8 = "AdvanceAmt"
  loc_199BB31:                             If (var_264 = Ucase(var_1C8)) Then
  loc_199BB3F:                               Proc_6_17_EAAE40(var_1C8)
  loc_199BB5B:                               Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199BB63:                               Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199BB6B:                               Call 0.Method_arg_38 (var_160)
  loc_199BB80:                             Else
  loc_199BB88:                               var_1C8 = "Remark"
  loc_199BBA2:                               If (var_264 = Ucase(var_1C8)) Then
  loc_199BBB0:                                 Proc_6_17_EAAE40(var_1C8)
  loc_199BBCC:                                 Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199BBD4:                                 Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199BBDC:                                 Call 0.Method_arg_38 (var_134)
  loc_199BBF1:                               Else
  loc_199BBF9:                                 var_1C8 = "CustPhone"
  loc_199BC13:                                 If (var_264 = Ucase(var_1C8)) Then
  loc_199BC21:                                   Proc_6_17_EAAE40(var_1C8)
  loc_199BC3D:                                   Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199BC45:                                   Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199BC4D:                                   Call 0.Method_arg_38 (var_164)
  loc_199BC62:                                 Else
  loc_199BC6A:                                   var_1C8 = "CustName"
  loc_199BC84:                                   If (var_264 = Ucase(var_1C8)) Then
  loc_199BC92:                                     Proc_6_17_EAAE40(var_1C8)
  loc_199BCAE:                                     Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199BCB6:                                     Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199BCBE:                                     Call 0.Method_arg_38 (var_168)
  loc_199BCD3:                                   Else
  loc_199BCDB:                                     var_1C8 = "CustAddr1"
  loc_199BCF5:                                     If (var_264 = Ucase(var_1C8)) Then
  loc_199BD03:                                       Proc_6_17_EAAE40(var_1C8)
  loc_199BD1F:                                       Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199BD27:                                       Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199BD2F:                                       Call 0.Method_arg_38 (var_16C)
  loc_199BD44:                                     Else
  loc_199BD4C:                                       var_1C8 = "CustAddr2"
  loc_199BD66:                                       If (var_264 = Ucase(var_1C8)) Then
  loc_199BD74:                                         Proc_6_17_EAAE40(var_1C8)
  loc_199BD90:                                         Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199BD98:                                         Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199BDA0:                                         Call 0.Method_arg_38 (var_170)
  loc_199BDB5:                                       Else
  loc_199BDBD:                                         var_1C8 = "Booking_Date"
  loc_199BDD7:                                         If (var_264 = Ucase(var_1C8)) Then
  loc_199BDE5:                                           Proc_6_17_EAAE40(var_1C8)
  loc_199BE01:                                           Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199BE09:                                           Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199BE11:                                           Call 0.Method_arg_38 (var_F4)
  loc_199BE26:                                         Else
  loc_199BE2E:                                           var_1C8 = "Booking_Time"
  loc_199BE48:                                           If (var_264 = Ucase(var_1C8)) Then
  loc_199BE56:                                             Proc_6_17_EAAE40(var_1C8)
  loc_199BE72:                                             Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199BE7A:                                             Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199BE82:                                             Call 0.Method_arg_38 (var_F8)
  loc_199BE97:                                           Else
  loc_199BE9F:                                             var_1C8 = "Delivery_Date"
  loc_199BEB9:                                             If (var_264 = Ucase(var_1C8)) Then
  loc_199BEC7:                                               Proc_6_17_EAAE40(var_1C8)
  loc_199BEE3:                                               Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199BEEB:                                               Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199BEF3:                                               Call 0.Method_arg_38 (var_118)
  loc_199BF08:                                             Else
  loc_199BF10:                                               var_1C8 = "Delivery_Time"
  loc_199BF2A:                                               If (var_264 = Ucase(var_1C8)) Then
  loc_199BF38:                                                 Proc_6_17_EAAE40(var_1C8)
  loc_199BF54:                                                 Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199BF5C:                                                 Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199BF64:                                                 Call 0.Method_arg_38 (var_11C)
  loc_199BF79:                                               Else
  loc_199BF81:                                                 var_1C8 = "TotNonTaxable"
  loc_199BF8A:                                                 var_1F0 = Ucase(var_1C8)
  loc_199BF9B:                                                 If (var_264 = var_1F0) Then
  loc_199BFA9:                                                   Proc_6_47_EF6560(var_1C8)
  loc_199BFB4:                                                   Proc_6_17_EAAE40(var_1F0, var_1C8)
  loc_199BFD0:                                                   Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199BFD8:                                                   Call 0.Method_arg_20 (CStr(var_1F0))
  loc_199BFE0:                                                   Call 0.Method_arg_38 (var_178)
  loc_199BFF9:                                                 Else
  loc_199C001:                                                   var_1C8 = "TotTaxable"
  loc_199C00A:                                                   var_1F0 = Ucase(var_1C8)
  loc_199C01B:                                                   If (var_264 = var_1F0) Then
  loc_199C029:                                                     Proc_6_47_EF6560(var_1C8)
  loc_199C034:                                                     Proc_6_17_EAAE40(var_1F0, var_1C8)
  loc_199C050:                                                     Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C058:                                                     Call 0.Method_arg_20 (CStr(var_1F0))
  loc_199C060:                                                     Call 0.Method_arg_38 (var_180)
  loc_199C079:                                                   Else
  loc_199C081:                                                     var_1C8 = "User_Name"
  loc_199C09B:                                                     If (var_264 = Ucase(var_1C8)) Then
  loc_199C0A9:                                                       Proc_6_17_EAAE40(var_1C8)
  loc_199C0C5:                                                       Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C0CD:                                                       Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C0D5:                                                       Call 0.Method_arg_38 (var_10C)
  loc_199C0EA:                                                     Else
  loc_199C0F2:                                                       var_1C8 = "Header1"
  loc_199C10C:                                                       If (var_264 = Ucase(var_1C8)) Then
  loc_199C11A:                                                         Proc_6_17_EAAE40(var_1C8)
  loc_199C136:                                                         Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C13E:                                                         Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C146:                                                         Call 0.Method_arg_38 (var_150)
  loc_199C15B:                                                       Else
  loc_199C163:                                                         var_1C8 = "Header2"
  loc_199C17D:                                                         If (var_264 = Ucase(var_1C8)) Then
  loc_199C18B:                                                           Proc_6_17_EAAE40(var_1C8)
  loc_199C1A7:                                                           Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C1AF:                                                           Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C1B7:                                                           Call 0.Method_arg_38 (var_154)
  loc_199C1CC:                                                         Else
  loc_199C1D4:                                                           var_1C8 = "Header3"
  loc_199C1EE:                                                           If (var_264 = Ucase(var_1C8)) Then
  loc_199C1FC:                                                             Proc_6_17_EAAE40(var_1C8)
  loc_199C218:                                                             Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C220:                                                             Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C228:                                                             Call 0.Method_arg_38 (var_158)
  loc_199C23D:                                                           Else
  loc_199C245:                                                             var_1C8 = "Header4"
  loc_199C25F:                                                             If (var_264 = Ucase(var_1C8)) Then
  loc_199C26D:                                                               Proc_6_17_EAAE40(var_1C8)
  loc_199C289:                                                               Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C291:                                                               Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C299:                                                               Call 0.Method_arg_38 (var_15C)
  loc_199C2AE:                                                             Else
  loc_199C2B6:                                                               var_1C8 = "Slogan1"
  loc_199C2D0:                                                               If (var_264 = Ucase(var_1C8)) Then
  loc_199C2DE:                                                                 Proc_6_17_EAAE40(var_1C8)
  loc_199C2FA:                                                                 Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C302:                                                                 Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C30A:                                                                 Call 0.Method_arg_38 (var_12C)
  loc_199C31F:                                                               Else
  loc_199C327:                                                                 var_1C8 = "Slogan2"
  loc_199C341:                                                                 If (var_264 = Ucase(var_1C8)) Then
  loc_199C34F:                                                                   Proc_6_17_EAAE40(var_1C8)
  loc_199C36B:                                                                   Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C373:                                                                   Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C37B:                                                                   Call 0.Method_arg_38 (var_130)
  loc_199C390:                                                                 Else
  loc_199C398:                                                                   var_1C8 = "OrderBookCom1"
  loc_199C3B2:                                                                   If (var_264 = Ucase(var_1C8)) Then
  loc_199C3C0:                                                                     Proc_6_17_EAAE40(var_1C8)
  loc_199C3DC:                                                                     Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C3E4:                                                                     Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C3EC:                                                                     Call 0.Method_arg_38 (var_138)
  loc_199C401:                                                                   Else
  loc_199C409:                                                                     var_1C8 = "OrderBookCom2"
  loc_199C423:                                                                     If (var_264 = Ucase(var_1C8)) Then
  loc_199C431:                                                                       Proc_6_17_EAAE40(var_1C8)
  loc_199C44D:                                                                       Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C455:                                                                       Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C45D:                                                                       Call 0.Method_arg_38 (var_13C)
  loc_199C472:                                                                     Else
  loc_199C47A:                                                                       var_1C8 = "OrderBookComment"
  loc_199C494:                                                                       If (var_264 = Ucase(var_1C8)) Then
  loc_199C4A2:                                                                         Proc_6_17_EAAE40(var_1C8)
  loc_199C4BE:                                                                         Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C4C6:                                                                         Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C4CE:                                                                         Call 0.Method_arg_38 (var_140)
  loc_199C4E3:                                                                       Else
  loc_199C505:                                                                         If (var_264 = Ucase("BookingSlipFooter1")) Then
  loc_199C529:                                                                           Call 0.Method_arg_90 (var_1CC, CLng(var_B2))
  loc_199C531:                                                                           Call 0.Method_arg_20 (var_1D0)
  loc_199C539:                                                                           Call 0.Method_arg_38 ("'" & var_198 & "'")
  loc_199C54F:                                                                         Else
  loc_199C571:                                                                           If (var_264 = Ucase("BookingSlipFooter2")) Then
  loc_199C57B:                                                                             var_1A4 = "'" & var_19C
  loc_199C595:                                                                             Call 0.Method_arg_90 (var_1CC, CLng(var_B2))
  loc_199C59D:                                                                             Call 0.Method_arg_20 (var_1D0)
  loc_199C5A5:                                                                             Call 0.Method_arg_38 (var_1A4 & "'")
  loc_199C5B8:                                                                           End If
  loc_199C5B8:                                                                         End If
  loc_199C5B8:                                                                       End If
  loc_199C5B8:                                                                     End If
  loc_199C5B8:                                                                   End If
  loc_199C5B8:                                                                 End If
  loc_199C5B8:                                                               End If
  loc_199C5B8:                                                             End If
  loc_199C5B8:                                                           End If
  loc_199C5B8:                                                         End If
  loc_199C5B8:                                                       End If
  loc_199C5B8:                                                     End If
  loc_199C5B8:                                                   End If
  loc_199C5B8:                                                 End If
  loc_199C5B8:                                               End If
  loc_199C5B8:                                             End If
  loc_199C5B8:                                           End If
  loc_199C5B8:                                         End If
  loc_199C5B8:                                       End If
  loc_199C5B8:                                     End If
  loc_199C5B8:                                   End If
  loc_199C5B8:                                 End If
  loc_199C5B8:                               End If
  loc_199C5B8:                             End If
  loc_199C5B8:                           End If
  loc_199C5B8:                         End If
  loc_199C5B8:                       End If
  loc_199C5B8:                     End If
  loc_199C5B8:                   End If
  loc_199C5B8:                 End If
  loc_199C5B8:               End If
  loc_199C5B8:             End If
  loc_199C5B8:           End If
  loc_199C5B8:         End If
  loc_199C5B8:       End If
  loc_199C5B8:     End If
  loc_199C5BB:   Next var_254 'Integer
  loc_199C5C6:   var_224 = var_108.RecordCount
  loc_199C5D4:   If (var_224 > 0) Then
  loc_199C5DA:     var_108.MoveFirst
  loc_199C5DF:     ' Referenced from: 199CD99
  loc_199C5EE:     If Not(var_108.EOF) Then
  loc_199C645:       If (Ucase(Trim(CVar(var_108.Fields.Item("SunCode")))) = CVar(MemVar_1F95078 & "NET")) Then
  loc_199C678:         var_1F0 = StrConv(CVar(var_108.Fields.Item("DispName")), 3, 0)
  loc_199C69D:         var_1CC = var_108.Fields
  loc_199C6A5:         var_1D0 = var_1CC.Item("Amount")
  loc_199C6AD:         var_1C8 = CVar(var_1D0) 'Address
  loc_199C6B4:         Proc_6_39_E7D3A0(var_1F0)
  loc_199C6DD:         var_18C = CStr(Format(var_1F0, "0.00"))
  loc_199C6FF:         Call 0.Method_arg_90 (var_1CC, var_224, var_B2, 1)
  loc_199C707:         Call 0.Method_arg_24 (1, 1)
  loc_199C713:         For var_268 =  To CInt(var_224): var_1C8 = var_268 'Integer
  loc_199C72C:           Call 0.Method_arg_90 (var_1CC, CLng(var_B2))
  loc_199C734:           Call 0.Method_arg_20 (var_1D0)
  loc_199C73C:           Call 0.Method_arg_30 (var_1A4)
  loc_199C752:           var_278 = Ucase(CVar(var_1A4)) 'Variant
  loc_199C768:           var_1C8 = "lblNetAmount"
  loc_199C782:           If (var_278 = Ucase(var_1C8)) Then
  loc_199C790:             Proc_6_17_EAAE40(var_1C8)
  loc_199C7AC:             Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C7B4:             Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C7BC:             Call 0.Method_arg_38 (CStr(Ucase(var_1C8)))
  loc_199C7D1:           Else
  loc_199C7D9:             var_1C8 = "NetAmount"
  loc_199C7F3:             If (var_278 = Ucase(var_1C8)) Then
  loc_199C801:               Proc_6_17_EAAE40(var_1C8)
  loc_199C809:               var_1A4 = CStr(var_1C8)
  loc_199C81D:               Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C825:               Call 0.Method_arg_20 (var_1A4)
  loc_199C82D:               Call 0.Method_arg_38 (var_18C)
  loc_199C83F:             End If
  loc_199C83F:           End If
  loc_199C842:         Next var_268 'Integer
  loc_199C84A:       Else
  loc_199C89E:         If (Ucase(Trim(CVar(var_108.Fields.Item("SunCode")))) = CVar(MemVar_1F95078 & "TOT")) Then
  loc_199C8D1:           var_1F0 = StrConv(CVar(var_108.Fields.Item("DispName")), 3, 0)
  loc_199C8F6:           var_1CC = var_108.Fields
  loc_199C8FE:           var_1D0 = var_1CC.Item("Amount")
  loc_199C906:           var_1C8 = CVar(var_1D0) 'Address
  loc_199C90D:           Proc_6_39_E7D3A0(var_1F0)
  loc_199C936:           var_18C = CStr(Format(var_1F0, "0.00"))
  loc_199C958:           Call 0.Method_arg_90 (var_1CC, var_224, var_B2, 1)
  loc_199C960:           Call 0.Method_arg_24 (1, 1)
  loc_199C96C:           For var_27C =  To CInt(var_224):   var_1C8 = var_27C 'Integer
  loc_199C985:             Call 0.Method_arg_90 (var_1CC, CLng(var_B2))
  loc_199C98D:             Call 0.Method_arg_20 (var_1D0)
  loc_199C995:             Call 0.Method_arg_30 (var_1A4)
  loc_199C9AB:             var_28C = Ucase(CVar(var_1A4)) 'Variant
  loc_199C9C1:             var_1C8 = "lblTotal"
  loc_199C9DB:             If (var_28C = Ucase(var_1C8)) Then
  loc_199C9E9:               Proc_6_17_EAAE40(var_1C8)
  loc_199CA05:               Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CA0D:               Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CA15:               Call 0.Method_arg_38 (CStr(Ucase(var_1C8)))
  loc_199CA2A:             Else
  loc_199CA32:               var_1C8 = "Total"
  loc_199CA4C:               If (var_28C = Ucase(var_1C8)) Then
  loc_199CA5A:                 Proc_6_17_EAAE40(var_1C8)
  loc_199CA62:                 var_1A4 = CStr(var_1C8)
  loc_199CA76:                 Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CA7E:                 Call 0.Method_arg_20 (var_1A4)
  loc_199CA86:                 Call 0.Method_arg_38 (var_18C)
  loc_199CA98:               End If
  loc_199CA98:             End If
  loc_199CA9B:           Next var_27C 'Integer
  loc_199CAA3:         Else
  loc_199CAD3:           var_1F0 = StrConv(CVar(var_108.Fields.Item("DispName")), 3, 0)
  loc_199CB08:           var_1C8 = CVar(var_108.Fields.Item("SValue")) 'Address
  loc_199CB0F:           Proc_6_39_E7D3A0(var_1F0)
  loc_199CB38:           var_188 = CStr(Format(var_1F0, "0.00"))
  loc_199CB58:           var_1CC = var_108.Fields
  loc_199CB60:           var_1D0 = var_1CC.Item("Amount")
  loc_199CB68:           var_1C8 = CVar(var_1D0) 'Address
  loc_199CB6F:           Proc_6_39_E7D3A0(var_1F0, var_1C8, 1)
  loc_199CB98:           var_18C = CStr(Format(var_1F0, "0.00"))
  loc_199CBAF:           var_B4 = (var_B4 + 1)
  loc_199CBC3:           Call 0.Method_arg_90 (var_1CC, var_224, var_B2, 1, var_B4)
  loc_199CBCB:           Call 0.Method_arg_24 (1, 1)
  loc_199CBD7:           For var_290 = var_1C8 To CInt(var_224):     1 = var_290 'Integer
  loc_199CBF0:             Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CBF8:             Call 0.Method_arg_20 (var_1A4)
  loc_199CC00:             Call 0.Method_arg_30 (var_1C8)
  loc_199CC16:             var_2A0 = Ucase(CVar(var_1A4)) 'Variant
  loc_199CC33:             var_1C8 = CVar("lblSunName" & CStr(var_B4)) 'String
  loc_199CC4D:             If (var_2A0 = Ucase(var_1C8)) Then
  loc_199CC5B:               Proc_6_17_EAAE40(var_1C8)
  loc_199CC77:               Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CC7F:               Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CC87:               Call 0.Method_arg_38 (CStr(Ucase(var_1C8)))
  loc_199CC9C:             Else
  loc_199CCAB:               var_1C8 = CVar("SunPer" & CStr(var_B4)) 'String
  loc_199CCC5:               If (var_2A0 = Ucase(var_1C8)) Then
  loc_199CCD3:                 Proc_6_17_EAAE40(var_1C8)
  loc_199CCEF:                 Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CCF7:                 Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CCFF:                 Call 0.Method_arg_38 (var_188)
  loc_199CD14:               Else
  loc_199CD23:                 var_1C8 = CVar("SunAmt" & CStr(var_B4)) 'String
  loc_199CD29:                 var_1F0 = Ucase(var_1C8)
  loc_199CD3D:                 If (var_2A0 = var_1F0) Then
  loc_199CD4B:                   Proc_6_17_EAAE40(var_1C8)
  loc_199CD67:                   Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CD6F:                   Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CD77:                   Call 0.Method_arg_38 (var_18C)
  loc_199CD89:                 End If
  loc_199CD89:               End If
  loc_199CD89:             End If
  loc_199CD8C:           Next var_290 'Integer
  loc_199CD91:         End If
  loc_199CD91:       End If
  loc_199CD94:       var_108.MoveNext
  loc_199CD99:       GoTo loc_199C5DF
  loc_199CD9C:     End If
  loc_199CD9C:   End If
  loc_199CDBB:   var_1C8 = CVar(var_100.Fields.Item("NoOfKot")) 'Address
  loc_199CDC2:   Proc_6_39_E7D3A0(var_1F0)
  loc_199CDDC:   If (var_1F0 <= 0) Then
  loc_199CDE4:     Set var_1D0 = Nothing
  loc_199CE00:     Set var_1CC = MemVar_1F951E8 
  loc_199CE0C:     Proc_6_99_1484404(var_1CC, 0, vbNullString)
  loc_199CE17:     MemVar_1F951E8 = var_1CC
  loc_199CE28:   Else
  loc_199CE4E:     Proc_6_39_E7D3A0(var_1F0, CVar(var_100.Fields.Item("NoOfKot")), &HFF)
  loc_199CE68:     If (var_1F0 = 1) Then
  loc_199CE88:       Call 0.Method_Me8 (False, 1, var_200, var_2B4)
  loc_199CE90:     Else
  loc_199CE96:       If (var_18E = 0) Then
  loc_199CEB6:         Call 0.Method_Me8 (False, 1, var_200, var_2B4)
  loc_199CEBD:         var_18E = &HFF
  loc_199CEC0:         GoTo loc_199A21D
  loc_199CEC6:       Else
  loc_199CEEC:         Proc_6_39_E7D3A0(var_1F0, CVar(var_100.Fields.Item("NoOfKot")), var_18E, var_2C4)
  loc_199CF05:         var_210 = (var_1F0 - 1)
  loc_199CF15:         Call 0.Method_Me8 (False, "0.00", var_2B4, var_2C4)
  loc_199CF24:       End If
  loc_199CF24:     End If
  loc_199CF24:   End If
  loc_199CF29:   MemVar_1F951E8 = Nothing
  loc_199CF30:   var_BC.MoveNext
  loc_199CF35:   GoTo loc_199A38F
  loc_199CF38: End If
  loc_199CF3D: Set var_BC = Nothing
  loc_199CF45: Set var_C0 = Nothing
  loc_199CF4D: Set var_108 = Nothing
  loc_199CF55: Set var_C4 = Nothing
  loc_199CF5D: Set var_100 = Nothing
  loc_199CF60: Exit Sub
  loc_199CF61: ' Referenced from: 199A0D8
  loc_199CF61: Proc_6_60_E63754(var_2D4, var_2C4)
  loc_199CF66: Exit Sub
End Sub
