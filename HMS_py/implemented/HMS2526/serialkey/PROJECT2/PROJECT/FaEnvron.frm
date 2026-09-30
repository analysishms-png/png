VERSION 5.00
Begin VB.Form FaEnvron
  Caption = "Environment Setting"
  BackColor = &HFFC0C0&
  ForeColor = &HC00000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC00000&
  BorderStyle = 1 'Fixed Single
  Icon = "FaEnvron.frx":0
  MinButton = 0   'False
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 180
  ClientTop = 795
  ClientWidth = 8490
  ClientHeight = 7590
  WhatsThisHelp = -1  'True
  Begin Frame Frame7
    Caption = "Reports"
    BackColor = &HFFC0C0&
    ForeColor = &H4080&
    Left = 5625
    Top = 570
    Width = 5535
    Height = 795
    TabIndex = 86
    ClipControls = 0   'False
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
    Begin TextBox Txt
      Index = 39
      BackColor = &HFFFFFF&
      ForeColor = &H80&
      Left = 4845
      Top = 480
      Width = 550
      Height = 225
      TabIndex = 25
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
      Index = 37
      BackColor = &HFFFFFF&
      ForeColor = &H80&
      Left = 4845
      Top = 240
      Width = 550
      Height = 225
      TabIndex = 24
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
    Begin Label Lbl
      Caption = "Want to Print To/By in place of Cr/Dr  (Y/N) ?"
      Index = 23
      ForeColor = &H80&
      Left = 1620
      Top = 480
      Width = 3165
      Height = 240
      TabIndex = 90
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Separate Page for each day in Cash/Bank Book (Y/N) ?"
      Index = 21
      ForeColor = &H80&
      Left = 825
      Top = 240
      Width = 3960
      Height = 240
      TabIndex = 87
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame Frame6
    Caption = "Opening/Closing Stock Values"
    BackColor = &HFFC0C0&
    ForeColor = &H404000&
    Left = 5640
    Top = 3615
    Width = 3570
    Height = 855
    TabIndex = 81
    ClipControls = 0   'False
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
    Begin TextBox Txt
      Index = 34
      BackColor = &HFFFFFF&
      ForeColor = &H404000&
      Left = 810
      Top = 510
      Width = 550
      Height = 225
      TabIndex = 40
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 35
      BackColor = &HFFFFFF&
      ForeColor = &H404000&
      Left = 810
      Top = 270
      Width = 550
      Height = 225
      TabIndex = 38
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 33
      BackColor = &HFFFFFF&
      ForeColor = &H404000&
      Left = 2280
      Top = 510
      Width = 1155
      Height = 225
      TabIndex = 41
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 32
      BackColor = &HFFFFFF&
      ForeColor = &H404000&
      Left = 2280
      Top = 270
      Width = 1155
      Height = 225
      TabIndex = 39
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Open.Qty"
      Index = 27
      ForeColor = &H404000&
      Left = 60
      Top = 270
      Width = 675
      Height = 240
      TabIndex = 85
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Clos.Qty"
      Index = 26
      ForeColor = &H404000&
      Left = 135
      Top = 510
      Width = 600
      Height = 240
      TabIndex = 84
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Value"
      Index = 17
      ForeColor = &H404000&
      Left = 1815
      Top = 510
      Width = 405
      Height = 240
      TabIndex = 83
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Value"
      Index = 16
      ForeColor = &H404000&
      Left = 1815
      Top = 270
      Width = 405
      Height = 240
      TabIndex = 82
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame Frame5
    Caption = "Dos Printing"
    BackColor = &HFFC0C0&
    ForeColor = &H80000008&
    Left = 9300
    Top = 7680
    Width = 5460
    Height = 1110
    Visible = 0   'False
    TabIndex = 71
    ClipControls = 0   'False
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
    Begin TextBox Txt
      Index = 26
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4845
      Top = 225
      Width = 510
      Height = 195
      TabIndex = 20
      BorderStyle = 0 'None
      MaxLength = 6
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 25
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4845
      Top = 435
      Width = 450
      Height = 195
      TabIndex = 21
      BorderStyle = 0 'None
      MaxLength = 3
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4845
      Top = 855
      Width = 450
      Height = 195
      TabIndex = 23
      BorderStyle = 0 'None
      MaxLength = 3
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 23
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4845
      Top = 645
      Width = 450
      Height = 195
      TabIndex = 22
      BorderStyle = 0 'None
      MaxLength = 3
      Appearance = 0 'Flat
    End
    Begin Label Lbl
      Caption = "Company Name And Address Position on the Report (L/M) ?"
      Index = 14
      ForeColor = &H0&
      Left = 540
      Top = 225
      Width = 4260
      Height = 195
      TabIndex = 75
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Lbl
      Caption = "Report Date Should be Printed on the Report (Y/N) ?"
      Index = 13
      ForeColor = &H0&
      Left = 1035
      Top = 435
      Width = 3765
      Height = 195
      TabIndex = 74
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Lbl
      Caption = "Character to fill the lines in the report ?"
      Index = 12
      ForeColor = &H0&
      Left = 2100
      Top = 855
      Width = 2700
      Height = 195
      TabIndex = 73
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Lbl
      Caption = "Page No. Should be Printed on the Report (Y/N) ?"
      Index = 11
      ForeColor = &H0&
      Left = 1230
      Top = 645
      Width = 3570
      Height = 195
      TabIndex = 72
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
  End
  Begin Frame Frame4
    Caption = "Display"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 60
    Top = 4560
    Width = 5490
    Height = 1965
    TabIndex = 65
    ClipControls = 0   'False
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
    Begin TextBox Txt
      Index = 36
      BackColor = &HFFFFFF&
      ForeColor = &H8080&
      Left = 4845
      Top = 1665
      Width = 550
      Height = 225
      TabIndex = 19
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 30
      BackColor = &HFFFFFF&
      ForeColor = &H8080&
      Left = 4845
      Top = 1425
      Width = 550
      Height = 225
      TabIndex = 18
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 29
      BackColor = &HFFFFFF&
      ForeColor = &H8080&
      Left = 4845
      Top = 1185
      Width = 550
      Height = 225
      TabIndex = 17
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 22
      BackColor = &HFFFFFF&
      ForeColor = &H8080&
      Left = 4845
      Top = 705
      Width = 550
      Height = 225
      TabIndex = 15
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 21
      BackColor = &HFFFFFF&
      ForeColor = &H8080&
      Left = 4845
      Top = 945
      Width = 550
      Height = 225
      TabIndex = 16
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      BackColor = &HFFFFFF&
      ForeColor = &H8080&
      Left = 4845
      Top = 465
      Width = 550
      Height = 225
      TabIndex = 14
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      BackColor = &HFFFFFF&
      ForeColor = &H8080&
      Left = 4845
      Top = 225
      Width = 550
      Height = 225
      TabIndex = 13
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Lbl
      Caption = "Show City Names With A/C Name (Y/N) ?"
      Index = 20
      ForeColor = &HC00000&
      Left = 1785
      Top = 1665
      Width = 2940
      Height = 240
      TabIndex = 88
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show Monthly Summary (Y/N) ?"
      Index = 18
      ForeColor = &HC00000&
      Left = 2430
      Top = 1425
      Width = 2295
      Height = 240
      TabIndex = 79
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show Balance in Cash/Bank Book (Y/N) ?"
      Index = 17
      ForeColor = &HC00000&
      Left = 1740
      Top = 1185
      Width = 2985
      Height = 240
      TabIndex = 78
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show Site Code in Ledger (Y/N) ?"
      Index = 10
      ForeColor = &HC00000&
      Left = 2295
      Top = 705
      Width = 2430
      Height = 240
      TabIndex = 70
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show Vr.Prefix in Ledger (Y/N) ?"
      Index = 9
      ForeColor = &HC00000&
      Left = 2370
      Top = 945
      Width = 2355
      Height = 240
      TabIndex = 69
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show Division Code in Ledger (Y/N) ?"
      Index = 8
      ForeColor = &HC00000&
      Left = 1995
      Top = 465
      Width = 2730
      Height = 240
      TabIndex = 68
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show Verticle Balance Sheet (Y/N) ?"
      Index = 7
      ForeColor = &HC00000&
      Left = 2130
      Top = 225
      Width = 2595
      Height = 240
      TabIndex = 66
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame Frame3
    Caption = "Define Voucher"
    BackColor = &HFFC0C0&
    ForeColor = &H8000&
    Left = 60
    Top = 3600
    Width = 5490
    Height = 870
    TabIndex = 58
    ClipControls = 0   'False
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
    Begin TextBox Txt
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &H8000&
      Left = 4845
      Top = 540
      Width = 550
      Height = 225
      TabIndex = 12
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      BackColor = &HFFFFFF&
      ForeColor = &H8000&
      Left = 4845
      Top = 300
      Width = 550
      Height = 225
      TabIndex = 11
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Lbl
      Caption = "Only System defined A/C Group in Don't Show A/C Groups (Y/N) ?"
      Index = 3
      ForeColor = &H8000&
      Left = 30
      Top = 555
      Width = 4725
      Height = 240
      TabIndex = 63
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Only System defined A/C Group in Must Show A/C Groups (Y/N) ?"
      Index = 2
      ForeColor = &H8000&
      Left = 60
      Top = 300
      Width = 4695
      Height = 240
      TabIndex = 62
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame Frame2
    Caption = "Voucher Entry"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 45
    Top = 570
    Width = 5520
    Height = 2985
    TabIndex = 57
    ClipControls = 0   'False
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
    Begin TextBox Txt
      Index = 41
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 2625
      Width = 500
      Height = 225
      TabIndex = 10
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 40
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 2385
      Width = 500
      Height = 225
      TabIndex = 9
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 38
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 2145
      Width = 500
      Height = 225
      TabIndex = 8
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 31
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 1905
      Width = 500
      Height = 225
      TabIndex = 7
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 28
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 1425
      Width = 500
      Height = 225
      TabIndex = 5
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 27
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 1665
      Width = 500
      Height = 225
      TabIndex = 6
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 19
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 1185
      Width = 500
      Height = 225
      TabIndex = 4
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 945
      Width = 500
      Height = 225
      TabIndex = 3
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 225
      Width = 500
      Height = 225
      TabIndex = 0
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 465
      Width = 500
      Height = 225
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 705
      Width = 500
      Height = 225
      TabIndex = 2
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Lbl
      Caption = "Accept Post Dated Cheque (Y/N) ?"
      Index = 25
      ForeColor = &HC00000&
      Left = 2325
      Top = 2625
      Width = 2460
      Height = 240
      TabIndex = 92
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Enable Date Wise Current Balance (Y/N) ?"
      Index = 24
      ForeColor = &HC00000&
      Left = 1770
      Top = 2385
      Width = 3015
      Height = 240
      TabIndex = 91
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Use To/By Instead of Cr/Dr During Entry  (Y/N) ?"
      Index = 22
      ForeColor = &HC00000&
      Left = 1290
      Top = 2145
      Width = 3495
      Height = 240
      TabIndex = 89
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Online Adjustment (Y/N) ?"
      Index = 19
      ForeColor = &HC00000&
      Left = 2970
      Top = 1905
      Width = 1815
      Height = 240
      TabIndex = 80
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show A/c Group && Address (Y/N) ?"
      Index = 16
      ForeColor = &HC00000&
      Left = 2265
      Top = 1425
      Width = 2520
      Height = 240
      TabIndex = 77
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Enable A/c Help Filter (Y/N) ?"
      Index = 15
      ForeColor = &HC00000&
      Left = 2685
      Top = 1665
      Width = 2100
      Height = 240
      TabIndex = 76
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show City Name in A/C Help (Y/N) ?"
      Index = 5
      ForeColor = &HC00000&
      Left = 2175
      Top = 1185
      Width = 2610
      Height = 240
      TabIndex = 67
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show Ledger Current Balance (Y/N) ?"
      Index = 4
      ForeColor = &HC00000&
      Left = 2055
      Top = 945
      Width = 2730
      Height = 240
      TabIndex = 64
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Limit Check for Debtors (Y/N) ?"
      Index = 6
      ForeColor = &HC00000&
      Left = 2595
      Top = 225
      Width = 2190
      Height = 240
      TabIndex = 61
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Limit Check for Creditors (Y/N) ?"
      Index = 0
      ForeColor = &HC00000&
      Left = 2505
      Top = 465
      Width = 2280
      Height = 240
      TabIndex = 60
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Warn on Negative Cash Balance (Y/N) ?"
      Index = 1
      ForeColor = &HC00000&
      Left = 1905
      Top = 705
      Width = 2880
      Height = 240
      TabIndex = 59
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame Frame1
    Caption = "Ageing Parameters"
    BackColor = &HFFC0C0&
    ForeColor = &H800080&
    Left = 5640
    Top = 1455
    Width = 3585
    Height = 2100
    TabIndex = 42
    ClipControls = 0   'False
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
    Begin TextBox Txt
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2295
      Top = 495
      Width = 1140
      Height = 225
      TabIndex = 32
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
      Index = 15
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2295
      Top = 1695
      Width = 1140
      Height = 225
      TabIndex = 37
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
      Index = 14
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2295
      Top = 1455
      Width = 1140
      Height = 225
      TabIndex = 36
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
      Index = 13
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2295
      Top = 1215
      Width = 1140
      Height = 225
      TabIndex = 35
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
      Index = 12
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2295
      Top = 975
      Width = 1140
      Height = 225
      TabIndex = 34
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
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2295
      Top = 735
      Width = 1140
      Height = 225
      TabIndex = 33
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
      Index = 1
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 765
      Top = 735
      Width = 550
      Height = 225
      TabIndex = 27
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
      Index = 2
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 765
      Top = 975
      Width = 550
      Height = 225
      TabIndex = 28
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
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 765
      Top = 1215
      Width = 550
      Height = 225
      TabIndex = 29
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
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 765
      Top = 1455
      Width = 550
      Height = 225
      TabIndex = 30
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
      Index = 5
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 765
      Top = 1695
      Width = 550
      Height = 225
      TabIndex = 31
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
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 765
      Top = 495
      Width = 550
      Height = 225
      TabIndex = 26
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
    Begin Label Label
      Caption = "Amount"
      Index = 7
      ForeColor = &H800080&
      Left = 1485
      Top = 225
      Width = 915
      Height = 225
      TabIndex = 56
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Days"
      Index = 6
      ForeColor = &H800080&
      Left = 525
      Top = 225
      Width = 540
      Height = 225
      TabIndex = 55
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Slab 1"
      Index = 0
      ForeColor = &H800080&
      Left = 1770
      Top = 495
      Width = 450
      Height = 240
      TabIndex = 54
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Slab 6"
      Index = 1
      ForeColor = &H800080&
      Left = 1770
      Top = 1695
      Width = 450
      Height = 240
      TabIndex = 53
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Slab 5"
      Index = 2
      ForeColor = &H800080&
      Left = 1770
      Top = 1455
      Width = 450
      Height = 240
      TabIndex = 52
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Slab 4"
      Index = 3
      ForeColor = &H800080&
      Left = 1770
      Top = 1215
      Width = 450
      Height = 240
      TabIndex = 51
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Slab 3"
      Index = 4
      ForeColor = &H800080&
      Left = 1770
      Top = 975
      Width = 450
      Height = 240
      TabIndex = 50
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Slab 2"
      Index = 5
      ForeColor = &H800080&
      Left = 1770
      Top = 735
      Width = 450
      Height = 240
      TabIndex = 49
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Period 2"
      Index = 9
      ForeColor = &H800080&
      Left = 90
      Top = 735
      Width = 600
      Height = 240
      TabIndex = 48
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Period 3"
      Index = 10
      ForeColor = &H800080&
      Left = 90
      Top = 975
      Width = 600
      Height = 240
      TabIndex = 47
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Period 4"
      Index = 11
      ForeColor = &H800080&
      Left = 90
      Top = 1215
      Width = 600
      Height = 240
      TabIndex = 46
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Period 5"
      Index = 12
      ForeColor = &H800080&
      Left = 90
      Top = 1455
      Width = 600
      Height = 240
      TabIndex = 45
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Period 6"
      Index = 13
      ForeColor = &H800080&
      Left = 90
      Top = 1695
      Width = 600
      Height = 240
      TabIndex = 44
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Period 1"
      Index = 14
      ForeColor = &H800080&
      Left = 90
      Top = 495
      Width = 600
      Height = 240
      TabIndex = 43
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin BtnEnh BTNCANCEL
    Left = 7350
    Top = 5670
    Width = 1500
    Height = 765
    TabIndex = 94
  End
  Begin BtnEnh btnok
    Left = 5835
    Top = 5670
    Width = 1500
    Height = 765
    TabIndex = 95
  End
  Begin BtnEnh BtnIntegrity
    Left = 5580
    Top = 4665
    Width = 3615
    Height = 840
    TabIndex = 96
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 93
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
End

Attribute VB_Name = "FaEnvron"


