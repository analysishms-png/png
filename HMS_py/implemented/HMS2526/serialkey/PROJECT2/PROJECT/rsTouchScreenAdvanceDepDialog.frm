VERSION 5.00
Begin VB.Form rsTouchScreenAdvanceDepDialog
  Caption = "Settlement Entry"
  BackColor = &HD6D7C6&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 12105
  ClientHeight = 6765
  LockControls = -1  'True
  StartUpPosition = 2 'CenterScreen
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 6270
    Width = 12105
    Height = 495
    Visible = 0   'False
    TabIndex = 95
  End
  Begin Frame FrCashCard
    BackColor = &H93B78C&
    Left = 60
    Top = 6960
    Width = 4965
    Height = 525
    Visible = 0   'False
    TabIndex = 89
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 33
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 255
      Enabled = 0   'False
      TabIndex = 91
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Left = 1110
      Top = 270
      Width = 3810
      Height = 255
      Enabled = 0   'False
      TabIndex = 90
      BorderStyle = 0 'None
      MaxLength = 35
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Caption = "C.C. No."
      Index = 3
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 720
      Height = 240
      TabIndex = 93
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
    Begin Label LblName
      Caption = "Holder"
      Index = 4
      ForeColor = &H0&
      Left = -15
      Top = 270
      Width = 615
      Height = 240
      TabIndex = 92
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
  Begin CommandButton CmdClosezz
    Caption = "Exit"
    Left = 6900
    Top = -15
    Width = 1605
    Height = 675
    Visible = 0   'False
    TabIndex = 87
    BeginProperty Font
      Name = "Tahoma"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin DataGrid DGMember
    Left = 9810
    Top = 8625
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 59
  End
  Begin Frame FrCCDet
    BackColor = &H93B78C&
    Left = 4815
    Top = 7230
    Width = 4065
    Height = 525
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 3
      BackColor = &HFFFFFF&
      Left = 3315
      Top = 270
      Width = 705
      Height = 255
      TabIndex = 12
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Left = 1110
      Top = 0
      Width = 2415
      Height = 255
      TabIndex = 9
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Left = 1110
      Top = 630
      Width = 2910
      Height = 255
      TabIndex = 10
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Left = 1110
      Top = 270
      Width = 1275
      Height = 255
      TabIndex = 11
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 1
      ForeColor = &H0&
      Left = 2415
      Top = 285
      Width = 870
      Height = 240
      TabIndex = 58
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
    Begin Label LblName
      Caption = "C.C. No."
      Index = 18
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 720
      Height = 240
      TabIndex = 43
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
    Begin Label LblName
      Caption = "Holder"
      Index = 19
      ForeColor = &H0&
      Left = -15
      Top = 630
      Width = 615
      Height = 240
      TabIndex = 42
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
    Begin Label LblName
      Caption = "Exp.Dt."
      Index = 20
      ForeColor = &H0&
      Left = -15
      Top = 270
      Width = 630
      Height = 240
      TabIndex = 41
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
  Begin Frame FrameQty
    BackColor = &H80000003&
    ForeColor = &H8000000A&
    Left = 6915
    Top = 660
    Width = 4335
    Height = 6105
    TabIndex = 68
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
      Caption = "00"
      Index = 15
      Left = 1125
      Top = 4995
      Width = 1050
      Height = 1050
      TabIndex = 88
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
      Caption = "Exit"
      Index = 12
      Left = 3225
      Top = 1845
      Width = 1050
      Height = 2100
      TabIndex = 86
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
      Caption = "OK"
      Index = 13
      Left = 3225
      Top = 3945
      Width = 1050
      Height = 2100
      TabIndex = 82
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
      Caption = "0"
      Index = 0
      Left = 75
      Top = 4995
      Width = 1050
      Height = 1050
      TabIndex = 81
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
      Left = 2175
      Top = 3945
      Width = 1050
      Height = 1050
      TabIndex = 78
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
      Left = 75
      Top = 2895
      Width = 1050
      Height = 1050
      TabIndex = 77
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
      Left = 1125
      Top = 2895
      Width = 1050
      Height = 1050
      TabIndex = 76
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
      Left = 2175
      Top = 2895
      Width = 1050
      Height = 1050
      TabIndex = 75
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
      Left = 75
      Top = 1845
      Width = 1050
      Height = 1050
      TabIndex = 74
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
      Left = 1125
      Top = 1845
      Width = 1050
      Height = 1050
      TabIndex = 73
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
      Caption = "9"
      Index = 9
      Left = 2175
      Top = 1845
      Width = 1050
      Height = 1050
      TabIndex = 72
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
      Caption = "."
      Index = 10
      Left = 2175
      Top = 4995
      Width = 1050
      Height = 1050
      TabIndex = 71
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
      Caption = "Back"
      Index = 11
      Left = 2175
      Top = 795
      Width = 2100
      Height = 1050
      TabIndex = 70
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
      Index = 14
      Left = 75
      Top = 795
      Width = 2100
      Height = 1050
      TabIndex = 69
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
      Caption = "2"
      Index = 2
      Left = 1125
      Top = 3945
      Width = 1050
      Height = 1050
      TabIndex = 79
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
      Caption = "1"
      Index = 1
      Left = 75
      Top = 3945
      Width = 1050
      Height = 1050
      TabIndex = 80
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
      Left = 75
      Top = 375
      Width = 4170
      Height = 360
      TabIndex = 83
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 11
      Locked = -1  'True
      BeginProperty Font
        Name = "Times New Roman"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblIndex
      Left = 960
      Top = 30
      Width = 1500
      Height = 300
      Visible = 0   'False
      TabIndex = 85
    End
    Begin Label LblVtype
      BackColor = &H80000003&
      ForeColor = &HFFFF&
      Left = 75
      Top = 0
      Width = 4155
      Height = 360
      TabIndex = 84
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FrameAmtType
    BackColor = &HD6D7C6&
    Left = 6915
    Top = 645
    Width = 5205
    Height = 6105
    TabIndex = 62
    BorderStyle = 0 'None
    Begin SSPanel SSPMain
      Left = 60
      Top = 60
      Width = 1695
      Height = 850
      TabIndex = 67
    End
    Begin SSPanel SSPGroup
      Index = 0
      Left = 60
      Top = 60
      Width = 1695
      Height = 850
      Visible = 0   'False
      TabIndex = 63
    End
    Begin SSPanel SSPItem
      Index = 0
      Left = 60
      Top = 60
      Width = 1695
      Height = 850
      Visible = 0   'False
      TabIndex = 64
    End
    Begin SSPanel SSPPrevious
      Left = 1755
      Top = 60
      Width = 1695
      Height = 850
      TabIndex = 65
    End
    Begin SSPanel SSPNext
      Left = 3450
      Top = 60
      Width = 1695
      Height = 850
      TabIndex = 66
    End
  End
  Begin Frame FrMem
    BackColor = &H93B78C&
    Left = 4815
    Top = 8865
    Width = 4950
    Height = 255
    Visible = 0   'False
    TabIndex = 60
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 32
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 255
      TabIndex = 8
      BorderStyle = 0 'None
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 28
      ForeColor = &H0&
      Left = 0
      Top = 0
      Width = 750
      Height = 240
      TabIndex = 61
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
  Begin Frame FrRem
    BackColor = &H93B78C&
    Left = 240
    Top = 2100
    Width = 4935
    Height = 255
    Visible = 0   'False
    TabIndex = 53
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 23
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 255
      TabIndex = 16
      BorderStyle = 0 'None
      MaxLength = 100
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblNarr
      Caption = "Narration"
      ForeColor = &H0&
      Left = 0
      Top = 0
      Width = 825
      Height = 240
      TabIndex = 54
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
  Begin Frame FrChqDet
    BackColor = &H93B78C&
    Left = 4815
    Top = 8040
    Width = 2595
    Height = 525
    Visible = 0   'False
    TabIndex = 50
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 21
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 255
      TabIndex = 14
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 22
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 270
      Width = 1440
      Height = 255
      TabIndex = 15
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Caption = "Cheque No."
      Index = 15
      ForeColor = &H0&
      Left = -15
      Top = 30
      Width = 1065
      Height = 240
      TabIndex = 52
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
    Begin Label LblName
      Caption = "Cheque Dt."
      Index = 16
      ForeColor = &H0&
      Left = -15
      Top = 285
      Width = 990
      Height = 240
      TabIndex = 51
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
  Begin Frame FrSendRoom
    BackColor = &H93B78C&
    Left = 4815
    Top = 6960
    Width = 3150
    Height = 255
    Visible = 0   'False
    TabIndex = 48
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 30
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 255
      TabIndex = 6
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      ForeColor = &H0&
      Left = 0
      Top = 0
      Width = 1020
      Height = 240
      TabIndex = 49
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
  Begin Frame FrEmp
    BackColor = &H93B78C&
    Left = 4815
    Top = 7770
    Width = 4935
    Height = 255
    Visible = 0   'False
    TabIndex = 46
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3795
      Height = 255
      TabIndex = 13
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 390
      Height = 240
      TabIndex = 47
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
  Begin Frame FrComp
    BackColor = &H93B78C&
    Left = 4815
    Top = 8580
    Width = 4950
    Height = 255
    Visible = 0   'False
    TabIndex = 44
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 31
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 255
      TabIndex = 7
      BorderStyle = 0 'None
      BeginProperty Font
        Name = "MS Sans Serif"
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
      ForeColor = &H0&
      Left = 0
      Top = 0
      Width = 870
      Height = 240
      TabIndex = 45
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
  Begin DataGrid DGCompany
    Left = 9810
    Top = 8265
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 35
  End
  Begin DataGrid DGTable
    Left = 9810
    Top = 7905
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin DataGrid DGPayType
    Left = 9810
    Top = 7545
    Width = 4485
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin DataGrid DGEmp
    Left = 9810
    Top = 7185
    Width = 4170
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 28
  End
  Begin Frame FrRest
    BackColor = &H93B78C&
    Left = 0
    Top = 1140
    Width = 6885
    Height = 1905
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 25
      BackColor = &HFFFFFF&
      Left = 3765
      Top = 690
      Width = 1395
      Height = 255
      Visible = 0   'False
      TabIndex = 5
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Left = 1350
      Top = 690
      Width = 1440
      Height = 255
      TabIndex = 4
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Left = 1350
      Top = 420
      Width = 3810
      Height = 255
      TabIndex = 3
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Left = 1350
      Top = 150
      Width = 3810
      Height = 255
      TabIndex = 2
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LTxt
      Index = 29
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 1155
      Width = 1275
      Height = 255
      TabIndex = 57
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Payable Amt"
      Index = 0
      BackColor = &HC7EBEB&
      ForeColor = &H0&
      Left = 5415
      Top = 945
      Width = 1275
      Height = 225
      TabIndex = 56
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
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
      BackColor = &HC7EBEB&
      ForeColor = &HFF&
      Left = 5415
      Top = 1395
      Width = 1275
      Height = 225
      TabIndex = 33
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Paid Amount"
      Index = 24
      BackColor = &HC7EBEB&
      ForeColor = &H808000&
      Left = 5415
      Top = 495
      Width = 1275
      Height = 225
      TabIndex = 32
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Tip"
      Index = 21
      ForeColor = &H0&
      Left = 3135
      Top = 690
      Width = 300
      Height = 240
      Visible = 0   'False
      TabIndex = 29
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
    Begin Shape Shape5
      BorderColor = &H400040&
      Left = 5280
      Top = 15
      Width = 1575
      Height = 1860
      BorderWidth = 2
      FillColor = &HC0FFC0&
    End
    Begin Shape Shape1
      Index = 1
      BackColor = &HE7F3FA&
      BorderColor = &H400040&
      Left = 75
      Top = 15
      Width = 5175
      Height = 1860
      BorderWidth = 2
      FillColor = &HE7F3FA&
    End
    Begin Label LblName
      Caption = "Amount"
      Index = 14
      ForeColor = &H0&
      Left = 240
      Top = 690
      Width = 675
      Height = 240
      TabIndex = 27
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
    Begin Label LblName
      Caption = "Room/T"
      Index = 12
      ForeColor = &H0&
      Left = 240
      Top = 450
      Width = 750
      Height = 240
      TabIndex = 26
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
    Begin Label LblName
      Caption = "Type"
      Index = 13
      ForeColor = &H0&
      Left = 240
      Top = 150
      Width = 480
      Height = 240
      TabIndex = 25
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
    Begin Label LblName
      Caption = "Bill Amount"
      Index = 23
      BackColor = &HC7EBEB&
      ForeColor = &HC00000&
      Left = 5415
      Top = 45
      Width = 1275
      Height = 225
      TabIndex = 31
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 27
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 705
      Width = 1275
      Height = 255
      TabIndex = 39
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 28
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 1605
      Width = 1275
      Height = 255
      TabIndex = 38
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 26
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 255
      Width = 1275
      Height = 255
      TabIndex = 37
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 900
    Top = 3600
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 5400
    Top = 780
    Width = 1155
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 1545
    Top = 780
    Width = 855
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &H80000004&
    Left = 150
    Top = 7965
    Width = 2145
    Height = 255
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 60
    Top = 3045
    Width = 6795
    Height = 3630
    TabIndex = 23
  End
  Begin MSFlexGrid FGPoint
    Left = 165
    Top = 6720
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 55
  End
  Begin DataGrid DGRoom
    Left = 9810
    Top = 6825
    Width = 2355
    Height = 2910
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 34
  End
End
Begin BtnEnh CmdClose
  Left = 5160
  Top = 0
  Width = 1695
  Height = 690
  TabIndex = 94
End
Begin Label Label1
  Caption = "Press Ctrl+S to Save"
  ForeColor = &HD6D7C6&
  Left = 240
  Top = 75
  Width = 2970
  Height = 300
  TabIndex = 36
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblVPrefix
  Caption = "VPrefix"
  ForeColor = &HFF&
  Left = 2475
  Top = 780
  Width = 675
  Height = 240
  TabIndex = 21
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
Begin Label Lbl
  Caption = "Date"
  Index = 37
  ForeColor = &H0&
  Left = 4830
  Top = 780
  Width = 435
  Height = 240
  TabIndex = 20
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
Begin Label Lbl
  Caption = "Deposit No"
  Index = 36
  ForeColor = &H0&
  Left = 255
  Top = 780
  Width = 1020
  Height = 240
  TabIndex = 19
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
Begin Shape Shape4
  BorderColor = &H400040&
  Left = 75
  Top = 720
  Width = 6780
  Height = 405
  BorderWidth = 2
  FillColor = &HC0FFC0&
End
Begin Menu popup
  Visible = 0   'False
  Caption = ""
  Begin Menu Del
    Caption = "Delete"
  End
End
End

Attribute VB_Name = "rsTouchScreenAdvanceDepDialog"

Private global_184 As Double
Private global_104 As Long
Private global_108 As Long
Private global_132 As Double
Private global_100 As Long
Private global_172 As Integer

Private Sub DGCompany_UnknownEvent_9 'F46FF4
  'Data Table: 565890
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F46EEB: Me.DGCompany.Visible = False
  loc_F46F0A: If (Me.RecordCount > 0) Then
  loc_F46F49:   Set var_B4 = Me.Txt
  loc_F46F4F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F), var_B8)
  loc_F46F57:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F46F8A:   var_B0 = Me.Fields.Item("Code")
  loc_F46FA9:   Set var_B4 = Me.Txt
  loc_F46FAF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F), var_B8)
  loc_F46FB7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F46FCD: End If
  loc_F46FD8: Set var_A8 = Me.Txt
  loc_F46FDE: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F))
  loc_F46FE6: var_B0.SetFocus
  loc_F46FF2: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA8C08
  'Data Table: 565890
  Dim var_A8 As Variant
  loc_EA8B88: Set var_88 = Me.DGCompany
  loc_EA8BB2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA8BBA: Set var_BC = Me.DGCompany
  loc_EA8BF6: Proc_6_138_106E830(Me.DGCompany, global_76, CInt(&H1F), Me.FGPoint)
  loc_EA8C04: Exit Sub
End Sub

Private Sub Form_Load() '1429C80
  'Data Table: 565890
  Dim var_94 As Long
  Dim var_AC As Variant
  Dim var_D0 As Variant
  Dim var_C0 As String
  Dim var_D4 As String
  Dim unk_5658BD As Connection15
  Dim var_BC As Variant
  Dim var_98 As Variant
  Dim var_D8 As Variant
  Dim var_DC As Field20
  Dim var_F0 As String
  Dim var_90 As Recordset15
  Dim Me As Variant
  Dim var_FC As Long
  Dim var_100 As Long
  Dim var_104 As TextBox
  loc_14291D4: On Error Goto loc_1429C39
  loc_14291DD: var_94 = global_108
  loc_14291E9: If Not (var_94 = 5) Then
  loc_14291F5:   If (var_94 = 6) Then
  loc_14291F8:   End If
  loc_1429210:   Proc_6_23_DFC5B8(Me, 5000)
  loc_1429218: End If
  loc_1429222: Set var_98 = Me.TopCtrl1
  loc_1429228: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1429236: Call 0.Method_arg_50 (var_C0, 6975)
  loc_142923E: var_D0 = CVar(var_C0) 'String
  loc_142924C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D0)
  loc_1429268: global_116 = rsTouchScreenAdvanceDepDialog.AdvType
  loc_1429293: unk_5658BD.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_D0, -1
  loc_14292B4: var_BC = 0
  loc_14292E4: unk_5658BD.Execute "Select Max(ShortName) from depart where code='" & global_52 & "'", var_D0, -1
  loc_14292EC: var_98 = var_98.Fields
  loc_14292F4: var_BC = var_D8.Item(var_D8)
  loc_14292FC: var_DC = var_DC.Value
  loc_142930F: global_212 = Proc_6_38_E69628(var_EC, var_EC)
  loc_142933B: var_98 = Me.TopCtrl1.Fields
  loc_142934B: var_D0 = CVar(var_98.Item("CreditCardInfoMandatory")) 'Address
  loc_1429365: If (Proc_6_38_E69628(var_D0, var_98) = "Y") Then
  loc_142936E:   global_216 = "Y"
  loc_1429372: End If
  loc_1429386: var_C0 = "SELECT DP.PayCode as code, RevMast.Name as Name, revMast.PayType as PayType FROM DepartPay as DP LEFT OUTER JOIN RevMast ON DP.PayCode = RevMast.code where (DP.LOGSITE_CODE='" & MemVar_1F95078
  loc_14293A7: unk_5658BD.Execute var_C0 & "') AND DP.restcode='" & global_52 & "' ORDER BY NAME ", var_D0, -1
  loc_14293B8: Set global_60 = var_98
  loc_14293E2: var_D0 = CVar(Me.RecordCount) 'Long
  loc_14293E9: Proc_6_39_E7D3A0(var_EC, var_D0)
  loc_14293F5: global_192 = CInt(var_EC)
  loc_1429408: CVarUnk
  loc_142940D: VerifyVarObj
  loc_1429419: LateIdStAd
  loc_142944B: unk_5658BD.Execute "SELECT Code,Name FROM Employee WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D0, -1
  loc_142947A: CVarUnk
  loc_142947F: VerifyVarObj
  loc_142948B: LateIdStAd
  loc_14294AD: var_C0 = "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.DOCID as FolioNoDocid From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where (RoomOcc.LOGSITE_CODE='" & MemVar_1F95078
  loc_14294B4: var_D4 = "SELECT Code,Name FROM Employee WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or RoomOcc.LOGSITE_CODE='HO') AND T.Type in ('RO') and RoomOcc.ChkoutDate is NULL Order By T.Code"
  loc_14294BD: unk_5658BD.Execute var_D4, var_D0, -1
  loc_14294EC: CVarUnk
  loc_14294F1: VerifyVarObj
  loc_14294FD: LateIdStAd
  loc_1429526: var_D4 = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_142952F: unk_5658BD.Execute var_D4, var_D0, -1
  loc_142955E: CVarUnk
  loc_1429563: VerifyVarObj
  loc_142956F: LateIdStAd
  loc_1429598: var_D4 = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Regular Member', 'Silver Card Member', 'Golden Card Member', 'Corporate Member') Order By Name"
  loc_14295A1: unk_5658BD.Execute var_D4, var_D0, -1
  loc_14295D0: CVarUnk
  loc_14295D5: VerifyVarObj
  loc_14295DB: Set var_98 = Me.DGMember
  loc_14295E1: LateIdStAd
  loc_14295FB: Call 0.Method_arg_38 (MemVar_1F953B0, var_98, Me.DGCompany, var_98, var_98, Me.DGRoom, var_98, var_98)
  loc_142960C: Call 0.Method_arg_3C (MemVar_1F950EC, Me.DGEmp, var_98, var_98)
  loc_142961D: Call 0.Method_arg_54 (MemVar_1F9506C, Me.DGPayType, var_98)
  loc_142962E: Call 0.Method_arg_1C (MemVar_1F95070, var_98)
  loc_142963F: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_1429650: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_1429661: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_1429672: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_1429683: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_1429694: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_14296AE: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_14296BC: Set var_98 = MemVar_1F95044
  loc_14296CB: Call 0.Method_Form_Load8 (var_98)
  loc_14296E1: Me.DGMember.Clone
  loc_14296FB: Call 0.Method_Form_LoadC (var_98, -1)
  loc_1429715: Me.Recordset20.Clone
  loc_1429720: Set var_D8 = var_98
  loc_142972F: Call 0.Method_arg_50 (var_D8, -1, var_98)
  loc_1429741: var_FC = global_108
  loc_142974D: If Not (var_FC = 5) Then
  loc_1429759:   If (var_FC = 6) Then
  loc_142975C:   End If
  loc_1429777:   var_D4 = "SELECT Distinct Docid as SearchCode FROM PayCharge Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Vtype='"
  loc_1429791:   unk_5658BD.Execute var_D4 & global_116 & "'", var_D0, -1
  loc_14297A2:   Set global_56 = var_98
  loc_14297BB: End If
  loc_14297C7: Set var_98 = Me
  loc_14297DE: Call Proc_296_81_FC7E1C(Proc_5_1_100EC1C("INI", var_98, global_56, var_98), var_FC)
  loc_14297E9: Call Proc_296_84_120DEB0(var_98)
  loc_14297EE: Call Proc_296_89_1204640(global_60)
  loc_14297FF: If (global_104 = 2) Then
  loc_1429802:   Call Proc_296_85_155BF64()
  loc_1429807: End If
  loc_1429813: If (global_104 = 1) Then
  loc_142981F:   Set var_98 = Me.TopCtrl1
  loc_1429825:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_142983A:   Set var_98 = Me.Txt
  loc_1429840:   Call 0.Method_Form_Load0 (CInt(0), var_D8)
  loc_1429848:   var_D8.Visible = False
  loc_1429854:   Call TopCtrl1_UnknownEvent_A()
  loc_1429870:   If (Me.RecordCount > 0) Then
  loc_1429879:     Me.MoveFirst
  loc_14298A6:     Me.Find "SearchCode='" & global_120 & "'", 0, 1
  loc_14298C6:     If (Me.EOF = 0) Then
  loc_14298C9:       var_AC = "Edit"
  loc_14298D3:       Set var_98 = Me.TopCtrl1
  loc_14298D9:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC)
  loc_14298E1:       Call Proc_296_85_155BF64(var_AC)
  loc_14298EC:       Call Proc_296_91_1318AF8(global_160)
  loc_14298F1:     End If
  loc_14298F1:   End If
  loc_1429902:   Set var_98 = Me.Txt
  loc_1429908:   Call 0.Method_Form_Load0 (CInt(0), var_D8)
  loc_1429910:   var_D8.Text = global_120
  loc_1429950:   Set var_98 = Me.Txt
  loc_1429956:   Call 0.Method_Form_Load0 (CInt(1), var_D8)
  loc_142995E:   var_D8.Text = CStr(Val(CStr(Right(global_120, 8))))
  loc_1429974:   var_D0 = 5
  loc_14299A2:   Me.LblVPrefix.Caption = CStr(Mid(global_120, 9, var_D0))
  loc_14299BA:   var_100 = global_108
  loc_14299C6:   If Not (var_100 = 5) Then
  loc_14299D2:     If (var_100 = 6) Then
  loc_14299D5:     End If
  loc_14299EC:     Call 0.Method_Form_Load0 (CInt(&H10), var_D8)
  loc_14299F4:     var_D8.Tag = global_128
  loc_1429A0C:     If (global_108 = 6) Then
  loc_1429A34:       var_F0 = "Select Name from RoomMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND code='" & global_128
  loc_1429A44:       unk_5658BD.Execute var_F0 & "' and Type='HL' and RoomCat='HALL'", var_D0, -1
  loc_1429A4F:       Set var_8C = Me.Txt
  loc_1429A75:       var_98 = Me.Recordset15.Fields
  loc_1429A7D:       var_D8 = var_98.Item("Name")
  loc_1429A9C:       Set var_DC = Me.Txt
  loc_1429AA2:       Call 0.Method_Form_Load0 (CInt(&H10), var_104)
  loc_1429AAA:       var_104.Text = Proc_6_38_E69628(CVar(var_D8), var_98)
  loc_1429AC1:     Else
  loc_1429AD2:       Set var_98 = Me.Txt
  loc_1429AD8:       Call 0.Method_Form_Load0 (CInt(&H10), var_D8)
  loc_1429AE0:       var_D8.Text = global_128
  loc_1429AEC:     End If
  loc_1429B26:     Set var_98 = Me.LTxt
  loc_1429B2C:     Call 0.Method_Form_Load0 (CInt(&H1A), var_D8, CStr(Format(global_132, "0.00")))
  loc_1429B34:     var_D8.Caption = 1
  loc_1429B4A:   End If
  loc_1429B4A: End If
  loc_1429B4A: Call Proc_296_95_10A9FD0(1)
  loc_1429B55: global_176 = vbNullString
  loc_1429B5D: Set var_98 = Me.TopCtrl1
  loc_1429B63: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_100)
  loc_1429B6B: var_C0 = CStr()
  loc_1429B91: If ((var_C0 = "Add") And (PSettlementMode = "Auto")) Then
  loc_1429B94:   Call Proc_296_80_12CBA94()
  loc_1429B9C: Else
  loc_1429B9C:   var_AC = False
  loc_1429BAB:   Me.SSPNext.Enabled = var_AC
  loc_1429BC2:   Me.SSPPrevious.Enabled = False
  loc_1429BD6:   Me.FrameQty.Visible = False
  loc_1429BDE: End If
  loc_1429BF2: Set var_D8 = Me.SSPItem
  loc_1429C15: Call Proc_296_101_122C5AC(Me.SSPGroup, CInt(3), global_60)
  loc_1429C2D: Set var_8C = Nothing
  loc_1429C35: Set var_90 = Nothing
  loc_1429C38: Exit Sub
  loc_1429C39: ' Referenced from: 14291D4
  loc_1429C41: Set var_98 = Err()
  loc_1429C47: Call 0.Method_arg_2C (var_C0, CInt(6))
  loc_1429C68: MsgBox(CVar(var_C0), &H40, "Information", var_114, var_134)
  loc_1429C7B: Exit Sub
  loc_1429C7C: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6C6C8
  'Data Table: 565890
  loc_E6C677: Set global_68 = Nothing
  loc_E6C689: Set global_56 = Nothing
  loc_E6C69B: Set global_60 = Nothing
  loc_E6C6AD: Set global_64 = Nothing
  loc_E6C6BF: Set global_80 = Nothing
  loc_E6C6C6: Exit Sub
