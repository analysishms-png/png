VERSION 5.00
Begin VB.Form MemTagadaLetter
  Caption = "Payment Due Letter Entry"
  ForeColor = &H0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  Icon = "MemTagadaLetter.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 105
  ClientTop = 600
  ClientWidth = 10680
  ClientHeight = 7065
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  PaletteMode = 1
  Begin Frame FrArticle
    Caption = "Article"
    Left = 360
    Top = 3720
    Width = 17295
    Height = 5010
    Visible = 0   'False
    TabIndex = 27
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin MSFlexGrid FGPoint
      Left = 7185
      Top = 660
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 69
    End
    Begin DataGrid DgMemType
      Left = 4605
      Top = 480
      Width = 4830
      Height = 2730
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 68
    End
    Begin TextBox Text1
      Index = 24
      ForeColor = &HFF0000&
      Left = 2445
      Top = 30
      Width = 3375
      Height = 240
      TabIndex = 66
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
    Begin CommandButton CmdRefresh1
      Caption = "Re&fresh"
      Left = 8880
      Top = 240
      Width = 1650
      Height = 375
      Visible = 0   'False
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
    Begin TextBox Text1
      Index = 22
      ForeColor = &HFF0000&
      Left = 2445
      Top = 795
      Width = 2055
      Height = 240
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
    Begin TextBox Text1
      Index = 21
      ForeColor = &HFF0000&
      Left = 2445
      Top = 540
      Width = 2055
      Height = 240
      TabIndex = 35
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
    Begin TextBox Text1
      Index = 20
      ForeColor = &HFF0000&
      Left = 2445
      Top = 285
      Width = 2055
      Height = 240
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
    Begin CheckBox Check1
      Caption = "All"
      BackColor = &H808080&
      ForeColor = &HFFFFFF&
      Left = 330
      Top = 1215
      Width = 915
      Height = 195
      TabIndex = 28
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
    Begin MSHFlexGrid GridSel
      Left = 240
      Top = 1200
      Width = 17040
      Height = 3480
      TabIndex = 29
    End
    Begin BtnEnh CmdRefresh
      Left = 6075
      Top = 0
      Width = 1470
      Height = 1065
      TabIndex = 64
    End
    Begin Label Label1
      Caption = "Member Category"
      Index = 24
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = 315
      Top = 45
      Width = 1890
      Height = 240
      TabIndex = 67
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Curr. Bill Month"
      Index = 15
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = 300
      Top = 810
      Width = 1485
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Debit Amt. Upto Date"
      Index = 14
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = 300
      Top = 555
      Width = 1980
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Debit Amt. >="
      Index = 13
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = 300
      Top = 300
      Width = 1290
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
      Appearance = 0 'Flat
    End
  End
  Begin TextBox Text1
    Index = 23
    Left = 7995
    Top = 3150
    Width = 1740
    Height = 240
    TabIndex = 61
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    Appearance = 0 'Flat
  End
  Begin Frame FrPrinting
    Caption = "Printing"
    Left = 10440
    Top = 8655
    Width = 5265
    Height = 1665
    Visible = 0   'False
    TabIndex = 54
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdmultiPrint
      Caption = "PRINT"
      Left = 2670
      Top = 930
      Width = 1065
      Height = 450
      TabIndex = 56
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &HC000C0&
      UseMaskColor = -1  'True
      Style = 1
    End
    Begin CommandButton CmdExit
      Caption = "EXIT"
      Left = 3780
      Top = 930
      Width = 1065
      Height = 450
      TabIndex = 55
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &HC000C0&
      UseMaskColor = -1  'True
      Style = 1
    End
    Begin DataCombo TXT_FROMBILLNO
      Left = 915
      Top = 405
      Width = 1560
      Height = 360
      TabIndex = 57
    End
    Begin DataCombo TXT_TOBILLNO
      Left = 3270
      Top = 405
      Width = 1560
      Height = 360
      TabIndex = 58
    End
    Begin Label LblTo
      Caption = "To"
      ForeColor = &H0&
      Left = 2700
      Top = 465
      Width = 225
      Height = 210
      TabIndex = 60
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
    Begin Label LblFrom
      Caption = "From"
      ForeColor = &H0&
      Left = 300
      Top = 465
      Width = 450
      Height = 210
      TabIndex = 59
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
  End
  Begin TextBox Text1
    Index = 19
    Left = 10710
    Top = 2385
    Width = 1410
    Height = 240
    TabIndex = 52
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 18
    Left = 7995
    Top = 2895
    Width = 1740
    Height = 240
    TabIndex = 50
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 17
    Left = 10710
    Top = 2640
    Width = 1410
    Height = 240
    TabIndex = 48
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 16
    Left = 7995
    Top = 2640
    Width = 1740
    Height = 240
    TabIndex = 46
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 15
    Left = 7995
    Top = 2385
    Width = 1740
    Height = 240
    TabIndex = 44
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 14
    Left = 7995
    Top = 2130
    Width = 4125
    Height = 240
    TabIndex = 42
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 13
    Left = 7995
    Top = 1875
    Width = 4125
    Height = 240
    TabIndex = 40
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 12
    Left = 7995
    Top = 1620
    Width = 4125
    Height = 240
    TabIndex = 30
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrArticles
    Left = 2040
    Top = 405
    Width = 9135
    Height = 525
    TabIndex = 24
    BorderStyle = 0 'None
    Begin OptionButton OptArticles
      Caption = "Article_23"
      Index = 2
      ForeColor = &HFF00FF&
      Left = 6780
      Top = 240
      Width = 2085
      Height = 270
      TabIndex = 65
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
    Begin OptionButton OptArticles
      Caption = "Article_26(b)"
      Index = 1
      ForeColor = &HFF00FF&
      Left = 3525
      Top = 240
      Width = 2085
      Height = 270
      TabIndex = 26
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
    Begin OptionButton OptArticles
      Caption = "Article_26(a)"
      Index = 0
      ForeColor = &HFF00FF&
      Left = 270
      Top = 240
      Width = 2085
      Height = 270
      TabIndex = 25
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
  Begin TextBox Text1
    Index = 11
    ForeColor = &HFF0000&
    Left = 7995
    Top = 1260
    Width = 4125
    Height = 240
    TabIndex = 11
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
  Begin TextBox Text1
    Index = 9
    ForeColor = &HFF0000&
    Left = 1845
    Top = 3045
    Width = 4005
    Height = 240
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
  Begin TextBox Text1
    Index = 10
    ForeColor = &HFF0000&
    Left = 1845
    Top = 3300
    Width = 4005
    Height = 240
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
  Begin TextBox Text1
    Index = 8
    ForeColor = &HFF0000&
    Left = 1845
    Top = 2790
    Width = 4005
    Height = 240
    TabIndex = 8
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
  Begin TextBox Text1
    Index = 4
    ForeColor = &HFF0000&
    Left = 1845
    Top = 1770
    Width = 4005
    Height = 240
    TabIndex = 4
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
  Begin TextBox Text1
    Index = 7
    ForeColor = &HFF0000&
    Left = 1845
    Top = 2535
    Width = 4005
    Height = 240
    TabIndex = 7
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
  Begin TextBox Text1
    Index = 6
    ForeColor = &HFF0000&
    Left = 1845
    Top = 2280
    Width = 4005
    Height = 240
    TabIndex = 6
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
  Begin TextBox Text1
    Index = 1
    ForeColor = &HFF0000&
    Left = 1845
    Top = 1260
    Width = 615
    Height = 240
    TabIndex = 1
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
  Begin TextBox Text1
    Index = 0
    Left = 1845
    Top = 1005
    Width = 1425
    Height = 240
    Enabled = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
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
  Begin TextBox Text1
    Index = 5
    ForeColor = &HFF0000&
    Left = 1845
    Top = 2025
    Width = 4005
    Height = 240
    TabIndex = 5
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
  Begin TextBox Text1
    Index = 2
    ForeColor = &HFF0000&
    Left = 2475
    Top = 1260
    Width = 3375
    Height = 240
    TabIndex = 2
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
  Begin TextBox Text1
    Index = 3
    ForeColor = &HFF0000&
    Left = 1845
    Top = 1515
    Width = 4005
    Height = 240
    TabIndex = 3
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10680
    Height = 450
    TabIndex = 63
  End
  Begin DataGrid DBGrid1
    Left = 360
    Top = 3720
    Width = 13680
    Height = 4665
    TabIndex = 23
  End
  Begin Label Label1
    Caption = "Tot Due Amount"
    Index = 23
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6330
    Top = 3165
    Width = 1530
    Height = 210
    TabIndex = 62
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Till Date"
    Index = 22
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 9825
    Top = 2400
    Width = 900
    Height = 210
    TabIndex = 53
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Month"
    Index = 21
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 9825
    Top = 2655
    Width = 525
    Height = 210
    TabIndex = 51
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Credit Amount"
    Index = 20
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6330
    Top = 2910
    Width = 1530
    Height = 210
    TabIndex = 49
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Cur. Bill Amount"
    Index = 19
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6360
    Top = 2655
    Width = 1305
    Height = 210
    TabIndex = 47
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Due Amount"
    Index = 18
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6345
    Top = 2400
    Width = 1305
    Height = 210
    TabIndex = 45
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Email"
    Index = 17
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6345
    Top = 2145
    Width = 1050
    Height = 210
    TabIndex = 43
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Fax"
    Index = 16
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6345
    Top = 1890
    Width = 405
    Height = 210
    TabIndex = 41
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Mobile(s)"
    Index = 12
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6345
    Top = 1635
    Width = 975
    Height = 210
    TabIndex = 32
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Card No."
    Index = 3
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 1530
    Width = 945
    Height = 210
    TabIndex = 31
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Phone(s)"
    Index = 11
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6360
    Top = 1260
    Width = 990
    Height = 210
    TabIndex = 22
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Pin Code"
    Index = 9
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 3060
    Width = 1080
    Height = 210
    TabIndex = 21
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Index = 7
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 330
    Top = 2535
    Width = 870
    Height = 240
    TabIndex = 20
    BackStyle = 0 'Transparent
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "City"
    Index = 8
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 2805
    Width = 780
    Height = 210
    TabIndex = 19
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Index = 6
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 330
    Top = 2280
    Width = 1125
    Height = 210
    TabIndex = 18
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "State"
    Index = 10
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 3315
    Width = 690
    Height = 210
    TabIndex = 17
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Serial No."
    Index = 0
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 1005
    Width = 945
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Member Name"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 1275
    Width = 1425
    Height = 210
    TabIndex = 15
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "A/C Name"
    Index = 4
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 1785
    Width = 1065
    Height = 210
    TabIndex = 14
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Address"
    Index = 5
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 2025
    Width = 645
    Height = 210
    TabIndex = 13
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Index = 2
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 780
    Top = 1275
    Width = 705
    Height = 210
    TabIndex = 12
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
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "MemTagadaLetter"

Private global_64 As Integer
Private global_68 As Recordset15

Private Sub CmdRefresh_UnknownEvent_9 '10276F8
  'Data Table: 4D5020
  loc_10274C7: If (global_52 = "Article_26(a)") Then
  loc_10274D5:   Set var_88 = Me.Text1
  loc_10274DB:   Call 0.Method_CmdRefresh_UnknownEvent_90 (CInt(&H15))
  loc_1027504:   If (Proc_6_27_EA61EC(var_8C, "Debit Upto Date") = 0) Then
  loc_1027507:     Exit Sub
  loc_1027508:   End If
  loc_1027513:   Set var_88 = Me.Text1
  loc_1027519:   Call 0.Method_CmdRefresh_UnknownEvent_90 (CInt(&H16), var_8C)
  loc_1027542:   If (Proc_6_27_EA61EC(var_8C, "Current Bill Month") = 0) Then
  loc_1027545:     Exit Sub
  loc_1027546:   End If
  loc_102754F:   Set var_88 = Me.CmdRefresh
  loc_1027555:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_102755D:   Call Proc_290_37_178FFC0(var_8C)
  loc_102756A:   Set var_88 = Me.CmdRefresh
  loc_1027570:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_102757B: Else
  loc_1027586:   If (global_52 = "Article_26(b)") Then
  loc_1027594:     Set var_88 = Me.Text1
  loc_102759A:     Call 0.Method_CmdRefresh_UnknownEvent_90 (CInt(&H15))
  loc_10275C3:     If (Proc_6_27_EA61EC(var_8C, "Article_26(a) Entry Date") = 0) Then
  loc_10275C6:       Exit Sub
  loc_10275C7:     End If
  loc_10275D2:     Set var_88 = Me.Text1
  loc_10275D8:     Call 0.Method_CmdRefresh_UnknownEvent_90 (CInt(&H16), var_8C)
  loc_1027601:     If (Proc_6_27_EA61EC(var_8C, "Current Bill Month") = 0) Then
  loc_1027604:       Exit Sub
  loc_1027605:     End If
  loc_102760E:     Set var_88 = Me.CmdRefresh
  loc_1027614:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_102761C:     Call Proc_290_37_178FFC0(var_8C)
  loc_1027629:     Set var_88 = Me.CmdRefresh
  loc_102762F:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_102763A:   Else
  loc_1027645:     If (global_52 = "Article_23") Then
  loc_1027653:       Set var_88 = Me.Text1
  loc_1027659:       Call 0.Method_CmdRefresh_UnknownEvent_90 (CInt(&H15))
  loc_1027682:       If (Proc_6_27_EA61EC(var_8C, "Debit Upto Date") = 0) Then
  loc_1027685:         Exit Sub
  loc_1027686:       End If
  loc_1027691:       Set var_88 = Me.Text1
  loc_1027697:       Call 0.Method_CmdRefresh_UnknownEvent_90 (CInt(&H16), var_8C)
  loc_10276C0:       If (Proc_6_27_EA61EC(var_8C, "Current Bill Month") = 0) Then
  loc_10276C3:         Exit Sub
  loc_10276C4:       End If
  loc_10276CD:       Set var_88 = Me.CmdRefresh
  loc_10276D3:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_10276DB:       Call Proc_290_37_178FFC0(var_8C)
  loc_10276E8:       Set var_88 = Me.CmdRefresh
  loc_10276EE:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_10276F6:     End If
  loc_10276F6:   End If
  loc_10276F6: End If
  loc_10276F6: Exit Sub
End Sub

Private Sub Text1_GotFocus(Index As Integer) 'FF238C
  'Data Table: 4D5020
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_EE As Integer
  loc_FF21BA: Set var_88 = Me.Text1
  loc_FF21C0: Call 0.Method_Text1_GotFocus0 (Index)
  loc_FF21CE: Proc_6_74_E23240(var_8C)
  loc_FF21DA: Call Proc_290_38_E55D5C(var_8C)
  loc_FF21E2: var_92 = Index
  loc_FF21ED: If (var_92 = CInt(&H18)) Then
  loc_FF2207:   If (Me.RecordCount > 0) Then
  loc_FF2215:     Set var_8C = Me.FGPoint
  loc_FF222D:     Proc_6_137_1192FDC(Me.DgMemType, global_56, Index)
  loc_FF223B:   End If
  loc_FF2289:   Set var_88 = Me.Text1
  loc_FF228F:   Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_A0)
  loc_FF2297:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FF22AF:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FF22B2:     Exit Sub
  loc_FF22B3:   End If
  loc_FF22C0:   Set var_88 = Me.Text1
  loc_FF22C6:   Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_FF22CE:   var_A0 = var_8C.Text
  loc_FF22E0:   var_B0 = "Name"
  loc_FF231B:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FF2324:     Me.MoveFirst
  loc_FF2347:     Set var_88 = Me.Text1
  loc_FF234D:     Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FF2355:     0 = var_8C.Text
  loc_FF236E:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FF2383:   End If
  loc_FF2383: End If
  loc_FF2386: var_EE = Index
  loc_FF2389: Exit Sub
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer) '10C1324
  'Data Table: 4D5020
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_C4 As String
  loc_10C105E: If (CLng(Shift) = &H1B) Then
  loc_10C1061:   Call Proc_290_38_E55D5C()
  loc_10C1066:   Exit Sub
  loc_10C1067: End If
  loc_10C106A: var_88 = KeyCode
  loc_10C1075: If (var_88 = CInt(&H18)) Then
  loc_10C1095:   Set var_9C = Me.FGPoint
  loc_10C10A0:   Set var_98 = Nothing
  loc_10C10CE:   Proc_6_69_134A630(Me.DgMemType, Me.Text1, KeyCode, global_56, Shift, 0)
  loc_10C10ED:   var_B0 = Me.RecordCount
  loc_10C113D:   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10C1144:     Set var_98 = Me.DgMemType
  loc_10C1163:     Proc_6_138_106E830(var_98, global_56, KeyCode, Me.FGPoint, 1)
  loc_10C1171:   End If
  loc_10C1171: End If
  loc_10C11AA: If ((CBool(Me.DgMemType.Visible) = 0) And (Me.FrArticle.Visible = 0)) Then
  loc_10C11C2:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10C11CB:     Proc_6_75_E5335C(Shift, arg_14, var_98)
  loc_10C11D0:   End If
  loc_10C11D4:   Set var_8C = Me.TopCtrl1
  loc_10C11DA:   Call {C25E4434-8C28-414A-9B911155EADDC28A}.DispID_68030005(var_9C)
  loc_10C11F3:   If (CStr(0) = "Add") Then
  loc_10C120B:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10C1214:       Proc_6_76_E533C8(Shift, arg_14)
  loc_10C1219:     End If
  loc_10C121C:   Else
  loc_10C1220:     Set var_8C = Me.TopCtrl1
  loc_10C1226:     Call {C25E4434-8C28-414A-9B911155EADDC28A}.DispID_68030005(var_88)
  loc_10C122E:     var_C4 = CStr()
  loc_10C123F:     If (var_C4 = "Edit") Then
  loc_10C1257:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10C1260:         Proc_6_76_E533C8(Shift)
  loc_10C1265:       End If
  loc_10C1265:     End If
  loc_10C1265:   End If
  loc_10C1280:   If (Me.FrArticle.Visible = &HFF) Then
  loc_10C1298:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10C12A1:       Proc_6_75_E5335C(Shift, arg_14)
  loc_10C12A6:     End If
  loc_10C12B0:     If (CLng(Shift) = &H26) Then
  loc_10C12B9:       Proc_6_76_E533C8(Shift, arg_14)
  loc_10C12BE:     End If
  loc_10C12BE:   End If
  loc_10C12BE: End If
  loc_10C12BE: Exit Sub
  loc_10C12C7: Set var_8C = Err()
  loc_10C12CD: Call 0.Method_arg_1C (var_B0)
  loc_10C12DE: If (var_B0 <> 0) Then
  loc_10C12E9:   Set var_8C = Err()
  loc_10C12EF:   Call 0.Method_arg_2C (var_C4)
  loc_10C1310:   MsgBox(CVar(var_C4), &H40, "Validation", var_104, var_124)
  loc_10C1323: End If
  loc_10C1323: Exit Sub
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer) 'F0395C
  'Data Table: 4D5020
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F03886: Proc_6_133_E7FB08(var_94)
  loc_F0389B: If (CInt(var_94) = &HD) Then
  loc_F038A0:   arg_10 = 0
  loc_F038A3: End If
  loc_F038A6: Proc_6_58_E06050(arg_10, arg_10)
  loc_F038AE: var_96 = KeyAscii
  loc_F038B9: If (var_96 = CInt(&H14)) Then
  loc_F038C6:   Set var_9C = Me.Text1
  loc_F038CC:   Call 0.Method_Text1_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_F038E7:   Proc_6_42_129B55C(var_A0, arg_10, 9)
  loc_F038F6: Else
  loc_F038FE:   If (var_96 = CInt(&H18)) Then
  loc_F0391D:     If (CBool(Me.DgMemType.Visible) = &HFF) Then
  loc_F0394A:       Proc_183_41_145A968(Me.Text1, KeyAscii, global_56, arg_10, "Name")
  loc_F03959:     End If
  loc_F03959:   End If
  loc_F03959: End If
  loc_F03959: Exit Sub
