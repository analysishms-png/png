VERSION 5.00
Begin VB.Form RsTouchScreenBookingEntry
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
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 8
    Left = 5505
    Top = 1815
    Width = 3750
    Height = 240
    Enabled = 0   'False
    TabIndex = 110
    BorderStyle = 0 'None
    MaxLength = 50
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
    Left = 5505
    Top = 1560
    Width = 3750
    Height = 240
    Enabled = 0   'False
    TabIndex = 108
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin CommandButton CmdBookDetails
    Caption = "Fill Booking Details"
    Left = 9300
    Top = 1560
    Width = 2100
    Height = 510
    TabIndex = 107
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
    Index = 6
    Left = 5505
    Top = 1305
    Width = 1935
    Height = 240
    Enabled = 0   'False
    TabIndex = 81
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
  Begin Frame FrCustInfo
    BackColor = &H80000003&
    Left = 7560
    Top = 2100
    Width = 7230
    Height = 6330
    Visible = 0   'False
    TabIndex = 80
    BorderStyle = 0 'None
    Begin CommandButton CmdCancel
      Caption = "Cancel"
      Left = 3390
      Top = 4380
      Width = 1935
      Height = 420
      TabIndex = 113
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
    Begin CommandButton CmdOk
      Caption = "OK"
      Left = 1365
      Top = 4380
      Width = 1935
      Height = 420
      TabIndex = 112
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
    Begin TextBox TxtAddr1
      Left = 105
      Top = 3345
      Width = 3210
      Height = 240
      TabIndex = 104
      BorderStyle = 0 'None
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
    Begin CommandButton CmdAdd1
      Caption = "Address1"
      Left = 3390
      Top = 3255
      Width = 1935
      Height = 420
      TabIndex = 103
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
    Begin CommandButton CmdAdd2
      Caption = "Address2"
      Left = 3390
      Top = 3780
      Width = 1935
      Height = 420
      TabIndex = 102
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
    Begin TextBox TxtAddr2
      Left = 105
      Top = 3870
      Width = 3210
      Height = 240
      TabIndex = 101
      BorderStyle = 0 'None
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
    Begin TextBox TxtPhone
      Left = 105
      Top = 2295
      Width = 3210
      Height = 240
      TabIndex = 98
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
    Begin CommandButton CmdPhone
      Caption = "Phone No."
      Left = 3390
      Top = 2205
      Width = 1935
      Height = 420
      TabIndex = 97
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
    Begin CommandButton CmdCustomer
      Caption = "Customer Name"
      Left = 3390
      Top = 2730
      Width = 1935
      Height = 420
      TabIndex = 96
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
    Begin TextBox TxtCustName
      Left = 105
      Top = 2820
      Width = 3210
      Height = 240
      TabIndex = 95
      BorderStyle = 0 'None
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
    Begin TextBox TxtDelDate
      Left = 105
      Top = 1245
      Width = 3210
      Height = 240
      TabIndex = 92
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
    Begin CommandButton CmdDelDate
      Caption = "Delivery Date"
      Left = 3390
      Top = 1155
      Width = 1935
      Height = 420
      TabIndex = 91
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
    Begin CommandButton CmdDelTime
      Caption = "Delivery Time"
      Left = 3390
      Top = 1680
      Width = 1935
      Height = 420
      TabIndex = 90
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
    Begin TextBox TxtDelTime
      Left = 105
      Top = 1770
      Width = 3210
      Height = 240
      TabIndex = 89
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
    Begin TextBox TxtBookDate
      Left = 105
      Top = 195
      Width = 3210
      Height = 240
      TabIndex = 86
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
    Begin CommandButton CmdBookDate
      Caption = "Booking Date"
      Left = 3390
      Top = 105
      Width = 1935
      Height = 420
      TabIndex = 85
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
    Begin CommandButton CmdBookTime
      Caption = "Booking Time"
      Left = 3390
      Top = 630
      Width = 1935
      Height = 420
      TabIndex = 84
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
    Begin TextBox TxtBookTime
      Left = 105
      Top = 720
      Width = 3210
      Height = 240
      TabIndex = 83
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
    Begin Line Line12
      BorderColor = &H404040&
      X1 = 0
      Y1 = 3735
      X2 = 5370
      Y2 = 3720
      BorderWidth = 2
    End
    Begin Line Line11
      BorderColor = &H404040&
      X1 = 0
      Y1 = 3195
      X2 = 5385
      Y2 = 3180
      BorderWidth = 2
    End
    Begin Line Line10
      BorderColor = &H404040&
      X1 = 0
      Y1 = 2685
      X2 = 5370
      Y2 = 2670
      BorderWidth = 2
    End
    Begin Line Line9
      BorderColor = &H404040&
      X1 = 0
      Y1 = 2160
      X2 = 5355
      Y2 = 2160
      BorderWidth = 2
    End
    Begin Line Line8
      BorderColor = &H404040&
      X1 = 0
      Y1 = 1620
      X2 = 5370
      Y2 = 1635
      BorderWidth = 2
    End
    Begin Line Line7
      BorderColor = &H404040&
      X1 = 0
      Y1 = 1110
      X2 = 5370
      Y2 = 1095
      BorderWidth = 2
    End
    Begin Label Label1
      Index = 13
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 3285
      Width = 3330
      Height = 360
      TabIndex = 106
      Alignment = 1 'Right Justify
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
      Index = 12
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 3810
      Width = 3330
      Height = 360
      TabIndex = 105
      Alignment = 1 'Right Justify
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
      Index = 11
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 2235
      Width = 3330
      Height = 360
      TabIndex = 100
      Alignment = 1 'Right Justify
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
      Index = 9
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 2760
      Width = 3330
      Height = 360
      TabIndex = 99
      Alignment = 1 'Right Justify
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
      Index = 8
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 1185
      Width = 3330
      Height = 360
      TabIndex = 94
      Alignment = 1 'Right Justify
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
      Index = 6
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 1710
      Width = 3330
      Height = 360
      TabIndex = 93
      Alignment = 1 'Right Justify
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
      Index = 5
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 135
      Width = 3330
      Height = 360
      TabIndex = 88
      Alignment = 1 'Right Justify
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
      Index = 3
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 660
      Width = 3330
      Height = 360
      TabIndex = 87
      Alignment = 1 'Right Justify
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
    Begin Line Line6
      BorderColor = &H404040&
      X1 = 0
      Y1 = 585
      X2 = 5355
      Y2 = 570
      BorderWidth = 2
    End
    Begin Shape Shape3
      BorderColor = &H404040&
      Left = 15
      Top = 30
      Width = 5370
      Height = 4275
      BorderWidth = 2
      FillColor = &HC0E0FF&
      FillStyle = 0
    End
  End
  Begin TextBox Txt
    Index = 4
    Left = 270
    Top = 9285
    Width = 2805
    Height = 240
    Visible = 0   'False
    TabIndex = 78
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin TextBox TxtAdvAmt
    Left = 4095
    Top = 9045
    Width = 1650
    Height = 240
    TabIndex = 76
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin CommandButton CmdAdvance
    Caption = "Advance"
    Left = 5835
    Top = 8955
    Width = 1350
    Height = 420
    TabIndex = 75
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
  Begin TextBox TxtDed
    Left = 1350
    Top = 9030
    Width = 1440
    Height = 240
    Visible = 0   'False
    TabIndex = 74
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin MSHFlexGrid FGrid
    Left = 75
    Top = 2100
    Width = 7470
    Height = 5175
    TabIndex = 73
  End
  Begin TextBox TxtDiscAmt
    Left = 4755
    Top = 7470
    Width = 990
    Height = 240
    TabIndex = 72
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtTaxAmt
    Left = 4755
    Top = 7995
    Width = 990
    Height = 240
    TabIndex = 70
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtTotal
    Left = 405
    Top = 7470
    Width = 1455
    Height = 240
    TabIndex = 68
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtRndOff
    Left = 405
    Top = 7995
    Width = 1455
    Height = 240
    TabIndex = 66
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin CommandButton CmdAddition
    Caption = "Addition"
    Left = 5835
    Top = 8430
    Width = 1350
    Height = 420
    TabIndex = 62
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
  Begin TextBox TxtAdd
    Left = 4095
    Top = 8520
    Width = 1650
    Height = 240
    TabIndex = 61
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin CommandButton Head
    Caption = "Exit"
    Index = 7
    Left = 7035
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 54
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":0
    DisabledPicture = "RsTouchScreenBookingEntry.frx":4E1
    Style = 1
  End
  Begin CommandButton Head
    Caption = "Cancel"
    Index = 6
    Left = 6030
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 53
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":91E
    DisabledPicture = "RsTouchScreenBookingEntry.frx":E6C
    Style = 1
  End
  Begin CommandButton Head
    Caption = "Save"
    Index = 5
    Left = 5025
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 52
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":12CB
    DisabledPicture = "RsTouchScreenBookingEntry.frx":1873
    Style = 1
  End
  Begin CommandButton Head
    Caption = "Print"
    Index = 4
    Left = 4020
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 50
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":1D2B
    DisabledPicture = "RsTouchScreenBookingEntry.frx":2223
    MaskColor = &H40&
    Style = 1
  End
  Begin CommandButton Head
    Caption = "Find"
    Index = 3
    Left = 3015
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 49
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":266C
    DisabledPicture = "RsTouchScreenBookingEntry.frx":2C90
    MaskColor = &H40&
    Style = 1
  End
  Begin CommandButton Head
    Caption = "Delete"
    Index = 2
    Left = 2010
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 48
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":3132
    DisabledPicture = "RsTouchScreenBookingEntry.frx":35F0
    Style = 1
  End
  Begin CommandButton Head
    Caption = "Edit"
    Index = 1
    Left = 1005
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 47
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":3A1E
    DisabledPicture = "RsTouchScreenBookingEntry.frx":3E15
    Style = 1
  End
  Begin Frame FrameQty
    BackColor = &H80000003&
    ForeColor = &H8000000A&
    Left = 12135
    Top = 2115
    Width = 3255
    Height = 6180
    TabIndex = 17
    BeginProperty Font
      Name = "Times New Roman"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin CommandButton CmdQty
      Caption = "OK"
      Index = 13
      Left = 2160
      Top = 5070
      Width = 1050
      Height = 1050
      TabIndex = 32
      BeginProperty Font
        Name = "Tahoma"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdQty
      Caption = "Exit"
      Index = 12
      Left = 1635
      Top = 870
      Width = 1575
      Height = 1050
      TabIndex = 31
      BeginProperty Font
        Name = "Tahoma"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdQty
      Caption = "Clear"
      Index = 11
      Left = 60
      Top = 870
      Width = 1575
      Height = 1050
      TabIndex = 30
      BeginProperty Font
        Name = "Tahoma"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdQty
      Caption = "."
      Index = 10
      Left = 1110
      Top = 5070
      Width = 1050
      Height = 1050
      TabIndex = 29
      BeginProperty Font
        Name = "Tahoma"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdQty
      Caption = "9"
      Index = 9
      Left = 2160
      Top = 1920
      Width = 1050
      Height = 1050
      TabIndex = 28
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
    Begin CommandButton CmdQty
      Caption = "8"
      Index = 8
      Left = 1110
      Top = 1920
      Width = 1050
      Height = 1050
      TabIndex = 27
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
    Begin CommandButton CmdQty
      Caption = "7"
      Index = 7
      Left = 60
      Top = 1920
      Width = 1050
      Height = 1050
      TabIndex = 26
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
    Begin CommandButton CmdQty
      Caption = "6"
      Index = 6
      Left = 2160
      Top = 2970
      Width = 1050
      Height = 1050
      TabIndex = 25
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
    Begin CommandButton CmdQty
      Caption = "5"
      Index = 5
      Left = 1110
      Top = 2970
      Width = 1050
      Height = 1050
      TabIndex = 24
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
    Begin CommandButton CmdQty
      Caption = "4"
      Index = 4
      Left = 60
      Top = 2970
      Width = 1050
      Height = 1050
      TabIndex = 23
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
    Begin CommandButton CmdQty
      Caption = "3"
      Index = 3
      Left = 2160
      Top = 4020
      Width = 1050
      Height = 1050
      TabIndex = 22
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
    Begin CommandButton CmdQty
      Caption = "2"
      Index = 2
      Left = 1110
      Top = 4020
      Width = 1050
      Height = 1050
      TabIndex = 21
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
    Begin TextBox TxtQty
      Left = 60
      Top = 435
      Width = 3135
      Height = 360
      TabIndex = 20
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 4
      Locked = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CommandButton CmdQty
      Caption = "1"
      Index = 1
      Left = 60
      Top = 4020
      Width = 1050
      Height = 1050
      TabIndex = 19
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
    Begin CommandButton CmdQty
      Caption = "0"
      Index = 0
      Left = 60
      Top = 5070
      Width = 1050
      Height = 1050
      TabIndex = 18
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
    Begin Label LblVtype
      BackColor = &H80000003&
      ForeColor = &HFFFF&
      Left = 60
      Top = 45
      Width = 3135
      Height = 360
      TabIndex = 34
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Tahoma"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblIndex
      Left = 825
      Top = 75
      Width = 1500
      Height = 300
      Visible = 0   'False
      TabIndex = 33
    End
  End
  Begin Frame FrameGrpItem
    BackColor = &H80000003&
    Left = 8700
    Top = 2100
    Width = 3885
    Height = 5175
    TabIndex = 41
    BorderStyle = 0 'None
    Begin SSPanel SSPMain
      Left = 75
      Top = 75
      Width = 1245
      Height = 1005
      TabIndex = 42
    End
    Begin SSPanel SSPGroup
      Index = 0
      Left = 75
      Top = 75
      Width = 1245
      Height = 1005
      Visible = 0   'False
      TabIndex = 43
    End
    Begin SSPanel SSPItem
      Index = 0
      Left = 75
      Top = 75
      Width = 1245
      Height = 1005
      Visible = 0   'False
      TabIndex = 44
    End
    Begin SSPanel SSPPrevious
      Left = 1320
      Top = 75
      Width = 1245
      Height = 1005
      TabIndex = 45
    End
    Begin SSPanel SSPNext
      Left = 2565
      Top = 75
      Width = 1245
      Height = 1005
      TabIndex = 46
    End
  End
  Begin Frame FrameFgrid
    Caption = "Frame1"
    BackColor = &H404040&
    Left = 7560
    Top = 2100
    Width = 1140
    Height = 6180
    TabIndex = 35
    BorderStyle = 0 'None
    Begin CommandButton CmFgrid
      Caption = "Remark"
      Index = 5
      Left = 75
      Top = 5115
      Width = 1000
      Height = 1000
      TabIndex = 79
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
    Begin CommandButton CmFgrid
      Caption = "Delete Item"
      Index = 4
      Left = 75
      Top = 4110
      Width = 1000
      Height = 1000
      TabIndex = 40
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
    Begin CommandButton CmFgrid
      Caption = "Change Rate"
      Index = 3
      Left = 75
      Top = 3105
      Width = 1000
      Height = 1000
      TabIndex = 39
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
    Begin CommandButton CmFgrid
      Caption = "Change Qty"
      Index = 2
      Left = 75
      Top = 2100
      Width = 1000
      Height = 1000
      TabIndex = 38
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
    Begin CommandButton CmFgrid
      Caption = "Down"
      Index = 1
      Left = 75
      Top = 1095
      Width = 1000
      Height = 1000
      TabIndex = 37
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchScreenBookingEntry.frx":41E2
      DisabledPicture = "RsTouchScreenBookingEntry.frx":4671
      Style = 1
    End
    Begin CommandButton CmFgrid
      Caption = "Up"
      Index = 0
      Left = 75
      Top = 90
      Width = 1000
      Height = 1000
      TabIndex = 36
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchScreenBookingEntry.frx":4A7F
      DisabledPicture = "RsTouchScreenBookingEntry.frx":4F1C
      Style = 1
    End
  End
  Begin TextBox Txt
    Index = 1
    Left = 1485
    Top = 1305
    Width = 1575
    Height = 240
    Enabled = 0   'False
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
    Left = 1485
    Top = 1560
    Width = 1575
    Height = 240
    Enabled = 0   'False
    TabIndex = 3
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
    Index = 0
    Left = 1485
    Top = 1050
    Width = 690
    Height = 240
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 30
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
    Left = 1485
    Top = 1815
    Width = 3060
    Height = 240
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 50
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
    Left = 270
    Top = 9555
    Width = 2805
    Height = 240
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 2820
    Width = 4680
    Height = 375
    Visible = 0   'False
    TabIndex = 5
  End
  Begin MaskEdBox TxtMask
    Index = 1
    Left = 3930
    Top = 1560
    Width = 615
    Height = 240
    TabIndex = 6
  End
  Begin MaskEdBox TxtMask
    Index = 0
    Left = 3930
    Top = 1305
    Width = 615
    Height = 240
    TabIndex = 7
  End
  Begin CommandButton CmdTax
    Caption = "Tax"
    Left = 5835
    Top = 7905
    Width = 1350
    Height = 420
    TabIndex = 58
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
  Begin CommandButton CmdDiscount
    Caption = "Discount"
    Left = 5835
    Top = 7380
    Width = 1350
    Height = 420
    TabIndex = 57
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
  Begin TextBox TxtDiscPer
    Left = 4095
    Top = 7470
    Width = 480
    Height = 240
    TabIndex = 56
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
  Begin TextBox TxtTaxPer
    Left = 4095
    Top = 7995
    Width = 480
    Height = 240
    TabIndex = 55
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
  Begin TextBox TxtNetAmt
    Left = 405
    Top = 8520
    Width = 1455
    Height = 240
    TabIndex = 64
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin CommandButton Head
    Caption = "Add"
    Index = 0
    Left = 0
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 51
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":5326
    DisabledPicture = "RsTouchScreenBookingEntry.frx":57E1
    Style = 1
  End
  Begin Label Label1
    Caption = "address2"
    Index = 17
    ForeColor = &H0&
    Left = 4635
    Top = 1815
    Width = 780
    Height = 240
    TabIndex = 111
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
    Caption = "Address1"
    Index = 16
    ForeColor = &H0&
    Left = 4635
    Top = 1560
    Width = 795
    Height = 240
    TabIndex = 109
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
    Caption = "Phone No"
    Index = 2
    ForeColor = &H0&
    Left = 4635
    Top = 1305
    Width = 810
    Height = 240
    TabIndex = 82
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
  Begin Line Line5
    BorderColor = &H404040&
    X1 = 3990
    Y1 = 8910
    X2 = 7245
    Y2 = 8910
    BorderWidth = 2
  End
  Begin Label Label1
    Index = 18
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 4035
    Top = 8985
    Width = 1770
    Height = 360
    TabIndex = 77
    Alignment = 1 'Right Justify
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
  Begin Label LblPer
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 4575
    Top = 8010
    Width = 195
    Height = 195
    TabIndex = 71
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
  Begin Label LblPer
    Caption = "%"
    Index = 0
    ForeColor = &H0&
    Left = 4575
    Top = 7485
    Width = 195
    Height = 195
    TabIndex = 9
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
  Begin Label Label1
    Caption = "             Total        "
    Index = 26
    BackColor = &H80FF&
    ForeColor = &HFFFFFF&
    Left = 315
    Top = 7410
    Width = 3030
    Height = 360
    TabIndex = 69
    Alignment = 1 'Right Justify
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
    Caption = "           Round Off    "
    Index = 25
    BackColor = &H80FF&
    ForeColor = &HFFFFFF&
    Left = 315
    Top = 7935
    Width = 3030
    Height = 360
    TabIndex = 67
    Alignment = 1 'Right Justify
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
    Index = 21
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 4035
    Top = 8460
    Width = 1770
    Height = 360
    TabIndex = 63
    Alignment = 1 'Right Justify
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
    Caption = "Delivery Date"
    Index = 10
    ForeColor = &H0&
    Left = 60
    Top = 1560
    Width = 1125
    Height = 240
    TabIndex = 16
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
    Caption = "Booking Date"
    Index = 7
    ForeColor = &H0&
    Left = 60
    Top = 1305
    Width = 1110
    Height = 240
    TabIndex = 15
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
    Caption = "Booking No."
    Index = 4
    ForeColor = &H0&
    Left = 60
    Top = 1050
    Width = 1005
    Height = 240
    TabIndex = 14
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
    Caption = "Time"
    Index = 14
    ForeColor = &H0&
    Left = 3420
    Top = 1560
    Width = 435
    Height = 240
    TabIndex = 13
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
    ForeColor = &H0&
    Left = 3420
    Top = 1305
    Width = 495
    Height = 240
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
  Begin Label Label1
    Caption = "Customer Name"
    Index = 0
    ForeColor = &H0&
    Left = 60
    Top = 1800
    Width = 1380
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
  Begin Label Label1
    Caption = "Deduction :"
    Index = 15
    ForeColor = &H0&
    Left = 315
    Top = 9000
    Width = 960
    Height = 210
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
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 11130
    Top = 255
    Width = 315
    Height = 270
    TabIndex = 8
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
  Begin Line Line2
    BorderColor = &H404040&
    X1 = 3975
    Y1 = 8385
    X2 = 7230
    Y2 = 8385
    BorderWidth = 2
  End
  Begin Line Line1
    BorderColor = &H404040&
    X1 = 3990
    Y1 = 7860
    X2 = 7230
    Y2 = 7845
    BorderWidth = 2
  End
  Begin Label Label1
    Index = 23
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 4035
    Top = 7410
    Width = 1770
    Height = 360
    TabIndex = 60
    Alignment = 1 'Right Justify
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
    Index = 22
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 4035
    Top = 7935
    Width = 1770
    Height = 360
    TabIndex = 59
    Alignment = 1 'Right Justify
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
  Begin Shape Shape1
    BorderColor = &H404040&
    Left = 3990
    Top = 7335
    Width = 3270
    Height = 2115
    BorderWidth = 2
    FillColor = &HC0E0FF&
    FillStyle = 0
  End
  Begin Line Line4
    BorderColor = &H404040&
    X1 = 270
    Y1 = 8385
    X2 = 3330
    Y2 = 8385
    BorderWidth = 2
  End
  Begin Line Line3
    BorderColor = &H404040&
    X1 = 285
    Y1 = 7860
    X2 = 3345
    Y2 = 7860
    BorderWidth = 2
  End
  Begin Label Label1
    Caption = "           Net Amount  "
    Index = 24
    BackColor = &H80FF&
    ForeColor = &HFFFFFF&
    Left = 315
    Top = 8460
    Width = 3030
    Height = 360
    TabIndex = 65
    Alignment = 1 'Right Justify
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
  Begin Shape Shape2
    BorderColor = &H404040&
    Left = 300
    Top = 7335
    Width = 3075
    Height = 1575
    BorderWidth = 2
    FillColor = &HC0E0FF&
    FillStyle = 0
  End
End

Attribute VB_Name = "RsTouchScreenBookingEntry"

Private global_124 As Long

Private Sub cmdCancel_Click() 'E1C584
  'Data Table: 57AAE0
  loc_E1C578: Me.FrCustInfo.Visible = False
  loc_E1C580: Exit Sub
End Sub

