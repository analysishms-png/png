VERSION 5.00
Begin VB.Form frmCompany
  Caption = "User Information"
  BackColor = &HCEE0C2&
  ForeColor = &HC00000&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  DrawWidth = 2
  FillColor = &HC00000&
  Picture = "frmCompany.frx":0
  BorderStyle = 1 'Fixed Single
  Icon = "frmCompany.frx":D9BA
  LinkTopic = "Form4"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = -270
  ClientTop = -1320
  ClientWidth = 15510
  ClientHeight = 8715
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisButton = -1  'True
  WhatsThisHelp = -1  'True
  StartUpPosition = 2 'CenterScreen
  Begin BtnEnh ChkKeyboard
    Left = 10455
    Top = 3945
    Width = 4845
    Height = 420
    TabIndex = 21
  End
  Begin Frame Frame1
    BackColor = &H80000004&
    Left = 6870
    Top = 6570
    Width = 8370
    Height = 1980
    TabIndex = 63
    BorderStyle = 0 'None
    Begin BtnEnh BtnEnh1
      Index = 44
      Left = 4410
      Top = 1485
      Width = 1185
      Height = 495
      TabIndex = 64
    End
    Begin BtnEnh BtnEnh1
      Index = 0
      Left = 0
      Top = 15
      Width = 555
      Height = 495
      TabIndex = 65
    End
    Begin BtnEnh BtnEnh1
      Index = 1
      Left = 555
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 66
    End
    Begin BtnEnh BtnEnh1
      Index = 2
      Left = 1110
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 67
    End
    Begin BtnEnh BtnEnh1
      Index = 3
      Left = 1665
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 68
    End
    Begin BtnEnh BtnEnh1
      Index = 4
      Left = 2220
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 69
    End
    Begin BtnEnh BtnEnh1
      Index = 5
      Left = 2775
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 70
    End
    Begin BtnEnh BtnEnh1
      Index = 6
      Left = 3330
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 71
    End
    Begin BtnEnh BtnEnh1
      Index = 7
      Left = 3885
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 72
    End
    Begin BtnEnh BtnEnh1
      Index = 8
      Left = 4440
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 73
    End
    Begin BtnEnh BtnEnh1
      Index = 9
      Left = 4995
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 74
    End
    Begin BtnEnh BtnEnh1
      Index = 10
      Left = 5550
      Top = 0
      Width = 1155
      Height = 495
      TabIndex = 75
    End
    Begin BtnEnh BtnEnh1
      Index = 14
      Left = 0
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 76
    End
    Begin BtnEnh BtnEnh1
      Index = 15
      Left = 555
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 77
    End
    Begin BtnEnh BtnEnh1
      Index = 16
      Left = 1110
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 78
    End
    Begin BtnEnh BtnEnh1
      Index = 17
      Left = 1665
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 79
    End
    Begin BtnEnh BtnEnh1
      Index = 18
      Left = 2220
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 80
    End
    Begin BtnEnh BtnEnh1
      Index = 19
      Left = 2775
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 81
    End
    Begin BtnEnh BtnEnh1
      Index = 20
      Left = 3330
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 82
    End
    Begin BtnEnh BtnEnh1
      Index = 21
      Left = 3885
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 83
    End
    Begin BtnEnh BtnEnh1
      Index = 22
      Left = 4440
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 84
    End
    Begin BtnEnh BtnEnh1
      Index = 23
      Left = 4995
      Top = 495
      Width = 855
      Height = 495
      TabIndex = 85
    End
    Begin BtnEnh BtnEnh1
      Index = 24
      Left = 5850
      Top = 495
      Width = 855
      Height = 495
      TabIndex = 86
    End
    Begin BtnEnh BtnEnh1
      Index = 49
      Left = 7815
      Top = 1485
      Width = 555
      Height = 495
      TabIndex = 87
    End
    Begin BtnEnh BtnEnh1
      Index = 48
      Left = 7260
      Top = 1485
      Width = 555
      Height = 495
      TabIndex = 88
    End
    Begin BtnEnh BtnEnh1
      Index = 47
      Left = 6705
      Top = 1485
      Width = 555
      Height = 495
      TabIndex = 89
    End
    Begin BtnEnh BtnEnh1
      Index = 38
      Left = 6705
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 90
    End
    Begin BtnEnh BtnEnh1
      Index = 39
      Left = 7260
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 91
    End
    Begin BtnEnh BtnEnh1
      Index = 40
      Left = 7815
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 92
    End
    Begin BtnEnh BtnEnh1
      Index = 25
      Left = 6705
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 93
    End
    Begin BtnEnh BtnEnh1
      Index = 26
      Left = 7260
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 94
    End
    Begin BtnEnh BtnEnh1
      Index = 27
      Left = 7815
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 95
    End
    Begin BtnEnh BtnEnh1
      Index = 11
      Left = 6705
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 96
    End
    Begin BtnEnh BtnEnh1
      Index = 12
      Left = 7260
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 97
    End
    Begin BtnEnh BtnEnh1
      Index = 13
      Left = 7815
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 98
    End
    Begin BtnEnh BtnEnh1
      Index = 28
      Left = 0
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 99
    End
    Begin BtnEnh BtnEnh1
      Index = 29
      Left = 555
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 100
    End
    Begin BtnEnh BtnEnh1
      Index = 30
      Left = 1110
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 101
    End
    Begin BtnEnh BtnEnh1
      Index = 31
      Left = 1665
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 102
    End
    Begin BtnEnh BtnEnh1
      Index = 32
      Left = 2220
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 103
    End
    Begin BtnEnh BtnEnh1
      Index = 33
      Left = 2775
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 104
    End
    Begin BtnEnh BtnEnh1
      Index = 34
      Left = 3330
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 105
    End
    Begin BtnEnh BtnEnh1
      Index = 35
      Left = 3885
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 106
    End
    Begin BtnEnh BtnEnh1
      Index = 36
      Left = 4440
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 107
    End
    Begin BtnEnh BtnEnh1
      Index = 41
      Left = 0
      Top = 1485
      Width = 1365
      Height = 495
      TabIndex = 108
    End
    Begin BtnEnh BtnEnh1
      Index = 45
      Left = 5595
      Top = 1485
      Width = 555
      Height = 495
      TabIndex = 109
    End
    Begin BtnEnh BtnEnh1
      Index = 46
      Left = 6150
      Top = 1485
      Width = 555
      Height = 495
      TabIndex = 110
    End
    Begin BtnEnh BtnEnh1
      Index = 42
      Left = 1350
      Top = 1485
      Width = 1350
      Height = 495
      TabIndex = 111
    End
    Begin BtnEnh BtnEnh1
      Index = 43
      Left = 2685
      Top = 1485
      Width = 1725
      Height = 495
      TabIndex = 112
    End
    Begin BtnEnh BtnEnh1
      Index = 37
      Left = 4995
      Top = 990
      Width = 1710
      Height = 495
      TabIndex = 113
    End
  End
  Begin BtnEnh btnapplyNew
    Left = 11055
    Top = 2475
    Width = 1905
    Height = 645
    TabIndex = 4
  End
  Begin DataGrid DBGrid1
    Left = 8445
    Top = 15
    Width = 6780
    Height = 900
    TabIndex = 0
  End
  Begin Frame CompInfo
    Caption = "Company Information"
    BackColor = &HFFC0FF&
    ForeColor = &HC000&
    Left = -75
    Top = 45
    Width = 6615
    Height = 4470
    TabIndex = 1
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox txt
      Index = 23
      Left = 4905
      Top = 3675
      Width = 480
      Height = 300
      TabIndex = 44
      BorderStyle = 0 'None
      MaxLength = 2
    End
    Begin TextBox txt
      Index = 22
      Left = 1665
      Top = 4005
      Width = 1695
      Height = 300
      TabIndex = 46
      BorderStyle = 0 'None
      MaxLength = 25
    End
    Begin TextBox txt
      Index = 21
      Left = 1665
      Top = 3690
      Width = 1695
      Height = 300
      TabIndex = 36
      BorderStyle = 0 'None
      MaxLength = 25
    End
    Begin TextBox txt
      Index = 11
      Left = 4905
      Top = 2370
      Width = 1605
      Height = 300
      TabIndex = 38
      BorderStyle = 0 'None
      MaxLength = 30
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 3
      BackColor = &HFFFFFF&
      Left = 1665
      Top = 390
      Width = 375
      Height = 300
      TabIndex = 25
      BorderStyle = 0 'None
      MaxLength = 2
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 4
      BackColor = &HFFFFFF&
      Left = 1665
      Top = 720
      Width = 4845
      Height = 300
      TabIndex = 27
      BorderStyle = 0 'None
      MaxLength = 40
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 12
      Left = 1665
      Top = 2700
      Width = 2370
      Height = 300
      TabIndex = 33
      BorderStyle = 0 'None
      MaxLength = 35
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 16
      Left = 1665
      Top = 3030
      Width = 1695
      Height = 300
      TabIndex = 34
      BorderStyle = 0 'None
      MaxLength = 9
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 10
      Left = 1665
      Top = 2370
      Width = 1845
      Height = 300
      TabIndex = 32
      BorderStyle = 0 'None
      MaxLength = 30
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 8
      Left = 1665
      Top = 2040
      Width = 1845
      Height = 300
      TabIndex = 31
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 7
      Left = 1665
      Top = 1710
      Width = 4845
      Height = 300
      TabIndex = 30
      BorderStyle = 0 'None
      MaxLength = 35
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 6
      Left = 1665
      Top = 1380
      Width = 4845
      Height = 300
      TabIndex = 29
      BorderStyle = 0 'None
      MaxLength = 35
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 5
      Left = 1665
      Top = 1050
      Width = 1845
      Height = 300
      TabIndex = 28
      BorderStyle = 0 'None
      MaxLength = 15
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 18
      Left = 1665
      Top = 3360
      Width = 1695
      Height = 300
      TabIndex = 35
      BorderStyle = 0 'None
      MaxLength = 15
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 19
      Left = 4905
      Top = 3360
      Width = 1605
      Height = 300
      TabIndex = 42
      BorderStyle = 0 'None
      MaxLength = 15
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 13
      Left = 4905
      Top = 2700
      Width = 1605
      Height = 300
      TabIndex = 39
      BorderStyle = 0 'None
      MaxLength = 15
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 9
      Left = 4905
      Top = 2040
      Width = 1605
      Height = 300
      TabIndex = 37
      BorderStyle = 0 'None
      MaxLength = 6
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 17
      Left = 4905
      Top = 3030
      Width = 1605
      Height = 315
      TabIndex = 40
      BorderStyle = 0 'None
      MaxLength = 9
      Appearance = 0 'Flat
    End
    Begin Label Label20
      Caption = "Site Name"
      ForeColor = &H80&
      Left = 600
      Top = 4050
      Width = 870
      Height = 225
      TabIndex = 60
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
    Begin Label Label2
      Caption = "Short Name"
      ForeColor = &H80&
      Left = 480
      Top = 1110
      Width = 1005
      Height = 225
      TabIndex = 59
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
    Begin Label Label11
      Caption = "Address"
      ForeColor = &H80&
      Left = 795
      Top = 1440
      Width = 720
      Height = 225
      TabIndex = 58
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
    Begin Label Label10
      Caption = "LST No."
      ForeColor = &H80&
      Left = 765
      Top = 2760
      Width = 645
      Height = 225
      TabIndex = 57
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
    Begin Label Label9
      Caption = "Date"
      ForeColor = &H80&
      Left = 4365
      Top = 2760
      Width = 390
      Height = 225
      TabIndex = 56
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
    Begin Label Label5
      Caption = "Phone"
      ForeColor = &H80&
      Left = 930
      Top = 2430
      Width = 540
      Height = 225
      TabIndex = 55
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
    Begin Label Label4
      Caption = "Current Year"
      ForeColor = &H80&
      Left = 405
      Top = 3090
      Width = 1080
      Height = 225
      TabIndex = 54
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
    Begin Label Label3
      Caption = "Previous Year"
      Index = 0
      ForeColor = &H80&
      Left = 3585
      Top = 3090
      Width = 1185
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
      Caption = "Company Name"
      ForeColor = &H80&
      Left = 165
      Top = 780
      Width = 1335
      Height = 225
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
    Begin Label Label12
      Caption = "City"
      ForeColor = &H80&
      Left = 1155
      Top = 2100
      Width = 315
      Height = 225
      TabIndex = 51
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
    Begin Label Label13
      Caption = "Pin"
      ForeColor = &H80&
      Left = 4500
      Top = 2100
      Width = 270
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
    Begin Label Label15
      Caption = "Year Start Date"
      ForeColor = &H80&
      Left = 195
      Top = 3420
      Width = 1290
      Height = 225
      TabIndex = 49
      Alignment = 1 'Right Justify
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
    Begin Label Label16
      Caption = "Year End Date"
      ForeColor = &H80&
      Left = 3525
      Top = 3420
      Width = 1185
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
    Begin Label Label18
      Caption = "Company Code"
      ForeColor = &H80&
      Left = 210
      Top = 450
      Width = 1275
      Height = 225
      TabIndex = 47
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
    Begin Label Label19
      Caption = "Fax"
      ForeColor = &H80&
      Left = 4470
      Top = 2430
      Width = 300
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
    Begin Label Label17
      Caption = "Key Number"
      ForeColor = &H80&
      Left = 450
      Top = 3750
      Width = 1035
      Height = 225
      TabIndex = 43
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
    Begin Label Label21
      Caption = "Site Code"
      ForeColor = &H80&
      Left = 3945
      Top = 3735
      Width = 810
      Height = 225
      TabIndex = 41
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
  Begin TextBox txt
    Index = 2
    ForeColor = &H800000&
    Left = 16305
    Top = 7095
    Width = 1830
    Height = 270
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox txt
    Index = 0
    ForeColor = &HC00000&
    Left = 12105
    Top = 930
    Width = 2820
    Height = 270
    TabIndex = 2
    BorderStyle = 0 'None
  End
  Begin TextBox txt
    Index = 1
    ForeColor = &HC00000&
    Left = 12105
    Top = 1215
    Width = 2820
    Height = 270
    TabIndex = 3
    BorderStyle = 0 'None
    PasswordChar = "*"
    MaxLength = 8
  End
  Begin CommandButton btnapply
    Caption = "&Accept"
    BackColor = &HC0FFFF&
    Left = 16155
    Top = 5910
    Width = 2025
    Height = 585
    Visible = 0   'False
    TabIndex = 7
    BeginProperty Font
      Name = "Arial Black"
      Size = 9.75
      Charset = 0
      Weight = 900
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Accept User"
    Style = 1
  End
  Begin CommandButton btnexit
    Caption = "E&xit"
    BackColor = &HC0FFFF&
    Left = 16080
    Top = 6525
    Width = 2055
    Height = 585
    Visible = 0   'False
    TabIndex = 20
    Cancel = -1  'True
    BeginProperty Font
      Name = "Arial Black"
      Size = 9.75
      Charset = 0
      Weight = 900
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "frmCompany.frx":DDFC
    ToolTipText = "Exit"
    MaskColor = &HBFACF2&
    Style = 1
  End
  Begin CommandButton btnStruUpd
    Caption = "St&ructure Update"
    BackColor = &HC0FFFF&
    Left = 16215
    Top = 5325
    Width = 1815
    Height = 585
    Visible = 0   'False
    TabIndex = 19
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Accept User"
    Style = 1
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 15450
    Top = 285
    Width = 2385
    Height = 1830
    Visible = 0   'False
    TabIndex = 16
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
      Left = 0
      Top = -255
      Width = 2325
      Height = 1830
      TabStop = 0   'False
      TabIndex = 17
    End
  End
  Begin Frame Panelgrid
    BackColor = &HC0FFFF&
    ForeColor = &H800000&
    Left = 17190
    Top = 8115
    Width = 945
    Height = 585
    Visible = 0   'False
    TabIndex = 13
    BeginProperty Font
      Name = "Times New Roman"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
  End
  Begin TextBox txt
    Index = 15
    Left = 14580
    Top = 7635
    Width = 1605
    Height = 300
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin TextBox txt
    Index = 14
    Left = 13920
    Top = 8010
    Width = 2370
    Height = 300
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin TextBox txt
    Index = 20
    Left = 13920
    Top = 8340
    Width = 2370
    Height = 300
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin BtnEnh btnexitNew
    Left = 12960
    Top = 2475
    Width = 1905
    Height = 645
    TabIndex = 5
  End
  Begin BtnEnh btnStruUpdNew
    Left = 12000
    Top = 3105
    Width = 1890
    Height = 780
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox TxtKeyBoard
    Left = 9210
    Top = 7635
    Width = 3720
    Height = 615
    Visible = 0   'False
    TabIndex = 114
    MultiLine = -1  'True
    ScrollBars = 2
    BeginProperty Font
      Name = "Tahoma"
      Size = 14.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label24
    Caption = "A"
    ForeColor = &HC00000&
    Left = 120
    Top = 7830
    Width = 1005
    Height = 795
    TabIndex = 62
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 36
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label23
    Caption = "nalysis Software Solutions"
    ForeColor = &HC00000&
    Left = 585
    Top = 8010
    Width = 5745
    Height = 570
    TabIndex = 61
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 26.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label14
    Caption = "Today's Date"
    ForeColor = &H800000&
    Left = 14700
    Top = 7125
    Width = 1380
    Height = 270
    Visible = 0   'False
    TabIndex = 26
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label
    Caption = "Password"
    Index = 1
    ForeColor = &H800000&
    Left = 10530
    Top = 1260
    Width = 1035
    Height = 270
    TabIndex = 24
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label
    Caption = "User Name"
    Index = 0
    ForeColor = &H800000&
    Left = 10530
    Top = 960
    Width = 1170
    Height = 270
    TabIndex = 23
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Shape Shape2
    BorderColor = &HC000&
    Left = 16425
    Top = 7920
    Width = 675
    Height = 810
    Visible = 0   'False
    BorderWidth = 15
    FillColor = &HC0FFC0&
  End
  Begin Label Label22
    Caption = "For more information about Company, Press Right Mouse Button"
    ForeColor = &HFF&
    Left = 10680
    Top = 2235
    Width = 4515
    Height = 195
    TabIndex = 18
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Shape Shape1
    BorderColor = &H800000&
    Left = 17055
    Top = 7440
    Width = 1005
    Height = 630
    Visible = 0   'False
    BorderStyle = 0 'Transparent
    FillColor = &HC0FFC0&
    FillStyle = 0
  End
  Begin Label Label8
    Caption = "FGL No."
    Index = 1
    ForeColor = &H80&
    Left = 13020
    Top = 8400
    Width = 720
    Height = 195
    Visible = 0   'False
    TabIndex = 15
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label6
    Caption = "Company Information"
    BackColor = &HC0E0FF&
    ForeColor = &H40&
    Left = 3480
    Top = 8370
    Width = 9555
    Height = 420
    Visible = 0   'False
    TabIndex = 14
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 15.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label7
    Caption = "Date"
    ForeColor = &H80&
    Left = 14040
    Top = 7710
    Width = 420
    Height = 195
    Visible = 0   'False
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label8
    Caption = "CST No."
    Index = 0
    ForeColor = &H80&
    Left = 13005
    Top = 8070
    Width = 735
    Height = 195
    Visible = 0   'False
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Menu POPUP
    Visible = 0   'False
    Caption = ""
    Begin Menu add
      Caption = "&Add"
    End
    Begin Menu edit
      Caption = "&Edit"
    End
    Begin Menu del
      Caption = "&Delete"
    End
    Begin Menu DASH1
      Caption = "-"
    End
    Begin Menu MNUSAVE
      Caption = "&Save"
    End
    Begin Menu MNUCANCEL
      Caption = "&Cancel"
    End
    Begin Menu exit
      Caption = "E&xit"
    End
  End
End

Attribute VB_Name = "frmCompany"

Private global_106 As Byte
Private global_112 As Integer
Private global_52 As Byte

Private Sub Panelgrid_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E609C4
  'Data Table: 56813C
  loc_E6099F: If ((Button = 2) And (CBool(Me.DBGrid1.Visible) = &HFF)) Then
  loc_E609BA:   Call 0.Method_arg_2BC (Me.POPUP, var_A8, var_B8)
  loc_E609C2: End If
  loc_E609C2: Exit Sub
End Sub

Private Sub edit_Click() 'DFF284
  'Data Table: 56813C
  loc_DFF27C: Call Proc_4_30_13906FC()
  loc_DFF281: Exit Sub
End Sub

Private Sub Exit_Click() 'DFF2BC
  'Data Table: 56813C
  loc_DFF2B4: Call btnexitNew_UnknownEvent_9()
  loc_DFF2B9: Exit Sub
End Sub

Private Sub MNUSAVE_Click() 'DFF47C
  'Data Table: 56813C
  loc_DFF474: Call Proc_4_32_15BE780()
  loc_DFF479: Exit Sub
  loc_DFF47A: Set var_3B88 = 
End Sub

Private Sub MNUCANCEL_Click() 'DFF3D4
  'Data Table: 56813C
  loc_DFF3CC: Call Proc_4_34_EAE7B0()
  loc_DFF3D1: Exit Sub
  loc_DFF3D2: Set var_3B88 = 
End Sub

Private Sub Del_Click() 'DFF1DC
  'Data Table: 56813C
  loc_DFF1D4: Call Proc_4_31_1003FB4()
  loc_DFF1D9: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F5F868
  'Data Table: 56813C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_90 As TextBox
  loc_F5F74A: Set var_88 = Me.txt
  loc_F5F750: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F5F75E: Proc_6_74_E23240(var_8C)
  loc_F5F779: Set var_88 = Me.txt
  loc_F5F77F: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_F5F787: var_8C.SelStart = 0
  loc_F5F7A0: Set var_88 = Me.txt
  loc_F5F7A6: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_F5F7C1: Set var_90 = Me.txt
  loc_F5F7C7: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_F5F7CF: var_98.SelLength = Len(var_8C.Text)
  loc_F5F7EA: global_106 = CByte(Index)
  loc_F5F7FB: Set var_88 = Me.txt
  loc_F5F801: Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_9C)
  loc_F5F809: global_106 = var_8C.MaxLength
  loc_F5F81B: Me.TxtKeyBoard.MaxLength = var_9C
  loc_F5F836: Set var_88 = Me.txt
  loc_F5F83C: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_F5F856: Me.TxtKeyBoard.Text = var_8C.Text
  loc_F5F867: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49B84
  'Data Table: 56813C
  loc_E49B62: Set var_88 = Me.txt
  loc_E49B68: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49B76: Proc_6_73_E23294(var_8C)
  loc_E49B82: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FF2168
  'Data Table: 56813C
  Dim var_86 As Integer
  Dim var_9C As TextBox
  loc_FF1F7F: var_86 = Cancel
  loc_FF1F8A: If (var_86 = CInt(&H13)) Then
  loc_FF1F98:   Set var_8C = Me.txt
  loc_FF1F9E:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_90)
  loc_FF1FBF:   Set var_98 = Me.txt
  loc_FF1FC5:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_9C)
  loc_FF1FCD:   var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_FF1FE3: Else
  loc_FF1FEB:   If (var_86 = CInt(&H12)) Then
  loc_FF1FF9:     Set var_8C = Me.txt
  loc_FF1FFF:     Call 0.Method_Txt_Validate0 (CInt(&H12), var_90)
  loc_FF2020:     Set var_98 = Me.txt
  loc_FF2026:     Call 0.Method_Txt_Validate0 (CInt(&H12), var_9C)
  loc_FF202E:     var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_FF2044:   Else
  loc_FF204C:     If (var_86 = CInt(2)) Then
  loc_FF205A:       Set var_8C = Me.txt
  loc_FF2060:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_FF2081:       Set var_98 = Me.txt
  loc_FF2087:       Call 0.Method_Txt_Validate0 (CInt(2), var_9C)
  loc_FF208F:       var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_FF20A5:     Else
  loc_FF20AD:       If (var_86 = CInt(&HD)) Then
  loc_FF20BB:         Set var_8C = Me.txt
  loc_FF20C1:         Call 0.Method_Txt_Validate0 (CInt(&HD), var_90)
  loc_FF20E2:         Set var_98 = Me.txt
  loc_FF20E8:         Call 0.Method_Txt_Validate0 (CInt(&HD), var_9C)
  loc_FF20F0:         var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_FF2106:       Else
  loc_FF210E:         If (var_86 = CInt(&HF)) Then
  loc_FF211C:           Set var_8C = Me.txt
  loc_FF2122:           Call 0.Method_Txt_Validate0 (CInt(&HF), var_90)
  loc_FF2143:           Set var_98 = Me.txt
  loc_FF2149:           Call 0.Method_Txt_Validate0 (CInt(&HF), var_9C)
  loc_FF2151:           var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_FF2164:         End If
  loc_FF2164:       End If
  loc_FF2164:     End If
  loc_FF2164:   End If
  loc_FF2164: End If
  loc_FF2164: Exit Sub
End Sub