End Sub

Private Sub Text1_KeyUp(KeyCode As Integer, Shift As Integer) 'E00F64
  'Data Table: 4D5020
  Dim var_86 As Integer
  loc_E00F5F: var_86 = KeyCode
  loc_E00F62: Exit Sub
End Sub

Private Sub Text1_LostFocus(Index As Integer) 'E4A884
  'Data Table: 4D5020
  loc_E4A862: Set var_88 = Me.Text1
  loc_E4A868: Call 0.Method_Text1_LostFocus0 (Index)
  loc_E4A876: Proc_6_73_E23294(var_8C)
  loc_E4A882: Exit Sub
End Sub

Private Sub Text1_Validate(Cancel As Boolean) '1135138
  'Data Table: 4D5020
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_F8 As Double
  Dim var_C4 As Variant
  Dim var_EC As TextBox
  Dim var_94 As String
  Dim var_FC As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  loc_1134DCB: var_86 = Cancel
  loc_1134DD6: If (var_86 = CInt(&H14)) Then
  loc_1134DE6:   Set var_8C = Me.Text1
  loc_1134DEC:   Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_1134E01:   var_F8 = Val(var_90.Text)
  loc_1134E39:   Set var_E8 = Me.Text1
  loc_1134E3F:   Call 0.Method_Text1_Validate0 (Cancel, var_EC, CStr(Format(CVar(var_F8), "0.00")), 1)
  loc_1134E47:   var_EC.Text = 1
  loc_1134E6A: Else
  loc_1134E72:   If (var_86 = CInt(&H15)) Then
  loc_1134E7F:     Set var_8C = Me.Text1
  loc_1134E85:     Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_1134EA6:     Set var_EC = Me.Text1
  loc_1134EAC:     Call 0.Method_Text1_Validate0 (CInt(&H15), var_FC)
  loc_1134EB4:     var_FC.Text = Proc_6_33_15125B8(var_90, var_F8)
  loc_1134ECA:   Else
  loc_1134ED2:     If (var_86 = CInt(&H16)) Then
  loc_1134EDF:       Set var_8C = Me.Text1
  loc_1134EE5:       Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_1134EF8:       var_94 = Proc_6_120_133AEC8(var_90)
  loc_1134F06:       Set var_EC = Me.Text1
  loc_1134F0C:       Call 0.Method_Text1_Validate0 (CInt(&H16), var_FC)
  loc_1134F14:       var_FC.Text = var_94
  loc_1134F2A:     Else
  loc_1134F32:       If (var_86 = CInt(&H18)) Then
  loc_1134F3F:         Set var_8C = Me.Text1
  loc_1134F45:         Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_1134F6E:         If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1134F7E:           Set var_8C = Me.Text1
  loc_1134F84:           Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_1134F8C:           var_90.Tag = vbNullString
  loc_1134F98:         End If
  loc_1134FD9:         var_C4 = ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF)))
  loc_1134FEA:         Set var_8C = Me.Text1
  loc_1134FF0:         Call 0.Method_Text1_Validate0 (Cancel, var_90, var_94)
  loc_1134FF8:         var_C4 = var_90.Text
  loc_113502E:         If CBool(var_86 Or (Trim(CVar(var_94)) = vbNullString)) Then
  loc_113503E:           Set var_8C = Me.Text1
  loc_1135044:           Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_113504C:           var_90.Text = vbNullString
  loc_1135065:           Set var_8C = Me.Text1
  loc_113506B:           Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_1135073:           var_90.Tag = vbNullString
  loc_1135082:         Else
  loc_11350BA:           Set var_E8 = Me.Text1
  loc_11350C0:           Call 0.Method_Text1_Validate0 (Cancel, var_EC)
  loc_11350C8:           var_EC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_1135114:           Set var_E8 = Me.Text1
  loc_113511A:           Call 0.Method_Text1_Validate0 (Cancel, var_EC)
  loc_1135122:           var_EC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("Code")))
  loc_1135136:         End If
  loc_1135136:       End If
  loc_1135136:     End If
  loc_1135136:   End If
  loc_1135136: End If
  loc_1135136: Exit Sub
End Sub

Private Sub Form_Load() '1000D44
  'Data Table: 4D5020
  Dim var_88 As Variant
  Dim var_AC As OptionButton
  Dim var_C4 As Variant
  Dim Me As Recordset15
  loc_1000B38: On Error Goto loc_1000D3B
  loc_1000B42: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1000B55: Me.FrArticles.BackColor = CLng(MemVar_1F951B4)
  loc_1000B6B: Me.FrArticle.BackColor = CLng(MemVar_1F951B4)
  loc_1000B86: Me.GridSel.BackColorBkg = CVar(CLng(MemVar_1F951B4))
  loc_1000B9B: Set var_88 = Me.OptArticles
  loc_1000BA1: Call 0.Method_Form_Load0 (0, var_AC)
  loc_1000BA9: var_AC.BackColor = CLng(MemVar_1F951B4)
  loc_1000BC2: Set var_88 = Me.OptArticles
  loc_1000BC8: Call 0.Method_Form_Load0 (1, var_AC)
  loc_1000BD0: var_AC.BackColor = CLng(MemVar_1F951B4)
  loc_1000BE9: Set var_88 = Me.OptArticles
  loc_1000BEF: Call 0.Method_Form_Load0 (2, var_AC)
  loc_1000BF7: var_AC.BackColor = CLng(MemVar_1F951B4)
  loc_1000C1F: Me.Recordset15.CursorLocation = 3
  loc_1000C49: var_C4 = CVar("Select  Code, Name, Corporate From MemCatMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_1000C53: Me.Open var_C4, CVar(MemVar_1F951E0), 2
  loc_1000C67: CVarUnk
  loc_1000C6C: VerifyVarObj
  loc_1000C72: Set var_88 = Me.DgMemType
  loc_1000C78: LateIdStAd
  loc_1000C94: Me.FrPrinting.Left = CDbl(0)
  loc_1000CAA: Me.FrPrinting.Top = CDbl(0)
  loc_1000CBC: Set global_68 = New 
  loc_1000CD1: Me.Recordset15.CursorLocation = 3
  loc_1000CE4: Me.Recordset15.CursorType = 2
  loc_1000CF7: Me.Recordset15.LockType = 3
  loc_1000D0D: Call 0.Method_Form_Load0 (0, var_AC, &HFF, Me.OptArticles)
  loc_1000D15: var_AC.Value = New
  loc_1000D26: Call OptArticles_Click()
  loc_1000D2B: Call Proc_290_43_DFD0E4(0, 3)
  loc_1000D30: Call Proc_290_35_13429EC(-1)
  loc_1000D35: Call Proc_290_41_136C910()
  loc_1000D3A: Exit Sub
  loc_1000D3B: ' Referenced from: 1000B38
  loc_1000D3B: Proc_6_60_E63754()
  loc_1000D40: Exit Sub
  loc_1000D41: StAryRecMove
End Sub

Private Sub Form_Resize() 'EDA7B8
  'Data Table: 4D5020
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_EDA716: Set var_88 = Me.Text1
  loc_EDA71C: Call 0.Method_Form_Resize0 (CInt(&H18), var_8C)
  loc_EDA73B: Me.DgMemType.Left = CVar(var_8C.Left)
  loc_EDA757: Set var_B4 = Me.Text1
  loc_EDA75D: Call 0.Method_Form_Resize0 (CInt(&H18), var_B8)
  loc_EDA778: Set var_88 = Me.Text1
  loc_EDA77E: Call 0.Method_Form_Resize0 (CInt(&H18), var_8C)
  loc_EDA796: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&HF))) 'Single
  loc_EDA7A5: Me.DgMemType.Top = CVar(var_8C.Left)
  loc_EDA7B7: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E28BB0
  'Data Table: 4D5020
  loc_E28B93: Set global_68 = Nothing
  loc_E28BA5: Set global_56 = Nothing
  loc_E28BAC: Exit Sub
  loc_E28BAD: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E288D0
  'Data Table: 4D5020
  loc_E288A8: On Error Goto loc_E288C8
  loc_E288BF: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E288C7: Exit Sub
  loc_E288C8: ' Referenced from: E288A8
  loc_E288C8: Proc_6_60_E63754(Shift)
  loc_E288CD: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E2E9E8
  'Data Table: 4D5020
  loc_E2E9C8: Me.FrArticles.Enabled = True
  loc_E2E9DC: Me.FrPrinting.Visible = False
  loc_E2E9E4: Exit Sub
End Sub

Private Sub OptArticles_Click(Index As Integer) 'F62BEC
  'Data Table: 4D5020
  Dim var_8C As OptionButton
  Dim var_90 As String
  Dim unk_4D503D As Connection15
  loc_F62ADB: Call 0.Method_OptArticles_Click0 (Index, var_8C)
  loc_F62B13: var_90 = "SELECT MTL.code as searchcode,MTL.*,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL Left Join SubGroup SG On MTL.MemCode=SG.SubCode Left Join City On SG.CityCode=City.CityCode Left Join State On City.State=State.Code where MTL.Type='" & var_8C.Caption
  loc_F62B31: unk_4D503D.Execute var_90 & "' And (MTL.LOGSITE_CODE='" & MemVar_1F95078 & "' or MTL.LOGSITE_CODE='HO') ORDER BY MTL.Code", var_BC, -1
  loc_F62B42: Set global_68 = Me.OptArticles
  loc_F62B67: CVarUnk
  loc_F62B6C: VerifyVarObj
  loc_F62B72: Set var_88 = Me.DBGrid1
  loc_F62B78: LateIdStAd
  loc_F62BAD: Call Proc_290_42_F7A160(Proc_5_1_100EC1C("INI", Me, global_68), Me)
  loc_F62BC1: Set var_88 = Me.TopCtrl1
  loc_F62BC7: Call {C25E4434-8C28-414A-9B911155EADDC28A}.DispID_68030016(False)
  loc_F62BD8: Set var_88 = Me.TopCtrl1
  loc_F62BDE: Call {C25E4434-8C28-414A-9B911155EADDC28A}.DispID_68030017(False)
  loc_F62BE6: Call Proc_290_41_136C910(global_68)
  loc_F62BEB: Exit Sub
End Sub

Private Sub CmdmultiPrint_Click() '1128970
  'Data Table: 4D5020
  Dim var_A0 As Variant
  Dim var_11C As Variant
  Dim var_B0 As Variant
  Dim var_128 As Double
  Dim var_114 As Variant
  Dim var_88 As Long
  Dim var_8C As Long
  Dim var_D0 As Variant
  Dim var_110 As Variant
  Dim var_1E0 As Variant
  Dim unk_4D508D As Connection15
  Dim var_90 As Recordset15
  Dim arg_6CFF As Double
  loc_112865A: If (Trim(CVar(Me.TXT_FROMBILLNO)) = vbNullString) Then
  loc_112867E:   MsgBox("Serial No # From", &H40, "Validation", var_D0, var_110)
  loc_1128692:   Set var_114 = Me.TXT_FROMBILLNO
  loc_11286A3:   Exit Sub
  loc_11286A4: End If
  loc_11286C6: If (Trim(CVar(Me.TXT_TOBILLNO)) = vbNullString) Then
  loc_11286EA:   MsgBox("Serial No # To", &H40, "Validation", var_D0, var_110)
  loc_11286FE:   Set var_114 = Me.TXT_TOBILLNO
  loc_112870F:   Exit Sub
  loc_1128710: End If
  loc_1128714: Set var_11C = Me.TXT_TOBILLNO
  loc_112872A: var_128 = Val(CStr(var_11C.BoundText))
  loc_1128762: If (CDbl(Val(CStr(Me.TXT_FROMBILLNO.BoundText))) > CDbl(var_128)) Then
  loc_1128786:   MsgBox("Serial No # From Should be less then To", &H40, "Validation", var_D0, var_110)
  loc_112879A:   Set var_114 = Me.TXT_FROMBILLNO
  loc_11287AB:   Exit Sub
  loc_11287AC: End If
  loc_11287C7: var_88 = CLng(Val(CStr(Me.TXT_FROMBILLNO.BoundText)))
  loc_11287DD: var_A0 = Me.TXT_TOBILLNO.BoundText
  loc_11287EE: var_8C = CLng(Val(CStr(var_A0)))
  loc_1128835: var_B0 = CVar("SELECT Code As SearchCode FROM MemTagadaLetter WHERE Type='" & Me.FrPrinting.Tag & "' And (LOGSITE_CODE='" & MemVar_1F95078 & "') AND VDate between ") 'String
  loc_1128843: Proc_6_7_F26918(var_A0, MemVar_1F950F4, var_B0, var_204, -1, var_11C)
  loc_1128863: Proc_6_7_F26918(var_140, MemVar_1F950FC, var_8C & var_A0 & " and ", var_88)
  loc_112889C: var_1E0 = TXT_FROMBILLNO.DispID_8001 & var_140 & "AND Cast(Code As Int) between " & CVar(var_88) & " and " & CVar(var_8C) & " order by Cast(Code As Int)" 
  loc_11288AA: unk_4D508D.Execute CStr(var_1E0), var_128, TXT_TOBILLNO.DispID_8001
  loc_11288B5: Set var_90 = var_11C
  loc_11288E7: ' Referenced from: 1128961
  loc_11288F6: If Not(var_90.EOF) Then
  loc_1128941:   Call Proc_290_44_106051C(CStr(var_90.Fields.Item("SearchCode").Value), Me.FrPrinting.Tag)
  loc_112895C:   var_90.MoveNext
  loc_1128961:   GoTo loc_11288E7
  loc_1128964: End If
  loc_1128969: Set var_90 = Nothing
  loc_112896C: Exit Sub
  loc_112896D: arg_6CFF = TXT_FROMBILLNO.DispID_8001
End Sub