Private Sub CmdDiscount_Click() 'F2D9B4
  'Data Table: 57AAE0
  loc_F2D8A9: Me.LblIndex.Caption = vbNullString
  loc_F2D8BE: Me.LblIndex.Tag = vbNullString
  loc_F2D8D3: Me.LblVtype.Caption = "Discount"
  loc_F2D8E8: Me.LblVtype.Tag = vbNullString
  loc_F2D8FD: Me.TxtQty.Text = vbNullString
  loc_F2D912: Me.TxtQty.Tag = vbNullString
  loc_F2D939: Me.FrameQty.Left = Me.FrameFgrid.Left
  loc_F2D964: Me.FrameQty.Top = Me.FrameFgrid.Top
  loc_F2D97C: Me.FrameQty.Visible = True
  loc_F2D994: Me.FrameQty.ZOrder 0
  loc_F2D9A8: Me.FrameGrpItem.Enabled = False
  loc_F2D9B0: Exit Sub
  loc_F2D9B1:  = 
End Sub

Private Sub CmdTax_Click() 'F2EAC4
  'Data Table: 57AAE0
  loc_F2E9B9: Me.LblIndex.Caption = vbNullString
  loc_F2E9CE: Me.LblIndex.Tag = vbNullString
  loc_F2E9E3: Me.LblVtype.Caption = "Tax"
  loc_F2E9F8: Me.LblVtype.Tag = vbNullString
  loc_F2EA0D: Me.TxtQty.Text = vbNullString
  loc_F2EA22: Me.TxtQty.Tag = vbNullString
  loc_F2EA49: Me.FrameQty.Left = Me.FrameFgrid.Left
  loc_F2EA74: Me.FrameQty.Top = Me.FrameFgrid.Top
  loc_F2EA8C: Me.FrameQty.Visible = True
  loc_F2EAA4: Me.FrameQty.ZOrder 0
  loc_F2EAB8: Me.FrameGrpItem.Enabled = False
  loc_F2EAC0: Exit Sub
End Sub

Private Sub CmdAddition_Click() 'F2D084
  'Data Table: 57AAE0
  loc_F2CF79: Me.LblIndex.Caption = vbNullString
  loc_F2CF8E: Me.LblIndex.Tag = vbNullString
  loc_F2CFA3: Me.LblVtype.Caption = "Addition"
  loc_F2CFB8: Me.LblVtype.Tag = vbNullString
  loc_F2CFCD: Me.TxtQty.Text = vbNullString
  loc_F2CFE2: Me.TxtQty.Tag = vbNullString
  loc_F2D009: Me.FrameQty.Left = Me.FrameFgrid.Left
  loc_F2D034: Me.FrameQty.Top = Me.FrameFgrid.Top
  loc_F2D04C: Me.FrameQty.Visible = True
  loc_F2D064: Me.FrameQty.ZOrder 0
  loc_F2D078: Me.FrameGrpItem.Enabled = False
  loc_F2D080: Exit Sub
  loc_F2D081:  = 
End Sub

Private Sub CmdAdvance_Click() 'F2D324
  'Data Table: 57AAE0
  loc_F2D219: Me.LblIndex.Caption = vbNullString
  loc_F2D22E: Me.LblIndex.Tag = vbNullString
  loc_F2D243: Me.LblVtype.Caption = "Advance"
  loc_F2D258: Me.LblVtype.Tag = vbNullString
  loc_F2D26D: Me.TxtQty.Text = vbNullString
  loc_F2D282: Me.TxtQty.Tag = vbNullString
  loc_F2D2A9: Me.FrameQty.Left = Me.FrameFgrid.Left
  loc_F2D2D4: Me.FrameQty.Top = Me.FrameFgrid.Top
  loc_F2D2EC: Me.FrameQty.Visible = True
  loc_F2D304: Me.FrameQty.ZOrder 0
  loc_F2D318: Me.FrameGrpItem.Enabled = False
  loc_F2D320: Exit Sub
  loc_F2D321: StAryRecMove
End Sub

Private Sub CmdBookDetails_Click() '11A5CB8
  'Data Table: 57AAE0
  Dim var_88 As Frame
  Dim var_90 As Variant
  loc_11A58A7: If (Me.FrCustInfo.Visible = &HFF) Then
  loc_11A58AA:   Exit Sub
  loc_11A58AB: End If
  loc_11A58B9: Set var_88 = Me.Txt
  loc_11A58BF: Call 0.Method_CmdBookDetails_Click0 (CInt(1), var_90)
  loc_11A58D9: Me.TxtBookDate.Text = var_90.Text
  loc_11A58F5: Set var_88 = Me.TxtMask
  loc_11A58FB: Call 0.Method_CmdBookDetails_Click0 (CInt(0))
  loc_11A5918: Me.TxtBookTime.Text = CStr(var_90.defaultText)
  loc_11A593A: Set var_88 = Me.Txt
  loc_11A5940: Call 0.Method_CmdBookDetails_Click0 (CInt(2), var_90)
  loc_11A595A: Me.TxtDelDate.Text = var_90.Text
  loc_11A5976: Set var_88 = Me.TxtMask
  loc_11A597C: Call 0.Method_CmdBookDetails_Click0 (CInt(1), var_90)
  loc_11A5999: Me.TxtDelTime.Text = CStr(var_90.defaultText)
  loc_11A59BB: Set var_88 = Me.Txt
  loc_11A59C1: Call 0.Method_CmdBookDetails_Click0 (CInt(3), var_90)
  loc_11A59DB: Me.TxtCustName.Text = var_90.Text
  loc_11A59FA: Set var_88 = Me.Txt
  loc_11A5A00: Call 0.Method_CmdBookDetails_Click0 (CInt(6), var_90)
  loc_11A5A1A: Me.TxtPhone.Text = var_90.Text
  loc_11A5A39: Set var_88 = Me.Txt
  loc_11A5A3F: Call 0.Method_CmdBookDetails_Click0 (CInt(7), var_90)
  loc_11A5A59: Me.TxtAddr1.Text = var_90.Text
  loc_11A5A78: Set var_88 = Me.Txt
  loc_11A5A7E: Call 0.Method_CmdBookDetails_Click0 (CInt(8), var_90)
  loc_11A5A98: Me.TxtAddr2.Text = var_90.Text
  loc_11A5AB7: Set var_88 = Me.Txt
  loc_11A5ABD: Call 0.Method_CmdBookDetails_Click0 (CInt(1), var_90)
  loc_11A5AD7: Me.TxtBookDate.MaxLength = var_90.MaxLength
  loc_11A5AF0: Set var_88 = Me.TxtMask
  loc_11A5AF6: Call 0.Method_CmdBookDetails_Click0 (CInt(0), var_90)
  loc_11A5B11: Me.TxtBookTime.MaxLength = CLng(CInt(var_90.MaxLength))
  loc_11A5B30: Set var_88 = Me.Txt
  loc_11A5B36: Call 0.Method_CmdBookDetails_Click0 (CInt(2), var_90)
  loc_11A5B50: Me.TxtDelDate.MaxLength = var_90.MaxLength
  loc_11A5B69: Set var_88 = Me.TxtMask
  loc_11A5B6F: Call 0.Method_CmdBookDetails_Click0 (CInt(1), var_90)
  loc_11A5B8A: Me.TxtDelTime.MaxLength = CLng(CInt(var_90.MaxLength))
  loc_11A5BA9: Set var_88 = Me.Txt
  loc_11A5BAF: Call 0.Method_CmdBookDetails_Click0 (CInt(3), var_90)
  loc_11A5BC9: Me.TxtCustName.MaxLength = var_90.MaxLength
  loc_11A5BE5: Set var_88 = Me.Txt
  loc_11A5BEB: Call 0.Method_CmdBookDetails_Click0 (CInt(6), var_90)
  loc_11A5C05: Me.TxtPhone.MaxLength = var_90.MaxLength
  loc_11A5C21: Set var_88 = Me.Txt
  loc_11A5C27: Call 0.Method_CmdBookDetails_Click0 (CInt(7), var_90)
  loc_11A5C41: Me.TxtAddr1.MaxLength = var_90.MaxLength
  loc_11A5C5D: Set var_88 = Me.Txt
  loc_11A5C63: Call 0.Method_CmdBookDetails_Click0 (CInt(8), var_90)
  loc_11A5C7D: Me.TxtAddr2.MaxLength = var_90.MaxLength
  loc_11A5C9B: Me.FrCustInfo.ZOrder 0
  loc_11A5CAF: Me.FrCustInfo.Visible = True
  loc_11A5CB7: Exit Sub
End Sub

Private Sub Head_Click(Index As Integer) 'EAE238
  'Data Table: 57AAE0
  Dim var_86 As Integer
  loc_EAE19F: var_86 = Index
  loc_EAE1AA: If (var_86 = CInt(0)) Then
  loc_EAE1AD:   Call TopCtrl1_UnknownEvent_11()
  loc_EAE1B5: Else
  loc_EAE1BD:   If (var_86 = CInt(1)) Then
  loc_EAE1C0:     Call TopCtrl1_UnknownEvent_12()
  loc_EAE1C8:   Else
  loc_EAE1D0:     If (var_86 = CInt(2)) Then
  loc_EAE1D3:       Call TopCtrl1_UnknownEvent_13()
  loc_EAE1DB:     Else
  loc_EAE1E3:       If (var_86 = CInt(3)) Then
  loc_EAE1E6:         Call TopCtrl1_UnknownEvent_1B()
  loc_EAE1EE:       Else
  loc_EAE1F6:         If (var_86 = CInt(4)) Then
  loc_EAE1F9:           Call TopCtrl1_UnknownEvent_1C()
  loc_EAE201:         Else
  loc_EAE209:           If (var_86 = CInt(5)) Then
  loc_EAE20C:             Call TopCtrl1_UnknownEvent_19()
  loc_EAE214:           Else
  loc_EAE21C:             If (var_86 = CInt(6)) Then
  loc_EAE21F:               Call TopCtrl1_UnknownEvent_1A()
  loc_EAE227:             Else
  loc_EAE22F:               If (var_86 = CInt(7)) Then
  loc_EAE232:                 Call TopCtrl1_UnknownEvent_14()
  loc_EAE237:               End If
  loc_EAE237:             End If
  loc_EAE237:           End If
  loc_EAE237:         End If
  loc_EAE237:       End If
  loc_EAE237:     End If
  loc_EAE237:   End If
  loc_EAE237: End If
  loc_EAE237: Exit Sub
End Sub

Private Sub Form_Load() '120B090
  'Data Table: 57AAE0
  Dim var_8C As Variant
  Dim var_9C As String
  Dim var_A0 As String
  Dim unk_57AAE5 As Connection15
  Dim Me As Variant
  Dim var_C0 As Variant
  Dim var_F4 As Integer
  Dim var_C4 As Variant
  Dim var_E0 As Variant
  Dim var_90 As String
  Dim var_FC As String
  loc_120ABEA: global_128 = "ORDER"
  loc_120ABFA: Me.TxtNetAmt.Locked = True
  loc_120AC0E: Me.TxtTaxAmt.Locked = True
  loc_120AC1C: Set var_8C = Me.TxtDiscAmt
  loc_120AC22: var_8C.Locked = True
  loc_120AC5B: var_A0 = "Select Name,Code from ItemGrp Where RestCode='" & pRestCode & "' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_120AC64: unk_57AAE5.Execute var_A0, var_C0, -1
  loc_120ACBA: var_9C = "Select I.Code,I.Name as Name,I.ItemGroup From ItemMast I where Restcode='" & pRestCode & "' And (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_120ACC1: var_A0 = var_9C & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999   Order by Name"
  loc_120ACCA: unk_57AAE5.Execute var_A0, var_C0, -1
  loc_120ACDB: Set global_80 = var_8C
  loc_120ACFF: var_C8 = Me.RecordCount
  loc_120AD07: var_C0 = CVar(var_C8) 'Long
  loc_120AD0E: Proc_6_39_E7D3A0(var_D8, var_C0)
  loc_120AD38: Set var_C4 = Me.SSPItem
  loc_120AD5B: Call Proc_257_58_122CB10(Me.SSPGroup, CInt(4), Me.SSPGroup, CInt(5), var_C4)
  loc_120AD7E: var_F4 = 0
  loc_120ADB3: unk_57AAE5.Execute "Select Name From Depart Where Code ='" & pRestCode & "'", var_C0, -1
  loc_120ADBB: var_8C = var_8C.Fields
  loc_120ADC3: var_F4 = var_C4.Item(var_C4)
  loc_120ADCB: var_E0 = var_E0.Value
  loc_120ADE1: Me.LblRest.Caption = CStr(var_D8)
  loc_120AE0F: Me.FrameQty.Visible = False
  loc_120AE20: Set var_8C = Me.SSPGroup
  loc_120AE26: Call 0.Method_Form_Load0 (0, var_C4, var_D8, CInt(var_C0))
  loc_120AE2E: var_C0 = var_C4.Width
  loc_120AE50: Me.FrameGrpItem.Width = ((CDbl(4) * CDbl(var_C0)) + CDbl(150))
  loc_120AE6A: Set var_8C = Me.SSPGroup
  loc_120AE70: Call 0.Method_Form_Load0 (0, var_C4, var_C0, var_C0)
  loc_120AE78: var_C0 = var_C4.Height
  loc_120AE9F: Me.FrameGrpItem.Height = ((CDbl((CInt(5) + 1)) * CDbl(var_C0)) + CDbl(150))
  loc_120AEB6: Call 0.Method_arg_60 (var_C8, var_C0, CInt(var_D8))
  loc_120AEC2: Set var_8C = Me.FrameGrpItem
  loc_120AEC8: var_8C.BackColor = var_C8
  loc_120AED6: Call 0.Method_arg_60 (var_C8, var_8C)
  loc_120AEE8: Me.FrCustInfo.BackColor = var_C8
  loc_120AEF6: var_F4 = 0
  loc_120AF2B: unk_57AAE5.Execute "Select KOtYn from depart where Code='" & pRestCode & "'", var_C0, -1
  loc_120AF33: var_8C = var_8C.Fields
  loc_120AF3B: var_F4 = var_C4.Item(var_C4)
  loc_120AF43: var_E0 = var_E0.Value
  loc_120AF56: global_88 = Proc_6_38_E69628(var_D8, var_D8)
  loc_120AF91: Me.Recordset15.CursorLocation = 3
  loc_120AFBC: var_90 = "Select P.Docid as SearchCode,P.DocID,P.Site_Code,P.LogSite_Code From PackingOrder P Inner Join Voucher_Type V On (P.VType= V.V_Type And P.LogSite_Code=V.LogSite_Code) Where v.Site_Code='" & MemVar_1F95070
  loc_120AFDF: var_FC = var_90 & "' and V.LogSite_Code='" & MemVar_1F95078 & "' and V.Ncat= 'ORDER' And P.Site_Code='" & MemVar_1F95070 & "' and P.RestCode='"
  loc_120AFF7: Me.Open CVar(var_FC & pRestCode & "' Order by Docid "), CVar(MemVar_1F95044), 3
  loc_120B035: Call Proc_257_66_EF24C4(Proc_5_1_100EC1C("INI", Me, New), 1)
  loc_120B040: Call Proc_257_57_1287E64(-1)
  loc_120B055: Set var_8C = Me
  loc_120B05B: Proc_6_23_DFC5B8(var_8C, 0)
  loc_120B06C: Call 0.Method_arg_160 (var_8C, 0)
  loc_120B07A: Call 0.Method_arg_164 (var_8C)
  loc_120B082: Call Proc_257_64_120371C(var_8C)
  loc_120B087: Call Proc_257_68_158A89C()
  loc_120B08C: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2541C
  'Data Table: 57AAE0
  loc_E25401: If (global_108 = &HFF) Then
  loc_E25411:   Me.Global.Unload Me
  loc_E25419: End If
  loc_E25419: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3DC88
  'Data Table: 57AAE0
  loc_E3DC5C: On Error Goto loc_E3DC80
  loc_E3DC77: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E3DC7F: Exit Sub
  loc_E3DC80: ' Referenced from: E3DC5C
  loc_E3DC80: Proc_6_60_E63754(Shift)
  loc_E3DC85: Exit Sub
End Sub

Private Sub CmFgrid_Click(Index As Integer) '135BCA0
  'Data Table: 57AAE0
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_C6 As Integer
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As String
  Dim var_104 As MSHFlexGrid
  Dim var_124 As Variant
  loc_135B48E: Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_135B4B6: var_B0 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_135B4C5: Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_135B4E1: Me.LblIndex.Caption = vbNullString
  loc_135B4F6: Me.LblIndex.Tag = vbNullString
  loc_135B50B: Me.LblVtype.Caption = vbNullString
  loc_135B520: Me.LblVtype.Tag = vbNullString
  loc_135B535: Me.TxtQty.Text = vbNullString
  loc_135B54A: Me.TxtQty.Tag = vbNullString
  loc_135B555: var_C6 = Index
  loc_135B560: If (var_C6 = CInt(0)) Then
  loc_135B582:   If (CLng(Me.FGrid.Row) > 1) Then
  loc_135B59E:     var_B0 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_135B5AD:     Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_135B5D5:     var_B0 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_135B5E4:     Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_135B615:     Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_135B624:   End If
  loc_135B627: Else
  loc_135B62F:   If (var_C6 = CInt(1)) Then
  loc_135B66D:     If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_135B689:       var_B0 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_135B698:       Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_135B6C0:       var_B0 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_135B6CF:       Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_135B700:       Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_135B70F:     End If
  loc_135B712:   Else
  loc_135B71A:     If (var_C6 = CInt(2)) Then
  loc_135B730:       var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135B738:       var_E8 = CVar(CLng(1)) 'Long
  loc_135B76B:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_135B76E:         Exit Sub
  loc_135B76F:       End If
  loc_135B782:       var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135B78A:       var_E8 = CVar(CLng(0)) 'Long
  loc_135B7BD:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_135B7CC:         Me.FrameQty.Visible = False
  loc_135B7D4:         Exit Sub
  loc_135B7D5:       End If
  loc_135B7F4:       Me.FrameQty.Left = Me.FrameFgrid.Left
  loc_135B81F:       Me.FrameQty.Top = Me.FrameFgrid.Top
  loc_135B837:       Me.FrameQty.Visible = True
  loc_135B84F:       Me.FrameQty.ZOrder 0
  loc_135B864:       Me.TxtQty.Text = vbNullString
  loc_135B87D:       Me.TxtQty.Tag = CStr(2)
  loc_135B895:       Me.LblVtype.Caption = "Qty"
  loc_135B8A9:       Me.FrameGrpItem.Enabled = False
  loc_135B8B4:     Else
  loc_135B8BC:       If (var_C6 = CInt(3)) Then
  loc_135B8D2:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135B8DA:         var_E8 = CVar(CLng(1)) 'Long
  loc_135B90D:         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_135B910:           Exit Sub
  loc_135B911:         End If
  loc_135B924:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135B92C:         var_E8 = CVar(CLng(0)) 'Long
  loc_135B95F:         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_135B96E:           Me.FrameQty.Visible = False
  loc_135B976:           Exit Sub
  loc_135B977:         End If
  loc_135B996:         Me.FrameQty.Left = Me.FrameFgrid.Left
  loc_135B9C1:         Me.FrameQty.Top = Me.FrameFgrid.Top
  loc_135B9D9:         Me.FrameQty.Visible = True
  loc_135B9F1:         Me.FrameQty.ZOrder 0
  loc_135BA06:         Me.TxtQty.Text = vbNullString
  loc_135BA1F:         Me.TxtQty.Tag = CStr(3)
  loc_135BA37:         Me.LblVtype.Caption = "Rate"
  loc_135BA4B:         Me.FrameGrpItem.Enabled = False
  loc_135BA56:       Else
  loc_135BA5E:         If (var_C6 = CInt(4)) Then
  loc_135BA65:           Set var_104 = Me.FGrid
  loc_135BA74:           var_B0 = CVar(CLng(var_104.Row)) 'Long
  loc_135BA7C:           var_E8 = CVar(CLng(0)) 'Long
  loc_135BA8F:           var_FC = CStr(var_104.TextMatrix))
  loc_135BAA3:           var_124 = CVar(CLng(var_104.Row)) 'Long
  loc_135BAD9:           If (CVar(CLng(1)) And (CStr(var_104.TextMatrix)) <> vbNullString)) Then
  loc_135BAE8:             var_B0 = CVar(CLng(var_104.RowSel)) 'Long
  loc_135BB25:             For var_16C = CInt(CLng(var_104.RowSel)) To CInt((CLng(var_104.Rows) - 1)):         var_8A = var_16C 'Integer
  loc_135BB2F:               var_B0 = CVar(CLng(var_8A)) 'Long
  loc_135BB37:               var_E8 = CVar(CLng(0)) 'Long
  loc_135BB41:               var_A0 = CVar(CStr(var_8A)) 'String
  loc_135BB48:               LateIdCallSt
  loc_135BB56:             Next var_16C 'Integer
  loc_135BB5B:           End If
  loc_135BB5D:           Set var_104 = Nothing 
  loc_135BB64:           Call Proc_257_70_F83054(var_A0)
  loc_135BB6F:         Else
  loc_135BB77:           If (var_C6 = CInt(5)) Then
  loc_135BB8D:             var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135BB95:             var_E8 = CVar(CLng(1)) 'Long
  loc_135BBC8:             If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_135BBCB:               Exit Sub
  loc_135BBCC:             End If
  loc_135BBD6:             Set var_88 = New RsTouchScreenKeyBoard
  loc_135BBDF:             var_B0 = CVar(Me) 'Address
  loc_135BBE7:             var_88.ParentForm = var_B0
  loc_135BBEF:             Set var_90 = var_B0(var_E8)
  loc_135BBFE:             var_B0 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_135BC06:             var_E8 = CVar(CLng(4)) 'Long
  loc_135BC27:             var_88.TxtKeyBoard = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_135BC4B:             var_88.Show 1, var_C0
  loc_135BC63:             var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135BC6B:             var_E8 = CVar(CLng(4)) 'Long
  loc_135BC7B:             var_D8 = CVar(TxtKeyBoard) 'String
  loc_135BC83:             Set var_C4 = Me.FGrid
  loc_135BC89:             LateIdCallSt
  loc_135BC9F:           End If
  loc_135BC9F:         End If
  loc_135BC9F:       End If
  loc_135BC9F:     End If
  loc_135BC9F:   End If
  loc_135BC9F: End If
  loc_135BC9F: Exit Sub
End Sub

Private Sub CmdBookDate_Click() 'F09DAC
  'Data Table: 57AAE0
  Dim var_BC As Variant
  Dim var_88 As TextBox
  loc_F09CDC: Set global_152 = New RsTouchScreenKeyBoard
  loc_F09CF5: Me.ParentForm = CVar(Me)
  loc_F09D05: Me.InputType = "Date"
  loc_F09D26: Set var_88 = (var_C0)
  loc_F09D2C:  = Me.TextBox.MaxLength
  loc_F09D3F: var_BC = CVar(())
  loc_F09D44: var_BC.MaxLength = CVar(var_C0)
  loc_F09D61: var_BC.Show 1, var_AC
  loc_F09D87: Me.TxtBookDate.Text = Proc_6_34_14EEAAC(TxtKeyBoard)
  loc_F09DA1: Set global_152 = Nothing
  loc_F09DA8: Exit Sub
End Sub