Private Sub btnapplyNew_UnknownEvent_9 '194BDEC
  'Data Table: 56813C
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_E8 As Variant
  Dim unk_568163 As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim var_D8 As Variant
  Dim var_118 As Variant
  Dim var_C8 As String
  Dim var_8C As Recordset15
  Dim var_128 As Variant
  Dim MemVar_1F950C8 As String
  Dim MemVar_1F950EC As Double
  Dim MemVar_1F950B8 As Integer
  Dim var_144 As String
  Dim var_F8 As Variant
  Dim Me As Recordset15
  Dim var_184 As String
  Dim var_13C As String
  Dim var_1E4 As Variant
  Dim MemVar_1F95040 As Integer
  Dim MemVar_1F95030(CLng(var_8E)) As Connection15
  Dim var_164 As Variant
  Dim var_194 As Variant
  Dim MemVar_1F95078 As String
  Dim MemVar_1F953D4 As String
  Dim MemVar_1F95108 As String
  Dim MemVar_1F9510C As String
  Dim unk_56828D As Connection15
  Dim unk_56828E As Connection15
  Dim unk_568299 As Recordset15
  Dim MemVar_1F951D4 As String
  Dim MemVar_1F95130 As String
  Dim MemVar_1F95020 As String
  Dim var_206 As Integer
  Dim MemVar_1F9513C As String
  Dim var_252 As Integer
  Dim var_250 As Variant
  Dim MemVar_1F95140 As String
  Dim MemVar_1F95144 As String
  Dim var_204 As Variant
  Dim var_240 As Variant
  Dim MemVar_1F95150 As String
  Dim MemVar_1F95158 As String
  Dim MemVar_1F95160 As String
  Dim MemVar_1F95168 As String
  Dim MemVar_1F9517C As String
  Dim MemVar_1F95184 As String
  Dim MemVar_1F9518C As String
  Dim MemVar_1F95194 As String
  Dim MemVar_1F950F4 As Double
  Dim MemVar_1F9512C As String
  Dim MemVar_1F950FC As Double
  Dim var_258 As Recordset15
  Dim MemVar_1F951B4 As String
  Dim MemVar_1F951B8 As String
  Dim var_9C As Recordset15
  Dim MemVar_1F9521C As String
  Dim var_A4 As Recordset15
  Dim var_A0 As Recordset15
  loc_1949148: Me.FrmList.Visible = False
  loc_1949150: On Error Goto loc_194BDA3
  loc_194915D: var_BC = Me.DBGrid1.Visible
  loc_194916F: If (CBool(var_BC) = 0) Then
  loc_194917D:   Set var_88 = Me.txt
  loc_1949183:   Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(0))
  loc_19491AC:   If (Proc_6_27_EA61EC(var_C0, "User Name") = 0) Then
  loc_19491AF:     Exit Sub
  loc_19491B0:   End If
  loc_19491B6:   var_E8 = 0
  loc_19491D5:   unk_568163.Execute "select COUNT(*) from userMast", var_BC, -1
  loc_19491DD:   var_88 = var_88.Fields
  loc_19491E5:   var_E8 = var_C0.Item(var_C0)
  loc_19491ED:   var_C4 = var_C4.Value
  loc_194920D:   If (var_F8 <= 0) Then
  loc_1949226:     unk_568163.Execute "insert into userMAST (USER_NAME,PASSWD,LABEL) values('SA','\','1')", var_BC, -1
  loc_1949247:     unk_568163.Execute "insert into user1(USER_NAME,FORM_CODE,PARAM_STR) select 'SA',code,'AEDP' from module", var_BC, -1
  loc_1949252:   End If
  loc_194926F:   Set var_88 = Me.txt
  loc_1949275:   Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(0), var_C0, "SELECT * FROM USERMAST WHERE USER_NAME=", var_128, -1)
  loc_1949284:   Proc_6_17_EAAE40(var_F8, CVar(var_C0), var_C4, var_88)
  loc_194928C:   var_118 = var_88 & var_F8 
  loc_1949290:   var_C8 = CStr(var_118)
  loc_194929A:   unk_568163.Execute var_C8, var_F8, var_C0
  loc_19492D1:   If (var_C4.RecordCount <= 0) Then
  loc_19492F5:     MsgBox("     Invalid User     ", &H20, "Login", var_118, var_128)
  loc_1949313:     Set var_88 = Me.txt
  loc_1949319:     Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(0), var_C0)
  loc_1949321:     var_C0.Text = vbNullString
  loc_1949338:     Set var_88 = Me.txt
  loc_194933E:     Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(0))
  loc_1949346:     var_C0.SetFocus
  loc_1949357:     Set var_8C = Nothing
  loc_194935A:     Exit Sub
  loc_194935B:   End If
  loc_1949366:   Set var_88 = Me.txt
  loc_194936C:   Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(1), var_C0)
  loc_19493A8:   var_118 = var_8C.Fields.Item("PASSWD").Value
  loc_19493B5:   Call Proc_4_28_EE7B5C(CStr(var_118), var_144)
  loc_19493BD:   var_128 = CVar(var_144) 'String
  loc_19493E6:   If (Ucase(CVar(var_C0)) = Ucase(var_128)) Then
  loc_1949403:     var_C0 = var_8C.Fields.Item("ActiveYN")
  loc_1949425:     If (var_C0.Value = "N") Then
  loc_1949433:       var_F8 = "Login"
  loc_1949449:       MsgBox("This User Is Not Currently Active", &H10, var_F8, var_118, var_128)
  loc_1949467:       Set var_88 = Me.txt
  loc_194946D:       Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(0), var_C0)
  loc_1949475:       var_C0.Text = vbNullString
  loc_194948C:       Set var_88 = Me.txt
  loc_1949492:       Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(0), var_C0)
  loc_194949A:       var_C0.SetFocus
  loc_19494AB:       Set var_8C = Nothing
  loc_19494AE:       Exit Sub
  loc_19494AF:     End If
  loc_19494C9:     var_C0 = var_8C.Fields.Item("USER_NAME")
  loc_19494DA:     MemVar_1F950C8 = CStr(var_C0.Value)
  loc_19494F6:     Set var_88 = Me.txt
  loc_19494FC:     Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(2), var_C0, var_C8)
  loc_1949504:     MemVar_1F950C8 = var_C0.Text
  loc_194950E:     MemVar_1F950EC = CDate(var_C8)
  loc_1949546:     MemVar_1F950B8 = CInt(var_8C.Fields.Item("Label").Value)
  loc_194956D:     var_C0 = var_8C.Fields.Item("ShortName")
  loc_1949575:     var_BC = var_C0.Value
  loc_1949592:     var_E8 = 0
  loc_19495BF:     unk_568163.Execute "Select isnull(AllowDtChng,'') from UserMast where User_Name='" & MemVar_1F950C8 & "'", var_BC, -1
  loc_19495C7:     var_88 = var_88.Fields
  loc_19495CF:     var_E8 = var_C0.Item(var_C0)
  loc_19495D7:     var_C4 = var_C4.Value
  loc_1949618:     Proc_6_17_EAAE40(var_BC, MemVar_1F950C8, "SELECT User1.* FROM User1 LEFT JOIN User_Module ON User_Module.SrNo=User1.SrNo WHERE User1.User_Name=", var_118, -1, var_88)
  loc_1949620:     var_F8 = CStr(var_F8) & var_BC 
  loc_194962E:     unk_568163.Execute CStr(var_F8), var_F8, CStr(var_BC)
  loc_1949639:     MemVar_1F95068 = var_88
  loc_194965A:     Me.DBGrid1.Visible = True
  loc_194966E:     Me.Frame1.Visible = False
  loc_194967F:     Set var_88 = Me.ChkKeyboard
  loc_1949685:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_19496A0:     Me.DBGrid1.Left = CVar(CDbl(8475))
  loc_19496BB:     Me.DBGrid1.Top = CVar(CDbl(930))
  loc_19496CD:     Set var_88 = Me.DBGrid1
  loc_19496EA:     Me.Label22.Visible = True
  loc_19496F8:     Call 0.Method_arg_54 ("Company Details", DBGrid1.DispID_18001, 0)
  loc_194970A:     Me.btnapply.Caption = "&Select"
  loc_1949719:     Set var_88 = Me.btnapply
  loc_194971F:     var_88.ToolTipText = "Select Company"
  loc_1949731:     Set global_60 = New 
  loc_1949743:     Me.Recordset15.CursorType = 3
  loc_1949753:     Me.LockType = 3
  loc_1949763:     var_BC = Ucase(MemVar_1F950C8)
  loc_194976B:     var_108 = MemVar_1F950C8
  loc_1949773:     Proc_6_17_EAAE40(var_118, var_108, MemVar_1F950B8)
  loc_194978B:     var_128 = "where comp_code in (select Distinct compcode from MenuHelp where username=" & var_118 
  loc_19497E0:     unk_568163.Execute CStr("Select * from company " & IIf((var_BC <> "SA"), var_128 & ")", vbNullString) & " order by STart_dt Desc"), var_204, -1
  loc_194981F:     CVarUnk
  loc_1949824:     VerifyVarObj
  loc_194982A:     Set var_88 = Me.DBGrid1
  loc_1949830:     LateIdStAd
  loc_1949855:     If (Me.RecordCount > 0) Then
  loc_1949876:       Proc_6_7_F26918(var_BC, MemVar_1F950EC, "End_dt>", 0, 1, var_108)
  loc_1949882:       var_C8 = CStr(var_88 & var_BC)
  loc_194988C:       Me.Find var_C8, var_88, var_88
  loc_194989B:     End If
  loc_19498B2:     If (Me.RecordCount <= 0) Then
  loc_19498BB:       If (MemVar_1F950B8 = 1) Then
  loc_19498BE:         Call add_Click()
  loc_19498C6:       Else
  loc_19498CC:         Call 0.Method_arg_50 (var_C8, MemVar_1F950EC)
  loc_19498ED:         MsgBox("* No Company Available,Contact to Your Supervisor *", &H40, CVar(var_C8), var_118, var_128)
  loc_19498FD:         End
  loc_19498FF:       End If
  loc_194990B:       Me.btnapply.Enabled = False
  loc_1949916:     Else
  loc_194991B:       Call Proc_4_27_E9A2C0(&HFF)
  loc_1949932:       MemVar_1F95040 = CInt(Me.RecordCount)
  loc_194993B:       Me.MoveFirst
  loc_194994C:       ReDim MemVar_1F95030(1 To CLng(MemVar_1F95040))
  loc_1949962:       ReDim MemVar_1F95034(1 To CLng(MemVar_1F95040))
  loc_1949978:       ReDim MemVar_1F95038(1 To CLng(MemVar_1F95040))
  loc_194998E:       ReDim MemVar_1F9503C(1 To CLng(MemVar_1F95040))
  loc_194999C:       var_8E = CByte(0) 'Byte
  loc_19499A0:       ' Referenced from:   1949C47
  loc_19499B2:       If Not(Me.EOF) Then
  loc_19499C0:         var_8E = CByte((CInt(var_8E) + 1)) 'Byte
  loc_19499D3:         MemVar_1F95030(CLng(var_8E)) = New 
  loc_19499E9:         Me.Connection15.CursorLocation = 3
  loc_19499FF:         MemVar_1F95030(CLng(var_8E)).IsolationLevel = &H10
  loc_1949A15:         MemVar_1F95030(CLng(var_8E)).CommandTimeout = 0
  loc_1949A22:         If (MemVar_1F950E0 = "Yes") Then
  loc_1949A76:           var_F8 = CVar("Provider=SQLNCLI.1;Password=" & MemVar_1F950D4 & ";Persist Security Info=True;User ID=" & MemVar_1F950D8 & ";Initial Catalog=") 'String
  loc_1949AAC:           MemVar_1F95030(CLng(var_8E)).Open CStr(var_F8 & Me.Fields.Item("CentralData_Path").Value & ";Data Source=" & CVar(MemVar_1F95098) & vbNullString), vbNullString, vbNullString, -1
  loc_1949AD5:         Else
  loc_1949B1E:           var_118 = CVar("Provider=SQLOLEDB.1;Persist Security Info=False;User ID=" & MemVar_1F950D8 & ";Initial Catalog=") & Me.Fields.Item("CentralData_Path").Value 
  loc_1949B27:           var_128 = var_118 & ";Data Source=" 
  loc_1949B58:           MemVar_1F95030(CLng(var_8E)).Open CStr(var_128 & CVar(MemVar_1F95098) & ";pwd=" & CVar(MemVar_1F950D4)), vbNullString, vbNullString, -1
  loc_1949B7C:         End If
  loc_1949BB2:         MemVar_1F95034(CLng(var_8E)) = Proc_6_38_E69628(CVar(Me.Fields.Item("Comp_Code")), MemVar_1F95040)
  loc_1949BF2:         MemVar_1F95038(CLng(var_8E)) = Proc_6_38_E69628(CVar(Me.Fields.Item("Comp_Name")))
  loc_1949C16:         var_C0 = Me.Fields.Item("SName")
  loc_1949C32:         MemVar_1F9503C(CLng(var_8E)) = Proc_6_38_E69628(CVar(var_C0))
  loc_1949C42:         Me.MoveNext
  loc_1949C47:         GoTo loc_19499A0
  loc_1949C4A:       End If
  loc_1949C50:       Me.MoveFirst
  loc_1949C55:     End If
  loc_1949C5B:     If (MemVar_1F950B8 = 1) Then
  loc_1949C66:       Set var_88 = Me.btnStruUpdNew
  loc_1949C6C:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_1949C74:     End If
  loc_1949C77:   Else
  loc_1949C98:     MsgBox("     Invalid Password     ", &H20, "Login", var_118, var_128)
  loc_1949CB3:     Set var_88 = Me.txt
  loc_1949CB9:     Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(1), var_C0)
  loc_1949CC1:     var_C0.SetFocus
  loc_1949CD5:     var_C8 = "{Home}+{End}"
  loc_1949CDB:     Proc_303_0_FBACC8(Proc_6_38_E69628(CVar(var_C0)), 0)
  loc_1949CE3:   End If
  loc_1949CE6: Else
  loc_1949CFD:   If (Me.RecordCount <= 0) Then
  loc_1949D00:     Exit Sub
  loc_1949D01:   End If
  loc_1949D2C:   MemVar_1F95078 = Proc_6_38_E69628(CVar(Me.Fields.Item("SiteCode")))
  loc_1949D96:   MemVar_1F953D4 = Proc_6_38_E69628(CVar(Me.Fields.Item("SiteCodeDisplay")), Proc_6_38_E69628(CVar(Me.Fields.Item("SiteName")), MemVar_1F95078))
  loc_1949DDA:   MemVar_1F95108 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("CentralData_Path")), MemVar_1F953D4))))
  loc_1949DF1:   MemVar_1F9510C = MemVar_1F95084 & "\FADATA.mdb"
  loc_1949DF9:   MemVar_1F95044 = New 
  loc_1949E08:   Me.Connection15.CursorLocation = 3
  loc_1949E18:   unk_568163.IsolationLevel = &H10
  loc_1949E28:   unk_568163.CommandTimeout = 0
  loc_1949E35:   If (MemVar_1F950E0 = "Yes") Then
  loc_1949E5F:     var_F8 = CVar("Provider=SQLNCLI.1;Password=" & MemVar_1F950D4 & ";Persist Security Info=True;User ID=" & MemVar_1F950D8 & ";Initial Catalog=") 'String
  loc_1949EB9:     unk_568163.Open CStr(var_F8 & Me.Fields.Item("CentralData_Path").Value & ";Data Source=" & CVar(MemVar_1F95098) & vbNullString), vbNullString, vbNullString, -1
  loc_1949EE2:   Else
  loc_1949EFB:     var_F8 = CVar("Provider=MSDataShape;Data Provider=SQLOLEDB.1;Persist Security Info=False;User ID=" & MemVar_1F950D8 & ";Initial Catalog=") 'String
  loc_1949F51:     var_194 = var_F8 & Me.Fields.Item("CentralData_Path").Value & ";Data Source=" & CVar(MemVar_1F95098) & ";pwd=" & CVar(MemVar_1F950D4) 
  loc_1949F5F:     unk_568163.Open CStr(var_194), vbNullString, vbNullString, -1
  loc_1949F83:   End If
  loc_1949F87:   MemVar_1F951E0 = New 
  loc_1949F96:   Me.Connection15.CursorLocation = 3
  loc_1949FA6:   unk_56828D.IsolationLevel = &H10
  loc_1949FB6:   unk_56828D.CommandTimeout = 0
  loc_1949FC3:   If (MemVar_1F950E0 = "Yes") Then
  loc_1949FED:     var_F8 = CVar("Provider=SQLNCLI.1;Password=" & MemVar_1F950D4 & ";Persist Security Info=True;User ID=" & MemVar_1F950D8 & ";Initial Catalog=") 'String
  loc_194A047:     unk_56828D.Open CStr(var_F8 & Me.Fields.Item("CentralData_Path").Value & ";Data Source=" & CVar(MemVar_1F95098) & vbNullString), vbNullString, vbNullString, -1
  loc_194A070:   Else
  loc_194A0B9:     var_118 = CVar("Provider=SQLOLEDB.1;Persist Security Info=False;User ID=" & MemVar_1F950D8 & ";Initial Catalog=") & Me.Fields.Item("CentralData_Path").Value 
  loc_194A0C2:     var_128 = var_118 & ";Data Source=" 
  loc_194A0ED:     unk_56828D.Open CStr(var_128 & CVar(MemVar_1F95098) & ";pwd=" & CVar(MemVar_1F950D4)), vbNullString, vbNullString, -1
  loc_194A111:   End If
  loc_194A115:   MemVar_1F95050 = New 
  loc_194A124:   Me.Connection15.IsolationLevel = &H10
  loc_194A134:   unk_56828E.CursorLocation = 3
  loc_194A144:   unk_56828E.CommandTimeout = 0
  loc_194A165:   var_C8 = "Provider=MSDataShape;Data Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F950AC & "\DMEPABX.mdb"
  loc_194A16E:   unk_56828E.Open var_C8, vbNullString, vbNullString, -1
  loc_194A179:   MemVar_1F951A8 = vbNullString
  loc_194A180:   MemVar_1F951BC = vbNullString
  loc_194A187:   MemVar_1F951AC = vbNullString
  loc_194A18E:   MemVar_1F951C0 = vbNullString
  loc_194A195:   MemVar_1F951C4 = vbNullString
  loc_194A19C:   MemVar_1F951B0 = vbNullString
  loc_194A1A3:   MemVar_1F951C8 = vbNullString
  loc_194A1AA:   MemVar_1F951D0 = vbNullString
  loc_194A1B1:   MemVar_1F951D0 = vbNullString
  loc_194A20B:   unk_568163.Execute CStr("select * from company where comp_code='" & Me.Fields.Item("Comp_Code").Value & "'"), var_128, -1
  loc_194A216:   MemVar_1F953C0 = var_C4
  loc_194A25C:   MemVar_1F951D4 = Proc_6_38_E69628(CVar(unk_568299.Fields.Item("ActiveEpabx")), var_C4, MemVar_1F9510C)
  loc_194A294:   MemVar_1F95130 = CStr(Me.Fields.Item("Comp_Name").Value)
  loc_194A309:   MemVar_1F95020 = Proc_6_38_E69628(CVar(Me.Fields.Item("HeadOffice")), CStr(Me.Fields.Item("SName").Value), MemVar_1F95130)
  loc_194A4FA:   MemVar_1F9513C = CStr(Trim(IIf(IsNull(CVar(Me.Fields.Item("Address2"))), vbNullString, CVar(Me.Fields.Item("Address2")))))
  loc_194A52A:   var_13C = " - "
  loc_194A55F:   var_194 = (CVar(MemVar_1F9513C) + IIf((Trim(MemVar_1F9513C) = vbNullString), vbNullString, vbNullString))
  loc_194A5A2:   var_206 = IsNull(CVar(Me.Fields.Item("City")))
  loc_194A5D0:   var_252 = IsNull(CVar(Me.Fields.Item("Pin")))
  loc_194A627:   var_164 = (CVar(CStr(vbNullString & CVar(MemVar_1F95098) & ";pwd=" & CVar(MemVar_1F950D4))) + Trim(IIf(var_206, vbNullString, CVar(Me.Fields.Item("City")))))
  loc_194A62B:   var_184 = "-"
  loc_194A630:   var_194 = (IIf((Trim(CStr(vbNullString & CVar(MemVar_1F95098) & ";pwd=" & CVar(MemVar_1F950D4))) = vbNullString), vbNullString, vbNullString) + vbNullString)
  loc_194A682:   var_250 = (IIf(var_206, vbNullString, CVar(Me.Fields.Item("City"))) & CVar(MemVar_1F95098) & ";pwd=" & CVar(MemVar_1F950D4) + Trim(IIf(var_252, vbNullString, CVar(Me.Fields.Item("Pin")))))
  loc_194A6E2:   MemVar_1F95140 = Proc_6_38_E69628(CVar(Me.Fields.Item("Phone")), CStr(var_250), var_252, var_206, CStr(var_250), CStr(var_250), var_206)
  loc_194A717:   MemVar_1F95144 = Proc_6_38_E69628(CVar(Me.Fields.Item("Fax")), MemVar_1F95140, CStr(Trim(IIf(IsNull(CVar(Me.Fields.Item("Address2"))), vbNullString, CVar(Me.Fields.Item("Address2"))))), var_206)
  loc_194A74C:   var_118 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("LstDate")), MemVar_1F95144, CStr(Trim(IIf(IsNull(CVar(Me.Fields.Item("Address1"))), vbNullString, CVar(Me.Fields.Item("Address1"))))))) 'String
  loc_194A7E2:   var_1E4 = IIf((Trim(var_118) <> vbNullString), CVar(" Dt." & Proc_6_38_E69628(CVar(Me.Fields.Item("LstDate")), var_206)), vbNullString)
  loc_194A7EA:   var_240 = (CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("LstNo")), CStr(Me.Fields.Item("Comp_Code").Value))) + var_1E4)
  loc_194A82E:   var_C4 = Me.Fields
  loc_194A847:   var_118 = CVar(Proc_6_38_E69628(CVar(var_C4.Item("CstDate")), CStr(Trim(IIf(var_252, vbNullString, CVar(Me.Fields.Item("Pin"))))))) 'String
  loc_194A8E5:   var_240 = (CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("CstNo")))) + IIf((Trim(var_118) <> vbNullString), CVar(" Dt." & Proc_6_38_E69628(CVar(Me.Fields.Item("CstDate")))), vbNullString))
  loc_194A942:   MemVar_1F95150 = Proc_6_38_E69628(CVar(Me.Fields.Item("TINNo")), CStr(Trim(IIf(var_252, vbNullString, CVar(Me.Fields.Item("Pin"))))))
  loc_194A9AC:   MemVar_1F95158 = Proc_6_38_E69628(CVar(Me.Fields.Item("StateCode")), Proc_6_38_E69628(CVar(Me.Fields.Item("GSTIN")), MemVar_1F95150))
  loc_194AA16:   MemVar_1F95160 = Proc_6_38_E69628(CVar(Me.Fields.Item("PanNo")), Proc_6_38_E69628(CVar(Me.Fields.Item("State")), MemVar_1F95158))
  loc_194AA80:   var_C8 = Proc_6_38_E69628(CVar(Me.Fields.Item("CYear")), Proc_6_38_E69628(CVar(Me.Fields.Item("DivisionCode")), MemVar_1F95160))
  loc_194AA96:   var_128 = Mid(CVar(var_C8), 3, 5)
  loc_194AA9F:   MemVar_1F95168 = CStr(var_128)
  loc_194AAD1:   var_C0 = Me.Fields.Item("CentralData_Path")
  loc_194AAF9:   Set var_88 = Me.txt
  loc_194AAFF:   Call 0.Method_btnapplyNew_UnknownEvent_90 (2, var_C0, CStr(var_C0.Value))
  loc_194AB2D:   MemVar_1F950EC = CDate(Format(CVar(var_C0), "dd/mmm/yyyy"))
  loc_194ABD8:   MemVar_1F9517C = Proc_6_38_E69628(CVar(Me.Fields.Item("Mobile")), Proc_6_38_E69628(CVar(Me.Fields.Item("Pin")), CStr(Me.Fields.Item("CYear").Value), MemVar_1F950EC, 1), 1)
  loc_194AC42:   MemVar_1F95184 = Proc_6_38_E69628(CVar(Me.Fields.Item("City")), Proc_6_38_E69628(CVar(Me.Fields.Item("Email")), MemVar_1F9517C))
  loc_194ACAC:   MemVar_1F9518C = Proc_6_38_E69628(CVar(Me.Fields.Item("TradeName")), Proc_6_38_E69628(CVar(Me.Fields.Item("Legalname")), MemVar_1F95184))
  loc_194ACE1:   MemVar_1F95194 = Proc_6_38_E69628(CVar(Me.Fields.Item("SerialKeyNo")), MemVar_1F9518C)
  loc_194ACFB:   If (Proc_6_101_DFF8DC(MemVar_1F950EC, MemVar_1F95194) = &HFF) Then
  loc_194ACFE:     End
  loc_194AD00:   End If
  loc_194AD48:   MemVar_1F950F4 = CDate(Format(CVar(Me.Fields.Item("Start_Dt")), "dd/MMM/yyyy"))
  loc_194AD9E:   MemVar_1F9512C = CStr(Format(CVar(Me.Fields.Item("Start_Dt")), "yyyy"))
  loc_194ADC0:   var_88 = Me.Fields
  loc_194ADDC:   var_F8 = "dd/MMM/yyyy"
  loc_194ADEC:   var_118 = Format(CVar(var_88.Item("End_Dt")), var_F8)
  loc_194ADF6:   MemVar_1F950FC = CDate(var_118)
  loc_194AE0C:   If (MemVar_1F950FC < MemVar_1F950EC) Then
  loc_194AE12:     MemVar_1F950EC = MemVar_1F950FC
  loc_194AE15:   End If
  loc_194AE1D:   If (MemVar_1F950C8 = "SA") Then
  loc_194AE20:     Proc_156_4_EC79DC(MemVar_1F950EC, MemVar_1F950FC, 1, 1, MemVar_1F9512C, 1)
  loc_194AE25:   End If
  loc_194AE40:   If ((MemVar_1F95070 <> MemVar_1F95078) And Not(((MemVar_1F95070 = "HO") Or (MemVar_1F95078 = "HO")))) Then
  loc_194AE56:     var_BC = "SiteCode Mismatched."
  loc_194AE5C:     MsgBox(var_BC, &H10, var_F8, var_118, var_128)
  loc_194AE6C:     End
  loc_194AE6E:   End If
  loc_194AE92:   unk_568163.Execute "select backcolor from usermast where (user_name='" & MemVar_1F950C8 & "')", var_BC, -1
  loc_194AE9D:   Set var_258 = var_88
  loc_194AED7:   var_E8 = 0
  loc_194AEE9:   If (var_258.Fields.Item("BackColor").Value = var_E8) Then
  loc_194AEF3:     MemVar_1F951B4 = CStr(&HFAC7CB)
  loc_194AEFE:     MemVar_1F951B8 = CStr(&HFAC7CB)
  loc_194AF05:   Else
  loc_194AF30:     MemVar_1F951B4 = CStr(var_258.Fields.Item("BackColor").Value)
  loc_194AF44:     var_D8 = "BackColor"
  loc_194AF69:     MemVar_1F951B8 = CStr(var_258.Fields.Item(var_D8).Value)
  loc_194AF77:   End If
  loc_194AF8E:   MemVar_1F951E4 = CreateObject("CrystalRuntime.Application", 0)
  loc_194AF9B:   var_88 = MemVar_1F956CC
  loc_194AFA5:   Me.Global.Unload var_88
  loc_194AFBB:   Call 0.Method_arg_2B0 (var_D8, var_E8, MemVar_1F951B8, MemVar_1F951B4, MemVar_1F951B8, MemVar_1F951B4, var_88)
  loc_194AFCD:   var_F8 = 2
  loc_194AFDB:   Set var_88 = MemVar_1F95248.sbar
  loc_194AFE1:   var_BC = MDIForm1.sbar.Panels
  loc_194AFF2:   var_F8 = var_BC.ControlDefault
  loc_194AFFA:   var_C4.Text = var_C4
  loc_194B02F:   Proc_6_17_EAAE40(var_BC, MemVar_1F95078, "Select * from enviro WHERE LogSITE_CODE=", var_118, -1, var_88, "Property Site :   " & MemVar_1F95174)
  loc_194B037:   var_F8 = 1 & var_BC 
  loc_194B045:   unk_568163.Execute CStr(var_F8), MemVar_1F950F4, 1
  loc_194B050:   Set var_9C = var_88
  loc_194B068:   var_12C = var_9C.RecordCount
  loc_194B076:   If (var_12C > 0) Then
  loc_194B0A7:     If IsNull(CVar(var_9C.Fields.Item("Ncur"))) Then
  loc_194B0AA:       GoTo loc_194B0F6
  loc_194B0AD:     End If
  loc_194B0ED:     If (MemVar_1F950FC < CDate(var_9C.Fields.Item("Ncur").Value)) Then
  loc_194B0F3:       MemVar_1F950EC = MemVar_1F950FC
  loc_194B0F6:       ' Referenced from:   194B0AA
  loc_194B0F6:     End If
  loc_194B10D:     var_C0 = var_9C.Fields.Item("Bill_Footer")
  loc_194B11E:     MemVar_1F9521C = Proc_6_38_E69628(CVar(var_C0), MemVar_1F950EC, MemVar_1F950EC)
  loc_194B12B:   Else
  loc_194B12E:     var_BC = Now
  loc_194B138:     MemVar_1F950EC = CDate(var_BC)
  loc_194B142:   End If
  loc_194B148:   var_E8 = 0
  loc_194B167:   unk_568163.Execute "select Count(*) from information_schema.columns where table_name = 'MemEnviro' And column_name='CardExpDate'", var_BC, -1
  loc_194B16F:   var_88 = var_88.Fields
  loc_194B177:   var_E8 = var_C0.Item(var_C0)
  loc_194B17F:   var_C4 = var_C4.Value
  loc_194B19F:   If (var_F8 = 0) Then
  loc_194B1A2:     On Error Goto loc_194B2FD
  loc_194B1A9:     var_AA = CByte(0) 'Byte
  loc_194B1B6:     unk_568163.BeginTrans var_12C
  loc_194B1D1:     unk_568163.Execute "Alter Table MemEnviro Add CardExpDate DateTime", var_BC, -1
  loc_194B1F0:     var_C8 = "If Not exists (select * from MemEnviro) Insert Into MemEnviro(Interface,LogSite_Code,Site_Code) Values ('SmartCard_ACR','" & MemVar_1F95078
  loc_194B20E:     unk_568163.Execute var_C8 & "','" & MemVar_1F95070 & "')", var_BC, -1
  loc_194B23A:     unk_568163.Execute "Update MemEnviro Set CardExpDate=(Select Max(kdate) From FaEnviro)", var_BC, -1
  loc_194B25B:     unk_568163.Execute "Alter Table FaEnviro Drop CONSTRAINT [DF_FaEnviro_KDate]", var_BC, -1
  loc_194B27C:     unk_568163.Execute "Alter Table FaEnviro Drop Column kdate", var_BC, -1
  loc_194B29D:     unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'Company' And column_name='Comp_Id') Alter table Company Add Comp_Id varchar(10)", var_BC, -1
  loc_194B2BE:     unk_568163.Execute "Update Company Set Comp_Id=(Select Left(IsNull(Max(SerialKeyNo),''),10) From Company)", var_BC, -1
  loc_194B2DF:     unk_568163.Execute "Update Company Set SerialKeyNo=''", var_BC, -1
  loc_194B2F0:     unk_568163.CommitTrans
  loc_194B2F9:     var_AA = CByte(1) 'Byte
  loc_194B2FD:     ' Referenced from:   194B1A2
  loc_194B306:     If (CInt(var_AA) = 0) Then
  loc_194B30F:       unk_568163.RollbackTrans
  loc_194B314:     End If
  loc_194B314:   End If
  loc_194B325:   Call Proc_4_33_1116770(MemVar_1F95130 & MemVar_1F95184, MemVar_1F95194, var_BC, var_88, var_88, var_88, var_88, var_88)
  loc_194B346:   unk_568163.Execute "Select * from Company", var_BC, -1
  loc_194B351:   Set var_A4 = var_88
  loc_194B369:   var_88 = var_A4.Fields
  loc_194B37E:   var_BC = CVar(var_88.Item("Comp_Name")) 'Address
  loc_194B390:   var_118 = Ucase(Left(var_BC, &H1E))
  loc_194B3AC:   If CBool(var_118 <> "ANALYSIS DEMONSTRATION PACKAGE") Then
  loc_194B3C5:     unk_568163.Execute "select * from MemEnviro", var_BC, -1
  loc_194B3D0:     Set var_A0 = var_88
  loc_194B40A:     var_F8 = (var_A0.Fields.Item("CardExpDate").Value - CDate(MemVar_1F950EC))
  loc_194B40F:     var_A8 = CStr(Left(var_A0.Fields.Item("CardExpDate").Value, &H1E))
  loc_194B44A:     If IsNull(CVar(var_A0.Fields.Item("CardExpDate"))) Then
  loc_194B466:       MsgBox("You are New User, Please Create License", &H40, Left("You are New User, Please Create License", &H1E), var_118, var_128)
  loc_194B476:       End
  loc_194B47B:     Else
  loc_194B48A:       var_88 = var_A4.Fields
  loc_194B4B6:       If (Len(Proc_6_38_E69628(CVar(var_88.Item("Comp_Id")), var_88, var_88, var_88, var_88)) < 4) Then
  loc_194B4D8:         MsgBox(CVar("InComplete License Information." & vbCrLf & "Contact :     Your S/w Vendor"), &H40, Left(CVar("InComplete License Information." & vbCrLf & "Contact :     Your S/w Vendor"), &H1E), var_118, var_128)
  loc_194B4EB:         End
  loc_194B4ED:       End If
  loc_194B4F6:       If (CDbl(var_A8) <= CDbl(&H1E)) Then
  loc_194B523:         var_BC = CVar("Your License Will be Expried with in " & var_A8 & " Days" & vbCrLf & "Please Contact :     Your S/w Vendor") 'String
  loc_194B526:         MsgBox(var_BC, &H40, Left(var_BC, &H1E), var_118, var_128)
  loc_194B53F:       End If
  loc_194B559:       var_C0 = var_A0.Fields.Item("CardExpDate")
  loc_194B561:       var_F8 = var_C0.Value
  loc_194B5A7:       If (var_F8 < var_9C.Fields.Item("Ncur").Value) Then
  loc_194B5C6:         var_BC = CVar("License Have been Expired" & vbCrLf & "Contact :     Your S/w Vendor") 'String
  loc_194B5C9:         MsgBox(var_BC, &H40, var_F8, var_118, var_128)
  loc_194B5DC:         End
  loc_194B5DE:       End If
  loc_194B5DE:     End If
  loc_194B5DE:   End If
  loc_194B5E4:   var_E8 = 0
  loc_194B603:   unk_568163.Execute "Select Count(*) from dbo.sysobjects where id = object_id(N'[dbo].[eInvoiceEnviro]') and OBJECTPROPERTY(id, N'IsTable') = 1", var_BC, -1
  loc_194B60B:   var_88 = var_88.Fields
  loc_194B613:   var_E8 = var_C0.Item(var_C0)
  loc_194B61B:   var_C4 = var_C4.Value
  loc_194B63B:   If (var_F8 = 1) Then
  loc_194B644:     var_E8 = 0
  loc_194B663:     unk_568163.Execute "select sum([rows]) from sys.partitions where object_id=object_id('eInvoiceEnviro') and index_id in (0,1)", var_BC, -1
  loc_194B66B:     var_88 = var_88.Fields
  loc_194B673:     var_E8 = var_C0.Item(var_C0)
  loc_194B67B:     var_C4 = var_C4.Value
  loc_194B69B:     If (var_F8 > 0) Then
  loc_194B6A4:       var_E8 = 0
  loc_194B6C3:       unk_568163.Execute "Select IsNull(ASPId,'') from eInvoiceEnviro", var_BC, -1
  loc_194B6CB:       var_88 = var_88.Fields
  loc_194B6D3:       var_E8 = var_C0.Item(var_C0)
  loc_194B6DB:       var_C4 = var_C4.Value
  loc_194B6FB:       If CBool(var_F8 <> vbNullString) Then
  loc_194B701:         MemVar_1F95190 = "Yes"
  loc_194B705:       End If
  loc_194B705:     End If
  loc_194B705:   End If
  loc_194B705:   Call Proc_4_36_138FDC8(var_F8, var_F8, var_F8, var_88)
  loc_194B720:   unk_568163.Execute "Update PlanMast SET RoomTaxStru=RevMast.TaxStru FROM PlanMast LEFT JOIN RoomCat ON RoomCat.Code = PlanMast.RoomCat LEFT JOIN RevMast ON RevMast.Code = RoomCat.RevCode WHERE IsNull(Planmast.RoomTaxStru,'')=''", var_BC, -1
  loc_194B741:   unk_568163.Execute "UPDATE RoomOcc SET RoomTaxStru=Q.TaxStru FROM RoomOcc INNER JOIN (SELECT DocId+CAST(SNo AS VARCHAR) DocIdS,RoomOcc.RoomRate,RevMast.TaxStru FROM RoomOcc Inner Join RoomCat On RoomCat.Code=RoomOcc.RoomCat Inner Join Revmast On RoomCat.Revcode=Revmast.Code WHERE IsNull(RoomOcc.RoomTaxStru,'')='') Q ON DocId+CAST(SNo AS VARCHAR)=Q.DocIdS", var_BC, -1
  loc_194B762:   unk_568163.Execute "UPDATE GrpBookingDetails SET RoomTaxStru=Q.TaxStru FROM GrpBookingDetails INNER JOIN (SELECT BookingDocId+CAST(SNo AS VARCHAR) DocIdS,RevMast.TaxStru FROM GrpBookingDetails Inner Join RoomCat On RoomCat.Code=GrpBookingDetails.RoomCat Inner Join Revmast On RoomCat.Revcode=Revmast.Code WHERE IsNull(GrpBookingDetails.RoomTaxStru,'')='') Q ON BookingDocId+CAST(SNo AS VARCHAR)=Q.DocIdS", var_BC, -1
  loc_194B783:   unk_568163.Execute "Delete From GuestFolioProfDetail Where Docid=''", var_BC, -1
  loc_194B7A4:   unk_568163.Execute "Update ItemMast Set MRP=IsNull(MRP,0) Where MRP Is Null", var_BC, -1
  loc_194B7C5:   unk_568163.Execute "Update ItemRate Set MRP=IsNull(MRP,0) Where MRP Is Null", var_BC, -1
  loc_194B7E6:   unk_568163.Execute "Update Stock Set MRP=IsNull(MRP,0) Where MRP Is Null", var_BC, -1
  loc_194B807:   unk_568163.Execute "Update StockLog Set MRP=IsNull(MRP,0) Where MRP Is Null", var_BC, -1
  loc_194B828:   unk_568163.Execute "Update SplitStock Set MRP=IsNull(MRP,0) Where MRP Is Null", var_BC, -1
  loc_194B849:   unk_568163.Execute "Update RevMast Set Active=IsNull(Active,'') Where Active Is Null", var_BC, -1
  loc_194B86A:   unk_568163.Execute "Update RevMast Set TaxInc=IsNull(TaxInc,'No') Where TaxInc Is Null", var_BC, -1
  loc_194B88B:   unk_568163.Execute "Update Sale1 Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''", var_BC, -1
  loc_194B8AC:   unk_568163.Execute "Update Sale1Log Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''", var_BC, -1
  loc_194B8CD:   unk_568163.Execute "Update SplitSale1 Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''", var_BC, -1
  loc_194B8EE:   unk_568163.Execute "Update Paycharge Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''", var_BC, -1
  loc_194B90F:   unk_568163.Execute "Update PaychargeLog Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''", var_BC, -1
  loc_194B930:   unk_568163.Execute "Update GuestReward Set Total=Q.Total,DiscAmt=Q.DiscAmt,RestCode=Q.RestCode,SchemeCode='',SaleUpTo=0,RPointOnAmt=0,RewardValue=0,RedeemValue=0 From (Select S1.Total,S1.DiscAmt,S1.RestCode,G.DocId From GuestReward G Inner Join Sale1 S1 On G.DocId=S1.DocId)Q  Where GuestReward.DocId=Q.DocId And IsNull(GuestReward.RestCode,'')=''", var_BC, -1
  loc_194B951:   unk_568163.Execute "Update SmartCardRegistration Set RewardBal=IsNull(RewardBal,0),RewardSale=IsNull(RewardSale,0),RewardPoint=IsNull(RewardPoint,0),RedeemPoint=IsNull(RedeemPoint,0) Where RedeemPoint Is Null", var_BC, -1
  loc_194B970:   var_C8 = "Update Depart Set KOTAtNightAudit=(Select IsNull(Max(KOTAtNightAudit),'') From Enviro Where LogSite_Code='" & MemVar_1F95078
  loc_194B980:   unk_568163.Execute var_C8 & "') Where IsNull(KOTAtNightAudit,'')='' And OutletYN='Y'", var_BC, -1
  loc_194B9A8:   unk_568163.Execute "Update GuestProf Set FOM=1 Where Code In (Select GuestProf From Booking) And FOM Is Null", var_BC, -1
  loc_194B9C9:   unk_568163.Execute "Update GuestProf Set FOM=1 Where Code In (Select GuestProf From GuestFolio) And FOM Is Null", var_BC, -1
  loc_194B9EA:   unk_568163.Execute "Update GuestProf Set FOM=1 Where Code In (Select GuestProf From GuestFolioProfDetail) And FOM Is Null", var_BC, -1
  loc_194BA0B:   unk_568163.Execute "Update GuestProf Set POS=1 Where Code In (Select CustCode From GuestReward) And POS Is Null", var_BC, -1
  loc_194BA2C:   unk_568163.Execute "Update GuestProf Set FOM=ISNULL(FOM,0)", var_BC, -1
  loc_194BA4D:   unk_568163.Execute "Update GuestProf Set POS=ISNULL(POS,0)", var_BC, -1
  loc_194BA6E:   unk_568163.Execute "Update MarketSeg Set Active=ISNULL(Active,'')", var_BC, -1
  loc_194BA8F:   unk_568163.Execute "Update BussSource Set Active=ISNULL(Active,'')", var_BC, -1
  loc_194BAB0:   unk_568163.Execute "Update RoomDiscount Set Adult=ISNULL(Adult,1)", var_BC, -1
  loc_194BAD1:   unk_568163.Execute "Update Item Set CommodityCode=ItemMast.CommodityCode From Item,ItemMast Where Item.Code=ItemMast.Code And Item.CommodityCode IS Null", var_BC, -1
  loc_194BAF0:   var_C8 = "Update Depart Set CoverMandatory=(Select IsNull(Max(CoversMandatory),'') From Enviro Where LogSite_Code='" & MemVar_1F95078
  loc_194BB00:   unk_568163.Execute var_C8 & "') Where CoverMandatory Is Null", var_BC, -1
  loc_194BB26:   var_C8 = "Update Depart Set MobileNoMandatory=(Select IsNull(Max(MobileNoMandatory),'') From Enviro Where LogSite_Code='" & MemVar_1F95078
  loc_194BB2D:   var_144 = var_C8 & "') Where MobileNoMandatory Is Null"
  loc_194BB36:   unk_568163.Execute var_144, var_BC, -1
  loc_194BB5E:   unk_568163.Execute "If exists (select * from information_schema.columns where table_name = 'Purch1' And column_name='PartyBillNo' And data_type='varchar' And character_maximum_length<25) Alter table Purch1 alter column PartyBillNo varchar(25)", var_BC, -1
  loc_194BB7F:   unk_568163.Execute "If exists (select * from information_schema.columns where table_name = 'GIN' And column_name='MemInvNo' And data_type='varchar' And character_maximum_length<25) Alter table GIN alter column MemInvNo varchar(25)", var_BC, -1
  loc_194BBA0:   unk_568163.Execute "If exists (select * from information_schema.columns where table_name = 'ItemCatMast' And column_name='CatType' And data_type='varchar' And character_maximum_length<15) Alter table ItemCatMast alter column CatType varchar(15)", var_BC, -1
  loc_194BBC1:   unk_568163.Execute "Update ItemRate Set Party=ISNULL(Party,'')", var_BC, -1
  loc_194BBE2:   unk_568163.Execute "Update SunTranFacility set Vtype='FACL' Where Vtype='8'", var_BC, -1
  loc_194BC03:   unk_568163.Execute "Update FacilityBill1 Set FacilityBill1.LocationCode=Q.LocationCode From (Select FacilityBill.DocId,FacilityBill.LocationCode From FacilityBill)Q  Where DocId1=Q.Docid And IsNull(FacilityBill1.LocationCode,'')=''", var_BC, -1
  loc_194BC24:   unk_568163.Execute "If exists (select * from information_schema.columns where table_name = 'DBSendSMS' And column_name='TxtMsg' And data_type='varchar' And character_maximum_length<500) Alter table DBSendSMS alter column TxtMsg varchar(500)", var_BC, -1
  loc_194BC45:   unk_568163.Execute "If exists (select * from information_schema.columns where table_name = 'GuestFolio' And column_name='Remarks' And data_type='varchar' And character_maximum_length<100) Alter table GuestFolio alter column Remarks varchar(100)", var_BC, -1
  loc_194BC66:   unk_568163.Execute "If exists (select * from information_schema.columns where table_name = 'GuestFolio' And column_name='Remark' And data_type='varchar' And character_maximum_length<100) Alter table GuestFolio alter column Remark varchar(100)", var_BC, -1
  loc_194BC87:   unk_568163.Execute "If exists (select * from information_schema.columns where table_name = 'GuestProf' And column_name='Comments1' And data_type='varchar' And character_maximum_length<100) Alter table GuestProf alter column Comments1 varchar(100)", var_BC, -1
  loc_194BCA8:   unk_568163.Execute "If exists (select * from information_schema.columns where table_name = 'GuestProf' And column_name='Comments2' And data_type='varchar' And character_maximum_length<100) Alter table GuestProf alter column Comments2 varchar(100)", var_BC, -1
  loc_194BCC9:   unk_568163.Execute "If exists (select * from information_schema.columns where table_name = 'GuestProf' And column_name='Comments3' And data_type='varchar' And character_maximum_length<100) Alter table GuestProf alter column Comments3 varchar(100)", var_BC, -1
  loc_194BCEA:   unk_568163.Execute "If exists (select * from information_schema.columns where table_name = 'Sale1' And column_name='Remark' And data_type='varchar' And character_maximum_length<255) Alter table Sale1 alter column Remark varchar(255)", var_BC, -1
  loc_194BD0B:   unk_568163.Execute "If exists (select * from information_schema.columns where table_name = 'Sale1Log' And column_name='Remark' And data_type='varchar' And character_maximum_length<255) Alter table Sale1Log alter column Remark varchar(255)", var_BC, -1
  loc_194BD2C:   unk_568163.Execute "If exists (select * from information_schema.columns where table_name = 'SplitSale1' And column_name='Remark' And data_type='varchar' And character_maximum_length<255) Alter table SplitSale1 alter column Remark varchar(255)", var_BC, -1
  loc_194BD4D:   unk_568163.Execute "If exists (select * from information_schema.columns where table_name = 'GuestReward' And column_name='DepartName' And data_type='varchar' And character_maximum_length<35) Alter table GuestReward alter column DepartName varchar(35)", var_BC, -1
  loc_194BD6E:   unk_568163.Execute "If exists (select * from information_schema.columns where table_name = 'KOT' And column_name='Reasons' And data_type='varchar' And character_maximum_length<150) Alter table KOT alter column Reasons varchar(150)", var_BC, -1
  loc_194BD8F:   unk_568163.Execute "If exists (select * from information_schema.columns where table_name = 'KOTLog' And column_name='Reasons' And data_type='varchar' And character_maximum_length<150) Alter table KOTLog alter column Reasons varchar(150)", var_BC, -1
  loc_194BD9A: End If
  loc_194BD9F: Set var_8C = Nothing
  loc_194BDA2: Exit Sub
  loc_194BDA3: ' Referenced from: 1949150
  loc_194BDAB: Set var_88 = Err()
  loc_194BDB1: Call 0.Method_arg_2C (var_C8, var_88, var_88, var_88, var_88, var_88, var_88)
  loc_194BDBC: Call 0.Method_arg_50 (var_144, var_88, var_88, var_88)
  loc_194BDD8: MsgBox(CVar(var_C8), &H40, CVar(var_144), var_118, var_128)
  loc_194BDEB: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'E1B828
  'Data Table: 56813C
  loc_E1B81C: Me.FrmList.Visible = False
  loc_E1B824: Exit Sub