Private Sub TopCtrl1_UnknownEvent_A '12A3508
  'Data Table: 4D5020
  Dim var_8C As Frame
  Dim var_94 As Variant
  loc_12A2EE8: On Error Goto loc_12A34FF
  loc_12A2F12: Call Proc_290_42_F7A160(Proc_5_1_100EC1C("ADD", Me))
  loc_12A2F1D: Call Proc_290_40_E97428(global_68)
  loc_12A2F22: Call Proc_290_35_13429EC()
  loc_12A2F37: Me.FrArticle.Caption = global_52
  loc_12A2F4B: Set var_8C = Me.OptArticles
  loc_12A2F51: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_94)
  loc_12A2F6B: If (var_94.Value = &HFF) Then
  loc_12A2F7C:   Set var_8C = Me.Text1
  loc_12A2F82:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A2F8A:   var_94.Text = vbNullString
  loc_12A2FA4:   Set var_8C = Me.Text1
  loc_12A2FAA:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A2FB2:   var_94.Tag = vbNullString
  loc_12A2FCC:   Set var_8C = Me.Text1
  loc_12A2FD2:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_12A2FDA:   var_94.Text = vbNullString
  loc_12A2FF9:   Set var_8C = Me.Text1
  loc_12A2FFF:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H15), var_94)
  loc_12A3007:   var_94.Text = CStr(MemVar_1F950EC)
  loc_12A305F:   Set var_8C = Me.Text1
  loc_12A3065:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H16), var_94, CStr(Format(DateAdd("m", CDbl(1), MemVar_1F950EC), "MMM/YYYY")))
  loc_12A306D:   var_94.Text = 1
  loc_12A3091:   Me.FrArticles.Enabled = False
  loc_12A30A4:   Set var_8C = Me.Label1
  loc_12A30AA:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (&HD, var_94)
  loc_12A30B2:   var_94.Visible = True
  loc_12A30CA:   Set var_8C = Me.Label1
  loc_12A30D0:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (&HE, var_94)
  loc_12A30D8:   var_94.Caption = "Debit Amt. Upto Date"
  loc_12A30F1:   Set var_8C = Me.Text1
  loc_12A30F7:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_12A30FF:   var_94.Visible = True
  loc_12A3118:   Set var_8C = Me.Text1
  loc_12A311E:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A3126:   var_94.Visible = True
  loc_12A313D:   Set var_8C = Me.Label1
  loc_12A3143:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (&H18, var_94)
  loc_12A314B:   var_94.Visible = True
  loc_12A3163:   Me.FrArticle.Visible = True
  loc_12A3176:   Set var_8C = Me.Text1
  loc_12A317C:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A3184:   var_94.SetFocus
  loc_12A3193: Else
  loc_12A319F:   Set var_8C = Me.OptArticles
  loc_12A31A5:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (1, var_94)
  loc_12A31BF:   If (var_94.Value = &HFF) Then
  loc_12A31CE:     Me.FrArticles.Enabled = False
  loc_12A31E1:     Set var_8C = Me.Label1
  loc_12A31E7:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (&HD, var_94)
  loc_12A31EF:     var_94.Visible = False
  loc_12A3207:     Set var_8C = Me.Label1
  loc_12A320D:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (&HE, var_94)
  loc_12A3215:     var_94.Caption = "Article_26(a) Entry Date"
  loc_12A322E:     Set var_8C = Me.Text1
  loc_12A3234:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_12A323C:     var_94.Visible = False
  loc_12A3255:     Set var_8C = Me.Text1
  loc_12A325B:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A3263:     var_94.Visible = False
  loc_12A327A:     Set var_8C = Me.Label1
  loc_12A3280:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (&H18, var_94)
  loc_12A3288:     var_94.Visible = False
  loc_12A32A0:     Me.FrArticle.Visible = True
  loc_12A32AB:   Else
  loc_12A32B7:     Set var_8C = Me.OptArticles
  loc_12A32BD:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (2, var_94)
  loc_12A32D7:     If (var_94.Value = &HFF) Then
  loc_12A32E8:       Set var_8C = Me.Text1
  loc_12A32EE:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A32F6:       var_94.Text = vbNullString
  loc_12A3310:       Set var_8C = Me.Text1
  loc_12A3316:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A331E:       var_94.Tag = vbNullString
  loc_12A3338:       Set var_8C = Me.Text1
  loc_12A333E:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_12A3346:       var_94.Text = vbNullString
  loc_12A3365:       Set var_8C = Me.Text1
  loc_12A336B:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H15), var_94)
  loc_12A3373:       var_94.Text = CStr(MemVar_1F950EC)
  loc_12A33CB:       Set var_8C = Me.Text1
  loc_12A33D1:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H16), var_94, CStr(Format(DateAdd("m", CDbl(1), MemVar_1F950EC), "MMM/YYYY")))
  loc_12A33D9:       var_94.Text = 1
  loc_12A33FD:       Me.FrArticles.Enabled = False
  loc_12A3410:       Set var_8C = Me.Label1
  loc_12A3416:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (&HD, var_94, &HFF)
  loc_12A341E:       var_94.Visible = True
  loc_12A3436:       Set var_8C = Me.Label1
  loc_12A343C:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (&HE, var_94)
  loc_12A3444:       var_94.Caption = "Debit Amt. Upto Date"
  loc_12A345D:       Set var_8C = Me.Text1
  loc_12A3463:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_12A346B:       var_94.Visible = True
  loc_12A3484:       Set var_8C = Me.Text1
  loc_12A348A:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_12A3492:       var_94.Visible = True
  loc_12A34AB:       Set var_8C = Me.Text1
  loc_12A34B1:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A34B9:       var_94.Visible = True
  loc_12A34D1:       Me.FrArticle.Visible = True
  loc_12A34E4:       Set var_8C = Me.Text1
  loc_12A34EA:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A34F2:       var_94.SetFocus
  loc_12A34FE:     End If
  loc_12A34FE:   End If
  loc_12A34FE: End If
  loc_12A34FE: Exit Sub
  loc_12A34FF: ' Referenced from: 12A2EE8
  loc_12A34FF: Proc_6_60_E63754(1)
  loc_12A3504: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E83374
  'Data Table: 4D5020
  loc_E83308: On Error Goto loc_E8336C
  loc_E83332: Call Proc_290_42_F7A160(Proc_5_1_100EC1C("INI", Me))
  loc_E83346: Set var_90 = Me.TopCtrl1
  loc_E8334C: Call {C25E4434-8C28-414A-9B911155EADDC28A}.DispID_68030016(False)
  loc_E8335D: Set var_90 = Me.TopCtrl1
  loc_E83363: Call {C25E4434-8C28-414A-9B911155EADDC28A}.DispID_68030017(False)
  loc_E8336B: Exit Sub
  loc_E8336C: ' Referenced from: E83308
  loc_E8336C: Proc_6_60_E63754(global_68)
  loc_E83371: Exit Sub
  loc_E83372: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'E8F65C
  'Data Table: 4D5020
  Dim unk_4D503D As Connection15
  loc_E8F5FC: On Error Goto loc_E8F600
  loc_E8F5FF: Exit Sub
  loc_E8F600: ' Referenced from: E8F5FC
  loc_E8F609: If (CInt(var_A2) = 1) Then
  loc_E8F612:   unk_4D503D.RollbackTrans
  loc_E8F617: End If
  loc_E8F61F: Set var_A8 = Err()
  loc_E8F625: Call 0.Method_arg_2C (var_AC)
  loc_E8F646: MsgBox(CVar(var_AC), &H10, " Deletion Message", var_FC, var_11C)
  loc_E8F659: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E02F44
  'Data Table: 4D5020
  loc_E02F38: On Error Goto loc_E02F3C
  loc_E02F3B: Exit Sub
  loc_E02F3C: ' Referenced from: E02F38
  loc_E02F3C: Proc_6_60_E63754()
  loc_E02F41: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A9E8
  'Data Table: 4D5020
  loc_E1A9DD: Me.Global.Unload Me
  loc_E1A9E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'E7D4D8
  'Data Table: 4D5020
  Dim var_98 As String
  loc_E7D47C: On Error Goto loc_E7D4CF
  loc_E7D499: If (Me.Recordset15.RecordCount <= 0) Then
  loc_E7D4BD:   MsgBox("No Records To Search.", &H40, "Information", var_E8, var_108)
  loc_E7D4CD:   Exit Sub
  loc_E7D4CE: End If
  loc_E7D4CE: Exit Sub
  loc_E7D4CF: ' Referenced from: E7D47C
  loc_E7D4CF: Proc_6_60_E63754()
  loc_E7D4D4: Exit Sub
  loc_E7D4D5: var_98 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E45804
  'Data Table: 4D5020
  loc_E457F4: Proc_5_0_1107AD0(&HFF, Me)
  loc_E457FC: Call Proc_290_41_136C910(global_68)
  loc_E45801: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E45868
  'Data Table: 4D5020
  loc_E45858: Proc_5_0_1107AD0(&HFF, Me)
  loc_E45860: Call Proc_290_41_136C910(global_68)
  loc_E45865: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E45994
  'Data Table: 4D5020
  loc_E45984: Proc_5_0_1107AD0(&HFF, Me)
  loc_E4598C: Call Proc_290_41_136C910(global_68)
  loc_E45991: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E45C50
  'Data Table: 4D5020
  loc_E45C40: Proc_5_0_1107AD0(&HFF, Me)
  loc_E45C48: Call Proc_290_41_136C910(global_68)
  loc_E45C4D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10218D8
  'Data Table: 4D5020
  Dim var_A8 As String
  Dim var_C4 As Variant
  Dim var_164 As Variant
  loc_10216DC: On Error Goto loc_10218D2
  loc_10216F9: If (Me.Recordset15.RecordCount <= 0) Then
  loc_10216FC:   Exit Sub
  loc_10216FD: End If
  loc_1021714: Me.FrPrinting.Caption = global_52 & " Letter Printing:"
  loc_102172F: Me.FrPrinting.Tag = global_52
  loc_102173A: var_C4 = MemVar_1F950F4
  loc_1021742: Proc_6_7_F26918(var_D4)
  loc_1021752: Proc_6_7_F26918(var_134, MemVar_1F950FC)
  loc_1021761: var_170 = "CODE"
  loc_1021783: var_A8 = "SELECT  convert(Char,Cast(Code As Int)) AS CODE, convert(Char,Cast(Code As int)) as Name  FROM MemTagadaletter WHERE Type='" & global_52
  loc_10217B7: var_164 = CVar(var_A8 & "'And (LOGSITE_CODE='" & MemVar_1F95078 & "') AND VDate between ") & var_D4 & " and " & var_134 & " order by Cast(Code As Int)" 
  loc_10217C0: Proc_6_92_EF7BF4(CStr(var_164), Me.TXT_FROMBILLNO, "Name")
  loc_10217F7: Proc_6_7_F26918(var_D4, MemVar_1F950F4)
  loc_1021807: Proc_6_7_F26918(var_134, MemVar_1F950FC)
  loc_1021816: var_170 = "CODE"
  loc_1021838: var_A8 = "SELECT  convert(Char,Cast(Code As Int)) AS CODE, convert(Char,Cast(Code As int)) as Name  FROM MemTagadaletter WHERE Type='" & global_52
  loc_102186C: var_164 = CVar(var_A8 & "'And (LOGSITE_CODE='" & MemVar_1F95078 & "') AND VDate between ") & var_D4 & " and " & var_134 & " order by Cast(Code As Int)" 
  loc_1021875: Proc_6_92_EF7BF4(CStr(var_164), Me.TXT_TOBILLNO, "Name")
  loc_10218AD: Me.FrArticles.Enabled = False
  loc_10218C1: Me.FrPrinting.Visible = True
  loc_10218CE: Set var_9C = Nothing
  loc_10218D1: Exit Sub
  loc_10218D2: ' Referenced from: 10216DC
  loc_10218D2: Proc_6_60_E63754(var_170, var_170)
  loc_10218D7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0C1DC
  'Data Table: 4D5020
  Dim Me As Recordset15
  Dim arg_1900 As Long
  loc_E0C1D3: Me.Requery -1
  loc_E0C1D8: Exit Sub
  loc_E0C1D9: arg_1900 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '11497CC
  'Data Table: 4D5020
  Dim var_118 As OptionButton
  Dim var_D0 As Variant
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim unk_4D503D As Connection15
  Dim var_114 As CheckBox
  loc_1149444: On Error Goto loc_11497AF
  loc_1149452: If (global_52 = vbNullString) Then
  loc_114946E:   MsgBox("No Aricles Option Is Selected", 0, var_D0, var_F0, var_110)
  loc_114947E:   Exit Sub
  loc_114947F: End If
  loc_114948B: Set var_114 = Me.OptArticles
  loc_1149491: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_118)
  loc_11494AB: If (var_118.Value = &HFF) Then
  loc_11494B9:   Set var_114 = Me.Text1
  loc_11494BF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15))
  loc_11494E8:   If (Proc_6_27_EA61EC(var_118, "Debit Upto Date") = 0) Then
  loc_11494EB:     Exit Sub
  loc_11494EC:   End If
  loc_11494F7:   Set var_114 = Me.Text1
  loc_11494FD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_118)
  loc_1149526:   If (Proc_6_27_EA61EC(var_118, "Current Bill Month") = 0) Then
  loc_1149529:     Exit Sub
  loc_114952A:   End If
  loc_1149530:   Call 0.Method_arg_50 (var_12C)
  loc_114955B:   var_B0 = CVar("Are U Sure To Generate Information Under Article_26(a) For Selected Members." & vbCrLf & vbCrLf & "Process Will Blocked Their Accounts.") 'String
  loc_114957B:   If (MsgBox(var_B0, &H21, CVar(var_12C), var_F0, var_110) = 2) Then
  loc_114957E:     Exit Sub
  loc_114957F:   End If
  loc_1149582: Else
  loc_114958E:   Set var_114 = Me.OptArticles
  loc_1149594:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_118)
  loc_11495AE:   If (var_118.Value = &HFF) Then
  loc_11495BC:     Set var_114 = Me.Text1
  loc_11495C2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_118)
  loc_11495EB:     If (Proc_6_27_EA61EC(var_118, "Debit Upto Date") = 0) Then
  loc_11495EE:       Exit Sub
  loc_11495EF:     End If
  loc_11495FA:     Set var_114 = Me.Text1
  loc_1149600:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_118)
  loc_1149629:     If (Proc_6_27_EA61EC(var_118, "Current Bill Month") = 0) Then
  loc_114962C:       Exit Sub
  loc_114962D:     End If
  loc_1149633:     Call 0.Method_arg_50 (var_12C)
  loc_114965E:     var_B0 = CVar("Are U Sure To Generate Information Under Article_23 For Selected Members." & vbCrLf & vbCrLf & "Process Will Blocked Their Accounts.") 'String
  loc_114967E:     If (MsgBox(var_B0, &H21, CVar(var_12C), var_F0, var_110) = 2) Then
  loc_1149681:       Exit Sub
  loc_1149682:     End If
  loc_1149682:   End If
  loc_1149682: End If
  loc_1149684: var_8A = &HFF
  loc_1149690: unk_4D503D.BeginTrans var_130
  loc_1149699: Set var_114 = Me.TopCtrl1
  loc_114969F: Call {C25E4434-8C28-414A-9B911155EADDC28A}.DispID_68030005(var_8A)
  loc_11496B8: If (CStr(var_118) = "Add") Then
  loc_11496C8:   var_11A = Me.Check1.Value
  loc_11496EA:   Call Proc_290_36_170F9C4(global_60, CByte(var_11A))
  loc_11496F2: End If
  loc_11496F8: unk_4D503D.CommitTrans
  loc_1149709: Set var_114 = Me.OptArticles
  loc_114970F: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_118, var_11A)
  loc_1149717: global_52 = var_118.Value
  loc_1149729: If (var_11A = &HFF) Then
  loc_1149731:   Call OptArticles_Click(0)
  loc_1149739: Else
  loc_1149745:   Set var_114 = Me.OptArticles
  loc_114974B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_118)
  loc_1149765:   If (var_118.Value = &HFF) Then
  loc_114976D:     Call OptArticles_Click(1)
  loc_1149775:   Else
  loc_1149781:     Set var_114 = Me.OptArticles
  loc_1149787:     Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_118)
  loc_11497A1:     If (var_118.Value = &HFF) Then
  loc_11497A9:       Call OptArticles_Click(2)
  loc_11497AE:     End If
  loc_11497AE:   End If
  loc_11497AE: End If
  loc_11497AE: Exit Sub
  loc_11497AF: ' Referenced from: 1149444
  loc_11497B5: If (var_8A = &HFF) Then
  loc_11497BE:   unk_4D503D.RollbackTrans
  loc_11497C3: End If
  loc_11497C3: Proc_6_60_E63754(var_134)
  loc_11497C8: Exit Sub
End Sub

Private Sub DGMemType_UnknownEvent_9 'FA5E90
  'Data Table: 4D5020
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_CC As String
  Dim var_C8 As TextBox
  Dim var_B0 As TextBox
  loc_FA5D18: On Error Goto loc_FA5E28
  loc_FA5D2A: Me.DgMemType.Visible = False
  loc_FA5D3B: var_AC = Me.RecordCount
  loc_FA5D49: If (var_AC > 0) Then
  loc_FA5D85:   Set var_C4 = Me.Text1
  loc_FA5D8B:   Call 0.Method_DGMemType_UnknownEvent_90 (CInt(&H18), var_C8)
  loc_FA5D93:   var_C8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_FA5DC1:   var_B0 = Me.Fields.Item("Code")
  loc_FA5DD2:   var_CC = Proc_6_38_E69628(CVar(var_B0))
  loc_FA5DE0:   Set var_C4 = Me.Text1
  loc_FA5DE6:   Call 0.Method_DGMemType_UnknownEvent_90 (CInt(&H18), var_C8)
  loc_FA5DEE:   var_C8.Tag = var_CC
  loc_FA5E02: End If
  loc_FA5E0D: Set var_A8 = Me.Text1
  loc_FA5E13: Call 0.Method_DGMemType_UnknownEvent_90 (CInt(&H18))
  loc_FA5E1B: var_B0.SetFocus
  loc_FA5E27: Exit Sub
  loc_FA5E28: ' Referenced from: FA5D18
  loc_FA5E30: Set var_A8 = Err()
  loc_FA5E36: Call 0.Method_arg_1C (var_AC)
  loc_FA5E47: If (var_AC <> 0) Then
  loc_FA5E52:   Set var_A8 = Err()
  loc_FA5E58:   Call 0.Method_arg_2C (var_CC)
  loc_FA5E79:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FA5E8C: End If
  loc_FA5E8C: Exit Sub