Private Sub CmdBookTime_Click() 'F2A43C
  'Data Table: 57AAE0
  Dim var_BC As Variant
  Dim var_88 As TextBox
  loc_F2A34C: Set global_152 = New RsTouchScreenKeyBoard
  loc_F2A365: Me.ParentForm = CVar(Me)
  loc_F2A375: Me.InputType = "Time"
  loc_F2A396: Set var_88 = (var_C0)
  loc_F2A39C:  = Me.TextBox.MaxLength
  loc_F2A3AF: var_BC = CVar(())
  loc_F2A3B4: var_BC.MaxLength = CVar(var_C0)
  loc_F2A3D1: var_BC.Show 1, var_AC
  loc_F2A412: Me.TxtBookTime.Text = CStr(Format(CVar(TxtKeyBoard), "hh:mm"))
  loc_F2A431: Set global_152 = Nothing
  loc_F2A438: Exit Sub
End Sub

Private Sub CmdDelDate_Click() 'F0946C
  'Data Table: 57AAE0
  Dim var_BC As Variant
  Dim var_88 As TextBox
  loc_F0939C: Set global_152 = New RsTouchScreenKeyBoard
  loc_F093B5: Me.ParentForm = CVar(Me)
  loc_F093C5: Me.InputType = "Date"
  loc_F093E6: Set var_88 = (var_C0)
  loc_F093EC:  = Me.TextBox.MaxLength
  loc_F093FF: var_BC = CVar(())
  loc_F09404: var_BC.MaxLength = CVar(var_C0)
  loc_F09421: var_BC.Show 1, var_AC
  loc_F09447: Me.TxtDelDate.Text = Proc_6_34_14EEAAC(TxtKeyBoard)
  loc_F09461: Set global_152 = Nothing
  loc_F09468: Exit Sub
End Sub

Private Sub CmdDelTime_Click() 'F2AE9C
  'Data Table: 57AAE0
  Dim var_BC As Variant
  Dim var_88 As TextBox
  loc_F2ADAC: Set global_152 = New RsTouchScreenKeyBoard
  loc_F2ADC5: Me.ParentForm = CVar(Me)
  loc_F2ADD5: Me.InputType = "Time"
  loc_F2ADF6: Set var_88 = (var_C0)
  loc_F2ADFC:  = Me.TextBox.MaxLength
  loc_F2AE0F: var_BC = CVar(())
  loc_F2AE14: var_BC.MaxLength = CVar(var_C0)
  loc_F2AE31: var_BC.Show 1, var_AC
  loc_F2AE72: Me.TxtDelTime.Text = CStr(Format(CVar(TxtKeyBoard), "hh:mm"))
  loc_F2AE91: Set global_152 = Nothing
  loc_F2AE98: Exit Sub
End Sub

Private Sub CmdPhone_Click() '10529CC
  'Data Table: 57AAE0
  Dim var_C0 As Variant
  Dim var_8C As Variant
  Dim unk_57AAE5 As Connection15
  Dim var_88 As Recordset15
  loc_1052778: Set global_152 = New RsTouchScreenKeyBoard
  loc_1052791: Me.ParentForm = CVar(Me)
  loc_10527A1: Me.InputType = "Numeric"
  loc_10527C2: Set var_8C = (var_C4)
  loc_10527C8:  = Me.TextBox.MaxLength
  loc_10527DB: var_C0 = CVar(())
  loc_10527E0: var_C0.MaxLength = CVar(var_C4)
  loc_10527FD: var_C0.Show 1, var_B0
  loc_1052817: Me.TxtPhone.Text = TxtKeyBoard
  loc_1052858: unk_57AAE5.Execute "Select CustName,Addr1,Addr2 from PackingOrder Where PhoneNo='" & Me.TxtPhone.Text & "'", var_C0, -1
  loc_1052863: Set var_88 = var_90
  loc_105288D: If (var_88.RecordCount > 0) Then
  loc_1052893:   var_88.MoveLast
  loc_10528CD:   Me.TxtCustName.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CustName")))
  loc_1052914:   Me.TxtAddr1.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Addr1")))
  loc_105295B:   Me.TxtAddr2.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Addr2")))
  loc_1052970: Else
  loc_105297D:   Me.TxtCustName.Text = vbNullString
  loc_1052992:   Me.TxtAddr1.Text = vbNullString
  loc_10529A7:   Me.TxtAddr2.Text = vbNullString
  loc_10529AF: End If
  loc_10529B4: Set var_88 = Nothing
  loc_10529C2: Set global_152 = Nothing
  loc_10529C9: Exit Sub
End Sub

Public Sub SSPItem_UnknownEvent_9(Index As Integer) '1258750
  'Data Table: 57AAE0
  Dim var_94 As String
  Dim var_9C As String
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim unk_57AAE5 As Connection15
  Dim var_F0 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_8C As Recordset15
  Dim var_A4 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_184 As TextBox
  Dim var_150 As Variant
  Dim var_19C As Variant
  Dim var_180 As Variant
  Dim var_1FC As Variant
  Dim var_98 As String
  loc_125823C: var_94 = "Select I.Code,I.Name as Name,I.Unit,I.SaleRate as Rate,I.ConvRatio,I.DispCode From ItemMast I Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_1258243: var_9C = var_94 & "' or I.LOGSITE_CODE='HO') and (I.TYPE='Raw Material' OR I.TYPE='Store Item' OR I.TYPE='Finish' OR I.DirectSale='Y' OR I.Type='Consumables')  and I.Restcode='"
  loc_1258249: var_98 = pRestCode
  loc_1258266: Set var_A4 = Me.SSPItem
  loc_125826C: Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_A8, var_9C & var_98 & "' And I.Code='")
  loc_1258290: unk_57AAE5.Execute var_E8 & CStr(var_A8.Tag) & "' And I.DispCode <>9999 Order by I.Name ", -1, var_EC
  loc_125829B: Set var_8C = var_EC
  loc_12582C5: Set var_F0 = Me.FGrid
  loc_12582DA: var_D8 = CVar((CLng(var_F0.Rows) - 1)) 'Long
  loc_12582E2: var_110 = CVar(CLng(0)) 'Long
  loc_12582FB: var_130 = CVar(CStr((CLng(var_F0.Rows) - 1))) 'String
  loc_1258302: LateIdCallSt
  loc_1258325: var_100 = CVar((CLng(var_F0.Rows) - 1)) 'Long
  loc_125832D: var_120 = CVar(CLng(1)) 'Long
  loc_125835D: var_130 = CVar(CStr(var_8C.Fields.Item("Code").Value)) 'String
  loc_1258364: LateIdCallSt
  loc_125838E: var_100 = CVar((CLng(var_F0.Rows) - 1)) 'Long
  loc_1258396: var_120 = CVar(CLng(2)) 'Long
  loc_12583C6: var_130 = CVar(CStr(var_8C.Fields.Item("DispCode").Value)) 'String
  loc_12583CD: LateIdCallSt
  loc_12583F7: var_100 = CVar((CLng(var_F0.Rows) - 1)) 'Long
  loc_12583FF: var_120 = CVar(CLng(3)) 'Long
  loc_125842F: var_130 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1258436: LateIdCallSt
  loc_1258460: var_D8 = CVar((CLng(var_F0.Rows) - 1)) 'Long
  loc_1258468: var_110 = CVar(CLng(4)) 'Long
  loc_125846D: var_140 = vbNullString
  loc_1258476: LateIdCallSt
  loc_1258493: var_110 = CVar((CLng(var_F0.Rows) - 1)) 'Long
  loc_125849B: var_140 = CVar(CLng(5)) 'Long
  loc_12584D3: LateIdCallSt
  loc_125850A: var_B8 = var_8C.Fields.Item("Code").Value
  loc_125851D: Set var_EC = Me.Txt
  loc_1258523: Call 0.Method_SSPItem_UnknownEvent_90 (CInt(1), var_184, var_98, var_F0, CVar(CStr(Format("1", "0.000"))), 1, 1)
  loc_125852B: var_140 = var_184.Text
  loc_1258542: Call Proc_257_56_F07E78(CStr(var_B8), var_98, var_18C, var_110, var_F0)
  loc_1258559: var_120 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_1258561: var_150 = CVar(CLng(6)) 'Long
  loc_125857E: var_E8 = CVar(var_18C) 'Double
  loc_1258585: var_160 = Format(var_E8, "0.00")
  loc_125858E: var_19C = CVar(CStr(var_160)) 'String
  loc_1258595: LateIdCallSt
  loc_12585D0: var_D8 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12585D8: var_110 = CVar(CLng(6)) 'Long
  loc_12585FE: var_140 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_1258606: var_180 = CVar(CLng(5)) 'Long
  loc_125862C: var_1FC = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_1258678: LateIdCallSt
  loc_125869F: Call Proc_257_70_F83054(var_B8, var_F0, CVar(CStr(Format(CVar((CDbl(CStr(var_E8)) * CDbl(CStr(var_160)))), "0.00"))), 1, 1, CVar(CLng(7)), var_1FC, Txt.DispID_41)
  loc_12586B9: var_D8 = CVar((CLng(Txt.DispID_4) + 1)) 'Long
  loc_12586CB: Set var_F0 = Nothing 
  loc_12586D4: Set var_8C = Nothing
  loc_12586DC: Set var_90 = Nothing
  loc_12586F8: var_D8 = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_1258707: Me.FGrid.Row = "Code"
  loc_125872F: var_D8 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_125873E: Me.FGrid.ColSel = "Code"
  loc_125874D: Exit Sub
End Sub

Public Sub SSPGroup_UnknownEvent_9(Index As Integer) 'F58220
  'Data Table: 57AAE0
  Dim Me As Variant
  Dim var_9C As SSPanel
  Dim var_C4 As Variant
  loc_F58117: Me.Filter = 0
  loc_F58122: Me.MoveFirst
  loc_F58134: Set var_98 = Me.SSPGroup
  loc_F5813A: Call 0.Method_SSPGroup_UnknownEvent_90 (Index, var_9C)
  loc_F58155: var_C4 = CVar("ItemGroup='" & CStr(var_9C.Tag) & "'") 'String
  loc_F5815F: Me.Filter = var_C4
  loc_F58191: Proc_6_39_E7D3A0(var_C4)
  loc_F5819D: global_68 = CInt(var_C4)
  loc_F581BE: If (Me.RecordCount > 0) Then
  loc_F581C7:   global_72 = "Item"
  loc_F581DF:   Set var_9C = Me.SSPGroup
  loc_F58202:   Call Proc_257_58_122CB10(Me.SSPItem, CInt(4), global_80, CInt(5))
  loc_F5820E:   global_76 = CInt(CVar(Me.RecordCount))
  loc_F5821F: End If
  loc_F5821F: Exit Sub
End Sub