Private Sub btncancel_UnknownEvent_9 'E1ACE0
  'Data Table: 49EA24
  Dim var_5301 As Double
  loc_E1ACD5: Me.Global.Unload Me
  loc_E1ACDD: Exit Sub
  loc_E1ACDE: var_5301 = 
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E4A7B4
  'Data Table: 49EA24
  loc_E4A792: Set var_88 = Me.Txt
  loc_E4A798: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E4A7A6: Call Ctrl_GetFocus(var_8C)
  loc_E4A7B2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FACF80
  'Data Table: 49EA24
  Dim var_86 As Integer
  loc_FACDF0: On Error Goto loc_FACF55
  loc_FACDF6: var_86 = KeyCode
  loc_FACE01: If Not (var_86 = CInt(0)) Then
  loc_FACE0C:   If Not (var_86 = CInt(1)) Then
  loc_FACE17:     If Not (var_86 = CInt(2)) Then
  loc_FACE22:       If Not (var_86 = CInt(3)) Then
  loc_FACE2D:         If Not (var_86 = CInt(4)) Then
  loc_FACE38:           If (var_86 = CInt(5)) Then
  loc_FACE3B:           End If
  loc_FACE3B:         End If
  loc_FACE3B:       End If
  loc_FACE3B:     End If
  loc_FACE3B:   End If
  loc_FACE45:   Set var_8C = Me.Txt
  loc_FACE4B:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_FACE66:   Proc_183_21_FA21CC(var_90, Shift, 4)
  loc_FACE75: Else
  loc_FACE7D:   If Not (var_86 = CInt(&HA)) Then
  loc_FACE88:     If Not (var_86 = CInt(&HB)) Then
  loc_FACE93:       If Not (var_86 = CInt(&HC)) Then
  loc_FACE9E:         If Not (var_86 = CInt(&HD)) Then
  loc_FACEA9:           If Not (var_86 = CInt(&HE)) Then
  loc_FACEB4:             If Not (var_86 = CInt(&HF)) Then
  loc_FACEBF:               If Not (var_86 = CInt(&H20)) Then
  loc_FACECA:                 If (var_86 = CInt(&H21)) Then
  loc_FACECD:                 End If
  loc_FACECD:               End If
  loc_FACECD:             End If
  loc_FACECD:           End If
  loc_FACECD:         End If
  loc_FACECD:       End If
  loc_FACECD:     End If
  loc_FACED7:     Set var_8C = Me.Txt
  loc_FACEDD:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_FACEF8:     Proc_183_21_FA21CC(var_90, Shift, &HA)
  loc_FACF07:   Else
  loc_FACF0F:     If Not (var_86 = CInt(&H23)) Then
  loc_FACF1A:       If (var_86 = CInt(&H22)) Then
  loc_FACF1D:       End If
  loc_FACF27:       Set var_8C = Me.Txt
  loc_FACF2D:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, 2)
  loc_FACF48:       Proc_183_21_FA21CC(var_90, Shift, 8)
  loc_FACF54:     End If
  loc_FACF54:   End If
  loc_FACF54: End If
  loc_FACF54: Exit Sub
  loc_FACF55: ' Referenced from: FACDF0
  loc_FACF5B: Call 0.Method_arg_50 (var_9C, 3)
  loc_FACF70: Proc_183_57_104B0BC(var_9C, "Txt_KeyDown")
  loc_FACF7C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1152170
  'Data Table: 49EA24
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  loc_1151DC4: On Error Goto loc_1152148
  loc_1151DCA: var_86 = KeyAscii
  loc_1151DD5: If Not (var_86 = CInt(0)) Then
  loc_1151DE0:   If Not (var_86 = CInt(1)) Then
  loc_1151DEB:     If Not (var_86 = CInt(2)) Then
  loc_1151DF6:       If Not (var_86 = CInt(3)) Then
  loc_1151E01:         If Not (var_86 = CInt(4)) Then
  loc_1151E0C:           If (var_86 = CInt(5)) Then
  loc_1151E0F:           End If
  loc_1151E0F:         End If
  loc_1151E0F:       End If
  loc_1151E0F:     End If
  loc_1151E0F:   End If
  loc_1151E19:   Set var_8C = Me.Txt
  loc_1151E1F:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1151E3A:   Proc_183_22_129BBAC(var_90, arg_10, 4)
  loc_1151E49: Else
  loc_1151E51:   If Not (var_86 = CInt(&HA)) Then
  loc_1151E5C:     If Not (var_86 = CInt(&HB)) Then
  loc_1151E67:       If Not (var_86 = CInt(&HC)) Then
  loc_1151E72:         If Not (var_86 = CInt(&HD)) Then
  loc_1151E7D:           If Not (var_86 = CInt(&HE)) Then
  loc_1151E88:             If Not (var_86 = CInt(&HF)) Then
  loc_1151E93:               If Not (var_86 = CInt(&H20)) Then
  loc_1151E9E:                 If (var_86 = CInt(&H21)) Then
  loc_1151EA1:                 End If
  loc_1151EA1:               End If
  loc_1151EA1:             End If
  loc_1151EA1:           End If
  loc_1151EA1:         End If
  loc_1151EA1:       End If
  loc_1151EA1:     End If
  loc_1151EAB:     Set var_8C = Me.Txt
  loc_1151EB1:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1151ECC:     Proc_183_22_129BBAC(var_90, arg_10, &HA)
  loc_1151EDB:   Else
  loc_1151EE3:     If Not (var_86 = CInt(&H23)) Then
  loc_1151EEE:       If (var_86 = CInt(&H22)) Then
  loc_1151EF1:       End If
  loc_1151EFB:       Set var_8C = Me.Txt
  loc_1151F01:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, 2)
  loc_1151F1C:       Proc_183_22_129BBAC(var_90, arg_10, 8)
  loc_1151F2B:     Else
  loc_1151F33:       If Not (var_86 = CInt(6)) Then
  loc_1151F3E:         If Not (var_86 = CInt(7)) Then
  loc_1151F49:           If Not (var_86 = CInt(8)) Then
  loc_1151F54:             If Not (var_86 = CInt(9)) Then
  loc_1151F5F:               If Not (var_86 = CInt(&H10)) Then
  loc_1151F6A:                 If Not (var_86 = CInt(&H11)) Then
  loc_1151F75:                   If Not (var_86 = CInt(&H12)) Then
  loc_1151F80:                     If Not (var_86 = CInt(&H13)) Then
  loc_1151F8B:                       If Not (var_86 = CInt(&H14)) Then
  loc_1151F96:                         If Not (var_86 = CInt(&H16)) Then
  loc_1151FA1:                           If Not (var_86 = CInt(&H15)) Then
  loc_1151FAC:                             If Not (var_86 = CInt(&H19)) Then
  loc_1151FB7:                               If Not (var_86 = CInt(&H17)) Then
  loc_1151FC2:                                 If Not (var_86 = CInt(&H1B)) Then
  loc_1151FCD:                                   If Not (var_86 = CInt(&H1C)) Then
  loc_1151FD8:                                     If Not (var_86 = CInt(&H1D)) Then
  loc_1151FE3:                                       If Not (var_86 = CInt(&H1E)) Then
  loc_1151FEE:                                         If Not (var_86 = CInt(&H1F)) Then
  loc_1151FF9:                                           If Not (var_86 = CInt(&H25)) Then
  loc_1152004:                                             If Not (var_86 = CInt(&H24)) Then
  loc_115200F:                                               If Not (var_86 = CInt(&H26)) Then
  loc_115201A:                                                 If Not (var_86 = CInt(&H27)) Then
  loc_1152025:                                                   If Not (var_86 = CInt(&H28)) Then
  loc_1152030:                                                     If (var_86 = CInt(&H29)) Then
  loc_1152033:                                                     End If
  loc_1152033:                                                   End If
  loc_1152033:                                                 End If
  loc_1152033:                                               End If
  loc_1152033:                                             End If
  loc_1152033:                                           End If
  loc_1152033:                                         End If
  loc_1152033:                                       End If
  loc_1152033:                                     End If
  loc_1152033:                                   End If
  loc_1152033:                                 End If
  loc_1152033:                               End If
  loc_1152033:                             End If
  loc_1152033:                           End If
  loc_1152033:                         End If
  loc_1152033:                       End If
  loc_1152033:                     End If
  loc_1152033:                   End If
  loc_1152033:                 End If
  loc_1152033:               End If
  loc_1152033:             End If
  loc_1152033:           End If
  loc_1152033:         End If
  loc_1152040:         If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_1152050:           Set var_8C = Me.Txt
  loc_1152056:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, "No")
  loc_115205E:           var_90.Text = 3
  loc_115206C:           arg_10 = 0
  loc_1152072:         Else
  loc_115207F:           If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_115208F:             Set var_8C = Me.Txt
  loc_1152095:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, "Yes")
  loc_115209D:             var_90.Text = arg_10
  loc_11520AB:             arg_10 = 0
  loc_11520B1:           Else
  loc_11520B3:             arg_10 = 0
  loc_11520B6:           End If
  loc_11520B6:         End If
  loc_11520B9:       Else
  loc_11520C1:         If (var_86 = CInt(&H1A)) Then
  loc_11520D1:           If ((arg_10 = &H4D) Or (arg_10 = &H6D)) Then
  loc_11520E1:             Set var_8C = Me.Txt
  loc_11520E7:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, "Middle", arg_10)
  loc_11520EF:             var_90.Text = arg_10
  loc_11520FD:             arg_10 = 0
  loc_1152103:           Else
  loc_1152110:             If ((arg_10 = &H4C) Or (arg_10 = &H6C)) Then
  loc_1152120:               Set var_8C = Me.Txt
  loc_1152126:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, "Left")
  loc_115212E:               var_90.Text = arg_10
  loc_115213C:               arg_10 = 0
  loc_1152142:             Else
  loc_1152144:               arg_10 = 0
  loc_1152147:             End If
  loc_1152147:           End If
  loc_1152147:         End If
  loc_1152147:       End If
  loc_1152147:     End If
  loc_1152147:   End If
  loc_1152147: End If
  loc_1152147: Exit Sub
  loc_1152148: ' Referenced from: 1151DC4
  loc_115214E: Call 0.Method_arg_50 (var_9C, arg_10, arg_10)
  loc_1152163: Proc_183_57_104B0BC(var_9C, "TXT_KeyPress")
  loc_115216F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A81C
  'Data Table: 49EA24
  loc_E4A7FA: Set var_88 = Me.Txt
  loc_E4A800: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A80E: Call Ctrl_validate(var_8C)
  loc_E4A81A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '120F308
  'Data Table: 49EA24
  Dim var_86 As Integer
  Dim var_104 As Double
  Dim var_FC As String
  Dim var_F8 As TextBox
  Dim var_90 As TextBox
  loc_120EE44: On Error Goto loc_120F2DF
  loc_120EE4A: var_86 = Cancel
  loc_120EE55: If Not (var_86 = CInt(&H20)) Then
  loc_120EE60:   If (var_86 = CInt(&H21)) Then
  loc_120EE63:   End If
  loc_120EE6D:   Set var_8C = Me.Txt
  loc_120EE73:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_120EE7F:   Proc_183_6_EA3B94(CVar(var_90))
  loc_120EEBC:   Set var_F4 = Me.Txt
  loc_120EEC2:   Call 0.Method_Txt_Validate0 (Cancel, var_F8, CStr(Format(CVar(var_86), "0.00")))
  loc_120EECA:   var_F8.Text = 1
  loc_120EEE9: Else
  loc_120EEF1:   If Not (var_86 = CInt(&H23)) Then
  loc_120EEFC:     If (var_86 = CInt(&H22)) Then
  loc_120EEFF:     End If
  loc_120EF09:     Set var_8C = Me.Txt
  loc_120EF0F:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_120EF1B:     Proc_183_6_EA3B94(CVar(var_90), 1)
  loc_120EF58:     Set var_F4 = Me.Txt
  loc_120EF5E:     Call 0.Method_Txt_Validate0 (Cancel, var_F8, CStr(Format(CVar(var_104), "0.000")))
  loc_120EF66:     var_F8.Text = 1
  loc_120EF85:   Else
  loc_120EF8D:     If Not (var_86 = CInt(0)) Then
  loc_120EF98:       If Not (var_86 = CInt(1)) Then
  loc_120EFA3:         If Not (var_86 = CInt(2)) Then
  loc_120EFAE:           If Not (var_86 = CInt(3)) Then
  loc_120EFB9:             If Not (var_86 = CInt(4)) Then
  loc_120EFC4:               If (var_86 = CInt(5)) Then
  loc_120EFC7:               End If
  loc_120EFC7:             End If
  loc_120EFC7:           End If
  loc_120EFC7:         End If
  loc_120EFC7:       End If
  loc_120EFD1:       Set var_8C = Me.Txt
  loc_120EFD7:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_120EFE3:       Proc_183_6_EA3B94(CVar(var_90), 1)
  loc_120EFFA:       var_E0 = "0"
  loc_120F00A:       var_F0 = Format(CVar(var_104), var_E0)
  loc_120F012:       var_FC = CStr(var_F0)
  loc_120F020:       Set var_F4 = Me.Txt
  loc_120F026:       Call 0.Method_Txt_Validate0 (Cancel, var_F8, var_FC)
  loc_120F02E:       var_F8.Text = 1
  loc_120F057:       Set var_8C = Me.Txt
  loc_120F05D:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_FC)
  loc_120F065:       1 = var_90.Text
  loc_120F081:       Set var_F4 = Me.Txt
  loc_120F087:       Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_120F0AB:       If ((CDbl(Val(var_FC)) = CDbl(0)) Or (IsNumeric(CVar(var_F8)) = 0)) Then
  loc_120F0B4:         Call 0.Method_arg_50 (var_FC)
  loc_120F0D5:         MsgBox(" Nil Amount Not Accepted ", &H10, CVar(var_FC), var_E0, var_F0)
  loc_120F0F2:         Set var_8C = Me.Txt
  loc_120F0F8:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_120F100:         var_90.Text = vbNullString
  loc_120F116:         Set var_8C = Me.Txt
  loc_120F11C:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_120F124:         var_90.SetFocus
  loc_120F130:       End If
  loc_120F133:     Else
  loc_120F13B:       If Not (var_86 = CInt(&HA)) Then
  loc_120F146:         If Not (var_86 = CInt(&HB)) Then
  loc_120F151:           If Not (var_86 = CInt(&HC)) Then
  loc_120F15C:             If Not (var_86 = CInt(&HD)) Then
  loc_120F167:               If Not (var_86 = CInt(&HE)) Then
  loc_120F172:                 If (var_86 = CInt(&HF)) Then
  loc_120F175:                 End If
  loc_120F175:               End If
  loc_120F175:             End If
  loc_120F175:           End If
  loc_120F175:         End If
  loc_120F17F:         Set var_8C = Me.Txt
  loc_120F185:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_120F191:         Proc_183_6_EA3B94(CVar(var_90))
  loc_120F1A8:         var_E0 = "0.00"
  loc_120F1B8:         var_F0 = Format(CVar(var_104), var_E0)
  loc_120F1C0:         var_FC = CStr(var_F0)
  loc_120F1CE:         Set var_F4 = Me.Txt
  loc_120F1D4:         Call 0.Method_Txt_Validate0 (Cancel, var_F8, var_FC)
  loc_120F1DC:         var_F8.Text = 1
  loc_120F205:         Set var_8C = Me.Txt
  loc_120F20B:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_FC)
  loc_120F213:         1 = var_90.Text
  loc_120F22F:         Set var_F4 = Me.Txt
  loc_120F235:         Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_120F259:         If ((CDbl(Val(var_FC)) = CDbl(0)) Or (IsNumeric(CVar(var_F8)) = 0)) Then
  loc_120F262:           Call 0.Method_arg_50 (var_FC)
  loc_120F283:           MsgBox(" Nil Quantity Not Accepted ", &H10, CVar(var_FC), var_E0, var_F0)
  loc_120F2A0:           Set var_8C = Me.Txt
  loc_120F2A6:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_120F2AE:           var_90.Text = vbNullString
  loc_120F2C4:           Set var_8C = Me.Txt
  loc_120F2CA:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_120F2D2:           var_90.SetFocus
  loc_120F2DE:         End If
  loc_120F2DE:       End If
  loc_120F2DE:     End If
  loc_120F2DE:   End If
  loc_120F2DE: End If
  loc_120F2DE: Exit Sub
  loc_120F2DF: ' Referenced from: 120EE44
  loc_120F2E5: Call 0.Method_arg_50 (var_FC)
  loc_120F2FA: Proc_183_57_104B0BC(var_FC, "Txt_Validate")
  loc_120F306: Exit Sub
End Sub

