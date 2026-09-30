VERSION 5.00
Begin VB.Form MemPaymentReceive
  Caption = "Payment Receive Entry"
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
  ClientWidth = 11010
  ClientHeight = 7950
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 7
    Left = 405
    Top = 8310
    Width = 10020
    Height = 960
    TabIndex = 94
    BorderStyle = 0 'None
    Begin TextBox TxtAmtCr
      Index = 7
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 38
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
    Begin TextBox TxtRem
      Index = 7
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 39
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtCrAc
      Index = 7
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
      TabIndex = 37
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
    Begin TextBox TxtCardNo
      Index = 7
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 36
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 7
      ForeColor = &HFF0000&
      Left = 7785
      Top = 270
      Width = 705
      Height = 240
      TabIndex = 99
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 7
      ForeColor = &HFF0000&
      Left = 0
      Top = 495
      Width = 825
      Height = 240
      TabIndex = 98
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 7
      ForeColor = &HFF0000&
      Left = 0
      Top = 255
      Width = 930
      Height = 240
      TabIndex = 97
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 7
      ForeColor = &HFF0000&
      Left = 0
      Top = 15
      Width = 765
      Height = 240
      TabIndex = 96
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 7
      ForeColor = &HFF00FF&
      Left = 2865
      Top = 30
      Width = 1590
      Height = 240
      TabIndex = 95
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
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 6
    Left = 405
    Top = 7350
    Width = 10020
    Height = 960
    TabIndex = 88
    BorderStyle = 0 'None
    Begin TextBox TxtAmtCr
      Index = 6
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 34
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
    Begin TextBox TxtRem
      Index = 6
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 35
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtCrAc
      Index = 6
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
      TabIndex = 33
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
    Begin TextBox TxtCardNo
      Index = 6
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 32
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 6
      ForeColor = &HFF0000&
      Left = 7785
      Top = 270
      Width = 705
      Height = 240
      TabIndex = 93
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 6
      ForeColor = &HFF0000&
      Left = 0
      Top = 495
      Width = 825
      Height = 240
      TabIndex = 92
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 6
      ForeColor = &HFF0000&
      Left = 0
      Top = 255
      Width = 930
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 6
      ForeColor = &HFF0000&
      Left = 0
      Top = 15
      Width = 765
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 6
      ForeColor = &HC000C0&
      Left = 2865
      Top = 30
      Width = 1590
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
  End
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 5
    Left = 405
    Top = 6390
    Width = 10020
    Height = 960
    TabIndex = 82
    BorderStyle = 0 'None
    Begin TextBox TxtCardNo
      Index = 5
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 28
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
    Begin TextBox TxtCrAc
      Index = 5
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
      TabIndex = 29
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
    Begin TextBox TxtRem
      Index = 5
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 31
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtAmtCr
      Index = 5
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 30
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 5
      ForeColor = &HFF00FF&
      Left = 2865
      Top = 30
      Width = 1590
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 5
      ForeColor = &HFF0000&
      Left = 0
      Top = 15
      Width = 765
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 5
      ForeColor = &HFF0000&
      Left = 0
      Top = 255
      Width = 930
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 5
      ForeColor = &HFF0000&
      Left = 0
      Top = 495
      Width = 825
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 5
      ForeColor = &HFF0000&
      Left = 7785
      Top = 270
      Width = 705
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
  End
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 4
    Left = 405
    Top = 5430
    Width = 10020
    Height = 960
    TabIndex = 76
    BorderStyle = 0 'None
    Begin TextBox TxtCardNo
      Index = 4
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 24
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
    Begin TextBox TxtCrAc
      Index = 4
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
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
    Begin TextBox TxtRem
      Index = 4
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 27
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtAmtCr
      Index = 4
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 26
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 4
      ForeColor = &HFF00FF&
      Left = 2865
      Top = 30
      Width = 1590
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 4
      ForeColor = &HC00000&
      Left = 0
      Top = 15
      Width = 765
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 4
      ForeColor = &HC00000&
      Left = 0
      Top = 255
      Width = 930
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 4
      ForeColor = &HC00000&
      Left = 0
      Top = 495
      Width = 825
      Height = 240
      TabIndex = 78
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 4
      ForeColor = &HC00000&
      Left = 7785
      Top = 270
      Width = 705
      Height = 240
      TabIndex = 77
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
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 3
    Left = 405
    Top = 4470
    Width = 10020
    Height = 960
    TabIndex = 70
    BorderStyle = 0 'None
    Begin TextBox TxtCardNo
      Index = 3
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 20
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
    Begin TextBox TxtCrAc
      Index = 3
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
      TabIndex = 21
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
    Begin TextBox TxtRem
      Index = 3
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 23
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtAmtCr
      Index = 3
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 22
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 3
      ForeColor = &HFF00FF&
      Left = 2865
      Top = 30
      Width = 1590
      Height = 240
      TabIndex = 75
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 3
      ForeColor = &HFF0000&
      Left = 0
      Top = 15
      Width = 765
      Height = 240
      TabIndex = 74
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 3
      ForeColor = &HFF0000&
      Left = 0
      Top = 255
      Width = 930
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 3
      ForeColor = &HFF0000&
      Left = 0
      Top = 495
      Width = 825
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 3
      ForeColor = &HFF0000&
      Left = 7785
      Top = 270
      Width = 705
      Height = 240
      TabIndex = 71
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
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 2
    Left = 405
    Top = 3510
    Width = 10020
    Height = 960
    TabIndex = 64
    BorderStyle = 0 'None
    Begin TextBox TxtCardNo
      Index = 2
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 16
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
    Begin TextBox TxtCrAc
      Index = 2
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
      TabIndex = 17
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
    Begin TextBox TxtRem
      Index = 2
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 19
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtAmtCr
      Index = 2
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 18
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 2
      ForeColor = &HFF00FF&
      Left = 2865
      Top = 30
      Width = 1590
      Height = 240
      TabIndex = 69
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 2
      ForeColor = &HFF0000&
      Left = 0
      Top = 15
      Width = 765
      Height = 240
      TabIndex = 68
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 2
      ForeColor = &HFF0000&
      Left = 0
      Top = 255
      Width = 930
      Height = 240
      TabIndex = 67
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 2
      ForeColor = &HFF0000&
      Left = 0
      Top = 495
      Width = 825
      Height = 240
      TabIndex = 66
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 2
      ForeColor = &HFF0000&
      Left = 7785
      Top = 270
      Width = 705
      Height = 240
      TabIndex = 65
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
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 1
    Left = 405
    Top = 2550
    Width = 10020
    Height = 960
    TabIndex = 58
    BorderStyle = 0 'None
    Begin TextBox TxtCardNo
      Index = 1
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 12
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
    Begin TextBox TxtCrAc
      Index = 1
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
      TabIndex = 13
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
    Begin TextBox TxtRem
      Index = 1
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 15
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtAmtCr
      Index = 1
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 14
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 1
      ForeColor = &HFF00FF&
      Left = 2865
      Top = 30
      Width = 1590
      Height = 240
      TabIndex = 63
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 1
      ForeColor = &HFF0000&
      Left = 0
      Top = 15
      Width = 765
      Height = 240
      TabIndex = 62
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 1
      ForeColor = &HFF0000&
      Left = 0
      Top = 255
      Width = 930
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 1
      ForeColor = &HFF0000&
      Left = 0
      Top = 495
      Width = 825
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 1
      ForeColor = &HFF0000&
      Left = 7785
      Top = 270
      Width = 705
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
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 1125
    Width = 8700
    Height = 470
    TabIndex = 7
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 255
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
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 0
    Left = 405
    Top = 1590
    Width = 10020
    Height = 960
    TabIndex = 51
    BorderStyle = 0 'None
    Begin TextBox TxtAmtCr
      Index = 0
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 10
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
    Begin TextBox TxtRem
      Index = 0
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 11
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtCrAc
      Index = 0
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
      TabIndex = 9
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
    Begin TextBox TxtCardNo
      Index = 0
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 8
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 0
      ForeColor = &HC00000&
      Left = 7785
      Top = 270
      Width = 705
      Height = 240
      TabIndex = 56
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 0
      ForeColor = &HC00000&
      Left = 0
      Top = 495
      Width = 825
      Height = 240
      TabIndex = 55
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 0
      ForeColor = &HC00000&
      Left = 0
      Top = 255
      Width = 930
      Height = 240
      TabIndex = 54
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 0
      ForeColor = &HC00000&
      Left = 0
      Top = 15
      Width = 765
      Height = 240
      TabIndex = 53
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 0
      ForeColor = &HFF00FF&
      Left = 2865
      Top = 30
      Width = 1590
      Height = 240
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
  End
  Begin DataGrid DGAgAc
    Left = 8820
    Top = 9795
    Width = 6405
    Height = 3090
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 50
  End
  Begin DataGrid DGCrAc
    Left = 8805
    Top = 9420
    Width = 6405
    Height = 3090
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 44
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 885
    Width = 6405
    Height = 225
    TabIndex = 5
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
  Begin Frame FrmList
    Left = 5865
    Top = 9225
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 46
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
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 47
    End
  End
  Begin TextBox Txt
    Index = 6
    Left = 1575
    Top = 645
    Width = 1350
    Height = 225
    Enabled = 0   'False
    TabIndex = 4
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
    Index = 3
    BackColor = &HFFFFFF&
    Left = 8925
    Top = 885
    Width = 1350
    Height = 225
    TabIndex = 6
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
    Index = 1
    Left = 6630
    Top = 645
    Width = 1350
    Height = 225
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 2
    Left = 3705
    Top = 645
    Width = 1350
    Height = 225
    Enabled = 0   'False
    TabIndex = 3
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
    Index = 0
    Left = 10560
    Top = 120
    Width = 1875
    Height = 255
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 21
    Appearance = 0 'Flat
  End
  Begin MaskEdBox txtM
    Index = 5
    Left = 5070
    Top = 645
    Width = 720
    Height = 225
    TabIndex = 2
  End
  Begin MSFlexGrid FGPoint
    Left = 4110
    Top = 9390
    Width = 1785
    Height = 1440
    Visible = 0   'False
    TabIndex = 48
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11010
    Height = 450
    TabIndex = 100
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 0
    Top = 9840
    Width = 2880
    Height = 255
    TabIndex = 102
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
    Left = 120
    Top = 10200
    Width = 2790
    Height = 285
    TabIndex = 101
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
  Begin Label LblName
    Caption = "Remarks"
    Index = 0
    ForeColor = &HC00000&
    Left = 405
    Top = 1125
    Width = 825
    Height = 240
    TabIndex = 57
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
    Caption = "Against A/c"
    Index = 5
    ForeColor = &HC00000&
    Left = 405
    Top = 870
    Width = 1065
    Height = 240
    TabIndex = 49
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
    Caption = "Type"
    Index = 3
    ForeColor = &HC00000&
    Left = 405
    Top = 630
    Width = 465
    Height = 240
    TabIndex = 45
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
    Caption = "Dr Amt."
    Index = 6
    ForeColor = &HC00000&
    Left = 8190
    Top = 885
    Width = 705
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
  Begin Label LblName
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 3120
    Top = 645
    Width = 435
    Height = 240
    TabIndex = 42
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
    ForeColor = &HFF&
    Left = 8055
    Top = 645
    Width = 570
    Height = 210
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
  Begin Label LblName
    Caption = "Sr.No"
    Index = 1
    ForeColor = &HC00000&
    Left = 5985
    Top = 645
    Width = 525
    Height = 240
    TabIndex = 40
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

Attribute VB_Name = "MemPaymentReceive"

Private MasterFormExit As Integer
Private global_76 As Recordset15
Private global_80 As Variant
Private global_72 As Recordset15