Private Sub CmdQty_Click(Index As Integer) '1395084
  'Data Table: 57AAE0
  Dim var_88 As Integer
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_C0 As Variant
  Dim var_BC As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_12C As MSHFlexGrid
  Dim var_13C As Variant
  Dim var_C4 As String
  Dim var_184 As Double
  Dim var_15C As Variant
  Dim var_CC As String
  loc_13947B3: var_88 = Index
  loc_13947BC: If Not (var_88 = 0) Then
  loc_13947C5:   If Not (var_88 = 1) Then
  loc_13947CE:     If Not (var_88 = 2) Then
  loc_13947D7:       If Not (var_88 = 3) Then
  loc_13947E0:         If Not (var_88 = 4) Then
  loc_13947E9:           If Not (var_88 = 5) Then
  loc_13947F2:             If Not (var_88 = 6) Then
  loc_13947FB:               If Not (var_88 = 7) Then
  loc_1394804:                 If Not (var_88 = 8) Then
  loc_139480D:                   If (var_88 = 9) Then
  loc_1394810:                   End If
  loc_1394810:                 End If
  loc_1394810:               End If
  loc_1394810:             End If
  loc_1394810:           End If
  loc_1394810:         End If
  loc_1394810:       End If
  loc_1394810:     End If
  loc_1394810:   End If
  loc_1394834:   If CBool(InStr(1, CVar(Me.TxtQty), ".", 0)) Then
  loc_1394844:     var_CC = Me.TxtQty.Text
  loc_1394859:     Set var_BC = Me.CmdQty
  loc_139485F:     Call 0.Method_CmdQty_Click0 (Index, var_C0, var_C4)
  loc_1394867:     var_CC = var_C0.Caption
  loc_139487D:     Me.TxtQty.Text = var_88 & var_C4
  loc_1394899:   Else
  loc_13948A8:     Me.TxtQty.MaxLength = 5
  loc_13948D2:     Set var_BC = Me.CmdQty
  loc_13948D8:     Call 0.Method_CmdQty_Click0 (Index, var_C0)
  loc_13948F6:     Me.TxtQty.Text = Me.TxtQty.Text & var_C0.Caption
  loc_139490F:   End If
  loc_1394912: Else
  loc_1394918:   If (var_88 = &HA) Then
  loc_1394945:     If (InStr(1, CVar(Me.TxtQty), ".", 0) = 0) Then
  loc_1394967:       Set var_C0 = Me.TxtQty
  loc_139496D:       var_C0.MaxLength = (Me.TxtQty.MaxLength + 1)
  loc_139499B:       Set var_BC = Me.CmdQty
  loc_13949A1:       Call 0.Method_CmdQty_Click0 (Index, var_C0)
  loc_13949BF:       Me.TxtQty.Text = Me.TxtQty.Text & var_C0.Caption
  loc_1394A17:       var_128 = (Len(Left(CVar(Me.TxtQty), CLng(InStr(1, CVar(Me.TxtQty), ".", 0)))) + 3)
  loc_1394A27:       Me.TxtQty.MaxLength = CLng(var_128)
  loc_1394A40:     End If
  loc_1394A43:   Else
  loc_1394A4B:     If (var_88 = CInt(&HB)) Then
  loc_1394A5B:       Me.TxtQty.Text = vbNullString
  loc_1394A66:     Else
  loc_1394A6E:       If (var_88 = CInt(&HD)) Then
  loc_1394AD8:         If (((Me.LblVtype.Caption = "Qty") Or (Me.LblVtype.Caption = "Rate")) And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_1394ADF:           Set var_12C = Me.FGrid
  loc_1394AEE:           var_98 = CVar(CLng(var_12C.RowSel)) 'Long
  loc_1394AF6:           var_13C = CVar(CLng(0)) 'Long
  loc_1394B1B:           If (CStr(var_12C.TextMatrix)) = vbNullString) Then
  loc_1394B2A:             Me.FrameQty.Visible = False
  loc_1394B32:             Exit Sub
  loc_1394B33:           End If
  loc_1394B58:           If (CDbl(Val(Me.TxtQty.Tag)) = CDbl(2)) Then
  loc_1394B7B:             If (Me.TxtQty.Text = vbNullString) Then
  loc_1394B8B:               Me.TxtQty.Text = "1"
  loc_1394B93:             End If
  loc_1394BBC:             var_13C = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_1394BC4:             var_15C = CVar(CLng(5)) 'Long
  loc_1394BF1:             var_118 = CVar(CStr(Format(CVar(Val(Me.TxtQty.Text)), "0.000"))) 'String
  loc_1394BF8:             LateIdCallSt
  loc_1394C13:           End If
  loc_1394C38:           If (CDbl(Val(Me.TxtQty.Tag)) = CDbl(3)) Then
  loc_1394C55:             var_184 = Val(Me.TxtQty.Text)
  loc_1394C64:             var_13C = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_1394C6C:             var_15C = CVar(CLng(6)) 'Long
  loc_1394C89:             var_A8 = CVar(var_184) 'Double
  loc_1394C99:             var_118 = CVar(CStr(Format(var_A8, "0.00"))) 'String
  loc_1394CA0:             LateIdCallSt
  loc_1394CBB:           End If
  loc_1394CBE:           Call Proc_257_70_F83054(var_A8, var_12C, var_118, 1, 1, var_15C, var_13C, var_184)
  loc_1394CC8:           Set var_12C = Nothing 
  loc_1394CD8:           Me.FrameQty.Visible = False
  loc_1394CEC:           Me.FrameGrpItem.Enabled = True
  loc_1394CF7:         Else
  loc_1394D3F:           If ((Me.LblVtype.Caption = "Discount") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_1394D6B:             Me.TxtDiscPer.Text = CStr(Val(Me.TxtQty.Text))
  loc_1394D81:             Call Proc_257_70_F83054(var_A8, var_12C, var_118, 1, 1)
  loc_1394D95:             Me.FrameQty.Visible = False
  loc_1394DA9:             Me.FrameGrpItem.Enabled = True
  loc_1394DB4:           Else
  loc_1394DFC:             If ((Me.LblVtype.Caption = "Tax") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_1394E28:               Me.TxtTaxPer.Text = CStr(Val(Me.TxtQty.Text))
  loc_1394E3E:               Call Proc_257_70_F83054(var_A8, var_15C, var_13C)
  loc_1394E52:               Me.FrameQty.Visible = False
  loc_1394E66:               Me.FrameGrpItem.Enabled = True
  loc_1394E71:             Else
  loc_1394EB9:               If ((Me.LblVtype.Caption = "Addition") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_1394EF1:                 var_A8 = CVar(Val(Me.TxtQty.Text)) 'Double
  loc_1394F0E:                 Me.TxtAdd.Text = CStr(Format(var_A8, "0.00"))
  loc_1394F2D:                 Call Proc_257_70_F83054(var_A8, 1, 1)
  loc_1394F41:                 Me.FrameQty.Visible = False
  loc_1394F55:                 Me.FrameGrpItem.Enabled = True
  loc_1394F60:               Else
  loc_1394FA8:                 If ((Me.LblVtype.Caption = "Advance") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_1394FC5:                   var_184 = Val(Me.TxtQty.Text)
  loc_1394FE0:                   var_A8 = CVar(var_184) 'Double
  loc_1394FFD:                   Me.TxtAdvAmt.Text = CStr(Format(var_A8, "0.00"))
  loc_139501C:                   Call Proc_257_70_F83054(var_A8, 1, 1, var_184)
  loc_1395030:                   Me.FrameQty.Visible = False
  loc_1395044:                   Me.FrameGrpItem.Enabled = True
  loc_139504C:                 End If
  loc_139504C:               End If
  loc_139504C:             End If
  loc_139504C:           End If
  loc_139504C:         End If
  loc_139504F:       Else
  loc_1395057:         If (var_88 = CInt(&HC)) Then
  loc_1395066:           Me.FrameQty.Visible = False
  loc_139507A:           Me.FrameGrpItem.Enabled = True
  loc_1395082:         End If
  loc_1395082:       End If
  loc_1395082:     End If
  loc_1395082:   End If
  loc_1395082: End If
  loc_1395082: Exit Sub
End Sub

Private Sub SSPPrevious_UnknownEvent_9 '10F0564
  'Data Table: 57AAE0
  Dim Me As Variant
  loc_10F0247: If (global_72 = "Item") Then
  loc_10F0250:   global_72 = "Item"
  loc_10F026B:   If (Me.AbsolutePosition = -3) Then
  loc_10F0279:     If (global_68 > CInt(&H14)) Then
  loc_10F029D:       Me.AbsolutePosition = CLng((((global_68 - (global_68 Mod CInt(&H14))) - CInt(&H14)) + 1))
  loc_10F02B6:       Set var_94 = Me.SSPItem
  loc_10F02D9:       Call Proc_257_58_122CB10(Me.SSPItem, CInt(4), global_80)
  loc_10F02E5:       global_76 = CInt(var_A4)
  loc_10F02F6:     End If
  loc_10F02F9:   Else
  loc_10F0328:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10F0340:       If (Me.AbsolutePosition = CLng(&H14)) Then
  loc_10F034E:         Me.AbsolutePosition = 1
  loc_10F0356:       Else
  loc_10F037C:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H14)))) + 1)
  loc_10F0381:       End If
  loc_10F03B8:       Call Proc_257_58_122CB10(Me.SSPItem, CInt(4), global_80, CInt(5), Me.SSPItem)
  loc_10F03C4:       global_76 = CInt(var_A4)
  loc_10F03D5:     End If
  loc_10F03D5:   End If
  loc_10F03D8: Else
  loc_10F03DE:   global_72 = "Group"
  loc_10F03F9:   If (Me.AbsolutePosition = -3) Then
  loc_10F0407:     If (global_78 > CInt(&H14)) Then
  loc_10F042B:       Me.AbsolutePosition = CLng((((global_78 - (global_78 Mod CInt(&H14))) - CInt(&H14)) + 1))
  loc_10F0467:       Call Proc_257_58_122CB10(Me.SSPGroup, CInt(4), global_84, CInt(5), Me.SSPGroup, var_A4)
  loc_10F0473:       global_76 = CInt(var_A4)
  loc_10F0484:     End If
  loc_10F0487:   Else
  loc_10F04B6:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10F04CE:       If (Me.AbsolutePosition = CLng(&H14)) Then
  loc_10F04DC:         Me.AbsolutePosition = 1
  loc_10F04E4:       Else
  loc_10F050A:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H14)))) + 1)
  loc_10F050F:       End If
  loc_10F0546:       Call Proc_257_58_122CB10(Me.SSPGroup, CInt(4), global_84, CInt(5), Me.SSPGroup, var_A4, global_76)
  loc_10F0552:       global_76 = CInt(var_A4)
  loc_10F0563:     End If
  loc_10F0563:   End If
  loc_10F0563: End If
  loc_10F0563: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 '114A75C
  'Data Table: 57AAE0
  Dim var_8C As String
  Dim var_98 As Variant
  Dim var_A8 As String
  Dim unk_57AAE5 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_DC As TextBox
  Dim var_D8 As TextBox
  Dim var_D0 As Variant
  Dim var_EC As Variant
  loc_114A3E4: On Error Goto loc_114A756
  loc_114A40A: Call Proc_257_66_EF24C4(Proc_5_1_100EC1C("ADD", Me))
  loc_114A415: Call Proc_257_57_1287E64(global_56)
  loc_114A41A: Call Proc_257_65_FF44E4()
  loc_114A432: Set var_90 = Me.Txt
  loc_114A438: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(1), var_98)
  loc_114A440: var_98.Text = CStr(MemVar_1F950EC)
  loc_114A462: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_98)
  loc_114A46A: var_98.Enabled = False
  loc_114A4A7: var_A8 = "Select Description,V_Type From Voucher_Type Where RestCode='" & pRestCode & "' and logSite_Code='" & MemVar_1F95078 & "' and Site_Code='"
  loc_114A4BE: unk_57AAE5.Execute var_A8 & MemVar_1F95070 & "' and NCat='ORDER'", var_D0, -1
  loc_114A4C9: Set var_88 = Me.Txt
  loc_114A4F7: If (var_88.RecordCount > 0) Then
  loc_114A533:   Set var_D8 = Me.Txt
  loc_114A539:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(5), var_DC)
  loc_114A541:   var_DC.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_114A571:   var_98 = var_88.Fields.Item("V_Type")
  loc_114A590:   Set var_D8 = Me.Txt
  loc_114A596:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(5), var_DC)
  loc_114A59E:   var_DC.Tag = CStr(var_98.Value)
  loc_114A5B4: End If
  loc_114A5C7: Set var_90 = Me.Txt
  loc_114A5CD: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(1), var_98)
  loc_114A5D5: var_98.Text = CStr(MemVar_1F950EC)
  loc_114A5EE: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E(Me.TopCtrl1)
  loc_114A60D: Set var_98 = Me.Txt
  loc_114A613: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_D8)
  loc_114A61B: var_8C = var_D8.Text
  loc_114A645: If CBool(( = "Add") And (var_8C = vbNullString)) Then
  loc_114A64E:   Call Proc_257_67_10E7938(MemVar_1F95044)
  loc_114A661:   Set var_90 = Me.Txt
  loc_114A667:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(4), var_98)
  loc_114A66F:   var_98.Text = var_8C
  loc_114A67E: End If
  loc_114A6B9: Set var_90 = Me.TxtMask
  loc_114A6BF: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_98, CVar(CStr(Format(Time, "hh:mm"))))
  loc_114A6C7: var_98.defaultText = 1
  loc_114A6F1: Me.FGrid.Rows = 1
  loc_114A70E: var_EC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_114A716: Set var_98 = Me.FGrid
  loc_114A745: Me.FGrid.FixedRows = 1
  loc_114A752: Set var_88 = Nothing
  loc_114A755: Exit Sub
  loc_114A756: ' Referenced from: 114A3E4
  loc_114A756: Proc_6_60_E63754(FGrid.DispID_10000, var_EC)
  loc_114A75B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 '10097BC
  'Data Table: 57AAE0
  Dim var_8C As Variant
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_10095B4: On Error Goto loc_10097B5
  loc_10095C5: Set var_88 = Me.Txt
  loc_10095CB: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(4), var_8C)
  loc_10095DE: var_98 = "Edit"
  loc_10095F1: Call Proc_257_61_F116C0(global_128, var_8C.Text)
  loc_100960A: If (var_9A = 0) Then
  loc_100960D:   Exit Sub
  loc_100960E: End If
  loc_1009631: Call Proc_257_66_EF24C4(Proc_5_1_100EC1C("EDIT", Me, global_56), var_98)
  loc_100963C: Call Proc_257_57_1287E64(var_9A)
  loc_100965A: var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1009662: var_DC = CVar(CLng(1)) 'Long
  loc_100966B: Set var_8C = Me.FGrid
  loc_1009695: If (CStr(var_8C.TextMatrix)) <> vbNullString) Then
  loc_1009698:   var_BC = vbNullString
  loc_10096A2:   Set var_88 = Me.FGrid
  loc_10096B3: End If
  loc_10096C0: Set var_88 = Me.Txt
  loc_10096C6: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_8C, 0, FGrid.DispID_10000)
  loc_10096CE: var_8C.Enabled = var_BC
  loc_10096E7: Set var_88 = Me.Txt
  loc_10096ED: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(1), var_8C, 0)
  loc_10096F5: var_8C.Enabled = var_DC
  loc_1009701: var_BC = False
  loc_1009711: Set var_88 = Me.TxtMask
  loc_1009717: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_8C)
  loc_100971F: var_8C.Enabled = var_BC
  loc_1009738: Set var_88 = Me.Txt
  loc_100973E: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(2), var_8C)
  loc_1009746: var_8C.Enabled = True
  loc_100975F: Set var_88 = Me.Txt
  loc_1009765: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(1), var_8C)
  loc_100976D: var_8C.Enabled = True
  loc_1009786: Set var_88 = Me.Txt
  loc_100978C: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(3), var_8C)
  loc_1009794: var_8C.Enabled = False
  loc_10097AC: Me.CmdAdvance.Enabled = True
  loc_10097B4: Exit Sub
  loc_10097B5: ' Referenced from: 10095B4
  loc_10097B5: Proc_6_60_E63754(var_BC)
  loc_10097BA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '1219CC4
  'Data Table: 57AAE0
  Dim var_A8 As Variant
  Dim unk_57AAE5 As Connection15
  Dim var_DC As Fields15
  Dim var_F0 As Field20
  Dim Me As Recordset15
  Dim var_A4 As Fields15
  Dim var_120 As Variant
  Dim var_AC As String
  Dim var_D4 As Variant
  loc_1219824: On Error Goto loc_1219C73
  loc_1219835: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_1219838:   Exit Sub
  loc_1219839: End If
  loc_1219866: Set var_A4 = Me.Txt
  loc_121986C: Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(4), var_A8, var_AC, "select count(*) from PackingOrderDetail where ContradOCID='", var_D4, -1)
  loc_121988D: unk_57AAE5.Execute var_DC & var_AC & "'", 0, var_F0
  loc_121989D:  = var_DC.Item()
  loc_12198A5:  = var_F0.Value
  loc_12198D2: If (var_A8.Text.Fields > 0) Then
  loc_12198F6:   MsgBox("You Can't Delete it.", &H10, "Delete Validation", var_120, var_140)
  loc_121990A:   Set var_A4 = Me.FGrid
  loc_121991B:   Exit Sub
  loc_121991C: End If
  loc_1219953: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_120, var_140) = 6) Then
  loc_121995F:   unk_57AAE5.BeginTrans var_144
  loc_12199BA:   unk_57AAE5.Execute CStr("Delete From PackingOrderDetail Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_140, -1
  loc_1219A05:   var_174 = 0
  loc_1219A18:   var_16C = 0
  loc_1219A23:   var_168 = 0
  loc_1219A36:   var_160 = 0
  loc_1219A41:   var_15C = 0
  loc_1219A54:   var_154 = 0
  loc_1219A9D:   Proc_154_5_10E3BD4(MemVar_1F95044, "PackingOrderDetail", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1219B0D:   var_120 = "Delete From PackingOrder Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1219B1B:   unk_57AAE5.Execute CStr(var_120), var_140, -1
  loc_1219B66:   var_174 = 0
  loc_1219B79:   var_16C = 0
  loc_1219B84:   var_168 = 0
  loc_1219BF5:   var_AC = "PackingOrder"
  loc_1219BFE:   Proc_154_5_10E3BD4(MemVar_1F95044, var_AC, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1219C2C:   unk_57AAE5.CommitTrans
  loc_1219C3C:   Me.Requery -1
  loc_1219C41:   Call Proc_257_68_158A89C(0, 0, 0, 0)
  loc_1219C62:   Proc_5_0_1107AD0(&HFF, Me, global_56, 0)
  loc_1219C6A: End If
  loc_1219C6F: Set var_98 = Nothing
  loc_1219C72: Exit Sub
  loc_1219C73: ' Referenced from: 1219824
  loc_1219C79: unk_57AAE5.RollbackTrans
  loc_1219C86: Set var_A4 = Err()
  loc_1219C8C: Call 0.Method_arg_2C (var_AC, 0, var_168)
  loc_1219CAD: MsgBox(CVar(var_AC), &H10, " Deletion Message", var_120, var_140)
  loc_1219CC0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E1C960
  'Data Table: 57AAE0
  loc_E1C955: Me.Global.Unload Me
  loc_E1C95D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3BB88
  'Data Table: 57AAE0
  loc_E3BB78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3BB80: Call Proc_257_68_158A89C(global_56)
  loc_E3BB85: Exit Sub
  loc_E3BB86: arg_6868 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E3D8C8
  'Data Table: 57AAE0
  loc_E3D8B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D8C0: Call Proc_257_68_158A89C(global_56)
  loc_E3D8C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E3B2E8
  'Data Table: 57AAE0
  loc_E3B2D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B2E0: Call Proc_257_68_158A89C(global_56)
  loc_E3B2E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E3BB28
  'Data Table: 57AAE0
  loc_E3BB18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3BB20: Call Proc_257_68_158A89C(global_56)
  loc_E3BB25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '1607448
  'Data Table: 57AAE0
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_9C As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_12C As String
  Dim var_150 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As String
  Dim var_1B0 As Variant
  Dim var_CC As Variant
  Dim var_1B4 As String
  Dim unk_57AAE5 As Connection15
  Dim var_A4 As Variant
  Dim var_1BC As Variant
  Dim var_1C0 As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_1E0 As TextBox
  Dim var_204 As Variant
  Dim var_284 As MaskEdBox
  Dim var_294 As Variant
  Dim var_2CC As TextBox
  Dim var_8B0 As Double
  Dim var_8B8 As Double
  Dim var_8C0 As Double
  Dim var_8C8 As Double
  Dim var_8D0 As Double
  Dim var_8D8 As Double
  Dim var_1D0 As String
  Dim var_1D8 As String
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_214 As Variant
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_2A4 As Variant
  Dim var_EC As Variant
  Dim var_2F0 As Variant
  Dim var_160 As Variant
  Dim var_368 As Variant
  Dim var_488 As Variant
  Dim var_4C8 As Variant
  Dim var_4E8 As Variant
  Dim var_6B0 As Variant
  Dim var_1C8 As String
  Dim var_1F8 As MSHFlexGrid
  Dim var_1FC As MSHFlexGrid
  Dim var_200 As MSHFlexGrid
  Dim var_238 As MSHFlexGrid
  Dim var_2D0 As String
  Dim var_330 As String
  Dim var_25C As Variant
  Dim var_508 As Variant
  Dim var_88 As Recordset15
  loc_16061AB: Set var_9C = Me.Txt
  loc_16061B1: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_16061DA: If (Proc_6_27_EA61EC(var_A0, "Booking Date") = 0) Then
  loc_16061DD:   Exit Sub
  loc_16061DE: End If
  loc_16061E9: Set var_9C = Me.TxtMask
  loc_16061EF: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0)
  loc_1606218: If (Proc_6_27_EA61EC(var_A0, "Booking Time") = 0) Then
  loc_160621B:   Exit Sub
  loc_160621C: End If
  loc_1606227: Set var_9C = Me.Txt
  loc_160622D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_A0)
  loc_1606256: If (Proc_6_27_EA61EC(var_A0, "Delivery Date") = 0) Then
  loc_1606259:   Exit Sub
  loc_160625A: End If
  loc_1606265: Set var_9C = Me.TxtMask
  loc_160626B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A0)
  loc_1606294: If (Proc_6_27_EA61EC(var_A0, "Delivery Time") = 0) Then
  loc_1606297:   Exit Sub
  loc_1606298: End If
  loc_16062A3: Set var_9C = Me.Txt
  loc_16062A9: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_A0)
  loc_16062D2: If (Proc_6_27_EA61EC(var_A0, "Customer Name") = 0) Then
  loc_16062D5:   Exit Sub
  loc_16062D6: End If
  loc_16062D9: Call Proc_257_69_109B6F0(var_AA)
  loc_16062E4: If (var_AA = 0) Then
  loc_16062E7:   Exit Sub
  loc_16062E8: End If
  loc_16062E8: var_BC = 1
  loc_16062F1: var_DC = 1
  loc_160630F: var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1606315: var_11C = Trim(var_10C)
  loc_1606331: If (var_11C = vbNullString) Then
  loc_160634D:   MsgBox("Item Detail Required ", 0, var_10C, var_11C, var_13C)
  loc_1606370:   Me.FGrid.Row = 1
  loc_160637C:   Set var_9C = Me.FGrid
  loc_16063A0:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_16063A8:   Exit Sub
  loc_16063A9: End If
  loc_16063CE: For var_140 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_140 'Integer
  loc_16063D8:   var_BC = CVar(CLng(var_92)) 'Long
  loc_16063E0:   var_DC = CVar(CLng(3)) 'Long
  loc_16063FA:   var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1606408:   var_12C = vbNullString
  loc_1606416:   var_150 = CVar(CLng(var_92)) 'Long
  loc_1606427:   Set var_A0 = Me.FGrid
  loc_1606438:   var_A8 = CStr(var_A0.TextMatrix))
  loc_1606466:   If CBool(CVar(CLng(5)) And (CDbl(Val(var_A8)) <> CDbl(0))) Then
  loc_160647C:     var_FC = "Item Name Required "
  loc_1606482:     MsgBox(var_FC, 0, var_10C, Trim(var_10C), var_13C)
  loc_16064A5:     Me.FGrid.Row = 1
  loc_16064B1:     Set var_9C = Me.FGrid
  loc_16064D5:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_16064DD:     Exit Sub
  loc_16064DE:   End If
  loc_16064E1: Next var_140 'Integer
  loc_16064EA: Set var_9C = Me.TopCtrl1
  loc_16064F0: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1606505: If ( = "Add") Then
  loc_1606535:   Set var_9C = Me.Txt
  loc_160653B:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A0, var_A8, "Select Count(*) From PackingOrder Where DocID='", var_FC, -1)
  loc_1606543:   var_A4 = var_A0.Text
  loc_160655C:   unk_57AAE5.Execute var_1BC & var_A8 & "'", 0, var_1C0
  loc_1606564:   var_10C = var_A4.Fields
  loc_160656C:    = var_1BC.Item()
  loc_1606574:    = var_1C0.Value
  loc_16065A1:   If (var_10C > 0) Then
  loc_16065AA:     Call Proc_257_67_10E7938(MemVar_1F95044)
  loc_16065BD:     Set var_9C = Me.Txt
  loc_16065C3:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A0)
  loc_16065CB:     var_A0.Text = var_A8
  loc_16065DA:     Exit Sub
  loc_16065DB:   End If
  loc_16065DE: Else
  loc_16065FB:   var_A0 = Me.Fields.Item("DocID")
  loc_1606603:   var_FC = var_A0.Value
  loc_160660C:   var_A8 = CStr(var_FC)
  loc_1606612:   global_112 = var_A8
  loc_1606623: End If
  loc_1606625: var_8A = &HFF
  loc_1606631: unk_57AAE5.BeginTrans var_1C4
  loc_1606654: Set var_9C = Me.Txt
  loc_160665A: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A0, var_A8, "Delete From PackingOrderDetail Where DocID='", var_FC)
  loc_1606662: -1 = var_A0.Text
  loc_160667B: unk_57AAE5.Execute var_A4 & var_A8 & "'", var_8A, var_A8
  loc_16066B3: Set var_9C = Me.Txt
  loc_16066B9: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A0, var_A8, "Delete From PackingOrder Where DocID='")
  loc_16066C1: var_FC = var_A0.Text
  loc_16066CA: var_1B4 = -1 & var_A8
  loc_16066DA: unk_57AAE5.Execute var_A4 & var_A8 & "'", var_A4, 
  loc_1606702: Set var_9C = Me.Txt
  loc_1606708: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A0)
  loc_1606710: var_A8 = var_A0.Text
  loc_1606723: Set var_A4 = Me.Txt
  loc_1606729: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1BC)
  loc_1606744: Set var_1C0 = Me.Txt
  loc_160674A: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_1E0)
  loc_1606752: var_1E4 = var_1E0.Tag
  loc_1606762: Set var_1F8 = Me.Txt
  loc_1606768: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_1606777: Proc_6_7_F26918(var_10C, CVar(var_1FC))
  loc_1606787: Set var_200 = Me.TxtMask
  loc_160678D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_204)
  loc_16067A9: Set var_238 = Me.Txt
  loc_16067AF: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_23C)
  loc_16067BE: Proc_6_7_F26918(var_25C, CVar(var_23C))
  loc_16067CE: Set var_280 = Me.TxtMask
  loc_16067D4: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_284)
  loc_16067DC: var_294 = var_284.defaultText
  loc_16067F3: Set var_2C8 = Me.Txt
  loc_16067F9: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_2CC, var_2D0)
  loc_1606820: var_8A8 = Val(Me.TxtTotal.Text)
  loc_160683D: var_8B0 = Val(Me.TxtDiscAmt.Text)
  loc_160685A: var_8B8 = Val(Me.TxtTaxAmt.Text)
  loc_1606877: var_8C0 = Val(Me.TxtAdd.Text)
  loc_1606894: var_8C8 = Val(Me.TxtDed.Text)
  loc_16068B1: var_8D0 = Val(Me.TxtRndOff.Text)
  loc_16068CE: var_8D8 = Val(Me.TxtNetAmt.Text)
  loc_16068DF: Proc_6_7_F26918(var_508, Date, var_8D8, var_8D0, var_8C8, var_8C0)
  loc_16068E8: Set var_53C = Me.TopCtrl1
  loc_16068EE: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_8B8)
  loc_160693C: Proc_6_39_E7D3A0(var_6A0, CVar(Me.TxtDiscPer), var_8B0)
  loc_160694C: Proc_6_39_E7D3A0(var_6F0, CVar(Me.TxtTaxPer), var_8A8)
  loc_160695C: Proc_6_39_E7D3A0(var_740, CVar(Me.TxtAdvAmt))
  loc_160696C: Set var_774 = Me.Txt
  loc_1606972: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_778)
  loc_1606981: Proc_6_17_EAAE40(var_798, CVar(var_778))
  loc_1606991: Set var_7CC = Me.Txt
  loc_1606997: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_7D0)
  loc_16069A6: Proc_6_17_EAAE40(var_7F0, CVar(var_7D0))
  loc_16069B6: Set var_824 = Me.Txt
  loc_16069BC: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(8), var_828)
  loc_16069CB: Proc_6_17_EAAE40(var_848, CVar(var_828))
  loc_16069E4: var_1B4 = "Insert into PackingOrder (DocID,BNo,VPrefix,VType,Site_Code,BDate,BTime,DDate,DTime,CustName,Total,Discount,Tax,Addition,Deduction,RoundOff,NetAmt " & " ,U_Name,U_EntDt,U_AE,LogSite_Code,RestCode,DiscPer,TaxPer,AdvAmt,PhoneNo,Addr1,Addr2)values ('"
  loc_1606A34: var_11C = CVar(var_1B4 & var_A8 & "','" & var_1BC.Text & "', " & "'" & global_120 & "','" & var_1E4 & "','" & MemVar_1F95070 & "',") 'String
  loc_1606A85: var_2F0 = var_11C & var_10C & ",'" & CVar(CStr(var_204.defaultText)) & "'," & var_25C & ",'" & CVar(CStr(var_2CC.Text)) & "','" & CVar(var_2D0) 
  loc_1606AC1: var_368 = var_2F0 & "'," & CVar(var_8A8) & "," & CVar(var_8B0) & "," & CVar(var_8B8) 
  loc_1606B24: var_4C8 = var_368 & "," & CVar(var_8C0) & "," & CVar(var_8C8) & "," & CVar(var_8D0) & "," & CVar(var_8D8) & ",'" & CVar(MemVar_1F950C8) 
  loc_1606B2D: var_4E8 = var_4C8 & "'," 
  loc_1606B7A: var_6B0 = var_4E8 & var_508 & ",'" & IIf((var_55C = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "','" & CVar(pRestCode) & "'," & var_6A0 
  loc_1606BE1: unk_57AAE5.Execute CStr(var_6B0 & "," & var_6F0 & "," & var_740 & "," & var_798 & "," & var_7F0 & "," & var_848 & ")"), var_89C, -1
  loc_1606D0E: For var_8DC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_8DC 'Integer
  loc_1606D3A:   var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1606D5C:   If CBool(Trim(var_10C) <> vbNullString) Then
  loc_1606D6D:     Set var_9C = Me.Txt
  loc_1606D73:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A0, var_A8, CVar(CLng(3)), CVar(CLng(var_92)))
  loc_1606D7B:     1 = var_A0.Text
  loc_1606D85:     var_1C8 = CStr(var_92)
  loc_1606D8D:     var_8A8 = Val(var_1C8)
  loc_1606D9E:     Set var_A4 = Me.Txt
  loc_1606DA4:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1BC, var_1E4, var_8A8)
  loc_1606DAC:     var_8A0 = var_1BC.Text
  loc_1606DB9:     var_8B0 = Val(var_1E4)
  loc_1606DC7:     Set var_1C0 = Me.Txt
  loc_1606DCD:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_1E0, var_8B0)
  loc_1606DDC:     Proc_6_7_F26918(var_10C, CVar(var_1E0))
  loc_1606DE5:     var_CC = CVar(CLng(var_92)) 'Long
  loc_1606DED:     var_EC = CVar(CLng(1)) 'Long
  loc_1606DF6:     Set var_1F8 = Me.FGrid
  loc_1606DFC:     var_1B0 = var_1F8.TextMatrix)
  loc_1606E0C:     var_160 = CVar(CLng(var_92)) 'Long
  loc_1606E36:     var_8B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1606E67:     var_8C0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1606E98:     var_8C8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1606EC9:     var_640 = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_92)), var_8C8, CVar(CLng(7)), CVar(CLng(var_92)), var_8C0, CVar(CLng(6)))
  loc_1606ED0:     Set var_23C = Me.TopCtrl1
  loc_1606ED6:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E(CVar(CLng(var_92)))
  loc_1606F1F:     Proc_6_7_F26918(var_4E8, Date, var_8B8, CVar(CLng(5)))
  loc_1606F38:     var_1B4 = "insert into packingorderdetail (Docid,SNo,Vtype,BNo,Site_Code,VPrefix,vdate,ItemCode, Qty,Rate,Amount,Remark, " & " U_AE,U_Name,U_EntDt,Logsite_Code) values ('"
  loc_1606F92:     var_330 = var_1B4 & var_A8 & "'," & CStr(var_8A8) & ",'" & global_132 & "'," & CStr(var_8B0) & ",'" & MemVar_1F95070 & "', " & "'"
  loc_1606FEE:     var_2A4 = CVar(var_330 & global_120 & "',") & var_10C & ", '" & CVar(CStr(var_1B0)) & "'," & CVar(var_8B8) & " ," & " " & CVar(var_8C0) 
  loc_1607038:     var_488 = var_2A4 & "," & CVar(var_8C8) & ",'" & CVar(var_640) & "','" & IIf((var_368 = "Add"), "A", "E") & "','" & CVar(MemVar_1F950C8) 
  loc_1607072:     unk_57AAE5.Execute CStr(var_488 & "'," & var_4E8 & ",'" & CVar(MemVar_1F95078) & "')"), var_55C, -1
  loc_1607116:   End If
  loc_1607119: Next var_8DC 'Integer
  loc_1607122: Set var_9C = Me.TopCtrl1
  loc_1607128: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_160713D: If ( = "Add") Then
  loc_1607154:   var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_160718B:   var_13C = CVar(var_A8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='") & Trim(global_132) & "' And VP.Date_From<=" 
  loc_160719D:   Set var_9C = Me.Txt
  loc_16071A3:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A0, var_1C8, var_13C)
  loc_16071AB:   var_234 = var_A0.Text
  loc_16071B9:   Proc_6_7_F26918(var_1B0, CVar(var_1C8))
  loc_16071C1:   var_214 = -1 & var_1B0 
  loc_16071CA:   var_224 = CVar(CStr(var_1B0)) & " Order By VP.Date_From DESC" 
  loc_16071D8:   unk_57AAE5.Execute CStr(var_224), var_A4, 
  loc_16071E3:   Set var_88 = var_A4
  loc_1607223:   If (var_88.RecordCount > 0) Then
  loc_1607234:     Set var_9C = Me.Txt
  loc_160723A:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0)
  loc_1607242:     var_A8 = var_A0.Text
  loc_160724F:     var_8A8 = Val(var_A8)
  loc_1607258:     var_BC = "V_Type"
  loc_160729F:     Proc_6_7_F26918(var_1B0, CVar(var_88.Fields.Item("Date_From")))
  loc_16072D2:     var_1D0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_8A8) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_16072FA:     var_1D8 = CStr(CVar(var_1D0 & MemVar_1F95078 & "') and V_Type='") & var_88.Fields.Item(var_BC).Value & "' and Date_From=" & var_1B0)
  loc_1607304:     unk_57AAE5.Execute var_1D8, var_224, -1
  loc_160733E:   End If
  loc_160733E: End If
  loc_1607344: unk_57AAE5.CommitTrans
  loc_160734B: var_8A = 0
  loc_160735C: Set var_9C = Me.Txt
  loc_1607362: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A0, var_A8)
  loc_160736A: var_8A = var_A0.Text
  loc_160737E: var_8A = 0
  loc_160738C: Me.Requery -1
  loc_16073B6: Me.Find "SearchCode ='" & "SearchCode ='" & var_A8 & "'", 0, 1
  loc_16073C6: Set var_9C = Me.TopCtrl1
  loc_16073CC: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_BC)
  loc_16073E1: If (var_8A = "Add") Then
  loc_16073E4:   Call TopCtrl1_UnknownEvent_11()
  loc_16073E9:   Exit Sub
  loc_16073EA: End If
  loc_160740D: Call Proc_257_66_EF24C4(Proc_5_1_100EC1C("INI", Me, global_56), var_1F8)
  loc_1607418: Call Proc_257_57_1287E64(var_8A8)
  loc_160741D: Call Proc_257_68_158A89C()
  loc_1607427: Set var_88 = Nothing
  loc_160742A: Exit Sub
  loc_1607431: If (var_8A = &HFF) Then
  loc_160743A:   unk_57AAE5.RollbackTrans
  loc_160743F: End If
  loc_160743F: Proc_6_60_E63754()
  loc_1607444: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EA4408
  'Data Table: 57AAE0
  loc_EA438C: On Error Goto loc_EA4402
  loc_EA43C6: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA43EC:   Call Proc_257_66_EF24C4(Proc_5_1_100EC1C("INI", Me))
  loc_EA43F7:   Call Proc_257_57_1287E64(global_56)
  loc_EA43FC:   Call Proc_257_68_158A89C()
  loc_EA4401: End If
  loc_EA4401: Exit Sub
  loc_EA4402: ' Referenced from: EA438C
  loc_EA4402: Proc_6_60_E63754()
  loc_EA4407: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'F14CE4
  'Data Table: 57AAE0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_120 As String
  Dim MemVar_1F950E4 As String
  loc_F14C0C: On Error Goto loc_F14CDC
  loc_F14C26: If (Me.RecordCount <= 0) Then
  loc_F14C2F:   var_B8 = "Information"
  loc_F14C4A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F14C5A:   Exit Sub
  loc_F14C5B: End If
  loc_F14C62: var_10C = "SELECT  Distinct P.Docid AS SearchCode, V.Description AS BookingType, P.BNo AS BookingNo, CAST(P.BDate AS VarChar(11)) AS BookingDate, " & "P.CustName AS CustomerName, PD.ContraDocID FROM  PackingOrder P INNER JOIN Voucher_Type V ON P.VType = V.V_Type AND P.LogSite_Code = V.LogSite_Code AND V.Site_Code = '"
  loc_F14C85: var_120 = var_10C & MemVar_1F95070 & "' AND V.LogSite_Code = '" & MemVar_1F95078 & "' AND " & "V.Category IN ('ORDER') AND P.LogSite_Code = '"
  loc_F14C93: MemVar_1F950E4 = var_120 & MemVar_1F95078 & "' INNER JOIN PackingOrderDetail PD ON P.Docid = PD.DocID WHERE  (PD.ContraDocID IS NOT NULL) OR (PD.ContraDocID = '') ORDER BY P.Docid, P.BNo"
  loc_F14CAE: MemVar_1F95120 = Me
  loc_F14CBB: Proc_6_126_F1C850("1500,1200,1400,2500,1400")
  loc_F14CD6: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F14CDB: Exit Sub
  loc_F14CDC: ' Referenced from: F14C0C
  loc_F14CDC: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F14CE1: Exit Sub
  loc_F14CE2: DOC