End Sub

Private Sub btnexitNew_UnknownEvent_9 'DFD798
  'Data Table: 56813C
  loc_DFD794: End
  loc_DFD796: Exit Sub
End Sub

Private Sub Form_Load() '1489094
  'Data Table: 56813C
  Dim var_94 As Variant
  Dim var_F0 As TextBox
  Dim var_E8 As Long
  Dim MemVar_1F95024 As String
  Dim var_A8 As Variant
  Dim var_11C As String
  Dim var_DA As String
  Dim var_120 As String
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_124 As String
  Dim MemVar_1F9E69C As Global
  Dim MemVar_1F95170 As String
  Dim MemVar_1F95098 As String
  Dim MemVar_1F950B4 As String
  Dim MemVar_1F951D8 As String
  Dim MemVar_1F953B8 As String
  Dim var_108 As Variant
  Dim MemVar_1F9509C As Variant
  Dim MemVar_1F95010 As String
  Dim MemVar_1F95070 As String
  Dim MemVar_1F95174 As String
  Dim MemVar_1F95198 As String
  Dim MemVar_1F95218 As String
  Dim MemVar_1F95230 As String
  Dim MemVar_1F950D8 As String
  Dim MemVar_1F950D4 As String
  Dim MemVar_1F951DC As String
  Dim unk_568163 As Connection15
  Dim var_128 As String
  Dim unk_5681FE As Connection15
  Dim unk_568202 As Recordset15
  Dim var_EC As Recordset15
  Dim MemVar_1F95210 As String
  loc_1488464: On Error Goto loc_1489046
  loc_1488470: Set var_A8 = Me.btnStruUpdNew
  loc_1488476: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1488483: global_112 = &HFF
  loc_1488499: Set var_A8 = Me.txt
  loc_148849F: Call 0.Method_Form_Load0 (CInt(global_106), var_F0)
  loc_14884B9: Me.TxtKeyBoard.MaxLength = var_F0.MaxLength
  loc_14884CC: var_E8 = &H20
  loc_14884E9: MemVar_1F95024 = CStr(String(var_E8, "X"))
  loc_14884FD: var_11C = MemVar_1F95024
  loc_1488501: GetComputerName(var_11C, var_E8)
  loc_1488529: MemVar_1F95024 = CStr(Left(MemVar_1F95024, var_E8))
  loc_1488538: Call 0.Method_Me4 (CDbl(15600), MemVar_1F95024, StrConv(MemVar_1F95024, vbUnicode), var_11C)
  loc_1488545: Call 0.Method_MeC (CDbl(9200), MemVar_1F95024)
  loc_1488552: Call 0.Method_arg_74 (CDbl(500), var_E8)
  loc_148855E: Call 0.Method_arg_7C (CDbl(&H64))
  loc_1488572: Me.DBGrid1.Visible = False
  loc_1488586: Me.Label22.Visible = False
  loc_148859A: Me.CompInfo.Visible = False
  loc_14885BC: Set var_A8 = Me.txt
  loc_14885C2: Call 0.Method_Form_Load0 (CInt(2), var_F0)
  loc_14885CA: var_F0.Text = CStr(Date)
  loc_14885F0: var_DA = CStr(Space(&HF))
  loc_1488623: RegOpenKeyEx(-2147483647, "Control Panel\International", 0, 2, var_E4)
  loc_1488652: var_11C = "sShortDate"
  loc_1488659: RegQueryValueEx(var_E4, var_11C, 0, 2, var_DA, Len(var_DA), Len(var_DA))
  loc_148869D: var_DA = var_11C
  loc_14886B1: If CBool(Left(var_128, &HB) <> "dd/MMM/yyyy") Then
  loc_14886E9:   var_138 = (Len(Trim("dd/MMM/yyyy")) + 1)
  loc_1488719:   var_DA = var_11C
  loc_1488722:   var_124 = CStr(Trim(var_11C))
  loc_1488729:   var_128 = var_124
  loc_1488744:   RegSetValueEx(var_E4, "sShortDate", 0, 1, var_128, CLng(var_138), CLng(var_138))
  loc_148877B:   var_138 = Format("01/Jan/99", "Short Date")
  loc_148879D:   var_158 = "01/01/99"
  loc_14887C8:   If CBool(1 <> CDate(CDate(Format(var_158, "dd/MMM/yyyy")))) Then
  loc_14887D1:     Call 0.Method_arg_50 (var_11C, 1, var_138, 1, 1)
  loc_14887DF:     var_118 = CVar(var_11C) 'String
  loc_14887F2:     MsgBox("Some Setting are Changed, Please ShutDown Your Computer For Better Result", &H40, var_118, var_138, var_158)
  loc_1488802:   End If
  loc_1488802: End If
  loc_1488807: RegCloseKey(-2147483647)
  loc_1488810: RegCloseKey(var_E4)
  loc_148881E: MemVar_1F95090 = "Hindi"
  loc_1488825: MemVar_1F95094 = "Hitarth Hin Jalak"
  loc_148882C: MemVar_1F953B0 = "A"
  loc_1488833: MemVar_1F9506C = "D"
  loc_148883A: MemVar_1F95070 = "HO"
  loc_1488841: MemVar_1F95078 = vbNullString
  loc_1488848: MemVar_1F953D8 = vbNullString
  loc_148884F: MemVar_1F953D4 = "('SS')"
  loc_1488862: var_A8 = Me.Global.App
  loc_148887F: Call 0.Method_Form_Load4 (App.Path & "\Analysis.ini", var_1AA, 0, StrConv(var_128, vbUnicode))
  loc_1488894: If (var_1AA = 0) Then
  loc_14888B0:   MsgBox("S/W ini File Missing.Contact to Software windor", &H10, var_118, var_138, var_158)
  loc_14888C0:   End
  loc_14888C2: End If
  loc_14888DD: var_A8 = MemVar_1F9E69C.App
  loc_14888E5: var_11C = App.Path
  loc_14888FA: Call 0.Method_arg_7C (var_11C & "\Analysis.ini", 1, 0, 0)
  loc_1488905: Set var_B0 = var_F0
  loc_148891C: Call 0.Method_arg_24 (var_1AA, var_F0, var_124)
  loc_1488925: If Not(var_1AA) Then
  loc_148892E:   Call 0.Method_arg_30 (var_11C, var_DA)
  loc_1488936:   MemVar_1F95170 = var_11C
  loc_148893A: End If
  loc_1488940: Call 0.Method_arg_24 (var_1AA, MemVar_1F95170)
  loc_1488949: If Not(var_1AA) Then
  loc_1488954:   Call 0.Method_Form_Load4 (2)
  loc_148895F:   Call 0.Method_arg_30 (var_11C)
  loc_1488967:   MemVar_1F95098 = var_11C
  loc_148896B: End If
  loc_1488971: Call 0.Method_arg_24 (var_1AA, MemVar_1F95098)
  loc_148897A: If Not(var_1AA) Then
  loc_1488985:   Call 0.Method_Form_Load4 (2)
  loc_1488990:   Call 0.Method_arg_30 (var_11C)
  loc_1488998:   MemVar_1F950B4 = var_11C
  loc_148899C: End If
  loc_14889A2: Call 0.Method_arg_24 (var_1AA, MemVar_1F950B4)
  loc_14889AB: If Not(var_1AA) Then
  loc_14889B6:   Call 0.Method_Form_Load4 (2)
  loc_14889C1:   Call 0.Method_arg_30 (var_11C)
  loc_14889C9:   MemVar_1F951D8 = var_11C
  loc_14889CD: End If
  loc_14889D3: Call 0.Method_arg_24 (var_1AA, MemVar_1F951D8)
  loc_14889DC: If Not(var_1AA) Then
  loc_14889E7:   Call 0.Method_Form_Load4 (2)
  loc_14889F2:   Call 0.Method_arg_30 (var_11C)
  loc_14889FA:   MemVar_1F953B8 = var_11C
  loc_1488A01: Else
  loc_1488A04:   MemVar_1F953B8 = "PRN"
  loc_1488A08: End If
  loc_1488A0E: Call 0.Method_arg_24 (var_1AA, MemVar_1F953B8)
  loc_1488A17: If Not(var_1AA) Then
  loc_1488A22:   Call 0.Method_Form_Load4 (2)
  loc_1488A2D:   Call 0.Method_arg_30 (var_11C)
  loc_1488A38:   MemVar_1F9509C = CVar(var_11C)
  loc_1488A3F: Else
  loc_1488A3F:   var_94 = "C:\DATABKUP"
  loc_1488A44:   ImpAdStVarCopy
  loc_1488A48: End If
  loc_1488A4E: Call 0.Method_arg_24 (var_1AA, var_94)
  loc_1488A57: If Not(var_1AA) Then
  loc_1488A62:   Call 0.Method_Form_Load4 (2, MemVar_1F9509C)
  loc_1488A6D:   Call 0.Method_arg_30 (var_11C)
  loc_1488A75:   MemVar_1F95010 = var_11C
  loc_1488A79: End If
  loc_1488A7F: Call 0.Method_arg_24 (var_1AA, MemVar_1F95010)
  loc_1488A88: If Not(var_1AA) Then
  loc_1488A93:   Call 0.Method_Form_Load4 (2)
  loc_1488A9E:   Call 0.Method_arg_30 (var_11C)
  loc_1488AA6:   MemVar_1F95070 = var_11C
  loc_1488AAA: End If
  loc_1488AB0: Call 0.Method_arg_24 (var_1AA, MemVar_1F95070)
  loc_1488AB9: If Not(var_1AA) Then
  loc_1488AC4:   Call 0.Method_Form_Load4 (2)
  loc_1488ACF:   Call 0.Method_arg_30 (var_11C)
  loc_1488AD7:   MemVar_1F95174 = var_11C
  loc_1488ADB: End If
  loc_1488AE1: Call 0.Method_arg_24 (var_1AA, MemVar_1F95174)
  loc_1488AEA: If Not(var_1AA) Then
  loc_1488AF5:   Call 0.Method_Form_Load4 (2)
  loc_1488B00:   Call 0.Method_arg_30 (var_11C)
  loc_1488B08:   MemVar_1F95198 = var_11C
  loc_1488B0C: End If
  loc_1488B12: Call 0.Method_arg_24 (var_1AA, MemVar_1F95198)
  loc_1488B1B: If Not(var_1AA) Then
  loc_1488B26:   Call 0.Method_Form_Load4 (3)
  loc_1488B31:   Call 0.Method_arg_30 (var_11C)
  loc_1488B48:   MemVar_1F95218 = CStr(Ucase(CVar(var_11C)))
  loc_1488B53: End If
  loc_1488B59: Call 0.Method_arg_24 (var_1AA, MemVar_1F95218)
  loc_1488B62: If Not(var_1AA) Then
  loc_1488B6D:   Call 0.Method_Form_Load4 (3)
  loc_1488B78:   Call 0.Method_arg_30 (var_11C)
  loc_1488B86:   var_118 = Ucase(CVar(var_11C))
  loc_1488B8F:   MemVar_1F95230 = CStr(var_118)
  loc_1488B9A: End If
  loc_1488B9D: MemVar_1F953B0 = "S"
  loc_1488BA4: MemVar_1F953B4 = MemVar_1F950B4
  loc_1488BAB: MemVar_1F953BC = "N"
  loc_1488BB2: MemVar_1F95214 = "No"
  loc_1488BB9: MemVar_1F950AC = MemVar_1F951D8
  loc_1488BC0: MemVar_1F95084 = MemVar_1F951D8
  loc_1488BCB: MemVar_1F951D8 = MemVar_1F951D8 & "\Temp.mdb"
  loc_1488BE0: var_A8 = Me.Global.App
  loc_1488C11: If (Dir(CVar(App.Path & "\sysdm.ocx"), 0) <> vbNullString) Then
  loc_1488C20:   var_A8 = Me.Global.App
  loc_1488C28:   var_11C = App.Path
  loc_1488C3B:   Open var_11C & "\sysdm.ocx" For Input As 1 Len = &HFF
  loc_1488C53:   If (EOF(1) = 0) Then
  loc_1488C5B:     LineInput 1, MemVar_1F950D8
  loc_1488C5D:   End If
  loc_1488C67:   If (EOF(1) = 0) Then
  loc_1488C6F:     LineInput 1, MemVar_1F950D4
  loc_1488C71:   End If
  loc_1488C73:   Close 1
  loc_1488C7D:   If (MemVar_1F950D8 <> vbNullString) Then
  loc_1488C86:     Call Proc_4_28_EE7B5C(MemVar_1F950D8, var_11C, MemVar_1F951D8)
  loc_1488C8E:     MemVar_1F950D8 = var_11C
  loc_1488C92:   End If
  loc_1488C9A:   If (MemVar_1F950D4 <> vbNullString) Then
  loc_1488CA3:     Call Proc_4_28_EE7B5C(MemVar_1F950D4, var_11C, MemVar_1F950D8)
  loc_1488CAB:     MemVar_1F950D4 = var_11C
  loc_1488CAF:   End If
  loc_1488CB2: Else
  loc_1488CB2:   Call Proc_4_26_EB5DF0(MemVar_1F950D4, MemVar_1F95230)
  loc_1488CB7:   Call Proc_4_25_EBD934(global_112)
  loc_1488CBC: End If
  loc_1488CEA: var_124 = Replace(MemVar_1F951D8, ":", vbNullString, 1, -1, 0)
  loc_1488CEE: MemVar_1F951DC = "\\" & MemVar_1F95024 & "\" & var_124
  loc_1488D06: If (MemVar_1F9509C = vbNullString) Then
  loc_1488D26:   var_A8 = Me.Global.App
  loc_1488D3E:   var_108 = CVar("Please fill BackUp path in " & App.Path & "\Analysis.ini") 'String
  loc_1488D41:   MsgBox(var_108, 0, var_118, var_138, var_158)
  loc_1488D5B:   End
  loc_1488D5D: End If
  loc_1488D6D: Call 0.Method_Form_Load8 (CStr(MemVar_1F9509C), var_1AA)
  loc_1488D7B: If (var_1AA = 0) Then
  loc_1488D8E:   Call 0.Method_arg_74 (CStr(MemVar_1F9509C), var_A8)
  loc_1488D99: End If
  loc_1488D9D: MemVar_1F95044 = New 
  loc_1488DAC: unk_568163.IsolationLevel = &H10
  loc_1488DBC: unk_568163.CursorLocation = 3
  loc_1488DCC: unk_568163.CommandTimeout = 0
  loc_1488DD9: If (MemVar_1F950E0 = "Yes") Then
  loc_1488E03:   var_128 = "Provider=SQLNCLI.1;Password=" & MemVar_1F950D4 & ";Persist Security Info=True;User ID=" & MemVar_1F950D8 & ";Initial Catalog="
  loc_1488E28:   unk_568163.Open var_128 & MemVar_1F95010 & ";Data Source=" & MemVar_1F95098 & vbNullString, vbNullString, vbNullString, -1
  loc_1488E43: Else
  loc_1488E5C:   var_120 = "Provider=MSDataShape;Data Provider=SQLOLEDB.1;Persist Security Info=False;User ID=" & MemVar_1F950D8 & ";Initial Catalog="
  loc_1488E88:   unk_568163.Open var_120 & MemVar_1F95010 & ";Data Source=" & MemVar_1F95098 & ";pwd=" & MemVar_1F950D4, vbNullString, vbNullString, -1
  loc_1488E9E: End If
  loc_1488E9E: Call ChkKeyboard_UnknownEvent_9()
  loc_1488EA7: MemVar_1F95054 = New 
  loc_1488EB6: Me.Connection15.IsolationLevel = &H10
  loc_1488EC6: unk_5681FE.CursorLocation = 3
  loc_1488ED6: unk_5681FE.CommandTimeout = 0
  loc_1488EED: var_11C = "Provider=MSDataShape;Data Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F951D8
  loc_1488EF6: unk_5681FE.Open var_11C, vbNullString, vbNullString, -1
  loc_1488F14: unk_568163.Execute "select * from usermast order by user_name", var_108, -1
  loc_1488F1F: MemVar_1F95058 = var_A8
  loc_1488F40: If (unk_568202.RecordCount <= 0) Then
  loc_1488F59:   unk_568163.Execute "insert into usermast(USER_NAME,PASSWD,LABEL,ShortName) values('SA','\','1','SA')", var_108, -1
  loc_1488F7A:   unk_568163.Execute "select * from usermast order by user_name", var_108, -1
  loc_1488F85:   MemVar_1F95058 = var_A8
  loc_1488F8F: End If
  loc_1488FA5: unk_5681FE.Execute "Select * from Enviro", var_108, -1
  loc_1488FB0: Set var_EC = var_A8
  loc_1488FCD: If (var_EC.RecordCount > 0) Then
  loc_1488FDF:   var_A8 = var_EC.Fields
  loc_1488FF8:   MemVar_1F95210 = Proc_6_38_E69628(CVar(var_A8.Item("TouchScreen")), var_A8, var_A8)
  loc_1489002: End If
  loc_1489007: Set var_AC = Nothing
  loc_1489026: Set var_A8 = Me
  loc_148902C: Proc_6_103_F58C00(var_A8, CStr(-2147483643), CStr(&HC00000), MemVar_1F95210)
  loc_1489040: Call Proc_4_38_10796D8(0, var_A8)
  loc_1489045: Exit Sub
  loc_1489046: ' Referenced from: 1488464
  loc_1489054: Call 0.Method_arg_2C (var_11C, Err())
  loc_148905F: Call 0.Method_arg_50 (var_120)
  loc_148907B: MsgBox(CVar(var_11C), &H40, CVar(var_120), var_138, var_158)
  loc_148908E: End
  loc_1489090: Exit Sub