End Sub

Private Sub DGMemType_UnknownEvent_1F 'EA2DDC
  'Data Table: 4D5020
  Dim var_A8 As Variant
  loc_EA2D5C: Set var_88 = Me.DgMemType
  loc_EA2D86: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA2D8E: Set var_BC = Me.DgMemType
  loc_EA2DCA: Proc_6_138_106E830(Me.DgMemType, global_56, CInt(&H18), Me.FGPoint)
  loc_EA2DD8: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5D8BC
  'Data Table: 4D5020
  loc_E5D897: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5D89A:   Exit Sub
  loc_E5D89B: End If
  loc_E5D8B2: global_64 = CInt(CLng(Me.GridSel.Row))
  loc_E5D8BB: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1027E58
  'Data Table: 4D5020
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1027C59: If ((CLng(Me.GridSel.Col) <> 0) Or (global_64 = 0)) Then
  loc_1027C5C:   Exit Sub
  loc_1027C5D: End If
  loc_1027CB9: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_1027CBC:   Exit Sub
  loc_1027CBD: End If
  loc_1027CEC: For var_BA = global_64 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_1027D05:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1027D20:   Me.GridSel.Col = 0
  loc_1027D38:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1027D52:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1027D5E:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1027D63:   var_EC = 0
  loc_1027D86:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1027D8B:   var_180 = 0
  loc_1027DC6:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1027DCE:   Set var_A0 = Me.GridSel
  loc_1027DD4:   LateIdCallSt
  loc_1027E06:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_1027E18:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_1027E40:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1027E4A: Next var_BA 'Integer
  loc_1027E54: global_64 = 0
  loc_1027E57: Exit Sub
End Sub

Public Sub DBGrid1_UnknownEvent_1A(Index As Integer) '10DC37C
  'Data Table: 4D5020
  Dim var_C8 As Variant
  Dim var_B8 As String
  Dim var_15C As String
  Dim unk_4D503D As Connection15
  loc_10DC094: On Error Goto loc_10DC336
  loc_10DC0B1: If (Me.Recordset15.RecordCount > 0) Then
  loc_10DC0C5:   Set var_8C = Me.DBGrid1
  loc_10DC0EC:   var_C8 = CVar(DBGrid1.DispID_69.Item(CVar(Index)).DataField) 'String
  loc_10DC0F2:   var_D8 = Ucase(var_C8)
  loc_10DC0FA:   var_E8 = var_D8 'Variant
  loc_10DC119:   If Not (var_E8 = "CODE") Then
  loc_10DC127:     If Not (var_E8 = "VDATE") Then
  loc_10DC135:       If Not (var_E8 = "DUEAMT") Then
  loc_10DC143:         If Not (var_E8 = "CURMONTHBILLAMT") Then
  loc_10DC151:           If Not (var_E8 = "BALANCETILLDATE") Then
  loc_10DC15F:             If Not (var_E8 = "CURBILLMONTH") Then
  loc_10DC16D:               If (var_E8 = "TILLDATE") Then
  loc_10DC170:               End If
  loc_10DC170:             End If
  loc_10DC170:           End If
  loc_10DC170:         End If
  loc_10DC170:       End If
  loc_10DC170:     End If
  loc_10DC187:     var_B8 = "SELECT MTL.code as searchcode,MTL.*,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL Left Join SubGroup SG On MTL.MemCode=SG.SubCode Left Join City On SG.CityCode=City.CityCode Left Join State On City.State=State.Code where MTL.Type='" & global_52
  loc_10DC1B0:     Set var_8C = Me.DBGrid1
  loc_10DC1D8:     var_15C = var_B8 & "' And (MTL.LOGSITE_CODE='" & MemVar_1F95078 & "' or MTL.LOGSITE_CODE='HO') ORDER BY MTL." & DBGrid1.DispID_69.Item(CVar(Index)).DataField
  loc_10DC1E1:     unk_4D503D.Execute var_15C, var_C8, -1
  loc_10DC1F2:     Set global_68 = var_160
  loc_10DC21C:   Else
  loc_10DC227:     If Not (var_E8 = "CONPREFIX") Then
  loc_10DC235:       If Not (var_E8 = "CONPERSON") Then
  loc_10DC243:         If (var_E8 = "CARDNO") Then
  loc_10DC246:         End If
  loc_10DC246:       End If
  loc_10DC25D:       var_B8 = "SELECT MTL.code as searchcode,MTL.*,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL Left Join SubGroup SG On MTL.MemCode=SG.SubCode Left Join City On SG.CityCode=City.CityCode Left Join State On City.State=State.Code where MTL.Type='" & global_52
  loc_10DC286:       Set var_8C = Me.DBGrid1
  loc_10DC2AE:       var_15C = var_B8 & "' And (MTL.LOGSITE_CODE='" & MemVar_1F95078 & "' or MTL.LOGSITE_CODE='HO') ORDER BY SG." & DBGrid1.DispID_69.Item(CVar(Index)).DataField
  loc_10DC2B7:       unk_4D503D.Execute var_15C, var_C8, -1
  loc_10DC2C8:       Set global_68 = var_160
  loc_10DC2EF:       GoTo loc_10DC2F2
  loc_10DC2F2:       ' Referenced from:   10DC2EF
  loc_10DC2F2:     End If
  loc_10DC2F2:   End If
  loc_10DC300:   global_68.Requery -1
  loc_10DC311:   CVarUnk
  loc_10DC316:   VerifyVarObj
  loc_10DC322:   LateIdStAd
  loc_10DC330:   Call Proc_290_41_136C910(Me.DBGrid1, global_68)
  loc_10DC335: End If
  loc_10DC335: Exit Sub
  loc_10DC336: ' Referenced from: 10DC094
  loc_10DC33E: Set var_8C = Err()
  loc_10DC344: Call 0.Method_arg_2C (var_B8, var_160)
  loc_10DC365: MsgBox(CVar(var_B8), &H10, "Information", var_D8, var_174)
  loc_10DC378: Exit Sub
  loc_10DC379: Exit Sub
End Sub

Public Sub DBGrid1_UnknownEvent_1D(Index As Integer) 'E15988
  'Data Table: 4D5020
  loc_E1597D: If ((Index = &H26) Or (Index = &H28)) Then
  loc_E15980:   Call Proc_290_41_136C910()
  loc_E15985: End If
  loc_E15985: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_22 'E8F500
  'Data Table: 4D5020
  loc_E8F494: On Error Goto loc_E8F4BA
  loc_E8F4B1: If (Me.Recordset15.RecordCount > 0) Then
  loc_E8F4B4:   Call Proc_290_41_136C910()
  loc_E8F4B9: End If
  loc_E8F4B9: Exit Sub
  loc_E8F4BA: ' Referenced from: E8F494
  loc_E8F4C2: Set var_8C = Err()
  loc_E8F4C8: Call 0.Method_arg_2C (var_90)
  loc_E8F4E9: MsgBox(CVar(var_90), &H10, "Information", var_E0, var_100)
  loc_E8F4FC: Exit Sub
  loc_E8F4FD: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E9DD20
  'Data Table: 4D5020
  loc_E9DCA6: On Error Goto loc_E9DD19
  loc_E9DCB2: Me.Recordset15.MoveFirst
  loc_E9DCDF: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E9DD0B: Proc_5_0_1107AD0(&HFF, Me, global_68)
  loc_E9DD13: Call Proc_290_41_136C910(0)
  loc_E9DD18: Exit Sub
  loc_E9DD19: ' Referenced from: E9DCA6
  loc_E9DD19: Proc_6_60_E63754(var_A0)
  loc_E9DD1E: Exit Sub
End Sub

Public Sub Proc_290_35_13429EC
  'Data Table: 4D5020
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_134220A: Me.GridSel.Rows = 1
  loc_134221E: Me.GridSel.Cols = &HE
  loc_1342223: var_98 = 0
  loc_134222F: var_BC = CVar(CLng(0)) 'Long
  loc_1342234: var_DC = vbNullString
  loc_134223D: LateIdCallSt
  loc_1342248: var_98 = CVar(CLng(0)) 'Long
  loc_134224D: var_BC = &H258
  loc_1342259: LateIdCallSt
  loc_1342261: var_98 = 0
  loc_134226D: var_BC = CVar(CLng(1)) 'Long
  loc_1342272: var_DC = "MemCode"
  loc_134227B: LateIdCallSt
  loc_1342286: var_98 = CVar(CLng(1)) 'Long
  loc_134228B: var_BC = 0
  loc_1342297: LateIdCallSt
  loc_134229F: var_98 = 0
  loc_13422AB: var_BC = CVar(CLng(2)) 'Long
  loc_13422B0: var_DC = "Serial No."
  loc_13422B9: LateIdCallSt
  loc_13422C4: var_98 = CVar(CLng(2)) 'Long
  loc_13422CF: var_BC = CVar(CInt(1)) 'Integer
  loc_13422D6: LateIdCallSt
  loc_13422E1: var_98 = CVar(CLng(2)) 'Long
  loc_13422EC: var_BC = CVar(CInt(1)) 'Integer
  loc_13422F3: LateIdCallSt
  loc_1342312: If ((global_52 = "Article_26(a)") Or (global_52 = "Article_23")) Then
  loc_1342318:   var_98 = CVar(CLng(2)) 'Long
  loc_134231D:   var_BC = 0
  loc_1342329:   LateIdCallSt
  loc_1342334: Else
  loc_1342337:   var_98 = CVar(CLng(2)) 'Long
  loc_134233C:   var_BC = &H384
  loc_1342348:   LateIdCallSt
  loc_1342350: End If
  loc_1342350: var_98 = 0
  loc_134235C: var_BC = CVar(CLng(3)) 'Long
  loc_1342361: var_DC = "Entry Date"
  loc_134236A: LateIdCallSt
  loc_1342375: var_98 = CVar(CLng(3)) 'Long
  loc_1342380: var_BC = CVar(CInt(1)) 'Integer
  loc_1342387: LateIdCallSt
  loc_1342392: var_98 = CVar(CLng(3)) 'Long
  loc_134239D: var_BC = CVar(CInt(1)) 'Integer
  loc_13423A4: LateIdCallSt
  loc_13423AF: var_98 = CVar(CLng(3)) 'Long
  loc_13423B4: var_BC = &H44C
  loc_13423C0: LateIdCallSt
  loc_13423C8: var_98 = 0
  loc_13423D4: var_BC = CVar(CLng(4)) 'Long
  loc_13423D9: var_DC = "Prefix"
  loc_13423E2: LateIdCallSt
  loc_13423ED: var_98 = CVar(CLng(4)) 'Long
  loc_13423F8: var_BC = CVar(CInt(1)) 'Integer
  loc_13423FF: LateIdCallSt
  loc_134240A: var_98 = CVar(CLng(4)) 'Long
  loc_1342415: var_BC = CVar(CInt(1)) 'Integer
  loc_134241C: LateIdCallSt
  loc_1342427: var_98 = CVar(CLng(4)) 'Long
  loc_134242C: var_BC = 0
  loc_1342438: LateIdCallSt
  loc_1342440: var_98 = 0
  loc_134244C: var_BC = CVar(CLng(5)) 'Long
  loc_1342451: var_DC = "Con. Person"
  loc_134245A: LateIdCallSt
  loc_1342465: var_98 = CVar(CLng(5)) 'Long
  loc_1342470: var_BC = CVar(CInt(1)) 'Integer
  loc_1342477: LateIdCallSt
  loc_1342482: var_98 = CVar(CLng(5)) 'Long
  loc_134248D: var_BC = CVar(CInt(1)) 'Integer
  loc_1342494: LateIdCallSt
  loc_134249F: var_98 = CVar(CLng(5)) 'Long
  loc_13424A4: var_BC = &HBB8
  loc_13424B0: LateIdCallSt
  loc_13424B8: var_98 = 0
  loc_13424C4: var_BC = CVar(CLng(6)) 'Long
  loc_13424C9: var_DC = "Card No."
  loc_13424D2: LateIdCallSt
  loc_13424DD: var_98 = CVar(CLng(6)) 'Long
  loc_13424E8: var_BC = CVar(CInt(1)) 'Integer
  loc_13424EF: LateIdCallSt
  loc_13424FA: var_98 = CVar(CLng(6)) 'Long
  loc_1342505: var_BC = CVar(CInt(1)) 'Integer
  loc_134250C: LateIdCallSt
  loc_1342517: var_98 = CVar(CLng(6)) 'Long
  loc_134251C: var_BC = &H320
  loc_1342528: LateIdCallSt
  loc_1342530: var_98 = 0
  loc_134253C: var_BC = CVar(CLng(7)) 'Long
  loc_1342541: var_DC = "Due Amt."
  loc_134254A: LateIdCallSt
  loc_1342555: var_98 = CVar(CLng(7)) 'Long
  loc_1342560: var_BC = CVar(CInt(7)) 'Integer
  loc_1342567: LateIdCallSt
  loc_1342572: var_98 = CVar(CLng(7)) 'Long
  loc_134257D: var_BC = CVar(CInt(7)) 'Integer
  loc_1342584: LateIdCallSt
  loc_134258F: var_98 = CVar(CLng(7)) 'Long
  loc_1342594: var_BC = &H44C
  loc_13425A0: LateIdCallSt
  loc_13425A8: var_98 = 0
  loc_13425B4: var_BC = CVar(CLng(8)) 'Long
  loc_13425B9: var_DC = "Cur. Bill Amt."
  loc_13425C2: LateIdCallSt
  loc_13425CD: var_98 = CVar(CLng(8)) 'Long
  loc_13425D8: var_BC = CVar(CInt(7)) 'Integer
  loc_13425DF: LateIdCallSt
  loc_13425EA: var_98 = CVar(CLng(8)) 'Long
  loc_13425F5: var_BC = CVar(CInt(7)) 'Integer
  loc_13425FC: LateIdCallSt
  loc_1342607: var_98 = CVar(CLng(8)) 'Long
  loc_134260C: var_BC = &H4B0
  loc_1342618: LateIdCallSt
  loc_1342620: var_98 = 0
  loc_134262C: var_BC = CVar(CLng(9)) 'Long
  loc_1342631: var_DC = "Credit Amt."
  loc_134263A: LateIdCallSt
  loc_1342645: var_98 = CVar(CLng(9)) 'Long
  loc_1342650: var_BC = CVar(CInt(7)) 'Integer
  loc_1342657: LateIdCallSt
  loc_1342662: var_98 = CVar(CLng(9)) 'Long
  loc_134266D: var_BC = CVar(CInt(7)) 'Integer
  loc_1342674: LateIdCallSt
  loc_134267F: var_98 = CVar(CLng(9)) 'Long
  loc_1342684: var_BC = &H4B0
  loc_1342690: LateIdCallSt
  loc_1342698: var_98 = 0
  loc_13426A4: var_BC = CVar(CLng(&HA)) 'Long
  loc_13426A9: var_DC = "Tot Due Amt."
  loc_13426B2: LateIdCallSt
  loc_13426BD: var_98 = CVar(CLng(&HA)) 'Long
  loc_13426C8: var_BC = CVar(CInt(7)) 'Integer
  loc_13426CF: LateIdCallSt
  loc_13426DA: var_98 = CVar(CLng(&HA)) 'Long
  loc_13426E5: var_BC = CVar(CInt(7)) 'Integer
  loc_13426EC: LateIdCallSt
  loc_13426F7: var_98 = CVar(CLng(&HA)) 'Long
  loc_13426FC: var_BC = &H514
  loc_1342708: LateIdCallSt
  loc_1342710: var_98 = 0
  loc_134271C: var_BC = CVar(CLng(&HB)) 'Long
  loc_1342721: var_DC = "Bill Month"
  loc_134272A: LateIdCallSt
  loc_1342735: var_98 = CVar(CLng(&HB)) 'Long
  loc_1342740: var_BC = CVar(CInt(1)) 'Integer
  loc_1342747: LateIdCallSt
  loc_1342752: var_98 = CVar(CLng(&HB)) 'Long
  loc_134275D: var_BC = CVar(CInt(1)) 'Integer
  loc_1342764: LateIdCallSt
  loc_134276F: var_98 = CVar(CLng(&HB)) 'Long
  loc_1342774: var_BC = &H384
  loc_1342780: LateIdCallSt
  loc_1342788: var_98 = 0
  loc_1342794: var_BC = CVar(CLng(&HC)) 'Long
  loc_1342799: var_DC = "Till Date"
  loc_13427A2: LateIdCallSt
  loc_13427AD: var_98 = CVar(CLng(&HC)) 'Long
  loc_13427B8: var_BC = CVar(CInt(1)) 'Integer
  loc_13427BF: LateIdCallSt
  loc_13427CA: var_98 = CVar(CLng(&HC)) 'Long
  loc_13427D5: var_BC = CVar(CInt(1)) 'Integer
  loc_13427DC: LateIdCallSt
  loc_13427E7: var_98 = CVar(CLng(&HC)) 'Long
  loc_13427EC: var_BC = &H44C
  loc_13427F8: LateIdCallSt
  loc_1342800: var_98 = 0
  loc_134280C: var_BC = CVar(CLng(&HD)) 'Long
  loc_1342811: var_DC = "A/C Name"
  loc_134281A: LateIdCallSt
  loc_1342825: var_98 = CVar(CLng(&HD)) 'Long
  loc_1342830: var_BC = CVar(CInt(1)) 'Integer
  loc_1342837: LateIdCallSt
  loc_1342842: var_98 = CVar(CLng(&HD)) 'Long
  loc_134284D: var_BC = CVar(CInt(1)) 'Integer
  loc_1342854: LateIdCallSt
  loc_134285F: var_98 = CVar(CLng(&HD)) 'Long
  loc_1342864: var_BC = &HDAC
  loc_1342870: LateIdCallSt
  loc_1342878: var_98 = vbNullString
  loc_1342882: Set var_AC = Me.GridSel
  loc_13428A6: Me.GridSel.FixedRows = 1
  loc_13428B0: Set var_88 = Nothing 
  loc_13428C4: ReDim Preserve global_60(0 To 0)
  loc_13428DB: global_60(0) = 0
  loc_13428DC: var_98 = 0
  loc_134290D: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_134291C: var_98 = 0
  loc_134294D: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_134297E: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_13429AF: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_13429CE: Me.Check1.Value = CInt(0)
  loc_13429E2: Me.Check1.Visible = False
  loc_13429EA: Exit Sub