End Sub

Private Sub TopCtrl1_UnknownEvent_1C 'E5EBBC
  'Data Table: 57AAE0
  loc_E5EBAB: If (MsgBox("Do you want window printing!", &H144, var_C4, var_E4, var_104) = 6) Then
  loc_E5EBAE:   Call Proc_257_59_10C3974()
  loc_E5EBB6: Else
  loc_E5EBB6:   Call Proc_257_62_1569B30()
  loc_E5EBBB: End If
  loc_E5EBBB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E0B40C
  'Data Table: 57AAE0
  Dim Me As Recordset15
  loc_E0B403: Me.Requery -1
  loc_E0B408: Exit Sub
End Sub

Private Sub SSPNext_UnknownEvent_9 'F341B8
  'Data Table: 57AAE0
  Dim Me As Variant
  loc_F340AB: If (global_72 = "Item") Then
  loc_F340B4:   global_72 = "Item"
  loc_F340CF:   If (Me.AbsolutePosition > 0) Then
  loc_F340D8:     Me.MoveNext
  loc_F340F1:     Set var_94 = Me.SSPItem
  loc_F34114:     Call Proc_257_58_122CB10(Me.SSPItem, CInt(4), global_80)
  loc_F34120:     global_76 = CInt(var_A4)
  loc_F34131:   End If
  loc_F34134: Else
  loc_F3413A:   global_72 = "Group"
  loc_F34155:   If (Me.AbsolutePosition > 0) Then
  loc_F3415E:     Me.MoveNext
  loc_F3419A:     Call Proc_257_58_122CB10(Me.SSPGroup, CInt(4), global_84, CInt(5), Me.SSPGroup)
  loc_F341A6:     global_76 = CInt(var_A4)
  loc_F341B7:   End If
  loc_F341B7: End If
  loc_F341B7: Exit Sub
End Sub

Public Sub TxtMask_UnknownEvent_0(Index As Integer) 'E48A74
  'Data Table: 57AAE0
  loc_E48A52: Set var_88 = Me.TxtMask
  loc_E48A58: Call 0.Method_TxtMask_UnknownEvent_00 (Index)
  loc_E48A66: Proc_6_74_E23240(var_8C)
  loc_E48A72: Exit Sub
End Sub

Public Sub TxtMask_UnknownEvent_1(Index As Integer) 'E489A4
  'Data Table: 57AAE0
  loc_E48982: Set var_88 = Me.TxtMask
  loc_E48988: Call 0.Method_TxtMask_UnknownEvent_10 (Index)
  loc_E48996: Proc_6_73_E23294(var_8C)
  loc_E489A2: Exit Sub
End Sub

Public Sub TxtMask_UnknownEvent_8(arg_C, arg_10) 'EDDD34
  'Data Table: 57AAE0
  Dim var_86 As Integer
  Dim var_90 As MaskEdBox
  Dim arg_10 As Integer
  loc_EDDC8B: var_86 = arg_C
  loc_EDDC96: If Not (var_86 = CInt(0)) Then
  loc_EDDCA1:   If (var_86 = CInt(1)) Then
  loc_EDDCA4:   End If
  loc_EDDCAE:   Set var_8C = Me.TxtMask
  loc_EDDCB4:   Call 0.Method_TxtMask_UnknownEvent_80 (arg_C, var_90)
  loc_EDDCD9:   If (CStr(var_90.defaultText) > "24:00") Then
  loc_EDDCF5:     MsgBox("Invalid Time", 0, var_D4, var_F4, var_114)
  loc_EDDD07:     arg_10 = &HFF
  loc_EDDD14:     Set var_8C = Me.TxtMask
  loc_EDDD1A:     Call 0.Method_TxtMask_UnknownEvent_80 (arg_C, var_90)
  loc_EDDD31:     Exit Sub
  loc_EDDD32:   End If
  loc_EDDD32: End If
  loc_EDDD32: Exit Sub
End Sub

Private Sub TxtMask_UnknownEvent_B 'F5166C
  'Data Table: 57AAE0
  Dim var_86 As Integer
  loc_F51547: var_86 = arg_10
  loc_F51554: If (CLng(arg_10) = &H1B) Then
  loc_F51557:   Exit Sub
  loc_F51558: End If
  loc_F5156D: If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_F51576:   Proc_6_75_E5335C(arg_10, arg_14)
  loc_F5157B: End If
  loc_F5157F: Set var_8C = Me.TopCtrl1
  loc_F51585: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_86)
  loc_F5159A: If ( = "Add") Then
  loc_F515B2:   If ((CLng(arg_10) = &H26) Or (CLng(arg_10) = &HD)) Then
  loc_F515BB:     Proc_6_76_E533C8(arg_10)
  loc_F515C0:   End If
  loc_F515C3: Else
  loc_F515D8:   If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_F515E1:     Proc_6_75_E5335C(arg_10, arg_14)
  loc_F515E6:   End If
  loc_F515E6: End If
  loc_F515EA: Set var_8C = Me.TopCtrl1
  loc_F515F0: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E(arg_14)
  loc_F51605: If ( = "Edit") Then
  loc_F5161D:   If ((CLng(arg_10) = &H26) Or (CLng(arg_10) = &HD)) Then
  loc_F51626:     Proc_6_76_E533C8(arg_10)
  loc_F5162B:   End If
  loc_F5162E: Else
  loc_F51643:   If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_F5164C:     Proc_6_75_E5335C(arg_10, arg_14)
  loc_F51651:   End If
  loc_F51651: End If
  loc_F51666: If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_F51669: End If
  loc_F51669: Exit Sub
  loc_F5166A: arg_14() = 
End Sub

Private Sub CmdAdd2_Click() 'EE6054
  'Data Table: 57AAE0
  Dim var_BC As Variant
  Dim var_88 As TextBox
  loc_EE5FA4: Set global_152 = New RsTouchScreenKeyBoard
  loc_EE5FBD: Me.ParentForm = CVar(Me)
  loc_EE5FDE: Set var_88 = (var_C0)
  loc_EE5FE4:  = Me.TextBox.MaxLength
  loc_EE5FF7: var_BC = CVar(())
  loc_EE5FFC: var_BC.MaxLength = CVar(var_C0)
  loc_EE6019: var_BC.Show 1, var_AC
  loc_EE6033: Me.TxtAddr2.Text = TxtKeyBoard
  loc_EE6049: Set global_152 = Nothing
  loc_EE6050: Exit Sub
End Sub

Private Sub CmdAdd1_Click() 'EE3854
  'Data Table: 57AAE0
  Dim var_BC As Variant
  Dim var_88 As TextBox
  loc_EE37A4: Set global_152 = New RsTouchScreenKeyBoard
  loc_EE37BD: Me.ParentForm = CVar(Me)
  loc_EE37DE: Set var_88 = (var_C0)
  loc_EE37E4:  = Me.TextBox.MaxLength
  loc_EE37F7: var_BC = CVar(())
  loc_EE37FC: var_BC.MaxLength = CVar(var_C0)
  loc_EE3819: var_BC.Show 1, var_AC
  loc_EE3833: Me.TxtAddr1.Text = TxtKeyBoard
  loc_EE3849: Set global_152 = Nothing
  loc_EE3850: Exit Sub
End Sub

Private Sub CmdCustomer_Click() 'EE6154
  'Data Table: 57AAE0
  Dim var_BC As Variant
  Dim var_88 As TextBox
  loc_EE60A4: Set global_152 = New RsTouchScreenKeyBoard
  loc_EE60BD: Me.ParentForm = CVar(Me)
  loc_EE60DE: Set var_88 = (var_C0)
  loc_EE60E4:  = Me.TextBox.MaxLength
  loc_EE60F7: var_BC = CVar(())
  loc_EE60FC: var_BC.MaxLength = CVar(var_C0)
  loc_EE6119: var_BC.Show 1, var_AC
  loc_EE6133: Me.TxtCustName.Text = TxtKeyBoard
  loc_EE6149: Set global_152 = Nothing
  loc_EE6150: Exit Sub
End Sub

Private Sub SSPMain_UnknownEvent_9 'F62ED4
  'Data Table: 57AAE0
  Dim Me As Variant
  Dim var_8C As SSPanel
  loc_F62DAE: Me.MoveFirst
  loc_F62DC1: Set var_88 = Me.SSPGroup
  loc_F62DC7: Call 0.Method_SSPMain_UnknownEvent_90 (0, var_8C)
  loc_F62DCF: var_8C.Visible = False
  loc_F62DE9: Set var_88 = Me.SSPItem
  loc_F62DEF: Call 0.Method_SSPMain_UnknownEvent_90 (0, var_8C)
  loc_F62DF7: var_8C.Visible = False
  loc_F62E0E: If (global_72 = "Group") Then
  loc_F62E17:   global_72 = "Group"
  loc_F62E2F:   Set var_8C = Me.SSPGroup
  loc_F62E52:   Call Proc_257_58_122CB10(Me.SSPGroup, CInt(4), global_84)
  loc_F62E5E:   global_76 = CInt(var_C0)
  loc_F62E72: Else
  loc_F62E78:   global_72 = "Group"
  loc_F62EB3:   Call Proc_257_58_122CB10(Me.SSPGroup, CInt(4), global_84, CInt(5), Me.SSPItem)
  loc_F62EBF:   global_76 = CInt(var_C0)
  loc_F62ED0: End If
  loc_F62ED0: Exit Sub
End Sub

Private Sub CmdOK_Click() '12DC8C0
  'Data Table: 57AAE0
  Dim var_C8 As Variant
  Dim var_C4 As Variant
  Dim var_1E0 As Variant
  Dim var_1F4 As Variant
  loc_12DC243: var_A4 = Trim(CVar(Me.TxtBookDate))
  loc_12DC25A: If (var_A4 = vbNullString) Then
  loc_12DC287:   MsgBox(CVar(Me.CmdBookDate.Caption & " is required Entry."), &H40, var_A4, var_C4, var_FC)
  loc_12DC29D:   Exit Sub
  loc_12DC29E: End If
  loc_12DC2A9: var_A4 = Trim(CVar(Me.TxtBookTime))
  loc_12DC2C0: If (var_A4 = vbNullString) Then
  loc_12DC2ED:   MsgBox(CVar(Me.CmdBookTime.Caption & " is required Entry."), &H40, var_A4, var_C4, var_FC)
  loc_12DC303:   Exit Sub
  loc_12DC304: End If
  loc_12DC30F: var_A4 = Trim(CVar(Me.TxtBookTime))
  loc_12DC334: var_C4 = 2
  loc_12DC344: var_FC = Mid(var_A4, 1, var_C4)
  loc_12DC3AE: var_1E0 = (CDbl(Val(CStr(var_FC))) < CDbl(&H18)) And (Mid(Trim(CVar(Me.TxtBookTime)), 3, 1) = ":") And (CDbl(Val(CStr(Mid(Trim(CVar(Me.TxtBookTime)), 4, 2)))) < CDbl(&H3C))
  loc_12DC3DE: If CBool(Not var_1E0) Then
  loc_12DC3FA:   MsgBox("Invalid Booking Time", &H40, var_A4, var_C4, var_FC)
  loc_12DC40A:   Exit Sub
  loc_12DC40B: End If
  loc_12DC416: var_A4 = Trim(CVar(Me.TxtDelDate))
  loc_12DC42D: If (var_A4 = vbNullString) Then
  loc_12DC45A:   MsgBox(CVar(Me.CmdDelDate.Caption & " is required Entry."), &H40, var_A4, var_C4, var_FC)
  loc_12DC470:   Exit Sub
  loc_12DC471: End If
  loc_12DC47C: var_A4 = Trim(CVar(Me.TxtDelTime))
  loc_12DC493: If (var_A4 = vbNullString) Then
  loc_12DC4C0:   MsgBox(CVar(Me.CmdDelTime.Caption & " is required Entry."), &H40, var_A4, var_C4, var_FC)
  loc_12DC4D6:   Exit Sub
  loc_12DC4D7: End If
  loc_12DC4E2: var_A4 = Trim(CVar(Me.TxtDelTime))
  loc_12DC507: var_C4 = 2
  loc_12DC517: var_FC = Mid(var_A4, 1, var_C4)
  loc_12DC581: var_1E0 = (CDbl(Val(CStr(var_FC))) < CDbl(&H18)) And (Mid(Trim(CVar(Me.TxtDelTime)), 3, 1) = ":") And (CDbl(Val(CStr(Mid(Trim(CVar(Me.TxtDelTime)), 4, 2)))) < CDbl(&H3C))
  loc_12DC5B1: If CBool(Not var_1E0) Then
  loc_12DC5CD:   MsgBox("Invalid Booking Time", &H40, var_A4, var_C4, var_FC)
  loc_12DC5DD:   Exit Sub
  loc_12DC5DE: End If
  loc_12DC5E9: var_A4 = Trim(CVar(Me.TxtPhone))
  loc_12DC600: If (var_A4 = vbNullString) Then
  loc_12DC62D:   MsgBox(CVar(Me.CmdPhone.Caption & " is required Entry."), &H40, var_A4, var_C4, var_FC)
  loc_12DC643:   Exit Sub
  loc_12DC644: End If
  loc_12DC648: var_C4 = CVar(Me.TxtDelDate) 'Address
  loc_12DC64F: var_FC = Trim(var_C4)
  loc_12DC65F: var_A4 = Trim(CVar(Me.TxtBookDate))
  loc_12DC67E: If (CDate(var_A4) > CDate(var_FC)) Then
  loc_12DC69A:   MsgBox("Invalid Delivery Date", &H40, var_A4, var_C4, var_FC)
  loc_12DC6AA:   Exit Sub
  loc_12DC6AB: End If
  loc_12DC6CB: Set var_C8 = Me.Txt
  loc_12DC6D1: Call 0.Method_CmdOK_Click0 (CInt(1), var_1F4)
  loc_12DC6D9: var_1F4.Text = Me.TxtBookDate.Text
  loc_12DC70E: Set var_C8 = Me.TxtMask
  loc_12DC714: Call 0.Method_CmdOK_Click0 (CInt(0), var_1F4)
  loc_12DC71C: var_1F4.defaultText = CVar(Me.TxtBookTime.Text)
  loc_12DC74D: Set var_C8 = Me.Txt
  loc_12DC753: Call 0.Method_CmdOK_Click0 (CInt(2), var_1F4)
  loc_12DC75B: var_1F4.Text = Me.TxtDelDate.Text
  loc_12DC790: Set var_C8 = Me.TxtMask
  loc_12DC796: Call 0.Method_CmdOK_Click0 (CInt(1), var_1F4)
  loc_12DC79E: var_1F4.defaultText = CVar(Me.TxtDelTime.Text)
  loc_12DC7CF: Set var_C8 = Me.Txt
  loc_12DC7D5: Call 0.Method_CmdOK_Click0 (CInt(3), var_1F4)
  loc_12DC7DD: var_1F4.Text = Me.TxtCustName.Text
  loc_12DC80E: Set var_C8 = Me.Txt
  loc_12DC814: Call 0.Method_CmdOK_Click0 (CInt(6), var_1F4)
  loc_12DC81C: var_1F4.Text = Me.TxtPhone.Text
  loc_12DC84D: Set var_C8 = Me.Txt
  loc_12DC853: Call 0.Method_CmdOK_Click0 (CInt(7), var_1F4)
  loc_12DC85B: var_1F4.Text = Me.TxtAddr1.Text
  loc_12DC88C: Set var_C8 = Me.Txt
  loc_12DC892: Call 0.Method_CmdOK_Click0 (CInt(8), var_1F4)
  loc_12DC89A: var_1F4.Text = Me.TxtAddr2.Text
  loc_12DC8B7: Me.FrCustInfo.Visible = False
  loc_12DC8BF: Exit Sub
End Sub

Public Function global_52Get() '57D198
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '57D1A7
  global_52 = Value
End Sub

Public Property Let PTableNo(vNewValue) 'E0D3EC
  'Data Table: 57AAE0
  loc_E0D3E4: global_140 = vNewValue
  loc_E0D3E8: Exit Sub
  loc_E0D3E9: If  Then Exit Sub
  loc_E0D3E9: End If
End Sub

Public Property Get PTableNo() 'E0CAEC
  'Data Table: 57AAE0
  Dim arg_2CFF As Double
  loc_E0CAE0: var_88 = global_140
  loc_E0CAE3: PTableNo = 
  loc_E0CAE9: arg_2CFF = 
End Sub

Public Property Let TxtKeyBoard(vNewValue) 'E0C9CC
  'Data Table: 57AAE0
  Dim arg_2CFF As Double
  loc_E0C9C4: global_148 = vNewValue
  loc_E0C9C8: Exit Sub
  loc_E0C9C9: arg_2CFF = 
End Sub

Public Property Get TxtKeyBoard() 'E0C984
  'Data Table: 57AAE0
  loc_E0C978: var_88 = global_148
  loc_E0C97B: TxtKeyBoard = 
End Sub

Public Property Let pRestCode(vNewValue) 'E0C93C
  'Data Table: 57AAE0
  loc_E0C934: global_144 = vNewValue
  loc_E0C938: Exit Sub
End Sub

Public Property Get pRestCode() 'E0CF6C
  'Data Table: 57AAE0
  loc_E0CF60: var_88 = global_144
  loc_E0CF63: pRestCode = 
End Sub

Public Property Get OpenMode() 'E067D0
  'Data Table: 57AAE0
  loc_E067C9: OpenMode = global_136
End Sub

Public Property Let OpenMode(vNewValue) 'E02404
  'Data Table: 57AAE0
  loc_E02401: Exit Sub
  loc_E02402: If vNewValue Then Exit Sub
  loc_E02402: End If
End Sub

Public Property Get oVType() 'E0C744
  'Data Table: 57AAE0
  Dim arg_2CFF As Double
  loc_E0C738: var_88 = global_132
  loc_E0C73B: oVType = 
  loc_E0C741: arg_2CFF = 
End Sub

Public Property Let oVType(vNewValue) 'E0C66C
  'Data Table: 57AAE0
  loc_E0C664: global_132 = vNewValue
  loc_E0C668: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E98618
  'Data Table: 57AAE0
  Dim Me As Recordset15
  loc_E985A6: On Error Goto loc_E9860F
  loc_E985AF: Me.MoveFirst
  loc_E985D9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E98601: Proc_5_0_1107AD0(&HFF, Me, global_56)
  loc_E98609: Call Proc_257_68_158A89C(0)
  loc_E9860E: Exit Sub
  loc_E9860F: ' Referenced from: E985A6
  loc_E9860F: Proc_6_60_E63754(var_A0)
  loc_E98614: Exit Sub
  loc_E98615: Exit Sub
End Sub