End Sub

Private Sub Form_Activate() 'F2CB34
  'Data Table: 565890
  Dim var_90 As Long
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C8 As TextBox
  Dim var_94 As Frame
  loc_F2CA43: If (OpenMode = 1) Then
  loc_F2CA49:   var_88 = OpenType
  loc_F2CA51:   var_90 = var_88
  loc_F2CA5D:   If Not (var_90 = 5) Then
  loc_F2CA69:     If (var_90 = 6) Then
  loc_F2CA6C:     End If
  loc_F2CA7A:     Set var_94 = Me.Txt
  loc_F2CA80:     Call 0.Method_Form_Activate0 (CInt(&HF), var_98, var_88)
  loc_F2CA88:     var_90 = var_98.Left
  loc_F2CA99:     Set var_BC = Me.DGPayType
  loc_F2CA9F:     var_BC.Left = CVar(var_88)
  loc_F2CABB:     Set var_98 = Me.Txt
  loc_F2CAC1:     Call 0.Method_Form_Activate0 (CInt(&HF), var_BC)
  loc_F2CADC:     Set var_C4 = Me.Txt
  loc_F2CAE2:     Call 0.Method_Form_Activate0 (CInt(&HF), var_C8)
  loc_F2CB10:     var_A8 = CVar((((Me.FrRest.Top + var_BC.Top) + var_C8.Height) + CDbl(&HF))) 'Single
  loc_F2CB1F:     Me.DGPayType.Top = CVar(Me.FrRest.Top)
  loc_F2CB33:   End If
  loc_F2CB33: End If
  loc_F2CB33: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F05218
  'Data Table: 565890
  Dim var_B4 As DataGrid
  loc_F0515C: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_F05190:   Set var_B4 = Me.DGEmp
  loc_F051B5:   If (((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_B4.Visible) = 0)) Then
  loc_F051C5:     Me.var_B4.Unload Me
  loc_F051CD:     Exit Sub
  loc_F051CE:   End If
  loc_F051CE: End If
  loc_F051EC: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_104 = 1)) Then
  loc_F051EF:   Call Proc_296_92_1533ED4()
  loc_F051F4:   Call TopCtrl1_UnknownEvent_16()
  loc_F051F9:   Exit Sub
  loc_F051FA: End If
  loc_F0520E: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_F05216: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0AD68
  'Data Table: 565890
  loc_E0AD54: Call Proc_296_99_142F5C8()
  loc_E0AD5F: Call Proc_296_91_1318AF8(global_160)
  loc_E0AD64: Exit Sub
  loc_E0AD65: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FDF15C
  'Data Table: 565890
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FDEF90: Set var_88 = Me.TopCtrl1
  loc_FDEF96: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FDEFAF: If (CStr() = "Browse") Then
  loc_FDEFB2:   Exit Sub
  loc_FDEFB3: End If
  loc_FDEFD0: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FDEFD3:   Exit Sub
  loc_FDEFD4: End If
  loc_FDEFE5: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FDF007:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FDF041:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FDF063:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FDF079:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FDF082:         Set var_110 = Me.FGrid
  loc_FDF09D:       Else
  loc_FDF0B0:         Me.FGrid.Rows = 1
  loc_FDF0D4:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0))) 'String
  loc_FDF0DC:         Set var_110 = Me.FGrid
  loc_FDF109:         Me.FGrid.FixedRows = 1
  loc_FDF111:       End If
  loc_FDF111:     End If
  loc_FDF114:   Else
  loc_FDF135:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FDF145:   End If
  loc_FDF149:   Set var_88 = Me.FGrid
  loc_FDF15A: End If
  loc_FDF15A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E3FEF4
  'Data Table: 565890
  loc_E3FECA: If (KeyCode = 2) Then
  loc_E3FEE5:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E3FEED:   Call FGrid_UnknownEvent_9()
  loc_E3FEF2: End If
  loc_E3FEF2: Exit Sub
End Sub

Private Sub CmdClose_UnknownEvent_9 'E1ABB0
  'Data Table: 565890
  loc_E1ABA5: Me.Global.Unload Me
  loc_E1ABAD: Exit Sub
End Sub

Private Sub SSPMain_UnknownEvent_9 'F078D8
  'Data Table: 565890
  Dim Me As Recordset15
  Dim var_9C As Boolean
  Dim var_8C As SSPanel
  Dim var_88 As SSPanel
  loc_F077FE: Me.MoveFirst
  loc_F07811: Set var_88 = Me.SSPGroup
  loc_F07817: Call 0.Method_SSPMain_UnknownEvent_90 (0, var_8C)
  loc_F0781F: var_8C.Visible = False
  loc_F07839: Set var_88 = Me.SSPItem
  loc_F0783F: Call 0.Method_SSPMain_UnknownEvent_90 (0, var_8C)
  loc_F07847: var_8C.Visible = False
  loc_F07853: var_9C = False
  loc_F07862: Me.SSPNext.Enabled = var_9C
  loc_F07879: Me.SSPPrevious.Enabled = False
  loc_F07895: Set var_8C = Me.SSPItem
  loc_F078B8: Call Proc_296_101_122C5AC(Me.SSPGroup, CInt(3), global_60)
  loc_F078D1: global_176 = vbNullString
  loc_F078D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F5D95C
  'Data Table: 565890
  Dim var_88 As String
  Dim var_D4 As TextBox
  Dim var_D8 As Long
  loc_F5D838: On Error Goto loc_F5D954
  loc_F5D85E: Call Proc_296_81_FC7E1C(Proc_5_1_100EC1C("ADD", Me))
  loc_F5D869: Call Proc_296_83_1012EB0(global_56)
  loc_F5D896: var_88 = CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy"))
  loc_F5D8A5: Set var_8C = Me.Txt
  loc_F5D8AB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, var_88)
  loc_F5D8B3: var_D4.Text = 1
  loc_F5D8CF: var_D8 = global_108
  loc_F5D8DB: If Not (var_D8 = 5) Then
  loc_F5D8E7:   If (var_D8 = 6) Then
  loc_F5D8EA:   End If
  loc_F5D8F7:   Set var_8C = Me.Txt
  loc_F5D8FD:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HF), var_D4, &HFF)
  loc_F5D905:   var_D4.Enabled = var_D8
  loc_F5D91D:   If (global_104 = 2) Then
  loc_F5D926:     Call Proc_296_88_115D450(MemVar_1F95044, var_88)
  loc_F5D939:     Set var_8C = Me.Txt
  loc_F5D93F:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_D4)
  loc_F5D947:     var_D4.SetFocus
  loc_F5D953:   End If
  loc_F5D953: End If
  loc_F5D953: Exit Sub
  loc_F5D954: ' Referenced from: F5D838
  loc_F5D954: Proc_6_60_E63754(1)
  loc_F5D959: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBF83C
  'Data Table: 565890
  loc_EBF7A4: On Error Goto loc_EBF834
  loc_EBF7DE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBF7ED:   Set var_110 = Me
  loc_EBF804:   Call Proc_296_81_FC7E1C(Proc_5_1_100EC1C("INI", var_110))
  loc_EBF80F:   Call Proc_296_86_F97470(global_56)
  loc_EBF814:   Call Proc_296_85_155BF64()
  loc_EBF81C: Else
  loc_EBF822:   Call 0.Method_arg_1E8 (var_110)
  loc_EBF82A:   Call var_110.SetFocus
  loc_EBF833: End If
  loc_EBF833: Exit Sub
  loc_EBF834: ' Referenced from: EBF7A4
  loc_EBF834: Proc_6_60_E63754()
  loc_EBF839: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'FDE6B8
  'Data Table: 565890
  Dim unk_5658BD As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_FDE4EC: On Error Goto loc_FDE667
  loc_FDE4FD: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_FDE500:   Exit Sub
  loc_FDE501: End If
  loc_FDE538: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_FDE544:   unk_5658BD.BeginTrans var_118
  loc_FDE55A:   var_94 = Me.Bookmark 'Variant
  loc_FDE5A6:   var_F4 = "Delete From PayCharge Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_FDE5AA:   var_124 = CStr(var_F4)
  loc_FDE5B4:   unk_5658BD.Execute var_124, var_114, -1
  loc_FDE5D6:   unk_5658BD.CommitTrans
  loc_FDE5E6:   Me.Requery -1
  loc_FDE606:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_FDE613:     Me.Bookmark = var_94
  loc_FDE61B:   Else
  loc_FDE62F:     If (Me.EOF = 0) Then
  loc_FDE638:       Me.MoveLast
  loc_FDE63D:     End If
  loc_FDE63D:   End If
  loc_FDE63D:   Call Proc_296_85_155BF64(var_128)
  loc_FDE65E:   Proc_5_0_1107AD0(&HFF, Me)
  loc_FDE666: End If
  loc_FDE666: Exit Sub
  loc_FDE667: ' Referenced from: FDE4EC
  loc_FDE66D: unk_5658BD.RollbackTrans
  loc_FDE67A: Set var_11C = Err()
  loc_FDE680: Call 0.Method_arg_2C (var_124, global_56)
  loc_FDE6A1: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_FDE6B4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E66098
  'Data Table: 565890
  loc_E6604C: On Error Goto loc_E66090
  loc_E6605D: If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_E66060:   Exit Sub
  loc_E66061: End If
  loc_E66084: Call Proc_296_81_FC7E1C(Proc_5_1_100EC1C("EDIT", Me))
  loc_E6608F: Exit Sub
  loc_E66090: ' Referenced from: E6604C
  loc_E66090: Proc_6_60_E63754(global_56)
  loc_E66095: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AC94
  'Data Table: 565890
  loc_E1AC89: Me.Global.Unload Me
  loc_E1AC91: Exit Sub
  loc_E1AC92: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'DFD2B8
  'Data Table: 565890
  loc_DFD2B4: Exit Sub
  loc_DFD2B5: If  Then Exit Sub
  loc_DFD2B5: End If
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3BBE8
  'Data Table: 565890
  loc_E3BBD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3BBE0: Call Proc_296_85_155BF64(global_56)
  loc_E3BBE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E36D28
  'Data Table: 565890
  loc_E36D18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36D20: Call Proc_296_85_155BF64(global_56)
  loc_E36D25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3BCA8
  'Data Table: 565890
  loc_E3BC98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3BCA0: Call Proc_296_85_155BF64(global_56)
  loc_E3BCA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3BC48
  'Data Table: 565890
  loc_E3BC38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3BC40: Call Proc_296_85_155BF64(global_56)
  loc_E3BC45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFCC04
  'Data Table: 565890
  loc_DFCC00: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E83754
  'Data Table: 565890
  Dim Me As Recordset15
  loc_E836EB: Me.Requery -1
  loc_E836FB: Me.Requery -1
  loc_E8370B: Me.Requery -1
  loc_E8371B: Me.Requery -1
  loc_E8372B: Me.Requery -1
  loc_E8373B: Me.Requery -1
  loc_E8374B: Me.Requery -1
  loc_E83750: Exit Sub
  loc_E83751: StAryRecCopy
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '179BAF0
  'Data Table: 565890
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_128 As String
  Dim var_15C As Long
  Dim var_160 As Variant
  Dim var_168 As Variant
  Dim var_174 As Double
  Dim var_AA As Variant
  Dim unk_5658BD As Connection15
  Dim var_16C As String
  Dim var_184 As String
  Dim var_AE As Variant
  Dim var_18C As Long
  Dim var_98 As Variant
  Dim var_138 As Variant
  Dim var_19C As Variant
  Dim var_148 As Variant
  Dim var_110 As String
  Dim var_158 As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_298 As Variant
  Dim var_2BC As Variant
  Dim var_30C As Variant
  Dim var_32C As Long
  Dim var_368 As Variant
  Dim var_388 As Variant
  Dim var_39C As MSHFlexGrid
  Dim var_3BC As Variant
  Dim var_3DC As Variant
  Dim var_3F0 As Variant
  Dim var_354 As String
  Dim var_410 As Variant
  Dim var_4C0 As Variant
  Dim var_4E0 As Variant
  Dim var_504 As Variant
  Dim var_588 As MSHFlexGrid
  Dim var_598 As Variant
  Dim var_5E0 As Variant
  Dim var_654 As Long
  Dim var_67C As String
  Dim var_E18 As Double
  Dim var_714 As String
  Dim var_E20 As Double
  Dim var_7FC As TextBox
  Dim var_848 As TextBox
  Dim var_E28 As Double
  Dim var_8E0 As Variant
  Dim var_974 As Variant
  Dim var_A08 As Variant
  Dim var_A9C As Variant
  Dim var_B50 As Variant
  Dim var_1F8 As String
  Dim var_204 As String
  Dim var_20C As String
  Dim var_218 As String
  Dim var_21C As String
  Dim var_220 As String
  Dim var_238 As Variant
  Dim var_288 As Variant
  Dim var_2CC As Variant
  Dim var_2FC As Variant
  Dim var_480 As Variant
  Dim var_490 As Variant
  Dim var_5B8 As Variant
  Dim var_604 As Variant
  Dim var_6BC As Variant
  Dim var_774 As Variant
  Dim var_7B4 As Variant
  Dim var_7D4 As Variant
  Dim var_900 As Variant
  Dim var_ACC As Variant
  Dim var_CE4 As Variant
  Dim var_D0 As Recordset15
  Dim var_1F0 As String
  Dim var_31C As Variant
  Dim var_33C As Long
  Dim var_5DC As Variant
  Dim var_210 As String
  Dim var_440 As Variant
  Dim var_ABC As Variant
  Dim var_C8 As Double
  Dim var_E50 As Double
  Dim var_228 As TextBox
  Dim var_E58 As Double
  Dim var_E60 As Double
  Dim Me As Recordset15
  loc_1799E0C: var_E0 = 1
  loc_1799E15: var_100 = 1
  loc_1799E33: var_128 = CStr(Me.FGrid.TextMatrix))
  loc_1799E44: If (var_128 = vbNullString) Then
  loc_1799E52:   var_138 = "Save Data"
  loc_1799E68:   MsgBox("Please Fill Payment Details Before Saving..", &H40, var_138, var_148, var_158)
  loc_1799E78:   Exit Sub
  loc_1799E79: End If
  loc_1799E7F: var_15C = global_108
  loc_1799E8B: If Not (var_15C = 5) Then
  loc_1799E97:   If (var_15C = 6) Then
  loc_1799E9A:   End If
  loc_1799EA8:   Set var_114 = Me.LTxt
  loc_1799EAE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_160, var_128)
  loc_1799EB6:   var_15C = var_160.Caption
  loc_1799ED2:   If (CDbl(Val(var_128)) <> CDbl(0)) Then
  loc_1799EE3:     Set var_164 = Me.LTxt
  loc_1799EE9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_168, var_16C)
  loc_1799EF1:     var_100 = var_168.Caption
  loc_1799EFE:     var_174 = Val(var_16C)
  loc_1799F0F:     Set var_114 = Me.LTxt
  loc_1799F15:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_160, var_128)
  loc_1799F42:     If (CDbl(Val(var_128)) <> CDbl(var_160.Caption)) Then
  loc_1799F64:       MsgBox(CVar("Bill Amount and Received Amount Not Matched" & vbCrLf & "Entry could not be Saved?"), 0, var_138, var_148, var_158)
  loc_1799F77:       Exit Sub
  loc_1799F78:     End If
  loc_1799F78:   End If
  loc_1799F78: End If
  loc_1799F9D: For var_178 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AC = var_178 'Integer
  loc_1799FA7:   var_E0 = CVar(CLng(var_AC)) 'Long
  loc_1799FAC:   var_100 = 2
  loc_1799FDB:   If (CStr(Me.FGrid.TextMatrix)) = "Cash Card") Then
  loc_1799FE0:     var_AA = &HFF
  loc_1799FE3:   End If
  loc_1799FE6: Next var_178 'Integer
  loc_1799FEE: Call Proc_296_96_10130F8(var_17A)
  loc_1799FF9: If (var_17A = 0) Then
  loc_1799FFC:   Exit Sub
  loc_1799FFD: End If
  loc_179A001: Set var_114 = Me.TopCtrl1
  loc_179A007: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_179A027: If ((CStr() = "Add") And (var_AA = &HFF)) Then
  loc_179A02D:   Call Proc_296_98_F68EA0(var_17A)
  loc_179A038:   If (var_17A = 0) Then
  loc_179A03B:     Exit Sub
  loc_179A03C:   End If
  loc_179A03C: End If
  loc_179A040: Set var_114 = Me.TopCtrl1
  loc_179A046: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_179A05F: If (CStr() = "Add") Then
  loc_179A068:   global_180 = MemVar_1F950C8
  loc_179A071:   var_128 = Proc_6_14_EF402C()
  loc_179A079:   global_184 = CDate(var_128)
  loc_179A07F: End If
  loc_179A083: var_86 = CByte(0) 'Byte
  loc_179A090: unk_5658BD.BeginTrans var_180
  loc_179A099: var_86 = CByte(1) 'Byte
  loc_179A0BB: Set var_114 = Me.Txt
  loc_179A0C1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "Delete From PayCharge Where Docid='")
  loc_179A0C9: var_124 = var_160.Text
  loc_179A0D2: var_16C = -1 & var_128
  loc_179A0E2: unk_5658BD.Execute var_16C & "'", var_164, global_184
  loc_179A121: For var_188 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AC = var_188 'Integer
  loc_179A12B:   var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179A130:   var_100 = 2
  loc_179A13D:   Set var_114 = Me.FGrid
  loc_179A143:   var_124 = var_114.TextMatrix)
  loc_179A15F:   If (CStr(var_124) <> vbNullString) Then
  loc_179A168:     var_AE = (var_AE + 1)
  loc_179A171:     var_18C = global_108
  loc_179A17D:     If Not (var_18C = 5) Then
  loc_179A189:       If (var_18C = 6) Then
  loc_179A18C:       End If
  loc_179A1B3:       unk_5658BD.Execute "Select Name,ShortName from depart where code='" & global_52 & "'", var_124, -1
  loc_179A1BE:       Set var_98 = var_114
  loc_179A1E2:       If (var_98.RecordCount > 0) Then
  loc_179A1E9:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179A1EE:         var_100 = 2
  loc_179A20C:         var_128 = CStr(Me.FGrid.TextMatrix))
  loc_179A21D:         If (var_128 <> "Room") Then
  loc_179A224:           var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179A22C:           var_100 = CVar(CLng(&HE)) 'Long
  loc_179A268:           If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_179A26F:             var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179A277:             var_100 = CVar(CLng(&HE)) 'Long
  loc_179A2A0:             var_94 = CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_179A2B2:           Else
  loc_179A2BD:             var_E0 = "ShortName"
  loc_179A2E1:             var_138 = ("(" + var_98.Fields.Item(var_E0).Value)
  loc_179A2E5:             var_100 = ") "
  loc_179A2EA:             var_148 = (CVar(CStr(Me.FGrid.TextMatrix))) + var_100)
  loc_179A2EE:             var_110 = "BILL NO.- "
  loc_179A2F3:             var_158 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + var_110)
  loc_179A305:             Set var_164 = Me.Txt
  loc_179A30B:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_158, var_100, var_E0, var_100)
  loc_179A313:             var_E0 = var_168.Text
  loc_179A31E:             var_1BC = (var_100 + CVar(var_128))
  loc_179A327:             var_1CC = (var_1BC + " ")
  loc_179A330:             var_1EC = (var_1CC + vbNullString)
  loc_179A335:             var_94 = CStr(var_1EC)
  loc_179A356:           End If
  loc_179A359:         Else
  loc_179A364:           var_E0 = "ShortName"
  loc_179A378:           var_160 = var_98.Fields.Item(var_E0)
  loc_179A388:           var_138 = ("(" + var_160.Value)
  loc_179A391:           var_148 = (CVar(CStr(Me.FGrid.TextMatrix))) + ") ")
  loc_179A395:           var_110 = "BILL NO.- "
  loc_179A39A:           var_158 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + var_110)
  loc_179A3AC:           Set var_164 = Me.Txt
  loc_179A3B2:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_158, var_E0)
  loc_179A3BA:           var_114 = var_168.Text
  loc_179A3C5:           var_1BC = (var_18C + CVar(var_128))
  loc_179A3CE:           var_1CC = (var_1BC + " ")
  loc_179A3D7:           var_1EC = (var_1CC + vbNullString)
  loc_179A3DC:           var_94 = CStr(var_1EC)
  loc_179A3FD:         End If
  loc_179A3FD:       End If
  loc_179A402:       Set var_98 = Nothing
  loc_179A40A:       Set var_9C = Nothing
  loc_179A41B:       Set var_114 = Me.Txt
  loc_179A421:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_1F0)
  loc_179A429:       var_AE = var_160.Text
  loc_179A43C:       Set var_164 = Me.Txt
  loc_179A442:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168)
  loc_179A46A:       Set var_224 = Me.Txt
  loc_179A470:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_228)
  loc_179A47F:       Proc_6_7_F26918(var_1CC, CVar(var_228))
  loc_179A4B0:       var_19C = CVar(CLng(var_AC)) 'Long
  loc_179A4B8:       var_298 = CVar(CLng(&H10)) 'Long
  loc_179A4D7:       var_30C = CVar(CLng(var_AC)) 'Long
  loc_179A4DC:       var_32C = 1
  loc_179A4FF:       var_368 = CVar(CLng(var_AC)) 'Long
  loc_179A504:       var_388 = &H14
  loc_179A527:       var_3BC = CVar(CLng(var_AC)) 'Long
  loc_179A52C:       var_3DC = &H18
  loc_179A56E:       var_440 = IIf((CStr(Me.FGrid.TextMatrix)) = MemVar_1F95070 & "CRED"), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))))
  loc_179A577:       var_4C0 = CVar(CLng(var_AC)) 'Long
  loc_179A57C:       var_4E0 = 1
  loc_179A58F:       var_504 = Me.FGrid.TextMatrix)
  loc_179A5B7:       var_598 = Me.FGrid.TextMatrix)
  loc_179A5D1:       Set var_5DC = Me.LTxt
  loc_179A5D7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_5E0, var_5E4, var_598, 2, CVar(CLng(var_AC)), var_504)
  loc_179A5DF:       var_4E0 = var_5E0.Caption
  loc_179A5EC:       var_174 = Val(var_5E4)
  loc_179A5F8:       var_654 = 8
  loc_179A61E:       var_E18 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_179A650:       var_E20 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_179A661:       Set var_7F8 = Me.Txt
  loc_179A667:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_7FC, var_800, var_E20, &H11, CVar(CLng(var_AC)), var_E18)
  loc_179A66F:       var_654 = var_7FC.Text
  loc_179A682:       Set var_844 = Me.Txt
  loc_179A688:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_848, var_84C, CVar(CLng(var_AC)), var_174)
  loc_179A690:       var_4C0 = var_848.Tag
  loc_179A69D:       var_E28 = Val(var_84C)
  loc_179A6BB:       var_8E0 = Me.FGrid.TextMatrix)
  loc_179A6E2:       var_974 = Me.FGrid.TextMatrix)
  loc_179A709:       var_A08 = Me.FGrid.TextMatrix)
  loc_179A730:       var_A9C = Me.FGrid.TextMatrix)
  loc_179A741:       Proc_6_7_F26918(var_ABC, CVar(CStr(var_A9C)), CVar(CLng(&HD)), CVar(CLng(var_AC)), var_A08, CVar(CLng(&HC)), CVar(CLng(var_AC)), var_974)
  loc_179A76C:       var_B50 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_179A772:       Proc_6_7_F26918(var_B60, var_B50, CVar(CLng(&HB)), CVar(CLng(var_AC)), CVar(CLng(&HA)), CVar(CLng(var_AC)))
  loc_179A785:       Proc_6_7_F26918(var_BF0, Date, var_8E0, CVar(CLng(9)))
  loc_179A7B7:       Proc_6_39_E7D3A0(var_CD4, CVar(CStr(Me.FGrid.TextMatrix))), &H17, CVar(CLng(var_AC)))
  loc_179A7CA:       Proc_6_17_EAAE40(var_D64, global_180, CVar(CLng(var_AC)))
  loc_179A7DD:       Proc_6_8_EB1974(var_DB4, global_184, var_E28)
  loc_179A7F6:       var_128 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_179A804:       var_184 = var_128 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,batchno,LOGSITE_CODE,AU_Name,AU_EntDt) Values ("
  loc_179A852:       var_220 = var_184 & "'" & var_1F0 & "'," & CStr(var_AE) & ",'" & global_116 & "','" & var_168.Text & "','" & MemVar_1F95070
  loc_179A85F:       var_158 = CVar(var_220 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_179A863:       var_E0 = "',"
  loc_179A89F:       var_2FC = var_158 & var_E0 & var_1CC & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_179A8F5:       var_604 = var_2FC & var_440 & "','" & CVar(var_94) & "','" & CVar(CStr(var_504)) & "','" & CVar(CStr(var_598)) & "'," & CVar(var_174) 
  loc_179A952:       var_7D4 = var_604 & "," & CVar(var_E18) & "," & CVar(var_E20) & ",'" & CVar(global_152) & "'," & "'" & CVar(global_156) 
  loc_179A98D:       var_900 = var_7D4 & "','" & CVar(var_800) & "'," & CVar(var_E28) & ",'" & CVar(CStr(var_8E0)) 
  loc_179A9C5:       var_ACC = var_900 & "','" & CVar(CStr(var_974)) & "','" & CVar(CStr(var_A08)) & "'," & var_ABC 
  loc_179AA1E:       var_CE4 = var_ACC & "," & var_B60 & ",'" & CVar(MemVar_1F950C8) & "'," & var_BF0 & ",'A','" & CVar(global_52) & "'," & var_CD4 
  loc_179AA68:       unk_5658BD.Execute CStr(var_CE4 & ",'" & CVar(MemVar_1F95078) & "'," & var_D64 & "," & var_DB4 & ")"), var_E08, -1
  loc_179ABA6:       var_AE = (var_AE + 1)
  loc_179ABAD:       var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179ABB2:       var_100 = 2
  loc_179ABBF:       Set var_114 = Me.FGrid
  loc_179ABC5:       var_124 = var_114.TextMatrix)
  loc_179ABE1:       If (CStr(var_124) = "Room") Then
  loc_179AC0F:         unk_5658BD.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F95078 & "TOUT" & "'", var_124, -1
  loc_179AC1A:         Set var_98 = var_114
  loc_179AC40:         If (var_98.RecordCount > 0) Then
  loc_179AC6F:           var_160 = var_98.Fields.Item("TaxStru")
  loc_179AC7F:           var_138 = "Select * from taxstru where Code='" & var_160.Value 
  loc_179AC88:           var_148 = var_138 & "' Order by Sno" 
  loc_179AC96:           unk_5658BD.Execute CStr(var_148), var_158, -1
  loc_179ACA1:           Set var_A0 = var_164
  loc_179ACBE:         Else
  loc_179ACD7:           MsgBox("System Defined Revenue is not defined", 0, var_138, var_148, var_158)
  loc_179ACED:           unk_5658BD.RollbackTrans
  loc_179ACF2:           Exit Sub
  loc_179ACF3:         End If
  loc_179ACF7:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179ACFC:         var_100 = &H16
  loc_179AD3A:         var_184 = "Select Docid,GuestProf,Company from GuestFolio where Docid='" & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_179AD43:         unk_5658BD.Execute var_184, var_138, -1
  loc_179AD4E:         Set var_D0 = var_160
  loc_179AD7C:         If (var_D0.RecordCount > 0) Then
  loc_179ADAA:           var_CC = CStr(var_D0.Fields.Item("GuestProf").Value)
  loc_179ADBA:           var_E0 = "Company"
  loc_179ADCE:           var_160 = var_D0.Fields.Item(var_E0)
  loc_179ADF0:           If (Proc_6_38_E69628(CVar(var_160), var_160, CVar(var_160), var_100, var_E0, var_164) <> vbNullString) Then
  loc_179AE12:             var_114 = var_D0.Fields
  loc_179AE1A:             var_160 = var_114.Item("Company")
  loc_179AE2B:             var_128 = Proc_6_38_E69628(CVar(var_160), "Update Sale1 Set Party='", var_138, -1, var_224, var_114)
  loc_179AE36:             var_1F0 = var_100 & Proc_6_38_E69628(CVar(var_160), var_160, CVar(var_160), var_100, "Company", var_164) & "' Where Docid='"
  loc_179AE47:             Set var_164 = Me.Txt
  loc_179AE4D:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_168, var_184, var_1F0)
  loc_179AE6E:             unk_5658BD.Execute var_AE & var_184 & "'", var_E0C, var_3DC
  loc_179AE94:           End If
  loc_179AE94:         End If
  loc_179AEA2:         Set var_114 = Me.Txt
  loc_179AEA8:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160)
  loc_179AEC3:         Set var_164 = Me.Txt
  loc_179AEC9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168)
  loc_179AED1:         var_204 = var_168.Text
  loc_179AEF1:         Set var_224 = Me.Txt
  loc_179AEF7:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_179AF06:         Proc_6_7_F26918(var_1CC, CVar(var_228))
  loc_179AF22:         var_258 = "HH:mm"
  loc_179AF5E:         var_31C = CVar(CLng(var_AC)) 'Long
  loc_179AF63:         var_33C = 2
  loc_179AF86:         var_388 = CVar(CLng(var_AC)) 'Long
  loc_179AF8B:         var_3BC = 8
  loc_179AF98:         Set var_3F0 = Me.FGrid
  loc_179AFB8:         var_410 = CVar(CLng(var_AC)) 'Long
  loc_179AFBD:         var_480 = &H12
  loc_179AFD0:         var_504 = Me.FGrid.TextMatrix)
  loc_179B011:         var_5B8 = Me.FGrid.TextMatrix)
  loc_179B058:         var_6BC = Me.FGrid.TextMatrix)
  loc_179B099:         var_7B4 = Me.FGrid.TextMatrix)
  loc_179B0C5:         var_E18 = Val(CStr(Right(CVar(CStr(var_7B4)), 8)))
  loc_179B0D6:         Proc_6_7_F26918(var_900, Date, var_E18, var_7B4, &H16, CVar(CLng(var_AC)), var_6BC, &H12)
  loc_179B110:         Proc_6_17_EAAE40(var_A9C, global_180, CVar(CLng(var_AC)), var_5B8, &H12)
  loc_179B123:         Proc_6_8_EB1974(var_ACC, global_184, CVar(CLng(var_AC)), var_504)
  loc_179B13C:         var_16C = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LOGSITE_CODE,AU_Name,AU_EntDt)Values " & "('"
  loc_179B156:         var_1F8 = var_16C & var_160.Text & "'," & CStr(var_AE)
  loc_179B190:         var_158 = CVar(var_1F8 & ",'" & global_116 & "'," & var_204 & ",'" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_179B1E2:         var_2FC = var_158 & "'," & var_1CC & ",'" & CVar(Format$(Time, var_258)) & "','" & CVar(var_CC) & "','" & CVar(var_94) & "','" 
  loc_179B211:         var_490 = var_2FC & var_98.Fields.Item("Code").Value & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(var_3F0.TextMatrix)))) 
  loc_179B241:         var_774 = var_490 & ",'" & Mid(CVar(CStr(var_504)), 3, 5) & "','" & LTrim(Left(CVar(CStr(var_5B8)), 2)) & "','" & Mid(CVar(CStr(var_6BC)), 8, 5) 
  loc_179B293:         var_974 = var_774 & "'," & CVar(var_E18) & ",'','',0,''," & vbNullString & "'" & CVar(MemVar_1F950C8) & "'," & var_900 & ",'A','" 
  loc_179B2D3:         var_AAC = var_974 & CVar(global_52) & "','" & var_D0.Fields.Item("DocID").Value & "','" & CVar(MemVar_1F95078) & "'," & var_A9C 
  loc_179B2FA:         unk_5658BD.Execute CStr(var_AAC & "," & var_ACC & ")"), var_B50, -1
  loc_179B3E2:         var_AE = (var_AE + 1)
  loc_179B3E9:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179B3EE:         var_100 = &H12
  loc_179B42A:         var_B8 = CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 8, 5))
  loc_179B43F:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179B444:         var_100 = &H12
  loc_179B486:         var_BC = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_179B49B:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179B4A0:         var_100 = &H16
  loc_179B4F7:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179B4FC:         var_100 = &H12
  loc_179B538:         var_B4 = CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5))
  loc_179B54D:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179B552:         var_100 = 8
  loc_179B570:         var_128 = CStr(Me.FGrid.TextMatrix))
  loc_179B578:         var_174 = Val(var_128)
  loc_179B582:         var_C8 = (var_C8 + var_174)
  loc_179B59C:         Set var_114 = Me.Txt
  loc_179B5A2:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_1F8, var_C8, var_174, var_100, var_E0)
  loc_179B5AA:         var_124 = var_160.Text
  loc_179B5BD:         Set var_164 = Me.Txt
  loc_179B5C3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_100, var_E0)
  loc_179B5CB:         var_124 = var_168.Text
  loc_179B5D8:         var_E50 = Val(var_128)
  loc_179B5E6:         var_138 = Trim(CVar(Me.LblVPrefix))
  loc_179B5F9:         Set var_224 = Me.Txt
  loc_179B5FF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_228, var_204, var_E50)
  loc_179B607:         var_100 = var_228.Text
  loc_179B60F:         var_148 = Time
  loc_179B61E:         var_E0 = "HH:mm"
  loc_179B623:         var_158 = var_E0
  loc_179B637:         var_1BC = Trim(CVar(Format$(var_148, var_158)))
  loc_179B65E:         var_2BC = var_98.Fields.Item("Code").Value
  loc_179B671:         Set var_39C = Me.LTxt
  loc_179B677:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_3F0, var_16C, 1)
  loc_179B67F:         1 = var_3F0.Caption
  loc_179B68C:         var_E58 = Val(var_16C)
  loc_179B693:         var_100 = CVar(CLng(var_AC)) 'Long
  loc_179B698:         var_19C = 8
  loc_179B6BE:         var_E60 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_179B6CF:         var_1EC = Date
  loc_179B6D7:         var_238 = Date
  loc_179B6DF:         var_248 = Now
  loc_179B6E8:         Set var_588 = Me.TopCtrl1
  loc_179B6EE:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(Val(CStr(Val(CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))))
  loc_179B720:         var_288 = IIf((CStr(var_258) = "Add"), "A", "E")
  loc_179B747:         var_2CC = var_D0.Fields.Item("DocID").Value
  loc_179B751:         var_84C = 0
  loc_179B75C:         var_800 = 0
  loc_179B76F:         var_714 = 0
  loc_179B77A:         var_67C = 0
  loc_179B7B7:         var_354 = vbNullString
  loc_179B7C0:         var_220 = vbNullString
  loc_179B7C9:         var_21C = vbNullString
  loc_179B7F7:         var_218 = "Room"
  loc_179B80B:         var_210 = vbNullString
  loc_179B814:         var_20C = vbNullString
  loc_179B858:         Proc_96_8_1CC4F08(MemVar_1F95078 & "TOUT", var_1F8, var_AE, global_116, CLng(var_E50), MemVar_1F95070, CStr(var_138), CDate(var_204))
  loc_179B8D0:       End If
  loc_179B8D0:     End If
  loc_179B8D0:   End If
  loc_179B8D3: Next var_188 'Integer
  loc_179B8DD: Set var_98 = Nothing
  loc_179B8E5: Set var_9C = Nothing
  loc_179B8ED: Set var_A0 = Nothing
  loc_179B8F5: Set var_A4 = Nothing
  loc_179B8FD: Set var_D0 = Nothing
  loc_179B911: If (OpenMode = 1) Then
  loc_179B918:   Set var_114 = Me.TopCtrl1
  loc_179B91E:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_179B926:   var_128 = CStr()
  loc_179B93E:   If ((var_128 = "Add") And (var_AA = &HFF)) Then
  loc_179B944:     Call Proc_296_97_125C094(var_17A)
  loc_179B94F:     If (var_17A = &HFF) Then
  loc_179B958:       unk_5658BD.CommitTrans
  loc_179B961:       var_86 = CByte(0) 'Byte
  loc_179B972:       Me.Global.Unload Me
  loc_179B97A:       Exit Sub
  loc_179B97E:     Else
  loc_179B981:     Else
  loc_179B981:     End If
  loc_179B981:   End If
  loc_179B987:   unk_5658BD.CommitTrans
  loc_179B990:   var_86 = CByte(0) 'Byte
  loc_179B9A5:   If (OpenMode = 1) Then
  loc_179B9B5:     Me.Global.Unload Me
  loc_179B9BD:     Exit Sub
  loc_179B9BE:   End If
  loc_179B9C9:   Me.Requery -1
  loc_179B9D9:   Me.Requery -1
  loc_179B9FD:   Set var_114 = Me.Txt
  loc_179BA03:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "SearchCode='")
  loc_179BA0B:   0 = var_160.Text
  loc_179BA24:   Me.Find 1 & var_128 & "'", var_E0, 
  loc_179BA3D:   Set var_114 = Me.TopCtrl1
  loc_179BA43:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_179BA5C:   If (CStr() = "Add") Then
  loc_179BA5F:     Call TopCtrl1_UnknownEvent_A()
  loc_179BA64:     Exit Sub
  loc_179BA65:   End If
  loc_179BA7A:   var_128 = "INI"
  loc_179BA88:   Call Proc_296_81_FC7E1C(Proc_5_1_100EC1C(var_128, Me))
  loc_179BA93:   Call Proc_296_86_F97470(global_56)
  loc_179BA98:   Call Proc_296_85_155BF64()
  loc_179BA9D:   Exit Sub
  loc_179BA9E: End If
  loc_179BAA7: If (CInt(var_86) = 1) Then
  loc_179BAB0:   unk_5658BD.RollbackTrans
  loc_179BAB5: End If
  loc_179BABD: Set var_114 = Err()
  loc_179BAC3: Call 0.Method_arg_2C (var_128)
  loc_179BADC: MsgBox(CVar(var_128), &H10, var_138, var_148, var_158)
  loc_179BAEF: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED4618
  'Data Table: 565890
  loc_ED457C: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_ED457F:   Call DGTable_UnknownEvent_9()
  loc_ED4584: End If
  loc_ED45A0: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_ED45A3:   Call DGEmp_UnknownEvent_9()
  loc_ED45A8: End If
  loc_ED45C4: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_ED45C7:   Call DGPayType_UnknownEvent_9()
  loc_ED45CC: End If
  loc_ED45E8: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_ED45EB:   Call DGRoom_UnknownEvent_9()
  loc_ED45F0: End If
  loc_ED460C: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_ED460F:   Call DGCompany_UnknownEvent_9()
  loc_ED4614: End If
  loc_ED4614: Exit Sub