End Sub

Public Sub Proc_290_36_170F9C4(arg_C, arg_10, arg_14) '170F9C4
  'Data Table: 4D5020
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_8C As Integer
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_EC As String
  Dim var_C8 As Variant
  Dim var_F8 As String
  Dim unk_4D503D As Connection15
  Dim var_FC As Variant
  Dim var_100 As Variant
  Dim var_114 As String
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_1F4 As Variant
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_670 As Double
  Dim var_378 As Variant
  Dim var_3C0 As String
  Dim var_678 As Double
  Dim var_680 As Double
  Dim var_688 As Double
  Dim var_580 As Variant
  Dim var_110 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_348 As Variant
  Dim var_368 As Variant
  Dim var_3E0 As Variant
  Dim var_550 As Variant
  Dim var_5A0 As Variant
  Dim var_5C0 As Variant
  Dim var_5E0 As Variant
  Dim var_600 As Variant
  Dim var_590 As Variant
  Dim var_664 As Variant
  loc_170DE9E: var_86 = &HFF
  loc_170DEA3: var_88 = 0
  loc_170DEAF: If (CInt(arg_10) = 1) Then
  loc_170DED7:   For var_A8 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_8A = var_A8 'Integer
  loc_170DEE0:     var_8C = var_8A
  loc_170DEE7:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170DEFE:     var_A4 = Me.GridSel.TextMatrix)
  loc_170DF1A:     If (CStr(var_A4) <> vbNullString) Then
  loc_170DF23:       var_C8 = 0
  loc_170DF40:       var_EC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),0)+1 AS MyCode From MemTagadaLetter where Site_Code='" & MemVar_1F95070
  loc_170DF5E:       unk_4D503D.Execute CStr(var_A4) & "' And Type='" & arg_14 & "'", var_A4, -1
  loc_170DF66:       var_94 = var_94.Fields
  loc_170DF6E:       var_C8 = var_FC.Item(var_FC)
  loc_170DF76:       var_100 = var_100.Value
  loc_170DFB5:       var_A4 = "00000000"
  loc_170DFC9:       var_110 = Format(CStr(var_110), var_A4)
  loc_170DFD8:       global_72 = CStr(var_110)
  loc_170DFEE:       If (arg_14 = "Article_26(a)") Then
  loc_170DFFC:         Proc_6_7_F26918(var_A4, MemVar_1F950EC, 1, 1, var_110, CVar(CLng(1)))
  loc_170E005:         var_D8 = CVar(CLng(var_8C)) 'Long
  loc_170E00D:         var_144 = CVar(CLng(1)) 'Long
  loc_170E01C:         var_164 = Me.GridSel.TextMatrix)
  loc_170E03D:         Set var_FC = Me.GridSel
  loc_170E043:         var_1F4 = var_FC.TextMatrix)
  loc_170E07B:         Proc_6_7_F26918(var_2A4, CVar(CStr(Me.GridSel.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_8C)), var_1F4, CVar(CLng(&HB)), CVar(CLng(var_8C)), var_164)
  loc_170E084:         var_2E4 = CVar(CLng(var_8C)) 'Long
  loc_170E0AE:         var_670 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E0DF:         var_678 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E110:         var_680 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E141:         var_688 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E149:         var_580 = CVar(Proc_6_15_EF37AC(var_688, CVar(CLng(&HA)), CVar(CLng(var_8C)), var_680, CVar(CLng(9)), CVar(CLng(var_8C)), var_678, CVar(CLng(8)))) 'String
  loc_170E14F:         Proc_6_7_F26918(var_590, var_580, CVar(CLng(var_8C)), var_670, CVar(CLng(7)))
  loc_170E168:         var_EC = "Insert Into MemTagadaLetter(Code,Type,Vdate,MemCode,CurBillMonth,TillDate,DueAmt,CurMonthBillAmt,CreditAmt,BalanceTillDate,Site_Code,U_EntDt,U_Name,U_AE,LogSite_Code) " & "Values('"
  loc_170E187:         var_110 = CVar(var_EC & global_72 & "','" & arg_14 & "',") 'String
  loc_170E1E2:         var_368 = var_110 & var_A4 & ",'" & CVar(CStr(var_164)) & "','" & CVar(CStr(var_1F4)) & "'," & var_2A4 & "," & CVar(var_670) & "," 
  loc_170E241:         var_5C0 = var_368 & CVar(var_678) & "," & CVar(var_680) & "," & CVar(var_688) & ",'" & CVar(MemVar_1F95070) & "'," & var_590 & ",'" 
  loc_170E254:         var_600 = var_5C0 & CVar(MemVar_1F950C8) & "','A','" 
  loc_170E275:         unk_4D503D.Execute CStr(var_600 & CVar(MemVar_1F95078) & "')"), var_664, -1
  loc_170E2F9:         var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170E301:         var_D8 = CVar(CLng(1)) 'Long
  loc_170E310:         var_A4 = Me.GridSel.TextMatrix)
  loc_170E349:         var_114 = "Update SubGroup Set AllowCredit='N' Where SubCode='" & CStr(var_A4) & "' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')"
  loc_170E352:         unk_4D503D.Execute var_114, var_110, -1
  loc_170E375:       Else
  loc_170E37D:         If (arg_14 = "Article_26(b)") Then
  loc_170E38B:           Proc_6_7_F26918(var_A4, MemVar_1F950EC, var_FC, var_A4, var_D8, MemVar_1F950EC)
  loc_170E394:           var_D8 = CVar(CLng(var_8C)) 'Long
  loc_170E39C:           var_144 = CVar(CLng(1)) 'Long
  loc_170E3AB:           var_164 = Me.GridSel.TextMatrix)
  loc_170E3CC:           Set var_FC = Me.GridSel
  loc_170E3D2:           var_1F4 = var_FC.TextMatrix)
  loc_170E40A:           Proc_6_7_F26918(var_2A4, CVar(CStr(Me.GridSel.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_8C)), var_1F4, CVar(CLng(&HB)), CVar(CLng(var_8C)), var_164)
  loc_170E413:           var_2E4 = CVar(CLng(var_8C)) 'Long
  loc_170E41B:           var_304 = CVar(CLng(7)) 'Long
  loc_170E444:           var_378 = CVar(CLng(var_8C)) 'Long
  loc_170E46E:           var_678 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E49F:           var_680 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E4D0:           var_688 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E4EE:           var_550 = Me.GridSel.TextMatrix)
  loc_170E4FF:           var_5E0 = CVar(Proc_6_15_EF37AC(var_550, CVar(CLng(2)), CVar(CLng(var_8C)), var_688, CVar(CLng(&HA)), CVar(CLng(var_8C)), var_680, CVar(CLng(9)))) 'String
  loc_170E505:           Proc_6_7_F26918(var_600, var_5E0, CVar(CLng(var_8C)), var_678, CVar(CLng(8)))
  loc_170E51E:           var_EC = "Insert Into MemTagadaLetter(Code,Type,Vdate,MemCode,CurBillMonth,TillDate,DueAmt,CurMonthBillAmt,CreditAmt,BalanceTillDate,ContraCode,ContraType,Site_Code,U_EntDt,U_Name,U_AE,LogSite_Code) " & "Values('"
  loc_170E53D:           var_110 = CVar(var_EC & global_72 & "','" & arg_14 & "',") 'String
  loc_170E58F:           var_348 = var_110 & var_A4 & ",'" & CVar(CStr(var_164)) & "','" & CVar(CStr(var_1F4)) & "'," & var_2A4 & "," & CVar(Val(CStr(Me.GridSel.TextMatrix)))) 
  loc_170E5E8:           var_590 = var_348 & "," & CVar(var_678) & "," & CVar(var_680) & "," & CVar(var_688) & ",'" & CVar(CStr(var_550)) & "','Article_26(a)','" 
  loc_170E615:           var_664 = var_590 & CVar(MemVar_1F95070) & "'," & var_600 & ",'" & CVar(MemVar_1F950C8) 
  loc_170E63F:           unk_4D503D.Execute CStr(var_664 & "','A','" & CVar(MemVar_1F95078) & "')"), var_718, -1
  loc_170E6CD:           var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170E6D5:           var_D8 = CVar(CLng(2)) 'Long
  loc_170E6E4:           var_A4 = Me.GridSel.TextMatrix)
  loc_170E727:           var_3C0 = "Update MemTagadaLetter Set ContraCode='" & global_72 & "',ContraType='" & arg_14 & "' Where Code='" & CStr(var_A4)
  loc_170E745:           unk_4D503D.Execute var_3C0 & "' And Type='Article_26(a)' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')", var_110, -1
  loc_170E770:         Else
  loc_170E778:           If (arg_14 = "Article_23") Then
  loc_170E786:             Proc_6_7_F26918(var_A4, MemVar_1F950EC, var_FC, var_A4, var_D8, MemVar_1F950EC)
  loc_170E78F:             var_D8 = CVar(CLng(var_8C)) 'Long
  loc_170E797:             var_144 = CVar(CLng(1)) 'Long
  loc_170E7A6:             var_164 = Me.GridSel.TextMatrix)
  loc_170E7C7:             Set var_FC = Me.GridSel
  loc_170E7CD:             var_1F4 = var_FC.TextMatrix)
  loc_170E805:             Proc_6_7_F26918(var_2A4, CVar(CStr(Me.GridSel.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_8C)), var_1F4, CVar(CLng(&HB)), CVar(CLng(var_8C)), var_164)
  loc_170E80E:             var_2E4 = CVar(CLng(var_8C)) 'Long
  loc_170E838:             var_670 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E869:             var_678 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E89A:             var_680 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E8CB:             var_688 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E8D3:             var_580 = CVar(Proc_6_15_EF37AC(var_688, CVar(CLng(&HA)), CVar(CLng(var_8C)), var_680, CVar(CLng(9)), CVar(CLng(var_8C)), var_678, CVar(CLng(8)))) 'String
  loc_170E8D9:             Proc_6_7_F26918(var_590, var_580, CVar(CLng(var_8C)), var_670, CVar(CLng(7)))
  loc_170E8F2:             var_EC = "Insert Into MemTagadaLetter(Code,Type,Vdate,MemCode,CurBillMonth,TillDate,DueAmt,CurMonthBillAmt,CreditAmt,BalanceTillDate,Site_Code,U_EntDt,U_Name,U_AE,LogSite_Code) " & "Values('"
  loc_170E911:             var_110 = CVar(var_EC & global_72 & "','" & arg_14 & "',") 'String
  loc_170E963:             var_348 = var_110 & var_A4 & ",'" & CVar(CStr(var_164)) & "','" & CVar(CStr(var_1F4)) & "'," & var_2A4 & "," & CVar(var_670) 
  loc_170E9C2:             var_5A0 = var_348 & "," & CVar(var_678) & "," & CVar(var_680) & "," & CVar(var_688) & ",'" & CVar(MemVar_1F95070) & "'," & var_590 
  loc_170E9FF:             unk_4D503D.Execute CStr(var_5A0 & ",'" & CVar(MemVar_1F950C8) & "','A','" & CVar(MemVar_1F95078) & "')"), var_664, -1
  loc_170EA83:             var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170EA8B:             var_D8 = CVar(CLng(1)) 'Long
  loc_170EACC:             var_F8 = "Update SubGroup Set AllowCredit='N' Where SubCode='" & CStr(Me.GridSel.TextMatrix)) & "' And (LOGSITE_CODE='" & MemVar_1F95078
  loc_170EADC:             unk_4D503D.Execute var_F8 & "' or LOGSITE_CODE='HO')", var_110, -1
  loc_170EAFC:           End If
  loc_170EAFC:         End If
  loc_170EAFC:       End If
  loc_170EAFE:       var_88 = &HFF
  loc_170EB26:       For var_720 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_720 'Integer
  loc_170EB3F:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_170EB5A:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_170EB75:         Me.GridSel.CellBackColor = &H80FF
  loc_170EB80:       Next var_720 'Integer
  loc_170EB85:     End If
  loc_170EB88:   Next var_A8 'Integer
  loc_170EB8D:   Exit For
  loc_170EB90: End If
  loc_170EB98: CRefVarAry
  loc_170EBA0: For var_724 = 0 To CInt(UBound(arg_C, 1)): var_8A = var_724 'Integer
  loc_170EBDE:   var_D8 = (CLng(var_8A) > (CLng(Me.GridSel.Rows) - 1))
  loc_170EBF4:   If CBool((arg_C(var_8A) = 0) Or var_D8) Then
  loc_170EBF7:     GoTo loc_170F8EE
  loc_170EBFA:   End If
  loc_170EC0B:   var_8C = CInt(arg_C(var_8A))
  loc_170EC15:   var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170EC1A:   var_D8 = 0
  loc_170EC49:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_170EC50:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170EC67:     var_A4 = Me.GridSel.TextMatrix)
  loc_170EC83:     If (CStr(var_A4) <> vbNullString) Then
  loc_170EC8C:       var_C8 = 0
  loc_170ECA9:       var_EC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),0)+1 AS MyCode From MemTagadaLetter where Site_Code='" & MemVar_1F95070
  loc_170ECC7:       unk_4D503D.Execute CStr(var_A4) & "' And Type='" & arg_14 & "'", var_A4, -1
  loc_170ECCF:       var_94 = var_94.Fields
  loc_170ECD7:       var_C8 = var_FC.Item(var_FC)
  loc_170ECDF:       var_100 = var_100.Value
  loc_170ED1E:       var_A4 = "00000000"
  loc_170ED32:       var_110 = Format(CStr(var_110), var_A4)
  loc_170ED41:       global_72 = CStr(var_110)
  loc_170ED57:       If (arg_14 = "Article_26(a)") Then
  loc_170ED65:         Proc_6_7_F26918(var_A4, MemVar_1F950EC, 1, 1, var_110, CVar(CLng(1)))
  loc_170ED6E:         var_D8 = CVar(CLng(var_8C)) 'Long
  loc_170ED76:         var_144 = CVar(CLng(1)) 'Long
  loc_170ED85:         var_164 = Me.GridSel.TextMatrix)
  loc_170EDA6:         Set var_FC = Me.GridSel
  loc_170EDAC:         var_1F4 = var_FC.TextMatrix)
  loc_170EDE4:         Proc_6_7_F26918(var_2A4, CVar(CStr(Me.GridSel.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_8C)), var_1F4, CVar(CLng(&HB)), CVar(CLng(var_8C)), var_164)
  loc_170EDED:         var_2E4 = CVar(CLng(var_8C)) 'Long
  loc_170EE17:         var_670 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170EE48:         var_678 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170EE79:         var_680 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170EEAA:         var_688 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170EEB2:         var_580 = CVar(Proc_6_15_EF37AC(var_688, CVar(CLng(&HA)), CVar(CLng(var_8C)), var_680, CVar(CLng(9)), CVar(CLng(var_8C)), var_678, CVar(CLng(8)))) 'String
  loc_170EEB8:         Proc_6_7_F26918(var_590, var_580, CVar(CLng(var_8C)), var_670, CVar(CLng(7)))
  loc_170EED1:         var_EC = "Insert Into MemTagadaLetter(Code,Type,Vdate,MemCode,CurBillMonth,TillDate,DueAmt,CurMonthBillAmt,CreditAmt,BalanceTillDate,Site_Code,U_EntDt,U_Name,U_AE,LogSite_Code) " & "Values('"
  loc_170EEF0:         var_110 = CVar(var_EC & global_72 & "','" & arg_14 & "',") 'String
  loc_170EF4B:         var_368 = var_110 & var_A4 & ",'" & CVar(CStr(var_164)) & "','" & CVar(CStr(var_1F4)) & "'," & var_2A4 & "," & CVar(var_670) & "," 
  loc_170EFAA:         var_5C0 = var_368 & CVar(var_678) & "," & CVar(var_680) & "," & CVar(var_688) & ",'" & CVar(MemVar_1F95070) & "'," & var_590 & ",'" 
  loc_170EFBD:         var_600 = var_5C0 & CVar(MemVar_1F950C8) & "','A','" 
  loc_170EFDE:         unk_4D503D.Execute CStr(var_600 & CVar(MemVar_1F95078) & "')"), var_664, -1
  loc_170F062:         var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170F06A:         var_D8 = CVar(CLng(1)) 'Long
  loc_170F079:         var_A4 = Me.GridSel.TextMatrix)
  loc_170F0B2:         var_114 = "Update SubGroup Set AllowCredit='N' Where SubCode='" & CStr(var_A4) & "' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')"
  loc_170F0BB:         unk_4D503D.Execute var_114, var_110, -1
  loc_170F0DE:       Else
  loc_170F0E6:         If (arg_14 = "Article_26(b)") Then
  loc_170F0F4:           Proc_6_7_F26918(var_A4, MemVar_1F950EC, var_FC, var_A4, var_D8, MemVar_1F950EC)
  loc_170F0FD:           var_D8 = CVar(CLng(var_8C)) 'Long
  loc_170F105:           var_144 = CVar(CLng(1)) 'Long
  loc_170F114:           var_164 = Me.GridSel.TextMatrix)
  loc_170F135:           Set var_FC = Me.GridSel
  loc_170F13B:           var_1F4 = var_FC.TextMatrix)
  loc_170F173:           Proc_6_7_F26918(var_2A4, CVar(CStr(Me.GridSel.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_8C)), var_1F4, CVar(CLng(&HB)), CVar(CLng(var_8C)), var_164)
  loc_170F17C:           var_2E4 = CVar(CLng(var_8C)) 'Long
  loc_170F184:           var_304 = CVar(CLng(7)) 'Long
  loc_170F1AD:           var_378 = CVar(CLng(var_8C)) 'Long
  loc_170F1D7:           var_678 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170F208:           var_680 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170F239:           var_688 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170F257:           var_550 = Me.GridSel.TextMatrix)
  loc_170F268:           var_5E0 = CVar(Proc_6_15_EF37AC(var_550, CVar(CLng(2)), CVar(CLng(var_8C)), var_688, CVar(CLng(&HA)), CVar(CLng(var_8C)), var_680, CVar(CLng(9)))) 'String
  loc_170F26E:           Proc_6_7_F26918(var_600, var_5E0, CVar(CLng(var_8C)), var_678, CVar(CLng(8)))
  loc_170F287:           var_EC = "Insert Into MemTagadaLetter(Code,Type,Vdate,MemCode,CurBillMonth,TillDate,DueAmt,CurMonthBillAmt,CreditAmt,BalanceTillDate,ContraCode,ContraType,Site_Code,U_EntDt,U_Name,U_AE,LogSite_Code) " & "Values('"
  loc_170F2A6:           var_110 = CVar(var_EC & global_72 & "','" & arg_14 & "',") 'String
  loc_170F2F8:           var_348 = var_110 & var_A4 & ",'" & CVar(CStr(var_164)) & "','" & CVar(CStr(var_1F4)) & "'," & var_2A4 & "," & CVar(Val(CStr(Me.GridSel.TextMatrix)))) 
  loc_170F351:           var_590 = var_348 & "," & CVar(var_678) & "," & CVar(var_680) & "," & CVar(var_688) & ",'" & CVar(CStr(var_550)) & "','Article_26(a)','" 
  loc_170F37E:           var_664 = var_590 & CVar(MemVar_1F95070) & "'," & var_600 & ",'" & CVar(MemVar_1F950C8) 
  loc_170F3A8:           unk_4D503D.Execute CStr(var_664 & "','A','" & CVar(MemVar_1F95078) & "')"), var_718, -1
  loc_170F436:           var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170F43E:           var_D8 = CVar(CLng(2)) 'Long
  loc_170F44D:           var_A4 = Me.GridSel.TextMatrix)
  loc_170F490:           var_3C0 = "Update MemTagadaLetter Set ContraCode='" & global_72 & "',ContraType='" & arg_14 & "' Where Code='" & CStr(var_A4)
  loc_170F4AE:           unk_4D503D.Execute var_3C0 & "' And Type='Article_26(a)' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')", var_110, -1
  loc_170F4D9:         Else
  loc_170F4E1:           If (arg_14 = "Article_23") Then
  loc_170F4EF:             Proc_6_7_F26918(var_A4, MemVar_1F950EC, var_FC, var_A4, var_D8, MemVar_1F950EC)
  loc_170F4F8:             var_D8 = CVar(CLng(var_8C)) 'Long
  loc_170F500:             var_144 = CVar(CLng(1)) 'Long
  loc_170F50F:             var_164 = Me.GridSel.TextMatrix)
  loc_170F536:             var_1F4 = Me.GridSel.TextMatrix)
  loc_170F56E:             Proc_6_7_F26918(var_2A4, CVar(CStr(Me.GridSel.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_8C)), var_1F4, CVar(CLng(&HB)), CVar(CLng(var_8C)), var_164)
  loc_170F577:             var_2E4 = CVar(CLng(var_8C)) 'Long
  loc_170F5A1:             var_670 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170F5D2:             var_678 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170F603:             var_680 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170F634:             var_688 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170F63C:             var_580 = CVar(Proc_6_15_EF37AC(var_688, CVar(CLng(&HA)), CVar(CLng(var_8C)), var_680, CVar(CLng(9)), CVar(CLng(var_8C)), var_678, CVar(CLng(8)))) 'String
  loc_170F642:             Proc_6_7_F26918(var_590, var_580, CVar(CLng(var_8C)), var_670, CVar(CLng(7)))
  loc_170F65B:             var_EC = "Insert Into MemTagadaLetter(Code,Type,Vdate,MemCode,CurBillMonth,TillDate,DueAmt,CurMonthBillAmt,CreditAmt,BalanceTillDate,Site_Code,U_EntDt,U_Name,U_AE,LogSite_Code) " & "Values('"
  loc_170F67A:             var_110 = CVar(var_EC & global_72 & "','" & arg_14 & "',") 'String
  loc_170F680:             var_124 = var_110 & var_A4 
  loc_170F689:             var_134 = var_124 & ",'" 
  loc_170F6E0:             var_3E0 = var_134 & CVar(CStr(var_164)) & "','" & CVar(CStr(var_1F4)) & "'," & var_2A4 & "," & CVar(var_670) & "," & CVar(var_678) 
  loc_170F73E:             var_5E0 = var_3E0 & "," & CVar(var_680) & "," & CVar(var_688) & ",'" & CVar(MemVar_1F95070) & "'," & var_590 & ",'" & CVar(MemVar_1F950C8) 
  loc_170F768:             unk_4D503D.Execute CStr(var_5E0 & "','A','" & CVar(MemVar_1F95078) & "')"), var_664, -1
  loc_170F7EC:             var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170F7F4:             var_D8 = CVar(CLng(1)) 'Long
  loc_170F835:             var_F8 = "Update SubGroup Set AllowCredit='N' Where SubCode='" & CStr(Me.GridSel.TextMatrix)) & "' And (LOGSITE_CODE='" & MemVar_1F95078
  loc_170F845:             unk_4D503D.Execute var_F8 & "' or LOGSITE_CODE='HO')", var_110, -1
  loc_170F865:           End If
  loc_170F865:         End If
  loc_170F865:       End If
  loc_170F867:       var_88 = &HFF
  loc_170F88F:       For var_728 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_728 'Integer
  loc_170F8A8:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_170F8C3:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_170F8DE:         Me.GridSel.CellBackColor = &H80FF
  loc_170F8E9:       Next var_728 'Integer
  loc_170F8EE:       ' Referenced from: 170EBF7
  loc_170F8EE:     End If
  loc_170F8EE:   End If
  loc_170F8F1: Next var_724 'Integer
  loc_170F8F6: ' Referenced from: 170EB8D
  loc_170F906: If ((var_88 = 0) And (CInt(arg_10) = 0)) Then
  loc_170F90B:   var_86 = 0
  loc_170F90E:   var_B8 = 0
  loc_170F917:   var_D8 = 1
  loc_170F92A:   var_A4 = Me.GridSel.TextMatrix)
  loc_170F952:   MsgBox(CVar("Select " & CStr(var_A4)), &H40, var_124, var_134, var_164)
  loc_170F97D:   Me.GridSel.Row = 1
  loc_170F998:   Me.GridSel.Col = 0
  loc_170F9A4:   Set var_94 = Me.GridSel
  loc_170F9B5: End If
  loc_170F9B5: Proc_290_36_170F9C4 = GridSel.DispID_8001
  loc_170F9BB: Proc_290_36_170F9C4 = var_A4