Public Sub Proc_257_56_F07E78(arg_C, arg_10) 'F07E78
  'Data Table: 57AAE0
  Dim unk_57AAE5 As Connection15
  Dim var_90 As Recordset15
  Dim var_11C As Fields15
  Dim var_8C As Double
  loc_F07DD5: Proc_6_7_F26918(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F07DF4: unk_57AAE5.Execute CStr(var_118 & var_B4 & " Order by Appdate Desc"), -1, var_11C
  loc_F07DFF: Set var_90 = var_11C
  loc_F07E2D: If (var_90.RecordCount > 0) Then
  loc_F07E5B:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F07E6B: Else
  loc_F07E6E:   var_8C = CDbl(0)
  loc_F07E71: End If
  loc_F07E71: Proc_257_56_F07E78 = var_8C
End Sub

Public Sub Proc_257_57_1287E64
  'Data Table: 57AAE0
  Dim var_A0 As CommandButton
  Dim var_88 As Variant
  Dim var_9C As CommandButton
  loc_1287888: Set var_88 = Me.TopCtrl1
  loc_128788E: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_12878A2: Set var_9C = Me.Head
  loc_12878A8: Call 0.Method_Proc_257_57_1287E640 (CInt(0), var_A0)
  loc_12878B0: var_A0.Enabled = CBool()
  loc_12878C5: Set var_88 = Me.TopCtrl1
  loc_12878CB: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000B()
  loc_12878DF: Set var_9C = Me.Head
  loc_12878E5: Call 0.Method_Proc_257_57_1287E640 (CInt(1), var_A0)
  loc_12878ED: var_A0.Enabled = CBool()
  loc_1287902: Set var_88 = Me.TopCtrl1
  loc_1287908: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000A()
  loc_128791C: Set var_9C = Me.Head
  loc_1287922: Call 0.Method_Proc_257_57_1287E640 (CInt(2), var_A0)
  loc_128792A: var_A0.Enabled = CBool()
  loc_128793F: Set var_88 = Me.TopCtrl1
  loc_1287945: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1287959: Set var_9C = Me.Head
  loc_128795F: Call 0.Method_Proc_257_57_1287E640 (CInt(3), var_A0)
  loc_1287967: var_A0.Enabled = CBool()
  loc_128797C: Set var_88 = Me.TopCtrl1
  loc_1287982: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030004()
  loc_1287996: Set var_9C = Me.Head
  loc_128799C: Call 0.Method_Proc_257_57_1287E640 (CInt(4), var_A0)
  loc_12879A4: var_A0.Enabled = CBool()
  loc_12879B9: Set var_88 = Me.TopCtrl1
  loc_12879BF: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030003()
  loc_12879D3: Set var_9C = Me.Head
  loc_12879D9: Call 0.Method_Proc_257_57_1287E640 (CInt(5), var_A0)
  loc_12879E1: var_A0.Enabled = CBool()
  loc_12879F6: Set var_88 = Me.TopCtrl1
  loc_12879FC: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030002()
  loc_1287A10: Set var_9C = Me.Head
  loc_1287A16: Call 0.Method_Proc_257_57_1287E640 (CInt(6), var_A0)
  loc_1287A1E: var_A0.Enabled = CBool()
  loc_1287A3B: Me.FrameGrpItem.Enabled = True
  loc_1287A47: Set var_88 = Me.TopCtrl1
  loc_1287A4D: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1287A62: If ( = "Add") Then
  loc_1287A72:   Set var_88 = Me.CmFgrid
  loc_1287A78:   Call 0.Method_Proc_257_57_1287E640 (CInt(2), var_9C)
  loc_1287A80:   var_9C.Enabled = True
  loc_1287A99:   Set var_88 = Me.CmFgrid
  loc_1287A9F:   Call 0.Method_Proc_257_57_1287E640 (CInt(4), var_9C)
  loc_1287AA7:   var_9C.Enabled = True
  loc_1287AC0:   Set var_88 = Me.CmFgrid
  loc_1287AC6:   Call 0.Method_Proc_257_57_1287E640 (CInt(3), var_9C)
  loc_1287ACE:   var_9C.Enabled = True
  loc_1287AE7:   Set var_88 = Me.CmFgrid
  loc_1287AED:   Call 0.Method_Proc_257_57_1287E640 (CInt(5), var_9C)
  loc_1287AF5:   var_9C.Enabled = True
  loc_1287B0D:   Me.CmdDiscount.Enabled = True
  loc_1287B21:   Me.CmdTax.Enabled = True
  loc_1287B35:   Me.CmdAddition.Enabled = True
  loc_1287B49:   Me.CmdAdvance.Enabled = True
  loc_1287B5D:   Me.FrameGrpItem.Enabled = True
  loc_1287B71:   Me.CmdBookDetails.Enabled = True
  loc_1287B7C: Else
  loc_1287B80:   Set var_88 = Me.TopCtrl1
  loc_1287B86:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1287B9B:   If ( = "Edit") Then
  loc_1287BAB:     Set var_88 = Me.CmFgrid
  loc_1287BB1:     Call 0.Method_Proc_257_57_1287E640 (CInt(2), var_9C)
  loc_1287BB9:     var_9C.Enabled = True
  loc_1287BD2:     Set var_88 = Me.CmFgrid
  loc_1287BD8:     Call 0.Method_Proc_257_57_1287E640 (CInt(4), var_9C)
  loc_1287BE0:     var_9C.Enabled = True
  loc_1287BF9:     Set var_88 = Me.CmFgrid
  loc_1287BFF:     Call 0.Method_Proc_257_57_1287E640 (CInt(3), var_9C)
  loc_1287C07:     var_9C.Enabled = True
  loc_1287C20:     Set var_88 = Me.CmFgrid
  loc_1287C26:     Call 0.Method_Proc_257_57_1287E640 (CInt(5), var_9C)
  loc_1287C2E:     var_9C.Enabled = True
  loc_1287C46:     Me.CmdDiscount.Enabled = True
  loc_1287C5A:     Me.CmdTax.Enabled = True
  loc_1287C6E:     Me.CmdAddition.Enabled = True
  loc_1287C82:     Me.CmdAdvance.Enabled = True
  loc_1287C96:     Me.CmdBookDetails.Enabled = True
  loc_1287CA1:   Else
  loc_1287CA5:     Set var_88 = Me.TopCtrl1
  loc_1287CAB:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1287CC0:     If ( = "Browse") Then
  loc_1287CCE:       If (global_88 <> "Y") Then
  loc_1287CDE:         Set var_88 = Me.Head
  loc_1287CE4:         Call 0.Method_Proc_257_57_1287E640 (CInt(0), var_9C)
  loc_1287CEC:         var_9C.Enabled = True
  loc_1287CFB:       Else
  loc_1287D08:         Set var_88 = Me.Head
  loc_1287D0E:         Call 0.Method_Proc_257_57_1287E640 (CInt(0), var_9C)
  loc_1287D16:         var_9C.Enabled = False
  loc_1287D22:       End If
  loc_1287D2F:       Set var_88 = Me.CmFgrid
  loc_1287D35:       Call 0.Method_Proc_257_57_1287E640 (CInt(2), var_9C)
  loc_1287D3D:       var_9C.Enabled = False
  loc_1287D56:       Set var_88 = Me.CmFgrid
  loc_1287D5C:       Call 0.Method_Proc_257_57_1287E640 (CInt(4), var_9C)
  loc_1287D64:       var_9C.Enabled = False
  loc_1287D7D:       Set var_88 = Me.CmFgrid
  loc_1287D83:       Call 0.Method_Proc_257_57_1287E640 (CInt(3), var_9C)
  loc_1287D8B:       var_9C.Enabled = False
  loc_1287DA4:       Set var_88 = Me.CmFgrid
  loc_1287DAA:       Call 0.Method_Proc_257_57_1287E640 (CInt(5), var_9C)
  loc_1287DB2:       var_9C.Enabled = False
  loc_1287DCA:       Me.CmdDiscount.Enabled = False
  loc_1287DDE:       Me.CmdTax.Enabled = False
  loc_1287DF2:       Me.CmdAddition.Enabled = False
  loc_1287E06:       Me.CmdAdvance.Enabled = False
  loc_1287E1A:       Me.FrameGrpItem.Enabled = False
  loc_1287E2E:       Me.CmdBookDetails.Enabled = False
  loc_1287E42:       Me.FrameQty.Visible = False
  loc_1287E56:       Me.FrCustInfo.Visible = False
  loc_1287E5E:       Call SSPMain_UnknownEvent_9()
  loc_1287E63:     End If
  loc_1287E63:   End If
  loc_1287E63: End If
  loc_1287E63: Exit Sub
End Sub

Public Sub Proc_257_58_122CB10
  'Data Table: 57AAE0
  Dim var_D0 As Variant
  Dim var_B0 As Variant
  Dim var_F0 As Variant
  Dim var_C0 As Variant
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_9A As Integer
  Dim var_144 As Variant
  Dim var_110 As Variant
  Dim s As Recordset15
  loc_122C602: var_D0 = False
  loc_122C61A: ).Visible = 0
  loc_122C621: var_D0 = False
  loc_122C639: ).Visible = 0
  loc_122C651: For var_F4 = 1 To CInt(Me.UBound): var_9E = var_F4 'Integer
  loc_122C657:   var_C0 = False
  loc_122C670:   ).Visible = var_9E
  loc_122C697:   Me..FrCustInfo.Unload )
  loc_122C6A5: Next var_F4 'Integer
  loc_122C6BB: For var_FC = 1 To CInt(I.UBound): var_9E = var_FC 'Integer
  loc_122C6C1:   var_C0 = False
  loc_122C6DA:   ).Visible = var_9E
  loc_122C701:   Me..FrCustInfo.Unload )
  loc_122C70F: Next var_FC 'Integer
  loc_122C722: var_F0 = CVar(s.Recordset15.RecordCount) 'Long
  loc_122C729: Proc_6_39_E7D3A0(var_110)
  loc_122C740: If (var_110 > 0) Then
  loc_122C749:   var_96 = (arg_18 + 1)
  loc_122C74E:   var_98 = 0
  loc_122C753:   var_9A = 0
  loc_122C770:   Proc_6_39_E7D3A0(var_110, CVar(s.Recordset15.RecordCount), var_9C, 1)
  loc_122C780:   For var_124 = var_98 To CInt(var_110): var_9A = var_124 'Integer
  loc_122C7A6:     Me..FrCustInfo.Load )
  loc_122C7C5:     If ((((var_9C - 1) Mod arg_18) <> 0) Or (var_9C = 1)) Then
  loc_122C7CE:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_122C7EB:       var_D0 = CVar((var_9C - 1)) 'Integer
  loc_122C802:       var_144 = (var_D0 + ).height)
  loc_122C81B:       ).top = var_9C
  loc_122C834:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_122C845:       var_110 = ).left
  loc_122C860:       ).left = var_9C
  loc_122C885:       ).Visible = var_9C
  loc_122C88F:       var_B0 = "Name"
  loc_122C8B4:       var_110 = CVar(Proc_6_38_E69628(CVar(s.Recordset15.Fields.Item(var_B0)), True, var_110, var_B0, var_144, ).top)) 'String
  loc_122C8CC:       ).CAPTION = var_9C
  loc_122C8DF:       var_B0 = "Code"
  loc_122C904:       var_110 = CVar(Proc_6_38_E69628(CVar(s.Recordset15.Fields.Item(var_B0)), var_110, var_B0, var_9C)) 'String
  loc_122C91C:       ).Tag = var_9C
  loc_122C937:       If (var_9C = (arg_18 * arg_10)) Then
  loc_122C94C:         var_94 = CVar(s.Recordset15.AbsolutePosition) 'Variant
  loc_122C950:         Exit For
  loc_122C953:       End If
  loc_122C956:     Else
  loc_122C961:       If ((var_9C Mod var_96) = var_98) Then
  loc_122C96B:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_122C989:         var_D0 = CVar((var_9C - arg_18)) 'Integer
  loc_122C9A0:         var_144 = (var_D0 + ).width)
  loc_122C9B9:         ).left = var_9C
  loc_122C9D3:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_122C9E4:         var_110 = ).top
  loc_122C9FF:         ).top = var_9C
  loc_122CA24:         ).Visible = var_9C
  loc_122CA2E:         var_B0 = "Name"
  loc_122CA53:         var_110 = CVar(Proc_6_38_E69628(CVar(s.Recordset15.Fields.Item(var_B0)), True, var_110, var_B0, var_144, ).left)) 'String
  loc_122CA6B:         ).CAPTION = var_9C
  loc_122CA7E:         var_B0 = "Code"
  loc_122CAA3:         var_110 = CVar(Proc_6_38_E69628(CVar(s.Recordset15.Fields.Item(var_B0)), var_110, var_B0, var_110)) 'String
  loc_122CABB:         ).Tag = var_9C
  loc_122CAD1:         var_9A = (var_9A + 1)
  loc_122CADB:         var_98 = (var_96 - var_9A)
  loc_122CADE:       End If
  loc_122CADE:     End If
  loc_122CAE1:     s.MoveNext
  loc_122CAFA:     If (s.AbsolutePosition = -3) Then
  loc_122CAFD:       GoTo loc_122CB08
  loc_122CB00:     End If
  loc_122CB03:   Next var_124 'Integer
  loc_122CB08:   ' Referenced from: 122CAFD
  loc_122CB08:   ' Referenced from: 122C950
  loc_122CB08: End If
  loc_122CB08: Proc_257_58_122CB10 = 
End Sub

Public Sub Proc_257_59_10C3974
  'Data Table: 57AAE0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_C0 As String
  Dim var_D0 As String
  Dim var_C8 As TextBox
  Dim unk_57AAE5 As Connection15
  Dim var_A0 As Recordset15
  Dim var_E4 As Variant
  Dim var_146 As Integer
  loc_10C36C0: On Error Goto loc_10C396C
  loc_10C36DA: If (Me.RecordCount <= 0) Then
  loc_10C36DD:   Exit Sub
  loc_10C36DE: End If
  loc_10C36E5: var_B8 = "SELECT     P.BNo as BookingNo,PD.SNo,P.CustName as CustomerName, I.Name as ItemName, P.BDate as BookingDate, " & "P.BTime as BookingTime, P.DDate as DeliveryDate, P.DTime as DeliveryTime, PD.Qty as Quantity, "
  loc_10C36F3: var_C0 = var_B8 & "PD.Rate, PD.Amount, P.Total ,Discount, P.Tax, P.Addition, P.Deduction,P.RoundOff, P.NetAmt as NetAmount, " & "PD.Remark, P.Site_Code FROM PackingOrder P INNER JOIN PackingOrderDetail  PD ON P.DocID = PD.DocID INNER JOIN "
  loc_10C36FA: var_D0 = var_C0 & "Voucher_Type V ON P.VType = V.V_Type AND P.LogSite_Code = V.LogSite_Code  INNER JOIN ItemMast I ON PD.ItemCode = I.Code where P.DocId='"
  loc_10C370B: Set var_C4 = Me.Txt
  loc_10C3711: Call 0.Method_Proc_257_59_10C39740 (CInt(4), var_C8)
  loc_10C3729: var_88 = var_D0 & var_C8.Text & "'"
  loc_10C374A: If (var_88 = vbNullString) Then
  loc_10C374D:   Exit Sub
  loc_10C374E: End If
  loc_10C3764: unk_57AAE5.Execute var_88, var_F4, -1
  loc_10C376F: Set var_A0 = var_C4
  loc_10C377E: var_B4 = var_A0.RecordCount
  loc_10C378C: If (var_B4 <= 0) Then
  loc_10C3795:   Call 0.Method_arg_50 (var_B8)
  loc_10C37B6:   MsgBox("** No Records Found to Print **", &H40, CVar(var_B8), var_124, var_144)
  loc_10C37C6:   Exit Sub
  loc_10C37C7: End If
  loc_10C37DD: Set var_C4 = var_A0 
  loc_10C37E9: var_146 = CreateFieldDefFile(var_C4, MemVar_1F950B4 & "\OrderBooking.ttx")
  loc_10C37F3: Set var_A0 = var_C4
  loc_10C37F9: var_E4 = CVar(var_146) 'Integer
  loc_10C37FC: var_9C = var_E4 'Variant
  loc_10C3818: var_B8 = MemVar_1F950B4 & "\OrderBooking.RPT"
  loc_10C3821: Call 0.Method_arg_1C (var_B8, var_E4, var_C4)
  loc_10C382C: MemVar_1F951E8 = var_C4
  loc_10C3847: Call 0.Method_arg_90 (var_C4, var_B4, var_AA, 1)
  loc_10C384F: Call 0.Method_arg_24 (var_146, &HFF)
  loc_10C385B: For var_14A =  To CInt(var_B4): var_C4 = var_14A 'Integer
  loc_10C3874:   Call 0.Method_arg_90 (var_C4, CLng(var_AA))
  loc_10C387C:   Call 0.Method_arg_20 (var_C8)
  loc_10C3884:   Call 0.Method_arg_30 (var_B8)
  loc_10C389E:   If (var_B8 = "Title") Then
  loc_10C38B4:     Call 0.Method_arg_90 (var_C4, CLng(var_AA))
  loc_10C38BC:     Call 0.Method_arg_20 (var_C8)
  loc_10C38C4:     Call 0.Method_arg_38 ("'Order Booking'")
  loc_10C38D0:   End If
  loc_10C38D3: Next var_14A 'Integer
  loc_10C38F1: Call 0.Method_arg_64 (var_C4, CVar(var_A0))
  loc_10C38F9: Call 0.Method_arg_2C (var_114)
  loc_10C3907: Call 0.Method_arg_150 (var_134)
  loc_10C3912: Call 0.Method_arg_50 (var_B8)
  loc_10C391C: Set var_C8 = Nothing
  loc_10C3936: Set var_C4 = MemVar_1F951E8 
  loc_10C3942: Proc_6_99_1484404(var_C4, 0, var_B8)
  loc_10C394D: MemVar_1F951E8 = var_C4
  loc_10C3960: Set var_A0 = Nothing
  loc_10C3968: Set var_B0 = Nothing
  loc_10C396B: Exit Sub
  loc_10C396C: ' Referenced from: 10C36C0
  loc_10C396C: Proc_6_60_E63754(&HFF)
  loc_10C3971: Exit Sub
End Sub

Public Sub Proc_257_60_DFCD08
  'Data Table: 57AAE0
  loc_DFCD04: Exit Sub
End Sub

Public Sub Proc_257_61_F116C0(arg_C, arg_10, arg_14) 'F116C0
  'Data Table: 57AAE0
  Dim var_A0 As String
  Dim unk_57AAE5 As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Variant
  loc_F115FA: If (arg_C = "ORDER") Then
  loc_F11618:   var_A0 = "Select Distinct DocId,VType,BNo From PackingOrderDetail Where ContraDocId='" & arg_10 & "'"
  loc_F11621:   unk_57AAE5.Execute var_A0, var_C0, -1
  loc_F11650:   If (var_C4.RecordCount > 0) Then
  loc_F11659:     Call 0.Method_arg_50 (var_A0)
  loc_F11680:     MsgBox(CVar("Can Not " & arg_14 & " The Record"), &H30, CVar(var_A0), var_E8, var_108)
  loc_F1169D:     Set var_8C = Nothing
  loc_F116A0:     Proc_257_61_F116C0 = 0
  loc_F116A6:   End If
  loc_F116A9: Else
  loc_F116AE:   Proc_257_61_F116C0 = &HFF
  loc_F116B4: End If
  loc_F116B9: Proc_257_61_F116C0 = &HFF
End Sub