End Sub

Private Sub Form_Resize() 'E20F74
  'Data Table: 56813C
  loc_E20F58: Call 0.Method_arg_100 (var_88)
  loc_E20F6A: Me.Panelgrid.Width = var_88
  loc_E20F72: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E52498
  'Data Table: 56813C
  loc_E5246B: Set global_60 = Nothing
  loc_E5247D: Set global_88 = Nothing
  loc_E52489: MemVar_1F95208 = Nothing
  loc_E52492: MemVar_1F9520C = Nothing
  loc_E52496: Exit Sub
End Sub

Private Sub Form_Activate() 'E42BDC
  'Data Table: 56813C
  Dim var_8C As TextBox
  loc_E42BBE: Set var_88 = Me.txt
  loc_E42BC4: Call 0.Method_Form_Activate0 (CInt(0), var_8C)
  loc_E42BCC: var_8C.Text = MemVar_1F950C8
  loc_E42BD8: Exit Sub
  loc_E42BD9: () = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F6BC64
  'Data Table: 56813C
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim KeyCode As Integer
  loc_F6BB3D: If ((CLng(KeyCode) = &H4C) And (Shift = 4)) Then
  loc_F6BB40:   Call btnapplyNew_UnknownEvent_9()
  loc_F6BB48: Else
  loc_F6BB59:   If ((CLng(KeyCode) = &H55) And (Shift = 4)) Then
  loc_F6BB5C:     Call btnexitNew_UnknownEvent_9()
  loc_F6BB64:   Else
  loc_F6BB75:     If ((CLng(KeyCode) = &H44) And (Shift = 4)) Then
  loc_F6BB78:       Call btnStruUpdNew_UnknownEvent_9()
  loc_F6BB7D:     End If
  loc_F6BB7D:   End If
  loc_F6BB7D: End If
  loc_F6BB80: var_86 = KeyCode
  loc_F6BB8D: If Not (var_86 = CInt(&HD)) Then
  loc_F6BB9A:   If Not (var_86 = CInt(&H28)) Then
  loc_F6BBA7:     If (var_86 = CInt(&H26)) Then
  loc_F6BBAA:     End If
  loc_F6BBAA:   End If
  loc_F6BBB0:   Call 0.Method_arg_1E8 (var_8C)
  loc_F6BBBF:   If TypeOf var_8C Is arg_F Then
  loc_F6BBC8:     Call 0.Method_arg_1E8 (var_8C)
  loc_F6BBE3:     Call Txt_Validate(CInt(var_8C.index))
  loc_F6BBEE:   End If
  loc_F6BC0B:   If (Proc_6_106_10BD9E0(Me, KeyCode, Shift) = &HFF) Then
  loc_F6BC1A:     If (CInt(global_52) <> 0) Then
  loc_F6BC38:       var_9C = "Save Record ?"
  loc_F6BC54:       If (MsgBox(var_9C, 4, "Save Data", var_F0, var_110) = 6) Then
  loc_F6BC57:         Call Proc_4_32_15BE780(0, var_9C)
  loc_F6BC5C:       End If
  loc_F6BC5C:     End If
  loc_F6BC5C:   End If
  loc_F6BC5E:   KeyCode = 0
  loc_F6BC61: End If
  loc_F6BC61: Exit Sub
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'E1BB70
  'Data Table: 56813C
  Dim KeyAscii As Integer
  loc_E1BB64: If (KeyAscii = CInt(&HD)) Then
  loc_E1BB69:   KeyAscii = 0
  loc_E1BB6C: End If
  loc_E1BB6C: Exit Sub
  loc_E1BB6D: KeyAscii = Record Of var_300 'Copy battery of vars to single variable
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'DFD5C4
  'Data Table: 56813C
  loc_DFD5C0: Exit Sub
  loc_DFD5C2: Exit Sub
End Sub