Private Sub Form_Load() '1581AAC
  'Data Table: 49EA24
  Dim var_90 As Variant
  Dim var_94 As String
  Dim unk_49EA4F As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_D8 As TextBox
  Dim var_C0 As TextBox
  loc_1580960: On Error Goto loc_1581A82
  loc_158096A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_158097D: Me.Frame1.BackColor = CLng(MemVar_1F951B4)
  loc_1580993: Me.Frame2.BackColor = CLng(MemVar_1F951B4)
  loc_15809A9: Me.Frame3.BackColor = CLng(MemVar_1F951B4)
  loc_15809BF: Me.Frame4.BackColor = CLng(MemVar_1F951B4)
  loc_15809D5: Me.Frame6.BackColor = CLng(MemVar_1F951B4)
  loc_15809E5: Set var_90 = Me.Frame7
  loc_15809EB: var_90.BackColor = CLng(MemVar_1F951B4)
  loc_15809FA: Call 0.Method_arg_74 (CDbl(0))
  loc_1580A06: Call 0.Method_arg_7C (CDbl(0))
  loc_1580A2F: unk_49EA4F.Execute "select * from FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_B8, -1
  loc_1580A3A: Set var_88 = var_90
  loc_1580A5E: If (var_88.RecordCount > 0) Then
  loc_1580A87:   Proc_183_3_E7DD58(var_D0, CVar(var_88.Fields.Item("Age1")))
  loc_1580A9E:   Set var_D4 = Me.Txt
  loc_1580AA4:   Call 0.Method_Form_Load0 (CInt(0), var_D8)
  loc_1580AAC:   var_D8.Text = CStr(var_D0)
  loc_1580AEA:   Proc_183_3_E7DD58(var_D0, CVar(var_88.Fields.Item("Age2")))
  loc_1580B01:   Set var_D4 = Me.Txt
  loc_1580B07:   Call 0.Method_Form_Load0 (CInt(1), var_D8)
  loc_1580B0F:   var_D8.Text = CStr(var_D0)
  loc_1580B4D:   Proc_183_3_E7DD58(var_D0, CVar(var_88.Fields.Item("Age3")))
  loc_1580B64:   Set var_D4 = Me.Txt
  loc_1580B6A:   Call 0.Method_Form_Load0 (CInt(2), var_D8)
  loc_1580B72:   var_D8.Text = CStr(var_D0)
  loc_1580BB0:   Proc_183_3_E7DD58(var_D0, CVar(var_88.Fields.Item("Age4")))
  loc_1580BC7:   Set var_D4 = Me.Txt
  loc_1580BCD:   Call 0.Method_Form_Load0 (CInt(3), var_D8)
  loc_1580BD5:   var_D8.Text = CStr(var_D0)
  loc_1580C13:   Proc_183_3_E7DD58(var_D0, CVar(var_88.Fields.Item("Age5")))
  loc_1580C2A:   Set var_D4 = Me.Txt
  loc_1580C30:   Call 0.Method_Form_Load0 (CInt(4), var_D8)
  loc_1580C38:   var_D8.Text = CStr(var_D0)
  loc_1580C76:   Proc_183_3_E7DD58(var_D0, CVar(var_88.Fields.Item("Age6")))
  loc_1580C8D:   Set var_D4 = Me.Txt
  loc_1580C93:   Call 0.Method_Form_Load0 (CInt(5), var_D8)
  loc_1580C9B:   var_D8.Text = CStr(var_D0)
  loc_1580CD9:   Proc_183_4_EAC738(var_D0, CVar(var_88.Fields.Item("Amt1")))
  loc_1580CF0:   Set var_D4 = Me.Txt
  loc_1580CF6:   Call 0.Method_Form_Load0 (CInt(&HA), var_D8)
  loc_1580CFE:   var_D8.Text = CStr(var_D0)
  loc_1580D3C:   Proc_183_4_EAC738(var_D0, CVar(var_88.Fields.Item("Amt2")))
  loc_1580D53:   Set var_D4 = Me.Txt
  loc_1580D59:   Call 0.Method_Form_Load0 (CInt(&HB), var_D8)
  loc_1580D61:   var_D8.Text = CStr(var_D0)
  loc_1580D9F:   Proc_183_4_EAC738(var_D0, CVar(var_88.Fields.Item("Amt3")))
  loc_1580DB6:   Set var_D4 = Me.Txt
  loc_1580DBC:   Call 0.Method_Form_Load0 (CInt(&HC), var_D8)
  loc_1580DC4:   var_D8.Text = CStr(var_D0)
  loc_1580E02:   Proc_183_4_EAC738(var_D0, CVar(var_88.Fields.Item("Amt4")))
  loc_1580E19:   Set var_D4 = Me.Txt
  loc_1580E1F:   Call 0.Method_Form_Load0 (CInt(&HD), var_D8)
  loc_1580E27:   var_D8.Text = CStr(var_D0)
  loc_1580E65:   Proc_183_4_EAC738(var_D0, CVar(var_88.Fields.Item("Amt5")))
  loc_1580E7C:   Set var_D4 = Me.Txt
  loc_1580E82:   Call 0.Method_Form_Load0 (CInt(&HE), var_D8)
  loc_1580E8A:   var_D8.Text = CStr(var_D0)
  loc_1580EC8:   Proc_183_4_EAC738(var_D0, CVar(var_88.Fields.Item("Amt6")))
  loc_1580EDF:   Set var_D4 = Me.Txt
  loc_1580EE5:   Call 0.Method_Form_Load0 (CInt(&HF), var_D8)
  loc_1580EED:   var_D8.Text = CStr(var_D0)
  loc_1580F3B:   Set var_D4 = Me.Txt
  loc_1580F41:   Call 0.Method_Form_Load0 (CInt(6), var_D8)
  loc_1580F49:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("DebitLimit")))
  loc_1580F93:   Set var_D4 = Me.Txt
  loc_1580F99:   Call 0.Method_Form_Load0 (CInt(7), var_D8)
  loc_1580FA1:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("CreditLimit")))
  loc_1580FEB:   Set var_D4 = Me.Txt
  loc_1580FF1:   Call 0.Method_Form_Load0 (CInt(8), var_D8)
  loc_1580FF9:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("NegativeCashBalance")))
  loc_1581043:   Set var_D4 = Me.Txt
  loc_1581049:   Call 0.Method_Form_Load0 (CInt(9), var_D8)
  loc_1581051:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("ShowGroup")))
  loc_158109B:   Set var_D4 = Me.Txt
  loc_15810A1:   Call 0.Method_Form_Load0 (CInt(&H10), var_D8)
  loc_15810A9:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("DonotShowGroup")))
  loc_15810F3:   Set var_D4 = Me.Txt
  loc_15810F9:   Call 0.Method_Form_Load0 (CInt(&H11), var_D8)
  loc_1581101:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("ShowCurrentBalance")))
  loc_158114B:   Set var_D4 = Me.Txt
  loc_1581151:   Call 0.Method_Form_Load0 (CInt(&H12), var_D8)
  loc_1581159:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("VerticleBalanceSheet")))
  loc_15811A3:   Set var_D4 = Me.Txt
  loc_15811A9:   Call 0.Method_Form_Load0 (CInt(&H13), var_D8)
  loc_15811B1:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("ShowCityName")))
  loc_15811FB:   Set var_D4 = Me.Txt
  loc_1581201:   Call 0.Method_Form_Load0 (CInt(&H14), var_D8)
  loc_1581209:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("LedDivCode")))
  loc_1581253:   Set var_D4 = Me.Txt
  loc_1581259:   Call 0.Method_Form_Load0 (CInt(&H16), var_D8)
  loc_1581261:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("LedSiteCode")))
  loc_15812AB:   Set var_D4 = Me.Txt
  loc_15812B1:   Call 0.Method_Form_Load0 (CInt(&H15), var_D8)
  loc_15812B9:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("LedPrefix")))
  loc_1581303:   Set var_D4 = Me.Txt
  loc_1581309:   Call 0.Method_Form_Load0 (CInt(&H18), var_D8)
  loc_1581311:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("linefiller")))
  loc_158138F:   Set var_D4 = Me.Txt
  loc_1581395:   Call 0.Method_Form_Load0 (CInt(&H19), var_D8)
  loc_158139D:   var_D8.Text = CStr(IIf((Proc_183_2_E5AE94(CVar(var_88.Fields.Item("daterfill"))) = "Y"), "Yes", "No"))
  loc_158142B:   Set var_D4 = Me.Txt
  loc_1581431:   Call 0.Method_Form_Load0 (CInt(&H1A), var_D8)
  loc_1581439:   var_D8.Text = CStr(IIf((Proc_183_2_E5AE94(CVar(var_88.Fields.Item("titlerfill"))) = "M"), "Middle", "Left"))
  loc_15814C7:   Set var_D4 = Me.Txt
  loc_15814CD:   Call 0.Method_Form_Load0 (CInt(&H17), var_D8)
  loc_15814D5:   var_D8.Text = CStr(IIf((Proc_183_2_E5AE94(CVar(var_88.Fields.Item("pagenofill"))) = "Y"), "Yes", "No"))
  loc_158152F:   Set var_D4 = Me.Txt
  loc_1581535:   Call 0.Method_Form_Load0 (CInt(&H24), var_D8)
  loc_158153D:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("CityNameDisp")))
  loc_1581587:   Set var_D4 = Me.Txt
  loc_158158D:   Call 0.Method_Form_Load0 (CInt(&H1B), var_D8)
  loc_1581595:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("FilterAC")))
  loc_15815DF:   Set var_D4 = Me.Txt
  loc_15815E5:   Call 0.Method_Form_Load0 (CInt(&H1C), var_D8)
  loc_15815ED:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("AddressHelp")))
  loc_1581637:   Set var_D4 = Me.Txt
  loc_158163D:   Call 0.Method_Form_Load0 (CInt(&H1D), var_D8)
  loc_1581645:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("CashBookBalance")))
  loc_158168F:   Set var_D4 = Me.Txt
  loc_1581695:   Call 0.Method_Form_Load0 (CInt(&H1E), var_D8)
  loc_158169D:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("MonthTotal")))
  loc_15816E7:   Set var_D4 = Me.Txt
  loc_15816ED:   Call 0.Method_Form_Load0 (CInt(&H1F), var_D8)
  loc_15816F5:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("OnLineAdjustment")))
  loc_158173F:   Set var_D4 = Me.Txt
  loc_1581745:   Call 0.Method_Form_Load0 (CInt(&H23), var_D8)
  loc_158174D:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("OpStockQTY")))
  loc_1581797:   Set var_D4 = Me.Txt
  loc_158179D:   Call 0.Method_Form_Load0 (CInt(&H20), var_D8)
  loc_15817A5:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("OpStockValue")))
  loc_15817EF:   Set var_D4 = Me.Txt
  loc_15817F5:   Call 0.Method_Form_Load0 (CInt(&H22), var_D8)
  loc_15817FD:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("ClStockQTY")))
  loc_1581847:   Set var_D4 = Me.Txt
  loc_158184D:   Call 0.Method_Form_Load0 (CInt(&H21), var_D8)
  loc_1581855:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("ClStockValue")))
  loc_158189F:   Set var_D4 = Me.Txt
  loc_15818A5:   Call 0.Method_Form_Load0 (CInt(&H25), var_D8)
  loc_15818AD:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("CashBookPage")))
  loc_15818F7:   Set var_D4 = Me.Txt
  loc_15818FD:   Call 0.Method_Form_Load0 (CInt(&H28), var_D8)
  loc_1581905:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("PreBal")))
  loc_158194F:   Set var_D4 = Me.Txt
  loc_1581955:   Call 0.Method_Form_Load0 (CInt(&H29), var_D8)
  loc_158195D:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("PDCDt")))
  loc_15819A7:   Set var_D4 = Me.Txt
  loc_15819AD:   Call 0.Method_Form_Load0 (CInt(&H26), var_D8)
  loc_15819B5:   var_D8.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("ToBy")))
  loc_15819E0:   var_C0 = var_88.Fields.Item("RepToBy")
  loc_15819F1:   var_94 = Proc_183_2_E5AE94(CVar(var_C0))
  loc_15819FF:   Set var_D4 = Me.Txt
  loc_1581A05:   Call 0.Method_Form_Load0 (CInt(&H27), var_D8)
  loc_1581A0D:   var_D8.Text = var_94
  loc_1581A24: Else
  loc_1581A36:   Call 0.Method_Form_LoadC (var_12E, var_8A)
  loc_1581A44:   For var_132 = Me.Txt To (var_12E - 1):   0 = var_132 'Integer
  loc_1581A57:     Set var_90 = Me.Txt
  loc_1581A5D:     Call 0.Method_Form_Load0 (var_8A, var_C0)
  loc_1581A65:     var_C0.Text = vbNullString
  loc_1581A74:   Next var_132 'Integer
  loc_1581A79: End If
  loc_1581A7E: Set var_88 = Nothing
  loc_1581A81: Exit Sub
  loc_1581A82: ' Referenced from: 1580960
  loc_1581A88: Call 0.Method_arg_50 (var_94)
  loc_1581A90: var_12C = "Form_Load"
  loc_1581A9D: Proc_183_57_104B0BC(var_94)
  loc_1581AA9: Exit Sub
End Sub

Private Sub Form_Resize() 'E6F6A4
  'Data Table: 49EA24
  loc_E6F64E: Call 0.Method_arg_50 (var_88)
  loc_E6F660: Me.LblFormCaption.Caption = var_88
  loc_E6F679: Me.LblFormCaption.Left = CDbl(0)
  loc_E6F687: Call 0.Method_arg_100 (var_90)
  loc_E6F699: Me.LblFormCaption.Width = var_90
  loc_E6F6A1: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E12B64
  'Data Table: 49EA24
  loc_E12B5B: Set global_56 = Nothing
  loc_E12B62: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F19864
  'Data Table: 49EA24
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_9C As Variant
  Dim KeyCode As Integer
  loc_F19770: On Error Goto loc_F1983C
  loc_F19776: var_86 = KeyCode
  loc_F19783: If Not (var_86 = CInt(&HD)) Then
  loc_F19790:   If Not (var_86 = CInt(&H28)) Then
  loc_F1979D:     If (var_86 = CInt(&H26)) Then
  loc_F197A0:     End If
  loc_F197A0:   End If
  loc_F197A3:   var_88 = KeyCode
  loc_F197B0:   If Not (var_88 = CInt(&H28)) Then
  loc_F197BD:     If (var_88 = CInt(&H26)) Then
  loc_F197C0:     End If
  loc_F197C0:   End If
  loc_F197C6:   Call 0.Method_arg_1E8 (var_8C, var_88)
  loc_F197D5:   If TypeOf var_8C Is arg_7 Then
  loc_F197DE:     Call 0.Method_arg_1E8 (var_8C)
  loc_F197E6:     var_9C = var_8C.index
  loc_F197F9:     Call Txt_Validate(CInt(var_9C))
  loc_F19804:   End If
  loc_F19820:   Call 0.Method_arg_58 (Me, KeyCode, Shift, var_9E)
  loc_F1982E:   If (var_9E = &HFF) Then
  loc_F19831:     Call Proc_199_14_E8DEF4(0, var_9C)
  loc_F19836:   End If
  loc_F19838:   KeyCode = 0
  loc_F1983B: End If
  loc_F1983B: Exit Sub
  loc_F1983C: ' Referenced from: F19770
  loc_F19842: Call 0.Method_arg_50 (var_A4, KeyCode)
  loc_F19857: Proc_183_57_104B0BC(var_A4, "Form_KeyDown")
  loc_F19863: Exit Sub
End Sub