End Sub

Public Sub Proc_290_37_178FFC0
  'Data Table: 4D5020
  Dim var_9C As String
  Dim var_BC As Variant
  Dim var_AC As Variant
  Dim var_118 As Variant
  Dim var_164 As Variant
  Dim var_1D8 As Double
  Dim var_11C As String
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_13C As Variant
  Dim var_CC As Variant
  Dim var_14C As Variant
  Dim var_EC As Variant
  Dim var_15C As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim unk_4D503D As Connection15
  Dim var_100 As Recordset15
  Dim var_88 As Variant
  Dim var_12C As TextBox
  Dim var_1BC As Variant
  Dim var_160 As Recordset15
  Dim var_1D0 As Field20
  Dim var_108 As Double
  Dim var_1F0 As Variant
  Dim var_110 As Double
  Dim var_128 As Variant
  Dim var_214 As Integer
  Dim var_26C As Variant
  loc_178E12C: Set var_88 = Me.TopCtrl1
  loc_178E132: Call {C25E4434-8C28-414A-9B911155EADDC28A}.DispID_68030005()
  loc_178E13A: var_9C = CStr()
  loc_178E14B: If (var_9C <> "Add") Then
  loc_178E154:   Call 0.Method_arg_50 (var_9C)
  loc_178E162:   var_BC = CVar(var_9C) 'String
  loc_178E175:   MsgBox("Only In Add Mode.", &H40, var_BC, var_DC, var_FC)
  loc_178E185:   Exit Sub
  loc_178E186: End If
  loc_178E18A: Set var_100 = New 
  loc_178E198: If (global_52 = "Article_26(a)") Then
  loc_178E1A9:   Set var_88 = Me.Text1
  loc_178E1AF:   Call 0.Method_Proc_290_37_178FFC00 (CInt(&H18), var_118)
  loc_178E1C7:   Set var_128 = Me.Text1
  loc_178E1CD:   Call 0.Method_Proc_290_37_178FFC00 (CInt(&H15))
  loc_178E1DC:   Proc_6_7_F26918(var_BC, CVar(var_12C))
  loc_178E1EF:   Set var_160 = Me.Text1
  loc_178E1F5:   Call 0.Method_Proc_290_37_178FFC00 (CInt(&H14), var_164)
  loc_178E20A:   var_1D8 = Val(var_164.Text)
  loc_178E221:   var_11C = "Select L.SubCode,Max(S.ConPrefix) As ConPrefix,Max(S.ConPerson) As ConPerson,Max(S.CardNo) As CardNo,Max(S.Name) As AcName,isnull(Sum(AmtDr),0)-isnull(Sum(AmtCr),0) As Balance From Ledger L Left Join SubGroup S On L.SubCode=S.SubCode INNER JOIN MEMCATMAST MCAT ON S.COMPANYTYPE=MCAT.CODE WHERE S.ActiveYN=1 And (S.COMPANYTYPE IS NOT NULL AND S.COMPANYTYPE<>'') And S.CompanyType='" & var_118.Tag
  loc_178E240:   var_AC = " And L.SubCode Not In (Select Distinct MemCode From MemTagadaLetter MTL Inner Join SubGroup S On MemCode=S.SubCode WHERE S.AllowCredit='N' And IsNull(MTL.ContraCode,'')='' And IsNull(MTL.ContraType,'')='' And (MTL.LOGSITE_CODE='"
  loc_178E24F:   var_14C = CVar(var_11C & "' and (S.LOGSITE_CODE='" & MemVar_1F95078 & "' or S.LOGSITE_CODE='HO') And L.V_date<=") & var_BC & var_AC & CVar(MemVar_1F95078) 
  loc_178E253:   var_EC = "' or MTL.LOGSITE_CODE='HO')) Group By L.SubCode Having isnull(Sum(AmtDr),0)-isnull(Sum(AmtCr),0)>="
  loc_178E258:   var_15C = var_14C & var_EC 
  loc_178E27A:   unk_4D503D.Execute CStr(var_15C & CVar(var_1D8) & " Order By Max(S.ConPerson)"), var_1CC, -1
  loc_178E285:   Set var_100 = var_1D0
  loc_178E2C0: Else
  loc_178E2CB:   If (global_52 = "Article_26(b)") Then
  loc_178E2DB:     var_AC = "Select MTL.Code,MTL.Vdate,MTL.MemCode,S.ConPrefix As ConPrefix,S.ConPerson As ConPerson,S.CardNo As CardNo,S.Name As AcName,MTL.CurBillMonth,MTL.TillDate,MTL.DueAmt,MTL.CurMonthBillAmt,MTL.CreditAmt,MTL.BalanceTillDate From MemTagadaLetter MTL Left Join SubGroup S On MTL.MemCode=S.SubCode WHERE S.AllowCredit='N' And MTL.Vdate="
  loc_178E2EB:     Set var_88 = Me.Text1
  loc_178E2F1:     Call 0.Method_Proc_290_37_178FFC00 (CInt(&H15), var_118, var_AC, var_15C, -1)
  loc_178E300:     Proc_6_7_F26918(var_BC, CVar(var_118), var_128)
  loc_178E31B:     var_13C = var_1D0 & var_BC & " And IsNull(MTL.ContraCode,'')='' And IsNull(MTL.ContraType,'')='' And (S.LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_178E332:     unk_4D503D.Execute CStr(var_13C & "' or S.LOGSITE_CODE='HO') Order By MTL.VDate,S.ConPerson"), var_1D8, var_12C
  loc_178E33D:     Set var_100 = var_128
  loc_178E35E:   Else
  loc_178E369:     If (global_52 = "Article_23") Then
  loc_178E37A:       Set var_88 = Me.Text1
  loc_178E380:       Call 0.Method_Proc_290_37_178FFC00 (CInt(&H18), var_118)
  loc_178E398:       Set var_128 = Me.Text1
  loc_178E39E:       Call 0.Method_Proc_290_37_178FFC00 (CInt(&H15))
  loc_178E3AD:       Proc_6_7_F26918(var_BC, CVar(var_12C))
  loc_178E3C0:       Set var_160 = Me.Text1
  loc_178E3C6:       Call 0.Method_Proc_290_37_178FFC00 (CInt(&H14), var_164)
  loc_178E3DB:       var_1D8 = Val(var_164.Text)
  loc_178E3F2:       var_11C = "Select L.SubCode,Max(S.ConPrefix) As ConPrefix,Max(S.ConPerson) As ConPerson,Max(S.CardNo) As CardNo,Max(S.Name) As AcName,isnull(Sum(AmtDr),0)-isnull(Sum(AmtCr),0) As Balance From Ledger L Left Join SubGroup S On L.SubCode=S.SubCode INNER JOIN MEMCATMAST MCAT ON S.COMPANYTYPE=MCAT.CODE WHERE S.ActiveYN=1 And (S.COMPANYTYPE IS NOT NULL AND S.COMPANYTYPE<>'') And S.CompanyType='" & var_118.Tag
  loc_178E411:       var_AC = " And L.SubCode Not In (Select Distinct MemCode From MemTagadaLetter MTL Inner Join SubGroup S On MemCode=S.SubCode WHERE S.AllowCredit='N' And IsNull(MTL.ContraCode,'')='' And IsNull(MTL.ContraType,'')='' And (MTL.LOGSITE_CODE='"
  loc_178E416:       var_13C = CVar(var_11C & "' and (S.LOGSITE_CODE='" & MemVar_1F95078 & "' or S.LOGSITE_CODE='HO') And L.V_date<=") & var_BC & var_AC 
  loc_178E424:       var_EC = "' or MTL.LOGSITE_CODE='HO')) Group By L.SubCode Having isnull(Sum(AmtDr),0)-isnull(Sum(AmtCr),0)>="
  loc_178E429:       var_15C = var_13C & CVar(MemVar_1F95078) & CVar(MemVar_1F95078) 
  loc_178E434:       var_188 = var_15C & CVar(var_1D8) 
  loc_178E43D:       var_1A8 = var_188 & " Order By Max(S.ConPerson)" 
  loc_178E44B:       unk_4D503D.Execute CStr(var_1A8), var_1CC, -1
  loc_178E456:       Set var_100 = var_1D0
  loc_178E48E:     End If
  loc_178E48E:   End If
  loc_178E48E: End If
  loc_178E48E: Call Proc_290_35_13429EC(var_1D0, var_1D8)
  loc_178E4A7: If (var_100.RecordCount = 0) Then
  loc_178E4BD:   Me.GridSel.Rows = 2
  loc_178E4C5:   Exit Sub
  loc_178E4C6: End If
  loc_178E4D9: Me.GridSel.Row = 1
  loc_178E4EC: If (global_52 = "Article_26(a)") Then
  loc_178E4EF:   ' Referenced from: 178ED95
  loc_178E4FE:   If Not(var_100.EOF) Then
  loc_178E536:     Set var_128 = Me.Text1
  loc_178E53C:     Call 0.Method_Proc_290_37_178FFC00 (CInt(&H16), var_12C)
  loc_178E54F:     var_1BC = 0
  loc_178E571:     var_EC = "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4)='"
  loc_178E580:     var_13C = "Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & var_100.Fields.Item("subcode").Value & CVar(MemVar_1F95078) & CVar(var_12C.Text) 
  loc_178E597:     unk_4D503D.Execute CStr(var_13C & "'"), var_15C, -1
  loc_178E59F:     var_160 = var_160.Fields
  loc_178E5A7:     var_1BC = var_164.Item(var_164)
  loc_178E5AF:     var_1D0 = var_1D0.Value
  loc_178E5BA:     Proc_6_39_E7D3A0(var_1A8, var_188)
  loc_178E5C3:     var_108 = CSng(var_1A8)
  loc_178E621:     Set var_128 = Me.Text1
  loc_178E627:     Call 0.Method_Proc_290_37_178FFC00 (CInt(&H15), var_12C, var_108)
  loc_178E636:     Proc_6_7_F26918(var_13C, CVar(var_12C))
  loc_178E646:     Proc_6_7_F26918(var_188, MemVar_1F950EC)
  loc_178E651:     var_1F0 = 0
  loc_178E66F:     var_BC = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST') And SubCode='" & var_100.Fields.Item("subcode").Value 
  loc_178E693:     var_9C = CStr(var_BC & "' And V_date>" & var_13C & " And V_date <=" & var_188)
  loc_178E69D:     unk_4D503D.Execute var_9C, var_1CC, -1
  loc_178E6A5:     var_160 = var_160.Fields
  loc_178E6AD:     var_1F0 = var_164.Item(var_164)
  loc_178E6B5:     var_1D0 = var_1D0.Value
  loc_178E6BE:     var_110 = CSng(var_200)
  loc_178E712:     Proc_6_39_E7D3A0(var_BC, CVar(var_100.Fields.Item("Balance")), var_110)
  loc_178E72E:     If (var_BC > CVar(var_110)) Then
  loc_178E735:       Set var_204 = Me.GridSel
  loc_178E738:       var_AC = vbNullString
  loc_178E75C:       var_AC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178E764:       var_EC = CVar(CLng(0)) 'Long
  loc_178E769:       var_198 = vbNullString
  loc_178E772:       LateIdCallSt
  loc_178E793:       var_AC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178E79B:       var_EC = CVar(CLng(2)) 'Long
  loc_178E7A0:       var_198 = vbNullString
  loc_178E7A9:       LateIdCallSt
  loc_178E7CA:       var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178E7D2:       var_198 = CVar(CLng(3)) 'Long
  loc_178E807:       LateIdCallSt
  loc_178E830:       var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178E838:       var_178 = CVar(CLng(1)) 'Long
  loc_178E868:       var_DC = CVar(CStr(var_100.Fields.Item("subcode").Value)) 'String
  loc_178E86F:       LateIdCallSt
  loc_178E8D1:       var_DC = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("ConPrefix")), CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)), var_204, var_DC, CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_178E8D8:       LateIdCallSt
  loc_178E938:       var_DC = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("ConPerson")), CVar(CLng(5)), CVar(CLng(Me.GridSel.Row)), var_204, var_DC, var_204)) 'String
  loc_178E93F:       LateIdCallSt
  loc_178E961:       var_BC = Me.GridSel.Row
  loc_178E9A6:       LateIdCallSt
  loc_178E9E4:       Proc_6_39_E7D3A0(var_BC, CVar(var_100.Fields.Item("Balance")), var_204, CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("CardNo")), CVar(CLng(6)), CVar(CLng(var_BC)), var_204, var_DC)), CVar(CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy"))))
  loc_178E9FC:       var_178 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178EA04:       var_1BC = CVar(CLng(7)) 'Long
  loc_178EA28:       var_DC = (var_BC - CVar(var_110))
  loc_178EA2C:       var_FC = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("CardNo")), CVar(CLng(6)), CVar(CLng(var_BC)), var_204, var_DC)) 'Variant
  loc_178EA3F:       var_188 = CVar(CStr(Format(var_FC, "0.00"))) 'String
  loc_178EA46:       LateIdCallSt
  loc_178EA79:       var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178EA81:       var_198 = CVar(CLng(8)) 'Long
  loc_178EAAF:       var_FC = CVar(CStr(Format(var_108, "0.00"))) 'String
  loc_178EAB6:       LateIdCallSt
  loc_178EADF:       var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178EB0C:       var_BC = Format(var_110, "0.00")
  loc_178EB1C:       LateIdCallSt
  loc_178EB49:       var_118 = var_100.Fields.Item("Balance")
  loc_178EB58:       Proc_6_39_E7D3A0(var_BC, CVar(var_118), var_204, CVar(CStr(var_BC)), 1, 1, CVar(CLng(9)))
  loc_178EB67:       var_188 = Me.GridSel.Row
  loc_178EB70:       var_198 = CVar(CLng(var_188)) 'Long
  loc_178EB9C:       var_DC = (var_BC + CVar(var_108))
  loc_178EBA7:       var_FC = (Me.GridSel.Row - CVar(var_110))
  loc_178EBB5:       var_15C = Format(CVar(CStr(var_BC)), "0.00")
  loc_178EBBE:       var_1A8 = CVar(CStr(var_15C)) 'String
  loc_178EBC5:       LateIdCallSt
  loc_178EBF2:       Set var_88 = Me.Text1
  loc_178EBF8:       Call 0.Method_Proc_290_37_178FFC00 (CInt(&H16), var_118, var_204, var_1A8, 1, 1, CVar(CLng(&HA)))
  loc_178EC10:       var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178EC4C:       LateIdCallSt
  loc_178EC73:       Set var_88 = Me.Text1
  loc_178EC79:       Call 0.Method_Proc_290_37_178FFC00 (CInt(&H15), var_118, var_204, CVar(CStr(Format(CVar(var_118), "MMM/yyyy"))), 1, 1, CVar(CLng(&HB)))
  loc_178EC91:       var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178EC99:       var_178 = CVar(CLng(&HC)) 'Long
  loc_178ECCD:       LateIdCallSt
  loc_178ED04:       var_178 = CVar(CLng(&HD)) 'Long
  loc_178ED31:       var_DC = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("AcName")), var_178, CVar(CLng(Me.GridSel.Row)), var_204, CVar(CStr(Format(CVar(var_100.Fields.Item("AcName")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_178ED38:       LateIdCallSt
  loc_178ED52:       Set var_204 = Nothing 
  loc_178ED6F:       var_AC = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_178ED7E:       Me.GridSel.Row = "AcName"
  loc_178ED8D:     End If
  loc_178ED90:     var_100.MoveNext
  loc_178ED95:     GoTo loc_178E4EF
  loc_178ED98:   End If
  loc_178ED9B: Else
  loc_178EDA6:   If (global_52 = "Article_26(b)") Then
  loc_178EDA9:     ' Referenced from:   178F6DD
  loc_178EDB8:     If Not(var_100.EOF) Then
  loc_178EDF0:       Set var_128 = Me.Text1
  loc_178EDF6:       Call 0.Method_Proc_290_37_178FFC00 (CInt(&H16), var_12C, var_9C, var_204, var_DC, var_178)
  loc_178EDFE:       var_CC = var_12C.Text
  loc_178EE09:       var_1BC = 0
  loc_178EE1F:       var_CC = "Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='"
  loc_178EE2B:       var_EC = "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4)='"
  loc_178EE3A:       var_13C = var_CC & var_100.Fields.Item("MemCode").Value & CVar(var_110) & CVar(var_9C) 
  loc_178EE51:       unk_4D503D.Execute CStr(var_13C & "'"), var_15C, -1
  loc_178EE59:       var_160 = var_160.Fields
  loc_178EE61:       var_1BC = var_164.Item(var_164)
  loc_178EE69:       var_1D0 = var_1D0.Value
  loc_178EE74:       Proc_6_39_E7D3A0(var_1A8, var_188, var_188, var_CC)
  loc_178EE7D:       var_108 = CSng(var_1A8)
  loc_178EEE7:       var_12C = var_100.Fields.Item("TillDate")
  loc_178EEF6:       Proc_6_7_F26918(var_13C, CVar(var_12C), var_108)
  loc_178EF06:       Proc_6_7_F26918(var_188, MemVar_1F950EC, var_198)
  loc_178EF11:       var_214 = 0
  loc_178EF2F:       var_BC = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST') And SubCode='" & var_100.Fields.Item("MemCode").Value 
  loc_178EF33:       var_EC = "' And V_date>"
  loc_178EF53:       var_9C = CStr(var_BC & var_EC & var_13C & " And V_date <=" & var_188)
  loc_178EF5D:       unk_4D503D.Execute var_9C, var_1CC, -1
  loc_178EF65:       var_160 = var_160.Fields
  loc_178EF6D:       var_214 = var_164.Item(var_164)
  loc_178EF75:       var_1D0 = var_1D0.Value
  loc_178EF80:       Proc_6_39_E7D3A0(var_234, var_200, var_200)
  loc_178EFAE:       Proc_6_39_E7D3A0(var_25C, CVar(var_100.Fields.Item("CreditAmt")), var_234)
  loc_178EFB6:       var_26C = (var_EC - var_25C)
  loc_178EFBB:       var_110 = CSng(var_26C)
  loc_178F017:       Proc_6_39_E7D3A0(var_BC, CVar(var_100.Fields.Item("BalanceTillDate")))
  loc_178F033:       If (var_BC > CVar(var_110)) Then
  loc_178F03A:         Set var_270 = Me.GridSel
  loc_178F03D:         var_AC = vbNullString
  loc_178F061:         var_AC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178F077:         LateIdCallSt
  loc_178F0CD:         var_DC = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("Code")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_270, vbNullString, CVar(CLng(0)))) 'String
  loc_178F0D4:         LateIdCallSt
  loc_178F11B:         var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178F123:         var_198 = CVar(CLng(3)) 'Long
  loc_178F157:         LateIdCallSt
  loc_178F186:         var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178F18E:         var_178 = CVar(CLng(1)) 'Long
  loc_178F1BE:         var_DC = CVar(CStr(var_100.Fields.Item("MemCode").Value)) 'String
  loc_178F1C5:         LateIdCallSt
  loc_178F227:         var_DC = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("ConPrefix")), CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)), var_270, var_DC, CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_178F22E:         LateIdCallSt
  loc_178F28E:         var_DC = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("ConPerson")), CVar(CLng(5)), CVar(CLng(Me.GridSel.Row)), var_270, var_DC, var_270)) 'String
  loc_178F295:         LateIdCallSt
  loc_178F2B7:         var_BC = Me.GridSel.Row
  loc_178F2F5:         var_DC = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("CardNo")), CVar(CLng(6)), CVar(CLng(var_BC)), var_270, var_DC)) 'String
  loc_178F2FC:         LateIdCallSt
  loc_178F33A:         Proc_6_39_E7D3A0(var_BC, CVar(var_100.Fields.Item("BalanceTillDate")), var_270, var_DC, CVar(CStr(Format(CVar(var_100.Fields.Item("VDate")), "dd/MMM/yyyy"))))
  loc_178F352:         var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178F35A:         var_198 = CVar(CLng(7)) 'Long
  loc_178F383:         var_14C = CVar(CStr(Format(var_BC, "0.00"))) 'String
  loc_178F38A:         LateIdCallSt
  loc_178F3BB:         var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178F3C3:         var_198 = CVar(CLng(8)) 'Long
  loc_178F3F1:         var_FC = CVar(CStr(Format(var_108, "0.00"))) 'String
  loc_178F3F8:         LateIdCallSt
  loc_178F421:         var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178F44E:         var_BC = Format(var_110, "0.00")
  loc_178F45E:         LateIdCallSt
  loc_178F48B:         var_118 = var_100.Fields.Item("BalanceTillDate")
  loc_178F49A:         Proc_6_39_E7D3A0(var_BC, CVar(var_118), var_270, CVar(CStr(var_BC)), 1, 1, CVar(CLng(9)))
  loc_178F4A9:         var_188 = Me.GridSel.Row
  loc_178F4B2:         var_198 = CVar(CLng(var_188)) 'Long
  loc_178F4DE:         var_DC = (var_BC + CVar(var_108))
  loc_178F4E9:         var_FC = (Me.GridSel.Row - CVar(var_110))
  loc_178F4F7:         var_15C = Format(CVar(CStr(var_BC)), "0.00")
  loc_178F500:         var_1A8 = CVar(CStr(var_15C)) 'String
  loc_178F507:         LateIdCallSt
  loc_178F534:         Set var_88 = Me.Text1
  loc_178F53A:         Call 0.Method_Proc_290_37_178FFC00 (CInt(&H16), var_118, var_270, var_1A8, 1, 1, CVar(CLng(&HA)))
  loc_178F552:         var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178F55A:         var_178 = CVar(CLng(&HB)) 'Long
  loc_178F587:         var_13C = CVar(CStr(Format(CVar(var_118), "MMM/yyyy"))) 'String
  loc_178F58E:         LateIdCallSt
  loc_178F5D9:         var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178F5E1:         var_198 = CVar(CLng(&HC)) 'Long
  loc_178F615:         LateIdCallSt
  loc_178F679:         var_DC = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("AcName")), CVar(CLng(&HD)), CVar(CLng(Me.GridSel.Row)), var_270, CVar(CStr(Format(CVar(var_100.Fields.Item("TillDate")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_178F680:         LateIdCallSt
  loc_178F69A:         Set var_270 = Nothing 
  loc_178F6B7:         var_AC = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_178F6C6:         Me.GridSel.Row = "AcName"
  loc_178F6D5:       End If
  loc_178F6D8:       var_100.MoveNext
  loc_178F6DD:       GoTo loc_178EDA9
  loc_178F6E0:     End If
  loc_178F6E3:   Else
  loc_178F6EE:     If (global_52 = "Article_23") Then
  loc_178F6F1:       ' Referenced from:     178FF97
  loc_178F700:       If Not(var_100.EOF) Then
  loc_178F738:         Set var_128 = Me.Text1
  loc_178F73E:         Call 0.Method_Proc_290_37_178FFC00 (CInt(&H16), var_12C, var_9C, var_270, var_DC, var_198)
  loc_178F746:         var_EC = var_12C.Text
  loc_178F751:         var_1BC = 0
  loc_178F773:         var_EC = "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4)='"
  loc_178F782:         var_13C = "Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & var_100.Fields.Item("subcode").Value & var_EC & CVar(var_9C) 
  loc_178F799:         unk_4D503D.Execute CStr(var_13C & "'"), var_15C, -1
  loc_178F7A1:         var_160 = var_160.Fields
  loc_178F7A9:         var_1BC = var_164.Item(var_164)
  loc_178F7B1:         var_1D0 = var_1D0.Value
  loc_178F7BC:         Proc_6_39_E7D3A0(var_1A8, var_188, var_188, var_270)
  loc_178F7C5:         var_108 = CSng(var_1A8)
  loc_178F823:         Set var_128 = Me.Text1
  loc_178F829:         Call 0.Method_Proc_290_37_178FFC00 (CInt(&H15), var_12C, var_108)
  loc_178F838:         Proc_6_7_F26918(var_13C, CVar(var_12C), var_13C)
  loc_178F848:         Proc_6_7_F26918(var_188, MemVar_1F950EC)
  loc_178F853:         var_1F0 = 0
  loc_178F871:         var_BC = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST') And SubCode='" & var_100.Fields.Item("subcode").Value 
  loc_178F89F:         unk_4D503D.Execute CStr(var_BC & "' And V_date>" & var_13C & " And V_date <=" & var_188), var_1CC, -1
  loc_178F8A7:         var_160 = var_160.Fields
  loc_178F8AF:         var_1F0 = var_164.Item(var_164)
  loc_178F8B7:         var_1D0 = var_1D0.Value
  loc_178F8C0:         var_110 = CSng(var_200)
  loc_178F914:         Proc_6_39_E7D3A0(var_BC, CVar(var_100.Fields.Item("Balance")), var_110)
  loc_178F930:         If (var_BC > CVar(var_110)) Then
  loc_178F937:           Set var_274 = Me.GridSel
  loc_178F93A:           var_AC = vbNullString
  loc_178F95E:           var_AC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178F966:           var_EC = CVar(CLng(0)) 'Long
  loc_178F96B:           var_198 = vbNullString
  loc_178F974:           LateIdCallSt
  loc_178F995:           var_AC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178F99D:           var_EC = CVar(CLng(2)) 'Long
  loc_178F9A2:           var_198 = vbNullString
  loc_178F9AB:           LateIdCallSt
  loc_178F9CC:           var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178F9D4:           var_198 = CVar(CLng(3)) 'Long
  loc_178FA09:           LateIdCallSt
  loc_178FA32:           var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178FA3A:           var_178 = CVar(CLng(1)) 'Long
  loc_178FA6A:           var_DC = CVar(CStr(var_100.Fields.Item("subcode").Value)) 'String
  loc_178FA71:           LateIdCallSt
  loc_178FAD3:           var_DC = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("ConPrefix")), CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)), var_274, var_DC, CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_178FADA:           LateIdCallSt
  loc_178FB3A:           var_DC = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("ConPerson")), CVar(CLng(5)), CVar(CLng(Me.GridSel.Row)), var_274, var_DC, var_274)) 'String
  loc_178FB41:           LateIdCallSt
  loc_178FB63:           var_BC = Me.GridSel.Row
  loc_178FBA1:           var_DC = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("CardNo")), CVar(CLng(6)), CVar(CLng(var_BC)), var_274, var_DC)) 'String
  loc_178FBA8:           LateIdCallSt
  loc_178FBE6:           Proc_6_39_E7D3A0(var_BC, CVar(var_100.Fields.Item("Balance")), var_274, var_DC, CVar(CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy"))))
  loc_178FBFE:           var_178 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178FC06:           var_1BC = CVar(CLng(7)) 'Long
  loc_178FC2A:           var_DC = (var_BC - CVar(var_110))
  loc_178FC41:           var_188 = CVar(CStr(Format(var_DC, "0.00"))) 'String
  loc_178FC48:           LateIdCallSt
  loc_178FC7B:           var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178FC83:           var_198 = CVar(CLng(8)) 'Long
  loc_178FCB1:           var_FC = CVar(CStr(Format(var_108, "0.00"))) 'String
  loc_178FCB8:           LateIdCallSt
  loc_178FCE1:           var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178FD0E:           var_BC = Format(var_110, "0.00")
  loc_178FD1E:           LateIdCallSt
  loc_178FD4B:           var_118 = var_100.Fields.Item("Balance")
  loc_178FD5A:           Proc_6_39_E7D3A0(var_BC, CVar(var_118), var_274, CVar(CStr(var_BC)), 1, 1, CVar(CLng(9)))
  loc_178FD72:           var_198 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178FD9E:           var_DC = (var_BC + CVar(var_108))
  loc_178FDA9:           var_FC = (Me.GridSel.Row - CVar(var_110))
  loc_178FDC7:           LateIdCallSt
  loc_178FDF4:           Set var_88 = Me.Text1
  loc_178FDFA:           Call 0.Method_Proc_290_37_178FFC00 (CInt(&H16), var_118, var_274, CVar(CStr(Format(CVar(CStr(var_BC)), "0.00"))), 1, 1, CVar(CLng(&HA)))
  loc_178FE12:           var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178FE4E:           LateIdCallSt
  loc_178FE75:           Set var_88 = Me.Text1
  loc_178FE7B:           Call 0.Method_Proc_290_37_178FFC00 (CInt(&H15), var_118, var_274, CVar(CStr(Format(CVar(var_118), "MMM/yyyy"))), 1, 1, CVar(CLng(&HB)))
  loc_178FE93:           var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178FE9B:           var_178 = CVar(CLng(&HC)) 'Long
  loc_178FECF:           LateIdCallSt
  loc_178FF33:           var_DC = CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("AcName")), CVar(CLng(&HD)), CVar(CLng(Me.GridSel.Row)), var_274, CVar(CStr(Format(CVar(var_100.Fields.Item("AcName")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_178FF3A:           LateIdCallSt
  loc_178FF54:           Set var_274 = Nothing 
  loc_178FF71:           var_AC = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_178FF80:           Me.GridSel.Row = "AcName"
  loc_178FF8F:         End If
  loc_178FF92:         var_100.MoveNext
  loc_178FF97:         GoTo loc_178F6F1
  loc_178FF9A:       End If
  loc_178FF9A:     End If
  loc_178FF9A:   End If
  loc_178FF9A: End If
  loc_178FFAD: Me.GridSel.FixedRows = 1
  loc_178FFBA: Set var_100 = Nothing
  loc_178FFBD: Exit Sub
End Sub

Public Sub Proc_290_38_E55D5C
  'Data Table: 4D5020
  loc_E55D40: If (CBool(Me.DgMemType.Visible) = &HFF) Then
  loc_E55D52:   Me.DgMemType.Visible = False
  loc_E55D5A: End If
  loc_E55D5A: Exit Sub
End Sub

Public Sub Proc_290_39_E9214C
  'Data Table: 4D5020
  loc_E920E0: On Error Goto loc_E920E4
  loc_E920E3: Exit Sub
  loc_E920E4: ' Referenced from: E920E0
  loc_E920EC: Set var_88 = Err()
  loc_E920F2: Call 0.Method_arg_1C (var_8C)
  loc_E92103: If (var_8C <> 0) Then
  loc_E9210E:   Set var_88 = Err()
  loc_E92114:   Call 0.Method_arg_2C (var_90)
  loc_E92135:   MsgBox(CVar(var_90), &H40, "Validation", var_E0, var_100)
  loc_E92148: End If
  loc_E92148: Exit Sub
End Sub

Public Sub Proc_290_40_E97428
  'Data Table: 4D5020
  Dim var_98 As TextBox
  loc_E973B4: Set var_8C = Me.Text1
  loc_E973BA: Call 0.Method_Proc_290_40_E97428C (var_8E, var_86)
  loc_E973C8: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_E973DB:   Set var_8C = Me.Text1
  loc_E973E1:   Call 0.Method_Proc_290_40_E974280 (var_86, var_98)
  loc_E973E9:   var_98.Text = vbNullString
  loc_E97402:   Set var_8C = Me.Text1
  loc_E97408:   Call 0.Method_Proc_290_40_E974280 (var_86, var_98)
  loc_E97410:   var_98.Tag = vbNullString
  loc_E9741F: Next var_92 'Integer
  loc_E97424: Exit Sub
End Sub

Public Sub Proc_290_41_136C910
  'Data Table: 4D5020
  Dim var_A8 As TextBox
  loc_136C09C: On Error Goto loc_136C908
  loc_136C0B9: If (Me.Recordset15.RecordCount > 0) Then
  loc_136C0FB:   Set var_A4 = Me.Text1
  loc_136C101:   Call 0.Method_Proc_290_41_136C9100 (CInt(0), var_A8)
  loc_136C109:   var_A8.Text = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_136C15B:   Set var_A4 = Me.Text1
  loc_136C161:   Call 0.Method_Proc_290_41_136C9100 (CInt(1), var_A8)
  loc_136C169:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ConPrefix")))
  loc_136C1B9:   Set var_A4 = Me.Text1
  loc_136C1BF:   Call 0.Method_Proc_290_41_136C9100 (CInt(2), var_A8)
  loc_136C1C7:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ConPerson")))
  loc_136C217:   Set var_A4 = Me.Text1
  loc_136C21D:   Call 0.Method_Proc_290_41_136C9100 (CInt(3), var_A8)
  loc_136C225:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_136C275:   Set var_A4 = Me.Text1
  loc_136C27B:   Call 0.Method_Proc_290_41_136C9100 (CInt(4), var_A8)
  loc_136C283:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("AcName")))
  loc_136C2D3:   Set var_A4 = Me.Text1
  loc_136C2D9:   Call 0.Method_Proc_290_41_136C9100 (CInt(5), var_A8)
  loc_136C2E1:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Add1")))
  loc_136C331:   Set var_A4 = Me.Text1
  loc_136C337:   Call 0.Method_Proc_290_41_136C9100 (CInt(6), var_A8)
  loc_136C33F:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Add2")))
  loc_136C38F:   Set var_A4 = Me.Text1
  loc_136C395:   Call 0.Method_Proc_290_41_136C9100 (CInt(7), var_A8)
  loc_136C39D:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Add3")))
  loc_136C3ED:   Set var_A4 = Me.Text1
  loc_136C3F3:   Call 0.Method_Proc_290_41_136C9100 (CInt(8), var_A8)
  loc_136C3FB:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("City")))
  loc_136C44B:   Set var_A4 = Me.Text1
  loc_136C451:   Call 0.Method_Proc_290_41_136C9100 (CInt(9), var_A8)
  loc_136C459:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Pin")))
  loc_136C4A9:   Set var_A4 = Me.Text1
  loc_136C4AF:   Call 0.Method_Proc_290_41_136C9100 (CInt(&HA), var_A8)
  loc_136C4B7:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("State")))
  loc_136C507:   Set var_A4 = Me.Text1
  loc_136C50D:   Call 0.Method_Proc_290_41_136C9100 (CInt(&HB), var_A8)
  loc_136C515:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Phone")))
  loc_136C565:   Set var_A4 = Me.Text1
  loc_136C56B:   Call 0.Method_Proc_290_41_136C9100 (CInt(&HC), var_A8)
  loc_136C573:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Mobile")))
  loc_136C5C3:   Set var_A4 = Me.Text1
  loc_136C5C9:   Call 0.Method_Proc_290_41_136C9100 (CInt(&HD), var_A8)
  loc_136C5D1:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Fax")))
  loc_136C621:   Set var_A4 = Me.Text1
  loc_136C627:   Call 0.Method_Proc_290_41_136C9100 (CInt(&HE), var_A8)
  loc_136C62F:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Email")))
  loc_136C69B:   Set var_A4 = Me.Text1
  loc_136C6A1:   Call 0.Method_Proc_290_41_136C9100 (CInt(&HF), var_A8, CStr(Format(CVar(Me.Recordset15.Fields.Item("DueAmt")), "0.00")))
  loc_136C6A9:   var_A8.Text = 1
  loc_136C71B:   Set var_A4 = Me.Text1
  loc_136C721:   Call 0.Method_Proc_290_41_136C9100 (CInt(&H10), var_A8, CStr(Format(CVar(Me.Recordset15.Fields.Item("CurMonthBillAmt")), "0.00")))
  loc_136C729:   var_A8.Text = 1
  loc_136C77F:   Set var_A4 = Me.Text1
  loc_136C785:   Call 0.Method_Proc_290_41_136C9100 (CInt(&H11), var_A8)
  loc_136C78D:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CurBillMonth")), 1)
  loc_136C7F9:   Set var_A4 = Me.Text1
  loc_136C7FF:   Call 0.Method_Proc_290_41_136C9100 (CInt(&H12), var_A8, CStr(Format(CVar(Me.Recordset15.Fields.Item("CreditAmt")), "0.00")))
  loc_136C807:   var_A8.Text = 1
  loc_136C879:   Set var_A4 = Me.Text1
  loc_136C87F:   Call 0.Method_Proc_290_41_136C9100 (CInt(&H17), var_A8, CStr(Format(CVar(Me.Recordset15.Fields.Item("BalanceTillDate")), "0.00")), 1)
  loc_136C887:   var_A8.Text = 1
  loc_136C8DD:   Set var_A4 = Me.Text1
  loc_136C8E3:   Call 0.Method_Proc_290_41_136C9100 (CInt(&H13), var_A8)
  loc_136C8EB:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TillDate")), 1)
  loc_136C902: Else
  loc_136C902:   Call Proc_290_40_E97428(1)
  loc_136C907: End If
  loc_136C907: Exit Sub
  loc_136C908: ' Referenced from: 136C09C
  loc_136C908: Proc_6_60_E63754()
  loc_136C90D: Exit Sub