End Sub

Private Sub SSPGroup_UnknownEvent_9 '1076E60
  'Data Table: 565890
  Dim var_8C As Variant
  Dim var_A4 As TextBox
  Dim var_104 As Double
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_88 As Variant
  loc_1076BDC: Call Proc_296_94_10C468C()
  loc_1076BEB: Set var_88 = Me.SSPGroup
  loc_1076BF1: Call 0.Method_SSPGroup_UnknownEvent_90 (KeyCode)
  loc_1076BF9: var_8C.Caption
  loc_1076C0F: Set var_A0 = Me.Txt
  loc_1076C15: Call 0.Method_SSPGroup_UnknownEvent_90 (CInt(&HF), var_A4)
  loc_1076C1D: var_A4.Text = CStr(var_8C)
  loc_1076C3D: Set var_88 = Me.SSPGroup
  loc_1076C43: Call 0.Method_SSPGroup_UnknownEvent_90 (KeyCode)
  loc_1076C61: Set var_A0 = Me.Txt
  loc_1076C67: Call 0.Method_SSPGroup_UnknownEvent_90 (CInt(&HF), var_A4)
  loc_1076C6F: var_A4.Tag = CStr(var_8C.Tag)
  loc_1076C93: Proc_6_40_EA5C80(CVar(PBillAmt))
  loc_1076C98: var_104 = var_8C
  loc_1076CD1: Set var_88 = Me.Txt
  loc_1076CD7: Call 0.Method_SSPGroup_UnknownEvent_90 (CInt(&H11), var_8C, CStr(Format(CVar(var_104), "0.00")))
  loc_1076CDF: var_8C.Text = 1
  loc_1076CFF: Me.MoveFirst
  loc_1076D1F: Set var_88 = Me.SSPGroup
  loc_1076D25: Call 0.Method_SSPGroup_UnknownEvent_90 (KeyCode, var_8C, "code='", 0)
  loc_1076D49: Me.Find 1 & CStr(var_8C.Tag) & "'", var_B8, 1
  loc_1076D92: global_160 = Proc_6_38_E69628(CVar(Me.Fields.Item("PayType")))
  loc_1076DAB: Me.FrEmp.Visible = False
  loc_1076DBF: Me.FrChqDet.Visible = False
  loc_1076DD3: Me.FrCCDet.Visible = False
  loc_1076DE7: Me.FrCashCard.Visible = False
  loc_1076E06: If ((global_160 = "Member") Or (global_160 = "Cash Card")) Then
  loc_1076E0F:   PCardType = global_160
  loc_1076E14:   Call Proc_296_80_12CBA94(var_104)
  loc_1076E1C: Else
  loc_1076E4B:   Call Proc_296_91_1318AF8(Proc_6_38_E69628(CVar(Me.Fields.Item("PayType"))))
  loc_1076E59:   Call Proc_296_104_105D354()
  loc_1076E5E: End If
  loc_1076E5E: Exit Sub
End Sub

Private Sub SSPItem_UnknownEvent_9 '119C714
  'Data Table: 565890
  Dim var_90 As Variant
  Dim var_A8 As TextBox
  loc_119C312: var_88 = global_176
  loc_119C31D: If (var_88 = "Staff") Then
  loc_119C32A:   Set var_8C = Me.SSPItem
  loc_119C330:   Call 0.Method_SSPItem_UnknownEvent_90 (KeyCode)
  loc_119C338:   var_90.Caption
  loc_119C34E:   Set var_A4 = Me.Txt
  loc_119C354:   Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H18), var_A8)
  loc_119C35C:   var_A8.Text = CStr(var_90)
  loc_119C37C:   Set var_8C = Me.SSPItem
  loc_119C382:   Call 0.Method_SSPItem_UnknownEvent_90 (KeyCode)
  loc_119C3A0:   Set var_A4 = Me.Txt
  loc_119C3A6:   Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H18), var_A8)
  loc_119C3AE:   var_A8.Tag = CStr(var_90.Tag)
  loc_119C3CF:   Set var_8C = Me.Txt
  loc_119C3D5:   Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H17), var_90)
  loc_119C3FE:   If (Trim(CVar(var_90)) = vbNullString) Then
  loc_119C40F:     Set var_8C = Me.Txt
  loc_119C415:     Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H17), var_90)
  loc_119C41D:     var_90.Text = "AGAINST V.NO "
  loc_119C429:   End If
  loc_119C42C: Else
  loc_119C434:   If (var_88 = "Room") Then
  loc_119C441:     Set var_8C = Me.SSPItem
  loc_119C447:     Call 0.Method_SSPItem_UnknownEvent_90 (KeyCode, var_90)
  loc_119C44F:     var_90.Caption
  loc_119C465:     Set var_A4 = Me.Txt
  loc_119C46B:     Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H1E), var_A8)
  loc_119C473:     var_A8.Text = CStr(var_90)
  loc_119C493:     Set var_8C = Me.SSPItem
  loc_119C499:     Call 0.Method_SSPItem_UnknownEvent_90 (KeyCode)
  loc_119C4B7:     Set var_A4 = Me.Txt
  loc_119C4BD:     Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H1E), var_A8)
  loc_119C4C5:     var_A8.Tag = CStr(var_90.Tag)
  loc_119C4DE:   Else
  loc_119C4E6:     If (var_88 = "Company") Then
  loc_119C4F3:       Set var_8C = Me.SSPItem
  loc_119C4F9:       Call 0.Method_SSPItem_UnknownEvent_90 (KeyCode, var_90)
  loc_119C501:       var_90.Caption
  loc_119C517:       Set var_A4 = Me.Txt
  loc_119C51D:       Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H1F), var_A8)
  loc_119C525:       var_A8.Text = CStr(var_90)
  loc_119C545:       Set var_8C = Me.SSPItem
  loc_119C54B:       Call 0.Method_SSPItem_UnknownEvent_90 (KeyCode)
  loc_119C569:       Set var_A4 = Me.Txt
  loc_119C56F:       Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H1F), var_A8)
  loc_119C577:       var_A8.Tag = CStr(var_90.Tag)
  loc_119C598:       Set var_8C = Me.Txt
  loc_119C59E:       Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H17), var_90)
  loc_119C5C7:       If (Trim(CVar(var_90)) = vbNullString) Then
  loc_119C5D8:         Set var_8C = Me.Txt
  loc_119C5DE:         Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H17), var_90)
  loc_119C5E6:         var_90.Text = "AGAINST V.NO "
  loc_119C5F2:       End If
  loc_119C5F5:     Else
  loc_119C5FD:       If (var_88 = "Member") Then
  loc_119C60A:         Set var_8C = Me.SSPItem
  loc_119C610:         Call 0.Method_SSPItem_UnknownEvent_90 (KeyCode, var_90)
  loc_119C618:         var_90.Caption
  loc_119C62E:         Set var_A4 = Me.Txt
  loc_119C634:         Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H20), var_A8)
  loc_119C63C:         var_A8.Text = CStr(var_90)
  loc_119C65C:         Set var_8C = Me.SSPItem
  loc_119C662:         Call 0.Method_SSPItem_UnknownEvent_90 (KeyCode)
  loc_119C680:         Set var_A4 = Me.Txt
  loc_119C686:         Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H20), var_A8)
  loc_119C68E:         var_A8.Tag = CStr(var_90.Tag)
  loc_119C6AF:         Set var_8C = Me.Txt
  loc_119C6B5:         Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H17), var_90)
  loc_119C6DE:         If (Trim(CVar(var_90)) = vbNullString) Then
  loc_119C6EF:           Set var_8C = Me.Txt
  loc_119C6F5:           Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H17), var_90)
  loc_119C6FD:           var_90.Text = "AGAINST V.NO "
  loc_119C709:         End If
  loc_119C709:       End If
  loc_119C709:     End If
  loc_119C709:   End If
  loc_119C709: End If
  loc_119C709: Call SSPMain_UnknownEvent_9()
  loc_119C70E: Call Proc_296_92_1533ED4(var_90)
  loc_119C713: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F6D71C
  'Data Table: 565890
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F6D5F3: Me.DGPayType.Visible = False
  loc_F6D601: var_AC = global_108
  loc_F6D60D: If Not (var_AC = 5) Then
  loc_F6D619:   If (var_AC = 6) Then
  loc_F6D61C:   End If
  loc_F6D633:   If (Me.RecordCount > 0) Then
  loc_F6D672:     Set var_B8 = Me.Txt
  loc_F6D678:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_BC)
  loc_F6D680:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F6D6B3:     var_B4 = Me.Fields.Item("Code")
  loc_F6D6D2:     Set var_B8 = Me.Txt
  loc_F6D6D8:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_BC)
  loc_F6D6E0:     var_BC.Tag = CStr(var_B4.Value)
  loc_F6D6F6:   End If
  loc_F6D701:   Set var_A8 = Me.Txt
  loc_F6D707:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_B4)
  loc_F6D70F:   var_B4.SetFocus
  loc_F6D71B: End If
  loc_F6D71B: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'EA85E8
  'Data Table: 565890
  Dim var_A8 As Variant
  loc_EA8568: Set var_88 = Me.DGPayType
  loc_EA8592: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA859A: Set var_BC = Me.DGPayType
  loc_EA85D6: Proc_6_138_106E830(Me.DGPayType, global_60, CInt(&HF), Me.FGPoint)
  loc_EA85E4: Exit Sub
End Sub

Private Sub CmdQty_Click(Index As Integer) '123321C
  'Data Table: 565890
  Dim var_88 As Integer
  Dim var_8C As Variant
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_114 As Variant
  Dim var_118 As Variant
  Dim var_120 As String
  Dim var_90 As String
  loc_1232D13: var_88 = Index
  loc_1232D1C: If Not (var_88 = 0) Then
  loc_1232D25:   If Not (var_88 = 1) Then
  loc_1232D2E:     If Not (var_88 = 2) Then
  loc_1232D37:       If Not (var_88 = 3) Then
  loc_1232D40:         If Not (var_88 = 4) Then
  loc_1232D49:           If Not (var_88 = 5) Then
  loc_1232D52:             If Not (var_88 = 6) Then
  loc_1232D5B:               If Not (var_88 = 7) Then
  loc_1232D64:                 If Not (var_88 = 8) Then
  loc_1232D6D:                   If Not (var_88 = 9) Then
  loc_1232D76:                     If Not (var_88 = &HA) Then
  loc_1232D7F:                       If (var_88 = &HF) Then
  loc_1232D82:                       End If
  loc_1232D82:                     End If
  loc_1232D82:                   End If
  loc_1232D82:                 End If
  loc_1232D82:               End If
  loc_1232D82:             End If
  loc_1232D82:           End If
  loc_1232D82:         End If
  loc_1232D82:       End If
  loc_1232D82:     End If
  loc_1232D82:   End If
  loc_1232D8F:   var_90 = Me.LblVtype.Caption
  loc_1232D97:   var_94 = var_90
  loc_1232DA5:   If Not (var_94 = "Amount") Then
  loc_1232DB0:     If (var_94 = "Tip") Then
  loc_1232DB3:     End If
  loc_1232DD7:     If CBool(InStr(1, CVar(Me.TxtQty), ".", 0)) Then
  loc_1232DDE:       Set var_118 = Me.TxtQty
  loc_1232E19:       var_114 = (Len(Left(CVar(var_118), CLng(InStr(1, CVar(Me.TxtQty), ".", 0)))) + 2)
  loc_1232E29:       Me.TxtQty.MaxLength = CLng(var_114)
  loc_1232E48:       If (Index <> &HA) Then
  loc_1232E58:         var_120 = Me.TxtQty.Text
  loc_1232E6D:         Set var_8C = Me.CmdQty
  loc_1232E73:         Call 0.Method_CmdQty_Click0 (Index, var_118, var_90)
  loc_1232E7B:         var_120 = var_118.Caption
  loc_1232E91:         Me.TxtQty.Text = var_88 & var_90
  loc_1232EAA:       End If
  loc_1232EAD:     Else
  loc_1232ECF:       Set var_8C = Me.CmdQty
  loc_1232ED5:       Call 0.Method_CmdQty_Click0 (Index, var_118)
  loc_1232EF3:       Me.TxtQty.Text = Me.TxtQty.Text & var_118.Caption
  loc_1232F0C:     End If
  loc_1232F0F:   Else
  loc_1232F17:     If Not (var_94 = "Expiry Date") Then
  loc_1232F22:       If (var_94 = "Cheque Date") Then
  loc_1232F25:       End If
  loc_1232F45:       var_D4 = (InStr(1, CVar(Me.TxtQty), ".", 0) + 1)
  loc_1232F70:       If CBool(InStr(CLng(CVar(var_118)), CVar(Me.TxtQty), ".", 0)) Then
  loc_1232F82:         Me.TxtQty.MaxLength = &HA
  loc_1232F90:         If (Index <> &HA) Then
  loc_1232FB5:           Set var_8C = Me.CmdQty
  loc_1232FBB:           Call 0.Method_CmdQty_Click0 (Index, var_118)
  loc_1232FD9:           Me.TxtQty.Text = Me.TxtQty.Text & var_118.Caption
  loc_1232FF2:         End If
  loc_1232FF5:       Else
  loc_1233017:         Set var_8C = Me.CmdQty
  loc_123301D:         Call 0.Method_CmdQty_Click0 (Index, var_118)
  loc_123303B:         Me.TxtQty.Text = Me.TxtQty.Text & var_118.Caption
  loc_1233054:       End If
  loc_1233057:     Else
  loc_123305F:       If Not (var_94 = "Credit Card No") Then
  loc_123306A:         If Not (var_94 = "Batch No") Then
  loc_1233075:           If Not (var_94 = "Cheque No") Then
  loc_1233080:             If (var_94 = "Narration") Then
  loc_1233083:             End If
  loc_1233083:           End If
  loc_1233083:         End If
  loc_1233092:         Me.TxtQty.MaxLength = &H10
  loc_12330A0:         If (Index <> &HA) Then
  loc_12330C5:           Set var_8C = Me.CmdQty
  loc_12330CB:           Call 0.Method_CmdQty_Click0 (Index, var_118)
  loc_12330E9:           Me.TxtQty.Text = Me.TxtQty.Text & var_118.Caption
  loc_1233102:         End If
  loc_1233102:       End If
  loc_1233102:     End If
  loc_1233102:   End If
  loc_1233105: Else
  loc_123310D:   If (var_88 = CInt(&HB)) Then
  loc_1233130:     If (Me.TxtQty.Text <> vbNullString) Then
  loc_1233160:       var_C4 = Left(CVar(Me.TxtQty), (Len(Me.TxtQty.Text) - 1))
  loc_1233176:       Me.TxtQty.Text = CStr(InStr(1, CVar(Me.TxtQty), ".", 0))
  loc_1233192:     End If
  loc_1233195:   Else
  loc_123319D:     If (var_88 = CInt(&HE)) Then
  loc_12331AD:       Me.TxtQty.Text = vbNullString
  loc_12331B8:     Else
  loc_12331C0:       If (var_88 = CInt(&HD)) Then
  loc_12331C3:         Call Proc_296_78_11650F8()
  loc_12331CB:       Else
  loc_12331D3:         If (var_88 = CInt(&HC)) Then
  loc_12331E7:           Me.LblIndex.Caption = CStr(0)
  loc_12331FE:           Me.FrameQty.Visible = False
  loc_1233212:           Me.FrameAmtType.Visible = True
  loc_123321A:         End If
  loc_123321A:       End If
  loc_123321A:     End If
  loc_123321A:   End If
  loc_123321A: End If
  loc_123321A: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F44294
  'Data Table: 565890
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4418B: Me.DGRoom.Visible = False
  loc_F441AA: If (Me.RecordCount > 0) Then
  loc_F441E9:   Set var_B4 = Me.Txt
  loc_F441EF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E), var_B8)
  loc_F441F7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4422A:   var_B0 = Me.Fields.Item("Code")
  loc_F44249:   Set var_B4 = Me.Txt
  loc_F4424F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E), var_B8)
  loc_F44257:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4426D: End If
  loc_F44278: Set var_A8 = Me.Txt
  loc_F4427E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E))
  loc_F44286: var_B0.SetFocus
  loc_F44292: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'EA88F8
  'Data Table: 565890
  Dim var_A8 As Variant
  Dim arg_1808 As Variant
  loc_EA8878: Set var_88 = Me.DGRoom
  loc_EA88A2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA88AA: Set var_BC = Me.DGRoom
  loc_EA88E6: Proc_6_138_106E830(Me.DGRoom, global_72, CInt(&H1E), Me.FGPoint)
  loc_EA88F4: Exit Sub
  loc_EA88F5: arg_1808 = DGRoom.DispID_1B