Private Sub ListView_UnknownEvent_13 'F17154
  'Data Table: 4F942C
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F17070: On Error Goto loc_F1714E
  loc_F17077: Set var_A4 = Me.ListView
  loc_F170C1: Set var_BC = Me.Txt
  loc_F170C7: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F170CF: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F170FB: Me.FrmList.Visible = False
  loc_F1711D: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F1712B: Set var_9C = Me.Txt
  loc_F17131: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F17139: var_A4.SetFocus
  loc_F1714D: Exit Sub
  loc_F1714E: ' Referenced from: F17070
  loc_F1714E: Proc_6_60_E63754(var_C8)
  loc_F17153: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_0 'E536B4
  'Data Table: 4F942C
  loc_E5368E: Set var_88 = Me.txtM
  loc_E53694: Call 0.Method_txtM_UnknownEvent_00 (Cancel)
  loc_E536A2: Proc_6_74_E23240(var_8C)
  loc_E536AE: Call Proc_289_60_EF3C08(var_8C)
  loc_E536B3: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_1 'E4A954
  'Data Table: 4F942C
  loc_E4A932: Set var_88 = Me.txtM
  loc_E4A938: Call 0.Method_txtM_UnknownEvent_10 (Cancel)
  loc_E4A946: Proc_6_73_E23294(var_8C)
  loc_E4A952: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_8 'E55888
  'Data Table: 4F942C
  Dim arg_10 As Integer
  loc_E5585E: Set var_88 = Me.txtM
  loc_E55864: Call 0.Method_txtM_UnknownEvent_80 (Cancel)
  loc_E5587E: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E55883:   arg_10 = &HFF
  loc_E55886: End If
  loc_E55886: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E6314C
  'Data Table: 4F942C
  loc_E63106: If (CLng(arg_10) = &H1B) Then
  loc_E63109:   Call Proc_289_60_EF3C08()
  loc_E6310E:   Exit Sub
  loc_E6310F: End If
  loc_E63124: If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_E6312D:   Proc_6_75_E5335C(arg_10)
  loc_E63132: End If
  loc_E6313C: If (CLng(arg_10) = &H26) Then
  loc_E63145:   Proc_6_76_E533C8(arg_10, arg_14)
  loc_E6314A: End If
  loc_E6314A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FC7C10
  'Data Table: 4F942C
  Dim var_9C As Variant
  Dim var_90 As Label
  loc_FC7A64: On Error Goto loc_FC7C0A
  loc_FC7A8A: Call Proc_289_59_FD1CA4(Proc_5_1_100EC1C("ADD", Me))
  loc_FC7A95: Call Proc_289_57_10516F8(global_68)
  loc_FC7AA6: Set var_90 = Me.FrDebit
  loc_FC7AAC: Call 0.Method_TopCtrl1_UnknownEvent_AC (var_92, var_86)
  loc_FC7ABA: For var_96 =  To (var_92 - 1): 1 = var_96 'Integer
  loc_FC7ACC:   Set var_90 = Me.FrDebit
  loc_FC7AD2:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_86, var_9C)
  loc_FC7ADA:   var_9C.Visible = False
  loc_FC7AE9: Next var_96 'Integer
  loc_FC7B29: Set var_90 = Me.txtM
  loc_FC7B2F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_9C, CVar(CStr(Format(Now, "HH:MM"))))
  loc_FC7B37: var_9C.Text = 1
  loc_FC7B5F: Set var_90 = Me.txtM
  loc_FC7B65: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_9C)
  loc_FC7B6D: var_9C.Tag = vbNullString
  loc_FC7B8C: Set var_90 = Me.Txt
  loc_FC7B92: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_9C)
  loc_FC7B9A: var_9C.Text = CStr(MemVar_1F950EC)
  loc_FC7BB5: Call Txt_Validate(CInt(2))
  loc_FC7BC5: Set var_90 = Me.Txt
  loc_FC7BCB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_9C)
  loc_FC7BD3: var_9C.SetFocus
  loc_FC7BEC: Me.LblUser.Caption = vbNullString
  loc_FC7C01: Me.LblLDt.Caption = vbNullString
  loc_FC7C09: Exit Sub
  loc_FC7C0A: ' Referenced from: FC7A64
  loc_FC7C0A: Proc_6_60_E63754(0)
  loc_FC7C0F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EB02CC
  'Data Table: 4F942C
  loc_EB0248: On Error Goto loc_EB02C3
  loc_EB0282: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EB02A8:   Call Proc_289_59_FD1CA4(Proc_5_1_100EC1C("INI", Me))
  loc_EB02B3:   Call Proc_289_60_EF3C08(global_68)
  loc_EB02B8:   Call Proc_289_57_10516F8()
  loc_EB02BD:   Call Proc_289_58_1486A54()
  loc_EB02C2: End If
  loc_EB02C2: Exit Sub
  loc_EB02C3: ' Referenced from: EB0248
  loc_EB02C3: Proc_6_60_E63754()
  loc_EB02C8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10C0FD4
  'Data Table: 4F942C
  Dim var_96 As Integer
  Dim unk_4F9444 As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_10C0D24: On Error Goto loc_10C0F7D
  loc_10C0D35: If (Proc_183_56_FE8B08(global_68) = &HFF) Then
  loc_10C0D38:   Exit Sub
  loc_10C0D39: End If
  loc_10C0D70: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10C0D81:   unk_4F9444.BeginTrans var_11C
  loc_10C0D97:   var_94 = Me.Bookmark 'Variant
  loc_10C0DB9:   Set var_120 = Me.Txt
  loc_10C0DBF:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Delete From Ledger Where DocID='")
  loc_10C0DC7:   var_B8 = var_124.Text
  loc_10C0DD0:   var_12C = -1 & var_128
  loc_10C0DE0:   unk_4F9444.Execute var_12C & "'", var_134, &HFF
  loc_10C0E08:   Set var_120 = Me.Txt
  loc_10C0E0E:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124)
  loc_10C0E20:   var_168 = 0
  loc_10C0E33:   var_160 = 0
  loc_10C0E3E:   var_15C = 0
  loc_10C0E51:   var_154 = 0
  loc_10C0E5C:   var_150 = 0
  loc_10C0E6F:   var_148 = 0
  loc_10C0EAE:   var_128 = "Ledger"
  loc_10C0EB7:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_10C0EE2:   unk_4F9444.CommitTrans
  loc_10C0EE9:   var_96 = 0
  loc_10C0EF7:   Me.Requery -1
  loc_10C0F17:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10C0F24:     Me.Bookmark = var_94
  loc_10C0F2C:   Else
  loc_10C0F40:     If (Me.EOF = 0) Then
  loc_10C0F49:       Me.MoveLast
  loc_10C0F4E:     End If
  loc_10C0F4E:   End If
  loc_10C0F4E:   Call Proc_289_58_1486A54(var_96, var_148, 0, var_150, var_154)
  loc_10C0F53:   Call Proc_289_57_10516F8(0, var_15C)
  loc_10C0F74:   Proc_5_0_1107AD0(&HFF, Me, global_68)
  loc_10C0F7C: End If
  loc_10C0F7C: Exit Sub
  loc_10C0F7D: ' Referenced from: 10C0D24
  loc_10C0F83: If (var_96 = &HFF) Then
  loc_10C0F8C:   unk_4F9444.RollbackTrans
  loc_10C0F91: End If
  loc_10C0F99: Set var_120 = Err()
  loc_10C0F9F: Call 0.Method_arg_2C (var_128, 0)
  loc_10C0FC0: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10C0FD3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F9DF34
  'Data Table: 4F942C
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F9DDC0: On Error Goto loc_F9DEEF
  loc_F9DDD1: If (Proc_183_55_FE8490(global_68) = &HFF) Then
  loc_F9DDD4:   Exit Sub
  loc_F9DDD5: End If
  loc_F9DDEC: If (Me.RecordCount > 0) Then
  loc_F9DE04:   var_8C = "EDIT"
  loc_F9DE12:   Call Proc_289_59_FD1CA4(Proc_5_1_100EC1C(var_8C, Me))
  loc_F9DE2A:   Set var_90 = Me.Txt
  loc_F9DE30:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_F9DE38:   var_98.Enabled = False
  loc_F9DE51:   Set var_90 = Me.Txt
  loc_F9DE57:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_98)
  loc_F9DE5F:   var_98.Enabled = False
  loc_F9DE76:   Set var_90 = Me.Txt
  loc_F9DE7C:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_98)
  loc_F9DE84:   var_98.SetFocus
  loc_F9DE93: Else
  loc_F9DEB4:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F9DEC4: End If
  loc_F9DED1: Me.LblUser.Caption = vbNullString
  loc_F9DEE6: Me.LblLDt.Caption = vbNullString
  loc_F9DEEE: Exit Sub
  loc_F9DEEF: ' Referenced from: F9DDC0
  loc_F9DEF7: Set var_90 = Err()
  loc_F9DEFD: Call 0.Method_arg_2C (var_8C)
  loc_F9DF1E: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F9DF31: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15FB0
  'Data Table: 4F942C
  loc_E15FA5: Me.Global.Unload Me
  loc_E15FAD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F30688
  'Data Table: 4F942C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  loc_F30580: On Error Goto loc_F30680
  loc_F3059A: If (Me.RecordCount <= 0) Then
  loc_F305B8:   var_A8 = "No Records To Search."
  loc_F305BE:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F305CE:   Exit Sub
  loc_F305CF: End If
  loc_F305D9: If (CDbl(MemVar_1F950B8) = CDbl("1")) Then
  loc_F305E3:   var_10C = "Select DocID as SearchCode,V_No As VNo,V_Type As VType,cast(V_Date as Varchar(11)) as VDate,Convert(Varchar(5),L.U_EntDt,108) As VTime,S.Name As Agnst_Ac,cast(AmtDr as varchar) As Amount,L.Narration As Remarks From Ledger L Left Join SubGroup S On S.SubCode=L.SubCode where V_PREFIX='" & MemVar_1F9512C
  loc_F305F8:   MemVar_1F950E4 = var_10C & "' And V_Type In ('MCRV','MBRV') And AmtDr<>0 And (L.LOGSITE_CODE='" & MemVar_1F95078 & "' or L.LOGSITE_CODE='HO') Order by V_No,V_Type"
  loc_F30608: Else
  loc_F3060F:   var_10C = "Select DocID as SearchCode,V_No As VNo,V_Type As VType,cast(V_Date as Varchar(11)) as VDate,Convert(Varchar(5),L.U_EntDt,108) As VTime,S.Name As Agnst_Ac,cast(AmtDr as varchar) As Amount,L.Narration As Remarks From Ledger L Left Join SubGroup S On S.SubCode=L.SubCode where V_Type In ('MCRV','MBRV') And AmtDr<>0 And (L.LOGSITE_CODE='" & MemVar_1F95078
  loc_F30624:   Proc_6_7_F26918(var_A8, MemVar_1F950EC)
  loc_F30630:   var_B8 = " Order by V_No,V_Type"
  loc_F3063A:   MemVar_1F950E4 = CStr(CVar(var_10C & "' or L.LOGSITE_CODE='HO') and v_date=") & var_A8 & var_B8)
  loc_F3064C: End If
  loc_F30655: Proc_6_126_F1C850("900,600,1000,500,3500,1200,3500,7000", MemVar_1F950E4)
  loc_F30663: MemVar_1F95120 = Me
  loc_F3067A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F3067F: Exit Sub
  loc_F30680: ' Referenced from: F30580
  loc_F30680: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F30685: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2F4C8
  'Data Table: 4F942C
  loc_E2F4B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F4C0: Call Proc_289_58_1486A54(global_68)
  loc_E2F4C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2F648
  'Data Table: 4F942C
  loc_E2F638: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F640: Call Proc_289_58_1486A54(global_68)
  loc_E2F645: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2FE88
  'Data Table: 4F942C
  loc_E2FE78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2FE80: Call Proc_289_58_1486A54(global_68)
  loc_E2FE85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E30188
  'Data Table: 4F942C
  loc_E30178: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30180: Call Proc_289_58_1486A54(global_68)
  loc_E30185: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10321A4
  'Data Table: 4F942C
  Dim var_9C As Label
  Dim var_A4 As String
  Dim var_B4 As TextBox
  Dim var_C0 As String
  Dim unk_4F9442 As Connection15
  Dim var_88 As Recordset15
  Dim var_D4 As Variant
  Dim var_A0 As String
  Dim var_13E As Integer
  Dim var_E4 As Variant
  loc_1031F90: On Error Goto loc_103215A
  loc_1031FB0: var_A0 = Me.LblVPrefix.Caption
  loc_1031FB9: var_A4 = "SELECT VOUCHER_TYPE.DESCRIPTION,NAME,LEDGER.V_Type,LEDGER.V_No,LEDGER.v_Prefix,LEDGER.V_Date,LEDGER.V_SNo,LEDGER.AmtCr,LEDGER.AmtDr,LEDGER.Chq_No,LEDGER.Chq_Date,LEDGER.Narration,LEDGERM.Narration AS NARRMAIN,LEDGER.U_Name As UserName,LEDGERM.DocId,LEDGERM.v_Prefix,LTDS.TDSAMT,LTDS.TDS,LTDS.ONAMT FROM (((LEDGER LEFT JOIN LEDGERM ON LEDGERM.DOCID=LEDGER.DOCID)LEFT JOIN SUBGROUP ON  SUBGROUP.SUBCODE = LEDGER.SUBCODE ) INNER JOIN VOUCHER_TYPE ON (VOUCHER_TYPE.V_tYPE=LEDGER.V_tYPE AND VOUCHER_TYPE.LOGSITE_CODE=LEDGER.LOGSITE_CODE)) LEFT JOIN LEDGERTDS LTDS ON (LTDS.TDSDRCODE=LEDGER.SUBCODE AND LEDGER.DOCID=LTDS.DOCID) WHERE LEDGER.V_PREFIX='" & var_A0
  loc_1031FE2: Set var_B0 = Me.Txt
  loc_1031FE8: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_B4, var_B8, var_A4 & "' And LEDGER.V_TYPE='" & global_60 & "' AND LEDGER.V_NO=")
  loc_1031FF0: var_E4 = var_B4.Text
  loc_1031FF9: var_C0 = -1 & var_B8
  loc_1032009: unk_4F9442.Execute var_C0 & " order by ledger.v_no,LEDGER.V_SNo", var_E8, 
  loc_1032014: Set var_88 = var_E8
  loc_103204C: If (var_88.RecordCount = 0) Then
  loc_1032055:   Call 0.Method_arg_50 (var_A0)
  loc_1032076:   MsgBox("No record found to Print", &H40, CVar(var_A0), var_11C, var_13C)
  loc_1032086:   Exit Sub
  loc_1032087: End If
  loc_1032096: var_A4 = MemVar_1F950B4 & "\MemPaymentRect.TTX"
  loc_103209D: Set var_9C = var_88 
  loc_10320A9: var_13E = CreateFieldDefFile(var_9C, var_A4)
  loc_10320B9: var_D4 = CVar(var_13E) 'Integer
  loc_10320BC: var_98 = var_D4 'Variant
  loc_10320D8: var_A0 = MemVar_1F950B4 & "\MemPaymentRect.RPT"
  loc_10320E1: Call 0.Method_arg_1C (var_A0, var_D4, var_9C)
  loc_103210F: Call 0.Method_arg_64 (var_9C, CVar(var_9C), var_10C)
  loc_1032117: Call 0.Method_arg_2C (var_12C, var_13E)
  loc_1032125: Call 0.Method_arg_150 (&HFF)
  loc_1032130: Call 0.Method_arg_50 (var_A0)
  loc_1032149: Proc_183_10_1499E94(var_9C, 0)
  loc_1032156: Set var_88 = Nothing
  loc_1032159: Exit Sub
  loc_103215A: ' Referenced from: 1031F90
  loc_1032162: Set var_9C = Err()
  loc_1032168: Call 0.Method_arg_2C (var_A0, var_A0)
  loc_1032173: Call 0.Method_arg_50 (var_A4)
  loc_103218F: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_11C, var_13C)
  loc_10321A2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E27680
  'Data Table: 4F942C
  loc_E27666: Me.Recordset15.Requery -1
  loc_E27679: Me.Recordset15.Requery -1
  loc_E2767E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14B50E0
  'Data Table: 4F942C
  Dim var_A8 As Variant
  Dim var_E0 As Variant
  Dim var_C0 As String
  Dim var_A0 As Double
  Dim var_130 As Double
  Dim var_86 As Integer
  Dim unk_4F9444 As Connection15
  Dim var_B0 As String
  Dim var_F0 As Integer
  Dim var_A4 As Recordset15
  Dim var_AC As Variant
  Dim MemVar_1F950EC As Double
  Dim var_140 As String
  Dim var_144 As Variant
  Dim var_148 As Variant
  Dim var_96 As Integer
  Dim var_1BC As Double
  Dim var_150 As TextBox
  Dim var_158 As TextBox
  Dim var_160 As TextBox
  Dim var_1C4 As Double
  Dim var_16C As TextBox
  Dim var_1D0 As TextBox
  Dim var_170 As String
  Dim var_100 As Variant
  Dim var_D0 As Variant
  Dim var_120 As Variant
  Dim var_1E4 As Variant
  Dim var_8C As Recordset15
  Dim var_174 As String
  Dim var_17C As String
  Dim var_180 As String
  Dim var_194 As String
  Dim Me As Recordset15
  loc_14B4458: On Error Goto loc_14B50C5
  loc_14B4466: Set var_A4 = Me.Txt
  loc_14B446C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_14B4495: If (Proc_6_27_EA61EC(var_A8, "Date") = 0) Then
  loc_14B4498:   Exit Sub
  loc_14B4499: End If
  loc_14B44A4: Set var_A4 = Me.Txt
  loc_14B44AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_14B44D3: If (Proc_6_27_EA61EC(var_A8, "Vr No") = 0) Then
  loc_14B44D6:   Exit Sub
  loc_14B44D7: End If
  loc_14B44E2: Set var_A4 = Me.Txt
  loc_14B44E8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A8)
  loc_14B4511: If (Proc_6_27_EA61EC(var_A8, "Against A/c") = 0) Then
  loc_14B4514:   Exit Sub
  loc_14B4515: End If
  loc_14B4523: Set var_A4 = Me.Txt
  loc_14B4529: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_14B4531: var_B0 = var_A8.Text
  loc_14B454D: If (CDbl(Val(var_B0)) = CDbl(0)) Then
  loc_14B4556:   Call 0.Method_arg_50 (var_B0)
  loc_14B4577:   MsgBox("Voucher No. Should not be Zero", &H10, CVar(var_B0), var_100, var_120)
  loc_14B458E:   Call Txt_GotFocus()
  loc_14B4593:   Exit Sub
  loc_14B4594: End If
  loc_14B45A2: Set var_A4 = Me.Txt
  loc_14B45A8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0)
  loc_14B45B0: CInt(1) = var_A8.Text
  loc_14B45CC: If (CDbl(Val(var_B0)) = CDbl(0)) Then
  loc_14B45D5:   Call 0.Method_arg_50 (var_B0)
  loc_14B45F6:   MsgBox("Amount Should not be Zero", &H10, CVar(var_B0), var_100, var_120)
  loc_14B460D:   Call Txt_GotFocus()
  loc_14B4612:   Exit Sub
  loc_14B4613: End If
  loc_14B4621: Set var_A4 = Me.Txt
  loc_14B4627: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0)
  loc_14B462F: CInt(3) = var_A8.Text
  loc_14B463C: var_A0 = Val(var_B0)
  loc_14B4655: Set var_A4 = Me.FrDebit
  loc_14B465B: Call 0.Method_TopCtrl1_UnknownEvent_16C (var_122, var_98, 0)
  loc_14B4669: For var_126 = var_A8 To (var_122 - 1): var_A0 = var_126 'Integer
  loc_14B467C:   Set var_A4 = Me.TxtAmtCr
  loc_14B4682:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_A8)
  loc_14B468A:   var_B0 = var_A8.Text
  loc_14B46A1:   var_A0 = (var_A0 - Val(var_B0))
  loc_14B46B1: Next var_126 'Integer
  loc_14B46BD: If (var_A0 <> CDbl(0)) Then
  loc_14B46C6:   Call 0.Method_arg_50 (var_B0)
  loc_14B46D4:   var_E0 = CVar(var_B0) 'String
  loc_14B46E1:   var_D0 = "Debit Credit Amount mismatched."
  loc_14B46E7:   MsgBox(var_D0, &H10, var_E0, var_100, var_120)
  loc_14B46F7:   Exit Sub
  loc_14B46F8: End If
  loc_14B4704: Set var_A4 = Me.FrDebit
  loc_14B470A: Call 0.Method_TopCtrl1_UnknownEvent_16C (var_122, var_98)
  loc_14B4718: For var_134 =  To (var_122 - 1): 0 = var_134 'Integer
  loc_14B472B:   Set var_A4 = Me.TxtAmtCr
  loc_14B4731:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_A8)
  loc_14B4755:   If (CDbl(Val(var_A8.Text)) <> CDbl(0)) Then
  loc_14B4762:     Set var_A4 = Me.TxtCrAc
  loc_14B4768:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98)
  loc_14B4791:     If (Proc_6_27_EA61EC(var_A8, "Credit A/c") = 0) Then
  loc_14B4794:       Exit Sub
  loc_14B4795:     End If
  loc_14B4795:   End If
  loc_14B4798: Next var_134 'Integer
  loc_14B47A0: Call Proc_289_56_F8F35C(var_122)
  loc_14B47AB: If (var_122 = 0) Then
  loc_14B47AE:   Exit Sub
  loc_14B47AF: End If
  loc_14B47BD: unk_4F9444.BeginTrans var_138
  loc_14B47C6: Set var_A4 = Me.TopCtrl1
  loc_14B47CC: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_14B47E5: If (CStr() = "Add") Then
  loc_14B47EE:   var_F0 = 0
  loc_14B480B:   var_B0 = "Select NCUR from enviro where LOGsite_code='" & MemVar_1F95078
  loc_14B481B:   unk_4F9444.Execute var_B0 & "'", var_D0, -1
  loc_14B4823:   var_A4 = var_A4.Fields
  loc_14B482B:   var_F0 = var_A8.Item(var_A8)
  loc_14B4833:   var_AC = var_AC.Value
  loc_14B483D:   MemVar_1F950EC = CDate(var_E0)
  loc_14B4884:   Set var_A4 = Me.Txt
  loc_14B488A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Select Count(*) From PaymentReceive Where DocID='", var_D0, -1, var_AC)
  loc_14B4892:   var_144 = var_A8.Text
  loc_14B48AB:   unk_4F9444.Execute 0 & var_B0 & "'", var_148, var_E0
  loc_14B48B3:   MemVar_1F950EC = var_AC.Fields
  loc_14B48BB:    = var_144.Item(var_E0)
  loc_14B48C3:    = var_148.Value
  loc_14B48F0:   If (var_E0 > 0) Then
  loc_14B48F9:     Call 0.Method_arg_50 (var_B0)
  loc_14B4907:     var_E0 = CVar(var_B0) 'String
  loc_14B4914:     var_D0 = "Duplicate Vr. No."
  loc_14B491A:     MsgBox(var_D0, &H40, var_E0, var_100, var_120)
  loc_14B4930:     Call Proc_289_62_115E448(MemVar_1F95044)
  loc_14B4940:     If (var_B0 = vbNullString) Then
  loc_14B4943:       Exit Sub
  loc_14B4944:     End If
  loc_14B494A:     Call Proc_289_62_115E448(MemVar_1F95044, var_B0)
  loc_14B495D:     Set var_A4 = Me.Txt
  loc_14B4963:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_14B496B:     var_A8.Text = var_B0
  loc_14B497A:     Exit Sub
  loc_14B497B:   End If
  loc_14B497B: End If
  loc_14B499E: Set var_A4 = Me.Txt
  loc_14B49A4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Delete From lEDGER Where DocID='", var_D0)
  loc_14B49AC: -1 = var_A8.Text
  loc_14B49C5: unk_4F9444.Execute var_AC & var_B0 & "'", 0, var_B0
  loc_14B49E5: var_96 = (var_96 + 1)
  loc_14B49F6: Set var_A4 = Me.Txt
  loc_14B49FC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_14B4A04: var_170 = var_A8.Text
  loc_14B4A17: Set var_AC = Me.Txt
  loc_14B4A1D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_144)
  loc_14B4A25: var_B0 = var_144.Text
  loc_14B4A32: var_1BC = Val(var_B0)
  loc_14B4A55: Set var_14C = Me.Txt
  loc_14B4A5B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_150, var_17C)
  loc_14B4A76: Set var_154 = Me.Txt
  loc_14B4A7C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_158)
  loc_14B4A97: Set var_15C = Me.Txt
  loc_14B4A9D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_160)
  loc_14B4AB2: var_1C4 = Val(var_160.Text)
  loc_14B4AC3: Set var_168 = Me.Txt
  loc_14B4AC9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_16C, var_198)
  loc_14B4AE3: var_1B4 = 0
  loc_14B4AEE: var_1B0 = 0
  loc_14B4AF9: var_1AC = 0
  loc_14B4B02: var_1A8 = "A"
  loc_14B4B1E: var_194 = vbNullString
  loc_14B4B66: Proc_6_141_12E23F4(MemVar_1F95044, var_170, 0, global_60, CLng(var_150.Text), Me.LblVPrefix.Caption, MemVar_1F95070, CDate(var_17C))
  loc_14B4BB2: Set var_A4 = Me.FrDebit
  loc_14B4BB8: Call 0.Method_TopCtrl1_UnknownEvent_16C (var_122, var_98, 0, var_158.Tag, CDbl(0), var_16C.Text)
  loc_14B4BC6: For var_1C8 = var_198 To (var_122 - 1): var_194 = var_1C8 'Integer
  loc_14B4BD9:   Set var_A4 = Me.TxtAmtCr
  loc_14B4BDF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_A8, var_B0, var_198)
  loc_14B4BE7:   MemVar_1F950C8 = var_A8.Text
  loc_14B4C03:   If (CDbl(Val(var_B0)) <> CDbl(0)) Then
  loc_14B4C0C:     var_96 = (var_96 + 1)
  loc_14B4C1D:     Set var_A4 = Me.Txt
  loc_14B4C23:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_174)
  loc_14B4C3E:     Set var_AC = Me.Txt
  loc_14B4C44:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_144, var_B0)
  loc_14B4C4C:     CDate(Now) = var_144.Text
  loc_14B4C59:     var_1BC = Val(var_B0)
  loc_14B4C63:     Set var_148 = Me.LblVPrefix
  loc_14B4C7C:     Set var_14C = Me.Txt
  loc_14B4C82:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_150, var_180)
  loc_14B4C9C:     Set var_154 = Me.TxtCrAc
  loc_14B4CA2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_158)
  loc_14B4CAA:     var_140 = var_158.Tag
  loc_14B4CBC:     Set var_15C = Me.TxtAmtCr
  loc_14B4CC2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_160)
  loc_14B4CD7:     var_1C4 = Val(var_160.Text)
  loc_14B4CE8:     Set var_168 = Me.Txt
  loc_14B4CEE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_16C, var_170)
  loc_14B4CF6:     var_1C4 = var_16C.Tag
  loc_14B4D08:     Set var_1CC = Me.TxtRem
  loc_14B4D0E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_1D0)
  loc_14B4D16:     var_19C = var_1D0.Text
  loc_14B4D1E:     var_D0 = Now
  loc_14B4D28:     var_1D4 = 0
  loc_14B4D33:     var_1B4 = 0
  loc_14B4D3E:     var_1B0 = 0
  loc_14B4D47:     var_1AC = "A"
  loc_14B4DA9:     Proc_6_141_12E23F4(MemVar_1F95044, var_174, var_A8.Text, global_60, CLng(var_150.Text), var_148.Caption, MemVar_1F95070, CDate(var_180))
  loc_14B4DED:   End If
  loc_14B4DF0: Next var_1C8 'Integer
  loc_14B4DF9: Set var_A4 = Me.TopCtrl1
  loc_14B4DFF: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14B4E18: If (CStr() = "Add") Then
  loc_14B4E2F:   var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_14B4E55:   var_100 = CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_14B4E66:   Set var_A4 = Me.Txt
  loc_14B4E6C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8, var_174, var_100)
  loc_14B4E74:   var_1F4 = var_A8.Text
  loc_14B4E82:   Proc_6_7_F26918(var_E0, CVar(var_174))
  loc_14B4E8A:   var_120 = -1 & var_E0 
  loc_14B4E93:   var_1E4 = var_120 & " Order By VP.Date_From DESC" 
  loc_14B4EA1:   unk_4F9444.Execute CStr(var_1E4), var_AC, 
  loc_14B4EAC:   Set var_8C = var_AC
  loc_14B4EEA:   If (var_8C.RecordCount > 0) Then
  loc_14B4EFB:     Set var_A4 = Me.Txt
  loc_14B4F01:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_14B4F16:     var_130 = Val(var_A8.Text)
  loc_14B4F1C:     var_C0 = "Date_From"
  loc_14B4F3F:     Proc_6_7_F26918(var_E0, CVar(var_8C.Fields.Item(var_C0)))
  loc_14B4F72:     var_174 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_130) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_14B4FA5:     unk_4F9444.Execute CStr(CVar(var_174 & MemVar_1F95078 & "') and V_Type='" & global_60 & "' and Date_From=") & var_E0), var_1E4, -1
  loc_14B4FD9:   End If
  loc_14B4FD9: End If
  loc_14B4FDF: unk_4F9444.CommitTrans
  loc_14B4FE4: Call Proc_289_60_EF3C08(var_148)
  loc_14B4FF7: Set var_A4 = Me.Txt
  loc_14B4FFD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_14B5019: var_86 = 0
  loc_14B5027: Me.Requery -1
  loc_14B5051: Me.Find "SearchCode ='" & var_A8.Text & "'", 0, 1
  loc_14B5061: Set var_A4 = Me.TopCtrl1
  loc_14B5067: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_14B5080: If (CStr(var_86) = "Add") Then
  loc_14B5083:   Call TopCtrl1_UnknownEvent_A()
  loc_14B5088:   Exit Sub
  loc_14B5089: End If
  loc_14B50AC: Call Proc_289_59_FD1CA4(Proc_5_1_100EC1C("INI", Me), global_68)
  loc_14B50B7: Call Proc_289_58_1486A54(var_130)
  loc_14B50C1: Set var_8C = Nothing
  loc_14B50C4: Exit Sub
  loc_14B50C5: ' Referenced from: 14B4458
  loc_14B50CB: If (var_86 = &HFF) Then
  loc_14B50D4:   unk_4F9444.RollbackTrans
  loc_14B50D9: End If
  loc_14B50D9: Proc_6_60_E63754()
  loc_14B50DE: Exit Sub
