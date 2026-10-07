VERSION 5.00
Begin VB.Form GuestProfile
  Caption = "Guest Profile"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12195
  ClientHeight = 9435
  LockControls = -1  'True
  Begin CommandButton btnWebProfile
    Caption = "Web Profile"
    BackColor = &HFF8080&
    Left = 11625
    Top = 60
    Width = 1440
    Height = 375
    TabIndex = 205
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    WhatsThisHelpID = 1
    MaskColor = &HFF&
    UseMaskColor = -1  'True
    Style = 1
  End
  Begin CommandButton CmdDummyGuestProf
    Caption = "Dummy Guest Profile"
    BackColor = &HFF&
    Left = 13080
    Top = 60
    Width = 2145
    Height = 375
    TabIndex = 196
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &HFF&
    UseMaskColor = -1  'True
    Style = 1
  End
  Begin CommandButton btnAddGuestProf
    Caption = "Add Guest Profile"
    BackColor = &HC0FFC0&
    Left = 9480
    Top = 60
    Width = 2145
    Height = 375
    TabIndex = 190
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    WhatsThisHelpID = 1
    MaskColor = &HFF&
    UseMaskColor = -1  'True
    Style = 1
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12195
    Height = 450
    TabIndex = 202
  End
  Begin CommandButton Command1
    Caption = "Update"
    Left = 13785
    Top = 1740
    Width = 735
    Height = 855
    Visible = 0   'False
    TabIndex = 192
  End
  Begin Frame FrameFor
    Caption = "Frame1"
    BackColor = &HC0FFC0&
    Left = 9645
    Top = 6270
    Width = 11505
    Height = 7260
    Visible = 0   'False
    TabIndex = 93
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 72
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 1335
      Width = 1305
      Height = 255
      TabIndex = 183
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
    Begin CommandButton Cmd
      Caption = "Ca&ncel"
      Index = 8
      Left = 6870
      Top = 6525
      Width = 1425
      Height = 375
      TabIndex = 76
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
      Caption = "&Edit"
      Index = 7
      Left = 2550
      Top = 6525
      Width = 1425
      Height = 375
      TabIndex = 73
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
      Caption = "&Add"
      Index = 6
      Left = 1110
      Top = 6525
      Width = 1425
      Height = 375
      TabIndex = 72
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
      Caption = "Print Form C"
      Index = 5
      Left = 9750
      Top = 6525
      Width = 1425
      Height = 375
      Visible = 0   'False
      TabIndex = 78
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
      Caption = "&Close"
      Index = 4
      Left = 8310
      Top = 6525
      Width = 1425
      Height = 375
      TabIndex = 77
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
      Caption = "&Delete"
      Index = 2
      Left = 3990
      Top = 6525
      Width = 1425
      Height = 375
      TabIndex = 74
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
      Caption = "Con&firm"
      Index = 3
      Left = 5430
      Top = 6525
      Width = 1425
      Height = 375
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
    Begin CommandButton Cmd
      Caption = "<"
      Index = 0
      Left = 1365
      Top = 885
      Width = 300
      Height = 360
      TabIndex = 182
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton Cmd
      Caption = ">"
      Index = 1
      Left = 1665
      Top = 885
      Width = 300
      Height = 360
      TabIndex = 181
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox Txt
      Index = 71
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 930
      Width = 360
      Height = 270
      Enabled = 0   'False
      Text = "1"
      TabIndex = 180
      BorderStyle = 0 'None
      Alignment = 2 'Center
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
      Index = 9
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 5640
      Width = 2505
      Height = 270
      TabIndex = 71
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
      Index = 14
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 5640
      Width = 2970
      Height = 585
      TabIndex = 63
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 100
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
      Index = 15
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 5370
      Width = 1605
      Height = 255
      TabIndex = 70
      BorderStyle = 0 'None
      MaxLength = 15
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
      Index = 64
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 4560
      Width = 1605
      Height = 255
      TabIndex = 59
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
      Index = 44
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 5100
      Width = 2265
      Height = 255
      TabIndex = 61
      BorderStyle = 0 'None
      MaxLength = 10
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
      Index = 45
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 5370
      Width = 2265
      Height = 255
      TabIndex = 62
      BorderStyle = 0 'None
      MaxLength = 15
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
      Index = 46
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 4830
      Width = 1020
      Height = 255
      TabIndex = 60
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
    Begin TextBox Txt
      Index = 47
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 4020
      Width = 2265
      Height = 255
      TabIndex = 57
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
      Index = 48
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 4290
      Width = 2265
      Height = 255
      TabIndex = 58
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
      Index = 49
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 3750
      Width = 2265
      Height = 255
      TabIndex = 56
      BorderStyle = 0 'None
      MaxLength = 15
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
      Index = 50
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 4830
      Width = 1605
      Height = 255
      TabIndex = 68
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
      Index = 51
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 4290
      Width = 1605
      Height = 255
      TabIndex = 66
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
      Index = 52
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 5100
      Width = 1605
      Height = 255
      TabIndex = 69
      BorderStyle = 0 'None
      MaxLength = 10
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
      Index = 53
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 4020
      Width = 2475
      Height = 255
      TabIndex = 65
      BorderStyle = 0 'None
      MaxLength = 15
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
      Index = 54
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 4560
      Width = 2475
      Height = 255
      TabIndex = 67
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
      Index = 55
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 3750
      Width = 1605
      Height = 255
      TabIndex = 64
      BorderStyle = 0 'None
      MaxLength = 10
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
      Index = 56
      BackColor = &HFFFFFF&
      Left = 7995
      Top = 2685
      Width = 2520
      Height = 255
      TabIndex = 54
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
      Index = 57
      BackColor = &HFFFFFF&
      Left = 4410
      Top = 2955
      Width = 4245
      Height = 255
      TabIndex = 55
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
      Index = 58
      BackColor = &HFFFFFF&
      Left = 7995
      Top = 2145
      Width = 2520
      Height = 255
      TabIndex = 51
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
      Index = 23
      BackColor = &HFFFFFF&
      Left = 5250
      Top = 2685
      Width = 1305
      Height = 255
      TabIndex = 53
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
      Index = 43
      BackColor = &HFFFFFF&
      Left = 7995
      Top = 1875
      Width = 2520
      Height = 255
      TabIndex = 50
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
      Index = 42
      BackColor = &HFFFFFF&
      Left = 7995
      Top = 2415
      Width = 2520
      Height = 255
      TabIndex = 52
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
      Index = 41
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 2685
      Width = 1650
      Height = 255
      TabIndex = 48
      BorderStyle = 0 'None
      MaxLength = 15
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
      Index = 40
      BackColor = &HFFFFFF&
      Left = 7995
      Top = 1605
      Width = 2520
      Height = 255
      TabIndex = 49
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
      Index = 39
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 1875
      Width = 3735
      Height = 255
      TabIndex = 45
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
      Index = 38
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 2145
      Width = 3735
      Height = 255
      TabIndex = 46
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
      Index = 37
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 2415
      Width = 3225
      Height = 255
      TabIndex = 47
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
      Index = 36
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 1605
      Width = 3735
      Height = 255
      TabIndex = 44
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
    Begin MSHFlexGrid FGrid
      Left = 435
      Top = 7095
      Width = 10155
      Height = 1275
      Visible = 0   'False
      TabIndex = 179
    End
    Begin Label LabelPass
      Caption = "Passport / Visa Details"
      Left = 4125
      Top = 345
      Width = 4065
      Height = 465
      TabIndex = 185
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 20.25
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Serial No."
      Index = 37
      ForeColor = &H0&
      Left = 435
      Top = 1350
      Width = 840
      Height = 240
      TabIndex = 184
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
    Begin Label Lbl
      Caption = "Issuing Authority"
      Index = 25
      ForeColor = &H0&
      Left = 6555
      Top = 5640
      Width = 1425
      Height = 240
      TabIndex = 148
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
    Begin Label Lbl
      Caption = "Extension"
      Index = 24
      ForeColor = &H0&
      Left = 435
      Top = 5715
      Width = 810
      Height = 240
      TabIndex = 147
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
    Begin Label Lbl
      Caption = "Work Permit No."
      Index = 23
      ForeColor = &H0&
      Left = 6555
      Top = 5370
      Width = 1410
      Height = 240
      TabIndex = 146
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
    Begin Label Lbl
      Caption = "Expiry Date"
      Index = 20
      ForeColor = &H0&
      Left = 435
      Top = 4530
      Width = 960
      Height = 240
      TabIndex = 145
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
    Begin Label Lbl
      Caption = "Mode of travel to be used"
      Index = 68
      ForeColor = &H0&
      Left = 435
      Top = 5370
      Width = 2190
      Height = 240
      TabIndex = 118
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
    Begin Label Lbl
      Caption = "Issue Place"
      Index = 67
      ForeColor = &H0&
      Left = 435
      Top = 4290
      Width = 960
      Height = 240
      TabIndex = 117
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
    Begin Label Lbl
      Caption = "Expiry Date"
      Index = 66
      ForeColor = &H0&
      Left = 6555
      Top = 4830
      Width = 960
      Height = 240
      TabIndex = 116
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
    Begin Label Lbl
      Caption = "Issue Date"
      Index = 65
      ForeColor = &H0&
      Left = 6555
      Top = 4290
      Width = 900
      Height = 240
      TabIndex = 115
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
    Begin Label Lbl
      Caption = "Duration of visa"
      Index = 64
      ForeColor = &H0&
      Left = 6555
      Top = 5100
      Width = 1335
      Height = 240
      TabIndex = 114
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
    Begin Label Lbl
      Caption = "Visa No."
      Index = 63
      ForeColor = &H0&
      Left = 6555
      Top = 4020
      Width = 705
      Height = 240
      TabIndex = 113
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
    Begin Label Lbl
      Caption = "Issue Place"
      Index = 62
      ForeColor = &H0&
      Left = 6555
      Top = 4560
      Width = 960
      Height = 240
      TabIndex = 112
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
    Begin Label Lbl
      Caption = "Proposed duration of stay in India"
      Index = 61
      ForeColor = &H0&
      Left = 435
      Top = 5100
      Width = 2880
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
    Begin Label Lbl
      Caption = "Visa Type"
      Index = 60
      ForeColor = &H0&
      Left = 6555
      Top = 3750
      Width = 840
      Height = 240
      TabIndex = 110
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
    Begin Label Lbl
      Caption = "Issue Date"
      Index = 59
      ForeColor = &H0&
      Left = 435
      Top = 4020
      Width = 900
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
    Begin Label Lbl
      Caption = "Age"
      Index = 58
      ForeColor = &H0&
      Left = 435
      Top = 4830
      Width = 330
      Height = 240
      TabIndex = 108
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
    Begin Label Lbl
      Caption = "Passport No."
      Index = 57
      ForeColor = &H0&
      Left = 435
      Top = 3750
      Width = 1080
      Height = 240
      TabIndex = 107
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
    Begin Label Lbl
      Caption = "Visa Details"
      Index = 56
      ForeColor = &H0&
      Left = 6555
      Top = 3435
      Width = 1125
      Height = 240
      TabIndex = 106
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
    Begin Label Lbl
      Caption = "Passport Details"
      Index = 55
      ForeColor = &H0&
      Left = 435
      Top = 3435
      Width = 1590
      Height = 240
      TabIndex = 105
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
    Begin Line Line1
      BorderColor = &H0&
      X1 = 390
      Y1 = 3330
      X2 = 10740
      Y2 = 3330
      BorderWidth = 2
    End
    Begin Label Lbl
      Caption = "Arr.From"
      Index = 54
      ForeColor = &H0&
      Left = 7035
      Top = 2685
      Width = 780
      Height = 240
      TabIndex = 104
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
    Begin Label Lbl
      Caption = "Address in India (Other than Tourist)"
      Index = 53
      ForeColor = &H0&
      Left = 1035
      Top = 2955
      Width = 3165
      Height = 240
      TabIndex = 103
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
    Begin Label Lbl
      Caption = "Mode of Travel"
      Index = 52
      ForeColor = &H0&
      Left = 6570
      Top = 2145
      Width = 1290
      Height = 240
      TabIndex = 102
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
    Begin Label Lbl
      Caption = "Date of Arrv.India"
      Index = 30
      ForeColor = &H0&
      Left = 3675
      Top = 2685
      Width = 1515
      Height = 240
      TabIndex = 101
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
    Begin Label Lbl
      Caption = "Destination"
      Index = 35
      ForeColor = &H0&
      Left = 6570
      Top = 1875
      Width = 945
      Height = 240
      TabIndex = 100
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
    Begin Label Lbl
      Caption = "Purpose of Visit"
      Index = 34
      ForeColor = &H0&
      Left = 6570
      Top = 2415
      Width = 1335
      Height = 240
      TabIndex = 99
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
    Begin Label Lbl
      Caption = "Occupation"
      Index = 33
      ForeColor = &H0&
      Left = 435
      Top = 2685
      Width = 945
      Height = 240
      TabIndex = 98
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
    Begin Label Lbl
      Caption = "ArrivingFrom"
      Index = 32
      ForeColor = &H0&
      Left = 6570
      Top = 1605
      Width = 1110
      Height = 240
      TabIndex = 97
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
    Begin Label Lbl
      Caption = "Address"
      Index = 31
      ForeColor = &H0&
      Left = 435
      Top = 1875
      Width = 690
      Height = 240
      TabIndex = 96
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
    Begin Label Lbl
      Caption = "Nationality"
      Index = 29
      ForeColor = &H0&
      Left = 435
      Top = 2415
      Width = 885
      Height = 240
      TabIndex = 95
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
    Begin Label Lbl
      Caption = "Name"
      Index = 27
      ForeColor = &H0&
      Left = 435
      Top = 1620
      Width = 495
      Height = 240
      TabIndex = 94
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
  Begin Frame FrmFind
    Caption = "Frame1"
    Left = 1590
    Top = 8100
    Width = 11610
    Height = 2145
    Visible = 0   'False
    TabIndex = 149
    BorderStyle = 0 'None
    Begin CommandButton cmdClose
      Caption = "&Close"
      Left = 6465
      Top = 1545
      Width = 1080
      Height = 420
      TabIndex = 150
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
    Begin CommandButton cmdFind
      Caption = "&Find"
      Left = 5385
      Top = 1545
      Width = 1080
      Height = 420
      TabIndex = 163
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &H8000000F&
    End
    Begin DataCombo TXT_GNAME
      Left = 2790
      Top = 420
      Width = 2985
      Height = 315
      TabIndex = 157
    End
    Begin DataCombo TXT_CITY
      Left = 7275
      Top = 420
      Width = 2985
      Height = 315
      TabIndex = 158
    End
    Begin DataCombo TXT_STATE
      Left = 2790
      Top = 750
      Width = 2985
      Height = 315
      TabIndex = 159
    End
    Begin DataCombo TXT_COUNTRY
      Left = 2790
      Top = 1080
      Width = 2985
      Height = 315
      TabIndex = 160
    End
    Begin DataCombo TXT_TYPE
      Left = 7275
      Top = 1080
      Width = 2985
      Height = 315
      TabIndex = 162
    End
    Begin DataCombo TXT_NATION
      Left = 7275
      Top = 750
      Width = 2985
      Height = 315
      TabIndex = 161
    End
    Begin DataCombo TXT_FOLIONO
      Left = 2790
      Top = 90
      Width = 2985
      Height = 315
      TabIndex = 194
    End
    Begin Label Lbl
      Caption = "Folio No."
      Index = 40
      ForeColor = &H0&
      Left = 1875
      Top = 135
      Width = 750
      Height = 240
      TabIndex = 195
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
    Begin Label Lbl
      Caption = "Name"
      Index = 81
      ForeColor = &H0&
      Left = 1875
      Top = 450
      Width = 495
      Height = 240
      TabIndex = 156
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
    Begin Label Lbl
      Caption = "Nationality"
      Index = 80
      ForeColor = &H0&
      Left = 5955
      Top = 795
      Width = 885
      Height = 240
      TabIndex = 155
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
    Begin Label Lbl
      Caption = "City"
      Index = 79
      ForeColor = &H0&
      Left = 5955
      Top = 495
      Width = 315
      Height = 240
      TabIndex = 154
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
    Begin Label Lbl
      Caption = "Country"
      Index = 78
      ForeColor = &H0&
      Left = 1875
      Top = 1110
      Width = 660
      Height = 240
      TabIndex = 153
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
    Begin Label Lbl
      Caption = "State"
      Index = 77
      ForeColor = &H0&
      Left = 1875
      Top = 780
      Width = 450
      Height = 240
      TabIndex = 152
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
    Begin Label Lbl
      Caption = "Country Type"
      Index = 75
      ForeColor = &H0&
      Left = 5955
      Top = 1125
      Width = 1140
      Height = 240
      TabIndex = 151
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
  Begin Frame FrmList1
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 16230
    Top = 2145
    Width = 1800
    Height = 2595
    Visible = 0   'False
    TabIndex = 177
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
    Begin ListView ListView1
      Left = 30
      Top = 30
      Width = 1725
      Height = 2520
      TabIndex = 178
    End
  End
  Begin TextBox Txt
    Index = 70
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 495
    Width = 840
    Height = 285
    Enabled = 0   'False
    Text = "Mr."
    TabIndex = 0
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
  Begin TextBox Txt
    Index = 69
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 5220
    Width = 3315
    Height = 285
    TabIndex = 21
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
    Index = 68
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4230
    Top = 4905
    Width = 600
    Height = 285
    TabIndex = 193
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
  Begin DataGrid DGGuestStatus
    Left = 6510
    Top = 7455
    Width = 4980
    Height = 2280
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 165
  End
  Begin DataGrid DGCity
    Left = 6570
    Top = 6810
    Width = 4980
    Height = 3135
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 169
  End
  Begin Frame FrmList
    Left = 13830
    Top = 3705
    Width = 2340
    Height = 1995
    Visible = 0   'False
    TabIndex = 166
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = -30
      Top = -15
      Width = 2325
      Height = 1965
      TabStop = 0   'False
      TabIndex = 167
    End
  End
  Begin DataGrid DGState
    Left = 6510
    Top = 6390
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 124
  End
  Begin DataGrid DGNationality
    Left = 7020
    Top = 7290
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 123
  End
  Begin DataGrid DGZipCode
    Left = 7080
    Top = 6270
    Width = 3615
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 164
  End
  Begin SSTab SSTab1
    Left = 6255
    Top = 2760
    Width = 5475
    Height = 2880
    TabIndex = 126
    Begin TextBox Txt
      Index = 8
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 345
      Width = 5130
      Height = 2490
      TabIndex = 201
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
      Index = 28
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 1920
      Width = 5145
      Height = 285
      TabIndex = 32
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
      Index = 24
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 2235
      Width = 5145
      Height = 285
      TabIndex = 33
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
      Index = 25
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 2550
      Width = 5145
      Height = 285
      Enabled = 0   'False
      TabIndex = 34
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
      Index = 26
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 975
      Width = 5145
      Height = 285
      TabIndex = 29
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
      Index = 27
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 660
      Width = 5145
      Height = 285
      TabIndex = 28
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
      Index = 29
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 345
      Width = 5145
      Height = 285
      TabIndex = 27
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
      Index = 63
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 1290
      Width = 5145
      Height = 285
      TabIndex = 30
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
      Index = 62
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 1605
      Width = 5145
      Height = 285
      TabIndex = 31
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
      Index = 61
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 1920
      Width = 5145
      Height = 285
      TabIndex = 41
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
      Index = 60
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 2235
      Width = 5145
      Height = 285
      TabIndex = 42
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
      Index = 59
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 2550
      Width = 5145
      Height = 285
      TabIndex = 43
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
      Index = 31
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 1605
      Width = 5145
      Height = 285
      TabIndex = 40
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
      Index = 32
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 1290
      Width = 5145
      Height = 285
      TabIndex = 39
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
      Index = 33
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 975
      Width = 5145
      Height = 285
      TabIndex = 38
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
      Index = 34
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 660
      Width = 5145
      Height = 285
      TabIndex = 37
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
      Index = 35
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 345
      Width = 5145
      Height = 285
      TabIndex = 36
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
    Begin Label LblT1Field2
      ForeColor = &H0&
      Left = 105
      Top = 945
      Width = 45
      Height = 240
      TabIndex = 142
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblT2Field7
      ForeColor = &H0&
      Left = -74895
      Top = 2310
      Width = 45
      Height = 240
      TabIndex = 141
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblT2Field6
      ForeColor = &H0&
      Left = -74895
      Top = 2040
      Width = 45
      Height = 240
      TabIndex = 140
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblT2Field8
      ForeColor = &H0&
      Left = -74895
      Top = 2580
      Width = 45
      Height = 240
      TabIndex = 139
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblT2Field4
      ForeColor = &H0&
      Left = -74895
      Top = 1485
      Width = 45
      Height = 240
      TabIndex = 138
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblT2Field1
      ForeColor = &H0&
      Left = -74895
      Top = 675
      Width = 45
      Height = 240
      TabIndex = 137
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblT2Field2
      ForeColor = &H0&
      Left = -74895
      Top = 945
      Width = 45
      Height = 240
      TabIndex = 136
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblT2Field3
      ForeColor = &H0&
      Left = -74895
      Top = 1215
      Width = 45
      Height = 240
      TabIndex = 135
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblT2Field5
      ForeColor = &H0&
      Left = -74895
      Top = 1770
      Width = 45
      Height = 240
      TabIndex = 134
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblT1Field7
      ForeColor = &H0&
      Left = 105
      Top = 2310
      Width = 45
      Height = 240
      TabIndex = 133
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblT1Field6
      ForeColor = &H0&
      Left = 105
      Top = 2040
      Width = 45
      Height = 240
      TabIndex = 132
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblT1Field8
      ForeColor = &H0&
      Left = 105
      Top = 2580
      Width = 45
      Height = 240
      TabIndex = 131
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblT1Field4
      ForeColor = &H0&
      Left = 105
      Top = 1485
      Width = 45
      Height = 240
      TabIndex = 130
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblT1Field1
      ForeColor = &H0&
      Left = 105
      Top = 675
      Width = 45
      Height = 240
      TabIndex = 129
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblT1Field3
      ForeColor = &H0&
      Left = 105
      Top = 1215
      Width = 45
      Height = 240
      TabIndex = 128
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblT1Field5
      ForeColor = &H0&
      Left = 105
      Top = 1770
      Width = 45
      Height = 240
      TabIndex = 127
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin DataGrid DGCountry
    Left = 6885
    Top = 6315
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 125
  End
  Begin CommandButton BtnVisa
    BackColor = &HFFC0C0&
    Left = 4875
    Top = 2715
    Width = 1305
    Height = 765
    TabIndex = 122
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "GuestProfile.frx":0
    Style = 1
  End
  Begin TextBox Txt
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 6165
    Width = 4665
    Height = 285
    TabIndex = 24
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
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 6480
    Width = 4665
    Height = 285
    TabIndex = 25
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
    Index = 16
    BackColor = &HFFFFFF&
    Left = 1515
    Top = 6795
    Width = 4665
    Height = 285
    Enabled = 0   'False
    TabIndex = 26
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
    Index = 30
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 12795
    Top = 5925
    Width = 4305
    Height = 255
    Visible = 0   'False
    TabIndex = 35
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
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 3015
    Width = 3315
    Height = 285
    Enabled = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 24
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
    ForeColor = &HC00000&
    Left = 1515
    Top = 4905
    Width = 1125
    Height = 285
    TabIndex = 20
    BorderStyle = 0 'None
    MaxLength = 20
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
    ForeColor = &HC00000&
    Left = 3810
    Top = 4590
    Width = 1020
    Height = 285
    TabIndex = 19
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
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 4590
    Width = 1125
    Height = 285
    Enabled = 0   'False
    TabIndex = 18
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
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 3960
    Width = 2235
    Height = 285
    TabIndex = 14
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
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 3645
    Width = 3315
    Height = 285
    Enabled = 0   'False
    TabIndex = 13
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 2700
    Width = 3315
    Height = 285
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 24
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
    ForeColor = &HC00000&
    Left = 1515
    Top = 3330
    Width = 3315
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4860
    Top = 2385
    Width = 1320
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 7
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
    Index = 20
    BackColor = &HFFFFFF&
    Left = 4875
    Top = 1755
    Width = 1305
    Height = 285
    Visible = 0   'False
    TabIndex = 6
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
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 2385
    Width = 3315
    Height = 285
    Enabled = 0   'False
    TabIndex = 8
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
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 2070
    Width = 3315
    Height = 285
    TabIndex = 7
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 1755
    Width = 3315
    Height = 285
    TabIndex = 5
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
    ForeColor = &HC00000&
    Left = 1515
    Top = 1440
    Width = 4665
    Height = 285
    TabIndex = 4
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 1125
    Width = 4665
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2385
    Top = 495
    Width = 3795
    Height = 285
    TabIndex = 1
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
    Index = 65
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3825
    Top = 4275
    Width = 1005
    Height = 285
    TabIndex = 17
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
    Index = 66
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 4275
    Width = 1125
    Height = 285
    Enabled = 0   'False
    TabIndex = 16
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
  Begin MSFlexGrid FGPoint
    Left = 6750
    Top = 6315
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 168
  End
  Begin TextBox Txt
    Index = 73
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4215
    Top = 3960
    Width = 615
    Height = 285
    TabIndex = 15
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
  Begin CommonDialog CDlg
  End
  Begin TextBox Txt
    Index = 74
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 5535
    Width = 3315
    Height = 285
    TabIndex = 22
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
  Begin MSHFlexGrid FGrid2
    Left = 900
    Top = 7380
    Width = 11490
    Height = 1995
    TabIndex = 188
  End
  Begin TextBox Txt
    Index = 75
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 810
    Width = 4665
    Height = 285
    TabIndex = 2
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
    Index = 76
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 5850
    Width = 3315
    Height = 285
    TabIndex = 23
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
    Index = 67
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7080
    Top = 5685
    Width = 4305
    Height = 285
    TabIndex = 172
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
  Begin CommandButton CmdRef
    Caption = "..."
    Left = 1170
    Top = 1770
    Width = 330
    Height = 285
    TabIndex = 199
    TabStop = 0   'False
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "To Print Settlement Details"
  End
  Begin Image GuestSign
    Left = 11595
    Top = 450
    Width = 3450
    Height = 1140
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
    ToolTipText = "Guest Sign"
  End
  Begin Label Lbl
    Caption = "Guest Signature"
    Index = 44
    ForeColor = &H0&
    Left = 12675
    Top = 1305
    Width = 1365
    Height = 240
    TabIndex = 206
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 11670
    Top = 2055
    Width = 2970
    Height = 285
    TabIndex = 204
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
    Left = 11685
    Top = 1845
    Width = 2700
    Height = 255
    TabIndex = 203
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
  Begin Image IdProofImage
    Left = 8130
    Top = 450
    Width = 3450
    Height = 2280
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
    ToolTipText = "Id Proof"
  End
  Begin Label Lbl
    Caption = "Father's Name"
    Index = 41
    ForeColor = &HC00000&
    Left = 105
    Top = 765
    Width = 1365
    Height = 240
    TabIndex = 197
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
  Begin Label lblGuestGolioDocid
    Caption = "Label1"
    Left = 13335
    Top = 3120
    Width = 375
    Height = 1455
    Visible = 0   'False
    TabIndex = 191
  End
  Begin Label lblmProf
    Left = 13335
    Top = 1800
    Width = 375
    Height = 1095
    Visible = 0   'False
    TabIndex = 189
  End
  Begin Label Lbl
    Caption = "Id Proof"
    Index = 39
    ForeColor = &HC00000&
    Left = 105
    Top = 5535
    Width = 750
    Height = 240
    TabIndex = 187
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
  Begin Image GuestImage
    Left = 6255
    Top = 450
    Width = 1860
    Height = 2280
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
    ToolTipText = "Guest"
  End
  Begin Label Lbl
    Caption = "Age"
    Index = 38
    ForeColor = &HC00000&
    Left = 3825
    Top = 3960
    Width = 375
    Height = 240
    TabIndex = 186
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
  Begin Label Lbl
    Caption = "Diplomat Id No"
    Index = 28
    ForeColor = &HC00000&
    Left = 105
    Top = 5220
    Width = 1410
    Height = 240
    TabIndex = 176
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
  Begin Label Lbl
    Caption = "Diplomat"
    Index = 26
    ForeColor = &HC00000&
    Left = 3315
    Top = 4905
    Width = 855
    Height = 240
    TabIndex = 175
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
  Begin Label Lbl
    Caption = "(Y/N)"
    Index = 17
    ForeColor = &H0&
    Left = 14625
    Top = 2775
    Width = 450
    Height = 240
    Visible = 0   'False
    TabIndex = 174
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
  Begin Label Lbl
    Caption = "PAN No"
    Index = 16
    ForeColor = &HC00000&
    Left = 6255
    Top = 5715
    Width = 720
    Height = 240
    TabIndex = 173
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
  Begin Label Lbl
    Caption = "(M/F/O)"
    Index = 15
    ForeColor = &HC00000&
    Left = 4845
    Top = 4290
    Width = 675
    Height = 240
    TabIndex = 171
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
  Begin Label Lbl
    Caption = "(M/U)"
    Index = 4
    ForeColor = &HC00000&
    Left = 2625
    Top = 4290
    Width = 480
    Height = 240
    TabIndex = 170
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
  Begin Label Lbl
    Caption = "Marital Status"
    Index = 19
    ForeColor = &HC00000&
    Left = 105
    Top = 4290
    Width = 1305
    Height = 240
    TabIndex = 144
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
  Begin Label Lbl
    Caption = "Gender"
    Index = 18
    ForeColor = &HC00000&
    Left = 3120
    Top = 4290
    Width = 705
    Height = 240
    TabIndex = 143
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
  Begin Label Lbl
    Caption = "Comments"
    Index = 21
    ForeColor = &HC00000&
    Left = 105
    Top = 6165
    Width = 1005
    Height = 240
    TabIndex = 121
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
  Begin Label Lbl
    Caption = "Contact Info."
    Index = 36
    ForeColor = &HC00000&
    Left = 13500
    Top = 5685
    Width = 1275
    Height = 240
    Visible = 0   'False
    TabIndex = 120
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
  Begin Label Lbl
    Caption = "Name"
    Index = 22
    ForeColor = &HC00000&
    Left = 11910
    Top = 5925
    Width = 480
    Height = 225
    Visible = 0   'False
    TabIndex = 119
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
  Begin Label Lbl
    Caption = "Id Proof Image"
    Index = 3
    ForeColor = &H0&
    Left = 9240
    Top = 2445
    Width = 1275
    Height = 240
    TabIndex = 92
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
  Begin Label Lbl
    Caption = "Guest Status"
    Index = 2
    ForeColor = &HC00000&
    Left = 105
    Top = 4905
    Width = 1185
    Height = 240
    TabIndex = 91
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
  Begin Label Lbl
    Caption = "Anniversary"
    Index = 1
    ForeColor = &HC00000&
    Left = 2670
    Top = 4575
    Width = 1125
    Height = 240
    TabIndex = 90
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
  Begin Label Lbl
    Caption = "Birth Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 105
    Top = 4605
    Width = 945
    Height = 240
    TabIndex = 89
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
  Begin Label Lbl
    Caption = "Nationality"
    Index = 14
    ForeColor = &HC00000&
    Left = 105
    Top = 3975
    Width = 1020
    Height = 240
    TabIndex = 88
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
  Begin Label Lbl
    Caption = "E-Mail"
    Index = 10
    ForeColor = &HC00000&
    Left = 105
    Top = 3660
    Width = 585
    Height = 240
    TabIndex = 87
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
  Begin Label Lbl
    Caption = "Mobile"
    Index = 8
    ForeColor = &HC00000&
    Left = 105
    Top = 2730
    Width = 645
    Height = 240
    TabIndex = 86
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
  Begin Label Lbl
    Caption = "Fax"
    Index = 9
    ForeColor = &HC00000&
    Left = 120
    Top = 3030
    Width = 360
    Height = 240
    TabIndex = 85
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
  Begin Label Lbl
    Caption = "Phone No(s)"
    Index = 7
    ForeColor = &HC00000&
    Left = 105
    Top = 3345
    Width = 1140
    Height = 240
    TabIndex = 84
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
  Begin Label Lbl
    Caption = "Country/Type"
    Index = 13
    ForeColor = &HC00000&
    Left = 90
    Top = 2385
    Width = 1260
    Height = 240
    TabIndex = 83
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
  Begin Label Lbl
    Caption = "State"
    Index = 12
    ForeColor = &HC00000&
    Left = 90
    Top = 2070
    Width = 495
    Height = 240
    TabIndex = 82
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
  Begin Label Lbl
    Caption = "City/Zip"
    Index = 11
    ForeColor = &HC00000&
    Left = 105
    Top = 1740
    Width = 705
    Height = 240
    TabIndex = 81
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
  Begin Label Lbl
    Caption = "Address"
    Index = 6
    ForeColor = &HC00000&
    Left = 105
    Top = 1110
    Width = 750
    Height = 240
    TabIndex = 80
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
  Begin Label Lbl
    Caption = "Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 105
    Top = 480
    Width = 555
    Height = 240
    TabIndex = 79
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
  Begin Label Lbl
    Caption = "Id Proof No"
    Index = 42
    ForeColor = &HC00000&
    Left = 105
    Top = 5850
    Width = 1065
    Height = 240
    TabIndex = 198
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
  Begin Label Lbl
    Caption = "Guest Image"
    Index = 43
    ForeColor = &H0&
    Left = 6645
    Top = 2445
    Width = 1080
    Height = 240
    TabIndex = 200
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
  Begin Menu Rmv
    Visible = 0   'False
    Caption = "Rmv"
    Begin Menu Remove
      Index = 0
      Caption = "Remove"
    End
  End
End

Attribute VB_Name = "GuestProfile"

Private MasterFormExit As Integer
Private global_68 As Integer
Private global_180 As Integer
Private global_164 As Long

Public Sub TXT_CITY_UnknownEvent_B(Index As Integer) 'E56B5C
  'Data Table: 5A238C
  loc_E56B26: If (CLng(Index) = &H2E) Then
  loc_E56B39:   Me.TXT_CITY.defText = vbNullString
  loc_E56B51:   Me.TXT_CITY.BoundText = vbNullString
  loc_E56B59: End If
  loc_E56B59: Exit Sub
End Sub

Public Sub TXT_COUNTRY_UnknownEvent_B(Index As Integer) 'E5763C
  'Data Table: 5A238C
  loc_E57606: If (CLng(Index) = &H2E) Then
  loc_E57619:   Me.TXT_COUNTRY.defText = vbNullString
  loc_E57631:   Me.TXT_COUNTRY.BoundText = vbNullString
  loc_E57639: End If
  loc_E57639: Exit Sub
  loc_E5763A: Set arg_1400 = 
End Sub

Private Sub CmdClose_Click() 'E15BD4
  'Data Table: 5A238C
  loc_E15BC8: Me.FrmFind.Visible = False
  loc_E15BD0: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_9 'FF9760
  'Data Table: 5A238C
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  Dim var_104 As MSHFlexGrid
  loc_FF956C: On Error Goto loc_FF9757
  loc_FF958E: If (CLng(Me.FGrid2.Col) = 0) Then
  loc_FF95B6:   For var_A0 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_86 = var_A0 'Integer
  loc_FF95DA:     If (CLng(var_86) = CLng(Me.FGrid2.Row)) Then
  loc_FF95F0:       Me.FGrid2.Col = 0
  loc_FF9608:       Me.FGrid2.CellFontName = "WINGDINGS"
  loc_FF9622:       Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_FF963D:       var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_FF9645:       var_D0 = CVar(CLng(0)) 'Long
  loc_FF964A:       var_F0 = "ü"
  loc_FF9654:       Set var_104 = Me.FGrid2
  loc_FF965A:       LateIdCallSt
  loc_FF967F:       var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_FF9687:       var_D0 = CVar(CLng(5)) 'Long
  loc_FF96AE:       Me.lblmProf.Caption = CStr(Me.FGrid2.TextMatrix))
  loc_FF96C9:     Else
  loc_FF96CD:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_FF96D5:       var_D0 = CVar(CLng(0)) 'Long
  loc_FF96DA:       var_F0 = vbNullString
  loc_FF96E4:       Set var_8C = Me.FGrid2
  loc_FF96EA:       LateIdCallSt
  loc_FF96F5:     End If
  loc_FF96F8:   Next var_A0 'Integer
  loc_FF96FD: End If
  loc_FF9710: var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_FF973E: Call Proc_24_88_EB88AC(Proc_6_38_E69628(CVar(CStr(Me.FGrid2.TextMatrix))), CVar(CLng(5))))
  loc_FF9756: Exit Sub
  loc_FF9757: ' Referenced from: FF956C
  loc_FF9757: Proc_6_60_E63754(var_B0)
  loc_FF975C: Exit Sub
  loc_FF975E: If ( And ) Then Exit Sub
  loc_FF975E: End If
End Sub

Public Sub FGrid2_UnknownEvent_A(Index As Integer) '10018B4
  'Data Table: 5A238C
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  Dim var_104 As MSHFlexGrid
  loc_10016B4: On Error Goto loc_10018AC
  loc_10016D6: If (CLng(Me.FGrid2.Col) = 0) Then
  loc_10016E3:   If (CLng(Index) = &H20) Then
  loc_100170B:     For var_A0 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_86 = var_A0 'Integer
  loc_100172F:       If (CLng(var_86) = CLng(Me.FGrid2.Row)) Then
  loc_1001745:         Me.FGrid2.Col = 0
  loc_100175D:         Me.FGrid2.CellFontName = "WINGDINGS"
  loc_1001777:         Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_1001792:         var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_100179A:         var_D0 = CVar(CLng(0)) 'Long
  loc_100179F:         var_F0 = "ü"
  loc_10017A9:         Set var_104 = Me.FGrid2
  loc_10017AF:         LateIdCallSt
  loc_10017D4:         var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_10017DC:         var_D0 = CVar(CLng(5)) 'Long
  loc_1001803:         Me.lblmProf.Caption = CStr(Me.FGrid2.TextMatrix))
  loc_100181E:       Else
  loc_1001822:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_100182A:         var_D0 = CVar(CLng(0)) 'Long
  loc_100182F:         var_F0 = vbNullString
  loc_1001839:         Set var_8C = Me.FGrid2
  loc_100183F:         LateIdCallSt
  loc_100184A:       End If
  loc_100184D:     Next var_A0 'Integer
  loc_1001852:   End If
  loc_1001852: End If
  loc_1001865: var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1001893: Call Proc_24_88_EB88AC(Proc_6_38_E69628(CVar(CStr(Me.FGrid2.TextMatrix))), CVar(CLng(5))))
  loc_10018AB: Exit Sub
  loc_10018AC: ' Referenced from: 10016B4
  loc_10018AC: Proc_6_60_E63754(var_B0)
  loc_10018B1: Exit Sub
End Sub

Public Sub FGrid2_UnknownEvent_E(Index As Integer) 'E2D608
  'Data Table: 5A238C
  loc_E2D5E2: If (Index = 2) Then
  loc_E2D5FD:   Call 0.Method_arg_2BC (Me.Rmv, var_98, var_A8)
  loc_E2D605: End If
  loc_E2D605: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_13 'E83A70
  'Data Table: 5A238C
  Dim var_A8 As Variant
  loc_E83A27: var_A8 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_E83A55: Call Proc_24_88_EB88AC(Proc_6_38_E69628(CVar(CStr(Me.FGrid2.TextMatrix))), CVar(CLng(5))))
  loc_E83A6D: Exit Sub
End Sub

Public Sub TXT_TYPE_UnknownEvent_B(Index As Integer) 'E56D2C
  'Data Table: 5A238C
  loc_E56CF6: If (CLng(Index) = &H2E) Then
  loc_E56D09:   Me.TXT_TYPE.defText = vbNullString
  loc_E56D21:   Me.TXT_TYPE.BoundText = vbNullString
  loc_E56D29: End If
  loc_E56D29: Exit Sub
End Sub

Public Sub TXT_NATION_UnknownEvent_B(Index As Integer) 'E565EC
  'Data Table: 5A238C
  loc_E565B6: If (CLng(Index) = &H2E) Then
  loc_E565C9:   Me.TXT_NATION.defText = vbNullString
  loc_E565E1:   Me.TXT_NATION.BoundText = vbNullString
  loc_E565E9: End If
  loc_E565E9: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5BA5C
  'Data Table: 5A238C
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5B97E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5B985:   Set var_A8 = Me.ListView
  loc_F5B9CF:   Set var_C0 = Me.Txt
  loc_F5B9D5:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5B9DD:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5B9FD: End If
  loc_F5BA09: Me.FrmList.Visible = False
  loc_F5BA39: Set var_9C = Me.Txt
  loc_F5BA3F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5BA47: var_A8.SetFocus
  loc_F5BA5B: Exit Sub
End Sub

Private Sub DGCountry_UnknownEvent_9 'F38D14
  'Data Table: 5A238C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F38C0B: Me.DGCountry.Visible = False
  loc_F38C2A: If (Me.RecordCount > 0) Then
  loc_F38C69:   Set var_B4 = Me.Txt
  loc_F38C6F:   Call 0.Method_DGCountry_UnknownEvent_90 (CInt(&H13), var_B8)
  loc_F38C77:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F38CAA:   var_B0 = Me.Fields.Item("Name")
  loc_F38CC9:   Set var_B4 = Me.Txt
  loc_F38CCF:   Call 0.Method_DGCountry_UnknownEvent_90 (CInt(&H13), var_B8)
  loc_F38CD7:   var_B8.Text = CStr(var_B0.Value)
  loc_F38CED: End If
  loc_F38CF8: Set var_A8 = Me.Txt
  loc_F38CFE: Call 0.Method_DGCountry_UnknownEvent_90 (CInt(&H13))
  loc_F38D06: var_B0.SetFocus
  loc_F38D12: Exit Sub
End Sub

Private Sub DGCountry_UnknownEvent_1F 'E7494C
  'Data Table: 5A238C
  loc_E7490A: Proc_6_153_E91D24(Me.DGCountry, arg_14)
  loc_E74921: Set var_8C = Me.FGPoint
  loc_E7493D: Proc_6_138_106E830(Me.DGCountry, global_96, CInt(&H13))
  loc_E7494B: Exit Sub
End Sub

Private Sub CmdRef_Click() 'EC7BA0
  'Data Table: 5A238C
  Dim Me As Recordset15
  Dim var_C4 As TextBox
  loc_EC7B04: Set var_88 = Me.TopCtrl1
  loc_EC7B0A: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_EC7B23: If (CStr() = "Browse") Then
  loc_EC7B26:   Exit Sub
  loc_EC7B27: End If
  loc_EC7B31: Set var_A0 = New FaCityMast
  loc_EC7B43: var_A0.OpenMode = 1
  loc_EC7B4D: var_A0.Caption = "City Master"
  loc_EC7B62: Form.Show 1, var_C0
  loc_EC7B72: Me.Requery -1
  loc_EC7B82: Set var_88 = Me.Txt
  loc_EC7B88: Call 0.Method_CmdRef_Click0 (CInt(6))
  loc_EC7B90: var_C4.SetFocus
  loc_EC7B9C: Exit Sub
End Sub

Private Sub DGGuestStatus_UnknownEvent_9 'F39AD4
  'Data Table: 5A238C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F399CB: Me.DGGuestStatus.Visible = False
  loc_F399EA: If (Me.RecordCount > 0) Then
  loc_F39A29:   Set var_B4 = Me.Txt
  loc_F39A2F:   Call 0.Method_DGGuestStatus_UnknownEvent_90 (CInt(7), var_B8)
  loc_F39A37:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F39A6A:   var_B0 = Me.Fields.Item("Name")
  loc_F39A89:   Set var_B4 = Me.Txt
  loc_F39A8F:   Call 0.Method_DGGuestStatus_UnknownEvent_90 (CInt(7), var_B8)
  loc_F39A97:   var_B8.Text = CStr(var_B0.Value)
  loc_F39AAD: End If
  loc_F39AB8: Set var_A8 = Me.Txt
  loc_F39ABE: Call 0.Method_DGGuestStatus_UnknownEvent_90 (CInt(7))
  loc_F39AC6: var_B0.SetFocus
  loc_F39AD2: Exit Sub
End Sub

Private Sub DGGuestStatus_UnknownEvent_1F 'E74D58
  'Data Table: 5A238C
  loc_E74D16: Proc_6_153_E91D24(Me.DGGuestStatus, arg_14)
  loc_E74D2D: Set var_8C = Me.FGPoint
  loc_E74D49: Proc_6_138_106E830(Me.DGGuestStatus, global_104, CInt(7))
  loc_E74D57: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_9 'F3B7B4
  'Data Table: 5A238C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3B6AB: Me.DGCity.Visible = False
  loc_F3B6CA: If (Me.RecordCount > 0) Then
  loc_F3B709:   Set var_B4 = Me.Txt
  loc_F3B70F:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(6), var_B8)
  loc_F3B717:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3B74A:   var_B0 = Me.Fields.Item("Name")
  loc_F3B769:   Set var_B4 = Me.Txt
  loc_F3B76F:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(6), var_B8)
  loc_F3B777:   var_B8.Text = CStr(var_B0.Value)
  loc_F3B78D: End If
  loc_F3B798: Set var_A8 = Me.Txt
  loc_F3B79E: Call 0.Method_DGCity_UnknownEvent_90 (CInt(6))
  loc_F3B7A6: var_B0.SetFocus
  loc_F3B7B2: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_1F 'E7400C
  'Data Table: 5A238C
  loc_E73FCA: Proc_6_153_E91D24(Me.DGCity, arg_14)
  loc_E73FE1: Set var_8C = Me.FGPoint
  loc_E73FFD: Proc_6_138_106E830(Me.DGCity, global_92, CInt(6))
  loc_E7400B: Exit Sub
End Sub

Private Sub DGNationality_UnknownEvent_9 'FB0AE0
  'Data Table: 5A238C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  loc_FB0963: Me.DGNationality.Visible = False
  loc_FB0982: If (Me.RecordCount > 0) Then
  loc_FB09DE:   Set var_CC = Me.Txt
  loc_FB09E4:   Call 0.Method_DGNationality_UnknownEvent_90 (CInt(Val(CStr(Me.DGNationality.Tag))), var_D0)
  loc_FB09EC:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FB0A10:   Set var_B4 = Me.DGNationality
  loc_FB0A26:   var_EC = Val(CStr(var_B4.Tag))
  loc_FB0A65:   Set var_CC = Me.Txt
  loc_FB0A6B:   Call 0.Method_DGNationality_UnknownEvent_90 (CInt(var_EC), var_D0, CStr(Me.Fields.Item("Name").Value))
  loc_FB0A73:   var_D0.Text = var_EC
  loc_FB0A93: End If
  loc_FB0A97: Set var_A8 = Me.DGNationality
  loc_FB0A9D: Call {C25E4434-8C28-414A-9B911155EADDC28A}.DispID_FFFFFF3C
  loc_FB0ABB: Set var_B0 = Me.Txt
  loc_FB0AC1: Call 0.Method_DGNationality_UnknownEvent_90 (CInt(Val(CStr(var_EC))), var_B4)
  loc_FB0AC9: var_B4.SetFocus
  loc_FB0ADD: Exit Sub
End Sub

Private Sub DGNationality_UnknownEvent_1F 'E75854
  'Data Table: 5A238C
  loc_E75812: Proc_6_153_E91D24(Me.DGNationality, arg_14)
  loc_E75829: Set var_8C = Me.FGPoint
  loc_E75845: Proc_6_138_106E830(Me.DGNationality, global_108, CInt(&H11))
  loc_E75853: Exit Sub
End Sub

Private Sub DGState_UnknownEvent_9 'F3A1B4
  'Data Table: 5A238C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3A0AB: Me.DGState.Visible = False
  loc_F3A0CA: If (Me.RecordCount > 0) Then
  loc_F3A109:   Set var_B4 = Me.Txt
  loc_F3A10F:   Call 0.Method_DGState_UnknownEvent_90 (CInt(&H12), var_B8)
  loc_F3A117:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3A14A:   var_B0 = Me.Fields.Item("Name")
  loc_F3A169:   Set var_B4 = Me.Txt
  loc_F3A16F:   Call 0.Method_DGState_UnknownEvent_90 (CInt(&H12), var_B8)
  loc_F3A177:   var_B8.Text = CStr(var_B0.Value)
  loc_F3A18D: End If
  loc_F3A198: Set var_A8 = Me.Txt
  loc_F3A19E: Call 0.Method_DGState_UnknownEvent_90 (CInt(&H12))
  loc_F3A1A6: var_B0.SetFocus
  loc_F3A1B2: Exit Sub
End Sub

Private Sub DGState_UnknownEvent_1F 'E75FD8
  'Data Table: 5A238C
  loc_E75F96: Proc_6_153_E91D24(Me.DGState, arg_14)
  loc_E75FAD: Set var_8C = Me.FGPoint
  loc_E75FC9: Proc_6_138_106E830(Me.DGState, global_100, CInt(&H12))
  loc_E75FD7: Exit Sub
End Sub

Private Sub DGZipCode_UnknownEvent_9 'EE524C
  'Data Table: 5A238C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE51A3: Me.DGZipCode.Visible = False
  loc_EE51C2: If (Me.RecordCount > 0) Then
  loc_EE51E2:   var_B0 = Me.Fields.Item("Name")
  loc_EE5201:   Set var_B4 = Me.Txt
  loc_EE5207:   Call 0.Method_DGZipCode_UnknownEvent_90 (CInt(&H14), var_B8)
  loc_EE520F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE5225: End If
  loc_EE5230: Set var_A8 = Me.Txt
  loc_EE5236: Call 0.Method_DGZipCode_UnknownEvent_90 (CInt(&H14))
  loc_EE523E: var_B0.SetFocus
  loc_EE524A: Exit Sub
End Sub

Private Sub DGZipCode_UnknownEvent_1F 'E7709C
  'Data Table: 5A238C
  loc_E7705A: Proc_6_153_E91D24(Me.DGZipCode, arg_14)
  loc_E77071: Set var_8C = Me.FGPoint
  loc_E7708D: Proc_6_138_106E830(Me.DGZipCode, global_112, CInt(&H14))
  loc_E7709B: Exit Sub
End Sub

Private Sub CmdFind_Click() '11B06C4
  'Data Table: 5A238C
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_90 As String
  Dim var_104 As String
  Dim MemVar_1F950E4 As String
  Dim unk_5A23BF As Connection15
  Dim var_8C As Recordset15
  Dim var_120 As String
  loc_11B02AC: On Error Goto loc_11B06BC
  loc_11B02C2: If (GuestCode <> vbNullString) Then
  loc_11B02CC:   var_C0 = CVar(var_88 & " And GUESTPROF.Code='") 'String
  loc_11B02E8:   var_D0 = var_C0 & Trim(CVar(GuestCode)) 
  loc_11B02F6:   var_88 = CStr(var_D0 & "'")
  loc_11B0309: Else
  loc_11B032C:   If (CStr(Me.TXT_FOLIONO.BoundText) <> vbNullString) Then
  loc_11B0356:     var_104 = var_88 & " And (GUESTPROF.Code='" & CStr(Me.TXT_FOLIONO.BoundText) & "' Or GUESTPROF.Code In (Select GuestProf From GuestFolioProfDetail Where mProf='"
  loc_11B0376:     var_88 = var_104 & CStr(Me.TXT_FOLIONO.BoundText) & "'))"
  loc_11B0396:   End If
  loc_11B0396: End If
  loc_11B03B9: If (CStr(Me.TXT_GNAME.BoundText) <> vbNullString) Then
  loc_11B03E3:   var_88 = var_88 & " And GUESTPROF.Name='" & CStr(Me.TXT_GNAME.Text) & "'"
  loc_11B03F5: End If
  loc_11B0418: If (CStr(Me.TXT_STATE.BoundText) <> vbNullString) Then
  loc_11B0442:   var_88 = var_88 & " And GUESTPROF.StateName='" & CStr(Me.TXT_STATE.Text) & "'"
  loc_11B0454: End If
  loc_11B0477: If (CStr(Me.TXT_CITY.BoundText) <> vbNullString) Then
  loc_11B04A1:   var_88 = var_88 & " And GUESTPROF.CityName='" & CStr(Me.TXT_CITY.Text) & "'"
  loc_11B04B3: End If
  loc_11B04D6: If (CStr(Me.TXT_COUNTRY.BoundText) <> vbNullString) Then
  loc_11B0500:   var_88 = var_88 & " And GUESTPROF.CountryName='" & CStr(Me.TXT_COUNTRY.Text) & "'"
  loc_11B0512: End If
  loc_11B0535: If (CStr(Me.TXT_NATION.BoundText) <> vbNullString) Then
  loc_11B055F:   var_88 = var_88 & " And GUESTPROF.Nationality='" & CStr(Me.TXT_NATION.Text) & "'"
  loc_11B0571: End If
  loc_11B0594: If (CStr(Me.TXT_TYPE.BoundText) <> vbNullString) Then
  loc_11B05A5:   Set var_F4 = Me.TXT_TYPE
  loc_11B05AB:   var_A0 = var_F4.Text
  loc_11B05BE:   var_88 = var_88 & " And GUESTPROF.Type='" & CStr(var_A0) & "'"
  loc_11B05D0: End If
  loc_11B05D7: var_90 = "Select Code As SearchCode,GUESTPROF.Name As Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GuestProf Left Join City on City.CityCode=GuestProf.City Where (GuestProf.LOGSITE_CODE='" & MemVar_1F95078
  loc_11B05EC: MemVar_1F950E4 = var_90 & "' or GuestProf.LOGSITE_CODE='HO') and GUESTPROF.Name is not null " & var_88 & " Order by GuestProf.Name"
  loc_11B060F: unk_5A23BF.Execute MemVar_1F950E4, var_A0, -1
  loc_11B0637: If (var_F4.RecordCount <= 0) Then
  loc_11B0640:   var_120 = "Information"
  loc_11B065B:   MsgBox("No Records To Search.", &H40, var_120, var_C0, var_D0)
  loc_11B066B:   Exit Sub
  loc_11B066C: End If
  loc_11B0672: Set var_F4 = Me.FrmFind
  loc_11B0678: var_F4.Visible = False
  loc_11B0686: MemVar_1F95120 = Me
  loc_11B0693: Proc_6_126_F1C850("3200,2500,2500,2400", var_F4)
  loc_11B06AE: Call 0.Method_arg_2B0 (1, var_120)
  loc_11B06B8: Set var_8C = Nothing
  loc_11B06BB: Exit Sub
  loc_11B06BC: ' Referenced from: 11B02AC
  loc_11B06BC: Proc_6_60_E63754(MemVar_1F950E4)
  loc_11B06C1: Exit Sub
End Sub

Private Sub Remove_Click() '1104CC8
  'Data Table: 5A238C
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_1104990: On Error Goto loc_1104C68
  loc_1104997: Set var_8C = Me.TopCtrl1
  loc_110499D: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_11049B6: If (CStr() = "Browse") Then
  loc_11049CC:   var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_11049D4:   var_D0 = CVar(CLng(0)) 'Long
  loc_11049EE:   var_A0 = CStr(Me.FGrid2.TextMatrix))
  loc_1104A07:   If (var_A0 = "ü") Then
  loc_1104A15:     var_F4 = "Info"
  loc_1104A32:     var_88 = CStr(MsgBox("Can't Remove Leader", &H40, var_F4, var_104, var_114))
  loc_1104A40:     Exit Sub
  loc_1104A41:   End If
  loc_1104A60:   If (CLng(Me.FGrid2.Rows) <> 2) Then
  loc_1104A76:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1104A7F:     Set var_E4 = Me.FGrid2
  loc_1104A9A:   Else
  loc_1104AAD:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1104AB5:     var_D0 = CVar(CLng(0)) 'Long
  loc_1104ABA:     var_124 = vbNullString
  loc_1104AC4:     Set var_E4 = Me.FGrid2
  loc_1104ACA:     LateIdCallSt
  loc_1104AEF:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1104AF7:     var_D0 = CVar(CLng(1)) 'Long
  loc_1104AFC:     var_124 = vbNullString
  loc_1104B06:     Set var_E4 = Me.FGrid2
  loc_1104B0C:     LateIdCallSt
  loc_1104B31:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1104B39:     var_D0 = CVar(CLng(2)) 'Long
  loc_1104B3E:     var_124 = vbNullString
  loc_1104B48:     Set var_E4 = Me.FGrid2
  loc_1104B4E:     LateIdCallSt
  loc_1104B73:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1104B7B:     var_D0 = CVar(CLng(3)) 'Long
  loc_1104B80:     var_124 = vbNullString
  loc_1104B8A:     Set var_E4 = Me.FGrid2
  loc_1104B90:     LateIdCallSt
  loc_1104BB5:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1104BBD:     var_D0 = CVar(CLng(4)) 'Long
  loc_1104BC2:     var_124 = vbNullString
  loc_1104BCC:     Set var_E4 = Me.FGrid2
  loc_1104BD2:     LateIdCallSt
  loc_1104BF7:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1104BFF:     var_D0 = CVar(CLng(5)) 'Long
  loc_1104C04:     var_124 = vbNullString
  loc_1104C0E:     Set var_E4 = Me.FGrid2
  loc_1104C14:     LateIdCallSt
  loc_1104C39:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1104C41:     var_D0 = CVar(CLng(6)) 'Long
  loc_1104C46:     var_124 = vbNullString
  loc_1104C50:     Set var_E4 = Me.FGrid2
  loc_1104C56:     LateIdCallSt
  loc_1104C68:   End If
  loc_1104C68:   ' Referenced from: 1104990
  loc_1104C68: End If
  loc_1104C70: Set var_8C = Err()
  loc_1104C76: Call 0.Method_arg_1C (var_138, var_E4, var_124, var_D0, var_B0, var_E4, var_124, var_D0)
  loc_1104C87: If (var_138 <> 0) Then
  loc_1104CA0:   Set var_8C = Err()
  loc_1104CA6:   Call 0.Method_arg_2C (var_A0, 0, var_F4, var_104, var_114, var_B0)
  loc_1104CB1:   MsgBox(CVar(var_A0), var_E4, var_124, var_D0, var_B0)
  loc_1104CC4: End If
  loc_1104CC4: Exit Sub
End Sub

Private Sub IdProofImage_DblClick() '105C28C
  'Data Table: 5A238C
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105C044: On Error Goto loc_105C22D
  loc_105C04B: Set var_88 = Me.TopCtrl1
  loc_105C051: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_105C065: Set var_A0 = Me.TopCtrl1
  loc_105C06B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005((CStr() <> "Add"))
  loc_105C091: If ( And (CStr() <> "Edit")) Then
  loc_105C094:   Exit Sub
  loc_105C095: End If
  loc_105C0A5: Me.CDlg.Filter = "*.*"
  loc_105C0BD: Me.CDlg.Action = 1
  loc_105C0CF: Me.CDlg.FileName = 
  loc_105C0D7: var_9C = CStr()
  loc_105C0E4: Me.IdProofImage.Tag = var_9C
  loc_105C100: Me.CDlg.FileName = 
  loc_105C108: var_B0 = CVar(CStr()) 'String
  loc_105C10E: var_E4 = Trim(var_B0)
  loc_105C117: Set var_A0 = Me.CDlg
  loc_105C11D: var_A0.FileName = 
  loc_105C13B: var_F4 = Right(var_E4, 3)
  loc_105C176: var_D4 = "AVI"
  loc_105C1A4: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105C1B5:   var_C4 = "Invalid Format"
  loc_105C1C0:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105C1D3: Else
  loc_105C1EA:   Set var_88 = Me.CDlg
  loc_105C1F0:   var_88.FileName = var_C4
  loc_105C1F8:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105C202:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105C217:   Me.IdProofImage.Picture = var_A0
  loc_105C22C: End If
  loc_105C22C: Exit Sub
  loc_105C22D: ' Referenced from: 105C044
  loc_105C235: Set var_88 = Err()
  loc_105C23B: Call 0.Method_arg_1C (var_1B0)
  loc_105C24C: If (var_1B0 <> 0) Then
  loc_105C265:   Set var_88 = Err()
  loc_105C26B:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105C276:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105C289: End If
  loc_105C289: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1521FC0
  'Data Table: 5A238C
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_9E As Integer
  Dim Me As Variant
  Dim var_B8 As Variant
  Dim var_90 As Variant
  Dim var_88 As Variant
  loc_1521066: Set var_88 = Me.Txt
  loc_152106C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_152107A: Proc_6_74_E23240(var_8C)
  loc_1521086: Call Proc_24_91_FD9D34(var_8C)
  loc_152108E: var_92 = Index
  loc_1521099: If Not (var_92 = CInt(4)) Then
  loc_15210A4:   If (var_92 = CInt(5)) Then
  loc_15210A7:   End If
  loc_15210B6:   Set var_88 = Me.Txt
  loc_15210BC:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15210C4:   var_8C.SelStart = 0
  loc_15210DD:   Set var_88 = Me.Txt
  loc_15210E3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15210EB:   var_98 = var_8C.Text
  loc_15210FE:   Set var_90 = Me.Txt
  loc_1521104:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_152110C:   var_9C.SelLength = Len(var_98)
  loc_152111F: End If
  loc_1521122: var_9E = Index
  loc_152112D: If (var_9E = CInt(6)) Then
  loc_1521147:   If (Me.RecordCount > 0) Then
  loc_1521155:     Set var_8C = Me.FGPoint
  loc_152116D:     Proc_6_137_1192FDC(Me.DGCity, global_92, Index)
  loc_152117B:   End If
  loc_15211C9:   Set var_88 = Me.Txt
  loc_15211CF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_15211D7:   var_8C = var_8C.Text
  loc_15211EF:   If (var_9E Or (var_98 = vbNullString)) Then
  loc_15211F2:     Exit Sub
  loc_15211F3:   End If
  loc_1521200:   Set var_88 = Me.Txt
  loc_1521206:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_152120E:   var_98 = var_8C.Text
  loc_1521220:   var_B8 = "Name"
  loc_152125B:   If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_1521264:     Me.MoveFirst
  loc_1521287:     Set var_88 = Me.Txt
  loc_152128D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1521295:     0 = var_8C.Text
  loc_15212AE:     Me.Find 1 & var_98 & "'", var_B8, var_92
  loc_15212C3:   End If
  loc_15212C6: Else
  loc_15212CE:   If (var_9E = CInt(&H12)) Then
  loc_15212E8:     If (Me.RecordCount > 0) Then
  loc_15212F6:       Set var_8C = Me.FGPoint
  loc_152130E:       Proc_6_137_1192FDC(Me.DGState, global_100)
  loc_152131C:     End If
  loc_152136A:     Set var_88 = Me.Txt
  loc_1521370:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1521378:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1521390:     If (Index Or (var_98 = vbNullString)) Then
  loc_1521393:       Exit Sub
  loc_1521394:     End If
  loc_15213A1:     Set var_88 = Me.Txt
  loc_15213A7:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15213AF:     var_98 = var_8C.Text
  loc_15213C1:     var_B8 = "Name"
  loc_15213FC:     If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_1521405:       Me.MoveFirst
  loc_1521428:       Set var_88 = Me.Txt
  loc_152142E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1521436:       0 = var_8C.Text
  loc_152144F:       Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1521464:     End If
  loc_1521467:   Else
  loc_152146F:     If (var_9E = CInt(&H13)) Then
  loc_1521489:       If (Me.RecordCount > 0) Then
  loc_1521497:         Set var_8C = Me.FGPoint
  loc_15214AF:         Proc_6_137_1192FDC(Me.DGCountry, global_96)
  loc_15214BD:       End If
  loc_152150B:       Set var_88 = Me.Txt
  loc_1521511:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1521519:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1521531:       If (Index Or (var_98 = vbNullString)) Then
  loc_1521534:         Exit Sub
  loc_1521535:       End If
  loc_1521542:       Set var_88 = Me.Txt
  loc_1521548:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1521550:       var_98 = var_8C.Text
  loc_1521562:       var_B8 = "Name"
  loc_152159D:       If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_15215A6:         Me.MoveFirst
  loc_15215C9:         Set var_88 = Me.Txt
  loc_15215CF:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_15215D7:         0 = var_8C.Text
  loc_15215F0:         Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1521605:       End If
  loc_1521608:     Else
  loc_1521610:       If (var_9E = CInt(&H14)) Then
  loc_152162A:         If (Me.RecordCount > 0) Then
  loc_1521638:           Set var_8C = Me.FGPoint
  loc_1521650:           Proc_6_137_1192FDC(Me.DGZipCode, global_112)
  loc_152165E:         End If
  loc_15216AC:         Set var_88 = Me.Txt
  loc_15216B2:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_15216BA:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15216D2:         If (Index Or (var_98 = vbNullString)) Then
  loc_15216D5:           Exit Sub
  loc_15216D6:         End If
  loc_15216E3:         Set var_88 = Me.Txt
  loc_15216E9:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15216F1:         var_98 = var_8C.Text
  loc_1521703:         var_B8 = "Name"
  loc_152171A:         var_9C = Me.Fields.Item(var_B8)
  loc_152173E:         If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_1521747:           Me.MoveFirst
  loc_152176A:           Set var_88 = Me.Txt
  loc_1521770:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1521778:           0 = var_8C.Text
  loc_1521791:           Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_15217A6:         End If
  loc_15217A9:       Else
  loc_15217B1:         If (var_9E = CInt(&HB)) Then
  loc_15217C1:           Set var_88 = Me.Txt
  loc_15217C7:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15217CF:           var_98 = var_8C.Text
  loc_15217E2:           Set var_90 = Me.Txt
  loc_15217E8:           Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_15217F0:           var_9C.SelStart = Len(var_98)
  loc_1521806:         Else
  loc_152180E:           If (var_9E = CInt(7)) Then
  loc_1521828:             If (Me.RecordCount > 0) Then
  loc_1521836:               Set var_8C = Me.FGPoint
  loc_152184E:               Proc_6_137_1192FDC(Me.DGGuestStatus, global_104)
  loc_152185C:             End If
  loc_15218AA:             Set var_88 = Me.Txt
  loc_15218B0:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_15218B8:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15218D0:             If (Index Or (var_98 = vbNullString)) Then
  loc_15218D3:               Exit Sub
  loc_15218D4:             End If
  loc_15218E1:             Set var_88 = Me.Txt
  loc_15218E7:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15218EF:             var_98 = var_8C.Text
  loc_1521901:             var_B8 = "Name"
  loc_152193C:             If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_1521945:               Me.MoveFirst
  loc_1521968:               Set var_88 = Me.Txt
  loc_152196E:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1521976:               0 = var_8C.Text
  loc_152198F:               Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_15219A4:             End If
  loc_15219A7:           Else
  loc_15219AF:             If Not (var_9E = CInt(&H11)) Then
  loc_15219BA:               If (var_9E = CInt(&H25)) Then
  loc_15219BD:               End If
  loc_15219D4:               If (Me.RecordCount > 0) Then
  loc_15219E2:                 Set var_8C = Me.FGPoint
  loc_15219FA:                 Proc_6_137_1192FDC(Me.DGNationality, global_108)
  loc_1521A08:               End If
  loc_1521A56:               Set var_88 = Me.Txt
  loc_1521A5C:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1521A64:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1521A7C:               If (Index Or (var_98 = vbNullString)) Then
  loc_1521A7F:                 Exit Sub
  loc_1521A80:               End If
  loc_1521A8D:               Set var_88 = Me.Txt
  loc_1521A93:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1521A9B:               var_98 = var_8C.Text
  loc_1521AAD:               var_B8 = "Name"
  loc_1521AC4:               var_9C = Me.Fields.Item(var_B8)
  loc_1521AE8:               If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_1521AF1:                 Me.MoveFirst
  loc_1521B14:                 Set var_88 = Me.Txt
  loc_1521B1A:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1521B22:                 0 = var_8C.Text
  loc_1521B3B:                 Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1521B50:               End If
  loc_1521B63:               Me.DGNationality.Tag = CVar(CStr(Index))
  loc_1521B7B:               Set var_88 = Me.Txt
  loc_1521B81:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1521BA0:               Me.DGNationality.Left = CVar(var_8C.Left)
  loc_1521BBB:               Set var_90 = Me.Txt
  loc_1521BC1:               Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_1521BDB:               Set var_88 = Me.Txt
  loc_1521BE1:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1521BF9:               var_B8 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_1521C08:               Me.DGNationality.Top = CVar(var_8C.Left)
  loc_1521C1D:             Else
  loc_1521C25:               If (var_9E = CInt(3)) Then
  loc_1521C35:                 ReDim var_10C(0 To 1)
  loc_1521C4C:                 var_10C(0) = "India"
  loc_1521C5B:                 var_10C(1) = "Foreign"
  loc_1521C72:                 global_120 = Array(var_10C)
  loc_1521C8C:                 Me.ListView.Tag = CVar(CStr(Index))
  loc_1521C9B:                 Set var_9C = Me.ListView
  loc_1521CB6:                 Set var_8C = Me.Txt
  loc_1521CD0:                 Set global_136 = Proc_6_66_F0048C(var_9C, var_8C, Index)
  loc_1521CEE:                 Set var_88 = Me.Txt
  loc_1521CF4:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1521CFC:                 global_120 = var_8C.Text
  loc_1521D0E:                 Set var_90 = Me.Txt
  loc_1521D14:                 Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_98)
  loc_1521D1C:                 var_9C.Tag = 2
  loc_1521D32:               Else
  loc_1521D3A:                 If (var_9E = CInt(&H4A)) Then
  loc_1521D4A:                   ReDim var_10C(0 To 7)
  loc_1521D61:                   var_10C(0) = "COMPANY ID"
  loc_1521D70:                   var_10C(1) = "DRIVING LICENCE"
  loc_1521D7F:                   var_10C(2) = "GREEN CARD"
  loc_1521D8E:                   var_10C(3) = "PAN CARD"
  loc_1521D9D:                   var_10C(4) = "PASSPORT"
  loc_1521DAC:                   var_10C(5) = "UIDAI/AADHAR CARD"
  loc_1521DBB:                   var_10C(6) = "VOTER ID"
  loc_1521DCA:                   var_10C(7) = "NA"
  loc_1521DE1:                   global_120 = Array(var_10C)
  loc_1521DFB:                   Me.ListView.Tag = CVar(CStr(Index))
  loc_1521E0A:                   Set var_9C = Me.ListView
  loc_1521E25:                   Set var_8C = Me.Txt
  loc_1521E3F:                   Set global_136 = Proc_6_66_F0048C(var_9C, var_8C, Index, global_120)
  loc_1521E5D:                   Set var_88 = Me.Txt
  loc_1521E63:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1521E6B:                   8 = var_8C.Text
  loc_1521E7D:                   Set var_90 = Me.Txt
  loc_1521E83:                   Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_98)
  loc_1521E8B:                   var_9C.Tag = global_120
  loc_1521EA1:                 Else
  loc_1521EA9:                   If (var_9E = CInt(&H46)) Then
  loc_1521EB9:                     ReDim var_10C(0 To 9)
  loc_1521ED0:                     var_10C(0) = "Mr."
  loc_1521EDF:                     var_10C(1) = "Mrs."
  loc_1521EEE:                     var_10C(2) = "Miss"
  loc_1521EFD:                     var_10C(3) = "Mr.& Mrs."
  loc_1521F0C:                     var_10C(4) = "MS."
  loc_1521F1B:                     var_10C(5) = "M/S"
  loc_1521F2A:                     var_10C(6) = "Dr."
  loc_1521F39:                     var_10C(7) = "Prof."
  loc_1521F48:                     var_10C(8) = "Capt."
  loc_1521F57:                     var_10C(9) = "Brigadier"
  loc_1521FAE:                     Set global_136 = Proc_183_37_EFEF78(Me.ListView1, Me.Txt, Index, Array(var_10C))
  loc_1521FBF:                   End If
  loc_1521FBF:                 End If
  loc_1521FBF:               End If
  loc_1521FBF:             End If
  loc_1521FBF:           End If
  loc_1521FBF:         End If
  loc_1521FBF:       End If
  loc_1521FBF:     End If
  loc_1521FBF:   End If
  loc_1521FBF: End If
  loc_1521FBF: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1397560
  'Data Table: 5A238C
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_8C As ListView
  Dim var_9C As DataGrid
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_A8 As DataGrid
  Dim var_B0 As DataGrid
  loc_1396CAE: If (CLng(Shift) = &H1B) Then
  loc_1396CB1:   Call Proc_24_91_FD9D34()
  loc_1396CB6:   Exit Sub
  loc_1396CB7: End If
  loc_1396CBA: var_88 = KeyCode
  loc_1396CC5: If (var_88 = CInt(6)) Then
  loc_1396CE5:   Set var_9C = Me.FGPoint
  loc_1396D17:   Proc_6_79_11AD564(Me.DGCity, Me.Txt, CInt(6), global_92, Shift)
  loc_1396D2E: Else
  loc_1396D36:   If (var_88 = CInt(&H13)) Then
  loc_1396D56:     Set var_9C = Me.FGPoint
  loc_1396D88:     Proc_6_79_11AD564(Me.DGCountry, Me.Txt, CInt(&H13), global_96, Shift, &HFF, 1)
  loc_1396D9F:   Else
  loc_1396DA7:     If (var_88 = CInt(&H12)) Then
  loc_1396DF9:       Proc_6_79_11AD564(Me.DGState, Me.Txt, CInt(&H12), global_100, Shift, &HFF, 1, Me.FGPoint)
  loc_1396E10:     Else
  loc_1396E18:       If (var_88 = CInt(7)) Then
  loc_1396E75:         Proc_6_69_134A630(Me.DGGuestStatus, Me.Txt, CInt(7), global_104, Shift, 0, 1, Nothing)
  loc_1396EE4:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1396F0A:           Proc_6_138_106E830(Me.DGGuestStatus, global_104, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1396F18:         End If
  loc_1396F1B:       Else
  loc_1396F23:         If Not (var_88 = CInt(&H11)) Then
  loc_1396F2E:           If (var_88 = CInt(&H25)) Then
  loc_1396F31:           End If
  loc_1396F3C:           Set var_AC = Me.Txt
  loc_1396F4E:           Set var_A4 = Me.FGPoint
  loc_1396F87:           Proc_6_69_134A630(Me.DGNationality, var_AC, KeyCode, global_108, Shift, 0, 1, Nothing)
  loc_1396FA6:           var_B4 = Me.RecordCount
  loc_1396FF6:           If ((var_B4 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1396FFD:             Set var_9C = Me.DGNationality
  loc_1397004:             Set var_90 = Me.FGPoint
  loc_139701C:             Proc_6_138_106E830(var_9C, global_108, KeyCode, var_90, var_A4, 0)
  loc_139702A:           End If
  loc_139702D:         Else
  loc_1397035:           If (var_88 = CInt(3)) Then
  loc_139705A:             Set var_8C = Me.Txt
  loc_1397060:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, 0, var_9C)
  loc_1397068:             0 = var_90.Left
  loc_139707A:             Set var_9C = Me.Txt
  loc_1397080:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_1397088:             &HFF = var_A4.Top
  loc_139709A:             Set var_A8 = Me.Txt
  loc_13970A0:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_13970A8:             1 = var_AC.Height
  loc_13970BA:             Set var_B0 = Me.Txt
  loc_13970C0:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_13970C8:             var_C4 = var_C0.Width
  loc_1397110:             Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1397137:           Else
  loc_139713F:             If (var_88 = CInt(&H4A)) Then
  loc_1397164:               Set var_8C = Me.Txt
  loc_139716A:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, CInt(var_B4))
  loc_1397172:               CInt((var_B8 + var_BC)) = var_90.Left
  loc_1397184:               Set var_9C = Me.Txt
  loc_139718A:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_1397192:               CInt(var_C4) = var_A4.Top
  loc_13971A4:               Set var_A8 = Me.Txt
  loc_13971AA:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_13971B2:               520 = var_AC.Height
  loc_13971C4:               Set var_B0 = Me.Txt
  loc_13971CA:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_13971D2:               var_C4 = var_C0.Width
  loc_139721A:               Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1397241:             Else
  loc_1397249:               If (var_88 = CInt(&H14)) Then
  loc_1397250:                 Set var_A4 = Me.DGZipCode
  loc_139725E:                 Set var_AC = Me.FGPoint
  loc_1397269:                 Set var_9C = var_AC
  loc_1397288:                 Set var_90 = Me.Txt
  loc_1397297:                 Proc_6_79_11AD564(var_A4, var_90, KeyCode, global_112, Shift, &HFF, 1)
  loc_13972AE:               Else
  loc_13972B6:                 If (var_88 = CInt(&H46)) Then
  loc_13972DB:                   Set var_8C = Me.Txt
  loc_13972E1:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, var_9C, 0)
  loc_13972E9:                   CInt(var_B4) = var_90.Left
  loc_13972FB:                   Set var_9C = Me.Txt
  loc_1397301:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8, CInt((var_B8 + var_BC)))
  loc_1397309:                   CInt(var_C4) = var_A4.Top
  loc_139731B:                   Set var_A8 = Me.Txt
  loc_1397321:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_1397329:                   2080 = var_AC.Height
  loc_139733B:                   Set var_B0 = Me.Txt
  loc_1397341:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1397349:                   var_C4 = var_C0.Width
  loc_1397391:                   Proc_6_65_1194DE4(Me.FrmList1, Me.ListView1, Me.Txt, KeyCode, Shift, arg_14)
  loc_13973B5:                 End If
  loc_13973B5:               End If
  loc_13973B5:             End If
  loc_13973B5:           End If
  loc_13973B5:         End If
  loc_13973B5:       End If
  loc_13973B5:     End If
  loc_13973B5:   End If
  loc_13973B5: End If
  loc_13973EC: var_10C = Me.DGCity.Visible
  loc_1397403: var_11C = Me.DGGuestStatus.Visible
  loc_1397492: If ((((((((CBool(Me.ListView.Visible) = 0) And (CBool(Me.ListView1.Visible) = 0)) And (CBool(var_10C) = 0)) And (CBool(var_11C) = 0)) And (CBool(Me.DGNationality.Visible) = 0)) And (CBool(Me.DGCountry.Visible) = 0)) And (CBool(Me.DGState.Visible) = 0)) And (CBool(Me.DGZipCode.Visible) = 0)) Then
  loc_13974B3:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H1E))) Then
  loc_13974BC:     Call Txt_Validate(KeyCode)
  loc_13974C7:     If (var_86 = &HFF) Then
  loc_13974CA:       Exit Sub
  loc_13974CB:     End If
  loc_1397502:     If (MsgBox("Save Record ?", 4, "Save Data", var_10C, var_11C) = 6) Then
  loc_1397505:       Call TopCtrl1_UnknownEvent_16()
  loc_139750A:     End If
  loc_139750A:     Exit Sub
  loc_139750B:   End If
  loc_1397520:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1397529:     Proc_6_75_E5335C(Shift, arg_14, var_86, CInt(var_B4))
  loc_139752E:   End If
  loc_1397536:   If (KeyCode = CInt(6)) Then
  loc_1397541:     Call Txt_Validate(KeyCode)
  loc_1397546:   End If
  loc_1397550:   If (CLng(Shift) = &H26) Then
  loc_1397559:     Proc_6_76_E533C8(Shift, arg_14, 0, CInt((var_B8 + var_BC)))
  loc_139755E:   End If
  loc_139755E: End If
  loc_139755E: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '12598C4
  'Data Table: 5A238C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_125935A: Proc_6_133_E7FB08(var_94)
  loc_1259363: arg_10 = CInt(var_94)
  loc_125936C: Proc_6_58_E06050(arg_10, arg_10)
  loc_1259374: var_96 = KeyAscii
  loc_125937F: If Not (var_96 = CInt(&H2E)) Then
  loc_125938A:   If (var_96 = CInt(&H49)) Then
  loc_125938D:   End If
  loc_1259397:   Set var_9C = Me.Txt
  loc_125939D:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_12593B8:   Proc_6_42_129B55C(var_A0, arg_10, 3)
  loc_12593C7: Else
  loc_12593CF:   If (var_96 = CInt(7)) Then
  loc_12593EE:     If (CBool(Me.DGGuestStatus.Visible) = &HFF) Then
  loc_125941B:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_104, arg_10, "Name")
  loc_125944D:       Proc_6_138_106E830(Me.DGGuestStatus, global_104, KeyAscii, Me.FGPoint)
  loc_125945B:     End If
  loc_125945E:   Else
  loc_1259466:     If Not (var_96 = CInt(&H11)) Then
  loc_1259471:       If (var_96 = CInt(&H25)) Then
  loc_1259474:       End If
  loc_1259490:       If (CBool(Me.DGNationality.Visible) = &HFF) Then
  loc_12594BD:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_108, arg_10, "Name")
  loc_12594D7:         Set var_A0 = Me.FGPoint
  loc_12594EF:         Proc_6_138_106E830(Me.DGNationality, global_108, KeyAscii, var_A0, 0)
  loc_12594FD:       End If
  loc_1259500:     Else
  loc_1259508:       If (var_96 = CInt(&HB)) Then
  loc_125952C:         Set var_9C = Me.Txt
  loc_1259532:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_B0, (((arg_10 >= &H30) And (arg_10 <= &H39)) Or (arg_10 = 8)))
  loc_125953A:         0 = var_A0.SelStart
  loc_1259558:         If Not((0 Or ((var_B0 = 0) And (arg_10 = &H2B)))) Then
  loc_125955D:           arg_10 = 0
  loc_1259560:         End If
  loc_1259563:       Else
  loc_125956B:         If (var_96 = CInt(&H42)) Then
  loc_1259597:           If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_12595A7:             Set var_9C = Me.Txt
  loc_12595AD:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Married")
  loc_12595B5:             var_A0.Text = arg_10
  loc_12595C4:           Else
  loc_12595ED:             If (Ucase(Chr(CLng(arg_10))) = "U") Then
  loc_12595FD:               Set var_9C = Me.Txt
  loc_1259603:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "UnMarried")
  loc_125960B:               var_A0.Text = var_96
  loc_1259617:             End If
  loc_1259617:           End If
  loc_1259619:           arg_10 = 0
  loc_125961F:         Else
  loc_1259627:           If (var_96 = CInt(&H41)) Then
  loc_1259653:             If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_1259663:               Set var_9C = Me.Txt
  loc_1259669:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Male")
  loc_1259671:               var_A0.Text = arg_10
  loc_1259680:             Else
  loc_12596A9:               If (Ucase(Chr(CLng(arg_10))) = "F") Then
  loc_12596B9:                 Set var_9C = Me.Txt
  loc_12596BF:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_12596C7:                 var_A0.Text = "Female"
  loc_12596D6:               Else
  loc_12596FF:                 If (Ucase(Chr(CLng(arg_10))) = "O") Then
  loc_125970F:                   Set var_9C = Me.Txt
  loc_1259715:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_125971D:                   var_A0.Text = "Other"
  loc_1259729:                 End If
  loc_1259729:               End If
  loc_1259729:             End If
  loc_125972B:             arg_10 = 0
  loc_1259731:           Else
  loc_1259739:             If (var_96 = CInt(&H44)) Then
  loc_1259765:               If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1259775:                 Set var_9C = Me.Txt
  loc_125977B:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_1259783:                 var_A0.Text = arg_10
  loc_125979D:                 Set var_9C = Me.Txt
  loc_12597A3:                 Call 0.Method_Txt_KeyPress0 (CInt(&H45), var_A0)
  loc_12597BD:                 If (var_A0.Enabled = 0) Then
  loc_12597CD:                   Set var_9C = Me.Txt
  loc_12597D3:                   Call 0.Method_Txt_KeyPress0 (CInt(&H45), var_A0)
  loc_12597DB:                   var_A0.Enabled = True
  loc_12597E7:                 End If
  loc_12597EA:               Else
  loc_1259813:                 If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1259823:                   Set var_9C = Me.Txt
  loc_1259829:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_1259831:                   var_A0.Text = "No"
  loc_125984B:                   Set var_9C = Me.Txt
  loc_1259851:                   Call 0.Method_Txt_KeyPress0 (CInt(&H45), var_A0)
  loc_125986B:                   If (var_A0.Enabled = &HFF) Then
  loc_125987B:                     Set var_9C = Me.Txt
  loc_1259881:                     Call 0.Method_Txt_KeyPress0 (CInt(&H45), var_A0)
  loc_1259889:                     var_A0.Enabled = False
  loc_1259895:                   End If
  loc_12598A3:                   Set var_9C = Me.Txt
  loc_12598A9:                   Call 0.Method_Txt_KeyPress0 (CInt(&H45), var_A0)
  loc_12598B1:                   var_A0.Text = vbNullString
  loc_12598BD:                 End If
  loc_12598BD:               End If
  loc_12598BF:               arg_10 = 0
  loc_12598C2:             End If
  loc_12598C2:           End If
  loc_12598C2:         End If
  loc_12598C2:       End If
  loc_12598C2:     End If
  loc_12598C2:   End If
  loc_12598C2: End If
  loc_12598C2: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1212148
  'Data Table: 5A238C
  Dim var_86 As Integer
  loc_1211C6F: var_86 = KeyCode
  loc_1211C7A: If (var_86 = CInt(6)) Then
  loc_1211C99:   If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_1211CAD:     var_A8 = "Name"
  loc_1211CD5:     Proc_6_68_12A2818(Me.DGCity, Me.Txt, CInt(6), global_92)
  loc_1211D0B:     Proc_6_138_106E830(Me.DGCity, global_92, KeyCode, Me.FGPoint)
  loc_1211D19:   End If
  loc_1211D1C: Else
  loc_1211D24:   If (var_86 = CInt(&H12)) Then
  loc_1211D43:     If (CBool(Me.DGState.Visible) = &HFF) Then
  loc_1211D57:       var_A8 = "Name"
  loc_1211D7F:       Proc_6_68_12A2818(Me.DGState, Me.Txt, CInt(&H12), global_100, Shift)
  loc_1211DB5:       Proc_6_138_106E830(Me.DGState, global_100, KeyCode, Me.FGPoint)
  loc_1211DC3:     End If
  loc_1211DC6:   Else
  loc_1211DCE:     If (var_86 = CInt(&H13)) Then
  loc_1211DED:       If (CBool(Me.DGCountry.Visible) = &HFF) Then
  loc_1211E29:         Proc_6_68_12A2818(Me.DGCountry, Me.Txt, CInt(&H13), global_96, Shift)
  loc_1211E5F:         Proc_6_138_106E830(Me.DGCountry, global_96, KeyCode, Me.FGPoint, "Name")
  loc_1211E6D:       End If
  loc_1211E70:     Else
  loc_1211E78:       If (var_86 = CInt(7)) Then
  loc_1211E97:         If (CBool(Me.DGGuestStatus.Visible) = &HFF) Then
  loc_1211EAB:           var_A8 = "Name"
  loc_1211ED3:           Proc_6_68_12A2818(Me.DGGuestStatus, Me.Txt, CInt(7), global_104, Shift)
  loc_1211EE6:         End If
  loc_1211EE9:       Else
  loc_1211EF1:         If Not (var_86 = CInt(&H11)) Then
  loc_1211EFC:           If (var_86 = CInt(&H25)) Then
  loc_1211EFF:           End If
  loc_1211F1B:           If (CBool(Me.DGNationality.Visible) = &HFF) Then
  loc_1211F53:             Proc_6_68_12A2818(Me.DGNationality, Me.Txt, KeyCode, global_108, Shift, "Name")
  loc_1211F66:           End If
  loc_1211F69:         Else
  loc_1211F71:           If (var_86 = CInt(3)) Then
  loc_1211F8F:             If (Me.FrmList.Visible = &HFF) Then
  loc_1211FBE:               Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift, global_136)
  loc_1211FCE:             End If
  loc_1211FD1:           Else
  loc_1211FD9:             If (var_86 = CInt(&H4A)) Then
  loc_1211FF7:               If (Me.FrmList.Visible = &HFF) Then
  loc_1212026:                 Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift, global_136)
  loc_1212036:               End If
  loc_1212039:             Else
  loc_1212041:               If (var_86 = CInt(&H46)) Then
  loc_121205F:                 If (Me.FrmList1.Visible = &HFF) Then
  loc_121208E:                   Proc_6_64_F299E8(Me.ListView1, Me.Txt, KeyCode, Shift, global_156)
  loc_121209E:                 End If
  loc_12120A1:               Else
  loc_12120A9:                 If (var_86 = CInt(&H14)) Then
  loc_12120C8:                   If (CBool(Me.DGZipCode.Visible) = &HFF) Then
  loc_12120DC:                     var_A8 = "Name"
  loc_1212100:                     Proc_6_68_12A2818(Me.DGZipCode, Me.Txt, KeyCode, global_112, Shift, var_A8)
  loc_1212136:                     Proc_6_138_106E830(Me.DGZipCode, global_112, KeyCode, Me.FGPoint, var_A8)
  loc_1212144:                   End If
  loc_1212144:                 End If
  loc_1212144:               End If
  loc_1212144:             End If
  loc_1212144:           End If
  loc_1212144:         End If
  loc_1212144:       End If
  loc_1212144:     End If
  loc_1212144:   End If
  loc_1212144: End If
  loc_1212144: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E477C4
  'Data Table: 5A238C
  loc_E477A2: Set var_88 = Me.Txt
  loc_E477A8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E477B6: Proc_6_73_E23294(var_8C)
  loc_E477C2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '19BB3BC
  'Data Table: 5A238C
  Dim var_90 As Integer
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_98 As Variant
  Dim var_EC As Variant
  Dim Me As Recordset15
  Dim var_108 As String
  Dim var_10C As String
  Dim var_DC As String
  Dim var_130 As Variant
  Dim var_94 As Variant
  Dim var_140 As Variant
  Dim var_B8 As Variant
  Dim var_150 As Variant
  Dim unk_5A23BF As Connection15
  Dim var_88 As Recordset15
  Dim var_164 As Variant
  Dim var_100 As Variant
  Dim arg_10 As Integer
  Dim var_168 As Variant
  Dim var_184 As TextBox
  Dim var_120 As Variant
  Dim var_1C0 As Double
  Dim var_8E As Integer
  loc_19B8387: var_90 = Cancel
  loc_19B8392: If (var_90 = CInt(0)) Then
  loc_19B8395:   var_A8 = 1
  loc_19B83A1:   var_C8 = CVar(CLng(1)) 'Long
  loc_19B83B4:   Set var_94 = Me.Txt
  loc_19B83BA:   Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_DC)
  loc_19B83C2:   var_C8 = var_98.Text
  loc_19B83CA:   var_EC = CVar(var_DC) 'String
  loc_19B83D2:   Set var_100 = Me.FGrid
  loc_19B83D8:   LateIdCallSt
  loc_19B83EF: Else
  loc_19B83F7:   If (var_90 = CInt(1)) Then
  loc_19B8419:     Set var_94 = Me.Txt
  loc_19B841F:     Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_DC, CVar(CLng(2)), 1)
  loc_19B8427:     var_100 = var_98.Text
  loc_19B842F:     var_EC = CVar(var_DC) 'String
  loc_19B8437:     Set var_100 = Me.FGrid
  loc_19B843D:     LateIdCallSt
  loc_19B8454:   Else
  loc_19B845C:     If (var_90 = CInt(2)) Then
  loc_19B845F:       var_A8 = 1
  loc_19B847E:       Set var_94 = Me.Txt
  loc_19B8484:       Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_DC, CVar(CLng(3)), var_A8)
  loc_19B848C:       var_100 = var_98.Text
  loc_19B8494:       var_EC = CVar(var_DC) 'String
  loc_19B849C:       Set var_100 = Me.FGrid
  loc_19B84A2:       LateIdCallSt
  loc_19B84B9:     Else
  loc_19B84C1:       If (var_90 = CInt(6)) Then
  loc_19B84D1:         Set var_94 = Me.Txt
  loc_19B84D7:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC, var_100, var_EC)
  loc_19B84F6:         If (var_DC = vbNullString) Then
  loc_19B8507:           Set var_94 = Me.Txt
  loc_19B850D:           Call 0.Method_Txt_Validate0 (CInt(&H14), var_98, vbNullString)
  loc_19B8515:           var_98.Text = var_98.Text
  loc_19B852F:           Set var_94 = Me.Txt
  loc_19B8535:           Call 0.Method_Txt_Validate0 (CInt(&H12), var_98, vbNullString)
  loc_19B853D:           var_98.Text = var_A8
  loc_19B8557:           Set var_94 = Me.Txt
  loc_19B855D:           Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19B8565:           var_98.Text = vbNullString
  loc_19B857F:           Set var_94 = Me.Txt
  loc_19B8585:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B858D:           var_98.Text = vbNullString
  loc_19B85A6:           Set var_94 = Me.Txt
  loc_19B85AC:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19B85B4:           var_98.Tag = vbNullString
  loc_19B85C0:           Exit Sub
  loc_19B85C1:         End If
  loc_19B85D8:         If (Me.RecordCount <= 0) Then
  loc_19B85DB:           GoTo loc_19B8B56
  loc_19B85DE:         End If
  loc_19B85E4:         Me.MoveFirst
  loc_19B8607:         Set var_94 = Me.Txt
  loc_19B860D:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC, "Name like '")
  loc_19B8615:         0 = var_98.Text
  loc_19B862E:         Me.Find 1 & var_DC & "*'", var_A8, var_90
  loc_19B865A:         If (Me.AbsolutePosition > 0) Then
  loc_19B86AB:           Set var_94 = Me.Txt
  loc_19B86B1:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19B86D1:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_19B86D4:             Exit Sub
  loc_19B86D5:           End If
  loc_19B86E9:           var_DC = "SELECT City.CityName,CITY.ZIPCODE,Country.Name AS CountryName,State.Name AS StateName,Country.Type as CountryType FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE (City.LOGSITE_CODE='" & MemVar_1F95078
  loc_19B871C:           var_120 = Ucase(CVar(Me.Fields.Item("Code")))
  loc_19B873B:           unk_5A23BF.Execute CStr(CVar(var_DC & "' or City.LOGSITE_CODE='HO') and UPPER(CITYCODE)='") & var_120 & "'"), var_160, -1
  loc_19B8746:           Set var_88 = var_100
  loc_19B877A:           If (var_88.RecordCount > 0) Then
  loc_19B87B8:             Set var_100 = Me.Txt
  loc_19B87BE:             Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19B87C6:             var_164.Text = CStr(Me.Fields.Item("Name").Value)
  loc_19B8817:             Set var_100 = Me.Txt
  loc_19B881D:             Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19B8825:             var_164.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_19B8871:             Set var_100 = Me.Txt
  loc_19B8877:             Call 0.Method_Txt_Validate0 (CInt(6), var_164)
  loc_19B887F:             var_164.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName")))
  loc_19B88C9:             Set var_100 = Me.Txt
  loc_19B88CF:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_164)
  loc_19B88D7:             var_164.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Zipcode")))
  loc_19B8921:             Set var_100 = Me.Txt
  loc_19B8927:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_164)
  loc_19B892F:             var_164.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("StateName")))
  loc_19B8979:             Set var_100 = Me.Txt
  loc_19B897F:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_164)
  loc_19B8987:             var_164.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CountryName")))
  loc_19B89B2:             var_98 = var_88.Fields.Item("CountryType")
  loc_19B89BA:             var_EC = CVar(var_98) 'Address
  loc_19B89D1:             Set var_100 = Me.Txt
  loc_19B89D7:             Call 0.Method_Txt_Validate0 (CInt(3), var_164)
  loc_19B89DF:             var_164.Text = Proc_6_38_E69628(var_EC)
  loc_19B8A01:             Set var_94 = Me.Txt
  loc_19B8A07:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_19B8A21:             If (var_98.Enabled = &HFF) Then
  loc_19B8A31:               Set var_94 = Me.Txt
  loc_19B8A37:               Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_19B8A3F:               var_98.Enabled = False
  loc_19B8A4B:             End If
  loc_19B8A59:             Set var_94 = Me.Txt
  loc_19B8A5F:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19B8A79:             If (var_98.Enabled = &HFF) Then
  loc_19B8A89:               Set var_94 = Me.Txt
  loc_19B8A8F:               Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19B8A97:               var_98.Enabled = False
  loc_19B8AA3:             End If
  loc_19B8AB1:             Set var_94 = Me.Txt
  loc_19B8AB7:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19B8AD1:             If (var_98.Enabled = &HFF) Then
  loc_19B8AE1:               Set var_94 = Me.Txt
  loc_19B8AE7:               Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19B8AEF:               var_98.Enabled = False
  loc_19B8AFB:             End If
  loc_19B8B09:             Set var_94 = Me.Txt
  loc_19B8B0F:             Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B8B29:             If (var_98.Enabled = &HFF) Then
  loc_19B8B39:               Set var_94 = Me.Txt
  loc_19B8B3F:               Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B8B47:               var_98.Enabled = False
  loc_19B8B53:             End If
  loc_19B8B53:             GoTo loc_19B8E4C
  loc_19B8B56:             ' Referenced from:       19B85DB
  loc_19B8B56:           End If
  loc_19B8B5A:           Set var_94 = Me.TopCtrl1
  loc_19B8B60:           Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_100)
  loc_19B8B79:           If (CStr() = "Add") Then
  loc_19B8B82:             var_B8 = 0
  loc_19B8BA1:             unk_5A23BF.Execute "Select IsNull(Max(CAST(SUBSTRING(CityCode,3,3) AS INT)),1)+1 AS MyCode From City", var_EC, -1
  loc_19B8BA9:             var_94 = var_94.Fields
  loc_19B8BB1:             var_B8 = var_98.Item(var_98)
  loc_19B8BB9:             var_100 = var_100.Value
  loc_19B8BE2:             var_130 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_19B8C0D:             var_140 = (1 + Format(CStr(var_120), "000"))
  loc_19B8C12:             var_8C = CStr(CVar(CStr() & "' or City.LOGSITE_CODE='HO') and UPPER(CITYCODE)='") & Format(CStr(var_120), "000"))
  loc_19B8C20:           End If
  loc_19B8C2E:           Set var_94 = Me.Txt
  loc_19B8C34:           Call 0.Method_Txt_Validate0 (CInt(&H14), var_98, vbNullString)
  loc_19B8C3C:           var_98.Text = 1
  loc_19B8C56:           Set var_94 = Me.Txt
  loc_19B8C5C:           Call 0.Method_Txt_Validate0 (CInt(&H12), var_98, vbNullString)
  loc_19B8C64:           var_98.Text = var_130
  loc_19B8C7E:           Set var_94 = Me.Txt
  loc_19B8C84:           Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19B8C8C:           var_98.Text = vbNullString
  loc_19B8CA6:           Set var_94 = Me.Txt
  loc_19B8CAC:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B8CB4:           var_98.Text = vbNullString
  loc_19B8CCE:           Set var_94 = Me.Txt
  loc_19B8CD4:           Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_19B8CEE:           If (var_98.Enabled = 0) Then
  loc_19B8CFE:             Set var_94 = Me.Txt
  loc_19B8D04:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_19B8D0C:             var_98.Enabled = True
  loc_19B8D18:           End If
  loc_19B8D26:           Set var_94 = Me.Txt
  loc_19B8D2C:           Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19B8D46:           If (var_98.Enabled = 0) Then
  loc_19B8D56:             Set var_94 = Me.Txt
  loc_19B8D5C:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19B8D64:             var_98.Enabled = True
  loc_19B8D70:           End If
  loc_19B8D7E:           Set var_94 = Me.Txt
  loc_19B8D84:           Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19B8D9E:           If (var_98.Enabled = 0) Then
  loc_19B8DAE:             Set var_94 = Me.Txt
  loc_19B8DB4:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19B8DBC:             var_98.Enabled = True
  loc_19B8DC8:           End If
  loc_19B8DD6:           Set var_94 = Me.Txt
  loc_19B8DDC:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B8DF6:           If (var_98.Enabled = 0) Then
  loc_19B8E06:             Set var_94 = Me.Txt
  loc_19B8E0C:             Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B8E14:             var_98.Enabled = True
  loc_19B8E22:             arg_10 = &HFF
  loc_19B8E25:           End If
  loc_19B8E32:           Set var_94 = Me.Txt
  loc_19B8E38:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_8C)
  loc_19B8E40:           var_98.Tag = arg_10
  loc_19B8E4C:           ' Referenced from:       19B8B53
  loc_19B8E58:           Me.BtnVisa.Enabled = False
  loc_19B8E6B:           Set var_94 = Me.Txt
  loc_19B8E71:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B8E79:           var_EC = CVar(var_98) 'Address
  loc_19B8E80:           var_120 = Trim(var_EC)
  loc_19B8E9A:           If (var_120 = "Foreign") Then
  loc_19B8EA9:             Me.BtnVisa.Enabled = True
  loc_19B8EB1:           End If
  loc_19B8EB4:         Else
  loc_19B8EB8:           Set var_94 = Me.TopCtrl1
  loc_19B8EBE:           Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_120)
  loc_19B8ED7:           If (CStr() = "Add") Then
  loc_19B8EE0:             var_B8 = 0
  loc_19B8EFF:             unk_5A23BF.Execute "Select IsNull(Max(CAST(SUBSTRING(CityCode,3,3) AS INT)),1)+1 AS MyCode From City", var_EC, -1
  loc_19B8F07:             var_94 = var_94.Fields
  loc_19B8F0F:             var_B8 = var_98.Item(var_98)
  loc_19B8F17:             var_100 = var_100.Value
  loc_19B8F40:             var_130 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_19B8F5B:             var_A8 = CStr(var_120)
  loc_19B8F63:             var_120 = Format(var_A8, "000")
  loc_19B8F6B:             var_140 = (1 + var_120)
  loc_19B8F70:             var_8C = CStr(CVar(CStr() & "' or City.LOGSITE_CODE='HO') and UPPER(CITYCODE)='") & var_120)
  loc_19B8F7E:           End If
  loc_19B8F8C:           Set var_94 = Me.Txt
  loc_19B8F92:           Call 0.Method_Txt_Validate0 (CInt(&H14), var_98, vbNullString)
  loc_19B8F9A:           var_98.Text = 1
  loc_19B8FB4:           Set var_94 = Me.Txt
  loc_19B8FBA:           Call 0.Method_Txt_Validate0 (CInt(&H12), var_98, vbNullString)
  loc_19B8FC2:           var_98.Text = var_130
  loc_19B8FDC:           Set var_94 = Me.Txt
  loc_19B8FE2:           Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19B8FEA:           var_98.Text = vbNullString
  loc_19B9004:           Set var_94 = Me.Txt
  loc_19B900A:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B9012:           var_98.Text = vbNullString
  loc_19B902C:           Set var_94 = Me.Txt
  loc_19B9032:           Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_19B904C:           If (var_98.Enabled = 0) Then
  loc_19B905C:             Set var_94 = Me.Txt
  loc_19B9062:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_19B906A:             var_98.Enabled = True
  loc_19B9076:           End If
  loc_19B9084:           Set var_94 = Me.Txt
  loc_19B908A:           Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19B90A4:           If (var_98.Enabled = 0) Then
  loc_19B90B4:             Set var_94 = Me.Txt
  loc_19B90BA:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19B90C2:             var_98.Enabled = True
  loc_19B90CE:           End If
  loc_19B90DC:           Set var_94 = Me.Txt
  loc_19B90E2:           Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19B90FC:           If (var_98.Enabled = 0) Then
  loc_19B910C:             Set var_94 = Me.Txt
  loc_19B9112:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19B911A:             var_98.Enabled = True
  loc_19B9126:           End If
  loc_19B9134:           Set var_94 = Me.Txt
  loc_19B913A:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B9154:           If (var_98.Enabled = 0) Then
  loc_19B9164:             Set var_94 = Me.Txt
  loc_19B916A:             Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B9172:             var_98.Enabled = True
  loc_19B9180:             arg_10 = &HFF
  loc_19B9183:           End If
  loc_19B9190:           Set var_94 = Me.Txt
  loc_19B9196:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_8C)
  loc_19B919E:           var_98.Tag = arg_10
  loc_19B91AA:         End If
  loc_19B91AD:       Else
  loc_19B91B5:         If (var_90 = CInt(&H12)) Then
  loc_19B91C5:           Set var_94 = Me.Txt
  loc_19B91CB:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19B91D3:           var_DC = var_98.Text
  loc_19B91EA:           If (var_DC = vbNullString) Then
  loc_19B91ED:             Exit Sub
  loc_19B91EE:           End If
  loc_19B91FB:           Set var_94 = Me.Txt
  loc_19B9201:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19B9209:           var_98.Tag = vbNullString
  loc_19B922C:           If (Me.RecordCount <= 0) Then
  loc_19B922F:             GoTo loc_19B9542
  loc_19B9232:           End If
  loc_19B9238:           Me.MoveFirst
  loc_19B925B:           Set var_94 = Me.Txt
  loc_19B9261:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC, "Name like '")
  loc_19B9269:           0 = var_98.Text
  loc_19B9282:           Me.Find 1 & var_DC & "*'", var_A8, var_120
  loc_19B92AE:           If (Me.AbsolutePosition > 0) Then
  loc_19B92FF:             Set var_94 = Me.Txt
  loc_19B9305:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19B9325:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_19B9328:               Exit Sub
  loc_19B9329:             End If
  loc_19B933D:             var_DC = "SELECT COUNTRY.CODE AS CountryCode,Country.Name AS CountryName,State.Name AS StateName,Country.Type as CountryType FROM State LEFT JOIN Country ON STATE.Country=Country.Code WHERE (State.LOGSITE_CODE='" & MemVar_1F95078
  loc_19B9381:             var_150 = CVar(var_DC & "' or State.LOGSITE_CODE='HO') and UPPER(STATE.CODE)='") & Ucase(CVar(Me.Fields.Item("Code"))) & "'" 
  loc_19B938F:             unk_5A23BF.Execute CStr(var_150), var_160, -1
  loc_19B939A:             Set var_88 = var_100
  loc_19B93CE:             If (var_88.RecordCount > 0) Then
  loc_19B940C:               Set var_100 = Me.Txt
  loc_19B9412:               Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19B941A:               var_164.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_19B946B:               Set var_100 = Me.Txt
  loc_19B9471:               Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19B9479:               var_164.Text = CStr(Me.Fields.Item("Name").Value)
  loc_19B94C5:               Set var_100 = Me.Txt
  loc_19B94CB:               Call 0.Method_Txt_Validate0 (CInt(&H13), var_164)
  loc_19B94D3:               var_164.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CountryName")))
  loc_19B94FE:               var_98 = var_88.Fields.Item("CountryType")
  loc_19B951D:               Set var_100 = Me.Txt
  loc_19B9523:               Call 0.Method_Txt_Validate0 (CInt(3), var_164)
  loc_19B952B:               var_164.Text = Proc_6_38_E69628(CVar(var_98))
  loc_19B953F:               GoTo loc_19B9758
  loc_19B9542:               ' Referenced from:         19B922F
  loc_19B9542:             End If
  loc_19B9548:             global_64 = vbNullString
  loc_19B9578:             Set var_94 = Me.Txt
  loc_19B957E:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98, "sELECT COUNT(*) FROM STATE WHERE UPPER(NAME)='", var_150, -1, var_100)
  loc_19B9586:             var_EC = CVar(var_98) 'Address
  loc_19B958D:             var_120 = Ucase(var_EC)
  loc_19B95AC:             unk_5A23BF.Execute CStr(var_164 & var_120 & "'"), 0, var_168
  loc_19B95BC:              = var_164.Item(var_100)
  loc_19B95C4:              = var_168.Value
  loc_19B95F1:             If (var_100.Fields = 0) Then
  loc_19B95F8:               Set var_94 = Me.TopCtrl1
  loc_19B95FE:               Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_19B9617:               If (CStr() = "Add") Then
  loc_19B9620:                 var_B8 = 0
  loc_19B963F:                 unk_5A23BF.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From State", var_EC, -1
  loc_19B9647:                 var_94 = var_94.Fields
  loc_19B964F:                 var_B8 = var_98.Item(var_98)
  loc_19B9657:                 var_100 = var_100.Value
  loc_19B968D:                 var_EC = Left(MemVar_1F95070, 1)
  loc_19B96C0:                 var_140 = (1 + Format(CStr("000"), "000"))
  loc_19B96CB:                 global_64 = CStr(var_164 & "000" & "'")
  loc_19B96DD:               End If
  loc_19B96DD:             End If
  loc_19B96EB:             Set var_94 = Me.Txt
  loc_19B96F1:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_98, vbNullString)
  loc_19B96F9:             var_98.Text = 1
  loc_19B9713:             Set var_94 = Me.Txt
  loc_19B9719:             Call 0.Method_Txt_Validate0 (CInt(3), var_98, vbNullString)
  loc_19B9721:             var_98.Text = var_EC
  loc_19B973E:             Set var_94 = Me.Txt
  loc_19B9744:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19B974C:             var_98.Tag = global_64
  loc_19B9758:             ' Referenced from:         19B953F
  loc_19B975B:           Else
  loc_19B9761:             global_64 = vbNullString
  loc_19B9791:             Set var_94 = Me.Txt
  loc_19B9797:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98, "sELECT COUNT(*) FROM STATE WHERE UPPER(NAME)='", var_150, -1, var_100)
  loc_19B979F:             var_EC = CVar(var_98) 'Address
  loc_19B97A6:             var_120 = Ucase(var_EC)
  loc_19B97C5:             unk_5A23BF.Execute CStr(var_164 & var_120 & "'"), 0, var_168
  loc_19B97D5:              = var_164.Item(var_120)
  loc_19B97DD:              = var_168.Value
  loc_19B980A:             If (var_100.Fields = 0) Then
  loc_19B9811:               Set var_94 = Me.TopCtrl1
  loc_19B9817:               Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_19B9830:               If (CStr() = "Add") Then
  loc_19B9839:                 var_B8 = 0
  loc_19B9858:                 unk_5A23BF.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From State", var_EC, -1
  loc_19B9860:                 var_94 = var_94.Fields
  loc_19B9868:                 var_B8 = var_98.Item(var_98)
  loc_19B9870:                 var_100 = var_100.Value
  loc_19B989E:                 var_A8 = MemVar_1F95070
  loc_19B98A6:                 var_EC = Left(var_A8, 1)
  loc_19B98BD:                 var_120 = "000"
  loc_19B98D9:                 var_140 = (1 + Format(CStr(var_120), var_120))
  loc_19B98E4:                 global_64 = CStr(var_164 & var_120 & "'")
  loc_19B98F6:               End If
  loc_19B98F6:             End If
  loc_19B9904:             Set var_94 = Me.Txt
  loc_19B990A:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_98, vbNullString)
  loc_19B9912:             var_98.Text = 1
  loc_19B992C:             Set var_94 = Me.Txt
  loc_19B9932:             Call 0.Method_Txt_Validate0 (CInt(3), var_98, vbNullString)
  loc_19B993A:             var_98.Text = var_EC
  loc_19B9957:             Set var_94 = Me.Txt
  loc_19B995D:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19B9965:             var_98.Tag = global_64
  loc_19B9971:           End If
  loc_19B9974:         Else
  loc_19B997C:           If (var_90 = CInt(&H13)) Then
  loc_19B998C:             Set var_94 = Me.Txt
  loc_19B9992:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19B999A:             var_DC = var_98.Text
  loc_19B99B1:             If (var_DC = vbNullString) Then
  loc_19B99B4:               Exit Sub
  loc_19B99B5:             End If
  loc_19B99C2:             Set var_94 = Me.Txt
  loc_19B99C8:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19B99D0:             var_98.Tag = vbNullString
  loc_19B99F3:             If (Me.RecordCount > 0) Then
  loc_19B99FC:               Me.MoveFirst
  loc_19B9A04:             Else
  loc_19B9A07:             Else
  loc_19B9A25:               Set var_94 = Me.Txt
  loc_19B9A2B:               Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC, "Name like '")
  loc_19B9A33:               0 = var_98.Text
  loc_19B9A43:               var_10C = 1 & var_DC & "*'"
  loc_19B9A4C:               Me.Find var_10C, var_A8, var_120
  loc_19B9A78:               If (Me.AbsolutePosition > 0) Then
  loc_19B9AC9:                 Set var_94 = Me.Txt
  loc_19B9ACF:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19B9AEF:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_19B9AF2:                   Exit Sub
  loc_19B9AF3:                 End If
  loc_19B9B36:                 var_130 = "SELECT Country.Name AS CountryName,Country.Type as CountryType FROM Country WHERE Upper(CODE)='" & Ucase(CVar(Me.Fields.Item("Code"))) 
  loc_19B9B4D:                 unk_5A23BF.Execute CStr(var_130 & "'"), var_150, -1
  loc_19B9B58:                 Set var_88 = var_100
  loc_19B9B86:                 If (var_88.RecordCount > 0) Then
  loc_19B9BC4:                   Set var_100 = Me.Txt
  loc_19B9BCA:                   Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19B9BD2:                   var_164.Text = CStr(Me.Fields.Item("Name").Value)
  loc_19B9C23:                   Set var_100 = Me.Txt
  loc_19B9C29:                   Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19B9C31:                   var_164.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_19B9C5E:                   var_98 = var_88.Fields.Item("CountryType")
  loc_19B9C7D:                   Set var_100 = Me.Txt
  loc_19B9C83:                   Call 0.Method_Txt_Validate0 (CInt(3), var_164)
  loc_19B9C8B:                   var_164.Text = Proc_6_38_E69628(CVar(var_98))
  loc_19B9CA2:                 Else
  loc_19B9CA8:                   global_64 = vbNullString
  loc_19B9CD8:                   Set var_94 = Me.Txt
  loc_19B9CDE:                   Call 0.Method_Txt_Validate0 (CInt(&H13), var_98, "SELECT COUNT(*) FROM COUNTRY WHERE UPPER(NAME)='", var_150, -1, var_100)
  loc_19B9CE6:                   var_EC = CVar(var_98) 'Address
  loc_19B9CED:                   var_120 = Ucase(var_EC)
  loc_19B9D0C:                   unk_5A23BF.Execute CStr(var_164 & var_120 & "'"), 0, var_168
  loc_19B9D1C:                    = var_164.Item(var_100)
  loc_19B9D24:                    = var_168.Value
  loc_19B9D51:                   If (var_100.Fields = 0) Then
  loc_19B9D58:                     Set var_94 = Me.TopCtrl1
  loc_19B9D5E:                     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_19B9D77:                     If (CStr() = "Add") Then
  loc_19B9D80:                       var_B8 = 0
  loc_19B9D9F:                       unk_5A23BF.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From Country", var_EC, -1
  loc_19B9DA7:                       var_94 = var_94.Fields
  loc_19B9DAF:                       var_B8 = var_98.Item(var_98)
  loc_19B9DB7:                       var_100 = var_100.Value
  loc_19B9DED:                       var_EC = Left(MemVar_1F95070, 1)
  loc_19B9E20:                       var_140 = (1 + Format(CStr("000"), "000"))
  loc_19B9E2B:                       global_64 = CStr(var_164 & "000" & "'")
  loc_19B9E3D:                     End If
  loc_19B9E3D:                   End If
  loc_19B9E4E:                   Set var_94 = Me.Txt
  loc_19B9E54:                   Call 0.Method_Txt_Validate0 (CInt(&H13), var_98, global_64)
  loc_19B9E5C:                   var_98.Tag = 1
  loc_19B9E68:                 End If
  loc_19B9E6B:               Else
  loc_19B9E6B:               End If
  loc_19B9E71:               global_64 = vbNullString
  loc_19B9EA1:               Set var_94 = Me.Txt
  loc_19B9EA7:               Call 0.Method_Txt_Validate0 (CInt(&H13), var_98, "SELECT COUNT(*) FROM COUNTRY WHERE UPPER(NAME)='", var_150, -1, var_100)
  loc_19B9EAF:               var_EC = CVar(var_98) 'Address
  loc_19B9ED5:               unk_5A23BF.Execute CStr(var_164 & Ucase(var_EC) & "'"), 0, var_168
  loc_19B9EED:                = var_168.Value
  loc_19B9F1A:               If (var_100.Fields = 0) Then
  loc_19B9F21:                 Set var_94 = Me.TopCtrl1
  loc_19B9F27:                 Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_19B9F40:                 If (CStr() = "Add") Then
  loc_19B9F49:                   var_B8 = 0
  loc_19B9F68:                   unk_5A23BF.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From Country", var_EC, -1
  loc_19B9F70:                   var_94 = var_94.Fields
  loc_19B9F78:                   var_B8 = var_98.Item(var_98)
  loc_19B9F80:                   var_100 = var_100.Value
  loc_19B9FB6:                   var_EC = Left(MemVar_1F95070, 1)
  loc_19B9FE1:                   var_130 = Format(CStr(var_164.Item(var_EC)), "000")
  loc_19B9FE9:                   var_140 = (1 + var_130)
  loc_19B9FEE:                   var_DC = CStr(var_164 & Ucase(var_EC) & "'")
  loc_19B9FF4:                   global_64 = var_DC
  loc_19BA006:                 End If
  loc_19BA006:               End If
  loc_19BA017:               Set var_94 = Me.Txt
  loc_19BA01D:               Call 0.Method_Txt_Validate0 (CInt(&H13), var_98, global_64)
  loc_19BA025:               var_98.Tag = 1
  loc_19BA031:             End If
  loc_19BA034:           Else
  loc_19BA03C:             If (var_90 = CInt(&HB)) Then
  loc_19BA04C:               Set var_94 = Me.Txt
  loc_19BA052:               Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_19BA05A:               var_EC = var_98.Text
  loc_19BA073:               If (Len(var_DC) <> 0) Then
  loc_19BA080:                 Set var_94 = Me.Txt
  loc_19BA086:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BA095:                 Set var_168 = Me.Txt
  loc_19BA09B:                 Call 0.Method_Txt_Validate0 (Cancel, var_17C)
  loc_19BA0AF:                 var_120 = Left(CVar(var_98), 1)
  loc_19BA0B7:                 var_A8 = "+"
  loc_19BA0CE:                 Set var_100 = Me.Txt
  loc_19BA0D4:                 Call 0.Method_Txt_Validate0 (Cancel, var_164, var_DC)
  loc_19BA0DC:                 (var_120 = MemVar_1F95070) = var_164.Text
  loc_19BA0F9:                 var_140 = var_120 And (Len(CStr(Val(var_DC))) >= &HC)
  loc_19BA105:                 var_150 = CVar(var_17C) 'Address
  loc_19BA114:                 var_C8 = "+"
  loc_19BA12B:                 Set var_180 = Me.Txt
  loc_19BA131:                 Call 0.Method_Txt_Validate0 (Cancel, var_184, var_10C)
  loc_19BA139:                 (Left(var_150, 1) <> "000") = var_184.Text
  loc_19BA18D:                 If CBool(Not  Or var_140 And (Len(CStr(Val(var_10C))) >= &HA)) Then
  loc_19BA1A9:                   MsgBox("Invalid Mobile No.!", &H10, var_120, var_130, var_140)
  loc_19BA1BB:                   arg_10 = &HFF
  loc_19BA1BE:                 End If
  loc_19BA1BE:               End If
  loc_19BA1C1:             Else
  loc_19BA1C9:               If (var_90 = CInt(7)) Then
  loc_19BA21A:                 Set var_94 = Me.Txt
  loc_19BA220:                 Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_19BA228:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_19BA240:                 If (arg_10 Or (var_DC = vbNullString)) Then
  loc_19BA243:                   Exit Sub
  loc_19BA244:                 End If
  loc_19BA27F:                 Set var_100 = Me.Txt
  loc_19BA285:                 Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BA28D:                 var_164.Text = CStr(Me.Fields.Item("Name").Value)
  loc_19BA2C0:                 var_98 = Me.Fields.Item("Code")
  loc_19BA2DE:                 Set var_100 = Me.Txt
  loc_19BA2E4:                 Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BA2EC:                 var_164.Tag = CStr(var_98.Value)
  loc_19BA305:               Else
  loc_19BA30D:                 If (var_90 = CInt(&H11)) Then
  loc_19BA35E:                   Set var_94 = Me.Txt
  loc_19BA364:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BA384:                   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_19BA389:                     arg_10 = &HFF
  loc_19BA38C:                     Exit Sub
  loc_19BA38D:                   End If
  loc_19BA3C8:                   Set var_100 = Me.Txt
  loc_19BA3CE:                   Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BA3D6:                   var_164.Text = CStr(Me.Fields.Item("Name").Value)
  loc_19BA409:                   var_98 = Me.Fields.Item("Code")
  loc_19BA41A:                   var_DC = CStr(var_98.Value)
  loc_19BA427:                   Set var_100 = Me.Txt
  loc_19BA42D:                   Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BA435:                   var_164.Tag = var_DC
  loc_19BA44B:                   var_A8 = 1
  loc_19BA457:                   var_C8 = CVar(CLng(4)) 'Long
  loc_19BA469:                   Set var_94 = Me.Txt
  loc_19BA46F:                   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_19BA477:                   var_C8 = var_98.Text
  loc_19BA47F:                   var_EC = CVar(var_DC) 'String
  loc_19BA487:                   Set var_100 = Me.FGrid
  loc_19BA48D:                   LateIdCallSt
  loc_19BA4BF:                   Set var_94 = Me.Txt
  loc_19BA4C5:                   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC, CVar(CLng(&H1D)), 1)
  loc_19BA4CD:                   var_100 = var_98.Tag
  loc_19BA4D5:                   var_EC = CVar(var_DC) 'String
  loc_19BA4DD:                   Set var_100 = Me.FGrid
  loc_19BA4E3:                   LateIdCallSt
  loc_19BA4FA:                 Else
  loc_19BA502:                   If (var_90 = CInt(&H25)) Then
  loc_19BA553:                     Set var_94 = Me.Txt
  loc_19BA559:                     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_100)
  loc_19BA579:                     If (var_98.Text Or (var_DC = vbNullString)) Then
  loc_19BA57C:                       Exit Sub
  loc_19BA57D:                     End If
  loc_19BA583:                     var_A8 = "Name"
  loc_19BA5B8:                     Set var_100 = Me.Txt
  loc_19BA5BE:                     Call 0.Method_Txt_Validate0 (Cancel, var_164, CStr(Me.Fields.Item(var_A8).Value))
  loc_19BA5C6:                     var_164.Text = var_A8
  loc_19BA5E2:                     var_A8 = "Code"
  loc_19BA5F9:                     var_98 = Me.Fields.Item(var_A8)
  loc_19BA617:                     Set var_100 = Me.Txt
  loc_19BA61D:                     Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BA625:                     var_164.Tag = CStr(var_98.Value)
  loc_19BA63E:                   Else
  loc_19BA646:                     If (var_90 = CInt(&H14)) Then
  loc_19BA656:                       Set var_94 = Me.Txt
  loc_19BA65C:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BA664:                       var_DC = var_98.Text
  loc_19BA67B:                       If (var_DC = vbNullString) Then
  loc_19BA67E:                         Exit Sub
  loc_19BA67F:                       End If
  loc_19BA68C:                       Set var_94 = Me.Txt
  loc_19BA692:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BA69A:                       var_98.Tag = vbNullString
  loc_19BA6BD:                       If (Me.RecordCount <= 0) Then
  loc_19BA6C0:                         Exit Sub
  loc_19BA6C1:                       End If
  loc_19BA6C7:                       Me.MoveFirst
  loc_19BA6EA:                       Set var_94 = Me.Txt
  loc_19BA6F0:                       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC, "Name like '")
  loc_19BA6F8:                       0 = var_98.Text
  loc_19BA711:                       Me.Find 1 & var_DC & "*'", var_A8, arg_10
  loc_19BA73D:                       If (Me.AbsolutePosition > 0) Then
  loc_19BA78E:                         Set var_94 = Me.Txt
  loc_19BA794:                         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BA7B4:                         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_19BA7B7:                           Exit Sub
  loc_19BA7B8:                         End If
  loc_19BA7CC:                         var_DC = "SELECT City.CityName,CITY.ZIPCODE,City.CityCode,Country.Name AS CountryName,State.Name AS StateName,Country.Type as CountryType FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE (City.LOGSITE_CODE='" & MemVar_1F95078
  loc_19BA80C:                         var_140 = CVar(var_DC & "' or City.LOGSITE_CODE='HO') and ZIPCODE='") & Me.Fields.Item("Code").Value & "'" 
  loc_19BA81A:                         unk_5A23BF.Execute CStr(var_140), var_150, -1
  loc_19BA825:                         Set var_88 = var_100
  loc_19BA859:                         If (var_88.RecordCount > 0) Then
  loc_19BA895:                           Set var_100 = Me.Txt
  loc_19BA89B:                           Call 0.Method_Txt_Validate0 (CInt(6), var_164)
  loc_19BA8A3:                           var_164.Text = CStr(var_88.Fields.Item("CityName").Value)
  loc_19BA8F2:                           Set var_100 = Me.Txt
  loc_19BA8F8:                           Call 0.Method_Txt_Validate0 (CInt(6), var_164)
  loc_19BA900:                           var_164.Tag = CStr(var_88.Fields.Item("CITYCODE").Value)
  loc_19BA94C:                           Set var_100 = Me.Txt
  loc_19BA952:                           Call 0.Method_Txt_Validate0 (CInt(&H14), var_164)
  loc_19BA95A:                           var_164.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Zipcode")))
  loc_19BA9A4:                           Set var_100 = Me.Txt
  loc_19BA9AA:                           Call 0.Method_Txt_Validate0 (CInt(&H12), var_164)
  loc_19BA9B2:                           var_164.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("StateName")))
  loc_19BA9FC:                           Set var_100 = Me.Txt
  loc_19BAA02:                           Call 0.Method_Txt_Validate0 (CInt(&H13), var_164)
  loc_19BAA0A:                           var_164.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CountryName")))
  loc_19BAA35:                           var_98 = var_88.Fields.Item("CountryType")
  loc_19BAA54:                           Set var_100 = Me.Txt
  loc_19BAA5A:                           Call 0.Method_Txt_Validate0 (CInt(3), var_164)
  loc_19BAA62:                           var_164.Text = Proc_6_38_E69628(CVar(var_98))
  loc_19BAA79:                         Else
  loc_19BAA87:                           Set var_94 = Me.Txt
  loc_19BAA8D:                           Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_19BAA95:                           var_98.Text = vbNullString
  loc_19BAAAF:                           Set var_94 = Me.Txt
  loc_19BAAB5:                           Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_19BAABD:                           var_98.Tag = vbNullString
  loc_19BAAD7:                           Set var_94 = Me.Txt
  loc_19BAADD:                           Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_19BAAE5:                           var_98.Text = vbNullString
  loc_19BAAFF:                           Set var_94 = Me.Txt
  loc_19BAB05:                           Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19BAB0D:                           var_98.Text = vbNullString
  loc_19BAB27:                           Set var_94 = Me.Txt
  loc_19BAB2D:                           Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19BAB35:                           var_98.Text = vbNullString
  loc_19BAB4F:                           Set var_94 = Me.Txt
  loc_19BAB55:                           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19BAB5D:                           var_98.Text = vbNullString
  loc_19BAB69:                         End If
  loc_19BAB69:                       End If
  loc_19BAB6C:                     Else
  loc_19BAB74:                       If Not (var_90 = CInt(&H2E)) Then
  loc_19BAB7F:                         If (var_90 = CInt(&H49)) Then
  loc_19BAB82:                         End If
  loc_19BAB8C:                         Set var_94 = Me.Txt
  loc_19BAB92:                         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BAB9E:                         Proc_6_40_EA5C80(CVar(var_98))
  loc_19BABB2:                         Set var_100 = Me.Txt
  loc_19BABB8:                         Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BABC0:                         var_164.Text = CStr(var_100)
  loc_19BABE1:                         Set var_94 = Me.Txt
  loc_19BABE7:                         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BAC07:                         If (CDbl(var_98.Text) > CDbl(&H78)) Then
  loc_19BAC1B:                           Set var_94 = Me.Txt
  loc_19BAC21:                           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BAC29:                           var_98.Text = CStr(0)
  loc_19BAC3A:                           arg_10 = &HFF
  loc_19BAC3D:                           Exit Sub
  loc_19BAC3E:                         End If
  loc_19BAC4B:                         Set var_94 = Me.Txt
  loc_19BAC51:                         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BAC66:                         var_1C0 = Val(var_98.Text)
  loc_19BAC78:                         var_120 = "0"
  loc_19BAC88:                         var_130 = Format(CVar(var_1C0), var_120)
  loc_19BAC90:                         var_108 = CStr(var_130)
  loc_19BAC9E:                         Set var_100 = Me.Txt
  loc_19BACA4:                         Call 0.Method_Txt_Validate0 (Cancel, var_164, var_108, 1)
  loc_19BACAC:                         var_164.Text = 1
  loc_19BACCF:                       Else
  loc_19BACD7:                         If Not (var_90 = CInt(&H17)) Then
  loc_19BACE2:                           If Not (var_90 = CInt(&H2F)) Then
  loc_19BACED:                             If Not (var_90 = CInt(&H32)) Then
  loc_19BACF8:                               If Not (var_90 = CInt(&H33)) Then
  loc_19BAD03:                                 If (var_90 = CInt(&H40)) Then
  loc_19BAD06:                                 End If
  loc_19BAD06:                               End If
  loc_19BAD06:                             End If
  loc_19BAD06:                           End If
  loc_19BAD10:                           Set var_94 = Me.Txt
  loc_19BAD16:                           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BAD36:                           Set var_164 = Me.Txt
  loc_19BAD3C:                           Call 0.Method_Txt_Validate0 (Cancel, var_168)
  loc_19BAD44:                           var_168.Text = Proc_6_33_15125B8(var_98, var_1C0)
  loc_19BAD5A:                         Else
  loc_19BAD62:                           If Not (var_90 = CInt(4)) Then
  loc_19BAD6D:                             If (var_90 = CInt(5)) Then
  loc_19BAD70:                             End If
  loc_19BAD7A:                             Set var_94 = Me.Txt
  loc_19BAD80:                             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BADA0:                             Set var_164 = Me.Txt
  loc_19BADA6:                             Call 0.Method_Txt_Validate0 (Cancel, var_168)
  loc_19BADAE:                             var_168.Text = Proc_6_33_15125B8(var_98)
  loc_19BADCF:                             Set var_94 = Me.Txt
  loc_19BADD5:                             Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_19BADF8:                             Set var_100 = Me.Txt
  loc_19BADFE:                             Call 0.Method_Txt_Validate0 (CInt(5), var_164, var_108)
  loc_19BAE06:                             (var_98.Text <> vbNullString) = var_164.Text
  loc_19BAE26:                             If (arg_10 And (var_108 <> vbNullString)) Then
  loc_19BAE37:                               Set var_100 = Me.Txt
  loc_19BAE3D:                               Call 0.Method_Txt_Validate0 (CInt(5), var_164)
  loc_19BAE58:                               Set var_94 = Me.Txt
  loc_19BAE5E:                               Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_19BAE88:                               If (CDate(var_98.Text) > CDate(var_164.Text)) Then
  loc_19BAEA4:                                 MsgBox("Birth Date Should be Less Than Anniversary Date", 0, var_120, var_130, var_140)
  loc_19BAEB6:                                 arg_10 = &HFF
  loc_19BAEB9:                                 Exit Sub
  loc_19BAEBA:                               End If
  loc_19BAED0:                               Set var_94 = Me.Txt
  loc_19BAED6:                               Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_19BAEDE:                               var_DC = var_98.Text
  loc_19BAEFF:                               If (CDate(var_DC) > CDate(Now)) Then
  loc_19BAF1B:                                 MsgBox("Invalid Birth Date ", 0, var_120, var_130, var_140)
  loc_19BAF2D:                                 arg_10 = &HFF
  loc_19BAF30:                                 Exit Sub
  loc_19BAF31:                               End If
  loc_19BAF47:                               Set var_94 = Me.Txt
  loc_19BAF4D:                               Call 0.Method_Txt_Validate0 (CInt(5), var_98, var_DC)
  loc_19BAF55:                               arg_10 = var_98.Text
  loc_19BAF76:                               If (CDate(var_DC) > CDate(Now)) Then
  loc_19BAF92:                                 MsgBox("Invalid Anniversary Date", 0, var_120, var_130, var_140)
  loc_19BAFA4:                                 arg_10 = &HFF
  loc_19BAFA7:                                 Exit Sub
  loc_19BAFA8:                               End If
  loc_19BAFA8:                             End If
  loc_19BAFB6:                             Set var_94 = Me.Txt
  loc_19BAFBC:                             Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_DC)
  loc_19BAFC4:                             arg_10 = var_98.Text
  loc_19BAFDB:                             If (var_DC <> vbNullString) Then
  loc_19BAFF4:                               Set var_94 = Me.Txt
  loc_19BAFFA:                               Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_19BB002:                               var_DC = var_98.Text
  loc_19BB023:                               If (CDate(var_DC) > CDate(Now)) Then
  loc_19BB03F:                                 MsgBox("Invalid Birth Date ", 0, var_120, var_130, var_140)
  loc_19BB051:                                 arg_10 = &HFF
  loc_19BB054:                                 Exit Sub
  loc_19BB055:                               End If
  loc_19BB055:                             End If
  loc_19BB063:                             Set var_94 = Me.Txt
  loc_19BB069:                             Call 0.Method_Txt_Validate0 (CInt(5), var_98, var_DC)
  loc_19BB071:                             arg_10 = var_98.Text
  loc_19BB088:                             If (var_DC <> vbNullString) Then
  loc_19BB0A1:                               Set var_94 = Me.Txt
  loc_19BB0A7:                               Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_19BB0AF:                               var_DC = var_98.Text
  loc_19BB0D0:                               If (CDate(var_DC) > CDate(Now)) Then
  loc_19BB0EC:                                 MsgBox("Invalid Anniversary Date", 0, var_120, var_130, var_140)
  loc_19BB0FE:                                 arg_10 = &HFF
  loc_19BB101:                                 Exit Sub
  loc_19BB102:                               End If
  loc_19BB102:                             End If
  loc_19BB105:                           Else
  loc_19BB10D:                             If (var_90 = CInt(3)) Then
  loc_19BB11D:                               Set var_94 = Me.Txt
  loc_19BB123:                               Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_19BB12B:                               arg_10 = var_98.Text
  loc_19BB142:                               If (var_DC <> vbNullString) Then
  loc_19BB15D:                                 Set var_98 = Me.ListView.SelectedItem
  loc_19BB175:                                 Set var_100 = Me.Txt
  loc_19BB17B:                                 Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BB183:                                 var_164.Text = var_98.Text
  loc_19BB199:                               End If
  loc_19BB1A6:                               Set var_94 = Me.Txt
  loc_19BB1AC:                               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BB1CB:                               If (var_98.Text = "Foreign") Then
  loc_19BB1DA:                                 Me.BtnVisa.Enabled = True
  loc_19BB1E5:                               Else
  loc_19BB1F1:                                 Me.BtnVisa.Enabled = False
  loc_19BB1F9:                               End If
  loc_19BB1FC:                             Else
  loc_19BB204:                               If (var_90 = CInt(&HD)) Then
  loc_19BB214:                                 Set var_94 = Me.Txt
  loc_19BB21A:                                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BB239:                                 If (var_98.Text <> vbNullString) Then
  loc_19BB249:                                   Set var_94 = Me.Txt
  loc_19BB24F:                                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BB26E:                                   If (var_98.Text <> "NA") Then
  loc_19BB280:                                     Set var_94 = Me.Txt
  loc_19BB286:                                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BB2A1:                                     var_8E = CInt(InStr(1, CVar(var_98), "@", 0))
  loc_19BB2B4:                                     If (var_8E <> 0) Then
  loc_19BB2C8:                                       Set var_94 = Me.Txt
  loc_19BB2CE:                                       Call 0.Method_Txt_Validate0 (Cancel, var_98, CLng((var_8E + 1)))
  loc_19BB2E4:                                       var_120 = InStr(var_8E, CVar(var_98), "@", 0)
  loc_19BB2FA:                                       If CBool(var_120 <> 0) Then
  loc_19BB30B:                                         var_A8 = "Enter Valid E-Mail Id."
  loc_19BB316:                                         MsgBox("@", &H40, var_120, var_130, var_140)
  loc_19BB328:                                         arg_10 = &HFF
  loc_19BB32B:                                         Exit Sub
  loc_19BB32C:                                       End If
  loc_19BB32F:                                     Else
  loc_19BB33D:                                       var_A8 = "Enter Valid E-Mail Id."
  loc_19BB348:                                       MsgBox("@", &H40, var_120, var_130, var_140)
  loc_19BB35A:                                       arg_10 = &HFF
  loc_19BB35D:                                       Exit Sub
  loc_19BB35E:                                     End If
  loc_19BB368:                                     Set var_94 = Me.Txt
  loc_19BB36E:                                     Call 0.Method_Txt_Validate0 (Cancel, var_98, arg_10)
  loc_19BB393:                                     Set var_100 = Me.Txt
  loc_19BB399:                                     Call 0.Method_Txt_Validate0 (Cancel, var_164, CStr(LCase(CVar(var_98))))
  loc_19BB3A1:                                     var_164.Text = arg_10
  loc_19BB3B9:                                   End If
  loc_19BB3B9:                                 End If
  loc_19BB3B9:                               End If
  loc_19BB3B9:                             End If
  loc_19BB3B9:                           End If
  loc_19BB3B9:                         End If
  loc_19BB3B9:                       End If
  loc_19BB3B9:                     End If
  loc_19BB3B9:                   End If
  loc_19BB3B9:                 End If
  loc_19BB3B9:               End If
  loc_19BB3B9:             End If
  loc_19BB3B9:           End If
  loc_19BB3B9:         End If
  loc_19BB3B9:       End If
  loc_19BB3B9:     End If
  loc_19BB3B9:   End If
  loc_19BB3B9: End If
  loc_19BB3B9: Exit Sub
End Sub

Private Sub BtnVisa_Click() '12F67A8
  'Data Table: 5A238C
  Dim var_88 As Variant
  Dim var_8C As Variant
  loc_12F60AB: Set var_88 = Me.Txt
  loc_12F60B1: Call 0.Method_BtnVisa_Click0 (CInt(&H11))
  loc_12F60DA: If (Proc_6_27_EA61EC(var_8C, "Nationality") = 0) Then
  loc_12F60E4:   Call Txt_GotFocus(CInt(&H11))
  loc_12F60E9:   Exit Sub
  loc_12F60EA: End If
  loc_12F60F8: Me.FrameFor.Top = CDbl(0)
  loc_12F610E: Me.FrameFor.Left = CDbl(0)
  loc_12F611C: Call 0.Method_Me0 (var_9C)
  loc_12F612E: Me.FrameFor.Width = var_9C
  loc_12F613C: Call 0.Method_Me8 (var_9C)
  loc_12F614E: Me.FrameFor.Height = var_9C
  loc_12F6164: Me.LabelPass.Left = CDbl(0)
  loc_12F6172: Call 0.Method_Me0 (var_9C)
  loc_12F6184: Me.LabelPass.Width = var_9C
  loc_12F6198: Me.FrameFor.Visible = True
  loc_12F61A3: Call Proc_24_79_E41084(var_96)
  loc_12F61BB: Set var_88 = Me.Txt
  loc_12F61C1: Call 0.Method_BtnVisa_Click0 (CInt(&H47), var_8C)
  loc_12F61C9: var_8C.Text = CStr(var_96)
  loc_12F61D8: Call Proc_24_80_F9D144(var_8C)
  loc_12F61E1: Set var_88 = Me.TopCtrl1
  loc_12F61E7: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_12F6200: If (CStr() <> "Browse") Then
  loc_12F6206:   Call Proc_24_79_E41084(var_96)
  loc_12F6211:   If (var_96 = 1) Then
  loc_12F621A:     global_72 = "Add"
  loc_12F622C:     Set var_88 = Me.Txt
  loc_12F6232:     Call 0.Method_BtnVisa_Click0 (CInt(&H47), var_8C)
  loc_12F624B:     Call Proc_24_78_13A8F20(CInt(Val(var_8C.Text)))
  loc_12F625F:     Call Proc_24_77_11BC204(&HFF)
  loc_12F6271:     Set var_88 = Me.Txt
  loc_12F6277:     Call 0.Method_BtnVisa_Click0 (CInt(&H24), var_8C)
  loc_12F627F:     var_8C.Enabled = False
  loc_12F6298:     Set var_88 = Me.Txt
  loc_12F629E:     Call 0.Method_BtnVisa_Click0 (CInt(&H27), var_8C)
  loc_12F62A6:     var_8C.Enabled = False
  loc_12F62BF:     Set var_88 = Me.Txt
  loc_12F62C5:     Call 0.Method_BtnVisa_Click0 (CInt(&H26), var_8C)
  loc_12F62CD:     var_8C.Enabled = False
  loc_12F62E6:     Set var_88 = Me.Txt
  loc_12F62EC:     Call 0.Method_BtnVisa_Click0 (CInt(&H25), var_8C)
  loc_12F62F4:     var_8C.Enabled = False
  loc_12F630D:     Set var_88 = Me.Cmd
  loc_12F6313:     Call 0.Method_BtnVisa_Click0 (CInt(6), var_8C)
  loc_12F631B:     var_8C.Enabled = False
  loc_12F6334:     Set var_88 = Me.Cmd
  loc_12F633A:     Call 0.Method_BtnVisa_Click0 (CInt(2), var_8C)
  loc_12F6342:     var_8C.Enabled = False
  loc_12F635B:     Set var_88 = Me.Cmd
  loc_12F6361:     Call 0.Method_BtnVisa_Click0 (CInt(7), var_8C)
  loc_12F6369:     var_8C.Enabled = False
  loc_12F6382:     Set var_88 = Me.Cmd
  loc_12F6388:     Call 0.Method_BtnVisa_Click0 (CInt(3), var_8C)
  loc_12F6390:     var_8C.Enabled = True
  loc_12F63A9:     Set var_88 = Me.Cmd
  loc_12F63AF:     Call 0.Method_BtnVisa_Click0 (CInt(8), var_8C)
  loc_12F63B7:     var_8C.Enabled = False
  loc_12F63D0:     Set var_88 = Me.Cmd
  loc_12F63D6:     Call 0.Method_BtnVisa_Click0 (CInt(4), var_8C)
  loc_12F63DE:     var_8C.Enabled = True
  loc_12F63F7:     Set var_88 = Me.Cmd
  loc_12F63FD:     Call 0.Method_BtnVisa_Click0 (CInt(5), var_8C)
  loc_12F6405:     var_8C.Enabled = False
  loc_12F641C:     Set var_88 = Me.Txt
  loc_12F6422:     Call 0.Method_BtnVisa_Click0 (CInt(&H29))
  loc_12F642A:     var_8C.SetFocus
  loc_12F6439:   Else
  loc_12F643F:     global_72 = "Browse"
  loc_12F6451:     Set var_88 = Me.Txt
  loc_12F6457:     Call 0.Method_BtnVisa_Click0 (CInt(&H47), var_8C)
  loc_12F6470:     Call Proc_24_78_13A8F20(CInt(Val(var_8C.Text)))
  loc_12F6484:     Call Proc_24_77_11BC204(0)
  loc_12F6496:     Set var_88 = Me.Cmd
  loc_12F649C:     Call 0.Method_BtnVisa_Click0 (CInt(6), var_8C)
  loc_12F64A4:     var_8C.Enabled = True
  loc_12F64BD:     Set var_88 = Me.Cmd
  loc_12F64C3:     Call 0.Method_BtnVisa_Click0 (CInt(7), var_8C)
  loc_12F64CB:     var_8C.Enabled = True
  loc_12F64E4:     Set var_88 = Me.Cmd
  loc_12F64EA:     Call 0.Method_BtnVisa_Click0 (CInt(2), var_8C)
  loc_12F64F2:     var_8C.Enabled = True
  loc_12F650B:     Set var_88 = Me.Cmd
  loc_12F6511:     Call 0.Method_BtnVisa_Click0 (CInt(3), var_8C)
  loc_12F6519:     var_8C.Enabled = False
  loc_12F6532:     Set var_88 = Me.Cmd
  loc_12F6538:     Call 0.Method_BtnVisa_Click0 (CInt(8), var_8C)
  loc_12F6540:     var_8C.Enabled = False
  loc_12F6559:     Set var_88 = Me.Cmd
  loc_12F655F:     Call 0.Method_BtnVisa_Click0 (CInt(4), var_8C)
  loc_12F6567:     var_8C.Enabled = True
  loc_12F6580:     Set var_88 = Me.Cmd
  loc_12F6586:     Call 0.Method_BtnVisa_Click0 (CInt(5), var_8C)
  loc_12F658E:     var_8C.Enabled = False
  loc_12F659A:   End If
  loc_12F659E:   Set var_88 = Me.TopCtrl1
  loc_12F65A4:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_8C)
  loc_12F65BD:   If (CStr() = "Edit") Then
  loc_12F65CD:     Set var_88 = Me.Cmd
  loc_12F65D3:     Call 0.Method_BtnVisa_Click0 (CInt(6), var_8C)
  loc_12F65DB:     var_8C.Enabled = False
  loc_12F65F4:     Set var_88 = Me.Cmd
  loc_12F65FA:     Call 0.Method_BtnVisa_Click0 (CInt(2), var_8C)
  loc_12F6602:     var_8C.Enabled = False
  loc_12F6611:   Else
  loc_12F6617:     Call Proc_24_85_10173DC(MemVar_1F95044)
  loc_12F662F:     Set var_88 = Me.Txt
  loc_12F6635:     Call 0.Method_BtnVisa_Click0 (CInt(&H48), var_8C)
  loc_12F663D:     var_8C.Text = CStr(var_9C)
  loc_12F664C:   End If
  loc_12F664F: Else
  loc_12F6655:   global_72 = "Browse"
  loc_12F6667:   Set var_88 = Me.Txt
  loc_12F666D:   Call 0.Method_BtnVisa_Click0 (CInt(&H47), var_8C)
  loc_12F6686:   Call Proc_24_78_13A8F20(CInt(Val(var_8C.Text)))
  loc_12F66A2:   Set var_88 = Me.Cmd
  loc_12F66A8:   Call 0.Method_BtnVisa_Click0 (CInt(6), var_8C)
  loc_12F66B0:   var_8C.Enabled = False
  loc_12F66C9:   Set var_88 = Me.Cmd
  loc_12F66CF:   Call 0.Method_BtnVisa_Click0 (CInt(7), var_8C)
  loc_12F66D7:   var_8C.Enabled = False
  loc_12F66F0:   Set var_88 = Me.Cmd
  loc_12F66F6:   Call 0.Method_BtnVisa_Click0 (CInt(2), var_8C)
  loc_12F66FE:   var_8C.Enabled = False
  loc_12F6717:   Set var_88 = Me.Cmd
  loc_12F671D:   Call 0.Method_BtnVisa_Click0 (CInt(3), var_8C)
  loc_12F6725:   var_8C.Enabled = False
  loc_12F673E:   Set var_88 = Me.Cmd
  loc_12F6744:   Call 0.Method_BtnVisa_Click0 (CInt(8), var_8C)
  loc_12F674C:   var_8C.Enabled = False
  loc_12F6765:   Set var_88 = Me.Cmd
  loc_12F676B:   Call 0.Method_BtnVisa_Click0 (CInt(4), var_8C)
  loc_12F6773:   var_8C.Enabled = True
  loc_12F678C:   Set var_88 = Me.Cmd
  loc_12F6792:   Call 0.Method_BtnVisa_Click0 (CInt(5), var_8C)
  loc_12F679A:   var_8C.Enabled = False
  loc_12F67A6: End If
  loc_12F67A6: Exit Sub
End Sub

Private Sub btnWebProfile_Click() 'F32298
  'Data Table: 5A238C
  Dim var_90 As String
  Dim MemVar_1F950E4 As String
  Dim unk_5A23BF As Connection15
  Dim var_8C As Recordset15
  Dim var_D0 As String
  Dim var_BC As Frame
  loc_F32198: On Error Goto loc_F32291
  loc_F321AC: var_90 = "Select Code As SearchCode,GUESTPROF.Name As Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GuestProf Left Join City on City.CityCode=GuestProf.City Where GuestProf.Code Not In (Select Distinct GuestProf From (Select GuestProf From Booking Union All Select GuestProf From GuestFolio Union All Select GuestProf From GuestFolioProfDetail Union All Select GuestProf From Paycharge) Q) And (GuestProf.LOGSITE_CODE='" & MemVar_1F95078
  loc_F321C1: MemVar_1F950E4 = var_90 & "' or GuestProf.LOGSITE_CODE='HO') and GUESTPROF.Name is not null " & var_88 & " And GUESTPROF.WebYN='Y'" & " Order by GuestProf.Name"
  loc_F321E4: unk_5A23BF.Execute MemVar_1F950E4, var_B8, -1
  loc_F3220C: If (var_BC.RecordCount <= 0) Then
  loc_F32215:   var_D0 = "Information"
  loc_F32230:   MsgBox("No Records To Search.", &H40, var_D0, var_100, var_120)
  loc_F32240:   Exit Sub
  loc_F32241: End If
  loc_F32247: Set var_BC = Me.FrmFind
  loc_F3224D: var_BC.Visible = False
  loc_F3225B: MemVar_1F95120 = Me
  loc_F32268: Proc_6_126_F1C850("3200,2500,2500,2400", var_BC)
  loc_F32283: Call 0.Method_arg_2B0 (1, var_D0)
  loc_F3228D: Set var_8C = Nothing
  loc_F32290: Exit Sub
  loc_F32291: ' Referenced from: F32198
  loc_F32291: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F32296: Exit Sub
End Sub

Private Sub CmdDummyGuestProf_Click() 'F3B0C4
  'Data Table: 5A238C
  Dim var_90 As String
  Dim MemVar_1F950E4 As String
  Dim unk_5A23BF As Connection15
  Dim var_8C As Recordset15
  Dim var_D0 As String
  loc_F3AFBC: On Error Goto loc_F3B0BE
  loc_F3AFD2: If (GuestCode <> vbNullString) Then
  loc_F3AFD5:   GoTo loc_F3B0B5
  loc_F3AFD8: End If
  loc_F3AFDF: var_90 = "Select Code As SearchCode,GUESTPROF.Name As Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GuestProf Left Join City on City.CityCode=GuestProf.City Where GuestProf.Code Not In (Select Distinct GuestProf From (Select GuestProf From Booking Union All Select GuestProf From GuestFolio Union All Select GuestProf From GuestFolioProfDetail Union All Select GuestProf From Paycharge) Q) And (GuestProf.LOGSITE_CODE='" & MemVar_1F95078
  loc_F3AFF4: MemVar_1F950E4 = var_90 & "' or GuestProf.LOGSITE_CODE='HO') and GUESTPROF.Name is not null " & var_88 & " Order by GuestProf.Name"
  loc_F3B017: unk_5A23BF.Execute MemVar_1F950E4, var_B8, -1
  loc_F3B03F: If (var_BC.RecordCount <= 0) Then
  loc_F3B048:   var_D0 = "Information"
  loc_F3B063:   MsgBox("No Records To Search.", &H40, var_D0, var_100, var_120)
  loc_F3B073:   Exit Sub
  loc_F3B074: End If
  loc_F3B07A: MemVar_1F95120 = Me
  loc_F3B087: Proc_6_126_F1C850("3200,2500,2500,2400", var_BC)
  loc_F3B098: Call 0.Method_arg_54 ("Dummy Guest Profile")
  loc_F3B0B0: Call 0.Method_arg_2B0 (1, var_D0)
  loc_F3B0B5: ' Referenced from: F3AFD5
  loc_F3B0BA: Set var_8C = Nothing
  loc_F3B0BD: Exit Sub
  loc_F3B0BE: ' Referenced from: F3AFBC
  loc_F3B0BE: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F3B0C3: Exit Sub
End Sub

Private Sub btnAddGuestProf_Click() '136464C
  'Data Table: 5A238C
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_EC As Variant
  Dim var_E8 As Variant
  Dim var_F0 As String
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_104 As Variant
  loc_1363E00: On Error Goto loc_13645EF
  loc_1363E28: For var_A4 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_86 = var_A4 'Integer
  loc_1363E3A:   var_D4 = CVar(CLng(5)) 'Long
  loc_1363E65:   Set var_E8 = Me.Txt
  loc_1363E6B:   Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_EC, var_F0, CStr(Me.FGrid2.TextMatrix)))
  loc_1363E73:   var_D4 = var_EC.Tag
  loc_1363E90:   If (CVar(CLng(var_86)) = var_F0) Then
  loc_1363EA1:     Set var_90 = Me.Txt
  loc_1363EA7:     Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_E8)
  loc_1363EDB:     var_8C = CStr(MsgBox(CVar(var_E8.Text & " Is Already Added In This Profile"), &H40, "Info", var_114, var_124))
  loc_1363EF3:     Exit Sub
  loc_1363EF4:   End If
  loc_1363EF7: Next var_A4 'Integer
  loc_1363EFC: var_B4 = 1
  loc_1363F08: var_D4 = CVar(CLng(1)) 'Long
  loc_1363F22: var_F0 = CStr(Me.FGrid2.TextMatrix))
  loc_1363F33: If (var_F0 <> vbNullString) Then
  loc_1363F36:   var_B4 = vbNullString
  loc_1363F40:   Set var_90 = Me.FGrid2
  loc_1363F6A:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1363F72:   var_D4 = CVar(CLng(0)) 'Long
  loc_1363F81:   Set var_E8 = Me.FGrid2
  loc_1363F87:   LateIdCallSt
  loc_1363FB2:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1363FCA:   Set var_90 = Me.Txt
  loc_1363FD0:   Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_E8, CVar(CLng(1)), var_B4, var_E8, vbNullString)
  loc_1363FF6:   LateIdCallSt
  loc_136402B:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1364043:   Set var_90 = Me.Txt
  loc_1364049:   Call 0.Method_btnAddGuestProf_Click0 (CInt(1), var_E8, CVar(CLng(2)), var_B4, Me.FGrid2, CVar(CStr(Trim(CVar(var_E8)))))
  loc_136406F:   LateIdCallSt
  loc_13640A4:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_13640BC:   Set var_90 = Me.Txt
  loc_13640C2:   Call 0.Method_btnAddGuestProf_Click0 (CInt(2), var_E8, CVar(CLng(3)), var_B4, Me.FGrid2, CVar(CStr(Trim(CVar(var_E8)))))
  loc_13640E8:   LateIdCallSt
  loc_136411D:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1364135:   Set var_90 = Me.Txt
  loc_136413B:   Call 0.Method_btnAddGuestProf_Click0 (CInt(&H11), var_E8, CVar(CLng(4)), var_B4, Me.FGrid2, CVar(CStr(Trim(CVar(var_E8)))))
  loc_1364161:   LateIdCallSt
  loc_1364196:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_13641B1:   Set var_90 = Me.Txt
  loc_13641B7:   Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_E8, var_F0, CVar(CLng(5)), var_B4, Me.FGrid2, CVar(CStr(Trim(CVar(var_E8)))))
  loc_13641BF:   var_D4 = var_E8.Tag
  loc_13641C7:   var_104 = CVar(var_F0) 'String
  loc_13641CF:   Set var_148 = Me.FGrid2
  loc_13641D5:   LateIdCallSt
  loc_1364208:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1364210:   var_D4 = CVar(CLng(6)) 'Long
  loc_1364222:   var_F0 = Me.lblmProf.Caption
  loc_136422A:   var_104 = CVar(var_F0) 'String
  loc_1364232:   Set var_EC = Me.FGrid2
  loc_1364238:   LateIdCallSt
  loc_1364253: Else
  loc_1364266:   Me.FGrid2.Col = 0
  loc_136427E:   Me.FGrid2.CellFontName = "WINGDINGS"
  loc_1364298:   Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_13642B9:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_13642C1:   var_D4 = CVar(CLng(0)) 'Long
  loc_13642D0:   Set var_E8 = Me.FGrid2
  loc_13642D6:   LateIdCallSt
  loc_1364301:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1364319:   Set var_90 = Me.Txt
  loc_136431F:   Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_E8, CVar(CLng(1)), CVar(CDbl(&HE)), var_E8, "ü", CVar(CLng(1)))
  loc_1364345:   LateIdCallSt
  loc_136437A:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1364392:   Set var_90 = Me.Txt
  loc_1364398:   Call 0.Method_btnAddGuestProf_Click0 (CInt(1), var_E8, CVar(CLng(2)), CVar(CDbl(&HE)), Me.FGrid2, CVar(CStr(Trim(CVar(var_E8)))), CVar(CDbl(&HE)))
  loc_13643BE:   LateIdCallSt
  loc_13643F3:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_136440B:   Set var_90 = Me.Txt
  loc_1364411:   Call 0.Method_btnAddGuestProf_Click0 (CInt(2), var_E8, CVar(CLng(3)), CVar(CDbl(&HE)), Me.FGrid2, CVar(CStr(Trim(CVar(var_E8)))))
  loc_1364437:   LateIdCallSt
  loc_136445D:   var_114 = Me.FGrid2.Rows
  loc_136446C:   var_B4 = CVar((CLng(var_114) - 1)) 'Long
  loc_1364484:   Set var_90 = Me.Txt
  loc_136448A:   Call 0.Method_btnAddGuestProf_Click0 (CInt(&H11), var_E8, CVar(CLng(4)), CVar(CDbl(&HE)), Me.FGrid2, CVar(CStr(Trim(CVar(var_E8)))))
  loc_13644A2:   var_124 = CVar(CStr(Trim(CVar(var_E8)))) 'String
  loc_13644B0:   LateIdCallSt
  loc_13644E5:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1364500:   Set var_90 = Me.Txt
  loc_1364506:   Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_E8, var_F0, CVar(CLng(5)), CVar(CDbl(&HE)), Me.FGrid2, var_124)
  loc_136450E:   var_EC = var_E8.Tag
  loc_1364516:   var_104 = CVar(var_F0) 'String
  loc_1364524:   LateIdCallSt
  loc_1364557:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_136455F:   var_D4 = CVar(CLng(6)) 'Long
  loc_1364572:   Set var_90 = Me.Txt
  loc_1364578:   Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_E8, var_F0, var_D4, CVar(CDbl(&HE)), Me.FGrid2)
  loc_1364580:   var_104 = var_E8.Tag
  loc_1364590:   Set var_148 = Me.FGrid2
  loc_1364596:   LateIdCallSt
  loc_13645BE:   Set var_90 = Me.Txt
  loc_13645C4:   Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_E8, var_F0, var_148, CVar(var_F0))
  loc_13645CC:   var_104 = var_E8.Tag
  loc_13645DE:   Me.lblmProf.Caption = var_F0
  loc_13645EF: End If
  loc_13645EF: ' Referenced from: 1363E00
  loc_13645F7: Set var_90 = Err()
  loc_13645FD: Call 0.Method_arg_1C (var_14C, var_D4, CVar(CDbl(&HE)))
  loc_136460E: If (var_14C <> 0) Then
  loc_1364627:   Set var_90 = Err()
  loc_136462D:   Call 0.Method_arg_2C (var_F0, 0, var_104, var_114)
  loc_1364638:   MsgBox(CVar(var_F0), var_124, var_148, var_104, )
  loc_136464B: End If
  loc_136464B: Exit Sub
End Sub

Private Sub GuestSign_Click() '105CAD8
  'Data Table: 5A238C
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105C890: On Error Goto loc_105CA79
  loc_105C897: Set var_88 = Me.TopCtrl1
  loc_105C89D: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_105C8B1: Set var_A0 = Me.TopCtrl1
  loc_105C8B7: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005((CStr() <> "Add"))
  loc_105C8DD: If ( And (CStr() <> "Edit")) Then
  loc_105C8E0:   Exit Sub
  loc_105C8E1: End If
  loc_105C8F1: Me.CDlg.Filter = "*.*"
  loc_105C909: Me.CDlg.Action = 1
  loc_105C91B: Me.CDlg.FileName = 
  loc_105C923: var_9C = CStr()
  loc_105C930: Me.GuestSign.Tag = var_9C
  loc_105C94C: Me.CDlg.FileName = 
  loc_105C954: var_B0 = CVar(CStr()) 'String
  loc_105C95A: var_E4 = Trim(var_B0)
  loc_105C963: Set var_A0 = Me.CDlg
  loc_105C969: var_A0.FileName = 
  loc_105C987: var_F4 = Right(var_E4, 3)
  loc_105C9C2: var_D4 = "AVI"
  loc_105C9F0: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105CA01:   var_C4 = "Invalid Format"
  loc_105CA0C:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105CA1F: Else
  loc_105CA36:   Set var_88 = Me.CDlg
  loc_105CA3C:   var_88.FileName = var_C4
  loc_105CA44:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105CA4E:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105CA63:   Me.GuestSign.Picture = var_A0
  loc_105CA78: End If
  loc_105CA78: Exit Sub
  loc_105CA79: ' Referenced from: 105C890
  loc_105CA81: Set var_88 = Err()
  loc_105CA87: Call 0.Method_arg_1C (var_1B0)
  loc_105CA98: If (var_1B0 <> 0) Then
  loc_105CAB1:   Set var_88 = Err()
  loc_105CAB7:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105CAC2:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105CAD5: End If
  loc_105CAD5: Exit Sub
End Sub

Private Sub GuestImage_DblClick() '105C814
  'Data Table: 5A238C
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105C5CC: On Error Goto loc_105C7B5
  loc_105C5D3: Set var_88 = Me.TopCtrl1
  loc_105C5D9: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_105C5ED: Set var_A0 = Me.TopCtrl1
  loc_105C5F3: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005((CStr() <> "Add"))
  loc_105C619: If ( And (CStr() <> "Edit")) Then
  loc_105C61C:   Exit Sub
  loc_105C61D: End If
  loc_105C62D: Me.CDlg.Filter = "*.*"
  loc_105C645: Me.CDlg.Action = 1
  loc_105C657: Me.CDlg.FileName = 
  loc_105C65F: var_9C = CStr()
  loc_105C66C: Me.GuestImage.Tag = var_9C
  loc_105C688: Me.CDlg.FileName = 
  loc_105C690: var_B0 = CVar(CStr()) 'String
  loc_105C696: var_E4 = Trim(var_B0)
  loc_105C69F: Set var_A0 = Me.CDlg
  loc_105C6A5: var_A0.FileName = 
  loc_105C6C3: var_F4 = Right(var_E4, 3)
  loc_105C6FE: var_D4 = "AVI"
  loc_105C72C: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105C73D:   var_C4 = "Invalid Format"
  loc_105C748:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105C75B: Else
  loc_105C772:   Set var_88 = Me.CDlg
  loc_105C778:   var_88.FileName = var_C4
  loc_105C780:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105C78A:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105C79F:   Me.GuestImage.Picture = var_A0
  loc_105C7B4: End If
  loc_105C7B4: Exit Sub
  loc_105C7B5: ' Referenced from: 105C5CC
  loc_105C7BD: Set var_88 = Err()
  loc_105C7C3: Call 0.Method_arg_1C (var_1B0)
  loc_105C7D4: If (var_1B0 <> 0) Then
  loc_105C7ED:   Set var_88 = Err()
  loc_105C7F3:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105C7FE:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105C811: End If
  loc_105C811: Exit Sub
End Sub

Private Sub Form_Load() '171C110
  'Data Table: 5A238C
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As TextBox
  Dim var_C0 As Variant
  Dim var_C4 As TextBox
  Dim var_CC As DataGrid
  Dim var_B0 As Variant
  Dim var_EC As Variant
  Dim var_F0 As String
  Dim unk_5A23BF As Connection15
  Dim var_90 As Recordset15
  Dim var_DC As Variant
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  Dim var_110 As Variant
  Dim var_124 As String
  Dim var_88 As Recordset15
  Dim var_100 As Variant
  loc_171A50C: On Error Goto loc_171C109
  loc_171A516: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_171A52E: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_171A545: Me.LblUser.Left = CDbl(13500)
  loc_171A55C: Me.LblUser.Top = CDbl(7800)
  loc_171A573: Me.LblLDt.Top = CDbl(8160)
  loc_171A58A: Me.LblLDt.Left = CDbl(13500)
  loc_171A59A: Call 0.Method_arg_7C (CDbl(1450))
  loc_171A5A7: Call 0.Method_arg_74 (CDbl(1625))
  loc_171A5B4: Call 0.Method_MeC (CDbl(9200))
  loc_171A5C1: Call 0.Method_Me4 (CDbl(17000))
  loc_171A5DC: Set var_B4 = Me.Txt
  loc_171A5E2: Call 0.Method_Form_Load0 (CInt(6), var_B8)
  loc_171A601: Me.DGCity.Left = CVar(var_B8.Left)
  loc_171A61D: Set var_C0 = Me.Txt
  loc_171A623: Call 0.Method_Form_Load0 (CInt(6), var_C4)
  loc_171A63E: Set var_B4 = Me.Txt
  loc_171A644: Call 0.Method_Form_Load0 (CInt(6), var_B8)
  loc_171A65C: var_A0 = CVar(((var_B8.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_171A66B: Me.DGCity.Top = CVar(var_B8.Left)
  loc_171A68B: Set var_B4 = Me.Txt
  loc_171A691: Call 0.Method_Form_Load0 (CInt(&H12), var_B8)
  loc_171A6B0: Me.DGState.Left = CVar(var_B8.Left)
  loc_171A6CC: Set var_C0 = Me.Txt
  loc_171A6D2: Call 0.Method_Form_Load0 (CInt(&H12), var_C4)
  loc_171A6ED: Set var_B4 = Me.Txt
  loc_171A6F3: Call 0.Method_Form_Load0 (CInt(&H12), var_B8)
  loc_171A70B: var_A0 = CVar(((var_B8.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_171A71A: Me.DGState.Top = CVar(var_B8.Left)
  loc_171A73A: Set var_B4 = Me.Txt
  loc_171A740: Call 0.Method_Form_Load0 (CInt(&H13), var_B8)
  loc_171A75F: Me.DGCountry.Left = CVar(var_B8.Left)
  loc_171A77B: Set var_C0 = Me.Txt
  loc_171A781: Call 0.Method_Form_Load0 (CInt(&H13), var_C4)
  loc_171A79C: Set var_B4 = Me.Txt
  loc_171A7A2: Call 0.Method_Form_Load0 (CInt(&H13), var_B8)
  loc_171A7BA: var_A0 = CVar(((var_B8.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_171A7C9: Me.DGCountry.Top = CVar(var_B8.Left)
  loc_171A7E9: Set var_B4 = Me.Txt
  loc_171A7EF: Call 0.Method_Form_Load0 (CInt(&H11), var_B8)
  loc_171A80E: Me.DGNationality.Left = CVar(var_B8.Left)
  loc_171A82A: Set var_C0 = Me.Txt
  loc_171A830: Call 0.Method_Form_Load0 (CInt(&H11), var_C4)
  loc_171A838: var_C8 = var_C4.Height
  loc_171A84B: Set var_B4 = Me.Txt
  loc_171A851: Call 0.Method_Form_Load0 (CInt(&H11), var_B8)
  loc_171A869: var_A0 = CVar(((var_B8.Top + var_C8) + CDbl(&H1E))) 'Single
  loc_171A878: Me.DGNationality.Top = CVar(var_B8.Left)
  loc_171A8A7: Proc_6_17_EAAE40(var_DC, MemVar_1F95078, "Select SMSPhoneNoPrefix from SMSEnviro WHERE logSITE_CODE=", var_110)
  loc_171A8AF: var_EC = -1 & var_DC 
  loc_171A8BD: unk_5A23BF.Execute CStr(var_EC), var_B4, 0
  loc_171A8C8: Set var_90 = var_B4
  loc_171A8EE: If (var_90.RecordCount > 0) Then
  loc_171A900:   var_B4 = var_90.Fields
  loc_171A910:   var_DC = CVar(var_B4.Item("SmsPhoneNoPrefix")) 'Address
  loc_171A91F:   global_84 = Proc_6_38_E69628(var_DC)
  loc_171A92C: End If
  loc_171A949: Proc_6_17_EAAE40(var_DC, MemVar_1F95078, "Select * from enviro WHERE logSITE_CODE=")
  loc_171A95F: unk_5A23BF.Execute CStr(var_110 & var_DC), -1, var_B4
  loc_171A96A: Set var_8C = var_B4
  loc_171A982: var_BC = var_8C.RecordCount
  loc_171A990: If (var_BC > 0) Then
  loc_171A9AA:   var_B8 = var_8C.Fields.Item("GRCMandatory")
  loc_171A9C1:   global_80 = Proc_6_38_E69628(CVar(var_B8))
  loc_171A9CE: End If
  loc_171A9D8: Set global_92 = New 
  loc_171A9EA: Me.CursorLocation = 3
  loc_171AA14: var_DC = CVar("Select CITYCODE AS Code,CITYNAME AS Name From CITY where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by CITYName") 'String
  loc_171AA1E: Me.Open var_DC, CVar(MemVar_1F95044), 2
  loc_171AA32: CVarUnk
  loc_171AA37: VerifyVarObj
  loc_171AA3D: Set var_B4 = Me.DGCity
  loc_171AA43: LateIdStAd
  loc_171AA5B: Set global_96 = New 
  loc_171AA6D: Me.DGCity.CursorLocation = 3
  loc_171AA97: var_DC = CVar("Select Code,Name From COUNTRY where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_171AAA1: Me.Open var_DC, CVar(MemVar_1F95044), 2
  loc_171AAB5: CVarUnk
  loc_171AABA: VerifyVarObj
  loc_171AAC0: Set var_B4 = Me.DGCountry
  loc_171AAC6: LateIdStAd
  loc_171AAF0: Me.DGCountry.CursorLocation = 3
  loc_171AB24: Me.Open CVar("Select Code,Name From STATE Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F95044), 2
  loc_171AB38: CVarUnk
  loc_171AB3D: VerifyVarObj
  loc_171AB43: Set var_B4 = Me.DGState
  loc_171AB49: LateIdStAd
  loc_171AB73: Me.DGState.CursorLocation = 3
  loc_171AB96: var_F0 = "Select convert(varchar(25),ZipCode) As Code,convert(varchar(25),ZipCode) As Name From City Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_171ABA7: Me.Open CVar(var_F0 & "' or LOGSITE_CODE='HO') and ZipCode is not null and zipcode<>'' Order by ZipCode"), CVar(MemVar_1F95044), 2
  loc_171ABBB: CVarUnk
  loc_171ABC0: VerifyVarObj
  loc_171ABCC: LateIdStAd
  loc_171ABE8: Set var_C0 = Me.Txt
  loc_171ABEE: Call 0.Method_Form_Load0 (CInt(&H14), var_C4, var_C8, Me.DGZipCode, New, 3, -1)
  loc_171ABF6: var_B4 = var_C4.Height
  loc_171AC09: Set var_B4 = Me.Txt
  loc_171AC0F: Call 0.Method_Form_Load0 (CInt(&H14), var_B8, var_BC, New, 3)
  loc_171AC17: -1 = var_B8.Top
  loc_171AC27: var_A0 = CVar(((var_BC + var_C8) + CDbl(&H1E))) 'Single
  loc_171AC36: Me.DGZipCode.Top = CVar(MemVar_1F95044)
  loc_171AC56: Set var_B4 = Me.Txt
  loc_171AC5C: Call 0.Method_Form_Load0 (CInt(&H14), var_B8, var_BC)
  loc_171AC64: var_B4 = var_B8.Left
  loc_171AC7B: Me.DGZipCode.Left = CVar(var_BC)
  loc_171AC97: Set var_B4 = Me.Txt
  loc_171AC9D: Call 0.Method_Form_Load0 (CInt(7), var_B8, var_BC)
  loc_171ACA5: global_96 = var_B8.Left
  loc_171ACBC: Me.DGGuestStatus.Left = CVar(var_BC)
  loc_171ACD8: Set var_C0 = Me.Txt
  loc_171ACDE: Call 0.Method_Form_Load0 (CInt(7), var_C4)
  loc_171ACF9: Set var_B4 = Me.Txt
  loc_171ACFF: Call 0.Method_Form_Load0 (CInt(7), var_B8)
  loc_171AD17: var_A0 = CVar(((var_B8.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_171AD20: Set var_CC = Me.DGGuestStatus
  loc_171AD26: var_CC.Top = CVar(var_B8.Top)
  loc_171AD54: Me.var_CC.CursorLocation = 3
  loc_171AD7E: var_DC = CVar("Select Code ,Name From GuestStat Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_171AD88: Me.Open var_DC, CVar(MemVar_1F95044), 2
  loc_171AD9C: CVarUnk
  loc_171ADA1: VerifyVarObj
  loc_171ADA7: Set var_B4 = Me.DGGuestStatus
  loc_171ADAD: LateIdStAd
  loc_171ADD7: Me.DGGuestStatus.CursorLocation = 3
  loc_171AE01: var_DC = CVar("Select Code,Name From Country Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_171AE1F: CVarUnk
  loc_171AE24: VerifyVarObj
  loc_171AE30: LateIdStAd
  loc_171AE49: Proc_6_7_F26918(var_DC, MemVar_1F950F4, Me.DGNationality, New, 3, -1)
  loc_171AE7E: var_EC = CVar("SELECT GUESTPROF As CODE,FOLIONO As NAME FROM GuestFolio where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And Vdate>=") 'String
  loc_171AE96: Proc_6_92_EF7BF4(CStr(var_EC & var_DC & " ORDER BY NAME"), Me.TXT_FOLIONO, "NAME", "CODE", Me.TXT_FOLIONO)
  loc_171AEEC: Proc_6_92_EF7BF4("SELECT CODE,NAME FROM GuestProf where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY NAME", Me.TXT_GNAME, "NAME", "CODE")
  loc_171AF37: Proc_6_92_EF7BF4("SELECT CODE,NAME FROM STATE where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY NAME", Me.TXT_STATE, "NAME", "CODE")
  loc_171AF82: Proc_6_92_EF7BF4("SELECT CITYCODE,CITYNAME FROM CITY WHere (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY CITYNAME", Me.TXT_CITY, "CITYNAME", "CITYCODE")
  loc_171AFCD: Proc_6_92_EF7BF4("SELECT CODE,NAME FROM COUNTRY Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY NAME", Me.TXT_NATION, "NAME", "CODE")
  loc_171B018: Proc_6_92_EF7BF4("SELECT CODE,NAME FROM COUNTRY Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY NAME", Me.TXT_COUNTRY, "NAME", "CODE")
  loc_171B063: Proc_6_92_EF7BF4("SELECT DISTINCT TYPE AS CODE,TYPE AS NAME FROM COUNTRY where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY TYPE", Me.TXT_TYPE, "NAME", "CODE")
  loc_171B084: Set global_88 = New 
  loc_171B096: Me.TXT_TYPE.CursorLocation = 3
  loc_171B0AD: var_A0 = CVar(MemVar_1F95044) 'Address
  loc_171B0B9: var_F0 = "SELECT GF.CODE AS SearchCode,GF.Name As GuestName,GF.Add1 As GuestAdd1,GF.Add2 As GuestAdd2,GF.*,NA.Name As Nationality,GS.NAME AS GuestStatus,GPF.Name As GuestForName,GPF.Add1 As GuestForAdd1,NAF.Name As ForNationality,GPF.Add2 As GuestForAdd2,GPF.*,GF.Site_Code as Site_Code,gf.LogSite_Code as LogSite_Code FROM ((((GuestProf GF Left Join Country NA ON GF.Nationality=NA.CODE) Left Join GuestStat GS ON GF.GuestStatus=GS.Code) Left Join GuestProfFor GPF ON GF.CODE=GPF.CODE) Left Join Country NAF ON GPF.Nationality=NAF.CODE) Where (GF.LOGSITE_CODE='" & MemVar_1F95078
  loc_171B0CA: r_DC, CVar(MemVar_1F95044), 2 CVar(var_F0 & "' or GF.LOGSITE_CODE='HO') ORDER BY GF.NAME"), var_A0, 2
  loc_171B0D5: Call Proc_24_93_15F019C(3, -1, New)
  loc_171B0DA: Call Proc_24_81_13463BC(3, -1)
  loc_171B0DF: Call Proc_24_82_104B918(3)
  loc_171B0F0: If (global_164 = 1) Then
  loc_171B116:   Call Proc_24_89_1020320(Proc_5_1_100EC1C("INI", Me))
  loc_171B12D:   Me.btnAddGuestProf.Visible = True
  loc_171B141:   Me.CmdDummyGuestProf.Visible = False
  loc_171B15C:   If (GuestCode <> vbNullString) Then
  loc_171B18C:     Me.Find "SearchCode='" & GuestCode & "'", 0, 1
  loc_171B19A:     Call MoveRec()
  loc_171B19F:     Call TopCtrl1_UnknownEvent_D()
  loc_171B1A7:   Else
  loc_171B1A7:     Call TopCtrl1_UnknownEvent_A()
  loc_171B1AC:   End If
  loc_171B1AF: Else
  loc_171B1AF:   Call MoveRec()
  loc_171B1B4:   Call Proc_24_91_FD9D34(var_A0)
  loc_171B1DC:   Call Proc_24_89_1020320(Proc_5_1_100EC1C("INI", Me), global_88)
  loc_171B1F3:   Me.btnAddGuestProf.Visible = False
  loc_171B207:   Me.CmdDummyGuestProf.Visible = True
  loc_171B20F: End If
  loc_171B222: If (OpenType = "ChangeGuestProfile") Then
  loc_171B229:   Set var_88 = New 
  loc_171B252:   var_124 = "Select GPdt.GuestProf, GPDt.mProf, GP.Name, GP.Add1, GP.Add2, Nat.Name as Nationality from GuestFolioProfDetail GPDt Left Join Guestprof GP On GPDt.GuestProf=GP.Code Left Join Country Nat On GP.Nationality=Nat.Code where GPDt.Docid='" & GuestFolio
  loc_171B260:   Me.Recordset15.Open CVar(var_124 & "' Order By GP.Name"), CVar(MemVar_1F95044), 0
  loc_171B283:   If (var_88.RecordCount > 0) Then
  loc_171B286:     ' Referenced from: 171B711
  loc_171B295:     If Not(var_88.EOF) Then
  loc_171B2B1:       If CBool(var_88.Bookmark <> 1) Then
  loc_171B2B4:         var_A0 = vbNullString
  loc_171B2BE:         Set var_B4 = Me.FGrid2
  loc_171B2CF:       End If
  loc_171B2D2:       var_A0 = "GuestProf"
  loc_171B322:       var_124 = Proc_6_38_E69628(CVar(var_88.Fields.Item("mProf")), Proc_6_38_E69628(CVar(var_88.Fields.Item(var_A0)), FGrid2.DispID_10000, var_A0), 1)
  loc_171B33C:       If (-1 = var_124) Then
  loc_171B352:         Me.FGrid2.Col = 0
  loc_171B379:         Me.FGrid2.Row = CVar(CLng(var_88.Bookmark))
  loc_171B394:         Me.FGrid2.CellFontName = "WINGDINGS"
  loc_171B3AE:         Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_171B3CF:         var_A0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B3D7:         var_100 = CVar(CLng(0)) 'Long
  loc_171B3E6:         Set var_B8 = Me.FGrid2
  loc_171B3EC:         LateIdCallSt
  loc_171B415:         var_B8 = var_88.Fields.Item("GuestProf")
  loc_171B433:         Me.lblmProf.Caption = Proc_6_38_E69628(CVar(var_B8), var_B8, "ü")
  loc_171B445:       End If
  loc_171B45E:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B493:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), CVar(CLng(1)), "mProf")) 'String
  loc_171B4A1:       LateIdCallSt
  loc_171B4D4:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B509:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")), CVar(CLng(2)), "mProf", Me.FGrid2)) 'String
  loc_171B517:       LateIdCallSt
  loc_171B54A:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B57F:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2")), CVar(CLng(3)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171B58D:       LateIdCallSt
  loc_171B5C0:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B5F5:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nationality")), CVar(CLng(4)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171B603:       LateIdCallSt
  loc_171B636:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B66B:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("GuestProf")), CVar(CLng(5)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171B679:       LateIdCallSt
  loc_171B6AC:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B6E1:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("mProf")), CVar(CLng(6)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171B6E9:       Set var_C4 = Me.FGrid2
  loc_171B6EF:       LateIdCallSt
  loc_171B70C:       var_88.MoveNext
  loc_171B711:       GoTo loc_171B286
  loc_171B714:     End If
  loc_171B717:   Else
  loc_171B72B:     If (var_88.State = 1) Then
  loc_171B731:       var_88.Close
  loc_171B736:     End If
  loc_171B75C:     var_124 = "Select GPdt.GuestProf, GPdt.GuestProf mProf, GP.Name, GP.Add1, GP.Add2, Nat.Name as Nationality from GuestFolio GPDt Left Join Guestprof GP On GPDt.GuestProf=GP.Code Left Join Country Nat On GP.Nationality=Nat.Code where GPDt.Docid='" & GuestFolio
  loc_171B76A:     var_88.Open CVar(var_124 & "' Order By GP.Name"), CVar(MemVar_1F95044), 0
  loc_171B779:     ' Referenced from:   171BC04
  loc_171B788:     If Not(var_88.EOF) Then
  loc_171B7A4:       If CBool(var_88.Bookmark <> 1) Then
  loc_171B7A7:         var_A0 = vbNullString
  loc_171B7B1:         Set var_B4 = Me.FGrid2
  loc_171B7C2:       End If
  loc_171B7C5:       var_A0 = "GuestProf"
  loc_171B7EA:       var_F0 = Proc_6_38_E69628(CVar(var_88.Fields.Item(var_A0)), FGrid2.DispID_10000, var_A0, 1, -1, var_C4)
  loc_171B82F:       If (var_100 = Proc_6_38_E69628(CVar(var_88.Fields.Item("mProf")), GuestFolio, var_110, var_110)) Then
  loc_171B845:         Me.FGrid2.Col = 0
  loc_171B86C:         Me.FGrid2.Row = CVar(CLng(var_88.Bookmark))
  loc_171B887:         Me.FGrid2.CellFontName = "WINGDINGS"
  loc_171B8A1:         Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_171B8C2:         var_A0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B8D9:         Set var_B8 = Me.FGrid2
  loc_171B8DF:         LateIdCallSt
  loc_171B908:         var_B8 = var_88.Fields.Item("GuestProf")
  loc_171B926:         Me.lblmProf.Caption = Proc_6_38_E69628(CVar(var_B8), var_B8, "ü", CVar(CLng(0)))
  loc_171B938:       End If
  loc_171B951:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B986:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), CVar(CLng(1)), "mProf")) 'String
  loc_171B994:       LateIdCallSt
  loc_171B9C7:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B9FC:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")), CVar(CLng(2)), "mProf", Me.FGrid2)) 'String
  loc_171BA0A:       LateIdCallSt
  loc_171BA3D:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171BA72:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2")), CVar(CLng(3)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171BA80:       LateIdCallSt
  loc_171BAB3:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171BAE8:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nationality")), CVar(CLng(4)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171BAF6:       LateIdCallSt
  loc_171BB29:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171BB5E:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("GuestProf")), CVar(CLng(5)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171BB6C:       LateIdCallSt
  loc_171BB9F:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171BBD4:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("mProf")), CVar(CLng(6)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171BBDC:       Set var_C4 = Me.FGrid2
  loc_171BBE2:       LateIdCallSt
  loc_171BBFF:       var_88.MoveNext
  loc_171BC04:       GoTo loc_171B779
  loc_171BC07:     End If
  loc_171BC07:   End If
  loc_171BC0A: Else
  loc_171BC1D:   If (OpenType = "Reservation") Then
  loc_171BC24:     Set var_88 = New 
  loc_171BC4D:     var_124 = "Select B.GuestProf, B.GuestProf mProf, GP.Name, GP.Add1, GP.Add2, Nat.Name as Nationality from Booking B Left Join Guestprof GP On B.GuestProf=GP.Code Left Join Country Nat On GP.Nationality=Nat.Code where B.GuestProf='" & GuestCode
  loc_171BC5B:     Me.Recordset15.Open CVar(var_124 & "' Order By GP.Name"), CVar(MemVar_1F95044), 0
  loc_171BC6A:     ' Referenced from:   171C0F5
  loc_171BC79:     If Not(var_88.EOF) Then
  loc_171BC95:       If CBool(var_88.Bookmark <> 1) Then
  loc_171BC98:         var_A0 = vbNullString
  loc_171BCA2:         Set var_B4 = Me.FGrid2
  loc_171BCB3:       End If
  loc_171BCB6:       var_A0 = "GuestProf"
  loc_171BCDB:       var_F0 = Proc_6_38_E69628(CVar(var_88.Fields.Item(var_A0)), FGrid2.DispID_10000, var_A0, 1, -1, var_C4)
  loc_171BD20:       If (var_A0 = Proc_6_38_E69628(CVar(var_88.Fields.Item("mProf")), GuestCode, var_110, var_110)) Then
  loc_171BD36:         Me.FGrid2.Col = 0
  loc_171BD5D:         Me.FGrid2.Row = CVar(CLng(var_88.Bookmark))
  loc_171BD78:         Me.FGrid2.CellFontName = "WINGDINGS"
  loc_171BD92:         Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_171BDB3:         var_A0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171BDCA:         Set var_B8 = Me.FGrid2
  loc_171BDD0:         LateIdCallSt
  loc_171BDF9:         var_B8 = var_88.Fields.Item("GuestProf")
  loc_171BE17:         Me.lblmProf.Caption = Proc_6_38_E69628(CVar(var_B8), var_B8, "ü", CVar(CLng(0)))
  loc_171BE29:       End If
  loc_171BE42:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171BE77:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), CVar(CLng(1)), "mProf")) 'String
  loc_171BE85:       LateIdCallSt
  loc_171BEB8:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171BEED:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")), CVar(CLng(2)), "mProf", Me.FGrid2)) 'String
  loc_171BEFB:       LateIdCallSt
  loc_171BF2E:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171BF63:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2")), CVar(CLng(3)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171BF71:       LateIdCallSt
  loc_171BFA4:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171BFD9:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nationality")), CVar(CLng(4)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171BFE7:       LateIdCallSt
  loc_171C01A:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171C04F:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("GuestProf")), CVar(CLng(5)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171C05D:       LateIdCallSt
  loc_171C090:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171C0C5:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("mProf")), CVar(CLng(6)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171C0CD:       Set var_C4 = Me.FGrid2
  loc_171C0D3:       LateIdCallSt
  loc_171C0F0:       var_88.MoveNext
  loc_171C0F5:       GoTo loc_171BC6A
  loc_171C0F8:     End If
  loc_171C0F8:   End If
  loc_171C0F8: End If
  loc_171C0FD: Set var_8C = Nothing
  loc_171C105: Set var_88 = Nothing
  loc_171C108: Exit Sub
  loc_171C109: ' Referenced from: 171A50C
  loc_171C109: Proc_6_60_E63754(var_C4, var_110, var_110)
  loc_171C10E: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) '1489CF4
  'Data Table: 5A238C
  Dim var_94 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_A4 As Variant
  Dim var_EC As String
  Dim Cancel As Integer
  Dim var_124 As Variant
  Dim unk_5A23BF As Connection15
  Dim var_100 As Variant
  Dim var_114 As Variant
  Dim var_128 As Field20
  Dim var_C4 As Variant
  Dim var_F0 As String
  Dim var_110 As Variant
  Dim var_138 As Variant
  Dim var_1DC As Variant
  Dim var_1E4 As String
  Dim var_1E8 As String
  Dim var_1EC As String
  Dim var_1F0 As String
  Dim var_148 As Variant
  Dim var_F8 As Recordset15
  Dim var_28C As String
  Dim var_2A8 As String
  loc_148914D: var_E4 = (global_164 = 1) And (Trim(CVar(Me.lblmProf)) = vbNullString)
  loc_148915C: If CBool(var_E4) Then
  loc_1489165:   Call 0.Method_arg_50 (var_F0)
  loc_14891B0:   If (MsgBox(CVar("None Of Profile Selected." & vbCrLf & vbCrLf & "Do U want Proceed..."), &H114, CVar(var_F0), var_C4, var_E4) = 7) Then
  loc_14891B5:     Cancel = &HFF
  loc_14891B8:     Exit Sub
  loc_14891B9:   End If
  loc_14891B9: End If
  loc_14891B9: On Error Goto loc_1489CF2
  loc_14891C7: Set global_92 = Nothing
  loc_14891D9: Set global_104 = Nothing
  loc_14891EB: Set global_112 = Nothing
  loc_14891FD: Set global_108 = Nothing
  loc_148920F: Set global_88 = Nothing
  loc_148921B: MasterFormExit = 0
  loc_1489240: If (Trim(CVar(Me.lblmProf)) = vbNullString) Then
  loc_1489243:   Exit Sub
  loc_1489244: End If
  loc_1489270: var_A4 = Trim(CVar(Me.lblmProf))
  loc_148927B: Proc_6_17_EAAE40(var_C4, var_A4, "Select Count(*) From GuestProf Where Code=", var_110, -1, var_100)
  loc_1489283: var_E4 = var_114 & var_C4 
  loc_1489291: unk_5A23BF.Execute CStr(var_E4), 0, var_128
  loc_1489299: var_138 = var_100.Fields
  loc_14892A1: Cancel = var_114.Item(MasterFormExit)
  loc_14892A9:  = var_128.Value
  loc_14892B4: Proc_6_39_E7D3A0(var_148)
  loc_14892E1: If (var_148 > 0) Then
  loc_14892F0:   If (global_164 = 1) Then
  loc_148931B:     If ((OpenType = "ChangeGuestProfile") Or (OpenType = "InsertGuestProfile")) Then
  loc_148934A:       var_94 = CVar(GuestFolio) 'String
  loc_1489350:       Proc_6_17_EAAE40(var_A4, var_94, "Select Count(*) From GuestFolio Where DocId=", var_E4, -1, var_100)
  loc_1489366:       unk_5A23BF.Execute CStr(var_114 & var_A4), 0, var_128
  loc_148936E:       var_110 = var_100.Fields
  loc_1489376:        = var_114.Item(var_138)
  loc_148937E:        = var_128.Value
  loc_1489389:       Proc_6_39_E7D3A0(var_138)
  loc_14893B4:       If (var_138 > 0) Then
  loc_14893E3:         unk_5A23BF.Execute "Delete From GuestFolioProfDetail where Docid='" & GuestFolio & "'", var_94, -1
  loc_148941C:         For var_16C = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_FA = var_16C 'Integer
  loc_1489426:           var_B4 = CVar(CLng(var_FA)) 'Long
  loc_148942E:           var_124 = CVar(CLng(1)) 'Long
  loc_148944E:           var_C4 = Trim(CVar(CStr(Me.FGrid2.TextMatrix))))
  loc_14894BA:           If CBool(CVar(CLng(5)) And (Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) <> vbNullString)) Then
  loc_14894EB:             var_1EC = Proc_6_38_E69628(CVar(CStr(Me.FGrid2.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_FA)), CVar(CLng(var_FA)), (var_C4 <> vbNullString))
  loc_1489525:             var_1E4 = "Delete From GuestFolioProfDetail Where IsNull(Docid,'')='' And GuestProf='" & var_1EC & "' And mProf='" & Me.lblmProf.Caption
  loc_1489535:             unk_5A23BF.Execute var_1E4 & "'", var_C4, -1
  loc_1489569:             var_B4 = CVar(CLng(var_FA)) 'Long
  loc_148957A:             Set var_100 = Me.FGrid2
  loc_148958B:             var_A4 = CVar(CStr(var_100.TextMatrix))) 'String
  loc_14895B6:             Proc_6_7_F26918(var_E4, Date, var_B4)
  loc_14895CF:             var_EC = "Insert Into GuestFolioProfDetail (Docid, GuestProf, mProf, U_AE, U_EntDt, U_Name, Site_Code, LogSite_Code) Values ('" & GuestFolio
  loc_14895EE:             var_1F0 = var_EC & "','" & Proc_6_38_E69628(var_A4, CVar(CLng(5)), var_B4, var_128, CVar(CLng(5))) & "','" & Me.lblmProf.Caption
  loc_1489604:             var_148 = CVar(var_1F0 & "','A',") & var_E4 & ",'" 
  loc_148964B:             unk_5A23BF.Execute CStr(var_148 & CVar(MemVar_1F950C8) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_264, -1
  loc_148968F:           End If
  loc_1489692:         Next var_16C 'Integer
  loc_14896B4:         Proc_6_17_EAAE40(var_A4, CVar(Me.lblmProf), "Select * from GuestProf Where Code=")
  loc_14896CA:         unk_5A23BF.Execute CStr(var_E4 & var_A4), -1, var_100
  loc_14896D5:         Set var_F8 = var_100
  loc_14896FD:         If (var_F8.RecordCount > 0) Then
  loc_148973F:           var_114 = var_F8.Fields
  loc_1489747:           var_128 = var_114.Item("Name")
  loc_148975C:           var_1E4 = -1 & Proc_6_38_E69628(CVar(var_128), "Update GuestFolio Set GuestProf='" & Me.lblmProf.Caption & "',Name='", var_264)
  loc_1489763:           var_1E8 = "Update GuestFolio Set GuestProf='" & Me.lblmProf.Caption & "','" & Proc_6_38_E69628(var_A4, CVar(CLng(5)), "Name", var_128, CVar(CLng(5))) & "',city='"
  loc_1489785:           var_A4 = CVar(var_F8.Fields.Item("City")) 'Address
  loc_14897CF:           var_28C = var_2B4 & Proc_6_38_E69628(var_A4, var_1E8) & "',Add1='" & Proc_6_38_E69628(CVar(var_F8.Fields.Item("Add1"))) & "',add2='"
  loc_1489834:           var_2A8 = var_28C & Proc_6_38_E69628(CVar(var_F8.Fields.Item("Add2"))) & "',Nationality='" & Proc_6_38_E69628(CVar(var_F8.Fields.Item("Nationality")))
  loc_1489849:           Proc_6_7_F26918(var_148)
  loc_1489851:           var_1DC = CVar(Proc_6_15_EF37AC(CVar(var_2A8 & "',U_EntDt="))) & var_148 
  loc_1489883:           unk_5A23BF.Execute CStr(var_1DC & ",U_AE='E' where Docid='" & CVar(GuestFolio) & "'"), , 
  loc_1489914:           var_94 = CVar(Proc_6_15_EF37AC(CVar("Update RoomOcc  Set GuestProf='" & Me.lblmProf.Caption & "',U_EntDt="), var_1DC)) 'String
  loc_148991A:           Proc_6_7_F26918(var_A4, var_94)
  loc_1489922:           var_E4 = -1 & var_A4 
  loc_1489954:           unk_5A23BF.Execute CStr(CVar(var_F8.Fields.Item("Add2")) & ",U_AE='E' where Docid='" & CVar(GuestFolio) & "'"), var_114, 
  loc_14899CA:           unk_5A23BF.Execute "Update PayCharge  Set GuestProf='" & Me.lblmProf.Caption & "' where FolioNoDocid='" & GuestFolio & "'", var_94, -1
  loc_14899E8:         End If
  loc_14899E8:       End If
  loc_14899ED:       Set var_F8 = Nothing
  loc_14899F3:     Else
  loc_1489A06:       If (OpenType = "WalkInEntry") Then
  loc_1489A2E:         For var_2B8 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)):   var_FA = var_2B8 'Integer
  loc_1489A38:           var_B4 = CVar(CLng(var_FA)) 'Long
  loc_1489A40:           var_124 = CVar(CLng(1)) 'Long
  loc_1489A60:           var_C4 = Trim(CVar(CStr(Me.FGrid2.TextMatrix))))
  loc_1489ACC:           If CBool(CVar(CLng(5)) And (Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) <> vbNullString)) Then
  loc_1489AFD:             var_1EC = Proc_6_38_E69628(CVar(CStr(Me.FGrid2.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_FA)), CVar(CLng(var_FA)), (var_C4 <> vbNullString))
  loc_1489B37:             var_1E4 = "Delete From GuestFolioProfDetail Where IsNull(Docid,'')='' And GuestProf='" & var_1EC & "' And mProf='" & Me.lblmProf.Caption
  loc_1489B47:             unk_5A23BF.Execute var_1E4 & "'", var_C4, -1
  loc_1489B83:             var_124 = CVar(CLng(5)) 'Long
  loc_1489BC8:             Proc_6_7_F26918(CVar(var_F8.Fields.Item("Add2")), Date, var_124)
  loc_1489BE1:             var_EC = "Insert Into GuestFolioProfDetail (Docid, GuestProf, mProf, U_AE, U_EntDt, U_Name, Site_Code, LogSite_Code) Values ('" & GuestFolio
  loc_1489BF9:             var_1EC = var_EC & "','" & Proc_6_38_E69628(CVar(CStr(Me.FGrid2.TextMatrix))), var_124, CVar(CLng(var_FA)), var_128) & "','"
  loc_1489C29:             var_1DC = CVar(var_1EC & Me.lblmProf.Caption & "','A',") & CVar(var_F8.Fields.Item("Add2")) & ",'" & CVar(MemVar_1F950C8) & "','" 
  loc_1489C5D:             unk_5A23BF.Execute CStr(var_1DC & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_264, -1
  loc_1489CA1:           End If
  loc_1489CA4:         Next var_2B8 'Integer
  loc_1489CAD:         var_94 = CVar(Me.lblmProf) 'Address
  loc_1489CB8:         Call unk_5A2470.SEARCHBACKPARENT
  loc_1489CC4:       Else
  loc_1489CD7:         If (OpenType = "Reservation") Then
  loc_1489CDE:           var_94 = CVar(Me.lblmProf) 'Address
  loc_1489CE9:           Call unk_5A2470.SEARCHBACKPARENT
  loc_1489CF2:         End If
  loc_1489CF2:       End If
  loc_1489CF2:       ' Referenced from: 14891B9
  loc_1489CF2:     End If
  loc_1489CF2:   End If
  loc_1489CF2: End If
  loc_1489CF2: Exit Sub
End Sub

Private Sub Form_Activate() 'F005AC
  'Data Table: 5A238C
  Dim var_A4 As TextBox
  loc_F004D0: On Error Goto loc_F005A5
  loc_F004E8: Set var_8C = Me.TopCtrl1
  loc_F004EE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005((OpenMode = 1))
  loc_F00508: If ( And (CStr() <> "Browse")) Then
  loc_F0050F:   Set var_8C = Me.TopCtrl1
  loc_F00515:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_F0052E:   If (CStr() = "Add") Then
  loc_F0053C:     Set var_8C = Me.Txt
  loc_F00542:     Call 0.Method_Form_Activate0 (CInt(&H46))
  loc_F0054A:     var_A4.SetFocus
  loc_F00559:   Else
  loc_F00564:     Set var_8C = Me.Txt
  loc_F0056A:     Call 0.Method_Form_Activate0 (CInt(0), var_A4)
  loc_F00572:     var_A4.SetFocus
  loc_F0057E:   End If
  loc_F00582:   Set var_8C = Me.TopCtrl1
  loc_F00588:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030000(var_A4)
  loc_F0059D:   If (CLng(CInt()) = &H2D) Then
  loc_F005A0:     Call TopCtrl1_UnknownEvent_15()
  loc_F005A5:     ' Referenced from: F004D0
  loc_F005A5:   End If
  loc_F005A5: End If
  loc_F005A5: Proc_6_60_E63754()
  loc_F005AA: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E270A4
  'Data Table: 5A238C
  loc_E27089: If (MasterFormExit = &HFF) Then
  loc_E27099:   Me.Global.Unload Me
  loc_E270A1: End If
  loc_E270A1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B0B4
  'Data Table: 5A238C
  loc_E2B08C: On Error Goto loc_E2B0AC
  loc_E2B0A3: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B0AB: Exit Sub
  loc_E2B0AC: ' Referenced from: E2B08C
  loc_E2B0AC: Proc_6_60_E63754(Shift)
  loc_E2B0B1: Exit Sub
End Sub

Private Sub Cmd_Click(Index As Integer) '14E0420
  'Data Table: 5A238C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_9C As Double
  Dim var_A8 As String
  Dim var_A4 As TextBox
  Dim var_94 As String
  Dim var_8C As Frame
  loc_14DF643: var_86 = Index
  loc_14DF64E: If (var_86 = CInt(1)) Then
  loc_14DF654:   Call Proc_24_79_E41084(var_88)
  loc_14DF65F:   global_68 = var_88
  loc_14DF670:   Set var_8C = Me.Txt
  loc_14DF676:   Call 0.Method_Cmd_Click0 (CInt(&H47), var_90, var_94)
  loc_14DF67E:   global_68 = var_90.Text
  loc_14DF6A4:   If (CDbl(global_68) > CDbl(Val(var_94))) Then
  loc_14DF6B5:     Set var_8C = Me.Txt
  loc_14DF6BB:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_90, var_94)
  loc_14DF6C3:     var_9C = var_90.Text
  loc_14DF6D6:     var_A8 = CStr((Val(var_94) + CDbl(1)))
  loc_14DF6E4:     Set var_A0 = Me.Txt
  loc_14DF6EA:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_A4)
  loc_14DF6F2:     var_A4.Text = var_A8
  loc_14DF717:     Set var_8C = Me.Txt
  loc_14DF71D:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DF732:     var_9C = Val(var_90.Text)
  loc_14DF74B:     If (CDbl(global_68) = CDbl(var_9C)) Then
  loc_14DF75B:       Set var_8C = Me.Cmd
  loc_14DF761:       Call 0.Method_Cmd_Click0 (CInt(1), var_90, 0)
  loc_14DF769:       var_90.Enabled = var_9C
  loc_14DF775:     End If
  loc_14DF782:     Set var_8C = Me.Cmd
  loc_14DF788:     Call 0.Method_Cmd_Click0 (CInt(0), var_90)
  loc_14DF790:     var_90.Enabled = True
  loc_14DF79C:   End If
  loc_14DF7AA:   Set var_8C = Me.Txt
  loc_14DF7B0:   Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DF7B8:   var_94 = var_90.Text
  loc_14DF7C9:   Call Proc_24_78_13A8F20(CInt(Val(var_94)))
  loc_14DF7DB: Else
  loc_14DF7E3:   If (var_86 = CInt(0)) Then
  loc_14DF7E9:     Call Proc_24_79_E41084(var_88)
  loc_14DF7F4:     global_68 = var_88
  loc_14DF805:     Set var_8C = Me.Txt
  loc_14DF80B:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_90, var_94)
  loc_14DF813:     global_68 = var_90.Text
  loc_14DF826:     var_A8 = CStr((Val(var_94) - CDbl(1)))
  loc_14DF834:     Set var_A0 = Me.Txt
  loc_14DF83A:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_A4)
  loc_14DF842:     var_A4.Text = var_A8
  loc_14DF867:     Set var_8C = Me.Txt
  loc_14DF86D:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DF891:     If (CDbl(Val(var_90.Text)) = CDbl(1)) Then
  loc_14DF8A1:       Set var_8C = Me.Cmd
  loc_14DF8A7:       Call 0.Method_Cmd_Click0 (CInt(0), var_90)
  loc_14DF8AF:       var_90.Enabled = False
  loc_14DF8BB:     End If
  loc_14DF8C9:     Set var_8C = Me.Txt
  loc_14DF8CF:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DF8E8:     Call Proc_24_78_13A8F20(CInt(Val(var_90.Text)))
  loc_14DF905:     Set var_8C = Me.Txt
  loc_14DF90B:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DF933:     If (CDbl(Val(var_90.Text)) <= CDbl(global_68)) Then
  loc_14DF943:       Set var_8C = Me.Cmd
  loc_14DF949:       Call 0.Method_Cmd_Click0 (CInt(1), var_90)
  loc_14DF951:       var_90.Enabled = True
  loc_14DF95D:     End If
  loc_14DF960:   Else
  loc_14DF968:     If (var_86 = CInt(6)) Then
  loc_14DF971:       global_72 = "Add"
  loc_14DF978:       Call Proc_24_79_E41084(var_88)
  loc_14DF985:       var_94 = CStr((var_88 + 1))
  loc_14DF993:       Set var_8C = Me.Txt
  loc_14DF999:       Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DF9A1:       var_90.Text = var_90.Text
  loc_14DF9B5:       Call Proc_24_77_11BC204(&HFF)
  loc_14DF9BA:       Call Proc_24_76_11D6DCC(var_86)
  loc_14DF9CC:       Set var_8C = Me.Cmd
  loc_14DF9D2:       Call 0.Method_Cmd_Click0 (CInt(0), var_90)
  loc_14DF9DA:       var_90.Enabled = False
  loc_14DF9F3:       Set var_8C = Me.Cmd
  loc_14DF9F9:       Call 0.Method_Cmd_Click0 (CInt(1), var_90)
  loc_14DFA01:       var_90.Enabled = False
  loc_14DFA1A:       Set var_8C = Me.Cmd
  loc_14DFA20:       Call 0.Method_Cmd_Click0 (CInt(6), var_90)
  loc_14DFA28:       var_90.Enabled = False
  loc_14DFA41:       Set var_8C = Me.Cmd
  loc_14DFA47:       Call 0.Method_Cmd_Click0 (CInt(7), var_90)
  loc_14DFA4F:       var_90.Enabled = False
  loc_14DFA68:       Set var_8C = Me.Cmd
  loc_14DFA6E:       Call 0.Method_Cmd_Click0 (CInt(2), var_90)
  loc_14DFA76:       var_90.Enabled = False
  loc_14DFA8F:       Set var_8C = Me.Cmd
  loc_14DFA95:       Call 0.Method_Cmd_Click0 (CInt(3), var_90)
  loc_14DFA9D:       var_90.Enabled = True
  loc_14DFAB6:       Set var_8C = Me.Cmd
  loc_14DFABC:       Call 0.Method_Cmd_Click0 (CInt(8), var_90)
  loc_14DFAC4:       var_90.Enabled = True
  loc_14DFADD:       Set var_8C = Me.Cmd
  loc_14DFAE3:       Call 0.Method_Cmd_Click0 (CInt(4), var_90)
  loc_14DFAEB:       var_90.Enabled = False
  loc_14DFB04:       Set var_8C = Me.Cmd
  loc_14DFB0A:       Call 0.Method_Cmd_Click0 (CInt(5), var_90)
  loc_14DFB12:       var_90.Enabled = False
  loc_14DFB29:       Set var_8C = Me.Txt
  loc_14DFB2F:       Call 0.Method_Cmd_Click0 (CInt(&H24))
  loc_14DFB37:       var_90.SetFocus
  loc_14DFB46:     Else
  loc_14DFB4E:       If (var_86 = CInt(7)) Then
  loc_14DFB57:         global_72 = "Edit"
  loc_14DFB60:         Call Proc_24_77_11BC204(&HFF)
  loc_14DFB73:         Set var_8C = Me.Txt
  loc_14DFB79:         Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DFB9D:         If (CDbl(Val(var_90.Text)) = CDbl(1)) Then
  loc_14DFBAD:           Set var_8C = Me.Txt
  loc_14DFBB3:           Call 0.Method_Cmd_Click0 (CInt(&H24), var_90)
  loc_14DFBBB:           var_90.Enabled = False
  loc_14DFBD4:           Set var_8C = Me.Txt
  loc_14DFBDA:           Call 0.Method_Cmd_Click0 (CInt(&H27), var_90)
  loc_14DFBE2:           var_90.Enabled = False
  loc_14DFBFB:           Set var_8C = Me.Txt
  loc_14DFC01:           Call 0.Method_Cmd_Click0 (CInt(&H26), var_90)
  loc_14DFC09:           var_90.Enabled = False
  loc_14DFC22:           Set var_8C = Me.Txt
  loc_14DFC28:           Call 0.Method_Cmd_Click0 (CInt(&H25), var_90)
  loc_14DFC30:           var_90.Enabled = False
  loc_14DFC47:           Set var_8C = Me.Txt
  loc_14DFC4D:           Call 0.Method_Cmd_Click0 (CInt(&H29), var_90)
  loc_14DFC55:           var_90.SetFocus
  loc_14DFC64:         Else
  loc_14DFC6F:           Set var_8C = Me.Txt
  loc_14DFC75:           Call 0.Method_Cmd_Click0 (CInt(&H24), var_90)
  loc_14DFC7D:           var_90.SetFocus
  loc_14DFC89:         End If
  loc_14DFC96:         Set var_8C = Me.Cmd
  loc_14DFC9C:         Call 0.Method_Cmd_Click0 (CInt(0), var_90)
  loc_14DFCA4:         var_90.Enabled = False
  loc_14DFCBD:         Set var_8C = Me.Cmd
  loc_14DFCC3:         Call 0.Method_Cmd_Click0 (CInt(1), var_90)
  loc_14DFCCB:         var_90.Enabled = False
  loc_14DFCE4:         Set var_8C = Me.Cmd
  loc_14DFCEA:         Call 0.Method_Cmd_Click0 (CInt(6), var_90)
  loc_14DFCF2:         var_90.Enabled = False
  loc_14DFD0B:         Set var_8C = Me.Cmd
  loc_14DFD11:         Call 0.Method_Cmd_Click0 (CInt(7), var_90)
  loc_14DFD19:         var_90.Enabled = False
  loc_14DFD32:         Set var_8C = Me.Cmd
  loc_14DFD38:         Call 0.Method_Cmd_Click0 (CInt(2), var_90)
  loc_14DFD40:         var_90.Enabled = False
  loc_14DFD59:         Set var_8C = Me.Cmd
  loc_14DFD5F:         Call 0.Method_Cmd_Click0 (CInt(3), var_90)
  loc_14DFD67:         var_90.Enabled = True
  loc_14DFD80:         Set var_8C = Me.Cmd
  loc_14DFD86:         Call 0.Method_Cmd_Click0 (CInt(8), var_90)
  loc_14DFD8E:         var_90.Enabled = True
  loc_14DFDA7:         Set var_8C = Me.Cmd
  loc_14DFDAD:         Call 0.Method_Cmd_Click0 (CInt(4), var_90)
  loc_14DFDB5:         var_90.Enabled = False
  loc_14DFDCE:         Set var_8C = Me.Cmd
  loc_14DFDD4:         Call 0.Method_Cmd_Click0 (CInt(5), var_90)
  loc_14DFDDC:         var_90.Enabled = False
  loc_14DFDEB:       Else
  loc_14DFDF3:         If (var_86 = CInt(2)) Then
  loc_14DFDFA:           Set var_8C = Me.TopCtrl1
  loc_14DFE00:           Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_90)
  loc_14DFE08:           var_94 = CStr()
  loc_14DFE19:           If (var_94 = "Add") Then
  loc_14DFE1C:             Call Proc_24_87_FBD1E8()
  loc_14DFE21:           End If
  loc_14DFE24:         Else
  loc_14DFE2C:           If (var_86 = CInt(3)) Then
  loc_14DFE3A:             Set var_8C = Me.Txt
  loc_14DFE40:             Call 0.Method_Cmd_Click0 (CInt(&H25))
  loc_14DFE69:             If (Trim(CVar(var_90)) = vbNullString) Then
  loc_14DFE72:               Call 0.Method_arg_50 (var_94)
  loc_14DFE93:               MsgBox("Nationality Not Defined!", 0, CVar(var_94), var_E8, var_118)
  loc_14DFEA3:               Exit Sub
  loc_14DFEA4:             End If
  loc_14DFEB2:             Set var_8C = Me.Txt
  loc_14DFEB8:             Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DFEDD:             Set var_A0 = Me.Txt
  loc_14DFEE3:             Call 0.Method_Cmd_Click0 (CInt(&H47), var_A4)
  loc_14DFEEB:             var_A4.Text = CStr(Val(var_90.Text))
  loc_14DFF05:             Call Proc_24_79_E41084(var_88)
  loc_14DFF18:             Set var_8C = Me.Txt
  loc_14DFF1E:             Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DFF43:             If (CDbl(Val(var_90.Text)) > CDbl(var_88)) Then
  loc_14DFF49:               Call Proc_24_79_E41084(var_88)
  loc_14DFF56:               var_94 = CStr((var_88 + 1))
  loc_14DFF64:               Set var_8C = Me.Txt
  loc_14DFF6A:               Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DFF72:               var_90.Text = var_90.Text
  loc_14DFF84:               Call Proc_24_79_E41084(var_88)
  loc_14DFF96:               Set var_8C = Me.FGrid
  loc_14DFFAD:               Call Proc_24_79_E41084(var_88, FGrid.DispID_10000)
  loc_14DFFC5:               Set var_8C = Me.Txt
  loc_14DFFCB:               Call 0.Method_Cmd_Click0 (CInt(&H47), var_90, CStr(var_88))
  loc_14DFFD3:               var_90.Text = CVar(CStr(var_88))
  loc_14DFFE2:             End If
  loc_14DFFF0:             Set var_8C = Me.Txt
  loc_14DFFF6:             Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14E000F:             Call Proc_24_83_13DE974(CInt(Val(var_90.Text)))
  loc_14E001E:             Call Proc_24_80_F9D144(var_90)
  loc_14E0028:             Call Proc_24_77_11BC204(0)
  loc_14E003A:             Set var_8C = Me.Cmd
  loc_14E0040:             Call 0.Method_Cmd_Click0 (CInt(6), var_90)
  loc_14E0048:             var_90.Enabled = True
  loc_14E0061:             Set var_8C = Me.Cmd
  loc_14E0067:             Call 0.Method_Cmd_Click0 (CInt(7), var_90)
  loc_14E006F:             var_90.Enabled = True
  loc_14E0088:             Set var_8C = Me.Cmd
  loc_14E008E:             Call 0.Method_Cmd_Click0 (CInt(2), var_90)
  loc_14E0096:             var_90.Enabled = True
  loc_14E00AF:             Set var_8C = Me.Cmd
  loc_14E00B5:             Call 0.Method_Cmd_Click0 (CInt(3), var_90)
  loc_14E00BD:             var_90.Enabled = False
  loc_14E00D6:             Set var_8C = Me.Cmd
  loc_14E00DC:             Call 0.Method_Cmd_Click0 (CInt(8), var_90)
  loc_14E00E4:             var_90.Enabled = False
  loc_14E00FD:             Set var_8C = Me.Cmd
  loc_14E0103:             Call 0.Method_Cmd_Click0 (CInt(4), var_90)
  loc_14E010B:             var_90.Enabled = True
  loc_14E0124:             Set var_8C = Me.Cmd
  loc_14E012A:             Call 0.Method_Cmd_Click0 (CInt(5), var_90)
  loc_14E0132:             var_90.Enabled = False
  loc_14E0142:             Set var_8C = Me.TopCtrl1
  loc_14E0148:             Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_14E0161:             If (CStr() = "Edit") Then
  loc_14E0171:               Set var_8C = Me.Cmd
  loc_14E0177:               Call 0.Method_Cmd_Click0 (CInt(6), var_90)
  loc_14E017F:               var_90.Enabled = False
  loc_14E0198:               Set var_8C = Me.Cmd
  loc_14E019E:               Call 0.Method_Cmd_Click0 (CInt(2), var_90)
  loc_14E01A6:               var_90.Enabled = False
  loc_14E01B2:             End If
  loc_14E01B8:             global_72 = "Browse"
  loc_14E01BF:           Else
  loc_14E01C7:             If (var_86 = CInt(8)) Then
  loc_14E01D5:               If (global_72 = "Add") Then
  loc_14E01DB:                 Call Proc_24_79_E41084(var_88)
  loc_14E01F3:                 Set var_8C = Me.Txt
  loc_14E01F9:                 Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14E0201:                 var_90.Text = CStr(var_88)
  loc_14E0210:               End If
  loc_14E021E:               Set var_8C = Me.Txt
  loc_14E0224:               Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14E023D:               Call Proc_24_78_13A8F20(CInt(Val(var_90.Text)))
  loc_14E024C:               Call Proc_24_80_F9D144()
  loc_14E0256:               Call Proc_24_77_11BC204(0)
  loc_14E0268:               Set var_8C = Me.Cmd
  loc_14E026E:               Call 0.Method_Cmd_Click0 (CInt(6), var_90)
  loc_14E0276:               var_90.Enabled = True
  loc_14E028F:               Set var_8C = Me.Cmd
  loc_14E0295:               Call 0.Method_Cmd_Click0 (CInt(7), var_90)
  loc_14E029D:               var_90.Enabled = True
  loc_14E02B6:               Set var_8C = Me.Cmd
  loc_14E02BC:               Call 0.Method_Cmd_Click0 (CInt(2), var_90)
  loc_14E02C4:               var_90.Enabled = True
  loc_14E02DD:               Set var_8C = Me.Cmd
  loc_14E02E3:               Call 0.Method_Cmd_Click0 (CInt(3), var_90)
  loc_14E02EB:               var_90.Enabled = False
  loc_14E0304:               Set var_8C = Me.Cmd
  loc_14E030A:               Call 0.Method_Cmd_Click0 (CInt(8), var_90)
  loc_14E0312:               var_90.Enabled = False
  loc_14E032B:               Set var_8C = Me.Cmd
  loc_14E0331:               Call 0.Method_Cmd_Click0 (CInt(4), var_90)
  loc_14E0339:               var_90.Enabled = True
  loc_14E0352:               Set var_8C = Me.Cmd
  loc_14E0358:               Call 0.Method_Cmd_Click0 (CInt(5), var_90)
  loc_14E0360:               var_90.Enabled = False
  loc_14E0370:               Set var_8C = Me.TopCtrl1
  loc_14E0376:               Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_14E038F:               If (CStr() = "Edit") Then
  loc_14E039F:                 Set var_8C = Me.Cmd
  loc_14E03A5:                 Call 0.Method_Cmd_Click0 (CInt(6), var_90)
  loc_14E03AD:                 var_90.Enabled = False
  loc_14E03C6:                 Set var_8C = Me.Cmd
  loc_14E03CC:                 Call 0.Method_Cmd_Click0 (CInt(2), var_90)
  loc_14E03D4:                 var_90.Enabled = False
  loc_14E03E0:               End If
  loc_14E03E6:               global_72 = "Browse"
  loc_14E03ED:             Else
  loc_14E03F5:               If (var_86 = CInt(4)) Then
  loc_14E0404:                 Me.FrameFor.Visible = False
  loc_14E040F:               Else
  loc_14E0417:                 If (var_86 = CInt(5)) Then
  loc_14E041A:                   Call Proc_24_92_16CCD08()
  loc_14E041F:                 End If
  loc_14E041F:               End If
  loc_14E041F:             End If
  loc_14E041F:           End If
  loc_14E041F:         End If
  loc_14E041F:       End If
  loc_14E041F:     End If
  loc_14E041F:   End If
  loc_14E041F: End If
  loc_14E041F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1046418
  'Data Table: 5A238C
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_E4 As String
  Dim var_100 As TextBox
  loc_10461B8: On Error Goto loc_104640F
  loc_10461C9: Me.FGrid2.Visible = True
  loc_104620C: If (((OpenType = "ChangeGuestProfile") Or (OpenType = "InsertGuestProfile")) Or (OpenType = "WalkInEntry")) Then
  loc_104620F:   GoTo loc_104636D
  loc_1046212: End If
  loc_104621B: If (global_180 = 0) Then
  loc_1046231:   Me.FGrid2.Rows = 2
  loc_1046239:   var_94 = 1
  loc_1046245:   var_C4 = CVar(CLng(0)) 'Long
  loc_104624A:   var_E4 = vbNullString
  loc_1046254:   Set var_A8 = Me.FGrid2
  loc_104625A:   LateIdCallSt
  loc_1046265:   var_94 = 1
  loc_1046271:   var_C4 = CVar(CLng(1)) 'Long
  loc_1046276:   var_E4 = vbNullString
  loc_1046280:   Set var_A8 = Me.FGrid2
  loc_1046286:   LateIdCallSt
  loc_1046291:   var_94 = 1
  loc_104629D:   var_C4 = CVar(CLng(2)) 'Long
  loc_10462A2:   var_E4 = vbNullString
  loc_10462AC:   Set var_A8 = Me.FGrid2
  loc_10462B2:   LateIdCallSt
  loc_10462BD:   var_94 = 1
  loc_10462C9:   var_C4 = CVar(CLng(3)) 'Long
  loc_10462CE:   var_E4 = vbNullString
  loc_10462D8:   Set var_A8 = Me.FGrid2
  loc_10462DE:   LateIdCallSt
  loc_10462E9:   var_94 = 1
  loc_10462F5:   var_C4 = CVar(CLng(4)) 'Long
  loc_10462FA:   var_E4 = vbNullString
  loc_1046304:   Set var_A8 = Me.FGrid2
  loc_104630A:   LateIdCallSt
  loc_1046315:   var_94 = 1
  loc_1046321:   var_C4 = CVar(CLng(5)) 'Long
  loc_1046326:   var_E4 = vbNullString
  loc_1046330:   Set var_A8 = Me.FGrid2
  loc_1046336:   LateIdCallSt
  loc_1046341:   var_94 = 1
  loc_104634D:   var_C4 = CVar(CLng(6)) 'Long
  loc_1046352:   var_E4 = vbNullString
  loc_104635C:   Set var_A8 = Me.FGrid2
  loc_1046362:   LateIdCallSt
  loc_104636D:   ' Referenced from: 104620F
  loc_104636D: End If
  loc_1046390: Call Proc_24_89_1020320(Proc_5_1_100EC1C("ADD", Me, global_88, Me, var_E4, var_C4, var_94, Me), var_E4, var_C4, var_94, Me)
  loc_104639B: Call Proc_24_90_FF143C(var_E4, var_C4)
  loc_10463A0: Call Proc_24_81_13463BC(var_94)
  loc_10463CB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H46), var_100, var_F6)
  loc_10463D3: Not((OpenMode = 1)) = var_100.Enabled
  loc_10463E6: If (Me.Txt And (var_F6 = &HFF)) Then
  loc_10463F4:   Set var_A8 = Me.Txt
  loc_10463FA:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H46))
  loc_1046402:   var_100.SetFocus
  loc_104640E: End If
  loc_104640E: Exit Sub
  loc_104640F: ' Referenced from: 10461B8
  loc_104640F: Proc_6_60_E63754(var_100)
  loc_1046414: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EAF2DC
  'Data Table: 5A238C
  loc_EAF258: On Error Goto loc_EAF2D6
  loc_EAF25B: Call Proc_24_91_FD9D34()
  loc_EAF297: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EAF2BD:   Call Proc_24_89_1020320(Proc_5_1_100EC1C("INI", Me))
  loc_EAF2C8:   Call MoveRec()
  loc_EAF2CD: End If
  loc_EAF2D2: global_180 = 0
  loc_EAF2D5: Exit Sub
  loc_EAF2D6: ' Referenced from: EAF258
  loc_EAF2D6: Proc_6_60_E63754(global_180)
  loc_EAF2DB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1332D60
  'Data Table: 5A238C
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_96 As Integer
  Dim unk_5A23BF As Connection15
  Dim var_F8 As Variant
  Dim var_124 As String
  loc_13325D4: On Error Goto loc_1332D07
  loc_13325E5: If (Proc_183_56_FE8B08(global_88) = &HFF) Then
  loc_13325E8:   Exit Sub
  loc_13325E9: End If
  loc_1332620: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_1332655:   var_134 = "Reservation"
  loc_133269D:   If (Proc_6_108_101061C(MemVar_1F95044, "Booking", "GuestProf", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_13326A0:     Exit Sub
  loc_13326A1:   End If
  loc_13326D3:   var_134 = "Guest Folio"
  loc_133271B:   If (Proc_6_108_101061C(MemVar_1F95044, "GuestFolio", "GuestProf", CStr(Me.Fields.Item("SearchCode").Value), 0) = 0) Then
  loc_133271E:     Exit Sub
  loc_133271F:   End If
  loc_1332799:   If (Proc_6_108_101061C(MemVar_1F95044, "GuestFolioProfDetail", "GuestProf", CStr(Me.Fields.Item("SearchCode").Value), 0, "Guest Folio") = 0) Then
  loc_133279C:     Exit Sub
  loc_133279D:   End If
  loc_1332817:   If (Proc_6_108_101061C(MemVar_1F95044, "PayCharge", "GuestProf", CStr(Me.Fields.Item("SearchCode").Value), 0, "Pay Charge", 0) = 0) Then
  loc_133281A:     Exit Sub
  loc_133281B:   End If
  loc_133281D:   var_96 = 0
  loc_1332829:   unk_5A23BF.BeginTrans var_130
  loc_1332830:   var_96 = &HFF
  loc_1332844:   var_94 = Me.Bookmark 'Variant
  loc_133289E:   unk_5A23BF.Execute CStr("Delete From GUESTPROF    Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13328E9:   var_168 = 0
  loc_13328FC:   var_160 = 0
  loc_1332907:   var_15C = 0
  loc_133291A:   var_154 = 0
  loc_1332925:   var_150 = 0
  loc_1332938:   var_148 = 0
  loc_1332981:   Proc_154_5_10E3BD4(MemVar_1F95044, "GroupPROF", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13329FF:   unk_5A23BF.Execute CStr("Delete From GuestProfFor Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_1332A4A:   var_168 = 0
  loc_1332A5D:   var_160 = 0
  loc_1332A68:   var_15C = 0
  loc_1332A7B:   var_154 = 0
  loc_1332A86:   var_150 = 0
  loc_1332A99:   var_148 = 0
  loc_1332AE2:   Proc_154_5_10E3BD4(MemVar_1F95044, "GuestProfFor", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1332B52:   var_F8 = "Delete From GuestProfVeh Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1332B60:   unk_5A23BF.Execute CStr(var_F8), var_118, -1
  loc_1332BAB:   var_168 = 0
  loc_1332BBE:   var_160 = 0
  loc_1332BC9:   var_15C = 0
  loc_1332BDC:   var_154 = 0
  loc_1332BE7:   var_150 = 0
  loc_1332BFA:   var_148 = 0
  loc_1332C3A:   var_124 = "GuestProfVeh"
  loc_1332C43:   Proc_154_5_10E3BD4(MemVar_1F95044, var_124, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1332C71:   unk_5A23BF.CommitTrans
  loc_1332C78:   var_96 = 0
  loc_1332C86:   Me.Requery -1
  loc_1332CA6:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1332CB3:     Me.Bookmark = var_94
  loc_1332CBB:   Else
  loc_1332CCF:     If (Me.EOF = 0) Then
  loc_1332CD8:       Me.MoveLast
  loc_1332CDD:     End If
  loc_1332CDD:   End If
  loc_1332CDD:   Call MoveRec()
  loc_1332CFE:   Proc_5_0_1107AD0(&HFF, Me, global_88, 0, var_96, var_148, 0)
  loc_1332D06: End If
  loc_1332D06: Exit Sub
  loc_1332D07: ' Referenced from: 13325D4
  loc_1332D0D: If (var_96 = &HFF) Then
  loc_1332D16:   unk_5A23BF.RollbackTrans
  loc_1332D1B: End If
  loc_1332D23: Set var_11C = Err()
  loc_1332D29: Call 0.Method_arg_2C (var_124, var_150, var_154, 0)
  loc_1332D4A: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F8, var_118)
  loc_1332D5D: Exit Sub
  loc_1332D5E: DOC
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FD5E90
  'Data Table: 5A238C
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As CommandButton
  loc_FD5CCC: On Error Goto loc_FD5E4D
  loc_FD5CDD: If (Proc_183_55_FE8490(global_88) = &HFF) Then
  loc_FD5CE0:   Exit Sub
  loc_FD5CE1: End If
  loc_FD5CF8: If (Me.RecordCount > 0) Then
  loc_FD5D1E:   Call Proc_24_89_1020320(Proc_5_1_100EC1C("EDIT", Me))
  loc_FD5D37:   Set var_90 = Me.Txt
  loc_FD5D3D:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FD5D45:   var_8C = var_98.Text
  loc_FD5D50:   global_116 = var_8C
  loc_FD5D7E:   Set var_90 = Me.Txt
  loc_FD5D84:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98, var_92)
  loc_FD5D8C:   Not((OpenMode = 1)) = var_98.Enabled
  loc_FD5D9F:   If (global_88 And (var_92 = &HFF)) Then
  loc_FD5DAD:     Set var_90 = Me.Txt
  loc_FD5DB3:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0))
  loc_FD5DBB:     var_98.SetFocus
  loc_FD5DC7:   End If
  loc_FD5DD2:   Set var_90 = Me.Txt
  loc_FD5DD8:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_FD5E01:   If (Trim(CVar(var_98)) = "Foreign") Then
  loc_FD5E10:     Me.BtnVisa.Enabled = True
  loc_FD5E18:   End If
  loc_FD5E1B: Else
  loc_FD5E3C:   MsgBox("No Record To Edit.", &H40, "Information", var_D8, var_118)
  loc_FD5E4C: End If
  loc_FD5E4C: Exit Sub
  loc_FD5E4D: ' Referenced from: FD5CCC
  loc_FD5E55: Set var_90 = Err()
  loc_FD5E5B: Call 0.Method_arg_2C (var_8C)
  loc_FD5E7C: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_D8, var_118)
  loc_FD5E8F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15C20
  'Data Table: 5A238C
  loc_E15C15: Me.Global.Unload Me
  loc_E15C1D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF4CF8
  'Data Table: 5A238C
  Dim Me As Recordset15
  Dim var_10C As Frame
  loc_EF4C30: On Error Goto loc_EF4CF0
  loc_EF4C4A: If (Me.RecordCount <= 0) Then
  loc_EF4C6E:   MsgBox("No Records To Search.", &H40, "Information", var_E8, var_108)
  loc_EF4C7E:   Exit Sub
  loc_EF4C7F: End If
  loc_EF4C83: Set var_10C = Me.TopCtrl1
  loc_EF4C89: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010006()
  loc_EF4CA1: Me.FrmFind.Top = (CDbl() + CDbl(&HA))
  loc_EF4CBE: Me.FrmFind.Left = CDbl(0)
  loc_EF4CD2: Me.FrmFind.Visible = True
  loc_EF4CDE: Set var_10C = Me.TXT_FOLIONO
  loc_EF4CEF: Exit Sub
  loc_EF4CF0: ' Referenced from: EF4C30
  loc_EF4CF0: Proc_6_60_E63754(TXT_FOLIONO.DispID_8001)
  loc_EF4CF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2C108
  'Data Table: 5A238C
  loc_E2C0F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C100: Call MoveRec()
  loc_E2C105: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2C0A8
  'Data Table: 5A238C
  loc_E2C098: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C0A0: Call MoveRec()
  loc_E2C0A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2CCA8
  'Data Table: 5A238C
  Dim arg_146C As String
  loc_E2CC98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2CCA0: Call MoveRec()
  loc_E2CCA5: Exit Sub
  loc_E2CCA6: arg_146C = global_88
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2CB88
  'Data Table: 5A238C
  loc_E2CB78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2CB80: Call MoveRec()
  loc_E2CB85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10726DC
  'Data Table: 5A238C
  Dim unk_5A23BF As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_107245C: On Error Goto loc_1072693
  loc_1072475: unk_5A23BF.Execute "SELECT G.Name, G.Add1 AS Address1, G.Add2 AS Address2, G.CityName + '  ' +G.ZipCode AS City, G.CountryName AS Country, G.PhoneNo AS PhoneNo, G.MobileNo AS MobileNo, G.Gender AS Gender, G.MaritalStatus AS MaritalStatus, G.PanNo AS PanNo, G.GuestStatus AS Status From GuestProf G order by G.Name", var_BC, -1
  loc_1072480: Set var_88 = var_C0
  loc_107248F: var_C4 = var_88.RecordCount
  loc_107249D: If (var_C4 = 0) Then
  loc_10724B9:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_10724C9:   Exit Sub
  loc_10724CA: End If
  loc_10724D9: var_12C = MemVar_1F950B4 & "\GuestProfile.ttx"
  loc_10724E0: Set var_C0 = var_88 
  loc_10724EC: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_10724F6: Set var_88 = var_C0
  loc_10724FC: var_AC = CVar(var_12E) 'Integer
  loc_10724FF: var_98 = var_AC 'Variant
  loc_107251B: var_128 = MemVar_1F950B4 & "\GuestProfile.RPT"
  loc_1072524: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_107252F: MemVar_1F951E8 = var_C0
  loc_107254A: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_1072552: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_107255E: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_1072577:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_107257F:   Call 0.Method_arg_20 (var_138)
  loc_1072587:   Call 0.Method_arg_30 (var_128)
  loc_10725CD:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_10725E3:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10725EB:     Call 0.Method_arg_20 (var_138)
  loc_10725F3:     Call 0.Method_arg_38 ("'Guest Profile'")
  loc_10725FF:   End If
  loc_1072602: Next var_132 'Integer
  loc_1072620: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1072628: Call 0.Method_arg_2C (var_D4)
  loc_1072636: Call 0.Method_arg_150 (var_F4)
  loc_1072641: Call 0.Method_arg_50 (var_128)
  loc_107264B: Set var_138 = Nothing
  loc_1072665: Set var_C0 = MemVar_1F951E8 
  loc_1072671: Proc_6_99_1484404(var_C0, 0, var_128)
  loc_107267C: MemVar_1F951E8 = var_C0
  loc_107268F: Set var_88 = Nothing
  loc_1072692: Exit Sub
  loc_1072693: ' Referenced from: 107245C
  loc_107269B: Set var_C0 = Err()
  loc_10726A1: Call 0.Method_arg_2C (var_128, &HFF)
  loc_10726AC: Call 0.Method_arg_50 (var_12C)
  loc_10726C8: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_10726DB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'EE86A0
  'Data Table: 5A238C
  Dim Me As Recordset15
  loc_EE85DB: Me.Requery -1
  loc_EE85EB: Me.Requery -1
  loc_EE85FB: Me.Requery -1
  loc_EE860B: Me.Requery -1
  loc_EE861B: Me.Requery -1
  loc_EE862B: Me.Requery -1
  loc_EE863A: Proc_6_93_EACCB4(Me.TXT_COUNTRY)
  loc_EE864C: Proc_6_93_EACCB4(Me.TXT_FOLIONO)
  loc_EE865E: Proc_6_93_EACCB4(Me.TXT_GNAME)
  loc_EE8670: Proc_6_93_EACCB4(Me.TXT_STATE)
  loc_EE8682: Proc_6_93_EACCB4(Me.TXT_TYPE)
  loc_EE8694: Proc_6_93_EACCB4(Me.TXT_CITY)
  loc_EE869C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1C3C0A8
  'Data Table: 5A238C
  Dim var_E4 As Variant
  Dim var_C4 As Variant
  Dim var_F4 As Variant
  Dim var_F8 As Variant
  Dim unk_5A23BF As Connection15
  Dim var_A4 As Variant
  Dim var_11C As Variant
  Dim var_120 As Variant
  Dim var_108 As Variant
  Dim var_124 As Variant
  Dim var_12C As Variant
  Dim var_13C As String
  Dim var_15C As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim var_190 As Variant
  Dim var_194 As Variant
  Dim var_198 As Variant
  Dim var_14C As Variant
  Dim Me As Variant
  Dim var_1A0 As Variant
  Dim var_19C As Variant
  Dim var_1B8 As Variant
  Dim var_1A8 As Variant
  Dim var_1AC As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_21C As Variant
  Dim var_24C As Variant
  Dim var_26C As Variant
  Dim var_2D8 As Variant
  Dim var_2E0 As Variant
  Dim var_2EC As Variant
  Dim var_22C As Variant
  Dim var_23C As Variant
  Dim var_2D0 As Variant
  Dim var_300 As Variant
  Dim var_310 As Variant
  Dim var_340 As Variant
  Dim var_350 As Variant
  Dim var_370 As Variant
  Dim var_390 As Variant
  Dim var_AE As Variant
  Dim var_B0 As Variant
  Dim var_B2 As Variant
  Dim var_330 As Variant
  Dim var_3EC As Variant
  Dim var_434 As Variant
  Dim var_46C As Variant
  Dim var_47C As Variant
  Dim var_4B4 As Variant
  Dim var_1528 As Double
  Dim var_4EC As Variant
  Dim var_534 As Variant
  Dim var_57C As Variant
  Dim var_58C As Variant
  Dim var_5E4 As Variant
  Dim var_63C As Variant
  Dim var_694 As Variant
  Dim var_6EC As Variant
  Dim var_744 As Variant
  Dim var_79C As Variant
  Dim var_7F4 As Variant
  Dim var_84C As Variant
  Dim var_8A4 As Variant
  Dim var_8FC As Variant
  Dim var_954 As Variant
  Dim var_9AC As Variant
  Dim var_A04 As Variant
  Dim var_A5C As Variant
  Dim var_AB4 As Variant
  Dim var_B64 As Variant
  Dim var_BBC As Variant
  Dim var_C14 As Variant
  Dim var_C6C As Variant
  Dim var_CC4 As Variant
  Dim var_D0C As TextBox
  Dim var_D54 As TextBox
  Dim var_D9C As TextBox
  Dim var_DF4 As Variant
  Dim var_EA4 As Variant
  Dim var_1154 As Variant
  Dim var_14A8 As Variant
  Dim var_320 As Variant
  Dim var_3C8 As Variant
  Dim var_49C As Variant
  Dim var_51C As Variant
  Dim var_554 As Variant
  Dim var_5AC As Variant
  Dim var_5CC As Variant
  Dim var_70C As Variant
  Dim var_784 As Variant
  Dim var_834 As Variant
  Dim var_8C4 As Variant
  Dim var_974 As Variant
  Dim var_9EC As Variant
  Dim var_AD4 As Variant
  Dim var_BA4 As Variant
  Dim var_C54 As Variant
  Dim var_CE4 As Variant
  Dim var_D2C As Variant
  Dim var_D74 As Variant
  Dim var_DAC As Variant
  Dim var_DBC As Variant
  Dim var_E34 As Variant
  Dim var_E8C As Variant
  Dim var_EE4 As Variant
  Dim var_FB4 As Variant
  Dim var_FEC As Variant
  Dim var_111C As Variant
  Dim var_1174 As Variant
  Dim var_11D4 As Variant
  Dim var_126C As Variant
  Dim var_1304 As Variant
  Dim var_13A0 As Variant
  Dim var_1430 As Variant
  Dim var_14D8 As Variant
  Dim var_1494 As Label
  Dim var_151C As Variant
  Dim var_1014 As TextBox
  Dim var_3B4 As Variant
  Dim var_3FC As Variant
  Dim var_444 As Variant
  Dim var_48C As Variant
  Dim var_4FC As Variant
  Dim var_544 As Variant
  Dim var_59C As Variant
  Dim var_5F4 As Variant
  Dim var_64C As Variant
  Dim var_6A4 As Variant
  Dim var_6FC As Variant
  Dim var_754 As Variant
  Dim var_7AC As Variant
  Dim var_804 As Variant
  Dim var_85C As Variant
  Dim var_8B4 As Variant
  Dim var_90C As Variant
  Dim var_964 As Variant
  Dim var_9BC As Variant
  Dim var_A14 As Variant
  Dim var_A6C As Variant
  Dim var_AC4 As Variant
  Dim var_B1C As Variant
  Dim var_B74 As Variant
  Dim var_BCC As Variant
  Dim var_C24 As Variant
  Dim var_C7C As Variant
  Dim var_CD4 As Variant
  Dim var_E04 As Variant
  Dim var_E5C As Variant
  Dim var_EB4 As Variant
  Dim var_10A4 As Variant
  Dim var_1B0 As Variant
  Dim var_1AF4 As Double
  Dim var_1B4 As MSHFlexGrid
  Dim var_2D4 As MSHFlexGrid
  Dim var_2DC As Variant
  Dim var_2E8 As MSHFlexGrid
  Dim var_3B8 As MSHFlexGrid
  Dim var_3DC As MSHFlexGrid
  Dim var_420 As MSHFlexGrid
  Dim var_424 As MSHFlexGrid
  Dim var_1AFC As Double
  Dim var_468 As MSHFlexGrid
  Dim var_4B0 As MSHFlexGrid
  Dim var_4D8 As MSHFlexGrid
  Dim var_4DC As MSHFlexGrid
  Dim var_520 As MSHFlexGrid
  Dim var_524 As MSHFlexGrid
  Dim var_578 As MSHFlexGrid
  Dim var_5D0 As MSHFlexGrid
  Dim var_5D4 As MSHFlexGrid
  Dim var_1BC As String
  Dim var_94 As Recordset15
  Dim var_8C As Recordset15
  Dim var_1548 As String
  loc_1C366E8: On Error Goto loc_1C3C055
  loc_1C36708: Proc_6_17_EAAE40(var_D4, MemVar_1F95078, "Select * from enviro WHERE logSITE_CODE=")
  loc_1C3671E: unk_5A23BF.Execute CStr(var_118 & var_D4), -1, var_11C
  loc_1C36729: Set var_A4 = var_11C
  loc_1C3673F: var_86 = CByte(0) 'Byte
  loc_1C3674E: Set var_11C = Me.Txt
  loc_1C36754: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1C3677D: If (Proc_6_27_EA61EC(var_120, "Name") = 0) Then
  loc_1C36787:   Call Txt_GotFocus(CInt(0))
  loc_1C3678C:   Exit Sub
  loc_1C3678D: End If
  loc_1C36798: If (global_80 = "Y") Then
  loc_1C367A6:   Set var_11C = Me.Txt
  loc_1C367AC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120)
  loc_1C367D5:   If (Proc_6_27_EA61EC(var_120, "Address") = 0) Then
  loc_1C367DF:     Call Txt_GotFocus(CInt(1))
  loc_1C367E4:     Exit Sub
  loc_1C367E5:   End If
  loc_1C367E5: End If
  loc_1C367F8: If (OpenType <> "Reservation") Then
  loc_1C36806:   Set var_11C = Me.Txt
  loc_1C3680C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_120)
  loc_1C36835:   If (Proc_6_27_EA61EC(var_120, "City") = 0) Then
  loc_1C3683F:     Call Txt_GotFocus(CInt(6))
  loc_1C36844:     Exit Sub
  loc_1C36845:   End If
  loc_1C36850:   Set var_11C = Me.Txt
  loc_1C36856:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_120)
  loc_1C3687F:   If (Proc_6_27_EA61EC(var_120, "State") = 0) Then
  loc_1C36889:     Call Txt_GotFocus(CInt(&H12))
  loc_1C3688E:     Exit Sub
  loc_1C3688F:   End If
  loc_1C3689A:   Set var_11C = Me.Txt
  loc_1C368A0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_120)
  loc_1C368C9:   If (Proc_6_27_EA61EC(var_120, "Country") = 0) Then
  loc_1C368D3:     Call Txt_GotFocus(CInt(&H13))
  loc_1C368D8:     Exit Sub
  loc_1C368D9:   End If
  loc_1C368E4:   Set var_11C = Me.Txt
  loc_1C368EA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120)
  loc_1C36913:   If (Proc_6_27_EA61EC(var_120, "Country Type") = 0) Then
  loc_1C3691D:     Call Txt_GotFocus(CInt(3))
  loc_1C36922:     Exit Sub
  loc_1C36923:   End If
  loc_1C36923: End If
  loc_1C3692E: If (global_80 = "Y") Then
  loc_1C3693C:   Set var_11C = Me.Txt
  loc_1C36942:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_120)
  loc_1C3696B:   If (Proc_6_27_EA61EC(var_120, "Phone No.") = 0) Then
  loc_1C36975:     Call Txt_GotFocus(CInt(&HA))
  loc_1C3697A:     Exit Sub
  loc_1C3697B:   End If
  loc_1C36986:   Set var_11C = Me.Txt
  loc_1C3698C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_120)
  loc_1C369B5:   If (Proc_6_27_EA61EC(var_120, "Fax No.") = 0) Then
  loc_1C369BF:     Call Txt_GotFocus(CInt(&HC))
  loc_1C369C4:     Exit Sub
  loc_1C369C5:   End If
  loc_1C369D0:   Set var_11C = Me.Txt
  loc_1C369D6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_120)
  loc_1C369FF:   If (Proc_6_27_EA61EC(var_120, "Mobile No.") = 0) Then
  loc_1C36A09:     Call Txt_GotFocus(CInt(&HB))
  loc_1C36A0E:     Exit Sub
  loc_1C36A0F:   End If
  loc_1C36A1A:   Set var_11C = Me.Txt
  loc_1C36A20:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_120)
  loc_1C36A49:   If (Proc_6_27_EA61EC(var_120, "Email Id.") = 0) Then
  loc_1C36A53:     Call Txt_GotFocus(CInt(&HD))
  loc_1C36A58:     Exit Sub
  loc_1C36A59:   End If
  loc_1C36A59: End If
  loc_1C36A6C: If (OpenType <> "Reservation") Then
  loc_1C36A7A:   Set var_11C = Me.Txt
  loc_1C36A80:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_120)
  loc_1C36AA9:   If (Proc_6_27_EA61EC(var_120, "Nationality") = 0) Then
  loc_1C36AB3:     Call Txt_GotFocus(CInt(&H11))
  loc_1C36AB8:     Exit Sub
  loc_1C36AB9:   End If
  loc_1C36AB9: End If
  loc_1C36AD3: var_120 = var_A4.Fields.Item("MobileInfoMandatory")
  loc_1C36B07: var_12C = var_A4.Fields.Item("MobileInfoMandatory")
  loc_1C36B39: If CBool((var_120.Value = "Y") Or (var_12C.Value = vbNullString)) Then
  loc_1C36B47:   Set var_11C = Me.Txt
  loc_1C36B4D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_120)
  loc_1C36B76:   If (Proc_6_27_EA61EC(var_120, "Mobile No.") = 0) Then
  loc_1C36B80:     Call Txt_GotFocus(CInt(&HB))
  loc_1C36B85:     Exit Sub
  loc_1C36B86:   End If
  loc_1C36B86: End If
  loc_1C36B91: If (global_80 = "Y") Then
  loc_1C36B9F:   Set var_11C = Me.Txt
  loc_1C36BA5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H42), var_120)
  loc_1C36BCE:   If (Proc_6_27_EA61EC(var_120, "Marital Status") = 0) Then
  loc_1C36BD8:     Call Txt_GotFocus(CInt(&H42))
  loc_1C36BDD:     Exit Sub
  loc_1C36BDE:   End If
  loc_1C36BE9:   Set var_11C = Me.Txt
  loc_1C36BEF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H41), var_120)
  loc_1C36C18:   If (Proc_6_27_EA61EC(var_120, "Gender") = 0) Then
  loc_1C36C22:     Call Txt_GotFocus(CInt(&H41))
  loc_1C36C27:     Exit Sub
  loc_1C36C28:   End If
  loc_1C36C36:   Set var_11C = Me.Txt
  loc_1C36C3C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H44), var_120)
  loc_1C36C5B:   If (var_120.Text = "Yes") Then
  loc_1C36C69:     Set var_11C = Me.Txt
  loc_1C36C6F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H45), var_120)
  loc_1C36C98:     If (Proc_6_27_EA61EC(var_120, "Diplomat Id. No.") = 0) Then
  loc_1C36CA2:       Call Txt_GotFocus(CInt(&H45))
  loc_1C36CA7:       Exit Sub
  loc_1C36CA8:     End If
  loc_1C36CA8:   End If
  loc_1C36CB3:   Set var_11C = Me.Txt
  loc_1C36CB9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4A), var_120)
  loc_1C36CE2:   If (Proc_6_27_EA61EC(var_120, "Id. Proof") = 0) Then
  loc_1C36CEC:     Call Txt_GotFocus(CInt(&H4A))
  loc_1C36CF1:     Exit Sub
  loc_1C36CF2:   End If
  loc_1C36CF2: End If
  loc_1C36CFE: Call Txt_Validate(CInt(&HD))
  loc_1C36D0E: Set var_11C = Me.Txt
  loc_1C36D14: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4A), var_120)
  loc_1C36D23: var_F4 = Trim(CVar(var_120))
  loc_1C36D2B: var_118 = Len(var_F4)
  loc_1C36D44: Set var_124 = Me.Txt
  loc_1C36D4A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4A), var_12C, (var_118 <> 0))
  loc_1C36D83: If CBool(0 And (Trim(CVar(var_12C)) <> "NA")) Then
  loc_1C36D91:   Set var_11C = Me.Txt
  loc_1C36D97:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4C), var_120)
  loc_1C36D9F:   var_F8 = "Id. Proof No."
  loc_1C36DC0:   If (Proc_6_27_EA61EC(var_120, var_F8) = 0) Then
  loc_1C36DCA:     Call Txt_GotFocus(CInt(&H4C))
  loc_1C36DCF:     Exit Sub
  loc_1C36DD0:   End If
  loc_1C36DD0: End If
  loc_1C36DDF: Call 0.Method_arg_38 (MemVar_1F95218, var_F8)
  loc_1C36DED: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_F8, var_126)
  loc_1C36DF9: If Not(var_126) Then
  loc_1C36E0F:   var_D4 = "InValid Picture Path in Analysis.ini"
  loc_1C36E15:   MsgBox(var_D4, &H40, var_F4, var_118, var_14C)
  loc_1C36E25:   Exit Sub
  loc_1C36E26: End If
  loc_1C36E3C: Call 0.Method_arg_38 (MemVar_1F95218 & "\IdProof", var_194)
  loc_1C36E4A: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_194, var_126)
  loc_1C36E5A: If Not(var_126) Then
  loc_1C36E70:   Call 0.Method_arg_74 (MemVar_1F95218 & "\IdProof", var_11C)
  loc_1C36E7B: End If
  loc_1C36E7F: Set var_11C = Me.TopCtrl1
  loc_1C36E85: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_120)
  loc_1C36E9E: If (CStr() = "Add") Then
  loc_1C36EA7:   var_E4 = 0
  loc_1C36EC4:   var_F8 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From GUESTPROF WHERE SITE_CODE='" & MemVar_1F95070
  loc_1C36ED4:   unk_5A23BF.Execute CStr() & "'", var_D4, -1
  loc_1C36EDC:   var_11C = var_11C.Fields
  loc_1C36EE4:   var_E4 = var_120.Item(var_120)
  loc_1C36EEC:   var_124 = var_124.Value
  loc_1C36F25:   var_118 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1C36F4B:   var_F4 = Format(CStr(var_F4), "000000")
  loc_1C36F53:   var_14C = (1 + var_F4)
  loc_1C36F5E:   global_60 = CStr(var_14C)
  loc_1C36F73: Else
  loc_1C36F90:   var_120 = Me.Fields.Item("SearchCode")
  loc_1C36F98:   var_D4 = var_120.Value
  loc_1C36FA1:   var_F8 = CStr(var_D4)
  loc_1C36FA7:   global_60 = var_F8
  loc_1C36FB8: End If
  loc_1C36FC6: Set var_11C = Me.Txt
  loc_1C36FCC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_120, var_F8)
  loc_1C36FD4: 1 = var_120.Text
  loc_1C36FEF: Set var_124 = Me.Txt
  loc_1C36FF5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_12C, var_126)
  loc_1C36FFD: (var_F8 <> vbNullString) = var_12C.Enabled
  loc_1C37017: Set var_19C = Me.Txt
  loc_1C3701D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_1A0, var_15E)
  loc_1C37025: (var_118 And (var_126 = &HFF)) = var_1A0.Enabled
  loc_1C37043: If (var_F4 And (var_15E = &HFF)) Then
  loc_1C37051:   Set var_11C = Me.Txt
  loc_1C37057:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12))
  loc_1C37080:   If (Proc_6_27_EA61EC(var_120, "State") = 0) Then
  loc_1C3708A:     Call Txt_GotFocus(CInt(&H12))
  loc_1C3708F:     Exit Sub
  loc_1C37090:   End If
  loc_1C3709B:   Set var_11C = Me.Txt
  loc_1C370A1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_120)
  loc_1C370CA:   If (Proc_6_27_EA61EC(var_120, "Country") = 0) Then
  loc_1C370D4:     Call Txt_GotFocus(CInt(&H13))
  loc_1C370D9:     Exit Sub
  loc_1C370DA:   End If
  loc_1C370E3:   unk_5A23BF.BeginTrans var_1A4
  loc_1C370EC:   var_86 = CByte(1) 'Byte
  loc_1C370FE:   Set var_11C = Me.Txt
  loc_1C37104:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_120)
  loc_1C3710C:   var_F8 = var_120.Tag
  loc_1C37123:   If (var_F8 <> vbNullString) Then
  loc_1C37153:     Set var_11C = Me.Txt
  loc_1C37159:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_120, var_F8, "SELECT COUNT(*) FROM COUNTRY WHERE CODE='", var_D4, -1)
  loc_1C3717A:     unk_5A23BF.Execute var_12C & var_F8 & "'", 0, var_19C
  loc_1C3718A:      = var_12C.Item(var_120)
  loc_1C37192:      = var_19C.Value
  loc_1C371BF:     If (var_120.Tag.Fields <= 0) Then
  loc_1C371D0:       Set var_11C = Me.Txt
  loc_1C371D6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_120)
  loc_1C371DE:       var_F8 = var_120.Tag
  loc_1C371F1:       Set var_124 = Me.Txt
  loc_1C371F7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_12C)
  loc_1C37212:       Set var_19C = Me.Txt
  loc_1C37218:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_1A0)
  loc_1C3722D:       var_D4 = CVar(var_1A0.Text) 'String
  loc_1C37246:       Set var_1B4 = Me.Txt
  loc_1C3724C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B8)
  loc_1C3725C:       var_22C = Date
  loc_1C37267:       Proc_6_7_F26918(var_23C)
  loc_1C3728E:       var_1AC = "Insert Into Country(Code,Name,ShortName,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & var_F8 & "','" & var_12C.Text
  loc_1C372D4:       var_1FC = CVar(var_1AC & "','") & Left(var_D4, 6) & "','" & CVar(var_1B8.Text) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_1C3730E:       unk_5A23BF.Execute CStr(var_1FC & "'," & var_23C & ",'A','" & CVar(MemVar_1F95078) & "')"), var_2D0, -1
  loc_1C37360:     End If
  loc_1C37360:   End If
  loc_1C3736E:   Set var_11C = Me.Txt
  loc_1C37374:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_120, var_F8)
  loc_1C3737C:   var_2D4 = var_120.Tag
  loc_1C37393:   If (var_F8 <> vbNullString) Then
  loc_1C373C3:     Set var_11C = Me.Txt
  loc_1C373C9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_120, var_F8, "SELECT COUNT(*) FROM STATE WHERE CODE='", var_D4, -1)
  loc_1C373EA:     unk_5A23BF.Execute var_12C & var_F8 & "'", 0, var_19C
  loc_1C373FA:      = var_12C.Item(var_22C)
  loc_1C37402:      = var_19C.Value
  loc_1C3742F:     If (var_120.Tag.Fields <= 0) Then
  loc_1C37440:       Set var_11C = Me.Txt
  loc_1C37446:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_120)
  loc_1C3744E:       var_F8 = var_120.Tag
  loc_1C37461:       Set var_124 = Me.Txt
  loc_1C37467:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_12C)
  loc_1C37482:       Set var_19C = Me.Txt
  loc_1C37488:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_1A0)
  loc_1C3749D:       var_D4 = CVar(var_1A0.Text) 'String
  loc_1C374B6:       Set var_1B4 = Me.Txt
  loc_1C374BC:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_1B8)
  loc_1C374CC:       var_22C = Date
  loc_1C374D7:       Proc_6_7_F26918(var_23C)
  loc_1C374FE:       var_1AC = "Insert Into State(Code,Name,ShortName,Country,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & var_F8 & "','" & var_12C.Text
  loc_1C37544:       var_1FC = CVar(var_1AC & "','") & Left(var_D4, 6) & "','" & CVar(var_1B8.Tag) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_1C3757E:       unk_5A23BF.Execute CStr(var_1FC & "'," & var_23C & ",'A','" & CVar(MemVar_1F95078) & "')"), var_2D0, -1
  loc_1C375D0:     End If
  loc_1C375D0:   End If
  loc_1C375DE:   Set var_11C = Me.Txt
  loc_1C375E4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_120, var_F8)
  loc_1C375EC:   var_2D4 = var_120.Tag
  loc_1C37603:   If (var_F8 <> vbNullString) Then
  loc_1C37633:     Set var_11C = Me.Txt
  loc_1C37639:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_120, var_F8, "SELECT COUNT(*) FROM CITY WHERE CITYCODE='", var_D4, -1)
  loc_1C3765A:     unk_5A23BF.Execute var_12C & var_F8 & "'", 0, var_19C
  loc_1C3766A:      = var_12C.Item(var_22C)
  loc_1C37672:      = var_19C.Value
  loc_1C3769F:     If (var_120.Tag.Fields <= 0) Then
  loc_1C376B0:       Set var_11C = Me.Txt
  loc_1C376B6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_120)
  loc_1C376D1:       Set var_124 = Me.Txt
  loc_1C376D7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_12C)
  loc_1C376F2:       Set var_19C = Me.Txt
  loc_1C376F8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1A0)
  loc_1C3770D:       var_D4 = CVar(var_1A0.Text) 'String
  loc_1C37726:       Set var_1B4 = Me.Txt
  loc_1C3772C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_1B8)
  loc_1C37747:       Set var_2D4 = Me.Txt
  loc_1C3774D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_2D8)
  loc_1C37768:       Set var_2DC = Me.Txt
  loc_1C3776E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_2E0)
  loc_1C37789:       Set var_2E8 = Me.Txt
  loc_1C3778F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2EC)
  loc_1C3779F:       var_320 = Date
  loc_1C377AA:       Proc_6_7_F26918(var_330)
  loc_1C377C3:       var_194 = "Insert Into City(CityCode,CityName,ShortName,STDCode,ZipCode,State,Country,CityHelp,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & var_120.Tag
  loc_1C377D1:       var_1AC = var_194 & "','" & var_12C.Text
  loc_1C377D8:       var_118 = CVar(var_1AC & "','") 'String
  loc_1C377DE:       var_14C = var_118 & Left(var_D4, 6) 
  loc_1C377F5:       var_E4 = "','"
  loc_1C377FA:       var_190 = var_14C & "','','" & CVar(var_1B8.Text) & var_E4 
  loc_1C37808:       var_108 = "','"
  loc_1C37814:       var_21C = CVar(var_2E0.Tag) 'String
  loc_1C3781B:       var_13C = "','"
  loc_1C3782A:       var_26C = var_190 & CVar(var_2D8.Tag) & var_108 & var_21C & var_13C & CVar(var_2EC.Text) 
  loc_1C37850:       var_300 = var_26C & "','" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) 
  loc_1C37860:       var_340 = var_300 & "'," & var_330 
  loc_1C3788A:       unk_5A23BF.Execute CStr(var_340 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_3B4, -1
  loc_1C378FA:     End If
  loc_1C378FA:   End If
  loc_1C37900:   unk_5A23BF.CommitTrans
  loc_1C37909:   var_86 = CByte(0) 'Byte
  loc_1C3790D: End If
  loc_1C37916: unk_5A23BF.BeginTrans var_1A4
  loc_1C3791F: var_86 = CByte(1) 'Byte
  loc_1C3794A: unk_5A23BF.Execute "Delete From GuestProfFor Where Code='" & global_60 & "'", var_D4, -1
  loc_1C37973: var_F8 = "Delete From GuestProfVeh Where Code='" & global_60
  loc_1C37983: unk_5A23BF.Execute var_F8 & "'", var_D4, -1
  loc_1C379A1: Call 0.Method_arg_38 (MemVar_1F95218, var_F8, var_11C)
  loc_1C379BE: var_98 = var_F8 & "\GT" & global_60 & ".jpg"
  loc_1C379D6: Call 0.Method_arg_38 (MemVar_1F95218, var_F8, var_11C)
  loc_1C379F3: var_9C = var_F8 & "\IdProof\ID" & global_60 & ".jpg"
  loc_1C37A0B: Call 0.Method_arg_38 (MemVar_1F95218, var_F8)
  loc_1C37A28: var_A0 = var_F8 & "\IdProof\SIGN" & global_60 & ".jpg"
  loc_1C37A4C: var_AE = Proc_142_3_E98110(Me.GuestImage, var_98)
  loc_1C37A6E: var_B0 = Proc_142_3_E98110(Me.IdProofImage, var_9C, var_AE)
  loc_1C37A7C: Set var_120 = Me.GuestSign
  loc_1C37A90: var_B2 = Proc_142_3_E98110(var_120, var_A0, var_B0)
  loc_1C37AA0: If (var_AE = &HFF) Then
  loc_1C37AAA:   Set var_11C = Me.GuestImage
  loc_1C37AB0:   Me.GuestImage.Tag = var_98
  loc_1C37AB8: End If
  loc_1C37ABE: If (var_B0 = &HFF) Then
  loc_1C37ACE:   Me.IdProofImage.Tag = var_9C
  loc_1C37AD6: End If
  loc_1C37ADC: If (var_B2 = &HFF) Then
  loc_1C37AEC:   Me.GuestSign.Tag = var_A0
  loc_1C37AF4: End If
  loc_1C37AF8: Set var_11C = Me.TopCtrl1
  loc_1C37AFE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_B2)
  loc_1C37B06: var_F8 = CStr(var_3B8)
  loc_1C37B17: If (var_F8 = "Add") Then
  loc_1C37B23:   If (global_180 = 0) Then
  loc_1C37B31:     Set var_11C = Me.Txt
  loc_1C37B37:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120)
  loc_1C37B3F:     var_D4 = CVar(var_120) 'Address
  loc_1C37B46:     var_F4 = Trim(var_D4)
  loc_1C37B51:     Proc_6_17_EAAE40(var_118, var_F4)
  loc_1C37B61:     Set var_124 = Me.Txt
  loc_1C37B67:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_12C)
  loc_1C37B76:     Proc_6_17_EAAE40(var_190, CVar(var_12C))
  loc_1C37B86:     Set var_19C = Me.Txt
  loc_1C37B8C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1A0)
  loc_1C37B9B:     Proc_6_17_EAAE40(var_21C, CVar(var_1A0))
  loc_1C37BAE:     Set var_1B4 = Me.Txt
  loc_1C37BB4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1B8)
  loc_1C37BBC:     var_194 = var_1B8.Tag
  loc_1C37BCA:     Proc_6_17_EAAE40(var_26C, CVar(var_194))
  loc_1C37BDA:     Set var_2D4 = Me.Txt
  loc_1C37BE0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2D8)
  loc_1C37BEF:     Proc_6_17_EAAE40(var_300, CVar(var_2D8))
  loc_1C37BFF:     Set var_2DC = Me.Txt
  loc_1C37C05:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_2E0)
  loc_1C37C14:     Proc_6_17_EAAE40(var_340, CVar(var_2E0))
  loc_1C37C24:     Set var_2E8 = Me.Txt
  loc_1C37C2A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_2EC)
  loc_1C37C39:     Proc_6_17_EAAE40(var_3B4, CVar(var_2EC))
  loc_1C37C49:     Set var_3B8 = Me.Txt
  loc_1C37C4F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_3DC)
  loc_1C37C5E:     Proc_6_17_EAAE40(var_3FC, CVar(var_3DC))
  loc_1C37C6E:     Set var_420 = Me.Txt
  loc_1C37C74:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_424)
  loc_1C37C83:     Proc_6_17_EAAE40(var_444, CVar(var_424))
  loc_1C37C96:     Set var_468 = Me.Txt
  loc_1C37C9C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_46C)
  loc_1C37CB2:     Proc_6_17_EAAE40(var_48C, CVar(var_46C.Tag))
  loc_1C37CC5:     Set var_4B0 = Me.Txt
  loc_1C37CCB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H49), var_4B4)
  loc_1C37CE0:     var_1528 = Val(var_4B4.Text)
  loc_1C37CEE:     Set var_4D8 = Me.Txt
  loc_1C37CF4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_4DC)
  loc_1C37D03:     Proc_6_7_F26918(var_4FC, CVar(var_4DC))
  loc_1C37D13:     Set var_520 = Me.Txt
  loc_1C37D19:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_524)
  loc_1C37D28:     Proc_6_7_F26918(var_544, CVar(var_524))
  loc_1C37D3B:     Set var_578 = Me.Txt
  loc_1C37D41:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_57C, var_1AC)
  loc_1C37D57:     Proc_6_17_EAAE40(var_59C, CVar(var_1AC))
  loc_1C37D67:     Set var_5D0 = Me.Txt
  loc_1C37D6D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_5D4)
  loc_1C37D7C:     Proc_6_17_EAAE40(var_5F4, CVar(var_5D4))
  loc_1C37D8C:     Set var_628 = Me.Txt
  loc_1C37D92:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_62C)
  loc_1C37DA1:     Proc_6_17_EAAE40(var_64C, CVar(var_62C))
  loc_1C37DB1:     Set var_680 = Me.Txt
  loc_1C37DB7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_684)
  loc_1C37DC6:     Proc_6_17_EAAE40(var_6A4, CVar(var_684))
  loc_1C37DD6:     Set var_6D8 = Me.Txt
  loc_1C37DDC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_6DC)
  loc_1C37DEB:     Proc_6_17_EAAE40(var_6FC, CVar(var_6DC))
  loc_1C37DFB:     Set var_730 = Me.Txt
  loc_1C37E01:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_734)
  loc_1C37E10:     Proc_6_17_EAAE40(var_754, CVar(var_734))
  loc_1C37E20:     Set var_788 = Me.Txt
  loc_1C37E26:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_78C)
  loc_1C37E35:     Proc_6_17_EAAE40(var_7AC, CVar(var_78C))
  loc_1C37E45:     Set var_7E0 = Me.Txt
  loc_1C37E4B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_7E4)
  loc_1C37E5A:     Proc_6_17_EAAE40(var_804, CVar(var_7E4))
  loc_1C37E6A:     Set var_838 = Me.Txt
  loc_1C37E70:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_83C)
  loc_1C37E7F:     Proc_6_17_EAAE40(var_85C, CVar(var_83C))
  loc_1C37E8F:     Set var_890 = Me.Txt
  loc_1C37E95:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_894)
  loc_1C37EA4:     Proc_6_17_EAAE40(var_8B4, CVar(var_894))
  loc_1C37EB4:     Set var_8E8 = Me.Txt
  loc_1C37EBA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_8EC)
  loc_1C37EC9:     Proc_6_17_EAAE40(var_90C, CVar(var_8EC))
  loc_1C37ED9:     Set var_940 = Me.Txt
  loc_1C37EDF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3D), var_944)
  loc_1C37EEE:     Proc_6_17_EAAE40(var_964, CVar(var_944))
  loc_1C37EFE:     Set var_998 = Me.Txt
  loc_1C37F04:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3C), var_99C)
  loc_1C37F13:     Proc_6_17_EAAE40(var_9BC, CVar(var_99C))
  loc_1C37F23:     Set var_9F0 = Me.Txt
  loc_1C37F29:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3B), var_9F4)
  loc_1C37F38:     Proc_6_17_EAAE40(var_A14, CVar(var_9F4))
  loc_1C37F48:     Set var_A48 = Me.Txt
  loc_1C37F4E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_A4C)
  loc_1C37F5D:     Proc_6_17_EAAE40(var_A6C, CVar(var_A4C))
  loc_1C37F6D:     Set var_AA0 = Me.Txt
  loc_1C37F73:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_AA4)
  loc_1C37F82:     Proc_6_17_EAAE40(var_AC4, CVar(var_AA4))
  loc_1C37F92:     Set var_AF8 = Me.Txt
  loc_1C37F98:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_AFC)
  loc_1C37FA7:     Proc_6_17_EAAE40(var_B1C, CVar(var_AFC))
  loc_1C37FB7:     Set var_B50 = Me.Txt
  loc_1C37FBD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3F), var_B54)
  loc_1C37FCC:     Proc_6_17_EAAE40(var_B74, CVar(var_B54))
  loc_1C37FDC:     Set var_BA8 = Me.Txt
  loc_1C37FE2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3E), var_BAC)
  loc_1C37FF1:     Proc_6_17_EAAE40(var_BCC, CVar(var_BAC))
  loc_1C38001:     Set var_C00 = Me.Txt
  loc_1C38007:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_C04)
  loc_1C38016:     Proc_6_17_EAAE40(var_C24, CVar(var_C04))
  loc_1C38026:     Set var_C58 = Me.Txt
  loc_1C3802C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_C5C)
  loc_1C3803B:     Proc_6_17_EAAE40(var_C7C, CVar(var_C5C))
  loc_1C3804B:     Set var_CB0 = Me.Txt
  loc_1C38051:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_CB4)
  loc_1C38060:     Proc_6_17_EAAE40(var_CD4, CVar(var_CB4))
  loc_1C38073:     Set var_D08 = Me.Txt
  loc_1C38079:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_D0C)
  loc_1C38094:     Set var_D50 = Me.Txt
  loc_1C3809A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_D54)
  loc_1C380B5:     Set var_D98 = Me.Txt
  loc_1C380BB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_D9C)
  loc_1C380D3:     Set var_DE0 = Me.Txt
  loc_1C380D9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H42), var_DE4)
  loc_1C380E8:     Proc_6_17_EAAE40(var_E04, CVar(var_DE4))
  loc_1C380F8:     Set var_E38 = Me.Txt
  loc_1C380FE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H41), var_E3C)
  loc_1C3810D:     Proc_6_17_EAAE40(var_E5C, CVar(var_E3C))
  loc_1C3811D:     Set var_E90 = Me.Txt
  loc_1C38123:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_E94)
  loc_1C38132:     Proc_6_17_EAAE40(var_EB4, CVar(var_E94))
  loc_1C38145:     Proc_6_7_F26918(var_F84, Date)
  loc_1C38155:     Set var_FB8 = Me.Txt
  loc_1C3815B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H43), var_FBC)
  loc_1C3817A:     Set var_1010 = Me.Txt
  loc_1C38180:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H44), var_1014)
  loc_1C381D1:     Set var_10E8 = Me.Txt
  loc_1C381D7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H45), var_10EC)
  loc_1C381F6:     Set var_1140 = Me.Txt
  loc_1C381FC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H46), var_1144)
  loc_1C3821D:     var_126 = Me.GuestImage.Visible
  loc_1C3825D:     Proc_6_17_EAAE40(var_123C, IIf((var_126 = &HFF), CVar(Me.GuestImage.Tag), vbNullString))
  loc_1C382AF:     Proc_6_17_EAAE40(var_12D4, IIf((Me.IdProofImage.Visible = &HFF), CVar(Me.IdProofImage.Tag), vbNullString))
  loc_1C38301:     Proc_6_17_EAAE40(var_1370, IIf((Me.GuestSign.Visible = &HFF), CVar(Me.GuestSign.Tag), vbNullString))
  loc_1C38311:     Set var_13A4 = Me.Txt
  loc_1C38317:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4A), var_13A8)
  loc_1C38326:     Proc_6_17_EAAE40(var_13C8, CVar(var_13A8))
  loc_1C38336:     Set var_13FC = Me.Txt
  loc_1C3833C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4C), var_1400)
  loc_1C3834B:     Proc_6_17_EAAE40(var_1420, CVar(var_1400))
  loc_1C3835B:     Set var_1494 = Me.Txt
  loc_1C38361:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4B), var_1498)
  loc_1C3837B:     Proc_6_17_EAAE40(var_14C8, Trim(CVar(var_1498)))
  loc_1C38397:     var_F8 = "Insert Into GuestProf (Code,Name,Add1,Add2,City,Type,PhoneNo,FaxNo,MobileNo,EmailId,Nationality,Age,BirthDate,Anniversary,GuestStatus,SplInstr,Comments1,Comments2,Comments3,ConName,T1Field1,T1Field2,T1Field3,T1Field4,T1Field5,T1Field6,T1Field7,T1Field8,T2Field1,T2Field2,T2Field3,T2Field4,T2Field5,T2Field6,T2Field7,T2Field8,CityName,StateName,CountryName,MaritalStatus,Gender,ZipCode,FOM,Site_Code,U_Name,U_EntDt,U_AE,PanNO,DiplomatYN,IdNo,ConPrefix,LogSite_Code,PicPath,IdPicPath,SignPicPath,IdProof,IdProofNo,mProf,FatherName) Values ('" & global_60
  loc_1C3839E:     var_14C = CVar(var_F8 & "',") 'String
  loc_1C383A8:     var_C4 = ","
  loc_1C383B8:     var_E4 = ","
  loc_1C383C8:     var_108 = ","
  loc_1C383D8:     var_13C = ","
  loc_1C38404:     var_3C8 = var_14C & var_118 & var_C4 & var_190 & var_E4 & var_21C & var_108 & var_26C & var_13C & var_300 & "," & var_340 & "," & var_3B4 
  loc_1C38478:     var_5AC = var_3C8 & "," & var_3FC & "," & var_444 & "," & var_48C & "," & CVar(var_57C.Tag) & "," & var_4FC & "," & var_544 & "," & var_59C 
  loc_1C384F1:     var_834 = var_5AC & "," & var_5F4 & "," & var_64C & "," & var_6A4 & "," & var_6FC & "," & var_754 & "," & var_7AC & "," & var_804 & "," 
  loc_1C38568:     var_AD4 = var_834 & var_85C & "," & var_8B4 & "," & var_90C & "," & var_964 & "," & var_9BC & "," & var_A14 & "," & var_A6C & "," & var_AC4 
  loc_1C385DB:     var_D2C = var_AD4 & "," & var_B1C & "," & var_B74 & "," & var_BCC & "," & var_C24 & "," & var_C7C & "," & var_CD4 & ",'" & CVar(var_D0C.Text) 
  loc_1C3863A:     var_EE4 = var_D2C & "','" & CVar(var_D54.Text) & "','" & CVar(var_D9C.Text) & "'," & var_E04 & "," & var_E5C & "," & var_EB4 & ",1,'" 
  loc_1C3867A:     var_FEC = var_EE4 & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_F84 & ",'A','" & CVar(Proc_6_38_E69628(CVar(var_FBC))) 
  loc_1C386AD:     var_1174 = var_FEC & "','" & IIf((Trim(CVar(var_1014)) = "Yes"), "Yes", "No") & "','" & Trim(CVar(var_10EC)) & "','" & CVar(Proc_6_38_E69628(CVar(var_1144))) 
  loc_1C38710:     var_1430 = var_1174 & "','" & CVar(MemVar_1F95078) & "'," & var_123C & "," & var_12D4 & "," & var_1370 & "," & var_13C8 & "," & var_1420 
  loc_1C38736:     var_14D8 = var_1430 & ",'" & CVar(global_60) & "'," & var_14C8 
  loc_1C3874D:     unk_5A23BF.Execute CStr(var_14D8 & ")"), var_151C, -1
  loc_1C389AC:   Else
  loc_1C389B5:     If (global_180 = &HFF) Then
  loc_1C389C3:       Set var_11C = Me.Txt
  loc_1C389C9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120)
  loc_1C389D1:       var_D4 = CVar(var_120) 'Address
  loc_1C389D8:       var_F4 = Trim(var_D4)
  loc_1C389E3:       Proc_6_17_EAAE40(var_118, var_F4)
  loc_1C389F3:       Set var_124 = Me.Txt
  loc_1C389F9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_12C)
  loc_1C38A01:       var_180 = CVar(var_12C) 'Address
  loc_1C38A08:       Proc_6_17_EAAE40(var_190, var_180)
  loc_1C38A18:       Set var_19C = Me.Txt
  loc_1C38A1E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1A0)
  loc_1C38A26:       var_1FC = CVar(var_1A0) 'Address
  loc_1C38A2D:       Proc_6_17_EAAE40(var_21C, var_1FC)
  loc_1C38A40:       Set var_1B4 = Me.Txt
  loc_1C38A46:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1B8, var_194)
  loc_1C38A4E:       var_1520 = var_1B8.Tag
  loc_1C38A56:       var_24C = CVar(var_194) 'String
  loc_1C38A5C:       Proc_6_17_EAAE40(var_26C, var_24C)
  loc_1C38A6C:       Set var_2D4 = Me.Txt
  loc_1C38A72:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2D8)
  loc_1C38A7A:       var_2D0 = CVar(var_2D8) 'Address
  loc_1C38A81:       Proc_6_17_EAAE40(var_300, var_2D0)
  loc_1C38A91:       Set var_2DC = Me.Txt
  loc_1C38A97:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_2E0)
  loc_1C38A9F:       var_330 = CVar(var_2E0) 'Address
  loc_1C38AA6:       Proc_6_17_EAAE40(var_340, var_330)
  loc_1C38AB6:       Set var_2E8 = Me.Txt
  loc_1C38ABC:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_2EC)
  loc_1C38AC4:       var_390 = CVar(var_2EC) 'Address
  loc_1C38ACB:       Proc_6_17_EAAE40(var_3B4, var_390)
  loc_1C38ADB:       Set var_3B8 = Me.Txt
  loc_1C38AE1:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_3DC)
  loc_1C38AE9:       var_3EC = CVar(var_3DC) 'Address
  loc_1C38AF0:       Proc_6_17_EAAE40(var_3FC, var_3EC)
  loc_1C38B00:       Set var_420 = Me.Txt
  loc_1C38B06:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_424)
  loc_1C38B0E:       var_434 = CVar(var_424) 'Address
  loc_1C38B15:       Proc_6_17_EAAE40(var_444, var_434)
  loc_1C38B28:       Set var_468 = Me.Txt
  loc_1C38B2E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_46C)
  loc_1C38B3E:       var_47C = CVar(var_46C.Tag) 'String
  loc_1C38B44:       Proc_6_17_EAAE40(var_48C, var_47C)
  loc_1C38B57:       Set var_4B0 = Me.Txt
  loc_1C38B5D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H49), var_4B4)
  loc_1C38B65:       var_1A8 = var_4B4.Text
  loc_1C38B72:       var_1528 = Val(var_1A8)
  loc_1C38B80:       Set var_4D8 = Me.Txt
  loc_1C38B86:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_4DC)
  loc_1C38B8E:       var_4EC = CVar(var_4DC) 'Address
  loc_1C38B95:       Proc_6_7_F26918(var_4FC, var_4EC)
  loc_1C38BA5:       Set var_520 = Me.Txt
  loc_1C38BAB:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_524)
  loc_1C38BB3:       var_534 = CVar(var_524) 'Address
  loc_1C38BBA:       Proc_6_7_F26918(var_544, var_534)
  loc_1C38BCD:       Set var_578 = Me.Txt
  loc_1C38BD3:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_57C, var_1AC)
  loc_1C38BE3:       var_58C = CVar(var_1AC) 'String
  loc_1C38BE9:       Proc_6_17_EAAE40(var_59C, var_58C)
  loc_1C38BF9:       Set var_5D0 = Me.Txt
  loc_1C38BFF:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_5D4)
  loc_1C38C07:       var_5E4 = CVar(var_5D4) 'Address
  loc_1C38C0E:       Proc_6_17_EAAE40(var_5F4, var_5E4)
  loc_1C38C1E:       Set var_628 = Me.Txt
  loc_1C38C24:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_62C)
  loc_1C38C2C:       var_63C = CVar(var_62C) 'Address
  loc_1C38C33:       Proc_6_17_EAAE40(var_64C, var_63C)
  loc_1C38C43:       Set var_680 = Me.Txt
  loc_1C38C49:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_684)
  loc_1C38C51:       var_694 = CVar(var_684) 'Address
  loc_1C38C58:       Proc_6_17_EAAE40(var_6A4, var_694)
  loc_1C38C68:       Set var_6D8 = Me.Txt
  loc_1C38C6E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_6DC)
  loc_1C38C76:       var_6EC = CVar(var_6DC) 'Address
  loc_1C38C7D:       Proc_6_17_EAAE40(var_6FC, var_6EC)
  loc_1C38C8D:       Set var_730 = Me.Txt
  loc_1C38C93:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_734)
  loc_1C38C9B:       var_744 = CVar(var_734) 'Address
  loc_1C38CA2:       Proc_6_17_EAAE40(var_754, var_744)
  loc_1C38CB2:       Set var_788 = Me.Txt
  loc_1C38CB8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_78C)
  loc_1C38CC0:       var_79C = CVar(var_78C) 'Address
  loc_1C38CC7:       Proc_6_17_EAAE40(var_7AC, var_79C)
  loc_1C38CD7:       Set var_7E0 = Me.Txt
  loc_1C38CDD:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_7E4)
  loc_1C38CE5:       var_7F4 = CVar(var_7E4) 'Address
  loc_1C38CEC:       Proc_6_17_EAAE40(var_804, var_7F4)
  loc_1C38CFC:       Set var_838 = Me.Txt
  loc_1C38D02:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_83C)
  loc_1C38D0A:       var_84C = CVar(var_83C) 'Address
  loc_1C38D11:       Proc_6_17_EAAE40(var_85C, var_84C)
  loc_1C38D21:       Set var_890 = Me.Txt
  loc_1C38D27:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_894)
  loc_1C38D2F:       var_8A4 = CVar(var_894) 'Address
  loc_1C38D36:       Proc_6_17_EAAE40(var_8B4, var_8A4)
  loc_1C38D46:       Set var_8E8 = Me.Txt
  loc_1C38D4C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_8EC)
  loc_1C38D54:       var_8FC = CVar(var_8EC) 'Address
  loc_1C38D5B:       Proc_6_17_EAAE40(var_90C, var_8FC)
  loc_1C38D6B:       Set var_940 = Me.Txt
  loc_1C38D71:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3D), var_944)
  loc_1C38D79:       var_954 = CVar(var_944) 'Address
  loc_1C38D80:       Proc_6_17_EAAE40(var_964, var_954)
  loc_1C38D90:       Set var_998 = Me.Txt
  loc_1C38D96:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3C), var_99C)
  loc_1C38D9E:       var_9AC = CVar(var_99C) 'Address
  loc_1C38DA5:       Proc_6_17_EAAE40(var_9BC, var_9AC)
  loc_1C38DB5:       Set var_9F0 = Me.Txt
  loc_1C38DBB:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3B), var_9F4)
  loc_1C38DC3:       var_A04 = CVar(var_9F4) 'Address
  loc_1C38DCA:       Proc_6_17_EAAE40(var_A14, var_A04)
  loc_1C38DDA:       Set var_A48 = Me.Txt
  loc_1C38DE0:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_A4C)
  loc_1C38DE8:       var_A5C = CVar(var_A4C) 'Address
  loc_1C38DEF:       Proc_6_17_EAAE40(var_A6C, var_A5C)
  loc_1C38DFF:       Set var_AA0 = Me.Txt
  loc_1C38E05:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_AA4)
  loc_1C38E0D:       var_AB4 = CVar(var_AA4) 'Address
  loc_1C38E14:       Proc_6_17_EAAE40(var_AC4, var_AB4)
  loc_1C38E24:       Set var_AF8 = Me.Txt
  loc_1C38E2A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_AFC)
  loc_1C38E32:       var_B0C = CVar(var_AFC) 'Address
  loc_1C38E39:       Proc_6_17_EAAE40(var_B1C, var_B0C)
  loc_1C38E49:       Set var_B50 = Me.Txt
  loc_1C38E4F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3F), var_B54)
  loc_1C38E57:       var_B64 = CVar(var_B54) 'Address
  loc_1C38E5E:       Proc_6_17_EAAE40(var_B74, var_B64)
  loc_1C38E6E:       Set var_BA8 = Me.Txt
  loc_1C38E74:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3E), var_BAC)
  loc_1C38E7C:       var_BBC = CVar(var_BAC) 'Address
  loc_1C38E83:       Proc_6_17_EAAE40(var_BCC, var_BBC)
  loc_1C38E93:       Set var_C00 = Me.Txt
  loc_1C38E99:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_C04)
  loc_1C38EA1:       var_C14 = CVar(var_C04) 'Address
  loc_1C38EA8:       Proc_6_17_EAAE40(var_C24, var_C14)
  loc_1C38EB8:       Set var_C58 = Me.Txt
  loc_1C38EBE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_C5C)
  loc_1C38EC6:       var_C6C = CVar(var_C5C) 'Address
  loc_1C38ECD:       Proc_6_17_EAAE40(var_C7C, var_C6C)
  loc_1C38EDD:       Set var_CB0 = Me.Txt
  loc_1C38EE3:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_CB4)
  loc_1C38EEB:       var_CC4 = CVar(var_CB4) 'Address
  loc_1C38EF2:       Proc_6_17_EAAE40(var_CD4, var_CC4)
  loc_1C38F05:       Set var_D08 = Me.Txt
  loc_1C38F0B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_D0C)
  loc_1C38F26:       Set var_D50 = Me.Txt
  loc_1C38F2C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_D54)
  loc_1C38F47:       Set var_D98 = Me.Txt
  loc_1C38F4D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_D9C)
  loc_1C38F65:       Set var_DE0 = Me.Txt
  loc_1C38F6B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H42), var_DE4)
  loc_1C38F7A:       Proc_6_17_EAAE40(var_E04, CVar(var_DE4))
  loc_1C38F8A:       Set var_E38 = Me.Txt
  loc_1C38F90:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H41), var_E3C)
  loc_1C38F9F:       Proc_6_17_EAAE40(var_E5C, CVar(var_E3C))
  loc_1C38FAF:       Set var_E90 = Me.Txt
  loc_1C38FB5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_E94)
  loc_1C38FC4:       Proc_6_17_EAAE40(var_EB4, CVar(var_E94))
  loc_1C38FD7:       Proc_6_7_F26918(var_F84, Date)
  loc_1C38FE7:       Set var_FB8 = Me.Txt
  loc_1C38FED:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H43), var_FBC)
  loc_1C3900C:       Set var_1010 = Me.Txt
  loc_1C39012:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H44), var_1014)
  loc_1C39063:       Set var_10E8 = Me.Txt
  loc_1C39069:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H45), var_10EC)
  loc_1C39088:       Set var_1140 = Me.Txt
  loc_1C3908E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H46), var_1144)
  loc_1C390AF:       var_126 = Me.GuestImage.Visible
  loc_1C390EF:       Proc_6_17_EAAE40(var_123C, IIf((var_126 = &HFF), CVar(Me.GuestImage.Tag), vbNullString))
  loc_1C39141:       Proc_6_17_EAAE40(var_12D4, IIf((Me.IdProofImage.Visible = &HFF), CVar(Me.IdProofImage.Tag), vbNullString))
  loc_1C39193:       Proc_6_17_EAAE40(var_1370, IIf((Me.GuestSign.Visible = &HFF), CVar(Me.GuestSign.Tag), vbNullString))
  loc_1C391A3:       Set var_13A4 = Me.Txt
  loc_1C391A9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4A), var_13A8)
  loc_1C391B8:       Proc_6_17_EAAE40(var_13C8, CVar(var_13A8))
  loc_1C391C8:       Set var_13FC = Me.Txt
  loc_1C391CE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4C), var_1400)
  loc_1C391DD:       Proc_6_17_EAAE40(var_1420, CVar(var_1400))
  loc_1C391FF:       Set var_1498 = Me.Txt
  loc_1C39205:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4B), var_1520)
  loc_1C3921F:       Proc_6_17_EAAE40(var_14D8, Trim(CVar(var_1520)))
  loc_1C3923B:       var_F8 = "Insert Into GuestProf (Code,Name,Add1,Add2,City,Type,PhoneNo,FaxNo,MobileNo,EmailId,Nationality,Age,BirthDate,Anniversary,GuestStatus,SplInstr,Comments1,Comments2,Comments3,ConName,T1Field1,T1Field2,T1Field3,T1Field4,T1Field5,T1Field6,T1Field7,T1Field8,T2Field1,T2Field2,T2Field3,T2Field4,T2Field5,T2Field6,T2Field7,T2Field8,CityName,StateName,CountryName,MaritalStatus,Gender,ZipCode,FOM,Site_Code,U_Name,U_EntDt,U_AE,PanNO,DiplomatYN,IdNo,ConPrefix,LogSite_Code,PicPath,IdPicPath,SignPicPath,IdProof,IdProofNo,mProf,FatherName) Values ('" & global_60
  loc_1C3924C:       var_C4 = ","
  loc_1C3926C:       var_108 = ","
  loc_1C3927C:       var_13C = ","
  loc_1C39298:       var_350 = CVar(var_F8 & "',") & var_118 & var_C4 & var_190 & "," & var_21C & var_108 & var_26C & var_13C & var_300 & "," & var_340 
  loc_1C39305:       var_51C = var_350 & "," & var_3B4 & "," & var_3FC & "," & var_444 & "," & var_48C & "," & CVar(var_57C.Tag) & "," & var_4FC & "," 
  loc_1C39375:       var_784 = var_51C & var_544 & "," & var_59C & "," & var_5F4 & "," & var_64C & "," & var_6A4 & "," & var_6FC & "," & var_754 & "," 
  loc_1C393E5:       var_9EC = var_784 & var_7AC & "," & var_804 & "," & var_85C & "," & var_8B4 & "," & var_90C & "," & var_964 & "," & var_9BC & "," 
  loc_1C39455:       var_C54 = var_9EC & var_A14 & "," & var_A6C & "," & var_AC4 & "," & var_B1C & "," & var_B74 & "," & var_BCC & "," & var_C24 & "," 
  loc_1C394A5:       var_DBC = var_C54 & var_C7C & "," & var_CD4 & ",'" & CVar(var_D0C.Text) & "','" & CVar(var_D54.Text) & "','" & CVar(var_D9C.Text) 
  loc_1C394BE:       var_E34 = var_DBC & "'," & var_E04 & "," 
  loc_1C394CE:       var_E8C = var_E34 & var_E5C & "," 
  loc_1C394DE:       var_EE4 = var_E8C & var_EB4 & ",1,'" 
  loc_1C39514:       var_FB4 = var_EE4 & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_F84 & ",'A','" 
  loc_1C3953E:       var_111C = var_FB4 & CVar(Proc_6_38_E69628(CVar(var_FBC))) & "','" & IIf((Trim(CVar(var_1014)) = "Yes"), "Yes", "No") & "','" & Trim(CVar(var_10EC)) 
  loc_1C3956D:       var_11D4 = var_111C & "','" & CVar(Proc_6_38_E69628(CVar(var_1144))) & "','" & CVar(MemVar_1F95078) & "'," 
  loc_1C3957D:       var_126C = var_11D4 & var_123C & "," 
  loc_1C3958D:       var_1304 = var_126C & var_12D4 & "," 
  loc_1C395D0:       var_14A8 = var_1304 & var_1370 & "," & var_13C8 & "," & var_1420 & ",'" & CVar(Me.lblmProf.Caption) & "'," 
  loc_1C395EE:       unk_5A23BF.Execute CStr(var_14A8 & var_14D8 & ")"), var_1540, -1
  loc_1C3984E:     End If
  loc_1C3984E:   End If
  loc_1C39851: Else
  loc_1C3985C:   Set var_11C = Me.Txt
  loc_1C39862:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120)
  loc_1C3986A:   var_D4 = CVar(var_120) 'Address
  loc_1C39871:   var_F4 = Trim(var_D4)
  loc_1C3987C:   Proc_6_17_EAAE40(var_118, var_F4)
  loc_1C3988C:   Set var_124 = Me.Txt
  loc_1C39892:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_12C)
  loc_1C398A1:   Proc_6_17_EAAE40(var_180, CVar(var_12C))
  loc_1C398B1:   Set var_19C = Me.Txt
  loc_1C398B7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1A0)
  loc_1C398C6:   Proc_6_17_EAAE40(var_1FC, CVar(var_1A0))
  loc_1C398D9:   Set var_1B4 = Me.Txt
  loc_1C398DF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1B8, var_F8)
  loc_1C398E7:   var_1544 = var_1B8.Tag
  loc_1C398F5:   Proc_6_17_EAAE40(var_24C, CVar(var_F8))
  loc_1C39905:   Set var_2D4 = Me.Txt
  loc_1C3990B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2D8)
  loc_1C3991A:   Proc_6_17_EAAE40(var_2D0, CVar(var_2D8))
  loc_1C3992A:   Set var_2DC = Me.Txt
  loc_1C39930:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_2E0)
  loc_1C3993F:   Proc_6_17_EAAE40(var_330, CVar(var_2E0))
  loc_1C3994F:   Set var_2E8 = Me.Txt
  loc_1C39955:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_2EC)
  loc_1C3995D:   var_370 = CVar(var_2EC) 'Address
  loc_1C39964:   Proc_6_17_EAAE40(var_390, var_370)
  loc_1C39974:   Set var_3B8 = Me.Txt
  loc_1C3997A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_3DC)
  loc_1C39989:   Proc_6_17_EAAE40(var_3EC, CVar(var_3DC))
  loc_1C39999:   Set var_420 = Me.Txt
  loc_1C3999F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_424)
  loc_1C399AE:   Proc_6_17_EAAE40(var_434, CVar(var_424))
  loc_1C399C1:   Set var_468 = Me.Txt
  loc_1C399C7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_46C)
  loc_1C399DD:   Proc_6_17_EAAE40(var_47C, CVar(var_46C.Tag))
  loc_1C399F0:   Set var_4B0 = Me.Txt
  loc_1C399F6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H49), var_4B4)
  loc_1C39A0B:   var_1528 = Val(var_4B4.Text)
  loc_1C39A19:   Set var_4D8 = Me.Txt
  loc_1C39A1F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_4DC)
  loc_1C39A2E:   Proc_6_7_F26918(var_4EC, CVar(var_4DC))
  loc_1C39A3E:   Set var_520 = Me.Txt
  loc_1C39A44:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_524)
  loc_1C39A53:   Proc_6_7_F26918(var_534, CVar(var_524))
  loc_1C39A66:   Set var_578 = Me.Txt
  loc_1C39A6C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_57C, var_1A8)
  loc_1C39A82:   Proc_6_17_EAAE40(var_58C, CVar(var_1A8))
  loc_1C39A92:   Set var_5D0 = Me.Txt
  loc_1C39A98:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_5D4)
  loc_1C39AA0:   var_5CC = CVar(var_5D4) 'Address
  loc_1C39AA7:   Proc_6_17_EAAE40(var_5E4, var_5CC)
  loc_1C39AB7:   Set var_628 = Me.Txt
  loc_1C39ABD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_62C)
  loc_1C39ACC:   Proc_6_17_EAAE40(var_63C, CVar(var_62C))
  loc_1C39ADC:   Set var_680 = Me.Txt
  loc_1C39AE2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_684)
  loc_1C39AF1:   Proc_6_17_EAAE40(var_694, CVar(var_684))
  loc_1C39B01:   Set var_6D8 = Me.Txt
  loc_1C39B07:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_6DC)
  loc_1C39B16:   Proc_6_17_EAAE40(var_6EC, CVar(var_6DC))
  loc_1C39B26:   Set var_730 = Me.Txt
  loc_1C39B2C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_734)
  loc_1C39B3B:   Proc_6_17_EAAE40(var_744, CVar(var_734))
  loc_1C39B4B:   Set var_788 = Me.Txt
  loc_1C39B51:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_78C)
  loc_1C39B59:   var_784 = CVar(var_78C) 'Address
  loc_1C39B60:   Proc_6_17_EAAE40(var_79C, var_784)
  loc_1C39B70:   Set var_7E0 = Me.Txt
  loc_1C39B76:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3C), var_7E4)
  loc_1C39B85:   Proc_6_17_EAAE40(var_7F4, CVar(var_7E4))
  loc_1C39B95:   Set var_838 = Me.Txt
  loc_1C39B9B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_83C)
  loc_1C39BA3:   var_834 = CVar(var_83C) 'Address
  loc_1C39BAA:   Proc_6_17_EAAE40(var_84C, var_834)
  loc_1C39BBA:   Set var_890 = Me.Txt
  loc_1C39BC0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_894)
  loc_1C39BCF:   Proc_6_17_EAAE40(var_8A4, CVar(var_894))
  loc_1C39BDF:   Set var_8E8 = Me.Txt
  loc_1C39BE5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_8EC)
  loc_1C39BF4:   Proc_6_17_EAAE40(var_8FC, CVar(var_8EC))
  loc_1C39C04:   Set var_940 = Me.Txt
  loc_1C39C0A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_944)
  loc_1C39C19:   Proc_6_17_EAAE40(var_954, CVar(var_944))
  loc_1C39C29:   Set var_998 = Me.Txt
  loc_1C39C2F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3D), var_99C)
  loc_1C39C3E:   Proc_6_17_EAAE40(var_9AC, CVar(var_99C))
  loc_1C39C4E:   Set var_9F0 = Me.Txt
  loc_1C39C54:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3B), var_9F4)
  loc_1C39C5C:   var_9EC = CVar(var_9F4) 'Address
  loc_1C39C63:   Proc_6_17_EAAE40(var_A04, var_9EC)
  loc_1C39C73:   Set var_A48 = Me.Txt
  loc_1C39C79:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_A4C)
  loc_1C39C88:   Proc_6_17_EAAE40(var_A5C, CVar(var_A4C))
  loc_1C39C98:   Set var_AA0 = Me.Txt
  loc_1C39C9E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_AA4)
  loc_1C39CAD:   Proc_6_17_EAAE40(var_AB4, CVar(var_AA4))
  loc_1C39CBD:   Set var_AF8 = Me.Txt
  loc_1C39CC3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_AFC)
  loc_1C39CD2:   Proc_6_17_EAAE40(var_B0C, CVar(var_AFC))
  loc_1C39CE2:   Set var_B50 = Me.Txt
  loc_1C39CE8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3F), var_B54)
  loc_1C39CF7:   Proc_6_17_EAAE40(var_B64, CVar(var_B54))
  loc_1C39D07:   Set var_BA8 = Me.Txt
  loc_1C39D0D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3E), var_BAC)
  loc_1C39D15:   var_BA4 = CVar(var_BAC) 'Address
  loc_1C39D1C:   Proc_6_17_EAAE40(var_BBC, var_BA4)
  loc_1C39D2C:   Set var_C00 = Me.Txt
  loc_1C39D32:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_C04)
  loc_1C39D41:   Proc_6_17_EAAE40(var_C14, CVar(var_C04))
  loc_1C39D51:   Set var_C58 = Me.Txt
  loc_1C39D57:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_C5C)
  loc_1C39D66:   Proc_6_17_EAAE40(var_C6C, CVar(var_C5C))
  loc_1C39D76:   Set var_CB0 = Me.Txt
  loc_1C39D7C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_CB4)
  loc_1C39D8B:   Proc_6_17_EAAE40(var_CC4, CVar(var_CB4))
  loc_1C39D9B:   Set var_D08 = Me.Txt
  loc_1C39DA1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_D0C)
  loc_1C39DC0:   Set var_D50 = Me.Txt
  loc_1C39DC6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_D54)
  loc_1C39DE5:   Set var_D98 = Me.Txt
  loc_1C39DEB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_D9C)
  loc_1C39E0A:   Set var_DE0 = Me.Txt
  loc_1C39E10:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H42), var_DE4)
  loc_1C39E1F:   Proc_6_17_EAAE40(var_E34, CVar(var_DE4))
  loc_1C39E2F:   Set var_E38 = Me.Txt
  loc_1C39E35:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H41), var_E3C)
  loc_1C39E44:   Proc_6_17_EAAE40(var_E8C, CVar(var_E3C))
  loc_1C39E54:   Set var_E90 = Me.Txt
  loc_1C39E5A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_E94)
  loc_1C39E69:   Proc_6_17_EAAE40(var_EE4, CVar(var_E94))
  loc_1C39E7C:   Proc_6_7_F26918(var_FB4, Date)
  loc_1C39E8C:   Set var_FB8 = Me.Txt
  loc_1C39E92:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H43), var_FBC)
  loc_1C39EB4:   Set var_1010 = Me.Txt
  loc_1C39EBA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H44), var_1014)
  loc_1C39EFC:   Set var_10E8 = Me.Txt
  loc_1C39F02:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H45), var_10EC)
  loc_1C39F21:   Set var_1140 = Me.Txt
  loc_1C39F27:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H46), var_1144)
  loc_1C39F48:   var_126 = Me.GuestImage.Visible
  loc_1C39F88:   Proc_6_17_EAAE40(var_11D4, IIf((var_126 = &HFF), CVar(Me.GuestImage.Tag), vbNullString))
  loc_1C39F9A:   var_15E = Me.IdProofImage.Visible
  loc_1C39FDA:   Proc_6_17_EAAE40(var_126C, IIf((var_15E = &HFF), CVar(Me.IdProofImage.Tag), vbNullString))
  loc_1C3A02C:   Proc_6_17_EAAE40(var_1304, IIf((Me.GuestSign.Visible = &HFF), CVar(Me.GuestSign.Tag), vbNullString))
  loc_1C3A03C:   Set var_13A4 = Me.Txt
  loc_1C3A042:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4A), var_13A8)
  loc_1C3A051:   Proc_6_17_EAAE40(var_1370, CVar(var_13A8))
  loc_1C3A061:   Set var_13FC = Me.Txt
  loc_1C3A067:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4C), var_1400)
  loc_1C3A076:   Proc_6_17_EAAE40(var_13C8, CVar(var_1400))
  loc_1C3A086:   Set var_1494 = Me.Txt
  loc_1C3A08C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4B), var_1498)
  loc_1C3A09B:   Proc_6_17_EAAE40(var_1420, CVar(var_1498))
  loc_1C3A0AD:   var_C4 = "Update GuestProf Set Name="
  loc_1C3A0B9:   var_E4 = ",Add1="
  loc_1C3A0BE:   var_15C = var_C4 & var_118 & var_E4 
  loc_1C3A0C9:   var_108 = ",Add2="
  loc_1C3A0D9:   var_13C = ",City="
  loc_1C3A0E5:   var_26C = var_15C & var_180 & var_108 & var_1FC & var_13C & var_24C 
  loc_1C3A0FE:   var_310 = var_26C & ",Type=" & var_2D0 & ",PhoneNo=" 
  loc_1C3A135:   var_444 = var_310 & var_330 & ",FaxNo=" & var_390 & ",MobileNo=" & var_3EC & ",EmailId=" & var_434 
  loc_1C3A14E:   var_49C = var_444 & ",Nationality=" & var_47C & ",Age=" 
  loc_1C3A169:   var_4FC = var_49C & CVar(var_57C.Tag) & ",BirthDate=" & var_4EC 
  loc_1C3A182:   var_554 = var_4FC & ",Anniversary=" & var_534 & ",GuestStatus=" 
  loc_1C3A1B9:   var_6A4 = var_554 & var_58C & ",SplInstr=" & var_5E4 & ",Comments1=" & var_63C & ",Comments2=" & var_694 
  loc_1C3A1D2:   var_70C = var_6A4 & ",Comments3=" & var_6EC & ",ConName=" 
  loc_1C3A222:   var_8C4 = var_70C & var_744 & ",T1Field1=" & var_79C & ",T1Field7=" & var_7F4 & ",T1Field2=" & var_84C & ",T1Field3=" & var_8A4 & ",T1Field4=" 
  loc_1C3A229:   var_90C = var_8C4 & var_8FC 
  loc_1C3A242:   var_974 = var_90C & ",T1Field5=" & var_954 & ",T1Field6=" 
  loc_1C3A279:   var_AC4 = var_974 & var_9AC & ",T1Field8=" & var_A04 & ",T2Field1=" & var_A5C & ",T2Field2=" & var_AB4 
  loc_1C3A292:   var_B2C = var_AC4 & ",T2Field3=" & var_B0C & ",T2Field4=" 
  loc_1C3A2C9:   var_C7C = var_B2C & var_B64 & ",T2Field5=" & var_BBC & ",T2Field6=" & var_C14 & ",T2Field7=" & var_C6C 
  loc_1C3A2E2:   var_CE4 = var_C7C & ",T2Field8=" & var_CC4 & ",CityName='" 
  loc_1C3A302:   var_DAC = var_CE4 & Trim(CVar(var_D0C)) & "',StateName='" & Trim(CVar(var_D54)) & "',CountryName='" 
  loc_1C3A309:   var_DF4 = var_DAC & Trim(CVar(var_D9C)) 
  loc_1C3A329:   var_EA4 = var_DF4 & "',MaritalStatus=" & var_E34 & ",Gender=" & var_E8C 
  loc_1C3A368:   var_F84 = var_EA4 & ",ZipCode=" & var_EE4 & ",Site_Code='" & CVar(MemVar_1F95070) & "',U_Name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" 
  loc_1C3A392:   var_10A4 = var_F84 & var_FB4 & ",U_AE='E',PanNo='" & CVar(Proc_6_38_E69628(CVar(var_FBC))) & "',DiplomatYN='" & IIf((var_1014.Text = "Yes"), "Yes", "No") 
  loc_1C3A3B8:   var_1154 = var_10A4 & "',IdNo='" & CVar(Proc_6_38_E69628(CVar(var_10EC))) & "',ConPrefix='" & CVar(Proc_6_38_E69628(CVar(var_1144))) 
  loc_1C3A401:   var_13A0 = var_1154 & "',PicPath=" & var_11D4 & ",IdPicPath=" & var_126C & ",SignPicPath=" & var_1304 & ",IdProof=" & var_1370 & ",IdProofNo=" 
  loc_1C3A445:   unk_5A23BF.Execute CStr(var_13A0 & var_13C8 & ",FatherName=" & var_1420 & " Where Code='" & CVar(global_60) & "'"), var_14A8, -1
  loc_1C3A699: End If
  loc_1C3A6A4: Set var_11C = Me.Txt
  loc_1C3A6AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120)
  loc_1C3A6D3: If (Trim(CVar(var_120)) = "Foreign") Then
  loc_1C3A6FB:   For var_154C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8E = var_154C 'Integer
  loc_1C3A73D:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1C3A744:       Set var_11C = Me.TopCtrl1
  loc_1C3A74A:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(CVar(CLng(0)))
  loc_1C3A763:       If (CStr(CVar(CLng(var_8E))) = "Add") Then
  loc_1C3A77D:         Call Proc_24_85_10173DC(MemVar_1F95044, var_1A4, CVar(CLng(&H1E)), CVar(CLng(var_8E)))
  loc_1C3A787:         var_D4 = CVar(CStr(var_1A4)) 'String
  loc_1C3A78F:         Set var_11C = Me.FGrid
  loc_1C3A795:         LateIdCallSt
  loc_1C3A7A3:       End If
  loc_1C3A7A7:       var_C4 = CVar(CLng(var_8E)) 'Long
  loc_1C3A7B8:       Set var_11C = Me.FGrid
  loc_1C3A7BE:       var_D4 = var_11C.TextMatrix)
  loc_1C3A7C9:       var_194 = CStr(var_D4)
  loc_1C3A7D1:       var_1528 = Val(var_194)
  loc_1C3A7E9:       Set var_120 = Me.FGrid
  loc_1C3A802:       var_1AF4 = Val(CStr(var_120.TextMatrix)))
  loc_1C3A820:       var_118 = Me.FGrid.TextMatrix)
  loc_1C3A831:       Proc_6_17_EAAE40(var_15C, CVar(CStr(var_118)), CVar(CLng(&H1D)), CVar(CLng(var_8E)), var_1AF4, CVar(CLng(&H1E)), CVar(CLng(var_8E)), var_1528)
  loc_1C3A851:       var_1CC = Me.FGrid.TextMatrix)
  loc_1C3A862:       Proc_6_17_EAAE40(var_1FC, CVar(CStr(var_1CC)), CVar(CLng(1)), CVar(CLng(var_8E)), CVar(CLng(0)), var_C4)
  loc_1C3A87C:       Set var_19C = Me.FGrid
  loc_1C3A893:       Proc_6_17_EAAE40(var_26C, CVar(CStr(var_19C.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_8E)), var_11C)
  loc_1C3A8AD:       Set var_1A0 = Me.FGrid
  loc_1C3A8C4:       Proc_6_17_EAAE40(var_310, CVar(CStr(var_1A0.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_8E)))
  loc_1C3A8DE:       Set var_1B4 = Me.FGrid
  loc_1C3A8F5:       Proc_6_17_EAAE40(var_370, CVar(CStr(var_1B4.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_8E)))
  loc_1C3A926:       Proc_6_17_EAAE40(var_3EC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_8E)))
  loc_1C3A940:       Set var_2D4 = Me.FGrid
  loc_1C3A957:       Proc_6_17_EAAE40(var_444, CVar(CStr(var_2D4.TextMatrix))), CVar(CLng(7)), CVar(CLng(var_8E)))
  loc_1C3A988:       Proc_6_17_EAAE40(var_49C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(9)), CVar(CLng(var_8E)))
  loc_1C3A9A2:       Set var_2DC = Me.FGrid
  loc_1C3A9B9:       Proc_6_17_EAAE40(var_4FC, CVar(CStr(var_2DC.TextMatrix))), CVar(CLng(&H13)), CVar(CLng(var_8E)))
  loc_1C3A9D3:       Set var_2E0 = Me.FGrid
  loc_1C3A9EA:       Proc_6_7_F26918(var_554, CVar(CStr(var_2E0.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(var_8E)))
  loc_1C3AA1B:       Proc_6_17_EAAE40(var_5CC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_8E)))
  loc_1C3AA4C:       Proc_6_17_EAAE40(var_63C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_8E)))
  loc_1C3AA7D:       Proc_6_17_EAAE40(var_6A4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_8E)))
  loc_1C3AAAE:       Proc_6_7_F26918(var_70C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_8E)))
  loc_1C3AADF:       Proc_6_17_EAAE40(var_784, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(var_8E)))
  loc_1C3AB12:       var_1AFC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C3AB41:       Proc_6_17_EAAE40(var_834, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H12)), CVar(CLng(var_8E)), var_1AFC, CVar(CLng(&H11)))
  loc_1C3AB72:       Proc_6_17_EAAE40(var_8A4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(var_8E)), CVar(CLng(var_8E)))
  loc_1C3ABA3:       Proc_6_17_EAAE40(var_90C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H15)), CVar(CLng(var_8E)))
  loc_1C3ABD4:       Proc_6_17_EAAE40(var_974, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H16)), CVar(CLng(var_8E)))
  loc_1C3AC05:       Proc_6_7_F26918(var_9EC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H17)), CVar(CLng(var_8E)))
  loc_1C3AC36:       Proc_6_17_EAAE40(var_A5C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H18)), CVar(CLng(var_8E)))
  loc_1C3AC67:       Proc_6_7_F26918(var_AC4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H19)), CVar(CLng(var_8E)))
  loc_1C3AC98:       Proc_6_17_EAAE40(var_B2C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_8E)))
  loc_1C3ACC9:       Proc_6_7_F26918(var_BA4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H10)), CVar(CLng(var_8E)))
  loc_1C3ACFA:       Proc_6_17_EAAE40(var_C14, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1C)), CVar(CLng(var_8E)))
  loc_1C3AD2B:       Proc_6_17_EAAE40(var_C7C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H14)), CVar(CLng(var_8E)))
  loc_1C3AD5C:       Proc_6_17_EAAE40(var_CE4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_8E)))
  loc_1C3AD6F:       Proc_6_7_F26918(var_DAC, Date, var_D4)
  loc_1C3AD78:       Set var_628 = Me.TopCtrl1
  loc_1C3AD7E:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(1)
  loc_1C3ADCC:       var_F8 = "Insert Into GuestProfFor (Code,Sno,SerialNo,Nationality,Name,Add1,Add2,Occu,ArrFrom,Dest,PurVisit,ModeTravel,DateArr,ArrPlace,AddIndia,PassNo,IssDate,IssPlace,Age,PropStay,ModeTravelUsed,VisaType,VisaNo,VisaIssDate,VisaIssPlace,ExpDate,WorkPermit,PassExpDate,VisaIssAuth,Extension,VisaDuration,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & global_60
  loc_1C3ADD3:       var_198 = var_F8 & "',"
  loc_1C3ADDF:       var_1AC = var_198 & CStr(var_1528)
  loc_1C3ADF9:       var_170 = CVar(var_1AC & "," & CStr(var_1AF4) & ",") 'String
  loc_1C3AE2F:       var_320 = var_170 & var_15C & "," & var_1FC & "," & var_26C & "," & var_310 
  loc_1C3AE9F:       var_5E4 = var_320 & "," & var_370 & "," & var_3EC & "," & var_444 & "," & var_49C & "," & var_4FC & "," & var_554 & "," & var_5CC 
  loc_1C3AF13:       var_8B4 = var_5E4 & "," & var_63C & "," & var_6A4 & "," & var_70C & "," & var_784 & "," & CVar(var_1AFC) & "," & var_834 & "," & var_8A4 
  loc_1C3AF83:       var_BBC = var_8B4 & "," & var_90C & "," & var_974 & "," & var_9EC & "," & var_A5C & "," & var_AC4 & "," & var_B2C & "," & var_BA4 
  loc_1C3AFE2:       var_D74 = var_BBC & "," & var_C14 & "," & var_C7C & "," & var_CE4 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," 
  loc_1C3B023:       unk_5A23BF.Execute CStr(var_D74 & var_DAC & ",'" & IIf((CStr(var_DF4) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_EA4, -1
  loc_1C3B1C7:     End If
  loc_1C3B1CB:     Set var_11C = Me.TopCtrl1
  loc_1C3B1D1:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_62C)
  loc_1C3B1EA:     If (CStr(var_1520) = "Add") Then
  loc_1C3B201:       var_F8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1C3B224:       Proc_6_7_F26918(var_D4, MemVar_1F950EC, CVar(var_F8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='CFORM' And VP.Date_From<="), var_15C)
  loc_1C3B22C:       var_118 = -1 & var_D4 
  loc_1C3B243:       unk_5A23BF.Execute CStr(var_118 & " Order By VP.Date_From DESC"), var_11C, var_320
  loc_1C3B24E:       Set var_94 = var_11C
  loc_1C3B280:       If (var_94.RecordCount > 0) Then
  loc_1C3B287:         var_C4 = CVar(CLng(var_8E)) 'Long
  loc_1C3B28F:         var_108 = CVar(CLng(&H1E)) 'Long
  loc_1C3B2B1:         var_1528 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C3B2C3:         var_120 = var_94.Fields
  loc_1C3B2DA:         Proc_6_7_F26918(var_118, CVar(var_120.Item("Date_From")), var_1528)
  loc_1C3B30D:         var_1B0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_1528) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1C3B32F:         unk_5A23BF.Execute CStr(CVar(var_1B0 & MemVar_1F95078 & "') and V_Type='CFORM' and Date_From=") & var_118), var_170, -1
  loc_1C3B35F:       End If
  loc_1C3B35F:     End If
  loc_1C3B362:   Next var_154C 'Integer
  loc_1C3B367: End If
  loc_1C3B36D: unk_5A23BF.CommitTrans
  loc_1C3B376: var_86 = CByte(0) 'Byte
  loc_1C3B38B: If (OpenMode = 1) Then
  loc_1C3B3B3:   For var_1B00 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_8E = var_1B00 'Integer
  loc_1C3B3BD:     var_C4 = CVar(CLng(var_8E)) 'Long
  loc_1C3B3C5:     var_108 = CVar(CLng(5)) 'Long
  loc_1C3B405:     If (Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) = CVar(global_60)) Then
  loc_1C3B424:       Set var_11C = Me.Txt
  loc_1C3B42A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120, CVar(CLng(1)), CVar(CLng(var_8E)))
  loc_1C3B442:       var_118 = CVar(CStr(Trim(CVar(var_120)))) 'String
  loc_1C3B450:       LateIdCallSt
  loc_1C3B484:       Set var_11C = Me.Txt
  loc_1C3B48A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120, CVar(CLng(2)), CVar(CLng(var_8E)), Me.FGrid2)
  loc_1C3B4A2:       var_118 = CVar(CStr(Trim(CVar(var_120)))) 'String
  loc_1C3B4B0:       LateIdCallSt
  loc_1C3B4E4:       Set var_11C = Me.Txt
  loc_1C3B4EA:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, CVar(CLng(3)), CVar(CLng(var_8E)), Me.FGrid2)
  loc_1C3B510:       LateIdCallSt
  loc_1C3B544:       Set var_11C = Me.Txt
  loc_1C3B54A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_120, CVar(CLng(4)), CVar(CLng(var_8E)), Me.FGrid2, CVar(CStr(Trim(CVar(var_120)))))
  loc_1C3B562:       var_118 = CVar(CStr(Trim(CVar(var_120)))) 'String
  loc_1C3B56A:       Set var_124 = Me.FGrid2
  loc_1C3B570:       LateIdCallSt
  loc_1C3B588:       Exit For
  loc_1C3B58B:     End If
  loc_1C3B58E:   Next var_1B00 'Integer
  loc_1C3B593:   ' Referenced from: 1C3B588
  loc_1C3B5B1:   If (CLng(var_8E) = CLng(Me.FGrid2.Rows)) Then
  loc_1C3B5F2:     var_180 = (Trim(CVar(Me.lblmProf)) = vbNullString) Or (Trim(CVar(Me.lblmProf)) = CVar(global_60))
  loc_1C3B603:     If CBool(var_180) Then
  loc_1C3B619:       Me.FGrid2.Col = 0
  loc_1C3B634:       Me.FGrid2.Row = 1
  loc_1C3B64C:       Me.FGrid2.CellFontName = "WINGDINGS"
  loc_1C3B666:       Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_1C3B687:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C3B68F:       var_108 = CVar(CLng(0)) 'Long
  loc_1C3B694:       var_1EC = "ü"
  loc_1C3B69E:       Set var_120 = Me.FGrid2
  loc_1C3B6A4:       LateIdCallSt
  loc_1C3B6CF:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C3B6E7:       Set var_11C = Me.Txt
  loc_1C3B6ED:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120, CVar(CLng(1)), CVar(CDbl(&HE)))
  loc_1C3B705:       var_14C = CVar(CStr(Trim(CVar(var_120)))) 'String
  loc_1C3B713:       LateIdCallSt
  loc_1C3B748:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C3B760:       Set var_11C = Me.Txt
  loc_1C3B766:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120, CVar(CLng(2)), CVar(CDbl(&HE)), Me.FGrid2)
  loc_1C3B78C:       LateIdCallSt
  loc_1C3B7C1:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C3B7D9:       Set var_11C = Me.Txt
  loc_1C3B7DF:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, CVar(CLng(3)), CVar(CDbl(&HE)), Me.FGrid2, CVar(CStr(Trim(CVar(var_120)))))
  loc_1C3B805:       LateIdCallSt
  loc_1C3B83A:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C3B852:       Set var_11C = Me.Txt
  loc_1C3B858:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_120, CVar(CLng(4)), CVar(CDbl(&HE)), Me.FGrid2, CVar(CStr(Trim(CVar(var_120)))))
  loc_1C3B870:       var_14C = CVar(CStr(Trim(CVar(var_120)))) 'String
  loc_1C3B878:       Set var_12C = Me.FGrid2
  loc_1C3B87E:       LateIdCallSt
  loc_1C3B8B3:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C3B8BB:       var_108 = CVar(CLng(5)) 'Long
  loc_1C3B8CE:       Set var_120 = Me.FGrid2
  loc_1C3B8D4:       LateIdCallSt
  loc_1C3B8FF:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C3B907:       var_108 = CVar(CLng(6)) 'Long
  loc_1C3B91A:       Set var_120 = Me.FGrid2
  loc_1C3B920:       LateIdCallSt
  loc_1C3B942:       Me.lblmProf.Caption = global_60
  loc_1C3B94D:     Else
  loc_1C3B94D:       var_C4 = vbNullString
  loc_1C3B957:       Set var_11C = Me.FGrid2
  loc_1C3B981:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C3B989:       var_108 = CVar(CLng(0)) 'Long
  loc_1C3B998:       Set var_120 = Me.FGrid2
  loc_1C3B99E:       LateIdCallSt
  loc_1C3B9C9:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C3B9E1:       Set var_11C = Me.Txt
  loc_1C3B9E7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120, CVar(CLng(1)), var_C4, var_120, vbNullString, CVar(CLng(1)))
  loc_1C3BA0D:       LateIdCallSt
  loc_1C3BA42:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C3BA5A:       Set var_11C = Me.Txt
  loc_1C3BA60:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120, CVar(CLng(2)), var_C4, Me.FGrid2, CVar(CStr(Trim(CVar(var_120)))), var_C4)
  loc_1C3BA86:       LateIdCallSt
  loc_1C3BABB:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C3BAD3:       Set var_11C = Me.Txt
  loc_1C3BAD9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, CVar(CLng(3)), var_C4, Me.FGrid2, CVar(CStr(Trim(CVar(var_120)))))
  loc_1C3BAFF:       LateIdCallSt
  loc_1C3BB34:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C3BB4C:       Set var_11C = Me.Txt
  loc_1C3BB52:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_120, CVar(CLng(4)), var_C4, Me.FGrid2, CVar(CStr(Trim(CVar(var_120)))))
  loc_1C3BB6A:       var_14C = CVar(CStr(Trim(CVar(var_120)))) 'String
  loc_1C3BB72:       Set var_12C = Me.FGrid2
  loc_1C3BB78:       LateIdCallSt
  loc_1C3BBAD:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C3BBB5:       var_108 = CVar(CLng(5)) 'Long
  loc_1C3BBC8:       Set var_120 = Me.FGrid2
  loc_1C3BBCE:       LateIdCallSt
  loc_1C3BBE4:       Set var_11C = Me.FGrid2
  loc_1C3BBF9:       var_C4 = CVar((CLng(var_11C.Rows) - 1)) 'Long
  loc_1C3BC01:       var_108 = CVar(CLng(6)) 'Long
  loc_1C3BC1B:       var_F4 = CVar(Me.lblmProf.Caption) 'String
  loc_1C3BC23:       Set var_124 = Me.FGrid2
  loc_1C3BC29:       LateIdCallSt
  loc_1C3BC41:     End If
  loc_1C3BC41:   End If
  loc_1C3BC46:   global_180 = &HFF
  loc_1C3BC49: End If
  loc_1C3BC55: If (global_164 = 1) Then
  loc_1C3BC58: End If
  loc_1C3BC63: Me.Requery -1
  loc_1C3BC90: Me.Find "SearchCode='" & global_60 & "'", 0, 1
  loc_1C3BCAF: If (GuestFolio <> vbNullString) Then
  loc_1C3BCBF:   var_C4 = "Select * from GuestFolio Where Docid="
  loc_1C3BCD5:   Proc_6_17_EAAE40(var_F4, CVar(GuestFolio), var_C4, var_14C, -1, var_11C, var_C4, global_180)
  loc_1C3BCEB:   unk_5A23BF.Execute CStr(var_124 & var_F4), var_F4, var_108
  loc_1C3BD1E:   If (var_11C.RecordCount > 0) Then
  loc_1C3BD5C:     Set var_120 = Me.Txt
  loc_1C3BD62:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_124, "Update GuestFolio Set GuestProf='" & Me.lblmProf.Caption & "',Name='", var_180, -1, var_2E0)
  loc_1C3BD71:     var_F4 = Trim(CVar(var_124))
  loc_1C3BD89:     var_1BC = global_60 & Proc_6_38_E69628(var_F4, var_C4, var_120) & "',city='"
  loc_1C3BD9A:     Set var_12C = Me.Txt
  loc_1C3BDA0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_19C, var_1B0)
  loc_1C3BDA8:     var_1BC = var_19C.Tag
  loc_1C3BDD1:     Set var_1A0 = Me.Txt
  loc_1C3BDD7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B4)
  loc_1C3BE01:     Set var_1B8 = Me.Txt
  loc_1C3BE07:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2D4)
  loc_1C3BE1C:     var_1548 = var_C4 & Proc_6_38_E69628(CVar(var_1B0), var_108) & "',Add1='" & Proc_6_38_E69628(CVar(var_1B4)) & "',add2='" & Proc_6_38_E69628(CVar(var_2D4))
  loc_1C3BE34:     Set var_2D8 = Me.Txt
  loc_1C3BE3A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_2DC)
  loc_1C3BE7C:     unk_5A23BF.Execute var_1548 & "',Nationality='" & Proc_6_38_E69628(CVar(var_2DC.Tag)) & "' where Docid='" & GuestFolio & "'", , 
  loc_1C3BF01:     var_118 = CVar("Update RoomOcc  Set GuestProf='" & Me.lblmProf.Caption & "',U_EntDt=") 'String
  loc_1C3BF09:     var_D4 = CVar(Proc_6_15_EF37AC(var_118, var_1CC)) 'String
  loc_1C3BF0F:     Proc_6_7_F26918(var_F4, var_D4)
  loc_1C3BF17:     var_14C = -1 & var_F4 
  loc_1C3BF49:     unk_5A23BF.Execute CStr(CVar(var_1B4) & ",U_AE='E' where Docid='" & CVar(GuestFolio) & "'"), var_120, 
  loc_1C3BFBF:     unk_5A23BF.Execute "Update PayCharge  Set GuestProf='" & Me.lblmProf.Caption & "' where FolioNoDocid='" & GuestFolio & "'", var_D4, -1
  loc_1C3BFDD:   End If
  loc_1C3BFDD: End If
  loc_1C3BFE2: Set var_8C = Nothing
  loc_1C3BFEA: Set var_94 = Nothing
  loc_1C3BFF1: Set var_11C = Me.TopCtrl1
  loc_1C3BFF7: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_120)
  loc_1C3C010: If (CStr() = "Add") Then
  loc_1C3C013:   Call TopCtrl1_UnknownEvent_A()
  loc_1C3C018:   Exit Sub
  loc_1C3C019: End If
  loc_1C3C02E: var_F8 = "INI"
  loc_1C3C03C: Call Proc_24_89_1020320(Proc_5_1_100EC1C(var_F8, Me))
  loc_1C3C047: Call MoveRec()
  loc_1C3C051: Set var_AC = Nothing
  loc_1C3C054: Exit Sub
  loc_1C3C055: ' Referenced from: 1C366E8
  loc_1C3C05E: If (CInt(var_86) = 1) Then
  loc_1C3C067:   unk_5A23BF.RollbackTrans
  loc_1C3C06C: End If
  loc_1C3C074: Set var_11C = Err()
  loc_1C3C07A: Call 0.Method_arg_2C (var_F8)
  loc_1C3C093: MsgBox(CVar(var_F8), &H10, var_F4, var_118, CVar(var_1B4))
  loc_1C3C0A6: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF827C
  'Data Table: 5A238C
  loc_EF81BC: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_EF81BF:   Call DGCity_UnknownEvent_9()
  loc_EF81C4: End If
  loc_EF81E0: If (CBool(Me.DGCountry.Visible) = &HFF) Then
  loc_EF81E3:   Call DGCountry_UnknownEvent_9()
  loc_EF81E8: End If
  loc_EF8204: If (CBool(Me.DGNationality.Visible) = &HFF) Then
  loc_EF8207:   Call DGNationality_UnknownEvent_9()
  loc_EF820C: End If
  loc_EF8228: If (CBool(Me.DGGuestStatus.Visible) = &HFF) Then
  loc_EF822B:   Call DGGuestStatus_UnknownEvent_9()
  loc_EF8230: End If
  loc_EF824C: If (CBool(Me.DGState.Visible) = &HFF) Then
  loc_EF824F:   Call DGState_UnknownEvent_9()
  loc_EF8254: End If
  loc_EF8270: If (CBool(Me.DGZipCode.Visible) = &HFF) Then
  loc_EF8273:   Call DGZipCode_UnknownEvent_9()
  loc_EF8278: End If
  loc_EF8278: Exit Sub
End Sub

Private Sub Command1_Click() '10FA3C8
  'Data Table: 5A238C
  Dim var_8C As Recordset15
  Dim var_D8 As Variant
  Dim var_1E0 As Variant
  Dim var_248 As Variant
  Dim var_350 As Variant
  Dim unk_5A23BF As Connection15
  loc_10FA13C: Set var_8C = New 
  loc_10FA15F: Me.Recordset15.Open "Select docid, guestprof from guestfolio where docid not in (select docid from GuestFolioProfDetail)", CVar(MemVar_1F95044), 3
  loc_10FA164: ' Referenced from: 10FA3C1
  loc_10FA173: If Not(var_8C.EOF) Then
  loc_10FA1B2:   var_D8 = "Insert Into GuestFolioProfDetail (Docid,GuestProf,mProf,U_AE,U_EntDt,U_Name,Site_Code,LogSite_Code) values ('" & var_8C.Fields.Item("DocID").Value 
  loc_10FA257:   var_1E0 = var_D8 & "','" & var_8C.Fields.Item("GuestProf").Value & "','" & var_8C.Fields.Item("GuestProf").Value & "','" & var_8C.Fields.Item("U_AE").Value 
  loc_10FA28A:   Proc_6_7_F26918(var_238, CVar(var_8C.Fields.Item("U_EntDt")), var_1E0 & "',", var_394)
  loc_10FA292:   var_248 = -1 & var_238 
  loc_10FA337:   var_350 = var_248 & ",'" & var_8C.Fields.Item("U_Name").Value & "','" & var_8C.Fields.Item("Site_Code").Value & "','" & var_8C.Fields.Item("LogSite_Code").Value 
  loc_10FA34E:   unk_5A23BF.Execute CStr(var_350 & "')"), var_398, 3
  loc_10FA359:   Set var_88 = var_398
  loc_10FA3BC:   var_8C.MoveNext
  loc_10FA3C1:   GoTo loc_10FA164
  loc_10FA3C4: End If
  loc_10FA3C4: Exit Sub
End Sub

Public Sub TXT_FOLIONO_UnknownEvent_B(Index As Integer) 'E575C8
  'Data Table: 5A238C
  loc_E57592: If (CLng(Index) = &H2E) Then
  loc_E575A5:   Me.TXT_FOLIONO.defText = vbNullString
  loc_E575BD:   Me.TXT_FOLIONO.BoundText = vbNullString
  loc_E575C5: End If
  loc_E575C5: Exit Sub
End Sub

Public Sub TXT_GNAME_UnknownEvent_B(Index As Integer) 'E56504
  'Data Table: 5A238C
  loc_E564CE: If (CLng(Index) = &H2E) Then
  loc_E564E1:   Me.TXT_GNAME.defText = vbNullString
  loc_E564F9:   Me.TXT_GNAME.BoundText = vbNullString
  loc_E56501: End If
  loc_E56501: Exit Sub
End Sub

Public Sub TXT_STATE_UnknownEvent_B(Index As Integer) 'E56918
  'Data Table: 5A238C
  loc_E568E2: If (CLng(Index) = &H2E) Then
  loc_E568F5:   Me.TXT_STATE.defText = vbNullString
  loc_E5690D:   Me.TXT_STATE.BoundText = vbNullString
  loc_E56915: End If
  loc_E56915: Exit Sub
End Sub

Public Function MasterFormExitGet() '5A5370
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '5A537F
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E94060
  'Data Table: 5A238C
  Dim Me As Recordset15
  loc_E93FEE: On Error Goto loc_E94057
  loc_E93FF7: Me.MoveFirst
  loc_E94021: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94049: Proc_5_0_1107AD0(&HFF, Me, global_88)
  loc_E94051: Call MoveRec()
  loc_E94056: Exit Sub
  loc_E94057: ' Referenced from: E93FEE
  loc_E94057: Proc_6_60_E63754(0)
  loc_E9405C: Exit Sub
  loc_E9405D: CExtInstUnk
End Sub

Public Sub MoveRec() '17F4720
  'Data Table: 5A238C
  Dim Me As Recordset15
  Dim var_CC As String
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_5A23BF As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_124 As Variant
  Dim var_13C As String
  Dim var_110 As Variant
  Dim var_12C As String
  Dim var_128 As Variant
  Dim var_1F8 As Variant
  loc_17F2558: On Error Goto loc_17F4718
  loc_17F2572: If (Me.RecordCount > 0) Then
  loc_17F2575:   Call Proc_24_90_FF143C()
  loc_17F2587:   var_CC = "SELECT GuestProf.*,Country.Name As NationalName FROM GuestProf Left Join Country On GuestProf.Nationality=Country.Code WHERE GuestProf.Code='"
  loc_17F25D0:   unk_5A23BF.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_17F25DB:   Set var_88 = var_124
  loc_17F262F:   var_124 = var_88.Fields
  loc_17F2698:   var_18C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_17F26DD:   Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_18C)))
  loc_17F2757:   var_128 = var_88.Fields.Item("U_AE")
  loc_17F275F:   var_DC = CVar(var_128) 'Address
  loc_17F276B:   var_13C = "entdt : "
  loc_17F27B8:   var_18C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(var_DC) = "E"), "Last Update : ", var_13C))
  loc_17F27FD:   Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_17F2849:   If (var_88.RecordCount > 0) Then
  loc_17F2885:     Set var_124 = Me.Txt
  loc_17F288B:     Call 0.Method_MoveRec0 (CInt(0), var_128)
  loc_17F2893:     var_128.Tag = CStr(var_88.Fields.Item("Code").Value)
  loc_17F28DA:     global_60 = CStr(var_88.Fields.Item("Code").Value)
  loc_17F2921:     Set var_124 = Me.Txt
  loc_17F2927:     Call 0.Method_MoveRec0 (CInt(&H46), var_128)
  loc_17F292F:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPrefix")))
  loc_17F297C:     Set var_124 = Me.Txt
  loc_17F2982:     Call 0.Method_MoveRec0 (CInt(0), var_128)
  loc_17F298A:     var_128.Text = CStr(var_88.Fields.Item("Name").Value)
  loc_17F29D6:     Set var_124 = Me.Txt
  loc_17F29DC:     Call 0.Method_MoveRec0 (CInt(&H4B), var_128)
  loc_17F29E4:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("FatherName")))
  loc_17F2A2E:     Set var_124 = Me.Txt
  loc_17F2A34:     Call 0.Method_MoveRec0 (CInt(1), var_128)
  loc_17F2A3C:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")))
  loc_17F2A86:     Set var_124 = Me.Txt
  loc_17F2A8C:     Call 0.Method_MoveRec0 (CInt(2), var_128)
  loc_17F2A94:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2")))
  loc_17F2ADE:     Set var_124 = Me.Txt
  loc_17F2AE4:     Call 0.Method_MoveRec0 (CInt(3), var_128)
  loc_17F2AEC:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Type")))
  loc_17F2B36:     Set var_124 = Me.Txt
  loc_17F2B3C:     Call 0.Method_MoveRec0 (CInt(&HA), var_128)
  loc_17F2B44:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("PhoneNo")))
  loc_17F2B8E:     Set var_124 = Me.Txt
  loc_17F2B94:     Call 0.Method_MoveRec0 (CInt(&H43), var_128)
  loc_17F2B9C:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("PanNo")))
  loc_17F2BE6:     Set var_124 = Me.Txt
  loc_17F2BEC:     Call 0.Method_MoveRec0 (CInt(&HC), var_128)
  loc_17F2BF4:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("FaxNo")))
  loc_17F2C3E:     Set var_124 = Me.Txt
  loc_17F2C44:     Call 0.Method_MoveRec0 (CInt(&HB), var_128)
  loc_17F2C4C:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MobileNo")))
  loc_17F2C96:     Set var_124 = Me.Txt
  loc_17F2C9C:     Call 0.Method_MoveRec0 (CInt(&HD), var_128)
  loc_17F2CA4:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("EmailId")))
  loc_17F2CEE:     Set var_124 = Me.Txt
  loc_17F2CF4:     Call 0.Method_MoveRec0 (CInt(&H11), var_128)
  loc_17F2CFC:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("NationalName")))
  loc_17F2D46:     Set var_124 = Me.Txt
  loc_17F2D4C:     Call 0.Method_MoveRec0 (CInt(&H11), var_128)
  loc_17F2D54:     var_128.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("Nationality")))
  loc_17F2D87:     var_BC = CVar(var_88.Fields.Item("Age")) 'Address
  loc_17F2D8E:     Proc_6_39_E7D3A0(var_DC)
  loc_17F2DA5:     Set var_124 = Me.Txt
  loc_17F2DAB:     Call 0.Method_MoveRec0 (CInt(&H49), var_128)
  loc_17F2DB3:     var_128.Text = CStr(var_DC)
  loc_17F2E01:     Set var_124 = Me.Txt
  loc_17F2E07:     Call 0.Method_MoveRec0 (CInt(&H42), var_128)
  loc_17F2E0F:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MaritalStatus")))
  loc_17F2E59:     Set var_124 = Me.Txt
  loc_17F2E5F:     Call 0.Method_MoveRec0 (CInt(&H41), var_128)
  loc_17F2E67:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Gender")))
  loc_17F2ECD:     Set var_124 = Me.Txt
  loc_17F2ED3:     Call 0.Method_MoveRec0 (CInt(4), var_128, CStr(Format(CVar(var_88.Fields.Item("BirthDate")), "dd/MMM/yyyy")))
  loc_17F2EDB:     var_128.Text = 1
  loc_17F2F2B:     Set var_124 = Me.Txt
  loc_17F2F31:     Call 0.Method_MoveRec0 (CInt(5), var_128)
  loc_17F2F39:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Anniversary")), 1)
  loc_17F2F83:     Set var_124 = Me.Txt
  loc_17F2F89:     Call 0.Method_MoveRec0 (CInt(8), var_128)
  loc_17F2F91:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("SplInstr")))
  loc_17F2FDB:     Set var_124 = Me.Txt
  loc_17F2FE1:     Call 0.Method_MoveRec0 (CInt(&H16), var_128)
  loc_17F2FE9:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments1")))
  loc_17F3033:     Set var_124 = Me.Txt
  loc_17F3039:     Call 0.Method_MoveRec0 (CInt(&H15), var_128)
  loc_17F3041:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments2")))
  loc_17F308B:     Set var_124 = Me.Txt
  loc_17F3091:     Call 0.Method_MoveRec0 (CInt(&H10), var_128)
  loc_17F3099:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments3")))
  loc_17F30E3:     Set var_124 = Me.Txt
  loc_17F30E9:     Call 0.Method_MoveRec0 (CInt(&H1E), var_128)
  loc_17F30F1:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConName")))
  loc_17F313B:     Set var_124 = Me.Txt
  loc_17F3141:     Call 0.Method_MoveRec0 (CInt(&H1D), var_128)
  loc_17F3149:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T2Field1")))
  loc_17F3193:     Set var_124 = Me.Txt
  loc_17F3199:     Call 0.Method_MoveRec0 (CInt(&H1B), var_128)
  loc_17F31A1:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T2Field2")))
  loc_17F31EB:     Set var_124 = Me.Txt
  loc_17F31F1:     Call 0.Method_MoveRec0 (CInt(&H1A), var_128)
  loc_17F31F9:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T2Field3")))
  loc_17F3243:     Set var_124 = Me.Txt
  loc_17F3249:     Call 0.Method_MoveRec0 (CInt(&H3F), var_128)
  loc_17F3251:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T2Field4")))
  loc_17F329B:     Set var_124 = Me.Txt
  loc_17F32A1:     Call 0.Method_MoveRec0 (CInt(&H3E), var_128)
  loc_17F32A9:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T2Field5")))
  loc_17F32F3:     Set var_124 = Me.Txt
  loc_17F32F9:     Call 0.Method_MoveRec0 (CInt(&H1C), var_128)
  loc_17F3301:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T2Field6")))
  loc_17F334B:     Set var_124 = Me.Txt
  loc_17F3351:     Call 0.Method_MoveRec0 (CInt(&H18), var_128)
  loc_17F3359:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T2Field7")))
  loc_17F33A3:     Set var_124 = Me.Txt
  loc_17F33A9:     Call 0.Method_MoveRec0 (CInt(&H19), var_128)
  loc_17F33B1:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T2Field8")))
  loc_17F33FB:     Set var_124 = Me.Txt
  loc_17F3401:     Call 0.Method_MoveRec0 (CInt(&H23), var_128)
  loc_17F3409:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T1Field1")))
  loc_17F3453:     Set var_124 = Me.Txt
  loc_17F3459:     Call 0.Method_MoveRec0 (CInt(&H22), var_128)
  loc_17F3461:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T1Field2")))
  loc_17F34AB:     Set var_124 = Me.Txt
  loc_17F34B1:     Call 0.Method_MoveRec0 (CInt(&H21), var_128)
  loc_17F34B9:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T1Field3")))
  loc_17F3503:     Set var_124 = Me.Txt
  loc_17F3509:     Call 0.Method_MoveRec0 (CInt(&H20), var_128)
  loc_17F3511:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T1Field4")))
  loc_17F355B:     Set var_124 = Me.Txt
  loc_17F3561:     Call 0.Method_MoveRec0 (CInt(&H1F), var_128)
  loc_17F3569:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T1Field5")))
  loc_17F35B3:     Set var_124 = Me.Txt
  loc_17F35B9:     Call 0.Method_MoveRec0 (CInt(&H3D), var_128)
  loc_17F35C1:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T1Field6")))
  loc_17F360B:     Set var_124 = Me.Txt
  loc_17F3611:     Call 0.Method_MoveRec0 (CInt(&H3C), var_128)
  loc_17F3619:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T1Field7")))
  loc_17F3663:     Set var_124 = Me.Txt
  loc_17F3669:     Call 0.Method_MoveRec0 (CInt(&H3B), var_128)
  loc_17F3671:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("T1Field8")))
  loc_17F36BB:     Set var_124 = Me.Txt
  loc_17F36C1:     Call 0.Method_MoveRec0 (CInt(6), var_128)
  loc_17F36C9:     var_128.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("City")))
  loc_17F3713:     Set var_124 = Me.Txt
  loc_17F3719:     Call 0.Method_MoveRec0 (CInt(7), var_128)
  loc_17F3721:     var_128.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("GuestStatus")))
  loc_17F376B:     Set var_124 = Me.Txt
  loc_17F3771:     Call 0.Method_MoveRec0 (CInt(&H14), var_128)
  loc_17F3779:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Zipcode")))
  loc_17F37C3:     Set var_124 = Me.Txt
  loc_17F37C9:     Call 0.Method_MoveRec0 (CInt(&H44), var_128)
  loc_17F37D1:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DiplomatYN")))
  loc_17F381B:     Set var_124 = Me.Txt
  loc_17F3821:     Call 0.Method_MoveRec0 (CInt(&H45), var_128)
  loc_17F3829:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("IdNo")))
  loc_17F3873:     Set var_124 = Me.Txt
  loc_17F3879:     Call 0.Method_MoveRec0 (CInt(&H4A), var_128)
  loc_17F3881:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("IdProof")))
  loc_17F38CB:     Set var_124 = Me.Txt
  loc_17F38D1:     Call 0.Method_MoveRec0 (CInt(&H4C), var_128)
  loc_17F38D9:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("IdProofNo")))
  loc_17F393F:     var_FC = "SELECT GuestImage,IdImage,SignImage FROM ProfileImages WHERE ProfileCode='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_17F394A:     Me.Recordset15.Open var_FC, CVar(MemVar_1F95044), 2
  loc_17F39AB:     If ((Me.Recordset15.RecordCount > 0) And (IsNull(CVar(Me.Recordset15.Fields.Item("GuestImage"))) = 0)) Then
  loc_17F39C4:       Set var_AC = var_1E8 
  loc_17F39D4:       Proc_142_1_F342F8(Me.GuestImage, var_AC, "GuestImage")
  loc_17F39DF:       Set var_1E8 = var_AC
  loc_17F39F1:     Else
  loc_17F3A00:       var_98 = var_88.Fields
  loc_17F3A19:       var_110 = IsNull(CVar(var_98.Item("PicPath")))
  loc_17F3A20:       var_CC = "PicPath"
  loc_17F3A4B:       var_EC = vbNullString
  loc_17F3A6D:       If CBool(var_110 Or (Trim(CVar(var_88.Fields.Item(var_CC))) = var_EC)) Then
  loc_17F3A8E:         Me.Global.LoadPicture var_A8, var_CC, var_EC, var_110, var_13C
  loc_17F3AA3:         Me.GuestImage.Picture = var_98
  loc_17F3ABC:         Me.GuestImage.Tag = vbNullString
  loc_17F3AC7:       Else
  loc_17F3AF5:         var_EC = "PicPath"
  loc_17F3B3B:         var_CC = "DAT"
  loc_17F3B63:         var_110 = "AVI"
  loc_17F3B6D:         var_1F8 = (Ucase(Right(Trim(CVar(var_88.Fields.Item("PicPath"))), 3)) = var_CC) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_EC))), 3)) = var_110)
  loc_17F3B8D:         If CBool(var_1F8) Then
  loc_17F3B9C:           Me.GuestImage.Visible = False
  loc_17F3BA7:         Else
  loc_17F3BDF:           Me.GuestImage.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_17F3BFC:           var_A8 = "PicPath"
  loc_17F3C08:           var_98 = var_88.Fields
  loc_17F3C10:           var_AC = var_98.Item(var_A8)
  loc_17F3C2A:           Call 0.Method_MoveRec4 (CStr(var_AC.Value), var_1FA, var_98)
  loc_17F3C3F:           If var_1FA Then
  loc_17F3C5C:             Set var_98 = Me.GuestImage
  loc_17F3C74:             Me.Global.LoadPicture CVar(Me.GuestImage.Tag), var_A8, var_CC, var_EC, var_110
  loc_17F3C89:             Me.GuestImage.Picture = var_AC
  loc_17F3C9E:             Set var_98 = Me.GuestImage
  loc_17F3CA4:             var_98.Refresh
  loc_17F3CAF:           Else
  loc_17F3CCD:             Me.Global.LoadPicture var_A8, var_CC, var_EC, var_110, var_13C
  loc_17F3CE2:             Me.GuestImage.Picture = var_98
  loc_17F3CEE:           End If
  loc_17F3CEE:         End If
  loc_17F3CEE:       End If
  loc_17F3CEE:     End If
  loc_17F3D3A:     If ((Me.Recordset15.RecordCount > 0) And (IsNull(CVar(Me.Recordset15.Fields.Item("IdImage"))) = 0)) Then
  loc_17F3D53:       Set var_AC = var_1E8 
  loc_17F3D63:       Proc_142_1_F342F8(Me.IdProofImage, var_AC, "IdImage", Me.IdProofImage)
  loc_17F3D6E:       Set var_1E8 = var_AC
  loc_17F3D80:     Else
  loc_17F3D8F:       var_98 = var_88.Fields
  loc_17F3DA8:       var_110 = IsNull(CVar(var_98.Item("IdPicPath")))
  loc_17F3DAF:       var_CC = "IdPicPath"
  loc_17F3DDA:       var_EC = vbNullString
  loc_17F3DFC:       If CBool(var_110 Or (Trim(CVar(var_88.Fields.Item(var_CC))) = var_EC)) Then
  loc_17F3E1D:         Me.Global.LoadPicture var_A8, var_CC, var_EC, var_110, var_13C
  loc_17F3E32:         Me.IdProofImage.Picture = var_98
  loc_17F3E4B:         Me.IdProofImage.Tag = vbNullString
  loc_17F3E56:       Else
  loc_17F3E84:         var_EC = "IdPicPath"
  loc_17F3ECA:         var_CC = "DAT"
  loc_17F3EF2:         var_110 = "AVI"
  loc_17F3EFC:         var_1F8 = (Ucase(Right(Trim(CVar(var_88.Fields.Item("IdPicPath"))), 3)) = var_CC) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_EC))), 3)) = var_110)
  loc_17F3F1C:         If CBool(var_1F8) Then
  loc_17F3F2B:           Me.IdProofImage.Visible = False
  loc_17F3F36:         Else
  loc_17F3F6E:           Me.IdProofImage.Tag = CStr(var_88.Fields.Item("IdPicPath").Value)
  loc_17F3F8B:           var_A8 = "IdPicPath"
  loc_17F3F97:           var_98 = var_88.Fields
  loc_17F3F9F:           var_AC = var_98.Item(var_A8)
  loc_17F3FB9:           Call 0.Method_MoveRec4 (CStr(var_AC.Value), var_1FA, var_98, var_AC)
  loc_17F3FCE:           If var_1FA Then
  loc_17F3FEB:             Set var_98 = Me.IdProofImage
  loc_17F4003:             Me.Global.LoadPicture CVar(Me.IdProofImage.Tag), var_A8, var_CC, var_EC, var_110
  loc_17F4018:             Me.IdProofImage.Picture = var_AC
  loc_17F402D:             Set var_98 = Me.IdProofImage
  loc_17F4033:             var_98.Refresh
  loc_17F403E:           Else
  loc_17F405C:             Me.Global.LoadPicture var_A8, var_CC, var_EC, var_110, var_13C
  loc_17F4071:             Me.IdProofImage.Picture = var_98
  loc_17F407D:           End If
  loc_17F407D:         End If
  loc_17F407D:       End If
  loc_17F407D:     End If
  loc_17F40C9:     If ((Me.Recordset15.RecordCount > 0) And (IsNull(CVar(Me.Recordset15.Fields.Item("SignImage"))) = 0)) Then
  loc_17F40E2:       Set var_AC = var_1E8 
  loc_17F40F2:       Proc_142_1_F342F8(Me.GuestSign, var_AC, "SignImage", Me.GuestSign)
  loc_17F40FD:       Set var_1E8 = var_AC
  loc_17F410F:     Else
  loc_17F411E:       var_98 = var_88.Fields
  loc_17F4137:       var_110 = IsNull(CVar(var_98.Item("SignPicPath")))
  loc_17F413E:       var_CC = "SignPicPath"
  loc_17F4169:       var_EC = vbNullString
  loc_17F418B:       If CBool(var_110 Or (Trim(CVar(var_88.Fields.Item(var_CC))) = var_EC)) Then
  loc_17F41AC:         Me.Global.LoadPicture var_A8, var_CC, var_EC, var_110, var_13C
  loc_17F41C1:         Me.GuestSign.Picture = var_98
  loc_17F41DA:         Me.GuestSign.Tag = vbNullString
  loc_17F41E5:       Else
  loc_17F4213:         var_EC = "SignPicPath"
  loc_17F4251:         var_120 = Ucase(Right(Trim(CVar(var_88.Fields.Item("SignPicPath"))), 3))
  loc_17F4259:         var_CC = "DAT"
  loc_17F4281:         var_110 = "AVI"
  loc_17F42AB:         If CBool((var_120 = var_CC) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_EC))), 3)) = var_110)) Then
  loc_17F42BA:           Me.GuestSign.Visible = False
  loc_17F42C5:         Else
  loc_17F42FD:           Me.GuestSign.Tag = CStr(var_88.Fields.Item("SignPicPath").Value)
  loc_17F431A:           var_A8 = "SignPicPath"
  loc_17F4326:           var_98 = var_88.Fields
  loc_17F432E:           var_AC = var_98.Item(var_A8)
  loc_17F4348:           Call 0.Method_MoveRec4 (CStr(var_AC.Value), var_1FA, var_98, var_AC)
  loc_17F435D:           If var_1FA Then
  loc_17F437A:             Set var_98 = Me.GuestSign
  loc_17F4392:             Me.Global.LoadPicture CVar(Me.GuestSign.Tag), var_A8, var_CC, var_EC, var_110
  loc_17F43A1:             Set var_128 = Me.GuestSign
  loc_17F43A7:             var_128.Picture = var_AC
  loc_17F43BC:             Set var_98 = Me.GuestSign
  loc_17F43C2:             var_98.Refresh
  loc_17F43CD:           Else
  loc_17F43EB:             Me.Global.LoadPicture var_A8, var_CC, var_EC, var_110, var_13C
  loc_17F43FA:             Set var_124 = Me.GuestSign
  loc_17F4400:             var_124.Picture = var_98
  loc_17F440C:           End If
  loc_17F440C:         End If
  loc_17F440C:       End If
  loc_17F440C:     End If
  loc_17F4412:     Me.Recordset15.Close
  loc_17F441C:     Set var_1E8 = Nothing
  loc_17F441F:   End If
  loc_17F442C:   var_CC = "SELECT City.CityName,CITY.ZIPCODE,Country.Name AS CountryName,State.Name AS StateName FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE CITYCODE='"
  loc_17F4475:   unk_5A23BF.Execute CStr(var_CC & Me.Fields.Item("City").Value & "'"), var_120, -1
  loc_17F4480:   Set var_88 = var_124
  loc_17F44AE:   If (var_88.RecordCount > 0) Then
  loc_17F44C0:     var_98 = var_88.Fields
  loc_17F44C8:     var_AC = var_98.Item("CityName")
  loc_17F44E7:     Set var_124 = Me.Txt
  loc_17F44ED:     Call 0.Method_MoveRec0 (CInt(6), var_128, Proc_6_38_E69628(CVar(var_AC), var_124, var_98, var_AC))
  loc_17F44F5:     var_128.Text = 3
  loc_17F4531:     var_100 = Proc_6_38_E69628(CVar(var_88.Fields.Item("StateName")), -1)
  loc_17F453F:     Set var_124 = Me.Txt
  loc_17F4545:     Call 0.Method_MoveRec0 (CInt(&H12), var_128)
  loc_17F454D:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("StateName")), var_124, var_88.Fields, var_88.Fields.Item("StateName"))
  loc_17F4578:     var_AC = var_88.Fields.Item("CountryName")
  loc_17F4589:     var_100 = Proc_6_38_E69628(CVar(var_AC))
  loc_17F4597:     Set var_124 = Me.Txt
  loc_17F459D:     Call 0.Method_MoveRec0 (CInt(&H13), var_128)
  loc_17F45A5:     var_128.Text = var_100
  loc_17F45B9:   End If
  loc_17F45D7:   Set var_98 = Me.Txt
  loc_17F45DD:   Call 0.Method_MoveRec0 (CInt(7), var_AC, var_100, "SELECT GuestStat.Name AS GuestStatusName FROM GuestStat WHERE Code='")
  loc_17F45EE:   var_12C = -1 & var_100
  loc_17F45FE:   unk_5A23BF.Execute Proc_6_38_E69628(var_CC & Me.Fields.Item("City").Value) & "'", var_124, var_AC.Tag
  loc_17F4609:   Set var_88 = var_124
  loc_17F4635:   If (var_88.RecordCount > 0) Then
  loc_17F464F:     var_AC = var_88.Fields.Item("GuestStatusName")
  loc_17F466E:     Set var_124 = Me.Txt
  loc_17F4674:     Call 0.Method_MoveRec0 (CInt(7), var_128)
  loc_17F467C:     var_128.Text = Proc_6_38_E69628(CVar(var_AC))
  loc_17F4690:   End If
  loc_17F4690:   Call Proc_24_81_13463BC()
  loc_17F4695:   Call Proc_24_84_149ED0C()
  loc_17F46A5:   Set var_98 = Me.Txt
  loc_17F46AB:   Call 0.Method_MoveRec0 (CInt(3))
  loc_17F46D4:   If (Trim(CVar(var_AC)) = "Foreign") Then
  loc_17F46E3:     Me.BtnVisa.Enabled = True
  loc_17F46EE:   Else
  loc_17F46FA:     Me.BtnVisa.Enabled = False
  loc_17F4702:   End If
  loc_17F4705: Else
  loc_17F4705:   Call Proc_24_90_FF143C(var_AC)
  loc_17F470A: End If
  loc_17F470A: Call Proc_24_91_FD9D34()
  loc_17F4714: Set var_88 = Nothing
  loc_17F4717: Exit Sub
  loc_17F4718: ' Referenced from: 17F2558
  loc_17F4718: Proc_6_60_E63754()
  loc_17F471D: Exit Sub
End Sub

Public Property Get Guest() 'E12A8C
  'Data Table: 5A238C
  loc_E12A80: var_88 = global_160
  loc_E12A83: Guest = 
End Sub

Public Property Let Guest(vNewValue) 'E12AD4
  'Data Table: 5A238C
  loc_E12ACC: global_160 = vNewValue
  loc_E12AD0: Exit Sub
End Sub

Public Property Get OpenMode() 'E08550
  'Data Table: 5A238C
  loc_E08549: OpenMode = global_164
End Sub

Public Property Let OpenMode(vNewValue) 'E02B0C
  'Data Table: 5A238C
  loc_E02B06: global_164 = vNewValue
  loc_E02B09: Exit Sub
End Sub

Public Property Get GuestCode() 'E12BAC
  'Data Table: 5A238C
  loc_E12BA0: var_88 = global_172
  loc_E12BA3: GuestCode = 
End Sub

Public Property Let GuestCode(vNewValue) 'E12BF4
  'Data Table: 5A238C
  loc_E12BEC: global_172 = vNewValue
  loc_E12BF0: Exit Sub
End Sub

Public Property Get OpenType() 'E12C3C
  'Data Table: 5A238C
  Dim arg_1400 As Integer
  loc_E12C30: var_88 = global_168
  loc_E12C33: OpenType = 
  loc_E12C3A: arg_1400 = ( >= )
End Sub

Public Property Let OpenType(vNewValue) 'E12C84
  'Data Table: 5A238C
  loc_E12C7C: global_168 = vNewValue
  loc_E12C80: Exit Sub
  loc_E12C81: Set var_8C = 
End Sub

Public Property Get GuestFolio() 'E12CCC
  'Data Table: 5A238C
  loc_E12CC0: var_88 = global_176
  loc_E12CC3: GuestFolio = 
End Sub

Public Property Let GuestFolio(vNewValue) 'E12D14
  'Data Table: 5A238C
  loc_E12D0C: global_176 = vNewValue
  loc_E12D10: Exit Sub
End Sub

Public Sub Proc_24_76_11D6DCC
  'Data Table: 5A238C
  Dim var_8C As TextBox
  loc_11D694E: Set var_88 = Me.Txt
  loc_11D6954: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H24), var_8C)
  loc_11D695C: var_8C.Text = vbNullString
  loc_11D6976: Set var_88 = Me.Txt
  loc_11D697C: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H27), var_8C)
  loc_11D6984: var_8C.Text = vbNullString
  loc_11D699E: Set var_88 = Me.Txt
  loc_11D69A4: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H26), var_8C)
  loc_11D69AC: var_8C.Text = vbNullString
  loc_11D69C6: Set var_88 = Me.Txt
  loc_11D69CC: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H25), var_8C)
  loc_11D69D4: var_8C.Text = vbNullString
  loc_11D69EE: Set var_88 = Me.Txt
  loc_11D69F4: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H25), var_8C)
  loc_11D69FC: var_8C.Tag = vbNullString
  loc_11D6A16: Set var_88 = Me.Txt
  loc_11D6A1C: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H29), var_8C)
  loc_11D6A24: var_8C.Text = vbNullString
  loc_11D6A3E: Set var_88 = Me.Txt
  loc_11D6A44: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H28), var_8C)
  loc_11D6A4C: var_8C.Text = vbNullString
  loc_11D6A66: Set var_88 = Me.Txt
  loc_11D6A6C: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H2B), var_8C)
  loc_11D6A74: var_8C.Text = vbNullString
  loc_11D6A8E: Set var_88 = Me.Txt
  loc_11D6A94: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H2D), var_8C)
  loc_11D6A9C: var_8C.Text = vbNullString
  loc_11D6AB6: Set var_88 = Me.Txt
  loc_11D6ABC: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H2A), var_8C)
  loc_11D6AC4: var_8C.Text = vbNullString
  loc_11D6ADE: Set var_88 = Me.Txt
  loc_11D6AE4: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H17), var_8C)
  loc_11D6AEC: var_8C.Text = vbNullString
  loc_11D6B06: Set var_88 = Me.Txt
  loc_11D6B0C: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H38), var_8C)
  loc_11D6B14: var_8C.Text = vbNullString
  loc_11D6B2E: Set var_88 = Me.Txt
  loc_11D6B34: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H39), var_8C)
  loc_11D6B3C: var_8C.Text = vbNullString
  loc_11D6B56: Set var_88 = Me.Txt
  loc_11D6B5C: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H31), var_8C)
  loc_11D6B64: var_8C.Text = vbNullString
  loc_11D6B7E: Set var_88 = Me.Txt
  loc_11D6B84: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H2F), var_8C)
  loc_11D6B8C: var_8C.Text = vbNullString
  loc_11D6BA6: Set var_88 = Me.Txt
  loc_11D6BAC: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H30), var_8C)
  loc_11D6BB4: var_8C.Text = vbNullString
  loc_11D6BCE: Set var_88 = Me.Txt
  loc_11D6BD4: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H40), var_8C)
  loc_11D6BDC: var_8C.Text = vbNullString
  loc_11D6BF6: Set var_88 = Me.Txt
  loc_11D6BFC: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H2E), var_8C)
  loc_11D6C04: var_8C.Text = vbNullString
  loc_11D6C1E: Set var_88 = Me.Txt
  loc_11D6C24: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H2C), var_8C)
  loc_11D6C2C: var_8C.Text = vbNullString
  loc_11D6C46: Set var_88 = Me.Txt
  loc_11D6C4C: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H3A), var_8C)
  loc_11D6C54: var_8C.Text = vbNullString
  loc_11D6C6E: Set var_88 = Me.Txt
  loc_11D6C74: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&HE), var_8C)
  loc_11D6C7C: var_8C.Text = vbNullString
  loc_11D6C96: Set var_88 = Me.Txt
  loc_11D6C9C: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H37), var_8C)
  loc_11D6CA4: var_8C.Text = vbNullString
  loc_11D6CBE: Set var_88 = Me.Txt
  loc_11D6CC4: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H35), var_8C)
  loc_11D6CCC: var_8C.Text = vbNullString
  loc_11D6CE6: Set var_88 = Me.Txt
  loc_11D6CEC: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H33), var_8C)
  loc_11D6CF4: var_8C.Text = vbNullString
  loc_11D6D0E: Set var_88 = Me.Txt
  loc_11D6D14: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H36), var_8C)
  loc_11D6D1C: var_8C.Text = vbNullString
  loc_11D6D36: Set var_88 = Me.Txt
  loc_11D6D3C: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H32), var_8C)
  loc_11D6D44: var_8C.Text = vbNullString
  loc_11D6D5E: Set var_88 = Me.Txt
  loc_11D6D64: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&H34), var_8C)
  loc_11D6D6C: var_8C.Text = vbNullString
  loc_11D6D86: Set var_88 = Me.Txt
  loc_11D6D8C: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(&HF), var_8C)
  loc_11D6D94: var_8C.Text = vbNullString
  loc_11D6DAE: Set var_88 = Me.Txt
  loc_11D6DB4: Call 0.Method_Proc_24_76_11D6DCC0 (CInt(9), var_8C)
  loc_11D6DBC: var_8C.Text = vbNullString
  loc_11D6DC8: Exit Sub
End Sub

Public Sub Proc_24_77_11BC204(arg_C) '11BC204
  'Data Table: 5A238C
  Dim var_8C As TextBox
  loc_11BBDAE: Set var_88 = Me.Txt
  loc_11BBDB4: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H24), var_8C)
  loc_11BBDBC: var_8C.Enabled = arg_C
  loc_11BBDD6: Set var_88 = Me.Txt
  loc_11BBDDC: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H27), var_8C)
  loc_11BBDE4: var_8C.Enabled = arg_C
  loc_11BBDFE: Set var_88 = Me.Txt
  loc_11BBE04: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H26), var_8C)
  loc_11BBE0C: var_8C.Enabled = arg_C
  loc_11BBE26: Set var_88 = Me.Txt
  loc_11BBE2C: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H25), var_8C)
  loc_11BBE34: var_8C.Enabled = arg_C
  loc_11BBE4E: Set var_88 = Me.Txt
  loc_11BBE54: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H29), var_8C)
  loc_11BBE5C: var_8C.Enabled = arg_C
  loc_11BBE76: Set var_88 = Me.Txt
  loc_11BBE7C: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H28), var_8C)
  loc_11BBE84: var_8C.Enabled = arg_C
  loc_11BBE9E: Set var_88 = Me.Txt
  loc_11BBEA4: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H2B), var_8C)
  loc_11BBEAC: var_8C.Enabled = arg_C
  loc_11BBEC6: Set var_88 = Me.Txt
  loc_11BBECC: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H2D), var_8C)
  loc_11BBED4: var_8C.Enabled = arg_C
  loc_11BBEEE: Set var_88 = Me.Txt
  loc_11BBEF4: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H2A), var_8C)
  loc_11BBEFC: var_8C.Enabled = arg_C
  loc_11BBF16: Set var_88 = Me.Txt
  loc_11BBF1C: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H17), var_8C)
  loc_11BBF24: var_8C.Enabled = arg_C
  loc_11BBF3E: Set var_88 = Me.Txt
  loc_11BBF44: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H38), var_8C)
  loc_11BBF4C: var_8C.Enabled = arg_C
  loc_11BBF66: Set var_88 = Me.Txt
  loc_11BBF6C: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H39), var_8C)
  loc_11BBF74: var_8C.Enabled = arg_C
  loc_11BBF8E: Set var_88 = Me.Txt
  loc_11BBF94: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H31), var_8C)
  loc_11BBF9C: var_8C.Enabled = arg_C
  loc_11BBFB6: Set var_88 = Me.Txt
  loc_11BBFBC: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H2F), var_8C)
  loc_11BBFC4: var_8C.Enabled = arg_C
  loc_11BBFDE: Set var_88 = Me.Txt
  loc_11BBFE4: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H30), var_8C)
  loc_11BBFEC: var_8C.Enabled = arg_C
  loc_11BC006: Set var_88 = Me.Txt
  loc_11BC00C: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H40), var_8C)
  loc_11BC014: var_8C.Enabled = arg_C
  loc_11BC02E: Set var_88 = Me.Txt
  loc_11BC034: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H2E), var_8C)
  loc_11BC03C: var_8C.Enabled = arg_C
  loc_11BC056: Set var_88 = Me.Txt
  loc_11BC05C: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H2C), var_8C)
  loc_11BC064: var_8C.Enabled = arg_C
  loc_11BC07E: Set var_88 = Me.Txt
  loc_11BC084: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H3A), var_8C)
  loc_11BC08C: var_8C.Enabled = arg_C
  loc_11BC0A6: Set var_88 = Me.Txt
  loc_11BC0AC: Call 0.Method_Proc_24_77_11BC2040 (CInt(&HE), var_8C)
  loc_11BC0B4: var_8C.Enabled = arg_C
  loc_11BC0CE: Set var_88 = Me.Txt
  loc_11BC0D4: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H37), var_8C)
  loc_11BC0DC: var_8C.Enabled = arg_C
  loc_11BC0F6: Set var_88 = Me.Txt
  loc_11BC0FC: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H35), var_8C)
  loc_11BC104: var_8C.Enabled = arg_C
  loc_11BC11E: Set var_88 = Me.Txt
  loc_11BC124: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H33), var_8C)
  loc_11BC12C: var_8C.Enabled = arg_C
  loc_11BC146: Set var_88 = Me.Txt
  loc_11BC14C: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H36), var_8C)
  loc_11BC154: var_8C.Enabled = arg_C
  loc_11BC16E: Set var_88 = Me.Txt
  loc_11BC174: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H32), var_8C)
  loc_11BC17C: var_8C.Enabled = arg_C
  loc_11BC196: Set var_88 = Me.Txt
  loc_11BC19C: Call 0.Method_Proc_24_77_11BC2040 (CInt(&H34), var_8C)
  loc_11BC1A4: var_8C.Enabled = arg_C
  loc_11BC1BE: Set var_88 = Me.Txt
  loc_11BC1C4: Call 0.Method_Proc_24_77_11BC2040 (CInt(&HF), var_8C)
  loc_11BC1CC: var_8C.Enabled = arg_C
  loc_11BC1E6: Set var_88 = Me.Txt
  loc_11BC1EC: Call 0.Method_Proc_24_77_11BC2040 (CInt(9), var_8C)
  loc_11BC1F4: var_8C.Enabled = arg_C
  loc_11BC200: Exit Sub
End Sub

Public Sub Proc_24_78_13A8F20(arg_C) '13A8F20
  'Data Table: 5A238C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_E0 As TextBox
  loc_13A85EF: var_98 = CVar(CLng(arg_C)) 'Long
  loc_13A8618: Set var_DC = Me.Txt
  loc_13A861E: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H24), var_E0, CStr(Me.FGrid.TextMatrix)))
  loc_13A8626: var_E0.Text = CVar(CLng(1))
  loc_13A863C: var_98 = CVar(CLng(arg_C)) 'Long
  loc_13A8665: Set var_DC = Me.Txt
  loc_13A866B: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H27), var_E0, CStr(Txt.DispID_41))
  loc_13A8673: var_E0.Text = CVar(CLng(2))
  loc_13A86B2: Set var_DC = Me.Txt
  loc_13A86B8: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H26), var_E0, CStr(Txt.DispID_41), CVar(CLng(3)))
  loc_13A86C0: var_E0.Text = CVar(CLng(arg_C))
  loc_13A86FF: Set var_DC = Me.Txt
  loc_13A8705: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H25), var_E0, CStr(Txt.DispID_41), CVar(CLng(4)))
  loc_13A870D: var_E0.Text = CVar(CLng(arg_C))
  loc_13A874C: Set var_DC = Me.Txt
  loc_13A8752: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H25), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H1D)))
  loc_13A875A: var_E0.Tag = CVar(CLng(arg_C))
  loc_13A8799: Set var_DC = Me.Txt
  loc_13A879F: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H29), var_E0, CStr(Txt.DispID_41), CVar(CLng(5)))
  loc_13A87A7: var_E0.Text = CVar(CLng(arg_C))
  loc_13A87E6: Set var_DC = Me.Txt
  loc_13A87EC: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H28), var_E0, CStr(Txt.DispID_41), CVar(CLng(6)))
  loc_13A87F4: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8833: Set var_DC = Me.Txt
  loc_13A8839: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H2B), var_E0, CStr(Txt.DispID_41), CVar(CLng(7)))
  loc_13A8841: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8880: Set var_DC = Me.Txt
  loc_13A8886: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H2D), var_E0, CStr(Txt.DispID_41), CVar(CLng(8)))
  loc_13A888E: var_E0.Text = CVar(CLng(arg_C))
  loc_13A88CD: Set var_DC = Me.Txt
  loc_13A88D3: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H2A), var_E0, CStr(Txt.DispID_41), CVar(CLng(9)))
  loc_13A88DB: var_E0.Text = CVar(CLng(arg_C))
  loc_13A891A: Set var_DC = Me.Txt
  loc_13A8920: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H17), var_E0, CStr(Txt.DispID_41), CVar(CLng(&HA)))
  loc_13A8928: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8967: Set var_DC = Me.Txt
  loc_13A896D: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H38), var_E0, CStr(Txt.DispID_41), CVar(CLng(&HB)))
  loc_13A8975: var_E0.Text = CVar(CLng(arg_C))
  loc_13A89B4: Set var_DC = Me.Txt
  loc_13A89BA: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H39), var_E0, CStr(Txt.DispID_41), CVar(CLng(&HC)))
  loc_13A89C2: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8A01: Set var_DC = Me.Txt
  loc_13A8A07: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H31), var_E0, CStr(Txt.DispID_41), CVar(CLng(&HD)))
  loc_13A8A0F: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8A4E: Set var_DC = Me.Txt
  loc_13A8A54: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H2F), var_E0, CStr(Txt.DispID_41), CVar(CLng(&HE)))
  loc_13A8A5C: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8A9B: Set var_DC = Me.Txt
  loc_13A8AA1: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H30), var_E0, CStr(Txt.DispID_41), CVar(CLng(&HF)))
  loc_13A8AA9: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8AE8: Set var_DC = Me.Txt
  loc_13A8AEE: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H40), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H10)))
  loc_13A8AF6: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8B35: Set var_DC = Me.Txt
  loc_13A8B3B: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H2E), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H11)))
  loc_13A8B43: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8B82: Set var_DC = Me.Txt
  loc_13A8B88: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H2C), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H12)))
  loc_13A8B90: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8BCF: Set var_DC = Me.Txt
  loc_13A8BD5: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H3A), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H13)))
  loc_13A8BDD: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8C1C: Set var_DC = Me.Txt
  loc_13A8C22: Call 0.Method_Proc_24_78_13A8F200 (CInt(&HE), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H14)))
  loc_13A8C2A: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8C69: Set var_DC = Me.Txt
  loc_13A8C6F: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H37), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H15)))
  loc_13A8C77: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8CB6: Set var_DC = Me.Txt
  loc_13A8CBC: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H35), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H16)))
  loc_13A8CC4: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8D03: Set var_DC = Me.Txt
  loc_13A8D09: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H33), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H17)))
  loc_13A8D11: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8D50: Set var_DC = Me.Txt
  loc_13A8D56: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H36), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H18)))
  loc_13A8D5E: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8D9D: Set var_DC = Me.Txt
  loc_13A8DA3: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H32), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H19)))
  loc_13A8DAB: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8DEA: Set var_DC = Me.Txt
  loc_13A8DF0: Call 0.Method_Proc_24_78_13A8F200 (CInt(&H34), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H1A)))
  loc_13A8DF8: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8E37: Set var_DC = Me.Txt
  loc_13A8E3D: Call 0.Method_Proc_24_78_13A8F200 (CInt(&HF), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H1B)))
  loc_13A8E45: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8E5B: var_98 = CVar(CLng(arg_C)) 'Long
  loc_13A8E84: Set var_DC = Me.Txt
  loc_13A8E8A: Call 0.Method_Proc_24_78_13A8F200 (CInt(9), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H1C)))
  loc_13A8E92: var_E0.Text = var_98
  loc_13A8EA8: Set var_DC = Me.TopCtrl1
  loc_13A8EAE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_98)
  loc_13A8EC7: If (CStr(var_98) <> "Add") Then
  loc_13A8EDE:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41(CVar(CLng(&H1E)))
  loc_13A8EF7:   Set var_DC = Me.Txt
  loc_13A8EFD:   Call 0.Method_Proc_24_78_13A8F200 (CInt(&H48), var_E0)
  loc_13A8F05:   var_E0.Text = CStr(CVar(CLng(arg_C)))
  loc_13A8F17: End If
  loc_13A8F19: Set var_88 = Nothing 
  loc_13A8F1D: Exit Sub
End Sub

Public Sub Proc_24_79_E41084
  'Data Table: 5A238C
  Dim var_86 As Integer
  loc_E41072: var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_E4107B: Proc_24_79_E41084 = var_86
End Sub

Public Sub Proc_24_80_F9D144
  'Data Table: 5A238C
  Dim var_90 As Variant
  loc_F9CFC7: Call Proc_24_79_E41084(var_86)
  loc_F9CFD2: If (var_86 > 1) Then
  loc_F9CFE2:   Set var_8C = Me.Cmd
  loc_F9CFE8:   Call 0.Method_Proc_24_80_F9D1440 (CInt(1), var_90)
  loc_F9CFF0:   var_90.Enabled = True
  loc_F9D009:   Set var_8C = Me.Cmd
  loc_F9D00F:   Call 0.Method_Proc_24_80_F9D1440 (CInt(0), var_90)
  loc_F9D017:   var_90.Enabled = True
  loc_F9D026: Else
  loc_F9D033:   Set var_8C = Me.Cmd
  loc_F9D039:   Call 0.Method_Proc_24_80_F9D1440 (CInt(1), var_90)
  loc_F9D041:   var_90.Enabled = False
  loc_F9D05A:   Set var_8C = Me.Cmd
  loc_F9D060:   Call 0.Method_Proc_24_80_F9D1440 (CInt(0), var_90)
  loc_F9D068:   var_90.Enabled = False
  loc_F9D074: End If
  loc_F9D082: Set var_8C = Me.Txt
  loc_F9D088: Call 0.Method_Proc_24_80_F9D1440 (CInt(&H47), var_90)
  loc_F9D0AC: If (CDbl(Val(var_90.Text)) = CDbl(1)) Then
  loc_F9D0BC:   Set var_8C = Me.Cmd
  loc_F9D0C2:   Call 0.Method_Proc_24_80_F9D1440 (CInt(0), var_90)
  loc_F9D0CA:   var_90.Enabled = False
  loc_F9D0D6: End If
  loc_F9D0D9: Call Proc_24_79_E41084(var_86)
  loc_F9D0EC: Set var_8C = Me.Txt
  loc_F9D0F2: Call 0.Method_Proc_24_80_F9D1440 (CInt(&H47), var_90)
  loc_F9D117: If (CDbl(Val(var_90.Text)) = CDbl(var_86)) Then
  loc_F9D127:   Set var_8C = Me.Cmd
  loc_F9D12D:   Call 0.Method_Proc_24_80_F9D1440 (CInt(1), var_90)
  loc_F9D135:   var_90.Enabled = False
  loc_F9D141: End If
  loc_F9D141: Exit Sub
End Sub

Public Sub Proc_24_81_13463BC
  'Data Table: 5A238C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_1345BB0: On Error Goto loc_13463B6
  loc_1345BB7: Set var_88 = Me.FGrid
  loc_1345BC6: var_88.Cols = &H1F
  loc_1345BD7: var_88.Rows = 1
  loc_1345BDC: var_98 = "1"
  loc_1345BF9: var_88.FixedCols = 1
  loc_1345C0A: var_88.FixedRows = 1
  loc_1345C23: global_56 = CStr(CLng(var_88.BackColor))
  loc_1345C30: var_98 = CVar(CLng(0)) 'Long
  loc_1345C35: var_CC = &H1F4
  loc_1345C41: LateIdCallSt
  loc_1345C49: var_98 = 0
  loc_1345C55: var_CC = CVar(CLng(0)) 'Long
  loc_1345C5A: var_EC = "SNo"
  loc_1345C63: LateIdCallSt
  loc_1345C6E: var_98 = CVar(CLng(1)) 'Long
  loc_1345C73: var_CC = &H3E8
  loc_1345C7F: LateIdCallSt
  loc_1345C87: var_98 = 0
  loc_1345C93: var_CC = CVar(CLng(1)) 'Long
  loc_1345C98: var_EC = "Name"
  loc_1345CA1: LateIdCallSt
  loc_1345CAC: var_98 = CVar(CLng(2)) 'Long
  loc_1345CB1: var_CC = &H3E8
  loc_1345CBD: LateIdCallSt
  loc_1345CC5: var_98 = 0
  loc_1345CD1: var_CC = CVar(CLng(2)) 'Long
  loc_1345CD6: var_EC = "Add1"
  loc_1345CDF: LateIdCallSt
  loc_1345CEA: var_98 = CVar(CLng(3)) 'Long
  loc_1345CEF: var_CC = &H3E8
  loc_1345CFB: LateIdCallSt
  loc_1345D03: var_98 = 0
  loc_1345D0F: var_CC = CVar(CLng(3)) 'Long
  loc_1345D14: var_EC = "Add2"
  loc_1345D1D: LateIdCallSt
  loc_1345D28: var_98 = CVar(CLng(4)) 'Long
  loc_1345D2D: var_CC = &H3E8
  loc_1345D39: LateIdCallSt
  loc_1345D41: var_98 = 0
  loc_1345D4D: var_CC = CVar(CLng(4)) 'Long
  loc_1345D52: var_EC = "Nationality"
  loc_1345D5B: LateIdCallSt
  loc_1345D66: var_98 = CVar(CLng(5)) 'Long
  loc_1345D6B: var_CC = &H3E8
  loc_1345D77: LateIdCallSt
  loc_1345D7F: var_98 = 0
  loc_1345D8B: var_CC = CVar(CLng(5)) 'Long
  loc_1345D90: var_EC = "Occu"
  loc_1345D99: LateIdCallSt
  loc_1345DA1: var_98 = 0
  loc_1345DAD: var_CC = CVar(CLng(6)) 'Long
  loc_1345DB2: var_EC = "ArrFrom"
  loc_1345DBB: LateIdCallSt
  loc_1345DC6: var_98 = CVar(CLng(6)) 'Long
  loc_1345DCB: var_CC = &H3E8
  loc_1345DD7: LateIdCallSt
  loc_1345DDF: var_98 = 0
  loc_1345DEB: var_CC = CVar(CLng(7)) 'Long
  loc_1345DF0: var_EC = "Dest"
  loc_1345DF9: LateIdCallSt
  loc_1345E04: var_98 = CVar(CLng(7)) 'Long
  loc_1345E09: var_CC = &H3E8
  loc_1345E15: LateIdCallSt
  loc_1345E1D: var_98 = 0
  loc_1345E29: var_CC = CVar(CLng(8)) 'Long
  loc_1345E2E: var_EC = "ModeTravelUsed"
  loc_1345E37: LateIdCallSt
  loc_1345E42: var_98 = CVar(CLng(8)) 'Long
  loc_1345E47: var_CC = &H3E8
  loc_1345E53: LateIdCallSt
  loc_1345E5B: var_98 = 0
  loc_1345E67: var_CC = CVar(CLng(9)) 'Long
  loc_1345E6C: var_EC = "PurVisit"
  loc_1345E75: LateIdCallSt
  loc_1345E80: var_98 = CVar(CLng(9)) 'Long
  loc_1345E85: var_CC = &H3E8
  loc_1345E91: LateIdCallSt
  loc_1345E99: var_98 = 0
  loc_1345EA5: var_CC = CVar(CLng(&HA)) 'Long
  loc_1345EAA: var_EC = "DateArr"
  loc_1345EB3: LateIdCallSt
  loc_1345EBE: var_98 = CVar(CLng(&HA)) 'Long
  loc_1345EC3: var_CC = &H3E8
  loc_1345ECF: LateIdCallSt
  loc_1345ED7: var_98 = 0
  loc_1345EE3: var_CC = CVar(CLng(&HB)) 'Long
  loc_1345EE8: var_EC = "ArrPlace"
  loc_1345EF1: LateIdCallSt
  loc_1345EFC: var_98 = CVar(CLng(&HB)) 'Long
  loc_1345F01: var_CC = &H3E8
  loc_1345F0D: LateIdCallSt
  loc_1345F15: var_98 = 0
  loc_1345F21: var_CC = CVar(CLng(&HC)) 'Long
  loc_1345F26: var_EC = "AddIndia"
  loc_1345F2F: LateIdCallSt
  loc_1345F3A: var_98 = CVar(CLng(&HC)) 'Long
  loc_1345F3F: var_CC = &H3E8
  loc_1345F4B: LateIdCallSt
  loc_1345F53: var_98 = 0
  loc_1345F5F: var_CC = CVar(CLng(&HD)) 'Long
  loc_1345F64: var_EC = "PassNo"
  loc_1345F6D: LateIdCallSt
  loc_1345F78: var_98 = CVar(CLng(&HD)) 'Long
  loc_1345F7D: var_CC = &H3E8
  loc_1345F89: LateIdCallSt
  loc_1345F91: var_98 = 0
  loc_1345F9D: var_CC = CVar(CLng(&HE)) 'Long
  loc_1345FA2: var_EC = "IssDate"
  loc_1345FAB: LateIdCallSt
  loc_1345FB6: var_98 = CVar(CLng(&HE)) 'Long
  loc_1345FBB: var_CC = &H3E8
  loc_1345FC7: LateIdCallSt
  loc_1345FCF: var_98 = 0
  loc_1345FDB: var_CC = CVar(CLng(&HF)) 'Long
  loc_1345FE0: var_EC = "IssPlace"
  loc_1345FE9: LateIdCallSt
  loc_1345FF4: var_98 = CVar(CLng(&HF)) 'Long
  loc_1345FF9: var_CC = &H3E8
  loc_1346005: LateIdCallSt
  loc_134600D: var_98 = 0
  loc_1346019: var_CC = CVar(CLng(&H10)) 'Long
  loc_134601E: var_EC = "PassExpDate"
  loc_1346027: LateIdCallSt
  loc_1346032: var_98 = CVar(CLng(&H10)) 'Long
  loc_1346037: var_CC = &H3E8
  loc_1346043: LateIdCallSt
  loc_134604B: var_98 = 0
  loc_1346057: var_CC = CVar(CLng(&H11)) 'Long
  loc_134605C: var_EC = "Age"
  loc_1346065: LateIdCallSt
  loc_1346070: var_98 = CVar(CLng(&H11)) 'Long
  loc_1346075: var_CC = &H3E8
  loc_1346081: LateIdCallSt
  loc_1346089: var_98 = 0
  loc_1346095: var_CC = CVar(CLng(&H12)) 'Long
  loc_134609A: var_EC = "PropStay"
  loc_13460A3: LateIdCallSt
  loc_13460AE: var_98 = CVar(CLng(&H12)) 'Long
  loc_13460B3: var_CC = &H3E8
  loc_13460BF: LateIdCallSt
  loc_13460C7: var_98 = 0
  loc_13460D3: var_CC = CVar(CLng(&H13)) 'Long
  loc_13460D8: var_EC = "ModeTravel"
  loc_13460E1: LateIdCallSt
  loc_13460EC: var_98 = CVar(CLng(&H13)) 'Long
  loc_13460F1: var_CC = &H3E8
  loc_13460FD: LateIdCallSt
  loc_1346105: var_98 = 0
  loc_1346111: var_CC = CVar(CLng(&H14)) 'Long
  loc_1346116: var_EC = "Extension"
  loc_134611F: LateIdCallSt
  loc_134612A: var_98 = CVar(CLng(&H14)) 'Long
  loc_134612F: var_CC = &H3E8
  loc_134613B: LateIdCallSt
  loc_1346143: var_98 = 0
  loc_134614F: var_CC = CVar(CLng(&H15)) 'Long
  loc_1346154: var_EC = "VisaType"
  loc_134615D: LateIdCallSt
  loc_1346168: var_98 = CVar(CLng(&H15)) 'Long
  loc_134616D: var_CC = &H3E8
  loc_1346179: LateIdCallSt
  loc_1346181: var_98 = 0
  loc_134618D: var_CC = CVar(CLng(&H16)) 'Long
  loc_1346192: var_EC = "VisaNo"
  loc_134619B: LateIdCallSt
  loc_13461A6: var_98 = CVar(CLng(&H16)) 'Long
  loc_13461AB: var_CC = &H3E8
  loc_13461B7: LateIdCallSt
  loc_13461BF: var_98 = 0
  loc_13461CB: var_CC = CVar(CLng(&H17)) 'Long
  loc_13461D0: var_EC = "VisaIssDate"
  loc_13461D9: LateIdCallSt
  loc_13461E4: var_98 = CVar(CLng(&H17)) 'Long
  loc_13461E9: var_CC = &H3E8
  loc_13461F5: LateIdCallSt
  loc_13461FD: var_98 = 0
  loc_1346209: var_CC = CVar(CLng(&H18)) 'Long
  loc_134620E: var_EC = "VisaIssPlace"
  loc_1346217: LateIdCallSt
  loc_1346222: var_98 = CVar(CLng(&H18)) 'Long
  loc_1346227: var_CC = &H3E8
  loc_1346233: LateIdCallSt
  loc_134623B: var_98 = 0
  loc_1346247: var_CC = CVar(CLng(&H19)) 'Long
  loc_134624C: var_EC = "ExpDate"
  loc_1346255: LateIdCallSt
  loc_1346260: var_98 = CVar(CLng(&H19)) 'Long
  loc_1346265: var_CC = &H3E8
  loc_1346271: LateIdCallSt
  loc_1346279: var_98 = 0
  loc_1346285: var_CC = CVar(CLng(&H1A)) 'Long
  loc_134628A: var_EC = "VisaDuration"
  loc_1346293: LateIdCallSt
  loc_134629E: var_98 = CVar(CLng(&H1A)) 'Long
  loc_13462A3: var_CC = &H3E8
  loc_13462AF: LateIdCallSt
  loc_13462B7: var_98 = 0
  loc_13462C3: var_CC = CVar(CLng(&H1B)) 'Long
  loc_13462C8: var_EC = "WorkPermit"
  loc_13462D1: LateIdCallSt
  loc_13462DC: var_98 = CVar(CLng(&H1B)) 'Long
  loc_13462E1: var_CC = &H3E8
  loc_13462ED: LateIdCallSt
  loc_13462F5: var_98 = 0
  loc_1346301: var_CC = CVar(CLng(&H1C)) 'Long
  loc_1346306: var_EC = "VisaAuth"
  loc_134630F: LateIdCallSt
  loc_134631A: var_98 = CVar(CLng(&H1C)) 'Long
  loc_134631F: var_CC = &H3E8
  loc_134632B: LateIdCallSt
  loc_1346333: var_98 = 0
  loc_134633F: var_CC = CVar(CLng(&H1D)) 'Long
  loc_1346344: var_EC = "NationCode"
  loc_134634D: LateIdCallSt
  loc_1346358: var_98 = CVar(CLng(&H1C)) 'Long
  loc_134635D: var_CC = &H3E8
  loc_1346369: LateIdCallSt
  loc_1346371: var_98 = 0
  loc_134637D: var_CC = CVar(CLng(&H1E)) 'Long
  loc_1346382: var_EC = "SerialNo"
  loc_134638B: LateIdCallSt
  loc_1346396: var_98 = CVar(CLng(&H1E)) 'Long
  loc_134639B: var_CC = &H3E8
  loc_13463A7: LateIdCallSt
  loc_13463B1: Set var_88 = Nothing 
  loc_13463B5: Exit Sub
  loc_13463B6: ' Referenced from: 1345BB0
  loc_13463B6: Proc_6_60_E63754(var_88, var_CC, var_98, var_88, var_EC, var_CC, var_98, var_88)
  loc_13463BB: Exit Sub
End Sub

Public Sub Proc_24_82_104B918
  'Data Table: 5A238C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_104B6A8: On Error Goto loc_104B912
  loc_104B6AF: Set var_88 = Me.FGrid2
  loc_104B6BE: var_88.Cols = 7
  loc_104B6CF: var_88.Rows = 1
  loc_104B6E0: var_88.Width = CVar(CDbl(11490))
  loc_104B6F1: var_88.Height = CVar(CDbl(2000))
  loc_104B6F6: var_98 = vbNullString
  loc_104B713: var_88.FixedCols = 0
  loc_104B724: var_88.FixedRows = 1
  loc_104B73D: global_56 = CStr(CLng(var_88.BackColor))
  loc_104B74A: var_98 = CVar(CLng(0)) 'Long
  loc_104B74F: var_CC = &H294
  loc_104B75B: LateIdCallSt
  loc_104B763: var_98 = 0
  loc_104B76F: var_CC = CVar(CLng(0)) 'Long
  loc_104B774: var_EC = "Leader"
  loc_104B77D: LateIdCallSt
  loc_104B788: var_98 = CVar(CLng(1)) 'Long
  loc_104B78D: var_CC = &HBB8
  loc_104B799: LateIdCallSt
  loc_104B7A1: var_98 = 0
  loc_104B7AD: var_CC = CVar(CLng(1)) 'Long
  loc_104B7B2: var_EC = "Name"
  loc_104B7BB: LateIdCallSt
  loc_104B7D0: var_88.ColAlignment = CVar(CInt(1))
  loc_104B7D8: var_98 = CVar(CLng(2)) 'Long
  loc_104B7DD: var_CC = &HBB8
  loc_104B7E9: LateIdCallSt
  loc_104B7F1: var_98 = 0
  loc_104B7FD: var_CC = CVar(CLng(2)) 'Long
  loc_104B802: var_EC = "Add1"
  loc_104B80B: LateIdCallSt
  loc_104B816: var_98 = CVar(CLng(3)) 'Long
  loc_104B81B: var_CC = &HBB8
  loc_104B827: LateIdCallSt
  loc_104B82F: var_98 = 0
  loc_104B83B: var_CC = CVar(CLng(3)) 'Long
  loc_104B840: var_EC = "Add2"
  loc_104B849: LateIdCallSt
  loc_104B854: var_98 = CVar(CLng(4)) 'Long
  loc_104B859: var_CC = &H5DC
  loc_104B865: LateIdCallSt
  loc_104B86D: var_98 = 0
  loc_104B879: var_CC = CVar(CLng(4)) 'Long
  loc_104B87E: var_EC = "Nationality"
  loc_104B887: LateIdCallSt
  loc_104B892: var_98 = CVar(CLng(5)) 'Long
  loc_104B897: var_CC = 0
  loc_104B8A3: LateIdCallSt
  loc_104B8AB: var_98 = 0
  loc_104B8B7: var_CC = CVar(CLng(5)) 'Long
  loc_104B8BC: var_EC = "Prof"
  loc_104B8C5: LateIdCallSt
  loc_104B8D0: var_98 = CVar(CLng(6)) 'Long
  loc_104B8D5: var_CC = 0
  loc_104B8E1: LateIdCallSt
  loc_104B8E9: var_98 = 0
  loc_104B8F5: var_CC = CVar(CLng(6)) 'Long
  loc_104B8FA: var_EC = "mProf"
  loc_104B903: LateIdCallSt
  loc_104B90D: Set var_88 = Nothing 
  loc_104B911: Exit Sub
  loc_104B912: ' Referenced from: 104B6A8
  loc_104B912: Proc_6_60_E63754(var_88, var_EC, var_CC, var_98, var_88, var_CC, var_98, var_88)
  loc_104B917: Exit Sub
End Sub

Public Sub Proc_24_83_13DE974(arg_C) '13DE974
  'Data Table: 5A238C
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_110 As Variant
  Dim var_F0 As TextBox
  loc_13DDF90: Set var_88 = Me.FGrid
  loc_13DDF97: var_98 = CVar(CLng(arg_C)) 'Long
  loc_13DDF9F: var_B8 = CVar(CLng(0)) 'Long
  loc_13DDFA9: var_D8 = CVar(CStr(arg_C)) 'String
  loc_13DDFB0: LateIdCallSt
  loc_13DDFD7: Set var_EC = Me.Txt
  loc_13DDFDD: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H24), var_F0, CVar(CLng(1)), CVar(CLng(arg_C)))
  loc_13DDFF5: var_110 = CVar(CStr(Trim(CVar(var_F0)))) 'String
  loc_13DDFFC: LateIdCallSt
  loc_13DE02C: Set var_EC = Me.Txt
  loc_13DE032: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H27), var_F0, CVar(CLng(2)), CVar(CLng(arg_C)), var_88)
  loc_13DE051: LateIdCallSt
  loc_13DE081: Set var_EC = Me.Txt
  loc_13DE087: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H26), var_F0, CVar(CLng(3)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE0A6: LateIdCallSt
  loc_13DE0D6: Set var_EC = Me.Txt
  loc_13DE0DC: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H25), var_F0, CVar(CLng(4)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE0F4: var_110 = CVar(CStr(Trim(CVar(var_F0)))) 'String
  loc_13DE0FB: LateIdCallSt
  loc_13DE12E: Set var_EC = Me.Txt
  loc_13DE134: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H25), var_F0, var_114, CVar(CLng(&H1D)), CVar(CLng(arg_C)), var_88)
  loc_13DE13C: var_110 = var_F0.Tag
  loc_13DE15A: LateIdCallSt
  loc_13DE18E: Set var_EC = Me.Txt
  loc_13DE194: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H29), var_F0, CVar(CLng(5)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_114)))))
  loc_13DE1B3: LateIdCallSt
  loc_13DE1E3: Set var_EC = Me.Txt
  loc_13DE1E9: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H28), var_F0, CVar(CLng(6)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE208: LateIdCallSt
  loc_13DE238: Set var_EC = Me.Txt
  loc_13DE23E: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H2B), var_F0, CVar(CLng(7)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE25D: LateIdCallSt
  loc_13DE28D: Set var_EC = Me.Txt
  loc_13DE293: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H2D), var_F0, CVar(CLng(8)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE2B2: LateIdCallSt
  loc_13DE2E2: Set var_EC = Me.Txt
  loc_13DE2E8: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H2A), var_F0, CVar(CLng(9)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE307: LateIdCallSt
  loc_13DE337: Set var_EC = Me.Txt
  loc_13DE33D: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H17), var_F0, CVar(CLng(&HA)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE35C: LateIdCallSt
  loc_13DE38C: Set var_EC = Me.Txt
  loc_13DE392: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H38), var_F0, CVar(CLng(&HB)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE3B1: LateIdCallSt
  loc_13DE3E1: Set var_EC = Me.Txt
  loc_13DE3E7: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H39), var_F0, CVar(CLng(&HC)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE406: LateIdCallSt
  loc_13DE436: Set var_EC = Me.Txt
  loc_13DE43C: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H31), var_F0, CVar(CLng(&HD)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE45B: LateIdCallSt
  loc_13DE48B: Set var_EC = Me.Txt
  loc_13DE491: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H2F), var_F0, CVar(CLng(&HE)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE4B0: LateIdCallSt
  loc_13DE4E0: Set var_EC = Me.Txt
  loc_13DE4E6: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H30), var_F0, CVar(CLng(&HF)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE505: LateIdCallSt
  loc_13DE535: Set var_EC = Me.Txt
  loc_13DE53B: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H40), var_F0, CVar(CLng(&H10)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE55A: LateIdCallSt
  loc_13DE58A: Set var_EC = Me.Txt
  loc_13DE590: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H2E), var_F0, CVar(CLng(&H11)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE5AF: LateIdCallSt
  loc_13DE5DF: Set var_EC = Me.Txt
  loc_13DE5E5: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H2C), var_F0, CVar(CLng(&H12)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE604: LateIdCallSt
  loc_13DE634: Set var_EC = Me.Txt
  loc_13DE63A: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H3A), var_F0, CVar(CLng(&H13)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE659: LateIdCallSt
  loc_13DE689: Set var_EC = Me.Txt
  loc_13DE68F: Call 0.Method_Proc_24_83_13DE9740 (CInt(&HE), var_F0, CVar(CLng(&H14)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE6AE: LateIdCallSt
  loc_13DE6DE: Set var_EC = Me.Txt
  loc_13DE6E4: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H37), var_F0, CVar(CLng(&H15)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE703: LateIdCallSt
  loc_13DE733: Set var_EC = Me.Txt
  loc_13DE739: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H35), var_F0, CVar(CLng(&H16)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE758: LateIdCallSt
  loc_13DE788: Set var_EC = Me.Txt
  loc_13DE78E: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H33), var_F0, CVar(CLng(&H17)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE7AD: LateIdCallSt
  loc_13DE7DD: Set var_EC = Me.Txt
  loc_13DE7E3: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H36), var_F0, CVar(CLng(&H18)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE802: LateIdCallSt
  loc_13DE832: Set var_EC = Me.Txt
  loc_13DE838: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H32), var_F0, CVar(CLng(&H19)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE857: LateIdCallSt
  loc_13DE887: Set var_EC = Me.Txt
  loc_13DE88D: Call 0.Method_Proc_24_83_13DE9740 (CInt(&H34), var_F0, CVar(CLng(&H1A)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE8AC: LateIdCallSt
  loc_13DE8DC: Set var_EC = Me.Txt
  loc_13DE8E2: Call 0.Method_Proc_24_83_13DE9740 (CInt(&HF), var_F0, CVar(CLng(&H1B)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE901: LateIdCallSt
  loc_13DE931: Set var_EC = Me.Txt
  loc_13DE937: Call 0.Method_Proc_24_83_13DE9740 (CInt(9), var_F0, CVar(CLng(&H1C)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DE94F: var_110 = CVar(CStr(Trim(CVar(var_F0)))) 'String
  loc_13DE956: LateIdCallSt
  loc_13DE96C: Set var_88 = Nothing 
  loc_13DE970: Exit Sub
End Sub

Public Sub Proc_24_84_149ED0C
  'Data Table: 5A238C
  Dim var_8E As Integer
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim unk_5A23BF As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_8C As Recordset15
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_11C As Variant
  loc_149E05A: var_8E = 1
  loc_149E0B3: unk_5A23BF.Execute CStr("SELECT * FROM GUESTPROFFOR WHERE CODE='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_149E0BE: Set var_88 = var_120
  loc_149E0EC: If (var_88.RecordCount > 0) Then
  loc_149E0EF:   ' Referenced from: 149ECCA
  loc_149E0FE:   If Not(var_88.EOF) Then
  loc_149E105:     Set var_12C = Me.FGrid
  loc_149E10C:     var_A4 = CVar(CLng(var_8E)) 'Long
  loc_149E114:     var_E8 = CVar(CLng(0)) 'Long
  loc_149E11E:     var_B8 = CVar(CStr(var_8E)) 'String
  loc_149E125:     LateIdCallSt
  loc_149E183:     unk_5A23BF.Execute CStr("SELECT Code,Name FROM Country WHERE CODE='" & var_88.Fields.Item("Nationality").Value & "'"), var_11C, -1
  loc_149E18E:     Set var_8C = var_120
  loc_149E1BC:     If (var_8C.RecordCount > 0) Then
  loc_149E1C3:       var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E1CB:       var_10C = CVar(CLng(&H1D)) 'Long
  loc_149E1FB:       var_D8 = CVar(CStr(var_8C.Fields.Item("Code").Value)) 'String
  loc_149E202:       LateIdCallSt
  loc_149E21C:       var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E224:       var_10C = CVar(CLng(4)) 'Long
  loc_149E254:       var_D8 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_149E25B:       LateIdCallSt
  loc_149E271:     End If
  loc_149E275:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E27D:     var_10C = CVar(CLng(1)) 'Long
  loc_149E2AD:     var_D8 = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_149E2B4:     LateIdCallSt
  loc_149E2CE:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E2D6:     var_10C = CVar(CLng(2)) 'Long
  loc_149E306:     var_D8 = CVar(CStr(var_88.Fields.Item("Add1").Value)) 'String
  loc_149E30D:     LateIdCallSt
  loc_149E327:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E32F:     var_10C = CVar(CLng(3)) 'Long
  loc_149E35F:     var_D8 = CVar(CStr(var_88.Fields.Item("Add2").Value)) 'String
  loc_149E366:     LateIdCallSt
  loc_149E380:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E388:     var_10C = CVar(CLng(5)) 'Long
  loc_149E3B8:     var_D8 = CVar(CStr(var_88.Fields.Item("Occu").Value)) 'String
  loc_149E3BF:     LateIdCallSt
  loc_149E3D9:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E3E1:     var_10C = CVar(CLng(6)) 'Long
  loc_149E411:     var_D8 = CVar(CStr(var_88.Fields.Item("ArrFrom").Value)) 'String
  loc_149E418:     LateIdCallSt
  loc_149E432:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E43A:     var_10C = CVar(CLng(7)) 'Long
  loc_149E46A:     var_D8 = CVar(CStr(var_88.Fields.Item("dest").Value)) 'String
  loc_149E471:     LateIdCallSt
  loc_149E48B:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E493:     var_10C = CVar(CLng(9)) 'Long
  loc_149E4C3:     var_D8 = CVar(CStr(var_88.Fields.Item("PurVisit").Value)) 'String
  loc_149E4CA:     LateIdCallSt
  loc_149E4E4:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E4EC:     var_10C = CVar(CLng(&H13)) 'Long
  loc_149E51C:     var_D8 = CVar(CStr(var_88.Fields.Item("ModeTravel").Value)) 'String
  loc_149E523:     LateIdCallSt
  loc_149E559:     var_E8 = CVar(CLng(var_8E)) 'Long
  loc_149E561:     var_13C = CVar(CLng(&HA)) 'Long
  loc_149E58E:     var_11C = CVar(CStr(Format(CVar(var_88.Fields.Item("DateArr")), "dd/MMM/yyyy"))) 'String
  loc_149E595:     LateIdCallSt
  loc_149E5AF:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E5B7:     var_10C = CVar(CLng(&HB)) 'Long
  loc_149E5E7:     var_D8 = CVar(CStr(var_88.Fields.Item("ArrPlace").Value)) 'String
  loc_149E5EE:     LateIdCallSt
  loc_149E608:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E610:     var_10C = CVar(CLng(&HC)) 'Long
  loc_149E640:     var_D8 = CVar(CStr(var_88.Fields.Item("AddIndia").Value)) 'String
  loc_149E647:     LateIdCallSt
  loc_149E661:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E669:     var_10C = CVar(CLng(&HD)) 'Long
  loc_149E699:     var_D8 = CVar(CStr(var_88.Fields.Item("PassNo").Value)) 'String
  loc_149E6A0:     LateIdCallSt
  loc_149E6D6:     var_E8 = CVar(CLng(var_8E)) 'Long
  loc_149E6DE:     var_13C = CVar(CLng(&HE)) 'Long
  loc_149E70B:     var_11C = CVar(CStr(Format(CVar(var_88.Fields.Item("IssDate")), "dd/MMM/yyyy"))) 'String
  loc_149E712:     LateIdCallSt
  loc_149E72C:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E734:     var_10C = CVar(CLng(&HF)) 'Long
  loc_149E764:     var_D8 = CVar(CStr(var_88.Fields.Item("IssPlace").Value)) 'String
  loc_149E76B:     LateIdCallSt
  loc_149E785:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E78D:     var_10C = CVar(CLng(&H11)) 'Long
  loc_149E7BD:     var_D8 = CVar(CStr(var_88.Fields.Item("Age").Value)) 'String
  loc_149E7C4:     LateIdCallSt
  loc_149E7DE:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E7E6:     var_10C = CVar(CLng(&H12)) 'Long
  loc_149E816:     var_D8 = CVar(CStr(var_88.Fields.Item("PropStay").Value)) 'String
  loc_149E81D:     LateIdCallSt
  loc_149E837:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E83F:     var_10C = CVar(CLng(8)) 'Long
  loc_149E86F:     var_D8 = CVar(CStr(var_88.Fields.Item("ModeTravelUsed").Value)) 'String
  loc_149E876:     LateIdCallSt
  loc_149E890:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E898:     var_10C = CVar(CLng(&H15)) 'Long
  loc_149E8C8:     var_D8 = CVar(CStr(var_88.Fields.Item("VisaType").Value)) 'String
  loc_149E8CF:     LateIdCallSt
  loc_149E8E9:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E8F1:     var_10C = CVar(CLng(&H16)) 'Long
  loc_149E921:     var_D8 = CVar(CStr(var_88.Fields.Item("VisaNo").Value)) 'String
  loc_149E928:     LateIdCallSt
  loc_149E95E:     var_E8 = CVar(CLng(var_8E)) 'Long
  loc_149E966:     var_13C = CVar(CLng(&H17)) 'Long
  loc_149E993:     var_11C = CVar(CStr(Format(CVar(var_88.Fields.Item("VisaIssDate")), "dd/MMM/yyyy"))) 'String
  loc_149E99A:     LateIdCallSt
  loc_149E9B4:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149E9BC:     var_10C = CVar(CLng(&H18)) 'Long
  loc_149E9EC:     var_D8 = CVar(CStr(var_88.Fields.Item("VisaIssPlace").Value)) 'String
  loc_149E9F3:     LateIdCallSt
  loc_149EA29:     var_E8 = CVar(CLng(var_8E)) 'Long
  loc_149EA31:     var_13C = CVar(CLng(&H19)) 'Long
  loc_149EA5E:     var_11C = CVar(CStr(Format(CVar(var_88.Fields.Item("ExpDate")), "dd/MMM/yyyy"))) 'String
  loc_149EA65:     LateIdCallSt
  loc_149EA7F:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149EA87:     var_10C = CVar(CLng(&H1B)) 'Long
  loc_149EAB7:     var_D8 = CVar(CStr(var_88.Fields.Item("WorkPermit").Value)) 'String
  loc_149EABE:     LateIdCallSt
  loc_149EAF4:     var_E8 = CVar(CLng(var_8E)) 'Long
  loc_149EB30:     LateIdCallSt
  loc_149EB7F:     var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VisaIssAuth")), CVar(CLng(&H1C)), CVar(CLng(var_8E)), var_12C, CVar(CStr(Format(CVar(var_88.Fields.Item("PassExpDate")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_149EB86:     LateIdCallSt
  loc_149EBD1:     var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VisaDuration")), CVar(CLng(&H1A)), CVar(CLng(var_8E)), var_12C, var_D8, CVar(CLng(&H10)))) 'String
  loc_149EBD8:     LateIdCallSt
  loc_149EC23:     var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Extension")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_12C, var_D8)) 'String
  loc_149EC2A:     LateIdCallSt
  loc_149EC48:     var_10C = CVar(CLng(&H1E)) 'Long
  loc_149EC64:     var_A8 = var_88.Fields.Item("SerialNo")
  loc_149EC75:     var_D8 = CVar(Proc_6_38_E69628(CVar(var_A8), var_10C, CVar(CLng(var_8E)), var_12C, var_D8)) 'String
  loc_149EC7C:     LateIdCallSt
  loc_149EC94:     var_8E = (var_8E + 1)
  loc_149EC9A:     var_88.MoveNext
  loc_149ECA5:     var_126 = var_88.EOF
  loc_149ECB0:     If (var_126 = 0) Then
  loc_149ECB3:       var_A4 = vbNullString
  loc_149ECC4:     End If
  loc_149ECC6:     Set var_12C = Nothing 
  loc_149ECCA:     GoTo loc_149E0EF
  loc_149ECCD:   End If
  loc_149ECCD: End If
  loc_149ECD0: Call Proc_24_79_E41084(var_126, FGrid.DispID_10000, var_A4, var_8E, var_12C, var_D8)
  loc_149ECE8: Set var_94 = Me.Txt
  loc_149ECEE: Call 0.Method_Proc_24_84_149ED0C0 (CInt(&H47), var_A8, CStr(var_126), var_E8)
  loc_149ECF6: var_A8.Text = var_12C
  loc_149ED05: Call Proc_24_80_F9D144(var_D8, var_10C)
  loc_149ED0A: Exit Sub
End Sub

Public Sub Proc_24_85_10173DC
  'Data Table: 5A238C
  Dim var_98 As String
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_8C As Recordset15
  Dim var_130 As Fields15
  Dim var_148 As Variant
  Dim var_94 As Long
  loc_10171FA: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_101721D: var_D8 = CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & "CFORM" & "' And VP.Date_From<=") 'String
  loc_101722B: Proc_6_7_F26918(var_C8, MemVar_1F950EC, var_D8)
  loc_1017233: var_E8 = var_12C & var_C8 
  loc_101723C: var_108 = var_E8 & " Order By VP.Date_From DESC" 
  loc_1017247: Me.Connection15.Execute CStr(var_108), -1, var_130
  loc_1017252: Set var_8C = var_130
  loc_1017288: If (var_8C.RecordCount <= 0) Then
  loc_10172A4:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_108)
  loc_10172BC:   Proc_24_85_10173DC = 0
  loc_10172C2: End If
  loc_10172D6: If (var_8C.RecordCount > 0) Then
  loc_10172F3:   var_148 = var_8C.Fields.Item("Number_Method")
  loc_1017315:   If (var_148.Value = "Manual") Then
  loc_1017326:     Set var_130 = Me.Txt
  loc_101732C:     Call 0.Method_Proc_24_85_10173DC0 (CInt(&H48), var_148)
  loc_1017342:     var_94 = CLng(Val(var_148.Text))
  loc_1017352:   Else
  loc_101736C:     var_148 = var_8C.Fields.Item("start_srl_no")
  loc_1017381:     var_D8 = (var_148.Value + 1)
  loc_1017387:     var_94 = CLng(var_D8)
  loc_1017398:   End If
  loc_1017398: End If
  loc_10173AB: Set var_130 = Me.Txt
  loc_10173B1: Call 0.Method_Proc_24_85_10173DC0 (CInt(&H48), var_148, CStr(var_94))
  loc_10173B9: var_148.Text = var_94
  loc_10173D3: Set var_8C = Nothing
  loc_10173D6: Proc_24_85_10173DC = var_94
End Sub

Public Sub Proc_24_86_E7F2F0
  'Data Table: 5A238C
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_E7F2AD: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_E7F2B7:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_E7F2BF:   var_D0 = CVar(CLng(0)) 'Long
  loc_E7F2C9:   var_9C = CVar(CStr(var_86)) 'String
  loc_E7F2D1:   Set var_8C = Me.FGrid
  loc_E7F2D7:   LateIdCallSt
  loc_E7F2E8: Next var_A0 'Integer
  loc_E7F2ED: Exit Sub
End Sub

Public Sub Proc_24_87_FBD1E8
  'Data Table: 5A238C
  Dim var_90 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_94 As String
  loc_FBD04E: Set var_8C = Me.Txt
  loc_FBD054: Call 0.Method_Proc_24_87_FBD1E80 (CInt(&H47), var_90)
  loc_FBD078: If (CDbl(Val(var_90.Text)) <> CDbl(1)) Then
  loc_FBD0B2:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FBD0D4:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FBD0E5:       Set var_8C = Me.Txt
  loc_FBD0EB:       Call 0.Method_Proc_24_87_FBD1E80 (CInt(&H47), var_90)
  loc_FBD101:       var_86 = CInt(Val(var_90.Text))
  loc_FBD11B:       Set var_8C = Me.FGrid
  loc_FBD12C:       Call Proc_24_86_E7F2F0(FGrid.DispID_10000, CVar(CLng(var_86)))
  loc_FBD134:       Call Proc_24_79_E41084(var_116)
  loc_FBD14C:       Set var_8C = Me.Txt
  loc_FBD152:       Call 0.Method_Proc_24_87_FBD1E80 (CInt(&H47), var_90)
  loc_FBD177:       Set var_8C = Me.Txt
  loc_FBD17D:       Call 0.Method_Proc_24_87_FBD1E80 (CInt(&H47), var_90)
  loc_FBD185:       var_94 = CStr(var_116)
  loc_FBD196:       Call Proc_24_78_13A8F20(CInt(Val(var_94)))
  loc_FBD1A5:       Call Proc_24_80_F9D144(var_86)
  loc_FBD1AA:     End If
  loc_FBD1AA:   End If
  loc_FBD1AD: Else
  loc_FBD1B3:   Call 0.Method_arg_50 (var_94)
  loc_FBD1D4:   MsgBox("Primery Guest Information Can't be deleted!", &H10, CVar(var_94), var_F4, var_114)
  loc_FBD1E4: End If
  loc_FBD1E4: Exit Sub
End Sub

Public Sub Proc_24_88_EB88AC(arg_C) 'EB88AC
  'Data Table: 5A238C
  Dim Me As Recordset15
  loc_EB8814: On Error Goto loc_EB88A5
  loc_EB881B: Set var_88 = Me.TopCtrl1
  loc_EB8821: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_EB883A: If (CStr() = "Add") Then
  loc_EB883D:   Exit Sub
  loc_EB883E: End If
  loc_EB8855: If (Me.RecordCount > 0) Then
  loc_EB885E:   Me.MoveFirst
  loc_EB886B:   If (arg_C <> vbNullString) Then
  loc_EB8893:     Me.Find "SearchCode='" & arg_C & "'", 0, 1
  loc_EB889F:     Call MoveRec()
  loc_EB88A4:   End If
  loc_EB88A4: End If
  loc_EB88A4: Exit Sub
  loc_EB88A5: ' Referenced from: EB8814
  loc_EB88A5: Proc_6_60_E63754(var_B4)
  loc_EB88AA: Exit Sub
End Sub

Public Sub Proc_24_89_1020320(arg_C) '1020320
  'Data Table: 5A238C
  Dim var_98 As Variant
  Dim var_8C As Variant
  loc_10200FA: Set var_8C = Me.Txt
  loc_1020100: Call 0.Method_Proc_24_89_1020320C (var_8E, var_86)
  loc_1020110: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1020126:   Set var_8C = Me.Txt
  loc_102012C:   Call 0.Method_Proc_24_89_10203200 (CInt(var_86), var_98)
  loc_1020134:   var_98.Enabled = arg_C
  loc_1020143: Next var_92 'Byte
  loc_1020155: Me.BtnVisa.Enabled = False
  loc_1020169: Me.FrameFor.Visible = False
  loc_102017D: Me.FrmFind.Visible = False
  loc_1020192: Set var_8C = Me.Txt
  loc_1020198: Call 0.Method_Proc_24_89_10203200 (CInt(&H48), var_98)
  loc_10201A0: var_98.Enabled = False
  loc_10201B9: Set var_8C = Me.Txt
  loc_10201BF: Call 0.Method_Proc_24_89_10203200 (CInt(&H47), var_98)
  loc_10201C7: var_98.Enabled = False
  loc_10201E0: Set var_8C = Me.Txt
  loc_10201E6: Call 0.Method_Proc_24_89_10203200 (CInt(&H12), var_98)
  loc_10201EE: var_98.Enabled = False
  loc_1020207: Set var_8C = Me.Txt
  loc_102020D: Call 0.Method_Proc_24_89_10203200 (CInt(&H45), var_98)
  loc_1020215: var_98.Enabled = False
  loc_102022E: Set var_8C = Me.Txt
  loc_1020234: Call 0.Method_Proc_24_89_10203200 (CInt(&H14), var_98)
  loc_102023C: var_98.Enabled = False
  loc_1020255: Set var_8C = Me.Txt
  loc_102025B: Call 0.Method_Proc_24_89_10203200 (CInt(&H13), var_98)
  loc_1020263: var_98.Enabled = False
  loc_102027C: Set var_8C = Me.Txt
  loc_1020282: Call 0.Method_Proc_24_89_10203200 (CInt(3), var_98)
  loc_102028A: var_98.Enabled = False
  loc_102029A: Set var_8C = Me.TopCtrl1
  loc_10202A0: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000D()
  loc_10202B4: Me.btnAddGuestProf.Enabled = Not(CBool())
  loc_10202C7: Set var_8C = Me.TopCtrl1
  loc_10202CD: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000D()
  loc_10202E1: Me.btnWebProfile.Enabled = Not(CBool())
  loc_10202F4: Set var_8C = Me.TopCtrl1
  loc_10202FA: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000D()
  loc_102030E: Me.CmdDummyGuestProf.Enabled = Not(CBool())
  loc_102031D: Exit Sub
End Sub

Public Sub Proc_24_90_FF143C
  'Data Table: 5A238C
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Image
  loc_FF124A: global_116 = vbNullString
  loc_FF125C: Set var_8C = Me.Txt
  loc_FF1262: Call 0.Method_Proc_24_90_FF143CC (var_8E, var_86)
  loc_FF1272: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FF1288:   Set var_8C = Me.Txt
  loc_FF128E:   Call 0.Method_Proc_24_90_FF143C0 (CInt(var_86), var_98)
  loc_FF1296:   var_98.Text = vbNullString
  loc_FF12B2:   Set var_8C = Me.Txt
  loc_FF12B8:   Call 0.Method_Proc_24_90_FF143C0 (CInt(var_86), var_98)
  loc_FF12C0:   var_98.Tag = vbNullString
  loc_FF12CF: Next var_92 'Byte
  loc_FF12EC: Call 0.Method_Proc_24_90_FF143C0 (CInt(&HB), var_98)
  loc_FF12F4: var_98.Text = global_84
  loc_FF131E: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_FF1333: Me.GuestImage.Picture = Me.Txt
  loc_FF134C: Me.GuestImage.Tag = vbNullString
  loc_FF135A: Set var_8C = Me.GuestImage
  loc_FF1360: var_8C.Visible = True
  loc_FF1386: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_FF139B: Me.IdProofImage.Picture = var_8C
  loc_FF13B4: Me.IdProofImage.Tag = vbNullString
  loc_FF13C2: Set var_8C = Me.IdProofImage
  loc_FF13C8: var_8C.Visible = True
  loc_FF13EE: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_FF1403: Me.GuestSign.Picture = var_8C
  loc_FF141C: Me.GuestSign.Tag = vbNullString
  loc_FF1430: Me.GuestSign.Visible = True
  loc_FF1438: Exit Sub
End Sub

Public Sub Proc_24_91_FD9D34
  'Data Table: 5A238C
  loc_FD9B70: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_FD9B82:   Me.DGCity.Visible = False
  loc_FD9B8A: End If
  loc_FD9BA6: If (CBool(Me.DGCountry.Visible) = &HFF) Then
  loc_FD9BB8:   Me.DGCountry.Visible = False
  loc_FD9BC0: End If
  loc_FD9BDC: If (CBool(Me.DGState.Visible) = &HFF) Then
  loc_FD9BEE:   Me.DGState.Visible = False
  loc_FD9BF6: End If
  loc_FD9C12: If (CBool(Me.DGGuestStatus.Visible) = &HFF) Then
  loc_FD9C24:   Me.DGGuestStatus.Visible = False
  loc_FD9C2C: End If
  loc_FD9C48: If (CBool(Me.DGNationality.Visible) = &HFF) Then
  loc_FD9C5A:   Me.DGNationality.Visible = False
  loc_FD9C62: End If
  loc_FD9C7D: If (Me.FrmList.Visible = &HFF) Then
  loc_FD9C8C:   Me.FrmList.Visible = False
  loc_FD9C94: End If
  loc_FD9CAF: If (Me.FrmList1.Visible = &HFF) Then
  loc_FD9CBE:   Me.FrmList1.Visible = False
  loc_FD9CC6: End If
  loc_FD9CE2: If (CBool(Me.DGZipCode.Visible) = &HFF) Then
  loc_FD9CF4:   Me.DGZipCode.Visible = False
  loc_FD9CFC: End If
  loc_FD9D18: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FD9D2A:   Me.FGPoint.Visible = False
  loc_FD9D32: End If
  loc_FD9D32: Exit Sub
End Sub

Public Sub Proc_24_92_16CCD08
  'Data Table: 5A238C
  Dim var_D8 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_10C As String
  Dim unk_5A23BF As Connection15
  Dim var_9C As Recordset15
  Dim var_88 As Integer
  Dim var_140 As String
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_12C As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_130 As Fields15
  Dim var_1F4 As Variant
  Dim var_25C As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_27C As Variant
  Dim var_29C As Variant
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_204 As Variant
  Dim var_86 As Integer
  loc_16CB378: On Error Goto loc_16CCD00
  loc_16CB37D: Close 1
  loc_16CB386: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16CB397: var_D8 = "Select GF.Name As GuestName,GF.Add1,GF.Add2,GF.Nationality,GF.MaritalStatus,GFor.Age,City.CityName AS CityName,GF.ZipCode AS Zip,State.Name AS StateName,GF.Gender,GFor.AddIndia,GFor.PurVisit,GFor.DateArr,GFor.ArrPlace,GFor.ArrFrom,GFor.PropStay,GFor.VisaIssAuth,GFor.Extension,Country.Name As CountryName,GFor.PassNo,GFor.IssDate,GFor.IssPlace,GFor.PassExpDate,GFor.VisaNo,GFor.VisaIssDate,GFor.VisaIssPlace,GFor.ExpDate AS VisaExpDate,GFor.VisaDuration,RO.ChkInDate,RO.DepDate From (((((RoomOcc RO Left Join GuestProf GF ON RO.GuestProf=GF.Code) Left Join GuestProfFor GFor ON GF.Code=GFor.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) LEFT JOIN Country ON City.Country = Country.Code) Where GF.Type='Foreign' And RO.FolioNo IN (Select FolioNo From GuestFolio Where GuestProf='"
  loc_16CB3D2: var_108 = var_D8 & Me.Fields.Item("SearchCode").Value & "')" 
  loc_16CB3D6: var_10C = CStr(var_108)
  loc_16CB3E0: unk_5A23BF.Execute var_10C, var_12C, -1
  loc_16CB3EB: Set var_9C = var_130
  loc_16CB419: If (var_9C.RecordCount <= 0) Then
  loc_16CB422:   Call 0.Method_arg_50 (var_10C)
  loc_16CB443:   MsgBox("** Guest is not Check in Hotel **", &H40, CVar(var_10C), var_108, var_12C)
  loc_16CB453:   Exit Sub
  loc_16CB454: End If
  loc_16CB456: var_88 = 1
  loc_16CB46D: If (var_9C.RecordCount > 0) Then
  loc_16CB470:   ' Referenced from: 16CCC7E
  loc_16CB47F:   If Not(var_9C.EOF) Then
  loc_16CB488:     If (var_86 = 0) Then
  loc_16CB4B2:       Print 1, Proc_6_128_1026560("The Foreigner's Registration Rules, 1939 ", "B", &H50)
  loc_16CB4C8:       Print 1, vbNullString
  loc_16CB4DF:       var_10C = "Form - C"
  loc_16CB4F5:       Print 1, Proc_6_128_1026560("The Foreigner's Registration Rules, 1939 ", "B", &H50)
  loc_16CB50B:       Print 1, vbNullString
  loc_16CB538:       Print 1, Proc_6_128_1026560("Foreigner's Arrival Report", "B", &H50)
  loc_16CB5A6:       var_108 = (Space(&H19) + Chr(&H1B))
  loc_16CB5AD:       var_154 = (var_108 + Chr(&H45))
  loc_16CB5B7:       var_174 = (var_154 + CVar(Proc_6_45_EADFB8("(Rule 10 & 14) ", &HF)))
  loc_16CB5BE:       var_194 = (var_174 + Chr(&H1B))
  loc_16CB5C5:       var_1B4 = (var_194 + Chr(&H46))
  loc_16CB5CB:       Print 1, var_1B4
  loc_16CB61D:       var_108 = (Space(&H14) + CVar(Proc_6_45_EADFB8("(To be Completed in duplicate) ", &H1F)))
  loc_16CB623:       Print 1, var_108
  loc_16CB63E:       Print 1, vbNullString
  loc_16CB649:       Print 1, vbNullString
  loc_16CB671:       var_E8 = (Space(2) + "No. ")
  loc_16CB678:       var_12C = (CVar(Proc_6_45_EADFB8("(To be Completed in duplicate) ", &H1F)) + Space(4))
  loc_16CB684:       var_164 = (Chr(&H45) + CVar(CStr(var_88)))
  loc_16CB68A:       Print 1, CVar(Proc_6_45_EADFB8("(Rule 10 & 14) ", &HF))
  loc_16CB6A4:       Print 1, vbNullString
  loc_16CB6E6:       var_108 = (Space(6) + CVar(Proc_6_45_EADFB8("Name of the Hotel : ", &H14)))
  loc_16CB6F0:       var_154 = (Space(4) + CVar(Proc_6_45_EADFB8(MemVar_1F95130, &H32)))
  loc_16CB6F6:       Print 1, CVar(CStr(var_88))
  loc_16CB717:       Print 1, vbNullString
  loc_16CB722:       Print 1, vbNullString
  loc_16CB76F:       var_108 = (Space(&H14) + Chr(&H1B))
  loc_16CB776:       var_154 = (Space(4) + Chr(&H45))
  loc_16CB77A:       var_B0 = "PART - A (Foreigner's Personal Particulars)"
  loc_16CB77F:       var_164 = (CVar(CStr(var_88)) + "No. ")
  loc_16CB786:       var_184 = (CVar(Proc_6_45_EADFB8("(Rule 10 & 14) ", &HF)) + Chr(&H1B))
  loc_16CB78D:       var_1A4 = (Chr(&H1B) + Chr(&H46))
  loc_16CB793:       Print 1, Chr(&H46)
  loc_16CB7B5:       Print 1, vbNullString
  loc_16CB823:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("1.  Name (full name in Capital letters Surname first)  ", &H37)))
  loc_16CB82D:       var_164 = (Space(4) + CVar(Proc_6_45_EADFB8(CStr(var_9C.Fields.Item("GuestName").Value), &H18)))
  loc_16CB833:       Print 1, CVar(Proc_6_45_EADFB8("(Rule 10 & 14) ", &HF))
  loc_16CB961:       var_174 = (Trim(CVar(var_9C.Fields.Item("Add1"))) + ",")
  loc_16CB968:       var_1A4 = (Chr(&H1B) + Trim(CVar(var_9C.Fields.Item("Add2"))))
  loc_16CB971:       var_1B4 = (Chr(&H46) + ",")
  loc_16CB978:       var_214 = (var_1B4 + Trim(CVar(var_9C.Fields.Item("CityName"))))
  loc_16CB981:       var_234 = (var_214 + ",")
  loc_16CB988:       var_27C = (var_234 + Trim(CVar(var_9C.Fields.Item("StateName"))))
  loc_16CB991:       var_29C = (var_27C + ",")
  loc_16CB998:       var_2E4 = (var_29C + Trim(CVar(var_9C.Fields.Item("CountryName"))))
  loc_16CB9B2:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("2.  Permanent Address  ", &H17)))
  loc_16CB9BB:       var_12C = (Space(4) + vbNullString)
  loc_16CB9C5:       var_304 = (var_9C.Fields.Item("GuestName").Value + CVar(Proc_6_45_EADFB8(CStr(var_2E4), &H37)))
  loc_16CB9CB:       Print 1, var_304
  loc_16CBA84:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("3.  Nationality  ", &H11)))
  loc_16CBA8E:       var_164 = (Space(4) + CVar(Proc_6_45_EADFB8(CStr(var_9C.Fields.Item("Nationality").Value), &HF)))
  loc_16CBA94:       Print 1, Trim(CVar(var_9C.Fields.Item("Add1")))
  loc_16CBB92:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("4.  Sex  Male / Female  ", &H1E)))
  loc_16CBB9C:       var_164 = (Space(4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Gender")), var_88), 6)))
  loc_16CBBA3:       var_184 = (Trim(CVar(var_9C.Fields.Item("Add1"))) + Space(&HA))
  loc_16CBBAD:       var_1A4 = (CVar(var_9C.Fields.Item("Add2")) + CVar(Proc_6_45_EADFB8("5. Age", 6)))
  loc_16CBBB4:       var_1F4 = (Chr(&H46) + Space(6))
  loc_16CBBBE:       var_234 = (CVar(var_9C.Fields.Item("CityName")) + CVar(Proc_6_45_EADFB8(CStr(var_9C.Fields.Item("Age").Value), &HF)))
  loc_16CBBC7:       var_25C = (var_234 + " Years")
  loc_16CBBCD:       Print 1, CVar(var_9C.Fields.Item("StateName"))
  loc_16CBC8B:       var_140 = "Married / Un-married "
  loc_16CBCA2:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("6.  Marital Status  ", &H19)))
  loc_16CBCAC:       var_164 = (Space(4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_9C.Fields.Item("MaritalStatus"))), 9)))
  loc_16CBCB3:       var_184 = (Trim(CVar(var_9C.Fields.Item("Add1"))) + Space(5))
  loc_16CBCBD:       var_1A4 = (CVar(var_9C.Fields.Item("Add2")) + CVar(Proc_6_45_EADFB8("5. Age", &H15)))
  loc_16CBCC3:       Print 1, Chr(&H46)
  loc_16CBD5C:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("7.  Address in India, If any  ", &H1E)))
  loc_16CBD66:       var_164 = (Space(4) + CVar(Proc_6_45_EADFB8(CStr(var_9C.Fields.Item("AddIndia").Value), &H28)))
  loc_16CBD6C:       Print 1, Trim(CVar(var_9C.Fields.Item("Add1")))
  loc_16CBDFB:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("8.  Purpose of visit  ", &H16)))
  loc_16CBE05:       var_164 = (Space(4) + CVar(Proc_6_45_EADFB8(CStr(var_9C.Fields.Item("PurVisit").Value), &H19)))
  loc_16CBE0B:       Print 1, Trim(CVar(var_9C.Fields.Item("Add1")))
  loc_16CBEE7:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("9.  Date & Place of arrival in India  ", &H2D)))
  loc_16CBEEE:       var_174 = (Space(4) + Format(CVar(var_9C.Fields.Item("DateArr")), "DD/MM/YYYY"))
  loc_16CBEF5:       var_194 = (Space(5) + Space(4))
  loc_16CBEFF:       var_1F4 = (CVar(Proc_6_45_EADFB8("5. Age", &H15)) + CVar(Proc_6_45_EADFB8(CStr(var_9C.Fields.Item("ArrPlace").Value), &H14, 1)))
  loc_16CBF05:       Print 1, CVar(var_9C.Fields.Item("CityName"))
  loc_16CBFAF:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("10. Arrival from (Name of last destination)", &H2B)))
  loc_16CBFB6:       var_154 = (Space(4) + Space(5))
  loc_16CBFC0:       var_184 = ("DD/MM/YYYY" + CVar(Proc_6_45_EADFB8(CStr(var_9C.Fields.Item("ArrFrom").Value), &H14)))
  loc_16CBFC6:       Print 1, Space(4)
  loc_16CC066:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("11. Proposed duration of stay in India", &H26)))
  loc_16CC06D:       var_154 = (Space(4) + Space(5))
  loc_16CC077:       var_184 = ("DD/MM/YYYY" + CVar(Proc_6_45_EADFB8(CStr(var_9C.Fields.Item("PropStay").Value), &HA)))
  loc_16CC07D:       Print 1, Space(4)
  loc_16CC121:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("12. Arrival date in the Hotel  ", &H20)))
  loc_16CC128:       var_154 = (Space(4) + Space(5))
  loc_16CC12F:       var_194 = ("DD/MM/YYYY" + Format(CVar(var_9C.Fields.Item("ChkInDate")), "DD/MM/YYYY"))
  loc_16CC135:       Print 1, CVar(Proc_6_45_EADFB8("5. Age", &H15))
  loc_16CC1D3:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("13. Proposed Departure date from the Hotel", &H2A, 1)))
  loc_16CC1DA:       var_154 = (Space(4) + Space(5))
  loc_16CC1E1:       var_194 = ("DD/MM/YYYY" + Format(CVar(var_9C.Fields.Item("DepDate")), "DD/MM/YYYY"))
  loc_16CC1E7:       Print 1, CVar(Proc_6_45_EADFB8("5. Age", &H15))
  loc_16CC211:       Print 1, vbNullString
  loc_16CC25E:       var_108 = (Space(&HF) + Chr(&H1B))
  loc_16CC265:       var_154 = (Space(4) + Chr(&H45))
  loc_16CC269:       var_B0 = "PART - B (Particulars of P.P. & Visa) "
  loc_16CC26E:       var_164 = ("DD/MM/YYYY" + "DepDate")
  loc_16CC275:       var_184 = (CVar(var_9C.Fields.Item("DepDate")) + Chr(&H1B))
  loc_16CC27C:       var_1A4 = (Format(CVar(var_9C.Fields.Item("DepDate")), "DD/MM/YYYY") + Chr(&H46))
  loc_16CC282:       Print 1, var_9C.Fields.Item("ArrPlace").Value
  loc_16CC2A4:       Print 1, vbNullString
  loc_16CC31F:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("1.  Number of Passport  ", &H18, 1, 1)))
  loc_16CC326:       var_154 = (Space(4) + Space(5))
  loc_16CC330:       var_184 = ("DD/MM/YYYY" + CVar(Proc_6_45_EADFB8(CStr(var_9C.Fields.Item("PassNo").Value), &HF, 1)))
  loc_16CC336:       Print 1, Format(CVar(var_9C.Fields.Item("DepDate")), "DD/MM/YYYY")
  loc_16CC3DA:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("2.  Date of issue of Passport  ", &H1F)))
  loc_16CC3E1:       var_154 = (Space(4) + Space(5))
  loc_16CC3E8:       var_194 = ("DD/MM/YYYY" + Format(CVar(var_9C.Fields.Item("IssDate")), "DD/MM/YYYY"))
  loc_16CC3EE:       Print 1, Chr(&H46)
  loc_16CC488:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("3.  Place of issue of Passport  ", &H20, 1)))
  loc_16CC48F:       var_154 = (Space(4) + Space(5))
  loc_16CC499:       var_184 = ("DD/MM/YYYY" + CVar(Proc_6_45_EADFB8(CStr(var_9C.Fields.Item("IssPlace").Value), &H14, 1)))
  loc_16CC49F:       Print 1, Format(CVar(var_9C.Fields.Item("IssDate")), "DD/MM/YYYY")
  loc_16CC543:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("4.  Date of expiry of Passport  ", &H20)))
  loc_16CC54A:       var_154 = (Space(4) + Space(5))
  loc_16CC551:       var_194 = ("DD/MM/YYYY" + Format(CVar(var_9C.Fields.Item("PassExpDate")), "DD/MM/YYYY"))
  loc_16CC557:       Print 1, Chr(&H46)
  loc_16CC62D:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("5.  Number of visa with Date  ", &H1E, 1)))
  loc_16CC634:       var_154 = (Space(4) + Space(5))
  loc_16CC63E:       var_184 = ("DD/MM/YYYY" + CVar(Proc_6_45_EADFB8(CStr(var_9C.Fields.Item("VisaNo").Value), &HF, 1)))
  loc_16CC647:       var_194 = (Format(CVar(var_9C.Fields.Item("PassExpDate")), "DD/MM/YYYY") + "  ")
  loc_16CC651:       var_1F4 = (Chr(&H46) + CVar(Proc_6_45_EADFB8(CStr(var_9C.Fields.Item("VisaIssDate").Value), &HC)))
  loc_16CC657:       Print 1, CVar(var_9C.Fields.Item("CityName"))
  loc_16CC6BE:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("6.  Place of issue of visa and the  ", &H24)))
  loc_16CC6C4:       Print 1, Space(4)
  loc_16CC791:       var_108 = (Space(6) + CVar(Proc_6_45_EADFB8("name of issuing authority  ", &H23)))
  loc_16CC79B:       var_164 = (Space(4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_9C.Fields.Item("VisaIssPlace")), 1), &HC)))
  loc_16CC7A2:       var_184 = (var_9C.Fields.Item("VisaNo").Value + Space(5))
  loc_16CC7AC:       var_1B4 = (Format(CVar(var_9C.Fields.Item("PassExpDate")), "DD/MM/YYYY") + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_9C.Fields.Item("VisaIssAuth"))), &H19)))
  loc_16CC7B2:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_9C.Fields.Item("VisaIssDate").Value), &HC))
  loc_16CC856:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("7.  Duration of visa  ", &H16)))
  loc_16CC860:       var_164 = (Space(4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_9C.Fields.Item("VisaDuration"))), &HA)))
  loc_16CC866:       Print 1, var_9C.Fields.Item("VisaNo").Value
  loc_16CC8F7:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("8.  Date of expiry of visa  ", &H1C)))
  loc_16CC8FE:       var_174 = (Space(4) + Format(CVar(var_9C.Fields.Item("VisaExpDate")), "DD/MM/YYYY"))
  loc_16CC904:       Print 1, Space(5)
  loc_16CC951:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("9.  Number,Place & Date of issue of  ", &H25, 1)))
  loc_16CC957:       Print 1, Space(4)
  loc_16CC9D8:       var_108 = (Space(6) + CVar(Proc_6_45_EADFB8("extension with detail  ", &H1B)))
  loc_16CC9E2:       var_164 = (Space(4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Extension")), 1), &H32)))
  loc_16CC9E8:       Print 1, Format(CVar(var_9C.Fields.Item("VisaExpDate")), "DD/MM/YYYY")
  loc_16CCA12:       Print 1, vbNullString
  loc_16CCA1D:       Print 1, vbNullString
  loc_16CCA28:       Print 1, vbNullString
  loc_16CCA33:       Print 1, vbNullString
  loc_16CCA3E:       Print 1, vbNullString
  loc_16CCADE:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("Date ", 5)))
  loc_16CCAE5:       var_174 = (Space(4) + Format(Date, "DD/MM/YYYY"))
  loc_16CCAEC:       var_194 = (Space(5) + Space(&HC))
  loc_16CCAF6:       var_1B4 = (CVar(var_9C.Fields.Item("VisaIssAuth")) + CVar(Proc_6_45_EADFB8("Manager's Signature ", &H14, 1)))
  loc_16CCAFD:       var_204 = (CVar(Proc_6_45_EADFB8(CStr(var_9C.Fields.Item("VisaIssDate").Value), &HC)) + Space(&HC))
  loc_16CCB07:       var_234 = (var_9C.Fields.Item("Age").Value + CVar(Proc_6_45_EADFB8("Visitor's Signature ", &H14)))
  loc_16CCB0D:       Print 1, var_234
  loc_16CCB48:       Print 1, vbNullString
  loc_16CCB53:       Print 1, vbNullString
  loc_16CCB5E:       Print 1, vbNullString
  loc_16CCB91:       var_13C = Proc_6_45_EADFB8("This copy should be sent to the Ministry of Home Affairs (Central Foreigners Bureau) New Delhi, as", &H62)
  loc_16CCB9A:       var_108 = (Chr(&HF) + Space(7))
  loc_16CCBA4:       var_154 = (Space(4) + CVar(var_13C))
  loc_16CCBAA:       Print 1, "DD/MM/YYYY"
  loc_16CCBFD:       var_108 = (Space(2) + CVar(Proc_6_45_EADFB8("prescribed under Section 3(a) of the Registration of Foreigners Act. 1939.", &H4A)))
  loc_16CCC04:       var_154 = (Space(4) + Chr(&H12))
  loc_16CCC0A:       Print 1, "DD/MM/YYYY"
  loc_16CCC24:     End If
  loc_16CCC2A:     var_86 = (var_86 + &H35)
  loc_16CCC2D:     ' Referenced from: 16CCC4A
  loc_16CCC33:     If (var_86 <= &H45) Then
  loc_16CCC3B:       Print 1, vbNullString
  loc_16CCC47:       var_86 = (var_86 + 1)
  loc_16CCC4A:       GoTo loc_16CCC2D
  loc_16CCC4D:     End If
  loc_16CCC4F:     var_86 = 0
  loc_16CCC58:     var_88 = (var_88 + 1)
  loc_16CCC6D:     Print 1, Chr(&HC)
  loc_16CCC79:     var_9C.MoveNext
  loc_16CCC7E:     GoTo loc_16CB470
  loc_16CCC81:   End If
  loc_16CCC81: End If
  loc_16CCC83: Close 1
  loc_16CCC8C: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16CCC9C: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_16CCCA7: Close 1
  loc_16CCCB1: If (MemVar_1F953BC = "Y") Then
  loc_16CCCCD:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16CCCD7: Else
  loc_16CCCF0:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16CCCF7: End If
  loc_16CCCFC: Set var_9C = Nothing
  loc_16CCCFF: Exit Sub
  loc_16CCD00: ' Referenced from: 16CB378
  loc_16CCD00: Proc_6_60_E63754(var_88, var_86, var_86)
  loc_16CCD05: Exit Sub
End Sub

Public Sub Proc_24_93_15F019C
  'Data Table: 5A238C
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  loc_15EEDA8: Set var_A4 = Me.Txt
  loc_15EEDAE: Call 0.Method_Proc_24_93_15F019C0 (CInt(0), var_A8)
  loc_15EEDB6: var_A8.MaxLength = Me.Fields.Item("GuestName").DefinedSize
  loc_15EEDFE: Set var_A4 = Me.Txt
  loc_15EEE04: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H4B), var_A8)
  loc_15EEE0C: var_A8.MaxLength = Me.Fields.Item("FatherName").DefinedSize
  loc_15EEE54: Set var_A4 = Me.Txt
  loc_15EEE5A: Call 0.Method_Proc_24_93_15F019C0 (CInt(1), var_A8)
  loc_15EEE62: var_A8.MaxLength = Me.Fields.Item("GuestAdd1").DefinedSize
  loc_15EEEAA: Set var_A4 = Me.Txt
  loc_15EEEB0: Call 0.Method_Proc_24_93_15F019C0 (CInt(2), var_A8)
  loc_15EEEB8: var_A8.MaxLength = Me.Fields.Item("GuestAdd2").DefinedSize
  loc_15EEF00: Set var_A4 = Me.Txt
  loc_15EEF06: Call 0.Method_Proc_24_93_15F019C0 (CInt(3), var_A8)
  loc_15EEF0E: var_A8.MaxLength = Me.Fields.Item("Type").DefinedSize
  loc_15EEF56: Set var_A4 = Me.Txt
  loc_15EEF5C: Call 0.Method_Proc_24_93_15F019C0 (CInt(6), var_A8)
  loc_15EEF64: var_A8.MaxLength = Me.Fields.Item("CityName").DefinedSize
  loc_15EEFAC: Set var_A4 = Me.Txt
  loc_15EEFB2: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H12), var_A8)
  loc_15EEFBA: var_A8.MaxLength = Me.Fields.Item("StateName").DefinedSize
  loc_15EF002: Set var_A4 = Me.Txt
  loc_15EF008: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H14), var_A8)
  loc_15EF010: var_A8.MaxLength = Me.Fields.Item("ZipCode").DefinedSize
  loc_15EF058: Set var_A4 = Me.Txt
  loc_15EF05E: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H13), var_A8)
  loc_15EF066: var_A8.MaxLength = Me.Fields.Item("CountryName").DefinedSize
  loc_15EF0AE: Set var_A4 = Me.Txt
  loc_15EF0B4: Call 0.Method_Proc_24_93_15F019C0 (CInt(8), var_A8)
  loc_15EF0BC: var_A8.MaxLength = Me.Fields.Item("SplInstr").DefinedSize
  loc_15EF104: Set var_A4 = Me.Txt
  loc_15EF10A: Call 0.Method_Proc_24_93_15F019C0 (CInt(&HA), var_A8)
  loc_15EF112: var_A8.MaxLength = Me.Fields.Item("PhoneNo").DefinedSize
  loc_15EF15A: Set var_A4 = Me.Txt
  loc_15EF160: Call 0.Method_Proc_24_93_15F019C0 (CInt(&HC), var_A8)
  loc_15EF168: var_A8.MaxLength = Me.Fields.Item("FaxNo").DefinedSize
  loc_15EF1B0: Set var_A4 = Me.Txt
  loc_15EF1B6: Call 0.Method_Proc_24_93_15F019C0 (CInt(&HB), var_A8)
  loc_15EF1BE: var_A8.MaxLength = Me.Fields.Item("MobileNo").DefinedSize
  loc_15EF206: Set var_A4 = Me.Txt
  loc_15EF20C: Call 0.Method_Proc_24_93_15F019C0 (CInt(&HD), var_A8)
  loc_15EF214: var_A8.MaxLength = Me.Fields.Item("EmailId").DefinedSize
  loc_15EF25C: Set var_A4 = Me.Txt
  loc_15EF262: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H16), var_A8)
  loc_15EF26A: var_A8.MaxLength = Me.Fields.Item("Comments1").DefinedSize
  loc_15EF2B2: Set var_A4 = Me.Txt
  loc_15EF2B8: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H15), var_A8)
  loc_15EF2C0: var_A8.MaxLength = Me.Fields.Item("Comments2").DefinedSize
  loc_15EF308: Set var_A4 = Me.Txt
  loc_15EF30E: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H10), var_A8)
  loc_15EF316: var_A8.MaxLength = Me.Fields.Item("Comments3").DefinedSize
  loc_15EF35E: Set var_A4 = Me.Txt
  loc_15EF364: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H1E), var_A8)
  loc_15EF36C: var_A8.MaxLength = Me.Fields.Item("ConName").DefinedSize
  loc_15EF3B4: Set var_A4 = Me.Txt
  loc_15EF3BA: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H23), var_A8)
  loc_15EF3C2: var_A8.MaxLength = Me.Fields.Item("T1Field1").DefinedSize
  loc_15EF40A: Set var_A4 = Me.Txt
  loc_15EF410: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H22), var_A8)
  loc_15EF418: var_A8.MaxLength = Me.Fields.Item("T1Field2").DefinedSize
  loc_15EF460: Set var_A4 = Me.Txt
  loc_15EF466: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H21), var_A8)
  loc_15EF46E: var_A8.MaxLength = Me.Fields.Item("T1Field3").DefinedSize
  loc_15EF4B6: Set var_A4 = Me.Txt
  loc_15EF4BC: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H20), var_A8)
  loc_15EF4C4: var_A8.MaxLength = Me.Fields.Item("T1Field4").DefinedSize
  loc_15EF50C: Set var_A4 = Me.Txt
  loc_15EF512: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H1F), var_A8)
  loc_15EF51A: var_A8.MaxLength = Me.Fields.Item("T1Field5").DefinedSize
  loc_15EF562: Set var_A4 = Me.Txt
  loc_15EF568: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H3D), var_A8)
  loc_15EF570: var_A8.MaxLength = Me.Fields.Item("T1Field6").DefinedSize
  loc_15EF5B8: Set var_A4 = Me.Txt
  loc_15EF5BE: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H3C), var_A8)
  loc_15EF5C6: var_A8.MaxLength = Me.Fields.Item("T1Field7").DefinedSize
  loc_15EF60E: Set var_A4 = Me.Txt
  loc_15EF614: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H3B), var_A8)
  loc_15EF61C: var_A8.MaxLength = Me.Fields.Item("T1Field8").DefinedSize
  loc_15EF664: Set var_A4 = Me.Txt
  loc_15EF66A: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H1D), var_A8)
  loc_15EF672: var_A8.MaxLength = Me.Fields.Item("T2Field1").DefinedSize
  loc_15EF6BA: Set var_A4 = Me.Txt
  loc_15EF6C0: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H1B), var_A8)
  loc_15EF6C8: var_A8.MaxLength = Me.Fields.Item("T2Field2").DefinedSize
  loc_15EF710: Set var_A4 = Me.Txt
  loc_15EF716: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H1A), var_A8)
  loc_15EF71E: var_A8.MaxLength = Me.Fields.Item("T2Field3").DefinedSize
  loc_15EF766: Set var_A4 = Me.Txt
  loc_15EF76C: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H3F), var_A8)
  loc_15EF774: var_A8.MaxLength = Me.Fields.Item("T2Field4").DefinedSize
  loc_15EF7BC: Set var_A4 = Me.Txt
  loc_15EF7C2: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H3E), var_A8)
  loc_15EF7CA: var_A8.MaxLength = Me.Fields.Item("T2Field5").DefinedSize
  loc_15EF812: Set var_A4 = Me.Txt
  loc_15EF818: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H1C), var_A8)
  loc_15EF820: var_A8.MaxLength = Me.Fields.Item("T2Field6").DefinedSize
  loc_15EF868: Set var_A4 = Me.Txt
  loc_15EF86E: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H18), var_A8)
  loc_15EF876: var_A8.MaxLength = Me.Fields.Item("T2Field7").DefinedSize
  loc_15EF8BE: Set var_A4 = Me.Txt
  loc_15EF8C4: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H19), var_A8)
  loc_15EF8CC: var_A8.MaxLength = Me.Fields.Item("T2Field8").DefinedSize
  loc_15EF914: Set var_A4 = Me.Txt
  loc_15EF91A: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H41), var_A8)
  loc_15EF922: var_A8.MaxLength = Me.Fields.Item("Gender").DefinedSize
  loc_15EF96A: Set var_A4 = Me.Txt
  loc_15EF970: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H42), var_A8)
  loc_15EF978: var_A8.MaxLength = Me.Fields.Item("MaritalStatus").DefinedSize
  loc_15EF9C0: Set var_A4 = Me.Txt
  loc_15EF9C6: Call 0.Method_Proc_24_93_15F019C0 (CInt(7), var_A8)
  loc_15EF9CE: var_A8.MaxLength = Me.Fields.Item("GuestStatus").DefinedSize
  loc_15EFA16: Set var_A4 = Me.Txt
  loc_15EFA1C: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H24), var_A8)
  loc_15EFA24: var_A8.MaxLength = Me.Fields.Item("GuestForName").DefinedSize
  loc_15EFA6C: Set var_A4 = Me.Txt
  loc_15EFA72: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H26), var_A8)
  loc_15EFA7A: var_A8.MaxLength = Me.Fields.Item("GuestForAdd2").DefinedSize
  loc_15EFAC2: Set var_A4 = Me.Txt
  loc_15EFAC8: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H27), var_A8)
  loc_15EFAD0: var_A8.MaxLength = Me.Fields.Item("GuestForAdd1").DefinedSize
  loc_15EFB18: Set var_A4 = Me.Txt
  loc_15EFB1E: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H25), var_A8)
  loc_15EFB26: var_A8.MaxLength = Me.Fields.Item("ForNationality").DefinedSize
  loc_15EFB6E: Set var_A4 = Me.Txt
  loc_15EFB74: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H28), var_A8)
  loc_15EFB7C: var_A8.MaxLength = Me.Fields.Item("ArrFrom").DefinedSize
  loc_15EFBC4: Set var_A4 = Me.Txt
  loc_15EFBCA: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H29), var_A8)
  loc_15EFBD2: var_A8.MaxLength = Me.Fields.Item("Occu").DefinedSize
  loc_15EFC1A: Set var_A4 = Me.Txt
  loc_15EFC20: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H2A), var_A8)
  loc_15EFC28: var_A8.MaxLength = Me.Fields.Item("PurVisit").DefinedSize
  loc_15EFC70: Set var_A4 = Me.Txt
  loc_15EFC76: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H2B), var_A8)
  loc_15EFC7E: var_A8.MaxLength = Me.Fields.Item("Dest").DefinedSize
  loc_15EFCC6: Set var_A4 = Me.Txt
  loc_15EFCCC: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H2C), var_A8)
  loc_15EFCD4: var_A8.MaxLength = Me.Fields.Item("PropStay").DefinedSize
  loc_15EFD1C: Set var_A4 = Me.Txt
  loc_15EFD22: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H2D), var_A8)
  loc_15EFD2A: var_A8.MaxLength = Me.Fields.Item("ModeTravelUsed").DefinedSize
  loc_15EFD72: Set var_A4 = Me.Txt
  loc_15EFD78: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H30), var_A8)
  loc_15EFD80: var_A8.MaxLength = Me.Fields.Item("IssPlace").DefinedSize
  loc_15EFDC8: Set var_A4 = Me.Txt
  loc_15EFDCE: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H31), var_A8)
  loc_15EFDD6: var_A8.MaxLength = Me.Fields.Item("PassNo").DefinedSize
  loc_15EFE1E: Set var_A4 = Me.Txt
  loc_15EFE24: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H34), var_A8)
  loc_15EFE2C: var_A8.MaxLength = Me.Fields.Item("VisaDuration").DefinedSize
  loc_15EFE74: Set var_A4 = Me.Txt
  loc_15EFE7A: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H35), var_A8)
  loc_15EFE82: var_A8.MaxLength = Me.Fields.Item("VisaNo").DefinedSize
  loc_15EFECA: Set var_A4 = Me.Txt
  loc_15EFED0: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H36), var_A8)
  loc_15EFED8: var_A8.MaxLength = Me.Fields.Item("VisaIssPlace").DefinedSize
  loc_15EFF20: Set var_A4 = Me.Txt
  loc_15EFF26: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H37), var_A8)
  loc_15EFF2E: var_A8.MaxLength = Me.Fields.Item("VisaType").DefinedSize
  loc_15EFF76: Set var_A4 = Me.Txt
  loc_15EFF7C: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H38), var_A8)
  loc_15EFF84: var_A8.MaxLength = Me.Fields.Item("ArrPlace").DefinedSize
  loc_15EFFCC: Set var_A4 = Me.Txt
  loc_15EFFD2: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H37), var_A8)
  loc_15EFFDA: var_A8.MaxLength = Me.Fields.Item("VisaType").DefinedSize
  loc_15F0022: Set var_A4 = Me.Txt
  loc_15F0028: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H39), var_A8)
  loc_15F0030: var_A8.MaxLength = Me.Fields.Item("AddIndia").DefinedSize
  loc_15F0078: Set var_A4 = Me.Txt
  loc_15F007E: Call 0.Method_Proc_24_93_15F019C0 (CInt(&H3A), var_A8)
  loc_15F0086: var_A8.MaxLength = Me.Fields.Item("ModeTravelUsed").DefinedSize
  loc_15F00CE: Set var_A4 = Me.Txt
  loc_15F00D4: Call 0.Method_Proc_24_93_15F019C0 (CInt(&HF), var_A8)
  loc_15F00DC: var_A8.MaxLength = Me.Fields.Item("WorkPermit").DefinedSize
  loc_15F0124: Set var_A4 = Me.Txt
  loc_15F012A: Call 0.Method_Proc_24_93_15F019C0 (CInt(&HE), var_A8)
  loc_15F0132: var_A8.MaxLength = Me.Fields.Item("Extension").DefinedSize
  loc_15F017A: Set var_A4 = Me.Txt
  loc_15F0180: Call 0.Method_Proc_24_93_15F019C0 (CInt(9), var_A8)
  loc_15F0188: var_A8.MaxLength = Me.Fields.Item("VisaIssAuth").DefinedSize
  loc_15F0198: Exit Sub
End Sub