Private Sub BtnEnh1_UnknownEvent_9 '14A1448
  'Data Table: 56813C
  Dim var_8C As TextBox
  Dim var_BC As TextBox
  Dim var_90 As TextBox
  Dim var_B4 As Variant
  Dim var_108 As Variant
  loc_14A079A: Set var_8C = Me.BtnEnh1
  loc_14A07A0: Call 0.Method_BtnEnh1_UnknownEvent_90 (Button)
  loc_14A07A8: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A07C5: If (CStr() = "Finish") Then
  loc_14A07C8:   GoTo loc_14A1362
  loc_14A07CB: End If
  loc_14A07D5: Set var_8C = Me.BtnEnh1
  loc_14A07DB: Call 0.Method_BtnEnh1_UnknownEvent_90 (Button)
  loc_14A07E3: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A0800: If (CStr() = "Enter") Then
  loc_14A080F:   If (CInt(global_106) = 2) Then
  loc_14A0852:     Set var_90 = Me.txt
  loc_14A0858:     Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_BC)
  loc_14A0860:     var_BC.Text = Proc_6_34_14EEAAC(CStr(Trim(CVar(Me.TxtKeyBoard.Text))))
  loc_14A087F:   Else
  loc_14A08B6:     Set var_90 = Me.txt
  loc_14A08BC:     Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_BC)
  loc_14A08C4:     var_BC.Text = CStr(Trim(CVar(Me.TxtKeyBoard.Text)))
  loc_14A08DC:   End If
  loc_14A08ED:   global_106 = CByte((CInt(global_106) + 1))
  loc_14A08FD:   If (CInt(global_106) = 3) Then
  loc_14A0907:     global_106 = CByte(0)
  loc_14A090B:   End If
  loc_14A091E:   Set var_8C = Me.txt
  loc_14A0924:   Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_90, var_C4)
  loc_14A092C:   global_106 = var_90.MaxLength
  loc_14A093E:   Me.TxtKeyBoard.MaxLength = var_C4
  loc_14A095F:   Set var_8C = Me.txt
  loc_14A0965:   Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_90)
  loc_14A0979:   Set var_BC = Me.TxtKeyBoard
  loc_14A097F:   var_BC.Text = var_90.Text
  loc_14A09B0:   Me.TxtKeyBoard.SelStart = Len(Me.TxtKeyBoard.Text)
  loc_14A09E4:   Set var_90 = Me.txt
  loc_14A09EA:   Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_BC)
  loc_14A09F2:   var_BC.SelStart = Me.TxtKeyBoard.SelStart
  loc_14A0A03: Else
  loc_14A0A0D:   Set var_8C = Me.BtnEnh1
  loc_14A0A13:   Call 0.Method_BtnEnh1_UnknownEvent_90 (Button, var_90)
  loc_14A0A1B:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(global_106)
  loc_14A0A38:   If (CStr() = "Cancel") Then
  loc_14A0A3B:     GoTo loc_14A1362
  loc_14A0A3E:   End If
  loc_14A0A48:   Set var_8C = Me.BtnEnh1
  loc_14A0A4E:   Call 0.Method_BtnEnh1_UnknownEvent_90 (Button)
  loc_14A0A56:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A0A73:   If (CStr() = "Clear") Then
  loc_14A0A83:     Me.TxtKeyBoard.Text = vbNullString
  loc_14A0A8E:   Else
  loc_14A0A98:     Set var_8C = Me.BtnEnh1
  loc_14A0A9E:     Call 0.Method_BtnEnh1_UnknownEvent_90 (Button)
  loc_14A0AA6:     Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A0AC3:     If (CStr() = "Back") Then
  loc_14A0AE4:       If (Me.TxtKeyBoard.SelStart > 0) Then
  loc_14A0B06:         Set var_90 = Me.TxtKeyBoard
  loc_14A0B0C:         var_90.SelStart = (Me.TxtKeyBoard.SelStart - 1)
  loc_14A0B27:         Me.TxtKeyBoard.SelLength = 1
  loc_14A0B3C:         Me.TxtKeyBoard.SelText = vbNullString
  loc_14A0B44:       End If
  loc_14A0B47:     Else
  loc_14A0B51:       Set var_8C = Me.BtnEnh1
  loc_14A0B57:       Call 0.Method_BtnEnh1_UnknownEvent_90 (Button)
  loc_14A0B5F:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A0B7C:       If (CStr() = "Delete") Then
  loc_14A0B9B:         Set var_90 = Me.TxtKeyBoard
  loc_14A0BB5:         If (Me.TxtKeyBoard.SelStart < Len(var_90.Text)) Then
  loc_14A0BC7:           Me.TxtKeyBoard.SelLength = 1
  loc_14A0BDC:           Me.TxtKeyBoard.SelText = vbNullString
  loc_14A0BE4:         End If
  loc_14A0BE7:       Else
  loc_14A0BF1:         Set var_8C = Me.BtnEnh1
  loc_14A0BF7:         Call 0.Method_BtnEnh1_UnknownEvent_90 (Button)
  loc_14A0BFF:         Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A0C1C:         If (CStr() = "Caps Lock") Then
  loc_14A0C29:           global_112 = Not(global_112)
  loc_14A0C35:           If (global_112 = &HFF) Then
  loc_14A0C44:             Set var_8C = Me.BtnEnh1
  loc_14A0C4A:             Call 0.Method_BtnEnh1_UnknownEvent_9C (var_C6, var_86)
  loc_14A0C58:             For var_CA = global_112 To (var_C6 - 1):         0 = var_CA 'Integer
  loc_14A0C68:               Set var_8C = Me.BtnEnh1
  loc_14A0C6E:               Call 0.Method_BtnEnh1_UnknownEvent_90 (var_86, var_90)
  loc_14A0C76:               Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(global_112)
  loc_14A0C95:               If (Len(CStr()) = 1) Then
  loc_14A0CA2:                 Set var_8C = Me.BtnEnh1
  loc_14A0CA8:                 Call 0.Method_BtnEnh1_UnknownEvent_90 (var_86)
  loc_14A0CB0:                 Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A0CD1:                 Set var_BC = Me.BtnEnh1
  loc_14A0CD7:                 Call 0.Method_BtnEnh1_UnknownEvent_90 (var_86, var_E0)
  loc_14A0CDF:                 Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(Ucase(CVar(CStr())))
  loc_14A0CF8:               End If
  loc_14A0CFB:             Next var_CA 'Integer
  loc_14A0D03:           Else
  loc_14A0D0F:             Set var_8C = Me.BtnEnh1
  loc_14A0D15:             Call 0.Method_BtnEnh1_UnknownEvent_9C (var_C6, var_86)
  loc_14A0D23:             For var_F4 =  To (var_C6 - 1):           0 = var_F4 'Integer
  loc_14A0D33:               Set var_8C = Me.BtnEnh1
  loc_14A0D39:               Call 0.Method_BtnEnh1_UnknownEvent_90 (var_86)
  loc_14A0D41:               Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A0D60:               If (Len(CStr()) = 1) Then
  loc_14A0D6D:                 Set var_8C = Me.BtnEnh1
  loc_14A0D73:                 Call 0.Method_BtnEnh1_UnknownEvent_90 (var_86)
  loc_14A0D7B:                 Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A0D9C:                 Set var_BC = Me.BtnEnh1
  loc_14A0DA2:                 Call 0.Method_BtnEnh1_UnknownEvent_90 (var_86, var_E0)
  loc_14A0DAA:                 Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(LCase(CVar(CStr())))
  loc_14A0DC3:               End If
  loc_14A0DC6:             Next var_F4 'Integer
  loc_14A0DCB:           End If
  loc_14A0DCE:         Else
  loc_14A0DD8:           Set var_8C = Me.BtnEnh1
  loc_14A0DDE:           Call 0.Method_BtnEnh1_UnknownEvent_90 (Button)
  loc_14A0DE6:           Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A0E03:           If (CStr() = "Home") Then
  loc_14A0E15:             Me.TxtKeyBoard.SelStart = 0
  loc_14A0E20:           Else
  loc_14A0E2A:             Set var_8C = Me.BtnEnh1
  loc_14A0E30:             Call 0.Method_BtnEnh1_UnknownEvent_90 (Button)
  loc_14A0E38:             Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A0E55:             If (CStr() = "Space Bar") Then
  loc_14A0ECD:               Set var_90 = Me.TxtKeyBoard
  loc_14A0EF2:               var_B4 = CVar((Len(var_90.Text) - Me.TxtKeyBoard.SelStart)) 'Long
  loc_14A0F09:               var_DC = Mid(CVar(Me.TxtKeyBoard), (Me.TxtKeyBoard.SelStart + 1), CVar(Me.TxtKeyBoard.SelStart))
  loc_14A0F50:               var_B4 = (CVar(CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))) + Space(1))
  loc_14A0F5B:               global_116 = CStr(CVar(Me.TxtKeyBoard.SelStart))
  loc_14A0F83:               Me.TxtKeyBoard.Text = global_116 & CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))
  loc_14A0F9F:               Me.TxtKeyBoard.SelStart = Len(global_116)
  loc_14A0FAA:             Else
  loc_14A0FB4:               Set var_8C = Me.BtnEnh1
  loc_14A0FBA:               Call 0.Method_BtnEnh1_UnknownEvent_90 (Button)
  loc_14A0FC2:               Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A0FDF:               If (CStr() = "End") Then
  loc_14A0FFC:                 Set var_90 = Me.TxtKeyBoard
  loc_14A1002:                 var_90.SelStart = Len(Me.TxtKeyBoard.Text)
  loc_14A1014:               Else
  loc_14A101E:                 Set var_8C = Me.BtnEnh1
  loc_14A1024:                 Call 0.Method_BtnEnh1_UnknownEvent_90 (Button)
  loc_14A102C:                 Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A1049:                 If (CStr() = "<") Then
  loc_14A106A:                   If (Me.TxtKeyBoard.SelStart > 0) Then
  loc_14A108C:                     Set var_90 = Me.TxtKeyBoard
  loc_14A1092:                     var_90.SelStart = (Me.TxtKeyBoard.SelStart - 1)
  loc_14A109E:                   End If
  loc_14A10A1:                 Else
  loc_14A10AB:                   Set var_8C = Me.BtnEnh1
  loc_14A10B1:                   Call 0.Method_BtnEnh1_UnknownEvent_90 (Button)
  loc_14A10B9:                   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A10D6:                   If (CStr() = ">") Then
  loc_14A110F:                     If (Me.TxtKeyBoard.SelStart < Len(Me.TxtKeyBoard.Text)) Then
  loc_14A1131:                       Set var_90 = Me.TxtKeyBoard
  loc_14A1137:                       var_90.SelStart = (Me.TxtKeyBoard.SelStart + 1)
  loc_14A1143:                     End If
  loc_14A1146:                   Else
  loc_14A1150:                     Set var_8C = Me.BtnEnh1
  loc_14A1156:                     Call 0.Method_BtnEnh1_UnknownEvent_90 (Button)
  loc_14A115E:                     Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A117D:                     If (Len(CStr()) = 1) Then
  loc_14A11F5:                       Set var_90 = Me.TxtKeyBoard
  loc_14A121A:                       var_B4 = CVar((Len(var_90.Text) - Me.TxtKeyBoard.SelStart)) 'Long
  loc_14A1231:                       var_DC = Mid(CVar(Me.TxtKeyBoard), (Me.TxtKeyBoard.SelStart + 1), CVar(Me.TxtKeyBoard.SelStart))
  loc_14A1240:                       global_120 = CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))
  loc_14A1268:                       If (global_112 = &HFF) Then
  loc_14A127E:                         Set var_8C = Me.BtnEnh1
  loc_14A1284:                         Call 0.Method_BtnEnh1_UnknownEvent_90 (Button, var_90)
  loc_14A128C:                         Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))))
  loc_14A12A2:                         var_108 = ( + Ucase(CVar(CStr())))
  loc_14A12AD:                         global_116 = CStr(var_108)
  loc_14A12C9:                       Else
  loc_14A12DC:                         Set var_8C = Me.BtnEnh1
  loc_14A12E2:                         Call 0.Method_BtnEnh1_UnknownEvent_90 (Button, var_90)
  loc_14A12EA:                         Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(global_116))
  loc_14A1300:                         var_108 = ( + LCase(CVar(CStr())))
  loc_14A130B:                         global_116 = CStr(var_108)
  loc_14A1324:                       End If
  loc_14A133E:                       Me.TxtKeyBoard.Text = global_116 & global_120
  loc_14A135A:                       Me.TxtKeyBoard.SelStart = Len(global_116)
  loc_14A1362:                     End If
  loc_14A1362:                   End If
  loc_14A1362:                 End If
  loc_14A1362:               End If
  loc_14A1362:             End If
  loc_14A1362:           End If
  loc_14A1362:         End If
  loc_14A1362:       End If
  loc_14A1362:     End If
  loc_14A1362:     ' Referenced from:   14A0A3B
  loc_14A1362:   End If
  loc_14A1362:   ' Referenced from: 14A07C8
  loc_14A1362: End If
  loc_14A1369: Set var_BC = Me.TxtKeyBoard
  loc_14A1387: Set var_8C = Me.txt
  loc_14A138D: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_90)
  loc_14A1395: var_90.Text = var_BC.Text
  loc_14A13CB: Set var_90 = Me.txt
  loc_14A13D1: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_BC)
  loc_14A13D9: var_BC.SelStart = Me.TxtKeyBoard.SelStart
  loc_14A13FA: Set var_8C = Me.txt
  loc_14A1400: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_90)
  loc_14A141A: If (var_90.Visible = &HFF) Then
  loc_14A142D:   Set var_8C = Me.txt
  loc_14A1433:   Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106))
  loc_14A143B:   var_90.SetFocus
  loc_14A1447: End If
  loc_14A1447: Exit Sub
End Sub

Private Sub btnStruUpdNew_UnknownEvent_9 '1274FB4
  'Data Table: 56813C
  Dim var_94 As Variant
  Dim var_C0 As Variant
  Dim unk_568163 As Connection15
  Dim var_F0 As String
  Dim var_F4 As String
  Dim var_F8 As String
  Dim var_FC As String
  Dim var_100 As String
  Dim var_104 As String
  Dim var_108 As String
  Dim var_10C As String
  Dim var_110 As String
  Dim var_114 As String
  Dim var_118 As String
  Dim var_11C As String
  Dim var_120 As String
  Dim var_124 As String
  Dim var_128 As String
  loc_1274A51: Set var_A8 = Me.btnStruUpdNew
  loc_1274A57: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_1274A72: Call 0.Method_arg_9C (-1)
  loc_1274A7A: Set var_B0 = New 
  loc_1274A83: Call 0.Method_arg_BC (0)
  loc_1274A8D: Call 0.Method_arg_E8 (0)
  loc_1274A95: var_C0 = CVar(MemVar_1F950D4) 'String
  loc_1274AAA: Call 0.Method_Shift0 (CVar(MemVar_1F95098), CVar(MemVar_1F950D8))
  loc_1274AB1: Set var_B0 = Nothing 
  loc_1274ABD: For var_C4 = 1 To MemVar_1F95040: var_AA = var_C4 'Integer
  loc_1274AC9:   var_94 = CVar((var_AA - 1)) 'Integer
  loc_1274AD1:   Set var_A8 = Me.DBGrid1
  loc_1274ADF:   var_94 = 6
  loc_1274AE9:   Set var_A8 = Me.DBGrid1
  loc_1274B08:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF2C
  loc_1274B1D:   Call 0.Method_arg_34 (var_D8, CVar(CStr(var_94)), var_EC, DBGrid1.DispID_A, var_94)
  loc_1274B25:   Call 0.Method_arg_30 (DBGrid1.DispID_1B, var_94)
  loc_1274B2D:   MemVar_1F95208 = var_EC
  loc_1274B55:   unk_568163.Execute "if exists (SELECT * FROM sys.key_constraints WHERE type = 'PK' AND OBJECT_NAME(parent_object_id) = N'RoomDiscount' And name='PK_RoomDiscount') ALTER TABLE RoomDiscount DROP CONSTRAINT PK_RoomDiscount", var_D4, -1
  loc_1274B60:   Proc_96_94_1F2EDD8(Me.DBGrid1, 1)
  loc_1274B79:   var_F0 = "if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[RoomOccDet]') and OBJECTPROPERTY(id, N'IsView') = 1) " & " drop view [dbo].[RoomOccDet]"
  loc_1274B82:   unk_568163.Execute var_F0, var_D4, -1
  loc_1274BA4:   var_F0 = "CREATE VIEW dbo.RoomOccDet AS SELECT  RO.DocId, RO.SNo, RO.FolioNo, RO.Vtype, RO.Site_Code, RO.Vprefix, RO.GuestProf, RO.RoomCat, RO.RoomType, RO.RoomNo, RO.RateCode, RO.RoomRate, " & "RO.ChkInDate, RO.ChkInTime, RO.Adult, RO.Children, RO.DepDate, RO.DepTime, RO.ChkOutDate, RO.ChkOutTime, RO.Type, RO.U_Name, RO.U_EntDt, RO.U_AE, "
  loc_1274BAB:   var_F4 = var_F0 & "RO.UserchkoutDate, RO.ChkoutUser, RO.NewRoomNo, RO.Reason, RO.PlanCode, RO.PlanAmt, RO.IncInRate, RO.LogSite_Code, RO.PlanDisc, RO.PlanDiscAmt, "
  loc_1274BB2:   var_F8 = var_F4 & "RO.PlanDiscAppon, RO.RRTaxInc, RO.RRServiceChrg, RO.ChngDate, RO.ExtraBed, RO.RoomTarrif, RO.RoomTaxStru, RO1.ChkInDT, RO1.ChkInTm, RO1.ChkOutDT, RO1.ChkOutTm, GF.RODisc AS RoomDisc, "
  loc_1274BC0:   var_100 = var_F8 & "GF.GuestProf AS GuestProfile, GF.MFolioNo, GF.MFolioNoDocid " & "FROM (SELECT dbo.RoomOcc.DocId, dbo.RoomOcc.SNo, dbo.RoomOcc.FolioNo, dbo.RoomOcc.Vtype, dbo.RoomOcc.Site_Code, dbo.RoomOcc.Vprefix, "
  loc_1274BC7:   var_104 = var_100 & "dbo.RoomOcc.GuestProf, dbo.RoomOcc.RoomCat, dbo.RoomOcc.RoomType, dbo.RoomOcc.RoomNo, dbo.RoomOcc.RateCode, dbo.RoomOcc.RoomRate, "
  loc_1274BCE:   var_108 = var_104 & "dbo.RoomOcc.ChkInDate, dbo.RoomOcc.ChkInTime, dbo.RoomOcc.Adult, dbo.RoomOcc.Children, dbo.RoomOcc.DepDate, dbo.RoomOcc.DepTime, "
  loc_1274BD5:   var_10C = var_108 & "dbo.RoomOcc.ChkOutDate, dbo.RoomOcc.ChkOutTime, dbo.RoomOcc.Type, dbo.RoomOcc.U_Name, dbo.RoomOcc.U_EntDt, dbo.RoomOcc.U_AE, "
  loc_1274BDC:   var_110 = var_10C & "dbo.RoomOcc.UserchkoutDate, dbo.RoomOcc.ChkoutUser, dbo.RoomOcc.NewRoomNo, dbo.RoomOcc.Reason, dbo.RoomOcc.PlanCode, "
  loc_1274BE3:   var_114 = var_110 & "dbo.RoomOcc.PlanAmt, dbo.RoomOcc.IncInRate, dbo.RoomOcc.LogSite_Code, dbo.RoomOcc.PlanDisc, dbo.RoomOcc.PlanDiscAmt, "
  loc_1274BEA:   var_118 = var_114 & "dbo.RoomOcc.PlanDiscAppon , dbo.RoomOcc.RRTaxInc, dbo.RoomOcc.RRServiceChrg, dbo.RoomOcc.ChngDate, dbo.RoomOcc.ExtraBed, dbo.RoomOcc.RoomTarrif, dbo.RoomOcc.RoomTaxStru "
  loc_1274BF1:   var_11C = var_118 & "FROM dbo.RoomOcc INNER JOIN (SELECT     MAX(SNo) AS SNo, MAX(DocId) AS Docid FROM dbo.RoomOcc AS RoomOcc_5 GROUP BY DocId, ChngDate) AS R1 ON dbo.RoomOcc.DocId = R1.Docid AND dbo.RoomOcc.SNo = R1.SNo) AS RO INNER JOIN "
  loc_1274BF8:   var_120 = var_11C & "(SELECT RoomOcc_4.DocId AS TDocId, R3.ChkInDate AS ChkInDT, RoomOcc_4.ChkInTime AS ChkInTm, R3.ChkOutDate AS ChkOutDT, R3.ChkOutTime AS ChkOutTm FROM dbo.RoomOcc AS RoomOcc_4 INNER JOIN (SELECT     MAX(R1.DocId2) AS DocId3, MIN(RoomOcc_3.ChkInDate) AS ChkInDate, MAX(R1.ChkOutDate) AS ChkOutDate, MAX(R1.ChkOutTime) "
  loc_1274BFF:   var_124 = var_120 & "AS ChkOutTime FROM dbo.RoomOcc AS RoomOcc_3 INNER JOIN (SELECT RoomOcc_2.ChkOutDate, RoomOcc_2.ChkOutTime, RoomOcc_2.DocId AS DocId2 FROM dbo.RoomOcc AS RoomOcc_2 INNER JOIN (SELECT     MAX(DocId) AS DocId1, MAX(SNo) AS Sno1 FROM dbo.RoomOcc AS RoomOcc_1 GROUP BY DocId) AS R ON RoomOcc_2.DocId = R.DocId1 AND RoomOcc_2.SNo = R.Sno1) AS R1 ON "
  loc_1274C06:   var_128 = var_124 & "RoomOcc_3.DocID = r1.DocId2 GROUP BY RoomOcc_3.DocId) AS R3 ON RoomOcc_4.DocId = R3.DocId3 WHERE (RoomOcc_4.SNo = 1)) AS RO1 ON RO.DocId = RO1.TDocId INNER JOIN dbo.GuestFolio AS GF ON GF.DocId = RO.DocId"
  loc_1274C0F:   unk_568163.Execute var_128, var_D4, -1
  loc_1274C4F:   var_F0 = "if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SunTransaction]') and OBJECTPROPERTY(id, N'IsView') = 1) " & " drop view [dbo].[SunTransaction]"
  loc_1274C58:   unk_568163.Execute var_F0, var_D4, -1
  loc_1274C7A:   var_F0 = "CREATE VIEW [SunTransaction] AS SELECT SUM(SunTran.Amount) + SUM(SunTranH.Amount) AS Amt,MAX(SunTranH.SValue) SValue,MAX(SunTranH.DispName) DispName,SunTranH.DocId,SunTranH.Sno,SunTranH.Vtype,SunTranH.VNo, " & "SunTranH.Vdate,SunTranH.PartyCode,SunTranH.SunCode,SunTranH.ROff,SunTran.RestCode,SunTran.SunAppDate,SunTran.RevCode FROM SunTran INNER JOIN SunTranH ON SunTran.Sno = SunTranH.Sno AND SunTran.DocId = SunTranH.DocId "
  loc_1274C81:   var_F4 = var_F0 & "GROUP BY SunTranH.DocId,SunTranH.Sno,SunTranH.Vtype,SunTranH.VNo,SunTranH.Vdate,SunTranH.PartyCode,SunTranH.SunCode,SunTranH.ROff,SunTran.RestCode,SunTran.SunAppDate,SunTran.RevCode"
  loc_1274C8A:   unk_568163.Execute var_F4, var_D4, -1
  loc_1274CB0:   var_F0 = "if Not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[eInvoiceBill1]') and OBJECTPROPERTY(id, N'IsTable') = 1) " & "CREATE TABLE [dbo].[eInvoiceBill1]([UserGSTIN] [varchar](15) NOT NULL,[DocId] [varchar](21) NOT NULL,[TranDtls_TaxSch] [varchar](5) NULL,[TranDtls_SupTyp] [varchar](5) NULL,[TranDtls_RegRev] [varchar](2) NULL,[TranDtls_EcmGstin] [varchar](15) NULL,[TranDtls_IgstOnIntra] [varchar](2) NULL,[DocDtls_Typ] [varchar](11) NOT NULL,[DocDtls_No] [varchar](16) NOT NULL,[DocDtls_Dt] [smalldatetime] NULL,"
  loc_1274CB7:   var_F4 = var_F0 & "[SellerDtls_Gstin] [varchar](15) NULL,[SellerDtls_LglNm] [varchar](100) NULL,[SellerDtls_TrdNm] [varchar](100) NULL,[SellerDtls_Addr1] [varchar](100) NULL,[SellerDtls_Addr2] [varchar](100) NULL,[SellerDtls_Loc] [varchar](100) NULL,[SellerDtls_Pin] [varchar](6) NULL,[SellerDtls_Stcd] [varchar](2) NULL,[SellerDtls_Ph] [varchar](12) NULL,[SellerDtls_Em] [varchar](100) NULL,"
  loc_1274CBE:   var_F8 = var_F4 & "[BuyerDtls_Gstin] [varchar](15) NULL,[BuyerDtls_LglNm] [varchar](100) NULL,[BuyerDtls_TrdNm] [varchar](100) NULL,[BuyerDtls_Pos] [varchar](2) NULL,[BuyerDtls_Addr1] [varchar](100) NULL,[BuyerDtls_Addr2] [varchar](100) NULL,[BuyerDtls_Loc] [varchar](100) NULL,[BuyerDtls_Pin] [varchar](6) NULL,[BuyerDtls_Stcd] [varchar](2) NULL,[BuyerDtls_Ph] [varchar](12) NULL,[BuyerDtls_Em] [varchar](100) NULL,"
  loc_1274CC5:   var_FC = var_F8 & "[DispDtls_Nm] [varchar](60) NULL,[DispDtls_Addr1] [varchar](100) NULL,[DispDtls_Addr2] [varchar](100) NULL,[DispDtls_Loc] [varchar](100) NULL,[DispDtls_Pin] [varchar](6) NULL,[DispDtls_Stcd] [varchar](2) NULL,[ShipDtls_Gstin] [varchar](15) NULL,[ShipDtls_LglNm] [varchar](100) NULL,[ShipDtls_TrdNm] [varchar](100) NULL,[ShipDtls_Addr1] [varchar](100) NULL,[ShipDtls_Addr2] [varchar](100) NULL,"
  loc_1274CCC:   var_100 = var_FC & "[ShipDtls_Loc] [varchar](100) NULL,[ShipDtls_Pin] [varchar](6) NULL,[ShipDtls_Stcd] [varchar](2) NULL,[ShipDtls_Ph] [varchar](10) NULL,[ShipDtls_Em] [varchar](100) NULL,[ValDtls_AssVal] [float] NULL,[ValDtls_Cgstval] [float] NULL,[ValDtls_Sgstval] [float] NULL,[ValDtls_Igstval] [float] NULL,[ValDtls_Cesval] [float] NULL,[ValDtls_StCesVal] [float] NULL,[ValDtls_Discount] [float] NULL,"
  loc_1274CD3:   var_104 = var_100 & "[ValDtls_OthChrg] [float] NULL,[ValDtls_RndOffAmt] [float] NULL,[ValDtls_TotInvVal] [float] NULL,[ValDtls_TotInvValFc] [float] NULL,[PayDtls_Nm] [varchar](100) NULL,[PayDtls_AccDet] [varchar](18) NULL,[PayDtls_Mode] [varchar](18) NULL,[PayDtls_Fininsbr] [varchar](11) NULL,[PayDtls_PayTerm] [varchar](100) NULL,[PayDtls_PayInstr] [varchar](100) NULL,[PayDtls_CrTrn] [varchar](100) NULL,"
  loc_1274CDA:   var_108 = var_104 & "[PayDtls_DirDr] [varchar](100) NULL,[PayDtls_CrDay] [int] NULL,[PayDtls_PaidAmt] [float] NULL,[PayDtls_Paymtdue] [float] NULL,[RefDtls_InvRm] [varchar](100) NULL,[RefDtls_DocPerdDtls_InvStDt] [smalldatetime] NULL,[RefDtls_DocPerdDtls_InvEndDt] [smalldatetime] NULL,[RefDtls_PrecDocDtls_InvNo] [varchar](20) NULL,[RefDtls_PrecDocDtls_InvDt] [smalldatetime] NULL,[RefDtls_PrecDocDtls_OthRefNo] [varchar](20) NULL,"
  loc_1274CE1:   var_10C = var_108 & "[RefDtls_ContrDtls_RecAdvRefr] [varchar](20) NULL,[RefDtls_ContrDtls_RecAdvDt] [smalldatetime] NULL,[RefDtls_ContrDtls_TendRefr] [varchar](20) NULL,[RefDtls_ContrDtls_Contrrefr] [varchar](20) NULL,[RefDtls_ContrDtls_Extrefr] [varchar](20) NULL,[RefDtls_ContrDtls_Projrefr] [varchar](20) NULL,[RefDtls_ContrDtls_Porefr] [varchar](20) NULL,[RefDtls_ContrDtls_PoRefDt] [smalldatetime] NULL,"
  loc_1274CE8:   var_110 = var_10C & "[AddlDocDtls_Url] [varchar](100) NULL,[AddlDocDtls_Docs] [varchar](20) NULL,[AddlDocDtls_Info] [varchar](20) NULL,[ExpDtls_ShipBNo] [varchar](20) NULL,[ExpDtls_ShipBDt] [smalldatetime] NULL,[ExpDtls_Port] [varchar](10) NULL,[ExpDtls_RefClm] [varchar](1) NULL,[ExpDtls_ForCur] [varchar](16) NULL,[ExpDtls_CntCode] [varchar](2) NULL,[ExpDtls_InvForCur] [float] NULL,[EwbDtls_TransId] [varchar](15) NULL,"
  loc_1274CEF:   var_114 = var_110 & "[EwbDtls_TransName] [varchar](100) NULL,[EwbDtls_Distance] [int] NULL,[EwbDtls_TransDocNo] [varchar](15) NULL,[EwbDtls_TransDocDt] [smalldatetime] NULL,[EwbDtls_VehNo] [varchar](20) NULL,[EwbDtls_VehType] [varchar](1) NULL,[EwbDtls_TransMode] [varchar](1) NULL,[JsonResponse] [varchar](max) NULL,[AckNo] [varchar](15) NULL,[AckDt] [smalldatetime] NULL,[IRN] [varchar](64) NULL,[SignedInvoice] [varchar](max) NULL,"
  loc_1274CF6:   var_118 = var_114 & "[SignedQRCode] [varchar](max) NULL,[QrCodeImage] [varchar](max) NULL,[Status] [varchar](5) NULL,[EwayBillNo] [varchar](15) NULL,[EwayBillDate] [smalldatetime] NULL,[EwayBillvalidUpto] [smalldatetime] NULL,[Remarks] [varchar](max) NULL,[InvCancel_IRN] [varchar](64) NULL,[Inv_CancelDate] [smalldatetime] NULL,[supplyType] [varchar](3) NULL,[subSupplyType] [float] NULL,[Eway_DocType] [varchar](3) NULL,"
  loc_1274CFD:   var_11C = var_118 & "[Eway_CancelDate] [smalldatetime] NULL,[WthPay] [varchar](1) NULL,[Mainhsncode] [varchar](8) NULL,[OrgInvNo] [varchar](16) NULL,CONSTRAINT [PK_eInvoiceBill1] PRIMARY KEY CLUSTERED ([DocId] ASC,[DocDtls_No] ASC,[DocDtls_Typ] ASC)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]"
  loc_1274D06:   unk_568163.Execute var_11C, var_D4, -1
  loc_1274D40:   var_F0 = "if Not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[eInvoiceBill2]') and OBJECTPROPERTY(id, N'IsTable') = 1) " & "CREATE TABLE [dbo].[eInvoiceBill2]([DocId] [varchar](21) NOT NULL,[SlNo] [varchar](6) NOT NULL,[PrdDesc] [varchar](100) NULL,[IsServc] [varchar](1) NULL,[HsnCd] [varchar](8) NULL,[Barcde] [varchar](30) NULL,[Qty] [float] NULL,[FreeQty] [float] NULL,"
  loc_1274D47:   var_F4 = var_F0 & "[Unit] [varchar](6) NULL,[UnitPrice] [float] NULL,[TotAmt] [float] NULL,[Discount] [float] NULL,[PreTaxVal] [float] NULL,[AssAmt] [float] NULL,[GstRt] [float] NULL,[IgstAmt] [float] NULL,[CgstAmt] [float] NULL,[SgstAmt] [float] NULL,"
  loc_1274D4E:   var_F8 = var_F4 & "[CesRt] [float] NULL,[CesAmt] [float] NULL,[CesNonAdvlAmt] [float] NULL,[StateCesRt] [float] NULL,[StateCesAmt] [float] NULL,[StateCesNonAdvlAmt] [float] NULL,[OthChrg] [float] NULL,[TotItemVal] [float] NULL,[OrdLineRef] [varchar](100) NULL,"
  loc_1274D55:   var_FC = var_F8 & "[OrgCntry] [varchar](2) NULL,[PrdSlNo] [varchar](20) NULL,[BchDtls_Nm] [varchar](20) NULL,[BchDtls_ExpDt] [smalldatetime] NULL,[BchDtls_WrDt] [smalldatetime] NULL,[AttribDtls_NM] [varchar](100) NULL,[AttribDtls_Val] [varchar](100) NULL,"
  loc_1274D5C:   var_100 = var_FC & "[ItemNo] [float] NULL,[PrdNm] [varchar](100) NULL,[IgstRt] [float] NULL,[CgstRt] [float] NULL,[SgstRt] [float] NULL,[cessrate] [float] NULL,CONSTRAINT [PK_eInvoiceBill2] PRIMARY KEY CLUSTERED ([DocId] ASC,[SlNo] ASC)"
  loc_1274D63:   var_104 = var_100 & "WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]) ON [PRIMARY]"
  loc_1274D6C:   unk_568163.Execute var_104, var_D4, -1
  loc_1274D9C:   unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'Ledger' And column_name='SeqNo') Alter Table Ledger Add SeqNo Smallint default ((0)) With Values", var_D4, -1
  loc_1274DBD:   unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'LedgerM' And column_name='SeqNo') Alter Table LedgerM Add SeqNo Smallint default ((0)) With Values", var_D4, -1
  loc_1274DDE:   unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'LedgerMerge' And column_name='SeqNo') Alter Table LedgerMerge Add SeqNo Smallint default ((0)) With Values", var_D4, -1
  loc_1274DFF:   unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'LedgerMMerge' And column_name='SeqNo') Alter Table LedgerMMerge Add SeqNo Smallint default ((0)) With Values", var_D4, -1
  loc_1274E20:   unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'Enviro' And column_name='DisplayRackRow') Alter Table Enviro Add DisplayRackRow Smallint default ((0)) With Values", var_D4, -1
  loc_1274E41:   unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'Enviro' And column_name='DisplayRackCol') Alter Table Enviro Add DisplayRackCol Smallint default ((0)) With Values", var_D4, -1
  loc_1274E62:   unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'Enviro' And column_name='DisplayRackFontSize') Alter Table Enviro Add DisplayRackFontSize Smallint default ((0)) With Values", var_D4, -1
  loc_1274E83:   unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'Depart' And column_name='EditRemarkYN') Alter Table Depart Add EditRemarkYN Varchar(3) default '' With Values", var_D4, -1
  loc_1274EA4:   unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'Sale1' And column_name='EditRemark') Alter Table Sale1 Add EditRemark Varchar(75) default '' With Values", var_D4, -1
  loc_1274EC5:   unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'SplitSale1' And column_name='EditRemark') Alter Table SplitSale1 Add EditRemark Varchar(75) default '' With Values", var_D4, -1
  loc_1274EE6:   unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'Sale1Log' And column_name='EditRemark') Alter Table Sale1Log Add EditRemark Varchar(75) default '' With Values", var_D4, -1
  loc_1274F07:   unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'FacilityBill1' And column_name='LocationCode') Alter Table FacilityBill1 Add LocationCode Varchar(6) default '' With Values", var_D4, -1
  loc_1274F28:   unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'FacilityBill2' And column_name='SNo') Alter Table FacilityBill2 Add SNo Smallint default ((1)) With Values", var_D4, -1
  loc_1274F49:   unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'Enviro' And column_name='PrintSeperateItemInPOSBill') Alter Table Enviro Add PrintSeperateItemInPOSBill Varchar(3) default 'No' With Values", var_D4, -1
  loc_1274F6A:   unk_568163.Execute "If Not exists (select * from information_schema.columns where table_name = 'Voucher_Type' And column_name='Alias') Alter Table Voucher_Type Add Alias Varchar(6) default '' With Values", var_D4, -1
  loc_1274F78: Next var_C4 'Integer
  loc_1274F9E: MsgBox("All Company database updated", 0, "Database Update", var_138, var_158)
  loc_1274FAE: End
  loc_1274FB0: End
  loc_1274FB2: Exit Sub