End Sub

Public Sub Proc_290_42_F7A160(arg_C) 'F7A160
  'Data Table: 4D5020
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_F7A018: Set var_8C = Me.Text1
  loc_F7A01E: Call 0.Method_Proc_290_42_F7A160C (var_8E, var_86)
  loc_F7A02C: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_F7A03E:   Set var_8C = Me.Text1
  loc_F7A044:   Call 0.Method_Proc_290_42_F7A1600 (var_86, var_98)
  loc_F7A04C:   var_98.Enabled = False
  loc_F7A05B: Next var_92 'Integer
  loc_F7A06E: Set var_8C = Me.Text1
  loc_F7A074: Call 0.Method_Proc_290_42_F7A1600 (CInt(&H14), var_98)
  loc_F7A07C: var_98.Enabled = arg_C
  loc_F7A096: Set var_8C = Me.Text1
  loc_F7A09C: Call 0.Method_Proc_290_42_F7A1600 (CInt(&H15), var_98)
  loc_F7A0A4: var_98.Enabled = arg_C
  loc_F7A0BE: Set var_8C = Me.Text1
  loc_F7A0C4: Call 0.Method_Proc_290_42_F7A1600 (CInt(&H16), var_98)
  loc_F7A0CC: var_98.Enabled = arg_C
  loc_F7A0E6: Set var_8C = Me.Text1
  loc_F7A0EC: Call 0.Method_Proc_290_42_F7A1600 (CInt(&H18), var_98)
  loc_F7A0F4: var_98.Enabled = arg_C
  loc_F7A10D: Me.Check1.Enabled = arg_C
  loc_F7A128: Me.DBGrid1.Visible = Not(arg_C)
  loc_F7A141: Me.FrArticles.Enabled = Not(arg_C)
  loc_F7A156: Me.FrArticle.Visible = arg_C
  loc_F7A15E: Exit Sub