End Sub

Private Sub DGEmp_UnknownEvent_9 'F37454
  'Data Table: 565890
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3734B: Me.DGEmp.Visible = False
  loc_F3736A: If (Me.RecordCount > 0) Then
  loc_F373A9:   Set var_B4 = Me.Txt
  loc_F373AF:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F373B7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F373EA:   var_B0 = Me.Fields.Item("Code")
  loc_F37409:   Set var_B4 = Me.Txt
  loc_F3740F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F37417:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3742D: End If
  loc_F37438: Set var_A8 = Me.Txt
  loc_F3743E: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18))
  loc_F37446: var_B0.SetFocus
  loc_F37452: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'EA8524
  'Data Table: 565890
  Dim var_A8 As Variant
  loc_EA84A4: Set var_88 = Me.DGEmp
  loc_EA84CE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA84D6: Set var_BC = Me.DGEmp
  loc_EA8512: Proc_6_138_106E830(Me.DGEmp, global_64, CInt(&H18), Me.FGPoint)
  loc_EA8520: Exit Sub
End Sub

Private Sub Del_Click() 'F94BC4
  'Data Table: 565890
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_F94A7F: If (CLng(Me.FGrid.Row) >= 1) Then
  loc_F94AB9:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F94ADB:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F94AF1:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F94AFA:       Set var_10C = Me.FGrid
  loc_F94B15:     Else
  loc_F94B28:       Me.FGrid.Rows = 1
  loc_F94B4C:       var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0))) 'String
  loc_F94B54:       Set var_10C = Me.FGrid
  loc_F94B81:       Me.FGrid.FixedRows = 1
  loc_F94B89:     End If
  loc_F94B89:   End If
  loc_F94B8C: Else
  loc_F94BA7:   var_98 = "No Entries To Delete"
  loc_F94BAD:   MsgBox(var_98, &H10, "Delete Module", var_E8, var_108)
  loc_F94BBD: End If
  loc_F94BBD: Call Proc_296_95_10A9FD0(FGrid.DispID_10000, var_98)
  loc_F94BC2: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F46234
  'Data Table: 565890
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4612B: Me.DGMember.Visible = False
  loc_F4614A: If (Me.RecordCount > 0) Then
  loc_F46189:   Set var_B4 = Me.Txt
  loc_F4618F:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H20), var_B8)
  loc_F46197:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F461CA:   var_B0 = Me.Fields.Item("Code")
  loc_F461E9:   Set var_B4 = Me.Txt
  loc_F461EF:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H20), var_B8)
  loc_F461F7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4620D: End If
  loc_F46218: Set var_A8 = Me.Txt
  loc_F4621E: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H20))
  loc_F46226: var_B0.SetFocus
  loc_F46232: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_1F 'EA8214
  'Data Table: 565890
  Dim var_A8 As Variant
  Dim arg_1808 As Variant
  loc_EA8194: Set var_88 = Me.DGMember
  loc_EA81BE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA81C6: Set var_BC = Me.DGMember
  loc_EA8202: Proc_6_138_106E830(Me.DGMember, global_80, CInt(&H20), Me.FGPoint)
  loc_EA8210: Exit Sub
  loc_EA8211: arg_1808 = DGMember.DispID_1B
End Sub

Private Sub SSPPrevious_UnknownEvent_9 'FD24DC
  'Data Table: 565890
  loc_FD2312: var_88 = global_176
  loc_FD231D: If (var_88 = "Staff") Then
  loc_FD2326:   global_176 = "Staff"
  loc_FD232E:   Set var_90 = Me.SSPItem
  loc_FD234E:   Call Proc_296_102_F13B00(global_64, global_194, CInt(3))
  loc_FD2376:   Call Proc_296_103_EB282C(global_64, Me.SSPNext, Me.SSPPrevious)
  loc_FD2387: Else
  loc_FD238F:   If (var_88 = "Company") Then
  loc_FD2398:     global_176 = "Company"
  loc_FD23A0:     Set var_90 = Me.SSPItem
  loc_FD23C0:     Call Proc_296_102_F13B00(global_76, global_194, CInt(3), CInt(6))
  loc_FD23E8:     Call Proc_296_103_EB282C(global_76, Me.SSPNext, Me.SSPPrevious)
  loc_FD23F9:   Else
  loc_FD2401:     If (var_88 = "Member") Then
  loc_FD240A:       global_176 = "Member"
  loc_FD2412:       Set var_90 = Me.SSPItem
  loc_FD2432:       Call Proc_296_102_F13B00(global_80, global_194, CInt(3), CInt(6))
  loc_FD245A:       Call Proc_296_103_EB282C(global_80, Me.SSPNext, Me.SSPPrevious, Me.SSPNext)
  loc_FD246B:     Else
  loc_FD2473:       If (var_88 = "Room") Then
  loc_FD247C:         global_176 = "Room"
  loc_FD2484:         Set var_90 = Me.SSPItem
  loc_FD24A4:         Call Proc_296_102_F13B00(global_72, global_194, CInt(3), CInt(6))
  loc_FD24C0:         Set var_90 = Me.SSPNext
  loc_FD24CC:         Call Proc_296_103_EB282C(global_72, var_90, Me.SSPPrevious, var_90)
  loc_FD24DA:       End If
  loc_FD24DA:     End If
  loc_FD24DA:   End If
  loc_FD24DA: End If
  loc_FD24DA: Exit Sub
  loc_FD24DB: Result var_90 End Sub 'Currency
End Sub

Private Sub SSPNext_UnknownEvent_9 '10B1FD8
  'Data Table: 565890
  Dim Me As Recordset15
  loc_10B1D02: var_88 = global_176
  loc_10B1D0D: If (var_88 = "Staff") Then
  loc_10B1D16:   global_176 = "Staff"
  loc_10B1D31:   If (Me.AbsolutePosition > 0) Then
  loc_10B1D3A:     Me.MoveNext
  loc_10B1D53:     Set var_98 = Me.SSPItem
  loc_10B1D76:     Call Proc_296_101_122C5AC(Me.SSPItem, CInt(3), global_64)
  loc_10B1D89:   End If
  loc_10B1DA9:   Call Proc_296_103_EB282C(global_64, Me.SSPNext, Me.SSPPrevious)
  loc_10B1DBA: Else
  loc_10B1DC2:   If (var_88 = "Company") Then
  loc_10B1DCB:     global_176 = "Company"
  loc_10B1DE6:     If (Me.AbsolutePosition > 0) Then
  loc_10B1DEF:       Me.MoveNext
  loc_10B1E2B:       Call Proc_296_101_122C5AC(Me.SSPItem, CInt(3), global_76, CInt(6), Me.SSPItem)
  loc_10B1E3E:     End If
  loc_10B1E5E:     Call Proc_296_103_EB282C(global_76, Me.SSPNext, Me.SSPPrevious, var_A8)
  loc_10B1E6F:   Else
  loc_10B1E77:     If (var_88 = "Member") Then
  loc_10B1E80:       global_176 = "Member"
  loc_10B1E9B:       If (Me.AbsolutePosition > 0) Then
  loc_10B1EA4:         Me.MoveNext
  loc_10B1EE0:         Call Proc_296_101_122C5AC(Me.SSPItem, CInt(3), global_80, CInt(6), Me.SSPItem)
  loc_10B1EF3:       End If
  loc_10B1F13:       Call Proc_296_103_EB282C(global_80, Me.SSPNext, Me.SSPPrevious, var_A8)
  loc_10B1F24:     Else
  loc_10B1F2C:       If (var_88 = "Room") Then
  loc_10B1F35:         global_176 = "Room"
  loc_10B1F50:         If (Me.AbsolutePosition > 0) Then
  loc_10B1F59:           Me.MoveNext
  loc_10B1F95:           Call Proc_296_101_122C5AC(Me.SSPItem, CInt(3), global_72, CInt(6), Me.SSPItem)
  loc_10B1FC8:           Call Proc_296_103_EB282C(global_72, Me.SSPNext, Me.SSPPrevious, var_A8)
  loc_10B1FD6:         End If
  loc_10B1FD6:       End If
  loc_10B1FD6:     End If
  loc_10B1FD6:   End If
  loc_10B1FD6: End If
  loc_10B1FD6: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F5C710
  'Data Table: 565890
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5C5F0: On Error Goto loc_F5C70A
  loc_F5C602: Me.DGTable.Visible = False
  loc_F5C621: If (Me.RecordCount > 0) Then
  loc_F5C660:   Set var_B4 = Me.Txt
  loc_F5C666:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F5C66E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5C6A1:   var_B0 = Me.Fields.Item("Code")
  loc_F5C6C0:   Set var_B4 = Me.Txt
  loc_F5C6C6:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F5C6CE:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5C6E4: End If
  loc_F5C6EF: Set var_A8 = Me.Txt
  loc_F5C6F5: Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10))
  loc_F5C6FD: var_B0.SetFocus
  loc_F5C709: Exit Sub
  loc_F5C70A: ' Referenced from: F5C5F0
  loc_F5C70A: Proc_6_60_E63754(var_B0)
  loc_F5C70F: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA7B30
  'Data Table: 565890
  Dim var_A8 As Variant
  loc_EA7AB0: Set var_88 = Me.DGTable
  loc_EA7ADA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7AE2: Set var_BC = Me.DGTable
  loc_EA7B1E: Proc_6_138_106E830(Me.DGTable, global_68, CInt(&H10), Me.FGPoint)
  loc_EA7B2C: Exit Sub
  loc_EA7B2D: Exit Sub
End Sub

Public Function global_52Get() '567884
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '567893
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EBF754
  'Data Table: 565890
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBF6CA: On Error Goto loc_EBF70F
  loc_EBF6D3: Me.MoveFirst
  loc_EBF6ED: var_8C = "Searchcode='" & MyValue
  loc_EBF6FD: Me.Find var_8C & "'", 0, 1
  loc_EBF709: Call Proc_296_85_155BF64(var_A0)
  loc_EBF70E: Exit Sub
  loc_EBF70F: ' Referenced from: EBF6CA
  loc_EBF717: Set var_A4 = Err()
  loc_EBF71D: Call 0.Method_arg_2C (var_8C)
  loc_EBF73E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBF751: Exit Sub
  loc_EBF752: Exit Sub
End Sub

Public Sub Amount(MyValue) 'EE8B98
  'Data Table: 565890
  Dim var_90 As Variant
  Dim var_9C As Double
  loc_EE8AE7: var_88 = MyValue
  loc_EE8AEA: On Error Goto loc_EE8B91
  loc_EE8AFB: Set var_8C = Me.LTxt
  loc_EE8B01: Call 0.Method_Amount0 (CInt(&H1C), var_90)
  loc_EE8B16: var_9C = Val(var_90.Caption)
  loc_EE8B3B: If ((CDbl(Val(var_88)) > CDbl(var_9C)) And (global_172 = 0)) Then
  loc_EE8B57:   MsgBox("Amount You have entered is greater than Actual amount", &H40, var_DC, var_FC, var_11C)
  loc_EE8B67:   Exit Sub
  loc_EE8B68: End If
  loc_EE8B76: Set var_8C = Me.Txt
  loc_EE8B7C: Call 0.Method_Amount0 (CInt(&H11), var_90)
  loc_EE8B84: var_90.Text = var_88
  loc_EE8B90: Exit Sub
  loc_EE8B91: ' Referenced from: EE8AEA
  loc_EE8B91: Proc_6_60_E63754(var_9C)
  loc_EE8B96: Exit Sub
End Sub

Public Sub TIP(MyValue) 'E59164
  'Data Table: 565890
  Dim var_90 As TextBox
  loc_E59132: On Error Goto loc_E5915E
  loc_E59143: Set var_8C = Me.Txt
  loc_E59149: Call 0.Method_TIP0 (CInt(&H19), var_90)
  loc_E59151: var_90.Text = MyValue
  loc_E5915D: Exit Sub
  loc_E5915E: ' Referenced from: E59132
  loc_E5915E: Proc_6_60_E63754()
  loc_E59163: Exit Sub
End Sub

Public Sub CCNo(MyValue) 'E57D74
  'Data Table: 565890
  Dim var_90 As TextBox
  loc_E57D42: On Error Goto loc_E57D6E
  loc_E57D53: Set var_8C = Me.Txt
  loc_E57D59: Call 0.Method_CCNo0 (CInt(&H12), var_90)
  loc_E57D61: var_90.Text = MyValue
  loc_E57D6D: Exit Sub
  loc_E57D6E: ' Referenced from: E57D42
  loc_E57D6E: Proc_6_60_E63754()
  loc_E57D73: Exit Sub
End Sub

Public Sub ExpDt(MyValue) 'E593A8
  'Data Table: 565890
  Dim var_90 As TextBox
  loc_E59376: On Error Goto loc_E593A2
  loc_E59387: Set var_8C = Me.Txt
  loc_E5938D: Call 0.Method_ExpDt0 (CInt(&H14), var_90)
  loc_E59395: var_90.Text = MyValue
  loc_E593A1: Exit Sub
  loc_E593A2: ' Referenced from: E59376
  loc_E593A2: Proc_6_60_E63754()
  loc_E593A7: Exit Sub
End Sub

Public Sub BatchNo(MyValue) 'E582E4
  'Data Table: 565890
  Dim var_90 As TextBox
  loc_E582B2: On Error Goto loc_E582DE
  loc_E582C3: Set var_8C = Me.Txt
  loc_E582C9: Call 0.Method_BatchNo0 (CInt(3), var_90)
  loc_E582D1: var_90.Text = MyValue
  loc_E582DD: Exit Sub
  loc_E582DE: ' Referenced from: E582B2
  loc_E582DE: Proc_6_60_E63754()
  loc_E582E3: Exit Sub
End Sub

Public Sub ChequeNo(MyValue) 'E586F8
  'Data Table: 565890
  Dim var_90 As TextBox
  loc_E586C6: On Error Goto loc_E586F2
  loc_E586D7: Set var_8C = Me.Txt
  loc_E586DD: Call 0.Method_ChequeNo0 (CInt(&H15), var_90)
  loc_E586E5: var_90.Text = MyValue
  loc_E586F1: Exit Sub
  loc_E586F2: ' Referenced from: E586C6
  loc_E586F2: Proc_6_60_E63754()
  loc_E586F7: Exit Sub
End Sub

Public Sub ChequeDt(MyValue) 'E591D8
  'Data Table: 565890
  Dim var_90 As TextBox
  loc_E591A6: On Error Goto loc_E591D2
  loc_E591B7: Set var_8C = Me.Txt
  loc_E591BD: Call 0.Method_ChequeDt0 (CInt(&H16), var_90)
  loc_E591C5: var_90.Text = MyValue
  loc_E591D1: Exit Sub
  loc_E591D2: ' Referenced from: E591A6
  loc_E591D2: Proc_6_60_E63754()
  loc_E591D7: Exit Sub
End Sub

Public Sub Narration(MyValue) 'E59008
  'Data Table: 565890
  Dim var_90 As TextBox
  loc_E58FD6: On Error Goto loc_E59002
  loc_E58FE7: Set var_8C = Me.Txt
  loc_E58FED: Call 0.Method_Narration0 (CInt(&H17), var_90)
  loc_E58FF5: var_90.Text = MyValue
  loc_E59001: Exit Sub
  loc_E59002: ' Referenced from: E58FD6
  loc_E59002: Proc_6_60_E63754()
  loc_E59007: Exit Sub
End Sub

Public Property Get OpenMode() 'E04750
  'Data Table: 565890
  loc_E04749: OpenMode = global_104
End Sub

Public Property Let OpenMode(vNewValue) 'E025A8
  'Data Table: 565890
  loc_E025A2: global_104 = vNewValue
  loc_E025A5: Exit Sub
End Sub

Public Property Get OpenType() 'E04B50
  'Data Table: 565890
  loc_E04B49: OpenType = global_108
End Sub

Public Property Let OpenType(vNewValue) 'E024F4
  'Data Table: 565890
  loc_E024EE: global_108 = vNewValue
  loc_E024F1: Exit Sub
End Sub

Public Property Get AdvType() 'E129B4
  'Data Table: 565890
  loc_E129A8: var_88 = global_116
  loc_E129AB: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E12924
  'Data Table: 565890
  loc_E1291C: global_116 = vNewValue
  loc_E12920: Exit Sub
End Sub

Public Property Get IdNo() 'E1272C
  'Data Table: 565890
  Dim MeE1 As Integer
  loc_E12720: var_88 = global_112
  loc_E12723: IdNo = 
  loc_E12729: MeE1 = 
End Sub

Public Property Let IdNo(vNewValue) 'E1269C
  'Data Table: 565890
  loc_E12694: global_112 = vNewValue
  loc_E12698: Exit Sub
End Sub

Public Property Get PersonCode() 'E12654
  'Data Table: 565890
  Dim MeE1 As Integer
  loc_E12648: var_88 = global_124
  loc_E1264B: PersonCode = 
  loc_E12651: MeE1 = 
End Sub

Public Property Let PersonCode(vNewValue) 'E12534
  'Data Table: 565890
  loc_E1252C: global_124 = vNewValue
  loc_E12530: Exit Sub
End Sub

Public Property Get pDocId() 'E1221C
  'Data Table: 565890
  loc_E12210: var_88 = global_120
  loc_E12213: pDocId = 
  loc_E12219: If  Then Exit Sub
  loc_E12219: End If
End Sub

Public Property Let pDocId(vNewValue) 'E120FC
  'Data Table: 565890
  Dim MeE1 As Integer
  loc_E120F4: global_120 = vNewValue
  loc_E120F8: Exit Sub
  loc_E120F9: MeE1 = 
End Sub

Public Property Get PTableOrRoomNo() 'E120B4
  'Data Table: 565890
  loc_E120A8: var_88 = global_128
  loc_E120AB: PTableOrRoomNo = 
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E11F04
  'Data Table: 565890
  loc_E11EFC: global_128 = vNewValue
  loc_E11F00: Exit Sub
End Sub

Public Property Get PRoomCat() 'E11EBC
  'Data Table: 565890
  loc_E11EB0: var_88 = global_164
  loc_E11EB3: PRoomCat = 
  loc_E11EB9: If  Then Exit Sub
  loc_E11EB9: End If
End Sub

Public Property Let PRoomCat(vNewValue) 'E11E74
  'Data Table: 565890
  loc_E11E6C: global_164 = vNewValue
  loc_E11E70: Exit Sub
End Sub

Public Property Get PRoomtype() 'E15504
  'Data Table: 565890
  Dim MeE1 As Integer
  loc_E154F8: var_88 = global_168
  loc_E154FB: PRoomtype = 
  loc_E15501: MeE1 = 
End Sub

Public Property Let PRoomtype(vNewValue) 'E11C34
  'Data Table: 565890
  Dim MeE1 As Integer
  loc_E11C2C: global_168 = vNewValue
  loc_E11C30: Exit Sub
  loc_E11C31: MeE1 = 
End Sub

Public Property Get PBillAmt() 'E11B5C
  'Data Table: 565890
  loc_E11B52: var_88 = CStr(global_132)
  loc_E11B55: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E11B14
  'Data Table: 565890
  loc_E11B0E: global_132 = CDbl(vNewValue)
  loc_E11B11: Exit Sub
End Sub

Public Property Get PSettlementMode() 'E11A84
  'Data Table: 565890
  loc_E11A78: var_88 = global_140
  loc_E11A7B: PSettlementMode = 
  loc_E11A82: If Not ( = ) Then Exit Sub
  loc_E11A82: End If
End Sub

Public Property Let PSettlementMode(vNewValue) 'E11964
  'Data Table: 565890
  loc_E1195C: global_140 = vNewValue
  loc_E11960: Exit Sub
End Sub

Public Property Get PCardType() 'E1191C
  'Data Table: 565890
  loc_E11910: var_88 = global_144
  loc_E11913: PCardType = 
End Sub

Public Property Let PCardType(vNewValue) 'E11844
  'Data Table: 565890
  loc_E1183C: global_144 = vNewValue
  loc_E11840: Exit Sub
End Sub

Public Property Get PCardCode() 'E11724
  'Data Table: 565890
  loc_E11718: var_88 = global_148
  loc_E1171B: PCardCode = 
  loc_E11721: Exit Sub
End Sub

Public Property Let PCardCode(vNewValue) 'E11694
  'Data Table: 565890
  Dim MeE1 As Integer
  loc_E1168C: global_148 = vNewValue
  loc_E11690: Exit Sub
  loc_E11691: MeE1 = 
End Sub

Public Sub Proc_296_78_11650F8
  'Data Table: 565890
  Dim var_D4 As String
  loc_1164D55: var_90 = Me.LblVtype.Caption
  loc_1164D63: If (var_90 = "Amount") Then
  loc_1164D86:   If (Me.TxtQty.Text = vbNullString) Then
  loc_1164D89:     Exit Sub
  loc_1164D8A:   End If
  loc_1164DBC:   Call Amount(CStr(Format(CVar(Me.TxtQty), "0.00")))
  loc_1164DDD:   Me.TxtQty.Text = vbNullString
  loc_1164DE8: Else
  loc_1164DF0:   If (var_90 = "Tip") Then
  loc_1164E25:     Call TIP(CStr(Format(CVar(Me.TxtQty), "0.00")))
  loc_1164E46:     Me.TxtQty.Text = vbNullString
  loc_1164E51:   Else
  loc_1164E59:     If (var_90 = "Credit Card No") Then
  loc_1164E7C:       If (Me.TxtQty.Text = vbNullString) Then
  loc_1164E7F:         Exit Sub
  loc_1164E80:       End If
  loc_1164E95:       Call CCNo(Me.TxtQty.Text)
  loc_1164EAD:       Me.TxtQty.Text = vbNullString
  loc_1164EB8:     Else
  loc_1164EC0:       If (var_90 = "Expiry Date") Then
  loc_1164EE3:         If (Me.TxtQty.Text = vbNullString) Then
  loc_1164EE6:           Exit Sub
  loc_1164EE7:         End If
  loc_1164EF9:         Call ExpDt(Proc_6_33_15125B8(Me.TxtQty, 1, 1))
  loc_1164F11:         Me.TxtQty.Text = vbNullString
  loc_1164F1C:       Else
  loc_1164F24:         If (var_90 = "Batch No") Then
  loc_1164F47:           If (Me.TxtQty.Text = vbNullString) Then
  loc_1164F4A:             Exit Sub
  loc_1164F4B:           End If
  loc_1164F60:           Call BatchNo(Me.TxtQty.Text)
  loc_1164F78:           Me.TxtQty.Text = vbNullString
  loc_1164F83:         Else
  loc_1164F8B:           If (var_90 = "Cheque Date") Then
  loc_1164FAE:             If (Me.TxtQty.Text = vbNullString) Then
  loc_1164FB1:               Exit Sub
  loc_1164FB2:             End If
  loc_1164FC4:             Call ChequeDt(Proc_6_33_15125B8(Me.TxtQty, 1))
  loc_1164FDC:             Me.TxtQty.Text = vbNullString
  loc_1164FE7:           Else
  loc_1164FEF:             If (var_90 = "Cheque No") Then
  loc_1165012:               If (Me.TxtQty.Text = vbNullString) Then
  loc_1165015:                 Exit Sub
  loc_1165016:               End If
  loc_116502B:               Call ChequeNo(Me.TxtQty.Text)
  loc_1165043:               Me.TxtQty.Text = vbNullString
  loc_116504E:             Else
  loc_1165056:               If (var_90 = "Narration") Then
  loc_1165079:                 If (Me.TxtQty.Text = vbNullString) Then
  loc_116507C:                   Exit Sub
  loc_116507D:                 End If
  loc_1165092:                 Call Narration(Me.TxtQty.Text)
  loc_11650AA:                 Me.TxtQty.Text = vbNullString
  loc_11650B2:               End If
  loc_11650B2:             End If
  loc_11650B2:           End If
  loc_11650B2:         End If
  loc_11650B2:       End If
  loc_11650B2:     End If
  loc_11650B2:   End If
  loc_11650B2: End If
  loc_11650D2: var_D4 = CStr((Val(Me.LblIndex.Caption) + CDbl(1)))
  loc_11650DF: Me.LblIndex.Caption = var_D4
  loc_11650F2: Call Proc_296_105_FA6070(1)
  loc_11650F7: Exit Sub
End Sub