End Sub

Private Sub Form_Load() '12A9BD8
  'Data Table: 4F942C
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_C4 As String
  Dim Me As Recordset15
  Dim var_114 As TextBox
  Dim var_C0 As Variant
  Dim var_110 As DataGrid
  Dim var_A8 As Label
  loc_12A95C4: On Error Goto loc_12A9BCF
  loc_12A95D1: Set var_A8 = Me.TopCtrl1
  loc_12A95D7: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_12A95E5: Call 0.Method_arg_50 (var_AC)
  loc_12A95F5: Set var_A8 = Me.TopCtrl1
  loc_12A95FB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_12A9612: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_12A9623: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_12A9634: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_12A9645: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_12A9656: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_12A9667: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_12A9678: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_12A9689: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_12A969A: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_12A96AB: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_12A96C5: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_12A96D3: Set var_A8 = MemVar_1F95044
  loc_12A96E2: Call 0.Method_Form_Load8 (var_A8)
  loc_12A96F8: Me.TopCtrl1.Clone
  loc_12A9712: Call 0.Method_Form_LoadC (var_A8, -1)
  loc_12A972C: Me.Recordset20.Clone
  loc_12A9737: Set var_C0 = var_A8
  loc_12A9746: Call 0.Method_arg_50 (var_C0, -1)
  loc_12A975C: Set global_68 = New 
  loc_12A976E: Me.Recordset15.CursorLocation = 3
  loc_12A977D: If (CDbl(MemVar_1F950B8) = CDbl("1")) Then
  loc_12A97A5:   var_C4 = "Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From Ledger where V_PREFIX='" & MemVar_1F9512C & "' And V_Type In ('MCRV','MBRV') And LOGSITE_CODE='"
  loc_12A97B3:   var_BC = CVar(var_C4 & MemVar_1F95078 & "' Order by V_Type,V_No") 'String
  loc_12A97BD:   Me.Open var_BC, CVar(MemVar_1F95044), 2
  loc_12A97D1: Else
  loc_12A97DC:   Proc_6_7_F26918(var_BC, MemVar_1F950EC, 3)
  loc_12A97FF:   var_AC = "Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From Ledger where V_Type In ('MCRV','MBRV') And LOGSITE_CODE='" & MemVar_1F95078
  loc_12A9820:   Me.Open CVar(var_AC & "' AND V_date=") & var_BC & " Order by V_Type,V_No", CVar(MemVar_1F95044), 2
  loc_12A9833: End If
  loc_12A9852: Me.Recordset15.CursorLocation = 3
  loc_12A987C: var_BC = CVar("Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_12A9889: Me.Recordset15.Open var_BC, CVar(MemVar_1F95044), 2
  loc_12A98A0: CVarUnk
  loc_12A98A5: VerifyVarObj
  loc_12A98B1: LateIdStAd
  loc_12A98CD: Set var_110 = Me.Txt
  loc_12A98D3: Call 0.Method_Form_Load0 (CInt(5), var_114, var_118, Me.DGAgAc, New, 3)
  loc_12A98DB: -1 = var_114.Height
  loc_12A98EE: Set var_A8 = Me.Txt
  loc_12A98F4: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_10C, 3)
  loc_12A98FC: -1 = var_C0.Top
  loc_12A9908: var_94 = CVar((var_10C + var_118)) 'Single
  loc_12A9917: Me.DGAgAc.Top = CVar(MemVar_1F95044)
  loc_12A9937: Set var_A8 = Me.Txt
  loc_12A993D: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_10C)
  loc_12A9945: -1 = var_C0.Left
  loc_12A9956: Set var_110 = Me.DGAgAc
  loc_12A995C: var_110.Left = CVar(var_10C)
  loc_12A9989: Me.var_110.CursorLocation = 3
  loc_12A99B3: var_BC = CVar("Select SubCode as SearchCode,Name,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_12A99C0: Me.Recordset15.Open var_BC, CVar(MemVar_1F95044), 2
  loc_12A99D7: CVarUnk
  loc_12A99DC: VerifyVarObj
  loc_12A99E2: Set var_A8 = Me.DGCrAc
  loc_12A99E8: LateIdStAd
  loc_12A9A19: Call Proc_289_59_FD1CA4(Proc_5_1_100EC1C("INI", Me, global_68, Me, New), 3, -1)
  loc_12A9A33: Me.LblUser.Left = CDbl(500)
  loc_12A9A4A: Me.LblUser.Top = CDbl(7800)
  loc_12A9A61: Me.LblLDt.Top = CDbl(8160)
  loc_12A9A72: Set var_A8 = Me.LblLDt
  loc_12A9A78: var_A8.Left = CDbl(500)
  loc_12A9A87: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), var_A8)
  loc_12A9A99: Set var_A8 = Me.FrDebit
  loc_12A9A9F: Call 0.Method_Form_Load0 (0, var_C0)
  loc_12A9AA7: var_C0.BackColor = CLng(MemVar_1F951B4)
  loc_12A9AC0: Set var_A8 = Me.FrDebit
  loc_12A9AC6: Call 0.Method_Form_Load0 (1, var_C0)
  loc_12A9ACE: var_C0.BackColor = CLng(MemVar_1F951B4)
  loc_12A9AE7: Set var_A8 = Me.FrDebit
  loc_12A9AED: Call 0.Method_Form_Load0 (2, var_C0)
  loc_12A9AF5: var_C0.BackColor = CLng(MemVar_1F951B4)
  loc_12A9B0E: Set var_A8 = Me.FrDebit
  loc_12A9B14: Call 0.Method_Form_Load0 (3, var_C0)
  loc_12A9B1C: var_C0.BackColor = CLng(MemVar_1F951B4)
  loc_12A9B35: Set var_A8 = Me.FrDebit
  loc_12A9B3B: Call 0.Method_Form_Load0 (4, var_C0)
  loc_12A9B43: var_C0.BackColor = CLng(MemVar_1F951B4)
  loc_12A9B5C: Set var_A8 = Me.FrDebit
  loc_12A9B62: Call 0.Method_Form_Load0 (5, var_C0)
  loc_12A9B6A: var_C0.BackColor = CLng(MemVar_1F951B4)
  loc_12A9B83: Set var_A8 = Me.FrDebit
  loc_12A9B89: Call 0.Method_Form_Load0 (6, var_C0)
  loc_12A9B91: var_C0.BackColor = CLng(MemVar_1F951B4)
  loc_12A9BB0: Call 0.Method_Form_Load0 (7, var_C0)
  loc_12A9BB8: var_C0.BackColor = CLng(MemVar_1F951B4)
  loc_12A9BC4: Call Proc_289_57_10516F8(Me.FrDebit)
  loc_12A9BC9: Call Proc_289_58_1486A54()
  loc_12A9BCE: Exit Sub
  loc_12A9BCF: ' Referenced from: 12A95C4
  loc_12A9BCF: Proc_6_60_E63754()
  loc_12A9BD4: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E42474
  'Data Table: 4F942C
  loc_E4244F: Set global_68 = Nothing
  loc_E4245B: MasterFormExit = 0
  loc_E42469: Set global_100 = Nothing
  loc_E42470: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24DEC
  'Data Table: 4F942C
  loc_E24DD1: If (MasterFormExit = &HFF) Then
  loc_E24DE1:   Me.Global.Unload Me
  loc_E24DE9: End If
  loc_E24DE9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2BF88
  'Data Table: 4F942C
  loc_E2BF5C: On Error Goto loc_E2BF80
  loc_E2BF77: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2BF7F: Exit Sub
  loc_E2BF80: ' Referenced from: E2BF5C
  loc_E2BF80: Proc_6_60_E63754(Shift)
  loc_E2BF85: Exit Sub
End Sub