Private Sub btnok_UnknownEvent_9 '16105E0
  'Data Table: 49EA24
  Dim var_98 As Variant
  Dim var_104 As Variant
  Dim var_B0 As Variant
  Dim var_10C As Double
  Dim var_C8 As Variant
  Dim var_114 As Double
  Dim var_E0 As Variant
  Dim var_11C As Double
  Dim var_F8 As Variant
  Dim var_124 As Double
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_BC As TextBox
  Dim var_D4 As Variant
  Dim var_EC As TextBox
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim unk_49EA4F As Connection15
  Dim var_88 As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_B4 As Variant
  Dim var_144 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_2A4 As Variant
  Dim var_454 As Variant
  Dim var_5EC As Variant
  Dim var_714 As Variant
  Dim var_894 As Variant
  Dim var_A7C As Variant
  Dim var_BFC As Variant
  Dim var_D94 As Variant
  Dim var_F14 As Variant
  Dim var_1024 As Variant
  loc_160F534: On Error Goto loc_16105B5
  loc_160F545: Set var_94 = Me.Txt
  loc_160F54B: Call 0.Method_btnok_UnknownEvent_90 (CInt(1), var_98)
  loc_160F560: var_104 = Val(var_98.Text)
  loc_160F571: Set var_AC = Me.Txt
  loc_160F577: Call 0.Method_btnok_UnknownEvent_90 (CInt(2), var_B0)
  loc_160F58C: var_10C = Val(var_B0.Text)
  loc_160F59D: Set var_C4 = Me.Txt
  loc_160F5A3: Call 0.Method_btnok_UnknownEvent_90 (CInt(3), var_C8, var_CC)
  loc_160F5B8: var_114 = Val(var_CC)
  loc_160F5C9: Set var_DC = Me.Txt
  loc_160F5CF: Call 0.Method_btnok_UnknownEvent_90 (CInt(4), var_E0, var_E4)
  loc_160F5E4: var_11C = Val(var_E4)
  loc_160F5F5: Set var_F4 = Me.Txt
  loc_160F5FB: Call 0.Method_btnok_UnknownEvent_90 (CInt(5), var_F8, var_FC)
  loc_160F610: var_124 = Val(var_FC)
  loc_160F621: Set var_88 = Me.Txt
  loc_160F627: Call 0.Method_btnok_UnknownEvent_90 (CInt(0), var_8C, var_90)
  loc_160F650: Set var_A0 = Me.Txt
  loc_160F656: Call 0.Method_btnok_UnknownEvent_90 (CInt(1), var_A4, var_A8)
  loc_160F65E: (CDbl(Val(var_90)) >= CDbl(var_104)) = var_A4.Text
  loc_160F680: Set var_B8 = Me.Txt
  loc_160F686: Call 0.Method_btnok_UnknownEvent_90 (CInt(2), var_BC)
  loc_160F6B0: Set var_D0 = Me.Txt
  loc_160F6B6: Call 0.Method_btnok_UnknownEvent_90 (CInt(3), var_D4)
  loc_160F6E0: Set var_E8 = Me.Txt
  loc_160F6E6: Call 0.Method_btnok_UnknownEvent_90 (CInt(4), var_EC)
  loc_160F744: If ((((var_104 Or (CDbl(Val(var_A8)) >= CDbl(var_C8.Text))) Or (CDbl(Val(var_BC.Text)) >= CDbl(var_E0.Text))) Or (CDbl(Val(var_D4.Text)) >= CDbl(var_F8.Text))) Or (CDbl(Val(var_EC.Text)) >= CDbl(var_8C.Text))) Then
  loc_160F74D:   Call 0.Method_arg_50 (var_90)
  loc_160F76E:   MsgBox(" Time Periods Must be in Increasing Order ", &H10, CVar(var_90), var_174, var_194)
  loc_160F77E:   Exit Sub
  loc_160F782: Else
  loc_160F790:   Set var_94 = Me.Txt
  loc_160F796:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HB), var_98)
  loc_160F7AB:   var_104 = Val(var_98.Text)
  loc_160F7BC:   Set var_AC = Me.Txt
  loc_160F7C2:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HC), var_B0)
  loc_160F7D7:   var_10C = Val(var_B0.Text)
  loc_160F7E8:   Set var_C4 = Me.Txt
  loc_160F7EE:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HD), var_C8, var_CC)
  loc_160F803:   var_114 = Val(var_CC)
  loc_160F814:   Set var_DC = Me.Txt
  loc_160F81A:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HE), var_E0, var_E4)
  loc_160F82F:   var_11C = Val(var_E4)
  loc_160F840:   Set var_F4 = Me.Txt
  loc_160F846:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HF), var_F8, var_FC)
  loc_160F85B:   var_124 = Val(var_FC)
  loc_160F86C:   Set var_88 = Me.Txt
  loc_160F872:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HA), var_8C, var_90)
  loc_160F89B:   Set var_A0 = Me.Txt
  loc_160F8A1:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HB), var_A4, var_A8)
  loc_160F8A9:   (CDbl(Val(var_90)) >= CDbl(var_104)) = var_A4.Text
  loc_160F8CB:   Set var_B8 = Me.Txt
  loc_160F8D1:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HC), var_BC)
  loc_160F8D9:   var_C0 = var_BC.Text
  loc_160F8FB:   Set var_D0 = Me.Txt
  loc_160F901:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HD), var_D4)
  loc_160F909:   var_D8 = var_D4.Text
  loc_160F92B:   Set var_E8 = Me.Txt
  loc_160F931:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HE), var_EC)
  loc_160F939:   var_F0 = var_EC.Text
  loc_160F98F:   If ((((var_104 Or (CDbl(Val(var_A8)) >= CDbl(var_C8.Text))) Or (CDbl(Val(var_C0)) >= CDbl(var_E0.Text))) Or (CDbl(Val(var_D8)) >= CDbl(var_F8.Text))) Or (CDbl(Val(var_F0)) >= CDbl(var_8C.Text))) Then
  loc_160F998:     Call 0.Method_arg_50 (var_90)
  loc_160F9A6:     var_154 = CVar(var_90) 'String
  loc_160F9B3:     var_144 = " Amount Slab Must be in Increasing Order "
  loc_160F9B9:     MsgBox(var_144, &H10, var_154, var_174, var_194)
  loc_160F9C9:     Exit Sub
  loc_160F9CD:   Else
  loc_160F9D3:     var_164 = 0
  loc_160FA00:     unk_49EA4F.Execute "SELECT COUNT(*) FROM FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_144, -1
  loc_160FA08:     var_88 = var_88.Fields
  loc_160FA10:     var_164 = var_8C.Item(var_8C)
  loc_160FA18:     var_94 = var_94.Value
  loc_160FA3F:     If (var_154 <= 0) Then
  loc_160FA56:       var_90 = "INSERT INTO FAENVIRO (AGE1,SITE_CODE,LOGSITE_CODE) VALUES (0,'" & MemVar_1F95070
  loc_160FA5D:       var_9C = var_90 & "','"
  loc_160FA64:       var_A8 = var_9C & MemVar_1F95078
  loc_160FA6B:       var_B4 = var_A8 & "')"
  loc_160FA74:       unk_49EA4F.Execute var_B4, var_144, -1
  loc_160FA8A:     End If
  loc_160FA95:     Set var_88 = Me.Txt
  loc_160FA9B:     Call 0.Method_btnok_UnknownEvent_90 (CInt(0), var_8C)
  loc_160FAAA:     Proc_183_3_E7DD58(var_154, CVar(var_8C))
  loc_160FABA:     Set var_94 = Me.Txt
  loc_160FAC0:     Call 0.Method_btnok_UnknownEvent_90 (CInt(1), var_98)
  loc_160FACF:     Proc_183_3_E7DD58(var_1B4, CVar(var_98))
  loc_160FADF:     Set var_A0 = Me.Txt
  loc_160FAE5:     Call 0.Method_btnok_UnknownEvent_90 (CInt(2), var_A4)
  loc_160FAF4:     Proc_183_3_E7DD58(var_1F4, CVar(var_A4))
  loc_160FB04:     Set var_AC = Me.Txt
  loc_160FB0A:     Call 0.Method_btnok_UnknownEvent_90 (CInt(3), var_B0)
  loc_160FB19:     Proc_183_3_E7DD58(var_244, CVar(var_B0))
  loc_160FB29:     Set var_B8 = Me.Txt
  loc_160FB2F:     Call 0.Method_btnok_UnknownEvent_90 (CInt(4), var_BC)
  loc_160FB3E:     Proc_183_3_E7DD58(var_294, CVar(var_BC))
  loc_160FB4E:     Set var_C4 = Me.Txt
  loc_160FB54:     Call 0.Method_btnok_UnknownEvent_90 (CInt(5), var_C8)
  loc_160FB63:     Proc_183_3_E7DD58(var_2E4, CVar(var_C8))
  loc_160FB73:     Set var_D0 = Me.Txt
  loc_160FB79:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&HA), var_D4)
  loc_160FB88:     Proc_183_3_E7DD58(var_334, CVar(var_D4))
  loc_160FB98:     Set var_DC = Me.Txt
  loc_160FB9E:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&HB), var_E0)
  loc_160FBAD:     Proc_183_3_E7DD58(var_384, CVar(var_E0))
  loc_160FBBD:     Set var_E8 = Me.Txt
  loc_160FBC3:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&HC), var_EC)
  loc_160FBD2:     Proc_183_3_E7DD58(var_3D4, CVar(var_EC))
  loc_160FBE2:     Set var_F4 = Me.Txt
  loc_160FBE8:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&HD), var_F8)
  loc_160FBF7:     Proc_183_3_E7DD58(var_424, CVar(var_F8))
  loc_160FC07:     Set var_458 = Me.Txt
  loc_160FC0D:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&HE), var_45C)
  loc_160FC1C:     Proc_183_3_E7DD58(var_47C, CVar(var_45C))
  loc_160FC2C:     Set var_4B0 = Me.Txt
  loc_160FC32:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&HF), var_4B4)
  loc_160FC41:     Proc_183_3_E7DD58(var_4D4, CVar(var_4B4))
  loc_160FC51:     Set var_508 = Me.Txt
  loc_160FC57:     Call 0.Method_btnok_UnknownEvent_90 (CInt(6), var_50C)
  loc_160FC66:     Proc_183_9_EAB2F0(var_52C, CVar(var_50C))
  loc_160FC76:     Set var_560 = Me.Txt
  loc_160FC7C:     Call 0.Method_btnok_UnknownEvent_90 (CInt(7), var_564)
  loc_160FC8B:     Proc_183_9_EAB2F0(var_584, CVar(var_564))
  loc_160FC9B:     Set var_5B8 = Me.Txt
  loc_160FCA1:     Call 0.Method_btnok_UnknownEvent_90 (CInt(8), var_5BC)
  loc_160FCB0:     Proc_183_9_EAB2F0(var_5DC, CVar(var_5BC))
  loc_160FCC0:     Set var_610 = Me.Txt
  loc_160FCC6:     Call 0.Method_btnok_UnknownEvent_90 (CInt(9), var_614)
  loc_160FCD5:     Proc_183_9_EAB2F0(var_634, CVar(var_614))
  loc_160FCE5:     Set var_668 = Me.Txt
  loc_160FCEB:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H10), var_66C)
  loc_160FCFA:     Proc_183_9_EAB2F0(var_68C, CVar(var_66C))
  loc_160FD0A:     Set var_6C0 = Me.Txt
  loc_160FD10:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H11), var_6C4)
  loc_160FD1F:     Proc_183_9_EAB2F0(var_6E4, CVar(var_6C4))
  loc_160FD2F:     Set var_718 = Me.Txt
  loc_160FD35:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H12), var_71C)
  loc_160FD44:     Proc_183_9_EAB2F0(var_73C, CVar(var_71C))
  loc_160FD54:     Set var_770 = Me.Txt
  loc_160FD5A:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H13), var_774)
  loc_160FD69:     Proc_183_9_EAB2F0(var_794, CVar(var_774))
  loc_160FD79:     Set var_7C8 = Me.Txt
  loc_160FD7F:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H14), var_7CC)
  loc_160FD8E:     Proc_183_9_EAB2F0(var_7EC, CVar(var_7CC))
  loc_160FD9E:     Set var_840 = Me.Txt
  loc_160FDA4:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H16), var_844)
  loc_160FDB3:     Proc_183_9_EAB2F0(var_864, CVar(var_844))
  loc_160FDC3:     Set var_898 = Me.Txt
  loc_160FDC9:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H15), var_89C)
  loc_160FDD8:     Proc_183_9_EAB2F0(var_8BC, CVar(var_89C))
  loc_160FDE8:     Set var_8F0 = Me.Txt
  loc_160FDEE:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H18), var_8F4)
  loc_160FDFD:     Proc_183_9_EAB2F0(var_914, CVar(var_8F4))
  loc_160FE0D:     Set var_948 = Me.Txt
  loc_160FE13:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H19), var_94C)
  loc_160FE32:     Proc_183_9_EAB2F0(var_97C, Left(CVar(var_94C), 1))
  loc_160FE42:     Set var_9D0 = Me.Txt
  loc_160FE48:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H1A), var_9D4)
  loc_160FE67:     Proc_183_9_EAB2F0(var_A04, Left(CVar(var_9D4), 1))
  loc_160FE77:     Set var_A38 = Me.Txt
  loc_160FE7D:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H17), var_A3C)
  loc_160FE9C:     Proc_183_9_EAB2F0(var_A6C, Left(CVar(var_A3C), 1))
  loc_160FEAC:     Set var_AA0 = Me.Txt
  loc_160FEB2:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H1B), var_AA4)
  loc_160FEC1:     Proc_183_9_EAB2F0(var_AC4, CVar(var_AA4))
  loc_160FED1:     Set var_AF8 = Me.Txt
  loc_160FED7:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H1C), var_AFC)
  loc_160FEE6:     Proc_183_9_EAB2F0(var_B1C, CVar(var_AFC))
  loc_160FEF6:     Set var_B50 = Me.Txt
  loc_160FEFC:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H1D), var_B54)
  loc_160FF0B:     Proc_183_9_EAB2F0(var_B74, CVar(var_B54))
  loc_160FF1B:     Set var_BA8 = Me.Txt
  loc_160FF21:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H1E), var_BAC)
  loc_160FF30:     Proc_183_9_EAB2F0(var_BCC, CVar(var_BAC))
  loc_160FF40:     Set var_C00 = Me.Txt
  loc_160FF46:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H1F), var_C04)
  loc_160FF55:     Proc_183_9_EAB2F0(var_C24, CVar(var_C04))
  loc_160FF65:     Set var_C58 = Me.Txt
  loc_160FF6B:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H23), var_C5C)
  loc_160FF7A:     Proc_183_3_E7DD58(var_C7C, CVar(var_C5C))
  loc_160FF8A:     Set var_CB0 = Me.Txt
  loc_160FF90:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H20), var_CB4)
  loc_160FF9F:     Proc_183_3_E7DD58(var_CD4, CVar(var_CB4))
  loc_160FFAF:     Set var_D08 = Me.Txt
  loc_160FFB5:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H22), var_D0C)
  loc_160FFC4:     Proc_183_3_E7DD58(var_D2C, CVar(var_D0C))
  loc_160FFD4:     Set var_D60 = Me.Txt
  loc_160FFDA:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H21), var_D64)
  loc_160FFE9:     Proc_183_3_E7DD58(var_D84, CVar(var_D64))
  loc_160FFF9:     Set var_DB8 = Me.Txt
  loc_160FFFF:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H25), var_DBC)
  loc_161000E:     Proc_183_9_EAB2F0(var_DDC, CVar(var_DBC))
  loc_161001E:     Set var_E10 = Me.Txt
  loc_1610024:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H24), var_E14)
  loc_1610033:     Proc_183_9_EAB2F0(var_E34, CVar(var_E14))
  loc_1610043:     Set var_E68 = Me.Txt
  loc_1610049:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H26), var_E6C)
  loc_1610058:     Proc_183_9_EAB2F0(var_E8C, CVar(var_E6C))
  loc_1610068:     Set var_EC0 = Me.Txt
  loc_161006E:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H27), var_EC4)
  loc_161007D:     Proc_183_9_EAB2F0(var_EE4, CVar(var_EC4))
  loc_161008D:     Set var_F18 = Me.Txt
  loc_1610093:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H28), var_F1C)
  loc_16100A2:     Proc_183_9_EAB2F0(var_F3C, CVar(var_F1C))
  loc_16100B2:     Set var_F70 = Me.Txt
  loc_16100B8:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H29), var_F74)
  loc_16100C7:     Proc_183_9_EAB2F0(var_F94, CVar(var_F74))
  loc_1610121:     var_2A4 = "update FaEnviro SET AGE1=" & var_154 & ",AGE2=" & var_1B4 & ",AGE3=" & var_1F4 & ",AGE4=" & var_244 & ",AGE5=" & var_294 
  loc_161017A:     var_454 = var_2A4 & ",AGE6=" & var_2E4 & ",AMT1=" & var_334 & ",AMT2=" & var_384 & ",AMT3=" & var_3D4 & ",AMT4=" & var_424 & ",AMT5=" 
  loc_16101C1:     var_5EC = var_454 & var_47C & ",AMT6=" & var_4D4 & ",DebitLimit=" & var_52C & ",CreditLimit=" & var_584 & ",NegativeCashBalance=" & var_5DC 
  loc_16101FA:     var_714 = var_5EC & ",ShowGroup=" & var_634 & ",DonotShowGroup=" & var_68C & ",ShowCurrentBalance=" & var_6E4 & ",VerticleBalanceSheet=" 
  loc_1610243:     var_894 = var_714 & var_73C & ",ShowCityName=" & var_794 & ",LedDivCode=" & var_7EC & "," & "LedSiteCode=" & var_864 & ",LedPrefix=" 
  loc_1610293:     var_A7C = var_894 & var_8BC & ",linefiller=" & var_914 & ",daterfill=" & var_97C & "," & "titlerfill=" & var_A04 & ",pagenofill=" & var_A6C 
  loc_16102DC:     var_BFC = var_A7C & ",FilterAC=" & var_AC4 & ",AddressHelp=" & var_B1C & ",CashBookBalance=" & var_B74 & ",MonthTotal=" & var_BCC & ",OnLineAdjustment=" 
  loc_1610323:     var_D94 = var_BFC & var_C24 & ",OpStockQTY=" & var_C7C & ",OpStockValue=" & var_CD4 & ",ClStockQTY=" & var_D2C & ",ClStockValue=" & var_D84 
  loc_161036C:     var_F14 = var_D94 & ",CashBookPage=" & var_DDC & ",CityNameDisp=" & var_E34 & ",ToBy=" & var_E8C & ",RepToBy=" & var_EE4 & ",PreBal=" 
  loc_16103A9:     var_1024 = var_F14 & var_F3C & ",PDCDt = " & var_F94 & ",SITE_CODE='" & CVar(MemVar_1F95070) & "',LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_16103C9:     var_90 = CStr(var_1024 & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'")
  loc_16103D3:     unk_49EA4F.Execute var_90, var_10A4, -1
  loc_161059F:   End If
  loc_161059F: End If
  loc_16105AC: Me.Global.Unload Me
  loc_16105B4: Exit Sub
  loc_16105B5: ' Referenced from: 160F534
  loc_16105BB: Call 0.Method_arg_50 (var_90, var_10A8)
  loc_16105D0: Proc_183_57_104B0BC(var_90, "btnok_Click")
  loc_16105DC: Exit Sub