End Sub

Private Sub add_Click() 'DFF054
  'Data Table: 56813C
  loc_DFF04C: Call Proc_4_29_11B4F44()
  loc_DFF051: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_18 'DFF134
  'Data Table: 56813C
  loc_DFF12C: Call btnapplyNew_UnknownEvent_9()
  loc_DFF131: Exit Sub
End Sub

Public Sub DBGrid1_UnknownEvent_1F(Index As Integer) 'E4929C
  'Data Table: 56813C
  loc_E49275: If ((Index = 2) And (MemVar_1F950B8 = 1)) Then
  loc_E49290:   Call 0.Method_arg_2BC (Me.POPUP, var_98, var_A8)
  loc_E49298: End If
  loc_E49298: Exit Sub
End Sub

Private Sub ChkKeyboard_UnknownEvent_9 'F1375C
  'Data Table: 56813C
  Dim var_86 As Integer
  loc_F13666: var_86 = 0
  loc_F13675: Set var_8C = Me.BtnEnh1
  loc_F1367B: Call 0.Method_ChkKeyboard_UnknownEvent_9C (var_8E, var_86)
  loc_F13689: For var_92 = var_86 To (var_8E - 1): 0 = var_92 'Integer
  loc_F13693:   Set var_8C = Me.ChkKeyboard
  loc_F13699:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_69(var_86)
  loc_F136AA:   If (CInt() = 0) Then
  loc_F136BC:     Set var_8C = Me.BtnEnh1
  loc_F136C2:     Call 0.Method_ChkKeyboard_UnknownEvent_90 (var_86, var_A8)
  loc_F136CA:     Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_F136D9:   Else
  loc_F136E7:     Set var_8C = Me.BtnEnh1
  loc_F136ED:     Call 0.Method_ChkKeyboard_UnknownEvent_90 (var_86, var_A8)
  loc_F136F5:     Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_F13701:   End If
  loc_F13704: Next var_92 'Integer
  loc_F1370D: Set var_8C = Me.ChkKeyboard
  loc_F13713: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_69()
  loc_F13724: If (CInt() = 0) Then
  loc_F13731:   Set var_8C = Me.ChkKeyboard
  loc_F13737:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Enable Virtual Keyboard")
  loc_F13742: Else
  loc_F1374C:   Set var_8C = Me.ChkKeyboard
  loc_F13752:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Disable Virtual Keyboard")
  loc_F1375A: End If
  loc_F1375A: Exit Sub
End Sub

Public Sub Proc_4_25_EBD934
  'Data Table: 56813C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim MemVar_1F950D4 As String
  Dim var_BC As Variant
  Dim MemVar_1F95098 As String
  loc_EBD8A3: var_86 = CInt(InStr(1, MemVar_1F95098, "[", 0))
  loc_EBD8B9: var_88 = CInt(InStr(1, MemVar_1F95098, "]", 0))
  loc_EBD8C6: var_8A = ((var_88 - var_86) - 1)
  loc_EBD8D6: If ((var_86 <> 0) And (var_88 <> 0)) Then
  loc_EBD8F3:   var_BC = Mid(MemVar_1F95098, CLng((var_86 + 1)), var_8A)
  loc_EBD8FC:   MemVar_1F950D4 = CStr(var_BC)
  loc_EBD909:   var_BC = CVar((var_86 - 1)) 'Integer
  loc_EBD925:   MemVar_1F95098 = CStr(Mid(MemVar_1F95098, 1, var_BC))
  loc_EBD930: End If
  loc_EBD930: Exit Sub
End Sub

Public Sub Proc_4_26_EB5DF0
  'Data Table: 56813C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim MemVar_1F950D8 As String
  loc_EB5D63: var_86 = CInt(InStr(1, MemVar_1F95098, "{", 0))
  loc_EB5D79: var_88 = CInt(InStr(1, MemVar_1F95098, "}", 0))
  loc_EB5D86: var_8A = ((var_88 - var_86) - 1)
  loc_EB5D96: If ((var_86 <> 0) And (var_88 <> 0)) Then
  loc_EB5DB3:   var_BC = Mid(MemVar_1F95098, CLng((var_86 + 1)), var_8A)
  loc_EB5DBC:   MemVar_1F950D8 = CStr(var_BC)
  loc_EB5DC6:   MemVar_1F950E0 = "Yes"
  loc_EB5DCD: Else
  loc_EB5DD0:   MemVar_1F950D8 = "sa"
  loc_EB5DD7:   MemVar_1F950E0 = vbNullString
  loc_EB5DDB: End If
  loc_EB5DE3: If (MemVar_1F950D8 = vbNullString) Then
  loc_EB5DE9:   MemVar_1F950D8 = "sa"
  loc_EB5DED: End If
  loc_EB5DED: Exit Sub
End Sub

Public Sub Proc_4_27_E9A2C0(arg_C) 'E9A2C0
  'Data Table: 56813C
  Dim MemVar_4481E1FF As String
  loc_E9A244: Set var_88 = MemVar_1F956CC.add
  loc_E9A24A: frmCompany.add.Enabled = arg_C
  loc_E9A25E: Set var_88 = MemVar_1F956CC.edit
  loc_E9A264: frmCompany.edit.Enabled = arg_C
  loc_E9A278: Set var_88 = MemVar_1F956CC.del
  loc_E9A27E: frmCompany.del.Enabled = arg_C
  loc_E9A293: Set var_88 = MemVar_1F956CC.MNUSAVE
  loc_E9A299: frmCompany.MNUSAVE.Enabled = Not(arg_C)
  loc_E9A2AE: Set var_88 = MemVar_1F956CC.MNUCANCEL
  loc_E9A2B4: frmCompany.MNUCANCEL.Enabled = Not(arg_C)
  loc_E9A2BC: Exit Sub
  loc_E9A2BD: MemVar_4481E1FF = 
End Sub

Public Sub Proc_4_28_EE7B5C(arg_C) 'EE7B5C
  'Data Table: 56813C
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EE7ACA: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EE7AE9: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EE7B0C:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EE7B28:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EE7B30:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EE7B35:   var_8C = CStr(var_108)
  loc_EE7B49: Next var_B8 'Integer
  loc_EE7B51: var_88 = var_8C
  loc_EE7B54: Proc_4_28_EE7B5C = 
End Sub

Public Sub Proc_4_29_11B4F44
  'Data Table: 56813C
  Dim var_88 As Frame
  Dim var_90 As TextBox
  Dim var_A4 As String
  loc_11B4B0C: On Error Goto loc_11B4EF8
  loc_11B4B16: global_52 = CByte(1)
  loc_11B4B26: Me.CompInfo.Visible = True
  loc_11B4B33: Call Proc_4_27_E9A2C0(0)
  loc_11B4B3D: Call Proc_4_38_10796D8(&HFF)
  loc_11B4B50: Set var_88 = Me.txt
  loc_11B4B56: Call 0.Method_Proc_4_29_11B4F440 (CInt(3), var_90)
  loc_11B4B5E: var_90.Text = vbNullString
  loc_11B4B78: Set var_88 = Me.txt
  loc_11B4B7E: Call 0.Method_Proc_4_29_11B4F440 (CInt(5), var_90)
  loc_11B4B86: var_90.Text = vbNullString
  loc_11B4BA0: Set var_88 = Me.txt
  loc_11B4BA6: Call 0.Method_Proc_4_29_11B4F440 (CInt(4), var_90)
  loc_11B4BAE: var_90.Text = vbNullString
  loc_11B4BC8: Set var_88 = Me.txt
  loc_11B4BCE: Call 0.Method_Proc_4_29_11B4F440 (CInt(6), var_90)
  loc_11B4BD6: var_90.Text = vbNullString
  loc_11B4BF0: Set var_88 = Me.txt
  loc_11B4BF6: Call 0.Method_Proc_4_29_11B4F440 (CInt(7), var_90)
  loc_11B4BFE: var_90.Text = vbNullString
  loc_11B4C18: Set var_88 = Me.txt
  loc_11B4C1E: Call 0.Method_Proc_4_29_11B4F440 (CInt(8), var_90)
  loc_11B4C26: var_90.Text = vbNullString
  loc_11B4C40: Set var_88 = Me.txt
  loc_11B4C46: Call 0.Method_Proc_4_29_11B4F440 (CInt(&H17), var_90)
  loc_11B4C4E: var_90.Text = vbNullString
  loc_11B4C68: Set var_88 = Me.txt
  loc_11B4C6E: Call 0.Method_Proc_4_29_11B4F440 (CInt(&H16), var_90)
  loc_11B4C76: var_90.Text = vbNullString
  loc_11B4C90: Set var_88 = Me.txt
  loc_11B4C96: Call 0.Method_Proc_4_29_11B4F440 (CInt(9), var_90)
  loc_11B4C9E: var_90.Text = vbNullString
  loc_11B4CB8: Set var_88 = Me.txt
  loc_11B4CBE: Call 0.Method_Proc_4_29_11B4F440 (CInt(&HA), var_90)
  loc_11B4CC6: var_90.Text = vbNullString
  loc_11B4CE0: Set var_88 = Me.txt
  loc_11B4CE6: Call 0.Method_Proc_4_29_11B4F440 (CInt(&HB), var_90)
  loc_11B4CEE: var_90.Text = vbNullString
  loc_11B4D08: Set var_88 = Me.txt
  loc_11B4D0E: Call 0.Method_Proc_4_29_11B4F440 (CInt(&HE), var_90)
  loc_11B4D16: var_90.Text = vbNullString
  loc_11B4D30: Set var_88 = Me.txt
  loc_11B4D36: Call 0.Method_Proc_4_29_11B4F440 (CInt(&HC), var_90)
  loc_11B4D3E: var_90.Text = vbNullString
  loc_11B4D58: Set var_88 = Me.txt
  loc_11B4D5E: Call 0.Method_Proc_4_29_11B4F440 (CInt(&H10), var_90)
  loc_11B4D66: var_90.Text = vbNullString
  loc_11B4D80: Set var_88 = Me.txt
  loc_11B4D86: Call 0.Method_Proc_4_29_11B4F440 (CInt(&H14), var_90)
  loc_11B4D8E: var_90.Text = vbNullString
  loc_11B4DA8: Set var_88 = Me.txt
  loc_11B4DAE: Call 0.Method_Proc_4_29_11B4F440 (CInt(&H11), var_90)
  loc_11B4DB6: var_90.Text = vbNullString
  loc_11B4DD0: Set var_88 = Me.txt
  loc_11B4DD6: Call 0.Method_Proc_4_29_11B4F440 (CInt(&H15), var_90)
  loc_11B4DDE: var_90.Text = vbNullString
  loc_11B4E04: Set var_88 = Me.txt
  loc_11B4E0A: Call 0.Method_Proc_4_29_11B4F440 (CInt(&H12), var_90)
  loc_11B4E12: var_90.Text = CStr(Date)
  loc_11B4E3E: Set var_88 = Me.txt
  loc_11B4E44: Call 0.Method_Proc_4_29_11B4F440 (CInt(&H13), var_90)
  loc_11B4E4C: var_90.Text = CStr(Date)
  loc_11B4E78: Set var_88 = Me.txt
  loc_11B4E7E: Call 0.Method_Proc_4_29_11B4F440 (CInt(&HF), var_90)
  loc_11B4E86: var_90.Text = CStr(Date)
  loc_11B4EA3: var_A4 = CStr(Date)
  loc_11B4EB2: Set var_88 = Me.txt
  loc_11B4EB8: Call 0.Method_Proc_4_29_11B4F440 (CInt(&HD), var_90)
  loc_11B4EC0: var_90.Text = var_A4
  loc_11B4EDD: Set var_88 = Me.txt
  loc_11B4EE3: Call 0.Method_Proc_4_29_11B4F440 (CInt(3), var_90)
  loc_11B4EEB: var_90.SetFocus
  loc_11B4EF7: Exit Sub
  loc_11B4EF8: ' Referenced from: 11B4B0C
  loc_11B4F00: Set var_88 = Err()
  loc_11B4F06: Call 0.Method_arg_2C (var_A4)
  loc_11B4F11: Call 0.Method_arg_50 (var_A8)
  loc_11B4F2D: MsgBox(CVar(var_A4), &H10, CVar(var_A8), var_D8, var_F8)
  loc_11B4F40: Exit Sub
End Sub

Public Sub Proc_4_30_13906FC
  'Data Table: 56813C
  Dim var_88 As Variant
  Dim Me As Recordset15
  Dim var_B4 As String
  Dim var_BC As TextBox
  loc_138FE28: On Error Goto loc_13906B0
  loc_138FE32: global_52 = CByte(2)
  loc_138FE42: Me.CompInfo.Visible = True
  loc_138FE4F: Call Proc_4_27_E9A2C0(0)
  loc_138FE59: Call Proc_4_38_10796D8(&HFF)
  loc_138FE8F: global_56 = Proc_6_38_E69628(CVar(Me.Fields.Item("Comp_Code")))
  loc_138FED5: Set var_B8 = Me.txt
  loc_138FEDB: Call 0.Method_Proc_4_30_13906FC0 (CInt(3), var_BC)
  loc_138FEE3: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comp_Code")))
  loc_138FF30: Set var_B8 = Me.txt
  loc_138FF36: Call 0.Method_Proc_4_30_13906FC0 (CInt(5), var_BC)
  loc_138FF3E: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("SName")))
  loc_138FF8B: Set var_B8 = Me.txt
  loc_138FF91: Call 0.Method_Proc_4_30_13906FC0 (CInt(4), var_BC)
  loc_138FF99: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comp_Name")))
  loc_138FFE6: Set var_B8 = Me.txt
  loc_138FFEC: Call 0.Method_Proc_4_30_13906FC0 (CInt(6), var_BC)
  loc_138FFF4: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Address1")))
  loc_1390041: Set var_B8 = Me.txt
  loc_1390047: Call 0.Method_Proc_4_30_13906FC0 (CInt(7), var_BC)
  loc_139004F: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Address2")))
  loc_139009C: Set var_B8 = Me.txt
  loc_13900A2: Call 0.Method_Proc_4_30_13906FC0 (CInt(8), var_BC)
  loc_13900AA: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("City")))
  loc_13900F7: Set var_B8 = Me.txt
  loc_13900FD: Call 0.Method_Proc_4_30_13906FC0 (CInt(&H16), var_BC)
  loc_1390105: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("SiteName")))
  loc_1390152: Set var_B8 = Me.txt
  loc_1390158: Call 0.Method_Proc_4_30_13906FC0 (CInt(&H17), var_BC)
  loc_1390160: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("SiteCode")))
  loc_13901AD: Set var_B8 = Me.txt
  loc_13901B3: Call 0.Method_Proc_4_30_13906FC0 (CInt(9), var_BC)
  loc_13901BB: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Pin")))
  loc_1390208: Set var_B8 = Me.txt
  loc_139020E: Call 0.Method_Proc_4_30_13906FC0 (CInt(&HA), var_BC)
  loc_1390216: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Phone")))
  loc_1390263: Set var_B8 = Me.txt
  loc_1390269: Call 0.Method_Proc_4_30_13906FC0 (CInt(&HB), var_BC)
  loc_1390271: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Fax")))
  loc_13902BE: Set var_B8 = Me.txt
  loc_13902C4: Call 0.Method_Proc_4_30_13906FC0 (CInt(&HE), var_BC)
  loc_13902CC: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CstNo")))
  loc_1390319: Set var_B8 = Me.txt
  loc_139031F: Call 0.Method_Proc_4_30_13906FC0 (CInt(&HC), var_BC)
  loc_1390327: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LstNo")))
  loc_1390374: Set var_B8 = Me.txt
  loc_139037A: Call 0.Method_Proc_4_30_13906FC0 (CInt(&H14), var_BC)
  loc_1390382: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("FGLNo")))
  loc_13903CF: Set var_B8 = Me.txt
  loc_13903D5: Call 0.Method_Proc_4_30_13906FC0 (CInt(&H10), var_BC)
  loc_13903DD: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CYear")))
  loc_139042A: Set var_B8 = Me.txt
  loc_1390430: Call 0.Method_Proc_4_30_13906FC0 (CInt(&H11), var_BC)
  loc_1390438: var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("PYear")))
  loc_13904A1: Set var_B8 = Me.txt
  loc_13904A7: Call 0.Method_Proc_4_30_13906FC0 (CInt(&H12), var_BC, CStr(Format(CVar(Me.Fields.Item("Start_Dt")), "Short Date")))
  loc_13904AF: var_BC.Text = 1
  loc_139051E: Set var_B8 = Me.txt
  loc_1390524: Call 0.Method_Proc_4_30_13906FC0 (CInt(&H13), var_BC, CStr(Format(CVar(Me.Fields.Item("End_Dt")), "Short Date")), 1)
  loc_139052C: var_BC.Text = 1
  loc_139059B: Set var_B8 = Me.txt
  loc_13905A1: Call 0.Method_Proc_4_30_13906FC0 (CInt(&HF), var_BC, CStr(Format(CVar(Me.Fields.Item("CstDate")), "Short Date")), 1)
  loc_13905A9: var_BC.Text = 1
  loc_1390601: var_EC = Format(CVar(Me.Fields.Item("LstDate")), "Short Date")
  loc_1390618: Set var_B8 = Me.txt
  loc_139061E: Call 0.Method_Proc_4_30_13906FC0 (CInt(&HD), var_BC, CStr(var_EC), 1)
  loc_1390626: var_BC.Text = 1
  loc_139066B: var_B4 = Proc_6_38_E69628(CVar(Me.Fields.Item("SerialKeyNo")), 1)
  loc_1390679: Set var_B8 = Me.txt
  loc_139067F: Call 0.Method_Proc_4_30_13906FC0 (CInt(&H15), var_BC)
  loc_1390687: var_BC.Text = var_B4
  loc_13906A7: Me.Panelgrid.Visible = False
  loc_13906AF: Exit Sub
  loc_13906B0: ' Referenced from: 138FE28
  loc_13906B8: Set var_88 = Err()
  loc_13906BE: Call 0.Method_arg_2C (var_B4)
  loc_13906C9: Call 0.Method_arg_50 (var_F0)
  loc_13906E5: MsgBox(CVar(var_B4), &H10, CVar(var_F0), var_EC, var_100)
  loc_13906F8: Exit Sub
End Sub

Public Sub Proc_4_31_1003FB4
  'Data Table: 56813C
  Dim Me As Recordset15
  Dim var_110 As Fields15
  Dim var_EC As Variant
  Dim var_118 As String
  Dim unk_568163 As Connection15
  Dim MemVar_1F95030(CLng(var_8A)) As Connection15
  loc_1003DC0: On Error Goto loc_1003F68
  loc_1003DFA: If (MsgBox("Do You Want to Delete It ", &H124, "Delete Confirmation", var_EC, var_10C) = 6) Then
  loc_1003E53:   unk_568163.Execute CStr("DELETE FROM COMPANY WHERE COMP_CODE='" & Me.Fields.Item("Comp_Code").Value & "'"), var_10C, -1
  loc_1003EB7:   var_EC = "DELETE FROM user2 WHERE COMP_CODE='" & Me.Fields.Item("Comp_Code").Value & "'" 
  loc_1003EBB:   var_118 = CStr(var_EC)
  loc_1003EC5:   unk_568163.Execute var_118, var_10C, -1
  loc_1003EE9:   For var_120 = 1 To MemVar_1F95040: var_8A = var_120 'Integer
  loc_1003F34:     If (CVar(MemVar_1F95034(CLng(var_8A))) = Me.Fields.Item("Comp_Code").Value) Then
  loc_1003F42:       MemVar_1F95030(CLng(var_8A)).Close
  loc_1003F47:     End If
  loc_1003F4A:   Next var_120 'Integer
  loc_1003F5A:   Me.Requery -1
  loc_1003F5F: End If
  loc_1003F64: Set var_88 = Nothing
  loc_1003F67: Exit Sub
  loc_1003F68: ' Referenced from: 1003DC0
  loc_1003F70: Set var_110 = Err()
  loc_1003F76: Call 0.Method_arg_2C (var_118)
  loc_1003F81: Call 0.Method_arg_50 (var_124)
  loc_1003F9D: MsgBox(CVar(var_118), &H10, CVar(var_124), var_EC, var_10C)
  loc_1003FB0: Exit Sub