Public Sub Proc_296_79_DFD458
  'Data Table: 565890
  Dim arg_7FFF As Double
  loc_DFD454: Exit Sub
  loc_DFD455: arg_7FFF = 
End Sub

Public Sub Proc_296_80_12CBA94
  'Data Table: 565890
  Dim var_A8 As String
  Dim unk_5658BD As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As String
  Dim var_D0 As Fields15
  Dim var_CC As Variant
  Dim var_9C As Recordset15
  Dim var_D8 As TextBox
  Dim Me As Recordset15
  loc_12CB438: On Error Goto loc_12CBA8B
  loc_12CB45F: unk_5658BD.Execute "Select Interface From MemEnviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_CC, -1
  loc_12CB46A: Set var_88 = var_D0
  loc_12CB48E: If (var_88.RecordCount > 0) Then
  loc_12CB4A0:   var_D0 = var_88.Fields
  loc_12CB4B0:   var_CC = CVar(var_D0.Item("Interface")) 'Address
  loc_12CB4B9:   var_DC = Proc_6_38_E69628(var_CC)
  loc_12CB4CA:   If (var_DC = "SmartCard_ACR") Then
  loc_12CB525:     If (Proc_275_12_130B494(2, 0, var_8C, var_94, var_90, 0) = 0) Then
  loc_12CB528:       Exit Sub
  loc_12CB529:     End If
  loc_12CB531:     If (var_94 = "Member") Then
  loc_12CB548:       var_A8 = "Select S.Name From SmartCardRegistration SCR Inner Join SubGroup S On SCR.MemberCode=S.SubCode Where SCR.Code='" & var_8C
  loc_12CB558:       unk_5658BD.Execute var_A8 & "'", var_CC, -1
  loc_12CB563:       Set var_9C = var_D0
  loc_12CB587:       If (var_9C.RecordCount > 0) Then
  loc_12CB58D:         var_BC = "Name"
  loc_12CB599:         var_D0 = var_9C.Fields
  loc_12CB5A1:         var_D8 = var_D0.Item(var_BC)
  loc_12CB5B2:         var_A4 = Proc_6_38_E69628(CVar(var_D8), var_D0, 0, var_A0)
  loc_12CB5BB:       End If
  loc_12CB5BB:     End If
  loc_12CB5BE:     var_A8 = PCardType
  loc_12CB5F5:     If (((var_A8 = "Cash Card") And (var_94 = "Member")) Or ((PSettlementMode = "Semi") And (var_94 = "Member"))) Then
  loc_12CB606:       Set var_D0 = Me.Txt
  loc_12CB60C:       Call 0.Method_Proc_296_80_12CBA940 (CInt(&HF), var_D8, "CASH CARD")
  loc_12CB614:       var_D8.Text = 0
  loc_12CB661:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12CB664:         Exit Sub
  loc_12CB665:       End If
  loc_12CB66B:       Me.MoveFirst
  loc_12CB695:       Call 0.Method_Proc_296_80_12CBA940 (CInt(&HF), var_D8, var_A8, "Name ='", 0)
  loc_12CB69D:       1 = var_D8.Text
  loc_12CB6B6:       Me.Find var_BC & var_A8 & "'", 0, Me.Txt
  loc_12CB6D9:       Set var_D0 = Me.Txt
  loc_12CB6DF:       Call 0.Method_Proc_296_80_12CBA940 (CInt(&H21), var_D8)
  loc_12CB6E7:       var_D8.Text = var_8C
  loc_12CB701:       Set var_D0 = Me.Txt
  loc_12CB707:       Call 0.Method_Proc_296_80_12CBA940 (CInt(&H22), var_D8)
  loc_12CB70F:       var_D8.Text = var_90
  loc_12CB721:       Call Proc_296_91_1318AF8(global_160)
  loc_12CB726:       Call Proc_296_104_105D354()
  loc_12CB72E:     Else
  loc_12CB731:       var_A8 = PCardType
  loc_12CB74A:       If ((var_A8 = "Member") And (var_94 = "Member")) Then
  loc_12CB75B:         Set var_D0 = Me.Txt
  loc_12CB761:         Call 0.Method_Proc_296_80_12CBA940 (CInt(&HF), var_D8)
  loc_12CB769:         var_D8.Text = "BILL TO MEMBER"
  loc_12CB7B6:         If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12CB7B9:           Exit Sub
  loc_12CB7BA:         End If
  loc_12CB7C0:         Me.MoveFirst
  loc_12CB7E4:         Set var_D0 = Me.Txt
  loc_12CB7EA:         Call 0.Method_Proc_296_80_12CBA940 (CInt(&HF), var_D8, var_A8, "Name ='")
  loc_12CB7F2:         0 = var_D8.Text
  loc_12CB80B:         Me.Find 1 & var_A8 & "'", var_BC, 
  loc_12CB82E:         Set var_D0 = Me.Txt
  loc_12CB834:         Call 0.Method_Proc_296_80_12CBA940 (CInt(&H20), var_D8)
  loc_12CB83C:         var_D8.Text = var_A4
  loc_12CB856:         Set var_D0 = Me.Txt
  loc_12CB85C:         Call 0.Method_Proc_296_80_12CBA940 (CInt(&H20), var_D8)
  loc_12CB864:         var_D8.Tag = var_A0
  loc_12CB876:         Call Proc_296_91_1318AF8(global_160)
  loc_12CB87B:         Call Proc_296_104_105D354()
  loc_12CB883:       Else
  loc_12CB886:         var_A8 = PCardType
  loc_12CB8BD:         If (((var_A8 = "Cash Card") And (var_94 = "Cash Card")) Or ((PSettlementMode = "Semi") And (var_94 = "Cash Card"))) Then
  loc_12CB8CE:           Set var_D0 = Me.Txt
  loc_12CB8D4:           Call 0.Method_Proc_296_80_12CBA940 (CInt(&HF), var_D8)
  loc_12CB8DC:           var_D8.Text = "CASH CARD"
  loc_12CB929:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12CB92C:             Exit Sub
  loc_12CB92D:           End If
  loc_12CB933:           Me.MoveFirst
  loc_12CB957:           Set var_D0 = Me.Txt
  loc_12CB95D:           Call 0.Method_Proc_296_80_12CBA940 (CInt(&HF), var_D8, var_A8, "Name ='")
  loc_12CB965:           0 = var_D8.Text
  loc_12CB97E:           Me.Find 1 & var_A8 & "'", var_BC, 
  loc_12CB9A1:           Set var_D0 = Me.Txt
  loc_12CB9A7:           Call 0.Method_Proc_296_80_12CBA940 (CInt(&H21), var_D8)
  loc_12CB9AF:           var_D8.Text = var_8C
  loc_12CB9C9:           Set var_D0 = Me.Txt
  loc_12CB9CF:           Call 0.Method_Proc_296_80_12CBA940 (CInt(&H22), var_D8)
  loc_12CB9D7:           var_D8.Text = var_90
  loc_12CB9E9:           Call Proc_296_91_1318AF8(global_160)
  loc_12CB9EE:           Call Proc_296_104_105D354()
  loc_12CB9F3:         End If
  loc_12CB9F3:       End If
  loc_12CB9F3:     End If
  loc_12CB9F6:   Else
  loc_12CB9FE:     If (var_DC = "NBSD_Mifare") Then
  loc_12CBA1A:       MsgBox("Procedure Not Defined!", &H40, var_124, var_144, var_164)
  loc_12CBA2D:     Else
  loc_12CBA46:       MsgBox("Smart Card Interface Not Defined!", &H40, var_124, var_144, var_164)
  loc_12CBA56:     End If
  loc_12CBA56:   End If
  loc_12CBA59: Else
  loc_12CBA72:   MsgBox("Member Environment Settings NOT SET!", 0, var_124, var_144, var_164)
  loc_12CBA82: End If
  loc_12CBA87: Set var_88 = Nothing
  loc_12CBA8A: Exit Sub
  loc_12CBA8B: ' Referenced from: 12CB438
  loc_12CBA8B: Proc_6_60_E63754()
  loc_12CBA90: Exit Sub
End Sub

Public Sub Proc_296_81_FC7E1C(arg_C) 'FC7E1C
  'Data Table: 565890
  Dim var_98 As TextBox
  loc_FC7C6A: Set var_8C = Me.Txt
  loc_FC7C70: Call 0.Method_Proc_296_81_FC7E1C8 (var_8E, var_86)
  loc_FC7C80: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FC7D1B:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_FC7D2E:     Set var_8C = Me.Txt
  loc_FC7D34:     Call 0.Method_Proc_296_81_FC7E1C0 (CInt(var_86), var_98)
  loc_FC7D3C:     var_98.Enabled = arg_C
  loc_FC7D48:   End If
  loc_FC7D4B: Next var_92 'Byte
  loc_FC7D5D: If (global_104 = 1) Then
  loc_FC7D6D:   Set var_8C = Me.Txt
  loc_FC7D73:   Call 0.Method_Proc_296_81_FC7E1C0 (CInt(1), var_98)
  loc_FC7D7B:   var_98.Enabled = False
  loc_FC7D87: End If
  loc_FC7D94: Set var_8C = Me.Txt
  loc_FC7D9A: Call 0.Method_Proc_296_81_FC7E1C0 (CInt(2), var_98)
  loc_FC7DA2: var_98.Enabled = False
  loc_FC7DBB: Set var_8C = Me.Txt
  loc_FC7DC1: Call 0.Method_Proc_296_81_FC7E1C0 (CInt(0), var_98)
  loc_FC7DC9: var_98.Enabled = False
  loc_FC7DEC: If (OpenMode = 1) Then
  loc_FC7DFC:   Set var_8C = Me.Txt
  loc_FC7E02:   Call 0.Method_Proc_296_81_FC7E1C0 (CInt(&H10), var_98)
  loc_FC7E0A:   var_98.Enabled = False
  loc_FC7E16:   GoTo loc_FC7E19
  loc_FC7E19:   ' Referenced from: FC7E16
  loc_FC7E19: End If
  loc_FC7E19: Exit Sub
End Sub

Public Sub Proc_296_82_F0F474(arg_C) 'F0F474
  'Data Table: 565890
  Dim var_98 As TextBox
  loc_F0F38A: Set var_8C = Me.Txt
  loc_F0F390: Call 0.Method_Proc_296_82_F0F4748 (var_8E, var_86)
  loc_F0F3A0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F0F43B:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_F0F44E:     Set var_8C = Me.Txt
  loc_F0F454:     Call 0.Method_Proc_296_82_F0F4740 (CInt(var_86), var_98)
  loc_F0F45C:     var_98.Enabled = arg_C
  loc_F0F468:   End If
  loc_F0F46B: Next var_92 'Byte
  loc_F0F471: Exit Sub
End Sub

Public Sub Proc_296_83_1012EB0
  'Data Table: 565890
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_8C As MSHFlexGrid
  loc_1012C96: Set var_8C = Me.Txt
  loc_1012C9C: Call 0.Method_Proc_296_83_1012EB0C (var_8E, var_86)
  loc_1012CAC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1012D47:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_1012D5A:     Set var_8C = Me.Txt
  loc_1012D60:     Call 0.Method_Proc_296_83_1012EB00 (CInt(var_86), var_98)
  loc_1012D68:     var_98.Text = vbNullString
  loc_1012D84:     Set var_8C = Me.Txt
  loc_1012D8A:     Call 0.Method_Proc_296_83_1012EB00 (CInt(var_86), var_98)
  loc_1012D92:     var_98.Tag = vbNullString
  loc_1012DAD:     Set var_8C = Me.Txt
  loc_1012DB3:     Call 0.Method_Proc_296_83_1012EB00 (CInt(var_86), var_98)
  loc_1012DBB:     var_98.Locked = True
  loc_1012DC7:   End If
  loc_1012DCA: Next var_92 'Byte
  loc_1012DE3: Me.FGrid.Rows = 1
  loc_1012DEB: var_A8 = "1"
  loc_1012DF5: Set var_8C = Me.FGrid
  loc_1012E19: Me.FGrid.FixedRows = 1
  loc_1012E2F: Set var_8C = Me.LTxt
  loc_1012E35: Call 0.Method_Proc_296_83_1012EB00 (CInt(&H1A), var_98, vbNullString)
  loc_1012E3D: var_98.Caption = FGrid.DispID_10000
  loc_1012E57: Set var_8C = Me.LTxt
  loc_1012E5D: Call 0.Method_Proc_296_83_1012EB00 (CInt(&H1B), var_98)
  loc_1012E65: var_98.Caption = vbNullString
  loc_1012E7F: Set var_8C = Me.LTxt
  loc_1012E85: Call 0.Method_Proc_296_83_1012EB00 (CInt(&H1C), var_98)
  loc_1012E8D: var_98.Caption = vbNullString
  loc_1012E9F: global_180 = vbNullString
  loc_1012EAC: global_184 = CDate(var_A8)
  loc_1012EAF: Exit Sub
End Sub

Public Sub Proc_296_84_120DEB0
  'Data Table: 565890
  Dim var_90 As Long
  Dim var_A0 As Variant
  loc_120D9DA: Call 0.Method_arg_54 ("Settlement Entry")
  loc_120D9EE: Me.FrRest.Top = CDbl(1140)
  loc_120DA04: Me.FrRest.Left = CDbl(0)
  loc_120DA17: var_90 = OpenType
  loc_120DA23: If Not (var_90 = 1) Then
  loc_120DA2F:   If (var_90 = 7) Then
  loc_120DA32:   End If
  loc_120DA45:   Me.FGrid.Top = CVar(CDbl(3705))
  loc_120DA50: Else
  loc_120DA59:   If Not (var_90 = 5) Then
  loc_120DA65:     If (var_90 = 6) Then
  loc_120DA68:     End If
  loc_120DA7B:     Me.FGrid.Top = CVar(CDbl(3045))
  loc_120DA83:   End If
  loc_120DA83: End If
  loc_120DA95: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_120DAC2: Me.FrChqDet.Top = (Me.FrRest.Top + CDbl(960))
  loc_120DADD: Me.FrChqDet.Left = CDbl(240)
  loc_120DB0A: Me.FrCCDet.Top = (Me.FrRest.Top + CDbl(960))
  loc_120DB25: Me.FrCCDet.Left = CDbl(240)
  loc_120DB4F: Me.DGPayType.Top = CVar(CDbl(Me.FGrid.Top))
  loc_120DB80: Me.DGPayType.Height = CVar(CDbl(Me.FGrid.Height))
  loc_120DBBD: var_A0 = CVar((Me.FrRest.Top + CDbl(Me.FGrid.Top))) 'Single
  loc_120DBCC: Me.DGTable.Top = CVar(CDbl(Me.FGrid.Height))
  loc_120DBFF: Me.DGTable.Height = CVar(CDbl(Me.FGrid.Height))
  loc_120DC33: Me.FrSendRoom.Top = (Me.FrRest.Top + CDbl(960))
  loc_120DC4E: Me.FrSendRoom.Left = CDbl(240)
  loc_120DC7B: Me.FrEmp.Top = (Me.FrRest.Top + CDbl(960))
  loc_120DC96: Me.FrEmp.Left = CDbl(240)
  loc_120DCC3: Me.FrComp.Top = (Me.FrRest.Top + CDbl(960))
  loc_120DCDE: Me.FrComp.Left = CDbl(240)
  loc_120DD0B: Me.FrMem.Top = (Me.FrRest.Top + CDbl(960))
  loc_120DD26: Me.FrMem.Left = CDbl(240)
  loc_120DD53: Me.FrCashCard.Top = (Me.FrRest.Top + CDbl(960))
  loc_120DD6E: Me.FrCashCard.Left = CDbl(240)
  loc_120DD89: Me.DGRoom.Top = CVar(CDbl(405))
  loc_120DDA4: Me.DGRoom.Left = CVar(CDbl(5415))
  loc_120DDBF: Me.DGEmp.Top = CVar(CDbl(405))
  loc_120DDDA: Me.DGEmp.Left = CVar(CDbl(5550))
  loc_120DDF5: Me.DGCompany.Top = CVar(CDbl(405))
  loc_120DE10: Me.DGCompany.Left = CVar(CDbl(5550))
  loc_120DE24: If (global_108 = 5) Then
  loc_120DE36:   Me.FrRem.Width = CDbl(4925)
  loc_120DE3E: End If
  loc_120DE4A: If (global_108 = 6) Then
  loc_120DE5C:   Me.FrRem.Width = CDbl(4925)
  loc_120DE64: End If
  loc_120DE89: Me.FrRem.Top = (Me.FrRest.Top + CDbl(960))
  loc_120DEA4: Me.FrRem.Left = CDbl(240)
  loc_120DEAC: Exit Sub
End Sub

Public Sub Proc_296_85_155BF64
  'Data Table: 565890
  Dim Me As Variant
  Dim var_9C As Long
  Dim var_A0 As String
  Dim var_A8 As String
  Dim var_AC As String
  Dim var_B4 As String
  Dim var_BC As String
  Dim var_F8 As Variant
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_D8 As Field20
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim unk_5658BD As Connection15
  Dim var_154 As Variant
  Dim var_150 As Variant
  Dim var_E8 As Variant
  Dim var_92 As Integer
  Dim var_16C As Variant
  Dim var_8A As Integer
  Dim var_13C As Variant
  Dim var_17C As Long
  Dim var_1AC As Variant
  Dim var_90 As Recordset15
  loc_155AF50: On Error Goto loc_155BF1E
  loc_155AF59: Proc_183_45_E5CCA8(global_56)
  loc_155AF75: If (Me.RecordCount <= 0) Then
  loc_155AF78:   Call Proc_296_83_1012EB0()
  loc_155AF80: Else
  loc_155AF86:   var_9C = global_108
  loc_155AF92:   If Not (var_9C = 5) Then
  loc_155AF9E:     If (var_9C = 6) Then
  loc_155AFA1:     End If
  loc_155AFB5:     var_A0 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, " & "E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,"
  loc_155AFC3:     var_A8 = var_A0 & "ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, " & "R.Name AS RoomName, ST.FolioNo, ST.CardNo, st.U_AE,st.U_Name,st.U_Entdt,st.AU_Name,st.AU_Entdt, ST.CardHolder, ST.ChqNo, "
  loc_155AFCA:     var_AC = var_A8 & "ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode,CC.Name as MemName,CompCode As MemCode FROM ((((PayCharge AS ST LEFT JOIN "
  loc_155AFD8:     var_B4 = var_AC & "GuestProf AS GP ON (ST.GuestProf = GP.Code AND ST.LOGSITE_CODE=GP.LOGSITE_CODE)) LEFT JOIN Employee AS E " & "ON (ST.EmpCode = E.Code AND ST.LOGSITE_CODE=E.LOGSITE_CODE)) LEFT JOIN RevMast AS P ON (ST.PayCode = P.Code AND ST.LOGSITE_CODE=P.LOGSITE_CODE)) "
  loc_155AFE6:     var_BC = var_B4 & "LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) " & "AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where (ST.LOGSITE_CODE='"
  loc_155B02D:     var_128 = CVar(var_BC & MemVar_1F95078 & "' or ST.LOGSITE_CODE='HO') AND ST.Docid='") & Me.Fields.Item("SearchCode").Value & "' And AmtCr>0" 
  loc_155B03B:     unk_5658BD.Execute CStr(var_128), var_14C, -1
  loc_155B046:     Set var_88 = var_150
  loc_155B076:   End If
  loc_155B0AA:   global_88 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_155B0D2:   If (Me.Recordset15.RecordCount > 0) Then
  loc_155B109:     global_180 = CStr(Me.Recordset15.Fields.Item("AU_Name").Value)
  loc_155B195:     Set var_150 = Me.Txt
  loc_155B19B:     Call 0.Method_Proc_296_85_155BF640 (CInt(0), var_154, CStr(Me.Recordset15.Fields.Item("DocID").Value))
  loc_155B1A3:     var_154.Text = CDate(Me.Recordset15.Fields.Item("AU_EntDt").Value)
  loc_155B1FB:     Call 0.Method_Proc_296_85_155BF640 (CInt(1), var_154, CStr(Me.Recordset15.Fields.Item("VNo").Value))
  loc_155B203:     var_154.Text = Me.Txt
  loc_155B255:     Set var_150 = Me.Txt
  loc_155B25B:     Call 0.Method_Proc_296_85_155BF640 (CInt(2), var_154)
  loc_155B263:     var_154.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_155B2B4:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_155B301:     Set var_150 = Me.Txt
  loc_155B307:     Call 0.Method_Proc_296_85_155BF640 (CInt(&H12), var_154)
  loc_155B30F:     var_154.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_155B323:   End If
  loc_155B332:   Me.FGrid.Redraw = False
  loc_155B347:   Set var_C4 = Me.FGrid
  loc_155B34D:   var_C4.Rows = 1
  loc_155B357:   var_92 = 1
  loc_155B371:   If (Me.var_C4.RecordCount > 0) Then
  loc_155B374:     ' Referenced from:   155BE47
  loc_155B386:     If Not(Me.Recordset15.EOF) Then
  loc_155B389:       var_D4 = vbNullString
  loc_155B393:       Set var_C4 = Me.FGrid
  loc_155B3A8:       Set var_15C = Me.FGrid
  loc_155B3AF:       var_118 = CVar(CLng(var_92)) 'Long
  loc_155B3B4:       var_16C = 0
  loc_155B3EB:       var_F8 = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_155B3F2:       LateIdCallSt
  loc_155B445:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_92)), var_15C, var_F8, 2)) 'String
  loc_155B44C:       LateIdCallSt
  loc_155B4A5:       LateIdCallSt
  loc_155B4E6:       var_A0 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayCode")), var_15C, CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)), 1, CVar(CLng(var_92)), var_15C)
  loc_155B502:       If (var_A0 = MemVar_1F95070 & "CCAD") Then
  loc_155B507:         var_8A = &HFF
  loc_155B50A:       End If
  loc_155B547:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_92)), var_8A, var_F8)) 'String
  loc_155B54E:       LateIdCallSt
  loc_155B564:       var_118 = CVar(CLng(var_92)) 'Long
  loc_155B569:       var_16C = 4
  loc_155B5A0:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("RoomCat").Value)) 'String
  loc_155B5A7:       LateIdCallSt
  loc_155B5C1:       var_118 = CVar(CLng(var_92)) 'Long
  loc_155B5C6:       var_16C = 5
  loc_155B5FD:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("Roomtype").Value)) 'String
  loc_155B604:       LateIdCallSt
  loc_155B61E:       var_118 = CVar(CLng(var_92)) 'Long
  loc_155B626:       var_16C = CVar(CLng(6)) 'Long
  loc_155B659:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("RoomNo").Value)) 'String
  loc_155B660:       LateIdCallSt
  loc_155B6B2:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomName")), CVar(CLng(7)), CVar(CLng(var_92)), var_15C, var_F8, CVar(CLng(7)), CVar(CLng(var_92)))) 'String
  loc_155B6B9:       LateIdCallSt
  loc_155B6EE:       var_13C = CVar(CLng(var_92)) 'Long
  loc_155B6F3:       var_17C = 8
  loc_155B724:       var_128 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_155B72B:       LateIdCallSt
  loc_155B745:       var_118 = CVar(CLng(var_92)) 'Long
  loc_155B74D:       var_16C = CVar(CLng(9)) 'Long
  loc_155B780:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("CardNo").Value)) 'String
  loc_155B787:       LateIdCallSt
  loc_155B7A1:       var_118 = CVar(CLng(var_92)) 'Long
  loc_155B7A9:       var_16C = CVar(CLng(&HA)) 'Long
  loc_155B7DC:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_155B7E3:       LateIdCallSt
  loc_155B835:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_92)), var_15C, var_F8, CVar(CLng(&HB)), CVar(CLng(var_92)))) 'String
  loc_155B83C:       LateIdCallSt
  loc_155B88B:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BatchNo")), &H17, CVar(CLng(var_92)), var_15C, var_F8, var_15C)) 'String
  loc_155B892:       LateIdCallSt
  loc_155B8A8:       var_118 = CVar(CLng(var_92)) 'Long
  loc_155B8B0:       var_16C = CVar(CLng(&HC)) 'Long
  loc_155B8E3:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_155B8EA:       LateIdCallSt
  loc_155B93C:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HD)), CVar(CLng(var_92)), var_15C, var_F8, CVar(CLng(&HD)), CVar(CLng(var_92)))) 'String
  loc_155B943:       LateIdCallSt
  loc_155B959:       var_118 = CVar(CLng(var_92)) 'Long
  loc_155B961:       var_16C = CVar(CLng(&HE)) 'Long
  loc_155B994:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_155B99B:       LateIdCallSt
  loc_155B9ED:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&HF)), CVar(CLng(var_92)), var_15C, var_F8, CVar(CLng(&HF)), CVar(CLng(var_92)))) 'String
  loc_155B9F4:       LateIdCallSt
  loc_155BA0A:       var_118 = CVar(CLng(var_92)) 'Long
  loc_155BA12:       var_16C = CVar(CLng(&H10)) 'Long
  loc_155BA45:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_155BA4C:       LateIdCallSt
  loc_155BA9F:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompCode")), &H14, CVar(CLng(var_92)), var_15C, var_F8, &H14, CVar(CLng(var_92)))) 'String
  loc_155BAA6:       LateIdCallSt
  loc_155BAF5:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompName")), &H15, CVar(CLng(var_92)), var_15C, var_F8, var_15C)) 'String
  loc_155BAFC:       LateIdCallSt
  loc_155BB4B:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MemCode")), &H18, CVar(CLng(var_92)), var_15C, var_F8)) 'String
  loc_155BB52:       LateIdCallSt
  loc_155BBA1:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MemName")), &H19, CVar(CLng(var_92)), var_15C, var_F8)) 'String
  loc_155BBA8:       LateIdCallSt
  loc_155BBBE:       var_118 = CVar(CLng(var_92)) 'Long
  loc_155BBFA:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_155BC01:       LateIdCallSt
  loc_155BC45:       var_F8 = "0.00"
  loc_155BC6C:       Set var_150 = Me.LTxt
  loc_155BC72:       Call 0.Method_Proc_296_85_155BF640 (CInt(&H1A), var_154, CStr(Format(CVar(Me.Recordset15.Fields.Item("BillAmount")), var_F8)), 1, 1, var_15C, var_F8)
  loc_155BC7A:       var_154.Caption = &H11
  loc_155BCA8:       var_F8 = CVar("SELECT P.RoomType+P.RoomCat+SPACE(5-LEN(P.RoomCat))+P.RoomNo+SPACE(5-LEN(P.RoomNo)),code " & " FROM PayCharge AS P INNER JOIN RoomMast AS R ON (P.RoomNo = R.Code) AND (P.RoomCat = R.RoomCat) AND (P.RoomType = R.Type) Where DocId='") 'String
  loc_155BCD8:       var_108 = var_F8 & Me.Recordset15.Fields.Item("DocID").Value 
  loc_155BCE1:       var_128 = var_108 & "' And SNo=" 
  loc_155BD17:       var_1AC = (Me.Recordset15.Fields.Item("SNo").Value + 1)
  loc_155BD1F:       var_A0 = CStr(var_128 & var_1AC)
  loc_155BD29:       unk_5658BD.Execute var_A0, var_1CC, -1
  loc_155BD34:       Set var_90 = var_1D0
  loc_155BD6E:       If (var_90.RecordCount > 0) Then
  loc_155BDB2:         var_F8 = CVar(Proc_6_38_E69628(var_90.Fields.Item(0).Value, &H12, CVar(CLng(var_92)), var_1D0, CVar(CLng(var_92)))) 'String
  loc_155BDB9:         LateIdCallSt
  loc_155BE10:         var_F8 = CVar(Proc_6_38_E69628(var_90.Fields.Item(1).Value, &H13, CVar(CLng(var_92)), var_15C, var_F8)) 'String
  loc_155BE17:         LateIdCallSt
  loc_155BE2D:       End If
  loc_155BE2F:       Set var_15C = Nothing 
  loc_155BE39:       var_92 = (var_92 + 1)
  loc_155BE42:       Me.Recordset15.MoveNext
  loc_155BE47:       GoTo loc_155B374
  loc_155BE4A:     End If
  loc_155BE5D:     Me.FGrid.FixedRows = 1
  loc_155BE65:   End If
  loc_155BE73:   Me.FGrid.Redraw = True
  loc_155BE81:   If (var_92 = 1) Then
  loc_155BE97:     Me.FGrid.Rows = 1
  loc_155BEBB:     var_E8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, var_92, var_15C, var_F8))) 'String
  loc_155BEC3:     Set var_D8 = Me.FGrid
  loc_155BEF0:     Me.FGrid.FixedRows = 1
  loc_155BEF8:   End If
  loc_155BEF8:   Call Proc_296_95_10A9FD0(FGrid.DispID_10000, var_E8, var_15C, var_F8)
  loc_155BEFD:   Call Proc_296_99_142F5C8(var_F8, var_15C)
  loc_155BF08:   If (var_8A = &HFF) Then
  loc_155BF10:     Call Proc_296_82_F0F474(0)
  loc_155BF15:   End If
  loc_155BF15: End If
  loc_155BF1A: Set var_88 = Nothing
  loc_155BF1D: Exit Sub
  loc_155BF1E: ' Referenced from: 155AF50
  loc_155BF26: Set var_C4 = Err()
  loc_155BF2C: Call 0.Method_arg_2C (var_A0)
  loc_155BF4D: MsgBox(CVar(var_A0), &H40, "Information", var_108, var_128)
  loc_155BF60: Exit Sub