End Sub

Public Sub Proc_290_43_DFD0E4
  'Data Table: 4D5020
  loc_DFD0E0: Exit Sub
End Sub

Public Sub Proc_290_44_106051C(arg_C, arg_10) '106051C
  'Data Table: 4D5020
  Dim var_9C As String
  Dim unk_4D503D As Connection15
  Dim var_88 As Recordset15
  Dim var_DA As Integer
  Dim var_C0 As Variant
  Dim var_EC As Integer
  loc_10602AC: On Error Goto loc_1060513
  loc_10602BA: If (global_52 = "Article_26(a)") Then
  loc_10602D1:   var_9C = "SELECT MTL.code As SerialNo,MTL.VDate As EntryDate,MTL.CurBillMonth,MTL.TillDate,MTL.DueAmt As NoticeAmt,MTL.CurMonthBillAmt,MTL.CreditAmt,MTL.BalanceTillDate As TotalDueAmt,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL Left Join SubGroup SG On MTL.MemCode=SG.SubCode Left Join City On SG.CityCode=City.CityCode Left Join State On City.State=State.Code where MTL.Code='" & arg_C
  loc_10602FD:   unk_4D503D.Execute var_9C & "' And MTL.Type='" & arg_10 & "' And (MTL.LOGSITE_CODE='" & MemVar_1F95078 & "' or MTL.LOGSITE_CODE='HO')", var_D0, -1
  loc_1060308:   Set var_88 = var_D4
  loc_1060323: Else
  loc_106032E:   If (global_52 = "Article_26(b)") Then
  loc_1060345:     var_9C = "SELECT MTL.code As SerialNo,MTL.VDate As EntryDate,MTL.CurBillMonth,MTL.ContraCode As ContraSerialNo,MTL.TillDate As ContraEntryDate,MTL.DueAmt As NoticeAmt,MTL.CurMonthBillAmt,MTL.CreditAmt,MTL.BalanceTillDate As TotalDueAmt,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL Left Join SubGroup SG On MTL.MemCode=SG.SubCode Left Join City On SG.CityCode=City.CityCode Left Join State On City.State=State.Code where MTL.Code='" & arg_C
  loc_1060371:     unk_4D503D.Execute var_9C & "' And MTL.Type='" & arg_10 & "' And (MTL.LOGSITE_CODE='" & MemVar_1F95078 & "' or MTL.LOGSITE_CODE='HO')", var_D0, -1
  loc_106037C:     Set var_88 = var_D4
  loc_1060397:   Else
  loc_10603A2:     If (global_52 = "Article_23") Then
  loc_10603B9:       var_9C = "SELECT MTL.code As SerialNo,MTL.VDate As EntryDate,MTL.CurBillMonth,MTL.TillDate,MTL.DueAmt As NoticeAmt,MTL.CurMonthBillAmt,MTL.CreditAmt,MTL.BalanceTillDate As TotalDueAmt,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL Left Join SubGroup SG On MTL.MemCode=SG.SubCode Left Join City On SG.CityCode=City.CityCode Left Join State On City.State=State.Code where MTL.Code='" & arg_C
  loc_10603E5:       unk_4D503D.Execute var_9C & "' And MTL.Type='" & arg_10 & "' And (MTL.LOGSITE_CODE='" & MemVar_1F95078 & "' or MTL.LOGSITE_CODE='HO')", var_D0, -1
  loc_10603F0:       Set var_88 = var_D4
  loc_1060408:     End If
  loc_1060408:   End If
  loc_1060408: End If
  loc_106041C: If (var_88.RecordCount > 0) Then
  loc_1060443:   Set var_D4 = var_88 
  loc_106044F:   var_DA = CreateFieldDefFile(var_D4, MemVar_1F950B4 & "\" & arg_10 & ".ttx", &HFF)
  loc_106045F:   var_C0 = CVar(var_DA) 'Integer
  loc_1060462:   var_98 = var_C0 'Variant
  loc_1060499:   Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & arg_10 & ".RPT", var_C0, var_D4, var_DA)
  loc_10604A4:   MemVar_1F951E8 = var_D4
  loc_10604CD:   Call 0.Method_arg_64 (var_D4, CVar(var_D4), var_EC, var_FC)
  loc_10604D5:   Call 0.Method_arg_2C (var_D4, var_D4)
  loc_10604E3:   Call 0.Method_arg_150 (var_D4)
  loc_1060505:   Call 0.Method_Me8 (False, 1, var_FC)
  loc_106050A: End If
  loc_106050F: Set var_88 = Nothing
  loc_1060512: Exit Sub
  loc_1060513: ' Referenced from: 10602AC
  loc_1060513: Proc_6_60_E63754(var_10C)
  loc_1060518: Exit Sub
End Sub