End Sub

Public Sub Proc_4_32_15BE780
  'Data Table: 56813C
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_98 As Variant
  Dim var_124 As Variant
  Dim var_C0 As Variant
  Dim unk_568163 As Connection15
  Dim var_128 As String
  Dim var_100 As String
  Dim var_F0 As Variant
  Dim var_A0 As String
  Dim var_9C As Recordset15
  Dim var_140 As Field20
  Dim var_178 As String
  Dim var_180 As TextBox
  Dim var_194 As TextBox
  Dim var_1A8 As TextBox
  Dim var_1BC As TextBox
  Dim var_1C8 As String
  Dim var_1D0 As TextBox
  Dim var_1DC As String
  Dim var_13C As Variant
  Dim var_150 As Variant
  Dim var_20C As Variant
  Dim var_214 As TextBox
  Dim var_250 As TextBox
  Dim var_28C As TextBox
  Dim var_2B0 As Variant
  Dim var_2F8 As Variant
  Dim var_378 As TextBox
  Dim var_3C4 As TextBox
  Dim var_450 As Variant
  Dim var_480 As Variant
  Dim var_498 As Variant
  Dim var_4E0 As TextBox
  Dim var_4F4 As Variant
  Dim var_53C As Variant
  Dim var_55C As Variant
  Dim Me As Variant
  Dim var_94 As Variant
  Dim var_1EC As TextBox
  Dim var_320 As TextBox
  Dim var_4A8 As Variant
  Dim var_54C As Variant
  Dim var_170 As Variant
  loc_15BD674: On Error Goto loc_15BE71D
  loc_15BD67B: var_8A = CByte(0) 'Byte
  loc_15BD68A: Set var_94 = Me.txt
  loc_15BD690: Call 0.Method_Proc_4_32_15BE7800 (CInt(3))
  loc_15BD6B9: If (Proc_6_27_EA61EC(var_98, "Company Code") = 0) Then
  loc_15BD6BC:   Exit Sub
  loc_15BD6BD: End If
  loc_15BD6C8: Set var_94 = Me.txt
  loc_15BD6CE: Call 0.Method_Proc_4_32_15BE7800 (CInt(4), var_98)
  loc_15BD6F7: If (Proc_6_27_EA61EC(var_98, "Company Name") = 0) Then
  loc_15BD6FA:   Exit Sub
  loc_15BD6FB: End If
  loc_15BD706: Set var_94 = Me.txt
  loc_15BD70C: Call 0.Method_Proc_4_32_15BE7800 (CInt(5), var_98)
  loc_15BD735: If (Proc_6_27_EA61EC(var_98, "Short Name") = 0) Then
  loc_15BD738:   Exit Sub
  loc_15BD739: End If
  loc_15BD744: Set var_94 = Me.txt
  loc_15BD74A: Call 0.Method_Proc_4_32_15BE7800 (CInt(6), var_98)
  loc_15BD773: If (Proc_6_27_EA61EC(var_98, "Address") = 0) Then
  loc_15BD776:   Exit Sub
  loc_15BD777: End If
  loc_15BD782: Set var_94 = Me.txt
  loc_15BD788: Call 0.Method_Proc_4_32_15BE7800 (CInt(8), var_98)
  loc_15BD7B1: If (Proc_6_27_EA61EC(var_98, "City") = 0) Then
  loc_15BD7B4:   Exit Sub
  loc_15BD7B5: End If
  loc_15BD7C0: Set var_94 = Me.txt
  loc_15BD7C6: Call 0.Method_Proc_4_32_15BE7800 (CInt(&H16), var_98)
  loc_15BD7EF: If (Proc_6_27_EA61EC(var_98, "Site Name") = 0) Then
  loc_15BD7F2:   Exit Sub
  loc_15BD7F3: End If
  loc_15BD7FE: Set var_94 = Me.txt
  loc_15BD804: Call 0.Method_Proc_4_32_15BE7800 (CInt(&H15), var_98)
  loc_15BD82D: If (Proc_6_27_EA61EC(var_98, "Key No") = 0) Then
  loc_15BD830:   Exit Sub
  loc_15BD831: End If
  loc_15BD83C: Set var_94 = Me.txt
  loc_15BD842: Call 0.Method_Proc_4_32_15BE7800 (CInt(9), var_98)
  loc_15BD86B: If (Proc_6_27_EA61EC(var_98, "PIN") = 0) Then
  loc_15BD86E:   Exit Sub
  loc_15BD86F: End If
  loc_15BD87A: Set var_94 = Me.txt
  loc_15BD880: Call 0.Method_Proc_4_32_15BE7800 (CInt(&H17), var_98)
  loc_15BD88F: var_C0 = Trim(CVar(var_98))
  loc_15BD897: var_D0 = Len(var_C0)
  loc_15BD8AD: If (var_D0 < 2) Then
  loc_15BD8C9:   MsgBox("Site Code Must be of 2 Characters", 0, var_C0, var_D0, var_F0)
  loc_15BD8D9:   Exit Sub
  loc_15BD8DA: End If
  loc_15BD8E5: Set var_94 = Me.txt
  loc_15BD8EB: Call 0.Method_Proc_4_32_15BE7800 (CInt(&H10), var_98)
  loc_15BD8F3: var_A0 = "Current Year"
  loc_15BD914: If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_15BD917:   Exit Sub
  loc_15BD918: End If
  loc_15BD926: Set var_94 = Me.txt
  loc_15BD92C: Call 0.Method_Proc_4_32_15BE7800 (CInt(&H12), var_98)
  loc_15BD934: var_128 = var_98.Text
  loc_15BD94A: Set var_9C = Me.txt
  loc_15BD950: Call 0.Method_Proc_4_32_15BE7800 (CInt(&H13), var_124, var_A0)
  loc_15BD958: var_128 = var_124.Text
  loc_15BD974: If (var_98 > var_A0) Then
  loc_15BD97D:   Call 0.Method_arg_50 (var_A0)
  loc_15BD99E:   MsgBox("End Date Should be More Than Start Date", &H10, CVar(var_A0), var_D0, var_F0)
  loc_15BD9AE:   Exit Sub
  loc_15BD9AF: End If
  loc_15BD9B8: unk_568163.BeginTrans var_12C
  loc_15BD9C1: var_8A = CByte(1) 'Byte
  loc_15BD9D6: Set var_94 = Me.txt
  loc_15BD9DC: Call 0.Method_Proc_4_32_15BE7800 (CInt(&H17), var_98)
  loc_15BD9F4: var_90 = "('" & var_98.Text & "')"
  loc_15BDA11: If (CInt(global_52) = 1) Then
  loc_15BDA40:   Set var_94 = Me.txt
  loc_15BDA46:   Call 0.Method_Proc_4_32_15BE7800 (CInt(3), var_98, "select count(*) from company where comp_code='", var_13C, -1)
  loc_15BDA5D:   var_D0 = var_9C & Trim(CVar(var_98)) 
  loc_15BDA66:   var_F0 = var_D0 & "'" 
  loc_15BDA6A:   var_A0 = CStr(var_F0)
  loc_15BDA74:   unk_568163.Execute var_A0, var_124, 0
  loc_15BDA84:    = var_124.Item(var_150)
  loc_15BDA8C:    = var_9C.Fields.Value
  loc_15BDAB9:   If (var_150 > 0) Then
  loc_15BDAC7:     var_C0 = "Input Error"
  loc_15BDADD:     MsgBox("Duplicate Company Code", &H30, var_C0, var_D0, var_F0)
  loc_15BDAED:     Exit Sub
  loc_15BDAEE:   End If
  loc_15BDB0C:   Set var_94 = Me.txt
  loc_15BDB12:   Call 0.Method_Proc_4_32_15BE7800 (CInt(5), var_98, var_A0, "INSERT INTO COMPANY (SName,Comp_Code,Comp_Name,Address1,Address2,City,Pin,LstDate,CstDate,Phone,CYear,PYear,Start_Dt,End_Dt,LstNo,CstNo,CentralData_Path,FAX,FGLNo,SerialKeyNo,SiteCode,SiteName,SiteCodeDisplay) VALUES ('")
  loc_15BDB1A:   var_6A0 = var_98.Text
  loc_15BDB23:   var_128 = -1 & var_A0
  loc_15BDB2A:   var_178 = "('" & var_98.Text & "','"
  loc_15BDB3B:   Set var_9C = Me.txt
  loc_15BDB41:   Call 0.Method_Proc_4_32_15BE7800 (CInt(3), var_124, var_174)
  loc_15BDB49:   var_178 = var_124.Text
  loc_15BDB6A:   Set var_140 = Me.txt
  loc_15BDB70:   Call 0.Method_Proc_4_32_15BE7800 (CInt(4), var_180)
  loc_15BDB99:   Set var_190 = Me.txt
  loc_15BDB9F:   Call 0.Method_Proc_4_32_15BE7800 (CInt(6), var_194)
  loc_15BDBC8:   Set var_1A4 = Me.txt
  loc_15BDBCE:   Call 0.Method_Proc_4_32_15BE7800 (CInt(7), var_1A8)
  loc_15BDBF7:   Set var_1B8 = Me.txt
  loc_15BDBFD:   Call 0.Method_Proc_4_32_15BE7800 (CInt(8), var_1BC)
  loc_15BDC26:   Set var_1CC = Me.txt
  loc_15BDC2C:   Call 0.Method_Proc_4_32_15BE7800 (CInt(9), var_1D0)
  loc_15BDC3D:   var_1DC = var_6A4 & var_174 & "','" & var_180.Text & "','" & var_194.Text & "','" & var_1A8.Text & "','" & var_1BC.Text & "','" & var_1D0.Text
  loc_15BDC52:   Set var_1E0 = Me.txt
  loc_15BDC58:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&HD), var_1E4)
  loc_15BDC67:   Proc_6_17_EAAE40(var_C0, CVar(var_1E4))
  loc_15BDC87:   Set var_1E8 = Me.txt
  loc_15BDC8D:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&HF), var_1EC)
  loc_15BDC9C:   Proc_6_17_EAAE40(var_170, CVar(var_1EC))
  loc_15BDCBF:   Set var_210 = Me.txt
  loc_15BDCC5:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&HA), var_214)
  loc_15BDCF3:   Set var_24C = Me.txt
  loc_15BDCF9:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&H10), var_250)
  loc_15BDD27:   Set var_288 = Me.txt
  loc_15BDD2D:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&H11), var_28C)
  loc_15BDD40:   var_2B0 = CVar(var_1DC & "',") & var_C0 & "," & var_170 & ",'" & CVar(var_214.Text) & "','" & CVar(var_250.Text) & "','" & CVar(var_28C.Text) 
  loc_15BDD58:   Set var_2C4 = Me.txt
  loc_15BDD5E:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&H12), var_2C8)
  loc_15BDD6D:   Proc_6_7_F26918(var_2E8, CVar(var_2C8))
  loc_15BDD8D:   Set var_31C = Me.txt
  loc_15BDD93:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&H13), var_320)
  loc_15BDDA2:   Proc_6_7_F26918(var_340, CVar(var_320))
  loc_15BDDC5:   Set var_374 = Me.txt
  loc_15BDDCB:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&HC), var_378)
  loc_15BDDF9:   Set var_3C0 = Me.txt
  loc_15BDDFF:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&HE), var_3C4)
  loc_15BDE2F:   Set var_40C = Me.txt
  loc_15BDE35:   Call 0.Method_Proc_4_32_15BE7800 (CInt(3), var_410)
  loc_15BDE44:   var_430 = Trim(CVar(var_410))
  loc_15BDE4C:   var_450 = ("Analysis_" + var_430)
  loc_15BDE59:   var_480 = var_2B0 & "'," & var_2E8 & "," & var_340 & ",'" & CVar(var_378.Text) & "','" & CVar(var_3C4.Text) & "','" & var_450 & "'," 
  loc_15BDE68:   Set var_484 = Me.txt
  loc_15BDE6E:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&HB), var_488)
  loc_15BDE76:   var_498 = CVar(var_488) 'Address
  loc_15BDE7D:   Proc_6_17_EAAE40(var_4A8, var_498)
  loc_15BDEA0:   Set var_4DC = Me.txt
  loc_15BDEA6:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&H14), var_4E0)
  loc_15BDEB6:   var_4F4 = CVar(var_4E0.Text) 'String
  loc_15BDED1:   Set var_528 = Me.txt
  loc_15BDED7:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&H15), var_52C)
  loc_15BDEDF:   var_53C = CVar(var_52C) 'Address
  loc_15BDEE6:   Proc_6_17_EAAE40(var_54C, var_53C)
  loc_15BDF06:   Set var_580 = Me.txt
  loc_15BDF0C:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&H17), var_584)
  loc_15BDF1B:   Proc_6_17_EAAE40(var_5A4, CVar(var_584))
  loc_15BDF3B:   Set var_5D8 = Me.txt
  loc_15BDF41:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&H16), var_5DC)
  loc_15BDF50:   Proc_6_17_EAAE40(var_5FC, CVar(var_5DC))
  loc_15BDF70:   Proc_6_17_EAAE40(var_64C, var_90)
  loc_15BDF8F:   unk_568163.Execute CStr(var_480 & var_4A8 & ",'" & var_4F4 & "'," & var_54C & "," & var_5A4 & "," & var_5FC & "," & var_64C & ")"), , 
  loc_15BE08A: Else
  loc_15BE0A7:   var_98 = Me.Fields.Item("Comp_Code")
  loc_15BE0B8:   var_A0 = CStr(var_98.Value)
  loc_15BE0ED:   Set var_94 = Me.txt
  loc_15BE0F3:   Call 0.Method_Proc_4_32_15BE7800 (CInt(5), var_98, var_A0, "UPDATE COMPANY SET SName='")
  loc_15BE0FB:   var_55C = var_98.Text
  loc_15BE104:   var_128 = -1 & var_A0
  loc_15BE10B:   var_178 = "('" & var_98.Text & "',Comp_Name='"
  loc_15BE11C:   Set var_9C = Me.txt
  loc_15BE122:   Call 0.Method_Proc_4_32_15BE7800 (CInt(4), var_124, var_174)
  loc_15BE12A:   var_178 = var_124.Text
  loc_15BE14B:   Set var_140 = Me.txt
  loc_15BE151:   Call 0.Method_Proc_4_32_15BE7800 (CInt(6), var_180)
  loc_15BE17A:   Set var_190 = Me.txt
  loc_15BE180:   Call 0.Method_Proc_4_32_15BE7800 (CInt(7), var_194)
  loc_15BE1A9:   Set var_1A4 = Me.txt
  loc_15BE1AF:   Call 0.Method_Proc_4_32_15BE7800 (CInt(8), var_1A8)
  loc_15BE1D8:   Set var_1B8 = Me.txt
  loc_15BE1DE:   Call 0.Method_Proc_4_32_15BE7800 (CInt(9), var_1BC)
  loc_15BE1EF:   var_1C8 = var_4DC & var_174 & "',Address1='" & var_180.Text & "',Address2='" & var_194.Text & "',City='" & var_1A8.Text & "',Pin='" & var_1BC.Text
  loc_15BE204:   Set var_1CC = Me.txt
  loc_15BE20A:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&HD), var_1D0)
  loc_15BE212:   var_B0 = CVar(var_1D0) 'Address
  loc_15BE219:   Proc_6_17_EAAE40(var_C0, var_B0)
  loc_15BE239:   Set var_1E0 = Me.txt
  loc_15BE23F:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&HF), var_1E4)
  loc_15BE247:   var_150 = CVar(var_1E4) 'Address
  loc_15BE24E:   Proc_6_17_EAAE40(var_170, var_150)
  loc_15BE25F:   var_20C = CVar(var_1C8 & "',LstDate=") & var_C0 & ",CstDate=" & var_170 & ",Phone='" 
  loc_15BE271:   Set var_1E8 = Me.txt
  loc_15BE277:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&HA), var_1EC)
  loc_15BE2A5:   Set var_210 = Me.txt
  loc_15BE2AB:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&H10), var_214)
  loc_15BE2D9:   Set var_24C = Me.txt
  loc_15BE2DF:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&H11), var_250)
  loc_15BE30A:   Set var_288 = Me.txt
  loc_15BE310:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&H12), var_28C)
  loc_15BE31F:   Proc_6_7_F26918(var_2E8, CVar(var_28C))
  loc_15BE327:   var_2F8 = var_20C & CVar(var_1EC.Text) & "',CYear='" & CVar(var_214.Text) & "',PYear='" & CVar(var_250.Text) & "',Start_Dt=" & var_2E8 
  loc_15BE33F:   Set var_2C4 = Me.txt
  loc_15BE345:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&H13), var_2C8)
  loc_15BE354:   Proc_6_7_F26918(var_340, CVar(var_2C8))
  loc_15BE377:   Set var_31C = Me.txt
  loc_15BE37D:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&HC), var_320)
  loc_15BE3AB:   Set var_374 = Me.txt
  loc_15BE3B1:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&HE), var_378)
  loc_15BE3DC:   Set var_3C0 = Me.txt
  loc_15BE3E2:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&H14), var_3C4)
  loc_15BE3F1:   Proc_6_17_EAAE40(var_430, CVar(var_3C4))
  loc_15BE3F9:   var_450 = var_2F8 & ",End_Dt=" & var_340 & ",LstNo='" & CVar(var_320.Text) & "',CstNo='" & CVar(var_378.Text) & "',FGLNo=" & var_430 
  loc_15BE411:   Set var_40C = Me.txt
  loc_15BE417:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&HB), var_410)
  loc_15BE426:   Proc_6_17_EAAE40(var_498, CVar(var_410))
  loc_15BE446:   Set var_484 = Me.txt
  loc_15BE44C:   Call 0.Method_Proc_4_32_15BE7800 (CInt(&H15), var_488)
  loc_15BE45B:   Proc_6_17_EAAE40(var_4F4, CVar(var_488))
  loc_15BE47E:   Proc_6_17_EAAE40(var_53C, var_A0)
  loc_15BE494:   unk_568163.Execute CStr(var_450 & ",FAX=" & var_498 & ",SerialKeyNo=" & var_4F4 & "  Where COMP_CODE = " & var_53C), , 
  loc_15BE560: End If
  loc_15BE56C: Me.Panelgrid.Visible = True
  loc_15BE580: If (CInt(global_52) = 1) Then
  loc_15BE590:   var_100 = "insert into user2(user_name,comp_code,param_str) values("
  loc_15BE5A0:   Proc_6_17_EAAE40(var_B0, MemVar_1F950C8, var_100)
  loc_15BE5B1:   var_D0 = var_20C & var_B0 & "," 
  loc_15BE5C0:   Set var_94 = Me.txt
  loc_15BE5C6:   Call 0.Method_Proc_4_32_15BE7800 (CInt(3), var_98, var_D0)
  loc_15BE5E0:   Proc_6_17_EAAE40(var_150, Trim(CVar(var_98)))
  loc_15BE5E8:   var_170 = -1 & var_150 
  loc_15BE5FF:   unk_568163.Execute CStr(var_170 & ",'*')"), var_9C, 
  loc_15BE628:   global_104 = &HFF
  loc_15BE62B: End If
  loc_15BE631: unk_568163.CommitTrans
  loc_15BE63A: var_8A = CByte(0) 'Byte
  loc_15BE64E: Call Proc_4_27_E9A2C0(&HFF)
  loc_15BE658: Call Proc_4_38_10796D8(0, CByte(0))
  loc_15BE668: Me.Requery -1
  loc_15BE68B: Set var_94 = Me.txt
  loc_15BE691: Call 0.Method_Proc_4_32_15BE7800 (CInt(3), var_98, "COMP_CODE=", 0)
  loc_15BE6AB: Proc_6_17_EAAE40(var_D0, Trim(CVar(var_98)), 1)
  loc_15BE6B3: var_F0 = var_100 & var_D0 
  loc_15BE6B7: var_A0 = CStr(var_F0)
  loc_15BE6C1: Me.Find var_A0, global_104, 
  loc_15BE6EE: If (Me.RecordCount <= 0) Then
  loc_15BE6FD:   Me.btnapply.Enabled = False
  loc_15BE708: Else
  loc_15BE714:   Me.btnapply.Enabled = True
  loc_15BE71C: End If
  loc_15BE71C: Exit Sub
  loc_15BE71D: ' Referenced from: 15BD674
  loc_15BE726: If (CInt(var_8A) = 1) Then
  loc_15BE72F:   unk_568163.RollbackTrans
  loc_15BE734: End If
  loc_15BE73C: Set var_94 = Err()
  loc_15BE742: Call 0.Method_arg_2C (var_A0)
  loc_15BE74D: Call 0.Method_arg_50 ("('" & var_98.Text)
  loc_15BE769: MsgBox(CVar(var_A0), &H10, CVar("('" & var_98.Text), var_D0, var_F0)
  loc_15BE77C: Exit Sub
End Sub

Public Sub Proc_4_33_1116770(arg_C, arg_10) '1116770
  'Data Table: 56813C
  Dim var_F4 As Double
  Dim var_E0 As String
  Dim var_E8 As Long
  Dim var_CC As Integer
  Dim var_DC As Variant
  Dim var_118 As Variant
  loc_111642E: On Error Goto loc_111669B
  loc_1116485: If ((MemVar_1F950EC >= CDate("15/Jan/2024")) And (CDate(Format(CVar(Proc_6_15_EF37AC()), "dd/MMM/yyyy")) >= CDate("15/Jan/2024"))) Then
  loc_111648D:   var_F4 = CDate("15/Jan/2024")
  loc_11164BA:   var_E8 = CLng((Asc(CStr(Mid(arg_C, 1, 1))) * &HA))
  loc_11164C7:   ' Referenced from: 11164E5
  loc_11164D6:   If ((var_E8 * &HA) < &H270F) Then
  loc_11164E2:     var_E8 = (var_E8 * &HA)
  loc_11164E5:     GoTo loc_11164C7
  loc_11164E8:   End If
  loc_11164F2:   For var_108 = 1 To CInt(Len(arg_C)): var_E2 = var_108 'Integer
  loc_1116517:     var_E0 = CStr(Mid(arg_C, CLng(var_E2), 1))
  loc_1116522:     var_E8 = (var_E8 + CLng(Asc(var_E0)))
  loc_1116532:   Next var_108 'Integer
  loc_1116545:   Call Proc_4_28_EE7B5C(arg_10)
  loc_111655D:   var_DC = Mid(CVar(var_E0), 7, 10)
  loc_1116577:   If CBool(var_DC <> CVar(CStr(var_E8))) Then
  loc_111657A:     GoTo loc_111669B
  loc_111657D:   End If
  loc_1116583:   Call Proc_4_28_EE7B5C(arg_10)
  loc_1116596:   var_CC = Left(CVar(var_E0), 6)
  loc_111659E:   var_128 = var_CC 'Variant
  loc_11165B0:   If (var_128 = "Hudhud") Then
  loc_11165B8:     var_F4 = CDate("15/Jan/2025")
  loc_11165BE:   Else
  loc_11165C9:     If (var_128 = "Pirecy") Then
  loc_11165D1:       var_F4 = CDate("15/Jan/2026")
  loc_11165D7:     Else
  loc_11165E2:       If (var_128 = "Pinaca") Then
  loc_11165EA:         var_F4 = CDate("15/Jan/2027")
  loc_11165F0:       Else
  loc_11165FB:         If (var_128 = "Platoo") Then
  loc_1116603:           var_F4 = CDate("15/Jan/2028")
  loc_1116609:         Else
  loc_1116614:           If (var_128 = "Zombia") Then
  loc_111661C:             var_F4 = CDate("15/Jan/2029")
  loc_1116622:           Else
  loc_111662D:             If (var_128 = "Albert") Then
  loc_1116635:               var_F4 = CDate("15/Jan/2030")
  loc_111663B:             Else
  loc_1116646:               If (var_128 = "Ostric") Then
  loc_111664E:                 var_F4 = CDate("15/Jan/2031")
  loc_1116654:               Else
  loc_111665F:                 If (var_128 = "Legran") Then
  loc_1116667:                   var_F4 = CDate("15/Jan/2032")
  loc_111666D:                 Else
  loc_1116678:                   If (var_128 = "Malmal") Then
  loc_1116680:                     var_F4 = CDate("15/Jan/2033")
  loc_1116686:                   Else
  loc_1116686:                     End
  loc_1116688:                   End If
  loc_1116688:                 End If
  loc_1116688:               End If
  loc_1116688:             End If
  loc_1116688:           End If
  loc_1116688:         End If
  loc_1116688:       End If
  loc_1116688:     End If
  loc_1116688:   End If
  loc_111668F:   If (MemVar_1F950EC > var_F4) Then
  loc_1116692:     GoTo loc_111669B
  loc_1116695:   End If
  loc_1116695:   Proc_4_33_1116770 = var_F4
  loc_111669B:   ' Referenced from: 1116692
  loc_111669B:   ' Referenced from: 111657A
  loc_111669B:   ' Referenced from: 111642E
  loc_11166C2:   If (CDate(MemVar_1F950EC) > DateAdd("d", CDbl(&H2D), var_F4)) Then
  loc_11166E4:     MsgBox(CVar(" Software expired !" & vbCrLf & "Update Serial Key. Contact to Software Vender."), &H10, var_CC, var_DC, var_118)
  loc_11166F7:     End
  loc_11166F9:   End If
  loc_1116746:   var_DC = "Update Serial Key. Contact to Software Vender. Software will expire in " & DateDiff("d", MemVar_1F950EC, DateAdd("d", CDbl(&H2D), var_F4), 1, 1) 
  loc_1116753:   MsgBox(var_DC & " Days.", &H10, var_168, var_188, var_1A8)
  loc_1116769: End If
  loc_1116769: Proc_4_33_1116770 = var_F4