End Sub

Private Sub BtnIntegrity_UnknownEvent_9 '1A612B4
  'Data Table: 49EA24
  Dim var_9C As String
  Dim var_98 As String
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  Dim var_D8 As Variant
  Dim unk_49EA4F As Connection15
  Dim var_EC As Variant
  Dim var_A0 As Field20
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_154 As Variant
  Dim var_164 As String
  Dim var_174 As Variant
  Dim var_144 As Variant
  Dim var_B4 As String
  Dim var_1A8 As String
  Dim var_1AC As String
  Dim var_1B0 As String
  Dim var_1CC As String
  Dim var_B8 As String
  loc_1A5D974: On Error Goto loc_1A6128B
  loc_1A5D97E: Call 0.Method_arg_A4 (CInt(&HB))
  loc_1A5D98F: var_94 = Me.Global.App
  loc_1A5D9B3: Call 0.Method_arg_78 (App.Path & "\HMSACIssueList.Log", &HFF)
  loc_1A5D9D2: var_94 = Me.Global.App
  loc_1A5D9FE: Call 0.Method_arg_7C (App.Path & "\HMSACIssueList.Log", 8, 0, 0)
  loc_1A5DA09: Set var_8C = var_A0
  loc_1A5DA27: Call 0.Method_arg_38 ("***** Analysis Compter System            " & vbCrLf, var_A0)
  loc_1A5DA36: var_98 = "-----------------------------------------" & vbCrLf
  loc_1A5DA3C: Call 0.Method_arg_38 ("***** Analysis Compter System            " & vbCrLf, 0)
  loc_1A5DA51: Call 0.Method_arg_38 ("***** DESCRIPTION : Account Integrity Tool" & vbCrLf)
  loc_1A5DA66: Call 0.Method_arg_38 ("***** WRITTEN BY  : HMS Team              " & vbCrLf)
  loc_1A5DA7B: Call 0.Method_arg_38 ("***** DATE UPDATED: 15/Jul/2012           " & vbCrLf)
  loc_1A5DA8A: var_98 = "-----------------------------------------" & vbCrLf
  loc_1A5DA90: Call 0.Method_arg_38 ("***** DATE UPDATED: 15/Jul/2012           " & vbCrLf)
  loc_1A5DAA5: Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A5DABA: Call 0.Method_arg_38 ("***** Checking & Updating FaEnviro For System Defined Account Groups *****" & vbCrLf)
  loc_1A5DAC5: var_B8 = "N"
  loc_1A5DACE: var_B4 = "Y"
  loc_1A5DB09: Call Proc_199_15_1172458("0022", "BANK ACCOUNTS", "A", "Bank", "060007")
  loc_1A5DB22: var_B8 = "N"
  loc_1A5DB2B: var_B4 = "Y"
  loc_1A5DB66: Call Proc_199_15_1172458("0011", "BANK OD/AC", "L", "Bank", "020001", &H6E)
  loc_1A5DB7F: var_B8 = "N"
  loc_1A5DBC3: Call Proc_199_15_1172458("0007", "BRANCH/DIVISIONS", "A", "Others", "070", &H46, "Y")
  loc_1A5DC20: Call Proc_199_15_1172458("0001", "CAPITAL ACCOUNT", "L", "Others", "010", &HA, "Y", "N")
  loc_1A5DC6E: var_9C = "CASH-IN-HAND"
  loc_1A5DC7D: Call Proc_199_15_1172458("0021", "CAPITAL ACCOUNT", "A", "Cash", "060005", &HD2, "Y", "N")
  loc_1A5DCDA: Call Proc_199_15_1172458("000A", "CLOSING STOCK", "R", "Others", "200", &HF0, "Y", "Y")
  loc_1A5DD37: Call Proc_199_15_1172458("0006", "CURRENT ASSETS", "A", "Others", "060", &H3C, "Y", "N")
  loc_1A5DD94: Call Proc_199_15_1172458("0003", "CURRENT LIABILITIES", "L", "Others", "030", &H1E, "Y", "N")
  loc_1A5DDF1: Call Proc_199_15_1172458("0018", "DEPOSIT (ASSET)", "A", "Others", "060002", &HB4, "Y", "N")
  loc_1A5DE4E: Call Proc_199_15_1172458("0026", "DIRECT EXPENSE", "E", "Others", "260", &H104, "Y", "Y")
  loc_1A5DEAB: Call Proc_199_15_1172458("0025", "DIRECT INCOMES", "R", "Others", "250", &HFA, "Y", "Y")
  loc_1A5DF08: Call Proc_199_15_1172458("0014", "DUTIES & TAXES", "L", "Others", "030001", &H8C, "Y", "N")
  loc_1A5DF65: Call Proc_199_15_1172458("0004", "FIXED ASSETS", "A", "Others", "040", &H28, "Y", "N")
  loc_1A5DFC2: Call Proc_199_15_1172458("0028", "INDIRECT EXPENSES", "E", "Others", "280", &H118, "Y", "N")
  loc_1A5E01F: Call Proc_199_15_1172458("0027", "INDIRECT INCOME", "R", "Others", "270", &H10E, "Y", "N")
  loc_1A5E07C: Call Proc_199_15_1172458("0005", "INVESTMENTS", "A", "Others", "050", &H32, "Y", "N")
  loc_1A5E0D9: Call Proc_199_15_1172458("0002", "LOAN (LIABILITY)", "L", "Others", "020", &H14, "Y", "N")
  loc_1A5E136: Call Proc_199_15_1172458("0019", "LOANS & ADVANCES (ASSET)", "A", "Others", "060003", &HBE, "Y", "N")
  loc_1A5E193: Call Proc_199_15_1172458("0008", "MISC. EXPENSES (ASSET)", "A", "Others", "080", &H50, "Y", "N")
  loc_1A5E1F0: Call Proc_199_15_1172458("0017", "OPENING STOCK", "A", "Others", "060001", &HAA, "Y", "N")
  loc_1A5E24D: Call Proc_199_15_1172458("0029", "PROFIT & LOSS A/C", "L", "Others", "999", &H3E8, "Y", "N")
  loc_1A5E2AA: Call Proc_199_15_1172458("0015", "PROVISIONS", "L", "Others", "030002", &H96, "Y", "N")
  loc_1A5E307: Call Proc_199_15_1172458("0024", "PURCHASE ACCOUNTS", "E", "Purchase", "240", &HF0, "Y", "Y")
  loc_1A5E364: Call Proc_199_15_1172458("0010", "RESERVE & SURPLUS", "L", "Others", "010001", &H64, "Y", "N")
  loc_1A5E3C1: Call Proc_199_15_1172458("0023", "SALES ACCOUNTS", "R", "Sale", "230", &HE6, "Y", "Y")
  loc_1A5E41E: Call Proc_199_15_1172458("0012", "SECURED LOANS", "L", "Others", "020002", &H78, "Y", "N")
  loc_1A5E47B: Call Proc_199_15_1172458("0016", "SUNDRY CREDITORS", "L", "Supplier", "030003", &HA0, "Y", "N")
  loc_1A5E4D8: Call Proc_199_15_1172458("0020", "SUNDRY DEBTORS", "A", "Customer", "060004", &HC8, "Y", "N")
  loc_1A5E535: Call Proc_199_15_1172458("0009", "SUSPENCE A/C ", "A", "Others", "090", &H5A, "Y", "N")
  loc_1A5E54E: var_B8 = "N"
  loc_1A5E557: var_B4 = "Y"
  loc_1A5E592: Call Proc_199_15_1172458("0013", "UNSECURED LOANS", "L", "Others", "020003", &H82, var_B4, var_B8)
  loc_1A5E5BE: Me.Connection15.Execute "SELECT * FROM LEDGER WHERE SUBCODE IS NULL OR SUBCODE=''", var_D8, -1
  loc_1A5E5C9: Set var_90 = var_94
  loc_1A5E5E6: If (var_90.RecordCount > 0) Then
  loc_1A5E5F6:   Call 0.Method_arg_38 (" " & vbCrLf, var_94, var_B8, var_B4, var_B8)
  loc_1A5E60B:   Call 0.Method_arg_38 ("***** These Ledger DocId Have Blank SubCode *****" & vbCrLf, &HDC, var_B4)
  loc_1A5E61A:   var_98 = "---------------------" & vbCrLf
  loc_1A5E620:   Call 0.Method_arg_38 ("***** These Ledger DocId Have Blank SubCode *****" & vbCrLf, var_B8)
  loc_1A5E635:   Call 0.Method_arg_38 ("DocId" & vbCrLf)
  loc_1A5E644:   var_98 = "---------------------" & vbCrLf
  loc_1A5E64A:   Call 0.Method_arg_38 ("DocId" & vbCrLf)
  loc_1A5E652:   ' Referenced from: 1A5E6B3
  loc_1A5E661:   If Not(var_90.EOF) Then
  loc_1A5E673:     var_94 = var_90.Fields
  loc_1A5E683:     var_D8 = CVar(var_94.Item("DocID")) 'Address
  loc_1A5E699:     Call 0.Method_arg_38 (Proc_183_2_E5AE94(var_D8) & vbCrLf)
  loc_1A5E6AE:     var_90.MoveNext
  loc_1A5E6B3:     GoTo loc_1A5E652
  loc_1A5E6B6:   End If
  loc_1A5E6BD:   var_98 = "---------------------" & vbCrLf
  loc_1A5E6C3:   Call 0.Method_arg_38 (Proc_183_2_E5AE94(var_D8))
  loc_1A5E6CB: End If
  loc_1A5E6D8: Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A5E6ED: Call 0.Method_arg_38 ("***** Updating Ledger for Null Values in LedgerM/Ledger Table *****" & vbCrLf)
  loc_1A5E70B: unk_49EA4F.Execute "UPDATE LEDGER SET AMTDR=0 WHERE AMTDR IS NULL", var_D8, -1
  loc_1A5E72C: unk_49EA4F.Execute "UPDATE LEDGER SET AMTCR=0 WHERE AMTCR IS NULL", var_D8, -1
  loc_1A5E74D: unk_49EA4F.Execute "UPDATE LEDGER SET NARRATION='' WHERE NARRATION IS NULL", var_D8, -1
  loc_1A5E76E: unk_49EA4F.Execute "UPDATE LEDGERM SET NARRATION='' WHERE NARRATION IS NULL", var_D8, -1
  loc_1A5E786: Call 0.Method_arg_38 (" " & vbCrLf, var_94, var_94)
  loc_1A5E79B: Call 0.Method_arg_38 ("***** Updating Ledger for Group Code & Group Nature *****" & vbCrLf, var_94)
  loc_1A5E7B9: unk_49EA4F.Execute "UPDATE LEDGER SET LEDGER.GROUPCODE=SUBGROUP.GROUPCODE,LEDGER.GROUPNATURE=SUBGROUP.GROUPNATURE FROM LEDGER LEFT JOIN SUBGROUP ON LEDGER.SUBCODE=SUBGROUP.SUBCODE", var_D8, -1
  loc_1A5E7DA: unk_49EA4F.Execute "SELECT LEDGER.*,SUBGROUP.NAME FROM LEDGER LEFT JOIN SUBGROUP ON LEDGER.SUBCODE=SUBGROUP.SUBCODE WHERE SUBGROUP.NAME IS NULL", var_D8, -1
  loc_1A5E7E5: Set var_90 = var_94
  loc_1A5E802: If (var_90.RecordCount > 0) Then
  loc_1A5E812:   Call 0.Method_arg_38 (" " & vbCrLf, var_94, var_94)
  loc_1A5E827:   Call 0.Method_arg_38 ("***** These Ledger Subcode(S) are not Available in Subgroup *****" & vbCrLf, var_94)
  loc_1A5E836:   var_98 = "--------" & vbCrLf
  loc_1A5E83C:   Call 0.Method_arg_38 ("***** These Ledger Subcode(S) are not Available in Subgroup *****" & vbCrLf)
  loc_1A5E851:   Call 0.Method_arg_38 ("SUBCODE " & vbCrLf)
  loc_1A5E860:   var_98 = "--------" & vbCrLf
  loc_1A5E866:   Call 0.Method_arg_38 ("SUBCODE " & vbCrLf)
  loc_1A5E86E:   ' Referenced from: 1A5E8CF
  loc_1A5E87D:   If Not(var_90.EOF) Then
  loc_1A5E88F:     var_94 = var_90.Fields
  loc_1A5E89F:     var_D8 = CVar(var_94.Item("subcode")) 'Address
  loc_1A5E8B5:     Call 0.Method_arg_38 (Proc_183_2_E5AE94(var_D8) & vbCrLf)
  loc_1A5E8CA:     var_90.MoveNext
  loc_1A5E8CF:     GoTo loc_1A5E86E
  loc_1A5E8D2:   End If
  loc_1A5E8D9:   var_98 = "--------" & vbCrLf
  loc_1A5E8DF:   Call 0.Method_arg_38 (Proc_183_2_E5AE94(var_D8))
  loc_1A5E8E7: End If
  loc_1A5E8FD: unk_49EA4F.Execute "SELECT * FROM SUBGROUP WHERE GROUPCODE NOT IN (SELECT GROUPCODE FROM ACGROUP)", var_D8, -1
  loc_1A5E908: Set var_90 = var_94
  loc_1A5E925: If (var_90.RecordCount > 0) Then
  loc_1A5E935:   Call 0.Method_arg_38 (" " & vbCrLf, var_94)
  loc_1A5E94A:   Call 0.Method_arg_38 ("***** These SUBGROUP GroupCode(S) are not Available in ACgroup *****" & vbCrLf)
  loc_1A5E959:   var_98 = "---------" & vbCrLf
  loc_1A5E95F:   Call 0.Method_arg_38 ("***** These SUBGROUP GroupCode(S) are not Available in ACgroup *****" & vbCrLf)
  loc_1A5E974:   Call 0.Method_arg_38 ("GROUPCODE" & vbCrLf)
  loc_1A5E983:   var_98 = "---------" & vbCrLf
  loc_1A5E989:   Call 0.Method_arg_38 ("GROUPCODE" & vbCrLf)
  loc_1A5E991:   ' Referenced from: 1A5E9F2
  loc_1A5E9A0:   If Not(var_90.EOF) Then
  loc_1A5E9B2:     var_94 = var_90.Fields
  loc_1A5E9C2:     var_D8 = CVar(var_94.Item("GroupCode")) 'Address
  loc_1A5E9D8:     Call 0.Method_arg_38 (Proc_183_2_E5AE94(var_D8) & vbCrLf)
  loc_1A5E9ED:     var_90.MoveNext
  loc_1A5E9F2:     GoTo loc_1A5E991
  loc_1A5E9F5:   End If
  loc_1A5E9FC:   var_98 = "---------" & vbCrLf
  loc_1A5EA02:   Call 0.Method_arg_38 (Proc_183_2_E5AE94(var_D8))
  loc_1A5EA0A: End If
  loc_1A5EA20: unk_49EA4F.Execute "SELECT SUBGROUP.*,ACGROUP.GROUPNATURE AS GRNAT FROM SUBGROUP LEFT JOIN ACGROUP ON SUBGROUP.GROUPCODE=ACGROUP.GROUPCODE WHERE SUBGROUP.GROUPNATURE<>ACGROUP.GROUPNATURE", var_D8, -1
  loc_1A5EA2B: Set var_90 = var_94
  loc_1A5EA48: If (var_90.RecordCount > 0) Then
  loc_1A5EA58:   Call 0.Method_arg_38 (" " & vbCrLf, var_94)
  loc_1A5EA6D:   Call 0.Method_arg_38 ("***** These GROUP NATURE MISMATCH *****" & vbCrLf)
  loc_1A5EA7C:   var_98 = "----------------------------------------------------------------------------------" & vbCrLf
  loc_1A5EA82:   Call 0.Method_arg_38 ("***** These GROUP NATURE MISMATCH *****" & vbCrLf)
  loc_1A5EA97:   Call 0.Method_arg_38 ("SUBCODE  A/CNAME                                            SUBGROUP        GROUP " & vbCrLf)
  loc_1A5EAAC:   Call 0.Method_arg_38 ("                                                            Nature          Nature" & vbCrLf)
  loc_1A5EABB:   var_98 = "----------------------------------------------------------------------------------" & vbCrLf
  loc_1A5EAC1:   Call 0.Method_arg_38 ("                                                            Nature          Nature" & vbCrLf)
  loc_1A5EAC9:   ' Referenced from: 1A5ECFE
  loc_1A5EAD8:   If Not(var_90.EOF) Then
  loc_1A5EB4E:     var_154 = "UPDATE SUBGROUP SET GROUPNATURE='" & var_90.Fields.Item("GRNAT").Value & "' WHERE SUBCODE='" & var_90.Fields.Item("subcode").Value 
  loc_1A5EB65:     unk_49EA4F.Execute CStr(var_154 & "'"), var_194, -1
  loc_1A5EB9A:     var_94 = var_90.Fields
  loc_1A5EBAA:     var_D8 = CVar(var_94.Item("subcode")) 'Address
  loc_1A5EC2B:     var_144 = CVar(var_90.Fields.Item("GRNAT")) 'Address
  loc_1A5EC67:     var_B4 = Proc_183_15_EAD490(Proc_183_2_E5AE94(var_D8, var_90.Fields), 8) & " " & Proc_183_15_EAD490(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name"))), &H32)
  loc_1A5ECA5:     var_1CC = var_B4 & " " & Proc_183_15_EAD490(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("GroupNature"))), &HF) & " " & Proc_183_15_EAD490(Proc_183_2_E5AE94(var_144), &HF)
  loc_1A5ECB2:     Call 0.Method_arg_38 (var_1CC & vbCrLf)
  loc_1A5ECF9:     var_90.MoveNext
  loc_1A5ECFE:     GoTo loc_1A5EAC9
  loc_1A5ED01:   End If
  loc_1A5ED08:   var_98 = "----------------------------------------------------------------------------------" & vbCrLf
  loc_1A5ED0E:   Call 0.Method_arg_38 (CStr(var_154 & "'"))
  loc_1A5ED16: End If
  loc_1A5ED2C: unk_49EA4F.Execute "SELECT * FROM SUBGROUP WHERE GROUPNATURE IS NULL OR GROUPNATURE=''", var_D8, -1
  loc_1A5ED37: Set var_90 = var_94
  loc_1A5ED54: If (var_90.RecordCount > 0) Then
  loc_1A5ED64:   Call 0.Method_arg_38 (" " & vbCrLf, var_94)
  loc_1A5ED79:   Call 0.Method_arg_38 ("***** These SUBGROUP GroupNature is Blank/Null *****" & vbCrLf)
  loc_1A5ED81:   ' Referenced from: 1A5EE26
  loc_1A5ED90:   If Not(var_90.EOF) Then
  loc_1A5EDA2:     var_94 = var_90.Fields
  loc_1A5EDAA:     var_A0 = var_94.Item("subcode")
  loc_1A5EDB2:     var_D8 = CVar(var_A0) 'Address
  loc_1A5EDFE:     Call 0.Method_arg_38 (var_A0 & Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), Proc_183_2_E5AE94(var_D8) & " ") & vbCrLf)
  loc_1A5EE21:     var_90.MoveNext
  loc_1A5EE26:     GoTo loc_1A5ED81
  loc_1A5EE29:   End If
  loc_1A5EE29: End If
  loc_1A5EE3F: unk_49EA4F.Execute "SELECT * FROM ACGROUP WHERE GROUPNATURE IS NULL OR GROUPNATURE=''", var_D8, -1
  loc_1A5EE4A: Set var_90 = var_94
  loc_1A5EE67: If (var_90.RecordCount > 0) Then
  loc_1A5EE77:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A5EE8C:   Call 0.Method_arg_38 (" ***** These ACGROUP GroupNature is Blank/Null *****" & vbCrLf)
  loc_1A5EE9B:   var_98 = "-----------------------------------------------------" & vbCrLf
  loc_1A5EEA1:   Call 0.Method_arg_38 (" ***** These ACGROUP GroupNature is Blank/Null *****" & vbCrLf)
  loc_1A5EEA9:   ' Referenced from: 1A5EF4E
  loc_1A5EEB8:   If Not(var_90.EOF) Then
  loc_1A5EECA:     var_94 = var_90.Fields
  loc_1A5EEDA:     var_D8 = CVar(var_94.Item("GroupCode")) 'Address
  loc_1A5EF26:     Call 0.Method_arg_38 (var_94 & Proc_183_2_E5AE94(CVar(var_90.Fields.Item("GroupName")), Proc_183_2_E5AE94(var_D8) & " ") & vbCrLf)
  loc_1A5EF49:     var_90.MoveNext
  loc_1A5EF4E:     GoTo loc_1A5EEA9
  loc_1A5EF51:   End If
  loc_1A5EF51: End If
  loc_1A5EF67: unk_49EA4F.Execute "UPDATE ACGROUP SET TRADINGYN='N' WHERE GROUPNATURE IN ('A','L')", var_D8, -1
  loc_1A5EF88: unk_49EA4F.Execute "UPDATE ACGROUP SET TRADINGYN='Y' WHERE GROUPNAME='Income (Direct)'", var_D8, -1
  loc_1A5EFA9: unk_49EA4F.Execute "UPDATE ACGROUP SET TRADINGYN='Y' WHERE GROUPNAME='Expense (Direct)'", var_D8, -1
  loc_1A5EFCA: unk_49EA4F.Execute "UPDATE ACGROUP SET TRADINGYN='N' WHERE GROUPNAME='Income (Indirect)'", var_D8, -1
  loc_1A5EFEB: unk_49EA4F.Execute "UPDATE ACGROUP SET TRADINGYN='N' WHERE GROUPNAME='Expense (Indirect)'", var_D8, -1
  loc_1A5F00C: unk_49EA4F.Execute "UPDATE ACGROUP SET MainGrLen=Len(MainGrCode)", var_D8, -1
  loc_1A5F02D: unk_49EA4F.Execute "SELECT * FROM ACGROUP WHERE TRADINGYN IS NULL OR TRADINGYN=''", var_D8, -1
  loc_1A5F038: Set var_90 = var_94
  loc_1A5F055: If (var_90.RecordCount > 0) Then
  loc_1A5F065:   Call 0.Method_arg_38 (" " & vbCrLf, var_94, var_94, var_94)
  loc_1A5F074:   var_98 = "-----------------------------------------------------" & vbCrLf
  loc_1A5F07A:   Call 0.Method_arg_38 (" " & vbCrLf, var_94, var_94)
  loc_1A5F08F:   Call 0.Method_arg_38 ("***** These ACGROUP TradingYN is Blank/Null *****" & vbCrLf, var_94)
  loc_1A5F09E:   var_98 = "-----------------------------------------------------" & vbCrLf
  loc_1A5F0A4:   Call 0.Method_arg_38 ("***** These ACGROUP TradingYN is Blank/Null *****" & vbCrLf)
  loc_1A5F0AC:   ' Referenced from: 1A5F151
  loc_1A5F0BB:   If Not(var_90.EOF) Then
  loc_1A5F0CD:     var_94 = var_90.Fields
  loc_1A5F0DD:     var_D8 = CVar(var_94.Item("GroupCode")) 'Address
  loc_1A5F129:     Call 0.Method_arg_38 (var_94 & Proc_183_2_E5AE94(CVar(var_90.Fields.Item("GroupName")), Proc_183_2_E5AE94(var_D8) & " ") & vbCrLf)
  loc_1A5F14C:     var_90.MoveNext
  loc_1A5F151:     GoTo loc_1A5F0AC
  loc_1A5F154:   End If
  loc_1A5F154: End If
  loc_1A5F16A: unk_49EA4F.Execute "UPDATE ACGROUP SET ALIASYN='N' WHERE ALIASYN IS NULL OR ALIASYN=''", var_D8, -1
  loc_1A5F18B: unk_49EA4F.Execute "SELECT * FROM ACGROUP WHERE ALIASYN IS NULL OR ALIASYN=''", var_D8, -1
  loc_1A5F196: Set var_90 = var_94
  loc_1A5F1B3: If (var_90.RecordCount > 0) Then
  loc_1A5F1C3:   Call 0.Method_arg_38 (" " & vbCrLf, var_94)
  loc_1A5F1D2:   var_98 = "-----------------------------------------------------" & vbCrLf
  loc_1A5F1D8:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A5F1ED:   Call 0.Method_arg_38 ("***** These ACGROUP AliasYN is Blank/Null *****" & vbCrLf)
  loc_1A5F1FC:   var_98 = "-----------------------------------------------------" & vbCrLf
  loc_1A5F202:   Call 0.Method_arg_38 ("***** These ACGROUP AliasYN is Blank/Null *****" & vbCrLf)
  loc_1A5F20A:   ' Referenced from: 1A5F2AF
  loc_1A5F219:   If Not(var_90.EOF) Then
  loc_1A5F22B:     var_94 = var_90.Fields
  loc_1A5F23B:     var_D8 = CVar(var_94.Item("GroupCode")) 'Address
  loc_1A5F287:     Call 0.Method_arg_38 (var_94 & Proc_183_2_E5AE94(CVar(var_90.Fields.Item("GroupName")), Proc_183_2_E5AE94(var_D8) & " ") & vbCrLf)
  loc_1A5F2AA:     var_90.MoveNext
  loc_1A5F2AF:     GoTo loc_1A5F20A
  loc_1A5F2B2:   End If
  loc_1A5F2B2: End If
  loc_1A5F2CF: Proc_183_7_EB17D4(var_D8, MemVar_1F950F4, "SELECT *  FROM LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE WHERE V_DATE<")
  loc_1A5F2E0: var_11C = var_144 & var_D8 & " AND SUBGROUP.GROUPNATURE IN ('E','R')" 
  loc_1A5F2EE: unk_49EA4F.Execute CStr(var_11C), -1, var_94
  loc_1A5F2F9: Set var_90 = var_94
  loc_1A5F321: If (var_90.RecordCount > 0) Then
  loc_1A5F331:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A5F346:   Call 0.Method_arg_38 ("***** Opening Balance Exist in Expenditure & Revenue *****" & vbCrLf)
  loc_1A5F355:   var_98 = "-----------------------------------------------------------------------------" & vbCrLf
  loc_1A5F35B:   Call 0.Method_arg_38 ("***** Opening Balance Exist in Expenditure & Revenue *****" & vbCrLf)
  loc_1A5F370:   Call 0.Method_arg_38 ("DocID                              DEBIT   CREDIT  A/C NAME" & vbCrLf)
  loc_1A5F37F:   var_98 = "-----------------------------------------------------------------------------" & vbCrLf
  loc_1A5F385:   Call 0.Method_arg_38 ("DocID                              DEBIT   CREDIT  A/C NAME" & vbCrLf)
  loc_1A5F38D:   ' Referenced from: 1A5F4E4
  loc_1A5F39C:   If Not(var_90.EOF) Then
  loc_1A5F3C5:     Proc_183_5_EF3F20(var_11C)
  loc_1A5F3E9:     var_144 = CVar(var_90.Fields.Item("AmtCr")) 'Address
  loc_1A5F3F0:     Proc_183_5_EF3F20(var_154, var_144)
  loc_1A5F404:     var_94 = var_90.Fields
  loc_1A5F414:     var_D8 = CVar(var_94.Item("DocID")) 'Address
  loc_1A5F464:     var_1B0 = Proc_183_2_E5AE94(var_D8) & " " & Proc_183_16_EAF86C(CStr(var_11C), &HD) & " " & Proc_183_16_EAF86C(CStr(var_154), &HD) & " "
  loc_1A5F486:     var_174 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_1A5F4A0:     Call 0.Method_arg_38 (CVar(var_90.Fields.Item("AmtDr")) & Proc_183_2_E5AE94(var_174, var_1B0) & vbCrLf)
  loc_1A5F4DF:     var_90.MoveNext
  loc_1A5F4E4:     GoTo loc_1A5F38D
  loc_1A5F4E7:   End If
  loc_1A5F4EE:   var_98 = "-----------------------------------------------------------------------------" & vbCrLf
  loc_1A5F4F4:   Call 0.Method_arg_38 (Proc_183_2_E5AE94(var_D8))
  loc_1A5F4FC: End If
  loc_1A5F509: var_EC = "SELECT SUM(AMTCR)-SUM(AMTDR) AS BAL FROM LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE WHERE V_DATE<"
  loc_1A5F519: Proc_183_7_EB17D4(var_D8, MemVar_1F950F4, "AmtDr")
  loc_1A5F521: var_FC = var_144 & var_D8 
  loc_1A5F538: unk_49EA4F.Execute CStr(var_FC & " AND SUBGROUP.GROUPNATURE NOT IN ('E','R')"), -1, var_94
  loc_1A5F543: Set var_90 = var_94
  loc_1A5F56B: If (var_90.RecordCount > 0) Then
  loc_1A5F58D:   var_D8 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_1A5F594:   Proc_183_3_E7DD58(var_FC)
  loc_1A5F5A4:   var_11C = Round(var_FC, 2)
  loc_1A5F5C0:   If CBool(var_11C <> 0) Then
  loc_1A5F5D0:     Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A5F5E5:     Call 0.Method_arg_38 ("***** Opening Balance Difference *****" & vbCrLf)
  loc_1A5F5F4:     var_98 = "-----------------" & vbCrLf
  loc_1A5F5FA:     Call 0.Method_arg_38 ("***** Opening Balance Difference *****" & vbCrLf)
  loc_1A5F60F:     Call 0.Method_arg_38 ("DIFFERANCE AMOUNT" & vbCrLf)
  loc_1A5F61E:     var_98 = "-----------------" & vbCrLf
  loc_1A5F624:     Call 0.Method_arg_38 ("DIFFERANCE AMOUNT" & vbCrLf)
  loc_1A5F62C:     ' Referenced from: 1A5F6A8
  loc_1A5F63B:     If Not(var_90.EOF) Then
  loc_1A5F64D:       var_94 = var_90.Fields
  loc_1A5F65D:       var_D8 = CVar(var_94.Item("Bal")) 'Address
  loc_1A5F664:       Proc_183_5_EF3F20(var_FC, var_D8)
  loc_1A5F688:       Call 0.Method_arg_38 (Proc_183_16_EAF86C(CStr(var_FC), &HD) & vbCrLf)
  loc_1A5F6A3:       var_90.MoveNext
  loc_1A5F6A8:       GoTo loc_1A5F62C
  loc_1A5F6AB:     End If
  loc_1A5F6B2:     var_98 = "-----------------" & vbCrLf
  loc_1A5F6B8:     Call 0.Method_arg_38 ("DIFFERANCE AMOUNT" & vbCrLf)
  loc_1A5F6C0:   End If
  loc_1A5F6C0: End If
  loc_1A5F6DD: Proc_183_7_EB17D4(var_D8, MemVar_1F950EC, "SELECT * FROM LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE WHERE V_DATE>", var_11C)
  loc_1A5F6E5: var_FC = -1 & var_D8 
  loc_1A5F6F3: unk_49EA4F.Execute CStr(var_FC), var_94, var_D8
  loc_1A5F6FE: Set var_90 = var_94
  loc_1A5F724: If (var_90.RecordCount > 0) Then
  loc_1A5F734:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A5F749:   Call 0.Method_arg_38 ("***** Transaction Exist in BIG Date *****" & vbCrLf)
  loc_1A5F758:   var_98 = "-------------------------------------------------------------" & vbCrLf
  loc_1A5F75E:   Call 0.Method_arg_38 ("***** Transaction Exist in BIG Date *****" & vbCrLf)
  loc_1A5F773:   Call 0.Method_arg_38 ("DOCID                 DATE                DEBIT        CREDIT" & vbCrLf)
  loc_1A5F782:   var_98 = "-------------------------------------------------------------" & vbCrLf
  loc_1A5F788:   Call 0.Method_arg_38 ("DOCID                 DATE                DEBIT        CREDIT" & vbCrLf)
  loc_1A5F790:   ' Referenced from: 1A5F8ED
  loc_1A5F79F:   If Not(var_90.EOF) Then
  loc_1A5F7C1:     var_11C = CVar(var_90.Fields.Item("AmtDr")) 'Address
  loc_1A5F7C8:     Proc_183_5_EF3F20(var_144)
  loc_1A5F7F3:     Proc_183_5_EF3F20(var_174, CVar(var_90.Fields.Item("AmtCr")))
  loc_1A5F807:     var_94 = var_90.Fields
  loc_1A5F817:     var_D8 = CVar(var_94.Item("DocID")) 'Address
  loc_1A5F87A:     var_1A8 = Proc_183_2_E5AE94(var_D8) & " " & CStr(var_90.Fields.Item("V_DATE").Value) & " " & Proc_183_16_EAF86C(CStr(var_144), &HD)
  loc_1A5F8A7:     Call 0.Method_arg_38 (var_1A8 & " " & Proc_183_16_EAF86C(CStr(var_174), &HD) & vbCrLf)
  loc_1A5F8E8:     var_90.MoveNext
  loc_1A5F8ED:     GoTo loc_1A5F790
  loc_1A5F8F0:   End If
  loc_1A5F8F7:   var_98 = "-------------------------------------------------------------" & vbCrLf
  loc_1A5F8FD:   Call 0.Method_arg_38 (Proc_183_2_E5AE94(var_D8))
  loc_1A5F905: End If
  loc_1A5F912: var_EC = "SELECT SUM(AMTCR)-SUM(AMTDR) AS BAL FROM LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE WHERE V_DATE BETWEEN "
  loc_1A5F922: Proc_183_7_EB17D4(var_D8, MemVar_1F950F4, "V_DATE", var_174)
  loc_1A5F92A: var_FC = -1 & var_D8 
  loc_1A5F933: var_11C = var_90.Fields.Item("V_DATE").Value & " AND " 
  loc_1A5F942: Proc_183_7_EB17D4(var_144, MemVar_1F950EC, var_11C)
  loc_1A5F958: unk_49EA4F.Execute CStr(var_94 & var_144), var_11C, 
  loc_1A5F963: Set var_90 = var_94
  loc_1A5F98F: If (var_90.RecordCount > 0) Then
  loc_1A5F9B1:   var_D8 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_1A5F9B8:   Proc_183_3_E7DD58(var_90.Fields.Item("V_DATE").Value)
  loc_1A5F9E4:   If CBool(Round(var_90.Fields.Item("V_DATE").Value, 2) <> 0) Then
  loc_1A5F9F4:     Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A5FA09:     Call 0.Method_arg_38 ("***** Transaction Summary Difference *****" & vbCrLf)
  loc_1A5FA18:     var_98 = "------------------" & vbCrLf
  loc_1A5FA1E:     Call 0.Method_arg_38 ("***** Transaction Summary Difference *****" & vbCrLf)
  loc_1A5FA33:     Call 0.Method_arg_38 ("DIFF. AMOUNT" & vbCrLf)
  loc_1A5FA42:     var_98 = "------------------" & vbCrLf
  loc_1A5FA48:     Call 0.Method_arg_38 ("DIFF. AMOUNT" & vbCrLf)
  loc_1A5FA50:     ' Referenced from: 1A5FACC
  loc_1A5FA5F:     If Not(var_90.EOF) Then
  loc_1A5FA71:       var_94 = var_90.Fields
  loc_1A5FA81:       var_D8 = CVar(var_94.Item("Bal")) 'Address
  loc_1A5FA88:       Proc_183_5_EF3F20(var_90.Fields.Item("V_DATE").Value, var_D8)
  loc_1A5FAAC:       Call 0.Method_arg_38 (Proc_183_16_EAF86C(CStr(var_90.Fields.Item("V_DATE").Value), &HD) & vbCrLf)
  loc_1A5FAC7:       var_90.MoveNext
  loc_1A5FACC:       GoTo loc_1A5FA50
  loc_1A5FACF:     End If
  loc_1A5FAD6:     var_98 = "------------------" & vbCrLf
  loc_1A5FADC:     Call 0.Method_arg_38 ("DIFF. AMOUNT" & vbCrLf)
  loc_1A5FAE4:   End If
  loc_1A5FAE4: End If
  loc_1A5FAF1: var_EC = "SELECT V_DATE,SUM(AMTCR)-SUM(AMTDR) AS BAL FROM LEDGER WHERE V_DATE BETWEEN "
  loc_1A5FB01: Proc_183_7_EB17D4(var_D8, MemVar_1F950F4, 0, var_194)
  loc_1A5FB09: var_FC = -1 & var_D8 
  loc_1A5FB21: Proc_183_7_EB17D4(var_144, MemVar_1F950EC, var_90.Fields.Item("V_DATE").Value & " AND ")
  loc_1A5FB2D: var_164 = " GROUP BY V_DATE Having Sum (AmtCr)-Sum(AmtDr) <> 0"
  loc_1A5FB40: unk_49EA4F.Execute CStr(var_94 & var_144 & "'"), var_D8, 
  loc_1A5FB4B: Set var_90 = var_94
  loc_1A5FB79: If (var_90.RecordCount > 0) Then
  loc_1A5FB89:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A5FB9E:   Call 0.Method_arg_38 ("***** Date Wise Difference in Transaction Sum *****" & vbCrLf)
  loc_1A5FBAD:   var_98 = "-------------------------" & vbCrLf
  loc_1A5FBB3:   Call 0.Method_arg_38 ("***** Date Wise Difference in Transaction Sum *****" & vbCrLf)
  loc_1A5FBC8:   Call 0.Method_arg_38 ("DATE              BALANCE" & vbCrLf)
  loc_1A5FBD7:   var_98 = "-------------------------" & vbCrLf
  loc_1A5FBDD:   Call 0.Method_arg_38 ("DATE              BALANCE" & vbCrLf)
  loc_1A5FBE5:   ' Referenced from: 1A5FCF8
  loc_1A5FBF4:   If Not(var_90.EOF) Then
  loc_1A5FC16:     var_D8 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_1A5FC1D:     Proc_183_3_E7DD58(var_90.Fields.Item("V_DATE").Value)
  loc_1A5FC2D:     var_11C = Round(var_90.Fields.Item("V_DATE").Value, 2)
  loc_1A5FC49:     If CBool(var_11C <> 0) Then
  loc_1A5FC72:       Proc_183_5_EF3F20(var_11C, CVar(var_90.Fields.Item("Bal")))
  loc_1A5FC86:       var_94 = var_90.Fields
  loc_1A5FC96:       var_D8 = CVar(var_94.Item("V_DATE")) 'Address
  loc_1A5FCCC:       Call 0.Method_arg_38 (Proc_183_2_E5AE94(var_D8) & " " & Proc_183_16_EAF86C(CStr(var_11C), &HD) & vbCrLf)
  loc_1A5FCF0:     End If
  loc_1A5FCF3:     var_90.MoveNext
  loc_1A5FCF8:     GoTo loc_1A5FBE5
  loc_1A5FCFB:   End If
  loc_1A5FD02:   var_98 = "-------------------------" & vbCrLf
  loc_1A5FD08:   Call 0.Method_arg_38 (Proc_183_2_E5AE94(var_D8))
  loc_1A5FD10: End If
  loc_1A5FD1D: var_EC = "SELECT DOCID,V_DATE,SUM(AMTCR)-SUM(AMTDR) AS BAL FROM LEDGER WHERE V_DATE BETWEEN "
  loc_1A5FD2D: Proc_183_7_EB17D4(var_D8, MemVar_1F950F4, "Bal", var_194)
  loc_1A5FD35: var_FC = -1 & var_D8 
  loc_1A5FD4D: Proc_183_7_EB17D4(var_144, MemVar_1F950EC, CVar(var_90.Fields.Item("Bal")) & " AND ")
  loc_1A5FD59: var_164 = " GROUP BY DOCID,V_DATE Having Sum (AmtCr)-Sum(AmtDr) <> 0"
  loc_1A5FD6C: unk_49EA4F.Execute CStr(var_94 & var_144 & "'"), var_D8, 
  loc_1A5FD77: Set var_90 = var_94
  loc_1A5FDA5: If (var_90.RecordCount > 0) Then
  loc_1A5FDB5:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A5FDCA:   Call 0.Method_arg_38 ("***** DocId Wise/ Date Wise Difference in Transaction Sum *****" & vbCrLf)
  loc_1A5FDD9:   var_98 = "-----------------------------------------------" & vbCrLf
  loc_1A5FDDF:   Call 0.Method_arg_38 ("***** DocId Wise/ Date Wise Difference in Transaction Sum *****" & vbCrLf)
  loc_1A5FDF4:   Call 0.Method_arg_38 ("DOCID                 DATE              BALANCE" & vbCrLf)
  loc_1A5FE03:   var_98 = "-----------------------------------------------" & vbCrLf
  loc_1A5FE09:   Call 0.Method_arg_38 ("DOCID                 DATE              BALANCE" & vbCrLf)
  loc_1A5FE11:   ' Referenced from: 1A5FF64
  loc_1A5FE20:   If Not(var_90.EOF) Then
  loc_1A5FE42:     var_D8 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_1A5FE49:     Proc_183_3_E7DD58(CVar(var_90.Fields.Item("Bal")))
  loc_1A5FE75:     If CBool(Round(CVar(var_90.Fields.Item("Bal")), 2) <> 0) Then
  loc_1A5FE9E:       Proc_183_5_EF3F20(var_144, CVar(var_90.Fields.Item("Bal")))
  loc_1A5FEB2:       var_94 = var_90.Fields
  loc_1A5FEC2:       var_D8 = CVar(var_94.Item("DocID")) 'Address
  loc_1A5FEF4:       var_FC = CVar(var_90.Fields.Item("V_DATE")) 'Address
  loc_1A5FF28:       var_1AC = var_D8 & Proc_183_2_E5AE94(var_FC, Proc_183_2_E5AE94(var_D8) & " ") & " " & Proc_183_16_EAF86C(CStr(var_144), &HD) & vbCrLf
  loc_1A5FF2E:       Call 0.Method_arg_38 (var_1AC)
  loc_1A5FF5C:     End If
  loc_1A5FF5F:     var_90.MoveNext
  loc_1A5FF64:     GoTo loc_1A5FE11
  loc_1A5FF67:   End If
  loc_1A5FF6E:   var_98 = "-----------------------------------------------" & vbCrLf
  loc_1A5FF74:   Call 0.Method_arg_38 (Proc_183_2_E5AE94(var_D8))
  loc_1A5FF7C: End If
  loc_1A5FF89: Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A5FF9E: Call 0.Method_arg_38 ("***** Checking & Updating FaEnviro *****" & vbCrLf)
  loc_1A5FFCA: unk_49EA4F.Execute "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_D8, -1
  loc_1A5FFD5: Set var_90 = var_94
  loc_1A5FFF9: If (var_90.RecordCount <= 0) Then
  loc_1A60012:   unk_49EA4F.Execute "INSERT INTO FAENVIRO (AGE1) VALUES (0)", var_D8, -1
  loc_1A6001D: End If
  loc_1A60025: var_90.Requery -1
  loc_1A60049: var_D8 = CVar(var_90.Fields.Item("Age1")) 'Address
  loc_1A60050: Proc_183_3_E7DD58(var_FC, var_D8)
  loc_1A6006A: If (var_FC = 0) Then
  loc_1A60083:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Age1=0", var_D8, -1
  loc_1A6008E: End If
  loc_1A6009D: var_94 = var_90.Fields
  loc_1A600AD: var_D8 = CVar(var_94.Item("Age2")) 'Address
  loc_1A600B4: Proc_183_3_E7DD58(var_FC, var_D8, var_94)
  loc_1A600CE: If (var_FC = 0) Then
  loc_1A600E7:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Age2=15", var_D8, -1
  loc_1A600F2: End If
  loc_1A60101: var_94 = var_90.Fields
  loc_1A60111: var_D8 = CVar(var_94.Item("Age3")) 'Address
  loc_1A60118: Proc_183_3_E7DD58(var_FC, var_D8, var_94)
  loc_1A60132: If (var_FC = 0) Then
  loc_1A6014B:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Age3=30", var_D8, -1
  loc_1A60156: End If
  loc_1A60165: var_94 = var_90.Fields
  loc_1A60175: var_D8 = CVar(var_94.Item("Age4")) 'Address
  loc_1A6017C: Proc_183_3_E7DD58(var_FC, var_D8, var_94)
  loc_1A60196: If (var_FC = 0) Then
  loc_1A601AF:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Age4=45", var_D8, -1
  loc_1A601BA: End If
  loc_1A601C9: var_94 = var_90.Fields
  loc_1A601D9: var_D8 = CVar(var_94.Item("Age5")) 'Address
  loc_1A601E0: Proc_183_3_E7DD58(var_FC, var_D8, var_94)
  loc_1A601FA: If (var_FC = 0) Then
  loc_1A60213:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Age5=60", var_D8, -1
  loc_1A6021E: End If
  loc_1A6022D: var_94 = var_90.Fields
  loc_1A6023D: var_D8 = CVar(var_94.Item("Age6")) 'Address
  loc_1A60244: Proc_183_3_E7DD58(var_FC, var_D8, var_94)
  loc_1A6025E: If (var_FC = 0) Then
  loc_1A60277:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Age6=90", var_D8, -1
  loc_1A60282: End If
  loc_1A60291: var_94 = var_90.Fields
  loc_1A602A1: var_D8 = CVar(var_94.Item("Amt1")) 'Address
  loc_1A602A8: Proc_183_3_E7DD58(var_FC, var_D8, var_94)
  loc_1A602C2: If (var_FC = 0) Then
  loc_1A602DB:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Amt1=1000", var_D8, -1
  loc_1A602E6: End If
  loc_1A602F5: var_94 = var_90.Fields
  loc_1A60305: var_D8 = CVar(var_94.Item("Amt2")) 'Address
  loc_1A6030C: Proc_183_3_E7DD58(var_FC, var_D8, var_94)
  loc_1A60326: If (var_FC = 0) Then
  loc_1A6033F:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Amt2=2000", var_D8, -1
  loc_1A6034A: End If
  loc_1A60359: var_94 = var_90.Fields
  loc_1A60369: var_D8 = CVar(var_94.Item("Amt3")) 'Address
  loc_1A60370: Proc_183_3_E7DD58(var_FC, var_D8, var_94)
  loc_1A6038A: If (var_FC = 0) Then
  loc_1A603A3:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Amt3=3000", var_D8, -1
  loc_1A603AE: End If
  loc_1A603BD: var_94 = var_90.Fields
  loc_1A603CD: var_D8 = CVar(var_94.Item("Amt4")) 'Address
  loc_1A603D4: Proc_183_3_E7DD58(var_FC, var_D8, var_94)
  loc_1A603EE: If (var_FC = 0) Then
  loc_1A60407:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Amt4=4000", var_D8, -1
  loc_1A60412: End If
  loc_1A60421: var_94 = var_90.Fields
  loc_1A60431: var_D8 = CVar(var_94.Item("Amt5")) 'Address
  loc_1A60438: Proc_183_3_E7DD58(var_FC, var_D8, var_94)
  loc_1A60452: If (var_FC = 0) Then
  loc_1A6046B:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Amt5=5000", var_D8, -1
  loc_1A60476: End If
  loc_1A60485: var_94 = var_90.Fields
  loc_1A60495: var_D8 = CVar(var_94.Item("Amt6")) 'Address
  loc_1A6049C: Proc_183_3_E7DD58(var_FC, var_D8, var_94)
  loc_1A604B6: If (var_FC = 0) Then
  loc_1A604CF:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Amt6=6000", var_D8, -1
  loc_1A604DA: End If
  loc_1A604E9: var_94 = var_90.Fields
  loc_1A604F9: var_D8 = CVar(var_94.Item("TagadaHeader1")) 'Address
  loc_1A60513: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A6052C:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaHeader1='Dear Sirs,'", var_D8, -1
  loc_1A60537: End If
  loc_1A60546: var_94 = var_90.Fields
  loc_1A60556: var_D8 = CVar(var_94.Item("TagadaHeader2")) 'Address
  loc_1A60570: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60589:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaHeader2='                 SUB : Outstanding Letter'", var_D8, -1
  loc_1A60594: End If
  loc_1A605A3: var_94 = var_90.Fields
  loc_1A605B3: var_D8 = CVar(var_94.Item("TagadaHeader3")) 'Address
  loc_1A605CD: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A605E6:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaHeader3=''", var_D8, -1
  loc_1A605F1: End If
  loc_1A60600: var_94 = var_90.Fields
  loc_1A60610: var_D8 = CVar(var_94.Item("TagadaHeader4")) 'Address
  loc_1A6062A: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60643:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaHeader4='We Wish to draw your immediate attention towards our bills.details of which'", var_D8, -1
  loc_1A6064E: End If
  loc_1A6065D: var_94 = var_90.Fields
  loc_1A6066D: var_D8 = CVar(var_94.Item("TagadaHeader5")) 'Address
  loc_1A60687: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A606A0:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaHeader5='are given below for your ready reference.'", var_D8, -1
  loc_1A606AB: End If
  loc_1A606BA: var_94 = var_90.Fields
  loc_1A606CA: var_D8 = CVar(var_94.Item("TagadaFooter1")) 'Address
  loc_1A606E4: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A606FD:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaFooter1='The payment of the bills have become late and as such, we request you to'", var_D8, -1
  loc_1A60708: End If
  loc_1A60717: var_94 = var_90.Fields
  loc_1A60727: var_D8 = CVar(var_94.Item("TagadaFooter2")) 'Address
  loc_1A60741: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A6075A:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaFooter2='send payment of the same at earliest,preferably vide draft drawn at kanpur.'", var_D8, -1
  loc_1A60765: End If
  loc_1A60774: var_94 = var_90.Fields
  loc_1A6079E: If (Proc_183_2_E5AE94(CVar(var_94.Item("TagadaFooter3")), var_94) = vbNullString) Then
  loc_1A607C1:   Proc_183_9_EAB2F0(var_FC, "Thanking you                                           Your's faithfully", "UPDATE FAENVIRO SET TagadaFooter3=", var_144)
  loc_1A607C9:   var_11C = -1 & var_FC 
  loc_1A607D7:   unk_49EA4F.Execute CStr(CVar(var_90.Fields.Item("Bal"))), var_94, var_94
  loc_1A607ED: End If
  loc_1A6080C: var_D8 = CVar(var_90.Fields.Item("TagadaFooter4")) 'Address
  loc_1A60826: If (Proc_183_2_E5AE94(var_D8) = vbNullString) Then
  loc_1A6083F:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaFooter4=''", var_D8, -1
  loc_1A6084A: End If
  loc_1A60859: var_94 = var_90.Fields
  loc_1A60869: var_D8 = CVar(var_94.Item("TagadaFooter5")) 'Address
  loc_1A60883: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A6089C:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaFooter5='                                                       For ABC & Company'", var_D8, -1
  loc_1A608A7: End If
  loc_1A608B6: var_94 = var_90.Fields
  loc_1A608C6: var_D8 = CVar(var_94.Item("CreditLimit")) 'Address
  loc_1A608E0: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A608F9:   unk_49EA4F.Execute "UPDATE FAENVIRO SET CreditLimit='Yes'", var_D8, -1
  loc_1A60904: End If
  loc_1A60913: var_94 = var_90.Fields
  loc_1A60923: var_D8 = CVar(var_94.Item("DebitLimit")) 'Address
  loc_1A6093D: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60956:   unk_49EA4F.Execute "UPDATE FAENVIRO SET DebitLimit='Yes'", var_D8, -1
  loc_1A60961: End If
  loc_1A60970: var_94 = var_90.Fields
  loc_1A60980: var_D8 = CVar(var_94.Item("NegativeCashBalance")) 'Address
  loc_1A6099A: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A609B3:   unk_49EA4F.Execute "UPDATE FAENVIRO SET NegativeCashBalancE='Yes'", var_D8, -1
  loc_1A609BE: End If
  loc_1A609CD: var_94 = var_90.Fields
  loc_1A609DD: var_D8 = CVar(var_94.Item("ShowGroup")) 'Address
  loc_1A609F7: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60A10:   unk_49EA4F.Execute "UPDATE FAENVIRO SET ShowGroup='No'", var_D8, -1
  loc_1A60A1B: End If
  loc_1A60A2A: var_94 = var_90.Fields
  loc_1A60A3A: var_D8 = CVar(var_94.Item("DonotShowGroup")) 'Address
  loc_1A60A54: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60A6D:   unk_49EA4F.Execute "UPDATE FAENVIRO SET DonotShowGroup='No'", var_D8, -1
  loc_1A60A78: End If
  loc_1A60A87: var_94 = var_90.Fields
  loc_1A60A97: var_D8 = CVar(var_94.Item("ShowCurrentBalance")) 'Address
  loc_1A60AB1: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60ACA:   unk_49EA4F.Execute "UPDATE FAENVIRO SET ShowCurrentBalance='Yes'", var_D8, -1
  loc_1A60AD5: End If
  loc_1A60AE4: var_94 = var_90.Fields
  loc_1A60AF4: var_D8 = CVar(var_94.Item("VerticleBalanceSheet")) 'Address
  loc_1A60B0E: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60B27:   unk_49EA4F.Execute "UPDATE FAENVIRO SET VerticleBalanceSheet='No'", var_D8, -1
  loc_1A60B32: End If
  loc_1A60B41: var_94 = var_90.Fields
  loc_1A60B51: var_D8 = CVar(var_94.Item("ShowQty")) 'Address
  loc_1A60B6B: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60B84:   unk_49EA4F.Execute "UPDATE FAENVIRO SET ShowQty='No'", var_D8, -1
  loc_1A60B8F: End If
  loc_1A60B9E: var_94 = var_90.Fields
  loc_1A60BAE: var_D8 = CVar(var_94.Item("ShowCityName")) 'Address
  loc_1A60BC8: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60BE1:   unk_49EA4F.Execute "UPDATE FAENVIRO SET ShowCityName='No'", var_D8, -1
  loc_1A60BEC: End If
  loc_1A60BFB: var_94 = var_90.Fields
  loc_1A60C0B: var_D8 = CVar(var_94.Item("LedDivCode")) 'Address
  loc_1A60C25: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60C3E:   unk_49EA4F.Execute "UPDATE FAENVIRO SET LedDivCode='No'", var_D8, -1
  loc_1A60C49: End If
  loc_1A60C58: var_94 = var_90.Fields
  loc_1A60C68: var_D8 = CVar(var_94.Item("LedSiteCode")) 'Address
  loc_1A60C82: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60C9B:   unk_49EA4F.Execute "UPDATE FAENVIRO SET LedDivCode='No'", var_D8, -1
  loc_1A60CA6: End If
  loc_1A60CB5: var_94 = var_90.Fields
  loc_1A60CC5: var_D8 = CVar(var_94.Item("LedPrefix")) 'Address
  loc_1A60CDF: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60CF8:   unk_49EA4F.Execute "UPDATE FAENVIRO SET LedPrefix='No'", var_D8, -1
  loc_1A60D03: End If
  loc_1A60D12: var_94 = var_90.Fields
  loc_1A60D22: var_D8 = CVar(var_94.Item("daterfill")) 'Address
  loc_1A60D3C: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60D55:   unk_49EA4F.Execute "UPDATE FAENVIRO SET daterfill='Y'", var_D8, -1
  loc_1A60D60: End If
  loc_1A60D6F: var_94 = var_90.Fields
  loc_1A60D7F: var_D8 = CVar(var_94.Item("titlerfill")) 'Address
  loc_1A60D99: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60DB2:   unk_49EA4F.Execute "UPDATE FAENVIRO SET titlerfill='M'", var_D8, -1
  loc_1A60DBD: End If
  loc_1A60DCC: var_94 = var_90.Fields
  loc_1A60DDC: var_D8 = CVar(var_94.Item("pagenofill")) 'Address
  loc_1A60DF6: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60E0F:   unk_49EA4F.Execute "UPDATE FAENVIRO SET pagenofill='Y'", var_D8, -1
  loc_1A60E1A: End If
  loc_1A60E29: var_94 = var_90.Fields
  loc_1A60E39: var_D8 = CVar(var_94.Item("RunPIF")) 'Address
  loc_1A60E53: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60E6C:   unk_49EA4F.Execute "UPDATE FAENVIRO SET RunPIF='Y'", var_D8, -1
  loc_1A60E77: End If
  loc_1A60E86: var_94 = var_90.Fields
  loc_1A60E96: var_D8 = CVar(var_94.Item("FilterAC")) 'Address
  loc_1A60EB0: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60EC9:   unk_49EA4F.Execute "UPDATE FAENVIRO SET FilterAC='No'", var_D8, -1
  loc_1A60ED4: End If
  loc_1A60EE3: var_94 = var_90.Fields
  loc_1A60EF3: var_D8 = CVar(var_94.Item("AddressHelp")) 'Address
  loc_1A60F0D: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60F26:   unk_49EA4F.Execute "UPDATE FAENVIRO SET AddressHelp='Yes'", var_D8, -1
  loc_1A60F31: End If
  loc_1A60F40: var_94 = var_90.Fields
  loc_1A60F50: var_D8 = CVar(var_94.Item("DateLock")) 'Address
  loc_1A60F6A: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60F83:   unk_49EA4F.Execute "UPDATE FAENVIRO SET DateLock='Y'", var_D8, -1
  loc_1A60F8E: End If
  loc_1A60F9D: var_94 = var_90.Fields
  loc_1A60FAD: var_D8 = CVar(var_94.Item("CashBookBalance")) 'Address
  loc_1A60FC7: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A60FE0:   unk_49EA4F.Execute "UPDATE FAENVIRO SET CashBookBalance='Yes'", var_D8, -1
  loc_1A60FEB: End If
  loc_1A60FFA: var_94 = var_90.Fields
  loc_1A6100A: var_D8 = CVar(var_94.Item("MonthTotal")) 'Address
  loc_1A61024: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A6103D:   unk_49EA4F.Execute "UPDATE FAENVIRO SET MonthTotal='Yes'", var_D8, -1
  loc_1A61048: End If
  loc_1A61057: var_94 = var_90.Fields
  loc_1A61067: var_D8 = CVar(var_94.Item("OnLineAdjustment")) 'Address
  loc_1A61081: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A6109A:   unk_49EA4F.Execute "UPDATE FAENVIRO SET OnLineAdjustment='Yes'", var_D8, -1
  loc_1A610A5: End If
  loc_1A610B4: var_94 = var_90.Fields
  loc_1A610C4: var_D8 = CVar(var_94.Item("linefiller")) 'Address
  loc_1A610DE: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A610F7:   unk_49EA4F.Execute "UPDATE FAENVIRO SET linefiller='-'", var_D8, -1
  loc_1A61102: End If
  loc_1A61111: var_94 = var_90.Fields
  loc_1A61121: var_D8 = CVar(var_94.Item("CashBookPage")) 'Address
  loc_1A6113B: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A61154:   unk_49EA4F.Execute "UPDATE FAENVIRO SET CashBookPage='Yes'", var_D8, -1
  loc_1A6115F: End If
  loc_1A6116E: var_94 = var_90.Fields
  loc_1A6117E: var_D8 = CVar(var_94.Item("CityNameDisp")) 'Address
  loc_1A61198: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A611B1:   unk_49EA4F.Execute "UPDATE FAENVIRO SET CityNameDisp='No'", var_D8, -1
  loc_1A611BC: End If
  loc_1A611CB: var_94 = var_90.Fields
  loc_1A611DB: var_D8 = CVar(var_94.Item("ToBy")) 'Address
  loc_1A611F5: If (Proc_183_2_E5AE94(var_D8, var_94) = vbNullString) Then
  loc_1A6120E:   unk_49EA4F.Execute "UPDATE FAENVIRO SET ToBy='No'", var_D8, -1
  loc_1A61219: End If
  loc_1A61228: var_94 = var_90.Fields
  loc_1A61238: var_D8 = CVar(var_94.Item("RepToBy")) 'Address
  loc_1A61241: var_98 = Proc_183_2_E5AE94(var_D8, var_94)
  loc_1A61252: If (var_98 = vbNullString) Then
  loc_1A6126B:   unk_49EA4F.Execute "UPDATE FAENVIRO SET RepToBy='No'", var_D8, -1
  loc_1A61276: End If
  loc_1A61279: Call 0.Method_BtnIntegrity_UnknownEvent_9C (var_94)
  loc_1A61285: Call 0.Method_arg_A4 (CInt(0))
  loc_1A6128A: Exit Sub
  loc_1A6128B: ' Referenced from: 1A5D974
  loc_1A61291: Call 0.Method_arg_50 (var_98)
  loc_1A612A6: Proc_183_57_104B0BC(var_98, "BtnIntegrity_Click")
  loc_1A612B2: Exit Sub