Public Sub Proc_257_62_1569B30
  'Data Table: 57AAE0
  Dim Me As Recordset15
  Dim var_DC As String
  Dim var_E0 As String
  Dim var_F4 As String
  Dim var_EC As Variant
  Dim unk_57AAE5 As Connection15
  Dim var_8C As Recordset15
  Dim var_128 As Variant
  Dim var_D0 As Integer
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_17C As Variant
  Dim var_1EC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_24C As Variant
  Dim var_26C As Variant
  Dim var_E8 As Fields15
  Dim var_23C As Variant
  Dim var_18C As Variant
  Dim var_25C As Variant
  Dim var_1DC As Variant
  Dim var_118 As Variant
  Dim var_94 As Double
  Dim var_A4 As Double
  Dim var_9C As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_2C8 As Variant
  Dim var_2E8 As Variant
  Dim var_350 As Variant
  Dim var_CC As Long
  loc_1568AF4: On Error Goto loc_1569B28
  loc_1568B0E: If (Me.RecordCount <= 0) Then
  loc_1568B11:   Exit Sub
  loc_1568B12: End If
  loc_1568B19: var_DC = "SELECT     P.BNo as BookingNo,PD.SNo,P.CustName as CustomerName, I.Name as ItemName, P.BDate as BookingDate, " & "P.BTime as BookingTime, P.DDate as DeliveryDate, P.DTime as DeliveryTime, PD.Qty as Quantity, "
  loc_1568B20: var_E0 = var_DC & "PD.Rate, PD.Amount, P.Total,P.AdvAmt as Advance ,Discount, P.Tax, P.Addition, P.Deduction,P.RoundOff, P.NetAmt as NetAmount, "
  loc_1568B2E: var_F4 = var_E0 & "PD.Remark, P.Site_Code FROM PackingOrder P INNER JOIN PackingOrderDetail  PD ON P.DocID = PD.DocID INNER JOIN " & "Voucher_Type V ON P.VType = V.V_Type AND P.LogSite_Code = V.LogSite_Code  INNER JOIN ItemMast I ON PD.ItemCode = I.Code where P.DocId='"
  loc_1568B3F: Set var_E8 = Me.Txt
  loc_1568B45: Call 0.Method_Proc_257_62_1569B300 (CInt(4), var_EC)
  loc_1568B5D: var_88 = var_F4 & var_EC.Text & "' Order by PD.Sno"
  loc_1568B7E: If (var_88 = vbNullString) Then
  loc_1568B81:   Exit Sub
  loc_1568B82: End If
  loc_1568B98: unk_57AAE5.Execute var_88, var_118, -1
  loc_1568BA3: Set var_8C = var_E8
  loc_1568BC0: If (var_8C.RecordCount <= 0) Then
  loc_1568BC9:   Call 0.Method_arg_50 (var_DC)
  loc_1568BEA:   MsgBox("** No Records Found to Print **", &H40, CVar(var_DC), var_148, var_168)
  loc_1568BFA:   Exit Sub
  loc_1568BFB: End If
  loc_1568C08: MemVar_1F953CC = "K"
  loc_1568C0E: Close 1
  loc_1568C17: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1568C29: Call Proc_257_72_12950CC(1, 1, &H26, var_16C)
  loc_1568C70: var_D4 = Proc_6_45_EADFB8("PHONE NO." & Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, var_16C, var_16C), &H28), &H28)
  loc_1568CA9: var_168 = (38 - Len(Trim(var_D4)))
  loc_1568CDC: var_20C = (38 - Len(Trim(var_D4)))
  loc_1568D06: var_19C = (Chr(&HF) + Space(CLng((var_168 / 2))))
  loc_1568D10: var_1BC = (var_19C + CVar(var_D4))
  loc_1568D17: var_24C = (var_1BC + Space(CLng((var_20C / 2))))
  loc_1568D1E: var_26C = (var_24C + Chr(&H12))
  loc_1568D24: Print 1, var_26C
  loc_1568D47: var_D0 = (var_D0 + 1)
  loc_1568D71: Print 1, Proc_6_98_11AC34C("Booking Slip", "D", &H32)
  loc_1568D85: var_8C.MoveFirst
  loc_1568DB8: var_C8 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1568DC6: Print 1, vbNullString
  loc_1568DFF: Proc_6_39_E7D3A0(var_168, CVar(var_8C.Fields.Item("bookingno")), var_16C)
  loc_1568E91: var_1EC = ("Date : " + Format(CVar(var_8C.Fields.Item("Bookingdate")), "dd/mm/yy"))
  loc_1568E9A: var_20C = (Len(Trim(var_D4)) + " ")
  loc_1568EA4: var_24C = (var_20C + CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("BookingTime")), 1, 1)))
  loc_1568EBD: var_128 = (Chr(&HF) + "Order No. : ")
  loc_1568EC7: var_18C = (Trim(var_D4) + CVar(Proc_6_45_EADFB8(CStr(var_168), 5)))
  loc_1568ED1: var_26C = (Space(CLng((var_168 / 2))) + CVar(Proc_6_52_EAE084(CStr(var_24C), &H17)))
  loc_1568ED7: Print 1, var_26C
  loc_1568F67: var_128 = (Chr(&HF) + "Cust. Name: ")
  loc_1568F71: var_17C = (Trim(var_D4) + CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("CustomerName").Value), &H1C)))
  loc_1568F77: Print 1, CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("CustomerName").Value), &H1C))), 5))
  loc_156901D: var_18C = (Format(CVar(var_8C.Fields.Item("DeliveryDate")), "dd/mm/yy") + " ")
  loc_1569027: var_1DC = (Space(CLng(("dd/mm/yy" / 2))) + CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("DeliveryTime")), 1, 1)))
  loc_1569040: var_128 = (Chr(&HF) + "Del. Date : ")
  loc_156904A: var_20C = (Trim(var_D4) + CVar(Proc_6_45_EADFB8(CStr(Format(CVar(var_8C.Fields.Item("Bookingdate")), "dd/mm/yy")), &H14)))
  loc_1569050: Print 1, var_20C
  loc_1569095: var_128 = (Chr(&HF) + CVar(var_C8))
  loc_156909B: Print 1, Trim(var_D4)
  loc_15690F6: var_1BC = Space(1)
  loc_156913D: var_148 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_1569144: var_17C = (CVar(var_8C.Fields.Item("DeliveryDate")) + Space(1))
  loc_156914E: var_19C = (Format(CVar(var_8C.Fields.Item("DeliveryDate")), "dd/mm/yy") + CVar(Proc_6_52_EAE084("Qty", 5)))
  loc_1569155: var_1DC = (CVar(var_8C.Fields.Item("DeliveryTime")) + var_1BC)
  loc_156915F: var_20C = (Format(CVar(var_8C.Fields.Item("Bookingdate")), "dd/mm/yy") + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_1569166: var_23C = (var_20C + Space(1))
  loc_1569170: var_25C = (CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("BookingTime")), 1, 1)) + CVar(Proc_6_52_EAE084("Amount", 7)))
  loc_1569176: Print 1, CVar(Proc_6_52_EAE084(CStr(CVar(Proc_6_52_EAE084("Amount", 7))), &H17))
  loc_15691C6: var_128 = (Chr(&HF) + CVar(var_C8))
  loc_15691CC: Print 1, CVar(Proc_6_45_EADFB8("Item Name", &H13))
  loc_15691FF: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("Item Name", &H13)), CVar(var_8C.Fields.Item("Total")))
  loc_1569208: var_94 = CSng(CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_156923B: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("Item Name", &H13)), CVar(var_8C.Fields.Item("Tax")), var_94)
  loc_1569244: var_A4 = CSng(CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_1569277: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("Item Name", &H13)), CVar(var_8C.Fields.Item("Discount")), var_A4)
  loc_1569280: var_9C = CSng(CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_15692B3: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("Item Name", &H13)), CVar(var_8C.Fields.Item("NetAmount")), var_9C)
  loc_15692BC: var_AC = CSng(CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_15692EF: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("Item Name", &H13)), CVar(var_8C.Fields.Item("Advance")), var_AC)
  loc_15692F8: var_B4 = CSng(CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_156932B: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("Item Name", &H13)), CVar(var_8C.Fields.Item("Addition")), var_B4)
  loc_1569334: var_BC = CSng(CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_1569367: Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("Item Name", &H13)), CVar(var_8C.Fields.Item("RoundOff")), var_BC)
  loc_1569370: var_C4 = CSng(CVar(Proc_6_45_EADFB8("Item Name", &H13)))
  loc_156937D: ' Referenced from: 15695CA
  loc_156938C: If Not(var_8C.EOF) Then
  loc_156940B:   Proc_6_39_E7D3A0(var_1BC, CVar(var_8C.Fields.Item("Quantity")))
  loc_1569478:   Proc_6_39_E7D3A0(var_26C, CVar(var_8C.Fields.Item("Rate")), 1)
  loc_15694E5:   Proc_6_39_E7D3A0(var_310, CVar(var_8C.Fields.Item("Amount")), 1)
  loc_1569528:   var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)))
  loc_156952F:   var_18C = (Space(1) + Space(1))
  loc_1569539:   var_22C = (CVar(Proc_6_52_EAE084("Qty", 5)) + CVar(Proc_6_52_EAE084(CStr(Format(var_1BC, "0.00")), 5, 1)))
  loc_1569540:   var_24C = (Space(1) + Space(1))
  loc_156954A:   var_2C8 = (CVar(Proc_6_52_EAE084("Amount", 7)) + CVar(Proc_6_52_EAE084(CStr(Format(var_26C, "0.00")), 6, 1)))
  loc_1569551:   var_2E8 = (var_2C8 + Space(1))
  loc_156955B:   var_350 = (var_2E8 + CVar(Proc_6_52_EAE084(CStr(Format(var_310, "0.00")), 7, 1)))
  loc_1569561:   Print 1, var_350
  loc_15695C5:   var_8C.MoveNext
  loc_15695CA:   GoTo loc_156937D
  loc_15695CD: End If
  loc_15695E3: var_128 = (Chr(&HF) + CVar(var_C8))
  loc_15695E9: Print 1, var_8C.Fields.Item("ItemName").Value
  loc_1569650: var_148 = (Chr(&HF) + Space(&H11))
  loc_1569659: var_168 = (CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Total      : ")
  loc_1569663: var_1BC = (Space(1) + CVar(Proc_6_52_EAE084(CStr(Format(var_94, "0.00")), &HA, 1, 1)))
  loc_1569669: Print 1, var_1BC
  loc_1569690: If (var_9C > CDbl(0)) Then
  loc_15696ED:   var_148 = (Chr(&HF) + Space(&H11))
  loc_15696F6:   var_168 = (CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Discount   : ")
  loc_1569700:   var_1BC = (Space(1) + CVar(Proc_6_52_EAE084(CStr(Format(var_9C, "0.00")), &HA, 1, 1)))
  loc_1569706:   Print 1, var_1BC
  loc_1569726: End If
  loc_156972D: If (var_A4 > CDbl(0)) Then
  loc_156978A:   var_148 = (Chr(&HF) + Space(&H11))
  loc_1569793:   var_168 = (CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Tax        : ")
  loc_156979D:   var_1BC = (Space(1) + CVar(Proc_6_52_EAE084(CStr(Format(var_A4, "0.00")), &HA, 1, 1)))
  loc_15697A3:   Print 1, var_1BC
  loc_15697C3: End If
  loc_15697CA: If (var_BC > CDbl(0)) Then
  loc_1569827:   var_148 = (Chr(&HF) + Space(&H11))
  loc_1569830:   var_168 = (CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Addition   : ")
  loc_156983A:   var_1BC = (Space(1) + CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_1569840:   Print 1, var_1BC
  loc_1569860: End If
  loc_1569867: If (var_C4 > CDbl(0)) Then
  loc_15698C4:   var_148 = (Chr(&HF) + Space(&H11))
  loc_15698CD:   var_168 = (CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Round off  : ")
  loc_15698D7:   var_1BC = (Space(1) + CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1, 1)))
  loc_15698DD:   Print 1, var_1BC
  loc_15698FD: End If
  loc_1569904: If (var_AC > CDbl(0)) Then
  loc_1569961:   var_148 = (Chr(&HF) + Space(&H11))
  loc_156996A:   var_168 = (CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Net Amount : ")
  loc_1569974:   var_1BC = (Space(1) + CVar(Proc_6_52_EAE084(CStr(Format(var_AC, "0.00")), &HA, 1, 1)))
  loc_156997A:   Print 1, var_1BC
  loc_156999A: End If
  loc_15699B0: var_128 = (Chr(&HF) + CVar(var_C8))
  loc_15699B6: Print 1, Space(&H11)
  loc_15699CA: If (var_B4 > CDbl(0)) Then
  loc_1569A1C:   var_128 = (Chr(&HF) + "Advance Taken: ")
  loc_1569A26:   var_18C = (Space(&H11) + CVar(Proc_6_52_EAE084(CStr(Format(var_B4, "0.00")), &HA, 1, 1)))
  loc_1569A2C:   Print 1, Format(var_AC, "0.00")
  loc_1569A48: End If
  loc_1569A4D: Print 1, vbNullString
  loc_1569A76: var_128 = (Chr(&HF) + CVar(MemVar_1F95220))
  loc_1569A7D: var_168 = (Space(&H11) + Chr(&H12))
  loc_1569A83: Print 1, Format(var_B4, "0.00")
  loc_1569A9A: var_D0 = (var_D0 + 1)
  loc_1569AA2: Print 1, vbNullString
  loc_1569AAE: var_D0 = (var_D0 + 1)
  loc_1569AB3: Close 1
  loc_1569ABC: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1569ACC: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_1569AD7: Close 1
  loc_1569AE1: If (MemVar_1F953BC = "Y") Then
  loc_1569AFA:   var_CC = CLng(Shell("C:\reptmp\SBILL.PIF", 0))
  loc_1569B03: Else
  loc_1569B19:   var_CC = CLng(Shell("C:\reptmp\SBILL.BAT", 0))
  loc_1569B1F: End If
  loc_1569B24: Set var_8C = Nothing
  loc_1569B27: Exit Sub
  loc_1569B28: ' Referenced from: 1568AF4
  loc_1569B28: Proc_6_60_E63754(var_CC, var_CC, var_16C, var_16C)
  loc_1569B2D: Exit Sub
End Sub

Public Sub Proc_257_63_E3A140
  'Data Table: 57AAE0
  loc_E3A120: Set var_88 = Me.TopCtrl1
  loc_E3A126: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E3A13B: If ( = "Browse") Then
  loc_E3A13E:   Exit Sub
  loc_E3A13F: End If
  loc_E3A13F: Exit Sub
End Sub

Public Sub Proc_257_64_120371C
  'Data Table: 57AAE0
  Dim var_94 As Variant
  Dim var_C0 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_120326A: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_1203285: Me.FGrid.Top = CVar(CDbl(2130))
  loc_12032AB: Me.FrameFgrid.Top = CDbl(Me.FGrid.Top)
  loc_12032D8: Me.FrameGrpItem.Top = CDbl(Me.FGrid.Top)
  loc_12032EB: Set var_C0 = Me.FGrid
  loc_1203302: global_92 = CStr(CLng(var_C0.BackColor))
  loc_1203318: var_C0.Cols = 8
  loc_120331D: var_94 = 0
  loc_1203329: var_D4 = CVar(CLng(0)) 'Long
  loc_120332E: var_F4 = "SNo"
  loc_1203337: LateIdCallSt
  loc_1203342: var_94 = CVar(CLng(0)) 'Long
  loc_120334D: var_D4 = CVar(CInt(1)) 'Integer
  loc_1203354: LateIdCallSt
  loc_120335F: var_94 = CVar(CLng(0)) 'Long
  loc_1203364: var_D4 = &H15E
  loc_1203370: LateIdCallSt
  loc_1203378: var_94 = 0
  loc_1203384: var_D4 = CVar(CLng(1)) 'Long
  loc_1203389: var_F4 = "Item Code"
  loc_1203392: LateIdCallSt
  loc_120339D: var_94 = CVar(CLng(1)) 'Long
  loc_12033A8: var_D4 = CVar(CInt(1)) 'Integer
  loc_12033AF: LateIdCallSt
  loc_12033BA: var_94 = CVar(CLng(1)) 'Long
  loc_12033BF: var_D4 = 0
  loc_12033CB: LateIdCallSt
  loc_12033D3: var_94 = 0
  loc_12033DF: var_D4 = CVar(CLng(2)) 'Long
  loc_12033E4: var_F4 = "Item Code"
  loc_12033ED: LateIdCallSt
  loc_12033F8: var_94 = CVar(CLng(2)) 'Long
  loc_1203403: var_D4 = CVar(CInt(1)) 'Integer
  loc_120340A: LateIdCallSt
  loc_1203415: var_94 = CVar(CLng(2)) 'Long
  loc_120341A: var_D4 = &H3E8
  loc_1203426: LateIdCallSt
  loc_120342E: var_94 = 0
  loc_120343A: var_D4 = CVar(CLng(3)) 'Long
  loc_120343F: var_F4 = "Item Name"
  loc_1203448: LateIdCallSt
  loc_1203453: var_94 = CVar(CLng(3)) 'Long
  loc_120345E: var_D4 = CVar(CInt(1)) 'Integer
  loc_1203465: LateIdCallSt
  loc_1203470: var_94 = CVar(CLng(3)) 'Long
  loc_1203475: var_D4 = &H7D0
  loc_1203481: LateIdCallSt
  loc_1203489: var_94 = 0
  loc_1203495: var_D4 = CVar(CLng(4)) 'Long
  loc_120349A: var_F4 = "Remark"
  loc_12034A3: LateIdCallSt
  loc_12034AE: var_94 = CVar(CLng(4)) 'Long
  loc_12034B9: var_D4 = CVar(CInt(1)) 'Integer
  loc_12034C0: LateIdCallSt
  loc_12034CB: var_94 = CVar(CLng(4)) 'Long
  loc_12034D6: var_D4 = CVar(CInt(1)) 'Integer
  loc_12034DD: LateIdCallSt
  loc_12034E8: var_94 = CVar(CLng(4)) 'Long
  loc_12034ED: var_D4 = &H5DC
  loc_12034F9: LateIdCallSt
  loc_1203501: var_94 = 0
  loc_120350D: var_D4 = CVar(CLng(5)) 'Long
  loc_1203512: var_F4 = "Quantity"
  loc_120351B: LateIdCallSt
  loc_1203526: var_94 = CVar(CLng(5)) 'Long
  loc_1203531: var_D4 = CVar(CInt(7)) 'Integer
  loc_1203538: LateIdCallSt
  loc_1203543: var_94 = CVar(CLng(5)) 'Long
  loc_1203548: var_D4 = &H320
  loc_1203554: LateIdCallSt
  loc_120355C: var_94 = 0
  loc_1203568: var_D4 = CVar(CLng(6)) 'Long
  loc_120356D: var_F4 = "Rate"
  loc_1203576: LateIdCallSt
  loc_1203581: var_94 = CVar(CLng(6)) 'Long
  loc_120358C: var_D4 = CVar(CInt(1)) 'Integer
  loc_1203593: LateIdCallSt
  loc_120359E: var_94 = CVar(CLng(6)) 'Long
  loc_12035A9: var_D4 = CVar(CInt(1)) 'Integer
  loc_12035B0: LateIdCallSt
  loc_12035BB: var_94 = CVar(CLng(6)) 'Long
  loc_12035C0: var_D4 = &H320
  loc_12035CC: LateIdCallSt
  loc_12035D4: var_94 = 0
  loc_12035E0: var_D4 = CVar(CLng(7)) 'Long
  loc_12035E5: var_F4 = "Amount"
  loc_12035EE: LateIdCallSt
  loc_12035F9: var_94 = CVar(CLng(7)) 'Long
  loc_1203604: var_D4 = CVar(CInt(1)) 'Integer
  loc_120360B: LateIdCallSt
  loc_1203616: var_94 = CVar(CLng(7)) 'Long
  loc_1203621: var_D4 = CVar(CInt(1)) 'Integer
  loc_1203628: LateIdCallSt
  loc_1203633: var_94 = CVar(CLng(7)) 'Long
  loc_1203638: var_D4 = &H320
  loc_1203644: LateIdCallSt
  loc_120364E: Set var_C0 = Nothing 
  loc_120365E: Me.TxtTotal.Enabled = False
  loc_1203672: Me.TxtRndOff.Enabled = False
  loc_1203686: Me.TxtNetAmt.Enabled = False
  loc_120369A: Me.TxtDiscPer.Enabled = False
  loc_12036AE: Me.TxtDiscAmt.Enabled = False
  loc_12036C2: Me.TxtTaxPer.Enabled = False
  loc_12036D6: Me.TxtTaxAmt.Enabled = False
  loc_12036EA: Me.TxtAdd.Enabled = False
  loc_12036FE: Me.TxtDed.Enabled = False
  loc_1203712: Me.TxtAdvAmt.Enabled = False
  loc_120371A: Exit Sub
End Sub

Public Sub Proc_257_65_FF44E4
  'Data Table: 57AAE0
  Dim var_A0 As Variant
  Dim var_90 As Variant
  Dim var_8C As Variant
  loc_FF42F3: Set var_8C = Me.TxtMask
  loc_FF42F9: Call 0.Method_Proc_257_65_FF44E40 (0, var_90)
  loc_FF4301: var_90.Text = "__:__"
  loc_FF431C: Set var_8C = Me.TxtMask
  loc_FF4322: Call 0.Method_Proc_257_65_FF44E40 (1, var_90)
  loc_FF432A: var_90.Text = "__:__"
  loc_FF4344: Set var_8C = Me.Txt
  loc_FF434A: Call 0.Method_Proc_257_65_FF44E4C (var_B2, var_86)
  loc_FF435A: For var_B6 =  To CByte((var_B2 - 1)): CByte(0) = var_B6 'Byte
  loc_FF4370:   Set var_8C = Me.Txt
  loc_FF4376:   Call 0.Method_Proc_257_65_FF44E40 (CInt(var_86), var_90)
  loc_FF437E:   var_90.Text = vbNullString
  loc_FF439A:   Set var_8C = Me.Txt
  loc_FF43A0:   Call 0.Method_Proc_257_65_FF44E40 (CInt(var_86), var_90)
  loc_FF43A8:   var_90.Tag = vbNullString
  loc_FF43B7: Next var_B6 'Byte
  loc_FF43CA: Me.TxtTotal.Text = vbNullString
  loc_FF43DF: Me.TxtRndOff.Text = vbNullString
  loc_FF43F4: Me.TxtNetAmt.Text = vbNullString
  loc_FF4409: Me.TxtDiscPer.Text = vbNullString
  loc_FF441E: Me.TxtDiscAmt.Text = vbNullString
  loc_FF4433: Me.TxtTaxPer.Text = vbNullString
  loc_FF4448: Me.TxtTaxAmt.Text = vbNullString
  loc_FF445D: Me.TxtAdd.Text = vbNullString
  loc_FF4472: Me.TxtDed.Text = vbNullString
  loc_FF4487: Me.TxtAdvAmt.Text = vbNullString
  loc_FF44A2: Me.FGrid.Rows = 1
  loc_FF44AA: var_A0 = vbNullString
  loc_FF44B4: Set var_8C = Me.FGrid
  loc_FF44D8: Me.FGrid.FixedRows = 1
  loc_FF44E0: Exit Sub
End Sub

Public Sub Proc_257_66_EF24C4
  'Data Table: 57AAE0
  Dim var_90 As Variant
  loc_EF23FE: Set var_8C = Me.TxtMask
  loc_EF2404: Call 0.Method_Proc_257_66_EF24C40 (0, var_90)
  loc_EF240C: var_90.Enabled = False
  loc_EF2426: Set var_8C = Me.TxtMask
  loc_EF242C: Call 0.Method_Proc_257_66_EF24C40 (1, var_90)
  loc_EF2434: var_90.Enabled = False
  loc_EF244E: Set var_8C = Me.Txt
  loc_EF2454: Call 0.Method_Proc_257_66_EF24C4C (var_B2, var_86)
  loc_EF2464: For var_B6 =  To CByte((var_B2 - 1)): CByte(0) = var_B6 'Byte
  loc_EF2479:   Set var_8C = Me.Txt
  loc_EF247F:   Call 0.Method_Proc_257_66_EF24C40 (CInt(var_86), var_90)
  loc_EF2487:   var_90.Enabled = False
  loc_EF2496: Next var_B6 'Byte
  loc_EF24A9: Set var_8C = Me.Txt
  loc_EF24AF: Call 0.Method_Proc_257_66_EF24C40 (CInt(4), var_90)
  loc_EF24B7: var_90.Enabled = False
  loc_EF24C3: Exit Sub
End Sub

Public Sub Proc_257_67_10E7938
  'Data Table: 57AAE0
  Dim var_B4 As String
  Dim var_EC As Variant
  Dim var_B0 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_C8 As Fields15
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_10E7675: var_90 = CStr(Trim(global_132))
  loc_10E768F: var_B4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10E76C0: Set var_C8 = Me.Txt
  loc_10E76C6: Call 0.Method_Proc_257_67_10E79380 (CInt(1), var_CC, CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E76D5: Proc_6_7_F26918(var_DC, CVar(var_CC), var_130)
  loc_10E76DD: var_FC = -1 & var_DC 
  loc_10E76F1: Me.Txt.Execute CStr(var_FC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E76FC: Set var_8C = var_134
  loc_10E7738: If (var_8C.RecordCount > 0) Then
  loc_10E7777:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E77AB:     global_120 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E77D6:     var_CC = var_8C.Fields.Item("start_srl_no")
  loc_10E77EB:     var_DC = (var_CC.Value + 1)
  loc_10E77F4:     global_124 = CLng(var_DC)
  loc_10E7805:   End If
  loc_10E7805: End If
  loc_10E7830: var_B0 = Space((5 - Len(var_90)))
  loc_10E7838: var_EC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_CC.Value)
  loc_10E784C: var_FC = Space((5 - Len(global_120)))
  loc_10E7854: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_FC)
  loc_10E7861: var_130 = (var_FC & " Order By VP.Date_From DESC" + CVar(global_120))
  loc_10E787A: var_14C = Space((8 - Len(CStr(global_124))))
  loc_10E7882: var_15C = (var_130 + var_14C)
  loc_10E7891: var_17C = (var_15C + CVar(CStr(global_124)))
  loc_10E789C: global_112 = CStr(var_17C)
  loc_10E78D3: Set var_C8 = Me.Txt
  loc_10E78D9: Call 0.Method_Proc_257_67_10E79380 (CInt(4), var_CC)
  loc_10E78E1: var_CC.Text = global_112
  loc_10E7903: Set var_C8 = Me.Txt
  loc_10E7909: Call 0.Method_Proc_257_67_10E79380 (CInt(0), var_CC)
  loc_10E7911: var_CC.Text = CStr(global_124)
  loc_10E7926: var_88 = global_112
  loc_10E792E: Set var_8C = Nothing
  loc_10E7931: Proc_257_67_10E7938 = global_124
End Sub

Public Sub Proc_257_68_158A89C
  'Data Table: 57AAE0
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_100 As String
  Dim unk_57AAE5 As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As TextBox
  Dim var_BC As Variant
  Dim var_166 As Integer
  Dim var_124 As Variant
  Dim var_13C As Variant
  Dim var_110 As Variant
  Dim var_164 As Variant
  Dim var_178 As Variant
  Dim var_120 As Variant
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  Dim var_14C As Variant
  Dim var_88 As Recordset15
  Dim var_1B0 As Variant
  loc_158974C: On Error Goto loc_158A895
  loc_1589766: If (Me.RecordCount > 0) Then
  loc_15897BF:   unk_57AAE5.Execute CStr("Select P.* From PackingOrder P Where DocID='" & Me.Fields.Item("DocID").Value & "'"), var_120, -1
  loc_15897E7:   Set var_128 = var_124 
  loc_1589824:   Set var_124 = Me.Txt
  loc_158982A:   Call 0.Method_Proc_257_68_158A89C0 (CInt(4), var_12C)
  loc_1589832:   var_12C.Text = CStr(var_128.Fields.Item("DocID").Value)
  loc_1589881:   Set var_124 = Me.Txt
  loc_1589887:   Call 0.Method_Proc_257_68_158A89C0 (CInt(0), var_12C)
  loc_158988F:   var_12C.Text = CStr(var_128.Fields.Item("BNo").Value)
  loc_1589930:   var_100 = CStr(IIf(IsNull(CVar(var_128.Fields.Item("BDate"))), vbNullString, Format(CVar(var_128.Fields.Item("BDate")), "DD/MMM/YYYY")))
  loc_158993F:   Set var_160 = Me.Txt
  loc_1589945:   Call 0.Method_Proc_257_68_158A89C0 (CInt(1), var_164, var_100, 1)
  loc_158994D:   var_164.Text = 1
  loc_15899FD:   var_178 = CVar(CStr(IIf(IsNull(CVar(var_128.Fields.Item("BTime"))), vbNullString, Format(CVar(var_128.Fields.Item("BTime")), "hh:mm")))) 'String
  loc_1589A0C:   Set var_160 = Me.TxtMask
  loc_1589A12:   Call 0.Method_Proc_257_68_158A89C0 (CInt(0), var_164, var_178, 1)
  loc_1589A1A:   var_164.defaultText = 1
  loc_1589A65:   var_166 = IsNull(CVar(var_128.Fields.Item("DDate")))
  loc_1589AD7:   Set var_160 = Me.Txt
  loc_1589ADD:   Call 0.Method_Proc_257_68_158A89C0 (CInt(2), var_164, CStr(IIf(var_166, vbNullString, Format(CVar(var_128.Fields.Item("DDate")), "DD/MMM/YYYY"))), 1, 1)
  loc_1589AE5:   var_164.Text = var_166
  loc_1589B31:   var_166 = IsNull(CVar(var_128.Fields.Item("DTime")))
  loc_1589B4B:   var_12C = var_128.Fields.Item("DTime")
  loc_1589B7C:   var_14C = vbNullString
  loc_1589BA4:   Set var_160 = Me.TxtMask
  loc_1589BAA:   Call 0.Method_Proc_257_68_158A89C0 (CInt(1), var_164, CVar(CStr(IIf(var_166, var_14C, Format(CVar(var_12C), "hh:mm")))), 1, 1)
  loc_1589BB2:   var_164.defaultText = var_166
  loc_1589C0E:   Set var_124 = Me.Txt
  loc_1589C14:   Call 0.Method_Proc_257_68_158A89C0 (CInt(3), var_12C, CStr(var_128.Fields.Item("CustName").Value))
  loc_1589C1C:   var_12C.Text = var_166
  loc_1589C68:   Set var_124 = Me.Txt
  loc_1589C6E:   Call 0.Method_Proc_257_68_158A89C0 (CInt(6), var_12C)
  loc_1589C76:   var_12C.Text = Proc_6_38_E69628(CVar(var_128.Fields.Item("PhoneNo")), var_166)
  loc_1589CC0:   Set var_124 = Me.Txt
  loc_1589CC6:   Call 0.Method_Proc_257_68_158A89C0 (CInt(7), var_12C)
  loc_1589CCE:   var_12C.Text = Proc_6_38_E69628(CVar(var_128.Fields.Item("Addr1")))
  loc_1589D18:   Set var_124 = Me.Txt
  loc_1589D1E:   Call 0.Method_Proc_257_68_158A89C0 (CInt(8), var_12C)
  loc_1589D26:   var_12C.Text = Proc_6_38_E69628(CVar(var_128.Fields.Item("Addr2")))
  loc_1589D8B:   Me.TxtTotal.Text = CStr(Format(CVar(var_128.Fields.Item("Total")), "0.00"))
  loc_1589DF4:   Me.TxtDiscAmt.Text = CStr(Format(CVar(var_128.Fields.Item("Discount")), "0.00"))
  loc_1589E5D:   Me.TxtDiscPer.Text = CStr(Format(CVar(var_128.Fields.Item("DiscPer")), "0.00"))
  loc_1589EC6:   Me.TxtTaxAmt.Text = CStr(Format(CVar(var_128.Fields.Item("Tax")), "0.00"))
  loc_1589F2F:   Me.TxtTaxPer.Text = CStr(Format(CVar(var_128.Fields.Item("TaxPer")), "0.00"))
  loc_1589F98:   Me.TxtAdd.Text = CStr(Format(CVar(var_128.Fields.Item("Addition")), "0.00"))
  loc_158A001:   Me.TxtDed.Text = CStr(Format(CVar(var_128.Fields.Item("Deduction")), "0.00"))
  loc_158A06A:   Me.TxtRndOff.Text = CStr(Format(CVar(var_128.Fields.Item("RoundOff")), "0.00"))
  loc_158A0D3:   Me.TxtNetAmt.Text = CStr(Format(CVar(var_128.Fields.Item("NetAmt")), "0.00"))
  loc_158A13C:   Me.TxtAdvAmt.Text = CStr(Format(CVar(var_128.Fields.Item("AdvAmt")), "0.00"))
  loc_158A16E:   var_AC = var_128.Fields.Item("vType")
  loc_158A17F:   var_100 = CStr(var_AC.Value)
  loc_158A18D:   Set var_124 = Me.Txt
  loc_158A193:   Call 0.Method_Proc_257_68_158A89C0 (CInt(5), var_12C, var_100, 1, 1, 1, 1)
  loc_158A19B:   var_12C.Tag = 1
  loc_158A1D1:   Set var_98 = Me.Txt
  loc_158A1D7:   Call 0.Method_Proc_257_68_158A89C0 (CInt(5), var_AC, var_100, "Select Description,NCat From Voucher_type Where V_Type='", var_14C, -1, var_124)
  loc_158A1DF:   1 = var_AC.Tag
  loc_158A20C:   unk_57AAE5.Execute CStr(1 & Trim(CVar(var_100)) & "'"), 1, 1
  loc_158A217:   Set var_8C = var_124
  loc_158A247:   If (var_8C.RecordCount > 0) Then
  loc_158A283:     Set var_124 = Me.Txt
  loc_158A289:     Call 0.Method_Proc_257_68_158A89C0 (CInt(5), var_12C, CStr(var_8C.Fields.Item("Description").Value))
  loc_158A291:     var_12C.Text = 1
  loc_158A2C1:     var_AC = var_8C.Fields.Item("NCat")
  loc_158A2D8:     global_128 = CStr(var_AC.Value)
  loc_158A2EC:   Else
  loc_158A2FA:     Set var_98 = Me.Txt
  loc_158A300:     Call 0.Method_Proc_257_68_158A89C0 (CInt(5), var_AC)
  loc_158A308:     var_AC.Text = vbNullString
  loc_158A31A:     global_128 = vbNullString
  loc_158A31E:   End If
  loc_158A34F:   global_120 = CStr(var_128.Fields.Item("vPrefix").Value)
  loc_158A362:   Set var_128 = Nothing 
  loc_158A375:   Me.FGrid.Redraw = False
  loc_158A390:   Me.FGrid.Rows = 1
  loc_158A39A:   var_8E = 1
  loc_158A3B1:   var_DC = CVar("SELECT     PD.*,I.Code as Code, I.name  as  Name,I.DispCode as DispCode FROM         PackingOrderDetail PD  LEFT OUTER JOIN " & "ItemMast I ON PD.ItemCode = I.Code Where PD.Docid='") 'String
  loc_158A413:   unk_57AAE5.Execute CStr(var_DC & Me.Fields.Item("SearchCode").Value & "' and RestCode='" & CVar(pRestCode) & "'"), var_19C, -1
  loc_158A41E:   Set var_88 = var_124
  loc_158A454:   If (var_88.RecordCount > 0) Then
  loc_158A457:     ' Referenced from: 158A7D0
  loc_158A466:     If Not(var_88.EOF) Then
  loc_158A469:       var_A8 = vbNullString
  loc_158A473:       Set var_98 = Me.FGrid
  loc_158A488:       Set var_1A0 = Me.FGrid
  loc_158A48F:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_158A497:       var_EC = CVar(CLng(0)) 'Long
  loc_158A4A1:       var_BC = CVar(CStr(var_8E)) 'String
  loc_158A4A8:       LateIdCallSt
  loc_158A4B7:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_158A4BF:       var_110 = CVar(CLng(1)) 'Long
  loc_158A4EF:       var_DC = CVar(CStr(var_88.Fields.Item("Code").Value)) 'String
  loc_158A4F6:       LateIdCallSt
  loc_158A510:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_158A518:       var_110 = CVar(CLng(2)) 'Long
  loc_158A548:       var_DC = CVar(CStr(var_88.Fields.Item("DispCode").Value)) 'String
  loc_158A54F:       LateIdCallSt
  loc_158A569:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_158A571:       var_110 = CVar(CLng(3)) 'Long
  loc_158A5A1:       var_DC = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_158A5A8:       LateIdCallSt
  loc_158A5ED:       var_13C = CVar(CLng(var_8E)) 'Long
  loc_158A5F5:       var_1B0 = CVar(CLng(4)) 'Long
  loc_158A63E:       var_14C = CVar(CStr(IIf((IsNull(CVar(var_88.Fields.Item("Remark"))) = &HFF), vbNullString, CVar(var_88.Fields.Item("Remark"))))) 'String
  loc_158A645:       LateIdCallSt
  loc_158A683:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_158A68B:       var_13C = CVar(CLng(5)) 'Long
  loc_158A6B8:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0.000"))) 'String
  loc_158A6BF:       LateIdCallSt
  loc_158A6F5:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_158A6FD:       var_13C = CVar(CLng(6)) 'Long
  loc_158A72A:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_158A731:       LateIdCallSt
  loc_158A767:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_158A76F:       var_13C = CVar(CLng(7)) 'Long
  loc_158A79C:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_158A7A3:       LateIdCallSt
  loc_158A7BB:       Set var_1A0 = Nothing 
  loc_158A7C5:       var_8E = (var_8E + 1)
  loc_158A7CB:       var_88.MoveNext
  loc_158A7D0:       GoTo loc_158A457
  loc_158A7D3:     End If
  loc_158A7E6:     Me.FGrid.FixedRows = 1
  loc_158A7EE:   End If
  loc_158A7FC:   Me.FGrid.Redraw = True
  loc_158A80A:   If (var_8E = 1) Then
  loc_158A820:     Me.FGrid.Rows = 1
  loc_158A83D:     var_DC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_158A845:     Set var_AC = Me.FGrid
  loc_158A874:     Me.FGrid.FixedRows = 1
  loc_158A87C:   End If
  loc_158A87F: Else
  loc_158A87F:   Call Proc_257_65_FF44E4(FGrid.DispID_10000, var_DC, var_8E, var_1A0, var_120, 1, 1)
  loc_158A884: End If
  loc_158A889: Set var_88 = Nothing
  loc_158A891: Set var_8C = Nothing
  loc_158A894: Exit Sub
  loc_158A895: ' Referenced from: 158974C
  loc_158A895: Proc_6_60_E63754(var_13C, var_EC, var_1A0)
  loc_158A89A: Exit Sub
End Sub

Public Sub Proc_257_69_109B6F0
  'Data Table: 57AAE0
  Dim var_AC As Variant
  Dim var_D0 As TextBox
  Dim unk_57AAE5 As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_108 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D4 As String
  loc_109B461: Set var_9C = Me.TopCtrl1
  loc_109B467: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E(&HFF)
  loc_109B47C: If ( = "Add") Then
  loc_109B4AC:   Set var_9C = Me.Txt
  loc_109B4B2:   Call 0.Method_Proc_257_69_109B6F00 (CInt(4), var_D0, var_D4, "Select Count(*) From PackingOrder Where DocID='", var_BC, -1)
  loc_109B4D3:   unk_57AAE5.Execute var_E4 & var_D4 & "'", 0, var_F8
  loc_109B4E3:    = var_E4.Item()
  loc_109B4EB:    = var_F8.Value
  loc_109B518:   If (var_D0.Text.Fields > 0) Then
  loc_109B521:     Call 0.Method_arg_50 (var_D4)
  loc_109B542:     MsgBox("Duplicate booking No.", &H40, CVar(var_D4), var_118, var_128)
  loc_109B558:     Call Proc_257_67_10E7938(MemVar_1F95044)
  loc_109B56B:     Set var_9C = Me.Txt
  loc_109B571:     Call 0.Method_Proc_257_69_109B6F00 (CInt(4), var_D0)
  loc_109B579:     var_D0.Text = var_D4
  loc_109B58D:     Proc_257_69_109B6F0 = 0
  loc_109B593:   End If
  loc_109B593: End If
  loc_109B5B8: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_109B5C2:   var_AC = CVar(CLng(var_88)) 'Long
  loc_109B5CA:   var_108 = CVar(CLng(3)) 'Long
  loc_109B5EA:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_109B606:   If CBool(var_118 <> vbNullString) Then
  loc_109B60F:     var_150 = global_128
  loc_109B616:     var_AC = CVar(CLng(var_88)) 'Long
  loc_109B61E:     var_108 = CVar(CLng(5)) 'Long
  loc_109B64E:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_109B676:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_109B69C:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_109B6A8:       Set var_9C = Me.FGrid
  loc_109B6CC:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_109B6D9:       Proc_257_69_109B6F0 = 0
  loc_109B6DF:     End If
  loc_109B6DF:   End If
  loc_109B6E2: Next var_12C 'Integer
  loc_109B6E7: Proc_257_69_109B6F0 = 
End Sub

Public Sub Proc_257_70_F83054
  'Data Table: 57AAE0
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_244 As Double
  loc_F82F40: var_A8 = Me.FGrid.Row
  loc_F82F49: var_B8 = CVar(CLng(var_A8)) 'Long
  loc_F82F51: var_D8 = CVar(CLng(6)) 'Long
  loc_F82F89: var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F82F91: var_144 = CVar(CLng(5)) 'Long
  loc_F82FB3: var_244 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_F83010: LateIdCallSt
  loc_F83046: Call Proc_257_71_12AC278(var_A8, Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_244)), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)))
  loc_F8304E: Proc_257_70_F83054 = var_244
End Sub

Public Sub Proc_257_71_12AC278
  'Data Table: 57AAE0
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_168 As Double
  Dim var_120 As Variant
  Dim unk_57AAE5 As Connection15
  Dim var_9C As Recordset15
  loc_12ABC93: Me.TxtTotal.Text = "0.00"
  loc_12ABCC0: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_96 = var_B4 'Integer
  loc_12ABCE7:   var_C8 = CVar(CLng(var_96)) 'Long
  loc_12ABCEF:   var_E8 = CVar(CLng(7)) 'Long
  loc_12ABD30:   var_120 = CVar((Val(Me.TxtTotal.Text) + Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_12ABD4D:   Me.TxtTotal.Text = CStr(Format(var_120, "0.00"))
  loc_12ABD72: Next var_B4 'Integer
  loc_12ABDEE: Me.TxtDiscAmt.Text = CStr(Format(CVar(((Val(Me.TxtTotal.Text) * Val(Me.TxtDiscPer.Text)) / CDbl(&H64))), "0.00"))
  loc_12ABE15: Set var_A0 = Me.TxtTotal
  loc_12ABE89: var_B0 = CVar((((Val(var_A0.Text) - Val(Me.TxtDiscAmt.Text)) * Val(Me.TxtTaxPer.Text)) / CDbl(&H64))) 'Double
  loc_12ABEA6: Me.TxtTaxAmt.Text = CStr(Format(CVar(((Val(Me.TxtTotal.Text) * Val(Me.TxtDiscPer.Text)) / CDbl(&H64))), "0.00"))
  loc_12ABEEE: unk_57AAE5.Execute "Select  RoundOfftype from RoundOffSetting where logsite_code='" & MemVar_1F95078 & "'", CVar(((Val(Me.TxtTotal.Text) * Val(Me.TxtDiscPer.Text)) / CDbl(&H64))), -1
  loc_12ABEF9: Set var_9C = var_A0
  loc_12ABF1D: If (var_9C.RecordCount > 0) Then
  loc_12ABF3A:   var_168 = Val(Me.TxtTotal.Text)
  loc_12AC00E:   Proc_6_142_14A62A0(((((var_168 - Val(Me.TxtDiscAmt.Text)) - Val(Me.TxtDed.Text)) + Val(Me.TxtAdd.Text)) + Val(Me.TxtTaxAmt.Text)), CByte(0), CStr(Left(CVar(var_9C.Fields.Item("RoundOffType")), 1)), 2, Val(Me.TxtTaxAmt.Text), Val(Me.TxtAdd.Text), Val(Me.TxtDed.Text), Val(Me.TxtDiscAmt.Text))
  loc_12AC022:   Me.TxtRndOff.Text = CStr(var_168)
  loc_12AC053: Else
  loc_12AC06D:   var_168 = Val(Me.TxtTotal.Text)
  loc_12AC112:   Proc_6_142_14A62A0(((((var_168 - Val(Me.TxtDiscAmt.Text)) - Val(Me.TxtDed.Text)) + Val(Me.TxtAdd.Text)) + Val(Me.TxtTaxAmt.Text)), CByte(0), "S", 2, Val(Me.TxtTaxAmt.Text), Val(Me.TxtAdd.Text), Val(Me.TxtDed.Text), Val(Me.TxtDiscAmt.Text))
  loc_12AC126:   Me.TxtRndOff.Text = CStr(var_168)
  loc_12AC14B: End If
  loc_12AC225: var_B0 = CVar((((((Val(Me.TxtTotal.Text) - Val(Me.TxtDiscAmt.Text)) - Val(Me.TxtDed.Text)) + Val(Me.TxtAdd.Text)) + Val(Me.TxtTaxAmt.Text)) + Val(Me.TxtRndOff.Text))) 'Double
  loc_12AC242: Me.TxtNetAmt.Text = CStr(Format(CVar(var_9C.Fields.Item("RoundOffType")), "0.00"))
  loc_12AC272: Proc_257_71_12AC278 = 1
End Sub

Public Sub Proc_257_72_12950CC(arg_C, arg_10, arg_14) '12950CC
  'Data Table: 57AAE0
  Dim var_E8 As String
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_26C As Variant
  Dim unk_57AAE5 As Connection15
  Dim var_A0 As Recordset15
  Dim var_270 As Fields15
  Dim var_E4 As Variant
  Dim var_19C As Variant
  Dim var_24C As Variant
  Dim var_18C As Variant
  Dim var_D4 As Variant
  Dim arg_10 As Integer
  loc_1294B41: var_90 = vbNullString
  loc_1294B47: var_94 = vbNullString
  loc_1294B4D: var_98 = vbNullString
  loc_1294B53: var_9C = vbNullString
  loc_1294B5E: If (MemVar_1F953C4 = "Y") Then
  loc_1294B68:   var_E8 = vbNullString & "DATE "
  loc_1294B99:   var_8C = 1 & CStr(Format(MemVar_1F950EC, "dd/MM/yy"))
  loc_1294BAC: End If
  loc_1294BB4: If (MemVar_1F953C8 = "Y") Then
  loc_1294BC6:   var_D4 = "dd/MM/yy"
  loc_1294C18:   var_16C = (CVar(arg_14) - IIf((MemVar_1F953C4 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F950EC, var_D4)))), 0))
  loc_1294C3F:   var_1BC = (" PAGE NO " + Trim(Str(arg_C)))
  loc_1294C47:   var_1DC = (var_16C - Len(var_1BC))
  loc_1294C58:   var_20C = (CVar(var_8C) + Space(CLng(var_1DC)))
  loc_1294C61:   var_22C = (var_20C + " PAGE NO ")
  loc_1294C83:   var_26C = (var_22C + Trim(Str(arg_C)))
  loc_1294C88:   var_8C = CStr(var_26C)
  loc_1294CB5: End If
  loc_1294CEB: unk_57AAE5.Execute "Select R.HEADER1,R.HEADER2,R.COMPANYTITLE From DEPART R  Where R.CODE='" & pRestCode & "'", var_D4, -1
  loc_1294CF6: Set var_A0 = var_270
  loc_1294D0D: If (MemVar_1F953CC = "K") Then
  loc_1294D4C:   If (var_A0.Fields.Item("COMPANYTITLE").Value = "Y") Then
  loc_1294D59:     If (Len(MemVar_1F95130) <= &H28) Then
  loc_1294D72:       var_E4 = (CVar(var_90) + Chr(&HF))
  loc_1294D86:       var_13C = (Format(MemVar_1F950EC, Chr(&HF)) + Chr(&HE))
  loc_1294D9A:       var_16C = (0 + Chr(&H1B))
  loc_1294DAE:       var_19C = (var_16C + Chr(&H45))
  loc_1294DB8:       var_1BC = (Trim(Str(arg_C)) + CVar(MemVar_1F95130))
  loc_1294DCC:       var_1DC = (var_1BC + Chr(&H1B))
  loc_1294DE0:       var_20C = (var_1DC + Chr(&H46))
  loc_1294DF4:       var_24C = (var_20C + Chr(&HE))
  loc_1294E08:       var_26C = (Str(arg_C) + Chr(&H12))
  loc_1294E0D:       var_90 = CStr(var_26C)
  loc_1294E38:     Else
  loc_1294E4E:       var_E4 = (CVar(var_90) + Chr(&H12))
  loc_1294E62:       var_13C = (Format(MemVar_1F950EC, Chr(&H12)) + Chr(&HE))
  loc_1294E76:       var_16C = (0 + Chr(&HF))
  loc_1294E80:       var_18C = (var_16C + CVar(MemVar_1F95130))
  loc_1294E94:       var_1BC = (Chr(&H45) + Chr(&H12))
  loc_1294E99:       var_90 = CStr(var_1BC)
  loc_1294EB1:     End If
  loc_1294EB1:   End If
  loc_1294EC5:   If (var_A0.RecordCount > 0) Then
  loc_1294ED7:     var_270 = var_A0.Fields
  loc_1294F01:     If (Proc_6_38_E69628(CVar(var_270.Item("Header1")), var_270, 1) <> vbNullString) Then
  loc_1294F59:       var_94 = 1 & Proc_6_98_11AC34C(CStr(var_A0.Fields.Item("Header1").Value), "D", CInt(Val(CStr(arg_14))), var_94)
  loc_1294F71:     End If
  loc_1294FAA:     If (Proc_6_38_E69628(CVar(var_A0.Fields.Item("Header2")), 1) <> vbNullString) Then
  loc_1295002:       var_98 = var_98 & Proc_6_98_11AC34C(CStr(var_A0.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_129501A:     End If
  loc_129501A:   End If
  loc_129501A: End If
  loc_1295024: If (Len(var_8C) > 0) Then
  loc_129502C:   Print 1, var_8C
  loc_1295038:   arg_10 = (arg_10 + 1)
  loc_129503B: End If
  loc_1295045: If (Len(var_90) > 0) Then
  loc_129504D:   Print 1, var_90
  loc_1295059:   arg_10 = (arg_10 + 1)
  loc_129505C: End If
  loc_1295066: If (Len(var_94) > 0) Then
  loc_129506E:   Print 1, var_94
  loc_129507A:   arg_10 = (arg_10 + 1)
  loc_129507D: End If
  loc_1295087: If (Len(var_98) > 0) Then
  loc_129508F:   Print 1, var_98
  loc_129509B:   arg_10 = (arg_10 + 1)
  loc_129509E: End If
  loc_12950A8: If (Len(var_9C) > 0) Then
  loc_12950B0:   Print 1, var_9C
  loc_12950BC:   arg_10 = (arg_10 + 1)
  loc_12950BF: End If
  loc_12950C5: Proc_257_72_12950CC = arg_10
End Sub