End Sub

Public Sub Proc_4_34_EAE7B0
  'Data Table: 56813C
  Dim var_88 As Frame
  loc_EAE730: On Error Goto loc_EAE767
  loc_EAE73F: Me.Panelgrid.Visible = True
  loc_EAE74E: global_52 = CByte(0)
  loc_EAE757: Call Proc_4_27_E9A2C0(&HFF)
  loc_EAE761: Call Proc_4_38_10796D8(0)
  loc_EAE766: Exit Sub
  loc_EAE767: ' Referenced from: EAE730
  loc_EAE76F: Set var_88 = Err()
  loc_EAE775: Call 0.Method_arg_2C (var_90)
  loc_EAE780: Call 0.Method_arg_50 (var_94)
  loc_EAE79C: MsgBox(CVar(var_90), &H10, CVar(var_94), var_D4, var_F4)
  loc_EAE7AF: Exit Sub
End Sub

Public Sub Proc_4_35_E62AC4(arg_C) 'E62AC4
  'Data Table: 56813C
  loc_E62A9F: If ((arg_C = 2) And (CBool(Me.DBGrid1.Visible) = &HFF)) Then
  loc_E62ABA:   Call 0.Method_arg_2BC (Me.POPUP, var_A8, var_B8)
  loc_E62AC2: End If
  loc_E62AC2: Exit Sub
End Sub

Public Sub Proc_4_36_138FDC8
  'Data Table: 56813C
  Dim unk_568163 As Connection15
  Dim var_D0 As Fields15
  loc_138F501: var_AC = 0
  loc_138F512: var_A4 = "NightAuditGST"
  loc_138F548: Proc_165_0_14CCDD8("GST Reports", &H13, 3, vbNullString, vbNullString)
  loc_138F55F: var_AC = 0
  loc_138F5A0: var_8C = "GSTR-1"
  loc_138F5A6: Proc_165_0_14CCDD8("GST Reports", &H13, 1, "GST Reports", vbNullString, 1, "NightAuditGSTR")
  loc_138F5BD: var_AC = 0
  loc_138F5FE: var_8C = "GSTR-2(3)"
  loc_138F604: Proc_165_0_14CCDD8("GST Reports", &H13, 1, "GST Reports", vbNullString, 2, "NightAuditGSTR", 1)
  loc_138F61B: var_AC = 0
  loc_138F65C: var_8C = "GSTR-2(4A)"
  loc_138F662: Proc_165_0_14CCDD8("GST Reports", &H13, 1, "GST Reports", vbNullString, 3, "NightAuditGSTR", 1)
  loc_138F679: var_AC = 0
  loc_138F6BA: var_8C = "GSTR-2(4B)"
  loc_138F6C0: Proc_165_0_14CCDD8("GST Reports", &H13, 1, "GST Reports", vbNullString, 4, "NightAuditGSTR", 1)
  loc_138F6D7: var_AC = 0
  loc_138F71E: Proc_165_0_14CCDD8("Expense Voucher", &HB, 0, "Transaction", vbNullString, 6, "fate", 1)
  loc_138F735: var_AC = 0
  loc_138F77C: Proc_165_0_14CCDD8("Store Issue Report", &H10, 1, "Reports", vbNullString, &H12, "MatRep", 1)
  loc_138F793: var_AC = 0
  loc_138F7DA: Proc_165_0_14CCDD8("Room Type Occupancy Analysis", &HE, 1, "M.I.S.", vbNullString, &HA, "FDORep", 1)
  loc_138F7F1: var_AC = 0
  loc_138F838: Proc_165_0_14CCDD8("Credit Report", &H13, 1, "Reports", vbNullString, &H10, "NightAuditMenu", 1)
  loc_138F84F: var_AC = 0
  loc_138F896: Proc_165_0_14CCDD8("Liquor Sale Report", &H10, 1, "Reports", vbNullString, &H13, "MatRep", 1)
  loc_138F8AD: var_AC = 0
  loc_138F8F4: Proc_165_0_14CCDD8("Payment Receive Entry (POS)", &H11, 0, "POS Reports", vbNullString, &H2A, "POSRep", 1)
  loc_138F90B: var_AC = 0
  loc_138F94C: var_8C = "Reconciliation (GSTR-2A)"
  loc_138F952: Proc_165_0_14CCDD8("Payment Receive Entry (POS)", &H13, 1, "GST Reports", vbNullString, 5, "NightAuditGSTR", 1)
  loc_138F969: var_AC = 0
  loc_138F9B0: Proc_165_0_14CCDD8("Upload Process", &H13, 0, "GST Reports", vbNullString, &HB, "NightAuditGSTR", 1)
  loc_138F9D8: unk_568163.Execute "select code,Name,KOTYN from depart where outletYN='Y'", var_CC, -1
  loc_138F9E3: Set var_88 = var_D0
  loc_138F9EC: ' Referenced from: 138FACC
  loc_138F9FE: If Not(Me.Recordset15.EOF) Then
  loc_138FA50:   var_FC = Me.Recordset15.Fields.Item("Code").Value
  loc_138FA9D:   Proc_165_0_14CCDD8("Payment Receive", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, &HD, "POSEnt", 0)
  loc_138FAC7:   Me.Recordset15.MoveNext
  loc_138FACC:   GoTo loc_138F9EC
  loc_138FACF: End If
  loc_138FAD4: var_AC = 0
  loc_138FB1B: Proc_165_0_14CCDD8("Bill Wise Adjustment Report", &H11, 1, "POS Reports", vbNullString, &H2B, "POSRep", 1)
  loc_138FB32: var_AC = 0
  loc_138FB79: Proc_165_0_14CCDD8("Plan Report", &HE, 1, "M.I.S.", vbNullString, &HB, "FDORep", 1)
  loc_138FB90: var_AC = 0
  loc_138FBD7: Proc_165_0_14CCDD8("Business Source Occupancy Report", &HE, 1, "M.I.S.", vbNullString, &HC, "FDORep", 1)
  loc_138FBEE: var_AC = 0
  loc_138FC35: Proc_165_0_14CCDD8("Member Select Category", &HC, 0, "Members Mgmt", vbNullString, &HA, "MemMas", 1)
  loc_138FC4C: var_AC = 0
  loc_138FC93: Proc_165_0_14CCDD8("Auto Settle Card Balance", &H17, 0, "Operations", vbNullString, &HC, "MemOpr", 1)
  loc_138FCAA: var_AC = 0
  loc_138FCF1: Proc_165_0_14CCDD8("Journal Books Log", &HB, 1, "Reports", vbNullString, &H24, "FAREPORT", 1)
  loc_138FD08: var_AC = 0
  loc_138FD4F: Proc_165_0_14CCDD8("EInvoice Report", &H13, 1, "Reports", vbNullString, &H11, "NightAuditMenu", 1)
  loc_138FD66: var_AC = 0
  loc_138FDAD: Proc_165_0_14CCDD8("TDS Report", &HB, 1, "Reports", vbNullString, &H25, "FAREPORT", 1)
  loc_138FDC4: Set var_88 = Nothing
  loc_138FDC7: Exit Sub
End Sub

Public Sub Proc_4_37_1793F00
  'Data Table: 56813C
  Dim var_D0 As String
  Dim var_B8 As String
  loc_1791FEC: On Error Resume Next
  loc_1791FF1: On Error Goto loc_1793EC0
  loc_1791FF9: var_90 = MemVar_1F951D8
  loc_1792016: Me.DBEngine.OpenDatabase MemVar_1F951D8, var_A8, var_B8, var_C8
  loc_179201E: Set var_94 = var_CC
  loc_1792052: Proc_6_97_FD2F14(var_94, "PrinterSetup", "Site_Code", &HA, 1)
  loc_1792096: Proc_6_97_FD2F14(var_94, "PrinterSetup", "U_EntDt", 8, 0, 0)
  loc_17920DA: Proc_6_97_FD2F14(var_94, "PrinterSetup", "U_AE", &HA, 1, 0, &HFF)
  loc_179211E: Proc_6_97_FD2F14(var_94, "PrintFormats", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1792162: Proc_6_97_FD2F14(var_94, "PrintFormats", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_17921A6: Proc_6_97_FD2F14(var_94, "PrintFormats", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_17921EA: Proc_6_97_FD2F14(var_94, "PrintMast", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_179222E: Proc_6_97_FD2F14(var_94, "PrintMast", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1792272: Proc_6_97_FD2F14(var_94, "PrintMast", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_17922AB: Me.DBEngine.OpenDatabase MemVar_1F95080 & "\Company.mdb", var_A8, var_B8, var_C8
  loc_17922E7: Proc_6_97_FD2F14(var_CC, "Company", "HeadOffice", &HA, 1, 0, &HFF, var_FC)
  loc_1792335: Me.DBEngine.OpenDatabase MemVar_1F95080 & "\" & MemVar_1F9507C & "\Fadata.Mdb", var_A8, var_B8, var_C8
  loc_179233D: Set var_94 = var_CC
  loc_1792371: Proc_6_97_FD2F14(var_94, "GodownMast", "DepartCode", &HA, 5, 0, &HFF, var_FC)
  loc_17923B5: Proc_6_97_FD2F14(var_94, "SundryType", "PostYN", &HA, 5, 0, &HFF, var_FC)
  loc_17923F9: Proc_6_97_FD2F14(var_94, "Purch1", "DelFlag", &HA, 1, 0, &HFF, var_FC)
  loc_179243D: Proc_6_97_FD2F14(var_94, "Enviro", "CashPurchAc", &HA, 8, 0, &HFF, var_FC)
  loc_1792481: Proc_6_97_FD2F14(var_94, "Stock", "LandVal", 7, 0, 0, &HFF, var_FC)
  loc_17924C5: Proc_6_97_FD2F14(var_94, "GodownMast", "SysYN", &HA, 1, 0, &HFF, var_FC)
  loc_1792509: Proc_6_97_FD2F14(var_94, "Stock", "ConvRatio", 7, 0, 0, &HFF, var_FC)
  loc_179254D: Proc_6_97_FD2F14(var_94, "GuestProf", "PanNo", &HA, &HF, 0, &HFF, var_FC)
  loc_1792591: Proc_6_97_FD2F14(var_94, "PayCharge", "Split", &HA, 2, 0, &HFF, var_FC)
  loc_17925D5: Proc_6_97_FD2F14(var_94, "PayCharge", "ModeSet", &HA, 1, 0, &HFF, var_FC)
  loc_1792619: Proc_6_97_FD2F14(var_94, "PayCharge", "Bill_No", &HA, 8, 0, &HFF, var_FC)
  loc_179265D: Proc_6_97_FD2F14(var_94, "PayCharge", "SettleDate", 8, 0, 0, &HFF, var_FC)
  loc_17926A1: Proc_6_97_FD2F14(var_94, "TelCallType", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_17926E5: Proc_6_97_FD2F14(var_94, "GuestFolio", "MFolioNo", 4, 0, 0, &HFF, var_FC)
  loc_1792731: Proc_6_97_FD2F14(var_94, "GuestFolio", "Comp", &HA, 1, 0, &HFF, """""")
  loc_179274B: var_FC = """"""
  loc_179277D: Proc_6_97_FD2F14(var_94, "GuestFolio", "MFolioNoDocid", &HA, &H15, 0, &HFF, var_FC)
  loc_17927C2: Proc_6_97_FD2F14(var_94, "Enviro", "Bill_Footer", &HA, 250, 0, &HFF, var_FC)
  loc_1792807: Proc_6_97_FD2F14(var_94, "Enviro", "Bill_Header", &HA, 250, 0, &HFF, var_FC)
  loc_179284B: Proc_6_97_FD2F14(var_94, "Enviro", "CancellationAC", &HA, 8, 0, &HFF, var_FC)
  loc_179288F: Proc_6_97_FD2F14(var_94, "Enviro", "HallRoundOff", &HA, 8, 0, &HFF, var_FC)
  loc_17928D3: Proc_6_97_FD2F14(var_94, "Enviro", "HallDiscAC", &HA, 8, 0, &HFF, var_FC)
  loc_1792917: Proc_6_97_FD2F14(var_94, "Enviro", "Postingtype", &HA, &H32, 0, &HFF, var_FC)
  loc_179295B: Proc_6_97_FD2F14(var_94, "Enviro", "OutDoorCatering", &HA, 3, 0, &HFF, var_FC)
  loc_17929A7: Proc_6_97_FD2F14(var_94, "Enviro", "SundryPassword", &HA, &HA, 0, &HFF, """""")
  loc_17929F3: Proc_6_97_FD2F14(var_94, "Enviro", "CatalogLimit", &HA, 3, 0, &HFF, """""")
  loc_1792A3F: Proc_6_97_FD2F14(var_94, "Enviro", "OutdoorSaleAC", &HA, 8, 0, &HFF, """""")
  loc_1792A8B: Proc_6_97_FD2F14(var_94, "Enviro", "IndoorSaleAC", &HA, 8, 0, &HFF, """""")
  loc_1792AD7: Proc_6_97_FD2F14(var_94, "Enviro", "OutdoorPartyAC", &HA, 8, 0, &HFF, """""")
  loc_1792AF1: var_FC = """"""
  loc_1792B23: Proc_6_97_FD2F14(var_94, "Enviro", "IndoorPartyAC", &HA, 8, 0, &HFF, var_FC)
  loc_1792B67: Proc_6_97_FD2F14(var_94, "PayCharge", "BatchNo", 3, 0, 0, &HFF, var_FC)
  loc_1792BAB: Proc_6_97_FD2F14(var_94, "SubGroup", "TINNo", &HA, &H19, 0, &HFF, var_FC)
  loc_1792BEF: Proc_6_97_FD2F14(var_94, "SubGroupALIAS", "TINNo", &HA, &H19, 0, &HFF, var_FC)
  loc_1792C33: Proc_6_97_FD2F14(var_94, "RevMast", "Sundry", &HA, 5, 0, &HFF, var_FC)
  loc_1792C7F: Proc_6_97_FD2F14(var_94, "BookingInquiry", "Capacity", &HA, &H14, 0, &HFF, """""")
  loc_1792C99: var_FC = """"""
  loc_1792CCB: Proc_6_97_FD2F14(var_94, "BookingInquiry", "CapacityType", &HA, 1, 0, &HFF, var_FC)
  loc_1792D0F: Proc_6_97_FD2F14(var_94, "CatalogMast", "Category", &HA, 1, 0, &HFF, var_FC)
  loc_1792D54: Proc_6_97_FD2F14(var_94, "ItemMast", "Specification", &HA, 255, 0, &HFF, var_FC)
  loc_1792D98: Proc_6_97_FD2F14(var_94, "ComplaintDetail", "UName2", &HA, &HF, 0, &HFF, var_FC)
  loc_1792DDC: Proc_6_97_FD2F14(var_94, "PayChargeH", "PostDocId", &HA, &H15, 0, &HFF, var_FC)
  loc_1792E20: Proc_6_97_FD2F14(var_94, "Depart", "Printer", &HA, &H32, 0, &HFF, var_FC)
  loc_1792E64: Proc_6_97_FD2F14(var_94, "Enviro", "KOTPrinting", &HA, &H19, 0, &HFF, var_FC)
  loc_1792EA8: Proc_6_97_FD2F14(var_94, "Enviro", "TaxSummary", &HA, 3, 0, &HFF, var_FC)
  loc_1792EEC: Proc_6_97_FD2F14(var_94, "ComplaintDetail", "Category", &HA, 5, 0, &HFF, var_FC)
  loc_1792F30: Proc_6_97_FD2F14(var_94, "PlanMast", "Plan_Package", &HA, 7, 0, &HFF, var_FC)
  loc_1792F74: Proc_6_97_FD2F14(var_94, "PlanMast", "PercentApp", &HA, 3, 0, &HFF, var_FC)
  loc_1792FB8: Proc_6_97_FD2F14(var_94, "PlanMast", "ActiveYN", &HA, 1, 0, &HFF, var_FC)
  loc_1792FFC: Proc_6_97_FD2F14(var_94, "PlanMast", "App_date", 8, 0, 0, &HFF, var_FC)
  loc_1793040: Proc_6_97_FD2F14(var_94, "RoomOCC", "PlanCode", &HA, 5, 0, &HFF, var_FC)
  loc_1793084: Proc_6_97_FD2F14(var_94, "RoomOCC", "PlanAmt", 7, 0, 0, &HFF, var_FC)
  loc_17930C8: Proc_6_97_FD2F14(var_94, "RoomOCC", "IncInRate", &HA, 3, 0, &HFF, var_FC)
  loc_179310C: Proc_6_97_FD2F14(var_94, "ComplaintCategory", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1793150: Proc_6_97_FD2F14(var_94, "ComplaintCategory", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793194: Proc_6_97_FD2F14(var_94, "ComplaintCategory", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_17931D8: Proc_6_97_FD2F14(var_94, "ComplaintDetail", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_179321C: Proc_6_97_FD2F14(var_94, "ComplaintDetail", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793260: Proc_6_97_FD2F14(var_94, "ComplaintDetail", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_17932A4: Proc_6_97_FD2F14(var_94, "LostFoundDetail", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_17932E8: Proc_6_97_FD2F14(var_94, "LostFoundDetail", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_179332C: Proc_6_97_FD2F14(var_94, "LostFoundDetail", "U_AE", &HA, 3, 0, &HFF, var_FC)
  loc_1793346: var_FC = """"""
  loc_1793378: Proc_6_97_FD2F14(var_94, "Enviro", "TOKENPrint", &HA, 3, 0, &HFF, var_FC)
  loc_17933BC: Proc_6_97_FD2F14(var_94, "BookingDetail", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1793400: Proc_6_97_FD2F14(var_94, "BookingDetail", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793444: Proc_6_97_FD2F14(var_94, "BookingDetail", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1793488: Proc_6_97_FD2F14(var_94, "Cat", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_17934CC: Proc_6_97_FD2F14(var_94, "Cat", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793510: Proc_6_97_FD2F14(var_94, "Cat", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1793554: Proc_6_97_FD2F14(var_94, "Employee", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793598: Proc_6_97_FD2F14(var_94, "Employee", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_17935DC: Proc_6_97_FD2F14(var_94, "FOMBillDetails", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793620: Proc_6_97_FD2F14(var_94, "FOMBillDetails", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1793664: Proc_6_97_FD2F14(var_94, "GroupCatalog", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_17936A8: Proc_6_97_FD2F14(var_94, "GroupCatalog", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_17936EC: Proc_6_97_FD2F14(var_94, "GroupCatalog", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1793730: Proc_6_97_FD2F14(var_94, "GuestComments", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1793774: Proc_6_97_FD2F14(var_94, "GuestComments", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_17937B8: Proc_6_97_FD2F14(var_94, "GuestComments", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_17937FC: Proc_6_97_FD2F14(var_94, "GuestParam", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1793840: Proc_6_97_FD2F14(var_94, "GuestParam", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793884: Proc_6_97_FD2F14(var_94, "GuestParam", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_17938C8: Proc_6_97_FD2F14(var_94, "VenueCapacity", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_179390C: Proc_6_97_FD2F14(var_94, "VenueCapacity", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793950: Proc_6_97_FD2F14(var_94, "VenueCapacity", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1793994: Proc_6_97_FD2F14(var_94, "Voucher_Exclude", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_17939D8: Proc_6_97_FD2F14(var_94, "Voucher_Exclude", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793A1C: Proc_6_97_FD2F14(var_94, "Voucher_Exclude", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1793A60: Proc_6_97_FD2F14(var_94, "Voucher_Include", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1793AA4: Proc_6_97_FD2F14(var_94, "Voucher_Include", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793AE8: Proc_6_97_FD2F14(var_94, "Voucher_Include", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1793B2C: Proc_6_97_FD2F14(var_94, "LastVou", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1793B70: Proc_6_97_FD2F14(var_94, "LastVou", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793BB4: Proc_6_97_FD2F14(var_94, "LastVou", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1793BF8: Proc_6_97_FD2F14(var_94, "Leave_Ench", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793C3C: Proc_6_97_FD2F14(var_94, "Leave_Ench", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1793C80: Proc_6_97_FD2F14(var_94, "RoomDiscount", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1793CC4: Proc_6_97_FD2F14(var_94, "RoomDiscount", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793D08: Proc_6_97_FD2F14(var_94, "RoomDiscount", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1793D4C: Proc_6_97_FD2F14(var_94, "SaleMIS", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793D90: Proc_6_97_FD2F14(var_94, "SaleMIS", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1793DD4: Proc_6_97_FD2F14(var_94, "SundryTypeFix", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1793E18: Proc_6_97_FD2F14(var_94, "SundryTypeFix", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793E5C: Proc_6_97_FD2F14(var_94, "SundryTypeFix", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1793E97: var_D0 = "Enviro"
  loc_1793EA0: Proc_6_97_FD2F14(var_94, var_D0, "DummyTravelAc", &HA, 8, 0, &HFF, var_FC)
  loc_1793EBA: Set var_94 = Nothing
  loc_1793EBF: Exit Sub
  loc_1793EC0: ' Referenced from: 1791FF1
  loc_1793ED0: Call 0.Method_arg_2C (var_D0, Err(), Err(), var_FC, &HFF)
  loc_1793EE9: MsgBox(CVar(var_D0), &H40, var_FC, var_10C, var_11C)
  loc_1793EFE: Exit Sub
End Sub

Public Sub Proc_4_38_10796D8(arg_C) '10796D8
  'Data Table: 56813C
  Dim var_8C As TextBox
  loc_107943A: Set var_88 = Me.txt
  loc_1079440: Call 0.Method_Proc_4_38_10796D80 (CInt(3), var_8C)
  loc_1079448: var_8C.Enabled = arg_C
  loc_1079462: Set var_88 = Me.txt
  loc_1079468: Call 0.Method_Proc_4_38_10796D80 (CInt(4), var_8C)
  loc_1079470: var_8C.Enabled = arg_C
  loc_107948A: Set var_88 = Me.txt
  loc_1079490: Call 0.Method_Proc_4_38_10796D80 (CInt(6), var_8C)
  loc_1079498: var_8C.Enabled = arg_C
  loc_10794B2: Set var_88 = Me.txt
  loc_10794B8: Call 0.Method_Proc_4_38_10796D80 (CInt(7), var_8C)
  loc_10794C0: var_8C.Enabled = arg_C
  loc_10794DA: Set var_88 = Me.txt
  loc_10794E0: Call 0.Method_Proc_4_38_10796D80 (CInt(8), var_8C)
  loc_10794E8: var_8C.Enabled = arg_C
  loc_1079502: Set var_88 = Me.txt
  loc_1079508: Call 0.Method_Proc_4_38_10796D80 (CInt(9), var_8C)
  loc_1079510: var_8C.Enabled = arg_C
  loc_107952A: Set var_88 = Me.txt
  loc_1079530: Call 0.Method_Proc_4_38_10796D80 (CInt(&HA), var_8C)
  loc_1079538: var_8C.Enabled = arg_C
  loc_1079552: Set var_88 = Me.txt
  loc_1079558: Call 0.Method_Proc_4_38_10796D80 (CInt(&HB), var_8C)
  loc_1079560: var_8C.Enabled = arg_C
  loc_107957A: Set var_88 = Me.txt
  loc_1079580: Call 0.Method_Proc_4_38_10796D80 (CInt(&HE), var_8C)
  loc_1079588: var_8C.Enabled = arg_C
  loc_10795A2: Set var_88 = Me.txt
  loc_10795A8: Call 0.Method_Proc_4_38_10796D80 (CInt(&HC), var_8C)
  loc_10795B0: var_8C.Enabled = arg_C
  loc_10795CA: Set var_88 = Me.txt
  loc_10795D0: Call 0.Method_Proc_4_38_10796D80 (CInt(&H14), var_8C)
  loc_10795D8: var_8C.Enabled = arg_C
  loc_10795F2: Set var_88 = Me.txt
  loc_10795F8: Call 0.Method_Proc_4_38_10796D80 (CInt(&H10), var_8C)
  loc_1079600: var_8C.Enabled = arg_C
  loc_107961A: Set var_88 = Me.txt
  loc_1079620: Call 0.Method_Proc_4_38_10796D80 (CInt(&H11), var_8C)
  loc_1079628: var_8C.Enabled = arg_C
  loc_1079642: Set var_88 = Me.txt
  loc_1079648: Call 0.Method_Proc_4_38_10796D80 (CInt(&H12), var_8C)
  loc_1079650: var_8C.Enabled = arg_C
  loc_107966A: Set var_88 = Me.txt
  loc_1079670: Call 0.Method_Proc_4_38_10796D80 (CInt(&H13), var_8C)
  loc_1079678: var_8C.Enabled = arg_C
  loc_1079692: Set var_88 = Me.txt
  loc_1079698: Call 0.Method_Proc_4_38_10796D80 (CInt(&HF), var_8C)
  loc_10796A0: var_8C.Enabled = arg_C
  loc_10796BA: Set var_88 = Me.txt
  loc_10796C0: Call 0.Method_Proc_4_38_10796D80 (CInt(&HD), var_8C)
  loc_10796C8: var_8C.Enabled = arg_C
  loc_10796D4: Exit Sub
  loc_10796D5: BranchFVar 1279
End Sub