End Sub

Public Sub Ctrl_validate(Ctrl) 'E21800
  'Data Table: 49EA24
  Dim var_94 As Long
  loc_E217DC: var_94 = -2147483643
  loc_E217E8: Me.BackColor = var_94
  loc_E217F8: Me.ForeColor = &HC00000
  loc_E217FC: Exit Sub
End Sub

Public Sub Ctrl_GetFocus(Ctrl) 'E21854
  'Data Table: 49EA24
  Dim var_94 As Long
  loc_E21830: var_94 = -2147483640
  loc_E2183C: Me.BackColor = var_94
  loc_E21840: var_94 = -2147483634
  loc_E2184C: Me.ForeColor = var_94
  loc_E21850: Exit Sub
End Sub

Public Sub Proc_199_14_E8DEF4
  'Data Table: 49EA24
  Dim var_10C As TextBox
  loc_E8DEC3: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8DEC6:   Call btnok_UnknownEvent_9()
  loc_E8DECE: Else
  loc_E8DED9:   Set var_108 = Me.Txt
  loc_E8DEDF:   Call 0.Method_Proc_199_14_E8DEF40 (CInt(6))
  loc_E8DEE7:   var_10C.SetFocus
  loc_E8DEF3: End If
  loc_E8DEF3: Exit Sub