End Sub

Public Sub Proc_296_86_F97470
  'Data Table: 565890
  loc_F97310: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F97322:   Me.DGPayType.Visible = False
  loc_F9732A: End If
  loc_F97346: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F97358:   Me.DGPayType.Visible = False
  loc_F97360: End If
  loc_F9737C: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_F9738E:   Me.DGEmp.Visible = False
  loc_F97396: End If
  loc_F973B2: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_F973C4:   Me.DGTable.Visible = False
  loc_F973CC: End If
  loc_F973E8: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F973FA:   Me.DGRoom.Visible = False
  loc_F97402: End If
  loc_F9741E: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_F97430:   Me.DGCompany.Visible = False
  loc_F97438: End If
  loc_F97454: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F97466:   Me.FGPoint.Visible = False
  loc_F9746E: End If
  loc_F9746E: Exit Sub
End Sub

Public Sub Proc_296_87_E939E8(arg_C) 'E939E8
  'Data Table: 565890
  Dim var_10C As TextBox
  loc_E9397C: Call Proc_296_86_F97470()
  loc_E939B8: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E939BB:   Call TopCtrl1_UnknownEvent_16()
  loc_E939C3: Else
  loc_E939CD:   Set var_108 = Me.Txt
  loc_E939D3:   Call 0.Method_Proc_296_87_E939E80 (arg_C)
  loc_E939DB:   var_10C.SetFocus
  loc_E939E7: End If
  loc_E939E7: Exit Sub
End Sub

Public Sub Proc_296_88_115D450
  'Data Table: 565890
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_115D0E0: var_90 = global_116
  loc_115D0F7: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_115D128: Set var_A8 = Me.Txt
  loc_115D12E: Call 0.Method_Proc_296_88_115D4500 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_115D13D: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_115D145: var_EC = -1 & var_CC 
  loc_115D159: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_115D164: Set var_8C = var_134
  loc_115D1A0: If (var_8C.RecordCount > 0) Then
  loc_115D1DF:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115D1E2:     GoTo loc_115D270
  loc_115D1E5:   End If
  loc_115D216:   global_96 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115D241:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_115D256:   var_CC = (var_AC.Value + 1)
  loc_115D25F:   global_100 = CLng(var_CC)
  loc_115D270:   ' Referenced from: 115D1E2
  loc_115D29B:   var_BC = Space((5 - Len(var_90)))
  loc_115D2A3:   var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_115D2B7:   var_EC = Space((5 - Len(global_96)))
  loc_115D2BF:   var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_115D2CC:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_96))
  loc_115D2E5:   var_14C = Space((8 - Len(CStr(global_100))))
  loc_115D2ED:   var_15C = (var_130 + var_14C)
  loc_115D2FC:   var_17C = (var_15C + CVar(CStr(global_100)))
  loc_115D307:   global_92 = CStr(var_17C)
  loc_115D33D:   Me.LblVPrefix.Caption = global_96
  loc_115D356:   Set var_A8 = Me.Txt
  loc_115D35C:   Call 0.Method_Proc_296_88_115D4500 (CInt(0), var_AC)
  loc_115D364:   var_AC.Text = global_92
  loc_115D386:   Set var_A8 = Me.Txt
  loc_115D38C:   Call 0.Method_Proc_296_88_115D4500 (CInt(1), var_AC)
  loc_115D394:   var_AC.Text = CStr(global_100)
  loc_115D3A9:   var_88 = global_92
  loc_115D3AF: Else
  loc_115D3B5:   global_92 = vbNullString
  loc_115D3CB:   global_100 = 0
  loc_115D3DE:   Me.LblVPrefix.Caption = vbNullString
  loc_115D3F7:   Set var_A8 = Me.Txt
  loc_115D3FD:   Call 0.Method_Proc_296_88_115D4500 (CInt(0), var_AC, global_92)
  loc_115D405:   var_AC.Text = global_100
  loc_115D41F:   Set var_A8 = Me.Txt
  loc_115D425:   Call 0.Method_Proc_296_88_115D4500 (CInt(1), var_AC)
  loc_115D42D:   var_AC.Text = vbNullString
  loc_115D43F:   var_88 = global_92
  loc_115D442: End If
  loc_115D447: Set var_8C = Nothing
  loc_115D44A: Proc_296_88_115D450 = global_100
End Sub

Public Sub Proc_296_89_1204640
  'Data Table: 565890
  Dim var_88 As Long
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_1204176: var_88 = global_108
  loc_1204182: If Not (var_88 = 5) Then
  loc_120418E:   If (var_88 = 6) Then
  loc_1204191:   End If
  loc_120419D:   Me.FrRest.Visible = True
  loc_12041A5: End If
  loc_12041B8: Me.FGrid.Cols = &H18
  loc_12041C0: var_A0 = CVar(CLng(9)) 'Long
  loc_12041C5: var_C0 = 0
  loc_12041D1: LateIdCallSt
  loc_12041DC: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12041E1: var_C0 = 0
  loc_12041ED: LateIdCallSt
  loc_12041F8: var_A0 = CVar(CLng(&HB)) 'Long
  loc_12041FD: var_C0 = 0
  loc_1204209: LateIdCallSt
  loc_1204214: var_A0 = CVar(CLng(&HC)) 'Long
  loc_1204219: var_C0 = 0
  loc_1204225: LateIdCallSt
  loc_1204230: var_A0 = CVar(CLng(&HD)) 'Long
  loc_1204235: var_C0 = 0
  loc_1204241: LateIdCallSt
  loc_120424C: var_A0 = CVar(CLng(&HE)) 'Long
  loc_1204251: var_C0 = 0
  loc_120425D: LateIdCallSt
  loc_1204268: var_A0 = CVar(CLng(&HF)) 'Long
  loc_120426D: var_C0 = 0
  loc_1204279: LateIdCallSt
  loc_1204284: var_A0 = CVar(CLng(&H10)) 'Long
  loc_1204289: var_C0 = 0
  loc_1204295: LateIdCallSt
  loc_120429D: var_A0 = &H11
  loc_12042A6: var_C0 = 0
  loc_12042B2: LateIdCallSt
  loc_12042BA: var_A0 = 1
  loc_12042C3: var_C0 = 0
  loc_12042CF: LateIdCallSt
  loc_12042D7: var_A0 = 4
  loc_12042E0: var_C0 = 0
  loc_12042EC: LateIdCallSt
  loc_12042F4: var_A0 = 5
  loc_12042FD: var_C0 = 0
  loc_1204309: LateIdCallSt
  loc_1204314: var_A0 = CVar(CLng(6)) 'Long
  loc_1204319: var_C0 = 0
  loc_1204325: LateIdCallSt
  loc_1204330: var_A0 = CVar(CLng(7)) 'Long
  loc_1204335: var_C0 = 0
  loc_1204341: LateIdCallSt
  loc_1204349: var_A0 = 2
  loc_1204352: var_C0 = 0
  loc_120435E: LateIdCallSt
  loc_1204366: var_A0 = 0
  loc_120436F: var_C0 = &HFA
  loc_120437B: LateIdCallSt
  loc_1204383: var_A0 = 0
  loc_120438C: var_C0 = 0
  loc_1204395: var_E0 = "SNo"
  loc_120439E: LateIdCallSt
  loc_12043A6: var_A0 = 0
  loc_12043AF: var_C0 = &H1C2
  loc_12043BB: LateIdCallSt
  loc_12043C3: var_A0 = 0
  loc_12043CC: var_C0 = 3
  loc_12043D5: var_E0 = "Payment Type"
  loc_12043DE: LateIdCallSt
  loc_12043E6: var_A0 = 3
  loc_12043F5: var_C0 = CVar(CInt(1)) 'Integer
  loc_12043FC: LateIdCallSt
  loc_1204404: var_A0 = 3
  loc_120440D: var_C0 = &HDAC
  loc_1204419: LateIdCallSt
  loc_1204421: var_A0 = 0
  loc_120442A: var_C0 = 8
  loc_1204433: var_E0 = "Amount"
  loc_120443C: LateIdCallSt
  loc_1204444: var_A0 = 8
  loc_1204453: var_C0 = CVar(CInt(7)) 'Integer
  loc_120445A: LateIdCallSt
  loc_1204462: var_A0 = 8
  loc_1204471: var_C0 = CVar(CInt(7)) 'Integer
  loc_1204478: LateIdCallSt
  loc_1204480: var_A0 = 8
  loc_1204489: var_C0 = &H4EC
  loc_1204495: LateIdCallSt
  loc_120449D: var_A0 = 0
  loc_12044A6: var_C0 = &H11
  loc_12044AF: var_E0 = "Tip"
  loc_12044B8: LateIdCallSt
  loc_12044C0: var_A0 = &H11
  loc_12044CF: var_C0 = CVar(CInt(7)) 'Integer
  loc_12044D6: LateIdCallSt
  loc_12044DE: var_A0 = &H11
  loc_12044ED: var_C0 = CVar(CInt(7)) 'Integer
  loc_12044F4: LateIdCallSt
  loc_12044FC: var_A0 = &H11
  loc_1204505: var_C0 = &H4EC
  loc_1204511: LateIdCallSt
  loc_1204519: var_A0 = &H12
  loc_1204522: var_C0 = 0
  loc_120452E: LateIdCallSt
  loc_1204536: var_A0 = &H13
  loc_120453F: var_C0 = 0
  loc_120454B: LateIdCallSt
  loc_1204553: var_A0 = &H14
  loc_120455C: var_C0 = 0
  loc_1204568: LateIdCallSt
  loc_1204570: var_A0 = &H15
  loc_1204579: var_C0 = 0
  loc_1204585: LateIdCallSt
  loc_120458D: var_A0 = &H18
  loc_1204596: var_C0 = 0
  loc_12045A2: LateIdCallSt
  loc_12045AA: var_A0 = &H19
  loc_12045B3: var_C0 = 0
  loc_12045BF: LateIdCallSt
  loc_12045C7: var_A0 = &H16
  loc_12045D0: var_C0 = 0
  loc_12045DC: LateIdCallSt
  loc_12045E4: var_A0 = &H17
  loc_12045ED: var_C0 = 0
  loc_12045F9: LateIdCallSt
  loc_120462B: LateIdCallSt
  loc_1204639: Call Proc_296_90_117EB54(Me.FGrid, CVar(CStr(1)), 0, 1, Nothing, 0, 1, Nothing)
  loc_120463E: Exit Sub
End Sub

Public Sub Proc_296_90_117EB54
  'Data Table: 565890
  Dim var_94 As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  loc_117E77A: Set global_68 = New 
  loc_117E78C: Me.Recordset15.CursorLocation = 3
  loc_117E79C: var_94 = OpenType
  loc_117E7A8: If (var_94 = 6) Then
  loc_117E7CE:   Me.Open "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') Order by T.Code", CVar(MemVar_1F95044), 3
  loc_117E7DF:   Set var_8C = Me.LblName
  loc_117E7E5:   Call 0.Method_Proc_296_90_117EB540 (&HC, var_B8, "Hall")
  loc_117E7ED:   var_B8.Caption = 1
  loc_117E809:   Set var_8C = Me.DGTable
  loc_117E81A:   Set var_B8 = DGTable.DispID_69
  loc_117E828:   var_B8.Item(1).Caption = "Hall"
  loc_117E83F:   global_152 = "HALL"
  loc_117E849:   global_156 = "HS"
  loc_117E850: Else
  loc_117E859:   If (var_94 = 5) Then
  loc_117E864:     If (MemVar_1F951AC = "Hall") Then
  loc_117E873:       Set var_8C = Me.LblName
  loc_117E879:       Call 0.Method_Proc_296_90_117EB540 (&HC, var_B8, "Hall #")
  loc_117E881:       var_B8.Caption = -1
  loc_117E89D:       Set var_8C = Me.DGTable
  loc_117E8AE:       Set var_B8 = DGTable.DispID_69
  loc_117E8BC:       var_B8.Item(1).Caption = "Hall #"
  loc_117E8F0:       Me.Open "Select T.Code,T.Code As Name From RoomMast T where T.Type in ('HL') Order By T.Code", CVar(MemVar_1F95044), 3
  loc_117E8FB:       global_152 = "HALL"
  loc_117E905:       global_156 = "HL"
  loc_117E90C:     Else
  loc_117E914:       If (MemVar_1F951AC = "Fast Food") Then
  loc_117E922:         Set var_8C = Me.LblName
  loc_117E928:         Call 0.Method_Proc_296_90_117EB540 (&HC, var_B8, 0)
  loc_117E930:         var_B8.Visible = True
  loc_117E949:         Set var_8C = Me.Txt
  loc_117E94F:         Call 0.Method_Proc_296_90_117EB540 (CInt(&H10), var_B8, 0)
  loc_117E957:         var_B8.Visible = True
  loc_117E973:         Set var_8C = Me.DGTable
  loc_117E984:         Set var_B8 = DGTable.DispID_69
  loc_117E992:         var_B8.Item(1).Caption = "Hall #"
  loc_117E9C6:         Me.Open "Select T.Code,T.Code As Name From RoomMast T where T.Type in ('HL') Order By T.Code", CVar(MemVar_1F95044), 3
  loc_117E9D1:         global_152 = "HALL"
  loc_117E9DB:         global_156 = "HL"
  loc_117E9E2:       Else
  loc_117E9EA:         If (MemVar_1F951AC = "Room Service") Then
  loc_117E9F9:           Set var_8C = Me.LblName
  loc_117E9FF:           Call 0.Method_Proc_296_90_117EB540 (&HC, var_B8, "Room #")
  loc_117EA07:           var_B8.Caption = 1
  loc_117EA23:           Set var_8C = Me.DGTable
  loc_117EA34:           Set var_B8 = DGTable.DispID_69
  loc_117EA42:           var_B8.Item(1).Caption = "Room #"
  loc_117EA76:           Me.Open "Select T.Code,T.Code As Name,RoomCat From RoomMast T where T.Type in('RO') Order by T.Code", CVar(MemVar_1F95044), 3
  loc_117EA81:           global_156 = "RO"
  loc_117EA88:         Else
  loc_117EA94:           Set var_8C = Me.LblName
  loc_117EA9A:           Call 0.Method_Proc_296_90_117EB540 (&HC, var_B8, "Table #", 1)
  loc_117EAA2:           var_B8.Caption = -1
  loc_117EABE:           Set var_8C = Me.DGTable
  loc_117EADD:           DGTable.DispID_69.Item(1).Caption = "Table #"
  loc_117EB11:           Me.Open "Select T.Code,T.Code As Name From RoomMast T where T.Type in ('TB') Order By T.Code", CVar(MemVar_1F95044), 3
  loc_117EB1C:           global_152 = "REST"
  loc_117EB26:           global_156 = "TB"
  loc_117EB2A:         End If
  loc_117EB2A:       End If
  loc_117EB2A:     End If
  loc_117EB2A:   End If
  loc_117EB2A: End If
  loc_117EB33: CVarUnk
  loc_117EB38: VerifyVarObj
  loc_117EB3E: Set var_8C = Me.DGTable
  loc_117EB44: LateIdStAd
  loc_117EB52: Exit Sub
End Sub

Public Sub Proc_296_91_1318AF8(arg_C) '1318AF8
  'Data Table: 565890
  Dim var_98 As Boolean
  Dim var_AC As Long
  Dim var_B8 As Frame
  Dim var_C0 As Variant
  Dim Me As Variant
  Dim var_D0 As Variant
  Dim var_EC As TextBox
  loc_1318398: Me.FrChqDet.Visible = False
  loc_13183AC: Me.FrRem.Visible = False
  loc_13183C0: Me.FrCCDet.Visible = False
  loc_13183D4: Me.FrEmp.Visible = False
  loc_13183E8: Me.FrComp.Visible = False
  loc_13183FC: Me.FrMem.Visible = False
  loc_1318410: Me.FrSendRoom.Visible = False
  loc_1318418: var_98 = False
  loc_1318427: Me.SSPNext.Enabled = var_98
  loc_131843E: Me.SSPPrevious.Enabled = False
  loc_131844C: global_176 = vbNullString
  loc_1318456: var_AC = global_108
  loc_1318462: If Not (var_AC = 5) Then
  loc_131846E:   If (var_AC = 6) Then
  loc_1318471:   End If
  loc_1318474:   var_B0 = arg_C
  loc_131847F:   If (var_B0 = "Cheque") Then
  loc_131848E:     Me.FrChqDet.Visible = True
  loc_13184A2:     Me.FrRem.Visible = False
  loc_13184E4:     Me.FrRem.Top = ((Me.FrChqDet.Top + Me.FrChqDet.Height) + CDbl(&HF))
  loc_13184F5:   Else
  loc_13184FD:     If (var_B0 = "Credit Card") Then
  loc_131850B:       If (global_216 = "Y") Then
  loc_131851A:         Me.FrCCDet.Visible = True
  loc_131852E:         Me.FrRem.Visible = False
  loc_1318539:       Else
  loc_1318545:         Me.FrCCDet.Visible = False
  loc_1318559:         Me.FrRem.Visible = True
  loc_1318561:       End If
  loc_1318564:     Else
  loc_131856C:       If (var_B0 = "Staff") Then
  loc_131857B:         Me.FrEmp.Visible = True
  loc_13185BD:         Me.FrRem.Top = ((Me.FrEmp.Top + Me.FrEmp.Height) + CDbl(&HF))
  loc_13185D1:         global_176 = "Staff"
  loc_13185EC:         If (Me.RecordCount > 0) Then
  loc_13185F5:           Me.MoveFirst
  loc_1318612:           Proc_6_39_E7D3A0(var_E0, CVar(Me.RecordCount))
  loc_131861E:           global_194 = CInt(var_E0)
  loc_1318628:           var_98 = True
  loc_1318636:           Me.SSPNext.Enabled = var_98
  loc_1318652:           Set var_B8 = Me.SSPGroup
  loc_1318675:           Call Proc_296_101_122C5AC(Me.SSPItem, CInt(3), global_64, CInt(6))
  loc_1318688:         End If
  loc_131868B:       Else
  loc_1318693:         If (var_B0 = "Company") Then
  loc_13186A2:           Me.FrComp.Visible = True
  loc_13186B1:           Set var_B8 = Me.FrComp
  loc_13186E4:           Me.FrRem.Top = ((Me.FrComp.Top + var_B8.Height) + CDbl(&HF))
  loc_13186F8:           global_176 = "Company"
  loc_1318713:           If (Me.RecordCount > 0) Then
  loc_131871C:             Me.MoveFirst
  loc_1318739:             Proc_6_39_E7D3A0(var_E0, CVar(Me.RecordCount), var_B8)
  loc_1318745:             global_194 = CInt(var_E0)
  loc_131874F:             var_98 = True
  loc_131875D:             Me.SSPNext.Enabled = var_98
  loc_131879C:             Call Proc_296_101_122C5AC(Me.SSPItem, CInt(3), global_76, CInt(6), Me.SSPGroup)
  loc_13187AF:           End If
  loc_13187B2:         Else
  loc_13187BA:           If (var_B0 = "Member") Then
  loc_13187C9:             Me.FrMem.Visible = True
  loc_131880B:             Me.FrRem.Top = ((Me.FrMem.Top + Me.FrMem.Height) + CDbl(&HF))
  loc_131881F:             global_176 = "Member"
  loc_131883A:             If (Me.RecordCount > 0) Then
  loc_1318843:               Me.MoveFirst
  loc_1318860:               Proc_6_39_E7D3A0(var_E0, CVar(Me.RecordCount), CVar(Me.RecordCount), global_194)
  loc_131886C:               global_194 = CInt(var_E0)
  loc_1318876:               var_98 = True
  loc_1318884:               Me.SSPNext.Enabled = var_98
  loc_13188C3:               Call Proc_296_101_122C5AC(Me.SSPItem, CInt(3), global_80, CInt(6), Me.SSPGroup)
  loc_13188D6:             End If
  loc_13188D9:           Else
  loc_13188E1:             If (var_B0 = "Room") Then
  loc_13188F0:               Me.FrSendRoom.Visible = True
  loc_1318904:               Me.FrRem.Visible = False
  loc_1318912:               global_176 = "Room"
  loc_131892D:               If (Me.RecordCount > 0) Then
  loc_1318936:                 Me.MoveFirst
  loc_131894C:                 var_D0 = CVar(Me.RecordCount) 'Long
  loc_1318953:                 Proc_6_39_E7D3A0(var_E0, var_D0, var_D0, global_194)
  loc_131895F:                 global_194 = CInt(var_E0)
  loc_1318969:                 var_98 = True
  loc_1318977:                 Me.SSPNext.Enabled = var_98
  loc_13189B6:                 Call Proc_296_101_122C5AC(Me.SSPItem, CInt(3), global_72, CInt(6), Me.SSPGroup)
  loc_13189C9:               End If
  loc_13189CC:             Else
  loc_13189D4:               If (var_B0 = "Cash Card") Then
  loc_13189E3:                 Me.FrCashCard.Visible = True
  loc_13189F7:                 Me.FrRem.Visible = True
  loc_1318A0C:                 var_BC = Me.FrCashCard.Height
  loc_1318A33:                 Set var_C0 = Me.FrRem
  loc_1318A39:                 var_C0.Top = ((Me.FrCashCard.Top + var_BC) + CDbl(&HF))
  loc_1318A4A:               Else
  loc_1318A4A:                 var_98 = False
  loc_1318A59:                 Me.SSPNext.Enabled = var_98
  loc_1318A6F:                 Set var_B8 = Me.Txt
  loc_1318A75:                 Call 0.Method_Proc_296_91_1318AF80 (CInt(&H11), var_C0, var_BC, var_D0)
  loc_1318A7D:                 global_194 = var_C0.Top
  loc_1318A90:                 Set var_E8 = Me.Txt
  loc_1318A96:                 Call 0.Method_Proc_296_91_1318AF80 (CInt(&H11), var_EC, var_F0)
  loc_1318A9E:                 var_D0 = var_EC.Height
  loc_1318ACF:                 Me.FrRem.Top = (((Me.FrRest.Top + var_BC) + var_F0) + CDbl(&HF))
  loc_1318AEF:                 Me.FrRem.Visible = True
  loc_1318AF7:               End If
  loc_1318AF7:             End If
  loc_1318AF7:           End If
  loc_1318AF7:         End If
  loc_1318AF7:       End If
  loc_1318AF7:     End If
  loc_1318AF7:   End If
  loc_1318AF7: End If
  loc_1318AF7: Exit Sub
End Sub