Private Sub DGAgAc_UnknownEvent_9 'EECF28
  'Data Table: 4F942C
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EECE71: Set var_A8 = Me.DGAgAc
  loc_EECE77: var_A8.Visible = False
  loc_EECE99: If (Me.var_A8.RecordCount > 0) Then
  loc_EECEBC:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_EECEDB:   Set var_B4 = Me.Txt
  loc_EECEE1:   Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(5), var_B8)
  loc_EECEE9:   var_B8.Text = CStr(var_B0.Value)
  loc_EECEFF: End If
  loc_EECF0A: Set var_A8 = Me.Txt
  loc_EECF10: Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(5))
  loc_EECF18: var_B0.SetFocus
  loc_EECF24: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '111A18C
  'Data Table: 4F942C
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_B4 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  loc_1119E5A: Set var_88 = Me.Txt
  loc_1119E60: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1119E6E: Proc_6_74_E23240(var_8C)
  loc_1119E7A: Call Proc_289_60_EF3C08(var_8C)
  loc_1119E82: var_92 = Index
  loc_1119E8D: If Not (var_92 = CInt(2)) Then
  loc_1119E98:   If (var_92 = CInt(3)) Then
  loc_1119E9B:   End If
  loc_1119EA3:   var_98 = "{Home}+{End}"
  loc_1119EA9:   Proc_303_0_FBACC8(var_98, 0)
  loc_1119EB4: Else
  loc_1119EBC:   If (var_92 = CInt(5)) Then
  loc_1119ED9:     If (Me.Recordset15.RecordCount > 0) Then
  loc_1119EE7:       Set var_8C = Me.FGPoint
  loc_1119F03:       Proc_6_137_1192FDC(Me.DGAgAc, global_76, Index)
  loc_1119F11:     End If
  loc_1119F68:     Set var_88 = Me.Txt
  loc_1119F6E:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1119F76:     ((global_76.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_1119F8E:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_1119F9E:       Set var_88 = Me.Txt
  loc_1119FA4:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1119FAC:       var_8C.Tag = vbNullString
  loc_1119FB8:       Exit Sub
  loc_1119FB9:     End If
  loc_1119FC6:     Set var_88 = Me.Txt
  loc_1119FCC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1119FD4:     var_98 = var_8C.Text
  loc_1119FE6:     var_B4 = "Name"
  loc_111A024:     If CBool(CVar(var_98) <> Me.Recordset15.Fields.Item(var_B4).Value) Then
  loc_111A030:       Me.Recordset15.MoveFirst
  loc_111A053:       Set var_88 = Me.Txt
  loc_111A059:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name='")
  loc_111A061:       0 = var_8C.Text
  loc_111A07D:       Me.Recordset15.Find 1 & var_98 & "'", var_B4, var_92
  loc_111A092:     End If
  loc_111A095:   Else
  loc_111A09D:     If (var_92 = CInt(6)) Then
  loc_111A0AD:       ReDim var_F4(0 To 1)
  loc_111A0C4:       var_F4(0) = "Cash Rect."
  loc_111A0D3:       var_F4(1) = "Bank Rect."
  loc_111A0EA:       global_80 = Array(var_F4)
  loc_111A0F5:       Set var_B8 = Me.ListView
  loc_111A110:       Set var_8C = Me.Txt
  loc_111A12A:       Set global_96 = Proc_6_66_F0048C(var_B8, var_8C, Index)
  loc_111A148:       Set var_88 = Me.Txt
  loc_111A14E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_111A156:       global_80 = var_8C.Text
  loc_111A168:       Set var_90 = Me.Txt
  loc_111A16E:       Call 0.Method_Txt_GotFocus0 (Index, var_B8, var_98)
  loc_111A176:       var_B8.Tag = 2
  loc_111A189:     End If
  loc_111A189:   End If
  loc_111A189: End If
  loc_111A189: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11BEB68
  'Data Table: 4F942C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_98 As Frame
  loc_11BE743: var_86 = Shift
  loc_11BE750: If (CLng(Shift) = &H1B) Then
  loc_11BE753:   Call Proc_289_60_EF3C08(var_86)
  loc_11BE758:   Exit Sub
  loc_11BE759: End If
  loc_11BE75C: var_88 = KeyCode
  loc_11BE767: If (var_88 = CInt(3)) Then
  loc_11BE777:   Set var_8C = Me.Txt
  loc_11BE77D:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11BE785:   var_94 = var_90.Text
  loc_11BE798:   Set var_98 = Me.Txt
  loc_11BE79E:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11BE7A6:   var_9C.SelLength = Len(var_94)
  loc_11BE7BC: Else
  loc_11BE7C4:   If (var_88 = CInt(5)) Then
  loc_11BE7D2:     Set var_AC = Me.Txt
  loc_11BE7E4:     Set var_9C = Me.FGPoint
  loc_11BE7EF:     Set var_98 = Nothing
  loc_11BE821:     Proc_6_69_134A630(Me.DGAgAc, var_AC, KeyCode, global_76, Shift, 0)
  loc_11BE843:     var_B4 = Me.FGPoint.RecordCount
  loc_11BE893:     If ((var_B4 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11BE89A:       Set var_98 = Me.DGAgAc
  loc_11BE8A1:       Set var_90 = Me.FGPoint
  loc_11BE8BD:       Proc_6_138_106E830(var_98, global_76, KeyCode, var_90, 1)
  loc_11BE8CB:     End If
  loc_11BE8CE:   Else
  loc_11BE8D6:     If (var_88 = CInt(6)) Then
  loc_11BE8FB:       Set var_8C = Me.Txt
  loc_11BE901:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, var_98)
  loc_11BE909:       var_9C = var_90.Left
  loc_11BE91B:       Set var_98 = Me.Txt
  loc_11BE921:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_11BE929:       0 = var_9C.Top
  loc_11BE93B:       Set var_A8 = Me.Txt
  loc_11BE941:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_11BE949:       var_BC = var_AC.Height
  loc_11BE95B:       Set var_B0 = Me.Txt
  loc_11BE961:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_11BE969:       var_C4 = var_C0.Width
  loc_11BE9B1:       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11BE9D8:     Else
  loc_11BE9E0:       If (var_88 = CInt(4)) Then
  loc_11BE9ED:         If (CLng(Shift) = &H2D) Then
  loc_11BE9FD:           Set var_8C = Me.Txt
  loc_11BEA03:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E4, CInt(var_B4))
  loc_11BEA0B:           CInt((var_B8 + var_BC)) = var_90.Text
  loc_11BEA16:           Call Proc_289_63_EE5548(var_94, var_E4, CInt(var_C4))
  loc_11BEA2C:           Set var_98 = Me.Txt
  loc_11BEA32:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11BEA3A:           var_9C.Text = 680 & var_94
  loc_11BEA60:           Set var_8C = Me.Txt
  loc_11BEA66:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11BEA81:           Set var_98 = Me.Txt
  loc_11BEA87:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11BEA8F:           var_9C.SelStart = Len(var_90.Text)
  loc_11BEAA2:           Exit Sub
  loc_11BEAA3:         End If
  loc_11BEAA3:       End If
  loc_11BEAA3:     End If
  loc_11BEAA3:   End If
  loc_11BEAA3: End If
  loc_11BEAF9: If (((CBool(Me.DGCrAc.Visible) = 0) And (CBool(Me.DGAgAc.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_11BEB11:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11BEB1A:     Proc_6_75_E5335C(Shift, arg_14)
  loc_11BEB1F:   End If
  loc_11BEB34:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11BEB3D:     Proc_6_76_E533C8(Shift, arg_14)
  loc_11BEB42:   End If
  loc_11BEB57:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11BEB60:     Proc_6_75_E5335C(Shift, arg_14)
  loc_11BEB65:   End If
  loc_11BEB65: End If
  loc_11BEB65: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F76234
  'Data Table: 4F942C
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_8C As DataGrid
  loc_F760F3: Proc_6_58_E06050(arg_10)
  loc_F760FB: var_86 = KeyAscii
  loc_F76106: If (var_86 = CInt(1)) Then
  loc_F76113:   Set var_8C = Me.Txt
  loc_F76119:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F76134:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_F76143: Else
  loc_F7614B:   If (var_86 = CInt(3)) Then
  loc_F76154:     If (arg_10 = &H2D) Then
  loc_F76159:       arg_10 = 0
  loc_F7615C:     End If
  loc_F76166:     Set var_8C = Me.Txt
  loc_F7616C:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, arg_10)
  loc_F76187:     Proc_6_42_129B55C(var_90, arg_10, 7)
  loc_F76196:   Else
  loc_F7619E:     If (var_86 = CInt(5)) Then
  loc_F761BD:       If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_F761EE:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_F76224:         Proc_6_138_106E830(Me.DGAgAc, global_76, KeyAscii, Me.FGPoint)
  loc_F76232:       End If
  loc_F76232:     End If
  loc_F76232:   End If
  loc_F76232: End If
  loc_F76232: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFED0C
  'Data Table: 4F942C
  Dim var_86 As Integer
  loc_DFED07: var_86 = KeyCode
  loc_DFED0A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F824
  'Data Table: 4F942C
  loc_E4F802: Set var_88 = Me.Txt
  loc_E4F808: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F816: Proc_6_73_E23294(var_8C)
  loc_E4F822: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1316BEC
  'Data Table: 4F942C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim unk_4F9444 As Connection15
  Dim var_94 As Recordset15
  Dim var_124 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_8C As Fields15
  loc_1316493: var_86 = Cancel
  loc_131649E: If (var_86 = CInt(1)) Then
  loc_13164AC:   Set var_8C = Me.Txt
  loc_13164B2:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_13164BA:   var_98 = "Vr No"
  loc_13164DB:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_13164E9:     Set var_8C = Me.Txt
  loc_13164EF:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_13164F7:     var_90.SetFocus
  loc_1316505:     arg_10 = &HFF
  loc_1316508:     Exit Sub
  loc_1316509:   End If
  loc_1316517:   Set var_8C = Me.Txt
  loc_131651D:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_1316525:   arg_10 = var_90.Text
  loc_131653D:   If (CDbl(var_98) = CDbl(0)) Then
  loc_1316553:     var_B8 = "Vr. No. Can Not Be 0"
  loc_1316559:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_1316573:     Set var_8C = Me.Txt
  loc_1316579:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1316581:     var_90.SetFocus
  loc_131658F:     arg_10 = &HFF
  loc_1316592:     Exit Sub
  loc_1316593:   End If
  loc_1316597:   Set var_8C = Me.TopCtrl1
  loc_131659D:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_13165A5:   var_98 = CStr(var_86)
  loc_13165B6:   If (var_98 = "Add") Then
  loc_13165BF:     Call Proc_289_62_115E448(MemVar_1F95044)
  loc_13165D2:     Set var_8C = Me.Txt
  loc_13165D8:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_13165E0:     var_90.Text = var_98
  loc_13165EF:   End If
  loc_13165F3:   Set var_8C = Me.TopCtrl1
  loc_13165F9:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_1316601:   var_98 = CStr()
  loc_1316612:   If (var_98 = "Add") Then
  loc_1316642:     Set var_8C = Me.Txt
  loc_1316648:     Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98, "Select Count(*) From ForExTrans Where DocID='", var_B8, -1)
  loc_1316669:     unk_4F9444.Execute var_124 & var_98 & "'", 0, var_128
  loc_1316679:      = var_124.Item()
  loc_1316681:      = var_128.Value
  loc_13166AE:     If (var_90.Text.Fields > 0) Then
  loc_13166B7:       Call 0.Method_arg_50 (var_98)
  loc_13166D8:       MsgBox("Duplicate Vr. No.", &H40, CVar(var_98), var_F8, var_118)
  loc_13166EE:       Call Proc_289_62_115E448(MemVar_1F95044)
  loc_13166FE:       If (var_98 = vbNullString) Then
  loc_131670B:         Set var_8C = Me.Txt
  loc_1316711:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1316719:         var_90.SetFocus
  loc_1316727:         arg_10 = &HFF
  loc_131672A:         Exit Sub
  loc_131672B:       End If
  loc_1316731:       Call Proc_289_62_115E448(MemVar_1F95044, var_98)
  loc_1316744:       Set var_8C = Me.Txt
  loc_131674A:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1316752:       var_90.Text = arg_10
  loc_1316763:       arg_10 = &HFF
  loc_1316766:       Exit Sub
  loc_1316767:     End If
  loc_1316767:   End If
  loc_131676A: Else
  loc_1316772:   If (var_86 = CInt(2)) Then
  loc_1316783:     Set var_8C = Me.Txt
  loc_1316789:     Call 0.Method_Txt_Validate0 (CInt(2), var_90, var_98)
  loc_1316791:     arg_10 = var_90.Text
  loc_13167C1:     If (Len(Trim(CVar(var_98))) = 0) Then
  loc_13167D7:       Set var_8C = Me.Txt
  loc_13167DD:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_13167E5:       var_90.Text = CStr(MemVar_1F950EC)
  loc_13167F7:     Else
  loc_1316801:       Set var_8C = Me.Txt
  loc_1316807:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1316827:       Set var_124 = Me.Txt
  loc_131682D:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1316835:       var_128.Text = Proc_6_33_15125B8(var_90)
  loc_1316848:     End If
  loc_131684B:   Else
  loc_1316853:     If (var_86 = CInt(3)) Then
  loc_1316860:       Set var_8C = Me.Txt
  loc_1316866:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1316892:       var_98 = CStr(Format(CVar(var_90), "0.00"))
  loc_13168A0:       Set var_94 = Me.Txt
  loc_13168A6:       Call 0.Method_Txt_Validate0 (Cancel, var_124, var_98)
  loc_13168AE:       var_124.Text = 1
  loc_13168CB:     Else
  loc_13168D3:       If (var_86 = CInt(5)) Then
  loc_131692D:         Set var_8C = Me.Txt
  loc_1316933:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_131693B:         ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_90.Text
  loc_1316953:         If (1 Or (var_98 = vbNullString)) Then
  loc_1316963:           Set var_8C = Me.Txt
  loc_1316969:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1316971:           var_90.Tag = vbNullString
  loc_131697F:           arg_10 = &HFF
  loc_1316982:           Exit Sub
  loc_1316983:         End If
  loc_13169C1:         Set var_94 = Me.Txt
  loc_13169C7:         Call 0.Method_Txt_Validate0 (Cancel, var_124, CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_13169CF:         var_124.Text = arg_10
  loc_1316A05:         var_90 = Me.Recordset15.Fields.Item("SearchCode")
  loc_1316A16:         var_98 = CStr(var_90.Value)
  loc_1316A23:         Set var_94 = Me.Txt
  loc_1316A29:         Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_1316A31:         var_124.Tag = var_98
  loc_1316A4A:       Else
  loc_1316A52:         If (var_86 = CInt(6)) Then
  loc_1316A60:           Set var_8C = Me.Txt
  loc_1316A66:           Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_1316A6E:           var_B8 = CVar(var_90) 'Address
  loc_1316A8F:           If (Trim(var_B8) = vbNullString) Then
  loc_1316A94:             arg_10 = &HFF
  loc_1316A97:             Exit Sub
  loc_1316A98:           End If
  loc_1316AAC:           Call 0.Method_Txt_Validate0 (CInt(6), var_90, var_98)
  loc_1316AB4:           arg_10 = var_90.Text
  loc_1316ACB:           If (var_98 = "Bank Rect.") Then
  loc_1316AD4:             global_60 = "MBRV"
  loc_1316ADE:             Call Proc_289_62_115E448(MemVar_1F95044, var_98)
  loc_1316AFA:             var_98 = "Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 And Nature='Bank' and (LOGSITE_CODE='" & MemVar_1F95078
  loc_1316B0A:             unk_4F9444.Execute var_98 & "' or LOGSITE_CODE='HO') Order by Name", var_B8, -1
  loc_1316B1B:             Set global_76 = Me.Txt
  loc_1316B3C:             CVarUnk
  loc_1316B41:             VerifyVarObj
  loc_1316B47:             Set var_8C = Me.DGAgAc
  loc_1316B4D:             LateIdStAd
  loc_1316B5E:           Else
  loc_1316B64:             global_60 = "MCRV"
  loc_1316B6E:             Call Proc_289_62_115E448(MemVar_1F95044, var_98, var_8C)
  loc_1316B8A:             var_98 = "Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 And Nature='Cash' and (LOGSITE_CODE='" & MemVar_1F95078
  loc_1316B9A:             unk_4F9444.Execute var_98 & "' or LOGSITE_CODE='HO') Order by Name", var_B8, -1
  loc_1316BAB:             Set global_76 = var_8C
  loc_1316BCC:             CVarUnk
  loc_1316BD1:             VerifyVarObj
  loc_1316BD7:             Set var_8C = Me.DGAgAc
  loc_1316BDD:             LateIdStAd
  loc_1316BEB:           End If
  loc_1316BEB:         End If
  loc_1316BEB:       End If
  loc_1316BEB:     End If
  loc_1316BEB:   End If
  loc_1316BEB: End If
  loc_1316BEB: Exit Sub
End Sub

Private Sub TxtRem_GotFocus(Index As Integer) 'E4B6BC
  'Data Table: 4F942C
  loc_E4B69A: Set var_88 = Me.TxtRem
  loc_E4B6A0: Call 0.Method_TxtRem_GotFocus0 (Index)
  loc_E4B6AE: Proc_6_74_E23240(var_8C)
  loc_E4B6BA: Exit Sub
End Sub

Private Sub TxtRem_KeyDown(KeyCode As Integer, Shift As Integer) 'F7AC3C
  'Data Table: 4F942C
  Dim var_90 As TextBox
  Dim var_A0 As TextBox
  loc_F7AB08: If (CLng(Shift) = &H1B) Then
  loc_F7AB0B:   Call Proc_289_60_EF3C08(Shift)
  loc_F7AB10:   Exit Sub
  loc_F7AB11: End If
  loc_F7AB1B: If (CLng(Shift) = &H2D) Then
  loc_F7AB2B:   Set var_8C = Me.TxtRem
  loc_F7AB31:   Call 0.Method_TxtRem_KeyDown0 (KeyCode, var_90)
  loc_F7AB44:   Call Proc_289_63_EE5548(var_94)
  loc_F7AB5A:   Set var_9C = Me.Txt
  loc_F7AB60:   Call 0.Method_TxtRem_KeyDown0 (KeyCode, var_A0)
  loc_F7AB68:   var_A0.Text = var_90.Text & var_94
  loc_F7AB8E:   Set var_8C = Me.TxtRem
  loc_F7AB94:   Call 0.Method_TxtRem_KeyDown0 (KeyCode, var_90)
  loc_F7ABAF:   Set var_9C = Me.TxtRem
  loc_F7ABB5:   Call 0.Method_TxtRem_KeyDown0 (KeyCode, var_A0)
  loc_F7ABBD:   var_A0.SelStart = Len(var_90.Text)
  loc_F7ABD0:   Exit Sub
  loc_F7ABD1: End If
  loc_F7ABE6: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F7ABEF:   Proc_6_75_E5335C(Shift)
  loc_F7ABF4: End If
  loc_F7AC09: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F7AC12:   Proc_6_76_E533C8(Shift, arg_14)
  loc_F7AC17: End If
  loc_F7AC2C: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F7AC35:   Proc_6_75_E5335C(Shift, arg_14)
  loc_F7AC3A: End If
  loc_F7AC3A: Exit Sub
End Sub

Private Sub TxtRem_KeyPress(KeyAscii As Integer) 'E01630
  'Data Table: 4F942C
  loc_E01627: Proc_6_58_E06050(arg_10)
  loc_E0162C: Exit Sub
End Sub

Private Sub TxtRem_LostFocus(Index As Integer) 'E4B7F4
  'Data Table: 4F942C
  loc_E4B7D2: Set var_88 = Me.TxtRem
  loc_E4B7D8: Call 0.Method_TxtRem_LostFocus0 (Index)
  loc_E4B7E6: Proc_6_73_E23294(var_8C)
  loc_E4B7F2: Exit Sub
End Sub

Private Sub TxtCardNo_GotFocus(Index As Integer) 'E4C62C
  'Data Table: 4F942C
  loc_E4C60A: Set var_88 = Me.TxtCardNo
  loc_E4C610: Call 0.Method_TxtCardNo_GotFocus0 (Index)
  loc_E4C61E: Proc_6_74_E23240(var_8C)
  loc_E4C62A: Exit Sub
End Sub

Private Sub TxtCardNo_KeyDown(KeyCode As Integer, Shift As Integer) 'E8FAB8
  'Data Table: 4F942C
  loc_E8FA44: If (CLng(Shift) = &H1B) Then
  loc_E8FA47:   Call Proc_289_60_EF3C08(Shift)
  loc_E8FA4C:   Exit Sub
  loc_E8FA4D: End If
  loc_E8FA62: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E8FA6B:   Proc_6_75_E5335C(Shift)
  loc_E8FA70: End If
  loc_E8FA85: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E8FA8E:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E8FA93: End If
  loc_E8FAA8: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E8FAB1:   Proc_6_75_E5335C(Shift, arg_14)
  loc_E8FAB6: End If
  loc_E8FAB6: Exit Sub
End Sub

Private Sub TxtCardNo_LostFocus(Index As Integer) 'E4E7E4
  'Data Table: 4F942C
  loc_E4E7C2: Set var_88 = Me.TxtCardNo
  loc_E4E7C8: Call 0.Method_TxtCardNo_LostFocus0 (Index)
  loc_E4E7D6: Proc_6_73_E23294(var_8C)
  loc_E4E7E2: Exit Sub
End Sub

Private Sub TxtCardNo_Validate(Cancel As Boolean) '111D864
  'Data Table: 4F942C
  Dim var_B8 As String
  Dim var_B4 As TextBox
  Dim var_8C As Variant
  Dim var_D4 As String
  Dim var_88 As Fields15
  loc_111D51A: Set var_88 = Me.TxtCardNo
  loc_111D520: Call 0.Method_TxtCardNo_Validate0 (Cancel)
  loc_111D545: Set var_B0 = Me.TxtCardNo
  loc_111D54B: Call 0.Method_TxtCardNo_Validate0 (Cancel, var_B4)
  loc_111D553: var_B4.Text = CStr(Trim(CVar(var_8C)))
  loc_111D578: Set var_88 = Me.TxtCardNo
  loc_111D57E: Call 0.Method_TxtCardNo_Validate0 (Cancel, var_8C)
  loc_111D59D: If (var_8C.Text = vbNullString) Then
  loc_111D5A0:   Exit Sub
  loc_111D5A1: End If
  loc_111D5BB: If (global_72.RecordCount > 0) Then
  loc_111D5C7:   Me.Recordset15.MoveFirst
  loc_111D5D9:   Set var_88 = Me.TxtCardNo
  loc_111D5DF:   Call 0.Method_TxtCardNo_Validate0 (Cancel, var_8C)
  loc_111D5E7:   var_B8 = var_8C.Text
  loc_111D5FE:   If (var_B8 <> vbNullString) Then
  loc_111D61F:     Set var_88 = Me.TxtCardNo
  loc_111D625:     Call 0.Method_TxtCardNo_Validate0 (Cancel, var_8C, var_B8, "CardNo='")
  loc_111D62D:     0 = var_8C.Text
  loc_111D649:     Me.Recordset15.Find 1 & var_B8 & "'", var_D4, var_8C
  loc_111D65E:   End If
  loc_111D69A:   Set var_88 = Me.TxtCardNo
  loc_111D6A0:   Call 0.Method_TxtCardNo_Validate0 (Cancel, var_8C)
  loc_111D6C0:   If (((global_72.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF)) Or (var_8C.Text = vbNullString)) Then
  loc_111D6D0:     Set var_88 = Me.TxtCrAc
  loc_111D6D6:     Call 0.Method_TxtCardNo_Validate0 (Cancel, var_8C)
  loc_111D6DE:     var_8C.Text = vbNullString
  loc_111D6F7:     Set var_88 = Me.TxtCrAc
  loc_111D6FD:     Call 0.Method_TxtCardNo_Validate0 (Cancel, var_8C)
  loc_111D705:     var_8C.Tag = vbNullString
  loc_111D71E:     Set var_88 = Me.TxtCardNo
  loc_111D724:     Call 0.Method_TxtCardNo_Validate0 (Cancel, var_8C)
  loc_111D72C:     var_8C.Text = vbNullString
  loc_111D73B:   Else
  loc_111D779:     Set var_B0 = Me.TxtCrAc
  loc_111D77F:     Call 0.Method_TxtCardNo_Validate0 (Cancel, var_B4)
  loc_111D787:     var_B4.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_111D7DB:     Set var_B0 = Me.TxtCrAc
  loc_111D7E1:     Call 0.Method_TxtCardNo_Validate0 (Cancel, var_B4)
  loc_111D7E9:     var_B4.Tag = CStr(Me.Recordset15.Fields.Item("SearchCode").Value)
  loc_111D83D:     Set var_B0 = Me.TxtCardNo
  loc_111D843:     Call 0.Method_TxtCardNo_Validate0 (Cancel, var_B4)
  loc_111D84B:     var_B4.Text = CStr(Me.Recordset15.Fields.Item("CardNo").Value)
  loc_111D861:   End If
  loc_111D861: End If
  loc_111D861: Exit Sub
End Sub

Private Sub TxtAmtCr_GotFocus(Index As Integer) 'F833B4
  'Data Table: 4F942C
  Dim var_98 As TextBox
  Dim var_90 As Double
  Dim var_9C As String
  loc_F83272: Set var_94 = Me.Txt
  loc_F83278: Call 0.Method_TxtAmtCr_GotFocus0 (CInt(3), var_98)
  loc_F83280: var_9C = var_98.Text
  loc_F8328D: var_90 = Val(var_9C)
  loc_F832A5: For var_A0 = 0 To (Index - 1): var_86 = var_A0 'Integer
  loc_F832B8:   Set var_94 = Me.TxtAmtCr
  loc_F832BE:   Call 0.Method_TxtAmtCr_GotFocus0 (var_86, var_98, var_9C)
  loc_F832C6:   0 = var_98.Text
  loc_F832DD:   var_90 = (var_90 - Val(var_9C))
  loc_F832ED: Next var_A0 'Integer
  loc_F832FF: Set var_94 = Me.TxtAmtCr
  loc_F83305: Call 0.Method_TxtAmtCr_GotFocus0 (Index, var_98)
  loc_F83329: If (CDbl(Val(var_98.Text)) = CDbl(0)) Then
  loc_F83362:   Set var_94 = Me.TxtAmtCr
  loc_F83368:   Call 0.Method_TxtAmtCr_GotFocus0 (Index, var_98, CStr(Format(var_90, "0.00")))
  loc_F83370:   var_98.Text = 1
  loc_F83386: End If
  loc_F83390: Set var_94 = Me.TxtAmtCr
  loc_F83396: Call 0.Method_TxtAmtCr_GotFocus0 (Index, var_98)
  loc_F833A4: Proc_6_74_E23240(var_98)
  loc_F833B0: Exit Sub
End Sub

Private Sub TxtAmtCr_KeyDown(KeyCode As Integer, Shift As Integer) 'EFD51C
  'Data Table: 4F942C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  loc_EFD458: If (CLng(Shift) = &H1B) Then
  loc_EFD45B:   Call Proc_289_60_EF3C08(Shift)
  loc_EFD460:   Exit Sub
  loc_EFD461: End If
  loc_EFD46E: Set var_8C = Me.TxtAmtCr
  loc_EFD474: Call 0.Method_TxtAmtCr_KeyDown0 (KeyCode, var_90)
  loc_EFD48F: Set var_98 = Me.TxtAmtCr
  loc_EFD495: Call 0.Method_TxtAmtCr_KeyDown0 (KeyCode, var_9C)
  loc_EFD49D: var_9C.SelLength = Len(var_90.Text)
  loc_EFD4C5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EFD4CE:   Proc_6_75_E5335C(Shift)
  loc_EFD4D3: End If
  loc_EFD4E8: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EFD4F1:   Proc_6_76_E533C8(Shift, arg_14)
  loc_EFD4F6: End If
  loc_EFD50B: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EFD514:   Proc_6_75_E5335C(Shift, arg_14)
  loc_EFD519: End If
  loc_EFD519: Exit Sub
End Sub

Private Sub TxtAmtCr_KeyPress(KeyAscii As Integer) 'E6BEF4
  'Data Table: 4F942C
  Dim arg_10 As Integer
  loc_E6BEA7: Proc_6_58_E06050(arg_10)
  loc_E6BEB2: If (arg_10 = &H2D) Then
  loc_E6BEB7:   arg_10 = 0
  loc_E6BEBA: End If
  loc_E6BEC4: Set var_88 = Me.TxtAmtCr
  loc_E6BECA: Call 0.Method_TxtAmtCr_KeyPress0 (KeyAscii, var_8C)
  loc_E6BEE5: Proc_6_42_129B55C(var_8C, arg_10, 7)
  loc_E6BEF1: Exit Sub
End Sub

Private Sub TxtAmtCr_LostFocus(Index As Integer) 'E4D534
  'Data Table: 4F942C
  loc_E4D512: Set var_88 = Me.TxtAmtCr
  loc_E4D518: Call 0.Method_TxtAmtCr_LostFocus0 (Index)
  loc_E4D526: Proc_6_73_E23294(var_8C)
  loc_E4D532: Exit Sub
End Sub

Private Sub TxtAmtCr_Validate(Cancel As Boolean) 'F8D8F8
  'Data Table: 4F942C
  Dim var_E4 As String
  Dim var_E0 As TextBox
  Dim var_98 As Variant
  Dim var_90 As Double
  loc_F8D7AE: Set var_94 = Me.TxtAmtCr
  loc_F8D7B4: Call 0.Method_TxtAmtCr_Validate0 (Cancel)
  loc_F8D7E0: var_E4 = CStr(Format(CVar(var_98), "0.00"))
  loc_F8D7EE: Set var_DC = Me.TxtAmtCr
  loc_F8D7F4: Call 0.Method_TxtAmtCr_Validate0 (Cancel, var_E0, var_E4)
  loc_F8D7FC: var_E0.Text = 1
  loc_F8D824: Set var_94 = Me.Txt
  loc_F8D82A: Call 0.Method_TxtAmtCr_Validate0 (CInt(3), var_98, var_E4)
  loc_F8D832: 1 = var_98.Text
  loc_F8D83F: var_90 = Val(var_E4)
  loc_F8D854: For var_E8 = 0 To Cancel: var_86 = var_E8 'Integer
  loc_F8D867:   Set var_94 = Me.TxtAmtCr
  loc_F8D86D:   Call 0.Method_TxtAmtCr_Validate0 (var_86, var_98, var_E4)
  loc_F8D875:   0 = var_98.Text
  loc_F8D88C:   var_90 = (var_90 - Val(var_E4))
  loc_F8D89C: Next var_E8 'Integer
  loc_F8D8B2: Set var_94 = Me.FrDebit
  loc_F8D8B8: Call 0.Method_TxtAmtCr_ValidateC (var_F2, Cancel)
  loc_F8D8C8: If ( And ((var_90 > CDbl(0)) < (var_F2 - 1))) Then
  loc_F8D8DA:   Set var_94 = Me.FrDebit
  loc_F8D8E0:   Call 0.Method_TxtAmtCr_Validate0 ((Cancel + 1), var_98)
  loc_F8D8E8:   var_98.Visible = True
  loc_F8D8F4: End If
  loc_F8D8F4: Exit Sub
End Sub

Private Sub TxtCrAc_GotFocus(Index As Integer) '10EFB00
  'Data Table: 4F942C
  Dim var_98 As Variant
  Dim var_A4 As TextBox
  Dim var_8C As Variant
  Dim var_B8 As Variant
  Dim var_A0 As DataGrid
  Dim var_90 As Fields15
  loc_10EF802: Set var_88 = Me.TxtCrAc
  loc_10EF808: Call 0.Method_TxtCrAc_GotFocus0 (Index)
  loc_10EF816: Proc_6_74_E23240(var_8C)
  loc_10EF82B: Call Proc_289_60_EF3C08(Index)
  loc_10EF83D: Set var_90 = Me.TxtCrAc
  loc_10EF843: Call 0.Method_TxtCrAc_GotFocus0 (Index, var_98)
  loc_10EF85D: Set var_A0 = Me.TxtCrAc
  loc_10EF863: Call 0.Method_TxtCrAc_GotFocus0 (Index, var_A4)
  loc_10EF87D: Set var_88 = Me.FrDebit
  loc_10EF883: Call 0.Method_TxtCrAc_GotFocus0 (Index, var_8C)
  loc_10EF89F: var_B8 = CVar((((var_8C.Top + var_98.Top) + var_A4.Height) + CDbl(&HF))) 'Single
  loc_10EF8AE: Me.DGCrAc.Top = var_B8
  loc_10EF8D1: Set var_90 = Me.TxtCrAc
  loc_10EF8D7: Call 0.Method_TxtCrAc_GotFocus0 (Index, var_98)
  loc_10EF8F1: Set var_88 = Me.FrDebit
  loc_10EF8F7: Call 0.Method_TxtCrAc_GotFocus0 (Index, var_8C)
  loc_10EF90B: var_B8 = CVar((var_8C.Left + var_98.Left)) 'Single
  loc_10EF914: Set var_A0 = Me.DGCrAc
  loc_10EF91A: var_A0.Left = var_B8
  loc_10EF946: If (Me.var_A0.RecordCount > 0) Then
  loc_10EF954:   Set var_8C = Me.FGPoint
  loc_10EF970:   Proc_6_137_1192FDC(Me.DGCrAc, global_72, Index)
  loc_10EF97E: End If
  loc_10EF9D5: Set var_88 = Me.TxtCrAc
  loc_10EF9DB: Call 0.Method_TxtCrAc_GotFocus0 (Index, var_8C, var_D4)
  loc_10EF9E3: ((global_72.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_10EF9FB: If (var_8C Or (var_D4 = vbNullString)) Then
  loc_10EFA0B:   Set var_88 = Me.TxtCrAc
  loc_10EFA11:   Call 0.Method_TxtCrAc_GotFocus0 (Index, var_8C)
  loc_10EFA19:   var_8C.Tag = vbNullString
  loc_10EFA25:   Exit Sub
  loc_10EFA26: End If
  loc_10EFA33: Set var_88 = Me.TxtCrAc
  loc_10EFA39: Call 0.Method_TxtCrAc_GotFocus0 (Index, var_8C)
  loc_10EFA41: var_D4 = var_8C.Text
  loc_10EFA53: var_B8 = "Name"
  loc_10EFA91: If CBool(CVar(var_D4) <> Me.Recordset15.Fields.Item(var_B8).Value) Then
  loc_10EFA9D:   Me.Recordset15.MoveFirst
  loc_10EFAC0:   Set var_88 = Me.TxtCrAc
  loc_10EFAC6:   Call 0.Method_TxtCrAc_GotFocus0 (Index, var_8C, var_D4, "Name='")
  loc_10EFACE:   0 = var_8C.Text
  loc_10EFAEA:   Me.Recordset15.Find 1 & var_D4 & "'", var_B8, var_8C
  loc_10EFAFF: End If
  loc_10EFAFF: Exit Sub
End Sub

Private Sub TxtCrAc_KeyDown(KeyCode As Integer, Shift As Integer) 'FC85E4
  'Data Table: 4F942C
  Dim var_86 As Integer
  loc_FC843F: var_86 = Shift
  loc_FC844C: If (CLng(Shift) = &H1B) Then
  loc_FC844F:   Call Proc_289_60_EF3C08(var_86)
  loc_FC8454:   Exit Sub
  loc_FC8455: End If
  loc_FC8472: Set var_9C = Me.FGPoint
  loc_FC847D: Set var_98 = Nothing
  loc_FC84AF: Proc_6_69_134A630(Me.DGCrAc, Me.TxtCrAc, KeyCode, global_72, Shift)
  loc_FC8521: If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_FC8528:   Set var_98 = Me.DGCrAc
  loc_FC854B:   Proc_6_138_106E830(var_98, global_72, KeyCode, Me.FGPoint, 0)
  loc_FC8559: End If
  loc_FC8575: If (CBool(Me.DGCrAc.Visible) = 0) Then
  loc_FC858D:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FC8596:     Proc_6_75_E5335C(Shift, arg_14, 1)
  loc_FC859B:   End If
  loc_FC85B0:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FC85B9:     Proc_6_76_E533C8(Shift, arg_14, var_98)
  loc_FC85BE:   End If
  loc_FC85D3:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FC85DC:     Proc_6_75_E5335C(Shift, arg_14)
  loc_FC85E1:   End If
  loc_FC85E1: End If
  loc_FC85E1: Exit Sub
End Sub

Private Sub TxtCrAc_KeyPress(KeyAscii As Integer) 'EC5DC0
  'Data Table: 4F942C
  loc_EC5D27: Proc_6_58_E06050(arg_10)
  loc_EC5D48: If (CBool(Me.DGCrAc.Visible) = &HFF) Then
  loc_EC5D5A:   var_9C = "Name"
  loc_EC5D79:   Proc_6_89_1470B00(Me.TxtCrAc, KeyAscii, global_72)
  loc_EC5DAF:   Proc_6_138_106E830(Me.DGCrAc, global_72, KeyAscii, Me.FGPoint)
  loc_EC5DBD: End If
  loc_EC5DBD: Exit Sub
End Sub

Private Sub TxtCrAc_LostFocus(Index As Integer) 'E4C55C
  'Data Table: 4F942C
  loc_E4C53A: Set var_88 = Me.TxtCrAc
  loc_E4C540: Call 0.Method_TxtCrAc_LostFocus0 (Index)
  loc_E4C54E: Proc_6_73_E23294(var_8C)
  loc_E4C55A: Exit Sub
End Sub

Private Sub TxtCrAc_Validate(Cancel As Boolean) 'FD8834
  'Data Table: 4F942C
  Dim var_94 As Variant
  Dim var_90 As Fields15
  Dim var_B0 As TextBox
  loc_FD86BB: Set var_90 = Me.TxtCrAc
  loc_FD86C1: Call 0.Method_TxtCrAc_Validate0 (Cancel, var_94)
  loc_FD86E1: If (((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_FD86F1:   Set var_90 = Me.TxtCrAc
  loc_FD86F7:   Call 0.Method_TxtCrAc_Validate0 (Cancel, var_94)
  loc_FD86FF:   var_94.Tag = vbNullString
  loc_FD870B:   Exit Sub
  loc_FD870C: End If
  loc_FD874A: Set var_AC = Me.TxtCrAc
  loc_FD8750: Call 0.Method_TxtCrAc_Validate0 (Cancel, var_B0)
  loc_FD8758: var_B0.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_FD87AC: Set var_AC = Me.TxtCrAc
  loc_FD87B2: Call 0.Method_TxtCrAc_Validate0 (Cancel, var_B0)
  loc_FD87BA: var_B0.Tag = CStr(Me.Recordset15.Fields.Item("SearchCode").Value)
  loc_FD880E: Set var_AC = Me.TxtCardNo
  loc_FD8814: Call 0.Method_TxtCrAc_Validate0 (Cancel, var_B0)
  loc_FD881C: var_B0.Text = CStr(Me.Recordset15.Fields.Item("CardNo").Value)
  loc_FD8832: Exit Sub
End Sub

Private Sub DGCrAc_UnknownEvent_9 'EEF598
  'Data Table: 4F942C
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EEF4DD: Set var_A8 = Me.DGCrAc
  loc_EEF4E3: var_A8.Visible = False
  loc_EEF505: If (Me.var_A8.RecordCount > 0) Then
  loc_EEF528:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_EEF549:   Set var_B4 = Me.TxtCrAc
  loc_EEF54F:   Call 0.Method_DGCrAc_UnknownEvent_90 (global_64, var_B8)
  loc_EEF557:   var_B8.Text = CStr(var_B0.Value)
  loc_EEF56D: End If
  loc_EEF57A: Set var_A8 = Me.TxtCrAc
  loc_EEF580: Call 0.Method_DGCrAc_UnknownEvent_90 (global_64)
  loc_EEF588: var_B0.SetFocus
  loc_EEF594: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E65E04
  'Data Table: 4F942C
  loc_E65DD4: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_E65DD7:   Call DGAgAc_UnknownEvent_9()
  loc_E65DDC: End If
  loc_E65DF8: If (CBool(Me.DGCrAc.Visible) = &HFF) Then
  loc_E65DFB:   Call DGCrAc_UnknownEvent_9()
  loc_E65E00: End If
  loc_E65E00: Exit Sub
  loc_E65E01: ArrayRebase1Var
End Sub

Public Function MasterFormExitGet() '4FA870
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4FA87F
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E95D20
  'Data Table: 4F942C
  Dim Me As Recordset15
  loc_E95CAE: On Error Goto loc_E95D17
  loc_E95CB7: Me.MoveFirst
  loc_E95CE1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95D09: Proc_5_0_1107AD0(&HFF, Me, global_68)
  loc_E95D11: Call Proc_289_58_1486A54(0)
  loc_E95D16: Exit Sub
  loc_E95D17: ' Referenced from: E95CAE
  loc_E95D17: Proc_6_60_E63754(var_A0)
  loc_E95D1C: Exit Sub
End Sub

Public Sub Proc_289_52_DFD21C
  'Data Table: 4F942C
  Dim arg_1A3D As Boolean
  loc_DFD218: Exit Sub
  loc_DFD219: arg_1A3D = True
End Sub

Public Sub Proc_289_53_13B6C3C
  'Data Table: 4F942C
  Dim unk_4F949C As Connection15
  Dim var_86 As Integer
  Dim var_F0 As Variant
  Dim var_DC As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_94 As Recordset15
  Dim var_C8 As Fields15
  Dim var_E0 As Field20
  loc_13B634A: unk_4F949C.Execute "Select * from PrinterSetup", var_C4, -1
  loc_13B6355: Set var_94 = var_C8
  loc_13B6360: Close 1
  loc_13B6369: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_13B6373: If (var_86 = 0) Then
  loc_13B63A4:   var_8C = Replace(CStr(Space(&H30)), " ", "-", 1, -1, 0)
  loc_13B63DB:   var_90 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_13B63E9:   Print 1, vbNullString
  loc_13B63F5:   var_86 = (var_86 + 1)
  loc_13B63FD:   Print 1, vbNullString
  loc_13B6409:   var_86 = (var_86 + 1)
  loc_13B6411:   Print 1, vbNullString
  loc_13B641D:   var_86 = (var_86 + 1)
  loc_13B6438:   Set var_C8 = Me.Txt
  loc_13B643E:   Call 0.Method_Proc_289_53_13B6C3C0 (CInt(1), var_E0, var_86)
  loc_13B648B:   Set var_178 = Me.Txt
  loc_13B6491:   Call 0.Method_Proc_289_53_13B6C3C0 (CInt(2), var_17C)
  loc_13B64C1:   var_DC = (Space(5) + "V NO. ")
  loc_13B64CB:   var_114 = (var_DC + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_E0), var_86), &HA)))
  loc_13B64D2:   var_134 = (var_114 + Space(&H1F))
  loc_13B64D9:   var_154 = (var_134 + Space(5))
  loc_13B64E2:   var_174 = (var_154 + "Date: ")
  loc_13B64EC:   var_1B4 = (var_174 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_17C), var_86), &HB)))
  loc_13B64F2:   Print 1, var_1B4
  loc_13B6531:   var_86 = (var_86 + 1)
  loc_13B6539:   Print 1, vbNullString
  loc_13B6545:   var_86 = (var_86 + 1)
  loc_13B6560:   Set var_C8 = Me.Txt
  loc_13B6566:   Call 0.Method_Proc_289_53_13B6C3C0 (CInt(6), var_E0, var_86)
  loc_13B65F2:   var_1B4 = IIf((Ucase(Trim(CVar(var_E0))) = "CASH RECT."), CVar(Proc_6_38_E69628(StrConv("Cash Receipt", 3, 0), var_86)), CVar(Proc_6_38_E69628(StrConv("Bank Receipt", 3, 0))))
  loc_13B6622:   var_1F4 = (Space(&H20) + CVar(Proc_6_45_EADFB8(CStr(var_1B4), &H14)))
  loc_13B6629:   var_214 = (var_1F4 + Space(&H1B))
  loc_13B662F:   Print 1, var_214
  loc_13B666A:   var_86 = (var_86 + 1)
  loc_13B6672:   Print 1, vbNullString
  loc_13B667E:   var_86 = (var_86 + 1)
  loc_13B6686:   Print 1, vbNullString
  loc_13B6692:   var_86 = (var_86 + 1)
  loc_13B669A:   Print 1, vbNullString
  loc_13B66A6:   var_86 = (var_86 + 1)
  loc_13B66AE:   Print 1, vbNullString
  loc_13B66BA:   var_86 = (var_86 + 1)
  loc_13B66C2:   Print 1, vbNullString
  loc_13B66CE:   var_86 = (var_86 + 1)
  loc_13B66E7:   var_DC = (Space(&HA) + CVar(var_8C))
  loc_13B66ED:   Print 1, CVar(var_E0)
  loc_13B6700:   var_86 = (var_86 + 1)
  loc_13B6745:   var_F0 = (Space(&HA) + CVar(Proc_6_45_EADFB8("Particulars", &H23, var_86, var_86, var_86)))
  loc_13B674E:   var_104 = (Trim(CVar(var_E0)) + " | ")
  loc_13B6758:   var_124 = (Ucase(Trim(CVar(var_E0))) + CVar(Proc_6_52_EAE084("Amount", &HA, var_86, var_86)))
  loc_13B675E:   Print 1, "Cash Receipt"
  loc_13B6784:   var_86 = (var_86 + 1)
  loc_13B679D:   var_DC = (Space(&HA) + CVar(var_8C))
  loc_13B67A3:   Print 1, CVar(Proc_6_45_EADFB8("Particulars", &H23, var_86, var_86, var_86))
  loc_13B67B6:   var_86 = (var_86 + 1)
  loc_13B67D1:   Set var_C8 = Me.Txt
  loc_13B67D7:   Call 0.Method_Proc_289_53_13B6C3C0 (CInt(4), var_E0, var_86, var_86)
  loc_13B67DF:   var_F0 = CVar(var_E0) 'Address
  loc_13B683A:   Set var_178 = Me.Txt
  loc_13B6840:   Call 0.Method_Proc_289_53_13B6C3C0 (CInt(3), var_17C)
  loc_13B6870:   var_DC = (Space(&HA) + vbNullString)
  loc_13B687A:   var_144 = (CVar(Proc_6_45_EADFB8("Particulars", &H23, var_86, var_86, var_86)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(StrConv(Left(Trim(var_F0), &H23), 3, 0), var_86), &H23)))
  loc_13B6883:   var_154 = ("Bank Receipt" + " : ")
  loc_13B688D:   var_1A4 = (StrConv("Bank Receipt", 3, 0) + CVar(Proc_6_52_EAE084(Proc_6_38_E69628(CVar(var_17C), var_86), &HA)))
  loc_13B6893:   Print 1, CVar(Proc_6_38_E69628(StrConv("Bank Receipt", 3, 0)))
  loc_13B68D0:   var_86 = (var_86 + 1)
  loc_13B68D8:   Print 1, vbNullString
  loc_13B68E4:   var_86 = (var_86 + 1)
  loc_13B68EC:   Print 1, vbNullString
  loc_13B68F8:   var_86 = (var_86 + 1)
  loc_13B6911:   var_DC = (Space(&HA) + CVar(var_8C))
  loc_13B6917:   Print 1, CVar(Proc_6_45_EADFB8("Particulars", &H23, var_86, var_86, var_86))
  loc_13B692A:   var_86 = (var_86 + 1)
  loc_13B6945:   Set var_C8 = Me.Txt
  loc_13B694B:   Call 0.Method_Proc_289_53_13B6C3C0 (CInt(3), var_E0, var_86, var_86)
  loc_13B695A:   Proc_6_39_E7D3A0(var_F0, CVar(var_E0), var_86)
  loc_13B69B8:   var_1C0 = Proc_6_45_EADFB8(CStr("Charge: Rs. " & StrConv(CVar(Proc_6_43_1003B24(CSng(Abs(var_F0)), vbNullString, vbNullString)), 3, 0)), &H48)
  loc_13B69C4:   var_154 = (Space(&HA) + CVar(var_1C0))
  loc_13B69CA:   Print 1, StrConv("Bank Receipt", 3, 0)
  loc_13B69F8:   Print 1, vbNullString
  loc_13B6A04:   var_86 = (var_86 + 1)
  loc_13B6A34:   var_F0 = (Chr(&HF) + Space(&H16))
  loc_13B6A3E:   var_104 = (var_F0 + CVar(MemVar_1F950C8))
  loc_13B6A45:   var_124 = (Abs(var_F0) + Chr(&H12))
  loc_13B6A4B:   Print 1, StrConv(CVar(Proc_6_43_1003B24(CSng(Abs(var_F0)), vbNullString, vbNullString)), 3, 0)
  loc_13B6A66:   var_86 = (var_86 + 1)
  loc_13B6AB0:   var_F0 = (Chr(&HF) + Space(&H14))
  loc_13B6AB9:   var_104 = (var_F0 + "Prepared By")
  loc_13B6AC0:   var_124 = (Abs(var_F0) + Space(&H14))
  loc_13B6AC9:   var_134 = (StrConv(CVar(Proc_6_43_1003B24(CSng(Abs(var_F0)), vbNullString, vbNullString)), 3, 0) + "Guest Signature")
  loc_13B6AD0:   var_154 = ("Charge: Rs. " & StrConv(CVar(Proc_6_43_1003B24(CSng(Abs(var_F0)), vbNullString, vbNullString)), 3, 0) + Space(&H14))
  loc_13B6AD9:   var_174 = (StrConv("Bank Receipt", 3, 0) + "Auth. Signature")
  loc_13B6AE0:   var_1A4 = (CVar(var_17C) + Chr(&H12))
  loc_13B6AE6:   Print 1, CVar(Proc_6_38_E69628(StrConv("Bank Receipt", 3, 0)))
  loc_13B6B0D:   var_86 = (var_86 + 1)
  loc_13B6B15:   Print 1, vbNullString
  loc_13B6B21:   var_86 = (var_86 + 1)
  loc_13B6B29:   Print 1, vbNullString
  loc_13B6B35:   var_86 = (var_86 + 1)
  loc_13B6B38: End If
  loc_13B6B3D: Print 1, vbNullString
  loc_13B6B49: var_86 = (var_86 + 1)
  loc_13B6B51: Print 1, vbNullString
  loc_13B6B5D: var_86 = (var_86 + 1)
  loc_13B6B65: Print 1, vbNullString
  loc_13B6B71: var_86 = (var_86 + 1)
  loc_13B6B86: Print 1, Chr(&HC)
  loc_13B6B91: Close 1
  loc_13B6B9A: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_13B6BD3: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & var_94.Fields.Item("Printer").Value
  loc_13B6BE9: Close 1
  loc_13B6BF3: If (MemVar_1F953BC = "Y") Then
  loc_13B6C0F:   var_A4 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_13B6C19: Else
  loc_13B6C32:   var_A4 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_13B6C39: End If
  loc_13B6C39: Exit Sub
End Sub

Public Sub Proc_289_54_13C39C4
  'Data Table: 4F942C
  Dim var_96 As Integer
  Dim var_F4 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Recordset15
  Dim var_C0 As Variant
  Dim var_148 As String
  Dim var_9C As Fields15
  Dim var_C4 As Field20
  Dim var_D8 As String
  Dim var_F8 As String
  loc_13C3087: var_90 = "PaymentReceiveRep"
  loc_13C308D: var_94 = "Payment Receive Report"
  loc_13C3092: var_96 = 0
  loc_13C30A2: Call Proc_289_55_FC00D8(New, var_9C)
  loc_13C30AA: Set var_8C = var_9C
  loc_13C30B0: Set var_A0 = var_8C 
  loc_13C30BF: Me.Recordset15.AddNew var_B0, var_C0
  loc_13C30CF: Set var_9C = Me.Txt
  loc_13C30D5: Call 0.Method_Proc_289_54_13C39C40 (CInt(1), var_C4)
  loc_13C311D: var_A0.Fields.Item("VNo").Value = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4)), &HA))
  loc_13C3144: Set var_9C = Me.Txt
  loc_13C314A: Call 0.Method_Proc_289_54_13C39C40 (CInt(2), var_C4)
  loc_13C3192: var_A0.Fields.Item("VDate").Value = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4)), &HB))
  loc_13C31B9: Set var_9C = Me.Txt
  loc_13C31BF: Call 0.Method_Proc_289_54_13C39C40 (CInt(6), var_C4)
  loc_13C3210: var_148 = "Bank Receipt"
  loc_13C324B: var_1A8 = IIf((Ucase(Trim(CVar(var_C4))) = "CASH RECT."), CVar(Proc_6_38_E69628(StrConv("Cash Receipt", 3, 0))), CVar(Proc_6_38_E69628(StrConv(var_148, 3, 0))))
  loc_13C3285: var_A0.Fields.Item("VType").Value = CVar(Proc_6_45_EADFB8(CStr(var_1A8), &H14))
  loc_13C32C0: Set var_9C = Me.Txt
  loc_13C32C6: Call 0.Method_Proc_289_54_13C39C40 (CInt(5), var_C4)
  loc_13C3323: var_A0.Fields.Item("AgAc").Value = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(StrConv(CVar(var_C4), 3, 0)), &H32))
  loc_13C334C: Set var_9C = Me.Txt
  loc_13C3352: Call 0.Method_Proc_289_54_13C39C40 (CInt(4), var_C4)
  loc_13C33CB: var_A0.Fields.Item("Particulars").Value = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(StrConv(Left(Trim(CVar(var_C4)), &H96), 3, 0)), 150))
  loc_13C33F8: Set var_9C = Me.Txt
  loc_13C33FE: Call 0.Method_Proc_289_54_13C39C40 (CInt(3), var_C4)
  loc_13C3423: var_F4 = CVar(Proc_6_52_EAE084(Proc_6_38_E69628(CVar(var_C4)), &HA)) 'String
  loc_13C3446: var_A0.Fields.Item("Amount").Value = var_F4
  loc_13C346D: Set var_9C = Me.Txt
  loc_13C3473: Call 0.Method_Proc_289_54_13C39C40 (CInt(3), var_C4)
  loc_13C3482: Proc_6_39_E7D3A0(var_F4, CVar(var_C4))
  loc_13C348A: var_F8 = vbNullString
  loc_13C34E8: var_A0.Fields.Item("Charge").Value = StrConv(CVar(Proc_6_43_1003B24(CSng(Abs(var_F4)), vbNullString)), 3, 0)
  loc_13C350D: var_C0 = CVar(MemVar_1F950C8) 'String
  loc_13C3514: var_B0 = "Uname"
  loc_13C3528: var_C4 = var_A0.Fields.Item(var_B0)
  loc_13C3530: var_C4.Value = var_C0
  loc_13C3547: var_A0.Update var_B0, var_C0
  loc_13C3570: Set var_9C = var_8C 
  loc_13C3577: CreateFieldDefFile(var_9C, MemVar_1F950B4 & "\" & var_90 & ".ttx", &HFF)
  loc_13C35A5: var_D8 = "\" & var_90
  loc_13C35AC: var_F8 = var_D8 & ".RPT"
  loc_13C35B9: Call 0.Method_arg_1C (MemVar_1F950B4 & var_F8, var_B0, var_9C)
  loc_13C35C4: MemVar_1F951E8 = var_9C
  loc_13C35ED: Call 0.Method_arg_64 (var_9C, CVar(var_9C), var_C0)
  loc_13C35F5: Call 0.Method_arg_2C (var_148, var_F8)
  loc_13C3603: Call 0.Method_arg_150 (var_96)
  loc_13C3619: Call 0.Method_arg_90 (var_9C, var_1DC)
  loc_13C3621: Call 0.Method_arg_24 (var_98)
  loc_13C362D: For var_1E0 =  To CInt(var_1DC): 1 = var_1E0 'Integer
  loc_13C3646:   Call 0.Method_arg_90 (var_9C, CLng(var_98))
  loc_13C364E:   Call 0.Method_arg_20 (var_C4)
  loc_13C3656:   Call 0.Method_arg_30 (var_D8)
  loc_13C366C:   var_1F0 = Ucase(CVar(var_D8)) 'Variant
  loc_13C369C:   If (var_1F0 = Ucase("comp_name")) Then
  loc_13C36C0:     Call 0.Method_arg_90 (var_9C, CLng(var_98))
  loc_13C36C8:     Call 0.Method_arg_20 (var_C4)
  loc_13C36D0:     Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_13C36E6:   Else
  loc_13C3708:     If (var_1F0 = Ucase("comp_add1")) Then
  loc_13C372C:       Call 0.Method_arg_90 (var_9C, CLng(var_98))
  loc_13C3734:       Call 0.Method_arg_20 (var_C4)
  loc_13C373C:       Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_13C3752:     Else
  loc_13C3774:       If (var_1F0 = Ucase("comp_pin")) Then
  loc_13C3798:         Call 0.Method_arg_90 (var_9C, CLng(var_98))
  loc_13C37A0:         Call 0.Method_arg_20 (var_C4)
  loc_13C37A8:         Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_13C37BE:       Else
  loc_13C37E0:         If (var_1F0 = Ucase("comp_GSTIN")) Then
  loc_13C3804:           Call 0.Method_arg_90 (var_9C, CLng(var_98))
  loc_13C380C:           Call 0.Method_arg_20 (var_C4)
  loc_13C3814:           Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_13C382A:         Else
  loc_13C384C:           If (var_1F0 = Ucase("comp_tin")) Then
  loc_13C3870:             Call 0.Method_arg_90 (var_9C, CLng(var_98))
  loc_13C3878:             Call 0.Method_arg_20 (var_C4)
  loc_13C3880:             Call 0.Method_arg_38 ("'" & MemVar_1F95150 & "'")
  loc_13C3896:           Else
  loc_13C38B8:             If (var_1F0 = Ucase("Title")) Then
  loc_13C38DC:               Call 0.Method_arg_90 (var_9C, CLng(var_98))
  loc_13C38E4:               Call 0.Method_arg_20 (var_C4)
  loc_13C38EC:               Call 0.Method_arg_38 ("'Phone No. " & MemVar_1F95140 & "'")
  loc_13C3902:             Else
  loc_13C3924:               If (var_1F0 = Ucase("BetweenDate")) Then
  loc_13C3927:                 GoTo loc_13C3977
  loc_13C392A:               End If
  loc_13C394C:               If (var_1F0 = Ucase("Dater")) Then
  loc_13C394F:                 GoTo loc_13C3977
  loc_13C3952:               End If
  loc_13C3974:               If (var_1F0 = Ucase("Pager")) Then
  loc_13C3977:                 ' Referenced from:             13C394F
  loc_13C3977:                 ' Referenced from:             13C3927
  loc_13C3977:               End If
  loc_13C3977:             End If
  loc_13C3977:           End If
  loc_13C3977:         End If
  loc_13C3977:       End If
  loc_13C3977:     End If
  loc_13C3977:   End If
  loc_13C397A: Next var_1E0 'Integer
  loc_13C3984: Set var_C4 = Nothing
  loc_13C3998: Set var_9C = MemVar_1F951E8 
  loc_13C39A4: Proc_6_99_1484404(var_9C, var_96, var_94)
  loc_13C39AF: MemVar_1F951E8 = var_9C
  loc_13C39BC: Set var_A0 = Nothing 
  loc_13C39C0: Exit Sub
End Sub

Public Sub Proc_289_55_FC00D8(arg_C) 'FC00D8
  'Data Table: 4F942C
  Dim var_8C As Recordset15
  loc_FBFF25: Set var_8C = arg_C 
  loc_FBFF4D: var_8C.Fields.Append "VNo", &HC8, &HA
  loc_FBFF79: var_8C.Fields.Append "VDate", &HC8, &HB
  loc_FBFFA5: var_8C.Fields.Append "VType", &HC8, &H32
  loc_FBFFD1: var_8C.Fields.Append "AgAc", &HC8, &H32
  loc_FBFFFD: var_8C.Fields.Append "Particulars", &HC8, &H96
  loc_FC0029: var_8C.Fields.Append "Amount", &HC8, &HB
  loc_FC0055: var_8C.Fields.Append "Charge", &HC8, &HC8
  loc_FC0081: var_8C.Fields.Append "Uname", &HC8, &HA
  loc_FC0091: var_8C.CursorType = 3
  loc_FC009E: var_8C.LockType = 3
  loc_FC00BD: var_8C.Open var_A0, var_B0, -1
  loc_FC00C4: Set var_8C = Nothing 
  loc_FC00CB: Set var_88 = arg_C 
  loc_FC00CF: Proc_289_55_FC00D8 = -1
End Sub

Public Sub Proc_289_56_F8F35C
  'Data Table: 4F942C
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_4F9444 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_F8F21D: Set var_8C = Me.TopCtrl1
  loc_F8F223: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_F8F22B: var_A0 = CStr()
  loc_F8F23C: If (var_A0 = "Add") Then
  loc_F8F26C:   Set var_8C = Me.Txt
  loc_F8F272:   Call 0.Method_Proc_289_56_F8F35C0 (CInt(0), var_A4, var_A0, "Select Count(*) From Ledger Where DocID='", var_9C, -1)
  loc_F8F293:   unk_4F9444.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_F8F2A3:    = var_C4.Item()
  loc_F8F2AB:    = var_D8.Value
  loc_F8F2D8:   If (var_A4.Text.Fields > 0) Then
  loc_F8F2E1:     Call 0.Method_arg_50 (var_A0)
  loc_F8F302:     MsgBox("Duplicate Serial No.", &H40, CVar(var_A0), var_108, var_118)
  loc_F8F318:     Call Proc_289_62_115E448(MemVar_1F95044)
  loc_F8F32B:     Set var_8C = Me.Txt
  loc_F8F331:     Call 0.Method_Proc_289_56_F8F35C0 (CInt(0), var_A4)
  loc_F8F339:     var_A4.Text = var_A0
  loc_F8F34D:     Proc_289_56_F8F35C = 0
  loc_F8F353:   End If
  loc_F8F353: End If
  loc_F8F353: Proc_289_56_F8F35C = var_A0
End Sub

Public Sub Proc_289_57_10516F8
  'Data Table: 4F942C
  Dim var_98 As Variant
  Dim var_8C As Label
  loc_105148A: Set var_8C = Me.Txt
  loc_1051490: Call 0.Method_Proc_289_57_10516F8C (var_8E, var_86)
  loc_10514A0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10514B6:   Set var_8C = Me.Txt
  loc_10514BC:   Call 0.Method_Proc_289_57_10516F80 (CInt(var_86), var_98)
  loc_10514C4:   var_98.Text = vbNullString
  loc_10514E0:   Set var_8C = Me.Txt
  loc_10514E6:   Call 0.Method_Proc_289_57_10516F80 (CInt(var_86), var_98)
  loc_10514EE:   var_98.Tag = vbNullString
  loc_10514FD: Next var_92 'Byte
  loc_1051511: Set var_8C = Me.FrDebit
  loc_1051517: Call 0.Method_Proc_289_57_10516F8C (var_8E, var_86)
  loc_1051527: For var_9C =  To CByte((var_8E - 1)): CByte(0) = var_9C 'Byte
  loc_105153D:   Set var_8C = Me.TxtCardNo
  loc_1051543:   Call 0.Method_Proc_289_57_10516F80 (CInt(var_86), var_98)
  loc_105154B:   var_98.Text = vbNullString
  loc_1051567:   Set var_8C = Me.TxtCrAc
  loc_105156D:   Call 0.Method_Proc_289_57_10516F80 (CInt(var_86), var_98)
  loc_1051575:   var_98.Text = vbNullString
  loc_1051591:   Set var_8C = Me.TxtAmtCr
  loc_1051597:   Call 0.Method_Proc_289_57_10516F80 (CInt(var_86), var_98)
  loc_105159F:   var_98.Text = vbNullString
  loc_10515BB:   Set var_8C = Me.TxtRem
  loc_10515C1:   Call 0.Method_Proc_289_57_10516F80 (CInt(var_86), var_98)
  loc_10515C9:   var_98.Text = vbNullString
  loc_10515E5:   Set var_8C = Me.TxtCardNo
  loc_10515EB:   Call 0.Method_Proc_289_57_10516F80 (CInt(var_86), var_98)
  loc_10515F3:   var_98.Tag = vbNullString
  loc_105160F:   Set var_8C = Me.TxtCrAc
  loc_1051615:   Call 0.Method_Proc_289_57_10516F80 (CInt(var_86), var_98)
  loc_105161D:   var_98.Tag = vbNullString
  loc_1051639:   Set var_8C = Me.TxtAmtCr
  loc_105163F:   Call 0.Method_Proc_289_57_10516F80 (CInt(var_86), var_98)
  loc_1051647:   var_98.Tag = vbNullString
  loc_1051663:   Set var_8C = Me.TxtRem
  loc_1051669:   Call 0.Method_Proc_289_57_10516F80 (CInt(var_86), var_98)
  loc_1051671:   var_98.Tag = vbNullString
  loc_1051680: Next var_9C 'Byte
  loc_1051697: Set var_8C = Me.txtM
  loc_105169D: Call 0.Method_Proc_289_57_10516F80 (CInt(5), var_98)
  loc_10516A5: var_98.defaultText = vbNullString
  loc_10516BE: Me.LblVPrefix.Caption = vbNullString
  loc_10516CF: Set var_8C = Me.TopCtrl1
  loc_10516D5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_10516E6: Set var_8C = Me.TopCtrl1
  loc_10516EC: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_10516F4: Exit Sub
End Sub

Public Sub Proc_289_58_1486A54
  'Data Table: 4F942C
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_E4 As Variant
  Dim var_108 As String
  Dim unk_4F9444 As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim var_12C As Variant
  Dim var_1F0 As Recordset15
  Dim var_130 As Variant
  Dim var_128 As Variant
  Dim var_8E As Integer
  Dim var_1F4 As Recordset15
  loc_1485E34: On Error Goto loc_1486A4B
  loc_1485E37: Call Proc_289_57_10516F8()
  loc_1485E48: Set var_94 = Me.FrDebit
  loc_1485E4E: Call 0.Method_Proc_289_58_1486A54C (var_96, var_8E)
  loc_1485E5C: For var_9A =  To (var_96 - 1): 1 = var_9A 'Integer
  loc_1485E6E:   Set var_94 = Me.FrDebit
  loc_1485E74:   Call 0.Method_Proc_289_58_1486A540 (var_8E, var_A0)
  loc_1485E7C:   var_A0.Visible = False
  loc_1485E8B: Next var_9A 'Integer
  loc_1485EA7: If (Me.RecordCount > 0) Then
  loc_1485EE9:   var_E4 = "SELECT S.Name as AcName,S.CardNo, L.* FROM Ledger L LEFT JOIN SubGroup S ON L.SubCode = S.SubCode Where DocID='" & Me.Fields.Item("DocID").Value 
  loc_1485F00:   unk_4F9444.Execute CStr(var_E4 & "' And AmtDr<>0 Order By V_SNo"), var_128, -1
  loc_1485F0B:   Set var_88 = var_12C
  loc_1485F5F:   var_12C = var_88.Fields
  loc_1485FC8:   var_194 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_12C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_148600D:   Me.LblUser.Caption = CStr(var_12C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_194)))
  loc_1486087:   var_130 = var_88.Fields.Item("U_AE")
  loc_14860E8:   var_194 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_130)) = "E"), "Last Update : ", "entdt : "))
  loc_148612D:   Me.LblLDt.Caption = CStr(var_194 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1486179:   If (var_88.RecordCount > 0) Then
  loc_148617F:     Set var_1F0 = var_88 
  loc_14861BF:     If (var_88.Fields.Item("V_Type").Value = "MCRV") Then
  loc_14861DC:       var_A0 = var_88.Fields.Item("V_Type")
  loc_14861E4:       var_C4 = var_A0.Value
  loc_14861F3:       global_60 = CStr(var_C4)
  loc_1486218:       Call 0.Method_Proc_289_58_1486A540 (CInt(6), var_A0)
  loc_1486220:       var_A0.Text = "Cash Rect."
  loc_1486240:       var_108 = "Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 And Nature='Cash' and (LOGSITE_CODE='" & MemVar_1F95078
  loc_1486250:       unk_4F9444.Execute var_108 & "' or LOGSITE_CODE='HO') Order by Name", var_C4, -1
  loc_1486261:       Set global_76 = Me.Txt
  loc_1486282:       CVarUnk
  loc_1486287:       VerifyVarObj
  loc_148628D:       Set var_94 = Me.DGAgAc
  loc_1486293:       LateIdStAd
  loc_14862A4:     Else
  loc_14862E0:       If (var_88.Fields.Item("V_Type").Value = "MBRV") Then
  loc_14862FD:         var_A0 = var_88.Fields.Item("V_Type")
  loc_1486305:         var_C4 = var_A0.Value
  loc_1486314:         global_60 = CStr(var_C4)
  loc_1486333:         Set var_94 = Me.Txt
  loc_1486339:         Call 0.Method_Proc_289_58_1486A540 (CInt(6), var_A0, "Bank Rect.")
  loc_1486341:         var_A0.Text = var_94
  loc_1486361:         var_108 = "Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 And Nature='Bank' and (LOGSITE_CODE='" & MemVar_1F95078
  loc_1486371:         unk_4F9444.Execute var_108 & "' or LOGSITE_CODE='HO') Order by Name", var_C4, -1
  loc_1486382:         Set global_76 = var_94
  loc_14863A3:         CVarUnk
  loc_14863A8:         VerifyVarObj
  loc_14863AE:         Set var_94 = Me.DGAgAc
  loc_14863B4:         LateIdStAd
  loc_14863C2:       End If
  loc_14863C2:     End If
  loc_14863D4:     var_94 = var_1F0.Fields
  loc_14863FB:     Set var_12C = Me.Txt
  loc_1486401:     Call 0.Method_Proc_289_58_1486A540 (CInt(0), var_130, CStr(var_94.Item("DocID").Value), var_94)
  loc_1486409:     var_130.Text = global_76
  loc_1486457:     Me.LblVPrefix.Caption = CStr(var_1F0.Fields.Item("v_Prefix").Value)
  loc_14864BD:     Set var_12C = Me.Txt
  loc_14864C3:     Call 0.Method_Proc_289_58_1486A540 (CInt(2), var_130, CStr(Format(CVar(var_1F0.Fields.Item("V_DATE")), "dd/MMM/yyyy")), 1)
  loc_14864CB:     var_130.Text = 1
  loc_14864F7:     var_94 = var_1F0.Fields
  loc_148651E:     Set var_12C = Me.Txt
  loc_1486524:     Call 0.Method_Proc_289_58_1486A540 (CInt(1), var_130, CStr(var_94.Item("V_NO").Value))
  loc_148652C:     var_130.Text = var_94
  loc_1486586:     var_128 = CVar(CStr(Format(CVar(var_1F0.Fields.Item("U_EntDt")), "hh:mm"))) 'String
  loc_1486595:     Set var_12C = Me.txtM
  loc_148659B:     Call 0.Method_Proc_289_58_1486A540 (CInt(5), var_130, var_128, 1)
  loc_14865A3:     var_130.defaultText = 1
  loc_14865F2:     Set var_12C = Me.Txt
  loc_14865F8:     Call 0.Method_Proc_289_58_1486A540 (CInt(5), var_130)
  loc_1486600:     var_130.Tag = Proc_6_38_E69628(CVar(var_1F0.Fields.Item("subcode")), global_76)
  loc_148664A:     Set var_12C = Me.Txt
  loc_1486650:     Call 0.Method_Proc_289_58_1486A540 (CInt(5), var_130)
  loc_1486658:     var_130.Text = Proc_6_38_E69628(CVar(var_1F0.Fields.Item("AcName")))
  loc_14866BE:     Set var_12C = Me.Txt
  loc_14866C4:     Call 0.Method_Proc_289_58_1486A540 (CInt(3), var_130, CStr(Format(CVar(var_1F0.Fields.Item("AmtDr")), "0.00")))
  loc_14866CC:     var_130.Text = 1
  loc_148671C:     Set var_12C = Me.Txt
  loc_1486722:     Call 0.Method_Proc_289_58_1486A540 (CInt(4), var_130)
  loc_148672A:     var_130.Text = Proc_6_38_E69628(CVar(var_1F0.Fields.Item("Narration")), 1)
  loc_1486740:     Set var_1F0 = Nothing 
  loc_1486744:   End If
  loc_1486783:   var_E4 = "SELECT S.Name as AcName,S.CardNo, L.* FROM Ledger L LEFT JOIN SubGroup S ON L.SubCode = S.SubCode Where DocID='" & Me.Fields.Item("DocID").Value 
  loc_148679A:   unk_4F9444.Execute CStr(var_E4 & "' And AmtCr<>0 Order By V_SNo"), var_128, -1
  loc_14867A5:   Set var_88 = var_12C
  loc_14867D3:   If (var_88.RecordCount > 0) Then
  loc_14867D8:     var_8E = 0
  loc_14867DB:     ' Referenced from: 1486A06
  loc_14867EA:     If Not(var_88.EOF) Then
  loc_14867F0:       Set var_1F4 = var_88 
  loc_148682F:       Call 0.Method_Proc_289_58_1486A540 (var_8E, var_130, Proc_6_38_E69628(CVar(var_1F4.Fields.Item("CardNo")), var_8E))
  loc_1486837:       var_130.Text = Me.TxtCardNo
  loc_1486880:       Set var_12C = Me.TxtCrAc
  loc_1486886:       Call 0.Method_Proc_289_58_1486A540 (var_8E, var_130)
  loc_148688E:       var_130.Tag = Proc_6_38_E69628(CVar(var_1F4.Fields.Item("subcode")))
  loc_14868D7:       Set var_12C = Me.TxtCrAc
  loc_14868DD:       Call 0.Method_Proc_289_58_1486A540 (var_8E, var_130)
  loc_14868E5:       var_130.Text = Proc_6_38_E69628(CVar(var_1F4.Fields.Item("AcName")))
  loc_148694A:       Set var_12C = Me.TxtAmtCr
  loc_1486950:       Call 0.Method_Proc_289_58_1486A540 (var_8E, var_130, CStr(Format(CVar(var_1F4.Fields.Item("AmtCr")), "0.00")))
  loc_1486958:       var_130.Text = 1
  loc_1486989:       var_A0 = var_1F4.Fields.Item("Narration")
  loc_14869A7:       Set var_12C = Me.TxtRem
  loc_14869AD:       Call 0.Method_Proc_289_58_1486A540 (var_8E, var_130)
  loc_14869B5:       var_130.Text = Proc_6_38_E69628(CVar(var_A0), 1)
  loc_14869CB:       Set var_1F4 = Nothing 
  loc_14869DB:       Set var_94 = Me.FrDebit
  loc_14869E1:       Call 0.Method_Proc_289_58_1486A540 (var_8E, var_A0)
  loc_14869E9:       var_A0.Visible = True
  loc_14869FB:       var_8E = (var_8E + 1)
  loc_1486A01:       var_88.MoveNext
  loc_1486A06:       GoTo loc_14867DB
  loc_1486A09:     End If
  loc_1486A09:   End If
  loc_1486A11:   Set var_94 = Me.TopCtrl1
  loc_1486A17:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(True)
  loc_1486A27:   Set var_94 = Me.TopCtrl1
  loc_1486A2D:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(True)
  loc_1486A38: Else
  loc_1486A38:   Call Proc_289_57_10516F8(var_8E)
  loc_1486A3D: End If
  loc_1486A3D: Call Proc_289_60_EF3C08(var_94)
  loc_1486A47: Set var_88 = Nothing
  loc_1486A4A: Exit Sub
  loc_1486A4B: ' Referenced from: 1485E34
  loc_1486A4B: Proc_6_60_E63754()
  loc_1486A50: Exit Sub
End Sub

Public Sub Proc_289_59_FD1CA4(arg_C) 'FD1CA4
  'Data Table: 4F942C
  Dim var_98 As Variant
  loc_FD1ADA: Set var_8C = Me.Txt
  loc_FD1AE0: Call 0.Method_Proc_289_59_FD1CA4C (var_8E, var_86)
  loc_FD1AF0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FD1B06:   Set var_8C = Me.Txt
  loc_FD1B0C:   Call 0.Method_Proc_289_59_FD1CA40 (CInt(var_86), var_98)
  loc_FD1B14:   var_98.Enabled = arg_C
  loc_FD1B23: Next var_92 'Byte
  loc_FD1B37: Set var_8C = Me.FrDebit
  loc_FD1B3D: Call 0.Method_Proc_289_59_FD1CA4C (var_8E, var_86)
  loc_FD1B4D: For var_9C =  To CByte((var_8E - 1)): CByte(0) = var_9C 'Byte
  loc_FD1B63:   Set var_8C = Me.TxtCardNo
  loc_FD1B69:   Call 0.Method_Proc_289_59_FD1CA40 (CInt(var_86), var_98)
  loc_FD1B71:   var_98.Enabled = arg_C
  loc_FD1B8D:   Set var_8C = Me.TxtCrAc
  loc_FD1B93:   Call 0.Method_Proc_289_59_FD1CA40 (CInt(var_86), var_98)
  loc_FD1B9B:   var_98.Enabled = arg_C
  loc_FD1BB7:   Set var_8C = Me.TxtAmtCr
  loc_FD1BBD:   Call 0.Method_Proc_289_59_FD1CA40 (CInt(var_86), var_98)
  loc_FD1BC5:   var_98.Enabled = arg_C
  loc_FD1BE1:   Set var_8C = Me.TxtRem
  loc_FD1BE7:   Call 0.Method_Proc_289_59_FD1CA40 (CInt(var_86), var_98)
  loc_FD1BEF:   var_98.Enabled = arg_C
  loc_FD1BFE: Next var_9C 'Byte
  loc_FD1C11: Set var_8C = Me.Txt
  loc_FD1C17: Call 0.Method_Proc_289_59_FD1CA40 (CInt(2), var_98)
  loc_FD1C1F: var_98.Enabled = False
  loc_FD1C38: Set var_8C = Me.Txt
  loc_FD1C3E: Call 0.Method_Proc_289_59_FD1CA40 (CInt(1), var_98)
  loc_FD1C46: var_98.Enabled = False
  loc_FD1C62: Set var_8C = Me.txtM
  loc_FD1C68: Call 0.Method_Proc_289_59_FD1CA40 (CInt(5), var_98)
  loc_FD1C70: var_98.Enabled = False
  loc_FD1C89: Set var_8C = Me.Txt
  loc_FD1C8F: Call 0.Method_Proc_289_59_FD1CA40 (CInt(0), var_98)
  loc_FD1C97: var_98.Enabled = False
  loc_FD1CA3: Exit Sub
End Sub

Public Sub Proc_289_60_EF3C08
  'Data Table: 4F942C
  loc_EF3B4C: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_EF3B5E:   Me.DGAgAc.Visible = False
  loc_EF3B66: End If
  loc_EF3B82: If (CBool(Me.DGCrAc.Visible) = &HFF) Then
  loc_EF3B94:   Me.DGCrAc.Visible = False
  loc_EF3B9C: End If
  loc_EF3BB7: If (Me.FrmList.Visible = &HFF) Then
  loc_EF3BC6:   Me.FrmList.Visible = False
  loc_EF3BCE: End If
  loc_EF3BEA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF3BFC:   Me.FGPoint.Visible = False
  loc_EF3C04: End If
  loc_EF3C04: Exit Sub
End Sub

Public Sub Proc_289_61_E91120(arg_C) 'E91120
  'Data Table: 4F942C
  Dim var_10C As TextBox
  loc_E910B4: Call Proc_289_60_EF3C08()
  loc_E910F0: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E910F3:   Call TopCtrl1_UnknownEvent_16()
  loc_E910FB: Else
  loc_E91105:   Set var_108 = Me.Txt
  loc_E9110B:   Call 0.Method_Proc_289_61_E911200 (arg_C)
  loc_E91113:   var_10C.SetFocus
  loc_E9111F: End If
  loc_E9111F: Exit Sub
End Sub

Public Sub Proc_289_62_115E448
  'Data Table: 4F942C
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_115E0E0: var_90 = global_60
  loc_115E0F7: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_115E11A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115E128: Set var_B4 = Me.Txt
  loc_115E12E: Call 0.Method_Proc_289_62_115E4480 (CInt(2), var_B8, var_E8)
  loc_115E13D: Proc_6_7_F26918(var_D8, CVar(var_B8), var_13C)
  loc_115E145: var_F8 = -1 & var_D8 
  loc_115E159: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115E164: Set var_8C = var_140
  loc_115E1A0: If (var_8C.RecordCount <= 0) Then
  loc_115E1BC:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115E1CF:   var_88 = vbNullString
  loc_115E1D2:   Proc_289_62_115E448 = 
  loc_115E1D8: End If
  loc_115E1EC: If (var_8C.RecordCount > 0) Then
  loc_115E22B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115E248:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115E259:     var_9C = CStr(var_B8.Value)
  loc_115E274:     Set var_B4 = Me.Txt
  loc_115E27A:     Call 0.Method_Proc_289_62_115E4480 (CInt(1), var_B8)
  loc_115E290:     var_94 = CLng(Val(var_B8.Text))
  loc_115E2A0:   Else
  loc_115E2CB:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115E2F2:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115E307:     var_D8 = (var_B8.Value + 1)
  loc_115E30D:     var_94 = CLng(var_D8)
  loc_115E31E:   End If
  loc_115E31E: End If
  loc_115E349: var_C8 = Space((5 - Len(var_90)))
  loc_115E351: var_E8 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_B8.Value)
  loc_115E35B: var_F8 = (var_E8 + CVar(var_9C))
  loc_115E36C: var_118 = Space((5 - Len(var_9C)))
  loc_115E374: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115E38A: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115E392: var_188 = (var_13C + var_178)
  loc_115E39E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115E3A3: var_98 = CStr(var_1A8)
  loc_115E3D3: Me.LblVPrefix.Caption = var_9C
  loc_115E3E9: Set var_B4 = Me.Txt
  loc_115E3EF: Call 0.Method_Proc_289_62_115E4480 (CInt(0), var_B8)
  loc_115E3F7: var_B8.Text = var_98
  loc_115E416: Set var_B4 = Me.Txt
  loc_115E41C: Call 0.Method_Proc_289_62_115E4480 (CInt(1), var_B8)
  loc_115E424: var_B8.Text = CStr(var_94)
  loc_115E436: var_88 = var_98
  loc_115E43E: Set var_8C = Nothing
  loc_115E441: Proc_289_62_115E448 = var_94
End Sub

Public Sub Proc_289_63_EE5548
  'Data Table: 4F942C
  loc_EE5496: On Error Goto loc_EE54DC
  loc_EE54AE: Call 0.Method_arg_18C (var_8C)
  loc_EE54B6: Call var_8C.Show
  loc_EE54CB: Call 0.Method_arg_188 (var_B0)
  loc_EE54D3: var_88 = var_B0
  loc_EE54D6: Proc_289_63_EE5548 = 1
  loc_EE54DC: ' Referenced from: EE5496
  loc_EE54E4: Set var_8C = Err()
  loc_EE54EA: Call 0.Method_arg_1C (var_B4)
  loc_EE54FB: If (var_B4 <> 0) Then
  loc_EE5506:   Set var_8C = Err()
  loc_EE550C:   Call 0.Method_arg_2C (var_B0)
  loc_EE552D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE5540: End If
  loc_EE5540: Proc_289_63_EE5548 = 
End Sub