End Sub

Public Sub Proc_199_15_1172458(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C) '1172458
  'Data Table: 49EA24
  Dim unk_49EA4F As Connection15
  Dim var_8A As Integer
  Dim var_1C0 As Integer
  Dim var_114 As Variant
  Dim var_188 As String
  Dim var_1AC As Variant
  Dim var_1B0 As Fields15
  Dim var_1C4 As Field20
  Dim var_90 As Recordset15
  Dim var_C4 As Variant
  Dim var_F4 As Variant
  Dim var_88 As Long
  Dim var_1F8 As String
  Dim var_22C As String
  Dim var_244 As String
  Dim unk_49EBDD As Connection15
  loc_1172114: On Error Resume Next
  loc_1172122: unk_49EA4F.BeginTrans var_94
  loc_117212B: var_8A = &HFF
  loc_1172135: var_E4 = "Upper(GroupName)"
  loc_1172140: var_C4 = "UCase(GroupName)"
  loc_1172165: var_154 = Ucase(arg_10)
  loc_1172170: var_1C0 = 0
  loc_11721B5: unk_49EA4F.Execute CStr("SELECT COUNT(*) FROM ACGROUP WHERE " & IIf((MemVar_1F953B0 = "A"), var_C4, var_E4) & "='" & var_154 & "'"), var_1A8, -1
  loc_11721C5: var_1C0 = var_1B0.Item(var_1B0)
  loc_11721CD: var_1C4 = var_1C4.Value
  loc_1172202: If (var_1D4 <= 0) Then
  loc_117221D:   unk_49EA4F.Execute "SELECT MAX(ID) AS MAXID FROM ACGROUP", var_C4, -1
  loc_1172228:   Set var_90 = var_1AC.Fields
  loc_1172247:   If (var_90.RecordCount > 0) Then
  loc_117225B:     var_1AC = var_90.Fields
  loc_1172272:     Proc_183_3_E7DD58(var_E4, CVar(var_1AC.Item("MaxId")), var_1AC)
  loc_117227F:     var_F4 = (var_E4 + 1)
  loc_1172285:     var_88 = CLng(IIf((MemVar_1F953B0 = "A"), CVar(var_1AC.Item("MaxId")), var_E4))
  loc_1172297:   Else
  loc_11722A0:     var_88 = 1
  loc_11722A3:   End If
  loc_11722BC:   var_188 = CStr(var_88)
  loc_11722C0:   var_1F8 = "Insert Into ACGROUP (ID,GroupCode,GroupName,GroupNameBiLang,Site_Code,GroupNature,Nature,MainGrCode,SubLedYN,BlOrd,AliasYN,SysGroup,GroupHelp,TradingYN,U_Name,U_EntDt,U_AE) VALUES (" & var_188
  loc_117231B:   var_22C = var_1F8 & ",'" & arg_C & "','" & arg_10 & "','','" & MemVar_1F95070 & "','" & arg_14 & "','" & arg_18 & "','" & arg_1C & "','N',"
  loc_1172347:   var_244 = Proc_183_20_FB48CC(arg_10, var_22C & CStr(arg_20) & ",'N','" & arg_24 & "','", var_154, -1, var_1AC)
  loc_1172360:   var_F4 = CVar(var_88 & var_244 & "','" & arg_28 & "','Analysis',") 'String
  loc_1172371:   Proc_183_7_EB17D4(var_E4, Now, var_F4)
  loc_1172379:   var_114 = var_88 & var_E4 
  loc_1172390:   unk_49EA4F.Execute CStr(var_114 & ",'A')"), var_1D4, var_8A
  loc_11723DC: End If
  loc_11723E6: unk_49EA4F.CommitTrans
  loc_11723EF: var_8A = 0
  loc_11723F9: Set var_90 = Nothing
  loc_11723FE: Exit Sub
  loc_1172407: If (var_8A = &HFF) Then
  loc_1172412:   unk_49EBDD.RollbackTrans
  loc_1172417: End If
  loc_117242F: Set var_1AC = Err()
  loc_1172435: Call 0.Method_arg_2C (var_188, 0, var_E4)
  loc_1172440: MsgBox(CVar(var_188), var_F4, var_114, var_8A, )
  loc_1172455: Exit Sub
End Sub