Public Sub Proc_296_92_1533ED4
  'Data Table: 565890
  Dim var_90 As Variant
  Dim var_EC As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_8C As Variant
  Dim var_10C As Variant
  Dim var_BC As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_124 As Long
  Dim Me As Variant
  Dim var_11C As Long
  loc_1532F26: Set var_8C = Me.LTxt
  loc_1532F2C: Call 0.Method_Proc_296_92_1533ED40 (CInt(&H1C), var_90)
  loc_1532F5C: If ((CDbl(Val(var_90.Caption)) <= CDbl(0)) And (global_160 = "Cash Card")) Then
  loc_1532F5F:   Exit Sub
  loc_1532F60: End If
  loc_1532F6E: Set var_8C = Me.Txt
  loc_1532F74: Call 0.Method_Proc_296_92_1533ED40 (CInt(&H11), var_90)
  loc_1532F98: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_1532FA9:   Set var_8C = Me.Txt
  loc_1532FAF:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H11), var_90)
  loc_1532FB7:   var_90.Text = vbNullString
  loc_1532FC3: End If
  loc_1532FD1: Set var_8C = Me.Txt
  loc_1532FD7: Call 0.Method_Proc_296_92_1533ED40 (CInt(&HF), var_90)
  loc_1532FF1: If (var_90.Visible = &HFF) Then
  loc_1532FFF:   Set var_8C = Me.Txt
  loc_1533005:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&HF))
  loc_153302E:   If (Proc_6_27_EA61EC(var_90, "Payment Type") = 0) Then
  loc_1533031:     Exit Sub
  loc_1533032:   End If
  loc_1533032: End If
  loc_1533040: Set var_8C = Me.Txt
  loc_1533046: Call 0.Method_Proc_296_92_1533ED40 (CInt(&H11), var_90)
  loc_1533060: If (var_90.Visible = &HFF) Then
  loc_153306E:   Set var_8C = Me.Txt
  loc_1533074:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H11), var_90)
  loc_153307C:   var_94 = "Amount"
  loc_153309D:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15330A0:     Exit Sub
  loc_15330A1:   End If
  loc_15330A1: End If
  loc_15330BA: Set var_8C = Me.Txt
  loc_15330C0: Call 0.Method_Proc_296_92_1533ED40 (CInt(&H18), var_90, var_94)
  loc_15330C8: (global_160 = "Staff") = var_90.Text
  loc_15330E0: If (var_90 And (var_94 = vbNullString)) Then
  loc_15330EE:   Set var_8C = Me.Txt
  loc_15330F4:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H18))
  loc_15330FC:   var_94 = "Staff Name"
  loc_153311D:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1533120:     Exit Sub
  loc_1533121:   End If
  loc_1533121: End If
  loc_153313A: Set var_8C = Me.Txt
  loc_1533140: Call 0.Method_Proc_296_92_1533ED40 (CInt(&H1E), var_90, var_94)
  loc_1533148: (global_160 = "Room") = var_90.Text
  loc_1533160: If (var_90 And (var_94 = vbNullString)) Then
  loc_153316E:   Set var_8C = Me.Txt
  loc_1533174:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H1E))
  loc_153317C:   var_94 = "Room Name"
  loc_153319D:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15331A0:     Exit Sub
  loc_15331A1:   End If
  loc_15331A1: End If
  loc_15331BA: Set var_8C = Me.Txt
  loc_15331C0: Call 0.Method_Proc_296_92_1533ED40 (CInt(&H1F), var_90, var_94)
  loc_15331C8: (global_160 = "Company") = var_90.Text
  loc_15331E0: If (var_90 And (var_94 = vbNullString)) Then
  loc_15331EE:   Set var_8C = Me.Txt
  loc_15331F4:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H1F))
  loc_15331FC:   var_94 = "Company Name"
  loc_153321D:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1533220:     Exit Sub
  loc_1533221:   End If
  loc_1533221: End If
  loc_153323A: Set var_8C = Me.Txt
  loc_1533240: Call 0.Method_Proc_296_92_1533ED40 (CInt(&H20), var_90, var_94)
  loc_1533248: (global_160 = "Member") = var_90.Text
  loc_1533260: If (var_90 And (var_94 = vbNullString)) Then
  loc_153326E:   Set var_8C = Me.Txt
  loc_1533274:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H20))
  loc_153327C:   var_94 = "Member Name"
  loc_153329D:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15332A0:     Exit Sub
  loc_15332A1:   End If
  loc_15332A1: End If
  loc_15332AC: If (global_216 = "Y") Then
  loc_15332C8:   Set var_8C = Me.Txt
  loc_15332CE:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H12), var_90, var_94)
  loc_15332D6:   (global_160 = "Credit Card") = var_90.Text
  loc_15332EE:   If (var_90 And (var_94 = vbNullString)) Then
  loc_15332FC:     Set var_8C = Me.Txt
  loc_1533302:     Call 0.Method_Proc_296_92_1533ED40 (CInt(&H12))
  loc_153332B:     If (Proc_6_27_EA61EC(var_90, "Credit Card No.") = 0) Then
  loc_153332E:       Exit Sub
  loc_153332F:     End If
  loc_153332F:   End If
  loc_1533349:   Set var_8C = Me.Txt
  loc_153334F:   Call 0.Method_Proc_296_92_1533ED40 (CInt(3), var_90)
  loc_1533382:   If CBool((global_160 = "Credit Card") And (Trim(CVar(var_90)) = vbNullString)) Then
  loc_1533390:     Set var_8C = Me.Txt
  loc_1533396:     Call 0.Method_Proc_296_92_1533ED40 (CInt(3), var_90)
  loc_153339E:     var_94 = "Batch No"
  loc_15333BF:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15333C2:       Exit Sub
  loc_15333C3:     End If
  loc_15333C3:   End If
  loc_15333C3: End If
  loc_15333DC: Set var_8C = Me.Txt
  loc_15333E2: Call 0.Method_Proc_296_92_1533ED40 (CInt(&H15), var_90, var_94)
  loc_15333EA: (global_160 = "Cheque") = var_90.Text
  loc_1533402: If (var_90 And (var_94 = vbNullString)) Then
  loc_1533410:   Set var_8C = Me.Txt
  loc_1533416:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H15))
  loc_153341E:   var_94 = "Cheque No."
  loc_153343F:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1533442:     Exit Sub
  loc_1533443:   End If
  loc_1533443: End If
  loc_153345C: Set var_8C = Me.Txt
  loc_1533462: Call 0.Method_Proc_296_92_1533ED40 (CInt(&H16), var_90, var_94)
  loc_153346A: (global_160 = "Cheque") = var_90.Text
  loc_1533482: If (var_90 And (var_94 = vbNullString)) Then
  loc_1533490:   Set var_8C = Me.Txt
  loc_1533496:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H16))
  loc_15334BF:   If (Proc_6_27_EA61EC(var_90, "Cheque Dt.") = 0) Then
  loc_15334C2:     Exit Sub
  loc_15334C3:   End If
  loc_15334C3: End If
  loc_15334CC: If (global_172 = 0) Then
  loc_15334E8:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_153350B:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_1533524:   If (var_94 <> vbNullString) Then
  loc_1533543:     var_AC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, 3))) 'String
  loc_153354B:     Set var_90 = Me.FGrid
  loc_1533565:   End If
  loc_153357F:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_153358B: Else
  loc_153359F:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_15335A8: End If
  loc_15335B3: var_124 = OpenType
  loc_15335BF: If Not (var_124 = 5) Then
  loc_15335CB:   If (var_124 = 6) Then
  loc_15335CE:   End If
  loc_15335D2:   Set var_128 = Me.FGrid
  loc_15335F5:   Set var_8C = Me.Txt
  loc_15335FB:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&HF), var_90, var_94, 1, CVar(CLng(var_86)), var_124)
  loc_1533603:   var_86 = var_90.Tag
  loc_153360B:   var_AC = CVar(var_94) 'String
  loc_1533612:   LateIdCallSt
  loc_1533628:   var_CC = CVar(CLng(var_86)) 'Long
  loc_153362D:   var_10C = 2
  loc_1533643:   LateIdCallSt
  loc_153366B:   Set var_8C = Me.Txt
  loc_1533671:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&HF), var_90, var_94, 3, CVar(CLng(var_86)), var_128, global_160)
  loc_1533679:   var_10C = var_90.Text
  loc_1533681:   var_AC = CVar(var_94) 'String
  loc_1533688:   LateIdCallSt
  loc_153369E:   var_CC = CVar(CLng(var_86)) 'Long
  loc_15336A3:   var_10C = 4
  loc_15336B9:   LateIdCallSt
  loc_15336C5:   var_CC = CVar(CLng(var_86)) 'Long
  loc_15336CA:   var_10C = 5
  loc_15336E0:   LateIdCallSt
  loc_1533707:   Set var_8C = Me.Txt
  loc_153370D:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H10), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_128, global_156)
  loc_1533715:   var_10C = var_90.Tag
  loc_1533724:   LateIdCallSt
  loc_1533755:   Set var_8C = Me.Txt
  loc_153375B:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H10), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_1533763:   var_CC = var_90.Text
  loc_153376B:   var_AC = CVar(var_94) 'String
  loc_1533772:   LateIdCallSt
  loc_15337A4:   Set var_8C = Me.Txt
  loc_15337AA:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H11), var_90, var_94, 8, CVar(CLng(var_86)), var_128)
  loc_15337B2:   var_AC = var_90.Text
  loc_15337BA:   var_AC = CVar(var_94) 'String
  loc_15337C1:   LateIdCallSt
  loc_15337DE:   If (global_160 = "Cash Card") Then
  loc_1533800:     Set var_8C = Me.Txt
  loc_1533806:     Call 0.Method_Proc_296_92_1533ED40 (CInt(&H21), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_128)
  loc_153380E:     var_AC = var_90.Text
  loc_1533816:     var_AC = CVar(var_94) 'String
  loc_153381D:     LateIdCallSt
  loc_153384E:     Set var_8C = Me.Txt
  loc_1533854:     Call 0.Method_Proc_296_92_1533ED40 (CInt(&H22), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_128)
  loc_153385C:     var_AC = var_90.Text
  loc_1533864:     var_AC = CVar(var_94) 'String
  loc_153386B:     LateIdCallSt
  loc_1533880:   Else
  loc_153389F:     Set var_8C = Me.Txt
  loc_15338A5:     Call 0.Method_Proc_296_92_1533ED40 (CInt(&H12), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_128)
  loc_15338AD:     var_AC = var_90.Text
  loc_15338B5:     var_AC = CVar(var_94) 'String
  loc_15338BC:     LateIdCallSt
  loc_15338ED:     Set var_8C = Me.Txt
  loc_15338F3:     Call 0.Method_Proc_296_92_1533ED40 (CInt(&H13), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_128)
  loc_15338FB:     var_AC = var_90.Text
  loc_1533903:     var_AC = CVar(var_94) 'String
  loc_153390A:     LateIdCallSt
  loc_153391C:   End If
  loc_153393B:   Set var_8C = Me.Txt
  loc_1533941:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H14), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_128)
  loc_1533949:   var_AC = var_90.Text
  loc_1533951:   var_AC = CVar(var_94) 'String
  loc_1533958:   LateIdCallSt
  loc_153398A:   Set var_8C = Me.Txt
  loc_1533990:   Call 0.Method_Proc_296_92_1533ED40 (CInt(3), var_90, var_94, &H17, CVar(CLng(var_86)), var_128)
  loc_1533998:   var_AC = var_90.Text
  loc_15339A0:   var_AC = CVar(var_94) 'String
  loc_15339A7:   LateIdCallSt
  loc_15339D8:   Set var_8C = Me.Txt
  loc_15339DE:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H15), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_128)
  loc_15339E6:   var_AC = var_90.Text
  loc_15339EE:   var_AC = CVar(var_94) 'String
  loc_15339F5:   LateIdCallSt
  loc_1533A26:   Set var_8C = Me.Txt
  loc_1533A2C:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H16), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_128)
  loc_1533A34:   var_AC = var_90.Text
  loc_1533A3C:   var_AC = CVar(var_94) 'String
  loc_1533A43:   LateIdCallSt
  loc_1533A74:   Set var_8C = Me.Txt
  loc_1533A7A:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H17), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_128)
  loc_1533A82:   var_AC = var_90.Text
  loc_1533A8A:   var_AC = CVar(var_94) 'String
  loc_1533A91:   LateIdCallSt
  loc_1533AC2:   Set var_8C = Me.Txt
  loc_1533AC8:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H18), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_128)
  loc_1533AD0:   var_AC = var_90.Text
  loc_1533AD8:   var_AC = CVar(var_94) 'String
  loc_1533ADF:   LateIdCallSt
  loc_1533B10:   Set var_8C = Me.Txt
  loc_1533B16:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H18), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_128)
  loc_1533B1E:   var_AC = var_90.Tag
  loc_1533B26:   var_AC = CVar(var_94) 'String
  loc_1533B2D:   LateIdCallSt
  loc_1533B5F:   Set var_8C = Me.Txt
  loc_1533B65:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H19), var_90, var_94, &H11, CVar(CLng(var_86)), var_128)
  loc_1533B6D:   var_AC = var_90.Text
  loc_1533B75:   var_AC = CVar(var_94) 'String
  loc_1533B7C:   LateIdCallSt
  loc_1533BAE:   Set var_8C = Me.Txt
  loc_1533BB4:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H1E), var_90, var_94, &H12, CVar(CLng(var_86)), var_128)
  loc_1533BBC:   var_AC = var_90.Tag
  loc_1533BC4:   var_AC = CVar(var_94) 'String
  loc_1533BCB:   LateIdCallSt
  loc_1533BFD:   Set var_8C = Me.Txt
  loc_1533C03:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H1E), var_90, var_94, &H13, CVar(CLng(var_86)), var_128)
  loc_1533C0B:   var_AC = var_90.Text
  loc_1533C13:   var_AC = CVar(var_94) 'String
  loc_1533C1A:   LateIdCallSt
  loc_1533C4C:   Set var_8C = Me.Txt
  loc_1533C52:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H1F), var_90, var_94, &H14, CVar(CLng(var_86)), var_128)
  loc_1533C5A:   var_AC = var_90.Tag
  loc_1533C62:   var_AC = CVar(var_94) 'String
  loc_1533C69:   LateIdCallSt
  loc_1533C9B:   Set var_8C = Me.Txt
  loc_1533CA1:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H1F), var_90, var_94, &H15, CVar(CLng(var_86)), var_128)
  loc_1533CA9:   var_AC = var_90.Text
  loc_1533CB1:   var_AC = CVar(var_94) 'String
  loc_1533CB8:   LateIdCallSt
  loc_1533CEA:   Set var_8C = Me.Txt
  loc_1533CF0:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H20), var_90, var_94, &H18, CVar(CLng(var_86)), var_128)
  loc_1533CF8:   var_AC = var_90.Tag
  loc_1533D00:   var_AC = CVar(var_94) 'String
  loc_1533D07:   LateIdCallSt
  loc_1533D1D:   var_CC = CVar(CLng(var_86)) 'Long
  loc_1533D39:   Set var_8C = Me.Txt
  loc_1533D3F:   Call 0.Method_Proc_296_92_1533ED40 (CInt(&H20), var_90, var_94, &H19, var_CC, var_128)
  loc_1533D47:   var_AC = var_90.Text
  loc_1533D56:   LateIdCallSt
  loc_1533D73:   If (global_160 = "Room") Then
  loc_1533D7C:     Me.MoveFirst
  loc_1533DA0:     Set var_8C = Me.Txt
  loc_1533DA6:     Call 0.Method_Proc_296_92_1533ED40 (CInt(&H1E), var_90, var_94, "Code='", 0, 1, var_CC)
  loc_1533DC7:     Me.Find CVar(var_94) & var_94 & "'", var_90.Tag, global_152
  loc_1533DE0:     var_EC = CVar(CLng(var_86)) 'Long
  loc_1533DE5:     var_11C = &H16
  loc_1533DF4:     var_CC = "FolioNoDocid"
  loc_1533E0B:     var_90 = Me.Fields.Item(var_CC)
  loc_1533E1C:     var_BC = CVar(CStr(var_90.Value)) 'String
  loc_1533E23:     LateIdCallSt
  loc_1533E39:   End If
  loc_1533E3B:   Set var_128 = Nothing 
  loc_1533E3F: End If
  loc_1533E3F: Call Proc_296_95_10A9FD0(var_128, var_BC, var_11C, var_EC)
  loc_1533E52: Set var_8C = Me.LTxt
  loc_1533E58: Call 0.Method_Proc_296_92_1533ED40 (CInt(&H1C), var_90, var_94)
  loc_1533E60: var_10C = var_90.Caption
  loc_1533E96: If (((CDbl(Val(var_94)) = CDbl(0)) And (global_108 = 5)) Or (global_108 = 6)) Then
  loc_1533E99:   Call TopCtrl1_UnknownEvent_16()
  loc_1533E9E:   Exit Sub
  loc_1533E9F: End If
  loc_1533E9F: Call Proc_296_93_11002D0(var_CC)
  loc_1533EAF: Set var_8C = Me.Txt
  loc_1533EB5: Call 0.Method_Proc_296_92_1533ED40 (CInt(&HF), var_90)
  loc_1533EBD: var_90.SetFocus
  loc_1533ECE: global_172 = 0
  loc_1533ED1: Exit Sub
End Sub

Public Sub Proc_296_93_11002D0
  'Data Table: 565890
  Dim var_8C As TextBox
  loc_10FFF92: Set var_88 = Me.Txt
  loc_10FFF98: Call 0.Method_Proc_296_93_11002D00 (CInt(&HF), var_8C)
  loc_10FFFA0: var_8C.Text = vbNullString
  loc_10FFFBA: Set var_88 = Me.Txt
  loc_10FFFC0: Call 0.Method_Proc_296_93_11002D00 (CInt(&H11), var_8C)
  loc_10FFFC8: var_8C.Text = vbNullString
  loc_10FFFE2: Set var_88 = Me.Txt
  loc_10FFFE8: Call 0.Method_Proc_296_93_11002D00 (CInt(&H19), var_8C)
  loc_10FFFF0: var_8C.Text = vbNullString
  loc_110000A: Set var_88 = Me.Txt
  loc_1100010: Call 0.Method_Proc_296_93_11002D00 (CInt(&H18), var_8C)
  loc_1100018: var_8C.Text = vbNullString
  loc_1100032: Set var_88 = Me.Txt
  loc_1100038: Call 0.Method_Proc_296_93_11002D00 (CInt(&H17), var_8C)
  loc_1100040: var_8C.Text = vbNullString
  loc_110005A: Set var_88 = Me.Txt
  loc_1100060: Call 0.Method_Proc_296_93_11002D00 (CInt(&H12), var_8C)
  loc_1100068: var_8C.Text = vbNullString
  loc_1100082: Set var_88 = Me.Txt
  loc_1100088: Call 0.Method_Proc_296_93_11002D00 (CInt(&H13), var_8C)
  loc_1100090: var_8C.Text = vbNullString
  loc_11000AA: Set var_88 = Me.Txt
  loc_11000B0: Call 0.Method_Proc_296_93_11002D00 (CInt(&H21), var_8C)
  loc_11000B8: var_8C.Text = vbNullString
  loc_11000D2: Set var_88 = Me.Txt
  loc_11000D8: Call 0.Method_Proc_296_93_11002D00 (CInt(&H22), var_8C)
  loc_11000E0: var_8C.Text = vbNullString
  loc_11000FA: Set var_88 = Me.Txt
  loc_1100100: Call 0.Method_Proc_296_93_11002D00 (CInt(&H14), var_8C)
  loc_1100108: var_8C.Text = vbNullString
  loc_1100122: Set var_88 = Me.Txt
  loc_1100128: Call 0.Method_Proc_296_93_11002D00 (CInt(3), var_8C)
  loc_1100130: var_8C.Text = vbNullString
  loc_110014A: Set var_88 = Me.Txt
  loc_1100150: Call 0.Method_Proc_296_93_11002D00 (CInt(&H15), var_8C)
  loc_1100158: var_8C.Text = vbNullString
  loc_1100172: Set var_88 = Me.Txt
  loc_1100178: Call 0.Method_Proc_296_93_11002D00 (CInt(&H16), var_8C)
  loc_1100180: var_8C.Text = vbNullString
  loc_110019A: Set var_88 = Me.Txt
  loc_11001A0: Call 0.Method_Proc_296_93_11002D00 (CInt(&H1F), var_8C)
  loc_11001A8: var_8C.Text = vbNullString
  loc_11001C2: Set var_88 = Me.Txt
  loc_11001C8: Call 0.Method_Proc_296_93_11002D00 (CInt(&H1F), var_8C)
  loc_11001D0: var_8C.Tag = vbNullString
  loc_11001EA: Set var_88 = Me.Txt
  loc_11001F0: Call 0.Method_Proc_296_93_11002D00 (CInt(&H20), var_8C)
  loc_11001F8: var_8C.Text = vbNullString
  loc_1100212: Set var_88 = Me.Txt
  loc_1100218: Call 0.Method_Proc_296_93_11002D00 (CInt(&H20), var_8C)
  loc_1100220: var_8C.Tag = vbNullString
  loc_110023A: Set var_88 = Me.Txt
  loc_1100240: Call 0.Method_Proc_296_93_11002D00 (CInt(&H1E), var_8C)
  loc_1100248: var_8C.Tag = vbNullString
  loc_1100262: Set var_88 = Me.Txt
  loc_1100268: Call 0.Method_Proc_296_93_11002D00 (CInt(&H1E), var_8C)
  loc_1100270: var_8C.Text = vbNullString
  loc_110028A: Set var_88 = Me.Txt
  loc_1100290: Call 0.Method_Proc_296_93_11002D00 (CInt(&H12), var_8C)
  loc_1100298: var_8C.Text = vbNullString
  loc_11002B2: Set var_88 = Me.Txt
  loc_11002B8: Call 0.Method_Proc_296_93_11002D00 (CInt(&H14), var_8C)
  loc_11002C0: var_8C.Text = vbNullString
  loc_11002CC: Exit Sub
End Sub

Public Sub Proc_296_94_10C468C
  'Data Table: 565890
  Dim var_8C As TextBox
  loc_10C439E: Set var_88 = Me.Txt
  loc_10C43A4: Call 0.Method_Proc_296_94_10C468C0 (CInt(&HF), var_8C)
  loc_10C43AC: var_8C.Text = vbNullString
  loc_10C43C6: Set var_88 = Me.Txt
  loc_10C43CC: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H11), var_8C)
  loc_10C43D4: var_8C.Text = vbNullString
  loc_10C43EE: Set var_88 = Me.Txt
  loc_10C43F4: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H19), var_8C)
  loc_10C43FC: var_8C.Text = vbNullString
  loc_10C4416: Set var_88 = Me.Txt
  loc_10C441C: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H18), var_8C)
  loc_10C4424: var_8C.Text = vbNullString
  loc_10C443E: Set var_88 = Me.Txt
  loc_10C4444: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H17), var_8C)
  loc_10C444C: var_8C.Text = vbNullString
  loc_10C4466: Set var_88 = Me.Txt
  loc_10C446C: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H12), var_8C)
  loc_10C4474: var_8C.Text = vbNullString
  loc_10C448E: Set var_88 = Me.Txt
  loc_10C4494: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H13), var_8C)
  loc_10C449C: var_8C.Text = vbNullString
  loc_10C44B6: Set var_88 = Me.Txt
  loc_10C44BC: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H21), var_8C)
  loc_10C44C4: var_8C.Text = vbNullString
  loc_10C44DE: Set var_88 = Me.Txt
  loc_10C44E4: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H22), var_8C)
  loc_10C44EC: var_8C.Text = vbNullString
  loc_10C4506: Set var_88 = Me.Txt
  loc_10C450C: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H14), var_8C)
  loc_10C4514: var_8C.Text = vbNullString
  loc_10C452E: Set var_88 = Me.Txt
  loc_10C4534: Call 0.Method_Proc_296_94_10C468C0 (CInt(3), var_8C)
  loc_10C453C: var_8C.Text = vbNullString
  loc_10C4556: Set var_88 = Me.Txt
  loc_10C455C: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H15), var_8C)
  loc_10C4564: var_8C.Text = vbNullString
  loc_10C457E: Set var_88 = Me.Txt
  loc_10C4584: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H16), var_8C)
  loc_10C458C: var_8C.Text = vbNullString
  loc_10C45A6: Set var_88 = Me.Txt
  loc_10C45AC: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H1F), var_8C)
  loc_10C45B4: var_8C.Text = vbNullString
  loc_10C45CE: Set var_88 = Me.Txt
  loc_10C45D4: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H1F), var_8C)
  loc_10C45DC: var_8C.Tag = vbNullString
  loc_10C45F6: Set var_88 = Me.Txt
  loc_10C45FC: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H20), var_8C)
  loc_10C4604: var_8C.Text = vbNullString
  loc_10C461E: Set var_88 = Me.Txt
  loc_10C4624: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H20), var_8C)
  loc_10C462C: var_8C.Tag = vbNullString
  loc_10C4646: Set var_88 = Me.Txt
  loc_10C464C: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H12), var_8C)
  loc_10C4654: var_8C.Text = vbNullString
  loc_10C466E: Set var_88 = Me.Txt
  loc_10C4674: Call 0.Method_Proc_296_94_10C468C0 (CInt(&H14), var_8C)
  loc_10C467C: var_8C.Text = vbNullString
  loc_10C4688: Exit Sub
End Sub

Public Sub Proc_296_95_10A9FD0
  'Data Table: 565890
  Dim var_90 As Label
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_154 As Double
  Dim var_B8 As Variant
  Dim var_D8 As Long
  Dim var_EC As MSHFlexGrid
  Dim var_F0 As String
  Dim var_15C As Double
  Dim var_110 As Variant
  Dim var_148 As Label
  Dim var_144 As Variant
  Dim var_160 As Label
  loc_10A9D2A: Set var_8C = Me.LTxt
  loc_10A9D30: Call 0.Method_Proc_296_95_10A9FD00 (CInt(&H1B), var_90)
  loc_10A9D38: var_90.Caption = vbNullString
  loc_10A9D69: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_10A9D7D:   Set var_8C = Me.LTxt
  loc_10A9D83:   Call 0.Method_Proc_296_95_10A9FD00 (CInt(&H1B), var_90)
  loc_10A9D9F:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_10A9DA4:   var_D8 = 8
  loc_10A9DCA:   var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10A9DE9:   var_110 = CVar((Val(var_90.Caption) + var_15C)) 'Double
  loc_10A9E07:   Set var_144 = Me.LTxt
  loc_10A9E0D:   Call 0.Method_Proc_296_95_10A9FD00 (CInt(&H1B), var_148, CStr(Format(var_110, "0.00")), 1, 1)
  loc_10A9E15:   var_148.Caption = var_15C
  loc_10A9E3E: Next var_A4 'Integer
  loc_10A9E51: Set var_8C = Me.LTxt
  loc_10A9E57: Call 0.Method_Proc_296_95_10A9FD00 (CInt(&H1A), var_90)
  loc_10A9E5F: var_A8 = var_90.Caption
  loc_10A9E7D: Set var_EC = Me.LTxt
  loc_10A9E83: Call 0.Method_Proc_296_95_10A9FD00 (CInt(&H1B), var_144)
  loc_10A9E8B: var_F0 = var_144.Caption
  loc_10A9EB7: var_A0 = CVar((Val(var_A8) - Val(var_F0))) 'Double
  loc_10A9ED5: Set var_148 = Me.LTxt
  loc_10A9EDB: Call 0.Method_Proc_296_95_10A9FD00 (CInt(&H1C), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A9EE3: var_160.Caption = 1
  loc_10A9F17: Set var_8C = Me.LTxt
  loc_10A9F1D: Call 0.Method_Proc_296_95_10A9FD00 (CInt(&H1B), var_90, var_A8)
  loc_10A9F25: var_15C = var_90.Caption
  loc_10A9F32: var_154 = Val(var_A8)
  loc_10A9F43: Set var_EC = Me.Txt
  loc_10A9F49: Call 0.Method_Proc_296_95_10A9FD00 (CInt(&H19), var_144, var_F0)
  loc_10A9F7D: var_A0 = CVar((var_144.Text + Val(var_F0))) 'Double
  loc_10A9F9B: Set var_148 = Me.LTxt
  loc_10A9FA1: Call 0.Method_Proc_296_95_10A9FD00 (CInt(&H1D), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A9FA9: var_160.Caption = 1
  loc_10A9FCF: Exit Sub
End Sub

Public Sub Proc_296_96_10130F8
  'Data Table: 565890
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_90 As Double
  Dim var_86 As Integer
  loc_1012F0D: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B4 'Integer
  loc_1012F17:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_1012F1C:   var_E4 = 1
  loc_1012F56:   If (CStr(Me.FGrid.TextMatrix)) = MemVar_1F95070 & "MEM") Then
  loc_1012F5D:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1012F62:     var_E4 = &H18
  loc_1012F80:     var_94 = CStr(Me.FGrid.TextMatrix))
  loc_1012F8D:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1012F92:     var_E4 = 8
  loc_1012FC2:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1012FCE:   End If
  loc_1012FD1: Next var_B4 'Integer
  loc_1012FDE: If (var_94 <> vbNullString) Then
  loc_1012FF9:   If (Proc_96_1_F8D0C4(var_94) = 0) Then
  loc_1012FFF:     Proc_96_2_100E504(var_94)
  loc_1013009:     If (CDbl(0) < var_90) Then
  loc_101302D:       MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_101304A:       Me.Global.Unload Me
  loc_1013054:       var_86 = 0
  loc_101305A:     Else
  loc_101305C:       var_86 = &HFF
  loc_101305F:     End If
  loc_1013062:   Else
  loc_1013070:     If (Proc_96_1_F8D0C4(var_94, var_9C) = &HFF) Then
  loc_1013076:       Proc_96_2_100E504(var_94, var_86)
  loc_101308C:       If ((CDbl((var_86 + var_9C)) < var_90) And (var_9C > CDbl(0))) Then
  loc_10130B0:         MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_10130CD:         Me.Global.Unload Me
  loc_10130D7:         var_86 = 0
  loc_10130DD:       Else
  loc_10130DF:         var_86 = &HFF
  loc_10130E2:       End If
  loc_10130E5:     Else
  loc_10130E7:       var_86 = &HFF
  loc_10130EA:     End If
  loc_10130EA:   End If
  loc_10130ED: Else
  loc_10130EF:   var_86 = &HFF
  loc_10130F2: End If
  loc_10130F2: Proc_296_96_10130F8 = var_86
End Sub

Public Sub Proc_296_97_125C094
  'Data Table: 565890
  Dim var_B8 As MSHFlexGrid
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As String
  Dim var_1B8 As Boolean
  Dim var_124 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_90 As Double
  Dim var_86 As Integer
  Dim var_EC As Variant
  Dim var_1DC As String
  Dim var_188 As Variant
  Dim var_22C As Variant
  Dim unk_5658BD As Connection15
  Dim var_254 As TextBox
  Dim var_25C As TextBox
  Dim var_278 As String
  loc_125BBB1: For var_CC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_CC 'Integer
  loc_125BBBB:   var_DC = CVar(CLng(var_88)) 'Long
  loc_125BBC0:   var_FC = 1
  loc_125BBED:   var_1B8 = (CStr(Me.FGrid.TextMatrix)) = MemVar_1F95070 & "CCAD")
  loc_125BBF5:   var_124 = CVar(CLng(var_88)) 'Long
  loc_125BC06:   Set var_158 = Me.FGrid
  loc_125BC17:   var_178 = CVar(CStr(var_158.TextMatrix))) 'String
  loc_125BC1D:   var_188 = Trim(var_178)
  loc_125BC50:   If CBool(CVar(CLng(9)) And (var_188 <> vbNullString)) Then
  loc_125BC57:     var_DC = CVar(CLng(var_88)) 'Long
  loc_125BC5F:     var_FC = CVar(CLng(9)) 'Long
  loc_125BC79:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_125BC86:     var_DC = CVar(CLng(var_88)) 'Long
  loc_125BC8E:     var_FC = CVar(CLng(&HA)) 'Long
  loc_125BCA8:     var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_125BCB5:     var_DC = CVar(CLng(var_88)) 'Long
  loc_125BCBA:     var_FC = 8
  loc_125BCEA:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_125BCF6:   End If
  loc_125BCF9: Next var_CC 'Integer
  loc_125BD09: var_1DC = 0
  loc_125BD39: var_110 = 0
  loc_125BD58: If (Proc_275_12_130B494(2, var_A8, var_94, var_110, 0) = &HFF) Then
  loc_125BD63:   If (var_94 <> var_B0) Then
  loc_125BD68:     var_86 = 0
  loc_125BD76:     var_168 = "Smart Card Verification"
  loc_125BD8C:     MsgBox("Smart Card is changed.", &H10, var_168, var_178, var_188)
  loc_125BD9C:   End If
  loc_125BDA3:   If (var_9C >= var_90) Then
  loc_125BDC4:     Set var_B8 = Me.Txt
  loc_125BDCA:     Call 0.Method_Proc_296_97_125C0940 (CInt(1), var_158, var_110, ") BILL NO.- ", "Agnst. (" & global_212, var_86)
  loc_125BDD2:     0 = var_158.Text
  loc_125BDDF:     var_AC = 0 & var_110 & 0 & var_110
  loc_125BDFD:     Proc_6_17_EAAE40(var_168, CVar(Proc_6_14_EF402C(var_9C)))
  loc_125BE0D:     Proc_6_17_EAAE40(var_1FC, var_94)
  loc_125BE27:     var_110 = CStr(var_90)
  loc_125BE32:     var_178 = CVar("Update SmartCardRegistration Set LastTransAmt=" & var_110 & ",LastTransDate=") 'String
  loc_125BE38:     var_188 = var_178 & var_168 
  loc_125BE4C:     var_EC = CVar((var_9C - var_90)) 'Double
  loc_125BE73:     var_22C = var_188 & ",CurrBal=" & "Smart Card Verification" & " Where Code=" & var_1FC & " And LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_125BE8A:     unk_5658BD.Execute CStr(var_22C & "'"), var_24C, -1
  loc_125BEC6:     Set var_B8 = Me.Txt
  loc_125BECC:     Call 0.Method_Proc_296_97_125C0940 (CInt(0), var_158, var_110)
  loc_125BED4:     var_B8 = var_158.Text
  loc_125BEE7:     Set var_250 = Me.Txt
  loc_125BEED:     Call 0.Method_Proc_296_97_125C0940 (CInt(1), var_254)
  loc_125BF1A:     Set var_258 = Me.Txt
  loc_125BF20:     Call 0.Method_Proc_296_97_125C0940 (CInt(2), var_25C)
  loc_125BF3B:     var_288 = "CARDEXP"
  loc_125BF44:     var_284 = "A"
  loc_125BF4D:     var_278 = Proc_6_14_EF402C(var_A4)
  loc_125BF9B:     Proc_275_16_10AF65C(MemVar_1F95044, var_110, 1, global_116, CLng(var_254.Text), Me.LblVPrefix.Caption, MemVar_1F95070, CDate(var_25C.Text))
  loc_125BFDA:     If (Proc_275_7_10CE5A4((var_9C - var_90), var_A4, var_A8, var_94, var_A8, CDbl(0)) = &HFF) Then
  loc_125BFDF:       var_86 = &HFF
  loc_125BFE5:     Else
  loc_125BFE7:       var_86 = 0
  loc_125C00B:       MsgBox("Transaction Failed.", &H10, "Cash Card Detail", var_178, var_188)
  loc_125C01B:     End If
  loc_125C01E:   Else
  loc_125C020:     var_86 = 0
  loc_125C044:     MsgBox("Insufficient Smart Card Balance.", &H10, "Smart Card Verification", var_178, var_188)
  loc_125C054:   End If
  loc_125C057: Else
  loc_125C059:   var_86 = 0
  loc_125C07D:   MsgBox("Transaction Failed.", &H10, "Cash Card Detail", var_178, var_188)
  loc_125C08D: End If
  loc_125C08D: Proc_296_97_125C094 = var_86
End Sub

Public Sub Proc_296_98_F68EA0
  'Data Table: 565890
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_90 As Double
  Dim var_86 As Integer
  loc_F68D9D: For var_BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_BC 'Integer
  loc_F68DA7:   var_CC = CVar(CLng(var_88)) 'Long
  loc_F68DAC:   var_EC = 1
  loc_F68DE6:   If (CStr(Me.FGrid.TextMatrix)) = MemVar_1F95070 & "CCAD") Then
  loc_F68DED:     var_CC = CVar(CLng(var_88)) 'Long
  loc_F68DF2:     var_EC = 8
  loc_F68E22:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F68E2E:   End If
  loc_F68E31: Next var_BC 'Integer
  loc_F68E47: If (Proc_275_8_10BF354(var_98, var_A0) = &HFF) Then
  loc_F68E51:   If (var_98 < var_90) Then
  loc_F68E75:     MsgBox("Insufficient Cash Card Balance.", &H40, "Cash Card Detail", var_12C, var_13C)
  loc_F68E87:     var_86 = 0
  loc_F68E8D:   Else
  loc_F68E8F:     var_86 = &HFF
  loc_F68E92:   End If
  loc_F68E95: Else
  loc_F68E97:   var_86 = 0
  loc_F68E9A: End If
  loc_F68E9A: Proc_296_98_F68EA0 = var_86
End Sub

Public Sub Proc_296_99_142F5C8
  'Data Table: 565890
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_158 As Variant
  Dim var_200 As TextBox
  loc_142EB1B: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142EB20: var_C8 = 1
  loc_142EB57: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_142EB5E:   Set var_F4 = Me.FGrid
  loc_142EB9E:   Set var_DC = Me.Txt
  loc_142EBA4:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), 1)
  loc_142EBAC:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_142EBD7:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142EBDC:   var_C8 = 2
  loc_142EC22:   var_C8 = 3
  loc_142EC47:   Set var_DC = Me.Txt
  loc_142EC4D:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_142EC55:   var_F8.Text = var_C8
  loc_142EC80:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142EC85:   var_C8 = 4
  loc_142ECA2:   global_152 = CStr(var_F4.TextMatrix))
  loc_142ECC6:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142ECCB:   var_C8 = 5
  loc_142ECE8:   global_156 = CStr(var_F4.TextMatrix))
  loc_142ED0C:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142ED35:   Set var_DC = Me.Txt
  loc_142ED3B:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(6)), var_A8, CVar(CLng(6)))
  loc_142ED43:   var_F8.Tag = var_A8
  loc_142ED6E:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142ED76:   var_C8 = CVar(CLng(7)) 'Long
  loc_142EDAD:   var_158 = var_F4.TextMatrix)
  loc_142EDBD:   Set var_F8 = Me.FGrid
  loc_142EE1B:   Set var_1FC = Me.Txt
  loc_142EE21:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H10), var_200, CStr(IIf((CStr(var_F4.TextMatrix)) = vbNullString), CVar(CStr(var_158)), CVar(CStr(var_F4.TextMatrix))))), CVar(CLng(7)), CVar(CLng(var_F8.Row)), var_158, CVar(CLng(6)))
  loc_142EE29:   var_200.Text = CVar(CLng(Me.FGrid.Row))
  loc_142EE71:   var_C8 = 8
  loc_142EE7D:   var_EC = var_F4.TextMatrix)
  loc_142EE96:   Set var_DC = Me.Txt
  loc_142EE9C:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H11), var_F8, CStr(var_EC), var_C8, CVar(CLng(Me.FGrid.Row)), var_EC)
  loc_142EEA4:   var_F8.Text = var_C8
  loc_142EEC7:   If (CStr(var_F4.TextMatrix)) = "Cash Card") Then
  loc_142EEDD:     var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142EF06:     Set var_DC = Me.Txt
  loc_142EF0C:     Call 0.Method_Proc_296_99_142F5C80 (CInt(&H21), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)), var_A8)
  loc_142EF14:     var_F8.Text = var_A8
  loc_142EF68:     Set var_DC = Me.Txt
  loc_142EF6E:     Call 0.Method_Proc_296_99_142F5C80 (CInt(&H22), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_142EF76:     var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142EF91:   Else
  loc_142EFCD:     Set var_DC = Me.Txt
  loc_142EFD3:     Call 0.Method_Proc_296_99_142F5C80 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)))
  loc_142EFDB:     var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F02F:     Set var_DC = Me.Txt
  loc_142F035:     Call 0.Method_Proc_296_99_142F5C80 (CInt(&H13), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_142F03D:     var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F055:   End If
  loc_142F091:   Set var_DC = Me.Txt
  loc_142F097:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H14), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_142F09F:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F0F4:   Set var_DC = Me.Txt
  loc_142F0FA:   Call 0.Method_Proc_296_99_142F5C80 (CInt(3), var_F8, CStr(var_F4.TextMatrix)), &H17)
  loc_142F102:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F156:   Set var_DC = Me.Txt
  loc_142F15C:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H15), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_142F164:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F1B8:   Set var_DC = Me.Txt
  loc_142F1BE:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H16), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_142F1C6:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F21A:   Set var_DC = Me.Txt
  loc_142F220:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H17), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_142F228:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F27C:   Set var_DC = Me.Txt
  loc_142F282:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H18), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_142F28A:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F2DE:   Set var_DC = Me.Txt
  loc_142F2E4:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H18), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_142F2EC:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_142F341:   Set var_DC = Me.Txt
  loc_142F347:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H19), var_F8, CStr(var_F4.TextMatrix)), &H11)
  loc_142F34F:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F3A4:   Set var_DC = Me.Txt
  loc_142F3AA:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H1E), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_142F3B2:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_142F407:   Set var_DC = Me.Txt
  loc_142F40D:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H1E), var_F8, CStr(var_F4.TextMatrix)), &H13)
  loc_142F415:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F46A:   Set var_DC = Me.Txt
  loc_142F470:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H1F), var_F8, CStr(var_F4.TextMatrix)), &H14)
  loc_142F478:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_142F4CD:   Set var_DC = Me.Txt
  loc_142F4D3:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H1F), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_142F4DB:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F530:   Set var_DC = Me.Txt
  loc_142F536:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H20), var_F8, CStr(var_F4.TextMatrix)), &H18)
  loc_142F53E:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_142F593:   Set var_DC = Me.Txt
  loc_142F599:   Call 0.Method_Proc_296_99_142F5C80 (CInt(&H20), var_F8, CStr(var_F4.TextMatrix)), &H19)
  loc_142F5A1:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F5BE:   global_172 = &HFF
  loc_142F5C3:   Set var_F4 = Nothing 
  loc_142F5C7: End If
  loc_142F5C7: Exit Sub
End Sub

Public Sub Proc_296_100_EE7548
  'Data Table: 565890
  loc_EE7496: On Error Goto loc_EE74DC
  loc_EE74AE: Call 0.Method_arg_18C (var_8C)
  loc_EE74B6: Call var_8C.Show
  loc_EE74CB: Call 0.Method_arg_188 (var_B0)
  loc_EE74D3: var_88 = var_B0
  loc_EE74D6: Proc_296_100_EE7548 = 1
  loc_EE74DC: ' Referenced from: EE7496
  loc_EE74E4: Set var_8C = Err()
  loc_EE74EA: Call 0.Method_arg_1C (var_B4)
  loc_EE74FB: If (var_B4 <> 0) Then
  loc_EE7506:   Set var_8C = Err()
  loc_EE750C:   Call 0.Method_arg_2C (var_B0)
  loc_EE752D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE7540: End If
  loc_EE7540: Proc_296_100_EE7548 = 
End Sub

Public Sub Proc_296_101_122C5AC
  'Data Table: 565890
  Dim var_D0 As Variant
  Dim var_B0 As Variant
  Dim var_F0 As Variant
  Dim var_C0 As Variant
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_9A As Integer
  Dim Me As Variant
  Dim var_144 As Variant
  Dim var_110 As Variant
  loc_122C09E: var_D0 = False
  loc_122C0B6: ).Visible = 0
  loc_122C0BD: var_D0 = False
  loc_122C0D5: ).Visible = 0
  loc_122C0ED: For var_F4 = 1 To CInt(Me.UBound): var_9E = var_F4 'Integer
  loc_122C0F3:   var_C0 = False
  loc_122C10C:   ).Visible = var_9E
  loc_122C133:   Me..Txt.Unload )
  loc_122C141: Next var_F4 'Integer
  loc_122C157: For var_FC = 1 To CInt(Me.UBound): var_9E = var_FC 'Integer
  loc_122C15D:   var_C0 = False
  loc_122C176:   ).Visible = var_9E
  loc_122C19D:   Me..Txt.Unload )
  loc_122C1AB: Next var_FC 'Integer
  loc_122C1BE: var_F0 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_122C1C5: Proc_6_39_E7D3A0(var_110)
  loc_122C1DC: If (var_110 > 0) Then
  loc_122C1E5:   var_96 = (arg_18 + 1)
  loc_122C1EA:   var_98 = 0
  loc_122C1EF:   var_9A = 0
  loc_122C20C:   Proc_6_39_E7D3A0(var_110, CVar(Me.Recordset15.RecordCount), var_9C, 1)
  loc_122C21C:   For var_124 = var_98 To CInt(var_110): var_9A = var_124 'Integer
  loc_122C236:     If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_122C239:       GoTo loc_122C5A4
  loc_122C23C:     End If
  loc_122C25C:     Me.Global.Load )
  loc_122C27B:     If ((((var_9C - 1) Mod arg_18) <> 0) Or (var_9C = 1)) Then
  loc_122C284:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_122C2A1:       var_D0 = CVar((var_9C - 1)) 'Integer
  loc_122C2B8:       var_144 = (var_D0 + ).height)
  loc_122C2D1:       ).top = var_9C
  loc_122C2EA:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_122C2FB:       var_110 = ).left
  loc_122C316:       ).left = var_9C
  loc_122C33B:       ).Visible = var_9C
  loc_122C345:       var_B0 = "Name"
  loc_122C36A:       var_110 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item(var_B0)), True, var_110, var_B0, var_144, ).top)) 'String
  loc_122C382:       ).CAPTION = var_9C
  loc_122C395:       var_B0 = "Code"
  loc_122C3BA:       var_110 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item(var_B0)), var_110, var_B0, var_9C)) 'String
  loc_122C3D2:       ).Tag = var_9C
  loc_122C3ED:       If (var_9C = (arg_18 * arg_10)) Then
  loc_122C402:         var_94 = CVar(Me.Recordset15.AbsolutePosition) 'Variant
  loc_122C406:         Exit For
  loc_122C409:       End If
  loc_122C40C:     Else
  loc_122C417:       If ((var_9C Mod var_96) = var_98) Then
  loc_122C421:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_122C43F:         var_D0 = CVar((var_9C - arg_18)) 'Integer
  loc_122C456:         var_144 = (var_D0 + ).width)
  loc_122C46F:         ).left = var_9C
  loc_122C489:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_122C49A:         var_110 = ).top
  loc_122C4B5:         ).top = var_9C
  loc_122C4DA:         ).Visible = var_9C
  loc_122C4E4:         var_B0 = "Name"
  loc_122C509:         var_110 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item(var_B0)), True, var_110, var_B0, var_144, ).left)) 'String
  loc_122C521:         ).CAPTION = var_9C
  loc_122C534:         var_B0 = "Code"
  loc_122C559:         var_110 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item(var_B0)), var_110, var_B0, var_110)) 'String
  loc_122C571:         ).Tag = var_9C
  loc_122C587:         var_9A = (var_9A + 1)
  loc_122C591:         var_98 = (var_96 - var_9A)
  loc_122C594:       End If
  loc_122C594:     End If
  loc_122C597:     Me.MoveNext
  loc_122C59F:   Next var_124 'Integer
  loc_122C5A4:   ' Referenced from: 122C406
  loc_122C5A4:   ' Referenced from: 122C239
  loc_122C5A4: End If
  loc_122C5A4: Proc_296_101_122C5AC = 
End Sub

Public Sub Proc_296_102_F13B00(arg_C, arg_10, arg_14, arg_18, arg_1C) 'F13B00
  'Data Table: 565890
  Dim Me As Recordset15
  loc_F13A14: If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_F13A22:   If (arg_10 > (arg_14 * arg_18)) Then
  loc_F13A43:     Me.Recordset15.AbsolutePosition = CLng((((arg_10 - (arg_10 Mod (arg_14 * arg_18))) - (arg_14 * arg_18)) + 1))
  loc_F13A5A:     Call Proc_296_101_122C5AC(arg_1C, arg_14, arg_C)
  loc_F13A62:   End If
  loc_F13A65: Else
  loc_F13A8E:   If ((Me.AbsolutePosition <> -2) And (Me.Recordset15.AbsolutePosition <> -3)) Then
  loc_F13AA8:     If (Me.Recordset15.AbsolutePosition = CLng((arg_14 * arg_18))) Then
  loc_F13AB3:       Me.Recordset15.AbsolutePosition = 1
  loc_F13ABB:     Else
  loc_F13ADE:       Me.Recordset15.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * (arg_14 * arg_18)))) + 1)
  loc_F13AE3:     End If
  loc_F13AF5:     Call Proc_296_101_122C5AC(arg_1C, arg_14, arg_C, arg_18, arg_1C)
  loc_F13AFD:   End If
  loc_F13AFD: End If
  loc_F13AFD: Exit Sub
End Sub

Public Sub Proc_296_103_EB282C
  'Data Table: 565890
  Dim Me As Recordset15
  loc_EB27B5: If ((Me.Recordset15.AbsolutePosition <> -2) And (Me.Recordset15.AbsolutePosition <> -3)) Then
  loc_EB27BF:   Me.Enabled = True
  loc_EB27CA:   Me.Enabled = True
  loc_EB27CE: End If
  loc_EB27E0: If (Me.AbsolutePosition = CLng(&H12)) Then
  loc_EB27EA:   Me.Enabled = True
  loc_EB27F6:   Me.Enabled = False
  loc_EB27FA: End If
  loc_EB280E: If (Me.AbsolutePosition = -3) Then
  loc_EB2819:   Me.Enabled = False
  loc_EB2824:   Me.Enabled = True
  loc_EB2828: End If
  loc_EB2828: Exit Sub
End Sub

Public Sub Proc_296_104_105D354
  'Data Table: 565890
  Dim var_88 As Variant
  loc_105D0EC: ReDim Preserve global_196(0 To 1)
  loc_105D106: ReDim Preserve global_200(0 To 1)
  loc_105D11E: global_196(1) = "Amount"
  loc_105D12A: Set var_88 = Me.LTxt
  loc_105D130: Call 0.Method_Proc_296_104_105D3540 (CInt(&H1C))
  loc_105D16B: global_200(1) = CStr(Format(CVar(var_8C), "0.00"))
  loc_105D181: var_D4 = global_160
  loc_105D18C: If (var_D4 = "Credit Card") Then
  loc_105D19A:   If (global_216 = "Y") Then
  loc_105D1AD:     ReDim Preserve global_196(0 To 4)
  loc_105D1C7:     ReDim Preserve global_200(0 To 4)
  loc_105D1DF:     global_196(2) = "Credit Card No"
  loc_105D1EE:     global_196(3) = "Expiry Date"
  loc_105D1FD:     global_196(4) = "Batch No"
  loc_105D1FE:   End If
  loc_105D201: Else
  loc_105D209:   If Not (var_D4 = "Cash") Then
  loc_105D214:     If Not (var_D4 = "Hold") Then
  loc_105D21F:       If (var_D4 = "Complementary") Then
  loc_105D222:       End If
  loc_105D222:     End If
  loc_105D225:   Else
  loc_105D22D:     If (var_D4 = "Cash Card") Then
  loc_105D230:       GoTo loc_105D30B
  loc_105D233:     End If
  loc_105D23B:     If (var_D4 = "Staff") Then
  loc_105D23E:       GoTo loc_105D30B
  loc_105D241:     End If
  loc_105D249:     If Not (var_D4 = "Company") Then
  loc_105D254:       If (var_D4 = "Member") Then
  loc_105D257:       End If
  loc_105D25A:     Else
  loc_105D262:       If (var_D4 = "Cheque") Then
  loc_105D275:         ReDim Preserve global_196(0 To 3)
  loc_105D28F:         ReDim Preserve global_200(0 To 3)
  loc_105D2A7:         global_196(2) = "Cheque Date"
  loc_105D2B6:         global_196(3) = "Cheque No"
  loc_105D2BA:       Else
  loc_105D2C2:         If (var_D4 = "Room") Then
  loc_105D2C5:           GoTo loc_105D30B
  loc_105D2C8:         End If
  loc_105D2D8:         ReDim Preserve global_196(0 To 2)
  loc_105D2F2:         ReDim Preserve global_200(0 To 2)
  loc_105D30A:         global_196(2) = "Narration"
  loc_105D30B:         ' Referenced from:         105D2C5
  loc_105D30B:       End If
  loc_105D30B:     End If
  loc_105D30B:     ' Referenced from:     105D23E
  loc_105D30B:     ' Referenced from:     105D230
  loc_105D30B:   End If
  loc_105D30B: End If
  loc_105D316: If (global_160 = vbNullString) Then
  loc_105D325:   Me.FrameQty.Visible = False
  loc_105D330: Else
  loc_105D341:   Me.LblIndex.Caption = CStr(1)
  loc_105D34C:   Call Proc_296_105_FA6070(1, 1)
  loc_105D351: End If
  loc_105D351: Exit Sub
  loc_105D352: CExtInstUnk
End Sub

Public Sub Proc_296_105_FA6070
  'Data Table: 565890
  Dim var_90 As Variant
  loc_FA5F39: If ((CDbl(Val(Me.LblIndex.Caption)) > CDbl(0)) And (CDbl(Val(Me.LblIndex.Caption)) <= CDbl(UBound(global_196, 1)))) Then
  loc_FA5F48:   Me.FrameAmtType.Visible = False
  loc_FA5F5C:   Me.FrameQty.Visible = True
  loc_FA5F8B:   Me.LblVtype.Caption = global_196(CLng(Me.LblIndex.Caption))
  loc_FA5FC1:   Me.TxtQty.Text = global_200(CLng(Me.LblIndex.Caption))
  loc_FA5FD3: Else
  loc_FA6007:   Set var_90 = Me.SSPItem
  loc_FA600D:   Call 0.Method_Proc_296_105_FA6070C (var_96)
  loc_FA6023:   If ((CDbl(Val(Me.LblIndex.Caption)) = CDbl((UBound(global_196, 1) + 1))) And (var_96 <= 1)) Then
  loc_FA6026:     Call Proc_296_92_1533ED4()
  loc_FA602B:   End If
  loc_FA6037:   Me.FrameQty.Visible = False
  loc_FA604B:   Me.FrameAmtType.Visible = True
  loc_FA6064:   Me.LblIndex.Caption = CStr(0)
  loc_FA606F: End If
  loc_FA606F: Exit Sub
End Sub
